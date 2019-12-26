from flask import Flask
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
	cur = mysql.connection.cursor()
	# cur.execute('''CREATE TABLE example (id INTEGER, name VARCHAR(20))''')
	cur.execute('''INSERT INTO example VALUES (1, 'Anthony')''')
	cur.execute('''INSERT INTO example VALUES (2, 'Anty')''')
	cur.execute('''INSERT INTO example VALUES (3, 'Priya')''')
	mysql.connection.commit()

	cur.execute('''SELECT * FROM example''')
	results = cur.fetchall()
	print(results)
	return results[0]['name']
	return 'Done!'

@app.route("/home")
def home():
	return "Hello from Flask > app.py file..."