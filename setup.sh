source ./.env

# GKEのcontext等取得(ログイン認証完了済前提)
# gcloud container clusters get-credentials $GKE_CLUSTER_NAME --zone $GKE_ZONE --project $GKE_PROJECT

# コンテキスト指定
kubectl config use-context minikube

# Namespace指定
kubectl apply -f ./namespace.yaml

# 非公開情報登録
kubectl create secret docker-registry regcred \
  --docker-server=$DOCKER_SERVER \
  --docker-username=$DOCKER_USERNAME \
  --docker-password=$DOCKER_PASSWORD \
  --docker-email=$DOCKER_EMAIL

# DBコンテナ
kubectl apply -f ./deployment-db.yaml

# バックエンドAPI
kubectl apply -f ./deployment-api.yaml

# フロントSPA
kubectl apply -f ./deployment-front.yaml

# Ingress
kubectl apply -f ./ingress.yaml

# ノード監視(Mackerel)
kubectl apply -f ./daemonset-mackerel.yaml
