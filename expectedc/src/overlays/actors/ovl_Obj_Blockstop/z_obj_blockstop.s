
build/src/overlays/actors/ovl_Obj_Blockstop/z_obj_blockstop.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ObjBlockstop_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	00803025 	move	a2,a0
   8:	afbf0014 	sw	ra,20(sp)
   c:	00a02025 	move	a0,a1
  10:	84c5001c 	lh	a1,28(a2)
  14:	0c000000 	jal	0 <ObjBlockstop_Init>
  18:	afa60018 	sw	a2,24(sp)
  1c:	10400005 	beqz	v0,34 <ObjBlockstop_Init+0x34>
  20:	8fa60018 	lw	a2,24(sp)
  24:	0c000000 	jal	0 <ObjBlockstop_Init>
  28:	00c02025 	move	a0,a2
  2c:	10000007 	b	4c <ObjBlockstop_Init+0x4c>
  30:	8fbf0014 	lw	ra,20(sp)
  34:	3c013f80 	lui	at,0x3f80
  38:	44813000 	mtc1	at,$f6
  3c:	c4c40028 	lwc1	$f4,40(a2)
  40:	46062200 	add.s	$f8,$f4,$f6
  44:	e4c80028 	swc1	$f8,40(a2)
  48:	8fbf0014 	lw	ra,20(sp)
  4c:	27bd0018 	addiu	sp,sp,24
  50:	03e00008 	jr	ra
  54:	00000000 	nop

00000058 <ObjBlockstop_Destroy>:
  58:	afa40000 	sw	a0,0(sp)
  5c:	03e00008 	jr	ra
  60:	afa50004 	sw	a1,4(sp)

00000064 <ObjBlockstop_Update>:
  64:	27bdffa0 	addiu	sp,sp,-96
  68:	afb00038 	sw	s0,56(sp)
  6c:	00808025 	move	s0,a0
  70:	afbf003c 	sw	ra,60(sp)
  74:	afa50064 	sw	a1,100(sp)
  78:	260e0078 	addiu	t6,s0,120
  7c:	24a407c0 	addiu	a0,a1,1984
  80:	27b90048 	addiu	t9,sp,72
  84:	240f0001 	li	t7,1
  88:	24180001 	li	t8,1
  8c:	afb80020 	sw	t8,32(sp)
  90:	afaf001c 	sw	t7,28(sp)
  94:	afb90024 	sw	t9,36(sp)
  98:	afa40040 	sw	a0,64(sp)
  9c:	26050008 	addiu	a1,s0,8
  a0:	afae0010 	sw	t6,16(sp)
  a4:	26060024 	addiu	a2,s0,36
  a8:	afb00028 	sw	s0,40(sp)
  ac:	27a7004c 	addiu	a3,sp,76
  b0:	afa00014 	sw	zero,20(sp)
  b4:	0c000000 	jal	0 <ObjBlockstop_Init>
  b8:	afa00018 	sw	zero,24(sp)
  bc:	1040001b 	beqz	v0,12c <ObjBlockstop_Update+0xc8>
  c0:	8fa40040 	lw	a0,64(sp)
  c4:	0c000000 	jal	0 <ObjBlockstop_Init>
  c8:	8fa50048 	lw	a1,72(sp)
  cc:	50400018 	beqzl	v0,130 <ObjBlockstop_Update+0xcc>
  d0:	8fbf003c 	lw	ra,60(sp)
  d4:	84480000 	lh	t0,0(v0)
  d8:	240100ff 	li	at,255
  dc:	55010014 	bnel	t0,at,130 <ObjBlockstop_Update+0xcc>
  e0:	8fbf003c 	lw	ra,60(sp)
  e4:	8443001c 	lh	v1,28(v0)
  e8:	24010003 	li	at,3
  ec:	3063000f 	andi	v1,v1,0xf
  f0:	10610003 	beq	v1,at,100 <ObjBlockstop_Update+0x9c>
  f4:	24010007 	li	at,7
  f8:	14610005 	bne	v1,at,110 <ObjBlockstop_Update+0xac>
  fc:	00000000 	nop
 100:	0c000000 	jal	0 <ObjBlockstop_Init>
 104:	24044802 	li	a0,18434
 108:	10000004 	b	11c <ObjBlockstop_Update+0xb8>
 10c:	8fa40064 	lw	a0,100(sp)
 110:	0c000000 	jal	0 <ObjBlockstop_Init>
 114:	24044807 	li	a0,18439
 118:	8fa40064 	lw	a0,100(sp)
 11c:	0c000000 	jal	0 <ObjBlockstop_Init>
 120:	8605001c 	lh	a1,28(s0)
 124:	0c000000 	jal	0 <ObjBlockstop_Init>
 128:	02002025 	move	a0,s0
 12c:	8fbf003c 	lw	ra,60(sp)
 130:	8fb00038 	lw	s0,56(sp)
 134:	27bd0060 	addiu	sp,sp,96
 138:	03e00008 	jr	ra
 13c:	00000000 	nop
