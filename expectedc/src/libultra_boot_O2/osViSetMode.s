
build/src/libultra_boot_O2/osViSetMode.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osViSetMode>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	0c000000 	jal	0 <osViSetMode>
   c:	afa40018 	sw	a0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	24a50000 	addiu	a1,a1,0
  18:	8caf0000 	lw	t7,0(a1)
  1c:	8fae0018 	lw	t6,24(sp)
  20:	24180001 	li	t8,1
  24:	00402025 	move	a0,v0
  28:	adee0008 	sw	t6,8(t7)
  2c:	8cb90000 	lw	t9,0(a1)
  30:	a7380000 	sh	t8,0(t9)
  34:	8ca30000 	lw	v1,0(a1)
  38:	8c680008 	lw	t0,8(v1)
  3c:	8d090004 	lw	t1,4(t0)
  40:	0c000000 	jal	0 <osViSetMode>
  44:	ac69000c 	sw	t1,12(v1)
  48:	8fbf0014 	lw	ra,20(sp)
  4c:	27bd0018 	addiu	sp,sp,24
  50:	03e00008 	jr	ra
  54:	00000000 	nop
	...
