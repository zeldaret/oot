
build/src/libultra_boot_O2/osViSetXScale.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osViSetXScale>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	0c000000 	jal	0 <osViSetXScale>
   c:	e7ac0018 	swc1	$f12,24(sp)
  10:	3c060000 	lui	a2,0x0
  14:	24c60000 	addiu	a2,a2,0
  18:	8cce0000 	lw	t6,0(a2)
  1c:	c7a40018 	lwc1	$f4,24(sp)
  20:	3c014f80 	lui	at,0x4f80
  24:	00402025 	move	a0,v0
  28:	e5c40018 	swc1	$f4,24(t6)
  2c:	8cc30000 	lw	v1,0(a2)
  30:	946f0000 	lhu	t7,0(v1)
  34:	35f80002 	ori	t8,t7,0x2
  38:	a4780000 	sh	t8,0(v1)
  3c:	8cc30000 	lw	v1,0(a2)
  40:	8c790008 	lw	t9,8(v1)
  44:	c4660018 	lwc1	$f6,24(v1)
  48:	8f250020 	lw	a1,32(t9)
  4c:	30a80fff 	andi	t0,a1,0xfff
  50:	44884000 	mtc1	t0,$f8
  54:	05010004 	bgez	t0,68 <osViSetXScale+0x68>
  58:	468042a0 	cvt.s.w	$f10,$f8
  5c:	44818000 	mtc1	at,$f16
  60:	00000000 	nop
  64:	46105280 	add.s	$f10,$f10,$f16
  68:	460a3482 	mul.s	$f18,$f6,$f10
  6c:	240a0001 	li	t2,1
  70:	3c014f00 	lui	at,0x4f00
  74:	4449f800 	cfc1	t1,$31
  78:	44caf800 	ctc1	t2,$31
  7c:	00000000 	nop
  80:	46009124 	cvt.w.s	$f4,$f18
  84:	444af800 	cfc1	t2,$31
  88:	00000000 	nop
  8c:	314a0078 	andi	t2,t2,0x78
  90:	51400013 	beqzl	t2,e0 <osViSetXScale+0xe0>
  94:	440a2000 	mfc1	t2,$f4
  98:	44812000 	mtc1	at,$f4
  9c:	240a0001 	li	t2,1
  a0:	46049101 	sub.s	$f4,$f18,$f4
  a4:	44caf800 	ctc1	t2,$31
  a8:	00000000 	nop
  ac:	46002124 	cvt.w.s	$f4,$f4
  b0:	444af800 	cfc1	t2,$31
  b4:	00000000 	nop
  b8:	314a0078 	andi	t2,t2,0x78
  bc:	15400005 	bnez	t2,d4 <osViSetXScale+0xd4>
  c0:	00000000 	nop
  c4:	440a2000 	mfc1	t2,$f4
  c8:	3c018000 	lui	at,0x8000
  cc:	10000007 	b	ec <osViSetXScale+0xec>
  d0:	01415025 	or	t2,t2,at
  d4:	10000005 	b	ec <osViSetXScale+0xec>
  d8:	240affff 	li	t2,-1
  dc:	440a2000 	mfc1	t2,$f4
  e0:	00000000 	nop
  e4:	0540fffb 	bltz	t2,d4 <osViSetXScale+0xd4>
  e8:	00000000 	nop
  ec:	44c9f800 	ctc1	t1,$31
  f0:	314b0fff 	andi	t3,t2,0xfff
  f4:	0c000000 	jal	0 <osViSetXScale>
  f8:	ac6b0020 	sw	t3,32(v1)
  fc:	8fbf0014 	lw	ra,20(sp)
 100:	27bd0018 	addiu	sp,sp,24
 104:	03e00008 	jr	ra
 108:	00000000 	nop
 10c:	00000000 	nop
