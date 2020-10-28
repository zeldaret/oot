
build/src/overlays/actors/ovl_En_Vase/z_en_vase.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnVase_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa5001c 	sw	a1,28(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	3c053c23 	lui	a1,0x3c23
  10:	afa40018 	sw	a0,24(sp)
  14:	0c000000 	jal	0 <EnVase_Init>
  18:	34a5d70a 	ori	a1,a1,0xd70a
  1c:	8fa20018 	lw	v0,24(sp)
  20:	3c060000 	lui	a2,0x0
  24:	24c60000 	addiu	a2,a2,0
  28:	8c4f0024 	lw	t7,36(v0)
  2c:	8c4e0028 	lw	t6,40(v0)
  30:	24050000 	li	a1,0
  34:	ac4f0038 	sw	t7,56(v0)
  38:	8c4f002c 	lw	t7,44(v0)
  3c:	3c0740c0 	lui	a3,0x40c0
  40:	244400b4 	addiu	a0,v0,180
  44:	ac4e003c 	sw	t6,60(v0)
  48:	0c000000 	jal	0 <EnVase_Init>
  4c:	ac4f0040 	sw	t7,64(v0)
  50:	8fbf0014 	lw	ra,20(sp)
  54:	27bd0018 	addiu	sp,sp,24
  58:	03e00008 	jr	ra
  5c:	00000000 	nop

00000060 <EnVase_Destroy>:
  60:	afa40000 	sw	a0,0(sp)
  64:	03e00008 	jr	ra
  68:	afa50004 	sw	a1,4(sp)

0000006c <EnVase_Draw>:
  6c:	27bdffe8 	addiu	sp,sp,-24
  70:	afa40018 	sw	a0,24(sp)
  74:	00a02025 	move	a0,a1
  78:	afbf0014 	sw	ra,20(sp)
  7c:	3c050000 	lui	a1,0x0
  80:	0c000000 	jal	0 <EnVase_Init>
  84:	24a50000 	addiu	a1,a1,0
  88:	8fbf0014 	lw	ra,20(sp)
  8c:	27bd0018 	addiu	sp,sp,24
  90:	03e00008 	jr	ra
  94:	00000000 	nop
	...
