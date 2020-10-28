
build/src/libultra_code_O2/sins.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <sins>:
   0:	308effff 	andi	t6,a0,0xffff
   4:	000e7902 	srl	t7,t6,0x4
   8:	31f8ffff 	andi	t8,t7,0xffff
   c:	33190400 	andi	t9,t8,0x400
  10:	afa40000 	sw	a0,0(sp)
  14:	13200008 	beqz	t9,38 <sins+0x38>
  18:	03001025 	move	v0,t8
  1c:	330803ff 	andi	t0,t8,0x3ff
  20:	00084840 	sll	t1,t0,0x1
  24:	00095023 	negu	t2,t1
  28:	3c030000 	lui	v1,0x0
  2c:	006a1821 	addu	v1,v1,t2
  30:	10000006 	b	4c <sins+0x4c>
  34:	846307fe 	lh	v1,2046(v1)
  38:	304b03ff 	andi	t3,v0,0x3ff
  3c:	000b6040 	sll	t4,t3,0x1
  40:	3c030000 	lui	v1,0x0
  44:	006c1821 	addu	v1,v1,t4
  48:	84630000 	lh	v1,0(v1)
  4c:	304d0800 	andi	t5,v0,0x800
  50:	11a00005 	beqz	t5,68 <sins+0x68>
  54:	00601025 	move	v0,v1
  58:	00031023 	negu	v0,v1
  5c:	00027400 	sll	t6,v0,0x10
  60:	03e00008 	jr	ra
  64:	000e1403 	sra	v0,t6,0x10
  68:	03e00008 	jr	ra
  6c:	00000000 	nop
