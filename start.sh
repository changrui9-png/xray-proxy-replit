#!/bin/bash
# Xray VLESS+WS proxy for Replit
cd "$(dirname "$0")"

if [ ! -x ./xray ]; then
  echo "[start] downloading Xray-core..."
  curl -fsSL -o xray.zip "https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip" || { echo "[start] download failed"; sleep 10; exit 1; }
  unzip -o xray.zip > /dev/null 2>&1 || python3 -c "import zipfile; zipfile.ZipFile('xray.zip').extractall('.')"
  rm -f xray.zip
  chmod +x ./xray
fi

echo "[start] running Xray on port 3000..."
exec ./xray run -config config.json
