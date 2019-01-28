kubectl create namespace test
kubectl get namespace
kubectl create secret generic mysql-pass --from-literal=password=awesomePassword -n test
kubectl get secrets