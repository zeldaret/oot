
build/src/overlays/actors/ovl_Bg_Spot01_Fusya/z_bg_spot01_fusya.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgSpot01Fusya_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac85014c 	sw	a1,332(a0)

00000008 <BgSpot01Fusya_Init>:
   8:	27bdffe8 	addiu	sp,sp,-24
   c:	afa5001c 	sw	a1,28(sp)
  10:	afbf0014 	sw	ra,20(sp)
  14:	3c050000 	lui	a1,0x0
  18:	24a50020 	addiu	a1,a1,32
  1c:	0c000000 	jal	0 <BgSpot01Fusya_SetupAction>
  20:	afa40018 	sw	a0,24(sp)
  24:	3c0142c8 	lui	at,0x42c8
  28:	44810000 	mtc1	at,$f0
  2c:	8fa40018 	lw	a0,24(sp)
  30:	3c013f00 	lui	at,0x3f00
  34:	44812000 	mtc1	at,$f4
  38:	3c020000 	lui	v0,0x0
  3c:	24420000 	addiu	v0,v0,0
  40:	e4800154 	swc1	$f0,340(a0)
  44:	e4800158 	swc1	$f0,344(a0)
  48:	e484015c 	swc1	$f4,348(a0)
  4c:	8c4e1360 	lw	t6,4960(v0)
  50:	3c050000 	lui	a1,0x0
  54:	29c10004 	slti	at,t6,4
  58:	10200004 	beqz	at,6c <BgSpot01Fusya_Init+0x64>
  5c:	00000000 	nop
  60:	944f0ee0 	lhu	t7,3808(v0)
  64:	31f8ffdf 	andi	t8,t7,0xffdf
  68:	a4580ee0 	sh	t8,3808(v0)
  6c:	0c000000 	jal	0 <BgSpot01Fusya_SetupAction>
  70:	24a50000 	addiu	a1,a1,0
  74:	8fbf0014 	lw	ra,20(sp)
  78:	27bd0018 	addiu	sp,sp,24
  7c:	03e00008 	jr	ra
  80:	00000000 	nop

00000084 <BgSpot01Fusya_Destroy>:
  84:	afa40000 	sw	a0,0(sp)
  88:	03e00008 	jr	ra
  8c:	afa50004 	sw	a1,4(sp)

00000090 <func_808AAA50>:
  90:	3c0e0000 	lui	t6,0x0
  94:	95ce0ee0 	lhu	t6,3808(t6)
  98:	27bdffe0 	addiu	sp,sp,-32
  9c:	afb00018 	sw	s0,24(sp)
  a0:	31cf0020 	andi	t7,t6,0x20
  a4:	00808025 	move	s0,a0
  a8:	afbf001c 	sw	ra,28(sp)
  ac:	11e00005 	beqz	t7,c4 <func_808AAA50+0x34>
  b0:	afa50024 	sw	a1,36(sp)
  b4:	3c0144e1 	lui	at,0x44e1
  b8:	44812000 	mtc1	at,$f4
  bc:	00000000 	nop
  c0:	e4840158 	swc1	$f4,344(a0)
  c4:	861800b8 	lh	t8,184(s0)
  c8:	c60a0154 	lwc1	$f10,340(s0)
  cc:	3c0142c8 	lui	at,0x42c8
  d0:	44983000 	mtc1	t8,$f6
  d4:	c6040154 	lwc1	$f4,340(s0)
  d8:	260400e4 	addiu	a0,s0,228
  dc:	46803220 	cvt.s.w	$f8,$f6
  e0:	44813000 	mtc1	at,$f6
  e4:	3c010000 	lui	at,0x0
  e8:	24052085 	li	a1,8325
  ec:	460a4400 	add.s	$f16,$f8,$f10
  f0:	46062201 	sub.s	$f8,$f4,$f6
  f4:	4600848d 	trunc.w.s	$f18,$f16
  f8:	44089000 	mfc1	t0,$f18
  fc:	00000000 	nop
 100:	a60800b8 	sh	t0,184(s0)
 104:	c42a0048 	lwc1	$f10,72(at)
 108:	3c013f80 	lui	at,0x3f80
 10c:	44819000 	mtc1	at,$f18
 110:	460a4403 	div.s	$f16,$f8,$f10
 114:	46128000 	add.s	$f0,$f16,$f18
 118:	44060000 	mfc1	a2,$f0
 11c:	0c000000 	jal	0 <BgSpot01Fusya_SetupAction>
 120:	00000000 	nop
 124:	26040154 	addiu	a0,s0,340
 128:	8e050158 	lw	a1,344(s0)
 12c:	8e06015c 	lw	a2,348(s0)
 130:	0c000000 	jal	0 <BgSpot01Fusya_SetupAction>
 134:	3c0742c8 	lui	a3,0x42c8
 138:	8fbf001c 	lw	ra,28(sp)
 13c:	8fb00018 	lw	s0,24(sp)
 140:	27bd0020 	addiu	sp,sp,32
 144:	03e00008 	jr	ra
 148:	00000000 	nop

0000014c <BgSpot01Fusya_Update>:
 14c:	27bdffe8 	addiu	sp,sp,-24
 150:	afbf0014 	sw	ra,20(sp)
 154:	8c99014c 	lw	t9,332(a0)
 158:	0320f809 	jalr	t9
 15c:	00000000 	nop
 160:	8fbf0014 	lw	ra,20(sp)
 164:	27bd0018 	addiu	sp,sp,24
 168:	03e00008 	jr	ra
 16c:	00000000 	nop

00000170 <BgSpot01Fusya_Draw>:
 170:	27bdffc0 	addiu	sp,sp,-64
 174:	afbf001c 	sw	ra,28(sp)
 178:	afb00018 	sw	s0,24(sp)
 17c:	afa40040 	sw	a0,64(sp)
 180:	afa50044 	sw	a1,68(sp)
 184:	8ca50000 	lw	a1,0(a1)
 188:	3c060000 	lui	a2,0x0
 18c:	24c60000 	addiu	a2,a2,0
 190:	27a4002c 	addiu	a0,sp,44
 194:	240700d2 	li	a3,210
 198:	0c000000 	jal	0 <BgSpot01Fusya_SetupAction>
 19c:	00a08025 	move	s0,a1
 1a0:	8faf0044 	lw	t7,68(sp)
 1a4:	0c000000 	jal	0 <BgSpot01Fusya_SetupAction>
 1a8:	8de40000 	lw	a0,0(t7)
 1ac:	8e0202c0 	lw	v0,704(s0)
 1b0:	3c19da38 	lui	t9,0xda38
 1b4:	37390003 	ori	t9,t9,0x3
 1b8:	24580008 	addiu	t8,v0,8
 1bc:	ae1802c0 	sw	t8,704(s0)
 1c0:	ac590000 	sw	t9,0(v0)
 1c4:	8fa80044 	lw	t0,68(sp)
 1c8:	3c050000 	lui	a1,0x0
 1cc:	24a50018 	addiu	a1,a1,24
 1d0:	8d040000 	lw	a0,0(t0)
 1d4:	240600d6 	li	a2,214
 1d8:	0c000000 	jal	0 <BgSpot01Fusya_SetupAction>
 1dc:	afa20028 	sw	v0,40(sp)
 1e0:	8fa30028 	lw	v1,40(sp)
 1e4:	3c0b0000 	lui	t3,0x0
 1e8:	256b0000 	addiu	t3,t3,0
 1ec:	ac620004 	sw	v0,4(v1)
 1f0:	8e0202c0 	lw	v0,704(s0)
 1f4:	3c0ade00 	lui	t2,0xde00
 1f8:	3c060000 	lui	a2,0x0
 1fc:	24490008 	addiu	t1,v0,8
 200:	ae0902c0 	sw	t1,704(s0)
 204:	ac4b0004 	sw	t3,4(v0)
 208:	ac4a0000 	sw	t2,0(v0)
 20c:	8fac0044 	lw	t4,68(sp)
 210:	24c60030 	addiu	a2,a2,48
 214:	27a4002c 	addiu	a0,sp,44
 218:	240700db 	li	a3,219
 21c:	0c000000 	jal	0 <BgSpot01Fusya_SetupAction>
 220:	8d850000 	lw	a1,0(t4)
 224:	8fbf001c 	lw	ra,28(sp)
 228:	8fb00018 	lw	s0,24(sp)
 22c:	27bd0040 	addiu	sp,sp,64
 230:	03e00008 	jr	ra
 234:	00000000 	nop
	...
