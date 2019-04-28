
case "$1"
 in
 constroi-imagem-docker|cid) 
	sudo docker build -t fazer-compras .
 ;;
 iniciar-container|ic) 
	sudo docker run -it --rm -p 8080:8080 -v "$PWD":/usr/src/app -w /usr/src/app -t fazer-compras npm run start-local
 ;;
 build) 
	sudo docker run -it --rm -p 8080:8080 -v "$PWD":/usr/src/app -w /usr/src/app -t fazer-compras npm run build
 ;;
 build-travis-cli) 
	sudo docker build -t travis-cli --file Dockerfile-travis-cli .
 ;;
 encripta-gae-credenciais)
	sudo docker run -it --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp travis-cli travis encrypt-file vamos-fazer-compras-40da0e7eab52.json --add
 ;;
 *)
    echo $"Usage: $0 {cid|ic|t}"
    exit 1
esac