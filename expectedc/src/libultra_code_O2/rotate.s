
build/src/libultra_code_O2/rotate.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <guRotateF>:
   0:	27bdffb8 	addiu	sp,sp,-72
   4:	afb00018 	sw	s0,24(sp)
   8:	00808025 	move	s0,a0
   c:	afbf001c 	sw	ra,28(sp)
  10:	afa5004c 	sw	a1,76(sp)
  14:	afa60050 	sw	a2,80(sp)
  18:	afa70054 	sw	a3,84(sp)
  1c:	27a60058 	addiu	a2,sp,88
  20:	27a50054 	addiu	a1,sp,84
  24:	0c000000 	jal	0 <guRotateF>
  28:	27a40050 	addiu	a0,sp,80
  2c:	3c010000 	lui	at,0x0
  30:	c7ac004c 	lwc1	$f12,76(sp)
  34:	c4240000 	lwc1	$f4,0(at)
  38:	46046302 	mul.s	$f12,$f12,$f4
  3c:	0c000000 	jal	0 <guRotateF>
  40:	e7ac004c 	swc1	$f12,76(sp)
  44:	c7ac004c 	lwc1	$f12,76(sp)
  48:	0c000000 	jal	0 <guRotateF>
  4c:	e7a00044 	swc1	$f0,68(sp)
  50:	c7ac0050 	lwc1	$f12,80(sp)
  54:	c7a80054 	lwc1	$f8,84(sp)
  58:	3c013f80 	lui	at,0x3f80
  5c:	44813000 	mtc1	at,$f6
  60:	46086282 	mul.s	$f10,$f12,$f8
  64:	c7a40058 	lwc1	$f4,88(sp)
  68:	46003081 	sub.s	$f2,$f6,$f0
  6c:	02002025 	move	a0,s0
  70:	e7a00040 	swc1	$f0,64(sp)
  74:	46025482 	mul.s	$f18,$f10,$f2
  78:	00000000 	nop
  7c:	46044182 	mul.s	$f6,$f8,$f4
  80:	e7b2003c 	swc1	$f18,60(sp)
  84:	46023282 	mul.s	$f10,$f6,$f2
  88:	00000000 	nop
  8c:	460c2202 	mul.s	$f8,$f4,$f12
  90:	e7aa0038 	swc1	$f10,56(sp)
  94:	46024182 	mul.s	$f6,$f8,$f2
  98:	0c000000 	jal	0 <guRotateF>
  9c:	e7a60034 	swc1	$f6,52(sp)
  a0:	c7ae0044 	lwc1	$f14,68(sp)
  a4:	c7aa0050 	lwc1	$f10,80(sp)
  a8:	c7a40054 	lwc1	$f4,84(sp)
  ac:	c7a60058 	lwc1	$f6,88(sp)
  b0:	460e5002 	mul.s	$f0,$f10,$f14
  b4:	3c013f80 	lui	at,0x3f80
  b8:	c7b00040 	lwc1	$f16,64(sp)
  bc:	460e2202 	mul.s	$f8,$f4,$f14
  c0:	c7b2003c 	lwc1	$f18,60(sp)
  c4:	460e3102 	mul.s	$f4,$f6,$f14
  c8:	00000000 	nop
  cc:	460a5082 	mul.s	$f2,$f10,$f10
  d0:	e7a80028 	swc1	$f8,40(sp)
  d4:	44814000 	mtc1	at,$f8
  d8:	e7a40024 	swc1	$f4,36(sp)
  dc:	46024181 	sub.s	$f6,$f8,$f2
  e0:	46103102 	mul.s	$f4,$f6,$f16
  e4:	46022280 	add.s	$f10,$f4,$f2
  e8:	e60a0000 	swc1	$f10,0(s0)
  ec:	c7a80038 	lwc1	$f8,56(sp)
  f0:	46004181 	sub.s	$f6,$f8,$f0
  f4:	e6060024 	swc1	$f6,36(s0)
  f8:	c7a40038 	lwc1	$f4,56(sp)
  fc:	44813000 	mtc1	at,$f6
 100:	46002280 	add.s	$f10,$f4,$f0
 104:	e60a0018 	swc1	$f10,24(s0)
 108:	c7a80054 	lwc1	$f8,84(sp)
 10c:	46084302 	mul.s	$f12,$f8,$f8
 110:	460c3101 	sub.s	$f4,$f6,$f12
 114:	46102282 	mul.s	$f10,$f4,$f16
 118:	460c5200 	add.s	$f8,$f10,$f12
 11c:	e6080014 	swc1	$f8,20(s0)
 120:	c7a20034 	lwc1	$f2,52(sp)
 124:	c7a60028 	lwc1	$f6,40(sp)
 128:	46061100 	add.s	$f4,$f2,$f6
 12c:	e6040020 	swc1	$f4,32(s0)
 130:	c7aa0028 	lwc1	$f10,40(sp)
 134:	44812000 	mtc1	at,$f4
 138:	460a1201 	sub.s	$f8,$f2,$f10
 13c:	e6080008 	swc1	$f8,8(s0)
 140:	c7a60058 	lwc1	$f6,88(sp)
 144:	46063002 	mul.s	$f0,$f6,$f6
 148:	46002281 	sub.s	$f10,$f4,$f0
 14c:	46105202 	mul.s	$f8,$f10,$f16
 150:	46004180 	add.s	$f6,$f8,$f0
 154:	e6060028 	swc1	$f6,40(s0)
 158:	c7a40024 	lwc1	$f4,36(sp)
 15c:	46049281 	sub.s	$f10,$f18,$f4
 160:	e60a0010 	swc1	$f10,16(s0)
 164:	c7a80024 	lwc1	$f8,36(sp)
 168:	46089180 	add.s	$f6,$f18,$f8
 16c:	e6060004 	swc1	$f6,4(s0)
 170:	8fbf001c 	lw	ra,28(sp)
 174:	8fb00018 	lw	s0,24(sp)
 178:	27bd0048 	addiu	sp,sp,72
 17c:	03e00008 	jr	ra
 180:	00000000 	nop

00000184 <guRotate>:
 184:	27bdffa0 	addiu	sp,sp,-96
 188:	44856000 	mtc1	a1,$f12
 18c:	44867000 	mtc1	a2,$f14
 190:	c7a40070 	lwc1	$f4,112(sp)
 194:	afbf001c 	sw	ra,28(sp)
 198:	afa40060 	sw	a0,96(sp)
 19c:	44056000 	mfc1	a1,$f12
 1a0:	44067000 	mfc1	a2,$f14
 1a4:	afa7006c 	sw	a3,108(sp)
 1a8:	27a40020 	addiu	a0,sp,32
 1ac:	0c000000 	jal	0 <guRotateF>
 1b0:	e7a40010 	swc1	$f4,16(sp)
 1b4:	27a40020 	addiu	a0,sp,32
 1b8:	0c000000 	jal	0 <guRotateF>
 1bc:	8fa50060 	lw	a1,96(sp)
 1c0:	8fbf001c 	lw	ra,28(sp)
 1c4:	27bd0060 	addiu	sp,sp,96
 1c8:	03e00008 	jr	ra
 1cc:	00000000 	nop
