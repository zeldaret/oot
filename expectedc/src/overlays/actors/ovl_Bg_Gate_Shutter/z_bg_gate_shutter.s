
build/src/overlays/actors/ovl_Bg_Gate_Shutter/z_bg_gate_shutter.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgGateShutter_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa50034 	sw	a1,52(sp)
  10:	00808025 	move	s0,a0
  14:	afa00020 	sw	zero,32(sp)
  18:	0c000000 	jal	0 <BgGateShutter_Init>
  1c:	00002825 	move	a1,zero
  20:	3c040000 	lui	a0,0x0
  24:	24840000 	addiu	a0,a0,0
  28:	0c000000 	jal	0 <BgGateShutter_Init>
  2c:	27a50020 	addiu	a1,sp,32
  30:	8fa40034 	lw	a0,52(sp)
  34:	02003025 	move	a2,s0
  38:	8fa70020 	lw	a3,32(sp)
  3c:	0c000000 	jal	0 <BgGateShutter_Init>
  40:	24850810 	addiu	a1,a0,2064
  44:	c6040024 	lwc1	$f4,36(s0)
  48:	c6060028 	lwc1	$f6,40(s0)
  4c:	c608002c 	lwc1	$f8,44(s0)
  50:	3c030000 	lui	v1,0x0
  54:	24630000 	addiu	v1,v1,0
  58:	ae02014c 	sw	v0,332(s0)
  5c:	e604016c 	swc1	$f4,364(s0)
  60:	e6060170 	swc1	$f6,368(s0)
  64:	e6080174 	swc1	$f8,372(s0)
  68:	946e0f06 	lhu	t6,3846(v1)
  6c:	8fa80034 	lw	t0,52(sp)
  70:	31cf0040 	andi	t7,t6,0x40
  74:	55e00006 	bnezl	t7,90 <BgGateShutter_Init+0x90>
  78:	850900a4 	lh	t1,164(t0)
  7c:	94780edc 	lhu	t8,3804(v1)
  80:	33190020 	andi	t9,t8,0x20
  84:	5320000b 	beqzl	t9,b4 <BgGateShutter_Init+0xb4>
  88:	3c013f80 	lui	at,0x3f80
  8c:	850900a4 	lh	t1,164(t0)
  90:	24010052 	li	at,82
  94:	15210006 	bne	t1,at,b0 <BgGateShutter_Init+0xb0>
  98:	3c01c2b2 	lui	at,0xc2b2
  9c:	44815000 	mtc1	at,$f10
  a0:	3c010000 	lui	at,0x0
  a4:	e60a0024 	swc1	$f10,36(s0)
  a8:	c4300078 	lwc1	$f16,120(at)
  ac:	e610002c 	swc1	$f16,44(s0)
  b0:	3c013f80 	lui	at,0x3f80
  b4:	44810000 	mtc1	at,$f0
  b8:	3c040000 	lui	a0,0x0
  bc:	24840000 	addiu	a0,a0,0
  c0:	e6000050 	swc1	$f0,80(s0)
  c4:	e6000054 	swc1	$f0,84(s0)
  c8:	0c000000 	jal	0 <BgGateShutter_Init>
  cc:	e6000058 	swc1	$f0,88(s0)
  d0:	3c040000 	lui	a0,0x0
  d4:	0c000000 	jal	0 <BgGateShutter_Init>
  d8:	24840004 	addiu	a0,a0,4
  dc:	3c0a0000 	lui	t2,0x0
  e0:	254a0000 	addiu	t2,t2,0
  e4:	ae0a0164 	sw	t2,356(s0)
  e8:	8fbf001c 	lw	ra,28(sp)
  ec:	8fb00018 	lw	s0,24(sp)
  f0:	27bd0030 	addiu	sp,sp,48
  f4:	03e00008 	jr	ra
  f8:	00000000 	nop

000000fc <BgGateShutter_Destroy>:
  fc:	27bdffe8 	addiu	sp,sp,-24
 100:	afa40018 	sw	a0,24(sp)
 104:	8fae0018 	lw	t6,24(sp)
 108:	afbf0014 	sw	ra,20(sp)
 10c:	00a02025 	move	a0,a1
 110:	24a50810 	addiu	a1,a1,2064
 114:	0c000000 	jal	0 <BgGateShutter_Init>
 118:	8dc6014c 	lw	a2,332(t6)
 11c:	8fbf0014 	lw	ra,20(sp)
 120:	27bd0018 	addiu	sp,sp,24
 124:	03e00008 	jr	ra
 128:	00000000 	nop

0000012c <func_8087828C>:
 12c:	afa50004 	sw	a1,4(sp)
 130:	84820168 	lh	v0,360(a0)
 134:	24010001 	li	at,1
 138:	3c0e0000 	lui	t6,0x0
 13c:	1441000b 	bne	v0,at,16c <func_8087828C+0x40>
 140:	24030002 	li	v1,2
 144:	95ce0f06 	lhu	t6,3846(t6)
 148:	3c180000 	lui	t8,0x0
 14c:	27180000 	addiu	t8,t8,0
 150:	31cf0040 	andi	t7,t6,0x40
 154:	15e00005 	bnez	t7,16c <func_8087828C+0x40>
 158:	00000000 	nop
 15c:	24030002 	li	v1,2
 160:	a4830178 	sh	v1,376(a0)
 164:	03e00008 	jr	ra
 168:	ac980164 	sw	t8,356(a0)
 16c:	14620005 	bne	v1,v0,184 <func_8087828C+0x58>
 170:	3c190000 	lui	t9,0x0
 174:	27390000 	addiu	t9,t9,0
 178:	a4830178 	sh	v1,376(a0)
 17c:	03e00008 	jr	ra
 180:	ac990164 	sw	t9,356(a0)
 184:	04410004 	bgez	v0,198 <func_8087828C+0x6c>
 188:	3c080000 	lui	t0,0x0
 18c:	25080000 	addiu	t0,t0,0
 190:	a4830178 	sh	v1,376(a0)
 194:	ac880164 	sw	t0,356(a0)
 198:	03e00008 	jr	ra
 19c:	00000000 	nop

000001a0 <func_80878300>:
 1a0:	27bdffe0 	addiu	sp,sp,-32
 1a4:	afbf001c 	sw	ra,28(sp)
 1a8:	afb00018 	sw	s0,24(sp)
 1ac:	afa50024 	sw	a1,36(sp)
 1b0:	848e0178 	lh	t6,376(a0)
 1b4:	00808025 	move	s0,a0
 1b8:	55c00020 	bnezl	t6,23c <func_80878300+0x9c>
 1bc:	8fbf001c 	lw	ra,28(sp)
 1c0:	0c000000 	jal	0 <BgGateShutter_Init>
 1c4:	24052067 	li	a1,8295
 1c8:	3c014000 	lui	at,0x4000
 1cc:	44813000 	mtc1	at,$f6
 1d0:	c6040024 	lwc1	$f4,36(s0)
 1d4:	3c05c4ab 	lui	a1,0xc4ab
 1d8:	3c063f4c 	lui	a2,0x3f4c
 1dc:	46062201 	sub.s	$f8,$f4,$f6
 1e0:	3c073e99 	lui	a3,0x3e99
 1e4:	34e7999a 	ori	a3,a3,0x999a
 1e8:	34c6cccd 	ori	a2,a2,0xcccd
 1ec:	e6080024 	swc1	$f8,36(s0)
 1f0:	34a5e000 	ori	a1,a1,0xe000
 1f4:	0c000000 	jal	0 <BgGateShutter_Init>
 1f8:	2604002c 	addiu	a0,s0,44
 1fc:	3c01c2b2 	lui	at,0xc2b2
 200:	44818000 	mtc1	at,$f16
 204:	c60a0024 	lwc1	$f10,36(s0)
 208:	02002025 	move	a0,s0
 20c:	4610503c 	c.lt.s	$f10,$f16
 210:	00000000 	nop
 214:	45020009 	bc1fl	23c <func_80878300+0x9c>
 218:	8fbf001c 	lw	ra,28(sp)
 21c:	0c000000 	jal	0 <BgGateShutter_Init>
 220:	2405280e 	li	a1,10254
 224:	3c180000 	lui	t8,0x0
 228:	240f001e 	li	t7,30
 22c:	27180000 	addiu	t8,t8,0
 230:	a60f0178 	sh	t7,376(s0)
 234:	ae180164 	sw	t8,356(s0)
 238:	8fbf001c 	lw	ra,28(sp)
 23c:	8fb00018 	lw	s0,24(sp)
 240:	27bd0020 	addiu	sp,sp,32
 244:	03e00008 	jr	ra
 248:	00000000 	nop

0000024c <func_808783AC>:
 24c:	afa50004 	sw	a1,4(sp)
 250:	848e0178 	lh	t6,376(a0)
 254:	3c0f0000 	lui	t7,0x0
 258:	25ef0000 	addiu	t7,t7,0
 25c:	15c00003 	bnez	t6,26c <func_808783AC+0x20>
 260:	00000000 	nop
 264:	a4800168 	sh	zero,360(a0)
 268:	ac8f0164 	sw	t7,356(a0)
 26c:	03e00008 	jr	ra
 270:	00000000 	nop

00000274 <func_808783D4>:
 274:	27bdffe0 	addiu	sp,sp,-32
 278:	afbf001c 	sw	ra,28(sp)
 27c:	afb00018 	sw	s0,24(sp)
 280:	afa50024 	sw	a1,36(sp)
 284:	848e0178 	lh	t6,376(a0)
 288:	00808025 	move	s0,a0
 28c:	55c00023 	bnezl	t6,31c <func_808783D4+0xa8>
 290:	8fbf001c 	lw	ra,28(sp)
 294:	0c000000 	jal	0 <BgGateShutter_Init>
 298:	24052067 	li	a1,8295
 29c:	3c014000 	lui	at,0x4000
 2a0:	44813000 	mtc1	at,$f6
 2a4:	c6040024 	lwc1	$f4,36(s0)
 2a8:	3c05c4a8 	lui	a1,0xc4a8
 2ac:	3c063f4c 	lui	a2,0x3f4c
 2b0:	46062200 	add.s	$f8,$f4,$f6
 2b4:	3c073e99 	lui	a3,0x3e99
 2b8:	34e7999a 	ori	a3,a3,0x999a
 2bc:	34c6cccd 	ori	a2,a2,0xcccd
 2c0:	e6080024 	swc1	$f8,36(s0)
 2c4:	34a5c000 	ori	a1,a1,0xc000
 2c8:	0c000000 	jal	0 <BgGateShutter_Init>
 2cc:	2604002c 	addiu	a0,s0,44
 2d0:	3c0142b4 	lui	at,0x42b4
 2d4:	44815000 	mtc1	at,$f10
 2d8:	c6100024 	lwc1	$f16,36(s0)
 2dc:	3c0142b6 	lui	at,0x42b6
 2e0:	02002025 	move	a0,s0
 2e4:	4610503c 	c.lt.s	$f10,$f16
 2e8:	00000000 	nop
 2ec:	4502000b 	bc1fl	31c <func_808783D4+0xa8>
 2f0:	8fbf001c 	lw	ra,28(sp)
 2f4:	44819000 	mtc1	at,$f18
 2f8:	2405280e 	li	a1,10254
 2fc:	0c000000 	jal	0 <BgGateShutter_Init>
 300:	e6120024 	swc1	$f18,36(s0)
 304:	3c180000 	lui	t8,0x0
 308:	240f001e 	li	t7,30
 30c:	27180000 	addiu	t8,t8,0
 310:	a60f0178 	sh	t7,376(s0)
 314:	ae180164 	sw	t8,356(s0)
 318:	8fbf001c 	lw	ra,28(sp)
 31c:	8fb00018 	lw	s0,24(sp)
 320:	27bd0020 	addiu	sp,sp,32
 324:	03e00008 	jr	ra
 328:	00000000 	nop

0000032c <BgGateShutter_Update>:
 32c:	27bdffe8 	addiu	sp,sp,-24
 330:	afbf0014 	sw	ra,20(sp)
 334:	84820178 	lh	v0,376(a0)
 338:	10400002 	beqz	v0,344 <BgGateShutter_Update+0x18>
 33c:	244effff 	addiu	t6,v0,-1
 340:	a48e0178 	sh	t6,376(a0)
 344:	8c990164 	lw	t9,356(a0)
 348:	0320f809 	jalr	t9
 34c:	00000000 	nop
 350:	8fbf0014 	lw	ra,20(sp)
 354:	27bd0018 	addiu	sp,sp,24
 358:	03e00008 	jr	ra
 35c:	00000000 	nop

00000360 <BgGateShutter_Draw>:
 360:	27bdffc0 	addiu	sp,sp,-64
 364:	afbf001c 	sw	ra,28(sp)
 368:	afb00018 	sw	s0,24(sp)
 36c:	afa40040 	sw	a0,64(sp)
 370:	afa50044 	sw	a1,68(sp)
 374:	8ca50000 	lw	a1,0(a1)
 378:	3c060000 	lui	a2,0x0
 37c:	24c60030 	addiu	a2,a2,48
 380:	27a4002c 	addiu	a0,sp,44
 384:	24070143 	li	a3,323
 388:	0c000000 	jal	0 <BgGateShutter_Init>
 38c:	00a08025 	move	s0,a1
 390:	8faf0044 	lw	t7,68(sp)
 394:	0c000000 	jal	0 <BgGateShutter_Init>
 398:	8de40000 	lw	a0,0(t7)
 39c:	8e0202c0 	lw	v0,704(s0)
 3a0:	3c19da38 	lui	t9,0xda38
 3a4:	37390003 	ori	t9,t9,0x3
 3a8:	24580008 	addiu	t8,v0,8
 3ac:	ae1802c0 	sw	t8,704(s0)
 3b0:	ac590000 	sw	t9,0(v0)
 3b4:	8fa80044 	lw	t0,68(sp)
 3b8:	3c050000 	lui	a1,0x0
 3bc:	24a50048 	addiu	a1,a1,72
 3c0:	8d040000 	lw	a0,0(t0)
 3c4:	24060148 	li	a2,328
 3c8:	0c000000 	jal	0 <BgGateShutter_Init>
 3cc:	afa20028 	sw	v0,40(sp)
 3d0:	8fa30028 	lw	v1,40(sp)
 3d4:	3c0b0000 	lui	t3,0x0
 3d8:	256b0000 	addiu	t3,t3,0
 3dc:	ac620004 	sw	v0,4(v1)
 3e0:	8e0202c0 	lw	v0,704(s0)
 3e4:	3c0ade00 	lui	t2,0xde00
 3e8:	3c060000 	lui	a2,0x0
 3ec:	24490008 	addiu	t1,v0,8
 3f0:	ae0902c0 	sw	t1,704(s0)
 3f4:	ac4b0004 	sw	t3,4(v0)
 3f8:	ac4a0000 	sw	t2,0(v0)
 3fc:	8fac0044 	lw	t4,68(sp)
 400:	24c60060 	addiu	a2,a2,96
 404:	27a4002c 	addiu	a0,sp,44
 408:	2407014d 	li	a3,333
 40c:	0c000000 	jal	0 <BgGateShutter_Init>
 410:	8d850000 	lw	a1,0(t4)
 414:	8fbf001c 	lw	ra,28(sp)
 418:	8fb00018 	lw	s0,24(sp)
 41c:	27bd0040 	addiu	sp,sp,64
 420:	03e00008 	jr	ra
 424:	00000000 	nop
	...
