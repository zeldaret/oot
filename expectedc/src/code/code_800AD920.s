
build/src/code/code_800AD920.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800AD920>:
   0:	240200ff 	li	v0,255
   4:	ac800000 	sw	zero,0(a0)
   8:	ac800004 	sw	zero,4(a0)
   c:	a0820008 	sb	v0,8(a0)
  10:	a0820009 	sb	v0,9(a0)
  14:	a082000a 	sb	v0,10(a0)
  18:	a082000b 	sb	v0,11(a0)
  1c:	a082000f 	sb	v0,15(a0)
  20:	a080000c 	sb	zero,12(a0)
  24:	a080000d 	sb	zero,13(a0)
  28:	03e00008 	jr	ra
  2c:	a080000e 	sb	zero,14(a0)

00000030 <func_800AD950>:
  30:	03e00008 	jr	ra
  34:	afa40000 	sw	a0,0(sp)

00000038 <func_800AD958>:
  38:	27bdfff8 	addiu	sp,sp,-8
  3c:	afb00004 	sw	s0,4(sp)
  40:	afa5000c 	sw	a1,12(sp)
  44:	8c8f0000 	lw	t7,0(a0)
  48:	3c060000 	lui	a2,0x0
  4c:	8ca20000 	lw	v0,0(a1)
  50:	15e00003 	bnez	t7,60 <func_800AD958+0x28>
  54:	24c60000 	addiu	a2,a2,0
  58:	10000002 	b	64 <func_800AD958+0x2c>
  5c:	24030003 	li	v1,3
  60:	00001825 	move	v1,zero
  64:	00402825 	move	a1,v0
  68:	3c18e700 	lui	t8,0xe700
  6c:	acb80000 	sw	t8,0(a1)
  70:	aca00004 	sw	zero,4(a1)
  74:	8c990004 	lw	t9,4(a0)
  78:	24010001 	li	at,1
  7c:	24420008 	addiu	v0,v0,8
  80:	17210008 	bne	t9,at,a4 <func_800AD958+0x6c>
  84:	3c18ef00 	lui	t8,0xef00
  88:	00402825 	move	a1,v0
  8c:	3c0f0050 	lui	t7,0x50
  90:	35ef03c0 	ori	t7,t7,0x3c0
  94:	3c0eed00 	lui	t6,0xed00
  98:	acae0000 	sw	t6,0(a1)
  9c:	acaf0004 	sw	t7,4(a1)
  a0:	24420008 	addiu	v0,v0,8
  a4:	00402825 	move	a1,v0
  a8:	3c190f0a 	lui	t9,0xf0a
  ac:	37394004 	ori	t9,t9,0x4004
  b0:	37180c30 	ori	t8,t8,0xc30
  b4:	acb80000 	sw	t8,0(a1)
  b8:	acb90004 	sw	t9,4(a1)
  bc:	24420008 	addiu	v0,v0,8
  c0:	00402825 	move	a1,v0
  c4:	3c0efc30 	lui	t6,0xfc30
  c8:	3c0f5566 	lui	t7,0x5566
  cc:	35efdb6d 	ori	t7,t7,0xdb6d
  d0:	35ceb261 	ori	t6,t6,0xb261
  d4:	acae0000 	sw	t6,0(a1)
  d8:	acaf0004 	sw	t7,4(a1)
  dc:	24420008 	addiu	v0,v0,8
  e0:	00402825 	move	a1,v0
  e4:	3c18fa00 	lui	t8,0xfa00
  e8:	acb80000 	sw	t8,0(a1)
  ec:	8c990008 	lw	t9,8(a0)
  f0:	24420008 	addiu	v0,v0,8
  f4:	3c0efb00 	lui	t6,0xfb00
  f8:	acb90004 	sw	t9,4(a1)
  fc:	00402825 	move	a1,v0
 100:	30690007 	andi	t1,v1,0x7
 104:	acae0000 	sw	t6,0(a1)
 108:	00094d40 	sll	t1,t1,0x15
 10c:	3c01fd00 	lui	at,0xfd00
 110:	8c8f000c 	lw	t7,12(a0)
 114:	01213825 	or	a3,t1,at
 118:	3c010010 	lui	at,0x10
 11c:	00e13825 	or	a3,a3,at
 120:	3c01f500 	lui	at,0xf500
 124:	acaf0004 	sw	t7,4(a1)
 128:	01212825 	or	a1,t1,at
 12c:	3c010010 	lui	at,0x10
 130:	00a12825 	or	a1,a1,at
 134:	3c090708 	lui	t1,0x708
 138:	3c0d0008 	lui	t5,0x8
 13c:	24420008 	addiu	v0,v0,8
 140:	35ad0200 	ori	t5,t5,0x200
 144:	35290200 	ori	t1,t1,0x200
 148:	34a8a000 	ori	t0,a1,0xa000
 14c:	00002025 	move	a0,zero
 150:	3c0c0700 	lui	t4,0x700
 154:	3c0bf300 	lui	t3,0xf300
 158:	3c0ae600 	lui	t2,0xe600
 15c:	00401825 	move	v1,v0
 160:	ac670000 	sw	a3,0(v1)
 164:	ac660004 	sw	a2,4(v1)
 168:	24420008 	addiu	v0,v0,8
 16c:	00401825 	move	v1,v0
 170:	ac650000 	sw	a1,0(v1)
 174:	ac690004 	sw	t1,4(v1)
 178:	24420008 	addiu	v0,v0,8
 17c:	00401825 	move	v1,v0
 180:	2410077f 	li	s0,1919
 184:	32180fff 	andi	t8,s0,0xfff
 188:	ac6a0000 	sw	t2,0(v1)
 18c:	ac600004 	sw	zero,4(v1)
 190:	24420008 	addiu	v0,v0,8
 194:	00401825 	move	v1,v0
 198:	0018cb00 	sll	t9,t8,0xc
 19c:	032c7025 	or	t6,t9,t4
 1a0:	35cf001a 	ori	t7,t6,0x1a
 1a4:	ac6f0004 	sw	t7,4(v1)
 1a8:	ac6b0000 	sw	t3,0(v1)
 1ac:	24420008 	addiu	v0,v0,8
 1b0:	00401825 	move	v1,v0
 1b4:	3c18e700 	lui	t8,0xe700
 1b8:	ac780000 	sw	t8,0(v1)
 1bc:	ac600004 	sw	zero,4(v1)
 1c0:	24420008 	addiu	v0,v0,8
 1c4:	00401825 	move	v1,v0
 1c8:	ac680000 	sw	t0,0(v1)
 1cc:	ac6d0004 	sw	t5,4(v1)
 1d0:	24420008 	addiu	v0,v0,8
 1d4:	00401825 	move	v1,v0
 1d8:	3c0e004f 	lui	t6,0x4f
 1dc:	35cec014 	ori	t6,t6,0xc014
 1e0:	3c19f200 	lui	t9,0xf200
 1e4:	ac790000 	sw	t9,0(v1)
 1e8:	ac6e0004 	sw	t6,4(v1)
 1ec:	24830006 	addiu	v1,a0,6
 1f0:	24420008 	addiu	v0,v0,8
 1f4:	00037880 	sll	t7,v1,0x2
 1f8:	31f80fff 	andi	t8,t7,0xfff
 1fc:	00408025 	move	s0,v0
 200:	00047080 	sll	t6,a0,0x2
 204:	24420008 	addiu	v0,v0,8
 208:	3c01e450 	lui	at,0xe450
 20c:	0301c825 	or	t9,t8,at
 210:	00402025 	move	a0,v0
 214:	31cf0fff 	andi	t7,t6,0xfff
 218:	ae0f0004 	sw	t7,4(s0)
 21c:	ae190000 	sw	t9,0(s0)
 220:	3c18e100 	lui	t8,0xe100
 224:	ac980000 	sw	t8,0(a0)
 228:	ac800004 	sw	zero,4(a0)
 22c:	24420008 	addiu	v0,v0,8
 230:	00402025 	move	a0,v0
 234:	3c0e0400 	lui	t6,0x400
 238:	35ce0400 	ori	t6,t6,0x400
 23c:	3c19f100 	lui	t9,0xf100
 240:	286100eb 	slti	at,v1,235
 244:	ac990000 	sw	t9,0(a0)
 248:	ac8e0004 	sw	t6,4(a0)
 24c:	00602025 	move	a0,v1
 250:	24420008 	addiu	v0,v0,8
 254:	1420ffc1 	bnez	at,15c <func_800AD958+0x124>
 258:	24c60f00 	addiu	a2,a2,3840
 25c:	00401825 	move	v1,v0
 260:	3c0fe700 	lui	t7,0xe700
 264:	ac6f0000 	sw	t7,0(v1)
 268:	ac600004 	sw	zero,4(v1)
 26c:	8fb8000c 	lw	t8,12(sp)
 270:	24420008 	addiu	v0,v0,8
 274:	af020000 	sw	v0,0(t8)
 278:	8fb00004 	lw	s0,4(sp)
 27c:	03e00008 	jr	ra
 280:	27bd0008 	addiu	sp,sp,8
	...
