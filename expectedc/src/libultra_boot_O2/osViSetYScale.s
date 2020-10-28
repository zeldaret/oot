
build/src/libultra_boot_O2/osViSetYScale.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osViSetYScale>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	0c000000 	jal	0 <osViSetYScale>
   c:	e7ac0018 	swc1	$f12,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	24a50000 	addiu	a1,a1,0
  18:	8cae0000 	lw	t6,0(a1)
  1c:	c7a40018 	lwc1	$f4,24(sp)
  20:	00402025 	move	a0,v0
  24:	e5c40024 	swc1	$f4,36(t6)
  28:	8ca30000 	lw	v1,0(a1)
  2c:	946f0000 	lhu	t7,0(v1)
  30:	35f80004 	ori	t8,t7,0x4
  34:	0c000000 	jal	0 <osViSetYScale>
  38:	a4780000 	sh	t8,0(v1)
  3c:	8fbf0014 	lw	ra,20(sp)
  40:	27bd0018 	addiu	sp,sp,24
  44:	03e00008 	jr	ra
  48:	00000000 	nop
  4c:	00000000 	nop
