# Studio Nieto — site clone

A static, dependency-free recreation of [studionieto.com](https://www.studionieto.com/):
a Brooklyn creative studio, founded by Cristina Ramirez Nieto, that helps brands tell
their story on social media.

## Run it

Open `index.html` directly, or serve the folder:

```sh
python3 -m http.server 8000
# then visit http://localhost:8000
```

## Structure

- `index.html` — single-page site: hero, highlights strip, services, work (The Modern Chair
  case study plus three sample cards), approach, about, contact form, footer
- `assets/styles.css` — layout, typography (Fraunces + Inter via Google Fonts), responsive rules
- `assets/main.js` — mobile nav, scroll-reveal, demo form handler, footer year
- `assets/favicon.svg`

## What is inferred

The live site could not be fetched from the build environment, so the layout and
imagery are an original design based on the studio's public positioning (tagline,
services, The Modern Chair project, founder bio). Things to replace with the real
content:

- The three sample work cards under "Selected work"
- The portrait placeholder in "About"
- The contact form action (currently a client-side demo)
