# Minimal Docker image for deblur using Alpine base
FROM alpine:latest

# install deblur
RUN apk update && \
    apk add --no-cache bash gcc g++ musl-dev py3-pip python3 python3-dev && \
    pip install --no-cache-dir --break-system-packages deblur==1.1.0
