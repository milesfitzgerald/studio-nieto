#!/usr/bin/env sh
# Downloads the site's images and video into assets/img with the filenames
# index.html already expects. Run once from anywhere: ./assets/fetch-assets.sh
set -e
cd "$(dirname "$0")/.."
mkdir -p assets/img
while read -r name url; do
  [ -n "$name" ] || continue
  echo "assets/img/$name"
  curl -sSL "$url" -o "assets/img/$name"
done <<'LIST'
  og-image.png https://framerusercontent.com/modules/9cmrsxopmNY45rxGLUt7/yhaQkVkJ11fcpG268C8h/assets/puVfXkMOilkRjlj1qrjeSqoiA4.png
  favicon.png https://framerusercontent.com/modules/9cmrsxopmNY45rxGLUt7/yhaQkVkJ11fcpG268C8h/assets/nh1eaG3MHxoeiyGYfGlSw4MHlJc.png
  logo.png https://framerusercontent.com/images/CSn1LClSk0WX6HJwDfXUmL9PDI.png
  wordmark.png https://framerusercontent.com/images/dOEfnLO9GlHAC2wQjcRRoSq07k.png
  asterisk.png https://framerusercontent.com/images/kYxiEy0esUeqJVVwzjR2uPtGWmg.png
  zigzag.png https://framerusercontent.com/images/lydyPCDXILYKDqBQUB3MvpPkQ.png
  about.mp4 https://framerusercontent.com/modules/assets/Duh5PHV14tDQ4zOA0kxrHlDVcAs~YXU3g9T-9Kkh4FOLc2oY8QqK0ErJjnxxq5ua3xUiTRA.mp4
  client-1.png https://framerusercontent.com/images/wkjXAY2AKWd7TCqvi83z8.png?scale-down-to=512
  client-2.png https://framerusercontent.com/images/J4kj4Usiwu0irTeEnHgwvczQ4.png?scale-down-to=512
  client-3.png https://framerusercontent.com/images/8ac83vGSkejRWhAEXFgs51SV2w.png
  client-4.svg https://framerusercontent.com/images/wJIlXdWoTeDuQdrYQ3rzgm5zC8.svg
  client-5.png https://framerusercontent.com/images/EAFLQj28ceq5Qhl0zHg9gazko.png?scale-down-to=512
  client-6.png https://framerusercontent.com/images/WkhNt0vDz92RLHbyJLloPWhmE4.png?scale-down-to=512
  chair.png https://framerusercontent.com/images/rQy1D9jE0K05yWz6cF2Pdw4Ds.png
  arrow.png https://framerusercontent.com/images/Vrp8y08igOq5OmoDcncPMRi0sM0.png
LIST
echo "Done. All assets are in assets/img/."
