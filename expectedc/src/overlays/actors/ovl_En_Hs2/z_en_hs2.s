
build/src/overlays/actors/ovl_En_Hs2/z_en_hs2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnHs2_Init>:
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	afb00028 	sw	s0,40(sp)
   8:	00808025 	move	s0,a0
   c:	afbf002c 	sw	ra,44(sp)
  10:	afa50044 	sw	a1,68(sp)
  14:	3c060000 	lui	a2,0x0
  18:	24c60000 	addiu	a2,a2,0
  1c:	24050000 	li	a1,0
  20:	248400b4 	addiu	a0,a0,180
  24:	0c000000 	jal	0 <EnHs2_Init>
  28:	3c074210 	lui	a3,0x4210
  2c:	26050198 	addiu	a1,s0,408
  30:	3c060000 	lui	a2,0x0
  34:	3c070000 	lui	a3,0x0
  38:	260e01dc 	addiu	t6,s0,476
  3c:	260f023c 	addiu	t7,s0,572
  40:	24180010 	li	t8,16
  44:	afb80018 	sw	t8,24(sp)
  48:	afaf0014 	sw	t7,20(sp)
  4c:	afae0010 	sw	t6,16(sp)
  50:	24e70000 	addiu	a3,a3,0
  54:	24c60000 	addiu	a2,a2,0
  58:	afa50034 	sw	a1,52(sp)
  5c:	0c000000 	jal	0 <EnHs2_Init>
  60:	8fa40044 	lw	a0,68(sp)
  64:	3c050000 	lui	a1,0x0
  68:	24a50000 	addiu	a1,a1,0
  6c:	0c000000 	jal	0 <EnHs2_Init>
  70:	8fa40034 	lw	a0,52(sp)
  74:	2605014c 	addiu	a1,s0,332
  78:	afa50034 	sw	a1,52(sp)
  7c:	0c000000 	jal	0 <EnHs2_Init>
  80:	8fa40044 	lw	a0,68(sp)
  84:	3c070000 	lui	a3,0x0
  88:	8fa50034 	lw	a1,52(sp)
  8c:	24e70020 	addiu	a3,a3,32
  90:	8fa40044 	lw	a0,68(sp)
  94:	0c000000 	jal	0 <EnHs2_Init>
  98:	02003025 	move	a2,s0
  9c:	241900ff 	li	t9,255
  a0:	3c053c23 	lui	a1,0x3c23
  a4:	a21900ae 	sb	t9,174(s0)
  a8:	34a5d70a 	ori	a1,a1,0xd70a
  ac:	0c000000 	jal	0 <EnHs2_Init>
  b0:	02002025 	move	a0,s0
  b4:	3c040000 	lui	a0,0x0
  b8:	0c000000 	jal	0 <EnHs2_Init>
  bc:	24840000 	addiu	a0,a0,0
  c0:	3c080000 	lui	t0,0x0
  c4:	25080000 	addiu	t0,t0,0
  c8:	24090006 	li	t1,6
  cc:	ae0802ac 	sw	t0,684(s0)
  d0:	a60002a8 	sh	zero,680(s0)
  d4:	a209001f 	sb	t1,31(s0)
  d8:	8fbf002c 	lw	ra,44(sp)
  dc:	8fb00028 	lw	s0,40(sp)
  e0:	27bd0040 	addiu	sp,sp,64
  e4:	03e00008 	jr	ra
  e8:	00000000 	nop

000000ec <EnHs2_Destroy>:
  ec:	27bdffe8 	addiu	sp,sp,-24
  f0:	00803025 	move	a2,a0
  f4:	afbf0014 	sw	ra,20(sp)
  f8:	00a02025 	move	a0,a1
  fc:	0c000000 	jal	0 <EnHs2_Init>
 100:	24c5014c 	addiu	a1,a2,332
 104:	8fbf0014 	lw	ra,20(sp)
 108:	27bd0018 	addiu	sp,sp,24
 10c:	03e00008 	jr	ra
 110:	00000000 	nop

00000114 <func_80A6F0B4>:
 114:	27bdffe8 	addiu	sp,sp,-24
 118:	afbf0014 	sw	ra,20(sp)
 11c:	afa5001c 	sw	a1,28(sp)
 120:	afa60020 	sw	a2,32(sp)
 124:	afa70024 	sw	a3,36(sp)
 128:	0c000000 	jal	0 <EnHs2_Init>
 12c:	afa40018 	sw	a0,24(sp)
 130:	10400005 	beqz	v0,148 <func_80A6F0B4+0x34>
 134:	8fa40018 	lw	a0,24(sp)
 138:	8fae0024 	lw	t6,36(sp)
 13c:	24020001 	li	v0,1
 140:	1000001c 	b	1b4 <func_80A6F0B4+0xa0>
 144:	ac8e02ac 	sw	t6,684(a0)
 148:	8498008a 	lh	t8,138(a0)
 14c:	849900b6 	lh	t9,182(a0)
 150:	97af0022 	lhu	t7,34(sp)
 154:	03191023 	subu	v0,t8,t9
 158:	00021400 	sll	v0,v0,0x10
 15c:	00021403 	sra	v0,v0,0x10
 160:	04400003 	bltz	v0,170 <func_80A6F0B4+0x5c>
 164:	a48f010e 	sh	t7,270(a0)
 168:	10000002 	b	174 <func_80A6F0B4+0x60>
 16c:	00401825 	move	v1,v0
 170:	00021823 	negu	v1,v0
 174:	28612151 	slti	at,v1,8529
 178:	1020000d 	beqz	at,1b0 <func_80A6F0B4+0x9c>
 17c:	3c0142c8 	lui	at,0x42c8
 180:	44810000 	mtc1	at,$f0
 184:	c4840090 	lwc1	$f4,144(a0)
 188:	4600203c 	c.lt.s	$f4,$f0
 18c:	00000000 	nop
 190:	45020008 	bc1fl	1b4 <func_80A6F0B4+0xa0>
 194:	00001025 	move	v0,zero
 198:	948802a8 	lhu	t0,680(a0)
 19c:	44060000 	mfc1	a2,$f0
 1a0:	35090001 	ori	t1,t0,0x1
 1a4:	a48902a8 	sh	t1,680(a0)
 1a8:	0c000000 	jal	0 <EnHs2_Init>
 1ac:	8fa5001c 	lw	a1,28(sp)
 1b0:	00001025 	move	v0,zero
 1b4:	8fbf0014 	lw	ra,20(sp)
 1b8:	27bd0018 	addiu	sp,sp,24
 1bc:	03e00008 	jr	ra
 1c0:	00000000 	nop

000001c4 <func_80A6F164>:
 1c4:	27bdffe8 	addiu	sp,sp,-24
 1c8:	afbf0014 	sw	ra,20(sp)
 1cc:	0c000000 	jal	0 <EnHs2_Init>
 1d0:	afa40018 	sw	a0,24(sp)
 1d4:	10400004 	beqz	v0,1e8 <func_80A6F164+0x24>
 1d8:	8fa40018 	lw	a0,24(sp)
 1dc:	3c0e0000 	lui	t6,0x0
 1e0:	25ce0000 	addiu	t6,t6,0
 1e4:	ac8e02ac 	sw	t6,684(a0)
 1e8:	948f02a8 	lhu	t7,680(a0)
 1ec:	35f80001 	ori	t8,t7,0x1
 1f0:	a49802a8 	sh	t8,680(a0)
 1f4:	8fbf0014 	lw	ra,20(sp)
 1f8:	27bd0018 	addiu	sp,sp,24
 1fc:	03e00008 	jr	ra
 200:	00000000 	nop

00000204 <func_80A6F1A4>:
 204:	27bdffe8 	addiu	sp,sp,-24
 208:	afa40018 	sw	a0,24(sp)
 20c:	afbf0014 	sw	ra,20(sp)
 210:	afa5001c 	sw	a1,28(sp)
 214:	00a02025 	move	a0,a1
 218:	0c000000 	jal	0 <EnHs2_Init>
 21c:	24050009 	li	a1,9
 220:	14400002 	bnez	v0,22c <func_80A6F1A4+0x28>
 224:	3046ffff 	andi	a2,v0,0xffff
 228:	24065069 	li	a2,20585
 22c:	3c070000 	lui	a3,0x0
 230:	24e70000 	addiu	a3,a3,0
 234:	8fa40018 	lw	a0,24(sp)
 238:	0c000000 	jal	0 <EnHs2_Init>
 23c:	8fa5001c 	lw	a1,28(sp)
 240:	8fbf0014 	lw	ra,20(sp)
 244:	27bd0018 	addiu	sp,sp,24
 248:	03e00008 	jr	ra
 24c:	00000000 	nop

00000250 <EnHs2_Update>:
 250:	27bdffc0 	addiu	sp,sp,-64
 254:	afb00024 	sw	s0,36(sp)
 258:	00808025 	move	s0,a0
 25c:	afb10028 	sw	s1,40(sp)
 260:	00a08825 	move	s1,a1
 264:	afbf002c 	sw	ra,44(sp)
 268:	2606014c 	addiu	a2,s0,332
 26c:	00c02825 	move	a1,a2
 270:	0c000000 	jal	0 <EnHs2_Init>
 274:	afa60034 	sw	a2,52(sp)
 278:	3c010001 	lui	at,0x1
 27c:	34211e60 	ori	at,at,0x1e60
 280:	8fa60034 	lw	a2,52(sp)
 284:	02212821 	addu	a1,s1,at
 288:	0c000000 	jal	0 <EnHs2_Init>
 28c:	02202025 	move	a0,s1
 290:	0c000000 	jal	0 <EnHs2_Init>
 294:	02002025 	move	a0,s0
 298:	44800000 	mtc1	zero,$f0
 29c:	240e0004 	li	t6,4
 2a0:	afae0014 	sw	t6,20(sp)
 2a4:	44060000 	mfc1	a2,$f0
 2a8:	44070000 	mfc1	a3,$f0
 2ac:	02202025 	move	a0,s1
 2b0:	02002825 	move	a1,s0
 2b4:	0c000000 	jal	0 <EnHs2_Init>
 2b8:	e7a00010 	swc1	$f0,16(sp)
 2bc:	0c000000 	jal	0 <EnHs2_Init>
 2c0:	26040198 	addiu	a0,s0,408
 2c4:	50400005 	beqzl	v0,2dc <EnHs2_Update+0x8c>
 2c8:	8e1902ac 	lw	t9,684(s0)
 2cc:	44802000 	mtc1	zero,$f4
 2d0:	00000000 	nop
 2d4:	e60401b0 	swc1	$f4,432(s0)
 2d8:	8e1902ac 	lw	t9,684(s0)
 2dc:	02002025 	move	a0,s0
 2e0:	02202825 	move	a1,s1
 2e4:	0320f809 	jalr	t9
 2e8:	00000000 	nop
 2ec:	960f02a8 	lhu	t7,680(s0)
 2f0:	2604029c 	addiu	a0,s0,668
 2f4:	24053200 	li	a1,12800
 2f8:	31f80001 	andi	t8,t7,0x1
 2fc:	13000010 	beqz	t8,340 <EnHs2_Update+0xf0>
 300:	24060006 	li	a2,6
 304:	8e090038 	lw	t1,56(s0)
 308:	02202025 	move	a0,s1
 30c:	02002825 	move	a1,s0
 310:	afa90010 	sw	t1,16(sp)
 314:	8e08003c 	lw	t0,60(s0)
 318:	2606029c 	addiu	a2,s0,668
 31c:	260702a2 	addiu	a3,s0,674
 320:	afa80014 	sw	t0,20(sp)
 324:	8e090040 	lw	t1,64(s0)
 328:	0c000000 	jal	0 <EnHs2_Init>
 32c:	afa90018 	sw	t1,24(sp)
 330:	960a02a8 	lhu	t2,680(s0)
 334:	314bfffe 	andi	t3,t2,0xfffe
 338:	1000001a 	b	3a4 <EnHs2_Update+0x154>
 33c:	a60b02a8 	sh	t3,680(s0)
 340:	240c0064 	li	t4,100
 344:	afac0010 	sw	t4,16(sp)
 348:	0c000000 	jal	0 <EnHs2_Init>
 34c:	24071838 	li	a3,6200
 350:	240d0064 	li	t5,100
 354:	afad0010 	sw	t5,16(sp)
 358:	2604029e 	addiu	a0,s0,670
 35c:	00002825 	move	a1,zero
 360:	24060006 	li	a2,6
 364:	0c000000 	jal	0 <EnHs2_Init>
 368:	24071838 	li	a3,6200
 36c:	240e0064 	li	t6,100
 370:	afae0010 	sw	t6,16(sp)
 374:	260402a2 	addiu	a0,s0,674
 378:	00002825 	move	a1,zero
 37c:	24060006 	li	a2,6
 380:	0c000000 	jal	0 <EnHs2_Init>
 384:	24071838 	li	a3,6200
 388:	24190064 	li	t9,100
 38c:	afb90010 	sw	t9,16(sp)
 390:	260402a4 	addiu	a0,s0,676
 394:	00002825 	move	a1,zero
 398:	24060006 	li	a2,6
 39c:	0c000000 	jal	0 <EnHs2_Init>
 3a0:	24071838 	li	a3,6200
 3a4:	8fbf002c 	lw	ra,44(sp)
 3a8:	8fb00024 	lw	s0,36(sp)
 3ac:	8fb10028 	lw	s1,40(sp)
 3b0:	03e00008 	jr	ra
 3b4:	27bd0040 	addiu	sp,sp,64

000003b8 <EnHs2_OverrideLimbDraw>:
 3b8:	24aefff7 	addiu	t6,a1,-9
 3bc:	2dc10005 	sltiu	at,t6,5
 3c0:	afa40000 	sw	a0,0(sp)
 3c4:	1020001b 	beqz	at,434 <EnHs2_OverrideLimbDraw+0x7c>
 3c8:	afa7000c 	sw	a3,12(sp)
 3cc:	000e7080 	sll	t6,t6,0x2
 3d0:	3c010000 	lui	at,0x0
 3d4:	002e0821 	addu	at,at,t6
 3d8:	8c2e0020 	lw	t6,32(at)
 3dc:	01c00008 	jr	t6
 3e0:	00000000 	nop
 3e4:	acc00000 	sw	zero,0(a2)
 3e8:	03e00008 	jr	ra
 3ec:	00001025 	move	v0,zero
 3f0:	8fa20014 	lw	v0,20(sp)
 3f4:	8fa30010 	lw	v1,16(sp)
 3f8:	8458029e 	lh	t8,670(v0)
 3fc:	846f0000 	lh	t7,0(v1)
 400:	84680004 	lh	t0,4(v1)
 404:	01f8c821 	addu	t9,t7,t8
 408:	a4790000 	sh	t9,0(v1)
 40c:	8449029c 	lh	t1,668(v0)
 410:	01095021 	addu	t2,t0,t1
 414:	10000007 	b	434 <EnHs2_OverrideLimbDraw+0x7c>
 418:	a46a0004 	sh	t2,4(v1)
 41c:	acc00000 	sw	zero,0(a2)
 420:	03e00008 	jr	ra
 424:	00001025 	move	v0,zero
 428:	acc00000 	sw	zero,0(a2)
 42c:	03e00008 	jr	ra
 430:	00001025 	move	v0,zero
 434:	00001025 	move	v0,zero
 438:	03e00008 	jr	ra
 43c:	00000000 	nop

00000440 <EnHs2_PostLimbDraw>:
 440:	27bdffe8 	addiu	sp,sp,-24
 444:	24010009 	li	at,9
 448:	afbf0014 	sw	ra,20(sp)
 44c:	afa40018 	sw	a0,24(sp)
 450:	afa60020 	sw	a2,32(sp)
 454:	14a10006 	bne	a1,at,470 <EnHs2_PostLimbDraw+0x30>
 458:	afa70024 	sw	a3,36(sp)
 45c:	8fa50028 	lw	a1,40(sp)
 460:	3c040000 	lui	a0,0x0
 464:	2484004c 	addiu	a0,a0,76
 468:	0c000000 	jal	0 <EnHs2_Init>
 46c:	24a50038 	addiu	a1,a1,56
 470:	8fbf0014 	lw	ra,20(sp)
 474:	27bd0018 	addiu	sp,sp,24
 478:	03e00008 	jr	ra
 47c:	00000000 	nop

00000480 <EnHs2_Draw>:
 480:	27bdffd8 	addiu	sp,sp,-40
 484:	afbf0024 	sw	ra,36(sp)
 488:	afa40028 	sw	a0,40(sp)
 48c:	afa5002c 	sw	a1,44(sp)
 490:	0c000000 	jal	0 <EnHs2_Init>
 494:	8ca40000 	lw	a0,0(a1)
 498:	8fa20028 	lw	v0,40(sp)
 49c:	3c0f0000 	lui	t7,0x0
 4a0:	3c180000 	lui	t8,0x0
 4a4:	8c45019c 	lw	a1,412(v0)
 4a8:	8c4601b8 	lw	a2,440(v0)
 4ac:	9047019a 	lbu	a3,410(v0)
 4b0:	27180000 	addiu	t8,t8,0
 4b4:	25ef0000 	addiu	t7,t7,0
 4b8:	afaf0010 	sw	t7,16(sp)
 4bc:	afb80014 	sw	t8,20(sp)
 4c0:	8fa4002c 	lw	a0,44(sp)
 4c4:	0c000000 	jal	0 <EnHs2_Init>
 4c8:	afa20018 	sw	v0,24(sp)
 4cc:	8fbf0024 	lw	ra,36(sp)
 4d0:	27bd0028 	addiu	sp,sp,40
 4d4:	03e00008 	jr	ra
 4d8:	00000000 	nop
 4dc:	00000000 	nop
