# Hier wird das Datapack gebaut
all: rafidp.zip

rafidp.zip: rafidp
	zip rafidp.zip data

rafidp: python/generate.py venv
	./venv/bin/python3 python/generate.py

venv:
	python3 -m venv venv
	./venv/bin/pip install -r requirements.txt