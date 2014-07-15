echo "Host github.secureserver.net
    StrictHostKeyChecking no" >> ~/.ssh/config

git clone https://github.secureserver.net/smcquaid/hello-world-node.git
ls

git clone git@github.secureserver.net:smcquaid/hello-world-node.git
ls


cd ~/.ssh
ls
cat ~/.ssh/id_rsa.pub

node hello.js