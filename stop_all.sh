echo "Stopping Docker Containers"
docker stop $(docker ps -q)
echo "Docker Containers Stopped"; echo

echo "Stopping Minikube"
minikube stop
echo "Minikube Stopped"; echo

echo "Stopping All Brew Services"
brew services --all stop
echo "All Brew Services Stopped"
