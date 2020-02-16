[![CircleCI](https://circleci.com/gh/vmbaraiya/Operationalize-a-ML-Microservice-API.svg?style=svg)](https://circleci.com/gh/vmbaraiya/Operationalize-a-ML-Microservice-API)   [![CircleCI](https://circleci.com/gh/vmbaraiya/Operationalize-a-ML-Microservice-API.svg?style=shield)](https://circleci.com/gh/vmbaraiya/Operationalize-a-ML-Microservice-API)

<p align="center">
    <h1 align="center">Operationalize-a-ML-Microservice-API</h1>
</p>
<p align="center">
<b>Project Overview</a></b>
|
<b>Installation</b>
|
<b>Documentation</b>

### Project Overview
In this project, we will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

We have `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. Read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests our ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

project goal is to operationalize machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project we will:
* Test project code using linting
* Complete a Dockerfile to containerize this application
* Deploy containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that code has been tested

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

### File Information
* Dockerfile 
    -  file that contains all commands, in order, needed to build a image.
* Makefile 
    -  makefile to install dependencies, calls `make` with the `install` build target and lint test  for Dockerfile and python calls `make` with `lint` build target
* app.py
    -  flask ML app to predict the house price
* make_prediction.sh
    -  Shell Script which CURL POST request with payload to ML Microservice API endpoint 
* requirements.txt
    -  A file contains all dependencies for app.py
* run_docker.sh
    -  Shell Script to run docker container and exposed container port to host.
* upload_docker.sh
    -  Shell Script to push image to docker registery with tag
* run_kubernetes.sh
    -  Shell Script to run kubernetes Pod with docker container and forward port from container to host
* .circleci/config.yml
    -  YAML file for CircleCI configuration to build and test the Microservice API
* output_txt_files/docker_out.txt
    -  Docker container ouput logs information about accessing ML Microservice API endpoint
* output_txt_files/kubernetes_out.txt
    -  Kubernete pod logs about accessing the ML Microservices API endpoint
    
---

## Setup the Environment

* Create a virtualenv and activate it
```python
python3 -m venv ~/.devops
```
* Run `make install` to install the necessary dependencies
* Install Hadolint for Linting test
```shell
sudo  wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64
sudo chmod +x /bin/hadolint
```
* Run `make lint` for linting Dockerfile and app.py
```shell
------------------------------------
Your code has been rated at 10.00/10
```
* Install and configure Docker
* Install and configure Kubernete Cluster, Minikube.

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Push Docker Image: `./upload_docker.sh`
4. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
* check Kubernetes pod logs `kubectl logs pod-name`

### Make Prediction
 * Later container started successfully, execute `./make_prediction.sh`
 ```JSON
 {
  "prediction": [
    20.35373177134412
  ]
}

 ```

### REFERENCE
 - .[!Dockerfile](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)
 - .[!Minikube](https://kubernetes.io/docs/tutorials/hello-minikube/)
 - .[!Kubernetes](https://kubernetes.io/)
 - .[!CircleCI Status badge](https://circleci.com/docs/2.0/status-badges/)
 
