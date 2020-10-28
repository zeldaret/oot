
build/src/overlays/actors/ovl_Bg_Pushbox/z_bg_pushbox.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgPushbox_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850164 	sw	a1,356(a0)

00000008 <BgPushbox_Init>:
   8:	27bdffd0 	addiu	sp,sp,-48
   c:	afa50034 	sw	a1,52(sp)
  10:	afbf001c 	sw	ra,28(sp)
  14:	afb00018 	sw	s0,24(sp)
  18:	3c050000 	lui	a1,0x0
  1c:	00808025 	move	s0,a0
  20:	afa00024 	sw	zero,36(sp)
  24:	0c000000 	jal	0 <BgPushbox_SetupAction>
  28:	24a50020 	addiu	a1,a1,32
  2c:	02002025 	move	a0,s0
  30:	0c000000 	jal	0 <BgPushbox_SetupAction>
  34:	00002825 	move	a1,zero
  38:	3c040000 	lui	a0,0x0
  3c:	24840000 	addiu	a0,a0,0
  40:	0c000000 	jal	0 <BgPushbox_SetupAction>
  44:	27a50024 	addiu	a1,sp,36
  48:	8fa40034 	lw	a0,52(sp)
  4c:	02003025 	move	a2,s0
  50:	8fa70024 	lw	a3,36(sp)
  54:	0c000000 	jal	0 <BgPushbox_SetupAction>
  58:	24850810 	addiu	a1,a0,2064
  5c:	44800000 	mtc1	zero,$f0
  60:	ae02014c 	sw	v0,332(s0)
  64:	260400b4 	addiu	a0,s0,180
  68:	44050000 	mfc1	a1,$f0
  6c:	44070000 	mfc1	a3,$f0
  70:	0c000000 	jal	0 <BgPushbox_SetupAction>
  74:	00003025 	move	a2,zero
  78:	3c050000 	lui	a1,0x0
  7c:	24a50000 	addiu	a1,a1,0
  80:	0c000000 	jal	0 <BgPushbox_SetupAction>
  84:	02002025 	move	a0,s0
  88:	8fbf001c 	lw	ra,28(sp)
  8c:	8fb00018 	lw	s0,24(sp)
  90:	27bd0030 	addiu	sp,sp,48
  94:	03e00008 	jr	ra
  98:	00000000 	nop

0000009c <BgPushbox_Destroy>:
  9c:	27bdffe8 	addiu	sp,sp,-24
  a0:	afa40018 	sw	a0,24(sp)
  a4:	8fae0018 	lw	t6,24(sp)
  a8:	afbf0014 	sw	ra,20(sp)
  ac:	00a02025 	move	a0,a1
  b0:	24a50810 	addiu	a1,a1,2064
  b4:	0c000000 	jal	0 <BgPushbox_SetupAction>
  b8:	8dc6014c 	lw	a2,332(t6)
  bc:	8fbf0014 	lw	ra,20(sp)
  c0:	27bd0018 	addiu	sp,sp,24
  c4:	03e00008 	jr	ra
  c8:	00000000 	nop

000000cc <func_808A8BAC>:
  cc:	27bdffd8 	addiu	sp,sp,-40
  d0:	3c01bf80 	lui	at,0xbf80
  d4:	44811000 	mtc1	at,$f2
  d8:	3c010000 	lui	at,0x0
  dc:	afbf0024 	sw	ra,36(sp)
  e0:	afb00020 	sw	s0,32(sp)
  e4:	afa5002c 	sw	a1,44(sp)
  e8:	c42e003c 	lwc1	$f14,60(at)
  ec:	c4860150 	lwc1	$f6,336(a0)
  f0:	c4840068 	lwc1	$f4,104(a0)
  f4:	44067000 	mfc1	a2,$f14
  f8:	460e3202 	mul.s	$f8,$f6,$f14
  fc:	00808025 	move	s0,a0
 100:	3c013f80 	lui	at,0x3f80
 104:	24050000 	li	a1,0
 108:	46082280 	add.s	$f10,$f4,$f8
 10c:	e48a0068 	swc1	$f10,104(a0)
 110:	c4800068 	lwc1	$f0,104(a0)
 114:	4602003c 	c.lt.s	$f0,$f2
 118:	00000000 	nop
 11c:	45020004 	bc1fl	130 <func_808A8BAC+0x64>
 120:	44816000 	mtc1	at,$f12
 124:	1000000b 	b	154 <func_808A8BAC+0x88>
 128:	e4820068 	swc1	$f2,104(a0)
 12c:	44816000 	mtc1	at,$f12
 130:	00000000 	nop
 134:	4600603c 	c.lt.s	$f12,$f0
 138:	00000000 	nop
 13c:	45020004 	bc1fl	150 <func_808A8BAC+0x84>
 140:	46000086 	mov.s	$f2,$f0
 144:	10000002 	b	150 <func_808A8BAC+0x84>
 148:	46006086 	mov.s	$f2,$f12
 14c:	46000086 	mov.s	$f2,$f0
 150:	e6020068 	swc1	$f2,104(s0)
 154:	0c000000 	jal	0 <BgPushbox_SetupAction>
 158:	26040068 	addiu	a0,s0,104
 15c:	860e0158 	lh	t6,344(s0)
 160:	02002025 	move	a0,s0
 164:	0c000000 	jal	0 <BgPushbox_SetupAction>
 168:	a60e0032 	sh	t6,50(s0)
 16c:	3c014220 	lui	at,0x4220
 170:	44810000 	mtc1	at,$f0
 174:	240f001d 	li	t7,29
 178:	afaf0014 	sw	t7,20(sp)
 17c:	44070000 	mfc1	a3,$f0
 180:	8fa4002c 	lw	a0,44(sp)
 184:	02002825 	move	a1,s0
 188:	3c0641a0 	lui	a2,0x41a0
 18c:	0c000000 	jal	0 <BgPushbox_SetupAction>
 190:	e7a00010 	swc1	$f0,16(sp)
 194:	8fbf0024 	lw	ra,36(sp)
 198:	8fb00020 	lw	s0,32(sp)
 19c:	27bd0028 	addiu	sp,sp,40
 1a0:	03e00008 	jr	ra
 1a4:	00000000 	nop

000001a8 <BgPushbox_Update>:
 1a8:	27bdffe8 	addiu	sp,sp,-24
 1ac:	afbf0014 	sw	ra,20(sp)
 1b0:	afa40018 	sw	a0,24(sp)
 1b4:	8c990164 	lw	t9,356(a0)
 1b8:	0320f809 	jalr	t9
 1bc:	00000000 	nop
 1c0:	0c000000 	jal	0 <BgPushbox_SetupAction>
 1c4:	8fa40018 	lw	a0,24(sp)
 1c8:	8fbf0014 	lw	ra,20(sp)
 1cc:	27bd0018 	addiu	sp,sp,24
 1d0:	03e00008 	jr	ra
 1d4:	00000000 	nop

000001d8 <BgPushbox_Draw>:
 1d8:	27bdffb8 	addiu	sp,sp,-72
 1dc:	afbf001c 	sw	ra,28(sp)
 1e0:	afb00018 	sw	s0,24(sp)
 1e4:	afa40048 	sw	a0,72(sp)
 1e8:	afa5004c 	sw	a1,76(sp)
 1ec:	8ca50000 	lw	a1,0(a1)
 1f0:	3c060000 	lui	a2,0x0
 1f4:	24c60000 	addiu	a2,a2,0
 1f8:	27a40030 	addiu	a0,sp,48
 1fc:	24070107 	li	a3,263
 200:	0c000000 	jal	0 <BgPushbox_SetupAction>
 204:	00a08025 	move	s0,a1
 208:	8faf004c 	lw	t7,76(sp)
 20c:	0c000000 	jal	0 <BgPushbox_SetupAction>
 210:	8de40000 	lw	a0,0(t7)
 214:	8e0202c0 	lw	v0,704(s0)
 218:	3c19da38 	lui	t9,0xda38
 21c:	37390003 	ori	t9,t9,0x3
 220:	24580008 	addiu	t8,v0,8
 224:	ae1802c0 	sw	t8,704(s0)
 228:	ac590000 	sw	t9,0(v0)
 22c:	8fa8004c 	lw	t0,76(sp)
 230:	3c050000 	lui	a1,0x0
 234:	24a50014 	addiu	a1,a1,20
 238:	8d040000 	lw	a0,0(t0)
 23c:	2406010d 	li	a2,269
 240:	0c000000 	jal	0 <BgPushbox_SetupAction>
 244:	afa2002c 	sw	v0,44(sp)
 248:	8fa3002c 	lw	v1,44(sp)
 24c:	3c0b0000 	lui	t3,0x0
 250:	256b0000 	addiu	t3,t3,0
 254:	ac620004 	sw	v0,4(v1)
 258:	8e0202c0 	lw	v0,704(s0)
 25c:	3c0ade00 	lui	t2,0xde00
 260:	3c060000 	lui	a2,0x0
 264:	24490008 	addiu	t1,v0,8
 268:	ae0902c0 	sw	t1,704(s0)
 26c:	ac4b0004 	sw	t3,4(v0)
 270:	ac4a0000 	sw	t2,0(v0)
 274:	8fac004c 	lw	t4,76(sp)
 278:	24c60028 	addiu	a2,a2,40
 27c:	27a40030 	addiu	a0,sp,48
 280:	24070110 	li	a3,272
 284:	0c000000 	jal	0 <BgPushbox_SetupAction>
 288:	8d850000 	lw	a1,0(t4)
 28c:	8fbf001c 	lw	ra,28(sp)
 290:	8fb00018 	lw	s0,24(sp)
 294:	27bd0048 	addiu	sp,sp,72
 298:	03e00008 	jr	ra
 29c:	00000000 	nop
