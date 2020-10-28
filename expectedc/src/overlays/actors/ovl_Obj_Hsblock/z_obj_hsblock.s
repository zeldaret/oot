
build/src/overlays/actors/ovl_Obj_Hsblock/z_obj_hsblock.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ObjHsblock_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850164 	sw	a1,356(a0)

00000008 <func_80B93B68>:
   8:	27bdffc8 	addiu	sp,sp,-56
   c:	afbf0024 	sw	ra,36(sp)
  10:	afb00020 	sw	s0,32(sp)
  14:	afa5003c 	sw	a1,60(sp)
  18:	00808025 	move	s0,a0
  1c:	afa60040 	sw	a2,64(sp)
  20:	afa00030 	sw	zero,48(sp)
  24:	0c000000 	jal	0 <ObjHsblock_SetupAction>
  28:	00e02825 	move	a1,a3
  2c:	8fa40040 	lw	a0,64(sp)
  30:	0c000000 	jal	0 <ObjHsblock_SetupAction>
  34:	27a50030 	addiu	a1,sp,48
  38:	8fa4003c 	lw	a0,60(sp)
  3c:	02003025 	move	a2,s0
  40:	8fa70030 	lw	a3,48(sp)
  44:	0c000000 	jal	0 <ObjHsblock_SetupAction>
  48:	24850810 	addiu	a1,a0,2064
  4c:	24010032 	li	at,50
  50:	1441000a 	bne	v0,at,7c <func_80B93B68+0x74>
  54:	ae02014c 	sw	v0,332(s0)
  58:	860e001c 	lh	t6,28(s0)
  5c:	3c040000 	lui	a0,0x0
  60:	3c050000 	lui	a1,0x0
  64:	86070000 	lh	a3,0(s0)
  68:	24a50040 	addiu	a1,a1,64
  6c:	24840000 	addiu	a0,a0,0
  70:	240600a3 	li	a2,163
  74:	0c000000 	jal	0 <ObjHsblock_SetupAction>
  78:	afae0010 	sw	t6,16(sp)
  7c:	8fbf0024 	lw	ra,36(sp)
  80:	8fb00020 	lw	s0,32(sp)
  84:	27bd0038 	addiu	sp,sp,56
  88:	03e00008 	jr	ra
  8c:	00000000 	nop

00000090 <func_80B93BF0>:
  90:	27bdffc0 	addiu	sp,sp,-64
  94:	afbf003c 	sw	ra,60(sp)
  98:	afb00038 	sw	s0,56(sp)
  9c:	848e001c 	lh	t6,28(a0)
  a0:	00808025 	move	s0,a0
  a4:	00a03025 	move	a2,a1
  a8:	000e7943 	sra	t7,t6,0x5
  ac:	31f80001 	andi	t8,t7,0x1
  b0:	53000014 	beqzl	t8,104 <func_80B93BF0+0x74>
  b4:	8fbf003c 	lw	ra,60(sp)
  b8:	c6040024 	lwc1	$f4,36(s0)
  bc:	24a41c24 	addiu	a0,a1,7204
  c0:	240a0001 	li	t2,1
  c4:	e7a40010 	swc1	$f4,16(sp)
  c8:	c6060028 	lwc1	$f6,40(s0)
  cc:	02002825 	move	a1,s0
  d0:	2407011e 	li	a3,286
  d4:	e7a60014 	swc1	$f6,20(sp)
  d8:	c608002c 	lwc1	$f8,44(s0)
  dc:	e7a80018 	swc1	$f8,24(sp)
  e0:	86190030 	lh	t9,48(s0)
  e4:	afb9001c 	sw	t9,28(sp)
  e8:	86080032 	lh	t0,50(s0)
  ec:	afa80020 	sw	t0,32(sp)
  f0:	86090034 	lh	t1,52(s0)
  f4:	afaa0028 	sw	t2,40(sp)
  f8:	0c000000 	jal	0 <ObjHsblock_SetupAction>
  fc:	afa90024 	sw	t1,36(sp)
 100:	8fbf003c 	lw	ra,60(sp)
 104:	8fb00038 	lw	s0,56(sp)
 108:	27bd0040 	addiu	sp,sp,64
 10c:	03e00008 	jr	ra
 110:	00000000 	nop

00000114 <ObjHsblock_Init>:
 114:	27bdffe0 	addiu	sp,sp,-32
 118:	afb00018 	sw	s0,24(sp)
 11c:	00808025 	move	s0,a0
 120:	afbf001c 	sw	ra,28(sp)
 124:	afa50024 	sw	a1,36(sp)
 128:	860e001c 	lh	t6,28(s0)
 12c:	3c060000 	lui	a2,0x0
 130:	00003825 	move	a3,zero
 134:	31cf0003 	andi	t7,t6,0x3
 138:	000fc080 	sll	t8,t7,0x2
 13c:	00d83021 	addu	a2,a2,t8
 140:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 144:	8cc60000 	lw	a2,0(a2)
 148:	3c050000 	lui	a1,0x0
 14c:	24a5002c 	addiu	a1,a1,44
 150:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 154:	02002025 	move	a0,s0
 158:	02002025 	move	a0,s0
 15c:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 160:	8fa50024 	lw	a1,36(sp)
 164:	8603001c 	lh	v1,28(s0)
 168:	24010001 	li	at,1
 16c:	30620003 	andi	v0,v1,0x3
 170:	10400006 	beqz	v0,18c <ObjHsblock_Init+0x78>
 174:	00000000 	nop
 178:	10410008 	beq	v0,at,19c <ObjHsblock_Init+0x88>
 17c:	8fa40024 	lw	a0,36(sp)
 180:	24010002 	li	at,2
 184:	14410010 	bne	v0,at,1c8 <ObjHsblock_Init+0xb4>
 188:	00000000 	nop
 18c:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 190:	02002025 	move	a0,s0
 194:	1000000c 	b	1c8 <ObjHsblock_Init+0xb4>
 198:	00000000 	nop
 19c:	00032a03 	sra	a1,v1,0x8
 1a0:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 1a4:	30a5003f 	andi	a1,a1,0x3f
 1a8:	10400005 	beqz	v0,1c0 <ObjHsblock_Init+0xac>
 1ac:	00000000 	nop
 1b0:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 1b4:	02002025 	move	a0,s0
 1b8:	10000003 	b	1c8 <ObjHsblock_Init+0xb4>
 1bc:	00000000 	nop
 1c0:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 1c4:	02002025 	move	a0,s0
 1c8:	3c020000 	lui	v0,0x0
 1cc:	24420000 	addiu	v0,v0,0
 1d0:	8c590000 	lw	t9,0(v0)
 1d4:	240300ff 	li	v1,255
 1d8:	a723116e 	sh	v1,4462(t9)
 1dc:	8c480000 	lw	t0,0(v0)
 1e0:	a5031170 	sh	v1,4464(t0)
 1e4:	8c490000 	lw	t1,0(v0)
 1e8:	a5231172 	sh	v1,4466(t1)
 1ec:	8fbf001c 	lw	ra,28(sp)
 1f0:	8fb00018 	lw	s0,24(sp)
 1f4:	27bd0020 	addiu	sp,sp,32
 1f8:	03e00008 	jr	ra
 1fc:	00000000 	nop

00000200 <ObjHsblock_Destroy>:
 200:	27bdffe8 	addiu	sp,sp,-24
 204:	afa40018 	sw	a0,24(sp)
 208:	8fae0018 	lw	t6,24(sp)
 20c:	afbf0014 	sw	ra,20(sp)
 210:	00a02025 	move	a0,a1
 214:	24a50810 	addiu	a1,a1,2064
 218:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 21c:	8dc6014c 	lw	a2,332(t6)
 220:	8fbf0014 	lw	ra,20(sp)
 224:	27bd0018 	addiu	sp,sp,24
 228:	03e00008 	jr	ra
 22c:	00000000 	nop

00000230 <func_80B93D90>:
 230:	27bdffe8 	addiu	sp,sp,-24
 234:	afbf0014 	sw	ra,20(sp)
 238:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 23c:	00002825 	move	a1,zero
 240:	8fbf0014 	lw	ra,20(sp)
 244:	27bd0018 	addiu	sp,sp,24
 248:	03e00008 	jr	ra
 24c:	00000000 	nop

00000250 <func_80B93DB0>:
 250:	27bdffe8 	addiu	sp,sp,-24
 254:	afbf0014 	sw	ra,20(sp)
 258:	3c0142d2 	lui	at,0x42d2
 25c:	44813000 	mtc1	at,$f6
 260:	c484000c 	lwc1	$f4,12(a0)
 264:	8c8e0004 	lw	t6,4(a0)
 268:	3c050000 	lui	a1,0x0
 26c:	46062201 	sub.s	$f8,$f4,$f6
 270:	35cf0010 	ori	t7,t6,0x10
 274:	ac8f0004 	sw	t7,4(a0)
 278:	24a50000 	addiu	a1,a1,0
 27c:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 280:	e4880028 	swc1	$f8,40(a0)
 284:	8fbf0014 	lw	ra,20(sp)
 288:	27bd0018 	addiu	sp,sp,24
 28c:	03e00008 	jr	ra
 290:	00000000 	nop

00000294 <func_80B93DF4>:
 294:	27bdffe8 	addiu	sp,sp,-24
 298:	afa40018 	sw	a0,24(sp)
 29c:	8fae0018 	lw	t6,24(sp)
 2a0:	afbf0014 	sw	ra,20(sp)
 2a4:	00a02025 	move	a0,a1
 2a8:	85c5001c 	lh	a1,28(t6)
 2ac:	00052a03 	sra	a1,a1,0x8
 2b0:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 2b4:	30a5003f 	andi	a1,a1,0x3f
 2b8:	50400004 	beqzl	v0,2cc <func_80B93DF4+0x38>
 2bc:	8fbf0014 	lw	ra,20(sp)
 2c0:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 2c4:	8fa40018 	lw	a0,24(sp)
 2c8:	8fbf0014 	lw	ra,20(sp)
 2cc:	27bd0018 	addiu	sp,sp,24
 2d0:	03e00008 	jr	ra
 2d4:	00000000 	nop

000002d8 <func_80B93E38>:
 2d8:	27bdffe8 	addiu	sp,sp,-24
 2dc:	afbf0014 	sw	ra,20(sp)
 2e0:	3c050000 	lui	a1,0x0
 2e4:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 2e8:	24a50000 	addiu	a1,a1,0
 2ec:	8fbf0014 	lw	ra,20(sp)
 2f0:	27bd0018 	addiu	sp,sp,24
 2f4:	03e00008 	jr	ra
 2f8:	00000000 	nop

000002fc <func_80B93E5C>:
 2fc:	27bdffd8 	addiu	sp,sp,-40
 300:	44802000 	mtc1	zero,$f4
 304:	afb00020 	sw	s0,32(sp)
 308:	00808025 	move	s0,a0
 30c:	afbf0024 	sw	ra,36(sp)
 310:	afa5002c 	sw	a1,44(sp)
 314:	3c063dcc 	lui	a2,0x3dcc
 318:	3c073f4c 	lui	a3,0x3f4c
 31c:	34e7cccd 	ori	a3,a3,0xcccd
 320:	34c6cccd 	ori	a2,a2,0xcccd
 324:	3c054180 	lui	a1,0x4180
 328:	24840060 	addiu	a0,a0,96
 32c:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 330:	e7a40010 	swc1	$f4,16(sp)
 334:	3c010000 	lui	at,0x0
 338:	c4220090 	lwc1	$f2,144(at)
 33c:	8e05000c 	lw	a1,12(s0)
 340:	8e070060 	lw	a3,96(s0)
 344:	44061000 	mfc1	a2,$f2
 348:	26040028 	addiu	a0,s0,40
 34c:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 350:	e7a20010 	swc1	$f2,16(sp)
 354:	3c010000 	lui	at,0x0
 358:	c4260094 	lwc1	$f6,148(at)
 35c:	46000005 	abs.s	$f0,$f0
 360:	4606003c 	c.lt.s	$f0,$f6
 364:	00000000 	nop
 368:	4502000a 	bc1fl	394 <func_80B93E5C+0x98>
 36c:	8fbf0024 	lw	ra,36(sp)
 370:	c608000c 	lwc1	$f8,12(s0)
 374:	02002025 	move	a0,s0
 378:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 37c:	e6080028 	swc1	$f8,40(s0)
 380:	8e0e0004 	lw	t6,4(s0)
 384:	2401ffef 	li	at,-17
 388:	01c17824 	and	t7,t6,at
 38c:	ae0f0004 	sw	t7,4(s0)
 390:	8fbf0024 	lw	ra,36(sp)
 394:	8fb00020 	lw	s0,32(sp)
 398:	27bd0028 	addiu	sp,sp,40
 39c:	03e00008 	jr	ra
 3a0:	00000000 	nop

000003a4 <ObjHsblock_Update>:
 3a4:	27bdffe8 	addiu	sp,sp,-24
 3a8:	afbf0014 	sw	ra,20(sp)
 3ac:	8c820164 	lw	v0,356(a0)
 3b0:	50400005 	beqzl	v0,3c8 <ObjHsblock_Update+0x24>
 3b4:	848e001c 	lh	t6,28(a0)
 3b8:	0040f809 	jalr	v0
 3bc:	afa40018 	sw	a0,24(sp)
 3c0:	8fa40018 	lw	a0,24(sp)
 3c4:	848e001c 	lh	t6,28(a0)
 3c8:	3c050000 	lui	a1,0x0
 3cc:	31cf0003 	andi	t7,t6,0x3
 3d0:	000fc080 	sll	t8,t7,0x2
 3d4:	00b82821 	addu	a1,a1,t8
 3d8:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 3dc:	8ca50000 	lw	a1,0(a1)
 3e0:	8fbf0014 	lw	ra,20(sp)
 3e4:	27bd0018 	addiu	sp,sp,24
 3e8:	03e00008 	jr	ra
 3ec:	00000000 	nop

000003f0 <ObjHsblock_Draw>:
 3f0:	27bdffb0 	addiu	sp,sp,-80
 3f4:	afb10018 	sw	s1,24(sp)
 3f8:	00a08825 	move	s1,a1
 3fc:	afbf001c 	sw	ra,28(sp)
 400:	afb00014 	sw	s0,20(sp)
 404:	afa40050 	sw	a0,80(sp)
 408:	8ca50000 	lw	a1,0(a1)
 40c:	3c060000 	lui	a2,0x0
 410:	24c60054 	addiu	a2,a2,84
 414:	27a40034 	addiu	a0,sp,52
 418:	2407016d 	li	a3,365
 41c:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 420:	00a08025 	move	s0,a1
 424:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 428:	8e240000 	lw	a0,0(s1)
 42c:	8e0202c0 	lw	v0,704(s0)
 430:	3c0fda38 	lui	t7,0xda38
 434:	35ef0003 	ori	t7,t7,0x3
 438:	244e0008 	addiu	t6,v0,8
 43c:	ae0e02c0 	sw	t6,704(s0)
 440:	ac4f0000 	sw	t7,0(v0)
 444:	8e240000 	lw	a0,0(s1)
 448:	3c050000 	lui	a1,0x0
 44c:	24a50068 	addiu	a1,a1,104
 450:	24060171 	li	a2,369
 454:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 458:	afa20030 	sw	v0,48(sp)
 45c:	8fa30030 	lw	v1,48(sp)
 460:	24010004 	li	at,4
 464:	3c040000 	lui	a0,0x0
 468:	ac620004 	sw	v0,4(v1)
 46c:	863800a4 	lh	t8,164(s1)
 470:	3c020000 	lui	v0,0x0
 474:	17010003 	bne	t8,at,484 <ObjHsblock_Draw+0x94>
 478:	00000000 	nop
 47c:	10000009 	b	4a4 <ObjHsblock_Draw+0xb4>
 480:	24840048 	addiu	a0,a0,72
 484:	8c420000 	lw	v0,0(v0)
 488:	27a40048 	addiu	a0,sp,72
 48c:	8459116e 	lh	t9,4462(v0)
 490:	a3b90048 	sb	t9,72(sp)
 494:	84481170 	lh	t0,4464(v0)
 498:	a3a80049 	sb	t0,73(sp)
 49c:	84491172 	lh	t1,4466(v0)
 4a0:	a3a9004a 	sb	t1,74(sp)
 4a4:	8e0202c0 	lw	v0,704(s0)
 4a8:	3c0bfb00 	lui	t3,0xfb00
 4ac:	3c060000 	lui	a2,0x0
 4b0:	244a0008 	addiu	t2,v0,8
 4b4:	ae0a02c0 	sw	t2,704(s0)
 4b8:	ac4b0000 	sw	t3,0(v0)
 4bc:	90980001 	lbu	t8,1(a0)
 4c0:	908d0000 	lbu	t5,0(a0)
 4c4:	908a0002 	lbu	t2,2(a0)
 4c8:	0018cc00 	sll	t9,t8,0x10
 4cc:	000d7600 	sll	t6,t5,0x18
 4d0:	01d94025 	or	t0,t6,t9
 4d4:	000a5a00 	sll	t3,t2,0x8
 4d8:	010b6025 	or	t4,t0,t3
 4dc:	358d00ff 	ori	t5,t4,0xff
 4e0:	ac4d0004 	sw	t5,4(v0)
 4e4:	8e0202c0 	lw	v0,704(s0)
 4e8:	3c18de00 	lui	t8,0xde00
 4ec:	3c080000 	lui	t0,0x0
 4f0:	244f0008 	addiu	t7,v0,8
 4f4:	ae0f02c0 	sw	t7,704(s0)
 4f8:	ac580000 	sw	t8,0(v0)
 4fc:	8fae0050 	lw	t6,80(sp)
 500:	27a40034 	addiu	a0,sp,52
 504:	24c6007c 	addiu	a2,a2,124
 508:	85d9001c 	lh	t9,28(t6)
 50c:	2407018f 	li	a3,399
 510:	33290003 	andi	t1,t9,0x3
 514:	00095080 	sll	t2,t1,0x2
 518:	010a4021 	addu	t0,t0,t2
 51c:	8d08004c 	lw	t0,76(t0)
 520:	ac480004 	sw	t0,4(v0)
 524:	0c000000 	jal	0 <ObjHsblock_SetupAction>
 528:	8e250000 	lw	a1,0(s1)
 52c:	8fbf001c 	lw	ra,28(sp)
 530:	8fb00014 	lw	s0,20(sp)
 534:	8fb10018 	lw	s1,24(sp)
 538:	03e00008 	jr	ra
 53c:	27bd0050 	addiu	sp,sp,80
