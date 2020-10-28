
build/src/code/listalloc.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ListAlloc_Init>:
   0:	ac800000 	sw	zero,0(a0)
   4:	ac800004 	sw	zero,4(a0)
   8:	03e00008 	jr	ra
   c:	00801025 	move	v0,a0

00000010 <ListAlloc_Alloc>:
  10:	27bdffe8 	addiu	sp,sp,-24
  14:	00803825 	move	a3,a0
  18:	afa5001c 	sw	a1,28(sp)
  1c:	24a40008 	addiu	a0,a1,8
  20:	afbf0014 	sw	ra,20(sp)
  24:	3c050000 	lui	a1,0x0
  28:	24a50000 	addiu	a1,a1,0
  2c:	afa70018 	sw	a3,24(sp)
  30:	0c000000 	jal	0 <ListAlloc_Init>
  34:	24060028 	li	a2,40
  38:	8fa70018 	lw	a3,24(sp)
  3c:	14400003 	bnez	v0,4c <ListAlloc_Alloc+0x3c>
  40:	00402025 	move	a0,v0
  44:	1000000d 	b	7c <ListAlloc_Alloc+0x6c>
  48:	00001025 	move	v0,zero
  4c:	8ce30004 	lw	v1,4(a3)
  50:	50600003 	beqzl	v1,60 <ListAlloc_Alloc+0x50>
  54:	ac430000 	sw	v1,0(v0)
  58:	ac620004 	sw	v0,4(v1)
  5c:	ac430000 	sw	v1,0(v0)
  60:	ac400004 	sw	zero,4(v0)
  64:	8cee0000 	lw	t6,0(a3)
  68:	ace20004 	sw	v0,4(a3)
  6c:	55c00003 	bnezl	t6,7c <ListAlloc_Alloc+0x6c>
  70:	24820008 	addiu	v0,a0,8
  74:	ace20000 	sw	v0,0(a3)
  78:	24820008 	addiu	v0,a0,8
  7c:	8fbf0014 	lw	ra,20(sp)
  80:	27bd0018 	addiu	sp,sp,24
  84:	03e00008 	jr	ra
  88:	00000000 	nop

0000008c <ListAlloc_Free>:
  8c:	27bdffe8 	addiu	sp,sp,-24
  90:	afbf0014 	sw	ra,20(sp)
  94:	8caefff8 	lw	t6,-8(a1)
  98:	00803025 	move	a2,a0
  9c:	24a4fff8 	addiu	a0,a1,-8
  a0:	51c00005 	beqzl	t6,b8 <ListAlloc_Free+0x2c>
  a4:	24a4fff8 	addiu	a0,a1,-8
  a8:	8c8f0004 	lw	t7,4(a0)
  ac:	8c980000 	lw	t8,0(a0)
  b0:	af0f0004 	sw	t7,4(t8)
  b4:	24a4fff8 	addiu	a0,a1,-8
  b8:	8c820004 	lw	v0,4(a0)
  bc:	3c050000 	lui	a1,0x0
  c0:	24a50010 	addiu	a1,a1,16
  c4:	50400004 	beqzl	v0,d8 <ListAlloc_Free+0x4c>
  c8:	8cc80000 	lw	t0,0(a2)
  cc:	8c990000 	lw	t9,0(a0)
  d0:	ac590000 	sw	t9,0(v0)
  d4:	8cc80000 	lw	t0,0(a2)
  d8:	54880004 	bnel	a0,t0,ec <ListAlloc_Free+0x60>
  dc:	8cca0004 	lw	t2,4(a2)
  e0:	8c890004 	lw	t1,4(a0)
  e4:	acc90000 	sw	t1,0(a2)
  e8:	8cca0004 	lw	t2,4(a2)
  ec:	148a0003 	bne	a0,t2,fc <ListAlloc_Free+0x70>
  f0:	00000000 	nop
  f4:	8c8b0000 	lw	t3,0(a0)
  f8:	accb0004 	sw	t3,4(a2)
  fc:	0c000000 	jal	0 <ListAlloc_Init>
 100:	24060048 	li	a2,72
 104:	8fbf0014 	lw	ra,20(sp)
 108:	27bd0018 	addiu	sp,sp,24
 10c:	03e00008 	jr	ra
 110:	00000000 	nop

00000114 <ListAlloc_FreeAll>:
 114:	27bdffe0 	addiu	sp,sp,-32
 118:	afbf001c 	sw	ra,28(sp)
 11c:	afb10018 	sw	s1,24(sp)
 120:	afb00014 	sw	s0,20(sp)
 124:	8c900000 	lw	s0,0(a0)
 128:	00808825 	move	s1,a0
 12c:	12000006 	beqz	s0,148 <ListAlloc_FreeAll+0x34>
 130:	02202025 	move	a0,s1
 134:	0c000000 	jal	0 <ListAlloc_Init>
 138:	26050008 	addiu	a1,s0,8
 13c:	8e300000 	lw	s0,0(s1)
 140:	5600fffc 	bnezl	s0,134 <ListAlloc_FreeAll+0x20>
 144:	02202025 	move	a0,s1
 148:	8fbf001c 	lw	ra,28(sp)
 14c:	8fb00014 	lw	s0,20(sp)
 150:	8fb10018 	lw	s1,24(sp)
 154:	03e00008 	jr	ra
 158:	27bd0020 	addiu	sp,sp,32
 15c:	00000000 	nop
