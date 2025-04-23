from flask import Flask, request, jsonify

app = Flask(__name__)


@app.route("/graphql", methods=["POST"])
def graphql():
    data = request.get_json()
    return jsonify({"data": "mock response"})


app.run(port=8000)
