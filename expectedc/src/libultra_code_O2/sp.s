
build/src/libultra_code_O2/sp.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osSpDeviceBusy>:
   0:	3c0ea404 	lui	t6,0xa404
   4:	8dc20010 	lw	v0,16(t6)
   8:	304f001c 	andi	t7,v0,0x1c
   c:	11e00003 	beqz	t7,1c <__osSpDeviceBusy+0x1c>
  10:	00001025 	move	v0,zero
  14:	03e00008 	jr	ra
  18:	24020001 	li	v0,1
  1c:	03e00008 	jr	ra
  20:	00000000 	nop
	...
