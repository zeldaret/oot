all:
	$(MAKE) -C n64texconv
	$(MAKE) -C bin2c
	$(MAKE) -C png2raw

clean:
	$(MAKE) -C n64texconv clean
	$(MAKE) -C bin2c clean
	$(MAKE) -C png2raw clean

distclean: clean
	$(MAKE) -C n64texconv distclean

.PHONY: all clean distclean
