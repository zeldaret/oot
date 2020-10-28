
build/src/overlays/actors/ovl_Oceff_Wipe4/z_oceff_wipe4.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <OceffWipe4_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa5001c 	sw	a1,28(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	3c053dcc 	lui	a1,0x3dcc
  10:	34a5cccd 	ori	a1,a1,0xcccd
  14:	0c000000 	jal	0 <OceffWipe4_Init>
  18:	afa40018 	sw	a0,24(sp)
  1c:	8fa60018 	lw	a2,24(sp)
  20:	8fa2001c 	lw	v0,28(sp)
  24:	3c040000 	lui	a0,0x0
  28:	a4c0014c 	sh	zero,332(a2)
  2c:	844e07a0 	lh	t6,1952(v0)
  30:	24840000 	addiu	a0,a0,0
  34:	84c5001c 	lh	a1,28(a2)
  38:	000e7880 	sll	t7,t6,0x2
  3c:	004fc021 	addu	t8,v0,t7
  40:	8f190790 	lw	t9,1936(t8)
  44:	8f29005c 	lw	t1,92(t9)
  48:	acc90024 	sw	t1,36(a2)
  4c:	8f280060 	lw	t0,96(t9)
  50:	acc80028 	sw	t0,40(a2)
  54:	8f290064 	lw	t1,100(t9)
  58:	0c000000 	jal	0 <OceffWipe4_Init>
  5c:	acc9002c 	sw	t1,44(a2)
  60:	8fbf0014 	lw	ra,20(sp)
  64:	27bd0018 	addiu	sp,sp,24
  68:	03e00008 	jr	ra
  6c:	00000000 	nop

00000070 <OceffWipe4_Destroy>:
  70:	27bdffe8 	addiu	sp,sp,-24
  74:	afbf0014 	sw	ra,20(sp)
  78:	afa40018 	sw	a0,24(sp)
  7c:	0c000000 	jal	0 <OceffWipe4_Init>
  80:	00a02025 	move	a0,a1
  84:	8fbf0014 	lw	ra,20(sp)
  88:	27bd0018 	addiu	sp,sp,24
  8c:	03e00008 	jr	ra
  90:	00000000 	nop

00000094 <OceffWipe4_Update>:
  94:	27bdffe8 	addiu	sp,sp,-24
  98:	afbf0014 	sw	ra,20(sp)
  9c:	84ae07a0 	lh	t6,1952(a1)
  a0:	8482014c 	lh	v0,332(a0)
  a4:	000e7880 	sll	t7,t6,0x2
  a8:	00afc021 	addu	t8,a1,t7
  ac:	8f190790 	lw	t9,1936(t8)
  b0:	28410032 	slti	at,v0,50
  b4:	244a0001 	addiu	t2,v0,1
  b8:	8f29005c 	lw	t1,92(t9)
  bc:	ac890024 	sw	t1,36(a0)
  c0:	8f280060 	lw	t0,96(t9)
  c4:	ac880028 	sw	t0,40(a0)
  c8:	8f290064 	lw	t1,100(t9)
  cc:	10200003 	beqz	at,dc <OceffWipe4_Update+0x48>
  d0:	ac89002c 	sw	t1,44(a0)
  d4:	10000003 	b	e4 <OceffWipe4_Update+0x50>
  d8:	a48a014c 	sh	t2,332(a0)
  dc:	0c000000 	jal	0 <OceffWipe4_Init>
  e0:	00000000 	nop
  e4:	8fbf0014 	lw	ra,20(sp)
  e8:	27bd0018 	addiu	sp,sp,24
  ec:	03e00008 	jr	ra
  f0:	00000000 	nop

000000f4 <OceffWipe4_Draw>:
  f4:	27bdff50 	addiu	sp,sp,-176
  f8:	afbf003c 	sw	ra,60(sp)
  fc:	afb10038 	sw	s1,56(sp)
 100:	afb00034 	sw	s0,52(sp)
 104:	afa400b0 	sw	a0,176(sp)
 108:	8cae009c 	lw	t6,156(a1)
 10c:	27b8008c 	addiu	t8,sp,140
 110:	00a08825 	move	s1,a1
 114:	31cf0fff 	andi	t7,t6,0xfff
 118:	afaf00ac 	sw	t7,172(sp)
 11c:	84b907a0 	lh	t9,1952(a1)
 120:	27a4007c 	addiu	a0,sp,124
 124:	00195080 	sll	t2,t9,0x2
 128:	00aa5821 	addu	t3,a1,t2
 12c:	8d6c0790 	lw	t4,1936(t3)
 130:	8d8e005c 	lw	t6,92(t4)
 134:	af0e0000 	sw	t6,0(t8)
 138:	8d8d0060 	lw	t5,96(t4)
 13c:	af0d0004 	sw	t5,4(t8)
 140:	8d8e0064 	lw	t6,100(t4)
 144:	af0e0008 	sw	t6,8(t8)
 148:	84af07a0 	lh	t7,1952(a1)
 14c:	000fc880 	sll	t9,t7,0x2
 150:	00b95021 	addu	t2,a1,t9
 154:	0c000000 	jal	0 <OceffWipe4_Init>
 158:	8d450790 	lw	a1,1936(t2)
 15c:	8fa900b0 	lw	t1,176(sp)
 160:	8523014c 	lh	v1,332(t1)
 164:	28610010 	slti	at,v1,16
 168:	1020000b 	beqz	at,198 <OceffWipe4_Draw+0xa4>
 16c:	00602025 	move	a0,v1
 170:	00042680 	sll	a0,a0,0x1a
 174:	0c000000 	jal	0 <OceffWipe4_Init>
 178:	00042403 	sra	a0,a0,0x10
 17c:	3c010000 	lui	at,0x0
 180:	c424005c 	lwc1	$f4,92(at)
 184:	8fab00b0 	lw	t3,176(sp)
 188:	46040182 	mul.s	$f6,$f0,$f4
 18c:	e7a600a4 	swc1	$f6,164(sp)
 190:	10000004 	b	1a4 <OceffWipe4_Draw+0xb0>
 194:	8563014c 	lh	v1,332(t3)
 198:	3c010000 	lui	at,0x0
 19c:	c4280060 	lwc1	$f8,96(at)
 1a0:	e7a800a4 	swc1	$f8,164(sp)
 1a4:	2861001e 	slti	at,v1,30
 1a8:	14200009 	bnez	at,1d0 <OceffWipe4_Draw+0xdc>
 1ac:	3c020000 	lui	v0,0x0
 1b0:	00034023 	negu	t0,v1
 1b4:	01000821 	move	at,t0
 1b8:	00084080 	sll	t0,t0,0x2
 1bc:	01014023 	subu	t0,t0,at
 1c0:	00084080 	sll	t0,t0,0x2
 1c4:	25080258 	addiu	t0,t0,600
 1c8:	10000002 	b	1d4 <OceffWipe4_Draw+0xe0>
 1cc:	310800ff 	andi	t0,t0,0xff
 1d0:	240800ff 	li	t0,255
 1d4:	3c010000 	lui	at,0x0
 1d8:	a028097f 	sb	t0,2431(at)
 1dc:	9042097f 	lbu	v0,2431(v0)
 1e0:	3c010000 	lui	at,0x0
 1e4:	3c060000 	lui	a2,0x0
 1e8:	a022095f 	sb	v0,2399(at)
 1ec:	3c010000 	lui	at,0x0
 1f0:	a022093f 	sb	v0,2367(at)
 1f4:	3c010000 	lui	at,0x0
 1f8:	a022091f 	sb	v0,2335(at)
 1fc:	3c010000 	lui	at,0x0
 200:	a02208ff 	sb	v0,2303(at)
 204:	3c010000 	lui	at,0x0
 208:	a02208df 	sb	v0,2271(at)
 20c:	3c010000 	lui	at,0x0
 210:	a02208bf 	sb	v0,2239(at)
 214:	3c010000 	lui	at,0x0
 218:	a022089f 	sb	v0,2207(at)
 21c:	3c010000 	lui	at,0x0
 220:	a022087f 	sb	v0,2175(at)
 224:	3c010000 	lui	at,0x0
 228:	a022085f 	sb	v0,2143(at)
 22c:	3c010000 	lui	at,0x0
 230:	a022083f 	sb	v0,2111(at)
 234:	8e250000 	lw	a1,0(s1)
 238:	24c60020 	addiu	a2,a2,32
 23c:	27a40068 	addiu	a0,sp,104
 240:	2407013a 	li	a3,314
 244:	0c000000 	jal	0 <OceffWipe4_Init>
 248:	00a08025 	move	s0,a1
 24c:	0c000000 	jal	0 <OceffWipe4_Init>
 250:	8e240000 	lw	a0,0(s1)
 254:	c7aa008c 	lwc1	$f10,140(sp)
 258:	c7b0007c 	lwc1	$f16,124(sp)
 25c:	c7a60094 	lwc1	$f6,148(sp)
 260:	c7a80084 	lwc1	$f8,132(sp)
 264:	46105300 	add.s	$f12,$f10,$f16
 268:	c7b20090 	lwc1	$f18,144(sp)
 26c:	c7a40080 	lwc1	$f4,128(sp)
 270:	46083280 	add.s	$f10,$f6,$f8
 274:	00003825 	move	a3,zero
 278:	46049380 	add.s	$f14,$f18,$f4
 27c:	44065000 	mfc1	a2,$f10
 280:	0c000000 	jal	0 <OceffWipe4_Init>
 284:	00000000 	nop
 288:	3c010000 	lui	at,0x0
 28c:	c42c0064 	lwc1	$f12,100(at)
 290:	24070001 	li	a3,1
 294:	44066000 	mfc1	a2,$f12
 298:	0c000000 	jal	0 <OceffWipe4_Init>
 29c:	46006386 	mov.s	$f14,$f12
 2a0:	3c010001 	lui	at,0x1
 2a4:	34211da0 	ori	at,at,0x1da0
 2a8:	0c000000 	jal	0 <OceffWipe4_Init>
 2ac:	02212021 	addu	a0,s1,at
 2b0:	c7b000a4 	lwc1	$f16,164(sp)
 2b4:	44806000 	mtc1	zero,$f12
 2b8:	24070001 	li	a3,1
 2bc:	46008487 	neg.s	$f18,$f16
 2c0:	46006386 	mov.s	$f14,$f12
 2c4:	44069000 	mfc1	a2,$f18
 2c8:	0c000000 	jal	0 <OceffWipe4_Init>
 2cc:	00000000 	nop
 2d0:	8e0202d0 	lw	v0,720(s0)
 2d4:	3c0cda38 	lui	t4,0xda38
 2d8:	358c0003 	ori	t4,t4,0x3
 2dc:	24580008 	addiu	t8,v0,8
 2e0:	ae1802d0 	sw	t8,720(s0)
 2e4:	ac4c0000 	sw	t4,0(v0)
 2e8:	8e240000 	lw	a0,0(s1)
 2ec:	3c050000 	lui	a1,0x0
 2f0:	24a50034 	addiu	a1,a1,52
 2f4:	24060144 	li	a2,324
 2f8:	0c000000 	jal	0 <OceffWipe4_Init>
 2fc:	afa20064 	sw	v0,100(sp)
 300:	8fa30064 	lw	v1,100(sp)
 304:	24010001 	li	at,1
 308:	3c0c0000 	lui	t4,0x0
 30c:	ac620004 	sw	v0,4(v1)
 310:	8fad00b0 	lw	t5,176(sp)
 314:	3c08de00 	lui	t0,0xde00
 318:	3c190000 	lui	t9,0x0
 31c:	85ae001c 	lh	t6,28(t5)
 320:	258c0a50 	addiu	t4,t4,2640
 324:	00002825 	move	a1,zero
 328:	55c1000a 	bnel	t6,at,354 <OceffWipe4_Draw+0x260>
 32c:	8e0202d0 	lw	v0,720(s0)
 330:	8e0202d0 	lw	v0,720(s0)
 334:	3c08de00 	lui	t0,0xde00
 338:	273909e8 	addiu	t9,t9,2536
 33c:	244f0008 	addiu	t7,v0,8
 340:	ae0f02d0 	sw	t7,720(s0)
 344:	ac590004 	sw	t9,4(v0)
 348:	10000008 	b	36c <OceffWipe4_Draw+0x278>
 34c:	ac480000 	sw	t0,0(v0)
 350:	8e0202d0 	lw	v0,720(s0)
 354:	3c0b0000 	lui	t3,0x0
 358:	256b0980 	addiu	t3,t3,2432
 35c:	244a0008 	addiu	t2,v0,8
 360:	ae0a02d0 	sw	t2,720(s0)
 364:	ac4b0004 	sw	t3,4(v0)
 368:	ac480000 	sw	t0,0(v0)
 36c:	8e0202d0 	lw	v0,720(s0)
 370:	240e0020 	li	t6,32
 374:	240f0040 	li	t7,64
 378:	24580008 	addiu	t8,v0,8
 37c:	ae1802d0 	sw	t8,720(s0)
 380:	ac480000 	sw	t0,0(v0)
 384:	ac4c0004 	sw	t4,4(v0)
 388:	8e0202d0 	lw	v0,720(s0)
 38c:	8fa900ac 	lw	t1,172(sp)
 390:	24180020 	li	t8,32
 394:	244d0008 	addiu	t5,v0,8
 398:	ae0d02d0 	sw	t5,720(s0)
 39c:	ac480000 	sw	t0,0(v0)
 3a0:	8e240000 	lw	a0,0(s1)
 3a4:	24190001 	li	t9,1
 3a8:	240b0020 	li	t3,32
 3ac:	00090823 	negu	at,t1
 3b0:	00095023 	negu	t2,t1
 3b4:	afaa001c 	sw	t2,28(sp)
 3b8:	00013840 	sll	a3,at,0x1
 3bc:	afab0024 	sw	t3,36(sp)
 3c0:	afb90018 	sw	t9,24(sp)
 3c4:	afb80028 	sw	t8,40(sp)
 3c8:	afaf0014 	sw	t7,20(sp)
 3cc:	afae0010 	sw	t6,16(sp)
 3d0:	afa20054 	sw	v0,84(sp)
 3d4:	afa90020 	sw	t1,32(sp)
 3d8:	0c000000 	jal	0 <OceffWipe4_Init>
 3dc:	00093040 	sll	a2,t1,0x1
 3e0:	8fa30054 	lw	v1,84(sp)
 3e4:	3c0d0000 	lui	t5,0x0
 3e8:	3c08de00 	lui	t0,0xde00
 3ec:	ac620004 	sw	v0,4(v1)
 3f0:	8e0202d0 	lw	v0,720(s0)
 3f4:	25ad0aa8 	addiu	t5,t5,2728
 3f8:	3c060000 	lui	a2,0x0
 3fc:	244c0008 	addiu	t4,v0,8
 400:	ae0c02d0 	sw	t4,720(s0)
 404:	ac4d0004 	sw	t5,4(v0)
 408:	ac480000 	sw	t0,0(v0)
 40c:	8e250000 	lw	a1,0(s1)
 410:	24c60048 	addiu	a2,a2,72
 414:	27a40068 	addiu	a0,sp,104
 418:	0c000000 	jal	0 <OceffWipe4_Init>
 41c:	24070158 	li	a3,344
 420:	8fbf003c 	lw	ra,60(sp)
 424:	8fb00034 	lw	s0,52(sp)
 428:	8fb10038 	lw	s1,56(sp)
 42c:	03e00008 	jr	ra
 430:	27bd00b0 	addiu	sp,sp,176
	...
