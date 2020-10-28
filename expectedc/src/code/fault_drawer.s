
build/src/code/fault_drawer.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <FaultDrawer_SetOsSyncPrintfEnabled>:
   0:	3c010000 	lui	at,0x0
   4:	a0240035 	sb	a0,53(at)
   8:	03e00008 	jr	ra
   c:	00000000 	nop

00000010 <FaultDrawer_DrawRecImpl>:
  10:	3c0efffa 	lui	t6,0xfffa
  14:	03a07825 	move	t7,sp
  18:	27bdffe8 	addiu	sp,sp,-24
  1c:	35ce5a5a 	ori	t6,t6,0x5a5a
  20:	25effff8 	addiu	t7,t7,-8
  24:	adee0000 	sw	t6,0(t7)
  28:	15fdfffd 	bne	t7,sp,20 <FaultDrawer_DrawRecImpl+0x10>
  2c:	adee0004 	sw	t6,4(t7)
  30:	3c0d0000 	lui	t5,0x0
  34:	25ad0000 	addiu	t5,t5,0
  38:	afbf0014 	sw	ra,20(sp)
  3c:	95a90004 	lhu	t1,4(t5)
  40:	95ae0006 	lhu	t6,6(t5)
  44:	00c41823 	subu	v1,a2,a0
  48:	00e55823 	subu	t3,a3,a1
  4c:	24630001 	addiu	v1,v1,1
  50:	256b0001 	addiu	t3,t3,1
  54:	01241023 	subu	v0,t1,a0
  58:	00604025 	move	t0,v1
  5c:	01605025 	move	t2,t3
  60:	1840002e 	blez	v0,11c <FaultDrawer_DrawRecImpl+0x10c>
  64:	01c56023 	subu	t4,t6,a1
  68:	1980002c 	blez	t4,11c <FaultDrawer_DrawRecImpl+0x10c>
  6c:	0043082a 	slt	at,v0,v1
  70:	50200003 	beqzl	at,80 <FaultDrawer_DrawRecImpl+0x70>
  74:	018b082a 	slt	at,t4,t3
  78:	00404025 	move	t0,v0
  7c:	018b082a 	slt	at,t4,t3
  80:	10200002 	beqz	at,8c <FaultDrawer_DrawRecImpl+0x7c>
  84:	00000000 	nop
  88:	01805025 	move	t2,t4
  8c:	01250019 	multu	t1,a1
  90:	8db90000 	lw	t9,0(t5)
  94:	00003825 	move	a3,zero
  98:	00007812 	mflo	t7
  9c:	000fc040 	sll	t8,t7,0x1
  a0:	00047840 	sll	t7,a0,0x1
  a4:	03197021 	addu	t6,t8,t9
  a8:	1940001a 	blez	t2,114 <FaultDrawer_DrawRecImpl+0x104>
  ac:	01cf1021 	addu	v0,t6,t7
  b0:	97a4002a 	lhu	a0,42(sp)
  b4:	19000012 	blez	t0,100 <FaultDrawer_DrawRecImpl+0xf0>
  b8:	00001825 	move	v1,zero
  bc:	31060003 	andi	a2,t0,0x3
  c0:	10c00007 	beqz	a2,e0 <FaultDrawer_DrawRecImpl+0xd0>
  c4:	3c090000 	lui	t1,0x0
  c8:	00c02825 	move	a1,a2
  cc:	24630001 	addiu	v1,v1,1
  d0:	a4440000 	sh	a0,0(v0)
  d4:	14a3fffd 	bne	a1,v1,cc <FaultDrawer_DrawRecImpl+0xbc>
  d8:	24420002 	addiu	v0,v0,2
  dc:	10680007 	beq	v1,t0,fc <FaultDrawer_DrawRecImpl+0xec>
  e0:	24630004 	addiu	v1,v1,4
  e4:	a4440002 	sh	a0,2(v0)
  e8:	a4440004 	sh	a0,4(v0)
  ec:	a4440006 	sh	a0,6(v0)
  f0:	24420008 	addiu	v0,v0,8
  f4:	1468fffa 	bne	v1,t0,e0 <FaultDrawer_DrawRecImpl+0xd0>
  f8:	a444fff8 	sh	a0,-8(v0)
  fc:	95290004 	lhu	t1,4(t1)
 100:	0128c023 	subu	t8,t1,t0
 104:	24e70001 	addiu	a3,a3,1
 108:	0018c840 	sll	t9,t8,0x1
 10c:	14eaffe9 	bne	a3,t2,b4 <FaultDrawer_DrawRecImpl+0xa4>
 110:	00591021 	addu	v0,v0,t9
 114:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 118:	00000000 	nop
 11c:	8fbf0014 	lw	ra,20(sp)
 120:	27bd0018 	addiu	sp,sp,24
 124:	03e00008 	jr	ra
 128:	00000000 	nop

0000012c <FaultDrawer_DrawChar>:
 12c:	afa40000 	sw	a0,0(sp)
 130:	3c0c0000 	lui	t4,0x0
 134:	258c0000 	addiu	t4,t4,0
 138:	308400ff 	andi	a0,a0,0xff
 13c:	95830016 	lhu	v1,22(t4)
 140:	95880004 	lhu	t0,4(t4)
 144:	00802825 	move	a1,a0
 148:	30b80004 	andi	t8,a1,0x4
 14c:	01030019 	multu	t0,v1
 150:	0018c883 	sra	t9,t8,0x2
 154:	8d980018 	lw	t8,24(t4)
 158:	95820014 	lhu	v0,20(t4)
 15c:	04a10003 	bgez	a1,16c <FaultDrawer_DrawChar+0x40>
 160:	000570c3 	sra	t6,a1,0x3
 164:	24a10007 	addiu	at,a1,7
 168:	000170c3 	sra	t6,at,0x3
 16c:	000e7900 	sll	t7,t6,0x4
 170:	01f96821 	addu	t5,t7,t9
 174:	00007812 	mflo	t7
 178:	000d7080 	sll	t6,t5,0x2
 17c:	000fc840 	sll	t9,t7,0x1
 180:	8d8d0000 	lw	t5,0(t4)
 184:	958f000c 	lhu	t7,12(t4)
 188:	030e3021 	addu	a2,t8,t6
 18c:	00027040 	sll	t6,v0,0x1
 190:	032dc021 	addu	t8,t9,t5
 194:	004f082a 	slt	at,v0,t7
 198:	1420003e 	bnez	at,294 <FaultDrawer_DrawChar+0x168>
 19c:	030e3821 	addu	a3,t8,t6
 1a0:	9184001c 	lbu	a0,28(t4)
 1a4:	9599000e 	lhu	t9,14(t4)
 1a8:	00826821 	addu	t5,a0,v0
 1ac:	25b8ffff 	addiu	t8,t5,-1
 1b0:	0338082a 	slt	at,t9,t8
 1b4:	14200037 	bnez	at,294 <FaultDrawer_DrawChar+0x168>
 1b8:	00000000 	nop
 1bc:	958e0008 	lhu	t6,8(t4)
 1c0:	006e082a 	slt	at,v1,t6
 1c4:	14200033 	bnez	at,294 <FaultDrawer_DrawChar+0x168>
 1c8:	00000000 	nop
 1cc:	9182001d 	lbu	v0,29(t4)
 1d0:	958f000a 	lhu	t7,10(t4)
 1d4:	00436821 	addu	t5,v0,v1
 1d8:	25b9ffff 	addiu	t9,t5,-1
 1dc:	01f9082a 	slt	at,t7,t9
 1e0:	1420002c 	bnez	at,294 <FaultDrawer_DrawChar+0x168>
 1e4:	00000000 	nop
 1e8:	1840002a 	blez	v0,294 <FaultDrawer_DrawChar+0x168>
 1ec:	00001825 	move	v1,zero
 1f0:	04a10004 	bgez	a1,204 <FaultDrawer_DrawChar+0xd8>
 1f4:	30b80003 	andi	t8,a1,0x3
 1f8:	13000002 	beqz	t8,204 <FaultDrawer_DrawChar+0xd8>
 1fc:	00000000 	nop
 200:	2718fffc 	addiu	t8,t8,-4
 204:	3c0e1000 	lui	t6,0x1000
 208:	030e5804 	sllv	t3,t6,t8
 20c:	01602825 	move	a1,t3
 210:	8cc90000 	lw	t1,0(a2)
 214:	18800018 	blez	a0,278 <FaultDrawer_DrawChar+0x14c>
 218:	00005025 	move	t2,zero
 21c:	00a96824 	and	t5,a1,t1
 220:	51a00008 	beqzl	t5,244 <FaultDrawer_DrawChar+0x118>
 224:	95820012 	lhu	v0,18(t4)
 228:	958f0010 	lhu	t7,16(t4)
 22c:	000ac840 	sll	t9,t2,0x1
 230:	00f97021 	addu	t6,a3,t9
 234:	a5cf0000 	sh	t7,0(t6)
 238:	10000009 	b	260 <FaultDrawer_DrawChar+0x134>
 23c:	9184001c 	lbu	a0,28(t4)
 240:	95820012 	lhu	v0,18(t4)
 244:	000a6840 	sll	t5,t2,0x1
 248:	00edc821 	addu	t9,a3,t5
 24c:	30580001 	andi	t8,v0,0x1
 250:	53000004 	beqzl	t8,264 <FaultDrawer_DrawChar+0x138>
 254:	254a0001 	addiu	t2,t2,1
 258:	a7220000 	sh	v0,0(t9)
 25c:	9184001c 	lbu	a0,28(t4)
 260:	254a0001 	addiu	t2,t2,1
 264:	0144082a 	slt	at,t2,a0
 268:	1420ffec 	bnez	at,21c <FaultDrawer_DrawChar+0xf0>
 26c:	00052902 	srl	a1,a1,0x4
 270:	95880004 	lhu	t0,4(t4)
 274:	9182001d 	lbu	v0,29(t4)
 278:	00087840 	sll	t7,t0,0x1
 27c:	00ef3821 	addu	a3,a3,t7
 280:	24c60008 	addiu	a2,a2,8
 284:	24630001 	addiu	v1,v1,1
 288:	0062082a 	slt	at,v1,v0
 28c:	5420ffe0 	bnezl	at,210 <FaultDrawer_DrawChar+0xe4>
 290:	01602825 	move	a1,t3
 294:	03e00008 	jr	ra
 298:	00000000 	nop

0000029c <FaultDrawer_ColorToPrintColor>:
 29c:	afa40000 	sw	a0,0(sp)
 2a0:	3084ffff 	andi	a0,a0,0xffff
 2a4:	3c0e0000 	lui	t6,0x0
 2a8:	95ce0020 	lhu	t6,32(t6)
 2ac:	00801025 	move	v0,a0
 2b0:	3c0f0000 	lui	t7,0x0
 2b4:	148e0003 	bne	a0,t6,2c4 <FaultDrawer_ColorToPrintColor+0x28>
 2b8:	00000000 	nop
 2bc:	03e00008 	jr	ra
 2c0:	00001025 	move	v0,zero
 2c4:	95ef0022 	lhu	t7,34(t7)
 2c8:	3c040000 	lui	a0,0x0
 2cc:	24840004 	addiu	a0,a0,4
 2d0:	144f0003 	bne	v0,t7,2e0 <FaultDrawer_ColorToPrintColor+0x44>
 2d4:	24030002 	li	v1,2
 2d8:	03e00008 	jr	ra
 2dc:	24020001 	li	v0,1
 2e0:	2405000a 	li	a1,10
 2e4:	94980020 	lhu	t8,32(a0)
 2e8:	54580004 	bnel	v0,t8,2fc <FaultDrawer_ColorToPrintColor+0x60>
 2ec:	94990022 	lhu	t9,34(a0)
 2f0:	03e00008 	jr	ra
 2f4:	00601025 	move	v0,v1
 2f8:	94990022 	lhu	t9,34(a0)
 2fc:	54590004 	bnel	v0,t9,310 <FaultDrawer_ColorToPrintColor+0x74>
 300:	94880024 	lhu	t0,36(a0)
 304:	03e00008 	jr	ra
 308:	24620001 	addiu	v0,v1,1
 30c:	94880024 	lhu	t0,36(a0)
 310:	54480004 	bnel	v0,t0,324 <FaultDrawer_ColorToPrintColor+0x88>
 314:	94890026 	lhu	t1,38(a0)
 318:	03e00008 	jr	ra
 31c:	24620002 	addiu	v0,v1,2
 320:	94890026 	lhu	t1,38(a0)
 324:	54490004 	bnel	v0,t1,338 <FaultDrawer_ColorToPrintColor+0x9c>
 328:	24630004 	addiu	v1,v1,4
 32c:	03e00008 	jr	ra
 330:	24620003 	addiu	v0,v1,3
 334:	24630004 	addiu	v1,v1,4
 338:	1465ffea 	bne	v1,a1,2e4 <FaultDrawer_ColorToPrintColor+0x48>
 33c:	24840008 	addiu	a0,a0,8
 340:	2402ffff 	li	v0,-1
 344:	03e00008 	jr	ra
 348:	00000000 	nop

0000034c <FaultDrawer_UpdatePrintColor>:
 34c:	3c0ffffa 	lui	t7,0xfffa
 350:	03a0c025 	move	t8,sp
 354:	27bdffe8 	addiu	sp,sp,-24
 358:	35ef5a5a 	ori	t7,t7,0x5a5a
 35c:	2718fff8 	addiu	t8,t8,-8
 360:	af0f0000 	sw	t7,0(t8)
 364:	171dfffd 	bne	t8,sp,35c <FaultDrawer_UpdatePrintColor+0x10>
 368:	af0f0004 	sw	t7,4(t8)
 36c:	afbf0014 	sw	ra,20(sp)
 370:	3c0e0000 	lui	t6,0x0
 374:	91ce0035 	lbu	t6,53(t6)
 378:	3c040000 	lui	a0,0x0
 37c:	51c00018 	beqzl	t6,3e0 <FaultDrawer_UpdatePrintColor+0x94>
 380:	8fbf0014 	lw	ra,20(sp)
 384:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 388:	24840400 	addiu	a0,a0,1024
 38c:	3c040000 	lui	a0,0x0
 390:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 394:	94840010 	lhu	a0,16(a0)
 398:	04400006 	bltz	v0,3b4 <FaultDrawer_UpdatePrintColor+0x68>
 39c:	00402825 	move	a1,v0
 3a0:	28410008 	slti	at,v0,8
 3a4:	10200003 	beqz	at,3b4 <FaultDrawer_UpdatePrintColor+0x68>
 3a8:	3c040000 	lui	a0,0x0
 3ac:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 3b0:	24840404 	addiu	a0,a0,1028
 3b4:	3c040000 	lui	a0,0x0
 3b8:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 3bc:	94840012 	lhu	a0,18(a0)
 3c0:	04400006 	bltz	v0,3dc <FaultDrawer_UpdatePrintColor+0x90>
 3c4:	00402825 	move	a1,v0
 3c8:	28410008 	slti	at,v0,8
 3cc:	10200003 	beqz	at,3dc <FaultDrawer_UpdatePrintColor+0x90>
 3d0:	3c040000 	lui	a0,0x0
 3d4:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 3d8:	2484040c 	addiu	a0,a0,1036
 3dc:	8fbf0014 	lw	ra,20(sp)
 3e0:	27bd0018 	addiu	sp,sp,24
 3e4:	03e00008 	jr	ra
 3e8:	00000000 	nop

000003ec <FaultDrawer_SetForeColor>:
 3ec:	3c0efffa 	lui	t6,0xfffa
 3f0:	03a07825 	move	t7,sp
 3f4:	27bdffe8 	addiu	sp,sp,-24
 3f8:	35ce5a5a 	ori	t6,t6,0x5a5a
 3fc:	25effff8 	addiu	t7,t7,-8
 400:	adee0000 	sw	t6,0(t7)
 404:	15fdfffd 	bne	t7,sp,3fc <FaultDrawer_SetForeColor+0x10>
 408:	adee0004 	sw	t6,4(t7)
 40c:	afa40018 	sw	a0,24(sp)
 410:	3084ffff 	andi	a0,a0,0xffff
 414:	afbf0014 	sw	ra,20(sp)
 418:	3c010000 	lui	at,0x0
 41c:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 420:	a4240010 	sh	a0,16(at)
 424:	8fbf0014 	lw	ra,20(sp)
 428:	27bd0018 	addiu	sp,sp,24
 42c:	03e00008 	jr	ra
 430:	00000000 	nop

00000434 <FaultDrawer_SetBackColor>:
 434:	3c0efffa 	lui	t6,0xfffa
 438:	03a07825 	move	t7,sp
 43c:	27bdffe8 	addiu	sp,sp,-24
 440:	35ce5a5a 	ori	t6,t6,0x5a5a
 444:	25effff8 	addiu	t7,t7,-8
 448:	adee0000 	sw	t6,0(t7)
 44c:	15fdfffd 	bne	t7,sp,444 <FaultDrawer_SetBackColor+0x10>
 450:	adee0004 	sw	t6,4(t7)
 454:	afa40018 	sw	a0,24(sp)
 458:	3084ffff 	andi	a0,a0,0xffff
 45c:	afbf0014 	sw	ra,20(sp)
 460:	3c010000 	lui	at,0x0
 464:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 468:	a4240012 	sh	a0,18(at)
 46c:	8fbf0014 	lw	ra,20(sp)
 470:	27bd0018 	addiu	sp,sp,24
 474:	03e00008 	jr	ra
 478:	00000000 	nop

0000047c <FaultDrawer_SetFontColor>:
 47c:	3c0efffa 	lui	t6,0xfffa
 480:	03a07825 	move	t7,sp
 484:	27bdffe8 	addiu	sp,sp,-24
 488:	35ce5a5a 	ori	t6,t6,0x5a5a
 48c:	25effff8 	addiu	t7,t7,-8
 490:	adee0000 	sw	t6,0(t7)
 494:	15fdfffd 	bne	t7,sp,48c <FaultDrawer_SetFontColor+0x10>
 498:	adee0004 	sw	t6,4(t7)
 49c:	afbf0014 	sw	ra,20(sp)
 4a0:	afa40018 	sw	a0,24(sp)
 4a4:	3085ffff 	andi	a1,a0,0xffff
 4a8:	34a40001 	ori	a0,a1,0x1
 4ac:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 4b0:	3084ffff 	andi	a0,a0,0xffff
 4b4:	8fbf0014 	lw	ra,20(sp)
 4b8:	27bd0018 	addiu	sp,sp,24
 4bc:	03e00008 	jr	ra
 4c0:	00000000 	nop

000004c4 <FaultDrawer_SetCharPad>:
 4c4:	afa40000 	sw	a0,0(sp)
 4c8:	afa50004 	sw	a1,4(sp)
 4cc:	00052e00 	sll	a1,a1,0x18
 4d0:	00042600 	sll	a0,a0,0x18
 4d4:	3c020000 	lui	v0,0x0
 4d8:	24420000 	addiu	v0,v0,0
 4dc:	00042603 	sra	a0,a0,0x18
 4e0:	00052e03 	sra	a1,a1,0x18
 4e4:	a044001e 	sb	a0,30(v0)
 4e8:	a045001f 	sb	a1,31(v0)
 4ec:	03e00008 	jr	ra
 4f0:	00000000 	nop

000004f4 <FaultDrawer_SetCursor>:
 4f4:	3c19fffa 	lui	t9,0xfffa
 4f8:	03a05025 	move	t2,sp
 4fc:	27bdffe8 	addiu	sp,sp,-24
 500:	37395a5a 	ori	t9,t9,0x5a5a
 504:	254afff8 	addiu	t2,t2,-8
 508:	ad590000 	sw	t9,0(t2)
 50c:	155dfffd 	bne	t2,sp,504 <FaultDrawer_SetCursor+0x10>
 510:	ad590004 	sw	t9,4(t2)
 514:	3c020000 	lui	v0,0x0
 518:	24420000 	addiu	v0,v0,0
 51c:	afbf0014 	sw	ra,20(sp)
 520:	afa40018 	sw	a0,24(sp)
 524:	afa5001c 	sw	a1,28(sp)
 528:	904e0035 	lbu	t6,53(v0)
 52c:	3c040000 	lui	a0,0x0
 530:	24840414 	addiu	a0,a0,1044
 534:	11c00026 	beqz	t6,5d0 <FaultDrawer_SetCursor+0xdc>
 538:	8faf001c 	lw	t7,28(sp)
 53c:	94580008 	lhu	t8,8(v0)
 540:	9048001d 	lbu	t0,29(v0)
 544:	8049001f 	lb	t1,31(v0)
 548:	01f8c823 	subu	t9,t7,t8
 54c:	804f001e 	lb	t7,30(v0)
 550:	01095021 	addu	t2,t0,t1
 554:	032a001a 	div	zero,t9,t2
 558:	8fab0018 	lw	t3,24(sp)
 55c:	944c000c 	lhu	t4,12(v0)
 560:	904e001c 	lbu	t6,28(v0)
 564:	00002812 	mflo	a1
 568:	016c6823 	subu	t5,t3,t4
 56c:	01cfc021 	addu	t8,t6,t7
 570:	01b8001a 	div	zero,t5,t8
 574:	15400002 	bnez	t2,580 <FaultDrawer_SetCursor+0x8c>
 578:	00000000 	nop
 57c:	0007000d 	break	0x7
 580:	2401ffff 	li	at,-1
 584:	15410004 	bne	t2,at,598 <FaultDrawer_SetCursor+0xa4>
 588:	3c018000 	lui	at,0x8000
 58c:	17210002 	bne	t9,at,598 <FaultDrawer_SetCursor+0xa4>
 590:	00000000 	nop
 594:	0006000d 	break	0x6
 598:	00003012 	mflo	a2
 59c:	17000002 	bnez	t8,5a8 <FaultDrawer_SetCursor+0xb4>
 5a0:	00000000 	nop
 5a4:	0007000d 	break	0x7
 5a8:	2401ffff 	li	at,-1
 5ac:	17010004 	bne	t8,at,5c0 <FaultDrawer_SetCursor+0xcc>
 5b0:	3c018000 	lui	at,0x8000
 5b4:	15a10002 	bne	t5,at,5c0 <FaultDrawer_SetCursor+0xcc>
 5b8:	00000000 	nop
 5bc:	0006000d 	break	0x6
 5c0:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 5c4:	00000000 	nop
 5c8:	3c020000 	lui	v0,0x0
 5cc:	24420000 	addiu	v0,v0,0
 5d0:	8fa80018 	lw	t0,24(sp)
 5d4:	8fa9001c 	lw	t1,28(sp)
 5d8:	a4480014 	sh	t0,20(v0)
 5dc:	a4490016 	sh	t1,22(v0)
 5e0:	8fbf0014 	lw	ra,20(sp)
 5e4:	03e00008 	jr	ra
 5e8:	27bd0018 	addiu	sp,sp,24

000005ec <FaultDrawer_FillScreen>:
 5ec:	3c19fffa 	lui	t9,0xfffa
 5f0:	03a04025 	move	t0,sp
 5f4:	27bdffe0 	addiu	sp,sp,-32
 5f8:	37395a5a 	ori	t9,t9,0x5a5a
 5fc:	2508fff8 	addiu	t0,t0,-8
 600:	ad190000 	sw	t9,0(t0)
 604:	151dfffd 	bne	t0,sp,5fc <FaultDrawer_FillScreen+0x10>
 608:	ad190004 	sw	t9,4(t0)
 60c:	3c020000 	lui	v0,0x0
 610:	24420000 	addiu	v0,v0,0
 614:	afbf001c 	sw	ra,28(sp)
 618:	904e0035 	lbu	t6,53(v0)
 61c:	3c040000 	lui	a0,0x0
 620:	51c00006 	beqzl	t6,63c <FaultDrawer_FillScreen+0x50>
 624:	944f0012 	lhu	t7,18(v0)
 628:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 62c:	24840420 	addiu	a0,a0,1056
 630:	3c020000 	lui	v0,0x0
 634:	24420000 	addiu	v0,v0,0
 638:	944f0012 	lhu	t7,18(v0)
 63c:	9444000c 	lhu	a0,12(v0)
 640:	94450008 	lhu	a1,8(v0)
 644:	35f80001 	ori	t8,t7,0x1
 648:	afb80010 	sw	t8,16(sp)
 64c:	9446000e 	lhu	a2,14(v0)
 650:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 654:	9447000a 	lhu	a3,10(v0)
 658:	3c020000 	lui	v0,0x0
 65c:	24420000 	addiu	v0,v0,0
 660:	9444000c 	lhu	a0,12(v0)
 664:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 668:	94450008 	lhu	a1,8(v0)
 66c:	8fbf001c 	lw	ra,28(sp)
 670:	27bd0020 	addiu	sp,sp,32
 674:	03e00008 	jr	ra
 678:	00000000 	nop

0000067c <FaultDrawer_FormatStringFunc>:
 67c:	3c09fffa 	lui	t1,0xfffa
 680:	03a05025 	move	t2,sp
 684:	27bdffc8 	addiu	sp,sp,-56
 688:	35295a5a 	ori	t1,t1,0x5a5a
 68c:	254afff8 	addiu	t2,t2,-8
 690:	ad490000 	sw	t1,0(t2)
 694:	155dfffd 	bne	t2,sp,68c <FaultDrawer_FormatStringFunc+0x10>
 698:	ad490004 	sw	t1,4(t2)
 69c:	afb2001c 	sw	s2,28(sp)
 6a0:	afb10018 	sw	s1,24(sp)
 6a4:	00a08825 	move	s1,a1
 6a8:	00c09025 	move	s2,a2
 6ac:	afbf0034 	sw	ra,52(sp)
 6b0:	afb70030 	sw	s7,48(sp)
 6b4:	afb6002c 	sw	s6,44(sp)
 6b8:	afb50028 	sw	s5,40(sp)
 6bc:	afb40024 	sw	s4,36(sp)
 6c0:	afb30020 	sw	s3,32(sp)
 6c4:	afb00014 	sw	s0,20(sp)
 6c8:	afa40038 	sw	a0,56(sp)
 6cc:	12400060 	beqz	s2,850 <FaultDrawer_FormatStringFunc+0x1d4>
 6d0:	3c170000 	lui	s7,0x0
 6d4:	3c150000 	lui	s5,0x0
 6d8:	3c100000 	lui	s0,0x0
 6dc:	26100000 	addiu	s0,s0,0
 6e0:	26b5042c 	addiu	s5,s5,1068
 6e4:	26f70428 	addiu	s7,s7,1064
 6e8:	24160001 	li	s6,1
 6ec:	2414001a 	li	s4,26
 6f0:	2413000a 	li	s3,10
 6f4:	920e0034 	lbu	t6,52(s0)
 6f8:	51c00011 	beqzl	t6,740 <FaultDrawer_FormatStringFunc+0xc4>
 6fc:	92240000 	lbu	a0,0(s1)
 700:	a2000034 	sb	zero,52(s0)
 704:	92250000 	lbu	a1,0(s1)
 708:	28a10031 	slti	at,a1,49
 70c:	14200006 	bnez	at,728 <FaultDrawer_FormatStringFunc+0xac>
 710:	28a1003a 	slti	at,a1,58
 714:	10200004 	beqz	at,728 <FaultDrawer_FormatStringFunc+0xac>
 718:	00057840 	sll	t7,a1,0x1
 71c:	020fc021 	addu	t8,s0,t7
 720:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 724:	9704ffc0 	lhu	a0,-64(t8)
 728:	9619000e 	lhu	t9,14(s0)
 72c:	9208001c 	lbu	t0,28(s0)
 730:	96030014 	lhu	v1,20(s0)
 734:	1000002a 	b	7e0 <FaultDrawer_FormatStringFunc+0x164>
 738:	03282023 	subu	a0,t9,t0
 73c:	92240000 	lbu	a0,0(s1)
 740:	10930005 	beq	a0,s3,758 <FaultDrawer_FormatStringFunc+0xdc>
 744:	00802825 	move	a1,a0
 748:	50940010 	beql	a0,s4,78c <FaultDrawer_FormatStringFunc+0x110>
 74c:	960d000e 	lhu	t5,14(s0)
 750:	10000013 	b	7a0 <FaultDrawer_FormatStringFunc+0x124>
 754:	92020035 	lbu	v0,53(s0)
 758:	92090035 	lbu	t1,53(s0)
 75c:	51200004 	beqzl	t1,770 <FaultDrawer_FormatStringFunc+0xf4>
 760:	960a0004 	lhu	t2,4(s0)
 764:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 768:	02e02025 	move	a0,s7
 76c:	960a0004 	lhu	t2,4(s0)
 770:	960b000e 	lhu	t3,14(s0)
 774:	920c001c 	lbu	t4,28(s0)
 778:	a60a0014 	sh	t2,20(s0)
 77c:	3143ffff 	andi	v1,t2,0xffff
 780:	10000017 	b	7e0 <FaultDrawer_FormatStringFunc+0x164>
 784:	016c2023 	subu	a0,t3,t4
 788:	960d000e 	lhu	t5,14(s0)
 78c:	920e001c 	lbu	t6,28(s0)
 790:	a2160034 	sb	s6,52(s0)
 794:	96030014 	lhu	v1,20(s0)
 798:	10000011 	b	7e0 <FaultDrawer_FormatStringFunc+0x164>
 79c:	01ae2023 	subu	a0,t5,t6
 7a0:	10400004 	beqz	v0,7b4 <FaultDrawer_FormatStringFunc+0x138>
 7a4:	00000000 	nop
 7a8:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 7ac:	02a02025 	move	a0,s5
 7b0:	92240000 	lbu	a0,0(s1)
 7b4:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 7b8:	00000000 	nop
 7bc:	9202001c 	lbu	v0,28(s0)
 7c0:	960f0014 	lhu	t7,20(s0)
 7c4:	8219001e 	lb	t9,30(s0)
 7c8:	9609000e 	lhu	t1,14(s0)
 7cc:	01e2c021 	addu	t8,t7,v0
 7d0:	03194021 	addu	t0,t8,t9
 7d4:	a6080014 	sh	t0,20(s0)
 7d8:	3103ffff 	andi	v1,t0,0xffff
 7dc:	01222023 	subu	a0,t1,v0
 7e0:	0064082a 	slt	at,v1,a0
 7e4:	54200018 	bnezl	at,848 <FaultDrawer_FormatStringFunc+0x1cc>
 7e8:	2652ffff 	addiu	s2,s2,-1
 7ec:	9202001d 	lbu	v0,29(s0)
 7f0:	960b0016 	lhu	t3,22(s0)
 7f4:	820d001f 	lb	t5,31(s0)
 7f8:	9618000a 	lhu	t8,10(s0)
 7fc:	01626021 	addu	t4,t3,v0
 800:	018d7021 	addu	t6,t4,t5
 804:	960a000c 	lhu	t2,12(s0)
 808:	31cfffff 	andi	t7,t6,0xffff
 80c:	0302c823 	subu	t9,t8,v0
 810:	01f9082a 	slt	at,t7,t9
 814:	a60e0016 	sh	t6,22(s0)
 818:	1420000a 	bnez	at,844 <FaultDrawer_FormatStringFunc+0x1c8>
 81c:	a60a0014 	sh	t2,20(s0)
 820:	8e020038 	lw	v0,56(s0)
 824:	50400006 	beqzl	v0,840 <FaultDrawer_FormatStringFunc+0x1c4>
 828:	96080008 	lhu	t0,8(s0)
 82c:	0040f809 	jalr	v0
 830:	00000000 	nop
 834:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 838:	00000000 	nop
 83c:	96080008 	lhu	t0,8(s0)
 840:	a6080016 	sh	t0,22(s0)
 844:	2652ffff 	addiu	s2,s2,-1
 848:	1640ffaa 	bnez	s2,6f4 <FaultDrawer_FormatStringFunc+0x78>
 84c:	26310001 	addiu	s1,s1,1
 850:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 854:	00000000 	nop
 858:	8fa20038 	lw	v0,56(sp)
 85c:	8fbf0034 	lw	ra,52(sp)
 860:	8fb00014 	lw	s0,20(sp)
 864:	8fb10018 	lw	s1,24(sp)
 868:	8fb2001c 	lw	s2,28(sp)
 86c:	8fb30020 	lw	s3,32(sp)
 870:	8fb40024 	lw	s4,36(sp)
 874:	8fb50028 	lw	s5,40(sp)
 878:	8fb6002c 	lw	s6,44(sp)
 87c:	8fb70030 	lw	s7,48(sp)
 880:	03e00008 	jr	ra
 884:	27bd0038 	addiu	sp,sp,56

00000888 <FaultDrawer_VPrintf>:
 888:	3c0efffa 	lui	t6,0xfffa
 88c:	03a07825 	move	t7,sp
 890:	27bdffe8 	addiu	sp,sp,-24
 894:	35ce5a5a 	ori	t6,t6,0x5a5a
 898:	25effff8 	addiu	t7,t7,-8
 89c:	adee0000 	sw	t6,0(t7)
 8a0:	15fdfffd 	bne	t7,sp,898 <FaultDrawer_VPrintf+0x10>
 8a4:	adee0004 	sw	t6,4(t7)
 8a8:	afbf0014 	sw	ra,20(sp)
 8ac:	00803025 	move	a2,a0
 8b0:	00a03825 	move	a3,a1
 8b4:	3c040000 	lui	a0,0x0
 8b8:	3c050000 	lui	a1,0x0
 8bc:	24a50000 	addiu	a1,a1,0
 8c0:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 8c4:	24840000 	addiu	a0,a0,0
 8c8:	8fbf0014 	lw	ra,20(sp)
 8cc:	27bd0018 	addiu	sp,sp,24
 8d0:	03e00008 	jr	ra
 8d4:	00000000 	nop

000008d8 <FaultDrawer_Printf>:
 8d8:	3c0efffa 	lui	t6,0xfffa
 8dc:	03a07825 	move	t7,sp
 8e0:	27bdffe0 	addiu	sp,sp,-32
 8e4:	35ce5a5a 	ori	t6,t6,0x5a5a
 8e8:	25effff8 	addiu	t7,t7,-8
 8ec:	adee0000 	sw	t6,0(t7)
 8f0:	15fdfffd 	bne	t7,sp,8e8 <FaultDrawer_Printf+0x10>
 8f4:	adee0004 	sw	t6,4(t7)
 8f8:	afbf0014 	sw	ra,20(sp)
 8fc:	afa40020 	sw	a0,32(sp)
 900:	afa50024 	sw	a1,36(sp)
 904:	afa60028 	sw	a2,40(sp)
 908:	afa7002c 	sw	a3,44(sp)
 90c:	8fa40020 	lw	a0,32(sp)
 910:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 914:	27a50024 	addiu	a1,sp,36
 918:	8fbf0014 	lw	ra,20(sp)
 91c:	27bd0020 	addiu	sp,sp,32
 920:	03e00008 	jr	ra
 924:	00000000 	nop

00000928 <FaultDrawer_DrawText>:
 928:	3c0efffa 	lui	t6,0xfffa
 92c:	03a07825 	move	t7,sp
 930:	27bdffe0 	addiu	sp,sp,-32
 934:	35ce5a5a 	ori	t6,t6,0x5a5a
 938:	25effff8 	addiu	t7,t7,-8
 93c:	adee0000 	sw	t6,0(t7)
 940:	15fdfffd 	bne	t7,sp,938 <FaultDrawer_DrawText+0x10>
 944:	adee0004 	sw	t6,4(t7)
 948:	afbf0014 	sw	ra,20(sp)
 94c:	afa60028 	sw	a2,40(sp)
 950:	afa7002c 	sw	a3,44(sp)
 954:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 958:	00000000 	nop
 95c:	8fa40028 	lw	a0,40(sp)
 960:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 964:	27a5002c 	addiu	a1,sp,44
 968:	8fbf0014 	lw	ra,20(sp)
 96c:	27bd0020 	addiu	sp,sp,32
 970:	03e00008 	jr	ra
 974:	00000000 	nop

00000978 <FaultDrawer_SetDrawerFB>:
 978:	afa50004 	sw	a1,4(sp)
 97c:	afa60008 	sw	a2,8(sp)
 980:	3c020000 	lui	v0,0x0
 984:	24420000 	addiu	v0,v0,0
 988:	30c6ffff 	andi	a2,a2,0xffff
 98c:	30a5ffff 	andi	a1,a1,0xffff
 990:	ac440000 	sw	a0,0(v0)
 994:	a4450004 	sh	a1,4(v0)
 998:	a4460006 	sh	a2,6(v0)
 99c:	03e00008 	jr	ra
 9a0:	00000000 	nop

000009a4 <FaultDrawer_SetInputCallback>:
 9a4:	3c010000 	lui	at,0x0
 9a8:	ac240038 	sw	a0,56(at)
 9ac:	03e00008 	jr	ra
 9b0:	00000000 	nop

000009b4 <FaultDrawer_WritebackFBDCache>:
 9b4:	3c18fffa 	lui	t8,0xfffa
 9b8:	03a0c825 	move	t9,sp
 9bc:	27bdffe8 	addiu	sp,sp,-24
 9c0:	37185a5a 	ori	t8,t8,0x5a5a
 9c4:	2739fff8 	addiu	t9,t9,-8
 9c8:	af380000 	sw	t8,0(t9)
 9cc:	173dfffd 	bne	t9,sp,9c4 <FaultDrawer_WritebackFBDCache+0x10>
 9d0:	af380004 	sw	t8,4(t9)
 9d4:	3c020000 	lui	v0,0x0
 9d8:	24420000 	addiu	v0,v0,0
 9dc:	afbf0014 	sw	ra,20(sp)
 9e0:	944e0004 	lhu	t6,4(v0)
 9e4:	944f0006 	lhu	t7,6(v0)
 9e8:	8c440000 	lw	a0,0(v0)
 9ec:	01cf0019 	multu	t6,t7
 9f0:	00002812 	mflo	a1
 9f4:	00052840 	sll	a1,a1,0x1
 9f8:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 9fc:	00000000 	nop
 a00:	8fbf0014 	lw	ra,20(sp)
 a04:	27bd0018 	addiu	sp,sp,24
 a08:	03e00008 	jr	ra
 a0c:	00000000 	nop

00000a10 <FaultDrawer_SetDefault>:
 a10:	3c19fffa 	lui	t9,0xfffa
 a14:	03a04025 	move	t0,sp
 a18:	27bdffe8 	addiu	sp,sp,-24
 a1c:	37395a5a 	ori	t9,t9,0x5a5a
 a20:	2508fff8 	addiu	t0,t0,-8
 a24:	ad190000 	sw	t9,0(t0)
 a28:	151dfffd 	bne	t0,sp,a20 <FaultDrawer_SetDefault+0x10>
 a2c:	ad190004 	sw	t9,4(t0)
 a30:	afbf0014 	sw	ra,20(sp)
 a34:	3c040000 	lui	a0,0x0
 a38:	3c050000 	lui	a1,0x0
 a3c:	24a50000 	addiu	a1,a1,0
 a40:	24840000 	addiu	a0,a0,0
 a44:	0c000000 	jal	0 <FaultDrawer_SetOsSyncPrintfEnabled>
 a48:	2406003c 	li	a2,60
 a4c:	3c0e0000 	lui	t6,0x0
 a50:	8dce0000 	lw	t6,0(t6)
 a54:	3c018000 	lui	at,0x8000
 a58:	8fbf0014 	lw	ra,20(sp)
 a5c:	01c17825 	or	t7,t6,at
 a60:	3c01fffd 	lui	at,0xfffd
 a64:	3421a800 	ori	at,at,0xa800
 a68:	01e1c021 	addu	t8,t7,at
 a6c:	3c010000 	lui	at,0x0
 a70:	ac380000 	sw	t8,0(at)
 a74:	03e00008 	jr	ra
 a78:	27bd0018 	addiu	sp,sp,24
 a7c:	00000000 	nop
