
build/src/libultra_boot_O2/_Litob.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <_Litob>:
   0:	27bdff70 	addiu	sp,sp,-144
   4:	afb10020 	sw	s1,32(sp)
   8:	30a200ff 	andi	v0,a1,0xff
   c:	24030058 	li	v1,88
  10:	00808825 	move	s1,a0
  14:	afbf002c 	sw	ra,44(sp)
  18:	afb30028 	sw	s3,40(sp)
  1c:	afb20024 	sw	s2,36(sp)
  20:	afb0001c 	sw	s0,28(sp)
  24:	14620004 	bne	v1,v0,38 <_Litob+0x38>
  28:	afa50094 	sw	a1,148(sp)
  2c:	3c130000 	lui	s3,0x0
  30:	10000003 	b	40 <_Litob+0x40>
  34:	26730000 	addiu	s3,s3,0
  38:	3c130000 	lui	s3,0x0
  3c:	26730000 	addiu	s3,s3,0
  40:	2401006f 	li	at,111
  44:	14410003 	bne	v0,at,54 <_Litob+0x54>
  48:	24100018 	li	s0,24
  4c:	10000009 	b	74 <_Litob+0x74>
  50:	24090008 	li	t1,8
  54:	24010078 	li	at,120
  58:	10410005 	beq	v0,at,70 <_Litob+0x70>
  5c:	24080010 	li	t0,16
  60:	10620003 	beq	v1,v0,70 <_Litob+0x70>
  64:	00000000 	nop
  68:	10000001 	b	70 <_Litob+0x70>
  6c:	2408000a 	li	t0,10
  70:	01004825 	move	t1,t0
  74:	8e380000 	lw	t8,0(s1)
  78:	8e390004 	lw	t9,4(s1)
  7c:	24010064 	li	at,100
  80:	afb80060 	sw	t8,96(sp)
  84:	afb80040 	sw	t8,64(sp)
  88:	afb90044 	sw	t9,68(sp)
  8c:	10410004 	beq	v0,at,a0 <_Litob+0xa0>
  90:	afb90064 	sw	t9,100(sp)
  94:	24010069 	li	at,105
  98:	54410010 	bnel	v0,at,dc <_Litob+0xdc>
  9c:	8faa0060 	lw	t2,96(sp)
  a0:	8fac0040 	lw	t4,64(sp)
  a4:	5d80000d 	bgtzl	t4,dc <_Litob+0xdc>
  a8:	8faa0060 	lw	t2,96(sp)
  ac:	05800003 	bltz	t4,bc <_Litob+0xbc>
  b0:	8fae0060 	lw	t6,96(sp)
  b4:	10000009 	b	dc <_Litob+0xdc>
  b8:	8faa0060 	lw	t2,96(sp)
  bc:	8faf0064 	lw	t7,100(sp)
  c0:	01c0c027 	nor	t8,t6,zero
  c4:	2de10001 	sltiu	at,t7,1
  c8:	0301c021 	addu	t8,t8,at
  cc:	000fc823 	negu	t9,t7
  d0:	afb90064 	sw	t9,100(sp)
  d4:	afb80060 	sw	t8,96(sp)
  d8:	8faa0060 	lw	t2,96(sp)
  dc:	8fab0064 	lw	t3,100(sp)
  e0:	24080017 	li	t0,23
  e4:	15400006 	bnez	t2,100 <_Litob+0x100>
  e8:	8fa40060 	lw	a0,96(sp)
  ec:	55600005 	bnezl	t3,104 <_Litob+0x104>
  f0:	24100017 	li	s0,23
  f4:	8e2c0024 	lw	t4,36(s1)
  f8:	51800010 	beqzl	t4,13c <_Litob+0x13c>
  fc:	27b20078 	addiu	s2,sp,120
 100:	24100017 	li	s0,23
 104:	8fa50064 	lw	a1,100(sp)
 108:	01203825 	move	a3,t1
 10c:	000937c3 	sra	a2,t1,0x1f
 110:	afa8004c 	sw	t0,76(sp)
 114:	0c000000 	jal	0 <_Litob>
 118:	afa90070 	sw	t1,112(sp)
 11c:	8fa8004c 	lw	t0,76(sp)
 120:	00737021 	addu	t6,v1,s3
 124:	91cf0000 	lbu	t7,0(t6)
 128:	27b20078 	addiu	s2,sp,120
 12c:	8fa90070 	lw	t1,112(sp)
 130:	0248c021 	addu	t8,s2,t0
 134:	a30f0000 	sb	t7,0(t8)
 138:	27b20078 	addiu	s2,sp,120
 13c:	8fa40060 	lw	a0,96(sp)
 140:	8fa50064 	lw	a1,100(sp)
 144:	01203825 	move	a3,t1
 148:	000937c3 	sra	a2,t1,0x1f
 14c:	0c000000 	jal	0 <_Litob>
 150:	afa90070 	sw	t1,112(sp)
 154:	8fa90070 	lw	t1,112(sp)
 158:	ae230004 	sw	v1,4(s1)
 15c:	0440002b 	bltz	v0,20c <_Litob+0x20c>
 160:	ae220000 	sw	v0,0(s1)
 164:	1c400003 	bgtz	v0,174 <_Litob+0x174>
 168:	00000000 	nop
 16c:	50600028 	beqzl	v1,210 <_Litob+0x210>
 170:	240c0018 	li	t4,24
 174:	1a000025 	blez	s0,20c <_Litob+0x20c>
 178:	000967c3 	sra	t4,t1,0x1f
 17c:	8e2a0000 	lw	t2,0(s1)
 180:	8e2b0004 	lw	t3,4(s1)
 184:	afa9003c 	sw	t1,60(sp)
 188:	afac0038 	sw	t4,56(sp)
 18c:	afaa0040 	sw	t2,64(sp)
 190:	afab0044 	sw	t3,68(sp)
 194:	8fae0038 	lw	t6,56(sp)
 198:	8faf003c 	lw	t7,60(sp)
 19c:	27a40050 	addiu	a0,sp,80
 1a0:	8fa60040 	lw	a2,64(sp)
 1a4:	8fa70044 	lw	a3,68(sp)
 1a8:	afae0010 	sw	t6,16(sp)
 1ac:	0c000000 	jal	0 <_Litob>
 1b0:	afaf0014 	sw	t7,20(sp)
 1b4:	8fb80050 	lw	t8,80(sp)
 1b8:	8fb90054 	lw	t9,84(sp)
 1bc:	2604ffff 	addiu	a0,s0,-1
 1c0:	ae380000 	sw	t8,0(s1)
 1c4:	ae390004 	sw	t9,4(s1)
 1c8:	8fab005c 	lw	t3,92(sp)
 1cc:	02447821 	addu	t7,s2,a0
 1d0:	00808025 	move	s0,a0
 1d4:	01736821 	addu	t5,t3,s3
 1d8:	91ae0000 	lbu	t6,0(t5)
 1dc:	a1ee0000 	sb	t6,0(t7)
 1e0:	8e380000 	lw	t8,0(s1)
 1e4:	8e390004 	lw	t9,4(s1)
 1e8:	afb80040 	sw	t8,64(sp)
 1ec:	07000007 	bltz	t8,20c <_Litob+0x20c>
 1f0:	afb90044 	sw	t9,68(sp)
 1f4:	1f000003 	bgtz	t8,204 <_Litob+0x204>
 1f8:	00000000 	nop
 1fc:	53200004 	beqzl	t9,210 <_Litob+0x210>
 200:	240c0018 	li	t4,24
 204:	5e00ffe4 	bgtzl	s0,198 <_Litob+0x198>
 208:	8fae0038 	lw	t6,56(sp)
 20c:	240c0018 	li	t4,24
 210:	01903023 	subu	a2,t4,s0
 214:	ae260014 	sw	a2,20(s1)
 218:	8e240008 	lw	a0,8(s1)
 21c:	0c000000 	jal	0 <_Litob>
 220:	02502821 	addu	a1,s2,s0
 224:	8e250014 	lw	a1,20(s1)
 228:	8e240024 	lw	a0,36(s1)
 22c:	00a4082a 	slt	at,a1,a0
 230:	10200002 	beqz	at,23c <_Litob+0x23c>
 234:	00856823 	subu	t5,a0,a1
 238:	ae2d0010 	sw	t5,16(s1)
 23c:	04830010 	bgezl	a0,280 <_Litob+0x280>
 240:	8fbf002c 	lw	ra,44(sp)
 244:	8e2e0030 	lw	t6,48(s1)
 248:	24010010 	li	at,16
 24c:	31cf0014 	andi	t7,t6,0x14
 250:	55e1000b 	bnel	t7,at,280 <_Litob+0x280>
 254:	8fbf002c 	lw	ra,44(sp)
 258:	8e380028 	lw	t8,40(s1)
 25c:	8e39000c 	lw	t9,12(s1)
 260:	8e220010 	lw	v0,16(s1)
 264:	03195023 	subu	t2,t8,t9
 268:	01425823 	subu	t3,t2,v0
 26c:	01658023 	subu	s0,t3,a1
 270:	1a000002 	blez	s0,27c <_Litob+0x27c>
 274:	00506021 	addu	t4,v0,s0
 278:	ae2c0010 	sw	t4,16(s1)
 27c:	8fbf002c 	lw	ra,44(sp)
 280:	8fb0001c 	lw	s0,28(sp)
 284:	8fb10020 	lw	s1,32(sp)
 288:	8fb20024 	lw	s2,36(sp)
 28c:	8fb30028 	lw	s3,40(sp)
 290:	03e00008 	jr	ra
 294:	27bd0090 	addiu	sp,sp,144
	...
