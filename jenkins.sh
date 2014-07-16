echo "---- Present Working Directory:"
pwd

echo "---- List of all files within current directory:"
ls

echo "---- Building Docker container... "
#build the image
docker build -t hello-world-node .

echo "---- Running the Docker container... "
#kickoff/start the node app.
#nodejs == node becuase ubuntu is wicked weird.
#docker run -d -P hello-world-node nodejs /src/hello.js ### Can't use this due to security group port restrictions
CID=$(docker run -d -p 60015:9009 hello-world-node nodejs /src/hello.js);

dockerip='docker ps | tail -n +2 | while read cid b; do echo -n "$cid\t"; docker inspect $cid | grep IPAddress | cut -d \" -f 4; done'

docker inspect --format '{{ .NetworkSettings.IPAddress }}' ${CID}

echo $dockerip

echo "This should auto-bind to available port"

VAR=docker ps
echo $VAR

echo "---- DONE! ----"
