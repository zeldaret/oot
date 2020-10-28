
build/src/overlays/actors/ovl_Oceff_Wipe/z_oceff_wipe.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <OceffWipe_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa5001c 	sw	a1,28(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	3c053dcc 	lui	a1,0x3dcc
  10:	34a5cccd 	ori	a1,a1,0xcccd
  14:	0c000000 	jal	0 <OceffWipe_Init>
  18:	afa40018 	sw	a0,24(sp)
  1c:	8fa60018 	lw	a2,24(sp)
  20:	8fa2001c 	lw	v0,28(sp)
  24:	3c040000 	lui	a0,0x0
  28:	a4c0014c 	sh	zero,332(a2)
  2c:	844e07a0 	lh	t6,1952(v0)
  30:	24840000 	addiu	a0,a0,0
  34:	84c5001c 	lh	a1,28(a2)
  38:	000e7880 	sll	t7,t6,0x2
  3c:	004fc021 	addu	t8,v0,t7
  40:	8f190790 	lw	t9,1936(t8)
  44:	8f29005c 	lw	t1,92(t9)
  48:	acc90024 	sw	t1,36(a2)
  4c:	8f280060 	lw	t0,96(t9)
  50:	acc80028 	sw	t0,40(a2)
  54:	8f290064 	lw	t1,100(t9)
  58:	0c000000 	jal	0 <OceffWipe_Init>
  5c:	acc9002c 	sw	t1,44(a2)
  60:	8fbf0014 	lw	ra,20(sp)
  64:	27bd0018 	addiu	sp,sp,24
  68:	03e00008 	jr	ra
  6c:	00000000 	nop

00000070 <OceffWipe_Destroy>:
  70:	27bdffe0 	addiu	sp,sp,-32
  74:	afbf0014 	sw	ra,20(sp)
  78:	afa40020 	sw	a0,32(sp)
  7c:	8ca21c44 	lw	v0,7236(a1)
  80:	00a02025 	move	a0,a1
  84:	0c000000 	jal	0 <OceffWipe_Init>
  88:	afa20018 	sw	v0,24(sp)
  8c:	3c0e0000 	lui	t6,0x0
  90:	85ce13c8 	lh	t6,5064(t6)
  94:	8fa20018 	lw	v0,24(sp)
  98:	51c00005 	beqzl	t6,b0 <OceffWipe_Destroy+0x40>
  9c:	8fbf0014 	lw	ra,20(sp)
  a0:	904f0692 	lbu	t7,1682(v0)
  a4:	35f80040 	ori	t8,t7,0x40
  a8:	a0580692 	sb	t8,1682(v0)
  ac:	8fbf0014 	lw	ra,20(sp)
  b0:	27bd0020 	addiu	sp,sp,32
  b4:	03e00008 	jr	ra
  b8:	00000000 	nop

000000bc <OceffWipe_Update>:
  bc:	27bdffe8 	addiu	sp,sp,-24
  c0:	afbf0014 	sw	ra,20(sp)
  c4:	84ae07a0 	lh	t6,1952(a1)
  c8:	8482014c 	lh	v0,332(a0)
  cc:	000e7880 	sll	t7,t6,0x2
  d0:	00afc021 	addu	t8,a1,t7
  d4:	8f190790 	lw	t9,1936(t8)
  d8:	28410064 	slti	at,v0,100
  dc:	244a0001 	addiu	t2,v0,1
  e0:	8f29005c 	lw	t1,92(t9)
  e4:	ac890024 	sw	t1,36(a0)
  e8:	8f280060 	lw	t0,96(t9)
  ec:	ac880028 	sw	t0,40(a0)
  f0:	8f290064 	lw	t1,100(t9)
  f4:	10200003 	beqz	at,104 <OceffWipe_Update+0x48>
  f8:	ac89002c 	sw	t1,44(a0)
  fc:	10000003 	b	10c <OceffWipe_Update+0x50>
 100:	a48a014c 	sh	t2,332(a0)
 104:	0c000000 	jal	0 <OceffWipe_Init>
 108:	00000000 	nop
 10c:	8fbf0014 	lw	ra,20(sp)
 110:	27bd0018 	addiu	sp,sp,24
 114:	03e00008 	jr	ra
 118:	00000000 	nop

0000011c <OceffWipe_Draw>:
 11c:	27bdff48 	addiu	sp,sp,-184
 120:	afbf003c 	sw	ra,60(sp)
 124:	afb10038 	sw	s1,56(sp)
 128:	afb00034 	sw	s0,52(sp)
 12c:	afa400b8 	sw	a0,184(sp)
 130:	8cae009c 	lw	t6,156(a1)
 134:	27b80094 	addiu	t8,sp,148
 138:	00a08825 	move	s1,a1
 13c:	31cf00ff 	andi	t7,t6,0xff
 140:	afaf00b4 	sw	t7,180(sp)
 144:	84b907a0 	lh	t9,1952(a1)
 148:	27a40084 	addiu	a0,sp,132
 14c:	00195880 	sll	t3,t9,0x2
 150:	00ab6021 	addu	t4,a1,t3
 154:	8d8d0790 	lw	t5,1936(t4)
 158:	8daf005c 	lw	t7,92(t5)
 15c:	af0f0000 	sw	t7,0(t8)
 160:	8dae0060 	lw	t6,96(t5)
 164:	af0e0004 	sw	t6,4(t8)
 168:	8daf0064 	lw	t7,100(t5)
 16c:	af0f0008 	sw	t7,8(t8)
 170:	84b907a0 	lh	t9,1952(a1)
 174:	00195880 	sll	t3,t9,0x2
 178:	00ab6021 	addu	t4,a1,t3
 17c:	0c000000 	jal	0 <OceffWipe_Init>
 180:	8d850790 	lw	a1,1936(t4)
 184:	8e250000 	lw	a1,0(s1)
 188:	3c060000 	lui	a2,0x0
 18c:	24c60020 	addiu	a2,a2,32
 190:	27a40070 	addiu	a0,sp,112
 194:	2407015a 	li	a3,346
 198:	0c000000 	jal	0 <OceffWipe_Init>
 19c:	00a08025 	move	s0,a1
 1a0:	8faa00b8 	lw	t2,184(sp)
 1a4:	8542014c 	lh	v0,332(t2)
 1a8:	28410020 	slti	at,v0,32
 1ac:	1020000b 	beqz	at,1dc <OceffWipe_Draw+0xc0>
 1b0:	00402025 	move	a0,v0
 1b4:	00042640 	sll	a0,a0,0x19
 1b8:	0c000000 	jal	0 <OceffWipe_Init>
 1bc:	00042403 	sra	a0,a0,0x10
 1c0:	3c0144af 	lui	at,0x44af
 1c4:	44812000 	mtc1	at,$f4
 1c8:	8faa00b8 	lw	t2,184(sp)
 1cc:	46040182 	mul.s	$f6,$f0,$f4
 1d0:	e7a600ac 	swc1	$f6,172(sp)
 1d4:	10000005 	b	1ec <OceffWipe_Draw+0xd0>
 1d8:	8542014c 	lh	v0,332(t2)
 1dc:	3c0144af 	lui	at,0x44af
 1e0:	44814000 	mtc1	at,$f8
 1e4:	00000000 	nop
 1e8:	e7a800ac 	swc1	$f8,172(sp)
 1ec:	28410050 	slti	at,v0,80
 1f0:	1420000e 	bnez	at,22c <OceffWipe_Draw+0x110>
 1f4:	3c030000 	lui	v1,0x0
 1f8:	a3a000a4 	sb	zero,164(sp)
 1fc:	854d014c 	lh	t5,332(t2)
 200:	24020064 	li	v0,100
 204:	004d7023 	subu	t6,v0,t5
 208:	000e78c0 	sll	t7,t6,0x3
 20c:	a3af00a5 	sb	t7,165(sp)
 210:	8559014c 	lh	t9,332(t2)
 214:	00595823 	subu	t3,v0,t9
 218:	000b6080 	sll	t4,t3,0x2
 21c:	018b6023 	subu	t4,t4,t3
 220:	000c6080 	sll	t4,t4,0x2
 224:	10000006 	b	240 <OceffWipe_Draw+0x124>
 228:	a3ac00a6 	sb	t4,166(sp)
 22c:	241800a0 	li	t8,160
 230:	240d00ff 	li	t5,255
 234:	a3a000a4 	sb	zero,164(sp)
 238:	a3b800a5 	sb	t8,165(sp)
 23c:	a3ad00a6 	sb	t5,166(sp)
 240:	3c040000 	lui	a0,0x0
 244:	3c090000 	lui	t1,0x0
 248:	25290014 	addiu	t1,t1,20
 24c:	24840000 	addiu	a0,a0,0
 250:	24630420 	addiu	v1,v1,1056
 254:	27a200a4 	addiu	v0,sp,164
 258:	90850000 	lbu	a1,0(a0)
 25c:	90860001 	lbu	a2,1(a0)
 260:	90870002 	lbu	a3,2(a0)
 264:	30ae00f0 	andi	t6,a1,0xf0
 268:	000e7903 	sra	t7,t6,0x4
 26c:	004fc821 	addu	t9,v0,t7
 270:	30ac000f 	andi	t4,a1,0xf
 274:	932b0000 	lbu	t3,0(t9)
 278:	004cc021 	addu	t8,v0,t4
 27c:	930d0000 	lbu	t5,0(t8)
 280:	30ce00f0 	andi	t6,a2,0xf0
 284:	000e7903 	sra	t7,t6,0x4
 288:	004fc821 	addu	t9,v0,t7
 28c:	30cc000f 	andi	t4,a2,0xf
 290:	a06b000f 	sb	t3,15(v1)
 294:	932b0000 	lbu	t3,0(t9)
 298:	004cc021 	addu	t8,v0,t4
 29c:	a06d001f 	sb	t5,31(v1)
 2a0:	930d0000 	lbu	t5,0(t8)
 2a4:	30ee00f0 	andi	t6,a3,0xf0
 2a8:	000e7903 	sra	t7,t6,0x4
 2ac:	90880003 	lbu	t0,3(a0)
 2b0:	004fc821 	addu	t9,v0,t7
 2b4:	30ec000f 	andi	t4,a3,0xf
 2b8:	a06b002f 	sb	t3,47(v1)
 2bc:	932b0000 	lbu	t3,0(t9)
 2c0:	004cc021 	addu	t8,v0,t4
 2c4:	a06d003f 	sb	t5,63(v1)
 2c8:	930d0000 	lbu	t5,0(t8)
 2cc:	310e00f0 	andi	t6,t0,0xf0
 2d0:	000e7903 	sra	t7,t6,0x4
 2d4:	310c000f 	andi	t4,t0,0xf
 2d8:	a06b004f 	sb	t3,79(v1)
 2dc:	004cc021 	addu	t8,v0,t4
 2e0:	004fc821 	addu	t9,v0,t7
 2e4:	a06d005f 	sb	t5,95(v1)
 2e8:	930d0000 	lbu	t5,0(t8)
 2ec:	932b0000 	lbu	t3,0(t9)
 2f0:	24840004 	addiu	a0,a0,4
 2f4:	24630080 	addiu	v1,v1,128
 2f8:	a06dffff 	sb	t5,-1(v1)
 2fc:	1489ffd6 	bne	a0,t1,258 <OceffWipe_Draw+0x13c>
 300:	a06bffef 	sb	t3,-17(v1)
 304:	0c000000 	jal	0 <OceffWipe_Init>
 308:	8e240000 	lw	a0,0(s1)
 30c:	c7aa0094 	lwc1	$f10,148(sp)
 310:	c7b00084 	lwc1	$f16,132(sp)
 314:	c7a6009c 	lwc1	$f6,156(sp)
 318:	c7a8008c 	lwc1	$f8,140(sp)
 31c:	46105300 	add.s	$f12,$f10,$f16
 320:	c7b20098 	lwc1	$f18,152(sp)
 324:	c7a40088 	lwc1	$f4,136(sp)
 328:	46083280 	add.s	$f10,$f6,$f8
 32c:	00003825 	move	a3,zero
 330:	46049380 	add.s	$f14,$f18,$f4
 334:	44065000 	mfc1	a2,$f10
 338:	0c000000 	jal	0 <OceffWipe_Init>
 33c:	00000000 	nop
 340:	3c010000 	lui	at,0x0
 344:	c42c005c 	lwc1	$f12,92(at)
 348:	24070001 	li	a3,1
 34c:	44066000 	mfc1	a2,$f12
 350:	0c000000 	jal	0 <OceffWipe_Init>
 354:	46006386 	mov.s	$f14,$f12
 358:	3c010001 	lui	at,0x1
 35c:	34211da0 	ori	at,at,0x1da0
 360:	0c000000 	jal	0 <OceffWipe_Init>
 364:	02212021 	addu	a0,s1,at
 368:	c7b000ac 	lwc1	$f16,172(sp)
 36c:	44806000 	mtc1	zero,$f12
 370:	24070001 	li	a3,1
 374:	46008487 	neg.s	$f18,$f16
 378:	46006386 	mov.s	$f14,$f12
 37c:	44069000 	mfc1	a2,$f18
 380:	0c000000 	jal	0 <OceffWipe_Init>
 384:	00000000 	nop
 388:	8e0202d0 	lw	v0,720(s0)
 38c:	3c0fda38 	lui	t7,0xda38
 390:	35ef0003 	ori	t7,t7,0x3
 394:	244e0008 	addiu	t6,v0,8
 398:	ae0e02d0 	sw	t6,720(s0)
 39c:	ac4f0000 	sw	t7,0(v0)
 3a0:	8e240000 	lw	a0,0(s1)
 3a4:	3c050000 	lui	a1,0x0
 3a8:	24a50034 	addiu	a1,a1,52
 3ac:	24060177 	li	a2,375
 3b0:	0c000000 	jal	0 <OceffWipe_Init>
 3b4:	afa2006c 	sw	v0,108(sp)
 3b8:	8fa3006c 	lw	v1,108(sp)
 3bc:	3c18fa00 	lui	t8,0xfa00
 3c0:	3c0daaff 	lui	t5,0xaaff
 3c4:	ac620004 	sw	v0,4(v1)
 3c8:	8fb900b8 	lw	t9,184(sp)
 3cc:	3c0cfa00 	lui	t4,0xfa00
 3d0:	3c08de00 	lui	t0,0xde00
 3d4:	872b001c 	lh	t3,28(t9)
 3d8:	00002825 	move	a1,zero
 3dc:	51600011 	beqzl	t3,424 <OceffWipe_Draw+0x308>
 3e0:	8e0202d0 	lw	v0,720(s0)
 3e4:	8e0202d0 	lw	v0,720(s0)
 3e8:	35adffff 	ori	t5,t5,0xffff
 3ec:	3c190096 	lui	t9,0x96
 3f0:	244c0008 	addiu	t4,v0,8
 3f4:	ae0c02d0 	sw	t4,720(s0)
 3f8:	ac4d0004 	sw	t5,4(v0)
 3fc:	ac580000 	sw	t8,0(v0)
 400:	8e0202d0 	lw	v0,720(s0)
 404:	3739ff80 	ori	t9,t9,0xff80
 408:	3c0ffb00 	lui	t7,0xfb00
 40c:	244e0008 	addiu	t6,v0,8
 410:	ae0e02d0 	sw	t6,720(s0)
 414:	ac590004 	sw	t9,4(v0)
 418:	1000000f 	b	458 <OceffWipe_Draw+0x33c>
 41c:	ac4f0000 	sw	t7,0(v0)
 420:	8e0202d0 	lw	v0,720(s0)
 424:	2418c8ff 	li	t8,-14081
 428:	3c0f6400 	lui	t7,0x6400
 42c:	244b0008 	addiu	t3,v0,8
 430:	ae0b02d0 	sw	t3,720(s0)
 434:	ac580004 	sw	t8,4(v0)
 438:	ac4c0000 	sw	t4,0(v0)
 43c:	8e0202d0 	lw	v0,720(s0)
 440:	35efff80 	ori	t7,t7,0xff80
 444:	3c0efb00 	lui	t6,0xfb00
 448:	244d0008 	addiu	t5,v0,8
 44c:	ae0d02d0 	sw	t5,720(s0)
 450:	ac4f0004 	sw	t7,4(v0)
 454:	ac4e0000 	sw	t6,0(v0)
 458:	8e0202d0 	lw	v0,720(s0)
 45c:	3c0b0000 	lui	t3,0x0
 460:	256b06a0 	addiu	t3,t3,1696
 464:	24590008 	addiu	t9,v0,8
 468:	ae1902d0 	sw	t9,720(s0)
 46c:	ac480000 	sw	t0,0(v0)
 470:	ac4b0004 	sw	t3,4(v0)
 474:	8e0202d0 	lw	v0,720(s0)
 478:	8fa900b4 	lw	t1,180(sp)
 47c:	24190020 	li	t9,32
 480:	244c0008 	addiu	t4,v0,8
 484:	ae0c02d0 	sw	t4,720(s0)
 488:	ac480000 	sw	t0,0(v0)
 48c:	8e240000 	lw	a0,0(s1)
 490:	00090823 	negu	at,t1
 494:	00013840 	sll	a3,at,0x1
 498:	24180020 	li	t8,32
 49c:	240d0020 	li	t5,32
 4a0:	240e0001 	li	t6,1
 4a4:	240f0020 	li	t7,32
 4a8:	00093023 	negu	a2,t1
 4ac:	afa6001c 	sw	a2,28(sp)
 4b0:	afaf0024 	sw	t7,36(sp)
 4b4:	afae0018 	sw	t6,24(sp)
 4b8:	afad0014 	sw	t5,20(sp)
 4bc:	afb80010 	sw	t8,16(sp)
 4c0:	afa70020 	sw	a3,32(sp)
 4c4:	afb90028 	sw	t9,40(sp)
 4c8:	0c000000 	jal	0 <OceffWipe_Init>
 4cc:	afa20054 	sw	v0,84(sp)
 4d0:	8fa30054 	lw	v1,84(sp)
 4d4:	3c180000 	lui	t8,0x0
 4d8:	27180728 	addiu	t8,t8,1832
 4dc:	ac620004 	sw	v0,4(v1)
 4e0:	8e0202d0 	lw	v0,720(s0)
 4e4:	3c0cde00 	lui	t4,0xde00
 4e8:	3c060000 	lui	a2,0x0
 4ec:	244b0008 	addiu	t3,v0,8
 4f0:	ae0b02d0 	sw	t3,720(s0)
 4f4:	ac580004 	sw	t8,4(v0)
 4f8:	ac4c0000 	sw	t4,0(v0)
 4fc:	8e250000 	lw	a1,0(s1)
 500:	24c60048 	addiu	a2,a2,72
 504:	27a40070 	addiu	a0,sp,112
 508:	0c000000 	jal	0 <OceffWipe_Init>
 50c:	2407018e 	li	a3,398
 510:	8fbf003c 	lw	ra,60(sp)
 514:	8fb00034 	lw	s0,52(sp)
 518:	8fb10038 	lw	s1,56(sp)
 51c:	03e00008 	jr	ra
 520:	27bd00b8 	addiu	sp,sp,184
	...
