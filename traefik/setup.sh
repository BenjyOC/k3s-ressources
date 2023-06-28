#helm repo add traefik https://traefik.github.io/charts
#helm repo update
#kubectl apply -f ns.yaml
helm upgrade --install -f values.yaml traefik traefik/traefik -ntraefik --version 22.1.0
