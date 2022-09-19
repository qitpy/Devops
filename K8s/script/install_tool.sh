#install awscli & kubectl
apt-get update && apt-get install -y awscli
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
mkdir ~/.kube
chmod +x ./kubectl
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

# login AWS
aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin $IMAGE_HOST
