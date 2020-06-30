# dbt-tutorial
Evaluating dbt by play with it a bit :)

## Pre-requisite
- Follow [this](https://docs.getdbt.com/docs/running-a-dbt-project/using-the-command-line-interface/macos) to install dbt.

- Config the `~/.dbt/profiles.yml` as follows:
```
baozi_tan:
  target: dev
  outputs:
    dev:
      type: bigquery
      method: oauth
      project: [GCP_PROJ]
      dataset: [DATASET_NAME]
      threads: 2
      location: US
      timeout_seconds: 300
      priority: interactive
      retries: 1
```
