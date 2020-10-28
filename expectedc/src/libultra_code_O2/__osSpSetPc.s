
build/src/libultra_code_O2/__osSpSetPc.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osSpSetPc>:
   0:	3c0ea404 	lui	t6,0xa404
   4:	8dc20010 	lw	v0,16(t6)
   8:	3c18a408 	lui	t8,0xa408
   c:	304f0001 	andi	t7,v0,0x1
  10:	15e00003 	bnez	t7,20 <__osSpSetPc+0x20>
  14:	00001025 	move	v0,zero
  18:	03e00008 	jr	ra
  1c:	2402ffff 	li	v0,-1
  20:	af040000 	sw	a0,0(t8)
  24:	03e00008 	jr	ra
  28:	00000000 	nop
  2c:	00000000 	nop
