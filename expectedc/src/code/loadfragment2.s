
build/src/code/loadfragment2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Overlay_AllocateAndLoad>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afb10020 	sw	s1,32(sp)
   8:	afa40028 	sw	a0,40(sp)
   c:	afa5002c 	sw	a1,44(sp)
  10:	00c08825 	move	s1,a2
  14:	afbf0024 	sw	ra,36(sp)
  18:	3c050000 	lui	a1,0x0
  1c:	00e62023 	subu	a0,a3,a2
  20:	afb0001c 	sw	s0,28(sp)
  24:	afa70034 	sw	a3,52(sp)
  28:	2406001f 	li	a2,31
  2c:	0c000000 	jal	0 <Overlay_AllocateAndLoad>
  30:	24a50000 	addiu	a1,a1,0
  34:	3c0f0000 	lui	t7,0x0
  38:	8def0000 	lw	t7,0(t7)
  3c:	00408025 	move	s0,v0
  40:	8fa60034 	lw	a2,52(sp)
  44:	29e10003 	slti	at,t7,3
  48:	1420000a 	bnez	at,74 <Overlay_AllocateAndLoad+0x74>
  4c:	3c040000 	lui	a0,0x0
  50:	00d1c023 	subu	t8,a2,s1
  54:	0302c821 	addu	t9,t8,v0
  58:	02224023 	subu	t0,s1,v0
  5c:	afa80014 	sw	t0,20(sp)
  60:	afb90010 	sw	t9,16(sp)
  64:	24840014 	addiu	a0,a0,20
  68:	02202825 	move	a1,s1
  6c:	0c000000 	jal	0 <Overlay_AllocateAndLoad>
  70:	00403825 	move	a3,v0
  74:	12000006 	beqz	s0,90 <Overlay_AllocateAndLoad+0x90>
  78:	8fa40028 	lw	a0,40(sp)
  7c:	8fa5002c 	lw	a1,44(sp)
  80:	02203025 	move	a2,s1
  84:	8fa70034 	lw	a3,52(sp)
  88:	0c000000 	jal	0 <Overlay_AllocateAndLoad>
  8c:	afb00010 	sw	s0,16(sp)
  90:	8fbf0024 	lw	ra,36(sp)
  94:	02001025 	move	v0,s0
  98:	8fb0001c 	lw	s0,28(sp)
  9c:	8fb10020 	lw	s1,32(sp)
  a0:	03e00008 	jr	ra
  a4:	27bd0028 	addiu	sp,sp,40
	...
