
build/src/overlays/actors/ovl_En_Yukabyun/z_en_yukabyun.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnYukabyun_Init>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afa5002c 	sw	a1,44(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	0c000000 	jal	0 <EnYukabyun_Init>
  1c:	24a5004c 	addiu	a1,a1,76
  20:	3c060000 	lui	a2,0x0
  24:	3c073ecc 	lui	a3,0x3ecc
  28:	34e7cccd 	ori	a3,a3,0xcccd
  2c:	24c60000 	addiu	a2,a2,0
  30:	260400b4 	addiu	a0,s0,180
  34:	0c000000 	jal	0 <EnYukabyun_Init>
  38:	24050000 	li	a1,0
  3c:	26050154 	addiu	a1,s0,340
  40:	afa50020 	sw	a1,32(sp)
  44:	0c000000 	jal	0 <EnYukabyun_Init>
  48:	8fa4002c 	lw	a0,44(sp)
  4c:	3c070000 	lui	a3,0x0
  50:	8fa50020 	lw	a1,32(sp)
  54:	24e70020 	addiu	a3,a3,32
  58:	8fa4002c 	lw	a0,44(sp)
  5c:	0c000000 	jal	0 <EnYukabyun_Init>
  60:	02003025 	move	a2,s0
  64:	860e001c 	lh	t6,28(s0)
  68:	3c090000 	lui	t1,0x0
  6c:	25290000 	addiu	t1,t1,0
  70:	25cf0001 	addiu	t7,t6,1
  74:	a60f001c 	sh	t7,28(s0)
  78:	9218001d 	lbu	t8,29(s0)
  7c:	a2000152 	sb	zero,338(s0)
  80:	ae09014c 	sw	t1,332(s0)
  84:	0018c880 	sll	t9,t8,0x2
  88:	0338c821 	addu	t9,t9,t8
  8c:	0019c840 	sll	t9,t9,0x1
  90:	27280014 	addiu	t0,t9,20
  94:	a6080150 	sh	t0,336(s0)
  98:	8fbf001c 	lw	ra,28(sp)
  9c:	8fb00018 	lw	s0,24(sp)
  a0:	27bd0028 	addiu	sp,sp,40
  a4:	03e00008 	jr	ra
  a8:	00000000 	nop

000000ac <EnYukabyun_Destroy>:
  ac:	27bdffe8 	addiu	sp,sp,-24
  b0:	00803025 	move	a2,a0
  b4:	afbf0014 	sw	ra,20(sp)
  b8:	00a02025 	move	a0,a1
  bc:	0c000000 	jal	0 <EnYukabyun_Init>
  c0:	24c50154 	addiu	a1,a2,340
  c4:	8fbf0014 	lw	ra,20(sp)
  c8:	27bd0018 	addiu	sp,sp,24
  cc:	03e00008 	jr	ra
  d0:	00000000 	nop

000000d4 <func_80B43A94>:
  d4:	afa50004 	sw	a1,4(sp)
  d8:	84820150 	lh	v0,336(a0)
  dc:	3c190000 	lui	t9,0x0
  e0:	10400003 	beqz	v0,f0 <func_80B43A94+0x1c>
  e4:	244effff 	addiu	t6,v0,-1
  e8:	a48e0150 	sh	t6,336(a0)
  ec:	84820150 	lh	v0,336(a0)
  f0:	14400006 	bnez	v0,10c <func_80B43A94+0x38>
  f4:	00000000 	nop
  f8:	8c8f0004 	lw	t7,4(a0)
  fc:	27390000 	addiu	t9,t9,0
 100:	ac99014c 	sw	t9,332(a0)
 104:	35f81005 	ori	t8,t7,0x1005
 108:	ac980004 	sw	t8,4(a0)
 10c:	03e00008 	jr	ra
 110:	00000000 	nop

00000114 <func_80B43AD4>:
 114:	27bdffe8 	addiu	sp,sp,-24
 118:	afbf0014 	sw	ra,20(sp)
 11c:	afa5001c 	sw	a1,28(sp)
 120:	848e0150 	lh	t6,336(a0)
 124:	849800b6 	lh	t8,182(a0)
 128:	3c090000 	lui	t1,0x0
 12c:	25cf00a0 	addiu	t7,t6,160
 130:	a48f0150 	sh	t7,336(a0)
 134:	84820150 	lh	v0,336(a0)
 138:	00803825 	move	a3,a0
 13c:	25290000 	addiu	t1,t1,0
 140:	0302c821 	addu	t9,t8,v0
 144:	28412000 	slti	at,v0,8192
 148:	14200007 	bnez	at,168 <func_80B43AD4+0x54>
 14c:	a49900b6 	sh	t9,182(a0)
 150:	3c014120 	lui	at,0x4120
 154:	8488008a 	lh	t0,138(a0)
 158:	44812000 	mtc1	at,$f4
 15c:	ac89014c 	sw	t1,332(a0)
 160:	a4880032 	sh	t0,50(a0)
 164:	e4840068 	swc1	$f4,104(a0)
 168:	3c0141f0 	lui	at,0x41f0
 16c:	44814000 	mtc1	at,$f8
 170:	c4e6000c 	lwc1	$f6,12(a3)
 174:	afa70018 	sw	a3,24(sp)
 178:	24e40028 	addiu	a0,a3,40
 17c:	46083280 	add.s	$f10,$f6,$f8
 180:	3c063f80 	lui	a2,0x3f80
 184:	44055000 	mfc1	a1,$f10
 188:	0c000000 	jal	0 <EnYukabyun_Init>
 18c:	00000000 	nop
 190:	8fa40018 	lw	a0,24(sp)
 194:	0c000000 	jal	0 <EnYukabyun_Init>
 198:	24053179 	li	a1,12665
 19c:	8fbf0014 	lw	ra,20(sp)
 1a0:	27bd0018 	addiu	sp,sp,24
 1a4:	03e00008 	jr	ra
 1a8:	00000000 	nop

000001ac <func_80B43B6C>:
 1ac:	27bdffe8 	addiu	sp,sp,-24
 1b0:	afbf0014 	sw	ra,20(sp)
 1b4:	afa5001c 	sw	a1,28(sp)
 1b8:	848e00b6 	lh	t6,182(a0)
 1bc:	848f0150 	lh	t7,336(a0)
 1c0:	3c010000 	lui	at,0x0
 1c4:	c4860090 	lwc1	$f6,144(a0)
 1c8:	01cfc021 	addu	t8,t6,t7
 1cc:	a49800b6 	sh	t8,182(a0)
 1d0:	c424003c 	lwc1	$f4,60(at)
 1d4:	4606203c 	c.lt.s	$f4,$f6
 1d8:	00000000 	nop
 1dc:	45000005 	bc1f	1f4 <func_80B43B6C+0x48>
 1e0:	00000000 	nop
 1e4:	0c000000 	jal	0 <EnYukabyun_Init>
 1e8:	00000000 	nop
 1ec:	10000004 	b	200 <func_80B43B6C+0x54>
 1f0:	8fbf0014 	lw	ra,20(sp)
 1f4:	0c000000 	jal	0 <EnYukabyun_Init>
 1f8:	24053179 	li	a1,12665
 1fc:	8fbf0014 	lw	ra,20(sp)
 200:	27bd0018 	addiu	sp,sp,24
 204:	03e00008 	jr	ra
 208:	00000000 	nop

0000020c <EnYukabyun_Break>:
 20c:	27bdffd0 	addiu	sp,sp,-48
 210:	afa40030 	sw	a0,48(sp)
 214:	afa50034 	sw	a1,52(sp)
 218:	00a02025 	move	a0,a1
 21c:	8fa50030 	lw	a1,48(sp)
 220:	3c090000 	lui	t1,0x0
 224:	afbf002c 	sw	ra,44(sp)
 228:	25290000 	addiu	t1,t1,0
 22c:	240e0514 	li	t6,1300
 230:	240f012c 	li	t7,300
 234:	2418000f 	li	t8,15
 238:	2419005f 	li	t9,95
 23c:	2408000a 	li	t0,10
 240:	afa80020 	sw	t0,32(sp)
 244:	afb9001c 	sw	t9,28(sp)
 248:	afb80018 	sw	t8,24(sp)
 24c:	afaf0014 	sw	t7,20(sp)
 250:	afae0010 	sw	t6,16(sp)
 254:	afa90024 	sw	t1,36(sp)
 258:	3c064100 	lui	a2,0x4100
 25c:	00003825 	move	a3,zero
 260:	0c000000 	jal	0 <EnYukabyun_Init>
 264:	24a50024 	addiu	a1,a1,36
 268:	0c000000 	jal	0 <EnYukabyun_Init>
 26c:	8fa40030 	lw	a0,48(sp)
 270:	8fbf002c 	lw	ra,44(sp)
 274:	27bd0030 	addiu	sp,sp,48
 278:	03e00008 	jr	ra
 27c:	00000000 	nop

00000280 <EnYukabyun_Update>:
 280:	27bdffc8 	addiu	sp,sp,-56
 284:	afbf0024 	sw	ra,36(sp)
 288:	afb10020 	sw	s1,32(sp)
 28c:	afb0001c 	sw	s0,28(sp)
 290:	90830164 	lbu	v1,356(a0)
 294:	00808025 	move	s0,a0
 298:	00a08825 	move	s1,a1
 29c:	306e0002 	andi	t6,v1,0x2
 2a0:	15c00017 	bnez	t6,300 <EnYukabyun_Update+0x80>
 2a4:	26050024 	addiu	a1,s0,36
 2a8:	908f0165 	lbu	t7,357(a0)
 2ac:	31f80002 	andi	t8,t7,0x2
 2b0:	57000014 	bnezl	t8,304 <EnYukabyun_Update+0x84>
 2b4:	920f0165 	lbu	t7,357(s0)
 2b8:	90990166 	lbu	t9,358(a0)
 2bc:	33280002 	andi	t0,t9,0x2
 2c0:	51000007 	beqzl	t0,2e0 <EnYukabyun_Update+0x60>
 2c4:	8e02014c 	lw	v0,332(s0)
 2c8:	8c890160 	lw	t1,352(a0)
 2cc:	2401006b 	li	at,107
 2d0:	852a0000 	lh	t2,0(t1)
 2d4:	5541000b 	bnel	t2,at,304 <EnYukabyun_Update+0x84>
 2d8:	920f0165 	lbu	t7,357(s0)
 2dc:	8e02014c 	lw	v0,332(s0)
 2e0:	3c0b0000 	lui	t3,0x0
 2e4:	256b0000 	addiu	t3,t3,0
 2e8:	55620019 	bnel	t3,v0,350 <EnYukabyun_Update+0xd0>
 2ec:	02002025 	move	a0,s0
 2f0:	960c0088 	lhu	t4,136(s0)
 2f4:	318d0008 	andi	t5,t4,0x8
 2f8:	51a00015 	beqzl	t5,350 <EnYukabyun_Update+0xd0>
 2fc:	02002025 	move	a0,s0
 300:	920f0165 	lbu	t7,357(s0)
 304:	92190166 	lbu	t9,358(s0)
 308:	8e090004 	lw	t1,4(s0)
 30c:	2401fffa 	li	at,-6
 310:	306efffd 	andi	t6,v1,0xfffd
 314:	31f8fffd 	andi	t8,t7,0xfffd
 318:	3328fffd 	andi	t0,t9,0xfffd
 31c:	01215024 	and	t2,t1,at
 320:	a20e0164 	sb	t6,356(s0)
 324:	a2180165 	sb	t8,357(s0)
 328:	a2080166 	sb	t0,358(s0)
 32c:	ae0a0004 	sw	t2,4(s0)
 330:	02202025 	move	a0,s1
 334:	2406001e 	li	a2,30
 338:	0c000000 	jal	0 <EnYukabyun_Init>
 33c:	240738c0 	li	a3,14528
 340:	3c0b0000 	lui	t3,0x0
 344:	25620000 	addiu	v0,t3,0
 348:	ae02014c 	sw	v0,332(s0)
 34c:	02002025 	move	a0,s0
 350:	0040f809 	jalr	v0
 354:	02202825 	move	a1,s1
 358:	0c000000 	jal	0 <EnYukabyun_Init>
 35c:	02002025 	move	a0,s0
 360:	8e02014c 	lw	v0,332(s0)
 364:	3c0c0000 	lui	t4,0x0
 368:	258c0000 	addiu	t4,t4,0
 36c:	11820024 	beq	t4,v0,400 <EnYukabyun_Update+0x180>
 370:	3c0d0000 	lui	t5,0x0
 374:	25ad0000 	addiu	t5,t5,0
 378:	11a20021 	beq	t5,v0,400 <EnYukabyun_Update+0x180>
 37c:	02202025 	move	a0,s1
 380:	3c014100 	lui	at,0x4100
 384:	44812000 	mtc1	at,$f4
 388:	240e0005 	li	t6,5
 38c:	afae0014 	sw	t6,20(sp)
 390:	02002825 	move	a1,s0
 394:	3c0640a0 	lui	a2,0x40a0
 398:	3c0741a0 	lui	a3,0x41a0
 39c:	0c000000 	jal	0 <EnYukabyun_Init>
 3a0:	e7a40010 	swc1	$f4,16(sp)
 3a4:	26050154 	addiu	a1,s0,340
 3a8:	afa50028 	sw	a1,40(sp)
 3ac:	0c000000 	jal	0 <EnYukabyun_Init>
 3b0:	02002025 	move	a0,s0
 3b4:	8e0f0004 	lw	t7,4(s0)
 3b8:	3c010100 	lui	at,0x100
 3bc:	02202025 	move	a0,s1
 3c0:	01e1c025 	or	t8,t7,at
 3c4:	3c010001 	lui	at,0x1
 3c8:	34211e60 	ori	at,at,0x1e60
 3cc:	ae180004 	sw	t8,4(s0)
 3d0:	02212821 	addu	a1,s1,at
 3d4:	afa5002c 	sw	a1,44(sp)
 3d8:	0c000000 	jal	0 <EnYukabyun_Init>
 3dc:	8fa60028 	lw	a2,40(sp)
 3e0:	02202025 	move	a0,s1
 3e4:	8fa5002c 	lw	a1,44(sp)
 3e8:	0c000000 	jal	0 <EnYukabyun_Init>
 3ec:	8fa60028 	lw	a2,40(sp)
 3f0:	02202025 	move	a0,s1
 3f4:	8fa5002c 	lw	a1,44(sp)
 3f8:	0c000000 	jal	0 <EnYukabyun_Init>
 3fc:	8fa60028 	lw	a2,40(sp)
 400:	02002025 	move	a0,s0
 404:	0c000000 	jal	0 <EnYukabyun_Init>
 408:	3c054080 	lui	a1,0x4080
 40c:	8fbf0024 	lw	ra,36(sp)
 410:	8fb0001c 	lw	s0,28(sp)
 414:	8fb10020 	lw	s1,32(sp)
 418:	03e00008 	jr	ra
 41c:	27bd0038 	addiu	sp,sp,56

00000420 <EnYukabyun_Draw>:
 420:	27bdffb8 	addiu	sp,sp,-72
 424:	afbf001c 	sw	ra,28(sp)
 428:	afb00018 	sw	s0,24(sp)
 42c:	afa40048 	sw	a0,72(sp)
 430:	afa5004c 	sw	a1,76(sp)
 434:	8ca50000 	lw	a1,0(a1)
 438:	3c060000 	lui	a2,0x0
 43c:	24c60000 	addiu	a2,a2,0
 440:	27a40030 	addiu	a0,sp,48
 444:	2407016e 	li	a3,366
 448:	0c000000 	jal	0 <EnYukabyun_Init>
 44c:	00a08025 	move	s0,a1
 450:	8faf004c 	lw	t7,76(sp)
 454:	0c000000 	jal	0 <EnYukabyun_Init>
 458:	8de40000 	lw	a0,0(t7)
 45c:	8e0202c0 	lw	v0,704(s0)
 460:	3c19db06 	lui	t9,0xdb06
 464:	37390020 	ori	t9,t9,0x20
 468:	24580008 	addiu	t8,v0,8
 46c:	ae1802c0 	sw	t8,704(s0)
 470:	ac590000 	sw	t9,0(v0)
 474:	8fa80048 	lw	t0,72(sp)
 478:	3c040000 	lui	a0,0x0
 47c:	3c0f0000 	lui	t7,0x0
 480:	91090152 	lbu	t1,338(t0)
 484:	3c0100ff 	lui	at,0xff
 488:	3421ffff 	ori	at,at,0xffff
 48c:	00095080 	sll	t2,t1,0x2
 490:	008a2021 	addu	a0,a0,t2
 494:	8c840000 	lw	a0,0(a0)
 498:	3c09da38 	lui	t1,0xda38
 49c:	35290003 	ori	t1,t1,0x3
 4a0:	00046100 	sll	t4,a0,0x4
 4a4:	000c6f02 	srl	t5,t4,0x1c
 4a8:	000d7080 	sll	t6,t5,0x2
 4ac:	01ee7821 	addu	t7,t7,t6
 4b0:	8def0000 	lw	t7,0(t7)
 4b4:	00815824 	and	t3,a0,at
 4b8:	3c018000 	lui	at,0x8000
 4bc:	016fc021 	addu	t8,t3,t7
 4c0:	0301c821 	addu	t9,t8,at
 4c4:	ac590004 	sw	t9,4(v0)
 4c8:	8e0202c0 	lw	v0,704(s0)
 4cc:	3c050000 	lui	a1,0x0
 4d0:	24a50014 	addiu	a1,a1,20
 4d4:	24480008 	addiu	t0,v0,8
 4d8:	ae0802c0 	sw	t0,704(s0)
 4dc:	ac490000 	sw	t1,0(v0)
 4e0:	8faa004c 	lw	t2,76(sp)
 4e4:	24060175 	li	a2,373
 4e8:	8d440000 	lw	a0,0(t2)
 4ec:	0c000000 	jal	0 <EnYukabyun_Init>
 4f0:	afa20028 	sw	v0,40(sp)
 4f4:	8fa30028 	lw	v1,40(sp)
 4f8:	3c0e0000 	lui	t6,0x0
 4fc:	25ce0000 	addiu	t6,t6,0
 500:	ac620004 	sw	v0,4(v1)
 504:	8e0202c0 	lw	v0,704(s0)
 508:	3c0dde00 	lui	t5,0xde00
 50c:	3c060000 	lui	a2,0x0
 510:	244c0008 	addiu	t4,v0,8
 514:	ae0c02c0 	sw	t4,704(s0)
 518:	ac4e0004 	sw	t6,4(v0)
 51c:	ac4d0000 	sw	t5,0(v0)
 520:	8fab004c 	lw	t3,76(sp)
 524:	24c60028 	addiu	a2,a2,40
 528:	27a40030 	addiu	a0,sp,48
 52c:	2407017a 	li	a3,378
 530:	0c000000 	jal	0 <EnYukabyun_Init>
 534:	8d650000 	lw	a1,0(t3)
 538:	8fbf001c 	lw	ra,28(sp)
 53c:	8fb00018 	lw	s0,24(sp)
 540:	27bd0048 	addiu	sp,sp,72
 544:	03e00008 	jr	ra
 548:	00000000 	nop
 54c:	00000000 	nop
