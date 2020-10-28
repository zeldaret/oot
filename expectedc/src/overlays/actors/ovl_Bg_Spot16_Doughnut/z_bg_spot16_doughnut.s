
build/src/overlays/actors/ovl_Bg_Spot16_Doughnut/z_bg_spot16_doughnut.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgSpot16Doughnut_Init>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afa50024 	sw	a1,36(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
  1c:	24a50020 	addiu	a1,a1,32
  20:	3c053dcc 	lui	a1,0x3dcc
  24:	34a5cccd 	ori	a1,a1,0xcccd
  28:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
  2c:	02002025 	move	a0,s0
  30:	8603001c 	lh	v1,28(s0)
  34:	240e00ff 	li	t6,255
  38:	24010001 	li	at,1
  3c:	a600014c 	sh	zero,332(s0)
  40:	a20e0150 	sb	t6,336(s0)
  44:	10610008 	beq	v1,at,68 <BgSpot16Doughnut_Init+0x68>
  48:	00601025 	move	v0,v1
  4c:	24010002 	li	at,2
  50:	10410005 	beq	v0,at,68 <BgSpot16Doughnut_Init+0x68>
  54:	24010003 	li	at,3
  58:	10410003 	beq	v0,at,68 <BgSpot16Doughnut_Init+0x68>
  5c:	24010004 	li	at,4
  60:	14410015 	bne	v0,at,b8 <BgSpot16Doughnut_Init+0xb8>
  64:	8fa90024 	lw	t1,36(sp)
  68:	00037840 	sll	t7,v1,0x1
  6c:	3c180000 	lui	t8,0x0
  70:	030fc021 	addu	t8,t8,t7
  74:	8718002c 	lh	t8,44(t8)
  78:	3c010000 	lui	at,0x0
  7c:	c42800e0 	lwc1	$f8,224(at)
  80:	44982000 	mtc1	t8,$f4
  84:	02002025 	move	a0,s0
  88:	468021a0 	cvt.s.w	$f6,$f4
  8c:	46083282 	mul.s	$f10,$f6,$f8
  90:	44055000 	mfc1	a1,$f10
  94:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
  98:	00000000 	nop
  9c:	3c190000 	lui	t9,0x0
  a0:	3c080000 	lui	t0,0x0
  a4:	27390000 	addiu	t9,t9,0
  a8:	25080000 	addiu	t0,t0,0
  ac:	ae190134 	sw	t9,308(s0)
  b0:	10000036 	b	18c <BgSpot16Doughnut_Init+0x18c>
  b4:	ae080130 	sw	t0,304(s0)
  b8:	852200a4 	lh	v0,164(t1)
  bc:	24010023 	li	at,35
  c0:	02002025 	move	a0,s0
  c4:	1041000e 	beq	v0,at,100 <BgSpot16Doughnut_Init+0x100>
  c8:	3c053c93 	lui	a1,0x3c93
  cc:	24010024 	li	at,36
  d0:	1041000b 	beq	v0,at,100 <BgSpot16Doughnut_Init+0x100>
  d4:	24010025 	li	at,37
  d8:	10410009 	beq	v0,at,100 <BgSpot16Doughnut_Init+0x100>
  dc:	24010052 	li	at,82
  e0:	1441000b 	bne	v0,at,110 <BgSpot16Doughnut_Init+0x110>
  e4:	02002025 	move	a0,s0
  e8:	3c053d23 	lui	a1,0x3d23
  ec:	34a5d70a 	ori	a1,a1,0xd70a
  f0:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
  f4:	02002025 	move	a0,s0
  f8:	10000009 	b	120 <BgSpot16Doughnut_Init+0x120>
  fc:	c6100050 	lwc1	$f16,80(s0)
 100:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
 104:	34a574bc 	ori	a1,a1,0x74bc
 108:	10000005 	b	120 <BgSpot16Doughnut_Init+0x120>
 10c:	c6100050 	lwc1	$f16,80(s0)
 110:	3c053dcc 	lui	a1,0x3dcc
 114:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
 118:	34a5cccd 	ori	a1,a1,0xcccd
 11c:	c6100050 	lwc1	$f16,80(s0)
 120:	3c040000 	lui	a0,0x0
 124:	24840000 	addiu	a0,a0,0
 128:	460084a1 	cvt.d.s	$f18,$f16
 12c:	44079000 	mfc1	a3,$f18
 130:	44069800 	mfc1	a2,$f19
 134:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
 138:	00000000 	nop
 13c:	3c020000 	lui	v0,0x0
 140:	24420000 	addiu	v0,v0,0
 144:	8c4a0004 	lw	t2,4(v0)
 148:	3c040000 	lui	a0,0x0
 14c:	2484000c 	addiu	a0,a0,12
 150:	55400006 	bnezl	t2,16c <BgSpot16Doughnut_Init+0x16c>
 154:	960d014c 	lhu	t5,332(s0)
 158:	944b0ed8 	lhu	t3,3800(v0)
 15c:	316c8000 	andi	t4,t3,0x8000
 160:	51800006 	beqzl	t4,17c <BgSpot16Doughnut_Init+0x17c>
 164:	960f014c 	lhu	t7,332(s0)
 168:	960d014c 	lhu	t5,332(s0)
 16c:	31aefffe 	andi	t6,t5,0xfffe
 170:	10000004 	b	184 <BgSpot16Doughnut_Init+0x184>
 174:	a60e014c 	sh	t6,332(s0)
 178:	960f014c 	lhu	t7,332(s0)
 17c:	35f80001 	ori	t8,t7,0x1
 180:	a618014c 	sh	t8,332(s0)
 184:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
 188:	8605001c 	lh	a1,28(s0)
 18c:	8fbf001c 	lw	ra,28(sp)
 190:	8fb00018 	lw	s0,24(sp)
 194:	27bd0020 	addiu	sp,sp,32
 198:	03e00008 	jr	ra
 19c:	00000000 	nop

000001a0 <BgSpot16Doughnut_Destroy>:
 1a0:	afa40000 	sw	a0,0(sp)
 1a4:	03e00008 	jr	ra
 1a8:	afa50004 	sw	a1,4(sp)

000001ac <BgSpot16Doughnut_Update>:
 1ac:	9482014c 	lhu	v0,332(a0)
 1b0:	304e0001 	andi	t6,v0,0x1
 1b4:	55c0000e 	bnezl	t6,1f0 <BgSpot16Doughnut_Update+0x44>
 1b8:	90a91d6c 	lbu	t1,7532(a1)
 1bc:	848f00b6 	lh	t7,182(a0)
 1c0:	90830150 	lbu	v1,336(a0)
 1c4:	240800ff 	li	t0,255
 1c8:	25f8ffe0 	addiu	t8,t7,-32
 1cc:	286100ff 	slti	at,v1,255
 1d0:	10200004 	beqz	at,1e4 <BgSpot16Doughnut_Update+0x38>
 1d4:	a49800b6 	sh	t8,182(a0)
 1d8:	24790005 	addiu	t9,v1,5
 1dc:	03e00008 	jr	ra
 1e0:	a0990150 	sb	t9,336(a0)
 1e4:	03e00008 	jr	ra
 1e8:	a0880150 	sb	t0,336(a0)
 1ec:	90a91d6c 	lbu	t1,7532(a1)
 1f0:	11200011 	beqz	t1,238 <BgSpot16Doughnut_Update+0x8c>
 1f4:	00000000 	nop
 1f8:	8ca31d94 	lw	v1,7572(a1)
 1fc:	1060000e 	beqz	v1,238 <BgSpot16Doughnut_Update+0x8c>
 200:	00000000 	nop
 204:	946a0000 	lhu	t2,0(v1)
 208:	24010002 	li	at,2
 20c:	1541000a 	bne	t2,at,238 <BgSpot16Doughnut_Update+0x8c>
 210:	00000000 	nop
 214:	90830150 	lbu	v1,336(a0)
 218:	304cfffe 	andi	t4,v0,0xfffe
 21c:	28610006 	slti	at,v1,6
 220:	14200003 	bnez	at,230 <BgSpot16Doughnut_Update+0x84>
 224:	246bfffb 	addiu	t3,v1,-5
 228:	03e00008 	jr	ra
 22c:	a08b0150 	sb	t3,336(a0)
 230:	a0800150 	sb	zero,336(a0)
 234:	a48c014c 	sh	t4,332(a0)
 238:	03e00008 	jr	ra
 23c:	00000000 	nop

00000240 <BgSpot16Doughnut_UpdateExpanding>:
 240:	27bdffe8 	addiu	sp,sp,-24
 244:	afbf0014 	sw	ra,20(sp)
 248:	afa5001c 	sw	a1,28(sp)
 24c:	90820150 	lbu	v0,336(a0)
 250:	28410006 	slti	at,v0,6
 254:	14200003 	bnez	at,264 <BgSpot16Doughnut_UpdateExpanding+0x24>
 258:	244efffb 	addiu	t6,v0,-5
 25c:	10000004 	b	270 <BgSpot16Doughnut_UpdateExpanding+0x30>
 260:	a08e0150 	sb	t6,336(a0)
 264:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
 268:	afa40018 	sw	a0,24(sp)
 26c:	8fa40018 	lw	a0,24(sp)
 270:	848f00b6 	lh	t7,182(a0)
 274:	3c010000 	lui	at,0x0
 278:	c4840050 	lwc1	$f4,80(a0)
 27c:	25f8ffe0 	addiu	t8,t7,-32
 280:	a49800b6 	sh	t8,182(a0)
 284:	c42600e4 	lwc1	$f6,228(at)
 288:	46062200 	add.s	$f8,$f4,$f6
 28c:	44054000 	mfc1	a1,$f8
 290:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
 294:	00000000 	nop
 298:	8fbf0014 	lw	ra,20(sp)
 29c:	27bd0018 	addiu	sp,sp,24
 2a0:	03e00008 	jr	ra
 2a4:	00000000 	nop

000002a8 <BgSpot16Doughnut_Draw>:
 2a8:	27bdff80 	addiu	sp,sp,-128
 2ac:	3c0f0001 	lui	t7,0x1
 2b0:	afbf003c 	sw	ra,60(sp)
 2b4:	afb00038 	sw	s0,56(sp)
 2b8:	afa40080 	sw	a0,128(sp)
 2bc:	afa50084 	sw	a1,132(sp)
 2c0:	01e57821 	addu	t7,t7,a1
 2c4:	8def1de4 	lw	t7,7652(t7)
 2c8:	3c060000 	lui	a2,0x0
 2cc:	24c60038 	addiu	a2,a2,56
 2d0:	31f8ffff 	andi	t8,t7,0xffff
 2d4:	afb80078 	sw	t8,120(sp)
 2d8:	8ca50000 	lw	a1,0(a1)
 2dc:	27a40060 	addiu	a0,sp,96
 2e0:	240700d2 	li	a3,210
 2e4:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
 2e8:	00a08025 	move	s0,a1
 2ec:	8fb90084 	lw	t9,132(sp)
 2f0:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
 2f4:	8f240000 	lw	a0,0(t9)
 2f8:	8e0202d0 	lw	v0,720(s0)
 2fc:	3c0bda38 	lui	t3,0xda38
 300:	356b0003 	ori	t3,t3,0x3
 304:	244a0008 	addiu	t2,v0,8
 308:	ae0a02d0 	sw	t2,720(s0)
 30c:	ac4b0000 	sw	t3,0(v0)
 310:	8fac0084 	lw	t4,132(sp)
 314:	3c050000 	lui	a1,0x0
 318:	24a50054 	addiu	a1,a1,84
 31c:	8d840000 	lw	a0,0(t4)
 320:	240600d5 	li	a2,213
 324:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
 328:	afa2005c 	sw	v0,92(sp)
 32c:	8fa3005c 	lw	v1,92(sp)
 330:	3c0edb06 	lui	t6,0xdb06
 334:	35ce0020 	ori	t6,t6,0x20
 338:	ac620004 	sw	v0,4(v1)
 33c:	8fa90080 	lw	t1,128(sp)
 340:	8fa80078 	lw	t0,120(sp)
 344:	00002825 	move	a1,zero
 348:	952d014c 	lhu	t5,332(t1)
 34c:	00003825 	move	a3,zero
 350:	240a0010 	li	t2,16
 354:	31af0001 	andi	t7,t5,0x1
 358:	11e0002b 	beqz	t7,408 <BgSpot16Doughnut_Draw+0x160>
 35c:	00083023 	negu	a2,t0
 360:	8e0202d0 	lw	v0,720(s0)
 364:	00080823 	negu	at,t0
 368:	00016840 	sll	t5,at,0x1
 36c:	24580008 	addiu	t8,v0,8
 370:	ae1802d0 	sw	t8,720(s0)
 374:	ac4e0000 	sw	t6,0(v0)
 378:	8fb90084 	lw	t9,132(sp)
 37c:	24180020 	li	t8,32
 380:	240b0020 	li	t3,32
 384:	8f240000 	lw	a0,0(t9)
 388:	240c0001 	li	t4,1
 38c:	240f0010 	li	t7,16
 390:	afaf0024 	sw	t7,36(sp)
 394:	afac0018 	sw	t4,24(sp)
 398:	afb80028 	sw	t8,40(sp)
 39c:	afad0020 	sw	t5,32(sp)
 3a0:	afa8001c 	sw	t0,28(sp)
 3a4:	afab0014 	sw	t3,20(sp)
 3a8:	afaa0010 	sw	t2,16(sp)
 3ac:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
 3b0:	afa20058 	sw	v0,88(sp)
 3b4:	8fa30058 	lw	v1,88(sp)
 3b8:	3c19fb00 	lui	t9,0xfb00
 3bc:	3c01ff00 	lui	at,0xff00
 3c0:	ac620004 	sw	v0,4(v1)
 3c4:	8e0202d0 	lw	v0,720(s0)
 3c8:	3c18de00 	lui	t8,0xde00
 3cc:	244e0008 	addiu	t6,v0,8
 3d0:	ae0e02d0 	sw	t6,720(s0)
 3d4:	ac590000 	sw	t9,0(v0)
 3d8:	8faa0080 	lw	t2,128(sp)
 3dc:	3c0e0000 	lui	t6,0x0
 3e0:	25ce0000 	addiu	t6,t6,0
 3e4:	914c0150 	lbu	t4,336(t2)
 3e8:	01816825 	or	t5,t4,at
 3ec:	ac4d0004 	sw	t5,4(v0)
 3f0:	8e0202d0 	lw	v0,720(s0)
 3f4:	244f0008 	addiu	t7,v0,8
 3f8:	ae0f02d0 	sw	t7,720(s0)
 3fc:	ac4e0004 	sw	t6,4(v0)
 400:	10000019 	b	468 <BgSpot16Doughnut_Draw+0x1c0>
 404:	ac580000 	sw	t8,0(v0)
 408:	8e0202d0 	lw	v0,720(s0)
 40c:	3c0afb00 	lui	t2,0xfb00
 410:	2401ff00 	li	at,-256
 414:	24590008 	addiu	t9,v0,8
 418:	ae1902d0 	sw	t9,720(s0)
 41c:	ac4a0000 	sw	t2,0(v0)
 420:	912c0150 	lbu	t4,336(t1)
 424:	3c18fa00 	lui	t8,0xfa00
 428:	240effff 	li	t6,-1
 42c:	01816825 	or	t5,t4,at
 430:	ac4d0004 	sw	t5,4(v0)
 434:	8e0202d0 	lw	v0,720(s0)
 438:	3c0b0000 	lui	t3,0x0
 43c:	256b0000 	addiu	t3,t3,0
 440:	244f0008 	addiu	t7,v0,8
 444:	ae0f02d0 	sw	t7,720(s0)
 448:	ac4e0004 	sw	t6,4(v0)
 44c:	ac580000 	sw	t8,0(v0)
 450:	8e0202d0 	lw	v0,720(s0)
 454:	3c0ade00 	lui	t2,0xde00
 458:	24590008 	addiu	t9,v0,8
 45c:	ae1902d0 	sw	t9,720(s0)
 460:	ac4b0004 	sw	t3,4(v0)
 464:	ac4a0000 	sw	t2,0(v0)
 468:	8fac0084 	lw	t4,132(sp)
 46c:	3c060000 	lui	a2,0x0
 470:	24c60070 	addiu	a2,a2,112
 474:	27a40060 	addiu	a0,sp,96
 478:	240700ee 	li	a3,238
 47c:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
 480:	8d850000 	lw	a1,0(t4)
 484:	8fbf003c 	lw	ra,60(sp)
 488:	8fb00038 	lw	s0,56(sp)
 48c:	27bd0080 	addiu	sp,sp,128
 490:	03e00008 	jr	ra
 494:	00000000 	nop

00000498 <BgSpot16Doughnut_DrawExpanding>:
 498:	27bdffb0 	addiu	sp,sp,-80
 49c:	afbf001c 	sw	ra,28(sp)
 4a0:	afb00018 	sw	s0,24(sp)
 4a4:	afa40050 	sw	a0,80(sp)
 4a8:	afa50054 	sw	a1,84(sp)
 4ac:	8ca50000 	lw	a1,0(a1)
 4b0:	3c060000 	lui	a2,0x0
 4b4:	24c6008c 	addiu	a2,a2,140
 4b8:	27a40038 	addiu	a0,sp,56
 4bc:	240700f5 	li	a3,245
 4c0:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
 4c4:	00a08025 	move	s0,a1
 4c8:	8faf0054 	lw	t7,84(sp)
 4cc:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
 4d0:	8de40000 	lw	a0,0(t7)
 4d4:	8e0202d0 	lw	v0,720(s0)
 4d8:	3c19da38 	lui	t9,0xda38
 4dc:	37390003 	ori	t9,t9,0x3
 4e0:	24580008 	addiu	t8,v0,8
 4e4:	ae1802d0 	sw	t8,720(s0)
 4e8:	ac590000 	sw	t9,0(v0)
 4ec:	8fa80054 	lw	t0,84(sp)
 4f0:	3c050000 	lui	a1,0x0
 4f4:	24a500a8 	addiu	a1,a1,168
 4f8:	8d040000 	lw	a0,0(t0)
 4fc:	240600f8 	li	a2,248
 500:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
 504:	afa20034 	sw	v0,52(sp)
 508:	8fa30034 	lw	v1,52(sp)
 50c:	3c0afb00 	lui	t2,0xfb00
 510:	2401ff00 	li	at,-256
 514:	ac620004 	sw	v0,4(v1)
 518:	8e0202d0 	lw	v0,720(s0)
 51c:	3c18fa00 	lui	t8,0xfa00
 520:	2419ffff 	li	t9,-1
 524:	24490008 	addiu	t1,v0,8
 528:	ae0902d0 	sw	t1,720(s0)
 52c:	ac4a0000 	sw	t2,0(v0)
 530:	8fab0050 	lw	t3,80(sp)
 534:	3c0a0000 	lui	t2,0x0
 538:	254a0000 	addiu	t2,t2,0
 53c:	916d0150 	lbu	t5,336(t3)
 540:	3c09de00 	lui	t1,0xde00
 544:	3c060000 	lui	a2,0x0
 548:	01a17025 	or	t6,t5,at
 54c:	ac4e0004 	sw	t6,4(v0)
 550:	8e0202d0 	lw	v0,720(s0)
 554:	24c600c4 	addiu	a2,a2,196
 558:	27a40038 	addiu	a0,sp,56
 55c:	244f0008 	addiu	t7,v0,8
 560:	ae0f02d0 	sw	t7,720(s0)
 564:	ac590004 	sw	t9,4(v0)
 568:	ac580000 	sw	t8,0(v0)
 56c:	8e0202d0 	lw	v0,720(s0)
 570:	24070100 	li	a3,256
 574:	24480008 	addiu	t0,v0,8
 578:	ae0802d0 	sw	t0,720(s0)
 57c:	ac4a0004 	sw	t2,4(v0)
 580:	ac490000 	sw	t1,0(v0)
 584:	8fab0054 	lw	t3,84(sp)
 588:	0c000000 	jal	0 <BgSpot16Doughnut_Init>
 58c:	8d650000 	lw	a1,0(t3)
 590:	8fbf001c 	lw	ra,28(sp)
 594:	8fb00018 	lw	s0,24(sp)
 598:	27bd0050 	addiu	sp,sp,80
 59c:	03e00008 	jr	ra
 5a0:	00000000 	nop
	...
