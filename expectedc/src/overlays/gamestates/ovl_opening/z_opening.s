
build/src/overlays/gamestates/ovl_opening/z_opening.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Opening_SetupTitleScreen>:
   0:	3c020000 	lui	v0,0x0
   4:	24420000 	addiu	v0,v0,0
   8:	27bdffe8 	addiu	sp,sp,-24
   c:	240e0001 	li	t6,1
  10:	afbf0014 	sw	ra,20(sp)
  14:	ac4e135c 	sw	t6,4956(v0)
  18:	ac800098 	sw	zero,152(a0)
  1c:	ac400004 	sw	zero,4(v0)
  20:	0c000000 	jal	0 <Opening_SetupTitleScreen>
  24:	afa40018 	sw	a0,24(sp)
  28:	3c020000 	lui	v0,0x0
  2c:	8fa40018 	lw	a0,24(sp)
  30:	24420000 	addiu	v0,v0,0
  34:	340ffff3 	li	t7,0xfff3
  38:	24180007 	li	t8,7
  3c:	ac4f0008 	sw	t7,8(v0)
  40:	ac581360 	sw	t8,4960(v0)
  44:	3c190000 	lui	t9,0x0
  48:	3c080001 	lui	t0,0x1
  4c:	35082518 	ori	t0,t0,0x2518
  50:	27390000 	addiu	t9,t9,0
  54:	ac99000c 	sw	t9,12(a0)
  58:	ac880010 	sw	t0,16(a0)
  5c:	8fbf0014 	lw	ra,20(sp)
  60:	27bd0018 	addiu	sp,sp,24
  64:	03e00008 	jr	ra
  68:	00000000 	nop

0000006c <func_80803C5C>:
  6c:	03e00008 	jr	ra
  70:	afa40000 	sw	a0,0(sp)

00000074 <Opening_Main>:
  74:	27bdffe8 	addiu	sp,sp,-24
  78:	afbf0014 	sw	ra,20(sp)
  7c:	afa40018 	sw	a0,24(sp)
  80:	8c840000 	lw	a0,0(a0)
  84:	00002825 	move	a1,zero
  88:	00003025 	move	a2,zero
  8c:	0c000000 	jal	0 <Opening_SetupTitleScreen>
  90:	00003825 	move	a3,zero
  94:	0c000000 	jal	0 <Opening_SetupTitleScreen>
  98:	8fa40018 	lw	a0,24(sp)
  9c:	0c000000 	jal	0 <Opening_SetupTitleScreen>
  a0:	8fa40018 	lw	a0,24(sp)
  a4:	8fbf0014 	lw	ra,20(sp)
  a8:	27bd0018 	addiu	sp,sp,24
  ac:	03e00008 	jr	ra
  b0:	00000000 	nop

000000b4 <Opening_Destroy>:
  b4:	03e00008 	jr	ra
  b8:	afa40000 	sw	a0,0(sp)

000000bc <Opening_Init>:
  bc:	3c0f0000 	lui	t7,0x0
  c0:	8def0000 	lw	t7,0(t7)
  c4:	27bdffe8 	addiu	sp,sp,-24
  c8:	afbf0014 	sw	ra,20(sp)
  cc:	240e0001 	li	t6,1
  d0:	a5ee0110 	sh	t6,272(t7)
  d4:	0c000000 	jal	0 <Opening_SetupTitleScreen>
  d8:	afa40018 	sw	a0,24(sp)
  dc:	8fa60018 	lw	a2,24(sp)
  e0:	24c400a8 	addiu	a0,a2,168
  e4:	0c000000 	jal	0 <Opening_SetupTitleScreen>
  e8:	8cc50000 	lw	a1,0(a2)
  ec:	8fa60018 	lw	a2,24(sp)
  f0:	3c180000 	lui	t8,0x0
  f4:	3c190000 	lui	t9,0x0
  f8:	27180000 	addiu	t8,t8,0
  fc:	27390000 	addiu	t9,t9,0
 100:	acd80004 	sw	t8,4(a2)
 104:	acd90008 	sw	t9,8(a2)
 108:	8fbf0014 	lw	ra,20(sp)
 10c:	27bd0018 	addiu	sp,sp,24
 110:	03e00008 	jr	ra
 114:	00000000 	nop
	...
