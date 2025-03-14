# nginx-get-started


<image src="doc/arch.png" width=1000 center>

 [<img src="https://img.shields.io/badge/Python-3.11.7-yellow.svg?logo=python">](https://hub.docker.com/r/hadolint/hadolint) 
[<img src="https://img.shields.io/badge/Nginx-latest-green.svg?logo=nginx">]()   [<img src="https://img.shields.io/badge/Docker-v20.10.22-blue.svg?logo=docker">](https://www.docker.com/)           [<img src="https://img.shields.io/badge/Docker--compose-v2.15.1-blue.svg?logo=docker">](https://www.docker.com/)
[<img src="https://img.shields.io/badge/fastapi-0.115.11-success.svg?logo=fastapi">](https://hub.docker.com/r/prom/prometheus/tags)
[<img src="https://img.shields.io/badge/uvicorn-0.34.0-blue.svg?logo=pypi   ">](https://hub.docker.com/r/grafana/grafana/tags)


---
---
## 1. Project's purpose : 

The aim of this project is the deploiement of an architecture of 4 containers:

- 1 **Nginx** : for the reverse proxy
- 3 **Uvicorn/FastAPI** : for the webservers

The reverse proxy will manage the traffic between the webservers and the clients by securing the traffic and balancing the load between the webservers.

<br/>

***
---
## 2. Repository structure :

The repository is structured as follows:

- **backend** : contains the FastAPI code serving endpoints
- **frontend** : contains the HTML code for the user interface
- **main.py** : contains the code for running the uvicorn ASGI webserver
- **requirements.txt** : contains the list of required python packages
- **Dockerfile** : contains the instruction for building the webapp Docker image
- **docker-compose.yaml** : contains the configuration for the containers orchestration
- **Makefile** : contains the commands for automating the project execution

