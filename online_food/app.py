from flask import Blueprint, render_template
from online_food.db import get_db

bp = Blueprint('app', __name__, url_prefix='/app')

@bp.route('/')
def index():
    db = get_db()
    cursor = db.cursor(dictionary=True) 
    cursor.execute('SELECT itemId, name, description, unit_price FROM item ORDER BY created DESC')
    products = cursor.fetchall()
    cursor.close()
    return render_template('app/index.html', products=products)
