
build/src/overlays/actors/ovl_En_Scene_Change/z_en_scene_change.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnSceneChange_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac85014c 	sw	a1,332(a0)

00000008 <EnSceneChange_Init>:
   8:	27bdffe8 	addiu	sp,sp,-24
   c:	afa5001c 	sw	a1,28(sp)
  10:	afbf0014 	sw	ra,20(sp)
  14:	3c050000 	lui	a1,0x0
  18:	0c000000 	jal	0 <EnSceneChange_SetupAction>
  1c:	24a50000 	addiu	a1,a1,0
  20:	8fbf0014 	lw	ra,20(sp)
  24:	27bd0018 	addiu	sp,sp,24
  28:	03e00008 	jr	ra
  2c:	00000000 	nop

00000030 <EnSceneChange_Destroy>:
  30:	afa40000 	sw	a0,0(sp)
  34:	03e00008 	jr	ra
  38:	afa50004 	sw	a1,4(sp)

0000003c <EnSceneChange_DoNothing>:
  3c:	afa40000 	sw	a0,0(sp)
  40:	03e00008 	jr	ra
  44:	afa50004 	sw	a1,4(sp)

00000048 <EnSceneChange_Update>:
  48:	27bdffe8 	addiu	sp,sp,-24
  4c:	afbf0014 	sw	ra,20(sp)
  50:	8c99014c 	lw	t9,332(a0)
  54:	0320f809 	jalr	t9
  58:	00000000 	nop
  5c:	8fbf0014 	lw	ra,20(sp)
  60:	27bd0018 	addiu	sp,sp,24
  64:	03e00008 	jr	ra
  68:	00000000 	nop

0000006c <EnSceneChange_Draw>:
  6c:	27bdffb0 	addiu	sp,sp,-80
  70:	afbf0014 	sw	ra,20(sp)
  74:	afa40050 	sw	a0,80(sp)
  78:	afa50054 	sw	a1,84(sp)
  7c:	8ca40000 	lw	a0,0(a1)
  80:	0c000000 	jal	0 <EnSceneChange_SetupAction>
  84:	240503c0 	li	a1,960
  88:	8faf0054 	lw	t7,84(sp)
  8c:	afa20044 	sw	v0,68(sp)
  90:	3c060000 	lui	a2,0x0
  94:	8de50000 	lw	a1,0(t7)
  98:	24c60000 	addiu	a2,a2,0
  9c:	27a40024 	addiu	a0,sp,36
  a0:	24070122 	li	a3,290
  a4:	0c000000 	jal	0 <EnSceneChange_SetupAction>
  a8:	afa50034 	sw	a1,52(sp)
  ac:	8fa80034 	lw	t0,52(sp)
  b0:	3c19db06 	lui	t9,0xdb06
  b4:	37390030 	ori	t9,t9,0x30
  b8:	8d0302c0 	lw	v1,704(t0)
  bc:	24780008 	addiu	t8,v1,8
  c0:	ad1802c0 	sw	t8,704(t0)
  c4:	ac790000 	sw	t9,0(v1)
  c8:	8fa90044 	lw	t1,68(sp)
  cc:	ac690004 	sw	t1,4(v1)
  d0:	8faa0054 	lw	t2,84(sp)
  d4:	0c000000 	jal	0 <EnSceneChange_SetupAction>
  d8:	8d440000 	lw	a0,0(t2)
  dc:	8fab0054 	lw	t3,84(sp)
  e0:	3c060000 	lui	a2,0x0
  e4:	24c60018 	addiu	a2,a2,24
  e8:	27a40024 	addiu	a0,sp,36
  ec:	24070182 	li	a3,386
  f0:	0c000000 	jal	0 <EnSceneChange_SetupAction>
  f4:	8d650000 	lw	a1,0(t3)
  f8:	8fbf0014 	lw	ra,20(sp)
  fc:	27bd0050 	addiu	sp,sp,80
 100:	03e00008 	jr	ra
 104:	00000000 	nop
	...
