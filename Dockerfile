# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

EXPOSE 8080

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8080", "--server.address=0.0.0.0"]
 