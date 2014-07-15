pwd

ls

#build the image
docker build -t hello-world-node .

#kickoff/start the node app.
docker run hello-world-node node src/hello.js