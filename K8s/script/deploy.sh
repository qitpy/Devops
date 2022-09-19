# constant
export KUBE_TOKEN=$KUBE_CONFIG_TOKEN
export KUBE_CERTIFICATE=$KUBE_CONFIG_CERTIFICATE
export HELM_PACKAGE=./deployment/smartdev-admin-helm

# Kubectl authentication
envsubst < ./deployment/kubeconfig > ~/.kube/config
envsubst < ./deployment/helm-value-config.yaml > ${HELM_PACKAGE}/values.yaml

# install/upgrade app in EKS
helm upgrade --install --set image.tag=${VERSION} $HELM_DEPLOY_NAME ${HELM_PACKAGE}
