
build/src/libultra_boot_O1/osSetEventMesg.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osSetEventMesg>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afbf001c 	sw	ra,28(sp)
   8:	afa40028 	sw	a0,40(sp)
   c:	afa5002c 	sw	a1,44(sp)
  10:	afa60030 	sw	a2,48(sp)
  14:	0c000000 	jal	0 <osSetEventMesg>
  18:	afb00018 	sw	s0,24(sp)
  1c:	8fae0028 	lw	t6,40(sp)
  20:	3c180000 	lui	t8,0x0
  24:	8fa8002c 	lw	t0,44(sp)
  28:	27180000 	addiu	t8,t8,0
  2c:	000e78c0 	sll	t7,t6,0x3
  30:	01f8c821 	addu	t9,t7,t8
  34:	afb90020 	sw	t9,32(sp)
  38:	af280000 	sw	t0,0(t9)
  3c:	8faa0020 	lw	t2,32(sp)
  40:	8fa90030 	lw	t1,48(sp)
  44:	2401000e 	li	at,14
  48:	00408025 	move	s0,v0
  4c:	ad490004 	sw	t1,4(t2)
  50:	8fab0028 	lw	t3,40(sp)
  54:	15610010 	bne	t3,at,98 <osSetEventMesg+0x98>
  58:	00000000 	nop
  5c:	3c0c0000 	lui	t4,0x0
  60:	8d8c0000 	lw	t4,0(t4)
  64:	11800009 	beqz	t4,8c <osSetEventMesg+0x8c>
  68:	00000000 	nop
  6c:	3c0d0000 	lui	t5,0x0
  70:	8dad0000 	lw	t5,0(t5)
  74:	15a00005 	bnez	t5,8c <osSetEventMesg+0x8c>
  78:	00000000 	nop
  7c:	8fa4002c 	lw	a0,44(sp)
  80:	8fa50030 	lw	a1,48(sp)
  84:	0c000000 	jal	0 <osSetEventMesg>
  88:	00003025 	move	a2,zero
  8c:	240e0001 	li	t6,1
  90:	3c010000 	lui	at,0x0
  94:	ac2e0000 	sw	t6,0(at)
  98:	0c000000 	jal	0 <osSetEventMesg>
  9c:	02002025 	move	a0,s0
  a0:	8fbf001c 	lw	ra,28(sp)
  a4:	8fb00018 	lw	s0,24(sp)
  a8:	27bd0028 	addiu	sp,sp,40
  ac:	03e00008 	jr	ra
  b0:	00000000 	nop
	...
