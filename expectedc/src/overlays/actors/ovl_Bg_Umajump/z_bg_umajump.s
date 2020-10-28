
build/src/overlays/actors/ovl_Bg_Umajump/z_bg_umajump.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgUmaJump_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afa50034 	sw	a1,52(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00024 	sw	zero,36(sp)
  1c:	0c000000 	jal	0 <BgUmaJump_Init>
  20:	24a50020 	addiu	a1,a1,32
  24:	02002025 	move	a0,s0
  28:	0c000000 	jal	0 <BgUmaJump_Init>
  2c:	00002825 	move	a1,zero
  30:	3c040000 	lui	a0,0x0
  34:	24840000 	addiu	a0,a0,0
  38:	0c000000 	jal	0 <BgUmaJump_Init>
  3c:	27a50024 	addiu	a1,sp,36
  40:	8fa40034 	lw	a0,52(sp)
  44:	02003025 	move	a2,s0
  48:	8fa70024 	lw	a3,36(sp)
  4c:	0c000000 	jal	0 <BgUmaJump_Init>
  50:	24850810 	addiu	a1,a0,2064
  54:	860e001c 	lh	t6,28(s0)
  58:	24010001 	li	at,1
  5c:	ae02014c 	sw	v0,332(s0)
  60:	55c10011 	bnel	t6,at,a8 <BgUmaJump_Init+0xa8>
  64:	8fbf001c 	lw	ra,28(sp)
  68:	0c000000 	jal	0 <BgUmaJump_Init>
  6c:	24040018 	li	a0,24
  70:	14400009 	bnez	v0,98 <BgUmaJump_Init+0x98>
  74:	3c0f0000 	lui	t7,0x0
  78:	8def0000 	lw	t7,0(t7)
  7c:	85f80556 	lh	t8,1366(t7)
  80:	57000006 	bnezl	t8,9c <BgUmaJump_Init+0x9c>
  84:	8e190004 	lw	t9,4(s0)
  88:	0c000000 	jal	0 <BgUmaJump_Init>
  8c:	02002025 	move	a0,s0
  90:	10000005 	b	a8 <BgUmaJump_Init+0xa8>
  94:	8fbf001c 	lw	ra,28(sp)
  98:	8e190004 	lw	t9,4(s0)
  9c:	37280030 	ori	t0,t9,0x30
  a0:	ae080004 	sw	t0,4(s0)
  a4:	8fbf001c 	lw	ra,28(sp)
  a8:	8fb00018 	lw	s0,24(sp)
  ac:	27bd0030 	addiu	sp,sp,48
  b0:	03e00008 	jr	ra
  b4:	00000000 	nop

000000b8 <BgUmaJump_Destroy>:
  b8:	27bdffe8 	addiu	sp,sp,-24
  bc:	afa40018 	sw	a0,24(sp)
  c0:	8fae0018 	lw	t6,24(sp)
  c4:	afbf0014 	sw	ra,20(sp)
  c8:	00a02025 	move	a0,a1
  cc:	24a50810 	addiu	a1,a1,2064
  d0:	0c000000 	jal	0 <BgUmaJump_Init>
  d4:	8dc6014c 	lw	a2,332(t6)
  d8:	8fbf0014 	lw	ra,20(sp)
  dc:	27bd0018 	addiu	sp,sp,24
  e0:	03e00008 	jr	ra
  e4:	00000000 	nop

000000e8 <BgUmaJump_Update>:
  e8:	afa40000 	sw	a0,0(sp)
  ec:	03e00008 	jr	ra
  f0:	afa50004 	sw	a1,4(sp)

000000f4 <BgUmaJump_Draw>:
  f4:	27bdffe8 	addiu	sp,sp,-24
  f8:	afa40018 	sw	a0,24(sp)
  fc:	00a02025 	move	a0,a1
 100:	afbf0014 	sw	ra,20(sp)
 104:	3c050000 	lui	a1,0x0
 108:	0c000000 	jal	0 <BgUmaJump_Init>
 10c:	24a50000 	addiu	a1,a1,0
 110:	8fbf0014 	lw	ra,20(sp)
 114:	27bd0018 	addiu	sp,sp,24
 118:	03e00008 	jr	ra
 11c:	00000000 	nop
