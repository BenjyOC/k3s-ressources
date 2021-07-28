## To setup cert-manager
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.1.0/cert-manager.yaml

## To update the default traefik config map
sudo vi /var/lib/rancher/k3s/server/manifests/traefik.yaml
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm upgrade --install prometheus prometheus-community/kube-prometheus-stack --kubeconfig /etc/rancher/k3s/k3s.yaml -f prometheus_value.yml -nmonitoring --version 12.10.6
helm upgrade --install prometheus-blackbox-exporter prometheus-community/prometheus-blackbox-exporter --kubeconfig /etc/rancher/k3s/k3s.yaml -f blackbox.yml -nmonitoring
kubectl create secret generic brabiller-basic-auth --from-file auth --namespace=monitoring
