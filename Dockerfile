# Use the specified base image
FROM pytorch/pytorch:2.5.1-cuda12.1-cudnn9-runtime

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt