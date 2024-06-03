# ingress

![Version: 1.0](https://img.shields.io/badge/Version-1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v1](https://img.shields.io/badge/AppVersion-v1-informational?style=flat-square)

Ingress object

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Sierra1011 |  |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| annotations | object | `{}` | add a list of annotations to the Ingress |
| host | string | `"example.domain.com"` | Define a DNS name for the ingress |
| ingressClassName | string | `"ingress-nginx"` | ingressClassName sets the ingress class |
| letsencrypt | object | `{"enabled":true,"issuer":"letsencrypt-prod"}` | use a LetsEncrypt issuer to manage TLS certificates |
| name | string | `"ingress"` | name sets the name used for the resources |
| paths | list | `[{"path":"/","pathType":"Prefix","port":80,"service":"http"}]` | Define a URL path and pathType |
| paths[0] | object | `{"path":"/","pathType":"Prefix","port":80,"service":"http"}` | set the URL path |
| paths[0].pathType | string | `"Prefix"` | set the URL pathType |
| paths[0].port | int | `80` | set the target port |
| paths[0].service | string | `"http"` | set the target service |

