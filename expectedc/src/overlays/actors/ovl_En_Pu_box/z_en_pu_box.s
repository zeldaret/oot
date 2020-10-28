
build/src/overlays/actors/ovl_En_Pu_box/z_en_pu_box.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnPubox_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa50034 	sw	a1,52(sp)
  10:	afa0002c 	sw	zero,44(sp)
  14:	8482001c 	lh	v0,28(a0)
  18:	00808025 	move	s0,a0
  1c:	02002025 	move	a0,s0
  20:	1040000c 	beqz	v0,54 <EnPubox_Init+0x54>
  24:	3c053b23 	lui	a1,0x3b23
  28:	24010001 	li	at,1
  2c:	1041000d 	beq	v0,at,64 <EnPubox_Init+0x64>
  30:	02002025 	move	a0,s0
  34:	24010002 	li	at,2
  38:	1041000f 	beq	v0,at,78 <EnPubox_Init+0x78>
  3c:	02002025 	move	a0,s0
  40:	24010003 	li	at,3
  44:	10410011 	beq	v0,at,8c <EnPubox_Init+0x8c>
  48:	02002025 	move	a0,s0
  4c:	10000013 	b	9c <EnPubox_Init+0x9c>
  50:	3c014496 	lui	at,0x4496
  54:	0c000000 	jal	0 <EnPubox_Init>
  58:	34a5d70a 	ori	a1,a1,0xd70a
  5c:	1000000f 	b	9c <EnPubox_Init+0x9c>
  60:	3c014496 	lui	at,0x4496
  64:	3c053ba3 	lui	a1,0x3ba3
  68:	0c000000 	jal	0 <EnPubox_Init>
  6c:	34a5d70a 	ori	a1,a1,0xd70a
  70:	1000000a 	b	9c <EnPubox_Init+0x9c>
  74:	3c014496 	lui	at,0x4496
  78:	3c053bf5 	lui	a1,0x3bf5
  7c:	0c000000 	jal	0 <EnPubox_Init>
  80:	34a5c28f 	ori	a1,a1,0xc28f
  84:	10000005 	b	9c <EnPubox_Init+0x9c>
  88:	3c014496 	lui	at,0x4496
  8c:	3c053c23 	lui	a1,0x3c23
  90:	0c000000 	jal	0 <EnPubox_Init>
  94:	34a5d70a 	ori	a1,a1,0xd70a
  98:	3c014496 	lui	at,0x4496
  9c:	44812000 	mtc1	at,$f4
  a0:	3c014434 	lui	at,0x4434
  a4:	44813000 	mtc1	at,$f6
  a8:	240e0001 	li	t6,1
  ac:	240f0014 	li	t7,20
  b0:	24180032 	li	t8,50
  b4:	3c060000 	lui	a2,0x0
  b8:	ae0e0164 	sw	t6,356(s0)
  bc:	a60f00a8 	sh	t7,168(s0)
  c0:	a61800aa 	sh	t8,170(s0)
  c4:	24c60000 	addiu	a2,a2,0
  c8:	260400b4 	addiu	a0,s0,180
  cc:	24050000 	li	a1,0
  d0:	3c0740c0 	lui	a3,0x40c0
  d4:	e60400fc 	swc1	$f4,252(s0)
  d8:	0c000000 	jal	0 <EnPubox_Init>
  dc:	e60600f8 	swc1	$f6,248(s0)
  e0:	3c01c000 	lui	at,0xc000
  e4:	44814000 	mtc1	at,$f8
  e8:	24190001 	li	t9,1
  ec:	3c040000 	lui	a0,0x0
  f0:	a2000160 	sb	zero,352(s0)
  f4:	ae00015c 	sw	zero,348(s0)
  f8:	a219001f 	sb	t9,31(s0)
  fc:	24840000 	addiu	a0,a0,0
 100:	27a5002c 	addiu	a1,sp,44
 104:	0c000000 	jal	0 <EnPubox_Init>
 108:	e608006c 	swc1	$f8,108(s0)
 10c:	8fa40034 	lw	a0,52(sp)
 110:	02003025 	move	a2,s0
 114:	8fa7002c 	lw	a3,44(sp)
 118:	0c000000 	jal	0 <EnPubox_Init>
 11c:	24850810 	addiu	a1,a0,2064
 120:	ae02014c 	sw	v0,332(s0)
 124:	8fbf001c 	lw	ra,28(sp)
 128:	8fb00018 	lw	s0,24(sp)
 12c:	27bd0030 	addiu	sp,sp,48
 130:	03e00008 	jr	ra
 134:	00000000 	nop

00000138 <EnPubox_Destroy>:
 138:	27bdffe8 	addiu	sp,sp,-24
 13c:	afa40018 	sw	a0,24(sp)
 140:	8fae0018 	lw	t6,24(sp)
 144:	afbf0014 	sw	ra,20(sp)
 148:	00a02025 	move	a0,a1
 14c:	24a50810 	addiu	a1,a1,2064
 150:	0c000000 	jal	0 <EnPubox_Init>
 154:	8dc6014c 	lw	a2,332(t6)
 158:	8fbf0014 	lw	ra,20(sp)
 15c:	27bd0018 	addiu	sp,sp,24
 160:	03e00008 	jr	ra
 164:	00000000 	nop

00000168 <EnPubox_Update>:
 168:	27bdffd8 	addiu	sp,sp,-40
 16c:	afbf0024 	sw	ra,36(sp)
 170:	afb00020 	sw	s0,32(sp)
 174:	afa5002c 	sw	a1,44(sp)
 178:	c4840068 	lwc1	$f4,104(a0)
 17c:	c4860150 	lwc1	$f6,336(a0)
 180:	3c01c020 	lui	at,0xc020
 184:	44811000 	mtc1	at,$f2
 188:	46062200 	add.s	$f8,$f4,$f6
 18c:	848e0158 	lh	t6,344(a0)
 190:	00808025 	move	s0,a0
 194:	3c014020 	lui	at,0x4020
 198:	e4880068 	swc1	$f8,104(a0)
 19c:	c4800068 	lwc1	$f0,104(a0)
 1a0:	a48e0032 	sh	t6,50(a0)
 1a4:	4602003c 	c.lt.s	$f0,$f2
 1a8:	00000000 	nop
 1ac:	45020004 	bc1fl	1c0 <EnPubox_Update+0x58>
 1b0:	44816000 	mtc1	at,$f12
 1b4:	1000000b 	b	1e4 <EnPubox_Update+0x7c>
 1b8:	e4820068 	swc1	$f2,104(a0)
 1bc:	44816000 	mtc1	at,$f12
 1c0:	00000000 	nop
 1c4:	4600603c 	c.lt.s	$f12,$f0
 1c8:	00000000 	nop
 1cc:	45020004 	bc1fl	1e0 <EnPubox_Update+0x78>
 1d0:	46000086 	mov.s	$f2,$f0
 1d4:	10000002 	b	1e0 <EnPubox_Update+0x78>
 1d8:	46006086 	mov.s	$f2,$f12
 1dc:	46000086 	mov.s	$f2,$f0
 1e0:	e6020068 	swc1	$f2,104(s0)
 1e4:	3c013f80 	lui	at,0x3f80
 1e8:	44811000 	mtc1	at,$f2
 1ec:	44800000 	mtc1	zero,$f0
 1f0:	26040068 	addiu	a0,s0,104
 1f4:	44061000 	mfc1	a2,$f2
 1f8:	44071000 	mfc1	a3,$f2
 1fc:	44050000 	mfc1	a1,$f0
 200:	0c000000 	jal	0 <EnPubox_Init>
 204:	e7a00010 	swc1	$f0,16(sp)
 208:	44800000 	mtc1	zero,$f0
 20c:	c60a0068 	lwc1	$f10,104(s0)
 210:	3c070000 	lui	a3,0x0
 214:	24e70000 	addiu	a3,a3,0
 218:	460a0032 	c.eq.s	$f0,$f10
 21c:	2404200a 	li	a0,8202
 220:	260500e4 	addiu	a1,s0,228
 224:	24060004 	li	a2,4
 228:	45010007 	bc1t	248 <EnPubox_Update+0xe0>
 22c:	3c0f0000 	lui	t7,0x0
 230:	25ef0000 	addiu	t7,t7,0
 234:	afaf0014 	sw	t7,20(sp)
 238:	0c000000 	jal	0 <EnPubox_Init>
 23c:	afa70010 	sw	a3,16(sp)
 240:	44800000 	mtc1	zero,$f0
 244:	00000000 	nop
 248:	e6000154 	swc1	$f0,340(s0)
 24c:	e6000150 	swc1	$f0,336(s0)
 250:	0c000000 	jal	0 <EnPubox_Init>
 254:	02002025 	move	a0,s0
 258:	861800aa 	lh	t8,170(s0)
 25c:	861900a8 	lh	t9,168(s0)
 260:	2408001d 	li	t0,29
 264:	44988000 	mtc1	t8,$f16
 268:	44999000 	mtc1	t9,$f18
 26c:	afa80014 	sw	t0,20(sp)
 270:	46808420 	cvt.s.w	$f16,$f16
 274:	8fa4002c 	lw	a0,44(sp)
 278:	02002825 	move	a1,s0
 27c:	46809020 	cvt.s.w	$f0,$f18
 280:	44068000 	mfc1	a2,$f16
 284:	44070000 	mfc1	a3,$f0
 288:	0c000000 	jal	0 <EnPubox_Init>
 28c:	e7a00010 	swc1	$f0,16(sp)
 290:	8e0a0024 	lw	t2,36(s0)
 294:	8e090028 	lw	t1,40(s0)
 298:	ae0a0038 	sw	t2,56(s0)
 29c:	8e0a002c 	lw	t2,44(s0)
 2a0:	ae09003c 	sw	t1,60(s0)
 2a4:	ae0a0040 	sw	t2,64(s0)
 2a8:	8fbf0024 	lw	ra,36(sp)
 2ac:	8fb00020 	lw	s0,32(sp)
 2b0:	27bd0028 	addiu	sp,sp,40
 2b4:	03e00008 	jr	ra
 2b8:	00000000 	nop

000002bc <EnPubox_Draw>:
 2bc:	27bdffe8 	addiu	sp,sp,-24
 2c0:	afa40018 	sw	a0,24(sp)
 2c4:	00a02025 	move	a0,a1
 2c8:	afbf0014 	sw	ra,20(sp)
 2cc:	3c050000 	lui	a1,0x0
 2d0:	0c000000 	jal	0 <EnPubox_Init>
 2d4:	24a50000 	addiu	a1,a1,0
 2d8:	8fbf0014 	lw	ra,20(sp)
 2dc:	27bd0018 	addiu	sp,sp,24
 2e0:	03e00008 	jr	ra
 2e4:	00000000 	nop
	...
