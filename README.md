[![Guillermo Ampie](https://circleci.com/gh/guillermo-ampie/ml-microservice-kubernetes.svg?style=shield)](https://github.com/guillermo-ampie/project-ml-microservice-kubernetes)

# Operationalize a Machine Learning Microservice API

## Project Overview


This project uses a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Introduction
This project is part of [Udacity - AWS Cloud DevOps Engineer](https://www.udacity.com/course/cloud-dev-ops-nanodegree--nd9991)

Code forked from: https://github.com/udacity/DevOps_Microservices.git

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting: `make lint`
* Complete a Dockerfile to containerize this application: [Dockerfile](Dockerfile)
* Deploy your containerized application using Docker and make a prediction
  * [run_docker.sh](run_docker.sh)
    * Sample output: [docker_out.txt](output_txt_files/docker_out.txt)
  * [make_prediction.sh](make_prediction.sh)
    * Sample output [prediction_out.txt](output_txt_files/prediction_out.txt)
* Improve the log statements in the source code for this application: [app.py](app.py) 
* Configure Kubernetes and create a Kubernetes cluster
  * Upload your container to [DockerHub](https://hub.docker.com/repository/docker/gampie/housing-prices-api): [upload_docker.sh](upload_docker.sh)
  * [Install Docker](https://docs.docker.com/v17.12/install/)
  * Install kubectl(for macOS): `brew install kubectl`
  * Install Minikube (for macOS): `brew cask install minikube` 
  * Start minikube: `minikube start`
  * Check your cluster: `kubectl config view` 
* Deploy a container using Kubernetes and make a prediction
  * [run_kubernetes.sh](run_kubernetes.sh)
    * Sample output: [kubernetes_out.txt](output_txt_files/kubernetes_out.txt) 
  * [make_prediction.sh](make_prediction.sh)  
    * Sample output: [prediction_out.txt](output_txt_files/prediction_out.txt)
* Upload a complete Github repo with [CircleCI](https://www.circleci.com) to indicate that your code has been tested
* CircleCI config file: [.circleci/config.yml](.circleci/config.yml)

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
  * `make setup`
  * `source ~/.devops/bin/activate` 
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

## Main files:
* The python Flask app: [app.py](app.py)
* The [sklearn](https://scikit-learn.org/) pre-trained model: [model_data/boston_housing_prediction.joblib](model_data/boston_housing_prediction.joblib)
* The Dockerfile to containerize the app: [Dockerfile](Dockerfile)
* To make and run your container: [run_docker.sh](run_docker.sh)
* To make a prediction: [make_prediction.sh](make_prediction.sh)
* To upload your container to [DockerHub](https://hub.docker.com/repository/docker/gampie/housing-prices-api): [upload_docker.sh](upload_docker.sh)
* To deploy a container using Kubernetes and make a prediction
  * [run_kubernetes.sh](run_kubernetes.sh)
  * [make_prediction.sh](make_prediction.sh)
* To integrate and test your app under [CircleCI](https://www.circleci.com): [.circleci/config.yml](.circleci/config.yml)
