# Inherit from an upstream image
FROM jupyter/base-notebook:2023-10-20

COPY environment.yml /tmp/environment.yml

COPY apt.txt /tmp/apt.txt

# Switch to root user to install apt packages
USER root

# Install apt packages and clean up
RUN apt-get update && \
    xargs -a /tmp/apt.txt apt install -y && \
    apt-get autoremove -y && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* && \
    rm /tmp/apt.txt

RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml

ENV TZ UTC

COPY image-tests image-tests
RUN ls
