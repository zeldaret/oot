
build/src/overlays/actors/ovl_Bg_Menkuri_Kaiten/z_bg_menkuri_kaiten.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgMenkuriKaiten_Init>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afa5002c 	sw	a1,44(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	3c050000 	lui	a1,0x0
  10:	afa40028 	sw	a0,40(sp)
  14:	afa0001c 	sw	zero,28(sp)
  18:	0c000000 	jal	0 <BgMenkuriKaiten_Init>
  1c:	24a50020 	addiu	a1,a1,32
  20:	8fa40028 	lw	a0,40(sp)
  24:	0c000000 	jal	0 <BgMenkuriKaiten_Init>
  28:	24050003 	li	a1,3
  2c:	3c040000 	lui	a0,0x0
  30:	24840000 	addiu	a0,a0,0
  34:	0c000000 	jal	0 <BgMenkuriKaiten_Init>
  38:	27a5001c 	addiu	a1,sp,28
  3c:	8fa4002c 	lw	a0,44(sp)
  40:	8fa60028 	lw	a2,40(sp)
  44:	8fa7001c 	lw	a3,28(sp)
  48:	0c000000 	jal	0 <BgMenkuriKaiten_Init>
  4c:	24850810 	addiu	a1,a0,2064
  50:	8fae0028 	lw	t6,40(sp)
  54:	adc2014c 	sw	v0,332(t6)
  58:	8fbf0014 	lw	ra,20(sp)
  5c:	27bd0028 	addiu	sp,sp,40
  60:	03e00008 	jr	ra
  64:	00000000 	nop

00000068 <BgMenkuriKaiten_Destroy>:
  68:	27bdffe8 	addiu	sp,sp,-24
  6c:	afa40018 	sw	a0,24(sp)
  70:	8fae0018 	lw	t6,24(sp)
  74:	afbf0014 	sw	ra,20(sp)
  78:	00a02025 	move	a0,a1
  7c:	24a50810 	addiu	a1,a1,2064
  80:	0c000000 	jal	0 <BgMenkuriKaiten_Init>
  84:	8dc6014c 	lw	a2,332(t6)
  88:	8fbf0014 	lw	ra,20(sp)
  8c:	27bd0018 	addiu	sp,sp,24
  90:	03e00008 	jr	ra
  94:	00000000 	nop

00000098 <BgMenkuriKaiten_Update>:
  98:	27bdffe0 	addiu	sp,sp,-32
  9c:	afb00018 	sw	s0,24(sp)
  a0:	00808025 	move	s0,a0
  a4:	afbf001c 	sw	ra,28(sp)
  a8:	00a02025 	move	a0,a1
  ac:	0c000000 	jal	0 <BgMenkuriKaiten_Init>
  b0:	8605001c 	lh	a1,28(s0)
  b4:	5440000b 	bnezl	v0,e4 <BgMenkuriKaiten_Update+0x4c>
  b8:	8fbf001c 	lw	ra,28(sp)
  bc:	0c000000 	jal	0 <BgMenkuriKaiten_Init>
  c0:	02002025 	move	a0,s0
  c4:	10400006 	beqz	v0,e0 <BgMenkuriKaiten_Update+0x48>
  c8:	02002025 	move	a0,s0
  cc:	0c000000 	jal	0 <BgMenkuriKaiten_Init>
  d0:	24052024 	li	a1,8228
  d4:	860e00b6 	lh	t6,182(s0)
  d8:	25cf0080 	addiu	t7,t6,128
  dc:	a60f00b6 	sh	t7,182(s0)
  e0:	8fbf001c 	lw	ra,28(sp)
  e4:	8fb00018 	lw	s0,24(sp)
  e8:	27bd0020 	addiu	sp,sp,32
  ec:	03e00008 	jr	ra
  f0:	00000000 	nop

000000f4 <BgMenkuriKaiten_Draw>:
  f4:	27bdffe8 	addiu	sp,sp,-24
  f8:	afa40018 	sw	a0,24(sp)
  fc:	00a02025 	move	a0,a1
 100:	afbf0014 	sw	ra,20(sp)
 104:	3c050000 	lui	a1,0x0
 108:	0c000000 	jal	0 <BgMenkuriKaiten_Init>
 10c:	24a50000 	addiu	a1,a1,0
 110:	8fbf0014 	lw	ra,20(sp)
 114:	27bd0018 	addiu	sp,sp,24
 118:	03e00008 	jr	ra
 11c:	00000000 	nop
