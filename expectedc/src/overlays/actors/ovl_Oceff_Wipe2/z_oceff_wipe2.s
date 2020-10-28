
build/src/overlays/actors/ovl_Oceff_Wipe2/z_oceff_wipe2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <OceffWipe2_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa5001c 	sw	a1,28(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	3c053dcc 	lui	a1,0x3dcc
  10:	34a5cccd 	ori	a1,a1,0xcccd
  14:	0c000000 	jal	0 <OceffWipe2_Init>
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
  58:	0c000000 	jal	0 <OceffWipe2_Init>
  5c:	acc9002c 	sw	t1,44(a2)
  60:	8fbf0014 	lw	ra,20(sp)
  64:	27bd0018 	addiu	sp,sp,24
  68:	03e00008 	jr	ra
  6c:	00000000 	nop

00000070 <OceffWipe2_Destroy>:
  70:	27bdffe0 	addiu	sp,sp,-32
  74:	afbf0014 	sw	ra,20(sp)
  78:	afa40020 	sw	a0,32(sp)
  7c:	8ca21c44 	lw	v0,7236(a1)
  80:	00a02025 	move	a0,a1
  84:	0c000000 	jal	0 <OceffWipe2_Init>
  88:	afa20018 	sw	v0,24(sp)
  8c:	3c0e0000 	lui	t6,0x0
  90:	85ce13c8 	lh	t6,5064(t6)
  94:	8fa20018 	lw	v0,24(sp)
  98:	51c00005 	beqzl	t6,b0 <OceffWipe2_Destroy+0x40>
  9c:	8fbf0014 	lw	ra,20(sp)
  a0:	904f0692 	lbu	t7,1682(v0)
  a4:	35f80040 	ori	t8,t7,0x40
  a8:	a0580692 	sb	t8,1682(v0)
  ac:	8fbf0014 	lw	ra,20(sp)
  b0:	27bd0020 	addiu	sp,sp,32
  b4:	03e00008 	jr	ra
  b8:	00000000 	nop

000000bc <OceffWipe2_Update>:
  bc:	27bdffe8 	addiu	sp,sp,-24
  c0:	afbf0014 	sw	ra,20(sp)
  c4:	84ae07a0 	lh	t6,1952(a1)
  c8:	8482014c 	lh	v0,332(a0)
  cc:	000e7880 	sll	t7,t6,0x2
  d0:	00afc021 	addu	t8,a1,t7
  d4:	8f190790 	lw	t9,1936(t8)
  d8:	28410064 	slti	at,v0,100
  dc:	244a0001 	addiu	t2,v0,1
  e0:	8f29005c 	lw	t1,92(t9)
  e4:	ac890024 	sw	t1,36(a0)
  e8:	8f280060 	lw	t0,96(t9)
  ec:	ac880028 	sw	t0,40(a0)
  f0:	8f290064 	lw	t1,100(t9)
  f4:	10200003 	beqz	at,104 <OceffWipe2_Update+0x48>
  f8:	ac89002c 	sw	t1,44(a0)
  fc:	10000003 	b	10c <OceffWipe2_Update+0x50>
 100:	a48a014c 	sh	t2,332(a0)
 104:	0c000000 	jal	0 <OceffWipe2_Init>
 108:	00000000 	nop
 10c:	8fbf0014 	lw	ra,20(sp)
 110:	27bd0018 	addiu	sp,sp,24
 114:	03e00008 	jr	ra
 118:	00000000 	nop

0000011c <OceffWipe2_Draw>:
 11c:	27bdff50 	addiu	sp,sp,-176
 120:	afbf003c 	sw	ra,60(sp)
 124:	afb10038 	sw	s1,56(sp)
 128:	afb00034 	sw	s0,52(sp)
 12c:	8cae009c 	lw	t6,156(a1)
 130:	27b8008c 	addiu	t8,sp,140
 134:	00a08825 	move	s1,a1
 138:	31cf00ff 	andi	t7,t6,0xff
 13c:	afaf00ac 	sw	t7,172(sp)
 140:	84b907a0 	lh	t9,1952(a1)
 144:	00803025 	move	a2,a0
 148:	27a4007c 	addiu	a0,sp,124
 14c:	00195080 	sll	t2,t9,0x2
 150:	00aa5821 	addu	t3,a1,t2
 154:	8d6c0790 	lw	t4,1936(t3)
 158:	8d8e005c 	lw	t6,92(t4)
 15c:	af0e0000 	sw	t6,0(t8)
 160:	8d8d0060 	lw	t5,96(t4)
 164:	af0d0004 	sw	t5,4(t8)
 168:	8d8e0064 	lw	t6,100(t4)
 16c:	af0e0008 	sw	t6,8(t8)
 170:	84af07a0 	lh	t7,1952(a1)
 174:	000fc880 	sll	t9,t7,0x2
 178:	00b95021 	addu	t2,a1,t9
 17c:	8d450790 	lw	a1,1936(t2)
 180:	0c000000 	jal	0 <OceffWipe2_Init>
 184:	afa600b0 	sw	a2,176(sp)
 188:	8fa600b0 	lw	a2,176(sp)
 18c:	84d0014c 	lh	s0,332(a2)
 190:	2a010020 	slti	at,s0,32
 194:	1020000c 	beqz	at,1c8 <OceffWipe2_Draw+0xac>
 198:	02002025 	move	a0,s0
 19c:	00042640 	sll	a0,a0,0x19
 1a0:	00042403 	sra	a0,a0,0x10
 1a4:	0c000000 	jal	0 <OceffWipe2_Init>
 1a8:	afa600b0 	sw	a2,176(sp)
 1ac:	3c010000 	lui	at,0x0
 1b0:	c424005c 	lwc1	$f4,92(at)
 1b4:	8fa600b0 	lw	a2,176(sp)
 1b8:	46040182 	mul.s	$f6,$f0,$f4
 1bc:	e7a600a4 	swc1	$f6,164(sp)
 1c0:	10000004 	b	1d4 <OceffWipe2_Draw+0xb8>
 1c4:	84d0014c 	lh	s0,332(a2)
 1c8:	3c010000 	lui	at,0x0
 1cc:	c4280060 	lwc1	$f8,96(at)
 1d0:	e7a800a4 	swc1	$f8,164(sp)
 1d4:	2a010050 	slti	at,s0,80
 1d8:	14200009 	bnez	at,200 <OceffWipe2_Draw+0xe4>
 1dc:	3c020000 	lui	v0,0x0
 1e0:	00101823 	negu	v1,s0
 1e4:	00600821 	move	at,v1
 1e8:	00031880 	sll	v1,v1,0x2
 1ec:	00611823 	subu	v1,v1,at
 1f0:	00031880 	sll	v1,v1,0x2
 1f4:	246304b0 	addiu	v1,v1,1200
 1f8:	10000002 	b	204 <OceffWipe2_Draw+0xe8>
 1fc:	306300ff 	andi	v1,v1,0xff
 200:	240300ff 	li	v1,255
 204:	3c010000 	lui	at,0x0
 208:	a023116f 	sb	v1,4463(at)
 20c:	9042116f 	lbu	v0,4463(v0)
 210:	3c010000 	lui	at,0x0
 214:	3c060000 	lui	a2,0x0
 218:	a022114f 	sb	v0,4431(at)
 21c:	3c010000 	lui	at,0x0
 220:	a022112f 	sb	v0,4399(at)
 224:	3c010000 	lui	at,0x0
 228:	a022111f 	sb	v0,4383(at)
 22c:	3c010000 	lui	at,0x0
 230:	a02210ff 	sb	v0,4351(at)
 234:	3c010000 	lui	at,0x0
 238:	a02210df 	sb	v0,4319(at)
 23c:	3c010000 	lui	at,0x0
 240:	a02210bf 	sb	v0,4287(at)
 244:	3c010000 	lui	at,0x0
 248:	a022109f 	sb	v0,4255(at)
 24c:	3c010000 	lui	at,0x0
 250:	a022107f 	sb	v0,4223(at)
 254:	3c010000 	lui	at,0x0
 258:	a022105f 	sb	v0,4191(at)
 25c:	3c010000 	lui	at,0x0
 260:	a022103f 	sb	v0,4159(at)
 264:	8e250000 	lw	a1,0(s1)
 268:	24c60020 	addiu	a2,a2,32
 26c:	27a40068 	addiu	a0,sp,104
 270:	24070186 	li	a3,390
 274:	0c000000 	jal	0 <OceffWipe2_Init>
 278:	00a08025 	move	s0,a1
 27c:	0c000000 	jal	0 <OceffWipe2_Init>
 280:	8e240000 	lw	a0,0(s1)
 284:	c7aa008c 	lwc1	$f10,140(sp)
 288:	c7b0007c 	lwc1	$f16,124(sp)
 28c:	c7a60094 	lwc1	$f6,148(sp)
 290:	c7a80084 	lwc1	$f8,132(sp)
 294:	46105300 	add.s	$f12,$f10,$f16
 298:	c7b20090 	lwc1	$f18,144(sp)
 29c:	c7a40080 	lwc1	$f4,128(sp)
 2a0:	46083280 	add.s	$f10,$f6,$f8
 2a4:	00003825 	move	a3,zero
 2a8:	46049380 	add.s	$f14,$f18,$f4
 2ac:	44065000 	mfc1	a2,$f10
 2b0:	0c000000 	jal	0 <OceffWipe2_Init>
 2b4:	00000000 	nop
 2b8:	3c010000 	lui	at,0x0
 2bc:	c42c0064 	lwc1	$f12,100(at)
 2c0:	24070001 	li	a3,1
 2c4:	44066000 	mfc1	a2,$f12
 2c8:	0c000000 	jal	0 <OceffWipe2_Init>
 2cc:	46006386 	mov.s	$f14,$f12
 2d0:	3c010001 	lui	at,0x1
 2d4:	34211da0 	ori	at,at,0x1da0
 2d8:	0c000000 	jal	0 <OceffWipe2_Init>
 2dc:	02212021 	addu	a0,s1,at
 2e0:	c7b000a4 	lwc1	$f16,164(sp)
 2e4:	44806000 	mtc1	zero,$f12
 2e8:	24070001 	li	a3,1
 2ec:	46008487 	neg.s	$f18,$f16
 2f0:	46006386 	mov.s	$f14,$f12
 2f4:	44069000 	mfc1	a2,$f18
 2f8:	0c000000 	jal	0 <OceffWipe2_Init>
 2fc:	00000000 	nop
 300:	8e0202d0 	lw	v0,720(s0)
 304:	3c18da38 	lui	t8,0xda38
 308:	37180003 	ori	t8,t8,0x3
 30c:	244b0008 	addiu	t3,v0,8
 310:	ae0b02d0 	sw	t3,720(s0)
 314:	ac580000 	sw	t8,0(v0)
 318:	8e240000 	lw	a0,0(s1)
 31c:	3c050000 	lui	a1,0x0
 320:	24a50034 	addiu	a1,a1,52
 324:	24060190 	li	a2,400
 328:	0c000000 	jal	0 <OceffWipe2_Init>
 32c:	afa20064 	sw	v0,100(sp)
 330:	8fa30064 	lw	v1,100(sp)
 334:	3c0dfa00 	lui	t5,0xfa00
 338:	240eaaff 	li	t6,-21761
 33c:	ac620004 	sw	v0,4(v1)
 340:	8e0202d0 	lw	v0,720(s0)
 344:	3c0aff64 	lui	t2,0xff64
 348:	354a0080 	ori	t2,t2,0x80
 34c:	244c0008 	addiu	t4,v0,8
 350:	ae0c02d0 	sw	t4,720(s0)
 354:	ac4d0000 	sw	t5,0(v0)
 358:	ac4e0004 	sw	t6,4(v0)
 35c:	8e0202d0 	lw	v0,720(s0)
 360:	3c19fb00 	lui	t9,0xfb00
 364:	3c180000 	lui	t8,0x0
 368:	244f0008 	addiu	t7,v0,8
 36c:	ae0f02d0 	sw	t7,720(s0)
 370:	ac590000 	sw	t9,0(v0)
 374:	ac4a0004 	sw	t2,4(v0)
 378:	8e0202d0 	lw	v0,720(s0)
 37c:	27181180 	addiu	t8,t8,4480
 380:	3c08de00 	lui	t0,0xde00
 384:	244b0008 	addiu	t3,v0,8
 388:	ae0b02d0 	sw	t3,720(s0)
 38c:	ac480000 	sw	t0,0(v0)
 390:	ac580004 	sw	t8,4(v0)
 394:	8e0202d0 	lw	v0,720(s0)
 398:	8fa900ac 	lw	t1,172(sp)
 39c:	240a0040 	li	t2,64
 3a0:	244c0008 	addiu	t4,v0,8
 3a4:	ae0c02d0 	sw	t4,720(s0)
 3a8:	ac480000 	sw	t0,0(v0)
 3ac:	8e240000 	lw	a0,0(s1)
 3b0:	00090823 	negu	at,t1
 3b4:	00013880 	sll	a3,at,0x2
 3b8:	00e13823 	subu	a3,a3,at
 3bc:	00093080 	sll	a2,t1,0x2
 3c0:	00073840 	sll	a3,a3,0x1
 3c4:	24190040 	li	t9,64
 3c8:	240f0001 	li	t7,1
 3cc:	240e0040 	li	t6,64
 3d0:	240d0040 	li	t5,64
 3d4:	00c93023 	subu	a2,a2,t1
 3d8:	00063040 	sll	a2,a2,0x1
 3dc:	afad0010 	sw	t5,16(sp)
 3e0:	afae0014 	sw	t6,20(sp)
 3e4:	afaf0018 	sw	t7,24(sp)
 3e8:	afb90024 	sw	t9,36(sp)
 3ec:	afa7001c 	sw	a3,28(sp)
 3f0:	afaa0028 	sw	t2,40(sp)
 3f4:	afa00020 	sw	zero,32(sp)
 3f8:	00002825 	move	a1,zero
 3fc:	0c000000 	jal	0 <OceffWipe2_Init>
 400:	afa20054 	sw	v0,84(sp)
 404:	8fa30054 	lw	v1,84(sp)
 408:	3c0c0000 	lui	t4,0x0
 40c:	258c1228 	addiu	t4,t4,4648
 410:	ac620004 	sw	v0,4(v1)
 414:	8e0202d0 	lw	v0,720(s0)
 418:	3c18de00 	lui	t8,0xde00
 41c:	3c060000 	lui	a2,0x0
 420:	244b0008 	addiu	t3,v0,8
 424:	ae0b02d0 	sw	t3,720(s0)
 428:	ac4c0004 	sw	t4,4(v0)
 42c:	ac580000 	sw	t8,0(v0)
 430:	8e250000 	lw	a1,0(s1)
 434:	24c60048 	addiu	a2,a2,72
 438:	27a40068 	addiu	a0,sp,104
 43c:	0c000000 	jal	0 <OceffWipe2_Init>
 440:	240701a1 	li	a3,417
 444:	8fbf003c 	lw	ra,60(sp)
 448:	8fb00034 	lw	s0,52(sp)
 44c:	8fb10038 	lw	s1,56(sp)
 450:	03e00008 	jr	ra
 454:	27bd00b0 	addiu	sp,sp,176
	...
