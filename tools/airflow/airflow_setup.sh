#/usr/bin/env bash

airflow db init
airflow users create --username admin --password admin --firstname Admin --lastname User --role Admin --email abhinavsri@gmail.com
airflow users list
airflow scheduler &
airflow webserver
