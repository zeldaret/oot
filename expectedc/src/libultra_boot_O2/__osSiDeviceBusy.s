
build/src/libultra_boot_O2/__osSiDeviceBusy.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osSiDeviceBusy>:
   0:	3c0ea480 	lui	t6,0xa480
   4:	8dc20018 	lw	v0,24(t6)
   8:	304f0003 	andi	t7,v0,0x3
   c:	11e00003 	beqz	t7,1c <__osSiDeviceBusy+0x1c>
  10:	00001025 	move	v0,zero
  14:	03e00008 	jr	ra
  18:	24020001 	li	v0,1
  1c:	03e00008 	jr	ra
  20:	00000000 	nop
	...
