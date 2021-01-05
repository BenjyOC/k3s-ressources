## To setup cert-manager
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.1.0/cert-manager.yaml

## To update the default traefik config map
sudo vi /var/lib/rancher/k3s/server/manifests/traefik.yaml
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
