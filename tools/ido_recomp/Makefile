IRIX_ROOT53 := ../ido5.3_compiler
IRIX_ROOT71 := ../ido7.1_compiler

cc: OPT_CFLAGS := -O2
cfe: OPT_CFLAGS := -O2
uopt: OPT_CFLAGS := -O2
ugen: OPT_CFLAGS := -O2
as1: OPT_CFLAGS := -O2

RECOMP := recomp



#all: cc cfe uopt ugen as1 err.english.cc
all: cc_c.c  cfe_c.c uopt_c.c ugen_c.c as1_c.c err recomp

clean:
	$(RM) $(RECOMP) libc_impl.o && $(RM) -r build53 && $(RM) -r build71 && $(RM) *_c.c 

$(RECOMP): recomp.cpp
	$(shell mkdir -p build71)
	$(shell mkdir -p build53)
	$(CXX) $^ -o $@ -std=c++11 -O2 -Wno-switch `pkg-config --cflags --libs capstone` -Dugen53

libc_impl.o: libc_impl.c libc_impl.h
	$(CC) $< -c -fno-strict-aliasing -O2 -DIDO53


cc_c.c: ./$(RECOMP)
	./$(RECOMP)  $(IRIX_ROOT53)/usr/bin/cc > cc_c.c
	gcc libc_impl.c  cc_c.c -o cc -fno-strict-aliasing -lm -no-pie -O2 -DIDO53
	mv cc build53 

	./$(RECOMP)  $(IRIX_ROOT71)/usr/bin/cc > cc_c.c
	gcc libc_impl.c  cc_c.c -o cc -fno-strict-aliasing -lm -no-pie -O2 -DIDO73
	mv cc build71
	rm cc_c.c

cfe_c.c: ./$(RECOMP)
	./$(RECOMP)  $(IRIX_ROOT53)/usr/lib/cfe > cfe_c.c
	gcc libc_impl.c  cfe_c.c -o cfe -fno-strict-aliasing -lm -no-pie -O2 -DIDO53
	mv cfe build53 
	
	./$(RECOMP)  $(IRIX_ROOT71)/usr/lib/cfe > cfe_c.c
	gcc libc_impl.c  cfe_c.c -o cfe -fno-strict-aliasing -lm -no-pie -O2 -DIDO71
	mv cfe build71
	rm cfe_c.c

uopt_c.c: ./$(RECOMP)
	./$(RECOMP)  $(IRIX_ROOT53)/usr/lib/uopt > uopt_c.c
	gcc libc_impl.c  uopt_c.c -o uopt -fno-strict-aliasing -lm -no-pie -O2 -DIDO53
	mv uopt build53 
	
	./$(RECOMP)  $(IRIX_ROOT71)/usr/lib/uopt > uopt_c.c
	gcc libc_impl.c  uopt_c.c -o uopt -fno-strict-aliasing -lm -no-pie -O2 -DIDO71
	mv uopt build71
	rm uopt_c.c

ugen_c.c: ./$(RECOMP)
	./$(RECOMP)  $(IRIX_ROOT53)/usr/lib/ugen > ugen_c.c
	gcc libc_impl.c  ugen_c.c -o ugen -fno-strict-aliasing -lm -no-pie -O2 -DIDO53
	mv ugen build53 

	./$(RECOMP)  $(IRIX_ROOT71)/usr/lib/ugen > ugen_c.c
	gcc libc_impl.c  ugen_c.c -o ugen -fno-strict-aliasing -lm -no-pie -O2 -DIDO71
	mv ugen build71
	rm ugen_c.c

as1_c.c: ./$(RECOMP)
	./$(RECOMP)  $(IRIX_ROOT53)/usr/lib/as1 > as1_c.c
	gcc libc_impl.c  as1_c.c -o as1 -fno-strict-aliasing -lm -no-pie -O2 -DIDO53
	mv as1 build53 

	./$(RECOMP)  $(IRIX_ROOT71)/usr/lib/as1 > as1_c.c
	gcc libc_impl.c  as1_c.c -o as1 -fno-strict-aliasing -lm -no-pie -O2 -DIDO71
	mv as1 build71
	rm as1_c.c

err:
	$(shell cp $(IRIX_ROOT53)/usr/lib/err.english.cc build53)
	$(shell cp $(IRIX_ROOT71)/usr/lib/err.english.cc build71)

.PHONY: all clean