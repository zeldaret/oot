
build/src/libultra_boot_O2/sprintf.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <proutSprintf>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	0c000000 	jal	0 <proutSprintf>
   c:	afa60020 	sw	a2,32(sp)
  10:	8fbf0014 	lw	ra,20(sp)
  14:	8fae0020 	lw	t6,32(sp)
  18:	27bd0018 	addiu	sp,sp,24
  1c:	03e00008 	jr	ra
  20:	004e1021 	addu	v0,v0,t6

00000024 <vsprintf>:
  24:	27bdffe8 	addiu	sp,sp,-24
  28:	afa40018 	sw	a0,24(sp)
  2c:	00c03825 	move	a3,a2
  30:	00a03025 	move	a2,a1
  34:	afbf0014 	sw	ra,20(sp)
  38:	afa5001c 	sw	a1,28(sp)
  3c:	3c040000 	lui	a0,0x0
  40:	24840000 	addiu	a0,a0,0
  44:	0c000000 	jal	0 <proutSprintf>
  48:	8fa50018 	lw	a1,24(sp)
  4c:	04400004 	bltz	v0,60 <vsprintf+0x3c>
  50:	00401825 	move	v1,v0
  54:	8fae0018 	lw	t6,24(sp)
  58:	01c27821 	addu	t7,t6,v0
  5c:	a1e00000 	sb	zero,0(t7)
  60:	8fbf0014 	lw	ra,20(sp)
  64:	27bd0018 	addiu	sp,sp,24
  68:	00601025 	move	v0,v1
  6c:	03e00008 	jr	ra
  70:	00000000 	nop

00000074 <sprintf>:
  74:	27bdffe0 	addiu	sp,sp,-32
  78:	afa40020 	sw	a0,32(sp)
  7c:	afbf0014 	sw	ra,20(sp)
  80:	afa50024 	sw	a1,36(sp)
  84:	afa60028 	sw	a2,40(sp)
  88:	afa7002c 	sw	a3,44(sp)
  8c:	3c040000 	lui	a0,0x0
  90:	24840000 	addiu	a0,a0,0
  94:	27a70028 	addiu	a3,sp,40
  98:	8fa60024 	lw	a2,36(sp)
  9c:	0c000000 	jal	0 <proutSprintf>
  a0:	8fa50020 	lw	a1,32(sp)
  a4:	04400004 	bltz	v0,b8 <sprintf+0x44>
  a8:	00401825 	move	v1,v0
  ac:	8fae0020 	lw	t6,32(sp)
  b0:	01c27821 	addu	t7,t6,v0
  b4:	a1e00000 	sb	zero,0(t7)
  b8:	8fbf0014 	lw	ra,20(sp)
  bc:	27bd0020 	addiu	sp,sp,32
  c0:	00601025 	move	v0,v1
  c4:	03e00008 	jr	ra
  c8:	00000000 	nop
  cc:	00000000 	nop
