minikube setup

...

[root@host ~]# minikube addons enable heapster
heapster was successfully enabled

installing Kafka service using
https://github.com/TampereTC/NEO-hackathon-vol1-Team-John_Doe 

  kubectl create namespace kafka
  kubectl --namespace kafka create -f zookeeper.yaml
  kubectl --namespace kafka create -f zookeeper-services.yaml
  kubectl --namespace kafka create -f kafka-controller.yaml
  kubectl --namespace kafka create -f kafka-service-external.yaml

Test
