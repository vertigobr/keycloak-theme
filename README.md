# keycloak-theme

Tema do iPaaS para o Keycloak

## Como desenvolver o Tema

Subir o Keycloak montando a pasta do tema:

```sh
docker-compose up
```

Acessar o Keycloak (admin/admin), alterar o tema de login para "ipaas" no Keycloak e alterar os arquivos do tema com o editor que quiser.

## Como publicar o Tema

O pipeline publica o tema como imagem pública no Docker Hub. Esta imagem é utilizável nos initContainers do chart do Keycloak
para copiar um tema novo em tempo de execução.

## Como usar um tema

Usar um `values.yaml` com o chart do Keycloak:

```yaml
keycloak:
  extraInitContainers:
    - name: theme-provider
      image: vertigo/keycloak-theme:latest
      imagePullPolicy: IfNotPresent
      command:
        - sh
      args:
        - -c
        - |
          echo "Copying theme..."
          cp -R /mytheme/* /theme
      volumeMounts:
        - name: theme
          mountPath: /theme

  extraVolumeMounts:
    - name: theme
      mountPath: /opt/jboss/keycloak/themes/mytheme

  extraVolumes:
    - name: theme
      emptyDir: {}
```
