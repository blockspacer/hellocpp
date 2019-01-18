Some experimentations with c++, CI/CD and various types of deployments

**Note**

For the Kubernetes experiment, execute these commands on minikube:

```
kubectl apply -f config/k8s-rbac.yml
kubectl create clusterrolebinding deployments-reader-pod --clusterrole deployments --serviceaccount default:default
```