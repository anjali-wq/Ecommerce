from flask import Flask, render_template, redirect, request, flash, url_for
from flask_mysqldb import MySQL
app = Flask(__name__)

app.config['MYSQL_USER'] = 'sql2316592'
app.config['MYSQL_PASSWORD'] = 'bZ1!sJ2*'
app.config['MYSQL_HOST'] = 'sql2.freemysqlhosting.net'
app.config['MYSQL_DB'] = 'sql2316592'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'

mysql = MySQL(app)

@app.route("/")
def index():
	print('index')
	return render_template('index.html')

@app.route("/kart/index")
def kart_index():
	return render_template('kart/index.html')

@app.route("/kart/index")
def kart_create():
	return render_template('kart/create.html')

@app.route('/create', methods=('GET', 'POST'))
def create():
    if request.method == 'POST':
        title = request.form['title']
        body = request.form['body']
        error = None

        if not title:
            error = 'Title is required.'

        if error is not None:
            flash(error)
        else:
            db = get_db()
            db.execute(
                'INSERT INTO kart (title, body, author_id)'
                ' VALUES (?, ?, ?)',
                (title, body, g.user['id'])
            )
            db.commit()
            return redirect(url_for('kart.index'))

    return render_template('kart/create.html')

@app.route("/contact")
def contact():
	return render_template('contact.html')

@app.route("/example_table")
def select_all_example():
	cur = mysql.connection.cursor()
	cur.execute('''SELECT * FROM example''')
	results = cur.fetchall()
	print(results)
	return str(results)

@app.route("/init_db")
def init_db():
	cur = mysql.connection.cursor()
	
	import sqlite3


	conn = mysql.connection.cursor()

	conn.execute('''CREATE TABLE users 
			(userId INTEGER PRIMARY KEY, 
			password TEXT,
			email TEXT,
			firstName TEXT,
			lastName TEXT,
			address1 TEXT,
			address2 TEXT,
			zipcode TEXT,
			city TEXT,
			state TEXT,
			country TEXT, 
			phone TEXT
			)''')

	conn.execute('''CREATE TABLE products
			(productId INTEGER PRIMARY KEY,
			name TEXT,
			price REAL,
			description TEXT,
			image TEXT,
			stock INTEGER,
			categoryId INTEGER,
			FOREIGN KEY(categoryId) REFERENCES categories(categoryId)
			)''')

	conn.execute('''CREATE TABLE kart
			(userId INTEGER,
			productId INTEGER,
			FOREIGN KEY(userId) REFERENCES users(userId),
			FOREIGN KEY(productId) REFERENCES products(productId)
			)''')

	conn.execute('''CREATE TABLE categories
			(categoryId INTEGER PRIMARY KEY,
			name TEXT
			)''')
	print('success')

	conn.close()
