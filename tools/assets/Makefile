all:
# must build n64texconv before build_from_png and build_jfif
	$(MAKE) -C n64texconv
	$(MAKE) -C build_from_png
	$(MAKE) -C build_jfif

clean:
	$(MAKE) -C n64texconv clean
	$(MAKE) -C build_from_png clean
	$(MAKE) -C build_jfif clean

distclean: clean
	$(MAKE) -C n64texconv distclean

.PHONY: all clean distclean
