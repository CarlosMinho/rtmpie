#!/bin/sh
#Color Texto
RED='\033[0;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
NC='\033[1;0m'
echo
echo
echo
echo -e "${RED} ######################################################## ${NC}"
echo -e "${RED} #       instalação do módulo RTMP NGINX concluída      # ${NC}"
echo -e "${RED} ######################################################## ${NC}"
echo -e "${RED} #                                                      # ${NC}"
echo -e "${RED} #        Painel desenvolvido por: Niklas Grießer       # ${NC}"
echo -e "${RED} #       Instalador desenvolvido por: Carlos.Minho      # ${NC}"
echo -e "${RED} #     EMPRESA RESPONSAVEL PELO INSTALADOR: KARL TEC    # ${NC}"
echo -e "${RED} ######################################################## ${NC}"
echo
echo
echo
echo
echo -e "${BLUE} REALIZANDO ATUALIZAÇÃO E INSTALANDO DEPENDÊNCIAS NECESSÁRIAS ${NC}"
echo
echo
sudo apt update -y
sudo apt upgrade -y
sedo apt dist-upgrade -y
sudo apt-get install  curl apt-transport-https ca-certificates software-properties-common -y
echo
echo
echo -e "${BLUE} ADD REPOSITÓRIO (DOCKER) E INSTALANDO O (DOCKER) ${NC}"
echo
echo
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - 
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update -y
sudo apt install docker-ce -y
echo
echo
echo -e "${BLUE} ADD REPOSITÓRIO (DOCKER-COMPOSE) E INSTALANDO O (DOCKER-COMPOSE) ${NC}"
echo
echo
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
echo
echo
echo -e "${BLUE} CRIANDO PASTAS NECESSÁRIAS ${NC}"
echo
echo
mkdir /opt/rtmpie
cd /opt/rtmpie
echo
echo
echo -e "${BLUE} BAIXANDO ARQUIVOS E INICIANDO A INSTALAÇÃO DO (MÓDULO RTMP NGINX) ${NC}"
echo
echo
wget https://raw.githubusercontent.com/ngrie/rtmpie/main/setup.sh
echo -e "${RED} DIGITE O DOMÍNIO OU SUBDOMÍNIO QUE SERÁ USADO NO PAINEL ${NC}"
echo -e "${RED} PRESSIONE (Y) PARA USAR O PROTOCOLO (HTTPS) OU (N) PARA USAR O PROTOCOLO (HTTP) ${NC}"
sleep 5
bash setup.sh -y
docker-compose pull
docker-compose up -d
echo
echo
echo -e "${GREEN} ######################################################## ${NC}"
echo -e "${GREEN} #       instalação do módulo RTMP NGINX concluída      # ${NC}"
echo -e "${GREEN} ######################################################## ${NC}"
echo -e "${GREEN} #                                                      # ${NC}"
echo -e "${GREEN} #        Painel desenvolvido por: Niklas Grießer       # ${NC}"
echo -e "${GREEN} #       Instalador desenvolvido por: Carlos.Minho      # ${NC}"
echo -e "${GREEN} #     EMPRESA RESPONSAVEL PELO INSTALADOR: KARL TEC    # ${NC}"
echo -e "${GREEN} ######################################################## ${NC}"
echo
echo
echo
echo
sleep 5
exit
