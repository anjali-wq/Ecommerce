from flask import (
    Blueprint, flash, g, redirect, render_template, request, url_for
)
from werkzeug.exceptions import abort

from flaskr.auth import login_required
from flaskr.db import get_db

bp = Blueprint('kart', __name__)

@bp.route('/kart/index')
def index():
    db = get_db()
    posts = db.execute(
        'SELECT p.user_id, p.product_id'
        ' FROM kart'
    ).fetchall()
    return render_template('kart/index.html', posts=posts)

