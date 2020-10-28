
build/src/overlays/effects/ovl_Effect_Ss_Blast/z_eff_ss_blast.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsBlast_Init>:
   0:	afa40000 	sw	a0,0(sp)
   4:	afa50004 	sw	a1,4(sp)
   8:	8cef0000 	lw	t7,0(a3)
   c:	3c0140a0 	lui	at,0x40a0
  10:	44813000 	mtc1	at,$f6
  14:	accf0000 	sw	t7,0(a2)
  18:	8cee0004 	lw	t6,4(a3)
  1c:	3c020000 	lui	v0,0x0
  20:	24420000 	addiu	v0,v0,0
  24:	acce0004 	sw	t6,4(a2)
  28:	c4c40004 	lwc1	$f4,4(a2)
  2c:	8cef0008 	lw	t7,8(a3)
  30:	00025100 	sll	t2,v0,0x4
  34:	46062200 	add.s	$f8,$f4,$f6
  38:	accf0008 	sw	t7,8(a2)
  3c:	000a5f02 	srl	t3,t2,0x1c
  40:	000b6080 	sll	t4,t3,0x2
  44:	e4c80004 	swc1	$f8,4(a2)
  48:	8cf9000c 	lw	t9,12(a3)
  4c:	3c0d0000 	lui	t5,0x0
  50:	01ac6821 	addu	t5,t5,t4
  54:	acd9000c 	sw	t9,12(a2)
  58:	8cf80010 	lw	t8,16(a3)
  5c:	3c0100ff 	lui	at,0xff
  60:	3421ffff 	ori	at,at,0xffff
  64:	acd80010 	sw	t8,16(a2)
  68:	8cf90014 	lw	t9,20(a3)
  6c:	00417024 	and	t6,v0,at
  70:	3c018000 	lui	at,0x8000
  74:	acd90014 	sw	t9,20(a2)
  78:	8ce90018 	lw	t1,24(a3)
  7c:	24020001 	li	v0,1
  80:	acc90018 	sw	t1,24(a2)
  84:	8ce8001c 	lw	t0,28(a3)
  88:	acc8001c 	sw	t0,28(a2)
  8c:	8ce90020 	lw	t1,32(a3)
  90:	3c080000 	lui	t0,0x0
  94:	25080000 	addiu	t0,t0,0
  98:	acc90020 	sw	t1,32(a2)
  9c:	8dad0000 	lw	t5,0(t5)
  a0:	3c090000 	lui	t1,0x0
  a4:	25290000 	addiu	t1,t1,0
  a8:	01ae7821 	addu	t7,t5,t6
  ac:	01e1c021 	addu	t8,t7,at
  b0:	acd80038 	sw	t8,56(a2)
  b4:	84f90032 	lh	t9,50(a3)
  b8:	acc80028 	sw	t0,40(a2)
  bc:	acc90024 	sw	t1,36(a2)
  c0:	a4d9005c 	sh	t9,92(a2)
  c4:	90ea0024 	lbu	t2,36(a3)
  c8:	a4ca0040 	sh	t2,64(a2)
  cc:	90eb0025 	lbu	t3,37(a3)
  d0:	a4cb0042 	sh	t3,66(a2)
  d4:	90ec0026 	lbu	t4,38(a3)
  d8:	a4cc0044 	sh	t4,68(a2)
  dc:	90ed0027 	lbu	t5,39(a3)
  e0:	a4cd0046 	sh	t5,70(a2)
  e4:	90ee0028 	lbu	t6,40(a3)
  e8:	a4ce0048 	sh	t6,72(a2)
  ec:	90ef0029 	lbu	t7,41(a3)
  f0:	a4cf004a 	sh	t7,74(a2)
  f4:	90f8002a 	lbu	t8,42(a3)
  f8:	a4d8004c 	sh	t8,76(a2)
  fc:	90f9002b 	lbu	t9,43(a3)
 100:	a4d9004e 	sh	t9,78(a2)
 104:	84e90032 	lh	t1,50(a3)
 108:	90e80027 	lbu	t0,39(a3)
 10c:	0109001a 	div	zero,t0,t1
 110:	00005012 	mflo	t2
 114:	a4ca0050 	sh	t2,80(a2)
 118:	84eb002c 	lh	t3,44(a3)
 11c:	15200002 	bnez	t1,128 <EffectSsBlast_Init+0x128>
 120:	00000000 	nop
 124:	0007000d 	break	0x7
 128:	2401ffff 	li	at,-1
 12c:	15210004 	bne	t1,at,140 <EffectSsBlast_Init+0x140>
 130:	3c018000 	lui	at,0x8000
 134:	15010002 	bne	t0,at,140 <EffectSsBlast_Init+0x140>
 138:	00000000 	nop
 13c:	0006000d 	break	0x6
 140:	a4cb0052 	sh	t3,82(a2)
 144:	84ec002e 	lh	t4,46(a3)
 148:	a4cc0054 	sh	t4,84(a2)
 14c:	84ed0030 	lh	t5,48(a3)
 150:	03e00008 	jr	ra
 154:	a4cd0056 	sh	t5,86(a2)

00000158 <EffectSsBlast_Draw>:
 158:	27bdff68 	addiu	sp,sp,-152
 15c:	afb10018 	sw	s1,24(sp)
 160:	afbf001c 	sw	ra,28(sp)
 164:	afb00014 	sw	s0,20(sp)
 168:	afa40098 	sw	a0,152(sp)
 16c:	afa5009c 	sw	a1,156(sp)
 170:	8c900000 	lw	s0,0(a0)
 174:	00c08825 	move	s1,a2
 178:	3c060000 	lui	a2,0x0
 17c:	24c60000 	addiu	a2,a2,0
 180:	27a40038 	addiu	a0,sp,56
 184:	240700aa 	li	a3,170
 188:	0c000000 	jal	0 <EffectSsBlast_Init>
 18c:	02002825 	move	a1,s0
 190:	862f0052 	lh	t7,82(s1)
 194:	3c010000 	lui	at,0x0
 198:	c428003c 	lwc1	$f8,60(at)
 19c:	448f2000 	mtc1	t7,$f4
 1a0:	8fb80098 	lw	t8,152(sp)
 1a4:	468021a0 	cvt.s.w	$f6,$f4
 1a8:	46083282 	mul.s	$f10,$f6,$f8
 1ac:	e7aa004c 	swc1	$f10,76(sp)
 1b0:	0c000000 	jal	0 <EffectSsBlast_Init>
 1b4:	8f040000 	lw	a0,0(t8)
 1b8:	8e0202d0 	lw	v0,720(s0)
 1bc:	3c08fb00 	lui	t0,0xfb00
 1c0:	27a50054 	addiu	a1,sp,84
 1c4:	24590008 	addiu	t9,v0,8
 1c8:	ae1902d0 	sw	t9,720(s0)
 1cc:	ac480000 	sw	t0,0(v0)
 1d0:	8629004e 	lh	t1,78(s1)
 1d4:	862f004a 	lh	t7,74(s1)
 1d8:	862c0048 	lh	t4,72(s1)
 1dc:	312a00ff 	andi	t2,t1,0xff
 1e0:	8629004c 	lh	t1,76(s1)
 1e4:	31f800ff 	andi	t8,t7,0xff
 1e8:	000c6e00 	sll	t5,t4,0x18
 1ec:	014d7025 	or	t6,t2,t5
 1f0:	0018cc00 	sll	t9,t8,0x10
 1f4:	312b00ff 	andi	t3,t1,0xff
 1f8:	000b6200 	sll	t4,t3,0x8
 1fc:	01d94025 	or	t0,t6,t9
 200:	010c5025 	or	t2,t0,t4
 204:	ac4a0004 	sw	t2,4(v0)
 208:	8fa40098 	lw	a0,152(sp)
 20c:	0c000000 	jal	0 <EffectSsBlast_Init>
 210:	02203025 	move	a2,s1
 214:	8e0202d0 	lw	v0,720(s0)
 218:	3c0ffa00 	lui	t7,0xfa00
 21c:	27a40054 	addiu	a0,sp,84
 220:	244d0008 	addiu	t5,v0,8
 224:	ae0d02d0 	sw	t5,720(s0)
 228:	ac4f0000 	sw	t7,0(v0)
 22c:	86380046 	lh	t8,70(s1)
 230:	862c0042 	lh	t4,66(s1)
 234:	86290040 	lh	t1,64(s1)
 238:	330e00ff 	andi	t6,t8,0xff
 23c:	86380044 	lh	t8,68(s1)
 240:	318a00ff 	andi	t2,t4,0xff
 244:	00095e00 	sll	t3,t1,0x18
 248:	01cb4025 	or	t0,t6,t3
 24c:	000a6c00 	sll	t5,t2,0x10
 250:	331900ff 	andi	t9,t8,0xff
 254:	00194a00 	sll	t1,t9,0x8
 258:	010d7825 	or	t7,t0,t5
 25c:	01e97025 	or	t6,t7,t1
 260:	0c000000 	jal	0 <EffectSsBlast_Init>
 264:	ac4e0004 	sw	t6,4(v0)
 268:	c7ac004c 	lwc1	$f12,76(sp)
 26c:	24070001 	li	a3,1
 270:	44066000 	mfc1	a2,$f12
 274:	0c000000 	jal	0 <EffectSsBlast_Init>
 278:	46006386 	mov.s	$f14,$f12
 27c:	8e0202d0 	lw	v0,720(s0)
 280:	3c0cda38 	lui	t4,0xda38
 284:	358c0003 	ori	t4,t4,0x3
 288:	244b0008 	addiu	t3,v0,8
 28c:	ae0b02d0 	sw	t3,720(s0)
 290:	3c050000 	lui	a1,0x0
 294:	ac4c0000 	sw	t4,0(v0)
 298:	24a50014 	addiu	a1,a1,20
 29c:	02002025 	move	a0,s0
 2a0:	240600c7 	li	a2,199
 2a4:	0c000000 	jal	0 <EffectSsBlast_Init>
 2a8:	afa2002c 	sw	v0,44(sp)
 2ac:	8fa3002c 	lw	v1,44(sp)
 2b0:	3c08de00 	lui	t0,0xde00
 2b4:	3c060000 	lui	a2,0x0
 2b8:	ac620004 	sw	v0,4(v1)
 2bc:	8e0202d0 	lw	v0,720(s0)
 2c0:	24c60028 	addiu	a2,a2,40
 2c4:	27a40038 	addiu	a0,sp,56
 2c8:	244a0008 	addiu	t2,v0,8
 2cc:	ae0a02d0 	sw	t2,720(s0)
 2d0:	ac480000 	sw	t0,0(v0)
 2d4:	8e2d0038 	lw	t5,56(s1)
 2d8:	02002825 	move	a1,s0
 2dc:	240700cc 	li	a3,204
 2e0:	0c000000 	jal	0 <EffectSsBlast_Init>
 2e4:	ac4d0004 	sw	t5,4(v0)
 2e8:	8fbf001c 	lw	ra,28(sp)
 2ec:	8fb00014 	lw	s0,20(sp)
 2f0:	8fb10018 	lw	s1,24(sp)
 2f4:	03e00008 	jr	ra
 2f8:	27bd0098 	addiu	sp,sp,152

000002fc <EffectSsBlast_Update>:
 2fc:	27bdffe8 	addiu	sp,sp,-24
 300:	afa40018 	sw	a0,24(sp)
 304:	afbf0014 	sw	ra,20(sp)
 308:	afa5001c 	sw	a1,28(sp)
 30c:	00c03825 	move	a3,a2
 310:	24c40046 	addiu	a0,a2,70
 314:	84c60050 	lh	a2,80(a2)
 318:	afa70020 	sw	a3,32(sp)
 31c:	0c000000 	jal	0 <EffectSsBlast_Init>
 320:	00002825 	move	a1,zero
 324:	8fa70020 	lw	a3,32(sp)
 328:	84e20054 	lh	v0,84(a3)
 32c:	84ee0052 	lh	t6,82(a3)
 330:	01c27821 	addu	t7,t6,v0
 334:	10400004 	beqz	v0,348 <EffectSsBlast_Update+0x4c>
 338:	a4ef0052 	sh	t7,82(a3)
 33c:	84f80056 	lh	t8,86(a3)
 340:	0058c823 	subu	t9,v0,t8
 344:	a4f90054 	sh	t9,84(a3)
 348:	8fbf0014 	lw	ra,20(sp)
 34c:	27bd0018 	addiu	sp,sp,24
 350:	03e00008 	jr	ra
 354:	00000000 	nop
	...
