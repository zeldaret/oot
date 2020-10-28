
build/src/code/z_sample.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Sample_HandleStateChange>:
   0:	948e0020 	lhu	t6,32(a0)
   4:	2401efff 	li	at,-4097
   8:	3c180000 	lui	t8,0x0
   c:	01c17827 	nor	t7,t6,at
  10:	15e00006 	bnez	t7,2c <Sample_HandleStateChange+0x2c>
  14:	27180000 	addiu	t8,t8,0
  18:	3c190001 	lui	t9,0x1
  1c:	37392518 	ori	t9,t9,0x2518
  20:	ac990010 	sw	t9,16(a0)
  24:	ac98000c 	sw	t8,12(a0)
  28:	ac800098 	sw	zero,152(a0)
  2c:	03e00008 	jr	ra
  30:	00000000 	nop

00000034 <Sample_Draw>:
  34:	27bdff90 	addiu	sp,sp,-112
  38:	afbf002c 	sw	ra,44(sp)
  3c:	afb00028 	sw	s0,40(sp)
  40:	afa40070 	sw	a0,112(sp)
  44:	8c900000 	lw	s0,0(a0)
  48:	3c060000 	lui	a2,0x0
  4c:	24c60000 	addiu	a2,a2,0
  50:	27a40054 	addiu	a0,sp,84
  54:	2407003e 	li	a3,62
  58:	0c000000 	jal	0 <Sample_HandleStateChange>
  5c:	02002825 	move	a1,s0
  60:	8e0202c0 	lw	v0,704(s0)
  64:	3c18db06 	lui	t8,0xdb06
  68:	3c08db06 	lui	t0,0xdb06
  6c:	244f0008 	addiu	t7,v0,8
  70:	ae0f02c0 	sw	t7,704(s0)
  74:	ac400004 	sw	zero,4(v0)
  78:	ac580000 	sw	t8,0(v0)
  7c:	8e0202c0 	lw	v0,704(s0)
  80:	35080004 	ori	t0,t0,0x4
  84:	02002025 	move	a0,s0
  88:	24590008 	addiu	t9,v0,8
  8c:	ae1902c0 	sw	t9,704(s0)
  90:	ac480000 	sw	t0,0(v0)
  94:	8fa90070 	lw	t1,112(sp)
  98:	00002825 	move	a1,zero
  9c:	00003025 	move	a2,zero
  a0:	8d2a00a4 	lw	t2,164(t1)
  a4:	00003825 	move	a3,zero
  a8:	0c000000 	jal	0 <Sample_HandleStateChange>
  ac:	ac4a0004 	sw	t2,4(v0)
  b0:	8fa40070 	lw	a0,112(sp)
  b4:	240b0007 	li	t3,7
  b8:	2405000f 	li	a1,15
  bc:	ac8b01c8 	sw	t3,456(a0)
  c0:	0c000000 	jal	0 <Sample_HandleStateChange>
  c4:	248400a8 	addiu	a0,a0,168
  c8:	02002025 	move	a0,s0
  cc:	0c000000 	jal	0 <Sample_HandleStateChange>
  d0:	24050040 	li	a1,64
  d4:	3c030000 	lui	v1,0x0
  d8:	8c630000 	lw	v1,0(v1)
  dc:	afa20048 	sw	v0,72(sp)
  e0:	3c013f80 	lui	at,0x3f80
  e4:	44815000 	mtc1	at,$f10
  e8:	846e0122 	lh	t6,290(v1)
  ec:	846d0120 	lh	t5,288(v1)
  f0:	846c011e 	lh	t4,286(v1)
  f4:	e7aa0010 	swc1	$f10,16(sp)
  f8:	846f0124 	lh	t7,292(v1)
  fc:	448c2000 	mtc1	t4,$f4
 100:	448d3000 	mtc1	t5,$f6
 104:	448f8000 	mtc1	t7,$f16
 108:	46802120 	cvt.s.w	$f4,$f4
 10c:	448e4000 	mtc1	t6,$f8
 110:	00402025 	move	a0,v0
 114:	468084a0 	cvt.s.w	$f18,$f16
 118:	44052000 	mfc1	a1,$f4
 11c:	468031a0 	cvt.s.w	$f6,$f6
 120:	e7b20014 	swc1	$f18,20(sp)
 124:	84780126 	lh	t8,294(v1)
 128:	44982000 	mtc1	t8,$f4
 12c:	44063000 	mfc1	a2,$f6
 130:	46804220 	cvt.s.w	$f8,$f8
 134:	468021a0 	cvt.s.w	$f6,$f4
 138:	44074000 	mfc1	a3,$f8
 13c:	e7a60018 	swc1	$f6,24(sp)
 140:	84790128 	lh	t9,296(v1)
 144:	44994000 	mtc1	t9,$f8
 148:	00000000 	nop
 14c:	468042a0 	cvt.s.w	$f10,$f8
 150:	0c000000 	jal	0 <Sample_HandleStateChange>
 154:	e7aa001c 	swc1	$f10,28(sp)
 158:	8e0202c0 	lw	v0,704(s0)
 15c:	3c09da38 	lui	t1,0xda38
 160:	35290003 	ori	t1,t1,0x3
 164:	24480008 	addiu	t0,v0,8
 168:	ae0802c0 	sw	t0,704(s0)
 16c:	ac490000 	sw	t1,0(v0)
 170:	8faa0048 	lw	t2,72(sp)
 174:	240500ff 	li	a1,255
 178:	240600ff 	li	a2,255
 17c:	ac4a0004 	sw	t2,4(v0)
 180:	8e0402c0 	lw	a0,704(s0)
 184:	afa00018 	sw	zero,24(sp)
 188:	afa00014 	sw	zero,20(sp)
 18c:	afa00010 	sw	zero,16(sp)
 190:	0c000000 	jal	0 <Sample_HandleStateChange>
 194:	240700ff 	li	a3,255
 198:	ae0202c0 	sw	v0,704(s0)
 19c:	0c000000 	jal	0 <Sample_HandleStateChange>
 1a0:	02002025 	move	a0,s0
 1a4:	8e0202c0 	lw	v0,704(s0)
 1a8:	3c0ce300 	lui	t4,0xe300
 1ac:	358c0a01 	ori	t4,t4,0xa01
 1b0:	244b0008 	addiu	t3,v0,8
 1b4:	ae0b02c0 	sw	t3,704(s0)
 1b8:	ac400004 	sw	zero,4(v0)
 1bc:	ac4c0000 	sw	t4,0(v0)
 1c0:	8e0202c0 	lw	v0,704(s0)
 1c4:	3c0ee200 	lui	t6,0xe200
 1c8:	3c0f0055 	lui	t7,0x55
 1cc:	244d0008 	addiu	t5,v0,8
 1d0:	ae0d02c0 	sw	t5,704(s0)
 1d4:	35ef2078 	ori	t7,t7,0x2078
 1d8:	35ce001c 	ori	t6,t6,0x1c
 1dc:	ac4e0000 	sw	t6,0(v0)
 1e0:	ac4f0004 	sw	t7,4(v0)
 1e4:	8e0202c0 	lw	v0,704(s0)
 1e8:	3c19fcff 	lui	t9,0xfcff
 1ec:	3c08fffd 	lui	t0,0xfffd
 1f0:	24580008 	addiu	t8,v0,8
 1f4:	ae1802c0 	sw	t8,704(s0)
 1f8:	3508f6fb 	ori	t0,t0,0xf6fb
 1fc:	3739ffff 	ori	t9,t9,0xffff
 200:	ac590000 	sw	t9,0(v0)
 204:	ac480004 	sw	t0,4(v0)
 208:	8e0202c0 	lw	v0,704(s0)
 20c:	3c0bffff 	lui	t3,0xffff
 210:	3c0afa00 	lui	t2,0xfa00
 214:	24490008 	addiu	t1,v0,8
 218:	ae0902c0 	sw	t1,704(s0)
 21c:	3c060000 	lui	a2,0x0
 220:	24c60010 	addiu	a2,a2,16
 224:	27a40054 	addiu	a0,sp,84
 228:	02002825 	move	a1,s0
 22c:	2407006f 	li	a3,111
 230:	ac4b0004 	sw	t3,4(v0)
 234:	0c000000 	jal	0 <Sample_HandleStateChange>
 238:	ac4a0000 	sw	t2,0(v0)
 23c:	8fbf002c 	lw	ra,44(sp)
 240:	8fb00028 	lw	s0,40(sp)
 244:	27bd0070 	addiu	sp,sp,112
 248:	03e00008 	jr	ra
 24c:	00000000 	nop

00000250 <Sample_Main>:
 250:	27bdffe8 	addiu	sp,sp,-24
 254:	afbf0014 	sw	ra,20(sp)
 258:	0c000000 	jal	0 <Sample_HandleStateChange>
 25c:	afa40018 	sw	a0,24(sp)
 260:	0c000000 	jal	0 <Sample_HandleStateChange>
 264:	8fa40018 	lw	a0,24(sp)
 268:	8fbf0014 	lw	ra,20(sp)
 26c:	27bd0018 	addiu	sp,sp,24
 270:	03e00008 	jr	ra
 274:	00000000 	nop

00000278 <Sample_Destroy>:
 278:	03e00008 	jr	ra
 27c:	afa40000 	sw	a0,0(sp)

00000280 <Sample_SetupView>:
 280:	27bdffa0 	addiu	sp,sp,-96
 284:	afb00018 	sw	s0,24(sp)
 288:	afbf001c 	sw	ra,28(sp)
 28c:	8c850000 	lw	a1,0(a0)
 290:	249000a8 	addiu	s0,a0,168
 294:	0c000000 	jal	0 <Sample_HandleStateChange>
 298:	02002025 	move	a0,s0
 29c:	240e00f0 	li	t6,240
 2a0:	240f0140 	li	t7,320
 2a4:	afaf0054 	sw	t7,84(sp)
 2a8:	afae004c 	sw	t6,76(sp)
 2ac:	afa00048 	sw	zero,72(sp)
 2b0:	afa00050 	sw	zero,80(sp)
 2b4:	02002025 	move	a0,s0
 2b8:	0c000000 	jal	0 <Sample_HandleStateChange>
 2bc:	27a50048 	addiu	a1,sp,72
 2c0:	02002025 	move	a0,s0
 2c4:	3c054270 	lui	a1,0x4270
 2c8:	3c064120 	lui	a2,0x4120
 2cc:	0c000000 	jal	0 <Sample_HandleStateChange>
 2d0:	3c074648 	lui	a3,0x4648
 2d4:	44800000 	mtc1	zero,$f0
 2d8:	3c010000 	lui	at,0x0
 2dc:	c4240040 	lwc1	$f4,64(at)
 2e0:	3c013f80 	lui	at,0x3f80
 2e4:	44813000 	mtc1	at,$f6
 2e8:	02002025 	move	a0,s0
 2ec:	27a5003c 	addiu	a1,sp,60
 2f0:	27a60030 	addiu	a2,sp,48
 2f4:	27a70024 	addiu	a3,sp,36
 2f8:	e7a0003c 	swc1	$f0,60(sp)
 2fc:	e7a00040 	swc1	$f0,64(sp)
 300:	e7a00030 	swc1	$f0,48(sp)
 304:	e7a00034 	swc1	$f0,52(sp)
 308:	e7a00038 	swc1	$f0,56(sp)
 30c:	e7a00024 	swc1	$f0,36(sp)
 310:	e7a0002c 	swc1	$f0,44(sp)
 314:	e7a40044 	swc1	$f4,68(sp)
 318:	0c000000 	jal	0 <Sample_HandleStateChange>
 31c:	e7a60028 	swc1	$f6,40(sp)
 320:	8fbf001c 	lw	ra,28(sp)
 324:	8fb00018 	lw	s0,24(sp)
 328:	27bd0060 	addiu	sp,sp,96
 32c:	03e00008 	jr	ra
 330:	00000000 	nop

00000334 <Sample_LoadTitleStatic>:
 334:	3c0e0000 	lui	t6,0x0
 338:	3c0f0000 	lui	t7,0x0
 33c:	27bdffd8 	addiu	sp,sp,-40
 340:	25ef0000 	addiu	t7,t7,0
 344:	25ce0000 	addiu	t6,t6,0
 348:	afbf001c 	sw	ra,28(sp)
 34c:	01cf2823 	subu	a1,t6,t7
 350:	3c060000 	lui	a2,0x0
 354:	afa40028 	sw	a0,40(sp)
 358:	24c60020 	addiu	a2,a2,32
 35c:	afa50020 	sw	a1,32(sp)
 360:	0c000000 	jal	0 <Sample_HandleStateChange>
 364:	240700a3 	li	a3,163
 368:	8fb80028 	lw	t8,40(sp)
 36c:	3c050000 	lui	a1,0x0
 370:	3c070000 	lui	a3,0x0
 374:	241900a4 	li	t9,164
 378:	af0200a4 	sw	v0,164(t8)
 37c:	afb90010 	sw	t9,16(sp)
 380:	8fa60020 	lw	a2,32(sp)
 384:	24e70030 	addiu	a3,a3,48
 388:	24a50000 	addiu	a1,a1,0
 38c:	0c000000 	jal	0 <Sample_HandleStateChange>
 390:	00402025 	move	a0,v0
 394:	8fbf001c 	lw	ra,28(sp)
 398:	27bd0028 	addiu	sp,sp,40
 39c:	03e00008 	jr	ra
 3a0:	00000000 	nop

000003a4 <Sample_Init>:
 3a4:	27bdffe8 	addiu	sp,sp,-24
 3a8:	afbf0014 	sw	ra,20(sp)
 3ac:	3c0e0000 	lui	t6,0x0
 3b0:	3c0f0000 	lui	t7,0x0
 3b4:	3c020000 	lui	v0,0x0
 3b8:	25ce0000 	addiu	t6,t6,0
 3bc:	25ef0000 	addiu	t7,t7,0
 3c0:	24420000 	addiu	v0,v0,0
 3c4:	ac8e0004 	sw	t6,4(a0)
 3c8:	ac8f0008 	sw	t7,8(a0)
 3cc:	8c590000 	lw	t9,0(v0)
 3d0:	24180001 	li	t8,1
 3d4:	a7380110 	sh	t8,272(t9)
 3d8:	0c000000 	jal	0 <Sample_HandleStateChange>
 3dc:	afa40018 	sw	a0,24(sp)
 3e0:	0c000000 	jal	0 <Sample_HandleStateChange>
 3e4:	8fa40018 	lw	a0,24(sp)
 3e8:	3c020000 	lui	v0,0x0
 3ec:	24420000 	addiu	v0,v0,0
 3f0:	8c480000 	lw	t0,0(v0)
 3f4:	a500011e 	sh	zero,286(t0)
 3f8:	8c490000 	lw	t1,0(v0)
 3fc:	a5200120 	sh	zero,288(t1)
 400:	8c4a0000 	lw	t2,0(v0)
 404:	a5400122 	sh	zero,290(t2)
 408:	8c4b0000 	lw	t3,0(v0)
 40c:	a5600124 	sh	zero,292(t3)
 410:	8c4c0000 	lw	t4,0(v0)
 414:	a5800126 	sh	zero,294(t4)
 418:	8c4d0000 	lw	t5,0(v0)
 41c:	a5a00128 	sh	zero,296(t5)
 420:	8fbf0014 	lw	ra,20(sp)
 424:	27bd0018 	addiu	sp,sp,24
 428:	03e00008 	jr	ra
 42c:	00000000 	nop
