# Inherit from an upstream image
FROM jupyter/scipy-notebook:2023-05-01

COPY edge.yml /tmp/edge.yml

RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml

COPY image-tests image-tests
RUN ls
