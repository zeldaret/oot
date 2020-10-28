
build/src/overlays/actors/ovl_Bg_Gnd_Nisekabe/z_bg_gnd_nisekabe.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgGndNisekabe_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa5001c 	sw	a1,28(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	3c053dcc 	lui	a1,0x3dcc
  10:	afa40018 	sw	a0,24(sp)
  14:	0c000000 	jal	0 <BgGndNisekabe_Init>
  18:	34a5cccd 	ori	a1,a1,0xcccd
  1c:	3c010000 	lui	at,0x0
  20:	c4240000 	lwc1	$f4,0(at)
  24:	8fae0018 	lw	t6,24(sp)
  28:	e5c400f4 	swc1	$f4,244(t6)
  2c:	8fbf0014 	lw	ra,20(sp)
  30:	27bd0018 	addiu	sp,sp,24
  34:	03e00008 	jr	ra
  38:	00000000 	nop

0000003c <BgGndNisekabe_Destroy>:
  3c:	afa40000 	sw	a0,0(sp)
  40:	03e00008 	jr	ra
  44:	afa50004 	sw	a1,4(sp)

00000048 <BgGndNisekabe_Update>:
  48:	90ae1c27 	lbu	t6,7207(a1)
  4c:	51c00006 	beqzl	t6,68 <BgGndNisekabe_Update+0x20>
  50:	8c990004 	lw	t9,4(a0)
  54:	8c8f0004 	lw	t7,4(a0)
  58:	35f80080 	ori	t8,t7,0x80
  5c:	03e00008 	jr	ra
  60:	ac980004 	sw	t8,4(a0)
  64:	8c990004 	lw	t9,4(a0)
  68:	2401ff7f 	li	at,-129
  6c:	03214024 	and	t0,t9,at
  70:	ac880004 	sw	t0,4(a0)
  74:	03e00008 	jr	ra
  78:	00000000 	nop

0000007c <BgGndNisekabe_Draw>:
  7c:	27bdffe8 	addiu	sp,sp,-24
  80:	afbf0014 	sw	ra,20(sp)
  84:	8c8e0004 	lw	t6,4(a0)
  88:	8482001c 	lh	v0,28(a0)
  8c:	24010080 	li	at,128
  90:	31cf0080 	andi	t7,t6,0x80
  94:	00a03025 	move	a2,a1
  98:	15e10009 	bne	t7,at,c0 <BgGndNisekabe_Draw+0x44>
  9c:	304200ff 	andi	v0,v0,0xff
  a0:	00a02025 	move	a0,a1
  a4:	3c050000 	lui	a1,0x0
  a8:	0002c080 	sll	t8,v0,0x2
  ac:	00b82821 	addu	a1,a1,t8
  b0:	0c000000 	jal	0 <BgGndNisekabe_Init>
  b4:	8ca50020 	lw	a1,32(a1)
  b8:	10000008 	b	dc <BgGndNisekabe_Draw+0x60>
  bc:	8fbf0014 	lw	ra,20(sp)
  c0:	0002c880 	sll	t9,v0,0x2
  c4:	3c050000 	lui	a1,0x0
  c8:	00b92821 	addu	a1,a1,t9
  cc:	8ca50020 	lw	a1,32(a1)
  d0:	0c000000 	jal	0 <BgGndNisekabe_Init>
  d4:	00c02025 	move	a0,a2
  d8:	8fbf0014 	lw	ra,20(sp)
  dc:	27bd0018 	addiu	sp,sp,24
  e0:	03e00008 	jr	ra
  e4:	00000000 	nop
	...
