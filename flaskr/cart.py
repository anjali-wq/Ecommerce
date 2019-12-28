import functools

from flask import (
    Blueprint, flash, g, redirect, render_template, request, session, url_for
)

from flaskr.db import get_db

bp = Blueprint('cart', __name__, url_prefix='/cart')

@bp.route("/addToCart")
def addToCart():
    if 'username' not in session:
        return redirect(url_for('loginForm'))
    else:
        productId = int(request.args.get('productId'))
        with sqlite3.connect('schema.sql') as conn:
            cur = conn.cursor()
            cur.execute("SELECT id FROM user WHERE username = '" + session['username'] + "'")
            userId = cur.fetchone()[0]
            try:
                cur.execute("INSERT INTO Cart (userId, productId) VALUES (?, ?)", (userId, productId))
                conn.commit()
                msg = "Added successfully"
            except:
                conn.rollback()
                msg = "Error occured"
        conn.close()
        return redirect(url_for('root'))
