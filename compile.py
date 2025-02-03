import yaml
from jinja2 import Environment, FileSystemLoader

# Load YAML files
with open("static/data/talks.yml", "r") as talks_file:
    talks = yaml.load(talks_file, Loader=yaml.SafeLoader)

with open("static/data/info.yml", "r") as info_file:
    info = yaml.load(info_file, Loader=yaml.SafeLoader)

# Set up Jinja2 environment
env = Environment(loader=FileSystemLoader("."))
template = env.get_template("index.template.html")

# Render the template with the data from YAML files
rendered_html = template.render(talks=talks, info=info)

# Write the rendered HTML to index.html
with open("index.html", "w") as output_file:
    output_file.write(rendered_html)
