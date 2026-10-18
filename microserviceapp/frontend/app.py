from flask import Flask, jsonify
import urllib.request
import json

app = Flask(__name__)

@app.route("/products")
def products():
    url = "http://product-service:5000/products"

    try:
        with urllib.request.urlopen(url, timeout=3) as response:
            data = json.loads(response.read().decode())

        return jsonify({
            "service": "frontend-api",
            "message": "Product API called successfully",
            "data": data
        })
    except Exception as e:
        return jsonify({
            "service": "frontend-api",
            "error": str(e)
        }), 502

@app.route("/health")
def health():
    return {"status": "healthy"}

app.run(host="0.0.0.0", port=8080)
