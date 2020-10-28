
build/src/libultra_boot_O1/osGetTime.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osGetTime>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf001c 	sw	ra,28(sp)
   8:	0c000000 	jal	0 <osGetTime>
   c:	afb00018 	sw	s0,24(sp)
  10:	0c000000 	jal	0 <osGetTime>
  14:	00408025 	move	s0,v0
  18:	afa20034 	sw	v0,52(sp)
  1c:	3c0f0000 	lui	t7,0x0
  20:	8def0000 	lw	t7,0(t7)
  24:	8fae0034 	lw	t6,52(sp)
  28:	3c080000 	lui	t0,0x0
  2c:	3c090000 	lui	t1,0x0
  30:	8d290004 	lw	t1,4(t1)
  34:	8d080000 	lw	t0,0(t0)
  38:	01cfc023 	subu	t8,t6,t7
  3c:	afb80030 	sw	t8,48(sp)
  40:	02002025 	move	a0,s0
  44:	afa9002c 	sw	t1,44(sp)
  48:	0c000000 	jal	0 <osGetTime>
  4c:	afa80028 	sw	t0,40(sp)
  50:	8fb90030 	lw	t9,48(sp)
  54:	8fad002c 	lw	t5,44(sp)
  58:	8fbf001c 	lw	ra,28(sp)
  5c:	03205825 	move	t3,t9
  60:	016d1821 	addu	v1,t3,t5
  64:	8fac0028 	lw	t4,40(sp)
  68:	240a0000 	li	t2,0
  6c:	006d082b 	sltu	at,v1,t5
  70:	002a1021 	addu	v0,at,t2
  74:	8fb00018 	lw	s0,24(sp)
  78:	27bd0038 	addiu	sp,sp,56
  7c:	03e00008 	jr	ra
  80:	004c1021 	addu	v0,v0,t4
	...
