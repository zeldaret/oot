
build/src/overlays/actors/ovl_Bg_Jya_Lift/z_bg_jya_lift.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgJyaLift_InitDynapoly>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa50024 	sw	a1,36(sp)
   c:	afa40020 	sw	a0,32(sp)
  10:	afa60028 	sw	a2,40(sp)
  14:	afa00018 	sw	zero,24(sp)
  18:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
  1c:	00e02825 	move	a1,a3
  20:	8fa40028 	lw	a0,40(sp)
  24:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
  28:	27a50018 	addiu	a1,sp,24
  2c:	8fa40024 	lw	a0,36(sp)
  30:	8fa60020 	lw	a2,32(sp)
  34:	8fa70018 	lw	a3,24(sp)
  38:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
  3c:	24850810 	addiu	a1,a0,2064
  40:	8fae0020 	lw	t6,32(sp)
  44:	adc2014c 	sw	v0,332(t6)
  48:	8fbf0014 	lw	ra,20(sp)
  4c:	27bd0020 	addiu	sp,sp,32
  50:	03e00008 	jr	ra
  54:	00000000 	nop

00000058 <BgJyaLift_Init>:
  58:	27bdffe0 	addiu	sp,sp,-32
  5c:	afbf001c 	sw	ra,28(sp)
  60:	afb00018 	sw	s0,24(sp)
  64:	afa50024 	sw	a1,36(sp)
  68:	a080016a 	sb	zero,362(a0)
  6c:	3c0e0000 	lui	t6,0x0
  70:	85ce0000 	lh	t6,0(t6)
  74:	00808025 	move	s0,a0
  78:	11c00005 	beqz	t6,90 <BgJyaLift_Init+0x38>
  7c:	00000000 	nop
  80:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
  84:	00000000 	nop
  88:	10000022 	b	114 <BgJyaLift_Init+0xbc>
  8c:	8fbf001c 	lw	ra,28(sp)
  90:	3c040000 	lui	a0,0x0
  94:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
  98:	24840000 	addiu	a0,a0,0
  9c:	3c060000 	lui	a2,0x0
  a0:	24c60000 	addiu	a2,a2,0
  a4:	02002025 	move	a0,s0
  a8:	8fa50024 	lw	a1,36(sp)
  ac:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
  b0:	00003825 	move	a3,zero
  b4:	3c050000 	lui	a1,0x0
  b8:	24a50024 	addiu	a1,a1,36
  bc:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
  c0:	02002025 	move	a0,s0
  c4:	8605001c 	lh	a1,28(s0)
  c8:	8fa40024 	lw	a0,36(sp)
  cc:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
  d0:	30a5003f 	andi	a1,a1,0x3f
  d4:	10400005 	beqz	v0,ec <BgJyaLift_Init+0x94>
  d8:	00000000 	nop
  dc:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
  e0:	02002025 	move	a0,s0
  e4:	10000004 	b	f8 <BgJyaLift_Init+0xa0>
  e8:	240fffff 	li	t7,-1
  ec:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
  f0:	02002025 	move	a0,s0
  f4:	240fffff 	li	t7,-1
  f8:	a20f0003 	sb	t7,3(s0)
  fc:	24180001 	li	t8,1
 100:	3c010000 	lui	at,0x0
 104:	a4380000 	sh	t8,0(at)
 108:	24190001 	li	t9,1
 10c:	a219016a 	sb	t9,362(s0)
 110:	8fbf001c 	lw	ra,28(sp)
 114:	8fb00018 	lw	s0,24(sp)
 118:	27bd0020 	addiu	sp,sp,32
 11c:	03e00008 	jr	ra
 120:	00000000 	nop

00000124 <BgJyaLift_Destroy>:
 124:	27bdffe8 	addiu	sp,sp,-24
 128:	afbf0014 	sw	ra,20(sp)
 12c:	afa5001c 	sw	a1,28(sp)
 130:	908e016a 	lbu	t6,362(a0)
 134:	00803825 	move	a3,a0
 138:	3c040000 	lui	a0,0x0
 13c:	11c0000a 	beqz	t6,168 <BgJyaLift_Destroy+0x44>
 140:	24840010 	addiu	a0,a0,16
 144:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
 148:	afa70018 	sw	a3,24(sp)
 14c:	8fa4001c 	lw	a0,28(sp)
 150:	8fa70018 	lw	a3,24(sp)
 154:	3c010000 	lui	at,0x0
 158:	a4200000 	sh	zero,0(at)
 15c:	24850810 	addiu	a1,a0,2064
 160:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
 164:	8ce6014c 	lw	a2,332(a3)
 168:	8fbf0014 	lw	ra,20(sp)
 16c:	27bd0018 	addiu	sp,sp,24
 170:	03e00008 	jr	ra
 174:	00000000 	nop

00000178 <BgJyaLift_SetInitPosY>:
 178:	3c0e0000 	lui	t6,0x0
 17c:	25ce0000 	addiu	t6,t6,0
 180:	ac8e0164 	sw	t6,356(a0)
 184:	3c010000 	lui	at,0x0
 188:	c4240020 	lwc1	$f4,32(at)
 18c:	a4800168 	sh	zero,360(a0)
 190:	03e00008 	jr	ra
 194:	e4840028 	swc1	$f4,40(a0)

00000198 <BgJyaLift_DelayMove>:
 198:	27bdffe0 	addiu	sp,sp,-32
 19c:	00803825 	move	a3,a0
 1a0:	afbf001c 	sw	ra,28(sp)
 1a4:	afa50024 	sw	a1,36(sp)
 1a8:	00a02025 	move	a0,a1
 1ac:	84e5001c 	lh	a1,28(a3)
 1b0:	afa70020 	sw	a3,32(sp)
 1b4:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
 1b8:	30a5003f 	andi	a1,a1,0x3f
 1bc:	14400004 	bnez	v0,1d0 <BgJyaLift_DelayMove+0x38>
 1c0:	8fa70020 	lw	a3,32(sp)
 1c4:	84ee0168 	lh	t6,360(a3)
 1c8:	59c00011 	blezl	t6,210 <BgJyaLift_DelayMove+0x78>
 1cc:	8fbf001c 	lw	ra,28(sp)
 1d0:	84ef0168 	lh	t7,360(a3)
 1d4:	24050d66 	li	a1,3430
 1d8:	2406ff9d 	li	a2,-99
 1dc:	25f80001 	addiu	t8,t7,1
 1e0:	a4f80168 	sh	t8,360(a3)
 1e4:	84f90168 	lh	t9,360(a3)
 1e8:	8fa40024 	lw	a0,36(sp)
 1ec:	2b210014 	slti	at,t9,20
 1f0:	54200007 	bnezl	at,210 <BgJyaLift_DelayMove+0x78>
 1f4:	8fbf001c 	lw	ra,28(sp)
 1f8:	afa00010 	sw	zero,16(sp)
 1fc:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
 200:	afa70020 	sw	a3,32(sp)
 204:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
 208:	8fa40020 	lw	a0,32(sp)
 20c:	8fbf001c 	lw	ra,28(sp)
 210:	27bd0020 	addiu	sp,sp,32
 214:	03e00008 	jr	ra
 218:	00000000 	nop

0000021c <BgJyaLift_SetupMove>:
 21c:	3c0e0000 	lui	t6,0x0
 220:	25ce0000 	addiu	t6,t6,0
 224:	03e00008 	jr	ra
 228:	ac8e0164 	sw	t6,356(a0)

0000022c <BgJyaLift_Move>:
 22c:	27bdffd0 	addiu	sp,sp,-48
 230:	44802000 	mtc1	zero,$f4
 234:	afb00020 	sw	s0,32(sp)
 238:	00808025 	move	s0,a0
 23c:	afbf0024 	sw	ra,36(sp)
 240:	afa50034 	sw	a1,52(sp)
 244:	3c063dcc 	lui	a2,0x3dcc
 248:	34c6cccd 	ori	a2,a2,0xcccd
 24c:	3c054080 	lui	a1,0x4080
 250:	24840060 	addiu	a0,a0,96
 254:	3c073f80 	lui	a3,0x3f80
 258:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
 25c:	e7a40010 	swc1	$f4,16(sp)
 260:	3c010000 	lui	at,0x0
 264:	c42c0024 	lwc1	$f12,36(at)
 268:	c6020060 	lwc1	$f2,96(s0)
 26c:	3c054473 	lui	a1,0x4473
 270:	3c063dcc 	lui	a2,0x3dcc
 274:	460c103c 	c.lt.s	$f2,$f12
 278:	34c6cccd 	ori	a2,a2,0xcccd
 27c:	34a54000 	ori	a1,a1,0x4000
 280:	26040028 	addiu	a0,s0,40
 284:	45020004 	bc1fl	298 <BgJyaLift_Move+0x6c>
 288:	46001006 	mov.s	$f0,$f2
 28c:	10000002 	b	298 <BgJyaLift_Move+0x6c>
 290:	46006006 	mov.s	$f0,$f12
 294:	46001006 	mov.s	$f0,$f2
 298:	44070000 	mfc1	a3,$f0
 29c:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
 2a0:	e7ac0010 	swc1	$f12,16(sp)
 2a4:	3c0144b4 	lui	at,0x44b4
 2a8:	44816000 	mtc1	at,$f12
 2ac:	c6060028 	lwc1	$f6,40(s0)
 2b0:	46000086 	mov.s	$f2,$f0
 2b4:	460c303c 	c.lt.s	$f6,$f12
 2b8:	00000000 	nop
 2bc:	4500000e 	bc1f	2f8 <BgJyaLift_Move+0xcc>
 2c0:	00000000 	nop
 2c4:	c6080104 	lwc1	$f8,260(s0)
 2c8:	8fa20034 	lw	v0,52(sp)
 2cc:	4608603e 	c.le.s	$f12,$f8
 2d0:	00000000 	nop
 2d4:	45000008 	bc1f	2f8 <BgJyaLift_Move+0xcc>
 2d8:	00000000 	nop
 2dc:	844e07a0 	lh	t6,1952(v0)
 2e0:	000e7880 	sll	t7,t6,0x2
 2e4:	004fc021 	addu	t8,v0,t7
 2e8:	8f040790 	lw	a0,1936(t8)
 2ec:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
 2f0:	e7a2002c 	swc1	$f2,44(sp)
 2f4:	c7a2002c 	lwc1	$f2,44(sp)
 2f8:	3c010000 	lui	at,0x0
 2fc:	c42a0028 	lwc1	$f10,40(at)
 300:	46001005 	abs.s	$f0,$f2
 304:	02002025 	move	a0,s0
 308:	460a003c 	c.lt.s	$f0,$f10
 30c:	00000000 	nop
 310:	45000008 	bc1f	334 <BgJyaLift_Move+0x108>
 314:	00000000 	nop
 318:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
 31c:	02002025 	move	a0,s0
 320:	02002025 	move	a0,s0
 324:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
 328:	2405287a 	li	a1,10362
 32c:	10000004 	b	340 <BgJyaLift_Move+0x114>
 330:	8fbf0024 	lw	ra,36(sp)
 334:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
 338:	2405200c 	li	a1,8204
 33c:	8fbf0024 	lw	ra,36(sp)
 340:	8fb00020 	lw	s0,32(sp)
 344:	27bd0030 	addiu	sp,sp,48
 348:	03e00008 	jr	ra
 34c:	00000000 	nop

00000350 <BgJyaLift_SetFinalPosY>:
 350:	ac800164 	sw	zero,356(a0)
 354:	3c010000 	lui	at,0x0
 358:	c424002c 	lwc1	$f4,44(at)
 35c:	03e00008 	jr	ra
 360:	e4840028 	swc1	$f4,40(a0)

00000364 <BgJyaLift_Update>:
 364:	27bdffe0 	addiu	sp,sp,-32
 368:	afbf001c 	sw	ra,28(sp)
 36c:	afb00018 	sw	s0,24(sp)
 370:	8c820164 	lw	v0,356(a0)
 374:	00a08025 	move	s0,a1
 378:	00803025 	move	a2,a0
 37c:	50400005 	beqzl	v0,394 <BgJyaLift_Update+0x30>
 380:	90c20160 	lbu	v0,352(a2)
 384:	0040f809 	jalr	v0
 388:	afa60020 	sw	a2,32(sp)
 38c:	8fa60020 	lw	a2,32(sp)
 390:	90c20160 	lbu	v0,352(a2)
 394:	30430004 	andi	v1,v0,0x4
 398:	1060000c 	beqz	v1,3cc <BgJyaLift_Update+0x68>
 39c:	00000000 	nop
 3a0:	90ce016b 	lbu	t6,363(a2)
 3a4:	2405003f 	li	a1,63
 3a8:	31cf0004 	andi	t7,t6,0x4
 3ac:	15e00007 	bnez	t7,3cc <BgJyaLift_Update+0x68>
 3b0:	00000000 	nop
 3b4:	8e040790 	lw	a0,1936(s0)
 3b8:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
 3bc:	afa60020 	sw	a2,32(sp)
 3c0:	8fa60020 	lw	a2,32(sp)
 3c4:	10000011 	b	40c <BgJyaLift_Update+0xa8>
 3c8:	90c20160 	lbu	v0,352(a2)
 3cc:	54600010 	bnezl	v1,410 <BgJyaLift_Update+0xac>
 3d0:	3c030001 	lui	v1,0x1
 3d4:	90d8016b 	lbu	t8,363(a2)
 3d8:	33190004 	andi	t9,t8,0x4
 3dc:	5320000c 	beqzl	t9,410 <BgJyaLift_Update+0xac>
 3e0:	3c030001 	lui	v1,0x1
 3e4:	8e040790 	lw	a0,1936(s0)
 3e8:	2401003f 	li	at,63
 3ec:	24050003 	li	a1,3
 3f0:	84880142 	lh	t0,322(a0)
 3f4:	55010006 	bnel	t0,at,410 <BgJyaLift_Update+0xac>
 3f8:	3c030001 	lui	v1,0x1
 3fc:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
 400:	afa60020 	sw	a2,32(sp)
 404:	8fa60020 	lw	a2,32(sp)
 408:	90c20160 	lbu	v0,352(a2)
 40c:	3c030001 	lui	v1,0x1
 410:	a0c2016b 	sb	v0,363(a2)
 414:	00701821 	addu	v1,v1,s0
 418:	80631cbc 	lb	v1,7356(v1)
 41c:	24010005 	li	at,5
 420:	10610005 	beq	v1,at,438 <BgJyaLift_Update+0xd4>
 424:	24010019 	li	at,25
 428:	50610004 	beql	v1,at,43c <BgJyaLift_Update+0xd8>
 42c:	8fbf001c 	lw	ra,28(sp)
 430:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
 434:	00c02025 	move	a0,a2
 438:	8fbf001c 	lw	ra,28(sp)
 43c:	8fb00018 	lw	s0,24(sp)
 440:	27bd0020 	addiu	sp,sp,32
 444:	03e00008 	jr	ra
 448:	00000000 	nop

0000044c <BgJyaLift_Draw>:
 44c:	27bdffe8 	addiu	sp,sp,-24
 450:	afa40018 	sw	a0,24(sp)
 454:	00a02025 	move	a0,a1
 458:	afbf0014 	sw	ra,20(sp)
 45c:	3c050000 	lui	a1,0x0
 460:	0c000000 	jal	0 <BgJyaLift_InitDynapoly>
 464:	24a50000 	addiu	a1,a1,0
 468:	8fbf0014 	lw	ra,20(sp)
 46c:	27bd0018 	addiu	sp,sp,24
 470:	03e00008 	jr	ra
 474:	00000000 	nop
	...
