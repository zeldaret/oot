
build/src/libultra_code_O2/cosf.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <cosf>:
   0:	e7ac0000 	swc1	$f12,0(sp)
   4:	8fa20000 	lw	v0,0(sp)
   8:	c7a60000 	lwc1	$f6,0(sp)
   c:	c7aa0000 	lwc1	$f10,0(sp)
  10:	00027583 	sra	t6,v0,0x16
  14:	31cf01ff 	andi	t7,t6,0x1ff
  18:	29e10136 	slti	at,t7,310
  1c:	50200049 	beqzl	at,144 <cosf+0x144>
  20:	460a5032 	c.eq.s	$f10,$f10
  24:	44802000 	mtc1	zero,$f4
  28:	3c013fe0 	lui	at,0x3fe0
  2c:	44819800 	mtc1	at,$f19
  30:	4606203c 	c.lt.s	$f4,$f6
  34:	c7a00000 	lwc1	$f0,0(sp)
  38:	3c010000 	lui	at,0x0
  3c:	45020004 	bc1fl	50 <cosf+0x50>
  40:	46000007 	neg.s	$f0,$f0
  44:	10000002 	b	50 <cosf+0x50>
  48:	46003006 	mov.s	$f0,$f6
  4c:	46000007 	neg.s	$f0,$f0
  50:	d4280028 	ldc1	$f8,40(at)
  54:	46000321 	cvt.d.s	$f12,$f0
  58:	44809000 	mtc1	zero,$f18
  5c:	46286282 	mul.d	$f10,$f12,$f8
  60:	44802800 	mtc1	zero,$f5
  64:	44802000 	mtc1	zero,$f4
  68:	46325380 	add.d	$f14,$f10,$f18
  6c:	462e203e 	c.le.d	$f4,$f14
  70:	00000000 	nop
  74:	45020007 	bc1fl	94 <cosf+0x94>
  78:	46327281 	sub.d	$f10,$f14,$f18
  7c:	46327180 	add.d	$f6,$f14,$f18
  80:	4620320d 	trunc.w.d	$f8,$f6
  84:	44024000 	mfc1	v0,$f8
  88:	10000006 	b	a4 <cosf+0xa4>
  8c:	44823000 	mtc1	v0,$f6
  90:	46327281 	sub.d	$f10,$f14,$f18
  94:	4620510d 	trunc.w.d	$f4,$f10
  98:	44022000 	mfc1	v0,$f4
  9c:	00000000 	nop
  a0:	44823000 	mtc1	v0,$f6
  a4:	3c010000 	lui	at,0x0
  a8:	d42a0030 	ldc1	$f10,48(at)
  ac:	46803221 	cvt.d.w	$f8,$f6
  b0:	3c010000 	lui	at,0x0
  b4:	d4260038 	ldc1	$f6,56(at)
  b8:	3c030000 	lui	v1,0x0
  bc:	24630000 	addiu	v1,v1,0
  c0:	46324001 	sub.d	$f0,$f8,$f18
  c4:	30480001 	andi	t0,v0,0x1
  c8:	462a0102 	mul.d	$f4,$f0,$f10
  cc:	d46a0020 	ldc1	$f10,32(v1)
  d0:	46260202 	mul.d	$f8,$f0,$f6
  d4:	d4660018 	ldc1	$f6,24(v1)
  d8:	46246081 	sub.d	$f2,$f12,$f4
  dc:	46281081 	sub.d	$f2,$f2,$f8
  e0:	46221382 	mul.d	$f14,$f2,$f2
  e4:	00000000 	nop
  e8:	462e5102 	mul.d	$f4,$f10,$f14
  ec:	46262200 	add.d	$f8,$f4,$f6
  f0:	d4640010 	ldc1	$f4,16(v1)
  f4:	462e4282 	mul.d	$f10,$f8,$f14
  f8:	46245180 	add.d	$f6,$f10,$f4
  fc:	d46a0008 	ldc1	$f10,8(v1)
 100:	462e3202 	mul.d	$f8,$f6,$f14
 104:	15000007 	bnez	t0,124 <cosf+0x124>
 108:	46285400 	add.d	$f16,$f10,$f8
 10c:	462e1102 	mul.d	$f4,$f2,$f14
 110:	00000000 	nop
 114:	46302182 	mul.d	$f6,$f4,$f16
 118:	46223280 	add.d	$f10,$f6,$f2
 11c:	03e00008 	jr	ra
 120:	46205020 	cvt.s.d	$f0,$f10
 124:	462e1202 	mul.d	$f8,$f2,$f14
 128:	00000000 	nop
 12c:	46304102 	mul.d	$f4,$f8,$f16
 130:	46222180 	add.d	$f6,$f4,$f2
 134:	46203020 	cvt.s.d	$f0,$f6
 138:	03e00008 	jr	ra
 13c:	46000007 	neg.s	$f0,$f0
 140:	460a5032 	c.eq.s	$f10,$f10
 144:	3c010000 	lui	at,0x0
 148:	45010004 	bc1t	15c <cosf+0x15c>
 14c:	00000000 	nop
 150:	3c010000 	lui	at,0x0
 154:	03e00008 	jr	ra
 158:	c4200000 	lwc1	$f0,0(at)
 15c:	c4200040 	lwc1	$f0,64(at)
 160:	03e00008 	jr	ra
 164:	00000000 	nop
	...
