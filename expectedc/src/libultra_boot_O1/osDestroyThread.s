
build/src/libultra_boot_O1/osDestroyThread.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osDestroyThread>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf0024 	sw	ra,36(sp)
   8:	afa40038 	sw	a0,56(sp)
   c:	afb20020 	sw	s2,32(sp)
  10:	afb1001c 	sw	s1,28(sp)
  14:	0c000000 	jal	0 <osDestroyThread>
  18:	afb00018 	sw	s0,24(sp)
  1c:	8fae0038 	lw	t6,56(sp)
  20:	00408025 	move	s0,v0
  24:	15c00005 	bnez	t6,3c <osDestroyThread+0x3c>
  28:	00000000 	nop
  2c:	3c0f0000 	lui	t7,0x0
  30:	8def0000 	lw	t7,0(t7)
  34:	10000009 	b	5c <osDestroyThread+0x5c>
  38:	afaf0038 	sw	t7,56(sp)
  3c:	8fb80038 	lw	t8,56(sp)
  40:	24010001 	li	at,1
  44:	97190010 	lhu	t9,16(t8)
  48:	13210004 	beq	t9,at,5c <osDestroyThread+0x5c>
  4c:	00000000 	nop
  50:	8f040008 	lw	a0,8(t8)
  54:	0c000000 	jal	0 <osDestroyThread>
  58:	03002825 	move	a1,t8
  5c:	3c080000 	lui	t0,0x0
  60:	8d080000 	lw	t0,0(t0)
  64:	8fa90038 	lw	t1,56(sp)
  68:	15090005 	bne	t0,t1,80 <osDestroyThread+0x80>
  6c:	00000000 	nop
  70:	8d0a000c 	lw	t2,12(t0)
  74:	3c010000 	lui	at,0x0
  78:	10000013 	b	c8 <osDestroyThread+0xc8>
  7c:	ac2a0000 	sw	t2,0(at)
  80:	3c110000 	lui	s1,0x0
  84:	8e310000 	lw	s1,0(s1)
  88:	2401ffff 	li	at,-1
  8c:	8e2b0004 	lw	t3,4(s1)
  90:	1161000d 	beq	t3,at,c8 <osDestroyThread+0xc8>
  94:	00000000 	nop
  98:	8e32000c 	lw	s2,12(s1)
  9c:	8fac0038 	lw	t4,56(sp)
  a0:	164c0004 	bne	s2,t4,b4 <osDestroyThread+0xb4>
  a4:	00000000 	nop
  a8:	8d8d000c 	lw	t5,12(t4)
  ac:	10000006 	b	c8 <osDestroyThread+0xc8>
  b0:	ae2d000c 	sw	t5,12(s1)
  b4:	02408825 	move	s1,s2
  b8:	8e2e0004 	lw	t6,4(s1)
  bc:	2401ffff 	li	at,-1
  c0:	15c1fff5 	bne	t6,at,98 <osDestroyThread+0x98>
  c4:	00000000 	nop
  c8:	3c190000 	lui	t9,0x0
  cc:	8f390000 	lw	t9,0(t9)
  d0:	8faf0038 	lw	t7,56(sp)
  d4:	15f90003 	bne	t7,t9,e4 <osDestroyThread+0xe4>
  d8:	00000000 	nop
  dc:	0c000000 	jal	0 <osDestroyThread>
  e0:	00000000 	nop
  e4:	0c000000 	jal	0 <osDestroyThread>
  e8:	02002025 	move	a0,s0
  ec:	8fbf0024 	lw	ra,36(sp)
  f0:	8fb00018 	lw	s0,24(sp)
  f4:	8fb1001c 	lw	s1,28(sp)
  f8:	8fb20020 	lw	s2,32(sp)
  fc:	03e00008 	jr	ra
 100:	27bd0038 	addiu	sp,sp,56
	...
