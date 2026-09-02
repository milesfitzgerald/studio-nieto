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
- `assets/fetch-assets.sh` — re-downloads the original images and video into `assets/img/`

## Assets

Images and the About video are self-hosted under `assets/img/` with descriptive
filenames (`wordmark.png`, `about.mp4`, `client-1.png`, and so on). The only external
dependency is the Google Fonts stylesheet for Syne.

`assets/fetch-assets.sh` re-downloads the originals into those filenames if they
ever need refreshing.

The social icons (LinkedIn, Twitter, Instagram, TikTok) are inline SVGs.
