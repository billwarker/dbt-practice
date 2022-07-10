FROM python:3.10.5

# Downloading gcloud package
RUN curl https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz > /tmp/google-cloud-sdk.tar.gz

# Installing the package
RUN mkdir -p /usr/local/gcloud \
  && tar -C /usr/local/gcloud -xvf /tmp/google-cloud-sdk.tar.gz \
  && /usr/local/gcloud/google-cloud-sdk/install.sh

# Adding the package path to local
ENV PATH $PATH:/usr/local/gcloud/google-cloud-sdk/bin

RUN mkdir -p /dbt-practice/
COPY . /dbt-practice/

WORKDIR /dbt-practice/

RUN pip install -r requirements.txt

RUN gsutil cp -r . gs://will-dbt-files

ENTRYPOINT [ "python3", "invoke.py" ]