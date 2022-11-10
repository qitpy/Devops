#uninstall velero
kubectl delete namespace/velero clusterrolebinding/velero
kubectl delete crds -l component=velero

#re-install
velero install --provider aws --plugins velero/velero-plugin-for-aws:v1.4.0 --bucket maitocode-bucket --backup-location-config region=ap-southeast-1 --snapshot-location-config region=ap-southeast-1 --secret-file ./credential-quyet-dev

#backup test
velero backup create backup-test-01 --include-namespaces test-velero