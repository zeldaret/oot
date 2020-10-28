
build/src/code/z_collision_btltbls.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <DamageTable_Get>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	04800004 	bltz	a0,18 <DamageTable_Get+0x18>
   8:	afbf0014 	sw	ra,20(sp)
   c:	28810017 	slti	at,a0,23
  10:	14200006 	bnez	at,2c <DamageTable_Get+0x2c>
  14:	00047140 	sll	t6,a0,0x5
  18:	3c040000 	lui	a0,0x0
  1c:	0c000000 	jal	0 <DamageTable_Get>
  20:	24840000 	addiu	a0,a0,0
  24:	10000004 	b	38 <DamageTable_Get+0x38>
  28:	00001025 	move	v0,zero
  2c:	3c0f0000 	lui	t7,0x0
  30:	25ef0000 	addiu	t7,t7,0
  34:	01cf1021 	addu	v0,t6,t7
  38:	8fbf0014 	lw	ra,20(sp)
  3c:	27bd0018 	addiu	sp,sp,24
  40:	03e00008 	jr	ra
  44:	00000000 	nop

00000048 <func_8005B248>:
  48:	00801825 	move	v1,a0
  4c:	24040020 	li	a0,32
  50:	00001025 	move	v0,zero
  54:	24420004 	addiu	v0,v0,4
  58:	a0600001 	sb	zero,1(v1)
  5c:	a0600002 	sb	zero,2(v1)
  60:	a0600003 	sb	zero,3(v1)
  64:	24630004 	addiu	v1,v1,4
  68:	1444fffa 	bne	v0,a0,54 <func_8005B248+0xc>
  6c:	a060fffc 	sb	zero,-4(v1)
  70:	03e00008 	jr	ra
  74:	00000000 	nop
	...
