
build/src/libultra_code_O2/osPfsIsPlug.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osPfsIsPlug>:
   0:	27bdff90 	addiu	sp,sp,-112
   4:	afbf003c 	sw	ra,60(sp)
   8:	afb5002c 	sw	s5,44(sp)
   c:	afb20020 	sw	s2,32(sp)
  10:	afb1001c 	sw	s1,28(sp)
  14:	00809025 	move	s2,a0
  18:	afbe0038 	sw	s8,56(sp)
  1c:	afb70034 	sw	s7,52(sp)
  20:	afb60030 	sw	s6,48(sp)
  24:	afb40028 	sw	s4,40(sp)
  28:	afb30024 	sw	s3,36(sp)
  2c:	afb00018 	sw	s0,24(sp)
  30:	afa50074 	sw	a1,116(sp)
  34:	0000a825 	move	s5,zero
  38:	0c000000 	jal	0 <osPfsIsPlug>
  3c:	24110003 	li	s1,3
  40:	3c1e0000 	lui	s8,0x0
  44:	3c130000 	lui	s3,0x0
  48:	26730000 	addiu	s3,s3,0
  4c:	27de0000 	addiu	s8,s8,0
  50:	00008025 	move	s0,zero
  54:	27b70054 	addiu	s7,sp,84
  58:	27b60067 	addiu	s6,sp,103
  5c:	27b40068 	addiu	s4,sp,104
  60:	0c000000 	jal	0 <osPfsIsPlug>
  64:	00002025 	move	a0,zero
  68:	24040001 	li	a0,1
  6c:	0c000000 	jal	0 <osPfsIsPlug>
  70:	02602825 	move	a1,s3
  74:	02402025 	move	a0,s2
  78:	02802825 	move	a1,s4
  7c:	0c000000 	jal	0 <osPfsIsPlug>
  80:	24060001 	li	a2,1
  84:	00002025 	move	a0,zero
  88:	0c000000 	jal	0 <osPfsIsPlug>
  8c:	02602825 	move	a1,s3
  90:	afa2006c 	sw	v0,108(sp)
  94:	02402025 	move	a0,s2
  98:	02802825 	move	a1,s4
  9c:	0c000000 	jal	0 <osPfsIsPlug>
  a0:	24060001 	li	a2,1
  a4:	02c02025 	move	a0,s6
  a8:	0c000000 	jal	0 <osPfsIsPlug>
  ac:	02e02825 	move	a1,s7
  b0:	93c30000 	lbu	v1,0(s8)
  b4:	27a20054 	addiu	v0,sp,84
  b8:	5860000c 	blezl	v1,ec <osPfsIsPlug+0xec>
  bc:	02031026 	xor	v0,s0,v1
  c0:	904e0002 	lbu	t6,2(v0)
  c4:	31cf0004 	andi	t7,t6,0x4
  c8:	55e00004 	bnezl	t7,dc <osPfsIsPlug+0xdc>
  cc:	26100001 	addiu	s0,s0,1
  d0:	10000005 	b	e8 <osPfsIsPlug+0xe8>
  d4:	2631ffff 	addiu	s1,s1,-1
  d8:	26100001 	addiu	s0,s0,1
  dc:	0203082a 	slt	at,s0,v1
  e0:	1420fff7 	bnez	at,c0 <osPfsIsPlug+0xc0>
  e4:	24420004 	addiu	v0,v0,4
  e8:	02031026 	xor	v0,s0,v1
  ec:	14400002 	bnez	v0,f8 <osPfsIsPlug+0xf8>
  f0:	00008025 	move	s0,zero
  f4:	00008825 	move	s1,zero
  f8:	1e20ffd9 	bgtz	s1,60 <osPfsIsPlug+0x60>
  fc:	00000000 	nop
 100:	18600011 	blez	v1,148 <osPfsIsPlug+0x148>
 104:	27a20054 	addiu	v0,sp,84
 108:	90580003 	lbu	t8,3(v0)
 10c:	5700000b 	bnezl	t8,13c <osPfsIsPlug+0x13c>
 110:	26100001 	addiu	s0,s0,1
 114:	90590002 	lbu	t9,2(v0)
 118:	24090001 	li	t1,1
 11c:	02095004 	sllv	t2,t1,s0
 120:	33280001 	andi	t0,t9,0x1
 124:	51000005 	beqzl	t0,13c <osPfsIsPlug+0x13c>
 128:	26100001 	addiu	s0,s0,1
 12c:	02aaa825 	or	s5,s5,t2
 130:	32ab00ff 	andi	t3,s5,0xff
 134:	0160a825 	move	s5,t3
 138:	26100001 	addiu	s0,s0,1
 13c:	0203082a 	slt	at,s0,v1
 140:	1420fff1 	bnez	at,108 <osPfsIsPlug+0x108>
 144:	24420004 	addiu	v0,v0,4
 148:	0c000000 	jal	0 <osPfsIsPlug>
 14c:	00000000 	nop
 150:	8fac0074 	lw	t4,116(sp)
 154:	a1950000 	sb	s5,0(t4)
 158:	8fbf003c 	lw	ra,60(sp)
 15c:	8fbe0038 	lw	s8,56(sp)
 160:	8fb70034 	lw	s7,52(sp)
 164:	8fb60030 	lw	s6,48(sp)
 168:	8fb5002c 	lw	s5,44(sp)
 16c:	8fb40028 	lw	s4,40(sp)
 170:	8fb30024 	lw	s3,36(sp)
 174:	8fb20020 	lw	s2,32(sp)
 178:	8fb1001c 	lw	s1,28(sp)
 17c:	8fb00018 	lw	s0,24(sp)
 180:	8fa2006c 	lw	v0,108(sp)
 184:	03e00008 	jr	ra
 188:	27bd0070 	addiu	sp,sp,112

0000018c <__osPfsRequestData>:
 18c:	27bdfff0 	addiu	sp,sp,-16
 190:	3c050000 	lui	a1,0x0
 194:	3c010000 	lui	at,0x0
 198:	24a20000 	addiu	v0,a1,0
 19c:	afa40010 	sw	a0,16(sp)
 1a0:	a0240000 	sb	a0,0(at)
 1a4:	240f0001 	li	t7,1
 1a8:	ac4f003c 	sw	t7,60(v0)
 1ac:	3c060000 	lui	a2,0x0
 1b0:	24c60000 	addiu	a2,a2,0
 1b4:	90cd0000 	lbu	t5,0(a2)
 1b8:	241800ff 	li	t8,255
 1bc:	24190001 	li	t9,1
 1c0:	24080003 	li	t0,3
 1c4:	240900ff 	li	t1,255
 1c8:	240a00ff 	li	t2,255
 1cc:	240b00ff 	li	t3,255
 1d0:	240c00ff 	li	t4,255
 1d4:	a3b80004 	sb	t8,4(sp)
 1d8:	a3b90005 	sb	t9,5(sp)
 1dc:	a3a80006 	sb	t0,6(sp)
 1e0:	a3a40007 	sb	a0,7(sp)
 1e4:	a3a90008 	sb	t1,8(sp)
 1e8:	a3aa0009 	sb	t2,9(sp)
 1ec:	a3ab000a 	sb	t3,10(sp)
 1f0:	a3ac000b 	sb	t4,11(sp)
 1f4:	19a0000e 	blez	t5,230 <__osPfsRequestData+0xa4>
 1f8:	00001825 	move	v1,zero
 1fc:	27a40004 	addiu	a0,sp,4
 200:	8c810000 	lw	at,0(a0)
 204:	24630001 	addiu	v1,v1,1
 208:	24420008 	addiu	v0,v0,8
 20c:	a841fff8 	swl	at,-8(v0)
 210:	b841fffb 	swr	at,-5(v0)
 214:	8c8f0004 	lw	t7,4(a0)
 218:	a84ffffc 	swl	t7,-4(v0)
 21c:	b84fffff 	swr	t7,-1(v0)
 220:	90d80000 	lbu	t8,0(a2)
 224:	0078082a 	slt	at,v1,t8
 228:	5420fff6 	bnezl	at,204 <__osPfsRequestData+0x78>
 22c:	8c810000 	lw	at,0(a0)
 230:	241900fe 	li	t9,254
 234:	a0590000 	sb	t9,0(v0)
 238:	03e00008 	jr	ra
 23c:	27bd0010 	addiu	sp,sp,16

00000240 <__osPfsGetInitData>:
 240:	3c070000 	lui	a3,0x0
 244:	24e70000 	addiu	a3,a3,0
 248:	90ee0000 	lbu	t6,0(a3)
 24c:	3c030000 	lui	v1,0x0
 250:	27bdffe8 	addiu	sp,sp,-24
 254:	00001025 	move	v0,zero
 258:	24630000 	addiu	v1,v1,0
 25c:	19c00020 	blez	t6,2e0 <__osPfsGetInitData+0xa0>
 260:	00003025 	move	a2,zero
 264:	27a8000c 	addiu	t0,sp,12
 268:	88610000 	lwl	at,0(v1)
 26c:	98610003 	lwr	at,3(v1)
 270:	ad010000 	sw	at,0(t0)
 274:	88780004 	lwl	t8,4(v1)
 278:	98780007 	lwr	t8,7(v1)
 27c:	ad180004 	sw	t8,4(t0)
 280:	93b9000e 	lbu	t9,14(sp)
 284:	332900c0 	andi	t1,t9,0xc0
 288:	00095103 	sra	t2,t1,0x4
 28c:	314b00ff 	andi	t3,t2,0xff
 290:	1560000d 	bnez	t3,2c8 <__osPfsGetInitData+0x88>
 294:	a0aa0003 	sb	t2,3(a1)
 298:	93ac0011 	lbu	t4,17(sp)
 29c:	93ae0010 	lbu	t6,16(sp)
 2a0:	24190001 	li	t9,1
 2a4:	000c6a00 	sll	t5,t4,0x8
 2a8:	01ae7825 	or	t7,t5,t6
 2ac:	a4af0000 	sh	t7,0(a1)
 2b0:	93b80012 	lbu	t8,18(sp)
 2b4:	00d94804 	sllv	t1,t9,a2
 2b8:	00491025 	or	v0,v0,t1
 2bc:	304a00ff 	andi	t2,v0,0xff
 2c0:	01401025 	move	v0,t2
 2c4:	a0b80002 	sb	t8,2(a1)
 2c8:	90eb0000 	lbu	t3,0(a3)
 2cc:	24c60001 	addiu	a2,a2,1
 2d0:	24630008 	addiu	v1,v1,8
 2d4:	00cb082a 	slt	at,a2,t3
 2d8:	1420ffe3 	bnez	at,268 <__osPfsGetInitData+0x28>
 2dc:	24a50004 	addiu	a1,a1,4
 2e0:	a0820000 	sb	v0,0(a0)
 2e4:	03e00008 	jr	ra
 2e8:	27bd0018 	addiu	sp,sp,24
 2ec:	00000000 	nop
