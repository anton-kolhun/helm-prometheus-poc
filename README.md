# Usage of  prometheus helm chart


## Building 
```
docker build -t kubecon:v2 .
```

### Install prometheus-server helm chart
```
helm repo add stable https://charts.helm.sh/stable
helm install prometheus -n monitoring --create-namespace stable/prometheus 
```

### Install prometheus-client helm chart
```
helm install kubecon -n kubecon --create-namespace .
```

## To verify - run: 
```
k port-forward  service/prometheus-server  9090:80 -n monitoring
open in browser http://localhost:9090/targets and find "kubecon" app
```