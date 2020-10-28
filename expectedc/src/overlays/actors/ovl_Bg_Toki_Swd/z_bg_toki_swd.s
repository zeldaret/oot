
build/src/overlays/actors/ovl_Bg_Toki_Swd/z_bg_toki_swd.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgTokiSwd_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac85014c 	sw	a1,332(a0)

00000008 <BgTokiSwd_Init>:
   8:	27bdffd0 	addiu	sp,sp,-48
   c:	afa50034 	sw	a1,52(sp)
  10:	afbf001c 	sw	ra,28(sp)
  14:	afb00018 	sw	s0,24(sp)
  18:	3c050000 	lui	a1,0x0
  1c:	00808025 	move	s0,a0
  20:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
  24:	24a50054 	addiu	a1,a1,84
  28:	3c014448 	lui	at,0x4448
  2c:	44812000 	mtc1	at,$f4
  30:	3c050000 	lui	a1,0x0
  34:	24a50000 	addiu	a1,a1,0
  38:	02002025 	move	a0,s0
  3c:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
  40:	e60400bc 	swc1	$f4,188(s0)
  44:	3c020000 	lui	v0,0x0
  48:	24420000 	addiu	v0,v0,0
  4c:	8c4e0004 	lw	t6,4(v0)
  50:	26050150 	addiu	a1,s0,336
  54:	55c00003 	bnezl	t6,64 <BgTokiSwd_Init+0x5c>
  58:	8c4f1360 	lw	t7,4960(v0)
  5c:	ae000134 	sw	zero,308(s0)
  60:	8c4f1360 	lw	t7,4960(v0)
  64:	24010005 	li	at,5
  68:	8fb90034 	lw	t9,52(sp)
  6c:	15e10004 	bne	t7,at,80 <BgTokiSwd_Init+0x78>
  70:	3c010001 	lui	at,0x1
  74:	00390821 	addu	at,at,t9
  78:	241800ff 	li	t8,255
  7c:	a4381d30 	sh	t8,7472(at)
  80:	8fa40034 	lw	a0,52(sp)
  84:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
  88:	afa50024 	sw	a1,36(sp)
  8c:	3c070000 	lui	a3,0x0
  90:	24e70020 	addiu	a3,a3,32
  94:	8fa40034 	lw	a0,52(sp)
  98:	8fa50024 	lw	a1,36(sp)
  9c:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
  a0:	02003025 	move	a2,s0
  a4:	02002025 	move	a0,s0
  a8:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
  ac:	8fa50024 	lw	a1,36(sp)
  b0:	3c060000 	lui	a2,0x0
  b4:	24c6004c 	addiu	a2,a2,76
  b8:	26040098 	addiu	a0,s0,152
  bc:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
  c0:	00002825 	move	a1,zero
  c4:	8fbf001c 	lw	ra,28(sp)
  c8:	8fb00018 	lw	s0,24(sp)
  cc:	27bd0030 	addiu	sp,sp,48
  d0:	03e00008 	jr	ra
  d4:	00000000 	nop

000000d8 <BgTokiSwd_Destroy>:
  d8:	27bdffe8 	addiu	sp,sp,-24
  dc:	00803025 	move	a2,a0
  e0:	afbf0014 	sw	ra,20(sp)
  e4:	00a02025 	move	a0,a1
  e8:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
  ec:	24c50150 	addiu	a1,a2,336
  f0:	8fbf0014 	lw	ra,20(sp)
  f4:	27bd0018 	addiu	sp,sp,24
  f8:	03e00008 	jr	ra
  fc:	00000000 	nop

00000100 <func_808BAF40>:
 100:	27bdffe0 	addiu	sp,sp,-32
 104:	afb00014 	sw	s0,20(sp)
 108:	3c100000 	lui	s0,0x0
 10c:	26100000 	addiu	s0,s0,0
 110:	960e0edc 	lhu	t6,3804(s0)
 114:	afb10018 	sw	s1,24(sp)
 118:	00a08825 	move	s1,a1
 11c:	31cf8000 	andi	t7,t6,0x8000
 120:	afbf001c 	sw	ra,28(sp)
 124:	15e00015 	bnez	t7,17c <func_808BAF40+0x7c>
 128:	afa40020 	sw	a0,32(sp)
 12c:	8e181360 	lw	t8,4960(s0)
 130:	3c054448 	lui	a1,0x4448
 134:	2b010004 	slti	at,t8,4
 138:	50200011 	beqzl	at,180 <func_808BAF40+0x80>
 13c:	8e0b0004 	lw	t3,4(s0)
 140:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 144:	24067530 	li	a2,30000
 148:	5040000d 	beqzl	v0,180 <func_808BAF40+0x80>
 14c:	8e0b0004 	lw	t3,4(s0)
 150:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 154:	02202025 	move	a0,s1
 158:	14400008 	bnez	v0,17c <func_808BAF40+0x7c>
 15c:	3c090000 	lui	t1,0x0
 160:	96190edc 	lhu	t9,3804(s0)
 164:	25290000 	addiu	t1,t1,0
 168:	240a0001 	li	t2,1
 16c:	37288000 	ori	t0,t9,0x8000
 170:	a6080edc 	sh	t0,3804(s0)
 174:	ae291d68 	sw	t1,7528(s1)
 178:	a20a1414 	sb	t2,5140(s0)
 17c:	8e0b0004 	lw	t3,4(s0)
 180:	8fa40020 	lw	a0,32(sp)
 184:	15600005 	bnez	t3,19c <func_808BAF40+0x9c>
 188:	00000000 	nop
 18c:	960c0ede 	lhu	t4,3806(s0)
 190:	318d0020 	andi	t5,t4,0x20
 194:	51a00026 	beqzl	t5,230 <func_808BAF40+0x130>
 198:	8e081360 	lw	t0,4960(s0)
 19c:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 1a0:	02202825 	move	a1,s1
 1a4:	1040001b 	beqz	v0,214 <func_808BAF40+0x114>
 1a8:	8fa40020 	lw	a0,32(sp)
 1ac:	8e0e0004 	lw	t6,4(s0)
 1b0:	3c180000 	lui	t8,0x0
 1b4:	02202025 	move	a0,s1
 1b8:	11c00007 	beqz	t6,1d8 <func_808BAF40+0xd8>
 1bc:	27180000 	addiu	t8,t8,0
 1c0:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 1c4:	2405003c 	li	a1,60
 1c8:	3c0f0000 	lui	t7,0x0
 1cc:	25ef0000 	addiu	t7,t7,0
 1d0:	10000002 	b	1dc <func_808BAF40+0xdc>
 1d4:	ae2f1d68 	sw	t7,7528(s1)
 1d8:	ae381d68 	sw	t8,7528(s1)
 1dc:	3c041000 	lui	a0,0x1000
 1e0:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 1e4:	348400ff 	ori	a0,a0,0xff
 1e8:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 1ec:	24040053 	li	a0,83
 1f0:	8fa40020 	lw	a0,32(sp)
 1f4:	24190001 	li	t9,1
 1f8:	a2191414 	sb	t9,5140(s0)
 1fc:	3c050000 	lui	a1,0x0
 200:	24a50000 	addiu	a1,a1,0
 204:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 208:	ac800118 	sw	zero,280(a0)
 20c:	10000008 	b	230 <func_808BAF40+0x130>
 210:	8e081360 	lw	t0,4960(s0)
 214:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 218:	24052000 	li	a1,8192
 21c:	10400003 	beqz	v0,22c <func_808BAF40+0x12c>
 220:	8fa40020 	lw	a0,32(sp)
 224:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 228:	02202825 	move	a1,s1
 22c:	8e081360 	lw	t0,4960(s0)
 230:	24010005 	li	at,5
 234:	15010008 	bne	t0,at,258 <func_808BAF40+0x158>
 238:	3c010001 	lui	at,0x1
 23c:	02211021 	addu	v0,s1,at
 240:	84431d30 	lh	v1,7472(v0)
 244:	18600003 	blez	v1,254 <func_808BAF40+0x154>
 248:	2469ffff 	addiu	t1,v1,-1
 24c:	10000002 	b	258 <func_808BAF40+0x158>
 250:	a4491d30 	sh	t1,7472(v0)
 254:	a4401d30 	sh	zero,7472(v0)
 258:	8fbf001c 	lw	ra,28(sp)
 25c:	8fb00014 	lw	s0,20(sp)
 260:	8fb10018 	lw	s1,24(sp)
 264:	03e00008 	jr	ra
 268:	27bd0020 	addiu	sp,sp,32

0000026c <func_808BB0AC>:
 26c:	27bdffe8 	addiu	sp,sp,-24
 270:	afbf0014 	sw	ra,20(sp)
 274:	afa5001c 	sw	a1,28(sp)
 278:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 27c:	afa40018 	sw	a0,24(sp)
 280:	10400012 	beqz	v0,2cc <func_808BB0AC+0x60>
 284:	8fa40018 	lw	a0,24(sp)
 288:	3c0e0000 	lui	t6,0x0
 28c:	8dce0004 	lw	t6,4(t6)
 290:	3c0f0000 	lui	t7,0x0
 294:	2405182d 	li	a1,6189
 298:	11c00006 	beqz	t6,2b4 <func_808BB0AC+0x48>
 29c:	25ef0000 	addiu	t7,t7,0
 2a0:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 2a4:	afa40018 	sw	a0,24(sp)
 2a8:	8fa40018 	lw	a0,24(sp)
 2ac:	10000002 	b	2b8 <func_808BB0AC+0x4c>
 2b0:	ac800134 	sw	zero,308(a0)
 2b4:	ac8f0134 	sw	t7,308(a0)
 2b8:	3c050000 	lui	a1,0x0
 2bc:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 2c0:	24a50000 	addiu	a1,a1,0
 2c4:	10000005 	b	2dc <func_808BB0AC+0x70>
 2c8:	8fbf0014 	lw	ra,20(sp)
 2cc:	8fb8001c 	lw	t8,28(sp)
 2d0:	8f021c44 	lw	v0,7236(t8)
 2d4:	ac440438 	sw	a0,1080(v0)
 2d8:	8fbf0014 	lw	ra,20(sp)
 2dc:	27bd0018 	addiu	sp,sp,24
 2e0:	03e00008 	jr	ra
 2e4:	00000000 	nop

000002e8 <func_808BB128>:
 2e8:	27bdffe8 	addiu	sp,sp,-24
 2ec:	afa40018 	sw	a0,24(sp)
 2f0:	afbf0014 	sw	ra,20(sp)
 2f4:	afa5001c 	sw	a1,28(sp)
 2f8:	00a02025 	move	a0,a1
 2fc:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 300:	24050001 	li	a1,1
 304:	5040000a 	beqzl	v0,330 <func_808BB128+0x48>
 308:	8fbf0014 	lw	ra,20(sp)
 30c:	8fa2001c 	lw	v0,28(sp)
 310:	3c010001 	lui	at,0x1
 314:	00411021 	addu	v0,v0,at
 318:	84431d30 	lh	v1,7472(v0)
 31c:	286100ff 	slti	at,v1,255
 320:	10200002 	beqz	at,32c <func_808BB128+0x44>
 324:	246e0005 	addiu	t6,v1,5
 328:	a44e1d30 	sh	t6,7472(v0)
 32c:	8fbf0014 	lw	ra,20(sp)
 330:	27bd0018 	addiu	sp,sp,24
 334:	03e00008 	jr	ra
 338:	00000000 	nop

0000033c <BgTokiSwd_Update>:
 33c:	27bdffe8 	addiu	sp,sp,-24
 340:	afbf0014 	sw	ra,20(sp)
 344:	afa5001c 	sw	a1,28(sp)
 348:	afa40018 	sw	a0,24(sp)
 34c:	8c99014c 	lw	t9,332(a0)
 350:	0320f809 	jalr	t9
 354:	00000000 	nop
 358:	8fa4001c 	lw	a0,28(sp)
 35c:	8fa70018 	lw	a3,24(sp)
 360:	3c010001 	lui	at,0x1
 364:	34211e60 	ori	at,at,0x1e60
 368:	00812821 	addu	a1,a0,at
 36c:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 370:	24e60150 	addiu	a2,a3,336
 374:	8fbf0014 	lw	ra,20(sp)
 378:	27bd0018 	addiu	sp,sp,24
 37c:	03e00008 	jr	ra
 380:	00000000 	nop

00000384 <BgTokiSwd_Draw>:
 384:	27bdffa0 	addiu	sp,sp,-96
 388:	afb0001c 	sw	s0,28(sp)
 38c:	00a08025 	move	s0,a1
 390:	afbf0024 	sw	ra,36(sp)
 394:	afb10020 	sw	s1,32(sp)
 398:	afa40060 	sw	a0,96(sp)
 39c:	8ca50000 	lw	a1,0(a1)
 3a0:	3c060000 	lui	a2,0x0
 3a4:	24c60000 	addiu	a2,a2,0
 3a8:	27a40038 	addiu	a0,sp,56
 3ac:	240702d7 	li	a3,727
 3b0:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 3b4:	00a08825 	move	s1,a1
 3b8:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 3bc:	8e040000 	lw	a0,0(s0)
 3c0:	8fa40060 	lw	a0,96(sp)
 3c4:	02002825 	move	a1,s0
 3c8:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 3cc:	00003025 	move	a2,zero
 3d0:	8e2202c0 	lw	v0,704(s1)
 3d4:	3c0fdb06 	lui	t7,0xdb06
 3d8:	35ef0020 	ori	t7,t7,0x20
 3dc:	244e0008 	addiu	t6,v0,8
 3e0:	ae2e02c0 	sw	t6,704(s1)
 3e4:	3c060001 	lui	a2,0x1
 3e8:	00d03021 	addu	a2,a2,s0
 3ec:	ac4f0000 	sw	t7,0(v0)
 3f0:	8cc61de4 	lw	a2,7652(a2)
 3f4:	8e040000 	lw	a0,0(s0)
 3f8:	24180020 	li	t8,32
 3fc:	30c6007f 	andi	a2,a2,0x7f
 400:	00063023 	negu	a2,a2
 404:	afb80010 	sw	t8,16(sp)
 408:	00002825 	move	a1,zero
 40c:	24070020 	li	a3,32
 410:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 414:	afa20034 	sw	v0,52(sp)
 418:	8fa30034 	lw	v1,52(sp)
 41c:	3c08da38 	lui	t0,0xda38
 420:	35080003 	ori	t0,t0,0x3
 424:	ac620004 	sw	v0,4(v1)
 428:	8e2202c0 	lw	v0,704(s1)
 42c:	3c050000 	lui	a1,0x0
 430:	24a50014 	addiu	a1,a1,20
 434:	24590008 	addiu	t9,v0,8
 438:	ae3902c0 	sw	t9,704(s1)
 43c:	ac480000 	sw	t0,0(v0)
 440:	8e040000 	lw	a0,0(s0)
 444:	240602e6 	li	a2,742
 448:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 44c:	afa20030 	sw	v0,48(sp)
 450:	8fa30030 	lw	v1,48(sp)
 454:	3c0b0000 	lui	t3,0x0
 458:	256b0000 	addiu	t3,t3,0
 45c:	ac620004 	sw	v0,4(v1)
 460:	8e2202c0 	lw	v0,704(s1)
 464:	3c0ade00 	lui	t2,0xde00
 468:	3c060000 	lui	a2,0x0
 46c:	24490008 	addiu	t1,v0,8
 470:	ae2902c0 	sw	t1,704(s1)
 474:	ac4b0004 	sw	t3,4(v0)
 478:	ac4a0000 	sw	t2,0(v0)
 47c:	8e050000 	lw	a1,0(s0)
 480:	24c60028 	addiu	a2,a2,40
 484:	27a40038 	addiu	a0,sp,56
 488:	0c000000 	jal	0 <BgTokiSwd_SetupAction>
 48c:	24070308 	li	a3,776
 490:	8fbf0024 	lw	ra,36(sp)
 494:	8fb0001c 	lw	s0,28(sp)
 498:	8fb10020 	lw	s1,32(sp)
 49c:	03e00008 	jr	ra
 4a0:	27bd0060 	addiu	sp,sp,96
	...
