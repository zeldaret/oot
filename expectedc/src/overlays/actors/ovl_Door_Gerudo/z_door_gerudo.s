
build/src/overlays/actors/ovl_Door_Gerudo/z_door_gerudo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <DoorGerudo_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afa50034 	sw	a1,52(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00024 	sw	zero,36(sp)
  1c:	0c000000 	jal	0 <DoorGerudo_Init>
  20:	24a50020 	addiu	a1,a1,32
  24:	3c040000 	lui	a0,0x0
  28:	24840000 	addiu	a0,a0,0
  2c:	0c000000 	jal	0 <DoorGerudo_Init>
  30:	27a50024 	addiu	a1,sp,36
  34:	8fa40034 	lw	a0,52(sp)
  38:	02003025 	move	a2,s0
  3c:	8fa70024 	lw	a3,36(sp)
  40:	0c000000 	jal	0 <DoorGerudo_Init>
  44:	24850810 	addiu	a1,a0,2064
  48:	8605001c 	lh	a1,28(s0)
  4c:	ae02014c 	sw	v0,332(s0)
  50:	8fa40034 	lw	a0,52(sp)
  54:	0c000000 	jal	0 <DoorGerudo_Init>
  58:	30a5003f 	andi	a1,a1,0x3f
  5c:	1040000a 	beqz	v0,88 <DoorGerudo_Init+0x88>
  60:	3c0f0000 	lui	t7,0x0
  64:	3c014348 	lui	at,0x4348
  68:	44813000 	mtc1	at,$f6
  6c:	c604000c 	lwc1	$f4,12(s0)
  70:	3c0e0000 	lui	t6,0x0
  74:	25ce0000 	addiu	t6,t6,0
  78:	46062200 	add.s	$f8,$f4,$f6
  7c:	ae0e0168 	sw	t6,360(s0)
  80:	10000005 	b	98 <DoorGerudo_Init+0x98>
  84:	e6080028 	swc1	$f8,40(s0)
  88:	25ef0000 	addiu	t7,t7,0
  8c:	2418000a 	li	t8,10
  90:	ae0f0168 	sw	t7,360(s0)
  94:	a2180166 	sb	t8,358(s0)
  98:	8fbf001c 	lw	ra,28(sp)
  9c:	8fb00018 	lw	s0,24(sp)
  a0:	27bd0030 	addiu	sp,sp,48
  a4:	03e00008 	jr	ra
  a8:	00000000 	nop

000000ac <DoorGerudo_Destroy>:
  ac:	27bdffe8 	addiu	sp,sp,-24
  b0:	afa40018 	sw	a0,24(sp)
  b4:	8fae0018 	lw	t6,24(sp)
  b8:	afbf0014 	sw	ra,20(sp)
  bc:	00a02025 	move	a0,a1
  c0:	24a50810 	addiu	a1,a1,2064
  c4:	0c000000 	jal	0 <DoorGerudo_Init>
  c8:	8dc6014c 	lw	a2,332(t6)
  cc:	8fbf0014 	lw	ra,20(sp)
  d0:	27bd0018 	addiu	sp,sp,24
  d4:	03e00008 	jr	ra
  d8:	00000000 	nop

000000dc <func_809946BC>:
  dc:	27bdffc8 	addiu	sp,sp,-56
  e0:	afbf0014 	sw	ra,20(sp)
  e4:	afa40038 	sw	a0,56(sp)
  e8:	afa5003c 	sw	a1,60(sp)
  ec:	afa70044 	sw	a3,68(sp)
  f0:	8c821c44 	lw	v0,7236(a0)
  f4:	44866000 	mtc1	a2,$f12
  f8:	00a02025 	move	a0,a1
  fc:	c4440024 	lwc1	$f4,36(v0)
 100:	27a5001c 	addiu	a1,sp,28
 104:	27a60028 	addiu	a2,sp,40
 108:	e7a40028 	swc1	$f4,40(sp)
 10c:	c4460028 	lwc1	$f6,40(v0)
 110:	460c3200 	add.s	$f8,$f6,$f12
 114:	e7a8002c 	swc1	$f8,44(sp)
 118:	c44a002c 	lwc1	$f10,44(v0)
 11c:	0c000000 	jal	0 <DoorGerudo_Init>
 120:	e7aa0030 	swc1	$f10,48(sp)
 124:	c7a0001c 	lwc1	$f0,28(sp)
 128:	c7b00044 	lwc1	$f16,68(sp)
 12c:	c7b20048 	lwc1	$f18,72(sp)
 130:	46000005 	abs.s	$f0,$f0
 134:	3c010000 	lui	at,0x0
 138:	4600803c 	c.lt.s	$f16,$f0
 13c:	c7a00020 	lwc1	$f0,32(sp)
 140:	8fbf0014 	lw	ra,20(sp)
 144:	45010006 	bc1t	160 <func_809946BC+0x84>
 148:	00000000 	nop
 14c:	46000005 	abs.s	$f0,$f0
 150:	4600903c 	c.lt.s	$f18,$f0
 154:	c7a00024 	lwc1	$f0,36(sp)
 158:	45000003 	bc1f	168 <func_809946BC+0x8c>
 15c:	00000000 	nop
 160:	10000001 	b	168 <func_809946BC+0x8c>
 164:	c420003c 	lwc1	$f0,60(at)
 168:	03e00008 	jr	ra
 16c:	27bd0038 	addiu	sp,sp,56

00000170 <func_80994750>:
 170:	27bdffd8 	addiu	sp,sp,-40
 174:	afbf001c 	sw	ra,28(sp)
 178:	afa40028 	sw	a0,40(sp)
 17c:	8cae1c44 	lw	t6,7236(a1)
 180:	afa5002c 	sw	a1,44(sp)
 184:	00a02025 	move	a0,a1
 188:	0c000000 	jal	0 <DoorGerudo_Init>
 18c:	afae0024 	sw	t6,36(sp)
 190:	14400035 	bnez	v0,268 <func_80994750+0xf8>
 194:	8fa4002c 	lw	a0,44(sp)
 198:	3c014170 	lui	at,0x4170
 19c:	44812000 	mtc1	at,$f4
 1a0:	8fa50028 	lw	a1,40(sp)
 1a4:	24060000 	li	a2,0
 1a8:	3c0741a0 	lui	a3,0x41a0
 1ac:	0c000000 	jal	0 <DoorGerudo_Init>
 1b0:	e7a40010 	swc1	$f4,16(sp)
 1b4:	3c014220 	lui	at,0x4220
 1b8:	44813000 	mtc1	at,$f6
 1bc:	46000086 	mov.s	$f2,$f0
 1c0:	46000005 	abs.s	$f0,$f0
 1c4:	44806000 	mtc1	zero,$f12
 1c8:	4606003c 	c.lt.s	$f0,$f6
 1cc:	8faf0024 	lw	t7,36(sp)
 1d0:	8fb90028 	lw	t9,40(sp)
 1d4:	45020025 	bc1fl	26c <func_80994750+0xfc>
 1d8:	00001025 	move	v0,zero
 1dc:	85f800b6 	lh	t8,182(t7)
 1e0:	872800b6 	lh	t0,182(t9)
 1e4:	4602603c 	c.lt.s	$f12,$f2
 1e8:	34098000 	li	t1,0x8000
 1ec:	03081023 	subu	v0,t8,t0
 1f0:	00021400 	sll	v0,v0,0x10
 1f4:	45000004 	bc1f	208 <func_80994750+0x98>
 1f8:	00021403 	sra	v0,v0,0x10
 1fc:	01221023 	subu	v0,t1,v0
 200:	00021400 	sll	v0,v0,0x10
 204:	00021403 	sra	v0,v0,0x10
 208:	04400003 	bltz	v0,218 <func_80994750+0xa8>
 20c:	00021823 	negu	v1,v0
 210:	10000001 	b	218 <func_80994750+0xa8>
 214:	00401825 	move	v1,v0
 218:	28612000 	slti	at,v1,8192
 21c:	50200013 	beqzl	at,26c <func_80994750+0xfc>
 220:	00001025 	move	v0,zero
 224:	4602603e 	c.le.s	$f12,$f2
 228:	3c01bf80 	lui	at,0xbf80
 22c:	45020009 	bc1fl	254 <func_80994750+0xe4>
 230:	44810000 	mtc1	at,$f0
 234:	3c013f80 	lui	at,0x3f80
 238:	44810000 	mtc1	at,$f0
 23c:	00000000 	nop
 240:	4600020d 	trunc.w.s	$f8,$f0
 244:	44024000 	mfc1	v0,$f8
 248:	10000009 	b	270 <func_80994750+0x100>
 24c:	8fbf001c 	lw	ra,28(sp)
 250:	44810000 	mtc1	at,$f0
 254:	00000000 	nop
 258:	4600020d 	trunc.w.s	$f8,$f0
 25c:	44024000 	mfc1	v0,$f8
 260:	10000003 	b	270 <func_80994750+0x100>
 264:	8fbf001c 	lw	ra,28(sp)
 268:	00001025 	move	v0,zero
 26c:	8fbf001c 	lw	ra,28(sp)
 270:	27bd0028 	addiu	sp,sp,40
 274:	03e00008 	jr	ra
 278:	00000000 	nop

0000027c <func_8099485C>:
 27c:	27bdffd8 	addiu	sp,sp,-40
 280:	afbf001c 	sw	ra,28(sp)
 284:	afb00018 	sw	s0,24(sp)
 288:	848e0164 	lh	t6,356(a0)
 28c:	00808025 	move	s0,a0
 290:	00a03025 	move	a2,a1
 294:	11c00013 	beqz	t6,2e4 <func_8099485C+0x68>
 298:	3c080000 	lui	t0,0x0
 29c:	3c0f0000 	lui	t7,0x0
 2a0:	25ef0000 	addiu	t7,t7,0
 2a4:	25080000 	addiu	t0,t0,0
 2a8:	ac8f0168 	sw	t7,360(a0)
 2ac:	95181402 	lhu	t8,5122(t0)
 2b0:	00a02025 	move	a0,a1
 2b4:	01181021 	addu	v0,t0,t8
 2b8:	805900bc 	lb	t9,188(v0)
 2bc:	2729ffff 	addiu	t1,t9,-1
 2c0:	a04900bc 	sb	t1,188(v0)
 2c4:	8605001c 	lh	a1,28(s0)
 2c8:	0c000000 	jal	0 <DoorGerudo_Init>
 2cc:	30a5003f 	andi	a1,a1,0x3f
 2d0:	02002025 	move	a0,s0
 2d4:	0c000000 	jal	0 <DoorGerudo_Init>
 2d8:	2405287c 	li	a1,10364
 2dc:	10000027 	b	37c <func_8099485C+0x100>
 2e0:	8fbf001c 	lw	ra,28(sp)
 2e4:	02002025 	move	a0,s0
 2e8:	00c02825 	move	a1,a2
 2ec:	0c000000 	jal	0 <DoorGerudo_Init>
 2f0:	afa6002c 	sw	a2,44(sp)
 2f4:	8fa6002c 	lw	a2,44(sp)
 2f8:	1040001f 	beqz	v0,378 <func_8099485C+0xfc>
 2fc:	00403825 	move	a3,v0
 300:	3c080000 	lui	t0,0x0
 304:	25080000 	addiu	t0,t0,0
 308:	950a1402 	lhu	t2,5122(t0)
 30c:	8cc31c44 	lw	v1,7236(a2)
 310:	240dfdfd 	li	t5,-515
 314:	010a5821 	addu	t3,t0,t2
 318:	816c00bc 	lb	t4,188(t3)
 31c:	00c02025 	move	a0,a2
 320:	5d800004 	bgtzl	t4,334 <func_8099485C+0xb8>
 324:	8605001c 	lh	a1,28(s0)
 328:	10000013 	b	378 <func_8099485C+0xfc>
 32c:	a46d0690 	sh	t5,1680(v1)
 330:	8605001c 	lh	a1,28(s0)
 334:	afa70024 	sw	a3,36(sp)
 338:	afa30020 	sw	v1,32(sp)
 33c:	00052a03 	sra	a1,a1,0x8
 340:	0c000000 	jal	0 <DoorGerudo_Init>
 344:	30a5001f 	andi	a1,a1,0x1f
 348:	8fa30020 	lw	v1,32(sp)
 34c:	14400004 	bnez	v0,360 <func_8099485C+0xe4>
 350:	8fa70024 	lw	a3,36(sp)
 354:	240efddb 	li	t6,-549
 358:	10000007 	b	378 <func_8099485C+0xfc>
 35c:	a46e0690 	sh	t6,1680(v1)
 360:	240f0002 	li	t7,2
 364:	2418000a 	li	t8,10
 368:	a06f042c 	sb	t7,1068(v1)
 36c:	a067042d 	sb	a3,1069(v1)
 370:	ac700430 	sw	s0,1072(v1)
 374:	a478042e 	sh	t8,1070(v1)
 378:	8fbf001c 	lw	ra,28(sp)
 37c:	8fb00018 	lw	s0,24(sp)
 380:	27bd0028 	addiu	sp,sp,40
 384:	03e00008 	jr	ra
 388:	00000000 	nop

0000038c <func_8099496C>:
 38c:	27bdffe8 	addiu	sp,sp,-24
 390:	afbf0014 	sw	ra,20(sp)
 394:	afa5001c 	sw	a1,28(sp)
 398:	90820166 	lbu	v0,358(a0)
 39c:	24052814 	li	a1,10260
 3a0:	14400003 	bnez	v0,3b0 <func_8099496C+0x24>
 3a4:	244effff 	addiu	t6,v0,-1
 3a8:	10000003 	b	3b8 <func_8099496C+0x2c>
 3ac:	00001825 	move	v1,zero
 3b0:	a08e0166 	sb	t6,358(a0)
 3b4:	31c300ff 	andi	v1,t6,0xff
 3b8:	54600008 	bnezl	v1,3dc <func_8099496C+0x50>
 3bc:	8fbf0014 	lw	ra,20(sp)
 3c0:	0c000000 	jal	0 <DoorGerudo_Init>
 3c4:	afa40018 	sw	a0,24(sp)
 3c8:	8fa40018 	lw	a0,24(sp)
 3cc:	3c0f0000 	lui	t7,0x0
 3d0:	25ef0000 	addiu	t7,t7,0
 3d4:	ac8f0168 	sw	t7,360(a0)
 3d8:	8fbf0014 	lw	ra,20(sp)
 3dc:	27bd0018 	addiu	sp,sp,24
 3e0:	03e00008 	jr	ra
 3e4:	00000000 	nop

000003e8 <func_809949C8>:
 3e8:	27bdffe8 	addiu	sp,sp,-24
 3ec:	afbf0014 	sw	ra,20(sp)
 3f0:	afa5001c 	sw	a1,28(sp)
 3f4:	00803825 	move	a3,a0
 3f8:	afa70018 	sw	a3,24(sp)
 3fc:	24840060 	addiu	a0,a0,96
 400:	3c054170 	lui	a1,0x4170
 404:	0c000000 	jal	0 <DoorGerudo_Init>
 408:	3c064040 	lui	a2,0x4040
 40c:	8fa70018 	lw	a3,24(sp)
 410:	3c014348 	lui	at,0x4348
 414:	44813000 	mtc1	at,$f6
 418:	c4e4000c 	lwc1	$f4,12(a3)
 41c:	24e40028 	addiu	a0,a3,40
 420:	8ce60060 	lw	a2,96(a3)
 424:	46062200 	add.s	$f8,$f4,$f6
 428:	44054000 	mfc1	a1,$f8
 42c:	0c000000 	jal	0 <DoorGerudo_Init>
 430:	00000000 	nop
 434:	8fbf0014 	lw	ra,20(sp)
 438:	27bd0018 	addiu	sp,sp,24
 43c:	03e00008 	jr	ra
 440:	00000000 	nop

00000444 <DoorGerudo_Update>:
 444:	27bdffe8 	addiu	sp,sp,-24
 448:	afbf0014 	sw	ra,20(sp)
 44c:	8c990168 	lw	t9,360(a0)
 450:	0320f809 	jalr	t9
 454:	00000000 	nop
 458:	8fbf0014 	lw	ra,20(sp)
 45c:	27bd0018 	addiu	sp,sp,24
 460:	03e00008 	jr	ra
 464:	00000000 	nop

00000468 <DoorGerudo_Draw>:
 468:	27bdffb8 	addiu	sp,sp,-72
 46c:	afb10018 	sw	s1,24(sp)
 470:	00a08825 	move	s1,a1
 474:	afbf001c 	sw	ra,28(sp)
 478:	afb00014 	sw	s0,20(sp)
 47c:	afa40048 	sw	a0,72(sp)
 480:	8ca50000 	lw	a1,0(a1)
 484:	3c060000 	lui	a2,0x0
 488:	24c60000 	addiu	a2,a2,0
 48c:	27a40030 	addiu	a0,sp,48
 490:	24070169 	li	a3,361
 494:	0c000000 	jal	0 <DoorGerudo_Init>
 498:	00a08025 	move	s0,a1
 49c:	0c000000 	jal	0 <DoorGerudo_Init>
 4a0:	8e240000 	lw	a0,0(s1)
 4a4:	8e0202c0 	lw	v0,704(s0)
 4a8:	3c0fda38 	lui	t7,0xda38
 4ac:	35ef0003 	ori	t7,t7,0x3
 4b0:	244e0008 	addiu	t6,v0,8
 4b4:	ae0e02c0 	sw	t6,704(s0)
 4b8:	ac4f0000 	sw	t7,0(v0)
 4bc:	8e240000 	lw	a0,0(s1)
 4c0:	3c050000 	lui	a1,0x0
 4c4:	24a50014 	addiu	a1,a1,20
 4c8:	2406016d 	li	a2,365
 4cc:	0c000000 	jal	0 <DoorGerudo_Init>
 4d0:	afa2002c 	sw	v0,44(sp)
 4d4:	8fa3002c 	lw	v1,44(sp)
 4d8:	3c080000 	lui	t0,0x0
 4dc:	25080000 	addiu	t0,t0,0
 4e0:	ac620004 	sw	v0,4(v1)
 4e4:	8e0202c0 	lw	v0,704(s0)
 4e8:	3c19de00 	lui	t9,0xde00
 4ec:	3c063ccc 	lui	a2,0x3ccc
 4f0:	24580008 	addiu	t8,v0,8
 4f4:	ae1802c0 	sw	t8,704(s0)
 4f8:	ac480004 	sw	t0,4(v0)
 4fc:	ac590000 	sw	t9,0(v0)
 500:	8fa90048 	lw	t1,72(sp)
 504:	3c010000 	lui	at,0x0
 508:	34c6cccd 	ori	a2,a2,0xcccd
 50c:	912a0166 	lbu	t2,358(t1)
 510:	1140000a 	beqz	t2,53c <DoorGerudo_Draw+0xd4>
 514:	00000000 	nop
 518:	c42c0040 	lwc1	$f12,64(at)
 51c:	24070001 	li	a3,1
 520:	0c000000 	jal	0 <DoorGerudo_Init>
 524:	46006386 	mov.s	$f14,$f12
 528:	8fab0048 	lw	t3,72(sp)
 52c:	02202025 	move	a0,s1
 530:	00003025 	move	a2,zero
 534:	0c000000 	jal	0 <DoorGerudo_Init>
 538:	91650166 	lbu	a1,358(t3)
 53c:	3c060000 	lui	a2,0x0
 540:	24c60028 	addiu	a2,a2,40
 544:	27a40030 	addiu	a0,sp,48
 548:	8e250000 	lw	a1,0(s1)
 54c:	0c000000 	jal	0 <DoorGerudo_Init>
 550:	24070179 	li	a3,377
 554:	8fbf001c 	lw	ra,28(sp)
 558:	8fb00014 	lw	s0,20(sp)
 55c:	8fb10018 	lw	s1,24(sp)
 560:	03e00008 	jr	ra
 564:	27bd0048 	addiu	sp,sp,72
	...
