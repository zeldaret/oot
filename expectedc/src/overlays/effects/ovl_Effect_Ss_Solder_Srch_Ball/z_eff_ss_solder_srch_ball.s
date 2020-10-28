
build/src/overlays/effects/ovl_Effect_Ss_Solder_Srch_Ball/z_eff_ss_solder_srch_ball.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsSolderSrchBall_Init>:
   0:	afa40000 	sw	a0,0(sp)
   4:	afa50004 	sw	a1,4(sp)
   8:	8cef0000 	lw	t7,0(a3)
   c:	3c0a0000 	lui	t2,0x0
  10:	254a0000 	addiu	t2,t2,0
  14:	accf0000 	sw	t7,0(a2)
  18:	8cee0004 	lw	t6,4(a3)
  1c:	240b0064 	li	t3,100
  20:	24020001 	li	v0,1
  24:	acce0004 	sw	t6,4(a2)
  28:	8cef0008 	lw	t7,8(a3)
  2c:	accf0008 	sw	t7,8(a2)
  30:	8cf9000c 	lw	t9,12(a3)
  34:	acd9000c 	sw	t9,12(a2)
  38:	8cf80010 	lw	t8,16(a3)
  3c:	acd80010 	sw	t8,16(a2)
  40:	8cf90014 	lw	t9,20(a3)
  44:	acd90014 	sw	t9,20(a2)
  48:	8ce90018 	lw	t1,24(a3)
  4c:	acc90018 	sw	t1,24(a2)
  50:	8ce8001c 	lw	t0,28(a3)
  54:	acc8001c 	sw	t0,28(a2)
  58:	8ce90020 	lw	t1,32(a3)
  5c:	acca0024 	sw	t2,36(a2)
  60:	a4cb005c 	sh	t3,92(a2)
  64:	acc90020 	sw	t1,32(a2)
  68:	84ec0024 	lh	t4,36(a3)
  6c:	a4cc0042 	sh	t4,66(a2)
  70:	8ced0028 	lw	t5,40(a3)
  74:	03e00008 	jr	ra
  78:	accd003c 	sw	t5,60(a2)

0000007c <EffectSsSolderSrchBall_Update>:
  7c:	27bdffd0 	addiu	sp,sp,-48
  80:	afbf0014 	sw	ra,20(sp)
  84:	afa40030 	sw	a0,48(sp)
  88:	afa50034 	sw	a1,52(sp)
  8c:	8ccf003c 	lw	t7,60(a2)
  90:	8c821c44 	lw	v0,7236(a0)
  94:	00c03825 	move	a3,a2
  98:	afaf001c 	sw	t7,28(sp)
  9c:	c4c60000 	lwc1	$f6,0(a2)
  a0:	c4ca0004 	lwc1	$f10,4(a2)
  a4:	c4d20008 	lwc1	$f18,8(a2)
  a8:	c4440024 	lwc1	$f4,36(v0)
  ac:	c4480028 	lwc1	$f8,40(v0)
  b0:	c450002c 	lwc1	$f16,44(v0)
  b4:	46062081 	sub.s	$f2,$f4,$f6
  b8:	00c02825 	move	a1,a2
  bc:	3c0641f0 	lui	a2,0x41f0
  c0:	460a4301 	sub.s	$f12,$f8,$f10
  c4:	e7a20028 	swc1	$f2,40(sp)
  c8:	afa70038 	sw	a3,56(sp)
  cc:	46128381 	sub.s	$f14,$f16,$f18
  d0:	e7ac0024 	swc1	$f12,36(sp)
  d4:	248407c0 	addiu	a0,a0,1984
  d8:	0c000000 	jal	0 <EffectSsSolderSrchBall_Init>
  dc:	e7ae0020 	swc1	$f14,32(sp)
  e0:	8fa70038 	lw	a3,56(sp)
  e4:	c7a20028 	lwc1	$f2,40(sp)
  e8:	c7ac0024 	lwc1	$f12,36(sp)
  ec:	14400011 	bnez	v0,134 <EffectSsSolderSrchBall_Update+0xb8>
  f0:	c7ae0020 	lwc1	$f14,32(sp)
  f4:	46021102 	mul.s	$f4,$f2,$f2
  f8:	3c01428c 	lui	at,0x428c
  fc:	44818000 	mtc1	at,$f16
 100:	460c6182 	mul.s	$f6,$f12,$f12
 104:	24180001 	li	t8,1
 108:	8fb9001c 	lw	t9,28(sp)
 10c:	460e7282 	mul.s	$f10,$f14,$f14
 110:	46062200 	add.s	$f8,$f4,$f6
 114:	460a4000 	add.s	$f0,$f8,$f10
 118:	46000004 	sqrt.s	$f0,$f0
 11c:	4610003c 	c.lt.s	$f0,$f16
 120:	00000000 	nop
 124:	4502000a 	bc1fl	150 <EffectSsSolderSrchBall_Update+0xd4>
 128:	8fbf0014 	lw	ra,20(sp)
 12c:	10000007 	b	14c <EffectSsSolderSrchBall_Update+0xd0>
 130:	a7380000 	sh	t8,0(t9)
 134:	84e8005c 	lh	t0,92(a3)
 138:	24090001 	li	t1,1
 13c:	29010002 	slti	at,t0,2
 140:	54200003 	bnezl	at,150 <EffectSsSolderSrchBall_Update+0xd4>
 144:	8fbf0014 	lw	ra,20(sp)
 148:	a4e9005c 	sh	t1,92(a3)
 14c:	8fbf0014 	lw	ra,20(sp)
 150:	27bd0030 	addiu	sp,sp,48
 154:	03e00008 	jr	ra
 158:	00000000 	nop
 15c:	00000000 	nop
