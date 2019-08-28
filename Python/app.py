#pip install flask
from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'Happy Hacking!'

# $ flask run

@app.route('/lotto')
def lotto():
    import random
    numbers = range(1, 46)
    print(list(numbers))
    lotto = random.sample(numbers, 6)
    return str(sorted(lotto))
# ctr + c 나가기