
build/src/overlays/actors/ovl_Bg_Menkuri_Nisekabe/z_bg_menkuri_nisekabe.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgMenkuriNisekabe_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa5001c 	sw	a1,28(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	3c053dcc 	lui	a1,0x3dcc
  10:	0c000000 	jal	0 <BgMenkuriNisekabe_Init>
  14:	34a5cccd 	ori	a1,a1,0xcccd
  18:	8fbf0014 	lw	ra,20(sp)
  1c:	27bd0018 	addiu	sp,sp,24
  20:	03e00008 	jr	ra
  24:	00000000 	nop

00000028 <BgMenkuriNisekabe_Destroy>:
  28:	afa40000 	sw	a0,0(sp)
  2c:	03e00008 	jr	ra
  30:	afa50004 	sw	a1,4(sp)

00000034 <BgMenkuriNisekabe_Update>:
  34:	90ae1c27 	lbu	t6,7207(a1)
  38:	51c00006 	beqzl	t6,54 <BgMenkuriNisekabe_Update+0x20>
  3c:	8c990004 	lw	t9,4(a0)
  40:	8c8f0004 	lw	t7,4(a0)
  44:	35f80080 	ori	t8,t7,0x80
  48:	03e00008 	jr	ra
  4c:	ac980004 	sw	t8,4(a0)
  50:	8c990004 	lw	t9,4(a0)
  54:	2401ff7f 	li	at,-129
  58:	03214024 	and	t0,t9,at
  5c:	ac880004 	sw	t0,4(a0)
  60:	03e00008 	jr	ra
  64:	00000000 	nop

00000068 <BgMenkuriNisekabe_Draw>:
  68:	27bdffe8 	addiu	sp,sp,-24
  6c:	afbf0014 	sw	ra,20(sp)
  70:	8c8e0004 	lw	t6,4(a0)
  74:	8482001c 	lh	v0,28(a0)
  78:	24010080 	li	at,128
  7c:	31cf0080 	andi	t7,t6,0x80
  80:	00a03025 	move	a2,a1
  84:	15e10009 	bne	t7,at,ac <BgMenkuriNisekabe_Draw+0x44>
  88:	304200ff 	andi	v0,v0,0xff
  8c:	00a02025 	move	a0,a1
  90:	3c050000 	lui	a1,0x0
  94:	0002c080 	sll	t8,v0,0x2
  98:	00b82821 	addu	a1,a1,t8
  9c:	0c000000 	jal	0 <BgMenkuriNisekabe_Init>
  a0:	8ca50020 	lw	a1,32(a1)
  a4:	10000008 	b	c8 <BgMenkuriNisekabe_Draw+0x60>
  a8:	8fbf0014 	lw	ra,20(sp)
  ac:	0002c880 	sll	t9,v0,0x2
  b0:	3c050000 	lui	a1,0x0
  b4:	00b92821 	addu	a1,a1,t9
  b8:	8ca50020 	lw	a1,32(a1)
  bc:	0c000000 	jal	0 <BgMenkuriNisekabe_Init>
  c0:	00c02025 	move	a0,a2
  c4:	8fbf0014 	lw	ra,20(sp)
  c8:	27bd0018 	addiu	sp,sp,24
  cc:	03e00008 	jr	ra
  d0:	00000000 	nop
	...
