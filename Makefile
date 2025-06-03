# Hier wird das Datapack gebaut
datapack: rafidp
	zip rafidp.zip data

rafidp: python/generate.py
	python3 python/generate.py

