minikube start --driver=virtualbox
minikube ip
minikube docker-env
minikube profile list
minikube dashboard

kubectl apply -f [file or foldername]
kubectl get [deployments | pods | services | etc]
kubectl get pv (persistent volumes)
kubectl delete [deployment | service] [deployment | service name]
kubectl get storageclass
kubectl describe storageclass

kubectl create secret (generic|docker-registry|tls) <secret_name> --from-literal key=value

how to scale Deployments? i.e. 5 replicas to 100 replicas on demand

https://kubernetes.github.io/ingress-nginx/deploy/


---
docker run -it -v $(pwd):/app ruby:2.4 sh # Gets a terminal that has ruby installed
docker run -it -v "%cd%":/app ruby:2.4 sh # on windows
gem install travis

travis login --com
travis encrypt-file service-account.json -r USERNAME/REPO --com
