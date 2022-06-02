# minikube
## Start minikube
minikube start

## You can use kubectl in two ways
minikube kubectl -- get pods -A
kubectl get pods -A

## Now we use kubectl as before to create a pod from an image
kubectl run getting-started --image=docker/getting-started

## minikube also bundles the Kubernetes Dashboard and you can initiate it with the following command 
minikube dashboard

## You can manage your cluster by pausing it
minikube pause
### If you want to test this you can see I cannot use it anymore:
minikube kubectl -- get pods -A
## Now to unpause it
minikube unpause
### If you want to test this you can see I can use it again:
minikube kubectl -- get pods -A

## We can stop the minikube cluster
minikube stop

## Now if we start it again it doesn't take that long anymore
minikube start

## Unless we delete it, which can be usefull to start on a clean sleet
minikube delete -p "minikube"

## We can create multiple clusters in parallel using the "-p" flag to give them different names:
minikube start -p "new-minikube"
minikube start -p "new-minikube-2"

## We can add other flags to edit other aspects
### Like using an older version of k8s
minikube start -p aged --kubernetes-version=v1.16.1
### Other drivers like parallels, vmware or virtualbox
minikube start -p parallels-minikube --driver=parallels

## We can also see a list of all our current clusters (called in minikube: profiles)
minikube profile list

## We can check our current profile:
minikube profile

## And set the profile we wish to use
minikube profile parallels-minikube

## And then you might want to delete it all:
minikube delete --all

## let's create another one:
minikube start --driver=parallels

## We can also use it to launch our services to the web browser automatically
### So let's create a service by creating a deployment
kubectl create deployment hello-minikube --image=k8s.gcr.io/echoserver:1.4
### By exposing the deployment we're turning it into a service
kubectl expose deployment hello-minikube --type=NodePort --port=8080
### Now we can launch it automatically with the 'service' command
minikube service hello-minikube
### Sometimes this doesn't work but we can get the URL just by adding the "--url" flag to it.
minikube service hello-minikube --url

## That's it so we're cleaning up again
minikube delete --all

