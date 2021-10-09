## 2021.10.8
Started with the Adafruit music maker as it has a circuit for the VL1053, as well as the Class D amp I want to use. Plan to refactor the design - remove superflous headers and configuration components and add an ESP32 to interface with the components.

Looks like Github now has some auto-auth integration for VSCode.

Imported Eagle to kicad - looks like no issues (other than a wild physical layout)

Importing Kicad to JITX as-is. Wondering how usable the flat design is
- It is... slow. Why are my fans spinning so much for a small design?
- ...failed. 

```
Kicad Importer: Parsing sources/adafruit-music-maker/kicad/Adafruit-Music-Maker-MP3-Shield-eagle-import.lib
FATAL ERROR: Parsing: No match on line 22 while parsing F0.
```

Line is `F0 "" 0 0 50 H I C CNN`