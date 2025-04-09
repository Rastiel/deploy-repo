#!/bin/bash
echo "🐳 Docker kurulumu başlatılıyor..."
cd docker-setup
chmod +x install.sh
./install.sh
cd ..

echo "📂 Messenger webhook kurulumu başlatılıyor..."
cd m-m-w
chmod +x run-all.sh deploy.sh configure.sh

echo "🔐 Kullanıcı Docker grubuna ekleniyor..."
sudo usermod -aG docker $USER
newgrp docker

./run-all.sh
