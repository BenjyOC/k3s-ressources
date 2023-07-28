helm upgrade --install prometheus prometheus-community/kube-prometheus-stack -f PrometheusChartValues-47.4.0.yml -nmonitoring --version 47.4.0
helm upgrade --install blackbox prometheus-community/prometheus-blackbox-exporter -f BlackboxChartValues-8.2.0.yml -nmonitoring --version 8.2.0
