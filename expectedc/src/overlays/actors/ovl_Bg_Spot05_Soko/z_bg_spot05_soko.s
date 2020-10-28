
build/src/overlays/actors/ovl_Bg_Spot05_Soko/z_bg_spot05_soko.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgSpot05Soko_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afa50034 	sw	a1,52(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00024 	sw	zero,36(sp)
  1c:	0c000000 	jal	0 <BgSpot05Soko_Init>
  20:	24a50020 	addiu	a1,a1,32
  24:	860e001c 	lh	t6,28(s0)
  28:	8619001c 	lh	t9,28(s0)
  2c:	02002025 	move	a0,s0
  30:	000e7a03 	sra	t7,t6,0x8
  34:	31f800ff 	andi	t8,t7,0xff
  38:	332800ff 	andi	t0,t9,0xff
  3c:	ae180168 	sw	t8,360(s0)
  40:	a608001c 	sh	t0,28(s0)
  44:	0c000000 	jal	0 <BgSpot05Soko_Init>
  48:	00002825 	move	a1,zero
  4c:	8609001c 	lh	t1,28(s0)
  50:	3c040000 	lui	a0,0x0
  54:	27a50024 	addiu	a1,sp,36
  58:	15200010 	bnez	t1,9c <BgSpot05Soko_Init+0x9c>
  5c:	24840000 	addiu	a0,a0,0
  60:	3c040000 	lui	a0,0x0
  64:	0c000000 	jal	0 <BgSpot05Soko_Init>
  68:	24840000 	addiu	a0,a0,0
  6c:	3c0a0000 	lui	t2,0x0
  70:	8d4a0004 	lw	t2,4(t2)
  74:	3c0b0000 	lui	t3,0x0
  78:	256b0000 	addiu	t3,t3,0
  7c:	15400005 	bnez	t2,94 <BgSpot05Soko_Init+0x94>
  80:	00000000 	nop
  84:	0c000000 	jal	0 <BgSpot05Soko_Init>
  88:	02002025 	move	a0,s0
  8c:	10000014 	b	e0 <BgSpot05Soko_Init+0xe0>
  90:	8fa40034 	lw	a0,52(sp)
  94:	10000011 	b	dc <BgSpot05Soko_Init+0xdc>
  98:	ae0b0164 	sw	t3,356(s0)
  9c:	0c000000 	jal	0 <BgSpot05Soko_Init>
  a0:	27a50024 	addiu	a1,sp,36
  a4:	8fa40034 	lw	a0,52(sp)
  a8:	0c000000 	jal	0 <BgSpot05Soko_Init>
  ac:	8e050168 	lw	a1,360(s0)
  b0:	10400005 	beqz	v0,c8 <BgSpot05Soko_Init+0xc8>
  b4:	3c0c0000 	lui	t4,0x0
  b8:	0c000000 	jal	0 <BgSpot05Soko_Init>
  bc:	02002025 	move	a0,s0
  c0:	10000007 	b	e0 <BgSpot05Soko_Init+0xe0>
  c4:	8fa40034 	lw	a0,52(sp)
  c8:	8e0d0004 	lw	t5,4(s0)
  cc:	258c0000 	addiu	t4,t4,0
  d0:	ae0c0164 	sw	t4,356(s0)
  d4:	35ae0010 	ori	t6,t5,0x10
  d8:	ae0e0004 	sw	t6,4(s0)
  dc:	8fa40034 	lw	a0,52(sp)
  e0:	02003025 	move	a2,s0
  e4:	8fa70024 	lw	a3,36(sp)
  e8:	0c000000 	jal	0 <BgSpot05Soko_Init>
  ec:	24850810 	addiu	a1,a0,2064
  f0:	ae02014c 	sw	v0,332(s0)
  f4:	8fbf001c 	lw	ra,28(sp)
  f8:	8fb00018 	lw	s0,24(sp)
  fc:	27bd0030 	addiu	sp,sp,48
 100:	03e00008 	jr	ra
 104:	00000000 	nop

00000108 <BgSpot05Soko_Destroy>:
 108:	27bdffe8 	addiu	sp,sp,-24
 10c:	afa40018 	sw	a0,24(sp)
 110:	8fae0018 	lw	t6,24(sp)
 114:	afbf0014 	sw	ra,20(sp)
 118:	00a02025 	move	a0,a1
 11c:	24a50810 	addiu	a1,a1,2064
 120:	0c000000 	jal	0 <BgSpot05Soko_Init>
 124:	8dc6014c 	lw	a2,332(t6)
 128:	8fbf0014 	lw	ra,20(sp)
 12c:	27bd0018 	addiu	sp,sp,24
 130:	03e00008 	jr	ra
 134:	00000000 	nop

00000138 <func_808AE5A8>:
 138:	afa40000 	sw	a0,0(sp)
 13c:	03e00008 	jr	ra
 140:	afa50004 	sw	a1,4(sp)

00000144 <func_808AE5B4>:
 144:	27bdffe0 	addiu	sp,sp,-32
 148:	afb00018 	sw	s0,24(sp)
 14c:	00808025 	move	s0,a0
 150:	afbf001c 	sw	ra,28(sp)
 154:	afa50024 	sw	a1,36(sp)
 158:	00a02025 	move	a0,a1
 15c:	0c000000 	jal	0 <BgSpot05Soko_Init>
 160:	8e050168 	lw	a1,360(s0)
 164:	10400011 	beqz	v0,1ac <func_808AE5B4+0x68>
 168:	8fa40024 	lw	a0,36(sp)
 16c:	26050024 	addiu	a1,s0,36
 170:	2406001e 	li	a2,30
 174:	0c000000 	jal	0 <BgSpot05Soko_Init>
 178:	2407285a 	li	a3,10330
 17c:	02002025 	move	a0,s0
 180:	0c000000 	jal	0 <BgSpot05Soko_Init>
 184:	3c054248 	lui	a1,0x4248
 188:	8fa40024 	lw	a0,36(sp)
 18c:	0c000000 	jal	0 <BgSpot05Soko_Init>
 190:	02002825 	move	a1,s0
 194:	3c013f00 	lui	at,0x3f00
 198:	44812000 	mtc1	at,$f4
 19c:	3c0e0000 	lui	t6,0x0
 1a0:	25ce0000 	addiu	t6,t6,0
 1a4:	ae0e0164 	sw	t6,356(s0)
 1a8:	e6040068 	swc1	$f4,104(s0)
 1ac:	8fbf001c 	lw	ra,28(sp)
 1b0:	8fb00018 	lw	s0,24(sp)
 1b4:	27bd0020 	addiu	sp,sp,32
 1b8:	03e00008 	jr	ra
 1bc:	00000000 	nop

000001c0 <func_808AE630>:
 1c0:	27bdffe8 	addiu	sp,sp,-24
 1c4:	afbf0014 	sw	ra,20(sp)
 1c8:	afa5001c 	sw	a1,28(sp)
 1cc:	3c013fc0 	lui	at,0x3fc0
 1d0:	44813000 	mtc1	at,$f6
 1d4:	c4840068 	lwc1	$f4,104(a0)
 1d8:	00803825 	move	a3,a0
 1dc:	3c0142f0 	lui	at,0x42f0
 1e0:	46062202 	mul.s	$f8,$f4,$f6
 1e4:	44818000 	mtc1	at,$f16
 1e8:	24840028 	addiu	a0,a0,40
 1ec:	e4880040 	swc1	$f8,64(a0)
 1f0:	c4ea000c 	lwc1	$f10,12(a3)
 1f4:	8ce60068 	lw	a2,104(a3)
 1f8:	afa70018 	sw	a3,24(sp)
 1fc:	46105481 	sub.s	$f18,$f10,$f16
 200:	44059000 	mfc1	a1,$f18
 204:	0c000000 	jal	0 <BgSpot05Soko_Init>
 208:	00000000 	nop
 20c:	10400003 	beqz	v0,21c <func_808AE630+0x5c>
 210:	8fa70018 	lw	a3,24(sp)
 214:	0c000000 	jal	0 <BgSpot05Soko_Init>
 218:	00e02025 	move	a0,a3
 21c:	8fbf0014 	lw	ra,20(sp)
 220:	27bd0018 	addiu	sp,sp,24
 224:	03e00008 	jr	ra
 228:	00000000 	nop

0000022c <BgSpot05Soko_Update>:
 22c:	27bdffe8 	addiu	sp,sp,-24
 230:	afbf0014 	sw	ra,20(sp)
 234:	8c990164 	lw	t9,356(a0)
 238:	0320f809 	jalr	t9
 23c:	00000000 	nop
 240:	8fbf0014 	lw	ra,20(sp)
 244:	27bd0018 	addiu	sp,sp,24
 248:	03e00008 	jr	ra
 24c:	00000000 	nop

00000250 <BgSpot05Soko_Draw>:
 250:	27bdffe8 	addiu	sp,sp,-24
 254:	afbf0014 	sw	ra,20(sp)
 258:	00803825 	move	a3,a0
 25c:	84ee001c 	lh	t6,28(a3)
 260:	00a02025 	move	a0,a1
 264:	3c050000 	lui	a1,0x0
 268:	000e7880 	sll	t7,t6,0x2
 26c:	00af2821 	addu	a1,a1,t7
 270:	0c000000 	jal	0 <BgSpot05Soko_Init>
 274:	8ca50024 	lw	a1,36(a1)
 278:	8fbf0014 	lw	ra,20(sp)
 27c:	27bd0018 	addiu	sp,sp,24
 280:	03e00008 	jr	ra
 284:	00000000 	nop
	...
