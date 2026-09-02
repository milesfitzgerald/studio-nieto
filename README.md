# Studio Nieto — site clone

A static, dependency-free recreation of [studionieto.com](https://www.studionieto.com/)
as plain HTML, CSS, and a few lines of JS.

## Run it

Open `index.html` directly, or serve the folder:

```sh
python3 -m http.server 8000
# then visit http://localhost:8000
```

## Structure

- `index.html` — single page with the same sections and anchors as the original:
  sticky nav, hero (`#home`), `#about`, `#what-we-do`, `#clients`, `#just-for-fun`, `#contact`
- `assets/styles.css` — Syne typography presets, the four color tokens
  (background, yellow, green, blue-gray), radial section washes, desktop (1200px)
  and mobile (<1200px) layouts, appear animations
- `assets/main.js` — scroll-triggered fade-in for the client logos and social icons
- `assets/fetch-assets.sh` — downloads the remote images and video and
  rewrites `index.html` to use local copies

## Assets

Images and the About video are currently loaded from the original site's CDN.
To self-host them, run this once from the repo root:

```sh
./assets/fetch-assets.sh
```

After that, `index.html` references `assets/img/` only and has no remaining
external dependencies apart from the Google Fonts stylesheet for Syne.

The social icons (LinkedIn, Twitter, Instagram, TikTok) are inline SVGs.
