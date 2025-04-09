#!/bin/bash
echo "🐳 Docker kurulumu başlatılıyor..."
cd docker-setup
./install.sh
cd ..

echo "📡 Messenger webhook kurulumu başlatılıyor..."
cd m-m-w
./run-all.sh
