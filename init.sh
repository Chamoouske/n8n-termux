pkg install root-repo

pkg update && pkg upgrade -y

#Instala o Python 3

pkg install python3 -y

#Instalar o nodeJS 16x

pkg install nodejs-lts -y

#Instalar o SQL Lite3 compilando ele do Source

pkg install clang libsqlite pkg-config python make -y

npm install sqlite3 --build-from-source --sqlite=/data/data/com.termux/files/usr/bin/sqlite3 -g

#Instalar o n8n indicando o caminho do sqllite

npm install n8n -g --sqlite=/data/data/com.termux/files/usr/bin/sqlite3

# Instalar o pm2

npm install pm2 -g

#rodar o pm2

#opção sem tunnel para webhooks

pm2 start n8n 

#opção com tunnel para webhooks (não utilize em produção)

# pm2 start n8n —tunnel

#salvar o estado do pm2

pm2 save

#Colocando o n8n no Startup do pm2 start (inicio automático)

#ver status

pm2 status

#ver o ip do teu termux

pkg install net-tools

ifconfig
