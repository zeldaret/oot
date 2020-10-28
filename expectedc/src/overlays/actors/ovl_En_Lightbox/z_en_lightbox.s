
build/src/overlays/actors/ovl_En_Lightbox/z_en_lightbox.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnLightbox_Init>:
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa50044 	sw	a1,68(sp)
  10:	afa0003c 	sw	zero,60(sp)
  14:	8482001c 	lh	v0,28(a0)
  18:	00808025 	move	s0,a0
  1c:	02002025 	move	a0,s0
  20:	1040000c 	beqz	v0,54 <EnLightbox_Init+0x54>
  24:	3c053ccc 	lui	a1,0x3ccc
  28:	24010001 	li	at,1
  2c:	1041000d 	beq	v0,at,64 <EnLightbox_Init+0x64>
  30:	02002025 	move	a0,s0
  34:	24010002 	li	at,2
  38:	1041000f 	beq	v0,at,78 <EnLightbox_Init+0x78>
  3c:	02002025 	move	a0,s0
  40:	24010003 	li	at,3
  44:	10410011 	beq	v0,at,8c <EnLightbox_Init+0x8c>
  48:	02002025 	move	a0,s0
  4c:	10000013 	b	9c <EnLightbox_Init+0x9c>
  50:	8e0f0024 	lw	t7,36(s0)
  54:	0c000000 	jal	0 <EnLightbox_Init>
  58:	34a5cccd 	ori	a1,a1,0xcccd
  5c:	1000000f 	b	9c <EnLightbox_Init+0x9c>
  60:	8e0f0024 	lw	t7,36(s0)
  64:	3c053d4c 	lui	a1,0x3d4c
  68:	0c000000 	jal	0 <EnLightbox_Init>
  6c:	34a5cccd 	ori	a1,a1,0xcccd
  70:	1000000a 	b	9c <EnLightbox_Init+0x9c>
  74:	8e0f0024 	lw	t7,36(s0)
  78:	3c053d99 	lui	a1,0x3d99
  7c:	0c000000 	jal	0 <EnLightbox_Init>
  80:	34a5999a 	ori	a1,a1,0x999a
  84:	10000005 	b	9c <EnLightbox_Init+0x9c>
  88:	8e0f0024 	lw	t7,36(s0)
  8c:	3c053dcc 	lui	a1,0x3dcc
  90:	0c000000 	jal	0 <EnLightbox_Init>
  94:	34a5cccd 	ori	a1,a1,0xcccd
  98:	8e0f0024 	lw	t7,36(s0)
  9c:	8e0e0028 	lw	t6,40(s0)
  a0:	2418001e 	li	t8,30
  a4:	ae0f0038 	sw	t7,56(s0)
  a8:	8e0f002c 	lw	t7,44(s0)
  ac:	24190032 	li	t9,50
  b0:	3c060000 	lui	a2,0x0
  b4:	a61800a8 	sh	t8,168(s0)
  b8:	a61900aa 	sh	t9,170(s0)
  bc:	24c60000 	addiu	a2,a2,0
  c0:	260400b4 	addiu	a0,s0,180
  c4:	24050000 	li	a1,0
  c8:	3c0740c0 	lui	a3,0x40c0
  cc:	ae0e003c 	sw	t6,60(s0)
  d0:	0c000000 	jal	0 <EnLightbox_Init>
  d4:	ae0f0040 	sw	t7,64(s0)
  d8:	3c01c000 	lui	at,0xc000
  dc:	44812000 	mtc1	at,$f4
  e0:	3c040000 	lui	a0,0x0
  e4:	a2000160 	sb	zero,352(s0)
  e8:	ae00015c 	sw	zero,348(s0)
  ec:	a200001f 	sb	zero,31(s0)
  f0:	24840000 	addiu	a0,a0,0
  f4:	27a5003c 	addiu	a1,sp,60
  f8:	0c000000 	jal	0 <EnLightbox_Init>
  fc:	e604006c 	swc1	$f4,108(s0)
 100:	8fa40044 	lw	a0,68(sp)
 104:	02003025 	move	a2,s0
 108:	8fa7003c 	lw	a3,60(sp)
 10c:	0c000000 	jal	0 <EnLightbox_Init>
 110:	24850810 	addiu	a1,a0,2064
 114:	ae02014c 	sw	v0,332(s0)
 118:	8fbf001c 	lw	ra,28(sp)
 11c:	8fb00018 	lw	s0,24(sp)
 120:	27bd0040 	addiu	sp,sp,64
 124:	03e00008 	jr	ra
 128:	00000000 	nop

0000012c <EnLightbox_Destroy>:
 12c:	27bdffe8 	addiu	sp,sp,-24
 130:	afa40018 	sw	a0,24(sp)
 134:	8fae0018 	lw	t6,24(sp)
 138:	afbf0014 	sw	ra,20(sp)
 13c:	00a02025 	move	a0,a1
 140:	24a50810 	addiu	a1,a1,2064
 144:	0c000000 	jal	0 <EnLightbox_Init>
 148:	8dc6014c 	lw	a2,332(t6)
 14c:	8fbf0014 	lw	ra,20(sp)
 150:	27bd0018 	addiu	sp,sp,24
 154:	03e00008 	jr	ra
 158:	00000000 	nop

0000015c <EnLightbox_Update>:
 15c:	27bdffd8 	addiu	sp,sp,-40
 160:	afbf0024 	sw	ra,36(sp)
 164:	afb00020 	sw	s0,32(sp)
 168:	afa5002c 	sw	a1,44(sp)
 16c:	848e0162 	lh	t6,354(a0)
 170:	00808025 	move	s0,a0
 174:	51c00008 	beqzl	t6,198 <EnLightbox_Update+0x3c>
 178:	02002025 	move	a0,s0
 17c:	0c000000 	jal	0 <EnLightbox_Init>
 180:	00000000 	nop
 184:	1040007c 	beqz	v0,378 <EnLightbox_Update+0x21c>
 188:	00000000 	nop
 18c:	1000007a 	b	378 <EnLightbox_Update+0x21c>
 190:	a6000162 	sh	zero,354(s0)
 194:	02002025 	move	a0,s0
 198:	0c000000 	jal	0 <EnLightbox_Init>
 19c:	8fa5002c 	lw	a1,44(sp)
 1a0:	50400006 	beqzl	v0,1bc <EnLightbox_Update+0x60>
 1a4:	44800000 	mtc1	zero,$f0
 1a8:	860f0162 	lh	t7,354(s0)
 1ac:	25f80001 	addiu	t8,t7,1
 1b0:	10000071 	b	378 <EnLightbox_Update+0x21c>
 1b4:	a6180162 	sh	t8,354(s0)
 1b8:	44800000 	mtc1	zero,$f0
 1bc:	c6040068 	lwc1	$f4,104(s0)
 1c0:	46040032 	c.eq.s	$f0,$f4
 1c4:	00000000 	nop
 1c8:	4503001d 	bc1tl	240 <EnLightbox_Update+0xe4>
 1cc:	960f0088 	lhu	t7,136(s0)
 1d0:	96190088 	lhu	t9,136(s0)
 1d4:	3c070000 	lui	a3,0x0
 1d8:	24e70000 	addiu	a3,a3,0
 1dc:	33280008 	andi	t0,t9,0x8
 1e0:	11000016 	beqz	t0,23c <EnLightbox_Update+0xe0>
 1e4:	2404282f 	li	a0,10287
 1e8:	86020032 	lh	v0,50(s0)
 1ec:	8609007e 	lh	t1,126(s0)
 1f0:	3c0c0000 	lui	t4,0x0
 1f4:	258c0000 	addiu	t4,t4,0
 1f8:	00495021 	addu	t2,v0,t1
 1fc:	01425823 	subu	t3,t2,v0
 200:	a60b0032 	sh	t3,50(s0)
 204:	afac0014 	sw	t4,20(sp)
 208:	afa70010 	sw	a3,16(sp)
 20c:	260500e4 	addiu	a1,s0,228
 210:	0c000000 	jal	0 <EnLightbox_Init>
 214:	24060004 	li	a2,4
 218:	3c010000 	lui	at,0x0
 21c:	c4280000 	lwc1	$f8,0(at)
 220:	c6060068 	lwc1	$f6,104(s0)
 224:	960d0088 	lhu	t5,136(s0)
 228:	44800000 	mtc1	zero,$f0
 22c:	46083282 	mul.s	$f10,$f6,$f8
 230:	31aefff7 	andi	t6,t5,0xfff7
 234:	a60e0088 	sh	t6,136(s0)
 238:	e60a0068 	swc1	$f10,104(s0)
 23c:	960f0088 	lhu	t7,136(s0)
 240:	3c190000 	lui	t9,0x0
 244:	3c090000 	lui	t1,0x0
 248:	31f80001 	andi	t8,t7,0x1
 24c:	17000010 	bnez	t8,290 <EnLightbox_Update+0x134>
 250:	00000000 	nop
 254:	8f390000 	lw	t9,0(t9)
 258:	3c0142c8 	lui	at,0x42c8
 25c:	44812000 	mtc1	at,$f4
 260:	87280746 	lh	t0,1862(t9)
 264:	44050000 	mfc1	a1,$f0
 268:	26040068 	addiu	a0,s0,104
 26c:	44888000 	mtc1	t0,$f16
 270:	00000000 	nop
 274:	468084a0 	cvt.s.w	$f18,$f16
 278:	46049183 	div.s	$f6,$f18,$f4
 27c:	44063000 	mfc1	a2,$f6
 280:	0c000000 	jal	0 <EnLightbox_Init>
 284:	00000000 	nop
 288:	1000003b 	b	378 <EnLightbox_Update+0x21c>
 28c:	00000000 	nop
 290:	8d290000 	lw	t1,0(t1)
 294:	3c0142c8 	lui	at,0x42c8
 298:	44818000 	mtc1	at,$f16
 29c:	852a0748 	lh	t2,1864(t1)
 2a0:	44050000 	mfc1	a1,$f0
 2a4:	26040068 	addiu	a0,s0,104
 2a8:	448a4000 	mtc1	t2,$f8
 2ac:	00000000 	nop
 2b0:	468042a0 	cvt.s.w	$f10,$f8
 2b4:	46105483 	div.s	$f18,$f10,$f16
 2b8:	44069000 	mfc1	a2,$f18
 2bc:	0c000000 	jal	0 <EnLightbox_Init>
 2c0:	00000000 	nop
 2c4:	960b0088 	lhu	t3,136(s0)
 2c8:	3c0d0000 	lui	t5,0x0
 2cc:	02002025 	move	a0,s0
 2d0:	316c0002 	andi	t4,t3,0x2
 2d4:	11800026 	beqz	t4,370 <EnLightbox_Update+0x214>
 2d8:	00000000 	nop
 2dc:	8dad0000 	lw	t5,0(t5)
 2e0:	3c0142c8 	lui	at,0x42c8
 2e4:	44815000 	mtc1	at,$f10
 2e8:	85ae074a 	lh	t6,1866(t5)
 2ec:	c6040060 	lwc1	$f4,96(s0)
 2f0:	3c0f0000 	lui	t7,0x0
 2f4:	448e3000 	mtc1	t6,$f6
 2f8:	3c180000 	lui	t8,0x0
 2fc:	27180000 	addiu	t8,t8,0
 300:	46803220 	cvt.s.w	$f8,$f6
 304:	25e70000 	addiu	a3,t7,0
 308:	260500e4 	addiu	a1,s0,228
 30c:	24060004 	li	a2,4
 310:	460a4403 	div.s	$f16,$f8,$f10
 314:	4610203c 	c.lt.s	$f4,$f16
 318:	00000000 	nop
 31c:	45000014 	bc1f	370 <EnLightbox_Update+0x214>
 320:	00000000 	nop
 324:	2404282f 	li	a0,10287
 328:	afa70010 	sw	a3,16(sp)
 32c:	0c000000 	jal	0 <EnLightbox_Init>
 330:	afb80014 	sw	t8,20(sp)
 334:	3c190000 	lui	t9,0x0
 338:	8f390000 	lw	t9,0(t9)
 33c:	3c0142c8 	lui	at,0x42c8
 340:	44814000 	mtc1	at,$f8
 344:	8728074c 	lh	t0,1868(t9)
 348:	c6040060 	lwc1	$f4,96(s0)
 34c:	96090088 	lhu	t1,136(s0)
 350:	44889000 	mtc1	t0,$f18
 354:	312afffe 	andi	t2,t1,0xfffe
 358:	468091a0 	cvt.s.w	$f6,$f18
 35c:	a60a0088 	sh	t2,136(s0)
 360:	46083283 	div.s	$f10,$f6,$f8
 364:	460a2402 	mul.s	$f16,$f4,$f10
 368:	10000003 	b	378 <EnLightbox_Update+0x21c>
 36c:	e6100060 	swc1	$f16,96(s0)
 370:	0c000000 	jal	0 <EnLightbox_Init>
 374:	8fa5002c 	lw	a1,44(sp)
 378:	0c000000 	jal	0 <EnLightbox_Init>
 37c:	02002025 	move	a0,s0
 380:	860b00aa 	lh	t3,170(s0)
 384:	860c00a8 	lh	t4,168(s0)
 388:	240d001d 	li	t5,29
 38c:	448b9000 	mtc1	t3,$f18
 390:	448c3000 	mtc1	t4,$f6
 394:	afad0014 	sw	t5,20(sp)
 398:	468094a0 	cvt.s.w	$f18,$f18
 39c:	8fa4002c 	lw	a0,44(sp)
 3a0:	02002825 	move	a1,s0
 3a4:	46803020 	cvt.s.w	$f0,$f6
 3a8:	44069000 	mfc1	a2,$f18
 3ac:	44070000 	mfc1	a3,$f0
 3b0:	0c000000 	jal	0 <EnLightbox_Init>
 3b4:	e7a00010 	swc1	$f0,16(sp)
 3b8:	8e0f0024 	lw	t7,36(s0)
 3bc:	8e0e0028 	lw	t6,40(s0)
 3c0:	ae0f0038 	sw	t7,56(s0)
 3c4:	8e0f002c 	lw	t7,44(s0)
 3c8:	ae0e003c 	sw	t6,60(s0)
 3cc:	ae0f0040 	sw	t7,64(s0)
 3d0:	8fbf0024 	lw	ra,36(sp)
 3d4:	8fb00020 	lw	s0,32(sp)
 3d8:	27bd0028 	addiu	sp,sp,40
 3dc:	03e00008 	jr	ra
 3e0:	00000000 	nop

000003e4 <EnLightbox_Draw>:
 3e4:	27bdffe8 	addiu	sp,sp,-24
 3e8:	afa40018 	sw	a0,24(sp)
 3ec:	00a02025 	move	a0,a1
 3f0:	afbf0014 	sw	ra,20(sp)
 3f4:	3c050000 	lui	a1,0x0
 3f8:	0c000000 	jal	0 <EnLightbox_Init>
 3fc:	24a50000 	addiu	a1,a1,0
 400:	8fbf0014 	lw	ra,20(sp)
 404:	27bd0018 	addiu	sp,sp,24
 408:	03e00008 	jr	ra
 40c:	00000000 	nop
