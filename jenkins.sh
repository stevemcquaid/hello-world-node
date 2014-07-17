##System Vars Here
HELLOWORLDNODEHOST=n-smcquaid2.dev-godaddy.com

echo "---- Have you setup your system vars?"
echo $HELLOWORLDNODEHOST

echo "---- Present Working Directory:"
pwd

echo "---- List of all files within current directory:"
ls



### Pull and run nginx-proxy container
### This will put hello-world-node under a reverse proxy and serve it properly when navigating to the domain listed above.
git clone https://github.com/jwilder/nginx-proxy.git
cd nginx-proxy
docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock -t jwilder/nginx-proxy
cd ..



echo "---- Building Docker container... "
#build the image
docker build -t smcquaid/hello-world-node .

echo "---- Running the Docker container... "
#kickoff/start the node app.
#nodejs == node becuase ubuntu is wicked weird.
docker run -d -P -e VIRTUAL_HOST=$HELLOWORLDNODEHOST smcquaid/hello-world-node nodejs /src/hello.js

echo "---- DONE! ----"
