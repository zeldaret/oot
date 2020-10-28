
build/src/code/title_setup.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <TitleSetup_InitImpl>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa40018 	sw	a0,24(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	3c040000 	lui	a0,0x0
  10:	0c000000 	jal	0 <TitleSetup_InitImpl>
  14:	24840000 	addiu	a0,a0,0
  18:	0c000000 	jal	0 <TitleSetup_InitImpl>
  1c:	00000000 	nop
  20:	8fa20018 	lw	v0,24(sp)
  24:	3c0e0000 	lui	t6,0x0
  28:	25ce0000 	addiu	t6,t6,0
  2c:	240f01e8 	li	t7,488
  30:	ac400098 	sw	zero,152(v0)
  34:	ac4f0010 	sw	t7,16(v0)
  38:	ac4e000c 	sw	t6,12(v0)
  3c:	8fbf0014 	lw	ra,20(sp)
  40:	27bd0018 	addiu	sp,sp,24
  44:	03e00008 	jr	ra
  48:	00000000 	nop

0000004c <TitleSetup_Destroy>:
  4c:	03e00008 	jr	ra
  50:	afa40000 	sw	a0,0(sp)

00000054 <TitleSetup_Init>:
  54:	27bdffe8 	addiu	sp,sp,-24
  58:	3c0e0000 	lui	t6,0x0
  5c:	afbf0014 	sw	ra,20(sp)
  60:	25ce0000 	addiu	t6,t6,0
  64:	0c000000 	jal	0 <TitleSetup_InitImpl>
  68:	ac8e0008 	sw	t6,8(a0)
  6c:	8fbf0014 	lw	ra,20(sp)
  70:	27bd0018 	addiu	sp,sp,24
  74:	03e00008 	jr	ra
  78:	00000000 	nop
  7c:	00000000 	nop
