
build/src/libultra_code_O2/sinf.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <sinf>:
   0:	e7ac0000 	swc1	$f12,0(sp)
   4:	8fa20000 	lw	v0,0(sp)
   8:	c7a40000 	lwc1	$f4,0(sp)
   c:	00021d83 	sra	v1,v0,0x16
  10:	306e01ff 	andi	t6,v1,0x1ff
  14:	29c100ff 	slti	at,t6,255
  18:	10200019 	beqz	at,80 <sinf+0x80>
  1c:	01c01825 	move	v1,t6
  20:	29c100e6 	slti	at,t6,230
  24:	14200014 	bnez	at,78 <sinf+0x78>
  28:	460020a1 	cvt.d.s	$f2,$f4
  2c:	46221302 	mul.d	$f12,$f2,$f2
  30:	3c030000 	lui	v1,0x0
  34:	24630000 	addiu	v1,v1,0
  38:	d4660020 	ldc1	$f6,32(v1)
  3c:	d46a0018 	ldc1	$f10,24(v1)
  40:	d4640010 	ldc1	$f4,16(v1)
  44:	462c3202 	mul.d	$f8,$f6,$f12
  48:	462a4400 	add.d	$f16,$f8,$f10
  4c:	d46a0008 	ldc1	$f10,8(v1)
  50:	462c8482 	mul.d	$f18,$f16,$f12
  54:	46249180 	add.d	$f6,$f18,$f4
  58:	462c3202 	mul.d	$f8,$f6,$f12
  5c:	46285380 	add.d	$f14,$f10,$f8
  60:	462c1402 	mul.d	$f16,$f2,$f12
  64:	00000000 	nop
  68:	462e8482 	mul.d	$f18,$f16,$f14
  6c:	46229100 	add.d	$f4,$f18,$f2
  70:	03e00008 	jr	ra
  74:	46202020 	cvt.s.d	$f0,$f4
  78:	03e00008 	jr	ra
  7c:	c7a00000 	lwc1	$f0,0(sp)
  80:	28610136 	slti	at,v1,310
  84:	10200044 	beqz	at,198 <sinf+0x198>
  88:	c7a40000 	lwc1	$f4,0(sp)
  8c:	c7a60000 	lwc1	$f6,0(sp)
  90:	3c010000 	lui	at,0x0
  94:	d42a0028 	ldc1	$f10,40(at)
  98:	460030a1 	cvt.d.s	$f2,$f6
  9c:	44804800 	mtc1	zero,$f9
  a0:	462a1002 	mul.d	$f0,$f2,$f10
  a4:	44804000 	mtc1	zero,$f8
  a8:	3c013fe0 	lui	at,0x3fe0
  ac:	4620403e 	c.le.d	$f8,$f0
  b0:	00000000 	nop
  b4:	4502000b 	bc1fl	e4 <sinf+0xe4>
  b8:	44813800 	mtc1	at,$f7
  bc:	3c013fe0 	lui	at,0x3fe0
  c0:	44818800 	mtc1	at,$f17
  c4:	44808000 	mtc1	zero,$f16
  c8:	00000000 	nop
  cc:	46300480 	add.d	$f18,$f0,$f16
  d0:	4620910d 	trunc.w.d	$f4,$f18
  d4:	44022000 	mfc1	v0,$f4
  d8:	10000009 	b	100 <sinf+0x100>
  dc:	44828000 	mtc1	v0,$f16
  e0:	44813800 	mtc1	at,$f7
  e4:	44803000 	mtc1	zero,$f6
  e8:	00000000 	nop
  ec:	46260281 	sub.d	$f10,$f0,$f6
  f0:	4620520d 	trunc.w.d	$f8,$f10
  f4:	44024000 	mfc1	v0,$f8
  f8:	00000000 	nop
  fc:	44828000 	mtc1	v0,$f16
 100:	3c010000 	lui	at,0x0
 104:	d4320030 	ldc1	$f18,48(at)
 108:	46808021 	cvt.d.w	$f0,$f16
 10c:	3c010000 	lui	at,0x0
 110:	d4260038 	ldc1	$f6,56(at)
 114:	3c030000 	lui	v1,0x0
 118:	24630000 	addiu	v1,v1,0
 11c:	46320102 	mul.d	$f4,$f0,$f18
 120:	d4680020 	ldc1	$f8,32(v1)
 124:	d4720018 	ldc1	$f18,24(v1)
 128:	30590001 	andi	t9,v0,0x1
 12c:	46260282 	mul.d	$f10,$f0,$f6
 130:	46241081 	sub.d	$f2,$f2,$f4
 134:	462a1081 	sub.d	$f2,$f2,$f10
 138:	d46a0010 	ldc1	$f10,16(v1)
 13c:	46221302 	mul.d	$f12,$f2,$f2
 140:	00000000 	nop
 144:	462c4402 	mul.d	$f16,$f8,$f12
 148:	46328100 	add.d	$f4,$f16,$f18
 14c:	d4720008 	ldc1	$f18,8(v1)
 150:	462c2182 	mul.d	$f6,$f4,$f12
 154:	462a3200 	add.d	$f8,$f6,$f10
 158:	462c4402 	mul.d	$f16,$f8,$f12
 15c:	17200007 	bnez	t9,17c <sinf+0x17c>
 160:	46309380 	add.d	$f14,$f18,$f16
 164:	462c1102 	mul.d	$f4,$f2,$f12
 168:	00000000 	nop
 16c:	462e2182 	mul.d	$f6,$f4,$f14
 170:	46223280 	add.d	$f10,$f6,$f2
 174:	03e00008 	jr	ra
 178:	46205020 	cvt.s.d	$f0,$f10
 17c:	462c1202 	mul.d	$f8,$f2,$f12
 180:	00000000 	nop
 184:	462e4482 	mul.d	$f18,$f8,$f14
 188:	46229400 	add.d	$f16,$f18,$f2
 18c:	46208020 	cvt.s.d	$f0,$f16
 190:	03e00008 	jr	ra
 194:	46000007 	neg.s	$f0,$f0
 198:	46042032 	c.eq.s	$f4,$f4
 19c:	3c010000 	lui	at,0x0
 1a0:	45010004 	bc1t	1b4 <sinf+0x1b4>
 1a4:	00000000 	nop
 1a8:	3c010000 	lui	at,0x0
 1ac:	03e00008 	jr	ra
 1b0:	c4200000 	lwc1	$f0,0(at)
 1b4:	c4200040 	lwc1	$f0,64(at)
 1b8:	03e00008 	jr	ra
 1bc:	00000000 	nop
