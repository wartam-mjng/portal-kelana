#!/bin/bash
# Update Portal KELANA di VPS — satu perintah.
# Menarik versi terbaru dari GitHub, lalu membuka izin baca supaya Caddy
# bisa menyajikan berkasnya.
#
# Cara pakai (dari folder ini, ~/portal-kelana):
#   ./update-vps.sh
set -e
cd "$(dirname "$0")"

echo "== Menarik pembaruan dari GitHub =="
git pull

echo "== Membuka izin baca =="
sudo chmod -R a+rX .

echo "SELESAI. Buka https://kelana.wartam.web.id untuk memastikan tampilan terbaru tampil."
