
build/src/libultra_code_O2/__osSpRawStartDma.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osSpRawStartDma>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa40018 	sw	a0,24(sp)
   c:	afa5001c 	sw	a1,28(sp)
  10:	afa60020 	sw	a2,32(sp)
  14:	0c000000 	jal	0 <__osSpRawStartDma>
  18:	afa70024 	sw	a3,36(sp)
  1c:	10400003 	beqz	v0,2c <__osSpRawStartDma+0x2c>
  20:	8fae001c 	lw	t6,28(sp)
  24:	10000013 	b	74 <__osSpRawStartDma+0x74>
  28:	2402ffff 	li	v0,-1
  2c:	3c0fa404 	lui	t7,0xa404
  30:	adee0000 	sw	t6,0(t7)
  34:	0c000000 	jal	0 <__osSpRawStartDma>
  38:	8fa40020 	lw	a0,32(sp)
  3c:	3c18a404 	lui	t8,0xa404
  40:	af020004 	sw	v0,4(t8)
  44:	8fb90018 	lw	t9,24(sp)
  48:	8fab0024 	lw	t3,36(sp)
  4c:	00001025 	move	v0,zero
  50:	17200006 	bnez	t9,6c <__osSpRawStartDma+0x6c>
  54:	256cffff 	addiu	t4,t3,-1
  58:	8fa80024 	lw	t0,36(sp)
  5c:	3c0aa404 	lui	t2,0xa404
  60:	2509ffff 	addiu	t1,t0,-1
  64:	10000003 	b	74 <__osSpRawStartDma+0x74>
  68:	ad49000c 	sw	t1,12(t2)
  6c:	3c0da404 	lui	t5,0xa404
  70:	adac0008 	sw	t4,8(t5)
  74:	8fbf0014 	lw	ra,20(sp)
  78:	27bd0018 	addiu	sp,sp,24
  7c:	03e00008 	jr	ra
  80:	00000000 	nop
	...
