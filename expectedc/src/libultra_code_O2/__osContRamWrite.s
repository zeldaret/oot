
build/src/libultra_code_O2/__osContRamWrite.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osContRamWrite>:
   0:	27bdff98 	addiu	sp,sp,-104
   4:	8faf0078 	lw	t7,120(sp)
   8:	afb5002c 	sw	s5,44(sp)
   c:	afb40028 	sw	s4,40(sp)
  10:	afb1001c 	sw	s1,28(sp)
  14:	afa60070 	sw	a2,112(sp)
  18:	30ceffff 	andi	t6,a2,0xffff
  1c:	24010001 	li	at,1
  20:	01c03025 	move	a2,t6
  24:	00a08825 	move	s1,a1
  28:	0080a825 	move	s5,a0
  2c:	afbf003c 	sw	ra,60(sp)
  30:	afbe0038 	sw	s8,56(sp)
  34:	afb70034 	sw	s7,52(sp)
  38:	afb60030 	sw	s6,48(sp)
  3c:	afb30024 	sw	s3,36(sp)
  40:	afb20020 	sw	s2,32(sp)
  44:	afb00018 	sw	s0,24(sp)
  48:	afa70074 	sw	a3,116(sp)
  4c:	11e10008 	beq	t7,at,70 <__osContRamWrite+0x70>
  50:	24140002 	li	s4,2
  54:	29c10007 	slti	at,t6,7
  58:	50200006 	beqzl	at,74 <__osContRamWrite+0x74>
  5c:	00c08025 	move	s0,a2
  60:	51c00004 	beqzl	t6,74 <__osContRamWrite+0x74>
  64:	00c08025 	move	s0,a2
  68:	1000006c 	b	21c <__osContRamWrite+0x21c>
  6c:	00001025 	move	v0,zero
  70:	00c08025 	move	s0,a2
  74:	0c000000 	jal	0 <__osContRamWrite>
  78:	a7a60072 	sh	a2,114(sp)
  7c:	0010c0c3 	sra	t8,s0,0x3
  80:	0010c940 	sll	t9,s0,0x5
  84:	3c170000 	lui	s7,0x0
  88:	3c160000 	lui	s6,0x0
  8c:	3c130000 	lui	s3,0x0
  90:	26730000 	addiu	s3,s3,0
  94:	26d60000 	addiu	s6,s6,0
  98:	26f70000 	addiu	s7,s7,0
  9c:	afb90040 	sw	t9,64(sp)
  a0:	afb80044 	sw	t8,68(sp)
  a4:	241e0003 	li	s8,3
  a8:	92c80000 	lbu	t0,0(s6)
  ac:	24010003 	li	at,3
  b0:	02608025 	move	s0,s3
  b4:	15010004 	bne	t0,at,c8 <__osContRamWrite+0xc8>
  b8:	00001025 	move	v0,zero
  bc:	8ee90000 	lw	t1,0(s7)
  c0:	52290022 	beql	s1,t1,14c <__osContRamWrite+0x14c>
  c4:	02718021 	addu	s0,s3,s1
  c8:	a2de0000 	sb	s8,0(s6)
  cc:	1a200010 	blez	s1,110 <__osContRamWrite+0x110>
  d0:	aef10000 	sw	s1,0(s7)
  d4:	32240003 	andi	a0,s1,0x3
  d8:	10800006 	beqz	a0,f4 <__osContRamWrite+0xf4>
  dc:	00801825 	move	v1,a0
  e0:	24420001 	addiu	v0,v0,1
  e4:	a2000000 	sb	zero,0(s0)
  e8:	1462fffd 	bne	v1,v0,e0 <__osContRamWrite+0xe0>
  ec:	26100001 	addiu	s0,s0,1
  f0:	10510007 	beq	v0,s1,110 <__osContRamWrite+0x110>
  f4:	24420004 	addiu	v0,v0,4
  f8:	a2000000 	sb	zero,0(s0)
  fc:	a2000001 	sb	zero,1(s0)
 100:	a2000002 	sb	zero,2(s0)
 104:	a2000003 	sb	zero,3(s0)
 108:	1451fffa 	bne	v0,s1,f4 <__osContRamWrite+0xf4>
 10c:	26100004 	addiu	s0,s0,4
 110:	240a0001 	li	t2,1
 114:	ae6a003c 	sw	t2,60(s3)
 118:	240b00ff 	li	t3,255
 11c:	240c0023 	li	t4,35
 120:	240d0001 	li	t5,1
 124:	240e00ff 	li	t6,255
 128:	240f00fe 	li	t7,254
 12c:	a20b0000 	sb	t3,0(s0)
 130:	a20c0001 	sb	t4,1(s0)
 134:	a20d0002 	sb	t5,2(s0)
 138:	a21e0003 	sb	s8,3(s0)
 13c:	a20e0026 	sb	t6,38(s0)
 140:	10000002 	b	14c <__osContRamWrite+0x14c>
 144:	a20f0027 	sb	t7,39(s0)
 148:	02718021 	addu	s0,s3,s1
 14c:	8fb80044 	lw	t8,68(sp)
 150:	a2180004 	sb	t8,4(s0)
 154:	0c000000 	jal	0 <__osContRamWrite>
 158:	97a40072 	lhu	a0,114(sp)
 15c:	8fb90040 	lw	t9,64(sp)
 160:	26050006 	addiu	a1,s0,6
 164:	24060020 	li	a2,32
 168:	00594025 	or	t0,v0,t9
 16c:	a2080005 	sb	t0,5(s0)
 170:	0c000000 	jal	0 <__osContRamWrite>
 174:	8fa40074 	lw	a0,116(sp)
 178:	24040001 	li	a0,1
 17c:	0c000000 	jal	0 <__osContRamWrite>
 180:	02602825 	move	a1,s3
 184:	0c000000 	jal	0 <__osContRamWrite>
 188:	8fa40074 	lw	a0,116(sp)
 18c:	305200ff 	andi	s2,v0,0xff
 190:	02a02025 	move	a0,s5
 194:	00002825 	move	a1,zero
 198:	0c000000 	jal	0 <__osContRamWrite>
 19c:	24060001 	li	a2,1
 1a0:	00002025 	move	a0,zero
 1a4:	0c000000 	jal	0 <__osContRamWrite>
 1a8:	02602825 	move	a1,s3
 1ac:	02a02025 	move	a0,s5
 1b0:	00002825 	move	a1,zero
 1b4:	0c000000 	jal	0 <__osContRamWrite>
 1b8:	24060001 	li	a2,1
 1bc:	92030002 	lbu	v1,2(s0)
 1c0:	306900c0 	andi	t1,v1,0xc0
 1c4:	00091903 	sra	v1,t1,0x4
 1c8:	5460000c 	bnezl	v1,1fc <__osContRamWrite+0x1fc>
 1cc:	24030001 	li	v1,1
 1d0:	920b0026 	lbu	t3,38(s0)
 1d4:	02a02025 	move	a0,s5
 1d8:	51720009 	beql	t3,s2,200 <__osContRamWrite+0x200>
 1dc:	24010004 	li	at,4
 1e0:	0c000000 	jal	0 <__osContRamWrite>
 1e4:	02202825 	move	a1,s1
 1e8:	14400009 	bnez	v0,210 <__osContRamWrite+0x210>
 1ec:	00401825 	move	v1,v0
 1f0:	10000002 	b	1fc <__osContRamWrite+0x1fc>
 1f4:	24030004 	li	v1,4
 1f8:	24030001 	li	v1,1
 1fc:	24010004 	li	at,4
 200:	14610003 	bne	v1,at,210 <__osContRamWrite+0x210>
 204:	2a820000 	slti	v0,s4,0
 208:	1040ffa7 	beqz	v0,a8 <__osContRamWrite+0xa8>
 20c:	2694ffff 	addiu	s4,s4,-1
 210:	0c000000 	jal	0 <__osContRamWrite>
 214:	afa30064 	sw	v1,100(sp)
 218:	8fa20064 	lw	v0,100(sp)
 21c:	8fbf003c 	lw	ra,60(sp)
 220:	8fb00018 	lw	s0,24(sp)
 224:	8fb1001c 	lw	s1,28(sp)
 228:	8fb20020 	lw	s2,32(sp)
 22c:	8fb30024 	lw	s3,36(sp)
 230:	8fb40028 	lw	s4,40(sp)
 234:	8fb5002c 	lw	s5,44(sp)
 238:	8fb60030 	lw	s6,48(sp)
 23c:	8fb70034 	lw	s7,52(sp)
 240:	8fbe0038 	lw	s8,56(sp)
 244:	03e00008 	jr	ra
 248:	27bd0068 	addiu	sp,sp,104
 24c:	00000000 	nop
