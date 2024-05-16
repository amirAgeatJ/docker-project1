# Docker projet

### CONTRIBUTORS
- [Lucas RATIARAY]
- [Amir AGEAT JAMLY]
## INSTALLATION
### REQUIREMENTS
- Docker
- Docker-compose
### PROCEDURE
1. Clone the repository
2. Run
```bash
docker-compose up 
```
3. Go to [localhost:8081](http://localhost:8081) for the first server.
4. Go to [localhost:8082](http://localhost:8082) for the second server.
5. Enjoy !
## USAGE
### COMMANDS
- Start the containers in background
```bash
docker-compose up 
```
- Stop the containers
```bash
docker-compose down
```
- Show the logs of the containers
```bash
docker-compose logs -f
```
### URLS
- [localhost:8081](http://localhost:8081) : First server
- [localhost:8082](http://localhost:8082) : Second server
## DOCUMENTATION
### ARCHITECTURE
#### TREE
``````
.
├── server
│ ├── nginx1
│ │ └── default.conf
│ ├── nginx2
│ │ └── default.conf
├── www
│ └── (Contenu de l'application)
├── docker-compose.yml
├── Dockerfile
└── README.md
``````
#### DESCRIPTION
- server : Contains the server configuration
- www : Contains the application
- docker-compose.yml : Contains the configuration of the containers
- Dockerfile : Contains the configuration of the images php
- README.md : Contains the documentation of the project
### IMAGES
- php:8.2-fpm-alpine
- nginx:lastest
### PORTS
- 8081:80
- 8082:80
### VOLUMES
- ./www:/var/www/html
### NETWORKS
- default
## ROADMAP
- [x] Create the repository
- [x] Create the Dockerfile
- [x] Create the docker-compose.yml
- [x] Create the server configuration
- [x] Clone the application
- [x] Create the README.md
- [x] Add the database and make all configurations
- [x] Make buttons for each server
- [0] Add the documentation