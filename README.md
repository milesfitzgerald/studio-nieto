# Studio Nieto — site clone

A static, dependency-free recreation of [studionieto.com](https://www.studionieto.com/),
rebuilt from the site's Framer export as plain HTML, CSS, and a few lines of JS.

## Run it

Open `index.html` directly, or serve the folder:

```sh
python3 -m http.server 8000
# then visit http://localhost:8000
```

## Structure

- `index.html` — single page, same sections and anchors as the original:
  sticky nav, hero (`#home`), `#about`, `#what-we-do`, `#clients`, `#just-for-fun`, `#contact`
- `assets/styles.css` — Syne typography presets, the four design tokens
  (background, yellow, green, blue-gray), radial section washes, desktop (1200px)
  and mobile (<1200px) layouts, appear animations
- `assets/main.js` — scroll-triggered fade-in for the client logos and social icons
- `assets/fetch-assets.sh` — optional: downloads the images and video and
  rewrites `index.html` to use local copies

## Assets

Images and the About video are loaded from the original Framer CDN
(`framerusercontent.com`), exactly as the live site does. To self-host them run:

```sh
./assets/fetch-assets.sh
```

The social icons (LinkedIn, Twitter, Instagram, TikTok) are inline SVGs, since
the originals are rendered by Framer components at runtime.
