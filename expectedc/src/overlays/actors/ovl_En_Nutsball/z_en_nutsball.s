
build/src/overlays/actors/ovl_En_Nutsball/z_en_nutsball.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnNutsball_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afb00018 	sw	s0,24(sp)
   8:	00808025 	move	s0,a0
   c:	afbf001c 	sw	ra,28(sp)
  10:	afa50034 	sw	a1,52(sp)
  14:	3c060000 	lui	a2,0x0
  18:	24c60000 	addiu	a2,a2,0
  1c:	3c0543c8 	lui	a1,0x43c8
  20:	248400b4 	addiu	a0,a0,180
  24:	0c000000 	jal	0 <EnNutsball_Init>
  28:	3c074150 	lui	a3,0x4150
  2c:	26050154 	addiu	a1,s0,340
  30:	afa50024 	sw	a1,36(sp)
  34:	0c000000 	jal	0 <EnNutsball_Init>
  38:	8fa40034 	lw	a0,52(sp)
  3c:	3c070000 	lui	a3,0x0
  40:	8fa50024 	lw	a1,36(sp)
  44:	24e70020 	addiu	a3,a3,32
  48:	8fa40034 	lw	a0,52(sp)
  4c:	0c000000 	jal	0 <EnNutsball_Init>
  50:	02003025 	move	a2,s0
  54:	860e001c 	lh	t6,28(s0)
  58:	8fa40034 	lw	a0,52(sp)
  5c:	3c010001 	lui	at,0x1
  60:	3c050000 	lui	a1,0x0
  64:	000e7840 	sll	t7,t6,0x1
  68:	00af2821 	addu	a1,a1,t7
  6c:	342117a4 	ori	at,at,0x17a4
  70:	84a5004c 	lh	a1,76(a1)
  74:	0c000000 	jal	0 <EnNutsball_Init>
  78:	00812021 	addu	a0,a0,at
  7c:	a2020150 	sb	v0,336(s0)
  80:	82180150 	lb	t8,336(s0)
  84:	3c190000 	lui	t9,0x0
  88:	27390000 	addiu	t9,t9,0
  8c:	07030006 	bgezl	t8,a8 <EnNutsball_Init+0xa8>
  90:	ae19014c 	sw	t9,332(s0)
  94:	0c000000 	jal	0 <EnNutsball_Init>
  98:	02002025 	move	a0,s0
  9c:	10000003 	b	ac <EnNutsball_Init+0xac>
  a0:	8fbf001c 	lw	ra,28(sp)
  a4:	ae19014c 	sw	t9,332(s0)
  a8:	8fbf001c 	lw	ra,28(sp)
  ac:	8fb00018 	lw	s0,24(sp)
  b0:	27bd0030 	addiu	sp,sp,48
  b4:	03e00008 	jr	ra
  b8:	00000000 	nop

000000bc <EnNutsball_Destroy>:
  bc:	27bdffe8 	addiu	sp,sp,-24
  c0:	00803025 	move	a2,a0
  c4:	afbf0014 	sw	ra,20(sp)
  c8:	00a02025 	move	a0,a1
  cc:	0c000000 	jal	0 <EnNutsball_Init>
  d0:	24c50154 	addiu	a1,a2,340
  d4:	8fbf0014 	lw	ra,20(sp)
  d8:	27bd0018 	addiu	sp,sp,24
  dc:	03e00008 	jr	ra
  e0:	00000000 	nop

000000e4 <func_80ABBB34>:
  e4:	3c010001 	lui	at,0x1
  e8:	27bdffe8 	addiu	sp,sp,-24
  ec:	00803025 	move	a2,a0
  f0:	342117a4 	ori	at,at,0x17a4
  f4:	afbf0014 	sw	ra,20(sp)
  f8:	00a12021 	addu	a0,a1,at
  fc:	80c50150 	lb	a1,336(a2)
 100:	0c000000 	jal	0 <EnNutsball_Init>
 104:	afa60018 	sw	a2,24(sp)
 108:	1040000f 	beqz	v0,148 <func_80ABBB34+0x64>
 10c:	8fa60018 	lw	a2,24(sp)
 110:	3c014120 	lui	at,0x4120
 114:	80ce0150 	lb	t6,336(a2)
 118:	44812000 	mtc1	at,$f4
 11c:	3c0f0000 	lui	t7,0x0
 120:	3c190000 	lui	t9,0x0
 124:	25ef0000 	addiu	t7,t7,0
 128:	2418001e 	li	t8,30
 12c:	27390000 	addiu	t9,t9,0
 130:	accf0134 	sw	t7,308(a2)
 134:	a4c000b6 	sh	zero,182(a2)
 138:	a4d80152 	sh	t8,338(a2)
 13c:	acd9014c 	sw	t9,332(a2)
 140:	a0ce001e 	sb	t6,30(a2)
 144:	e4c40068 	swc1	$f4,104(a2)
 148:	8fbf0014 	lw	ra,20(sp)
 14c:	27bd0018 	addiu	sp,sp,24
 150:	03e00008 	jr	ra
 154:	00000000 	nop

00000158 <func_80ABBBA8>:
 158:	27bdffa8 	addiu	sp,sp,-88
 15c:	afbf0034 	sw	ra,52(sp)
 160:	afb00030 	sw	s0,48(sp)
 164:	afa5005c 	sw	a1,92(sp)
 168:	848f0152 	lh	t7,338(a0)
 16c:	8ca31c44 	lw	v1,7236(a1)
 170:	00808025 	move	s0,a0
 174:	25f8ffff 	addiu	t8,t7,-1
 178:	a4980152 	sh	t8,338(a0)
 17c:	84990152 	lh	t9,338(a0)
 180:	3c01bf80 	lui	at,0xbf80
 184:	57200005 	bnezl	t9,19c <func_80ABBBA8+0x44>
 188:	86080018 	lh	t0,24(s0)
 18c:	44812000 	mtc1	at,$f4
 190:	00000000 	nop
 194:	e484006c 	swc1	$f4,108(a0)
 198:	86080018 	lh	t0,24(s0)
 19c:	96020088 	lhu	v0,136(s0)
 1a0:	25092aa8 	addiu	t1,t0,10920
 1a4:	304a0008 	andi	t2,v0,0x8
 1a8:	15400010 	bnez	t2,1ec <func_80ABBBA8+0x94>
 1ac:	a6090018 	sh	t1,24(s0)
 1b0:	304b0001 	andi	t3,v0,0x1
 1b4:	5560000e 	bnezl	t3,1f0 <func_80ABBBA8+0x98>
 1b8:	8062014e 	lb	v0,334(v1)
 1bc:	920c0164 	lbu	t4,356(s0)
 1c0:	318d0002 	andi	t5,t4,0x2
 1c4:	55a0000a 	bnezl	t5,1f0 <func_80ABBBA8+0x98>
 1c8:	8062014e 	lb	v0,334(v1)
 1cc:	920e0165 	lbu	t6,357(s0)
 1d0:	31cf0002 	andi	t7,t6,0x2
 1d4:	55e00006 	bnezl	t7,1f0 <func_80ABBBA8+0x98>
 1d8:	8062014e 	lb	v0,334(v1)
 1dc:	92180166 	lbu	t8,358(s0)
 1e0:	33190002 	andi	t9,t8,0x2
 1e4:	53200045 	beqzl	t9,2fc <func_80ABBBA8+0x1a4>
 1e8:	860e0152 	lh	t6,338(s0)
 1ec:	8062014e 	lb	v0,334(v1)
 1f0:	24010001 	li	at,1
 1f4:	10410006 	beq	v0,at,210 <func_80ABBBA8+0xb8>
 1f8:	24010002 	li	at,2
 1fc:	1441001c 	bne	v0,at,270 <func_80ABBBA8+0x118>
 200:	3c080000 	lui	t0,0x0
 204:	8d080004 	lw	t0,4(t0)
 208:	5500001a 	bnezl	t0,274 <func_80ABBBA8+0x11c>
 20c:	c6060024 	lwc1	$f6,36(s0)
 210:	92020164 	lbu	v0,356(s0)
 214:	30490002 	andi	t1,v0,0x2
 218:	11200015 	beqz	t1,270 <func_80ABBBA8+0x118>
 21c:	304a0010 	andi	t2,v0,0x10
 220:	11400013 	beqz	t2,270 <func_80ABBBA8+0x118>
 224:	304b0004 	andi	t3,v0,0x4
 228:	11600011 	beqz	t3,270 <func_80ABBBA8+0x118>
 22c:	304dffe9 	andi	t5,v0,0xffe9
 230:	a20d0164 	sb	t5,356(s0)
 234:	35ae0008 	ori	t6,t5,0x8
 238:	240f0002 	li	t7,2
 23c:	a20e0164 	sb	t6,356(s0)
 240:	ae0f016c 	sw	t7,364(s0)
 244:	24640a20 	addiu	a0,v1,2592
 248:	27a5004c 	addiu	a1,sp,76
 24c:	0c000000 	jal	0 <EnNutsball_Init>
 250:	00003025 	move	a2,zero
 254:	87b8004e 	lh	t8,78(sp)
 258:	34018000 	li	at,0x8000
 25c:	2408001e 	li	t0,30
 260:	0301c821 	addu	t9,t8,at
 264:	a6190032 	sh	t9,50(s0)
 268:	10000029 	b	310 <func_80ABBBA8+0x1b8>
 26c:	a6080152 	sh	t0,338(s0)
 270:	c6060024 	lwc1	$f6,36(s0)
 274:	3c014080 	lui	at,0x4080
 278:	44815000 	mtc1	at,$f10
 27c:	e7a60040 	swc1	$f6,64(sp)
 280:	c6080028 	lwc1	$f8,40(s0)
 284:	24090007 	li	t1,7
 288:	240a0003 	li	t2,3
 28c:	460a4400 	add.s	$f16,$f8,$f10
 290:	240b000f 	li	t3,15
 294:	240cffff 	li	t4,-1
 298:	240d000a 	li	t5,10
 29c:	e7b00044 	swc1	$f16,68(sp)
 2a0:	c612002c 	lwc1	$f18,44(s0)
 2a4:	afa00024 	sw	zero,36(sp)
 2a8:	afad0020 	sw	t5,32(sp)
 2ac:	afac001c 	sw	t4,28(sp)
 2b0:	afab0018 	sw	t3,24(sp)
 2b4:	afaa0014 	sw	t2,20(sp)
 2b8:	afa90010 	sw	t1,16(sp)
 2bc:	8fa4005c 	lw	a0,92(sp)
 2c0:	27a50040 	addiu	a1,sp,64
 2c4:	3c0640c0 	lui	a2,0x40c0
 2c8:	00003825 	move	a3,zero
 2cc:	0c000000 	jal	0 <EnNutsball_Init>
 2d0:	e7b20048 	swc1	$f18,72(sp)
 2d4:	8fa4005c 	lw	a0,92(sp)
 2d8:	26050024 	addiu	a1,s0,36
 2dc:	24060014 	li	a2,20
 2e0:	0c000000 	jal	0 <EnNutsball_Init>
 2e4:	240738c0 	li	a3,14528
 2e8:	0c000000 	jal	0 <EnNutsball_Init>
 2ec:	02002025 	move	a0,s0
 2f0:	10000008 	b	314 <func_80ABBBA8+0x1bc>
 2f4:	8fbf0034 	lw	ra,52(sp)
 2f8:	860e0152 	lh	t6,338(s0)
 2fc:	2401fed4 	li	at,-300
 300:	55c10004 	bnel	t6,at,314 <func_80ABBBA8+0x1bc>
 304:	8fbf0034 	lw	ra,52(sp)
 308:	0c000000 	jal	0 <EnNutsball_Init>
 30c:	02002025 	move	a0,s0
 310:	8fbf0034 	lw	ra,52(sp)
 314:	8fb00030 	lw	s0,48(sp)
 318:	27bd0058 	addiu	sp,sp,88
 31c:	03e00008 	jr	ra
 320:	00000000 	nop

00000324 <EnNutsball_Update>:
 324:	27bdffc0 	addiu	sp,sp,-64
 328:	afbf002c 	sw	ra,44(sp)
 32c:	afb20028 	sw	s2,40(sp)
 330:	afb10024 	sw	s1,36(sp)
 334:	afb00020 	sw	s0,32(sp)
 338:	8ca21c44 	lw	v0,7236(a1)
 33c:	3c013000 	lui	at,0x3000
 340:	342100c0 	ori	at,at,0xc0
 344:	8c4e067c 	lw	t6,1660(v0)
 348:	00808025 	move	s0,a0
 34c:	00a09025 	move	s2,a1
 350:	01c17824 	and	t7,t6,at
 354:	51e00007 	beqzl	t7,374 <EnNutsball_Update+0x50>
 358:	8e19014c 	lw	t9,332(s0)
 35c:	8c99014c 	lw	t9,332(a0)
 360:	3c180000 	lui	t8,0x0
 364:	27180000 	addiu	t8,t8,0
 368:	57190030 	bnel	t8,t9,42c <EnNutsball_Update+0x108>
 36c:	8fbf002c 	lw	ra,44(sp)
 370:	8e19014c 	lw	t9,332(s0)
 374:	02002025 	move	a0,s0
 378:	02402825 	move	a1,s2
 37c:	0320f809 	jalr	t9
 380:	00000000 	nop
 384:	0c000000 	jal	0 <EnNutsball_Init>
 388:	02002025 	move	a0,s0
 38c:	3c020000 	lui	v0,0x0
 390:	24420020 	addiu	v0,v0,32
 394:	84480020 	lh	t0,32(v0)
 398:	84490022 	lh	t1,34(v0)
 39c:	240a0005 	li	t2,5
 3a0:	44882000 	mtc1	t0,$f4
 3a4:	44893000 	mtc1	t1,$f6
 3a8:	afaa0014 	sw	t2,20(sp)
 3ac:	46802120 	cvt.s.w	$f4,$f4
 3b0:	02402025 	move	a0,s2
 3b4:	02002825 	move	a1,s0
 3b8:	3c064120 	lui	a2,0x4120
 3bc:	46803220 	cvt.s.w	$f8,$f6
 3c0:	44072000 	mfc1	a3,$f4
 3c4:	0c000000 	jal	0 <EnNutsball_Init>
 3c8:	e7a80010 	swc1	$f8,16(sp)
 3cc:	26110154 	addiu	s1,s0,340
 3d0:	02202825 	move	a1,s1
 3d4:	0c000000 	jal	0 <EnNutsball_Init>
 3d8:	02002025 	move	a0,s0
 3dc:	8e0b0004 	lw	t3,4(s0)
 3e0:	3c010100 	lui	at,0x100
 3e4:	02402025 	move	a0,s2
 3e8:	01616025 	or	t4,t3,at
 3ec:	3c010001 	lui	at,0x1
 3f0:	34211e60 	ori	at,at,0x1e60
 3f4:	ae0c0004 	sw	t4,4(s0)
 3f8:	02412821 	addu	a1,s2,at
 3fc:	afa50030 	sw	a1,48(sp)
 400:	0c000000 	jal	0 <EnNutsball_Init>
 404:	02203025 	move	a2,s1
 408:	02402025 	move	a0,s2
 40c:	8fa50030 	lw	a1,48(sp)
 410:	0c000000 	jal	0 <EnNutsball_Init>
 414:	02203025 	move	a2,s1
 418:	02402025 	move	a0,s2
 41c:	8fa50030 	lw	a1,48(sp)
 420:	0c000000 	jal	0 <EnNutsball_Init>
 424:	02203025 	move	a2,s1
 428:	8fbf002c 	lw	ra,44(sp)
 42c:	8fb00020 	lw	s0,32(sp)
 430:	8fb10024 	lw	s1,36(sp)
 434:	8fb20028 	lw	s2,40(sp)
 438:	03e00008 	jr	ra
 43c:	27bd0040 	addiu	sp,sp,64

00000440 <EnNutsball_Draw>:
 440:	27bdffb8 	addiu	sp,sp,-72
 444:	afb10018 	sw	s1,24(sp)
 448:	00a08825 	move	s1,a1
 44c:	afbf001c 	sw	ra,28(sp)
 450:	afb00014 	sw	s0,20(sp)
 454:	afa40048 	sw	a0,72(sp)
 458:	8ca50000 	lw	a1,0(a1)
 45c:	3c060000 	lui	a2,0x0
 460:	24c60000 	addiu	a2,a2,0
 464:	27a40030 	addiu	a0,sp,48
 468:	24070147 	li	a3,327
 46c:	0c000000 	jal	0 <EnNutsball_Init>
 470:	00a08025 	move	s0,a1
 474:	0c000000 	jal	0 <EnNutsball_Init>
 478:	8e240000 	lw	a0,0(s1)
 47c:	3c010001 	lui	at,0x1
 480:	34211da0 	ori	at,at,0x1da0
 484:	02212021 	addu	a0,s1,at
 488:	0c000000 	jal	0 <EnNutsball_Init>
 48c:	24050001 	li	a1,1
 490:	8fae0048 	lw	t6,72(sp)
 494:	3c010000 	lui	at,0x0
 498:	c428003c 	lwc1	$f8,60(at)
 49c:	85cf0018 	lh	t7,24(t6)
 4a0:	24050001 	li	a1,1
 4a4:	448f2000 	mtc1	t7,$f4
 4a8:	00000000 	nop
 4ac:	468021a0 	cvt.s.w	$f6,$f4
 4b0:	46083302 	mul.s	$f12,$f6,$f8
 4b4:	0c000000 	jal	0 <EnNutsball_Init>
 4b8:	00000000 	nop
 4bc:	8e0202c0 	lw	v0,704(s0)
 4c0:	3c19da38 	lui	t9,0xda38
 4c4:	37390003 	ori	t9,t9,0x3
 4c8:	24580008 	addiu	t8,v0,8
 4cc:	ae1802c0 	sw	t8,704(s0)
 4d0:	ac590000 	sw	t9,0(v0)
 4d4:	8e240000 	lw	a0,0(s1)
 4d8:	3c050000 	lui	a1,0x0
 4dc:	24a50014 	addiu	a1,a1,20
 4e0:	2406014d 	li	a2,333
 4e4:	0c000000 	jal	0 <EnNutsball_Init>
 4e8:	afa2002c 	sw	v0,44(sp)
 4ec:	8fa3002c 	lw	v1,44(sp)
 4f0:	3c09de00 	lui	t1,0xde00
 4f4:	3c0d0000 	lui	t5,0x0
 4f8:	ac620004 	sw	v0,4(v1)
 4fc:	8e0202c0 	lw	v0,704(s0)
 500:	3c060000 	lui	a2,0x0
 504:	24c60028 	addiu	a2,a2,40
 508:	24480008 	addiu	t0,v0,8
 50c:	ae0802c0 	sw	t0,704(s0)
 510:	ac490000 	sw	t1,0(v0)
 514:	8faa0048 	lw	t2,72(sp)
 518:	27a40030 	addiu	a0,sp,48
 51c:	24070151 	li	a3,337
 520:	854b001c 	lh	t3,28(t2)
 524:	000b6080 	sll	t4,t3,0x2
 528:	01ac6821 	addu	t5,t5,t4
 52c:	8dad0058 	lw	t5,88(t5)
 530:	ac4d0004 	sw	t5,4(v0)
 534:	0c000000 	jal	0 <EnNutsball_Init>
 538:	8e250000 	lw	a1,0(s1)
 53c:	8fbf001c 	lw	ra,28(sp)
 540:	8fb00014 	lw	s0,20(sp)
 544:	8fb10018 	lw	s1,24(sp)
 548:	03e00008 	jr	ra
 54c:	27bd0048 	addiu	sp,sp,72
