
build/src/libultra_code_O2/guPerspectiveF.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <guPerspectiveF>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	44867000 	mtc1	a2,$f14
   8:	afbf0014 	sw	ra,20(sp)
   c:	afa7003c 	sw	a3,60(sp)
  10:	afa40030 	sw	a0,48(sp)
  14:	afa50034 	sw	a1,52(sp)
  18:	0c000000 	jal	0 <guPerspectiveF>
  1c:	e7ae0038 	swc1	$f14,56(sp)
  20:	c7ae0038 	lwc1	$f14,56(sp)
  24:	3c010000 	lui	at,0x0
  28:	d4260000 	ldc1	$f6,0(at)
  2c:	46007121 	cvt.d.s	$f4,$f14
  30:	3c014000 	lui	at,0x4000
  34:	46262202 	mul.d	$f8,$f4,$f6
  38:	44815000 	mtc1	at,$f10
  3c:	462043a0 	cvt.s.d	$f14,$f8
  40:	460a7303 	div.s	$f12,$f14,$f10
  44:	0c000000 	jal	0 <guPerspectiveF>
  48:	e7ac001c 	swc1	$f12,28(sp)
  4c:	c7ac001c 	lwc1	$f12,28(sp)
  50:	0c000000 	jal	0 <guPerspectiveF>
  54:	e7a00020 	swc1	$f0,32(sp)
  58:	c7a40020 	lwc1	$f4,32(sp)
  5c:	c7a6003c 	lwc1	$f6,60(sp)
  60:	c7ae0040 	lwc1	$f14,64(sp)
  64:	46002083 	div.s	$f2,$f4,$f0
  68:	c7b00044 	lwc1	$f16,68(sp)
  6c:	3c01bf80 	lui	at,0xbf80
  70:	44812000 	mtc1	at,$f4
  74:	46107480 	add.s	$f18,$f14,$f16
  78:	8fa20030 	lw	v0,48(sp)
  7c:	3c014000 	lui	at,0x4000
  80:	46107301 	sub.s	$f12,$f14,$f16
  84:	8fa50034 	lw	a1,52(sp)
  88:	e444002c 	swc1	$f4,44(v0)
  8c:	00001825 	move	v1,zero
  90:	24040004 	li	a0,4
  94:	460c9283 	div.s	$f10,$f18,$f12
  98:	e4420014 	swc1	$f2,20(v0)
  9c:	46061203 	div.s	$f8,$f2,$f6
  a0:	44813000 	mtc1	at,$f6
  a4:	e44a0028 	swc1	$f10,40(v0)
  a8:	e4480000 	swc1	$f8,0(v0)
  ac:	460e3202 	mul.s	$f8,$f6,$f14
  b0:	44803000 	mtc1	zero,$f6
  b4:	00000000 	nop
  b8:	e446003c 	swc1	$f6,60(v0)
  bc:	46104282 	mul.s	$f10,$f8,$f16
  c0:	460c5103 	div.s	$f4,$f10,$f12
  c4:	e4440038 	swc1	$f4,56(v0)
  c8:	c7a00048 	lwc1	$f0,72(sp)
  cc:	c4460000 	lwc1	$f6,0(v0)
  d0:	24630001 	addiu	v1,v1,1
  d4:	c4500004 	lwc1	$f16,4(v0)
  d8:	46003282 	mul.s	$f10,$f6,$f0
  dc:	c44c0008 	lwc1	$f12,8(v0)
  e0:	10640010 	beq	v1,a0,124 <guPerspectiveF+0x124>
  e4:	c44e000c 	lwc1	$f14,12(v0)
  e8:	46008202 	mul.s	$f8,$f16,$f0
  ec:	c4460010 	lwc1	$f6,16(v0)
  f0:	c4500014 	lwc1	$f16,20(v0)
  f4:	46006102 	mul.s	$f4,$f12,$f0
  f8:	c44c0018 	lwc1	$f12,24(v0)
  fc:	24630001 	addiu	v1,v1,1
 100:	46007082 	mul.s	$f2,$f14,$f0
 104:	c44e001c 	lwc1	$f14,28(v0)
 108:	e44a0000 	swc1	$f10,0(v0)
 10c:	46003282 	mul.s	$f10,$f6,$f0
 110:	e4480004 	swc1	$f8,4(v0)
 114:	e4440008 	swc1	$f4,8(v0)
 118:	24420010 	addiu	v0,v0,16
 11c:	1464fff2 	bne	v1,a0,e8 <guPerspectiveF+0xe8>
 120:	e442fffc 	swc1	$f2,-4(v0)
 124:	46008202 	mul.s	$f8,$f16,$f0
 128:	24420010 	addiu	v0,v0,16
 12c:	e44afff0 	swc1	$f10,-16(v0)
 130:	46006102 	mul.s	$f4,$f12,$f0
 134:	00000000 	nop
 138:	46007082 	mul.s	$f2,$f14,$f0
 13c:	e448fff4 	swc1	$f8,-12(v0)
 140:	e444fff8 	swc1	$f4,-8(v0)
 144:	e442fffc 	swc1	$f2,-4(v0)
 148:	10a00035 	beqz	a1,220 <guPerspectiveF+0x220>
 14c:	3c014000 	lui	at,0x4000
 150:	44814800 	mtc1	at,$f9
 154:	44804000 	mtc1	zero,$f8
 158:	46009021 	cvt.d.s	$f0,$f18
 15c:	340effff 	li	t6,0xffff
 160:	4628003e 	c.le.d	$f0,$f8
 164:	3c014100 	lui	at,0x4100
 168:	45020004 	bc1fl	17c <guPerspectiveF+0x17c>
 16c:	44815800 	mtc1	at,$f11
 170:	1000002b 	b	220 <guPerspectiveF+0x220>
 174:	a4ae0000 	sh	t6,0(a1)
 178:	44815800 	mtc1	at,$f11
 17c:	44805000 	mtc1	zero,$f10
 180:	24180001 	li	t8,1
 184:	3c0141e0 	lui	at,0x41e0
 188:	46205103 	div.d	$f4,$f10,$f0
 18c:	24080001 	li	t0,1
 190:	444ff800 	cfc1	t7,$31
 194:	44d8f800 	ctc1	t8,$31
 198:	00000000 	nop
 19c:	462021a4 	cvt.w.d	$f6,$f4
 1a0:	4458f800 	cfc1	t8,$31
 1a4:	00000000 	nop
 1a8:	33180078 	andi	t8,t8,0x78
 1ac:	53000014 	beqzl	t8,200 <guPerspectiveF+0x200>
 1b0:	44183000 	mfc1	t8,$f6
 1b4:	44813800 	mtc1	at,$f7
 1b8:	44803000 	mtc1	zero,$f6
 1bc:	24180001 	li	t8,1
 1c0:	46262181 	sub.d	$f6,$f4,$f6
 1c4:	44d8f800 	ctc1	t8,$31
 1c8:	00000000 	nop
 1cc:	462031a4 	cvt.w.d	$f6,$f6
 1d0:	4458f800 	cfc1	t8,$31
 1d4:	00000000 	nop
 1d8:	33180078 	andi	t8,t8,0x78
 1dc:	17000005 	bnez	t8,1f4 <guPerspectiveF+0x1f4>
 1e0:	00000000 	nop
 1e4:	44183000 	mfc1	t8,$f6
 1e8:	3c018000 	lui	at,0x8000
 1ec:	10000007 	b	20c <guPerspectiveF+0x20c>
 1f0:	0301c025 	or	t8,t8,at
 1f4:	10000005 	b	20c <guPerspectiveF+0x20c>
 1f8:	2418ffff 	li	t8,-1
 1fc:	44183000 	mfc1	t8,$f6
 200:	00000000 	nop
 204:	0700fffb 	bltz	t8,1f4 <guPerspectiveF+0x1f4>
 208:	00000000 	nop
 20c:	44cff800 	ctc1	t7,$31
 210:	3319ffff 	andi	t9,t8,0xffff
 214:	1f200002 	bgtz	t9,220 <guPerspectiveF+0x220>
 218:	a4b80000 	sh	t8,0(a1)
 21c:	a4a80000 	sh	t0,0(a1)
 220:	8fbf0014 	lw	ra,20(sp)
 224:	27bd0030 	addiu	sp,sp,48
 228:	03e00008 	jr	ra
 22c:	00000000 	nop

00000230 <guPerspective>:
 230:	27bdff98 	addiu	sp,sp,-104
 234:	44866000 	mtc1	a2,$f12
 238:	44877000 	mtc1	a3,$f14
 23c:	c7a40078 	lwc1	$f4,120(sp)
 240:	c7a6007c 	lwc1	$f6,124(sp)
 244:	c7a80080 	lwc1	$f8,128(sp)
 248:	afbf0024 	sw	ra,36(sp)
 24c:	afa40068 	sw	a0,104(sp)
 250:	44066000 	mfc1	a2,$f12
 254:	44077000 	mfc1	a3,$f14
 258:	27a40028 	addiu	a0,sp,40
 25c:	e7a40010 	swc1	$f4,16(sp)
 260:	e7a60014 	swc1	$f6,20(sp)
 264:	0c000000 	jal	0 <guPerspectiveF>
 268:	e7a80018 	swc1	$f8,24(sp)
 26c:	27a40028 	addiu	a0,sp,40
 270:	0c000000 	jal	0 <guPerspectiveF>
 274:	8fa50068 	lw	a1,104(sp)
 278:	8fbf0024 	lw	ra,36(sp)
 27c:	27bd0068 	addiu	sp,sp,104
 280:	03e00008 	jr	ra
 284:	00000000 	nop
	...
