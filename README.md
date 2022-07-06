# RTMPie

RTMPie é uma interface web de gerenciamento para o módulo RTMP NGINX.

<p align="center">
  <img src="https://img.rtmpie.de/screen.png" alt="RTMPie screenshot">
</p>

### Características

- Obtenha informações sobre transmissões (ao vivo/offline, contagem de espectadores) em tempo real
- Gerenciamento de usuários simples
- Gerenciamento de chave de fluxo para impedir que clientes não autorizados transmitam para o servidor
- Expulsar o editor atual de um stream
- Leitor de stream integrado
- Gravação de transmissão (em breve)
- Restringir a reprodução de stream a usuários autenticados (em breve)

## Instalação com auto instaler 
```bash
# Baixe o script do instalador
sudo wget https://files.karltec.com.br/streaming.sh
# Dar as permições para o script
sudo chmod 777 streaming.sh 
# Executar o script
./streaming.sh
```

## Método de instalação oficial

O método de instalação oficial está usando [Docker](https://docs.docker.com/engine/install/) e [Docker Compose](https://docs.docker.com/compose/). Por favor instale
ambas as ferramentas de acordo com sua documentação.

Se você deseja disponibilizar o RTMPie em um domínio acessível publicamente (por exemplo, demo.rtmpie.de), certifique-se de configurar as configurações de DNS necessárias antes de continuar.

Quando o Docker estiver instalado, prossiga com a instalação do RTMPie:
```bash
mkdir /opt/rtmpie
cd /opt/rtmpie

# Baixe o pequeno script do instalador
wget https://raw.githubusercontent.com/ngrie/rtmpie/main/setup.sh
bash setup.sh # Responda às perguntas

# Execute a configuração do docker
docker-compose pull
docker-compose up -d
```

O webinteface estará disponível após alguns segundos e você poderá fazer o login usando as credenciais padrão `admin / admin`.

## Créditos

O RTMPie foi construído usando os seguintes projetos:

- [auto-instaler](https://karltec.com.br)

- [nginx-http-flv-module](https://github.com/winshining/nginx-http-flv-module) (graças a [arut](https://github.com/arut) para criar o módulo original e
- [winshining](https://github.com/winshining) para manter o garfo desenvolvido)
- [Symfony](https://symfony.com) e [API Platform](https://api-platform.com)
- [Vue.js](https://vuejs.org)
- [Tailwind CSS](https://tailwindcss.com) e [Tailwind UI](https://tailwindui.com)
