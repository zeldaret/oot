
build/src/libultra_code_O2/osReadMempak.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osContRamRead>:
   0:	27bdffa0 	addiu	sp,sp,-96
   4:	afbf003c 	sw	ra,60(sp)
   8:	afb60030 	sw	s6,48(sp)
   c:	afb5002c 	sw	s5,44(sp)
  10:	afb1001c 	sw	s1,28(sp)
  14:	00a08825 	move	s1,a1
  18:	0080b025 	move	s6,a0
  1c:	afbe0038 	sw	s8,56(sp)
  20:	afb70034 	sw	s7,52(sp)
  24:	afb40028 	sw	s4,40(sp)
  28:	afb30024 	sw	s3,36(sp)
  2c:	afb20020 	sw	s2,32(sp)
  30:	afb00018 	sw	s0,24(sp)
  34:	afa60068 	sw	a2,104(sp)
  38:	afa7006c 	sw	a3,108(sp)
  3c:	0c000000 	jal	0 <__osContRamRead>
  40:	24150002 	li	s5,2
  44:	97a5006a 	lhu	a1,106(sp)
  48:	3c1e0000 	lui	s8,0x0
  4c:	3c170000 	lui	s7,0x0
  50:	3c140000 	lui	s4,0x0
  54:	000570c3 	sra	t6,a1,0x3
  58:	00057940 	sll	t7,a1,0x5
  5c:	afaf0040 	sw	t7,64(sp)
  60:	afae0044 	sw	t6,68(sp)
  64:	26940000 	addiu	s4,s4,0
  68:	26f70000 	addiu	s7,s7,0
  6c:	27de0000 	addiu	s8,s8,0
  70:	92f80000 	lbu	t8,0(s7)
  74:	24010002 	li	at,2
  78:	97a5006a 	lhu	a1,106(sp)
  7c:	17010003 	bne	t8,at,8c <__osContRamRead+0x8c>
  80:	02808025 	move	s0,s4
  84:	8fd90000 	lw	t9,0(s8)
  88:	12390023 	beq	s1,t9,118 <__osContRamRead+0x118>
  8c:	24080002 	li	t0,2
  90:	a2e80000 	sb	t0,0(s7)
  94:	afd10000 	sw	s1,0(s8)
  98:	1a200010 	blez	s1,dc <__osContRamRead+0xdc>
  9c:	00001025 	move	v0,zero
  a0:	32240003 	andi	a0,s1,0x3
  a4:	10800006 	beqz	a0,c0 <__osContRamRead+0xc0>
  a8:	00801825 	move	v1,a0
  ac:	24420001 	addiu	v0,v0,1
  b0:	a2000000 	sb	zero,0(s0)
  b4:	1462fffd 	bne	v1,v0,ac <__osContRamRead+0xac>
  b8:	26100001 	addiu	s0,s0,1
  bc:	10510007 	beq	v0,s1,dc <__osContRamRead+0xdc>
  c0:	24420004 	addiu	v0,v0,4
  c4:	a2000000 	sb	zero,0(s0)
  c8:	a2000001 	sb	zero,1(s0)
  cc:	a2000002 	sb	zero,2(s0)
  d0:	a2000003 	sb	zero,3(s0)
  d4:	1451fffa 	bne	v0,s1,c0 <__osContRamRead+0xc0>
  d8:	26100004 	addiu	s0,s0,4
  dc:	24090001 	li	t1,1
  e0:	ae89003c 	sw	t1,60(s4)
  e4:	240a00ff 	li	t2,255
  e8:	240b0003 	li	t3,3
  ec:	240c0021 	li	t4,33
  f0:	240d0002 	li	t5,2
  f4:	240e00ff 	li	t6,255
  f8:	240f00fe 	li	t7,254
  fc:	a20a0000 	sb	t2,0(s0)
 100:	a20b0001 	sb	t3,1(s0)
 104:	a20c0002 	sb	t4,2(s0)
 108:	a20d0003 	sb	t5,3(s0)
 10c:	a20e0026 	sb	t6,38(s0)
 110:	10000002 	b	11c <__osContRamRead+0x11c>
 114:	a20f0027 	sb	t7,39(s0)
 118:	02918021 	addu	s0,s4,s1
 11c:	8fb80044 	lw	t8,68(sp)
 120:	30a4ffff 	andi	a0,a1,0xffff
 124:	0c000000 	jal	0 <__osContRamRead>
 128:	a2180004 	sb	t8,4(s0)
 12c:	8fb90040 	lw	t9,64(sp)
 130:	24040001 	li	a0,1
 134:	02802825 	move	a1,s4
 138:	00594025 	or	t0,v0,t9
 13c:	0c000000 	jal	0 <__osContRamRead>
 140:	a2080005 	sb	t0,5(s0)
 144:	02c02025 	move	a0,s6
 148:	00002825 	move	a1,zero
 14c:	0c000000 	jal	0 <__osContRamRead>
 150:	24060001 	li	a2,1
 154:	00002025 	move	a0,zero
 158:	0c000000 	jal	0 <__osContRamRead>
 15c:	02802825 	move	a1,s4
 160:	02c02025 	move	a0,s6
 164:	00002825 	move	a1,zero
 168:	0c000000 	jal	0 <__osContRamRead>
 16c:	24060001 	li	a2,1
 170:	92130002 	lbu	s3,2(s0)
 174:	26120006 	addiu	s2,s0,6
 178:	326900c0 	andi	t1,s3,0xc0
 17c:	00099903 	sra	s3,t1,0x4
 180:	56600014 	bnezl	s3,1d4 <__osContRamRead+0x1d4>
 184:	24130001 	li	s3,1
 188:	0c000000 	jal	0 <__osContRamRead>
 18c:	02402025 	move	a0,s2
 190:	920b0026 	lbu	t3,38(s0)
 194:	02402025 	move	a0,s2
 198:	8fa5006c 	lw	a1,108(sp)
 19c:	11620008 	beq	t3,v0,1c0 <__osContRamRead+0x1c0>
 1a0:	00000000 	nop
 1a4:	02c02025 	move	a0,s6
 1a8:	0c000000 	jal	0 <__osContRamRead>
 1ac:	02202825 	move	a1,s1
 1b0:	1440000d 	bnez	v0,1e8 <__osContRamRead+0x1e8>
 1b4:	00409825 	move	s3,v0
 1b8:	10000006 	b	1d4 <__osContRamRead+0x1d4>
 1bc:	24130004 	li	s3,4
 1c0:	0c000000 	jal	0 <__osContRamRead>
 1c4:	24060020 	li	a2,32
 1c8:	10000003 	b	1d8 <__osContRamRead+0x1d8>
 1cc:	24010004 	li	at,4
 1d0:	24130001 	li	s3,1
 1d4:	24010004 	li	at,4
 1d8:	16610003 	bne	s3,at,1e8 <__osContRamRead+0x1e8>
 1dc:	2aa20000 	slti	v0,s5,0
 1e0:	1040ffa3 	beqz	v0,70 <__osContRamRead+0x70>
 1e4:	26b5ffff 	addiu	s5,s5,-1
 1e8:	0c000000 	jal	0 <__osContRamRead>
 1ec:	00000000 	nop
 1f0:	8fbf003c 	lw	ra,60(sp)
 1f4:	02601025 	move	v0,s3
 1f8:	8fb30024 	lw	s3,36(sp)
 1fc:	8fb00018 	lw	s0,24(sp)
 200:	8fb1001c 	lw	s1,28(sp)
 204:	8fb20020 	lw	s2,32(sp)
 208:	8fb40028 	lw	s4,40(sp)
 20c:	8fb5002c 	lw	s5,44(sp)
 210:	8fb60030 	lw	s6,48(sp)
 214:	8fb70034 	lw	s7,52(sp)
 218:	8fbe0038 	lw	s8,56(sp)
 21c:	03e00008 	jr	ra
 220:	27bd0060 	addiu	sp,sp,96
	...
