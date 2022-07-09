FROM python:3.10.5

RUN mkdir -p /dbt-practice/
COPY . /dbt-practice/

WORKDIR /dbt-practice/

RUN pip install -r requirements.txt

ENTRYPOINT [ "python3", "invoke.py" ]