#!/bin/bash

echo " > install Telegram . . ."
echo "                         "
echo " < DOWNLOAD TELEGRAM > ..."
wget https://telegram.org/dl/desktop/linux
echo "                         "
echo " < unpacking and moving files > ..." 
sudo tar xJf linux -C /opt/
echo "                         "
echo " < create link  > ..." 
sudo ln -s /opt/Telegram/Telegram /usr/local/bin/telegram-desktop
echo "                         "
echo " < create .desktop > ..."
cd ~/.local/share/applications/
touch Telegram.desktop

echo "[Desktop Entry]" >> Telegram.desktop
echo "Version=1.0" >> Telegram.desktop
echo "Name=Telegram Desktop" >> Telegram.desktop
echo "Comment=Official desktop version of Telegram messaging app" >> Telegram.desktop
echo "Exec=tgia  -- %u" >> Telegram.desktop
echo "Icon="$HOME"/.local/share/applications/tg.png" >> Telegram.desktop
echo "Terminal=false" >> Telegram.desktop
echo "StartupWMClass=TelegramDesktop" >> Telegram.desktop
echo "Type=Application" >> Telegram.desktop
echo "Categories=Network;InstantMessaging;Qt;" >> Telegram.desktop
echo "MimeType=x-scheme-handler/telegram-desktop;" >> Telegram.desktop
 

mv ~/TGia/tg.png ~/.local/share/applications/

cd ~/
rm -r TGia/


