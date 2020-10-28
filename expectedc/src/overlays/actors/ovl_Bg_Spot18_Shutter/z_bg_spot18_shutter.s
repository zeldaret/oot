
build/src/overlays/actors/ovl_Bg_Spot18_Shutter/z_bg_spot18_shutter.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgSpot18Shutter_Init>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa5003c 	sw	a1,60(sp)
  10:	848e001c 	lh	t6,28(a0)
  14:	00808025 	move	s0,a0
  18:	afa00028 	sw	zero,40(sp)
  1c:	000e7a03 	sra	t7,t6,0x8
  20:	31f80001 	andi	t8,t7,0x1
  24:	afb8002c 	sw	t8,44(sp)
  28:	0c000000 	jal	0 <BgSpot18Shutter_Init>
  2c:	00002825 	move	a1,zero
  30:	3c050000 	lui	a1,0x0
  34:	24a50020 	addiu	a1,a1,32
  38:	0c000000 	jal	0 <BgSpot18Shutter_Init>
  3c:	02002025 	move	a0,s0
  40:	8fb9002c 	lw	t9,44(sp)
  44:	3c030000 	lui	v1,0x0
  48:	24010011 	li	at,17
  4c:	1720002d 	bnez	t9,104 <BgSpot18Shutter_Init+0x104>
  50:	24630000 	addiu	v1,v1,0
  54:	3c030000 	lui	v1,0x0
  58:	24630000 	addiu	v1,v1,0
  5c:	8c680004 	lw	t0,4(v1)
  60:	24020011 	li	v0,17
  64:	11000003 	beqz	t0,74 <BgSpot18Shutter_Init+0x74>
  68:	00000000 	nop
  6c:	10000001 	b	74 <BgSpot18Shutter_Init+0x74>
  70:	24020005 	li	v0,5
  74:	54410012 	bnel	v0,at,c0 <BgSpot18Shutter_Init+0xc0>
  78:	8605001c 	lh	a1,28(s0)
  7c:	94690f18 	lhu	t1,3864(v1)
  80:	3c0c0000 	lui	t4,0x0
  84:	3c014334 	lui	at,0x4334
  88:	312a0200 	andi	t2,t1,0x200
  8c:	11400009 	beqz	t2,b4 <BgSpot18Shutter_Init+0xb4>
  90:	258c0000 	addiu	t4,t4,0
  94:	c6040028 	lwc1	$f4,40(s0)
  98:	44813000 	mtc1	at,$f6
  9c:	3c0b0000 	lui	t3,0x0
  a0:	256b0000 	addiu	t3,t3,0
  a4:	46062200 	add.s	$f8,$f4,$f6
  a8:	ae0b0164 	sw	t3,356(s0)
  ac:	10000030 	b	170 <BgSpot18Shutter_Init+0x170>
  b0:	e6080028 	swc1	$f8,40(s0)
  b4:	1000002e 	b	170 <BgSpot18Shutter_Init+0x170>
  b8:	ae0c0164 	sw	t4,356(s0)
  bc:	8605001c 	lh	a1,28(s0)
  c0:	8fa4003c 	lw	a0,60(sp)
  c4:	0c000000 	jal	0 <BgSpot18Shutter_Init>
  c8:	30a5003f 	andi	a1,a1,0x3f
  cc:	1040000a 	beqz	v0,f8 <BgSpot18Shutter_Init+0xf8>
  d0:	3c0e0000 	lui	t6,0x0
  d4:	3c014334 	lui	at,0x4334
  d8:	44818000 	mtc1	at,$f16
  dc:	c60a0028 	lwc1	$f10,40(s0)
  e0:	3c0d0000 	lui	t5,0x0
  e4:	25ad0000 	addiu	t5,t5,0
  e8:	46105480 	add.s	$f18,$f10,$f16
  ec:	ae0d0164 	sw	t5,356(s0)
  f0:	1000001f 	b	170 <BgSpot18Shutter_Init+0x170>
  f4:	e6120028 	swc1	$f18,40(s0)
  f8:	25ce0000 	addiu	t6,t6,0
  fc:	1000001c 	b	170 <BgSpot18Shutter_Init+0x170>
 100:	ae0e0164 	sw	t6,356(s0)
 104:	946f0f18 	lhu	t7,3864(v1)
 108:	3c080000 	lui	t0,0x0
 10c:	25080000 	addiu	t0,t0,0
 110:	31f80200 	andi	t8,t7,0x200
 114:	53000016 	beqzl	t8,170 <BgSpot18Shutter_Init+0x170>
 118:	ae080164 	sw	t0,356(s0)
 11c:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 120:	86040032 	lh	a0,50(s0)
 124:	3c0142fa 	lui	at,0x42fa
 128:	44813000 	mtc1	at,$f6
 12c:	c6040024 	lwc1	$f4,36(s0)
 130:	86040032 	lh	a0,50(s0)
 134:	46003202 	mul.s	$f8,$f6,$f0
 138:	46082280 	add.s	$f10,$f4,$f8
 13c:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 140:	e60a0024 	swc1	$f10,36(s0)
 144:	3c0142fa 	lui	at,0x42fa
 148:	44819000 	mtc1	at,$f18
 14c:	c610002c 	lwc1	$f16,44(s0)
 150:	3c190000 	lui	t9,0x0
 154:	46009182 	mul.s	$f6,$f18,$f0
 158:	27390000 	addiu	t9,t9,0
 15c:	ae190164 	sw	t9,356(s0)
 160:	46068101 	sub.s	$f4,$f16,$f6
 164:	10000002 	b	170 <BgSpot18Shutter_Init+0x170>
 168:	e604002c 	swc1	$f4,44(s0)
 16c:	ae080164 	sw	t0,356(s0)
 170:	3c040000 	lui	a0,0x0
 174:	24840000 	addiu	a0,a0,0
 178:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 17c:	27a50028 	addiu	a1,sp,40
 180:	8fa4003c 	lw	a0,60(sp)
 184:	02003025 	move	a2,s0
 188:	8fa70028 	lw	a3,40(sp)
 18c:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 190:	24850810 	addiu	a1,a0,2064
 194:	ae02014c 	sw	v0,332(s0)
 198:	8fbf001c 	lw	ra,28(sp)
 19c:	8fb00018 	lw	s0,24(sp)
 1a0:	27bd0038 	addiu	sp,sp,56
 1a4:	03e00008 	jr	ra
 1a8:	00000000 	nop

000001ac <BgSpot18Shutter_Destroy>:
 1ac:	27bdffe8 	addiu	sp,sp,-24
 1b0:	afa40018 	sw	a0,24(sp)
 1b4:	8fae0018 	lw	t6,24(sp)
 1b8:	afbf0014 	sw	ra,20(sp)
 1bc:	00a02025 	move	a0,a1
 1c0:	24a50810 	addiu	a1,a1,2064
 1c4:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 1c8:	8dc6014c 	lw	a2,332(t6)
 1cc:	8fbf0014 	lw	ra,20(sp)
 1d0:	27bd0018 	addiu	sp,sp,24
 1d4:	03e00008 	jr	ra
 1d8:	00000000 	nop

000001dc <func_808B95AC>:
 1dc:	afa40000 	sw	a0,0(sp)
 1e0:	03e00008 	jr	ra
 1e4:	afa50004 	sw	a1,4(sp)

000001e8 <func_808B95B8>:
 1e8:	27bdffe8 	addiu	sp,sp,-24
 1ec:	afa40018 	sw	a0,24(sp)
 1f0:	8fae0018 	lw	t6,24(sp)
 1f4:	afbf0014 	sw	ra,20(sp)
 1f8:	afa5001c 	sw	a1,28(sp)
 1fc:	00a02025 	move	a0,a1
 200:	85c5001c 	lh	a1,28(t6)
 204:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 208:	30a5003f 	andi	a1,a1,0x3f
 20c:	1040000a 	beqz	v0,238 <func_808B95B8+0x50>
 210:	8fa40018 	lw	a0,24(sp)
 214:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 218:	3c05428c 	lui	a1,0x428c
 21c:	8fa4001c 	lw	a0,28(sp)
 220:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 224:	8fa50018 	lw	a1,24(sp)
 228:	8fb80018 	lw	t8,24(sp)
 22c:	3c0f0000 	lui	t7,0x0
 230:	25ef0000 	addiu	t7,t7,0
 234:	af0f0164 	sw	t7,356(t8)
 238:	8fbf0014 	lw	ra,20(sp)
 23c:	27bd0018 	addiu	sp,sp,24
 240:	03e00008 	jr	ra
 244:	00000000 	nop

00000248 <func_808B9618>:
 248:	3c0e0000 	lui	t6,0x0
 24c:	95ce0f18 	lhu	t6,3864(t6)
 250:	27bdffe0 	addiu	sp,sp,-32
 254:	afbf001c 	sw	ra,28(sp)
 258:	31cf0200 	andi	t7,t6,0x200
 25c:	afa50024 	sw	a1,36(sp)
 260:	11e00015 	beqz	t7,2b8 <func_808B9618+0x70>
 264:	00803825 	move	a3,a0
 268:	3c05428c 	lui	a1,0x428c
 26c:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 270:	afa70020 	sw	a3,32(sp)
 274:	8fa70020 	lw	a3,32(sp)
 278:	3c0a0000 	lui	t2,0x0
 27c:	3c090000 	lui	t1,0x0
 280:	84f8001c 	lh	t8,28(a3)
 284:	254a0000 	addiu	t2,t2,0
 288:	2405107d 	li	a1,4221
 28c:	0018ca03 	sra	t9,t8,0x8
 290:	33280001 	andi	t0,t9,0x1
 294:	15000004 	bnez	t0,2a8 <func_808B9618+0x60>
 298:	2406008c 	li	a2,140
 29c:	25290000 	addiu	t1,t1,0
 2a0:	10000005 	b	2b8 <func_808B9618+0x70>
 2a4:	ace90164 	sw	t1,356(a3)
 2a8:	acea0164 	sw	t2,356(a3)
 2ac:	afa00010 	sw	zero,16(sp)
 2b0:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 2b4:	8fa40024 	lw	a0,36(sp)
 2b8:	8fbf001c 	lw	ra,28(sp)
 2bc:	27bd0020 	addiu	sp,sp,32
 2c0:	03e00008 	jr	ra
 2c4:	00000000 	nop

000002c8 <func_808B9698>:
 2c8:	27bdffe8 	addiu	sp,sp,-24
 2cc:	afbf0014 	sw	ra,20(sp)
 2d0:	afa5001c 	sw	a1,28(sp)
 2d4:	00803825 	move	a3,a0
 2d8:	3c014334 	lui	at,0x4334
 2dc:	44813000 	mtc1	at,$f6
 2e0:	c4e4000c 	lwc1	$f4,12(a3)
 2e4:	3c063fb8 	lui	a2,0x3fb8
 2e8:	34c651ec 	ori	a2,a2,0x51ec
 2ec:	46062200 	add.s	$f8,$f4,$f6
 2f0:	afa70018 	sw	a3,24(sp)
 2f4:	24840028 	addiu	a0,a0,40
 2f8:	44054000 	mfc1	a1,$f8
 2fc:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 300:	00000000 	nop
 304:	1040000a 	beqz	v0,330 <func_808B9698+0x68>
 308:	8fa70018 	lw	a3,24(sp)
 30c:	00e02025 	move	a0,a3
 310:	24052893 	li	a1,10387
 314:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 318:	afa70018 	sw	a3,24(sp)
 31c:	8fa70018 	lw	a3,24(sp)
 320:	3c0e0000 	lui	t6,0x0
 324:	25ce0000 	addiu	t6,t6,0
 328:	10000004 	b	33c <func_808B9698+0x74>
 32c:	acee0164 	sw	t6,356(a3)
 330:	00e02025 	move	a0,a3
 334:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 338:	2405201e 	li	a1,8222
 33c:	8fbf0014 	lw	ra,20(sp)
 340:	27bd0018 	addiu	sp,sp,24
 344:	03e00008 	jr	ra
 348:	00000000 	nop

0000034c <func_808B971C>:
 34c:	27bdffd0 	addiu	sp,sp,-48
 350:	afb00018 	sw	s0,24(sp)
 354:	00808025 	move	s0,a0
 358:	afbf001c 	sw	ra,28(sp)
 35c:	afa50034 	sw	a1,52(sp)
 360:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 364:	84840032 	lh	a0,50(a0)
 368:	e7a0002c 	swc1	$f0,44(sp)
 36c:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 370:	86040032 	lh	a0,50(s0)
 374:	3c0142fa 	lui	at,0x42fa
 378:	44813000 	mtc1	at,$f6
 37c:	46000086 	mov.s	$f2,$f0
 380:	c6040008 	lwc1	$f4,8(s0)
 384:	46023202 	mul.s	$f8,$f6,$f2
 388:	46000005 	abs.s	$f0,$f0
 38c:	26040024 	addiu	a0,s0,36
 390:	44060000 	mfc1	a2,$f0
 394:	46082280 	add.s	$f10,$f4,$f8
 398:	44055000 	mfc1	a1,$f10
 39c:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 3a0:	00000000 	nop
 3a4:	3c0142fa 	lui	at,0x42fa
 3a8:	c7a2002c 	lwc1	$f2,44(sp)
 3ac:	44819000 	mtc1	at,$f18
 3b0:	c6100010 	lwc1	$f16,16(s0)
 3b4:	46001005 	abs.s	$f0,$f2
 3b8:	46029182 	mul.s	$f6,$f18,$f2
 3bc:	30430001 	andi	v1,v0,0x1
 3c0:	44060000 	mfc1	a2,$f0
 3c4:	afa30024 	sw	v1,36(sp)
 3c8:	2604002c 	addiu	a0,s0,44
 3cc:	46068101 	sub.s	$f4,$f16,$f6
 3d0:	44052000 	mfc1	a1,$f4
 3d4:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 3d8:	00000000 	nop
 3dc:	8fa30024 	lw	v1,36(sp)
 3e0:	24052893 	li	a1,10387
 3e4:	02002025 	move	a0,s0
 3e8:	00621824 	and	v1,v1,v0
 3ec:	10600007 	beqz	v1,40c <func_808B971C+0xc0>
 3f0:	00000000 	nop
 3f4:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 3f8:	02002025 	move	a0,s0
 3fc:	3c0e0000 	lui	t6,0x0
 400:	25ce0000 	addiu	t6,t6,0
 404:	10000003 	b	414 <func_808B971C+0xc8>
 408:	ae0e0164 	sw	t6,356(s0)
 40c:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 410:	2405201e 	li	a1,8222
 414:	8fbf001c 	lw	ra,28(sp)
 418:	8fb00018 	lw	s0,24(sp)
 41c:	27bd0030 	addiu	sp,sp,48
 420:	03e00008 	jr	ra
 424:	00000000 	nop

00000428 <BgSpot18Shutter_Update>:
 428:	27bdffe8 	addiu	sp,sp,-24
 42c:	afbf0014 	sw	ra,20(sp)
 430:	8c990164 	lw	t9,356(a0)
 434:	0320f809 	jalr	t9
 438:	00000000 	nop
 43c:	8fbf0014 	lw	ra,20(sp)
 440:	27bd0018 	addiu	sp,sp,24
 444:	03e00008 	jr	ra
 448:	00000000 	nop

0000044c <BgSpot18Shutter_Draw>:
 44c:	27bdffe8 	addiu	sp,sp,-24
 450:	afa40018 	sw	a0,24(sp)
 454:	00a02025 	move	a0,a1
 458:	afbf0014 	sw	ra,20(sp)
 45c:	3c050000 	lui	a1,0x0
 460:	0c000000 	jal	0 <BgSpot18Shutter_Init>
 464:	24a50000 	addiu	a1,a1,0
 468:	8fbf0014 	lw	ra,20(sp)
 46c:	27bd0018 	addiu	sp,sp,24
 470:	03e00008 	jr	ra
 474:	00000000 	nop
	...
