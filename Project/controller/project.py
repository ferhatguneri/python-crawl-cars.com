from flask import Flask
from flask import request
from flask import jsonify
from flask_sqlalchemy import SQLAlchemy



app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://cars:G457ret32@localhost/Cars'

db = SQLAlchemy(app)


class Cars(db.Model):
    car_id = db.Column(db.Integer, primary_key=True)
    brand = db.Column(db.String)
    extcolor = db.Column(db.String)
    intcolor = db.Column(db.String)
    year = db.Column(db.Integer)
    transmission = db.Column(db.String)
    price = db.Column(db.Integer)
    contact = db.Column(db.String)

    def serialize(self):
        return {
            'car_id': self.car_id,
            'brand': self.brand,
            'extcolor': self.extcolor,
            'intcolor':self.intcolor,
            'year':self.year,
            'transmission':self.transmission,
            'price':self.price,
            'contact':self.contact
        }
db.create_all()


#Bu endpointe yapılan GET isteğine göre yukarıdaki Cars modeline sahip sınıftan veriler çekilerek
#İsteği yapan kişiye return edilir.
#Bu Endpoint ayrıca parametre alarak arçları farklı şekilde search etmemize olanak sağlar.
@app.route("/cars/list")
def index():
    argumentdict = request.args.to_dict()
    cars = Cars.query.filter_by(**argumentdict).all()
    return jsonify([Cars.serialize(user) for user in cars])

app.run()
