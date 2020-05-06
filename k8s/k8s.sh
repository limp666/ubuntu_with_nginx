kubectl run nginx --image=limp666/ubuntu_with_nginx --port=80 --replicas=20
kubectl expose deployment/nginx --type="NodePort" --port 80
