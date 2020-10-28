
build/src/overlays/actors/ovl_En_Anubice_Tag/z_en_anubice_tag.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnAnubiceTag_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	00803025 	move	a2,a0
   8:	afbf0014 	sw	ra,20(sp)
   c:	3c040000 	lui	a0,0x0
  10:	afa5001c 	sw	a1,28(sp)
  14:	24840000 	addiu	a0,a0,0
  18:	0c000000 	jal	0 <EnAnubiceTag_Init>
  1c:	afa60018 	sw	a2,24(sp)
  20:	8fa60018 	lw	a2,24(sp)
  24:	3c040000 	lui	a0,0x0
  28:	24840004 	addiu	a0,a0,4
  2c:	0c000000 	jal	0 <EnAnubiceTag_Init>
  30:	84c5001c 	lh	a1,28(a2)
  34:	8fa60018 	lw	a2,24(sp)
  38:	3c0e0000 	lui	t6,0x0
  3c:	25ce0000 	addiu	t6,t6,0
  40:	84c2001c 	lh	v0,28(a2)
  44:	2841ffff 	slti	at,v0,-1
  48:	10200003 	beqz	at,58 <EnAnubiceTag_Init+0x58>
  4c:	00000000 	nop
  50:	a4c0001c 	sh	zero,28(a2)
  54:	84c2001c 	lh	v0,28(a2)
  58:	50400008 	beqzl	v0,7c <EnAnubiceTag_Init+0x7c>
  5c:	acce014c 	sw	t6,332(a2)
  60:	44822000 	mtc1	v0,$f4
  64:	3c014220 	lui	at,0x4220
  68:	44814000 	mtc1	at,$f8
  6c:	468021a0 	cvt.s.w	$f6,$f4
  70:	46083282 	mul.s	$f10,$f6,$f8
  74:	e4ca0154 	swc1	$f10,340(a2)
  78:	acce014c 	sw	t6,332(a2)
  7c:	8fbf0014 	lw	ra,20(sp)
  80:	27bd0018 	addiu	sp,sp,24
  84:	03e00008 	jr	ra
  88:	00000000 	nop

0000008c <EnAnubiceTag_Destroy>:
  8c:	afa40000 	sw	a0,0(sp)
  90:	03e00008 	jr	ra
  94:	afa50004 	sw	a1,4(sp)

00000098 <EnAnubiceTag_SpawnAnubis>:
  98:	27bdffc8 	addiu	sp,sp,-56
  9c:	00a03025 	move	a2,a1
  a0:	00802825 	move	a1,a0
  a4:	afbf0034 	sw	ra,52(sp)
  a8:	afa40038 	sw	a0,56(sp)
  ac:	c4a40024 	lwc1	$f4,36(a1)
  b0:	24c41c24 	addiu	a0,a2,7204
  b4:	240700e0 	li	a3,224
  b8:	e7a40010 	swc1	$f4,16(sp)
  bc:	c4a60028 	lwc1	$f6,40(a1)
  c0:	e7a60014 	swc1	$f6,20(sp)
  c4:	c4a8002c 	lwc1	$f8,44(a1)
  c8:	afa0001c 	sw	zero,28(sp)
  cc:	e7a80018 	swc1	$f8,24(sp)
  d0:	84ae008a 	lh	t6,138(a1)
  d4:	afa50038 	sw	a1,56(sp)
  d8:	afa00028 	sw	zero,40(sp)
  dc:	afa00024 	sw	zero,36(sp)
  e0:	0c000000 	jal	0 <EnAnubiceTag_Init>
  e4:	afae0020 	sw	t6,32(sp)
  e8:	8fa50038 	lw	a1,56(sp)
  ec:	3c0f0000 	lui	t7,0x0
  f0:	10400003 	beqz	v0,100 <EnAnubiceTag_SpawnAnubis+0x68>
  f4:	aca20150 	sw	v0,336(a1)
  f8:	25ef0000 	addiu	t7,t7,0
  fc:	acaf014c 	sw	t7,332(a1)
 100:	8fbf0034 	lw	ra,52(sp)
 104:	27bd0038 	addiu	sp,sp,56
 108:	03e00008 	jr	ra
 10c:	00000000 	nop

00000110 <EnAnubiceTag_ManageAnubis>:
 110:	27bdffd0 	addiu	sp,sp,-48
 114:	afbf001c 	sw	ra,28(sp)
 118:	afb00018 	sw	s0,24(sp)
 11c:	afa50034 	sw	a1,52(sp)
 120:	8c830150 	lw	v1,336(a0)
 124:	00808025 	move	s0,a0
 128:	10600007 	beqz	v1,148 <EnAnubiceTag_ManageAnubis+0x38>
 12c:	00000000 	nop
 130:	8c6e0130 	lw	t6,304(v1)
 134:	00601025 	move	v0,v1
 138:	55c00008 	bnezl	t6,15c <EnAnubiceTag_ManageAnubis+0x4c>
 13c:	844f025a 	lh	t7,602(v0)
 140:	10000048 	b	264 <EnAnubiceTag_ManageAnubis+0x154>
 144:	8fbf001c 	lw	ra,28(sp)
 148:	0c000000 	jal	0 <EnAnubiceTag_Init>
 14c:	02002025 	move	a0,s0
 150:	10000044 	b	264 <EnAnubiceTag_ManageAnubis+0x154>
 154:	8fbf001c 	lw	ra,28(sp)
 158:	844f025a 	lh	t7,602(v0)
 15c:	3c014348 	lui	at,0x4348
 160:	51e00006 	beqzl	t7,17c <EnAnubiceTag_ManageAnubis+0x6c>
 164:	44813000 	mtc1	at,$f6
 168:	0c000000 	jal	0 <EnAnubiceTag_Init>
 16c:	02002025 	move	a0,s0
 170:	1000003c 	b	264 <EnAnubiceTag_ManageAnubis+0x154>
 174:	8fbf001c 	lw	ra,28(sp)
 178:	44813000 	mtc1	at,$f6
 17c:	c6080154 	lwc1	$f8,340(s0)
 180:	c6040090 	lwc1	$f4,144(s0)
 184:	46083280 	add.s	$f10,$f6,$f8
 188:	460a203c 	c.lt.s	$f4,$f10
 18c:	00000000 	nop
 190:	4502002f 	bc1fl	250 <EnAnubiceTag_ManageAnubis+0x140>
 194:	8449025e 	lh	t1,606(v0)
 198:	84580260 	lh	t8,608(v0)
 19c:	57000031 	bnezl	t8,264 <EnAnubiceTag_ManageAnubis+0x154>
 1a0:	8fbf001c 	lw	ra,28(sp)
 1a4:	84590262 	lh	t9,610(v0)
 1a8:	24080001 	li	t0,1
 1ac:	5720002d 	bnezl	t9,264 <EnAnubiceTag_ManageAnubis+0x154>
 1b0:	8fbf001c 	lw	ra,28(sp)
 1b4:	a448025e 	sh	t0,606(v0)
 1b8:	8604008a 	lh	a0,138(s0)
 1bc:	0c000000 	jal	0 <EnAnubiceTag_Init>
 1c0:	afa2002c 	sw	v0,44(sp)
 1c4:	c6120090 	lwc1	$f18,144(s0)
 1c8:	46000407 	neg.s	$f16,$f0
 1cc:	46128182 	mul.s	$f6,$f16,$f18
 1d0:	e7a60020 	swc1	$f6,32(sp)
 1d4:	0c000000 	jal	0 <EnAnubiceTag_Init>
 1d8:	8604008a 	lh	a0,138(s0)
 1dc:	c6040090 	lwc1	$f4,144(s0)
 1e0:	46000207 	neg.s	$f8,$f0
 1e4:	c7b20020 	lwc1	$f18,32(sp)
 1e8:	46044282 	mul.s	$f10,$f8,$f4
 1ec:	8fa2002c 	lw	v0,44(sp)
 1f0:	3c063e99 	lui	a2,0x3e99
 1f4:	34c6999a 	ori	a2,a2,0x999a
 1f8:	3c074120 	lui	a3,0x4120
 1fc:	24440024 	addiu	a0,v0,36
 200:	e7aa0028 	swc1	$f10,40(sp)
 204:	c6100024 	lwc1	$f16,36(s0)
 208:	46128180 	add.s	$f6,$f16,$f18
 20c:	44053000 	mfc1	a1,$f6
 210:	0c000000 	jal	0 <EnAnubiceTag_Init>
 214:	00000000 	nop
 218:	c608002c 	lwc1	$f8,44(s0)
 21c:	c7a40028 	lwc1	$f4,40(sp)
 220:	8fa2002c 	lw	v0,44(sp)
 224:	3c063e99 	lui	a2,0x3e99
 228:	46044280 	add.s	$f10,$f8,$f4
 22c:	34c6999a 	ori	a2,a2,0x999a
 230:	3c074120 	lui	a3,0x4120
 234:	2444002c 	addiu	a0,v0,44
 238:	44055000 	mfc1	a1,$f10
 23c:	0c000000 	jal	0 <EnAnubiceTag_Init>
 240:	00000000 	nop
 244:	10000007 	b	264 <EnAnubiceTag_ManageAnubis+0x154>
 248:	8fbf001c 	lw	ra,28(sp)
 24c:	8449025e 	lh	t1,606(v0)
 250:	240a0001 	li	t2,1
 254:	51200003 	beqzl	t1,264 <EnAnubiceTag_ManageAnubis+0x154>
 258:	8fbf001c 	lw	ra,28(sp)
 25c:	a44a0260 	sh	t2,608(v0)
 260:	8fbf001c 	lw	ra,28(sp)
 264:	8fb00018 	lw	s0,24(sp)
 268:	27bd0030 	addiu	sp,sp,48
 26c:	03e00008 	jr	ra
 270:	00000000 	nop

00000274 <EnAnubiceTag_Update>:
 274:	27bdffe8 	addiu	sp,sp,-24
 278:	afbf0014 	sw	ra,20(sp)
 27c:	8c99014c 	lw	t9,332(a0)
 280:	0320f809 	jalr	t9
 284:	00000000 	nop
 288:	8fbf0014 	lw	ra,20(sp)
 28c:	27bd0018 	addiu	sp,sp,24
 290:	03e00008 	jr	ra
 294:	00000000 	nop

00000298 <EnAnubiceTag_Draw>:
 298:	3c0e0000 	lui	t6,0x0
 29c:	8dce0000 	lw	t6,0(t6)
 2a0:	27bdffb8 	addiu	sp,sp,-72
 2a4:	afbf0044 	sw	ra,68(sp)
 2a8:	85cf12d4 	lh	t7,4820(t6)
 2ac:	3c013f80 	lui	at,0x3f80
 2b0:	240800ff 	li	t0,255
 2b4:	11e00016 	beqz	t7,310 <EnAnubiceTag_Draw+0x78>
 2b8:	240900ff 	li	t1,255
 2bc:	84980032 	lh	t8,50(a0)
 2c0:	c48c0024 	lwc1	$f12,36(a0)
 2c4:	c48e0028 	lwc1	$f14,40(a0)
 2c8:	8c86002c 	lw	a2,44(a0)
 2cc:	84870030 	lh	a3,48(a0)
 2d0:	afb80010 	sw	t8,16(sp)
 2d4:	84990034 	lh	t9,52(a0)
 2d8:	44810000 	mtc1	at,$f0
 2dc:	240a0004 	li	t2,4
 2e0:	afaa0034 	sw	t2,52(sp)
 2e4:	afa90030 	sw	t1,48(sp)
 2e8:	afa0002c 	sw	zero,44(sp)
 2ec:	afa00028 	sw	zero,40(sp)
 2f0:	afa80024 	sw	t0,36(sp)
 2f4:	afb90014 	sw	t9,20(sp)
 2f8:	e7a00018 	swc1	$f0,24(sp)
 2fc:	e7a0001c 	swc1	$f0,28(sp)
 300:	e7a00020 	swc1	$f0,32(sp)
 304:	8cab0000 	lw	t3,0(a1)
 308:	0c000000 	jal	0 <EnAnubiceTag_Init>
 30c:	afab0038 	sw	t3,56(sp)
 310:	8fbf0044 	lw	ra,68(sp)
 314:	27bd0048 	addiu	sp,sp,72
 318:	03e00008 	jr	ra
 31c:	00000000 	nop
