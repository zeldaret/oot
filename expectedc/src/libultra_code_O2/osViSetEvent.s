
build/src/libultra_code_O2/osViSetEvent.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osViSetEvent>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa40018 	sw	a0,24(sp)
   c:	afa5001c 	sw	a1,28(sp)
  10:	0c000000 	jal	0 <osViSetEvent>
  14:	afa60020 	sw	a2,32(sp)
  18:	3c030000 	lui	v1,0x0
  1c:	24630000 	addiu	v1,v1,0
  20:	8c6f0000 	lw	t7,0(v1)
  24:	8fae0018 	lw	t6,24(sp)
  28:	00402025 	move	a0,v0
  2c:	adee0010 	sw	t6,16(t7)
  30:	8c790000 	lw	t9,0(v1)
  34:	8fb8001c 	lw	t8,28(sp)
  38:	af380014 	sw	t8,20(t9)
  3c:	8c690000 	lw	t1,0(v1)
  40:	8fa80020 	lw	t0,32(sp)
  44:	0c000000 	jal	0 <osViSetEvent>
  48:	a5280002 	sh	t0,2(t1)
  4c:	8fbf0014 	lw	ra,20(sp)
  50:	27bd0018 	addiu	sp,sp,24
  54:	03e00008 	jr	ra
  58:	00000000 	nop
  5c:	00000000 	nop
