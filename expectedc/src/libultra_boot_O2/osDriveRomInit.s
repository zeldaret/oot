
build/src/libultra_boot_O2/osDriveRomInit.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osDriveRomInit>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf001c 	sw	ra,28(sp)
   8:	0c000000 	jal	0 <osDriveRomInit>
   c:	afb00018 	sw	s0,24(sp)
  10:	3c0e0000 	lui	t6,0x0
  14:	8dce0000 	lw	t6,0(t6)
  18:	3c100000 	lui	s0,0x0
  1c:	26100000 	addiu	s0,s0,0
  20:	15c00006 	bnez	t6,3c <osDriveRomInit+0x3c>
  24:	3c010000 	lui	at,0x0
  28:	0c000000 	jal	0 <osDriveRomInit>
  2c:	00000000 	nop
  30:	3c100000 	lui	s0,0x0
  34:	10000063 	b	1c4 <osDriveRomInit+0x1c4>
  38:	26020000 	addiu	v0,s0,0
  3c:	ac200000 	sw	zero,0(at)
  40:	240f0001 	li	t7,1
  44:	3c18a600 	lui	t8,0xa600
  48:	3c040000 	lui	a0,0x0
  4c:	a20f0004 	sb	t7,4(s0)
  50:	ae18000c 	sw	t8,12(s0)
  54:	a2000009 	sb	zero,9(s0)
  58:	ae000010 	sw	zero,16(s0)
  5c:	24840014 	addiu	a0,a0,20
  60:	0c000000 	jal	0 <osDriveRomInit>
  64:	24050060 	li	a1,96
  68:	3c03a460 	lui	v1,0xa460
  6c:	34630010 	ori	v1,v1,0x10
  70:	8c620000 	lw	v0,0(v1)
  74:	3c04a460 	lui	a0,0xa460
  78:	34840014 	ori	a0,a0,0x14
  7c:	30590003 	andi	t9,v0,0x3
  80:	13200005 	beqz	t9,98 <osDriveRomInit+0x98>
  84:	240500ff 	li	a1,255
  88:	8c620000 	lw	v0,0(v1)
  8c:	30490003 	andi	t1,v0,0x3
  90:	5520fffe 	bnezl	t1,8c <osDriveRomInit+0x8c>
  94:	8c620000 	lw	v0,0(v1)
  98:	3c06a460 	lui	a2,0xa460
  9c:	34c6001c 	ori	a2,a2,0x1c
  a0:	3c07a460 	lui	a3,0xa460
  a4:	ac850000 	sw	a1,0(a0)
  a8:	34e70020 	ori	a3,a3,0x20
  ac:	3c08a460 	lui	t0,0xa460
  b0:	acc00000 	sw	zero,0(a2)
  b4:	240a0003 	li	t2,3
  b8:	35080018 	ori	t0,t0,0x18
  bc:	acea0000 	sw	t2,0(a3)
  c0:	ad050000 	sw	a1,0(t0)
  c4:	8e0b000c 	lw	t3,12(s0)
  c8:	3c01a000 	lui	at,0xa000
  cc:	3c030000 	lui	v1,0x0
  d0:	01616025 	or	t4,t3,at
  d4:	8d820000 	lw	v0,0(t4)
  d8:	24630000 	addiu	v1,v1,0
  dc:	0002c402 	srl	t8,v0,0x10
  e0:	00024d02 	srl	t1,v0,0x14
  e4:	3319000f 	andi	t9,t8,0xf
  e8:	312a000f 	andi	t2,t1,0xf
  ec:	00027a02 	srl	t7,v0,0x8
  f0:	a20f0008 	sb	t7,8(s0)
  f4:	a2190006 	sb	t9,6(s0)
  f8:	a20a0007 	sb	t2,7(s0)
  fc:	a2020005 	sb	v0,5(s0)
 100:	304b00ff 	andi	t3,v0,0xff
 104:	ac8b0000 	sw	t3,0(a0)
 108:	920c0006 	lbu	t4,6(s0)
 10c:	accc0000 	sw	t4,0(a2)
 110:	920d0007 	lbu	t5,7(s0)
 114:	aced0000 	sw	t5,0(a3)
 118:	920e0008 	lbu	t6,8(s0)
 11c:	ad0e0000 	sw	t6,0(t0)
 120:	92180009 	lbu	t8,9(s0)
 124:	920f0004 	lbu	t7,4(s0)
 128:	0018c880 	sll	t9,t8,0x2
 12c:	00794821 	addu	t1,v1,t9
 130:	8d2a0000 	lw	t2,0(t1)
 134:	a14f0004 	sb	t7,4(t2)
 138:	920c0009 	lbu	t4,9(s0)
 13c:	920b0005 	lbu	t3,5(s0)
 140:	000c6880 	sll	t5,t4,0x2
 144:	006d7021 	addu	t6,v1,t5
 148:	8dd80000 	lw	t8,0(t6)
 14c:	a30b0005 	sb	t3,5(t8)
 150:	92090009 	lbu	t1,9(s0)
 154:	92190006 	lbu	t9,6(s0)
 158:	00097880 	sll	t7,t1,0x2
 15c:	006f5021 	addu	t2,v1,t7
 160:	8d4c0000 	lw	t4,0(t2)
 164:	a1990006 	sb	t9,6(t4)
 168:	920e0009 	lbu	t6,9(s0)
 16c:	920d0007 	lbu	t5,7(s0)
 170:	000e5880 	sll	t3,t6,0x2
 174:	006bc021 	addu	t8,v1,t3
 178:	8f090000 	lw	t1,0(t8)
 17c:	a12d0007 	sb	t5,7(t1)
 180:	920a0009 	lbu	t2,9(s0)
 184:	920f0008 	lbu	t7,8(s0)
 188:	000ac880 	sll	t9,t2,0x2
 18c:	00796021 	addu	t4,v1,t9
 190:	8d8e0000 	lw	t6,0(t4)
 194:	0c000000 	jal	0 <osDriveRomInit>
 198:	a1cf0008 	sb	t7,8(t6)
 19c:	3c030000 	lui	v1,0x0
 1a0:	24630000 	addiu	v1,v1,0
 1a4:	8c6b0000 	lw	t3,0(v1)
 1a8:	ac700000 	sw	s0,0(v1)
 1ac:	00402025 	move	a0,v0
 1b0:	0c000000 	jal	0 <osDriveRomInit>
 1b4:	ae0b0000 	sw	t3,0(s0)
 1b8:	0c000000 	jal	0 <osDriveRomInit>
 1bc:	00000000 	nop
 1c0:	02001025 	move	v0,s0
 1c4:	8fbf001c 	lw	ra,28(sp)
 1c8:	8fb00018 	lw	s0,24(sp)
 1cc:	27bd0020 	addiu	sp,sp,32
 1d0:	03e00008 	jr	ra
 1d4:	00000000 	nop
	...
