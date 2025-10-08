# Use the specified base image
FROM pytorch/pytorch:2.7.1-cuda12.6-cudnn9-devel

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install ipython ipykernel
