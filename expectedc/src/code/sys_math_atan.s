
build/src/code/sys_math_atan.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <GetAtan2Tbl>:
   0:	44802000 	mtc1	zero,$f4
   4:	3c030000 	lui	v1,0x0
   8:	46047032 	c.eq.s	$f14,$f4
   c:	00000000 	nop
  10:	45020004 	bc1fl	24 <GetAtan2Tbl+0x24>
  14:	460e6183 	div.s	$f6,$f12,$f14
  18:	03e00008 	jr	ra
  1c:	94620000 	lhu	v0,0(v1)
  20:	460e6183 	div.s	$f6,$f12,$f14
  24:	3c014480 	lui	at,0x4480
  28:	44814000 	mtc1	at,$f8
  2c:	3c013f00 	lui	at,0x3f00
  30:	44818000 	mtc1	at,$f16
  34:	3c030000 	lui	v1,0x0
  38:	46083282 	mul.s	$f10,$f6,$f8
  3c:	46105480 	add.s	$f18,$f10,$f16
  40:	4600910d 	trunc.w.s	$f4,$f18
  44:	44022000 	mfc1	v0,$f4
  48:	00000000 	nop
  4c:	28410401 	slti	at,v0,1025
  50:	14200004 	bnez	at,64 <GetAtan2Tbl+0x64>
  54:	00027840 	sll	t7,v0,0x1
  58:	3c030000 	lui	v1,0x0
  5c:	03e00008 	jr	ra
  60:	94620000 	lhu	v0,0(v1)
  64:	006f1821 	addu	v1,v1,t7
  68:	94630000 	lhu	v1,0(v1)
  6c:	03e00008 	jr	ra
  70:	00601025 	move	v0,v1

00000074 <atan2s>:
  74:	44800000 	mtc1	zero,$f0
  78:	27bdffc8 	addiu	sp,sp,-56
  7c:	f7ba0028 	sdc1	$f26,40(sp)
  80:	460e003e 	c.le.s	$f0,$f14
  84:	f7b80020 	sdc1	$f24,32(sp)
  88:	46006606 	mov.s	$f24,$f12
  8c:	46007686 	mov.s	$f26,$f14
  90:	afbf0034 	sw	ra,52(sp)
  94:	f7b60018 	sdc1	$f22,24(sp)
  98:	45000024 	bc1f	12c <atan2s+0xb8>
  9c:	f7b40010 	sdc1	$f20,16(sp)
  a0:	460c003e 	c.le.s	$f0,$f12
  a4:	00000000 	nop
  a8:	45020011 	bc1fl	f0 <atan2s+0x7c>
  ac:	4600c507 	neg.s	$f20,$f24
  b0:	460c703e 	c.le.s	$f14,$f12
  b4:	00000000 	nop
  b8:	45020007 	bc1fl	d8 <atan2s+0x64>
  bc:	4600c306 	mov.s	$f12,$f24
  c0:	46007306 	mov.s	$f12,$f14
  c4:	0c000000 	jal	0 <GetAtan2Tbl>
  c8:	4600c386 	mov.s	$f14,$f24
  cc:	1000003c 	b	1c0 <atan2s+0x14c>
  d0:	00401825 	move	v1,v0
  d4:	4600c306 	mov.s	$f12,$f24
  d8:	0c000000 	jal	0 <GetAtan2Tbl>
  dc:	4600d386 	mov.s	$f14,$f26
  e0:	240e4000 	li	t6,16384
  e4:	10000036 	b	1c0 <atan2s+0x14c>
  e8:	01c21823 	subu	v1,t6,v0
  ec:	4600c507 	neg.s	$f20,$f24
  f0:	461aa03c 	c.lt.s	$f20,$f26
  f4:	00000000 	nop
  f8:	45020007 	bc1fl	118 <atan2s+0xa4>
  fc:	4600d306 	mov.s	$f12,$f26
 100:	4600a306 	mov.s	$f12,$f20
 104:	0c000000 	jal	0 <GetAtan2Tbl>
 108:	4600d386 	mov.s	$f14,$f26
 10c:	1000002c 	b	1c0 <atan2s+0x14c>
 110:	24434000 	addiu	v1,v0,16384
 114:	4600d306 	mov.s	$f12,$f26
 118:	0c000000 	jal	0 <GetAtan2Tbl>
 11c:	4600a386 	mov.s	$f14,$f20
 120:	340f8000 	li	t7,0x8000
 124:	10000026 	b	1c0 <atan2s+0x14c>
 128:	01e21823 	subu	v1,t7,v0
 12c:	4600c03c 	c.lt.s	$f24,$f0
 130:	00000000 	nop
 134:	45020014 	bc1fl	188 <atan2s+0x114>
 138:	4600d587 	neg.s	$f22,$f26
 13c:	4600c507 	neg.s	$f20,$f24
 140:	4600d587 	neg.s	$f22,$f26
 144:	4614b03e 	c.le.s	$f22,$f20
 148:	00000000 	nop
 14c:	45020008 	bc1fl	170 <atan2s+0xfc>
 150:	4600a306 	mov.s	$f12,$f20
 154:	4600b306 	mov.s	$f12,$f22
 158:	0c000000 	jal	0 <GetAtan2Tbl>
 15c:	4600a386 	mov.s	$f14,$f20
 160:	34018000 	li	at,0x8000
 164:	10000016 	b	1c0 <atan2s+0x14c>
 168:	00411821 	addu	v1,v0,at
 16c:	4600a306 	mov.s	$f12,$f20
 170:	0c000000 	jal	0 <GetAtan2Tbl>
 174:	4600b386 	mov.s	$f14,$f22
 178:	3418c000 	li	t8,0xc000
 17c:	10000010 	b	1c0 <atan2s+0x14c>
 180:	03021823 	subu	v1,t8,v0
 184:	4600d587 	neg.s	$f22,$f26
 188:	4616c03c 	c.lt.s	$f24,$f22
 18c:	00000000 	nop
 190:	45020008 	bc1fl	1b4 <atan2s+0x140>
 194:	4600b306 	mov.s	$f12,$f22
 198:	4600c306 	mov.s	$f12,$f24
 19c:	0c000000 	jal	0 <GetAtan2Tbl>
 1a0:	4600b386 	mov.s	$f14,$f22
 1a4:	3401c000 	li	at,0xc000
 1a8:	10000005 	b	1c0 <atan2s+0x14c>
 1ac:	00411821 	addu	v1,v0,at
 1b0:	4600b306 	mov.s	$f12,$f22
 1b4:	0c000000 	jal	0 <GetAtan2Tbl>
 1b8:	4600c386 	mov.s	$f14,$f24
 1bc:	00021823 	negu	v1,v0
 1c0:	8fbf0034 	lw	ra,52(sp)
 1c4:	00031400 	sll	v0,v1,0x10
 1c8:	d7b40010 	ldc1	$f20,16(sp)
 1cc:	d7b60018 	ldc1	$f22,24(sp)
 1d0:	d7b80020 	ldc1	$f24,32(sp)
 1d4:	d7ba0028 	ldc1	$f26,40(sp)
 1d8:	27bd0038 	addiu	sp,sp,56
 1dc:	03e00008 	jr	ra
 1e0:	00021403 	sra	v0,v0,0x10

000001e4 <atan2f>:
 1e4:	27bdffe8 	addiu	sp,sp,-24
 1e8:	afbf0014 	sw	ra,20(sp)
 1ec:	0c000000 	jal	0 <GetAtan2Tbl>
 1f0:	00000000 	nop
 1f4:	44822000 	mtc1	v0,$f4
 1f8:	3c010000 	lui	at,0x0
 1fc:	c4280000 	lwc1	$f8,0(at)
 200:	468021a0 	cvt.s.w	$f6,$f4
 204:	8fbf0014 	lw	ra,20(sp)
 208:	27bd0018 	addiu	sp,sp,24
 20c:	46083002 	mul.s	$f0,$f6,$f8
 210:	03e00008 	jr	ra
 214:	00000000 	nop
	...
