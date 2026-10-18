from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/products")
def products():
    return jsonify({
        "service": "product-api",
        "products": [
            {"id": 1, "name": "Laptop", "price": 75000},
            {"id": 2, "name": "Keyboard", "price": 2500}
        ]
    })

@app.route("/health")
def health():
    return {"status": "healthy"}

app.run(host="0.0.0.0", port=5000)