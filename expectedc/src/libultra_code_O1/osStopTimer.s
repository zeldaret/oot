
build/src/libultra_code_O1/osStopTimer.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osStopTimer>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afa40030 	sw	a0,48(sp)
   8:	8fae0030 	lw	t6,48(sp)
   c:	afbf001c 	sw	ra,28(sp)
  10:	afb00018 	sw	s0,24(sp)
  14:	8dcf0000 	lw	t7,0(t6)
  18:	15e00003 	bnez	t7,28 <osStopTimer+0x28>
  1c:	00000000 	nop
  20:	1000002c 	b	d4 <osStopTimer+0xd4>
  24:	2402ffff 	li	v0,-1
  28:	0c000000 	jal	0 <osStopTimer>
  2c:	00000000 	nop
  30:	8fb80030 	lw	t8,48(sp)
  34:	3c080000 	lui	t0,0x0
  38:	8d080000 	lw	t0,0(t0)
  3c:	8f190000 	lw	t9,0(t8)
  40:	00408025 	move	s0,v0
  44:	1328000d 	beq	t9,t0,7c <osStopTimer+0x7c>
  48:	afb90028 	sw	t9,40(sp)
  4c:	27290010 	addiu	t1,t9,16
  50:	afa90024 	sw	t1,36(sp)
  54:	8d2b0004 	lw	t3,4(t1)
  58:	8f0d0014 	lw	t5,20(t8)
  5c:	8d2a0000 	lw	t2,0(t1)
  60:	8f0c0010 	lw	t4,16(t8)
  64:	016d7821 	addu	t7,t3,t5
  68:	01ed082b 	sltu	at,t7,t5
  6c:	002a7021 	addu	t6,at,t2
  70:	01cc7021 	addu	t6,t6,t4
  74:	ad2e0000 	sw	t6,0(t1)
  78:	ad2f0004 	sw	t7,4(t1)
  7c:	8fa80030 	lw	t0,48(sp)
  80:	3c0f0000 	lui	t7,0x0
  84:	8d190000 	lw	t9,0(t0)
  88:	8d180004 	lw	t8,4(t0)
  8c:	af190000 	sw	t9,0(t8)
  90:	8faa0030 	lw	t2,48(sp)
  94:	8d4b0004 	lw	t3,4(t2)
  98:	8d4c0000 	lw	t4,0(t2)
  9c:	ad8b0004 	sw	t3,4(t4)
  a0:	8fad0030 	lw	t5,48(sp)
  a4:	ada00000 	sw	zero,0(t5)
  a8:	8fae0030 	lw	t6,48(sp)
  ac:	adc00004 	sw	zero,4(t6)
  b0:	8def0000 	lw	t7,0(t7)
  b4:	8de90000 	lw	t1,0(t7)
  b8:	152f0003 	bne	t1,t7,c8 <osStopTimer+0xc8>
  bc:	00000000 	nop
  c0:	0c000000 	jal	0 <osStopTimer>
  c4:	00002025 	move	a0,zero
  c8:	0c000000 	jal	0 <osStopTimer>
  cc:	02002025 	move	a0,s0
  d0:	00001025 	move	v0,zero
  d4:	8fbf001c 	lw	ra,28(sp)
  d8:	8fb00018 	lw	s0,24(sp)
  dc:	27bd0030 	addiu	sp,sp,48
  e0:	03e00008 	jr	ra
  e4:	00000000 	nop
	...
