FROM python:3.9.3

RUN mkdir -p /dbt-practice/
COPY . /dbt-practice/

RUN dbt run --profiles-dir .