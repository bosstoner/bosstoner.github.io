import psycopg2
import os

def update_poster_urls():
    poster_folder = 'static/film_comp/posters'
    
    try:
        conn = psycopg2.connect(
            database="movies_local", 
            user="bosstoner", 
            host="localhost", 
            port="5432"
        )
        cur = conn.cursor()

        cur.execute("SELECT movie_id FROM movies")
        movie_ids = [row[0] for row in cur.fetchall()]

        try:
            available_files = os.listdir(poster_folder)
        except FileNotFoundError:
            print(f"Error: The folder '{poster_folder}' was not found.")
            return

        print(f"Scanning {len(available_files)} files for {len(movie_ids)} database records...\n")

        # Build a lookup: movie_id (from filename prefix) -> filename
        file_map = {}
        for filename in available_files:
            parts = filename.split('_', 1)
            if parts[0].isdigit():
                file_map[int(parts[0])] = filename

        updated, skipped = 0, 0

        for movie_id in movie_ids:
            if movie_id in file_map:
                new_url = f"static/film_comp/posters/{file_map[movie_id]}"
                cur.execute(
                    "UPDATE movies SET poster_url = %s WHERE movie_id = %s",
                    (new_url, movie_id)
                )
                updated += 1
            else:
                print(f"  [SKIP] No poster file found for movie_id {movie_id}")
                skipped += 1

        conn.commit()
        print(f"\nDone. Updated: {updated}, Skipped: {skipped}")

    except psycopg2.Error as e:
        print(f"Database error: {e}")
        conn.rollback()
    finally:
        if cur:
            cur.close()
        if conn:
            conn.close()

if __name__ == "__main__":
    update_poster_urls()