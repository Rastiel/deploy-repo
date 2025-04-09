#!/bin/bash
echo "🔧 NGINX yapılandırması yapılıyor..."
./configure.sh

echo "🚀 Uygulama deploy ediliyor..."
./deploy.sh

echo "✅ Her şey hazır!"
