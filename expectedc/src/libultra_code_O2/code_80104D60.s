
build/src/libultra_code_O2/code_80104D60.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osPfsFileState>:
   0:	27bdfea0 	addiu	sp,sp,-352
   4:	afbf002c 	sw	ra,44(sp)
   8:	afb40028 	sw	s4,40(sp)
   c:	afb30024 	sw	s3,36(sp)
  10:	afb20020 	sw	s2,32(sp)
  14:	afb1001c 	sw	s1,28(sp)
  18:	afb00018 	sw	s0,24(sp)
  1c:	afa60168 	sw	a2,360(sp)
  20:	8c8e0050 	lw	t6,80(a0)
  24:	00a08025 	move	s0,a1
  28:	00809825 	move	s3,a0
  2c:	00ae082a 	slt	at,a1,t6
  30:	10200003 	beqz	at,40 <osPfsFileState+0x40>
  34:	00000000 	nop
  38:	04a30004 	bgezl	a1,4c <osPfsFileState+0x4c>
  3c:	8e6f0000 	lw	t7,0(s3)
  40:	1000005e 	b	1bc <osPfsFileState+0x1bc>
  44:	24020005 	li	v0,5
  48:	8e6f0000 	lw	t7,0(s3)
  4c:	31f80001 	andi	t8,t7,0x1
  50:	17000003 	bnez	t8,60 <osPfsFileState+0x60>
  54:	00000000 	nop
  58:	10000058 	b	1bc <osPfsFileState+0x1bc>
  5c:	24020005 	li	v0,5
  60:	0c000000 	jal	0 <osPfsFileState>
  64:	02602025 	move	a0,s3
  68:	50400004 	beqzl	v0,7c <osPfsFileState+0x7c>
  6c:	92790065 	lbu	t9,101(s3)
  70:	10000053 	b	1c0 <osPfsFileState+0x1c0>
  74:	8fbf002c 	lw	ra,44(sp)
  78:	92790065 	lbu	t9,101(s3)
  7c:	02602025 	move	a0,s3
  80:	53200008 	beqzl	t9,a4 <osPfsFileState+0xa4>
  84:	8e68005c 	lw	t0,92(s3)
  88:	0c000000 	jal	0 <osPfsFileState>
  8c:	00002825 	move	a1,zero
  90:	50400004 	beqzl	v0,a4 <osPfsFileState+0xa4>
  94:	8e68005c 	lw	t0,92(s3)
  98:	10000049 	b	1c0 <osPfsFileState+0x1c0>
  9c:	8fbf002c 	lw	ra,44(sp)
  a0:	8e68005c 	lw	t0,92(s3)
  a4:	8e640004 	lw	a0,4(s3)
  a8:	8e650008 	lw	a1,8(s3)
  ac:	01103021 	addu	a2,t0,s0
  b0:	30c9ffff 	andi	t1,a2,0xffff
  b4:	01203025 	move	a2,t1
  b8:	0c000000 	jal	0 <osPfsFileState>
  bc:	27a70038 	addiu	a3,sp,56
  c0:	10400003 	beqz	v0,d0 <osPfsFileState+0xd0>
  c4:	97aa003c 	lhu	t2,60(sp)
  c8:	1000003d 	b	1c0 <osPfsFileState+0x1c0>
  cc:	8fbf002c 	lw	ra,44(sp)
  d0:	11400003 	beqz	t2,e0 <osPfsFileState+0xe0>
  d4:	8fab0038 	lw	t3,56(sp)
  d8:	15600003 	bnez	t3,e8 <osPfsFileState+0xe8>
  dc:	27b40034 	addiu	s4,sp,52
  e0:	10000036 	b	1bc <osPfsFileState+0x1bc>
  e4:	24020005 	li	v0,5
  e8:	27ac003e 	addiu	t4,sp,62
  ec:	95810000 	lhu	at,0(t4)
  f0:	00009025 	move	s2,zero
  f4:	241000ff 	li	s0,255
  f8:	27b10058 	addiu	s1,sp,88
  fc:	a6810000 	sh	at,0(s4)
 100:	97af0034 	lhu	t7,52(sp)
 104:	8e780060 	lw	t8,96(s3)
 108:	93b90034 	lbu	t9,52(sp)
 10c:	02602025 	move	a0,s3
 110:	01f8082a 	slt	at,t7,t8
 114:	14200011 	bnez	at,15c <osPfsFileState+0x15c>
 118:	02202825 	move	a1,s1
 11c:	12190008 	beq	s0,t9,140 <osPfsFileState+0x140>
 120:	00003025 	move	a2,zero
 124:	03208025 	move	s0,t9
 128:	0c000000 	jal	0 <osPfsFileState>
 12c:	332700ff 	andi	a3,t9,0xff
 130:	50400004 	beqzl	v0,144 <osPfsFileState+0x144>
 134:	93a80035 	lbu	t0,53(sp)
 138:	10000021 	b	1c0 <osPfsFileState+0x1c0>
 13c:	8fbf002c 	lw	ra,44(sp)
 140:	93a80035 	lbu	t0,53(sp)
 144:	26520001 	addiu	s2,s2,1
 148:	00084840 	sll	t1,t0,0x1
 14c:	02295021 	addu	t2,s1,t1
 150:	95410000 	lhu	at,0(t2)
 154:	1000ffea 	b	100 <osPfsFileState+0x100>
 158:	a6810000 	sh	at,0(s4)
 15c:	97ac0034 	lhu	t4,52(sp)
 160:	24010001 	li	at,1
 164:	8fa20168 	lw	v0,360(sp)
 168:	11810003 	beq	t4,at,178 <osPfsFileState+0x178>
 16c:	00127200 	sll	t6,s2,0x8
 170:	10000012 	b	1bc <osPfsFileState+0x1bc>
 174:	24020003 	li	v0,3
 178:	ac4e0000 	sw	t6,0(v0)
 17c:	97af003c 	lhu	t7,60(sp)
 180:	27a40048 	addiu	a0,sp,72
 184:	2445000e 	addiu	a1,v0,14
 188:	a44f0008 	sh	t7,8(v0)
 18c:	8fb80038 	lw	t8,56(sp)
 190:	24060010 	li	a2,16
 194:	0c000000 	jal	0 <osPfsFileState>
 198:	ac580004 	sw	t8,4(v0)
 19c:	8fa50168 	lw	a1,360(sp)
 1a0:	27a40044 	addiu	a0,sp,68
 1a4:	24060004 	li	a2,4
 1a8:	0c000000 	jal	0 <osPfsFileState>
 1ac:	24a5000a 	addiu	a1,a1,10
 1b0:	8e640004 	lw	a0,4(s3)
 1b4:	0c000000 	jal	0 <osPfsFileState>
 1b8:	8e650008 	lw	a1,8(s3)
 1bc:	8fbf002c 	lw	ra,44(sp)
 1c0:	8fb00018 	lw	s0,24(sp)
 1c4:	8fb1001c 	lw	s1,28(sp)
 1c8:	8fb20020 	lw	s2,32(sp)
 1cc:	8fb30024 	lw	s3,36(sp)
 1d0:	8fb40028 	lw	s4,40(sp)
 1d4:	03e00008 	jr	ra
 1d8:	27bd0160 	addiu	sp,sp,352
 1dc:	00000000 	nop
