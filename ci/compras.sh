
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
 *)
    echo $"Usage: $0 {cid|ic|t}"
    exit 1
esac