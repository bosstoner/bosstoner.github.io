from flask import Flask, render_template, send_from_directory
import psycopg2


app = Flask(__name__)


def get_db_connection():
    # 'dbname' is what you used in the 'createdb' command
    conn = psycopg2.connect(
        database="movies_local", 
        user="bosstoner", 
        host="localhost", 
        port="5432"
    )
    return conn

def get_directors():
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute("SELECT director_id, director_name, picture_url, director_name_url FROM directors ORDER BY director_name")
    directors = cur.fetchall()
    director_list = []
    for director in directors:
        director_id, director_name, picture_url, director_name_url = director
        director_list.append((director_id, director_name, picture_url, director_name_url))
    cur.close()
    conn.close()
    return director_list

def get_directors_with_seen_movies():
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute("""
        SELECT directors.director_id, directors.director_name, directors.director_name_url, COUNT(CASE WHEN movies.seen THEN 1 END) AS seen_count, COUNT(movies.movie_id) AS total_movies,
        (COUNT(CASE WHEN movies.seen THEN 1 END) / CAST(COUNT(movies.movie_id) AS FLOAT)) * 100 AS seen_percentage,
        100.0 - (COUNT(CASE WHEN movies.seen THEN 1 END) / CAST(COUNT(movies.movie_id) AS FLOAT)) * 100 AS unfilled_percentage
        FROM directors
        LEFT JOIN movies ON directors.director_id = movies.director_id
        GROUP BY directors.director_id, directors.director_name_url, directors.director_name
        ORDER BY directors.director_name
    """)
    directors_info = cur.fetchall()
    cur.close()
    conn.close()
    return directors_info


@app.route("/")
def index():
    directors = get_directors()
    return render_template("directors.html", directors=directors)

@app.route("/<string:director_name_url>.html")
def get_director_movies(director_name_url):
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute("""
                SELECT director_id
                FROM directors
                WHERE director_name_url = %s
                """, (director_name_url,))
    director_id = cur.fetchone()[0]

    cur.execute("""
                SELECT title, year_made, poster_url, movie_description_url, seen
                FROM movies
                WHERE director_id = %s
                """, (director_id,))
    movies = cur.fetchall()
    cur.execute("""
                SELECT director_name, director_description, director_name_url
                FROM directors
                WHERE director_id = %s
                """, (director_id,))
    result = cur.fetchone()
    director_name = result[0]
    director_description = result[1]
    director_name_url = result[2]

    movies_by_decade = {}
    for movie in movies:
        decade = (movie[1] // 10) * 10
        movies_by_decade.setdefault(decade, []).append(movie)
    for decade in movies_by_decade:
        movies_by_decade[decade] = sorted(movies_by_decade[decade], key=lambda x: x[1], reverse=True)
    cur.close()
    conn.close()
    return render_template("director_movies.html", director_name=director_name, director_name_url=director_name_url, movies_by_decade=movies_by_decade, director_description=director_description)


@app.route("/progress.html")
def director_statistics():
    directors_info = get_directors_with_seen_movies()
    directors_info.sort(key=lambda director: director[4] - director[3])
    return render_template("progress_info.html", directors_info=directors_info)

@app.route("/top50.html")
def top50_movies():
    return render_template("top50_movies.html")


if __name__ == "__main__":
    app.run(debug=True)