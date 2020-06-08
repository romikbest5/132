from python:3-alpine

workdir /var/src/app
copy . .

run python -m venv venv 
run . venv/bin/activate
run pip install -e .

env FLASK_APP js_example
cmd ["flask", "run", "--host", "0,0,0,0"]



