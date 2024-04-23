from flask import Flask

# Create a Flask application
app = Flask(__name__)

# Define a route for the homepage
@app.route('/')
def index():
    return 'Hello, World! This is my Flask app.'

if __name__ == '__main__':
    # Run the Flask application
    app.run(host='0.0.0.0', debug=True)
