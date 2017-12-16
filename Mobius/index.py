from flask import Flask
from flask import render_template
from flask import request
from flask import jsonify

app = Flask(__name__)


@app.route('/', methods=['GET'])
def index():
    return render_template('index.html')


@app.route('/upload', methods=['POST'])
def upload():
    info = {
        'uname': request.form["uname"],
        'pwd': request.form['passwd']
    }
    return jsonify(info=info)


@app.route('/mobius')
def mobius():
    return 'Hello Mobius'


if __name__ == '__main__':
    app.run(debug=True)
