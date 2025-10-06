# RafiDP
Minecraft Datapack

Ich probiere hier mit Minecraft functions herum.
Teils schreibe ich die direkt, teils generiere ich functions mit Python.

# Quick start

## In Minecraft verwenden

Es gibt 2 Wege:

- Du kannst die .zip - Datei einfach in den datapacks ordner deiner Welt kopieren, 
  und dann die Welt (neu) laden oder /reload aufrufen, oder

- Du kannst dieses Repo in deine Welt klonen:
  ```
    cd ~/.minecraft/saves/DeineWelt/datapacks 
    git clone git@github.com:00dingens/RafiDP.git
  ```


## Funktionen generieren

- Klone dieses Repo
- Rufe im Repo-Ordner `make` auf

# Inhalt

## rafidp:stepper100

Erzeugt ein Teleportationsnetz, das sich beim Verwenden von selbst vergrößert.

Du stehst nach dem Aufruf auf einem Kreuz zwischen 4 Druckplatten.
Tritt auf eine davon, um 100 Blöcke in die entsprechende Richtung teleportiert zu werden.
Bevor du teleportiert wirst, wird am Zielort automatisch genau so ein Kreuz erstellt. 

Meine Empfehlung: stell dich beim Aufruf genau auf 0,0.

## Mehr

Folgt irgendwann