
build/src/code/code_801068B0.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_801068B0>:
   0:	27bdfff0 	addiu	sp,sp,-16
   4:	afa4000c 	sw	a0,12(sp)
   8:	afa50008 	sw	a1,8(sp)
   c:	8fae000c 	lw	t6,12(sp)
  10:	8faf0008 	lw	t7,8(sp)
  14:	15cf0003 	bne	t6,t7,24 <func_801068B0+0x24>
  18:	00000000 	nop
  1c:	10000034 	b	f0 <func_801068B0+0xf0>
  20:	00801025 	move	v0,a0
  24:	8fb8000c 	lw	t8,12(sp)
  28:	8fb90008 	lw	t9,8(sp)
  2c:	0319082b 	sltu	at,t8,t9
  30:	10200013 	beqz	at,80 <func_801068B0+0x80>
  34:	00000000 	nop
  38:	00c03825 	move	a3,a2
  3c:	10e0000e 	beqz	a3,78 <func_801068B0+0x78>
  40:	24c6ffff 	addiu	a2,a2,-1
  44:	8fa80008 	lw	t0,8(sp)
  48:	8faa000c 	lw	t2,12(sp)
  4c:	91090000 	lbu	t1,0(t0)
  50:	a1490000 	sb	t1,0(t2)
  54:	8fad0008 	lw	t5,8(sp)
  58:	8fab000c 	lw	t3,12(sp)
  5c:	25ae0001 	addiu	t6,t5,1
  60:	256c0001 	addiu	t4,t3,1
  64:	afac000c 	sw	t4,12(sp)
  68:	afae0008 	sw	t6,8(sp)
  6c:	00c03825 	move	a3,a2
  70:	14e0fff4 	bnez	a3,44 <func_801068B0+0x44>
  74:	24c6ffff 	addiu	a2,a2,-1
  78:	10000019 	b	e0 <func_801068B0+0xe0>
  7c:	00000000 	nop
  80:	8faf000c 	lw	t7,12(sp)
  84:	01e6c021 	addu	t8,t7,a2
  88:	2719ffff 	addiu	t9,t8,-1
  8c:	afb9000c 	sw	t9,12(sp)
  90:	8fa80008 	lw	t0,8(sp)
  94:	01064821 	addu	t1,t0,a2
  98:	252affff 	addiu	t2,t1,-1
  9c:	afaa0008 	sw	t2,8(sp)
  a0:	00c03825 	move	a3,a2
  a4:	10e0000e 	beqz	a3,e0 <func_801068B0+0xe0>
  a8:	24c6ffff 	addiu	a2,a2,-1
  ac:	8fab0008 	lw	t3,8(sp)
  b0:	8fad000c 	lw	t5,12(sp)
  b4:	916c0000 	lbu	t4,0(t3)
  b8:	a1ac0000 	sb	t4,0(t5)
  bc:	8fb80008 	lw	t8,8(sp)
  c0:	8fae000c 	lw	t6,12(sp)
  c4:	2719ffff 	addiu	t9,t8,-1
  c8:	25cfffff 	addiu	t7,t6,-1
  cc:	afaf000c 	sw	t7,12(sp)
  d0:	afb90008 	sw	t9,8(sp)
  d4:	00c03825 	move	a3,a2
  d8:	14e0fff4 	bnez	a3,ac <func_801068B0+0xac>
  dc:	24c6ffff 	addiu	a2,a2,-1
  e0:	10000003 	b	f0 <func_801068B0+0xf0>
  e4:	00801025 	move	v0,a0
  e8:	10000001 	b	f0 <func_801068B0+0xf0>
  ec:	00000000 	nop
  f0:	03e00008 	jr	ra
  f4:	27bd0010 	addiu	sp,sp,16
	...
