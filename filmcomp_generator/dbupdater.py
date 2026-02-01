import psycopg2
import os

def update_poster_urls():
    # Folder where your posters are stored
    poster_folder = 'static/posters'
    
    try:
        # Establish local connection
        # Replace 'bosstoner' with your actual macOS username (whoami)
        conn = psycopg2.connect(
            database="movies_local", 
            user="bosstoner", 
            host="localhost", 
            port="5432"
        )
        cur = conn.cursor()

        # 1. Fetch all movie IDs from the local database
        cur.execute("SELECT movie_id FROM movies")
        movie_ids = cur.fetchall()

        # 2. Get a list of all files in the static/posters directory
        try:
            available_files = os.listdir(poster_folder)
        except FileNotFoundError:
            print(f"Error: The folder '{poster_folder}' was not found.")
            return

        print(f"Scanning {len(available_files)} files for {len(movie_ids)} database records...\n")

        updates_count = 0
        for (movie_id,) in movie_ids:
            # Look for a file that starts with "id_"
            prefix = f"{movie_id}_"
            
            # Find the first file that matches the prefix
            matching_file = next((f for f in available_files if f.startswith(prefix)), None)

            if matching_file:
                new_path = f"/static/posters/{matching_file}"
                
                # 3. Update the database
                cur.execute("""
                    UPDATE movies 
                    SET poster_url = %s 
                    WHERE movie_id = %s
                """, (new_path, movie_id))
                
                # 4. Log the replacement to the console
                print(f"[REPLACE] Movie ID {movie_id}: Set poster_url to '{new_path}'")
                updates_count += 1
            else:
                # Optional: log if a movie has no matching local file
                # print(f"[SKIP] Movie ID {movie_id}: No file starting with '{prefix}' found.")
                pass

        # 5. Commit all changes
        conn.commit()
        print(f"\nUpdate complete. Successfully updated {updates_count} posters.")

    except Exception as e:
        print(f"Database error: {e}")
        if conn:
            conn.rollback()
    finally:
        if cur:
            cur.close()
        if conn:
            conn.close()

if __name__ == "__main__":
    update_poster_urls()