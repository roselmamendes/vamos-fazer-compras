# Contribuindo no projeto

## Tech Stack

- Docker
- [Vue.js](https://vuejs.org/)

## Obtendo código e executando localmente

1. Baixe o código na sua máquina com o comando `git clone git@github.com:roselmamendes/vamos-fazer-compras.git`

2. Dentro da pasta do projeto, construa a image Docker com o comando `sh ci/compras.sh constroi-imagem`

3. Execute localmente o projeto com o comando `sh ci/compras.sh ic`. Após isso, é possível abrir a página em localhost:8080.

## Look and feel

*Paletas de Cores*

https://www.color-hex.com/color-palette/77155

*CSS*

Para cada componente existe um arquivo style.css. A sintaxe é do [Sugarss](https://github.com/postcss/sugarss)

Para informações sobre o pre-processors para CSS usados, cheque o arquivo webpack.config.js

## Implantação

O projeto usa [Google App Engine](https://cloud.google.com/appengine/).

Existe um arquivo app.yaml onde especificamos as configurações para implantação.

O GAE usa o comando `npm start` para implantação.

## CI/CD

O projeto usa o [Travis CI](https://travis-ci.org/).

Para o deploy temos o arquivo com as credenciais do GCP encriptado. Para encriptar usamos o travis cli através de um container docker.

[Criando as credenciais](https://docs.travis-ci.com/user/deployment/google-app-engine/)

Comando para encriptar o arquivo de credenciais:

1. Construa a imagem para o travis cli com `sh ci/compras.sh build-travis-cli` 

2. Entre no container travis-cli com o comando `sudo docker run -it --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp travis-cli /bin/bash`
3. Então execute `travis encrypt-file vamos-fazer-compras-40da0e7eab52.json --add`

