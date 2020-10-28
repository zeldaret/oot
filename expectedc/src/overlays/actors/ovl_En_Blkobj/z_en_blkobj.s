
build/src/overlays/actors/ovl_En_Blkobj/z_en_blkobj.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_809C2060>:
   0:	ac850168 	sw	a1,360(a0)
   4:	03e00008 	jr	ra
   8:	a4800166 	sh	zero,358(a0)

0000000c <EnBlkobj_Init>:
   c:	27bdffd0 	addiu	sp,sp,-48
  10:	afa50034 	sw	a1,52(sp)
  14:	afbf001c 	sw	ra,28(sp)
  18:	afb00018 	sw	s0,24(sp)
  1c:	3c050000 	lui	a1,0x0
  20:	00808025 	move	s0,a0
  24:	afa00024 	sw	zero,36(sp)
  28:	0c000000 	jal	0 <func_809C2060>
  2c:	24a50020 	addiu	a1,a1,32
  30:	02002025 	move	a0,s0
  34:	0c000000 	jal	0 <func_809C2060>
  38:	00002825 	move	a1,zero
  3c:	8fa40034 	lw	a0,52(sp)
  40:	0c000000 	jal	0 <func_809C2060>
  44:	82050003 	lb	a1,3(s0)
  48:	10400009 	beqz	v0,70 <EnBlkobj_Init+0x64>
  4c:	3c040000 	lui	a0,0x0
  50:	240e00ff 	li	t6,255
  54:	3c050000 	lui	a1,0x0
  58:	a60e0164 	sh	t6,356(s0)
  5c:	24a50000 	addiu	a1,a1,0
  60:	0c000000 	jal	0 <func_809C2060>
  64:	02002025 	move	a0,s0
  68:	1000000f 	b	a8 <EnBlkobj_Init+0x9c>
  6c:	8fbf001c 	lw	ra,28(sp)
  70:	24840000 	addiu	a0,a0,0
  74:	0c000000 	jal	0 <func_809C2060>
  78:	27a50024 	addiu	a1,sp,36
  7c:	8fa40034 	lw	a0,52(sp)
  80:	02003025 	move	a2,s0
  84:	8fa70024 	lw	a3,36(sp)
  88:	0c000000 	jal	0 <func_809C2060>
  8c:	24850810 	addiu	a1,a0,2064
  90:	3c050000 	lui	a1,0x0
  94:	ae02014c 	sw	v0,332(s0)
  98:	24a50000 	addiu	a1,a1,0
  9c:	0c000000 	jal	0 <func_809C2060>
  a0:	02002025 	move	a0,s0
  a4:	8fbf001c 	lw	ra,28(sp)
  a8:	8fb00018 	lw	s0,24(sp)
  ac:	27bd0030 	addiu	sp,sp,48
  b0:	03e00008 	jr	ra
  b4:	00000000 	nop

000000b8 <EnBlkobj_Destroy>:
  b8:	27bdffe8 	addiu	sp,sp,-24
  bc:	afa40018 	sw	a0,24(sp)
  c0:	8fae0018 	lw	t6,24(sp)
  c4:	afbf0014 	sw	ra,20(sp)
  c8:	00a02025 	move	a0,a1
  cc:	24a50810 	addiu	a1,a1,2064
  d0:	0c000000 	jal	0 <func_809C2060>
  d4:	8dc6014c 	lw	a2,332(t6)
  d8:	8fbf0014 	lw	ra,20(sp)
  dc:	27bd0018 	addiu	sp,sp,24
  e0:	03e00008 	jr	ra
  e4:	00000000 	nop

000000e8 <func_809C2148>:
  e8:	27bdffe0 	addiu	sp,sp,-32
  ec:	afbf0014 	sw	ra,20(sp)
  f0:	3c0142f0 	lui	at,0x42f0
  f4:	44813000 	mtc1	at,$f6
  f8:	c4840090 	lwc1	$f4,144(a0)
  fc:	8ca21c44 	lw	v0,7236(a1)
 100:	3c050000 	lui	a1,0x0
 104:	4606203c 	c.lt.s	$f4,$f6
 108:	24a50000 	addiu	a1,a1,0
 10c:	45020005 	bc1fl	124 <func_809C2148+0x3c>
 110:	8c4e0680 	lw	t6,1664(v0)
 114:	0c000000 	jal	0 <func_809C2060>
 118:	afa2001c 	sw	v0,28(sp)
 11c:	8fa2001c 	lw	v0,28(sp)
 120:	8c4e0680 	lw	t6,1664(v0)
 124:	3c010400 	lui	at,0x400
 128:	01c17825 	or	t7,t6,at
 12c:	ac4f0680 	sw	t7,1664(v0)
 130:	8fbf0014 	lw	ra,20(sp)
 134:	27bd0020 	addiu	sp,sp,32
 138:	03e00008 	jr	ra
 13c:	00000000 	nop

00000140 <func_809C21A0>:
 140:	27bdffc8 	addiu	sp,sp,-56
 144:	afbf0034 	sw	ra,52(sp)
 148:	afb00030 	sw	s0,48(sp)
 14c:	8c8e0004 	lw	t6,4(a0)
 150:	00808025 	move	s0,a0
 154:	31cf0040 	andi	t7,t6,0x40
 158:	55e00013 	bnezl	t7,1a8 <func_809C21A0+0x68>
 15c:	8fbf0034 	lw	ra,52(sp)
 160:	c6040028 	lwc1	$f4,40(s0)
 164:	8e070024 	lw	a3,36(s0)
 168:	24a41c24 	addiu	a0,a1,7204
 16c:	e7a40010 	swc1	$f4,16(sp)
 170:	c606002c 	lwc1	$f6,44(s0)
 174:	afa00018 	sw	zero,24(sp)
 178:	24060033 	li	a2,51
 17c:	e7a60014 	swc1	$f6,20(sp)
 180:	8618008a 	lh	t8,138(s0)
 184:	afa00024 	sw	zero,36(sp)
 188:	afa00020 	sw	zero,32(sp)
 18c:	0c000000 	jal	0 <func_809C2060>
 190:	afb8001c 	sw	t8,28(sp)
 194:	3c050000 	lui	a1,0x0
 198:	24a50000 	addiu	a1,a1,0
 19c:	0c000000 	jal	0 <func_809C2060>
 1a0:	02002025 	move	a0,s0
 1a4:	8fbf0034 	lw	ra,52(sp)
 1a8:	8fb00030 	lw	s0,48(sp)
 1ac:	27bd0038 	addiu	sp,sp,56
 1b0:	03e00008 	jr	ra
 1b4:	00000000 	nop

000001b8 <func_809C2218>:
 1b8:	27bdffe0 	addiu	sp,sp,-32
 1bc:	afbf001c 	sw	ra,28(sp)
 1c0:	afb00018 	sw	s0,24(sp)
 1c4:	84820166 	lh	v0,358(a0)
 1c8:	00808025 	move	s0,a0
 1cc:	00a03825 	move	a3,a1
 1d0:	1440000f 	bnez	v0,210 <func_809C2218+0x58>
 1d4:	28430065 	slti	v1,v0,101
 1d8:	24a41c24 	addiu	a0,a1,7204
 1dc:	24050033 	li	a1,51
 1e0:	24060009 	li	a2,9
 1e4:	0c000000 	jal	0 <func_809C2060>
 1e8:	afa70024 	sw	a3,36(sp)
 1ec:	14400024 	bnez	v0,280 <func_809C2218+0xc8>
 1f0:	8fa70024 	lw	a3,36(sp)
 1f4:	00e02025 	move	a0,a3
 1f8:	0c000000 	jal	0 <func_809C2060>
 1fc:	82050003 	lb	a1,3(s0)
 200:	860e0166 	lh	t6,358(s0)
 204:	25cf0001 	addiu	t7,t6,1
 208:	1000001d 	b	280 <func_809C2218+0xc8>
 20c:	a60f0166 	sh	t7,358(s0)
 210:	38630001 	xori	v1,v1,0x1
 214:	24580001 	addiu	t8,v0,1
 218:	10600019 	beqz	v1,280 <func_809C2218+0xc8>
 21c:	a6180166 	sh	t8,358(s0)
 220:	86020166 	lh	v0,358(s0)
 224:	240a00ff 	li	t2,255
 228:	02002025 	move	a0,s0
 22c:	2442ff9c 	addiu	v0,v0,-100
 230:	00021083 	sra	v0,v0,0x2
 234:	28410006 	slti	at,v0,6
 238:	14200002 	bnez	at,244 <func_809C2218+0x8c>
 23c:	3c050000 	lui	a1,0x0
 240:	24020005 	li	v0,5
 244:	86190164 	lh	t9,356(s0)
 248:	24a50000 	addiu	a1,a1,0
 24c:	03224021 	addu	t0,t9,v0
 250:	a6080164 	sh	t0,356(s0)
 254:	86090164 	lh	t1,356(s0)
 258:	29210100 	slti	at,t1,256
 25c:	54200009 	bnezl	at,284 <func_809C2218+0xcc>
 260:	8fbf001c 	lw	ra,28(sp)
 264:	a60a0164 	sh	t2,356(s0)
 268:	0c000000 	jal	0 <func_809C2060>
 26c:	afa70024 	sw	a3,36(sp)
 270:	8fa40024 	lw	a0,36(sp)
 274:	8e06014c 	lw	a2,332(s0)
 278:	0c000000 	jal	0 <func_809C2060>
 27c:	24850810 	addiu	a1,a0,2064
 280:	8fbf001c 	lw	ra,28(sp)
 284:	8fb00018 	lw	s0,24(sp)
 288:	27bd0020 	addiu	sp,sp,32
 28c:	03e00008 	jr	ra
 290:	00000000 	nop

00000294 <func_809C22F4>:
 294:	afa40000 	sw	a0,0(sp)
 298:	03e00008 	jr	ra
 29c:	afa50004 	sw	a1,4(sp)

000002a0 <EnBlkobj_Update>:
 2a0:	27bdffe8 	addiu	sp,sp,-24
 2a4:	afbf0014 	sw	ra,20(sp)
 2a8:	8c990168 	lw	t9,360(a0)
 2ac:	0320f809 	jalr	t9
 2b0:	00000000 	nop
 2b4:	8fbf0014 	lw	ra,20(sp)
 2b8:	27bd0018 	addiu	sp,sp,24
 2bc:	03e00008 	jr	ra
 2c0:	00000000 	nop

000002c4 <func_809C2324>:
 2c4:	27bdffc0 	addiu	sp,sp,-64
 2c8:	afbf0014 	sw	ra,20(sp)
 2cc:	afa40040 	sw	a0,64(sp)
 2d0:	afa50044 	sw	a1,68(sp)
 2d4:	afa60048 	sw	a2,72(sp)
 2d8:	8c850000 	lw	a1,0(a0)
 2dc:	3c060000 	lui	a2,0x0
 2e0:	24c60000 	addiu	a2,a2,0
 2e4:	27a40028 	addiu	a0,sp,40
 2e8:	24070142 	li	a3,322
 2ec:	0c000000 	jal	0 <func_809C2060>
 2f0:	afa50038 	sw	a1,56(sp)
 2f4:	8fa50048 	lw	a1,72(sp)
 2f8:	240100ff 	li	at,255
 2fc:	8fa80038 	lw	t0,56(sp)
 300:	14a10004 	bne	a1,at,314 <func_809C2324+0x50>
 304:	3c040000 	lui	a0,0x0
 308:	3c040000 	lui	a0,0x0
 30c:	10000002 	b	318 <func_809C2324+0x54>
 310:	24840000 	addiu	a0,a0,0
 314:	24840000 	addiu	a0,a0,0
 318:	8d0202d0 	lw	v0,720(t0)
 31c:	3c18db06 	lui	t8,0xdb06
 320:	37180020 	ori	t8,t8,0x20
 324:	244f0008 	addiu	t7,v0,8
 328:	ad0f02d0 	sw	t7,720(t0)
 32c:	ac440004 	sw	a0,4(v0)
 330:	ac580000 	sw	t8,0(v0)
 334:	8d0202d0 	lw	v0,720(t0)
 338:	3c09fb00 	lui	t1,0xfb00
 33c:	30aa00ff 	andi	t2,a1,0xff
 340:	24590008 	addiu	t9,v0,8
 344:	ad1902d0 	sw	t9,720(t0)
 348:	ac4a0004 	sw	t2,4(v0)
 34c:	ac490000 	sw	t1,0(v0)
 350:	8d0202d0 	lw	v0,720(t0)
 354:	3c0cde00 	lui	t4,0xde00
 358:	3c060000 	lui	a2,0x0
 35c:	244b0008 	addiu	t3,v0,8
 360:	ad0b02d0 	sw	t3,720(t0)
 364:	ac4c0000 	sw	t4,0(v0)
 368:	8fad0044 	lw	t5,68(sp)
 36c:	24c60014 	addiu	a2,a2,20
 370:	27a40028 	addiu	a0,sp,40
 374:	ac4d0004 	sw	t5,4(v0)
 378:	8fae0040 	lw	t6,64(sp)
 37c:	2407014a 	li	a3,330
 380:	0c000000 	jal	0 <func_809C2060>
 384:	8dc50000 	lw	a1,0(t6)
 388:	8fbf0014 	lw	ra,20(sp)
 38c:	27bd0040 	addiu	sp,sp,64
 390:	03e00008 	jr	ra
 394:	00000000 	nop

00000398 <EnBlkobj_Draw>:
 398:	27bdff90 	addiu	sp,sp,-112
 39c:	afb10038 	sw	s1,56(sp)
 3a0:	00a08825 	move	s1,a1
 3a4:	afbf003c 	sw	ra,60(sp)
 3a8:	afb00034 	sw	s0,52(sp)
 3ac:	afa40070 	sw	a0,112(sp)
 3b0:	8ca50000 	lw	a1,0(a1)
 3b4:	3c060000 	lui	a2,0x0
 3b8:	24c60028 	addiu	a2,a2,40
 3bc:	27a4004c 	addiu	a0,sp,76
 3c0:	2407015d 	li	a3,349
 3c4:	0c000000 	jal	0 <func_809C2060>
 3c8:	00a08025 	move	s0,a1
 3cc:	0c000000 	jal	0 <func_809C2060>
 3d0:	8e240000 	lw	a0,0(s1)
 3d4:	8e0202d0 	lw	v0,720(s0)
 3d8:	3c060001 	lui	a2,0x1
 3dc:	00d13021 	addu	a2,a2,s1
 3e0:	8cc61de4 	lw	a2,7652(a2)
 3e4:	3c0fdb06 	lui	t7,0xdb06
 3e8:	244e0008 	addiu	t6,v0,8
 3ec:	ae0e02d0 	sw	t6,720(s0)
 3f0:	35ef0034 	ori	t7,t7,0x34
 3f4:	ac4f0000 	sw	t7,0(v0)
 3f8:	8e240000 	lw	a0,0(s1)
 3fc:	24180020 	li	t8,32
 400:	24190020 	li	t9,32
 404:	24080001 	li	t0,1
 408:	24090020 	li	t1,32
 40c:	240a0020 	li	t2,32
 410:	30c6007f 	andi	a2,a2,0x7f
 414:	afa6001c 	sw	a2,28(sp)
 418:	afaa0028 	sw	t2,40(sp)
 41c:	afa90024 	sw	t1,36(sp)
 420:	afa80018 	sw	t0,24(sp)
 424:	afb90014 	sw	t9,20(sp)
 428:	afb80010 	sw	t8,16(sp)
 42c:	afa00020 	sw	zero,32(sp)
 430:	00002825 	move	a1,zero
 434:	00003825 	move	a3,zero
 438:	0c000000 	jal	0 <func_809C2060>
 43c:	afa20048 	sw	v0,72(sp)
 440:	8fa30048 	lw	v1,72(sp)
 444:	3c0cda38 	lui	t4,0xda38
 448:	358c0003 	ori	t4,t4,0x3
 44c:	ac620004 	sw	v0,4(v1)
 450:	8e0202d0 	lw	v0,720(s0)
 454:	3c050000 	lui	a1,0x0
 458:	24a5003c 	addiu	a1,a1,60
 45c:	244b0008 	addiu	t3,v0,8
 460:	ae0b02d0 	sw	t3,720(s0)
 464:	ac4c0000 	sw	t4,0(v0)
 468:	8e240000 	lw	a0,0(s1)
 46c:	2406016b 	li	a2,363
 470:	0c000000 	jal	0 <func_809C2060>
 474:	afa20044 	sw	v0,68(sp)
 478:	8fa30044 	lw	v1,68(sp)
 47c:	02202025 	move	a0,s1
 480:	3c050000 	lui	a1,0x0
 484:	ac620004 	sw	v0,4(v1)
 488:	8fa20070 	lw	v0,112(sp)
 48c:	84460164 	lh	a2,356(v0)
 490:	50c00006 	beqzl	a2,4ac <EnBlkobj_Draw+0x114>
 494:	240e00ff 	li	t6,255
 498:	0c000000 	jal	0 <func_809C2060>
 49c:	24a50000 	addiu	a1,a1,0
 4a0:	8fad0070 	lw	t5,112(sp)
 4a4:	85a60164 	lh	a2,356(t5)
 4a8:	240e00ff 	li	t6,255
 4ac:	01c63823 	subu	a3,t6,a2
 4b0:	10e00005 	beqz	a3,4c8 <EnBlkobj_Draw+0x130>
 4b4:	02202025 	move	a0,s1
 4b8:	3c050000 	lui	a1,0x0
 4bc:	24a50000 	addiu	a1,a1,0
 4c0:	0c000000 	jal	0 <func_809C2060>
 4c4:	00e03025 	move	a2,a3
 4c8:	3c060000 	lui	a2,0x0
 4cc:	24c60050 	addiu	a2,a2,80
 4d0:	27a4004c 	addiu	a0,sp,76
 4d4:	8e250000 	lw	a1,0(s1)
 4d8:	0c000000 	jal	0 <func_809C2060>
 4dc:	24070177 	li	a3,375
 4e0:	8fbf003c 	lw	ra,60(sp)
 4e4:	8fb00034 	lw	s0,52(sp)
 4e8:	8fb10038 	lw	s1,56(sp)
 4ec:	03e00008 	jr	ra
 4f0:	27bd0070 	addiu	sp,sp,112
	...
