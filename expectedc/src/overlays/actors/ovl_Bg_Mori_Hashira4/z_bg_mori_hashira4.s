
build/src/overlays/actors/ovl_Bg_Mori_Hashira4/z_bg_mori_hashira4.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgMoriHashira4_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850164 	sw	a1,356(a0)

00000008 <BgMoriHashira4_InitDynaPoly>:
   8:	27bdffc8 	addiu	sp,sp,-56
   c:	afbf0024 	sw	ra,36(sp)
  10:	afb00020 	sw	s0,32(sp)
  14:	afa5003c 	sw	a1,60(sp)
  18:	00808025 	move	s0,a0
  1c:	afa60040 	sw	a2,64(sp)
  20:	afa00030 	sw	zero,48(sp)
  24:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
  28:	00e02825 	move	a1,a3
  2c:	8fa40040 	lw	a0,64(sp)
  30:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
  34:	27a50030 	addiu	a1,sp,48
  38:	8fa4003c 	lw	a0,60(sp)
  3c:	02003025 	move	a2,s0
  40:	8fa70030 	lw	a3,48(sp)
  44:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
  48:	24850810 	addiu	a1,a0,2064
  4c:	24010032 	li	at,50
  50:	1441000a 	bne	v0,at,7c <BgMoriHashira4_InitDynaPoly+0x74>
  54:	ae02014c 	sw	v0,332(s0)
  58:	860e001c 	lh	t6,28(s0)
  5c:	3c040000 	lui	a0,0x0
  60:	3c050000 	lui	a1,0x0
  64:	86070000 	lh	a3,0(s0)
  68:	24a50040 	addiu	a1,a1,64
  6c:	24840000 	addiu	a0,a0,0
  70:	2406009b 	li	a2,155
  74:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
  78:	afae0010 	sw	t6,16(sp)
  7c:	8fbf0024 	lw	ra,36(sp)
  80:	8fb00020 	lw	s0,32(sp)
  84:	27bd0038 	addiu	sp,sp,56
  88:	03e00008 	jr	ra
  8c:	00000000 	nop

00000090 <BgMoriHashira4_Init>:
  90:	27bdffe0 	addiu	sp,sp,-32
  94:	afbf001c 	sw	ra,28(sp)
  98:	afb00018 	sw	s0,24(sp)
  9c:	afa50024 	sw	a1,36(sp)
  a0:	8482001c 	lh	v0,28(a0)
  a4:	00808025 	move	s0,a0
  a8:	3c060000 	lui	a2,0x0
  ac:	305800ff 	andi	t8,v0,0xff
  b0:	a498001c 	sh	t8,28(a0)
  b4:	8499001c 	lh	t9,28(a0)
  b8:	00027203 	sra	t6,v0,0x8
  bc:	31cf003f 	andi	t7,t6,0x3f
  c0:	17200008 	bnez	t9,e4 <BgMoriHashira4_Init+0x54>
  c4:	a08f0169 	sb	t7,361(a0)
  c8:	3c060000 	lui	a2,0x0
  cc:	24c60000 	addiu	a2,a2,0
  d0:	8fa50024 	lw	a1,36(sp)
  d4:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
  d8:	24070003 	li	a3,3
  dc:	10000006 	b	f8 <BgMoriHashira4_Init+0x68>
  e0:	00000000 	nop
  e4:	02002025 	move	a0,s0
  e8:	8fa50024 	lw	a1,36(sp)
  ec:	24c60000 	addiu	a2,a2,0
  f0:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
  f4:	00003825 	move	a3,zero
  f8:	3c050000 	lui	a1,0x0
  fc:	24a50020 	addiu	a1,a1,32
 100:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 104:	02002025 	move	a0,s0
 108:	8fa40024 	lw	a0,36(sp)
 10c:	3c010001 	lui	at,0x1
 110:	342117a4 	ori	at,at,0x17a4
 114:	24050073 	li	a1,115
 118:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 11c:	00812021 	addu	a0,a0,at
 120:	a2020168 	sb	v0,360(s0)
 124:	82080168 	lb	t0,360(s0)
 128:	0503000d 	bgezl	t0,160 <BgMoriHashira4_Init+0xd0>
 12c:	8609001c 	lh	t1,28(s0)
 130:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 134:	02002025 	move	a0,s0
 138:	3c040000 	lui	a0,0x0
 13c:	3c060000 	lui	a2,0x0
 140:	24c60088 	addiu	a2,a2,136
 144:	24840058 	addiu	a0,a0,88
 148:	8605001c 	lh	a1,28(s0)
 14c:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 150:	240700c4 	li	a3,196
 154:	10000019 	b	1bc <BgMoriHashira4_Init+0x12c>
 158:	8fbf001c 	lw	ra,28(sp)
 15c:	8609001c 	lh	t1,28(s0)
 160:	8fa40024 	lw	a0,36(sp)
 164:	5120000a 	beqzl	t1,190 <BgMoriHashira4_Init+0x100>
 168:	02002025 	move	a0,s0
 16c:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 170:	82050169 	lb	a1,361(s0)
 174:	50400006 	beqzl	v0,190 <BgMoriHashira4_Init+0x100>
 178:	02002025 	move	a0,s0
 17c:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 180:	02002025 	move	a0,s0
 184:	1000000d 	b	1bc <BgMoriHashira4_Init+0x12c>
 188:	8fbf001c 	lw	ra,28(sp)
 18c:	02002025 	move	a0,s0
 190:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 194:	3c054248 	lui	a1,0x4248
 198:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 19c:	02002025 	move	a0,s0
 1a0:	3c040000 	lui	a0,0x0
 1a4:	248400a0 	addiu	a0,a0,160
 1a8:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 1ac:	8605001c 	lh	a1,28(s0)
 1b0:	3c010000 	lui	at,0x0
 1b4:	a4200000 	sh	zero,0(at)
 1b8:	8fbf001c 	lw	ra,28(sp)
 1bc:	8fb00018 	lw	s0,24(sp)
 1c0:	27bd0020 	addiu	sp,sp,32
 1c4:	03e00008 	jr	ra
 1c8:	00000000 	nop

000001cc <BgMoriHashira4_Destroy>:
 1cc:	27bdffe8 	addiu	sp,sp,-24
 1d0:	afa40018 	sw	a0,24(sp)
 1d4:	8fae0018 	lw	t6,24(sp)
 1d8:	afbf0014 	sw	ra,20(sp)
 1dc:	00a02025 	move	a0,a1
 1e0:	24a50810 	addiu	a1,a1,2064
 1e4:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 1e8:	8dc6014c 	lw	a2,332(t6)
 1ec:	8fbf0014 	lw	ra,20(sp)
 1f0:	27bd0018 	addiu	sp,sp,24
 1f4:	03e00008 	jr	ra
 1f8:	00000000 	nop

000001fc <BgMoriHashira4_SetupWaitForMoriTex>:
 1fc:	27bdffe8 	addiu	sp,sp,-24
 200:	afbf0014 	sw	ra,20(sp)
 204:	3c050000 	lui	a1,0x0
 208:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 20c:	24a50000 	addiu	a1,a1,0
 210:	8fbf0014 	lw	ra,20(sp)
 214:	27bd0018 	addiu	sp,sp,24
 218:	03e00008 	jr	ra
 21c:	00000000 	nop

00000220 <BgMoriHashira4_WaitForMoriTex>:
 220:	27bdffe0 	addiu	sp,sp,-32
 224:	afb00018 	sw	s0,24(sp)
 228:	3c010001 	lui	at,0x1
 22c:	00808025 	move	s0,a0
 230:	342117a4 	ori	at,at,0x17a4
 234:	afbf001c 	sw	ra,28(sp)
 238:	00a12021 	addu	a0,a1,at
 23c:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 240:	82050168 	lb	a1,360(s0)
 244:	50400010 	beqzl	v0,288 <BgMoriHashira4_WaitForMoriTex+0x68>
 248:	8fbf001c 	lw	ra,28(sp)
 24c:	860e001c 	lh	t6,28(s0)
 250:	a600016a 	sh	zero,362(s0)
 254:	02002025 	move	a0,s0
 258:	15c00005 	bnez	t6,270 <BgMoriHashira4_WaitForMoriTex+0x50>
 25c:	3c050000 	lui	a1,0x0
 260:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 264:	02002025 	move	a0,s0
 268:	10000003 	b	278 <BgMoriHashira4_WaitForMoriTex+0x58>
 26c:	00000000 	nop
 270:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 274:	24a50000 	addiu	a1,a1,0
 278:	3c0f0000 	lui	t7,0x0
 27c:	25ef0000 	addiu	t7,t7,0
 280:	ae0f0134 	sw	t7,308(s0)
 284:	8fbf001c 	lw	ra,28(sp)
 288:	8fb00018 	lw	s0,24(sp)
 28c:	27bd0020 	addiu	sp,sp,32
 290:	03e00008 	jr	ra
 294:	00000000 	nop

00000298 <BgMoriHashira4_SetupPillarsRotate>:
 298:	27bdffe8 	addiu	sp,sp,-24
 29c:	afbf0014 	sw	ra,20(sp)
 2a0:	3c050000 	lui	a1,0x0
 2a4:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 2a8:	24a50000 	addiu	a1,a1,0
 2ac:	8fbf0014 	lw	ra,20(sp)
 2b0:	27bd0018 	addiu	sp,sp,24
 2b4:	03e00008 	jr	ra
 2b8:	00000000 	nop

000002bc <BgMoriHashira4_PillarsRotate>:
 2bc:	27bdffe8 	addiu	sp,sp,-24
 2c0:	afbf0014 	sw	ra,20(sp)
 2c4:	afa5001c 	sw	a1,28(sp)
 2c8:	848e0032 	lh	t6,50(a0)
 2cc:	24052082 	li	a1,8322
 2d0:	25cf0096 	addiu	t7,t6,150
 2d4:	a48f0032 	sh	t7,50(a0)
 2d8:	84980032 	lh	t8,50(a0)
 2dc:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 2e0:	a49800b6 	sh	t8,182(a0)
 2e4:	8fbf0014 	lw	ra,20(sp)
 2e8:	27bd0018 	addiu	sp,sp,24
 2ec:	03e00008 	jr	ra
 2f0:	00000000 	nop

000002f4 <BgMoriHashira4_GateWait>:
 2f4:	27bdffd8 	addiu	sp,sp,-40
 2f8:	afb00020 	sw	s0,32(sp)
 2fc:	00808025 	move	s0,a0
 300:	afbf0024 	sw	ra,36(sp)
 304:	afa5002c 	sw	a1,44(sp)
 308:	00a02025 	move	a0,a1
 30c:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 310:	82050169 	lb	a1,361(s0)
 314:	54400005 	bnezl	v0,32c <BgMoriHashira4_GateWait+0x38>
 318:	860f016a 	lh	t7,362(s0)
 31c:	860e016a 	lh	t6,362(s0)
 320:	51c0001b 	beqzl	t6,390 <BgMoriHashira4_GateWait+0x9c>
 324:	8fbf0024 	lw	ra,36(sp)
 328:	860f016a 	lh	t7,362(s0)
 32c:	02002025 	move	a0,s0
 330:	25f80001 	addiu	t8,t7,1
 334:	a618016a 	sh	t8,362(s0)
 338:	8619016a 	lh	t9,362(s0)
 33c:	2b21001f 	slti	at,t9,31
 340:	54200013 	bnezl	at,390 <BgMoriHashira4_GateWait+0x9c>
 344:	8fbf0024 	lw	ra,36(sp)
 348:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 34c:	24052859 	li	a1,10329
 350:	3c050000 	lui	a1,0x0
 354:	24a50000 	addiu	a1,a1,0
 358:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 35c:	02002025 	move	a0,s0
 360:	8fa4002c 	lw	a0,44(sp)
 364:	2405177a 	li	a1,6010
 368:	24060014 	li	a2,20
 36c:	02003825 	move	a3,s0
 370:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 374:	afa00010 	sw	zero,16(sp)
 378:	3c030000 	lui	v1,0x0
 37c:	24630000 	addiu	v1,v1,0
 380:	84680000 	lh	t0,0(v1)
 384:	25090001 	addiu	t1,t0,1
 388:	a4690000 	sh	t1,0(v1)
 38c:	8fbf0024 	lw	ra,36(sp)
 390:	8fb00020 	lw	s0,32(sp)
 394:	27bd0028 	addiu	sp,sp,40
 398:	03e00008 	jr	ra
 39c:	00000000 	nop

000003a0 <BgMoriHashira4_GateOpen>:
 3a0:	27bdffe8 	addiu	sp,sp,-24
 3a4:	afbf0014 	sw	ra,20(sp)
 3a8:	afa5001c 	sw	a1,28(sp)
 3ac:	00803825 	move	a3,a0
 3b0:	3c0142f0 	lui	at,0x42f0
 3b4:	44813000 	mtc1	at,$f6
 3b8:	c4e4000c 	lwc1	$f4,12(a3)
 3bc:	afa70018 	sw	a3,24(sp)
 3c0:	24840028 	addiu	a0,a0,40
 3c4:	46062200 	add.s	$f8,$f4,$f6
 3c8:	3c064120 	lui	a2,0x4120
 3cc:	44054000 	mfc1	a1,$f8
 3d0:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 3d4:	00000000 	nop
 3d8:	10400003 	beqz	v0,3e8 <BgMoriHashira4_GateOpen+0x48>
 3dc:	8fa70018 	lw	a3,24(sp)
 3e0:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 3e4:	00e02025 	move	a0,a3
 3e8:	8fbf0014 	lw	ra,20(sp)
 3ec:	27bd0018 	addiu	sp,sp,24
 3f0:	03e00008 	jr	ra
 3f4:	00000000 	nop

000003f8 <BgMoriHashira4_Update>:
 3f8:	27bdffe8 	addiu	sp,sp,-24
 3fc:	afbf0014 	sw	ra,20(sp)
 400:	8c820164 	lw	v0,356(a0)
 404:	50400004 	beqzl	v0,418 <BgMoriHashira4_Update+0x20>
 408:	8fbf0014 	lw	ra,20(sp)
 40c:	0040f809 	jalr	v0
 410:	00000000 	nop
 414:	8fbf0014 	lw	ra,20(sp)
 418:	27bd0018 	addiu	sp,sp,24
 41c:	03e00008 	jr	ra
 420:	00000000 	nop

00000424 <BgMoriHashira4_Draw>:
 424:	27bdffb0 	addiu	sp,sp,-80
 428:	afb10018 	sw	s1,24(sp)
 42c:	00a08825 	move	s1,a1
 430:	afbf001c 	sw	ra,28(sp)
 434:	afb00014 	sw	s0,20(sp)
 438:	afa40050 	sw	a0,80(sp)
 43c:	8ca50000 	lw	a1,0(a1)
 440:	3c060000 	lui	a2,0x0
 444:	24c600c4 	addiu	a2,a2,196
 448:	27a40034 	addiu	a0,sp,52
 44c:	24070153 	li	a3,339
 450:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 454:	00a08025 	move	s0,a1
 458:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 45c:	8e240000 	lw	a0,0(s1)
 460:	8e0202c0 	lw	v0,704(s0)
 464:	3c0fdb06 	lui	t7,0xdb06
 468:	35ef0020 	ori	t7,t7,0x20
 46c:	244e0008 	addiu	t6,v0,8
 470:	ae0e02c0 	sw	t6,704(s0)
 474:	ac4f0000 	sw	t7,0(v0)
 478:	8fb80050 	lw	t8,80(sp)
 47c:	3c0a0001 	lui	t2,0x1
 480:	3c0cda38 	lui	t4,0xda38
 484:	83190168 	lb	t9,360(t8)
 488:	358c0003 	ori	t4,t4,0x3
 48c:	3c050000 	lui	a1,0x0
 490:	00194100 	sll	t0,t9,0x4
 494:	01194021 	addu	t0,t0,t9
 498:	00084080 	sll	t0,t0,0x2
 49c:	02284821 	addu	t1,s1,t0
 4a0:	01495021 	addu	t2,t2,t1
 4a4:	8d4a17b4 	lw	t2,6068(t2)
 4a8:	24a500dc 	addiu	a1,a1,220
 4ac:	24060158 	li	a2,344
 4b0:	ac4a0004 	sw	t2,4(v0)
 4b4:	8e0202c0 	lw	v0,704(s0)
 4b8:	244b0008 	addiu	t3,v0,8
 4bc:	ae0b02c0 	sw	t3,704(s0)
 4c0:	ac4c0000 	sw	t4,0(v0)
 4c4:	8e240000 	lw	a0,0(s1)
 4c8:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 4cc:	afa2002c 	sw	v0,44(sp)
 4d0:	8fa3002c 	lw	v1,44(sp)
 4d4:	3c0ede00 	lui	t6,0xde00
 4d8:	3c080000 	lui	t0,0x0
 4dc:	ac620004 	sw	v0,4(v1)
 4e0:	8e0202c0 	lw	v0,704(s0)
 4e4:	3c060000 	lui	a2,0x0
 4e8:	24c600f4 	addiu	a2,a2,244
 4ec:	244d0008 	addiu	t5,v0,8
 4f0:	ae0d02c0 	sw	t5,704(s0)
 4f4:	ac4e0000 	sw	t6,0(v0)
 4f8:	8faf0050 	lw	t7,80(sp)
 4fc:	27a40034 	addiu	a0,sp,52
 500:	2407015c 	li	a3,348
 504:	85f8001c 	lh	t8,28(t7)
 508:	0018c880 	sll	t9,t8,0x2
 50c:	01194021 	addu	t0,t0,t9
 510:	8d080030 	lw	t0,48(t0)
 514:	ac480004 	sw	t0,4(v0)
 518:	0c000000 	jal	0 <BgMoriHashira4_SetupAction>
 51c:	8e250000 	lw	a1,0(s1)
 520:	8fbf001c 	lw	ra,28(sp)
 524:	8fb00014 	lw	s0,20(sp)
 528:	8fb10018 	lw	s1,24(sp)
 52c:	03e00008 	jr	ra
 530:	27bd0050 	addiu	sp,sp,80
	...
