# Minikube setup

  minikube_setup/minikube_download.sh
  minikube start --vm-driver=kvm2

If this is done second time remove ~/.minikube, the created KVM minikube VM and the docker-network in KVM.

## Enable performance monitoring
  [root@host ~]# minikube addons enable heapster
  heapster was successfully enabled

## URLs
  [root@host ~]# minikube dashboard --url
  http://192.168.39.68:30000

  Graphana URL is same IP but port 30002


# Installing Kafka service using
https://github.com/TampereTC/NEO-hackathon-vol1-Team-John_Doe 

>  kubectl create namespace kafka
>  kubectl --namespace kafka create -f zookeeper.yaml
>  kubectl --namespace kafka create -f zookeeper-services.yaml
>  kubectl --namespace kafka create -f kafka-controller.yaml
>  kubectl --namespace kafka create -f kafka-service-external.yaml

## Testing with pods
  
### Execute producer 

>    root@testclient-producer:~# /opt/kafka/bin/kafka-console-producer.sh --broker-list kafka:9092 --topic mytopic
>    while true
>    do
>      date +"%Y.%m.%d %H:%M:%S New Message for you" | /opt/kafka/bin/kafka-console-producer.sh --broker-list kafka:9092 --topic mytopic
>      sleep $(( RANDOM / 1000))
>    done

  One or more consumers
 
 >   [root@host ~]# kubectl exec -it testclient-consumer /bin/bash --namespace kafka
 >   /opt/kafka/bin/kafka-console-consumer.sh --bootstrap-server kafka:9092 --topic mytopic --from-beginning
