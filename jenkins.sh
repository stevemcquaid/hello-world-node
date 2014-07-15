pwd

ls

#build the image
docker build -t hello-world-node .

#kickoff/start the node app.
#nodejs == node becuase ubuntu is wicked weird.
docker run hello-world-node nodejs /src/hello.js