# flask_web/app.py

from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'OpenPbs Project Work in Progress!'

	
if __name__ == "__main__":
	app.run(host='0.0.0.0')