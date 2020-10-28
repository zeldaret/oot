
build/src/libultra_boot_O1/osYieldThread.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osYieldThread>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afbf001c 	sw	ra,28(sp)
   8:	0c000000 	jal	0 <osYieldThread>
   c:	afb00018 	sw	s0,24(sp)
  10:	3c0f0000 	lui	t7,0x0
  14:	8def0000 	lw	t7,0(t7)
  18:	240e0002 	li	t6,2
  1c:	3c040000 	lui	a0,0x0
  20:	00408025 	move	s0,v0
  24:	24840000 	addiu	a0,a0,0
  28:	0c000000 	jal	0 <osYieldThread>
  2c:	a5ee0010 	sh	t6,16(t7)
  30:	0c000000 	jal	0 <osYieldThread>
  34:	02002025 	move	a0,s0
  38:	8fbf001c 	lw	ra,28(sp)
  3c:	8fb00018 	lw	s0,24(sp)
  40:	27bd0028 	addiu	sp,sp,40
  44:	03e00008 	jr	ra
  48:	00000000 	nop
  4c:	00000000 	nop
