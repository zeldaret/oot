
build/src/code/code_800D31A0.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800D31A0>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	3c040000 	lui	a0,0x0
   c:	0c000000 	jal	0 <func_800D31A0>
  10:	24840000 	addiu	a0,a0,0
  14:	0c000000 	jal	0 <func_800D31A0>
  18:	240403e8 	li	a0,1000
  1c:	1000fffd 	b	14 <func_800D31A0+0x14>
  20:	00000000 	nop
	...
  40:	8fbf0014 	lw	ra,20(sp)
  44:	27bd0018 	addiu	sp,sp,24
  48:	03e00008 	jr	ra
  4c:	00000000 	nop

00000050 <func_800D31F0>:
  50:	3c0e0000 	lui	t6,0x0
  54:	25ce0000 	addiu	t6,t6,0
  58:	91cf02a8 	lbu	t7,680(t6)
  5c:	3c010000 	lui	at,0x0
  60:	31f80002 	andi	t8,t7,0x2
  64:	0018c82b 	sltu	t9,zero,t8
  68:	03e00008 	jr	ra
  6c:	ac390000 	sw	t9,0(at)

00000070 <func_800D3210>:
  70:	3c010000 	lui	at,0x0
  74:	03e00008 	jr	ra
  78:	ac200000 	sw	zero,0(at)
  7c:	00000000 	nop
