
### what logs should be considered, logs from python web app or logs from guvicorn or logs from ngnix, or all of the above ?

cred ca iti pui logurile pentru app in /var/log/flask-app.log

possible sources for prometheus:
- /var/log/nginx/access.log
- /var/log/nginx/error.log
- /var/log/nginx/*

these are nginx logs only


extra sources:
- `gunicorn logs`
- `flask-web-app`
- database logs ?

### metrics
OS metrics: (cpu, mem, disk usage)
application tied metrics (requests served/seconds, API error rates)


### node exporters for prometheus
https://prometheus.io/docs/instrumenting/exporters/

databases:
- https://github.com/dcu/mongodb_exporter
- https://github.com/prometheus/mysqld_exporter
- https://github.com/prometheus-community/postgres_exporter

flask:
- https://pypi.org/project/prometheus-flask-exporter/
- https://www.datadoghq.com/blog/monitoring-flask-apps-with-datadog/

django:
- https://github.com/korfuri/django-prometheus

nginx:
- https://github.com/knyar/nginx-lua-prometheus
- https://github.com/martin-helmich/prometheus-nginxlog-exporter#installation
- https://grafana.com/grafana/dashboards/8522



### node exporter important querys

node_filesystem_free_bytes - shows disk space for all partitions
node_cpu_seconds_total

