from flask_frozen import Freezer
from app import app, get_db_connection

# Settings for a true offline "File Explorer" experience
app.config['FREEZER_RELATIVE_URLS'] = True
app.config['FREEZER_DESTINATION'] = 'export'

# This forces Frozen-Flask to add .html to routes that don't have it
# and ensures index.html is created for the root
app.config['FREEZER_DEFAULT_MIMETYPE'] = 'text/html'

freezer = Freezer(app)

@freezer.register_generator
def get_director_movies():
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute("SELECT director_name_url FROM directors")
    for (url,) in cur.fetchall():
        # This matches the 'director_name_url' variable in your route
        yield {'director_name_url': url}
    cur.close()
    conn.close()

if __name__ == '__main__':
    freezer.freeze()
    print("Freeze complete. Open 'export/index.html' to test.")