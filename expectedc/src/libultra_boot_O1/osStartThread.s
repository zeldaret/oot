
build/src/libultra_boot_O1/osStartThread.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osStartThread>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afbf001c 	sw	ra,28(sp)
   8:	afa40028 	sw	a0,40(sp)
   c:	afb10018 	sw	s1,24(sp)
  10:	0c000000 	jal	0 <osStartThread>
  14:	afb00014 	sw	s0,20(sp)
  18:	8fae0028 	lw	t6,40(sp)
  1c:	24010001 	li	at,1
  20:	00408025 	move	s0,v0
  24:	95d10010 	lhu	s1,16(t6)
  28:	1221000c 	beq	s1,at,5c <osStartThread+0x5c>
  2c:	24010008 	li	at,8
  30:	1621002a 	bne	s1,at,dc <osStartThread+0xdc>
  34:	00000000 	nop
  38:	8fb80028 	lw	t8,40(sp)
  3c:	240f0002 	li	t7,2
  40:	3c040000 	lui	a0,0x0
  44:	a70f0010 	sh	t7,16(t8)
  48:	8fa50028 	lw	a1,40(sp)
  4c:	0c000000 	jal	0 <osStartThread>
  50:	24840000 	addiu	a0,a0,0
  54:	10000021 	b	dc <osStartThread+0xdc>
  58:	00000000 	nop
  5c:	8fb90028 	lw	t9,40(sp)
  60:	8f280008 	lw	t0,8(t9)
  64:	11000005 	beqz	t0,7c <osStartThread+0x7c>
  68:	00000000 	nop
  6c:	3c090000 	lui	t1,0x0
  70:	25290000 	addiu	t1,t1,0
  74:	1509000a 	bne	t0,t1,a0 <osStartThread+0xa0>
  78:	00000000 	nop
  7c:	8fab0028 	lw	t3,40(sp)
  80:	240a0002 	li	t2,2
  84:	3c040000 	lui	a0,0x0
  88:	a56a0010 	sh	t2,16(t3)
  8c:	8fa50028 	lw	a1,40(sp)
  90:	0c000000 	jal	0 <osStartThread>
  94:	24840000 	addiu	a0,a0,0
  98:	10000010 	b	dc <osStartThread+0xdc>
  9c:	00000000 	nop
  a0:	8fad0028 	lw	t5,40(sp)
  a4:	240c0008 	li	t4,8
  a8:	a5ac0010 	sh	t4,16(t5)
  ac:	8fae0028 	lw	t6,40(sp)
  b0:	8dc40008 	lw	a0,8(t6)
  b4:	0c000000 	jal	0 <osStartThread>
  b8:	01c02825 	move	a1,t6
  bc:	8faf0028 	lw	t7,40(sp)
  c0:	0c000000 	jal	0 <osStartThread>
  c4:	8de40008 	lw	a0,8(t7)
  c8:	00408825 	move	s1,v0
  cc:	3c040000 	lui	a0,0x0
  d0:	24840000 	addiu	a0,a0,0
  d4:	0c000000 	jal	0 <osStartThread>
  d8:	02202825 	move	a1,s1
  dc:	3c180000 	lui	t8,0x0
  e0:	8f180000 	lw	t8,0(t8)
  e4:	17000005 	bnez	t8,fc <osStartThread+0xfc>
  e8:	00000000 	nop
  ec:	0c000000 	jal	0 <osStartThread>
  f0:	00000000 	nop
  f4:	1000000f 	b	134 <osStartThread+0x134>
  f8:	00000000 	nop
  fc:	3c190000 	lui	t9,0x0
 100:	3c090000 	lui	t1,0x0
 104:	8d290000 	lw	t1,0(t1)
 108:	8f390000 	lw	t9,0(t9)
 10c:	8d2a0004 	lw	t2,4(t1)
 110:	8f280004 	lw	t0,4(t9)
 114:	010a082a 	slt	at,t0,t2
 118:	10200006 	beqz	at,134 <osStartThread+0x134>
 11c:	00000000 	nop
 120:	240b0002 	li	t3,2
 124:	3c040000 	lui	a0,0x0
 128:	a72b0010 	sh	t3,16(t9)
 12c:	0c000000 	jal	0 <osStartThread>
 130:	24840000 	addiu	a0,a0,0
 134:	0c000000 	jal	0 <osStartThread>
 138:	02002025 	move	a0,s0
 13c:	8fbf001c 	lw	ra,28(sp)
 140:	8fb00014 	lw	s0,20(sp)
 144:	8fb10018 	lw	s1,24(sp)
 148:	03e00008 	jr	ra
 14c:	27bd0028 	addiu	sp,sp,40
