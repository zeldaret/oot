
build/src/overlays/effects/ovl_Effect_Ss_Stone1/z_eff_ss_stone1.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsStone1_Init>:
   0:	27bdfff0 	addiu	sp,sp,-16
   4:	afa40010 	sw	a0,16(sp)
   8:	afa50014 	sw	a1,20(sp)
   c:	8cef0000 	lw	t7,0(a3)
  10:	27a30000 	addiu	v1,sp,0
  14:	240a0008 	li	t2,8
  18:	ac6f0000 	sw	t7,0(v1)
  1c:	8cee0004 	lw	t6,4(a3)
  20:	8c790000 	lw	t9,0(v1)
  24:	3c0c0000 	lui	t4,0x0
  28:	ac6e0004 	sw	t6,4(v1)
  2c:	8cef0008 	lw	t7,8(a3)
  30:	3c0d0000 	lui	t5,0x0
  34:	258c0000 	addiu	t4,t4,0
  38:	ac6f0008 	sw	t7,8(v1)
  3c:	acd90000 	sw	t9,0(a2)
  40:	8c780004 	lw	t8,4(v1)
  44:	25ad0000 	addiu	t5,t5,0
  48:	24020001 	li	v0,1
  4c:	acd80004 	sw	t8,4(a2)
  50:	8c790008 	lw	t9,8(v1)
  54:	acd90008 	sw	t9,8(a2)
  58:	8c690000 	lw	t1,0(v1)
  5c:	acc9002c 	sw	t1,44(a2)
  60:	8c680004 	lw	t0,4(v1)
  64:	acc80030 	sw	t0,48(a2)
  68:	8c690008 	lw	t1,8(v1)
  6c:	a4ca005c 	sh	t2,92(a2)
  70:	acc90034 	sw	t1,52(a2)
  74:	8ceb000c 	lw	t3,12(a3)
  78:	accc0028 	sw	t4,40(a2)
  7c:	accd0024 	sw	t5,36(a2)
  80:	27bd0010 	addiu	sp,sp,16
  84:	03e00008 	jr	ra
  88:	a4cb0040 	sh	t3,64(a2)

0000008c <EffectSsStone1_Draw>:
  8c:	27bdff98 	addiu	sp,sp,-104
  90:	afbf001c 	sw	ra,28(sp)
  94:	afb10018 	sw	s1,24(sp)
  98:	afb00014 	sw	s0,20(sp)
  9c:	afa40068 	sw	a0,104(sp)
  a0:	afa5006c 	sw	a1,108(sp)
  a4:	afa60070 	sw	a2,112(sp)
  a8:	84d8005c 	lh	t8,92(a2)
  ac:	8c900000 	lw	s0,0(a0)
  b0:	3c080000 	lui	t0,0x0
  b4:	0018c880 	sll	t9,t8,0x2
  b8:	0338c823 	subu	t9,t9,t8
  bc:	0019c880 	sll	t9,t9,0x2
  c0:	25080008 	addiu	t0,t0,8
  c4:	3c060000 	lui	a2,0x0
  c8:	03288821 	addu	s1,t9,t0
  cc:	24c60000 	addiu	a2,a2,0
  d0:	27a40038 	addiu	a0,sp,56
  d4:	2407009a 	li	a3,154
  d8:	0c000000 	jal	0 <EffectSsStone1_Init>
  dc:	02002825 	move	a1,s0
  e0:	8fa40068 	lw	a0,104(sp)
  e4:	3c010001 	lui	at,0x1
  e8:	34211d60 	ori	at,at,0x1d60
  ec:	8fa50070 	lw	a1,112(sp)
  f0:	27a60054 	addiu	a2,sp,84
  f4:	27a70050 	addiu	a3,sp,80
  f8:	0c000000 	jal	0 <EffectSsStone1_Init>
  fc:	00812021 	addu	a0,a0,at
 100:	3c010000 	lui	at,0x0
 104:	c4220048 	lwc1	$f2,72(at)
 108:	c7a00050 	lwc1	$f0,80(sp)
 10c:	8fa50070 	lw	a1,112(sp)
 110:	3c014040 	lui	at,0x4040
 114:	4602003c 	c.lt.s	$f0,$f2
 118:	00003825 	move	a3,zero
 11c:	45020005 	bc1fl	134 <EffectSsStone1_Draw+0xa8>
 120:	46020183 	div.s	$f6,$f0,$f2
 124:	44812000 	mtc1	at,$f4
 128:	10000007 	b	148 <EffectSsStone1_Draw+0xbc>
 12c:	e7a4004c 	swc1	$f4,76(sp)
 130:	46020183 	div.s	$f6,$f0,$f2
 134:	3c014040 	lui	at,0x4040
 138:	44814000 	mtc1	at,$f8
 13c:	00000000 	nop
 140:	46083302 	mul.s	$f12,$f6,$f8
 144:	e7ac004c 	swc1	$f12,76(sp)
 148:	c4ac0000 	lwc1	$f12,0(a1)
 14c:	c4ae0004 	lwc1	$f14,4(a1)
 150:	0c000000 	jal	0 <EffectSsStone1_Init>
 154:	8ca60008 	lw	a2,8(a1)
 158:	c7ac004c 	lwc1	$f12,76(sp)
 15c:	24070001 	li	a3,1
 160:	44066000 	mfc1	a2,$f12
 164:	0c000000 	jal	0 <EffectSsStone1_Init>
 168:	46006386 	mov.s	$f14,$f12
 16c:	8e0202d0 	lw	v0,720(s0)
 170:	3c0ada38 	lui	t2,0xda38
 174:	354a0003 	ori	t2,t2,0x3
 178:	24490008 	addiu	t1,v0,8
 17c:	ae0902d0 	sw	t1,720(s0)
 180:	3c050000 	lui	a1,0x0
 184:	ac4a0000 	sw	t2,0(v0)
 188:	24a50018 	addiu	a1,a1,24
 18c:	02002025 	move	a0,s0
 190:	240600a8 	li	a2,168
 194:	0c000000 	jal	0 <EffectSsStone1_Init>
 198:	afa20034 	sw	v0,52(sp)
 19c:	8fa30034 	lw	v1,52(sp)
 1a0:	02002025 	move	a0,s0
 1a4:	0c000000 	jal	0 <EffectSsStone1_Init>
 1a8:	ac620004 	sw	v0,4(v1)
 1ac:	8e0202d0 	lw	v0,720(s0)
 1b0:	3c0cdb06 	lui	t4,0xdb06
 1b4:	358c0020 	ori	t4,t4,0x20
 1b8:	244b0008 	addiu	t3,v0,8
 1bc:	ae0b02d0 	sw	t3,720(s0)
 1c0:	ac4c0000 	sw	t4,0(v0)
 1c4:	8e240000 	lw	a0,0(s1)
 1c8:	3c180000 	lui	t8,0x0
 1cc:	3c0100ff 	lui	at,0xff
 1d0:	00046900 	sll	t5,a0,0x4
 1d4:	000d7702 	srl	t6,t5,0x1c
 1d8:	000e7880 	sll	t7,t6,0x2
 1dc:	030fc021 	addu	t8,t8,t7
 1e0:	8f180000 	lw	t8,0(t8)
 1e4:	3421ffff 	ori	at,at,0xffff
 1e8:	0081c824 	and	t9,a0,at
 1ec:	3c018000 	lui	at,0x8000
 1f0:	03194021 	addu	t0,t8,t9
 1f4:	01014821 	addu	t1,t0,at
 1f8:	ac490004 	sw	t1,4(v0)
 1fc:	8e0202d0 	lw	v0,720(s0)
 200:	3c0bfa00 	lui	t3,0xfa00
 204:	3c060000 	lui	a2,0x0
 208:	244a0008 	addiu	t2,v0,8
 20c:	ae0a02d0 	sw	t2,720(s0)
 210:	ac4b0000 	sw	t3,0(v0)
 214:	92380005 	lbu	t8,5(s1)
 218:	922d0004 	lbu	t5,4(s1)
 21c:	922a0006 	lbu	t2,6(s1)
 220:	0018cc00 	sll	t9,t8,0x10
 224:	000d7600 	sll	t6,t5,0x18
 228:	01d94025 	or	t0,t6,t9
 22c:	000a5a00 	sll	t3,t2,0x8
 230:	010b6025 	or	t4,t0,t3
 234:	358d00ff 	ori	t5,t4,0xff
 238:	ac4d0004 	sw	t5,4(v0)
 23c:	8e0202d0 	lw	v0,720(s0)
 240:	3c18fb00 	lui	t8,0xfb00
 244:	24c60030 	addiu	a2,a2,48
 248:	244f0008 	addiu	t7,v0,8
 24c:	ae0f02d0 	sw	t7,720(s0)
 250:	ac580000 	sw	t8,0(v0)
 254:	92280009 	lbu	t0,9(s1)
 258:	92390008 	lbu	t9,8(s1)
 25c:	922f000a 	lbu	t7,10(s1)
 260:	00085c00 	sll	t3,t0,0x10
 264:	00194e00 	sll	t1,t9,0x18
 268:	012b6025 	or	t4,t1,t3
 26c:	000fc200 	sll	t8,t7,0x8
 270:	01987025 	or	t6,t4,t8
 274:	35d900ff 	ori	t9,t6,0xff
 278:	ac590004 	sw	t9,4(v0)
 27c:	8e0202d0 	lw	v0,720(s0)
 280:	3c090000 	lui	t1,0x0
 284:	25290000 	addiu	t1,t1,0
 288:	244a0008 	addiu	t2,v0,8
 28c:	ae0a02d0 	sw	t2,720(s0)
 290:	3c08de00 	lui	t0,0xde00
 294:	27a40038 	addiu	a0,sp,56
 298:	02002825 	move	a1,s0
 29c:	240700b7 	li	a3,183
 2a0:	ac480000 	sw	t0,0(v0)
 2a4:	0c000000 	jal	0 <EffectSsStone1_Init>
 2a8:	ac490004 	sw	t1,4(v0)
 2ac:	8fbf001c 	lw	ra,28(sp)
 2b0:	8fb00014 	lw	s0,20(sp)
 2b4:	8fb10018 	lw	s1,24(sp)
 2b8:	03e00008 	jr	ra
 2bc:	27bd0068 	addiu	sp,sp,104

000002c0 <EffectSsStone1_Update>:
 2c0:	afa40000 	sw	a0,0(sp)
 2c4:	afa50004 	sw	a1,4(sp)
 2c8:	84ce005c 	lh	t6,92(a2)
 2cc:	24010006 	li	at,6
 2d0:	15c10007 	bne	t6,at,2f0 <EffectSsStone1_Update+0x30>
 2d4:	00000000 	nop
 2d8:	84cf0040 	lh	t7,64(a2)
 2dc:	3c180000 	lui	t8,0x0
 2e0:	11e00003 	beqz	t7,2f0 <EffectSsStone1_Update+0x30>
 2e4:	00000000 	nop
 2e8:	8f180000 	lw	t8,0(t8)
 2ec:	a7000d38 	sh	zero,3384(t8)
 2f0:	03e00008 	jr	ra
 2f4:	00000000 	nop
	...
