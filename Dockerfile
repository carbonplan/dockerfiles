# Inherit from an upstream image
FROM jupyter/base-notebook:2023-05-15

COPY environment.yml /tmp/environment.yml

RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml

# Configure conda to create new environments within the home folder by default.
# This allows the environments to remain in between restarts of the container
# if only the home folder is persisted.
RUN conda config --system --prepend envs_dirs '~/.conda/envs'

COPY image-tests image-tests
RUN ls
