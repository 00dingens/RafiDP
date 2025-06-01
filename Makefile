# Hier wird das Datapack gebaut
datapack: RafiDP
	zip RafiDP.zip RafiDP

RafiDP: python/generate.py
	python3 python/generate.py

