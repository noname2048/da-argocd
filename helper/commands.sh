# Create namespace
kubectl create namespace <namespace>

# Create a secret for GitHub Container Registry
kubectl create secret docker-registry ghcr-secret \
    --docker-server=ghcr.io \
    --docker-username=<github-username> \
    --docker-password=<token-secret> \
    -n <namespace>

# Apply all yaml in current folder
kubectl apply -f ./

# helm install chart
helm install <cz-chart> <./cz>

# Helm upgrade chart
helm upgrade <cz-chart> <./cz>
