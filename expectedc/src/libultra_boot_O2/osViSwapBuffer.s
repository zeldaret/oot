
build/src/libultra_boot_O2/osViSwapBuffer.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osViSwapBuffer>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	0c000000 	jal	0 <osViSwapBuffer>
   c:	afa40018 	sw	a0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	24a50000 	addiu	a1,a1,0
  18:	8caf0000 	lw	t7,0(a1)
  1c:	8fae0018 	lw	t6,24(sp)
  20:	00402025 	move	a0,v0
  24:	adee0004 	sw	t6,4(t7)
  28:	8ca30000 	lw	v1,0(a1)
  2c:	94780000 	lhu	t8,0(v1)
  30:	37190010 	ori	t9,t8,0x10
  34:	0c000000 	jal	0 <osViSwapBuffer>
  38:	a4790000 	sh	t9,0(v1)
  3c:	8fbf0014 	lw	ra,20(sp)
  40:	27bd0018 	addiu	sp,sp,24
  44:	03e00008 	jr	ra
  48:	00000000 	nop
  4c:	00000000 	nop
