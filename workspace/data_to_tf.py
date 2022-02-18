from jinja2 import Environment, FileSystemLoader
import json

# load json
with open("data.json") as f:
    json_data = json.load(f)
f.close()

env = Environment(
    loader=FileSystemLoader("templates"),
    trim_blocks=True,
    lstrip_blocks=True)
vmx_template = env.get_template("vmx.j2")
vqfx_template = env.get_template("vqfx.j2")

#vmx
with open("vmx_1/main.tf", "w") as f:
    f.write(vmx_template.render(json_data))
f.close()

#vqfx
with open("qfx_1/main.tf", "w") as f:
    f.write(vqfx_template.render(json_data))
f.close()






