docker build -t tepkool01/multi-client:latest -t tepkool01/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t tepkool01/multi-server:latest -t tepkool01/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t tepkool01/multi-worker:latest -t tepkool01/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push tepkool01/multi-client:latest
docker push tepkool01/multi-client:$SHA

docker push tepkool01/multi-server:latest
docker push tepkool01/multi-server:$SHA

docker push tepkool01/multi-worker:latest
docker push tepkool01/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=tepkool01/multi-server:$SHA
kubectl set image deployments/client-deployment client=tepkool01/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=tepkool01/multi-worker:$SHA