FROM python:3.11-slim-buster

RUN useradd -ms /bin/bash appuser

USER appuser

WORKDIR /app

ENV PATH="/home/appuser/.local/bin:${PATH}"

ARG INSTALL_GPU=false

RUN pip install --no-cache-dir --upgrade pip \
    && if [ "$INSTALL_GPU" = "true" ]; then \
        pip install --no-cache-dir "tensorflow[and-cuda]"; \
    else \
        pip install --no-cache-dir "tensorflow-cpu"; \
    fi

COPY requirements.txt requirements.txt

RUN pip install --user -r requirements.txt

COPY . .
