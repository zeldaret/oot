
build/src/code/z_kaleido_setup.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <KaleidoSetup_Update>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	3c010001 	lui	at,0x1
   8:	afbf0024 	sw	ra,36(sp)
   c:	00811821 	addu	v1,a0,at
  10:	946e0934 	lhu	t6,2356(v1)
  14:	3c010001 	lui	at,0x1
  18:	34210760 	ori	at,at,0x760
  1c:	15c000a5 	bnez	t6,2b4 <KaleidoSetup_Update+0x2b4>
  20:	00814021 	addu	t0,a0,at
  24:	950f01d6 	lhu	t7,470(t0)
  28:	55e000a3 	bnezl	t7,2b8 <KaleidoSetup_Update+0x2b8>
  2c:	8fbf0024 	lw	ra,36(sp)
  30:	94780a20 	lhu	t8,2592(v1)
  34:	570000a0 	bnezl	t8,2b8 <KaleidoSetup_Update+0x2b8>
  38:	8fbf0024 	lw	ra,36(sp)
  3c:	80791e15 	lb	t9,7701(v1)
  40:	5720009d 	bnezl	t9,2b8 <KaleidoSetup_Update+0x2b8>
  44:	8fbf0024 	lw	ra,36(sp)
  48:	906b241b 	lbu	t3,9243(v1)
  4c:	3c060000 	lui	a2,0x0
  50:	24c60000 	addiu	a2,a2,0
  54:	55600098 	bnezl	t3,2b8 <KaleidoSetup_Update+0x2b8>
  58:	8fbf0024 	lw	ra,36(sp)
  5c:	8ccc0008 	lw	t4,8(a2)
  60:	3402fff0 	li	v0,0xfff0
  64:	0182082a 	slt	at,t4,v0
  68:	50200093 	beqzl	at,2b8 <KaleidoSetup_Update+0x2b8>
  6c:	8fbf0024 	lw	ra,36(sp)
  70:	94cd1412 	lhu	t5,5138(a2)
  74:	01a2082a 	slt	at,t5,v0
  78:	5020008f 	beqzl	at,2b8 <KaleidoSetup_Update+0x2b8>
  7c:	8fbf0024 	lw	ra,36(sp)
  80:	afa30028 	sw	v1,40(sp)
  84:	afa40038 	sw	a0,56(sp)
  88:	0c000000 	jal	0 <KaleidoSetup_Update>
  8c:	afa8002c 	sw	t0,44(sp)
  90:	3c060000 	lui	a2,0x0
  94:	24c60000 	addiu	a2,a2,0
  98:	8fa30028 	lw	v1,40(sp)
  9c:	8fa40038 	lw	a0,56(sp)
  a0:	14400084 	bnez	v0,2b4 <KaleidoSetup_Update+0x2b4>
  a4:	8fa8002c 	lw	t0,44(sp)
  a8:	806e1e5c 	lb	t6,7772(v1)
  ac:	29c10002 	slti	at,t6,2
  b0:	50200081 	beqzl	at,2b8 <KaleidoSetup_Update+0x2b8>
  b4:	8fbf0024 	lw	ra,36(sp)
  b8:	84c213f0 	lh	v0,5104(a2)
  bc:	24010008 	li	at,8
  c0:	1041007c 	beq	v0,at,2b4 <KaleidoSetup_Update+0x2b4>
  c4:	24010009 	li	at,9
  c8:	5041007b 	beql	v0,at,2b8 <KaleidoSetup_Update+0x2b8>
  cc:	8fbf0024 	lw	ra,36(sp)
  d0:	848f00a4 	lh	t7,164(a0)
  d4:	2401004b 	li	at,75
  d8:	24050038 	li	a1,56
  dc:	55e1000a 	bnel	t7,at,108 <KaleidoSetup_Update+0x108>
  e0:	24820014 	addiu	v0,a0,20
  e4:	afa40038 	sw	a0,56(sp)
  e8:	0c000000 	jal	0 <KaleidoSetup_Update>
  ec:	afa8002c 	sw	t0,44(sp)
  f0:	3c060000 	lui	a2,0x0
  f4:	24c60000 	addiu	a2,a2,0
  f8:	8fa40038 	lw	a0,56(sp)
  fc:	1440006d 	bnez	v0,2b4 <KaleidoSetup_Update+0x2b4>
 100:	8fa8002c 	lw	t0,44(sp)
 104:	24820014 	addiu	v0,a0,20
 108:	94580000 	lhu	t8,0(v0)
 10c:	2401ffdf 	li	at,-33
 110:	0301c827 	nor	t9,t8,at
 114:	5720000f 	bnezl	t9,154 <KaleidoSetup_Update+0x154>
 118:	9458000c 	lhu	t8,12(v0)
 11c:	944b000c 	lhu	t3,12(v0)
 120:	2401fff7 	li	at,-9
 124:	3c090000 	lui	t1,0x0
 128:	01616027 	nor	t4,t3,at
 12c:	15800008 	bnez	t4,150 <KaleidoSetup_Update+0x150>
 130:	25290000 	addiu	t1,t1,0
 134:	8d2d0000 	lw	t5,0(t1)
 138:	240f0003 	li	t7,3
 13c:	85ae12d4 	lh	t6,4820(t5)
 140:	51c0004b 	beqzl	t6,270 <KaleidoSetup_Update+0x270>
 144:	950b01d4 	lhu	t3,468(t0)
 148:	10000048 	b	26c <KaleidoSetup_Update+0x26c>
 14c:	a50f01d6 	sh	t7,470(t0)
 150:	9458000c 	lhu	t8,12(v0)
 154:	2401efff 	li	at,-4097
 158:	0301c827 	nor	t9,t8,at
 15c:	17200043 	bnez	t9,26c <KaleidoSetup_Update+0x26c>
 160:	3c090000 	lui	t1,0x0
 164:	94cb13ea 	lhu	t3,5098(a2)
 168:	25290000 	addiu	t1,t1,0
 16c:	8d2d0000 	lw	t5,0(t1)
 170:	240cff51 	li	t4,-175
 174:	a4cb13ee 	sh	t3,5102(a2)
 178:	a5ac0db4 	sh	t4,3508(t5)
 17c:	8d2f0000 	lw	t7,0(t1)
 180:	240e009b 	li	t6,155
 184:	240a0001 	li	t2,1
 188:	a5ee0db6 	sh	t6,3510(t7)
 18c:	a50001ea 	sh	zero,490(t0)
 190:	a50a01e4 	sh	t2,484(t0)
 194:	8d380000 	lw	t8,0(t1)
 198:	3c040000 	lui	a0,0x0
 19c:	24840000 	addiu	a0,a0,0
 1a0:	871907f4 	lh	t9,2036(t8)
 1a4:	57200012 	bnezl	t9,1f0 <KaleidoSetup_Update+0x1f0>
 1a8:	950201e8 	lhu	v0,488(t0)
 1ac:	950201e8 	lhu	v0,488(t0)
 1b0:	3c010000 	lui	at,0x0
 1b4:	3c0c0000 	lui	t4,0x0
 1b8:	00021880 	sll	v1,v0,0x2
 1bc:	00230821 	addu	at,at,v1
 1c0:	c4240000 	lwc1	$f4,0(at)
 1c4:	3c010000 	lui	at,0x0
 1c8:	00230821 	addu	at,at,v1
 1cc:	e50401d8 	swc1	$f4,472(t0)
 1d0:	c4260000 	lwc1	$f6,0(at)
 1d4:	00025840 	sll	t3,v0,0x1
 1d8:	018b6021 	addu	t4,t4,t3
 1dc:	e50601e0 	swc1	$f6,480(t0)
 1e0:	858c0000 	lh	t4,0(t4)
 1e4:	10000010 	b	228 <KaleidoSetup_Update+0x228>
 1e8:	a50c01e8 	sh	t4,488(t0)
 1ec:	950201e8 	lhu	v0,488(t0)
 1f0:	3c010000 	lui	at,0x0
 1f4:	3c0e0000 	lui	t6,0x0
 1f8:	00021880 	sll	v1,v0,0x2
 1fc:	00230821 	addu	at,at,v1
 200:	c4280000 	lwc1	$f8,0(at)
 204:	3c010000 	lui	at,0x0
 208:	00230821 	addu	at,at,v1
 20c:	e50801d8 	swc1	$f8,472(t0)
 210:	c42a0000 	lwc1	$f10,0(at)
 214:	00026840 	sll	t5,v0,0x1
 218:	01cd7021 	addu	t6,t6,t5
 21c:	e50a01e0 	swc1	$f10,480(t0)
 220:	85ce0000 	lh	t6,0(t6)
 224:	a50e01e8 	sh	t6,488(t0)
 228:	950201e8 	lhu	v0,488(t0)
 22c:	c51001d8 	lwc1	$f16,472(t0)
 230:	c50401e0 	lwc1	$f4,480(t0)
 234:	0002c040 	sll	t8,v0,0x1
 238:	460084a1 	cvt.d.s	$f18,$f16
 23c:	27190001 	addiu	t9,t8,1
 240:	a51901e6 	sh	t9,486(t0)
 244:	a50a01d4 	sh	t2,468(t0)
 248:	460021a1 	cvt.d.s	$f6,$f4
 24c:	44079000 	mfc1	a3,$f18
 250:	44069800 	mfc1	a2,$f19
 254:	f7a60010 	sdc1	$f6,16(sp)
 258:	afa8002c 	sw	t0,44(sp)
 25c:	3325ffff 	andi	a1,t9,0xffff
 260:	0c000000 	jal	0 <KaleidoSetup_Update>
 264:	afa20018 	sw	v0,24(sp)
 268:	8fa8002c 	lw	t0,44(sp)
 26c:	950b01d4 	lhu	t3,468(t0)
 270:	3c090000 	lui	t1,0x0
 274:	24010001 	li	at,1
 278:	1561000e 	bne	t3,at,2b4 <KaleidoSetup_Update+0x2b4>
 27c:	25290000 	addiu	t1,t1,0
 280:	8d2d0000 	lw	t5,0(t1)
 284:	240ce7a0 	li	t4,-6240
 288:	240e0002 	li	t6,2
 28c:	a5ac0d98 	sh	t4,3480(t5)
 290:	8d2f0000 	lw	t7,0(t1)
 294:	0c000000 	jal	0 <KaleidoSetup_Update>
 298:	a5ee0110 	sh	t6,272(t7)
 29c:	10400003 	beqz	v0,2ac <KaleidoSetup_Update+0x2ac>
 2a0:	00000000 	nop
 2a4:	0c000000 	jal	0 <KaleidoSetup_Update>
 2a8:	00002025 	move	a0,zero
 2ac:	0c000000 	jal	0 <KaleidoSetup_Update>
 2b0:	24040001 	li	a0,1
 2b4:	8fbf0024 	lw	ra,36(sp)
 2b8:	27bd0038 	addiu	sp,sp,56
 2bc:	03e00008 	jr	ra
 2c0:	00000000 	nop

000002c4 <KaleidoSetup_Init>:
 2c4:	3c014320 	lui	at,0x4320
 2c8:	44810000 	mtc1	at,$f0
 2cc:	3c010001 	lui	at,0x1
 2d0:	27bdffe8 	addiu	sp,sp,-24
 2d4:	00811021 	addu	v0,a0,at
 2d8:	afbf0014 	sw	ra,20(sp)
 2dc:	3c014280 	lui	at,0x4280
 2e0:	44812000 	mtc1	at,$f4
 2e4:	3c01446a 	lui	at,0x446a
 2e8:	44813000 	mtc1	at,$f6
 2ec:	44801000 	mtc1	zero,$f2
 2f0:	3c01c39d 	lui	at,0xc39d
 2f4:	44814000 	mtc1	at,$f8
 2f8:	3c070000 	lui	a3,0x0
 2fc:	24e70000 	addiu	a3,a3,0
 300:	a4400934 	sh	zero,2356(v0)
 304:	a4400936 	sh	zero,2358(v0)
 308:	a4400968 	sh	zero,2408(v0)
 30c:	a440094a 	sh	zero,2378(v0)
 310:	a4400944 	sh	zero,2372(v0)
 314:	a4400946 	sh	zero,2374(v0)
 318:	a4400948 	sh	zero,2376(v0)
 31c:	a4400978 	sh	zero,2424(v0)
 320:	e4400954 	swc1	$f0,2388(v0)
 324:	e4400958 	swc1	$f0,2392(v0)
 328:	e440095c 	swc1	$f0,2396(v0)
 32c:	e4400960 	swc1	$f0,2400(v0)
 330:	e4440940 	swc1	$f4,2368(v0)
 334:	e4460950 	swc1	$f6,2384(v0)
 338:	e442093c 	swc1	$f2,2364(v0)
 33c:	e4420938 	swc1	$f2,2360(v0)
 340:	e4480964 	swc1	$f8,2404(v0)
 344:	8cee0000 	lw	t6,0(a3)
 348:	24080001 	li	t0,1
 34c:	240903e7 	li	t1,999
 350:	85cf0f50 	lh	t7,3920(t6)
 354:	2419000a 	li	t9,10
 358:	a440097c 	sh	zero,2428(v0)
 35c:	25f80003 	addiu	t8,t7,3
 360:	a458097a 	sh	t8,2426(v0)
 364:	a448097e 	sh	t0,2430(v0)
 368:	a4590980 	sh	t9,2432(v0)
 36c:	a4400982 	sh	zero,2434(v0)
 370:	a440098c 	sh	zero,2444(v0)
 374:	a4400984 	sh	zero,2436(v0)
 378:	a440098e 	sh	zero,2446(v0)
 37c:	a4400986 	sh	zero,2438(v0)
 380:	a4400990 	sh	zero,2448(v0)
 384:	a4480988 	sh	t0,2440(v0)
 388:	a4400992 	sh	zero,2450(v0)
 38c:	a449099e 	sh	t1,2462(v0)
 390:	8cea0000 	lw	t2,0(a3)
 394:	240d003b 	li	t5,59
 398:	8459097e 	lh	t9,2430(v0)
 39c:	854b0f50 	lh	t3,3920(t2)
 3a0:	a44909a2 	sh	t1,2466(v0)
 3a4:	a44d09a4 	sh	t5,2468(v0)
 3a8:	256c0003 	addiu	t4,t3,3
 3ac:	a44c09a0 	sh	t4,2464(v0)
 3b0:	a44009a6 	sh	zero,2470(v0)
 3b4:	8cee0000 	lw	t6,0(a3)
 3b8:	240affd8 	li	t2,-40
 3bc:	240b0004 	li	t3,4
 3c0:	85cf0f50 	lh	t7,3920(t6)
 3c4:	240cffff 	li	t4,-1
 3c8:	3c010001 	lui	at,0x1
 3cc:	25f80003 	addiu	t8,t7,3
 3d0:	00803025 	move	a2,a0
 3d4:	a45809a8 	sh	t8,2472(v0)
 3d8:	a44009aa 	sh	zero,2474(v0)
 3dc:	a44a09ba 	sh	t2,2490(v0)
 3e0:	a44009bc 	sh	zero,2492(v0)
 3e4:	a44009be 	sh	zero,2494(v0)
 3e8:	a44b09c0 	sh	t3,2496(v0)
 3ec:	a44c09c4 	sh	t4,2500(v0)
 3f0:	a4400998 	sh	zero,2456(v0)
 3f4:	34210760 	ori	at,at,0x760
 3f8:	a45909ac 	sh	t9,2476(v0)
 3fc:	8cc50000 	lw	a1,0(a2)
 400:	0c000000 	jal	0 <KaleidoSetup_Update>
 404:	00812021 	addu	a0,a0,at
 408:	8fbf0014 	lw	ra,20(sp)
 40c:	27bd0018 	addiu	sp,sp,24
 410:	03e00008 	jr	ra
 414:	00000000 	nop

00000418 <KaleidoSetup_Destroy>:
 418:	03e00008 	jr	ra
 41c:	afa40000 	sw	a0,0(sp)
