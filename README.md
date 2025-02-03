# ANCOR (AI, Neuro, CogSci Research) talks

Website: https://brown-ancor.github.io

## How to compile the website:

This website uses `jinja2` to convert `index.template.html` into `index.html` using data in `static/data`.

Run:
```bash
python compile.py
```

## How to update content:

Information about upcoming talks lives in the YAML file at `static/data/talks.yml`. Additional information about venues and organizers lives both, in the templated html and at `static/data/info.yml`. Make sure to run `compile.py` after any edits.

## Credits

Mikey Lepori and Aalok Sathe. Website adapted from [Nerfies](https://nerfies.github.io/).