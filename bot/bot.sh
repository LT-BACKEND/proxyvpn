#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);

IZIN=$(curl -sS https://raw.githubusercontent.com/LT-BACKEND/REGISTER/main/IPVPS | awk '{print $4}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo "IZIN DI TERIMA!!"
else
clear
figlet "Akses di tolak!! Silakan Hubungi Admin" | lolcat
exit 0
fi

#install
cp /media/lunatic/var.txt /tmp
cp /root/lunatic/var.txt /tmp
rm -rf lunatic
apt update && apt upgrade -y
apt install python3 python3-pip -y
apt install sqlite3 -y
cd /media/
rm -rf lunatic
wget https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/lunatic.zip
unzip lunatic.zip
cd lunatic
 rm var.txt
 rm database.db
pip3 install -r requirements.txt
pip install pillow
pip install speedtest-cli
pip3 install aiohttp
pip3 install paramiko
#isi data
dean=$(cat /root/nsdomain)
domain=$(cat /etc/xray/domain)
clear
echo "INSTALL BOT CREATE SSH via TELEGRAM"
read -e -p "[*] Input Your Id Telegram :" admin
read -e -p "[*] Input Your bot Telegram :" token
read -e -p "[*] Input username Telegram :" user

cat > /media/lunatic/var.txt << END
ADMIN="$admin"
BOT_TOKEN="$token"
DOMAIN="$domain"
DNS="$dean"
PUB="7fbd1f8aa0abfe15a7903e837f78aba39cf61d36f183bd604daa2fe4ef3b7b59"
OWN="$user"
SALDO="100000"
END


clear
echo "Done"
echo "Your Data Bot"
echo -e "==============================="
echo "Api Token     : $token"
echo "ID            : $admin"
echo "DOMAIN        : $domain"
echo -e "==============================="
echo "Setting done"


rm -f /usr/bin/nenen

echo -e '#!/bin/bash\ncd /media/\npython3 -m lunatic' > /usr/bin/nenen


chmod 777 /usr/bin/nenen

cat > /etc/systemd/system/lunatic.service << END
[Unit]
Description=Simple lunatic - @lunatic
After=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/nenen
Restart=always

[Install]
WantedBy=multi-user.target

END
systemctl daemon-reload
systemctl start lunatic
systemctl enable lunatic

clear
echo "downloading asset"

wget -q -O /usr/bin/panelbot "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/panelbot.sh" && chmod +x /usr/bin/panelbot





wget -q -O /usr/bin/addnoobz "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/addnoobz.sh" && chmod +x /usr/bin/addnoobz



wget -q -O /media/log-install.txt "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/log-install.txt"



wget -q -O /usr/bin/add-vless "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/add-vless.sh" && chmod +x /usr/bin/add-vless

wget -q -O /usr/bin/addtr "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/addtr.sh" && chmod +x /usr/bin/addtr


wget -q -O /usr/bin/addws "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/addws.sh" && chmod +x /usr/bin/addws


wget -q -O /usr/bin/addss "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/addss.sh" && chmod +x /usr/bin/addss

wget -q -O /usr/bin/cek-ssh "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/cek-ssh.sh" && chmod +x /usr/bin/cek-ssh



wget -q -O /usr/bin/cek-ss "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/cek-ss.sh" && chmod +x /usr/bin/cek-ss




wget -q -O /usr/bin/cek-tr "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/cek-tr.sh" && chmod +x /usr/bin/cek-tr

wget -q -O /usr/bin/cek-vless "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/cek-vless.sh" && chmod +x /usr/bin/cek-vless

wget -q -O /usr/bin/cek-ws "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/cek-ws.sh" && chmod +x /usr/bin/cek-ws

wget -q -O /usr/bin/del-vless "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/del-vless.sh" && chmod +x /usr/bin/del-vless




wget -q -O /usr/bin/cek-noobz "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/cek-noobz.sh" && chmod +x /usr/bin/cek-noobz



wget -q -O /usr/bin/deltr "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/deltr.sh" && chmod +x /usr/bin/deltr

wget -q -O /usr/bin/delws "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/delws.sh" && chmod +x /usr/bin/delws



wget -q -O /usr/bin/delss "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/delss.sh" && chmod +x /usr/bin/delss



wget -q -O /usr/bin/renew-ss "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/renew-ss.sh" && chmod +x /usr/bin/renew-ss


wget -q -O /usr/bin/renewtr "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/renewtr.sh" && chmod +x /usr/bin/renewtr


wget -q -O /usr/bin/renewvless "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/renewvless.sh" && chmod +x /usr/bin/renewvless


wget -q -O /usr/bin/renewws "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/renewws.sh" && chmod +x /usr/bin/renewws


wget -q -O /usr/bin/cek-mws "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/cek-mws.sh" && chmod +x /usr/bin/cek-mws

wget -q -O /usr/bin/cek-mvs "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/cek-mvs.sh" && chmod +x /usr/bin/cek-mvs


wget -q -O /usr/bin/cek-mss "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/cek-mss.sh" && chmod +x /usr/bin/cek-mss



wget -q -O /usr/bin/cek-mts "https://raw.githubusercontent.com/LT-BACKEND/proxyvpn/memek/bot/cek-mts.sh" && chmod +x /usr/bin/cek-mts

cp /tmp/var.txt /media/lunatic

echo " Installations complete, type /menu on your bot "

rm /media/lunatic.zip
