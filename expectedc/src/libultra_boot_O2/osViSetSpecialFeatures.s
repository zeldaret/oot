
build/src/libultra_boot_O2/osViSetSpecialFeatures.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osViSetSpecialFeatures>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	0c000000 	jal	0 <osViSetSpecialFeatures>
   c:	afa40018 	sw	a0,24(sp)
  10:	8fa40018 	lw	a0,24(sp)
  14:	00402825 	move	a1,v0
  18:	3c030000 	lui	v1,0x0
  1c:	308e0001 	andi	t6,a0,0x1
  20:	11c00006 	beqz	t6,3c <osViSetSpecialFeatures+0x3c>
  24:	30990002 	andi	t9,a0,0x2
  28:	24630000 	addiu	v1,v1,0
  2c:	8c620000 	lw	v0,0(v1)
  30:	8c4f000c 	lw	t7,12(v0)
  34:	35f80008 	ori	t8,t7,0x8
  38:	ac58000c 	sw	t8,12(v0)
  3c:	3c030000 	lui	v1,0x0
  40:	13200006 	beqz	t9,5c <osViSetSpecialFeatures+0x5c>
  44:	24630000 	addiu	v1,v1,0
  48:	8c620000 	lw	v0,0(v1)
  4c:	2401fff7 	li	at,-9
  50:	8c48000c 	lw	t0,12(v0)
  54:	01014824 	and	t1,t0,at
  58:	ac49000c 	sw	t1,12(v0)
  5c:	308a0004 	andi	t2,a0,0x4
  60:	11400005 	beqz	t2,78 <osViSetSpecialFeatures+0x78>
  64:	308d0008 	andi	t5,a0,0x8
  68:	8c620000 	lw	v0,0(v1)
  6c:	8c4b000c 	lw	t3,12(v0)
  70:	356c0004 	ori	t4,t3,0x4
  74:	ac4c000c 	sw	t4,12(v0)
  78:	11a00006 	beqz	t5,94 <osViSetSpecialFeatures+0x94>
  7c:	30980010 	andi	t8,a0,0x10
  80:	8c620000 	lw	v0,0(v1)
  84:	2401fffb 	li	at,-5
  88:	8c4e000c 	lw	t6,12(v0)
  8c:	01c17824 	and	t7,t6,at
  90:	ac4f000c 	sw	t7,12(v0)
  94:	13000005 	beqz	t8,ac <osViSetSpecialFeatures+0xac>
  98:	30890020 	andi	t1,a0,0x20
  9c:	8c620000 	lw	v0,0(v1)
  a0:	8c59000c 	lw	t9,12(v0)
  a4:	37280010 	ori	t0,t9,0x10
  a8:	ac48000c 	sw	t0,12(v0)
  ac:	11200006 	beqz	t1,c8 <osViSetSpecialFeatures+0xc8>
  b0:	308c0040 	andi	t4,a0,0x40
  b4:	8c620000 	lw	v0,0(v1)
  b8:	2401ffef 	li	at,-17
  bc:	8c4a000c 	lw	t2,12(v0)
  c0:	01415824 	and	t3,t2,at
  c4:	ac4b000c 	sw	t3,12(v0)
  c8:	1180000b 	beqz	t4,f8 <osViSetSpecialFeatures+0xf8>
  cc:	30990080 	andi	t9,a0,0x80
  d0:	8c620000 	lw	v0,0(v1)
  d4:	3c010001 	lui	at,0x1
  d8:	8c4d000c 	lw	t5,12(v0)
  dc:	01a17025 	or	t6,t5,at
  e0:	ac4e000c 	sw	t6,12(v0)
  e4:	8c620000 	lw	v0,0(v1)
  e8:	2401fcff 	li	at,-769
  ec:	8c4f000c 	lw	t7,12(v0)
  f0:	01e1c024 	and	t8,t7,at
  f4:	ac58000c 	sw	t8,12(v0)
  f8:	5320000f 	beqzl	t9,138 <osViSetSpecialFeatures+0x138>
  fc:	8c620000 	lw	v0,0(v1)
 100:	8c620000 	lw	v0,0(v1)
 104:	3c01fffe 	lui	at,0xfffe
 108:	3421ffff 	ori	at,at,0xffff
 10c:	8c48000c 	lw	t0,12(v0)
 110:	01014824 	and	t1,t0,at
 114:	ac49000c 	sw	t1,12(v0)
 118:	8c620000 	lw	v0,0(v1)
 11c:	8c4b0008 	lw	t3,8(v0)
 120:	8c4a000c 	lw	t2,12(v0)
 124:	8d6c0004 	lw	t4,4(t3)
 128:	318d0300 	andi	t5,t4,0x300
 12c:	014d7025 	or	t6,t2,t5
 130:	ac4e000c 	sw	t6,12(v0)
 134:	8c620000 	lw	v0,0(v1)
 138:	00a02025 	move	a0,a1
 13c:	944f0000 	lhu	t7,0(v0)
 140:	35f80008 	ori	t8,t7,0x8
 144:	0c000000 	jal	0 <osViSetSpecialFeatures>
 148:	a4580000 	sh	t8,0(v0)
 14c:	8fbf0014 	lw	ra,20(sp)
 150:	27bd0018 	addiu	sp,sp,24
 154:	03e00008 	jr	ra
 158:	00000000 	nop
 15c:	00000000 	nop
