
build/src/overlays/actors/ovl_Bg_Mizu_Uzu/z_bg_mizu_uzu.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgMizuUzu_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afa50034 	sw	a1,52(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00024 	sw	zero,36(sp)
  1c:	0c000000 	jal	0 <BgMizuUzu_Init>
  20:	24a50020 	addiu	a1,a1,32
  24:	02002025 	move	a0,s0
  28:	0c000000 	jal	0 <BgMizuUzu_Init>
  2c:	00002825 	move	a1,zero
  30:	3c040000 	lui	a0,0x0
  34:	24840000 	addiu	a0,a0,0
  38:	0c000000 	jal	0 <BgMizuUzu_Init>
  3c:	27a50024 	addiu	a1,sp,36
  40:	8fa40034 	lw	a0,52(sp)
  44:	02003025 	move	a2,s0
  48:	8fa70024 	lw	a3,36(sp)
  4c:	0c000000 	jal	0 <BgMizuUzu_Init>
  50:	24850810 	addiu	a1,a0,2064
  54:	3c0e0000 	lui	t6,0x0
  58:	25ce0000 	addiu	t6,t6,0
  5c:	ae02014c 	sw	v0,332(s0)
  60:	ae0e0164 	sw	t6,356(s0)
  64:	8fbf001c 	lw	ra,28(sp)
  68:	8fb00018 	lw	s0,24(sp)
  6c:	27bd0030 	addiu	sp,sp,48
  70:	03e00008 	jr	ra
  74:	00000000 	nop

00000078 <BgMizuUzu_Destroy>:
  78:	27bdffe8 	addiu	sp,sp,-24
  7c:	afa40018 	sw	a0,24(sp)
  80:	8fae0018 	lw	t6,24(sp)
  84:	afbf0014 	sw	ra,20(sp)
  88:	00a02025 	move	a0,a1
  8c:	24a50810 	addiu	a1,a1,2064
  90:	0c000000 	jal	0 <BgMizuUzu_Init>
  94:	8dc6014c 	lw	a2,332(t6)
  98:	8fbf0014 	lw	ra,20(sp)
  9c:	27bd0018 	addiu	sp,sp,24
  a0:	03e00008 	jr	ra
  a4:	00000000 	nop

000000a8 <func_8089F788>:
  a8:	27bdffe0 	addiu	sp,sp,-32
  ac:	afbf001c 	sw	ra,28(sp)
  b0:	afb00018 	sw	s0,24(sp)
  b4:	8cae1c44 	lw	t6,7236(a1)
  b8:	00808025 	move	s0,a0
  bc:	00a03825 	move	a3,a1
  c0:	81cf014f 	lb	t7,335(t6)
  c4:	24010001 	li	at,1
  c8:	00e02025 	move	a0,a3
  cc:	55e10008 	bnel	t7,at,f0 <func_8089F788+0x48>
  d0:	24e50810 	addiu	a1,a3,2064
  d4:	00a02025 	move	a0,a1
  d8:	24a50810 	addiu	a1,a1,2064
  dc:	0c000000 	jal	0 <BgMizuUzu_Init>
  e0:	8e06014c 	lw	a2,332(s0)
  e4:	10000005 	b	fc <func_8089F788+0x54>
  e8:	02002025 	move	a0,s0
  ec:	24e50810 	addiu	a1,a3,2064
  f0:	0c000000 	jal	0 <BgMizuUzu_Init>
  f4:	8e06014c 	lw	a2,332(s0)
  f8:	02002025 	move	a0,s0
  fc:	0c000000 	jal	0 <BgMizuUzu_Init>
 100:	240520cd 	li	a1,8397
 104:	861800b6 	lh	t8,182(s0)
 108:	271901c0 	addiu	t9,t8,448
 10c:	a61900b6 	sh	t9,182(s0)
 110:	8fbf001c 	lw	ra,28(sp)
 114:	8fb00018 	lw	s0,24(sp)
 118:	27bd0020 	addiu	sp,sp,32
 11c:	03e00008 	jr	ra
 120:	00000000 	nop

00000124 <BgMizuUzu_Update>:
 124:	27bdffe8 	addiu	sp,sp,-24
 128:	afbf0014 	sw	ra,20(sp)
 12c:	8c990164 	lw	t9,356(a0)
 130:	0320f809 	jalr	t9
 134:	00000000 	nop
 138:	8fbf0014 	lw	ra,20(sp)
 13c:	27bd0018 	addiu	sp,sp,24
 140:	03e00008 	jr	ra
 144:	00000000 	nop

00000148 <BgMizuUzu_Draw>:
 148:	afa40000 	sw	a0,0(sp)
 14c:	03e00008 	jr	ra
 150:	afa50004 	sw	a1,4(sp)
	...
