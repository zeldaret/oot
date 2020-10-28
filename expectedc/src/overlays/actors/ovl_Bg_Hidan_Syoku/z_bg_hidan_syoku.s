
build/src/overlays/actors/ovl_Bg_Hidan_Syoku/z_bg_hidan_syoku.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHidanSyoku_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afa50034 	sw	a1,52(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00024 	sw	zero,36(sp)
  1c:	0c000000 	jal	0 <BgHidanSyoku_Init>
  20:	24a50020 	addiu	a1,a1,32
  24:	02002025 	move	a0,s0
  28:	0c000000 	jal	0 <BgHidanSyoku_Init>
  2c:	24050001 	li	a1,1
  30:	3c040000 	lui	a0,0x0
  34:	24840000 	addiu	a0,a0,0
  38:	0c000000 	jal	0 <BgHidanSyoku_Init>
  3c:	27a50024 	addiu	a1,sp,36
  40:	8fa40034 	lw	a0,52(sp)
  44:	02003025 	move	a2,s0
  48:	8fa70024 	lw	a3,36(sp)
  4c:	0c000000 	jal	0 <BgHidanSyoku_Init>
  50:	24850810 	addiu	a1,a0,2064
  54:	3c014407 	lui	at,0x4407
  58:	44813000 	mtc1	at,$f6
  5c:	c604000c 	lwc1	$f4,12(s0)
  60:	3c0e0000 	lui	t6,0x0
  64:	25ce0000 	addiu	t6,t6,0
  68:	46062200 	add.s	$f8,$f4,$f6
  6c:	ae02014c 	sw	v0,332(s0)
  70:	ae0e0164 	sw	t6,356(s0)
  74:	e608000c 	swc1	$f8,12(s0)
  78:	8fbf001c 	lw	ra,28(sp)
  7c:	8fb00018 	lw	s0,24(sp)
  80:	27bd0030 	addiu	sp,sp,48
  84:	03e00008 	jr	ra
  88:	00000000 	nop

0000008c <BgHidanSyoku_Destroy>:
  8c:	27bdffe8 	addiu	sp,sp,-24
  90:	afa40018 	sw	a0,24(sp)
  94:	8fae0018 	lw	t6,24(sp)
  98:	afbf0014 	sw	ra,20(sp)
  9c:	00a02025 	move	a0,a1
  a0:	24a50810 	addiu	a1,a1,2064
  a4:	0c000000 	jal	0 <BgHidanSyoku_Init>
  a8:	8dc6014c 	lw	a2,332(t6)
  ac:	8fbf0014 	lw	ra,20(sp)
  b0:	27bd0018 	addiu	sp,sp,24
  b4:	03e00008 	jr	ra
  b8:	00000000 	nop

000000bc <func_8088F47C>:
  bc:	27bdffe8 	addiu	sp,sp,-24
  c0:	afbf0014 	sw	ra,20(sp)
  c4:	240e003c 	li	t6,60
  c8:	a48e016a 	sh	t6,362(a0)
  cc:	afa40018 	sw	a0,24(sp)
  d0:	0c000000 	jal	0 <BgHidanSyoku_Init>
  d4:	24052835 	li	a1,10293
  d8:	8fa40018 	lw	a0,24(sp)
  dc:	3c0f0000 	lui	t7,0x0
  e0:	25ef0000 	addiu	t7,t7,0
  e4:	ac8f0164 	sw	t7,356(a0)
  e8:	8fbf0014 	lw	ra,20(sp)
  ec:	27bd0018 	addiu	sp,sp,24
  f0:	03e00008 	jr	ra
  f4:	00000000 	nop

000000f8 <func_8088F4B8>:
  f8:	27bdffe8 	addiu	sp,sp,-24
  fc:	afa40018 	sw	a0,24(sp)
 100:	8fae0018 	lw	t6,24(sp)
 104:	afbf0014 	sw	ra,20(sp)
 108:	00a02025 	move	a0,a1
 10c:	0c000000 	jal	0 <BgHidanSyoku_Init>
 110:	81c50003 	lb	a1,3(t6)
 114:	5040000c 	beqzl	v0,148 <func_8088F4B8+0x50>
 118:	8fbf0014 	lw	ra,20(sp)
 11c:	0c000000 	jal	0 <BgHidanSyoku_Init>
 120:	8fa40018 	lw	a0,24(sp)
 124:	10400007 	beqz	v0,144 <func_8088F4B8+0x4c>
 128:	8fb80018 	lw	t8,24(sp)
 12c:	240f008c 	li	t7,140
 130:	a70f016a 	sh	t7,362(t8)
 134:	8fa80018 	lw	t0,24(sp)
 138:	3c190000 	lui	t9,0x0
 13c:	27390000 	addiu	t9,t9,0
 140:	ad190164 	sw	t9,356(t0)
 144:	8fbf0014 	lw	ra,20(sp)
 148:	27bd0018 	addiu	sp,sp,24
 14c:	03e00008 	jr	ra
 150:	00000000 	nop

00000154 <func_8088F514>:
 154:	27bdffe8 	addiu	sp,sp,-24
 158:	afbf0014 	sw	ra,20(sp)
 15c:	afa5001c 	sw	a1,28(sp)
 160:	8482016a 	lh	v0,362(a0)
 164:	10400003 	beqz	v0,174 <func_8088F514+0x20>
 168:	244effff 	addiu	t6,v0,-1
 16c:	a48e016a 	sh	t6,362(a0)
 170:	8482016a 	lh	v0,362(a0)
 174:	44822000 	mtc1	v0,$f4
 178:	3c010000 	lui	at,0x0
 17c:	c4280000 	lwc1	$f8,0(at)
 180:	468021a0 	cvt.s.w	$f6,$f4
 184:	afa40018 	sw	a0,24(sp)
 188:	46083302 	mul.s	$f12,$f6,$f8
 18c:	0c000000 	jal	0 <BgHidanSyoku_Init>
 190:	00000000 	nop
 194:	3c014407 	lui	at,0x4407
 198:	44815000 	mtc1	at,$f10
 19c:	8fa40018 	lw	a0,24(sp)
 1a0:	460a0402 	mul.s	$f16,$f0,$f10
 1a4:	c492000c 	lwc1	$f18,12(a0)
 1a8:	848f016a 	lh	t7,362(a0)
 1ac:	46128100 	add.s	$f4,$f16,$f18
 1b0:	15e00005 	bnez	t7,1c8 <func_8088F514+0x74>
 1b4:	e4840028 	swc1	$f4,40(a0)
 1b8:	0c000000 	jal	0 <BgHidanSyoku_Init>
 1bc:	00000000 	nop
 1c0:	10000004 	b	1d4 <func_8088F514+0x80>
 1c4:	8fbf0014 	lw	ra,20(sp)
 1c8:	0c000000 	jal	0 <BgHidanSyoku_Init>
 1cc:	240520b9 	li	a1,8377
 1d0:	8fbf0014 	lw	ra,20(sp)
 1d4:	27bd0018 	addiu	sp,sp,24
 1d8:	03e00008 	jr	ra
 1dc:	00000000 	nop

000001e0 <func_8088F5A0>:
 1e0:	27bdffe8 	addiu	sp,sp,-24
 1e4:	afbf0014 	sw	ra,20(sp)
 1e8:	afa5001c 	sw	a1,28(sp)
 1ec:	8482016a 	lh	v0,362(a0)
 1f0:	10400003 	beqz	v0,200 <func_8088F5A0+0x20>
 1f4:	244effff 	addiu	t6,v0,-1
 1f8:	a48e016a 	sh	t6,362(a0)
 1fc:	8482016a 	lh	v0,362(a0)
 200:	44822000 	mtc1	v0,$f4
 204:	3c010000 	lui	at,0x0
 208:	c4280004 	lwc1	$f8,4(at)
 20c:	468021a0 	cvt.s.w	$f6,$f4
 210:	afa40018 	sw	a0,24(sp)
 214:	46083302 	mul.s	$f12,$f6,$f8
 218:	0c000000 	jal	0 <BgHidanSyoku_Init>
 21c:	00000000 	nop
 220:	3c014407 	lui	at,0x4407
 224:	44818000 	mtc1	at,$f16
 228:	8fa40018 	lw	a0,24(sp)
 22c:	46100482 	mul.s	$f18,$f0,$f16
 230:	c48a000c 	lwc1	$f10,12(a0)
 234:	848f016a 	lh	t7,362(a0)
 238:	46125101 	sub.s	$f4,$f10,$f18
 23c:	15e00005 	bnez	t7,254 <func_8088F5A0+0x74>
 240:	e4840028 	swc1	$f4,40(a0)
 244:	0c000000 	jal	0 <BgHidanSyoku_Init>
 248:	00000000 	nop
 24c:	10000004 	b	260 <func_8088F5A0+0x80>
 250:	8fbf0014 	lw	ra,20(sp)
 254:	0c000000 	jal	0 <BgHidanSyoku_Init>
 258:	240520b9 	li	a1,8377
 25c:	8fbf0014 	lw	ra,20(sp)
 260:	27bd0018 	addiu	sp,sp,24
 264:	03e00008 	jr	ra
 268:	00000000 	nop

0000026c <func_8088F62C>:
 26c:	afa50004 	sw	a1,4(sp)
 270:	8482016a 	lh	v0,362(a0)
 274:	10400003 	beqz	v0,284 <func_8088F62C+0x18>
 278:	244effff 	addiu	t6,v0,-1
 27c:	a48e016a 	sh	t6,362(a0)
 280:	8482016a 	lh	v0,362(a0)
 284:	1440000e 	bnez	v0,2c0 <func_8088F62C+0x54>
 288:	00000000 	nop
 28c:	c4840028 	lwc1	$f4,40(a0)
 290:	c486000c 	lwc1	$f6,12(a0)
 294:	240f008c 	li	t7,140
 298:	3c180000 	lui	t8,0x0
 29c:	4606203c 	c.lt.s	$f4,$f6
 2a0:	3c190000 	lui	t9,0x0
 2a4:	a48f016a 	sh	t7,362(a0)
 2a8:	27180000 	addiu	t8,t8,0
 2ac:	45000003 	bc1f	2bc <func_8088F62C+0x50>
 2b0:	27390000 	addiu	t9,t9,0
 2b4:	03e00008 	jr	ra
 2b8:	ac980164 	sw	t8,356(a0)
 2bc:	ac990164 	sw	t9,356(a0)
 2c0:	03e00008 	jr	ra
 2c4:	00000000 	nop

000002c8 <BgHidanSyoku_Update>:
 2c8:	27bdffe0 	addiu	sp,sp,-32
 2cc:	afb00018 	sw	s0,24(sp)
 2d0:	00808025 	move	s0,a0
 2d4:	afbf001c 	sw	ra,28(sp)
 2d8:	afa50024 	sw	a1,36(sp)
 2dc:	8e190164 	lw	t9,356(s0)
 2e0:	0320f809 	jalr	t9
 2e4:	00000000 	nop
 2e8:	0c000000 	jal	0 <BgHidanSyoku_Init>
 2ec:	02002025 	move	a0,s0
 2f0:	1040000c 	beqz	v0,324 <BgHidanSyoku_Update+0x5c>
 2f4:	00000000 	nop
 2f8:	860e0168 	lh	t6,360(s0)
 2fc:	240f0003 	li	t7,3
 300:	55c00003 	bnezl	t6,310 <BgHidanSyoku_Update+0x48>
 304:	8fb80024 	lw	t8,36(sp)
 308:	a60f0168 	sh	t7,360(s0)
 30c:	8fb80024 	lw	t8,36(sp)
 310:	24050030 	li	a1,48
 314:	0c000000 	jal	0 <BgHidanSyoku_Init>
 318:	8f040790 	lw	a0,1936(t8)
 31c:	1000000e 	b	358 <BgHidanSyoku_Update+0x90>
 320:	8fbf001c 	lw	ra,28(sp)
 324:	0c000000 	jal	0 <BgHidanSyoku_Init>
 328:	02002025 	move	a0,s0
 32c:	5440000a 	bnezl	v0,358 <BgHidanSyoku_Update+0x90>
 330:	8fbf001c 	lw	ra,28(sp)
 334:	86080168 	lh	t0,360(s0)
 338:	8fa90024 	lw	t1,36(sp)
 33c:	24050003 	li	a1,3
 340:	51000004 	beqzl	t0,354 <BgHidanSyoku_Update+0x8c>
 344:	a6000168 	sh	zero,360(s0)
 348:	0c000000 	jal	0 <BgHidanSyoku_Init>
 34c:	8d240790 	lw	a0,1936(t1)
 350:	a6000168 	sh	zero,360(s0)
 354:	8fbf001c 	lw	ra,28(sp)
 358:	8fb00018 	lw	s0,24(sp)
 35c:	27bd0020 	addiu	sp,sp,32
 360:	03e00008 	jr	ra
 364:	00000000 	nop

00000368 <BgHidanSyoku_Draw>:
 368:	27bdffe8 	addiu	sp,sp,-24
 36c:	afa40018 	sw	a0,24(sp)
 370:	00a02025 	move	a0,a1
 374:	afbf0014 	sw	ra,20(sp)
 378:	3c050000 	lui	a1,0x0
 37c:	0c000000 	jal	0 <BgHidanSyoku_Init>
 380:	24a50000 	addiu	a1,a1,0
 384:	8fbf0014 	lw	ra,20(sp)
 388:	27bd0018 	addiu	sp,sp,24
 38c:	03e00008 	jr	ra
 390:	00000000 	nop
	...
