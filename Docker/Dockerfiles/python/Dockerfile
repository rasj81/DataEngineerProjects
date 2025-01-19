FROM python:3.9.1

RUN apt-get update \
    && apt-get -y install wget pgcli \
    && apt-get clean \
    && pip install pandas sqlalchemy psycopg2

WORKDIR /app
# COPY ingest_data.py ingest_data.py 

# ENTRYPOINT [ "python", "ingest_data.py" ]
ENTRYPOINT [ "python"]