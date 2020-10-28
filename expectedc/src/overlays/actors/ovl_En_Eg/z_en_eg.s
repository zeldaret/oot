
build/src/overlays/actors/ovl_En_Eg/z_en_eg.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnEg_PlayVoidOutSFX>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	0c000000 	jal	0 <EnEg_PlayVoidOutSFX>
   c:	24045801 	li	a0,22529
  10:	8fbf0014 	lw	ra,20(sp)
  14:	27bd0018 	addiu	sp,sp,24
  18:	03e00008 	jr	ra
  1c:	00000000 	nop

00000020 <EnEg_Destroy>:
  20:	afa40000 	sw	a0,0(sp)
  24:	03e00008 	jr	ra
  28:	afa50004 	sw	a1,4(sp)

0000002c <EnEg_Init>:
  2c:	afa50004 	sw	a1,4(sp)
  30:	03e00008 	jr	ra
  34:	ac80014c 	sw	zero,332(a0)

00000038 <func_809FFDC8>:
  38:	3c0e0000 	lui	t6,0x0
  3c:	8dce0000 	lw	t6,0(t6)
  40:	27bdffe8 	addiu	sp,sp,-24
  44:	afbf0014 	sw	ra,20(sp)
  48:	afa40018 	sw	a0,24(sp)
  4c:	15c0001f 	bnez	t6,cc <func_809FFDC8+0x94>
  50:	afa5001c 	sw	a1,28(sp)
  54:	3c0f0000 	lui	t7,0x0
  58:	85ef13d4 	lh	t7,5076(t7)
  5c:	00a02025 	move	a0,a1
  60:	5de0001b 	bgtzl	t7,d0 <func_809FFDC8+0x98>
  64:	8fbf0014 	lw	ra,20(sp)
  68:	0c000000 	jal	0 <EnEg_PlayVoidOutSFX>
  6c:	24050036 	li	a1,54
  70:	10400016 	beqz	v0,cc <func_809FFDC8+0x94>
  74:	3c180000 	lui	t8,0x0
  78:	8f180000 	lw	t8,0(t8)
  7c:	87191454 	lh	t9,5204(t8)
  80:	57200013 	bnezl	t9,d0 <func_809FFDC8+0x98>
  84:	8fbf0014 	lw	ra,20(sp)
  88:	0c000000 	jal	0 <EnEg_PlayVoidOutSFX>
  8c:	8fa4001c 	lw	a0,28(sp)
  90:	2408fffe 	li	t0,-2
  94:	3c010000 	lui	at,0x0
  98:	3c041000 	lui	a0,0x1000
  9c:	ac281364 	sw	t0,4964(at)
  a0:	0c000000 	jal	0 <EnEg_PlayVoidOutSFX>
  a4:	348400ff 	ori	a0,a0,0xff
  a8:	8faa001c 	lw	t2,28(sp)
  ac:	3c010001 	lui	at,0x1
  b0:	24090002 	li	t1,2
  b4:	002a0821 	addu	at,at,t2
  b8:	0c000000 	jal	0 <EnEg_PlayVoidOutSFX>
  bc:	a0291e5e 	sb	t1,7774(at)
  c0:	240b0001 	li	t3,1
  c4:	3c010000 	lui	at,0x0
  c8:	ac2b0000 	sw	t3,0(at)
  cc:	8fbf0014 	lw	ra,20(sp)
  d0:	27bd0018 	addiu	sp,sp,24
  d4:	03e00008 	jr	ra
  d8:	00000000 	nop

000000dc <EnEg_Update>:
  dc:	27bdffe8 	addiu	sp,sp,-24
  e0:	afbf0014 	sw	ra,20(sp)
  e4:	8c82014c 	lw	v0,332(a0)
  e8:	04400008 	bltz	v0,10c <EnEg_Update+0x30>
  ec:	00000000 	nop
  f0:	1c400006 	bgtz	v0,10c <EnEg_Update+0x30>
  f4:	00027080 	sll	t6,v0,0x2
  f8:	3c030000 	lui	v1,0x0
  fc:	006e1821 	addu	v1,v1,t6
 100:	8c630004 	lw	v1,4(v1)
 104:	14600006 	bnez	v1,120 <EnEg_Update+0x44>
 108:	00000000 	nop
 10c:	3c040000 	lui	a0,0x0
 110:	0c000000 	jal	0 <EnEg_PlayVoidOutSFX>
 114:	24840000 	addiu	a0,a0,0
 118:	10000004 	b	12c <EnEg_Update+0x50>
 11c:	8fbf0014 	lw	ra,20(sp)
 120:	0060f809 	jalr	v1
 124:	00000000 	nop
 128:	8fbf0014 	lw	ra,20(sp)
 12c:	27bd0018 	addiu	sp,sp,24
 130:	03e00008 	jr	ra
 134:	00000000 	nop

00000138 <EnEg_Draw>:
 138:	afa40000 	sw	a0,0(sp)
 13c:	03e00008 	jr	ra
 140:	afa50004 	sw	a1,4(sp)
	...
