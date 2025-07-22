from bottle import Bottle, run, template, TEMPLATE_PATH

# Tell Bottle to look in the "templates" folder for .tpl files
TEMPLATE_PATH.insert(0, 'templates')

app = Bottle()

@app.route('/')
def home_page():
    return template('index')  # This will render templates/index.tpl

run(app, host='localhost', port=9090)

