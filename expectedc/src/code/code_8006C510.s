
build/src/code/code_8006C510.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8006C510>:
   0:	460c6082 	mul.s	$f2,$f12,$f12
   4:	3c014040 	lui	at,0x4040
   8:	44812000 	mtc1	at,$f4
   c:	27bdffc8 	addiu	sp,sp,-56
  10:	3c013f80 	lui	at,0x3f80
  14:	afa60040 	sw	a2,64(sp)
  18:	afa70044 	sw	a3,68(sp)
  1c:	460c1402 	mul.s	$f16,$f2,$f12
  20:	00000000 	nop
  24:	46041182 	mul.s	$f6,$f2,$f4
  28:	44812000 	mtc1	at,$f4
  2c:	46108480 	add.s	$f18,$f16,$f16
  30:	e7a60004 	swc1	$f6,4(sp)
  34:	c7a80004 	lwc1	$f8,4(sp)
  38:	46089281 	sub.s	$f10,$f18,$f8
  3c:	46045180 	add.s	$f6,$f10,$f4
  40:	c7aa0040 	lwc1	$f10,64(sp)
  44:	460a3102 	mul.s	$f4,$f6,$f10
  48:	46124181 	sub.s	$f6,$f8,$f18
  4c:	c7aa0044 	lwc1	$f10,68(sp)
  50:	460a3202 	mul.s	$f8,$f6,$f10
  54:	46021280 	add.s	$f10,$f2,$f2
  58:	46082180 	add.s	$f6,$f4,$f8
  5c:	460a8101 	sub.s	$f4,$f16,$f10
  60:	c7aa0048 	lwc1	$f10,72(sp)
  64:	460c2200 	add.s	$f8,$f4,$f12
  68:	460a4102 	mul.s	$f4,$f8,$f10
  6c:	00000000 	nop
  70:	460e2202 	mul.s	$f8,$f4,$f14
  74:	46028101 	sub.s	$f4,$f16,$f2
  78:	46083280 	add.s	$f10,$f6,$f8
  7c:	c7a6004c 	lwc1	$f6,76(sp)
  80:	27bd0038 	addiu	sp,sp,56
  84:	46062202 	mul.s	$f8,$f4,$f6
  88:	00000000 	nop
  8c:	460e4102 	mul.s	$f4,$f8,$f14
  90:	03e00008 	jr	ra
  94:	46045000 	add.s	$f0,$f10,$f4

00000098 <func_8006C5A8>:
  98:	27bdffd8 	addiu	sp,sp,-40
  9c:	afbf0024 	sw	ra,36(sp)
  a0:	f7b40018 	sdc1	$f20,24(sp)
  a4:	84ae0002 	lh	t6,2(a1)
  a8:	46006506 	mov.s	$f20,$f12
  ac:	2408000c 	li	t0,12
  b0:	448e2000 	mtc1	t6,$f4
  b4:	00000000 	nop
  b8:	468021a0 	cvt.s.w	$f6,$f4
  bc:	4606603e 	c.le.s	$f12,$f6
  c0:	00000000 	nop
  c4:	45000003 	bc1f	d4 <func_8006C5A8+0x3c>
  c8:	00000000 	nop
  cc:	10000055 	b	224 <func_8006C5A8+0x18c>
  d0:	c4a00008 	lwc1	$f0,8(a1)
  d4:	00c80019 	multu	a2,t0
  d8:	00001825 	move	v1,zero
  dc:	00007812 	mflo	t7
  e0:	00af1021 	addu	v0,a1,t7
  e4:	8458fff6 	lh	t8,-10(v0)
  e8:	44984000 	mtc1	t8,$f8
  ec:	00000000 	nop
  f0:	468042a0 	cvt.s.w	$f10,$f8
  f4:	4614503e 	c.le.s	$f10,$f20
  f8:	00000000 	nop
  fc:	45020004 	bc1fl	110 <func_8006C5A8+0x78>
 100:	00a01025 	move	v0,a1
 104:	10000047 	b	224 <func_8006C5A8+0x18c>
 108:	c440fffc 	lwc1	$f0,-4(v0)
 10c:	00a01025 	move	v0,a1
 110:	8459000e 	lh	t9,14(v0)
 114:	44999000 	mtc1	t9,$f18
 118:	00000000 	nop
 11c:	46809120 	cvt.s.w	$f4,$f18
 120:	4604a03c 	c.lt.s	$f20,$f4
 124:	00000000 	nop
 128:	4502003c 	bc1fl	21c <func_8006C5A8+0x184>
 12c:	24630001 	addiu	v1,v1,1
 130:	94460000 	lhu	a2,0(v0)
 134:	30c90001 	andi	t1,a2,0x1
 138:	11200003 	beqz	t1,148 <func_8006C5A8+0xb0>
 13c:	30ca0002 	andi	t2,a2,0x2
 140:	10000038 	b	224 <func_8006C5A8+0x18c>
 144:	c4400008 	lwc1	$f0,8(v0)
 148:	11400015 	beqz	t2,1a0 <func_8006C5A8+0x108>
 14c:	24640001 	addiu	a0,v1,1
 150:	00880019 	multu	a0,t0
 154:	844c0002 	lh	t4,2(v0)
 158:	c4420008 	lwc1	$f2,8(v0)
 15c:	448c3000 	mtc1	t4,$f6
 160:	00000000 	nop
 164:	46803420 	cvt.s.w	$f16,$f6
 168:	00005812 	mflo	t3
 16c:	00ab1821 	addu	v1,a1,t3
 170:	846d0002 	lh	t5,2(v1)
 174:	4610a201 	sub.s	$f8,$f20,$f16
 178:	448d5000 	mtc1	t5,$f10
 17c:	00000000 	nop
 180:	468054a0 	cvt.s.w	$f18,$f10
 184:	c46a0008 	lwc1	$f10,8(v1)
 188:	46109101 	sub.s	$f4,$f18,$f16
 18c:	46025481 	sub.s	$f18,$f10,$f2
 190:	46044183 	div.s	$f6,$f8,$f4
 194:	46069202 	mul.s	$f8,$f18,$f6
 198:	10000022 	b	224 <func_8006C5A8+0x18c>
 19c:	46024000 	add.s	$f0,$f8,$f2
 1a0:	00880019 	multu	a0,t0
 1a4:	844e0002 	lh	t6,2(v0)
 1a8:	84590006 	lh	t9,6(v0)
 1ac:	8c460008 	lw	a2,8(v0)
 1b0:	448e2000 	mtc1	t6,$f4
 1b4:	3c010000 	lui	at,0x0
 1b8:	c4280000 	lwc1	$f8,0(at)
 1bc:	46802420 	cvt.s.w	$f16,$f4
 1c0:	44992000 	mtc1	t9,$f4
 1c4:	00007812 	mflo	t7
 1c8:	00af1821 	addu	v1,a1,t7
 1cc:	84780002 	lh	t8,2(v1)
 1d0:	8c670008 	lw	a3,8(v1)
 1d4:	4610a181 	sub.s	$f6,$f20,$f16
 1d8:	44985000 	mtc1	t8,$f10
 1dc:	00000000 	nop
 1e0:	468054a0 	cvt.s.w	$f18,$f10
 1e4:	468022a0 	cvt.s.w	$f10,$f4
 1e8:	46109001 	sub.s	$f0,$f18,$f16
 1ec:	e7aa0010 	swc1	$f10,16(sp)
 1f0:	84690004 	lh	t1,4(v1)
 1f4:	46003303 	div.s	$f12,$f6,$f0
 1f8:	44899000 	mtc1	t1,$f18
 1fc:	00000000 	nop
 200:	468091a0 	cvt.s.w	$f6,$f18
 204:	46080382 	mul.s	$f14,$f0,$f8
 208:	0c000000 	jal	0 <func_8006C510>
 20c:	e7a60014 	swc1	$f6,20(sp)
 210:	10000005 	b	228 <func_8006C5A8+0x190>
 214:	8fbf0024 	lw	ra,36(sp)
 218:	24630001 	addiu	v1,v1,1
 21c:	1000ffbc 	b	110 <func_8006C5A8+0x78>
 220:	2442000c 	addiu	v0,v0,12
 224:	8fbf0024 	lw	ra,36(sp)
 228:	d7b40018 	ldc1	$f20,24(sp)
 22c:	27bd0028 	addiu	sp,sp,40
 230:	03e00008 	jr	ra
 234:	00000000 	nop
	...
