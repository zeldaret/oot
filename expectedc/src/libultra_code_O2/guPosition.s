
build/src/libultra_code_O2/guPosition.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <guPositionF>:
   0:	3c010000 	lui	at,0x0
   4:	c4200000 	lwc1	$f0,0(at)
   8:	44856000 	mtc1	a1,$f12
   c:	44867000 	mtc1	a2,$f14
  10:	27bdffb8 	addiu	sp,sp,-72
  14:	46006302 	mul.s	$f12,$f12,$f0
  18:	f7b40018 	sdc1	$f20,24(sp)
  1c:	4487a000 	mtc1	a3,$f20
  20:	46007382 	mul.s	$f14,$f14,$f0
  24:	afbf002c 	sw	ra,44(sp)
  28:	afb00028 	sw	s0,40(sp)
  2c:	4600a502 	mul.s	$f20,$f20,$f0
  30:	00808025 	move	s0,a0
  34:	f7b60020 	sdc1	$f22,32(sp)
  38:	e7ac004c 	swc1	$f12,76(sp)
  3c:	e7ae0050 	swc1	$f14,80(sp)
  40:	0c000000 	jal	0 <guPositionF>
  44:	e7b40054 	swc1	$f20,84(sp)
  48:	c7ac004c 	lwc1	$f12,76(sp)
  4c:	0c000000 	jal	0 <guPositionF>
  50:	46000506 	mov.s	$f20,$f0
  54:	46000586 	mov.s	$f22,$f0
  58:	0c000000 	jal	0 <guPositionF>
  5c:	c7ac0050 	lwc1	$f12,80(sp)
  60:	e7a00040 	swc1	$f0,64(sp)
  64:	0c000000 	jal	0 <guPositionF>
  68:	c7ac0050 	lwc1	$f12,80(sp)
  6c:	c7ac0054 	lwc1	$f12,84(sp)
  70:	0c000000 	jal	0 <guPositionF>
  74:	e7a00034 	swc1	$f0,52(sp)
  78:	c7ac0054 	lwc1	$f12,84(sp)
  7c:	0c000000 	jal	0 <guPositionF>
  80:	e7a0003c 	swc1	$f0,60(sp)
  84:	c7b00034 	lwc1	$f16,52(sp)
  88:	c7a20058 	lwc1	$f2,88(sp)
  8c:	c7ae003c 	lwc1	$f14,60(sp)
  90:	46008102 	mul.s	$f4,$f16,$f0
  94:	44809000 	mtc1	zero,$f18
  98:	3c013f80 	lui	at,0x3f80
  9c:	46022182 	mul.s	$f6,$f4,$f2
  a0:	00000000 	nop
  a4:	460e8202 	mul.s	$f8,$f16,$f14
  a8:	e6060000 	swc1	$f6,0(s0)
  ac:	46024282 	mul.s	$f10,$f8,$f2
  b0:	e60a0004 	swc1	$f10,4(s0)
  b4:	c7a40040 	lwc1	$f4,64(sp)
  b8:	e612000c 	swc1	$f18,12(s0)
  bc:	46002187 	neg.s	$f6,$f4
  c0:	46023202 	mul.s	$f8,$f6,$f2
  c4:	e6080008 	swc1	$f8,8(s0)
  c8:	c7aa0040 	lwc1	$f10,64(sp)
  cc:	e612001c 	swc1	$f18,28(s0)
  d0:	460aa302 	mul.s	$f12,$f20,$f10
  d4:	00000000 	nop
  d8:	46006102 	mul.s	$f4,$f12,$f0
  dc:	00000000 	nop
  e0:	460eb182 	mul.s	$f6,$f22,$f14
  e4:	46062201 	sub.s	$f8,$f4,$f6
  e8:	46024282 	mul.s	$f10,$f8,$f2
  ec:	00000000 	nop
  f0:	460e6102 	mul.s	$f4,$f12,$f14
  f4:	00000000 	nop
  f8:	4600b182 	mul.s	$f6,$f22,$f0
  fc:	e60a0010 	swc1	$f10,16(s0)
 100:	46062200 	add.s	$f8,$f4,$f6
 104:	46024282 	mul.s	$f10,$f8,$f2
 108:	00000000 	nop
 10c:	4610a102 	mul.s	$f4,$f20,$f16
 110:	e60a0014 	swc1	$f10,20(s0)
 114:	46022182 	mul.s	$f6,$f4,$f2
 118:	e6060018 	swc1	$f6,24(s0)
 11c:	c7a80040 	lwc1	$f8,64(sp)
 120:	e612002c 	swc1	$f18,44(s0)
 124:	4608b302 	mul.s	$f12,$f22,$f8
 128:	00000000 	nop
 12c:	46006282 	mul.s	$f10,$f12,$f0
 130:	00000000 	nop
 134:	460ea102 	mul.s	$f4,$f20,$f14
 138:	46045180 	add.s	$f6,$f10,$f4
 13c:	46023202 	mul.s	$f8,$f6,$f2
 140:	00000000 	nop
 144:	460e6282 	mul.s	$f10,$f12,$f14
 148:	00000000 	nop
 14c:	4600a102 	mul.s	$f4,$f20,$f0
 150:	e6080020 	swc1	$f8,32(s0)
 154:	46045181 	sub.s	$f6,$f10,$f4
 158:	46023202 	mul.s	$f8,$f6,$f2
 15c:	00000000 	nop
 160:	4610b282 	mul.s	$f10,$f22,$f16
 164:	e6080024 	swc1	$f8,36(s0)
 168:	46025102 	mul.s	$f4,$f10,$f2
 16c:	e6040028 	swc1	$f4,40(s0)
 170:	c7a6005c 	lwc1	$f6,92(sp)
 174:	44812000 	mtc1	at,$f4
 178:	e6060030 	swc1	$f6,48(s0)
 17c:	c7a80060 	lwc1	$f8,96(sp)
 180:	e6080034 	swc1	$f8,52(s0)
 184:	c7aa0064 	lwc1	$f10,100(sp)
 188:	e604003c 	swc1	$f4,60(s0)
 18c:	e60a0038 	swc1	$f10,56(s0)
 190:	8fbf002c 	lw	ra,44(sp)
 194:	8fb00028 	lw	s0,40(sp)
 198:	d7b60020 	ldc1	$f22,32(sp)
 19c:	d7b40018 	ldc1	$f20,24(sp)
 1a0:	03e00008 	jr	ra
 1a4:	27bd0048 	addiu	sp,sp,72

000001a8 <guPosition>:
 1a8:	27bdff98 	addiu	sp,sp,-104
 1ac:	44856000 	mtc1	a1,$f12
 1b0:	44867000 	mtc1	a2,$f14
 1b4:	c7a40078 	lwc1	$f4,120(sp)
 1b8:	c7a6007c 	lwc1	$f6,124(sp)
 1bc:	c7a80080 	lwc1	$f8,128(sp)
 1c0:	c7aa0084 	lwc1	$f10,132(sp)
 1c4:	afbf0024 	sw	ra,36(sp)
 1c8:	afa40068 	sw	a0,104(sp)
 1cc:	44056000 	mfc1	a1,$f12
 1d0:	44067000 	mfc1	a2,$f14
 1d4:	afa70074 	sw	a3,116(sp)
 1d8:	27a40028 	addiu	a0,sp,40
 1dc:	e7a40010 	swc1	$f4,16(sp)
 1e0:	e7a60014 	swc1	$f6,20(sp)
 1e4:	e7a80018 	swc1	$f8,24(sp)
 1e8:	0c000000 	jal	0 <guPositionF>
 1ec:	e7aa001c 	swc1	$f10,28(sp)
 1f0:	27a40028 	addiu	a0,sp,40
 1f4:	0c000000 	jal	0 <guPositionF>
 1f8:	8fa50068 	lw	a1,104(sp)
 1fc:	8fbf0024 	lw	ra,36(sp)
 200:	27bd0068 	addiu	sp,sp,104
 204:	03e00008 	jr	ra
 208:	00000000 	nop
 20c:	00000000 	nop
