
build/src/code/z_face_reaction.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Text_GetFaceReaction>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	0c000000 	jal	0 <Text_GetFaceReaction>
   c:	afa5001c 	sw	a1,28(sp)
  10:	8fae001c 	lw	t6,28(sp)
  14:	0002c040 	sll	t8,v0,0x1
  18:	8fbf0014 	lw	ra,20(sp)
  1c:	000e78c0 	sll	t7,t6,0x3
  20:	01ee7821 	addu	t7,t7,t6
  24:	000f7840 	sll	t7,t7,0x1
  28:	01f8c821 	addu	t9,t7,t8
  2c:	3c020000 	lui	v0,0x0
  30:	00591021 	addu	v0,v0,t9
  34:	94420000 	lhu	v0,0(v0)
  38:	03e00008 	jr	ra
  3c:	27bd0018 	addiu	sp,sp,24
