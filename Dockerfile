FROM pytorch/pytorch:2.13.0-cuda12.6-cudnn9-runtime
ENV PIP_BREAK_SYSTEM_PACKAGES=1
COPY requirements.txt /tmp/requirements.txt
RUN python -m pip install \
        --no-cache-dir \
        -r /tmp/requirements.txt && \
    python -m pip install \
        --no-cache-dir \
        ipython \
        ipykernel \
        ipywidgets
