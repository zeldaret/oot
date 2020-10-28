
build/src/overlays/effects/ovl_Effect_Ss_Stick/z_eff_ss_stick.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsStick_Init>:
   0:	27bdffb8 	addiu	sp,sp,-72
   4:	3c0e0000 	lui	t6,0x0
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	afa40048 	sw	a0,72(sp)
  14:	afa5004c 	sw	a1,76(sp)
  18:	afa70054 	sw	a3,84(sp)
  1c:	25ce0008 	addiu	t6,t6,8
  20:	8dd80000 	lw	t8,0(t6)
  24:	27a20038 	addiu	v0,sp,56
  28:	3c190000 	lui	t9,0x0
  2c:	ac580000 	sw	t8,0(v0)
  30:	8dcf0004 	lw	t7,4(t6)
  34:	3c010001 	lui	at,0x1
  38:	342117a4 	ori	at,at,0x17a4
  3c:	ac4f0004 	sw	t7,4(v0)
  40:	8dd80008 	lw	t8,8(t6)
  44:	00c08025 	move	s0,a2
  48:	ac580008 	sw	t8,8(v0)
  4c:	8dcf000c 	lw	t7,12(t6)
  50:	ac4f000c 	sw	t7,12(v0)
  54:	8f390004 	lw	t9,4(t9)
  58:	8fa40048 	lw	a0,72(sp)
  5c:	001948c0 	sll	t1,t9,0x3
  60:	01224021 	addu	t0,t1,v0
  64:	85050000 	lh	a1,0(t0)
  68:	afa80034 	sw	t0,52(sp)
  6c:	0c000000 	jal	0 <EffectSsStick_Init>
  70:	00812021 	addu	a0,a0,at
  74:	8fa80034 	lw	t0,52(sp)
  78:	8fa50054 	lw	a1,84(sp)
  7c:	a6020040 	sh	v0,64(s0)
  80:	8d0a0004 	lw	t2,4(t0)
  84:	27a30024 	addiu	v1,sp,36
  88:	ae0a0038 	sw	t2,56(s0)
  8c:	8cac0000 	lw	t4,0(a1)
  90:	ac6c0000 	sw	t4,0(v1)
  94:	8cab0004 	lw	t3,4(a1)
  98:	8c6e0000 	lw	t6,0(v1)
  9c:	ac6b0004 	sw	t3,4(v1)
  a0:	8cac0008 	lw	t4,8(a1)
  a4:	ac6c0008 	sw	t4,8(v1)
  a8:	ae0e0000 	sw	t6,0(s0)
  ac:	8c6d0004 	lw	t5,4(v1)
  b0:	ae0d0004 	sw	t5,4(s0)
  b4:	8c6e0008 	lw	t6,8(v1)
  b8:	ae0e0008 	sw	t6,8(s0)
  bc:	8c780000 	lw	t8,0(v1)
  c0:	ae18002c 	sw	t8,44(s0)
  c4:	8c6f0004 	lw	t7,4(v1)
  c8:	ae0f0030 	sw	t7,48(s0)
  cc:	8c780008 	lw	t8,8(v1)
  d0:	ae180034 	sw	t8,52(s0)
  d4:	84b9000c 	lh	t9,12(a1)
  d8:	a6190042 	sh	t9,66(s0)
  dc:	0c000000 	jal	0 <EffectSsStick_Init>
  e0:	84a4000c 	lh	a0,12(a1)
  e4:	3c0140c0 	lui	at,0x40c0
  e8:	44812000 	mtc1	at,$f4
  ec:	8fa50054 	lw	a1,84(sp)
  f0:	46040182 	mul.s	$f6,$f0,$f4
  f4:	e606000c 	swc1	$f6,12(s0)
  f8:	0c000000 	jal	0 <EffectSsStick_Init>
  fc:	84a4000c 	lh	a0,12(a1)
 100:	3c0140c0 	lui	at,0x40c0
 104:	44814000 	mtc1	at,$f8
 108:	3c0141d0 	lui	at,0x41d0
 10c:	44818000 	mtc1	at,$f16
 110:	46080282 	mul.s	$f10,$f0,$f8
 114:	3c01c080 	lui	at,0xc080
 118:	44819000 	mtc1	at,$f18
 11c:	3c0a0000 	lui	t2,0x0
 120:	3c0b0000 	lui	t3,0x0
 124:	24090014 	li	t1,20
 128:	254a0000 	addiu	t2,t2,0
 12c:	256b0000 	addiu	t3,t3,0
 130:	e60a0014 	swc1	$f10,20(s0)
 134:	a609005c 	sh	t1,92(s0)
 138:	ae0a0028 	sw	t2,40(s0)
 13c:	ae0b0024 	sw	t3,36(s0)
 140:	e6100010 	swc1	$f16,16(s0)
 144:	e612001c 	swc1	$f18,28(s0)
 148:	8fbf001c 	lw	ra,28(sp)
 14c:	8fb00018 	lw	s0,24(sp)
 150:	27bd0048 	addiu	sp,sp,72
 154:	03e00008 	jr	ra
 158:	24020001 	li	v0,1

0000015c <EffectSsStick_Draw>:
 15c:	27bdffb0 	addiu	sp,sp,-80
 160:	afb10018 	sw	s1,24(sp)
 164:	afbf001c 	sw	ra,28(sp)
 168:	afb00014 	sw	s0,20(sp)
 16c:	afa40050 	sw	a0,80(sp)
 170:	afa50054 	sw	a1,84(sp)
 174:	8c900000 	lw	s0,0(a0)
 178:	00c08825 	move	s1,a2
 17c:	3c060000 	lui	a2,0x0
 180:	24c60000 	addiu	a2,a2,0
 184:	27a40034 	addiu	a0,sp,52
 188:	24070099 	li	a3,153
 18c:	0c000000 	jal	0 <EffectSsStick_Init>
 190:	02002825 	move	a1,s0
 194:	c62c0000 	lwc1	$f12,0(s1)
 198:	c62e0004 	lwc1	$f14,4(s1)
 19c:	8e260008 	lw	a2,8(s1)
 1a0:	0c000000 	jal	0 <EffectSsStick_Init>
 1a4:	00003825 	move	a3,zero
 1a8:	3c0f0000 	lui	t7,0x0
 1ac:	8def0004 	lw	t7,4(t7)
 1b0:	3c010000 	lui	at,0x0
 1b4:	11e0000f 	beqz	t7,1f4 <EffectSsStick_Draw+0x98>
 1b8:	00000000 	nop
 1bc:	3c010000 	lui	at,0x0
 1c0:	c42c003c 	lwc1	$f12,60(at)
 1c4:	3c010000 	lui	at,0x0
 1c8:	c42e0040 	lwc1	$f14,64(at)
 1cc:	44066000 	mfc1	a2,$f12
 1d0:	0c000000 	jal	0 <EffectSsStick_Init>
 1d4:	24070001 	li	a3,1
 1d8:	00002025 	move	a0,zero
 1dc:	86250042 	lh	a1,66(s1)
 1e0:	00003025 	move	a2,zero
 1e4:	0c000000 	jal	0 <EffectSsStick_Init>
 1e8:	24070001 	li	a3,1
 1ec:	10000017 	b	24c <EffectSsStick_Draw+0xf0>
 1f0:	8e0202c0 	lw	v0,704(s0)
 1f4:	c42c0044 	lwc1	$f12,68(at)
 1f8:	24070001 	li	a3,1
 1fc:	44066000 	mfc1	a2,$f12
 200:	0c000000 	jal	0 <EffectSsStick_Init>
 204:	46006386 	mov.s	$f14,$f12
 208:	8fb80050 	lw	t8,80(sp)
 20c:	00002025 	move	a0,zero
 210:	86250042 	lh	a1,66(s1)
 214:	8f06009c 	lw	a2,156(t8)
 218:	24070001 	li	a3,1
 21c:	00c00821 	move	at,a2
 220:	00063080 	sll	a2,a2,0x2
 224:	00c13021 	addu	a2,a2,at
 228:	000630c0 	sll	a2,a2,0x3
 22c:	00c13023 	subu	a2,a2,at
 230:	00063100 	sll	a2,a2,0x4
 234:	00c13021 	addu	a2,a2,at
 238:	00063100 	sll	a2,a2,0x4
 23c:	00063400 	sll	a2,a2,0x10
 240:	0c000000 	jal	0 <EffectSsStick_Init>
 244:	00063403 	sra	a2,a2,0x10
 248:	8e0202c0 	lw	v0,704(s0)
 24c:	3c08da38 	lui	t0,0xda38
 250:	35080003 	ori	t0,t0,0x3
 254:	24590008 	addiu	t9,v0,8
 258:	ae1902c0 	sw	t9,704(s0)
 25c:	3c050000 	lui	a1,0x0
 260:	ac480000 	sw	t0,0(v0)
 264:	24a50014 	addiu	a1,a1,20
 268:	02002025 	move	a0,s0
 26c:	240600b0 	li	a2,176
 270:	0c000000 	jal	0 <EffectSsStick_Init>
 274:	afa20030 	sw	v0,48(sp)
 278:	8fa30030 	lw	v1,48(sp)
 27c:	02002025 	move	a0,s0
 280:	0c000000 	jal	0 <EffectSsStick_Init>
 284:	ac620004 	sw	v0,4(v1)
 288:	8e0202c0 	lw	v0,704(s0)
 28c:	3c0adb06 	lui	t2,0xdb06
 290:	354a0018 	ori	t2,t2,0x18
 294:	24490008 	addiu	t1,v0,8
 298:	ae0902c0 	sw	t1,704(s0)
 29c:	ac4a0000 	sw	t2,0(v0)
 2a0:	862c0040 	lh	t4,64(s1)
 2a4:	8fab0050 	lw	t3,80(sp)
 2a8:	3c0f0001 	lui	t7,0x1
 2ac:	000c6900 	sll	t5,t4,0x4
 2b0:	01ac6821 	addu	t5,t5,t4
 2b4:	000d6880 	sll	t5,t5,0x2
 2b8:	016d7021 	addu	t6,t3,t5
 2bc:	01ee7821 	addu	t7,t7,t6
 2c0:	8def17b4 	lw	t7,6068(t7)
 2c4:	3c19db06 	lui	t9,0xdb06
 2c8:	3c080000 	lui	t0,0x0
 2cc:	ac4f0004 	sw	t7,4(v0)
 2d0:	8e0202c0 	lw	v0,704(s0)
 2d4:	25080000 	addiu	t0,t0,0
 2d8:	37390030 	ori	t9,t9,0x30
 2dc:	24580008 	addiu	t8,v0,8
 2e0:	ae1802c0 	sw	t8,704(s0)
 2e4:	ac480004 	sw	t0,4(v0)
 2e8:	ac590000 	sw	t9,0(v0)
 2ec:	8e0202c0 	lw	v0,704(s0)
 2f0:	3c0ade00 	lui	t2,0xde00
 2f4:	3c060000 	lui	a2,0x0
 2f8:	24490008 	addiu	t1,v0,8
 2fc:	ae0902c0 	sw	t1,704(s0)
 300:	ac4a0000 	sw	t2,0(v0)
 304:	8e2c0038 	lw	t4,56(s1)
 308:	24c60028 	addiu	a2,a2,40
 30c:	27a40034 	addiu	a0,sp,52
 310:	02002825 	move	a1,s0
 314:	240700bc 	li	a3,188
 318:	0c000000 	jal	0 <EffectSsStick_Init>
 31c:	ac4c0004 	sw	t4,4(v0)
 320:	8fbf001c 	lw	ra,28(sp)
 324:	8fb00014 	lw	s0,20(sp)
 328:	8fb10018 	lw	s1,24(sp)
 32c:	03e00008 	jr	ra
 330:	27bd0050 	addiu	sp,sp,80

00000334 <EffectSsStick_Update>:
 334:	afa40000 	sw	a0,0(sp)
 338:	afa50004 	sw	a1,4(sp)
 33c:	03e00008 	jr	ra
 340:	afa60008 	sw	a2,8(sp)
	...
