
build/src/overlays/actors/ovl_En_OE2/z_en_oe2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnOE2_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850190 	sw	a1,400(a0)

00000008 <EnOE2_Init>:
   8:	27bdffe8 	addiu	sp,sp,-24
   c:	afa5001c 	sw	a1,28(sp)
  10:	afbf0014 	sw	ra,20(sp)
  14:	3c050000 	lui	a1,0x0
  18:	0c000000 	jal	0 <EnOE2_SetupAction>
  1c:	24a50000 	addiu	a1,a1,0
  20:	8fbf0014 	lw	ra,20(sp)
  24:	27bd0018 	addiu	sp,sp,24
  28:	03e00008 	jr	ra
  2c:	00000000 	nop

00000030 <EnOE2_Destroy>:
  30:	afa40000 	sw	a0,0(sp)
  34:	03e00008 	jr	ra
  38:	afa50004 	sw	a1,4(sp)

0000003c <EnOE2_DoNothing>:
  3c:	afa40000 	sw	a0,0(sp)
  40:	03e00008 	jr	ra
  44:	afa50004 	sw	a1,4(sp)

00000048 <EnOE2_Update>:
  48:	afa40000 	sw	a0,0(sp)
  4c:	03e00008 	jr	ra
  50:	afa50004 	sw	a1,4(sp)

00000054 <EnOE2_Draw>:
  54:	afa40000 	sw	a0,0(sp)
  58:	03e00008 	jr	ra
  5c:	afa50004 	sw	a1,4(sp)
