
build/src/overlays/actors/ovl_En_Arow_Trap/z_en_arow_trap.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnArowTrap_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa5001c 	sw	a1,28(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	3c053c23 	lui	a1,0x3c23
  10:	34a5d70a 	ori	a1,a1,0xd70a
  14:	0c000000 	jal	0 <EnArowTrap_Init>
  18:	afa40018 	sw	a0,24(sp)
  1c:	8fa40018 	lw	a0,24(sp)
  20:	240e0050 	li	t6,80
  24:	8c980024 	lw	t8,36(a0)
  28:	8c8f0028 	lw	t7,40(a0)
  2c:	ac80014c 	sw	zero,332(a0)
  30:	ac980038 	sw	t8,56(a0)
  34:	8c98002c 	lw	t8,44(a0)
  38:	ac8e0150 	sw	t6,336(a0)
  3c:	ac8f003c 	sw	t7,60(a0)
  40:	ac980040 	sw	t8,64(a0)
  44:	8fbf0014 	lw	ra,20(sp)
  48:	27bd0018 	addiu	sp,sp,24
  4c:	03e00008 	jr	ra
  50:	00000000 	nop

00000054 <EnArowTrap_Destroy>:
  54:	afa40000 	sw	a0,0(sp)
  58:	03e00008 	jr	ra
  5c:	afa50004 	sw	a1,4(sp)

00000060 <EnArowTrap_Update>:
  60:	27bdffc8 	addiu	sp,sp,-56
  64:	afbf0034 	sw	ra,52(sp)
  68:	afb00030 	sw	s0,48(sp)
  6c:	3c0143c8 	lui	at,0x43c8
  70:	44812000 	mtc1	at,$f4
  74:	c4860090 	lwc1	$f6,144(a0)
  78:	00808025 	move	s0,a0
  7c:	4604303e 	c.le.s	$f6,$f4
  80:	00000000 	nop
  84:	45020018 	bc1fl	e8 <EnArowTrap_Update+0x88>
  88:	8fbf0034 	lw	ra,52(sp)
  8c:	8c8e0150 	lw	t6,336(a0)
  90:	25cfffff 	addiu	t7,t6,-1
  94:	15e00013 	bnez	t7,e4 <EnArowTrap_Update+0x84>
  98:	ac8f0150 	sw	t7,336(a0)
  9c:	c6080028 	lwc1	$f8,40(s0)
  a0:	8e070024 	lw	a3,36(s0)
  a4:	240affff 	li	t2,-1
  a8:	e7a80010 	swc1	$f8,16(sp)
  ac:	c60a002c 	lwc1	$f10,44(s0)
  b0:	24a41c24 	addiu	a0,a1,7204
  b4:	24060016 	li	a2,22
  b8:	e7aa0014 	swc1	$f10,20(sp)
  bc:	861900b4 	lh	t9,180(s0)
  c0:	afb90018 	sw	t9,24(sp)
  c4:	860800b6 	lh	t0,182(s0)
  c8:	afa8001c 	sw	t0,28(sp)
  cc:	860900b8 	lh	t1,184(s0)
  d0:	afaa0024 	sw	t2,36(sp)
  d4:	0c000000 	jal	0 <EnArowTrap_Init>
  d8:	afa90020 	sw	t1,32(sp)
  dc:	240b0050 	li	t3,80
  e0:	ae0b0150 	sw	t3,336(s0)
  e4:	8fbf0034 	lw	ra,52(sp)
  e8:	8fb00030 	lw	s0,48(sp)
  ec:	27bd0038 	addiu	sp,sp,56
  f0:	03e00008 	jr	ra
  f4:	00000000 	nop
	...
