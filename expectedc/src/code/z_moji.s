
build/src/code/z_moji.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8007B910>:
   0:	3c010000 	lui	at,0x0
   4:	ac240000 	sw	a0,0(at)
   8:	3c010000 	lui	at,0x0
   c:	ac250000 	sw	a1,0(at)
  10:	3c010000 	lui	at,0x0
  14:	ac260000 	sw	a2,0(at)
  18:	3c010000 	lui	at,0x0
  1c:	03e00008 	jr	ra
  20:	ac270000 	sw	a3,0(at)

00000024 <func_8007B934>:
  24:	28810028 	slti	at,a0,40
  28:	14200004 	bnez	at,3c <func_8007B934+0x18>
  2c:	240e0138 	li	t6,312
  30:	3c010000 	lui	at,0x0
  34:	10000008 	b	58 <func_8007B934+0x34>
  38:	ac2e0000 	sw	t6,0(at)
  3c:	04810004 	bgez	a0,50 <func_8007B934+0x2c>
  40:	000478c0 	sll	t7,a0,0x3
  44:	3c010000 	lui	at,0x0
  48:	10000003 	b	58 <func_8007B934+0x34>
  4c:	ac200000 	sw	zero,0(at)
  50:	3c010000 	lui	at,0x0
  54:	ac2f0000 	sw	t7,0(at)
  58:	28a1001e 	slti	at,a1,30
  5c:	14200004 	bnez	at,70 <func_8007B934+0x4c>
  60:	241800e8 	li	t8,232
  64:	3c010000 	lui	at,0x0
  68:	03e00008 	jr	ra
  6c:	ac380000 	sw	t8,0(at)
  70:	04a10004 	bgez	a1,84 <func_8007B934+0x60>
  74:	0005c8c0 	sll	t9,a1,0x3
  78:	3c010000 	lui	at,0x0
  7c:	03e00008 	jr	ra
  80:	ac200000 	sw	zero,0(at)
  84:	3c010000 	lui	at,0x0
  88:	ac390000 	sw	t9,0(at)
  8c:	03e00008 	jr	ra
  90:	00000000 	nop

00000094 <func_8007B9A4>:
  94:	27bdff90 	addiu	sp,sp,-112
  98:	afb00018 	sw	s0,24(sp)
  9c:	00808025 	move	s0,a0
  a0:	afbf001c 	sw	ra,28(sp)
  a4:	afa50074 	sw	a1,116(sp)
  a8:	3c060000 	lui	a2,0x0
  ac:	24c60000 	addiu	a2,a2,0
  b0:	02002825 	move	a1,s0
  b4:	27a40054 	addiu	a0,sp,84
  b8:	0c000000 	jal	0 <func_8007B910>
  bc:	24070056 	li	a3,86
  c0:	3c050000 	lui	a1,0x0
  c4:	24a50000 	addiu	a1,a1,0
  c8:	30ae000f 	andi	t6,a1,0xf
  cc:	11c00005 	beqz	t6,e4 <func_8007B9A4+0x50>
  d0:	3c040000 	lui	a0,0x0
  d4:	0c000000 	jal	0 <func_8007B910>
  d8:	2484000c 	addiu	a0,a0,12
  dc:	3c050000 	lui	a1,0x0
  e0:	24a50000 	addiu	a1,a1,0
  e4:	3c070000 	lui	a3,0x0
  e8:	93a60077 	lbu	a2,119(sp)
  ec:	24e70000 	addiu	a3,a3,0
  f0:	8cef0000 	lw	t7,0(a3)
  f4:	30c40003 	andi	a0,a2,0x3
  f8:	3c19fd10 	lui	t9,0xfd10
  fc:	11e4002b 	beq	t7,a0,1ac <func_8007B9A4+0x118>
 100:	3c01e400 	lui	at,0xe400
 104:	8e0202c0 	lw	v0,704(s0)
 108:	00044140 	sll	t0,a0,0x5
 10c:	00a84821 	addu	t1,a1,t0
 110:	24580008 	addiu	t8,v0,8
 114:	ae1802c0 	sw	t8,704(s0)
 118:	ac490004 	sw	t1,4(v0)
 11c:	ac590000 	sw	t9,0(v0)
 120:	8e0202c0 	lw	v0,704(s0)
 124:	3c0be800 	lui	t3,0xe800
 128:	3c0df500 	lui	t5,0xf500
 12c:	244a0008 	addiu	t2,v0,8
 130:	ae0a02c0 	sw	t2,704(s0)
 134:	ac400004 	sw	zero,4(v0)
 138:	ac4b0000 	sw	t3,0(v0)
 13c:	8e0202c0 	lw	v0,704(s0)
 140:	35ad0100 	ori	t5,t5,0x100
 144:	3c0e0700 	lui	t6,0x700
 148:	244c0008 	addiu	t4,v0,8
 14c:	ae0c02c0 	sw	t4,704(s0)
 150:	ac4e0004 	sw	t6,4(v0)
 154:	ac4d0000 	sw	t5,0(v0)
 158:	8e0202c0 	lw	v0,704(s0)
 15c:	3c18e600 	lui	t8,0xe600
 160:	3c090703 	lui	t1,0x703
 164:	244f0008 	addiu	t7,v0,8
 168:	ae0f02c0 	sw	t7,704(s0)
 16c:	ac400004 	sw	zero,4(v0)
 170:	ac580000 	sw	t8,0(v0)
 174:	8e0202c0 	lw	v0,704(s0)
 178:	3529c000 	ori	t1,t1,0xc000
 17c:	3c08f000 	lui	t0,0xf000
 180:	24590008 	addiu	t9,v0,8
 184:	ae1902c0 	sw	t9,704(s0)
 188:	ac490004 	sw	t1,4(v0)
 18c:	ac480000 	sw	t0,0(v0)
 190:	8e0202c0 	lw	v0,704(s0)
 194:	3c0be700 	lui	t3,0xe700
 198:	244a0008 	addiu	t2,v0,8
 19c:	ae0a02c0 	sw	t2,704(s0)
 1a0:	ac400004 	sw	zero,4(v0)
 1a4:	ac4b0000 	sw	t3,0(v0)
 1a8:	ace40000 	sw	a0,0(a3)
 1ac:	8e0202c0 	lw	v0,704(s0)
 1b0:	3c040000 	lui	a0,0x0
 1b4:	24840000 	addiu	a0,a0,0
 1b8:	244c0008 	addiu	t4,v0,8
 1bc:	ae0c02c0 	sw	t4,704(s0)
 1c0:	8c8d0000 	lw	t5,0(a0)
 1c4:	3c050000 	lui	a1,0x0
 1c8:	24a50000 	addiu	a1,a1,0
 1cc:	8ca90000 	lw	t1,0(a1)
 1d0:	25ae0008 	addiu	t6,t5,8
 1d4:	000e7880 	sll	t7,t6,0x2
 1d8:	31f80fff 	andi	t8,t7,0xfff
 1dc:	252a0008 	addiu	t2,t1,8
 1e0:	000a5880 	sll	t3,t2,0x2
 1e4:	0018cb00 	sll	t9,t8,0xc
 1e8:	03214025 	or	t0,t9,at
 1ec:	316c0fff 	andi	t4,t3,0xfff
 1f0:	010c6825 	or	t5,t0,t4
 1f4:	ac4d0000 	sw	t5,0(v0)
 1f8:	8c8e0000 	lw	t6,0(a0)
 1fc:	8ca90000 	lw	t1,0(a1)
 200:	3c0de100 	lui	t5,0xe100
 204:	000e7880 	sll	t7,t6,0x2
 208:	31f80fff 	andi	t8,t7,0xfff
 20c:	00095080 	sll	t2,t1,0x2
 210:	314b0fff 	andi	t3,t2,0xfff
 214:	0018cb00 	sll	t9,t8,0xc
 218:	032b4025 	or	t0,t9,t3
 21c:	ac480004 	sw	t0,4(v0)
 220:	8e0202c0 	lw	v0,704(s0)
 224:	000658c3 	sra	t3,a2,0x3
 228:	000b4200 	sll	t0,t3,0x8
 22c:	244c0008 	addiu	t4,v0,8
 230:	ae0c02c0 	sw	t4,704(s0)
 234:	30c90004 	andi	t1,a2,0x4
 238:	00095580 	sll	t2,t1,0x16
 23c:	310cffff 	andi	t4,t0,0xffff
 240:	ac4d0000 	sw	t5,0(v0)
 244:	014c6825 	or	t5,t2,t4
 248:	ac4d0004 	sw	t5,4(v0)
 24c:	8e0202c0 	lw	v0,704(s0)
 250:	3c180400 	lui	t8,0x400
 254:	37180400 	ori	t8,t8,0x400
 258:	244e0008 	addiu	t6,v0,8
 25c:	ae0e02c0 	sw	t6,704(s0)
 260:	3c0ff100 	lui	t7,0xf100
 264:	3c060000 	lui	a2,0x0
 268:	24c60020 	addiu	a2,a2,32
 26c:	02002825 	move	a1,s0
 270:	27a40054 	addiu	a0,sp,84
 274:	2407007b 	li	a3,123
 278:	ac4f0000 	sw	t7,0(v0)
 27c:	0c000000 	jal	0 <func_8007B910>
 280:	ac580004 	sw	t8,4(v0)
 284:	8fbf001c 	lw	ra,28(sp)
 288:	8fb00018 	lw	s0,24(sp)
 28c:	27bd0070 	addiu	sp,sp,112
 290:	03e00008 	jr	ra
 294:	00000000 	nop

00000298 <func_8007BBA8>:
 298:	27bdff90 	addiu	sp,sp,-112
 29c:	afb00018 	sw	s0,24(sp)
 2a0:	00808025 	move	s0,a0
 2a4:	afbf001c 	sw	ra,28(sp)
 2a8:	afa50074 	sw	a1,116(sp)
 2ac:	3c060000 	lui	a2,0x0
 2b0:	24c6002c 	addiu	a2,a2,44
 2b4:	02002825 	move	a1,s0
 2b8:	27a40058 	addiu	a0,sp,88
 2bc:	0c000000 	jal	0 <func_8007B910>
 2c0:	24070089 	li	a3,137
 2c4:	3c050000 	lui	a1,0x0
 2c8:	24a50000 	addiu	a1,a1,0
 2cc:	30ae000f 	andi	t6,a1,0xf
 2d0:	11c00005 	beqz	t6,2e8 <func_8007BBA8+0x50>
 2d4:	3c040000 	lui	a0,0x0
 2d8:	0c000000 	jal	0 <func_8007B910>
 2dc:	24840038 	addiu	a0,a0,56
 2e0:	3c050000 	lui	a1,0x0
 2e4:	24a50000 	addiu	a1,a1,0
 2e8:	8e0202c0 	lw	v0,704(s0)
 2ec:	3c04e700 	lui	a0,0xe700
 2f0:	3c19fa00 	lui	t9,0xfa00
 2f4:	244f0008 	addiu	t7,v0,8
 2f8:	ae0f02c0 	sw	t7,704(s0)
 2fc:	ac400004 	sw	zero,4(v0)
 300:	ac440000 	sw	a0,0(v0)
 304:	8e0202c0 	lw	v0,704(s0)
 308:	3c080000 	lui	t0,0x0
 30c:	3c0b0000 	lui	t3,0x0
 310:	24580008 	addiu	t8,v0,8
 314:	ae1802c0 	sw	t8,704(s0)
 318:	ac590000 	sw	t9,0(v0)
 31c:	8d090000 	lw	t1,0(t0)
 320:	8d6b0000 	lw	t3,0(t3)
 324:	3c0f0000 	lui	t7,0x0
 328:	8def0000 	lw	t7,0(t7)
 32c:	00095600 	sll	t2,t1,0x18
 330:	3c090000 	lui	t1,0x0
 334:	8d290000 	lw	t1,0(t1)
 338:	316c00ff 	andi	t4,t3,0xff
 33c:	000c6c00 	sll	t5,t4,0x10
 340:	31f800ff 	andi	t8,t7,0xff
 344:	0018ca00 	sll	t9,t8,0x8
 348:	014d7025 	or	t6,t2,t5
 34c:	01d94025 	or	t0,t6,t9
 350:	312b00ff 	andi	t3,t1,0xff
 354:	010b6025 	or	t4,t0,t3
 358:	ac4c0004 	sw	t4,4(v0)
 35c:	8e0202c0 	lw	v0,704(s0)
 360:	3c0dfd50 	lui	t5,0xfd50
 364:	3c0e0700 	lui	t6,0x700
 368:	244a0008 	addiu	t2,v0,8
 36c:	ae0a02c0 	sw	t2,704(s0)
 370:	ac450004 	sw	a1,4(v0)
 374:	ac4d0000 	sw	t5,0(v0)
 378:	8e0202c0 	lw	v0,704(s0)
 37c:	3c18f550 	lui	t8,0xf550
 380:	3c09e600 	lui	t1,0xe600
 384:	244f0008 	addiu	t7,v0,8
 388:	ae0f02c0 	sw	t7,704(s0)
 38c:	ac4e0004 	sw	t6,4(v0)
 390:	ac580000 	sw	t8,0(v0)
 394:	8e0202c0 	lw	v0,704(s0)
 398:	3c0c071f 	lui	t4,0x71f
 39c:	358cf800 	ori	t4,t4,0xf800
 3a0:	24590008 	addiu	t9,v0,8
 3a4:	ae1902c0 	sw	t9,704(s0)
 3a8:	ac400004 	sw	zero,4(v0)
 3ac:	ac490000 	sw	t1,0(v0)
 3b0:	8e0202c0 	lw	v0,704(s0)
 3b4:	3c0bf300 	lui	t3,0xf300
 3b8:	3c0ff540 	lui	t7,0xf540
 3bc:	24480008 	addiu	t0,v0,8
 3c0:	ae0802c0 	sw	t0,704(s0)
 3c4:	ac4c0004 	sw	t4,4(v0)
 3c8:	ac4b0000 	sw	t3,0(v0)
 3cc:	8e0202c0 	lw	v0,704(s0)
 3d0:	35ef0200 	ori	t7,t7,0x200
 3d4:	3c190003 	lui	t9,0x3
 3d8:	244a0008 	addiu	t2,v0,8
 3dc:	ae0a02c0 	sw	t2,704(s0)
 3e0:	ac400004 	sw	zero,4(v0)
 3e4:	ac440000 	sw	a0,0(v0)
 3e8:	8e0202c0 	lw	v0,704(s0)
 3ec:	3739c1fc 	ori	t9,t9,0xc1fc
 3f0:	3c0ef200 	lui	t6,0xf200
 3f4:	244d0008 	addiu	t5,v0,8
 3f8:	ae0d02c0 	sw	t5,704(s0)
 3fc:	ac400004 	sw	zero,4(v0)
 400:	ac4f0000 	sw	t7,0(v0)
 404:	8e0202c0 	lw	v0,704(s0)
 408:	2409ffff 	li	t1,-1
 40c:	3c010000 	lui	at,0x0
 410:	24580008 	addiu	t8,v0,8
 414:	ae1802c0 	sw	t8,704(s0)
 418:	ac590004 	sw	t9,4(v0)
 41c:	ac4e0000 	sw	t6,0(v0)
 420:	8fa30074 	lw	v1,116(sp)
 424:	ac290000 	sw	t1,0(at)
 428:	3c060000 	lui	a2,0x0
 42c:	90680000 	lbu	t0,0(v1)
 430:	24c60000 	addiu	a2,a2,0
 434:	00603825 	move	a3,v1
 438:	1100003a 	beqz	t0,524 <func_8007BBA8+0x28c>
 43c:	00000000 	nop
 440:	90650000 	lbu	a1,0(v1)
 444:	3c030000 	lui	v1,0x0
 448:	24630000 	addiu	v1,v1,0
 44c:	00a02025 	move	a0,a1
 450:	24010009 	li	at,9
 454:	10810007 	beq	a0,at,474 <func_8007BBA8+0x1dc>
 458:	2401000a 	li	at,10
 45c:	1081001b 	beq	a0,at,4cc <func_8007BBA8+0x234>
 460:	2401000d 	li	at,13
 464:	5081001a 	beql	a0,at,4d0 <func_8007BBA8+0x238>
 468:	8c680000 	lw	t0,0(v1)
 46c:	1000001f 	b	4ec <func_8007BBA8+0x254>
 470:	02002025 	move	a0,s0
 474:	8ccb0000 	lw	t3,0(a2)
 478:	05610003 	bgez	t3,488 <func_8007BBA8+0x1f0>
 47c:	000b60c3 	sra	t4,t3,0x3
 480:	25610007 	addiu	at,t3,7
 484:	000160c3 	sra	t4,at,0x3
 488:	05810003 	bgez	t4,498 <func_8007BBA8+0x200>
 48c:	000c50c3 	sra	t2,t4,0x3
 490:	25810007 	addiu	at,t4,7
 494:	000150c3 	sra	t2,at,0x3
 498:	000a6980 	sll	t5,t2,0x6
 49c:	25af0040 	addiu	t7,t5,64
 4a0:	29e10140 	slti	at,t7,320
 4a4:	1420001b 	bnez	at,514 <func_8007BBA8+0x27c>
 4a8:	accf0000 	sw	t7,0(a2)
 4ac:	8c6e0000 	lw	t6,0(v1)
 4b0:	acc00000 	sw	zero,0(a2)
 4b4:	25d90008 	addiu	t9,t6,8
 4b8:	2b2100f0 	slti	at,t9,240
 4bc:	14200015 	bnez	at,514 <func_8007BBA8+0x27c>
 4c0:	ac790000 	sw	t9,0(v1)
 4c4:	10000013 	b	514 <func_8007BBA8+0x27c>
 4c8:	ac600000 	sw	zero,0(v1)
 4cc:	8c680000 	lw	t0,0(v1)
 4d0:	acc00000 	sw	zero,0(a2)
 4d4:	250b0008 	addiu	t3,t0,8
 4d8:	296100f0 	slti	at,t3,240
 4dc:	1420000d 	bnez	at,514 <func_8007BBA8+0x27c>
 4e0:	ac6b0000 	sw	t3,0(v1)
 4e4:	1000000b 	b	514 <func_8007BBA8+0x27c>
 4e8:	ac600000 	sw	zero,0(v1)
 4ec:	0c000000 	jal	0 <func_8007B910>
 4f0:	afa7002c 	sw	a3,44(sp)
 4f4:	3c060000 	lui	a2,0x0
 4f8:	24c60000 	addiu	a2,a2,0
 4fc:	8cca0000 	lw	t2,0(a2)
 500:	3c030000 	lui	v1,0x0
 504:	24630000 	addiu	v1,v1,0
 508:	254d0008 	addiu	t5,t2,8
 50c:	8fa7002c 	lw	a3,44(sp)
 510:	accd0000 	sw	t5,0(a2)
 514:	90e50001 	lbu	a1,1(a3)
 518:	24e70001 	addiu	a3,a3,1
 51c:	14a0ffcc 	bnez	a1,450 <func_8007BBA8+0x1b8>
 520:	00a02025 	move	a0,a1
 524:	3c060000 	lui	a2,0x0
 528:	24c60048 	addiu	a2,a2,72
 52c:	27a40058 	addiu	a0,sp,88
 530:	02002825 	move	a1,s0
 534:	0c000000 	jal	0 <func_8007B910>
 538:	240700b5 	li	a3,181
 53c:	8fbf001c 	lw	ra,28(sp)
 540:	8fb00018 	lw	s0,24(sp)
 544:	27bd0070 	addiu	sp,sp,112
 548:	03e00008 	jr	ra
 54c:	00000000 	nop
