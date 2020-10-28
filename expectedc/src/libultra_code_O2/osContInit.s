
build/src/libultra_code_O2/osContInit.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osContInit>:
   0:	3c020000 	lui	v0,0x0
   4:	24420000 	addiu	v0,v0,0
   8:	8c4e0000 	lw	t6,0(v0)
   c:	27bdff90 	addiu	sp,sp,-112
  10:	afbf0024 	sw	ra,36(sp)
  14:	afa40070 	sw	a0,112(sp)
  18:	afa50074 	sw	a1,116(sp)
  1c:	11c00003 	beqz	t6,2c <osContInit+0x2c>
  20:	afa60078 	sw	a2,120(sp)
  24:	10000049 	b	14c <osContInit+0x14c>
  28:	00001025 	move	v0,zero
  2c:	240f0001 	li	t7,1
  30:	0c000000 	jal	0 <osContInit>
  34:	ac4f0000 	sw	t7,0(v0)
  38:	afa20060 	sw	v0,96(sp)
  3c:	14400020 	bnez	v0,c0 <osContInit+0xc0>
  40:	afa30064 	sw	v1,100(sp)
  44:	3c010165 	lui	at,0x165
  48:	3421a0bc 	ori	at,at,0xa0bc
  4c:	0061082b 	sltu	at,v1,at
  50:	1020001b 	beqz	at,c0 <osContInit+0xc0>
  54:	27a40028 	addiu	a0,sp,40
  58:	27a5006c 	addiu	a1,sp,108
  5c:	0c000000 	jal	0 <osContInit>
  60:	24060001 	li	a2,1
  64:	8fb80060 	lw	t8,96(sp)
  68:	8fb90064 	lw	t9,100(sp)
  6c:	3c090165 	lui	t1,0x165
  70:	3529a0bc 	ori	t1,t1,0xa0bc
  74:	24080000 	li	t0,0
  78:	240a0000 	li	t2,0
  7c:	240b0000 	li	t3,0
  80:	27ac0028 	addiu	t4,sp,40
  84:	27ad006c 	addiu	t5,sp,108
  88:	01183023 	subu	a2,t0,t8
  8c:	0139082b 	sltu	at,t1,t9
  90:	00c13023 	subu	a2,a2,at
  94:	afad001c 	sw	t5,28(sp)
  98:	afac0018 	sw	t4,24(sp)
  9c:	afab0014 	sw	t3,20(sp)
  a0:	afaa0010 	sw	t2,16(sp)
  a4:	27a40040 	addiu	a0,sp,64
  a8:	0c000000 	jal	0 <osContInit>
  ac:	01393823 	subu	a3,t1,t9
  b0:	27a40028 	addiu	a0,sp,40
  b4:	27a5006c 	addiu	a1,sp,108
  b8:	0c000000 	jal	0 <osContInit>
  bc:	24060001 	li	a2,1
  c0:	240e0004 	li	t6,4
  c4:	3c010000 	lui	at,0x0
  c8:	a02e0000 	sb	t6,0(at)
  cc:	0c000000 	jal	0 <osContInit>
  d0:	00002025 	move	a0,zero
  d4:	3c050000 	lui	a1,0x0
  d8:	24a50000 	addiu	a1,a1,0
  dc:	0c000000 	jal	0 <osContInit>
  e0:	24040001 	li	a0,1
  e4:	8fa40070 	lw	a0,112(sp)
  e8:	27a5006c 	addiu	a1,sp,108
  ec:	0c000000 	jal	0 <osContInit>
  f0:	24060001 	li	a2,1
  f4:	3c050000 	lui	a1,0x0
  f8:	24a50000 	addiu	a1,a1,0
  fc:	0c000000 	jal	0 <osContInit>
 100:	00002025 	move	a0,zero
 104:	afa20068 	sw	v0,104(sp)
 108:	8fa40070 	lw	a0,112(sp)
 10c:	27a5006c 	addiu	a1,sp,108
 110:	0c000000 	jal	0 <osContInit>
 114:	24060001 	li	a2,1
 118:	8fa40074 	lw	a0,116(sp)
 11c:	0c000000 	jal	0 <osContInit>
 120:	8fa50078 	lw	a1,120(sp)
 124:	3c010000 	lui	at,0x0
 128:	0c000000 	jal	0 <osContInit>
 12c:	a0200000 	sb	zero,0(at)
 130:	3c040000 	lui	a0,0x0
 134:	3c050000 	lui	a1,0x0
 138:	24a50000 	addiu	a1,a1,0
 13c:	24840000 	addiu	a0,a0,0
 140:	0c000000 	jal	0 <osContInit>
 144:	24060001 	li	a2,1
 148:	8fa20068 	lw	v0,104(sp)
 14c:	8fbf0024 	lw	ra,36(sp)
 150:	27bd0070 	addiu	sp,sp,112
 154:	03e00008 	jr	ra
 158:	00000000 	nop

0000015c <__osContGetInitData>:
 15c:	3c070000 	lui	a3,0x0
 160:	24e70000 	addiu	a3,a3,0
 164:	90ee0000 	lbu	t6,0(a3)
 168:	3c030000 	lui	v1,0x0
 16c:	27bdffe8 	addiu	sp,sp,-24
 170:	00001025 	move	v0,zero
 174:	24630000 	addiu	v1,v1,0
 178:	19c00020 	blez	t6,1fc <__osContGetInitData+0xa0>
 17c:	00003025 	move	a2,zero
 180:	27a8000c 	addiu	t0,sp,12
 184:	88610000 	lwl	at,0(v1)
 188:	98610003 	lwr	at,3(v1)
 18c:	ad010000 	sw	at,0(t0)
 190:	88780004 	lwl	t8,4(v1)
 194:	98780007 	lwr	t8,7(v1)
 198:	ad180004 	sw	t8,4(t0)
 19c:	93b9000e 	lbu	t9,14(sp)
 1a0:	332900c0 	andi	t1,t9,0xc0
 1a4:	00095103 	sra	t2,t1,0x4
 1a8:	314b00ff 	andi	t3,t2,0xff
 1ac:	1560000d 	bnez	t3,1e4 <__osContGetInitData+0x88>
 1b0:	a0aa0003 	sb	t2,3(a1)
 1b4:	93ac0011 	lbu	t4,17(sp)
 1b8:	93ae0010 	lbu	t6,16(sp)
 1bc:	24190001 	li	t9,1
 1c0:	000c6a00 	sll	t5,t4,0x8
 1c4:	01ae7825 	or	t7,t5,t6
 1c8:	a4af0000 	sh	t7,0(a1)
 1cc:	93b80012 	lbu	t8,18(sp)
 1d0:	00d94804 	sllv	t1,t9,a2
 1d4:	00491025 	or	v0,v0,t1
 1d8:	304a00ff 	andi	t2,v0,0xff
 1dc:	01401025 	move	v0,t2
 1e0:	a0b80002 	sb	t8,2(a1)
 1e4:	90eb0000 	lbu	t3,0(a3)
 1e8:	24c60001 	addiu	a2,a2,1
 1ec:	24630008 	addiu	v1,v1,8
 1f0:	00cb082a 	slt	at,a2,t3
 1f4:	1420ffe3 	bnez	at,184 <__osContGetInitData+0x28>
 1f8:	24a50004 	addiu	a1,a1,4
 1fc:	a0820000 	sb	v0,0(a0)
 200:	03e00008 	jr	ra
 204:	27bd0018 	addiu	sp,sp,24

00000208 <__osPackRequestData>:
 208:	27bdffe8 	addiu	sp,sp,-24
 20c:	afa40018 	sw	a0,24(sp)
 210:	308e00ff 	andi	t6,a0,0xff
 214:	3c030000 	lui	v1,0x0
 218:	3c020000 	lui	v0,0x0
 21c:	01c02025 	move	a0,t6
 220:	2442003c 	addiu	v0,v0,60
 224:	24630000 	addiu	v1,v1,0
 228:	24630004 	addiu	v1,v1,4
 22c:	0062082b 	sltu	at,v1,v0
 230:	1420fffd 	bnez	at,228 <__osPackRequestData+0x20>
 234:	ac60fffc 	sw	zero,-4(v1)
 238:	3c050000 	lui	a1,0x0
 23c:	24a30000 	addiu	v1,a1,0
 240:	240f0001 	li	t7,1
 244:	ac6f003c 	sw	t7,60(v1)
 248:	3c060000 	lui	a2,0x0
 24c:	24c60000 	addiu	a2,a2,0
 250:	90cd0000 	lbu	t5,0(a2)
 254:	241800ff 	li	t8,255
 258:	24190001 	li	t9,1
 25c:	24080003 	li	t0,3
 260:	240900ff 	li	t1,255
 264:	240a00ff 	li	t2,255
 268:	240b00ff 	li	t3,255
 26c:	240c00ff 	li	t4,255
 270:	a3b8000c 	sb	t8,12(sp)
 274:	a3b9000d 	sb	t9,13(sp)
 278:	a3a8000e 	sb	t0,14(sp)
 27c:	a3a4000f 	sb	a0,15(sp)
 280:	a3a90010 	sb	t1,16(sp)
 284:	a3aa0011 	sb	t2,17(sp)
 288:	a3ab0012 	sb	t3,18(sp)
 28c:	a3ac0013 	sb	t4,19(sp)
 290:	19a0000e 	blez	t5,2cc <__osPackRequestData+0xc4>
 294:	00001025 	move	v0,zero
 298:	27a4000c 	addiu	a0,sp,12
 29c:	8c810000 	lw	at,0(a0)
 2a0:	24420001 	addiu	v0,v0,1
 2a4:	24630008 	addiu	v1,v1,8
 2a8:	a861fff8 	swl	at,-8(v1)
 2ac:	b861fffb 	swr	at,-5(v1)
 2b0:	8c8f0004 	lw	t7,4(a0)
 2b4:	a86ffffc 	swl	t7,-4(v1)
 2b8:	b86fffff 	swr	t7,-1(v1)
 2bc:	90d80000 	lbu	t8,0(a2)
 2c0:	0058082a 	slt	at,v0,t8
 2c4:	5420fff6 	bnezl	at,2a0 <__osPackRequestData+0x98>
 2c8:	8c810000 	lw	at,0(a0)
 2cc:	241900fe 	li	t9,254
 2d0:	a0790000 	sb	t9,0(v1)
 2d4:	03e00008 	jr	ra
 2d8:	27bd0018 	addiu	sp,sp,24
 2dc:	00000000 	nop
