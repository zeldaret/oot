
build/src/overlays/actors/ovl_En_Wall_Tubo/z_en_wall_tubo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnWallTubo_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa40018 	sw	a0,24(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	3c040000 	lui	a0,0x0
  10:	afa5001c 	sw	a1,28(sp)
  14:	0c000000 	jal	0 <EnWallTubo_Init>
  18:	24840000 	addiu	a0,a0,0
  1c:	3c040000 	lui	a0,0x0
  20:	0c000000 	jal	0 <EnWallTubo_Init>
  24:	24840000 	addiu	a0,a0,0
  28:	8fa20018 	lw	v0,24(sp)
  2c:	3c180000 	lui	t8,0x0
  30:	27180000 	addiu	t8,t8,0
  34:	8c4f0024 	lw	t7,36(v0)
  38:	8c4e0028 	lw	t6,40(v0)
  3c:	ac58014c 	sw	t8,332(v0)
  40:	ac4f0164 	sw	t7,356(v0)
  44:	8c4f002c 	lw	t7,44(v0)
  48:	ac4e0168 	sw	t6,360(v0)
  4c:	ac4f016c 	sw	t7,364(v0)
  50:	8fbf0014 	lw	ra,20(sp)
  54:	27bd0018 	addiu	sp,sp,24
  58:	03e00008 	jr	ra
  5c:	00000000 	nop

00000060 <EnWallTubo_Destroy>:
  60:	afa40000 	sw	a0,0(sp)
  64:	03e00008 	jr	ra
  68:	afa50004 	sw	a1,4(sp)

0000006c <func_80B2EE5C>:
  6c:	8ca21c54 	lw	v0,7252(a1)
  70:	3c0f0000 	lui	t7,0x0
  74:	2403014b 	li	v1,331
  78:	1040000a 	beqz	v0,a4 <func_80B2EE5C+0x38>
  7c:	25ef0000 	addiu	t7,t7,0
  80:	844e0000 	lh	t6,0(v0)
  84:	106e0003 	beq	v1,t6,94 <func_80B2EE5C+0x28>
  88:	00000000 	nop
  8c:	10000003 	b	9c <func_80B2EE5C+0x30>
  90:	8c420124 	lw	v0,292(v0)
  94:	10000003 	b	a4 <func_80B2EE5C+0x38>
  98:	ac820160 	sw	v0,352(a0)
  9c:	5440fff9 	bnezl	v0,84 <func_80B2EE5C+0x18>
  a0:	844e0000 	lh	t6,0(v0)
  a4:	03e00008 	jr	ra
  a8:	ac8f014c 	sw	t7,332(a0)

000000ac <func_80B2EE9C>:
  ac:	27bdffa0 	addiu	sp,sp,-96
  b0:	3c0f0000 	lui	t7,0x0
  b4:	afbf0024 	sw	ra,36(sp)
  b8:	afb00020 	sw	s0,32(sp)
  bc:	25ef0000 	addiu	t7,t7,0
  c0:	8df90000 	lw	t9,0(t7)
  c4:	27ae004c 	addiu	t6,sp,76
  c8:	8df80004 	lw	t8,4(t7)
  cc:	add90000 	sw	t9,0(t6)
  d0:	8df90008 	lw	t9,8(t7)
  d4:	3c090000 	lui	t1,0x0
  d8:	25290000 	addiu	t1,t1,0
  dc:	add80004 	sw	t8,4(t6)
  e0:	add90008 	sw	t9,8(t6)
  e4:	8d2b0000 	lw	t3,0(t1)
  e8:	27a80040 	addiu	t0,sp,64
  ec:	8d2a0004 	lw	t2,4(t1)
  f0:	ad0b0000 	sw	t3,0(t0)
  f4:	8d2b0008 	lw	t3,8(t1)
  f8:	ad0a0004 	sw	t2,4(t0)
  fc:	00808025 	move	s0,a0
 100:	ad0b0008 	sw	t3,8(t0)
 104:	8c860160 	lw	a2,352(a0)
 108:	90cc0258 	lbu	t4,600(a2)
 10c:	5180006a 	beqzl	t4,2b8 <func_80B2EE9C+0x20c>
 110:	8fbf0024 	lw	ra,36(sp)
 114:	8cad0790 	lw	t5,1936(a1)
 118:	24010015 	li	at,21
 11c:	85ae0142 	lh	t6,322(t5)
 120:	55c10065 	bnel	t6,at,2b8 <func_80B2EE9C+0x20c>
 124:	8fbf0024 	lw	ra,36(sp)
 128:	8ca21c4c 	lw	v0,7244(a1)
 12c:	3c014220 	lui	at,0x4220
 130:	240400da 	li	a0,218
 134:	1040005f 	beqz	v0,2b4 <func_80B2EE9C+0x208>
 138:	3c030000 	lui	v1,0x0
 13c:	44818000 	mtc1	at,$f16
 140:	24630000 	addiu	v1,v1,0
 144:	10500004 	beq	v0,s0,158 <func_80B2EE9C+0xac>
 148:	00000000 	nop
 14c:	844f0000 	lh	t7,0(v0)
 150:	508f0004 	beql	a0,t7,164 <func_80B2EE9C+0xb8>
 154:	c4440024 	lwc1	$f4,36(v0)
 158:	10000054 	b	2ac <func_80B2EE9C+0x200>
 15c:	8c420124 	lw	v0,292(v0)
 160:	c4440024 	lwc1	$f4,36(v0)
 164:	c6060024 	lwc1	$f6,36(s0)
 168:	c4480028 	lwc1	$f8,40(v0)
 16c:	c60a0028 	lwc1	$f10,40(s0)
 170:	46062081 	sub.s	$f2,$f4,$f6
 174:	c604002c 	lwc1	$f4,44(s0)
 178:	c452002c 	lwc1	$f18,44(v0)
 17c:	460a4301 	sub.s	$f12,$f8,$f10
 180:	46001005 	abs.s	$f0,$f2
 184:	46049381 	sub.s	$f14,$f18,$f4
 188:	4610003c 	c.lt.s	$f0,$f16
 18c:	00000000 	nop
 190:	45030006 	bc1tl	1ac <func_80B2EE9C+0x100>
 194:	46006005 	abs.s	$f0,$f12
 198:	8c780000 	lw	t8,0(v1)
 19c:	871912d8 	lh	t9,4824(t8)
 1a0:	53200042 	beqzl	t9,2ac <func_80B2EE9C+0x200>
 1a4:	8c420124 	lw	v0,292(v0)
 1a8:	46006005 	abs.s	$f0,$f12
 1ac:	4610003c 	c.lt.s	$f0,$f16
 1b0:	00000000 	nop
 1b4:	45030006 	bc1tl	1d0 <func_80B2EE9C+0x124>
 1b8:	46007005 	abs.s	$f0,$f14
 1bc:	8c680000 	lw	t0,0(v1)
 1c0:	850912d8 	lh	t1,4824(t0)
 1c4:	51200039 	beqzl	t1,2ac <func_80B2EE9C+0x200>
 1c8:	8c420124 	lw	v0,292(v0)
 1cc:	46007005 	abs.s	$f0,$f14
 1d0:	4610003c 	c.lt.s	$f0,$f16
 1d4:	00000000 	nop
 1d8:	45030006 	bc1tl	1f4 <func_80B2EE9C+0x148>
 1dc:	860d001c 	lh	t5,28(s0)
 1e0:	8c6a0000 	lw	t2,0(v1)
 1e4:	854b12d8 	lh	t3,4824(t2)
 1e8:	51600030 	beqzl	t3,2ac <func_80B2EE9C+0x200>
 1ec:	8c420124 	lw	v0,292(v0)
 1f0:	860d001c 	lh	t5,28(s0)
 1f4:	240c0001 	li	t4,1
 1f8:	24180002 	li	t8,2
 1fc:	000d7040 	sll	t6,t5,0x1
 200:	00ce7821 	addu	t7,a2,t6
 204:	a5ec023e 	sh	t4,574(t7)
 208:	a4580150 	sh	t8,336(v0)
 20c:	afa50064 	sw	a1,100(sp)
 210:	0c000000 	jal	0 <EnWallTubo_Init>
 214:	24044807 	li	a0,18439
 218:	2419003c 	li	t9,60
 21c:	a6190150 	sh	t9,336(s0)
 220:	240800c8 	li	t0,200
 224:	24090028 	li	t1,40
 228:	afa90014 	sw	t1,20(sp)
 22c:	afa80010 	sw	t0,16(sp)
 230:	8fa40064 	lw	a0,100(sp)
 234:	26050154 	addiu	a1,s0,340
 238:	27a60040 	addiu	a2,sp,64
 23c:	0c000000 	jal	0 <EnWallTubo_Init>
 240:	27a7004c 	addiu	a3,sp,76
 244:	8fa20064 	lw	v0,100(sp)
 248:	24050001 	li	a1,1
 24c:	844a07a0 	lh	t2,1952(v0)
 250:	000a5880 	sll	t3,t2,0x2
 254:	004b6821 	addu	t5,v0,t3
 258:	0c000000 	jal	0 <EnWallTubo_Init>
 25c:	8da40790 	lw	a0,1936(t5)
 260:	00022400 	sll	a0,v0,0x10
 264:	a7a20032 	sh	v0,50(sp)
 268:	00042403 	sra	a0,a0,0x10
 26c:	0c000000 	jal	0 <EnWallTubo_Init>
 270:	24057fff 	li	a1,32767
 274:	87a40032 	lh	a0,50(sp)
 278:	24050064 	li	a1,100
 27c:	00003025 	move	a2,zero
 280:	00003825 	move	a3,zero
 284:	0c000000 	jal	0 <EnWallTubo_Init>
 288:	afa00010 	sw	zero,16(sp)
 28c:	87a40032 	lh	a0,50(sp)
 290:	0c000000 	jal	0 <EnWallTubo_Init>
 294:	24050064 	li	a1,100
 298:	3c0e0000 	lui	t6,0x0
 29c:	25ce0000 	addiu	t6,t6,0
 2a0:	10000004 	b	2b4 <func_80B2EE9C+0x208>
 2a4:	ae0e014c 	sw	t6,332(s0)
 2a8:	8c420124 	lw	v0,292(v0)
 2ac:	1440ffa5 	bnez	v0,144 <func_80B2EE9C+0x98>
 2b0:	00000000 	nop
 2b4:	8fbf0024 	lw	ra,36(sp)
 2b8:	8fb00020 	lw	s0,32(sp)
 2bc:	27bd0060 	addiu	sp,sp,96
 2c0:	03e00008 	jr	ra
 2c4:	00000000 	nop

000002c8 <func_80B2F0B8>:
 2c8:	27bdffa0 	addiu	sp,sp,-96
 2cc:	3c0f0000 	lui	t7,0x0
 2d0:	afbf0034 	sw	ra,52(sp)
 2d4:	afb00030 	sw	s0,48(sp)
 2d8:	afa50064 	sw	a1,100(sp)
 2dc:	25ef0000 	addiu	t7,t7,0
 2e0:	8df90000 	lw	t9,0(t7)
 2e4:	27ae0050 	addiu	t6,sp,80
 2e8:	8df80004 	lw	t8,4(t7)
 2ec:	add90000 	sw	t9,0(t6)
 2f0:	8df90008 	lw	t9,8(t7)
 2f4:	3c090000 	lui	t1,0x0
 2f8:	25290000 	addiu	t1,t1,0
 2fc:	add80004 	sw	t8,4(t6)
 300:	add90008 	sw	t9,8(t6)
 304:	8d2b0000 	lw	t3,0(t1)
 308:	27a80044 	addiu	t0,sp,68
 30c:	8d2a0004 	lw	t2,4(t1)
 310:	ad0b0000 	sw	t3,0(t0)
 314:	8d2b0008 	lw	t3,8(t1)
 318:	ad0a0004 	sw	t2,4(t0)
 31c:	3c0d0001 	lui	t5,0x1
 320:	ad0b0008 	sw	t3,8(t0)
 324:	8fac0064 	lw	t4,100(sp)
 328:	00808025 	move	s0,a0
 32c:	3c014396 	lui	at,0x4396
 330:	01ac6821 	addu	t5,t5,t4
 334:	8dad1de4 	lw	t5,7652(t5)
 338:	31ae0001 	andi	t6,t5,0x1
 33c:	55c0002c 	bnezl	t6,3f0 <func_80B2F0B8+0x128>
 340:	860c0150 	lh	t4,336(s0)
 344:	44816000 	mtc1	at,$f12
 348:	0c000000 	jal	0 <EnWallTubo_Init>
 34c:	00000000 	nop
 350:	c6040154 	lwc1	$f4,340(s0)
 354:	3c014396 	lui	at,0x4396
 358:	44816000 	mtc1	at,$f12
 35c:	46040180 	add.s	$f6,$f0,$f4
 360:	0c000000 	jal	0 <EnWallTubo_Init>
 364:	e7a60038 	swc1	$f6,56(sp)
 368:	c6080158 	lwc1	$f8,344(s0)
 36c:	240f0064 	li	t7,100
 370:	2418001e 	li	t8,30
 374:	46080280 	add.s	$f10,$f0,$f8
 378:	8fa40064 	lw	a0,100(sp)
 37c:	27a50038 	addiu	a1,sp,56
 380:	27a60044 	addiu	a2,sp,68
 384:	e7aa003c 	swc1	$f10,60(sp)
 388:	c610015c 	lwc1	$f16,348(s0)
 38c:	afb80014 	sw	t8,20(sp)
 390:	afaf0010 	sw	t7,16(sp)
 394:	27a70050 	addiu	a3,sp,80
 398:	0c000000 	jal	0 <EnWallTubo_Init>
 39c:	e7b00040 	swc1	$f16,64(sp)
 3a0:	24190032 	li	t9,50
 3a4:	2408000f 	li	t0,15
 3a8:	24090003 	li	t1,3
 3ac:	240affff 	li	t2,-1
 3b0:	240b000a 	li	t3,10
 3b4:	afab0020 	sw	t3,32(sp)
 3b8:	afaa001c 	sw	t2,28(sp)
 3bc:	afa90018 	sw	t1,24(sp)
 3c0:	afa80014 	sw	t0,20(sp)
 3c4:	afb90010 	sw	t9,16(sp)
 3c8:	8fa40064 	lw	a0,100(sp)
 3cc:	27a50038 	addiu	a1,sp,56
 3d0:	3c064120 	lui	a2,0x4120
 3d4:	00003825 	move	a3,zero
 3d8:	0c000000 	jal	0 <EnWallTubo_Init>
 3dc:	afa00024 	sw	zero,36(sp)
 3e0:	02002025 	move	a0,s0
 3e4:	0c000000 	jal	0 <EnWallTubo_Init>
 3e8:	2405180e 	li	a1,6158
 3ec:	860c0150 	lh	t4,336(s0)
 3f0:	5580001a 	bnezl	t4,45c <func_80B2F0B8+0x194>
 3f4:	8fbf0034 	lw	ra,52(sp)
 3f8:	8e020118 	lw	v0,280(s0)
 3fc:	10400014 	beqz	v0,450 <func_80B2F0B8+0x188>
 400:	00000000 	nop
 404:	8c4d0130 	lw	t5,304(v0)
 408:	3c040000 	lui	a0,0x0
 40c:	240e0001 	li	t6,1
 410:	11a0000f 	beqz	t5,450 <func_80B2F0B8+0x188>
 414:	24840000 	addiu	a0,a0,0
 418:	0c000000 	jal	0 <EnWallTubo_Init>
 41c:	a44e0180 	sh	t6,384(v0)
 420:	3c040000 	lui	a0,0x0
 424:	0c000000 	jal	0 <EnWallTubo_Init>
 428:	24840000 	addiu	a0,a0,0
 42c:	3c040000 	lui	a0,0x0
 430:	0c000000 	jal	0 <EnWallTubo_Init>
 434:	24840000 	addiu	a0,a0,0
 438:	3c040000 	lui	a0,0x0
 43c:	0c000000 	jal	0 <EnWallTubo_Init>
 440:	24840000 	addiu	a0,a0,0
 444:	3c040000 	lui	a0,0x0
 448:	0c000000 	jal	0 <EnWallTubo_Init>
 44c:	24840000 	addiu	a0,a0,0
 450:	0c000000 	jal	0 <EnWallTubo_Init>
 454:	02002025 	move	a0,s0
 458:	8fbf0034 	lw	ra,52(sp)
 45c:	8fb00030 	lw	s0,48(sp)
 460:	27bd0060 	addiu	sp,sp,96
 464:	03e00008 	jr	ra
 468:	00000000 	nop

0000046c <EnWallTubo_Update>:
 46c:	27bdffb8 	addiu	sp,sp,-72
 470:	afbf0044 	sw	ra,68(sp)
 474:	afa5004c 	sw	a1,76(sp)
 478:	84820150 	lh	v0,336(a0)
 47c:	10400002 	beqz	v0,488 <EnWallTubo_Update+0x1c>
 480:	244effff 	addiu	t6,v0,-1
 484:	a48e0150 	sh	t6,336(a0)
 488:	afa40048 	sw	a0,72(sp)
 48c:	8c99014c 	lw	t9,332(a0)
 490:	8fa5004c 	lw	a1,76(sp)
 494:	0320f809 	jalr	t9
 498:	00000000 	nop
 49c:	3c0f0000 	lui	t7,0x0
 4a0:	8def0000 	lw	t7,0(t7)
 4a4:	8fa40048 	lw	a0,72(sp)
 4a8:	3c013f80 	lui	at,0x3f80
 4ac:	85f812d4 	lh	t8,4820(t7)
 4b0:	240a00ff 	li	t2,255
 4b4:	240b00ff 	li	t3,255
 4b8:	13000016 	beqz	t8,514 <EnWallTubo_Update+0xa8>
 4bc:	240c0004 	li	t4,4
 4c0:	84880032 	lh	t0,50(a0)
 4c4:	c48c0024 	lwc1	$f12,36(a0)
 4c8:	c48e0028 	lwc1	$f14,40(a0)
 4cc:	8c86002c 	lw	a2,44(a0)
 4d0:	84870030 	lh	a3,48(a0)
 4d4:	afa80010 	sw	t0,16(sp)
 4d8:	84890034 	lh	t1,52(a0)
 4dc:	44810000 	mtc1	at,$f0
 4e0:	8fad004c 	lw	t5,76(sp)
 4e4:	afac0034 	sw	t4,52(sp)
 4e8:	afab0030 	sw	t3,48(sp)
 4ec:	afaa002c 	sw	t2,44(sp)
 4f0:	afa00028 	sw	zero,40(sp)
 4f4:	afa00024 	sw	zero,36(sp)
 4f8:	afa90014 	sw	t1,20(sp)
 4fc:	e7a00018 	swc1	$f0,24(sp)
 500:	e7a0001c 	swc1	$f0,28(sp)
 504:	e7a00020 	swc1	$f0,32(sp)
 508:	8dae0000 	lw	t6,0(t5)
 50c:	0c000000 	jal	0 <EnWallTubo_Init>
 510:	afae0038 	sw	t6,56(sp)
 514:	8fbf0044 	lw	ra,68(sp)
 518:	27bd0048 	addiu	sp,sp,72
 51c:	03e00008 	jr	ra
 520:	00000000 	nop
	...
