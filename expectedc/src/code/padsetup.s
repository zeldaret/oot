
build/src/code/padsetup.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <PadSetup_Init>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa40020 	sw	a0,32(sp)
  10:	240e00ff 	li	t6,255
  14:	a0ae0000 	sb	t6,0(a1)
  18:	00c08025 	move	s0,a2
  1c:	afa50024 	sw	a1,36(sp)
  20:	0c000000 	jal	0 <PadSetup_Init>
  24:	8fa40020 	lw	a0,32(sp)
  28:	10400003 	beqz	v0,38 <PadSetup_Init+0x38>
  2c:	8fa70024 	lw	a3,36(sp)
  30:	1000003e 	b	12c <PadSetup_Init+0x12c>
  34:	8fbf001c 	lw	ra,28(sp)
  38:	90ef0000 	lbu	t7,0(a3)
  3c:	240100ff 	li	at,255
  40:	8fa40020 	lw	a0,32(sp)
  44:	55e10038 	bnel	t7,at,128 <PadSetup_Init+0x128>
  48:	00001025 	move	v0,zero
  4c:	0c000000 	jal	0 <PadSetup_Init>
  50:	afa70024 	sw	a3,36(sp)
  54:	10400003 	beqz	v0,64 <PadSetup_Init+0x64>
  58:	8fa70024 	lw	a3,36(sp)
  5c:	10000032 	b	128 <PadSetup_Init+0x128>
  60:	24020001 	li	v0,1
  64:	8fa40020 	lw	a0,32(sp)
  68:	00002825 	move	a1,zero
  6c:	24060001 	li	a2,1
  70:	0c000000 	jal	0 <PadSetup_Init>
  74:	afa70024 	sw	a3,36(sp)
  78:	0c000000 	jal	0 <PadSetup_Init>
  7c:	02002025 	move	a0,s0
  80:	8fa70024 	lw	a3,36(sp)
  84:	02001025 	move	v0,s0
  88:	24030005 	li	v1,5
  8c:	a0e00000 	sb	zero,0(a3)
  90:	92180003 	lbu	t8,3(s0)
  94:	17000008 	bnez	t8,b8 <PadSetup_Init+0xb8>
  98:	00000000 	nop
  9c:	96190000 	lhu	t9,0(s0)
  a0:	24030005 	li	v1,5
  a4:	34090001 	li	t1,0x1
  a8:	54790004 	bnel	v1,t9,bc <PadSetup_Init+0xbc>
  ac:	904a0007 	lbu	t2,7(v0)
  b0:	10000001 	b	b8 <PadSetup_Init+0xb8>
  b4:	a0e90000 	sb	t1,0(a3)
  b8:	904a0007 	lbu	t2,7(v0)
  bc:	55400008 	bnezl	t2,e0 <PadSetup_Init+0xe0>
  c0:	904e000b 	lbu	t6,11(v0)
  c4:	944b0004 	lhu	t3,4(v0)
  c8:	546b0005 	bnel	v1,t3,e0 <PadSetup_Init+0xe0>
  cc:	904e000b 	lbu	t6,11(v0)
  d0:	90ec0000 	lbu	t4,0(a3)
  d4:	358d0002 	ori	t5,t4,0x2
  d8:	a0ed0000 	sb	t5,0(a3)
  dc:	904e000b 	lbu	t6,11(v0)
  e0:	55c00008 	bnezl	t6,104 <PadSetup_Init+0x104>
  e4:	9048000f 	lbu	t0,15(v0)
  e8:	944f0008 	lhu	t7,8(v0)
  ec:	546f0005 	bnel	v1,t7,104 <PadSetup_Init+0x104>
  f0:	9048000f 	lbu	t0,15(v0)
  f4:	90f80000 	lbu	t8,0(a3)
  f8:	37190004 	ori	t9,t8,0x4
  fc:	a0f90000 	sb	t9,0(a3)
 100:	9048000f 	lbu	t0,15(v0)
 104:	55000008 	bnezl	t0,128 <PadSetup_Init+0x128>
 108:	00001025 	move	v0,zero
 10c:	9449000c 	lhu	t1,12(v0)
 110:	54690005 	bnel	v1,t1,128 <PadSetup_Init+0x128>
 114:	00001025 	move	v0,zero
 118:	90ea0000 	lbu	t2,0(a3)
 11c:	354b0008 	ori	t3,t2,0x8
 120:	a0eb0000 	sb	t3,0(a3)
 124:	00001025 	move	v0,zero
 128:	8fbf001c 	lw	ra,28(sp)
 12c:	8fb00018 	lw	s0,24(sp)
 130:	27bd0020 	addiu	sp,sp,32
 134:	03e00008 	jr	ra
 138:	00000000 	nop
 13c:	00000000 	nop
