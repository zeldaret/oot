
build/src/libultra_boot_O1/osRecvMesg.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osRecvMesg>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afbf001c 	sw	ra,28(sp)
   8:	afa40028 	sw	a0,40(sp)
   c:	afa5002c 	sw	a1,44(sp)
  10:	afa60030 	sw	a2,48(sp)
  14:	afb10018 	sw	s1,24(sp)
  18:	0c000000 	jal	0 <osRecvMesg>
  1c:	afb00014 	sw	s0,20(sp)
  20:	8fae0028 	lw	t6,40(sp)
  24:	00408025 	move	s0,v0
  28:	8dcf0008 	lw	t7,8(t6)
  2c:	15e00012 	bnez	t7,78 <osRecvMesg+0x78>
  30:	00000000 	nop
  34:	8fb80030 	lw	t8,48(sp)
  38:	17000005 	bnez	t8,50 <osRecvMesg+0x50>
  3c:	00000000 	nop
  40:	0c000000 	jal	0 <osRecvMesg>
  44:	02002025 	move	a0,s0
  48:	10000036 	b	124 <osRecvMesg+0x124>
  4c:	2402ffff 	li	v0,-1
  50:	3c080000 	lui	t0,0x0
  54:	8d080000 	lw	t0,0(t0)
  58:	24190008 	li	t9,8
  5c:	a5190010 	sh	t9,16(t0)
  60:	0c000000 	jal	0 <osRecvMesg>
  64:	8fa40028 	lw	a0,40(sp)
  68:	8fa90028 	lw	t1,40(sp)
  6c:	8d2a0008 	lw	t2,8(t1)
  70:	1140fff0 	beqz	t2,34 <osRecvMesg+0x34>
  74:	00000000 	nop
  78:	8fab002c 	lw	t3,44(sp)
  7c:	11600008 	beqz	t3,a0 <osRecvMesg+0xa0>
  80:	00000000 	nop
  84:	8fac0028 	lw	t4,40(sp)
  88:	8d8e000c 	lw	t6,12(t4)
  8c:	8d8d0014 	lw	t5,20(t4)
  90:	000e7880 	sll	t7,t6,0x2
  94:	01afc021 	addu	t8,t5,t7
  98:	8f190000 	lw	t9,0(t8)
  9c:	ad790000 	sw	t9,0(t3)
  a0:	8fa80028 	lw	t0,40(sp)
  a4:	8d09000c 	lw	t1,12(t0)
  a8:	8d0c0010 	lw	t4,16(t0)
  ac:	252a0001 	addiu	t2,t1,1
  b0:	014c001a 	div	zero,t2,t4
  b4:	00007010 	mfhi	t6
  b8:	ad0e000c 	sw	t6,12(t0)
  bc:	8fad0028 	lw	t5,40(sp)
  c0:	15800002 	bnez	t4,cc <osRecvMesg+0xcc>
  c4:	00000000 	nop
  c8:	0007000d 	break	0x7
  cc:	2401ffff 	li	at,-1
  d0:	15810004 	bne	t4,at,e4 <osRecvMesg+0xe4>
  d4:	3c018000 	lui	at,0x8000
  d8:	15410002 	bne	t2,at,e4 <osRecvMesg+0xe4>
  dc:	00000000 	nop
  e0:	0006000d 	break	0x6
  e4:	8daf0008 	lw	t7,8(t5)
  e8:	25f8ffff 	addiu	t8,t7,-1
  ec:	adb80008 	sw	t8,8(t5)
  f0:	8fb90028 	lw	t9,40(sp)
  f4:	8f2b0004 	lw	t3,4(t9)
  f8:	8d690000 	lw	t1,0(t3)
  fc:	11200006 	beqz	t1,118 <osRecvMesg+0x118>
 100:	00000000 	nop
 104:	0c000000 	jal	0 <osRecvMesg>
 108:	27240004 	addiu	a0,t9,4
 10c:	00408825 	move	s1,v0
 110:	0c000000 	jal	0 <osRecvMesg>
 114:	02202025 	move	a0,s1
 118:	0c000000 	jal	0 <osRecvMesg>
 11c:	02002025 	move	a0,s0
 120:	00001025 	move	v0,zero
 124:	8fbf001c 	lw	ra,28(sp)
 128:	8fb00014 	lw	s0,20(sp)
 12c:	8fb10018 	lw	s1,24(sp)
 130:	03e00008 	jr	ra
 134:	27bd0028 	addiu	sp,sp,40
	...
