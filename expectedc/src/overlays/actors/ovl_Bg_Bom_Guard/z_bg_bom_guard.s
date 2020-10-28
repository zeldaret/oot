
build/src/overlays/actors/ovl_Bg_Bom_Guard/z_bg_bom_guard.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgBomGuard_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850164 	sw	a1,356(a0)

00000008 <BgBomGuard_Init>:
   8:	27bdffd0 	addiu	sp,sp,-48
   c:	afbf001c 	sw	ra,28(sp)
  10:	afb00018 	sw	s0,24(sp)
  14:	afa50034 	sw	a1,52(sp)
  18:	00808025 	move	s0,a0
  1c:	afa00020 	sw	zero,32(sp)
  20:	0c000000 	jal	0 <BgBomGuard_SetupAction>
  24:	00002825 	move	a1,zero
  28:	3c040000 	lui	a0,0x0
  2c:	24840000 	addiu	a0,a0,0
  30:	0c000000 	jal	0 <BgBomGuard_SetupAction>
  34:	27a50020 	addiu	a1,sp,32
  38:	8fa40034 	lw	a0,52(sp)
  3c:	02003025 	move	a2,s0
  40:	8fa70020 	lw	a3,32(sp)
  44:	0c000000 	jal	0 <BgBomGuard_SetupAction>
  48:	24850810 	addiu	a1,a0,2064
  4c:	3c040000 	lui	a0,0x0
  50:	ae02014c 	sw	v0,332(s0)
  54:	0c000000 	jal	0 <BgBomGuard_SetupAction>
  58:	24840000 	addiu	a0,a0,0
  5c:	3c040000 	lui	a0,0x0
  60:	0c000000 	jal	0 <BgBomGuard_SetupAction>
  64:	24840004 	addiu	a0,a0,4
  68:	8e0f0024 	lw	t7,36(s0)
  6c:	3c013f80 	lui	at,0x3f80
  70:	44810000 	mtc1	at,$f0
  74:	ae0f016c 	sw	t7,364(s0)
  78:	8e0f002c 	lw	t7,44(s0)
  7c:	8e0e0028 	lw	t6,40(s0)
  80:	3c050000 	lui	a1,0x0
  84:	24a50000 	addiu	a1,a1,0
  88:	02002025 	move	a0,s0
  8c:	e6000050 	swc1	$f0,80(s0)
  90:	e6000054 	swc1	$f0,84(s0)
  94:	e6000058 	swc1	$f0,88(s0)
  98:	ae0f0174 	sw	t7,372(s0)
  9c:	0c000000 	jal	0 <BgBomGuard_SetupAction>
  a0:	ae0e0170 	sw	t6,368(s0)
  a4:	8fbf001c 	lw	ra,28(sp)
  a8:	8fb00018 	lw	s0,24(sp)
  ac:	27bd0030 	addiu	sp,sp,48
  b0:	03e00008 	jr	ra
  b4:	00000000 	nop

000000b8 <BgBomGuard_Destroy>:
  b8:	27bdffe8 	addiu	sp,sp,-24
  bc:	afa40018 	sw	a0,24(sp)
  c0:	8fae0018 	lw	t6,24(sp)
  c4:	afbf0014 	sw	ra,20(sp)
  c8:	00a02025 	move	a0,a1
  cc:	24a50810 	addiu	a1,a1,2064
  d0:	0c000000 	jal	0 <BgBomGuard_SetupAction>
  d4:	8dc6014c 	lw	a2,332(t6)
  d8:	8fbf0014 	lw	ra,20(sp)
  dc:	27bd0018 	addiu	sp,sp,24
  e0:	03e00008 	jr	ra
  e4:	00000000 	nop

000000e8 <func_8086E638>:
  e8:	8ca21c54 	lw	v0,7252(a1)
  ec:	a0800168 	sb	zero,360(a0)
  f0:	2403014b 	li	v1,331
  f4:	1040001d 	beqz	v0,16c <func_8086E638+0x84>
  f8:	3c080000 	lui	t0,0x0
  fc:	844e0000 	lh	t6,0(v0)
 100:	546e0018 	bnel	v1,t6,164 <func_8086E638+0x7c>
 104:	8c420124 	lw	v0,292(v0)
 108:	904f0258 	lbu	t7,600(v0)
 10c:	51e00018 	beqzl	t7,170 <func_8086E638+0x88>
 110:	90990168 	lbu	t9,360(a0)
 114:	c4a000e0 	lwc1	$f0,224(a1)
 118:	3c01c1a0 	lui	at,0xc1a0
 11c:	44812000 	mtc1	at,$f4
 120:	46000005 	abs.s	$f0,$f0
 124:	4600203c 	c.lt.s	$f4,$f0
 128:	00000000 	nop
 12c:	45020010 	bc1fl	170 <func_8086E638+0x88>
 130:	90990168 	lbu	t9,360(a0)
 134:	c4a000e4 	lwc1	$f0,228(a1)
 138:	3c0142dc 	lui	at,0x42dc
 13c:	44813000 	mtc1	at,$f6
 140:	46000005 	abs.s	$f0,$f0
 144:	24180001 	li	t8,1
 148:	4600303c 	c.lt.s	$f6,$f0
 14c:	00000000 	nop
 150:	45020007 	bc1fl	170 <func_8086E638+0x88>
 154:	90990168 	lbu	t9,360(a0)
 158:	10000004 	b	16c <func_8086E638+0x84>
 15c:	a0980168 	sb	t8,360(a0)
 160:	8c420124 	lw	v0,292(v0)
 164:	5440ffe6 	bnezl	v0,100 <func_8086E638+0x18>
 168:	844e0000 	lh	t6,0(v0)
 16c:	90990168 	lbu	t9,360(a0)
 170:	5720000c 	bnezl	t9,1a4 <func_8086E638+0xbc>
 174:	44802000 	mtc1	zero,$f4
 178:	8d080000 	lw	t0,0(t0)
 17c:	3c01c348 	lui	at,0xc348
 180:	44818000 	mtc1	at,$f16
 184:	85090c94 	lh	t1,3220(t0)
 188:	44894000 	mtc1	t1,$f8
 18c:	00000000 	nop
 190:	468042a0 	cvt.s.w	$f10,$f8
 194:	46105480 	add.s	$f18,$f10,$f16
 198:	03e00008 	jr	ra
 19c:	e4920028 	swc1	$f18,40(a0)
 1a0:	44802000 	mtc1	zero,$f4
 1a4:	00000000 	nop
 1a8:	e4840028 	swc1	$f4,40(a0)
 1ac:	03e00008 	jr	ra
 1b0:	00000000 	nop

000001b4 <BgBomGuard_Update>:
 1b4:	27bdffe8 	addiu	sp,sp,-24
 1b8:	afbf0014 	sw	ra,20(sp)
 1bc:	8c990164 	lw	t9,356(a0)
 1c0:	0320f809 	jalr	t9
 1c4:	00000000 	nop
 1c8:	8fbf0014 	lw	ra,20(sp)
 1cc:	27bd0018 	addiu	sp,sp,24
 1d0:	03e00008 	jr	ra
 1d4:	00000000 	nop
	...
