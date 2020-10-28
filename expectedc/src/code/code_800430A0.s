
build/src/code/code_800430A0.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800430A0>:
   0:	27bdfef0 	addiu	sp,sp,-272
   4:	afbf002c 	sw	ra,44(sp)
   8:	afa40110 	sw	a0,272(sp)
   c:	afa50114 	sw	a1,276(sp)
  10:	afa60118 	sw	a2,280(sp)
  14:	0c000000 	jal	0 <func_800430A0>
  18:	00a02025 	move	a0,a1
  1c:	10400074 	beqz	v0,1f0 <func_800430A0+0x1f0>
  20:	8faf0114 	lw	t7,276(sp)
  24:	000fc080 	sll	t8,t7,0x2
  28:	030fc023 	subu	t8,t8,t7
  2c:	8fae0110 	lw	t6,272(sp)
  30:	0018c0c0 	sll	t8,t8,0x3
  34:	030fc021 	addu	t8,t8,t7
  38:	0018c080 	sll	t8,t8,0x2
  3c:	01d81821 	addu	v1,t6,t8
  40:	84790074 	lh	t9,116(v1)
  44:	8c650068 	lw	a1,104(v1)
  48:	8c66006c 	lw	a2,108(v1)
  4c:	8c670070 	lw	a3,112(v1)
  50:	afb90010 	sw	t9,16(sp)
  54:	84680076 	lh	t0,118(v1)
  58:	27a400d0 	addiu	a0,sp,208
  5c:	afa80014 	sw	t0,20(sp)
  60:	84690078 	lh	t1,120(v1)
  64:	afa90018 	sw	t1,24(sp)
  68:	c464007c 	lwc1	$f4,124(v1)
  6c:	e7a4001c 	swc1	$f4,28(sp)
  70:	c4660080 	lwc1	$f6,128(v1)
  74:	e7a60020 	swc1	$f6,32(sp)
  78:	c4680084 	lwc1	$f8,132(v1)
  7c:	afa30034 	sw	v1,52(sp)
  80:	0c000000 	jal	0 <func_800430A0>
  84:	e7a80024 	swc1	$f8,36(sp)
  88:	27a400d0 	addiu	a0,sp,208
  8c:	0c000000 	jal	0 <func_800430A0>
  90:	27a50090 	addiu	a1,sp,144
  94:	24010002 	li	at,2
  98:	10410055 	beq	v0,at,1f0 <func_800430A0+0x1f0>
  9c:	8fa30034 	lw	v1,52(sp)
  a0:	846a0094 	lh	t2,148(v1)
  a4:	8c650088 	lw	a1,136(v1)
  a8:	8c66008c 	lw	a2,140(v1)
  ac:	8c670090 	lw	a3,144(v1)
  b0:	afaa0010 	sw	t2,16(sp)
  b4:	846b0096 	lh	t3,150(v1)
  b8:	27a40050 	addiu	a0,sp,80
  bc:	afab0014 	sw	t3,20(sp)
  c0:	846c0098 	lh	t4,152(v1)
  c4:	afac0018 	sw	t4,24(sp)
  c8:	c46a009c 	lwc1	$f10,156(v1)
  cc:	e7aa001c 	swc1	$f10,28(sp)
  d0:	c47000a0 	lwc1	$f16,160(v1)
  d4:	e7b00020 	swc1	$f16,32(sp)
  d8:	c47200a4 	lwc1	$f18,164(v1)
  dc:	0c000000 	jal	0 <func_800430A0>
  e0:	e7b20024 	swc1	$f18,36(sp)
  e4:	8fa50118 	lw	a1,280(sp)
  e8:	27a40090 	addiu	a0,sp,144
  ec:	27a60038 	addiu	a2,sp,56
  f0:	24a50024 	addiu	a1,a1,36
  f4:	0c000000 	jal	0 <func_800430A0>
  f8:	afa50034 	sw	a1,52(sp)
  fc:	27a40050 	addiu	a0,sp,80
 100:	27a50038 	addiu	a1,sp,56
 104:	0c000000 	jal	0 <func_800430A0>
 108:	27a60044 	addiu	a2,sp,68
 10c:	27af0044 	addiu	t7,sp,68
 110:	8df80000 	lw	t8,0(t7)
 114:	8fad0034 	lw	t5,52(sp)
 118:	3c010000 	lui	at,0x0
 11c:	c4200000 	lwc1	$f0,0(at)
 120:	adb80000 	sw	t8,0(t5)
 124:	8dee0004 	lw	t6,4(t7)
 128:	3c010000 	lui	at,0x0
 12c:	3c040000 	lui	a0,0x0
 130:	adae0004 	sw	t6,4(t5)
 134:	8df80008 	lw	t8,8(t7)
 138:	adb80008 	sw	t8,8(t5)
 13c:	c7a40044 	lwc1	$f4,68(sp)
 140:	4604003e 	c.le.s	$f0,$f4
 144:	00000000 	nop
 148:	45010017 	bc1t	1a8 <func_800430A0+0x1a8>
 14c:	00000000 	nop
 150:	c4220000 	lwc1	$f2,0(at)
 154:	c7ac0048 	lwc1	$f12,72(sp)
 158:	4602203e 	c.le.s	$f4,$f2
 15c:	00000000 	nop
 160:	45010011 	bc1t	1a8 <func_800430A0+0x1a8>
 164:	00000000 	nop
 168:	460c003e 	c.le.s	$f0,$f12
 16c:	00000000 	nop
 170:	4501000d 	bc1t	1a8 <func_800430A0+0x1a8>
 174:	00000000 	nop
 178:	4602603e 	c.le.s	$f12,$f2
 17c:	c7ae004c 	lwc1	$f14,76(sp)
 180:	45010009 	bc1t	1a8 <func_800430A0+0x1a8>
 184:	00000000 	nop
 188:	460e003e 	c.le.s	$f0,$f14
 18c:	00000000 	nop
 190:	45010005 	bc1t	1a8 <func_800430A0+0x1a8>
 194:	00000000 	nop
 198:	4602703e 	c.le.s	$f14,$f2
 19c:	00000000 	nop
 1a0:	45020014 	bc1fl	1f4 <func_800430A0+0x1f4>
 1a4:	8fbf002c 	lw	ra,44(sp)
 1a8:	0c000000 	jal	0 <func_800430A0>
 1ac:	24840000 	addiu	a0,a0,0
 1b0:	c7a60044 	lwc1	$f6,68(sp)
 1b4:	c7ac0048 	lwc1	$f12,72(sp)
 1b8:	c7ae004c 	lwc1	$f14,76(sp)
 1bc:	46003221 	cvt.d.s	$f8,$f6
 1c0:	460062a1 	cvt.d.s	$f10,$f12
 1c4:	46007421 	cvt.d.s	$f16,$f14
 1c8:	44074000 	mfc1	a3,$f8
 1cc:	44064800 	mfc1	a2,$f9
 1d0:	3c040000 	lui	a0,0x0
 1d4:	24840000 	addiu	a0,a0,0
 1d8:	f7b00018 	sdc1	$f16,24(sp)
 1dc:	0c000000 	jal	0 <func_800430A0>
 1e0:	f7aa0010 	sdc1	$f10,16(sp)
 1e4:	3c040000 	lui	a0,0x0
 1e8:	0c000000 	jal	0 <func_800430A0>
 1ec:	24840000 	addiu	a0,a0,0
 1f0:	8fbf002c 	lw	ra,44(sp)
 1f4:	27bd0110 	addiu	sp,sp,272
 1f8:	03e00008 	jr	ra
 1fc:	00000000 	nop

00000200 <func_800432A0>:
 200:	27bdffe8 	addiu	sp,sp,-24
 204:	afbf0014 	sw	ra,20(sp)
 208:	afa40018 	sw	a0,24(sp)
 20c:	afa5001c 	sw	a1,28(sp)
 210:	00a02025 	move	a0,a1
 214:	0c000000 	jal	0 <func_800430A0>
 218:	afa60020 	sw	a2,32(sp)
 21c:	10400019 	beqz	v0,284 <func_800432A0+0x84>
 220:	8fa60020 	lw	a2,32(sp)
 224:	8faf001c 	lw	t7,28(sp)
 228:	8fae0018 	lw	t6,24(sp)
 22c:	84c90000 	lh	t1,0(a2)
 230:	000fc080 	sll	t8,t7,0x2
 234:	030fc023 	subu	t8,t8,t7
 238:	0018c0c0 	sll	t8,t8,0x3
 23c:	030fc021 	addu	t8,t8,t7
 240:	0018c080 	sll	t8,t8,0x2
 244:	01d81021 	addu	v0,t6,t8
 248:	84590096 	lh	t9,150(v0)
 24c:	84480076 	lh	t0,118(v0)
 250:	03281823 	subu	v1,t9,t0
 254:	00031c00 	sll	v1,v1,0x10
 258:	15200004 	bnez	t1,26c <func_800432A0+0x6c>
 25c:	00031c03 	sra	v1,v1,0x10
 260:	84ca083c 	lh	t2,2108(a2)
 264:	01435821 	addu	t3,t2,v1
 268:	a4cb083c 	sh	t3,2108(a2)
 26c:	84cc00b6 	lh	t4,182(a2)
 270:	84cf0032 	lh	t7,50(a2)
 274:	01836821 	addu	t5,t4,v1
 278:	01e37021 	addu	t6,t7,v1
 27c:	a4cd00b6 	sh	t5,182(a2)
 280:	a4ce0032 	sh	t6,50(a2)
 284:	8fbf0014 	lw	ra,20(sp)
 288:	27bd0018 	addiu	sp,sp,24
 28c:	03e00008 	jr	ra
 290:	00000000 	nop

00000294 <func_80043334>:
 294:	27bdffe0 	addiu	sp,sp,-32
 298:	afbf0014 	sw	ra,20(sp)
 29c:	afa40020 	sw	a0,32(sp)
 2a0:	afa50024 	sw	a1,36(sp)
 2a4:	afa60028 	sw	a2,40(sp)
 2a8:	0c000000 	jal	0 <func_800430A0>
 2ac:	00c02025 	move	a0,a2
 2b0:	10400010 	beqz	v0,2f4 <func_80043334+0x60>
 2b4:	8fa40020 	lw	a0,32(sp)
 2b8:	0c000000 	jal	0 <func_800430A0>
 2bc:	8fa50028 	lw	a1,40(sp)
 2c0:	1040000c 	beqz	v0,2f4 <func_80043334+0x60>
 2c4:	00402025 	move	a0,v0
 2c8:	0c000000 	jal	0 <func_800430A0>
 2cc:	afa2001c 	sw	v0,28(sp)
 2d0:	8fae0024 	lw	t6,36(sp)
 2d4:	3c020400 	lui	v0,0x400
 2d8:	8fa4001c 	lw	a0,28(sp)
 2dc:	8dcf0004 	lw	t7,4(t6)
 2e0:	01e2c024 	and	t8,t7,v0
 2e4:	54580004 	bnel	v0,t8,2f8 <func_80043334+0x64>
 2e8:	8fbf0014 	lw	ra,20(sp)
 2ec:	0c000000 	jal	0 <func_800430A0>
 2f0:	00000000 	nop
 2f4:	8fbf0014 	lw	ra,20(sp)
 2f8:	27bd0020 	addiu	sp,sp,32
 2fc:	03e00008 	jr	ra
 300:	00000000 	nop

00000304 <func_800433A4>:
 304:	27bdffd8 	addiu	sp,sp,-40
 308:	afbf001c 	sw	ra,28(sp)
 30c:	afb00018 	sw	s0,24(sp)
 310:	afa40028 	sw	a0,40(sp)
 314:	00a08025 	move	s0,a1
 318:	afa60030 	sw	a2,48(sp)
 31c:	afa00024 	sw	zero,36(sp)
 320:	0c000000 	jal	0 <func_800430A0>
 324:	00a02025 	move	a0,a1
 328:	14400003 	bnez	v0,338 <func_800433A4+0x34>
 32c:	8fa40028 	lw	a0,40(sp)
 330:	10000026 	b	3cc <func_800433A4+0xc8>
 334:	00001025 	move	v0,zero
 338:	00107040 	sll	t6,s0,0x1
 33c:	008e7821 	addu	t7,a0,t6
 340:	95e213dc 	lhu	v0,5084(t7)
 344:	30580002 	andi	t8,v0,0x2
 348:	17000003 	bnez	t8,358 <func_800433A4+0x54>
 34c:	30590001 	andi	t9,v0,0x1
 350:	17200003 	bnez	t9,360 <func_800433A4+0x5c>
 354:	00000000 	nop
 358:	1000001c 	b	3cc <func_800433A4+0xc8>
 35c:	00001025 	move	v0,zero
 360:	0c000000 	jal	0 <func_800430A0>
 364:	02002825 	move	a1,s0
 368:	14400003 	bnez	v0,378 <func_800433A4+0x74>
 36c:	00401825 	move	v1,v0
 370:	10000016 	b	3cc <func_800433A4+0xc8>
 374:	00001025 	move	v0,zero
 378:	8c48015c 	lw	t0,348(v0)
 37c:	8fa40028 	lw	a0,40(sp)
 380:	02002825 	move	a1,s0
 384:	31090001 	andi	t1,t0,0x1
 388:	11200006 	beqz	t1,3a4 <func_800433A4+0xa0>
 38c:	8fa60030 	lw	a2,48(sp)
 390:	0c000000 	jal	0 <func_800430A0>
 394:	afa30020 	sw	v1,32(sp)
 398:	240a0001 	li	t2,1
 39c:	8fa30020 	lw	v1,32(sp)
 3a0:	afaa0024 	sw	t2,36(sp)
 3a4:	8c6b015c 	lw	t3,348(v1)
 3a8:	8fa40028 	lw	a0,40(sp)
 3ac:	02002825 	move	a1,s0
 3b0:	316c0002 	andi	t4,t3,0x2
 3b4:	11800004 	beqz	t4,3c8 <func_800433A4+0xc4>
 3b8:	8fa60030 	lw	a2,48(sp)
 3bc:	240d0001 	li	t5,1
 3c0:	0c000000 	jal	0 <func_800430A0>
 3c4:	afad0024 	sw	t5,36(sp)
 3c8:	8fa20024 	lw	v0,36(sp)
 3cc:	8fbf001c 	lw	ra,28(sp)
 3d0:	8fb00018 	lw	s0,24(sp)
 3d4:	27bd0028 	addiu	sp,sp,40
 3d8:	03e00008 	jr	ra
 3dc:	00000000 	nop
