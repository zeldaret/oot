
build/src/libultra_code_O2/guLookAt.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <guLookAtF>:
   0:	27bdff88 	addiu	sp,sp,-120
   4:	afbf0044 	sw	ra,68(sp)
   8:	f7be0038 	sdc1	$f30,56(sp)
   c:	f7bc0030 	sdc1	$f28,48(sp)
  10:	f7ba0028 	sdc1	$f26,40(sp)
  14:	f7b80020 	sdc1	$f24,32(sp)
  18:	f7b60018 	sdc1	$f22,24(sp)
  1c:	f7b40010 	sdc1	$f20,16(sp)
  20:	afa5007c 	sw	a1,124(sp)
  24:	afa60080 	sw	a2,128(sp)
  28:	afa70084 	sw	a3,132(sp)
  2c:	0c000000 	jal	0 <guLookAtF>
  30:	afa40078 	sw	a0,120(sp)
  34:	c7a40088 	lwc1	$f4,136(sp)
  38:	c7a6007c 	lwc1	$f6,124(sp)
  3c:	c7a8008c 	lwc1	$f8,140(sp)
  40:	c7aa0080 	lwc1	$f10,128(sp)
  44:	46062081 	sub.s	$f2,$f4,$f6
  48:	c7a60084 	lwc1	$f6,132(sp)
  4c:	c7a40090 	lwc1	$f4,144(sp)
  50:	460a4301 	sub.s	$f12,$f8,$f10
  54:	46021202 	mul.s	$f8,$f2,$f2
  58:	3c01bff0 	lui	at,0xbff0
  5c:	46062381 	sub.s	$f14,$f4,$f6
  60:	460c6282 	mul.s	$f10,$f12,$f12
  64:	44814800 	mtc1	at,$f9
  68:	3c013ff0 	lui	at,0x3ff0
  6c:	460e7182 	mul.s	$f6,$f14,$f14
  70:	8fa40078 	lw	a0,120(sp)
  74:	460a4100 	add.s	$f4,$f8,$f10
  78:	44804000 	mtc1	zero,$f8
  7c:	46062000 	add.s	$f0,$f4,$f6
  80:	46000004 	sqrt.s	$f0,$f0
  84:	460002a1 	cvt.d.s	$f10,$f0
  88:	462a4103 	div.d	$f4,$f8,$f10
  8c:	46202420 	cvt.s.d	$f16,$f4
  90:	46101702 	mul.s	$f28,$f2,$f16
  94:	00000000 	nop
  98:	46106182 	mul.s	$f6,$f12,$f16
  9c:	00000000 	nop
  a0:	46107282 	mul.s	$f10,$f14,$f16
  a4:	e7a60054 	swc1	$f6,84(sp)
  a8:	c7a60098 	lwc1	$f6,152(sp)
  ac:	c7be0054 	lwc1	$f30,84(sp)
  b0:	e7aa0050 	swc1	$f10,80(sp)
  b4:	c7a40050 	lwc1	$f4,80(sp)
  b8:	46043282 	mul.s	$f10,$f6,$f4
  bc:	c7a6009c 	lwc1	$f6,156(sp)
  c0:	e7a40068 	swc1	$f4,104(sp)
  c4:	c7b00068 	lwc1	$f16,104(sp)
  c8:	461e3182 	mul.s	$f6,$f6,$f30
  cc:	46065281 	sub.s	$f10,$f10,$f6
  d0:	c7a60094 	lwc1	$f6,148(sp)
  d4:	e7aa004c 	swc1	$f10,76(sp)
  d8:	46043282 	mul.s	$f10,$f6,$f4
  dc:	c7a6009c 	lwc1	$f6,156(sp)
  e0:	c7b6004c 	lwc1	$f22,76(sp)
  e4:	461c3102 	mul.s	$f4,$f6,$f28
  e8:	c7a6004c 	lwc1	$f6,76(sp)
  ec:	460a2601 	sub.s	$f24,$f4,$f10
  f0:	c7a40094 	lwc1	$f4,148(sp)
  f4:	461e2282 	mul.s	$f10,$f4,$f30
  f8:	c7a40098 	lwc1	$f4,152(sp)
  fc:	e7b80050 	swc1	$f24,80(sp)
 100:	461c2202 	mul.s	$f8,$f4,$f28
 104:	46085681 	sub.s	$f26,$f10,$f8
 108:	4618c282 	mul.s	$f10,$f24,$f24
 10c:	c7a8004c 	lwc1	$f8,76(sp)
 110:	44815800 	mtc1	at,$f11
 114:	e7ba0058 	swc1	$f26,88(sp)
 118:	46064202 	mul.s	$f8,$f8,$f6
 11c:	460a4180 	add.s	$f6,$f8,$f10
 120:	461ad202 	mul.s	$f8,$f26,$f26
 124:	44805000 	mtc1	zero,$f10
 128:	46083000 	add.s	$f0,$f6,$f8
 12c:	46000004 	sqrt.s	$f0,$f0
 130:	46000121 	cvt.d.s	$f4,$f0
 134:	46245183 	div.d	$f6,$f10,$f4
 138:	46203520 	cvt.s.d	$f20,$f6
 13c:	4614b582 	mul.s	$f22,$f22,$f20
 140:	00000000 	nop
 144:	4614c602 	mul.s	$f24,$f24,$f20
 148:	00000000 	nop
 14c:	4614d682 	mul.s	$f26,$f26,$f20
 150:	00000000 	nop
 154:	461af202 	mul.s	$f8,$f30,$f26
 158:	00000000 	nop
 15c:	46188282 	mul.s	$f10,$f16,$f24
 160:	00000000 	nop
 164:	46168102 	mul.s	$f4,$f16,$f22
 168:	00000000 	nop
 16c:	461ae182 	mul.s	$f6,$f28,$f26
 170:	460a4081 	sub.s	$f2,$f8,$f10
 174:	4618e202 	mul.s	$f8,$f28,$f24
 178:	00000000 	nop
 17c:	4616f282 	mul.s	$f10,$f30,$f22
 180:	46062301 	sub.s	$f12,$f4,$f6
 184:	46021102 	mul.s	$f4,$f2,$f2
 188:	44812800 	mtc1	at,$f5
 18c:	3c013f80 	lui	at,0x3f80
 190:	460c6182 	mul.s	$f6,$f12,$f12
 194:	460a4381 	sub.s	$f14,$f8,$f10
 198:	460e7282 	mul.s	$f10,$f14,$f14
 19c:	46062200 	add.s	$f8,$f4,$f6
 1a0:	44802000 	mtc1	zero,$f4
 1a4:	460a4000 	add.s	$f0,$f8,$f10
 1a8:	46000004 	sqrt.s	$f0,$f0
 1ac:	460001a1 	cvt.d.s	$f6,$f0
 1b0:	46262203 	div.d	$f8,$f4,$f6
 1b4:	46204520 	cvt.s.d	$f20,$f8
 1b8:	46141282 	mul.s	$f10,$f2,$f20
 1bc:	e7aa0094 	swc1	$f10,148(sp)
 1c0:	e4960000 	swc1	$f22,0(a0)
 1c4:	e4980010 	swc1	$f24,16(a0)
 1c8:	e49a0020 	swc1	$f26,32(a0)
 1cc:	c7a4007c 	lwc1	$f4,124(sp)
 1d0:	c7a80080 	lwc1	$f8,128(sp)
 1d4:	46162182 	mul.s	$f6,$f4,$f22
 1d8:	00000000 	nop
 1dc:	46184282 	mul.s	$f10,$f8,$f24
 1e0:	c7a80084 	lwc1	$f8,132(sp)
 1e4:	460a3100 	add.s	$f4,$f6,$f10
 1e8:	461a4182 	mul.s	$f6,$f8,$f26
 1ec:	46062280 	add.s	$f10,$f4,$f6
 1f0:	46146002 	mul.s	$f0,$f12,$f20
 1f4:	46005207 	neg.s	$f8,$f10
 1f8:	46147082 	mul.s	$f2,$f14,$f20
 1fc:	e4880030 	swc1	$f8,48(a0)
 200:	c7ba007c 	lwc1	$f26,124(sp)
 204:	c7b00094 	lwc1	$f16,148(sp)
 208:	c7b80080 	lwc1	$f24,128(sp)
 20c:	c7b60084 	lwc1	$f22,132(sp)
 210:	4610d102 	mul.s	$f4,$f26,$f16
 214:	c7b20068 	lwc1	$f18,104(sp)
 218:	e4800014 	swc1	$f0,20(a0)
 21c:	4600c182 	mul.s	$f6,$f24,$f0
 220:	44800000 	mtc1	zero,$f0
 224:	e4820024 	swc1	$f2,36(a0)
 228:	4602b202 	mul.s	$f8,$f22,$f2
 22c:	e49c0008 	swc1	$f28,8(a0)
 230:	e49e0018 	swc1	$f30,24(a0)
 234:	e4900004 	swc1	$f16,4(a0)
 238:	e4920028 	swc1	$f18,40(a0)
 23c:	46062280 	add.s	$f10,$f4,$f6
 240:	e480000c 	swc1	$f0,12(a0)
 244:	e480001c 	swc1	$f0,28(a0)
 248:	e480002c 	swc1	$f0,44(a0)
 24c:	46085100 	add.s	$f4,$f10,$f8
 250:	461cd282 	mul.s	$f10,$f26,$f28
 254:	00000000 	nop
 258:	461ec202 	mul.s	$f8,$f24,$f30
 25c:	46002187 	neg.s	$f6,$f4
 260:	e4860034 	swc1	$f6,52(a0)
 264:	4612b182 	mul.s	$f6,$f22,$f18
 268:	46085100 	add.s	$f4,$f10,$f8
 26c:	46062280 	add.s	$f10,$f4,$f6
 270:	44812000 	mtc1	at,$f4
 274:	46005207 	neg.s	$f8,$f10
 278:	e484003c 	swc1	$f4,60(a0)
 27c:	e4880038 	swc1	$f8,56(a0)
 280:	8fbf0044 	lw	ra,68(sp)
 284:	d7be0038 	ldc1	$f30,56(sp)
 288:	d7bc0030 	ldc1	$f28,48(sp)
 28c:	d7ba0028 	ldc1	$f26,40(sp)
 290:	d7b80020 	ldc1	$f24,32(sp)
 294:	d7b60018 	ldc1	$f22,24(sp)
 298:	d7b40010 	ldc1	$f20,16(sp)
 29c:	03e00008 	jr	ra
 2a0:	27bd0078 	addiu	sp,sp,120

000002a4 <guLookAt>:
 2a4:	27bdff90 	addiu	sp,sp,-112
 2a8:	44856000 	mtc1	a1,$f12
 2ac:	44867000 	mtc1	a2,$f14
 2b0:	c7a40080 	lwc1	$f4,128(sp)
 2b4:	c7a60084 	lwc1	$f6,132(sp)
 2b8:	c7a80088 	lwc1	$f8,136(sp)
 2bc:	c7aa008c 	lwc1	$f10,140(sp)
 2c0:	c7b00090 	lwc1	$f16,144(sp)
 2c4:	c7b20094 	lwc1	$f18,148(sp)
 2c8:	afbf002c 	sw	ra,44(sp)
 2cc:	afa40070 	sw	a0,112(sp)
 2d0:	44056000 	mfc1	a1,$f12
 2d4:	44067000 	mfc1	a2,$f14
 2d8:	afa7007c 	sw	a3,124(sp)
 2dc:	27a40030 	addiu	a0,sp,48
 2e0:	e7a40010 	swc1	$f4,16(sp)
 2e4:	e7a60014 	swc1	$f6,20(sp)
 2e8:	e7a80018 	swc1	$f8,24(sp)
 2ec:	e7aa001c 	swc1	$f10,28(sp)
 2f0:	e7b00020 	swc1	$f16,32(sp)
 2f4:	0c000000 	jal	0 <guLookAtF>
 2f8:	e7b20024 	swc1	$f18,36(sp)
 2fc:	27a40030 	addiu	a0,sp,48
 300:	0c000000 	jal	0 <guLookAtF>
 304:	8fa50070 	lw	a1,112(sp)
 308:	8fbf002c 	lw	ra,44(sp)
 30c:	27bd0070 	addiu	sp,sp,112
 310:	03e00008 	jr	ra
 314:	00000000 	nop
	...
