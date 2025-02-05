CFLAGS := -Wall -O2 -g

default: png2raw raw2png

clean:
	$(RM) png2raw raw2png png2raw_main

.PHONY: default clean

png2raw: png2raw.c
	$(CC) -shared -fPIC $(CFLAGS) -o $@ $< `pkg-config --libs --cflags libpng`

raw2png: raw2png.c
	$(CC) -shared -fPIC $(CFLAGS) -o $@ $< `pkg-config --libs --cflags libpng`

png2raw_main: png2raw.c
	$(CC) $(CFLAGS) -o $@ $< `pkg-config --libs --cflags libpng`

raw2terminal := python3 raw2terminal.py
png          := /home/dragorn421/Documents/oot/assets/objects/object_link_boy/eyes_shock.ci8.png

test: png2raw_main
	./png2raw_main $(png) | $(raw2terminal)
	./png2raw_main --rgba32 $(png) | $(raw2terminal)
	./png2raw_main --palette-rgba32 $(png) | $(raw2terminal)
	./png2raw_main --palette-indices $(png) | $(raw2terminal)
	./png2raw_main --palette-indices $(png) | $(raw2terminal) --format=i8
	./png2raw_main --dimensions $(png)
