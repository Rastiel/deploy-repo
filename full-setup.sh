#!/bin/bash

echo "🐳 Docker kurulumu başlatılıyor..."

cd docker-setup

# Kurulum scriptine çalıştırma izni ver
chmod +x install.sh
./install.sh

cd ..

echo "📂 Messenger webhook kurulumu başlatılıyor..."

cd m-m-w

# Gerekli scriptlere çalıştırma izni ver
chmod +x run-all.sh
chmod +x deploy.sh
chmod +x configure.sh

./run-all.sh
