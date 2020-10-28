
build/src/code/code_80043480.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <DynaPolyInfo_SetActorMove>:
   0:	44800000 	mtc1	zero,$f0
   4:	240effff 	li	t6,-1
   8:	ac8e014c 	sw	t6,332(a0)
   c:	ac85015c 	sw	a1,348(a0)
  10:	a0800160 	sb	zero,352(a0)
  14:	e4800150 	swc1	$f0,336(a0)
  18:	03e00008 	jr	ra
  1c:	e4800154 	swc1	$f0,340(a0)

00000020 <func_800434A0>:
  20:	03e00008 	jr	ra
  24:	a0800160 	sb	zero,352(a0)

00000028 <func_800434A8>:
  28:	908e0160 	lbu	t6,352(a0)
  2c:	35cf0001 	ori	t7,t6,0x1
  30:	03e00008 	jr	ra
  34:	a08f0160 	sb	t7,352(a0)

00000038 <func_800434B8>:
  38:	908e0160 	lbu	t6,352(a0)
  3c:	35cf0002 	ori	t7,t6,0x2
  40:	03e00008 	jr	ra
  44:	a08f0160 	sb	t7,352(a0)

00000048 <func_800434C8>:
  48:	27bdffe8 	addiu	sp,sp,-24
  4c:	afbf0014 	sw	ra,20(sp)
  50:	0c000000 	jal	0 <DynaPolyInfo_SetActorMove>
  54:	00000000 	nop
  58:	10400003 	beqz	v0,68 <func_800434C8+0x20>
  5c:	00402025 	move	a0,v0
  60:	0c000000 	jal	0 <DynaPolyInfo_SetActorMove>
  64:	00000000 	nop
  68:	8fbf0014 	lw	ra,20(sp)
  6c:	27bd0018 	addiu	sp,sp,24
  70:	03e00008 	jr	ra
  74:	00000000 	nop

00000078 <func_800434F8>:
  78:	908e0160 	lbu	t6,352(a0)
  7c:	35cf0004 	ori	t7,t6,0x4
  80:	03e00008 	jr	ra
  84:	a08f0160 	sb	t7,352(a0)

00000088 <func_80043508>:
  88:	27bdffe8 	addiu	sp,sp,-24
  8c:	afbf0014 	sw	ra,20(sp)
  90:	0c000000 	jal	0 <DynaPolyInfo_SetActorMove>
  94:	00000000 	nop
  98:	10400003 	beqz	v0,a8 <func_80043508+0x20>
  9c:	00402025 	move	a0,v0
  a0:	0c000000 	jal	0 <DynaPolyInfo_SetActorMove>
  a4:	00000000 	nop
  a8:	8fbf0014 	lw	ra,20(sp)
  ac:	27bd0018 	addiu	sp,sp,24
  b0:	03e00008 	jr	ra
  b4:	00000000 	nop

000000b8 <func_80043538>:
  b8:	908e0160 	lbu	t6,352(a0)
  bc:	35cf0008 	ori	t7,t6,0x8
  c0:	03e00008 	jr	ra
  c4:	a08f0160 	sb	t7,352(a0)

000000c8 <func_80043548>:
  c8:	908e0160 	lbu	t6,352(a0)
  cc:	00001025 	move	v0,zero
  d0:	31cf0001 	andi	t7,t6,0x1
  d4:	11e00003 	beqz	t7,e4 <func_80043548+0x1c>
  d8:	00000000 	nop
  dc:	03e00008 	jr	ra
  e0:	24020001 	li	v0,1
  e4:	03e00008 	jr	ra
  e8:	00000000 	nop

000000ec <func_8004356C>:
  ec:	908e0160 	lbu	t6,352(a0)
  f0:	00001025 	move	v0,zero
  f4:	31cf0002 	andi	t7,t6,0x2
  f8:	11e00003 	beqz	t7,108 <func_8004356C+0x1c>
  fc:	00000000 	nop
 100:	03e00008 	jr	ra
 104:	24020001 	li	v0,1
 108:	03e00008 	jr	ra
 10c:	00000000 	nop

00000110 <func_80043590>:
 110:	908e0160 	lbu	t6,352(a0)
 114:	00001025 	move	v0,zero
 118:	31cf0004 	andi	t7,t6,0x4
 11c:	11e00003 	beqz	t7,12c <func_80043590+0x1c>
 120:	00000000 	nop
 124:	03e00008 	jr	ra
 128:	24020001 	li	v0,1
 12c:	03e00008 	jr	ra
 130:	00000000 	nop

00000134 <func_800435B4>:
 134:	908e0160 	lbu	t6,352(a0)
 138:	00001025 	move	v0,zero
 13c:	31cf0008 	andi	t7,t6,0x8
 140:	11e00003 	beqz	t7,150 <func_800435B4+0x1c>
 144:	00000000 	nop
 148:	03e00008 	jr	ra
 14c:	24020001 	li	v0,1
 150:	03e00008 	jr	ra
 154:	00000000 	nop

00000158 <func_800435D8>:
 158:	27bdff70 	addiu	sp,sp,-144
 15c:	afbf003c 	sw	ra,60(sp)
 160:	afb00038 	sw	s0,56(sp)
 164:	afa40090 	sw	a0,144(sp)
 168:	afa60098 	sw	a2,152(sp)
 16c:	afa7009c 	sw	a3,156(sp)
 170:	00a08025 	move	s0,a1
 174:	0c000000 	jal	0 <DynaPolyInfo_SetActorMove>
 178:	84a40158 	lh	a0,344(a1)
 17c:	86040158 	lh	a0,344(s0)
 180:	0c000000 	jal	0 <DynaPolyInfo_SetActorMove>
 184:	e7a00068 	swc1	$f0,104(sp)
 188:	c6040150 	lwc1	$f4,336(s0)
 18c:	44803000 	mtc1	zero,$f6
 190:	87ae009a 	lh	t6,154(sp)
 194:	c7ac0068 	lwc1	$f12,104(sp)
 198:	4604303e 	c.le.s	$f6,$f4
 19c:	448e4000 	mtc1	t6,$f8
 1a0:	46000386 	mov.s	$f14,$f0
 1a4:	3c01bf80 	lui	at,0xbf80
 1a8:	45000005 	bc1f	1c0 <func_800435D8+0x68>
 1ac:	468042a0 	cvt.s.w	$f10,$f8
 1b0:	3c013f80 	lui	at,0x3f80
 1b4:	44818000 	mtc1	at,$f16
 1b8:	10000003 	b	1c8 <func_800435D8+0x70>
 1bc:	00000000 	nop
 1c0:	44818000 	mtc1	at,$f16
 1c4:	00000000 	nop
 1c8:	3c010000 	lui	at,0x0
 1cc:	c4240000 	lwc1	$f4,0(at)
 1d0:	c6060024 	lwc1	$f6,36(s0)
 1d4:	87af00a2 	lh	t7,162(sp)
 1d8:	46045001 	sub.s	$f0,$f10,$f4
 1dc:	87b8009e 	lh	t8,158(sp)
 1e0:	3c010000 	lui	at,0x0
 1e4:	8fa40090 	lw	a0,144(sp)
 1e8:	460e0202 	mul.s	$f8,$f0,$f14
 1ec:	27b9005c 	addiu	t9,sp,92
 1f0:	24080001 	li	t0,1
 1f4:	24090001 	li	t1,1
 1f8:	27aa0060 	addiu	t2,sp,96
 1fc:	248407c0 	addiu	a0,a0,1984
 200:	27a50084 	addiu	a1,sp,132
 204:	46083280 	add.s	$f10,$f6,$f8
 208:	448f3000 	mtc1	t7,$f6
 20c:	27a60078 	addiu	a2,sp,120
 210:	27a7006c 	addiu	a3,sp,108
 214:	46803220 	cvt.s.w	$f8,$f6
 218:	e7aa0084 	swc1	$f10,132(sp)
 21c:	c6040028 	lwc1	$f4,40(s0)
 220:	46082280 	add.s	$f10,$f4,$f8
 224:	460c0102 	mul.s	$f4,$f0,$f12
 228:	e7aa0088 	swc1	$f10,136(sp)
 22c:	c606002c 	lwc1	$f6,44(s0)
 230:	44985000 	mtc1	t8,$f10
 234:	afa40044 	sw	a0,68(sp)
 238:	46043201 	sub.s	$f8,$f6,$f4
 23c:	c4240000 	lwc1	$f4,0(at)
 240:	afb00028 	sw	s0,40(sp)
 244:	468051a0 	cvt.s.w	$f6,$f10
 248:	e7a8008c 	swc1	$f8,140(sp)
 24c:	c7aa0084 	lwc1	$f10,132(sp)
 250:	afaa0024 	sw	t2,36(sp)
 254:	afa90020 	sw	t1,32(sp)
 258:	afa0001c 	sw	zero,28(sp)
 25c:	46043201 	sub.s	$f8,$f6,$f4
 260:	c7a40088 	lwc1	$f4,136(sp)
 264:	afa00018 	sw	zero,24(sp)
 268:	afa80014 	sw	t0,20(sp)
 26c:	46088082 	mul.s	$f2,$f16,$f8
 270:	e7a4007c 	swc1	$f4,124(sp)
 274:	afb90010 	sw	t9,16(sp)
 278:	460c1482 	mul.s	$f18,$f2,$f12
 27c:	460a9180 	add.s	$f6,$f18,$f10
 280:	460e1202 	mul.s	$f8,$f2,$f14
 284:	e7b2004c 	swc1	$f18,76(sp)
 288:	e7a60078 	swc1	$f6,120(sp)
 28c:	c7a6008c 	lwc1	$f6,140(sp)
 290:	e7a80048 	swc1	$f8,72(sp)
 294:	c7aa0048 	lwc1	$f10,72(sp)
 298:	44804000 	mtc1	zero,$f8
 29c:	46065100 	add.s	$f4,$f10,$f6
 2a0:	e7a8002c 	swc1	$f8,44(sp)
 2a4:	0c000000 	jal	0 <DynaPolyInfo_SetActorMove>
 2a8:	e7a40080 	swc1	$f4,128(sp)
 2ac:	8fa40044 	lw	a0,68(sp)
 2b0:	10400003 	beqz	v0,2c0 <func_800435D8+0x168>
 2b4:	c7b2004c 	lwc1	$f18,76(sp)
 2b8:	10000028 	b	35c <func_800435D8+0x204>
 2bc:	00001025 	move	v0,zero
 2c0:	3c014000 	lui	at,0x4000
 2c4:	44810000 	mtc1	at,$f0
 2c8:	c60a0024 	lwc1	$f10,36(s0)
 2cc:	c7a40084 	lwc1	$f4,132(sp)
 2d0:	27ab005c 	addiu	t3,sp,92
 2d4:	46005182 	mul.s	$f6,$f10,$f0
 2d8:	240c0001 	li	t4,1
 2dc:	240d0001 	li	t5,1
 2e0:	27ae0060 	addiu	t6,sp,96
 2e4:	27a50084 	addiu	a1,sp,132
 2e8:	27a60078 	addiu	a2,sp,120
 2ec:	27a7006c 	addiu	a3,sp,108
 2f0:	46043201 	sub.s	$f8,$f6,$f4
 2f4:	c7a4008c 	lwc1	$f4,140(sp)
 2f8:	e7a80084 	swc1	$f8,132(sp)
 2fc:	c60a002c 	lwc1	$f10,44(s0)
 300:	afb00028 	sw	s0,40(sp)
 304:	afae0024 	sw	t6,36(sp)
 308:	46005182 	mul.s	$f6,$f10,$f0
 30c:	afad0020 	sw	t5,32(sp)
 310:	afa0001c 	sw	zero,28(sp)
 314:	afa00018 	sw	zero,24(sp)
 318:	afac0014 	sw	t4,20(sp)
 31c:	afab0010 	sw	t3,16(sp)
 320:	46043281 	sub.s	$f10,$f6,$f4
 324:	c7a40048 	lwc1	$f4,72(sp)
 328:	46089180 	add.s	$f6,$f18,$f8
 32c:	e7aa008c 	swc1	$f10,140(sp)
 330:	460a2200 	add.s	$f8,$f4,$f10
 334:	e7a60078 	swc1	$f6,120(sp)
 338:	44803000 	mtc1	zero,$f6
 33c:	e7a80080 	swc1	$f8,128(sp)
 340:	0c000000 	jal	0 <DynaPolyInfo_SetActorMove>
 344:	e7a6002c 	swc1	$f6,44(sp)
 348:	50400004 	beqzl	v0,35c <func_800435D8+0x204>
 34c:	24020001 	li	v0,1
 350:	10000002 	b	35c <func_800435D8+0x204>
 354:	00001025 	move	v0,zero
 358:	24020001 	li	v0,1
 35c:	8fbf003c 	lw	ra,60(sp)
 360:	8fb00038 	lw	s0,56(sp)
 364:	27bd0090 	addiu	sp,sp,144
 368:	03e00008 	jr	ra
 36c:	00000000 	nop
