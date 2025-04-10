#!/bin/bash

echo "🔧 NGINX yapılandırması yapılıyor..."
./configure.sh

if [ ! -f .env ]; then
  echo "✅ .env dosyası oluşturuluyor..."
  cp .env.example .env
fi

echo "🚀 Uygulama deploy ediliyor..."
./deploy.sh

echo "✅ Her şey hazır!"
