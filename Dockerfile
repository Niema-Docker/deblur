# Minimal Docker image for deblur using Python base
FROM python:3.12-slim

# install deblur
RUN pip install --no-cache-dir --break-system-packages deblur==1.1.0
