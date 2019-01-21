Some experimentations with c++, CI/CD and various types of deployments.

Use of [Conan](https://conan.io) for dependencies manager.

The application is a simple web server built with [Boost.Asio](https://www.boost.org/doc/libs/1_66_0/doc/html/boost_asio.html) serving an index.html file.

Three scenarii are available:

## Deploying on Cloud Foundry with the binary buildpack

* Concourse pipeline: pipeline-binary.yml
* Build of the project is done with build.sh

## Deploying on Cloud Foundry with Docker

* Concourse pipeline: pipeline-docker.yml
* Build the image with the Dockerfile file
* Update eventually the manifest-docker.yml file if using another Docker image

## Deploying on Kubernetes

* Concourse pipeline: pipeline-kubernetes.yml
* Deployment file: k8s-deployment.yml (make usage of the docker image built in the second experiment)

For the Kubernetes experiment, execute these commands on minikube:

```
kubectl apply -f config/k8s-rbac.yml
kubectl create clusterrolebinding deployments-reader-pod --clusterrole deployments --serviceaccount default:default
```