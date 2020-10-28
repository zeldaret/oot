
build/src/libultra_boot_O2/osCartRomInit.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osCartRomInit>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf001c 	sw	ra,28(sp)
   8:	0c000000 	jal	0 <osCartRomInit>
   c:	afb00018 	sw	s0,24(sp)
  10:	3c0e0000 	lui	t6,0x0
  14:	8dce0000 	lw	t6,0(t6)
  18:	3c100000 	lui	s0,0x0
  1c:	26100000 	addiu	s0,s0,0
  20:	15c00006 	bnez	t6,3c <osCartRomInit+0x3c>
  24:	3c010000 	lui	at,0x0
  28:	0c000000 	jal	0 <osCartRomInit>
  2c:	00000000 	nop
  30:	3c100000 	lui	s0,0x0
  34:	10000042 	b	140 <osCartRomInit+0x140>
  38:	26020000 	addiu	v0,s0,0
  3c:	ac200000 	sw	zero,0(at)
  40:	3c0fb000 	lui	t7,0xb000
  44:	3c040000 	lui	a0,0x0
  48:	a2000004 	sb	zero,4(s0)
  4c:	ae0f000c 	sw	t7,12(s0)
  50:	a2000009 	sb	zero,9(s0)
  54:	ae000010 	sw	zero,16(s0)
  58:	24840014 	addiu	a0,a0,20
  5c:	0c000000 	jal	0 <osCartRomInit>
  60:	24050060 	li	a1,96
  64:	3c03a460 	lui	v1,0xa460
  68:	34630010 	ori	v1,v1,0x10
  6c:	8c620000 	lw	v0,0(v1)
  70:	3c07a460 	lui	a3,0xa460
  74:	34e70014 	ori	a3,a3,0x14
  78:	30580003 	andi	t8,v0,0x3
  7c:	13000005 	beqz	t8,94 <osCartRomInit+0x94>
  80:	3c08a460 	lui	t0,0xa460
  84:	8c620000 	lw	v0,0(v1)
  88:	30590003 	andi	t9,v0,0x3
  8c:	5720fffe 	bnezl	t9,88 <osCartRomInit+0x88>
  90:	8c620000 	lw	v0,0(v1)
  94:	8ce30000 	lw	v1,0(a3)
  98:	3508001c 	ori	t0,t0,0x1c
  9c:	3c09a460 	lui	t1,0xa460
  a0:	8d040000 	lw	a0,0(t0)
  a4:	35290020 	ori	t1,t1,0x20
  a8:	3c0aa460 	lui	t2,0xa460
  ac:	8d250000 	lw	a1,0(t1)
  b0:	354a0018 	ori	t2,t2,0x18
  b4:	8d460000 	lw	a2,0(t2)
  b8:	240b00ff 	li	t3,255
  bc:	aceb0000 	sw	t3,0(a3)
  c0:	ad000000 	sw	zero,0(t0)
  c4:	240c0003 	li	t4,3
  c8:	ad2c0000 	sw	t4,0(t1)
  cc:	ad4b0000 	sw	t3,0(t2)
  d0:	8e0d000c 	lw	t5,12(s0)
  d4:	3c01a000 	lui	at,0xa000
  d8:	01a17025 	or	t6,t5,at
  dc:	8dc20000 	lw	v0,0(t6)
  e0:	0002c402 	srl	t8,v0,0x10
  e4:	00026502 	srl	t4,v0,0x14
  e8:	3319000f 	andi	t9,t8,0xf
  ec:	318d000f 	andi	t5,t4,0xf
  f0:	00027a02 	srl	t7,v0,0x8
  f4:	a2190006 	sb	t9,6(s0)
  f8:	a20d0007 	sb	t5,7(s0)
  fc:	a20f0008 	sb	t7,8(s0)
 100:	a2020005 	sb	v0,5(s0)
 104:	ace30000 	sw	v1,0(a3)
 108:	ad040000 	sw	a0,0(t0)
 10c:	ad250000 	sw	a1,0(t1)
 110:	0c000000 	jal	0 <osCartRomInit>
 114:	ad460000 	sw	a2,0(t2)
 118:	3c030000 	lui	v1,0x0
 11c:	24630000 	addiu	v1,v1,0
 120:	8c780000 	lw	t8,0(v1)
 124:	ac700000 	sw	s0,0(v1)
 128:	00402025 	move	a0,v0
 12c:	0c000000 	jal	0 <osCartRomInit>
 130:	ae180000 	sw	t8,0(s0)
 134:	0c000000 	jal	0 <osCartRomInit>
 138:	00000000 	nop
 13c:	02001025 	move	v0,s0
 140:	8fbf001c 	lw	ra,28(sp)
 144:	8fb00018 	lw	s0,24(sp)
 148:	27bd0020 	addiu	sp,sp,32
 14c:	03e00008 	jr	ra
 150:	00000000 	nop
	...
