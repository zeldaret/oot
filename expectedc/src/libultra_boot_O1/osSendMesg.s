
build/src/libultra_boot_O1/osSendMesg.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osSendMesg>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf0024 	sw	ra,36(sp)
   8:	afa40038 	sw	a0,56(sp)
   c:	afa5003c 	sw	a1,60(sp)
  10:	afa60040 	sw	a2,64(sp)
  14:	afb20020 	sw	s2,32(sp)
  18:	afb1001c 	sw	s1,28(sp)
  1c:	0c000000 	jal	0 <osSendMesg>
  20:	afb00018 	sw	s0,24(sp)
  24:	8fae0038 	lw	t6,56(sp)
  28:	00408025 	move	s0,v0
  2c:	8dcf0008 	lw	t7,8(t6)
  30:	8dd80010 	lw	t8,16(t6)
  34:	01f8082a 	slt	at,t7,t8
  38:	14200018 	bnez	at,9c <osSendMesg+0x9c>
  3c:	00000000 	nop
  40:	8fb90040 	lw	t9,64(sp)
  44:	24010001 	li	at,1
  48:	1721000a 	bne	t9,at,74 <osSendMesg+0x74>
  4c:	00000000 	nop
  50:	3c090000 	lui	t1,0x0
  54:	8d290000 	lw	t1,0(t1)
  58:	24080008 	li	t0,8
  5c:	a5280010 	sh	t0,16(t1)
  60:	8fa40038 	lw	a0,56(sp)
  64:	0c000000 	jal	0 <osSendMesg>
  68:	24840004 	addiu	a0,a0,4
  6c:	10000005 	b	84 <osSendMesg+0x84>
  70:	00000000 	nop
  74:	0c000000 	jal	0 <osSendMesg>
  78:	02002025 	move	a0,s0
  7c:	1000002d 	b	134 <osSendMesg+0x134>
  80:	2402ffff 	li	v0,-1
  84:	8faa0038 	lw	t2,56(sp)
  88:	8d4b0008 	lw	t3,8(t2)
  8c:	8d4c0010 	lw	t4,16(t2)
  90:	016c082a 	slt	at,t3,t4
  94:	1020ffea 	beqz	at,40 <osSendMesg+0x40>
  98:	00000000 	nop
  9c:	8fad0038 	lw	t5,56(sp)
  a0:	8fa8003c 	lw	t0,60(sp)
  a4:	8dae000c 	lw	t6,12(t5)
  a8:	8daf0008 	lw	t7,8(t5)
  ac:	8db90010 	lw	t9,16(t5)
  b0:	8da90014 	lw	t1,20(t5)
  b4:	01cfc021 	addu	t8,t6,t7
  b8:	0319001a 	div	zero,t8,t9
  bc:	00008810 	mfhi	s1
  c0:	00115080 	sll	t2,s1,0x2
  c4:	012a5821 	addu	t3,t1,t2
  c8:	ad680000 	sw	t0,0(t3)
  cc:	8fac0038 	lw	t4,56(sp)
  d0:	17200002 	bnez	t9,dc <osSendMesg+0xdc>
  d4:	00000000 	nop
  d8:	0007000d 	break	0x7
  dc:	2401ffff 	li	at,-1
  e0:	17210004 	bne	t9,at,f4 <osSendMesg+0xf4>
  e4:	3c018000 	lui	at,0x8000
  e8:	17010002 	bne	t8,at,f4 <osSendMesg+0xf4>
  ec:	00000000 	nop
  f0:	0006000d 	break	0x6
  f4:	8d8e0008 	lw	t6,8(t4)
  f8:	25cf0001 	addiu	t7,t6,1
  fc:	ad8f0008 	sw	t7,8(t4)
 100:	8fb80038 	lw	t8,56(sp)
 104:	8f190000 	lw	t9,0(t8)
 108:	8f2d0000 	lw	t5,0(t9)
 10c:	11a00006 	beqz	t5,128 <osSendMesg+0x128>
 110:	00000000 	nop
 114:	0c000000 	jal	0 <osSendMesg>
 118:	03002025 	move	a0,t8
 11c:	00409025 	move	s2,v0
 120:	0c000000 	jal	0 <osSendMesg>
 124:	02402025 	move	a0,s2
 128:	0c000000 	jal	0 <osSendMesg>
 12c:	02002025 	move	a0,s0
 130:	00001025 	move	v0,zero
 134:	8fbf0024 	lw	ra,36(sp)
 138:	8fb00018 	lw	s0,24(sp)
 13c:	8fb1001c 	lw	s1,28(sp)
 140:	8fb20020 	lw	s2,32(sp)
 144:	03e00008 	jr	ra
 148:	27bd0038 	addiu	sp,sp,56
 14c:	00000000 	nop
