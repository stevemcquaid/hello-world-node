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
docker run -d -P hello-world-node nodejs /src/hello.js

echo "This should auto-bind to available port"
VAR=docker ps
echo $VAR

echo "---- DONE! ----"
