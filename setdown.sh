kubectl delete -f ./deployment-api.yaml
kubectl delete -f ./deployment-front.yaml
kubectl delete -f ./ingress.yaml
kubectl delete -f ./daemonset-mackerel.yaml
kubectl delete secret/regcred
kubectl delete -f ./namespace.yaml
