
build/src/overlays/actors/ovl_Bg_Hidan_Kousi/z_bg_hidan_kousi.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHidanKousi_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850164 	sw	a1,356(a0)

00000008 <BgHidanKousi_Init>:
   8:	27bdffd0 	addiu	sp,sp,-48
   c:	afbf001c 	sw	ra,28(sp)
  10:	afb00018 	sw	s0,24(sp)
  14:	afa50034 	sw	a1,52(sp)
  18:	00808025 	move	s0,a0
  1c:	afa00024 	sw	zero,36(sp)
  20:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
  24:	00002825 	move	a1,zero
  28:	02002025 	move	a0,s0
  2c:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
  30:	3c054248 	lui	a1,0x4248
  34:	8605001c 	lh	a1,28(s0)
  38:	3c040000 	lui	a0,0x0
  3c:	24840000 	addiu	a0,a0,0
  40:	00053a03 	sra	a3,a1,0x8
  44:	30e700ff 	andi	a3,a3,0xff
  48:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
  4c:	30a600ff 	andi	a2,a1,0xff
  50:	3c050000 	lui	a1,0x0
  54:	24a5002c 	addiu	a1,a1,44
  58:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
  5c:	02002025 	move	a0,s0
  60:	8602001c 	lh	v0,28(s0)
  64:	3c040000 	lui	a0,0x0
  68:	304200ff 	andi	v0,v0,0xff
  6c:	04400003 	bltz	v0,7c <BgHidanKousi_Init+0x74>
  70:	28410003 	slti	at,v0,3
  74:	54200006 	bnezl	at,90 <BgHidanKousi_Init+0x88>
  78:	00027080 	sll	t6,v0,0x2
  7c:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
  80:	24840040 	addiu	a0,a0,64
  84:	8602001c 	lh	v0,28(s0)
  88:	304200ff 	andi	v0,v0,0xff
  8c:	00027080 	sll	t6,v0,0x2
  90:	3c040000 	lui	a0,0x0
  94:	008e2021 	addu	a0,a0,t6
  98:	8c840000 	lw	a0,0(a0)
  9c:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
  a0:	27a50024 	addiu	a1,sp,36
  a4:	8fa40034 	lw	a0,52(sp)
  a8:	02003025 	move	a2,s0
  ac:	8fa70024 	lw	a3,36(sp)
  b0:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
  b4:	24850810 	addiu	a1,a0,2064
  b8:	860f001c 	lh	t7,28(s0)
  bc:	3c080000 	lui	t0,0x0
  c0:	ae02014c 	sw	v0,332(s0)
  c4:	31f800ff 	andi	t8,t7,0xff
  c8:	0018c840 	sll	t9,t8,0x1
  cc:	01194021 	addu	t0,t0,t9
  d0:	85080000 	lh	t0,0(t0)
  d4:	860900b6 	lh	t1,182(s0)
  d8:	8605001c 	lh	a1,28(s0)
  dc:	01095021 	addu	t2,t0,t1
  e0:	a60a0032 	sh	t2,50(s0)
  e4:	00052a03 	sra	a1,a1,0x8
  e8:	30a500ff 	andi	a1,a1,0xff
  ec:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
  f0:	8fa40034 	lw	a0,52(sp)
  f4:	10400009 	beqz	v0,11c <BgHidanKousi_Init+0x114>
  f8:	02002025 	move	a0,s0
  fc:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 100:	02002025 	move	a0,s0
 104:	3c050000 	lui	a1,0x0
 108:	24a50000 	addiu	a1,a1,0
 10c:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 110:	02002025 	move	a0,s0
 114:	10000005 	b	12c <BgHidanKousi_Init+0x124>
 118:	8fbf001c 	lw	ra,28(sp)
 11c:	3c050000 	lui	a1,0x0
 120:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 124:	24a50000 	addiu	a1,a1,0
 128:	8fbf001c 	lw	ra,28(sp)
 12c:	8fb00018 	lw	s0,24(sp)
 130:	27bd0030 	addiu	sp,sp,48
 134:	03e00008 	jr	ra
 138:	00000000 	nop

0000013c <BgHidanKousi_Destroy>:
 13c:	27bdffe8 	addiu	sp,sp,-24
 140:	afa40018 	sw	a0,24(sp)
 144:	8fae0018 	lw	t6,24(sp)
 148:	afbf0014 	sw	ra,20(sp)
 14c:	00a02025 	move	a0,a1
 150:	24a50810 	addiu	a1,a1,2064
 154:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 158:	8dc6014c 	lw	a2,332(t6)
 15c:	8fbf0014 	lw	ra,20(sp)
 160:	27bd0018 	addiu	sp,sp,24
 164:	03e00008 	jr	ra
 168:	00000000 	nop

0000016c <func_80889ACC>:
 16c:	27bdffd8 	addiu	sp,sp,-40
 170:	afbf0014 	sw	ra,20(sp)
 174:	00802825 	move	a1,a0
 178:	84840032 	lh	a0,50(a0)
 17c:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 180:	afa50028 	sw	a1,40(sp)
 184:	8fa50028 	lw	a1,40(sp)
 188:	3c010000 	lui	at,0x0
 18c:	84ae001c 	lh	t6,28(a1)
 190:	31cf00ff 	andi	t7,t6,0xff
 194:	000fc080 	sll	t8,t7,0x2
 198:	00380821 	addu	at,at,t8
 19c:	c4240000 	lwc1	$f4,0(at)
 1a0:	46040182 	mul.s	$f6,$f0,$f4
 1a4:	e7a60018 	swc1	$f6,24(sp)
 1a8:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 1ac:	84a40032 	lh	a0,50(a1)
 1b0:	8fa50028 	lw	a1,40(sp)
 1b4:	3c010000 	lui	at,0x0
 1b8:	c7b00018 	lwc1	$f16,24(sp)
 1bc:	84b9001c 	lh	t9,28(a1)
 1c0:	c4aa0008 	lwc1	$f10,8(a1)
 1c4:	c4a40010 	lwc1	$f4,16(a1)
 1c8:	332800ff 	andi	t0,t9,0xff
 1cc:	00084880 	sll	t1,t0,0x2
 1d0:	00290821 	addu	at,at,t1
 1d4:	c4280000 	lwc1	$f8,0(at)
 1d8:	46105480 	add.s	$f18,$f10,$f16
 1dc:	46080082 	mul.s	$f2,$f0,$f8
 1e0:	e4b20024 	swc1	$f18,36(a1)
 1e4:	46022180 	add.s	$f6,$f4,$f2
 1e8:	e4a6002c 	swc1	$f6,44(a1)
 1ec:	8fbf0014 	lw	ra,20(sp)
 1f0:	27bd0028 	addiu	sp,sp,40
 1f4:	03e00008 	jr	ra
 1f8:	00000000 	nop

000001fc <func_80889B5C>:
 1fc:	27bdffe8 	addiu	sp,sp,-24
 200:	afa40018 	sw	a0,24(sp)
 204:	8fae0018 	lw	t6,24(sp)
 208:	afbf0014 	sw	ra,20(sp)
 20c:	afa5001c 	sw	a1,28(sp)
 210:	00a02025 	move	a0,a1
 214:	85c5001c 	lh	a1,28(t6)
 218:	00052a03 	sra	a1,a1,0x8
 21c:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 220:	30a500ff 	andi	a1,a1,0xff
 224:	1040000a 	beqz	v0,250 <func_80889B5C+0x54>
 228:	8fa40018 	lw	a0,24(sp)
 22c:	3c050000 	lui	a1,0x0
 230:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 234:	24a50000 	addiu	a1,a1,0
 238:	8fa4001c 	lw	a0,28(sp)
 23c:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 240:	8fa50018 	lw	a1,24(sp)
 244:	8fb80018 	lw	t8,24(sp)
 248:	240f00c8 	li	t7,200
 24c:	a70f0168 	sh	t7,360(t8)
 250:	8fbf0014 	lw	ra,20(sp)
 254:	27bd0018 	addiu	sp,sp,24
 258:	03e00008 	jr	ra
 25c:	00000000 	nop

00000260 <func_80889BC0>:
 260:	27bdffe8 	addiu	sp,sp,-24
 264:	afbf0014 	sw	ra,20(sp)
 268:	afa5001c 	sw	a1,28(sp)
 26c:	848e0168 	lh	t6,360(a0)
 270:	25cfffff 	addiu	t7,t6,-1
 274:	a48f0168 	sh	t7,360(a0)
 278:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 27c:	afa40018 	sw	a0,24(sp)
 280:	8fa40018 	lw	a0,24(sp)
 284:	3c050000 	lui	a1,0x0
 288:	90980002 	lbu	t8,2(a0)
 28c:	10580004 	beq	v0,t8,2a0 <func_80889BC0+0x40>
 290:	00000000 	nop
 294:	84990168 	lh	t9,360(a0)
 298:	5f200004 	bgtzl	t9,2ac <func_80889BC0+0x4c>
 29c:	8fbf0014 	lw	ra,20(sp)
 2a0:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 2a4:	24a50000 	addiu	a1,a1,0
 2a8:	8fbf0014 	lw	ra,20(sp)
 2ac:	27bd0018 	addiu	sp,sp,24
 2b0:	03e00008 	jr	ra
 2b4:	00000000 	nop

000002b8 <func_80889C18>:
 2b8:	27bdffe8 	addiu	sp,sp,-24
 2bc:	3c014000 	lui	at,0x4000
 2c0:	44810000 	mtc1	at,$f0
 2c4:	afbf0014 	sw	ra,20(sp)
 2c8:	afa5001c 	sw	a1,28(sp)
 2cc:	3c010000 	lui	at,0x0
 2d0:	c42600a4 	lwc1	$f6,164(at)
 2d4:	c4840068 	lwc1	$f4,104(a0)
 2d8:	3c050000 	lui	a1,0x0
 2dc:	24a50000 	addiu	a1,a1,0
 2e0:	46062200 	add.s	$f8,$f4,$f6
 2e4:	e4880068 	swc1	$f8,104(a0)
 2e8:	c48a0068 	lwc1	$f10,104(a0)
 2ec:	460a003c 	c.lt.s	$f0,$f10
 2f0:	00000000 	nop
 2f4:	45000005 	bc1f	30c <func_80889C18+0x54>
 2f8:	00000000 	nop
 2fc:	e4800068 	swc1	$f0,104(a0)
 300:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 304:	afa40018 	sw	a0,24(sp)
 308:	8fa40018 	lw	a0,24(sp)
 30c:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 310:	afa40018 	sw	a0,24(sp)
 314:	8fa40018 	lw	a0,24(sp)
 318:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 31c:	24052036 	li	a1,8246
 320:	8fbf0014 	lw	ra,20(sp)
 324:	27bd0018 	addiu	sp,sp,24
 328:	03e00008 	jr	ra
 32c:	00000000 	nop

00000330 <func_80889C90>:
 330:	27bdffe0 	addiu	sp,sp,-32
 334:	afbf001c 	sw	ra,28(sp)
 338:	afb00018 	sw	s0,24(sp)
 33c:	00808025 	move	s0,a0
 340:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 344:	afa50024 	sw	a1,36(sp)
 348:	26040008 	addiu	a0,s0,8
 34c:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 350:	26050024 	addiu	a1,s0,36
 354:	860e001c 	lh	t6,28(s0)
 358:	3c010000 	lui	at,0x0
 35c:	02002025 	move	a0,s0
 360:	31cf00ff 	andi	t7,t6,0xff
 364:	000fc080 	sll	t8,t7,0x2
 368:	00380821 	addu	at,at,t8
 36c:	c4240000 	lwc1	$f4,0(at)
 370:	4600203c 	c.lt.s	$f4,$f0
 374:	00000000 	nop
 378:	4500000c 	bc1f	3ac <func_80889C90+0x7c>
 37c:	00000000 	nop
 380:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 384:	02002025 	move	a0,s0
 388:	3c050000 	lui	a1,0x0
 38c:	24a50000 	addiu	a1,a1,0
 390:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 394:	02002025 	move	a0,s0
 398:	02002025 	move	a0,s0
 39c:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 3a0:	24052837 	li	a1,10295
 3a4:	10000004 	b	3b8 <func_80889C90+0x88>
 3a8:	8fbf001c 	lw	ra,28(sp)
 3ac:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 3b0:	24052036 	li	a1,8246
 3b4:	8fbf001c 	lw	ra,28(sp)
 3b8:	8fb00018 	lw	s0,24(sp)
 3bc:	27bd0020 	addiu	sp,sp,32
 3c0:	03e00008 	jr	ra
 3c4:	00000000 	nop

000003c8 <func_80889D28>:
 3c8:	afa40000 	sw	a0,0(sp)
 3cc:	03e00008 	jr	ra
 3d0:	afa50004 	sw	a1,4(sp)

000003d4 <BgHidanKousi_Update>:
 3d4:	27bdffe8 	addiu	sp,sp,-24
 3d8:	afbf0014 	sw	ra,20(sp)
 3dc:	8c990164 	lw	t9,356(a0)
 3e0:	0320f809 	jalr	t9
 3e4:	00000000 	nop
 3e8:	8fbf0014 	lw	ra,20(sp)
 3ec:	27bd0018 	addiu	sp,sp,24
 3f0:	03e00008 	jr	ra
 3f4:	00000000 	nop

000003f8 <BgHidanKousi_Draw>:
 3f8:	27bdffc0 	addiu	sp,sp,-64
 3fc:	afbf001c 	sw	ra,28(sp)
 400:	afb00018 	sw	s0,24(sp)
 404:	afa40040 	sw	a0,64(sp)
 408:	afa50044 	sw	a1,68(sp)
 40c:	8ca50000 	lw	a1,0(a1)
 410:	3c060000 	lui	a2,0x0
 414:	24c6005c 	addiu	a2,a2,92
 418:	27a4002c 	addiu	a0,sp,44
 41c:	2407015e 	li	a3,350
 420:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 424:	00a08025 	move	s0,a1
 428:	8faf0044 	lw	t7,68(sp)
 42c:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 430:	8de40000 	lw	a0,0(t7)
 434:	8e0202c0 	lw	v0,704(s0)
 438:	3c19da38 	lui	t9,0xda38
 43c:	37390003 	ori	t9,t9,0x3
 440:	24580008 	addiu	t8,v0,8
 444:	ae1802c0 	sw	t8,704(s0)
 448:	ac590000 	sw	t9,0(v0)
 44c:	8fa80044 	lw	t0,68(sp)
 450:	3c050000 	lui	a1,0x0
 454:	24a50074 	addiu	a1,a1,116
 458:	8d040000 	lw	a0,0(t0)
 45c:	24060162 	li	a2,354
 460:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 464:	afa20028 	sw	v0,40(sp)
 468:	8fa30028 	lw	v1,40(sp)
 46c:	3c0ade00 	lui	t2,0xde00
 470:	3c0f0000 	lui	t7,0x0
 474:	ac620004 	sw	v0,4(v1)
 478:	8e0202c0 	lw	v0,704(s0)
 47c:	3c060000 	lui	a2,0x0
 480:	24c6008c 	addiu	a2,a2,140
 484:	24490008 	addiu	t1,v0,8
 488:	ae0902c0 	sw	t1,704(s0)
 48c:	ac4a0000 	sw	t2,0(v0)
 490:	8fab0040 	lw	t3,64(sp)
 494:	27a4002c 	addiu	a0,sp,44
 498:	24070167 	li	a3,359
 49c:	856c001c 	lh	t4,28(t3)
 4a0:	318d00ff 	andi	t5,t4,0xff
 4a4:	000d7080 	sll	t6,t5,0x2
 4a8:	01ee7821 	addu	t7,t7,t6
 4ac:	8def0000 	lw	t7,0(t7)
 4b0:	ac4f0004 	sw	t7,4(v0)
 4b4:	8fb80044 	lw	t8,68(sp)
 4b8:	0c000000 	jal	0 <BgHidanKousi_SetupAction>
 4bc:	8f050000 	lw	a1,0(t8)
 4c0:	8fbf001c 	lw	ra,28(sp)
 4c4:	8fb00018 	lw	s0,24(sp)
 4c8:	27bd0040 	addiu	sp,sp,64
 4cc:	03e00008 	jr	ra
 4d0:	00000000 	nop
	...
