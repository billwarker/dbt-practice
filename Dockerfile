FROM python:3.9.3

RUN mkdir -p /dbt-practice/
COPY . /dbt-practice/
RUN ls
WORKDIR /dbt-practice/

RUN pip install dbt-core==1.1.0
RUN pip install dbt-bigquery==1.1.0

RUN dbt run --profiles-dir .