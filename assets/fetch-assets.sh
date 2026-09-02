#!/usr/bin/env sh
# Downloads every remote image and video referenced by index.html into
# assets/img and rewrites index.html to use the local copies.
set -e
cd "$(dirname "$0")/.."
mkdir -p assets/img
list=$(mktemp)
grep -oE 'https://[^"]+\.(png|svg|mp4|jpg|jpeg|webp)(\?[^"]*)?' index.html | sort -u > "$list"
i=0
while read -r url; do
  i=$((i+1))
  base="${url%%\?*}"; ext="${base##*.}"
  name="asset-$i.$ext"
  echo "$url -> assets/img/$name"
  curl -sSL "$url" -o "assets/img/$name"
  esc=$(printf '%s' "$url" | sed 's/[][\/.*^$&?~]/\\&/g')
  sed -i.bak "s|$esc|assets/img/$name|g" index.html
done < "$list"
rm -f index.html.bak "$list"
echo "Done. index.html now references assets/img/."
