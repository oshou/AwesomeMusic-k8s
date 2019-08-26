kubectl apply -f ./namespace.yaml
kubectl config set-context minikube --namespace=awesome-music
kubectl create secret docker-registry regcred --docker-server=docker.io --docker-username=oshou --docker-password=PBvifmQKM3h5f66 --docker-email=adf1985adf@gmail.com
kubectl apply -f ./deployment-api.yaml
kubectl apply -f ./deployment-front.yaml
kubectl apply -f ./ingress.yaml
