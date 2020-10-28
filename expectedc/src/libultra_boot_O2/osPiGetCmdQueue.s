
build/src/libultra_boot_O2/osPiGetCmdQueue.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osPiGetCmdQueue>:
   0:	3c030000 	lui	v1,0x0
   4:	24630000 	addiu	v1,v1,0
   8:	8c6e0000 	lw	t6,0(v1)
   c:	55c00004 	bnezl	t6,20 <osPiGetCmdQueue+0x20>
  10:	8c620008 	lw	v0,8(v1)
  14:	03e00008 	jr	ra
  18:	00001025 	move	v0,zero
  1c:	8c620008 	lw	v0,8(v1)
  20:	03e00008 	jr	ra
  24:	00000000 	nop
	...
