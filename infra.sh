sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-cache policy docker-ce
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo apt install -y docker.io
# 여기까지 설치 완료
docker --version
sudo usermod -aG docker ubuntu
# docker compose 도 설치하겠따.
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose version

cd /home/ubuntu/app

ls -a

sudo docker-compose up -d