
build/src/code/z_path.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Path_GetByIndex>:
   0:	afa50004 	sw	a1,4(sp)
   4:	afa60008 	sw	a2,8(sp)
   8:	00063400 	sll	a2,a2,0x10
   c:	00052c00 	sll	a1,a1,0x10
  10:	00052c03 	sra	a1,a1,0x10
  14:	00063403 	sra	a2,a2,0x10
  18:	10a60007 	beq	a1,a2,38 <Path_GetByIndex+0x38>
  1c:	00001825 	move	v1,zero
  20:	3c0e0001 	lui	t6,0x1
  24:	01c47021 	addu	t6,t6,a0
  28:	8dce1e08 	lw	t6,7688(t6)
  2c:	000578c0 	sll	t7,a1,0x3
  30:	03e00008 	jr	ra
  34:	01cf1021 	addu	v0,t6,t7
  38:	03e00008 	jr	ra
  3c:	00601025 	move	v0,v1

00000040 <Path_OrientAndGetDistSq>:
  40:	27bdffe0 	addiu	sp,sp,-32
  44:	afa60028 	sw	a2,40(sp)
  48:	00063400 	sll	a2,a2,0x10
  4c:	00063403 	sra	a2,a2,0x10
  50:	afbf0014 	sw	ra,20(sp)
  54:	14a00005 	bnez	a1,6c <Path_OrientAndGetDistSq+0x2c>
  58:	afa7002c 	sw	a3,44(sp)
  5c:	3c01bf80 	lui	at,0xbf80
  60:	44810000 	mtc1	at,$f0
  64:	1000002e 	b	120 <Path_OrientAndGetDistSq+0xe0>
  68:	8fbf0014 	lw	ra,20(sp)
  6c:	8ca30004 	lw	v1,4(a1)
  70:	3c190000 	lui	t9,0x0
  74:	3c0100ff 	lui	at,0xff
  78:	00037100 	sll	t6,v1,0x4
  7c:	000e7f02 	srl	t7,t6,0x1c
  80:	000fc080 	sll	t8,t7,0x2
  84:	0338c821 	addu	t9,t9,t8
  88:	8f390000 	lw	t9,0(t9)
  8c:	3421ffff 	ori	at,at,0xffff
  90:	00614024 	and	t0,v1,at
  94:	00064880 	sll	t1,a2,0x2
  98:	3c018000 	lui	at,0x8000
  9c:	01264823 	subu	t1,t1,a2
  a0:	03281021 	addu	v0,t9,t0
  a4:	00411021 	addu	v0,v0,at
  a8:	00094840 	sll	t1,t1,0x1
  ac:	01221021 	addu	v0,t1,v0
  b0:	844a0000 	lh	t2,0(v0)
  b4:	844b0004 	lh	t3,4(v0)
  b8:	c4880024 	lwc1	$f8,36(a0)
  bc:	448a2000 	mtc1	t2,$f4
  c0:	448b5000 	mtc1	t3,$f10
  c4:	c492002c 	lwc1	$f18,44(a0)
  c8:	468021a0 	cvt.s.w	$f6,$f4
  cc:	46805420 	cvt.s.w	$f16,$f10
  d0:	46083301 	sub.s	$f12,$f6,$f8
  d4:	46128381 	sub.s	$f14,$f16,$f18
  d8:	e7ac001c 	swc1	$f12,28(sp)
  dc:	0c000000 	jal	0 <Path_GetByIndex>
  e0:	e7ae0018 	swc1	$f14,24(sp)
  e4:	3c010000 	lui	at,0x0
  e8:	c4240000 	lwc1	$f4,0(at)
  ec:	c7ac001c 	lwc1	$f12,28(sp)
  f0:	c7ae0018 	lwc1	$f14,24(sp)
  f4:	46040182 	mul.s	$f6,$f0,$f4
  f8:	8fae002c 	lw	t6,44(sp)
  fc:	460c6282 	mul.s	$f10,$f12,$f12
 100:	00000000 	nop
 104:	460e7402 	mul.s	$f16,$f14,$f14
 108:	4600320d 	trunc.w.s	$f8,$f6
 10c:	46105000 	add.s	$f0,$f10,$f16
 110:	440d4000 	mfc1	t5,$f8
 114:	00000000 	nop
 118:	a5cd0000 	sh	t5,0(t6)
 11c:	8fbf0014 	lw	ra,20(sp)
 120:	27bd0020 	addiu	sp,sp,32
 124:	03e00008 	jr	ra
 128:	00000000 	nop

0000012c <Path_CopyLastPoint>:
 12c:	10800022 	beqz	a0,1b8 <Path_CopyLastPoint+0x8c>
 130:	3c190000 	lui	t9,0x0
 134:	8c830004 	lw	v1,4(a0)
 138:	908a0000 	lbu	t2,0(a0)
 13c:	3c0100ff 	lui	at,0xff
 140:	00037100 	sll	t6,v1,0x4
 144:	000e7f02 	srl	t7,t6,0x1c
 148:	000fc080 	sll	t8,t7,0x2
 14c:	0338c821 	addu	t9,t9,t8
 150:	8f390000 	lw	t9,0(t9)
 154:	3421ffff 	ori	at,at,0xffff
 158:	00614024 	and	t0,v1,at
 15c:	000a5880 	sll	t3,t2,0x2
 160:	016a5823 	subu	t3,t3,t2
 164:	000b5840 	sll	t3,t3,0x1
 168:	3c017fff 	lui	at,0x7fff
 16c:	03284821 	addu	t1,t9,t0
 170:	012b1021 	addu	v0,t1,t3
 174:	3421fffa 	ori	at,at,0xfffa
 178:	00411021 	addu	v0,v0,at
 17c:	844c0000 	lh	t4,0(v0)
 180:	448c2000 	mtc1	t4,$f4
 184:	00000000 	nop
 188:	468021a0 	cvt.s.w	$f6,$f4
 18c:	e4a60000 	swc1	$f6,0(a1)
 190:	844d0002 	lh	t5,2(v0)
 194:	448d4000 	mtc1	t5,$f8
 198:	00000000 	nop
 19c:	468042a0 	cvt.s.w	$f10,$f8
 1a0:	e4aa0004 	swc1	$f10,4(a1)
 1a4:	844e0004 	lh	t6,4(v0)
 1a8:	448e8000 	mtc1	t6,$f16
 1ac:	00000000 	nop
 1b0:	468084a0 	cvt.s.w	$f18,$f16
 1b4:	e4b20008 	swc1	$f18,8(a1)
 1b8:	03e00008 	jr	ra
 1bc:	00000000 	nop
