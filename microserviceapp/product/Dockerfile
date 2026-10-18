FROM python:3.12-slim
WORKDIR /app
RUN pip install --no-cache-dir flask
COPY mjs2app.py .
EXPOSE 5000
CMD ["python", "mjs2app.py"]
