FROM jupyter/pyspark-notebook

USER root
RUN apt-get update && apt-get install -y postgresql-client libpq-dev
USER $NB_USER