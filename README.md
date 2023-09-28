# deployment

Repository for running the Mexico Map project stack.

## Deploying

To start the stack, first fetch the related projects

```bash
sh fetch-repositories.sh
```

Then, set the volume `- ~/deployment/airflow/data/:/var/lib/neo4j/import` to the correct path on the host machine. This should be mounting the `data/` folder from airflow.

Next, read through the airflow README file for any steps to take before running.

Build the neo4j image by running `docker compose -t neo4j .` in the `neo4j` folder.

Finally, start the stack with

```
make up
```

To tear it down,

```bash
make down
```

## Services

For information on accessing the services, refer to their repositories below

[airflow](https://github.com/Golden-Ratio-Analytic-Services/airflow)

[Safer Drives Mexico](https://github.com/Golden-Ratio-Analytic-Services/SaferDrivesMexico)
