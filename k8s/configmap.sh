kubectl delete configmap frpc-config
kubectl delete configmap frps-config
kubectl create configmap frpc-config --from-file frpc.ini
kubectl create configmap frps-config --from-file frps.ini

