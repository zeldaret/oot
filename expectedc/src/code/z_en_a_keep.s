
build/src/code/z_en_a_keep.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnAObj_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850164 	sw	a1,356(a0)

00000008 <EnAObj_Init>:
   8:	27bdffc8 	addiu	sp,sp,-56
   c:	3c0140c0 	lui	at,0x40c0
  10:	44812000 	mtc1	at,$f4
  14:	afbf001c 	sw	ra,28(sp)
  18:	afb00018 	sw	s0,24(sp)
  1c:	afa5003c 	sw	a1,60(sp)
  20:	afa00034 	sw	zero,52(sp)
  24:	e7a40028 	swc1	$f4,40(sp)
  28:	8486001c 	lh	a2,28(a0)
  2c:	00808025 	move	s0,a0
  30:	30d800ff 	andi	t8,a2,0xff
  34:	3319ffff 	andi	t9,t8,0xffff
  38:	00067203 	sra	t6,a2,0x8
  3c:	31cf00ff 	andi	t7,t6,0xff
  40:	2f210007 	sltiu	at,t9,7
  44:	a48f016c 	sh	t7,364(a0)
  48:	1020001f 	beqz	at,c8 <EnAObj_Init+0xc0>
  4c:	a498001c 	sh	t8,28(a0)
  50:	0019c880 	sll	t9,t9,0x2
  54:	3c010000 	lui	at,0x0
  58:	00390821 	addu	at,at,t9
  5c:	8c39003c 	lw	t9,60(at)
  60:	03200008 	jr	t9
  64:	00000000 	nop
  68:	3c053ccc 	lui	a1,0x3ccc
  6c:	34a5cccd 	ori	a1,a1,0xcccd
  70:	0c000000 	jal	0 <EnAObj_SetupAction>
  74:	02002025 	move	a0,s0
  78:	10000018 	b	dc <EnAObj_Init+0xd4>
  7c:	8608001c 	lh	t0,28(s0)
  80:	3c053d4c 	lui	a1,0x3d4c
  84:	34a5cccd 	ori	a1,a1,0xcccd
  88:	0c000000 	jal	0 <EnAObj_SetupAction>
  8c:	02002025 	move	a0,s0
  90:	10000012 	b	dc <EnAObj_Init+0xd4>
  94:	8608001c 	lh	t0,28(s0)
  98:	3c053dcc 	lui	a1,0x3dcc
  9c:	34a5cccd 	ori	a1,a1,0xcccd
  a0:	0c000000 	jal	0 <EnAObj_SetupAction>
  a4:	02002025 	move	a0,s0
  a8:	1000000c 	b	dc <EnAObj_Init+0xd4>
  ac:	8608001c 	lh	t0,28(s0)
  b0:	3c053ba3 	lui	a1,0x3ba3
  b4:	34a5d70a 	ori	a1,a1,0xd70a
  b8:	0c000000 	jal	0 <EnAObj_SetupAction>
  bc:	02002025 	move	a0,s0
  c0:	10000006 	b	dc <EnAObj_Init+0xd4>
  c4:	8608001c 	lh	t0,28(s0)
  c8:	3c053c23 	lui	a1,0x3c23
  cc:	34a5d70a 	ori	a1,a1,0xd70a
  d0:	0c000000 	jal	0 <EnAObj_SetupAction>
  d4:	02002025 	move	a0,s0
  d8:	8608001c 	lh	t0,28(s0)
  dc:	260400b4 	addiu	a0,s0,180
  e0:	24050000 	li	a1,0
  e4:	29010009 	slti	at,t0,9
  e8:	14200005 	bnez	at,100 <EnAObj_Init+0xf8>
  ec:	3c060000 	lui	a2,0x0
  f0:	3c014140 	lui	at,0x4140
  f4:	44813000 	mtc1	at,$f6
  f8:	00000000 	nop
  fc:	e7a60028 	swc1	$f6,40(sp)
 100:	24c60000 	addiu	a2,a2,0
 104:	0c000000 	jal	0 <EnAObj_SetupAction>
 108:	8fa70028 	lw	a3,40(sp)
 10c:	8e0a0024 	lw	t2,36(s0)
 110:	3c014496 	lui	at,0x4496
 114:	44814000 	mtc1	at,$f8
 118:	8606001c 	lh	a2,28(s0)
 11c:	3c014348 	lui	at,0x4348
 120:	44815000 	mtc1	at,$f10
 124:	ae0a0038 	sw	t2,56(s0)
 128:	8e0a002c 	lw	t2,44(s0)
 12c:	8e090028 	lw	t1,40(s0)
 130:	24ccffff 	addiu	t4,a2,-1
 134:	240bffff 	li	t3,-1
 138:	2d81000b 	sltiu	at,t4,11
 13c:	ae0b014c 	sw	t3,332(s0)
 140:	a2000160 	sb	zero,352(s0)
 144:	ae00015c 	sw	zero,348(s0)
 148:	e60800fc 	swc1	$f8,252(s0)
 14c:	e60a00f8 	swc1	$f10,248(s0)
 150:	ae0a0040 	sw	t2,64(s0)
 154:	1020005c 	beqz	at,2c8 <EnAObj_Init+0x2c0>
 158:	ae09003c 	sw	t1,60(s0)
 15c:	000c6080 	sll	t4,t4,0x2
 160:	3c010000 	lui	at,0x0
 164:	002c0821 	addu	at,at,t4
 168:	8c2c0058 	lw	t4,88(at)
 16c:	01800008 	jr	t4
 170:	00000000 	nop
 174:	8fa4003c 	lw	a0,60(sp)
 178:	240d0001 	li	t5,1
 17c:	ae0d014c 	sw	t5,332(s0)
 180:	02003025 	move	a2,s0
 184:	24070001 	li	a3,1
 188:	0c000000 	jal	0 <EnAObj_SetupAction>
 18c:	24851c24 	addiu	a1,a0,7204
 190:	02002025 	move	a0,s0
 194:	0c000000 	jal	0 <EnAObj_SetupAction>
 198:	8605001c 	lh	a1,28(s0)
 19c:	10000052 	b	2e8 <EnAObj_Init+0x2e0>
 1a0:	860f001c 	lh	t7,28(s0)
 1a4:	240e0003 	li	t6,3
 1a8:	ae0e014c 	sw	t6,332(s0)
 1ac:	8fa4003c 	lw	a0,60(sp)
 1b0:	02003025 	move	a2,s0
 1b4:	24070001 	li	a3,1
 1b8:	0c000000 	jal	0 <EnAObj_SetupAction>
 1bc:	24851c24 	addiu	a1,a0,7204
 1c0:	02002025 	move	a0,s0
 1c4:	0c000000 	jal	0 <EnAObj_SetupAction>
 1c8:	8605001c 	lh	a1,28(s0)
 1cc:	10000046 	b	2e8 <EnAObj_Init+0x2e0>
 1d0:	860f001c 	lh	t7,28(s0)
 1d4:	3c014120 	lui	at,0x4120
 1d8:	44818000 	mtc1	at,$f16
 1dc:	8e180004 	lw	t8,4(s0)
 1e0:	3c01c000 	lui	at,0xc000
 1e4:	44819000 	mtc1	at,$f18
 1e8:	24080005 	li	t0,5
 1ec:	37190001 	ori	t9,t8,0x1
 1f0:	ae190004 	sw	t9,4(s0)
 1f4:	ae08014c 	sw	t0,332(s0)
 1f8:	02002025 	move	a0,s0
 1fc:	8605001c 	lh	a1,28(s0)
 200:	e6100178 	swc1	$f16,376(s0)
 204:	0c000000 	jal	0 <EnAObj_SetupAction>
 208:	e612006c 	swc1	$f18,108(s0)
 20c:	10000036 	b	2e8 <EnAObj_Init+0x2e0>
 210:	860f001c 	lh	t7,28(s0)
 214:	ae00014c 	sw	zero,332(s0)
 218:	02002025 	move	a0,s0
 21c:	0c000000 	jal	0 <EnAObj_SetupAction>
 220:	8605001c 	lh	a1,28(s0)
 224:	10000030 	b	2e8 <EnAObj_Init+0x2e0>
 228:	860f001c 	lh	t7,28(s0)
 22c:	8609016c 	lh	t1,364(s0)
 230:	3c0143fa 	lui	at,0x43fa
 234:	44812000 	mtc1	at,$f4
 238:	8e0c0004 	lw	t4,4(s0)
 23c:	3c014234 	lui	at,0x4234
 240:	44813000 	mtc1	at,$f6
 244:	312a00ff 	andi	t2,t1,0xff
 248:	354b0300 	ori	t3,t2,0x300
 24c:	358d0009 	ori	t5,t4,0x9
 250:	a60b010e 	sh	t3,270(s0)
 254:	ae0d0004 	sw	t5,4(s0)
 258:	02002025 	move	a0,s0
 25c:	8605001c 	lh	a1,28(s0)
 260:	e604004c 	swc1	$f4,76(s0)
 264:	0c000000 	jal	0 <EnAObj_SetupAction>
 268:	e6060178 	swc1	$f6,376(s0)
 26c:	2605017c 	addiu	a1,s0,380
 270:	afa50024 	sw	a1,36(sp)
 274:	0c000000 	jal	0 <EnAObj_SetupAction>
 278:	8fa4003c 	lw	a0,60(sp)
 27c:	3c070000 	lui	a3,0x0
 280:	8fa50024 	lw	a1,36(sp)
 284:	24e70020 	addiu	a3,a3,32
 288:	8fa4003c 	lw	a0,60(sp)
 28c:	0c000000 	jal	0 <EnAObj_SetupAction>
 290:	02003025 	move	a2,s0
 294:	240e00ff 	li	t6,255
 298:	a20e00ae 	sb	t6,174(s0)
 29c:	10000011 	b	2e4 <EnAObj_Init+0x2dc>
 2a0:	a200001f 	sb	zero,31(s0)
 2a4:	3c01bfc0 	lui	at,0xbfc0
 2a8:	44814000 	mtc1	at,$f8
 2ac:	00062c00 	sll	a1,a2,0x10
 2b0:	00052c03 	sra	a1,a1,0x10
 2b4:	02002025 	move	a0,s0
 2b8:	0c000000 	jal	0 <EnAObj_SetupAction>
 2bc:	e608006c 	swc1	$f8,108(s0)
 2c0:	10000009 	b	2e8 <EnAObj_Init+0x2e0>
 2c4:	860f001c 	lh	t7,28(s0)
 2c8:	3c01c000 	lui	at,0xc000
 2cc:	44815000 	mtc1	at,$f10
 2d0:	00062c00 	sll	a1,a2,0x10
 2d4:	00052c03 	sra	a1,a1,0x10
 2d8:	02002025 	move	a0,s0
 2dc:	0c000000 	jal	0 <EnAObj_SetupAction>
 2e0:	e60a006c 	swc1	$f10,108(s0)
 2e4:	860f001c 	lh	t7,28(s0)
 2e8:	241800ff 	li	t8,255
 2ec:	3c040000 	lui	a0,0x0
 2f0:	29e10005 	slti	at,t7,5
 2f4:	10200002 	beqz	at,300 <EnAObj_Init+0x2f8>
 2f8:	27a50034 	addiu	a1,sp,52
 2fc:	a21800ae 	sb	t8,174(s0)
 300:	8e02014c 	lw	v0,332(s0)
 304:	2401ffff 	li	at,-1
 308:	1041000a 	beq	v0,at,334 <EnAObj_Init+0x32c>
 30c:	0002c880 	sll	t9,v0,0x2
 310:	00992021 	addu	a0,a0,t9
 314:	0c000000 	jal	0 <EnAObj_SetupAction>
 318:	8c84004c 	lw	a0,76(a0)
 31c:	8fa4003c 	lw	a0,60(sp)
 320:	02003025 	move	a2,s0
 324:	8fa70034 	lw	a3,52(sp)
 328:	0c000000 	jal	0 <EnAObj_SetupAction>
 32c:	24850810 	addiu	a1,a0,2064
 330:	ae02014c 	sw	v0,332(s0)
 334:	8fbf001c 	lw	ra,28(sp)
 338:	8fb00018 	lw	s0,24(sp)
 33c:	27bd0038 	addiu	sp,sp,56
 340:	03e00008 	jr	ra
 344:	00000000 	nop

00000348 <EnAObj_Destroy>:
 348:	27bdffe8 	addiu	sp,sp,-24
 34c:	00803825 	move	a3,a0
 350:	afbf0014 	sw	ra,20(sp)
 354:	afa5001c 	sw	a1,28(sp)
 358:	8ce6014c 	lw	a2,332(a3)
 35c:	00a02025 	move	a0,a1
 360:	24a50810 	addiu	a1,a1,2064
 364:	0c000000 	jal	0 <EnAObj_SetupAction>
 368:	afa70018 	sw	a3,24(sp)
 36c:	8fa70018 	lw	a3,24(sp)
 370:	24010009 	li	at,9
 374:	8fa4001c 	lw	a0,28(sp)
 378:	84e2001c 	lh	v0,28(a3)
 37c:	10410003 	beq	v0,at,38c <EnAObj_Destroy+0x44>
 380:	2401000a 	li	at,10
 384:	54410004 	bnel	v0,at,398 <EnAObj_Destroy+0x50>
 388:	8fbf0014 	lw	ra,20(sp)
 38c:	0c000000 	jal	0 <EnAObj_SetupAction>
 390:	24e5017c 	addiu	a1,a3,380
 394:	8fbf0014 	lw	ra,20(sp)
 398:	27bd0018 	addiu	sp,sp,24
 39c:	03e00008 	jr	ra
 3a0:	00000000 	nop

000003a4 <func_8001D204>:
 3a4:	27bdffe8 	addiu	sp,sp,-24
 3a8:	afbf0014 	sw	ra,20(sp)
 3ac:	0c000000 	jal	0 <EnAObj_SetupAction>
 3b0:	afa40018 	sw	a0,24(sp)
 3b4:	10400003 	beqz	v0,3c4 <func_8001D204+0x20>
 3b8:	8fa40018 	lw	a0,24(sp)
 3bc:	0c000000 	jal	0 <EnAObj_SetupAction>
 3c0:	8485001c 	lh	a1,28(a0)
 3c4:	8fbf0014 	lw	ra,20(sp)
 3c8:	27bd0018 	addiu	sp,sp,24
 3cc:	03e00008 	jr	ra
 3d0:	00000000 	nop

000003d4 <func_8001D234>:
 3d4:	27bdffe8 	addiu	sp,sp,-24
 3d8:	afa5001c 	sw	a1,28(sp)
 3dc:	afbf0014 	sw	ra,20(sp)
 3e0:	3c050000 	lui	a1,0x0
 3e4:	0c000000 	jal	0 <EnAObj_SetupAction>
 3e8:	24a50000 	addiu	a1,a1,0
 3ec:	8fbf0014 	lw	ra,20(sp)
 3f0:	27bd0018 	addiu	sp,sp,24
 3f4:	03e00008 	jr	ra
 3f8:	00000000 	nop

000003fc <func_8001D25C>:
 3fc:	27bdffe8 	addiu	sp,sp,-24
 400:	afbf0014 	sw	ra,20(sp)
 404:	afa5001c 	sw	a1,28(sp)
 408:	948e010e 	lhu	t6,270(a0)
 40c:	51c00025 	beqzl	t6,4a4 <func_8001D25C+0xa8>
 410:	8fbf0014 	lw	ra,20(sp)
 414:	848f008a 	lh	t7,138(a0)
 418:	849800b6 	lh	t8,182(a0)
 41c:	8fa5001c 	lw	a1,28(sp)
 420:	01f81023 	subu	v0,t7,t8
 424:	00021400 	sll	v0,v0,0x10
 428:	00021403 	sra	v0,v0,0x10
 42c:	04400003 	bltz	v0,43c <func_8001D25C+0x40>
 430:	00021823 	negu	v1,v0
 434:	10000001 	b	43c <func_8001D25C+0x40>
 438:	00401825 	move	v1,v0
 43c:	28612800 	slti	at,v1,10240
 440:	1420000c 	bnez	at,474 <func_8001D25C+0x78>
 444:	00000000 	nop
 448:	8499001c 	lh	t9,28(a0)
 44c:	2401000a 	li	at,10
 450:	57210014 	bnel	t9,at,4a4 <func_8001D25C+0xa8>
 454:	8fbf0014 	lw	ra,20(sp)
 458:	04400003 	bltz	v0,468 <func_8001D25C+0x6c>
 45c:	00021823 	negu	v1,v0
 460:	10000001 	b	468 <func_8001D25C+0x6c>
 464:	00401825 	move	v1,v0
 468:	28615801 	slti	at,v1,22529
 46c:	5420000d 	bnezl	at,4a4 <func_8001D25C+0xa8>
 470:	8fbf0014 	lw	ra,20(sp)
 474:	0c000000 	jal	0 <EnAObj_SetupAction>
 478:	afa40018 	sw	a0,24(sp)
 47c:	10400006 	beqz	v0,498 <func_8001D25C+0x9c>
 480:	8fa40018 	lw	a0,24(sp)
 484:	3c050000 	lui	a1,0x0
 488:	0c000000 	jal	0 <EnAObj_SetupAction>
 48c:	24a50000 	addiu	a1,a1,0
 490:	10000004 	b	4a4 <func_8001D25C+0xa8>
 494:	8fbf0014 	lw	ra,20(sp)
 498:	0c000000 	jal	0 <EnAObj_SetupAction>
 49c:	8fa5001c 	lw	a1,28(sp)
 4a0:	8fbf0014 	lw	ra,20(sp)
 4a4:	27bd0018 	addiu	sp,sp,24
 4a8:	03e00008 	jr	ra
 4ac:	00000000 	nop

000004b0 <func_8001D310>:
 4b0:	27bdffe8 	addiu	sp,sp,-24
 4b4:	afbf0014 	sw	ra,20(sp)
 4b8:	afa5001c 	sw	a1,28(sp)
 4bc:	a4800032 	sh	zero,50(a0)
 4c0:	88980030 	lwl	t8,48(a0)
 4c4:	98980033 	lwr	t8,51(a0)
 4c8:	240e000a 	li	t6,10
 4cc:	3c050000 	lui	a1,0x0
 4d0:	a89800b4 	swl	t8,180(a0)
 4d4:	b89800b7 	swr	t8,183(a0)
 4d8:	94980034 	lhu	t8,52(a0)
 4dc:	a480016e 	sh	zero,366(a0)
 4e0:	ac8e0168 	sw	t6,360(a0)
 4e4:	24a50000 	addiu	a1,a1,0
 4e8:	0c000000 	jal	0 <EnAObj_SetupAction>
 4ec:	a49800b8 	sh	t8,184(a0)
 4f0:	8fbf0014 	lw	ra,20(sp)
 4f4:	27bd0018 	addiu	sp,sp,24
 4f8:	03e00008 	jr	ra
 4fc:	00000000 	nop

00000500 <func_8001D360>:
 500:	afa50004 	sw	a1,4(sp)
 504:	8482016e 	lh	v0,366(a0)
 508:	5440001d 	bnezl	v0,580 <func_8001D360+0x80>
 50c:	8c820168 	lw	v0,360(a0)
 510:	908e0160 	lbu	t6,352(a0)
 514:	244f0001 	addiu	t7,v0,1
 518:	11c0003f 	beqz	t6,618 <func_8001D360+0x118>
 51c:	00000000 	nop
 520:	8499008a 	lh	t9,138(a0)
 524:	24180014 	li	t8,20
 528:	a48f016e 	sh	t7,366(a0)
 52c:	27284000 	addiu	t0,t9,16384
 530:	00084c00 	sll	t1,t0,0x10
 534:	00095403 	sra	t2,t1,0x10
 538:	05410004 	bgez	t2,54c <func_8001D360+0x4c>
 53c:	a4980170 	sh	t8,368(a0)
 540:	240bfc18 	li	t3,-1000
 544:	10000003 	b	554 <func_8001D360+0x54>
 548:	a48b0174 	sh	t3,372(a0)
 54c:	240c03e8 	li	t4,1000
 550:	a48c0174 	sh	t4,372(a0)
 554:	848d008a 	lh	t5,138(a0)
 558:	05a30006 	bgezl	t5,574 <func_8001D360+0x74>
 55c:	84980174 	lh	t8,372(a0)
 560:	848e0174 	lh	t6,372(a0)
 564:	000e7823 	negu	t7,t6
 568:	03e00008 	jr	ra
 56c:	a48f0172 	sh	t7,370(a0)
 570:	84980174 	lh	t8,372(a0)
 574:	03e00008 	jr	ra
 578:	a4980172 	sh	t8,370(a0)
 57c:	8c820168 	lw	v0,360(a0)
 580:	3c01bf80 	lui	at,0xbf80
 584:	10400003 	beqz	v0,594 <func_8001D360+0x94>
 588:	2459ffff 	addiu	t9,v0,-1
 58c:	03e00008 	jr	ra
 590:	ac990168 	sw	t9,360(a0)
 594:	848e0170 	lh	t6,368(a0)
 598:	848800b6 	lh	t0,182(a0)
 59c:	84890172 	lh	t1,370(a0)
 5a0:	25cfffff 	addiu	t7,t6,-1
 5a4:	848b00b4 	lh	t3,180(a0)
 5a8:	848c0174 	lh	t4,372(a0)
 5ac:	a48f0170 	sh	t7,368(a0)
 5b0:	84980170 	lh	t8,368(a0)
 5b4:	44812000 	mtc1	at,$f4
 5b8:	01095021 	addu	t2,t0,t1
 5bc:	016c6821 	addu	t5,t3,t4
 5c0:	a48a00b6 	sh	t2,182(a0)
 5c4:	a48d00b4 	sh	t5,180(a0)
 5c8:	17000013 	bnez	t8,618 <func_8001D360+0x118>
 5cc:	e484006c 	swc1	$f4,108(a0)
 5d0:	888b0030 	lwl	t3,48(a0)
 5d4:	988b0033 	lwr	t3,51(a0)
 5d8:	8c880008 	lw	t0,8(a0)
 5dc:	44800000 	mtc1	zero,$f0
 5e0:	a88b00b4 	swl	t3,180(a0)
 5e4:	b88b00b7 	swr	t3,183(a0)
 5e8:	ac880024 	sw	t0,36(a0)
 5ec:	8c880010 	lw	t0,16(a0)
 5f0:	8c99000c 	lw	t9,12(a0)
 5f4:	948b0034 	lhu	t3,52(a0)
 5f8:	2409000a 	li	t1,10
 5fc:	a480016e 	sh	zero,366(a0)
 600:	ac890168 	sw	t1,360(a0)
 604:	e4800060 	swc1	$f0,96(a0)
 608:	e480006c 	swc1	$f0,108(a0)
 60c:	ac88002c 	sw	t0,44(a0)
 610:	ac990028 	sw	t9,40(a0)
 614:	a48b00b8 	sh	t3,184(a0)
 618:	03e00008 	jr	ra
 61c:	00000000 	nop

00000620 <func_8001D480>:
 620:	27bdffe8 	addiu	sp,sp,-24
 624:	afa5001c 	sw	a1,28(sp)
 628:	afbf0014 	sw	ra,20(sp)
 62c:	3c050000 	lui	a1,0x0
 630:	0c000000 	jal	0 <EnAObj_SetupAction>
 634:	24a50000 	addiu	a1,a1,0
 638:	8fbf0014 	lw	ra,20(sp)
 63c:	27bd0018 	addiu	sp,sp,24
 640:	03e00008 	jr	ra
 644:	00000000 	nop

00000648 <func_8001D4A8>:
 648:	3c013f80 	lui	at,0x3f80
 64c:	44810000 	mtc1	at,$f0
 650:	27bdffd8 	addiu	sp,sp,-40
 654:	44802000 	mtc1	zero,$f4
 658:	afb00020 	sw	s0,32(sp)
 65c:	afa5002c 	sw	a1,44(sp)
 660:	00808025 	move	s0,a0
 664:	afbf0024 	sw	ra,36(sp)
 668:	44050000 	mfc1	a1,$f0
 66c:	44060000 	mfc1	a2,$f0
 670:	24840068 	addiu	a0,a0,104
 674:	3c073f00 	lui	a3,0x3f00
 678:	0c000000 	jal	0 <EnAObj_SetupAction>
 67c:	e7a40010 	swc1	$f4,16(sp)
 680:	44803000 	mtc1	zero,$f6
 684:	c6080068 	lwc1	$f8,104(s0)
 688:	860f0030 	lh	t7,48(s0)
 68c:	86090034 	lh	t1,52(s0)
 690:	46083032 	c.eq.s	$f6,$f8
 694:	860e00b4 	lh	t6,180(s0)
 698:	860800b8 	lh	t0,184(s0)
 69c:	000fc043 	sra	t8,t7,0x1
 6a0:	00095043 	sra	t2,t1,0x1
 6a4:	01d8c821 	addu	t9,t6,t8
 6a8:	010a5821 	addu	t3,t0,t2
 6ac:	a61900b4 	sh	t9,180(s0)
 6b0:	4501000f 	bc1t	6f0 <func_8001D4A8+0xa8>
 6b4:	a60b00b8 	sh	t3,184(s0)
 6b8:	960c0088 	lhu	t4,136(s0)
 6bc:	318d0008 	andi	t5,t4,0x8
 6c0:	51a0000c 	beqzl	t5,6f4 <func_8001D4A8+0xac>
 6c4:	96020088 	lhu	v0,136(s0)
 6c8:	8602007e 	lh	v0,126(s0)
 6cc:	860f0032 	lh	t7,50(s0)
 6d0:	96090088 	lhu	t1,136(s0)
 6d4:	24018000 	li	at,-32768
 6d8:	004f7023 	subu	t6,v0,t7
 6dc:	01c2c021 	addu	t8,t6,v0
 6e0:	0301c821 	addu	t9,t8,at
 6e4:	3128fff7 	andi	t0,t1,0xfff7
 6e8:	a6190032 	sh	t9,50(s0)
 6ec:	a6080088 	sh	t0,136(s0)
 6f0:	96020088 	lhu	v0,136(s0)
 6f4:	3c01c100 	lui	at,0xc100
 6f8:	304a0002 	andi	t2,v0,0x2
 6fc:	51400016 	beqzl	t2,758 <func_8001D4A8+0x110>
 700:	8fbf0024 	lw	ra,36(sp)
 704:	c6000060 	lwc1	$f0,96(s0)
 708:	44815000 	mtc1	at,$f10
 70c:	3c010000 	lui	at,0x0
 710:	460a003c 	c.lt.s	$f0,$f10
 714:	00000000 	nop
 718:	4500000c 	bc1f	74c <func_8001D4A8+0x104>
 71c:	00000000 	nop
 720:	c4300084 	lwc1	$f16,132(at)
 724:	3c010000 	lui	at,0x0
 728:	c6040068 	lwc1	$f4,104(s0)
 72c:	46100482 	mul.s	$f18,$f0,$f16
 730:	304bfffc 	andi	t3,v0,0xfffc
 734:	e6120060 	swc1	$f18,96(s0)
 738:	c4260088 	lwc1	$f6,136(at)
 73c:	a60b0088 	sh	t3,136(s0)
 740:	46062202 	mul.s	$f8,$f4,$f6
 744:	10000003 	b	754 <func_8001D4A8+0x10c>
 748:	e6080068 	swc1	$f8,104(s0)
 74c:	0c000000 	jal	0 <EnAObj_SetupAction>
 750:	02002025 	move	a0,s0
 754:	8fbf0024 	lw	ra,36(sp)
 758:	8fb00020 	lw	s0,32(sp)
 75c:	27bd0028 	addiu	sp,sp,40
 760:	03e00008 	jr	ra
 764:	00000000 	nop

00000768 <func_8001D5C8>:
 768:	3c014496 	lui	at,0x4496
 76c:	44812000 	mtc1	at,$f4
 770:	27bdffe8 	addiu	sp,sp,-24
 774:	3c014434 	lui	at,0x4434
 778:	44813000 	mtc1	at,$f6
 77c:	afbf0014 	sw	ra,20(sp)
 780:	afa5001c 	sw	a1,28(sp)
 784:	3c050000 	lui	a1,0x0
 788:	24a50000 	addiu	a1,a1,0
 78c:	e48400fc 	swc1	$f4,252(a0)
 790:	0c000000 	jal	0 <EnAObj_SetupAction>
 794:	e48600f8 	swc1	$f6,248(a0)
 798:	8fbf0014 	lw	ra,20(sp)
 79c:	27bd0018 	addiu	sp,sp,24
 7a0:	03e00008 	jr	ra
 7a4:	00000000 	nop

000007a8 <func_8001D608>:
 7a8:	27bdffd8 	addiu	sp,sp,-40
 7ac:	afbf0024 	sw	ra,36(sp)
 7b0:	afb00020 	sw	s0,32(sp)
 7b4:	afa5002c 	sw	a1,44(sp)
 7b8:	c4840068 	lwc1	$f4,104(a0)
 7bc:	c4860150 	lwc1	$f6,336(a0)
 7c0:	3c01c020 	lui	at,0xc020
 7c4:	44811000 	mtc1	at,$f2
 7c8:	46062200 	add.s	$f8,$f4,$f6
 7cc:	848e0158 	lh	t6,344(a0)
 7d0:	00808025 	move	s0,a0
 7d4:	3c014020 	lui	at,0x4020
 7d8:	e4880068 	swc1	$f8,104(a0)
 7dc:	c4800068 	lwc1	$f0,104(a0)
 7e0:	a48e0032 	sh	t6,50(a0)
 7e4:	4602003c 	c.lt.s	$f0,$f2
 7e8:	00000000 	nop
 7ec:	45020004 	bc1fl	800 <func_8001D608+0x58>
 7f0:	44816000 	mtc1	at,$f12
 7f4:	1000000b 	b	824 <func_8001D608+0x7c>
 7f8:	e4820068 	swc1	$f2,104(a0)
 7fc:	44816000 	mtc1	at,$f12
 800:	00000000 	nop
 804:	4600603c 	c.lt.s	$f12,$f0
 808:	00000000 	nop
 80c:	45020004 	bc1fl	820 <func_8001D608+0x78>
 810:	46000086 	mov.s	$f2,$f0
 814:	10000002 	b	820 <func_8001D608+0x78>
 818:	46006086 	mov.s	$f2,$f12
 81c:	46000086 	mov.s	$f2,$f0
 820:	e6020068 	swc1	$f2,104(s0)
 824:	3c013f80 	lui	at,0x3f80
 828:	44811000 	mtc1	at,$f2
 82c:	44800000 	mtc1	zero,$f0
 830:	26040068 	addiu	a0,s0,104
 834:	44061000 	mfc1	a2,$f2
 838:	44071000 	mfc1	a3,$f2
 83c:	44050000 	mfc1	a1,$f0
 840:	0c000000 	jal	0 <EnAObj_SetupAction>
 844:	e7a00010 	swc1	$f0,16(sp)
 848:	44800000 	mtc1	zero,$f0
 84c:	c60a0068 	lwc1	$f10,104(s0)
 850:	02002025 	move	a0,s0
 854:	460a0032 	c.eq.s	$f0,$f10
 858:	00000000 	nop
 85c:	45030006 	bc1tl	878 <func_8001D608+0xd0>
 860:	e6000154 	swc1	$f0,340(s0)
 864:	0c000000 	jal	0 <EnAObj_SetupAction>
 868:	2405200a 	li	a1,8202
 86c:	44800000 	mtc1	zero,$f0
 870:	00000000 	nop
 874:	e6000154 	swc1	$f0,340(s0)
 878:	e6000150 	swc1	$f0,336(s0)
 87c:	8fbf0024 	lw	ra,36(sp)
 880:	8fb00020 	lw	s0,32(sp)
 884:	27bd0028 	addiu	sp,sp,40
 888:	03e00008 	jr	ra
 88c:	00000000 	nop

00000890 <EnAObj_Update>:
 890:	27bdffc8 	addiu	sp,sp,-56
 894:	afb0001c 	sw	s0,28(sp)
 898:	00808025 	move	s0,a0
 89c:	afbf0024 	sw	ra,36(sp)
 8a0:	afb10020 	sw	s1,32(sp)
 8a4:	8e190164 	lw	t9,356(s0)
 8a8:	00a08825 	move	s1,a1
 8ac:	0320f809 	jalr	t9
 8b0:	00000000 	nop
 8b4:	0c000000 	jal	0 <EnAObj_SetupAction>
 8b8:	02002025 	move	a0,s0
 8bc:	44800000 	mtc1	zero,$f0
 8c0:	c604006c 	lwc1	$f4,108(s0)
 8c4:	46040032 	c.eq.s	$f0,$f4
 8c8:	00000000 	nop
 8cc:	45030017 	bc1tl	92c <EnAObj_Update+0x9c>
 8d0:	8e080028 	lw	t0,40(s0)
 8d4:	860e001c 	lh	t6,28(s0)
 8d8:	2401000b 	li	at,11
 8dc:	02202025 	move	a0,s1
 8e0:	11c1000b 	beq	t6,at,910 <EnAObj_Update+0x80>
 8e4:	02002825 	move	a1,s0
 8e8:	240f001d 	li	t7,29
 8ec:	afaf0014 	sw	t7,20(sp)
 8f0:	02202025 	move	a0,s1
 8f4:	02002825 	move	a1,s0
 8f8:	3c0640a0 	lui	a2,0x40a0
 8fc:	3c074220 	lui	a3,0x4220
 900:	0c000000 	jal	0 <EnAObj_SetupAction>
 904:	e7a00010 	swc1	$f0,16(sp)
 908:	10000008 	b	92c <EnAObj_Update+0x9c>
 90c:	8e080028 	lw	t0,40(s0)
 910:	2418001d 	li	t8,29
 914:	afb80014 	sw	t8,20(sp)
 918:	3c0640a0 	lui	a2,0x40a0
 91c:	3c0741a0 	lui	a3,0x41a0
 920:	0c000000 	jal	0 <EnAObj_SetupAction>
 924:	e7a00010 	swc1	$f0,16(sp)
 928:	8e080028 	lw	t0,40(s0)
 92c:	8e090024 	lw	t1,36(s0)
 930:	c6120178 	lwc1	$f18,376(s0)
 934:	8602001c 	lh	v0,28(s0)
 938:	ae08003c 	sw	t0,60(s0)
 93c:	c610003c 	lwc1	$f16,60(s0)
 940:	ae090038 	sw	t1,56(s0)
 944:	8e09002c 	lw	t1,44(s0)
 948:	46128480 	add.s	$f18,$f16,$f18
 94c:	24010009 	li	at,9
 950:	ae090040 	sw	t1,64(s0)
 954:	10410003 	beq	v0,at,964 <EnAObj_Update+0xd4>
 958:	e612003c 	swc1	$f18,60(s0)
 95c:	2401000a 	li	at,10
 960:	1441000b 	bne	v0,at,990 <EnAObj_Update+0x100>
 964:	2606017c 	addiu	a2,s0,380
 968:	00c02825 	move	a1,a2
 96c:	afa6002c 	sw	a2,44(sp)
 970:	0c000000 	jal	0 <EnAObj_SetupAction>
 974:	02002025 	move	a0,s0
 978:	3c010001 	lui	at,0x1
 97c:	34211e60 	ori	at,at,0x1e60
 980:	8fa6002c 	lw	a2,44(sp)
 984:	02212821 	addu	a1,s1,at
 988:	0c000000 	jal	0 <EnAObj_SetupAction>
 98c:	02202025 	move	a0,s1
 990:	8fbf0024 	lw	ra,36(sp)
 994:	8fb0001c 	lw	s0,28(sp)
 998:	8fb10020 	lw	s1,32(sp)
 99c:	03e00008 	jr	ra
 9a0:	27bd0038 	addiu	sp,sp,56

000009a4 <EnAObj_Draw>:
 9a4:	27bdffb8 	addiu	sp,sp,-72
 9a8:	afbf001c 	sw	ra,28(sp)
 9ac:	afb00018 	sw	s0,24(sp)
 9b0:	afa40048 	sw	a0,72(sp)
 9b4:	afa5004c 	sw	a1,76(sp)
 9b8:	848f001c 	lh	t7,28(a0)
 9bc:	3c060000 	lui	a2,0x0
 9c0:	24c60000 	addiu	a2,a2,0
 9c4:	afaf0044 	sw	t7,68(sp)
 9c8:	8ca50000 	lw	a1,0(a1)
 9cc:	27a40030 	addiu	a0,sp,48
 9d0:	240702bd 	li	a3,701
 9d4:	0c000000 	jal	0 <EnAObj_SetupAction>
 9d8:	00a08025 	move	s0,a1
 9dc:	8fb9004c 	lw	t9,76(sp)
 9e0:	0c000000 	jal	0 <EnAObj_SetupAction>
 9e4:	8f240000 	lw	a0,0(t9)
 9e8:	8fa80044 	lw	t0,68(sp)
 9ec:	2409000b 	li	t1,11
 9f0:	3c0dfa00 	lui	t5,0xfa00
 9f4:	2901000c 	slti	at,t0,12
 9f8:	14200002 	bnez	at,a04 <EnAObj_Draw+0x60>
 9fc:	3c18da38 	lui	t8,0xda38
 a00:	afa90044 	sw	t1,68(sp)
 a04:	8faa0048 	lw	t2,72(sp)
 a08:	2401000b 	li	at,11
 a0c:	35ad0001 	ori	t5,t5,0x1
 a10:	854b001c 	lh	t3,28(t2)
 a14:	55610009 	bnel	t3,at,a3c <EnAObj_Draw+0x98>
 a18:	8e0202c0 	lw	v0,704(s0)
 a1c:	8e0202c0 	lw	v0,704(s0)
 a20:	3c0e3c3c 	lui	t6,0x3c3c
 a24:	35ce3c32 	ori	t6,t6,0x3c32
 a28:	244c0008 	addiu	t4,v0,8
 a2c:	ae0c02c0 	sw	t4,704(s0)
 a30:	ac4e0004 	sw	t6,4(v0)
 a34:	ac4d0000 	sw	t5,0(v0)
 a38:	8e0202c0 	lw	v0,704(s0)
 a3c:	37180003 	ori	t8,t8,0x3
 a40:	3c050000 	lui	a1,0x0
 a44:	244f0008 	addiu	t7,v0,8
 a48:	ae0f02c0 	sw	t7,704(s0)
 a4c:	ac580000 	sw	t8,0(v0)
 a50:	8fb9004c 	lw	t9,76(sp)
 a54:	24a50014 	addiu	a1,a1,20
 a58:	240602c8 	li	a2,712
 a5c:	8f240000 	lw	a0,0(t9)
 a60:	0c000000 	jal	0 <EnAObj_SetupAction>
 a64:	afa20028 	sw	v0,40(sp)
 a68:	8fa30028 	lw	v1,40(sp)
 a6c:	3c09de00 	lui	t1,0xde00
 a70:	3c0c0000 	lui	t4,0x0
 a74:	ac620004 	sw	v0,4(v1)
 a78:	8e0202c0 	lw	v0,704(s0)
 a7c:	3c060000 	lui	a2,0x0
 a80:	24c60028 	addiu	a2,a2,40
 a84:	24480008 	addiu	t0,v0,8
 a88:	ae0802c0 	sw	t0,704(s0)
 a8c:	ac490000 	sw	t1,0(v0)
 a90:	8faa0044 	lw	t2,68(sp)
 a94:	27a40030 	addiu	a0,sp,48
 a98:	240702cb 	li	a3,715
 a9c:	000a5880 	sll	t3,t2,0x2
 aa0:	018b6021 	addu	t4,t4,t3
 aa4:	8d8c0064 	lw	t4,100(t4)
 aa8:	ac4c0004 	sw	t4,4(v0)
 aac:	8fad004c 	lw	t5,76(sp)
 ab0:	0c000000 	jal	0 <EnAObj_SetupAction>
 ab4:	8da50000 	lw	a1,0(t5)
 ab8:	8fbf001c 	lw	ra,28(sp)
 abc:	8fb00018 	lw	s0,24(sp)
 ac0:	27bd0048 	addiu	sp,sp,72
 ac4:	03e00008 	jr	ra
 ac8:	00000000 	nop
 acc:	00000000 	nop
