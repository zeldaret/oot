
build/src/overlays/actors/ovl_Bg_Zg/z_bg_zg.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgZg_Destroy>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa40018 	sw	a0,24(sp)
   8:	8fae0018 	lw	t6,24(sp)
   c:	afbf0014 	sw	ra,20(sp)
  10:	00a02025 	move	a0,a1
  14:	24a50810 	addiu	a1,a1,2064
  18:	0c000000 	jal	0 <BgZg_Destroy>
  1c:	8dc6014c 	lw	a2,332(t6)
  20:	8fbf0014 	lw	ra,20(sp)
  24:	27bd0018 	addiu	sp,sp,24
  28:	03e00008 	jr	ra
  2c:	00000000 	nop

00000030 <func_808C0C50>:
  30:	27bdffe0 	addiu	sp,sp,-32
  34:	afa40020 	sw	a0,32(sp)
  38:	8fa50020 	lw	a1,32(sp)
  3c:	3c070000 	lui	a3,0x0
  40:	3c0e0000 	lui	t6,0x0
  44:	24e70000 	addiu	a3,a3,0
  48:	afbf001c 	sw	ra,28(sp)
  4c:	25ce0000 	addiu	t6,t6,0
  50:	afae0014 	sw	t6,20(sp)
  54:	afa70010 	sw	a3,16(sp)
  58:	24042859 	li	a0,10329
  5c:	24060004 	li	a2,4
  60:	0c000000 	jal	0 <BgZg_Destroy>
  64:	24a500e4 	addiu	a1,a1,228
  68:	8fbf001c 	lw	ra,28(sp)
  6c:	27bd0020 	addiu	sp,sp,32
  70:	03e00008 	jr	ra
  74:	00000000 	nop

00000078 <func_808C0C98>:
  78:	27bdffe8 	addiu	sp,sp,-24
  7c:	afbf0014 	sw	ra,20(sp)
  80:	00a03825 	move	a3,a1
  84:	8485001c 	lh	a1,28(a0)
  88:	00e02025 	move	a0,a3
  8c:	00052a03 	sra	a1,a1,0x8
  90:	0c000000 	jal	0 <BgZg_Destroy>
  94:	30a500ff 	andi	a1,a1,0xff
  98:	8fbf0014 	lw	ra,20(sp)
  9c:	27bd0018 	addiu	sp,sp,24
  a0:	03e00008 	jr	ra
  a4:	00000000 	nop

000000a8 <func_808C0CC8>:
  a8:	8483001c 	lh	v1,28(a0)
  ac:	03e00008 	jr	ra
  b0:	306200ff 	andi	v0,v1,0xff

000000b4 <func_808C0CD4>:
  b4:	27bdffe8 	addiu	sp,sp,-24
  b8:	afbf0014 	sw	ra,20(sp)
  bc:	0c000000 	jal	0 <BgZg_Destroy>
  c0:	afa40018 	sw	a0,24(sp)
  c4:	10400004 	beqz	v0,d8 <func_808C0CD4+0x24>
  c8:	8fa40018 	lw	a0,24(sp)
  cc:	240e0001 	li	t6,1
  d0:	0c000000 	jal	0 <BgZg_Destroy>
  d4:	ac8e0164 	sw	t6,356(a0)
  d8:	8fbf0014 	lw	ra,20(sp)
  dc:	27bd0018 	addiu	sp,sp,24
  e0:	03e00008 	jr	ra
  e4:	00000000 	nop

000000e8 <func_808C0D08>:
  e8:	3c020000 	lui	v0,0x0
  ec:	24420000 	addiu	v0,v0,0
  f0:	8c4e0000 	lw	t6,0(v0)
  f4:	27bdffe8 	addiu	sp,sp,-24
  f8:	afbf0014 	sw	ra,20(sp)
  fc:	afa5001c 	sw	a1,28(sp)
 100:	85cf1474 	lh	t7,5236(t6)
 104:	3c010000 	lui	at,0x0
 108:	c42000a4 	lwc1	$f0,164(at)
 10c:	448f2000 	mtc1	t7,$f4
 110:	3c0141a0 	lui	at,0x41a0
 114:	44814000 	mtc1	at,$f8
 118:	468021a0 	cvt.s.w	$f6,$f4
 11c:	c4920028 	lwc1	$f18,40(a0)
 120:	3c014348 	lui	at,0x4348
 124:	46083280 	add.s	$f10,$f6,$f8
 128:	46005402 	mul.s	$f16,$f10,$f0
 12c:	46109100 	add.s	$f4,$f18,$f16
 130:	44819000 	mtc1	at,$f18
 134:	e4840028 	swc1	$f4,40(a0)
 138:	8c580000 	lw	t8,0(v0)
 13c:	c4860028 	lwc1	$f6,40(a0)
 140:	87191476 	lh	t9,5238(t8)
 144:	44994000 	mtc1	t9,$f8
 148:	00000000 	nop
 14c:	468042a0 	cvt.s.w	$f10,$f8
 150:	c488000c 	lwc1	$f8,12(a0)
 154:	46125400 	add.s	$f16,$f10,$f18
 158:	46008102 	mul.s	$f4,$f16,$f0
 15c:	46082280 	add.s	$f10,$f4,$f8
 160:	4606503e 	c.le.s	$f10,$f6
 164:	00000000 	nop
 168:	45020004 	bc1fl	17c <func_808C0D08+0x94>
 16c:	8fbf0014 	lw	ra,20(sp)
 170:	0c000000 	jal	0 <BgZg_Destroy>
 174:	00000000 	nop
 178:	8fbf0014 	lw	ra,20(sp)
 17c:	27bd0018 	addiu	sp,sp,24
 180:	03e00008 	jr	ra
 184:	00000000 	nop

00000188 <BgZg_Update>:
 188:	27bdffe8 	addiu	sp,sp,-24
 18c:	afbf0014 	sw	ra,20(sp)
 190:	8c820164 	lw	v0,356(a0)
 194:	04400008 	bltz	v0,1b8 <BgZg_Update+0x30>
 198:	28410002 	slti	at,v0,2
 19c:	10200006 	beqz	at,1b8 <BgZg_Update+0x30>
 1a0:	00027080 	sll	t6,v0,0x2
 1a4:	3c030000 	lui	v1,0x0
 1a8:	006e1821 	addu	v1,v1,t6
 1ac:	8c630000 	lw	v1,0(v1)
 1b0:	14600006 	bnez	v1,1cc <BgZg_Update+0x44>
 1b4:	00000000 	nop
 1b8:	3c040000 	lui	a0,0x0
 1bc:	0c000000 	jal	0 <BgZg_Destroy>
 1c0:	24840000 	addiu	a0,a0,0
 1c4:	10000004 	b	1d8 <BgZg_Update+0x50>
 1c8:	8fbf0014 	lw	ra,20(sp)
 1cc:	0060f809 	jalr	v1
 1d0:	00000000 	nop
 1d4:	8fbf0014 	lw	ra,20(sp)
 1d8:	27bd0018 	addiu	sp,sp,24
 1dc:	03e00008 	jr	ra
 1e0:	00000000 	nop

000001e4 <BgZg_Init>:
 1e4:	27bdffd0 	addiu	sp,sp,-48
 1e8:	afa50034 	sw	a1,52(sp)
 1ec:	afbf001c 	sw	ra,28(sp)
 1f0:	afb00018 	sw	s0,24(sp)
 1f4:	3c050000 	lui	a1,0x0
 1f8:	00808025 	move	s0,a0
 1fc:	0c000000 	jal	0 <BgZg_Destroy>
 200:	24a50008 	addiu	a1,a1,8
 204:	02002025 	move	a0,s0
 208:	0c000000 	jal	0 <BgZg_Destroy>
 20c:	00002825 	move	a1,zero
 210:	3c040000 	lui	a0,0x0
 214:	afa00020 	sw	zero,32(sp)
 218:	24840000 	addiu	a0,a0,0
 21c:	0c000000 	jal	0 <BgZg_Destroy>
 220:	27a50020 	addiu	a1,sp,32
 224:	8fa40034 	lw	a0,52(sp)
 228:	02003025 	move	a2,s0
 22c:	8fa70020 	lw	a3,32(sp)
 230:	0c000000 	jal	0 <BgZg_Destroy>
 234:	24850810 	addiu	a1,a0,2064
 238:	ae02014c 	sw	v0,332(s0)
 23c:	0c000000 	jal	0 <BgZg_Destroy>
 240:	02002025 	move	a0,s0
 244:	24010008 	li	at,8
 248:	10410005 	beq	v0,at,260 <BgZg_Init+0x7c>
 24c:	00000000 	nop
 250:	0c000000 	jal	0 <BgZg_Destroy>
 254:	02002025 	move	a0,s0
 258:	24010009 	li	at,9
 25c:	1441000d 	bne	v0,at,294 <BgZg_Init+0xb0>
 260:	3c010000 	lui	at,0x0
 264:	c42000a8 	lwc1	$f0,168(at)
 268:	c6040050 	lwc1	$f4,80(s0)
 26c:	c6080058 	lwc1	$f8,88(s0)
 270:	3c010000 	lui	at,0x0
 274:	46002182 	mul.s	$f6,$f4,$f0
 278:	c6100054 	lwc1	$f16,84(s0)
 27c:	46004282 	mul.s	$f10,$f8,$f0
 280:	e6060050 	swc1	$f6,80(s0)
 284:	e60a0058 	swc1	$f10,88(s0)
 288:	c43200ac 	lwc1	$f18,172(at)
 28c:	46128102 	mul.s	$f4,$f16,$f18
 290:	e6040054 	swc1	$f4,84(s0)
 294:	ae000164 	sw	zero,356(s0)
 298:	ae000168 	sw	zero,360(s0)
 29c:	8fa50034 	lw	a1,52(sp)
 2a0:	0c000000 	jal	0 <BgZg_Destroy>
 2a4:	02002025 	move	a0,s0
 2a8:	50400004 	beqzl	v0,2bc <BgZg_Init+0xd8>
 2ac:	8fbf001c 	lw	ra,28(sp)
 2b0:	0c000000 	jal	0 <BgZg_Destroy>
 2b4:	02002025 	move	a0,s0
 2b8:	8fbf001c 	lw	ra,28(sp)
 2bc:	8fb00018 	lw	s0,24(sp)
 2c0:	27bd0030 	addiu	sp,sp,48
 2c4:	03e00008 	jr	ra
 2c8:	00000000 	nop

000002cc <func_808C0EEC>:
 2cc:	27bdffb8 	addiu	sp,sp,-72
 2d0:	afbf001c 	sw	ra,28(sp)
 2d4:	afb00018 	sw	s0,24(sp)
 2d8:	afa40048 	sw	a0,72(sp)
 2dc:	afa5004c 	sw	a1,76(sp)
 2e0:	8cb00000 	lw	s0,0(a1)
 2e4:	3c060000 	lui	a2,0x0
 2e8:	24c6003c 	addiu	a2,a2,60
 2ec:	27a40030 	addiu	a0,sp,48
 2f0:	24070137 	li	a3,311
 2f4:	0c000000 	jal	0 <BgZg_Destroy>
 2f8:	02002825 	move	a1,s0
 2fc:	0c000000 	jal	0 <BgZg_Destroy>
 300:	02002025 	move	a0,s0
 304:	8e0302c0 	lw	v1,704(s0)
 308:	3c18da38 	lui	t8,0xda38
 30c:	37180003 	ori	t8,t8,0x3
 310:	246f0008 	addiu	t7,v1,8
 314:	ae0f02c0 	sw	t7,704(s0)
 318:	3c050000 	lui	a1,0x0
 31c:	ac780000 	sw	t8,0(v1)
 320:	24a5004c 	addiu	a1,a1,76
 324:	02002025 	move	a0,s0
 328:	2406013b 	li	a2,315
 32c:	0c000000 	jal	0 <BgZg_Destroy>
 330:	afa3002c 	sw	v1,44(sp)
 334:	8fa7002c 	lw	a3,44(sp)
 338:	3c090000 	lui	t1,0x0
 33c:	25290000 	addiu	t1,t1,0
 340:	ace20004 	sw	v0,4(a3)
 344:	8e0302c0 	lw	v1,704(s0)
 348:	3c08de00 	lui	t0,0xde00
 34c:	3c060000 	lui	a2,0x0
 350:	24790008 	addiu	t9,v1,8
 354:	ae1902c0 	sw	t9,704(s0)
 358:	24c6005c 	addiu	a2,a2,92
 35c:	24070140 	li	a3,320
 360:	27a40030 	addiu	a0,sp,48
 364:	02002825 	move	a1,s0
 368:	ac690004 	sw	t1,4(v1)
 36c:	0c000000 	jal	0 <BgZg_Destroy>
 370:	ac680000 	sw	t0,0(v1)
 374:	8fbf001c 	lw	ra,28(sp)
 378:	8fb00018 	lw	s0,24(sp)
 37c:	27bd0048 	addiu	sp,sp,72
 380:	03e00008 	jr	ra
 384:	00000000 	nop

00000388 <BgZg_Draw>:
 388:	27bdffe8 	addiu	sp,sp,-24
 38c:	afbf0014 	sw	ra,20(sp)
 390:	8c820168 	lw	v0,360(a0)
 394:	04400008 	bltz	v0,3b8 <BgZg_Draw+0x30>
 398:	00000000 	nop
 39c:	1c400006 	bgtz	v0,3b8 <BgZg_Draw+0x30>
 3a0:	00027080 	sll	t6,v0,0x2
 3a4:	3c030000 	lui	v1,0x0
 3a8:	006e1821 	addu	v1,v1,t6
 3ac:	8c63000c 	lw	v1,12(v1)
 3b0:	14600006 	bnez	v1,3cc <BgZg_Draw+0x44>
 3b4:	00000000 	nop
 3b8:	3c040000 	lui	a0,0x0
 3bc:	0c000000 	jal	0 <BgZg_Destroy>
 3c0:	2484006c 	addiu	a0,a0,108
 3c4:	10000004 	b	3d8 <BgZg_Draw+0x50>
 3c8:	8fbf0014 	lw	ra,20(sp)
 3cc:	0060f809 	jalr	v1
 3d0:	00000000 	nop
 3d4:	8fbf0014 	lw	ra,20(sp)
 3d8:	27bd0018 	addiu	sp,sp,24
 3dc:	03e00008 	jr	ra
 3e0:	00000000 	nop
	...
