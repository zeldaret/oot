
build/src/overlays/actors/ovl_Bg_Spot01_Objects2/z_bg_spot01_objects2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgSpot01Objects2_Init>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	848e001c 	lh	t6,28(a0)
  10:	00808025 	move	s0,a0
  14:	00a03025 	move	a2,a1
  18:	31cf0007 	andi	t7,t6,0x7
  1c:	2de10005 	sltiu	at,t7,5
  20:	1020000e 	beqz	at,5c <BgSpot01Objects2_Init+0x5c>
  24:	000f7880 	sll	t7,t7,0x2
  28:	3c010000 	lui	at,0x0
  2c:	002f0821 	addu	at,at,t7
  30:	8c2f005c 	lw	t7,92(at)
  34:	01e00008 	jr	t7
  38:	00000000 	nop
  3c:	24180180 	li	t8,384
  40:	10000006 	b	5c <BgSpot01Objects2_Init+0x5c>
  44:	ae180178 	sw	t8,376(s0)
  48:	24190181 	li	t9,385
  4c:	10000003 	b	5c <BgSpot01Objects2_Init+0x5c>
  50:	ae190178 	sw	t9,376(s0)
  54:	24080180 	li	t0,384
  58:	ae080178 	sw	t0,376(s0)
  5c:	8e020178 	lw	v0,376(s0)
  60:	3c010001 	lui	at,0x1
  64:	342117a4 	ori	at,at,0x17a4
  68:	0440000f 	bltz	v0,a8 <BgSpot01Objects2_Init+0xa8>
  6c:	00c12021 	addu	a0,a2,at
  70:	00022c00 	sll	a1,v0,0x10
  74:	0c000000 	jal	0 <BgSpot01Objects2_Init>
  78:	00052c03 	sra	a1,a1,0x10
  7c:	a202017c 	sb	v0,380(s0)
  80:	8209017c 	lb	t1,380(s0)
  84:	3c040000 	lui	a0,0x0
  88:	05210009 	bgez	t1,b0 <BgSpot01Objects2_Init+0xb0>
  8c:	00000000 	nop
  90:	0c000000 	jal	0 <BgSpot01Objects2_Init>
  94:	24840000 	addiu	a0,a0,0
  98:	0c000000 	jal	0 <BgSpot01Objects2_Init>
  9c:	02002025 	move	a0,s0
  a0:	1000000b 	b	d0 <BgSpot01Objects2_Init+0xd0>
  a4:	8fbf001c 	lw	ra,28(sp)
  a8:	0c000000 	jal	0 <BgSpot01Objects2_Init>
  ac:	02002025 	move	a0,s0
  b0:	3c0a0000 	lui	t2,0x0
  b4:	254a0000 	addiu	t2,t2,0
  b8:	3c050000 	lui	a1,0x0
  bc:	ae0a0164 	sw	t2,356(s0)
  c0:	24a50020 	addiu	a1,a1,32
  c4:	0c000000 	jal	0 <BgSpot01Objects2_Init>
  c8:	02002025 	move	a0,s0
  cc:	8fbf001c 	lw	ra,28(sp)
  d0:	8fb00018 	lw	s0,24(sp)
  d4:	27bd0020 	addiu	sp,sp,32
  d8:	03e00008 	jr	ra
  dc:	00000000 	nop

000000e0 <BgSpot01Objects2_Destroy>:
  e0:	afa40000 	sw	a0,0(sp)
  e4:	03e00008 	jr	ra
  e8:	afa50004 	sw	a1,4(sp)

000000ec <func_808AC22C>:
  ec:	000670c0 	sll	t6,a2,0x3
  f0:	008e7821 	addu	t7,a0,t6
  f4:	8de80004 	lw	t0,4(t7)
  f8:	3c0a0000 	lui	t2,0x0
  fc:	3c0100ff 	lui	at,0xff
 100:	0008c100 	sll	t8,t0,0x4
 104:	0018cf02 	srl	t9,t8,0x1c
 108:	00194880 	sll	t1,t9,0x2
 10c:	01495021 	addu	t2,t2,t1
 110:	8d4a0000 	lw	t2,0(t2)
 114:	3421ffff 	ori	at,at,0xffff
 118:	00076880 	sll	t5,a3,0x2
 11c:	01a76823 	subu	t5,t5,a3
 120:	01015824 	and	t3,t0,at
 124:	000d6840 	sll	t5,t5,0x1
 128:	014b6021 	addu	t4,t2,t3
 12c:	018d1821 	addu	v1,t4,t5
 130:	3c018000 	lui	at,0x8000
 134:	00611821 	addu	v1,v1,at
 138:	846e0000 	lh	t6,0(v1)
 13c:	00001025 	move	v0,zero
 140:	448e2000 	mtc1	t6,$f4
 144:	00000000 	nop
 148:	468021a0 	cvt.s.w	$f6,$f4
 14c:	e4a60000 	swc1	$f6,0(a1)
 150:	846f0002 	lh	t7,2(v1)
 154:	448f4000 	mtc1	t7,$f8
 158:	00000000 	nop
 15c:	468042a0 	cvt.s.w	$f10,$f8
 160:	e4aa0004 	swc1	$f10,4(a1)
 164:	84780004 	lh	t8,4(v1)
 168:	44988000 	mtc1	t8,$f16
 16c:	00000000 	nop
 170:	468084a0 	cvt.s.w	$f18,$f16
 174:	03e00008 	jr	ra
 178:	e4b20008 	swc1	$f18,8(a1)

0000017c <func_808AC2BC>:
 17c:	27bdffa8 	addiu	sp,sp,-88
 180:	afb00034 	sw	s0,52(sp)
 184:	3c010001 	lui	at,0x1
 188:	00808025 	move	s0,a0
 18c:	afb10038 	sw	s1,56(sp)
 190:	342117a4 	ori	at,at,0x17a4
 194:	00a08825 	move	s1,a1
 198:	afbf003c 	sw	ra,60(sp)
 19c:	afa00054 	sw	zero,84(sp)
 1a0:	00a12021 	addu	a0,a1,at
 1a4:	0c000000 	jal	0 <BgSpot01Objects2_Init>
 1a8:	8205017c 	lb	a1,380(s0)
 1ac:	1040005c 	beqz	v0,320 <func_808AC2BC+0x1a4>
 1b0:	3c040000 	lui	a0,0x0
 1b4:	0c000000 	jal	0 <BgSpot01Objects2_Init>
 1b8:	2484003c 	addiu	a0,a0,60
 1bc:	820e017c 	lb	t6,380(s0)
 1c0:	3c190001 	lui	t9,0x1
 1c4:	3c018000 	lui	at,0x8000
 1c8:	000e7900 	sll	t7,t6,0x4
 1cc:	01ee7821 	addu	t7,t7,t6
 1d0:	000f7880 	sll	t7,t7,0x2
 1d4:	022fc021 	addu	t8,s1,t7
 1d8:	0338c821 	addu	t9,t9,t8
 1dc:	8f3917b4 	lw	t9,6068(t9)
 1e0:	02002025 	move	a0,s0
 1e4:	24050001 	li	a1,1
 1e8:	03214021 	addu	t0,t9,at
 1ec:	3c010000 	lui	at,0x0
 1f0:	ac280018 	sw	t0,24(at)
 1f4:	8209017c 	lb	t1,380(s0)
 1f8:	0c000000 	jal	0 <BgSpot01Objects2_Init>
 1fc:	a209001e 	sb	t1,30(s0)
 200:	860a001c 	lh	t2,28(s0)
 204:	314b0007 	andi	t3,t2,0x7
 208:	2d610005 	sltiu	at,t3,5
 20c:	1020003e 	beqz	at,308 <func_808AC2BC+0x18c>
 210:	000b5880 	sll	t3,t3,0x2
 214:	3c010000 	lui	at,0x0
 218:	002b0821 	addu	at,at,t3
 21c:	8c2b0070 	lw	t3,112(at)
 220:	01600008 	jr	t3
 224:	00000000 	nop
 228:	3c040000 	lui	a0,0x0
 22c:	24840000 	addiu	a0,a0,0
 230:	0c000000 	jal	0 <BgSpot01Objects2_Init>
 234:	27a50054 	addiu	a1,sp,84
 238:	02202025 	move	a0,s1
 23c:	26250810 	addiu	a1,s1,2064
 240:	02003025 	move	a2,s0
 244:	0c000000 	jal	0 <BgSpot01Objects2_Init>
 248:	8fa70054 	lw	a3,84(sp)
 24c:	1000002e 	b	308 <func_808AC2BC+0x18c>
 250:	ae02014c 	sw	v0,332(s0)
 254:	3c040000 	lui	a0,0x0
 258:	24840000 	addiu	a0,a0,0
 25c:	0c000000 	jal	0 <BgSpot01Objects2_Init>
 260:	27a50054 	addiu	a1,sp,84
 264:	02202025 	move	a0,s1
 268:	26250810 	addiu	a1,s1,2064
 26c:	02003025 	move	a2,s0
 270:	0c000000 	jal	0 <BgSpot01Objects2_Init>
 274:	8fa70054 	lw	a3,84(sp)
 278:	ae02014c 	sw	v0,332(s0)
 27c:	3c0c0000 	lui	t4,0x0
 280:	8d8c0010 	lw	t4,16(t4)
 284:	3c040001 	lui	a0,0x1
 288:	00912021 	addu	a0,a0,s1
 28c:	1580001e 	bnez	t4,308 <func_808AC2BC+0x18c>
 290:	27a50040 	addiu	a1,sp,64
 294:	8606001c 	lh	a2,28(s0)
 298:	8c841e08 	lw	a0,7688(a0)
 29c:	00003825 	move	a3,zero
 2a0:	00063203 	sra	a2,a2,0x8
 2a4:	0c000000 	jal	0 <BgSpot01Objects2_Init>
 2a8:	30c600ff 	andi	a2,a2,0xff
 2ac:	c7a40040 	lwc1	$f4,64(sp)
 2b0:	c7a60044 	lwc1	$f6,68(sp)
 2b4:	c7a80048 	lwc1	$f8,72(sp)
 2b8:	e7a40010 	swc1	$f4,16(sp)
 2bc:	e7a60014 	swc1	$f6,20(sp)
 2c0:	e7a80018 	swc1	$f8,24(sp)
 2c4:	860d0030 	lh	t5,48(s0)
 2c8:	26241c24 	addiu	a0,s1,7204
 2cc:	02002825 	move	a1,s0
 2d0:	afad001c 	sw	t5,28(sp)
 2d4:	860e0032 	lh	t6,50(s0)
 2d8:	02203025 	move	a2,s1
 2dc:	240701bc 	li	a3,444
 2e0:	afae0020 	sw	t6,32(sp)
 2e4:	860f0034 	lh	t7,52(s0)
 2e8:	afaf0024 	sw	t7,36(sp)
 2ec:	8618001c 	lh	t8,28(s0)
 2f0:	0018ca03 	sra	t9,t8,0x8
 2f4:	332800ff 	andi	t0,t9,0xff
 2f8:	00084a00 	sll	t1,t0,0x8
 2fc:	252a0001 	addiu	t2,t1,1
 300:	0c000000 	jal	0 <BgSpot01Objects2_Init>
 304:	afaa0028 	sw	t2,40(sp)
 308:	3c0b0000 	lui	t3,0x0
 30c:	3c0c0000 	lui	t4,0x0
 310:	256b0000 	addiu	t3,t3,0
 314:	258c0000 	addiu	t4,t4,0
 318:	ae0b0134 	sw	t3,308(s0)
 31c:	ae0c0164 	sw	t4,356(s0)
 320:	8fbf003c 	lw	ra,60(sp)
 324:	8fb00034 	lw	s0,52(sp)
 328:	8fb10038 	lw	s1,56(sp)
 32c:	03e00008 	jr	ra
 330:	27bd0058 	addiu	sp,sp,88

00000334 <func_808AC474>:
 334:	afa40000 	sw	a0,0(sp)
 338:	03e00008 	jr	ra
 33c:	afa50004 	sw	a1,4(sp)

00000340 <BgSpot01Objects2_Update>:
 340:	27bdffe8 	addiu	sp,sp,-24
 344:	afbf0014 	sw	ra,20(sp)
 348:	8c990164 	lw	t9,356(a0)
 34c:	0320f809 	jalr	t9
 350:	00000000 	nop
 354:	8fbf0014 	lw	ra,20(sp)
 358:	27bd0018 	addiu	sp,sp,24
 35c:	03e00008 	jr	ra
 360:	00000000 	nop

00000364 <func_808AC4A4>:
 364:	27bdffe8 	addiu	sp,sp,-24
 368:	afbf0014 	sw	ra,20(sp)
 36c:	00803825 	move	a3,a0
 370:	84ee001c 	lh	t6,28(a3)
 374:	00a02025 	move	a0,a1
 378:	3c050000 	lui	a1,0x0
 37c:	31cf0007 	andi	t7,t6,0x7
 380:	000fc080 	sll	t8,t7,0x2
 384:	00b82821 	addu	a1,a1,t8
 388:	0c000000 	jal	0 <BgSpot01Objects2_Init>
 38c:	8ca50000 	lw	a1,0(a1)
 390:	8fbf0014 	lw	ra,20(sp)
 394:	27bd0018 	addiu	sp,sp,24
 398:	03e00008 	jr	ra
 39c:	00000000 	nop
