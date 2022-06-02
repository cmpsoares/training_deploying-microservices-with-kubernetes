# kubectl
## Dump the basic cluster information
kubectl cluster-info

## You can also dump a full report
kubectl cluster-info dump

## You can initiate a pod with a container using an image
kubectl run getting-started --image=docker/getting-started

## You can see your nodes using the 'get' command
kubectl get nodes

## And also all other resources like pods, this will show the pode we've just created
kubectl get pods

## You can delete specific resources using the 'delete' command
kubectl delete pods getting-started
