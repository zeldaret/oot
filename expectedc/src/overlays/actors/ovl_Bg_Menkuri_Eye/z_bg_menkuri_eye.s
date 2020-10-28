
build/src/overlays/actors/ovl_Bg_Menkuri_Eye/z_bg_menkuri_eye.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgMenkuriEye_Init>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afa5003c 	sw	a1,60(sp)
   8:	afbf0024 	sw	ra,36(sp)
   c:	afb00020 	sw	s0,32(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	0c000000 	jal	0 <BgMenkuriEye_Init>
  1c:	24a50054 	addiu	a1,a1,84
  20:	26050150 	addiu	a1,s0,336
  24:	afa5002c 	sw	a1,44(sp)
  28:	0c000000 	jal	0 <BgMenkuriEye_Init>
  2c:	8fa4003c 	lw	a0,60(sp)
  30:	3c070000 	lui	a3,0x0
  34:	260e0170 	addiu	t6,s0,368
  38:	8fa5002c 	lw	a1,44(sp)
  3c:	afae0010 	sw	t6,16(sp)
  40:	24e70044 	addiu	a3,a3,68
  44:	8fa4003c 	lw	a0,60(sp)
  48:	0c000000 	jal	0 <BgMenkuriEye_Init>
  4c:	02003025 	move	a2,s0
  50:	c6040024 	lwc1	$f4,36(s0)
  54:	8e19016c 	lw	t9,364(s0)
  58:	4600218d 	trunc.w.s	$f6,$f4
  5c:	44183000 	mfc1	t8,$f6
  60:	00000000 	nop
  64:	a7380030 	sh	t8,48(t9)
  68:	c6080028 	lwc1	$f8,40(s0)
  6c:	8e0a016c 	lw	t2,364(s0)
  70:	4600428d 	trunc.w.s	$f10,$f8
  74:	44095000 	mfc1	t1,$f10
  78:	00000000 	nop
  7c:	a5490032 	sh	t1,50(t2)
  80:	c610002c 	lwc1	$f16,44(s0)
  84:	8e0d016c 	lw	t5,364(s0)
  88:	4600848d 	trunc.w.s	$f18,$f16
  8c:	440c9000 	mfc1	t4,$f18
  90:	00000000 	nop
  94:	a5ac0034 	sh	t4,52(t5)
  98:	8e03016c 	lw	v1,364(s0)
  9c:	846e002e 	lh	t6,46(v1)
  a0:	a46e0036 	sh	t6,54(v1)
  a4:	8605001c 	lh	a1,28(s0)
  a8:	0c000000 	jal	0 <BgMenkuriEye_Init>
  ac:	8fa4003c 	lw	a0,60(sp)
  b0:	14400003 	bnez	v0,c0 <BgMenkuriEye_Init+0xc0>
  b4:	240fffff 	li	t7,-1
  b8:	3c010000 	lui	at,0x0
  bc:	ac200000 	sw	zero,0(at)
  c0:	a60f014c 	sh	t7,332(s0)
  c4:	8fbf0024 	lw	ra,36(sp)
  c8:	8fb00020 	lw	s0,32(sp)
  cc:	27bd0038 	addiu	sp,sp,56
  d0:	03e00008 	jr	ra
  d4:	00000000 	nop

000000d8 <BgMenkuriEye_Destroy>:
  d8:	27bdffe8 	addiu	sp,sp,-24
  dc:	00803025 	move	a2,a0
  e0:	afbf0014 	sw	ra,20(sp)
  e4:	00a02025 	move	a0,a1
  e8:	0c000000 	jal	0 <BgMenkuriEye_Init>
  ec:	24c50150 	addiu	a1,a2,336
  f0:	8fbf0014 	lw	ra,20(sp)
  f4:	27bd0018 	addiu	sp,sp,24
  f8:	03e00008 	jr	ra
  fc:	00000000 	nop

00000100 <BgMenkuriEye_Update>:
 100:	27bdffe0 	addiu	sp,sp,-32
 104:	afb00018 	sw	s0,24(sp)
 108:	00808025 	move	s0,a0
 10c:	afbf001c 	sw	ra,28(sp)
 110:	afa50024 	sw	a1,36(sp)
 114:	00a02025 	move	a0,a1
 118:	0c000000 	jal	0 <BgMenkuriEye_Init>
 11c:	8605001c 	lh	a1,28(s0)
 120:	54400012 	bnezl	v0,16c <BgMenkuriEye_Update+0x6c>
 124:	92040161 	lbu	a0,353(s0)
 128:	8602014c 	lh	v0,332(s0)
 12c:	2401ffff 	li	at,-1
 130:	5041000e 	beql	v0,at,16c <BgMenkuriEye_Update+0x6c>
 134:	92040161 	lbu	a0,353(s0)
 138:	10400003 	beqz	v0,148 <BgMenkuriEye_Update+0x48>
 13c:	244effff 	addiu	t6,v0,-1
 140:	a60e014c 	sh	t6,332(s0)
 144:	8602014c 	lh	v0,332(s0)
 148:	14400007 	bnez	v0,168 <BgMenkuriEye_Update+0x68>
 14c:	3c060000 	lui	a2,0x0
 150:	240fffff 	li	t7,-1
 154:	24c60000 	addiu	a2,a2,0
 158:	a60f014c 	sh	t7,332(s0)
 15c:	8cd80000 	lw	t8,0(a2)
 160:	2719ffff 	addiu	t9,t8,-1
 164:	acd90000 	sw	t9,0(a2)
 168:	92040161 	lbu	a0,353(s0)
 16c:	3c060000 	lui	a2,0x0
 170:	24c60000 	addiu	a2,a2,0
 174:	30880002 	andi	t0,a0,0x2
 178:	5100002d 	beqzl	t0,230 <BgMenkuriEye_Update+0x130>
 17c:	8609014c 	lh	t1,332(s0)
 180:	8e090158 	lw	t1,344(s0)
 184:	860b00b6 	lh	t3,182(s0)
 188:	852a0032 	lh	t2,50(t1)
 18c:	014b1023 	subu	v0,t2,t3
 190:	00021400 	sll	v0,v0,0x10
 194:	00021403 	sra	v0,v0,0x10
 198:	04400003 	bltz	v0,1a8 <BgMenkuriEye_Update+0xa8>
 19c:	00021823 	negu	v1,v0
 1a0:	10000001 	b	1a8 <BgMenkuriEye_Update+0xa8>
 1a4:	00401825 	move	v1,v0
 1a8:	28615001 	slti	at,v1,20481
 1ac:	54200020 	bnezl	at,230 <BgMenkuriEye_Update+0x130>
 1b0:	8609014c 	lh	t1,332(s0)
 1b4:	860d014c 	lh	t5,332(s0)
 1b8:	308cfffd 	andi	t4,a0,0xfffd
 1bc:	2401ffff 	li	at,-1
 1c0:	15a1000f 	bne	t5,at,200 <BgMenkuriEye_Update+0x100>
 1c4:	a20c0161 	sb	t4,353(s0)
 1c8:	02002025 	move	a0,s0
 1cc:	0c000000 	jal	0 <BgMenkuriEye_Init>
 1d0:	24053847 	li	a1,14407
 1d4:	3c060000 	lui	a2,0x0
 1d8:	24c60000 	addiu	a2,a2,0
 1dc:	8cce0000 	lw	t6,0(a2)
 1e0:	24180004 	li	t8,4
 1e4:	25c20001 	addiu	v0,t6,1
 1e8:	28410005 	slti	at,v0,5
 1ec:	14200003 	bnez	at,1fc <BgMenkuriEye_Update+0xfc>
 1f0:	acc20000 	sw	v0,0(a2)
 1f4:	10000002 	b	200 <BgMenkuriEye_Update+0x100>
 1f8:	acd80000 	sw	t8,0(a2)
 1fc:	acc20000 	sw	v0,0(a2)
 200:	241901a0 	li	t9,416
 204:	a619014c 	sh	t9,332(s0)
 208:	8cc80000 	lw	t0,0(a2)
 20c:	24010004 	li	at,4
 210:	8fa40024 	lw	a0,36(sp)
 214:	55010006 	bnel	t0,at,230 <BgMenkuriEye_Update+0x130>
 218:	8609014c 	lh	t1,332(s0)
 21c:	0c000000 	jal	0 <BgMenkuriEye_Init>
 220:	8605001c 	lh	a1,28(s0)
 224:	0c000000 	jal	0 <BgMenkuriEye_Init>
 228:	24044802 	li	a0,18434
 22c:	8609014c 	lh	t1,332(s0)
 230:	2401ffff 	li	at,-1
 234:	8fa40024 	lw	a0,36(sp)
 238:	15210005 	bne	t1,at,250 <BgMenkuriEye_Update+0x150>
 23c:	26060150 	addiu	a2,s0,336
 240:	3c010001 	lui	at,0x1
 244:	34211e60 	ori	at,at,0x1e60
 248:	0c000000 	jal	0 <BgMenkuriEye_Init>
 24c:	00812821 	addu	a1,a0,at
 250:	02002025 	move	a0,s0
 254:	0c000000 	jal	0 <BgMenkuriEye_Init>
 258:	24050000 	li	a1,0
 25c:	8fbf001c 	lw	ra,28(sp)
 260:	8fb00018 	lw	s0,24(sp)
 264:	27bd0020 	addiu	sp,sp,32
 268:	03e00008 	jr	ra
 26c:	00000000 	nop

00000270 <BgMenkuriEye_Draw>:
 270:	27bdffa8 	addiu	sp,sp,-88
 274:	afbf001c 	sw	ra,28(sp)
 278:	afb10018 	sw	s1,24(sp)
 27c:	afb00014 	sw	s0,20(sp)
 280:	afa5005c 	sw	a1,92(sp)
 284:	8ca50000 	lw	a1,0(a1)
 288:	00808025 	move	s0,a0
 28c:	3c060000 	lui	a2,0x0
 290:	24c60000 	addiu	a2,a2,0
 294:	27a4003c 	addiu	a0,sp,60
 298:	24070124 	li	a3,292
 29c:	0c000000 	jal	0 <BgMenkuriEye_Init>
 2a0:	00a08825 	move	s1,a1
 2a4:	8faf005c 	lw	t7,92(sp)
 2a8:	0c000000 	jal	0 <BgMenkuriEye_Init>
 2ac:	8de40000 	lw	a0,0(t7)
 2b0:	8fa4005c 	lw	a0,92(sp)
 2b4:	0c000000 	jal	0 <BgMenkuriEye_Init>
 2b8:	8605001c 	lh	a1,28(s0)
 2bc:	1040000a 	beqz	v0,2e8 <BgMenkuriEye_Draw+0x78>
 2c0:	00003825 	move	a3,zero
 2c4:	8e2202d0 	lw	v0,720(s1)
 2c8:	3c08c800 	lui	t0,0xc800
 2cc:	350800ff 	ori	t0,t0,0xff
 2d0:	24580008 	addiu	t8,v0,8
 2d4:	ae3802d0 	sw	t8,720(s1)
 2d8:	3c19fb00 	lui	t9,0xfb00
 2dc:	ac590000 	sw	t9,0(v0)
 2e0:	10000015 	b	338 <BgMenkuriEye_Draw+0xc8>
 2e4:	ac480004 	sw	t0,4(v0)
 2e8:	8609014c 	lh	t1,332(s0)
 2ec:	2401ffff 	li	at,-1
 2f0:	3c0efb00 	lui	t6,0xfb00
 2f4:	5521000a 	bnel	t1,at,320 <BgMenkuriEye_Draw+0xb0>
 2f8:	8e2202d0 	lw	v0,720(s1)
 2fc:	8e2202d0 	lw	v0,720(s1)
 300:	3c0bfb00 	lui	t3,0xfb00
 304:	3c0cc800 	lui	t4,0xc800
 308:	244a0008 	addiu	t2,v0,8
 30c:	ae2a02d0 	sw	t2,720(s1)
 310:	ac4c0004 	sw	t4,4(v0)
 314:	10000008 	b	338 <BgMenkuriEye_Draw+0xc8>
 318:	ac4b0000 	sw	t3,0(v0)
 31c:	8e2202d0 	lw	v0,720(s1)
 320:	3c0fc800 	lui	t7,0xc800
 324:	35ef00ff 	ori	t7,t7,0xff
 328:	244d0008 	addiu	t5,v0,8
 32c:	ae2d02d0 	sw	t5,720(s1)
 330:	ac4f0004 	sw	t7,4(v0)
 334:	ac4e0000 	sw	t6,0(v0)
 338:	c60c0024 	lwc1	$f12,36(s0)
 33c:	c60e0028 	lwc1	$f14,40(s0)
 340:	0c000000 	jal	0 <BgMenkuriEye_Init>
 344:	8e06002c 	lw	a2,44(s0)
 348:	86040030 	lh	a0,48(s0)
 34c:	86050032 	lh	a1,50(s0)
 350:	86060034 	lh	a2,52(s0)
 354:	0c000000 	jal	0 <BgMenkuriEye_Init>
 358:	24070001 	li	a3,1
 35c:	c60c0050 	lwc1	$f12,80(s0)
 360:	c60e0054 	lwc1	$f14,84(s0)
 364:	8e060058 	lw	a2,88(s0)
 368:	0c000000 	jal	0 <BgMenkuriEye_Init>
 36c:	24070001 	li	a3,1
 370:	8e2202d0 	lw	v0,720(s1)
 374:	3c19da38 	lui	t9,0xda38
 378:	37390003 	ori	t9,t9,0x3
 37c:	24580008 	addiu	t8,v0,8
 380:	ae3802d0 	sw	t8,720(s1)
 384:	ac590000 	sw	t9,0(v0)
 388:	8fa8005c 	lw	t0,92(sp)
 38c:	3c050000 	lui	a1,0x0
 390:	24a50018 	addiu	a1,a1,24
 394:	2406014b 	li	a2,331
 398:	00408025 	move	s0,v0
 39c:	0c000000 	jal	0 <BgMenkuriEye_Init>
 3a0:	8d040000 	lw	a0,0(t0)
 3a4:	ae020004 	sw	v0,4(s0)
 3a8:	8e2202d0 	lw	v0,720(s1)
 3ac:	3c0b0000 	lui	t3,0x0
 3b0:	256b0000 	addiu	t3,t3,0
 3b4:	24490008 	addiu	t1,v0,8
 3b8:	ae2902d0 	sw	t1,720(s1)
 3bc:	3c0ade00 	lui	t2,0xde00
 3c0:	ac4a0000 	sw	t2,0(v0)
 3c4:	ac4b0004 	sw	t3,4(v0)
 3c8:	8fac005c 	lw	t4,92(sp)
 3cc:	3c060000 	lui	a2,0x0
 3d0:	24c60030 	addiu	a2,a2,48
 3d4:	27a4003c 	addiu	a0,sp,60
 3d8:	2407014f 	li	a3,335
 3dc:	0c000000 	jal	0 <BgMenkuriEye_Init>
 3e0:	8d850000 	lw	a1,0(t4)
 3e4:	8fbf001c 	lw	ra,28(sp)
 3e8:	8fb00014 	lw	s0,20(sp)
 3ec:	8fb10018 	lw	s1,24(sp)
 3f0:	03e00008 	jr	ra
 3f4:	27bd0058 	addiu	sp,sp,88
	...
