
build/src/libultra_code_O2/osContQuery.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osContStartQuery>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf0014 	sw	ra,20(sp)
   8:	0c000000 	jal	0 <osContStartQuery>
   c:	afa40020 	sw	a0,32(sp)
  10:	3c0e0000 	lui	t6,0x0
  14:	91ce0000 	lbu	t6,0(t6)
  18:	11c0000b 	beqz	t6,48 <osContStartQuery+0x48>
  1c:	00000000 	nop
  20:	0c000000 	jal	0 <osContStartQuery>
  24:	00002025 	move	a0,zero
  28:	3c050000 	lui	a1,0x0
  2c:	24a50000 	addiu	a1,a1,0
  30:	0c000000 	jal	0 <osContStartQuery>
  34:	24040001 	li	a0,1
  38:	8fa40020 	lw	a0,32(sp)
  3c:	00002825 	move	a1,zero
  40:	0c000000 	jal	0 <osContStartQuery>
  44:	24060001 	li	a2,1
  48:	3c050000 	lui	a1,0x0
  4c:	24a50000 	addiu	a1,a1,0
  50:	0c000000 	jal	0 <osContStartQuery>
  54:	00002025 	move	a0,zero
  58:	3c010000 	lui	at,0x0
  5c:	afa2001c 	sw	v0,28(sp)
  60:	0c000000 	jal	0 <osContStartQuery>
  64:	a0200000 	sb	zero,0(at)
  68:	8fbf0014 	lw	ra,20(sp)
  6c:	8fa2001c 	lw	v0,28(sp)
  70:	27bd0020 	addiu	sp,sp,32
  74:	03e00008 	jr	ra
  78:	00000000 	nop

0000007c <osContGetQuery>:
  7c:	27bdffe0 	addiu	sp,sp,-32
  80:	afbf0014 	sw	ra,20(sp)
  84:	00802825 	move	a1,a0
  88:	0c000000 	jal	0 <osContStartQuery>
  8c:	27a4001f 	addiu	a0,sp,31
  90:	8fbf0014 	lw	ra,20(sp)
  94:	27bd0020 	addiu	sp,sp,32
  98:	03e00008 	jr	ra
  9c:	00000000 	nop
