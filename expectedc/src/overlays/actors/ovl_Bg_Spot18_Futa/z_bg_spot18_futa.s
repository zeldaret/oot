
build/src/overlays/actors/ovl_Bg_Spot18_Futa/z_bg_spot18_futa.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgSpot18Futa_Init>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa5002c 	sw	a1,44(sp)
   c:	afa40028 	sw	a0,40(sp)
  10:	afa0001c 	sw	zero,28(sp)
  14:	0c000000 	jal	0 <BgSpot18Futa_Init>
  18:	00002825 	move	a1,zero
  1c:	3c040000 	lui	a0,0x0
  20:	24840000 	addiu	a0,a0,0
  24:	0c000000 	jal	0 <BgSpot18Futa_Init>
  28:	27a5001c 	addiu	a1,sp,28
  2c:	8fa4002c 	lw	a0,44(sp)
  30:	8fa60028 	lw	a2,40(sp)
  34:	8fa7001c 	lw	a3,28(sp)
  38:	0c000000 	jal	0 <BgSpot18Futa_Init>
  3c:	24850810 	addiu	a1,a0,2064
  40:	8fae0028 	lw	t6,40(sp)
  44:	3c050000 	lui	a1,0x0
  48:	24a50020 	addiu	a1,a1,32
  4c:	adc2014c 	sw	v0,332(t6)
  50:	0c000000 	jal	0 <BgSpot18Futa_Init>
  54:	8fa40028 	lw	a0,40(sp)
  58:	8fbf0014 	lw	ra,20(sp)
  5c:	27bd0028 	addiu	sp,sp,40
  60:	03e00008 	jr	ra
  64:	00000000 	nop

00000068 <BgSpot18Futa_Destroy>:
  68:	27bdffe8 	addiu	sp,sp,-24
  6c:	afa40018 	sw	a0,24(sp)
  70:	8fae0018 	lw	t6,24(sp)
  74:	afbf0014 	sw	ra,20(sp)
  78:	00a02025 	move	a0,a1
  7c:	24a50810 	addiu	a1,a1,2064
  80:	0c000000 	jal	0 <BgSpot18Futa_Init>
  84:	8dc6014c 	lw	a2,332(t6)
  88:	8fbf0014 	lw	ra,20(sp)
  8c:	27bd0018 	addiu	sp,sp,24
  90:	03e00008 	jr	ra
  94:	00000000 	nop

00000098 <BgSpot18Futa_Update>:
  98:	27bdffe8 	addiu	sp,sp,-24
  9c:	afbf0014 	sw	ra,20(sp)
  a0:	afa5001c 	sw	a1,28(sp)
  a4:	8c8e0118 	lw	t6,280(a0)
  a8:	00803825 	move	a3,a0
  ac:	24840050 	addiu	a0,a0,80
  b0:	15c0000e 	bnez	t6,ec <BgSpot18Futa_Update+0x54>
  b4:	24050000 	li	a1,0
  b8:	3c063ba3 	lui	a2,0x3ba3
  bc:	34c6d70a 	ori	a2,a2,0xd70a
  c0:	0c000000 	jal	0 <BgSpot18Futa_Init>
  c4:	afa70018 	sw	a3,24(sp)
  c8:	10400005 	beqz	v0,e0 <BgSpot18Futa_Update+0x48>
  cc:	8fa70018 	lw	a3,24(sp)
  d0:	0c000000 	jal	0 <BgSpot18Futa_Init>
  d4:	00e02025 	move	a0,a3
  d8:	10000005 	b	f0 <BgSpot18Futa_Update+0x58>
  dc:	8fbf0014 	lw	ra,20(sp)
  e0:	c4e00050 	lwc1	$f0,80(a3)
  e4:	e4e00058 	swc1	$f0,88(a3)
  e8:	e4e00054 	swc1	$f0,84(a3)
  ec:	8fbf0014 	lw	ra,20(sp)
  f0:	27bd0018 	addiu	sp,sp,24
  f4:	03e00008 	jr	ra
  f8:	00000000 	nop

000000fc <BgSpot18Futa_Draw>:
  fc:	27bdffe8 	addiu	sp,sp,-24
 100:	afa40018 	sw	a0,24(sp)
 104:	00a02025 	move	a0,a1
 108:	afbf0014 	sw	ra,20(sp)
 10c:	3c050000 	lui	a1,0x0
 110:	0c000000 	jal	0 <BgSpot18Futa_Init>
 114:	24a50000 	addiu	a1,a1,0
 118:	8fbf0014 	lw	ra,20(sp)
 11c:	27bd0018 	addiu	sp,sp,24
 120:	03e00008 	jr	ra
 124:	00000000 	nop
	...
