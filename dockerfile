FROM python:3.12-slim

WORKDIR /app

RUN apt-get update && apt-get install -y build-essential
RUN pip3 install sagemaker-training

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app

ENTRYPOINT  ["python", "debug.py"]