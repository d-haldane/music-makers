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

Looks to be an issue for imported net symbols (GND, VDD, etc...) thye don't have a reference prefix so the JITX importer chokes.

Find and replace `F0 ""` with `F0 "SYM"`

New error
```
Kicad Importer: Parsing sources/adafruit-music-maker/kicad/Adafruit-Music-Maker-MP3-Shield-eagle-import.lib
FATAL ERROR: Parsing: No match on line 256 while parsing Text Drawing.
```

Line is `ENDDRAW` - nothing special. Hmm...

Going to try box-symbols - maybe ignore existing symbols will help? Nope.

## 2021.10.8

Trying to delete the @ symbols in the symbol definition to see if that fixes anything.
- Didn't help. Deleted the whole symbol. Didn't help.

Reading the stack trace shows that error is coming from parsing text. Wasn't sure what a 'text drawing' was -- looks like it's text. Seems like some of the `T` lines in the symbol definitions are missing strings -- i.e. `ARDUINO` not `"ARDUINO"`
- That wasn't the fix, but removing all text lines was.

Design now imports, but flat design is hard to deal with.

The names are a little awkward
```
inst C1 : adafruit-music-maker-mp3-shieldpanasonic-c
```

Would be better as `panasonic-c`

The importer threw a bunch of no library found errors
```
Kicad Importer: OK ~ No library found for Adafruit-Music-Maker-MP3-ShieldLQFP48
```
What library wasn't found? Schematic? It looks like I only have landpatterns here without decent pin names so maybe.

Checked the linking in the imported KiCAD - had to delete the arduino symbol, as Giving it a reference prefix (SYM) made kicad require that it has an associated footprint. After that, no issues linking. Import has same error.

Tried giving an explicit path to the local sym-lib-table as a crap shoot. Got an error
```
FATAL ERROR: Expected a sym-lib-table with more symbol libraries.
```
Not sure what to do with that. Docs don't indicate what the problem is or how to change something to resolve the error message. Stuck here. Stopping.

# Bugs

Blank reference prefix kills importer - F0 ""

Text drawing import error