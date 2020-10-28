
build/src/libultra_boot_O2/ldiv.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ldiv>:
   0:	00a6001a 	div	zero,a1,a2
   4:	00001012 	mflo	v0
   8:	27bdfff8 	addiu	sp,sp,-8
   c:	14c00002 	bnez	a2,18 <ldiv+0x18>
  10:	00000000 	nop
  14:	0007000d 	break	0x7
  18:	2401ffff 	li	at,-1
  1c:	14c10004 	bne	a2,at,30 <ldiv+0x30>
  20:	3c018000 	lui	at,0x8000
  24:	14a10002 	bne	a1,at,30 <ldiv+0x30>
  28:	00000000 	nop
  2c:	0006000d 	break	0x6
  30:	00c20019 	multu	a2,v0
  34:	afa20000 	sw	v0,0(sp)
  38:	27af0000 	addiu	t7,sp,0
  3c:	00007012 	mflo	t6
  40:	00ae1823 	subu	v1,a1,t6
  44:	04410008 	bgez	v0,68 <ldiv+0x68>
  48:	afa30004 	sw	v1,4(sp)
  4c:	afa20000 	sw	v0,0(sp)
  50:	18600005 	blez	v1,68 <ldiv+0x68>
  54:	afa30004 	sw	v1,4(sp)
  58:	24420001 	addiu	v0,v0,1
  5c:	00661823 	subu	v1,v1,a2
  60:	afa30004 	sw	v1,4(sp)
  64:	afa20000 	sw	v0,0(sp)
  68:	8de10000 	lw	at,0(t7)
  6c:	00801025 	move	v0,a0
  70:	ac810000 	sw	at,0(a0)
  74:	8de80004 	lw	t0,4(t7)
  78:	27bd0008 	addiu	sp,sp,8
  7c:	03e00008 	jr	ra
  80:	ac880004 	sw	t0,4(a0)

00000084 <lldiv>:
  84:	27bdffd0 	addiu	sp,sp,-48
  88:	afa40030 	sw	a0,48(sp)
  8c:	afbf0014 	sw	ra,20(sp)
  90:	afa60038 	sw	a2,56(sp)
  94:	afa7003c 	sw	a3,60(sp)
  98:	00c02025 	move	a0,a2
  9c:	00e02825 	move	a1,a3
  a0:	8fa70044 	lw	a3,68(sp)
  a4:	0c000000 	jal	0 <ldiv>
  a8:	8fa60040 	lw	a2,64(sp)
  ac:	afa20020 	sw	v0,32(sp)
  b0:	afa30024 	sw	v1,36(sp)
  b4:	8fa40040 	lw	a0,64(sp)
  b8:	8fa50044 	lw	a1,68(sp)
  bc:	00403025 	move	a2,v0
  c0:	0c000000 	jal	0 <ldiv>
  c4:	00603825 	move	a3,v1
  c8:	8fae0038 	lw	t6,56(sp)
  cc:	8faf003c 	lw	t7,60(sp)
  d0:	8fa80020 	lw	t0,32(sp)
  d4:	01c2c023 	subu	t8,t6,v0
  d8:	01e3082b 	sltu	at,t7,v1
  dc:	0301c023 	subu	t8,t8,at
  e0:	01e3c823 	subu	t9,t7,v1
  e4:	afb9002c 	sw	t9,44(sp)
  e8:	afb80028 	sw	t8,40(sp)
  ec:	1d000017 	bgtz	t0,14c <lldiv+0xc8>
  f0:	8fa90024 	lw	t1,36(sp)
  f4:	05000003 	bltz	t0,104 <lldiv+0x80>
  f8:	00000000 	nop
  fc:	10000014 	b	150 <lldiv+0xcc>
 100:	27a80020 	addiu	t0,sp,32
 104:	07020012 	bltzl	t8,150 <lldiv+0xcc>
 108:	27a80020 	addiu	t0,sp,32
 10c:	1f000003 	bgtz	t8,11c <lldiv+0x98>
 110:	252b0001 	addiu	t3,t1,1
 114:	5320000e 	beqzl	t9,150 <lldiv+0xcc>
 118:	27a80020 	addiu	t0,sp,32
 11c:	8fac0040 	lw	t4,64(sp)
 120:	8fad0044 	lw	t5,68(sp)
 124:	2d610001 	sltiu	at,t3,1
 128:	01015021 	addu	t2,t0,at
 12c:	030c7023 	subu	t6,t8,t4
 130:	032d082b 	sltu	at,t9,t5
 134:	01c17023 	subu	t6,t6,at
 138:	032d7823 	subu	t7,t9,t5
 13c:	afaa0020 	sw	t2,32(sp)
 140:	afab0024 	sw	t3,36(sp)
 144:	afaf002c 	sw	t7,44(sp)
 148:	afae0028 	sw	t6,40(sp)
 14c:	27a80020 	addiu	t0,sp,32
 150:	8fa20030 	lw	v0,48(sp)
 154:	8d010000 	lw	at,0(t0)
 158:	ac410000 	sw	at,0(v0)
 15c:	8d0b0004 	lw	t3,4(t0)
 160:	ac4b0004 	sw	t3,4(v0)
 164:	8d010008 	lw	at,8(t0)
 168:	ac410008 	sw	at,8(v0)
 16c:	8d0b000c 	lw	t3,12(t0)
 170:	ac4b000c 	sw	t3,12(v0)
 174:	8fbf0014 	lw	ra,20(sp)
 178:	27bd0030 	addiu	sp,sp,48
 17c:	03e00008 	jr	ra
 180:	00000000 	nop
	...
