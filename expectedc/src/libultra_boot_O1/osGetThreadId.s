
build/src/libultra_boot_O1/osGetThreadId.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osGetThreadId>:
   0:	14800003 	bnez	a0,10 <osGetThreadId+0x10>
   4:	00000000 	nop
   8:	3c040000 	lui	a0,0x0
   c:	8c840000 	lw	a0,0(a0)
  10:	03e00008 	jr	ra
  14:	8c820014 	lw	v0,20(a0)
	...
