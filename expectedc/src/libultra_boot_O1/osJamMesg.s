
build/src/libultra_boot_O1/osJamMesg.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osJamMesg>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afbf001c 	sw	ra,28(sp)
   8:	afa40028 	sw	a0,40(sp)
   c:	afa5002c 	sw	a1,44(sp)
  10:	afa60030 	sw	a2,48(sp)
  14:	afb10018 	sw	s1,24(sp)
  18:	0c000000 	jal	0 <osJamMesg>
  1c:	afb00014 	sw	s0,20(sp)
  20:	8fae0028 	lw	t6,40(sp)
  24:	00408025 	move	s0,v0
  28:	8dcf0008 	lw	t7,8(t6)
  2c:	8dd80010 	lw	t8,16(t6)
  30:	01f8082a 	slt	at,t7,t8
  34:	14200018 	bnez	at,98 <osJamMesg+0x98>
  38:	00000000 	nop
  3c:	8fb90030 	lw	t9,48(sp)
  40:	24010001 	li	at,1
  44:	1721000a 	bne	t9,at,70 <osJamMesg+0x70>
  48:	00000000 	nop
  4c:	3c090000 	lui	t1,0x0
  50:	8d290000 	lw	t1,0(t1)
  54:	24080008 	li	t0,8
  58:	a5280010 	sh	t0,16(t1)
  5c:	8fa40028 	lw	a0,40(sp)
  60:	0c000000 	jal	0 <osJamMesg>
  64:	24840004 	addiu	a0,a0,4
  68:	10000005 	b	80 <osJamMesg+0x80>
  6c:	00000000 	nop
  70:	0c000000 	jal	0 <osJamMesg>
  74:	02002025 	move	a0,s0
  78:	10000030 	b	13c <osJamMesg+0x13c>
  7c:	2402ffff 	li	v0,-1
  80:	8faa0028 	lw	t2,40(sp)
  84:	8d4b0008 	lw	t3,8(t2)
  88:	8d4c0010 	lw	t4,16(t2)
  8c:	016c082a 	slt	at,t3,t4
  90:	1020ffea 	beqz	at,3c <osJamMesg+0x3c>
  94:	00000000 	nop
  98:	8fad0028 	lw	t5,40(sp)
  9c:	8dae000c 	lw	t6,12(t5)
  a0:	8daf0010 	lw	t7,16(t5)
  a4:	01cfc021 	addu	t8,t6,t7
  a8:	2719ffff 	addiu	t9,t8,-1
  ac:	032f001a 	div	zero,t9,t7
  b0:	00004010 	mfhi	t0
  b4:	ada8000c 	sw	t0,12(t5)
  b8:	8faa0028 	lw	t2,40(sp)
  bc:	8fa9002c 	lw	t1,44(sp)
  c0:	15e00002 	bnez	t7,cc <osJamMesg+0xcc>
  c4:	00000000 	nop
  c8:	0007000d 	break	0x7
  cc:	2401ffff 	li	at,-1
  d0:	15e10004 	bne	t7,at,e4 <osJamMesg+0xe4>
  d4:	3c018000 	lui	at,0x8000
  d8:	17210002 	bne	t9,at,e4 <osJamMesg+0xe4>
  dc:	00000000 	nop
  e0:	0006000d 	break	0x6
  e4:	8d4c000c 	lw	t4,12(t2)
  e8:	8d4b0014 	lw	t3,20(t2)
  ec:	000c7080 	sll	t6,t4,0x2
  f0:	016ec021 	addu	t8,t3,t6
  f4:	af090000 	sw	t1,0(t8)
  f8:	8fb90028 	lw	t9,40(sp)
  fc:	8f2f0008 	lw	t7,8(t9)
 100:	25e80001 	addiu	t0,t7,1
 104:	af280008 	sw	t0,8(t9)
 108:	8fad0028 	lw	t5,40(sp)
 10c:	8daa0000 	lw	t2,0(t5)
 110:	8d4c0000 	lw	t4,0(t2)
 114:	11800006 	beqz	t4,130 <osJamMesg+0x130>
 118:	00000000 	nop
 11c:	0c000000 	jal	0 <osJamMesg>
 120:	01a02025 	move	a0,t5
 124:	00408825 	move	s1,v0
 128:	0c000000 	jal	0 <osJamMesg>
 12c:	02202025 	move	a0,s1
 130:	0c000000 	jal	0 <osJamMesg>
 134:	02002025 	move	a0,s0
 138:	00001025 	move	v0,zero
 13c:	8fbf001c 	lw	ra,28(sp)
 140:	8fb00014 	lw	s0,20(sp)
 144:	8fb10018 	lw	s1,24(sp)
 148:	03e00008 	jr	ra
 14c:	27bd0028 	addiu	sp,sp,40
