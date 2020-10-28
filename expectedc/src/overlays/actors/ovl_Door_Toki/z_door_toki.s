
build/src/overlays/actors/ovl_Door_Toki/z_door_toki.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <DoorToki_Init>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afa5002c 	sw	a1,44(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	3c050000 	lui	a1,0x0
  10:	afa40028 	sw	a0,40(sp)
  14:	afa0001c 	sw	zero,28(sp)
  18:	0c000000 	jal	0 <DoorToki_Init>
  1c:	24a50020 	addiu	a1,a1,32
  20:	8fa40028 	lw	a0,40(sp)
  24:	0c000000 	jal	0 <DoorToki_Init>
  28:	00002825 	move	a1,zero
  2c:	3c040000 	lui	a0,0x0
  30:	24840000 	addiu	a0,a0,0
  34:	0c000000 	jal	0 <DoorToki_Init>
  38:	27a5001c 	addiu	a1,sp,28
  3c:	8fa4002c 	lw	a0,44(sp)
  40:	8fa60028 	lw	a2,40(sp)
  44:	8fa7001c 	lw	a3,28(sp)
  48:	0c000000 	jal	0 <DoorToki_Init>
  4c:	24850810 	addiu	a1,a0,2064
  50:	8fae0028 	lw	t6,40(sp)
  54:	adc2014c 	sw	v0,332(t6)
  58:	8fbf0014 	lw	ra,20(sp)
  5c:	27bd0028 	addiu	sp,sp,40
  60:	03e00008 	jr	ra
  64:	00000000 	nop

00000068 <DoorToki_Destroy>:
  68:	27bdffe8 	addiu	sp,sp,-24
  6c:	afa40018 	sw	a0,24(sp)
  70:	8fae0018 	lw	t6,24(sp)
  74:	afbf0014 	sw	ra,20(sp)
  78:	00a02025 	move	a0,a1
  7c:	24a50810 	addiu	a1,a1,2064
  80:	0c000000 	jal	0 <DoorToki_Init>
  84:	8dc6014c 	lw	a2,332(t6)
  88:	8fbf0014 	lw	ra,20(sp)
  8c:	27bd0018 	addiu	sp,sp,24
  90:	03e00008 	jr	ra
  94:	00000000 	nop

00000098 <DoorToki_Update>:
  98:	3c0e0000 	lui	t6,0x0
  9c:	95ce0edc 	lhu	t6,3804(t6)
  a0:	27bdffe8 	addiu	sp,sp,-24
  a4:	afbf0014 	sw	ra,20(sp)
  a8:	31cf0800 	andi	t7,t6,0x800
  ac:	afa40018 	sw	a0,24(sp)
  b0:	11e00008 	beqz	t7,d4 <DoorToki_Update+0x3c>
  b4:	00a03825 	move	a3,a1
  b8:	8fb80018 	lw	t8,24(sp)
  bc:	00a02025 	move	a0,a1
  c0:	24a50810 	addiu	a1,a1,2064
  c4:	0c000000 	jal	0 <DoorToki_Init>
  c8:	8f06014c 	lw	a2,332(t8)
  cc:	10000007 	b	ec <DoorToki_Update+0x54>
  d0:	8fbf0014 	lw	ra,20(sp)
  d4:	8fb90018 	lw	t9,24(sp)
  d8:	00e02025 	move	a0,a3
  dc:	24e50810 	addiu	a1,a3,2064
  e0:	0c000000 	jal	0 <DoorToki_Init>
  e4:	8f26014c 	lw	a2,332(t9)
  e8:	8fbf0014 	lw	ra,20(sp)
  ec:	27bd0018 	addiu	sp,sp,24
  f0:	03e00008 	jr	ra
  f4:	00000000 	nop
	...
