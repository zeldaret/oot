
build/src/libultra_boot_O1/osSetThreadPri.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osSetThreadPri>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afbf001c 	sw	ra,28(sp)
   8:	afa40028 	sw	a0,40(sp)
   c:	afa5002c 	sw	a1,44(sp)
  10:	0c000000 	jal	0 <osSetThreadPri>
  14:	afb00018 	sw	s0,24(sp)
  18:	8fae0028 	lw	t6,40(sp)
  1c:	00408025 	move	s0,v0
  20:	15c00004 	bnez	t6,34 <osSetThreadPri+0x34>
  24:	00000000 	nop
  28:	3c0f0000 	lui	t7,0x0
  2c:	8def0000 	lw	t7,0(t7)
  30:	afaf0028 	sw	t7,40(sp)
  34:	8fb80028 	lw	t8,40(sp)
  38:	8fa8002c 	lw	t0,44(sp)
  3c:	8f190004 	lw	t9,4(t8)
  40:	13280020 	beq	t9,t0,c4 <osSetThreadPri+0xc4>
  44:	00000000 	nop
  48:	af080004 	sw	t0,4(t8)
  4c:	3c0a0000 	lui	t2,0x0
  50:	8d4a0000 	lw	t2,0(t2)
  54:	8fa90028 	lw	t1,40(sp)
  58:	112a000c 	beq	t1,t2,8c <osSetThreadPri+0x8c>
  5c:	00000000 	nop
  60:	952b0010 	lhu	t3,16(t1)
  64:	24010001 	li	at,1
  68:	11610008 	beq	t3,at,8c <osSetThreadPri+0x8c>
  6c:	00000000 	nop
  70:	8d240008 	lw	a0,8(t1)
  74:	0c000000 	jal	0 <osSetThreadPri>
  78:	01202825 	move	a1,t1
  7c:	8fac0028 	lw	t4,40(sp)
  80:	8d840008 	lw	a0,8(t4)
  84:	0c000000 	jal	0 <osSetThreadPri>
  88:	01802825 	move	a1,t4
  8c:	3c0d0000 	lui	t5,0x0
  90:	3c0f0000 	lui	t7,0x0
  94:	8def0000 	lw	t7,0(t7)
  98:	8dad0000 	lw	t5,0(t5)
  9c:	8df90004 	lw	t9,4(t7)
  a0:	8dae0004 	lw	t6,4(t5)
  a4:	01d9082a 	slt	at,t6,t9
  a8:	10200006 	beqz	at,c4 <osSetThreadPri+0xc4>
  ac:	00000000 	nop
  b0:	24080002 	li	t0,2
  b4:	3c040000 	lui	a0,0x0
  b8:	a5a80010 	sh	t0,16(t5)
  bc:	0c000000 	jal	0 <osSetThreadPri>
  c0:	24840000 	addiu	a0,a0,0
  c4:	0c000000 	jal	0 <osSetThreadPri>
  c8:	02002025 	move	a0,s0
  cc:	8fbf001c 	lw	ra,28(sp)
  d0:	8fb00018 	lw	s0,24(sp)
  d4:	27bd0028 	addiu	sp,sp,40
  d8:	03e00008 	jr	ra
  dc:	00000000 	nop
