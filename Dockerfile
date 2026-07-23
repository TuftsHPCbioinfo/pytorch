# Use the specified base image
FROM pytorch/pytorch:2.13.0-cuda12.6-cudnn9-runtime

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install ipython ipykernel ipywidgets
