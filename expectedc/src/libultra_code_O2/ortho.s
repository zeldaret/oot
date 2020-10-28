
build/src/libultra_code_O2/ortho.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <guOrthoF>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa5001c 	sw	a1,28(sp)
   c:	afa60020 	sw	a2,32(sp)
  10:	afa70024 	sw	a3,36(sp)
  14:	0c000000 	jal	0 <guOrthoF>
  18:	afa40018 	sw	a0,24(sp)
  1c:	c7a40020 	lwc1	$f4,32(sp)
  20:	c7a6001c 	lwc1	$f6,28(sp)
  24:	3c014000 	lui	at,0x4000
  28:	44814000 	mtc1	at,$f8
  2c:	46062001 	sub.s	$f0,$f4,$f6
  30:	8fa20018 	lw	v0,24(sp)
  34:	c7ae0028 	lwc1	$f14,40(sp)
  38:	c7b00030 	lwc1	$f16,48(sp)
  3c:	46004283 	div.s	$f10,$f8,$f0
  40:	c7b2002c 	lwc1	$f18,44(sp)
  44:	44813000 	mtc1	at,$f6
  48:	3c01c000 	lui	at,0xc000
  4c:	46128301 	sub.s	$f12,$f16,$f18
  50:	00001825 	move	v1,zero
  54:	24040004 	li	a0,4
  58:	e44a0000 	swc1	$f10,0(v0)
  5c:	c7a40024 	lwc1	$f4,36(sp)
  60:	44815000 	mtc1	at,$f10
  64:	3c013f80 	lui	at,0x3f80
  68:	46047081 	sub.s	$f2,$f14,$f4
  6c:	460c5103 	div.s	$f4,$f10,$f12
  70:	46023203 	div.s	$f8,$f6,$f2
  74:	e4440028 	swc1	$f4,40(v0)
  78:	e4480014 	swc1	$f8,20(v0)
  7c:	c7a8001c 	lwc1	$f8,28(sp)
  80:	c7a60020 	lwc1	$f6,32(sp)
  84:	46083280 	add.s	$f10,$f6,$f8
  88:	46005107 	neg.s	$f4,$f10
  8c:	46002183 	div.s	$f6,$f4,$f0
  90:	e4460030 	swc1	$f6,48(v0)
  94:	c7a80024 	lwc1	$f8,36(sp)
  98:	46087280 	add.s	$f10,$f14,$f8
  9c:	46128200 	add.s	$f8,$f16,$f18
  a0:	46005107 	neg.s	$f4,$f10
  a4:	46004287 	neg.s	$f10,$f8
  a8:	46022183 	div.s	$f6,$f4,$f2
  ac:	460c5103 	div.s	$f4,$f10,$f12
  b0:	e4460034 	swc1	$f6,52(v0)
  b4:	44813000 	mtc1	at,$f6
  b8:	00000000 	nop
  bc:	e446003c 	swc1	$f6,60(v0)
  c0:	e4440038 	swc1	$f4,56(v0)
  c4:	c7a00034 	lwc1	$f0,52(sp)
  c8:	c4480000 	lwc1	$f8,0(v0)
  cc:	24630001 	addiu	v1,v1,1
  d0:	c4520004 	lwc1	$f18,4(v0)
  d4:	46004302 	mul.s	$f12,$f8,$f0
  d8:	c44e0008 	lwc1	$f14,8(v0)
  dc:	10640010 	beq	v1,a0,120 <guOrthoF+0x120>
  e0:	c450000c 	lwc1	$f16,12(v0)
  e4:	46009282 	mul.s	$f10,$f18,$f0
  e8:	c4480010 	lwc1	$f8,16(v0)
  ec:	c4520014 	lwc1	$f18,20(v0)
  f0:	46007182 	mul.s	$f6,$f14,$f0
  f4:	c44e0018 	lwc1	$f14,24(v0)
  f8:	24630001 	addiu	v1,v1,1
  fc:	46008102 	mul.s	$f4,$f16,$f0
 100:	c450001c 	lwc1	$f16,28(v0)
 104:	e44c0000 	swc1	$f12,0(v0)
 108:	46004302 	mul.s	$f12,$f8,$f0
 10c:	e44a0004 	swc1	$f10,4(v0)
 110:	e4460008 	swc1	$f6,8(v0)
 114:	24420010 	addiu	v0,v0,16
 118:	1464fff2 	bne	v1,a0,e4 <guOrthoF+0xe4>
 11c:	e444fffc 	swc1	$f4,-4(v0)
 120:	46009282 	mul.s	$f10,$f18,$f0
 124:	24420010 	addiu	v0,v0,16
 128:	e44cfff0 	swc1	$f12,-16(v0)
 12c:	46007182 	mul.s	$f6,$f14,$f0
 130:	00000000 	nop
 134:	46008102 	mul.s	$f4,$f16,$f0
 138:	e44afff4 	swc1	$f10,-12(v0)
 13c:	e446fff8 	swc1	$f6,-8(v0)
 140:	e444fffc 	swc1	$f4,-4(v0)
 144:	8fbf0014 	lw	ra,20(sp)
 148:	27bd0018 	addiu	sp,sp,24
 14c:	03e00008 	jr	ra
 150:	00000000 	nop

00000154 <guOrtho>:
 154:	27bdff98 	addiu	sp,sp,-104
 158:	44856000 	mtc1	a1,$f12
 15c:	44867000 	mtc1	a2,$f14
 160:	c7a40078 	lwc1	$f4,120(sp)
 164:	c7a6007c 	lwc1	$f6,124(sp)
 168:	c7a80080 	lwc1	$f8,128(sp)
 16c:	c7aa0084 	lwc1	$f10,132(sp)
 170:	afbf0024 	sw	ra,36(sp)
 174:	afa40068 	sw	a0,104(sp)
 178:	44056000 	mfc1	a1,$f12
 17c:	44067000 	mfc1	a2,$f14
 180:	afa70074 	sw	a3,116(sp)
 184:	27a40028 	addiu	a0,sp,40
 188:	e7a40010 	swc1	$f4,16(sp)
 18c:	e7a60014 	swc1	$f6,20(sp)
 190:	e7a80018 	swc1	$f8,24(sp)
 194:	0c000000 	jal	0 <guOrthoF>
 198:	e7aa001c 	swc1	$f10,28(sp)
 19c:	27a40028 	addiu	a0,sp,40
 1a0:	0c000000 	jal	0 <guOrthoF>
 1a4:	8fa50068 	lw	a1,104(sp)
 1a8:	8fbf0024 	lw	ra,36(sp)
 1ac:	27bd0068 	addiu	sp,sp,104
 1b0:	03e00008 	jr	ra
 1b4:	00000000 	nop
	...
