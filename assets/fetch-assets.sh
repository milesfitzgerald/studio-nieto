#!/usr/bin/env sh
# Downloads the images and video referenced from framerusercontent.com into
# assets/img and rewrites index.html to use the local copies.
set -e
cd "$(dirname "$0")/.."
mkdir -p assets/img
i=0
grep -oE 'https://framerusercontent\.com/[^"]+' index.html | sort -u > /tmp/sn-assets.txt
while read -r url; do
  i=$((i+1))
  base="${url%%\?*}"; ext="${base##*.}"
  case "$ext" in png|svg|mp4|jpg|jpeg|webp) ;; *) ext=png ;; esac
  name="asset-$i.$ext"
  echo "$url -> assets/img/$name"
  curl -sSL "$url" -o "assets/img/$name"
  esc=$(printf '%s' "$url" | sed 's/[][\/.*^$&?~]/\\&/g')
  sed -i.bak "s|$esc|assets/img/$name|g" index.html
done < /tmp/sn-assets.txt
rm -f index.html.bak /tmp/sn-assets.txt
echo "Done. index.html now references assets/img/."
