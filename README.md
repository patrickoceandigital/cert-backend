# Spring Boot H2 Database CRUD example: Building Rest API with Spring Data JPA

For more detail, please visit:
> [Spring Boot JPA + H2 example: Build a CRUD Rest APIs](https://www.bezkoder.com/spring-boot-jpa-h2-example/)

# Certification SSL

Config nécessaire:

Rien de particulier sauf ces infos

Commandes à lancer: 

1. On doit puller l'image

docker pull patrickoceandigital/cert-backend:latest

2. On doit runner le container: 

--net crée un network afin de faire communiquer le frontend et le backend
--name donne un nom significatif au container au lieu des nom random créé par docker

docker run -p 8080:8080 --net certnet --name backend patrickoceandigital/cert-backend:latest
