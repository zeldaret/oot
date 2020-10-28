
build/src/overlays/actors/ovl_Bg_Spot00_Break/z_bg_spot00_break.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgSpot00Break_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afa50034 	sw	a1,52(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00024 	sw	zero,36(sp)
  1c:	0c000000 	jal	0 <BgSpot00Break_Init>
  20:	24a50020 	addiu	a1,a1,32
  24:	02002025 	move	a0,s0
  28:	0c000000 	jal	0 <BgSpot00Break_Init>
  2c:	00002825 	move	a1,zero
  30:	860e001c 	lh	t6,28(s0)
  34:	24010001 	li	at,1
  38:	3c040000 	lui	a0,0x0
  3c:	15c10007 	bne	t6,at,5c <BgSpot00Break_Init+0x5c>
  40:	24840000 	addiu	a0,a0,0
  44:	3c040000 	lui	a0,0x0
  48:	24840000 	addiu	a0,a0,0
  4c:	0c000000 	jal	0 <BgSpot00Break_Init>
  50:	27a50024 	addiu	a1,sp,36
  54:	10000004 	b	68 <BgSpot00Break_Init+0x68>
  58:	8fa40034 	lw	a0,52(sp)
  5c:	0c000000 	jal	0 <BgSpot00Break_Init>
  60:	27a50024 	addiu	a1,sp,36
  64:	8fa40034 	lw	a0,52(sp)
  68:	02003025 	move	a2,s0
  6c:	8fa70024 	lw	a3,36(sp)
  70:	0c000000 	jal	0 <BgSpot00Break_Init>
  74:	24850810 	addiu	a1,a0,2064
  78:	ae02014c 	sw	v0,332(s0)
  7c:	3c0f0000 	lui	t7,0x0
  80:	8def0004 	lw	t7,4(t7)
  84:	51e00004 	beqzl	t7,98 <BgSpot00Break_Init+0x98>
  88:	8fbf001c 	lw	ra,28(sp)
  8c:	0c000000 	jal	0 <BgSpot00Break_Init>
  90:	02002025 	move	a0,s0
  94:	8fbf001c 	lw	ra,28(sp)
  98:	8fb00018 	lw	s0,24(sp)
  9c:	27bd0030 	addiu	sp,sp,48
  a0:	03e00008 	jr	ra
  a4:	00000000 	nop

000000a8 <BgSpot00Break_Destroy>:
  a8:	27bdffe8 	addiu	sp,sp,-24
  ac:	afa40018 	sw	a0,24(sp)
  b0:	8fae0018 	lw	t6,24(sp)
  b4:	afbf0014 	sw	ra,20(sp)
  b8:	00a02025 	move	a0,a1
  bc:	24a50810 	addiu	a1,a1,2064
  c0:	0c000000 	jal	0 <BgSpot00Break_Init>
  c4:	8dc6014c 	lw	a2,332(t6)
  c8:	8fbf0014 	lw	ra,20(sp)
  cc:	27bd0018 	addiu	sp,sp,24
  d0:	03e00008 	jr	ra
  d4:	00000000 	nop

000000d8 <BgSpot00Break_Update>:
  d8:	afa40000 	sw	a0,0(sp)
  dc:	03e00008 	jr	ra
  e0:	afa50004 	sw	a1,4(sp)

000000e4 <BgSpot00Break_Draw>:
  e4:	27bdffe8 	addiu	sp,sp,-24
  e8:	afbf0014 	sw	ra,20(sp)
  ec:	848e001c 	lh	t6,28(a0)
  f0:	00a03025 	move	a2,a1
  f4:	24010001 	li	at,1
  f8:	15c10007 	bne	t6,at,118 <BgSpot00Break_Draw+0x34>
  fc:	00c02025 	move	a0,a2
 100:	00a02025 	move	a0,a1
 104:	3c050000 	lui	a1,0x0
 108:	0c000000 	jal	0 <BgSpot00Break_Init>
 10c:	24a50000 	addiu	a1,a1,0
 110:	10000005 	b	128 <BgSpot00Break_Draw+0x44>
 114:	8fbf0014 	lw	ra,20(sp)
 118:	3c050000 	lui	a1,0x0
 11c:	0c000000 	jal	0 <BgSpot00Break_Init>
 120:	24a50000 	addiu	a1,a1,0
 124:	8fbf0014 	lw	ra,20(sp)
 128:	27bd0018 	addiu	sp,sp,24
 12c:	03e00008 	jr	ra
 130:	00000000 	nop
	...
