
build/src/libultra_code_O2/osPfsFindFile.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osPfsFindFile>:
   0:	27bdff88 	addiu	sp,sp,-120
   4:	afbf003c 	sw	ra,60(sp)
   8:	afbe0038 	sw	s8,56(sp)
   c:	afb70034 	sw	s7,52(sp)
  10:	afb60030 	sw	s6,48(sp)
  14:	afb5002c 	sw	s5,44(sp)
  18:	afb40028 	sw	s4,40(sp)
  1c:	afb30024 	sw	s3,36(sp)
  20:	afb20020 	sw	s2,32(sp)
  24:	afb1001c 	sw	s1,28(sp)
  28:	afb00018 	sw	s0,24(sp)
  2c:	afa5007c 	sw	a1,124(sp)
  30:	8c8e0000 	lw	t6,0(a0)
  34:	00809025 	move	s2,a0
  38:	00e0a825 	move	s5,a3
  3c:	31cf0001 	andi	t7,t6,0x1
  40:	30b7ffff 	andi	s7,a1,0xffff
  44:	15e00003 	bnez	t7,54 <osPfsFindFile+0x54>
  48:	00c0f025 	move	s8,a2
  4c:	10000051 	b	194 <osPfsFindFile+0x194>
  50:	24020005 	li	v0,5
  54:	0c000000 	jal	0 <osPfsFindFile>
  58:	02402025 	move	a0,s2
  5c:	50400004 	beqzl	v0,70 <osPfsFindFile+0x70>
  60:	8e580050 	lw	t8,80(s2)
  64:	1000004c 	b	198 <osPfsFindFile+0x198>
  68:	8fbf003c 	lw	ra,60(sp)
  6c:	8e580050 	lw	t8,80(s2)
  70:	00009825 	move	s3,zero
  74:	27b60050 	addiu	s6,sp,80
  78:	1b000042 	blez	t8,184 <osPfsFindFile+0x184>
  7c:	8fb40088 	lw	s4,136(sp)
  80:	27b10060 	addiu	s1,sp,96
  84:	27b00054 	addiu	s0,sp,84
  88:	8e59005c 	lw	t9,92(s2)
  8c:	8e440004 	lw	a0,4(s2)
  90:	8e450008 	lw	a1,8(s2)
  94:	03333021 	addu	a2,t9,s3
  98:	30c8ffff 	andi	t0,a2,0xffff
  9c:	01003025 	move	a2,t0
  a0:	0c000000 	jal	0 <osPfsFindFile>
  a4:	02c03825 	move	a3,s6
  a8:	50400004 	beqzl	v0,bc <osPfsFindFile+0xbc>
  ac:	8e440004 	lw	a0,4(s2)
  b0:	10000039 	b	198 <osPfsFindFile+0x198>
  b4:	8fbf003c 	lw	ra,60(sp)
  b8:	8e440004 	lw	a0,4(s2)
  bc:	0c000000 	jal	0 <osPfsFindFile>
  c0:	8e450008 	lw	a1,8(s2)
  c4:	10400003 	beqz	v0,d4 <osPfsFindFile+0xd4>
  c8:	00403025 	move	a2,v0
  cc:	10000032 	b	198 <osPfsFindFile+0x198>
  d0:	8fbf003c 	lw	ra,60(sp)
  d4:	97a90054 	lhu	t1,84(sp)
  d8:	8faa0050 	lw	t2,80(sp)
  dc:	56e90025 	bnel	s7,t1,174 <osPfsFindFile+0x174>
  e0:	8e580050 	lw	t8,80(s2)
  e4:	555e0023 	bnel	t2,s8,174 <osPfsFindFile+0x174>
  e8:	8e580050 	lw	t8,80(s2)
  ec:	12a0000c 	beqz	s5,120 <osPfsFindFile+0x120>
  f0:	00002025 	move	a0,zero
  f4:	27a20050 	addiu	v0,sp,80
  f8:	02a01825 	move	v1,s5
  fc:	904b0010 	lbu	t3,16(v0)
 100:	906c0000 	lbu	t4,0(v1)
 104:	24420001 	addiu	v0,v0,1
 108:	116c0003 	beq	t3,t4,118 <osPfsFindFile+0x118>
 10c:	00000000 	nop
 110:	10000003 	b	120 <osPfsFindFile+0x120>
 114:	24040001 	li	a0,1
 118:	1451fff8 	bne	v0,s1,fc <osPfsFindFile+0xfc>
 11c:	24630001 	addiu	v1,v1,1
 120:	1280000d 	beqz	s4,158 <osPfsFindFile+0x158>
 124:	00000000 	nop
 128:	1480000b 	bnez	a0,158 <osPfsFindFile+0x158>
 12c:	27a20050 	addiu	v0,sp,80
 130:	02801825 	move	v1,s4
 134:	904d000c 	lbu	t5,12(v0)
 138:	906e0000 	lbu	t6,0(v1)
 13c:	24420001 	addiu	v0,v0,1
 140:	11ae0003 	beq	t5,t6,150 <osPfsFindFile+0x150>
 144:	00000000 	nop
 148:	10000003 	b	158 <osPfsFindFile+0x158>
 14c:	24040001 	li	a0,1
 150:	1450fff8 	bne	v0,s0,134 <osPfsFindFile+0x134>
 154:	24630001 	addiu	v1,v1,1
 158:	54800006 	bnezl	a0,174 <osPfsFindFile+0x174>
 15c:	8e580050 	lw	t8,80(s2)
 160:	8faf008c 	lw	t7,140(sp)
 164:	00c01025 	move	v0,a2
 168:	1000000a 	b	194 <osPfsFindFile+0x194>
 16c:	adf30000 	sw	s3,0(t7)
 170:	8e580050 	lw	t8,80(s2)
 174:	26730001 	addiu	s3,s3,1
 178:	0278082a 	slt	at,s3,t8
 17c:	5420ffc3 	bnezl	at,8c <osPfsFindFile+0x8c>
 180:	8e59005c 	lw	t9,92(s2)
 184:	8fa8008c 	lw	t0,140(sp)
 188:	2419ffff 	li	t9,-1
 18c:	24020005 	li	v0,5
 190:	ad190000 	sw	t9,0(t0)
 194:	8fbf003c 	lw	ra,60(sp)
 198:	8fb00018 	lw	s0,24(sp)
 19c:	8fb1001c 	lw	s1,28(sp)
 1a0:	8fb20020 	lw	s2,32(sp)
 1a4:	8fb30024 	lw	s3,36(sp)
 1a8:	8fb40028 	lw	s4,40(sp)
 1ac:	8fb5002c 	lw	s5,44(sp)
 1b0:	8fb60030 	lw	s6,48(sp)
 1b4:	8fb70034 	lw	s7,52(sp)
 1b8:	8fbe0038 	lw	s8,56(sp)
 1bc:	03e00008 	jr	ra
 1c0:	27bd0078 	addiu	sp,sp,120
	...
