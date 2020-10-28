
build/src/boot/viconfig.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ViConfig_UpdateVi>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	10800017 	beqz	a0,68 <ViConfig_UpdateVi+0x68>
   c:	afa40018 	sw	a0,24(sp)
  10:	3c013f80 	lui	at,0x3f80
  14:	44812000 	mtc1	at,$f4
  18:	3c040000 	lui	a0,0x0
  1c:	24840000 	addiu	a0,a0,0
  20:	460021a1 	cvt.d.s	$f6,$f4
  24:	44073000 	mfc1	a3,$f6
  28:	44063800 	mfc1	a2,$f7
  2c:	0c000000 	jal	0 <ViConfig_UpdateVi>
  30:	00000000 	nop
  34:	3c0f0000 	lui	t7,0x0
  38:	8def0000 	lw	t7,0(t7)
  3c:	3c040000 	lui	a0,0x0
  40:	55e00004 	bnezl	t7,54 <ViConfig_UpdateVi+0x54>
  44:	3c013f80 	lui	at,0x3f80
  48:	0c000000 	jal	0 <ViConfig_UpdateVi>
  4c:	24840000 	addiu	a0,a0,0
  50:	3c013f80 	lui	at,0x3f80
  54:	44816000 	mtc1	at,$f12
  58:	0c000000 	jal	0 <ViConfig_UpdateVi>
  5c:	00000000 	nop
  60:	1000002e 	b	11c <ViConfig_UpdateVi+0x11c>
  64:	8fb80018 	lw	t8,24(sp)
  68:	3c040000 	lui	a0,0x0
  6c:	0c000000 	jal	0 <ViConfig_UpdateVi>
  70:	24840000 	addiu	a0,a0,0
  74:	3c040000 	lui	a0,0x0
  78:	90840000 	lbu	a0,0(a0)
  7c:	10800003 	beqz	a0,8c <ViConfig_UpdateVi+0x8c>
  80:	00000000 	nop
  84:	0c000000 	jal	0 <ViConfig_UpdateVi>
  88:	00000000 	nop
  8c:	3c040000 	lui	a0,0x0
  90:	8c840000 	lw	a0,0(a0)
  94:	10800003 	beqz	a0,a4 <ViConfig_UpdateVi+0xa4>
  98:	00000000 	nop
  9c:	0c000000 	jal	0 <ViConfig_UpdateVi>
  a0:	00000000 	nop
  a4:	3c010000 	lui	at,0x0
  a8:	c42c0000 	lwc1	$f12,0(at)
  ac:	3c013f80 	lui	at,0x3f80
  b0:	44814000 	mtc1	at,$f8
  b4:	00000000 	nop
  b8:	460c4032 	c.eq.s	$f8,$f12
  bc:	00000000 	nop
  c0:	45010003 	bc1t	d0 <ViConfig_UpdateVi+0xd0>
  c4:	00000000 	nop
  c8:	0c000000 	jal	0 <ViConfig_UpdateVi>
  cc:	00000000 	nop
  d0:	3c010000 	lui	at,0x0
  d4:	c4200000 	lwc1	$f0,0(at)
  d8:	3c013f80 	lui	at,0x3f80
  dc:	44815000 	mtc1	at,$f10
  e0:	00000000 	nop
  e4:	46005032 	c.eq.s	$f10,$f0
  e8:	00000000 	nop
  ec:	4503000b 	bc1tl	11c <ViConfig_UpdateVi+0x11c>
  f0:	8fb80018 	lw	t8,24(sp)
  f4:	46000421 	cvt.d.s	$f16,$f0
  f8:	3c040000 	lui	a0,0x0
  fc:	44078000 	mfc1	a3,$f16
 100:	44068800 	mfc1	a2,$f17
 104:	0c000000 	jal	0 <ViConfig_UpdateVi>
 108:	24840020 	addiu	a0,a0,32
 10c:	3c010000 	lui	at,0x0
 110:	0c000000 	jal	0 <ViConfig_UpdateVi>
 114:	c42c0000 	lwc1	$f12,0(at)
 118:	8fb80018 	lw	t8,24(sp)
 11c:	3c190000 	lui	t9,0x0
 120:	27390000 	addiu	t9,t9,0
 124:	a3380000 	sb	t8,0(t9)
 128:	8fbf0014 	lw	ra,20(sp)
 12c:	27bd0018 	addiu	sp,sp,24
 130:	03e00008 	jr	ra
 134:	00000000 	nop

00000138 <ViConfig_UpdateBlack>:
 138:	27bdffe8 	addiu	sp,sp,-24
 13c:	3c0e0000 	lui	t6,0x0
 140:	afbf0014 	sw	ra,20(sp)
 144:	25ce0000 	addiu	t6,t6,0
 148:	91cf0000 	lbu	t7,0(t6)
 14c:	11e00005 	beqz	t7,164 <ViConfig_UpdateBlack+0x2c>
 150:	00000000 	nop
 154:	0c000000 	jal	0 <ViConfig_UpdateVi>
 158:	24040001 	li	a0,1
 15c:	10000004 	b	170 <ViConfig_UpdateBlack+0x38>
 160:	8fbf0014 	lw	ra,20(sp)
 164:	0c000000 	jal	0 <ViConfig_UpdateVi>
 168:	00002025 	move	a0,zero
 16c:	8fbf0014 	lw	ra,20(sp)
 170:	27bd0018 	addiu	sp,sp,24
 174:	03e00008 	jr	ra
 178:	00000000 	nop
 17c:	00000000 	nop
