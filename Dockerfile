# Minimal Docker image for deblur using Micromamba base
FROM mambaorg/micromamba:debian13-slim

# install deblur
RUN micromamba create -y -n deblur -c conda-forge -c bioconda deblur=1.1.1 && \
    micromamba clean --all --yes
ENV ENV_NAME=deblur
