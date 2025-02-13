FROM jupyter/pyspark-notebook

USER root
RUN apt-get update && apt-get install -y postgresql-client libpq-dev && pip install duckdb dlt[duckdb]
USER $NB_USER