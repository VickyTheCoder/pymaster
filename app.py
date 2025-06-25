from bottle import Bottle
from bottle import SimpleTemplate
from bottle import run
import os

app = Bottle()

@app.route('/')
def home_page():
    template = os.path.join(os.path.dirname(__file__), 'templates', 'index.tpl')
    content = open(template).read()
    tpl = SimpleTemplate(source=content)
    return tpl.render()

run(app, host='localhost', port=9090)
