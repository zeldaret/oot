
build/src/overlays/actors/ovl_Bg_Spot15_Saku/z_bg_spot15_saku.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgSpot15Saku_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa50034 	sw	a1,52(sp)
  10:	00808025 	move	s0,a0
  14:	afa00020 	sw	zero,32(sp)
  18:	0c000000 	jal	0 <BgSpot15Saku_Init>
  1c:	00002825 	move	a1,zero
  20:	3c040000 	lui	a0,0x0
  24:	24840000 	addiu	a0,a0,0
  28:	0c000000 	jal	0 <BgSpot15Saku_Init>
  2c:	27a50020 	addiu	a1,sp,32
  30:	8fa40034 	lw	a0,52(sp)
  34:	02003025 	move	a2,s0
  38:	8fa70020 	lw	a3,32(sp)
  3c:	0c000000 	jal	0 <BgSpot15Saku_Init>
  40:	24850810 	addiu	a1,a0,2064
  44:	3c010000 	lui	at,0x0
  48:	c4200048 	lwc1	$f0,72(at)
  4c:	c6040024 	lwc1	$f4,36(s0)
  50:	c6060028 	lwc1	$f6,40(s0)
  54:	c608002c 	lwc1	$f8,44(s0)
  58:	ae02014c 	sw	v0,332(s0)
  5c:	3c0e0000 	lui	t6,0x0
  60:	e6000050 	swc1	$f0,80(s0)
  64:	e6000054 	swc1	$f0,84(s0)
  68:	e6000058 	swc1	$f0,88(s0)
  6c:	e6040170 	swc1	$f4,368(s0)
  70:	e6060174 	swc1	$f6,372(s0)
  74:	e6080178 	swc1	$f8,376(s0)
  78:	95ce0f06 	lhu	t6,3846(t6)
  7c:	3c180000 	lui	t8,0x0
  80:	3c010000 	lui	at,0x0
  84:	31cf0002 	andi	t7,t6,0x2
  88:	11e00003 	beqz	t7,98 <BgSpot15Saku_Init+0x98>
  8c:	27180000 	addiu	t8,t8,0
  90:	c42a004c 	lwc1	$f10,76(at)
  94:	e60a002c 	swc1	$f10,44(s0)
  98:	ae180164 	sw	t8,356(s0)
  9c:	8fbf001c 	lw	ra,28(sp)
  a0:	8fb00018 	lw	s0,24(sp)
  a4:	27bd0030 	addiu	sp,sp,48
  a8:	03e00008 	jr	ra
  ac:	00000000 	nop

000000b0 <BgSpot15Saku_Destroy>:
  b0:	27bdffe8 	addiu	sp,sp,-24
  b4:	afa40018 	sw	a0,24(sp)
  b8:	8fae0018 	lw	t6,24(sp)
  bc:	afbf0014 	sw	ra,20(sp)
  c0:	00a02025 	move	a0,a1
  c4:	24a50810 	addiu	a1,a1,2064
  c8:	0c000000 	jal	0 <BgSpot15Saku_Init>
  cc:	8dc6014c 	lw	a2,332(t6)
  d0:	8fbf0014 	lw	ra,20(sp)
  d4:	27bd0018 	addiu	sp,sp,24
  d8:	03e00008 	jr	ra
  dc:	00000000 	nop

000000e0 <func_808B4930>:
  e0:	afa50004 	sw	a1,4(sp)
  e4:	8c8e0168 	lw	t6,360(a0)
  e8:	8c8f016c 	lw	t7,364(a0)
  ec:	3c180000 	lui	t8,0x0
  f0:	15c00003 	bnez	t6,100 <func_808B4930+0x20>
  f4:	00000000 	nop
  f8:	11e00009 	beqz	t7,120 <func_808B4930+0x40>
  fc:	00000000 	nop
 100:	97180f06 	lhu	t8,3846(t8)
 104:	3c090000 	lui	t1,0x0
 108:	24080002 	li	t0,2
 10c:	33190002 	andi	t9,t8,0x2
 110:	17200003 	bnez	t9,120 <func_808B4930+0x40>
 114:	25290000 	addiu	t1,t1,0
 118:	a488017c 	sh	t0,380(a0)
 11c:	ac890164 	sw	t1,356(a0)
 120:	03e00008 	jr	ra
 124:	00000000 	nop

00000128 <func_808B4978>:
 128:	27bdffe8 	addiu	sp,sp,-24
 12c:	afbf0014 	sw	ra,20(sp)
 130:	afa5001c 	sw	a1,28(sp)
 134:	848e017c 	lh	t6,380(a0)
 138:	24052067 	li	a1,8295
 13c:	55c0001a 	bnezl	t6,1a8 <func_808B4978+0x80>
 140:	8fbf0014 	lw	ra,20(sp)
 144:	0c000000 	jal	0 <BgSpot15Saku_Init>
 148:	afa40018 	sw	a0,24(sp)
 14c:	8fa40018 	lw	a0,24(sp)
 150:	3c014000 	lui	at,0x4000
 154:	44813000 	mtc1	at,$f6
 158:	c484002c 	lwc1	$f4,44(a0)
 15c:	3c010000 	lui	at,0x0
 160:	2405280e 	li	a1,10254
 164:	46062201 	sub.s	$f8,$f4,$f6
 168:	e488002c 	swc1	$f8,44(a0)
 16c:	c4300050 	lwc1	$f16,80(at)
 170:	c48a002c 	lwc1	$f10,44(a0)
 174:	4610503c 	c.lt.s	$f10,$f16
 178:	00000000 	nop
 17c:	4502000a 	bc1fl	1a8 <func_808B4978+0x80>
 180:	8fbf0014 	lw	ra,20(sp)
 184:	0c000000 	jal	0 <BgSpot15Saku_Init>
 188:	afa40018 	sw	a0,24(sp)
 18c:	8fa40018 	lw	a0,24(sp)
 190:	3c180000 	lui	t8,0x0
 194:	240f001e 	li	t7,30
 198:	27180000 	addiu	t8,t8,0
 19c:	a48f017c 	sh	t7,380(a0)
 1a0:	ac980164 	sw	t8,356(a0)
 1a4:	8fbf0014 	lw	ra,20(sp)
 1a8:	27bd0018 	addiu	sp,sp,24
 1ac:	03e00008 	jr	ra
 1b0:	00000000 	nop

000001b4 <func_808B4A04>:
 1b4:	afa50004 	sw	a1,4(sp)
 1b8:	848e017c 	lh	t6,380(a0)
 1bc:	24180000 	li	t8,0
 1c0:	24190000 	li	t9,0
 1c4:	15c00005 	bnez	t6,1dc <func_808B4A04+0x28>
 1c8:	3c0f0000 	lui	t7,0x0
 1cc:	25ef0000 	addiu	t7,t7,0
 1d0:	ac980168 	sw	t8,360(a0)
 1d4:	ac99016c 	sw	t9,364(a0)
 1d8:	ac8f0164 	sw	t7,356(a0)
 1dc:	03e00008 	jr	ra
 1e0:	00000000 	nop

000001e4 <BgSpot15Saku_Update>:
 1e4:	27bdffe8 	addiu	sp,sp,-24
 1e8:	afbf0014 	sw	ra,20(sp)
 1ec:	8482017c 	lh	v0,380(a0)
 1f0:	10400002 	beqz	v0,1fc <BgSpot15Saku_Update+0x18>
 1f4:	244effff 	addiu	t6,v0,-1
 1f8:	a48e017c 	sh	t6,380(a0)
 1fc:	8c990164 	lw	t9,356(a0)
 200:	0320f809 	jalr	t9
 204:	00000000 	nop
 208:	8fbf0014 	lw	ra,20(sp)
 20c:	27bd0018 	addiu	sp,sp,24
 210:	03e00008 	jr	ra
 214:	00000000 	nop

00000218 <BgSpot15Saku_Draw>:
 218:	27bdffc0 	addiu	sp,sp,-64
 21c:	afbf001c 	sw	ra,28(sp)
 220:	afb00018 	sw	s0,24(sp)
 224:	afa40040 	sw	a0,64(sp)
 228:	afa50044 	sw	a1,68(sp)
 22c:	8ca50000 	lw	a1,0(a1)
 230:	3c060000 	lui	a2,0x0
 234:	24c60000 	addiu	a2,a2,0
 238:	27a4002c 	addiu	a0,sp,44
 23c:	24070103 	li	a3,259
 240:	0c000000 	jal	0 <BgSpot15Saku_Init>
 244:	00a08025 	move	s0,a1
 248:	8faf0044 	lw	t7,68(sp)
 24c:	0c000000 	jal	0 <BgSpot15Saku_Init>
 250:	8de40000 	lw	a0,0(t7)
 254:	8e0202d0 	lw	v0,720(s0)
 258:	3c19da38 	lui	t9,0xda38
 25c:	37390003 	ori	t9,t9,0x3
 260:	24580008 	addiu	t8,v0,8
 264:	ae1802d0 	sw	t8,720(s0)
 268:	ac590000 	sw	t9,0(v0)
 26c:	8fa80044 	lw	t0,68(sp)
 270:	3c050000 	lui	a1,0x0
 274:	24a50018 	addiu	a1,a1,24
 278:	8d040000 	lw	a0,0(t0)
 27c:	24060107 	li	a2,263
 280:	0c000000 	jal	0 <BgSpot15Saku_Init>
 284:	afa20028 	sw	v0,40(sp)
 288:	8fa30028 	lw	v1,40(sp)
 28c:	3c0b0000 	lui	t3,0x0
 290:	256b0000 	addiu	t3,t3,0
 294:	ac620004 	sw	v0,4(v1)
 298:	8e0202d0 	lw	v0,720(s0)
 29c:	3c0ade00 	lui	t2,0xde00
 2a0:	3c060000 	lui	a2,0x0
 2a4:	24490008 	addiu	t1,v0,8
 2a8:	ae0902d0 	sw	t1,720(s0)
 2ac:	ac4b0004 	sw	t3,4(v0)
 2b0:	ac4a0000 	sw	t2,0(v0)
 2b4:	8fac0044 	lw	t4,68(sp)
 2b8:	24c60030 	addiu	a2,a2,48
 2bc:	27a4002c 	addiu	a0,sp,44
 2c0:	2407010c 	li	a3,268
 2c4:	0c000000 	jal	0 <BgSpot15Saku_Init>
 2c8:	8d850000 	lw	a1,0(t4)
 2cc:	8fbf001c 	lw	ra,28(sp)
 2d0:	8fb00018 	lw	s0,24(sp)
 2d4:	27bd0040 	addiu	sp,sp,64
 2d8:	03e00008 	jr	ra
 2dc:	00000000 	nop
