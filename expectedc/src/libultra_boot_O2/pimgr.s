
build/src/libultra_boot_O2/pimgr.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osCreatePiManager>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afb00020 	sw	s0,32(sp)
   8:	3c100000 	lui	s0,0x0
   c:	26100000 	addiu	s0,s0,0
  10:	8e0e0000 	lw	t6,0(s0)
  14:	afbf0024 	sw	ra,36(sp)
  18:	afa40030 	sw	a0,48(sp)
  1c:	afa50034 	sw	a1,52(sp)
  20:	15c0004e 	bnez	t6,15c <osCreatePiManager+0x15c>
  24:	afa60038 	sw	a2,56(sp)
  28:	00a02025 	move	a0,a1
  2c:	00c02825 	move	a1,a2
  30:	0c000000 	jal	0 <osCreatePiManager>
  34:	00e03025 	move	a2,a3
  38:	3c040000 	lui	a0,0x0
  3c:	3c050000 	lui	a1,0x0
  40:	24a50000 	addiu	a1,a1,0
  44:	24840000 	addiu	a0,a0,0
  48:	0c000000 	jal	0 <osCreatePiManager>
  4c:	24060001 	li	a2,1
  50:	3c0f0000 	lui	t7,0x0
  54:	8def0000 	lw	t7,0(t7)
  58:	15e00003 	bnez	t7,68 <osCreatePiManager+0x68>
  5c:	00000000 	nop
  60:	0c000000 	jal	0 <osCreatePiManager>
  64:	00000000 	nop
  68:	3c050000 	lui	a1,0x0
  6c:	3c062222 	lui	a2,0x2222
  70:	34c62222 	ori	a2,a2,0x2222
  74:	24a50000 	addiu	a1,a1,0
  78:	0c000000 	jal	0 <osCreatePiManager>
  7c:	24040008 	li	a0,8
  80:	2418ffff 	li	t8,-1
  84:	afb80028 	sw	t8,40(sp)
  88:	0c000000 	jal	0 <osCreatePiManager>
  8c:	00002025 	move	a0,zero
  90:	8fb90030 	lw	t9,48(sp)
  94:	00002025 	move	a0,zero
  98:	0059082a 	slt	at,v0,t9
  9c:	10200003 	beqz	at,ac <osCreatePiManager+0xac>
  a0:	03202825 	move	a1,t9
  a4:	0c000000 	jal	0 <osCreatePiManager>
  a8:	afa20028 	sw	v0,40(sp)
  ac:	0c000000 	jal	0 <osCreatePiManager>
  b0:	00000000 	nop
  b4:	8fa90034 	lw	t1,52(sp)
  b8:	8faf0030 	lw	t7,48(sp)
  bc:	3c040000 	lui	a0,0x0
  c0:	3c0a0000 	lui	t2,0x0
  c4:	3c0b0000 	lui	t3,0x0
  c8:	3c0c0000 	lui	t4,0x0
  cc:	3c0d0000 	lui	t5,0x0
  d0:	3c0e0000 	lui	t6,0x0
  d4:	24840000 	addiu	a0,a0,0
  d8:	24080001 	li	t0,1
  dc:	254a0000 	addiu	t2,t2,0
  e0:	256b0000 	addiu	t3,t3,0
  e4:	258c0000 	addiu	t4,t4,0
  e8:	25ad0000 	addiu	t5,t5,0
  ec:	25ce1000 	addiu	t6,t6,4096
  f0:	3c060000 	lui	a2,0x0
  f4:	afa2002c 	sw	v0,44(sp)
  f8:	ae080000 	sw	t0,0(s0)
  fc:	ae040004 	sw	a0,4(s0)
 100:	ae0a000c 	sw	t2,12(s0)
 104:	ae0b0010 	sw	t3,16(s0)
 108:	ae0c0014 	sw	t4,20(s0)
 10c:	ae0d0018 	sw	t5,24(s0)
 110:	24c60000 	addiu	a2,a2,0
 114:	afae0010 	sw	t6,16(sp)
 118:	00002825 	move	a1,zero
 11c:	02003825 	move	a3,s0
 120:	ae090008 	sw	t1,8(s0)
 124:	0c000000 	jal	0 <osCreatePiManager>
 128:	afaf0014 	sw	t7,20(sp)
 12c:	3c040000 	lui	a0,0x0
 130:	0c000000 	jal	0 <osCreatePiManager>
 134:	24840000 	addiu	a0,a0,0
 138:	0c000000 	jal	0 <osCreatePiManager>
 13c:	8fa4002c 	lw	a0,44(sp)
 140:	8fb80028 	lw	t8,40(sp)
 144:	2401ffff 	li	at,-1
 148:	00002025 	move	a0,zero
 14c:	53010004 	beql	t8,at,160 <osCreatePiManager+0x160>
 150:	8fbf0024 	lw	ra,36(sp)
 154:	0c000000 	jal	0 <osCreatePiManager>
 158:	03002825 	move	a1,t8
 15c:	8fbf0024 	lw	ra,36(sp)
 160:	8fb00020 	lw	s0,32(sp)
 164:	27bd0030 	addiu	sp,sp,48
 168:	03e00008 	jr	ra
 16c:	00000000 	nop
