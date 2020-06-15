# keycloak-theme

Tema do iPaaS para o Keycloak

## Como desenvolver o Tema

Subir o Keycloak montando a pasta do tema:

```sh
docker-compose up
```

Alterar o tema para "ipaas" no Keycloak e alterar os arquivos do tema com o editor que quiser.

## Como publicar o Tema

O pipeline publica o tema como imagem pública no Docker Hub, utilizada nos initContainers do chart do iPaaS
para copiar o tema para o Keycloak de produção.
