#!/bin/bash
source ./env.config
mkdir -p nginx
cat <<EOF > nginx/default.conf
server {
    listen 80;
    server_name $DOMAIN_NAME;

    location / {
        proxy_pass http://localhost:$PORT;
        proxy_http_version 1.1;
        proxy_set_header Upgrade \$http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host \$host;
        proxy_cache_bypass \$http_upgrade;
    }
}
EOF
echo "✅ nginx/default.conf oluşturuldu."
