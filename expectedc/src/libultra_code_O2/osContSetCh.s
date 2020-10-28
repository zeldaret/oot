
build/src/libultra_code_O2/osContSetCh.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osContSetCh>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	0c000000 	jal	0 <osContSetCh>
   c:	afa40018 	sw	a0,24(sp)
  10:	93a2001b 	lbu	v0,27(sp)
  14:	240e0004 	li	t6,4
  18:	240f00fe 	li	t7,254
  1c:	28410005 	slti	at,v0,5
  20:	14200003 	bnez	at,30 <osContSetCh+0x30>
  24:	3c010000 	lui	at,0x0
  28:	10000003 	b	38 <osContSetCh+0x38>
  2c:	a02e0000 	sb	t6,0(at)
  30:	3c010000 	lui	at,0x0
  34:	a0220000 	sb	v0,0(at)
  38:	3c010000 	lui	at,0x0
  3c:	0c000000 	jal	0 <osContSetCh>
  40:	a02f0000 	sb	t7,0(at)
  44:	8fbf0014 	lw	ra,20(sp)
  48:	27bd0018 	addiu	sp,sp,24
  4c:	00001025 	move	v0,zero
  50:	03e00008 	jr	ra
  54:	00000000 	nop
	...
