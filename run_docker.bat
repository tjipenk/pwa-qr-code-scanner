docker build -t my-qr .
 
docker run --name=myqrapps -p 8000:80 my-qr
