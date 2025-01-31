from flask import Flask 
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World"

@app.route("/second")
def second():
    return "This is the second page"

@app.route("/third/thirdsubpage")
def third():
    return "this is a subpage of the 3rd page, /third/thirdSub"

@app.route("/fourth/<string:id>")
def fourth(id):
    output = f"Your ID is {id}"
    return output


if __name__ == '__main__':

    app.run(debug=True, port=5000)
    # app.run(host= '0.0.0.0', port=8081) 