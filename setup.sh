#kubectl config set-context gke_awesome-music-478f5_us-west1-c_myk8s --namespace=awesome-music
#kubectl config use-context gke_awesome-music-478f5_us-west1-c_myk8s
kubectl apply -f ./namespace.yaml
kubectl create secret docker-registry regcred --docker-server=docker.io --docker-username=oshou --docker-password=PBvifmQKM3h5f66 --docker-email=adf1985adf@gmail.com
kubectl apply -f ./deployment-api.yaml
kubectl apply -f ./deployment-front.yaml
kubectl apply -f ./ingress.yaml
kubectl apply -f ./daemonset-mackerel.yaml
