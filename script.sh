#!/bin/sh

dbt deps --profiles-dir .  # Pulls the most recent version of the dependencies listed in your packages.yml from git
dbt debug --target prod --profiles-dir .
dbt run --target prod --profiles-dir .
dbt docs generate --profiles-dir .