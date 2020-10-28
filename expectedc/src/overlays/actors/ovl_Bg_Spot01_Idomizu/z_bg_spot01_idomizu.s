
build/src/overlays/actors/ovl_Bg_Spot01_Idomizu/z_bg_spot01_idomizu.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgSpot01Idomizu_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa5001c 	sw	a1,28(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	3c050000 	lui	a1,0x0
  10:	24a50020 	addiu	a1,a1,32
  14:	0c000000 	jal	0 <BgSpot01Idomizu_Init>
  18:	afa40018 	sw	a0,24(sp)
  1c:	3c020000 	lui	v0,0x0
  20:	24420000 	addiu	v0,v0,0
  24:	944e0ee0 	lhu	t6,3808(v0)
  28:	8fa40018 	lw	a0,24(sp)
  2c:	24010011 	li	at,17
  30:	31cf0080 	andi	t7,t6,0x80
  34:	15e00008 	bnez	t7,58 <BgSpot01Idomizu_Init+0x58>
  38:	3c190000 	lui	t9,0x0
  3c:	8c580004 	lw	t8,4(v0)
  40:	24020011 	li	v0,17
  44:	13000003 	beqz	t8,54 <BgSpot01Idomizu_Init+0x54>
  48:	00000000 	nop
  4c:	10000001 	b	54 <BgSpot01Idomizu_Init+0x54>
  50:	24020005 	li	v0,5
  54:	14410004 	bne	v0,at,68 <BgSpot01Idomizu_Init+0x68>
  58:	3c010000 	lui	at,0x0
  5c:	c4240054 	lwc1	$f4,84(at)
  60:	10000005 	b	78 <BgSpot01Idomizu_Init+0x78>
  64:	e4840150 	swc1	$f4,336(a0)
  68:	3c014250 	lui	at,0x4250
  6c:	44813000 	mtc1	at,$f6
  70:	00000000 	nop
  74:	e4860150 	swc1	$f6,336(a0)
  78:	c4880150 	lwc1	$f8,336(a0)
  7c:	27390000 	addiu	t9,t9,0
  80:	ac99014c 	sw	t9,332(a0)
  84:	e4880028 	swc1	$f8,40(a0)
  88:	8fbf0014 	lw	ra,20(sp)
  8c:	27bd0018 	addiu	sp,sp,24
  90:	03e00008 	jr	ra
  94:	00000000 	nop

00000098 <BgSpot01Idomizu_Destroy>:
  98:	afa40000 	sw	a0,0(sp)
  9c:	03e00008 	jr	ra
  a0:	afa50004 	sw	a1,4(sp)

000000a4 <func_808ABB84>:
  a4:	3c0e0000 	lui	t6,0x0
  a8:	95ce0ee0 	lhu	t6,3808(t6)
  ac:	27bdffd8 	addiu	sp,sp,-40
  b0:	afb00020 	sw	s0,32(sp)
  b4:	31cf0080 	andi	t7,t6,0x80
  b8:	00808025 	move	s0,a0
  bc:	11e00004 	beqz	t7,d0 <func_808ABB84+0x2c>
  c0:	afbf0024 	sw	ra,36(sp)
  c4:	3c010000 	lui	at,0x0
  c8:	c4240058 	lwc1	$f4,88(at)
  cc:	e4840150 	swc1	$f4,336(a0)
  d0:	c6060028 	lwc1	$f6,40(s0)
  d4:	8ca807c0 	lw	t0,1984(a1)
  d8:	3c070000 	lui	a3,0x0
  dc:	4600320d 	trunc.w.s	$f8,$f6
  e0:	8d090028 	lw	t1,40(t0)
  e4:	3c050000 	lui	a1,0x0
  e8:	3c0a0000 	lui	t2,0x0
  ec:	44194000 	mfc1	t9,$f8
  f0:	24e70000 	addiu	a3,a3,0
  f4:	254a0000 	addiu	t2,t2,0
  f8:	a5390002 	sh	t9,2(t1)
  fc:	c60a0028 	lwc1	$f10,40(s0)
 100:	c6000150 	lwc1	$f0,336(s0)
 104:	24a50000 	addiu	a1,a1,0
 108:	2404205e 	li	a0,8286
 10c:	460a003c 	c.lt.s	$f0,$f10
 110:	24060004 	li	a2,4
 114:	45020006 	bc1fl	130 <func_808ABB84+0x8c>
 118:	44050000 	mfc1	a1,$f0
 11c:	afa70010 	sw	a3,16(sp)
 120:	0c000000 	jal	0 <BgSpot01Idomizu_Init>
 124:	afaa0014 	sw	t2,20(sp)
 128:	c6000150 	lwc1	$f0,336(s0)
 12c:	44050000 	mfc1	a1,$f0
 130:	26040028 	addiu	a0,s0,40
 134:	3c063f80 	lui	a2,0x3f80
 138:	0c000000 	jal	0 <BgSpot01Idomizu_Init>
 13c:	3c074000 	lui	a3,0x4000
 140:	8fbf0024 	lw	ra,36(sp)
 144:	8fb00020 	lw	s0,32(sp)
 148:	27bd0028 	addiu	sp,sp,40
 14c:	03e00008 	jr	ra
 150:	00000000 	nop

00000154 <BgSpot01Idomizu_Update>:
 154:	27bdffe8 	addiu	sp,sp,-24
 158:	afbf0014 	sw	ra,20(sp)
 15c:	8c99014c 	lw	t9,332(a0)
 160:	0320f809 	jalr	t9
 164:	00000000 	nop
 168:	8fbf0014 	lw	ra,20(sp)
 16c:	27bd0018 	addiu	sp,sp,24
 170:	03e00008 	jr	ra
 174:	00000000 	nop

00000178 <BgSpot01Idomizu_Draw>:
 178:	27bdff90 	addiu	sp,sp,-112
 17c:	afb10038 	sw	s1,56(sp)
 180:	00a08825 	move	s1,a1
 184:	afbf003c 	sw	ra,60(sp)
 188:	afb00034 	sw	s0,52(sp)
 18c:	afa40070 	sw	a0,112(sp)
 190:	8ca50000 	lw	a1,0(a1)
 194:	3c060000 	lui	a2,0x0
 198:	24c60000 	addiu	a2,a2,0
 19c:	27a40058 	addiu	a0,sp,88
 1a0:	240700e4 	li	a3,228
 1a4:	0c000000 	jal	0 <BgSpot01Idomizu_Init>
 1a8:	00a08025 	move	s0,a1
 1ac:	0c000000 	jal	0 <BgSpot01Idomizu_Init>
 1b0:	8e240000 	lw	a0,0(s1)
 1b4:	8e0202d0 	lw	v0,720(s0)
 1b8:	3c0fda38 	lui	t7,0xda38
 1bc:	35ef0003 	ori	t7,t7,0x3
 1c0:	244e0008 	addiu	t6,v0,8
 1c4:	ae0e02d0 	sw	t6,720(s0)
 1c8:	ac4f0000 	sw	t7,0(v0)
 1cc:	8e240000 	lw	a0,0(s1)
 1d0:	3c050000 	lui	a1,0x0
 1d4:	24a5001c 	addiu	a1,a1,28
 1d8:	240600e8 	li	a2,232
 1dc:	0c000000 	jal	0 <BgSpot01Idomizu_Init>
 1e0:	afa20054 	sw	v0,84(sp)
 1e4:	8fa30054 	lw	v1,84(sp)
 1e8:	3c19db06 	lui	t9,0xdb06
 1ec:	37390020 	ori	t9,t9,0x20
 1f0:	ac620004 	sw	v0,4(v1)
 1f4:	8e0202d0 	lw	v0,720(s0)
 1f8:	8e28009c 	lw	t0,156(s1)
 1fc:	240a007f 	li	t2,127
 200:	24580008 	addiu	t8,v0,8
 204:	ae1802d0 	sw	t8,720(s0)
 208:	ac590000 	sw	t9,0(v0)
 20c:	8e240000 	lw	a0,0(s1)
 210:	240b0020 	li	t3,32
 214:	240c0020 	li	t4,32
 218:	240d0001 	li	t5,1
 21c:	240e0020 	li	t6,32
 220:	240f0020 	li	t7,32
 224:	3103007f 	andi	v1,t0,0x7f
 228:	3107007f 	andi	a3,t0,0x7f
 22c:	afa70020 	sw	a3,32(sp)
 230:	01433023 	subu	a2,t2,v1
 234:	afa3001c 	sw	v1,28(sp)
 238:	afaf0028 	sw	t7,40(sp)
 23c:	afae0024 	sw	t6,36(sp)
 240:	afad0018 	sw	t5,24(sp)
 244:	afac0014 	sw	t4,20(sp)
 248:	afab0010 	sw	t3,16(sp)
 24c:	00002825 	move	a1,zero
 250:	0c000000 	jal	0 <BgSpot01Idomizu_Init>
 254:	afa20050 	sw	v0,80(sp)
 258:	8fa90050 	lw	t1,80(sp)
 25c:	3c0a0000 	lui	t2,0x0
 260:	254a0000 	addiu	t2,t2,0
 264:	ad220004 	sw	v0,4(t1)
 268:	8e0202d0 	lw	v0,720(s0)
 26c:	3c19de00 	lui	t9,0xde00
 270:	3c060000 	lui	a2,0x0
 274:	24580008 	addiu	t8,v0,8
 278:	ae1802d0 	sw	t8,720(s0)
 27c:	ac4a0004 	sw	t2,4(v0)
 280:	ac590000 	sw	t9,0(v0)
 284:	8e250000 	lw	a1,0(s1)
 288:	24c60038 	addiu	a2,a2,56
 28c:	27a40058 	addiu	a0,sp,88
 290:	0c000000 	jal	0 <BgSpot01Idomizu_Init>
 294:	240700f4 	li	a3,244
 298:	8fbf003c 	lw	ra,60(sp)
 29c:	8fb00034 	lw	s0,52(sp)
 2a0:	8fb10038 	lw	s1,56(sp)
 2a4:	03e00008 	jr	ra
 2a8:	27bd0070 	addiu	sp,sp,112
 2ac:	00000000 	nop
