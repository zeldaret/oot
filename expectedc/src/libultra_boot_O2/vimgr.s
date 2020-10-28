
build/src/libultra_boot_O2/vimgr.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osCreateViManager>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afb00020 	sw	s0,32(sp)
   8:	3c100000 	lui	s0,0x0
   c:	26100000 	addiu	s0,s0,0
  10:	8e0e0000 	lw	t6,0(s0)
  14:	afbf0024 	sw	ra,36(sp)
  18:	afa40030 	sw	a0,48(sp)
  1c:	55c00054 	bnezl	t6,170 <osCreateViManager+0x170>
  20:	8fbf0024 	lw	ra,36(sp)
  24:	0c000000 	jal	0 <osCreateViManager>
  28:	00000000 	nop
  2c:	3c010000 	lui	at,0x0
  30:	3c040000 	lui	a0,0x0
  34:	3c050000 	lui	a1,0x0
  38:	ac200000 	sw	zero,0(at)
  3c:	24a50000 	addiu	a1,a1,0
  40:	24840000 	addiu	a0,a0,0
  44:	0c000000 	jal	0 <osCreateViManager>
  48:	24060005 	li	a2,5
  4c:	3c060000 	lui	a2,0x0
  50:	3c070000 	lui	a3,0x0
  54:	24e70000 	addiu	a3,a3,0
  58:	24c60000 	addiu	a2,a2,0
  5c:	240f000d 	li	t7,13
  60:	2418000e 	li	t8,14
  64:	3c050000 	lui	a1,0x0
  68:	a4cf0000 	sh	t7,0(a2)
  6c:	a0c00002 	sb	zero,2(a2)
  70:	acc00004 	sw	zero,4(a2)
  74:	a4f80000 	sh	t8,0(a3)
  78:	a0e00002 	sb	zero,2(a3)
  7c:	ace00004 	sw	zero,4(a3)
  80:	24a50000 	addiu	a1,a1,0
  84:	0c000000 	jal	0 <osCreateViManager>
  88:	24040007 	li	a0,7
  8c:	3c070000 	lui	a3,0x0
  90:	3c050000 	lui	a1,0x0
  94:	24e60000 	addiu	a2,a3,0
  98:	24a50000 	addiu	a1,a1,0
  9c:	0c000000 	jal	0 <osCreateViManager>
  a0:	24040003 	li	a0,3
  a4:	2419ffff 	li	t9,-1
  a8:	afb90028 	sw	t9,40(sp)
  ac:	0c000000 	jal	0 <osCreateViManager>
  b0:	00002025 	move	a0,zero
  b4:	8fa80030 	lw	t0,48(sp)
  b8:	00002025 	move	a0,zero
  bc:	0048082a 	slt	at,v0,t0
  c0:	10200003 	beqz	at,d0 <osCreateViManager+0xd0>
  c4:	01002825 	move	a1,t0
  c8:	0c000000 	jal	0 <osCreateViManager>
  cc:	afa20028 	sw	v0,40(sp)
  d0:	0c000000 	jal	0 <osCreateViManager>
  d4:	00000000 	nop
  d8:	8fab0030 	lw	t3,48(sp)
  dc:	3c030000 	lui	v1,0x0
  e0:	3c040000 	lui	a0,0x0
  e4:	3c0a0000 	lui	t2,0x0
  e8:	24840000 	addiu	a0,a0,0
  ec:	24630000 	addiu	v1,v1,0
  f0:	24090001 	li	t1,1
  f4:	254a1000 	addiu	t2,t2,4096
  f8:	3c060000 	lui	a2,0x0
  fc:	afa2002c 	sw	v0,44(sp)
 100:	ae090000 	sw	t1,0(s0)
 104:	ae040004 	sw	a0,4(s0)
 108:	ae030008 	sw	v1,8(s0)
 10c:	ae03000c 	sw	v1,12(s0)
 110:	ae000010 	sw	zero,16(s0)
 114:	ae000014 	sw	zero,20(s0)
 118:	ae000018 	sw	zero,24(s0)
 11c:	24c60000 	addiu	a2,a2,0
 120:	afaa0010 	sw	t2,16(sp)
 124:	00002825 	move	a1,zero
 128:	02003825 	move	a3,s0
 12c:	0c000000 	jal	0 <osCreateViManager>
 130:	afab0014 	sw	t3,20(sp)
 134:	0c000000 	jal	0 <osCreateViManager>
 138:	00000000 	nop
 13c:	3c040000 	lui	a0,0x0
 140:	0c000000 	jal	0 <osCreateViManager>
 144:	24840000 	addiu	a0,a0,0
 148:	0c000000 	jal	0 <osCreateViManager>
 14c:	8fa4002c 	lw	a0,44(sp)
 150:	8fac0028 	lw	t4,40(sp)
 154:	2401ffff 	li	at,-1
 158:	00002025 	move	a0,zero
 15c:	51810004 	beql	t4,at,170 <osCreateViManager+0x170>
 160:	8fbf0024 	lw	ra,36(sp)
 164:	0c000000 	jal	0 <osCreateViManager>
 168:	01802825 	move	a1,t4
 16c:	8fbf0024 	lw	ra,36(sp)
 170:	8fb00020 	lw	s0,32(sp)
 174:	27bd0030 	addiu	sp,sp,48
 178:	03e00008 	jr	ra
 17c:	00000000 	nop

00000180 <viMgrMain>:
 180:	27bdffb0 	addiu	sp,sp,-80
 184:	afbf0034 	sw	ra,52(sp)
 188:	afb70030 	sw	s7,48(sp)
 18c:	0080b825 	move	s7,a0
 190:	afb6002c 	sw	s6,44(sp)
 194:	afb50028 	sw	s5,40(sp)
 198:	afb40024 	sw	s4,36(sp)
 19c:	afb30020 	sw	s3,32(sp)
 1a0:	afb2001c 	sw	s2,28(sp)
 1a4:	afb10018 	sw	s1,24(sp)
 1a8:	afb00014 	sw	s0,20(sp)
 1ac:	0c000000 	jal	0 <osCreateViManager>
 1b0:	afa00044 	sw	zero,68(sp)
 1b4:	94430002 	lhu	v1,2(v0)
 1b8:	3c010000 	lui	at,0x0
 1bc:	2416000e 	li	s6,14
 1c0:	14600004 	bnez	v1,1d4 <viMgrMain+0x54>
 1c4:	a4231210 	sh	v1,4624(at)
 1c8:	24030001 	li	v1,1
 1cc:	3c010000 	lui	at,0x0
 1d0:	a4231210 	sh	v1,4624(at)
 1d4:	3c130000 	lui	s3,0x0
 1d8:	3c120000 	lui	s2,0x0
 1dc:	3c110000 	lui	s1,0x0
 1e0:	26310000 	addiu	s1,s1,0
 1e4:	26520000 	addiu	s2,s2,0
 1e8:	26730000 	addiu	s3,s3,0
 1ec:	2415000d 	li	s5,13
 1f0:	27b40044 	addiu	s4,sp,68
 1f4:	8ee4000c 	lw	a0,12(s7)
 1f8:	02802825 	move	a1,s4
 1fc:	0c000000 	jal	0 <osCreateViManager>
 200:	24060001 	li	a2,1
 204:	8fae0044 	lw	t6,68(sp)
 208:	95c30000 	lhu	v1,0(t6)
 20c:	10750005 	beq	v1,s5,224 <viMgrMain+0xa4>
 210:	00000000 	nop
 214:	1076002a 	beq	v1,s6,2c0 <viMgrMain+0x140>
 218:	00000000 	nop
 21c:	1000fff6 	b	1f8 <viMgrMain+0x78>
 220:	8ee4000c 	lw	a0,12(s7)
 224:	0c000000 	jal	0 <osCreateViManager>
 228:	00000000 	nop
 22c:	3c030000 	lui	v1,0x0
 230:	94631210 	lhu	v1,4624(v1)
 234:	3c010000 	lui	at,0x0
 238:	2463ffff 	addiu	v1,v1,-1
 23c:	306fffff 	andi	t7,v1,0xffff
 240:	15e0000e 	bnez	t7,27c <viMgrMain+0xfc>
 244:	a42f1210 	sh	t7,4624(at)
 248:	0c000000 	jal	0 <osCreateViManager>
 24c:	00000000 	nop
 250:	8c580010 	lw	t8,16(v0)
 254:	00408025 	move	s0,v0
 258:	00003025 	move	a2,zero
 25c:	53000005 	beqzl	t8,274 <viMgrMain+0xf4>
 260:	96030002 	lhu	v1,2(s0)
 264:	8c440010 	lw	a0,16(v0)
 268:	0c000000 	jal	0 <osCreateViManager>
 26c:	8c450014 	lw	a1,20(v0)
 270:	96030002 	lhu	v1,2(s0)
 274:	3c010000 	lui	at,0x0
 278:	a4231210 	sh	v1,4624(at)
 27c:	8e790000 	lw	t9,0(s3)
 280:	8e500000 	lw	s0,0(s2)
 284:	27280001 	addiu	t0,t9,1
 288:	0c000000 	jal	0 <osCreateViManager>
 28c:	ae680000 	sw	t0,0(s3)
 290:	8e2d0004 	lw	t5,4(s1)
 294:	00508023 	subu	s0,v0,s0
 298:	8e2c0000 	lw	t4,0(s1)
 29c:	020d7821 	addu	t7,s0,t5
 2a0:	240a0000 	li	t2,0
 2a4:	01ed082b 	sltu	at,t7,t5
 2a8:	002a7021 	addu	t6,at,t2
 2ac:	01cc7021 	addu	t6,t6,t4
 2b0:	ae420000 	sw	v0,0(s2)
 2b4:	ae2e0000 	sw	t6,0(s1)
 2b8:	1000ffce 	b	1f4 <viMgrMain+0x74>
 2bc:	ae2f0004 	sw	t7,4(s1)
 2c0:	0c000000 	jal	0 <osCreateViManager>
 2c4:	00000000 	nop
 2c8:	1000ffcb 	b	1f8 <viMgrMain+0x78>
 2cc:	8ee4000c 	lw	a0,12(s7)
	...
 2e0:	8fbf0034 	lw	ra,52(sp)
 2e4:	8fb00014 	lw	s0,20(sp)
 2e8:	8fb10018 	lw	s1,24(sp)
 2ec:	8fb2001c 	lw	s2,28(sp)
 2f0:	8fb30020 	lw	s3,32(sp)
 2f4:	8fb40024 	lw	s4,36(sp)
 2f8:	8fb50028 	lw	s5,40(sp)
 2fc:	8fb6002c 	lw	s6,44(sp)
 300:	8fb70030 	lw	s7,48(sp)
 304:	03e00008 	jr	ra
 308:	27bd0050 	addiu	sp,sp,80
 30c:	00000000 	nop
