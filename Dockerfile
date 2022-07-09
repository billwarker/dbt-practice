FROM python:3.10.5

RUN mkdir -p /dbt-practice/
COPY . /dbt-practice/

WORKDIR /dbt-practice/

RUN pip install dbt-core==1.1.0
RUN pip install dbt-bigquery==1.1.0

RUN sh script.sh