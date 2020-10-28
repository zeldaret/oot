
build/src/code/code_80106860.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80106860>:
   0:	27bdfff8 	addiu	sp,sp,-8
   4:	afa40004 	sw	a0,4(sp)
   8:	00c03825 	move	a3,a2
   c:	10e00009 	beqz	a3,34 <func_80106860+0x34>
  10:	24c6ffff 	addiu	a2,a2,-1
  14:	8fae0004 	lw	t6,4(sp)
  18:	a1c50000 	sb	a1,0(t6)
  1c:	8faf0004 	lw	t7,4(sp)
  20:	25f80001 	addiu	t8,t7,1
  24:	afb80004 	sw	t8,4(sp)
  28:	00c03825 	move	a3,a2
  2c:	14e0fff9 	bnez	a3,14 <func_80106860+0x14>
  30:	24c6ffff 	addiu	a2,a2,-1
  34:	10000003 	b	44 <func_80106860+0x44>
  38:	00801025 	move	v0,a0
  3c:	10000001 	b	44 <func_80106860+0x44>
  40:	00000000 	nop
  44:	03e00008 	jr	ra
  48:	27bd0008 	addiu	sp,sp,8
  4c:	00000000 	nop
