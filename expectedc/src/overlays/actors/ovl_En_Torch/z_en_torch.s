
build/src/overlays/actors/ovl_En_Torch/z_en_torch.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnTorch_Init>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	3c020000 	lui	v0,0x0
   8:	80421397 	lb	v0,5015(v0)
   c:	afb00030 	sw	s0,48(sp)
  10:	00808025 	move	s0,a0
  14:	afbf0034 	sw	ra,52(sp)
  18:	c6040028 	lwc1	$f4,40(s0)
  1c:	00027943 	sra	t7,v0,0x5
  20:	31f80007 	andi	t8,t7,0x7
  24:	8e070024 	lw	a3,36(s0)
  28:	3c190000 	lui	t9,0x0
  2c:	0338c821 	addu	t9,t9,t8
  30:	e7a40010 	swc1	$f4,16(sp)
  34:	c606002c 	lwc1	$f6,44(s0)
  38:	93390020 	lbu	t9,32(t9)
  3c:	afa00018 	sw	zero,24(sp)
  40:	e7a60014 	swc1	$f6,20(sp)
  44:	00194140 	sll	t0,t9,0x5
  48:	860e00b6 	lh	t6,182(s0)
  4c:	35095000 	ori	t1,t0,0x5000
  50:	304a001f 	andi	t2,v0,0x1f
  54:	012a5825 	or	t3,t1,t2
  58:	afab0024 	sw	t3,36(sp)
  5c:	afa00020 	sw	zero,32(sp)
  60:	24a41c24 	addiu	a0,a1,7204
  64:	2406000a 	li	a2,10
  68:	0c000000 	jal	0 <EnTorch_Init>
  6c:	afae001c 	sw	t6,28(sp)
  70:	0c000000 	jal	0 <EnTorch_Init>
  74:	02002025 	move	a0,s0
  78:	8fbf0034 	lw	ra,52(sp)
  7c:	8fb00030 	lw	s0,48(sp)
  80:	27bd0038 	addiu	sp,sp,56
  84:	03e00008 	jr	ra
  88:	00000000 	nop
  8c:	00000000 	nop
