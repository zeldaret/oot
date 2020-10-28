
build/src/code/z_camera.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800437F0>:
       0:	46007005 	abs.s	$f0,$f14
       4:	3c013f80 	lui	at,0x3f80
       8:	4600603c 	c.lt.s	$f12,$f0
       c:	00000000 	nop
      10:	45020006 	bc1fl	2c <func_800437F0+0x2c>
      14:	44812000 	mtc1	at,$f4
      18:	3c013f80 	lui	at,0x3f80
      1c:	44811000 	mtc1	at,$f2
      20:	03e00008 	jr	ra
      24:	46001006 	mov.s	$f0,$f2
      28:	44812000 	mtc1	at,$f4
      2c:	3c010000 	lui	at,0x0
      30:	c4260d30 	lwc1	$f6,3376(at)
      34:	3c010000 	lui	at,0x0
      38:	46062401 	sub.s	$f16,$f4,$f6
      3c:	46106482 	mul.s	$f18,$f12,$f16
      40:	4612003c 	c.lt.s	$f0,$f18
      44:	00000000 	nop
      48:	45000009 	bc1f	70 <func_800437F0+0x70>
      4c:	00000000 	nop
      50:	460e7202 	mul.s	$f8,$f14,$f14
      54:	00000000 	nop
      58:	46104282 	mul.s	$f10,$f8,$f16
      5c:	00000000 	nop
      60:	46129102 	mul.s	$f4,$f18,$f18
      64:	46045083 	div.s	$f2,$f10,$f4
      68:	03e00008 	jr	ra
      6c:	46001006 	mov.s	$f0,$f2
      70:	c4260d34 	lwc1	$f6,3380(at)
      74:	46006401 	sub.s	$f16,$f12,$f0
      78:	3c010000 	lui	at,0x0
      7c:	460c3382 	mul.s	$f14,$f6,$f12
      80:	c42a0d38 	lwc1	$f10,3384(at)
      84:	3c013f80 	lui	at,0x3f80
      88:	46108202 	mul.s	$f8,$f16,$f16
      8c:	00000000 	nop
      90:	460a4102 	mul.s	$f4,$f8,$f10
      94:	44815000 	mtc1	at,$f10
      98:	460e7182 	mul.s	$f6,$f14,$f14
      9c:	46062203 	div.s	$f8,$f4,$f6
      a0:	46085081 	sub.s	$f2,$f10,$f8
      a4:	03e00008 	jr	ra
      a8:	46001006 	mov.s	$f0,$f2

000000ac <func_8004389C>:
      ac:	460e6081 	sub.s	$f2,$f12,$f14
      b0:	afa7000c 	sw	a3,12(sp)
      b4:	c7a4000c 	lwc1	$f4,12(sp)
      b8:	afa60008 	sw	a2,8(sp)
      bc:	46001005 	abs.s	$f0,$f2
      c0:	c7a60008 	lwc1	$f6,8(sp)
      c4:	4600203e 	c.le.s	$f4,$f0
      c8:	00000000 	nop
      cc:	45020005 	bc1fl	e4 <func_8004389C+0x38>
      d0:	46006406 	mov.s	$f16,$f12
      d4:	46061202 	mul.s	$f8,$f2,$f6
      d8:	03e00008 	jr	ra
      dc:	46087000 	add.s	$f0,$f14,$f8
      e0:	46006406 	mov.s	$f16,$f12
      e4:	03e00008 	jr	ra
      e8:	46008006 	mov.s	$f0,$f16

000000ec <func_800438DC>:
      ec:	460e6081 	sub.s	$f2,$f12,$f14
      f0:	afa7000c 	sw	a3,12(sp)
      f4:	c7a4000c 	lwc1	$f4,12(sp)
      f8:	afa60008 	sw	a2,8(sp)
      fc:	46001005 	abs.s	$f0,$f2
     100:	c7a60008 	lwc1	$f6,8(sp)
     104:	4600203e 	c.le.s	$f4,$f0
     108:	00000000 	nop
     10c:	45020005 	bc1fl	124 <func_800438DC+0x38>
     110:	46007306 	mov.s	$f12,$f14
     114:	46061202 	mul.s	$f8,$f2,$f6
     118:	03e00008 	jr	ra
     11c:	46087000 	add.s	$f0,$f14,$f8
     120:	46007306 	mov.s	$f12,$f14
     124:	03e00008 	jr	ra
     128:	46006006 	mov.s	$f0,$f12

0000012c <func_8004391C>:
     12c:	afa40000 	sw	a0,0(sp)
     130:	afa50004 	sw	a1,4(sp)
     134:	00052c00 	sll	a1,a1,0x10
     138:	00042400 	sll	a0,a0,0x10
     13c:	00042403 	sra	a0,a0,0x10
     140:	00052c03 	sra	a1,a1,0x10
     144:	00851023 	subu	v0,a0,a1
     148:	afa7000c 	sw	a3,12(sp)
     14c:	00021400 	sll	v0,v0,0x10
     150:	00073c00 	sll	a3,a3,0x10
     154:	44866000 	mtc1	a2,$f12
     158:	00021403 	sra	v0,v0,0x10
     15c:	04400003 	bltz	v0,16c <func_8004391C+0x40>
     160:	00073c03 	sra	a3,a3,0x10
     164:	10000002 	b	170 <func_8004391C+0x44>
     168:	00401825 	move	v1,v0
     16c:	00021823 	negu	v1,v0
     170:	0067082a 	slt	at,v1,a3
     174:	1420000e 	bnez	at,1b0 <func_8004391C+0x84>
     178:	00801825 	move	v1,a0
     17c:	44822000 	mtc1	v0,$f4
     180:	3c013f00 	lui	at,0x3f00
     184:	44815000 	mtc1	at,$f10
     188:	468021a0 	cvt.s.w	$f6,$f4
     18c:	460c3202 	mul.s	$f8,$f6,$f12
     190:	460a4400 	add.s	$f16,$f8,$f10
     194:	4600848d 	trunc.w.s	$f18,$f16
     198:	44199000 	mfc1	t9,$f18
     19c:	00000000 	nop
     1a0:	00b91821 	addu	v1,a1,t9
     1a4:	00031400 	sll	v0,v1,0x10
     1a8:	03e00008 	jr	ra
     1ac:	00021403 	sra	v0,v0,0x10
     1b0:	00031400 	sll	v0,v1,0x10
     1b4:	03e00008 	jr	ra
     1b8:	00021403 	sra	v0,v0,0x10

000001bc <func_800439AC>:
     1bc:	afa40000 	sw	a0,0(sp)
     1c0:	afa50004 	sw	a1,4(sp)
     1c4:	00052c00 	sll	a1,a1,0x10
     1c8:	00042400 	sll	a0,a0,0x10
     1cc:	00042403 	sra	a0,a0,0x10
     1d0:	00052c03 	sra	a1,a1,0x10
     1d4:	00851023 	subu	v0,a0,a1
     1d8:	afa7000c 	sw	a3,12(sp)
     1dc:	00021400 	sll	v0,v0,0x10
     1e0:	00073c00 	sll	a3,a3,0x10
     1e4:	44866000 	mtc1	a2,$f12
     1e8:	00021403 	sra	v0,v0,0x10
     1ec:	04400003 	bltz	v0,1fc <func_800439AC+0x40>
     1f0:	00073c03 	sra	a3,a3,0x10
     1f4:	10000002 	b	200 <func_800439AC+0x44>
     1f8:	00401825 	move	v1,v0
     1fc:	00021823 	negu	v1,v0
     200:	0067082a 	slt	at,v1,a3
     204:	1420000e 	bnez	at,240 <func_800439AC+0x84>
     208:	00a01825 	move	v1,a1
     20c:	44822000 	mtc1	v0,$f4
     210:	3c013f00 	lui	at,0x3f00
     214:	44815000 	mtc1	at,$f10
     218:	468021a0 	cvt.s.w	$f6,$f4
     21c:	460c3202 	mul.s	$f8,$f6,$f12
     220:	460a4400 	add.s	$f16,$f8,$f10
     224:	4600848d 	trunc.w.s	$f18,$f16
     228:	44199000 	mfc1	t9,$f18
     22c:	00000000 	nop
     230:	00b91821 	addu	v1,a1,t9
     234:	00031400 	sll	v0,v1,0x10
     238:	03e00008 	jr	ra
     23c:	00021403 	sra	v0,v0,0x10
     240:	00031400 	sll	v0,v1,0x10
     244:	03e00008 	jr	ra
     248:	00021403 	sra	v0,v0,0x10

0000024c <func_80043A3C>:
     24c:	27bdffe0 	addiu	sp,sp,-32
     250:	afbf001c 	sw	ra,28(sp)
     254:	afb00018 	sw	s0,24(sp)
     258:	afa60028 	sw	a2,40(sp)
     25c:	afa7002c 	sw	a3,44(sp)
     260:	afa40020 	sw	a0,32(sp)
     264:	00e03025 	move	a2,a3
     268:	00a08025 	move	s0,a1
     26c:	8fa70030 	lw	a3,48(sp)
     270:	c4ae0000 	lwc1	$f14,0(a1)
     274:	0c000000 	jal	0 <func_800437F0>
     278:	c48c0000 	lwc1	$f12,0(a0)
     27c:	e6000000 	swc1	$f0,0(s0)
     280:	8faf0020 	lw	t7,32(sp)
     284:	8fa70030 	lw	a3,48(sp)
     288:	8fa60028 	lw	a2,40(sp)
     28c:	c60e0004 	lwc1	$f14,4(s0)
     290:	0c000000 	jal	0 <func_800437F0>
     294:	c5ec0004 	lwc1	$f12,4(t7)
     298:	e6000004 	swc1	$f0,4(s0)
     29c:	8fb80020 	lw	t8,32(sp)
     2a0:	8fa70030 	lw	a3,48(sp)
     2a4:	8fa6002c 	lw	a2,44(sp)
     2a8:	c60e0008 	lwc1	$f14,8(s0)
     2ac:	0c000000 	jal	0 <func_800437F0>
     2b0:	c70c0008 	lwc1	$f12,8(t8)
     2b4:	e6000008 	swc1	$f0,8(s0)
     2b8:	8fbf001c 	lw	ra,28(sp)
     2bc:	8fb00018 	lw	s0,24(sp)
     2c0:	27bd0020 	addiu	sp,sp,32
     2c4:	03e00008 	jr	ra
     2c8:	00000000 	nop

000002cc <func_80043ABC>:
     2cc:	3c010000 	lui	at,0x0
     2d0:	c4200d3c 	lwc1	$f0,3388(at)
     2d4:	3c0142c8 	lui	at,0x42c8
     2d8:	44812000 	mtc1	at,$f4
     2dc:	3c020000 	lui	v0,0x0
     2e0:	24420000 	addiu	v0,v0,0
     2e4:	e48400c8 	swc1	$f4,200(a0)
     2e8:	8c4e0000 	lw	t6,0(v0)
     2ec:	85cf01a2 	lh	t7,418(t6)
     2f0:	448f3000 	mtc1	t7,$f6
     2f4:	00000000 	nop
     2f8:	46803220 	cvt.s.w	$f8,$f6
     2fc:	e48800c4 	swc1	$f8,196(a0)
     300:	8c580000 	lw	t8,0(v0)
     304:	871901a0 	lh	t9,416(t8)
     308:	44995000 	mtc1	t9,$f10
     30c:	00000000 	nop
     310:	46805420 	cvt.s.w	$f16,$f10
     314:	e49000c0 	swc1	$f16,192(a0)
     318:	8c480000 	lw	t0,0(v0)
     31c:	85090198 	lh	t1,408(t0)
     320:	44899000 	mtc1	t1,$f18
     324:	00000000 	nop
     328:	46809120 	cvt.s.w	$f4,$f18
     32c:	46002182 	mul.s	$f6,$f4,$f0
     330:	e48600cc 	swc1	$f6,204(a0)
     334:	8c4a0000 	lw	t2,0(v0)
     338:	854b019a 	lh	t3,410(t2)
     33c:	448b4000 	mtc1	t3,$f8
     340:	00000000 	nop
     344:	468042a0 	cvt.s.w	$f10,$f8
     348:	46005402 	mul.s	$f16,$f10,$f0
     34c:	e49000d0 	swc1	$f16,208(a0)
     350:	8c4c0000 	lw	t4,0(v0)
     354:	858d019c 	lh	t5,412(t4)
     358:	448d9000 	mtc1	t5,$f18
     35c:	00000000 	nop
     360:	46809120 	cvt.s.w	$f4,$f18
     364:	46002182 	mul.s	$f6,$f4,$f0
     368:	03e00008 	jr	ra
     36c:	e48600d4 	swc1	$f6,212(a0)

00000370 <func_80043B60>:
     370:	3c020000 	lui	v0,0x0
     374:	24420000 	addiu	v0,v0,0
     378:	8c4e0000 	lw	t6,0(v0)
     37c:	3c010000 	lui	at,0x0
     380:	c4200d40 	lwc1	$f0,3392(at)
     384:	85cf01ca 	lh	t7,458(t6)
     388:	448f2000 	mtc1	t7,$f4
     38c:	00000000 	nop
     390:	468021a0 	cvt.s.w	$f6,$f4
     394:	e48600c0 	swc1	$f6,192(a0)
     398:	8c580000 	lw	t8,0(v0)
     39c:	871901ca 	lh	t9,458(t8)
     3a0:	44994000 	mtc1	t9,$f8
     3a4:	00000000 	nop
     3a8:	468042a0 	cvt.s.w	$f10,$f8
     3ac:	e48a00c8 	swc1	$f10,200(a0)
     3b0:	8c480000 	lw	t0,0(v0)
     3b4:	850901ca 	lh	t1,458(t0)
     3b8:	e48000cc 	swc1	$f0,204(a0)
     3bc:	e48000d0 	swc1	$f0,208(a0)
     3c0:	44898000 	mtc1	t1,$f16
     3c4:	e48000d4 	swc1	$f0,212(a0)
     3c8:	468084a0 	cvt.s.w	$f18,$f16
     3cc:	03e00008 	jr	ra
     3d0:	e49200c4 	swc1	$f18,196(a0)

000003d4 <func_80043BC4>:
     3d4:	84ae0000 	lh	t6,0(a1)
     3d8:	27bdfff0 	addiu	sp,sp,-16
     3dc:	27b90004 	addiu	t9,sp,4
     3e0:	448e2000 	mtc1	t6,$f4
     3e4:	00801025 	move	v0,a0
     3e8:	468021a0 	cvt.s.w	$f6,$f4
     3ec:	e7a60004 	swc1	$f6,4(sp)
     3f0:	84af0002 	lh	t7,2(a1)
     3f4:	448f4000 	mtc1	t7,$f8
     3f8:	00000000 	nop
     3fc:	468042a0 	cvt.s.w	$f10,$f8
     400:	e7aa0008 	swc1	$f10,8(sp)
     404:	84b80004 	lh	t8,4(a1)
     408:	44988000 	mtc1	t8,$f16
     40c:	00000000 	nop
     410:	468084a0 	cvt.s.w	$f18,$f16
     414:	e7b2000c 	swc1	$f18,12(sp)
     418:	8f290000 	lw	t1,0(t9)
     41c:	ac890000 	sw	t1,0(a0)
     420:	8f280004 	lw	t0,4(t9)
     424:	ac880004 	sw	t0,4(a0)
     428:	8f290008 	lw	t1,8(t9)
     42c:	27bd0010 	addiu	sp,sp,16
     430:	03e00008 	jr	ra
     434:	ac890008 	sw	t1,8(a0)

00000438 <func_80043C28>:
     438:	27bdffd0 	addiu	sp,sp,-48
     43c:	afbf0014 	sw	ra,20(sp)
     440:	afa40030 	sw	a0,48(sp)
     444:	00a03825 	move	a3,a1
     448:	afa70034 	sw	a3,52(sp)
     44c:	00c02825 	move	a1,a2
     450:	0c000000 	jal	0 <func_800437F0>
     454:	27a40018 	addiu	a0,sp,24
     458:	8fa70034 	lw	a3,52(sp)
     45c:	c7a60018 	lwc1	$f6,24(sp)
     460:	c7b0001c 	lwc1	$f16,28(sp)
     464:	c4e40000 	lwc1	$f4,0(a3)
     468:	27ae0024 	addiu	t6,sp,36
     46c:	8fa20030 	lw	v0,48(sp)
     470:	46062200 	add.s	$f8,$f4,$f6
     474:	c7a60020 	lwc1	$f6,32(sp)
     478:	e7a80024 	swc1	$f8,36(sp)
     47c:	c4ea0004 	lwc1	$f10,4(a3)
     480:	46105480 	add.s	$f18,$f10,$f16
     484:	e7b20028 	swc1	$f18,40(sp)
     488:	c4e40008 	lwc1	$f4,8(a3)
     48c:	46062200 	add.s	$f8,$f4,$f6
     490:	e7a8002c 	swc1	$f8,44(sp)
     494:	8dd80000 	lw	t8,0(t6)
     498:	ac580000 	sw	t8,0(v0)
     49c:	8dcf0004 	lw	t7,4(t6)
     4a0:	ac4f0004 	sw	t7,4(v0)
     4a4:	8dd80008 	lw	t8,8(t6)
     4a8:	ac580008 	sw	t8,8(v0)
     4ac:	8fbf0014 	lw	ra,20(sp)
     4b0:	27bd0030 	addiu	sp,sp,48
     4b4:	03e00008 	jr	ra
     4b8:	00000000 	nop

000004bc <func_80043CAC>:
     4bc:	44876000 	mtc1	a3,$f12
     4c0:	c4c60000 	lwc1	$f6,0(a2)
     4c4:	c4a40000 	lwc1	$f4,0(a1)
     4c8:	27bdfff0 	addiu	sp,sp,-16
     4cc:	460c3202 	mul.s	$f8,$f6,$f12
     4d0:	27ae0004 	addiu	t6,sp,4
     4d4:	00801025 	move	v0,a0
     4d8:	46082280 	add.s	$f10,$f4,$f8
     4dc:	e7aa0004 	swc1	$f10,4(sp)
     4e0:	c4d20004 	lwc1	$f18,4(a2)
     4e4:	c4b00004 	lwc1	$f16,4(a1)
     4e8:	460c9182 	mul.s	$f6,$f18,$f12
     4ec:	46068100 	add.s	$f4,$f16,$f6
     4f0:	e7a40008 	swc1	$f4,8(sp)
     4f4:	c4ca0008 	lwc1	$f10,8(a2)
     4f8:	c4a80008 	lwc1	$f8,8(a1)
     4fc:	460c5482 	mul.s	$f18,$f10,$f12
     500:	46124400 	add.s	$f16,$f8,$f18
     504:	e7b0000c 	swc1	$f16,12(sp)
     508:	8dd80000 	lw	t8,0(t6)
     50c:	ac980000 	sw	t8,0(a0)
     510:	8dcf0004 	lw	t7,4(t6)
     514:	ac8f0004 	sw	t7,4(a0)
     518:	8dd80008 	lw	t8,8(t6)
     51c:	27bd0010 	addiu	sp,sp,16
     520:	03e00008 	jr	ra
     524:	ac980008 	sw	t8,8(a0)

00000528 <func_80043D18>:
     528:	27bdff88 	addiu	sp,sp,-120
     52c:	afbf0034 	sw	ra,52(sp)
     530:	afb00030 	sw	s0,48(sp)
     534:	afa5007c 	sw	a1,124(sp)
     538:	8c8e008c 	lw	t6,140(a0)
     53c:	00c08025 	move	s0,a2
     540:	27a4003c 	addiu	a0,sp,60
     544:	25cf07c0 	addiu	t7,t6,1984
     548:	0c000000 	jal	0 <func_800437F0>
     54c:	afaf0074 	sw	t7,116(sp)
     550:	3c014100 	lui	at,0x4100
     554:	44813000 	mtc1	at,$f6
     558:	c7a4003c 	lwc1	$f4,60(sp)
     55c:	27a4005c 	addiu	a0,sp,92
     560:	8fa5007c 	lw	a1,124(sp)
     564:	46062200 	add.s	$f8,$f4,$f6
     568:	27a6003c 	addiu	a2,sp,60
     56c:	0c000000 	jal	0 <func_800437F0>
     570:	e7a8003c 	swc1	$f8,60(sp)
     574:	26180018 	addiu	t8,s0,24
     578:	24190001 	li	t9,1
     57c:	24080001 	li	t0,1
     580:	24090001 	li	t1,1
     584:	240affff 	li	t2,-1
     588:	260b0024 	addiu	t3,s0,36
     58c:	afab0024 	sw	t3,36(sp)
     590:	afaa0020 	sw	t2,32(sp)
     594:	afa9001c 	sw	t1,28(sp)
     598:	afa80018 	sw	t0,24(sp)
     59c:	afb90014 	sw	t9,20(sp)
     5a0:	afb80010 	sw	t8,16(sp)
     5a4:	8fa40074 	lw	a0,116(sp)
     5a8:	8fa5007c 	lw	a1,124(sp)
     5ac:	27a6005c 	addiu	a2,sp,92
     5b0:	0c000000 	jal	0 <func_800437F0>
     5b4:	27a70068 	addiu	a3,sp,104
     5b8:	1440003a 	bnez	v0,6a4 <func_80043D18+0x17c>
     5bc:	27a40050 	addiu	a0,sp,80
     5c0:	8fa5007c 	lw	a1,124(sp)
     5c4:	0c000000 	jal	0 <func_800437F0>
     5c8:	02003025 	move	a2,s0
     5cc:	c7aa0050 	lwc1	$f10,80(sp)
     5d0:	8e0d0000 	lw	t5,0(s0)
     5d4:	27a70068 	addiu	a3,sp,104
     5d8:	46005407 	neg.s	$f16,$f10
     5dc:	3c0140a0 	lui	at,0x40a0
     5e0:	e610000c 	swc1	$f16,12(s0)
     5e4:	c7b20054 	lwc1	$f18,84(sp)
     5e8:	44818000 	mtc1	at,$f16
     5ec:	27a50048 	addiu	a1,sp,72
     5f0:	46009107 	neg.s	$f4,$f18
     5f4:	27a60044 	addiu	a2,sp,68
     5f8:	e6040010 	swc1	$f4,16(s0)
     5fc:	c7a60058 	lwc1	$f6,88(sp)
     600:	46003207 	neg.s	$f8,$f6
     604:	e6080014 	swc1	$f8,20(s0)
     608:	aced0000 	sw	t5,0(a3)
     60c:	8e0c0004 	lw	t4,4(s0)
     610:	acec0004 	sw	t4,4(a3)
     614:	8e0d0008 	lw	t5,8(s0)
     618:	aced0008 	sw	t5,8(a3)
     61c:	c7aa006c 	lwc1	$f10,108(sp)
     620:	8fa40074 	lw	a0,116(sp)
     624:	46105480 	add.s	$f18,$f10,$f16
     628:	0c000000 	jal	0 <func_800437F0>
     62c:	e7b2006c 	swc1	$f18,108(sp)
     630:	c6020004 	lwc1	$f2,4(s0)
     634:	3c0140a0 	lui	at,0x40a0
     638:	44812000 	mtc1	at,$f4
     63c:	46001181 	sub.s	$f6,$f2,$f0
     640:	3c013f80 	lui	at,0x3f80
     644:	4606203c 	c.lt.s	$f4,$f6
     648:	00000000 	nop
     64c:	4502000f 	bc1fl	68c <func_80043D18+0x164>
     650:	44818000 	mtc1	at,$f16
     654:	c6080000 	lwc1	$f8,0(s0)
     658:	c60a000c 	lwc1	$f10,12(s0)
     65c:	c6120010 	lwc1	$f18,16(s0)
     660:	c6060008 	lwc1	$f6,8(s0)
     664:	460a4400 	add.s	$f16,$f8,$f10
     668:	c6080014 	lwc1	$f8,20(s0)
     66c:	00001025 	move	v0,zero
     670:	46121100 	add.s	$f4,$f2,$f18
     674:	e6100000 	swc1	$f16,0(s0)
     678:	46083280 	add.s	$f10,$f6,$f8
     67c:	e6040004 	swc1	$f4,4(s0)
     680:	1000002b 	b	730 <func_80043D18+0x208>
     684:	e60a0008 	swc1	$f10,8(s0)
     688:	44818000 	mtc1	at,$f16
     68c:	8fae0048 	lw	t6,72(sp)
     690:	46100480 	add.s	$f18,$f0,$f16
     694:	ae0e0018 	sw	t6,24(s0)
     698:	8faf0044 	lw	t7,68(sp)
     69c:	e7b2006c 	swc1	$f18,108(sp)
     6a0:	ae0f0024 	sw	t7,36(s0)
     6a4:	8e030018 	lw	v1,24(s0)
     6a8:	3c010000 	lui	at,0x0
     6ac:	c4200d44 	lwc1	$f0,3396(at)
     6b0:	84780008 	lh	t8,8(v1)
     6b4:	44982000 	mtc1	t8,$f4
     6b8:	00000000 	nop
     6bc:	468021a0 	cvt.s.w	$f6,$f4
     6c0:	46003202 	mul.s	$f8,$f6,$f0
     6c4:	e608000c 	swc1	$f8,12(s0)
     6c8:	8479000a 	lh	t9,10(v1)
     6cc:	44995000 	mtc1	t9,$f10
     6d0:	00000000 	nop
     6d4:	46805420 	cvt.s.w	$f16,$f10
     6d8:	c60a000c 	lwc1	$f10,12(s0)
     6dc:	46008482 	mul.s	$f18,$f16,$f0
     6e0:	e6120010 	swc1	$f18,16(s0)
     6e4:	8468000c 	lh	t0,12(v1)
     6e8:	44882000 	mtc1	t0,$f4
     6ec:	00000000 	nop
     6f0:	468021a0 	cvt.s.w	$f6,$f4
     6f4:	c6040010 	lwc1	$f4,16(s0)
     6f8:	46003202 	mul.s	$f8,$f6,$f0
     6fc:	e6080014 	swc1	$f8,20(s0)
     700:	c7b00068 	lwc1	$f16,104(sp)
     704:	46105480 	add.s	$f18,$f10,$f16
     708:	c60a0014 	lwc1	$f10,20(s0)
     70c:	e6120000 	swc1	$f18,0(s0)
     710:	c7a6006c 	lwc1	$f6,108(sp)
     714:	46062200 	add.s	$f8,$f4,$f6
     718:	e6080004 	swc1	$f8,4(s0)
     71c:	c7b00070 	lwc1	$f16,112(sp)
     720:	46105480 	add.s	$f18,$f10,$f16
     724:	e6120008 	swc1	$f18,8(s0)
     728:	8fa20044 	lw	v0,68(sp)
     72c:	24420001 	addiu	v0,v0,1
     730:	8fbf0034 	lw	ra,52(sp)
     734:	8fb00030 	lw	s0,48(sp)
     738:	27bd0078 	addiu	sp,sp,120
     73c:	03e00008 	jr	ra
     740:	00000000 	nop

00000744 <func_80043F34>:
     744:	27bdffb8 	addiu	sp,sp,-72
     748:	afa60050 	sw	a2,80(sp)
     74c:	8fae0050 	lw	t6,80(sp)
     750:	afbf0014 	sw	ra,20(sp)
     754:	27a60020 	addiu	a2,sp,32
     758:	8dd80000 	lw	t8,0(t6)
     75c:	acd80000 	sw	t8,0(a2)
     760:	8dcf0004 	lw	t7,4(t6)
     764:	accf0004 	sw	t7,4(a2)
     768:	8dd80008 	lw	t8,8(t6)
     76c:	0c000000 	jal	0 <func_800437F0>
     770:	acd80008 	sw	t8,8(a2)
     774:	27a80020 	addiu	t0,sp,32
     778:	8d0a0000 	lw	t2,0(t0)
     77c:	8fb90050 	lw	t9,80(sp)
     780:	af2a0000 	sw	t2,0(t9)
     784:	8d090004 	lw	t1,4(t0)
     788:	af290004 	sw	t1,4(t9)
     78c:	8d0a0008 	lw	t2,8(t0)
     790:	af2a0008 	sw	t2,8(t9)
     794:	8fbf0014 	lw	ra,20(sp)
     798:	27bd0048 	addiu	sp,sp,72
     79c:	03e00008 	jr	ra
     7a0:	00000000 	nop

000007a4 <func_80043F94>:
     7a4:	27bdff78 	addiu	sp,sp,-136
     7a8:	afbf0034 	sw	ra,52(sp)
     7ac:	afb10030 	sw	s1,48(sp)
     7b0:	afb0002c 	sw	s0,44(sp)
     7b4:	afa40088 	sw	a0,136(sp)
     7b8:	8c8f008c 	lw	t7,140(a0)
     7bc:	00c08025 	move	s0,a2
     7c0:	00a08825 	move	s1,a1
     7c4:	25f807c0 	addiu	t8,t7,1984
     7c8:	afb80084 	sw	t8,132(sp)
     7cc:	0c000000 	jal	0 <func_800437F0>
     7d0:	27a40040 	addiu	a0,sp,64
     7d4:	3c014100 	lui	at,0x4100
     7d8:	44813000 	mtc1	at,$f6
     7dc:	c7a40040 	lwc1	$f4,64(sp)
     7e0:	27a4006c 	addiu	a0,sp,108
     7e4:	02202825 	move	a1,s1
     7e8:	46062200 	add.s	$f8,$f4,$f6
     7ec:	27a60040 	addiu	a2,sp,64
     7f0:	0c000000 	jal	0 <func_800437F0>
     7f4:	e7a80040 	swc1	$f8,64(sp)
     7f8:	26190018 	addiu	t9,s0,24
     7fc:	24080001 	li	t0,1
     800:	24090001 	li	t1,1
     804:	240a0001 	li	t2,1
     808:	240bffff 	li	t3,-1
     80c:	260c0024 	addiu	t4,s0,36
     810:	afac0024 	sw	t4,36(sp)
     814:	afab0020 	sw	t3,32(sp)
     818:	afaa001c 	sw	t2,28(sp)
     81c:	afa90018 	sw	t1,24(sp)
     820:	afa80014 	sw	t0,20(sp)
     824:	afb90010 	sw	t9,16(sp)
     828:	8fa40084 	lw	a0,132(sp)
     82c:	02202825 	move	a1,s1
     830:	27a6006c 	addiu	a2,sp,108
     834:	0c000000 	jal	0 <func_800437F0>
     838:	27a70078 	addiu	a3,sp,120
     83c:	1440003a 	bnez	v0,928 <func_80043F94+0x184>
     840:	27a40060 	addiu	a0,sp,96
     844:	02202825 	move	a1,s1
     848:	0c000000 	jal	0 <func_800437F0>
     84c:	02003025 	move	a2,s0
     850:	c7aa0060 	lwc1	$f10,96(sp)
     854:	8e0e0000 	lw	t6,0(s0)
     858:	27a70078 	addiu	a3,sp,120
     85c:	46005407 	neg.s	$f16,$f10
     860:	3c0140a0 	lui	at,0x40a0
     864:	e610000c 	swc1	$f16,12(s0)
     868:	c7b20064 	lwc1	$f18,100(sp)
     86c:	44818000 	mtc1	at,$f16
     870:	27a5004c 	addiu	a1,sp,76
     874:	46009107 	neg.s	$f4,$f18
     878:	27a60048 	addiu	a2,sp,72
     87c:	e6040010 	swc1	$f4,16(s0)
     880:	c7a60068 	lwc1	$f6,104(sp)
     884:	46003207 	neg.s	$f8,$f6
     888:	e6080014 	swc1	$f8,20(s0)
     88c:	acee0000 	sw	t6,0(a3)
     890:	8e0d0004 	lw	t5,4(s0)
     894:	aced0004 	sw	t5,4(a3)
     898:	8e0e0008 	lw	t6,8(s0)
     89c:	acee0008 	sw	t6,8(a3)
     8a0:	c7aa007c 	lwc1	$f10,124(sp)
     8a4:	8fa40084 	lw	a0,132(sp)
     8a8:	46105480 	add.s	$f18,$f10,$f16
     8ac:	0c000000 	jal	0 <func_800437F0>
     8b0:	e7b2007c 	swc1	$f18,124(sp)
     8b4:	c6020004 	lwc1	$f2,4(s0)
     8b8:	3c0140a0 	lui	at,0x40a0
     8bc:	44812000 	mtc1	at,$f4
     8c0:	46001181 	sub.s	$f6,$f2,$f0
     8c4:	3c013f80 	lui	at,0x3f80
     8c8:	4606203c 	c.lt.s	$f4,$f6
     8cc:	00000000 	nop
     8d0:	4502000f 	bc1fl	910 <func_80043F94+0x16c>
     8d4:	44818000 	mtc1	at,$f16
     8d8:	c6080000 	lwc1	$f8,0(s0)
     8dc:	c60a000c 	lwc1	$f10,12(s0)
     8e0:	c6120010 	lwc1	$f18,16(s0)
     8e4:	c6060008 	lwc1	$f6,8(s0)
     8e8:	460a4400 	add.s	$f16,$f8,$f10
     8ec:	c6080014 	lwc1	$f8,20(s0)
     8f0:	00001025 	move	v0,zero
     8f4:	46121100 	add.s	$f4,$f2,$f18
     8f8:	e6100000 	swc1	$f16,0(s0)
     8fc:	46083280 	add.s	$f10,$f6,$f8
     900:	e6040004 	swc1	$f4,4(s0)
     904:	1000008d 	b	b3c <func_80043F94+0x398>
     908:	e60a0008 	swc1	$f10,8(s0)
     90c:	44818000 	mtc1	at,$f16
     910:	8faf004c 	lw	t7,76(sp)
     914:	46100480 	add.s	$f18,$f0,$f16
     918:	ae0f0018 	sw	t7,24(s0)
     91c:	8fb80048 	lw	t8,72(sp)
     920:	e7b2007c 	swc1	$f18,124(sp)
     924:	ae180024 	sw	t8,36(s0)
     928:	8e020018 	lw	v0,24(s0)
     92c:	3c010000 	lui	at,0x0
     930:	c4200000 	lwc1	$f0,0(at)
     934:	84590008 	lh	t9,8(v0)
     938:	3c013f00 	lui	at,0x3f00
     93c:	44992000 	mtc1	t9,$f4
     940:	00000000 	nop
     944:	468021a0 	cvt.s.w	$f6,$f4
     948:	46003202 	mul.s	$f8,$f6,$f0
     94c:	e608000c 	swc1	$f8,12(s0)
     950:	8448000a 	lh	t0,10(v0)
     954:	44885000 	mtc1	t0,$f10
     958:	00000000 	nop
     95c:	46805420 	cvt.s.w	$f16,$f10
     960:	44815000 	mtc1	at,$f10
     964:	3c010000 	lui	at,0x0
     968:	46008482 	mul.s	$f18,$f16,$f0
     96c:	e6120010 	swc1	$f18,16(s0)
     970:	8449000c 	lh	t1,12(v0)
     974:	c6020010 	lwc1	$f2,16(s0)
     978:	44892000 	mtc1	t1,$f4
     97c:	4602503c 	c.lt.s	$f10,$f2
     980:	468021a0 	cvt.s.w	$f6,$f4
     984:	46003202 	mul.s	$f8,$f6,$f0
     988:	45010007 	bc1t	9a8 <func_80043F94+0x204>
     98c:	e6080014 	swc1	$f8,20(s0)
     990:	c4300000 	lwc1	$f16,0(at)
     994:	3c020000 	lui	v0,0x0
     998:	4610103c 	c.lt.s	$f2,$f16
     99c:	00000000 	nop
     9a0:	4500000d 	bc1f	9d8 <func_80043F94+0x234>
     9a4:	00000000 	nop
     9a8:	c612000c 	lwc1	$f18,12(s0)
     9ac:	c7a40078 	lwc1	$f4,120(sp)
     9b0:	c6100014 	lwc1	$f16,20(s0)
     9b4:	46049180 	add.s	$f6,$f18,$f4
     9b8:	e6060000 	swc1	$f6,0(s0)
     9bc:	c7a8007c 	lwc1	$f8,124(sp)
     9c0:	46081280 	add.s	$f10,$f2,$f8
     9c4:	e60a0004 	swc1	$f10,4(s0)
     9c8:	c7b20080 	lwc1	$f18,128(sp)
     9cc:	46128100 	add.s	$f4,$f16,$f18
     9d0:	10000059 	b	b38 <func_80043F94+0x394>
     9d4:	e6040008 	swc1	$f4,8(s0)
     9d8:	8c420000 	lw	v0,0(v0)
     9dc:	50400057 	beqzl	v0,b3c <func_80043F94+0x398>
     9e0:	24020001 	li	v0,1
     9e4:	844a0008 	lh	t2,8(v0)
     9e8:	27ae006c 	addiu	t6,sp,108
     9ec:	27af0078 	addiu	t7,sp,120
     9f0:	448a3000 	mtc1	t2,$f6
     9f4:	24180001 	li	t8,1
     9f8:	46803220 	cvt.s.w	$f8,$f6
     9fc:	46004302 	mul.s	$f12,$f8,$f0
     a00:	e7ac0054 	swc1	$f12,84(sp)
     a04:	844b000a 	lh	t3,10(v0)
     a08:	448b8000 	mtc1	t3,$f16
     a0c:	00000000 	nop
     a10:	468084a0 	cvt.s.w	$f18,$f16
     a14:	46009382 	mul.s	$f14,$f18,$f0
     a18:	e7ae0058 	swc1	$f14,88(sp)
     a1c:	844c000c 	lh	t4,12(v0)
     a20:	448c3000 	mtc1	t4,$f6
     a24:	00000000 	nop
     a28:	46803220 	cvt.s.w	$f8,$f6
     a2c:	46004402 	mul.s	$f16,$f8,$f0
     a30:	e7b0005c 	swc1	$f16,92(sp)
     a34:	844d000e 	lh	t5,14(v0)
     a38:	44068000 	mfc1	a2,$f16
     a3c:	afb8001c 	sw	t8,28(sp)
     a40:	448d9000 	mtc1	t5,$f18
     a44:	afaf0018 	sw	t7,24(sp)
     a48:	afae0014 	sw	t6,20(sp)
     a4c:	468094a0 	cvt.s.w	$f18,$f18
     a50:	afb10010 	sw	s1,16(sp)
     a54:	44079000 	mfc1	a3,$f18
     a58:	0c000000 	jal	0 <func_800437F0>
     a5c:	00000000 	nop
     a60:	1040001b 	beqz	v0,ad0 <func_80043F94+0x32c>
     a64:	27a40060 	addiu	a0,sp,96
     a68:	27b90054 	addiu	t9,sp,84
     a6c:	8f290000 	lw	t1,0(t9)
     a70:	3c0a0000 	lui	t2,0x0
     a74:	ae09000c 	sw	t1,12(s0)
     a78:	8f280004 	lw	t0,4(t9)
     a7c:	c606000c 	lwc1	$f6,12(s0)
     a80:	ae080010 	sw	t0,16(s0)
     a84:	8f290008 	lw	t1,8(t9)
     a88:	c6040010 	lwc1	$f4,16(s0)
     a8c:	ae090014 	sw	t1,20(s0)
     a90:	8d4a0000 	lw	t2,0(t2)
     a94:	ae0a0018 	sw	t2,24(s0)
     a98:	8fab0088 	lw	t3,136(sp)
     a9c:	856c0146 	lh	t4,326(t3)
     aa0:	ae0c0024 	sw	t4,36(s0)
     aa4:	c7a80078 	lwc1	$f8,120(sp)
     aa8:	46083280 	add.s	$f10,$f6,$f8
     aac:	c6060014 	lwc1	$f6,20(s0)
     ab0:	e60a0000 	swc1	$f10,0(s0)
     ab4:	c7b0007c 	lwc1	$f16,124(sp)
     ab8:	46102480 	add.s	$f18,$f4,$f16
     abc:	e6120004 	swc1	$f18,4(s0)
     ac0:	c7a80080 	lwc1	$f8,128(sp)
     ac4:	46083280 	add.s	$f10,$f6,$f8
     ac8:	1000001b 	b	b38 <func_80043F94+0x394>
     acc:	e60a0008 	swc1	$f10,8(s0)
     ad0:	02202825 	move	a1,s1
     ad4:	0c000000 	jal	0 <func_800437F0>
     ad8:	02003025 	move	a2,s0
     adc:	c7a40060 	lwc1	$f4,96(sp)
     ae0:	00001025 	move	v0,zero
     ae4:	46002407 	neg.s	$f16,$f4
     ae8:	c6040000 	lwc1	$f4,0(s0)
     aec:	e610000c 	swc1	$f16,12(s0)
     af0:	c7b20064 	lwc1	$f18,100(sp)
     af4:	c610000c 	lwc1	$f16,12(s0)
     af8:	46009187 	neg.s	$f6,$f18
     afc:	46102480 	add.s	$f18,$f4,$f16
     b00:	e6060010 	swc1	$f6,16(s0)
     b04:	c7a80068 	lwc1	$f8,104(sp)
     b08:	c6060004 	lwc1	$f6,4(s0)
     b0c:	c6040008 	lwc1	$f4,8(s0)
     b10:	46004287 	neg.s	$f10,$f8
     b14:	c6080010 	lwc1	$f8,16(s0)
     b18:	e60a0014 	swc1	$f10,20(s0)
     b1c:	c6100014 	lwc1	$f16,20(s0)
     b20:	e6120000 	swc1	$f18,0(s0)
     b24:	46083280 	add.s	$f10,$f6,$f8
     b28:	46102480 	add.s	$f18,$f4,$f16
     b2c:	e60a0004 	swc1	$f10,4(s0)
     b30:	10000002 	b	b3c <func_80043F94+0x398>
     b34:	e6120008 	swc1	$f18,8(s0)
     b38:	24020001 	li	v0,1
     b3c:	8fbf0034 	lw	ra,52(sp)
     b40:	8fb0002c 	lw	s0,44(sp)
     b44:	8fb10030 	lw	s1,48(sp)
     b48:	03e00008 	jr	ra
     b4c:	27bd0088 	addiu	sp,sp,136

00000b50 <func_80044340>:
     b50:	27bdffb8 	addiu	sp,sp,-72
     b54:	afa60050 	sw	a2,80(sp)
     b58:	8fae0050 	lw	t6,80(sp)
     b5c:	afbf0014 	sw	ra,20(sp)
     b60:	27a60020 	addiu	a2,sp,32
     b64:	8dd80000 	lw	t8,0(t6)
     b68:	acd80000 	sw	t8,0(a2)
     b6c:	8dcf0004 	lw	t7,4(t6)
     b70:	accf0004 	sw	t7,4(a2)
     b74:	8dd80008 	lw	t8,8(t6)
     b78:	0c000000 	jal	0 <func_800437F0>
     b7c:	acd80008 	sw	t8,8(a2)
     b80:	27a80020 	addiu	t0,sp,32
     b84:	8d0a0000 	lw	t2,0(t0)
     b88:	8fb90050 	lw	t9,80(sp)
     b8c:	af2a0000 	sw	t2,0(t9)
     b90:	8d090004 	lw	t1,4(t0)
     b94:	af290004 	sw	t1,4(t9)
     b98:	8d0a0008 	lw	t2,8(t0)
     b9c:	af2a0008 	sw	t2,8(t9)
     ba0:	8fbf0014 	lw	ra,20(sp)
     ba4:	27bd0048 	addiu	sp,sp,72
     ba8:	03e00008 	jr	ra
     bac:	00000000 	nop

00000bb0 <func_800443A0>:
     bb0:	27bdffb0 	addiu	sp,sp,-80
     bb4:	afbf002c 	sw	ra,44(sp)
     bb8:	afa40050 	sw	a0,80(sp)
     bbc:	afa50054 	sw	a1,84(sp)
     bc0:	8c84008c 	lw	a0,140(a0)
     bc4:	27af0034 	addiu	t7,sp,52
     bc8:	27a90038 	addiu	t1,sp,56
     bcc:	24180001 	li	t8,1
     bd0:	24190001 	li	t9,1
     bd4:	24080001 	li	t0,1
     bd8:	afa00034 	sw	zero,52(sp)
     bdc:	afa8001c 	sw	t0,28(sp)
     be0:	afb90018 	sw	t9,24(sp)
     be4:	afb80014 	sw	t8,20(sp)
     be8:	afa90024 	sw	t1,36(sp)
     bec:	afaf0010 	sw	t7,16(sp)
     bf0:	afa00020 	sw	zero,32(sp)
     bf4:	27a70040 	addiu	a3,sp,64
     bf8:	0c000000 	jal	0 <func_800437F0>
     bfc:	248407c0 	addiu	a0,a0,1984
     c00:	1040000b 	beqz	v0,c30 <func_800443A0+0x80>
     c04:	8fa40034 	lw	a0,52(sp)
     c08:	0c000000 	jal	0 <func_800437F0>
     c0c:	8fa50054 	lw	a1,84(sp)
     c10:	44802000 	mtc1	zero,$f4
     c14:	00000000 	nop
     c18:	4604003c 	c.lt.s	$f0,$f4
     c1c:	00000000 	nop
     c20:	45020004 	bc1fl	c34 <func_800443A0+0x84>
     c24:	00001025 	move	v0,zero
     c28:	10000002 	b	c34 <func_800443A0+0x84>
     c2c:	24020001 	li	v0,1
     c30:	00001025 	move	v0,zero
     c34:	8fbf002c 	lw	ra,44(sp)
     c38:	27bd0050 	addiu	sp,sp,80
     c3c:	03e00008 	jr	ra
     c40:	00000000 	nop

00000c44 <func_80044434>:
     c44:	27bdffd0 	addiu	sp,sp,-48
     c48:	afbf001c 	sw	ra,28(sp)
     c4c:	afb00018 	sw	s0,24(sp)
     c50:	afa40030 	sw	a0,48(sp)
     c54:	afa60038 	sw	a2,56(sp)
     c58:	afa7003c 	sw	a3,60(sp)
     c5c:	8c84008c 	lw	a0,140(a0)
     c60:	00c03825 	move	a3,a2
     c64:	00a08025 	move	s0,a1
     c68:	27a50028 	addiu	a1,sp,40
     c6c:	8fa6003c 	lw	a2,60(sp)
     c70:	0c000000 	jal	0 <func_800437F0>
     c74:	248407c0 	addiu	a0,a0,1984
     c78:	3c01c6fa 	lui	at,0xc6fa
     c7c:	44812000 	mtc1	at,$f4
     c80:	46000086 	mov.s	$f2,$f0
     c84:	8faf0028 	lw	t7,40(sp)
     c88:	46040032 	c.eq.s	$f0,$f4
     c8c:	00000000 	nop
     c90:	45020009 	bc1fl	cb8 <func_80044434+0x74>
     c94:	85f80008 	lh	t8,8(t7)
     c98:	44800000 	mtc1	zero,$f0
     c9c:	3c013f80 	lui	at,0x3f80
     ca0:	44813000 	mtc1	at,$f6
     ca4:	e6000000 	swc1	$f0,0(s0)
     ca8:	e6000008 	swc1	$f0,8(s0)
     cac:	10000017 	b	d0c <func_80044434+0xc8>
     cb0:	e6060004 	swc1	$f6,4(s0)
     cb4:	85f80008 	lh	t8,8(t7)
     cb8:	3c010000 	lui	at,0x0
     cbc:	c4200d50 	lwc1	$f0,3408(at)
     cc0:	44984000 	mtc1	t8,$f8
     cc4:	00000000 	nop
     cc8:	468042a0 	cvt.s.w	$f10,$f8
     ccc:	46005402 	mul.s	$f16,$f10,$f0
     cd0:	e6100000 	swc1	$f16,0(s0)
     cd4:	8fb90028 	lw	t9,40(sp)
     cd8:	8728000a 	lh	t0,10(t9)
     cdc:	44889000 	mtc1	t0,$f18
     ce0:	00000000 	nop
     ce4:	46809120 	cvt.s.w	$f4,$f18
     ce8:	46002182 	mul.s	$f6,$f4,$f0
     cec:	e6060004 	swc1	$f6,4(s0)
     cf0:	8fa90028 	lw	t1,40(sp)
     cf4:	852a000c 	lh	t2,12(t1)
     cf8:	448a4000 	mtc1	t2,$f8
     cfc:	00000000 	nop
     d00:	468042a0 	cvt.s.w	$f10,$f8
     d04:	46005402 	mul.s	$f16,$f10,$f0
     d08:	e6100008 	swc1	$f16,8(s0)
     d0c:	8fbf001c 	lw	ra,28(sp)
     d10:	8fb00018 	lw	s0,24(sp)
     d14:	27bd0030 	addiu	sp,sp,48
     d18:	03e00008 	jr	ra
     d1c:	46001006 	mov.s	$f0,$f2

00000d20 <func_80044510>:
     d20:	27bdffc8 	addiu	sp,sp,-56
     d24:	afbf0014 	sw	ra,20(sp)
     d28:	afa5003c 	sw	a1,60(sp)
     d2c:	8cb80000 	lw	t8,0(a1)
     d30:	27a6002c 	addiu	a2,sp,44
     d34:	3c0142a0 	lui	at,0x42a0
     d38:	acd80000 	sw	t8,0(a2)
     d3c:	8caf0004 	lw	t7,4(a1)
     d40:	44813000 	mtc1	at,$f6
     d44:	27a7001c 	addiu	a3,sp,28
     d48:	accf0004 	sw	t7,4(a2)
     d4c:	8cb80008 	lw	t8,8(a1)
     d50:	27a50020 	addiu	a1,sp,32
     d54:	acd80008 	sw	t8,8(a2)
     d58:	c7a40030 	lwc1	$f4,48(sp)
     d5c:	46062200 	add.s	$f8,$f4,$f6
     d60:	0c000000 	jal	0 <func_800437F0>
     d64:	e7a80030 	swc1	$f8,48(sp)
     d68:	8fbf0014 	lw	ra,20(sp)
     d6c:	27bd0038 	addiu	sp,sp,56
     d70:	03e00008 	jr	ra
     d74:	00000000 	nop

00000d78 <func_80044568>:
     d78:	27bdff90 	addiu	sp,sp,-112
     d7c:	f7bc0030 	sdc1	$f28,48(sp)
     d80:	3c01c6fa 	lui	at,0xc6fa
     d84:	4481e000 	mtc1	at,$f28
     d88:	f7ba0028 	sdc1	$f26,40(sp)
     d8c:	3c014120 	lui	at,0x4120
     d90:	afbf005c 	sw	ra,92(sp)
     d94:	afb70058 	sw	s7,88(sp)
     d98:	afb60054 	sw	s6,84(sp)
     d9c:	afb50050 	sw	s5,80(sp)
     da0:	afb4004c 	sw	s4,76(sp)
     da4:	afb30048 	sw	s3,72(sp)
     da8:	afb20044 	sw	s2,68(sp)
     dac:	afb10040 	sw	s1,64(sp)
     db0:	afb0003c 	sw	s0,60(sp)
     db4:	f7b80020 	sdc1	$f24,32(sp)
     db8:	f7b60018 	sdc1	$f22,24(sp)
     dbc:	f7b40010 	sdc1	$f20,16(sp)
     dc0:	4481d000 	mtc1	at,$f26
     dc4:	8c90008c 	lw	s0,140(a0)
     dc8:	3c013f00 	lui	at,0x3f00
     dcc:	4481c000 	mtc1	at,$f24
     dd0:	3c010000 	lui	at,0x0
     dd4:	00e08825 	move	s1,a3
     dd8:	00c09025 	move	s2,a2
     ddc:	0080a025 	move	s4,a0
     de0:	00a0b825 	move	s7,a1
     de4:	c4360000 	lwc1	$f22,0(at)
     de8:	24130003 	li	s3,3
     dec:	27b5006c 	addiu	s5,sp,108
     df0:	24160001 	li	s6,1
     df4:	261007c0 	addiu	s0,s0,1984
     df8:	02002025 	move	a0,s0
     dfc:	02a02825 	move	a1,s5
     e00:	02203025 	move	a2,s1
     e04:	0c000000 	jal	0 <func_800437F0>
     e08:	02403825 	move	a3,s2
     e0c:	461c0032 	c.eq.s	$f0,$f28
     e10:	46000506 	mov.s	$f20,$f0
     e14:	8fae006c 	lw	t6,108(sp)
     e18:	02002025 	move	a0,s0
     e1c:	4501000f 	bc1t	e5c <func_80044568+0xe4>
     e20:	8fa5006c 	lw	a1,108(sp)
     e24:	c6840104 	lwc1	$f4,260(s4)
     e28:	4600203c 	c.lt.s	$f4,$f0
     e2c:	00000000 	nop
     e30:	45000012 	bc1f	e7c <func_80044568+0x104>
     e34:	00000000 	nop
     e38:	85cf000a 	lh	t7,10(t6)
     e3c:	448f3000 	mtc1	t7,$f6
     e40:	00000000 	nop
     e44:	46803220 	cvt.s.w	$f8,$f6
     e48:	46164282 	mul.s	$f10,$f8,$f22
     e4c:	460ac03c 	c.lt.s	$f24,$f10
     e50:	00000000 	nop
     e54:	45010009 	bc1t	e7c <func_80044568+0x104>
     e58:	00000000 	nop
     e5c:	44800000 	mtc1	zero,$f0
     e60:	3c013f80 	lui	at,0x3f80
     e64:	44818000 	mtc1	at,$f16
     e68:	4600e506 	mov.s	$f20,$f28
     e6c:	e6e00000 	swc1	$f0,0(s7)
     e70:	e6e00008 	swc1	$f0,8(s7)
     e74:	10000021 	b	efc <func_80044568+0x184>
     e78:	e6f00004 	swc1	$f16,4(s7)
     e7c:	0c000000 	jal	0 <func_800437F0>
     e80:	8e260000 	lw	a2,0(s1)
     e84:	54560006 	bnel	v0,s6,ea0 <func_80044568+0x128>
     e88:	8fb8006c 	lw	t8,108(sp)
     e8c:	461aa481 	sub.s	$f18,$f20,$f26
     e90:	2673ffff 	addiu	s3,s3,-1
     e94:	10000017 	b	ef4 <func_80044568+0x17c>
     e98:	e6520004 	swc1	$f18,4(s2)
     e9c:	8fb8006c 	lw	t8,108(sp)
     ea0:	87190008 	lh	t9,8(t8)
     ea4:	44992000 	mtc1	t9,$f4
     ea8:	00000000 	nop
     eac:	468021a0 	cvt.s.w	$f6,$f4
     eb0:	46163202 	mul.s	$f8,$f6,$f22
     eb4:	e6e80000 	swc1	$f8,0(s7)
     eb8:	8fa8006c 	lw	t0,108(sp)
     ebc:	8509000a 	lh	t1,10(t0)
     ec0:	44895000 	mtc1	t1,$f10
     ec4:	00000000 	nop
     ec8:	46805420 	cvt.s.w	$f16,$f10
     ecc:	46168482 	mul.s	$f18,$f16,$f22
     ed0:	e6f20004 	swc1	$f18,4(s7)
     ed4:	8faa006c 	lw	t2,108(sp)
     ed8:	854b000c 	lh	t3,12(t2)
     edc:	448b2000 	mtc1	t3,$f4
     ee0:	00000000 	nop
     ee4:	468021a0 	cvt.s.w	$f6,$f4
     ee8:	46163202 	mul.s	$f8,$f6,$f22
     eec:	10000003 	b	efc <func_80044568+0x184>
     ef0:	e6e80008 	swc1	$f8,8(s7)
     ef4:	5660ffc1 	bnezl	s3,dfc <func_80044568+0x84>
     ef8:	02002025 	move	a0,s0
     efc:	16600003 	bnez	s3,f0c <func_80044568+0x194>
     f00:	3c040000 	lui	a0,0x0
     f04:	0c000000 	jal	0 <func_800437F0>
     f08:	24840000 	addiu	a0,a0,0
     f0c:	8fbf005c 	lw	ra,92(sp)
     f10:	4600a006 	mov.s	$f0,$f20
     f14:	d7b40010 	ldc1	$f20,16(sp)
     f18:	d7b60018 	ldc1	$f22,24(sp)
     f1c:	d7b80020 	ldc1	$f24,32(sp)
     f20:	d7ba0028 	ldc1	$f26,40(sp)
     f24:	d7bc0030 	ldc1	$f28,48(sp)
     f28:	8fb0003c 	lw	s0,60(sp)
     f2c:	8fb10040 	lw	s1,64(sp)
     f30:	8fb20044 	lw	s2,68(sp)
     f34:	8fb30048 	lw	s3,72(sp)
     f38:	8fb4004c 	lw	s4,76(sp)
     f3c:	8fb50050 	lw	s5,80(sp)
     f40:	8fb60054 	lw	s6,84(sp)
     f44:	8fb70058 	lw	s7,88(sp)
     f48:	03e00008 	jr	ra
     f4c:	27bd0070 	addiu	sp,sp,112

00000f50 <func_80044740>:
     f50:	27bdffe8 	addiu	sp,sp,-24
     f54:	afbf0014 	sw	ra,20(sp)
     f58:	8c84008c 	lw	a0,140(a0)
     f5c:	24060032 	li	a2,50
     f60:	0c000000 	jal	0 <func_800437F0>
     f64:	248407c0 	addiu	a0,a0,1984
     f68:	8fbf0014 	lw	ra,20(sp)
     f6c:	00021400 	sll	v0,v0,0x10
     f70:	00021403 	sra	v0,v0,0x10
     f74:	03e00008 	jr	ra
     f78:	27bd0018 	addiu	sp,sp,24

00000f7c <func_8004476C>:
     f7c:	27bdffe8 	addiu	sp,sp,-24
     f80:	afbf0014 	sw	ra,20(sp)
     f84:	00803825 	move	a3,a0
     f88:	8c84008c 	lw	a0,140(a0)
     f8c:	84e50148 	lh	a1,328(a3)
     f90:	24060032 	li	a2,50
     f94:	0c000000 	jal	0 <func_800437F0>
     f98:	248407c0 	addiu	a0,a0,1984
     f9c:	8fbf0014 	lw	ra,20(sp)
     fa0:	27bd0018 	addiu	sp,sp,24
     fa4:	03e00008 	jr	ra
     fa8:	00000000 	nop

00000fac <func_8004479C>:
     fac:	27bdffc8 	addiu	sp,sp,-56
     fb0:	afa40038 	sw	a0,56(sp)
     fb4:	8fae0038 	lw	t6,56(sp)
     fb8:	afbf0014 	sw	ra,20(sp)
     fbc:	afa5003c 	sw	a1,60(sp)
     fc0:	afa60040 	sw	a2,64(sp)
     fc4:	27a40020 	addiu	a0,sp,32
     fc8:	0c000000 	jal	0 <func_800437F0>
     fcc:	8dc50090 	lw	a1,144(t6)
     fd0:	8faf0038 	lw	t7,56(sp)
     fd4:	8fb8003c 	lw	t8,60(sp)
     fd8:	8fa50040 	lw	a1,64(sp)
     fdc:	8de4008c 	lw	a0,140(t7)
     fe0:	8f060000 	lw	a2,0(t8)
     fe4:	0c000000 	jal	0 <func_800437F0>
     fe8:	248407c0 	addiu	a0,a0,1984
     fec:	8fb90038 	lw	t9,56(sp)
     ff0:	afa20034 	sw	v0,52(sp)
     ff4:	8fa8003c 	lw	t0,60(sp)
     ff8:	8f24008c 	lw	a0,140(t9)
     ffc:	00402825 	move	a1,v0
    1000:	8d060000 	lw	a2,0(t0)
    1004:	0c000000 	jal	0 <func_800437F0>
    1008:	248407c0 	addiu	a0,a0,1984
    100c:	14400003 	bnez	v0,101c <func_8004479C+0x70>
    1010:	8fbf0014 	lw	ra,20(sp)
    1014:	10000002 	b	1020 <func_8004479C+0x74>
    1018:	2403ffff 	li	v1,-1
    101c:	8fa30034 	lw	v1,52(sp)
    1020:	00601025 	move	v0,v1
    1024:	03e00008 	jr	ra
    1028:	27bd0038 	addiu	sp,sp,56

0000102c <func_8004481C>:
    102c:	27bdffb8 	addiu	sp,sp,-72
    1030:	afb00018 	sw	s0,24(sp)
    1034:	00808025 	move	s0,a0
    1038:	afbf001c 	sw	ra,28(sp)
    103c:	afa5004c 	sw	a1,76(sp)
    1040:	8e050090 	lw	a1,144(s0)
    1044:	0c000000 	jal	0 <func_800437F0>
    1048:	27a40028 	addiu	a0,sp,40
    104c:	0c000000 	jal	0 <func_800437F0>
    1050:	8e040090 	lw	a0,144(s0)
    1054:	c7a4002c 	lwc1	$f4,44(sp)
    1058:	27a50044 	addiu	a1,sp,68
    105c:	27a6003c 	addiu	a2,sp,60
    1060:	46002180 	add.s	$f6,$f4,$f0
    1064:	27a70028 	addiu	a3,sp,40
    1068:	e7a6002c 	swc1	$f6,44(sp)
    106c:	8e04008c 	lw	a0,140(s0)
    1070:	0c000000 	jal	0 <func_800437F0>
    1074:	248407c0 	addiu	a0,a0,1984
    1078:	3c01c6fa 	lui	at,0xc6fa
    107c:	44814000 	mtc1	at,$f8
    1080:	8fa50044 	lw	a1,68(sp)
    1084:	46080032 	c.eq.s	$f0,$f8
    1088:	00000000 	nop
    108c:	45020004 	bc1fl	10a0 <func_8004481C+0x74>
    1090:	8e04008c 	lw	a0,140(s0)
    1094:	1000000c 	b	10c8 <func_8004481C+0x9c>
    1098:	00001025 	move	v0,zero
    109c:	8e04008c 	lw	a0,140(s0)
    10a0:	8fa6003c 	lw	a2,60(sp)
    10a4:	0c000000 	jal	0 <func_800437F0>
    10a8:	248407c0 	addiu	a0,a0,1984
    10ac:	8fae004c 	lw	t6,76(sp)
    10b0:	a5c20000 	sh	v0,0(t6)
    10b4:	8e04008c 	lw	a0,140(s0)
    10b8:	8fa6003c 	lw	a2,60(sp)
    10bc:	8fa50044 	lw	a1,68(sp)
    10c0:	0c000000 	jal	0 <func_800437F0>
    10c4:	248407c0 	addiu	a0,a0,1984
    10c8:	8fbf001c 	lw	ra,28(sp)
    10cc:	8fb00018 	lw	s0,24(sp)
    10d0:	27bd0048 	addiu	sp,sp,72
    10d4:	03e00008 	jr	ra
    10d8:	00000000 	nop

000010dc <func_800448CC>:
    10dc:	27bdffb8 	addiu	sp,sp,-72
    10e0:	afb00020 	sw	s0,32(sp)
    10e4:	00808025 	move	s0,a0
    10e8:	afbf0024 	sw	ra,36(sp)
    10ec:	afa5004c 	sw	a1,76(sp)
    10f0:	8e050090 	lw	a1,144(s0)
    10f4:	0c000000 	jal	0 <func_800437F0>
    10f8:	27a40034 	addiu	a0,sp,52
    10fc:	8fa3004c 	lw	v1,76(sp)
    1100:	c7a40038 	lwc1	$f4,56(sp)
    1104:	27ae0030 	addiu	t6,sp,48
    1108:	e4640000 	swc1	$f4,0(v1)
    110c:	8e04008c 	lw	a0,140(s0)
    1110:	afae0014 	sw	t6,20(sp)
    1114:	8fa7003c 	lw	a3,60(sp)
    1118:	8fa60034 	lw	a2,52(sp)
    111c:	afa30010 	sw	v1,16(sp)
    1120:	0c000000 	jal	0 <func_800437F0>
    1124:	248507c0 	addiu	a1,a0,1984
    1128:	14400006 	bnez	v0,1144 <func_800448CC+0x68>
    112c:	8fa3004c 	lw	v1,76(sp)
    1130:	3c01c6fa 	lui	at,0xc6fa
    1134:	44813000 	mtc1	at,$f6
    1138:	2402ffff 	li	v0,-1
    113c:	1000001a 	b	11a8 <func_800448CC+0xcc>
    1140:	e4660000 	swc1	$f6,0(v1)
    1144:	8e0f0090 	lw	t7,144(s0)
    1148:	3c01c6fa 	lui	at,0xc6fa
    114c:	8df8067c 	lw	t8,1660(t7)
    1150:	0018c900 	sll	t9,t8,0x4
    1154:	07220006 	bltzl	t9,1170 <func_800448CC+0x94>
    1158:	8e04008c 	lw	a0,140(s0)
    115c:	44814000 	mtc1	at,$f8
    1160:	2402ffff 	li	v0,-1
    1164:	10000010 	b	11a8 <func_800448CC+0xcc>
    1168:	e4680000 	swc1	$f8,0(v1)
    116c:	8e04008c 	lw	a0,140(s0)
    1170:	8fa50030 	lw	a1,48(sp)
    1174:	0c000000 	jal	0 <func_800437F0>
    1178:	248407c0 	addiu	a0,a0,1984
    117c:	18400007 	blez	v0,119c <func_800448CC+0xc0>
    1180:	8fa50030 	lw	a1,48(sp)
    1184:	8e04008c 	lw	a0,140(s0)
    1188:	afa2002c 	sw	v0,44(sp)
    118c:	0c000000 	jal	0 <func_800437F0>
    1190:	248407c0 	addiu	a0,a0,1984
    1194:	1c400003 	bgtz	v0,11a4 <func_800448CC+0xc8>
    1198:	8fa3002c 	lw	v1,44(sp)
    119c:	10000002 	b	11a8 <func_800448CC+0xcc>
    11a0:	2402fffe 	li	v0,-2
    11a4:	00601025 	move	v0,v1
    11a8:	8fbf0024 	lw	ra,36(sp)
    11ac:	8fb00020 	lw	s0,32(sp)
    11b0:	27bd0048 	addiu	sp,sp,72
    11b4:	03e00008 	jr	ra
    11b8:	00000000 	nop

000011bc <func_800449AC>:
    11bc:	27bdffc0 	addiu	sp,sp,-64
    11c0:	afa40040 	sw	a0,64(sp)
    11c4:	8fae0040 	lw	t6,64(sp)
    11c8:	afbf001c 	sw	ra,28(sp)
    11cc:	afa50044 	sw	a1,68(sp)
    11d0:	afa60048 	sw	a2,72(sp)
    11d4:	27a4002c 	addiu	a0,sp,44
    11d8:	0c000000 	jal	0 <func_800437F0>
    11dc:	8dc50090 	lw	a1,144(t6)
    11e0:	c7a40030 	lwc1	$f4,48(sp)
    11e4:	8fa30044 	lw	v1,68(sp)
    11e8:	8faf0040 	lw	t7,64(sp)
    11ec:	e7a40028 	swc1	$f4,40(sp)
    11f0:	27b80028 	addiu	t8,sp,40
    11f4:	8de4008c 	lw	a0,140(t7)
    11f8:	27b90024 	addiu	t9,sp,36
    11fc:	8c670008 	lw	a3,8(v1)
    1200:	8c660000 	lw	a2,0(v1)
    1204:	afb90014 	sw	t9,20(sp)
    1208:	afb80010 	sw	t8,16(sp)
    120c:	0c000000 	jal	0 <func_800437F0>
    1210:	248507c0 	addiu	a1,a0,1984
    1214:	14400005 	bnez	v0,122c <func_800449AC+0x70>
    1218:	8fa80044 	lw	t0,68(sp)
    121c:	3c01c6fa 	lui	at,0xc6fa
    1220:	44810000 	mtc1	at,$f0
    1224:	10000014 	b	1278 <func_800449AC+0xbc>
    1228:	8fbf001c 	lw	ra,28(sp)
    122c:	c7a60028 	lwc1	$f6,40(sp)
    1230:	c5080004 	lwc1	$f8,4(t0)
    1234:	3c01c6fa 	lui	at,0xc6fa
    1238:	8fa90040 	lw	t1,64(sp)
    123c:	4608303c 	c.lt.s	$f6,$f8
    1240:	00000000 	nop
    1244:	45020005 	bc1fl	125c <func_800449AC+0xa0>
    1248:	8d24008c 	lw	a0,140(t1)
    124c:	44810000 	mtc1	at,$f0
    1250:	10000009 	b	1278 <func_800449AC+0xbc>
    1254:	8fbf001c 	lw	ra,28(sp)
    1258:	8d24008c 	lw	a0,140(t1)
    125c:	8fa50024 	lw	a1,36(sp)
    1260:	0c000000 	jal	0 <func_800437F0>
    1264:	248407c0 	addiu	a0,a0,1984
    1268:	8faa0048 	lw	t2,72(sp)
    126c:	ad420000 	sw	v0,0(t2)
    1270:	c7a00028 	lwc1	$f0,40(sp)
    1274:	8fbf001c 	lw	ra,28(sp)
    1278:	27bd0040 	addiu	sp,sp,64
    127c:	03e00008 	jr	ra
    1280:	00000000 	nop

00001284 <func_80044A74>:
    1284:	27bdffe8 	addiu	sp,sp,-24
    1288:	afbf0014 	sw	ra,20(sp)
    128c:	c48a0008 	lwc1	$f10,8(a0)
    1290:	c4a80008 	lwc1	$f8,8(a1)
    1294:	c4860000 	lwc1	$f6,0(a0)
    1298:	c4a40000 	lwc1	$f4,0(a1)
    129c:	460a4381 	sub.s	$f14,$f8,$f10
    12a0:	0c000000 	jal	0 <func_800437F0>
    12a4:	46062301 	sub.s	$f12,$f4,$f6
    12a8:	3c010000 	lui	at,0x0
    12ac:	c4300d58 	lwc1	$f16,3416(at)
    12b0:	3c010000 	lui	at,0x0
    12b4:	c4240d5c 	lwc1	$f4,3420(at)
    12b8:	46100482 	mul.s	$f18,$f0,$f16
    12bc:	3c013f00 	lui	at,0x3f00
    12c0:	44814000 	mtc1	at,$f8
    12c4:	8fbf0014 	lw	ra,20(sp)
    12c8:	27bd0018 	addiu	sp,sp,24
    12cc:	46049182 	mul.s	$f6,$f18,$f4
    12d0:	46083280 	add.s	$f10,$f6,$f8
    12d4:	4600540d 	trunc.w.s	$f16,$f10
    12d8:	44028000 	mfc1	v0,$f16
    12dc:	00000000 	nop
    12e0:	00021400 	sll	v0,v0,0x10
    12e4:	03e00008 	jr	ra
    12e8:	00021403 	sra	v0,v0,0x10

000012ec <func_80044ADC>:
    12ec:	27bdff90 	addiu	sp,sp,-112
    12f0:	afb00018 	sw	s0,24(sp)
    12f4:	00808025 	move	s0,a0
    12f8:	afbf001c 	sw	ra,28(sp)
    12fc:	afa50074 	sw	a1,116(sp)
    1300:	afa60078 	sw	a2,120(sp)
    1304:	0c000000 	jal	0 <func_800437F0>
    1308:	87a40076 	lh	a0,118(sp)
    130c:	e7a0003c 	swc1	$f0,60(sp)
    1310:	0c000000 	jal	0 <func_800437F0>
    1314:	87a40076 	lh	a0,118(sp)
    1318:	8e040090 	lw	a0,144(s0)
    131c:	0c000000 	jal	0 <func_800437F0>
    1320:	e7a00038 	swc1	$f0,56(sp)
    1324:	3c020000 	lui	v0,0x0
    1328:	8c420000 	lw	v0,0(v0)
    132c:	3c010000 	lui	at,0x0
    1330:	c4320000 	lwc1	$f18,0(at)
    1334:	844e01ba 	lh	t6,442(v0)
    1338:	844f01b6 	lh	t7,438(v0)
    133c:	845801b8 	lh	t8,440(v0)
    1340:	448e2000 	mtc1	t6,$f4
    1344:	448f5000 	mtc1	t7,$f10
    1348:	c7ac0038 	lwc1	$f12,56(sp)
    134c:	468021a0 	cvt.s.w	$f6,$f4
    1350:	87b9007a 	lh	t9,122(sp)
    1354:	3c010000 	lui	at,0x0
    1358:	46805120 	cvt.s.w	$f4,$f10
    135c:	46123202 	mul.s	$f8,$f6,$f18
    1360:	00000000 	nop
    1364:	46004082 	mul.s	$f2,$f8,$f0
    1368:	44984000 	mtc1	t8,$f8
    136c:	46122182 	mul.s	$f6,$f4,$f18
    1370:	468042a0 	cvt.s.w	$f10,$f8
    1374:	46003402 	mul.s	$f16,$f6,$f0
    1378:	c6060094 	lwc1	$f6,148(s0)
    137c:	e7a60064 	swc1	$f6,100(sp)
    1380:	46125102 	mul.s	$f4,$f10,$f18
    1384:	c6080104 	lwc1	$f8,260(s0)
    1388:	c7a6003c 	lwc1	$f6,60(sp)
    138c:	46024280 	add.s	$f10,$f8,$f2
    1390:	46002382 	mul.s	$f14,$f4,$f0
    1394:	e7aa0068 	swc1	$f10,104(sp)
    1398:	46068202 	mul.s	$f8,$f16,$f6
    139c:	c604009c 	lwc1	$f4,156(s0)
    13a0:	c7aa0064 	lwc1	$f10,100(sp)
    13a4:	c7a60068 	lwc1	$f6,104(sp)
    13a8:	e7a4006c 	swc1	$f4,108(sp)
    13ac:	e7a6005c 	swc1	$f6,92(sp)
    13b0:	460a4100 	add.s	$f4,$f8,$f10
    13b4:	460c8202 	mul.s	$f8,$f16,$f12
    13b8:	c7aa006c 	lwc1	$f10,108(sp)
    13bc:	e7a40058 	swc1	$f4,88(sp)
    13c0:	460a4100 	add.s	$f4,$f8,$f10
    13c4:	17200009 	bnez	t9,13ec <func_80044ADC+0x100>
    13c8:	e7a40060 	swc1	$f4,96(sp)
    13cc:	8e08008c 	lw	t0,140(s0)
    13d0:	3c050000 	lui	a1,0x0
    13d4:	24a50000 	addiu	a1,a1,0
    13d8:	8d09009c 	lw	t1,156(t0)
    13dc:	27a40064 	addiu	a0,sp,100
    13e0:	312a0001 	andi	t2,t1,0x1
    13e4:	15400022 	bnez	t2,1470 <func_80044ADC+0x184>
    13e8:	00000000 	nop
    13ec:	c7b2003c 	lwc1	$f18,60(sp)
    13f0:	c7aa0064 	lwc1	$f10,100(sp)
    13f4:	c7a8006c 	lwc1	$f8,108(sp)
    13f8:	46127482 	mul.s	$f18,$f14,$f18
    13fc:	c7a60068 	lwc1	$f6,104(sp)
    1400:	3c060000 	lui	a2,0x0
    1404:	460c7102 	mul.s	$f4,$f14,$f12
    1408:	e4260000 	swc1	$f6,0(at)
    140c:	02002025 	move	a0,s0
    1410:	27a50064 	addiu	a1,sp,100
    1414:	24c60000 	addiu	a2,a2,0
    1418:	460a9280 	add.s	$f10,$f18,$f10
    141c:	e7ae002c 	swc1	$f14,44(sp)
    1420:	e7b00030 	swc1	$f16,48(sp)
    1424:	46082200 	add.s	$f8,$f4,$f8
    1428:	e42a0000 	swc1	$f10,0(at)
    142c:	3c010000 	lui	at,0x0
    1430:	0c000000 	jal	0 <func_800437F0>
    1434:	e4280000 	swc1	$f8,0(at)
    1438:	87ab007a 	lh	t3,122(sp)
    143c:	11600006 	beqz	t3,1458 <func_80044ADC+0x16c>
    1440:	00000000 	nop
    1444:	c6120104 	lwc1	$f18,260(s0)
    1448:	3c010000 	lui	at,0x0
    144c:	e4320000 	swc1	$f18,0(at)
    1450:	3c010000 	lui	at,0x0
    1454:	e4320000 	swc1	$f18,0(at)
    1458:	3c010000 	lui	at,0x0
    145c:	c4300000 	lwc1	$f16,0(at)
    1460:	3c010000 	lui	at,0x0
    1464:	c4320000 	lwc1	$f18,0(at)
    1468:	10000048 	b	158c <func_80044ADC+0x2a0>
    146c:	c6020104 	lwc1	$f2,260(s0)
    1470:	0c000000 	jal	0 <func_800437F0>
    1474:	e7b00030 	swc1	$f16,48(sp)
    1478:	3c0140a0 	lui	at,0x40a0
    147c:	44811000 	mtc1	at,$f2
    1480:	3c010000 	lui	at,0x0
    1484:	c4260000 	lwc1	$f6,0(at)
    1488:	3c010000 	lui	at,0x0
    148c:	c4280000 	lwc1	$f8,0(at)
    1490:	3c010000 	lui	at,0x0
    1494:	e7a0002c 	swc1	$f0,44(sp)
    1498:	46024282 	mul.s	$f10,$f8,$f2
    149c:	c4280000 	lwc1	$f8,0(at)
    14a0:	27a70034 	addiu	a3,sp,52
    14a4:	02002025 	move	a0,s0
    14a8:	27a5004c 	addiu	a1,sp,76
    14ac:	27a60058 	addiu	a2,sp,88
    14b0:	460a3100 	add.s	$f4,$f6,$f10
    14b4:	e4240000 	swc1	$f4,0(at)
    14b8:	3c010000 	lui	at,0x0
    14bc:	c4260000 	lwc1	$f6,0(at)
    14c0:	3c010000 	lui	at,0x0
    14c4:	46023282 	mul.s	$f10,$f6,$f2
    14c8:	460a4100 	add.s	$f4,$f8,$f10
    14cc:	e4240000 	swc1	$f4,0(at)
    14d0:	3c010000 	lui	at,0x0
    14d4:	c4260000 	lwc1	$f6,0(at)
    14d8:	3c010000 	lui	at,0x0
    14dc:	c4280000 	lwc1	$f8,0(at)
    14e0:	3c010000 	lui	at,0x0
    14e4:	46024282 	mul.s	$f10,$f8,$f2
    14e8:	c7a80030 	lwc1	$f8,48(sp)
    14ec:	4608003c 	c.lt.s	$f0,$f8
    14f0:	460a3100 	add.s	$f4,$f6,$f10
    14f4:	c7a6002c 	lwc1	$f6,44(sp)
    14f8:	4500000a 	bc1f	1524 <func_80044ADC+0x238>
    14fc:	e4240000 	swc1	$f4,0(at)
    1500:	3c060000 	lui	a2,0x0
    1504:	e7a60030 	swc1	$f6,48(sp)
    1508:	24c60000 	addiu	a2,a2,0
    150c:	02002025 	move	a0,s0
    1510:	0c000000 	jal	0 <func_800437F0>
    1514:	27a5004c 	addiu	a1,sp,76
    1518:	46000406 	mov.s	$f16,$f0
    151c:	1000000e 	b	1558 <func_80044ADC+0x26c>
    1520:	46000486 	mov.s	$f18,$f0
    1524:	0c000000 	jal	0 <func_800437F0>
    1528:	27a70034 	addiu	a3,sp,52
    152c:	3c060000 	lui	a2,0x0
    1530:	3c010000 	lui	at,0x0
    1534:	e4200000 	swc1	$f0,0(at)
    1538:	24c60000 	addiu	a2,a2,0
    153c:	02002025 	move	a0,s0
    1540:	27a5004c 	addiu	a1,sp,76
    1544:	0c000000 	jal	0 <func_800437F0>
    1548:	27a70034 	addiu	a3,sp,52
    154c:	3c010000 	lui	at,0x0
    1550:	c4320000 	lwc1	$f18,0(at)
    1554:	46000406 	mov.s	$f16,$f0
    1558:	3c01c6fa 	lui	at,0xc6fa
    155c:	44816000 	mtc1	at,$f12
    1560:	00000000 	nop
    1564:	460c9032 	c.eq.s	$f18,$f12
    1568:	00000000 	nop
    156c:	45020003 	bc1fl	157c <func_80044ADC+0x290>
    1570:	460c0032 	c.eq.s	$f0,$f12
    1574:	c6120104 	lwc1	$f18,260(s0)
    1578:	460c0032 	c.eq.s	$f0,$f12
    157c:	c6020104 	lwc1	$f2,260(s0)
    1580:	45000002 	bc1f	158c <func_80044ADC+0x2a0>
    1584:	00000000 	nop
    1588:	46009406 	mov.s	$f16,$f18
    158c:	3c0c0000 	lui	t4,0x0
    1590:	8d8c0000 	lw	t4,0(t4)
    1594:	3c010000 	lui	at,0x0
    1598:	c4280000 	lwc1	$f8,0(at)
    159c:	858d01bc 	lh	t5,444(t4)
    15a0:	3c013f80 	lui	at,0x3f80
    15a4:	46029181 	sub.s	$f6,$f18,$f2
    15a8:	448d5000 	mtc1	t5,$f10
    15ac:	c7ae0030 	lwc1	$f14,48(sp)
    15b0:	46805120 	cvt.s.w	$f4,$f10
    15b4:	44815000 	mtc1	at,$f10
    15b8:	3c010000 	lui	at,0x0
    15bc:	e4300000 	swc1	$f16,0(at)
    15c0:	3c010000 	lui	at,0x0
    15c4:	e4320000 	swc1	$f18,0(at)
    15c8:	46082002 	mul.s	$f0,$f4,$f8
    15cc:	46028201 	sub.s	$f8,$f16,$f2
    15d0:	46005101 	sub.s	$f4,$f10,$f0
    15d4:	46060302 	mul.s	$f12,$f0,$f6
    15d8:	00000000 	nop
    15dc:	46082182 	mul.s	$f6,$f4,$f8
    15e0:	0c000000 	jal	0 <func_800437F0>
    15e4:	e7a60040 	swc1	$f6,64(sp)
    15e8:	3c010000 	lui	at,0x0
    15ec:	c42a0000 	lwc1	$f10,0(at)
    15f0:	3c010000 	lui	at,0x0
    15f4:	c4280000 	lwc1	$f8,0(at)
    15f8:	460a0102 	mul.s	$f4,$f0,$f10
    15fc:	3c013f00 	lui	at,0x3f00
    1600:	44815000 	mtc1	at,$f10
    1604:	c7ac0040 	lwc1	$f12,64(sp)
    1608:	c7ae002c 	lwc1	$f14,44(sp)
    160c:	46082182 	mul.s	$f6,$f4,$f8
    1610:	460a3100 	add.s	$f4,$f6,$f10
    1614:	4600220d 	trunc.w.s	$f8,$f4
    1618:	44104000 	mfc1	s0,$f8
    161c:	00000000 	nop
    1620:	00108400 	sll	s0,s0,0x10
    1624:	0c000000 	jal	0 <func_800437F0>
    1628:	00108403 	sra	s0,s0,0x10
    162c:	3c010000 	lui	at,0x0
    1630:	c4260000 	lwc1	$f6,0(at)
    1634:	3c010000 	lui	at,0x0
    1638:	c4240000 	lwc1	$f4,0(at)
    163c:	46060282 	mul.s	$f10,$f0,$f6
    1640:	3c013f00 	lui	at,0x3f00
    1644:	44813000 	mtc1	at,$f6
    1648:	8fbf001c 	lw	ra,28(sp)
    164c:	46045202 	mul.s	$f8,$f10,$f4
    1650:	46064280 	add.s	$f10,$f8,$f6
    1654:	4600510d 	trunc.w.s	$f4,$f10
    1658:	44082000 	mfc1	t0,$f4
    165c:	00000000 	nop
    1660:	02081021 	addu	v0,s0,t0
    1664:	00021400 	sll	v0,v0,0x10
    1668:	8fb00018 	lw	s0,24(sp)
    166c:	27bd0070 	addiu	sp,sp,112
    1670:	03e00008 	jr	ra
    1674:	00021403 	sra	v0,v0,0x10

00001678 <func_80044E68>:
    1678:	27bdff38 	addiu	sp,sp,-200
    167c:	afbf0024 	sw	ra,36(sp)
    1680:	afa400c8 	sw	a0,200(sp)
    1684:	afa500cc 	sw	a1,204(sp)
    1688:	f7b60018 	sdc1	$f22,24(sp)
    168c:	f7b40010 	sdc1	$f20,16(sp)
    1690:	afa600d0 	sw	a2,208(sp)
    1694:	afa700d4 	sw	a3,212(sp)
    1698:	0c000000 	jal	0 <func_800437F0>
    169c:	87a400ce 	lh	a0,206(sp)
    16a0:	46000586 	mov.s	$f22,$f0
    16a4:	0c000000 	jal	0 <func_800437F0>
    16a8:	87a400ce 	lh	a0,206(sp)
    16ac:	46000506 	mov.s	$f20,$f0
    16b0:	0c000000 	jal	0 <func_800437F0>
    16b4:	87a400d2 	lh	a0,210(sp)
    16b8:	e7a000bc 	swc1	$f0,188(sp)
    16bc:	0c000000 	jal	0 <func_800437F0>
    16c0:	87a400d2 	lh	a0,210(sp)
    16c4:	87a400d6 	lh	a0,214(sp)
    16c8:	e7a000b8 	swc1	$f0,184(sp)
    16cc:	00042023 	negu	a0,a0
    16d0:	00042400 	sll	a0,a0,0x10
    16d4:	00042403 	sra	a0,a0,0x10
    16d8:	0c000000 	jal	0 <func_800437F0>
    16dc:	afa40060 	sw	a0,96(sp)
    16e0:	8fa40060 	lw	a0,96(sp)
    16e4:	0c000000 	jal	0 <func_800437F0>
    16e8:	e7a000b4 	swc1	$f0,180(sp)
    16ec:	4600b107 	neg.s	$f4,$f22
    16f0:	c7a600bc 	lwc1	$f6,188(sp)
    16f4:	e7a40060 	swc1	$f4,96(sp)
    16f8:	c7aa0060 	lwc1	$f10,96(sp)
    16fc:	3c013f80 	lui	at,0x3f80
    1700:	44812000 	mtc1	at,$f4
    1704:	46065402 	mul.s	$f16,$f10,$f6
    1708:	e7aa0028 	swc1	$f10,40(sp)
    170c:	46002381 	sub.s	$f14,$f4,$f0
    1710:	4606a082 	mul.s	$f2,$f20,$f6
    1714:	c7a400b8 	lwc1	$f4,184(sp)
    1718:	27b900a4 	addiu	t9,sp,164
    171c:	8fa200c8 	lw	v0,200(sp)
    1720:	46021202 	mul.s	$f8,$f2,$f2
    1724:	00000000 	nop
    1728:	46161182 	mul.s	$f6,$f2,$f22
    172c:	e7a80054 	swc1	$f8,84(sp)
    1730:	460e3202 	mul.s	$f8,$f6,$f14
    1734:	c7a600b4 	lwc1	$f6,180(sp)
    1738:	4604a302 	mul.s	$f12,$f20,$f4
    173c:	e7a6002c 	swc1	$f6,44(sp)
    1740:	e7a8004c 	swc1	$f8,76(sp)
    1744:	46066282 	mul.s	$f10,$f12,$f6
    1748:	e7aa0044 	swc1	$f10,68(sp)
    174c:	c7aa0028 	lwc1	$f10,40(sp)
    1750:	e7a80028 	swc1	$f8,40(sp)
    1754:	c7a80054 	lwc1	$f8,84(sp)
    1758:	46045482 	mul.s	$f18,$f10,$f4
    175c:	00000000 	nop
    1760:	46026282 	mul.s	$f10,$f12,$f2
    1764:	00000000 	nop
    1768:	460e5102 	mul.s	$f4,$f10,$f14
    176c:	00000000 	nop
    1770:	4606b282 	mul.s	$f10,$f22,$f6
    1774:	e7a40040 	swc1	$f4,64(sp)
    1778:	e7aa003c 	swc1	$f10,60(sp)
    177c:	44815000 	mtc1	at,$f10
    1780:	00000000 	nop
    1784:	46085281 	sub.s	$f10,$f10,$f8
    1788:	46005282 	mul.s	$f10,$f10,$f0
    178c:	46085280 	add.s	$f10,$f10,$f8
    1790:	460a8202 	mul.s	$f8,$f16,$f10
    1794:	c7aa0028 	lwc1	$f10,40(sp)
    1798:	e7a40028 	swc1	$f4,40(sp)
    179c:	c7a40044 	lwc1	$f4,68(sp)
    17a0:	46045181 	sub.s	$f6,$f10,$f4
    17a4:	e7a40030 	swc1	$f4,48(sp)
    17a8:	4606a182 	mul.s	$f6,$f20,$f6
    17ac:	46064200 	add.s	$f8,$f8,$f6
    17b0:	c7a60028 	lwc1	$f6,40(sp)
    17b4:	e7aa0028 	swc1	$f10,40(sp)
    17b8:	c7aa003c 	lwc1	$f10,60(sp)
    17bc:	460a3100 	add.s	$f4,$f6,$f10
    17c0:	46049102 	mul.s	$f4,$f18,$f4
    17c4:	46044200 	add.s	$f8,$f8,$f4
    17c8:	4616b102 	mul.s	$f4,$f22,$f22
    17cc:	e7a800a4 	swc1	$f8,164(sp)
    17d0:	460cb202 	mul.s	$f8,$f22,$f12
    17d4:	e7a40054 	swc1	$f4,84(sp)
    17d8:	460e4102 	mul.s	$f4,$f8,$f14
    17dc:	c7a8002c 	lwc1	$f8,44(sp)
    17e0:	e7a6002c 	swc1	$f6,44(sp)
    17e4:	c7a60030 	lwc1	$f6,48(sp)
    17e8:	46081202 	mul.s	$f8,$f2,$f8
    17ec:	e7aa0030 	swc1	$f10,48(sp)
    17f0:	c7aa0054 	lwc1	$f10,84(sp)
    17f4:	e7a40050 	swc1	$f4,80(sp)
    17f8:	e7a80058 	swc1	$f8,88(sp)
    17fc:	c7a80028 	lwc1	$f8,40(sp)
    1800:	46064200 	add.s	$f8,$f8,$f6
    1804:	46088182 	mul.s	$f6,$f16,$f8
    1808:	44814000 	mtc1	at,$f8
    180c:	00000000 	nop
    1810:	460a4201 	sub.s	$f8,$f8,$f10
    1814:	46004282 	mul.s	$f10,$f8,$f0
    1818:	c7a80054 	lwc1	$f8,84(sp)
    181c:	46085280 	add.s	$f10,$f10,$f8
    1820:	460aa202 	mul.s	$f8,$f20,$f10
    1824:	46083280 	add.s	$f10,$f6,$f8
    1828:	c7a60058 	lwc1	$f6,88(sp)
    182c:	46062201 	sub.s	$f8,$f4,$f6
    1830:	46089182 	mul.s	$f6,$f18,$f8
    1834:	46065200 	add.s	$f8,$f10,$f6
    1838:	460c6282 	mul.s	$f10,$f12,$f12
    183c:	c7a6002c 	lwc1	$f6,44(sp)
    1840:	e7a800a8 	swc1	$f8,168(sp)
    1844:	c7a80030 	lwc1	$f8,48(sp)
    1848:	e7aa0054 	swc1	$f10,84(sp)
    184c:	46083281 	sub.s	$f10,$f6,$f8
    1850:	c7a80058 	lwc1	$f8,88(sp)
    1854:	460a8182 	mul.s	$f6,$f16,$f10
    1858:	46082280 	add.s	$f10,$f4,$f8
    185c:	460aa102 	mul.s	$f4,$f20,$f10
    1860:	44815000 	mtc1	at,$f10
    1864:	46043200 	add.s	$f8,$f6,$f4
    1868:	c7a60054 	lwc1	$f6,84(sp)
    186c:	46065101 	sub.s	$f4,$f10,$f6
    1870:	c7a60054 	lwc1	$f6,84(sp)
    1874:	46002282 	mul.s	$f10,$f4,$f0
    1878:	46065100 	add.s	$f4,$f10,$f6
    187c:	46049282 	mul.s	$f10,$f18,$f4
    1880:	460a4180 	add.s	$f6,$f8,$f10
    1884:	e7a600ac 	swc1	$f6,172(sp)
    1888:	8f290000 	lw	t1,0(t9)
    188c:	ac490000 	sw	t1,0(v0)
    1890:	8f280004 	lw	t0,4(t9)
    1894:	ac480004 	sw	t0,4(v0)
    1898:	8f290008 	lw	t1,8(t9)
    189c:	ac490008 	sw	t1,8(v0)
    18a0:	8fbf0024 	lw	ra,36(sp)
    18a4:	d7b60018 	ldc1	$f22,24(sp)
    18a8:	d7b40010 	ldc1	$f20,16(sp)
    18ac:	03e00008 	jr	ra
    18b0:	27bd00c8 	addiu	sp,sp,200

000018b4 <func_800450A4>:
    18b4:	3c020000 	lui	v0,0x0
    18b8:	8c420000 	lw	v0,0(v0)
    18bc:	3c010000 	lui	at,0x0
    18c0:	c4300d78 	lwc1	$f16,3448(at)
    18c4:	844e01e6 	lh	t6,486(v0)
    18c8:	c4800100 	lwc1	$f0,256(a0)
    18cc:	44857000 	mtc1	a1,$f14
    18d0:	448e2000 	mtc1	t6,$f4
    18d4:	00000000 	nop
    18d8:	468021a0 	cvt.s.w	$f6,$f4
    18dc:	46103082 	mul.s	$f2,$f6,$f16
    18e0:	4602003c 	c.lt.s	$f0,$f2
    18e4:	00000000 	nop
    18e8:	45020004 	bc1fl	18fc <func_800450A4+0x48>
    18ec:	4600703e 	c.le.s	$f14,$f0
    18f0:	03e00008 	jr	ra
    18f4:	46001006 	mov.s	$f0,$f2
    18f8:	4600703e 	c.le.s	$f14,$f0
    18fc:	00000000 	nop
    1900:	45020004 	bc1fl	1914 <func_800450A4+0x60>
    1904:	844f01e8 	lh	t7,488(v0)
    1908:	03e00008 	jr	ra
    190c:	46007006 	mov.s	$f0,$f14
    1910:	844f01e8 	lh	t7,488(v0)
    1914:	448f4000 	mtc1	t7,$f8
    1918:	00000000 	nop
    191c:	468042a0 	cvt.s.w	$f10,$f8
    1920:	46105482 	mul.s	$f18,$f10,$f16
    1924:	00000000 	nop
    1928:	46009302 	mul.s	$f12,$f18,$f0
    192c:	00000000 	nop
    1930:	03e00008 	jr	ra
    1934:	46006006 	mov.s	$f0,$f12

00001938 <Camera_CopyModeValuesToPREG>:
    1938:	27bdffc8 	addiu	sp,sp,-56
    193c:	afb20020 	sw	s2,32(sp)
    1940:	3c120000 	lui	s2,0x0
    1944:	26520000 	addiu	s2,s2,0
    1948:	8e4e0000 	lw	t6,0(s2)
    194c:	afbf0034 	sw	ra,52(sp)
    1950:	afb60030 	sw	s6,48(sp)
    1954:	afb5002c 	sw	s5,44(sp)
    1958:	afb40028 	sw	s4,40(sp)
    195c:	afb30024 	sw	s3,36(sp)
    1960:	afb1001c 	sw	s1,28(sp)
    1964:	afb00018 	sw	s0,24(sp)
    1968:	afa5003c 	sw	a1,60(sp)
    196c:	85cf02f8 	lh	t7,760(t6)
    1970:	00058400 	sll	s0,a1,0x10
    1974:	00108403 	sra	s0,s0,0x10
    1978:	11e00007 	beqz	t7,1998 <Camera_CopyModeValuesToPREG+0x60>
    197c:	0080a825 	move	s5,a0
    1980:	3c040000 	lui	a0,0x0
    1984:	24840000 	addiu	a0,a0,0
    1988:	86a50164 	lh	a1,356(s5)
    198c:	86a60142 	lh	a2,322(s5)
    1990:	0c000000 	jal	0 <func_800437F0>
    1994:	02003825 	move	a3,s0
    1998:	86b80142 	lh	t8,322(s5)
    199c:	3c160000 	lui	s6,0x0
    19a0:	26d60000 	addiu	s6,s6,0
    19a4:	0018c8c0 	sll	t9,t8,0x3
    19a8:	02d94021 	addu	t0,s6,t9
    19ac:	8d090004 	lw	t1,4(t0)
    19b0:	0010a0c0 	sll	s4,s0,0x3
    19b4:	00008825 	move	s1,zero
    19b8:	01341021 	addu	v0,t1,s4
    19bc:	844a0002 	lh	t2,2(v0)
    19c0:	8c430004 	lw	v1,4(v0)
    19c4:	3c130000 	lui	s3,0x0
    19c8:	1940001b 	blez	t2,1a38 <Camera_CopyModeValuesToPREG+0x100>
    19cc:	00608025 	move	s0,v1
    19d0:	26730000 	addiu	s3,s3,0
    19d4:	860d0002 	lh	t5,2(s0)
    19d8:	8e4c0000 	lw	t4,0(s2)
    19dc:	860b0000 	lh	t3,0(s0)
    19e0:	000d7040 	sll	t6,t5,0x1
    19e4:	018e7821 	addu	t7,t4,t6
    19e8:	a5eb0254 	sh	t3,596(t7)
    19ec:	8e580000 	lw	t8,0(s2)
    19f0:	02602025 	move	a0,s3
    19f4:	871902f8 	lh	t9,760(t8)
    19f8:	53200005 	beqzl	t9,1a10 <Camera_CopyModeValuesToPREG+0xd8>
    19fc:	86a80142 	lh	t0,322(s5)
    1a00:	86050002 	lh	a1,2(s0)
    1a04:	0c000000 	jal	0 <func_800437F0>
    1a08:	86060000 	lh	a2,0(s0)
    1a0c:	86a80142 	lh	t0,322(s5)
    1a10:	26310001 	addiu	s1,s1,1
    1a14:	26100004 	addiu	s0,s0,4
    1a18:	000848c0 	sll	t1,t0,0x3
    1a1c:	02c95021 	addu	t2,s6,t1
    1a20:	8d4d0004 	lw	t5,4(t2)
    1a24:	01b46021 	addu	t4,t5,s4
    1a28:	858e0002 	lh	t6,2(t4)
    1a2c:	022e082a 	slt	at,s1,t6
    1a30:	5420ffe9 	bnezl	at,19d8 <Camera_CopyModeValuesToPREG+0xa0>
    1a34:	860d0002 	lh	t5,2(s0)
    1a38:	a6a0015e 	sh	zero,350(s5)
    1a3c:	8fbf0034 	lw	ra,52(sp)
    1a40:	8fb60030 	lw	s6,48(sp)
    1a44:	8fb5002c 	lw	s5,44(sp)
    1a48:	8fb40028 	lw	s4,40(sp)
    1a4c:	8fb30024 	lw	s3,36(sp)
    1a50:	8fb20020 	lw	s2,32(sp)
    1a54:	8fb1001c 	lw	s1,28(sp)
    1a58:	8fb00018 	lw	s0,24(sp)
    1a5c:	03e00008 	jr	ra
    1a60:	27bd0038 	addiu	sp,sp,56

00001a64 <Camera_CopyPREGToModeValues>:
    1a64:	27bdffd0 	addiu	sp,sp,-48
    1a68:	afbf002c 	sw	ra,44(sp)
    1a6c:	afb50028 	sw	s5,40(sp)
    1a70:	afb40024 	sw	s4,36(sp)
    1a74:	afb30020 	sw	s3,32(sp)
    1a78:	afb2001c 	sw	s2,28(sp)
    1a7c:	afb10018 	sw	s1,24(sp)
    1a80:	afb00014 	sw	s0,20(sp)
    1a84:	848e0142 	lh	t6,322(a0)
    1a88:	3c150000 	lui	s5,0x0
    1a8c:	26b50000 	addiu	s5,s5,0
    1a90:	000e78c0 	sll	t7,t6,0x3
    1a94:	84880144 	lh	t0,324(a0)
    1a98:	02afc021 	addu	t8,s5,t7
    1a9c:	8f190004 	lw	t9,4(t8)
    1aa0:	000848c0 	sll	t1,t0,0x3
    1aa4:	00809825 	move	s3,a0
    1aa8:	03291021 	addu	v0,t9,t1
    1aac:	844a0002 	lh	t2,2(v0)
    1ab0:	8c430004 	lw	v1,4(v0)
    1ab4:	00008825 	move	s1,zero
    1ab8:	1940001f 	blez	t2,1b38 <Camera_CopyPREGToModeValues+0xd4>
    1abc:	00608025 	move	s0,v1
    1ac0:	3c140000 	lui	s4,0x0
    1ac4:	3c120000 	lui	s2,0x0
    1ac8:	26520000 	addiu	s2,s2,0
    1acc:	26940000 	addiu	s4,s4,0
    1ad0:	86060002 	lh	a2,2(s0)
    1ad4:	8e4b0000 	lw	t3,0(s2)
    1ad8:	02802025 	move	a0,s4
    1adc:	00066040 	sll	t4,a2,0x1
    1ae0:	016c6821 	addu	t5,t3,t4
    1ae4:	85ae0254 	lh	t6,596(t5)
    1ae8:	a60e0000 	sh	t6,0(s0)
    1aec:	8e4f0000 	lw	t7,0(s2)
    1af0:	85f802f8 	lh	t8,760(t7)
    1af4:	53000004 	beqzl	t8,1b08 <Camera_CopyPREGToModeValues+0xa4>
    1af8:	86680142 	lh	t0,322(s3)
    1afc:	0c000000 	jal	0 <func_800437F0>
    1b00:	86050000 	lh	a1,0(s0)
    1b04:	86680142 	lh	t0,322(s3)
    1b08:	866b0144 	lh	t3,324(s3)
    1b0c:	26310001 	addiu	s1,s1,1
    1b10:	0008c8c0 	sll	t9,t0,0x3
    1b14:	02b94821 	addu	t1,s5,t9
    1b18:	8d2a0004 	lw	t2,4(t1)
    1b1c:	000b60c0 	sll	t4,t3,0x3
    1b20:	26100004 	addiu	s0,s0,4
    1b24:	014c6821 	addu	t5,t2,t4
    1b28:	85ae0002 	lh	t6,2(t5)
    1b2c:	022e082a 	slt	at,s1,t6
    1b30:	5420ffe8 	bnezl	at,1ad4 <Camera_CopyPREGToModeValues+0x70>
    1b34:	86060002 	lh	a2,2(s0)
    1b38:	8fbf002c 	lw	ra,44(sp)
    1b3c:	8fb00014 	lw	s0,20(sp)
    1b40:	8fb10018 	lw	s1,24(sp)
    1b44:	8fb2001c 	lw	s2,28(sp)
    1b48:	8fb30020 	lw	s3,32(sp)
    1b4c:	8fb40024 	lw	s4,36(sp)
    1b50:	8fb50028 	lw	s5,40(sp)
    1b54:	27bd0030 	addiu	sp,sp,48
    1b58:	03e00008 	jr	ra
    1b5c:	24020001 	li	v0,1

00001b60 <func_80045350>:
    1b60:	00042c00 	sll	a1,a0,0x10
    1b64:	00052c03 	sra	a1,a1,0x10
    1b68:	27bdffe8 	addiu	sp,sp,-24
    1b6c:	30aef000 	andi	t6,a1,0xf000
    1b70:	3401f000 	li	at,0xf000
    1b74:	afbf0014 	sw	ra,20(sp)
    1b78:	11c10026 	beq	t6,at,1c14 <func_80045350+0xb4>
    1b7c:	afa40018 	sw	a0,24(sp)
    1b80:	30a27000 	andi	v0,a1,0x7000
    1b84:	24011000 	li	at,4096
    1b88:	1041000b 	beq	v0,at,1bb8 <func_80045350+0x58>
    1b8c:	30a88000 	andi	t0,a1,0x8000
    1b90:	24012000 	li	at,8192
    1b94:	1041000d 	beq	v0,at,1bcc <func_80045350+0x6c>
    1b98:	2418001b 	li	t8,27
    1b9c:	24013000 	li	at,12288
    1ba0:	1041000e 	beq	v0,at,1bdc <func_80045350+0x7c>
    1ba4:	24190020 	li	t9,32
    1ba8:	3c020000 	lui	v0,0x0
    1bac:	24420000 	addiu	v0,v0,0
    1bb0:	1000000d 	b	1be8 <func_80045350+0x88>
    1bb4:	ac400000 	sw	zero,0(v0)
    1bb8:	3c020000 	lui	v0,0x0
    1bbc:	24420000 	addiu	v0,v0,0
    1bc0:	240f001a 	li	t7,26
    1bc4:	10000008 	b	1be8 <func_80045350+0x88>
    1bc8:	ac4f0000 	sw	t7,0(v0)
    1bcc:	3c020000 	lui	v0,0x0
    1bd0:	24420000 	addiu	v0,v0,0
    1bd4:	10000004 	b	1be8 <func_80045350+0x88>
    1bd8:	ac580000 	sw	t8,0(v0)
    1bdc:	3c020000 	lui	v0,0x0
    1be0:	24420000 	addiu	v0,v0,0
    1be4:	ac590000 	sw	t9,0(v0)
    1be8:	51000007 	beqzl	t0,1c08 <func_80045350+0xa8>
    1bec:	8c440000 	lw	a0,0(v0)
    1bf0:	8c440000 	lw	a0,0(v0)
    1bf4:	0c000000 	jal	0 <func_800437F0>
    1bf8:	a7a5001a 	sh	a1,26(sp)
    1bfc:	10000005 	b	1c14 <func_80045350+0xb4>
    1c00:	87a5001a 	lh	a1,26(sp)
    1c04:	8c440000 	lw	a0,0(v0)
    1c08:	0c000000 	jal	0 <func_800437F0>
    1c0c:	a7a5001a 	sh	a1,26(sp)
    1c10:	87a5001a 	lh	a1,26(sp)
    1c14:	30a40f00 	andi	a0,a1,0xf00
    1c18:	24010f00 	li	at,3840
    1c1c:	1081000f 	beq	a0,at,1c5c <func_80045350+0xfc>
    1c20:	00041203 	sra	v0,a0,0x8
    1c24:	00024c00 	sll	t1,v0,0x10
    1c28:	00021c00 	sll	v1,v0,0x10
    1c2c:	00095403 	sra	t2,t1,0x10
    1c30:	15400002 	bnez	t2,1c3c <func_80045350+0xdc>
    1c34:	00031c03 	sra	v1,v1,0x10
    1c38:	24030032 	li	v1,50
    1c3c:	3c020000 	lui	v0,0x0
    1c40:	24420000 	addiu	v0,v0,0
    1c44:	8c4b0000 	lw	t3,0(v0)
    1c48:	506b0005 	beql	v1,t3,1c60 <func_80045350+0x100>
    1c4c:	8fbf0014 	lw	ra,20(sp)
    1c50:	ac430000 	sw	v1,0(v0)
    1c54:	0c000000 	jal	0 <func_800437F0>
    1c58:	94440002 	lhu	a0,2(v0)
    1c5c:	8fbf0014 	lw	ra,20(sp)
    1c60:	27bd0018 	addiu	sp,sp,24
    1c64:	03e00008 	jr	ra
    1c68:	00000000 	nop

00001c6c <func_8004545C>:
    1c6c:	27bdffd0 	addiu	sp,sp,-48
    1c70:	afa7003c 	sw	a3,60(sp)
    1c74:	8fae003c 	lw	t6,60(sp)
    1c78:	8faf0040 	lw	t7,64(sp)
    1c7c:	afa60038 	sw	a2,56(sp)
    1c80:	afbf001c 	sw	ra,28(sp)
    1c84:	afa40030 	sw	a0,48(sp)
    1c88:	afa50034 	sw	a1,52(sp)
    1c8c:	00a03025 	move	a2,a1
    1c90:	27b80024 	addiu	t8,sp,36
    1c94:	8dc40018 	lw	a0,24(t6)
    1c98:	8de50018 	lw	a1,24(t7)
    1c9c:	8fa70038 	lw	a3,56(sp)
    1ca0:	0c000000 	jal	0 <func_800437F0>
    1ca4:	afb80010 	sw	t8,16(sp)
    1ca8:	1440000f 	bnez	v0,1ce8 <func_8004545C+0x7c>
    1cac:	8fa30030 	lw	v1,48(sp)
    1cb0:	3c040000 	lui	a0,0x0
    1cb4:	24840094 	addiu	a0,a0,148
    1cb8:	8fa5003c 	lw	a1,60(sp)
    1cbc:	0c000000 	jal	0 <func_800437F0>
    1cc0:	8fa60040 	lw	a2,64(sp)
    1cc4:	8fb9003c 	lw	t9,60(sp)
    1cc8:	8fa20030 	lw	v0,48(sp)
    1ccc:	8f290000 	lw	t1,0(t9)
    1cd0:	ac490000 	sw	t1,0(v0)
    1cd4:	8f280004 	lw	t0,4(t9)
    1cd8:	ac480004 	sw	t0,4(v0)
    1cdc:	8f290008 	lw	t1,8(t9)
    1ce0:	10000009 	b	1d08 <func_8004545C+0x9c>
    1ce4:	ac490008 	sw	t1,8(v0)
    1ce8:	27aa0024 	addiu	t2,sp,36
    1cec:	8d4c0000 	lw	t4,0(t2)
    1cf0:	00601025 	move	v0,v1
    1cf4:	ac6c0000 	sw	t4,0(v1)
    1cf8:	8d4b0004 	lw	t3,4(t2)
    1cfc:	ac6b0004 	sw	t3,4(v1)
    1d00:	8d4c0008 	lw	t4,8(t2)
    1d04:	ac6c0008 	sw	t4,8(v1)
    1d08:	8fbf001c 	lw	ra,28(sp)
    1d0c:	27bd0030 	addiu	sp,sp,48
    1d10:	03e00008 	jr	ra
    1d14:	00000000 	nop

00001d18 <func_80045508>:
    1d18:	27bdffa8 	addiu	sp,sp,-88
    1d1c:	afbf001c 	sw	ra,28(sp)
    1d20:	afb10018 	sw	s1,24(sp)
    1d24:	afb00014 	sw	s0,20(sp)
    1d28:	afa5005c 	sw	a1,92(sp)
    1d2c:	24820074 	addiu	v0,a0,116
    1d30:	8c4f0000 	lw	t7,0(v0)
    1d34:	24850050 	addiu	a1,a0,80
    1d38:	00c08025 	move	s0,a2
    1d3c:	accf0000 	sw	t7,0(a2)
    1d40:	8c4e0004 	lw	t6,4(v0)
    1d44:	00e08825 	move	s1,a3
    1d48:	acce0004 	sw	t6,4(a2)
    1d4c:	8c4f0008 	lw	t7,8(v0)
    1d50:	accf0008 	sw	t7,8(a2)
    1d54:	afa5002c 	sw	a1,44(sp)
    1d58:	afa40058 	sw	a0,88(sp)
    1d5c:	afa00034 	sw	zero,52(sp)
    1d60:	0c000000 	jal	0 <func_800437F0>
    1d64:	afa20028 	sw	v0,40(sp)
    1d68:	8fa30034 	lw	v1,52(sp)
    1d6c:	10400067 	beqz	v0,1f0c <func_80045508+0x1f4>
    1d70:	afa2003c 	sw	v0,60(sp)
    1d74:	8fb8002c 	lw	t8,44(sp)
    1d78:	2605000c 	addiu	a1,s0,12
    1d7c:	2604001c 	addiu	a0,s0,28
    1d80:	8f080000 	lw	t0,0(t8)
    1d84:	ae280000 	sw	t0,0(s1)
    1d88:	8f190004 	lw	t9,4(t8)
    1d8c:	ae390004 	sw	t9,4(s1)
    1d90:	8f080008 	lw	t0,8(t8)
    1d94:	ae280008 	sw	t0,8(s1)
    1d98:	0c000000 	jal	0 <func_800437F0>
    1d9c:	afa50024 	sw	a1,36(sp)
    1da0:	86090020 	lh	t1,32(s0)
    1da4:	8faa005c 	lw	t2,92(sp)
    1da8:	02203025 	move	a2,s1
    1dac:	29212ee1 	slti	at,t1,12001
    1db0:	54200004 	bnezl	at,1dc4 <func_80045508+0xac>
    1db4:	8fa40058 	lw	a0,88(sp)
    1db8:	854b0006 	lh	t3,6(t2)
    1dbc:	a60b0022 	sh	t3,34(s0)
    1dc0:	8fa40058 	lw	a0,88(sp)
    1dc4:	0c000000 	jal	0 <func_800437F0>
    1dc8:	8fa50028 	lw	a1,40(sp)
    1dcc:	14400023 	bnez	v0,1e5c <func_80045508+0x144>
    1dd0:	afa20038 	sw	v0,56(sp)
    1dd4:	87ac006a 	lh	t4,106(sp)
    1dd8:	8fae002c 	lw	t6,44(sp)
    1ddc:	318d0001 	andi	t5,t4,0x1
    1de0:	11a0001c 	beqz	t5,1e54 <func_80045508+0x13c>
    1de4:	00000000 	nop
    1de8:	8dd80000 	lw	t8,0(t6)
    1dec:	27a50040 	addiu	a1,sp,64
    1df0:	02203025 	move	a2,s1
    1df4:	ae380000 	sw	t8,0(s1)
    1df8:	8dcf0004 	lw	t7,4(t6)
    1dfc:	ae2f0004 	sw	t7,4(s1)
    1e00:	8dd80008 	lw	t8,8(t6)
    1e04:	ae380008 	sw	t8,8(s1)
    1e08:	8fb90058 	lw	t9,88(sp)
    1e0c:	8f29005c 	lw	t1,92(t9)
    1e10:	aca90000 	sw	t1,0(a1)
    1e14:	8f280060 	lw	t0,96(t9)
    1e18:	aca80004 	sw	t0,4(a1)
    1e1c:	8f290064 	lw	t1,100(t9)
    1e20:	aca90008 	sw	t1,8(a1)
    1e24:	0c000000 	jal	0 <func_800437F0>
    1e28:	8fa40058 	lw	a0,88(sp)
    1e2c:	54400004 	bnezl	v0,1e40 <func_80045508+0x128>
    1e30:	8e2a0018 	lw	t2,24(s1)
    1e34:	10000036 	b	1f10 <func_80045508+0x1f8>
    1e38:	24020003 	li	v0,3
    1e3c:	8e2a0018 	lw	t2,24(s1)
    1e40:	8e0b0018 	lw	t3,24(s0)
    1e44:	554b000c 	bnel	t2,t3,1e78 <func_80045508+0x160>
    1e48:	2630000c 	addiu	s0,s1,12
    1e4c:	10000030 	b	1f10 <func_80045508+0x1f8>
    1e50:	24020003 	li	v0,3
    1e54:	1000002e 	b	1f10 <func_80045508+0x1f8>
    1e58:	24020003 	li	v0,3
    1e5c:	8e2c0018 	lw	t4,24(s1)
    1e60:	8e0d0018 	lw	t5,24(s0)
    1e64:	558d0004 	bnel	t4,t5,1e78 <func_80045508+0x160>
    1e68:	2630000c 	addiu	s0,s1,12
    1e6c:	10000028 	b	1f10 <func_80045508+0x1f8>
    1e70:	24020003 	li	v0,3
    1e74:	2630000c 	addiu	s0,s1,12
    1e78:	02002825 	move	a1,s0
    1e7c:	0c000000 	jal	0 <func_800437F0>
    1e80:	2624001c 	addiu	a0,s1,28
    1e84:	862e0020 	lh	t6,32(s1)
    1e88:	8faf005c 	lw	t7,92(sp)
    1e8c:	02002825 	move	a1,s0
    1e90:	29c12ee1 	slti	at,t6,12001
    1e94:	54200005 	bnezl	at,1eac <func_80045508+0x194>
    1e98:	8fa8003c 	lw	t0,60(sp)
    1e9c:	85f80006 	lh	t8,6(t7)
    1ea0:	27198001 	addiu	t9,t8,-32767
    1ea4:	a6390022 	sh	t9,34(s1)
    1ea8:	8fa8003c 	lw	t0,60(sp)
    1eac:	8fa90038 	lw	t1,56(sp)
    1eb0:	11090003 	beq	t0,t1,1ec0 <func_80045508+0x1a8>
    1eb4:	00000000 	nop
    1eb8:	10000014 	b	1f0c <func_80045508+0x1f4>
    1ebc:	24030003 	li	v1,3
    1ec0:	0c000000 	jal	0 <func_800437F0>
    1ec4:	8fa40024 	lw	a0,36(sp)
    1ec8:	3c01bf00 	lui	at,0xbf00
    1ecc:	44812000 	mtc1	at,$f4
    1ed0:	3c013f00 	lui	at,0x3f00
    1ed4:	4604003c 	c.lt.s	$f0,$f4
    1ed8:	00000000 	nop
    1edc:	45020004 	bc1fl	1ef0 <func_80045508+0x1d8>
    1ee0:	44813000 	mtc1	at,$f6
    1ee4:	10000009 	b	1f0c <func_80045508+0x1f4>
    1ee8:	24030006 	li	v1,6
    1eec:	44813000 	mtc1	at,$f6
    1ef0:	24030002 	li	v1,2
    1ef4:	4600303c 	c.lt.s	$f6,$f0
    1ef8:	00000000 	nop
    1efc:	45000003 	bc1f	1f0c <func_80045508+0x1f4>
    1f00:	00000000 	nop
    1f04:	10000001 	b	1f0c <func_80045508+0x1f4>
    1f08:	24030003 	li	v1,3
    1f0c:	00601025 	move	v0,v1
    1f10:	8fbf001c 	lw	ra,28(sp)
    1f14:	8fb00014 	lw	s0,20(sp)
    1f18:	8fb10018 	lw	s1,24(sp)
    1f1c:	03e00008 	jr	ra
    1f20:	27bd0058 	addiu	sp,sp,88

00001f24 <func_80045714>:
    1f24:	27bdffd8 	addiu	sp,sp,-40
    1f28:	afa5002c 	sw	a1,44(sp)
    1f2c:	00802825 	move	a1,a0
    1f30:	afbf0014 	sw	ra,20(sp)
    1f34:	afa40028 	sw	a0,40(sp)
    1f38:	afa60030 	sw	a2,48(sp)
    1f3c:	afa70034 	sw	a3,52(sp)
    1f40:	0c000000 	jal	0 <func_800437F0>
    1f44:	27a4001c 	addiu	a0,sp,28
    1f48:	0c000000 	jal	0 <func_800437F0>
    1f4c:	87a40020 	lh	a0,32(sp)
    1f50:	87ae002e 	lh	t6,46(sp)
    1f54:	87af0022 	lh	t7,34(sp)
    1f58:	e7a00018 	swc1	$f0,24(sp)
    1f5c:	01cf2023 	subu	a0,t6,t7
    1f60:	00042400 	sll	a0,a0,0x10
    1f64:	0c000000 	jal	0 <func_800437F0>
    1f68:	00042403 	sra	a0,a0,0x10
    1f6c:	c7a40018 	lwc1	$f4,24(sp)
    1f70:	87b8002e 	lh	t8,46(sp)
    1f74:	87b90032 	lh	t9,50(sp)
    1f78:	46040002 	mul.s	$f0,$f0,$f4
    1f7c:	03192023 	subu	a0,t8,t9
    1f80:	00042400 	sll	a0,a0,0x10
    1f84:	00042403 	sra	a0,a0,0x10
    1f88:	46000005 	abs.s	$f0,$f0
    1f8c:	0c000000 	jal	0 <func_800437F0>
    1f90:	e7a00018 	swc1	$f0,24(sp)
    1f94:	c7a60018 	lwc1	$f6,24(sp)
    1f98:	c7a80034 	lwc1	$f8,52(sp)
    1f9c:	8fbf0014 	lw	ra,20(sp)
    1fa0:	27bd0028 	addiu	sp,sp,40
    1fa4:	46083282 	mul.s	$f10,$f6,$f8
    1fa8:	00000000 	nop
    1fac:	460a0002 	mul.s	$f0,$f0,$f10
    1fb0:	03e00008 	jr	ra
    1fb4:	00000000 	nop

00001fb8 <func_800457A8>:
    1fb8:	27bdffa0 	addiu	sp,sp,-96
    1fbc:	afb00020 	sw	s0,32(sp)
    1fc0:	00808025 	move	s0,a0
    1fc4:	afbf0024 	sw	ra,36(sp)
    1fc8:	afa50064 	sw	a1,100(sp)
    1fcc:	afa60068 	sw	a2,104(sp)
    1fd0:	afa7006c 	sw	a3,108(sp)
    1fd4:	0c000000 	jal	0 <func_800437F0>
    1fd8:	8c840090 	lw	a0,144(a0)
    1fdc:	c7a40068 	lwc1	$f4,104(sp)
    1fe0:	44801000 	mtc1	zero,$f2
    1fe4:	87ae006e 	lh	t6,110(sp)
    1fe8:	46040180 	add.s	$f6,$f0,$f4
    1fec:	46000386 	mov.s	$f14,$f0
    1ff0:	e7a20050 	swc1	$f2,80(sp)
    1ff4:	e7a20058 	swc1	$f2,88(sp)
    1ff8:	11c00014 	beqz	t6,204c <func_800457A8+0x94>
    1ffc:	e7a60054 	swc1	$f6,84(sp)
    2000:	3c180000 	lui	t8,0x0
    2004:	8f180000 	lw	t8,0(t8)
    2008:	8faf0064 	lw	t7,100(sp)
    200c:	860500a2 	lh	a1,162(s0)
    2010:	871901a6 	lh	t9,422(t8)
    2014:	85e60006 	lh	a2,6(t7)
    2018:	e7ae0038 	swc1	$f14,56(sp)
    201c:	44994000 	mtc1	t9,$f8
    2020:	26040108 	addiu	a0,s0,264
    2024:	46804220 	cvt.s.w	$f8,$f8
    2028:	44074000 	mfc1	a3,$f8
    202c:	0c000000 	jal	0 <func_800437F0>
    2030:	00000000 	nop
    2034:	c7ae0038 	lwc1	$f14,56(sp)
    2038:	0c000000 	jal	0 <func_800437F0>
    203c:	46000306 	mov.s	$f12,$f0
    2040:	c7aa0054 	lwc1	$f10,84(sp)
    2044:	46005401 	sub.s	$f16,$f10,$f0
    2048:	e7b00054 	swc1	$f16,84(sp)
    204c:	3c010000 	lui	at,0x0
    2050:	c4320d7c 	lwc1	$f18,3452(at)
    2054:	8e0600d0 	lw	a2,208(s0)
    2058:	8e0700cc 	lw	a3,204(s0)
    205c:	26020094 	addiu	v0,s0,148
    2060:	afa2002c 	sw	v0,44(sp)
    2064:	27a40050 	addiu	a0,sp,80
    2068:	260500e4 	addiu	a1,s0,228
    206c:	0c000000 	jal	0 <func_800437F0>
    2070:	e7b20010 	swc1	$f18,16(sp)
    2074:	8fa2002c 	lw	v0,44(sp)
    2078:	c60600e4 	lwc1	$f6,228(s0)
    207c:	3c010000 	lui	at,0x0
    2080:	c4440000 	lwc1	$f4,0(v0)
    2084:	27a40044 	addiu	a0,sp,68
    2088:	26050050 	addiu	a1,s0,80
    208c:	46062200 	add.s	$f8,$f4,$f6
    2090:	e7a80044 	swc1	$f8,68(sp)
    2094:	c61000e8 	lwc1	$f16,232(s0)
    2098:	c44a0004 	lwc1	$f10,4(v0)
    209c:	46105480 	add.s	$f18,$f10,$f16
    20a0:	c42a0d80 	lwc1	$f10,3456(at)
    20a4:	e7b20048 	swc1	$f18,72(sp)
    20a8:	c60600ec 	lwc1	$f6,236(s0)
    20ac:	c4440008 	lwc1	$f4,8(v0)
    20b0:	46062200 	add.s	$f8,$f4,$f6
    20b4:	e7a8004c 	swc1	$f8,76(sp)
    20b8:	c6000100 	lwc1	$f0,256(s0)
    20bc:	e7aa0010 	swc1	$f10,16(sp)
    20c0:	44060000 	mfc1	a2,$f0
    20c4:	44070000 	mfc1	a3,$f0
    20c8:	0c000000 	jal	0 <func_800437F0>
    20cc:	00000000 	nop
    20d0:	8fbf0024 	lw	ra,36(sp)
    20d4:	8fb00020 	lw	s0,32(sp)
    20d8:	27bd0060 	addiu	sp,sp,96
    20dc:	03e00008 	jr	ra
    20e0:	24020001 	li	v0,1

000020e4 <func_800458D4>:
    20e4:	27bdff90 	addiu	sp,sp,-112
    20e8:	afb0001c 	sw	s0,28(sp)
    20ec:	00808025 	move	s0,a0
    20f0:	afbf0024 	sw	ra,36(sp)
    20f4:	afb10020 	sw	s1,32(sp)
    20f8:	afa60078 	sw	a2,120(sp)
    20fc:	afa7007c 	sw	a3,124(sp)
    2100:	00a08825 	move	s1,a1
    2104:	0c000000 	jal	0 <func_800437F0>
    2108:	8c840090 	lw	a0,144(a0)
    210c:	c7a40078 	lwc1	$f4,120(sp)
    2110:	44801000 	mtc1	zero,$f2
    2114:	87ae0082 	lh	t6,130(sp)
    2118:	46040180 	add.s	$f6,$f0,$f4
    211c:	e7a20060 	swc1	$f2,96(sp)
    2120:	e7a20068 	swc1	$f2,104(sp)
    2124:	11c00010 	beqz	t6,2168 <func_800458D4+0x84>
    2128:	e7a60064 	swc1	$f6,100(sp)
    212c:	3c0f0000 	lui	t7,0x0
    2130:	8def0000 	lw	t7,0(t7)
    2134:	26040108 	addiu	a0,s0,264
    2138:	860500a2 	lh	a1,162(s0)
    213c:	85f801a6 	lh	t8,422(t7)
    2140:	86260006 	lh	a2,6(s1)
    2144:	44984000 	mtc1	t8,$f8
    2148:	00000000 	nop
    214c:	46804220 	cvt.s.w	$f8,$f8
    2150:	44074000 	mfc1	a3,$f8
    2154:	0c000000 	jal	0 <func_800437F0>
    2158:	00000000 	nop
    215c:	c7aa0064 	lwc1	$f10,100(sp)
    2160:	46005401 	sub.s	$f16,$f10,$f0
    2164:	e7b00064 	swc1	$f16,100(sp)
    2168:	8fb9007c 	lw	t9,124(sp)
    216c:	26110094 	addiu	s1,s0,148
    2170:	c6320004 	lwc1	$f18,4(s1)
    2174:	c7240000 	lwc1	$f4,0(t9)
    2178:	26040050 	addiu	a0,s0,80
    217c:	afa40030 	sw	a0,48(sp)
    2180:	46049181 	sub.s	$f6,$f18,$f4
    2184:	2605005c 	addiu	a1,s0,92
    2188:	0c000000 	jal	0 <func_800437F0>
    218c:	e7a60048 	swc1	$f6,72(sp)
    2190:	c7ac0048 	lwc1	$f12,72(sp)
    2194:	0c000000 	jal	0 <func_800437F0>
    2198:	46000386 	mov.s	$f14,$f0
    219c:	3c020000 	lui	v0,0x0
    21a0:	8c420000 	lw	v0,0(v0)
    21a4:	3c010000 	lui	at,0x0
    21a8:	c42c0000 	lwc1	$f12,0(at)
    21ac:	844801d4 	lh	t0,468(v0)
    21b0:	46000386 	mov.s	$f14,$f0
    21b4:	44884000 	mtc1	t0,$f8
    21b8:	00000000 	nop
    21bc:	468042a0 	cvt.s.w	$f10,$f8
    21c0:	460c5082 	mul.s	$f2,$f10,$f12
    21c4:	4600103c 	c.lt.s	$f2,$f0
    21c8:	00000000 	nop
    21cc:	4502000a 	bc1fl	21f8 <func_800458D4+0x114>
    21d0:	844901d6 	lh	t1,470(v0)
    21d4:	0c000000 	jal	0 <func_800437F0>
    21d8:	46027301 	sub.s	$f12,$f14,$f2
    21dc:	3c013f80 	lui	at,0x3f80
    21e0:	44818000 	mtc1	at,$f16
    21e4:	3c020000 	lui	v0,0x0
    21e8:	8c420000 	lw	v0,0(v0)
    21ec:	10000015 	b	2244 <func_800458D4+0x160>
    21f0:	46008081 	sub.s	$f2,$f16,$f0
    21f4:	844901d6 	lh	t1,470(v0)
    21f8:	3c013f80 	lui	at,0x3f80
    21fc:	44899000 	mtc1	t1,$f18
    2200:	00000000 	nop
    2204:	46809120 	cvt.s.w	$f4,$f18
    2208:	460c2082 	mul.s	$f2,$f4,$f12
    220c:	4602003c 	c.lt.s	$f0,$f2
    2210:	00000000 	nop
    2214:	4502000a 	bc1fl	2240 <func_800458D4+0x15c>
    2218:	44811000 	mtc1	at,$f2
    221c:	0c000000 	jal	0 <func_800437F0>
    2220:	460e1301 	sub.s	$f12,$f2,$f14
    2224:	3c013f80 	lui	at,0x3f80
    2228:	44813000 	mtc1	at,$f6
    222c:	3c020000 	lui	v0,0x0
    2230:	8c420000 	lw	v0,0(v0)
    2234:	10000003 	b	2244 <func_800458D4+0x160>
    2238:	46003081 	sub.s	$f2,$f6,$f0
    223c:	44811000 	mtc1	at,$f2
    2240:	00000000 	nop
    2244:	c7aa0048 	lwc1	$f10,72(sp)
    2248:	c7a80064 	lwc1	$f8,100(sp)
    224c:	3c010000 	lui	at,0x0
    2250:	46025402 	mul.s	$f16,$f10,$f2
    2254:	c4200000 	lwc1	$f0,0(at)
    2258:	3c010000 	lui	at,0x0
    225c:	27a40060 	addiu	a0,sp,96
    2260:	260500e4 	addiu	a1,s0,228
    2264:	46104481 	sub.s	$f18,$f8,$f16
    2268:	e7b20064 	swc1	$f18,100(sp)
    226c:	844a01ce 	lh	t2,462(v0)
    2270:	844b01d0 	lh	t3,464(v0)
    2274:	448a2000 	mtc1	t2,$f4
    2278:	448b4000 	mtc1	t3,$f8
    227c:	468021a0 	cvt.s.w	$f6,$f4
    2280:	c4240000 	lwc1	$f4,0(at)
    2284:	e7a40010 	swc1	$f4,16(sp)
    2288:	46804420 	cvt.s.w	$f16,$f8
    228c:	46003282 	mul.s	$f10,$f6,$f0
    2290:	00000000 	nop
    2294:	46008482 	mul.s	$f18,$f16,$f0
    2298:	44065000 	mfc1	a2,$f10
    229c:	44079000 	mfc1	a3,$f18
    22a0:	0c000000 	jal	0 <func_800437F0>
    22a4:	00000000 	nop
    22a8:	c6260000 	lwc1	$f6,0(s1)
    22ac:	c60a00e4 	lwc1	$f10,228(s0)
    22b0:	3c010000 	lui	at,0x0
    22b4:	27a40054 	addiu	a0,sp,84
    22b8:	460a3200 	add.s	$f8,$f6,$f10
    22bc:	8fa50030 	lw	a1,48(sp)
    22c0:	e7a80054 	swc1	$f8,84(sp)
    22c4:	c61200e8 	lwc1	$f18,232(s0)
    22c8:	c6300004 	lwc1	$f16,4(s1)
    22cc:	46128100 	add.s	$f4,$f16,$f18
    22d0:	c4300000 	lwc1	$f16,0(at)
    22d4:	e7a40058 	swc1	$f4,88(sp)
    22d8:	c60a00ec 	lwc1	$f10,236(s0)
    22dc:	c6260008 	lwc1	$f6,8(s1)
    22e0:	460a3200 	add.s	$f8,$f6,$f10
    22e4:	e7a8005c 	swc1	$f8,92(sp)
    22e8:	c6000100 	lwc1	$f0,256(s0)
    22ec:	e7b00010 	swc1	$f16,16(sp)
    22f0:	44060000 	mfc1	a2,$f0
    22f4:	44070000 	mfc1	a3,$f0
    22f8:	0c000000 	jal	0 <func_800437F0>
    22fc:	00000000 	nop
    2300:	8fbf0024 	lw	ra,36(sp)
    2304:	8fb0001c 	lw	s0,28(sp)
    2308:	8fb10020 	lw	s1,32(sp)
    230c:	27bd0070 	addiu	sp,sp,112
    2310:	03e00008 	jr	ra
    2314:	24020001 	li	v0,1

00002318 <func_80045B08>:
    2318:	27bdffa8 	addiu	sp,sp,-88
    231c:	afb10020 	sw	s1,32(sp)
    2320:	afb0001c 	sw	s0,28(sp)
    2324:	00808025 	move	s0,a0
    2328:	00078c00 	sll	s1,a3,0x10
    232c:	afbf0024 	sw	ra,36(sp)
    2330:	afa5005c 	sw	a1,92(sp)
    2334:	afa60060 	sw	a2,96(sp)
    2338:	afa70064 	sw	a3,100(sp)
    233c:	00118c03 	sra	s1,s1,0x10
    2340:	0c000000 	jal	0 <func_800437F0>
    2344:	8c840090 	lw	a0,144(a0)
    2348:	c7a40060 	lwc1	$f4,96(sp)
    234c:	44801000 	mtc1	zero,$f2
    2350:	00112400 	sll	a0,s1,0x10
    2354:	46040180 	add.s	$f6,$f0,$f4
    2358:	00042403 	sra	a0,a0,0x10
    235c:	e7a20048 	swc1	$f2,72(sp)
    2360:	e7a20050 	swc1	$f2,80(sp)
    2364:	0c000000 	jal	0 <func_800437F0>
    2368:	e7a6004c 	swc1	$f6,76(sp)
    236c:	44804000 	mtc1	zero,$f8
    2370:	e7a00034 	swc1	$f0,52(sp)
    2374:	8faf005c 	lw	t7,92(sp)
    2378:	4608003c 	c.lt.s	$f0,$f8
    237c:	8fa8005c 	lw	t0,92(sp)
    2380:	45000009 	bc1f	23a8 <func_80045B08+0x90>
    2384:	26110094 	addiu	s1,s0,148
    2388:	862e000e 	lh	t6,14(s1)
    238c:	85f80006 	lh	t8,6(t7)
    2390:	01d82023 	subu	a0,t6,t8
    2394:	00042400 	sll	a0,a0,0x10
    2398:	0c000000 	jal	0 <func_800437F0>
    239c:	00042403 	sra	a0,a0,0x10
    23a0:	10000009 	b	23c8 <func_80045B08+0xb0>
    23a4:	46000086 	mov.s	$f2,$f0
    23a8:	26110094 	addiu	s1,s0,148
    23ac:	8639000e 	lh	t9,14(s1)
    23b0:	85090006 	lh	t1,6(t0)
    23b4:	03292023 	subu	a0,t9,t1
    23b8:	00042400 	sll	a0,a0,0x10
    23bc:	0c000000 	jal	0 <func_800437F0>
    23c0:	00042403 	sra	a0,a0,0x10
    23c4:	46000087 	neg.s	$f2,$f0
    23c8:	3c0a0000 	lui	t2,0x0
    23cc:	8d4a0000 	lw	t2,0(t2)
    23d0:	c7aa0034 	lwc1	$f10,52(sp)
    23d4:	c7a8004c 	lwc1	$f8,76(sp)
    23d8:	854b01a6 	lh	t3,422(t2)
    23dc:	46025402 	mul.s	$f16,$f10,$f2
    23e0:	3c010000 	lui	at,0x0
    23e4:	448b9000 	mtc1	t3,$f18
    23e8:	27a40048 	addiu	a0,sp,72
    23ec:	260500e4 	addiu	a1,s0,228
    23f0:	46809120 	cvt.s.w	$f4,$f18
    23f4:	c4320d94 	lwc1	$f18,3476(at)
    23f8:	46048182 	mul.s	$f6,$f16,$f4
    23fc:	46064281 	sub.s	$f10,$f8,$f6
    2400:	e7aa004c 	swc1	$f10,76(sp)
    2404:	8e0700cc 	lw	a3,204(s0)
    2408:	8e0600d0 	lw	a2,208(s0)
    240c:	0c000000 	jal	0 <func_800437F0>
    2410:	e7b20010 	swc1	$f18,16(sp)
    2414:	c6300000 	lwc1	$f16,0(s1)
    2418:	c60400e4 	lwc1	$f4,228(s0)
    241c:	3c010000 	lui	at,0x0
    2420:	27a4003c 	addiu	a0,sp,60
    2424:	46048200 	add.s	$f8,$f16,$f4
    2428:	26050050 	addiu	a1,s0,80
    242c:	e7a8003c 	swc1	$f8,60(sp)
    2430:	c60a00e8 	lwc1	$f10,232(s0)
    2434:	c6260004 	lwc1	$f6,4(s1)
    2438:	460a3480 	add.s	$f18,$f6,$f10
    243c:	c4260d98 	lwc1	$f6,3480(at)
    2440:	e7b20040 	swc1	$f18,64(sp)
    2444:	c60400ec 	lwc1	$f4,236(s0)
    2448:	c6300008 	lwc1	$f16,8(s1)
    244c:	46048200 	add.s	$f8,$f16,$f4
    2450:	e7a80044 	swc1	$f8,68(sp)
    2454:	c6000100 	lwc1	$f0,256(s0)
    2458:	e7a60010 	swc1	$f6,16(sp)
    245c:	44060000 	mfc1	a2,$f0
    2460:	44070000 	mfc1	a3,$f0
    2464:	0c000000 	jal	0 <func_800437F0>
    2468:	00000000 	nop
    246c:	8fbf0024 	lw	ra,36(sp)
    2470:	8fb0001c 	lw	s0,28(sp)
    2474:	8fb10020 	lw	s1,32(sp)
    2478:	27bd0058 	addiu	sp,sp,88
    247c:	03e00008 	jr	ra
    2480:	24020001 	li	v0,1

00002484 <func_80045C74>:
    2484:	27bdff80 	addiu	sp,sp,-128
    2488:	afb00028 	sw	s0,40(sp)
    248c:	f7b40020 	sdc1	$f20,32(sp)
    2490:	4486a000 	mtc1	a2,$f20
    2494:	00808025 	move	s0,a0
    2498:	afbf002c 	sw	ra,44(sp)
    249c:	afa50084 	sw	a1,132(sp)
    24a0:	afa7008c 	sw	a3,140(sp)
    24a4:	0c000000 	jal	0 <func_800437F0>
    24a8:	8c840090 	lw	a0,144(a0)
    24ac:	46140100 	add.s	$f4,$f0,$f20
    24b0:	44801000 	mtc1	zero,$f2
    24b4:	3c020000 	lui	v0,0x0
    24b8:	8c420000 	lw	v0,0(v0)
    24bc:	e7a40074 	swc1	$f4,116(sp)
    24c0:	e7a20070 	swc1	$f2,112(sp)
    24c4:	e7a20078 	swc1	$f2,120(sp)
    24c8:	844e02ec 	lh	t6,748(v0)
    24cc:	87af0092 	lh	t7,146(sp)
    24d0:	51c00013 	beqzl	t6,2520 <func_80045C74+0x9c>
    24d4:	c6040098 	lwc1	$f4,152(s0)
    24d8:	51e00011 	beqzl	t7,2520 <func_80045C74+0x9c>
    24dc:	c6040098 	lwc1	$f4,152(s0)
    24e0:	845901a6 	lh	t9,422(v0)
    24e4:	8fb80084 	lw	t8,132(sp)
    24e8:	26040108 	addiu	a0,s0,264
    24ec:	44993000 	mtc1	t9,$f6
    24f0:	860500a2 	lh	a1,162(s0)
    24f4:	87060006 	lh	a2,6(t8)
    24f8:	468031a0 	cvt.s.w	$f6,$f6
    24fc:	44073000 	mfc1	a3,$f6
    2500:	0c000000 	jal	0 <func_800437F0>
    2504:	00000000 	nop
    2508:	c7a80074 	lwc1	$f8,116(sp)
    250c:	3c020000 	lui	v0,0x0
    2510:	8c420000 	lw	v0,0(v0)
    2514:	46004281 	sub.s	$f10,$f8,$f0
    2518:	e7aa0074 	swc1	$f10,116(sp)
    251c:	c6040098 	lwc1	$f4,152(s0)
    2520:	c6060104 	lwc1	$f6,260(s0)
    2524:	26080094 	addiu	t0,s0,148
    2528:	46062032 	c.eq.s	$f4,$f6
    252c:	00000000 	nop
    2530:	4503000e 	bc1tl	256c <func_80045C74+0xe8>
    2534:	844c01ea 	lh	t4,490(v0)
    2538:	8e030090 	lw	v1,144(s0)
    253c:	3c010000 	lui	at,0x0
    2540:	c4280000 	lwc1	$f8,0(at)
    2544:	c46a006c 	lwc1	$f10,108(v1)
    2548:	460a403c 	c.lt.s	$f8,$f10
    254c:	00000000 	nop
    2550:	45030006 	bc1tl	256c <func_80045C74+0xe8>
    2554:	844c01ea 	lh	t4,490(v0)
    2558:	8c69067c 	lw	t1,1660(v1)
    255c:	00095280 	sll	t2,t1,0xa
    2560:	05430024 	bgezl	t2,25f4 <func_80045C74+0x170>
    2564:	845802ea 	lh	t8,746(v0)
    2568:	844c01ea 	lh	t4,490(v0)
    256c:	3c010000 	lui	at,0x0
    2570:	c4340000 	lwc1	$f20,0(at)
    2574:	448c2000 	mtc1	t4,$f4
    2578:	8fab008c 	lw	t3,140(sp)
    257c:	c50c0004 	lwc1	$f12,4(t0)
    2580:	468021a0 	cvt.s.w	$f6,$f4
    2584:	3c073dcc 	lui	a3,0x3dcc
    2588:	c56e0000 	lwc1	$f14,0(t3)
    258c:	afa8003c 	sw	t0,60(sp)
    2590:	34e7cccd 	ori	a3,a3,0xcccd
    2594:	46143202 	mul.s	$f8,$f6,$f20
    2598:	44064000 	mfc1	a2,$f8
    259c:	0c000000 	jal	0 <func_800437F0>
    25a0:	00000000 	nop
    25a4:	8fad008c 	lw	t5,140(sp)
    25a8:	3c010000 	lui	at,0x0
    25ac:	27a40070 	addiu	a0,sp,112
    25b0:	e5a00000 	swc1	$f0,0(t5)
    25b4:	8fae003c 	lw	t6,60(sp)
    25b8:	c7a40074 	lwc1	$f4,116(sp)
    25bc:	c4280000 	lwc1	$f8,0(at)
    25c0:	c5ca0004 	lwc1	$f10,4(t6)
    25c4:	260500e4 	addiu	a1,s0,228
    25c8:	46005501 	sub.s	$f20,$f10,$f0
    25cc:	46142181 	sub.s	$f6,$f4,$f20
    25d0:	e7a60074 	swc1	$f6,116(sp)
    25d4:	8e0700cc 	lw	a3,204(s0)
    25d8:	8e0600d0 	lw	a2,208(s0)
    25dc:	0c000000 	jal	0 <func_800437F0>
    25e0:	e7a80010 	swc1	$f8,16(sp)
    25e4:	260f0050 	addiu	t7,s0,80
    25e8:	10000096 	b	2844 <func_80045C74+0x3c0>
    25ec:	afaf0040 	sw	t7,64(sp)
    25f0:	845802ea 	lh	t8,746(v0)
    25f4:	8fa9008c 	lw	t1,140(sp)
    25f8:	26040050 	addiu	a0,s0,80
    25fc:	17000036 	bnez	t8,26d8 <func_80045C74+0x254>
    2600:	2605005c 	addiu	a1,s0,92
    2604:	8fb9008c 	lw	t9,140(sp)
    2608:	c50a0004 	lwc1	$f10,4(t0)
    260c:	26040050 	addiu	a0,s0,80
    2610:	c7240000 	lwc1	$f4,0(t9)
    2614:	afa8003c 	sw	t0,60(sp)
    2618:	afa40040 	sw	a0,64(sp)
    261c:	2605005c 	addiu	a1,s0,92
    2620:	0c000000 	jal	0 <func_800437F0>
    2624:	46045501 	sub.s	$f20,$f10,$f4
    2628:	4600a306 	mov.s	$f12,$f20
    262c:	46000386 	mov.s	$f14,$f0
    2630:	0c000000 	jal	0 <func_800437F0>
    2634:	e7a00054 	swc1	$f0,84(sp)
    2638:	3c010000 	lui	at,0x0
    263c:	c4320000 	lwc1	$f18,0(at)
    2640:	3c010000 	lui	at,0x0
    2644:	c4280000 	lwc1	$f8,0(at)
    2648:	c60600fc 	lwc1	$f6,252(s0)
    264c:	46083282 	mul.s	$f10,$f6,$f8
    2650:	00000000 	nop
    2654:	46125302 	mul.s	$f12,$f10,$f18
    2658:	0c000000 	jal	0 <func_800437F0>
    265c:	00000000 	nop
    2660:	c7b00054 	lwc1	$f16,84(sp)
    2664:	8fa2008c 	lw	v0,140(sp)
    2668:	46100082 	mul.s	$f2,$f0,$f16
    266c:	4614103c 	c.lt.s	$f2,$f20
    2670:	00000000 	nop
    2674:	45020008 	bc1fl	2698 <func_80045C74+0x214>
    2678:	46001007 	neg.s	$f0,$f2
    267c:	4602a181 	sub.s	$f6,$f20,$f2
    2680:	c4440000 	lwc1	$f4,0(v0)
    2684:	46001506 	mov.s	$f20,$f2
    2688:	46062200 	add.s	$f8,$f4,$f6
    268c:	1000000c 	b	26c0 <func_80045C74+0x23c>
    2690:	e4480000 	swc1	$f8,0(v0)
    2694:	46001007 	neg.s	$f0,$f2
    2698:	8fa2008c 	lw	v0,140(sp)
    269c:	4600a03c 	c.lt.s	$f20,$f0
    26a0:	00000000 	nop
    26a4:	45020007 	bc1fl	26c4 <func_80045C74+0x240>
    26a8:	c7a80074 	lwc1	$f8,116(sp)
    26ac:	4602a100 	add.s	$f4,$f20,$f2
    26b0:	c44a0000 	lwc1	$f10,0(v0)
    26b4:	46000506 	mov.s	$f20,$f0
    26b8:	46045180 	add.s	$f6,$f10,$f4
    26bc:	e4460000 	swc1	$f6,0(v0)
    26c0:	c7a80074 	lwc1	$f8,116(sp)
    26c4:	3c020000 	lui	v0,0x0
    26c8:	8c420000 	lw	v0,0(v0)
    26cc:	46144281 	sub.s	$f10,$f8,$f20
    26d0:	10000038 	b	27b4 <func_80045C74+0x330>
    26d4:	e7aa0074 	swc1	$f10,116(sp)
    26d8:	c5040004 	lwc1	$f4,4(t0)
    26dc:	c5260000 	lwc1	$f6,0(t1)
    26e0:	afa8003c 	sw	t0,60(sp)
    26e4:	afa40040 	sw	a0,64(sp)
    26e8:	0c000000 	jal	0 <func_800437F0>
    26ec:	46062501 	sub.s	$f20,$f4,$f6
    26f0:	4600a306 	mov.s	$f12,$f20
    26f4:	0c000000 	jal	0 <func_800437F0>
    26f8:	46000386 	mov.s	$f14,$f0
    26fc:	3c020000 	lui	v0,0x0
    2700:	8c420000 	lw	v0,0(v0)
    2704:	3c010000 	lui	at,0x0
    2708:	c4320000 	lwc1	$f18,0(at)
    270c:	844b01d4 	lh	t3,468(v0)
    2710:	46000086 	mov.s	$f2,$f0
    2714:	448b4000 	mtc1	t3,$f8
    2718:	00000000 	nop
    271c:	468042a0 	cvt.s.w	$f10,$f8
    2720:	46125382 	mul.s	$f14,$f10,$f18
    2724:	4600703c 	c.lt.s	$f14,$f0
    2728:	00000000 	nop
    272c:	4502000a 	bc1fl	2758 <func_80045C74+0x2d4>
    2730:	844c01d6 	lh	t4,470(v0)
    2734:	0c000000 	jal	0 <func_800437F0>
    2738:	460e1301 	sub.s	$f12,$f2,$f14
    273c:	3c013f80 	lui	at,0x3f80
    2740:	44812000 	mtc1	at,$f4
    2744:	3c020000 	lui	v0,0x0
    2748:	8c420000 	lw	v0,0(v0)
    274c:	10000015 	b	27a4 <func_80045C74+0x320>
    2750:	46002401 	sub.s	$f16,$f4,$f0
    2754:	844c01d6 	lh	t4,470(v0)
    2758:	3c013f80 	lui	at,0x3f80
    275c:	448c3000 	mtc1	t4,$f6
    2760:	00000000 	nop
    2764:	46803220 	cvt.s.w	$f8,$f6
    2768:	46124382 	mul.s	$f14,$f8,$f18
    276c:	460e003c 	c.lt.s	$f0,$f14
    2770:	00000000 	nop
    2774:	4502000a 	bc1fl	27a0 <func_80045C74+0x31c>
    2778:	44818000 	mtc1	at,$f16
    277c:	0c000000 	jal	0 <func_800437F0>
    2780:	46027301 	sub.s	$f12,$f14,$f2
    2784:	3c013f80 	lui	at,0x3f80
    2788:	44815000 	mtc1	at,$f10
    278c:	3c020000 	lui	v0,0x0
    2790:	8c420000 	lw	v0,0(v0)
    2794:	10000003 	b	27a4 <func_80045C74+0x320>
    2798:	46005401 	sub.s	$f16,$f10,$f0
    279c:	44818000 	mtc1	at,$f16
    27a0:	00000000 	nop
    27a4:	4610a182 	mul.s	$f6,$f20,$f16
    27a8:	c7a40074 	lwc1	$f4,116(sp)
    27ac:	46062201 	sub.s	$f8,$f4,$f6
    27b0:	e7a80074 	swc1	$f8,116(sp)
    27b4:	844d01ce 	lh	t5,462(v0)
    27b8:	844e01d0 	lh	t6,464(v0)
    27bc:	3c010000 	lui	at,0x0
    27c0:	448d5000 	mtc1	t5,$f10
    27c4:	448e4000 	mtc1	t6,$f8
    27c8:	c4340000 	lwc1	$f20,0(at)
    27cc:	46805120 	cvt.s.w	$f4,$f10
    27d0:	3c010000 	lui	at,0x0
    27d4:	27a40070 	addiu	a0,sp,112
    27d8:	260500e4 	addiu	a1,s0,228
    27dc:	468042a0 	cvt.s.w	$f10,$f8
    27e0:	46142182 	mul.s	$f6,$f4,$f20
    27e4:	00000000 	nop
    27e8:	46145102 	mul.s	$f4,$f10,$f20
    27ec:	44063000 	mfc1	a2,$f6
    27f0:	c4260000 	lwc1	$f6,0(at)
    27f4:	e7a60010 	swc1	$f6,16(sp)
    27f8:	44072000 	mfc1	a3,$f4
    27fc:	0c000000 	jal	0 <func_800437F0>
    2800:	00000000 	nop
    2804:	3c0f0000 	lui	t7,0x0
    2808:	8def0000 	lw	t7,0(t7)
    280c:	3c190000 	lui	t9,0x0
    2810:	85f801ce 	lh	t8,462(t7)
    2814:	44984000 	mtc1	t8,$f8
    2818:	00000000 	nop
    281c:	468042a0 	cvt.s.w	$f10,$f8
    2820:	46145102 	mul.s	$f4,$f10,$f20
    2824:	e60400d0 	swc1	$f4,208(s0)
    2828:	8f390000 	lw	t9,0(t9)
    282c:	872901d0 	lh	t1,464(t9)
    2830:	44893000 	mtc1	t1,$f6
    2834:	00000000 	nop
    2838:	46803220 	cvt.s.w	$f8,$f6
    283c:	46144282 	mul.s	$f10,$f8,$f20
    2840:	e60a00cc 	swc1	$f10,204(s0)
    2844:	8faa003c 	lw	t2,60(sp)
    2848:	c60600e4 	lwc1	$f6,228(s0)
    284c:	3c010000 	lui	at,0x0
    2850:	c5440000 	lwc1	$f4,0(t2)
    2854:	27a40064 	addiu	a0,sp,100
    2858:	8fa50040 	lw	a1,64(sp)
    285c:	46062200 	add.s	$f8,$f4,$f6
    2860:	e7a80064 	swc1	$f8,100(sp)
    2864:	c60400e8 	lwc1	$f4,232(s0)
    2868:	c54a0004 	lwc1	$f10,4(t2)
    286c:	46045180 	add.s	$f6,$f10,$f4
    2870:	e7a60068 	swc1	$f6,104(sp)
    2874:	c60a00ec 	lwc1	$f10,236(s0)
    2878:	c5480008 	lwc1	$f8,8(t2)
    287c:	c4260000 	lwc1	$f6,0(at)
    2880:	460a4100 	add.s	$f4,$f8,$f10
    2884:	e7a4006c 	swc1	$f4,108(sp)
    2888:	c6000100 	lwc1	$f0,256(s0)
    288c:	e7a60010 	swc1	$f6,16(sp)
    2890:	44060000 	mfc1	a2,$f0
    2894:	44070000 	mfc1	a3,$f0
    2898:	0c000000 	jal	0 <func_800437F0>
    289c:	00000000 	nop
    28a0:	8fbf002c 	lw	ra,44(sp)
    28a4:	d7b40020 	ldc1	$f20,32(sp)
    28a8:	8fb00028 	lw	s0,40(sp)
    28ac:	27bd0080 	addiu	sp,sp,128
    28b0:	03e00008 	jr	ra
    28b4:	24020001 	li	v0,1

000028b8 <func_800460A8>:
    28b8:	27bdff58 	addiu	sp,sp,-168
    28bc:	afb00040 	sw	s0,64(sp)
    28c0:	00808025 	move	s0,a0
    28c4:	afbf0044 	sw	ra,68(sp)
    28c8:	f7b40038 	sdc1	$f20,56(sp)
    28cc:	afa500ac 	sw	a1,172(sp)
    28d0:	afa600b0 	sw	a2,176(sp)
    28d4:	afa700b4 	sw	a3,180(sp)
    28d8:	0c000000 	jal	0 <func_800437F0>
    28dc:	8c840090 	lw	a0,144(a0)
    28e0:	c7a400b4 	lwc1	$f4,180(sp)
    28e4:	44801000 	mtc1	zero,$f2
    28e8:	3c020000 	lui	v0,0x0
    28ec:	46040180 	add.s	$f6,$f0,$f4
    28f0:	8c420000 	lw	v0,0(v0)
    28f4:	e7a20098 	swc1	$f2,152(sp)
    28f8:	e7a200a0 	swc1	$f2,160(sp)
    28fc:	e7a6009c 	swc1	$f6,156(sp)
    2900:	844e02ec 	lh	t6,748(v0)
    2904:	87af00c6 	lh	t7,198(sp)
    2908:	46000506 	mov.s	$f20,$f0
    290c:	11c00010 	beqz	t6,2950 <func_800460A8+0x98>
    2910:	31f80001 	andi	t8,t7,0x1
    2914:	5300000f 	beqzl	t8,2954 <func_800460A8+0x9c>
    2918:	26020094 	addiu	v0,s0,148
    291c:	844801a6 	lh	t0,422(v0)
    2920:	8fb900ac 	lw	t9,172(sp)
    2924:	26040108 	addiu	a0,s0,264
    2928:	44884000 	mtc1	t0,$f8
    292c:	860500a2 	lh	a1,162(s0)
    2930:	87260006 	lh	a2,6(t9)
    2934:	46804220 	cvt.s.w	$f8,$f8
    2938:	44074000 	mfc1	a3,$f8
    293c:	0c000000 	jal	0 <func_800437F0>
    2940:	00000000 	nop
    2944:	c7aa009c 	lwc1	$f10,156(sp)
    2948:	46005101 	sub.s	$f4,$f10,$f0
    294c:	e7a4009c 	swc1	$f4,156(sp)
    2950:	26020094 	addiu	v0,s0,148
    2954:	8c4a0000 	lw	t2,0(v0)
    2958:	27a5008c 	addiu	a1,sp,140
    295c:	acaa0000 	sw	t2,0(a1)
    2960:	8c490004 	lw	t1,4(v0)
    2964:	aca90004 	sw	t1,4(a1)
    2968:	8c4a0008 	lw	t2,8(v0)
    296c:	acaa0008 	sw	t2,8(a1)
    2970:	c7a60090 	lwc1	$f6,144(sp)
    2974:	afa20050 	sw	v0,80(sp)
    2978:	8fa600b0 	lw	a2,176(sp)
    297c:	46143200 	add.s	$f8,$f6,$f20
    2980:	8fa400c0 	lw	a0,192(sp)
    2984:	0c000000 	jal	0 <func_800437F0>
    2988:	e7a80090 	swc1	$f8,144(sp)
    298c:	8fac00c0 	lw	t4,192(sp)
    2990:	27ab0074 	addiu	t3,sp,116
    2994:	3c0f0000 	lui	t7,0x0
    2998:	8d8e0000 	lw	t6,0(t4)
    299c:	ad6e0000 	sw	t6,0(t3)
    29a0:	8d8d0004 	lw	t5,4(t4)
    29a4:	ad6d0004 	sw	t5,4(t3)
    29a8:	c7a40074 	lwc1	$f4,116(sp)
    29ac:	c7aa00b8 	lwc1	$f10,184(sp)
    29b0:	8fb90050 	lw	t9,80(sp)
    29b4:	4604503c 	c.lt.s	$f10,$f4
    29b8:	00000000 	nop
    29bc:	4502000e 	bc1fl	29f8 <func_800460A8+0x140>
    29c0:	c72a0004 	lwc1	$f10,4(t9)
    29c4:	8def0000 	lw	t7,0(t7)
    29c8:	3c010000 	lui	at,0x0
    29cc:	c42a0000 	lwc1	$f10,0(at)
    29d0:	85f801e0 	lh	t8,480(t7)
    29d4:	44983000 	mtc1	t8,$f6
    29d8:	00000000 	nop
    29dc:	46803220 	cvt.s.w	$f8,$f6
    29e0:	460a4182 	mul.s	$f6,$f8,$f10
    29e4:	00000000 	nop
    29e8:	46043202 	mul.s	$f8,$f6,$f4
    29ec:	10000024 	b	2a80 <func_800460A8+0x1c8>
    29f0:	e7a80074 	swc1	$f8,116(sp)
    29f4:	c72a0004 	lwc1	$f10,4(t9)
    29f8:	c6060104 	lwc1	$f6,260(s0)
    29fc:	3c013f80 	lui	at,0x3f80
    2a00:	44817000 	mtc1	at,$f14
    2a04:	46065101 	sub.s	$f4,$f10,$f6
    2a08:	0c000000 	jal	0 <func_800437F0>
    2a0c:	46142303 	div.s	$f12,$f4,$f20
    2a10:	3c020000 	lui	v0,0x0
    2a14:	8c420000 	lw	v0,0(v0)
    2a18:	3c010000 	lui	at,0x0
    2a1c:	c4260000 	lwc1	$f6,0(at)
    2a20:	844801e2 	lh	t0,482(v0)
    2a24:	844901e0 	lh	t1,480(v0)
    2a28:	3c010000 	lui	at,0x0
    2a2c:	44884000 	mtc1	t0,$f8
    2a30:	44892000 	mtc1	t1,$f4
    2a34:	468042a0 	cvt.s.w	$f10,$f8
    2a38:	46802220 	cvt.s.w	$f8,$f4
    2a3c:	46065082 	mul.s	$f2,$f10,$f6
    2a40:	c42a0000 	lwc1	$f10,0(at)
    2a44:	460a4182 	mul.s	$f6,$f8,$f10
    2a48:	c7a80074 	lwc1	$f8,116(sp)
    2a4c:	46061101 	sub.s	$f4,$f2,$f6
    2a50:	c7a600b8 	lwc1	$f6,184(sp)
    2a54:	46082282 	mul.s	$f10,$f4,$f8
    2a58:	46064103 	div.s	$f4,$f8,$f6
    2a5c:	46045182 	mul.s	$f6,$f10,$f4
    2a60:	00000000 	nop
    2a64:	46024282 	mul.s	$f10,$f8,$f2
    2a68:	46065101 	sub.s	$f4,$f10,$f6
    2a6c:	46002202 	mul.s	$f8,$f4,$f0
    2a70:	e7a40074 	swc1	$f4,116(sp)
    2a74:	46004282 	mul.s	$f10,$f8,$f0
    2a78:	460a2181 	sub.s	$f6,$f4,$f10
    2a7c:	e7a60074 	swc1	$f6,116(sp)
    2a80:	87a300c6 	lh	v1,198(sp)
    2a84:	3c010000 	lui	at,0x0
    2a88:	27a40080 	addiu	a0,sp,128
    2a8c:	30630080 	andi	v1,v1,0x80
    2a90:	10600009 	beqz	v1,2ab8 <func_800460A8+0x200>
    2a94:	27a50074 	addiu	a1,sp,116
    2a98:	c4200000 	lwc1	$f0,0(at)
    2a9c:	3c010000 	lui	at,0x0
    2aa0:	c4240000 	lwc1	$f4,0(at)
    2aa4:	c7a80074 	lwc1	$f8,116(sp)
    2aa8:	46044282 	mul.s	$f10,$f8,$f4
    2aac:	e7aa0074 	swc1	$f10,116(sp)
    2ab0:	e60000cc 	swc1	$f0,204(s0)
    2ab4:	e60000d0 	swc1	$f0,208(s0)
    2ab8:	0c000000 	jal	0 <func_800437F0>
    2abc:	afa3004c 	sw	v1,76(sp)
    2ac0:	3c0a0000 	lui	t2,0x0
    2ac4:	8d4a0000 	lw	t2,0(t2)
    2ac8:	8fa3004c 	lw	v1,76(sp)
    2acc:	c7a60074 	lwc1	$f6,116(sp)
    2ad0:	854b0306 	lh	t3,774(t2)
    2ad4:	c7a800b8 	lwc1	$f8,184(sp)
    2ad8:	51600017 	beqzl	t3,2b38 <func_800460A8+0x280>
    2adc:	c7a60098 	lwc1	$f6,152(sp)
    2ae0:	46083103 	div.s	$f4,$f6,$f8
    2ae4:	c7a60080 	lwc1	$f6,128(sp)
    2ae8:	3c040000 	lui	a0,0x0
    2aec:	24840000 	addiu	a0,a0,0
    2af0:	46003221 	cvt.d.s	$f8,$f6
    2af4:	c7a60088 	lwc1	$f6,136(sp)
    2af8:	f7a80010 	sdc1	$f8,16(sp)
    2afc:	46003221 	cvt.d.s	$f8,$f6
    2b00:	f7a80020 	sdc1	$f8,32(sp)
    2b04:	460022a1 	cvt.d.s	$f10,$f4
    2b08:	c7a40084 	lwc1	$f4,132(sp)
    2b0c:	44075000 	mfc1	a3,$f10
    2b10:	44065800 	mfc1	a2,$f11
    2b14:	460022a1 	cvt.d.s	$f10,$f4
    2b18:	f7aa0018 	sdc1	$f10,24(sp)
    2b1c:	c6040100 	lwc1	$f4,256(s0)
    2b20:	afa3004c 	sw	v1,76(sp)
    2b24:	460022a1 	cvt.d.s	$f10,$f4
    2b28:	0c000000 	jal	0 <func_800437F0>
    2b2c:	f7aa0028 	sdc1	$f10,40(sp)
    2b30:	8fa3004c 	lw	v1,76(sp)
    2b34:	c7a60098 	lwc1	$f6,152(sp)
    2b38:	c7a80080 	lwc1	$f8,128(sp)
    2b3c:	c7aa009c 	lwc1	$f10,156(sp)
    2b40:	3c180000 	lui	t8,0x0
    2b44:	46083100 	add.s	$f4,$f6,$f8
    2b48:	c7a60084 	lwc1	$f6,132(sp)
    2b4c:	46065200 	add.s	$f8,$f10,$f6
    2b50:	e7a40098 	swc1	$f4,152(sp)
    2b54:	c7a400a0 	lwc1	$f4,160(sp)
    2b58:	c7aa0088 	lwc1	$f10,136(sp)
    2b5c:	e7a8009c 	swc1	$f8,156(sp)
    2b60:	460a2180 	add.s	$f6,$f4,$f10
    2b64:	e7a600a0 	swc1	$f6,160(sp)
    2b68:	c6040104 	lwc1	$f4,260(s0)
    2b6c:	c6080098 	lwc1	$f8,152(s0)
    2b70:	46044032 	c.eq.s	$f8,$f4
    2b74:	00000000 	nop
    2b78:	4501000d 	bc1t	2bb0 <func_800460A8+0x2f8>
    2b7c:	00000000 	nop
    2b80:	8e020090 	lw	v0,144(s0)
    2b84:	3c010000 	lui	at,0x0
    2b88:	c42a0000 	lwc1	$f10,0(at)
    2b8c:	c446006c 	lwc1	$f6,108(v0)
    2b90:	4606503c 	c.lt.s	$f10,$f6
    2b94:	00000000 	nop
    2b98:	45010005 	bc1t	2bb0 <func_800460A8+0x2f8>
    2b9c:	00000000 	nop
    2ba0:	8c4c067c 	lw	t4,1660(v0)
    2ba4:	000c6a80 	sll	t5,t4,0xa
    2ba8:	05a10024 	bgez	t5,2c3c <func_800460A8+0x384>
    2bac:	00000000 	nop
    2bb0:	8f180000 	lw	t8,0(t8)
    2bb4:	3c010000 	lui	at,0x0
    2bb8:	c42a0000 	lwc1	$f10,0(at)
    2bbc:	871901ea 	lh	t9,490(t8)
    2bc0:	8fae0050 	lw	t6,80(sp)
    2bc4:	8faf00bc 	lw	t7,188(sp)
    2bc8:	44994000 	mtc1	t9,$f8
    2bcc:	3c073dcc 	lui	a3,0x3dcc
    2bd0:	34e7cccd 	ori	a3,a3,0xcccd
    2bd4:	46804120 	cvt.s.w	$f4,$f8
    2bd8:	c5cc0004 	lwc1	$f12,4(t6)
    2bdc:	c5ee0000 	lwc1	$f14,0(t7)
    2be0:	460a2182 	mul.s	$f6,$f4,$f10
    2be4:	44063000 	mfc1	a2,$f6
    2be8:	0c000000 	jal	0 <func_800437F0>
    2bec:	00000000 	nop
    2bf0:	8fa800bc 	lw	t0,188(sp)
    2bf4:	3c010000 	lui	at,0x0
    2bf8:	27a40098 	addiu	a0,sp,152
    2bfc:	e5000000 	swc1	$f0,0(t0)
    2c00:	8fa90050 	lw	t1,80(sp)
    2c04:	c7a4009c 	lwc1	$f4,156(sp)
    2c08:	c4260000 	lwc1	$f6,0(at)
    2c0c:	c5280004 	lwc1	$f8,4(t1)
    2c10:	260500e4 	addiu	a1,s0,228
    2c14:	46004501 	sub.s	$f20,$f8,$f0
    2c18:	46142281 	sub.s	$f10,$f4,$f20
    2c1c:	e7aa009c 	swc1	$f10,156(sp)
    2c20:	8e0700cc 	lw	a3,204(s0)
    2c24:	8e0600d0 	lw	a2,208(s0)
    2c28:	0c000000 	jal	0 <func_800437F0>
    2c2c:	e7a60010 	swc1	$f6,16(sp)
    2c30:	260a0050 	addiu	t2,s0,80
    2c34:	10000097 	b	2e94 <func_800460A8+0x5dc>
    2c38:	afaa0054 	sw	t2,84(sp)
    2c3c:	14600036 	bnez	v1,2d18 <func_800460A8+0x460>
    2c40:	8fad0050 	lw	t5,80(sp)
    2c44:	8fab0050 	lw	t3,80(sp)
    2c48:	8fac00bc 	lw	t4,188(sp)
    2c4c:	26040050 	addiu	a0,s0,80
    2c50:	c5680004 	lwc1	$f8,4(t3)
    2c54:	c5840000 	lwc1	$f4,0(t4)
    2c58:	afa40054 	sw	a0,84(sp)
    2c5c:	2605005c 	addiu	a1,s0,92
    2c60:	0c000000 	jal	0 <func_800437F0>
    2c64:	46044501 	sub.s	$f20,$f8,$f4
    2c68:	4600a306 	mov.s	$f12,$f20
    2c6c:	46000386 	mov.s	$f14,$f0
    2c70:	0c000000 	jal	0 <func_800437F0>
    2c74:	e7a00068 	swc1	$f0,104(sp)
    2c78:	3c010000 	lui	at,0x0
    2c7c:	c4320000 	lwc1	$f18,0(at)
    2c80:	3c010000 	lui	at,0x0
    2c84:	c4260000 	lwc1	$f6,0(at)
    2c88:	c60a00fc 	lwc1	$f10,252(s0)
    2c8c:	46065202 	mul.s	$f8,$f10,$f6
    2c90:	00000000 	nop
    2c94:	46124302 	mul.s	$f12,$f8,$f18
    2c98:	0c000000 	jal	0 <func_800437F0>
    2c9c:	00000000 	nop
    2ca0:	c7b00068 	lwc1	$f16,104(sp)
    2ca4:	8fa200bc 	lw	v0,188(sp)
    2ca8:	46100082 	mul.s	$f2,$f0,$f16
    2cac:	4614103c 	c.lt.s	$f2,$f20
    2cb0:	00000000 	nop
    2cb4:	45020008 	bc1fl	2cd8 <func_800460A8+0x420>
    2cb8:	46001007 	neg.s	$f0,$f2
    2cbc:	4602a281 	sub.s	$f10,$f20,$f2
    2cc0:	c4440000 	lwc1	$f4,0(v0)
    2cc4:	46001506 	mov.s	$f20,$f2
    2cc8:	460a2180 	add.s	$f6,$f4,$f10
    2ccc:	1000000c 	b	2d00 <func_800460A8+0x448>
    2cd0:	e4460000 	swc1	$f6,0(v0)
    2cd4:	46001007 	neg.s	$f0,$f2
    2cd8:	8fa200bc 	lw	v0,188(sp)
    2cdc:	4600a03c 	c.lt.s	$f20,$f0
    2ce0:	00000000 	nop
    2ce4:	45020007 	bc1fl	2d04 <func_800460A8+0x44c>
    2ce8:	c7a6009c 	lwc1	$f6,156(sp)
    2cec:	4602a100 	add.s	$f4,$f20,$f2
    2cf0:	c4480000 	lwc1	$f8,0(v0)
    2cf4:	46000506 	mov.s	$f20,$f0
    2cf8:	46044280 	add.s	$f10,$f8,$f4
    2cfc:	e44a0000 	swc1	$f10,0(v0)
    2d00:	c7a6009c 	lwc1	$f6,156(sp)
    2d04:	3c020000 	lui	v0,0x0
    2d08:	8c420000 	lw	v0,0(v0)
    2d0c:	46143201 	sub.s	$f8,$f6,$f20
    2d10:	1000003a 	b	2dfc <func_800460A8+0x544>
    2d14:	e7a8009c 	swc1	$f8,156(sp)
    2d18:	8fae00bc 	lw	t6,188(sp)
    2d1c:	c5a40004 	lwc1	$f4,4(t5)
    2d20:	26040050 	addiu	a0,s0,80
    2d24:	c5ca0000 	lwc1	$f10,0(t6)
    2d28:	afa40054 	sw	a0,84(sp)
    2d2c:	2605005c 	addiu	a1,s0,92
    2d30:	0c000000 	jal	0 <func_800437F0>
    2d34:	460a2501 	sub.s	$f20,$f4,$f10
    2d38:	4600a306 	mov.s	$f12,$f20
    2d3c:	0c000000 	jal	0 <func_800437F0>
    2d40:	46000386 	mov.s	$f14,$f0
    2d44:	3c020000 	lui	v0,0x0
    2d48:	8c420000 	lw	v0,0(v0)
    2d4c:	3c010000 	lui	at,0x0
    2d50:	c4320000 	lwc1	$f18,0(at)
    2d54:	845801d4 	lh	t8,468(v0)
    2d58:	46000086 	mov.s	$f2,$f0
    2d5c:	44983000 	mtc1	t8,$f6
    2d60:	00000000 	nop
    2d64:	46803220 	cvt.s.w	$f8,$f6
    2d68:	46124382 	mul.s	$f14,$f8,$f18
    2d6c:	4600703c 	c.lt.s	$f14,$f0
    2d70:	00000000 	nop
    2d74:	4502000a 	bc1fl	2da0 <func_800460A8+0x4e8>
    2d78:	845901d6 	lh	t9,470(v0)
    2d7c:	0c000000 	jal	0 <func_800437F0>
    2d80:	460e1301 	sub.s	$f12,$f2,$f14
    2d84:	3c013f80 	lui	at,0x3f80
    2d88:	44812000 	mtc1	at,$f4
    2d8c:	3c020000 	lui	v0,0x0
    2d90:	8c420000 	lw	v0,0(v0)
    2d94:	10000015 	b	2dec <func_800460A8+0x534>
    2d98:	46002401 	sub.s	$f16,$f4,$f0
    2d9c:	845901d6 	lh	t9,470(v0)
    2da0:	3c013f80 	lui	at,0x3f80
    2da4:	44995000 	mtc1	t9,$f10
    2da8:	00000000 	nop
    2dac:	468051a0 	cvt.s.w	$f6,$f10
    2db0:	46123382 	mul.s	$f14,$f6,$f18
    2db4:	460e003c 	c.lt.s	$f0,$f14
    2db8:	00000000 	nop
    2dbc:	4502000a 	bc1fl	2de8 <func_800460A8+0x530>
    2dc0:	44818000 	mtc1	at,$f16
    2dc4:	0c000000 	jal	0 <func_800437F0>
    2dc8:	46027301 	sub.s	$f12,$f14,$f2
    2dcc:	3c013f80 	lui	at,0x3f80
    2dd0:	44814000 	mtc1	at,$f8
    2dd4:	3c020000 	lui	v0,0x0
    2dd8:	8c420000 	lw	v0,0(v0)
    2ddc:	10000003 	b	2dec <func_800460A8+0x534>
    2de0:	46004401 	sub.s	$f16,$f8,$f0
    2de4:	44818000 	mtc1	at,$f16
    2de8:	00000000 	nop
    2dec:	4610a282 	mul.s	$f10,$f20,$f16
    2df0:	c7a4009c 	lwc1	$f4,156(sp)
    2df4:	460a2181 	sub.s	$f6,$f4,$f10
    2df8:	e7a6009c 	swc1	$f6,156(sp)
    2dfc:	844801ce 	lh	t0,462(v0)
    2e00:	844901d0 	lh	t1,464(v0)
    2e04:	3c010000 	lui	at,0x0
    2e08:	44884000 	mtc1	t0,$f8
    2e0c:	44893000 	mtc1	t1,$f6
    2e10:	c4200000 	lwc1	$f0,0(at)
    2e14:	46804120 	cvt.s.w	$f4,$f8
    2e18:	3c010000 	lui	at,0x0
    2e1c:	27a40098 	addiu	a0,sp,152
    2e20:	260500e4 	addiu	a1,s0,228
    2e24:	46803220 	cvt.s.w	$f8,$f6
    2e28:	46002282 	mul.s	$f10,$f4,$f0
    2e2c:	00000000 	nop
    2e30:	46004102 	mul.s	$f4,$f8,$f0
    2e34:	44065000 	mfc1	a2,$f10
    2e38:	c42a0000 	lwc1	$f10,0(at)
    2e3c:	e7aa0010 	swc1	$f10,16(sp)
    2e40:	44072000 	mfc1	a3,$f4
    2e44:	0c000000 	jal	0 <func_800437F0>
    2e48:	00000000 	nop
    2e4c:	3c0a0000 	lui	t2,0x0
    2e50:	8d4a0000 	lw	t2,0(t2)
    2e54:	3c010000 	lui	at,0x0
    2e58:	c4200000 	lwc1	$f0,0(at)
    2e5c:	854b01ce 	lh	t3,462(t2)
    2e60:	3c0c0000 	lui	t4,0x0
    2e64:	448b3000 	mtc1	t3,$f6
    2e68:	00000000 	nop
    2e6c:	46803220 	cvt.s.w	$f8,$f6
    2e70:	46004102 	mul.s	$f4,$f8,$f0
    2e74:	e60400d0 	swc1	$f4,208(s0)
    2e78:	8d8c0000 	lw	t4,0(t4)
    2e7c:	858d01d0 	lh	t5,464(t4)
    2e80:	448d5000 	mtc1	t5,$f10
    2e84:	00000000 	nop
    2e88:	468051a0 	cvt.s.w	$f6,$f10
    2e8c:	46003202 	mul.s	$f8,$f6,$f0
    2e90:	e60800cc 	swc1	$f8,204(s0)
    2e94:	8fa20050 	lw	v0,80(sp)
    2e98:	c60a00e4 	lwc1	$f10,228(s0)
    2e9c:	3c010000 	lui	at,0x0
    2ea0:	c4440000 	lwc1	$f4,0(v0)
    2ea4:	27a4008c 	addiu	a0,sp,140
    2ea8:	8fa50054 	lw	a1,84(sp)
    2eac:	460a2180 	add.s	$f6,$f4,$f10
    2eb0:	e7a6008c 	swc1	$f6,140(sp)
    2eb4:	c60400e8 	lwc1	$f4,232(s0)
    2eb8:	c4480004 	lwc1	$f8,4(v0)
    2ebc:	46044280 	add.s	$f10,$f8,$f4
    2ec0:	e7aa0090 	swc1	$f10,144(sp)
    2ec4:	c60800ec 	lwc1	$f8,236(s0)
    2ec8:	c4460008 	lwc1	$f6,8(v0)
    2ecc:	c42a0000 	lwc1	$f10,0(at)
    2ed0:	46083100 	add.s	$f4,$f6,$f8
    2ed4:	e7a40094 	swc1	$f4,148(sp)
    2ed8:	c6000100 	lwc1	$f0,256(s0)
    2edc:	e7aa0010 	swc1	$f10,16(sp)
    2ee0:	44060000 	mfc1	a2,$f0
    2ee4:	44070000 	mfc1	a3,$f0
    2ee8:	0c000000 	jal	0 <func_800437F0>
    2eec:	00000000 	nop
    2ef0:	8fbf0044 	lw	ra,68(sp)
    2ef4:	d7b40038 	ldc1	$f20,56(sp)
    2ef8:	8fb00040 	lw	s0,64(sp)
    2efc:	27bd00a8 	addiu	sp,sp,168
    2f00:	03e00008 	jr	ra
    2f04:	24020001 	li	v0,1

00002f08 <func_800466F8>:
    2f08:	27bdff90 	addiu	sp,sp,-112
    2f0c:	afb00020 	sw	s0,32(sp)
    2f10:	00808025 	move	s0,a0
    2f14:	afbf0024 	sw	ra,36(sp)
    2f18:	afa50074 	sw	a1,116(sp)
    2f1c:	afa60078 	sw	a2,120(sp)
    2f20:	afa7007c 	sw	a3,124(sp)
    2f24:	0c000000 	jal	0 <func_800437F0>
    2f28:	8c840090 	lw	a0,144(a0)
    2f2c:	e7a00048 	swc1	$f0,72(sp)
    2f30:	8e020090 	lw	v0,144(s0)
    2f34:	27a40030 	addiu	a0,sp,48
    2f38:	8c450440 	lw	a1,1088(v0)
    2f3c:	0c000000 	jal	0 <func_800437F0>
    2f40:	afa20044 	sw	v0,68(sp)
    2f44:	8fa20044 	lw	v0,68(sp)
    2f48:	3c073e4c 	lui	a3,0x3e4c
    2f4c:	c7a40034 	lwc1	$f4,52(sp)
    2f50:	8c4e0440 	lw	t6,1088(v0)
    2f54:	00001025 	move	v0,zero
    2f58:	34e7cccd 	ori	a3,a3,0xcccd
    2f5c:	8dcf01f0 	lw	t7,496(t6)
    2f60:	c7ac0034 	lwc1	$f12,52(sp)
    2f64:	8fa9007c 	lw	t1,124(sp)
    2f68:	31f80004 	andi	t8,t7,0x4
    2f6c:	13000003 	beqz	t8,2f7c <func_800466F8+0x74>
    2f70:	3c063f00 	lui	a2,0x3f00
    2f74:	10000001 	b	2f7c <func_800466F8+0x74>
    2f78:	24020001 	li	v0,1
    2f7c:	10400017 	beqz	v0,2fdc <func_800466F8+0xd4>
    2f80:	3c014244 	lui	at,0x4244
    2f84:	44813000 	mtc1	at,$f6
    2f88:	8fb9007c 	lw	t9,124(sp)
    2f8c:	3c063dcc 	lui	a2,0x3dcc
    2f90:	46062301 	sub.s	$f12,$f4,$f6
    2f94:	3c073e4c 	lui	a3,0x3e4c
    2f98:	34e7cccd 	ori	a3,a3,0xcccd
    2f9c:	34c6cccd 	ori	a2,a2,0xcccd
    2fa0:	e7ac0034 	swc1	$f12,52(sp)
    2fa4:	0c000000 	jal	0 <func_800437F0>
    2fa8:	c72e0000 	lwc1	$f14,0(t9)
    2fac:	8fa8007c 	lw	t0,124(sp)
    2fb0:	3c010000 	lui	at,0x0
    2fb4:	3c063e4c 	lui	a2,0x3e4c
    2fb8:	3c073ca3 	lui	a3,0x3ca3
    2fbc:	e5000000 	swc1	$f0,0(t0)
    2fc0:	c60e0100 	lwc1	$f14,256(s0)
    2fc4:	c42c0dfc 	lwc1	$f12,3580(at)
    2fc8:	34e7d70a 	ori	a3,a3,0xd70a
    2fcc:	0c000000 	jal	0 <func_800437F0>
    2fd0:	34c6cccd 	ori	a2,a2,0xcccd
    2fd4:	10000005 	b	2fec <func_800466F8+0xe4>
    2fd8:	e6000100 	swc1	$f0,256(s0)
    2fdc:	0c000000 	jal	0 <func_800437F0>
    2fe0:	c52e0000 	lwc1	$f14,0(t1)
    2fe4:	8faa007c 	lw	t2,124(sp)
    2fe8:	e5400000 	swc1	$f0,0(t2)
    2fec:	c7aa0048 	lwc1	$f10,72(sp)
    2ff0:	c7b00078 	lwc1	$f16,120(sp)
    2ff4:	44800000 	mtc1	zero,$f0
    2ff8:	87ab0082 	lh	t3,130(sp)
    2ffc:	46105480 	add.s	$f18,$f10,$f16
    3000:	e7a00060 	swc1	$f0,96(sp)
    3004:	e7a00068 	swc1	$f0,104(sp)
    3008:	11600011 	beqz	t3,3050 <func_800466F8+0x148>
    300c:	e7b20064 	swc1	$f18,100(sp)
    3010:	3c0d0000 	lui	t5,0x0
    3014:	8dad0000 	lw	t5,0(t5)
    3018:	8fac0074 	lw	t4,116(sp)
    301c:	26040108 	addiu	a0,s0,264
    3020:	85ae01a6 	lh	t6,422(t5)
    3024:	860500a2 	lh	a1,162(s0)
    3028:	85860006 	lh	a2,6(t4)
    302c:	448e2000 	mtc1	t6,$f4
    3030:	00000000 	nop
    3034:	46802120 	cvt.s.w	$f4,$f4
    3038:	44072000 	mfc1	a3,$f4
    303c:	0c000000 	jal	0 <func_800437F0>
    3040:	00000000 	nop
    3044:	c7a60064 	lwc1	$f6,100(sp)
    3048:	46003201 	sub.s	$f8,$f6,$f0
    304c:	e7a80064 	swc1	$f8,100(sp)
    3050:	3c010000 	lui	at,0x0
    3054:	c42a0e00 	lwc1	$f10,3584(at)
    3058:	8e0600d0 	lw	a2,208(s0)
    305c:	8e0700cc 	lw	a3,204(s0)
    3060:	27a40060 	addiu	a0,sp,96
    3064:	260500e4 	addiu	a1,s0,228
    3068:	0c000000 	jal	0 <func_800437F0>
    306c:	e7aa0010 	swc1	$f10,16(sp)
    3070:	c61000e4 	lwc1	$f16,228(s0)
    3074:	c7b20030 	lwc1	$f18,48(sp)
    3078:	c7a80034 	lwc1	$f8,52(sp)
    307c:	3c010000 	lui	at,0x0
    3080:	46128100 	add.s	$f4,$f16,$f18
    3084:	c7b20038 	lwc1	$f18,56(sp)
    3088:	27a40054 	addiu	a0,sp,84
    308c:	26050050 	addiu	a1,s0,80
    3090:	e7a40054 	swc1	$f4,84(sp)
    3094:	c60600e8 	lwc1	$f6,232(s0)
    3098:	46083280 	add.s	$f10,$f6,$f8
    309c:	c4260e04 	lwc1	$f6,3588(at)
    30a0:	e7aa0058 	swc1	$f10,88(sp)
    30a4:	c61000ec 	lwc1	$f16,236(s0)
    30a8:	46128100 	add.s	$f4,$f16,$f18
    30ac:	e7a4005c 	swc1	$f4,92(sp)
    30b0:	c6000100 	lwc1	$f0,256(s0)
    30b4:	e7a60010 	swc1	$f6,16(sp)
    30b8:	44060000 	mfc1	a2,$f0
    30bc:	44070000 	mfc1	a3,$f0
    30c0:	0c000000 	jal	0 <func_800437F0>
    30c4:	00000000 	nop
    30c8:	8fbf0024 	lw	ra,36(sp)
    30cc:	8fb00020 	lw	s0,32(sp)
    30d0:	27bd0070 	addiu	sp,sp,112
    30d4:	03e00008 	jr	ra
    30d8:	24020001 	li	v0,1

000030dc <func_800468CC>:
    30dc:	27bdffe0 	addiu	sp,sp,-32
    30e0:	afa60028 	sw	a2,40(sp)
    30e4:	44857000 	mtc1	a1,$f14
    30e8:	c7a40028 	lwc1	$f4,40(sp)
    30ec:	afa7002c 	sw	a3,44(sp)
    30f0:	afbf0014 	sw	ra,20(sp)
    30f4:	4604703c 	c.lt.s	$f14,$f4
    30f8:	3c020000 	lui	v0,0x0
    30fc:	c7a8002c 	lwc1	$f8,44(sp)
    3100:	45020008 	bc1fl	3124 <func_800468CC+0x48>
    3104:	460e403c 	c.lt.s	$f8,$f14
    3108:	8c420000 	lw	v0,0(v0)
    310c:	e7a4001c 	swc1	$f4,28(sp)
    3110:	844e01a0 	lh	t6,416(v0)
    3114:	448e3000 	mtc1	t6,$f6
    3118:	10000010 	b	315c <func_800468CC+0x80>
    311c:	46803320 	cvt.s.w	$f12,$f6
    3120:	460e403c 	c.lt.s	$f8,$f14
    3124:	3c013f80 	lui	at,0x3f80
    3128:	3c020000 	lui	v0,0x0
    312c:	45020009 	bc1fl	3154 <func_800468CC+0x78>
    3130:	44816000 	mtc1	at,$f12
    3134:	3c020000 	lui	v0,0x0
    3138:	8c420000 	lw	v0,0(v0)
    313c:	e7a8001c 	swc1	$f8,28(sp)
    3140:	844f01a0 	lh	t7,416(v0)
    3144:	448f5000 	mtc1	t7,$f10
    3148:	10000004 	b	315c <func_800468CC+0x80>
    314c:	46805320 	cvt.s.w	$f12,$f10
    3150:	44816000 	mtc1	at,$f12
    3154:	e7ae001c 	swc1	$f14,28(sp)
    3158:	8c420000 	lw	v0,0(v0)
    315c:	845801c6 	lh	t8,454(v0)
    3160:	3c010000 	lui	at,0x0
    3164:	c4240e08 	lwc1	$f4,3592(at)
    3168:	44988000 	mtc1	t8,$f16
    316c:	c48e00c0 	lwc1	$f14,192(a0)
    3170:	3c073dcc 	lui	a3,0x3dcc
    3174:	468084a0 	cvt.s.w	$f18,$f16
    3178:	34e7cccd 	ori	a3,a3,0xcccd
    317c:	afa40020 	sw	a0,32(sp)
    3180:	46049182 	mul.s	$f6,$f18,$f4
    3184:	44063000 	mfc1	a2,$f6
    3188:	0c000000 	jal	0 <func_800437F0>
    318c:	00000000 	nop
    3190:	3c013f80 	lui	at,0x3f80
    3194:	44814000 	mtc1	at,$f8
    3198:	8fa40020 	lw	a0,32(sp)
    319c:	3c073e4c 	lui	a3,0x3e4c
    31a0:	46004283 	div.s	$f10,$f8,$f0
    31a4:	e48000c0 	swc1	$f0,192(a0)
    31a8:	c7ac001c 	lwc1	$f12,28(sp)
    31ac:	34e7cccd 	ori	a3,a3,0xcccd
    31b0:	c48e00dc 	lwc1	$f14,220(a0)
    31b4:	44065000 	mfc1	a2,$f10
    31b8:	0c000000 	jal	0 <func_800437F0>
    31bc:	00000000 	nop
    31c0:	8fbf0014 	lw	ra,20(sp)
    31c4:	27bd0020 	addiu	sp,sp,32
    31c8:	03e00008 	jr	ra
    31cc:	00000000 	nop

000031d0 <func_800469C0>:
    31d0:	44856000 	mtc1	a1,$f12
    31d4:	44867000 	mtc1	a2,$f14
    31d8:	27bdffe0 	addiu	sp,sp,-32
    31dc:	afa7002c 	sw	a3,44(sp)
    31e0:	460e603c 	c.lt.s	$f12,$f14
    31e4:	afbf0014 	sw	ra,20(sp)
    31e8:	c7b0002c 	lwc1	$f16,44(sp)
    31ec:	45020017 	bc1fl	324c <func_800469C0+0x7c>
    31f0:	460c803c 	c.lt.s	$f16,$f12
    31f4:	87ae0032 	lh	t6,50(sp)
    31f8:	e7ae001c 	swc1	$f14,28(sp)
    31fc:	3c020000 	lui	v0,0x0
    3200:	11c0000c 	beqz	t6,3234 <func_800469C0+0x64>
    3204:	00000000 	nop
    3208:	3c020000 	lui	v0,0x0
    320c:	8c420000 	lw	v0,0(v0)
    3210:	3c013f00 	lui	at,0x3f00
    3214:	44814000 	mtc1	at,$f8
    3218:	844f01a0 	lh	t7,416(v0)
    321c:	448f2000 	mtc1	t7,$f4
    3220:	00000000 	nop
    3224:	468021a0 	cvt.s.w	$f6,$f4
    3228:	46083302 	mul.s	$f12,$f6,$f8
    322c:	1000002d 	b	32e4 <func_800469C0+0x114>
    3230:	844c01c6 	lh	t4,454(v0)
    3234:	8c420000 	lw	v0,0(v0)
    3238:	845801a0 	lh	t8,416(v0)
    323c:	44985000 	mtc1	t8,$f10
    3240:	10000027 	b	32e0 <func_800469C0+0x110>
    3244:	46805320 	cvt.s.w	$f12,$f10
    3248:	460c803c 	c.lt.s	$f16,$f12
    324c:	00000000 	nop
    3250:	45020017 	bc1fl	32b0 <func_800469C0+0xe0>
    3254:	87aa0032 	lh	t2,50(sp)
    3258:	87b90032 	lh	t9,50(sp)
    325c:	e7b0001c 	swc1	$f16,28(sp)
    3260:	3c020000 	lui	v0,0x0
    3264:	1320000c 	beqz	t9,3298 <func_800469C0+0xc8>
    3268:	00000000 	nop
    326c:	3c020000 	lui	v0,0x0
    3270:	8c420000 	lw	v0,0(v0)
    3274:	3c013f00 	lui	at,0x3f00
    3278:	44813000 	mtc1	at,$f6
    327c:	844801a0 	lh	t0,416(v0)
    3280:	44889000 	mtc1	t0,$f18
    3284:	00000000 	nop
    3288:	46809120 	cvt.s.w	$f4,$f18
    328c:	46062302 	mul.s	$f12,$f4,$f6
    3290:	10000014 	b	32e4 <func_800469C0+0x114>
    3294:	844c01c6 	lh	t4,454(v0)
    3298:	8c420000 	lw	v0,0(v0)
    329c:	844901a0 	lh	t1,416(v0)
    32a0:	44894000 	mtc1	t1,$f8
    32a4:	1000000e 	b	32e0 <func_800469C0+0x110>
    32a8:	46804320 	cvt.s.w	$f12,$f8
    32ac:	87aa0032 	lh	t2,50(sp)
    32b0:	e7ac001c 	swc1	$f12,28(sp)
    32b4:	3c013f80 	lui	at,0x3f80
    32b8:	11400007 	beqz	t2,32d8 <func_800469C0+0x108>
    32bc:	3c020000 	lui	v0,0x0
    32c0:	3c020000 	lui	v0,0x0
    32c4:	8c420000 	lw	v0,0(v0)
    32c8:	844b01a0 	lh	t3,416(v0)
    32cc:	448b5000 	mtc1	t3,$f10
    32d0:	10000003 	b	32e0 <func_800469C0+0x110>
    32d4:	46805320 	cvt.s.w	$f12,$f10
    32d8:	44816000 	mtc1	at,$f12
    32dc:	8c420000 	lw	v0,0(v0)
    32e0:	844c01c6 	lh	t4,454(v0)
    32e4:	3c010000 	lui	at,0x0
    32e8:	c4240e0c 	lwc1	$f4,3596(at)
    32ec:	448c8000 	mtc1	t4,$f16
    32f0:	c48e00c0 	lwc1	$f14,192(a0)
    32f4:	3c073dcc 	lui	a3,0x3dcc
    32f8:	468084a0 	cvt.s.w	$f18,$f16
    32fc:	34e7cccd 	ori	a3,a3,0xcccd
    3300:	afa40020 	sw	a0,32(sp)
    3304:	46049182 	mul.s	$f6,$f18,$f4
    3308:	44063000 	mfc1	a2,$f6
    330c:	0c000000 	jal	0 <func_800437F0>
    3310:	00000000 	nop
    3314:	3c013f80 	lui	at,0x3f80
    3318:	44814000 	mtc1	at,$f8
    331c:	8fa40020 	lw	a0,32(sp)
    3320:	3c073e4c 	lui	a3,0x3e4c
    3324:	46004283 	div.s	$f10,$f8,$f0
    3328:	e48000c0 	swc1	$f0,192(a0)
    332c:	c7ac001c 	lwc1	$f12,28(sp)
    3330:	34e7cccd 	ori	a3,a3,0xcccd
    3334:	c48e00dc 	lwc1	$f14,220(a0)
    3338:	44065000 	mfc1	a2,$f10
    333c:	0c000000 	jal	0 <func_800437F0>
    3340:	00000000 	nop
    3344:	8fbf0014 	lw	ra,20(sp)
    3348:	27bd0020 	addiu	sp,sp,32
    334c:	03e00008 	jr	ra
    3350:	00000000 	nop

00003354 <func_80046B44>:
    3354:	27bdffc8 	addiu	sp,sp,-56
    3358:	afa5003c 	sw	a1,60(sp)
    335c:	00052c00 	sll	a1,a1,0x10
    3360:	afa70044 	sw	a3,68(sp)
    3364:	00073c00 	sll	a3,a3,0x10
    3368:	00052c03 	sra	a1,a1,0x10
    336c:	00073c03 	sra	a3,a3,0x10
    3370:	afbf0014 	sw	ra,20(sp)
    3374:	afa40038 	sw	a0,56(sp)
    3378:	04a00004 	bltz	a1,338c <func_80046B44+0x38>
    337c:	afa60040 	sw	a2,64(sp)
    3380:	00051c00 	sll	v1,a1,0x10
    3384:	10000004 	b	3398 <func_80046B44+0x44>
    3388:	00031c03 	sra	v1,v1,0x10
    338c:	00051823 	negu	v1,a1
    3390:	00031c00 	sll	v1,v1,0x10
    3394:	00031c03 	sra	v1,v1,0x10
    3398:	18e00014 	blez	a3,33ec <func_80046B44+0x98>
    339c:	00071400 	sll	v0,a3,0x10
    33a0:	00072400 	sll	a0,a3,0x10
    33a4:	00042403 	sra	a0,a0,0x10
    33a8:	a7a30028 	sh	v1,40(sp)
    33ac:	a7a5003e 	sh	a1,62(sp)
    33b0:	0c000000 	jal	0 <func_800437F0>
    33b4:	a7a70046 	sh	a3,70(sp)
    33b8:	87a70046 	lh	a3,70(sp)
    33bc:	87a30028 	lh	v1,40(sp)
    33c0:	87a5003e 	lh	a1,62(sp)
    33c4:	44872000 	mtc1	a3,$f4
    33c8:	00000000 	nop
    33cc:	468021a0 	cvt.s.w	$f6,$f4
    33d0:	46060202 	mul.s	$f8,$f0,$f6
    33d4:	4600428d 	trunc.w.s	$f10,$f8
    33d8:	44025000 	mfc1	v0,$f10
    33dc:	00000000 	nop
    33e0:	00021400 	sll	v0,v0,0x10
    33e4:	10000002 	b	33f0 <func_80046B44+0x9c>
    33e8:	00021403 	sra	v0,v0,0x10
    33ec:	00021403 	sra	v0,v0,0x10
    33f0:	87af0042 	lh	t7,66(sp)
    33f4:	8fb80038 	lw	t8,56(sp)
    33f8:	3c190000 	lui	t9,0x0
    33fc:	01e22023 	subu	a0,t7,v0
    3400:	00042400 	sll	a0,a0,0x10
    3404:	00042403 	sra	a0,a0,0x10
    3408:	04800003 	bltz	a0,3418 <func_80046B44+0xc4>
    340c:	00041023 	negu	v0,a0
    3410:	10000001 	b	3418 <func_80046B44+0xc4>
    3414:	00801025 	move	v0,a0
    3418:	0043082a 	slt	at,v0,v1
    341c:	10200009 	beqz	at,3444 <func_80046B44+0xf0>
    3420:	3c013f80 	lui	at,0x3f80
    3424:	44818000 	mtc1	at,$f16
    3428:	c71200c4 	lwc1	$f18,196(t8)
    342c:	3c014040 	lui	at,0x4040
    3430:	44813000 	mtc1	at,$f6
    3434:	46128103 	div.s	$f4,$f16,$f18
    3438:	46062082 	mul.s	$f2,$f4,$f6
    343c:	1000001b 	b	34ac <func_80046B44+0x158>
    3440:	44061000 	mfc1	a2,$f2
    3444:	8f390000 	lw	t9,0(t9)
    3448:	3c013f80 	lui	at,0x3f80
    344c:	44811000 	mtc1	at,$f2
    3450:	8728019e 	lh	t0,414(t9)
    3454:	44839000 	mtc1	v1,$f18
    3458:	3c010000 	lui	at,0x0
    345c:	44884000 	mtc1	t0,$f8
    3460:	46809120 	cvt.s.w	$f4,$f18
    3464:	c42c0000 	lwc1	$f12,0(at)
    3468:	a7a5003e 	sh	a1,62(sp)
    346c:	afa4001c 	sw	a0,28(sp)
    3470:	468042a0 	cvt.s.w	$f10,$f8
    3474:	460a1403 	div.s	$f16,$f2,$f10
    3478:	46048002 	mul.s	$f0,$f16,$f4
    347c:	0c000000 	jal	0 <func_800437F0>
    3480:	46001381 	sub.s	$f14,$f2,$f0
    3484:	8fa90038 	lw	t1,56(sp)
    3488:	3c013f80 	lui	at,0x3f80
    348c:	44813000 	mtc1	at,$f6
    3490:	c52800c4 	lwc1	$f8,196(t1)
    3494:	8fa4001c 	lw	a0,28(sp)
    3498:	87a5003e 	lh	a1,62(sp)
    349c:	46083283 	div.s	$f10,$f6,$f8
    34a0:	46005082 	mul.s	$f2,$f10,$f0
    34a4:	00000000 	nop
    34a8:	44061000 	mfc1	a2,$f2
    34ac:	0c000000 	jal	0 <func_800437F0>
    34b0:	2407000a 	li	a3,10
    34b4:	8fbf0014 	lw	ra,20(sp)
    34b8:	27bd0038 	addiu	sp,sp,56
    34bc:	03e00008 	jr	ra
    34c0:	00000000 	nop

000034c4 <func_80046CB4>:
    34c4:	27bdffc8 	addiu	sp,sp,-56
    34c8:	afbf0014 	sw	ra,20(sp)
    34cc:	afa40038 	sw	a0,56(sp)
    34d0:	afa5003c 	sw	a1,60(sp)
    34d4:	afa60040 	sw	a2,64(sp)
    34d8:	3c010000 	lui	at,0x0
    34dc:	c4240000 	lwc1	$f4,0(at)
    34e0:	c48600d8 	lwc1	$f6,216(a0)
    34e4:	00063400 	sll	a2,a2,0x10
    34e8:	00052c00 	sll	a1,a1,0x10
    34ec:	4606203c 	c.lt.s	$f4,$f6
    34f0:	44876000 	mtc1	a3,$f12
    34f4:	00052c03 	sra	a1,a1,0x10
    34f8:	00063403 	sra	a2,a2,0x10
    34fc:	4500000f 	bc1f	353c <func_80046CB4+0x78>
    3500:	3c0b0000 	lui	t3,0x0
    3504:	24b98001 	addiu	t9,a1,-32767
    3508:	00d91823 	subu	v1,a2,t9
    350c:	00031c00 	sll	v1,v1,0x10
    3510:	00031c03 	sra	v1,v1,0x10
    3514:	24688001 	addiu	t0,v1,-32767
    3518:	00084c00 	sll	t1,t0,0x10
    351c:	00095403 	sra	t2,t1,0x10
    3520:	448a4000 	mtc1	t2,$f8
    3524:	3c010000 	lui	at,0x0
    3528:	c4320000 	lwc1	$f18,0(at)
    352c:	468042a0 	cvt.s.w	$f10,$f8
    3530:	46125382 	mul.s	$f14,$f10,$f18
    3534:	1000000e 	b	3570 <func_80046CB4+0xac>
    3538:	afa3001c 	sw	v1,28(sp)
    353c:	8d6b0000 	lw	t3,0(t3)
    3540:	3c010000 	lui	at,0x0
    3544:	c4280000 	lwc1	$f8,0(at)
    3548:	856c01f4 	lh	t4,500(t3)
    354c:	24af8001 	addiu	t7,a1,-32767
    3550:	00cf1823 	subu	v1,a2,t7
    3554:	448c2000 	mtc1	t4,$f4
    3558:	00031c00 	sll	v1,v1,0x10
    355c:	00031c03 	sra	v1,v1,0x10
    3560:	468021a0 	cvt.s.w	$f6,$f4
    3564:	46083382 	mul.s	$f14,$f6,$f8
    3568:	00000000 	nop
    356c:	afa3001c 	sw	v1,28(sp)
    3570:	0c000000 	jal	0 <func_800437F0>
    3574:	a7a5003e 	sh	a1,62(sp)
    3578:	3c013f80 	lui	at,0x3f80
    357c:	44815000 	mtc1	at,$f10
    3580:	c7a40048 	lwc1	$f4,72(sp)
    3584:	44806000 	mtc1	zero,$f12
    3588:	46005481 	sub.s	$f18,$f10,$f0
    358c:	8fa3001c 	lw	v1,28(sp)
    3590:	87a5003e 	lh	a1,62(sp)
    3594:	8fb80038 	lw	t8,56(sp)
    3598:	46049182 	mul.s	$f6,$f18,$f4
    359c:	46003400 	add.s	$f16,$f6,$f0
    35a0:	460c803c 	c.lt.s	$f16,$f12
    35a4:	00000000 	nop
    35a8:	45020003 	bc1fl	35b8 <func_80046CB4+0xf4>
    35ac:	3c013f00 	lui	at,0x3f00
    35b0:	46006406 	mov.s	$f16,$f12
    35b4:	3c013f00 	lui	at,0x3f00
    35b8:	c70e00e0 	lwc1	$f14,224(t8)
    35bc:	44816000 	mtc1	at,$f12
    35c0:	e7b00034 	swc1	$f16,52(sp)
    35c4:	a7a5003e 	sh	a1,62(sp)
    35c8:	0c000000 	jal	0 <func_800437F0>
    35cc:	afa3001c 	sw	v1,28(sp)
    35d0:	8fb90038 	lw	t9,56(sp)
    35d4:	3c013f80 	lui	at,0x3f80
    35d8:	8fa3001c 	lw	v1,28(sp)
    35dc:	44814000 	mtc1	at,$f8
    35e0:	c72a00c8 	lwc1	$f10,200(t9)
    35e4:	44839000 	mtc1	v1,$f18
    35e8:	c7b00034 	lwc1	$f16,52(sp)
    35ec:	460a4083 	div.s	$f2,$f8,$f10
    35f0:	87a5003e 	lh	a1,62(sp)
    35f4:	8fbf0014 	lw	ra,20(sp)
    35f8:	27bd0038 	addiu	sp,sp,56
    35fc:	46809120 	cvt.s.w	$f4,$f18
    3600:	46102182 	mul.s	$f6,$f4,$f16
    3604:	00000000 	nop
    3608:	46003202 	mul.s	$f8,$f6,$f0
    360c:	00000000 	nop
    3610:	46024282 	mul.s	$f10,$f8,$f2
    3614:	4600548d 	trunc.w.s	$f18,$f10
    3618:	440b9000 	mfc1	t3,$f18
    361c:	00000000 	nop
    3620:	00ab1021 	addu	v0,a1,t3
    3624:	00021400 	sll	v0,v0,0x10
    3628:	03e00008 	jr	ra
    362c:	00021403 	sra	v0,v0,0x10

00003630 <func_80046E20>:
    3630:	27bdff90 	addiu	sp,sp,-112
    3634:	afb10024 	sw	s1,36(sp)
    3638:	8fb10084 	lw	s1,132(sp)
    363c:	afbf002c 	sw	ra,44(sp)
    3640:	afb20028 	sw	s2,40(sp)
    3644:	afb00020 	sw	s0,32(sp)
    3648:	afa50074 	sw	a1,116(sp)
    364c:	afa60078 	sw	a2,120(sp)
    3650:	afa7007c 	sw	a3,124(sp)
    3654:	86220018 	lh	v0,24(s1)
    3658:	3c100000 	lui	s0,0x0
    365c:	26100000 	addiu	s0,s0,0
    3660:	3c060000 	lui	a2,0x0
    3664:	2c420001 	sltiu	v0,v0,1
    3668:	00809025 	move	s2,a0
    366c:	afa20010 	sw	v0,16(sp)
    3670:	24c60000 	addiu	a2,a2,0
    3674:	0c000000 	jal	0 <func_800437F0>
    3678:	02003825 	move	a3,s0
    367c:	24010001 	li	at,1
    3680:	1041000a 	beq	v0,at,36ac <func_80046E20+0x7c>
    3684:	02202025 	move	a0,s1
    3688:	24010002 	li	at,2
    368c:	10410007 	beq	v0,at,36ac <func_80046E20+0x7c>
    3690:	24010003 	li	at,3
    3694:	104100bc 	beq	v0,at,3988 <func_80046E20+0x358>
    3698:	24010006 	li	at,6
    369c:	504100bb 	beql	v0,at,398c <func_80046E20+0x35c>
    36a0:	862d0018 	lh	t5,24(s1)
    36a4:	10000116 	b	3b00 <func_80046E20+0x4d0>
    36a8:	3c0e0000 	lui	t6,0x0
    36ac:	26450050 	addiu	a1,s2,80
    36b0:	26460074 	addiu	a2,s2,116
    36b4:	3c070000 	lui	a3,0x0
    36b8:	24e70000 	addiu	a3,a3,0
    36bc:	afa60030 	sw	a2,48(sp)
    36c0:	afa50034 	sw	a1,52(sp)
    36c4:	0c000000 	jal	0 <func_800437F0>
    36c8:	afb00010 	sw	s0,16(sp)
    36cc:	3c010000 	lui	at,0x0
    36d0:	c4240000 	lwc1	$f4,0(at)
    36d4:	3c010000 	lui	at,0x0
    36d8:	c4260000 	lwc1	$f6,0(at)
    36dc:	c62a0000 	lwc1	$f10,0(s1)
    36e0:	3c010000 	lui	at,0x0
    36e4:	46062200 	add.s	$f8,$f4,$f6
    36e8:	c4320000 	lwc1	$f18,0(at)
    36ec:	3c010000 	lui	at,0x0
    36f0:	c4240000 	lwc1	$f4,0(at)
    36f4:	46085400 	add.s	$f16,$f10,$f8
    36f8:	3c010000 	lui	at,0x0
    36fc:	3c050000 	lui	a1,0x0
    3700:	46049180 	add.s	$f6,$f18,$f4
    3704:	e7b00058 	swc1	$f16,88(sp)
    3708:	c62a0004 	lwc1	$f10,4(s1)
    370c:	c4300000 	lwc1	$f16,0(at)
    3710:	3c010000 	lui	at,0x0
    3714:	46065200 	add.s	$f8,$f10,$f6
    3718:	c4320000 	lwc1	$f18,0(at)
    371c:	24a50000 	addiu	a1,a1,0
    3720:	8fa40034 	lw	a0,52(sp)
    3724:	46128100 	add.s	$f4,$f16,$f18
    3728:	e7a8005c 	swc1	$f8,92(sp)
    372c:	c62a0008 	lwc1	$f10,8(s1)
    3730:	46045180 	add.s	$f6,$f10,$f4
    3734:	0c000000 	jal	0 <func_800437F0>
    3738:	e7a60060 	swc1	$f6,96(sp)
    373c:	c7a20078 	lwc1	$f2,120(sp)
    3740:	3c013f80 	lui	at,0x3f80
    3744:	8fae0080 	lw	t6,128(sp)
    3748:	4600103c 	c.lt.s	$f2,$f0
    374c:	3c180000 	lui	t8,0x0
    3750:	45020005 	bc1fl	3768 <func_80046E20+0x138>
    3754:	46020403 	div.s	$f16,$f0,$f2
    3758:	44814000 	mtc1	at,$f8
    375c:	10000004 	b	3770 <func_80046E20+0x140>
    3760:	e5c80000 	swc1	$f8,0(t6)
    3764:	46020403 	div.s	$f16,$f0,$f2
    3768:	8faf0080 	lw	t7,128(sp)
    376c:	e5f00000 	swc1	$f16,0(t7)
    3770:	8f180000 	lw	t8,0(t8)
    3774:	3c010000 	lui	at,0x0
    3778:	c4240000 	lwc1	$f4,0(at)
    377c:	871901a8 	lh	t9,424(t8)
    3780:	24080001 	li	t0,1
    3784:	a6280018 	sh	t0,24(s1)
    3788:	44999000 	mtc1	t9,$f18
    378c:	3c090000 	lui	t1,0x0
    3790:	27a40048 	addiu	a0,sp,72
    3794:	468092a0 	cvt.s.w	$f10,$f18
    3798:	27a60058 	addiu	a2,sp,88
    379c:	46045182 	mul.s	$f6,$f10,$f4
    37a0:	e6260010 	swc1	$f6,16(s1)
    37a4:	8d290000 	lw	t1,0(t1)
    37a8:	ae29000c 	sw	t1,12(s1)
    37ac:	0c000000 	jal	0 <func_800437F0>
    37b0:	8fa50034 	lw	a1,52(sp)
    37b4:	8faa0074 	lw	t2,116(sp)
    37b8:	2650005c 	addiu	s0,s2,92
    37bc:	02002025 	move	a0,s0
    37c0:	c5480000 	lwc1	$f8,0(t2)
    37c4:	8fa50034 	lw	a1,52(sp)
    37c8:	27a60048 	addiu	a2,sp,72
    37cc:	0c000000 	jal	0 <func_800437F0>
    37d0:	e7a80048 	swc1	$f8,72(sp)
    37d4:	8e0c0000 	lw	t4,0(s0)
    37d8:	3c060000 	lui	a2,0x0
    37dc:	24c60000 	addiu	a2,a2,0
    37e0:	accc0000 	sw	t4,0(a2)
    37e4:	8e0b0004 	lw	t3,4(s0)
    37e8:	02402025 	move	a0,s2
    37ec:	8fa50034 	lw	a1,52(sp)
    37f0:	accb0004 	sw	t3,4(a2)
    37f4:	8e0c0008 	lw	t4,8(s0)
    37f8:	0c000000 	jal	0 <func_800437F0>
    37fc:	accc0008 	sw	t4,8(a2)
    3800:	3c060000 	lui	a2,0x0
    3804:	1440004b 	bnez	v0,3934 <func_80046E20+0x304>
    3808:	24c60000 	addiu	a2,a2,0
    380c:	8fa20074 	lw	v0,116(sp)
    3810:	87ae004e 	lh	t6,78(sp)
    3814:	87ab004c 	lh	t3,76(sp)
    3818:	844d0006 	lh	t5,6(v0)
    381c:	02002025 	move	a0,s0
    3820:	8fa50034 	lw	a1,52(sp)
    3824:	01ae7823 	subu	t7,t5,t6
    3828:	000fc400 	sll	t8,t7,0x10
    382c:	0018cc03 	sra	t9,t8,0x10
    3830:	00194043 	sra	t0,t9,0x1
    3834:	01c84821 	addu	t1,t6,t0
    3838:	a7a9004e 	sh	t1,78(sp)
    383c:	844a0004 	lh	t2,4(v0)
    3840:	27a60048 	addiu	a2,sp,72
    3844:	014b6023 	subu	t4,t2,t3
    3848:	000c6c00 	sll	t5,t4,0x10
    384c:	000d7c03 	sra	t7,t5,0x10
    3850:	000fc043 	sra	t8,t7,0x1
    3854:	0178c821 	addu	t9,t3,t8
    3858:	0c000000 	jal	0 <func_800437F0>
    385c:	a7b9004c 	sh	t9,76(sp)
    3860:	3c0e0000 	lui	t6,0x0
    3864:	85ce0000 	lh	t6,0(t6)
    3868:	87a8004e 	lh	t0,78(sp)
    386c:	8faa0074 	lw	t2,116(sp)
    3870:	29c12aa8 	slti	at,t6,10920
    3874:	50200006 	beqzl	at,3890 <func_80046E20+0x260>
    3878:	854c0006 	lh	t4,6(t2)
    387c:	a6280016 	sh	t0,22(s1)
    3880:	87a9004c 	lh	t1,76(sp)
    3884:	10000006 	b	38a0 <func_80046E20+0x270>
    3888:	a6290014 	sh	t1,20(s1)
    388c:	854c0006 	lh	t4,6(t2)
    3890:	a62c0016 	sh	t4,22(s1)
    3894:	8fad0074 	lw	t5,116(sp)
    3898:	85af0004 	lh	t7,4(t5)
    389c:	a62f0014 	sh	t7,20(s1)
    38a0:	3c010000 	lui	at,0x0
    38a4:	c4300000 	lwc1	$f16,0(at)
    38a8:	3c010000 	lui	at,0x0
    38ac:	c4320000 	lwc1	$f18,0(at)
    38b0:	c6240000 	lwc1	$f4,0(s1)
    38b4:	3c010000 	lui	at,0x0
    38b8:	46128280 	add.s	$f10,$f16,$f18
    38bc:	c4280000 	lwc1	$f8,0(at)
    38c0:	3c010000 	lui	at,0x0
    38c4:	c4300000 	lwc1	$f16,0(at)
    38c8:	460a2181 	sub.s	$f6,$f4,$f10
    38cc:	3c010000 	lui	at,0x0
    38d0:	27a40048 	addiu	a0,sp,72
    38d4:	46104480 	add.s	$f18,$f8,$f16
    38d8:	e7a60058 	swc1	$f6,88(sp)
    38dc:	c6240004 	lwc1	$f4,4(s1)
    38e0:	c4260000 	lwc1	$f6,0(at)
    38e4:	3c010000 	lui	at,0x0
    38e8:	46122281 	sub.s	$f10,$f4,$f18
    38ec:	c4280000 	lwc1	$f8,0(at)
    38f0:	8fa50034 	lw	a1,52(sp)
    38f4:	27a60058 	addiu	a2,sp,88
    38f8:	46083400 	add.s	$f16,$f6,$f8
    38fc:	e7aa005c 	swc1	$f10,92(sp)
    3900:	c6240008 	lwc1	$f4,8(s1)
    3904:	46102481 	sub.s	$f18,$f4,$f16
    3908:	0c000000 	jal	0 <func_800437F0>
    390c:	e7b20060 	swc1	$f18,96(sp)
    3910:	8fab0074 	lw	t3,116(sp)
    3914:	8fa40030 	lw	a0,48(sp)
    3918:	8fa50034 	lw	a1,52(sp)
    391c:	c56a0000 	lwc1	$f10,0(t3)
    3920:	27a60048 	addiu	a2,sp,72
    3924:	0c000000 	jal	0 <func_800437F0>
    3928:	e7aa0048 	swc1	$f10,72(sp)
    392c:	10000098 	b	3b90 <func_80046E20+0x560>
    3930:	8fbf002c 	lw	ra,44(sp)
    3934:	8cd90000 	lw	t9,0(a2)
    3938:	3c0e0000 	lui	t6,0x0
    393c:	25ce0000 	addiu	t6,t6,0
    3940:	ae190000 	sw	t9,0(s0)
    3944:	8cd80004 	lw	t8,4(a2)
    3948:	00c05025 	move	t2,a2
    394c:	24cc0024 	addiu	t4,a2,36
    3950:	ae180004 	sw	t8,4(s0)
    3954:	8cd90008 	lw	t9,8(a2)
    3958:	ae190008 	sw	t9,8(s0)
    395c:	8d490000 	lw	t1,0(t2)
    3960:	254a000c 	addiu	t2,t2,12
    3964:	25ce000c 	addiu	t6,t6,12
    3968:	adc9fff4 	sw	t1,-12(t6)
    396c:	8d48fff8 	lw	t0,-8(t2)
    3970:	adc8fff8 	sw	t0,-8(t6)
    3974:	8d49fffc 	lw	t1,-4(t2)
    3978:	154cfff8 	bne	t2,t4,395c <func_80046E20+0x32c>
    397c:	adc9fffc 	sw	t1,-4(t6)
    3980:	8d490000 	lw	t1,0(t2)
    3984:	adc90000 	sw	t1,0(t6)
    3988:	862d0018 	lh	t5,24(s1)
    398c:	2650005c 	addiu	s0,s2,92
    3990:	26440050 	addiu	a0,s2,80
    3994:	11a0000c 	beqz	t5,39c8 <func_80046E20+0x398>
    3998:	3c050000 	lui	a1,0x0
    399c:	3c0f0000 	lui	t7,0x0
    39a0:	8def0000 	lw	t7,0(t7)
    39a4:	85eb01fc 	lh	t3,508(t7)
    39a8:	a6200018 	sh	zero,24(s1)
    39ac:	a62b001a 	sh	t3,26(s1)
    39b0:	8e190000 	lw	t9,0(s0)
    39b4:	ae590074 	sw	t9,116(s2)
    39b8:	8e180004 	lw	t8,4(s0)
    39bc:	ae580078 	sw	t8,120(s2)
    39c0:	8e190008 	lw	t9,8(s0)
    39c4:	ae59007c 	sw	t9,124(s2)
    39c8:	0c000000 	jal	0 <func_800437F0>
    39cc:	24a50000 	addiu	a1,a1,0
    39d0:	c7ac0078 	lwc1	$f12,120(sp)
    39d4:	46000086 	mov.s	$f2,$f0
    39d8:	3c013f80 	lui	at,0x3f80
    39dc:	4600603c 	c.lt.s	$f12,$f0
    39e0:	8fac0080 	lw	t4,128(sp)
    39e4:	45020005 	bc1fl	39fc <func_80046E20+0x3cc>
    39e8:	460c0203 	div.s	$f8,$f0,$f12
    39ec:	44813000 	mtc1	at,$f6
    39f0:	10000004 	b	3a04 <func_80046E20+0x3d4>
    39f4:	e5860000 	swc1	$f6,0(t4)
    39f8:	460c0203 	div.s	$f8,$f0,$f12
    39fc:	8faa0080 	lw	t2,128(sp)
    3a00:	e5480000 	swc1	$f8,0(t2)
    3a04:	8fae0080 	lw	t6,128(sp)
    3a08:	c7b0007c 	lwc1	$f16,124(sp)
    3a0c:	3c050000 	lui	a1,0x0
    3a10:	c5c40000 	lwc1	$f4,0(t6)
    3a14:	3c060000 	lui	a2,0x0
    3a18:	24c60000 	addiu	a2,a2,0
    3a1c:	46102482 	mul.s	$f18,$f4,$f16
    3a20:	24a50000 	addiu	a1,a1,0
    3a24:	02002025 	move	a0,s0
    3a28:	3c073f80 	lui	a3,0x3f80
    3a2c:	e6320010 	swc1	$f18,16(s1)
    3a30:	0c000000 	jal	0 <func_800437F0>
    3a34:	e7a20050 	swc1	$f2,80(sp)
    3a38:	c7a20050 	lwc1	$f2,80(sp)
    3a3c:	ae20000c 	sw	zero,12(s1)
    3a40:	3c080000 	lui	t0,0x0
    3a44:	8d080000 	lw	t0,0(t0)
    3a48:	8fad0074 	lw	t5,116(sp)
    3a4c:	3c040000 	lui	a0,0x0
    3a50:	850901be 	lh	t1,446(t0)
    3a54:	44895000 	mtc1	t1,$f10
    3a58:	00000000 	nop
    3a5c:	468051a0 	cvt.s.w	$f6,$f10
    3a60:	4606103c 	c.lt.s	$f2,$f6
    3a64:	00000000 	nop
    3a68:	45020049 	bc1fl	3b90 <func_80046E20+0x560>
    3a6c:	8fbf002c 	lw	ra,44(sp)
    3a70:	84840000 	lh	a0,0(a0)
    3a74:	85af0006 	lh	t7,6(t5)
    3a78:	e7a20050 	swc1	$f2,80(sp)
    3a7c:	24843fff 	addiu	a0,a0,16383
    3a80:	00042400 	sll	a0,a0,0x10
    3a84:	00042403 	sra	a0,a0,0x10
    3a88:	0c000000 	jal	0 <func_800437F0>
    3a8c:	a7af0046 	sh	t7,70(sp)
    3a90:	3c010000 	lui	at,0x0
    3a94:	c4280000 	lwc1	$f8,0(at)
    3a98:	3c020000 	lui	v0,0x0
    3a9c:	8c420000 	lw	v0,0(v0)
    3aa0:	46080102 	mul.s	$f4,$f0,$f8
    3aa4:	3c010000 	lui	at,0x0
    3aa8:	c4260000 	lwc1	$f6,0(at)
    3aac:	c7a20050 	lwc1	$f2,80(sp)
    3ab0:	02002025 	move	a0,s0
    3ab4:	02002825 	move	a1,s0
    3ab8:	27a60040 	addiu	a2,sp,64
    3abc:	4600240d 	trunc.w.s	$f16,$f4
    3ac0:	44188000 	mfc1	t8,$f16
    3ac4:	00000000 	nop
    3ac8:	a7b80044 	sh	t8,68(sp)
    3acc:	845901c0 	lh	t9,448(v0)
    3ad0:	844c01be 	lh	t4,446(v0)
    3ad4:	44999000 	mtc1	t9,$f18
    3ad8:	448c2000 	mtc1	t4,$f4
    3adc:	468092a0 	cvt.s.w	$f10,$f18
    3ae0:	46802420 	cvt.s.w	$f16,$f4
    3ae4:	46065202 	mul.s	$f8,$f10,$f6
    3ae8:	46028481 	sub.s	$f18,$f16,$f2
    3aec:	46124282 	mul.s	$f10,$f8,$f18
    3af0:	0c000000 	jal	0 <func_800437F0>
    3af4:	e7aa0040 	swc1	$f10,64(sp)
    3af8:	10000025 	b	3b90 <func_80046E20+0x560>
    3afc:	8fbf002c 	lw	ra,44(sp)
    3b00:	862a0018 	lh	t2,24(s1)
    3b04:	5140000c 	beqzl	t2,3b38 <func_80046E20+0x508>
    3b08:	c7a6007c 	lwc1	$f6,124(sp)
    3b0c:	8dce0000 	lw	t6,0(t6)
    3b10:	85c801fc 	lh	t0,508(t6)
    3b14:	a628001a 	sh	t0,26(s1)
    3b18:	8e4d005c 	lw	t5,92(s2)
    3b1c:	8e490060 	lw	t1,96(s2)
    3b20:	ae4d0074 	sw	t5,116(s2)
    3b24:	8e4d0064 	lw	t5,100(s2)
    3b28:	ae490078 	sw	t1,120(s2)
    3b2c:	ae4d007c 	sw	t5,124(s2)
    3b30:	a6200018 	sh	zero,24(s1)
    3b34:	c7a6007c 	lwc1	$f6,124(sp)
    3b38:	ae20000c 	sw	zero,12(s1)
    3b3c:	3c010000 	lui	at,0x0
    3b40:	e6260010 	swc1	$f6,16(s1)
    3b44:	c4240000 	lwc1	$f4,0(at)
    3b48:	3c010000 	lui	at,0x0
    3b4c:	c4300000 	lwc1	$f16,0(at)
    3b50:	2650005c 	addiu	s0,s2,92
    3b54:	3c010000 	lui	at,0x0
    3b58:	46102200 	add.s	$f8,$f4,$f16
    3b5c:	e6080000 	swc1	$f8,0(s0)
    3b60:	c4320000 	lwc1	$f18,0(at)
    3b64:	3c010000 	lui	at,0x0
    3b68:	c42a0000 	lwc1	$f10,0(at)
    3b6c:	3c010000 	lui	at,0x0
    3b70:	460a9180 	add.s	$f6,$f18,$f10
    3b74:	e6060004 	swc1	$f6,4(s0)
    3b78:	c4240000 	lwc1	$f4,0(at)
    3b7c:	3c010000 	lui	at,0x0
    3b80:	c4300000 	lwc1	$f16,0(at)
    3b84:	46102200 	add.s	$f8,$f4,$f16
    3b88:	e6080008 	swc1	$f8,8(s0)
    3b8c:	8fbf002c 	lw	ra,44(sp)
    3b90:	8fb00020 	lw	s0,32(sp)
    3b94:	8fb10024 	lw	s1,36(sp)
    3b98:	8fb20028 	lw	s2,40(sp)
    3b9c:	03e00008 	jr	ra
    3ba0:	27bd0070 	addiu	sp,sp,112

00003ba4 <func_80047394>:
    3ba4:	afa40000 	sw	a0,0(sp)
    3ba8:	03e00008 	jr	ra
    3bac:	24020001 	li	v0,1

00003bb0 <Camera_Normal1>:
    3bb0:	27bdff50 	addiu	sp,sp,-176
    3bb4:	afb0001c 	sw	s0,28(sp)
    3bb8:	00808025 	move	s0,a0
    3bbc:	afbf0024 	sw	ra,36(sp)
    3bc0:	afb10020 	sw	s1,32(sp)
    3bc4:	0c000000 	jal	0 <func_800437F0>
    3bc8:	8c840090 	lw	a0,144(a0)
    3bcc:	8602015e 	lh	v0,350(s0)
    3bd0:	2401000a 	li	at,10
    3bd4:	3c0b0000 	lui	t3,0x0
    3bd8:	10400009 	beqz	v0,3c00 <Camera_Normal1+0x50>
    3bdc:	00000000 	nop
    3be0:	10410007 	beq	v0,at,3c00 <Camera_Normal1+0x50>
    3be4:	24010014 	li	at,20
    3be8:	10410005 	beq	v0,at,3c00 <Camera_Normal1+0x50>
    3bec:	3c0e0000 	lui	t6,0x0
    3bf0:	8dce0000 	lw	t6,0(t6)
    3bf4:	85c30314 	lh	v1,788(t6)
    3bf8:	1060005b 	beqz	v1,3d68 <Camera_Normal1+0x1b8>
    3bfc:	00000000 	nop
    3c00:	8d6b0000 	lw	t3,0(t3)
    3c04:	3c010000 	lui	at,0x0
    3c08:	c4300000 	lwc1	$f16,0(at)
    3c0c:	856c01f0 	lh	t4,496(t3)
    3c10:	3c013f80 	lui	at,0x3f80
    3c14:	44814000 	mtc1	at,$f8
    3c18:	448c2000 	mtc1	t4,$f4
    3c1c:	3c014288 	lui	at,0x4288
    3c20:	860f0142 	lh	t7,322(s0)
    3c24:	468021a0 	cvt.s.w	$f6,$f4
    3c28:	44812000 	mtc1	at,$f4
    3c2c:	3c190000 	lui	t9,0x0
    3c30:	000fc0c0 	sll	t8,t7,0x3
    3c34:	86080144 	lh	t0,324(s0)
    3c38:	0338c821 	addu	t9,t9,t8
    3c3c:	46103302 	mul.s	$f12,$f6,$f16
    3c40:	46002183 	div.s	$f6,$f4,$f0
    3c44:	8f390004 	lw	t9,4(t9)
    3c48:	000848c0 	sll	t1,t0,0x3
    3c4c:	3c010000 	lui	at,0x0
    3c50:	03295021 	addu	t2,t9,t1
    3c54:	8d420004 	lw	v0,4(t2)
    3c58:	460c4280 	add.s	$f10,$f8,$f12
    3c5c:	844d0000 	lh	t5,0(v0)
    3c60:	24420024 	addiu	v0,v0,36
    3c64:	46066202 	mul.s	$f8,$f12,$f6
    3c68:	448d3000 	mtc1	t5,$f6
    3c6c:	46100102 	mul.s	$f4,$f0,$f16
    3c70:	46085381 	sub.s	$f14,$f10,$f8
    3c74:	468032a0 	cvt.s.w	$f10,$f6
    3c78:	460e2082 	mul.s	$f2,$f4,$f14
    3c7c:	00000000 	nop
    3c80:	46025202 	mul.s	$f8,$f10,$f2
    3c84:	e6080000 	swc1	$f8,0(s0)
    3c88:	844effe0 	lh	t6,-32(v0)
    3c8c:	448e2000 	mtc1	t6,$f4
    3c90:	00000000 	nop
    3c94:	468021a0 	cvt.s.w	$f6,$f4
    3c98:	46023282 	mul.s	$f10,$f6,$f2
    3c9c:	e60a0004 	swc1	$f10,4(s0)
    3ca0:	844fffe4 	lh	t7,-28(v0)
    3ca4:	448f4000 	mtc1	t7,$f8
    3ca8:	3c0f0000 	lui	t7,0x0
    3cac:	46804120 	cvt.s.w	$f4,$f8
    3cb0:	46022182 	mul.s	$f6,$f4,$f2
    3cb4:	e6060008 	swc1	$f6,8(s0)
    3cb8:	8458ffe8 	lh	t8,-24(v0)
    3cbc:	c4240000 	lwc1	$f4,0(at)
    3cc0:	3c013f00 	lui	at,0x3f00
    3cc4:	44985000 	mtc1	t8,$f10
    3cc8:	00000000 	nop
    3ccc:	46805220 	cvt.s.w	$f8,$f10
    3cd0:	44815000 	mtc1	at,$f10
    3cd4:	46044182 	mul.s	$f6,$f8,$f4
    3cd8:	460a3200 	add.s	$f8,$f6,$f10
    3cdc:	4600410d 	trunc.w.s	$f4,$f8
    3ce0:	44192000 	mfc1	t9,$f4
    3ce4:	00000000 	nop
    3ce8:	a6190020 	sh	t9,32(s0)
    3cec:	8449ffec 	lh	t1,-20(v0)
    3cf0:	44893000 	mtc1	t1,$f6
    3cf4:	00000000 	nop
    3cf8:	468032a0 	cvt.s.w	$f10,$f6
    3cfc:	e60a000c 	swc1	$f10,12(s0)
    3d00:	844afff0 	lh	t2,-16(v0)
    3d04:	448a4000 	mtc1	t2,$f8
    3d08:	00000000 	nop
    3d0c:	46804120 	cvt.s.w	$f4,$f8
    3d10:	e6040010 	swc1	$f4,16(s0)
    3d14:	844bfff4 	lh	t3,-12(v0)
    3d18:	448b3000 	mtc1	t3,$f6
    3d1c:	00000000 	nop
    3d20:	468032a0 	cvt.s.w	$f10,$f6
    3d24:	46105202 	mul.s	$f8,$f10,$f16
    3d28:	e6080014 	swc1	$f8,20(s0)
    3d2c:	844cfff8 	lh	t4,-8(v0)
    3d30:	448c2000 	mtc1	t4,$f4
    3d34:	00000000 	nop
    3d38:	468021a0 	cvt.s.w	$f6,$f4
    3d3c:	e6060018 	swc1	$f6,24(s0)
    3d40:	844dfffc 	lh	t5,-4(v0)
    3d44:	448d5000 	mtc1	t5,$f10
    3d48:	00000000 	nop
    3d4c:	46805220 	cvt.s.w	$f8,$f10
    3d50:	46104102 	mul.s	$f4,$f8,$f16
    3d54:	e604001c 	swc1	$f4,28(s0)
    3d58:	844e0000 	lh	t6,0(v0)
    3d5c:	a60e0022 	sh	t6,34(s0)
    3d60:	8def0000 	lw	t7,0(t7)
    3d64:	85e30314 	lh	v1,788(t7)
    3d68:	50600004 	beqzl	v1,3d7c <Camera_Normal1+0x1cc>
    3d6c:	86180022 	lh	t8,34(s0)
    3d70:	0c000000 	jal	0 <func_800437F0>
    3d74:	02002025 	move	a0,s0
    3d78:	86180022 	lh	t8,34(s0)
    3d7c:	3c010000 	lui	at,0x0
    3d80:	26050050 	addiu	a1,s0,80
    3d84:	2606005c 	addiu	a2,s0,92
    3d88:	afa60040 	sw	a2,64(sp)
    3d8c:	afa5003c 	sw	a1,60(sp)
    3d90:	27a40074 	addiu	a0,sp,116
    3d94:	0c000000 	jal	0 <func_800437F0>
    3d98:	ac380000 	sw	t8,0(at)
    3d9c:	26060074 	addiu	a2,s0,116
    3da0:	afa60038 	sw	a2,56(sp)
    3da4:	27a4006c 	addiu	a0,sp,108
    3da8:	0c000000 	jal	0 <func_800437F0>
    3dac:	8fa5003c 	lw	a1,60(sp)
    3db0:	8603015e 	lh	v1,350(s0)
    3db4:	2401000a 	li	at,10
    3db8:	26110024 	addiu	s1,s0,36
    3dbc:	10600017 	beqz	v1,3e1c <Camera_Normal1+0x26c>
    3dc0:	240b000a 	li	t3,10
    3dc4:	10610015 	beq	v1,at,3e1c <Camera_Normal1+0x26c>
    3dc8:	24010014 	li	at,20
    3dcc:	10610006 	beq	v1,at,3de8 <Camera_Normal1+0x238>
    3dd0:	3c080000 	lui	t0,0x0
    3dd4:	24010019 	li	at,25
    3dd8:	50610011 	beql	v1,at,3e20 <Camera_Normal1+0x270>
    3ddc:	a6200018 	sh	zero,24(s1)
    3de0:	10000026 	b	3e7c <Camera_Normal1+0x2cc>
    3de4:	26110024 	addiu	s1,s0,36
    3de8:	8d080000 	lw	t0,0(t0)
    3dec:	3c090000 	lui	t1,0x0
    3df0:	851901ca 	lh	t9,458(t0)
    3df4:	44993000 	mtc1	t9,$f6
    3df8:	00000000 	nop
    3dfc:	468032a0 	cvt.s.w	$f10,$f6
    3e00:	e60a00c8 	swc1	$f10,200(s0)
    3e04:	8d290000 	lw	t1,0(t1)
    3e08:	852a01ca 	lh	t2,458(t1)
    3e0c:	448a4000 	mtc1	t2,$f8
    3e10:	00000000 	nop
    3e14:	46804120 	cvt.s.w	$f4,$f8
    3e18:	e60400c4 	swc1	$f4,196(s0)
    3e1c:	a6200018 	sh	zero,24(s1)
    3e20:	86230018 	lh	v1,24(s1)
    3e24:	ae20000c 	sw	zero,12(s1)
    3e28:	a6200024 	sh	zero,36(s1)
    3e2c:	a62b0028 	sh	t3,40(s1)
    3e30:	a6230014 	sh	v1,20(s1)
    3e34:	a6230016 	sh	v1,22(s1)
    3e38:	c606000c 	lwc1	$f6,12(s0)
    3e3c:	3c020000 	lui	v0,0x0
    3e40:	3c010000 	lui	at,0x0
    3e44:	e6260010 	swc1	$f6,16(s1)
    3e48:	c60a0098 	lwc1	$f10,152(s0)
    3e4c:	e62a001c 	swc1	$f10,28(s1)
    3e50:	c60800d8 	lwc1	$f8,216(s0)
    3e54:	a620001a 	sh	zero,26(s1)
    3e58:	e6280020 	swc1	$f8,32(s1)
    3e5c:	87ac007a 	lh	t4,122(sp)
    3e60:	a62c0026 	sh	t4,38(s1)
    3e64:	8c420000 	lw	v0,0(v0)
    3e68:	ac200000 	sw	zero,0(at)
    3e6c:	844e01f8 	lh	t6,504(v0)
    3e70:	844d01fa 	lh	t5,506(v0)
    3e74:	01ae7821 	addu	t7,t5,t6
    3e78:	a62f002a 	sh	t7,42(s1)
    3e7c:	24030001 	li	v1,1
    3e80:	a603015e 	sh	v1,350(s0)
    3e84:	3c010000 	lui	at,0x0
    3e88:	ac230000 	sw	v1,0(at)
    3e8c:	86220028 	lh	v0,40(s1)
    3e90:	3c010000 	lui	at,0x0
    3e94:	10400002 	beqz	v0,3ea0 <Camera_Normal1+0x2f0>
    3e98:	2458ffff 	addiu	t8,v0,-1
    3e9c:	a6380028 	sh	t8,40(s1)
    3ea0:	c4240000 	lwc1	$f4,0(at)
    3ea4:	c60600d8 	lwc1	$f6,216(s0)
    3ea8:	4606203c 	c.lt.s	$f4,$f6
    3eac:	00000000 	nop
    3eb0:	4502000a 	bc1fl	3edc <Camera_Normal1+0x32c>
    3eb4:	8622002a 	lh	v0,42(s1)
    3eb8:	3c030000 	lui	v1,0x0
    3ebc:	24630000 	addiu	v1,v1,0
    3ec0:	8c620000 	lw	v0,0(v1)
    3ec4:	844801fa 	lh	t0,506(v0)
    3ec8:	845901f8 	lh	t9,504(v0)
    3ecc:	01194821 	addu	t1,t0,t9
    3ed0:	10000020 	b	3f54 <Camera_Normal1+0x3a4>
    3ed4:	a629002a 	sh	t1,42(s1)
    3ed8:	8622002a 	lh	v0,42(s1)
    3edc:	1840001d 	blez	v0,3f54 <Camera_Normal1+0x3a4>
    3ee0:	3c0a0000 	lui	t2,0x0
    3ee4:	8d4a0000 	lw	t2,0(t2)
    3ee8:	854b01f8 	lh	t3,504(t2)
    3eec:	0162082a 	slt	at,t3,v0
    3ef0:	50200017 	beqzl	at,3f50 <Camera_Normal1+0x3a0>
    3ef4:	244cffff 	addiu	t4,v0,-1
    3ef8:	860c00a2 	lh	t4,162(s0)
    3efc:	87b8007a 	lh	t8,122(sp)
    3f00:	258d8001 	addiu	t5,t4,-32767
    3f04:	000d7400 	sll	t6,t5,0x10
    3f08:	000e7c03 	sra	t7,t6,0x10
    3f0c:	01f84023 	subu	t0,t7,t8
    3f10:	0008cc00 	sll	t9,t0,0x10
    3f14:	00194c03 	sra	t1,t9,0x10
    3f18:	0122001a 	div	zero,t1,v0
    3f1c:	00005012 	mflo	t2
    3f20:	030a5821 	addu	t3,t8,t2
    3f24:	a62b0026 	sh	t3,38(s1)
    3f28:	14400002 	bnez	v0,3f34 <Camera_Normal1+0x384>
    3f2c:	00000000 	nop
    3f30:	0007000d 	break	0x7
    3f34:	2401ffff 	li	at,-1
    3f38:	14410004 	bne	v0,at,3f4c <Camera_Normal1+0x39c>
    3f3c:	3c018000 	lui	at,0x8000
    3f40:	15210002 	bne	t1,at,3f4c <Camera_Normal1+0x39c>
    3f44:	00000000 	nop
    3f48:	0006000d 	break	0x6
    3f4c:	244cffff 	addiu	t4,v0,-1
    3f50:	a62c002a 	sh	t4,42(s1)
    3f54:	3c030000 	lui	v1,0x0
    3f58:	24630000 	addiu	v1,v1,0
    3f5c:	8c620000 	lw	v0,0(v1)
    3f60:	3c010000 	lui	at,0x0
    3f64:	c4320000 	lwc1	$f18,0(at)
    3f68:	844d01c6 	lh	t5,454(v0)
    3f6c:	844e01c8 	lh	t6,456(v0)
    3f70:	c60000e0 	lwc1	$f0,224(s0)
    3f74:	448d5000 	mtc1	t5,$f10
    3f78:	448e2000 	mtc1	t6,$f4
    3f7c:	46805220 	cvt.s.w	$f8,$f10
    3f80:	468021a0 	cvt.s.w	$f6,$f4
    3f84:	46124082 	mul.s	$f2,$f8,$f18
    3f88:	00000000 	nop
    3f8c:	46001402 	mul.s	$f16,$f2,$f0
    3f90:	00000000 	nop
    3f94:	46123282 	mul.s	$f10,$f6,$f18
    3f98:	00000000 	nop
    3f9c:	46005202 	mul.s	$f8,$f10,$f0
    3fa0:	e7a8009c 	swc1	$f8,156(sp)
    3fa4:	862f0018 	lh	t7,24(s1)
    3fa8:	11e00003 	beqz	t7,3fb8 <Camera_Normal1+0x408>
    3fac:	00000000 	nop
    3fb0:	10000002 	b	3fbc <Camera_Normal1+0x40c>
    3fb4:	e7a20098 	swc1	$f2,152(sp)
    3fb8:	e7b00098 	swc1	$f16,152(sp)
    3fbc:	c60000d8 	lwc1	$f0,216(s0)
    3fc0:	c6240020 	lwc1	$f4,32(s1)
    3fc4:	3c010000 	lui	at,0x0
    3fc8:	c42a0000 	lwc1	$f10,0(at)
    3fcc:	46040181 	sub.s	$f6,$f0,$f4
    3fd0:	3c013f80 	lui	at,0x3f80
    3fd4:	44814000 	mtc1	at,$f8
    3fd8:	460a3082 	mul.s	$f2,$f6,$f10
    3fdc:	4602403c 	c.lt.s	$f8,$f2
    3fe0:	00000000 	nop
    3fe4:	45000003 	bc1f	3ff4 <Camera_Normal1+0x444>
    3fe8:	3c013f80 	lui	at,0x3f80
    3fec:	44811000 	mtc1	at,$f2
    3ff0:	00000000 	nop
    3ff4:	3c01bf80 	lui	at,0xbf80
    3ff8:	44816000 	mtc1	at,$f12
    3ffc:	00000000 	nop
    4000:	4602603c 	c.lt.s	$f12,$f2
    4004:	00000000 	nop
    4008:	45020003 	bc1fl	4018 <Camera_Normal1+0x468>
    400c:	8622001a 	lh	v0,26(s1)
    4010:	46006086 	mov.s	$f2,$f12
    4014:	8622001a 	lh	v0,26(s1)
    4018:	e6200020 	swc1	$f0,32(s1)
    401c:	10400022 	beqz	v0,40a8 <Camera_Normal1+0x4f8>
    4020:	00024040 	sll	t0,v0,0x1
    4024:	44883000 	mtc1	t0,$f6
    4028:	c6240010 	lwc1	$f4,16(s1)
    402c:	c60e00c8 	lwc1	$f14,200(s0)
    4030:	468032a0 	cvt.s.w	$f10,$f6
    4034:	3c073dcc 	lui	a3,0x3dcc
    4038:	34e7cccd 	ori	a3,a3,0xcccd
    403c:	e7b000a0 	swc1	$f16,160(sp)
    4040:	e7a20094 	swc1	$f2,148(sp)
    4044:	8fa60098 	lw	a2,152(sp)
    4048:	0c000000 	jal	0 <func_800437F0>
    404c:	460a2300 	add.s	$f12,$f4,$f10
    4050:	e60000c8 	swc1	$f0,200(s0)
    4054:	3c190000 	lui	t9,0x0
    4058:	8f390000 	lw	t9,0(t9)
    405c:	8638001a 	lh	t8,26(s1)
    4060:	3c073dcc 	lui	a3,0x3dcc
    4064:	872901a2 	lh	t1,418(t9)
    4068:	00185040 	sll	t2,t8,0x1
    406c:	448a2000 	mtc1	t2,$f4
    4070:	44894000 	mtc1	t1,$f8
    4074:	34e7cccd 	ori	a3,a3,0xcccd
    4078:	468022a0 	cvt.s.w	$f10,$f4
    407c:	8fa6009c 	lw	a2,156(sp)
    4080:	c60e00c4 	lwc1	$f14,196(s0)
    4084:	468041a0 	cvt.s.w	$f6,$f8
    4088:	0c000000 	jal	0 <func_800437F0>
    408c:	460a3300 	add.s	$f12,$f6,$f10
    4090:	c7b000a0 	lwc1	$f16,160(sp)
    4094:	e60000c4 	swc1	$f0,196(s0)
    4098:	862b001a 	lh	t3,26(s1)
    409c:	256cffff 	addiu	t4,t3,-1
    40a0:	10000020 	b	4124 <Camera_Normal1+0x574>
    40a4:	a62c001a 	sh	t4,26(s1)
    40a8:	8c6d0000 	lw	t5,0(v1)
    40ac:	c6200010 	lwc1	$f0,16(s1)
    40b0:	c60e00c8 	lwc1	$f14,200(s0)
    40b4:	85ae01f6 	lh	t6,502(t5)
    40b8:	3c073dcc 	lui	a3,0x3dcc
    40bc:	34e7cccd 	ori	a3,a3,0xcccd
    40c0:	448e4000 	mtc1	t6,$f8
    40c4:	e7b000a0 	swc1	$f16,160(sp)
    40c8:	e7a20094 	swc1	$f2,148(sp)
    40cc:	46804120 	cvt.s.w	$f4,$f8
    40d0:	8fa60098 	lw	a2,152(sp)
    40d4:	46122182 	mul.s	$f6,$f4,$f18
    40d8:	00000000 	nop
    40dc:	46003282 	mul.s	$f10,$f6,$f0
    40e0:	00000000 	nop
    40e4:	46025202 	mul.s	$f8,$f10,$f2
    40e8:	0c000000 	jal	0 <func_800437F0>
    40ec:	46080301 	sub.s	$f12,$f0,$f8
    40f0:	e60000c8 	swc1	$f0,200(s0)
    40f4:	3c0f0000 	lui	t7,0x0
    40f8:	8def0000 	lw	t7,0(t7)
    40fc:	3c073dcc 	lui	a3,0x3dcc
    4100:	34e7cccd 	ori	a3,a3,0xcccd
    4104:	85e801a2 	lh	t0,418(t7)
    4108:	8fa6009c 	lw	a2,156(sp)
    410c:	c60e00c4 	lwc1	$f14,196(s0)
    4110:	44882000 	mtc1	t0,$f4
    4114:	0c000000 	jal	0 <func_800437F0>
    4118:	46802320 	cvt.s.w	$f12,$f4
    411c:	c7b000a0 	lwc1	$f16,160(sp)
    4120:	e60000c4 	swc1	$f0,196(s0)
    4124:	3c190000 	lui	t9,0x0
    4128:	8f390000 	lw	t9,0(t9)
    412c:	c60e00c4 	lwc1	$f14,196(s0)
    4130:	3c073dcc 	lui	a3,0x3dcc
    4134:	872901a2 	lh	t1,418(t9)
    4138:	e7b000a0 	swc1	$f16,160(sp)
    413c:	34e7cccd 	ori	a3,a3,0xcccd
    4140:	44893000 	mtc1	t1,$f6
    4144:	8fa6009c 	lw	a2,156(sp)
    4148:	0c000000 	jal	0 <func_800437F0>
    414c:	46803320 	cvt.s.w	$f12,$f6
    4150:	c7b000a0 	lwc1	$f16,160(sp)
    4154:	e60000c4 	swc1	$f0,196(s0)
    4158:	3c180000 	lui	t8,0x0
    415c:	8f180000 	lw	t8,0(t8)
    4160:	3c010000 	lui	at,0x0
    4164:	c4240000 	lwc1	$f4,0(at)
    4168:	870a0198 	lh	t2,408(t8)
    416c:	3c073dcc 	lui	a3,0x3dcc
    4170:	44068000 	mfc1	a2,$f16
    4174:	448a5000 	mtc1	t2,$f10
    4178:	34e7cccd 	ori	a3,a3,0xcccd
    417c:	c60e00cc 	lwc1	$f14,204(s0)
    4180:	46805220 	cvt.s.w	$f8,$f10
    4184:	46044302 	mul.s	$f12,$f8,$f4
    4188:	0c000000 	jal	0 <func_800437F0>
    418c:	00000000 	nop
    4190:	e60000cc 	swc1	$f0,204(s0)
    4194:	3c0b0000 	lui	t3,0x0
    4198:	8d6b0000 	lw	t3,0(t3)
    419c:	3c010000 	lui	at,0x0
    41a0:	c4280000 	lwc1	$f8,0(at)
    41a4:	856c019a 	lh	t4,410(t3)
    41a8:	3c073dcc 	lui	a3,0x3dcc
    41ac:	34e7cccd 	ori	a3,a3,0xcccd
    41b0:	448c3000 	mtc1	t4,$f6
    41b4:	8fa6009c 	lw	a2,156(sp)
    41b8:	c60e00d0 	lwc1	$f14,208(s0)
    41bc:	468032a0 	cvt.s.w	$f10,$f6
    41c0:	46085302 	mul.s	$f12,$f10,$f8
    41c4:	0c000000 	jal	0 <func_800437F0>
    41c8:	00000000 	nop
    41cc:	e60000d0 	swc1	$f0,208(s0)
    41d0:	3c0d0000 	lui	t5,0x0
    41d4:	8dad0000 	lw	t5,0(t5)
    41d8:	3c010000 	lui	at,0x0
    41dc:	c42a0000 	lwc1	$f10,0(at)
    41e0:	85ae019c 	lh	t6,412(t5)
    41e4:	3c010000 	lui	at,0x0
    41e8:	c60800e0 	lwc1	$f8,224(s0)
    41ec:	448e2000 	mtc1	t6,$f4
    41f0:	3c073dcc 	lui	a3,0x3dcc
    41f4:	34e7cccd 	ori	a3,a3,0xcccd
    41f8:	468021a0 	cvt.s.w	$f6,$f4
    41fc:	c4240000 	lwc1	$f4,0(at)
    4200:	46000386 	mov.s	$f14,$f0
    4204:	460a3302 	mul.s	$f12,$f6,$f10
    4208:	00000000 	nop
    420c:	46044182 	mul.s	$f6,$f8,$f4
    4210:	44063000 	mfc1	a2,$f6
    4214:	0c000000 	jal	0 <func_800437F0>
    4218:	00000000 	nop
    421c:	860f0022 	lh	t7,34(s0)
    4220:	e60000d4 	swc1	$f0,212(s0)
    4224:	31e80001 	andi	t0,t7,0x1
    4228:	5100001e 	beqzl	t0,42a4 <Camera_Normal1+0x6f4>
    422c:	a6200024 	sh	zero,36(s1)
    4230:	87a5007a 	lh	a1,122(sp)
    4234:	02002025 	move	a0,s0
    4238:	00003025 	move	a2,zero
    423c:	24a58001 	addiu	a1,a1,-32767
    4240:	00052c00 	sll	a1,a1,0x10
    4244:	0c000000 	jal	0 <func_800437F0>
    4248:	00052c03 	sra	a1,a1,0x10
    424c:	3c013f80 	lui	at,0x3f80
    4250:	44816000 	mtc1	at,$f12
    4254:	c60a0010 	lwc1	$f10,16(s0)
    4258:	3c013f00 	lui	at,0x3f00
    425c:	44812000 	mtc1	at,$f4
    4260:	460a6203 	div.s	$f8,$f12,$f10
    4264:	c60600e0 	lwc1	$f6,224(s0)
    4268:	00022400 	sll	a0,v0,0x10
    426c:	00042403 	sra	a0,a0,0x10
    4270:	46066281 	sub.s	$f10,$f12,$f6
    4274:	86250024 	lh	a1,36(s1)
    4278:	2407000f 	li	a3,15
    427c:	46044002 	mul.s	$f0,$f8,$f4
    4280:	00000000 	nop
    4284:	460a0082 	mul.s	$f2,$f0,$f10
    4288:	46020200 	add.s	$f8,$f0,$f2
    428c:	44064000 	mfc1	a2,$f8
    4290:	0c000000 	jal	0 <func_800437F0>
    4294:	00000000 	nop
    4298:	10000009 	b	42c0 <Camera_Normal1+0x710>
    429c:	a6220024 	sh	v0,36(s1)
    42a0:	a6200024 	sh	zero,36(s1)
    42a4:	c6040104 	lwc1	$f4,260(s0)
    42a8:	c6000098 	lwc1	$f0,152(s0)
    42ac:	46040032 	c.eq.s	$f0,$f4
    42b0:	00000000 	nop
    42b4:	45020003 	bc1fl	42c4 <Camera_Normal1+0x714>
    42b8:	86390018 	lh	t9,24(s1)
    42bc:	e620001c 	swc1	$f0,28(s1)
    42c0:	86390018 	lh	t9,24(s1)
    42c4:	13200014 	beqz	t9,4318 <Camera_Normal1+0x768>
    42c8:	3c01c220 	lui	at,0xc220
    42cc:	44813000 	mtc1	at,$f6
    42d0:	c60a0000 	lwc1	$f10,0(s0)
    42d4:	460a303c 	c.lt.s	$f6,$f10
    42d8:	00000000 	nop
    42dc:	4502000f 	bc1fl	431c <Camera_Normal1+0x76c>
    42e0:	c6100000 	lwc1	$f16,0(s0)
    42e4:	0c000000 	jal	0 <func_800437F0>
    42e8:	86240014 	lh	a0,20(s1)
    42ec:	3c013f80 	lui	at,0x3f80
    42f0:	44812000 	mtc1	at,$f4
    42f4:	c6080000 	lwc1	$f8,0(s0)
    42f8:	3c01c220 	lui	at,0xc220
    42fc:	46002181 	sub.s	$f6,$f4,$f0
    4300:	44812000 	mtc1	at,$f4
    4304:	46064282 	mul.s	$f10,$f8,$f6
    4308:	00000000 	nop
    430c:	46002202 	mul.s	$f8,$f4,$f0
    4310:	10000002 	b	431c <Camera_Normal1+0x76c>
    4314:	460a4400 	add.s	$f16,$f8,$f10
    4318:	c6100000 	lwc1	$f16,0(s0)
    431c:	86020022 	lh	v0,34(s0)
    4320:	30490080 	andi	t1,v0,0x80
    4324:	5120000b 	beqzl	t1,4354 <Camera_Normal1+0x7a4>
    4328:	304a0020 	andi	t2,v0,0x20
    432c:	44068000 	mfc1	a2,$f16
    4330:	30580001 	andi	t8,v0,0x1
    4334:	afb80010 	sw	t8,16(sp)
    4338:	02002025 	move	a0,s0
    433c:	27a5006c 	addiu	a1,sp,108
    4340:	0c000000 	jal	0 <func_800437F0>
    4344:	2627001c 	addiu	a3,s1,28
    4348:	10000012 	b	4394 <Camera_Normal1+0x7e4>
    434c:	27a4007c 	addiu	a0,sp,124
    4350:	304a0020 	andi	t2,v0,0x20
    4354:	11400008 	beqz	t2,4378 <Camera_Normal1+0x7c8>
    4358:	02002025 	move	a0,s0
    435c:	44068000 	mfc1	a2,$f16
    4360:	02002025 	move	a0,s0
    4364:	27a5006c 	addiu	a1,sp,108
    4368:	0c000000 	jal	0 <func_800437F0>
    436c:	86270024 	lh	a3,36(s1)
    4370:	10000008 	b	4394 <Camera_Normal1+0x7e4>
    4374:	27a4007c 	addiu	a0,sp,124
    4378:	30470001 	andi	a3,v0,0x1
    437c:	00073c00 	sll	a3,a3,0x10
    4380:	44068000 	mfc1	a2,$f16
    4384:	00073c03 	sra	a3,a3,0x10
    4388:	0c000000 	jal	0 <func_800437F0>
    438c:	27a5006c 	addiu	a1,sp,108
    4390:	27a4007c 	addiu	a0,sp,124
    4394:	8fa5003c 	lw	a1,60(sp)
    4398:	0c000000 	jal	0 <func_800437F0>
    439c:	8fa60038 	lw	a2,56(sp)
    43a0:	862b0028 	lh	t3,40(s1)
    43a4:	8e060004 	lw	a2,4(s0)
    43a8:	8e070008 	lw	a3,8(s0)
    43ac:	02002025 	move	a0,s0
    43b0:	8fa5007c 	lw	a1,124(sp)
    43b4:	0c000000 	jal	0 <func_800437F0>
    43b8:	afab0010 	sw	t3,16(sp)
    43bc:	e7a0007c 	swc1	$f0,124(sp)
    43c0:	e60000dc 	swc1	$f0,220(s0)
    43c4:	862c002a 	lh	t4,42(s1)
    43c8:	5d800011 	bgtzl	t4,4410 <Camera_Normal1+0x860>
    43cc:	862e0018 	lh	t6,24(s1)
    43d0:	87ad0070 	lh	t5,112(sp)
    43d4:	3c013f80 	lui	at,0x3f80
    43d8:	44813000 	mtc1	at,$f6
    43dc:	a7ad0080 	sh	t5,128(sp)
    43e0:	c60400c8 	lwc1	$f4,200(s0)
    43e4:	86240026 	lh	a0,38(s1)
    43e8:	87a50072 	lh	a1,114(sp)
    43ec:	46043203 	div.s	$f8,$f6,$f4
    43f0:	2407000a 	li	a3,10
    43f4:	44064000 	mfc1	a2,$f8
    43f8:	0c000000 	jal	0 <func_800437F0>
    43fc:	00000000 	nop
    4400:	a7a20082 	sh	v0,130(sp)
    4404:	1000002a 	b	44b0 <Camera_Normal1+0x900>
    4408:	87a30080 	lh	v1,128(sp)
    440c:	862e0018 	lh	t6,24(s1)
    4410:	02002025 	move	a0,s0
    4414:	87a50072 	lh	a1,114(sp)
    4418:	11c00019 	beqz	t6,4480 <Camera_Normal1+0x8d0>
    441c:	c7a40094 	lwc1	$f4,148(sp)
    4420:	3c013f80 	lui	at,0x3f80
    4424:	44815000 	mtc1	at,$f10
    4428:	c60600c8 	lwc1	$f6,200(s0)
    442c:	86240016 	lh	a0,22(s1)
    4430:	87a50072 	lh	a1,114(sp)
    4434:	46065103 	div.s	$f4,$f10,$f6
    4438:	2407000a 	li	a3,10
    443c:	44062000 	mfc1	a2,$f4
    4440:	0c000000 	jal	0 <func_800437F0>
    4444:	00000000 	nop
    4448:	a7a20082 	sh	v0,130(sp)
    444c:	3c013f80 	lui	at,0x3f80
    4450:	44814000 	mtc1	at,$f8
    4454:	c60a00c8 	lwc1	$f10,200(s0)
    4458:	86240014 	lh	a0,20(s1)
    445c:	87a50070 	lh	a1,112(sp)
    4460:	460a4183 	div.s	$f6,$f8,$f10
    4464:	2407000a 	li	a3,10
    4468:	44063000 	mfc1	a2,$f6
    446c:	0c000000 	jal	0 <func_800437F0>
    4470:	00000000 	nop
    4474:	00021c00 	sll	v1,v0,0x10
    4478:	1000000d 	b	44b0 <Camera_Normal1+0x900>
    447c:	00031c03 	sra	v1,v1,0x10
    4480:	860600a2 	lh	a2,162(s0)
    4484:	8e070014 	lw	a3,20(s0)
    4488:	0c000000 	jal	0 <func_800437F0>
    448c:	e7a40010 	swc1	$f4,16(sp)
    4490:	a7a20082 	sh	v0,130(sp)
    4494:	86270024 	lh	a3,36(s1)
    4498:	86060020 	lh	a2,32(s0)
    449c:	02002025 	move	a0,s0
    44a0:	0c000000 	jal	0 <func_800437F0>
    44a4:	87a50070 	lh	a1,112(sp)
    44a8:	00021c00 	sll	v1,v0,0x10
    44ac:	00031c03 	sra	v1,v1,0x10
    44b0:	286138a5 	slti	at,v1,14501
    44b4:	14200002 	bnez	at,44c0 <Camera_Normal1+0x910>
    44b8:	27a6007c 	addiu	a2,sp,124
    44bc:	240338a4 	li	v1,14500
    44c0:	2861c374 	slti	at,v1,-15500
    44c4:	10200003 	beqz	at,44d4 <Camera_Normal1+0x924>
    44c8:	a7a30080 	sh	v1,128(sp)
    44cc:	2403c374 	li	v1,-15500
    44d0:	a7a30080 	sh	v1,128(sp)
    44d4:	8fa40038 	lw	a0,56(sp)
    44d8:	0c000000 	jal	0 <func_800437F0>
    44dc:	8fa5003c 	lw	a1,60(sp)
    44e0:	860f0140 	lh	t7,320(s0)
    44e4:	24010007 	li	at,7
    44e8:	55e10075 	bnel	t7,at,46c0 <Camera_Normal1+0xb10>
    44ec:	c608000c 	lwc1	$f8,12(s0)
    44f0:	86080022 	lh	t0,34(s0)
    44f4:	31190010 	andi	t9,t0,0x10
    44f8:	57200071 	bnezl	t9,46c0 <Camera_Normal1+0xb10>
    44fc:	c608000c 	lwc1	$f8,12(s0)
    4500:	860900a2 	lh	t1,162(s0)
    4504:	862a002a 	lh	t2,42(s1)
    4508:	02002025 	move	a0,s0
    450c:	25388001 	addiu	t8,t1,-32767
    4510:	1940000a 	blez	t2,453c <Camera_Normal1+0x98c>
    4514:	a6380026 	sh	t8,38(s1)
    4518:	8e060004 	lw	a2,4(s0)
    451c:	8e07000c 	lw	a3,12(s0)
    4520:	27ab0098 	addiu	t3,sp,152
    4524:	afab0010 	sw	t3,16(sp)
    4528:	afb10014 	sw	s1,20(sp)
    452c:	0c000000 	jal	0 <func_800437F0>
    4530:	27a5007c 	addiu	a1,sp,124
    4534:	10000020 	b	45b8 <Camera_Normal1+0xa08>
    4538:	862b0018 	lh	t3,24(s1)
    453c:	8fac0038 	lw	t4,56(sp)
    4540:	27a60088 	addiu	a2,sp,136
    4544:	02002025 	move	a0,s0
    4548:	8d8e0000 	lw	t6,0(t4)
    454c:	acce0000 	sw	t6,0(a2)
    4550:	8d8d0004 	lw	t5,4(t4)
    4554:	accd0004 	sw	t5,4(a2)
    4558:	8d8e0008 	lw	t6,8(t4)
    455c:	acce0008 	sw	t6,8(a2)
    4560:	c602000c 	lwc1	$f2,12(s0)
    4564:	46021000 	add.s	$f0,$f2,$f2
    4568:	e60000c8 	swc1	$f0,200(s0)
    456c:	e6200010 	swc1	$f0,16(s1)
    4570:	0c000000 	jal	0 <func_800437F0>
    4574:	8fa5003c 	lw	a1,60(sp)
    4578:	10400006 	beqz	v0,4594 <Camera_Normal1+0x9e4>
    457c:	8fa90038 	lw	t1,56(sp)
    4580:	87af0072 	lh	t7,114(sp)
    4584:	2408ffff 	li	t0,-1
    4588:	a628002a 	sh	t0,42(s1)
    458c:	10000008 	b	45b0 <Camera_Normal1+0xa00>
    4590:	a62f0026 	sh	t7,38(s1)
    4594:	8fb90040 	lw	t9,64(sp)
    4598:	8d2a0000 	lw	t2,0(t1)
    459c:	af2a0000 	sw	t2,0(t9)
    45a0:	8d380004 	lw	t8,4(t1)
    45a4:	af380004 	sw	t8,4(t9)
    45a8:	8d2a0008 	lw	t2,8(t1)
    45ac:	af2a0008 	sw	t2,8(t9)
    45b0:	a6200018 	sh	zero,24(s1)
    45b4:	862b0018 	lh	t3,24(s1)
    45b8:	3c010000 	lui	at,0x0
    45bc:	c7aa0098 	lwc1	$f10,152(sp)
    45c0:	51600013 	beqzl	t3,4610 <Camera_Normal1+0xa60>
    45c4:	86180022 	lh	t8,34(s0)
    45c8:	c4280000 	lwc1	$f8,0(at)
    45cc:	3c013f80 	lui	at,0x3f80
    45d0:	44812000 	mtc1	at,$f4
    45d4:	460a4182 	mul.s	$f6,$f8,$f10
    45d8:	862c0016 	lh	t4,22(s1)
    45dc:	86050136 	lh	a1,310(s0)
    45e0:	2407000a 	li	a3,10
    45e4:	258f8001 	addiu	t7,t4,-32767
    45e8:	01e54823 	subu	t1,t7,a1
    45ec:	00a92021 	addu	a0,a1,t1
    45f0:	46062201 	sub.s	$f8,$f4,$f6
    45f4:	00042400 	sll	a0,a0,0x10
    45f8:	00042403 	sra	a0,a0,0x10
    45fc:	44064000 	mfc1	a2,$f8
    4600:	0c000000 	jal	0 <func_800437F0>
    4604:	00000000 	nop
    4608:	a6020136 	sh	v0,310(s0)
    460c:	86180022 	lh	t8,34(s0)
    4610:	87ab0078 	lh	t3,120(sp)
    4614:	27a4007c 	addiu	a0,sp,124
    4618:	330a0004 	andi	t2,t8,0x4
    461c:	11400008 	beqz	t2,4640 <Camera_Normal1+0xa90>
    4620:	8fa50040 	lw	a1,64(sp)
    4624:	000b6023 	negu	t4,t3
    4628:	a60c0134 	sh	t4,308(s0)
    462c:	87ad007a 	lh	t5,122(sp)
    4630:	a6000138 	sh	zero,312(s0)
    4634:	25ae8001 	addiu	t6,t5,-32767
    4638:	10000008 	b	465c <Camera_Normal1+0xaac>
    463c:	a60e0136 	sh	t6,310(s0)
    4640:	0c000000 	jal	0 <func_800437F0>
    4644:	8fa6003c 	lw	a2,60(sp)
    4648:	87af0080 	lh	t7,128(sp)
    464c:	a60f0134 	sh	t7,308(s0)
    4650:	87a80082 	lh	t0,130(sp)
    4654:	a6000138 	sh	zero,312(s0)
    4658:	a6080136 	sh	t0,310(s0)
    465c:	3c020000 	lui	v0,0x0
    4660:	84420030 	lh	v0,48(v0)
    4664:	28410011 	slti	at,v0,17
    4668:	50200024 	beqzl	at,46fc <Camera_Normal1+0xb4c>
    466c:	28410011 	slti	at,v0,17
    4670:	8e19008c 	lw	t9,140(s0)
    4674:	8f29009c 	lw	t1,156(t9)
    4678:	313800ff 	andi	t8,t1,0xff
    467c:	5700001f 	bnezl	t8,46fc <Camera_Normal1+0xb4c>
    4680:	28410011 	slti	at,v0,17
    4684:	0c000000 	jal	0 <func_800437F0>
    4688:	00000000 	nop
    468c:	3c010000 	lui	at,0x0
    4690:	c42a0000 	lwc1	$f10,0(at)
    4694:	860e0136 	lh	t6,310(s0)
    4698:	3c020000 	lui	v0,0x0
    469c:	460a0102 	mul.s	$f4,$f0,$f10
    46a0:	4600218d 	trunc.w.s	$f6,$f4
    46a4:	440d3000 	mfc1	t5,$f6
    46a8:	00000000 	nop
    46ac:	01ae7821 	addu	t7,t5,t6
    46b0:	a60f0136 	sh	t7,310(s0)
    46b4:	10000010 	b	46f8 <Camera_Normal1+0xb48>
    46b8:	84420030 	lh	v0,48(v0)
    46bc:	c608000c 	lwc1	$f8,12(s0)
    46c0:	a6200018 	sh	zero,24(s1)
    46c4:	3c010000 	lui	at,0x0
    46c8:	e6280010 	swc1	$f8,16(s1)
    46cc:	8fb90038 	lw	t9,56(sp)
    46d0:	ac200000 	sw	zero,0(at)
    46d4:	8fa80040 	lw	t0,64(sp)
    46d8:	8f380000 	lw	t8,0(t9)
    46dc:	3c020000 	lui	v0,0x0
    46e0:	ad180000 	sw	t8,0(t0)
    46e4:	8f290004 	lw	t1,4(t9)
    46e8:	ad090004 	sw	t1,4(t0)
    46ec:	8f380008 	lw	t8,8(t9)
    46f0:	ad180008 	sw	t8,8(t0)
    46f4:	84420030 	lh	v0,48(v0)
    46f8:	28410011 	slti	at,v0,17
    46fc:	10200003 	beqz	at,470c <Camera_Normal1+0xb5c>
    4700:	3c010000 	lui	at,0x0
    4704:	10000004 	b	4718 <Camera_Normal1+0xb68>
    4708:	c4300000 	lwc1	$f16,0(at)
    470c:	3c013f80 	lui	at,0x3f80
    4710:	44818000 	mtc1	at,$f16
    4714:	00000000 	nop
    4718:	c60a0018 	lwc1	$f10,24(s0)
    471c:	c60e00fc 	lwc1	$f14,252(s0)
    4720:	8e0600d4 	lw	a2,212(s0)
    4724:	46105302 	mul.s	$f12,$f10,$f16
    4728:	0c000000 	jal	0 <func_800437F0>
    472c:	3c073f80 	lui	a3,0x3f80
    4730:	e60000fc 	swc1	$f0,252(s0)
    4734:	00002025 	move	a0,zero
    4738:	8605015a 	lh	a1,346(s0)
    473c:	3c063f00 	lui	a2,0x3f00
    4740:	0c000000 	jal	0 <func_800437F0>
    4744:	2407000a 	li	a3,10
    4748:	a602015a 	sh	v0,346(s0)
    474c:	02002025 	move	a0,s0
    4750:	0c000000 	jal	0 <func_800437F0>
    4754:	8e05001c 	lw	a1,28(s0)
    4758:	e6000100 	swc1	$f0,256(s0)
    475c:	8fbf0024 	lw	ra,36(sp)
    4760:	8fb10020 	lw	s1,32(sp)
    4764:	8fb0001c 	lw	s0,28(sp)
    4768:	27bd00b0 	addiu	sp,sp,176
    476c:	03e00008 	jr	ra
    4770:	24020001 	li	v0,1

00004774 <Camera_Normal2>:
    4774:	27bdff20 	addiu	sp,sp,-224
    4778:	afb0001c 	sw	s0,28(sp)
    477c:	00808025 	move	s0,a0
    4780:	afbf0024 	sw	ra,36(sp)
    4784:	afb10020 	sw	s1,32(sp)
    4788:	0c000000 	jal	0 <func_800437F0>
    478c:	8c840090 	lw	a0,144(a0)
    4790:	3c030000 	lui	v1,0x0
    4794:	8c630000 	lw	v1,0(v1)
    4798:	3c010000 	lui	at,0x0
    479c:	c4300000 	lwc1	$f16,0(at)
    47a0:	846e01f0 	lh	t6,496(v1)
    47a4:	3c013f80 	lui	at,0x3f80
    47a8:	44814000 	mtc1	at,$f8
    47ac:	448e2000 	mtc1	t6,$f4
    47b0:	3c014288 	lui	at,0x4288
    47b4:	44819000 	mtc1	at,$f18
    47b8:	468021a0 	cvt.s.w	$f6,$f4
    47bc:	846f0314 	lh	t7,788(v1)
    47c0:	46000306 	mov.s	$f12,$f0
    47c4:	46009103 	div.s	$f4,$f18,$f0
    47c8:	46103082 	mul.s	$f2,$f6,$f16
    47cc:	46024280 	add.s	$f10,$f8,$f2
    47d0:	46041182 	mul.s	$f6,$f2,$f4
    47d4:	11e00009 	beqz	t7,47fc <Camera_Normal2+0x88>
    47d8:	46065381 	sub.s	$f14,$f10,$f6
    47dc:	02002025 	move	a0,s0
    47e0:	e7ac0060 	swc1	$f12,96(sp)
    47e4:	0c000000 	jal	0 <func_800437F0>
    47e8:	e7ae005c 	swc1	$f14,92(sp)
    47ec:	3c010000 	lui	at,0x0
    47f0:	c4300000 	lwc1	$f16,0(at)
    47f4:	c7ac0060 	lwc1	$f12,96(sp)
    47f8:	c7ae005c 	lwc1	$f14,92(sp)
    47fc:	8602015e 	lh	v0,350(s0)
    4800:	10400009 	beqz	v0,4828 <Camera_Normal2+0xb4>
    4804:	2401000a 	li	at,10
    4808:	10410007 	beq	v0,at,4828 <Camera_Normal2+0xb4>
    480c:	24010014 	li	at,20
    4810:	10410005 	beq	v0,at,4828 <Camera_Normal2+0xb4>
    4814:	3c180000 	lui	t8,0x0
    4818:	8f180000 	lw	t8,0(t8)
    481c:	87030314 	lh	v1,788(t8)
    4820:	10600050 	beqz	v1,4964 <Camera_Normal2+0x1f0>
    4824:	00000000 	nop
    4828:	86190142 	lh	t9,322(s0)
    482c:	3c090000 	lui	t1,0x0
    4830:	860a0144 	lh	t2,324(s0)
    4834:	001940c0 	sll	t0,t9,0x3
    4838:	01284821 	addu	t1,t1,t0
    483c:	8d290004 	lw	t1,4(t1)
    4840:	000a58c0 	sll	t3,t2,0x3
    4844:	3c010000 	lui	at,0x0
    4848:	012b6021 	addu	t4,t1,t3
    484c:	8d820004 	lw	v0,4(t4)
    4850:	844d0000 	lh	t5,0(v0)
    4854:	24420020 	addiu	v0,v0,32
    4858:	448d4000 	mtc1	t5,$f8
    485c:	00000000 	nop
    4860:	468044a0 	cvt.s.w	$f18,$f8
    4864:	46109102 	mul.s	$f4,$f18,$f16
    4868:	00000000 	nop
    486c:	460c2282 	mul.s	$f10,$f4,$f12
    4870:	00000000 	nop
    4874:	460e5182 	mul.s	$f6,$f10,$f14
    4878:	e6060000 	swc1	$f6,0(s0)
    487c:	844effe4 	lh	t6,-28(v0)
    4880:	448e4000 	mtc1	t6,$f8
    4884:	3c0e0000 	lui	t6,0x0
    4888:	468044a0 	cvt.s.w	$f18,$f8
    488c:	46109102 	mul.s	$f4,$f18,$f16
    4890:	00000000 	nop
    4894:	460c2282 	mul.s	$f10,$f4,$f12
    4898:	00000000 	nop
    489c:	460e5182 	mul.s	$f6,$f10,$f14
    48a0:	e6060004 	swc1	$f6,4(s0)
    48a4:	844fffe8 	lh	t7,-24(v0)
    48a8:	448f4000 	mtc1	t7,$f8
    48ac:	00000000 	nop
    48b0:	468044a0 	cvt.s.w	$f18,$f8
    48b4:	46109102 	mul.s	$f4,$f18,$f16
    48b8:	00000000 	nop
    48bc:	460c2282 	mul.s	$f10,$f4,$f12
    48c0:	00000000 	nop
    48c4:	460e5182 	mul.s	$f6,$f10,$f14
    48c8:	e6060008 	swc1	$f6,8(s0)
    48cc:	8458ffec 	lh	t8,-20(v0)
    48d0:	c4240000 	lwc1	$f4,0(at)
    48d4:	3c013f00 	lui	at,0x3f00
    48d8:	44984000 	mtc1	t8,$f8
    48dc:	44813000 	mtc1	at,$f6
    48e0:	468044a0 	cvt.s.w	$f18,$f8
    48e4:	46049282 	mul.s	$f10,$f18,$f4
    48e8:	46065200 	add.s	$f8,$f10,$f6
    48ec:	4600448d 	trunc.w.s	$f18,$f8
    48f0:	44089000 	mfc1	t0,$f18
    48f4:	00000000 	nop
    48f8:	a608001c 	sh	t0,28(s0)
    48fc:	844afff0 	lh	t2,-16(v0)
    4900:	448a2000 	mtc1	t2,$f4
    4904:	00000000 	nop
    4908:	468022a0 	cvt.s.w	$f10,$f4
    490c:	e60a000c 	swc1	$f10,12(s0)
    4910:	8449fff4 	lh	t1,-12(v0)
    4914:	44893000 	mtc1	t1,$f6
    4918:	00000000 	nop
    491c:	46803220 	cvt.s.w	$f8,$f6
    4920:	46104482 	mul.s	$f18,$f8,$f16
    4924:	e6120010 	swc1	$f18,16(s0)
    4928:	844bfff8 	lh	t3,-8(v0)
    492c:	448b2000 	mtc1	t3,$f4
    4930:	00000000 	nop
    4934:	468022a0 	cvt.s.w	$f10,$f4
    4938:	e60a0014 	swc1	$f10,20(s0)
    493c:	844cfffc 	lh	t4,-4(v0)
    4940:	448c3000 	mtc1	t4,$f6
    4944:	00000000 	nop
    4948:	46803220 	cvt.s.w	$f8,$f6
    494c:	46104482 	mul.s	$f18,$f8,$f16
    4950:	e6120018 	swc1	$f18,24(s0)
    4954:	844d0000 	lh	t5,0(v0)
    4958:	a60d001e 	sh	t5,30(s0)
    495c:	8dce0000 	lw	t6,0(t6)
    4960:	85c30314 	lh	v1,788(t6)
    4964:	50600004 	beqzl	v1,4978 <Camera_Normal2+0x204>
    4968:	860f001e 	lh	t7,30(s0)
    496c:	0c000000 	jal	0 <func_800437F0>
    4970:	02002025 	move	a0,s0
    4974:	860f001e 	lh	t7,30(s0)
    4978:	3c010000 	lui	at,0x0
    497c:	ac2f0000 	sw	t7,0(at)
    4980:	8602015e 	lh	v0,350(s0)
    4984:	10400007 	beqz	v0,49a4 <Camera_Normal2+0x230>
    4988:	2401000a 	li	at,10
    498c:	10410005 	beq	v0,at,49a4 <Camera_Normal2+0x230>
    4990:	24010014 	li	at,20
    4994:	10410003 	beq	v0,at,49a4 <Camera_Normal2+0x230>
    4998:	24010019 	li	at,25
    499c:	14410042 	bne	v0,at,4aa8 <Camera_Normal2+0x334>
    49a0:	26180094 	addiu	t8,s0,148
    49a4:	0c000000 	jal	0 <func_800437F0>
    49a8:	02002025 	move	a0,s0
    49ac:	26110020 	addiu	s1,s0,32
    49b0:	02202025 	move	a0,s1
    49b4:	00402825 	move	a1,v0
    49b8:	0c000000 	jal	0 <func_800437F0>
    49bc:	afa20064 	sw	v0,100(sp)
    49c0:	8fa60064 	lw	a2,100(sp)
    49c4:	26080094 	addiu	t0,s0,148
    49c8:	2404ffff 	li	a0,-1
    49cc:	84d80006 	lh	t8,6(a2)
    49d0:	27a50088 	addiu	a1,sp,136
    49d4:	a6380020 	sh	t8,32(s1)
    49d8:	84d90008 	lh	t9,8(a2)
    49dc:	a6390022 	sh	t9,34(s1)
    49e0:	afa8003c 	sw	t0,60(sp)
    49e4:	c5040004 	lwc1	$f4,4(t0)
    49e8:	e6240024 	swc1	$f4,36(s1)
    49ec:	84c3000c 	lh	v1,12(a2)
    49f0:	14830004 	bne	a0,v1,4a04 <Camera_Normal2+0x290>
    49f4:	28610169 	slti	at,v1,361
    49f8:	c60a0014 	lwc1	$f10,20(s0)
    49fc:	1000000e 	b	4a38 <Camera_Normal2+0x2c4>
    4a00:	e62a001c 	swc1	$f10,28(s1)
    4a04:	54200009 	bnezl	at,4a2c <Camera_Normal2+0x2b8>
    4a08:	44832000 	mtc1	v1,$f4
    4a0c:	44833000 	mtc1	v1,$f6
    4a10:	3c010000 	lui	at,0x0
    4a14:	c4320000 	lwc1	$f18,0(at)
    4a18:	46803220 	cvt.s.w	$f8,$f6
    4a1c:	46124002 	mul.s	$f0,$f8,$f18
    4a20:	10000005 	b	4a38 <Camera_Normal2+0x2c4>
    4a24:	e620001c 	swc1	$f0,28(s1)
    4a28:	44832000 	mtc1	v1,$f4
    4a2c:	00000000 	nop
    4a30:	46802020 	cvt.s.w	$f0,$f4
    4a34:	e620001c 	swc1	$f0,28(s1)
    4a38:	84c2000e 	lh	v0,14(a2)
    4a3c:	44805000 	mtc1	zero,$f10
    4a40:	54820004 	bnel	a0,v0,4a54 <Camera_Normal2+0x2e0>
    4a44:	a6220028 	sh	v0,40(s1)
    4a48:	10000002 	b	4a54 <Camera_Normal2+0x2e0>
    4a4c:	a6200028 	sh	zero,40(s1)
    4a50:	a6220028 	sh	v0,40(s1)
    4a54:	e62a0018 	swc1	$f10,24(s1)
    4a58:	8609001e 	lh	t1,30(s0)
    4a5c:	312b0004 	andi	t3,t1,0x4
    4a60:	5160000c 	beqzl	t3,4a94 <Camera_Normal2+0x320>
    4a64:	3c014248 	lui	at,0x4248
    4a68:	862c0020 	lh	t4,32(s1)
    4a6c:	3c0142c8 	lui	at,0x42c8
    4a70:	44813000 	mtc1	at,$f6
    4a74:	a7ac008c 	sh	t4,140(sp)
    4a78:	862d0022 	lh	t5,34(s1)
    4a7c:	2624000c 	addiu	a0,s1,12
    4a80:	e7a60088 	swc1	$f6,136(sp)
    4a84:	25ae3fff 	addiu	t6,t5,16383
    4a88:	0c000000 	jal	0 <func_800437F0>
    4a8c:	a7ae008e 	sh	t6,142(sp)
    4a90:	3c014248 	lui	at,0x4248
    4a94:	44814000 	mtc1	at,$f8
    4a98:	240f0001 	li	t7,1
    4a9c:	a60f015e 	sh	t7,350(s0)
    4aa0:	1000000a 	b	4acc <Camera_Normal2+0x358>
    4aa4:	e60800c8 	swc1	$f8,200(s0)
    4aa8:	afb8003c 	sw	t8,60(sp)
    4aac:	c6120104 	lwc1	$f18,260(s0)
    4ab0:	c7000004 	lwc1	$f0,4(t8)
    4ab4:	26110020 	addiu	s1,s0,32
    4ab8:	46120032 	c.eq.s	$f0,$f18
    4abc:	00000000 	nop
    4ac0:	45000002 	bc1f	4acc <Camera_Normal2+0x358>
    4ac4:	00000000 	nop
    4ac8:	e6000044 	swc1	$f0,68(s0)
    4acc:	26050050 	addiu	a1,s0,80
    4ad0:	2606005c 	addiu	a2,s0,92
    4ad4:	afa60048 	sw	a2,72(sp)
    4ad8:	afa50044 	sw	a1,68(sp)
    4adc:	0c000000 	jal	0 <func_800437F0>
    4ae0:	27a40080 	addiu	a0,sp,128
    4ae4:	26060074 	addiu	a2,s0,116
    4ae8:	afa60040 	sw	a2,64(sp)
    4aec:	27a40078 	addiu	a0,sp,120
    4af0:	0c000000 	jal	0 <func_800437F0>
    4af4:	8fa50044 	lw	a1,68(sp)
    4af8:	3c010000 	lui	at,0x0
    4afc:	c4300000 	lwc1	$f16,0(at)
    4b00:	3c013f00 	lui	at,0x3f00
    4b04:	44815000 	mtc1	at,$f10
    4b08:	c60400e0 	lwc1	$f4,224(s0)
    4b0c:	3c030000 	lui	v1,0x0
    4b10:	3c073dcc 	lui	a3,0x3dcc
    4b14:	460a2182 	mul.s	$f6,$f4,$f10
    4b18:	34e7cccd 	ori	a3,a3,0xcccd
    4b1c:	e60600e0 	swc1	$f6,224(s0)
    4b20:	8c630000 	lw	v1,0(v1)
    4b24:	c60000e0 	lwc1	$f0,224(s0)
    4b28:	846801c6 	lh	t0,454(v1)
    4b2c:	44884000 	mtc1	t0,$f8
    4b30:	00000000 	nop
    4b34:	468044a0 	cvt.s.w	$f18,$f8
    4b38:	46109082 	mul.s	$f2,$f18,$f16
    4b3c:	00000000 	nop
    4b40:	46001102 	mul.s	$f4,$f2,$f0
    4b44:	44061000 	mfc1	a2,$f2
    4b48:	e7a400a4 	swc1	$f4,164(sp)
    4b4c:	846a01c8 	lh	t2,456(v1)
    4b50:	448a5000 	mtc1	t2,$f10
    4b54:	00000000 	nop
    4b58:	468051a0 	cvt.s.w	$f6,$f10
    4b5c:	46103202 	mul.s	$f8,$f6,$f16
    4b60:	00000000 	nop
    4b64:	46004482 	mul.s	$f18,$f8,$f0
    4b68:	e7b200a0 	swc1	$f18,160(sp)
    4b6c:	c60400c8 	lwc1	$f4,200(s0)
    4b70:	c60c000c 	lwc1	$f12,12(s0)
    4b74:	46002382 	mul.s	$f14,$f4,$f0
    4b78:	0c000000 	jal	0 <func_800437F0>
    4b7c:	00000000 	nop
    4b80:	e60000c8 	swc1	$f0,200(s0)
    4b84:	3c090000 	lui	t1,0x0
    4b88:	8d290000 	lw	t1,0(t1)
    4b8c:	3c073dcc 	lui	a3,0x3dcc
    4b90:	34e7cccd 	ori	a3,a3,0xcccd
    4b94:	852b01a2 	lh	t3,418(t1)
    4b98:	8fa600a0 	lw	a2,160(sp)
    4b9c:	c60e00c4 	lwc1	$f14,196(s0)
    4ba0:	448b5000 	mtc1	t3,$f10
    4ba4:	0c000000 	jal	0 <func_800437F0>
    4ba8:	46805320 	cvt.s.w	$f12,$f10
    4bac:	e60000c4 	swc1	$f0,196(s0)
    4bb0:	3c0c0000 	lui	t4,0x0
    4bb4:	8d8c0000 	lw	t4,0(t4)
    4bb8:	3c010000 	lui	at,0x0
    4bbc:	c4320000 	lwc1	$f18,0(at)
    4bc0:	858d0198 	lh	t5,408(t4)
    4bc4:	3c073dcc 	lui	a3,0x3dcc
    4bc8:	34e7cccd 	ori	a3,a3,0xcccd
    4bcc:	448d3000 	mtc1	t5,$f6
    4bd0:	8fa600a4 	lw	a2,164(sp)
    4bd4:	c60e00cc 	lwc1	$f14,204(s0)
    4bd8:	46803220 	cvt.s.w	$f8,$f6
    4bdc:	46124302 	mul.s	$f12,$f8,$f18
    4be0:	0c000000 	jal	0 <func_800437F0>
    4be4:	00000000 	nop
    4be8:	e60000cc 	swc1	$f0,204(s0)
    4bec:	3c0e0000 	lui	t6,0x0
    4bf0:	8dce0000 	lw	t6,0(t6)
    4bf4:	3c010000 	lui	at,0x0
    4bf8:	c4260000 	lwc1	$f6,0(at)
    4bfc:	85cf019a 	lh	t7,410(t6)
    4c00:	3c073dcc 	lui	a3,0x3dcc
    4c04:	34e7cccd 	ori	a3,a3,0xcccd
    4c08:	448f2000 	mtc1	t7,$f4
    4c0c:	8fa600a0 	lw	a2,160(sp)
    4c10:	c60e00d0 	lwc1	$f14,208(s0)
    4c14:	468022a0 	cvt.s.w	$f10,$f4
    4c18:	46065302 	mul.s	$f12,$f10,$f6
    4c1c:	0c000000 	jal	0 <func_800437F0>
    4c20:	00000000 	nop
    4c24:	e60000d0 	swc1	$f0,208(s0)
    4c28:	3c180000 	lui	t8,0x0
    4c2c:	8f180000 	lw	t8,0(t8)
    4c30:	3c010000 	lui	at,0x0
    4c34:	c4240000 	lwc1	$f4,0(at)
    4c38:	8719019c 	lh	t9,412(t8)
    4c3c:	3c010000 	lui	at,0x0
    4c40:	c4260000 	lwc1	$f6,0(at)
    4c44:	44994000 	mtc1	t9,$f8
    4c48:	c60a00e0 	lwc1	$f10,224(s0)
    4c4c:	3c073dcc 	lui	a3,0x3dcc
    4c50:	468044a0 	cvt.s.w	$f18,$f8
    4c54:	34e7cccd 	ori	a3,a3,0xcccd
    4c58:	46000386 	mov.s	$f14,$f0
    4c5c:	46049302 	mul.s	$f12,$f18,$f4
    4c60:	00000000 	nop
    4c64:	46065202 	mul.s	$f8,$f10,$f6
    4c68:	44064000 	mfc1	a2,$f8
    4c6c:	0c000000 	jal	0 <func_800437F0>
    4c70:	00000000 	nop
    4c74:	8602001e 	lh	v0,30(s0)
    4c78:	e60000d4 	swc1	$f0,212(s0)
    4c7c:	30480080 	andi	t0,v0,0x80
    4c80:	15000009 	bnez	t0,4ca8 <Camera_Normal2+0x534>
    4c84:	30470001 	andi	a3,v0,0x1
    4c88:	00073c00 	sll	a3,a3,0x10
    4c8c:	00073c03 	sra	a3,a3,0x10
    4c90:	02002025 	move	a0,s0
    4c94:	27a50078 	addiu	a1,sp,120
    4c98:	0c000000 	jal	0 <func_800437F0>
    4c9c:	8e060000 	lw	a2,0(s0)
    4ca0:	10000009 	b	4cc8 <Camera_Normal2+0x554>
    4ca4:	8609001e 	lh	t1,30(s0)
    4ca8:	8e060000 	lw	a2,0(s0)
    4cac:	304a0001 	andi	t2,v0,0x1
    4cb0:	afaa0010 	sw	t2,16(sp)
    4cb4:	02002025 	move	a0,s0
    4cb8:	27a50078 	addiu	a1,sp,120
    4cbc:	0c000000 	jal	0 <func_800437F0>
    4cc0:	26270024 	addiu	a3,s1,36
    4cc4:	8609001e 	lh	t1,30(s0)
    4cc8:	312b0004 	andi	t3,t1,0x4
    4ccc:	5160000b 	beqzl	t3,4cfc <Camera_Normal2+0x588>
    4cd0:	8fa2003c 	lw	v0,60(sp)
    4cd4:	8fa2003c 	lw	v0,60(sp)
    4cd8:	c624000c 	lwc1	$f4,12(s1)
    4cdc:	c6280014 	lwc1	$f8,20(s1)
    4ce0:	c4520000 	lwc1	$f18,0(v0)
    4ce4:	46049280 	add.s	$f10,$f18,$f4
    4ce8:	e62a0000 	swc1	$f10,0(s1)
    4cec:	c4460008 	lwc1	$f6,8(v0)
    4cf0:	46083480 	add.s	$f18,$f6,$f8
    4cf4:	e6320008 	swc1	$f18,8(s1)
    4cf8:	8fa2003c 	lw	v0,60(sp)
    4cfc:	27a40088 	addiu	a0,sp,136
    4d00:	02202825 	move	a1,s1
    4d04:	c4440004 	lwc1	$f4,4(v0)
    4d08:	e6240004 	swc1	$f4,4(s1)
    4d0c:	0c000000 	jal	0 <func_800437F0>
    4d10:	8fa60044 	lw	a2,68(sp)
    4d14:	27a40090 	addiu	a0,sp,144
    4d18:	8fa50044 	lw	a1,68(sp)
    4d1c:	0c000000 	jal	0 <func_800437F0>
    4d20:	8fa60040 	lw	a2,64(sp)
    4d24:	862c0028 	lh	t4,40(s1)
    4d28:	318d0002 	andi	t5,t4,0x2
    4d2c:	51a00004 	beqzl	t5,4d40 <Camera_Normal2+0x5cc>
    4d30:	8605001c 	lh	a1,28(s0)
    4d34:	10000002 	b	4d40 <Camera_Normal2+0x5cc>
    4d38:	86250022 	lh	a1,34(s1)
    4d3c:	8605001c 	lh	a1,28(s0)
    4d40:	28a14000 	slti	at,a1,16384
    4d44:	1020000b 	beqz	at,4d74 <Camera_Normal2+0x600>
    4d48:	87ae0096 	lh	t6,150(sp)
    4d4c:	87af008e 	lh	t7,142(sp)
    4d50:	01cf1823 	subu	v1,t6,t7
    4d54:	00031c00 	sll	v1,v1,0x10
    4d58:	00031c03 	sra	v1,v1,0x10
    4d5c:	04600003 	bltz	v1,4d6c <Camera_Normal2+0x5f8>
    4d60:	00031023 	negu	v0,v1
    4d64:	10000001 	b	4d6c <Camera_Normal2+0x5f8>
    4d68:	00601025 	move	v0,v1
    4d6c:	00a2082a 	slt	at,a1,v0
    4d70:	1420000e 	bnez	at,4dac <Camera_Normal2+0x638>
    4d74:	28a14000 	slti	at,a1,16384
    4d78:	14200030 	bnez	at,4e3c <Camera_Normal2+0x6c8>
    4d7c:	87b80096 	lh	t8,150(sp)
    4d80:	87b9008e 	lh	t9,142(sp)
    4d84:	03191823 	subu	v1,t8,t9
    4d88:	00031c00 	sll	v1,v1,0x10
    4d8c:	00031c03 	sra	v1,v1,0x10
    4d90:	04600003 	bltz	v1,4da0 <Camera_Normal2+0x62c>
    4d94:	00031023 	negu	v0,v1
    4d98:	10000001 	b	4da0 <Camera_Normal2+0x62c>
    4d9c:	00601025 	move	v0,v1
    4da0:	0045082a 	slt	at,v0,a1
    4da4:	50200026 	beqzl	at,4e40 <Camera_Normal2+0x6cc>
    4da8:	27ac0090 	addiu	t4,sp,144
    4dac:	04610005 	bgez	v1,4dc4 <Camera_Normal2+0x650>
    4db0:	3c013f80 	lui	at,0x3f80
    4db4:	00052023 	negu	a0,a1
    4db8:	00042400 	sll	a0,a0,0x10
    4dbc:	10000003 	b	4dcc <Camera_Normal2+0x658>
    4dc0:	00042403 	sra	a0,a0,0x10
    4dc4:	00052400 	sll	a0,a1,0x10
    4dc8:	00042403 	sra	a0,a0,0x10
    4dcc:	44815000 	mtc1	at,$f10
    4dd0:	c60600c8 	lwc1	$f6,200(s0)
    4dd4:	c61200e0 	lwc1	$f18,224(s0)
    4dd8:	87a8008e 	lh	t0,142(sp)
    4ddc:	46065203 	div.s	$f8,$f10,$f6
    4de0:	87a50086 	lh	a1,134(sp)
    4de4:	00882021 	addu	a0,a0,t0
    4de8:	00042400 	sll	a0,a0,0x10
    4dec:	00042403 	sra	a0,a0,0x10
    4df0:	2407000a 	li	a3,10
    4df4:	46124102 	mul.s	$f4,$f8,$f18
    4df8:	44062000 	mfc1	a2,$f4
    4dfc:	0c000000 	jal	0 <func_800437F0>
    4e00:	00000000 	nop
    4e04:	a7a2009e 	sh	v0,158(sp)
    4e08:	862a0028 	lh	t2,40(s1)
    4e0c:	02002025 	move	a0,s0
    4e10:	87a5007c 	lh	a1,124(sp)
    4e14:	31490001 	andi	t1,t2,0x1
    4e18:	11200006 	beqz	t1,4e34 <Camera_Normal2+0x6c0>
    4e1c:	87a30084 	lh	v1,132(sp)
    4e20:	86260020 	lh	a2,32(s1)
    4e24:	0c000000 	jal	0 <func_800437F0>
    4e28:	00003825 	move	a3,zero
    4e2c:	10000009 	b	4e54 <Camera_Normal2+0x6e0>
    4e30:	a7a2009c 	sh	v0,156(sp)
    4e34:	10000007 	b	4e54 <Camera_Normal2+0x6e0>
    4e38:	a7a3009c 	sh	v1,156(sp)
    4e3c:	27ac0090 	addiu	t4,sp,144
    4e40:	8d8e0000 	lw	t6,0(t4)
    4e44:	27ab0098 	addiu	t3,sp,152
    4e48:	ad6e0000 	sw	t6,0(t3)
    4e4c:	8d8d0004 	lw	t5,4(t4)
    4e50:	ad6d0004 	sw	t5,4(t3)
    4e54:	8e060004 	lw	a2,4(s0)
    4e58:	8e070008 	lw	a3,8(s0)
    4e5c:	afa00010 	sw	zero,16(sp)
    4e60:	02002025 	move	a0,s0
    4e64:	0c000000 	jal	0 <func_800437F0>
    4e68:	8fa50090 	lw	a1,144(sp)
    4e6c:	e7a00098 	swc1	$f0,152(sp)
    4e70:	e60000dc 	swc1	$f0,220(s0)
    4e74:	862f0028 	lh	t7,40(s1)
    4e78:	87a3009c 	lh	v1,156(sp)
    4e7c:	27a60098 	addiu	a2,sp,152
    4e80:	31f80001 	andi	t8,t7,0x1
    4e84:	17000015 	bnez	t8,4edc <Camera_Normal2+0x768>
    4e88:	28610e39 	slti	at,v1,3641
    4e8c:	14200008 	bnez	at,4eb0 <Camera_Normal2+0x73c>
    4e90:	24190e38 	li	t9,3640
    4e94:	03234023 	subu	t0,t9,v1
    4e98:	00085400 	sll	t2,t0,0x10
    4e9c:	000a4c03 	sra	t1,t2,0x10
    4ea0:	00095883 	sra	t3,t1,0x2
    4ea4:	006b1821 	addu	v1,v1,t3
    4ea8:	00031c00 	sll	v1,v1,0x10
    4eac:	00031c03 	sra	v1,v1,0x10
    4eb0:	0461000a 	bgez	v1,4edc <Camera_Normal2+0x768>
    4eb4:	a7a3009c 	sh	v1,156(sp)
    4eb8:	240cfc72 	li	t4,-910
    4ebc:	01836823 	subu	t5,t4,v1
    4ec0:	000d7400 	sll	t6,t5,0x10
    4ec4:	000e7c03 	sra	t7,t6,0x10
    4ec8:	000fc083 	sra	t8,t7,0x2
    4ecc:	00781821 	addu	v1,v1,t8
    4ed0:	00031c00 	sll	v1,v1,0x10
    4ed4:	00031c03 	sra	v1,v1,0x10
    4ed8:	a7a3009c 	sh	v1,156(sp)
    4edc:	8fa40040 	lw	a0,64(sp)
    4ee0:	0c000000 	jal	0 <func_800437F0>
    4ee4:	8fa50044 	lw	a1,68(sp)
    4ee8:	86190140 	lh	t9,320(s0)
    4eec:	24010007 	li	at,7
    4ef0:	8fa80040 	lw	t0,64(sp)
    4ef4:	57210032 	bnel	t9,at,4fc0 <Camera_Normal2+0x84c>
    4ef8:	c62c001c 	lwc1	$f12,28(s1)
    4efc:	8d090000 	lw	t1,0(t0)
    4f00:	27a600ac 	addiu	a2,sp,172
    4f04:	3c0c0001 	lui	t4,0x1
    4f08:	acc90000 	sw	t1,0(a2)
    4f0c:	8d0a0004 	lw	t2,4(t0)
    4f10:	02002025 	move	a0,s0
    4f14:	acca0004 	sw	t2,4(a2)
    4f18:	8d090008 	lw	t1,8(t0)
    4f1c:	acc90008 	sw	t1,8(a2)
    4f20:	8e0b008c 	lw	t3,140(s0)
    4f24:	018b6021 	addu	t4,t4,t3
    4f28:	918c0a39 	lbu	t4,2617(t4)
    4f2c:	11800006 	beqz	t4,4f48 <Camera_Normal2+0x7d4>
    4f30:	00000000 	nop
    4f34:	860d001e 	lh	t5,30(s0)
    4f38:	8fa50044 	lw	a1,68(sp)
    4f3c:	31ae0010 	andi	t6,t5,0x10
    4f40:	11c0000c 	beqz	t6,4f74 <Camera_Normal2+0x800>
    4f44:	00000000 	nop
    4f48:	0c000000 	jal	0 <func_800437F0>
    4f4c:	8fa50044 	lw	a1,68(sp)
    4f50:	27b800ac 	addiu	t8,sp,172
    4f54:	8f080000 	lw	t0,0(t8)
    4f58:	8faf0048 	lw	t7,72(sp)
    4f5c:	ade80000 	sw	t0,0(t7)
    4f60:	8f190004 	lw	t9,4(t8)
    4f64:	adf90004 	sw	t9,4(t7)
    4f68:	8f080008 	lw	t0,8(t8)
    4f6c:	10000013 	b	4fbc <Camera_Normal2+0x848>
    4f70:	ade80008 	sw	t0,8(t7)
    4f74:	0c000000 	jal	0 <func_800437F0>
    4f78:	02002025 	move	a0,s0
    4f7c:	27aa00ac 	addiu	t2,sp,172
    4f80:	8fa50048 	lw	a1,72(sp)
    4f84:	8d4b0000 	lw	t3,0(t2)
    4f88:	27a40098 	addiu	a0,sp,152
    4f8c:	acab0000 	sw	t3,0(a1)
    4f90:	8d490004 	lw	t1,4(t2)
    4f94:	aca90004 	sw	t1,4(a1)
    4f98:	8d4b0008 	lw	t3,8(t2)
    4f9c:	acab0008 	sw	t3,8(a1)
    4fa0:	0c000000 	jal	0 <func_800437F0>
    4fa4:	8fa60044 	lw	a2,68(sp)
    4fa8:	87ac009c 	lh	t4,156(sp)
    4fac:	a60c0134 	sh	t4,308(s0)
    4fb0:	87ad009e 	lh	t5,158(sp)
    4fb4:	a6000138 	sh	zero,312(s0)
    4fb8:	a60d0136 	sh	t5,310(s0)
    4fbc:	c62c001c 	lwc1	$f12,28(s1)
    4fc0:	c60e00fc 	lwc1	$f14,252(s0)
    4fc4:	8e0600d4 	lw	a2,212(s0)
    4fc8:	0c000000 	jal	0 <func_800437F0>
    4fcc:	3c073f80 	lui	a3,0x3f80
    4fd0:	e60000fc 	swc1	$f0,252(s0)
    4fd4:	00002025 	move	a0,zero
    4fd8:	8605015a 	lh	a1,346(s0)
    4fdc:	3c063f00 	lui	a2,0x3f00
    4fe0:	0c000000 	jal	0 <func_800437F0>
    4fe4:	2407000a 	li	a3,10
    4fe8:	a602015a 	sh	v0,346(s0)
    4fec:	02002025 	move	a0,s0
    4ff0:	0c000000 	jal	0 <func_800437F0>
    4ff4:	8e050018 	lw	a1,24(s0)
    4ff8:	e6000100 	swc1	$f0,256(s0)
    4ffc:	8fbf0024 	lw	ra,36(sp)
    5000:	8fb10020 	lw	s1,32(sp)
    5004:	8fb0001c 	lw	s0,28(sp)
    5008:	27bd00e0 	addiu	sp,sp,224
    500c:	03e00008 	jr	ra
    5010:	24020001 	li	v0,1

00005014 <Camera_Normal3>:
    5014:	27bdff58 	addiu	sp,sp,-168
    5018:	afb0001c 	sw	s0,28(sp)
    501c:	00808025 	move	s0,a0
    5020:	afbf0024 	sw	ra,36(sp)
    5024:	afb10020 	sw	s1,32(sp)
    5028:	0c000000 	jal	0 <func_800437F0>
    502c:	8c840090 	lw	a0,144(a0)
    5030:	8602015e 	lh	v0,350(s0)
    5034:	10400009 	beqz	v0,505c <Camera_Normal3+0x48>
    5038:	2401000a 	li	at,10
    503c:	10410007 	beq	v0,at,505c <Camera_Normal3+0x48>
    5040:	24010014 	li	at,20
    5044:	10410005 	beq	v0,at,505c <Camera_Normal3+0x48>
    5048:	3c0e0000 	lui	t6,0x0
    504c:	8dce0000 	lw	t6,0(t6)
    5050:	85c30314 	lh	v1,788(t6)
    5054:	10600048 	beqz	v1,5178 <Camera_Normal3+0x164>
    5058:	00000000 	nop
    505c:	860f0142 	lh	t7,322(s0)
    5060:	3c190000 	lui	t9,0x0
    5064:	86080144 	lh	t0,324(s0)
    5068:	000fc0c0 	sll	t8,t7,0x3
    506c:	0338c821 	addu	t9,t9,t8
    5070:	8f390004 	lw	t9,4(t9)
    5074:	000848c0 	sll	t1,t0,0x3
    5078:	3c010000 	lui	at,0x0
    507c:	03295021 	addu	t2,t9,t1
    5080:	8d420004 	lw	v0,4(t2)
    5084:	c4240000 	lwc1	$f4,0(at)
    5088:	3c010000 	lui	at,0x0
    508c:	844b0000 	lh	t3,0(v0)
    5090:	46040082 	mul.s	$f2,$f0,$f4
    5094:	24420020 	addiu	v0,v0,32
    5098:	448b3000 	mtc1	t3,$f6
    509c:	00000000 	nop
    50a0:	46803220 	cvt.s.w	$f8,$f6
    50a4:	46024282 	mul.s	$f10,$f8,$f2
    50a8:	e60a0000 	swc1	$f10,0(s0)
    50ac:	844cffe4 	lh	t4,-28(v0)
    50b0:	448c9000 	mtc1	t4,$f18
    50b4:	3c0c0000 	lui	t4,0x0
    50b8:	46809120 	cvt.s.w	$f4,$f18
    50bc:	46022182 	mul.s	$f6,$f4,$f2
    50c0:	e6060004 	swc1	$f6,4(s0)
    50c4:	844dffe8 	lh	t5,-24(v0)
    50c8:	448d4000 	mtc1	t5,$f8
    50cc:	00000000 	nop
    50d0:	468042a0 	cvt.s.w	$f10,$f8
    50d4:	46025482 	mul.s	$f18,$f10,$f2
    50d8:	e6120008 	swc1	$f18,8(s0)
    50dc:	844effec 	lh	t6,-20(v0)
    50e0:	c4280000 	lwc1	$f8,0(at)
    50e4:	3c013f00 	lui	at,0x3f00
    50e8:	448e2000 	mtc1	t6,$f4
    50ec:	44819000 	mtc1	at,$f18
    50f0:	3c010000 	lui	at,0x0
    50f4:	468021a0 	cvt.s.w	$f6,$f4
    50f8:	46083282 	mul.s	$f10,$f6,$f8
    50fc:	46125100 	add.s	$f4,$f10,$f18
    5100:	4600218d 	trunc.w.s	$f6,$f4
    5104:	44183000 	mfc1	t8,$f6
    5108:	00000000 	nop
    510c:	a618001c 	sh	t8,28(s0)
    5110:	8448fff0 	lh	t0,-16(v0)
    5114:	44884000 	mtc1	t0,$f8
    5118:	00000000 	nop
    511c:	468042a0 	cvt.s.w	$f10,$f8
    5120:	e60a000c 	swc1	$f10,12(s0)
    5124:	8459fff4 	lh	t9,-12(v0)
    5128:	44999000 	mtc1	t9,$f18
    512c:	00000000 	nop
    5130:	46809120 	cvt.s.w	$f4,$f18
    5134:	e6040010 	swc1	$f4,16(s0)
    5138:	8449fff8 	lh	t1,-8(v0)
    513c:	44893000 	mtc1	t1,$f6
    5140:	00000000 	nop
    5144:	46803220 	cvt.s.w	$f8,$f6
    5148:	e6080014 	swc1	$f8,20(s0)
    514c:	844afffc 	lh	t2,-4(v0)
    5150:	c4240000 	lwc1	$f4,0(at)
    5154:	448a5000 	mtc1	t2,$f10
    5158:	00000000 	nop
    515c:	468054a0 	cvt.s.w	$f18,$f10
    5160:	46049182 	mul.s	$f6,$f18,$f4
    5164:	e6060018 	swc1	$f6,24(s0)
    5168:	844b0000 	lh	t3,0(v0)
    516c:	a60b001e 	sh	t3,30(s0)
    5170:	8d8c0000 	lw	t4,0(t4)
    5174:	85830314 	lh	v1,788(t4)
    5178:	50600004 	beqzl	v1,518c <Camera_Normal3+0x178>
    517c:	26050050 	addiu	a1,s0,80
    5180:	0c000000 	jal	0 <func_800437F0>
    5184:	02002025 	move	a0,s0
    5188:	26050050 	addiu	a1,s0,80
    518c:	2606005c 	addiu	a2,s0,92
    5190:	afa60048 	sw	a2,72(sp)
    5194:	afa50044 	sw	a1,68(sp)
    5198:	0c000000 	jal	0 <func_800437F0>
    519c:	27a4007c 	addiu	a0,sp,124
    51a0:	26060074 	addiu	a2,s0,116
    51a4:	afa60040 	sw	a2,64(sp)
    51a8:	27a40074 	addiu	a0,sp,116
    51ac:	0c000000 	jal	0 <func_800437F0>
    51b0:	8fa50044 	lw	a1,68(sp)
    51b4:	24040001 	li	a0,1
    51b8:	3c010000 	lui	at,0x0
    51bc:	ac240000 	sw	a0,0(at)
    51c0:	860d001e 	lh	t5,30(s0)
    51c4:	3c010000 	lui	at,0x0
    51c8:	ac2d0000 	sw	t5,0(at)
    51cc:	8603015e 	lh	v1,350(s0)
    51d0:	1060000a 	beqz	v1,51fc <Camera_Normal3+0x1e8>
    51d4:	2401000a 	li	at,10
    51d8:	10610008 	beq	v1,at,51fc <Camera_Normal3+0x1e8>
    51dc:	24010014 	li	at,20
    51e0:	10610006 	beq	v1,at,51fc <Camera_Normal3+0x1e8>
    51e4:	24010019 	li	at,25
    51e8:	10610004 	beq	v1,at,51fc <Camera_Normal3+0x1e8>
    51ec:	260e0094 	addiu	t6,s0,148
    51f0:	afae003c 	sw	t6,60(sp)
    51f4:	1000002d 	b	52ac <Camera_Normal3+0x298>
    51f8:	26110020 	addiu	s1,s0,32
    51fc:	44804000 	mtc1	zero,$f8
    5200:	26110020 	addiu	s1,s0,32
    5204:	ae20000c 	sw	zero,12(s1)
    5208:	a6200024 	sh	zero,36(s1)
    520c:	e628001c 	swc1	$f8,28(s1)
    5210:	c60a0104 	lwc1	$f10,260(s0)
    5214:	a6200018 	sh	zero,24(s1)
    5218:	86220018 	lh	v0,24(s1)
    521c:	e62a0020 	swc1	$f10,32(s1)
    5220:	3c180000 	lui	t8,0x0
    5224:	a6220014 	sh	v0,20(s1)
    5228:	a6220016 	sh	v0,22(s1)
    522c:	c612000c 	lwc1	$f18,12(s0)
    5230:	260f0094 	addiu	t7,s0,148
    5234:	3c013f80 	lui	at,0x3f80
    5238:	e6320010 	swc1	$f18,16(s1)
    523c:	8f180000 	lw	t8,0(t8)
    5240:	afaf003c 	sw	t7,60(sp)
    5244:	44812000 	mtc1	at,$f4
    5248:	870801c2 	lh	t0,450(t8)
    524c:	85e9000e 	lh	t1,14(t7)
    5250:	87ad0082 	lh	t5,130(sp)
    5254:	44883000 	mtc1	t0,$f6
    5258:	252c8001 	addiu	t4,t1,-32767
    525c:	018d7023 	subu	t6,t4,t5
    5260:	46803220 	cvt.s.w	$f8,$f6
    5264:	000e7c00 	sll	t7,t6,0x10
    5268:	000fc403 	sra	t8,t7,0x10
    526c:	44989000 	mtc1	t8,$f18
    5270:	2409000a 	li	t1,10
    5274:	a629002a 	sh	t1,42(s1)
    5278:	46082283 	div.s	$f10,$f4,$f8
    527c:	3c0a0000 	lui	t2,0x0
    5280:	468091a0 	cvt.s.w	$f6,$f18
    5284:	46065102 	mul.s	$f4,$f10,$f6
    5288:	4600220d 	trunc.w.s	$f8,$f4
    528c:	44194000 	mfc1	t9,$f8
    5290:	00000000 	nop
    5294:	a6390026 	sh	t9,38(s1)
    5298:	8d4a0000 	lw	t2,0(t2)
    529c:	854b01c2 	lh	t3,450(t2)
    52a0:	a62b0028 	sh	t3,40(s1)
    52a4:	a604015e 	sh	a0,350(s0)
    52a8:	a620001a 	sh	zero,26(s1)
    52ac:	8622002a 	lh	v0,42(s1)
    52b0:	3c030000 	lui	v1,0x0
    52b4:	10400002 	beqz	v0,52c0 <Camera_Normal3+0x2ac>
    52b8:	244cffff 	addiu	t4,v0,-1
    52bc:	a62c002a 	sh	t4,42(s1)
    52c0:	8c630000 	lw	v1,0(v1)
    52c4:	3c010000 	lui	at,0x0
    52c8:	c4200000 	lwc1	$f0,0(at)
    52cc:	846d01c6 	lh	t5,454(v1)
    52d0:	846e01c8 	lh	t6,456(v1)
    52d4:	c60200e0 	lwc1	$f2,224(s0)
    52d8:	448d9000 	mtc1	t5,$f18
    52dc:	448e2000 	mtc1	t6,$f4
    52e0:	468092a0 	cvt.s.w	$f10,$f18
    52e4:	46802220 	cvt.s.w	$f8,$f4
    52e8:	46005182 	mul.s	$f6,$f10,$f0
    52ec:	00000000 	nop
    52f0:	46023402 	mul.s	$f16,$f6,$f2
    52f4:	00000000 	nop
    52f8:	46004482 	mul.s	$f18,$f8,$f0
    52fc:	00000000 	nop
    5300:	46029282 	mul.s	$f10,$f18,$f2
    5304:	e7aa0094 	swc1	$f10,148(sp)
    5308:	8622001a 	lh	v0,26(s1)
    530c:	10400022 	beqz	v0,5398 <Camera_Normal3+0x384>
    5310:	00000000 	nop
    5314:	00027840 	sll	t7,v0,0x1
    5318:	448f2000 	mtc1	t7,$f4
    531c:	c606000c 	lwc1	$f6,12(s0)
    5320:	c60e00c8 	lwc1	$f14,200(s0)
    5324:	46802220 	cvt.s.w	$f8,$f4
    5328:	44068000 	mfc1	a2,$f16
    532c:	3c073dcc 	lui	a3,0x3dcc
    5330:	34e7cccd 	ori	a3,a3,0xcccd
    5334:	e7b00098 	swc1	$f16,152(sp)
    5338:	0c000000 	jal	0 <func_800437F0>
    533c:	46083300 	add.s	$f12,$f6,$f8
    5340:	e60000c8 	swc1	$f0,200(s0)
    5344:	3c180000 	lui	t8,0x0
    5348:	8f180000 	lw	t8,0(t8)
    534c:	8639001a 	lh	t9,26(s1)
    5350:	3c073dcc 	lui	a3,0x3dcc
    5354:	870801a2 	lh	t0,418(t8)
    5358:	00194840 	sll	t1,t9,0x1
    535c:	44892000 	mtc1	t1,$f4
    5360:	44889000 	mtc1	t0,$f18
    5364:	34e7cccd 	ori	a3,a3,0xcccd
    5368:	468021a0 	cvt.s.w	$f6,$f4
    536c:	8fa60094 	lw	a2,148(sp)
    5370:	c60e00c4 	lwc1	$f14,196(s0)
    5374:	468092a0 	cvt.s.w	$f10,$f18
    5378:	0c000000 	jal	0 <func_800437F0>
    537c:	46065300 	add.s	$f12,$f10,$f6
    5380:	c7b00098 	lwc1	$f16,152(sp)
    5384:	e60000c4 	swc1	$f0,196(s0)
    5388:	862a001a 	lh	t2,26(s1)
    538c:	254bffff 	addiu	t3,t2,-1
    5390:	10000015 	b	53e8 <Camera_Normal3+0x3d4>
    5394:	a62b001a 	sh	t3,26(s1)
    5398:	c60c000c 	lwc1	$f12,12(s0)
    539c:	c60e00c8 	lwc1	$f14,200(s0)
    53a0:	44068000 	mfc1	a2,$f16
    53a4:	3c073dcc 	lui	a3,0x3dcc
    53a8:	34e7cccd 	ori	a3,a3,0xcccd
    53ac:	0c000000 	jal	0 <func_800437F0>
    53b0:	e7b00098 	swc1	$f16,152(sp)
    53b4:	e60000c8 	swc1	$f0,200(s0)
    53b8:	3c0c0000 	lui	t4,0x0
    53bc:	8d8c0000 	lw	t4,0(t4)
    53c0:	3c073dcc 	lui	a3,0x3dcc
    53c4:	34e7cccd 	ori	a3,a3,0xcccd
    53c8:	858d01a2 	lh	t5,418(t4)
    53cc:	8fa60094 	lw	a2,148(sp)
    53d0:	c60e00c4 	lwc1	$f14,196(s0)
    53d4:	448d4000 	mtc1	t5,$f8
    53d8:	0c000000 	jal	0 <func_800437F0>
    53dc:	46804320 	cvt.s.w	$f12,$f8
    53e0:	c7b00098 	lwc1	$f16,152(sp)
    53e4:	e60000c4 	swc1	$f0,196(s0)
    53e8:	3c0e0000 	lui	t6,0x0
    53ec:	8dce0000 	lw	t6,0(t6)
    53f0:	3c010000 	lui	at,0x0
    53f4:	c42a0000 	lwc1	$f10,0(at)
    53f8:	85cf0198 	lh	t7,408(t6)
    53fc:	44068000 	mfc1	a2,$f16
    5400:	3c073dcc 	lui	a3,0x3dcc
    5404:	448f9000 	mtc1	t7,$f18
    5408:	34e7cccd 	ori	a3,a3,0xcccd
    540c:	c60e00cc 	lwc1	$f14,204(s0)
    5410:	46809120 	cvt.s.w	$f4,$f18
    5414:	460a2302 	mul.s	$f12,$f4,$f10
    5418:	0c000000 	jal	0 <func_800437F0>
    541c:	00000000 	nop
    5420:	e60000cc 	swc1	$f0,204(s0)
    5424:	3c180000 	lui	t8,0x0
    5428:	8f180000 	lw	t8,0(t8)
    542c:	3c010000 	lui	at,0x0
    5430:	c4320000 	lwc1	$f18,0(at)
    5434:	8708019a 	lh	t0,410(t8)
    5438:	3c073dcc 	lui	a3,0x3dcc
    543c:	34e7cccd 	ori	a3,a3,0xcccd
    5440:	44883000 	mtc1	t0,$f6
    5444:	8fa60094 	lw	a2,148(sp)
    5448:	c60e00d0 	lwc1	$f14,208(s0)
    544c:	46803220 	cvt.s.w	$f8,$f6
    5450:	46124302 	mul.s	$f12,$f8,$f18
    5454:	0c000000 	jal	0 <func_800437F0>
    5458:	00000000 	nop
    545c:	e60000d0 	swc1	$f0,208(s0)
    5460:	3c190000 	lui	t9,0x0
    5464:	8f390000 	lw	t9,0(t9)
    5468:	3c010000 	lui	at,0x0
    546c:	c4260000 	lwc1	$f6,0(at)
    5470:	8729019c 	lh	t1,412(t9)
    5474:	3c073dcc 	lui	a3,0x3dcc
    5478:	34e7cccd 	ori	a3,a3,0xcccd
    547c:	44892000 	mtc1	t1,$f4
    5480:	8fa60094 	lw	a2,148(sp)
    5484:	c60e00d4 	lwc1	$f14,212(s0)
    5488:	468022a0 	cvt.s.w	$f10,$f4
    548c:	46065302 	mul.s	$f12,$f10,$f6
    5490:	0c000000 	jal	0 <func_800437F0>
    5494:	00000000 	nop
    5498:	e60000d4 	swc1	$f0,212(s0)
    549c:	87a50082 	lh	a1,130(sp)
    54a0:	02002025 	move	a0,s0
    54a4:	24060001 	li	a2,1
    54a8:	24a58001 	addiu	a1,a1,-32767
    54ac:	00052c00 	sll	a1,a1,0x10
    54b0:	0c000000 	jal	0 <func_800437F0>
    54b4:	00052c03 	sra	a1,a1,0x10
    54b8:	3c013f80 	lui	at,0x3f80
    54bc:	44816000 	mtc1	at,$f12
    54c0:	c6080010 	lwc1	$f8,16(s0)
    54c4:	3c013f00 	lui	at,0x3f00
    54c8:	44812000 	mtc1	at,$f4
    54cc:	46086483 	div.s	$f18,$f12,$f8
    54d0:	c60a00e0 	lwc1	$f10,224(s0)
    54d4:	00022400 	sll	a0,v0,0x10
    54d8:	00042403 	sra	a0,a0,0x10
    54dc:	460a6181 	sub.s	$f6,$f12,$f10
    54e0:	86250024 	lh	a1,36(s1)
    54e4:	2407000f 	li	a3,15
    54e8:	46049002 	mul.s	$f0,$f18,$f4
    54ec:	00000000 	nop
    54f0:	46060082 	mul.s	$f2,$f0,$f6
    54f4:	46020200 	add.s	$f8,$f0,$f2
    54f8:	44064000 	mfc1	a2,$f8
    54fc:	0c000000 	jal	0 <func_800437F0>
    5500:	00000000 	nop
    5504:	a6220024 	sh	v0,36(s1)
    5508:	8e060000 	lw	a2,0(s0)
    550c:	240a0001 	li	t2,1
    5510:	afaa0010 	sw	t2,16(sp)
    5514:	02002025 	move	a0,s0
    5518:	27a50074 	addiu	a1,sp,116
    551c:	0c000000 	jal	0 <func_800437F0>
    5520:	26270020 	addiu	a3,s1,32
    5524:	c6120008 	lwc1	$f18,8(s0)
    5528:	c6040004 	lwc1	$f4,4(s0)
    552c:	3c013f00 	lui	at,0x3f00
    5530:	44813000 	mtc1	at,$f6
    5534:	46049280 	add.s	$f10,$f18,$f4
    5538:	27a40084 	addiu	a0,sp,132
    553c:	8fa50044 	lw	a1,68(sp)
    5540:	8fa60040 	lw	a2,64(sp)
    5544:	46065202 	mul.s	$f8,$f10,$f6
    5548:	0c000000 	jal	0 <func_800437F0>
    554c:	e7a80090 	swc1	$f8,144(sp)
    5550:	862b002a 	lh	t3,42(s1)
    5554:	8e060004 	lw	a2,4(s0)
    5558:	8e070008 	lw	a3,8(s0)
    555c:	02002025 	move	a0,s0
    5560:	8fa50084 	lw	a1,132(sp)
    5564:	0c000000 	jal	0 <func_800437F0>
    5568:	afab0010 	sw	t3,16(sp)
    556c:	e7a00084 	swc1	$f0,132(sp)
    5570:	e60000dc 	swc1	$f0,220(s0)
    5574:	3c010000 	lui	at,0x0
    5578:	c4320000 	lwc1	$f18,0(at)
    557c:	c60400d8 	lwc1	$f4,216(s0)
    5580:	4604903c 	c.lt.s	$f18,$f4
    5584:	00000000 	nop
    5588:	4502000a 	bc1fl	55b4 <Camera_Normal3+0x5a0>
    558c:	3c013f80 	lui	at,0x3f80
    5590:	c7a00084 	lwc1	$f0,132(sp)
    5594:	c7aa0090 	lwc1	$f10,144(sp)
    5598:	3c010000 	lui	at,0x0
    559c:	c4280000 	lwc1	$f8,0(at)
    55a0:	46005181 	sub.s	$f6,$f10,$f0
    55a4:	46083482 	mul.s	$f18,$f6,$f8
    55a8:	46120000 	add.s	$f0,$f0,$f18
    55ac:	e7a00084 	swc1	$f0,132(sp)
    55b0:	3c013f80 	lui	at,0x3f80
    55b4:	44812000 	mtc1	at,$f4
    55b8:	c60a00c4 	lwc1	$f10,196(s0)
    55bc:	860c001c 	lh	t4,28(s0)
    55c0:	862d0024 	lh	t5,36(s1)
    55c4:	460a2183 	div.s	$f6,$f4,$f10
    55c8:	87a50078 	lh	a1,120(sp)
    55cc:	018d2023 	subu	a0,t4,t5
    55d0:	00042400 	sll	a0,a0,0x10
    55d4:	00042403 	sra	a0,a0,0x10
    55d8:	2407000a 	li	a3,10
    55dc:	44063000 	mfc1	a2,$f6
    55e0:	0c000000 	jal	0 <func_800437F0>
    55e4:	00000000 	nop
    55e8:	3c030000 	lui	v1,0x0
    55ec:	8c630000 	lw	v1,0(v1)
    55f0:	a7a20088 	sh	v0,136(sp)
    55f4:	27a60084 	addiu	a2,sp,132
    55f8:	8464019e 	lh	a0,414(v1)
    55fc:	0082082a 	slt	at,a0,v0
    5600:	50200003 	beqzl	at,5610 <Camera_Normal3+0x5fc>
    5604:	846201d8 	lh	v0,472(v1)
    5608:	a7a40088 	sh	a0,136(sp)
    560c:	846201d8 	lh	v0,472(v1)
    5610:	87ae0088 	lh	t6,136(sp)
    5614:	01c2082a 	slt	at,t6,v0
    5618:	50200003 	beqzl	at,5628 <Camera_Normal3+0x614>
    561c:	8faf003c 	lw	t7,60(sp)
    5620:	a7a20088 	sh	v0,136(sp)
    5624:	8faf003c 	lw	t7,60(sp)
    5628:	87a8007a 	lh	t0,122(sp)
    562c:	85f8000e 	lh	t8,14(t7)
    5630:	250a8001 	addiu	t2,t0,-32767
    5634:	030a2023 	subu	a0,t8,t2
    5638:	00042400 	sll	a0,a0,0x10
    563c:	00042403 	sra	a0,a0,0x10
    5640:	04800003 	bltz	a0,5650 <Camera_Normal3+0x63c>
    5644:	00041823 	negu	v1,a0
    5648:	10000001 	b	5650 <Camera_Normal3+0x63c>
    564c:	00801825 	move	v1,a0
    5650:	28612af9 	slti	at,v1,11001
    5654:	14200006 	bnez	at,5670 <Camera_Normal3+0x65c>
    5658:	87ae007a 	lh	t6,122(sp)
    565c:	58800004 	blezl	a0,5670 <Camera_Normal3+0x65c>
    5660:	2404d508 	li	a0,-11000
    5664:	10000002 	b	5670 <Camera_Normal3+0x65c>
    5668:	24042af8 	li	a0,11000
    566c:	2404d508 	li	a0,-11000
    5670:	3c013f00 	lui	at,0x3f00
    5674:	44816000 	mtc1	at,$f12
    5678:	3c013f80 	lui	at,0x3f80
    567c:	44812000 	mtc1	at,$f4
    5680:	c60200e0 	lwc1	$f2,224(s0)
    5684:	44844000 	mtc1	a0,$f8
    5688:	460c2281 	sub.s	$f10,$f4,$f12
    568c:	3c014316 	lui	at,0x4316
    5690:	87ab007a 	lh	t3,122(sp)
    5694:	468044a0 	cvt.s.w	$f18,$f8
    5698:	460a1182 	mul.s	$f6,$f2,$f10
    569c:	c60a00c8 	lwc1	$f10,200(s0)
    56a0:	460c3200 	add.s	$f8,$f6,$f12
    56a4:	44813000 	mtc1	at,$f6
    56a8:	3c013f80 	lui	at,0x3f80
    56ac:	46089102 	mul.s	$f4,$f18,$f8
    56b0:	44819000 	mtc1	at,$f18
    56b4:	00000000 	nop
    56b8:	46029201 	sub.s	$f8,$f18,$f2
    56bc:	460a2403 	div.s	$f16,$f4,$f10
    56c0:	46083102 	mul.s	$f4,$f6,$f8
    56c4:	46008005 	abs.s	$f0,$f16
    56c8:	4600203c 	c.lt.s	$f4,$f0
    56cc:	00000000 	nop
    56d0:	4502000a 	bc1fl	56fc <Camera_Normal3+0x6e8>
    56d4:	a7ae008a 	sh	t6,138(sp)
    56d8:	448b5000 	mtc1	t3,$f10
    56dc:	00000000 	nop
    56e0:	468054a0 	cvt.s.w	$f18,$f10
    56e4:	46109180 	add.s	$f6,$f18,$f16
    56e8:	4600320d 	trunc.w.s	$f8,$f6
    56ec:	440d4000 	mfc1	t5,$f8
    56f0:	10000002 	b	56fc <Camera_Normal3+0x6e8>
    56f4:	a7ad008a 	sh	t5,138(sp)
    56f8:	a7ae008a 	sh	t6,138(sp)
    56fc:	862f0028 	lh	t7,40(s1)
    5700:	87a8008a 	lh	t0,138(sp)
    5704:	59e00008 	blezl	t7,5728 <Camera_Normal3+0x714>
    5708:	8fa40040 	lw	a0,64(sp)
    570c:	86390026 	lh	t9,38(s1)
    5710:	01194821 	addu	t1,t0,t9
    5714:	a7a9008a 	sh	t1,138(sp)
    5718:	86380028 	lh	t8,40(s1)
    571c:	270affff 	addiu	t2,t8,-1
    5720:	a62a0028 	sh	t2,40(s1)
    5724:	8fa40040 	lw	a0,64(sp)
    5728:	0c000000 	jal	0 <func_800437F0>
    572c:	8fa50044 	lw	a1,68(sp)
    5730:	860b0140 	lh	t3,320(s0)
    5734:	24010007 	li	at,7
    5738:	02002025 	move	a0,s0
    573c:	1561000a 	bne	t3,at,5768 <Camera_Normal3+0x754>
    5740:	8fae0040 	lw	t6,64(sp)
    5744:	8e060004 	lw	a2,4(s0)
    5748:	8e07000c 	lw	a3,12(s0)
    574c:	27ac008c 	addiu	t4,sp,140
    5750:	afac0010 	sw	t4,16(sp)
    5754:	afb10014 	sw	s1,20(sp)
    5758:	0c000000 	jal	0 <func_800437F0>
    575c:	27a50084 	addiu	a1,sp,132
    5760:	10000009 	b	5788 <Camera_Normal3+0x774>
    5764:	c60c0014 	lwc1	$f12,20(s0)
    5768:	8fad0048 	lw	t5,72(sp)
    576c:	8dc80000 	lw	t0,0(t6)
    5770:	ada80000 	sw	t0,0(t5)
    5774:	8dcf0004 	lw	t7,4(t6)
    5778:	adaf0004 	sw	t7,4(t5)
    577c:	8dc80008 	lw	t0,8(t6)
    5780:	ada80008 	sw	t0,8(t5)
    5784:	c60c0014 	lwc1	$f12,20(s0)
    5788:	c60e00fc 	lwc1	$f14,252(s0)
    578c:	8e0600d4 	lw	a2,212(s0)
    5790:	0c000000 	jal	0 <func_800437F0>
    5794:	3c073f80 	lui	a3,0x3f80
    5798:	e60000fc 	swc1	$f0,252(s0)
    579c:	00002025 	move	a0,zero
    57a0:	8605015a 	lh	a1,346(s0)
    57a4:	3c063f00 	lui	a2,0x3f00
    57a8:	0c000000 	jal	0 <func_800437F0>
    57ac:	2407000a 	li	a3,10
    57b0:	a602015a 	sh	v0,346(s0)
    57b4:	02002025 	move	a0,s0
    57b8:	0c000000 	jal	0 <func_800437F0>
    57bc:	8e050018 	lw	a1,24(s0)
    57c0:	e6000100 	swc1	$f0,256(s0)
    57c4:	8fbf0024 	lw	ra,36(sp)
    57c8:	8fb10020 	lw	s1,32(sp)
    57cc:	8fb0001c 	lw	s0,28(sp)
    57d0:	27bd00a8 	addiu	sp,sp,168
    57d4:	03e00008 	jr	ra
    57d8:	24020001 	li	v0,1

000057dc <Camera_Normal4>:
    57dc:	27bdffe8 	addiu	sp,sp,-24
    57e0:	afbf0014 	sw	ra,20(sp)
    57e4:	0c000000 	jal	0 <func_800437F0>
    57e8:	00000000 	nop
    57ec:	8fbf0014 	lw	ra,20(sp)
    57f0:	27bd0018 	addiu	sp,sp,24
    57f4:	03e00008 	jr	ra
    57f8:	00000000 	nop

000057fc <Camera_Normal0>:
    57fc:	27bdffe8 	addiu	sp,sp,-24
    5800:	afbf0014 	sw	ra,20(sp)
    5804:	0c000000 	jal	0 <func_800437F0>
    5808:	00000000 	nop
    580c:	8fbf0014 	lw	ra,20(sp)
    5810:	27bd0018 	addiu	sp,sp,24
    5814:	03e00008 	jr	ra
    5818:	00000000 	nop

0000581c <Camera_Parallel1>:
    581c:	27bdff38 	addiu	sp,sp,-200
    5820:	afb00020 	sw	s0,32(sp)
    5824:	00808025 	move	s0,a0
    5828:	afbf0024 	sw	ra,36(sp)
    582c:	0c000000 	jal	0 <func_800437F0>
    5830:	8c840090 	lw	a0,144(a0)
    5834:	8602015e 	lh	v0,350(s0)
    5838:	10400008 	beqz	v0,585c <Camera_Parallel1+0x40>
    583c:	2401000a 	li	at,10
    5840:	10410006 	beq	v0,at,585c <Camera_Parallel1+0x40>
    5844:	24010014 	li	at,20
    5848:	10410004 	beq	v0,at,585c <Camera_Parallel1+0x40>
    584c:	3c0e0000 	lui	t6,0x0
    5850:	8dce0000 	lw	t6,0(t6)
    5854:	85c20314 	lh	v0,788(t6)
    5858:	1040006f 	beqz	v0,5a18 <Camera_Parallel1+0x1fc>
    585c:	3c0c0000 	lui	t4,0x0
    5860:	8d8c0000 	lw	t4,0(t4)
    5864:	3c010000 	lui	at,0x0
    5868:	c42e0000 	lwc1	$f14,0(at)
    586c:	858d01f0 	lh	t5,496(t4)
    5870:	3c013f00 	lui	at,0x3f00
    5874:	44818000 	mtc1	at,$f16
    5878:	448d2000 	mtc1	t5,$f4
    587c:	3c010000 	lui	at,0x0
    5880:	c4320000 	lwc1	$f18,0(at)
    5884:	468021a0 	cvt.s.w	$f6,$f4
    5888:	3c013f80 	lui	at,0x3f80
    588c:	44814000 	mtc1	at,$f8
    5890:	3c014288 	lui	at,0x4288
    5894:	44812000 	mtc1	at,$f4
    5898:	860f0142 	lh	t7,322(s0)
    589c:	46123082 	mul.s	$f2,$f6,$f18
    58a0:	46002183 	div.s	$f6,$f4,$f0
    58a4:	3c190000 	lui	t9,0x0
    58a8:	000fc0c0 	sll	t8,t7,0x3
    58ac:	86090144 	lh	t1,324(s0)
    58b0:	0338c821 	addu	t9,t9,t8
    58b4:	8f390004 	lw	t9,4(t9)
    58b8:	000950c0 	sll	t2,t1,0x3
    58bc:	46024280 	add.s	$f10,$f8,$f2
    58c0:	032a5821 	addu	t3,t9,t2
    58c4:	8d620004 	lw	v0,4(t3)
    58c8:	3c0b0000 	lui	t3,0x0
    58cc:	844e0000 	lh	t6,0(v0)
    58d0:	24420028 	addiu	v0,v0,40
    58d4:	448e2000 	mtc1	t6,$f4
    58d8:	46061202 	mul.s	$f8,$f2,$f6
    58dc:	468021a0 	cvt.s.w	$f6,$f4
    58e0:	46085301 	sub.s	$f12,$f10,$f8
    58e4:	46123282 	mul.s	$f10,$f6,$f18
    58e8:	00000000 	nop
    58ec:	46005202 	mul.s	$f8,$f10,$f0
    58f0:	00000000 	nop
    58f4:	460c4102 	mul.s	$f4,$f8,$f12
    58f8:	e6040000 	swc1	$f4,0(s0)
    58fc:	844fffdc 	lh	t7,-36(v0)
    5900:	448f3000 	mtc1	t7,$f6
    5904:	00000000 	nop
    5908:	468032a0 	cvt.s.w	$f10,$f6
    590c:	46125202 	mul.s	$f8,$f10,$f18
    5910:	00000000 	nop
    5914:	46004102 	mul.s	$f4,$f8,$f0
    5918:	00000000 	nop
    591c:	460c2182 	mul.s	$f6,$f4,$f12
    5920:	e6060004 	swc1	$f6,4(s0)
    5924:	8458ffe0 	lh	t8,-32(v0)
    5928:	44985000 	mtc1	t8,$f10
    592c:	00000000 	nop
    5930:	46805220 	cvt.s.w	$f8,$f10
    5934:	460e4102 	mul.s	$f4,$f8,$f14
    5938:	46102180 	add.s	$f6,$f4,$f16
    593c:	4600328d 	trunc.w.s	$f10,$f6
    5940:	44195000 	mfc1	t9,$f10
    5944:	00000000 	nop
    5948:	a6190020 	sh	t9,32(s0)
    594c:	844affe4 	lh	t2,-28(v0)
    5950:	448a4000 	mtc1	t2,$f8
    5954:	00000000 	nop
    5958:	46804120 	cvt.s.w	$f4,$f8
    595c:	460e2182 	mul.s	$f6,$f4,$f14
    5960:	46103280 	add.s	$f10,$f6,$f16
    5964:	4600520d 	trunc.w.s	$f8,$f10
    5968:	440c4000 	mfc1	t4,$f8
    596c:	00000000 	nop
    5970:	a60c0022 	sh	t4,34(s0)
    5974:	844dffe8 	lh	t5,-24(v0)
    5978:	448d2000 	mtc1	t5,$f4
    597c:	00000000 	nop
    5980:	468021a0 	cvt.s.w	$f6,$f4
    5984:	e6060008 	swc1	$f6,8(s0)
    5988:	844effec 	lh	t6,-20(v0)
    598c:	448e5000 	mtc1	t6,$f10
    5990:	00000000 	nop
    5994:	46805220 	cvt.s.w	$f8,$f10
    5998:	e608000c 	swc1	$f8,12(s0)
    599c:	844ffff0 	lh	t7,-16(v0)
    59a0:	448f2000 	mtc1	t7,$f4
    59a4:	00000000 	nop
    59a8:	468021a0 	cvt.s.w	$f6,$f4
    59ac:	e6060010 	swc1	$f6,16(s0)
    59b0:	8458fff4 	lh	t8,-12(v0)
    59b4:	44985000 	mtc1	t8,$f10
    59b8:	00000000 	nop
    59bc:	46805220 	cvt.s.w	$f8,$f10
    59c0:	46124102 	mul.s	$f4,$f8,$f18
    59c4:	e6040014 	swc1	$f4,20(s0)
    59c8:	8449fff8 	lh	t1,-8(v0)
    59cc:	a6090024 	sh	t1,36(s0)
    59d0:	8459fffc 	lh	t9,-4(v0)
    59d4:	44993000 	mtc1	t9,$f6
    59d8:	00000000 	nop
    59dc:	468032a0 	cvt.s.w	$f10,$f6
    59e0:	46125202 	mul.s	$f8,$f10,$f18
    59e4:	00000000 	nop
    59e8:	46004102 	mul.s	$f4,$f8,$f0
    59ec:	00000000 	nop
    59f0:	460c2182 	mul.s	$f6,$f4,$f12
    59f4:	e6060018 	swc1	$f6,24(s0)
    59f8:	844a0000 	lh	t2,0(v0)
    59fc:	448a5000 	mtc1	t2,$f10
    5a00:	00000000 	nop
    5a04:	46805220 	cvt.s.w	$f8,$f10
    5a08:	46124102 	mul.s	$f4,$f8,$f18
    5a0c:	e604001c 	swc1	$f4,28(s0)
    5a10:	8d6b0000 	lw	t3,0(t3)
    5a14:	85620314 	lh	v0,788(t3)
    5a18:	50400004 	beqzl	v0,5a2c <Camera_Parallel1+0x210>
    5a1c:	26050050 	addiu	a1,s0,80
    5a20:	0c000000 	jal	0 <func_800437F0>
    5a24:	02002025 	move	a0,s0
    5a28:	26050050 	addiu	a1,s0,80
    5a2c:	2606005c 	addiu	a2,s0,92
    5a30:	afa60040 	sw	a2,64(sp)
    5a34:	afa5003c 	sw	a1,60(sp)
    5a38:	0c000000 	jal	0 <func_800437F0>
    5a3c:	27a400a0 	addiu	a0,sp,160
    5a40:	26060074 	addiu	a2,s0,116
    5a44:	afa60038 	sw	a2,56(sp)
    5a48:	27a40098 	addiu	a0,sp,152
    5a4c:	0c000000 	jal	0 <func_800437F0>
    5a50:	8fa5003c 	lw	a1,60(sp)
    5a54:	8603015e 	lh	v1,350(s0)
    5a58:	10600009 	beqz	v1,5a80 <Camera_Parallel1+0x264>
    5a5c:	2401000a 	li	at,10
    5a60:	10610007 	beq	v1,at,5a80 <Camera_Parallel1+0x264>
    5a64:	24010014 	li	at,20
    5a68:	10610005 	beq	v1,at,5a80 <Camera_Parallel1+0x264>
    5a6c:	24010019 	li	at,25
    5a70:	50610004 	beql	v1,at,5a84 <Camera_Parallel1+0x268>
    5a74:	26080028 	addiu	t0,s0,40
    5a78:	10000017 	b	5ad8 <Camera_Parallel1+0x2bc>
    5a7c:	26080028 	addiu	t0,s0,40
    5a80:	26080028 	addiu	t0,s0,40
    5a84:	a5000016 	sh	zero,22(t0)
    5a88:	a5000010 	sh	zero,16(t0)
    5a8c:	860c0024 	lh	t4,36(s0)
    5a90:	44803000 	mtc1	zero,$f6
    5a94:	240e0014 	li	t6,20
    5a98:	318d0004 	andi	t5,t4,0x4
    5a9c:	11a00003 	beqz	t5,5aac <Camera_Parallel1+0x290>
    5aa0:	3c0f0000 	lui	t7,0x0
    5aa4:	10000004 	b	5ab8 <Camera_Parallel1+0x29c>
    5aa8:	a50e0018 	sh	t6,24(t0)
    5aac:	8def0000 	lw	t7,0(t7)
    5ab0:	85f801c2 	lh	t8,450(t7)
    5ab4:	a5180018 	sh	t8,24(t0)
    5ab8:	e5060000 	swc1	$f6,0(t0)
    5abc:	c60800f4 	lwc1	$f8,244(s0)
    5ac0:	c60a0098 	lwc1	$f10,152(s0)
    5ac4:	46085101 	sub.s	$f4,$f10,$f8
    5ac8:	e504000c 	swc1	$f4,12(t0)
    5acc:	8609015e 	lh	t1,350(s0)
    5ad0:	25390001 	addiu	t9,t1,1
    5ad4:	a619015e 	sh	t9,350(s0)
    5ad8:	850a0018 	lh	t2,24(t0)
    5adc:	3c030000 	lui	v1,0x0
    5ae0:	51400013 	beqzl	t2,5b30 <Camera_Parallel1+0x314>
    5ae4:	86020024 	lh	v0,36(s0)
    5ae8:	86020024 	lh	v0,36(s0)
    5aec:	304b0002 	andi	t3,v0,0x2
    5af0:	11600007 	beqz	t3,5b10 <Camera_Parallel1+0x2f4>
    5af4:	30590004 	andi	t9,v0,0x4
    5af8:	860c00a2 	lh	t4,162(s0)
    5afc:	86180022 	lh	t8,34(s0)
    5b00:	258f8001 	addiu	t7,t4,-32767
    5b04:	01f84821 	addu	t1,t7,t8
    5b08:	10000014 	b	5b5c <Camera_Parallel1+0x340>
    5b0c:	a5090012 	sh	t1,18(t0)
    5b10:	13200004 	beqz	t9,5b24 <Camera_Parallel1+0x308>
    5b14:	87ab009e 	lh	t3,158(sp)
    5b18:	860a0022 	lh	t2,34(s0)
    5b1c:	1000000f 	b	5b5c <Camera_Parallel1+0x340>
    5b20:	a50a0012 	sh	t2,18(t0)
    5b24:	1000000d 	b	5b5c <Camera_Parallel1+0x340>
    5b28:	a50b0012 	sh	t3,18(t0)
    5b2c:	86020024 	lh	v0,36(s0)
    5b30:	3c010000 	lui	at,0x0
    5b34:	304c0020 	andi	t4,v0,0x20
    5b38:	11800007 	beqz	t4,5b58 <Camera_Parallel1+0x33c>
    5b3c:	00000000 	nop
    5b40:	860d00a2 	lh	t5,162(s0)
    5b44:	86090022 	lh	t1,34(s0)
    5b48:	25b88001 	addiu	t8,t5,-32767
    5b4c:	0309c821 	addu	t9,t8,t1
    5b50:	a5190012 	sh	t9,18(t0)
    5b54:	86020024 	lh	v0,36(s0)
    5b58:	ac220000 	sw	v0,0(at)
    5b5c:	860a0020 	lh	t2,32(s0)
    5b60:	24010015 	li	at,21
    5b64:	a50a0014 	sh	t2,20(t0)
    5b68:	8602015e 	lh	v0,350(s0)
    5b6c:	54410006 	bnel	v0,at,5b88 <Camera_Parallel1+0x36c>
    5b70:	2401000b 	li	at,11
    5b74:	24020001 	li	v0,1
    5b78:	a5020016 	sh	v0,22(t0)
    5b7c:	10000005 	b	5b94 <Camera_Parallel1+0x378>
    5b80:	a602015e 	sh	v0,350(s0)
    5b84:	2401000b 	li	at,11
    5b88:	14410002 	bne	v0,at,5b94 <Camera_Parallel1+0x378>
    5b8c:	24020001 	li	v0,1
    5b90:	a602015e 	sh	v0,350(s0)
    5b94:	8c630000 	lw	v1,0(v1)
    5b98:	3c010000 	lui	at,0x0
    5b9c:	c4300000 	lwc1	$f16,0(at)
    5ba0:	846b01c6 	lh	t3,454(v1)
    5ba4:	846c01c8 	lh	t4,456(v1)
    5ba8:	c60000e0 	lwc1	$f0,224(s0)
    5bac:	448b3000 	mtc1	t3,$f6
    5bb0:	448c2000 	mtc1	t4,$f4
    5bb4:	3c073dcc 	lui	a3,0x3dcc
    5bb8:	468032a0 	cvt.s.w	$f10,$f6
    5bbc:	34e7cccd 	ori	a3,a3,0xcccd
    5bc0:	468021a0 	cvt.s.w	$f6,$f4
    5bc4:	46105202 	mul.s	$f8,$f10,$f16
    5bc8:	00000000 	nop
    5bcc:	46004082 	mul.s	$f2,$f8,$f0
    5bd0:	00000000 	nop
    5bd4:	46103282 	mul.s	$f10,$f6,$f16
    5bd8:	44061000 	mfc1	a2,$f2
    5bdc:	46005202 	mul.s	$f8,$f10,$f0
    5be0:	e7a800b4 	swc1	$f8,180(sp)
    5be4:	846d01a0 	lh	t5,416(v1)
    5be8:	c60e00c0 	lwc1	$f14,192(s0)
    5bec:	e7a200b8 	swc1	$f2,184(sp)
    5bf0:	448d2000 	mtc1	t5,$f4
    5bf4:	afa80034 	sw	t0,52(sp)
    5bf8:	0c000000 	jal	0 <func_800437F0>
    5bfc:	46802320 	cvt.s.w	$f12,$f4
    5c00:	c7a200b8 	lwc1	$f2,184(sp)
    5c04:	3c073dcc 	lui	a3,0x3dcc
    5c08:	e60000c0 	swc1	$f0,192(s0)
    5c0c:	44061000 	mfc1	a2,$f2
    5c10:	34e7cccd 	ori	a3,a3,0xcccd
    5c14:	c60c0008 	lwc1	$f12,8(s0)
    5c18:	0c000000 	jal	0 <func_800437F0>
    5c1c:	c60e00c8 	lwc1	$f14,200(s0)
    5c20:	3c014000 	lui	at,0x4000
    5c24:	e60000c8 	swc1	$f0,200(s0)
    5c28:	44816000 	mtc1	at,$f12
    5c2c:	3c073dcc 	lui	a3,0x3dcc
    5c30:	34e7cccd 	ori	a3,a3,0xcccd
    5c34:	8fa600b4 	lw	a2,180(sp)
    5c38:	0c000000 	jal	0 <func_800437F0>
    5c3c:	c60e00c4 	lwc1	$f14,196(s0)
    5c40:	c7a200b8 	lwc1	$f2,184(sp)
    5c44:	e60000c4 	swc1	$f0,196(s0)
    5c48:	3c0e0000 	lui	t6,0x0
    5c4c:	8dce0000 	lw	t6,0(t6)
    5c50:	3c010000 	lui	at,0x0
    5c54:	c4280000 	lwc1	$f8,0(at)
    5c58:	85cf0198 	lh	t7,408(t6)
    5c5c:	3c073dcc 	lui	a3,0x3dcc
    5c60:	44061000 	mfc1	a2,$f2
    5c64:	448f3000 	mtc1	t7,$f6
    5c68:	34e7cccd 	ori	a3,a3,0xcccd
    5c6c:	c60e00cc 	lwc1	$f14,204(s0)
    5c70:	468032a0 	cvt.s.w	$f10,$f6
    5c74:	46085302 	mul.s	$f12,$f10,$f8
    5c78:	0c000000 	jal	0 <func_800437F0>
    5c7c:	00000000 	nop
    5c80:	e60000cc 	swc1	$f0,204(s0)
    5c84:	3c180000 	lui	t8,0x0
    5c88:	8f180000 	lw	t8,0(t8)
    5c8c:	3c010000 	lui	at,0x0
    5c90:	c42a0000 	lwc1	$f10,0(at)
    5c94:	8709019a 	lh	t1,410(t8)
    5c98:	3c073dcc 	lui	a3,0x3dcc
    5c9c:	34e7cccd 	ori	a3,a3,0xcccd
    5ca0:	44892000 	mtc1	t1,$f4
    5ca4:	8fa600b4 	lw	a2,180(sp)
    5ca8:	c60e00d0 	lwc1	$f14,208(s0)
    5cac:	468021a0 	cvt.s.w	$f6,$f4
    5cb0:	460a3302 	mul.s	$f12,$f6,$f10
    5cb4:	0c000000 	jal	0 <func_800437F0>
    5cb8:	00000000 	nop
    5cbc:	e60000d0 	swc1	$f0,208(s0)
    5cc0:	3c190000 	lui	t9,0x0
    5cc4:	8f390000 	lw	t9,0(t9)
    5cc8:	3c010000 	lui	at,0x0
    5ccc:	c4260000 	lwc1	$f6,0(at)
    5cd0:	872a019c 	lh	t2,412(t9)
    5cd4:	3c010000 	lui	at,0x0
    5cd8:	c60a00e0 	lwc1	$f10,224(s0)
    5cdc:	448a4000 	mtc1	t2,$f8
    5ce0:	3c073dcc 	lui	a3,0x3dcc
    5ce4:	34e7cccd 	ori	a3,a3,0xcccd
    5ce8:	46804120 	cvt.s.w	$f4,$f8
    5cec:	c4280000 	lwc1	$f8,0(at)
    5cf0:	c60e00d4 	lwc1	$f14,212(s0)
    5cf4:	46062302 	mul.s	$f12,$f4,$f6
    5cf8:	00000000 	nop
    5cfc:	46085102 	mul.s	$f4,$f10,$f8
    5d00:	44062000 	mfc1	a2,$f4
    5d04:	0c000000 	jal	0 <func_800437F0>
    5d08:	00000000 	nop
    5d0c:	860b0024 	lh	t3,36(s0)
    5d10:	8fa80034 	lw	t0,52(sp)
    5d14:	e60000d4 	swc1	$f0,212(s0)
    5d18:	316c0001 	andi	t4,t3,0x1
    5d1c:	51800024 	beqzl	t4,5db0 <Camera_Parallel1+0x594>
    5d20:	a5000010 	sh	zero,16(t0)
    5d24:	87a500a6 	lh	a1,166(sp)
    5d28:	02002025 	move	a0,s0
    5d2c:	24060001 	li	a2,1
    5d30:	24a58001 	addiu	a1,a1,-32767
    5d34:	00052c00 	sll	a1,a1,0x10
    5d38:	00052c03 	sra	a1,a1,0x10
    5d3c:	0c000000 	jal	0 <func_800437F0>
    5d40:	afa80034 	sw	t0,52(sp)
    5d44:	3c013f80 	lui	at,0x3f80
    5d48:	44817000 	mtc1	at,$f14
    5d4c:	c606000c 	lwc1	$f6,12(s0)
    5d50:	3c010000 	lui	at,0x0
    5d54:	c42a0000 	lwc1	$f10,0(at)
    5d58:	46067003 	div.s	$f0,$f14,$f6
    5d5c:	3c010000 	lui	at,0x0
    5d60:	c4280000 	lwc1	$f8,0(at)
    5d64:	c60600e0 	lwc1	$f6,224(s0)
    5d68:	8fa80034 	lw	t0,52(sp)
    5d6c:	00022400 	sll	a0,v0,0x10
    5d70:	00042403 	sra	a0,a0,0x10
    5d74:	2407000f 	li	a3,15
    5d78:	85050010 	lh	a1,16(t0)
    5d7c:	460a0082 	mul.s	$f2,$f0,$f10
    5d80:	46067281 	sub.s	$f10,$f14,$f6
    5d84:	46080102 	mul.s	$f4,$f0,$f8
    5d88:	00000000 	nop
    5d8c:	460a2302 	mul.s	$f12,$f4,$f10
    5d90:	460c1200 	add.s	$f8,$f2,$f12
    5d94:	44064000 	mfc1	a2,$f8
    5d98:	0c000000 	jal	0 <func_800437F0>
    5d9c:	00000000 	nop
    5da0:	8fa80034 	lw	t0,52(sp)
    5da4:	10000002 	b	5db0 <Camera_Parallel1+0x594>
    5da8:	a5020010 	sh	v0,16(t0)
    5dac:	a5000010 	sh	zero,16(t0)
    5db0:	c6060098 	lwc1	$f6,152(s0)
    5db4:	c6040104 	lwc1	$f4,260(s0)
    5db8:	46043032 	c.eq.s	$f6,$f4
    5dbc:	00000000 	nop
    5dc0:	4503000f 	bc1tl	5e00 <Camera_Parallel1+0x5e4>
    5dc4:	c6060098 	lwc1	$f6,152(s0)
    5dc8:	8e020090 	lw	v0,144(s0)
    5dcc:	3c010000 	lui	at,0x0
    5dd0:	c42a0000 	lwc1	$f10,0(at)
    5dd4:	c448006c 	lwc1	$f8,108(v0)
    5dd8:	4608503c 	c.lt.s	$f10,$f8
    5ddc:	00000000 	nop
    5de0:	45030007 	bc1tl	5e00 <Camera_Parallel1+0x5e4>
    5de4:	c6060098 	lwc1	$f6,152(s0)
    5de8:	8c4d067c 	lw	t5,1660(v0)
    5dec:	240f0001 	li	t7,1
    5df0:	000d7280 	sll	t6,t5,0xa
    5df4:	05c30006 	bgezl	t6,5e10 <Camera_Parallel1+0x5f4>
    5df8:	a7af006a 	sh	t7,106(sp)
    5dfc:	c6060098 	lwc1	$f6,152(s0)
    5e00:	e506000c 	swc1	$f6,12(t0)
    5e04:	10000002 	b	5e10 <Camera_Parallel1+0x5f4>
    5e08:	a7a0006a 	sh	zero,106(sp)
    5e0c:	a7af006a 	sh	t7,106(sp)
    5e10:	86020024 	lh	v0,36(s0)
    5e14:	87a9006a 	lh	t1,106(sp)
    5e18:	02002025 	move	a0,s0
    5e1c:	30580080 	andi	t8,v0,0x80
    5e20:	1700000c 	bnez	t8,5e54 <Camera_Parallel1+0x638>
    5e24:	27a50098 	addiu	a1,sp,152
    5e28:	1520000a 	bnez	t1,5e54 <Camera_Parallel1+0x638>
    5e2c:	2507000c 	addiu	a3,t0,12
    5e30:	8e060000 	lw	a2,0(s0)
    5e34:	30590001 	andi	t9,v0,0x1
    5e38:	afb90010 	sw	t9,16(sp)
    5e3c:	afa80034 	sw	t0,52(sp)
    5e40:	02002025 	move	a0,s0
    5e44:	0c000000 	jal	0 <func_800437F0>
    5e48:	27a50098 	addiu	a1,sp,152
    5e4c:	10000008 	b	5e70 <Camera_Parallel1+0x654>
    5e50:	8fa80034 	lw	t0,52(sp)
    5e54:	8e060018 	lw	a2,24(s0)
    5e58:	304a0001 	andi	t2,v0,0x1
    5e5c:	afaa0010 	sw	t2,16(sp)
    5e60:	afa80034 	sw	t0,52(sp)
    5e64:	0c000000 	jal	0 <func_800437F0>
    5e68:	2507000c 	addiu	a3,t0,12
    5e6c:	8fa80034 	lw	t0,52(sp)
    5e70:	850b0018 	lh	t3,24(t0)
    5e74:	51600028 	beqzl	t3,5f18 <Camera_Parallel1+0x6fc>
    5e78:	a5000016 	sh	zero,22(t0)
    5e7c:	860c014c 	lh	t4,332(s0)
    5e80:	358d0020 	ori	t5,t4,0x20
    5e84:	a60d014c 	sh	t5,332(s0)
    5e88:	85020018 	lh	v0,24(t0)
    5e8c:	87b800a6 	lh	t8,166(sp)
    5e90:	850f0012 	lh	t7,18(t0)
    5e94:	244e0001 	addiu	t6,v0,1
    5e98:	01c20019 	multu	t6,v0
    5e9c:	01f84823 	subu	t1,t7,t8
    5ea0:	0009cc00 	sll	t9,t1,0x10
    5ea4:	00195403 	sra	t2,t9,0x10
    5ea8:	87ae00a4 	lh	t6,164(sp)
    5eac:	c7a400a0 	lwc1	$f4,160(sp)
    5eb0:	a7ae00ac 	sh	t6,172(sp)
    5eb4:	e7a400a8 	swc1	$f4,168(sp)
    5eb8:	00001812 	mflo	v1
    5ebc:	00031843 	sra	v1,v1,0x1
    5ec0:	00031c00 	sll	v1,v1,0x10
    5ec4:	00031c03 	sra	v1,v1,0x10
    5ec8:	0143001a 	div	zero,t2,v1
    5ecc:	00005812 	mflo	t3
    5ed0:	14600002 	bnez	v1,5edc <Camera_Parallel1+0x6c0>
    5ed4:	00000000 	nop
    5ed8:	0007000d 	break	0x7
    5edc:	2401ffff 	li	at,-1
    5ee0:	14610004 	bne	v1,at,5ef4 <Camera_Parallel1+0x6d8>
    5ee4:	3c018000 	lui	at,0x8000
    5ee8:	15410002 	bne	t2,at,5ef4 <Camera_Parallel1+0x6d8>
    5eec:	00000000 	nop
    5ef0:	0006000d 	break	0x6
    5ef4:	01620019 	multu	t3,v0
    5ef8:	00006012 	mflo	t4
    5efc:	030c6821 	addu	t5,t8,t4
    5f00:	a7ad00ae 	sh	t5,174(sp)
    5f04:	850f0018 	lh	t7,24(t0)
    5f08:	25e9ffff 	addiu	t1,t7,-1
    5f0c:	1000004d 	b	6044 <Camera_Parallel1+0x828>
    5f10:	a5090018 	sh	t1,24(t0)
    5f14:	a5000016 	sh	zero,22(t0)
    5f18:	3c013f80 	lui	at,0x3f80
    5f1c:	44815000 	mtc1	at,$f10
    5f20:	c60800c0 	lwc1	$f8,192(s0)
    5f24:	c60e00dc 	lwc1	$f14,220(s0)
    5f28:	c60c0004 	lwc1	$f12,4(s0)
    5f2c:	46085183 	div.s	$f6,$f10,$f8
    5f30:	afa80034 	sw	t0,52(sp)
    5f34:	3c074000 	lui	a3,0x4000
    5f38:	44063000 	mfc1	a2,$f6
    5f3c:	0c000000 	jal	0 <func_800437F0>
    5f40:	00000000 	nop
    5f44:	e60000dc 	swc1	$f0,220(s0)
    5f48:	8fa60038 	lw	a2,56(sp)
    5f4c:	8fa5003c 	lw	a1,60(sp)
    5f50:	0c000000 	jal	0 <func_800437F0>
    5f54:	27a400a8 	addiu	a0,sp,168
    5f58:	c60400dc 	lwc1	$f4,220(s0)
    5f5c:	3c063f4c 	lui	a2,0x3f4c
    5f60:	8fa80034 	lw	t0,52(sp)
    5f64:	e7a400a8 	swc1	$f4,168(sp)
    5f68:	86190024 	lh	t9,36(s0)
    5f6c:	34c6cccd 	ori	a2,a2,0xcccd
    5f70:	87a5009e 	lh	a1,158(sp)
    5f74:	332a0040 	andi	t2,t9,0x40
    5f78:	1140000b 	beqz	t2,5fa8 <Camera_Parallel1+0x78c>
    5f7c:	2407000a 	li	a3,10
    5f80:	85040012 	lh	a0,18(t0)
    5f84:	3c063f19 	lui	a2,0x3f19
    5f88:	34c6999a 	ori	a2,a2,0x999a
    5f8c:	afa80034 	sw	t0,52(sp)
    5f90:	87a5009e 	lh	a1,158(sp)
    5f94:	0c000000 	jal	0 <func_800437F0>
    5f98:	2407000a 	li	a3,10
    5f9c:	8fa80034 	lw	t0,52(sp)
    5fa0:	10000006 	b	5fbc <Camera_Parallel1+0x7a0>
    5fa4:	a7a200ae 	sh	v0,174(sp)
    5fa8:	85040012 	lh	a0,18(t0)
    5fac:	0c000000 	jal	0 <func_800437F0>
    5fb0:	afa80034 	sw	t0,52(sp)
    5fb4:	8fa80034 	lw	t0,52(sp)
    5fb8:	a7a200ae 	sh	v0,174(sp)
    5fbc:	860b0024 	lh	t3,36(s0)
    5fc0:	3c013f80 	lui	at,0x3f80
    5fc4:	44815000 	mtc1	at,$f10
    5fc8:	31780001 	andi	t8,t3,0x1
    5fcc:	53000008 	beqzl	t8,5ff0 <Camera_Parallel1+0x7d4>
    5fd0:	85040014 	lh	a0,20(t0)
    5fd4:	850c0014 	lh	t4,20(t0)
    5fd8:	850d0010 	lh	t5,16(t0)
    5fdc:	018d2023 	subu	a0,t4,t5
    5fe0:	00042400 	sll	a0,a0,0x10
    5fe4:	10000002 	b	5ff0 <Camera_Parallel1+0x7d4>
    5fe8:	00042403 	sra	a0,a0,0x10
    5fec:	85040014 	lh	a0,20(t0)
    5ff0:	c60800c4 	lwc1	$f8,196(s0)
    5ff4:	87a5009c 	lh	a1,156(sp)
    5ff8:	24070004 	li	a3,4
    5ffc:	46085183 	div.s	$f6,$f10,$f8
    6000:	44063000 	mfc1	a2,$f6
    6004:	0c000000 	jal	0 <func_800437F0>
    6008:	00000000 	nop
    600c:	3c030000 	lui	v1,0x0
    6010:	8c630000 	lw	v1,0(v1)
    6014:	a7a200ac 	sh	v0,172(sp)
    6018:	8464019e 	lh	a0,414(v1)
    601c:	0082082a 	slt	at,a0,v0
    6020:	50200003 	beqzl	at,6030 <Camera_Parallel1+0x814>
    6024:	846201d8 	lh	v0,472(v1)
    6028:	a7a400ac 	sh	a0,172(sp)
    602c:	846201d8 	lh	v0,472(v1)
    6030:	87ae00ac 	lh	t6,172(sp)
    6034:	01c2082a 	slt	at,t6,v0
    6038:	50200003 	beqzl	at,6048 <Camera_Parallel1+0x82c>
    603c:	8fa40038 	lw	a0,56(sp)
    6040:	a7a200ac 	sh	v0,172(sp)
    6044:	8fa40038 	lw	a0,56(sp)
    6048:	8fa5003c 	lw	a1,60(sp)
    604c:	0c000000 	jal	0 <func_800437F0>
    6050:	27a600a8 	addiu	a2,sp,168
    6054:	860f0140 	lh	t7,320(s0)
    6058:	24010007 	li	at,7
    605c:	8fa90038 	lw	t1,56(sp)
    6060:	55e10032 	bnel	t7,at,612c <Camera_Parallel1+0x910>
    6064:	c60c0010 	lwc1	$f12,16(s0)
    6068:	8d2a0000 	lw	t2,0(t1)
    606c:	27a6006c 	addiu	a2,sp,108
    6070:	3c180001 	lui	t8,0x1
    6074:	acca0000 	sw	t2,0(a2)
    6078:	8d390004 	lw	t9,4(t1)
    607c:	02002025 	move	a0,s0
    6080:	acd90004 	sw	t9,4(a2)
    6084:	8d2a0008 	lw	t2,8(t1)
    6088:	acca0008 	sw	t2,8(a2)
    608c:	8e0b008c 	lw	t3,140(s0)
    6090:	030bc021 	addu	t8,t8,t3
    6094:	93180a39 	lbu	t8,2617(t8)
    6098:	13000006 	beqz	t8,60b4 <Camera_Parallel1+0x898>
    609c:	00000000 	nop
    60a0:	860c0024 	lh	t4,36(s0)
    60a4:	8fa5003c 	lw	a1,60(sp)
    60a8:	318d0010 	andi	t5,t4,0x10
    60ac:	11a0000c 	beqz	t5,60e0 <Camera_Parallel1+0x8c4>
    60b0:	00000000 	nop
    60b4:	0c000000 	jal	0 <func_800437F0>
    60b8:	8fa5003c 	lw	a1,60(sp)
    60bc:	27af006c 	addiu	t7,sp,108
    60c0:	8df90000 	lw	t9,0(t7)
    60c4:	8fae0040 	lw	t6,64(sp)
    60c8:	add90000 	sw	t9,0(t6)
    60cc:	8de90004 	lw	t1,4(t7)
    60d0:	adc90004 	sw	t1,4(t6)
    60d4:	8df90008 	lw	t9,8(t7)
    60d8:	10000013 	b	6128 <Camera_Parallel1+0x90c>
    60dc:	add90008 	sw	t9,8(t6)
    60e0:	0c000000 	jal	0 <func_800437F0>
    60e4:	02002025 	move	a0,s0
    60e8:	27aa006c 	addiu	t2,sp,108
    60ec:	8fa50040 	lw	a1,64(sp)
    60f0:	8d580000 	lw	t8,0(t2)
    60f4:	27a400a8 	addiu	a0,sp,168
    60f8:	acb80000 	sw	t8,0(a1)
    60fc:	8d4b0004 	lw	t3,4(t2)
    6100:	acab0004 	sw	t3,4(a1)
    6104:	8d580008 	lw	t8,8(t2)
    6108:	acb80008 	sw	t8,8(a1)
    610c:	0c000000 	jal	0 <func_800437F0>
    6110:	8fa6003c 	lw	a2,60(sp)
    6114:	87ac00ac 	lh	t4,172(sp)
    6118:	a60c0134 	sh	t4,308(s0)
    611c:	87ad00ae 	lh	t5,174(sp)
    6120:	a6000138 	sh	zero,312(s0)
    6124:	a60d0136 	sh	t5,310(s0)
    6128:	c60c0010 	lwc1	$f12,16(s0)
    612c:	c60e00fc 	lwc1	$f14,252(s0)
    6130:	8e0600d4 	lw	a2,212(s0)
    6134:	0c000000 	jal	0 <func_800437F0>
    6138:	3c073f80 	lui	a3,0x3f80
    613c:	e60000fc 	swc1	$f0,252(s0)
    6140:	00002025 	move	a0,zero
    6144:	8605015a 	lh	a1,346(s0)
    6148:	3c063f00 	lui	a2,0x3f00
    614c:	0c000000 	jal	0 <func_800437F0>
    6150:	2407000a 	li	a3,10
    6154:	a602015a 	sh	v0,346(s0)
    6158:	87ae006a 	lh	t6,106(sp)
    615c:	51c00004 	beqzl	t6,6170 <Camera_Parallel1+0x954>
    6160:	c6000014 	lwc1	$f0,20(s0)
    6164:	10000002 	b	6170 <Camera_Parallel1+0x954>
    6168:	c600001c 	lwc1	$f0,28(s0)
    616c:	c6000014 	lwc1	$f0,20(s0)
    6170:	44050000 	mfc1	a1,$f0
    6174:	0c000000 	jal	0 <func_800437F0>
    6178:	02002025 	move	a0,s0
    617c:	e6000100 	swc1	$f0,256(s0)
    6180:	8fbf0024 	lw	ra,36(sp)
    6184:	8fb00020 	lw	s0,32(sp)
    6188:	27bd00c8 	addiu	sp,sp,200
    618c:	03e00008 	jr	ra
    6190:	00000000 	nop

00006194 <Camera_Parallel2>:
    6194:	27bdffe8 	addiu	sp,sp,-24
    6198:	afbf0014 	sw	ra,20(sp)
    619c:	0c000000 	jal	0 <func_800437F0>
    61a0:	00000000 	nop
    61a4:	8fbf0014 	lw	ra,20(sp)
    61a8:	27bd0018 	addiu	sp,sp,24
    61ac:	03e00008 	jr	ra
    61b0:	00000000 	nop

000061b4 <Camera_Parallel3>:
    61b4:	848e0142 	lh	t6,322(a0)
    61b8:	3c180000 	lui	t8,0x0
    61bc:	84990144 	lh	t9,324(a0)
    61c0:	000e78c0 	sll	t7,t6,0x3
    61c4:	030fc021 	addu	t8,t8,t7
    61c8:	8f180004 	lw	t8,4(t8)
    61cc:	001940c0 	sll	t0,t9,0x3
    61d0:	3c010000 	lui	at,0x0
    61d4:	03084821 	addu	t1,t8,t0
    61d8:	8d220004 	lw	v0,4(t1)
    61dc:	84430000 	lh	v1,0(v0)
    61e0:	306a0001 	andi	t2,v1,0x1
    61e4:	11400004 	beqz	t2,61f8 <Camera_Parallel3+0x44>
    61e8:	ac230000 	sw	v1,0(at)
    61ec:	848b014c 	lh	t3,332(a0)
    61f0:	356c0400 	ori	t4,t3,0x400
    61f4:	a48c014c 	sh	t4,332(a0)
    61f8:	306d0002 	andi	t5,v1,0x2
    61fc:	11a00004 	beqz	t5,6210 <Camera_Parallel3+0x5c>
    6200:	00000000 	nop
    6204:	848e014c 	lh	t6,332(a0)
    6208:	35cf0010 	ori	t7,t6,0x10
    620c:	a48f014c 	sh	t7,332(a0)
    6210:	03e00008 	jr	ra
    6214:	00000000 	nop

00006218 <Camera_Parallel4>:
    6218:	27bdffe8 	addiu	sp,sp,-24
    621c:	afbf0014 	sw	ra,20(sp)
    6220:	0c000000 	jal	0 <func_800437F0>
    6224:	00000000 	nop
    6228:	8fbf0014 	lw	ra,20(sp)
    622c:	27bd0018 	addiu	sp,sp,24
    6230:	03e00008 	jr	ra
    6234:	00000000 	nop

00006238 <Camera_Parallel0>:
    6238:	27bdffe8 	addiu	sp,sp,-24
    623c:	afbf0014 	sw	ra,20(sp)
    6240:	0c000000 	jal	0 <func_800437F0>
    6244:	00000000 	nop
    6248:	8fbf0014 	lw	ra,20(sp)
    624c:	27bd0018 	addiu	sp,sp,24
    6250:	03e00008 	jr	ra
    6254:	00000000 	nop

00006258 <Camera_Jump1>:
    6258:	27bdff48 	addiu	sp,sp,-184
    625c:	afb0001c 	sw	s0,28(sp)
    6260:	00808025 	move	s0,a0
    6264:	afbf0024 	sw	ra,36(sp)
    6268:	afb10020 	sw	s1,32(sp)
    626c:	0c000000 	jal	0 <func_800437F0>
    6270:	8c840090 	lw	a0,144(a0)
    6274:	8603015e 	lh	v1,350(s0)
    6278:	10600008 	beqz	v1,629c <Camera_Jump1+0x44>
    627c:	2401000a 	li	at,10
    6280:	10610006 	beq	v1,at,629c <Camera_Jump1+0x44>
    6284:	24010014 	li	at,20
    6288:	10610004 	beq	v1,at,629c <Camera_Jump1+0x44>
    628c:	3c0e0000 	lui	t6,0x0
    6290:	8dce0000 	lw	t6,0(t6)
    6294:	85c30314 	lh	v1,788(t6)
    6298:	10600052 	beqz	v1,63e4 <Camera_Jump1+0x18c>
    629c:	3c010000 	lui	at,0x0
    62a0:	c42e0000 	lwc1	$f14,0(at)
    62a4:	3c013f80 	lui	at,0x3f80
    62a8:	44814000 	mtc1	at,$f8
    62ac:	3c014288 	lui	at,0x4288
    62b0:	3c0b0000 	lui	t3,0x0
    62b4:	8d6b0000 	lw	t3,0(t3)
    62b8:	44818000 	mtc1	at,$f16
    62bc:	860f0142 	lh	t7,322(s0)
    62c0:	856c01f0 	lh	t4,496(t3)
    62c4:	46008483 	div.s	$f18,$f16,$f0
    62c8:	3c190000 	lui	t9,0x0
    62cc:	448c2000 	mtc1	t4,$f4
    62d0:	000fc0c0 	sll	t8,t7,0x3
    62d4:	86080144 	lh	t0,324(s0)
    62d8:	468021a0 	cvt.s.w	$f6,$f4
    62dc:	0338c821 	addu	t9,t9,t8
    62e0:	8f390004 	lw	t9,4(t9)
    62e4:	000848c0 	sll	t1,t0,0x3
    62e8:	3c0b0000 	lui	t3,0x0
    62ec:	03295021 	addu	t2,t9,t1
    62f0:	8d420004 	lw	v0,4(t2)
    62f4:	844d0000 	lh	t5,0(v0)
    62f8:	2442001c 	addiu	v0,v0,28
    62fc:	460e3302 	mul.s	$f12,$f6,$f14
    6300:	448d3000 	mtc1	t5,$f6
    6304:	460c4280 	add.s	$f10,$f8,$f12
    6308:	46126102 	mul.s	$f4,$f12,$f18
    630c:	46803220 	cvt.s.w	$f8,$f6
    6310:	46045081 	sub.s	$f2,$f10,$f4
    6314:	460e4402 	mul.s	$f16,$f8,$f14
    6318:	00000000 	nop
    631c:	46008482 	mul.s	$f18,$f16,$f0
    6320:	00000000 	nop
    6324:	46029282 	mul.s	$f10,$f18,$f2
    6328:	e60a0000 	swc1	$f10,0(s0)
    632c:	844effe8 	lh	t6,-24(v0)
    6330:	448e2000 	mtc1	t6,$f4
    6334:	00000000 	nop
    6338:	468021a0 	cvt.s.w	$f6,$f4
    633c:	460e3202 	mul.s	$f8,$f6,$f14
    6340:	00000000 	nop
    6344:	46004402 	mul.s	$f16,$f8,$f0
    6348:	00000000 	nop
    634c:	46028482 	mul.s	$f18,$f16,$f2
    6350:	e6120004 	swc1	$f18,4(s0)
    6354:	844fffec 	lh	t7,-20(v0)
    6358:	448f5000 	mtc1	t7,$f10
    635c:	00000000 	nop
    6360:	46805120 	cvt.s.w	$f4,$f10
    6364:	460e2182 	mul.s	$f6,$f4,$f14
    6368:	00000000 	nop
    636c:	46003202 	mul.s	$f8,$f6,$f0
    6370:	00000000 	nop
    6374:	46024402 	mul.s	$f16,$f8,$f2
    6378:	e6100008 	swc1	$f16,8(s0)
    637c:	8458fff0 	lh	t8,-16(v0)
    6380:	44989000 	mtc1	t8,$f18
    6384:	00000000 	nop
    6388:	468092a0 	cvt.s.w	$f10,$f18
    638c:	e60a000c 	swc1	$f10,12(s0)
    6390:	8448fff4 	lh	t0,-12(v0)
    6394:	44882000 	mtc1	t0,$f4
    6398:	00000000 	nop
    639c:	468021a0 	cvt.s.w	$f6,$f4
    63a0:	460e3202 	mul.s	$f8,$f6,$f14
    63a4:	e6080010 	swc1	$f8,16(s0)
    63a8:	8459fff8 	lh	t9,-8(v0)
    63ac:	44998000 	mtc1	t9,$f16
    63b0:	00000000 	nop
    63b4:	468084a0 	cvt.s.w	$f18,$f16
    63b8:	e6120014 	swc1	$f18,20(s0)
    63bc:	8449fffc 	lh	t1,-4(v0)
    63c0:	44895000 	mtc1	t1,$f10
    63c4:	00000000 	nop
    63c8:	46805120 	cvt.s.w	$f4,$f10
    63cc:	460e2182 	mul.s	$f6,$f4,$f14
    63d0:	e6060018 	swc1	$f6,24(s0)
    63d4:	844a0000 	lh	t2,0(v0)
    63d8:	a60a001c 	sh	t2,28(s0)
    63dc:	8d6b0000 	lw	t3,0(t3)
    63e0:	85630314 	lh	v1,788(t3)
    63e4:	50600004 	beqzl	v1,63f8 <Camera_Jump1+0x1a0>
    63e8:	27a40060 	addiu	a0,sp,96
    63ec:	0c000000 	jal	0 <func_800437F0>
    63f0:	02002025 	move	a0,s0
    63f4:	27a40060 	addiu	a0,sp,96
    63f8:	0c000000 	jal	0 <func_800437F0>
    63fc:	8e050090 	lw	a1,144(s0)
    6400:	26050050 	addiu	a1,s0,80
    6404:	2606005c 	addiu	a2,s0,92
    6408:	afa60040 	sw	a2,64(sp)
    640c:	afa5003c 	sw	a1,60(sp)
    6410:	0c000000 	jal	0 <func_800437F0>
    6414:	27a40090 	addiu	a0,sp,144
    6418:	26060074 	addiu	a2,s0,116
    641c:	afa60038 	sw	a2,56(sp)
    6420:	27a40088 	addiu	a0,sp,136
    6424:	0c000000 	jal	0 <func_800437F0>
    6428:	8fa5003c 	lw	a1,60(sp)
    642c:	860c001c 	lh	t4,28(s0)
    6430:	3c010000 	lui	at,0x0
    6434:	ac2c0000 	sw	t4,0(at)
    6438:	8603015e 	lh	v1,350(s0)
    643c:	10600004 	beqz	v1,6450 <Camera_Jump1+0x1f8>
    6440:	2401000a 	li	at,10
    6444:	10610002 	beq	v1,at,6450 <Camera_Jump1+0x1f8>
    6448:	24010014 	li	at,20
    644c:	1461001b 	bne	v1,at,64bc <Camera_Jump1+0x264>
    6450:	26110020 	addiu	s1,s0,32
    6454:	a6200018 	sh	zero,24(s1)
    6458:	862d0018 	lh	t5,24(s1)
    645c:	240e00c8 	li	t6,200
    6460:	ae20000c 	sw	zero,12(s1)
    6464:	a6200024 	sh	zero,36(s1)
    6468:	a62e0026 	sh	t6,38(s1)
    646c:	a620001a 	sh	zero,26(s1)
    6470:	a62d0016 	sh	t5,22(s1)
    6474:	c608000c 	lwc1	$f8,12(s0)
    6478:	3c010000 	lui	at,0x0
    647c:	e6280010 	swc1	$f8,16(s1)
    6480:	c61200f4 	lwc1	$f18,244(s0)
    6484:	c6100098 	lwc1	$f16,152(s0)
    6488:	46128281 	sub.s	$f10,$f16,$f18
    648c:	e62a001c 	swc1	$f10,28(s1)
    6490:	c7a40090 	lwc1	$f4,144(sp)
    6494:	e6240020 	swc1	$f4,32(s1)
    6498:	c60600e8 	lwc1	$f6,232(s0)
    649c:	c60800f4 	lwc1	$f8,244(s0)
    64a0:	860f015e 	lh	t7,350(s0)
    64a4:	46083401 	sub.s	$f16,$f6,$f8
    64a8:	25f80001 	addiu	t8,t7,1
    64ac:	e61000e8 	swc1	$f16,232(s0)
    64b0:	c4320000 	lwc1	$f18,0(at)
    64b4:	a618015e 	sh	t8,350(s0)
    64b8:	e61200cc 	swc1	$f18,204(s0)
    64bc:	26110020 	addiu	s1,s0,32
    64c0:	8622001a 	lh	v0,26(s1)
    64c4:	1040002d 	beqz	v0,657c <Camera_Jump1+0x324>
    64c8:	3c080000 	lui	t0,0x0
    64cc:	8d080000 	lw	t0,0(t0)
    64d0:	44822000 	mtc1	v0,$f4
    64d4:	3c010000 	lui	at,0x0
    64d8:	851901c8 	lh	t9,456(t0)
    64dc:	c4320000 	lwc1	$f18,0(at)
    64e0:	468021a0 	cvt.s.w	$f6,$f4
    64e4:	44994000 	mtc1	t9,$f8
    64e8:	c60a000c 	lwc1	$f10,12(s0)
    64ec:	3c073dcc 	lui	a3,0x3dcc
    64f0:	34e7cccd 	ori	a3,a3,0xcccd
    64f4:	46804420 	cvt.s.w	$f16,$f8
    64f8:	c60e00c8 	lwc1	$f14,200(s0)
    64fc:	46065300 	add.s	$f12,$f10,$f6
    6500:	46128102 	mul.s	$f4,$f16,$f18
    6504:	44062000 	mfc1	a2,$f4
    6508:	0c000000 	jal	0 <func_800437F0>
    650c:	00000000 	nop
    6510:	e60000c8 	swc1	$f0,200(s0)
    6514:	3c020000 	lui	v0,0x0
    6518:	8c420000 	lw	v0,0(v0)
    651c:	862a001a 	lh	t2,26(s1)
    6520:	3c010000 	lui	at,0x0
    6524:	844b01c8 	lh	t3,456(v0)
    6528:	844901a2 	lh	t1,418(v0)
    652c:	448a4000 	mtc1	t2,$f8
    6530:	448b9000 	mtc1	t3,$f18
    6534:	44895000 	mtc1	t1,$f10
    6538:	46804420 	cvt.s.w	$f16,$f8
    653c:	3c073dcc 	lui	a3,0x3dcc
    6540:	34e7cccd 	ori	a3,a3,0xcccd
    6544:	c60e00c4 	lwc1	$f14,196(s0)
    6548:	46809120 	cvt.s.w	$f4,$f18
    654c:	468051a0 	cvt.s.w	$f6,$f10
    6550:	c42a0000 	lwc1	$f10,0(at)
    6554:	460a2202 	mul.s	$f8,$f4,$f10
    6558:	46103300 	add.s	$f12,$f6,$f16
    655c:	44064000 	mfc1	a2,$f8
    6560:	0c000000 	jal	0 <func_800437F0>
    6564:	00000000 	nop
    6568:	e60000c4 	swc1	$f0,196(s0)
    656c:	862c001a 	lh	t4,26(s1)
    6570:	258dffff 	addiu	t5,t4,-1
    6574:	10000023 	b	6604 <Camera_Jump1+0x3ac>
    6578:	a62d001a 	sh	t5,26(s1)
    657c:	3c0e0000 	lui	t6,0x0
    6580:	8dce0000 	lw	t6,0(t6)
    6584:	3c010000 	lui	at,0x0
    6588:	c4320000 	lwc1	$f18,0(at)
    658c:	85cf01c8 	lh	t7,456(t6)
    6590:	3c073dcc 	lui	a3,0x3dcc
    6594:	34e7cccd 	ori	a3,a3,0xcccd
    6598:	448f3000 	mtc1	t7,$f6
    659c:	c60c000c 	lwc1	$f12,12(s0)
    65a0:	c60e00c8 	lwc1	$f14,200(s0)
    65a4:	46803420 	cvt.s.w	$f16,$f6
    65a8:	46128102 	mul.s	$f4,$f16,$f18
    65ac:	44062000 	mfc1	a2,$f4
    65b0:	0c000000 	jal	0 <func_800437F0>
    65b4:	00000000 	nop
    65b8:	e60000c8 	swc1	$f0,200(s0)
    65bc:	3c020000 	lui	v0,0x0
    65c0:	8c420000 	lw	v0,0(v0)
    65c4:	3c010000 	lui	at,0x0
    65c8:	c4300000 	lwc1	$f16,0(at)
    65cc:	844801c8 	lh	t0,456(v0)
    65d0:	845801a2 	lh	t8,418(v0)
    65d4:	3c073dcc 	lui	a3,0x3dcc
    65d8:	44884000 	mtc1	t0,$f8
    65dc:	44985000 	mtc1	t8,$f10
    65e0:	34e7cccd 	ori	a3,a3,0xcccd
    65e4:	468041a0 	cvt.s.w	$f6,$f8
    65e8:	c60e00c4 	lwc1	$f14,196(s0)
    65ec:	46805320 	cvt.s.w	$f12,$f10
    65f0:	46103482 	mul.s	$f18,$f6,$f16
    65f4:	44069000 	mfc1	a2,$f18
    65f8:	0c000000 	jal	0 <func_800437F0>
    65fc:	00000000 	nop
    6600:	e60000c4 	swc1	$f0,196(s0)
    6604:	3c020000 	lui	v0,0x0
    6608:	8c420000 	lw	v0,0(v0)
    660c:	3c010000 	lui	at,0x0
    6610:	c4200000 	lwc1	$f0,0(at)
    6614:	84590198 	lh	t9,408(v0)
    6618:	844901c6 	lh	t1,454(v0)
    661c:	3c073dcc 	lui	a3,0x3dcc
    6620:	44992000 	mtc1	t9,$f4
    6624:	44894000 	mtc1	t1,$f8
    6628:	34e7cccd 	ori	a3,a3,0xcccd
    662c:	468022a0 	cvt.s.w	$f10,$f4
    6630:	c60e00cc 	lwc1	$f14,204(s0)
    6634:	468041a0 	cvt.s.w	$f6,$f8
    6638:	46005302 	mul.s	$f12,$f10,$f0
    663c:	00000000 	nop
    6640:	46003402 	mul.s	$f16,$f6,$f0
    6644:	44068000 	mfc1	a2,$f16
    6648:	0c000000 	jal	0 <func_800437F0>
    664c:	00000000 	nop
    6650:	3c010000 	lui	at,0x0
    6654:	c4220000 	lwc1	$f2,0(at)
    6658:	e60000cc 	swc1	$f0,204(s0)
    665c:	3c020000 	lui	v0,0x0
    6660:	8c420000 	lw	v0,0(v0)
    6664:	3c073dcc 	lui	a3,0x3dcc
    6668:	34e7cccd 	ori	a3,a3,0xcccd
    666c:	844a019a 	lh	t2,410(v0)
    6670:	844b01c8 	lh	t3,456(v0)
    6674:	c60e00d0 	lwc1	$f14,208(s0)
    6678:	448a9000 	mtc1	t2,$f18
    667c:	448b5000 	mtc1	t3,$f10
    6680:	46809120 	cvt.s.w	$f4,$f18
    6684:	46805220 	cvt.s.w	$f8,$f10
    6688:	46022302 	mul.s	$f12,$f4,$f2
    668c:	00000000 	nop
    6690:	46024182 	mul.s	$f6,$f8,$f2
    6694:	44063000 	mfc1	a2,$f6
    6698:	0c000000 	jal	0 <func_800437F0>
    669c:	00000000 	nop
    66a0:	e60000d0 	swc1	$f0,208(s0)
    66a4:	3c0c0000 	lui	t4,0x0
    66a8:	8d8c0000 	lw	t4,0(t4)
    66ac:	3c010000 	lui	at,0x0
    66b0:	c4240000 	lwc1	$f4,0(at)
    66b4:	858d019c 	lh	t5,412(t4)
    66b8:	3c063d4c 	lui	a2,0x3d4c
    66bc:	3c073dcc 	lui	a3,0x3dcc
    66c0:	448d8000 	mtc1	t5,$f16
    66c4:	34e7cccd 	ori	a3,a3,0xcccd
    66c8:	34c6cccd 	ori	a2,a2,0xcccd
    66cc:	468084a0 	cvt.s.w	$f18,$f16
    66d0:	46000386 	mov.s	$f14,$f0
    66d4:	46049302 	mul.s	$f12,$f18,$f4
    66d8:	0c000000 	jal	0 <func_800437F0>
    66dc:	00000000 	nop
    66e0:	e60000d4 	swc1	$f0,212(s0)
    66e4:	8e060000 	lw	a2,0(s0)
    66e8:	afa00010 	sw	zero,16(sp)
    66ec:	02002025 	move	a0,s0
    66f0:	27a50088 	addiu	a1,sp,136
    66f4:	0c000000 	jal	0 <func_800437F0>
    66f8:	2627001c 	addiu	a3,s1,28
    66fc:	27af0090 	addiu	t7,sp,144
    6700:	8de80000 	lw	t0,0(t7)
    6704:	27ae0080 	addiu	t6,sp,128
    6708:	27a40078 	addiu	a0,sp,120
    670c:	adc80000 	sw	t0,0(t6)
    6710:	8df80004 	lw	t8,4(t7)
    6714:	add80004 	sw	t8,4(t6)
    6718:	8fa60040 	lw	a2,64(sp)
    671c:	0c000000 	jal	0 <func_800437F0>
    6720:	8fa5003c 	lw	a1,60(sp)
    6724:	3c190000 	lui	t9,0x0
    6728:	8f390000 	lw	t9,0(t9)
    672c:	3c010000 	lui	at,0x0
    6730:	c4260000 	lwc1	$f6,0(at)
    6734:	872901ce 	lh	t1,462(t9)
    6738:	c7ac0078 	lwc1	$f12,120(sp)
    673c:	c7ae0090 	lwc1	$f14,144(sp)
    6740:	44895000 	mtc1	t1,$f10
    6744:	3c073f80 	lui	a3,0x3f80
    6748:	46805220 	cvt.s.w	$f8,$f10
    674c:	46064402 	mul.s	$f16,$f8,$f6
    6750:	44068000 	mfc1	a2,$f16
    6754:	0c000000 	jal	0 <func_800437F0>
    6758:	00000000 	nop
    675c:	3c0a0000 	lui	t2,0x0
    6760:	8d4a0000 	lw	t2,0(t2)
    6764:	e7a00080 	swc1	$f0,128(sp)
    6768:	3c010000 	lui	at,0x0
    676c:	854b01ce 	lh	t3,462(t2)
    6770:	c42a0000 	lwc1	$f10,0(at)
    6774:	87a4007c 	lh	a0,124(sp)
    6778:	448b9000 	mtc1	t3,$f18
    677c:	87a50094 	lh	a1,148(sp)
    6780:	2407000a 	li	a3,10
    6784:	46809120 	cvt.s.w	$f4,$f18
    6788:	460a2202 	mul.s	$f8,$f4,$f10
    678c:	44064000 	mfc1	a2,$f8
    6790:	0c000000 	jal	0 <func_800437F0>
    6794:	00000000 	nop
    6798:	a7a20084 	sh	v0,132(sp)
    679c:	862c0018 	lh	t4,24(s1)
    67a0:	3c013f80 	lui	at,0x3f80
    67a4:	02002025 	move	a0,s0
    67a8:	11800017 	beqz	t4,6808 <Camera_Jump1+0x5b0>
    67ac:	87a5008e 	lh	a1,142(sp)
    67b0:	44813000 	mtc1	at,$f6
    67b4:	c61000c8 	lwc1	$f16,200(s0)
    67b8:	86240016 	lh	a0,22(s1)
    67bc:	87a5008e 	lh	a1,142(sp)
    67c0:	46103483 	div.s	$f18,$f6,$f16
    67c4:	2407000a 	li	a3,10
    67c8:	44069000 	mfc1	a2,$f18
    67cc:	0c000000 	jal	0 <func_800437F0>
    67d0:	00000000 	nop
    67d4:	a7a20086 	sh	v0,134(sp)
    67d8:	3c013f80 	lui	at,0x3f80
    67dc:	44812000 	mtc1	at,$f4
    67e0:	c60a00c8 	lwc1	$f10,200(s0)
    67e4:	86240014 	lh	a0,20(s1)
    67e8:	87a5008c 	lh	a1,140(sp)
    67ec:	460a2203 	div.s	$f8,$f4,$f10
    67f0:	2407000a 	li	a3,10
    67f4:	44064000 	mfc1	a2,$f8
    67f8:	0c000000 	jal	0 <func_800437F0>
    67fc:	00000000 	nop
    6800:	10000007 	b	6820 <Camera_Jump1+0x5c8>
    6804:	a7a20084 	sh	v0,132(sp)
    6808:	44803000 	mtc1	zero,$f6
    680c:	860600a2 	lh	a2,162(s0)
    6810:	8e070010 	lw	a3,16(s0)
    6814:	0c000000 	jal	0 <func_800437F0>
    6818:	e7a60010 	swc1	$f6,16(sp)
    681c:	a7a20086 	sh	v0,134(sp)
    6820:	c6000004 	lwc1	$f0,4(s0)
    6824:	c7b00080 	lwc1	$f16,128(sp)
    6828:	c7b20080 	lwc1	$f18,128(sp)
    682c:	3c020000 	lui	v0,0x0
    6830:	4600803c 	c.lt.s	$f16,$f0
    6834:	27a40098 	addiu	a0,sp,152
    6838:	27a60080 	addiu	a2,sp,128
    683c:	45020004 	bc1fl	6850 <Camera_Jump1+0x5f8>
    6840:	c6000008 	lwc1	$f0,8(s0)
    6844:	10000007 	b	6864 <Camera_Jump1+0x60c>
    6848:	e7a00080 	swc1	$f0,128(sp)
    684c:	c6000008 	lwc1	$f0,8(s0)
    6850:	4612003c 	c.lt.s	$f0,$f18
    6854:	00000000 	nop
    6858:	45000002 	bc1f	6864 <Camera_Jump1+0x60c>
    685c:	00000000 	nop
    6860:	e7a00080 	swc1	$f0,128(sp)
    6864:	8c420000 	lw	v0,0(v0)
    6868:	87ad0084 	lh	t5,132(sp)
    686c:	87ae0084 	lh	t6,132(sp)
    6870:	8443019e 	lh	v1,414(v0)
    6874:	006d082a 	slt	at,v1,t5
    6878:	50200004 	beqzl	at,688c <Camera_Jump1+0x634>
    687c:	844301da 	lh	v1,474(v0)
    6880:	10000006 	b	689c <Camera_Jump1+0x644>
    6884:	a7a30084 	sh	v1,132(sp)
    6888:	844301da 	lh	v1,474(v0)
    688c:	01c3082a 	slt	at,t6,v1
    6890:	10200002 	beqz	at,689c <Camera_Jump1+0x644>
    6894:	00000000 	nop
    6898:	a7a30084 	sh	v1,132(sp)
    689c:	0c000000 	jal	0 <func_800437F0>
    68a0:	8fa5003c 	lw	a1,60(sp)
    68a4:	8fa30038 	lw	v1,56(sp)
    68a8:	c7a40098 	lwc1	$f4,152(sp)
    68ac:	3c0f0000 	lui	t7,0x0
    68b0:	3c010000 	lui	at,0x0
    68b4:	e4640000 	swc1	$f4,0(v1)
    68b8:	c7aa00a0 	lwc1	$f10,160(sp)
    68bc:	c4600004 	lwc1	$f0,4(v1)
    68c0:	e46a0008 	swc1	$f10,8(v1)
    68c4:	8def0000 	lw	t7,0(t7)
    68c8:	c4300000 	lwc1	$f16,0(at)
    68cc:	c7a4009c 	lwc1	$f4,156(sp)
    68d0:	85f801d2 	lh	t8,466(t7)
    68d4:	24010007 	li	at,7
    68d8:	46002281 	sub.s	$f10,$f4,$f0
    68dc:	44984000 	mtc1	t8,$f8
    68e0:	00000000 	nop
    68e4:	468041a0 	cvt.s.w	$f6,$f8
    68e8:	46103482 	mul.s	$f18,$f6,$f16
    68ec:	00000000 	nop
    68f0:	46125202 	mul.s	$f8,$f10,$f18
    68f4:	46080180 	add.s	$f6,$f0,$f8
    68f8:	e4660004 	swc1	$f6,4(v1)
    68fc:	86080140 	lh	t0,320(s0)
    6900:	15010037 	bne	t0,at,69e0 <Camera_Jump1+0x788>
    6904:	00000000 	nop
    6908:	8619001c 	lh	t9,28(s0)
    690c:	02002025 	move	a0,s0
    6910:	27a50080 	addiu	a1,sp,128
    6914:	33290010 	andi	t1,t9,0x10
    6918:	15200031 	bnez	t1,69e0 <Camera_Jump1+0x788>
    691c:	27aa00a4 	addiu	t2,sp,164
    6920:	8e060004 	lw	a2,4(s0)
    6924:	8e07000c 	lw	a3,12(s0)
    6928:	afb10014 	sw	s1,20(sp)
    692c:	0c000000 	jal	0 <func_800437F0>
    6930:	afaa0010 	sw	t2,16(sp)
    6934:	860b001c 	lh	t3,28(s0)
    6938:	87ad0094 	lh	t5,148(sp)
    693c:	27a40080 	addiu	a0,sp,128
    6940:	316c0004 	andi	t4,t3,0x4
    6944:	11800008 	beqz	t4,6968 <Camera_Jump1+0x710>
    6948:	8fa50040 	lw	a1,64(sp)
    694c:	000d7023 	negu	t6,t5
    6950:	a60e0134 	sh	t6,308(s0)
    6954:	87af0096 	lh	t7,150(sp)
    6958:	a6000138 	sh	zero,312(s0)
    695c:	25f88001 	addiu	t8,t7,-32767
    6960:	10000008 	b	6984 <Camera_Jump1+0x72c>
    6964:	a6180136 	sh	t8,310(s0)
    6968:	0c000000 	jal	0 <func_800437F0>
    696c:	8fa6003c 	lw	a2,60(sp)
    6970:	87a80084 	lh	t0,132(sp)
    6974:	a6080134 	sh	t0,308(s0)
    6978:	87b90086 	lh	t9,134(sp)
    697c:	a6000138 	sh	zero,312(s0)
    6980:	a6190136 	sh	t9,310(s0)
    6984:	86290018 	lh	t1,24(s1)
    6988:	3c010000 	lui	at,0x0
    698c:	c7a400a4 	lwc1	$f4,164(sp)
    6990:	51200020 	beqzl	t1,6a14 <Camera_Jump1+0x7bc>
    6994:	8fa4003c 	lw	a0,60(sp)
    6998:	c4300000 	lwc1	$f16,0(at)
    699c:	3c013f80 	lui	at,0x3f80
    69a0:	44819000 	mtc1	at,$f18
    69a4:	46048282 	mul.s	$f10,$f16,$f4
    69a8:	862a0016 	lh	t2,22(s1)
    69ac:	86050136 	lh	a1,310(s0)
    69b0:	2407000a 	li	a3,10
    69b4:	254d8001 	addiu	t5,t2,-32767
    69b8:	01a5c023 	subu	t8,t5,a1
    69bc:	00b82021 	addu	a0,a1,t8
    69c0:	460a9201 	sub.s	$f8,$f18,$f10
    69c4:	00042400 	sll	a0,a0,0x10
    69c8:	00042403 	sra	a0,a0,0x10
    69cc:	44064000 	mfc1	a2,$f8
    69d0:	0c000000 	jal	0 <func_800437F0>
    69d4:	00000000 	nop
    69d8:	1000000d 	b	6a10 <Camera_Jump1+0x7b8>
    69dc:	a6020136 	sh	v0,310(s0)
    69e0:	c606000c 	lwc1	$f6,12(s0)
    69e4:	a6200018 	sh	zero,24(s1)
    69e8:	3c010000 	lui	at,0x0
    69ec:	e6260010 	swc1	$f6,16(s1)
    69f0:	ac200000 	sw	zero,0(at)
    69f4:	8c690000 	lw	t1,0(v1)
    69f8:	8fa80040 	lw	t0,64(sp)
    69fc:	ad090000 	sw	t1,0(t0)
    6a00:	8c790004 	lw	t9,4(v1)
    6a04:	ad190004 	sw	t9,4(t0)
    6a08:	8c690008 	lw	t1,8(v1)
    6a0c:	ad090008 	sw	t1,8(t0)
    6a10:	8fa4003c 	lw	a0,60(sp)
    6a14:	0c000000 	jal	0 <func_800437F0>
    6a18:	8fa50040 	lw	a1,64(sp)
    6a1c:	e60000dc 	swc1	$f0,220(s0)
    6a20:	00002025 	move	a0,zero
    6a24:	8605015a 	lh	a1,346(s0)
    6a28:	3c063f00 	lui	a2,0x3f00
    6a2c:	0c000000 	jal	0 <func_800437F0>
    6a30:	2407000a 	li	a3,10
    6a34:	a602015a 	sh	v0,346(s0)
    6a38:	02002025 	move	a0,s0
    6a3c:	0c000000 	jal	0 <func_800437F0>
    6a40:	8e050018 	lw	a1,24(s0)
    6a44:	e6000100 	swc1	$f0,256(s0)
    6a48:	8fbf0024 	lw	ra,36(sp)
    6a4c:	8fb10020 	lw	s1,32(sp)
    6a50:	8fb0001c 	lw	s0,28(sp)
    6a54:	27bd00b8 	addiu	sp,sp,184
    6a58:	03e00008 	jr	ra
    6a5c:	24020001 	li	v0,1

00006a60 <Camera_Jump2>:
    6a60:	27bdff20 	addiu	sp,sp,-224
    6a64:	afb00018 	sw	s0,24(sp)
    6a68:	00808025 	move	s0,a0
    6a6c:	afbf001c 	sw	ra,28(sp)
    6a70:	0c000000 	jal	0 <func_800437F0>
    6a74:	8c840090 	lw	a0,144(a0)
    6a78:	e7a00048 	swc1	$f0,72(sp)
    6a7c:	8603015e 	lh	v1,350(s0)
    6a80:	10600009 	beqz	v1,6aa8 <Camera_Jump2+0x48>
    6a84:	2401000a 	li	at,10
    6a88:	10610007 	beq	v1,at,6aa8 <Camera_Jump2+0x48>
    6a8c:	24010014 	li	at,20
    6a90:	10610005 	beq	v1,at,6aa8 <Camera_Jump2+0x48>
    6a94:	3c0e0000 	lui	t6,0x0
    6a98:	8dce0000 	lw	t6,0(t6)
    6a9c:	85c30314 	lh	v1,788(t6)
    6aa0:	10600066 	beqz	v1,6c3c <Camera_Jump2+0x1dc>
    6aa4:	00000000 	nop
    6aa8:	860f0142 	lh	t7,322(s0)
    6aac:	3c0e0000 	lui	t6,0x0
    6ab0:	8dce0000 	lw	t6,0(t6)
    6ab4:	3c010000 	lui	at,0x0
    6ab8:	000fc0c0 	sll	t8,t7,0x3
    6abc:	c42e0000 	lwc1	$f14,0(at)
    6ac0:	85cf01f0 	lh	t7,496(t6)
    6ac4:	3c013f80 	lui	at,0x3f80
    6ac8:	44814000 	mtc1	at,$f8
    6acc:	448f2000 	mtc1	t7,$f4
    6ad0:	3c014288 	lui	at,0x4288
    6ad4:	44819000 	mtc1	at,$f18
    6ad8:	468021a0 	cvt.s.w	$f6,$f4
    6adc:	3c190000 	lui	t9,0x0
    6ae0:	860b0144 	lh	t3,324(s0)
    6ae4:	0338c821 	addu	t9,t9,t8
    6ae8:	8f390004 	lw	t9,4(t9)
    6aec:	46009103 	div.s	$f4,$f18,$f0
    6af0:	c61200f4 	lwc1	$f18,244(s0)
    6af4:	000b60c0 	sll	t4,t3,0x3
    6af8:	032c6821 	addu	t5,t9,t4
    6afc:	460e3082 	mul.s	$f2,$f6,$f14
    6b00:	8da20004 	lw	v0,4(t5)
    6b04:	3c014120 	lui	at,0x4120
    6b08:	46024280 	add.s	$f10,$f8,$f2
    6b0c:	44804000 	mtc1	zero,$f8
    6b10:	46041182 	mul.s	$f6,$f2,$f4
    6b14:	4612403c 	c.lt.s	$f8,$f18
    6b18:	00000000 	nop
    6b1c:	45000005 	bc1f	6b34 <Camera_Jump2+0xd4>
    6b20:	46065301 	sub.s	$f12,$f10,$f6
    6b24:	3c01c120 	lui	at,0xc120
    6b28:	44811000 	mtc1	at,$f2
    6b2c:	10000004 	b	6b40 <Camera_Jump2+0xe0>
    6b30:	84580000 	lh	t8,0(v0)
    6b34:	44811000 	mtc1	at,$f2
    6b38:	00000000 	nop
    6b3c:	84580000 	lh	t8,0(v0)
    6b40:	24420020 	addiu	v0,v0,32
    6b44:	44982000 	mtc1	t8,$f4
    6b48:	00000000 	nop
    6b4c:	468022a0 	cvt.s.w	$f10,$f4
    6b50:	46025180 	add.s	$f6,$f10,$f2
    6b54:	460e3202 	mul.s	$f8,$f6,$f14
    6b58:	00000000 	nop
    6b5c:	46004482 	mul.s	$f18,$f8,$f0
    6b60:	00000000 	nop
    6b64:	460c9102 	mul.s	$f4,$f18,$f12
    6b68:	e6040000 	swc1	$f4,0(s0)
    6b6c:	844bffe4 	lh	t3,-28(v0)
    6b70:	448b5000 	mtc1	t3,$f10
    6b74:	00000000 	nop
    6b78:	468051a0 	cvt.s.w	$f6,$f10
    6b7c:	460e3202 	mul.s	$f8,$f6,$f14
    6b80:	00000000 	nop
    6b84:	46004482 	mul.s	$f18,$f8,$f0
    6b88:	00000000 	nop
    6b8c:	460c9102 	mul.s	$f4,$f18,$f12
    6b90:	e6040004 	swc1	$f4,4(s0)
    6b94:	8459ffe8 	lh	t9,-24(v0)
    6b98:	44995000 	mtc1	t9,$f10
    6b9c:	3c190000 	lui	t9,0x0
    6ba0:	468051a0 	cvt.s.w	$f6,$f10
    6ba4:	460e3202 	mul.s	$f8,$f6,$f14
    6ba8:	00000000 	nop
    6bac:	46004482 	mul.s	$f18,$f8,$f0
    6bb0:	00000000 	nop
    6bb4:	460c9102 	mul.s	$f4,$f18,$f12
    6bb8:	e6040008 	swc1	$f4,8(s0)
    6bbc:	844cffec 	lh	t4,-20(v0)
    6bc0:	448c5000 	mtc1	t4,$f10
    6bc4:	00000000 	nop
    6bc8:	468051a0 	cvt.s.w	$f6,$f10
    6bcc:	460e3202 	mul.s	$f8,$f6,$f14
    6bd0:	e608000c 	swc1	$f8,12(s0)
    6bd4:	844dfff0 	lh	t5,-16(v0)
    6bd8:	448d9000 	mtc1	t5,$f18
    6bdc:	00000000 	nop
    6be0:	46809120 	cvt.s.w	$f4,$f18
    6be4:	e6040010 	swc1	$f4,16(s0)
    6be8:	844efff4 	lh	t6,-12(v0)
    6bec:	448e5000 	mtc1	t6,$f10
    6bf0:	00000000 	nop
    6bf4:	468051a0 	cvt.s.w	$f6,$f10
    6bf8:	460e3202 	mul.s	$f8,$f6,$f14
    6bfc:	e6080014 	swc1	$f8,20(s0)
    6c00:	844ffff8 	lh	t7,-8(v0)
    6c04:	448f9000 	mtc1	t7,$f18
    6c08:	00000000 	nop
    6c0c:	46809120 	cvt.s.w	$f4,$f18
    6c10:	e6040018 	swc1	$f4,24(s0)
    6c14:	8458fffc 	lh	t8,-4(v0)
    6c18:	44985000 	mtc1	t8,$f10
    6c1c:	00000000 	nop
    6c20:	468051a0 	cvt.s.w	$f6,$f10
    6c24:	460e3202 	mul.s	$f8,$f6,$f14
    6c28:	e608001c 	swc1	$f8,28(s0)
    6c2c:	844b0000 	lh	t3,0(v0)
    6c30:	a60b0020 	sh	t3,32(s0)
    6c34:	8f390000 	lw	t9,0(t9)
    6c38:	87230314 	lh	v1,788(t9)
    6c3c:	50600004 	beqzl	v1,6c50 <Camera_Jump2+0x1f0>
    6c40:	26050050 	addiu	a1,s0,80
    6c44:	0c000000 	jal	0 <func_800437F0>
    6c48:	02002025 	move	a0,s0
    6c4c:	26050050 	addiu	a1,s0,80
    6c50:	2606005c 	addiu	a2,s0,92
    6c54:	afa60038 	sw	a2,56(sp)
    6c58:	afa50034 	sw	a1,52(sp)
    6c5c:	0c000000 	jal	0 <func_800437F0>
    6c60:	27a4009c 	addiu	a0,sp,156
    6c64:	26060074 	addiu	a2,s0,116
    6c68:	afa60030 	sw	a2,48(sp)
    6c6c:	27a400a4 	addiu	a0,sp,164
    6c70:	0c000000 	jal	0 <func_800437F0>
    6c74:	8fa50034 	lw	a1,52(sp)
    6c78:	860c0020 	lh	t4,32(s0)
    6c7c:	3c010000 	lui	at,0x0
    6c80:	ac2c0000 	sw	t4,0(at)
    6c84:	8603015e 	lh	v1,350(s0)
    6c88:	10600004 	beqz	v1,6c9c <Camera_Jump2+0x23c>
    6c8c:	2401000a 	li	at,10
    6c90:	10610002 	beq	v1,at,6c9c <Camera_Jump2+0x23c>
    6c94:	24010014 	li	at,20
    6c98:	1461006c 	bne	v1,at,6e4c <Camera_Jump2+0x3ec>
    6c9c:	26080094 	addiu	t0,s0,148
    6ca0:	8d0e0000 	lw	t6,0(t0)
    6ca4:	27a500c8 	addiu	a1,sp,200
    6ca8:	02002025 	move	a0,s0
    6cac:	acae0000 	sw	t6,0(a1)
    6cb0:	8d0d0004 	lw	t5,4(t0)
    6cb4:	acad0004 	sw	t5,4(a1)
    6cb8:	8d0e0008 	lw	t6,8(t0)
    6cbc:	acae0008 	sw	t6,8(a1)
    6cc0:	0c000000 	jal	0 <func_800437F0>
    6cc4:	afa8002c 	sw	t0,44(sp)
    6cc8:	3c01c6fa 	lui	at,0xc6fa
    6ccc:	44819000 	mtc1	at,$f18
    6cd0:	8fa8002c 	lw	t0,44(sp)
    6cd4:	26090024 	addiu	t1,s0,36
    6cd8:	46120032 	c.eq.s	$f0,$f18
    6cdc:	e5200000 	swc1	$f0,0(t1)
    6ce0:	87af00aa 	lh	t7,170(sp)
    6ce4:	a5200006 	sh	zero,6(t1)
    6ce8:	45000010 	bc1f	6d2c <Camera_Jump2+0x2cc>
    6cec:	a52f0004 	sh	t7,4(t1)
    6cf0:	3c040000 	lui	a0,0x0
    6cf4:	24840000 	addiu	a0,a0,0
    6cf8:	afa8002c 	sw	t0,44(sp)
    6cfc:	0c000000 	jal	0 <func_800437F0>
    6d00:	afa90028 	sw	t1,40(sp)
    6d04:	8fa90028 	lw	t1,40(sp)
    6d08:	8fa8002c 	lw	t0,44(sp)
    6d0c:	2418ffff 	li	t8,-1
    6d10:	3c01447a 	lui	at,0x447a
    6d14:	a538000a 	sh	t8,10(t1)
    6d18:	44815000 	mtc1	at,$f10
    6d1c:	c5040004 	lwc1	$f4,4(t0)
    6d20:	460a2181 	sub.s	$f6,$f4,$f10
    6d24:	1000000e 	b	6d60 <Camera_Jump2+0x300>
    6d28:	e5260000 	swc1	$f6,0(t1)
    6d2c:	c5080004 	lwc1	$f8,4(t0)
    6d30:	c5320000 	lwc1	$f18,0(t1)
    6d34:	c7aa0048 	lwc1	$f10,72(sp)
    6d38:	240b0001 	li	t3,1
    6d3c:	46124101 	sub.s	$f4,$f8,$f18
    6d40:	2419ffff 	li	t9,-1
    6d44:	460a203c 	c.lt.s	$f4,$f10
    6d48:	00000000 	nop
    6d4c:	45020004 	bc1fl	6d60 <Camera_Jump2+0x300>
    6d50:	a539000a 	sh	t9,10(t1)
    6d54:	10000002 	b	6d60 <Camera_Jump2+0x300>
    6d58:	a52b000a 	sh	t3,10(t1)
    6d5c:	a539000a 	sh	t9,10(t1)
    6d60:	850c000e 	lh	t4,14(t0)
    6d64:	3c030000 	lui	v1,0x0
    6d68:	24630000 	addiu	v1,v1,0
    6d6c:	87b800aa 	lh	t8,170(sp)
    6d70:	8c6b0000 	lw	t3,0(v1)
    6d74:	258d8001 	addiu	t5,t4,-32767
    6d78:	000d7400 	sll	t6,t5,0x10
    6d7c:	000e7c03 	sra	t7,t6,0x10
    6d80:	857901c2 	lh	t9,450(t3)
    6d84:	01f81023 	subu	v0,t7,t8
    6d88:	00021400 	sll	v0,v0,0x10
    6d8c:	00021403 	sra	v0,v0,0x10
    6d90:	0059001a 	div	zero,v0,t9
    6d94:	17200002 	bnez	t9,6da0 <Camera_Jump2+0x340>
    6d98:	00000000 	nop
    6d9c:	0007000d 	break	0x7
    6da0:	2401ffff 	li	at,-1
    6da4:	17210004 	bne	t9,at,6db8 <Camera_Jump2+0x358>
    6da8:	3c018000 	lui	at,0x8000
    6dac:	14410002 	bne	v0,at,6db8 <Camera_Jump2+0x358>
    6db0:	00000000 	nop
    6db4:	0006000d 	break	0x6
    6db8:	00006012 	mflo	t4
    6dbc:	240b000a 	li	t3,10
    6dc0:	05810003 	bgez	t4,6dd0 <Camera_Jump2+0x370>
    6dc4:	000c6883 	sra	t5,t4,0x2
    6dc8:	25810003 	addiu	at,t4,3
    6dcc:	00016883 	sra	t5,at,0x2
    6dd0:	000d7080 	sll	t6,t5,0x2
    6dd4:	01cd7023 	subu	t6,t6,t5
    6dd8:	a52e0006 	sh	t6,6(t1)
    6ddc:	860f0020 	lh	t7,32(s0)
    6de0:	24192710 	li	t9,10000
    6de4:	31f80002 	andi	t8,t7,0x2
    6de8:	53000004 	beqzl	t8,6dfc <Camera_Jump2+0x39c>
    6dec:	a5390008 	sh	t9,8(t1)
    6df0:	10000002 	b	6dfc <Camera_Jump2+0x39c>
    6df4:	a52b0008 	sh	t3,8(t1)
    6df8:	a5390008 	sh	t9,8(t1)
    6dfc:	c5060000 	lwc1	$f6,0(t0)
    6e00:	c60800f0 	lwc1	$f8,240(s0)
    6e04:	c5040004 	lwc1	$f4,4(t0)
    6e08:	46083481 	sub.s	$f18,$f6,$f8
    6e0c:	c5080008 	lwc1	$f8,8(t0)
    6e10:	e5120000 	swc1	$f18,0(t0)
    6e14:	c60a00f4 	lwc1	$f10,244(s0)
    6e18:	460a2181 	sub.s	$f6,$f4,$f10
    6e1c:	e5060004 	swc1	$f6,4(t0)
    6e20:	c61200f8 	lwc1	$f18,248(s0)
    6e24:	46124101 	sub.s	$f4,$f8,$f18
    6e28:	e5040008 	swc1	$f4,8(t0)
    6e2c:	8c6c0000 	lw	t4,0(v1)
    6e30:	858d01c2 	lh	t5,450(t4)
    6e34:	a52d000c 	sh	t5,12(t1)
    6e38:	860e015e 	lh	t6,350(s0)
    6e3c:	c60a001c 	lwc1	$f10,28(s0)
    6e40:	25cf0001 	addiu	t7,t6,1
    6e44:	a60f015e 	sh	t7,350(s0)
    6e48:	e60a0100 	swc1	$f10,256(s0)
    6e4c:	3c030000 	lui	v1,0x0
    6e50:	24630000 	addiu	v1,v1,0
    6e54:	8c620000 	lw	v0,0(v1)
    6e58:	3c010000 	lui	at,0x0
    6e5c:	c4300000 	lwc1	$f16,0(at)
    6e60:	845801c6 	lh	t8,454(v0)
    6e64:	844b01c8 	lh	t3,456(v0)
    6e68:	c60000e0 	lwc1	$f0,224(s0)
    6e6c:	44983000 	mtc1	t8,$f6
    6e70:	448b2000 	mtc1	t3,$f4
    6e74:	3c073dcc 	lui	a3,0x3dcc
    6e78:	46803220 	cvt.s.w	$f8,$f6
    6e7c:	26080094 	addiu	t0,s0,148
    6e80:	26090024 	addiu	t1,s0,36
    6e84:	34e7cccd 	ori	a3,a3,0xcccd
    6e88:	468022a0 	cvt.s.w	$f10,$f4
    6e8c:	46104482 	mul.s	$f18,$f8,$f16
    6e90:	00000000 	nop
    6e94:	46009082 	mul.s	$f2,$f18,$f0
    6e98:	00000000 	nop
    6e9c:	46105182 	mul.s	$f6,$f10,$f16
    6ea0:	44061000 	mfc1	a2,$f2
    6ea4:	46003202 	mul.s	$f8,$f6,$f0
    6ea8:	e7a8008c 	swc1	$f8,140(sp)
    6eac:	c60e00c8 	lwc1	$f14,200(s0)
    6eb0:	c60c0010 	lwc1	$f12,16(s0)
    6eb4:	e7a20090 	swc1	$f2,144(sp)
    6eb8:	afa90028 	sw	t1,40(sp)
    6ebc:	0c000000 	jal	0 <func_800437F0>
    6ec0:	afa8002c 	sw	t0,44(sp)
    6ec4:	c7a20090 	lwc1	$f2,144(sp)
    6ec8:	3c073dcc 	lui	a3,0x3dcc
    6ecc:	e60000c8 	swc1	$f0,200(s0)
    6ed0:	44061000 	mfc1	a2,$f2
    6ed4:	34e7cccd 	ori	a3,a3,0xcccd
    6ed8:	c60c0014 	lwc1	$f12,20(s0)
    6edc:	0c000000 	jal	0 <func_800437F0>
    6ee0:	c60e00cc 	lwc1	$f14,204(s0)
    6ee4:	e60000cc 	swc1	$f0,204(s0)
    6ee8:	3c190000 	lui	t9,0x0
    6eec:	8f390000 	lw	t9,0(t9)
    6ef0:	3c010000 	lui	at,0x0
    6ef4:	c42a0000 	lwc1	$f10,0(at)
    6ef8:	872c019a 	lh	t4,410(t9)
    6efc:	3c073dcc 	lui	a3,0x3dcc
    6f00:	34e7cccd 	ori	a3,a3,0xcccd
    6f04:	448c9000 	mtc1	t4,$f18
    6f08:	8fa6008c 	lw	a2,140(sp)
    6f0c:	c60e00d0 	lwc1	$f14,208(s0)
    6f10:	46809120 	cvt.s.w	$f4,$f18
    6f14:	460a2302 	mul.s	$f12,$f4,$f10
    6f18:	0c000000 	jal	0 <func_800437F0>
    6f1c:	00000000 	nop
    6f20:	e60000d0 	swc1	$f0,208(s0)
    6f24:	3c0d0000 	lui	t5,0x0
    6f28:	8dad0000 	lw	t5,0(t5)
    6f2c:	3c010000 	lui	at,0x0
    6f30:	c4320000 	lwc1	$f18,0(at)
    6f34:	85ae019c 	lh	t6,412(t5)
    6f38:	3c010000 	lui	at,0x0
    6f3c:	c42a0000 	lwc1	$f10,0(at)
    6f40:	448e3000 	mtc1	t6,$f6
    6f44:	c60400e0 	lwc1	$f4,224(s0)
    6f48:	3c073dcc 	lui	a3,0x3dcc
    6f4c:	46803220 	cvt.s.w	$f8,$f6
    6f50:	34e7cccd 	ori	a3,a3,0xcccd
    6f54:	46000386 	mov.s	$f14,$f0
    6f58:	46124302 	mul.s	$f12,$f8,$f18
    6f5c:	00000000 	nop
    6f60:	460a2182 	mul.s	$f6,$f4,$f10
    6f64:	44063000 	mfc1	a2,$f6
    6f68:	0c000000 	jal	0 <func_800437F0>
    6f6c:	00000000 	nop
    6f70:	e60000d4 	swc1	$f0,212(s0)
    6f74:	3c0f0000 	lui	t7,0x0
    6f78:	8def0000 	lw	t7,0(t7)
    6f7c:	02002025 	move	a0,s0
    6f80:	27a500a4 	addiu	a1,sp,164
    6f84:	85f801ca 	lh	t8,458(t7)
    6f88:	8e060000 	lw	a2,0(s0)
    6f8c:	00003825 	move	a3,zero
    6f90:	44984000 	mtc1	t8,$f8
    6f94:	00000000 	nop
    6f98:	468044a0 	cvt.s.w	$f18,$f8
    6f9c:	0c000000 	jal	0 <func_800437F0>
    6fa0:	e61200c0 	swc1	$f18,192(s0)
    6fa4:	27a400b4 	addiu	a0,sp,180
    6fa8:	8fa50034 	lw	a1,52(sp)
    6fac:	0c000000 	jal	0 <func_800437F0>
    6fb0:	8fa60038 	lw	a2,56(sp)
    6fb4:	c60c0008 	lwc1	$f12,8(s0)
    6fb8:	c60e000c 	lwc1	$f14,12(s0)
    6fbc:	c6000004 	lwc1	$f0,4(s0)
    6fc0:	c7a600b4 	lwc1	$f6,180(sp)
    6fc4:	460e6102 	mul.s	$f4,$f12,$f14
    6fc8:	8fa8002c 	lw	t0,44(sp)
    6fcc:	8fa90028 	lw	t1,40(sp)
    6fd0:	460e0282 	mul.s	$f10,$f0,$f14
    6fd4:	46046080 	add.s	$f2,$f12,$f4
    6fd8:	460a0401 	sub.s	$f16,$f0,$f10
    6fdc:	4606103c 	c.lt.s	$f2,$f6
    6fe0:	00000000 	nop
    6fe4:	45020004 	bc1fl	6ff8 <Camera_Jump2+0x598>
    6fe8:	c7a800b4 	lwc1	$f8,180(sp)
    6fec:	10000007 	b	700c <Camera_Jump2+0x5ac>
    6ff0:	e7a200b4 	swc1	$f2,180(sp)
    6ff4:	c7a800b4 	lwc1	$f8,180(sp)
    6ff8:	4610403c 	c.lt.s	$f8,$f16
    6ffc:	00000000 	nop
    7000:	45020003 	bc1fl	7010 <Camera_Jump2+0x5b0>
    7004:	850a000e 	lh	t2,14(t0)
    7008:	e7b000b4 	swc1	$f16,180(sp)
    700c:	850a000e 	lh	t2,14(t0)
    7010:	87ac00ba 	lh	t4,186(sp)
    7014:	8523000c 	lh	v1,12(t1)
    7018:	254a8001 	addiu	t2,t2,-32767
    701c:	014c1023 	subu	v0,t2,t4
    7020:	00021400 	sll	v0,v0,0x10
    7024:	1060000f 	beqz	v1,7064 <Camera_Jump2+0x604>
    7028:	00021403 	sra	v0,v0,0x10
    702c:	a52a0004 	sh	t2,4(t1)
    7030:	246dffff 	addiu	t5,v1,-1
    7034:	a52d000c 	sh	t5,12(t1)
    7038:	85240004 	lh	a0,4(t1)
    703c:	afa90028 	sw	t1,40(sp)
    7040:	afa8002c 	sw	t0,44(sp)
    7044:	87a500aa 	lh	a1,170(sp)
    7048:	3c063f00 	lui	a2,0x3f00
    704c:	0c000000 	jal	0 <func_800437F0>
    7050:	2407000a 	li	a3,10
    7054:	8fa8002c 	lw	t0,44(sp)
    7058:	8fa90028 	lw	t1,40(sp)
    705c:	10000029 	b	7104 <Camera_Jump2+0x6a4>
    7060:	a7a200ba 	sh	v0,186(sp)
    7064:	04400003 	bltz	v0,7074 <Camera_Jump2+0x614>
    7068:	00021823 	negu	v1,v0
    706c:	10000001 	b	7074 <Camera_Jump2+0x614>
    7070:	00401825 	move	v1,v0
    7074:	85240008 	lh	a0,8(t1)
    7078:	87a500aa 	lh	a1,170(sp)
    707c:	3c063e80 	lui	a2,0x3e80
    7080:	0083082a 	slt	at,a0,v1
    7084:	10200018 	beqz	at,70e8 <Camera_Jump2+0x688>
    7088:	2407000a 	li	a3,10
    708c:	000a2c00 	sll	a1,t2,0x10
    7090:	04410005 	bgez	v0,70a8 <Camera_Jump2+0x648>
    7094:	00052c03 	sra	a1,a1,0x10
    7098:	00a41821 	addu	v1,a1,a0
    709c:	00031c00 	sll	v1,v1,0x10
    70a0:	10000004 	b	70b4 <Camera_Jump2+0x654>
    70a4:	00031c03 	sra	v1,v1,0x10
    70a8:	00a41823 	subu	v1,a1,a0
    70ac:	00031c00 	sll	v1,v1,0x10
    70b0:	00031c03 	sra	v1,v1,0x10
    70b4:	00032400 	sll	a0,v1,0x10
    70b8:	3c063dcc 	lui	a2,0x3dcc
    70bc:	34c6cccd 	ori	a2,a2,0xcccd
    70c0:	00042403 	sra	a0,a0,0x10
    70c4:	87a500aa 	lh	a1,170(sp)
    70c8:	2407000a 	li	a3,10
    70cc:	afa8002c 	sw	t0,44(sp)
    70d0:	0c000000 	jal	0 <func_800437F0>
    70d4:	afa90028 	sw	t1,40(sp)
    70d8:	8fa8002c 	lw	t0,44(sp)
    70dc:	8fa90028 	lw	t1,40(sp)
    70e0:	10000008 	b	7104 <Camera_Jump2+0x6a4>
    70e4:	a7a200ba 	sh	v0,186(sp)
    70e8:	87a400ba 	lh	a0,186(sp)
    70ec:	afa8002c 	sw	t0,44(sp)
    70f0:	0c000000 	jal	0 <func_800437F0>
    70f4:	afa90028 	sw	t1,40(sp)
    70f8:	8fa8002c 	lw	t0,44(sp)
    70fc:	8fa90028 	lw	t1,40(sp)
    7100:	a7a200ba 	sh	v0,186(sp)
    7104:	8504000e 	lh	a0,14(t0)
    7108:	afa90028 	sw	t1,40(sp)
    710c:	0c000000 	jal	0 <func_800437F0>
    7110:	afa8002c 	sw	t0,44(sp)
    7114:	3c0141c8 	lui	at,0x41c8
    7118:	44819000 	mtc1	at,$f18
    711c:	8fa8002c 	lw	t0,44(sp)
    7120:	3c010000 	lui	at,0x0
    7124:	46120102 	mul.s	$f4,$f0,$f18
    7128:	c50a0000 	lwc1	$f10,0(t0)
    712c:	c4320000 	lwc1	$f18,0(at)
    7130:	c7a80048 	lwc1	$f8,72(sp)
    7134:	460a2180 	add.s	$f6,$f4,$f10
    7138:	46124102 	mul.s	$f4,$f8,$f18
    713c:	e7a600c8 	swc1	$f6,200(sp)
    7140:	c50a0004 	lwc1	$f10,4(t0)
    7144:	46045180 	add.s	$f6,$f10,$f4
    7148:	e7a600cc 	swc1	$f6,204(sp)
    714c:	0c000000 	jal	0 <func_800437F0>
    7150:	8504000e 	lh	a0,14(t0)
    7154:	3c0141c8 	lui	at,0x41c8
    7158:	44814000 	mtc1	at,$f8
    715c:	8fa8002c 	lw	t0,44(sp)
    7160:	02002025 	move	a0,s0
    7164:	46080482 	mul.s	$f18,$f0,$f8
    7168:	c50a0008 	lwc1	$f10,8(t0)
    716c:	27a500bc 	addiu	a1,sp,188
    7170:	27a600c8 	addiu	a2,sp,200
    7174:	27a70088 	addiu	a3,sp,136
    7178:	460a9100 	add.s	$f4,$f18,$f10
    717c:	0c000000 	jal	0 <func_800437F0>
    7180:	e7a400d0 	swc1	$f4,208(sp)
    7184:	3c01c6fa 	lui	at,0xc6fa
    7188:	44813000 	mtc1	at,$f6
    718c:	8fa8002c 	lw	t0,44(sp)
    7190:	8fa90028 	lw	t1,40(sp)
    7194:	46060032 	c.eq.s	$f0,$f6
    7198:	00000000 	nop
    719c:	45030036 	bc1tl	7278 <Camera_Jump2+0x818>
    71a0:	c50a0004 	lwc1	$f10,4(t0)
    71a4:	c5080004 	lwc1	$f8,4(t0)
    71a8:	3c0e0000 	lui	t6,0x0
    71ac:	4600403c 	c.lt.s	$f8,$f0
    71b0:	00000000 	nop
    71b4:	45020030 	bc1fl	7278 <Camera_Jump2+0x818>
    71b8:	c50a0004 	lwc1	$f10,4(t0)
    71bc:	8dce0000 	lw	t6,0(t6)
    71c0:	3c0141a0 	lui	at,0x41a0
    71c4:	44816000 	mtc1	at,$f12
    71c8:	85cf01c8 	lh	t7,456(t6)
    71cc:	3c010000 	lui	at,0x0
    71d0:	c4240000 	lwc1	$f4,0(at)
    71d4:	448f9000 	mtc1	t7,$f18
    71d8:	3c073dcc 	lui	a3,0x3dcc
    71dc:	34e7cccd 	ori	a3,a3,0xcccd
    71e0:	468092a0 	cvt.s.w	$f10,$f18
    71e4:	c60e00c4 	lwc1	$f14,196(s0)
    71e8:	46045182 	mul.s	$f6,$f10,$f4
    71ec:	44063000 	mfc1	a2,$f6
    71f0:	0c000000 	jal	0 <func_800437F0>
    71f4:	00000000 	nop
    71f8:	e60000c4 	swc1	$f0,196(s0)
    71fc:	3c180000 	lui	t8,0x0
    7200:	8f180000 	lw	t8,0(t8)
    7204:	3c0141a0 	lui	at,0x41a0
    7208:	44816000 	mtc1	at,$f12
    720c:	870b01c8 	lh	t3,456(t8)
    7210:	3c010000 	lui	at,0x0
    7214:	c42a0000 	lwc1	$f10,0(at)
    7218:	448b4000 	mtc1	t3,$f8
    721c:	3c073dcc 	lui	a3,0x3dcc
    7220:	34e7cccd 	ori	a3,a3,0xcccd
    7224:	468044a0 	cvt.s.w	$f18,$f8
    7228:	c60e00c0 	lwc1	$f14,192(s0)
    722c:	460a9102 	mul.s	$f4,$f18,$f10
    7230:	44062000 	mfc1	a2,$f4
    7234:	0c000000 	jal	0 <func_800437F0>
    7238:	00000000 	nop
    723c:	3c013f80 	lui	at,0x3f80
    7240:	44813000 	mtc1	at,$f6
    7244:	c60800c4 	lwc1	$f8,196(s0)
    7248:	e60000c0 	swc1	$f0,192(s0)
    724c:	87a500a8 	lh	a1,168(sp)
    7250:	46083483 	div.s	$f18,$f6,$f8
    7254:	240401f4 	li	a0,500
    7258:	2407000a 	li	a3,10
    725c:	44069000 	mfc1	a2,$f18
    7260:	0c000000 	jal	0 <func_800437F0>
    7264:	00000000 	nop
    7268:	00021c00 	sll	v1,v0,0x10
    726c:	1000003e 	b	7368 <Camera_Jump2+0x908>
    7270:	00031c03 	sra	v1,v1,0x10
    7274:	c50a0004 	lwc1	$f10,4(t0)
    7278:	c5240000 	lwc1	$f4,0(t1)
    727c:	c7a80048 	lwc1	$f8,72(sp)
    7280:	3c190000 	lui	t9,0x0
    7284:	46045181 	sub.s	$f6,$f10,$f4
    7288:	3c0142c8 	lui	at,0x42c8
    728c:	4608303c 	c.lt.s	$f6,$f8
    7290:	00000000 	nop
    7294:	45020030 	bc1fl	7358 <Camera_Jump2+0x8f8>
    7298:	44810000 	mtc1	at,$f0
    729c:	8f390000 	lw	t9,0(t9)
    72a0:	3c0141a0 	lui	at,0x41a0
    72a4:	44816000 	mtc1	at,$f12
    72a8:	872c01c8 	lh	t4,456(t9)
    72ac:	3c010000 	lui	at,0x0
    72b0:	c4240000 	lwc1	$f4,0(at)
    72b4:	448c9000 	mtc1	t4,$f18
    72b8:	3c073dcc 	lui	a3,0x3dcc
    72bc:	34e7cccd 	ori	a3,a3,0xcccd
    72c0:	468092a0 	cvt.s.w	$f10,$f18
    72c4:	c60e00c4 	lwc1	$f14,196(s0)
    72c8:	46045182 	mul.s	$f6,$f10,$f4
    72cc:	44063000 	mfc1	a2,$f6
    72d0:	0c000000 	jal	0 <func_800437F0>
    72d4:	00000000 	nop
    72d8:	e60000c4 	swc1	$f0,196(s0)
    72dc:	3c0d0000 	lui	t5,0x0
    72e0:	8dad0000 	lw	t5,0(t5)
    72e4:	3c0141a0 	lui	at,0x41a0
    72e8:	44816000 	mtc1	at,$f12
    72ec:	85ae01c8 	lh	t6,456(t5)
    72f0:	3c010000 	lui	at,0x0
    72f4:	c42a0000 	lwc1	$f10,0(at)
    72f8:	448e4000 	mtc1	t6,$f8
    72fc:	3c073dcc 	lui	a3,0x3dcc
    7300:	34e7cccd 	ori	a3,a3,0xcccd
    7304:	468044a0 	cvt.s.w	$f18,$f8
    7308:	c60e00c0 	lwc1	$f14,192(s0)
    730c:	460a9102 	mul.s	$f4,$f18,$f10
    7310:	44062000 	mfc1	a2,$f4
    7314:	0c000000 	jal	0 <func_800437F0>
    7318:	00000000 	nop
    731c:	3c013f80 	lui	at,0x3f80
    7320:	44813000 	mtc1	at,$f6
    7324:	c60800c4 	lwc1	$f8,196(s0)
    7328:	e60000c0 	swc1	$f0,192(s0)
    732c:	87a500a8 	lh	a1,168(sp)
    7330:	46083483 	div.s	$f18,$f6,$f8
    7334:	240401f4 	li	a0,500
    7338:	2407000a 	li	a3,10
    733c:	44069000 	mfc1	a2,$f18
    7340:	0c000000 	jal	0 <func_800437F0>
    7344:	00000000 	nop
    7348:	a7a200b8 	sh	v0,184(sp)
    734c:	10000006 	b	7368 <Camera_Jump2+0x908>
    7350:	87a300b8 	lh	v1,184(sp)
    7354:	44810000 	mtc1	at,$f0
    7358:	00000000 	nop
    735c:	e60000c4 	swc1	$f0,196(s0)
    7360:	e60000c0 	swc1	$f0,192(s0)
    7364:	87a300b8 	lh	v1,184(sp)
    7368:	28612af9 	slti	at,v1,11001
    736c:	14200002 	bnez	at,7378 <Camera_Jump2+0x918>
    7370:	27a600b4 	addiu	a2,sp,180
    7374:	24032af8 	li	v1,11000
    7378:	2861d508 	slti	at,v1,-11000
    737c:	10200003 	beqz	at,738c <Camera_Jump2+0x92c>
    7380:	a7a300b8 	sh	v1,184(sp)
    7384:	2403d508 	li	v1,-11000
    7388:	a7a300b8 	sh	v1,184(sp)
    738c:	8fa40030 	lw	a0,48(sp)
    7390:	0c000000 	jal	0 <func_800437F0>
    7394:	8fa50034 	lw	a1,52(sp)
    7398:	8faf0030 	lw	t7,48(sp)
    739c:	27a60060 	addiu	a2,sp,96
    73a0:	02002025 	move	a0,s0
    73a4:	8deb0000 	lw	t3,0(t7)
    73a8:	accb0000 	sw	t3,0(a2)
    73ac:	8df80004 	lw	t8,4(t7)
    73b0:	acd80004 	sw	t8,4(a2)
    73b4:	8deb0008 	lw	t3,8(t7)
    73b8:	accb0008 	sw	t3,8(a2)
    73bc:	0c000000 	jal	0 <func_800437F0>
    73c0:	8fa50034 	lw	a1,52(sp)
    73c4:	10400030 	beqz	v0,7488 <Camera_Jump2+0xa28>
    73c8:	8fad0030 	lw	t5,48(sp)
    73cc:	27a40060 	addiu	a0,sp,96
    73d0:	8c8d0000 	lw	t5,0(a0)
    73d4:	27b900c8 	addiu	t9,sp,200
    73d8:	27a600ac 	addiu	a2,sp,172
    73dc:	af2d0000 	sw	t5,0(t9)
    73e0:	8c8c0004 	lw	t4,4(a0)
    73e4:	af2c0004 	sw	t4,4(t9)
    73e8:	8c8d0008 	lw	t5,8(a0)
    73ec:	af2d0008 	sw	t5,8(t9)
    73f0:	c7aa00b4 	lwc1	$f10,180(sp)
    73f4:	87ae00ba 	lh	t6,186(sp)
    73f8:	a7a000b0 	sh	zero,176(sp)
    73fc:	8fa50034 	lw	a1,52(sp)
    7400:	e7aa00ac 	swc1	$f10,172(sp)
    7404:	0c000000 	jal	0 <func_800437F0>
    7408:	a7ae00b2 	sh	t6,178(sp)
    740c:	02002025 	move	a0,s0
    7410:	8fa50034 	lw	a1,52(sp)
    7414:	0c000000 	jal	0 <func_800437F0>
    7418:	27a60060 	addiu	a2,sp,96
    741c:	1040000a 	beqz	v0,7448 <Camera_Jump2+0x9e8>
    7420:	00002025 	move	a0,zero
    7424:	27b800c8 	addiu	t8,sp,200
    7428:	8f190000 	lw	t9,0(t8)
    742c:	8faf0038 	lw	t7,56(sp)
    7430:	adf90000 	sw	t9,0(t7)
    7434:	8f0b0004 	lw	t3,4(t8)
    7438:	adeb0004 	sw	t3,4(t7)
    743c:	8f190008 	lw	t9,8(t8)
    7440:	10000018 	b	74a4 <Camera_Jump2+0xa44>
    7444:	adf90008 	sw	t9,8(t7)
    7448:	3c063e4c 	lui	a2,0x3e4c
    744c:	34c6cccd 	ori	a2,a2,0xcccd
    7450:	87a500b8 	lh	a1,184(sp)
    7454:	0c000000 	jal	0 <func_800437F0>
    7458:	2407000a 	li	a3,10
    745c:	a7a200b8 	sh	v0,184(sp)
    7460:	8fa40038 	lw	a0,56(sp)
    7464:	8fa50034 	lw	a1,52(sp)
    7468:	0c000000 	jal	0 <func_800437F0>
    746c:	27a600b4 	addiu	a2,sp,180
    7470:	02002025 	move	a0,s0
    7474:	8fa50034 	lw	a1,52(sp)
    7478:	0c000000 	jal	0 <func_800437F0>
    747c:	8fa60038 	lw	a2,56(sp)
    7480:	10000009 	b	74a8 <Camera_Jump2+0xa48>
    7484:	c7a400b4 	lwc1	$f4,180(sp)
    7488:	8fac0038 	lw	t4,56(sp)
    748c:	8daf0000 	lw	t7,0(t5)
    7490:	ad8f0000 	sw	t7,0(t4)
    7494:	8dae0004 	lw	t6,4(t5)
    7498:	ad8e0004 	sw	t6,4(t4)
    749c:	8daf0008 	lw	t7,8(t5)
    74a0:	ad8f0008 	sw	t7,8(t4)
    74a4:	c7a400b4 	lwc1	$f4,180(sp)
    74a8:	c60c0018 	lwc1	$f12,24(s0)
    74ac:	c60e00fc 	lwc1	$f14,252(s0)
    74b0:	8e0600d4 	lw	a2,212(s0)
    74b4:	3c073f80 	lui	a3,0x3f80
    74b8:	0c000000 	jal	0 <func_800437F0>
    74bc:	e60400dc 	swc1	$f4,220(s0)
    74c0:	e60000fc 	swc1	$f0,252(s0)
    74c4:	00002025 	move	a0,zero
    74c8:	8605015a 	lh	a1,346(s0)
    74cc:	3c063f00 	lui	a2,0x3f00
    74d0:	0c000000 	jal	0 <func_800437F0>
    74d4:	2407000a 	li	a3,10
    74d8:	a602015a 	sh	v0,346(s0)
    74dc:	8fbf001c 	lw	ra,28(sp)
    74e0:	8fb00018 	lw	s0,24(sp)
    74e4:	27bd00e0 	addiu	sp,sp,224
    74e8:	03e00008 	jr	ra
    74ec:	24020001 	li	v0,1

000074f0 <Camera_Jump3>:
    74f0:	27bdff28 	addiu	sp,sp,-216
    74f4:	afb0001c 	sw	s0,28(sp)
    74f8:	00808025 	move	s0,a0
    74fc:	afbf0024 	sw	ra,36(sp)
    7500:	afb10020 	sw	s1,32(sp)
    7504:	0c000000 	jal	0 <func_800437F0>
    7508:	8c840090 	lw	a0,144(a0)
    750c:	e7a00074 	swc1	$f0,116(sp)
    7510:	8e050090 	lw	a1,144(s0)
    7514:	0c000000 	jal	0 <func_800437F0>
    7518:	27a40060 	addiu	a0,sp,96
    751c:	3c030000 	lui	v1,0x0
    7520:	8c630000 	lw	v1,0(v1)
    7524:	2606005c 	addiu	a2,s0,92
    7528:	c4c60004 	lwc1	$f6,4(a2)
    752c:	846e01ec 	lh	t6,492(v1)
    7530:	c6040114 	lwc1	$f4,276(s0)
    7534:	00003825 	move	a3,zero
    7538:	448e4000 	mtc1	t6,$f8
    753c:	46062001 	sub.s	$f0,$f4,$f6
    7540:	27a40098 	addiu	a0,sp,152
    7544:	26050050 	addiu	a1,s0,80
    7548:	468042a0 	cvt.s.w	$f10,$f8
    754c:	460a003c 	c.lt.s	$f0,$f10
    7550:	00000000 	nop
    7554:	45030004 	bc1tl	7568 <Camera_Jump3+0x78>
    7558:	26110024 	addiu	s1,s0,36
    755c:	860f015e 	lh	t7,350(s0)
    7560:	15e00007 	bnez	t7,7580 <Camera_Jump3+0x90>
    7564:	26110024 	addiu	s1,s0,36
    7568:	86380022 	lh	t8,34(s1)
    756c:	53000015 	beqzl	t8,75c4 <Camera_Jump3+0xd4>
    7570:	26110024 	addiu	s1,s0,36
    7574:	a6200022 	sh	zero,34(s1)
    7578:	10000011 	b	75c0 <Camera_Jump3+0xd0>
    757c:	24070001 	li	a3,1
    7580:	847901ee 	lh	t9,494(v1)
    7584:	26110024 	addiu	s1,s0,36
    7588:	44992000 	mtc1	t9,$f4
    758c:	00000000 	nop
    7590:	468021a0 	cvt.s.w	$f6,$f4
    7594:	4600303c 	c.lt.s	$f6,$f0
    7598:	00000000 	nop
    759c:	45020009 	bc1fl	75c4 <Camera_Jump3+0xd4>
    75a0:	26110024 	addiu	s1,s0,36
    75a4:	86280022 	lh	t0,34(s1)
    75a8:	2401000a 	li	at,10
    75ac:	2409000a 	li	t1,10
    75b0:	51010004 	beql	t0,at,75c4 <Camera_Jump3+0xd4>
    75b4:	26110024 	addiu	s1,s0,36
    75b8:	a6290022 	sh	t1,34(s1)
    75bc:	24070001 	li	a3,1
    75c0:	26110024 	addiu	s1,s0,36
    75c4:	afa5003c 	sw	a1,60(sp)
    75c8:	afa60040 	sw	a2,64(sp)
    75cc:	0c000000 	jal	0 <func_800437F0>
    75d0:	afa70054 	sw	a3,84(sp)
    75d4:	26060074 	addiu	a2,s0,116
    75d8:	afa60038 	sw	a2,56(sp)
    75dc:	27a40090 	addiu	a0,sp,144
    75e0:	0c000000 	jal	0 <func_800437F0>
    75e4:	8fa5003c 	lw	a1,60(sp)
    75e8:	8603015e 	lh	v1,350(s0)
    75ec:	8fa70054 	lw	a3,84(sp)
    75f0:	1060000a 	beqz	v1,761c <Camera_Jump3+0x12c>
    75f4:	2401000a 	li	at,10
    75f8:	10610008 	beq	v1,at,761c <Camera_Jump3+0x12c>
    75fc:	24010014 	li	at,20
    7600:	10610006 	beq	v1,at,761c <Camera_Jump3+0x12c>
    7604:	00000000 	nop
    7608:	14e00004 	bnez	a3,761c <Camera_Jump3+0x12c>
    760c:	3c0a0000 	lui	t2,0x0
    7610:	8d4a0000 	lw	t2,0(t2)
    7614:	85430314 	lh	v1,788(t2)
    7618:	1060005c 	beqz	v1,778c <Camera_Jump3+0x29c>
    761c:	3c190000 	lui	t9,0x0
    7620:	8f390000 	lw	t9,0(t9)
    7624:	3c010000 	lui	at,0x0
    7628:	c4300000 	lwc1	$f16,0(at)
    762c:	872801f0 	lh	t0,496(t9)
    7630:	3c013f80 	lui	at,0x3f80
    7634:	44812000 	mtc1	at,$f4
    7638:	44884000 	mtc1	t0,$f8
    763c:	3c014288 	lui	at,0x4288
    7640:	c7ae0074 	lwc1	$f14,116(sp)
    7644:	468042a0 	cvt.s.w	$f10,$f8
    7648:	44814000 	mtc1	at,$f8
    764c:	860b0142 	lh	t3,322(s0)
    7650:	3c0d0000 	lui	t5,0x0
    7654:	862e0022 	lh	t6,34(s1)
    7658:	000b60c0 	sll	t4,t3,0x3
    765c:	46105082 	mul.s	$f2,$f10,$f16
    7660:	460e4283 	div.s	$f10,$f8,$f14
    7664:	01ac6821 	addu	t5,t5,t4
    7668:	8dad0004 	lw	t5,4(t5)
    766c:	000e78c0 	sll	t7,t6,0x3
    7670:	3c010000 	lui	at,0x0
    7674:	01afc021 	addu	t8,t5,t7
    7678:	46022180 	add.s	$f6,$f4,$f2
    767c:	8f020004 	lw	v0,4(t8)
    7680:	84490000 	lh	t1,0(v0)
    7684:	24420024 	addiu	v0,v0,36
    7688:	460a1102 	mul.s	$f4,$f2,$f10
    768c:	44895000 	mtc1	t1,$f10
    7690:	46107202 	mul.s	$f8,$f14,$f16
    7694:	46043301 	sub.s	$f12,$f6,$f4
    7698:	468051a0 	cvt.s.w	$f6,$f10
    769c:	460c4002 	mul.s	$f0,$f8,$f12
    76a0:	00000000 	nop
    76a4:	46003102 	mul.s	$f4,$f6,$f0
    76a8:	e6040000 	swc1	$f4,0(s0)
    76ac:	844affe0 	lh	t2,-32(v0)
    76b0:	448a4000 	mtc1	t2,$f8
    76b4:	00000000 	nop
    76b8:	468042a0 	cvt.s.w	$f10,$f8
    76bc:	46005182 	mul.s	$f6,$f10,$f0
    76c0:	e6060004 	swc1	$f6,4(s0)
    76c4:	844bffe4 	lh	t3,-28(v0)
    76c8:	448b2000 	mtc1	t3,$f4
    76cc:	3c0b0000 	lui	t3,0x0
    76d0:	46802220 	cvt.s.w	$f8,$f4
    76d4:	46004282 	mul.s	$f10,$f8,$f0
    76d8:	e60a0008 	swc1	$f10,8(s0)
    76dc:	844cffe8 	lh	t4,-24(v0)
    76e0:	c4280000 	lwc1	$f8,0(at)
    76e4:	3c013f00 	lui	at,0x3f00
    76e8:	448c3000 	mtc1	t4,$f6
    76ec:	00000000 	nop
    76f0:	46803120 	cvt.s.w	$f4,$f6
    76f4:	44813000 	mtc1	at,$f6
    76f8:	46082282 	mul.s	$f10,$f4,$f8
    76fc:	46065100 	add.s	$f4,$f10,$f6
    7700:	4600220d 	trunc.w.s	$f8,$f4
    7704:	440d4000 	mfc1	t5,$f8
    7708:	00000000 	nop
    770c:	a60d0020 	sh	t5,32(s0)
    7710:	844fffec 	lh	t7,-20(v0)
    7714:	448f5000 	mtc1	t7,$f10
    7718:	00000000 	nop
    771c:	468051a0 	cvt.s.w	$f6,$f10
    7720:	e606000c 	swc1	$f6,12(s0)
    7724:	8458fff0 	lh	t8,-16(v0)
    7728:	44982000 	mtc1	t8,$f4
    772c:	00000000 	nop
    7730:	46802220 	cvt.s.w	$f8,$f4
    7734:	e6080010 	swc1	$f8,16(s0)
    7738:	8459fff4 	lh	t9,-12(v0)
    773c:	44995000 	mtc1	t9,$f10
    7740:	00000000 	nop
    7744:	468051a0 	cvt.s.w	$f6,$f10
    7748:	46103102 	mul.s	$f4,$f6,$f16
    774c:	e6040014 	swc1	$f4,20(s0)
    7750:	8448fff8 	lh	t0,-8(v0)
    7754:	44884000 	mtc1	t0,$f8
    7758:	00000000 	nop
    775c:	468042a0 	cvt.s.w	$f10,$f8
    7760:	e60a0018 	swc1	$f10,24(s0)
    7764:	8449fffc 	lh	t1,-4(v0)
    7768:	44893000 	mtc1	t1,$f6
    776c:	00000000 	nop
    7770:	46803120 	cvt.s.w	$f4,$f6
    7774:	46102202 	mul.s	$f8,$f4,$f16
    7778:	e608001c 	swc1	$f8,28(s0)
    777c:	844a0000 	lh	t2,0(v0)
    7780:	a60a0022 	sh	t2,34(s0)
    7784:	8d6b0000 	lw	t3,0(t3)
    7788:	85630314 	lh	v1,788(t3)
    778c:	3c010000 	lui	at,0x0
    7790:	1060000b 	beqz	v1,77c0 <Camera_Jump3+0x2d0>
    7794:	c4300000 	lwc1	$f16,0(at)
    7798:	860c0144 	lh	t4,324(s0)
    779c:	02002025 	move	a0,s0
    77a0:	afac00c8 	sw	t4,200(sp)
    77a4:	862e0022 	lh	t6,34(s1)
    77a8:	0c000000 	jal	0 <func_800437F0>
    77ac:	a60e0144 	sh	t6,324(s0)
    77b0:	8fad00c8 	lw	t5,200(sp)
    77b4:	3c010000 	lui	at,0x0
    77b8:	a60d0144 	sh	t5,324(s0)
    77bc:	c4300000 	lwc1	$f16,0(at)
    77c0:	860f0022 	lh	t7,34(s0)
    77c4:	3c010000 	lui	at,0x0
    77c8:	ac2f0000 	sw	t7,0(at)
    77cc:	8602015e 	lh	v0,350(s0)
    77d0:	10400007 	beqz	v0,77f0 <Camera_Jump3+0x300>
    77d4:	2401000a 	li	at,10
    77d8:	10410005 	beq	v0,at,77f0 <Camera_Jump3+0x300>
    77dc:	24010014 	li	at,20
    77e0:	10410003 	beq	v0,at,77f0 <Camera_Jump3+0x300>
    77e4:	24010019 	li	at,25
    77e8:	14410013 	bne	v0,at,7838 <Camera_Jump3+0x348>
    77ec:	3c030000 	lui	v1,0x0
    77f0:	ae20000c 	sw	zero,12(s1)
    77f4:	c60a0104 	lwc1	$f10,260(s0)
    77f8:	a6200018 	sh	zero,24(s1)
    77fc:	86220018 	lh	v0,24(s1)
    7800:	2418000a 	li	t8,10
    7804:	a6380020 	sh	t8,32(s1)
    7808:	e62a001c 	swc1	$f10,28(s1)
    780c:	a6220014 	sh	v0,20(s1)
    7810:	a6220016 	sh	v0,22(s1)
    7814:	c606000c 	lwc1	$f6,12(s0)
    7818:	3c030000 	lui	v1,0x0
    781c:	e6260010 	swc1	$f6,16(s1)
    7820:	8619015e 	lh	t9,350(s0)
    7824:	27280001 	addiu	t0,t9,1
    7828:	a608015e 	sh	t0,350(s0)
    782c:	a620001a 	sh	zero,26(s1)
    7830:	10000006 	b	784c <Camera_Jump3+0x35c>
    7834:	8c630000 	lw	v1,0(v1)
    7838:	86220020 	lh	v0,32(s1)
    783c:	10400002 	beqz	v0,7848 <Camera_Jump3+0x358>
    7840:	2449ffff 	addiu	t1,v0,-1
    7844:	a6290020 	sh	t1,32(s1)
    7848:	8c630000 	lw	v1,0(v1)
    784c:	8fab0040 	lw	t3,64(sp)
    7850:	27aa00b0 	addiu	t2,sp,176
    7854:	8d6e0000 	lw	t6,0(t3)
    7858:	ad4e0000 	sw	t6,0(t2)
    785c:	8d6c0004 	lw	t4,4(t3)
    7860:	ad4c0004 	sw	t4,4(t2)
    7864:	8d6e0008 	lw	t6,8(t3)
    7868:	ad4e0008 	sw	t6,8(t2)
    786c:	846d01c6 	lh	t5,454(v1)
    7870:	846f01c8 	lh	t7,456(v1)
    7874:	c60000e0 	lwc1	$f0,224(s0)
    7878:	448d2000 	mtc1	t5,$f4
    787c:	448f5000 	mtc1	t7,$f10
    7880:	46802220 	cvt.s.w	$f8,$f4
    7884:	468051a0 	cvt.s.w	$f6,$f10
    7888:	46104082 	mul.s	$f2,$f8,$f16
    788c:	00000000 	nop
    7890:	46001482 	mul.s	$f18,$f2,$f0
    7894:	00000000 	nop
    7898:	46103102 	mul.s	$f4,$f6,$f16
    789c:	00000000 	nop
    78a0:	46002202 	mul.s	$f8,$f4,$f0
    78a4:	e7a800c0 	swc1	$f8,192(sp)
    78a8:	86380018 	lh	t8,24(s1)
    78ac:	13000003 	beqz	t8,78bc <Camera_Jump3+0x3cc>
    78b0:	00000000 	nop
    78b4:	10000002 	b	78c0 <Camera_Jump3+0x3d0>
    78b8:	e7a200bc 	swc1	$f2,188(sp)
    78bc:	e7b200bc 	swc1	$f18,188(sp)
    78c0:	8622001a 	lh	v0,26(s1)
    78c4:	1040001d 	beqz	v0,793c <Camera_Jump3+0x44c>
    78c8:	0002c840 	sll	t9,v0,0x1
    78cc:	44993000 	mtc1	t9,$f6
    78d0:	c62a0010 	lwc1	$f10,16(s1)
    78d4:	c60e00c8 	lwc1	$f14,200(s0)
    78d8:	46803120 	cvt.s.w	$f4,$f6
    78dc:	44069000 	mfc1	a2,$f18
    78e0:	3c073dcc 	lui	a3,0x3dcc
    78e4:	34e7cccd 	ori	a3,a3,0xcccd
    78e8:	e7b200c4 	swc1	$f18,196(sp)
    78ec:	0c000000 	jal	0 <func_800437F0>
    78f0:	46045300 	add.s	$f12,$f10,$f4
    78f4:	e60000c8 	swc1	$f0,200(s0)
    78f8:	8628001a 	lh	t0,26(s1)
    78fc:	3c014220 	lui	at,0x4220
    7900:	44815000 	mtc1	at,$f10
    7904:	00084840 	sll	t1,t0,0x1
    7908:	44894000 	mtc1	t1,$f8
    790c:	3c073dcc 	lui	a3,0x3dcc
    7910:	34e7cccd 	ori	a3,a3,0xcccd
    7914:	468041a0 	cvt.s.w	$f6,$f8
    7918:	8fa600c0 	lw	a2,192(sp)
    791c:	c60e00c4 	lwc1	$f14,196(s0)
    7920:	0c000000 	jal	0 <func_800437F0>
    7924:	460a3300 	add.s	$f12,$f6,$f10
    7928:	e60000c4 	swc1	$f0,196(s0)
    792c:	862a001a 	lh	t2,26(s1)
    7930:	254bffff 	addiu	t3,t2,-1
    7934:	10000011 	b	797c <Camera_Jump3+0x48c>
    7938:	a62b001a 	sh	t3,26(s1)
    793c:	c62c0010 	lwc1	$f12,16(s1)
    7940:	c60e00c8 	lwc1	$f14,200(s0)
    7944:	3c073dcc 	lui	a3,0x3dcc
    7948:	34e7cccd 	ori	a3,a3,0xcccd
    794c:	e7b200c4 	swc1	$f18,196(sp)
    7950:	0c000000 	jal	0 <func_800437F0>
    7954:	8fa600bc 	lw	a2,188(sp)
    7958:	3c014220 	lui	at,0x4220
    795c:	e60000c8 	swc1	$f0,200(s0)
    7960:	44816000 	mtc1	at,$f12
    7964:	3c073dcc 	lui	a3,0x3dcc
    7968:	34e7cccd 	ori	a3,a3,0xcccd
    796c:	8fa600c0 	lw	a2,192(sp)
    7970:	0c000000 	jal	0 <func_800437F0>
    7974:	c60e00c4 	lwc1	$f14,196(s0)
    7978:	e60000c4 	swc1	$f0,196(s0)
    797c:	3c0c0000 	lui	t4,0x0
    7980:	8d8c0000 	lw	t4,0(t4)
    7984:	3c010000 	lui	at,0x0
    7988:	c4260000 	lwc1	$f6,0(at)
    798c:	858e0198 	lh	t6,408(t4)
    7990:	3c073dcc 	lui	a3,0x3dcc
    7994:	34e7cccd 	ori	a3,a3,0xcccd
    7998:	448e2000 	mtc1	t6,$f4
    799c:	c60e00cc 	lwc1	$f14,204(s0)
    79a0:	8fa600c4 	lw	a2,196(sp)
    79a4:	46802220 	cvt.s.w	$f8,$f4
    79a8:	46064302 	mul.s	$f12,$f8,$f6
    79ac:	0c000000 	jal	0 <func_800437F0>
    79b0:	00000000 	nop
    79b4:	e60000cc 	swc1	$f0,204(s0)
    79b8:	3c0d0000 	lui	t5,0x0
    79bc:	8dad0000 	lw	t5,0(t5)
    79c0:	3c010000 	lui	at,0x0
    79c4:	c4280000 	lwc1	$f8,0(at)
    79c8:	85af019a 	lh	t7,410(t5)
    79cc:	3c073dcc 	lui	a3,0x3dcc
    79d0:	34e7cccd 	ori	a3,a3,0xcccd
    79d4:	448f5000 	mtc1	t7,$f10
    79d8:	8fa600c0 	lw	a2,192(sp)
    79dc:	c60e00d0 	lwc1	$f14,208(s0)
    79e0:	46805120 	cvt.s.w	$f4,$f10
    79e4:	46082302 	mul.s	$f12,$f4,$f8
    79e8:	0c000000 	jal	0 <func_800437F0>
    79ec:	00000000 	nop
    79f0:	e60000d0 	swc1	$f0,208(s0)
    79f4:	3c180000 	lui	t8,0x0
    79f8:	8f180000 	lw	t8,0(t8)
    79fc:	3c010000 	lui	at,0x0
    7a00:	c4240000 	lwc1	$f4,0(at)
    7a04:	8719019c 	lh	t9,412(t8)
    7a08:	3c010000 	lui	at,0x0
    7a0c:	c60800e0 	lwc1	$f8,224(s0)
    7a10:	44993000 	mtc1	t9,$f6
    7a14:	3c073dcc 	lui	a3,0x3dcc
    7a18:	34e7cccd 	ori	a3,a3,0xcccd
    7a1c:	468032a0 	cvt.s.w	$f10,$f6
    7a20:	c4260000 	lwc1	$f6,0(at)
    7a24:	46000386 	mov.s	$f14,$f0
    7a28:	46045302 	mul.s	$f12,$f10,$f4
    7a2c:	00000000 	nop
    7a30:	46064282 	mul.s	$f10,$f8,$f6
    7a34:	44065000 	mfc1	a2,$f10
    7a38:	0c000000 	jal	0 <func_800437F0>
    7a3c:	00000000 	nop
    7a40:	e60000d4 	swc1	$f0,212(s0)
    7a44:	02002025 	move	a0,s0
    7a48:	27a50090 	addiu	a1,sp,144
    7a4c:	8e060000 	lw	a2,0(s0)
    7a50:	0c000000 	jal	0 <func_800437F0>
    7a54:	86070022 	lh	a3,34(s0)
    7a58:	27a400a8 	addiu	a0,sp,168
    7a5c:	8fa5003c 	lw	a1,60(sp)
    7a60:	0c000000 	jal	0 <func_800437F0>
    7a64:	8fa60038 	lw	a2,56(sp)
    7a68:	86280020 	lh	t0,32(s1)
    7a6c:	8e060004 	lw	a2,4(s0)
    7a70:	8e070008 	lw	a3,8(s0)
    7a74:	02002025 	move	a0,s0
    7a78:	8fa500a8 	lw	a1,168(sp)
    7a7c:	0c000000 	jal	0 <func_800437F0>
    7a80:	afa80010 	sw	t0,16(sp)
    7a84:	e7a000a8 	swc1	$f0,168(sp)
    7a88:	e60000dc 	swc1	$f0,220(s0)
    7a8c:	26020094 	addiu	v0,s0,148
    7a90:	c44c0004 	lwc1	$f12,4(v0)
    7a94:	c6020104 	lwc1	$f2,260(s0)
    7a98:	3c014120 	lui	at,0x4120
    7a9c:	44812000 	mtc1	at,$f4
    7aa0:	460c103e 	c.le.s	$f2,$f12
    7aa4:	00000000 	nop
    7aa8:	45020004 	bc1fl	7abc <Camera_Jump3+0x5cc>
    7aac:	46026001 	sub.s	$f0,$f12,$f2
    7ab0:	10000003 	b	7ac0 <Camera_Jump3+0x5d0>
    7ab4:	46026001 	sub.s	$f0,$f12,$f2
    7ab8:	46026001 	sub.s	$f0,$f12,$f2
    7abc:	46000007 	neg.s	$f0,$f0
    7ac0:	4604003c 	c.lt.s	$f0,$f4
    7ac4:	c7a80064 	lwc1	$f8,100(sp)
    7ac8:	3c014248 	lui	at,0x4248
    7acc:	45030014 	bc1tl	7b20 <Camera_Jump3+0x630>
    7ad0:	86290018 	lh	t1,24(s1)
    7ad4:	c6000114 	lwc1	$f0,276(s0)
    7ad8:	44815000 	mtc1	at,$f10
    7adc:	c7a60064 	lwc1	$f6,100(sp)
    7ae0:	4608003e 	c.le.s	$f0,$f8
    7ae4:	3c0142c8 	lui	at,0x42c8
    7ae8:	45020004 	bc1fl	7afc <Camera_Jump3+0x60c>
    7aec:	46003081 	sub.s	$f2,$f6,$f0
    7af0:	10000003 	b	7b00 <Camera_Jump3+0x610>
    7af4:	46004081 	sub.s	$f2,$f8,$f0
    7af8:	46003081 	sub.s	$f2,$f6,$f0
    7afc:	46001087 	neg.s	$f2,$f2
    7b00:	460a103c 	c.lt.s	$f2,$f10
    7b04:	00000000 	nop
    7b08:	45030005 	bc1tl	7b20 <Camera_Jump3+0x630>
    7b0c:	86290018 	lh	t1,24(s1)
    7b10:	44812000 	mtc1	at,$f4
    7b14:	00000000 	nop
    7b18:	e60400c4 	swc1	$f4,196(s0)
    7b1c:	86290018 	lh	t1,24(s1)
    7b20:	02002025 	move	a0,s0
    7b24:	87a50096 	lh	a1,150(sp)
    7b28:	11200017 	beqz	t1,7b88 <Camera_Jump3+0x698>
    7b2c:	3c013f80 	lui	at,0x3f80
    7b30:	44814000 	mtc1	at,$f8
    7b34:	c60600c8 	lwc1	$f6,200(s0)
    7b38:	86240016 	lh	a0,22(s1)
    7b3c:	87a50096 	lh	a1,150(sp)
    7b40:	46064283 	div.s	$f10,$f8,$f6
    7b44:	2407000a 	li	a3,10
    7b48:	44065000 	mfc1	a2,$f10
    7b4c:	0c000000 	jal	0 <func_800437F0>
    7b50:	00000000 	nop
    7b54:	a7a200ae 	sh	v0,174(sp)
    7b58:	3c013f80 	lui	at,0x3f80
    7b5c:	44812000 	mtc1	at,$f4
    7b60:	c60800c8 	lwc1	$f8,200(s0)
    7b64:	86240014 	lh	a0,20(s1)
    7b68:	87a50094 	lh	a1,148(sp)
    7b6c:	46082183 	div.s	$f6,$f4,$f8
    7b70:	2407000a 	li	a3,10
    7b74:	44063000 	mfc1	a2,$f6
    7b78:	0c000000 	jal	0 <func_800437F0>
    7b7c:	00000000 	nop
    7b80:	1000000d 	b	7bb8 <Camera_Jump3+0x6c8>
    7b84:	a7a200ac 	sh	v0,172(sp)
    7b88:	44805000 	mtc1	zero,$f10
    7b8c:	8446000e 	lh	a2,14(v0)
    7b90:	8e070014 	lw	a3,20(s0)
    7b94:	0c000000 	jal	0 <func_800437F0>
    7b98:	e7aa0010 	swc1	$f10,16(sp)
    7b9c:	a7a200ae 	sh	v0,174(sp)
    7ba0:	86060020 	lh	a2,32(s0)
    7ba4:	02002025 	move	a0,s0
    7ba8:	87a50094 	lh	a1,148(sp)
    7bac:	0c000000 	jal	0 <func_800437F0>
    7bb0:	00003825 	move	a3,zero
    7bb4:	a7a200ac 	sh	v0,172(sp)
    7bb8:	3c030000 	lui	v1,0x0
    7bbc:	8c630000 	lw	v1,0(v1)
    7bc0:	27a600a8 	addiu	a2,sp,168
    7bc4:	8464019e 	lh	a0,414(v1)
    7bc8:	0082082a 	slt	at,a0,v0
    7bcc:	50200003 	beqzl	at,7bdc <Camera_Jump3+0x6ec>
    7bd0:	846201d8 	lh	v0,472(v1)
    7bd4:	a7a400ac 	sh	a0,172(sp)
    7bd8:	846201d8 	lh	v0,472(v1)
    7bdc:	87aa00ac 	lh	t2,172(sp)
    7be0:	0142082a 	slt	at,t2,v0
    7be4:	50200003 	beqzl	at,7bf4 <Camera_Jump3+0x704>
    7be8:	8fa40038 	lw	a0,56(sp)
    7bec:	a7a200ac 	sh	v0,172(sp)
    7bf0:	8fa40038 	lw	a0,56(sp)
    7bf4:	0c000000 	jal	0 <func_800437F0>
    7bf8:	8fa5003c 	lw	a1,60(sp)
    7bfc:	860b0140 	lh	t3,320(s0)
    7c00:	24010007 	li	at,7
    7c04:	55610038 	bnel	t3,at,7ce8 <Camera_Jump3+0x7f8>
    7c08:	c608000c 	lwc1	$f8,12(s0)
    7c0c:	860c0022 	lh	t4,34(s0)
    7c10:	02002025 	move	a0,s0
    7c14:	27a500a8 	addiu	a1,sp,168
    7c18:	318e0010 	andi	t6,t4,0x10
    7c1c:	15c00031 	bnez	t6,7ce4 <Camera_Jump3+0x7f4>
    7c20:	27ad00bc 	addiu	t5,sp,188
    7c24:	8e060004 	lw	a2,4(s0)
    7c28:	8e07000c 	lw	a3,12(s0)
    7c2c:	afb10014 	sw	s1,20(sp)
    7c30:	0c000000 	jal	0 <func_800437F0>
    7c34:	afad0010 	sw	t5,16(sp)
    7c38:	860f0022 	lh	t7,34(s0)
    7c3c:	87b9009c 	lh	t9,156(sp)
    7c40:	27a400a8 	addiu	a0,sp,168
    7c44:	31f80004 	andi	t8,t7,0x4
    7c48:	13000008 	beqz	t8,7c6c <Camera_Jump3+0x77c>
    7c4c:	8fa50040 	lw	a1,64(sp)
    7c50:	00194023 	negu	t0,t9
    7c54:	a6080134 	sh	t0,308(s0)
    7c58:	87a9009e 	lh	t1,158(sp)
    7c5c:	a6000138 	sh	zero,312(s0)
    7c60:	252a8001 	addiu	t2,t1,-32767
    7c64:	10000008 	b	7c88 <Camera_Jump3+0x798>
    7c68:	a60a0136 	sh	t2,310(s0)
    7c6c:	0c000000 	jal	0 <func_800437F0>
    7c70:	8fa6003c 	lw	a2,60(sp)
    7c74:	87ab00ac 	lh	t3,172(sp)
    7c78:	a60b0134 	sh	t3,308(s0)
    7c7c:	87ac00ae 	lh	t4,174(sp)
    7c80:	a6000138 	sh	zero,312(s0)
    7c84:	a60c0136 	sh	t4,310(s0)
    7c88:	862e0018 	lh	t6,24(s1)
    7c8c:	3c010000 	lui	at,0x0
    7c90:	c7a800bc 	lwc1	$f8,188(sp)
    7c94:	51c00021 	beqzl	t6,7d1c <Camera_Jump3+0x82c>
    7c98:	c60c0018 	lwc1	$f12,24(s0)
    7c9c:	c4240000 	lwc1	$f4,0(at)
    7ca0:	3c013f80 	lui	at,0x3f80
    7ca4:	44815000 	mtc1	at,$f10
    7ca8:	46082182 	mul.s	$f6,$f4,$f8
    7cac:	862d0016 	lh	t5,22(s1)
    7cb0:	86050136 	lh	a1,310(s0)
    7cb4:	2407000a 	li	a3,10
    7cb8:	25b98001 	addiu	t9,t5,-32767
    7cbc:	03255023 	subu	t2,t9,a1
    7cc0:	00aa2021 	addu	a0,a1,t2
    7cc4:	46065101 	sub.s	$f4,$f10,$f6
    7cc8:	00042400 	sll	a0,a0,0x10
    7ccc:	00042403 	sra	a0,a0,0x10
    7cd0:	44062000 	mfc1	a2,$f4
    7cd4:	0c000000 	jal	0 <func_800437F0>
    7cd8:	00000000 	nop
    7cdc:	1000000e 	b	7d18 <Camera_Jump3+0x828>
    7ce0:	a6020136 	sh	v0,310(s0)
    7ce4:	c608000c 	lwc1	$f8,12(s0)
    7ce8:	a6200018 	sh	zero,24(s1)
    7cec:	3c010000 	lui	at,0x0
    7cf0:	e6280010 	swc1	$f8,16(s1)
    7cf4:	8fac0038 	lw	t4,56(sp)
    7cf8:	ac200000 	sw	zero,0(at)
    7cfc:	8fab0040 	lw	t3,64(sp)
    7d00:	8d8d0000 	lw	t5,0(t4)
    7d04:	ad6d0000 	sw	t5,0(t3)
    7d08:	8d8e0004 	lw	t6,4(t4)
    7d0c:	ad6e0004 	sw	t6,4(t3)
    7d10:	8d8d0008 	lw	t5,8(t4)
    7d14:	ad6d0008 	sw	t5,8(t3)
    7d18:	c60c0018 	lwc1	$f12,24(s0)
    7d1c:	c60e00fc 	lwc1	$f14,252(s0)
    7d20:	8e0600d4 	lw	a2,212(s0)
    7d24:	0c000000 	jal	0 <func_800437F0>
    7d28:	3c073f80 	lui	a3,0x3f80
    7d2c:	e60000fc 	swc1	$f0,252(s0)
    7d30:	00002025 	move	a0,zero
    7d34:	8605015a 	lh	a1,346(s0)
    7d38:	3c063f00 	lui	a2,0x3f00
    7d3c:	0c000000 	jal	0 <func_800437F0>
    7d40:	2407000a 	li	a3,10
    7d44:	a602015a 	sh	v0,346(s0)
    7d48:	02002025 	move	a0,s0
    7d4c:	0c000000 	jal	0 <func_800437F0>
    7d50:	8e05001c 	lw	a1,28(s0)
    7d54:	e6000100 	swc1	$f0,256(s0)
    7d58:	8fbf0024 	lw	ra,36(sp)
    7d5c:	8fb10020 	lw	s1,32(sp)
    7d60:	8fb0001c 	lw	s0,28(sp)
    7d64:	27bd00d8 	addiu	sp,sp,216
    7d68:	03e00008 	jr	ra
    7d6c:	24020001 	li	v0,1

00007d70 <Camera_Jump4>:
    7d70:	27bdffe8 	addiu	sp,sp,-24
    7d74:	afbf0014 	sw	ra,20(sp)
    7d78:	0c000000 	jal	0 <func_800437F0>
    7d7c:	00000000 	nop
    7d80:	8fbf0014 	lw	ra,20(sp)
    7d84:	27bd0018 	addiu	sp,sp,24
    7d88:	03e00008 	jr	ra
    7d8c:	00000000 	nop

00007d90 <Camera_Jump0>:
    7d90:	27bdffe8 	addiu	sp,sp,-24
    7d94:	afbf0014 	sw	ra,20(sp)
    7d98:	0c000000 	jal	0 <func_800437F0>
    7d9c:	00000000 	nop
    7da0:	8fbf0014 	lw	ra,20(sp)
    7da4:	27bd0018 	addiu	sp,sp,24
    7da8:	03e00008 	jr	ra
    7dac:	00000000 	nop

00007db0 <Camera_Battle1>:
    7db0:	27bdfec0 	addiu	sp,sp,-320
    7db4:	afb00024 	sw	s0,36(sp)
    7db8:	00808025 	move	s0,a0
    7dbc:	afbf002c 	sw	ra,44(sp)
    7dc0:	afb10028 	sw	s1,40(sp)
    7dc4:	afa000e8 	sw	zero,232(sp)
    7dc8:	8c840090 	lw	a0,144(a0)
    7dcc:	0c000000 	jal	0 <func_800437F0>
    7dd0:	afa40088 	sw	a0,136(sp)
    7dd4:	e7a00064 	swc1	$f0,100(sp)
    7dd8:	8602015e 	lh	v0,350(s0)
    7ddc:	2401000a 	li	at,10
    7de0:	1040000a 	beqz	v0,7e0c <Camera_Battle1+0x5c>
    7de4:	00000000 	nop
    7de8:	10410008 	beq	v0,at,7e0c <Camera_Battle1+0x5c>
    7dec:	24010014 	li	at,20
    7df0:	10410006 	beq	v0,at,7e0c <Camera_Battle1+0x5c>
    7df4:	3c050000 	lui	a1,0x0
    7df8:	24a50000 	addiu	a1,a1,0
    7dfc:	8cae0000 	lw	t6,0(a1)
    7e00:	85c30314 	lh	v1,788(t6)
    7e04:	1060006c 	beqz	v1,7fb8 <Camera_Battle1+0x208>
    7e08:	00000000 	nop
    7e0c:	3c050000 	lui	a1,0x0
    7e10:	24a50000 	addiu	a1,a1,0
    7e14:	8cac0000 	lw	t4,0(a1)
    7e18:	3c010000 	lui	at,0x0
    7e1c:	c4300000 	lwc1	$f16,0(at)
    7e20:	858d01f0 	lh	t5,496(t4)
    7e24:	3c013f80 	lui	at,0x3f80
    7e28:	44814000 	mtc1	at,$f8
    7e2c:	448d2000 	mtc1	t5,$f4
    7e30:	3c014288 	lui	at,0x4288
    7e34:	860f0142 	lh	t7,322(s0)
    7e38:	468021a0 	cvt.s.w	$f6,$f4
    7e3c:	44812000 	mtc1	at,$f4
    7e40:	3c190000 	lui	t9,0x0
    7e44:	000fc0c0 	sll	t8,t7,0x3
    7e48:	86090144 	lh	t1,324(s0)
    7e4c:	0338c821 	addu	t9,t9,t8
    7e50:	46103082 	mul.s	$f2,$f6,$f16
    7e54:	46002183 	div.s	$f6,$f4,$f0
    7e58:	8f390004 	lw	t9,4(t9)
    7e5c:	000950c0 	sll	t2,t1,0x3
    7e60:	26110030 	addiu	s1,s0,48
    7e64:	032a5821 	addu	t3,t9,t2
    7e68:	8d620004 	lw	v0,4(t3)
    7e6c:	46024280 	add.s	$f10,$f8,$f2
    7e70:	844e0000 	lh	t6,0(v0)
    7e74:	2442002c 	addiu	v0,v0,44
    7e78:	448e2000 	mtc1	t6,$f4
    7e7c:	46061202 	mul.s	$f8,$f2,$f6
    7e80:	468021a0 	cvt.s.w	$f6,$f4
    7e84:	46085301 	sub.s	$f12,$f10,$f8
    7e88:	46103282 	mul.s	$f10,$f6,$f16
    7e8c:	00000000 	nop
    7e90:	46005202 	mul.s	$f8,$f10,$f0
    7e94:	00000000 	nop
    7e98:	460c4102 	mul.s	$f4,$f8,$f12
    7e9c:	e6040000 	swc1	$f4,0(s0)
    7ea0:	844fffd8 	lh	t7,-40(v0)
    7ea4:	448f3000 	mtc1	t7,$f6
    7ea8:	00000000 	nop
    7eac:	468032a0 	cvt.s.w	$f10,$f6
    7eb0:	e60a0004 	swc1	$f10,4(s0)
    7eb4:	8458ffdc 	lh	t8,-36(v0)
    7eb8:	44984000 	mtc1	t8,$f8
    7ebc:	00000000 	nop
    7ec0:	46804120 	cvt.s.w	$f4,$f8
    7ec4:	e6040008 	swc1	$f4,8(s0)
    7ec8:	8449ffe0 	lh	t1,-32(v0)
    7ecc:	44893000 	mtc1	t1,$f6
    7ed0:	24090028 	li	t1,40
    7ed4:	468032a0 	cvt.s.w	$f10,$f6
    7ed8:	e60a000c 	swc1	$f10,12(s0)
    7edc:	8459ffe4 	lh	t9,-28(v0)
    7ee0:	44994000 	mtc1	t9,$f8
    7ee4:	00000000 	nop
    7ee8:	46804120 	cvt.s.w	$f4,$f8
    7eec:	e6040010 	swc1	$f4,16(s0)
    7ef0:	844affe8 	lh	t2,-24(v0)
    7ef4:	448a3000 	mtc1	t2,$f6
    7ef8:	00000000 	nop
    7efc:	468032a0 	cvt.s.w	$f10,$f6
    7f00:	e60a0014 	swc1	$f10,20(s0)
    7f04:	844bffec 	lh	t3,-20(v0)
    7f08:	448b4000 	mtc1	t3,$f8
    7f0c:	00000000 	nop
    7f10:	46804120 	cvt.s.w	$f4,$f8
    7f14:	46102182 	mul.s	$f6,$f4,$f16
    7f18:	e6060018 	swc1	$f6,24(s0)
    7f1c:	844cfff0 	lh	t4,-16(v0)
    7f20:	448c5000 	mtc1	t4,$f10
    7f24:	00000000 	nop
    7f28:	46805220 	cvt.s.w	$f8,$f10
    7f2c:	e608001c 	swc1	$f8,28(s0)
    7f30:	844dfff4 	lh	t5,-12(v0)
    7f34:	448d2000 	mtc1	t5,$f4
    7f38:	00000000 	nop
    7f3c:	468021a0 	cvt.s.w	$f6,$f4
    7f40:	46103282 	mul.s	$f10,$f6,$f16
    7f44:	e60a0020 	swc1	$f10,32(s0)
    7f48:	844efff8 	lh	t6,-8(v0)
    7f4c:	a60e002c 	sh	t6,44(s0)
    7f50:	844ffffc 	lh	t7,-4(v0)
    7f54:	448f4000 	mtc1	t7,$f8
    7f58:	00000000 	nop
    7f5c:	46804120 	cvt.s.w	$f4,$f8
    7f60:	46102182 	mul.s	$f6,$f4,$f16
    7f64:	00000000 	nop
    7f68:	46003282 	mul.s	$f10,$f6,$f0
    7f6c:	00000000 	nop
    7f70:	460c5202 	mul.s	$f8,$f10,$f12
    7f74:	e6080024 	swc1	$f8,36(s0)
    7f78:	84580000 	lh	t8,0(v0)
    7f7c:	44982000 	mtc1	t8,$f4
    7f80:	00000000 	nop
    7f84:	468021a0 	cvt.s.w	$f6,$f4
    7f88:	46103282 	mul.s	$f10,$f6,$f16
    7f8c:	e60a0028 	swc1	$f10,40(s0)
    7f90:	a629001c 	sh	t1,28(s1)
    7f94:	8cb90000 	lw	t9,0(a1)
    7f98:	872a01ac 	lh	t2,428(t9)
    7f9c:	448a4000 	mtc1	t2,$f8
    7fa0:	00000000 	nop
    7fa4:	46804120 	cvt.s.w	$f4,$f8
    7fa8:	46102182 	mul.s	$f6,$f4,$f16
    7fac:	e6260010 	swc1	$f6,16(s1)
    7fb0:	8cab0000 	lw	t3,0(a1)
    7fb4:	85630314 	lh	v1,788(t3)
    7fb8:	3c010000 	lui	at,0x0
    7fbc:	c4300000 	lwc1	$f16,0(at)
    7fc0:	10600007 	beqz	v1,7fe0 <Camera_Battle1+0x230>
    7fc4:	26110030 	addiu	s1,s0,48
    7fc8:	0c000000 	jal	0 <func_800437F0>
    7fcc:	02002025 	move	a0,s0
    7fd0:	3c010000 	lui	at,0x0
    7fd4:	3c050000 	lui	a1,0x0
    7fd8:	24a50000 	addiu	a1,a1,0
    7fdc:	c4300000 	lwc1	$f16,0(at)
    7fe0:	c60a0004 	lwc1	$f10,4(s0)
    7fe4:	e7aa0080 	swc1	$f10,128(sp)
    7fe8:	c6080010 	lwc1	$f8,16(s0)
    7fec:	e7a8007c 	swc1	$f8,124(sp)
    7ff0:	c6040014 	lwc1	$f4,20(s0)
    7ff4:	e7a40078 	swc1	$f4,120(sp)
    7ff8:	c606001c 	lwc1	$f6,28(s0)
    7ffc:	e7a60074 	swc1	$f6,116(sp)
    8000:	8e0c0090 	lw	t4,144(s0)
    8004:	8d8d067c 	lw	t5,1660(t4)
    8008:	31ae1000 	andi	t6,t5,0x1000
    800c:	51c0004f 	beqzl	t6,814c <Camera_Battle1+0x39c>
    8010:	8622001c 	lh	v0,28(s1)
    8014:	8ca30000 	lw	v1,0(a1)
    8018:	3c013f00 	lui	at,0x3f00
    801c:	44813000 	mtc1	at,$f6
    8020:	846f01ac 	lh	t7,428(v1)
    8024:	847801c6 	lh	t8,454(v1)
    8028:	3c073dcc 	lui	a3,0x3dcc
    802c:	448f5000 	mtc1	t7,$f10
    8030:	34e7cccd 	ori	a3,a3,0xcccd
    8034:	c62e0010 	lwc1	$f14,16(s1)
    8038:	46805220 	cvt.s.w	$f8,$f10
    803c:	44985000 	mtc1	t8,$f10
    8040:	46104102 	mul.s	$f4,$f8,$f16
    8044:	46805220 	cvt.s.w	$f8,$f10
    8048:	46062302 	mul.s	$f12,$f4,$f6
    804c:	00000000 	nop
    8050:	46104102 	mul.s	$f4,$f8,$f16
    8054:	44062000 	mfc1	a2,$f4
    8058:	0c000000 	jal	0 <func_800437F0>
    805c:	00000000 	nop
    8060:	e6200010 	swc1	$f0,16(s1)
    8064:	3c090000 	lui	t1,0x0
    8068:	8d290000 	lw	t1,0(t1)
    806c:	3c010000 	lui	at,0x0
    8070:	c42c0000 	lwc1	$f12,0(at)
    8074:	853901c6 	lh	t9,454(t1)
    8078:	3c010000 	lui	at,0x0
    807c:	c4280000 	lwc1	$f8,0(at)
    8080:	44993000 	mtc1	t9,$f6
    8084:	3c073dcc 	lui	a3,0x3dcc
    8088:	34e7cccd 	ori	a3,a3,0xcccd
    808c:	468032a0 	cvt.s.w	$f10,$f6
    8090:	c60e00cc 	lwc1	$f14,204(s0)
    8094:	46085102 	mul.s	$f4,$f10,$f8
    8098:	44062000 	mfc1	a2,$f4
    809c:	0c000000 	jal	0 <func_800437F0>
    80a0:	00000000 	nop
    80a4:	e60000cc 	swc1	$f0,204(s0)
    80a8:	3c0a0000 	lui	t2,0x0
    80ac:	8d4a0000 	lw	t2,0(t2)
    80b0:	3c010000 	lui	at,0x0
    80b4:	c42c0000 	lwc1	$f12,0(at)
    80b8:	854b01c6 	lh	t3,454(t2)
    80bc:	3c010000 	lui	at,0x0
    80c0:	c4280000 	lwc1	$f8,0(at)
    80c4:	448b3000 	mtc1	t3,$f6
    80c8:	3c073dcc 	lui	a3,0x3dcc
    80cc:	34e7cccd 	ori	a3,a3,0xcccd
    80d0:	468032a0 	cvt.s.w	$f10,$f6
    80d4:	c60e00d0 	lwc1	$f14,208(s0)
    80d8:	46085102 	mul.s	$f4,$f10,$f8
    80dc:	44062000 	mfc1	a2,$f4
    80e0:	0c000000 	jal	0 <func_800437F0>
    80e4:	00000000 	nop
    80e8:	e60000d0 	swc1	$f0,208(s0)
    80ec:	8622001c 	lh	v0,28(s1)
    80f0:	3c050000 	lui	a1,0x0
    80f4:	24a50000 	addiu	a1,a1,0
    80f8:	2841ffed 	slti	at,v0,-19
    80fc:	14200003 	bnez	at,810c <Camera_Battle1+0x35c>
    8100:	244cffff 	addiu	t4,v0,-1
    8104:	1000000d 	b	813c <Camera_Battle1+0x38c>
    8108:	a62c001c 	sh	t4,28(s1)
    810c:	3c01437a 	lui	at,0x437a
    8110:	44813000 	mtc1	at,$f6
    8114:	3c014248 	lui	at,0x4248
    8118:	44815000 	mtc1	at,$f10
    811c:	3c014220 	lui	at,0x4220
    8120:	44814000 	mtc1	at,$f8
    8124:	3c014270 	lui	at,0x4270
    8128:	44812000 	mtc1	at,$f4
    812c:	e7a60080 	swc1	$f6,128(sp)
    8130:	e7aa007c 	swc1	$f10,124(sp)
    8134:	e7a80078 	swc1	$f8,120(sp)
    8138:	e7a40074 	swc1	$f4,116(sp)
    813c:	3c010000 	lui	at,0x0
    8140:	10000059 	b	82a8 <Camera_Battle1+0x4f8>
    8144:	c4300000 	lwc1	$f16,0(at)
    8148:	8622001c 	lh	v0,28(s1)
    814c:	3c01437a 	lui	at,0x437a
    8150:	240e0028 	li	t6,40
    8154:	0441000e 	bgez	v0,8190 <Camera_Battle1+0x3e0>
    8158:	244d0001 	addiu	t5,v0,1
    815c:	44813000 	mtc1	at,$f6
    8160:	3c014248 	lui	at,0x4248
    8164:	44815000 	mtc1	at,$f10
    8168:	3c014220 	lui	at,0x4220
    816c:	44814000 	mtc1	at,$f8
    8170:	3c014270 	lui	at,0x4270
    8174:	44812000 	mtc1	at,$f4
    8178:	e7a60080 	swc1	$f6,128(sp)
    817c:	e7aa007c 	swc1	$f10,124(sp)
    8180:	e7a80078 	swc1	$f8,120(sp)
    8184:	e7a40074 	swc1	$f4,116(sp)
    8188:	10000047 	b	82a8 <Camera_Battle1+0x4f8>
    818c:	a62d001c 	sh	t5,28(s1)
    8190:	a62e001c 	sh	t6,28(s1)
    8194:	8ca30000 	lw	v1,0(a1)
    8198:	3c073dcc 	lui	a3,0x3dcc
    819c:	34e7cccd 	ori	a3,a3,0xcccd
    81a0:	846f01ac 	lh	t7,428(v1)
    81a4:	847801c6 	lh	t8,454(v1)
    81a8:	c62e0010 	lwc1	$f14,16(s1)
    81ac:	448f3000 	mtc1	t7,$f6
    81b0:	44984000 	mtc1	t8,$f8
    81b4:	468032a0 	cvt.s.w	$f10,$f6
    81b8:	46804120 	cvt.s.w	$f4,$f8
    81bc:	46105302 	mul.s	$f12,$f10,$f16
    81c0:	00000000 	nop
    81c4:	46102182 	mul.s	$f6,$f4,$f16
    81c8:	44063000 	mfc1	a2,$f6
    81cc:	0c000000 	jal	0 <func_800437F0>
    81d0:	00000000 	nop
    81d4:	e6200010 	swc1	$f0,16(s1)
    81d8:	3c030000 	lui	v1,0x0
    81dc:	8c630000 	lw	v1,0(v1)
    81e0:	3c010000 	lui	at,0x0
    81e4:	c4240000 	lwc1	$f4,0(at)
    81e8:	846901e4 	lh	t1,484(v1)
    81ec:	847901c6 	lh	t9,454(v1)
    81f0:	3c010000 	lui	at,0x0
    81f4:	44895000 	mtc1	t1,$f10
    81f8:	44993000 	mtc1	t9,$f6
    81fc:	3c073dcc 	lui	a3,0x3dcc
    8200:	46805220 	cvt.s.w	$f8,$f10
    8204:	34e7cccd 	ori	a3,a3,0xcccd
    8208:	c60e00cc 	lwc1	$f14,204(s0)
    820c:	468032a0 	cvt.s.w	$f10,$f6
    8210:	46044302 	mul.s	$f12,$f8,$f4
    8214:	c4280000 	lwc1	$f8,0(at)
    8218:	c60600e0 	lwc1	$f6,224(s0)
    821c:	46085102 	mul.s	$f4,$f10,$f8
    8220:	00000000 	nop
    8224:	46062282 	mul.s	$f10,$f4,$f6
    8228:	44065000 	mfc1	a2,$f10
    822c:	0c000000 	jal	0 <func_800437F0>
    8230:	00000000 	nop
    8234:	e60000cc 	swc1	$f0,204(s0)
    8238:	3c030000 	lui	v1,0x0
    823c:	8c630000 	lw	v1,0(v1)
    8240:	3c010000 	lui	at,0x0
    8244:	c4260000 	lwc1	$f6,0(at)
    8248:	846a01e4 	lh	t2,484(v1)
    824c:	846b01c8 	lh	t3,456(v1)
    8250:	3c010000 	lui	at,0x0
    8254:	448a4000 	mtc1	t2,$f8
    8258:	448b5000 	mtc1	t3,$f10
    825c:	3c073dcc 	lui	a3,0x3dcc
    8260:	46804120 	cvt.s.w	$f4,$f8
    8264:	34e7cccd 	ori	a3,a3,0xcccd
    8268:	c60e00d0 	lwc1	$f14,208(s0)
    826c:	46805220 	cvt.s.w	$f8,$f10
    8270:	46062302 	mul.s	$f12,$f4,$f6
    8274:	c4240000 	lwc1	$f4,0(at)
    8278:	c60a00e0 	lwc1	$f10,224(s0)
    827c:	46044182 	mul.s	$f6,$f8,$f4
    8280:	00000000 	nop
    8284:	460a3202 	mul.s	$f8,$f6,$f10
    8288:	44064000 	mfc1	a2,$f8
    828c:	0c000000 	jal	0 <func_800437F0>
    8290:	00000000 	nop
    8294:	e60000d0 	swc1	$f0,208(s0)
    8298:	3c010000 	lui	at,0x0
    829c:	3c050000 	lui	a1,0x0
    82a0:	24a50000 	addiu	a1,a1,0
    82a4:	c4300000 	lwc1	$f16,0(at)
    82a8:	8cac0000 	lw	t4,0(a1)
    82ac:	3c010000 	lui	at,0x0
    82b0:	c4280000 	lwc1	$f8,0(at)
    82b4:	858d019c 	lh	t5,412(t4)
    82b8:	c60a00e0 	lwc1	$f10,224(s0)
    82bc:	3c073dcc 	lui	a3,0x3dcc
    82c0:	448d2000 	mtc1	t5,$f4
    82c4:	34e7cccd 	ori	a3,a3,0xcccd
    82c8:	c60e00d4 	lwc1	$f14,212(s0)
    82cc:	468021a0 	cvt.s.w	$f6,$f4
    82d0:	46103302 	mul.s	$f12,$f6,$f16
    82d4:	00000000 	nop
    82d8:	46085102 	mul.s	$f4,$f10,$f8
    82dc:	44062000 	mfc1	a2,$f4
    82e0:	0c000000 	jal	0 <func_800437F0>
    82e4:	00000000 	nop
    82e8:	e60000d4 	swc1	$f0,212(s0)
    82ec:	c7a60064 	lwc1	$f6,100(sp)
    82f0:	c60a0000 	lwc1	$f10,0(s0)
    82f4:	26050050 	addiu	a1,s0,80
    82f8:	2606005c 	addiu	a2,s0,92
    82fc:	460a3200 	add.s	$f8,$f6,$f10
    8300:	afa6004c 	sw	a2,76(sp)
    8304:	afa50048 	sw	a1,72(sp)
    8308:	27a4009c 	addiu	a0,sp,156
    830c:	0c000000 	jal	0 <func_800437F0>
    8310:	e7a80064 	swc1	$f8,100(sp)
    8314:	26060074 	addiu	a2,s0,116
    8318:	afa60044 	sw	a2,68(sp)
    831c:	27a40094 	addiu	a0,sp,148
    8320:	0c000000 	jal	0 <func_800437F0>
    8324:	8fa50048 	lw	a1,72(sp)
    8328:	8e0300a8 	lw	v1,168(s0)
    832c:	10600004 	beqz	v1,8340 <Camera_Battle1+0x590>
    8330:	00000000 	nop
    8334:	8c6e0130 	lw	t6,304(v1)
    8338:	55c0000c 	bnezl	t6,836c <Camera_Battle1+0x5bc>
    833c:	860f002c 	lh	t7,44(s0)
    8340:	14600003 	bnez	v1,8350 <Camera_Battle1+0x5a0>
    8344:	3c040000 	lui	a0,0x0
    8348:	0c000000 	jal	0 <func_800437F0>
    834c:	24840000 	addiu	a0,a0,0
    8350:	ae0000a8 	sw	zero,168(s0)
    8354:	02002025 	move	a0,s0
    8358:	0c000000 	jal	0 <func_800437F0>
    835c:	24050001 	li	a1,1
    8360:	100002a3 	b	8df0 <Camera_Battle1+0x1040>
    8364:	24020001 	li	v0,1
    8368:	860f002c 	lh	t7,44(s0)
    836c:	3c010000 	lui	at,0x0
    8370:	ac2f0000 	sw	t7,0(at)
    8374:	8602015e 	lh	v0,350(s0)
    8378:	2401000a 	li	at,10
    837c:	50400006 	beqzl	v0,8398 <Camera_Battle1+0x5e8>
    8380:	44802000 	mtc1	zero,$f4
    8384:	10410003 	beq	v0,at,8394 <Camera_Battle1+0x5e4>
    8388:	24010014 	li	at,20
    838c:	5441002b 	bnel	v0,at,843c <Camera_Battle1+0x68c>
    8390:	86180140 	lh	t8,320(s0)
    8394:	44802000 	mtc1	zero,$f4
    8398:	a6200014 	sh	zero,20(s1)
    839c:	3c040000 	lui	a0,0x0
    83a0:	e6240004 	swc1	$f4,4(s1)
    83a4:	8e1800a8 	lw	t8,168(s0)
    83a8:	ae38000c 	sw	t8,12(s1)
    83ac:	8609015e 	lh	t1,350(s0)
    83b0:	25390001 	addiu	t9,t1,1
    83b4:	a619015e 	sh	t9,350(s0)
    83b8:	8e2a000c 	lw	t2,12(s1)
    83bc:	85450000 	lh	a1,0(t2)
    83c0:	18a00006 	blez	a1,83dc <Camera_Battle1+0x62c>
    83c4:	00000000 	nop
    83c8:	3c040000 	lui	a0,0x0
    83cc:	0c000000 	jal	0 <func_800437F0>
    83d0:	24840000 	addiu	a0,a0,0
    83d4:	10000009 	b	83fc <Camera_Battle1+0x64c>
    83d8:	3c030000 	lui	v1,0x0
    83dc:	0c000000 	jal	0 <func_800437F0>
    83e0:	24840000 	addiu	a0,a0,0
    83e4:	ae0000a8 	sw	zero,168(s0)
    83e8:	02002025 	move	a0,s0
    83ec:	0c000000 	jal	0 <func_800437F0>
    83f0:	24050001 	li	a1,1
    83f4:	1000027e 	b	8df0 <Camera_Battle1+0x1040>
    83f8:	24020001 	li	v0,1
    83fc:	8c630000 	lw	v1,0(v1)
    8400:	846b01c4 	lh	t3,452(v1)
    8404:	846c01c2 	lh	t4,450(v1)
    8408:	016c6821 	addu	t5,t3,t4
    840c:	a62d001a 	sh	t5,26(s1)
    8410:	87ae00a2 	lh	t6,162(sp)
    8414:	a62e0016 	sh	t6,22(s1)
    8418:	87af00a0 	lh	t7,160(sp)
    841c:	a62f0018 	sh	t7,24(s1)
    8420:	c7a6009c 	lwc1	$f6,156(sp)
    8424:	e6260000 	swc1	$f6,0(s1)
    8428:	c60800f4 	lwc1	$f8,244(s0)
    842c:	c60a0098 	lwc1	$f10,152(s0)
    8430:	46085101 	sub.s	$f4,$f10,$f8
    8434:	e6240008 	swc1	$f4,8(s1)
    8438:	86180140 	lh	t8,320(s0)
    843c:	24010007 	li	at,7
    8440:	24090001 	li	t1,1
    8444:	5701000b 	bnel	t8,at,8474 <Camera_Battle1+0x6c4>
    8448:	c6060098 	lwc1	$f6,152(s0)
    844c:	87b900a0 	lh	t9,160(sp)
    8450:	3c010000 	lui	at,0x0
    8454:	ac290000 	sw	t1,0(at)
    8458:	00195023 	negu	t2,t9
    845c:	a60a0134 	sh	t2,308(s0)
    8460:	87ab00a2 	lh	t3,162(sp)
    8464:	a6000138 	sh	zero,312(s0)
    8468:	256c8001 	addiu	t4,t3,-32767
    846c:	a60c0136 	sh	t4,310(s0)
    8470:	c6060098 	lwc1	$f6,152(s0)
    8474:	c60a0104 	lwc1	$f10,260(s0)
    8478:	460a3032 	c.eq.s	$f6,$f10
    847c:	00000000 	nop
    8480:	4503000f 	bc1tl	84c0 <Camera_Battle1+0x710>
    8484:	c6060098 	lwc1	$f6,152(s0)
    8488:	8e040090 	lw	a0,144(s0)
    848c:	3c010000 	lui	at,0x0
    8490:	c4280000 	lwc1	$f8,0(at)
    8494:	c484006c 	lwc1	$f4,108(a0)
    8498:	4604403c 	c.lt.s	$f8,$f4
    849c:	00000000 	nop
    84a0:	45030007 	bc1tl	84c0 <Camera_Battle1+0x710>
    84a4:	c6060098 	lwc1	$f6,152(s0)
    84a8:	8c8d067c 	lw	t5,1660(a0)
    84ac:	24060001 	li	a2,1
    84b0:	000d7280 	sll	t6,t5,0xa
    84b4:	05c10005 	bgez	t6,84cc <Camera_Battle1+0x71c>
    84b8:	00000000 	nop
    84bc:	c6060098 	lwc1	$f6,152(s0)
    84c0:	00003025 	move	a2,zero
    84c4:	10000001 	b	84cc <Camera_Battle1+0x71c>
    84c8:	e6260008 	swc1	$f6,8(s1)
    84cc:	862f001a 	lh	t7,26(s1)
    84d0:	02002025 	move	a0,s0
    84d4:	55e0000c 	bnezl	t7,8508 <Camera_Battle1+0x758>
    84d8:	260400ac 	addiu	a0,s0,172
    84dc:	50c00004 	beqzl	a2,84f0 <Camera_Battle1+0x740>
    84e0:	c6020020 	lwc1	$f2,32(s0)
    84e4:	10000002 	b	84f0 <Camera_Battle1+0x740>
    84e8:	c6020028 	lwc1	$f2,40(s0)
    84ec:	c6020020 	lwc1	$f2,32(s0)
    84f0:	44051000 	mfc1	a1,$f2
    84f4:	0c000000 	jal	0 <func_800437F0>
    84f8:	a7a60084 	sh	a2,132(sp)
    84fc:	87a60084 	lh	a2,132(sp)
    8500:	e6000100 	swc1	$f0,256(s0)
    8504:	260400ac 	addiu	a0,s0,172
    8508:	8e0500a8 	lw	a1,168(s0)
    850c:	a7a60084 	sh	a2,132(sp)
    8510:	0c000000 	jal	0 <func_800437F0>
    8514:	afa40038 	sw	a0,56(sp)
    8518:	8e0300a8 	lw	v1,168(s0)
    851c:	8e27000c 	lw	a3,12(s1)
    8520:	87a60084 	lh	a2,132(sp)
    8524:	02002025 	move	a0,s0
    8528:	10670009 	beq	v1,a3,8550 <Camera_Battle1+0x7a0>
    852c:	27a50094 	addiu	a1,sp,148
    8530:	3c040000 	lui	a0,0x0
    8534:	24840000 	addiu	a0,a0,0
    8538:	84e50000 	lh	a1,0(a3)
    853c:	0c000000 	jal	0 <func_800437F0>
    8540:	84660000 	lh	a2,0(v1)
    8544:	a600015e 	sh	zero,350(s0)
    8548:	10000229 	b	8df0 <Camera_Battle1+0x1040>
    854c:	24020001 	li	v0,1
    8550:	10c00003 	beqz	a2,8560 <Camera_Battle1+0x7b0>
    8554:	26030094 	addiu	v1,s0,148
    8558:	10000002 	b	8564 <Camera_Battle1+0x7b4>
    855c:	c6020024 	lwc1	$f2,36(s0)
    8560:	c6020000 	lwc1	$f2,0(s0)
    8564:	10c00003 	beqz	a2,8574 <Camera_Battle1+0x7c4>
    8568:	c7aa0080 	lwc1	$f10,128(sp)
    856c:	10000002 	b	8578 <Camera_Battle1+0x7c8>
    8570:	24020081 	li	v0,129
    8574:	24020001 	li	v0,1
    8578:	26380008 	addiu	t8,s1,8
    857c:	27a900a4 	addiu	t1,sp,164
    8580:	afa90018 	sw	t1,24(sp)
    8584:	afb80014 	sw	t8,20(sp)
    8588:	e7aa0010 	swc1	$f10,16(sp)
    858c:	8619002c 	lh	t9,44(s0)
    8590:	44071000 	mfc1	a3,$f2
    8594:	afa30040 	sw	v1,64(sp)
    8598:	00595025 	or	t2,v0,t9
    859c:	afaa001c 	sw	t2,28(sp)
    85a0:	0c000000 	jal	0 <func_800437F0>
    85a4:	8fa60038 	lw	a2,56(sp)
    85a8:	8fa30040 	lw	v1,64(sp)
    85ac:	87a800aa 	lh	t0,170(sp)
    85b0:	27a5011c 	addiu	a1,sp,284
    85b4:	8c6c0000 	lw	t4,0(v1)
    85b8:	27a400a4 	addiu	a0,sp,164
    85bc:	acac0000 	sw	t4,0(a1)
    85c0:	8c6b0004 	lw	t3,4(v1)
    85c4:	acab0004 	sw	t3,4(a1)
    85c8:	8c6c0008 	lw	t4,8(v1)
    85cc:	acac0008 	sw	t4,8(a1)
    85d0:	c7a80120 	lwc1	$f8,288(sp)
    85d4:	c7a40064 	lwc1	$f4,100(sp)
    85d8:	8fa60038 	lw	a2,56(sp)
    85dc:	a7a8008c 	sh	t0,140(sp)
    85e0:	46044180 	add.s	$f6,$f8,$f4
    85e4:	0c000000 	jal	0 <func_800437F0>
    85e8:	e7a60120 	swc1	$f6,288(sp)
    85ec:	c7a000a4 	lwc1	$f0,164(sp)
    85f0:	c7a20080 	lwc1	$f2,128(sp)
    85f4:	87a8008c 	lh	t0,140(sp)
    85f8:	3c013f80 	lui	at,0x3f80
    85fc:	4600103c 	c.lt.s	$f2,$f0
    8600:	00000000 	nop
    8604:	45020005 	bc1fl	861c <Camera_Battle1+0x86c>
    8608:	46020203 	div.s	$f8,$f0,$f2
    860c:	44815000 	mtc1	at,$f10
    8610:	10000003 	b	8620 <Camera_Battle1+0x870>
    8614:	e7aa00e4 	swc1	$f10,228(sp)
    8618:	46020203 	div.s	$f8,$f0,$f2
    861c:	e7a800e4 	swc1	$f8,228(sp)
    8620:	8fad0038 	lw	t5,56(sp)
    8624:	27a60110 	addiu	a2,sp,272
    8628:	27a400ac 	addiu	a0,sp,172
    862c:	8daf0000 	lw	t7,0(t5)
    8630:	accf0000 	sw	t7,0(a2)
    8634:	8dae0004 	lw	t6,4(t5)
    8638:	acce0004 	sw	t6,4(a2)
    863c:	8daf0008 	lw	t7,8(t5)
    8640:	accf0008 	sw	t7,8(a2)
    8644:	a7a8008c 	sh	t0,140(sp)
    8648:	0c000000 	jal	0 <func_800437F0>
    864c:	8fa50048 	lw	a1,72(sp)
    8650:	c7ac00ac 	lwc1	$f12,172(sp)
    8654:	c7a40080 	lwc1	$f4,128(sp)
    8658:	3c013f00 	lui	at,0x3f00
    865c:	44815000 	mtc1	at,$f10
    8660:	4604603e 	c.le.s	$f12,$f4
    8664:	87a8008c 	lh	t0,140(sp)
    8668:	c7a20080 	lwc1	$f2,128(sp)
    866c:	45000003 	bc1f	867c <Camera_Battle1+0x8cc>
    8670:	00000000 	nop
    8674:	10000001 	b	867c <Camera_Battle1+0x8cc>
    8678:	46006086 	mov.s	$f2,$f12
    867c:	460a1202 	mul.s	$f8,$f2,$f10
    8680:	c7ac0080 	lwc1	$f12,128(sp)
    8684:	3c010000 	lui	at,0x0
    8688:	c42a0000 	lwc1	$f10,0(at)
    868c:	3c030000 	lui	v1,0x0
    8690:	8c630000 	lw	v1,0(v1)
    8694:	3c010000 	lui	at,0x0
    8698:	46086101 	sub.s	$f4,$f12,$f8
    869c:	c7a800e4 	lwc1	$f8,228(sp)
    86a0:	3c074000 	lui	a3,0x4000
    86a4:	e7a400ac 	swc1	$f4,172(sp)
    86a8:	46085101 	sub.s	$f4,$f10,$f8
    86ac:	c60a000c 	lwc1	$f10,12(s0)
    86b0:	c6000008 	lwc1	$f0,8(s0)
    86b4:	847801ae 	lh	t8,430(v1)
    86b8:	46005201 	sub.s	$f8,$f10,$f0
    86bc:	46044282 	mul.s	$f10,$f8,$f4
    86c0:	44984000 	mtc1	t8,$f8
    86c4:	00000000 	nop
    86c8:	46804120 	cvt.s.w	$f4,$f8
    86cc:	460a0480 	add.s	$f18,$f0,$f10
    86d0:	46122280 	add.s	$f10,$f4,$f18
    86d4:	e7aa00f8 	swc1	$f10,248(sp)
    86d8:	846901aa 	lh	t1,426(v1)
    86dc:	c42a0000 	lwc1	$f10,0(at)
    86e0:	c60e00dc 	lwc1	$f14,220(s0)
    86e4:	44894000 	mtc1	t1,$f8
    86e8:	e7b200f4 	swc1	$f18,244(sp)
    86ec:	a7a8008c 	sh	t0,140(sp)
    86f0:	46804120 	cvt.s.w	$f4,$f8
    86f4:	460a2182 	mul.s	$f6,$f4,$f10
    86f8:	44063000 	mfc1	a2,$f6
    86fc:	0c000000 	jal	0 <func_800437F0>
    8700:	00000000 	nop
    8704:	87a8008c 	lh	t0,140(sp)
    8708:	c7b200f4 	lwc1	$f18,244(sp)
    870c:	e60000dc 	swc1	$f0,220(s0)
    8710:	87b9009a 	lh	t9,154(sp)
    8714:	87aa00b2 	lh	t2,178(sp)
    8718:	e7a000b4 	swc1	$f0,180(sp)
    871c:	272b8001 	addiu	t3,t9,-32767
    8720:	000b6400 	sll	t4,t3,0x10
    8724:	a7b900ba 	sh	t9,186(sp)
    8728:	8623001a 	lh	v1,26(s1)
    872c:	000c6c03 	sra	t5,t4,0x10
    8730:	014d1023 	subu	v0,t2,t5
    8734:	00022c00 	sll	a1,v0,0x10
    8738:	1060007b 	beqz	v1,8928 <Camera_Battle1+0xb78>
    873c:	00052c03 	sra	a1,a1,0x10
    8740:	3c0e0000 	lui	t6,0x0
    8744:	8dce0000 	lw	t6,0(t6)
    8748:	27a400a4 	addiu	a0,sp,164
    874c:	24190001 	li	t9,1
    8750:	85c201c4 	lh	v0,452(t6)
    8754:	0062082a 	slt	at,v1,v0
    8758:	1420006f 	bnez	at,8918 <Camera_Battle1+0xb68>
    875c:	00627823 	subu	t7,v1,v0
    8760:	a7af0086 	sh	t7,134(sp)
    8764:	8fa50048 	lw	a1,72(sp)
    8768:	8fa6004c 	lw	a2,76(sp)
    876c:	0c000000 	jal	0 <func_800437F0>
    8770:	a7a8008c 	sh	t0,140(sp)
    8774:	87a8008c 	lh	t0,140(sp)
    8778:	3c030000 	lui	v1,0x0
    877c:	8c630000 	lw	v1,0(v1)
    8780:	25188001 	addiu	t8,t0,-32767
    8784:	a7b800aa 	sh	t8,170(sp)
    8788:	846901c2 	lh	t1,450(v1)
    878c:	3c013f80 	lui	at,0x3f80
    8790:	44818000 	mtc1	at,$f16
    8794:	44894000 	mtc1	t1,$f8
    8798:	87ab00aa 	lh	t3,170(sp)
    879c:	86390016 	lh	t9,22(s1)
    87a0:	46804120 	cvt.s.w	$f4,$f8
    87a4:	c62a0000 	lwc1	$f10,0(s1)
    87a8:	032b6023 	subu	t4,t9,t3
    87ac:	c7a600a4 	lwc1	$f6,164(sp)
    87b0:	000c5400 	sll	t2,t4,0x10
    87b4:	000a6c03 	sra	t5,t2,0x10
    87b8:	46048003 	div.s	$f0,$f16,$f4
    87bc:	448d2000 	mtc1	t5,$f4
    87c0:	87a900a8 	lh	t1,168(sp)
    87c4:	87ad0086 	lh	t5,134(sp)
    87c8:	46065201 	sub.s	$f8,$f10,$f6
    87cc:	3c010000 	lui	at,0x0
    87d0:	44078000 	mfc1	a3,$f16
    87d4:	468022a0 	cvt.s.w	$f10,$f4
    87d8:	c7ae009c 	lwc1	$f14,156(sp)
    87dc:	46004082 	mul.s	$f2,$f8,$f0
    87e0:	00000000 	nop
    87e4:	46005202 	mul.s	$f8,$f10,$f0
    87e8:	4600410d 	trunc.w.s	$f4,$f8
    87ec:	440f2000 	mfc1	t7,$f4
    87f0:	00000000 	nop
    87f4:	a7af008e 	sh	t7,142(sp)
    87f8:	86380018 	lh	t8,24(s1)
    87fc:	846e01cc 	lh	t6,460(v1)
    8800:	0309c823 	subu	t9,t8,t1
    8804:	00195c00 	sll	t3,t9,0x10
    8808:	000b6403 	sra	t4,t3,0x10
    880c:	448c5000 	mtc1	t4,$f10
    8810:	00000000 	nop
    8814:	46805220 	cvt.s.w	$f8,$f10
    8818:	46004102 	mul.s	$f4,$f8,$f0
    881c:	448d4000 	mtc1	t5,$f8
    8820:	4600228d 	trunc.w.s	$f10,$f4
    8824:	46804120 	cvt.s.w	$f4,$f8
    8828:	44085000 	mfc1	t0,$f10
    882c:	448e4000 	mtc1	t6,$f8
    8830:	00084400 	sll	t0,t0,0x10
    8834:	00084403 	sra	t0,t0,0x10
    8838:	46022282 	mul.s	$f10,$f4,$f2
    883c:	a7a8008c 	sh	t0,140(sp)
    8840:	46804120 	cvt.s.w	$f4,$f8
    8844:	46065300 	add.s	$f12,$f10,$f6
    8848:	c42a0000 	lwc1	$f10,0(at)
    884c:	460a2182 	mul.s	$f6,$f4,$f10
    8850:	44063000 	mfc1	a2,$f6
    8854:	0c000000 	jal	0 <func_800437F0>
    8858:	00000000 	nop
    885c:	3c0b0000 	lui	t3,0x0
    8860:	8d6b0000 	lw	t3,0(t3)
    8864:	e7a000b4 	swc1	$f0,180(sp)
    8868:	87af008e 	lh	t7,142(sp)
    886c:	856c01cc 	lh	t4,460(t3)
    8870:	87b80086 	lh	t8,134(sp)
    8874:	3c010000 	lui	at,0x0
    8878:	448c4000 	mtc1	t4,$f8
    887c:	01f80019 	multu	t7,t8
    8880:	c42a0000 	lwc1	$f10,0(at)
    8884:	46804120 	cvt.s.w	$f4,$f8
    8888:	87b900aa 	lh	t9,170(sp)
    888c:	87a500a2 	lh	a1,162(sp)
    8890:	2407000a 	li	a3,10
    8894:	460a2182 	mul.s	$f6,$f4,$f10
    8898:	00004812 	mflo	t1
    889c:	03292021 	addu	a0,t9,t1
    88a0:	00042400 	sll	a0,a0,0x10
    88a4:	00042403 	sra	a0,a0,0x10
    88a8:	44063000 	mfc1	a2,$f6
    88ac:	0c000000 	jal	0 <func_800437F0>
    88b0:	00000000 	nop
    88b4:	3c0f0000 	lui	t7,0x0
    88b8:	8def0000 	lw	t7,0(t7)
    88bc:	a7a200ba 	sh	v0,186(sp)
    88c0:	87a8008c 	lh	t0,140(sp)
    88c4:	85f801cc 	lh	t8,460(t7)
    88c8:	87ad0086 	lh	t5,134(sp)
    88cc:	3c010000 	lui	at,0x0
    88d0:	44984000 	mtc1	t8,$f8
    88d4:	010d0019 	multu	t0,t5
    88d8:	c42a0000 	lwc1	$f10,0(at)
    88dc:	46804120 	cvt.s.w	$f4,$f8
    88e0:	87aa00a8 	lh	t2,168(sp)
    88e4:	87a500a0 	lh	a1,160(sp)
    88e8:	2407000a 	li	a3,10
    88ec:	460a2182 	mul.s	$f6,$f4,$f10
    88f0:	00007012 	mflo	t6
    88f4:	014e2021 	addu	a0,t2,t6
    88f8:	00042400 	sll	a0,a0,0x10
    88fc:	00042403 	sra	a0,a0,0x10
    8900:	44063000 	mfc1	a2,$f6
    8904:	0c000000 	jal	0 <func_800437F0>
    8908:	00000000 	nop
    890c:	a7a200b8 	sh	v0,184(sp)
    8910:	10000002 	b	891c <Camera_Battle1+0xb6c>
    8914:	8623001a 	lh	v1,26(s1)
    8918:	afb900e8 	sw	t9,232(sp)
    891c:	2469ffff 	addiu	t1,v1,-1
    8920:	10000075 	b	8af8 <Camera_Battle1+0xd48>
    8924:	a629001a 	sh	t1,26(s1)
    8928:	00022400 	sll	a0,v0,0x10
    892c:	00042403 	sra	a0,a0,0x10
    8930:	04800003 	bltz	a0,8940 <Camera_Battle1+0xb90>
    8934:	3c010000 	lui	at,0x0
    8938:	10000002 	b	8944 <Camera_Battle1+0xb94>
    893c:	00801025 	move	v0,a0
    8940:	00041023 	negu	v0,a0
    8944:	c4280000 	lwc1	$f8,0(at)
    8948:	3c013f00 	lui	at,0x3f00
    894c:	44815000 	mtc1	at,$f10
    8950:	46089102 	mul.s	$f4,$f18,$f8
    8954:	460a2180 	add.s	$f6,$f4,$f10
    8958:	4600320d 	trunc.w.s	$f8,$f6
    895c:	44034000 	mfc1	v1,$f8
    8960:	00000000 	nop
    8964:	00031c00 	sll	v1,v1,0x10
    8968:	00031c03 	sra	v1,v1,0x10
    896c:	0062082a 	slt	at,v1,v0
    8970:	50200049 	beqzl	at,8a98 <Camera_Battle1+0xce8>
    8974:	3c013f80 	lui	at,0x3f80
    8978:	44852000 	mtc1	a1,$f4
    897c:	3c010000 	lui	at,0x0
    8980:	c4260000 	lwc1	$f6,0(at)
    8984:	468022a0 	cvt.s.w	$f10,$f4
    8988:	c7ac00ac 	lwc1	$f12,172(sp)
    898c:	c7ae00b4 	lwc1	$f14,180(sp)
    8990:	a7a5008e 	sh	a1,142(sp)
    8994:	e7b200f4 	swc1	$f18,244(sp)
    8998:	46065402 	mul.s	$f16,$f10,$f6
    899c:	0c000000 	jal	0 <func_800437F0>
    89a0:	e7b000fc 	swc1	$f16,252(sp)
    89a4:	c7a800b4 	lwc1	$f8,180(sp)
    89a8:	c7b200f4 	lwc1	$f18,244(sp)
    89ac:	c7aa00f8 	lwc1	$f10,248(sp)
    89b0:	46080103 	div.s	$f4,$f0,$f8
    89b4:	3c014000 	lui	at,0x4000
    89b8:	c7b000fc 	lwc1	$f16,252(sp)
    89bc:	87ac008e 	lh	t4,142(sp)
    89c0:	46125181 	sub.s	$f6,$f10,$f18
    89c4:	87ae009a 	lh	t6,154(sp)
    89c8:	25d98001 	addiu	t9,t6,-32767
    89cc:	46062202 	mul.s	$f8,$f4,$f6
    89d0:	44812000 	mtc1	at,$f4
    89d4:	3c0143b4 	lui	at,0x43b4
    89d8:	46124080 	add.s	$f2,$f8,$f18
    89dc:	44814000 	mtc1	at,$f8
    89e0:	3c014000 	lui	at,0x4000
    89e4:	46021282 	mul.s	$f10,$f2,$f2
    89e8:	46045181 	sub.s	$f6,$f10,$f4
    89ec:	44812000 	mtc1	at,$f4
    89f0:	3c0143b4 	lui	at,0x43b4
    89f4:	46081281 	sub.s	$f10,$f2,$f8
    89f8:	44814000 	mtc1	at,$f8
    89fc:	3c010000 	lui	at,0x0
    8a00:	460a3303 	div.s	$f12,$f6,$f10
    8a04:	460c4182 	mul.s	$f6,$f8,$f12
    8a08:	46062281 	sub.s	$f10,$f4,$f6
    8a0c:	46106202 	mul.s	$f8,$f12,$f16
    8a10:	460a4100 	add.s	$f4,$f8,$f10
    8a14:	46108182 	mul.s	$f6,$f16,$f16
    8a18:	0580000d 	bltz	t4,8a50 <Camera_Battle1+0xca0>
    8a1c:	46043383 	div.s	$f14,$f6,$f4
    8a20:	3c010000 	lui	at,0x0
    8a24:	c4280000 	lwc1	$f8,0(at)
    8a28:	3c013f00 	lui	at,0x3f00
    8a2c:	44813000 	mtc1	at,$f6
    8a30:	46087282 	mul.s	$f10,$f14,$f8
    8a34:	46065100 	add.s	$f4,$f10,$f6
    8a38:	4600220d 	trunc.w.s	$f8,$f4
    8a3c:	44084000 	mfc1	t0,$f8
    8a40:	00000000 	nop
    8a44:	00084400 	sll	t0,t0,0x10
    8a48:	1000000e 	b	8a84 <Camera_Battle1+0xcd4>
    8a4c:	00084403 	sra	t0,t0,0x10
    8a50:	c42a0000 	lwc1	$f10,0(at)
    8a54:	3c013f00 	lui	at,0x3f00
    8a58:	44812000 	mtc1	at,$f4
    8a5c:	460a7182 	mul.s	$f6,$f14,$f10
    8a60:	46043200 	add.s	$f8,$f6,$f4
    8a64:	4600428d 	trunc.w.s	$f10,$f8
    8a68:	44085000 	mfc1	t0,$f10
    8a6c:	00000000 	nop
    8a70:	00084400 	sll	t0,t0,0x10
    8a74:	00084403 	sra	t0,t0,0x10
    8a78:	00084023 	negu	t0,t0
    8a7c:	00084400 	sll	t0,t0,0x10
    8a80:	00084403 	sra	t0,t0,0x10
    8a84:	03286021 	addu	t4,t9,t0
    8a88:	258d8001 	addiu	t5,t4,-32767
    8a8c:	1000001a 	b	8af8 <Camera_Battle1+0xd48>
    8a90:	a7ad00ba 	sh	t5,186(sp)
    8a94:	3c013f80 	lui	at,0x3f80
    8a98:	44813000 	mtc1	at,$f6
    8a9c:	c60400e0 	lwc1	$f4,224(s0)
    8aa0:	3c010000 	lui	at,0x0
    8aa4:	c42a0000 	lwc1	$f10,0(at)
    8aa8:	46043201 	sub.s	$f8,$f6,$f4
    8aac:	00034023 	negu	t0,v1
    8ab0:	00084400 	sll	t0,t0,0x10
    8ab4:	00084403 	sra	t0,t0,0x10
    8ab8:	460a4402 	mul.s	$f16,$f8,$f10
    8abc:	04800004 	bltz	a0,8ad0 <Camera_Battle1+0xd20>
    8ac0:	00000000 	nop
    8ac4:	00034400 	sll	t0,v1,0x10
    8ac8:	10000001 	b	8ad0 <Camera_Battle1+0xd20>
    8acc:	00084403 	sra	t0,t0,0x10
    8ad0:	01047023 	subu	t6,t0,a0
    8ad4:	448e3000 	mtc1	t6,$f6
    8ad8:	87aa009a 	lh	t2,154(sp)
    8adc:	46803120 	cvt.s.w	$f4,$f6
    8ae0:	46102202 	mul.s	$f8,$f4,$f16
    8ae4:	4600428d 	trunc.w.s	$f10,$f8
    8ae8:	44095000 	mfc1	t1,$f10
    8aec:	00000000 	nop
    8af0:	01495823 	subu	t3,t2,t1
    8af4:	a7ab00ba 	sh	t3,186(sp)
    8af8:	8fac00e8 	lw	t4,232(sp)
    8afc:	87ad00b0 	lh	t5,176(sp)
    8b00:	87a50098 	lh	a1,152(sp)
    8b04:	15800076 	bnez	t4,8ce0 <Camera_Battle1+0xf30>
    8b08:	2407000a 	li	a3,10
    8b0c:	448d3000 	mtc1	t5,$f6
    8b10:	c6080018 	lwc1	$f8,24(s0)
    8b14:	c7aa0078 	lwc1	$f10,120(sp)
    8b18:	46803120 	cvt.s.w	$f4,$f6
    8b1c:	c7a6007c 	lwc1	$f6,124(sp)
    8b20:	c7a000e4 	lwc1	$f0,228(sp)
    8b24:	3c010000 	lui	at,0x0
    8b28:	87aa00a8 	lh	t2,168(sp)
    8b2c:	46082082 	mul.s	$f2,$f4,$f8
    8b30:	46065101 	sub.s	$f4,$f10,$f6
    8b34:	46002202 	mul.s	$f8,$f4,$f0
    8b38:	c4240000 	lwc1	$f4,0(at)
    8b3c:	3c013f00 	lui	at,0x3f00
    8b40:	46064280 	add.s	$f10,$f8,$f6
    8b44:	44813000 	mtc1	at,$f6
    8b48:	46045202 	mul.s	$f8,$f10,$f4
    8b4c:	46064280 	add.s	$f10,$f8,$f6
    8b50:	44813000 	mtc1	at,$f6
    8b54:	44814000 	mtc1	at,$f8
    8b58:	4600510d 	trunc.w.s	$f4,$f10
    8b5c:	46060282 	mul.s	$f10,$f0,$f6
    8b60:	448a3000 	mtc1	t2,$f6
    8b64:	44192000 	mfc1	t9,$f4
    8b68:	460a4100 	add.s	$f4,$f8,$f10
    8b6c:	46803220 	cvt.s.w	$f8,$f6
    8b70:	46044282 	mul.s	$f10,$f8,$f4
    8b74:	4600120d 	trunc.w.s	$f8,$f2
    8b78:	440c4000 	mfc1	t4,$f8
    8b7c:	4600518d 	trunc.w.s	$f6,$f10
    8b80:	440d3000 	mfc1	t5,$f6
    8b84:	00000000 	nop
    8b88:	032dc023 	subu	t8,t9,t5
    8b8c:	030c1021 	addu	v0,t8,t4
    8b90:	00021c00 	sll	v1,v0,0x10
    8b94:	00031c03 	sra	v1,v1,0x10
    8b98:	00022400 	sll	a0,v0,0x10
    8b9c:	2861d558 	slti	at,v1,-10920
    8ba0:	10200003 	beqz	at,8bb0 <Camera_Battle1+0xe00>
    8ba4:	00042403 	sra	a0,a0,0x10
    8ba8:	10000005 	b	8bc0 <Camera_Battle1+0xe10>
    8bac:	2404d558 	li	a0,-10920
    8bb0:	28612aa9 	slti	at,v1,10921
    8bb4:	14200002 	bnez	at,8bc0 <Camera_Battle1+0xe10>
    8bb8:	00000000 	nop
    8bbc:	24042aa8 	li	a0,10920
    8bc0:	0c000000 	jal	0 <func_800437F0>
    8bc4:	8e260010 	lw	a2,16(s1)
    8bc8:	a7a200b8 	sh	v0,184(sp)
    8bcc:	8fa40044 	lw	a0,68(sp)
    8bd0:	8fa50048 	lw	a1,72(sp)
    8bd4:	0c000000 	jal	0 <func_800437F0>
    8bd8:	27a600b4 	addiu	a2,sp,180
    8bdc:	8fb90044 	lw	t9,68(sp)
    8be0:	27a600bc 	addiu	a2,sp,188
    8be4:	24010007 	li	at,7
    8be8:	8f2e0000 	lw	t6,0(t9)
    8bec:	acce0000 	sw	t6,0(a2)
    8bf0:	8f2d0004 	lw	t5,4(t9)
    8bf4:	accd0004 	sw	t5,4(a2)
    8bf8:	8f2e0008 	lw	t6,8(t9)
    8bfc:	acce0008 	sw	t6,8(a2)
    8c00:	860f0140 	lh	t7,320(s0)
    8c04:	8faa0044 	lw	t2,68(sp)
    8c08:	55e1002f 	bnel	t7,at,8cc8 <Camera_Battle1+0xf18>
    8c0c:	8faf004c 	lw	t7,76(sp)
    8c10:	8e0a008c 	lw	t2,140(s0)
    8c14:	3c090001 	lui	t1,0x1
    8c18:	02002025 	move	a0,s0
    8c1c:	012a4821 	addu	t1,t1,t2
    8c20:	91290a39 	lbu	t1,2617(t1)
    8c24:	11200005 	beqz	t1,8c3c <Camera_Battle1+0xe8c>
    8c28:	00000000 	nop
    8c2c:	8602002c 	lh	v0,44(s0)
    8c30:	304b0001 	andi	t3,v0,0x1
    8c34:	11600005 	beqz	t3,8c4c <Camera_Battle1+0xe9c>
    8c38:	30580002 	andi	t8,v0,0x2
    8c3c:	0c000000 	jal	0 <func_800437F0>
    8c40:	8fa50048 	lw	a1,72(sp)
    8c44:	10000017 	b	8ca4 <Camera_Battle1+0xef4>
    8c48:	27b900bc 	addiu	t9,sp,188
    8c4c:	13000006 	beqz	t8,8c68 <Camera_Battle1+0xeb8>
    8c50:	27a40128 	addiu	a0,sp,296
    8c54:	02002025 	move	a0,s0
    8c58:	0c000000 	jal	0 <func_800437F0>
    8c5c:	8fa50048 	lw	a1,72(sp)
    8c60:	10000010 	b	8ca4 <Camera_Battle1+0xef4>
    8c64:	27b900bc 	addiu	t9,sp,188
    8c68:	0c000000 	jal	0 <func_800437F0>
    8c6c:	8fa50048 	lw	a1,72(sp)
    8c70:	c7a400bc 	lwc1	$f4,188(sp)
    8c74:	c7aa0128 	lwc1	$f10,296(sp)
    8c78:	c7a800c0 	lwc1	$f8,192(sp)
    8c7c:	460a2181 	sub.s	$f6,$f4,$f10
    8c80:	c7a4012c 	lwc1	$f4,300(sp)
    8c84:	46044281 	sub.s	$f10,$f8,$f4
    8c88:	e7a600bc 	swc1	$f6,188(sp)
    8c8c:	c7a600c4 	lwc1	$f6,196(sp)
    8c90:	c7a80130 	lwc1	$f8,304(sp)
    8c94:	e7aa00c0 	swc1	$f10,192(sp)
    8c98:	46083101 	sub.s	$f4,$f6,$f8
    8c9c:	e7a400c4 	swc1	$f4,196(sp)
    8ca0:	27b900bc 	addiu	t9,sp,188
    8ca4:	8f2e0000 	lw	t6,0(t9)
    8ca8:	8fac004c 	lw	t4,76(sp)
    8cac:	ad8e0000 	sw	t6,0(t4)
    8cb0:	8f2d0004 	lw	t5,4(t9)
    8cb4:	ad8d0004 	sw	t5,4(t4)
    8cb8:	8f2e0008 	lw	t6,8(t9)
    8cbc:	10000008 	b	8ce0 <Camera_Battle1+0xf30>
    8cc0:	ad8e0008 	sw	t6,8(t4)
    8cc4:	8faf004c 	lw	t7,76(sp)
    8cc8:	8d4b0000 	lw	t3,0(t2)
    8ccc:	adeb0000 	sw	t3,0(t7)
    8cd0:	8d490004 	lw	t1,4(t2)
    8cd4:	ade90004 	sw	t1,4(t7)
    8cd8:	8d4b0008 	lw	t3,8(t2)
    8cdc:	adeb0008 	sw	t3,8(t7)
    8ce0:	3c030000 	lui	v1,0x0
    8ce4:	8c630000 	lw	v1,0(v1)
    8ce8:	c60800e0 	lwc1	$f8,224(s0)
    8cec:	3c013f80 	lui	at,0x3f80
    8cf0:	847801dc 	lh	t8,476(v1)
    8cf4:	846c01de 	lh	t4,478(v1)
    8cf8:	c6200004 	lwc1	$f0,4(s1)
    8cfc:	44985000 	mtc1	t8,$f10
    8d00:	3c0a0000 	lui	t2,0x0
    8d04:	468051a0 	cvt.s.w	$f6,$f10
    8d08:	44815000 	mtc1	at,$f10
    8d0c:	3c010000 	lui	at,0x0
    8d10:	46083102 	mul.s	$f4,$f6,$f8
    8d14:	c7a600e4 	lwc1	$f6,228(sp)
    8d18:	46065201 	sub.s	$f8,$f10,$f6
    8d1c:	46082282 	mul.s	$f10,$f4,$f8
    8d20:	448c2000 	mtc1	t4,$f4
    8d24:	00000000 	nop
    8d28:	46802220 	cvt.s.w	$f8,$f4
    8d2c:	46005181 	sub.s	$f6,$f10,$f0
    8d30:	c42a0000 	lwc1	$f10,0(at)
    8d34:	3c010000 	lui	at,0x0
    8d38:	460a4102 	mul.s	$f4,$f8,$f10
    8d3c:	00000000 	nop
    8d40:	46043202 	mul.s	$f8,$f6,$f4
    8d44:	46080280 	add.s	$f10,$f0,$f8
    8d48:	e62a0004 	swc1	$f10,4(s1)
    8d4c:	c4240000 	lwc1	$f4,0(at)
    8d50:	c6260004 	lwc1	$f6,4(s1)
    8d54:	3c013f00 	lui	at,0x3f00
    8d58:	44815000 	mtc1	at,$f10
    8d5c:	46043202 	mul.s	$f8,$f6,$f4
    8d60:	3c010000 	lui	at,0x0
    8d64:	460a4180 	add.s	$f6,$f8,$f10
    8d68:	4600310d 	trunc.w.s	$f4,$f6
    8d6c:	440d2000 	mfc1	t5,$f4
    8d70:	00000000 	nop
    8d74:	a60d015a 	sh	t5,346(s0)
    8d78:	8fae0088 	lw	t6,136(sp)
    8d7c:	c7a80074 	lwc1	$f8,116(sp)
    8d80:	81cf0843 	lb	t7,2115(t6)
    8d84:	11e00003 	beqz	t7,8d94 <Camera_Battle1+0xfe4>
    8d88:	00000000 	nop
    8d8c:	1000000b 	b	8dbc <Camera_Battle1+0x100c>
    8d90:	c4220000 	lwc1	$f2,0(at)
    8d94:	854a0030 	lh	t2,48(t2)
    8d98:	29410011 	slti	at,t2,17
    8d9c:	10200003 	beqz	at,8dac <Camera_Battle1+0xffc>
    8da0:	3c010000 	lui	at,0x0
    8da4:	10000004 	b	8db8 <Camera_Battle1+0x1008>
    8da8:	c4200000 	lwc1	$f0,0(at)
    8dac:	3c013f80 	lui	at,0x3f80
    8db0:	44810000 	mtc1	at,$f0
    8db4:	00000000 	nop
    8db8:	46000086 	mov.s	$f2,$f0
    8dbc:	3c010000 	lui	at,0x0
    8dc0:	c42a0000 	lwc1	$f10,0(at)
    8dc4:	c7a400e4 	lwc1	$f4,228(sp)
    8dc8:	c60e00fc 	lwc1	$f14,252(s0)
    8dcc:	460a4182 	mul.s	$f6,$f8,$f10
    8dd0:	8e0600d4 	lw	a2,212(s0)
    8dd4:	3c073f80 	lui	a3,0x3f80
    8dd8:	46043282 	mul.s	$f10,$f6,$f4
    8ddc:	460a4181 	sub.s	$f6,$f8,$f10
    8de0:	46061302 	mul.s	$f12,$f2,$f6
    8de4:	0c000000 	jal	0 <func_800437F0>
    8de8:	00000000 	nop
    8dec:	e60000fc 	swc1	$f0,252(s0)
    8df0:	8fbf002c 	lw	ra,44(sp)
    8df4:	8fb00024 	lw	s0,36(sp)
    8df8:	8fb10028 	lw	s1,40(sp)
    8dfc:	03e00008 	jr	ra
    8e00:	27bd0140 	addiu	sp,sp,320

00008e04 <Camera_Battle2>:
    8e04:	27bdffe8 	addiu	sp,sp,-24
    8e08:	afbf0014 	sw	ra,20(sp)
    8e0c:	0c000000 	jal	0 <func_800437F0>
    8e10:	00000000 	nop
    8e14:	8fbf0014 	lw	ra,20(sp)
    8e18:	27bd0018 	addiu	sp,sp,24
    8e1c:	03e00008 	jr	ra
    8e20:	00000000 	nop

00008e24 <Camera_Battle3>:
    8e24:	27bdffe8 	addiu	sp,sp,-24
    8e28:	afbf0014 	sw	ra,20(sp)
    8e2c:	0c000000 	jal	0 <func_800437F0>
    8e30:	00000000 	nop
    8e34:	8fbf0014 	lw	ra,20(sp)
    8e38:	27bd0018 	addiu	sp,sp,24
    8e3c:	03e00008 	jr	ra
    8e40:	00000000 	nop

00008e44 <Camera_Battle4>:
    8e44:	27bdff88 	addiu	sp,sp,-120
    8e48:	afb00018 	sw	s0,24(sp)
    8e4c:	00808025 	move	s0,a0
    8e50:	afbf001c 	sw	ra,28(sp)
    8e54:	0c000000 	jal	0 <func_800437F0>
    8e58:	8c840090 	lw	a0,144(a0)
    8e5c:	8602015e 	lh	v0,350(s0)
    8e60:	10400008 	beqz	v0,8e84 <Camera_Battle4+0x40>
    8e64:	2401000a 	li	at,10
    8e68:	10410006 	beq	v0,at,8e84 <Camera_Battle4+0x40>
    8e6c:	24010014 	li	at,20
    8e70:	10410004 	beq	v0,at,8e84 <Camera_Battle4+0x40>
    8e74:	3c0e0000 	lui	t6,0x0
    8e78:	8dce0000 	lw	t6,0(t6)
    8e7c:	85c30314 	lh	v1,788(t6)
    8e80:	10600050 	beqz	v1,8fc4 <Camera_Battle4+0x180>
    8e84:	3c010000 	lui	at,0x0
    8e88:	c42e0000 	lwc1	$f14,0(at)
    8e8c:	3c013f80 	lui	at,0x3f80
    8e90:	44814000 	mtc1	at,$f8
    8e94:	3c014288 	lui	at,0x4288
    8e98:	3c0b0000 	lui	t3,0x0
    8e9c:	8d6b0000 	lw	t3,0(t3)
    8ea0:	44818000 	mtc1	at,$f16
    8ea4:	860f0142 	lh	t7,322(s0)
    8ea8:	856c01f0 	lh	t4,496(t3)
    8eac:	46008483 	div.s	$f18,$f16,$f0
    8eb0:	3c190000 	lui	t9,0x0
    8eb4:	448c2000 	mtc1	t4,$f4
    8eb8:	000fc0c0 	sll	t8,t7,0x3
    8ebc:	86080144 	lh	t0,324(s0)
    8ec0:	468021a0 	cvt.s.w	$f6,$f4
    8ec4:	0338c821 	addu	t9,t9,t8
    8ec8:	8f390004 	lw	t9,4(t9)
    8ecc:	000848c0 	sll	t1,t0,0x3
    8ed0:	3c010000 	lui	at,0x0
    8ed4:	03295021 	addu	t2,t9,t1
    8ed8:	8d420004 	lw	v0,4(t2)
    8edc:	3c0c0000 	lui	t4,0x0
    8ee0:	844d0000 	lh	t5,0(v0)
    8ee4:	24420018 	addiu	v0,v0,24
    8ee8:	460e3302 	mul.s	$f12,$f6,$f14
    8eec:	448d3000 	mtc1	t5,$f6
    8ef0:	460c4280 	add.s	$f10,$f8,$f12
    8ef4:	46126102 	mul.s	$f4,$f12,$f18
    8ef8:	46803220 	cvt.s.w	$f8,$f6
    8efc:	46045081 	sub.s	$f2,$f10,$f4
    8f00:	460e4402 	mul.s	$f16,$f8,$f14
    8f04:	00000000 	nop
    8f08:	46008482 	mul.s	$f18,$f16,$f0
    8f0c:	00000000 	nop
    8f10:	46029282 	mul.s	$f10,$f18,$f2
    8f14:	e60a0000 	swc1	$f10,0(s0)
    8f18:	844effec 	lh	t6,-20(v0)
    8f1c:	448e2000 	mtc1	t6,$f4
    8f20:	00000000 	nop
    8f24:	468021a0 	cvt.s.w	$f6,$f4
    8f28:	460e3202 	mul.s	$f8,$f6,$f14
    8f2c:	00000000 	nop
    8f30:	46004402 	mul.s	$f16,$f8,$f0
    8f34:	00000000 	nop
    8f38:	46028482 	mul.s	$f18,$f16,$f2
    8f3c:	e6120004 	swc1	$f18,4(s0)
    8f40:	844ffff0 	lh	t7,-16(v0)
    8f44:	c4260000 	lwc1	$f6,0(at)
    8f48:	3c013f00 	lui	at,0x3f00
    8f4c:	448f5000 	mtc1	t7,$f10
    8f50:	44818000 	mtc1	at,$f16
    8f54:	46805120 	cvt.s.w	$f4,$f10
    8f58:	46062202 	mul.s	$f8,$f4,$f6
    8f5c:	46104480 	add.s	$f18,$f8,$f16
    8f60:	4600928d 	trunc.w.s	$f10,$f18
    8f64:	44085000 	mfc1	t0,$f10
    8f68:	00000000 	nop
    8f6c:	a6080008 	sh	t0,8(s0)
    8f70:	8459fff4 	lh	t9,-12(v0)
    8f74:	44992000 	mtc1	t9,$f4
    8f78:	00000000 	nop
    8f7c:	468021a0 	cvt.s.w	$f6,$f4
    8f80:	460e3202 	mul.s	$f8,$f6,$f14
    8f84:	e608000c 	swc1	$f8,12(s0)
    8f88:	8449fff8 	lh	t1,-8(v0)
    8f8c:	44898000 	mtc1	t1,$f16
    8f90:	00000000 	nop
    8f94:	468084a0 	cvt.s.w	$f18,$f16
    8f98:	e6120010 	swc1	$f18,16(s0)
    8f9c:	844afffc 	lh	t2,-4(v0)
    8fa0:	448a5000 	mtc1	t2,$f10
    8fa4:	00000000 	nop
    8fa8:	46805120 	cvt.s.w	$f4,$f10
    8fac:	460e2182 	mul.s	$f6,$f4,$f14
    8fb0:	e6060014 	swc1	$f6,20(s0)
    8fb4:	844b0000 	lh	t3,0(v0)
    8fb8:	a60b0018 	sh	t3,24(s0)
    8fbc:	8d8c0000 	lw	t4,0(t4)
    8fc0:	85830314 	lh	v1,788(t4)
    8fc4:	50600004 	beqzl	v1,8fd8 <Camera_Battle4+0x194>
    8fc8:	26050050 	addiu	a1,s0,80
    8fcc:	0c000000 	jal	0 <func_800437F0>
    8fd0:	02002025 	move	a0,s0
    8fd4:	26050050 	addiu	a1,s0,80
    8fd8:	2606005c 	addiu	a2,s0,92
    8fdc:	afa60034 	sw	a2,52(sp)
    8fe0:	afa50030 	sw	a1,48(sp)
    8fe4:	0c000000 	jal	0 <func_800437F0>
    8fe8:	27a4005c 	addiu	a0,sp,92
    8fec:	26060074 	addiu	a2,s0,116
    8ff0:	afa6002c 	sw	a2,44(sp)
    8ff4:	27a40054 	addiu	a0,sp,84
    8ff8:	0c000000 	jal	0 <func_800437F0>
    8ffc:	8fa50030 	lw	a1,48(sp)
    9000:	860d0018 	lh	t5,24(s0)
    9004:	3c010000 	lui	at,0x0
    9008:	240e0032 	li	t6,50
    900c:	ac2d0000 	sw	t5,0(at)
    9010:	8603015e 	lh	v1,350(s0)
    9014:	2401000a 	li	at,10
    9018:	3c080000 	lui	t0,0x0
    901c:	50600008 	beqzl	v1,9040 <Camera_Battle4+0x1fc>
    9020:	2603001c 	addiu	v1,s0,28
    9024:	10610005 	beq	v1,at,903c <Camera_Battle4+0x1f8>
    9028:	24010014 	li	at,20
    902c:	50610004 	beql	v1,at,9040 <Camera_Battle4+0x1fc>
    9030:	2603001c 	addiu	v1,s0,28
    9034:	10000006 	b	9050 <Camera_Battle4+0x20c>
    9038:	2603001c 	addiu	v1,s0,28
    903c:	2603001c 	addiu	v1,s0,28
    9040:	a46e0000 	sh	t6,0(v1)
    9044:	860f015e 	lh	t7,350(s0)
    9048:	25f80001 	addiu	t8,t7,1
    904c:	a618015e 	sh	t8,350(s0)
    9050:	8d080000 	lw	t0,0(t0)
    9054:	3c010000 	lui	at,0x0
    9058:	c4320000 	lwc1	$f18,0(at)
    905c:	851901c6 	lh	t9,454(t0)
    9060:	c60400e0 	lwc1	$f4,224(s0)
    9064:	c60c000c 	lwc1	$f12,12(s0)
    9068:	44994000 	mtc1	t9,$f8
    906c:	c60e00c8 	lwc1	$f14,200(s0)
    9070:	3c073dcc 	lui	a3,0x3dcc
    9074:	46804420 	cvt.s.w	$f16,$f8
    9078:	34e7cccd 	ori	a3,a3,0xcccd
    907c:	afa30028 	sw	v1,40(sp)
    9080:	46128282 	mul.s	$f10,$f16,$f18
    9084:	00000000 	nop
    9088:	46045182 	mul.s	$f6,$f10,$f4
    908c:	44063000 	mfc1	a2,$f6
    9090:	0c000000 	jal	0 <func_800437F0>
    9094:	00000000 	nop
    9098:	3c01447a 	lui	at,0x447a
    909c:	44811000 	mtc1	at,$f2
    90a0:	e60000c8 	swc1	$f0,200(s0)
    90a4:	3c090000 	lui	t1,0x0
    90a8:	e60200c0 	swc1	$f2,192(s0)
    90ac:	e60200c4 	swc1	$f2,196(s0)
    90b0:	8d290000 	lw	t1,0(t1)
    90b4:	3c010000 	lui	at,0x0
    90b8:	c42c0000 	lwc1	$f12,0(at)
    90bc:	852a01c6 	lh	t2,454(t1)
    90c0:	3c010000 	lui	at,0x0
    90c4:	c4320000 	lwc1	$f18,0(at)
    90c8:	448a4000 	mtc1	t2,$f8
    90cc:	3c073dcc 	lui	a3,0x3dcc
    90d0:	34e7cccd 	ori	a3,a3,0xcccd
    90d4:	46804420 	cvt.s.w	$f16,$f8
    90d8:	c60e00cc 	lwc1	$f14,204(s0)
    90dc:	46128282 	mul.s	$f10,$f16,$f18
    90e0:	44065000 	mfc1	a2,$f10
    90e4:	0c000000 	jal	0 <func_800437F0>
    90e8:	00000000 	nop
    90ec:	e60000cc 	swc1	$f0,204(s0)
    90f0:	3c020000 	lui	v0,0x0
    90f4:	8c420000 	lw	v0,0(v0)
    90f8:	3c010000 	lui	at,0x0
    90fc:	c4280000 	lwc1	$f8,0(at)
    9100:	844b019a 	lh	t3,410(v0)
    9104:	844c01c8 	lh	t4,456(v0)
    9108:	3c010000 	lui	at,0x0
    910c:	448b2000 	mtc1	t3,$f4
    9110:	448c8000 	mtc1	t4,$f16
    9114:	c42a0000 	lwc1	$f10,0(at)
    9118:	468021a0 	cvt.s.w	$f6,$f4
    911c:	3c073dcc 	lui	a3,0x3dcc
    9120:	34e7cccd 	ori	a3,a3,0xcccd
    9124:	c60e00d0 	lwc1	$f14,208(s0)
    9128:	468084a0 	cvt.s.w	$f18,$f16
    912c:	46083302 	mul.s	$f12,$f6,$f8
    9130:	c60600e0 	lwc1	$f6,224(s0)
    9134:	460a9102 	mul.s	$f4,$f18,$f10
    9138:	00000000 	nop
    913c:	46062202 	mul.s	$f8,$f4,$f6
    9140:	44064000 	mfc1	a2,$f8
    9144:	0c000000 	jal	0 <func_800437F0>
    9148:	00000000 	nop
    914c:	e60000d0 	swc1	$f0,208(s0)
    9150:	3c010000 	lui	at,0x0
    9154:	c4300000 	lwc1	$f16,0(at)
    9158:	02002025 	move	a0,s0
    915c:	27a50054 	addiu	a1,sp,84
    9160:	8e060000 	lw	a2,0(s0)
    9164:	24070001 	li	a3,1
    9168:	0c000000 	jal	0 <func_800437F0>
    916c:	e61000d4 	swc1	$f16,212(s0)
    9170:	8fa30028 	lw	v1,40(sp)
    9174:	87ae0062 	lh	t6,98(sp)
    9178:	87b90062 	lh	t9,98(sp)
    917c:	846d0000 	lh	t5,0(v1)
    9180:	24070002 	li	a3,2
    9184:	51a0000b 	beqzl	t5,91b4 <Camera_Battle4+0x370>
    9188:	a7b9006a 	sh	t9,106(sp)
    918c:	87af0060 	lh	t7,96(sp)
    9190:	c7b2005c 	lwc1	$f18,92(sp)
    9194:	a7ae006a 	sh	t6,106(sp)
    9198:	a7af0068 	sh	t7,104(sp)
    919c:	e7b20064 	swc1	$f18,100(sp)
    91a0:	84780000 	lh	t8,0(v1)
    91a4:	2708ffff 	addiu	t0,t8,-1
    91a8:	1000000e 	b	91e4 <Camera_Battle4+0x3a0>
    91ac:	a4680000 	sh	t0,0(v1)
    91b0:	a7b9006a 	sh	t9,106(sp)
    91b4:	8e06000c 	lw	a2,12(s0)
    91b8:	86040008 	lh	a0,8(s0)
    91bc:	0c000000 	jal	0 <func_800437F0>
    91c0:	87a50060 	lh	a1,96(sp)
    91c4:	a7a20068 	sh	v0,104(sp)
    91c8:	3c073a83 	lui	a3,0x3a83
    91cc:	34e7126f 	ori	a3,a3,0x126f
    91d0:	8e06000c 	lw	a2,12(s0)
    91d4:	c60c0004 	lwc1	$f12,4(s0)
    91d8:	0c000000 	jal	0 <func_800437F0>
    91dc:	c7ae005c 	lwc1	$f14,92(sp)
    91e0:	e7a00064 	swc1	$f0,100(sp)
    91e4:	8fa4002c 	lw	a0,44(sp)
    91e8:	8fa50030 	lw	a1,48(sp)
    91ec:	0c000000 	jal	0 <func_800437F0>
    91f0:	27a60064 	addiu	a2,sp,100
    91f4:	8faa002c 	lw	t2,44(sp)
    91f8:	8fa90034 	lw	t1,52(sp)
    91fc:	3c073f80 	lui	a3,0x3f80
    9200:	8d4c0000 	lw	t4,0(t2)
    9204:	ad2c0000 	sw	t4,0(t1)
    9208:	8d4b0004 	lw	t3,4(t2)
    920c:	ad2b0004 	sw	t3,4(t1)
    9210:	8d4c0008 	lw	t4,8(t2)
    9214:	ad2c0008 	sw	t4,8(t1)
    9218:	c7aa0064 	lwc1	$f10,100(sp)
    921c:	8e06000c 	lw	a2,12(s0)
    9220:	c60e00fc 	lwc1	$f14,252(s0)
    9224:	c60c0010 	lwc1	$f12,16(s0)
    9228:	0c000000 	jal	0 <func_800437F0>
    922c:	e60a00dc 	swc1	$f10,220(s0)
    9230:	e60000fc 	swc1	$f0,252(s0)
    9234:	a600015a 	sh	zero,346(s0)
    9238:	02002025 	move	a0,s0
    923c:	0c000000 	jal	0 <func_800437F0>
    9240:	8e050014 	lw	a1,20(s0)
    9244:	e6000100 	swc1	$f0,256(s0)
    9248:	8fbf001c 	lw	ra,28(sp)
    924c:	8fb00018 	lw	s0,24(sp)
    9250:	27bd0078 	addiu	sp,sp,120
    9254:	03e00008 	jr	ra
    9258:	24020001 	li	v0,1

0000925c <Camera_Battle0>:
    925c:	27bdffe8 	addiu	sp,sp,-24
    9260:	afbf0014 	sw	ra,20(sp)
    9264:	0c000000 	jal	0 <func_800437F0>
    9268:	00000000 	nop
    926c:	8fbf0014 	lw	ra,20(sp)
    9270:	27bd0018 	addiu	sp,sp,24
    9274:	03e00008 	jr	ra
    9278:	00000000 	nop

0000927c <Camera_KeepOn1>:
    927c:	27bdfec8 	addiu	sp,sp,-312
    9280:	afb00028 	sw	s0,40(sp)
    9284:	00808025 	move	s0,a0
    9288:	afbf002c 	sw	ra,44(sp)
    928c:	afa00088 	sw	zero,136(sp)
    9290:	0c000000 	jal	0 <func_800437F0>
    9294:	8c840090 	lw	a0,144(a0)
    9298:	e7a00070 	swc1	$f0,112(sp)
    929c:	8e0300a8 	lw	v1,168(s0)
    92a0:	10600004 	beqz	v1,92b4 <Camera_KeepOn1+0x38>
    92a4:	00000000 	nop
    92a8:	8c6e0130 	lw	t6,304(v1)
    92ac:	55c0000c 	bnezl	t6,92e0 <Camera_KeepOn1+0x64>
    92b0:	8604015e 	lh	a0,350(s0)
    92b4:	14600003 	bnez	v1,92c4 <Camera_KeepOn1+0x48>
    92b8:	3c040000 	lui	a0,0x0
    92bc:	0c000000 	jal	0 <func_800437F0>
    92c0:	24840000 	addiu	a0,a0,0
    92c4:	ae0000a8 	sw	zero,168(s0)
    92c8:	02002025 	move	a0,s0
    92cc:	0c000000 	jal	0 <func_800437F0>
    92d0:	24050001 	li	a1,1
    92d4:	100003ba 	b	a1c0 <Camera_KeepOn1+0xf44>
    92d8:	24020001 	li	v0,1
    92dc:	8604015e 	lh	a0,350(s0)
    92e0:	10800008 	beqz	a0,9304 <Camera_KeepOn1+0x88>
    92e4:	2401000a 	li	at,10
    92e8:	10810006 	beq	a0,at,9304 <Camera_KeepOn1+0x88>
    92ec:	24010014 	li	at,20
    92f0:	10810004 	beq	a0,at,9304 <Camera_KeepOn1+0x88>
    92f4:	3c0f0000 	lui	t7,0x0
    92f8:	8def0000 	lw	t7,0(t7)
    92fc:	85e30314 	lh	v1,788(t7)
    9300:	10600066 	beqz	v1,949c <Camera_KeepOn1+0x220>
    9304:	3c0e0000 	lui	t6,0x0
    9308:	8dce0000 	lw	t6,0(t6)
    930c:	3c010000 	lui	at,0x0
    9310:	c42e0000 	lwc1	$f14,0(at)
    9314:	85cf01f0 	lh	t7,496(t6)
    9318:	3c013f80 	lui	at,0x3f80
    931c:	44814000 	mtc1	at,$f8
    9320:	448f2000 	mtc1	t7,$f4
    9324:	3c014288 	lui	at,0x4288
    9328:	86180142 	lh	t8,322(s0)
    932c:	468021a0 	cvt.s.w	$f6,$f4
    9330:	44812000 	mtc1	at,$f4
    9334:	3c0a0000 	lui	t2,0x0
    9338:	0018c8c0 	sll	t9,t8,0x3
    933c:	860b0144 	lh	t3,324(s0)
    9340:	01595021 	addu	t2,t2,t9
    9344:	460e3082 	mul.s	$f2,$f6,$f14
    9348:	46002183 	div.s	$f6,$f4,$f0
    934c:	8d4a0004 	lw	t2,4(t2)
    9350:	000b60c0 	sll	t4,t3,0x3
    9354:	014c6821 	addu	t5,t2,t4
    9358:	8da20004 	lw	v0,4(t5)
    935c:	46024280 	add.s	$f10,$f8,$f2
    9360:	84580000 	lh	t8,0(v0)
    9364:	24420030 	addiu	v0,v0,48
    9368:	44982000 	mtc1	t8,$f4
    936c:	46061202 	mul.s	$f8,$f2,$f6
    9370:	468021a0 	cvt.s.w	$f6,$f4
    9374:	46085301 	sub.s	$f12,$f10,$f8
    9378:	460e3282 	mul.s	$f10,$f6,$f14
    937c:	00000000 	nop
    9380:	46005202 	mul.s	$f8,$f10,$f0
    9384:	00000000 	nop
    9388:	460c4102 	mul.s	$f4,$f8,$f12
    938c:	e6040000 	swc1	$f4,0(s0)
    9390:	8459ffd4 	lh	t9,-44(v0)
    9394:	44993000 	mtc1	t9,$f6
    9398:	00000000 	nop
    939c:	468032a0 	cvt.s.w	$f10,$f6
    93a0:	e60a0004 	swc1	$f10,4(s0)
    93a4:	844bffd8 	lh	t3,-40(v0)
    93a8:	448b4000 	mtc1	t3,$f8
    93ac:	00000000 	nop
    93b0:	46804120 	cvt.s.w	$f4,$f8
    93b4:	e6040008 	swc1	$f4,8(s0)
    93b8:	844affdc 	lh	t2,-36(v0)
    93bc:	448a3000 	mtc1	t2,$f6
    93c0:	00000000 	nop
    93c4:	468032a0 	cvt.s.w	$f10,$f6
    93c8:	e60a000c 	swc1	$f10,12(s0)
    93cc:	844cffe0 	lh	t4,-32(v0)
    93d0:	448c4000 	mtc1	t4,$f8
    93d4:	00000000 	nop
    93d8:	46804120 	cvt.s.w	$f4,$f8
    93dc:	e6040010 	swc1	$f4,16(s0)
    93e0:	844dffe4 	lh	t5,-28(v0)
    93e4:	448d3000 	mtc1	t5,$f6
    93e8:	3c0d0000 	lui	t5,0x0
    93ec:	468032a0 	cvt.s.w	$f10,$f6
    93f0:	e60a0014 	swc1	$f10,20(s0)
    93f4:	844effe8 	lh	t6,-24(v0)
    93f8:	448e4000 	mtc1	t6,$f8
    93fc:	00000000 	nop
    9400:	46804120 	cvt.s.w	$f4,$f8
    9404:	e6040018 	swc1	$f4,24(s0)
    9408:	844fffec 	lh	t7,-20(v0)
    940c:	448f3000 	mtc1	t7,$f6
    9410:	00000000 	nop
    9414:	468032a0 	cvt.s.w	$f10,$f6
    9418:	460e5202 	mul.s	$f8,$f10,$f14
    941c:	e608001c 	swc1	$f8,28(s0)
    9420:	8458fff0 	lh	t8,-16(v0)
    9424:	44982000 	mtc1	t8,$f4
    9428:	00000000 	nop
    942c:	468021a0 	cvt.s.w	$f6,$f4
    9430:	e6060020 	swc1	$f6,32(s0)
    9434:	8459fff4 	lh	t9,-12(v0)
    9438:	44995000 	mtc1	t9,$f10
    943c:	00000000 	nop
    9440:	46805220 	cvt.s.w	$f8,$f10
    9444:	460e4102 	mul.s	$f4,$f8,$f14
    9448:	e6040024 	swc1	$f4,36(s0)
    944c:	844bfff8 	lh	t3,-8(v0)
    9450:	a60b0030 	sh	t3,48(s0)
    9454:	844afffc 	lh	t2,-4(v0)
    9458:	448a3000 	mtc1	t2,$f6
    945c:	00000000 	nop
    9460:	468032a0 	cvt.s.w	$f10,$f6
    9464:	460e5202 	mul.s	$f8,$f10,$f14
    9468:	00000000 	nop
    946c:	46004102 	mul.s	$f4,$f8,$f0
    9470:	00000000 	nop
    9474:	460c2182 	mul.s	$f6,$f4,$f12
    9478:	e6060028 	swc1	$f6,40(s0)
    947c:	844c0000 	lh	t4,0(v0)
    9480:	448c5000 	mtc1	t4,$f10
    9484:	00000000 	nop
    9488:	46805220 	cvt.s.w	$f8,$f10
    948c:	460e4102 	mul.s	$f4,$f8,$f14
    9490:	e604002c 	swc1	$f4,44(s0)
    9494:	8dad0000 	lw	t5,0(t5)
    9498:	85a30314 	lh	v1,788(t5)
    949c:	50600004 	beqzl	v1,94b0 <Camera_KeepOn1+0x234>
    94a0:	c7a60070 	lwc1	$f6,112(sp)
    94a4:	0c000000 	jal	0 <func_800437F0>
    94a8:	02002025 	move	a0,s0
    94ac:	c7a60070 	lwc1	$f6,112(sp)
    94b0:	c60a0000 	lwc1	$f10,0(s0)
    94b4:	26050050 	addiu	a1,s0,80
    94b8:	2606005c 	addiu	a2,s0,92
    94bc:	460a3200 	add.s	$f8,$f6,$f10
    94c0:	afa60048 	sw	a2,72(sp)
    94c4:	afa50044 	sw	a1,68(sp)
    94c8:	27a400c0 	addiu	a0,sp,192
    94cc:	0c000000 	jal	0 <func_800437F0>
    94d0:	e7a80070 	swc1	$f8,112(sp)
    94d4:	26060074 	addiu	a2,s0,116
    94d8:	afa60040 	sw	a2,64(sp)
    94dc:	27a400b8 	addiu	a0,sp,184
    94e0:	0c000000 	jal	0 <func_800437F0>
    94e4:	8fa50044 	lw	a1,68(sp)
    94e8:	860e0030 	lh	t6,48(s0)
    94ec:	3c010000 	lui	at,0x0
    94f0:	ac2e0000 	sw	t6,0(at)
    94f4:	8604015e 	lh	a0,350(s0)
    94f8:	260e0094 	addiu	t6,s0,148
    94fc:	10800005 	beqz	a0,9514 <Camera_KeepOn1+0x298>
    9500:	2401000a 	li	at,10
    9504:	10810003 	beq	a0,at,9514 <Camera_KeepOn1+0x298>
    9508:	24010014 	li	at,20
    950c:	5481001a 	bnel	a0,at,9578 <Camera_KeepOn1+0x2fc>
    9510:	afae003c 	sw	t6,60(sp)
    9514:	44802000 	mtc1	zero,$f4
    9518:	248f0001 	addiu	t7,a0,1
    951c:	a60f015e 	sh	t7,350(s0)
    9520:	26090034 	addiu	t1,s0,52
    9524:	a5200010 	sh	zero,16(t1)
    9528:	e5240004 	swc1	$f4,4(t1)
    952c:	8e1800a8 	lw	t8,168(s0)
    9530:	3c030000 	lui	v1,0x0
    9534:	ad38000c 	sw	t8,12(t1)
    9538:	8c630000 	lw	v1,0(v1)
    953c:	847901c4 	lh	t9,452(v1)
    9540:	846b01c2 	lh	t3,450(v1)
    9544:	032b5021 	addu	t2,t9,t3
    9548:	a52a0016 	sh	t2,22(t1)
    954c:	87ac00c6 	lh	t4,198(sp)
    9550:	a52c0012 	sh	t4,18(t1)
    9554:	87ad00c4 	lh	t5,196(sp)
    9558:	a52d0014 	sh	t5,20(t1)
    955c:	c7a600c0 	lwc1	$f6,192(sp)
    9560:	e5260000 	swc1	$f6,0(t1)
    9564:	c60800f4 	lwc1	$f8,244(s0)
    9568:	c60a0098 	lwc1	$f10,152(s0)
    956c:	46085101 	sub.s	$f4,$f10,$f8
    9570:	e5240008 	swc1	$f4,8(t1)
    9574:	afae003c 	sw	t6,60(sp)
    9578:	860f0140 	lh	t7,320(s0)
    957c:	24010007 	li	at,7
    9580:	26090034 	addiu	t1,s0,52
    9584:	55e1000c 	bnel	t7,at,95b8 <Camera_KeepOn1+0x33c>
    9588:	3c013f80 	lui	at,0x3f80
    958c:	87b900c4 	lh	t9,196(sp)
    9590:	24180001 	li	t8,1
    9594:	3c010000 	lui	at,0x0
    9598:	ac380000 	sw	t8,0(at)
    959c:	00195823 	negu	t3,t9
    95a0:	a60b0134 	sh	t3,308(s0)
    95a4:	87aa00c6 	lh	t2,198(sp)
    95a8:	a6000138 	sh	zero,312(s0)
    95ac:	254c8001 	addiu	t4,t2,-32767
    95b0:	a60c0136 	sh	t4,310(s0)
    95b4:	3c013f80 	lui	at,0x3f80
    95b8:	c6060004 	lwc1	$f6,4(s0)
    95bc:	44815000 	mtc1	at,$f10
    95c0:	24010008 	li	at,8
    95c4:	e7a60104 	swc1	$f6,260(sp)
    95c8:	e7aa0084 	swc1	$f10,132(sp)
    95cc:	8602015c 	lh	v0,348(s0)
    95d0:	30420018 	andi	v0,v0,0x18
    95d4:	10410013 	beq	v0,at,9624 <Camera_KeepOn1+0x3a8>
    95d8:	24010010 	li	at,16
    95dc:	1041007c 	beq	v0,at,97d0 <Camera_KeepOn1+0x554>
    95e0:	260e00ac 	addiu	t6,s0,172
    95e4:	8fad003c 	lw	t5,60(sp)
    95e8:	8fa50044 	lw	a1,68(sp)
    95ec:	261800ac 	addiu	t8,s0,172
    95f0:	8daf0000 	lw	t7,0(t5)
    95f4:	acaf0000 	sw	t7,0(a1)
    95f8:	8dae0004 	lw	t6,4(t5)
    95fc:	acae0004 	sw	t6,4(a1)
    9600:	8daf0008 	lw	t7,8(t5)
    9604:	c4a80004 	lwc1	$f8,4(a1)
    9608:	acaf0008 	sw	t7,8(a1)
    960c:	c7a40070 	lwc1	$f4,112(sp)
    9610:	46044180 	add.s	$f6,$f8,$f4
    9614:	e4a60004 	swc1	$f6,4(a1)
    9618:	ad20000c 	sw	zero,12(t1)
    961c:	100000bc 	b	9910 <Camera_KeepOn1+0x694>
    9620:	afb80030 	sw	t8,48(sp)
    9624:	8e050090 	lw	a1,144(s0)
    9628:	24010002 	li	at,2
    962c:	260400ac 	addiu	a0,s0,172
    9630:	90b90002 	lbu	t9,2(a1)
    9634:	57210017 	bnel	t9,at,9694 <Camera_KeepOn1+0x418>
    9638:	afa40030 	sw	a0,48(sp)
    963c:	8e0b00a8 	lw	t3,168(s0)
    9640:	8caa0438 	lw	t2,1080(a1)
    9644:	556a0013 	bnel	t3,t2,9694 <Camera_KeepOn1+0x418>
    9648:	afa40030 	sw	a0,48(sp)
    964c:	27a40054 	addiu	a0,sp,84
    9650:	0c000000 	jal	0 <func_800437F0>
    9654:	afa90038 	sw	t1,56(sp)
    9658:	3c014270 	lui	at,0x4270
    965c:	44815000 	mtc1	at,$f10
    9660:	240d2ee0 	li	t5,12000
    9664:	260400ac 	addiu	a0,s0,172
    9668:	e7aa00c8 	swc1	$f10,200(sp)
    966c:	860c00a2 	lh	t4,162(s0)
    9670:	a7ad00cc 	sh	t5,204(sp)
    9674:	afa40030 	sw	a0,48(sp)
    9678:	27a50054 	addiu	a1,sp,84
    967c:	27a600c8 	addiu	a2,sp,200
    9680:	0c000000 	jal	0 <func_800437F0>
    9684:	a7ac00ce 	sh	t4,206(sp)
    9688:	10000006 	b	96a4 <Camera_KeepOn1+0x428>
    968c:	8fa90038 	lw	t1,56(sp)
    9690:	afa40030 	sw	a0,48(sp)
    9694:	8e0500a8 	lw	a1,168(s0)
    9698:	0c000000 	jal	0 <func_800437F0>
    969c:	afa90038 	sw	t1,56(sp)
    96a0:	8fa90038 	lw	t1,56(sp)
    96a4:	8e0500a8 	lw	a1,168(s0)
    96a8:	afa90038 	sw	t1,56(sp)
    96ac:	0c000000 	jal	0 <func_800437F0>
    96b0:	8fa40030 	lw	a0,48(sp)
    96b4:	8fa90038 	lw	t1,56(sp)
    96b8:	8e0300a8 	lw	v1,168(s0)
    96bc:	3c180000 	lui	t8,0x0
    96c0:	8d2f000c 	lw	t7,12(t1)
    96c4:	106f0004 	beq	v1,t7,96d8 <Camera_KeepOn1+0x45c>
    96c8:	00000000 	nop
    96cc:	44804000 	mtc1	zero,$f8
    96d0:	ad23000c 	sw	v1,12(t1)
    96d4:	e6080100 	swc1	$f8,256(s0)
    96d8:	8f180000 	lw	t8,0(t8)
    96dc:	3c013f80 	lui	at,0x3f80
    96e0:	44816000 	mtc1	at,$f12
    96e4:	871901c6 	lh	t9,454(t8)
    96e8:	3c010000 	lui	at,0x0
    96ec:	c42a0000 	lwc1	$f10,0(at)
    96f0:	44992000 	mtc1	t9,$f4
    96f4:	c60e00cc 	lwc1	$f14,204(s0)
    96f8:	3c073dcc 	lui	a3,0x3dcc
    96fc:	468021a0 	cvt.s.w	$f6,$f4
    9700:	c60400e0 	lwc1	$f4,224(s0)
    9704:	afa90038 	sw	t1,56(sp)
    9708:	34e7cccd 	ori	a3,a3,0xcccd
    970c:	460a3202 	mul.s	$f8,$f6,$f10
    9710:	00000000 	nop
    9714:	46044182 	mul.s	$f6,$f8,$f4
    9718:	44063000 	mfc1	a2,$f6
    971c:	0c000000 	jal	0 <func_800437F0>
    9720:	00000000 	nop
    9724:	e60000cc 	swc1	$f0,204(s0)
    9728:	3c0b0000 	lui	t3,0x0
    972c:	8d6b0000 	lw	t3,0(t3)
    9730:	3c013f80 	lui	at,0x3f80
    9734:	44816000 	mtc1	at,$f12
    9738:	856a01c8 	lh	t2,456(t3)
    973c:	3c010000 	lui	at,0x0
    9740:	c4240000 	lwc1	$f4,0(at)
    9744:	448a5000 	mtc1	t2,$f10
    9748:	3c073dcc 	lui	a3,0x3dcc
    974c:	34e7cccd 	ori	a3,a3,0xcccd
    9750:	46805220 	cvt.s.w	$f8,$f10
    9754:	c60a00e0 	lwc1	$f10,224(s0)
    9758:	c60e00d0 	lwc1	$f14,208(s0)
    975c:	46044182 	mul.s	$f6,$f8,$f4
    9760:	00000000 	nop
    9764:	460a3202 	mul.s	$f8,$f6,$f10
    9768:	44064000 	mfc1	a2,$f8
    976c:	0c000000 	jal	0 <func_800437F0>
    9770:	00000000 	nop
    9774:	e60000d0 	swc1	$f0,208(s0)
    9778:	3c0c0000 	lui	t4,0x0
    977c:	8d8c0000 	lw	t4,0(t4)
    9780:	3c010000 	lui	at,0x0
    9784:	c42a0000 	lwc1	$f10,0(at)
    9788:	858d019c 	lh	t5,412(t4)
    978c:	3c010000 	lui	at,0x0
    9790:	c60800e0 	lwc1	$f8,224(s0)
    9794:	448d2000 	mtc1	t5,$f4
    9798:	3c073dcc 	lui	a3,0x3dcc
    979c:	34e7cccd 	ori	a3,a3,0xcccd
    97a0:	468021a0 	cvt.s.w	$f6,$f4
    97a4:	c4240000 	lwc1	$f4,0(at)
    97a8:	c60e00d4 	lwc1	$f14,212(s0)
    97ac:	460a3302 	mul.s	$f12,$f6,$f10
    97b0:	00000000 	nop
    97b4:	46044182 	mul.s	$f6,$f8,$f4
    97b8:	44063000 	mfc1	a2,$f6
    97bc:	0c000000 	jal	0 <func_800437F0>
    97c0:	00000000 	nop
    97c4:	8fa90038 	lw	t1,56(sp)
    97c8:	10000003 	b	97d8 <Camera_KeepOn1+0x55c>
    97cc:	e60000d4 	swc1	$f0,212(s0)
    97d0:	ad20000c 	sw	zero,12(t1)
    97d4:	afae0030 	sw	t6,48(sp)
    97d8:	c60a0098 	lwc1	$f10,152(s0)
    97dc:	c6080104 	lwc1	$f8,260(s0)
    97e0:	8fb9003c 	lw	t9,60(sp)
    97e4:	02002025 	move	a0,s0
    97e8:	46085032 	c.eq.s	$f10,$f8
    97ec:	252d0008 	addiu	t5,t1,8
    97f0:	27ae00c8 	addiu	t6,sp,200
    97f4:	00001025 	move	v0,zero
    97f8:	4503000f 	bc1tl	9838 <Camera_KeepOn1+0x5bc>
    97fc:	c72a0004 	lwc1	$f10,4(t9)
    9800:	8e050090 	lw	a1,144(s0)
    9804:	3c010000 	lui	at,0x0
    9808:	c4240000 	lwc1	$f4,0(at)
    980c:	c4a6006c 	lwc1	$f6,108(a1)
    9810:	4606203c 	c.lt.s	$f4,$f6
    9814:	00000000 	nop
    9818:	45030007 	bc1tl	9838 <Camera_KeepOn1+0x5bc>
    981c:	c72a0004 	lwc1	$f10,4(t9)
    9820:	8caf067c 	lw	t7,1660(a1)
    9824:	240b0001 	li	t3,1
    9828:	000fc280 	sll	t8,t7,0xa
    982c:	07030006 	bgezl	t8,9848 <Camera_KeepOn1+0x5cc>
    9830:	a7ab0080 	sh	t3,128(sp)
    9834:	c72a0004 	lwc1	$f10,4(t9)
    9838:	e52a0008 	swc1	$f10,8(t1)
    983c:	10000002 	b	9848 <Camera_KeepOn1+0x5cc>
    9840:	a7a00080 	sh	zero,128(sp)
    9844:	a7ab0080 	sh	t3,128(sp)
    9848:	87aa0080 	lh	t2,128(sp)
    984c:	87ac0080 	lh	t4,128(sp)
    9850:	27a500b8 	addiu	a1,sp,184
    9854:	11400003 	beqz	t2,9864 <Camera_KeepOn1+0x5e8>
    9858:	8fa60030 	lw	a2,48(sp)
    985c:	10000002 	b	9868 <Camera_KeepOn1+0x5ec>
    9860:	c6020028 	lwc1	$f2,40(s0)
    9864:	c6020000 	lwc1	$f2,0(s0)
    9868:	11800003 	beqz	t4,9878 <Camera_KeepOn1+0x5fc>
    986c:	c7a80104 	lwc1	$f8,260(sp)
    9870:	10000001 	b	9878 <Camera_KeepOn1+0x5fc>
    9874:	24020080 	li	v0,128
    9878:	e7a80010 	swc1	$f8,16(sp)
    987c:	afad0014 	sw	t5,20(sp)
    9880:	afae0018 	sw	t6,24(sp)
    9884:	860f0030 	lh	t7,48(s0)
    9888:	44071000 	mfc1	a3,$f2
    988c:	afa90038 	sw	t1,56(sp)
    9890:	004fc025 	or	t8,v0,t7
    9894:	0c000000 	jal	0 <func_800437F0>
    9898:	afb8001c 	sw	t8,28(sp)
    989c:	8fb9003c 	lw	t9,60(sp)
    98a0:	27a50114 	addiu	a1,sp,276
    98a4:	27a400c8 	addiu	a0,sp,200
    98a8:	8f2a0000 	lw	t2,0(t9)
    98ac:	acaa0000 	sw	t2,0(a1)
    98b0:	8f2b0004 	lw	t3,4(t9)
    98b4:	acab0004 	sw	t3,4(a1)
    98b8:	8f2a0008 	lw	t2,8(t9)
    98bc:	acaa0008 	sw	t2,8(a1)
    98c0:	c7a40118 	lwc1	$f4,280(sp)
    98c4:	c7a60070 	lwc1	$f6,112(sp)
    98c8:	8fa60030 	lw	a2,48(sp)
    98cc:	46062280 	add.s	$f10,$f4,$f6
    98d0:	0c000000 	jal	0 <func_800437F0>
    98d4:	e7aa0118 	swc1	$f10,280(sp)
    98d8:	c7a000c8 	lwc1	$f0,200(sp)
    98dc:	c7a80104 	lwc1	$f8,260(sp)
    98e0:	8fa90038 	lw	t1,56(sp)
    98e4:	c7a60104 	lwc1	$f6,260(sp)
    98e8:	4600403c 	c.lt.s	$f8,$f0
    98ec:	3c013f80 	lui	at,0x3f80
    98f0:	45020005 	bc1fl	9908 <Camera_KeepOn1+0x68c>
    98f4:	46060283 	div.s	$f10,$f0,$f6
    98f8:	44812000 	mtc1	at,$f4
    98fc:	10000003 	b	990c <Camera_KeepOn1+0x690>
    9900:	e7a40084 	swc1	$f4,132(sp)
    9904:	46060283 	div.s	$f10,$f0,$f6
    9908:	e7aa0084 	swc1	$f10,132(sp)
    990c:	8fa50044 	lw	a1,68(sp)
    9910:	27a400d8 	addiu	a0,sp,216
    9914:	8fa60040 	lw	a2,64(sp)
    9918:	0c000000 	jal	0 <func_800437F0>
    991c:	afa90038 	sw	t1,56(sp)
    9920:	c6000004 	lwc1	$f0,4(s0)
    9924:	c7a800d8 	lwc1	$f8,216(sp)
    9928:	8fa90038 	lw	t1,56(sp)
    992c:	4600403c 	c.lt.s	$f8,$f0
    9930:	00000000 	nop
    9934:	45000009 	bc1f	995c <Camera_KeepOn1+0x6e0>
    9938:	3c030000 	lui	v1,0x0
    993c:	8c630000 	lw	v1,0(v1)
    9940:	e7a00104 	swc1	$f0,260(sp)
    9944:	846c01a0 	lh	t4,416(v1)
    9948:	448c2000 	mtc1	t4,$f4
    994c:	00000000 	nop
    9950:	468021a0 	cvt.s.w	$f6,$f4
    9954:	10000016 	b	99b0 <Camera_KeepOn1+0x734>
    9958:	e7a600e8 	swc1	$f6,232(sp)
    995c:	c6000008 	lwc1	$f0,8(s0)
    9960:	c7aa00d8 	lwc1	$f10,216(sp)
    9964:	c7a400d8 	lwc1	$f4,216(sp)
    9968:	3c013f80 	lui	at,0x3f80
    996c:	460a003c 	c.lt.s	$f0,$f10
    9970:	3c030000 	lui	v1,0x0
    9974:	4502000b 	bc1fl	99a4 <Camera_KeepOn1+0x728>
    9978:	44816000 	mtc1	at,$f12
    997c:	3c030000 	lui	v1,0x0
    9980:	8c630000 	lw	v1,0(v1)
    9984:	e7a00104 	swc1	$f0,260(sp)
    9988:	846d01a0 	lh	t5,416(v1)
    998c:	448d4000 	mtc1	t5,$f8
    9990:	00000000 	nop
    9994:	46804320 	cvt.s.w	$f12,$f8
    9998:	10000005 	b	99b0 <Camera_KeepOn1+0x734>
    999c:	e7ac00e8 	swc1	$f12,232(sp)
    99a0:	44816000 	mtc1	at,$f12
    99a4:	e7a40104 	swc1	$f4,260(sp)
    99a8:	8c630000 	lw	v1,0(v1)
    99ac:	e7ac00e8 	swc1	$f12,232(sp)
    99b0:	846e01c6 	lh	t6,454(v1)
    99b4:	3c010000 	lui	at,0x0
    99b8:	c4280000 	lwc1	$f8,0(at)
    99bc:	448e3000 	mtc1	t6,$f6
    99c0:	c60e00c0 	lwc1	$f14,192(s0)
    99c4:	3c073dcc 	lui	a3,0x3dcc
    99c8:	468032a0 	cvt.s.w	$f10,$f6
    99cc:	34e7cccd 	ori	a3,a3,0xcccd
    99d0:	afa90038 	sw	t1,56(sp)
    99d4:	c7ac00e8 	lwc1	$f12,232(sp)
    99d8:	46085102 	mul.s	$f4,$f10,$f8
    99dc:	44062000 	mfc1	a2,$f4
    99e0:	0c000000 	jal	0 <func_800437F0>
    99e4:	00000000 	nop
    99e8:	3c013f80 	lui	at,0x3f80
    99ec:	44813000 	mtc1	at,$f6
    99f0:	e60000c0 	swc1	$f0,192(s0)
    99f4:	3c073e4c 	lui	a3,0x3e4c
    99f8:	46003283 	div.s	$f10,$f6,$f0
    99fc:	34e7cccd 	ori	a3,a3,0xcccd
    9a00:	c7ac0104 	lwc1	$f12,260(sp)
    9a04:	c60e00dc 	lwc1	$f14,220(s0)
    9a08:	44065000 	mfc1	a2,$f10
    9a0c:	0c000000 	jal	0 <func_800437F0>
    9a10:	00000000 	nop
    9a14:	e60000dc 	swc1	$f0,220(s0)
    9a18:	8faf0030 	lw	t7,48(sp)
    9a1c:	e7a000d8 	swc1	$f0,216(sp)
    9a20:	e7a000e8 	swc1	$f0,232(sp)
    9a24:	8df90000 	lw	t9,0(t7)
    9a28:	27a60108 	addiu	a2,sp,264
    9a2c:	27a400d0 	addiu	a0,sp,208
    9a30:	acd90000 	sw	t9,0(a2)
    9a34:	8df80004 	lw	t8,4(t7)
    9a38:	acd80004 	sw	t8,4(a2)
    9a3c:	8df90008 	lw	t9,8(t7)
    9a40:	acd90008 	sw	t9,8(a2)
    9a44:	0c000000 	jal	0 <func_800437F0>
    9a48:	8fa50044 	lw	a1,68(sp)
    9a4c:	c7a000d0 	lwc1	$f0,208(sp)
    9a50:	c7ac00e8 	lwc1	$f12,232(sp)
    9a54:	3c013f00 	lui	at,0x3f00
    9a58:	44814000 	mtc1	at,$f8
    9a5c:	460c003e 	c.le.s	$f0,$f12
    9a60:	8fa90038 	lw	t1,56(sp)
    9a64:	45020004 	bc1fl	9a78 <Camera_KeepOn1+0x7fc>
    9a68:	46006086 	mov.s	$f2,$f12
    9a6c:	10000002 	b	9a78 <Camera_KeepOn1+0x7fc>
    9a70:	46000086 	mov.s	$f2,$f0
    9a74:	46006086 	mov.s	$f2,$f12
    9a78:	46081102 	mul.s	$f4,$f2,$f8
    9a7c:	3c010000 	lui	at,0x0
    9a80:	c42a0000 	lwc1	$f10,0(at)
    9a84:	c7a80084 	lwc1	$f8,132(sp)
    9a88:	3c030000 	lui	v1,0x0
    9a8c:	8c630000 	lw	v1,0(v1)
    9a90:	3c010000 	lui	at,0x0
    9a94:	46046181 	sub.s	$f6,$f12,$f4
    9a98:	3c074000 	lui	a3,0x4000
    9a9c:	46085101 	sub.s	$f4,$f10,$f8
    9aa0:	e7a600d0 	swc1	$f6,208(sp)
    9aa4:	c6060010 	lwc1	$f6,16(s0)
    9aa8:	c600000c 	lwc1	$f0,12(s0)
    9aac:	846b01ae 	lh	t3,430(v1)
    9ab0:	46003281 	sub.s	$f10,$f6,$f0
    9ab4:	448b3000 	mtc1	t3,$f6
    9ab8:	46045202 	mul.s	$f8,$f10,$f4
    9abc:	468032a0 	cvt.s.w	$f10,$f6
    9ac0:	46080480 	add.s	$f18,$f0,$f8
    9ac4:	46125100 	add.s	$f4,$f10,$f18
    9ac8:	c42a0000 	lwc1	$f10,0(at)
    9acc:	e7a400f0 	swc1	$f4,240(sp)
    9ad0:	846a01aa 	lh	t2,426(v1)
    9ad4:	c60e00dc 	lwc1	$f14,220(s0)
    9ad8:	e7b200ec 	swc1	$f18,236(sp)
    9adc:	448a4000 	mtc1	t2,$f8
    9ae0:	afa90038 	sw	t1,56(sp)
    9ae4:	468041a0 	cvt.s.w	$f6,$f8
    9ae8:	460a3102 	mul.s	$f4,$f6,$f10
    9aec:	44062000 	mfc1	a2,$f4
    9af0:	0c000000 	jal	0 <func_800437F0>
    9af4:	00000000 	nop
    9af8:	8fa90038 	lw	t1,56(sp)
    9afc:	c7b200ec 	lwc1	$f18,236(sp)
    9b00:	e60000dc 	swc1	$f0,220(s0)
    9b04:	87ac00be 	lh	t4,190(sp)
    9b08:	87ad00d6 	lh	t5,214(sp)
    9b0c:	e7a000d8 	swc1	$f0,216(sp)
    9b10:	258e8001 	addiu	t6,t4,-32767
    9b14:	000e7c00 	sll	t7,t6,0x10
    9b18:	a7ac00de 	sh	t4,222(sp)
    9b1c:	85230016 	lh	v1,22(t1)
    9b20:	000fc403 	sra	t8,t7,0x10
    9b24:	01b81023 	subu	v0,t5,t8
    9b28:	00022c00 	sll	a1,v0,0x10
    9b2c:	1060007e 	beqz	v1,9d28 <Camera_KeepOn1+0xaac>
    9b30:	00052c03 	sra	a1,a1,0x10
    9b34:	3c190000 	lui	t9,0x0
    9b38:	8f390000 	lw	t9,0(t9)
    9b3c:	27a400c8 	addiu	a0,sp,200
    9b40:	872201c4 	lh	v0,452(t9)
    9b44:	24190001 	li	t9,1
    9b48:	0062082a 	slt	at,v1,v0
    9b4c:	14200072 	bnez	at,9d18 <Camera_KeepOn1+0xa9c>
    9b50:	00625823 	subu	t3,v1,v0
    9b54:	87aa00ce 	lh	t2,206(sp)
    9b58:	a7ab0082 	sh	t3,130(sp)
    9b5c:	8fa50044 	lw	a1,68(sp)
    9b60:	8fa60048 	lw	a2,72(sp)
    9b64:	afa90038 	sw	t1,56(sp)
    9b68:	0c000000 	jal	0 <func_800437F0>
    9b6c:	a7aa00e2 	sh	t2,226(sp)
    9b70:	87ac00e2 	lh	t4,226(sp)
    9b74:	3c030000 	lui	v1,0x0
    9b78:	8c630000 	lw	v1,0(v1)
    9b7c:	25998001 	addiu	t9,t4,-32767
    9b80:	a7b900ce 	sh	t9,206(sp)
    9b84:	846f01c2 	lh	t7,450(v1)
    9b88:	3c013f80 	lui	at,0x3f80
    9b8c:	44818000 	mtc1	at,$f16
    9b90:	448f4000 	mtc1	t7,$f8
    9b94:	8fa90038 	lw	t1,56(sp)
    9b98:	c7a400c8 	lwc1	$f4,200(sp)
    9b9c:	468041a0 	cvt.s.w	$f6,$f8
    9ba0:	852d0012 	lh	t5,18(t1)
    9ba4:	c52a0000 	lwc1	$f10,0(t1)
    9ba8:	87af0082 	lh	t7,130(sp)
    9bac:	01b95823 	subu	t3,t5,t9
    9bb0:	000b5400 	sll	t2,t3,0x10
    9bb4:	46068003 	div.s	$f0,$f16,$f6
    9bb8:	000a6403 	sra	t4,t2,0x10
    9bbc:	448c3000 	mtc1	t4,$f6
    9bc0:	87ad00cc 	lh	t5,204(sp)
    9bc4:	46045201 	sub.s	$f8,$f10,$f4
    9bc8:	3c010000 	lui	at,0x0
    9bcc:	44078000 	mfc1	a3,$f16
    9bd0:	468032a0 	cvt.s.w	$f10,$f6
    9bd4:	c7ae00c0 	lwc1	$f14,192(sp)
    9bd8:	46004082 	mul.s	$f2,$f8,$f0
    9bdc:	00000000 	nop
    9be0:	46005202 	mul.s	$f8,$f10,$f0
    9be4:	4600418d 	trunc.w.s	$f6,$f8
    9be8:	440e3000 	mfc1	t6,$f6
    9bec:	00000000 	nop
    9bf0:	a7ae00e2 	sh	t6,226(sp)
    9bf4:	85380014 	lh	t8,20(t1)
    9bf8:	846e01cc 	lh	t6,460(v1)
    9bfc:	030dc823 	subu	t9,t8,t5
    9c00:	00195c00 	sll	t3,t9,0x10
    9c04:	000b5403 	sra	t2,t3,0x10
    9c08:	448a5000 	mtc1	t2,$f10
    9c0c:	00000000 	nop
    9c10:	46805220 	cvt.s.w	$f8,$f10
    9c14:	46004182 	mul.s	$f6,$f8,$f0
    9c18:	448f4000 	mtc1	t7,$f8
    9c1c:	4600328d 	trunc.w.s	$f10,$f6
    9c20:	468041a0 	cvt.s.w	$f6,$f8
    9c24:	44085000 	mfc1	t0,$f10
    9c28:	448e4000 	mtc1	t6,$f8
    9c2c:	00084400 	sll	t0,t0,0x10
    9c30:	00084403 	sra	t0,t0,0x10
    9c34:	46023282 	mul.s	$f10,$f6,$f2
    9c38:	a7a800e0 	sh	t0,224(sp)
    9c3c:	468041a0 	cvt.s.w	$f6,$f8
    9c40:	46045300 	add.s	$f12,$f10,$f4
    9c44:	c42a0000 	lwc1	$f10,0(at)
    9c48:	460a3102 	mul.s	$f4,$f6,$f10
    9c4c:	44062000 	mfc1	a2,$f4
    9c50:	0c000000 	jal	0 <func_800437F0>
    9c54:	00000000 	nop
    9c58:	3c0a0000 	lui	t2,0x0
    9c5c:	8d4a0000 	lw	t2,0(t2)
    9c60:	e7a000d8 	swc1	$f0,216(sp)
    9c64:	87b800e2 	lh	t8,226(sp)
    9c68:	854c01cc 	lh	t4,460(t2)
    9c6c:	87ad0082 	lh	t5,130(sp)
    9c70:	3c010000 	lui	at,0x0
    9c74:	448c4000 	mtc1	t4,$f8
    9c78:	030d0019 	multu	t8,t5
    9c7c:	c42a0000 	lwc1	$f10,0(at)
    9c80:	468041a0 	cvt.s.w	$f6,$f8
    9c84:	87ab00ce 	lh	t3,206(sp)
    9c88:	87a500c6 	lh	a1,198(sp)
    9c8c:	2407000a 	li	a3,10
    9c90:	460a3102 	mul.s	$f4,$f6,$f10
    9c94:	0000c812 	mflo	t9
    9c98:	01792021 	addu	a0,t3,t9
    9c9c:	00042400 	sll	a0,a0,0x10
    9ca0:	00042403 	sra	a0,a0,0x10
    9ca4:	44062000 	mfc1	a2,$f4
    9ca8:	0c000000 	jal	0 <func_800437F0>
    9cac:	00000000 	nop
    9cb0:	3c0d0000 	lui	t5,0x0
    9cb4:	8dad0000 	lw	t5,0(t5)
    9cb8:	a7a200de 	sh	v0,222(sp)
    9cbc:	87a800e0 	lh	t0,224(sp)
    9cc0:	85ab01cc 	lh	t3,460(t5)
    9cc4:	87ae0082 	lh	t6,130(sp)
    9cc8:	3c010000 	lui	at,0x0
    9ccc:	448b4000 	mtc1	t3,$f8
    9cd0:	010e0019 	multu	t0,t6
    9cd4:	c42a0000 	lwc1	$f10,0(at)
    9cd8:	468041a0 	cvt.s.w	$f6,$f8
    9cdc:	87af00cc 	lh	t7,204(sp)
    9ce0:	87a500c4 	lh	a1,196(sp)
    9ce4:	2407000a 	li	a3,10
    9ce8:	460a3102 	mul.s	$f4,$f6,$f10
    9cec:	0000c012 	mflo	t8
    9cf0:	01f82021 	addu	a0,t7,t8
    9cf4:	00042400 	sll	a0,a0,0x10
    9cf8:	00042403 	sra	a0,a0,0x10
    9cfc:	44062000 	mfc1	a2,$f4
    9d00:	0c000000 	jal	0 <func_800437F0>
    9d04:	00000000 	nop
    9d08:	8fa90038 	lw	t1,56(sp)
    9d0c:	a7a200dc 	sh	v0,220(sp)
    9d10:	10000002 	b	9d1c <Camera_KeepOn1+0xaa0>
    9d14:	85230016 	lh	v1,22(t1)
    9d18:	afb90088 	sw	t9,136(sp)
    9d1c:	246affff 	addiu	t2,v1,-1
    9d20:	10000075 	b	9ef8 <Camera_KeepOn1+0xc7c>
    9d24:	a52a0016 	sh	t2,22(t1)
    9d28:	00022400 	sll	a0,v0,0x10
    9d2c:	00042403 	sra	a0,a0,0x10
    9d30:	04800003 	bltz	a0,9d40 <Camera_KeepOn1+0xac4>
    9d34:	3c010000 	lui	at,0x0
    9d38:	10000002 	b	9d44 <Camera_KeepOn1+0xac8>
    9d3c:	00801025 	move	v0,a0
    9d40:	00041023 	negu	v0,a0
    9d44:	c4280000 	lwc1	$f8,0(at)
    9d48:	3c013f00 	lui	at,0x3f00
    9d4c:	44815000 	mtc1	at,$f10
    9d50:	46089182 	mul.s	$f6,$f18,$f8
    9d54:	460a3100 	add.s	$f4,$f6,$f10
    9d58:	4600220d 	trunc.w.s	$f8,$f4
    9d5c:	44034000 	mfc1	v1,$f8
    9d60:	00000000 	nop
    9d64:	00031c00 	sll	v1,v1,0x10
    9d68:	00031c03 	sra	v1,v1,0x10
    9d6c:	0062082a 	slt	at,v1,v0
    9d70:	50200049 	beqzl	at,9e98 <Camera_KeepOn1+0xc1c>
    9d74:	3c013f80 	lui	at,0x3f80
    9d78:	44853000 	mtc1	a1,$f6
    9d7c:	3c010000 	lui	at,0x0
    9d80:	c4240000 	lwc1	$f4,0(at)
    9d84:	468032a0 	cvt.s.w	$f10,$f6
    9d88:	c7ac00d0 	lwc1	$f12,208(sp)
    9d8c:	c7ae00d8 	lwc1	$f14,216(sp)
    9d90:	a7a500e2 	sh	a1,226(sp)
    9d94:	e7b200ec 	swc1	$f18,236(sp)
    9d98:	46045402 	mul.s	$f16,$f10,$f4
    9d9c:	0c000000 	jal	0 <func_800437F0>
    9da0:	e7b000f4 	swc1	$f16,244(sp)
    9da4:	c7a800d8 	lwc1	$f8,216(sp)
    9da8:	c7b200ec 	lwc1	$f18,236(sp)
    9dac:	c7aa00f0 	lwc1	$f10,240(sp)
    9db0:	46080183 	div.s	$f6,$f0,$f8
    9db4:	3c014000 	lui	at,0x4000
    9db8:	c7b000f4 	lwc1	$f16,244(sp)
    9dbc:	87ae00e2 	lh	t6,226(sp)
    9dc0:	46125101 	sub.s	$f4,$f10,$f18
    9dc4:	87ad00be 	lh	t5,190(sp)
    9dc8:	25aa8001 	addiu	t2,t5,-32767
    9dcc:	46043202 	mul.s	$f8,$f6,$f4
    9dd0:	44813000 	mtc1	at,$f6
    9dd4:	3c0143b4 	lui	at,0x43b4
    9dd8:	46124080 	add.s	$f2,$f8,$f18
    9ddc:	44814000 	mtc1	at,$f8
    9de0:	3c014000 	lui	at,0x4000
    9de4:	46021282 	mul.s	$f10,$f2,$f2
    9de8:	46065101 	sub.s	$f4,$f10,$f6
    9dec:	44813000 	mtc1	at,$f6
    9df0:	3c0143b4 	lui	at,0x43b4
    9df4:	46081281 	sub.s	$f10,$f2,$f8
    9df8:	44814000 	mtc1	at,$f8
    9dfc:	3c010000 	lui	at,0x0
    9e00:	460a2303 	div.s	$f12,$f4,$f10
    9e04:	460c4102 	mul.s	$f4,$f8,$f12
    9e08:	46043281 	sub.s	$f10,$f6,$f4
    9e0c:	46106202 	mul.s	$f8,$f12,$f16
    9e10:	460a4180 	add.s	$f6,$f8,$f10
    9e14:	46108102 	mul.s	$f4,$f16,$f16
    9e18:	05c0000d 	bltz	t6,9e50 <Camera_KeepOn1+0xbd4>
    9e1c:	46062383 	div.s	$f14,$f4,$f6
    9e20:	3c010000 	lui	at,0x0
    9e24:	c4280000 	lwc1	$f8,0(at)
    9e28:	3c013f00 	lui	at,0x3f00
    9e2c:	44812000 	mtc1	at,$f4
    9e30:	46087282 	mul.s	$f10,$f14,$f8
    9e34:	46045180 	add.s	$f6,$f10,$f4
    9e38:	4600320d 	trunc.w.s	$f8,$f6
    9e3c:	44084000 	mfc1	t0,$f8
    9e40:	00000000 	nop
    9e44:	00084400 	sll	t0,t0,0x10
    9e48:	1000000e 	b	9e84 <Camera_KeepOn1+0xc08>
    9e4c:	00084403 	sra	t0,t0,0x10
    9e50:	c42a0000 	lwc1	$f10,0(at)
    9e54:	3c013f00 	lui	at,0x3f00
    9e58:	44813000 	mtc1	at,$f6
    9e5c:	460a7102 	mul.s	$f4,$f14,$f10
    9e60:	46062200 	add.s	$f8,$f4,$f6
    9e64:	4600428d 	trunc.w.s	$f10,$f8
    9e68:	44085000 	mfc1	t0,$f10
    9e6c:	00000000 	nop
    9e70:	00084400 	sll	t0,t0,0x10
    9e74:	00084403 	sra	t0,t0,0x10
    9e78:	00084023 	negu	t0,t0
    9e7c:	00084400 	sll	t0,t0,0x10
    9e80:	00084403 	sra	t0,t0,0x10
    9e84:	01487821 	addu	t7,t2,t0
    9e88:	25f88001 	addiu	t8,t7,-32767
    9e8c:	1000001a 	b	9ef8 <Camera_KeepOn1+0xc7c>
    9e90:	a7b800de 	sh	t8,222(sp)
    9e94:	3c013f80 	lui	at,0x3f80
    9e98:	44812000 	mtc1	at,$f4
    9e9c:	c60600e0 	lwc1	$f6,224(s0)
    9ea0:	3c010000 	lui	at,0x0
    9ea4:	c42a0000 	lwc1	$f10,0(at)
    9ea8:	46062201 	sub.s	$f8,$f4,$f6
    9eac:	00034023 	negu	t0,v1
    9eb0:	00084400 	sll	t0,t0,0x10
    9eb4:	00084403 	sra	t0,t0,0x10
    9eb8:	460a4402 	mul.s	$f16,$f8,$f10
    9ebc:	04800004 	bltz	a0,9ed0 <Camera_KeepOn1+0xc54>
    9ec0:	00000000 	nop
    9ec4:	00034400 	sll	t0,v1,0x10
    9ec8:	10000001 	b	9ed0 <Camera_KeepOn1+0xc54>
    9ecc:	00084403 	sra	t0,t0,0x10
    9ed0:	01045823 	subu	t3,t0,a0
    9ed4:	448b2000 	mtc1	t3,$f4
    9ed8:	87ad00be 	lh	t5,190(sp)
    9edc:	468021a0 	cvt.s.w	$f6,$f4
    9ee0:	46103202 	mul.s	$f8,$f6,$f16
    9ee4:	4600428d 	trunc.w.s	$f10,$f8
    9ee8:	440e5000 	mfc1	t6,$f10
    9eec:	00000000 	nop
    9ef0:	01ae7823 	subu	t7,t5,t6
    9ef4:	a7af00de 	sh	t7,222(sp)
    9ef8:	8fb80088 	lw	t8,136(sp)
    9efc:	3c0c0000 	lui	t4,0x0
    9f00:	57000099 	bnezl	t8,a168 <Camera_KeepOn1+0xeec>
    9f04:	c60c0020 	lwc1	$f12,32(s0)
    9f08:	c6000014 	lwc1	$f0,20(s0)
    9f0c:	c6040018 	lwc1	$f4,24(s0)
    9f10:	c7a80084 	lwc1	$f8,132(sp)
    9f14:	3c013f00 	lui	at,0x3f00
    9f18:	46002181 	sub.s	$f6,$f4,$f0
    9f1c:	44811000 	mtc1	at,$f2
    9f20:	3c010000 	lui	at,0x0
    9f24:	87b900cc 	lh	t9,204(sp)
    9f28:	46083282 	mul.s	$f10,$f6,$f8
    9f2c:	c4260000 	lwc1	$f6,0(at)
    9f30:	3c013f00 	lui	at,0x3f00
    9f34:	87af00d4 	lh	t7,212(sp)
    9f38:	460a0100 	add.s	$f4,$f0,$f10
    9f3c:	46062282 	mul.s	$f10,$f4,$f6
    9f40:	44812000 	mtc1	at,$f4
    9f44:	00000000 	nop
    9f48:	46045180 	add.s	$f6,$f10,$f4
    9f4c:	44992000 	mtc1	t9,$f4
    9f50:	4600328d 	trunc.w.s	$f10,$f6
    9f54:	468021a0 	cvt.s.w	$f6,$f4
    9f58:	44045000 	mfc1	a0,$f10
    9f5c:	46024282 	mul.s	$f10,$f8,$f2
    9f60:	00042400 	sll	a0,a0,0x10
    9f64:	00042403 	sra	a0,a0,0x10
    9f68:	460a1100 	add.s	$f4,$f2,$f10
    9f6c:	46043202 	mul.s	$f8,$f6,$f4
    9f70:	448f3000 	mtc1	t7,$f6
    9f74:	00000000 	nop
    9f78:	46803120 	cvt.s.w	$f4,$f6
    9f7c:	4600428d 	trunc.w.s	$f10,$f8
    9f80:	c608001c 	lwc1	$f8,28(s0)
    9f84:	46082302 	mul.s	$f12,$f4,$f8
    9f88:	440e5000 	mfc1	t6,$f10
    9f8c:	00000000 	nop
    9f90:	008e2023 	subu	a0,a0,t6
    9f94:	00042400 	sll	a0,a0,0x10
    9f98:	00042403 	sra	a0,a0,0x10
    9f9c:	4600628d 	trunc.w.s	$f10,$f12
    9fa0:	440a5000 	mfc1	t2,$f10
    9fa4:	00000000 	nop
    9fa8:	008a2021 	addu	a0,a0,t2
    9fac:	00042400 	sll	a0,a0,0x10
    9fb0:	00042403 	sra	a0,a0,0x10
    9fb4:	2881ce00 	slti	at,a0,-12800
    9fb8:	50200004 	beqzl	at,9fcc <Camera_KeepOn1+0xd50>
    9fbc:	28813201 	slti	at,a0,12801
    9fc0:	10000005 	b	9fd8 <Camera_KeepOn1+0xd5c>
    9fc4:	2404ce00 	li	a0,-12800
    9fc8:	28813201 	slti	at,a0,12801
    9fcc:	14200002 	bnez	at,9fd8 <Camera_KeepOn1+0xd5c>
    9fd0:	00000000 	nop
    9fd4:	24043200 	li	a0,12800
    9fd8:	8d8c0000 	lw	t4,0(t4)
    9fdc:	3c010000 	lui	at,0x0
    9fe0:	c4280000 	lwc1	$f8,0(at)
    9fe4:	858d01ac 	lh	t5,428(t4)
    9fe8:	87a500bc 	lh	a1,188(sp)
    9fec:	2407000a 	li	a3,10
    9ff0:	448d3000 	mtc1	t5,$f6
    9ff4:	00000000 	nop
    9ff8:	46803120 	cvt.s.w	$f4,$f6
    9ffc:	46082282 	mul.s	$f10,$f4,$f8
    a000:	44065000 	mfc1	a2,$f10
    a004:	0c000000 	jal	0 <func_800437F0>
    a008:	00000000 	nop
    a00c:	a7a200dc 	sh	v0,220(sp)
    a010:	8fa40040 	lw	a0,64(sp)
    a014:	8fa50044 	lw	a1,68(sp)
    a018:	0c000000 	jal	0 <func_800437F0>
    a01c:	27a600d8 	addiu	a2,sp,216
    a020:	8fae0040 	lw	t6,64(sp)
    a024:	27a6008c 	addiu	a2,sp,140
    a028:	24010007 	li	at,7
    a02c:	8dd80000 	lw	t8,0(t6)
    a030:	acd80000 	sw	t8,0(a2)
    a034:	8dcf0004 	lw	t7,4(t6)
    a038:	accf0004 	sw	t7,4(a2)
    a03c:	8dd80008 	lw	t8,8(t6)
    a040:	acd80008 	sw	t8,8(a2)
    a044:	860b0140 	lh	t3,320(s0)
    a048:	8faa0040 	lw	t2,64(sp)
    a04c:	5561002f 	bnel	t3,at,a10c <Camera_KeepOn1+0xe90>
    a050:	8fb90048 	lw	t9,72(sp)
    a054:	8e19008c 	lw	t9,140(s0)
    a058:	3c0a0001 	lui	t2,0x1
    a05c:	02002025 	move	a0,s0
    a060:	01595021 	addu	t2,t2,t9
    a064:	914a0a39 	lbu	t2,2617(t2)
    a068:	11400005 	beqz	t2,a080 <Camera_KeepOn1+0xe04>
    a06c:	00000000 	nop
    a070:	86020030 	lh	v0,48(s0)
    a074:	304c0001 	andi	t4,v0,0x1
    a078:	11800005 	beqz	t4,a090 <Camera_KeepOn1+0xe14>
    a07c:	304d0002 	andi	t5,v0,0x2
    a080:	0c000000 	jal	0 <func_800437F0>
    a084:	8fa50044 	lw	a1,68(sp)
    a088:	10000017 	b	a0e8 <Camera_KeepOn1+0xe6c>
    a08c:	27af008c 	addiu	t7,sp,140
    a090:	11a00006 	beqz	t5,a0ac <Camera_KeepOn1+0xe30>
    a094:	27a40120 	addiu	a0,sp,288
    a098:	02002025 	move	a0,s0
    a09c:	0c000000 	jal	0 <func_800437F0>
    a0a0:	8fa50044 	lw	a1,68(sp)
    a0a4:	10000010 	b	a0e8 <Camera_KeepOn1+0xe6c>
    a0a8:	27af008c 	addiu	t7,sp,140
    a0ac:	0c000000 	jal	0 <func_800437F0>
    a0b0:	8fa50044 	lw	a1,68(sp)
    a0b4:	c7a6008c 	lwc1	$f6,140(sp)
    a0b8:	c7a40120 	lwc1	$f4,288(sp)
    a0bc:	c7aa0090 	lwc1	$f10,144(sp)
    a0c0:	46043201 	sub.s	$f8,$f6,$f4
    a0c4:	c7a60124 	lwc1	$f6,292(sp)
    a0c8:	46065101 	sub.s	$f4,$f10,$f6
    a0cc:	e7a8008c 	swc1	$f8,140(sp)
    a0d0:	c7a80094 	lwc1	$f8,148(sp)
    a0d4:	c7aa0128 	lwc1	$f10,296(sp)
    a0d8:	e7a40090 	swc1	$f4,144(sp)
    a0dc:	460a4181 	sub.s	$f6,$f8,$f10
    a0e0:	e7a60094 	swc1	$f6,148(sp)
    a0e4:	27af008c 	addiu	t7,sp,140
    a0e8:	8deb0000 	lw	t3,0(t7)
    a0ec:	8fae0048 	lw	t6,72(sp)
    a0f0:	adcb0000 	sw	t3,0(t6)
    a0f4:	8df80004 	lw	t8,4(t7)
    a0f8:	add80004 	sw	t8,4(t6)
    a0fc:	8deb0008 	lw	t3,8(t7)
    a100:	10000008 	b	a124 <Camera_KeepOn1+0xea8>
    a104:	adcb0008 	sw	t3,8(t6)
    a108:	8fb90048 	lw	t9,72(sp)
    a10c:	8d4d0000 	lw	t5,0(t2)
    a110:	af2d0000 	sw	t5,0(t9)
    a114:	8d4c0004 	lw	t4,4(t2)
    a118:	af2c0004 	sw	t4,4(t9)
    a11c:	8d4d0008 	lw	t5,8(t2)
    a120:	af2d0008 	sw	t5,8(t9)
    a124:	27a40120 	addiu	a0,sp,288
    a128:	8fa50048 	lw	a1,72(sp)
    a12c:	0c000000 	jal	0 <func_800437F0>
    a130:	8fa60044 	lw	a2,68(sp)
    a134:	3c0f0000 	lui	t7,0x0
    a138:	8def0000 	lw	t7,0(t7)
    a13c:	8fa50048 	lw	a1,72(sp)
    a140:	27a60120 	addiu	a2,sp,288
    a144:	85f80196 	lh	t8,406(t7)
    a148:	00a02025 	move	a0,a1
    a14c:	44982000 	mtc1	t8,$f4
    a150:	00000000 	nop
    a154:	46802120 	cvt.s.w	$f4,$f4
    a158:	44072000 	mfc1	a3,$f4
    a15c:	0c000000 	jal	0 <func_800437F0>
    a160:	00000000 	nop
    a164:	c60c0020 	lwc1	$f12,32(s0)
    a168:	c60e00fc 	lwc1	$f14,252(s0)
    a16c:	8e0600d4 	lw	a2,212(s0)
    a170:	0c000000 	jal	0 <func_800437F0>
    a174:	3c073f80 	lui	a3,0x3f80
    a178:	e60000fc 	swc1	$f0,252(s0)
    a17c:	00002025 	move	a0,zero
    a180:	8605015a 	lh	a1,346(s0)
    a184:	3c063f00 	lui	a2,0x3f00
    a188:	0c000000 	jal	0 <func_800437F0>
    a18c:	2407000a 	li	a3,10
    a190:	a602015a 	sh	v0,346(s0)
    a194:	87ab0080 	lh	t3,128(sp)
    a198:	51600004 	beqzl	t3,a1ac <Camera_KeepOn1+0xf30>
    a19c:	c6020024 	lwc1	$f2,36(s0)
    a1a0:	10000002 	b	a1ac <Camera_KeepOn1+0xf30>
    a1a4:	c602002c 	lwc1	$f2,44(s0)
    a1a8:	c6020024 	lwc1	$f2,36(s0)
    a1ac:	44051000 	mfc1	a1,$f2
    a1b0:	0c000000 	jal	0 <func_800437F0>
    a1b4:	02002025 	move	a0,s0
    a1b8:	e6000100 	swc1	$f0,256(s0)
    a1bc:	24020001 	li	v0,1
    a1c0:	8fbf002c 	lw	ra,44(sp)
    a1c4:	8fb00028 	lw	s0,40(sp)
    a1c8:	27bd0138 	addiu	sp,sp,312
    a1cc:	03e00008 	jr	ra
    a1d0:	00000000 	nop

0000a1d4 <Camera_KeepOn2>:
    a1d4:	27bdffe8 	addiu	sp,sp,-24
    a1d8:	afbf0014 	sw	ra,20(sp)
    a1dc:	0c000000 	jal	0 <func_800437F0>
    a1e0:	00000000 	nop
    a1e4:	8fbf0014 	lw	ra,20(sp)
    a1e8:	27bd0018 	addiu	sp,sp,24
    a1ec:	03e00008 	jr	ra
    a1f0:	00000000 	nop

0000a1f4 <Camera_KeepOn3>:
    a1f4:	27bdff18 	addiu	sp,sp,-232
    a1f8:	afb30028 	sw	s3,40(sp)
    a1fc:	00809825 	move	s3,a0
    a200:	afbf002c 	sw	ra,44(sp)
    a204:	afb20024 	sw	s2,36(sp)
    a208:	afb10020 	sw	s1,32(sp)
    a20c:	afb0001c 	sw	s0,28(sp)
    a210:	0c000000 	jal	0 <func_800437F0>
    a214:	8c840090 	lw	a0,144(a0)
    a218:	e7a00058 	swc1	$f0,88(sp)
    a21c:	8e6200a8 	lw	v0,168(s3)
    a220:	10400004 	beqz	v0,a234 <Camera_KeepOn3+0x40>
    a224:	00000000 	nop
    a228:	8c4e0130 	lw	t6,304(v0)
    a22c:	55c0000c 	bnezl	t6,a260 <Camera_KeepOn3+0x6c>
    a230:	8663015e 	lh	v1,350(s3)
    a234:	14400003 	bnez	v0,a244 <Camera_KeepOn3+0x50>
    a238:	3c040000 	lui	a0,0x0
    a23c:	0c000000 	jal	0 <func_800437F0>
    a240:	24840000 	addiu	a0,a0,0
    a244:	ae6000a8 	sw	zero,168(s3)
    a248:	02602025 	move	a0,s3
    a24c:	0c000000 	jal	0 <func_800437F0>
    a250:	24050001 	li	a1,1
    a254:	1000027f 	b	ac54 <Camera_KeepOn3+0xa60>
    a258:	24020001 	li	v0,1
    a25c:	8663015e 	lh	v1,350(s3)
    a260:	2401000a 	li	at,10
    a264:	50600006 	beqzl	v1,a280 <Camera_KeepOn3+0x8c>
    a268:	8e64008c 	lw	a0,140(s3)
    a26c:	10610003 	beq	v1,at,a27c <Camera_KeepOn3+0x88>
    a270:	24010014 	li	at,20
    a274:	54610012 	bnel	v1,at,a2c0 <Camera_KeepOn3+0xcc>
    a278:	866d014c 	lh	t5,332(s3)
    a27c:	8e64008c 	lw	a0,140(s3)
    a280:	8c8f01dc 	lw	t7,476(a0)
    a284:	55e0000a 	bnezl	t7,a2b0 <Camera_KeepOn3+0xbc>
    a288:	866b014c 	lh	t3,332(s3)
    a28c:	8678014c 	lh	t8,332(s3)
    a290:	86690164 	lh	t1,356(s3)
    a294:	24020001 	li	v0,1
    a298:	37190020 	ori	t9,t8,0x20
    a29c:	a679014c 	sh	t9,332(s3)
    a2a0:	352a0050 	ori	t2,t1,0x50
    a2a4:	1000026b 	b	ac54 <Camera_KeepOn3+0xa60>
    a2a8:	ac8a01dc 	sw	t2,476(a0)
    a2ac:	866b014c 	lh	t3,332(s3)
    a2b0:	8663015e 	lh	v1,350(s3)
    a2b4:	316cffdf 	andi	t4,t3,0xffdf
    a2b8:	a66c014c 	sh	t4,332(s3)
    a2bc:	866d014c 	lh	t5,332(s3)
    a2c0:	2401000a 	li	at,10
    a2c4:	31aeffef 	andi	t6,t5,0xffef
    a2c8:	10600008 	beqz	v1,a2ec <Camera_KeepOn3+0xf8>
    a2cc:	a66e014c 	sh	t6,332(s3)
    a2d0:	10610006 	beq	v1,at,a2ec <Camera_KeepOn3+0xf8>
    a2d4:	24010014 	li	at,20
    a2d8:	10610004 	beq	v1,at,a2ec <Camera_KeepOn3+0xf8>
    a2dc:	3c0f0000 	lui	t7,0x0
    a2e0:	8def0000 	lw	t7,0(t7)
    a2e4:	85e20314 	lh	v0,788(t7)
    a2e8:	10400058 	beqz	v0,a44c <Camera_KeepOn3+0x258>
    a2ec:	3c0d0000 	lui	t5,0x0
    a2f0:	8dad0000 	lw	t5,0(t5)
    a2f4:	3c010000 	lui	at,0x0
    a2f8:	c42e0000 	lwc1	$f14,0(at)
    a2fc:	85ae01f0 	lh	t6,496(t5)
    a300:	3c013f80 	lui	at,0x3f80
    a304:	44814000 	mtc1	at,$f8
    a308:	448e2000 	mtc1	t6,$f4
    a30c:	3c014288 	lui	at,0x4288
    a310:	86780142 	lh	t8,322(s3)
    a314:	468021a0 	cvt.s.w	$f6,$f4
    a318:	44812000 	mtc1	at,$f4
    a31c:	3c090000 	lui	t1,0x0
    a320:	0018c8c0 	sll	t9,t8,0x3
    a324:	866a0144 	lh	t2,324(s3)
    a328:	01394821 	addu	t1,t1,t9
    a32c:	460e3082 	mul.s	$f2,$f6,$f14
    a330:	46002183 	div.s	$f6,$f4,$f0
    a334:	8d290004 	lw	t1,4(t1)
    a338:	000a58c0 	sll	t3,t2,0x3
    a33c:	012b6021 	addu	t4,t1,t3
    a340:	8d820004 	lw	v0,4(t4)
    a344:	46024280 	add.s	$f10,$f8,$f2
    a348:	844f0000 	lh	t7,0(v0)
    a34c:	2442002c 	addiu	v0,v0,44
    a350:	448f2000 	mtc1	t7,$f4
    a354:	46061202 	mul.s	$f8,$f2,$f6
    a358:	468021a0 	cvt.s.w	$f6,$f4
    a35c:	46085301 	sub.s	$f12,$f10,$f8
    a360:	460e3282 	mul.s	$f10,$f6,$f14
    a364:	00000000 	nop
    a368:	46005202 	mul.s	$f8,$f10,$f0
    a36c:	00000000 	nop
    a370:	460c4102 	mul.s	$f4,$f8,$f12
    a374:	e6640000 	swc1	$f4,0(s3)
    a378:	8458ffd8 	lh	t8,-40(v0)
    a37c:	44983000 	mtc1	t8,$f6
    a380:	00000000 	nop
    a384:	468032a0 	cvt.s.w	$f10,$f6
    a388:	e66a0004 	swc1	$f10,4(s3)
    a38c:	8459ffdc 	lh	t9,-36(v0)
    a390:	44994000 	mtc1	t9,$f8
    a394:	00000000 	nop
    a398:	46804120 	cvt.s.w	$f4,$f8
    a39c:	e6640008 	swc1	$f4,8(s3)
    a3a0:	844affe0 	lh	t2,-32(v0)
    a3a4:	448a3000 	mtc1	t2,$f6
    a3a8:	3c0a0000 	lui	t2,0x0
    a3ac:	468032a0 	cvt.s.w	$f10,$f6
    a3b0:	e66a000c 	swc1	$f10,12(s3)
    a3b4:	8449ffe4 	lh	t1,-28(v0)
    a3b8:	44894000 	mtc1	t1,$f8
    a3bc:	00000000 	nop
    a3c0:	46804120 	cvt.s.w	$f4,$f8
    a3c4:	e6640010 	swc1	$f4,16(s3)
    a3c8:	844bffe8 	lh	t3,-24(v0)
    a3cc:	448b3000 	mtc1	t3,$f6
    a3d0:	00000000 	nop
    a3d4:	468032a0 	cvt.s.w	$f10,$f6
    a3d8:	e66a0014 	swc1	$f10,20(s3)
    a3dc:	844cffec 	lh	t4,-20(v0)
    a3e0:	448c4000 	mtc1	t4,$f8
    a3e4:	00000000 	nop
    a3e8:	46804120 	cvt.s.w	$f4,$f8
    a3ec:	e6640018 	swc1	$f4,24(s3)
    a3f0:	844dfff0 	lh	t5,-16(v0)
    a3f4:	448d3000 	mtc1	t5,$f6
    a3f8:	00000000 	nop
    a3fc:	468032a0 	cvt.s.w	$f10,$f6
    a400:	460e5202 	mul.s	$f8,$f10,$f14
    a404:	e668001c 	swc1	$f8,28(s3)
    a408:	844efff4 	lh	t6,-12(v0)
    a40c:	448e2000 	mtc1	t6,$f4
    a410:	00000000 	nop
    a414:	468021a0 	cvt.s.w	$f6,$f4
    a418:	e6660020 	swc1	$f6,32(s3)
    a41c:	844ffff8 	lh	t7,-8(v0)
    a420:	448f5000 	mtc1	t7,$f10
    a424:	00000000 	nop
    a428:	46805220 	cvt.s.w	$f8,$f10
    a42c:	460e4102 	mul.s	$f4,$f8,$f14
    a430:	e6640024 	swc1	$f4,36(s3)
    a434:	8458fffc 	lh	t8,-4(v0)
    a438:	a6780028 	sh	t8,40(s3)
    a43c:	84590000 	lh	t9,0(v0)
    a440:	a679002a 	sh	t9,42(s3)
    a444:	8d4a0000 	lw	t2,0(t2)
    a448:	85420314 	lh	v0,788(t2)
    a44c:	50400004 	beqzl	v0,a460 <Camera_KeepOn3+0x26c>
    a450:	c7a60058 	lwc1	$f6,88(sp)
    a454:	0c000000 	jal	0 <func_800437F0>
    a458:	02602025 	move	a0,s3
    a45c:	c7a60058 	lwc1	$f6,88(sp)
    a460:	c66a0000 	lwc1	$f10,0(s3)
    a464:	26700050 	addiu	s0,s3,80
    a468:	2666005c 	addiu	a2,s3,92
    a46c:	460a3200 	add.s	$f8,$f6,$f10
    a470:	afa60048 	sw	a2,72(sp)
    a474:	02002825 	move	a1,s0
    a478:	27a40094 	addiu	a0,sp,148
    a47c:	0c000000 	jal	0 <func_800437F0>
    a480:	e7a80058 	swc1	$f8,88(sp)
    a484:	26720074 	addiu	s2,s3,116
    a488:	02403025 	move	a2,s2
    a48c:	27a4008c 	addiu	a0,sp,140
    a490:	0c000000 	jal	0 <func_800437F0>
    a494:	02002825 	move	a1,s0
    a498:	267100ac 	addiu	s1,s3,172
    a49c:	02202025 	move	a0,s1
    a4a0:	0c000000 	jal	0 <func_800437F0>
    a4a4:	8e6500a8 	lw	a1,168(s3)
    a4a8:	27a4006c 	addiu	a0,sp,108
    a4ac:	0c000000 	jal	0 <func_800437F0>
    a4b0:	8e650090 	lw	a1,144(s3)
    a4b4:	26680094 	addiu	t0,s3,148
    a4b8:	8d0b0000 	lw	t3,0(t0)
    a4bc:	27a500d0 	addiu	a1,sp,208
    a4c0:	27a400a4 	addiu	a0,sp,164
    a4c4:	acab0000 	sw	t3,0(a1)
    a4c8:	8d090004 	lw	t1,4(t0)
    a4cc:	02203025 	move	a2,s1
    a4d0:	aca90004 	sw	t1,4(a1)
    a4d4:	8d0b0008 	lw	t3,8(t0)
    a4d8:	acab0008 	sw	t3,8(a1)
    a4dc:	c7a400d4 	lwc1	$f4,212(sp)
    a4e0:	c7a60058 	lwc1	$f6,88(sp)
    a4e4:	afa8003c 	sw	t0,60(sp)
    a4e8:	46062280 	add.s	$f10,$f4,$f6
    a4ec:	0c000000 	jal	0 <func_800437F0>
    a4f0:	e7aa00d4 	swc1	$f10,212(sp)
    a4f4:	866c002a 	lh	t4,42(s3)
    a4f8:	3c010000 	lui	at,0x0
    a4fc:	27a500d0 	addiu	a1,sp,208
    a500:	ac2c0000 	sw	t4,0(at)
    a504:	8663015e 	lh	v1,350(s3)
    a508:	8fa8003c 	lw	t0,60(sp)
    a50c:	2401000a 	li	at,10
    a510:	50600006 	beqzl	v1,a52c <Camera_KeepOn3+0x338>
    a514:	8e6d00a8 	lw	t5,168(s3)
    a518:	10610003 	beq	v1,at,a528 <Camera_KeepOn3+0x334>
    a51c:	24010014 	li	at,20
    a520:	1461012f 	bne	v1,at,a9e0 <Camera_KeepOn3+0x7ec>
    a524:	2662002c 	addiu	v0,s3,44
    a528:	8e6d00a8 	lw	t5,168(s3)
    a52c:	2667002c 	addiu	a3,s3,44
    a530:	3c013f80 	lui	at,0x3f80
    a534:	afad00ac 	sw	t5,172(sp)
    a538:	8e6e0090 	lw	t6,144(s3)
    a53c:	afae00b0 	sw	t6,176(sp)
    a540:	866f015e 	lh	t7,350(s3)
    a544:	8e7900a8 	lw	t9,168(s3)
    a548:	25f80001 	addiu	t8,t7,1
    a54c:	a678015e 	sh	t8,350(s3)
    a550:	acf9000c 	sw	t9,12(a3)
    a554:	c7a800a4 	lwc1	$f8,164(sp)
    a558:	c6600008 	lwc1	$f0,8(s3)
    a55c:	c7a400a4 	lwc1	$f4,164(sp)
    a560:	4608003c 	c.lt.s	$f0,$f8
    a564:	00000000 	nop
    a568:	45020005 	bc1fl	a580 <Camera_KeepOn3+0x38c>
    a56c:	46002303 	div.s	$f12,$f4,$f0
    a570:	44816000 	mtc1	at,$f12
    a574:	10000002 	b	a580 <Camera_KeepOn3+0x38c>
    a578:	00000000 	nop
    a57c:	46002303 	div.s	$f12,$f4,$f0
    a580:	3c010000 	lui	at,0x0
    a584:	c4300000 	lwc1	$f16,0(at)
    a588:	3c013f00 	lui	at,0x3f00
    a58c:	44819000 	mtc1	at,$f18
    a590:	866a0028 	lh	t2,40(s3)
    a594:	3c013f80 	lui	at,0x3f80
    a598:	44813000 	mtc1	at,$f6
    a59c:	a4ea001c 	sh	t2,28(a3)
    a5a0:	84e9001c 	lh	t1,28(a3)
    a5a4:	460c3281 	sub.s	$f10,$f6,$f12
    a5a8:	c7a800a4 	lwc1	$f8,164(sp)
    a5ac:	44893000 	mtc1	t1,$f6
    a5b0:	87ab00a8 	lh	t3,168(sp)
    a5b4:	46085102 	mul.s	$f4,$f10,$f8
    a5b8:	87a300aa 	lh	v1,170(sp)
    a5bc:	87ad0092 	lh	t5,146(sp)
    a5c0:	006d7023 	subu	t6,v1,t5
    a5c4:	468032a0 	cvt.s.w	$f10,$f6
    a5c8:	000ec400 	sll	t8,t6,0x10
    a5cc:	0018cc03 	sra	t9,t8,0x10
    a5d0:	460a2203 	div.s	$f8,$f4,$f10
    a5d4:	e7a800bc 	swc1	$f8,188(sp)
    a5d8:	c6660018 	lwc1	$f6,24(s3)
    a5dc:	c6600014 	lwc1	$f0,20(s3)
    a5e0:	448b4000 	mtc1	t3,$f8
    a5e4:	46003101 	sub.s	$f4,$f6,$f0
    a5e8:	468041a0 	cvt.s.w	$f6,$f8
    a5ec:	460c2282 	mul.s	$f10,$f4,$f12
    a5f0:	c664001c 	lwc1	$f4,28(s3)
    a5f4:	460a0380 	add.s	$f14,$f0,$f10
    a5f8:	46043282 	mul.s	$f10,$f6,$f4
    a5fc:	00000000 	nop
    a600:	46107102 	mul.s	$f4,$f14,$f16
    a604:	46005207 	neg.s	$f8,$f10
    a608:	4600418d 	trunc.w.s	$f6,$f8
    a60c:	46122280 	add.s	$f10,$f4,$f18
    a610:	440f3000 	mfc1	t7,$f6
    a614:	4600520d 	trunc.w.s	$f8,$f10
    a618:	44094000 	mfc1	t1,$f8
    a61c:	00000000 	nop
    a620:	012f5821 	addu	t3,t1,t7
    a624:	a7ab00a0 	sh	t3,160(sp)
    a628:	c6660010 	lwc1	$f6,16(s3)
    a62c:	c662000c 	lwc1	$f2,12(s3)
    a630:	8662002a 	lh	v0,42(s3)
    a634:	46023101 	sub.s	$f4,$f6,$f2
    a638:	304c0010 	andi	t4,v0,0x10
    a63c:	30490020 	andi	t1,v0,0x20
    a640:	460c2282 	mul.s	$f10,$f4,$f12
    a644:	11800013 	beqz	t4,a694 <Camera_KeepOn3+0x4a0>
    a648:	460a1380 	add.s	$f14,$f2,$f10
    a64c:	07210009 	bgez	t9,a674 <Camera_KeepOn3+0x480>
    a650:	00000000 	nop
    a654:	46107202 	mul.s	$f8,$f14,$f16
    a658:	46124180 	add.s	$f6,$f8,$f18
    a65c:	4600310d 	trunc.w.s	$f4,$f6
    a660:	440b2000 	mfc1	t3,$f4
    a664:	00000000 	nop
    a668:	006b6021 	addu	t4,v1,t3
    a66c:	10000054 	b	a7c0 <Camera_KeepOn3+0x5cc>
    a670:	a7ac00a2 	sh	t4,162(sp)
    a674:	46107282 	mul.s	$f10,$f14,$f16
    a678:	46125200 	add.s	$f8,$f10,$f18
    a67c:	4600418d 	trunc.w.s	$f6,$f8
    a680:	44193000 	mfc1	t9,$f6
    a684:	00000000 	nop
    a688:	00795023 	subu	t2,v1,t9
    a68c:	1000004c 	b	a7c0 <Camera_KeepOn3+0x5cc>
    a690:	a7aa00a2 	sh	t2,162(sp)
    a694:	1120001a 	beqz	t1,a700 <Camera_KeepOn3+0x50c>
    a698:	87a300aa 	lh	v1,170(sp)
    a69c:	87a300aa 	lh	v1,170(sp)
    a6a0:	87af0092 	lh	t7,146(sp)
    a6a4:	006f5823 	subu	t3,v1,t7
    a6a8:	000b6400 	sll	t4,t3,0x10
    a6ac:	000c6c03 	sra	t5,t4,0x10
    a6b0:	05a1000a 	bgez	t5,a6dc <Camera_KeepOn3+0x4e8>
    a6b4:	00000000 	nop
    a6b8:	46107102 	mul.s	$f4,$f14,$f16
    a6bc:	24798001 	addiu	t9,v1,-32767
    a6c0:	46122280 	add.s	$f10,$f4,$f18
    a6c4:	4600520d 	trunc.w.s	$f8,$f10
    a6c8:	440b4000 	mfc1	t3,$f8
    a6cc:	00000000 	nop
    a6d0:	032b6023 	subu	t4,t9,t3
    a6d4:	1000003a 	b	a7c0 <Camera_KeepOn3+0x5cc>
    a6d8:	a7ac00a2 	sh	t4,162(sp)
    a6dc:	46107182 	mul.s	$f6,$f14,$f16
    a6e0:	24788001 	addiu	t8,v1,-32767
    a6e4:	46123100 	add.s	$f4,$f6,$f18
    a6e8:	4600228d 	trunc.w.s	$f10,$f4
    a6ec:	44195000 	mfc1	t9,$f10
    a6f0:	00000000 	nop
    a6f4:	03195821 	addu	t3,t8,t9
    a6f8:	10000031 	b	a7c0 <Camera_KeepOn3+0x5cc>
    a6fc:	a7ab00a2 	sh	t3,162(sp)
    a700:	87ac0092 	lh	t4,146(sp)
    a704:	006c1023 	subu	v0,v1,t4
    a708:	00021400 	sll	v0,v0,0x10
    a70c:	00021403 	sra	v0,v0,0x10
    a710:	04400003 	bltz	v0,a720 <Camera_KeepOn3+0x52c>
    a714:	00022023 	negu	a0,v0
    a718:	10000001 	b	a720 <Camera_KeepOn3+0x52c>
    a71c:	00402025 	move	a0,v0
    a720:	28813fff 	slti	at,a0,16383
    a724:	10200013 	beqz	at,a774 <Camera_KeepOn3+0x580>
    a728:	00000000 	nop
    a72c:	04410009 	bgez	v0,a754 <Camera_KeepOn3+0x560>
    a730:	00000000 	nop
    a734:	46107202 	mul.s	$f8,$f14,$f16
    a738:	46124180 	add.s	$f6,$f8,$f18
    a73c:	4600310d 	trunc.w.s	$f4,$f6
    a740:	44092000 	mfc1	t1,$f4
    a744:	00000000 	nop
    a748:	00697821 	addu	t7,v1,t1
    a74c:	1000001c 	b	a7c0 <Camera_KeepOn3+0x5cc>
    a750:	a7af00a2 	sh	t7,162(sp)
    a754:	46107282 	mul.s	$f10,$f14,$f16
    a758:	46125200 	add.s	$f8,$f10,$f18
    a75c:	4600418d 	trunc.w.s	$f6,$f8
    a760:	440c3000 	mfc1	t4,$f6
    a764:	00000000 	nop
    a768:	006c6823 	subu	t5,v1,t4
    a76c:	10000014 	b	a7c0 <Camera_KeepOn3+0x5cc>
    a770:	a7ad00a2 	sh	t5,162(sp)
    a774:	0441000a 	bgez	v0,a7a0 <Camera_KeepOn3+0x5ac>
    a778:	00000000 	nop
    a77c:	46107102 	mul.s	$f4,$f14,$f16
    a780:	24698001 	addiu	t1,v1,-32767
    a784:	46122280 	add.s	$f10,$f4,$f18
    a788:	4600520d 	trunc.w.s	$f8,$f10
    a78c:	440b4000 	mfc1	t3,$f8
    a790:	00000000 	nop
    a794:	012b6023 	subu	t4,t1,t3
    a798:	10000009 	b	a7c0 <Camera_KeepOn3+0x5cc>
    a79c:	a7ac00a2 	sh	t4,162(sp)
    a7a0:	46107182 	mul.s	$f6,$f14,$f16
    a7a4:	246a8001 	addiu	t2,v1,-32767
    a7a8:	46123100 	add.s	$f4,$f6,$f18
    a7ac:	4600228d 	trunc.w.s	$f10,$f4
    a7b0:	44095000 	mfc1	t1,$f10
    a7b4:	00000000 	nop
    a7b8:	01495821 	addu	t3,t2,t1
    a7bc:	a7ab00a2 	sh	t3,162(sp)
    a7c0:	3c010000 	lui	at,0x0
    a7c4:	c4200000 	lwc1	$f0,0(at)
    a7c8:	3c013f80 	lui	at,0x3f80
    a7cc:	44813000 	mtc1	at,$f6
    a7d0:	c7ae00a4 	lwc1	$f14,164(sp)
    a7d4:	87ac00a2 	lh	t4,162(sp)
    a7d8:	46003101 	sub.s	$f4,$f6,$f0
    a7dc:	c7a600bc 	lwc1	$f6,188(sp)
    a7e0:	87ad00a0 	lh	t5,160(sp)
    a7e4:	a7ac0080 	sh	t4,128(sp)
    a7e8:	46047282 	mul.s	$f10,$f14,$f4
    a7ec:	a7ad0082 	sh	t5,130(sp)
    a7f0:	24f10010 	addiu	s1,a3,16
    a7f4:	46003202 	mul.s	$f8,$f6,$f0
    a7f8:	02202025 	move	a0,s1
    a7fc:	27a600a4 	addiu	a2,sp,164
    a800:	460a4100 	add.s	$f4,$f8,$f10
    a804:	e7a400a4 	swc1	$f4,164(sp)
    a808:	8d0f0000 	lw	t7,0(t0)
    a80c:	acaf0000 	sw	t7,0(a1)
    a810:	8d0e0004 	lw	t6,4(t0)
    a814:	acae0004 	sw	t6,4(a1)
    a818:	8d0f0008 	lw	t7,8(t0)
    a81c:	acaf0008 	sw	t7,8(a1)
    a820:	c7a600d4 	lwc1	$f6,212(sp)
    a824:	c7a80058 	lwc1	$f8,88(sp)
    a828:	afa70038 	sw	a3,56(sp)
    a82c:	e7ae00b8 	swc1	$f14,184(sp)
    a830:	46083280 	add.s	$f10,$f6,$f8
    a834:	0c000000 	jal	0 <func_800437F0>
    a838:	e7aa00d4 	swc1	$f10,212(sp)
    a83c:	3c013f00 	lui	at,0x3f00
    a840:	c7ae00b8 	lwc1	$f14,184(sp)
    a844:	44813000 	mtc1	at,$f6
    a848:	2418000e 	li	t8,14
    a84c:	afb80084 	sw	t8,132(sp)
    a850:	46067202 	mul.s	$f8,$f14,$f6
    a854:	e7ae00a4 	swc1	$f14,164(sp)
    a858:	c6640004 	lwc1	$f4,4(s3)
    a85c:	c7a6008c 	lwc1	$f6,140(sp)
    a860:	27b200c4 	addiu	s2,sp,196
    a864:	00008025 	move	s0,zero
    a868:	02402025 	move	a0,s2
    a86c:	46082280 	add.s	$f10,$f4,$f8
    a870:	02202825 	move	a1,s1
    a874:	27a6009c 	addiu	a2,sp,156
    a878:	46065101 	sub.s	$f4,$f10,$f6
    a87c:	46062200 	add.s	$f8,$f4,$f6
    a880:	0c000000 	jal	0 <func_800437F0>
    a884:	e7a8009c 	swc1	$f8,156(sp)
    a888:	8679002a 	lh	t9,42(s3)
    a88c:	332a0080 	andi	t2,t9,0x80
    a890:	15400028 	bnez	t2,a934 <Camera_KeepOn3+0x740>
    a894:	00000000 	nop
    a898:	8e64008c 	lw	a0,140(s3)
    a89c:	3c010001 	lui	at,0x1
    a8a0:	34211e60 	ori	at,at,0x1e60
    a8a4:	27a900ac 	addiu	t1,sp,172
    a8a8:	240b0002 	li	t3,2
    a8ac:	afab0014 	sw	t3,20(sp)
    a8b0:	afa90010 	sw	t1,16(sp)
    a8b4:	02203025 	move	a2,s1
    a8b8:	02403825 	move	a3,s2
    a8bc:	0c000000 	jal	0 <func_800437F0>
    a8c0:	00812821 	addu	a1,a0,at
    a8c4:	14400005 	bnez	v0,a8dc <Camera_KeepOn3+0x6e8>
    a8c8:	02602025 	move	a0,s3
    a8cc:	02202825 	move	a1,s1
    a8d0:	0c000000 	jal	0 <func_800437F0>
    a8d4:	02403025 	move	a2,s2
    a8d8:	10400016 	beqz	v0,a934 <Camera_KeepOn3+0x740>
    a8dc:	00101040 	sll	v0,s0,0x1
    a8e0:	3c0c0000 	lui	t4,0x0
    a8e4:	3c0f0000 	lui	t7,0x0
    a8e8:	01826021 	addu	t4,t4,v0
    a8ec:	01e27821 	addu	t7,t7,v0
    a8f0:	858c0000 	lh	t4,0(t4)
    a8f4:	87ad0080 	lh	t5,128(sp)
    a8f8:	85ef0000 	lh	t7,0(t7)
    a8fc:	87b80082 	lh	t8,130(sp)
    a900:	018d7021 	addu	t6,t4,t5
    a904:	a7ae00a2 	sh	t6,162(sp)
    a908:	01f8c821 	addu	t9,t7,t8
    a90c:	a7b900a0 	sh	t9,160(sp)
    a910:	02402025 	move	a0,s2
    a914:	02202825 	move	a1,s1
    a918:	0c000000 	jal	0 <func_800437F0>
    a91c:	27a6009c 	addiu	a2,sp,156
    a920:	8faa0084 	lw	t2,132(sp)
    a924:	26100001 	addiu	s0,s0,1
    a928:	020a082a 	slt	at,s0,t2
    a92c:	5420ffdb 	bnezl	at,a89c <Camera_KeepOn3+0x6a8>
    a930:	8e64008c 	lw	a0,140(s3)
    a934:	3c040000 	lui	a0,0x0
    a938:	24840000 	addiu	a0,a0,0
    a93c:	0c000000 	jal	0 <func_800437F0>
    a940:	02002825 	move	a1,s0
    a944:	8669014c 	lh	t1,332(s3)
    a948:	8fa50038 	lw	a1,56(sp)
    a94c:	24020001 	li	v0,1
    a950:	312bfff3 	andi	t3,t1,0xfff3
    a954:	a66b014c 	sh	t3,332(s3)
    a958:	84a3001c 	lh	v1,28(a1)
    a95c:	87ae0092 	lh	t6,146(sp)
    a960:	87ad00a2 	lh	t5,162(sp)
    a964:	246c0001 	addiu	t4,v1,1
    a968:	01830019 	multu	t4,v1
    a96c:	01ae7823 	subu	t7,t5,t6
    a970:	000fc400 	sll	t8,t7,0x10
    a974:	0018cc03 	sra	t9,t8,0x10
    a978:	44992000 	mtc1	t9,$f4
    a97c:	00000000 	nop
    a980:	468021a0 	cvt.s.w	$f6,$f4
    a984:	00002012 	mflo	a0
    a988:	00042043 	sra	a0,a0,0x1
    a98c:	44845000 	mtc1	a0,$f10
    a990:	00000000 	nop
    a994:	46805020 	cvt.s.w	$f0,$f10
    a998:	46003203 	div.s	$f8,$f6,$f0
    a99c:	e4a80004 	swc1	$f8,4(a1)
    a9a0:	87a90090 	lh	t1,144(sp)
    a9a4:	87aa00a0 	lh	t2,160(sp)
    a9a8:	01495823 	subu	t3,t2,t1
    a9ac:	000b6400 	sll	t4,t3,0x10
    a9b0:	000c6c03 	sra	t5,t4,0x10
    a9b4:	448d5000 	mtc1	t5,$f10
    a9b8:	00000000 	nop
    a9bc:	46805120 	cvt.s.w	$f4,$f10
    a9c0:	46002183 	div.s	$f6,$f4,$f0
    a9c4:	e4a60008 	swc1	$f6,8(a1)
    a9c8:	c7aa008c 	lwc1	$f10,140(sp)
    a9cc:	c7a8009c 	lwc1	$f8,156(sp)
    a9d0:	460a4101 	sub.s	$f4,$f8,$f10
    a9d4:	46002183 	div.s	$f6,$f4,$f0
    a9d8:	1000009e 	b	ac54 <Camera_KeepOn3+0xa60>
    a9dc:	e4a60000 	swc1	$f6,0(a1)
    a9e0:	8443001c 	lh	v1,28(v0)
    a9e4:	50600064 	beqzl	v1,ab78 <Camera_KeepOn3+0x984>
    a9e8:	866b014c 	lh	t3,332(s3)
    a9ec:	44832000 	mtc1	v1,$f4
    a9f0:	c6000000 	lwc1	$f0,0(s0)
    a9f4:	c4480010 	lwc1	$f8,16(v0)
    a9f8:	468021a0 	cvt.s.w	$f6,$f4
    a9fc:	c6020004 	lwc1	$f2,4(s0)
    aa00:	c60c0008 	lwc1	$f12,8(s0)
    aa04:	3c013f80 	lui	at,0x3f80
    aa08:	02402025 	move	a0,s2
    aa0c:	46004281 	sub.s	$f10,$f8,$f0
    aa10:	02002825 	move	a1,s0
    aa14:	27a6009c 	addiu	a2,sp,156
    aa18:	46065203 	div.s	$f8,$f10,$f6
    aa1c:	46080100 	add.s	$f4,$f0,$f8
    aa20:	e6040000 	swc1	$f4,0(s0)
    aa24:	844e001c 	lh	t6,28(v0)
    aa28:	c44a0014 	lwc1	$f10,20(v0)
    aa2c:	448e4000 	mtc1	t6,$f8
    aa30:	46025181 	sub.s	$f6,$f10,$f2
    aa34:	46804120 	cvt.s.w	$f4,$f8
    aa38:	46043283 	div.s	$f10,$f6,$f4
    aa3c:	460a1200 	add.s	$f8,$f2,$f10
    aa40:	e6080004 	swc1	$f8,4(s0)
    aa44:	844f001c 	lh	t7,28(v0)
    aa48:	c4460018 	lwc1	$f6,24(v0)
    aa4c:	448f5000 	mtc1	t7,$f10
    aa50:	460c3101 	sub.s	$f4,$f6,$f12
    aa54:	46805220 	cvt.s.w	$f8,$f10
    aa58:	46082183 	div.s	$f6,$f4,$f8
    aa5c:	46066280 	add.s	$f10,$f12,$f6
    aa60:	e60a0008 	swc1	$f10,8(s0)
    aa64:	8458001c 	lh	t8,28(v0)
    aa68:	c4440000 	lwc1	$f4,0(v0)
    aa6c:	87ad0092 	lh	t5,146(sp)
    aa70:	44984000 	mtc1	t8,$f8
    aa74:	87ab0090 	lh	t3,144(sp)
    aa78:	468041a0 	cvt.s.w	$f6,$f8
    aa7c:	c7a8008c 	lwc1	$f8,140(sp)
    aa80:	46062282 	mul.s	$f10,$f4,$f6
    aa84:	44813000 	mtc1	at,$f6
    aa88:	46085100 	add.s	$f4,$f10,$f8
    aa8c:	46062280 	add.s	$f10,$f4,$f6
    aa90:	e7aa009c 	swc1	$f10,156(sp)
    aa94:	8459001c 	lh	t9,28(v0)
    aa98:	c4480004 	lwc1	$f8,4(v0)
    aa9c:	44992000 	mtc1	t9,$f4
    aaa0:	00000000 	nop
    aaa4:	468021a0 	cvt.s.w	$f6,$f4
    aaa8:	46064282 	mul.s	$f10,$f8,$f6
    aaac:	4600510d 	trunc.w.s	$f4,$f10
    aab0:	440c2000 	mfc1	t4,$f4
    aab4:	00000000 	nop
    aab8:	01ac7021 	addu	t6,t5,t4
    aabc:	a7ae00a2 	sh	t6,162(sp)
    aac0:	844f001c 	lh	t7,28(v0)
    aac4:	c4480008 	lwc1	$f8,8(v0)
    aac8:	afa20038 	sw	v0,56(sp)
    aacc:	448f3000 	mtc1	t7,$f6
    aad0:	00000000 	nop
    aad4:	468032a0 	cvt.s.w	$f10,$f6
    aad8:	460a4102 	mul.s	$f4,$f8,$f10
    aadc:	4600218d 	trunc.w.s	$f6,$f4
    aae0:	44093000 	mfc1	t1,$f6
    aae4:	00000000 	nop
    aae8:	01696821 	addu	t5,t3,t1
    aaec:	0c000000 	jal	0 <func_800437F0>
    aaf0:	a7ad00a0 	sh	t5,160(sp)
    aaf4:	8fac0048 	lw	t4,72(sp)
    aaf8:	8e4f0000 	lw	t7,0(s2)
    aafc:	3c063f00 	lui	a2,0x3f00
    ab00:	3c073f80 	lui	a3,0x3f80
    ab04:	ad8f0000 	sw	t7,0(t4)
    ab08:	8e4e0004 	lw	t6,4(s2)
    ab0c:	ad8e0004 	sw	t6,4(t4)
    ab10:	8e4f0008 	lw	t7,8(s2)
    ab14:	ad8f0008 	sw	t7,8(t4)
    ab18:	c66e00fc 	lwc1	$f14,252(s3)
    ab1c:	0c000000 	jal	0 <func_800437F0>
    ab20:	c66c0020 	lwc1	$f12,32(s3)
    ab24:	e66000fc 	swc1	$f0,252(s3)
    ab28:	00002025 	move	a0,zero
    ab2c:	8665015a 	lh	a1,346(s3)
    ab30:	3c063f00 	lui	a2,0x3f00
    ab34:	0c000000 	jal	0 <func_800437F0>
    ab38:	2407000a 	li	a3,10
    ab3c:	a662015a 	sh	v0,346(s3)
    ab40:	02602025 	move	a0,s3
    ab44:	0c000000 	jal	0 <func_800437F0>
    ab48:	8e650024 	lw	a1,36(s3)
    ab4c:	e6600100 	swc1	$f0,256(s3)
    ab50:	8fa60048 	lw	a2,72(sp)
    ab54:	02602025 	move	a0,s3
    ab58:	0c000000 	jal	0 <func_800437F0>
    ab5c:	02002825 	move	a1,s0
    ab60:	8fb80038 	lw	t8,56(sp)
    ab64:	8719001c 	lh	t9,28(t8)
    ab68:	272affff 	addiu	t2,t9,-1
    ab6c:	10000004 	b	ab80 <Camera_KeepOn3+0x98c>
    ab70:	a70a001c 	sh	t2,28(t8)
    ab74:	866b014c 	lh	t3,332(s3)
    ab78:	35690410 	ori	t1,t3,0x410
    ab7c:	a669014c 	sh	t1,332(s3)
    ab80:	866d014c 	lh	t5,332(s3)
    ab84:	3c010000 	lui	at,0x0
    ab88:	02602025 	move	a0,s3
    ab8c:	31ac0008 	andi	t4,t5,0x8
    ab90:	51800030 	beqzl	t4,ac54 <Camera_KeepOn3+0xa60>
    ab94:	24020001 	li	v0,1
    ab98:	0c000000 	jal	0 <func_800437F0>
    ab9c:	ac200000 	sw	zero,0(at)
    aba0:	44804000 	mtc1	zero,$f8
    aba4:	3c010000 	lui	at,0x0
    aba8:	c66400d8 	lwc1	$f4,216(s3)
    abac:	e6680100 	swc1	$f8,256(s3)
    abb0:	c42a0000 	lwc1	$f10,0(at)
    abb4:	3c0e0000 	lui	t6,0x0
    abb8:	4604503c 	c.lt.s	$f10,$f4
    abbc:	00000000 	nop
    abc0:	4503001e 	bc1tl	ac3c <Camera_KeepOn3+0xa48>
    abc4:	866e014c 	lh	t6,332(s3)
    abc8:	8dce0000 	lw	t6,0(t6)
    abcc:	3c01ffff 	lui	at,0xffff
    abd0:	34217fff 	ori	at,at,0x7fff
    abd4:	95c20020 	lhu	v0,32(t6)
    abd8:	00417827 	nor	t7,v0,at
    abdc:	11e00016 	beqz	t7,ac38 <Camera_KeepOn3+0xa44>
    abe0:	2401bfff 	li	at,-16385
    abe4:	0041c827 	nor	t9,v0,at
    abe8:	13200013 	beqz	t9,ac38 <Camera_KeepOn3+0xa44>
    abec:	2401fffd 	li	at,-3
    abf0:	00415027 	nor	t2,v0,at
    abf4:	11400010 	beqz	t2,ac38 <Camera_KeepOn3+0xa44>
    abf8:	2401fffb 	li	at,-5
    abfc:	0041c027 	nor	t8,v0,at
    ac00:	1300000d 	beqz	t8,ac38 <Camera_KeepOn3+0xa44>
    ac04:	2401fff7 	li	at,-9
    ac08:	00415827 	nor	t3,v0,at
    ac0c:	1160000a 	beqz	t3,ac38 <Camera_KeepOn3+0xa44>
    ac10:	2401fffe 	li	at,-2
    ac14:	00414827 	nor	t1,v0,at
    ac18:	11200007 	beqz	t1,ac38 <Camera_KeepOn3+0xa44>
    ac1c:	2401ffef 	li	at,-17
    ac20:	00416827 	nor	t5,v0,at
    ac24:	11a00004 	beqz	t5,ac38 <Camera_KeepOn3+0xa44>
    ac28:	2401dfff 	li	at,-8193
    ac2c:	00416027 	nor	t4,v0,at
    ac30:	55800008 	bnezl	t4,ac54 <Camera_KeepOn3+0xa60>
    ac34:	24020001 	li	v0,1
    ac38:	866e014c 	lh	t6,332(s3)
    ac3c:	35cf0004 	ori	t7,t6,0x4
    ac40:	a66f014c 	sh	t7,332(s3)
    ac44:	8679014c 	lh	t9,332(s3)
    ac48:	332afff7 	andi	t2,t9,0xfff7
    ac4c:	a66a014c 	sh	t2,332(s3)
    ac50:	24020001 	li	v0,1
    ac54:	8fbf002c 	lw	ra,44(sp)
    ac58:	8fb0001c 	lw	s0,28(sp)
    ac5c:	8fb10020 	lw	s1,32(sp)
    ac60:	8fb20024 	lw	s2,36(sp)
    ac64:	8fb30028 	lw	s3,40(sp)
    ac68:	03e00008 	jr	ra
    ac6c:	27bd00e8 	addiu	sp,sp,232

0000ac70 <Camera_KeepOn4>:
    ac70:	27bdff20 	addiu	sp,sp,-224
    ac74:	afbf0024 	sw	ra,36(sp)
    ac78:	afb10020 	sw	s1,32(sp)
    ac7c:	afb0001c 	sw	s0,28(sp)
    ac80:	8c90008c 	lw	s0,140(a0)
    ac84:	00808825 	move	s1,a0
    ac88:	2401000a 	li	at,10
    ac8c:	8e0e1c44 	lw	t6,7236(s0)
    ac90:	afae0084 	sw	t6,132(sp)
    ac94:	8482015e 	lh	v0,350(a0)
    ac98:	50400006 	beqzl	v0,acb4 <Camera_KeepOn4+0x44>
    ac9c:	8e0f01dc 	lw	t7,476(s0)
    aca0:	10410003 	beq	v0,at,acb0 <Camera_KeepOn4+0x40>
    aca4:	24010014 	li	at,20
    aca8:	54410015 	bnel	v0,at,ad00 <Camera_KeepOn4+0x90>
    acac:	26220020 	addiu	v0,s1,32
    acb0:	8e0f01dc 	lw	t7,476(s0)
    acb4:	55e0000d 	bnezl	t7,acec <Camera_KeepOn4+0x7c>
    acb8:	862d014c 	lh	t5,332(s1)
    acbc:	8638014c 	lh	t8,332(s1)
    acc0:	862a0164 	lh	t2,356(s1)
    acc4:	24020001 	li	v0,1
    acc8:	37190020 	ori	t9,t8,0x20
    accc:	a639014c 	sh	t9,332(s1)
    acd0:	8628014c 	lh	t0,332(s1)
    acd4:	354b0050 	ori	t3,t2,0x50
    acd8:	3109fff9 	andi	t1,t0,0xfff9
    acdc:	a629014c 	sh	t1,332(s1)
    ace0:	100003af 	b	bba0 <L8004EB20+0x870>
    ace4:	ae0b01dc 	sw	t3,476(s0)
    ace8:	862d014c 	lh	t5,332(s1)
    acec:	862c012c 	lh	t4,300(s1)
    acf0:	31aeffdf 	andi	t6,t5,0xffdf
    acf4:	a62e014c 	sh	t6,332(s1)
    acf8:	a62c0034 	sh	t4,52(s1)
    acfc:	26220020 	addiu	v0,s1,32
    ad00:	2630012c 	addiu	s0,s1,300
    ad04:	86060000 	lh	a2,0(s0)
    ad08:	84450014 	lh	a1,20(v0)
    ad0c:	10a60011 	beq	a1,a2,ad54 <Camera_KeepOn4+0xe4>
    ad10:	3c040000 	lui	a0,0x0
    ad14:	0c000000 	jal	0 <func_800437F0>
    ad18:	24840000 	addiu	a0,a0,0
    ad1c:	8638014c 	lh	t8,332(s1)
    ad20:	862a0164 	lh	t2,356(s1)
    ad24:	8e2c008c 	lw	t4,140(s1)
    ad28:	37190020 	ori	t9,t8,0x20
    ad2c:	a639014c 	sh	t9,332(s1)
    ad30:	8628014c 	lh	t0,332(s1)
    ad34:	240f0014 	li	t7,20
    ad38:	a62f015e 	sh	t7,350(s1)
    ad3c:	3109fff9 	andi	t1,t0,0xfff9
    ad40:	a629014c 	sh	t1,332(s1)
    ad44:	354b0050 	ori	t3,t2,0x50
    ad48:	24020001 	li	v0,1
    ad4c:	10000394 	b	bba0 <L8004EB20+0x870>
    ad50:	ad8b01dc 	sw	t3,476(t4)
    ad54:	8e240090 	lw	a0,144(s1)
    ad58:	0c000000 	jal	0 <func_800437F0>
    ad5c:	afa20034 	sw	v0,52(sp)
    ad60:	862d014c 	lh	t5,332(s1)
    ad64:	8622015e 	lh	v0,350(s1)
    ad68:	46000386 	mov.s	$f14,$f0
    ad6c:	31aeffef 	andi	t6,t5,0xffef
    ad70:	10400009 	beqz	v0,ad98 <Camera_KeepOn4+0x128>
    ad74:	a62e014c 	sh	t6,332(s1)
    ad78:	2401000a 	li	at,10
    ad7c:	10410006 	beq	v0,at,ad98 <Camera_KeepOn4+0x128>
    ad80:	24010014 	li	at,20
    ad84:	10410004 	beq	v0,at,ad98 <Camera_KeepOn4+0x128>
    ad88:	3c0f0000 	lui	t7,0x0
    ad8c:	8def0000 	lw	t7,0(t7)
    ad90:	85e20314 	lh	v0,788(t7)
    ad94:	10400169 	beqz	v0,b33c <L8004EB20+0xc>
    ad98:	3c010000 	lui	at,0x0
    ad9c:	c4300000 	lwc1	$f16,0(at)
    ada0:	3c01bf00 	lui	at,0xbf00
    ada4:	44819000 	mtc1	at,$f18
    ada8:	3c013f80 	lui	at,0x3f80
    adac:	44812000 	mtc1	at,$f4
    adb0:	3c014288 	lui	at,0x4288
    adb4:	44814000 	mtc1	at,$f8
    adb8:	86380142 	lh	t8,322(s1)
    adbc:	3c080000 	lui	t0,0x0
    adc0:	46004283 	div.s	$f10,$f8,$f0
    adc4:	0018c8c0 	sll	t9,t8,0x3
    adc8:	86290144 	lh	t1,324(s1)
    adcc:	01194021 	addu	t0,t0,t9
    add0:	8d080004 	lw	t0,4(t0)
    add4:	000950c0 	sll	t2,t1,0x3
    add8:	46122180 	add.s	$f6,$f4,$f18
    addc:	010a5821 	addu	t3,t0,t2
    ade0:	8d620004 	lw	v0,4(t3)
    ade4:	3c040000 	lui	a0,0x0
    ade8:	24840000 	addiu	a0,a0,0
    adec:	844c0000 	lh	t4,0(v0)
    adf0:	24420020 	addiu	v0,v0,32
    adf4:	448c4000 	mtc1	t4,$f8
    adf8:	46125102 	mul.s	$f4,$f10,$f18
    adfc:	468042a0 	cvt.s.w	$f10,$f8
    ae00:	46043301 	sub.s	$f12,$f6,$f4
    ae04:	46105182 	mul.s	$f6,$f10,$f16
    ae08:	00000000 	nop
    ae0c:	46003102 	mul.s	$f4,$f6,$f0
    ae10:	00000000 	nop
    ae14:	460c2202 	mul.s	$f8,$f4,$f12
    ae18:	e6280000 	swc1	$f8,0(s1)
    ae1c:	844dffe4 	lh	t5,-28(v0)
    ae20:	448d5000 	mtc1	t5,$f10
    ae24:	00000000 	nop
    ae28:	468051a0 	cvt.s.w	$f6,$f10
    ae2c:	46103102 	mul.s	$f4,$f6,$f16
    ae30:	00000000 	nop
    ae34:	46002202 	mul.s	$f8,$f4,$f0
    ae38:	00000000 	nop
    ae3c:	460c4282 	mul.s	$f10,$f8,$f12
    ae40:	e62a0004 	swc1	$f10,4(s1)
    ae44:	844effe8 	lh	t6,-24(v0)
    ae48:	448e3000 	mtc1	t6,$f6
    ae4c:	00000000 	nop
    ae50:	46803120 	cvt.s.w	$f4,$f6
    ae54:	e6240008 	swc1	$f4,8(s1)
    ae58:	844fffec 	lh	t7,-20(v0)
    ae5c:	448f4000 	mtc1	t7,$f8
    ae60:	00000000 	nop
    ae64:	468042a0 	cvt.s.w	$f10,$f8
    ae68:	e62a000c 	swc1	$f10,12(s1)
    ae6c:	8458fff0 	lh	t8,-16(v0)
    ae70:	44983000 	mtc1	t8,$f6
    ae74:	00000000 	nop
    ae78:	46803120 	cvt.s.w	$f4,$f6
    ae7c:	e6240010 	swc1	$f4,16(s1)
    ae80:	8459fff4 	lh	t9,-12(v0)
    ae84:	44994000 	mtc1	t9,$f8
    ae88:	00000000 	nop
    ae8c:	468042a0 	cvt.s.w	$f10,$f8
    ae90:	e62a0018 	swc1	$f10,24(s1)
    ae94:	8449fff8 	lh	t1,-8(v0)
    ae98:	a629001c 	sh	t1,28(s1)
    ae9c:	8448fffc 	lh	t0,-4(v0)
    aea0:	44883000 	mtc1	t0,$f6
    aea4:	00000000 	nop
    aea8:	46803120 	cvt.s.w	$f4,$f6
    aeac:	46102202 	mul.s	$f8,$f4,$f16
    aeb0:	e6280014 	swc1	$f8,20(s1)
    aeb4:	844a0000 	lh	t2,0(v0)
    aeb8:	a62a001e 	sh	t2,30(s1)
    aebc:	86050000 	lh	a1,0(s0)
    aec0:	e7ae0088 	swc1	$f14,136(sp)
    aec4:	0c000000 	jal	0 <func_800437F0>
    aec8:	e7ac0074 	swc1	$f12,116(sp)
    aecc:	86020000 	lh	v0,0(s0)
    aed0:	3c01bf00 	lui	at,0xbf00
    aed4:	44819000 	mtc1	at,$f18
    aed8:	28410052 	slti	at,v0,82
    aedc:	c7ac0074 	lwc1	$f12,116(sp)
    aee0:	14200008 	bnez	at,af04 <Camera_KeepOn4+0x294>
    aee4:	c7ae0088 	lwc1	$f14,136(sp)
    aee8:	2401005a 	li	at,90
    aeec:	104100b6 	beq	v0,at,b1c8 <L8004E91C+0x9c>
    aef0:	2401005b 	li	at,91
    aef4:	104100c2 	beq	v0,at,b200 <L8004E91C+0xd4>
    aef8:	00000000 	nop
    aefc:	1000010c 	b	b330 <L8004EB20>
    af00:	00000000 	nop
    af04:	2841000d 	slti	at,v0,13
    af08:	14200006 	bnez	at,af24 <Camera_KeepOn4+0x2b4>
    af0c:	244bffff 	addiu	t3,v0,-1
    af10:	24010051 	li	at,81
    af14:	504100d5 	beql	v0,at,b26c <L8004E91C+0x140>
    af18:	3c0141a0 	lui	at,0x41a0
    af1c:	10000104 	b	b330 <L8004EB20>
    af20:	00000000 	nop
    af24:	2d61000c 	sltiu	at,t3,12
    af28:	10200101 	beqz	at,b330 <L8004EB20>
    af2c:	000b5880 	sll	t3,t3,0x2
    af30:	3c010000 	lui	at,0x0
    af34:	002b0821 	addu	at,at,t3
    af38:	8c2b0000 	lw	t3,0(at)
    af3c:	01600008 	jr	t3
    af40:	00000000 	nop

0000af44 <L8004E734>:
    af44:	3c010000 	lui	at,0x0
    af48:	c42a0000 	lwc1	$f10,0(at)
    af4c:	460e7200 	add.s	$f8,$f14,$f14
    af50:	3c014120 	lui	at,0x4120
    af54:	460a7182 	mul.s	$f6,$f14,$f10
    af58:	3c0c0000 	lui	t4,0x0
    af5c:	460c3102 	mul.s	$f4,$f6,$f12
    af60:	44813000 	mtc1	at,$f6
    af64:	460c4282 	mul.s	$f10,$f8,$f12
    af68:	e6260008 	swc1	$f6,8(s1)
    af6c:	e6240000 	swc1	$f4,0(s1)
    af70:	e62a0004 	swc1	$f10,4(s1)
    af74:	8d8c0000 	lw	t4,0(t4)
    af78:	100000f0 	b	b33c <L8004EB20+0xc>
    af7c:	85820314 	lh	v0,788(t4)

0000af80 <L8004E770>:
    af80:	3c01c1a0 	lui	at,0xc1a0
    af84:	44812000 	mtc1	at,$f4
    af88:	3c0142a0 	lui	at,0x42a0
    af8c:	44814000 	mtc1	at,$f8
    af90:	3c0d0000 	lui	t5,0x0
    af94:	e6240008 	swc1	$f4,8(s1)
    af98:	e6280018 	swc1	$f8,24(s1)
    af9c:	8dad0000 	lw	t5,0(t5)
    afa0:	100000e6 	b	b33c <L8004EB20+0xc>
    afa4:	85a20314 	lh	v0,788(t5)

0000afa8 <L8004E798>:
    afa8:	3c010000 	lui	at,0x0
    afac:	c42a0000 	lwc1	$f10,0(at)
    afb0:	3c0141c8 	lui	at,0x41c8
    afb4:	44814000 	mtc1	at,$f8
    afb8:	460a7182 	mul.s	$f6,$f14,$f10
    afbc:	3c0e0000 	lui	t6,0x0
    afc0:	e6280008 	swc1	$f8,8(s1)
    afc4:	460c3102 	mul.s	$f4,$f6,$f12
    afc8:	e6240000 	swc1	$f4,0(s1)
    afcc:	8dce0000 	lw	t6,0(t6)
    afd0:	100000da 	b	b33c <L8004EB20+0xc>
    afd4:	85c20314 	lh	v0,788(t6)

0000afd8 <L8004E7C8>:
    afd8:	3c010000 	lui	at,0x0
    afdc:	c42a0000 	lwc1	$f10,0(at)
    afe0:	3c010000 	lui	at,0x0
    afe4:	3c0f0000 	lui	t7,0x0
    afe8:	460a7182 	mul.s	$f6,$f14,$f10
    afec:	00000000 	nop
    aff0:	460c3102 	mul.s	$f4,$f6,$f12
    aff4:	e6240000 	swc1	$f4,0(s1)
    aff8:	c4280000 	lwc1	$f8,0(at)
    affc:	3c014248 	lui	at,0x4248
    b000:	44812000 	mtc1	at,$f4
    b004:	46087282 	mul.s	$f10,$f14,$f8
    b008:	3c01428c 	lui	at,0x428c
    b00c:	44814000 	mtc1	at,$f8
    b010:	e6240008 	swc1	$f4,8(s1)
    b014:	e6280018 	swc1	$f8,24(s1)
    b018:	460c5182 	mul.s	$f6,$f10,$f12
    b01c:	e6260004 	swc1	$f6,4(s1)
    b020:	8def0000 	lw	t7,0(t7)
    b024:	100000c5 	b	b33c <L8004EB20+0xc>
    b028:	85e20314 	lh	v0,788(t7)

0000b02c <L8004E81C>:
    b02c:	3c010000 	lui	at,0x0
    b030:	c42a0000 	lwc1	$f10,0(at)
    b034:	3c013f00 	lui	at,0x3f00
    b038:	44814000 	mtc1	at,$f8
    b03c:	460a7182 	mul.s	$f6,$f14,$f10
    b040:	3c01c1a0 	lui	at,0xc1a0
    b044:	24182540 	li	t8,9536
    b048:	a638001c 	sh	t8,28(s1)
    b04c:	3c190000 	lui	t9,0x0
    b050:	460c3102 	mul.s	$f4,$f6,$f12
    b054:	00000000 	nop
    b058:	46087282 	mul.s	$f10,$f14,$f8
    b05c:	44804000 	mtc1	zero,$f8
    b060:	e6240000 	swc1	$f4,0(s1)
    b064:	44812000 	mtc1	at,$f4
    b068:	e628000c 	swc1	$f8,12(s1)
    b06c:	460c5182 	mul.s	$f6,$f10,$f12
    b070:	e6240008 	swc1	$f4,8(s1)
    b074:	e6260004 	swc1	$f6,4(s1)
    b078:	8f390000 	lw	t9,0(t9)
    b07c:	100000af 	b	b33c <L8004EB20+0xc>
    b080:	87220314 	lh	v0,788(t9)

0000b084 <L8004E874>:
    b084:	3c010000 	lui	at,0x0
    b088:	c42a0000 	lwc1	$f10,0(at)
    b08c:	3c01c120 	lui	at,0xc120
    b090:	44814000 	mtc1	at,$f8
    b094:	460a7182 	mul.s	$f6,$f14,$f10
    b098:	3c014234 	lui	at,0x4234
    b09c:	44815000 	mtc1	at,$f10
    b0a0:	24092002 	li	t1,8194
    b0a4:	a629001c 	sh	t1,28(s1)
    b0a8:	3c080000 	lui	t0,0x0
    b0ac:	e6280008 	swc1	$f8,8(s1)
    b0b0:	460c3102 	mul.s	$f4,$f6,$f12
    b0b4:	e62a000c 	swc1	$f10,12(s1)
    b0b8:	e6240000 	swc1	$f4,0(s1)
    b0bc:	8d080000 	lw	t0,0(t0)
    b0c0:	1000009e 	b	b33c <L8004EB20+0xc>
    b0c4:	85020314 	lh	v0,788(t0)

0000b0c8 <L8004E8B8>:
    b0c8:	46127182 	mul.s	$f6,$f14,$f18
    b0cc:	3c013fc0 	lui	at,0x3fc0
    b0d0:	44814000 	mtc1	at,$f8
    b0d4:	3c01c170 	lui	at,0xc170
    b0d8:	240a2202 	li	t2,8706
    b0dc:	240b003c 	li	t3,60
    b0e0:	a62a001c 	sh	t2,28(s1)
    b0e4:	460c3102 	mul.s	$f4,$f6,$f12
    b0e8:	a62b001e 	sh	t3,30(s1)
    b0ec:	3c0c0000 	lui	t4,0x0
    b0f0:	46087282 	mul.s	$f10,$f14,$f8
    b0f4:	e6240000 	swc1	$f4,0(s1)
    b0f8:	44812000 	mtc1	at,$f4
    b0fc:	3c01432f 	lui	at,0x432f
    b100:	460c5182 	mul.s	$f6,$f10,$f12
    b104:	44814000 	mtc1	at,$f8
    b108:	3c01428c 	lui	at,0x428c
    b10c:	44815000 	mtc1	at,$f10
    b110:	e6240008 	swc1	$f4,8(s1)
    b114:	e628000c 	swc1	$f8,12(s1)
    b118:	e62a0018 	swc1	$f10,24(s1)
    b11c:	e6260004 	swc1	$f6,4(s1)
    b120:	8d8c0000 	lw	t4,0(t4)
    b124:	10000085 	b	b33c <L8004EB20+0xc>
    b128:	85820314 	lh	v0,788(t4)

0000b12c <L8004E91C>:
    b12c:	3c010000 	lui	at,0x0
    b130:	c4260000 	lwc1	$f6,0(at)
    b134:	3c010000 	lui	at,0x0
    b138:	24183212 	li	t8,12818
    b13c:	46067102 	mul.s	$f4,$f14,$f6
    b140:	2419001e 	li	t9,30
    b144:	3c090000 	lui	t1,0x0
    b148:	460c2202 	mul.s	$f8,$f4,$f12
    b14c:	e6280000 	swc1	$f8,0(s1)
    b150:	c42a0000 	lwc1	$f10,0(at)
    b154:	3c01c000 	lui	at,0xc000
    b158:	44814000 	mtc1	at,$f8
    b15c:	460a7182 	mul.s	$f6,$f14,$f10
    b160:	3c0142f0 	lui	at,0x42f0
    b164:	44815000 	mtc1	at,$f10
    b168:	e6280008 	swc1	$f8,8(s1)
    b16c:	3c0141a0 	lui	at,0x41a0
    b170:	e62a000c 	swc1	$f10,12(s1)
    b174:	460c3102 	mul.s	$f4,$f6,$f12
    b178:	e6240004 	swc1	$f4,4(s1)
    b17c:	8fad0084 	lw	t5,132(sp)
    b180:	8dae067c 	lw	t6,1660(t5)
    b184:	000e7900 	sll	t7,t6,0x4
    b188:	05e30005 	bgezl	t7,b1a0 <L8004E91C+0x74>
    b18c:	44810000 	mtc1	at,$f0
    b190:	44803000 	mtc1	zero,$f6
    b194:	10000004 	b	b1a8 <L8004E91C+0x7c>
    b198:	e6260010 	swc1	$f6,16(s1)
    b19c:	44810000 	mtc1	at,$f0
    b1a0:	00000000 	nop
    b1a4:	e6200010 	swc1	$f0,16(s1)
    b1a8:	3c014248 	lui	at,0x4248
    b1ac:	44812000 	mtc1	at,$f4
    b1b0:	a638001c 	sh	t8,28(s1)
    b1b4:	a639001e 	sh	t9,30(s1)
    b1b8:	e6240018 	swc1	$f4,24(s1)
    b1bc:	8d290000 	lw	t1,0(t1)
    b1c0:	1000005e 	b	b33c <L8004EB20+0xc>
    b1c4:	85220314 	lh	v0,788(t1)
    b1c8:	3c010000 	lui	at,0x0
    b1cc:	c4280000 	lwc1	$f8,0(at)
    b1d0:	3c014234 	lui	at,0x4234
    b1d4:	44812000 	mtc1	at,$f4
    b1d8:	46087282 	mul.s	$f10,$f14,$f8
    b1dc:	24082f02 	li	t0,12034
    b1e0:	a628001c 	sh	t0,28(s1)
    b1e4:	3c0a0000 	lui	t2,0x0
    b1e8:	e6240018 	swc1	$f4,24(s1)
    b1ec:	460c5182 	mul.s	$f6,$f10,$f12
    b1f0:	e6260000 	swc1	$f6,0(s1)
    b1f4:	8d4a0000 	lw	t2,0(t2)
    b1f8:	10000050 	b	b33c <L8004EB20+0xc>
    b1fc:	85420314 	lh	v0,788(t2)
    b200:	3c010000 	lui	at,0x0
    b204:	c4280000 	lwc1	$f8,0(at)
    b208:	3c013fc0 	lui	at,0x3fc0
    b20c:	44812000 	mtc1	at,$f4
    b210:	46087282 	mul.s	$f10,$f14,$f8
    b214:	3c01c040 	lui	at,0xc040
    b218:	240b2f08 	li	t3,12040
    b21c:	a62b001c 	sh	t3,28(s1)
    b220:	3c0c0000 	lui	t4,0x0
    b224:	460c5182 	mul.s	$f6,$f10,$f12
    b228:	00000000 	nop
    b22c:	46047202 	mul.s	$f8,$f14,$f4
    b230:	e6260000 	swc1	$f6,0(s1)
    b234:	44813000 	mtc1	at,$f6
    b238:	3c014120 	lui	at,0x4120
    b23c:	460c4282 	mul.s	$f10,$f8,$f12
    b240:	44812000 	mtc1	at,$f4
    b244:	3c01425c 	lui	at,0x425c
    b248:	44814000 	mtc1	at,$f8
    b24c:	e6260008 	swc1	$f6,8(s1)
    b250:	e624000c 	swc1	$f4,12(s1)
    b254:	e6280018 	swc1	$f8,24(s1)
    b258:	e62a0004 	swc1	$f10,4(s1)
    b25c:	8d8c0000 	lw	t4,0(t4)
    b260:	10000036 	b	b33c <L8004EB20+0xc>
    b264:	85820314 	lh	v0,788(t4)
    b268:	3c0141a0 	lui	at,0x41a0
    b26c:	44810000 	mtc1	at,$f0
    b270:	3c010000 	lui	at,0x0
    b274:	c42a0000 	lwc1	$f10,0(at)
    b278:	3c013fc0 	lui	at,0x3fc0
    b27c:	44814000 	mtc1	at,$f8
    b280:	460a7182 	mul.s	$f6,$f14,$f10
    b284:	3c014000 	lui	at,0x4000
    b288:	240d2280 	li	t5,8832
    b28c:	240e001e 	li	t6,30
    b290:	a62d001c 	sh	t5,28(s1)
    b294:	a62e001e 	sh	t6,30(s1)
    b298:	3c0f0000 	lui	t7,0x0
    b29c:	460c3102 	mul.s	$f4,$f6,$f12
    b2a0:	e620000c 	swc1	$f0,12(s1)
    b2a4:	e6200010 	swc1	$f0,16(s1)
    b2a8:	46087282 	mul.s	$f10,$f14,$f8
    b2ac:	e6240000 	swc1	$f4,0(s1)
    b2b0:	44812000 	mtc1	at,$f4
    b2b4:	3c014234 	lui	at,0x4234
    b2b8:	460c5182 	mul.s	$f6,$f10,$f12
    b2bc:	44814000 	mtc1	at,$f8
    b2c0:	e6240008 	swc1	$f4,8(s1)
    b2c4:	e6280018 	swc1	$f8,24(s1)
    b2c8:	e6260004 	swc1	$f6,4(s1)
    b2cc:	8def0000 	lw	t7,0(t7)
    b2d0:	1000001a 	b	b33c <L8004EB20+0xc>
    b2d4:	85e20314 	lh	v0,788(t7)

0000b2d8 <L8004EAC8>:
    b2d8:	3c010000 	lui	at,0x0
    b2dc:	c42a0000 	lwc1	$f10,0(at)
    b2e0:	3c010000 	lui	at,0x0
    b2e4:	24182522 	li	t8,9506
    b2e8:	460a7182 	mul.s	$f6,$f14,$f10
    b2ec:	3c190000 	lui	t9,0x0
    b2f0:	460c3102 	mul.s	$f4,$f6,$f12
    b2f4:	e6240000 	swc1	$f4,0(s1)
    b2f8:	c4280000 	lwc1	$f8,0(at)
    b2fc:	3c014302 	lui	at,0x4302
    b300:	44812000 	mtc1	at,$f4
    b304:	46087282 	mul.s	$f10,$f14,$f8
    b308:	3c014120 	lui	at,0x4120
    b30c:	44814000 	mtc1	at,$f8
    b310:	a638001c 	sh	t8,28(s1)
    b314:	e624000c 	swc1	$f4,12(s1)
    b318:	e6280010 	swc1	$f8,16(s1)
    b31c:	460c5182 	mul.s	$f6,$f10,$f12
    b320:	e6260004 	swc1	$f6,4(s1)
    b324:	8f390000 	lw	t9,0(t9)
    b328:	10000004 	b	b33c <L8004EB20+0xc>
    b32c:	87220314 	lh	v0,788(t9)

0000b330 <L8004EB20>:
    b330:	3c090000 	lui	t1,0x0
    b334:	8d290000 	lw	t1,0(t1)
    b338:	85220314 	lh	v0,788(t1)
    b33c:	10400004 	beqz	v0,b350 <L8004EB20+0x20>
    b340:	02202025 	move	a0,s1
    b344:	0c000000 	jal	0 <func_800437F0>
    b348:	e7ae0088 	swc1	$f14,136(sp)
    b34c:	c7ae0088 	lwc1	$f14,136(sp)
    b350:	24080001 	li	t0,1
    b354:	3c010000 	lui	at,0x0
    b358:	ac280000 	sw	t0,0(at)
    b35c:	862a001c 	lh	t2,28(s1)
    b360:	3c010000 	lui	at,0x0
    b364:	26250050 	addiu	a1,s1,80
    b368:	2626005c 	addiu	a2,s1,92
    b36c:	afa60044 	sw	a2,68(sp)
    b370:	afa50040 	sw	a1,64(sp)
    b374:	e7ae0088 	swc1	$f14,136(sp)
    b378:	27a400b0 	addiu	a0,sp,176
    b37c:	0c000000 	jal	0 <func_800437F0>
    b380:	ac2a0000 	sw	t2,0(at)
    b384:	26260074 	addiu	a2,s1,116
    b388:	afa6003c 	sw	a2,60(sp)
    b38c:	27a400a8 	addiu	a0,sp,168
    b390:	0c000000 	jal	0 <func_800437F0>
    b394:	8fa50040 	lw	a1,64(sp)
    b398:	26230094 	addiu	v1,s1,148
    b39c:	8c6c0000 	lw	t4,0(v1)
    b3a0:	3c070000 	lui	a3,0x0
    b3a4:	24e70000 	addiu	a3,a3,0
    b3a8:	acec0000 	sw	t4,0(a3)
    b3ac:	8c6b0004 	lw	t3,4(v1)
    b3b0:	3c010000 	lui	at,0x0
    b3b4:	c7ae0088 	lwc1	$f14,136(sp)
    b3b8:	aceb0004 	sw	t3,4(a3)
    b3bc:	8c6c0008 	lw	t4,8(v1)
    b3c0:	27a500c0 	addiu	a1,sp,192
    b3c4:	27a6007c 	addiu	a2,sp,124
    b3c8:	acec0008 	sw	t4,8(a3)
    b3cc:	c42a0000 	lwc1	$f10,0(at)
    b3d0:	460e5180 	add.s	$f6,$f10,$f14
    b3d4:	e4260000 	swc1	$f6,0(at)
    b3d8:	8e24008c 	lw	a0,140(s1)
    b3dc:	afa30038 	sw	v1,56(sp)
    b3e0:	0c000000 	jal	0 <func_800437F0>
    b3e4:	248407c0 	addiu	a0,a0,1984
    b3e8:	3c010000 	lui	at,0x0
    b3ec:	c4280000 	lwc1	$f8,0(at)
    b3f0:	c6240000 	lwc1	$f4,0(s1)
    b3f4:	46082080 	add.s	$f2,$f4,$f8
    b3f8:	4600103c 	c.lt.s	$f2,$f0
    b3fc:	00000000 	nop
    b400:	45000006 	bc1f	b41c <L8004EB20+0xec>
    b404:	3c014120 	lui	at,0x4120
    b408:	44815000 	mtc1	at,$f10
    b40c:	3c010000 	lui	at,0x0
    b410:	460a0180 	add.s	$f6,$f0,$f10
    b414:	10000003 	b	b424 <L8004EB20+0xf4>
    b418:	e4260000 	swc1	$f6,0(at)
    b41c:	3c010000 	lui	at,0x0
    b420:	e4220000 	swc1	$f2,0(at)
    b424:	8622015e 	lh	v0,350(s1)
    b428:	10400006 	beqz	v0,b444 <L8004EB20+0x114>
    b42c:	2401000a 	li	at,10
    b430:	1041013c 	beq	v0,at,b924 <L8004EB20+0x5f4>
    b434:	8fa80038 	lw	t0,56(sp)
    b438:	24010014 	li	at,20
    b43c:	1441013e 	bne	v0,at,b938 <L8004EB20+0x608>
    b440:	00000000 	nop
    b444:	8e2d0090 	lw	t5,144(s1)
    b448:	240e0001 	li	t6,1
    b44c:	a7ae009c 	sh	t6,156(sp)
    b450:	02202025 	move	a0,s1
    b454:	0c000000 	jal	0 <func_800437F0>
    b458:	afad00cc 	sw	t5,204(sp)
    b45c:	862f014c 	lh	t7,332(s1)
    b460:	8639001e 	lh	t9,30(s1)
    b464:	3c010000 	lui	at,0x0
    b468:	31f8fff9 	andi	t8,t7,0xfff9
    b46c:	a638014c 	sh	t8,332(s1)
    b470:	8fa90034 	lw	t1,52(sp)
    b474:	a5390010 	sh	t9,16(t1)
    b478:	8fa80038 	lw	t0,56(sp)
    b47c:	c62800f4 	lwc1	$f8,244(s1)
    b480:	8faa0034 	lw	t2,52(sp)
    b484:	c5040004 	lwc1	$f4,4(t0)
    b488:	46082281 	sub.s	$f10,$f4,$f8
    b48c:	e54a0008 	swc1	$f10,8(t2)
    b490:	8622001c 	lh	v0,28(s1)
    b494:	304b0002 	andi	t3,v0,0x2
    b498:	11600028 	beqz	t3,b53c <L8004EB20+0x20c>
    b49c:	30480004 	andi	t0,v0,0x4
    b4a0:	c4200000 	lwc1	$f0,0(at)
    b4a4:	c6260008 	lwc1	$f6,8(s1)
    b4a8:	3c013f00 	lui	at,0x3f00
    b4ac:	44811000 	mtc1	at,$f2
    b4b0:	46003102 	mul.s	$f4,$f6,$f0
    b4b4:	8fae0038 	lw	t6,56(sp)
    b4b8:	87af00ae 	lh	t7,174(sp)
    b4bc:	46022200 	add.s	$f8,$f4,$f2
    b4c0:	4600428d 	trunc.w.s	$f10,$f8
    b4c4:	440d5000 	mfc1	t5,$f10
    b4c8:	00000000 	nop
    b4cc:	a7ad00a2 	sh	t5,162(sp)
    b4d0:	85c2000e 	lh	v0,14(t6)
    b4d4:	24428001 	addiu	v0,v0,-32767
    b4d8:	00021400 	sll	v0,v0,0x10
    b4dc:	00021403 	sra	v0,v0,0x10
    b4e0:	004fc023 	subu	t8,v0,t7
    b4e4:	0018cc00 	sll	t9,t8,0x10
    b4e8:	00194c03 	sra	t1,t9,0x10
    b4ec:	5920000b 	blezl	t1,b51c <L8004EB20+0x1ec>
    b4f0:	c626000c 	lwc1	$f6,12(s1)
    b4f4:	c626000c 	lwc1	$f6,12(s1)
    b4f8:	46003102 	mul.s	$f4,$f6,$f0
    b4fc:	46022200 	add.s	$f8,$f4,$f2
    b500:	4600428d 	trunc.w.s	$f10,$f8
    b504:	440c5000 	mfc1	t4,$f10
    b508:	00000000 	nop
    b50c:	004c6821 	addu	t5,v0,t4
    b510:	1000009a 	b	b77c <L8004EB20+0x44c>
    b514:	a7ad00a0 	sh	t5,160(sp)
    b518:	c626000c 	lwc1	$f6,12(s1)
    b51c:	46003102 	mul.s	$f4,$f6,$f0
    b520:	46022200 	add.s	$f8,$f4,$f2
    b524:	4600428d 	trunc.w.s	$f10,$f8
    b528:	44195000 	mfc1	t9,$f10
    b52c:	00000000 	nop
    b530:	00594823 	subu	t1,v0,t9
    b534:	10000091 	b	b77c <L8004EB20+0x44c>
    b538:	a7a900a0 	sh	t1,160(sp)
    b53c:	11000013 	beqz	t0,b58c <L8004EB20+0x25c>
    b540:	304e0008 	andi	t6,v0,0x8
    b544:	3c010000 	lui	at,0x0
    b548:	c4200000 	lwc1	$f0,0(at)
    b54c:	c6260008 	lwc1	$f6,8(s1)
    b550:	3c013f00 	lui	at,0x3f00
    b554:	44811000 	mtc1	at,$f2
    b558:	46003102 	mul.s	$f4,$f6,$f0
    b55c:	46022200 	add.s	$f8,$f4,$f2
    b560:	4600428d 	trunc.w.s	$f10,$f8
    b564:	440b5000 	mfc1	t3,$f10
    b568:	00000000 	nop
    b56c:	a7ab00a2 	sh	t3,162(sp)
    b570:	c626000c 	lwc1	$f6,12(s1)
    b574:	46003102 	mul.s	$f4,$f6,$f0
    b578:	46022200 	add.s	$f8,$f4,$f2
    b57c:	4600428d 	trunc.w.s	$f10,$f8
    b580:	440d5000 	mfc1	t5,$f10
    b584:	1000007d 	b	b77c <L8004EB20+0x44c>
    b588:	a7ad00a0 	sh	t5,160(sp)
    b58c:	11c00033 	beqz	t6,b65c <L8004EB20+0x32c>
    b590:	30490080 	andi	t1,v0,0x80
    b594:	8e2500a8 	lw	a1,168(s1)
    b598:	10a00030 	beqz	a1,b65c <L8004EB20+0x32c>
    b59c:	00000000 	nop
    b5a0:	0c000000 	jal	0 <func_800437F0>
    b5a4:	27a40060 	addiu	a0,sp,96
    b5a8:	3c010000 	lui	at,0x0
    b5ac:	c4200000 	lwc1	$f0,0(at)
    b5b0:	c6260008 	lwc1	$f6,8(s1)
    b5b4:	3c013f00 	lui	at,0x3f00
    b5b8:	44811000 	mtc1	at,$f2
    b5bc:	46003102 	mul.s	$f4,$f6,$f0
    b5c0:	87a3006e 	lh	v1,110(sp)
    b5c4:	87ab00ae 	lh	t3,174(sp)
    b5c8:	87a8006c 	lh	t0,108(sp)
    b5cc:	24638001 	addiu	v1,v1,-32767
    b5d0:	00031c00 	sll	v1,v1,0x10
    b5d4:	00031c03 	sra	v1,v1,0x10
    b5d8:	46022200 	add.s	$f8,$f4,$f2
    b5dc:	006b6023 	subu	t4,v1,t3
    b5e0:	000c6c00 	sll	t5,t4,0x10
    b5e4:	000d7403 	sra	t6,t5,0x10
    b5e8:	4600428d 	trunc.w.s	$f10,$f8
    b5ec:	44095000 	mfc1	t1,$f10
    b5f0:	00000000 	nop
    b5f4:	01285023 	subu	t2,t1,t0
    b5f8:	19c0000a 	blez	t6,b624 <L8004EB20+0x2f4>
    b5fc:	a7aa00a2 	sh	t2,162(sp)
    b600:	c626000c 	lwc1	$f6,12(s1)
    b604:	46003102 	mul.s	$f4,$f6,$f0
    b608:	46022200 	add.s	$f8,$f4,$f2
    b60c:	4600428d 	trunc.w.s	$f10,$f8
    b610:	44095000 	mfc1	t1,$f10
    b614:	00000000 	nop
    b618:	00694021 	addu	t0,v1,t1
    b61c:	10000009 	b	b644 <L8004EB20+0x314>
    b620:	a7a800a0 	sh	t0,160(sp)
    b624:	c626000c 	lwc1	$f6,12(s1)
    b628:	46003102 	mul.s	$f4,$f6,$f0
    b62c:	46022200 	add.s	$f8,$f4,$f2
    b630:	4600428d 	trunc.w.s	$f10,$f8
    b634:	440d5000 	mfc1	t5,$f10
    b638:	00000000 	nop
    b63c:	006d7023 	subu	t6,v1,t5
    b640:	a7ae00a0 	sh	t6,160(sp)
    b644:	87b8009c 	lh	t8,156(sp)
    b648:	8e2f00a8 	lw	t7,168(s1)
    b64c:	27190001 	addiu	t9,t8,1
    b650:	a7b9009c 	sh	t9,156(sp)
    b654:	10000049 	b	b77c <L8004EB20+0x44c>
    b658:	afaf00d0 	sw	t7,208(sp)
    b65c:	11200035 	beqz	t1,b734 <L8004EB20+0x404>
    b660:	304c0040 	andi	t4,v0,0x40
    b664:	8e2500a8 	lw	a1,168(s1)
    b668:	27b0004c 	addiu	s0,sp,76
    b66c:	10a00031 	beqz	a1,b734 <L8004EB20+0x404>
    b670:	00000000 	nop
    b674:	0c000000 	jal	0 <func_800437F0>
    b678:	02002025 	move	a0,s0
    b67c:	3c010000 	lui	at,0x0
    b680:	c4200000 	lwc1	$f0,0(at)
    b684:	c6260008 	lwc1	$f6,8(s1)
    b688:	3c013f00 	lui	at,0x3f00
    b68c:	44811000 	mtc1	at,$f2
    b690:	46003102 	mul.s	$f4,$f6,$f0
    b694:	02002025 	move	a0,s0
    b698:	8fa50038 	lw	a1,56(sp)
    b69c:	46022200 	add.s	$f8,$f4,$f2
    b6a0:	4600428d 	trunc.w.s	$f10,$f8
    b6a4:	440a5000 	mfc1	t2,$f10
    b6a8:	0c000000 	jal	0 <func_800437F0>
    b6ac:	a7aa00a2 	sh	t2,162(sp)
    b6b0:	87ab00ae 	lh	t3,174(sp)
    b6b4:	3c010000 	lui	at,0x0
    b6b8:	c4200000 	lwc1	$f0,0(at)
    b6bc:	004b6023 	subu	t4,v0,t3
    b6c0:	3c013f00 	lui	at,0x3f00
    b6c4:	000c6c00 	sll	t5,t4,0x10
    b6c8:	44811000 	mtc1	at,$f2
    b6cc:	000d7403 	sra	t6,t5,0x10
    b6d0:	59c0000b 	blezl	t6,b700 <L8004EB20+0x3d0>
    b6d4:	c626000c 	lwc1	$f6,12(s1)
    b6d8:	c626000c 	lwc1	$f6,12(s1)
    b6dc:	46003102 	mul.s	$f4,$f6,$f0
    b6e0:	46022200 	add.s	$f8,$f4,$f2
    b6e4:	4600428d 	trunc.w.s	$f10,$f8
    b6e8:	440a5000 	mfc1	t2,$f10
    b6ec:	00000000 	nop
    b6f0:	004a5821 	addu	t3,v0,t2
    b6f4:	10000009 	b	b71c <L8004EB20+0x3ec>
    b6f8:	a7ab00a0 	sh	t3,160(sp)
    b6fc:	c626000c 	lwc1	$f6,12(s1)
    b700:	46003102 	mul.s	$f4,$f6,$f0
    b704:	46022200 	add.s	$f8,$f4,$f2
    b708:	4600428d 	trunc.w.s	$f10,$f8
    b70c:	44095000 	mfc1	t1,$f10
    b710:	00000000 	nop
    b714:	00494023 	subu	t0,v0,t1
    b718:	a7a800a0 	sh	t0,160(sp)
    b71c:	87aa009c 	lh	t2,156(sp)
    b720:	8e3800a8 	lw	t8,168(s1)
    b724:	254b0001 	addiu	t3,t2,1
    b728:	a7ab009c 	sh	t3,156(sp)
    b72c:	10000013 	b	b77c <L8004EB20+0x44c>
    b730:	afb800d0 	sw	t8,208(sp)
    b734:	1180000e 	beqz	t4,b770 <L8004EB20+0x440>
    b738:	87ad00ac 	lh	t5,172(sp)
    b73c:	3c010000 	lui	at,0x0
    b740:	c4200000 	lwc1	$f0,0(at)
    b744:	c6260008 	lwc1	$f6,8(s1)
    b748:	3c013f00 	lui	at,0x3f00
    b74c:	44811000 	mtc1	at,$f2
    b750:	46003102 	mul.s	$f4,$f6,$f0
    b754:	87b900ae 	lh	t9,174(sp)
    b758:	a7b900a0 	sh	t9,160(sp)
    b75c:	46022200 	add.s	$f8,$f4,$f2
    b760:	4600428d 	trunc.w.s	$f10,$f8
    b764:	440f5000 	mfc1	t7,$f10
    b768:	10000004 	b	b77c <L8004EB20+0x44c>
    b76c:	a7af00a2 	sh	t7,162(sp)
    b770:	87a900ae 	lh	t1,174(sp)
    b774:	a7ad00a2 	sh	t5,162(sp)
    b778:	a7a900a0 	sh	t1,160(sp)
    b77c:	87a800a2 	lh	t0,162(sp)
    b780:	87b800a0 	lh	t8,160(sp)
    b784:	3c040000 	lui	a0,0x0
    b788:	a7a800bc 	sh	t0,188(sp)
    b78c:	a7b800be 	sh	t8,190(sp)
    b790:	c6260004 	lwc1	$f6,4(s1)
    b794:	3c050000 	lui	a1,0x0
    b798:	24a50000 	addiu	a1,a1,0
    b79c:	24840000 	addiu	a0,a0,0
    b7a0:	27a600b8 	addiu	a2,sp,184
    b7a4:	0c000000 	jal	0 <func_800437F0>
    b7a8:	e7a600b8 	swc1	$f6,184(sp)
    b7ac:	862a001c 	lh	t2,28(s1)
    b7b0:	240c000e 	li	t4,14
    b7b4:	314b0001 	andi	t3,t2,0x1
    b7b8:	5560003a 	bnezl	t3,b8a4 <L8004EB20+0x574>
    b7bc:	8fa20034 	lw	v0,52(sp)
    b7c0:	a7ac0082 	sh	t4,130(sp)
    b7c4:	afa0007c 	sw	zero,124(sp)
    b7c8:	8e30008c 	lw	s0,140(s1)
    b7cc:	87af009c 	lh	t7,156(sp)
    b7d0:	3c010001 	lui	at,0x1
    b7d4:	34211e60 	ori	at,at,0x1e60
    b7d8:	3c060000 	lui	a2,0x0
    b7dc:	3c070000 	lui	a3,0x0
    b7e0:	27ae00cc 	addiu	t6,sp,204
    b7e4:	afae0010 	sw	t6,16(sp)
    b7e8:	24e70000 	addiu	a3,a3,0
    b7ec:	24c60000 	addiu	a2,a2,0
    b7f0:	02012821 	addu	a1,s0,at
    b7f4:	02002025 	move	a0,s0
    b7f8:	0c000000 	jal	0 <func_800437F0>
    b7fc:	afaf0014 	sw	t7,20(sp)
    b800:	14400008 	bnez	v0,b824 <L8004EB20+0x4f4>
    b804:	02202025 	move	a0,s1
    b808:	3c050000 	lui	a1,0x0
    b80c:	3c060000 	lui	a2,0x0
    b810:	24c60000 	addiu	a2,a2,0
    b814:	0c000000 	jal	0 <func_800437F0>
    b818:	24a50000 	addiu	a1,a1,0
    b81c:	1040001c 	beqz	v0,b890 <L8004EB20+0x560>
    b820:	00000000 	nop
    b824:	8fb0007c 	lw	s0,124(sp)
    b828:	3c190000 	lui	t9,0x0
    b82c:	3c080000 	lui	t0,0x0
    b830:	00101040 	sll	v0,s0,0x1
    b834:	0322c821 	addu	t9,t9,v0
    b838:	01024021 	addu	t0,t0,v0
    b83c:	87390000 	lh	t9,0(t9)
    b840:	87ad00a0 	lh	t5,160(sp)
    b844:	85080000 	lh	t0,0(t0)
    b848:	87b800a2 	lh	t8,162(sp)
    b84c:	3c040000 	lui	a0,0x0
    b850:	3c050000 	lui	a1,0x0
    b854:	032d4821 	addu	t1,t9,t5
    b858:	01185021 	addu	t2,t0,t8
    b85c:	a7a900be 	sh	t1,190(sp)
    b860:	a7aa00bc 	sh	t2,188(sp)
    b864:	24a50000 	addiu	a1,a1,0
    b868:	24840000 	addiu	a0,a0,0
    b86c:	0c000000 	jal	0 <func_800437F0>
    b870:	27a600b8 	addiu	a2,sp,184
    b874:	8fb0007c 	lw	s0,124(sp)
    b878:	87ab0082 	lh	t3,130(sp)
    b87c:	26100001 	addiu	s0,s0,1
    b880:	020b082a 	slt	at,s0,t3
    b884:	1420ffd0 	bnez	at,b7c8 <L8004EB20+0x498>
    b888:	afb0007c 	sw	s0,124(sp)
    b88c:	afb0007c 	sw	s0,124(sp)
    b890:	3c040000 	lui	a0,0x0
    b894:	8fa5007c 	lw	a1,124(sp)
    b898:	0c000000 	jal	0 <func_800437F0>
    b89c:	24840000 	addiu	a0,a0,0
    b8a0:	8fa20034 	lw	v0,52(sp)
    b8a4:	87ae00bc 	lh	t6,188(sp)
    b8a8:	87af00ac 	lh	t7,172(sp)
    b8ac:	844c0010 	lh	t4,16(v0)
    b8b0:	01cfc823 	subu	t9,t6,t7
    b8b4:	00196c00 	sll	t5,t9,0x10
    b8b8:	000d4c03 	sra	t1,t5,0x10
    b8bc:	44894000 	mtc1	t1,$f8
    b8c0:	448c2000 	mtc1	t4,$f4
    b8c4:	24090001 	li	t1,1
    b8c8:	468042a0 	cvt.s.w	$f10,$f8
    b8cc:	46802020 	cvt.s.w	$f0,$f4
    b8d0:	46005183 	div.s	$f6,$f10,$f0
    b8d4:	e4460004 	swc1	$f6,4(v0)
    b8d8:	87b800ae 	lh	t8,174(sp)
    b8dc:	87a800be 	lh	t0,190(sp)
    b8e0:	01185023 	subu	t2,t0,t8
    b8e4:	000a5c00 	sll	t3,t2,0x10
    b8e8:	000b6403 	sra	t4,t3,0x10
    b8ec:	448c2000 	mtc1	t4,$f4
    b8f0:	00000000 	nop
    b8f4:	46802220 	cvt.s.w	$f8,$f4
    b8f8:	46004283 	div.s	$f10,$f8,$f0
    b8fc:	e44a0000 	swc1	$f10,0(v0)
    b900:	87ae00ae 	lh	t6,174(sp)
    b904:	a44e000c 	sh	t6,12(v0)
    b908:	87af00ac 	lh	t7,172(sp)
    b90c:	a44f000e 	sh	t7,14(v0)
    b910:	8639015e 	lh	t9,350(s1)
    b914:	272d0001 	addiu	t5,t9,1
    b918:	a62d015e 	sh	t5,350(s1)
    b91c:	10000006 	b	b938 <L8004EB20+0x608>
    b920:	a4490012 	sh	t1,18(v0)
    b924:	c5060004 	lwc1	$f6,4(t0)
    b928:	c62400f4 	lwc1	$f4,244(s1)
    b92c:	8fb80034 	lw	t8,52(sp)
    b930:	46043201 	sub.s	$f8,$f6,$f4
    b934:	e7080008 	swc1	$f8,8(t8)
    b938:	3c013e80 	lui	at,0x3e80
    b93c:	44810000 	mtc1	at,$f0
    b940:	3c013f00 	lui	at,0x3f00
    b944:	44811000 	mtc1	at,$f2
    b948:	3c013f40 	lui	at,0x3f40
    b94c:	44815000 	mtc1	at,$f10
    b950:	3c010000 	lui	at,0x0
    b954:	e62000cc 	swc1	$f0,204(s1)
    b958:	e62000d0 	swc1	$f0,208(s1)
    b95c:	e62a0100 	swc1	$f10,256(s1)
    b960:	c4260000 	lwc1	$f6,0(at)
    b964:	3c040000 	lui	a0,0x0
    b968:	44061000 	mfc1	a2,$f2
    b96c:	44071000 	mfc1	a3,$f2
    b970:	24840000 	addiu	a0,a0,0
    b974:	8fa50040 	lw	a1,64(sp)
    b978:	0c000000 	jal	0 <func_800437F0>
    b97c:	e7a60010 	swc1	$f6,16(sp)
    b980:	c6200010 	lwc1	$f0,16(s1)
    b984:	44802000 	mtc1	zero,$f4
    b988:	8fa40040 	lw	a0,64(sp)
    b98c:	46002032 	c.eq.s	$f4,$f0
    b990:	00802825 	move	a1,a0
    b994:	45030009 	bc1tl	b9bc <L8004EB20+0x68c>
    b998:	44804000 	mtc1	zero,$f8
    b99c:	8faa0038 	lw	t2,56(sp)
    b9a0:	e7a000b8 	swc1	$f0,184(sp)
    b9a4:	a7a000bc 	sh	zero,188(sp)
    b9a8:	854b000e 	lh	t3,14(t2)
    b9ac:	27a600b8 	addiu	a2,sp,184
    b9b0:	0c000000 	jal	0 <func_800437F0>
    b9b4:	a7ab00be 	sh	t3,190(sp)
    b9b8:	44804000 	mtc1	zero,$f8
    b9bc:	c62c0004 	lwc1	$f12,4(s1)
    b9c0:	c62e00dc 	lwc1	$f14,220(s1)
    b9c4:	3c063e80 	lui	a2,0x3e80
    b9c8:	3c074000 	lui	a3,0x4000
    b9cc:	0c000000 	jal	0 <func_800437F0>
    b9d0:	e6280100 	swc1	$f8,256(s1)
    b9d4:	8fa30034 	lw	v1,52(sp)
    b9d8:	e62000dc 	swc1	$f0,220(s1)
    b9dc:	e7a000b8 	swc1	$f0,184(sp)
    b9e0:	846c0010 	lh	t4,16(v1)
    b9e4:	51800015 	beqzl	t4,ba3c <L8004EB20+0x70c>
    b9e8:	8638001c 	lh	t8,28(s1)
    b9ec:	862e014c 	lh	t6,332(s1)
    b9f0:	35cf0020 	ori	t7,t6,0x20
    b9f4:	a62f014c 	sh	t7,332(s1)
    b9f8:	c46a0000 	lwc1	$f10,0(v1)
    b9fc:	c4640004 	lwc1	$f4,4(v1)
    ba00:	8479000c 	lh	t9,12(v1)
    ba04:	4600518d 	trunc.w.s	$f6,$f10
    ba08:	846b000e 	lh	t3,14(v1)
    ba0c:	84680010 	lh	t0,16(v1)
    ba10:	4600220d 	trunc.w.s	$f8,$f4
    ba14:	44183000 	mfc1	t8,$f6
    ba18:	440d4000 	mfc1	t5,$f8
    ba1c:	03385021 	addu	t2,t9,t8
    ba20:	2519ffff 	addiu	t9,t0,-1
    ba24:	016d4821 	addu	t1,t3,t5
    ba28:	a46a000c 	sh	t2,12(v1)
    ba2c:	a469000e 	sh	t1,14(v1)
    ba30:	10000033 	b	bb00 <L8004EB20+0x7d0>
    ba34:	a4790010 	sh	t9,16(v1)
    ba38:	8638001c 	lh	t8,28(s1)
    ba3c:	330a0010 	andi	t2,t8,0x10
    ba40:	51400010 	beqzl	t2,ba84 <L8004EB20+0x754>
    ba44:	8639014c 	lh	t9,332(s1)
    ba48:	862c014c 	lh	t4,332(s1)
    ba4c:	86220160 	lh	v0,352(s1)
    ba50:	358e0410 	ori	t6,t4,0x410
    ba54:	a62e014c 	sh	t6,332(s1)
    ba58:	862f014c 	lh	t7,332(s1)
    ba5c:	2448ffff 	addiu	t0,v0,-1
    ba60:	35eb0006 	ori	t3,t7,0x6
    ba64:	a62b014c 	sh	t3,332(s1)
    ba68:	862d014c 	lh	t5,332(s1)
    ba6c:	31a9fff7 	andi	t1,t5,0xfff7
    ba70:	18400023 	blez	v0,bb00 <L8004EB20+0x7d0>
    ba74:	a629014c 	sh	t1,332(s1)
    ba78:	10000021 	b	bb00 <L8004EB20+0x7d0>
    ba7c:	a6280160 	sh	t0,352(s1)
    ba80:	8639014c 	lh	t9,332(s1)
    ba84:	3c010000 	lui	at,0x0
    ba88:	37380410 	ori	t8,t9,0x410
    ba8c:	a638014c 	sh	t8,332(s1)
    ba90:	862a014c 	lh	t2,332(s1)
    ba94:	314c0008 	andi	t4,t2,0x8
    ba98:	15800005 	bnez	t4,bab0 <L8004EB20+0x780>
    ba9c:	00000000 	nop
    baa0:	862e001c 	lh	t6,28(s1)
    baa4:	31cf0080 	andi	t7,t6,0x80
    baa8:	51e00016 	beqzl	t7,bb04 <L8004EB20+0x7d4>
    baac:	8464000c 	lh	a0,12(v1)
    bab0:	ac200000 	sw	zero,0(at)
    bab4:	862b014c 	lh	t3,332(s1)
    bab8:	86250166 	lh	a1,358(s1)
    babc:	02202025 	move	a0,s1
    bac0:	356d0006 	ori	t5,t3,0x6
    bac4:	a62d014c 	sh	t5,332(s1)
    bac8:	8629014c 	lh	t1,332(s1)
    bacc:	24060002 	li	a2,2
    bad0:	3128fff7 	andi	t0,t1,0xfff7
    bad4:	04a10005 	bgez	a1,baec <L8004EB20+0x7bc>
    bad8:	a628014c 	sh	t0,332(s1)
    badc:	0c000000 	jal	0 <func_800437F0>
    bae0:	86250154 	lh	a1,340(s1)
    bae4:	10000006 	b	bb00 <L8004EB20+0x7d0>
    bae8:	8fa30034 	lw	v1,52(sp)
    baec:	0c000000 	jal	0 <func_800437F0>
    baf0:	02202025 	move	a0,s1
    baf4:	2419ffff 	li	t9,-1
    baf8:	a6390166 	sh	t9,358(s1)
    bafc:	8fa30034 	lw	v1,52(sp)
    bb00:	8464000c 	lh	a0,12(v1)
    bb04:	87a500ae 	lh	a1,174(sp)
    bb08:	8e260014 	lw	a2,20(s1)
    bb0c:	0c000000 	jal	0 <func_800437F0>
    bb10:	24070004 	li	a3,4
    bb14:	8fb80034 	lw	t8,52(sp)
    bb18:	a7a200be 	sh	v0,190(sp)
    bb1c:	8e260014 	lw	a2,20(s1)
    bb20:	87a500ac 	lh	a1,172(sp)
    bb24:	24070004 	li	a3,4
    bb28:	0c000000 	jal	0 <func_800437F0>
    bb2c:	8704000e 	lh	a0,14(t8)
    bb30:	a7a200bc 	sh	v0,188(sp)
    bb34:	8fa4003c 	lw	a0,60(sp)
    bb38:	8fa50040 	lw	a1,64(sp)
    bb3c:	0c000000 	jal	0 <func_800437F0>
    bb40:	27a600b8 	addiu	a2,sp,184
    bb44:	8faa003c 	lw	t2,60(sp)
    bb48:	8fa60044 	lw	a2,68(sp)
    bb4c:	02202025 	move	a0,s1
    bb50:	8d4e0000 	lw	t6,0(t2)
    bb54:	acce0000 	sw	t6,0(a2)
    bb58:	8d4c0004 	lw	t4,4(t2)
    bb5c:	accc0004 	sw	t4,4(a2)
    bb60:	8d4e0008 	lw	t6,8(t2)
    bb64:	acce0008 	sw	t6,8(a2)
    bb68:	0c000000 	jal	0 <func_800437F0>
    bb6c:	8fa50040 	lw	a1,64(sp)
    bb70:	c62c0018 	lwc1	$f12,24(s1)
    bb74:	c62e00fc 	lwc1	$f14,252(s1)
    bb78:	8e2600d4 	lw	a2,212(s1)
    bb7c:	0c000000 	jal	0 <func_800437F0>
    bb80:	3c073f80 	lui	a3,0x3f80
    bb84:	e62000fc 	swc1	$f0,252(s1)
    bb88:	00002025 	move	a0,zero
    bb8c:	8625015a 	lh	a1,346(s1)
    bb90:	3c063f00 	lui	a2,0x3f00
    bb94:	0c000000 	jal	0 <func_800437F0>
    bb98:	2407000a 	li	a3,10
    bb9c:	a622015a 	sh	v0,346(s1)
    bba0:	8fbf0024 	lw	ra,36(sp)
    bba4:	8fb0001c 	lw	s0,28(sp)
    bba8:	8fb10020 	lw	s1,32(sp)
    bbac:	03e00008 	jr	ra
    bbb0:	27bd00e0 	addiu	sp,sp,224

0000bbb4 <Camera_KeepOn0>:
    bbb4:	27bdff90 	addiu	sp,sp,-112
    bbb8:	afbf001c 	sw	ra,28(sp)
    bbbc:	afb00018 	sw	s0,24(sp)
    bbc0:	848e014c 	lh	t6,332(a0)
    bbc4:	8483015e 	lh	v1,350(a0)
    bbc8:	00808025 	move	s0,a0
    bbcc:	31cfffef 	andi	t7,t6,0xffef
    bbd0:	1060000a 	beqz	v1,bbfc <Camera_KeepOn0+0x48>
    bbd4:	a48f014c 	sh	t7,332(a0)
    bbd8:	2401000a 	li	at,10
    bbdc:	10610007 	beq	v1,at,bbfc <Camera_KeepOn0+0x48>
    bbe0:	24010014 	li	at,20
    bbe4:	10610005 	beq	v1,at,bbfc <Camera_KeepOn0+0x48>
    bbe8:	3c180000 	lui	t8,0x0
    bbec:	8f180000 	lw	t8,0(t8)
    bbf0:	87030314 	lh	v1,788(t8)
    bbf4:	10600022 	beqz	v1,bc80 <Camera_KeepOn0+0xcc>
    bbf8:	00000000 	nop
    bbfc:	86190142 	lh	t9,322(s0)
    bc00:	3c0a0000 	lui	t2,0x0
    bc04:	860b0144 	lh	t3,324(s0)
    bc08:	001948c0 	sll	t1,t9,0x3
    bc0c:	01495021 	addu	t2,t2,t1
    bc10:	8d4a0004 	lw	t2,4(t2)
    bc14:	000b60c0 	sll	t4,t3,0x3
    bc18:	3c010000 	lui	at,0x0
    bc1c:	014c6821 	addu	t5,t2,t4
    bc20:	8da20004 	lw	v0,4(t5)
    bc24:	c4280000 	lwc1	$f8,0(at)
    bc28:	3c010000 	lui	at,0x0
    bc2c:	844e0000 	lh	t6,0(v0)
    bc30:	3c090000 	lui	t1,0x0
    bc34:	2442000c 	addiu	v0,v0,12
    bc38:	448e2000 	mtc1	t6,$f4
    bc3c:	00000000 	nop
    bc40:	468021a0 	cvt.s.w	$f6,$f4
    bc44:	46083282 	mul.s	$f10,$f6,$f8
    bc48:	e60a0000 	swc1	$f10,0(s0)
    bc4c:	844ffff8 	lh	t7,-8(v0)
    bc50:	c4240000 	lwc1	$f4,0(at)
    bc54:	448f8000 	mtc1	t7,$f16
    bc58:	00000000 	nop
    bc5c:	468084a0 	cvt.s.w	$f18,$f16
    bc60:	46049182 	mul.s	$f6,$f18,$f4
    bc64:	e6060004 	swc1	$f6,4(s0)
    bc68:	8458fffc 	lh	t8,-4(v0)
    bc6c:	a6180008 	sh	t8,8(s0)
    bc70:	84590000 	lh	t9,0(v0)
    bc74:	a619000a 	sh	t9,10(s0)
    bc78:	8d290000 	lw	t1,0(t1)
    bc7c:	85230314 	lh	v1,788(t1)
    bc80:	10600003 	beqz	v1,bc90 <Camera_KeepOn0+0xdc>
    bc84:	00000000 	nop
    bc88:	0c000000 	jal	0 <func_800437F0>
    bc8c:	02002025 	move	a0,s0
    bc90:	0c000000 	jal	0 <func_800437F0>
    bc94:	02002025 	move	a0,s0
    bc98:	26040074 	addiu	a0,s0,116
    bc9c:	afa4002c 	sw	a0,44(sp)
    bca0:	00402825 	move	a1,v0
    bca4:	0c000000 	jal	0 <func_800437F0>
    bca8:	afa20044 	sw	v0,68(sp)
    bcac:	8fa4002c 	lw	a0,44(sp)
    bcb0:	8fa30044 	lw	v1,68(sp)
    bcb4:	2606005c 	addiu	a2,s0,92
    bcb8:	8c8a0000 	lw	t2,0(a0)
    bcbc:	27ac003c 	addiu	t4,sp,60
    bcc0:	2401ffff 	li	at,-1
    bcc4:	acca0000 	sw	t2,0(a2)
    bcc8:	8c8b0004 	lw	t3,4(a0)
    bccc:	accb0004 	sw	t3,4(a2)
    bcd0:	8c8a0008 	lw	t2,8(a0)
    bcd4:	acca0008 	sw	t2,8(a2)
    bcd8:	886e0006 	lwl	t6,6(v1)
    bcdc:	986e0009 	lwr	t6,9(v1)
    bce0:	ad8e0000 	sw	t6,0(t4)
    bce4:	946e000a 	lhu	t6,10(v1)
    bce8:	a58e0004 	sh	t6,4(t4)
    bcec:	8467000c 	lh	a3,12(v1)
    bcf0:	54e10003 	bnel	a3,at,bd00 <Camera_KeepOn0+0x14c>
    bcf4:	8e0500a8 	lw	a1,168(s0)
    bcf8:	24071770 	li	a3,6000
    bcfc:	8e0500a8 	lw	a1,168(s0)
    bd00:	10a00005 	beqz	a1,bd18 <Camera_KeepOn0+0x164>
    bd04:	00000000 	nop
    bd08:	8caf0130 	lw	t7,304(a1)
    bd0c:	260400ac 	addiu	a0,s0,172
    bd10:	55e0000c 	bnezl	t7,bd44 <Camera_KeepOn0+0x190>
    bd14:	afa40028 	sw	a0,40(sp)
    bd18:	14a00003 	bnez	a1,bd28 <Camera_KeepOn0+0x174>
    bd1c:	3c040000 	lui	a0,0x0
    bd20:	0c000000 	jal	0 <func_800437F0>
    bd24:	24840000 	addiu	a0,a0,0
    bd28:	ae0000a8 	sw	zero,168(s0)
    bd2c:	02002025 	move	a0,s0
    bd30:	0c000000 	jal	0 <func_800437F0>
    bd34:	00002825 	move	a1,zero
    bd38:	10000059 	b	bea0 <Camera_KeepOn0+0x2ec>
    bd3c:	24020001 	li	v0,1
    bd40:	afa40028 	sw	a0,40(sp)
    bd44:	afa60030 	sw	a2,48(sp)
    bd48:	0c000000 	jal	0 <func_800437F0>
    bd4c:	a7a7003a 	sh	a3,58(sp)
    bd50:	26060050 	addiu	a2,s0,80
    bd54:	afa6002c 	sw	a2,44(sp)
    bd58:	27a40054 	addiu	a0,sp,84
    bd5c:	0c000000 	jal	0 <func_800437F0>
    bd60:	8fa50030 	lw	a1,48(sp)
    bd64:	27a4005c 	addiu	a0,sp,92
    bd68:	8fa50030 	lw	a1,48(sp)
    bd6c:	0c000000 	jal	0 <func_800437F0>
    bd70:	8fa60028 	lw	a2,40(sp)
    bd74:	8618000a 	lh	t8,10(s0)
    bd78:	3c010000 	lui	at,0x0
    bd7c:	87a7003a 	lh	a3,58(sp)
    bd80:	ac380000 	sw	t8,0(at)
    bd84:	8603015e 	lh	v1,350(s0)
    bd88:	54600015 	bnezl	v1,bde0 <Camera_KeepOn0+0x22c>
    bd8c:	2608000c 	addiu	t0,s0,12
    bd90:	44874000 	mtc1	a3,$f8
    bd94:	24790001 	addiu	t9,v1,1
    bd98:	a619015e 	sh	t9,350(s0)
    bd9c:	468042a0 	cvt.s.w	$f10,$f8
    bda0:	3c010000 	lui	at,0x0
    bda4:	c4300000 	lwc1	$f16,0(at)
    bda8:	44802000 	mtc1	zero,$f4
    bdac:	86090008 	lh	t1,8(s0)
    bdb0:	a600015a 	sh	zero,346(s0)
    bdb4:	46105482 	mul.s	$f18,$f10,$f16
    bdb8:	2608000c 	addiu	t0,s0,12
    bdbc:	e6040100 	swc1	$f4,256(s0)
    bdc0:	e61200fc 	swc1	$f18,252(s0)
    bdc4:	a5090004 	sh	t1,4(t0)
    bdc8:	c6060000 	lwc1	$f6,0(s0)
    bdcc:	c60000fc 	lwc1	$f0,252(s0)
    bdd0:	46060202 	mul.s	$f8,$f0,$f6
    bdd4:	46080281 	sub.s	$f10,$f0,$f8
    bdd8:	e50a0000 	swc1	$f10,0(t0)
    bddc:	2608000c 	addiu	t0,s0,12
    bde0:	85020004 	lh	v0,4(t0)
    bde4:	87ab0062 	lh	t3,98(sp)
    bde8:	87aa005a 	lh	t2,90(sp)
    bdec:	10400022 	beqz	v0,be78 <Camera_KeepOn0+0x2c4>
    bdf0:	016a6023 	subu	t4,t3,t2
    bdf4:	000c6c00 	sll	t5,t4,0x10
    bdf8:	000d7403 	sra	t6,t5,0x10
    bdfc:	01c2001a 	div	zero,t6,v0
    be00:	00007812 	mflo	t7
    be04:	448f8000 	mtc1	t7,$f16
    be08:	c6040004 	lwc1	$f4,4(s0)
    be0c:	448a4000 	mtc1	t2,$f8
    be10:	468084a0 	cvt.s.w	$f18,$f16
    be14:	14400002 	bnez	v0,be20 <Camera_KeepOn0+0x26c>
    be18:	00000000 	nop
    be1c:	0007000d 	break	0x7
    be20:	2401ffff 	li	at,-1
    be24:	14410004 	bne	v0,at,be38 <Camera_KeepOn0+0x284>
    be28:	3c018000 	lui	at,0x8000
    be2c:	15c10002 	bne	t6,at,be38 <Camera_KeepOn0+0x284>
    be30:	00000000 	nop
    be34:	0006000d 	break	0x6
    be38:	46049182 	mul.s	$f6,$f18,$f4
    be3c:	afa80028 	sw	t0,40(sp)
    be40:	8fa4002c 	lw	a0,44(sp)
    be44:	8fa50030 	lw	a1,48(sp)
    be48:	27a60054 	addiu	a2,sp,84
    be4c:	468042a0 	cvt.s.w	$f10,$f8
    be50:	46065400 	add.s	$f16,$f10,$f6
    be54:	4600848d 	trunc.w.s	$f18,$f16
    be58:	44199000 	mfc1	t9,$f18
    be5c:	0c000000 	jal	0 <func_800437F0>
    be60:	a7b9005a 	sh	t9,90(sp)
    be64:	8fa80028 	lw	t0,40(sp)
    be68:	85090004 	lh	t1,4(t0)
    be6c:	252bffff 	addiu	t3,t1,-1
    be70:	10000004 	b	be84 <Camera_KeepOn0+0x2d0>
    be74:	a50b0004 	sh	t3,4(t0)
    be78:	860c014c 	lh	t4,332(s0)
    be7c:	358d0410 	ori	t5,t4,0x410
    be80:	a60d014c 	sh	t5,332(s0)
    be84:	c50c0000 	lwc1	$f12,0(t0)
    be88:	c60e00fc 	lwc1	$f14,252(s0)
    be8c:	3c063f00 	lui	a2,0x3f00
    be90:	0c000000 	jal	0 <func_800437F0>
    be94:	3c074120 	lui	a3,0x4120
    be98:	e60000fc 	swc1	$f0,252(s0)
    be9c:	24020001 	li	v0,1
    bea0:	8fbf001c 	lw	ra,28(sp)
    bea4:	8fb00018 	lw	s0,24(sp)
    bea8:	27bd0070 	addiu	sp,sp,112
    beac:	03e00008 	jr	ra
    beb0:	00000000 	nop

0000beb4 <Camera_Fixed1>:
    beb4:	27bdff80 	addiu	sp,sp,-128
    beb8:	afb0001c 	sw	s0,28(sp)
    bebc:	00808025 	move	s0,a0
    bec0:	afbf0024 	sw	ra,36(sp)
    bec4:	afb10020 	sw	s1,32(sp)
    bec8:	0c000000 	jal	0 <func_800437F0>
    becc:	8c840090 	lw	a0,144(a0)
    bed0:	e7a00040 	swc1	$f0,64(sp)
    bed4:	8602015e 	lh	v0,350(s0)
    bed8:	10400009 	beqz	v0,bf00 <Camera_Fixed1+0x4c>
    bedc:	2401000a 	li	at,10
    bee0:	10410007 	beq	v0,at,bf00 <Camera_Fixed1+0x4c>
    bee4:	24010014 	li	at,20
    bee8:	10410005 	beq	v0,at,bf00 <Camera_Fixed1+0x4c>
    beec:	3c0e0000 	lui	t6,0x0
    bef0:	8dce0000 	lw	t6,0(t6)
    bef4:	85c40314 	lh	a0,788(t6)
    bef8:	10800039 	beqz	a0,bfe0 <Camera_Fixed1+0x12c>
    befc:	00000000 	nop
    bf00:	860f0142 	lh	t7,322(s0)
    bf04:	3c190000 	lui	t9,0x0
    bf08:	86080144 	lh	t0,324(s0)
    bf0c:	000fc0c0 	sll	t8,t7,0x3
    bf10:	0338c821 	addu	t9,t9,t8
    bf14:	8f390004 	lw	t9,4(t9)
    bf18:	000848c0 	sll	t1,t0,0x3
    bf1c:	02002025 	move	a0,s0
    bf20:	03295021 	addu	t2,t9,t1
    bf24:	8d430004 	lw	v1,4(t2)
    bf28:	0c000000 	jal	0 <func_800437F0>
    bf2c:	afa3003c 	sw	v1,60(sp)
    bf30:	26110010 	addiu	s1,s0,16
    bf34:	02202025 	move	a0,s1
    bf38:	00402825 	move	a1,v0
    bf3c:	0c000000 	jal	0 <func_800437F0>
    bf40:	afa20050 	sw	v0,80(sp)
    bf44:	8fa60050 	lw	a2,80(sp)
    bf48:	8fa3003c 	lw	v1,60(sp)
    bf4c:	3c010000 	lui	at,0x0
    bf50:	88cc0006 	lwl	t4,6(a2)
    bf54:	98cc0009 	lwr	t4,9(a2)
    bf58:	3c190000 	lui	t9,0x0
    bf5c:	2463000c 	addiu	v1,v1,12
    bf60:	aa2c000c 	swl	t4,12(s1)
    bf64:	ba2c000f 	swr	t4,15(s1)
    bf68:	94cc000a 	lhu	t4,10(a2)
    bf6c:	a62c0010 	sh	t4,16(s1)
    bf70:	84cd000c 	lh	t5,12(a2)
    bf74:	a62d0014 	sh	t5,20(s1)
    bf78:	846efff4 	lh	t6,-12(v1)
    bf7c:	c4280000 	lwc1	$f8,0(at)
    bf80:	c7b00040 	lwc1	$f16,64(sp)
    bf84:	448e2000 	mtc1	t6,$f4
    bf88:	3c010000 	lui	at,0x0
    bf8c:	468021a0 	cvt.s.w	$f6,$f4
    bf90:	46083282 	mul.s	$f10,$f6,$f8
    bf94:	00000000 	nop
    bf98:	46105482 	mul.s	$f18,$f10,$f16
    bf9c:	e6120000 	swc1	$f18,0(s0)
    bfa0:	846ffff8 	lh	t7,-8(v1)
    bfa4:	c4280000 	lwc1	$f8,0(at)
    bfa8:	448f2000 	mtc1	t7,$f4
    bfac:	00000000 	nop
    bfb0:	468021a0 	cvt.s.w	$f6,$f4
    bfb4:	46083282 	mul.s	$f10,$f6,$f8
    bfb8:	e60a0004 	swc1	$f10,4(s0)
    bfbc:	8478fffc 	lh	t8,-4(v1)
    bfc0:	44988000 	mtc1	t8,$f16
    bfc4:	00000000 	nop
    bfc8:	468084a0 	cvt.s.w	$f18,$f16
    bfcc:	e6120008 	swc1	$f18,8(s0)
    bfd0:	84680000 	lh	t0,0(v1)
    bfd4:	a608000c 	sh	t0,12(s0)
    bfd8:	8f390000 	lw	t9,0(t9)
    bfdc:	87240314 	lh	a0,788(t9)
    bfe0:	10800003 	beqz	a0,bff0 <Camera_Fixed1+0x13c>
    bfe4:	26110010 	addiu	s1,s0,16
    bfe8:	0c000000 	jal	0 <func_800437F0>
    bfec:	02002025 	move	a0,s0
    bff0:	86220014 	lh	v0,20(s1)
    bff4:	2401ffff 	li	at,-1
    bff8:	14410008 	bne	v0,at,c01c <Camera_Fixed1+0x168>
    bffc:	3c0142c8 	lui	at,0x42c8
    c000:	44813000 	mtc1	at,$f6
    c004:	c6040008 	lwc1	$f4,8(s0)
    c008:	46062202 	mul.s	$f8,$f4,$f6
    c00c:	4600428d 	trunc.w.s	$f10,$f8
    c010:	440a5000 	mfc1	t2,$f10
    c014:	10000009 	b	c03c <Camera_Fixed1+0x188>
    c018:	a62a0014 	sh	t2,20(s1)
    c01c:	28410169 	slti	at,v0,361
    c020:	10200006 	beqz	at,c03c <Camera_Fixed1+0x188>
    c024:	00025880 	sll	t3,v0,0x2
    c028:	01625823 	subu	t3,t3,v0
    c02c:	000b58c0 	sll	t3,t3,0x3
    c030:	01625821 	addu	t3,t3,v0
    c034:	000b5880 	sll	t3,t3,0x2
    c038:	a62b0014 	sh	t3,20(s1)
    c03c:	860c000c 	lh	t4,12(s0)
    c040:	3c010000 	lui	at,0x0
    c044:	02002025 	move	a0,s0
    c048:	ac2c0000 	sw	t4,0(at)
    c04c:	8602015e 	lh	v0,350(s0)
    c050:	1440000d 	bnez	v0,c088 <Camera_Fixed1+0x1d4>
    c054:	244d0001 	addiu	t5,v0,1
    c058:	0c000000 	jal	0 <func_800437F0>
    c05c:	a60d015e 	sh	t5,350(s0)
    c060:	86220014 	lh	v0,20(s1)
    c064:	2401ffff 	li	at,-1
    c068:	50410008 	beql	v0,at,c08c <Camera_Fixed1+0x1d8>
    c06c:	2605005c 	addiu	a1,s0,92
    c070:	44828000 	mtc1	v0,$f16
    c074:	3c010000 	lui	at,0x0
    c078:	c4240000 	lwc1	$f4,0(at)
    c07c:	468084a0 	cvt.s.w	$f18,$f16
    c080:	46049182 	mul.s	$f6,$f18,$f4
    c084:	e6060008 	swc1	$f6,8(s0)
    c088:	2605005c 	addiu	a1,s0,92
    c08c:	26060050 	addiu	a2,s0,80
    c090:	afa60030 	sw	a2,48(sp)
    c094:	afa50034 	sw	a1,52(sp)
    c098:	0c000000 	jal	0 <func_800437F0>
    c09c:	27a40064 	addiu	a0,sp,100
    c0a0:	3c010000 	lui	at,0x0
    c0a4:	c4200000 	lwc1	$f0,0(at)
    c0a8:	3c010000 	lui	at,0x0
    c0ac:	c4280000 	lwc1	$f8,0(at)
    c0b0:	44060000 	mfc1	a2,$f0
    c0b4:	44070000 	mfc1	a3,$f0
    c0b8:	02202025 	move	a0,s1
    c0bc:	8fa50034 	lw	a1,52(sp)
    c0c0:	0c000000 	jal	0 <func_800437F0>
    c0c4:	e7a80010 	swc1	$f8,16(sp)
    c0c8:	26020094 	addiu	v0,s0,148
    c0cc:	8c4f0000 	lw	t7,0(v0)
    c0d0:	27a40054 	addiu	a0,sp,84
    c0d4:	ac8f0000 	sw	t7,0(a0)
    c0d8:	8c4e0004 	lw	t6,4(v0)
    c0dc:	ac8e0004 	sw	t6,4(a0)
    c0e0:	8c4f0008 	lw	t7,8(v0)
    c0e4:	ac8f0008 	sw	t7,8(a0)
    c0e8:	c7aa0058 	lwc1	$f10,88(sp)
    c0ec:	c7b00040 	lwc1	$f16,64(sp)
    c0f0:	afa2002c 	sw	v0,44(sp)
    c0f4:	8fa50034 	lw	a1,52(sp)
    c0f8:	46105480 	add.s	$f18,$f10,$f16
    c0fc:	0c000000 	jal	0 <func_800437F0>
    c100:	e7b20058 	swc1	$f18,88(sp)
    c104:	e60000dc 	swc1	$f0,220(s0)
    c108:	e7a0006c 	swc1	$f0,108(sp)
    c10c:	8624000c 	lh	a0,12(s1)
    c110:	8e060004 	lw	a2,4(s0)
    c114:	87a50068 	lh	a1,104(sp)
    c118:	00042023 	negu	a0,a0
    c11c:	00042400 	sll	a0,a0,0x10
    c120:	00042403 	sra	a0,a0,0x10
    c124:	0c000000 	jal	0 <func_800437F0>
    c128:	24070005 	li	a3,5
    c12c:	a7a20070 	sh	v0,112(sp)
    c130:	8e060004 	lw	a2,4(s0)
    c134:	8624000e 	lh	a0,14(s1)
    c138:	87a5006a 	lh	a1,106(sp)
    c13c:	0c000000 	jal	0 <func_800437F0>
    c140:	24070005 	li	a3,5
    c144:	a7a20072 	sh	v0,114(sp)
    c148:	8fa40030 	lw	a0,48(sp)
    c14c:	8fa50034 	lw	a1,52(sp)
    c150:	0c000000 	jal	0 <func_800437F0>
    c154:	27a6006c 	addiu	a2,sp,108
    c158:	8fb80034 	lw	t8,52(sp)
    c15c:	3c073c23 	lui	a3,0x3c23
    c160:	34e7d70a 	ori	a3,a3,0xd70a
    c164:	8f190000 	lw	t9,0(t8)
    c168:	c60c0008 	lwc1	$f12,8(s0)
    c16c:	c60e00fc 	lwc1	$f14,252(s0)
    c170:	ae190074 	sw	t9,116(s0)
    c174:	8f080004 	lw	t0,4(t8)
    c178:	8e060004 	lw	a2,4(s0)
    c17c:	ae080078 	sw	t0,120(s0)
    c180:	8f190008 	lw	t9,8(t8)
    c184:	0c000000 	jal	0 <func_800437F0>
    c188:	ae19007c 	sw	t9,124(s0)
    c18c:	8fa3002c 	lw	v1,44(sp)
    c190:	44802000 	mtc1	zero,$f4
    c194:	e60000fc 	swc1	$f0,252(s0)
    c198:	a600015a 	sh	zero,346(s0)
    c19c:	e6040100 	swc1	$f4,256(s0)
    c1a0:	c6060050 	lwc1	$f6,80(s0)
    c1a4:	c4680000 	lwc1	$f8,0(v1)
    c1a8:	c6100054 	lwc1	$f16,84(s0)
    c1ac:	24020001 	li	v0,1
    c1b0:	46083281 	sub.s	$f10,$f6,$f8
    c1b4:	c6060058 	lwc1	$f6,88(s0)
    c1b8:	e60a00e4 	swc1	$f10,228(s0)
    c1bc:	c4720004 	lwc1	$f18,4(v1)
    c1c0:	46128101 	sub.s	$f4,$f16,$f18
    c1c4:	e60400e8 	swc1	$f4,232(s0)
    c1c8:	c4680008 	lwc1	$f8,8(v1)
    c1cc:	46083281 	sub.s	$f10,$f6,$f8
    c1d0:	e60a00ec 	swc1	$f10,236(s0)
    c1d4:	8fbf0024 	lw	ra,36(sp)
    c1d8:	8fb10020 	lw	s1,32(sp)
    c1dc:	8fb0001c 	lw	s0,28(sp)
    c1e0:	03e00008 	jr	ra
    c1e4:	27bd0080 	addiu	sp,sp,128

0000c1e8 <Camera_Fixed2>:
    c1e8:	27bdff70 	addiu	sp,sp,-144
    c1ec:	afb0001c 	sw	s0,28(sp)
    c1f0:	00808025 	move	s0,a0
    c1f4:	afbf0024 	sw	ra,36(sp)
    c1f8:	afb10020 	sw	s1,32(sp)
    c1fc:	0c000000 	jal	0 <func_800437F0>
    c200:	8c840090 	lw	a0,144(a0)
    c204:	e7a00054 	swc1	$f0,84(sp)
    c208:	8602015e 	lh	v0,350(s0)
    c20c:	2401000a 	li	at,10
    c210:	3c0c0000 	lui	t4,0x0
    c214:	10400008 	beqz	v0,c238 <Camera_Fixed2+0x50>
    c218:	00000000 	nop
    c21c:	10410006 	beq	v0,at,c238 <Camera_Fixed2+0x50>
    c220:	24010014 	li	at,20
    c224:	10410004 	beq	v0,at,c238 <Camera_Fixed2+0x50>
    c228:	3c0e0000 	lui	t6,0x0
    c22c:	8dce0000 	lw	t6,0(t6)
    c230:	85cf0314 	lh	t7,788(t6)
    c234:	11e0005a 	beqz	t7,c3a0 <Camera_Fixed2+0x1b8>
    c238:	3c010000 	lui	at,0x0
    c23c:	c42e0000 	lwc1	$f14,0(at)
    c240:	3c013f80 	lui	at,0x3f80
    c244:	44814000 	mtc1	at,$f8
    c248:	3c014288 	lui	at,0x4288
    c24c:	44818000 	mtc1	at,$f16
    c250:	8d8c0000 	lw	t4,0(t4)
    c254:	86180142 	lh	t8,322(s0)
    c258:	46008483 	div.s	$f18,$f16,$f0
    c25c:	858d01f0 	lh	t5,496(t4)
    c260:	3c080000 	lui	t0,0x0
    c264:	0018c8c0 	sll	t9,t8,0x3
    c268:	448d2000 	mtc1	t5,$f4
    c26c:	86090144 	lh	t1,324(s0)
    c270:	01194021 	addu	t0,t0,t9
    c274:	468021a0 	cvt.s.w	$f6,$f4
    c278:	8d080004 	lw	t0,4(t0)
    c27c:	000950c0 	sll	t2,t1,0x3
    c280:	3c0142c8 	lui	at,0x42c8
    c284:	010a5821 	addu	t3,t0,t2
    c288:	8d620004 	lw	v0,4(t3)
    c28c:	26110014 	addiu	s1,s0,20
    c290:	02002025 	move	a0,s0
    c294:	844e0000 	lh	t6,0(v0)
    c298:	24420010 	addiu	v0,v0,16
    c29c:	460e3082 	mul.s	$f2,$f6,$f14
    c2a0:	448e3000 	mtc1	t6,$f6
    c2a4:	46024280 	add.s	$f10,$f8,$f2
    c2a8:	46121102 	mul.s	$f4,$f2,$f18
    c2ac:	46803220 	cvt.s.w	$f8,$f6
    c2b0:	46045301 	sub.s	$f12,$f10,$f4
    c2b4:	460e4402 	mul.s	$f16,$f8,$f14
    c2b8:	00000000 	nop
    c2bc:	46008482 	mul.s	$f18,$f16,$f0
    c2c0:	00000000 	nop
    c2c4:	460c9282 	mul.s	$f10,$f18,$f12
    c2c8:	e60a0000 	swc1	$f10,0(s0)
    c2cc:	844ffff4 	lh	t7,-12(v0)
    c2d0:	448f2000 	mtc1	t7,$f4
    c2d4:	00000000 	nop
    c2d8:	468021a0 	cvt.s.w	$f6,$f4
    c2dc:	460e3202 	mul.s	$f8,$f6,$f14
    c2e0:	e6080004 	swc1	$f8,4(s0)
    c2e4:	8458fff8 	lh	t8,-8(v0)
    c2e8:	44988000 	mtc1	t8,$f16
    c2ec:	00000000 	nop
    c2f0:	468084a0 	cvt.s.w	$f18,$f16
    c2f4:	44818000 	mtc1	at,$f16
    c2f8:	460e9282 	mul.s	$f10,$f18,$f14
    c2fc:	e60a0008 	swc1	$f10,8(s0)
    c300:	8459fffc 	lh	t9,-4(v0)
    c304:	44992000 	mtc1	t9,$f4
    c308:	00000000 	nop
    c30c:	468021a0 	cvt.s.w	$f6,$f4
    c310:	e606000c 	swc1	$f6,12(s0)
    c314:	c608000c 	lwc1	$f8,12(s0)
    c318:	84490000 	lh	t1,0(v0)
    c31c:	46104482 	mul.s	$f18,$f8,$f16
    c320:	a6090010 	sh	t1,16(s0)
    c324:	4600928d 	trunc.w.s	$f10,$f18
    c328:	440a5000 	mfc1	t2,$f10
    c32c:	0c000000 	jal	0 <func_800437F0>
    c330:	a62a000c 	sh	t2,12(s1)
    c334:	1040000b 	beqz	v0,c364 <Camera_Fixed2+0x17c>
    c338:	00402825 	move	a1,v0
    c33c:	02202025 	move	a0,s1
    c340:	0c000000 	jal	0 <func_800437F0>
    c344:	afa20064 	sw	v0,100(sp)
    c348:	8fa50064 	lw	a1,100(sp)
    c34c:	2401ffff 	li	at,-1
    c350:	84a3000c 	lh	v1,12(a1)
    c354:	5061000a 	beql	v1,at,c380 <Camera_Fixed2+0x198>
    c358:	8622000c 	lh	v0,12(s1)
    c35c:	10000007 	b	c37c <Camera_Fixed2+0x194>
    c360:	a623000c 	sh	v1,12(s1)
    c364:	8e0c005c 	lw	t4,92(s0)
    c368:	ae2c0000 	sw	t4,0(s1)
    c36c:	8e0b0060 	lw	t3,96(s0)
    c370:	ae2b0004 	sw	t3,4(s1)
    c374:	8e0c0064 	lw	t4,100(s0)
    c378:	ae2c0008 	sw	t4,8(s1)
    c37c:	8622000c 	lh	v0,12(s1)
    c380:	28410169 	slti	at,v0,361
    c384:	10200006 	beqz	at,c3a0 <Camera_Fixed2+0x1b8>
    c388:	00026880 	sll	t5,v0,0x2
    c38c:	01a26823 	subu	t5,t5,v0
    c390:	000d68c0 	sll	t5,t5,0x3
    c394:	01a26821 	addu	t5,t5,v0
    c398:	000d6880 	sll	t5,t5,0x2
    c39c:	a62d000c 	sh	t5,12(s1)
    c3a0:	3c0f0000 	lui	t7,0x0
    c3a4:	8def0000 	lw	t7,0(t7)
    c3a8:	260e005c 	addiu	t6,s0,92
    c3ac:	afae003c 	sw	t6,60(sp)
    c3b0:	85f80314 	lh	t8,788(t7)
    c3b4:	26110014 	addiu	s1,s0,20
    c3b8:	53000004 	beqzl	t8,c3cc <Camera_Fixed2+0x1e4>
    c3bc:	44801000 	mtc1	zero,$f2
    c3c0:	0c000000 	jal	0 <func_800437F0>
    c3c4:	02002025 	move	a0,s0
    c3c8:	44801000 	mtc1	zero,$f2
    c3cc:	86190010 	lh	t9,16(s0)
    c3d0:	3c010000 	lui	at,0x0
    c3d4:	e7a2006c 	swc1	$f2,108(sp)
    c3d8:	ac390000 	sw	t9,0(at)
    c3dc:	c6040000 	lwc1	$f4,0(s0)
    c3e0:	c7a60054 	lwc1	$f6,84(sp)
    c3e4:	e7a20074 	swc1	$f2,116(sp)
    c3e8:	3c010000 	lui	at,0x0
    c3ec:	46062200 	add.s	$f8,$f4,$f6
    c3f0:	c4300000 	lwc1	$f16,0(at)
    c3f4:	27a4006c 	addiu	a0,sp,108
    c3f8:	260500e4 	addiu	a1,s0,228
    c3fc:	e7a80070 	swc1	$f8,112(sp)
    c400:	c6000008 	lwc1	$f0,8(s0)
    c404:	e7b00010 	swc1	$f16,16(sp)
    c408:	44060000 	mfc1	a2,$f0
    c40c:	44070000 	mfc1	a3,$f0
    c410:	0c000000 	jal	0 <func_800437F0>
    c414:	00000000 	nop
    c418:	26030094 	addiu	v1,s0,148
    c41c:	c4720000 	lwc1	$f18,0(v1)
    c420:	c60a00e4 	lwc1	$f10,228(s0)
    c424:	02002025 	move	a0,s0
    c428:	460a9100 	add.s	$f4,$f18,$f10
    c42c:	e7a40078 	swc1	$f4,120(sp)
    c430:	c60800e8 	lwc1	$f8,232(s0)
    c434:	c4660004 	lwc1	$f6,4(v1)
    c438:	46083400 	add.s	$f16,$f6,$f8
    c43c:	e7b0007c 	swc1	$f16,124(sp)
    c440:	c60a00ec 	lwc1	$f10,236(s0)
    c444:	c4720008 	lwc1	$f18,8(v1)
    c448:	460a9100 	add.s	$f4,$f18,$f10
    c44c:	e7a40080 	swc1	$f4,128(sp)
    c450:	8602015e 	lh	v0,350(s0)
    c454:	14400024 	bnez	v0,c4e8 <Camera_Fixed2+0x300>
    c458:	24490001 	addiu	t1,v0,1
    c45c:	a609015e 	sh	t1,350(s0)
    c460:	0c000000 	jal	0 <func_800437F0>
    c464:	afa30030 	sw	v1,48(sp)
    c468:	86080010 	lh	t0,16(s0)
    c46c:	8fa30030 	lw	v1,48(sp)
    c470:	310a0001 	andi	t2,t0,0x1
    c474:	5540001d 	bnezl	t2,c4ec <Camera_Fixed2+0x304>
    c478:	c6000008 	lwc1	$f0,8(s0)
    c47c:	8e2c0000 	lw	t4,0(s1)
    c480:	27a20040 	addiu	v0,sp,64
    c484:	27a90078 	addiu	t1,sp,120
    c488:	ac4c0000 	sw	t4,0(v0)
    c48c:	8e2b0004 	lw	t3,4(s1)
    c490:	8c4e0000 	lw	t6,0(v0)
    c494:	ac4b0004 	sw	t3,4(v0)
    c498:	8e2c0008 	lw	t4,8(s1)
    c49c:	ac4c0008 	sw	t4,8(v0)
    c4a0:	ae0e0074 	sw	t6,116(s0)
    c4a4:	8c4d0004 	lw	t5,4(v0)
    c4a8:	ae0d0078 	sw	t5,120(s0)
    c4ac:	8c4e0008 	lw	t6,8(v0)
    c4b0:	ae0e007c 	sw	t6,124(s0)
    c4b4:	8c590000 	lw	t9,0(v0)
    c4b8:	8faf003c 	lw	t7,60(sp)
    c4bc:	adf90000 	sw	t9,0(t7)
    c4c0:	8c580004 	lw	t8,4(v0)
    c4c4:	adf80004 	sw	t8,4(t7)
    c4c8:	8c590008 	lw	t9,8(v0)
    c4cc:	adf90008 	sw	t9,8(t7)
    c4d0:	8d2a0000 	lw	t2,0(t1)
    c4d4:	ae0a0050 	sw	t2,80(s0)
    c4d8:	8d280004 	lw	t0,4(t1)
    c4dc:	ae080054 	sw	t0,84(s0)
    c4e0:	8d2a0008 	lw	t2,8(t1)
    c4e4:	ae0a0058 	sw	t2,88(s0)
    c4e8:	c6000008 	lwc1	$f0,8(s0)
    c4ec:	3c014120 	lui	at,0x4120
    c4f0:	44813000 	mtc1	at,$f6
    c4f4:	26050050 	addiu	a1,s0,80
    c4f8:	260b0074 	addiu	t3,s0,116
    c4fc:	44060000 	mfc1	a2,$f0
    c500:	44070000 	mfc1	a3,$f0
    c504:	afab0034 	sw	t3,52(sp)
    c508:	afa50038 	sw	a1,56(sp)
    c50c:	afa30030 	sw	v1,48(sp)
    c510:	27a40078 	addiu	a0,sp,120
    c514:	0c000000 	jal	0 <func_800437F0>
    c518:	e7a60010 	swc1	$f6,16(sp)
    c51c:	c6000004 	lwc1	$f0,4(s0)
    c520:	3c010000 	lui	at,0x0
    c524:	c4280000 	lwc1	$f8,0(at)
    c528:	44060000 	mfc1	a2,$f0
    c52c:	44070000 	mfc1	a3,$f0
    c530:	02202025 	move	a0,s1
    c534:	8fa50034 	lw	a1,52(sp)
    c538:	0c000000 	jal	0 <func_800437F0>
    c53c:	e7a80010 	swc1	$f8,16(sp)
    c540:	8fad0034 	lw	t5,52(sp)
    c544:	8fac003c 	lw	t4,60(sp)
    c548:	8daf0000 	lw	t7,0(t5)
    c54c:	ad8f0000 	sw	t7,0(t4)
    c550:	8dae0004 	lw	t6,4(t5)
    c554:	ad8e0004 	sw	t6,4(t4)
    c558:	8daf0008 	lw	t7,8(t5)
    c55c:	ad8f0008 	sw	t7,8(t4)
    c560:	8fa5003c 	lw	a1,60(sp)
    c564:	0c000000 	jal	0 <func_800437F0>
    c568:	8fa40038 	lw	a0,56(sp)
    c56c:	44808000 	mtc1	zero,$f16
    c570:	e60000dc 	swc1	$f0,220(s0)
    c574:	a600015a 	sh	zero,346(s0)
    c578:	e61000d8 	swc1	$f16,216(s0)
    c57c:	8638000c 	lh	t8,12(s1)
    c580:	3c010000 	lui	at,0x0
    c584:	c4240000 	lwc1	$f4,0(at)
    c588:	44989000 	mtc1	t8,$f18
    c58c:	02002025 	move	a0,s0
    c590:	3c053f80 	lui	a1,0x3f80
    c594:	468092a0 	cvt.s.w	$f10,$f18
    c598:	46045182 	mul.s	$f6,$f10,$f4
    c59c:	0c000000 	jal	0 <func_800437F0>
    c5a0:	e60600fc 	swc1	$f6,252(s0)
    c5a4:	8fa30030 	lw	v1,48(sp)
    c5a8:	e6000100 	swc1	$f0,256(s0)
    c5ac:	c6080050 	lwc1	$f8,80(s0)
    c5b0:	c4700000 	lwc1	$f16,0(v1)
    c5b4:	c60a0054 	lwc1	$f10,84(s0)
    c5b8:	24020001 	li	v0,1
    c5bc:	46104481 	sub.s	$f18,$f8,$f16
    c5c0:	c6080058 	lwc1	$f8,88(s0)
    c5c4:	e61200e4 	swc1	$f18,228(s0)
    c5c8:	c4640004 	lwc1	$f4,4(v1)
    c5cc:	46045181 	sub.s	$f6,$f10,$f4
    c5d0:	e60600e8 	swc1	$f6,232(s0)
    c5d4:	c4700008 	lwc1	$f16,8(v1)
    c5d8:	46104481 	sub.s	$f18,$f8,$f16
    c5dc:	e61200ec 	swc1	$f18,236(s0)
    c5e0:	8fbf0024 	lw	ra,36(sp)
    c5e4:	8fb10020 	lw	s1,32(sp)
    c5e8:	8fb0001c 	lw	s0,28(sp)
    c5ec:	03e00008 	jr	ra
    c5f0:	27bd0090 	addiu	sp,sp,144

0000c5f4 <Camera_Fixed3>:
    c5f4:	27bdff98 	addiu	sp,sp,-104
    c5f8:	afbf001c 	sw	ra,28(sp)
    c5fc:	afb00018 	sw	s0,24(sp)
    c600:	0c000000 	jal	0 <func_800437F0>
    c604:	00808025 	move	s0,a0
    c608:	2605005c 	addiu	a1,s0,92
    c60c:	26060050 	addiu	a2,s0,80
    c610:	afa60030 	sw	a2,48(sp)
    c614:	afa50034 	sw	a1,52(sp)
    c618:	27a40048 	addiu	a0,sp,72
    c61c:	0c000000 	jal	0 <func_800437F0>
    c620:	afa20050 	sw	v0,80(sp)
    c624:	8603015e 	lh	v1,350(s0)
    c628:	8fa70050 	lw	a3,80(sp)
    c62c:	2401000a 	li	at,10
    c630:	5060000a 	beqzl	v1,c65c <Camera_Fixed3+0x68>
    c634:	86180142 	lh	t8,322(s0)
    c638:	10610007 	beq	v1,at,c658 <Camera_Fixed3+0x64>
    c63c:	24010014 	li	at,20
    c640:	10610005 	beq	v1,at,c658 <Camera_Fixed3+0x64>
    c644:	3c0e0000 	lui	t6,0x0
    c648:	8dce0000 	lw	t6,0(t6)
    c64c:	85cf0314 	lh	t7,788(t6)
    c650:	11e00034 	beqz	t7,c724 <Camera_Fixed3+0x130>
    c654:	00000000 	nop
    c658:	86180142 	lh	t8,322(s0)
    c65c:	3c080000 	lui	t0,0x0
    c660:	86090144 	lh	t1,324(s0)
    c664:	0018c8c0 	sll	t9,t8,0x3
    c668:	01194021 	addu	t0,t0,t9
    c66c:	8d080004 	lw	t0,4(t0)
    c670:	000950c0 	sll	t2,t1,0x3
    c674:	26060074 	addiu	a2,s0,116
    c678:	010a5821 	addu	t3,t0,t2
    c67c:	8d620004 	lw	v0,4(t3)
    c680:	00c02025 	move	a0,a2
    c684:	00e02825 	move	a1,a3
    c688:	844c0000 	lh	t4,0(v0)
    c68c:	a60c0000 	sh	t4,0(s0)
    c690:	afa70050 	sw	a3,80(sp)
    c694:	0c000000 	jal	0 <func_800437F0>
    c698:	afa6002c 	sw	a2,44(sp)
    c69c:	8fa6002c 	lw	a2,44(sp)
    c6a0:	8fad0034 	lw	t5,52(sp)
    c6a4:	8fa70050 	lw	a3,80(sp)
    c6a8:	8ccf0000 	lw	t7,0(a2)
    c6ac:	26030002 	addiu	v1,s0,2
    c6b0:	2401ffff 	li	at,-1
    c6b4:	adaf0000 	sw	t7,0(t5)
    c6b8:	8cce0004 	lw	t6,4(a2)
    c6bc:	240a1770 	li	t2,6000
    c6c0:	adae0004 	sw	t6,4(t5)
    c6c4:	8ccf0008 	lw	t7,8(a2)
    c6c8:	adaf0008 	sw	t7,8(t5)
    c6cc:	88f90006 	lwl	t9,6(a3)
    c6d0:	98f90009 	lwr	t9,9(a3)
    c6d4:	a8790000 	swl	t9,0(v1)
    c6d8:	b8790003 	swr	t9,3(v1)
    c6dc:	94f9000a 	lhu	t9,10(a3)
    c6e0:	a4790004 	sh	t9,4(v1)
    c6e4:	84e9000c 	lh	t1,12(a3)
    c6e8:	a4690006 	sh	t1,6(v1)
    c6ec:	84640006 	lh	a0,6(v1)
    c6f0:	84e8000e 	lh	t0,14(a3)
    c6f4:	14810003 	bne	a0,at,c704 <Camera_Fixed3+0x110>
    c6f8:	a468000a 	sh	t0,10(v1)
    c6fc:	a46a0006 	sh	t2,6(v1)
    c700:	84640006 	lh	a0,6(v1)
    c704:	28810169 	slti	at,a0,361
    c708:	10200006 	beqz	at,c724 <Camera_Fixed3+0x130>
    c70c:	00045880 	sll	t3,a0,0x2
    c710:	01645823 	subu	t3,t3,a0
    c714:	000b58c0 	sll	t3,t3,0x3
    c718:	01645821 	addu	t3,t3,a0
    c71c:	000b5880 	sll	t3,t3,0x2
    c720:	a46b0006 	sh	t3,6(v1)
    c724:	3c0c0000 	lui	t4,0x0
    c728:	8d8c0000 	lw	t4,0(t4)
    c72c:	26030002 	addiu	v1,s0,2
    c730:	02002025 	move	a0,s0
    c734:	858d0314 	lh	t5,788(t4)
    c738:	51a00007 	beqzl	t5,c758 <Camera_Fixed3+0x164>
    c73c:	860e015e 	lh	t6,350(s0)
    c740:	afa30028 	sw	v1,40(sp)
    c744:	0c000000 	jal	0 <func_800437F0>
    c748:	afa70050 	sw	a3,80(sp)
    c74c:	8fa30028 	lw	v1,40(sp)
    c750:	8fa70050 	lw	a3,80(sp)
    c754:	860e015e 	lh	t6,350(s0)
    c758:	240f0005 	li	t7,5
    c75c:	3c190000 	lui	t9,0x0
    c760:	15c00008 	bnez	t6,c784 <Camera_Fixed3+0x190>
    c764:	3c040000 	lui	a0,0x0
    c768:	a46f0008 	sh	t7,8(v1)
    c76c:	8f390000 	lw	t9,0(t9)
    c770:	84780006 	lh	t8,6(v1)
    c774:	a7380262 	sh	t8,610(t9)
    c778:	8609015e 	lh	t1,350(s0)
    c77c:	25280001 	addiu	t0,t1,1
    c780:	a608015e 	sh	t0,350(s0)
    c784:	8465000a 	lh	a1,10(v1)
    c788:	84ea000e 	lh	t2,14(a3)
    c78c:	24840000 	addiu	a0,a0,0
    c790:	50aa000b 	beql	a1,t2,c7c0 <Camera_Fixed3+0x1cc>
    c794:	84620008 	lh	v0,8(v1)
    c798:	afa30028 	sw	v1,40(sp)
    c79c:	0c000000 	jal	0 <func_800437F0>
    c7a0:	afa70050 	sw	a3,80(sp)
    c7a4:	8fa70050 	lw	a3,80(sp)
    c7a8:	8fa30028 	lw	v1,40(sp)
    c7ac:	240c0005 	li	t4,5
    c7b0:	84eb000e 	lh	t3,14(a3)
    c7b4:	a46c0008 	sh	t4,8(v1)
    c7b8:	a46b000a 	sh	t3,10(v1)
    c7bc:	84620008 	lh	v0,8(v1)
    c7c0:	240e0001 	li	t6,1
    c7c4:	3c010000 	lui	at,0x0
    c7c8:	18400005 	blez	v0,c7e0 <Camera_Fixed3+0x1ec>
    c7cc:	244dffff 	addiu	t5,v0,-1
    c7d0:	a46d0008 	sh	t5,8(v1)
    c7d4:	3c010000 	lui	at,0x0
    c7d8:	10000002 	b	c7e4 <Camera_Fixed3+0x1f0>
    c7dc:	ac2e0000 	sw	t6,0(at)
    c7e0:	ac200000 	sw	zero,0(at)
    c7e4:	3c014316 	lui	at,0x4316
    c7e8:	44812000 	mtc1	at,$f4
    c7ec:	8fa40030 	lw	a0,48(sp)
    c7f0:	8fa50034 	lw	a1,52(sp)
    c7f4:	e7a40054 	swc1	$f4,84(sp)
    c7f8:	846f0002 	lh	t7,2(v1)
    c7fc:	27a60054 	addiu	a2,sp,84
    c800:	a7af005a 	sh	t7,90(sp)
    c804:	84780000 	lh	t8,0(v1)
    c808:	afa30028 	sw	v1,40(sp)
    c80c:	0018c823 	negu	t9,t8
    c810:	0c000000 	jal	0 <func_800437F0>
    c814:	a7b90058 	sh	t9,88(sp)
    c818:	86090000 	lh	t1,0(s0)
    c81c:	3c080000 	lui	t0,0x0
    c820:	8d080000 	lw	t0,0(t0)
    c824:	3c010000 	lui	at,0x0
    c828:	ac290000 	sw	t1,0(at)
    c82c:	8fa30028 	lw	v1,40(sp)
    c830:	850a0262 	lh	t2,610(t0)
    c834:	3c010000 	lui	at,0x0
    c838:	44809000 	mtc1	zero,$f18
    c83c:	a46a0006 	sh	t2,6(v1)
    c840:	a600015a 	sh	zero,346(s0)
    c844:	846b0006 	lh	t3,6(v1)
    c848:	c42a0000 	lwc1	$f10,0(at)
    c84c:	e6120100 	swc1	$f18,256(s0)
    c850:	448b3000 	mtc1	t3,$f6
    c854:	24020001 	li	v0,1
    c858:	46803220 	cvt.s.w	$f8,$f6
    c85c:	460a4402 	mul.s	$f16,$f8,$f10
    c860:	e61000fc 	swc1	$f16,252(s0)
    c864:	8fbf001c 	lw	ra,28(sp)
    c868:	8fb00018 	lw	s0,24(sp)
    c86c:	27bd0068 	addiu	sp,sp,104
    c870:	03e00008 	jr	ra
    c874:	00000000 	nop

0000c878 <Camera_Fixed4>:
    c878:	27bdff58 	addiu	sp,sp,-168
    c87c:	afb00020 	sw	s0,32(sp)
    c880:	00808025 	move	s0,a0
    c884:	afbf002c 	sw	ra,44(sp)
    c888:	afb20028 	sw	s2,40(sp)
    c88c:	afb10024 	sw	s1,36(sp)
    c890:	0c000000 	jal	0 <func_800437F0>
    c894:	8c840090 	lw	a0,144(a0)
    c898:	e7a00050 	swc1	$f0,80(sp)
    c89c:	8602015e 	lh	v0,350(s0)
    c8a0:	10400008 	beqz	v0,c8c4 <Camera_Fixed4+0x4c>
    c8a4:	2401000a 	li	at,10
    c8a8:	10410006 	beq	v0,at,c8c4 <Camera_Fixed4+0x4c>
    c8ac:	24010014 	li	at,20
    c8b0:	10410004 	beq	v0,at,c8c4 <Camera_Fixed4+0x4c>
    c8b4:	3c0e0000 	lui	t6,0x0
    c8b8:	8dce0000 	lw	t6,0(t6)
    c8bc:	85c30314 	lh	v1,788(t6)
    c8c0:	10600049 	beqz	v1,c9e8 <Camera_Fixed4+0x170>
    c8c4:	3c0b0000 	lui	t3,0x0
    c8c8:	8d6b0000 	lw	t3,0(t3)
    c8cc:	3c010000 	lui	at,0x0
    c8d0:	c42c0000 	lwc1	$f12,0(at)
    c8d4:	856c01f0 	lh	t4,496(t3)
    c8d8:	3c013f80 	lui	at,0x3f80
    c8dc:	44814000 	mtc1	at,$f8
    c8e0:	448c2000 	mtc1	t4,$f4
    c8e4:	3c014288 	lui	at,0x4288
    c8e8:	860f0142 	lh	t7,322(s0)
    c8ec:	468021a0 	cvt.s.w	$f6,$f4
    c8f0:	44812000 	mtc1	at,$f4
    c8f4:	3c190000 	lui	t9,0x0
    c8f8:	000fc0c0 	sll	t8,t7,0x3
    c8fc:	86080144 	lh	t0,324(s0)
    c900:	0338c821 	addu	t9,t9,t8
    c904:	460c3082 	mul.s	$f2,$f6,$f12
    c908:	46002183 	div.s	$f6,$f4,$f0
    c90c:	8f390004 	lw	t9,4(t9)
    c910:	000848c0 	sll	t1,t0,0x3
    c914:	02002025 	move	a0,s0
    c918:	03295021 	addu	t2,t9,t1
    c91c:	8d420004 	lw	v0,4(t2)
    c920:	46024280 	add.s	$f10,$f8,$f2
    c924:	844d0000 	lh	t5,0(v0)
    c928:	24420010 	addiu	v0,v0,16
    c92c:	448d2000 	mtc1	t5,$f4
    c930:	46061202 	mul.s	$f8,$f2,$f6
    c934:	468021a0 	cvt.s.w	$f6,$f4
    c938:	46085381 	sub.s	$f14,$f10,$f8
    c93c:	460c3282 	mul.s	$f10,$f6,$f12
    c940:	00000000 	nop
    c944:	46005202 	mul.s	$f8,$f10,$f0
    c948:	00000000 	nop
    c94c:	460e4102 	mul.s	$f4,$f8,$f14
    c950:	e6040000 	swc1	$f4,0(s0)
    c954:	844efff4 	lh	t6,-12(v0)
    c958:	448e3000 	mtc1	t6,$f6
    c95c:	00000000 	nop
    c960:	468032a0 	cvt.s.w	$f10,$f6
    c964:	460c5202 	mul.s	$f8,$f10,$f12
    c968:	e6080004 	swc1	$f8,4(s0)
    c96c:	844ffff8 	lh	t7,-8(v0)
    c970:	448f2000 	mtc1	t7,$f4
    c974:	00000000 	nop
    c978:	468021a0 	cvt.s.w	$f6,$f4
    c97c:	460c3282 	mul.s	$f10,$f6,$f12
    c980:	e60a0008 	swc1	$f10,8(s0)
    c984:	8458fffc 	lh	t8,-4(v0)
    c988:	44984000 	mtc1	t8,$f8
    c98c:	00000000 	nop
    c990:	46804120 	cvt.s.w	$f4,$f8
    c994:	e604000c 	swc1	$f4,12(s0)
    c998:	84480000 	lh	t0,0(v0)
    c99c:	0c000000 	jal	0 <func_800437F0>
    c9a0:	a6080010 	sh	t0,16(s0)
    c9a4:	10400007 	beqz	v0,c9c4 <Camera_Fixed4+0x14c>
    c9a8:	00402825 	move	a1,v0
    c9ac:	0c000000 	jal	0 <func_800437F0>
    c9b0:	26040014 	addiu	a0,s0,20
    c9b4:	3c190000 	lui	t9,0x0
    c9b8:	8f390000 	lw	t9,0(t9)
    c9bc:	1000000a 	b	c9e8 <Camera_Fixed4+0x170>
    c9c0:	87230314 	lh	v1,788(t9)
    c9c4:	8e0a005c 	lw	t2,92(s0)
    c9c8:	8e090060 	lw	t1,96(s0)
    c9cc:	3c0b0000 	lui	t3,0x0
    c9d0:	ae0a0014 	sw	t2,20(s0)
    c9d4:	8e0a0064 	lw	t2,100(s0)
    c9d8:	ae090018 	sw	t1,24(s0)
    c9dc:	ae0a001c 	sw	t2,28(s0)
    c9e0:	8d6b0000 	lw	t3,0(t3)
    c9e4:	85630314 	lh	v1,788(t3)
    c9e8:	260c005c 	addiu	t4,s0,92
    c9ec:	afac0044 	sw	t4,68(sp)
    c9f0:	10600003 	beqz	v1,ca00 <Camera_Fixed4+0x188>
    c9f4:	26120014 	addiu	s2,s0,20
    c9f8:	0c000000 	jal	0 <func_800437F0>
    c9fc:	02002025 	move	a0,s0
    ca00:	860d0010 	lh	t5,16(s0)
    ca04:	3c010000 	lui	at,0x0
    ca08:	ac2d0000 	sw	t5,0(at)
    ca0c:	8602015e 	lh	v0,350(s0)
    ca10:	5440000c 	bnezl	v0,ca44 <Camera_Fixed4+0x1cc>
    ca14:	26110074 	addiu	s1,s0,116
    ca18:	860f0010 	lh	t7,16(s0)
    ca1c:	244e0001 	addiu	t6,v0,1
    ca20:	a60e015e 	sh	t6,350(s0)
    ca24:	31f80004 	andi	t8,t7,0x4
    ca28:	57000004 	bnezl	t8,ca3c <Camera_Fixed4+0x1c4>
    ca2c:	c6060008 	lwc1	$f6,8(s0)
    ca30:	0c000000 	jal	0 <func_800437F0>
    ca34:	02002025 	move	a0,s0
    ca38:	c6060008 	lwc1	$f6,8(s0)
    ca3c:	e646000c 	swc1	$f6,12(s2)
    ca40:	26110074 	addiu	s1,s0,116
    ca44:	c6200000 	lwc1	$f0,0(s1)
    ca48:	c64a0000 	lwc1	$f10,0(s2)
    ca4c:	c6040004 	lwc1	$f4,4(s0)
    ca50:	3c010000 	lui	at,0x0
    ca54:	46005201 	sub.s	$f8,$f10,$f0
    ca58:	c42e0000 	lwc1	$f14,0(at)
    ca5c:	c6220004 	lwc1	$f2,4(s1)
    ca60:	c62c0008 	lwc1	$f12,8(s1)
    ca64:	46044182 	mul.s	$f6,$f8,$f4
    ca68:	44808000 	mtc1	zero,$f16
    ca6c:	44067000 	mfc1	a2,$f14
    ca70:	44077000 	mfc1	a3,$f14
    ca74:	27a40078 	addiu	a0,sp,120
    ca78:	260500e4 	addiu	a1,s0,228
    ca7c:	46060280 	add.s	$f10,$f0,$f6
    ca80:	e62a0000 	swc1	$f10,0(s1)
    ca84:	c6480004 	lwc1	$f8,4(s2)
    ca88:	c6060004 	lwc1	$f6,4(s0)
    ca8c:	8e290000 	lw	t1,0(s1)
    ca90:	46024101 	sub.s	$f4,$f8,$f2
    ca94:	46062282 	mul.s	$f10,$f4,$f6
    ca98:	460a1200 	add.s	$f8,$f2,$f10
    ca9c:	e6280004 	swc1	$f8,4(s1)
    caa0:	c6440008 	lwc1	$f4,8(s2)
    caa4:	c60a0004 	lwc1	$f10,4(s0)
    caa8:	460c2181 	sub.s	$f6,$f4,$f12
    caac:	460a3202 	mul.s	$f8,$f6,$f10
    cab0:	46086100 	add.s	$f4,$f12,$f8
    cab4:	e6240008 	swc1	$f4,8(s1)
    cab8:	8fa80044 	lw	t0,68(sp)
    cabc:	ad090000 	sw	t1,0(t0)
    cac0:	8e390004 	lw	t9,4(s1)
    cac4:	ad190004 	sw	t9,4(t0)
    cac8:	8e290008 	lw	t1,8(s1)
    cacc:	ad090008 	sw	t1,8(t0)
    cad0:	e7b00078 	swc1	$f16,120(sp)
    cad4:	c6060000 	lwc1	$f6,0(s0)
    cad8:	c7aa0050 	lwc1	$f10,80(sp)
    cadc:	e7ae0010 	swc1	$f14,16(sp)
    cae0:	e7b00080 	swc1	$f16,128(sp)
    cae4:	460a3200 	add.s	$f8,$f6,$f10
    cae8:	0c000000 	jal	0 <func_800437F0>
    caec:	e7a8007c 	swc1	$f8,124(sp)
    caf0:	26020094 	addiu	v0,s0,148
    caf4:	c4440000 	lwc1	$f4,0(v0)
    caf8:	c60600e4 	lwc1	$f6,228(s0)
    cafc:	c44a0004 	lwc1	$f10,4(v0)
    cb00:	c60800e8 	lwc1	$f8,232(s0)
    cb04:	46062380 	add.s	$f14,$f4,$f6
    cb08:	26060050 	addiu	a2,s0,80
    cb0c:	c4c00000 	lwc1	$f0,0(a2)
    cb10:	46085400 	add.s	$f16,$f10,$f8
    cb14:	c60600ec 	lwc1	$f6,236(s0)
    cb18:	c4440008 	lwc1	$f4,8(v0)
    cb1c:	46007281 	sub.s	$f10,$f14,$f0
    cb20:	3c013f00 	lui	at,0x3f00
    cb24:	44814000 	mtc1	at,$f8
    cb28:	46062480 	add.s	$f18,$f4,$f6
    cb2c:	27a40070 	addiu	a0,sp,112
    cb30:	46085102 	mul.s	$f4,$f10,$f8
    cb34:	44814000 	mtc1	at,$f8
    cb38:	02202825 	move	a1,s1
    cb3c:	46040180 	add.s	$f6,$f0,$f4
    cb40:	e7a60084 	swc1	$f6,132(sp)
    cb44:	c4c20004 	lwc1	$f2,4(a2)
    cb48:	46028281 	sub.s	$f10,$f16,$f2
    cb4c:	46085102 	mul.s	$f4,$f10,$f8
    cb50:	44814000 	mtc1	at,$f8
    cb54:	46041180 	add.s	$f6,$f2,$f4
    cb58:	e7a60088 	swc1	$f6,136(sp)
    cb5c:	c4cc0008 	lwc1	$f12,8(a2)
    cb60:	afa60040 	sw	a2,64(sp)
    cb64:	460c9281 	sub.s	$f10,$f18,$f12
    cb68:	46085102 	mul.s	$f4,$f10,$f8
    cb6c:	46046180 	add.s	$f6,$f12,$f4
    cb70:	0c000000 	jal	0 <func_800437F0>
    cb74:	e7a6008c 	swc1	$f6,140(sp)
    cb78:	27a40068 	addiu	a0,sp,104
    cb7c:	02202825 	move	a1,s1
    cb80:	0c000000 	jal	0 <func_800437F0>
    cb84:	27a60084 	addiu	a2,sp,132
    cb88:	c7aa0068 	lwc1	$f10,104(sp)
    cb8c:	c7a80070 	lwc1	$f8,112(sp)
    cb90:	c646000c 	lwc1	$f6,12(s2)
    cb94:	87a4006c 	lh	a0,108(sp)
    cb98:	46085101 	sub.s	$f4,$f10,$f8
    cb9c:	87a50074 	lh	a1,116(sp)
    cba0:	2407000a 	li	a3,10
    cba4:	46062282 	mul.s	$f10,$f4,$f6
    cba8:	460a4100 	add.s	$f4,$f8,$f10
    cbac:	e7a40070 	swc1	$f4,112(sp)
    cbb0:	c60800e0 	lwc1	$f8,224(s0)
    cbb4:	c646000c 	lwc1	$f6,12(s2)
    cbb8:	46083282 	mul.s	$f10,$f6,$f8
    cbbc:	44065000 	mfc1	a2,$f10
    cbc0:	0c000000 	jal	0 <func_800437F0>
    cbc4:	00000000 	nop
    cbc8:	a7a20074 	sh	v0,116(sp)
    cbcc:	c60600e0 	lwc1	$f6,224(s0)
    cbd0:	c644000c 	lwc1	$f4,12(s2)
    cbd4:	87a4006e 	lh	a0,110(sp)
    cbd8:	87a50076 	lh	a1,118(sp)
    cbdc:	46062202 	mul.s	$f8,$f4,$f6
    cbe0:	2407000a 	li	a3,10
    cbe4:	44064000 	mfc1	a2,$f8
    cbe8:	0c000000 	jal	0 <func_800437F0>
    cbec:	00000000 	nop
    cbf0:	a7a20076 	sh	v0,118(sp)
    cbf4:	8fa40040 	lw	a0,64(sp)
    cbf8:	02202825 	move	a1,s1
    cbfc:	0c000000 	jal	0 <func_800437F0>
    cc00:	27a60070 	addiu	a2,sp,112
    cc04:	8fa40040 	lw	a0,64(sp)
    cc08:	0c000000 	jal	0 <func_800437F0>
    cc0c:	8fa50044 	lw	a1,68(sp)
    cc10:	c60a000c 	lwc1	$f10,12(s0)
    cc14:	e60000dc 	swc1	$f0,220(s0)
    cc18:	a600015a 	sh	zero,346(s0)
    cc1c:	02002025 	move	a0,s0
    cc20:	3c053f80 	lui	a1,0x3f80
    cc24:	0c000000 	jal	0 <func_800437F0>
    cc28:	e60a00fc 	swc1	$f10,252(s0)
    cc2c:	e6000100 	swc1	$f0,256(s0)
    cc30:	8fbf002c 	lw	ra,44(sp)
    cc34:	8fb20028 	lw	s2,40(sp)
    cc38:	8fb10024 	lw	s1,36(sp)
    cc3c:	8fb00020 	lw	s0,32(sp)
    cc40:	27bd00a8 	addiu	sp,sp,168
    cc44:	03e00008 	jr	ra
    cc48:	24020001 	li	v0,1

0000cc4c <Camera_Fixed0>:
    cc4c:	27bdffe8 	addiu	sp,sp,-24
    cc50:	afbf0014 	sw	ra,20(sp)
    cc54:	0c000000 	jal	0 <func_800437F0>
    cc58:	00000000 	nop
    cc5c:	8fbf0014 	lw	ra,20(sp)
    cc60:	27bd0018 	addiu	sp,sp,24
    cc64:	03e00008 	jr	ra
    cc68:	00000000 	nop

0000cc6c <Camera_Subj1>:
    cc6c:	27bdffe8 	addiu	sp,sp,-24
    cc70:	afbf0014 	sw	ra,20(sp)
    cc74:	0c000000 	jal	0 <func_800437F0>
    cc78:	00000000 	nop
    cc7c:	8fbf0014 	lw	ra,20(sp)
    cc80:	27bd0018 	addiu	sp,sp,24
    cc84:	03e00008 	jr	ra
    cc88:	00000000 	nop

0000cc8c <Camera_Subj2>:
    cc8c:	27bdffe8 	addiu	sp,sp,-24
    cc90:	afbf0014 	sw	ra,20(sp)
    cc94:	0c000000 	jal	0 <func_800437F0>
    cc98:	00000000 	nop
    cc9c:	8fbf0014 	lw	ra,20(sp)
    cca0:	27bd0018 	addiu	sp,sp,24
    cca4:	03e00008 	jr	ra
    cca8:	00000000 	nop

0000ccac <Camera_Subj3>:
    ccac:	27bdff50 	addiu	sp,sp,-176
    ccb0:	afb10018 	sw	s1,24(sp)
    ccb4:	afb00014 	sw	s0,20(sp)
    ccb8:	00808025 	move	s0,a0
    ccbc:	27b10060 	addiu	s1,sp,96
    ccc0:	afbf001c 	sw	ra,28(sp)
    ccc4:	8e050090 	lw	a1,144(s0)
    ccc8:	0c000000 	jal	0 <func_800437F0>
    cccc:	02202025 	move	a0,s1
    ccd0:	0c000000 	jal	0 <func_800437F0>
    ccd4:	8e040090 	lw	a0,144(s0)
    ccd8:	e7a0003c 	swc1	$f0,60(sp)
    ccdc:	8e03008c 	lw	v1,140(s0)
    cce0:	8c6e01dc 	lw	t6,476(v1)
    cce4:	15c00006 	bnez	t6,cd00 <Camera_Subj3+0x54>
    cce8:	00000000 	nop
    ccec:	860f0164 	lh	t7,356(s0)
    ccf0:	24020001 	li	v0,1
    ccf4:	35f80050 	ori	t8,t7,0x50
    ccf8:	10000189 	b	d320 <Camera_Subj3+0x674>
    ccfc:	ac7801dc 	sw	t8,476(v1)
    cd00:	0c000000 	jal	0 <func_800437F0>
    cd04:	02002025 	move	a0,s0
    cd08:	0c000000 	jal	0 <func_800437F0>
    cd0c:	02002025 	move	a0,s0
    cd10:	86190142 	lh	t9,322(s0)
    cd14:	3c0b0000 	lui	t3,0x0
    cd18:	860c0144 	lh	t4,324(s0)
    cd1c:	001950c0 	sll	t2,t9,0x3
    cd20:	016a5821 	addu	t3,t3,t2
    cd24:	8d6b0004 	lw	t3,4(t3)
    cd28:	000c68c0 	sll	t5,t4,0x3
    cd2c:	3c010000 	lui	at,0x0
    cd30:	016d7021 	addu	t6,t3,t5
    cd34:	8dc30004 	lw	v1,4(t6)
    cd38:	c4200000 	lwc1	$f0,0(at)
    cd3c:	3c010000 	lui	at,0x0
    cd40:	846f0000 	lh	t7,0(v1)
    cd44:	c4280000 	lwc1	$f8,0(at)
    cd48:	27a50098 	addiu	a1,sp,152
    cd4c:	448f2000 	mtc1	t7,$f4
    cd50:	27a4008c 	addiu	a0,sp,140
    cd54:	27a60084 	addiu	a2,sp,132
    cd58:	468021a0 	cvt.s.w	$f6,$f4
    cd5c:	c7a4003c 	lwc1	$f4,60(sp)
    cd60:	24630020 	addiu	v1,v1,32
    cd64:	46083282 	mul.s	$f10,$f6,$f8
    cd68:	00000000 	nop
    cd6c:	46045182 	mul.s	$f6,$f10,$f4
    cd70:	e6060000 	swc1	$f6,0(s0)
    cd74:	8478ffe4 	lh	t8,-28(v1)
    cd78:	44984000 	mtc1	t8,$f8
    cd7c:	00000000 	nop
    cd80:	468042a0 	cvt.s.w	$f10,$f8
    cd84:	e60a0004 	swc1	$f10,4(s0)
    cd88:	8479ffe8 	lh	t9,-24(v1)
    cd8c:	44992000 	mtc1	t9,$f4
    cd90:	00000000 	nop
    cd94:	468021a0 	cvt.s.w	$f6,$f4
    cd98:	e6060008 	swc1	$f6,8(s0)
    cd9c:	846affec 	lh	t2,-20(v1)
    cda0:	448a4000 	mtc1	t2,$f8
    cda4:	00000000 	nop
    cda8:	468042a0 	cvt.s.w	$f10,$f8
    cdac:	e60a000c 	swc1	$f10,12(s0)
    cdb0:	846cfff0 	lh	t4,-16(v1)
    cdb4:	448c2000 	mtc1	t4,$f4
    cdb8:	00000000 	nop
    cdbc:	468021a0 	cvt.s.w	$f6,$f4
    cdc0:	46003202 	mul.s	$f8,$f6,$f0
    cdc4:	e6080010 	swc1	$f8,16(s0)
    cdc8:	846bfff4 	lh	t3,-12(v1)
    cdcc:	448b5000 	mtc1	t3,$f10
    cdd0:	00000000 	nop
    cdd4:	46805120 	cvt.s.w	$f4,$f10
    cdd8:	46002182 	mul.s	$f6,$f4,$f0
    cddc:	e6060014 	swc1	$f6,20(s0)
    cde0:	846dfff8 	lh	t5,-8(v1)
    cde4:	448d4000 	mtc1	t5,$f8
    cde8:	00000000 	nop
    cdec:	468042a0 	cvt.s.w	$f10,$f8
    cdf0:	46005102 	mul.s	$f4,$f10,$f0
    cdf4:	c60a0008 	lwc1	$f10,8(s0)
    cdf8:	e6040018 	swc1	$f4,24(s0)
    cdfc:	846efffc 	lh	t6,-4(v1)
    ce00:	448e3000 	mtc1	t6,$f6
    ce04:	00000000 	nop
    ce08:	46803220 	cvt.s.w	$f8,$f6
    ce0c:	e608001c 	swc1	$f8,28(s0)
    ce10:	846f0000 	lh	t7,0(v1)
    ce14:	a60f0020 	sh	t7,32(s0)
    ce18:	87b8006e 	lh	t8,110(sp)
    ce1c:	87aa006c 	lh	t2,108(sp)
    ce20:	e7aa0084 	swc1	$f10,132(sp)
    ce24:	27198001 	addiu	t9,t8,-32767
    ce28:	a7b9008a 	sh	t9,138(sp)
    ce2c:	a7aa0088 	sh	t2,136(sp)
    ce30:	8e2b0000 	lw	t3,0(s1)
    ce34:	8e2c0004 	lw	t4,4(s1)
    ce38:	acab0000 	sw	t3,0(a1)
    ce3c:	8e2b0008 	lw	t3,8(s1)
    ce40:	acac0004 	sw	t4,4(a1)
    ce44:	acab0008 	sw	t3,8(a1)
    ce48:	c7a4009c 	lwc1	$f4,156(sp)
    ce4c:	c6060000 	lwc1	$f6,0(s0)
    ce50:	46062200 	add.s	$f8,$f4,$f6
    ce54:	0c000000 	jal	0 <func_800437F0>
    ce58:	e7a8009c 	swc1	$f8,156(sp)
    ce5c:	26110050 	addiu	s1,s0,80
    ce60:	2606005c 	addiu	a2,s0,92
    ce64:	afa60038 	sw	a2,56(sp)
    ce68:	02202825 	move	a1,s1
    ce6c:	0c000000 	jal	0 <func_800437F0>
    ce70:	27a4007c 	addiu	a0,sp,124
    ce74:	860d0020 	lh	t5,32(s0)
    ce78:	3c010000 	lui	at,0x0
    ce7c:	c7aa007c 	lwc1	$f10,124(sp)
    ce80:	ac2d0000 	sw	t5,0(at)
    ce84:	8603015e 	lh	v1,350(s0)
    ce88:	2401000a 	li	at,10
    ce8c:	50600005 	beqzl	v1,cea4 <Camera_Subj3+0x1f8>
    ce90:	26030024 	addiu	v1,s0,36
    ce94:	10610002 	beq	v1,at,cea0 <Camera_Subj3+0x1f4>
    ce98:	24010014 	li	at,20
    ce9c:	14610014 	bne	v1,at,cef0 <Camera_Subj3+0x244>
    cea0:	26030024 	addiu	v1,s0,36
    cea4:	e46a0000 	swc1	$f10,0(v1)
    cea8:	87ae0082 	lh	t6,130(sp)
    ceac:	3c180000 	lui	t8,0x0
    ceb0:	3c013f80 	lui	at,0x3f80
    ceb4:	a46e0004 	sh	t6,4(v1)
    ceb8:	87af0080 	lh	t7,128(sp)
    cebc:	44813000 	mtc1	at,$f6
    cec0:	a46f0006 	sh	t7,6(v1)
    cec4:	8f180000 	lw	t8,0(t8)
    cec8:	871901c2 	lh	t9,450(t8)
    cecc:	a4790008 	sh	t9,8(v1)
    ced0:	c6040008 	lwc1	$f4,8(s0)
    ced4:	860a015e 	lh	t2,350(s0)
    ced8:	c6080008 	lwc1	$f8,8(s0)
    cedc:	e60400dc 	swc1	$f4,220(s0)
    cee0:	254c0001 	addiu	t4,t2,1
    cee4:	a60c015e 	sh	t4,350(s0)
    cee8:	e60600c0 	swc1	$f6,192(s0)
    ceec:	e60800dc 	swc1	$f8,220(s0)
    cef0:	26030024 	addiu	v1,s0,36
    cef4:	84640008 	lh	a0,8(v1)
    cef8:	c4720000 	lwc1	$f18,0(v1)
    cefc:	84650004 	lh	a1,4(v1)
    cf00:	1080009d 	beqz	a0,d178 <Camera_Subj3+0x4cc>
    cf04:	84680006 	lh	t0,6(v1)
    cf08:	44842000 	mtc1	a0,$f4
    cf0c:	3c013f80 	lui	at,0x3f80
    cf10:	44815000 	mtc1	at,$f10
    cf14:	468021a0 	cvt.s.w	$f6,$f4
    cf18:	c6220000 	lwc1	$f2,0(s1)
    cf1c:	c7a80098 	lwc1	$f8,152(sp)
    cf20:	c62c0004 	lwc1	$f12,4(s1)
    cf24:	c62e0008 	lwc1	$f14,8(s1)
    cf28:	46024101 	sub.s	$f4,$f8,$f2
    cf2c:	3c020000 	lui	v0,0x0
    cf30:	3c073f80 	lui	a3,0x3f80
    cf34:	46065003 	div.s	$f0,$f10,$f6
    cf38:	46002282 	mul.s	$f10,$f4,$f0
    cf3c:	460a1180 	add.s	$f6,$f2,$f10
    cf40:	e6260000 	swc1	$f6,0(s1)
    cf44:	c7a8009c 	lwc1	$f8,156(sp)
    cf48:	460c4101 	sub.s	$f4,$f8,$f12
    cf4c:	46002282 	mul.s	$f10,$f4,$f0
    cf50:	460a6180 	add.s	$f6,$f12,$f10
    cf54:	e6260004 	swc1	$f6,4(s1)
    cf58:	c7a800a0 	lwc1	$f8,160(sp)
    cf5c:	460e4101 	sub.s	$f4,$f8,$f14
    cf60:	44814000 	mtc1	at,$f8
    cf64:	3c010000 	lui	at,0x0
    cf68:	46002282 	mul.s	$f10,$f4,$f0
    cf6c:	460a7180 	add.s	$f6,$f14,$f10
    cf70:	e6260008 	swc1	$f6,8(s1)
    cf74:	8c420000 	lw	v0,0(v0)
    cf78:	87ad008a 	lh	t5,138(sp)
    cf7c:	c7a60084 	lwc1	$f6,132(sp)
    cf80:	844b01c2 	lh	t3,450(v0)
    cf84:	00ad7023 	subu	t6,a1,t5
    cf88:	000e7c00 	sll	t7,t6,0x10
    cf8c:	448b2000 	mtc1	t3,$f4
    cf90:	000fc403 	sra	t8,t7,0x10
    cf94:	87aa0088 	lh	t2,136(sp)
    cf98:	468022a0 	cvt.s.w	$f10,$f4
    cf9c:	c7ae007c 	lwc1	$f14,124(sp)
    cfa0:	010a6023 	subu	t4,t0,t2
    cfa4:	000c5c00 	sll	t3,t4,0x10
    cfa8:	000b6c03 	sra	t5,t3,0x10
    cfac:	46069101 	sub.s	$f4,$f18,$f6
    cfb0:	460a4003 	div.s	$f0,$f8,$f10
    cfb4:	44984000 	mtc1	t8,$f8
    cfb8:	00000000 	nop
    cfbc:	468042a0 	cvt.s.w	$f10,$f8
    cfc0:	46002402 	mul.s	$f16,$f4,$f0
    cfc4:	00000000 	nop
    cfc8:	46005102 	mul.s	$f4,$f10,$f0
    cfcc:	448d5000 	mtc1	t5,$f10
    cfd0:	4600220d 	trunc.w.s	$f8,$f4
    cfd4:	46805120 	cvt.s.w	$f4,$f10
    cfd8:	44094000 	mfc1	t1,$f8
    cfdc:	00000000 	nop
    cfe0:	00094c00 	sll	t1,t1,0x10
    cfe4:	00094c03 	sra	t1,t1,0x10
    cfe8:	46002202 	mul.s	$f8,$f4,$f0
    cfec:	4600428d 	trunc.w.s	$f10,$f8
    cff0:	440f5000 	mfc1	t7,$f10
    cff4:	00000000 	nop
    cff8:	a7af0050 	sh	t7,80(sp)
    cffc:	84780008 	lh	t8,8(v1)
    d000:	845901cc 	lh	t9,460(v0)
    d004:	a7a90052 	sh	t1,82(sp)
    d008:	44982000 	mtc1	t8,$f4
    d00c:	afa3002c 	sw	v1,44(sp)
    d010:	46802220 	cvt.s.w	$f8,$f4
    d014:	44992000 	mtc1	t9,$f4
    d018:	46104282 	mul.s	$f10,$f8,$f16
    d01c:	46802220 	cvt.s.w	$f8,$f4
    d020:	46065300 	add.s	$f12,$f10,$f6
    d024:	c42a0000 	lwc1	$f10,0(at)
    d028:	460a4182 	mul.s	$f6,$f8,$f10
    d02c:	44063000 	mfc1	a2,$f6
    d030:	0c000000 	jal	0 <func_800437F0>
    d034:	00000000 	nop
    d038:	3c0d0000 	lui	t5,0x0
    d03c:	8dad0000 	lw	t5,0(t5)
    d040:	e7a0007c 	swc1	$f0,124(sp)
    d044:	8fa3002c 	lw	v1,44(sp)
    d048:	85ae01cc 	lh	t6,460(t5)
    d04c:	87a90052 	lh	t1,82(sp)
    d050:	846c0008 	lh	t4,8(v1)
    d054:	448e2000 	mtc1	t6,$f4
    d058:	3c010000 	lui	at,0x0
    d05c:	012c0019 	multu	t1,t4
    d060:	46802220 	cvt.s.w	$f8,$f4
    d064:	c42a0000 	lwc1	$f10,0(at)
    d068:	87aa008a 	lh	t2,138(sp)
    d06c:	87a50082 	lh	a1,130(sp)
    d070:	2407000a 	li	a3,10
    d074:	460a4182 	mul.s	$f6,$f8,$f10
    d078:	00005812 	mflo	t3
    d07c:	014b2021 	addu	a0,t2,t3
    d080:	00042400 	sll	a0,a0,0x10
    d084:	00042403 	sra	a0,a0,0x10
    d088:	44063000 	mfc1	a2,$f6
    d08c:	0c000000 	jal	0 <func_800437F0>
    d090:	00000000 	nop
    d094:	3c0a0000 	lui	t2,0x0
    d098:	8d4a0000 	lw	t2,0(t2)
    d09c:	a7a20082 	sh	v0,130(sp)
    d0a0:	8fa3002c 	lw	v1,44(sp)
    d0a4:	854b01cc 	lh	t3,460(t2)
    d0a8:	87af0050 	lh	t7,80(sp)
    d0ac:	84780008 	lh	t8,8(v1)
    d0b0:	448b2000 	mtc1	t3,$f4
    d0b4:	3c010000 	lui	at,0x0
    d0b8:	01f80019 	multu	t7,t8
    d0bc:	46802220 	cvt.s.w	$f8,$f4
    d0c0:	c42a0000 	lwc1	$f10,0(at)
    d0c4:	87ac0088 	lh	t4,136(sp)
    d0c8:	87a50080 	lh	a1,128(sp)
    d0cc:	2407000a 	li	a3,10
    d0d0:	460a4182 	mul.s	$f6,$f8,$f10
    d0d4:	0000c812 	mflo	t9
    d0d8:	01992021 	addu	a0,t4,t9
    d0dc:	00042400 	sll	a0,a0,0x10
    d0e0:	00042403 	sra	a0,a0,0x10
    d0e4:	44063000 	mfc1	a2,$f6
    d0e8:	0c000000 	jal	0 <func_800437F0>
    d0ec:	00000000 	nop
    d0f0:	26040074 	addiu	a0,s0,116
    d0f4:	a7a20080 	sh	v0,128(sp)
    d0f8:	afa40030 	sw	a0,48(sp)
    d0fc:	02202825 	move	a1,s1
    d100:	0c000000 	jal	0 <func_800437F0>
    d104:	27a6007c 	addiu	a2,sp,124
    d108:	8fa40030 	lw	a0,48(sp)
    d10c:	8fa60038 	lw	a2,56(sp)
    d110:	8fa3002c 	lw	v1,44(sp)
    d114:	8c8e0000 	lw	t6,0(a0)
    d118:	3c190001 	lui	t9,0x1
    d11c:	02202825 	move	a1,s1
    d120:	acce0000 	sw	t6,0(a2)
    d124:	8c8d0004 	lw	t5,4(a0)
    d128:	accd0004 	sw	t5,4(a2)
    d12c:	8c8e0008 	lw	t6,8(a0)
    d130:	02002025 	move	a0,s0
    d134:	acce0008 	sw	t6,8(a2)
    d138:	846f0008 	lh	t7,8(v1)
    d13c:	25f8ffff 	addiu	t8,t7,-1
    d140:	a4780008 	sh	t8,8(v1)
    d144:	8e0c008c 	lw	t4,140(s0)
    d148:	032cc821 	addu	t9,t9,t4
    d14c:	93390a39 	lbu	t9,2617(t9)
    d150:	17200005 	bnez	t9,d168 <Camera_Subj3+0x4bc>
    d154:	00000000 	nop
    d158:	0c000000 	jal	0 <func_800437F0>
    d15c:	02002025 	move	a0,s0
    d160:	10000059 	b	d2c8 <Camera_Subj3+0x61c>
    d164:	26020094 	addiu	v0,s0,148
    d168:	0c000000 	jal	0 <func_800437F0>
    d16c:	02202825 	move	a1,s1
    d170:	10000055 	b	d2c8 <Camera_Subj3+0x61c>
    d174:	26020094 	addiu	v0,s0,148
    d178:	87a4006c 	lh	a0,108(sp)
    d17c:	00042023 	negu	a0,a0
    d180:	00042400 	sll	a0,a0,0x10
    d184:	0c000000 	jal	0 <func_800437F0>
    d188:	00042403 	sra	a0,a0,0x10
    d18c:	87a4006c 	lh	a0,108(sp)
    d190:	e7a00058 	swc1	$f0,88(sp)
    d194:	00042023 	negu	a0,a0
    d198:	00042400 	sll	a0,a0,0x10
    d19c:	0c000000 	jal	0 <func_800437F0>
    d1a0:	00042403 	sra	a0,a0,0x10
    d1a4:	c6040010 	lwc1	$f4,16(s0)
    d1a8:	c7b00058 	lwc1	$f16,88(sp)
    d1ac:	87a4006e 	lh	a0,110(sp)
    d1b0:	e7a40098 	swc1	$f4,152(sp)
    d1b4:	c6080014 	lwc1	$f8,20(s0)
    d1b8:	c6060018 	lwc1	$f6,24(s0)
    d1bc:	24848001 	addiu	a0,a0,-32767
    d1c0:	46004282 	mul.s	$f10,$f8,$f0
    d1c4:	00042400 	sll	a0,a0,0x10
    d1c8:	00042403 	sra	a0,a0,0x10
    d1cc:	46103102 	mul.s	$f4,$f6,$f16
    d1d0:	46045201 	sub.s	$f8,$f10,$f4
    d1d4:	e7a8009c 	swc1	$f8,156(sp)
    d1d8:	c6060014 	lwc1	$f6,20(s0)
    d1dc:	c6040018 	lwc1	$f4,24(s0)
    d1e0:	46103282 	mul.s	$f10,$f6,$f16
    d1e4:	00000000 	nop
    d1e8:	46002202 	mul.s	$f8,$f4,$f0
    d1ec:	46085180 	add.s	$f6,$f10,$f8
    d1f0:	0c000000 	jal	0 <func_800437F0>
    d1f4:	e7a600a0 	swc1	$f6,160(sp)
    d1f8:	87a4006e 	lh	a0,110(sp)
    d1fc:	e7a00058 	swc1	$f0,88(sp)
    d200:	24848001 	addiu	a0,a0,-32767
    d204:	00042400 	sll	a0,a0,0x10
    d208:	0c000000 	jal	0 <func_800437F0>
    d20c:	00042403 	sra	a0,a0,0x10
    d210:	c7b00058 	lwc1	$f16,88(sp)
    d214:	c7a400a0 	lwc1	$f4,160(sp)
    d218:	c7a80098 	lwc1	$f8,152(sp)
    d21c:	26040074 	addiu	a0,s0,116
    d220:	46102282 	mul.s	$f10,$f4,$f16
    d224:	02202825 	move	a1,s1
    d228:	27a6007c 	addiu	a2,sp,124
    d22c:	46004182 	mul.s	$f6,$f8,$f0
    d230:	46065100 	add.s	$f4,$f10,$f6
    d234:	e6040010 	swc1	$f4,16(s0)
    d238:	c7a8009c 	lwc1	$f8,156(sp)
    d23c:	e6080014 	swc1	$f8,20(s0)
    d240:	c7aa00a0 	lwc1	$f10,160(sp)
    d244:	c7a40098 	lwc1	$f4,152(sp)
    d248:	46005182 	mul.s	$f6,$f10,$f0
    d24c:	00000000 	nop
    d250:	46102202 	mul.s	$f8,$f4,$f16
    d254:	c6040010 	lwc1	$f4,16(s0)
    d258:	46083281 	sub.s	$f10,$f6,$f8
    d25c:	e60a0018 	swc1	$f10,24(s0)
    d260:	c7a60060 	lwc1	$f6,96(sp)
    d264:	46062200 	add.s	$f8,$f4,$f6
    d268:	e6280000 	swc1	$f8,0(s1)
    d26c:	c7a40064 	lwc1	$f4,100(sp)
    d270:	c60a0014 	lwc1	$f10,20(s0)
    d274:	46045180 	add.s	$f6,$f10,$f4
    d278:	e6260004 	swc1	$f6,4(s1)
    d27c:	c7aa0068 	lwc1	$f10,104(sp)
    d280:	c6080018 	lwc1	$f8,24(s0)
    d284:	460a4100 	add.s	$f4,$f8,$f10
    d288:	e6240008 	swc1	$f4,8(s1)
    d28c:	87aa006e 	lh	t2,110(sp)
    d290:	c6060008 	lwc1	$f6,8(s0)
    d294:	87ad006c 	lh	t5,108(sp)
    d298:	254b8001 	addiu	t3,t2,-32767
    d29c:	a7ab0082 	sh	t3,130(sp)
    d2a0:	e7a6007c 	swc1	$f6,124(sp)
    d2a4:	0c000000 	jal	0 <func_800437F0>
    d2a8:	a7ad0080 	sh	t5,128(sp)
    d2ac:	c6080004 	lwc1	$f8,4(s0)
    d2b0:	8fa40038 	lw	a0,56(sp)
    d2b4:	02202825 	move	a1,s1
    d2b8:	27a6007c 	addiu	a2,sp,124
    d2bc:	0c000000 	jal	0 <func_800437F0>
    d2c0:	e7a8007c 	swc1	$f8,124(sp)
    d2c4:	26020094 	addiu	v0,s0,148
    d2c8:	c4440000 	lwc1	$f4,0(v0)
    d2cc:	c60a0050 	lwc1	$f10,80(s0)
    d2d0:	c6080054 	lwc1	$f8,84(s0)
    d2d4:	c60c001c 	lwc1	$f12,28(s0)
    d2d8:	46045181 	sub.s	$f6,$f10,$f4
    d2dc:	c60e00fc 	lwc1	$f14,252(s0)
    d2e0:	3c063e80 	lui	a2,0x3e80
    d2e4:	3c073f80 	lui	a3,0x3f80
    d2e8:	e60600e4 	swc1	$f6,228(s0)
    d2ec:	c44a0004 	lwc1	$f10,4(v0)
    d2f0:	c6060058 	lwc1	$f6,88(s0)
    d2f4:	460a4101 	sub.s	$f4,$f8,$f10
    d2f8:	e60400e8 	swc1	$f4,232(s0)
    d2fc:	c4480008 	lwc1	$f8,8(v0)
    d300:	46083281 	sub.s	$f10,$f6,$f8
    d304:	0c000000 	jal	0 <func_800437F0>
    d308:	e60a00ec 	swc1	$f10,236(s0)
    d30c:	44802000 	mtc1	zero,$f4
    d310:	e60000fc 	swc1	$f0,252(s0)
    d314:	a600015a 	sh	zero,346(s0)
    d318:	24020001 	li	v0,1
    d31c:	e6040100 	swc1	$f4,256(s0)
    d320:	8fbf001c 	lw	ra,28(sp)
    d324:	8fb00014 	lw	s0,20(sp)
    d328:	8fb10018 	lw	s1,24(sp)
    d32c:	03e00008 	jr	ra
    d330:	27bd00b0 	addiu	sp,sp,176

0000d334 <Camera_Subj4>:
    d334:	27bdff48 	addiu	sp,sp,-184
    d338:	afbf0024 	sw	ra,36(sp)
    d33c:	afb30020 	sw	s3,32(sp)
    d340:	afb2001c 	sw	s2,28(sp)
    d344:	afb10018 	sw	s1,24(sp)
    d348:	afb00014 	sw	s0,20(sp)
    d34c:	8482015e 	lh	v0,350(a0)
    d350:	00808825 	move	s1,a0
    d354:	2401000a 	li	at,10
    d358:	5040000a 	beqzl	v0,d384 <Camera_Subj4+0x50>
    d35c:	862f0142 	lh	t7,322(s1)
    d360:	10410007 	beq	v0,at,d380 <Camera_Subj4+0x4c>
    d364:	24010014 	li	at,20
    d368:	10410005 	beq	v0,at,d380 <Camera_Subj4+0x4c>
    d36c:	3c0e0000 	lui	t6,0x0
    d370:	8dce0000 	lw	t6,0(t6)
    d374:	85c20314 	lh	v0,788(t6)
    d378:	1040000f 	beqz	v0,d3b8 <Camera_Subj4+0x84>
    d37c:	00000000 	nop
    d380:	862f0142 	lh	t7,322(s1)
    d384:	3c190000 	lui	t9,0x0
    d388:	86280144 	lh	t0,324(s1)
    d38c:	000fc0c0 	sll	t8,t7,0x3
    d390:	0338c821 	addu	t9,t9,t8
    d394:	8f390004 	lw	t9,4(t9)
    d398:	000848c0 	sll	t1,t0,0x3
    d39c:	3c0c0000 	lui	t4,0x0
    d3a0:	03295021 	addu	t2,t9,t1
    d3a4:	8d430004 	lw	v1,4(t2)
    d3a8:	846b0000 	lh	t3,0(v1)
    d3ac:	a62b0000 	sh	t3,0(s1)
    d3b0:	8d8c0000 	lw	t4,0(t4)
    d3b4:	85820314 	lh	v0,788(t4)
    d3b8:	50400004 	beqzl	v0,d3cc <Camera_Subj4+0x98>
    d3bc:	8e23008c 	lw	v1,140(s1)
    d3c0:	0c000000 	jal	0 <func_800437F0>
    d3c4:	02202025 	move	a0,s1
    d3c8:	8e23008c 	lw	v1,140(s1)
    d3cc:	27a4006c 	addiu	a0,sp,108
    d3d0:	8c6d01dc 	lw	t5,476(v1)
    d3d4:	15a00008 	bnez	t5,d3f8 <Camera_Subj4+0xc4>
    d3d8:	00000000 	nop
    d3dc:	862e0164 	lh	t6,356(s1)
    d3e0:	24020001 	li	v0,1
    d3e4:	35cf0050 	ori	t7,t6,0x50
    d3e8:	ac6f01dc 	sw	t7,476(v1)
    d3ec:	c62400d8 	lwc1	$f4,216(s1)
    d3f0:	10000168 	b	d994 <Camera_Subj4+0x660>
    d3f4:	e6240028 	swc1	$f4,40(s1)
    d3f8:	0c000000 	jal	0 <func_800437F0>
    d3fc:	8e250090 	lw	a1,144(s1)
    d400:	26320050 	addiu	s2,s1,80
    d404:	2633005c 	addiu	s3,s1,92
    d408:	02603025 	move	a2,s3
    d40c:	02402825 	move	a1,s2
    d410:	0c000000 	jal	0 <func_800437F0>
    d414:	27a4005c 	addiu	a0,sp,92
    d418:	86380000 	lh	t8,0(s1)
    d41c:	3c010000 	lui	at,0x0
    d420:	02202025 	move	a0,s1
    d424:	ac380000 	sw	t8,0(at)
    d428:	8628015e 	lh	t0,350(s1)
    d42c:	55000056 	bnezl	t0,d588 <Camera_Subj4+0x254>
    d430:	26300004 	addiu	s0,s1,4
    d434:	0c000000 	jal	0 <func_800437F0>
    d438:	27a500aa 	addiu	a1,sp,170
    d43c:	26300004 	addiu	s0,s1,4
    d440:	afa200a4 	sw	v0,164(sp)
    d444:	02002025 	move	a0,s0
    d448:	0c000000 	jal	0 <func_800437F0>
    d44c:	24450006 	addiu	a1,v0,6
    d450:	97b900aa 	lhu	t9,170(sp)
    d454:	8faa00a4 	lw	t2,164(sp)
    d458:	27a40098 	addiu	a0,sp,152
    d45c:	00194880 	sll	t1,t9,0x2
    d460:	01394823 	subu	t1,t1,t9
    d464:	00094840 	sll	t1,t1,0x1
    d468:	012a2821 	addu	a1,t1,t2
    d46c:	0c000000 	jal	0 <func_800437F0>
    d470:	24a5fff4 	addiu	a1,a1,-12
    d474:	3c014120 	lui	at,0x4120
    d478:	44813000 	mtc1	at,$f6
    d47c:	240b238c 	li	t3,9100
    d480:	a7ab0068 	sh	t3,104(sp)
    d484:	27a40098 	addiu	a0,sp,152
    d488:	02002825 	move	a1,s0
    d48c:	0c000000 	jal	0 <func_800437F0>
    d490:	e7a60064 	swc1	$f6,100(sp)
    d494:	26240094 	addiu	a0,s1,148
    d498:	a7a2006a 	sh	v0,106(sp)
    d49c:	afa40034 	sw	a0,52(sp)
    d4a0:	0c000000 	jal	0 <func_800437F0>
    d4a4:	02002825 	move	a1,s0
    d4a8:	8fa40034 	lw	a0,52(sp)
    d4ac:	27a50098 	addiu	a1,sp,152
    d4b0:	0c000000 	jal	0 <func_800437F0>
    d4b4:	e7a00088 	swc1	$f0,136(sp)
    d4b8:	c7a20088 	lwc1	$f2,136(sp)
    d4bc:	c7aa0098 	lwc1	$f10,152(sp)
    d4c0:	2419000a 	li	t9,10
    d4c4:	4602003c 	c.lt.s	$f0,$f2
    d4c8:	00000000 	nop
    d4cc:	45020016 	bc1fl	d528 <Camera_Subj4+0x1f4>
    d4d0:	c6040000 	lwc1	$f4,0(s0)
    d4d4:	c6080000 	lwc1	$f8,0(s0)
    d4d8:	c7aa0098 	lwc1	$f10,152(sp)
    d4dc:	c6060004 	lwc1	$f6,4(s0)
    d4e0:	27ac0098 	addiu	t4,sp,152
    d4e4:	460a4101 	sub.s	$f4,$f8,$f10
    d4e8:	e604000c 	swc1	$f4,12(s0)
    d4ec:	c7a8009c 	lwc1	$f8,156(sp)
    d4f0:	c6040008 	lwc1	$f4,8(s0)
    d4f4:	46083281 	sub.s	$f10,$f6,$f8
    d4f8:	e60a0010 	swc1	$f10,16(s0)
    d4fc:	c7a600a0 	lwc1	$f6,160(sp)
    d500:	46062201 	sub.s	$f8,$f4,$f6
    d504:	e6080014 	swc1	$f8,20(s0)
    d508:	8d8e0000 	lw	t6,0(t4)
    d50c:	ae0e0000 	sw	t6,0(s0)
    d510:	8d8d0004 	lw	t5,4(t4)
    d514:	ae0d0004 	sw	t5,4(s0)
    d518:	8d8e0008 	lw	t6,8(t4)
    d51c:	1000000f 	b	d55c <Camera_Subj4+0x228>
    d520:	ae0e0008 	sw	t6,8(s0)
    d524:	c6040000 	lwc1	$f4,0(s0)
    d528:	46045181 	sub.s	$f6,$f10,$f4
    d52c:	c60a0004 	lwc1	$f10,4(s0)
    d530:	e606000c 	swc1	$f6,12(s0)
    d534:	c7a8009c 	lwc1	$f8,156(sp)
    d538:	460a4101 	sub.s	$f4,$f8,$f10
    d53c:	c6080008 	lwc1	$f8,8(s0)
    d540:	e6040010 	swc1	$f4,16(s0)
    d544:	c7a600a0 	lwc1	$f6,160(sp)
    d548:	46083281 	sub.s	$f10,$f6,$f8
    d54c:	e60a0014 	swc1	$f10,20(s0)
    d550:	87af006a 	lh	t7,106(sp)
    d554:	25f88001 	addiu	t8,t7,-32767
    d558:	a7b8006a 	sh	t8,106(sp)
    d55c:	87a8006a 	lh	t0,106(sp)
    d560:	44802000 	mtc1	zero,$f4
    d564:	a6190032 	sh	t9,50(s0)
    d568:	a600002c 	sh	zero,44(s0)
    d56c:	a600002e 	sh	zero,46(s0)
    d570:	a6080030 	sh	t0,48(s0)
    d574:	e6040028 	swc1	$f4,40(s0)
    d578:	8629015e 	lh	t1,350(s1)
    d57c:	252a0001 	addiu	t2,t1,1
    d580:	a62a015e 	sh	t2,350(s1)
    d584:	26300004 	addiu	s0,s1,4
    d588:	860b0032 	lh	t3,50(s0)
    d58c:	240c238c 	li	t4,9100
    d590:	27a4008c 	addiu	a0,sp,140
    d594:	11600062 	beqz	t3,d720 <Camera_Subj4+0x3ec>
    d598:	3c013f00 	lui	at,0x3f00
    d59c:	3c014120 	lui	at,0x4120
    d5a0:	44813000 	mtc1	at,$f6
    d5a4:	a7ac0068 	sh	t4,104(sp)
    d5a8:	27a5006c 	addiu	a1,sp,108
    d5ac:	e7a60064 	swc1	$f6,100(sp)
    d5b0:	860d0030 	lh	t5,48(s0)
    d5b4:	27a60064 	addiu	a2,sp,100
    d5b8:	0c000000 	jal	0 <func_800437F0>
    d5bc:	a7ad006a 	sh	t5,106(sp)
    d5c0:	860e0032 	lh	t6,50(s0)
    d5c4:	3c013f80 	lui	at,0x3f80
    d5c8:	44812000 	mtc1	at,$f4
    d5cc:	448e4000 	mtc1	t6,$f8
    d5d0:	c6400000 	lwc1	$f0,0(s2)
    d5d4:	c7a6008c 	lwc1	$f6,140(sp)
    d5d8:	468042a0 	cvt.s.w	$f10,$f8
    d5dc:	c64c0004 	lwc1	$f12,4(s2)
    d5e0:	c64e0008 	lwc1	$f14,8(s2)
    d5e4:	26270074 	addiu	a3,s1,116
    d5e8:	00e02025 	move	a0,a3
    d5ec:	46003201 	sub.s	$f8,$f6,$f0
    d5f0:	02402825 	move	a1,s2
    d5f4:	27a6005c 	addiu	a2,sp,92
    d5f8:	46045080 	add.s	$f2,$f10,$f4
    d5fc:	46024283 	div.s	$f10,$f8,$f2
    d600:	460a0100 	add.s	$f4,$f0,$f10
    d604:	e6440000 	swc1	$f4,0(s2)
    d608:	c7a60090 	lwc1	$f6,144(sp)
    d60c:	460c3201 	sub.s	$f8,$f6,$f12
    d610:	46024283 	div.s	$f10,$f8,$f2
    d614:	460a6100 	add.s	$f4,$f12,$f10
    d618:	e6440004 	swc1	$f4,4(s2)
    d61c:	c7a60094 	lwc1	$f6,148(sp)
    d620:	460e3201 	sub.s	$f8,$f6,$f14
    d624:	46024283 	div.s	$f10,$f8,$f2
    d628:	460a7100 	add.s	$f4,$f14,$f10
    d62c:	e6440008 	swc1	$f4,8(s2)
    d630:	c7a6005c 	lwc1	$f6,92(sp)
    d634:	87af007a 	lh	t7,122(sp)
    d638:	87a90062 	lh	t1,98(sp)
    d63c:	46023203 	div.s	$f8,$f6,$f2
    d640:	25f88001 	addiu	t8,t7,-32767
    d644:	00184400 	sll	t0,t8,0x10
    d648:	0008cc03 	sra	t9,t0,0x10
    d64c:	03295023 	subu	t2,t9,t1
    d650:	000a5c00 	sll	t3,t2,0x10
    d654:	000b6403 	sra	t4,t3,0x10
    d658:	87a80060 	lh	t0,96(sp)
    d65c:	87b80078 	lh	t8,120(sp)
    d660:	0308c823 	subu	t9,t8,t0
    d664:	00195400 	sll	t2,t9,0x10
    d668:	000a5c03 	sra	t3,t2,0x10
    d66c:	46083281 	sub.s	$f10,$f6,$f8
    d670:	e7aa005c 	swc1	$f10,92(sp)
    d674:	860d0032 	lh	t5,50(s0)
    d678:	018d001a 	div	zero,t4,t5
    d67c:	00007012 	mflo	t6
    d680:	012e7821 	addu	t7,t1,t6
    d684:	15a00002 	bnez	t5,d690 <Camera_Subj4+0x35c>
    d688:	00000000 	nop
    d68c:	0007000d 	break	0x7
    d690:	2401ffff 	li	at,-1
    d694:	15a10004 	bne	t5,at,d6a8 <Camera_Subj4+0x374>
    d698:	3c018000 	lui	at,0x8000
    d69c:	15810002 	bne	t4,at,d6a8 <Camera_Subj4+0x374>
    d6a0:	00000000 	nop
    d6a4:	0006000d 	break	0x6
    d6a8:	a7af0062 	sh	t7,98(sp)
    d6ac:	860c0032 	lh	t4,50(s0)
    d6b0:	afa70034 	sw	a3,52(sp)
    d6b4:	016c001a 	div	zero,t3,t4
    d6b8:	00006812 	mflo	t5
    d6bc:	010d4821 	addu	t1,t0,t5
    d6c0:	15800002 	bnez	t4,d6cc <Camera_Subj4+0x398>
    d6c4:	00000000 	nop
    d6c8:	0007000d 	break	0x7
    d6cc:	2401ffff 	li	at,-1
    d6d0:	15810004 	bne	t4,at,d6e4 <Camera_Subj4+0x3b0>
    d6d4:	3c018000 	lui	at,0x8000
    d6d8:	15610002 	bne	t3,at,d6e4 <Camera_Subj4+0x3b0>
    d6dc:	00000000 	nop
    d6e0:	0006000d 	break	0x6
    d6e4:	a7a90060 	sh	t1,96(sp)
    d6e8:	0c000000 	jal	0 <func_800437F0>
    d6ec:	00000000 	nop
    d6f0:	8fa70034 	lw	a3,52(sp)
    d6f4:	00001025 	move	v0,zero
    d6f8:	8cef0000 	lw	t7,0(a3)
    d6fc:	ae6f0000 	sw	t7,0(s3)
    d700:	8cee0004 	lw	t6,4(a3)
    d704:	ae6e0004 	sw	t6,4(s3)
    d708:	8cef0008 	lw	t7,8(a3)
    d70c:	ae6f0008 	sw	t7,8(s3)
    d710:	86180032 	lh	t8,50(s0)
    d714:	2719ffff 	addiu	t9,t8,-1
    d718:	1000009e 	b	d994 <Camera_Subj4+0x660>
    d71c:	a6190032 	sh	t9,50(s0)
    d720:	c6040024 	lwc1	$f4,36(s0)
    d724:	44813000 	mtc1	at,$f6
    d728:	27a4006c 	addiu	a0,sp,108
    d72c:	4606203c 	c.lt.s	$f4,$f6
    d730:	00000000 	nop
    d734:	45000003 	bc1f	d744 <Camera_Subj4+0x410>
    d738:	00000000 	nop
    d73c:	10000095 	b	d994 <Camera_Subj4+0x660>
    d740:	00001025 	move	v0,zero
    d744:	0c000000 	jal	0 <func_800437F0>
    d748:	8e250090 	lw	a1,144(s1)
    d74c:	26270074 	addiu	a3,s1,116
    d750:	00e03025 	move	a2,a3
    d754:	afa70034 	sw	a3,52(sp)
    d758:	02002025 	move	a0,s0
    d75c:	0c000000 	jal	0 <func_800437F0>
    d760:	27a5006c 	addiu	a1,sp,108
    d764:	8fa50034 	lw	a1,52(sp)
    d768:	c60a000c 	lwc1	$f10,12(s0)
    d76c:	3c0140a0 	lui	at,0x40a0
    d770:	c4a80000 	lwc1	$f8,0(a1)
    d774:	2408238c 	li	t0,9100
    d778:	27a40098 	addiu	a0,sp,152
    d77c:	460a4100 	add.s	$f4,$f8,$f10
    d780:	27a60064 	addiu	a2,sp,100
    d784:	e6440000 	swc1	$f4,0(s2)
    d788:	c6080010 	lwc1	$f8,16(s0)
    d78c:	c4a60004 	lwc1	$f6,4(a1)
    d790:	46083280 	add.s	$f10,$f6,$f8
    d794:	e64a0004 	swc1	$f10,4(s2)
    d798:	c6060014 	lwc1	$f6,20(s0)
    d79c:	c4a40008 	lwc1	$f4,8(a1)
    d7a0:	44815000 	mtc1	at,$f10
    d7a4:	46062200 	add.s	$f8,$f4,$f6
    d7a8:	e6480008 	swc1	$f8,8(s2)
    d7ac:	8cab0000 	lw	t3,0(a1)
    d7b0:	ae6b0000 	sw	t3,0(s3)
    d7b4:	8caa0004 	lw	t2,4(a1)
    d7b8:	ae6a0004 	sw	t2,4(s3)
    d7bc:	8cab0008 	lw	t3,8(a1)
    d7c0:	ae6b0008 	sw	t3,8(s3)
    d7c4:	860c0030 	lh	t4,48(s0)
    d7c8:	a7a80068 	sh	t0,104(sp)
    d7cc:	e7aa0064 	swc1	$f10,100(sp)
    d7d0:	0c000000 	jal	0 <func_800437F0>
    d7d4:	a7ac006a 	sh	t4,106(sp)
    d7d8:	860d002c 	lh	t5,44(s0)
    d7dc:	25a90bb8 	addiu	t1,t5,3000
    d7e0:	a609002c 	sh	t1,44(s0)
    d7e4:	0c000000 	jal	0 <func_800437F0>
    d7e8:	8604002c 	lh	a0,44(s0)
    d7ec:	c66c0000 	lwc1	$f12,0(s3)
    d7f0:	c7a40098 	lwc1	$f4,152(sp)
    d7f4:	46000406 	mov.s	$f16,$f0
    d7f8:	46000005 	abs.s	$f0,$f0
    d7fc:	460c2181 	sub.s	$f6,$f4,$f12
    d800:	8fa70034 	lw	a3,52(sp)
    d804:	c66e0004 	lwc1	$f14,4(s3)
    d808:	c6620008 	lwc1	$f2,8(s3)
    d80c:	46003202 	mul.s	$f8,$f6,$f0
    d810:	46008005 	abs.s	$f0,$f16
    d814:	46086280 	add.s	$f10,$f12,$f8
    d818:	e66a0000 	swc1	$f10,0(s3)
    d81c:	c7a4009c 	lwc1	$f4,156(sp)
    d820:	460e2181 	sub.s	$f6,$f4,$f14
    d824:	46003202 	mul.s	$f8,$f6,$f0
    d828:	46087280 	add.s	$f10,$f14,$f8
    d82c:	e66a0004 	swc1	$f10,4(s3)
    d830:	c7a400a0 	lwc1	$f4,160(sp)
    d834:	46022181 	sub.s	$f6,$f4,$f2
    d838:	46003202 	mul.s	$f8,$f6,$f0
    d83c:	46081280 	add.s	$f10,$f2,$f8
    d840:	e66a0008 	swc1	$f10,8(s3)
    d844:	c6120028 	lwc1	$f18,40(s0)
    d848:	4610903c 	c.lt.s	$f18,$f16
    d84c:	00000000 	nop
    d850:	45020013 	bc1fl	d8a0 <Camera_Subj4+0x56c>
    d854:	4612803c 	c.lt.s	$f16,$f18
    d858:	860e002e 	lh	t6,46(s0)
    d85c:	240f0001 	li	t7,1
    d860:	55c0000f 	bnezl	t6,d8a0 <Camera_Subj4+0x56c>
    d864:	4612803c 	c.lt.s	$f16,$f18
    d868:	8e220090 	lw	v0,144(s1)
    d86c:	a60f002e 	sh	t7,46(s0)
    d870:	3c064080 	lui	a2,0x4080
    d874:	9445089e 	lhu	a1,2206(v0)
    d878:	e7b00080 	swc1	$f16,128(sp)
    d87c:	afa70034 	sw	a3,52(sp)
    d880:	24a508b0 	addiu	a1,a1,2224
    d884:	30a5ffff 	andi	a1,a1,0xffff
    d888:	0c000000 	jal	0 <func_800437F0>
    d88c:	244400e4 	addiu	a0,v0,228
    d890:	8fa70034 	lw	a3,52(sp)
    d894:	10000006 	b	d8b0 <Camera_Subj4+0x57c>
    d898:	c7b00080 	lwc1	$f16,128(sp)
    d89c:	4612803c 	c.lt.s	$f16,$f18
    d8a0:	00000000 	nop
    d8a4:	45020003 	bc1fl	d8b4 <Camera_Subj4+0x580>
    d8a8:	e6100028 	swc1	$f16,40(s0)
    d8ac:	a600002e 	sh	zero,46(s0)
    d8b0:	e6100028 	swc1	$f16,40(s0)
    d8b4:	8e380090 	lw	t8,144(s1)
    d8b8:	8cea0000 	lw	t2,0(a3)
    d8bc:	3c010000 	lui	at,0x0
    d8c0:	af0a0024 	sw	t2,36(t8)
    d8c4:	8cf90004 	lw	t9,4(a3)
    d8c8:	af190028 	sw	t9,40(t8)
    d8cc:	8cea0008 	lw	t2,8(a3)
    d8d0:	af0a002c 	sw	t2,44(t8)
    d8d4:	8e2b0090 	lw	t3,144(s1)
    d8d8:	c6240104 	lwc1	$f4,260(s1)
    d8dc:	e5640028 	swc1	$f4,40(t3)
    d8e0:	8e280090 	lw	t0,144(s1)
    d8e4:	87ac006a 	lh	t4,106(sp)
    d8e8:	a50c00b6 	sh	t4,182(t0)
    d8ec:	c4280000 	lwc1	$f8,0(at)
    d8f0:	c6060024 	lwc1	$f6,36(s0)
    d8f4:	3c014370 	lui	at,0x4370
    d8f8:	44812000 	mtc1	at,$f4
    d8fc:	46083282 	mul.s	$f10,$f6,$f8
    d900:	860d0030 	lh	t5,48(s0)
    d904:	46102182 	mul.s	$f6,$f4,$f16
    d908:	448d4000 	mtc1	t5,$f8
    d90c:	00000000 	nop
    d910:	46804120 	cvt.s.w	$f4,$f8
    d914:	460a3402 	mul.s	$f16,$f6,$f10
    d918:	46102180 	add.s	$f6,$f4,$f16
    d91c:	4600328d 	trunc.w.s	$f10,$f6
    d920:	44045000 	mfc1	a0,$f10
    d924:	00000000 	nop
    d928:	00042400 	sll	a0,a0,0x10
    d92c:	00042403 	sra	a0,a0,0x10
    d930:	0c000000 	jal	0 <func_800437F0>
    d934:	a7a4005a 	sh	a0,90(sp)
    d938:	3c014120 	lui	at,0x4120
    d93c:	44814000 	mtc1	at,$f8
    d940:	c6660000 	lwc1	$f6,0(s3)
    d944:	87a4005a 	lh	a0,90(sp)
    d948:	46080102 	mul.s	$f4,$f0,$f8
    d94c:	46062280 	add.s	$f10,$f4,$f6
    d950:	e64a0000 	swc1	$f10,0(s2)
    d954:	c6680004 	lwc1	$f8,4(s3)
    d958:	0c000000 	jal	0 <func_800437F0>
    d95c:	e6480004 	swc1	$f8,4(s2)
    d960:	3c014120 	lui	at,0x4120
    d964:	44812000 	mtc1	at,$f4
    d968:	c66a0008 	lwc1	$f10,8(s3)
    d96c:	00002025 	move	a0,zero
    d970:	46040182 	mul.s	$f6,$f0,$f4
    d974:	3c063f00 	lui	a2,0x3f00
    d978:	2407000a 	li	a3,10
    d97c:	460a3200 	add.s	$f8,$f6,$f10
    d980:	e6480008 	swc1	$f8,8(s2)
    d984:	0c000000 	jal	0 <func_800437F0>
    d988:	8625015a 	lh	a1,346(s1)
    d98c:	a622015a 	sh	v0,346(s1)
    d990:	24020001 	li	v0,1
    d994:	8fbf0024 	lw	ra,36(sp)
    d998:	8fb00014 	lw	s0,20(sp)
    d99c:	8fb10018 	lw	s1,24(sp)
    d9a0:	8fb2001c 	lw	s2,28(sp)
    d9a4:	8fb30020 	lw	s3,32(sp)
    d9a8:	03e00008 	jr	ra
    d9ac:	27bd00b8 	addiu	sp,sp,184

0000d9b0 <Camera_Subj0>:
    d9b0:	27bdffe8 	addiu	sp,sp,-24
    d9b4:	afbf0014 	sw	ra,20(sp)
    d9b8:	0c000000 	jal	0 <func_800437F0>
    d9bc:	00000000 	nop
    d9c0:	8fbf0014 	lw	ra,20(sp)
    d9c4:	27bd0018 	addiu	sp,sp,24
    d9c8:	03e00008 	jr	ra
    d9cc:	00000000 	nop

0000d9d0 <Camera_Data0>:
    d9d0:	27bdffe8 	addiu	sp,sp,-24
    d9d4:	afbf0014 	sw	ra,20(sp)
    d9d8:	0c000000 	jal	0 <func_800437F0>
    d9dc:	00000000 	nop
    d9e0:	8fbf0014 	lw	ra,20(sp)
    d9e4:	27bd0018 	addiu	sp,sp,24
    d9e8:	03e00008 	jr	ra
    d9ec:	00000000 	nop

0000d9f0 <Camera_Data1>:
    d9f0:	27bdffe8 	addiu	sp,sp,-24
    d9f4:	afa40018 	sw	a0,24(sp)
    d9f8:	afbf0014 	sw	ra,20(sp)
    d9fc:	3c040000 	lui	a0,0x0
    da00:	0c000000 	jal	0 <func_800437F0>
    da04:	2484039c 	addiu	a0,a0,924
    da08:	0c000000 	jal	0 <func_800437F0>
    da0c:	8fa40018 	lw	a0,24(sp)
    da10:	8fbf0014 	lw	ra,20(sp)
    da14:	27bd0018 	addiu	sp,sp,24
    da18:	03e00008 	jr	ra
    da1c:	00000000 	nop

0000da20 <Camera_Data2>:
    da20:	27bdffe8 	addiu	sp,sp,-24
    da24:	afbf0014 	sw	ra,20(sp)
    da28:	0c000000 	jal	0 <func_800437F0>
    da2c:	00000000 	nop
    da30:	8fbf0014 	lw	ra,20(sp)
    da34:	27bd0018 	addiu	sp,sp,24
    da38:	03e00008 	jr	ra
    da3c:	00000000 	nop

0000da40 <Camera_Data3>:
    da40:	27bdffe8 	addiu	sp,sp,-24
    da44:	afbf0014 	sw	ra,20(sp)
    da48:	0c000000 	jal	0 <func_800437F0>
    da4c:	00000000 	nop
    da50:	8fbf0014 	lw	ra,20(sp)
    da54:	27bd0018 	addiu	sp,sp,24
    da58:	03e00008 	jr	ra
    da5c:	00000000 	nop

0000da60 <Camera_Data4>:
    da60:	27bdff78 	addiu	sp,sp,-136
    da64:	afb00014 	sw	s0,20(sp)
    da68:	00808025 	move	s0,a0
    da6c:	afbf001c 	sw	ra,28(sp)
    da70:	afb10018 	sw	s1,24(sp)
    da74:	0c000000 	jal	0 <func_800437F0>
    da78:	8c840090 	lw	a0,144(a0)
    da7c:	e7a00038 	swc1	$f0,56(sp)
    da80:	8602015e 	lh	v0,350(s0)
    da84:	2401000a 	li	at,10
    da88:	10400008 	beqz	v0,daac <Camera_Data4+0x4c>
    da8c:	00000000 	nop
    da90:	10410006 	beq	v0,at,daac <Camera_Data4+0x4c>
    da94:	24010014 	li	at,20
    da98:	10410004 	beq	v0,at,daac <Camera_Data4+0x4c>
    da9c:	3c0e0000 	lui	t6,0x0
    daa0:	8dce0000 	lw	t6,0(t6)
    daa4:	85c20314 	lh	v0,788(t6)
    daa8:	10400058 	beqz	v0,dc0c <Camera_Data4+0x1ac>
    daac:	3c010000 	lui	at,0x0
    dab0:	c42c0000 	lwc1	$f12,0(at)
    dab4:	3c014288 	lui	at,0x4288
    dab8:	44814000 	mtc1	at,$f8
    dabc:	c7aa0038 	lwc1	$f10,56(sp)
    dac0:	3c0b0000 	lui	t3,0x0
    dac4:	8d6b0000 	lw	t3,0(t3)
    dac8:	460a4403 	div.s	$f16,$f8,$f10
    dacc:	860f0142 	lh	t7,322(s0)
    dad0:	856c01f0 	lh	t4,496(t3)
    dad4:	3c190000 	lui	t9,0x0
    dad8:	000fc0c0 	sll	t8,t7,0x3
    dadc:	448c2000 	mtc1	t4,$f4
    dae0:	86080144 	lh	t0,324(s0)
    dae4:	0338c821 	addu	t9,t9,t8
    dae8:	468021a0 	cvt.s.w	$f6,$f4
    daec:	8f390004 	lw	t9,4(t9)
    daf0:	000848c0 	sll	t1,t0,0x3
    daf4:	3c013f80 	lui	at,0x3f80
    daf8:	03295021 	addu	t2,t9,t1
    dafc:	8d420004 	lw	v0,4(t2)
    db00:	44812000 	mtc1	at,$f4
    db04:	02002025 	move	a0,s0
    db08:	844d0000 	lh	t5,0(v0)
    db0c:	24420008 	addiu	v0,v0,8
    db10:	448d4000 	mtc1	t5,$f8
    db14:	460c3002 	mul.s	$f0,$f6,$f12
    db18:	00000000 	nop
    db1c:	46100482 	mul.s	$f18,$f0,$f16
    db20:	46002180 	add.s	$f6,$f4,$f0
    db24:	46804420 	cvt.s.w	$f16,$f8
    db28:	46123081 	sub.s	$f2,$f6,$f18
    db2c:	460c8102 	mul.s	$f4,$f16,$f12
    db30:	00000000 	nop
    db34:	460a2182 	mul.s	$f6,$f4,$f10
    db38:	00000000 	nop
    db3c:	46023482 	mul.s	$f18,$f6,$f2
    db40:	e6120000 	swc1	$f18,0(s0)
    db44:	844efffc 	lh	t6,-4(v0)
    db48:	448e4000 	mtc1	t6,$f8
    db4c:	00000000 	nop
    db50:	46804420 	cvt.s.w	$f16,$f8
    db54:	e6100004 	swc1	$f16,4(s0)
    db58:	844f0000 	lh	t7,0(v0)
    db5c:	0c000000 	jal	0 <func_800437F0>
    db60:	a60f0008 	sh	t7,8(s0)
    db64:	2611000c 	addiu	s1,s0,12
    db68:	02202025 	move	a0,s1
    db6c:	00402825 	move	a1,v0
    db70:	0c000000 	jal	0 <func_800437F0>
    db74:	afa20054 	sw	v0,84(sp)
    db78:	8fa60054 	lw	a2,84(sp)
    db7c:	2401ffff 	li	at,-1
    db80:	88c80006 	lwl	t0,6(a2)
    db84:	98c80009 	lwr	t0,9(a2)
    db88:	aa28000c 	swl	t0,12(s1)
    db8c:	ba28000f 	swr	t0,15(s1)
    db90:	94c8000a 	lhu	t0,10(a2)
    db94:	a6280010 	sh	t0,16(s1)
    db98:	84c3000c 	lh	v1,12(a2)
    db9c:	10610010 	beq	v1,at,dbe0 <Camera_Data4+0x180>
    dba0:	a623001c 	sh	v1,28(s1)
    dba4:	8622001c 	lh	v0,28(s1)
    dba8:	28410169 	slti	at,v0,361
    dbac:	50200007 	beqzl	at,dbcc <Camera_Data4+0x16c>
    dbb0:	44823000 	mtc1	v0,$f6
    dbb4:	44822000 	mtc1	v0,$f4
    dbb8:	00000000 	nop
    dbbc:	468022a0 	cvt.s.w	$f10,$f4
    dbc0:	10000007 	b	dbe0 <Camera_Data4+0x180>
    dbc4:	e60a0004 	swc1	$f10,4(s0)
    dbc8:	44823000 	mtc1	v0,$f6
    dbcc:	3c010000 	lui	at,0x0
    dbd0:	c4280000 	lwc1	$f8,0(at)
    dbd4:	468034a0 	cvt.s.w	$f18,$f6
    dbd8:	46089402 	mul.s	$f16,$f18,$f8
    dbdc:	e6100004 	swc1	$f16,4(s0)
    dbe0:	84d9000e 	lh	t9,14(a2)
    dbe4:	8e2a0000 	lw	t2,0(s1)
    dbe8:	3c0b0000 	lui	t3,0x0
    dbec:	a639001e 	sh	t9,30(s1)
    dbf0:	ae0a005c 	sw	t2,92(s0)
    dbf4:	8e290004 	lw	t1,4(s1)
    dbf8:	ae090060 	sw	t1,96(s0)
    dbfc:	8e2a0008 	lw	t2,8(s1)
    dc00:	ae0a0064 	sw	t2,100(s0)
    dc04:	8d6b0000 	lw	t3,0(t3)
    dc08:	85620314 	lh	v0,788(t3)
    dc0c:	260c005c 	addiu	t4,s0,92
    dc10:	afac0028 	sw	t4,40(sp)
    dc14:	10400003 	beqz	v0,dc24 <Camera_Data4+0x1c4>
    dc18:	2611000c 	addiu	s1,s0,12
    dc1c:	0c000000 	jal	0 <func_800437F0>
    dc20:	02002025 	move	a0,s0
    dc24:	860d0008 	lh	t5,8(s0)
    dc28:	3c010000 	lui	at,0x0
    dc2c:	02002025 	move	a0,s0
    dc30:	ac2d0000 	sw	t5,0(at)
    dc34:	8602015e 	lh	v0,350(s0)
    dc38:	14400003 	bnez	v0,dc48 <Camera_Data4+0x1e8>
    dc3c:	244e0001 	addiu	t6,v0,1
    dc40:	0c000000 	jal	0 <func_800437F0>
    dc44:	a60e015e 	sh	t6,350(s0)
    dc48:	26050050 	addiu	a1,s0,80
    dc4c:	afa50024 	sw	a1,36(sp)
    dc50:	27a40064 	addiu	a0,sp,100
    dc54:	0c000000 	jal	0 <func_800437F0>
    dc58:	26060074 	addiu	a2,s0,116
    dc5c:	02002025 	move	a0,s0
    dc60:	27a50064 	addiu	a1,sp,100
    dc64:	8e060000 	lw	a2,0(s0)
    dc68:	0c000000 	jal	0 <func_800437F0>
    dc6c:	00003825 	move	a3,zero
    dc70:	27a40074 	addiu	a0,sp,116
    dc74:	8fa50028 	lw	a1,40(sp)
    dc78:	0c000000 	jal	0 <func_800437F0>
    dc7c:	8fa60024 	lw	a2,36(sp)
    dc80:	c7a40074 	lwc1	$f4,116(sp)
    dc84:	87ae007a 	lh	t6,122(sp)
    dc88:	27a6006c 	addiu	a2,sp,108
    dc8c:	e7a4006c 	swc1	$f4,108(sp)
    dc90:	862f001e 	lh	t7,30(s1)
    dc94:	31f80001 	andi	t8,t7,0x1
    dc98:	53000012 	beqzl	t8,dce4 <Camera_Data4+0x284>
    dc9c:	a7ae0072 	sh	t6,114(sp)
    dca0:	8608012c 	lh	t0,300(s0)
    dca4:	3c010000 	lui	at,0x0
    dca8:	c4320000 	lwc1	$f18,0(at)
    dcac:	44885000 	mtc1	t0,$f10
    dcb0:	3c013f00 	lui	at,0x3f00
    dcb4:	44818000 	mtc1	at,$f16
    dcb8:	468051a0 	cvt.s.w	$f6,$f10
    dcbc:	862c000e 	lh	t4,14(s1)
    dcc0:	46123202 	mul.s	$f8,$f6,$f18
    dcc4:	46104100 	add.s	$f4,$f8,$f16
    dcc8:	4600228d 	trunc.w.s	$f10,$f4
    dccc:	440b5000 	mfc1	t3,$f10
    dcd0:	00000000 	nop
    dcd4:	016c6821 	addu	t5,t3,t4
    dcd8:	10000002 	b	dce4 <Camera_Data4+0x284>
    dcdc:	a7ad0072 	sh	t5,114(sp)
    dce0:	a7ae0072 	sh	t6,114(sp)
    dce4:	862f001e 	lh	t7,30(s1)
    dce8:	87ae0078 	lh	t6,120(sp)
    dcec:	31f80002 	andi	t8,t7,0x2
    dcf0:	53000012 	beqzl	t8,dd3c <Camera_Data4+0x2dc>
    dcf4:	a7ae0070 	sh	t6,112(sp)
    dcf8:	8608012e 	lh	t0,302(s0)
    dcfc:	3c010000 	lui	at,0x0
    dd00:	c4280000 	lwc1	$f8,0(at)
    dd04:	44883000 	mtc1	t0,$f6
    dd08:	3c013f00 	lui	at,0x3f00
    dd0c:	44812000 	mtc1	at,$f4
    dd10:	468034a0 	cvt.s.w	$f18,$f6
    dd14:	862c000c 	lh	t4,12(s1)
    dd18:	46089402 	mul.s	$f16,$f18,$f8
    dd1c:	46048280 	add.s	$f10,$f16,$f4
    dd20:	4600518d 	trunc.w.s	$f6,$f10
    dd24:	440b3000 	mfc1	t3,$f6
    dd28:	00000000 	nop
    dd2c:	016c6821 	addu	t5,t3,t4
    dd30:	10000002 	b	dd3c <Camera_Data4+0x2dc>
    dd34:	a7ad0070 	sh	t5,112(sp)
    dd38:	a7ae0070 	sh	t6,112(sp)
    dd3c:	8fa40024 	lw	a0,36(sp)
    dd40:	0c000000 	jal	0 <func_800437F0>
    dd44:	8fa50028 	lw	a1,40(sp)
    dd48:	8e180094 	lw	t8,148(s0)
    dd4c:	27a40048 	addiu	a0,sp,72
    dd50:	ac980000 	sw	t8,0(a0)
    dd54:	8e0f0098 	lw	t7,152(s0)
    dd58:	ac8f0004 	sw	t7,4(a0)
    dd5c:	8e18009c 	lw	t8,156(s0)
    dd60:	ac980008 	sw	t8,8(a0)
    dd64:	c7b2004c 	lwc1	$f18,76(sp)
    dd68:	c7a80038 	lwc1	$f8,56(sp)
    dd6c:	8fa50028 	lw	a1,40(sp)
    dd70:	46089400 	add.s	$f16,$f18,$f8
    dd74:	0c000000 	jal	0 <func_800437F0>
    dd78:	e7b0004c 	swc1	$f16,76(sp)
    dd7c:	44802000 	mtc1	zero,$f4
    dd80:	c60a0004 	lwc1	$f10,4(s0)
    dd84:	44803000 	mtc1	zero,$f6
    dd88:	e60000dc 	swc1	$f0,220(s0)
    dd8c:	a600015a 	sh	zero,346(s0)
    dd90:	e60400d8 	swc1	$f4,216(s0)
    dd94:	e60a00fc 	swc1	$f10,252(s0)
    dd98:	e6060100 	swc1	$f6,256(s0)
    dd9c:	8fbf001c 	lw	ra,28(sp)
    dda0:	8fb10018 	lw	s1,24(sp)
    dda4:	8fb00014 	lw	s0,20(sp)
    dda8:	27bd0088 	addiu	sp,sp,136
    ddac:	03e00008 	jr	ra
    ddb0:	24020001 	li	v0,1

0000ddb4 <Camera_Unique1>:
    ddb4:	27bdff50 	addiu	sp,sp,-176
    ddb8:	afb00014 	sw	s0,20(sp)
    ddbc:	00808025 	move	s0,a0
    ddc0:	afbf001c 	sw	ra,28(sp)
    ddc4:	afb10018 	sw	s1,24(sp)
    ddc8:	0c000000 	jal	0 <func_800437F0>
    ddcc:	8c840090 	lw	a0,144(a0)
    ddd0:	8602015e 	lh	v0,350(s0)
    ddd4:	10400008 	beqz	v0,ddf8 <Camera_Unique1+0x44>
    ddd8:	2401000a 	li	at,10
    dddc:	10410006 	beq	v0,at,ddf8 <Camera_Unique1+0x44>
    dde0:	24010014 	li	at,20
    dde4:	10410004 	beq	v0,at,ddf8 <Camera_Unique1+0x44>
    dde8:	3c0e0000 	lui	t6,0x0
    ddec:	8dce0000 	lw	t6,0(t6)
    ddf0:	85c30314 	lh	v1,788(t6)
    ddf4:	10600054 	beqz	v1,df48 <Camera_Unique1+0x194>
    ddf8:	3c010000 	lui	at,0x0
    ddfc:	c42e0000 	lwc1	$f14,0(at)
    de00:	3c013f80 	lui	at,0x3f80
    de04:	44814000 	mtc1	at,$f8
    de08:	3c014288 	lui	at,0x4288
    de0c:	3c0b0000 	lui	t3,0x0
    de10:	8d6b0000 	lw	t3,0(t3)
    de14:	44818000 	mtc1	at,$f16
    de18:	860f0142 	lh	t7,322(s0)
    de1c:	856c01f0 	lh	t4,496(t3)
    de20:	46008483 	div.s	$f18,$f16,$f0
    de24:	3c190000 	lui	t9,0x0
    de28:	448c2000 	mtc1	t4,$f4
    de2c:	000fc0c0 	sll	t8,t7,0x3
    de30:	86080144 	lh	t0,324(s0)
    de34:	468021a0 	cvt.s.w	$f6,$f4
    de38:	0338c821 	addu	t9,t9,t8
    de3c:	8f390004 	lw	t9,4(t9)
    de40:	000848c0 	sll	t1,t0,0x3
    de44:	3c010000 	lui	at,0x0
    de48:	03295021 	addu	t2,t9,t1
    de4c:	8d420004 	lw	v0,4(t2)
    de50:	3c0c0000 	lui	t4,0x0
    de54:	844d0000 	lh	t5,0(v0)
    de58:	24420018 	addiu	v0,v0,24
    de5c:	460e3302 	mul.s	$f12,$f6,$f14
    de60:	448d3000 	mtc1	t5,$f6
    de64:	460c4280 	add.s	$f10,$f8,$f12
    de68:	46126102 	mul.s	$f4,$f12,$f18
    de6c:	46803220 	cvt.s.w	$f8,$f6
    de70:	46045081 	sub.s	$f2,$f10,$f4
    de74:	460e4402 	mul.s	$f16,$f8,$f14
    de78:	00000000 	nop
    de7c:	46008482 	mul.s	$f18,$f16,$f0
    de80:	00000000 	nop
    de84:	46029282 	mul.s	$f10,$f18,$f2
    de88:	e60a0000 	swc1	$f10,0(s0)
    de8c:	844effec 	lh	t6,-20(v0)
    de90:	448e2000 	mtc1	t6,$f4
    de94:	00000000 	nop
    de98:	468021a0 	cvt.s.w	$f6,$f4
    de9c:	460e3202 	mul.s	$f8,$f6,$f14
    dea0:	00000000 	nop
    dea4:	46004402 	mul.s	$f16,$f8,$f0
    dea8:	00000000 	nop
    deac:	46028482 	mul.s	$f18,$f16,$f2
    deb0:	e6120004 	swc1	$f18,4(s0)
    deb4:	844ffff0 	lh	t7,-16(v0)
    deb8:	448f5000 	mtc1	t7,$f10
    debc:	00000000 	nop
    dec0:	46805120 	cvt.s.w	$f4,$f10
    dec4:	460e2182 	mul.s	$f6,$f4,$f14
    dec8:	00000000 	nop
    decc:	46003202 	mul.s	$f8,$f6,$f0
    ded0:	00000000 	nop
    ded4:	46024402 	mul.s	$f16,$f8,$f2
    ded8:	e6100008 	swc1	$f16,8(s0)
    dedc:	8458fff4 	lh	t8,-12(v0)
    dee0:	c4240000 	lwc1	$f4,0(at)
    dee4:	3c013f00 	lui	at,0x3f00
    dee8:	44989000 	mtc1	t8,$f18
    deec:	44814000 	mtc1	at,$f8
    def0:	468092a0 	cvt.s.w	$f10,$f18
    def4:	46045182 	mul.s	$f6,$f10,$f4
    def8:	46083400 	add.s	$f16,$f6,$f8
    defc:	4600848d 	trunc.w.s	$f18,$f16
    df00:	44199000 	mfc1	t9,$f18
    df04:	00000000 	nop
    df08:	a6190018 	sh	t9,24(s0)
    df0c:	8449fff8 	lh	t1,-8(v0)
    df10:	44895000 	mtc1	t1,$f10
    df14:	00000000 	nop
    df18:	46805120 	cvt.s.w	$f4,$f10
    df1c:	e6040010 	swc1	$f4,16(s0)
    df20:	844afffc 	lh	t2,-4(v0)
    df24:	448a3000 	mtc1	t2,$f6
    df28:	00000000 	nop
    df2c:	46803220 	cvt.s.w	$f8,$f6
    df30:	460e4402 	mul.s	$f16,$f8,$f14
    df34:	e6100014 	swc1	$f16,20(s0)
    df38:	844b0000 	lh	t3,0(v0)
    df3c:	a60b001a 	sh	t3,26(s0)
    df40:	8d8c0000 	lw	t4,0(t4)
    df44:	85830314 	lh	v1,788(t4)
    df48:	50600004 	beqzl	v1,df5c <Camera_Unique1+0x1a8>
    df4c:	240d0001 	li	t5,1
    df50:	0c000000 	jal	0 <func_800437F0>
    df54:	02002025 	move	a0,s0
    df58:	240d0001 	li	t5,1
    df5c:	3c010000 	lui	at,0x0
    df60:	26050050 	addiu	a1,s0,80
    df64:	2606005c 	addiu	a2,s0,92
    df68:	ac2d0000 	sw	t5,0(at)
    df6c:	afa60038 	sw	a2,56(sp)
    df70:	afa50034 	sw	a1,52(sp)
    df74:	0c000000 	jal	0 <func_800437F0>
    df78:	27a4007c 	addiu	a0,sp,124
    df7c:	26060074 	addiu	a2,s0,116
    df80:	afa60030 	sw	a2,48(sp)
    df84:	27a40074 	addiu	a0,sp,116
    df88:	0c000000 	jal	0 <func_800437F0>
    df8c:	8fa50034 	lw	a1,52(sp)
    df90:	860e001a 	lh	t6,26(s0)
    df94:	3c010000 	lui	at,0x0
    df98:	ac2e0000 	sw	t6,0(at)
    df9c:	860f015e 	lh	t7,350(s0)
    dfa0:	55e0003e 	bnezl	t7,e09c <Camera_Unique1+0x2e8>
    dfa4:	27a4005c 	addiu	a0,sp,92
    dfa8:	c61200e8 	lwc1	$f18,232(s0)
    dfac:	c60a00f4 	lwc1	$f10,244(s0)
    dfb0:	44803000 	mtc1	zero,$f6
    dfb4:	2611001c 	addiu	s1,s0,28
    dfb8:	460a9101 	sub.s	$f4,$f18,$f10
    dfbc:	27a60098 	addiu	a2,sp,152
    dfc0:	27a40084 	addiu	a0,sp,132
    dfc4:	26050094 	addiu	a1,s0,148
    dfc8:	e60400e8 	swc1	$f4,232(s0)
    dfcc:	87b8007a 	lh	t8,122(sp)
    dfd0:	e6260000 	swc1	$f6,0(s1)
    dfd4:	a6380004 	sh	t8,4(s1)
    dfd8:	8e080090 	lw	t0,144(s0)
    dfdc:	8d090908 	lw	t1,2312(t0)
    dfe0:	acc90000 	sw	t1,0(a2)
    dfe4:	8d19090c 	lw	t9,2316(t0)
    dfe8:	acd90004 	sw	t9,4(a2)
    dfec:	8d090910 	lw	t1,2320(t0)
    dff0:	0c000000 	jal	0 <func_800437F0>
    dff4:	acc90008 	sw	t1,8(a2)
    dff8:	3c0a0000 	lui	t2,0x0
    dffc:	8d4a0000 	lw	t2,0(t2)
    e000:	854b01c2 	lh	t3,450(t2)
    e004:	a62b0008 	sh	t3,8(s1)
    e008:	87ad0082 	lh	t5,130(sp)
    e00c:	87ac008a 	lh	t4,138(sp)
    e010:	018d1823 	subu	v1,t4,t5
    e014:	00031c00 	sll	v1,v1,0x10
    e018:	00031c03 	sra	v1,v1,0x10
    e01c:	04600003 	bltz	v1,e02c <Camera_Unique1+0x278>
    e020:	00031023 	negu	v0,v1
    e024:	10000001 	b	e02c <Camera_Unique1+0x278>
    e028:	00601025 	move	v0,v1
    e02c:	28413a98 	slti	at,v0,15000
    e030:	50200004 	beqzl	at,e044 <Camera_Unique1+0x290>
    e034:	862e0008 	lh	t6,8(s1)
    e038:	10000014 	b	e08c <Camera_Unique1+0x2d8>
    e03c:	a6200006 	sh	zero,6(s1)
    e040:	862e0008 	lh	t6,8(s1)
    e044:	006e001a 	div	zero,v1,t6
    e048:	15c00002 	bnez	t6,e054 <Camera_Unique1+0x2a0>
    e04c:	00000000 	nop
    e050:	0007000d 	break	0x7
    e054:	2401ffff 	li	at,-1
    e058:	15c10004 	bne	t6,at,e06c <Camera_Unique1+0x2b8>
    e05c:	3c018000 	lui	at,0x8000
    e060:	14610002 	bne	v1,at,e06c <Camera_Unique1+0x2b8>
    e064:	00000000 	nop
    e068:	0006000d 	break	0x6
    e06c:	00007812 	mflo	t7
    e070:	05e10003 	bgez	t7,e080 <Camera_Unique1+0x2cc>
    e074:	000fc083 	sra	t8,t7,0x2
    e078:	25e10003 	addiu	at,t7,3
    e07c:	0001c083 	sra	t8,at,0x2
    e080:	00184080 	sll	t0,t8,0x2
    e084:	01184023 	subu	t0,t0,t8
    e088:	a6280006 	sh	t0,6(s1)
    e08c:	8619015e 	lh	t9,350(s0)
    e090:	27290001 	addiu	t1,t9,1
    e094:	a609015e 	sh	t1,350(s0)
    e098:	27a4005c 	addiu	a0,sp,92
    e09c:	8e050090 	lw	a1,144(s0)
    e0a0:	0c000000 	jal	0 <func_800437F0>
    e0a4:	2611001c 	addiu	s1,s0,28
    e0a8:	3c0a0000 	lui	t2,0x0
    e0ac:	8d4a0000 	lw	t2,0(t2)
    e0b0:	3c0142c8 	lui	at,0x42c8
    e0b4:	44816000 	mtc1	at,$f12
    e0b8:	854b01c6 	lh	t3,454(t2)
    e0bc:	3c010000 	lui	at,0x0
    e0c0:	c4320000 	lwc1	$f18,0(at)
    e0c4:	448b4000 	mtc1	t3,$f8
    e0c8:	3c073dcc 	lui	a3,0x3dcc
    e0cc:	34e7cccd 	ori	a3,a3,0xcccd
    e0d0:	46804420 	cvt.s.w	$f16,$f8
    e0d4:	c60e00c8 	lwc1	$f14,200(s0)
    e0d8:	46128282 	mul.s	$f10,$f16,$f18
    e0dc:	44065000 	mfc1	a2,$f10
    e0e0:	0c000000 	jal	0 <func_800437F0>
    e0e4:	00000000 	nop
    e0e8:	e60000c8 	swc1	$f0,200(s0)
    e0ec:	3c0c0000 	lui	t4,0x0
    e0f0:	8d8c0000 	lw	t4,0(t4)
    e0f4:	3c0142c8 	lui	at,0x42c8
    e0f8:	44816000 	mtc1	at,$f12
    e0fc:	858d01c6 	lh	t5,454(t4)
    e100:	3c010000 	lui	at,0x0
    e104:	c4280000 	lwc1	$f8,0(at)
    e108:	448d2000 	mtc1	t5,$f4
    e10c:	3c073dcc 	lui	a3,0x3dcc
    e110:	34e7cccd 	ori	a3,a3,0xcccd
    e114:	468021a0 	cvt.s.w	$f6,$f4
    e118:	c60e00c4 	lwc1	$f14,196(s0)
    e11c:	46083402 	mul.s	$f16,$f6,$f8
    e120:	44068000 	mfc1	a2,$f16
    e124:	0c000000 	jal	0 <func_800437F0>
    e128:	00000000 	nop
    e12c:	3c010000 	lui	at,0x0
    e130:	c4220000 	lwc1	$f2,0(at)
    e134:	e60000c4 	swc1	$f0,196(s0)
    e138:	3c0e0000 	lui	t6,0x0
    e13c:	8dce0000 	lw	t6,0(t6)
    e140:	3c010000 	lui	at,0x0
    e144:	44071000 	mfc1	a3,$f2
    e148:	85cf01c6 	lh	t7,454(t6)
    e14c:	c42c0000 	lwc1	$f12,0(at)
    e150:	c60e00cc 	lwc1	$f14,204(s0)
    e154:	448f9000 	mtc1	t7,$f18
    e158:	00000000 	nop
    e15c:	468092a0 	cvt.s.w	$f10,$f18
    e160:	46025102 	mul.s	$f4,$f10,$f2
    e164:	44062000 	mfc1	a2,$f4
    e168:	0c000000 	jal	0 <func_800437F0>
    e16c:	00000000 	nop
    e170:	3c010000 	lui	at,0x0
    e174:	c42c0000 	lwc1	$f12,0(at)
    e178:	e60000cc 	swc1	$f0,204(s0)
    e17c:	3c180000 	lui	t8,0x0
    e180:	8f180000 	lw	t8,0(t8)
    e184:	44076000 	mfc1	a3,$f12
    e188:	c60e00d0 	lwc1	$f14,208(s0)
    e18c:	870801c8 	lh	t0,456(t8)
    e190:	44883000 	mtc1	t0,$f6
    e194:	00000000 	nop
    e198:	46803220 	cvt.s.w	$f8,$f6
    e19c:	460c4402 	mul.s	$f16,$f8,$f12
    e1a0:	44068000 	mfc1	a2,$f16
    e1a4:	0c000000 	jal	0 <func_800437F0>
    e1a8:	00000000 	nop
    e1ac:	e60000d0 	swc1	$f0,208(s0)
    e1b0:	3c190000 	lui	t9,0x0
    e1b4:	8f390000 	lw	t9,0(t9)
    e1b8:	3c010000 	lui	at,0x0
    e1bc:	c4240000 	lwc1	$f4,0(at)
    e1c0:	8729019c 	lh	t1,412(t9)
    e1c4:	3c063d4c 	lui	a2,0x3d4c
    e1c8:	3c073dcc 	lui	a3,0x3dcc
    e1cc:	44899000 	mtc1	t1,$f18
    e1d0:	34e7cccd 	ori	a3,a3,0xcccd
    e1d4:	34c6cccd 	ori	a2,a2,0xcccd
    e1d8:	468092a0 	cvt.s.w	$f10,$f18
    e1dc:	c60e00d4 	lwc1	$f14,212(s0)
    e1e0:	46045302 	mul.s	$f12,$f10,$f4
    e1e4:	0c000000 	jal	0 <func_800437F0>
    e1e8:	00000000 	nop
    e1ec:	e60000d4 	swc1	$f0,212(s0)
    e1f0:	02002025 	move	a0,s0
    e1f4:	27a50074 	addiu	a1,sp,116
    e1f8:	8e060000 	lw	a2,0(s0)
    e1fc:	0c000000 	jal	0 <func_800437F0>
    e200:	24070001 	li	a3,1
    e204:	27a4008c 	addiu	a0,sp,140
    e208:	8fa50034 	lw	a1,52(sp)
    e20c:	0c000000 	jal	0 <func_800437F0>
    e210:	8fa60030 	lw	a2,48(sp)
    e214:	02002025 	move	a0,s0
    e218:	8fa5008c 	lw	a1,140(sp)
    e21c:	8e060004 	lw	a2,4(s0)
    e220:	0c000000 	jal	0 <func_800437F0>
    e224:	8e070008 	lw	a3,8(s0)
    e228:	3c013f80 	lui	at,0x3f80
    e22c:	44813000 	mtc1	at,$f6
    e230:	c60800c4 	lwc1	$f8,196(s0)
    e234:	e60000dc 	swc1	$f0,220(s0)
    e238:	86040018 	lh	a0,24(s0)
    e23c:	46083403 	div.s	$f16,$f6,$f8
    e240:	87a50078 	lh	a1,120(sp)
    e244:	2407000a 	li	a3,10
    e248:	44068000 	mfc1	a2,$f16
    e24c:	0c000000 	jal	0 <func_800437F0>
    e250:	00000000 	nop
    e254:	3c040000 	lui	a0,0x0
    e258:	8c840000 	lw	a0,0(a0)
    e25c:	a7a20090 	sh	v0,144(sp)
    e260:	3c063f00 	lui	a2,0x3f00
    e264:	8483019e 	lh	v1,414(a0)
    e268:	24072710 	li	a3,10000
    e26c:	0062082a 	slt	at,v1,v0
    e270:	50200004 	beqzl	at,e284 <Camera_Unique1+0x4d0>
    e274:	87aa0090 	lh	t2,144(sp)
    e278:	a7a30090 	sh	v1,144(sp)
    e27c:	8483019e 	lh	v1,414(a0)
    e280:	87aa0090 	lh	t2,144(sp)
    e284:	00031023 	negu	v0,v1
    e288:	0142082a 	slt	at,t2,v0
    e28c:	50200003 	beqzl	at,e29c <Camera_Unique1+0x4e8>
    e290:	86220008 	lh	v0,8(s1)
    e294:	a7a20090 	sh	v0,144(sp)
    e298:	86220008 	lh	v0,8(s1)
    e29c:	50400008 	beqzl	v0,e2c0 <Camera_Unique1+0x50c>
    e2a0:	86240004 	lh	a0,4(s1)
    e2a4:	862b0004 	lh	t3,4(s1)
    e2a8:	862c0006 	lh	t4,6(s1)
    e2ac:	244effff 	addiu	t6,v0,-1
    e2b0:	a62e0008 	sh	t6,8(s1)
    e2b4:	016c6821 	addu	t5,t3,t4
    e2b8:	a62d0004 	sh	t5,4(s1)
    e2bc:	86240004 	lh	a0,4(s1)
    e2c0:	0c000000 	jal	0 <func_800437F0>
    e2c4:	87a5007a 	lh	a1,122(sp)
    e2c8:	a7a20092 	sh	v0,146(sp)
    e2cc:	8fa40030 	lw	a0,48(sp)
    e2d0:	8fa50034 	lw	a1,52(sp)
    e2d4:	0c000000 	jal	0 <func_800437F0>
    e2d8:	27a6008c 	addiu	a2,sp,140
    e2dc:	8faf0030 	lw	t7,48(sp)
    e2e0:	8fa60038 	lw	a2,56(sp)
    e2e4:	02002025 	move	a0,s0
    e2e8:	8de80000 	lw	t0,0(t7)
    e2ec:	acc80000 	sw	t0,0(a2)
    e2f0:	8df80004 	lw	t8,4(t7)
    e2f4:	acd80004 	sw	t8,4(a2)
    e2f8:	8de80008 	lw	t0,8(t7)
    e2fc:	acc80008 	sw	t0,8(a2)
    e300:	0c000000 	jal	0 <func_800437F0>
    e304:	8fa50034 	lw	a1,52(sp)
    e308:	c60c0010 	lwc1	$f12,16(s0)
    e30c:	c60e00fc 	lwc1	$f14,252(s0)
    e310:	8e0600d4 	lw	a2,212(s0)
    e314:	0c000000 	jal	0 <func_800437F0>
    e318:	3c073f80 	lui	a3,0x3f80
    e31c:	e60000fc 	swc1	$f0,252(s0)
    e320:	a600015a 	sh	zero,346(s0)
    e324:	02002025 	move	a0,s0
    e328:	0c000000 	jal	0 <func_800437F0>
    e32c:	8e050014 	lw	a1,20(s0)
    e330:	e6000100 	swc1	$f0,256(s0)
    e334:	8fbf001c 	lw	ra,28(sp)
    e338:	8fb10018 	lw	s1,24(sp)
    e33c:	8fb00014 	lw	s0,20(sp)
    e340:	27bd00b0 	addiu	sp,sp,176
    e344:	03e00008 	jr	ra
    e348:	24020001 	li	v0,1

0000e34c <Camera_Unique2>:
    e34c:	27bdff78 	addiu	sp,sp,-136
    e350:	afb0001c 	sw	s0,28(sp)
    e354:	00808025 	move	s0,a0
    e358:	afbf0024 	sw	ra,36(sp)
    e35c:	afb10020 	sw	s1,32(sp)
    e360:	0c000000 	jal	0 <func_800437F0>
    e364:	8c840090 	lw	a0,144(a0)
    e368:	26110050 	addiu	s1,s0,80
    e36c:	2606005c 	addiu	a2,s0,92
    e370:	e7a00048 	swc1	$f0,72(sp)
    e374:	afa6003c 	sw	a2,60(sp)
    e378:	02202825 	move	a1,s1
    e37c:	0c000000 	jal	0 <func_800437F0>
    e380:	27a40060 	addiu	a0,sp,96
    e384:	8603015e 	lh	v1,350(s0)
    e388:	2401000a 	li	at,10
    e38c:	10600008 	beqz	v1,e3b0 <Camera_Unique2+0x64>
    e390:	00000000 	nop
    e394:	10610006 	beq	v1,at,e3b0 <Camera_Unique2+0x64>
    e398:	24010014 	li	at,20
    e39c:	10610004 	beq	v1,at,e3b0 <Camera_Unique2+0x64>
    e3a0:	3c0e0000 	lui	t6,0x0
    e3a4:	8dce0000 	lw	t6,0(t6)
    e3a8:	85c30314 	lh	v1,788(t6)
    e3ac:	10600033 	beqz	v1,e47c <Camera_Unique2+0x130>
    e3b0:	3c0b0000 	lui	t3,0x0
    e3b4:	8d6b0000 	lw	t3,0(t3)
    e3b8:	3c010000 	lui	at,0x0
    e3bc:	c42c0000 	lwc1	$f12,0(at)
    e3c0:	856c01f0 	lh	t4,496(t3)
    e3c4:	3c014288 	lui	at,0x4288
    e3c8:	44814000 	mtc1	at,$f8
    e3cc:	448c2000 	mtc1	t4,$f4
    e3d0:	c7aa0048 	lwc1	$f10,72(sp)
    e3d4:	860f0142 	lh	t7,322(s0)
    e3d8:	468021a0 	cvt.s.w	$f6,$f4
    e3dc:	3c190000 	lui	t9,0x0
    e3e0:	000fc0c0 	sll	t8,t7,0x3
    e3e4:	86080144 	lh	t0,324(s0)
    e3e8:	0338c821 	addu	t9,t9,t8
    e3ec:	460a4103 	div.s	$f4,$f8,$f10
    e3f0:	8f390004 	lw	t9,4(t9)
    e3f4:	000848c0 	sll	t1,t0,0x3
    e3f8:	3c013f80 	lui	at,0x3f80
    e3fc:	460c3002 	mul.s	$f0,$f6,$f12
    e400:	03295021 	addu	t2,t9,t1
    e404:	8d420004 	lw	v0,4(t2)
    e408:	44814000 	mtc1	at,$f8
    e40c:	3c080000 	lui	t0,0x0
    e410:	844d0000 	lh	t5,0(v0)
    e414:	2442000c 	addiu	v0,v0,12
    e418:	46040182 	mul.s	$f6,$f0,$f4
    e41c:	46004100 	add.s	$f4,$f8,$f0
    e420:	448d4000 	mtc1	t5,$f8
    e424:	46062081 	sub.s	$f2,$f4,$f6
    e428:	46804120 	cvt.s.w	$f4,$f8
    e42c:	460c2182 	mul.s	$f6,$f4,$f12
    e430:	00000000 	nop
    e434:	460a3202 	mul.s	$f8,$f6,$f10
    e438:	00000000 	nop
    e43c:	46024102 	mul.s	$f4,$f8,$f2
    e440:	e6040000 	swc1	$f4,0(s0)
    e444:	844efff8 	lh	t6,-8(v0)
    e448:	448e3000 	mtc1	t6,$f6
    e44c:	00000000 	nop
    e450:	468032a0 	cvt.s.w	$f10,$f6
    e454:	e60a0004 	swc1	$f10,4(s0)
    e458:	844ffffc 	lh	t7,-4(v0)
    e45c:	448f4000 	mtc1	t7,$f8
    e460:	00000000 	nop
    e464:	46804120 	cvt.s.w	$f4,$f8
    e468:	e6040008 	swc1	$f4,8(s0)
    e46c:	84580000 	lh	t8,0(v0)
    e470:	a618000c 	sh	t8,12(s0)
    e474:	8d080000 	lw	t0,0(t0)
    e478:	85030314 	lh	v1,788(t0)
    e47c:	50600004 	beqzl	v1,e490 <Camera_Unique2+0x144>
    e480:	8619000c 	lh	t9,12(s0)
    e484:	0c000000 	jal	0 <func_800437F0>
    e488:	02002025 	move	a0,s0
    e48c:	8619000c 	lh	t9,12(s0)
    e490:	3c010000 	lui	at,0x0
    e494:	26020010 	addiu	v0,s0,16
    e498:	ac390000 	sw	t9,0(at)
    e49c:	8603015e 	lh	v1,350(s0)
    e4a0:	240c0001 	li	t4,1
    e4a4:	02002025 	move	a0,s0
    e4a8:	50600006 	beqzl	v1,e4c4 <Camera_Unique2+0x178>
    e4ac:	860b000c 	lh	t3,12(s0)
    e4b0:	8609000c 	lh	t1,12(s0)
    e4b4:	844a0004 	lh	t2,4(v0)
    e4b8:	112a0005 	beq	t1,t2,e4d0 <Camera_Unique2+0x184>
    e4bc:	00000000 	nop
    e4c0:	860b000c 	lh	t3,12(s0)
    e4c4:	26020010 	addiu	v0,s0,16
    e4c8:	a44b0004 	sh	t3,4(v0)
    e4cc:	8603015e 	lh	v1,350(s0)
    e4d0:	54600011 	bnezl	v1,e518 <Camera_Unique2+0x1cc>
    e4d4:	8e090094 	lw	t1,148(s0)
    e4d8:	a60c015e 	sh	t4,350(s0)
    e4dc:	0c000000 	jal	0 <func_800437F0>
    e4e0:	afa20034 	sw	v0,52(sp)
    e4e4:	3c014348 	lui	at,0x4348
    e4e8:	8fa20034 	lw	v0,52(sp)
    e4ec:	44813000 	mtc1	at,$f6
    e4f0:	00000000 	nop
    e4f4:	e4460000 	swc1	$f6,0(v0)
    e4f8:	860d000c 	lh	t5,12(s0)
    e4fc:	31ae0010 	andi	t6,t5,0x10
    e500:	51c00005 	beqzl	t6,e518 <Camera_Unique2+0x1cc>
    e504:	8e090094 	lw	t1,148(s0)
    e508:	860f014c 	lh	t7,332(s0)
    e50c:	31f8fffb 	andi	t8,t7,0xfffb
    e510:	a618014c 	sh	t8,332(s0)
    e514:	8e090094 	lw	t1,148(s0)
    e518:	27a80070 	addiu	t0,sp,112
    e51c:	3c013f80 	lui	at,0x3f80
    e520:	ad090000 	sw	t1,0(t0)
    e524:	8e190098 	lw	t9,152(s0)
    e528:	27a40068 	addiu	a0,sp,104
    e52c:	02202825 	move	a1,s1
    e530:	ad190004 	sw	t9,4(t0)
    e534:	8e09009c 	lw	t1,156(s0)
    e538:	ad090008 	sw	t1,8(t0)
    e53c:	860a000c 	lh	t2,12(s0)
    e540:	c7aa0070 	lwc1	$f10,112(sp)
    e544:	314b0001 	andi	t3,t2,0x1
    e548:	51600005 	beqzl	t3,e560 <Camera_Unique2+0x214>
    e54c:	c61000e0 	lwc1	$f16,224(s0)
    e550:	44818000 	mtc1	at,$f16
    e554:	10000003 	b	e564 <Camera_Unique2+0x218>
    e558:	c6200000 	lwc1	$f0,0(s1)
    e55c:	c61000e0 	lwc1	$f16,224(s0)
    e560:	c6200000 	lwc1	$f0,0(s1)
    e564:	3c010000 	lui	at,0x0
    e568:	c4320000 	lwc1	$f18,0(at)
    e56c:	46005201 	sub.s	$f8,$f10,$f0
    e570:	c6220004 	lwc1	$f2,4(s1)
    e574:	3c010000 	lui	at,0x0
    e578:	c62c0008 	lwc1	$f12,8(s1)
    e57c:	46104102 	mul.s	$f4,$f8,$f16
    e580:	00000000 	nop
    e584:	46122182 	mul.s	$f6,$f4,$f18
    e588:	46060280 	add.s	$f10,$f0,$f6
    e58c:	e62a0000 	swc1	$f10,0(s1)
    e590:	c7a40048 	lwc1	$f4,72(sp)
    e594:	c7a80074 	lwc1	$f8,116(sp)
    e598:	c60a0000 	lwc1	$f10,0(s0)
    e59c:	46044180 	add.s	$f6,$f8,$f4
    e5a0:	460a3200 	add.s	$f8,$f6,$f10
    e5a4:	c4260000 	lwc1	$f6,0(at)
    e5a8:	3c014000 	lui	at,0x4000
    e5ac:	46024101 	sub.s	$f4,$f8,$f2
    e5b0:	46062282 	mul.s	$f10,$f4,$f6
    e5b4:	460a1200 	add.s	$f8,$f2,$f10
    e5b8:	e6280004 	swc1	$f8,4(s1)
    e5bc:	c7a40078 	lwc1	$f4,120(sp)
    e5c0:	460c2181 	sub.s	$f6,$f4,$f12
    e5c4:	46103282 	mul.s	$f10,$f6,$f16
    e5c8:	44813000 	mtc1	at,$f6
    e5cc:	3c010000 	lui	at,0x0
    e5d0:	46125202 	mul.s	$f8,$f10,$f18
    e5d4:	46086100 	add.s	$f4,$f12,$f8
    e5d8:	e6240008 	swc1	$f4,8(s1)
    e5dc:	c44e0000 	lwc1	$f14,0(v0)
    e5e0:	c4280000 	lwc1	$f8,0(at)
    e5e4:	460e3281 	sub.s	$f10,$f6,$f14
    e5e8:	46085102 	mul.s	$f4,$f10,$f8
    e5ec:	46047180 	add.s	$f6,$f14,$f4
    e5f0:	e4460000 	swc1	$f6,0(v0)
    e5f4:	8603000c 	lh	v1,12(s0)
    e5f8:	306c0001 	andi	t4,v1,0x1
    e5fc:	11800015 	beqz	t4,e654 <Camera_Unique2+0x308>
    e600:	306d0002 	andi	t5,v1,0x2
    e604:	0c000000 	jal	0 <func_800437F0>
    e608:	26060074 	addiu	a2,s0,116
    e60c:	c60a0004 	lwc1	$f10,4(s0)
    e610:	27a40070 	addiu	a0,sp,112
    e614:	02202825 	move	a1,s1
    e618:	27a60068 	addiu	a2,sp,104
    e61c:	0c000000 	jal	0 <func_800437F0>
    e620:	e7aa0068 	swc1	$f10,104(sp)
    e624:	3c013e80 	lui	at,0x3e80
    e628:	44810000 	mtc1	at,$f0
    e62c:	3c010000 	lui	at,0x0
    e630:	c4280000 	lwc1	$f8,0(at)
    e634:	44060000 	mfc1	a2,$f0
    e638:	44070000 	mfc1	a3,$f0
    e63c:	27a40070 	addiu	a0,sp,112
    e640:	8fa5003c 	lw	a1,60(sp)
    e644:	0c000000 	jal	0 <func_800437F0>
    e648:	e7a80010 	swc1	$f8,16(sp)
    e64c:	1000002c 	b	e700 <Camera_Unique2+0x3b4>
    e650:	02002025 	move	a0,s0
    e654:	11a00029 	beqz	t5,e6fc <Camera_Unique2+0x3b0>
    e658:	02202025 	move	a0,s1
    e65c:	26050074 	addiu	a1,s0,116
    e660:	0c000000 	jal	0 <func_800437F0>
    e664:	afa50034 	sw	a1,52(sp)
    e668:	c6040004 	lwc1	$f4,4(s0)
    e66c:	8fa60034 	lw	a2,52(sp)
    e670:	3c013e80 	lui	at,0x3e80
    e674:	4604003c 	c.lt.s	$f0,$f4
    e678:	8fa40034 	lw	a0,52(sp)
    e67c:	8fa5003c 	lw	a1,60(sp)
    e680:	45020018 	bc1fl	e6e4 <Camera_Unique2+0x398>
    e684:	44810000 	mtc1	at,$f0
    e688:	27a40068 	addiu	a0,sp,104
    e68c:	0c000000 	jal	0 <func_800437F0>
    e690:	02202825 	move	a1,s1
    e694:	3c063dcc 	lui	a2,0x3dcc
    e698:	34c6cccd 	ori	a2,a2,0xcccd
    e69c:	87a4006e 	lh	a0,110(sp)
    e6a0:	87a50066 	lh	a1,102(sp)
    e6a4:	0c000000 	jal	0 <func_800437F0>
    e6a8:	2407000a 	li	a3,10
    e6ac:	a7a2006e 	sh	v0,110(sp)
    e6b0:	c6060004 	lwc1	$f6,4(s0)
    e6b4:	a7a0006c 	sh	zero,108(sp)
    e6b8:	8fa4003c 	lw	a0,60(sp)
    e6bc:	02202825 	move	a1,s1
    e6c0:	27a60068 	addiu	a2,sp,104
    e6c4:	0c000000 	jal	0 <func_800437F0>
    e6c8:	e7a60068 	swc1	$f6,104(sp)
    e6cc:	8fae0034 	lw	t6,52(sp)
    e6d0:	8faf003c 	lw	t7,60(sp)
    e6d4:	c5ca0004 	lwc1	$f10,4(t6)
    e6d8:	10000008 	b	e6fc <Camera_Unique2+0x3b0>
    e6dc:	e5ea0004 	swc1	$f10,4(t7)
    e6e0:	44810000 	mtc1	at,$f0
    e6e4:	3c010000 	lui	at,0x0
    e6e8:	c4280000 	lwc1	$f8,0(at)
    e6ec:	44060000 	mfc1	a2,$f0
    e6f0:	44070000 	mfc1	a3,$f0
    e6f4:	0c000000 	jal	0 <func_800437F0>
    e6f8:	e7a80010 	swc1	$f8,16(sp)
    e6fc:	02002025 	move	a0,s0
    e700:	02202825 	move	a1,s1
    e704:	0c000000 	jal	0 <func_800437F0>
    e708:	8fa6003c 	lw	a2,60(sp)
    e70c:	02202025 	move	a0,s1
    e710:	0c000000 	jal	0 <func_800437F0>
    e714:	8fa5003c 	lw	a1,60(sp)
    e718:	3c063e4c 	lui	a2,0x3e4c
    e71c:	3c073dcc 	lui	a3,0x3dcc
    e720:	e60000dc 	swc1	$f0,220(s0)
    e724:	a600015a 	sh	zero,346(s0)
    e728:	34e7cccd 	ori	a3,a3,0xcccd
    e72c:	34c6cccd 	ori	a2,a2,0xcccd
    e730:	c60c0008 	lwc1	$f12,8(s0)
    e734:	0c000000 	jal	0 <func_800437F0>
    e738:	c60e00fc 	lwc1	$f14,252(s0)
    e73c:	e60000fc 	swc1	$f0,252(s0)
    e740:	02002025 	move	a0,s0
    e744:	0c000000 	jal	0 <func_800437F0>
    e748:	3c053f80 	lui	a1,0x3f80
    e74c:	e6000100 	swc1	$f0,256(s0)
    e750:	8fbf0024 	lw	ra,36(sp)
    e754:	8fb10020 	lw	s1,32(sp)
    e758:	8fb0001c 	lw	s0,28(sp)
    e75c:	27bd0088 	addiu	sp,sp,136
    e760:	03e00008 	jr	ra
    e764:	24020001 	li	v0,1

0000e768 <Camera_Unique3>:
    e768:	27bdff98 	addiu	sp,sp,-104
    e76c:	afb00018 	sw	s0,24(sp)
    e770:	00808025 	move	s0,a0
    e774:	afbf001c 	sw	ra,28(sp)
    e778:	0c000000 	jal	0 <func_800437F0>
    e77c:	8c840090 	lw	a0,144(a0)
    e780:	e7a0005c 	swc1	$f0,92(sp)
    e784:	860e014c 	lh	t6,332(s0)
    e788:	8602015e 	lh	v0,350(s0)
    e78c:	2401000a 	li	at,10
    e790:	31cfffef 	andi	t7,t6,0xffef
    e794:	10400008 	beqz	v0,e7b8 <Camera_Unique3+0x50>
    e798:	a60f014c 	sh	t7,332(s0)
    e79c:	10410006 	beq	v0,at,e7b8 <Camera_Unique3+0x50>
    e7a0:	24010014 	li	at,20
    e7a4:	10410004 	beq	v0,at,e7b8 <Camera_Unique3+0x50>
    e7a8:	3c180000 	lui	t8,0x0
    e7ac:	8f180000 	lw	t8,0(t8)
    e7b0:	87030314 	lh	v1,788(t8)
    e7b4:	1060002e 	beqz	v1,e870 <Camera_Unique3+0x108>
    e7b8:	3c010000 	lui	at,0x0
    e7bc:	c42e0000 	lwc1	$f14,0(at)
    e7c0:	3c013f80 	lui	at,0x3f80
    e7c4:	44814000 	mtc1	at,$f8
    e7c8:	3c014288 	lui	at,0x4288
    e7cc:	3c0d0000 	lui	t5,0x0
    e7d0:	8dad0000 	lw	t5,0(t5)
    e7d4:	44818000 	mtc1	at,$f16
    e7d8:	86190142 	lh	t9,322(s0)
    e7dc:	85ae01f0 	lh	t6,496(t5)
    e7e0:	46008483 	div.s	$f18,$f16,$f0
    e7e4:	3c090000 	lui	t1,0x0
    e7e8:	448e2000 	mtc1	t6,$f4
    e7ec:	001940c0 	sll	t0,t9,0x3
    e7f0:	860a0144 	lh	t2,324(s0)
    e7f4:	468021a0 	cvt.s.w	$f6,$f4
    e7f8:	01284821 	addu	t1,t1,t0
    e7fc:	8d290004 	lw	t1,4(t1)
    e800:	000a58c0 	sll	t3,t2,0x3
    e804:	2604000c 	addiu	a0,s0,12
    e808:	012b6021 	addu	t4,t1,t3
    e80c:	8d820004 	lw	v0,4(t4)
    e810:	3c080000 	lui	t0,0x0
    e814:	844f0000 	lh	t7,0(v0)
    e818:	24420008 	addiu	v0,v0,8
    e81c:	460e3082 	mul.s	$f2,$f6,$f14
    e820:	448f3000 	mtc1	t7,$f6
    e824:	46024280 	add.s	$f10,$f8,$f2
    e828:	46121102 	mul.s	$f4,$f2,$f18
    e82c:	46803220 	cvt.s.w	$f8,$f6
    e830:	46045301 	sub.s	$f12,$f10,$f4
    e834:	460e4402 	mul.s	$f16,$f8,$f14
    e838:	00000000 	nop
    e83c:	46008482 	mul.s	$f18,$f16,$f0
    e840:	00000000 	nop
    e844:	460c9282 	mul.s	$f10,$f18,$f12
    e848:	e48a0000 	swc1	$f10,0(a0)
    e84c:	8458fffc 	lh	t8,-4(v0)
    e850:	44982000 	mtc1	t8,$f4
    e854:	00000000 	nop
    e858:	468021a0 	cvt.s.w	$f6,$f4
    e85c:	e4860004 	swc1	$f6,4(a0)
    e860:	84590000 	lh	t9,0(v0)
    e864:	a4990008 	sh	t9,8(a0)
    e868:	8d080000 	lw	t0,0(t0)
    e86c:	85030314 	lh	v1,788(t0)
    e870:	260a000c 	addiu	t2,s0,12
    e874:	10600003 	beqz	v1,e884 <Camera_Unique3+0x11c>
    e878:	afaa0028 	sw	t2,40(sp)
    e87c:	0c000000 	jal	0 <func_800437F0>
    e880:	02002025 	move	a0,s0
    e884:	8fa90028 	lw	t1,40(sp)
    e888:	3c010000 	lui	at,0x0
    e88c:	852b0008 	lh	t3,8(t1)
    e890:	ac2b0000 	sw	t3,0(at)
    e894:	960c015e 	lhu	t4,350(s0)
    e898:	2d810006 	sltiu	at,t4,6
    e89c:	102000d1 	beqz	at,ebe4 <L80052318+0xbc>
    e8a0:	000c6080 	sll	t4,t4,0x2
    e8a4:	3c010000 	lui	at,0x0
    e8a8:	002c0821 	addu	at,at,t4
    e8ac:	8c2c0000 	lw	t4,0(at)
    e8b0:	01800008 	jr	t4
    e8b4:	00000000 	nop

0000e8b8 <L800520A8>:
    e8b8:	0c000000 	jal	0 <func_800437F0>
    e8bc:	02002025 	move	a0,s0
    e8c0:	860d014c 	lh	t5,332(s0)
    e8c4:	c60800fc 	lwc1	$f8,252(s0)
    e8c8:	26020018 	addiu	v0,s0,24
    e8cc:	31aefff3 	andi	t6,t5,0xfff3
    e8d0:	a60e014c 	sh	t6,332(s0)
    e8d4:	e4480000 	swc1	$f8,0(v0)
    e8d8:	afa2002c 	sw	v0,44(sp)
    e8dc:	26040050 	addiu	a0,s0,80
    e8e0:	0c000000 	jal	0 <func_800437F0>
    e8e4:	2605005c 	addiu	a1,s0,92
    e8e8:	8fa2002c 	lw	v0,44(sp)
    e8ec:	e4400004 	swc1	$f0,4(v0)
    e8f0:	860f015e 	lh	t7,350(s0)
    e8f4:	25f80001 	addiu	t8,t7,1
    e8f8:	a618015e 	sh	t8,350(s0)

0000e8fc <L800520EC>:
    e8fc:	86020006 	lh	v0,6(s0)
    e900:	02002025 	move	a0,s0
    e904:	26080050 	addiu	t0,s0,80
    e908:	0002182a 	slt	v1,zero,v0
    e90c:	2459ffff 	addiu	t9,v0,-1
    e910:	146000d2 	bnez	v1,ec5c <L80052318+0x134>
    e914:	a6190006 	sh	t9,6(s0)
    e918:	260a005c 	addiu	t2,s0,92
    e91c:	afaa0024 	sw	t2,36(sp)
    e920:	0c000000 	jal	0 <func_800437F0>
    e924:	afa8002c 	sw	t0,44(sp)
    e928:	26040074 	addiu	a0,s0,116
    e92c:	afa20054 	sw	v0,84(sp)
    e930:	afa40020 	sw	a0,32(sp)
    e934:	0c000000 	jal	0 <func_800437F0>
    e938:	00402825 	move	a1,v0
    e93c:	8fa90020 	lw	t1,32(sp)
    e940:	8fa50024 	lw	a1,36(sp)
    e944:	27ad004c 	addiu	t5,sp,76
    e948:	8d2c0000 	lw	t4,0(t1)
    e94c:	3c0142c8 	lui	at,0x42c8
    e950:	44818000 	mtc1	at,$f16
    e954:	acac0000 	sw	t4,0(a1)
    e958:	8d2b0004 	lw	t3,4(t1)
    e95c:	27a60060 	addiu	a2,sp,96
    e960:	acab0004 	sw	t3,4(a1)
    e964:	8d2c0008 	lw	t4,8(t1)
    e968:	acac0008 	sw	t4,8(a1)
    e96c:	8fae0054 	lw	t6,84(sp)
    e970:	89d80006 	lwl	t8,6(t6)
    e974:	99d80009 	lwr	t8,9(t6)
    e978:	adb80000 	sw	t8,0(t5)
    e97c:	95d8000a 	lhu	t8,10(t6)
    e980:	a5b80004 	sh	t8,4(t5)
    e984:	87a8004c 	lh	t0,76(sp)
    e988:	87b9004e 	lh	t9,78(sp)
    e98c:	8fa4002c 	lw	a0,44(sp)
    e990:	00085023 	negu	t2,t0
    e994:	a7aa0064 	sh	t2,100(sp)
    e998:	e7b00060 	swc1	$f16,96(sp)
    e99c:	0c000000 	jal	0 <func_800437F0>
    e9a0:	a7b90066 	sh	t9,102(sp)
    e9a4:	8609015e 	lh	t1,350(s0)
    e9a8:	252b0001 	addiu	t3,t1,1
    e9ac:	a60b015e 	sh	t3,350(s0)

0000e9b0 <L800521A0>:
    e9b0:	8fac0028 	lw	t4,40(sp)
    e9b4:	858d0008 	lh	t5,8(t4)
    e9b8:	31ae0004 	andi	t6,t5,0x4
    e9bc:	51c0000f 	beqzl	t6,e9fc <L800521A0+0x4c>
    e9c0:	86020008 	lh	v0,8(s0)
    e9c4:	8e180094 	lw	t8,148(s0)
    e9c8:	8e0f0098 	lw	t7,152(s0)
    e9cc:	ae180050 	sw	t8,80(s0)
    e9d0:	8e18009c 	lw	t8,156(s0)
    e9d4:	ae0f0054 	sw	t7,84(s0)
    e9d8:	c6060054 	lwc1	$f6,84(s0)
    e9dc:	ae180058 	sw	t8,88(s0)
    e9e0:	8fb90028 	lw	t9,40(sp)
    e9e4:	c7b2005c 	lwc1	$f18,92(sp)
    e9e8:	c72a0000 	lwc1	$f10,0(t9)
    e9ec:	460a9100 	add.s	$f4,$f18,$f10
    e9f0:	46043200 	add.s	$f8,$f6,$f4
    e9f4:	e6080054 	swc1	$f8,84(s0)
    e9f8:	86020008 	lh	v0,8(s0)
    e9fc:	0002182a 	slt	v1,zero,v0
    ea00:	2448ffff 	addiu	t0,v0,-1
    ea04:	14600095 	bnez	v1,ec5c <L80052318+0x134>
    ea08:	a6080008 	sh	t0,8(s0)
    ea0c:	860a015e 	lh	t2,350(s0)
    ea10:	25490001 	addiu	t1,t2,1
    ea14:	a609015e 	sh	t1,350(s0)

0000ea18 <L80052208>:
    ea18:	860b014c 	lh	t3,332(s0)
    ea1c:	356c0410 	ori	t4,t3,0x410
    ea20:	a60c014c 	sh	t4,332(s0)
    ea24:	860d014c 	lh	t5,332(s0)
    ea28:	31ae0008 	andi	t6,t5,0x8
    ea2c:	51c0008c 	beqzl	t6,ec60 <L80052318+0x138>
    ea30:	8fbf001c 	lw	ra,28(sp)
    ea34:	860f015e 	lh	t7,350(s0)
    ea38:	25f80001 	addiu	t8,t7,1
    ea3c:	a618015e 	sh	t8,350(s0)

0000ea40 <L80052230>:
    ea40:	8fb90028 	lw	t9,40(sp)
    ea44:	240e0005 	li	t6,5
    ea48:	3c010000 	lui	at,0x0
    ea4c:	87280008 	lh	t0,8(t9)
    ea50:	310a0002 	andi	t2,t0,0x2
    ea54:	5140000e 	beqzl	t2,ea90 <L80052230+0x50>
    ea58:	a60e000a 	sh	t6,10(s0)
    ea5c:	8609014c 	lh	t1,332(s0)
    ea60:	02002025 	move	a0,s0
    ea64:	24050018 	li	a1,24
    ea68:	352b0004 	ori	t3,t1,0x4
    ea6c:	a60b014c 	sh	t3,332(s0)
    ea70:	860c014c 	lh	t4,332(s0)
    ea74:	24060002 	li	a2,2
    ea78:	318dfff7 	andi	t5,t4,0xfff7
    ea7c:	0c000000 	jal	0 <func_800437F0>
    ea80:	a60d014c 	sh	t5,332(s0)
    ea84:	10000076 	b	ec60 <L80052318+0x138>
    ea88:	8fbf001c 	lw	ra,28(sp)
    ea8c:	a60e000a 	sh	t6,10(s0)
    ea90:	c4300000 	lwc1	$f16,0(at)
    ea94:	c61200d8 	lwc1	$f18,216(s0)
    ea98:	3c0f0000 	lui	t7,0x0
    ea9c:	4612803c 	c.lt.s	$f16,$f18
    eaa0:	00000000 	nop
    eaa4:	4503001e 	bc1tl	eb20 <L80052230+0xe0>
    eaa8:	860e015e 	lh	t6,350(s0)
    eaac:	8def0000 	lw	t7,0(t7)
    eab0:	3c01ffff 	lui	at,0xffff
    eab4:	34217fff 	ori	at,at,0x7fff
    eab8:	95e20020 	lhu	v0,32(t7)
    eabc:	0041c027 	nor	t8,v0,at
    eac0:	13000016 	beqz	t8,eb1c <L80052230+0xdc>
    eac4:	2401bfff 	li	at,-16385
    eac8:	0041c827 	nor	t9,v0,at
    eacc:	13200013 	beqz	t9,eb1c <L80052230+0xdc>
    ead0:	2401fffd 	li	at,-3
    ead4:	00414027 	nor	t0,v0,at
    ead8:	11000010 	beqz	t0,eb1c <L80052230+0xdc>
    eadc:	2401fffb 	li	at,-5
    eae0:	00415027 	nor	t2,v0,at
    eae4:	1140000d 	beqz	t2,eb1c <L80052230+0xdc>
    eae8:	2401fff7 	li	at,-9
    eaec:	00414827 	nor	t1,v0,at
    eaf0:	1120000a 	beqz	t1,eb1c <L80052230+0xdc>
    eaf4:	2401fffe 	li	at,-2
    eaf8:	00415827 	nor	t3,v0,at
    eafc:	11600007 	beqz	t3,eb1c <L80052230+0xdc>
    eb00:	2401ffef 	li	at,-17
    eb04:	00416027 	nor	t4,v0,at
    eb08:	11800004 	beqz	t4,eb1c <L80052230+0xdc>
    eb0c:	2401dfff 	li	at,-8193
    eb10:	00416827 	nor	t5,v0,at
    eb14:	55a00052 	bnezl	t5,ec60 <L80052318+0x138>
    eb18:	8fbf001c 	lw	ra,28(sp)
    eb1c:	860e015e 	lh	t6,350(s0)
    eb20:	25cf0001 	addiu	t7,t6,1
    eb24:	a60f015e 	sh	t7,350(s0)

0000eb28 <L80052318>:
    eb28:	c60c0018 	lwc1	$f12,24(s0)
    eb2c:	c60e00fc 	lwc1	$f14,252(s0)
    eb30:	3c063ecc 	lui	a2,0x3ecc
    eb34:	3c073dcc 	lui	a3,0x3dcc
    eb38:	26180050 	addiu	t8,s0,80
    eb3c:	2619005c 	addiu	t9,s0,92
    eb40:	26080074 	addiu	t0,s0,116
    eb44:	afa80020 	sw	t0,32(sp)
    eb48:	afb90024 	sw	t9,36(sp)
    eb4c:	afb8002c 	sw	t8,44(sp)
    eb50:	34e7cccd 	ori	a3,a3,0xcccd
    eb54:	0c000000 	jal	0 <func_800437F0>
    eb58:	34c6cccd 	ori	a2,a2,0xcccd
    eb5c:	e60000fc 	swc1	$f0,252(s0)
    eb60:	8fa60024 	lw	a2,36(sp)
    eb64:	8fa5002c 	lw	a1,44(sp)
    eb68:	0c000000 	jal	0 <func_800437F0>
    eb6c:	27a40060 	addiu	a0,sp,96
    eb70:	3c0142c8 	lui	at,0x42c8
    eb74:	44816000 	mtc1	at,$f12
    eb78:	3c063ecc 	lui	a2,0x3ecc
    eb7c:	3c073dcc 	lui	a3,0x3dcc
    eb80:	34e7cccd 	ori	a3,a3,0xcccd
    eb84:	34c6cccd 	ori	a2,a2,0xcccd
    eb88:	0c000000 	jal	0 <func_800437F0>
    eb8c:	c7ae0060 	lwc1	$f14,96(sp)
    eb90:	e7a00060 	swc1	$f0,96(sp)
    eb94:	8fa40020 	lw	a0,32(sp)
    eb98:	8fa5002c 	lw	a1,44(sp)
    eb9c:	0c000000 	jal	0 <func_800437F0>
    eba0:	27a60060 	addiu	a2,sp,96
    eba4:	8fa90020 	lw	t1,32(sp)
    eba8:	8faa0024 	lw	t2,36(sp)
    ebac:	8d2c0000 	lw	t4,0(t1)
    ebb0:	ad4c0000 	sw	t4,0(t2)
    ebb4:	8d2b0004 	lw	t3,4(t1)
    ebb8:	ad4b0004 	sw	t3,4(t2)
    ebbc:	8d2c0008 	lw	t4,8(t1)
    ebc0:	ad4c0008 	sw	t4,8(t2)
    ebc4:	8604000a 	lh	a0,10(s0)
    ebc8:	0004182a 	slt	v1,zero,a0
    ebcc:	248dffff 	addiu	t5,a0,-1
    ebd0:	14600022 	bnez	v1,ec5c <L80052318+0x134>
    ebd4:	a60d000a 	sh	t5,10(s0)
    ebd8:	860e015e 	lh	t6,350(s0)
    ebdc:	25cf0001 	addiu	t7,t6,1
    ebe0:	a60f015e 	sh	t7,350(s0)
    ebe4:	8618014c 	lh	t8,332(s0)
    ebe8:	86050154 	lh	a1,340(s0)
    ebec:	26030094 	addiu	v1,s0,148
    ebf0:	37190004 	ori	t9,t8,0x4
    ebf4:	a619014c 	sh	t9,332(s0)
    ebf8:	8608014c 	lh	t0,332(s0)
    ebfc:	02002025 	move	a0,s0
    ec00:	24060002 	li	a2,2
    ec04:	310afff7 	andi	t2,t0,0xfff7
    ec08:	a60a014c 	sh	t2,332(s0)
    ec0c:	8fa90028 	lw	t1,40(sp)
    ec10:	c52a0004 	lwc1	$f10,4(t1)
    ec14:	e60a00fc 	swc1	$f10,252(s0)
    ec18:	0c000000 	jal	0 <func_800437F0>
    ec1c:	afa3002c 	sw	v1,44(sp)
    ec20:	44803000 	mtc1	zero,$f6
    ec24:	8fa3002c 	lw	v1,44(sp)
    ec28:	c6040050 	lwc1	$f4,80(s0)
    ec2c:	e6060100 	swc1	$f6,256(s0)
    ec30:	c4680000 	lwc1	$f8,0(v1)
    ec34:	c6120054 	lwc1	$f18,84(s0)
    ec38:	46082401 	sub.s	$f16,$f4,$f8
    ec3c:	c6040058 	lwc1	$f4,88(s0)
    ec40:	e61000e4 	swc1	$f16,228(s0)
    ec44:	c46a0004 	lwc1	$f10,4(v1)
    ec48:	460a9181 	sub.s	$f6,$f18,$f10
    ec4c:	e60600e8 	swc1	$f6,232(s0)
    ec50:	c4680008 	lwc1	$f8,8(v1)
    ec54:	46082401 	sub.s	$f16,$f4,$f8
    ec58:	e61000ec 	swc1	$f16,236(s0)
    ec5c:	8fbf001c 	lw	ra,28(sp)
    ec60:	8fb00018 	lw	s0,24(sp)
    ec64:	27bd0068 	addiu	sp,sp,104
    ec68:	03e00008 	jr	ra
    ec6c:	24020001 	li	v0,1

0000ec70 <Camera_Unique0>:
    ec70:	27bdff78 	addiu	sp,sp,-136
    ec74:	afb00018 	sw	s0,24(sp)
    ec78:	00808025 	move	s0,a0
    ec7c:	afbf001c 	sw	ra,28(sp)
    ec80:	0c000000 	jal	0 <func_800437F0>
    ec84:	8c840090 	lw	a0,144(a0)
    ec88:	8e0e0090 	lw	t6,144(s0)
    ec8c:	46000086 	mov.s	$f2,$f0
    ec90:	2401000a 	li	at,10
    ec94:	afae007c 	sw	t6,124(sp)
    ec98:	8602015e 	lh	v0,350(s0)
    ec9c:	02002025 	move	a0,s0
    eca0:	5040000a 	beqzl	v0,eccc <Camera_Unique0+0x5c>
    eca4:	86180142 	lh	t8,322(s0)
    eca8:	10410007 	beq	v0,at,ecc8 <Camera_Unique0+0x58>
    ecac:	24010014 	li	at,20
    ecb0:	10410005 	beq	v0,at,ecc8 <Camera_Unique0+0x58>
    ecb4:	3c0f0000 	lui	t7,0x0
    ecb8:	8def0000 	lw	t7,0(t7)
    ecbc:	85e20314 	lh	v0,788(t7)
    ecc0:	50400010 	beqzl	v0,ed04 <Camera_Unique0+0x94>
    ecc4:	260f000c 	addiu	t7,s0,12
    ecc8:	86180142 	lh	t8,322(s0)
    eccc:	3c090000 	lui	t1,0x0
    ecd0:	860a0144 	lh	t2,324(s0)
    ecd4:	0018c8c0 	sll	t9,t8,0x3
    ecd8:	01394821 	addu	t1,t1,t9
    ecdc:	8d290004 	lw	t1,4(t1)
    ece0:	000a58c0 	sll	t3,t2,0x3
    ece4:	3c0e0000 	lui	t6,0x0
    ece8:	012b6021 	addu	t4,t1,t3
    ecec:	8d830004 	lw	v1,4(t4)
    ecf0:	846d0000 	lh	t5,0(v1)
    ecf4:	a60d000c 	sh	t5,12(s0)
    ecf8:	8dce0000 	lw	t6,0(t6)
    ecfc:	85c20314 	lh	v0,788(t6)
    ed00:	260f000c 	addiu	t7,s0,12
    ed04:	10400004 	beqz	v0,ed18 <Camera_Unique0+0xa8>
    ed08:	afaf0030 	sw	t7,48(sp)
    ed0c:	0c000000 	jal	0 <func_800437F0>
    ed10:	e7a20084 	swc1	$f2,132(sp)
    ed14:	c7a20084 	lwc1	$f2,132(sp)
    ed18:	26060094 	addiu	a2,s0,148
    ed1c:	8cca0000 	lw	t2,0(a2)
    ed20:	27b80070 	addiu	t8,sp,112
    ed24:	3c010000 	lui	at,0x0
    ed28:	af0a0000 	sw	t2,0(t8)
    ed2c:	8cd90004 	lw	t9,4(a2)
    ed30:	02002025 	move	a0,s0
    ed34:	af190004 	sw	t9,4(t8)
    ed38:	8cca0008 	lw	t2,8(a2)
    ed3c:	af0a0008 	sw	t2,8(t8)
    ed40:	c7a40074 	lwc1	$f4,116(sp)
    ed44:	8fa90030 	lw	t1,48(sp)
    ed48:	46022180 	add.s	$f6,$f4,$f2
    ed4c:	e7a60074 	swc1	$f6,116(sp)
    ed50:	852b0000 	lh	t3,0(t1)
    ed54:	ac2b0000 	sw	t3,0(at)
    ed58:	860c015e 	lh	t4,350(s0)
    ed5c:	55800064 	bnezl	t4,eef0 <Camera_Unique0+0x280>
    ed60:	8fab007c 	lw	t3,124(sp)
    ed64:	0c000000 	jal	0 <func_800437F0>
    ed68:	afa60034 	sw	a2,52(sp)
    ed6c:	860d014c 	lh	t5,332(s0)
    ed70:	02002025 	move	a0,s0
    ed74:	31aefffb 	andi	t6,t5,0xfffb
    ed78:	0c000000 	jal	0 <func_800437F0>
    ed7c:	a60e014c 	sh	t6,332(s0)
    ed80:	26070010 	addiu	a3,s0,16
    ed84:	24e40010 	addiu	a0,a3,16
    ed88:	afa40024 	sw	a0,36(sp)
    ed8c:	afa7002c 	sw	a3,44(sp)
    ed90:	00402825 	move	a1,v0
    ed94:	0c000000 	jal	0 <func_800437F0>
    ed98:	afa20064 	sw	v0,100(sp)
    ed9c:	8faf0024 	lw	t7,36(sp)
    eda0:	8fa60064 	lw	a2,100(sp)
    eda4:	27a40038 	addiu	a0,sp,56
    eda8:	8df90000 	lw	t9,0(t7)
    edac:	8fa7002c 	lw	a3,44(sp)
    edb0:	2605005c 	addiu	a1,s0,92
    edb4:	ac990000 	sw	t9,0(a0)
    edb8:	8df80004 	lw	t8,4(t7)
    edbc:	8c890000 	lw	t1,0(a0)
    edc0:	27ad005c 	addiu	t5,sp,92
    edc4:	ac980004 	sw	t8,4(a0)
    edc8:	8df90008 	lw	t9,8(t7)
    edcc:	2408ffff 	li	t0,-1
    edd0:	ac990008 	sw	t9,8(a0)
    edd4:	ae090074 	sw	t1,116(s0)
    edd8:	8c8a0004 	lw	t2,4(a0)
    eddc:	ae0a0078 	sw	t2,120(s0)
    ede0:	8c890008 	lw	t1,8(a0)
    ede4:	ae09007c 	sw	t1,124(s0)
    ede8:	8c8c0000 	lw	t4,0(a0)
    edec:	acac0000 	sw	t4,0(a1)
    edf0:	8c8b0004 	lw	t3,4(a0)
    edf4:	acab0004 	sw	t3,4(a1)
    edf8:	8c8c0008 	lw	t4,8(a0)
    edfc:	27a40070 	addiu	a0,sp,112
    ee00:	acac0008 	sw	t4,8(a1)
    ee04:	88cf0006 	lwl	t7,6(a2)
    ee08:	98cf0009 	lwr	t7,9(a2)
    ee0c:	adaf0000 	sw	t7,0(t5)
    ee10:	94cf000a 	lhu	t7,10(a2)
    ee14:	a5af0004 	sh	t7,4(t5)
    ee18:	84c3000c 	lh	v1,12(a2)
    ee1c:	1068000e 	beq	v1,t0,ee58 <Camera_Unique0+0x1e8>
    ee20:	28610169 	slti	at,v1,361
    ee24:	50200007 	beqzl	at,ee44 <Camera_Unique0+0x1d4>
    ee28:	44838000 	mtc1	v1,$f16
    ee2c:	44834000 	mtc1	v1,$f8
    ee30:	00000000 	nop
    ee34:	468042a0 	cvt.s.w	$f10,$f8
    ee38:	10000007 	b	ee58 <Camera_Unique0+0x1e8>
    ee3c:	e60a00fc 	swc1	$f10,252(s0)
    ee40:	44838000 	mtc1	v1,$f16
    ee44:	3c010000 	lui	at,0x0
    ee48:	c4240000 	lwc1	$f4,0(at)
    ee4c:	468084a0 	cvt.s.w	$f18,$f16
    ee50:	46049182 	mul.s	$f6,$f18,$f4
    ee54:	e60600fc 	swc1	$f6,252(s0)
    ee58:	84d8000e 	lh	t8,14(a2)
    ee5c:	a4f8000c 	sh	t8,12(a3)
    ee60:	84f9000c 	lh	t9,12(a3)
    ee64:	15190005 	bne	t0,t9,ee7c <Camera_Unique0+0x20c>
    ee68:	00000000 	nop
    ee6c:	860a0006 	lh	t2,6(s0)
    ee70:	86090008 	lh	t1,8(s0)
    ee74:	01495821 	addu	t3,t2,t1
    ee78:	a4eb000c 	sh	t3,12(a3)
    ee7c:	0c000000 	jal	0 <func_800437F0>
    ee80:	afa7002c 	sw	a3,44(sp)
    ee84:	87ad005c 	lh	t5,92(sp)
    ee88:	8fa7002c 	lw	a3,44(sp)
    ee8c:	87ac005e 	lh	t4,94(sp)
    ee90:	000d7023 	negu	t6,t5
    ee94:	e7a00068 	swc1	$f0,104(sp)
    ee98:	a7ae006c 	sh	t6,108(sp)
    ee9c:	27a50068 	addiu	a1,sp,104
    eea0:	24e4001c 	addiu	a0,a3,28
    eea4:	0c000000 	jal	0 <func_800437F0>
    eea8:	a7ac006e 	sh	t4,110(sp)
    eeac:	8fa40024 	lw	a0,36(sp)
    eeb0:	8fa50034 	lw	a1,52(sp)
    eeb4:	0c000000 	jal	0 <func_800437F0>
    eeb8:	26060050 	addiu	a2,s0,80
    eebc:	8faf0034 	lw	t7,52(sp)
    eec0:	8fa7002c 	lw	a3,44(sp)
    eec4:	8df90000 	lw	t9,0(t7)
    eec8:	acf90000 	sw	t9,0(a3)
    eecc:	8df80004 	lw	t8,4(t7)
    eed0:	acf80004 	sw	t8,4(a3)
    eed4:	8df90008 	lw	t9,8(t7)
    eed8:	acf90008 	sw	t9,8(a3)
    eedc:	860a015e 	lh	t2,350(s0)
    eee0:	25490001 	addiu	t1,t2,1
    eee4:	a609015e 	sh	t1,350(s0)
    eee8:	8fa60034 	lw	a2,52(sp)
    eeec:	8fab007c 	lw	t3,124(sp)
    eef0:	3c032000 	lui	v1,0x2000
    eef4:	26070010 	addiu	a3,s0,16
    eef8:	8d6c067c 	lw	t4,1660(t3)
    eefc:	000c6880 	sll	t5,t4,0x2
    ef00:	05a30008 	bgezl	t5,ef24 <Camera_Unique0+0x2b4>
    ef04:	8fb80030 	lw	t8,48(sp)
    ef08:	8ccf0000 	lw	t7,0(a2)
    ef0c:	acef0000 	sw	t7,0(a3)
    ef10:	8cce0004 	lw	t6,4(a2)
    ef14:	acee0004 	sw	t6,4(a3)
    ef18:	8ccf0008 	lw	t7,8(a2)
    ef1c:	acef0008 	sw	t7,8(a3)
    ef20:	8fb80030 	lw	t8,48(sp)
    ef24:	87190000 	lh	t9,0(t8)
    ef28:	332a0001 	andi	t2,t9,0x1
    ef2c:	51400055 	beqzl	t2,f084 <Camera_Unique0+0x414>
    ef30:	84e2000c 	lh	v0,12(a3)
    ef34:	84e2000c 	lh	v0,12(a3)
    ef38:	8fad007c 	lw	t5,124(sp)
    ef3c:	18400009 	blez	v0,ef64 <Camera_Unique0+0x2f4>
    ef40:	2449ffff 	addiu	t1,v0,-1
    ef44:	a4e9000c 	sh	t1,12(a3)
    ef48:	8ccc0000 	lw	t4,0(a2)
    ef4c:	acec0000 	sw	t4,0(a3)
    ef50:	8ccb0004 	lw	t3,4(a2)
    ef54:	aceb0004 	sw	t3,4(a3)
    ef58:	8ccc0008 	lw	t4,8(a2)
    ef5c:	1000009d 	b	f1d4 <Camera_Unique0+0x564>
    ef60:	acec0008 	sw	t4,8(a3)
    ef64:	8dae067c 	lw	t6,1660(t5)
    ef68:	00c02025 	move	a0,a2
    ef6c:	00e02825 	move	a1,a3
    ef70:	01c37824 	and	t7,t6,v1
    ef74:	55e00098 	bnezl	t7,f1d8 <Camera_Unique0+0x568>
    ef78:	8fbf001c 	lw	ra,28(sp)
    ef7c:	0c000000 	jal	0 <func_800437F0>
    ef80:	afa60034 	sw	a2,52(sp)
    ef84:	3c014120 	lui	at,0x4120
    ef88:	44814000 	mtc1	at,$f8
    ef8c:	3c180000 	lui	t8,0x0
    ef90:	26040050 	addiu	a0,s0,80
    ef94:	4600403e 	c.le.s	$f8,$f0
    ef98:	00000000 	nop
    ef9c:	4501001d 	bc1t	f014 <Camera_Unique0+0x3a4>
    efa0:	00000000 	nop
    efa4:	8f180000 	lw	t8,0(t8)
    efa8:	3c01ffff 	lui	at,0xffff
    efac:	34217fff 	ori	at,at,0x7fff
    efb0:	97020020 	lhu	v0,32(t8)
    efb4:	0041c827 	nor	t9,v0,at
    efb8:	13200016 	beqz	t9,f014 <Camera_Unique0+0x3a4>
    efbc:	2401bfff 	li	at,-16385
    efc0:	00415027 	nor	t2,v0,at
    efc4:	11400013 	beqz	t2,f014 <Camera_Unique0+0x3a4>
    efc8:	2401fffd 	li	at,-3
    efcc:	00414827 	nor	t1,v0,at
    efd0:	11200010 	beqz	t1,f014 <Camera_Unique0+0x3a4>
    efd4:	2401fffb 	li	at,-5
    efd8:	00415827 	nor	t3,v0,at
    efdc:	1160000d 	beqz	t3,f014 <Camera_Unique0+0x3a4>
    efe0:	2401fff7 	li	at,-9
    efe4:	00416027 	nor	t4,v0,at
    efe8:	1180000a 	beqz	t4,f014 <Camera_Unique0+0x3a4>
    efec:	2401fffe 	li	at,-2
    eff0:	00416827 	nor	t5,v0,at
    eff4:	11a00007 	beqz	t5,f014 <Camera_Unique0+0x3a4>
    eff8:	2401ffef 	li	at,-17
    effc:	00417027 	nor	t6,v0,at
    f000:	11c00004 	beqz	t6,f014 <Camera_Unique0+0x3a4>
    f004:	2401dfff 	li	at,-8193
    f008:	00417827 	nor	t7,v0,at
    f00c:	55e00072 	bnezl	t7,f1d8 <Camera_Unique0+0x568>
    f010:	8fbf001c 	lw	ra,28(sp)
    f014:	0c000000 	jal	0 <func_800437F0>
    f018:	2605005c 	addiu	a1,s0,92
    f01c:	8fa20034 	lw	v0,52(sp)
    f020:	e60000dc 	swc1	$f0,220(s0)
    f024:	c60a0050 	lwc1	$f10,80(s0)
    f028:	c4500000 	lwc1	$f16,0(v0)
    f02c:	c6040054 	lwc1	$f4,84(s0)
    f030:	8618014c 	lh	t8,332(s0)
    f034:	46105481 	sub.s	$f18,$f10,$f16
    f038:	c60a0058 	lwc1	$f10,88(s0)
    f03c:	37190004 	ori	t9,t8,0x4
    f040:	02002025 	move	a0,s0
    f044:	e61200e4 	swc1	$f18,228(s0)
    f048:	c4460004 	lwc1	$f6,4(v0)
    f04c:	86050154 	lh	a1,340(s0)
    f050:	24060002 	li	a2,2
    f054:	46062201 	sub.s	$f8,$f4,$f6
    f058:	44802000 	mtc1	zero,$f4
    f05c:	e60800e8 	swc1	$f8,232(s0)
    f060:	c4500008 	lwc1	$f16,8(v0)
    f064:	a619014c 	sh	t9,332(s0)
    f068:	e6040100 	swc1	$f4,256(s0)
    f06c:	46105481 	sub.s	$f18,$f10,$f16
    f070:	0c000000 	jal	0 <func_800437F0>
    f074:	e61200ec 	swc1	$f18,236(s0)
    f078:	10000057 	b	f1d8 <Camera_Unique0+0x568>
    f07c:	8fbf001c 	lw	ra,28(sp)
    f080:	84e2000c 	lh	v0,12(a3)
    f084:	18400008 	blez	v0,f0a8 <Camera_Unique0+0x438>
    f088:	244affff 	addiu	t2,v0,-1
    f08c:	a4ea000c 	sh	t2,12(a3)
    f090:	84e9000c 	lh	t1,12(a3)
    f094:	3c010000 	lui	at,0x0
    f098:	5520000a 	bnezl	t1,f0c4 <Camera_Unique0+0x454>
    f09c:	8fad007c 	lw	t5,124(sp)
    f0a0:	10000007 	b	f0c0 <Camera_Unique0+0x450>
    f0a4:	ac200000 	sw	zero,0(at)
    f0a8:	8ccc0000 	lw	t4,0(a2)
    f0ac:	acec0000 	sw	t4,0(a3)
    f0b0:	8ccb0004 	lw	t3,4(a2)
    f0b4:	aceb0004 	sw	t3,4(a3)
    f0b8:	8ccc0008 	lw	t4,8(a2)
    f0bc:	acec0008 	sw	t4,8(a3)
    f0c0:	8fad007c 	lw	t5,124(sp)
    f0c4:	3c010000 	lui	at,0x0
    f0c8:	8dae067c 	lw	t6,1660(t5)
    f0cc:	01c37824 	and	t7,t6,v1
    f0d0:	55e00041 	bnezl	t7,f1d8 <Camera_Unique0+0x568>
    f0d4:	8fbf001c 	lw	ra,28(sp)
    f0d8:	c4260000 	lwc1	$f6,0(at)
    f0dc:	c60800d8 	lwc1	$f8,216(s0)
    f0e0:	3c180000 	lui	t8,0x0
    f0e4:	26040050 	addiu	a0,s0,80
    f0e8:	4608303c 	c.lt.s	$f6,$f8
    f0ec:	2605005c 	addiu	a1,s0,92
    f0f0:	4501001d 	bc1t	f168 <Camera_Unique0+0x4f8>
    f0f4:	00000000 	nop
    f0f8:	8f180000 	lw	t8,0(t8)
    f0fc:	3c01ffff 	lui	at,0xffff
    f100:	34217fff 	ori	at,at,0x7fff
    f104:	97020020 	lhu	v0,32(t8)
    f108:	0041c827 	nor	t9,v0,at
    f10c:	13200016 	beqz	t9,f168 <Camera_Unique0+0x4f8>
    f110:	2401bfff 	li	at,-16385
    f114:	00415027 	nor	t2,v0,at
    f118:	11400013 	beqz	t2,f168 <Camera_Unique0+0x4f8>
    f11c:	2401fffd 	li	at,-3
    f120:	00414827 	nor	t1,v0,at
    f124:	11200010 	beqz	t1,f168 <Camera_Unique0+0x4f8>
    f128:	2401fffb 	li	at,-5
    f12c:	00415827 	nor	t3,v0,at
    f130:	1160000d 	beqz	t3,f168 <Camera_Unique0+0x4f8>
    f134:	2401fff7 	li	at,-9
    f138:	00416027 	nor	t4,v0,at
    f13c:	1180000a 	beqz	t4,f168 <Camera_Unique0+0x4f8>
    f140:	2401fffe 	li	at,-2
    f144:	00416827 	nor	t5,v0,at
    f148:	11a00007 	beqz	t5,f168 <Camera_Unique0+0x4f8>
    f14c:	2401ffef 	li	at,-17
    f150:	00417027 	nor	t6,v0,at
    f154:	11c00004 	beqz	t6,f168 <Camera_Unique0+0x4f8>
    f158:	2401dfff 	li	at,-8193
    f15c:	00417827 	nor	t7,v0,at
    f160:	55e0001d 	bnezl	t7,f1d8 <Camera_Unique0+0x568>
    f164:	8fbf001c 	lw	ra,28(sp)
    f168:	0c000000 	jal	0 <func_800437F0>
    f16c:	afa60034 	sw	a2,52(sp)
    f170:	e60000dc 	swc1	$f0,220(s0)
    f174:	8fb80034 	lw	t8,52(sp)
    f178:	c60a0050 	lwc1	$f10,80(s0)
    f17c:	c6040054 	lwc1	$f4,84(s0)
    f180:	c7100000 	lwc1	$f16,0(t8)
    f184:	02002025 	move	a0,s0
    f188:	86050154 	lh	a1,340(s0)
    f18c:	46105481 	sub.s	$f18,$f10,$f16
    f190:	c60a0058 	lwc1	$f10,88(s0)
    f194:	24060002 	li	a2,2
    f198:	e61200e4 	swc1	$f18,228(s0)
    f19c:	8fb90034 	lw	t9,52(sp)
    f1a0:	c7260004 	lwc1	$f6,4(t9)
    f1a4:	46062201 	sub.s	$f8,$f4,$f6
    f1a8:	44802000 	mtc1	zero,$f4
    f1ac:	e60800e8 	swc1	$f8,232(s0)
    f1b0:	8faa0034 	lw	t2,52(sp)
    f1b4:	c5500008 	lwc1	$f16,8(t2)
    f1b8:	e6040100 	swc1	$f4,256(s0)
    f1bc:	46105481 	sub.s	$f18,$f10,$f16
    f1c0:	0c000000 	jal	0 <func_800437F0>
    f1c4:	e61200ec 	swc1	$f18,236(s0)
    f1c8:	8609014c 	lh	t1,332(s0)
    f1cc:	352b0004 	ori	t3,t1,0x4
    f1d0:	a60b014c 	sh	t3,332(s0)
    f1d4:	8fbf001c 	lw	ra,28(sp)
    f1d8:	8fb00018 	lw	s0,24(sp)
    f1dc:	27bd0088 	addiu	sp,sp,136
    f1e0:	03e00008 	jr	ra
    f1e4:	24020001 	li	v0,1

0000f1e8 <Camera_Unique4>:
    f1e8:	27bdffe8 	addiu	sp,sp,-24
    f1ec:	afbf0014 	sw	ra,20(sp)
    f1f0:	0c000000 	jal	0 <func_800437F0>
    f1f4:	00000000 	nop
    f1f8:	8fbf0014 	lw	ra,20(sp)
    f1fc:	27bd0018 	addiu	sp,sp,24
    f200:	03e00008 	jr	ra
    f204:	00000000 	nop

0000f208 <Camera_Unique5>:
    f208:	27bdffe8 	addiu	sp,sp,-24
    f20c:	afbf0014 	sw	ra,20(sp)
    f210:	0c000000 	jal	0 <func_800437F0>
    f214:	00000000 	nop
    f218:	8fbf0014 	lw	ra,20(sp)
    f21c:	27bd0018 	addiu	sp,sp,24
    f220:	03e00008 	jr	ra
    f224:	00000000 	nop

0000f228 <Camera_Unique6>:
    f228:	27bdffc0 	addiu	sp,sp,-64
    f22c:	afbf001c 	sw	ra,28(sp)
    f230:	afb00018 	sw	s0,24(sp)
    f234:	8482015e 	lh	v0,350(a0)
    f238:	00808025 	move	s0,a0
    f23c:	2401000a 	li	at,10
    f240:	5040000a 	beqzl	v0,f26c <Camera_Unique6+0x44>
    f244:	860f0142 	lh	t7,322(s0)
    f248:	10410007 	beq	v0,at,f268 <Camera_Unique6+0x40>
    f24c:	24010014 	li	at,20
    f250:	10410005 	beq	v0,at,f268 <Camera_Unique6+0x40>
    f254:	3c0e0000 	lui	t6,0x0
    f258:	8dce0000 	lw	t6,0(t6)
    f25c:	85c20314 	lh	v0,788(t6)
    f260:	1040000f 	beqz	v0,f2a0 <Camera_Unique6+0x78>
    f264:	00000000 	nop
    f268:	860f0142 	lh	t7,322(s0)
    f26c:	3c190000 	lui	t9,0x0
    f270:	86080144 	lh	t0,324(s0)
    f274:	000fc0c0 	sll	t8,t7,0x3
    f278:	0338c821 	addu	t9,t9,t8
    f27c:	8f390004 	lw	t9,4(t9)
    f280:	000848c0 	sll	t1,t0,0x3
    f284:	3c0c0000 	lui	t4,0x0
    f288:	03295021 	addu	t2,t9,t1
    f28c:	8d430004 	lw	v1,4(t2)
    f290:	846b0000 	lh	t3,0(v1)
    f294:	a60b0000 	sh	t3,0(s0)
    f298:	8d8c0000 	lw	t4,0(t4)
    f29c:	85820314 	lh	v0,788(t4)
    f2a0:	50400004 	beqzl	v0,f2b4 <Camera_Unique6+0x8c>
    f2a4:	860d0000 	lh	t5,0(s0)
    f2a8:	0c000000 	jal	0 <func_800437F0>
    f2ac:	02002025 	move	a0,s0
    f2b0:	860d0000 	lh	t5,0(s0)
    f2b4:	3c010000 	lui	at,0x0
    f2b8:	02002025 	move	a0,s0
    f2bc:	ac2d0000 	sw	t5,0(at)
    f2c0:	8602015e 	lh	v0,350(s0)
    f2c4:	14400003 	bnez	v0,f2d4 <Camera_Unique6+0xac>
    f2c8:	244e0001 	addiu	t6,v0,1
    f2cc:	0c000000 	jal	0 <func_800437F0>
    f2d0:	a60e015e 	sh	t6,350(s0)
    f2d4:	8e040090 	lw	a0,144(s0)
    f2d8:	2605005c 	addiu	a1,s0,92
    f2dc:	10800020 	beqz	a0,f360 <Camera_Unique6+0x138>
    f2e0:	00000000 	nop
    f2e4:	0c000000 	jal	0 <func_800437F0>
    f2e8:	00000000 	nop
    f2ec:	26020094 	addiu	v0,s0,148
    f2f0:	8c580000 	lw	t8,0(v0)
    f2f4:	27a4002c 	addiu	a0,sp,44
    f2f8:	2605005c 	addiu	a1,s0,92
    f2fc:	ac980000 	sw	t8,0(a0)
    f300:	8c4f0004 	lw	t7,4(v0)
    f304:	ac8f0004 	sw	t7,4(a0)
    f308:	8c580008 	lw	t8,8(v0)
    f30c:	ac980008 	sw	t8,8(a0)
    f310:	c7a40030 	lwc1	$f4,48(sp)
    f314:	afa20020 	sw	v0,32(sp)
    f318:	46002180 	add.s	$f6,$f4,$f0
    f31c:	0c000000 	jal	0 <func_800437F0>
    f320:	e7a60030 	swc1	$f6,48(sp)
    f324:	8fa20020 	lw	v0,32(sp)
    f328:	e60000dc 	swc1	$f0,220(s0)
    f32c:	c6080050 	lwc1	$f8,80(s0)
    f330:	c44a0000 	lwc1	$f10,0(v0)
    f334:	c6120054 	lwc1	$f18,84(s0)
    f338:	460a4401 	sub.s	$f16,$f8,$f10
    f33c:	c6080058 	lwc1	$f8,88(s0)
    f340:	e61000e4 	swc1	$f16,228(s0)
    f344:	c4440004 	lwc1	$f4,4(v0)
    f348:	46049181 	sub.s	$f6,$f18,$f4
    f34c:	e60600e8 	swc1	$f6,232(s0)
    f350:	c44a0008 	lwc1	$f10,8(v0)
    f354:	460a4401 	sub.s	$f16,$f8,$f10
    f358:	10000004 	b	f36c <Camera_Unique6+0x144>
    f35c:	e61000ec 	swc1	$f16,236(s0)
    f360:	0c000000 	jal	0 <func_800437F0>
    f364:	26040050 	addiu	a0,s0,80
    f368:	e60000dc 	swc1	$f0,220(s0)
    f36c:	86080000 	lh	t0,0(s0)
    f370:	31190001 	andi	t9,t0,0x1
    f374:	53200006 	beqzl	t9,f390 <Camera_Unique6+0x168>
    f378:	8fbf001c 	lw	ra,28(sp)
    f37c:	86020160 	lh	v0,352(s0)
    f380:	18400002 	blez	v0,f38c <Camera_Unique6+0x164>
    f384:	2449ffff 	addiu	t1,v0,-1
    f388:	a6090160 	sh	t1,352(s0)
    f38c:	8fbf001c 	lw	ra,28(sp)
    f390:	8fb00018 	lw	s0,24(sp)
    f394:	27bd0040 	addiu	sp,sp,64
    f398:	03e00008 	jr	ra
    f39c:	24020001 	li	v0,1

0000f3a0 <Camera_Unique7>:
    f3a0:	27bdffa0 	addiu	sp,sp,-96
    f3a4:	afbf001c 	sw	ra,28(sp)
    f3a8:	afb00018 	sw	s0,24(sp)
    f3ac:	8482015e 	lh	v0,350(a0)
    f3b0:	00808025 	move	s0,a0
    f3b4:	10400009 	beqz	v0,f3dc <Camera_Unique7+0x3c>
    f3b8:	2401000a 	li	at,10
    f3bc:	10410007 	beq	v0,at,f3dc <Camera_Unique7+0x3c>
    f3c0:	24010014 	li	at,20
    f3c4:	10410005 	beq	v0,at,f3dc <Camera_Unique7+0x3c>
    f3c8:	3c0e0000 	lui	t6,0x0
    f3cc:	8dce0000 	lw	t6,0(t6)
    f3d0:	85c30314 	lh	v1,788(t6)
    f3d4:	10600015 	beqz	v1,f42c <Camera_Unique7+0x8c>
    f3d8:	00000000 	nop
    f3dc:	860f0142 	lh	t7,322(s0)
    f3e0:	3c190000 	lui	t9,0x0
    f3e4:	86080144 	lh	t0,324(s0)
    f3e8:	000fc0c0 	sll	t8,t7,0x3
    f3ec:	0338c821 	addu	t9,t9,t8
    f3f0:	8f390004 	lw	t9,4(t9)
    f3f4:	000848c0 	sll	t1,t0,0x3
    f3f8:	3c0d0000 	lui	t5,0x0
    f3fc:	03295021 	addu	t2,t9,t1
    f400:	8d420004 	lw	v0,4(t2)
    f404:	844b0000 	lh	t3,0(v0)
    f408:	24420004 	addiu	v0,v0,4
    f40c:	448b2000 	mtc1	t3,$f4
    f410:	00000000 	nop
    f414:	468021a0 	cvt.s.w	$f6,$f4
    f418:	e6060000 	swc1	$f6,0(s0)
    f41c:	844c0000 	lh	t4,0(v0)
    f420:	a60c0004 	sh	t4,4(s0)
    f424:	8dad0000 	lw	t5,0(t5)
    f428:	85a30314 	lh	v1,788(t5)
    f42c:	10600003 	beqz	v1,f43c <Camera_Unique7+0x9c>
    f430:	00000000 	nop
    f434:	0c000000 	jal	0 <func_800437F0>
    f438:	02002025 	move	a0,s0
    f43c:	0c000000 	jal	0 <func_800437F0>
    f440:	02002025 	move	a0,s0
    f444:	26070074 	addiu	a3,s0,116
    f448:	afa20044 	sw	v0,68(sp)
    f44c:	00e02025 	move	a0,a3
    f450:	afa70020 	sw	a3,32(sp)
    f454:	0c000000 	jal	0 <func_800437F0>
    f458:	00402825 	move	a1,v0
    f45c:	8fa70020 	lw	a3,32(sp)
    f460:	2605005c 	addiu	a1,s0,92
    f464:	27b8003c 	addiu	t8,sp,60
    f468:	8cef0000 	lw	t7,0(a3)
    f46c:	27a4004c 	addiu	a0,sp,76
    f470:	26060094 	addiu	a2,s0,148
    f474:	acaf0000 	sw	t7,0(a1)
    f478:	8cee0004 	lw	t6,4(a3)
    f47c:	acae0004 	sw	t6,4(a1)
    f480:	8cef0008 	lw	t7,8(a3)
    f484:	acaf0008 	sw	t7,8(a1)
    f488:	8fa80044 	lw	t0,68(sp)
    f48c:	89090006 	lwl	t1,6(t0)
    f490:	99090009 	lwr	t1,9(t0)
    f494:	af090000 	sw	t1,0(t8)
    f498:	9509000a 	lhu	t1,10(t0)
    f49c:	a7090004 	sh	t1,4(t8)
    f4a0:	0c000000 	jal	0 <func_800437F0>
    f4a4:	afa50024 	sw	a1,36(sp)
    f4a8:	8faa0044 	lw	t2,68(sp)
    f4ac:	2401ffff 	li	at,-1
    f4b0:	3c063ecc 	lui	a2,0x3ecc
    f4b4:	8543000c 	lh	v1,12(t2)
    f4b8:	34c6cccd 	ori	a2,a2,0xcccd
    f4bc:	14610009 	bne	v1,at,f4e4 <Camera_Unique7+0x144>
    f4c0:	3c0142c8 	lui	at,0x42c8
    f4c4:	44815000 	mtc1	at,$f10
    f4c8:	c6080000 	lwc1	$f8,0(s0)
    f4cc:	460a4402 	mul.s	$f16,$f8,$f10
    f4d0:	4600848d 	trunc.w.s	$f18,$f16
    f4d4:	44039000 	mfc1	v1,$f18
    f4d8:	00000000 	nop
    f4dc:	00031c00 	sll	v1,v1,0x10
    f4e0:	00031c03 	sra	v1,v1,0x10
    f4e4:	28610169 	slti	at,v1,361
    f4e8:	10200008 	beqz	at,f50c <Camera_Unique7+0x16c>
    f4ec:	00600821 	move	at,v1
    f4f0:	00031880 	sll	v1,v1,0x2
    f4f4:	00611823 	subu	v1,v1,at
    f4f8:	000318c0 	sll	v1,v1,0x3
    f4fc:	00611821 	addu	v1,v1,at
    f500:	00031880 	sll	v1,v1,0x2
    f504:	00031c00 	sll	v1,v1,0x10
    f508:	00031c03 	sra	v1,v1,0x10
    f50c:	860c0004 	lh	t4,4(s0)
    f510:	3c010000 	lui	at,0x0
    f514:	ac2c0000 	sw	t4,0(at)
    f518:	8602015e 	lh	v0,350(s0)
    f51c:	5440000f 	bnezl	v0,f55c <Camera_Unique7+0x1bc>
    f520:	3c014270 	lui	at,0x4270
    f524:	44832000 	mtc1	v1,$f4
    f528:	244d0001 	addiu	t5,v0,1
    f52c:	a60d015e 	sh	t5,350(s0)
    f530:	468021a0 	cvt.s.w	$f6,$f4
    f534:	3c010000 	lui	at,0x0
    f538:	c4280000 	lwc1	$f8,0(at)
    f53c:	44808000 	mtc1	zero,$f16
    f540:	a600015a 	sh	zero,346(s0)
    f544:	46083282 	mul.s	$f10,$f6,$f8
    f548:	e6100100 	swc1	$f16,256(s0)
    f54c:	e60a00fc 	swc1	$f10,252(s0)
    f550:	87ae0052 	lh	t6,82(sp)
    f554:	a60e0008 	sh	t6,8(s0)
    f558:	3c014270 	lui	at,0x4270
    f55c:	44819000 	mtc1	at,$f18
    f560:	26030008 	addiu	v1,s0,8
    f564:	240707d0 	li	a3,2000
    f568:	e61200fc 	swc1	$f18,252(s0)
    f56c:	84650000 	lh	a1,0(v1)
    f570:	afa30020 	sw	v1,32(sp)
    f574:	0c000000 	jal	0 <func_800437F0>
    f578:	87a40052 	lh	a0,82(sp)
    f57c:	8fa30020 	lw	v1,32(sp)
    f580:	a4620000 	sh	v0,0(v1)
    f584:	8fb80044 	lw	t8,68(sp)
    f588:	87af0052 	lh	t7,82(sp)
    f58c:	87080008 	lh	t0,8(t8)
    f590:	01e82023 	subu	a0,t7,t0
    f594:	00042400 	sll	a0,a0,0x10
    f598:	0c000000 	jal	0 <func_800437F0>
    f59c:	00042403 	sra	a0,a0,0x10
    f5a0:	8fb90044 	lw	t9,68(sp)
    f5a4:	26040050 	addiu	a0,s0,80
    f5a8:	8fa50024 	lw	a1,36(sp)
    f5ac:	87290006 	lh	t1,6(t9)
    f5b0:	27a6004c 	addiu	a2,sp,76
    f5b4:	00095023 	negu	t2,t1
    f5b8:	448a2000 	mtc1	t2,$f4
    f5bc:	00000000 	nop
    f5c0:	468021a0 	cvt.s.w	$f6,$f4
    f5c4:	46060202 	mul.s	$f8,$f0,$f6
    f5c8:	4600428d 	trunc.w.s	$f10,$f8
    f5cc:	440c5000 	mfc1	t4,$f10
    f5d0:	0c000000 	jal	0 <func_800437F0>
    f5d4:	a7ac0050 	sh	t4,80(sp)
    f5d8:	860d014c 	lh	t5,332(s0)
    f5dc:	24020001 	li	v0,1
    f5e0:	35ae0400 	ori	t6,t5,0x400
    f5e4:	a60e014c 	sh	t6,332(s0)
    f5e8:	8fbf001c 	lw	ra,28(sp)
    f5ec:	8fb00018 	lw	s0,24(sp)
    f5f0:	27bd0060 	addiu	sp,sp,96
    f5f4:	03e00008 	jr	ra
    f5f8:	00000000 	nop

0000f5fc <Camera_Unique8>:
    f5fc:	27bdffe8 	addiu	sp,sp,-24
    f600:	afbf0014 	sw	ra,20(sp)
    f604:	0c000000 	jal	0 <func_800437F0>
    f608:	00000000 	nop
    f60c:	8fbf0014 	lw	ra,20(sp)
    f610:	27bd0018 	addiu	sp,sp,24
    f614:	03e00008 	jr	ra
    f618:	00000000 	nop

0000f61c <Camera_Unique9>:
    f61c:	27bdfee8 	addiu	sp,sp,-280
    f620:	afbf001c 	sw	ra,28(sp)
    f624:	afb10018 	sw	s1,24(sp)
    f628:	afb00014 	sw	s0,20(sp)
    f62c:	8c8e0090 	lw	t6,144(a0)
    f630:	00808825 	move	s1,a0
    f634:	2401000a 	li	at,10
    f638:	afae0088 	sw	t6,136(sp)
    f63c:	8483015e 	lh	v1,350(a0)
    f640:	5060000a 	beqzl	v1,f66c <Camera_Unique9+0x50>
    f644:	86380142 	lh	t8,322(s1)
    f648:	10610007 	beq	v1,at,f668 <Camera_Unique9+0x4c>
    f64c:	24010014 	li	at,20
    f650:	10610005 	beq	v1,at,f668 <Camera_Unique9+0x4c>
    f654:	3c0f0000 	lui	t7,0x0
    f658:	8def0000 	lw	t7,0(t7)
    f65c:	85e20314 	lh	v0,788(t7)
    f660:	1040000f 	beqz	v0,f6a0 <Camera_Unique9+0x84>
    f664:	00000000 	nop
    f668:	86380142 	lh	t8,322(s1)
    f66c:	3c0a0000 	lui	t2,0x0
    f670:	862b0144 	lh	t3,324(s1)
    f674:	0018c8c0 	sll	t9,t8,0x3
    f678:	01595021 	addu	t2,t2,t9
    f67c:	8d4a0004 	lw	t2,4(t2)
    f680:	000b60c0 	sll	t4,t3,0x3
    f684:	3c0f0000 	lui	t7,0x0
    f688:	014c6821 	addu	t5,t2,t4
    f68c:	8da30004 	lw	v1,4(t5)
    f690:	846e0000 	lh	t6,0(v1)
    f694:	a62e0008 	sh	t6,8(s1)
    f698:	8def0000 	lw	t7,0(t7)
    f69c:	85e20314 	lh	v0,788(t7)
    f6a0:	10400003 	beqz	v0,f6b0 <Camera_Unique9+0x94>
    f6a4:	26300008 	addiu	s0,s1,8
    f6a8:	0c000000 	jal	0 <func_800437F0>
    f6ac:	02202025 	move	a0,s1
    f6b0:	86180000 	lh	t8,0(s0)
    f6b4:	3c010000 	lui	at,0x0
    f6b8:	27a40098 	addiu	a0,sp,152
    f6bc:	ac380000 	sw	t8,0(at)
    f6c0:	0c000000 	jal	0 <func_800437F0>
    f6c4:	8e250090 	lw	a1,144(s1)
    f6c8:	8623015e 	lh	v1,350(s1)
    f6cc:	2630000c 	addiu	s0,s1,12
    f6d0:	240bffff 	li	t3,-1
    f6d4:	14600010 	bnez	v1,f718 <Camera_Unique9+0xfc>
    f6d8:	24790001 	addiu	t9,v1,1
    f6dc:	a639015e 	sh	t9,350(s1)
    f6e0:	240a0001 	li	t2,1
    f6e4:	a60b0036 	sh	t3,54(s0)
    f6e8:	a60a003c 	sh	t2,60(s0)
    f6ec:	a6000038 	sh	zero,56(s0)
    f6f0:	c7a40098 	lwc1	$f4,152(sp)
    f6f4:	44805000 	mtc1	zero,$f10
    f6f8:	02202025 	move	a0,s1
    f6fc:	e604001c 	swc1	$f4,28(s0)
    f700:	c7a6009c 	lwc1	$f6,156(sp)
    f704:	e6060020 	swc1	$f6,32(s0)
    f708:	c7a800a0 	lwc1	$f8,160(sp)
    f70c:	e6080024 	swc1	$f8,36(s0)
    f710:	0c000000 	jal	0 <func_800437F0>
    f714:	e62a0100 	swc1	$f10,256(s1)
    f718:	2630000c 	addiu	s0,s1,12
    f71c:	860c0038 	lh	t4,56(s0)
    f720:	55800006 	bnezl	t4,f73c <Camera_Unique9+0x120>
    f724:	860e003c 	lh	t6,60(s0)
    f728:	8602003c 	lh	v0,60(s0)
    f72c:	18400002 	blez	v0,f738 <Camera_Unique9+0x11c>
    f730:	244dffff 	addiu	t5,v0,-1
    f734:	a60d003c 	sh	t5,60(s0)
    f738:	860e003c 	lh	t6,60(s0)
    f73c:	55c0004b 	bnezl	t6,f86c <Camera_Unique9+0x250>
    f740:	a600003a 	sh	zero,58(s0)
    f744:	86180036 	lh	t8,54(s0)
    f748:	240f0001 	li	t7,1
    f74c:	a60f003a 	sh	t7,58(s0)
    f750:	27190001 	addiu	t9,t8,1
    f754:	a6190036 	sh	t9,54(s0)
    f758:	8e2b0000 	lw	t3,0(s1)
    f75c:	86020036 	lh	v0,54(s0)
    f760:	004b082a 	slt	at,v0,t3
    f764:	1020003a 	beqz	at,f850 <Camera_Unique9+0x234>
    f768:	00026080 	sll	t4,v0,0x2
    f76c:	8e2a0004 	lw	t2,4(s1)
    f770:	01826021 	addu	t4,t4,v0
    f774:	000c60c0 	sll	t4,t4,0x3
    f778:	014c1821 	addu	v1,t2,t4
    f77c:	ae030000 	sw	v1,0(s0)
    f780:	846e0004 	lh	t6,4(v1)
    f784:	240100ff 	li	at,255
    f788:	a60e003c 	sh	t6,60(s0)
    f78c:	90650001 	lbu	a1,1(v1)
    f790:	10a10037 	beq	a1,at,f870 <Camera_Unique9+0x254>
    f794:	30a200f0 	andi	v0,a1,0xf0
    f798:	24010080 	li	at,128
    f79c:	14410005 	bne	v0,at,f7b4 <Camera_Unique9+0x198>
    f7a0:	30af000f 	andi	t7,a1,0xf
    f7a4:	3c010000 	lui	at,0x0
    f7a8:	ac2f0000 	sw	t7,0(at)
    f7ac:	10000030 	b	f870 <Camera_Unique9+0x254>
    f7b0:	8e030000 	lw	v1,0(s0)
    f7b4:	240100c0 	li	at,192
    f7b8:	14410008 	bne	v0,at,f7dc <Camera_Unique9+0x1c0>
    f7bc:	30a4000f 	andi	a0,a1,0xf
    f7c0:	00042200 	sll	a0,a0,0x8
    f7c4:	3484f000 	ori	a0,a0,0xf000
    f7c8:	00042400 	sll	a0,a0,0x10
    f7cc:	0c000000 	jal	0 <func_800437F0>
    f7d0:	00042403 	sra	a0,a0,0x10
    f7d4:	10000026 	b	f870 <Camera_Unique9+0x254>
    f7d8:	8e030000 	lw	v1,0(s0)
    f7dc:	8e380090 	lw	t8,144(s1)
    f7e0:	8faa0088 	lw	t2,136(sp)
    f7e4:	3c040000 	lui	a0,0x0
    f7e8:	8f19067c 	lw	t9,1660(t8)
    f7ec:	00195900 	sll	t3,t9,0x4
    f7f0:	0561000e 	bgez	t3,f82c <Camera_Unique9+0x210>
    f7f4:	00000000 	nop
    f7f8:	814c014f 	lb	t4,335(t2)
    f7fc:	24010001 	li	at,1
    f800:	24060008 	li	a2,8
    f804:	11810009 	beq	t4,at,f82c <Camera_Unique9+0x210>
    f808:	00000000 	nop
    f80c:	8e24008c 	lw	a0,140(s1)
    f810:	0c000000 	jal	0 <func_800437F0>
    f814:	8e2500a8 	lw	a1,168(s1)
    f818:	3c040000 	lui	a0,0x0
    f81c:	0c000000 	jal	0 <func_800437F0>
    f820:	24840000 	addiu	a0,a0,0
    f824:	10000012 	b	f870 <Camera_Unique9+0x254>
    f828:	8e030000 	lw	v1,0(s0)
    f82c:	0c000000 	jal	0 <func_800437F0>
    f830:	24840000 	addiu	a0,a0,0
    f834:	8e0d0000 	lw	t5,0(s0)
    f838:	8e24008c 	lw	a0,140(s1)
    f83c:	8e2500a8 	lw	a1,168(s1)
    f840:	0c000000 	jal	0 <func_800437F0>
    f844:	91a60001 	lbu	a2,1(t5)
    f848:	10000009 	b	f870 <Camera_Unique9+0x254>
    f84c:	8e030000 	lw	v1,0(s0)
    f850:	862e0164 	lh	t6,356(s1)
    f854:	11c00002 	beqz	t6,f860 <Camera_Unique9+0x244>
    f858:	00000000 	nop
    f85c:	a6200160 	sh	zero,352(s1)
    f860:	100004ab 	b	10b10 <L800541C8+0x138>
    f864:	24020001 	li	v0,1
    f868:	a600003a 	sh	zero,58(s0)
    f86c:	8e030000 	lw	v1,0(s0)
    f870:	84640002 	lh	a0,2(v1)
    f874:	24010001 	li	at,1
    f878:	308700ff 	andi	a3,a0,0xff
    f87c:	00073c00 	sll	a3,a3,0x10
    f880:	00073c03 	sra	a3,a3,0x10
    f884:	54e1000d 	bnel	a3,at,f8bc <Camera_Unique9+0x2a0>
    f888:	24010002 	li	at,2
    f88c:	8c780010 	lw	t8,16(v1)
    f890:	26390050 	addiu	t9,s1,80
    f894:	ae180004 	sw	t8,4(s0)
    f898:	8c6f0014 	lw	t7,20(v1)
    f89c:	ae0f0008 	sw	t7,8(s0)
    f8a0:	8c780018 	lw	t8,24(v1)
    f8a4:	ae18000c 	sw	t8,12(s0)
    f8a8:	afb90030 	sw	t9,48(sp)
    f8ac:	8e030000 	lw	v1,0(s0)
    f8b0:	10000102 	b	fcbc <Camera_Unique9+0x6a0>
    f8b4:	84640002 	lh	a0,2(v1)
    f8b8:	24010002 	li	at,2
    f8bc:	14e10016 	bne	a3,at,f918 <Camera_Unique9+0x2fc>
    f8c0:	262e0050 	addiu	t6,s1,80
    f8c4:	860b003a 	lh	t3,58(s0)
    f8c8:	11600011 	beqz	t3,f910 <Camera_Unique9+0x2f4>
    f8cc:	00000000 	nop
    f8d0:	8e2a008c 	lw	t2,140(s1)
    f8d4:	c4660010 	lwc1	$f6,16(v1)
    f8d8:	c54400ec 	lwc1	$f4,236(t2)
    f8dc:	46062200 	add.s	$f8,$f4,$f6
    f8e0:	e6080004 	swc1	$f8,4(s0)
    f8e4:	8e2c008c 	lw	t4,140(s1)
    f8e8:	c4640014 	lwc1	$f4,20(v1)
    f8ec:	c58a00f0 	lwc1	$f10,240(t4)
    f8f0:	46045180 	add.s	$f6,$f10,$f4
    f8f4:	e6060008 	swc1	$f6,8(s0)
    f8f8:	8e2d008c 	lw	t5,140(s1)
    f8fc:	c46a0018 	lwc1	$f10,24(v1)
    f900:	c5a800f4 	lwc1	$f8,244(t5)
    f904:	460a4100 	add.s	$f4,$f8,$f10
    f908:	e604000c 	swc1	$f4,12(s0)
    f90c:	84640002 	lh	a0,2(v1)
    f910:	100000ea 	b	fcbc <Camera_Unique9+0x6a0>
    f914:	afae0030 	sw	t6,48(sp)
    f918:	24010003 	li	at,3
    f91c:	14e10013 	bne	a3,at,f96c <Camera_Unique9+0x350>
    f920:	26380050 	addiu	t8,s1,80
    f924:	860f003a 	lh	t7,58(s0)
    f928:	11e0000e 	beqz	t7,f964 <Camera_Unique9+0x348>
    f92c:	00000000 	nop
    f930:	c6260050 	lwc1	$f6,80(s1)
    f934:	c4680010 	lwc1	$f8,16(v1)
    f938:	46083280 	add.s	$f10,$f6,$f8
    f93c:	e60a0004 	swc1	$f10,4(s0)
    f940:	c4660014 	lwc1	$f6,20(v1)
    f944:	c6240054 	lwc1	$f4,84(s1)
    f948:	46062200 	add.s	$f8,$f4,$f6
    f94c:	e6080008 	swc1	$f8,8(s0)
    f950:	c4640018 	lwc1	$f4,24(v1)
    f954:	c62a0058 	lwc1	$f10,88(s1)
    f958:	46045180 	add.s	$f6,$f10,$f4
    f95c:	e606000c 	swc1	$f6,12(s0)
    f960:	84640002 	lh	a0,2(v1)
    f964:	100000d5 	b	fcbc <Camera_Unique9+0x6a0>
    f968:	afb80030 	sw	t8,48(sp)
    f96c:	24010004 	li	at,4
    f970:	10e10003 	beq	a3,at,f980 <Camera_Unique9+0x364>
    f974:	24010084 	li	at,132
    f978:	14e10058 	bne	a3,at,fadc <Camera_Unique9+0x4c0>
    f97c:	30ed6060 	andi	t5,a3,0x6060
    f980:	8e2500a8 	lw	a1,168(s1)
    f984:	10a00045 	beqz	a1,fa9c <Camera_Unique9+0x480>
    f988:	00000000 	nop
    f98c:	8cb90130 	lw	t9,304(a1)
    f990:	27a400c0 	addiu	a0,sp,192
    f994:	13200041 	beqz	t9,fa9c <Camera_Unique9+0x480>
    f998:	00000000 	nop
    f99c:	0c000000 	jal	0 <func_800437F0>
    f9a0:	a7a700d8 	sh	a3,216(sp)
    f9a4:	27a400ac 	addiu	a0,sp,172
    f9a8:	0c000000 	jal	0 <func_800437F0>
    f9ac:	8e250090 	lw	a1,144(s1)
    f9b0:	c7a80098 	lwc1	$f8,152(sp)
    f9b4:	c7aa00a0 	lwc1	$f10,160(sp)
    f9b8:	27a400dc 	addiu	a0,sp,220
    f9bc:	27a500c0 	addiu	a1,sp,192
    f9c0:	27a600ac 	addiu	a2,sp,172
    f9c4:	e7a800ac 	swc1	$f8,172(sp)
    f9c8:	0c000000 	jal	0 <func_800437F0>
    f9cc:	e7aa00b4 	swc1	$f10,180(sp)
    f9d0:	87a700d8 	lh	a3,216(sp)
    f9d4:	24018080 	li	at,-32640
    f9d8:	00e15824 	and	t3,a3,at
    f9dc:	5160001d 	beqzl	t3,fa54 <Camera_Unique9+0x438>
    f9e0:	8e050000 	lw	a1,0(s0)
    f9e4:	8e0a0000 	lw	t2,0(s0)
    f9e8:	3c010000 	lui	at,0x0
    f9ec:	c4260000 	lwc1	$f6,0(at)
    f9f0:	c5440010 	lwc1	$f4,16(t2)
    f9f4:	3c013f00 	lui	at,0x3f00
    f9f8:	44815000 	mtc1	at,$f10
    f9fc:	46062202 	mul.s	$f8,$f4,$f6
    fa00:	3c010000 	lui	at,0x0
    fa04:	460a4100 	add.s	$f4,$f8,$f10
    fa08:	c42a0000 	lwc1	$f10,0(at)
    fa0c:	3c013f00 	lui	at,0x3f00
    fa10:	4600218d 	trunc.w.s	$f6,$f4
    fa14:	440d3000 	mfc1	t5,$f6
    fa18:	44813000 	mtc1	at,$f6
    fa1c:	a7ad00e8 	sh	t5,232(sp)
    fa20:	8e0e0000 	lw	t6,0(s0)
    fa24:	c5c80014 	lwc1	$f8,20(t6)
    fa28:	460a4102 	mul.s	$f4,$f8,$f10
    fa2c:	46062200 	add.s	$f8,$f4,$f6
    fa30:	4600428d 	trunc.w.s	$f10,$f8
    fa34:	44185000 	mfc1	t8,$f10
    fa38:	00000000 	nop
    fa3c:	a7b800ea 	sh	t8,234(sp)
    fa40:	8e190000 	lw	t9,0(s0)
    fa44:	c7240018 	lwc1	$f4,24(t9)
    fa48:	10000005 	b	fa60 <Camera_Unique9+0x444>
    fa4c:	e7a400e4 	swc1	$f4,228(sp)
    fa50:	8e050000 	lw	a1,0(s0)
    fa54:	27a400e4 	addiu	a0,sp,228
    fa58:	0c000000 	jal	0 <func_800437F0>
    fa5c:	24a50010 	addiu	a1,a1,16
    fa60:	87ab00ea 	lh	t3,234(sp)
    fa64:	87aa00e2 	lh	t2,226(sp)
    fa68:	87ad00e8 	lh	t5,232(sp)
    fa6c:	87ae00e0 	lh	t6,224(sp)
    fa70:	016a6021 	addu	t4,t3,t2
    fa74:	a7ac00ea 	sh	t4,234(sp)
    fa78:	01ae7821 	addu	t7,t5,t6
    fa7c:	a7af00e8 	sh	t7,232(sp)
    fa80:	26040004 	addiu	a0,s0,4
    fa84:	27a500c0 	addiu	a1,sp,192
    fa88:	0c000000 	jal	0 <func_800437F0>
    fa8c:	27a600e4 	addiu	a2,sp,228
    fa90:	26380050 	addiu	t8,s1,80
    fa94:	1000000e 	b	fad0 <Camera_Unique9+0x4b4>
    fa98:	afb80030 	sw	t8,48(sp)
    fa9c:	14a00003 	bnez	a1,faac <Camera_Unique9+0x490>
    faa0:	3c040000 	lui	a0,0x0
    faa4:	0c000000 	jal	0 <func_800437F0>
    faa8:	24840000 	addiu	a0,a0,0
    faac:	ae2000a8 	sw	zero,168(s1)
    fab0:	26390050 	addiu	t9,s1,80
    fab4:	afb90030 	sw	t9,48(sp)
    fab8:	8f2c0000 	lw	t4,0(t9)
    fabc:	ae0c0004 	sw	t4,4(s0)
    fac0:	8f2a0004 	lw	t2,4(t9)
    fac4:	ae0a0008 	sw	t2,8(s0)
    fac8:	8f2c0008 	lw	t4,8(t9)
    facc:	ae0c000c 	sw	t4,12(s0)
    fad0:	8e030000 	lw	v1,0(s0)
    fad4:	10000079 	b	fcbc <Camera_Unique9+0x6a0>
    fad8:	84640002 	lh	a0,2(v1)
    fadc:	11a0006e 	beqz	t5,fc98 <Camera_Unique9+0x67c>
    fae0:	262c0050 	addiu	t4,s1,80
    fae4:	30ee0004 	andi	t6,a3,0x4
    fae8:	11c00004 	beqz	t6,fafc <Camera_Unique9+0x4e0>
    faec:	30f82020 	andi	t8,a3,0x2020
    faf0:	860f003a 	lh	t7,58(s0)
    faf4:	51e00066 	beqzl	t7,fc90 <Camera_Unique9+0x674>
    faf8:	262a0050 	addiu	t2,s1,80
    fafc:	13000003 	beqz	t8,fb0c <Camera_Unique9+0x4f0>
    fb00:	30e2000f 	andi	v0,a3,0xf
    fb04:	1000000b 	b	fb34 <Camera_Unique9+0x518>
    fb08:	8e260090 	lw	a2,144(s1)
    fb0c:	8e2500a8 	lw	a1,168(s1)
    fb10:	00003025 	move	a2,zero
    fb14:	50a00007 	beqzl	a1,fb34 <Camera_Unique9+0x518>
    fb18:	ae2000a8 	sw	zero,168(s1)
    fb1c:	8cb90130 	lw	t9,304(a1)
    fb20:	53200004 	beqzl	t9,fb34 <Camera_Unique9+0x518>
    fb24:	ae2000a8 	sw	zero,168(s1)
    fb28:	10000002 	b	fb34 <Camera_Unique9+0x518>
    fb2c:	00a03025 	move	a2,a1
    fb30:	ae2000a8 	sw	zero,168(s1)
    fb34:	10c00047 	beqz	a2,fc54 <Camera_Unique9+0x638>
    fb38:	24010001 	li	at,1
    fb3c:	14410006 	bne	v0,at,fb58 <Camera_Unique9+0x53c>
    fb40:	27a4006c 	addiu	a0,sp,108
    fb44:	00c02825 	move	a1,a2
    fb48:	0c000000 	jal	0 <func_800437F0>
    fb4c:	a7a700d8 	sh	a3,216(sp)
    fb50:	1000000e 	b	fb8c <Camera_Unique9+0x570>
    fb54:	87a700d8 	lh	a3,216(sp)
    fb58:	24010002 	li	at,2
    fb5c:	14410007 	bne	v0,at,fb7c <Camera_Unique9+0x560>
    fb60:	27a4006c 	addiu	a0,sp,108
    fb64:	27a4006c 	addiu	a0,sp,108
    fb68:	00c02825 	move	a1,a2
    fb6c:	0c000000 	jal	0 <func_800437F0>
    fb70:	a7a700d8 	sh	a3,216(sp)
    fb74:	10000005 	b	fb8c <Camera_Unique9+0x570>
    fb78:	87a700d8 	lh	a3,216(sp)
    fb7c:	00c02825 	move	a1,a2
    fb80:	0c000000 	jal	0 <func_800437F0>
    fb84:	a7a700d8 	sh	a3,216(sp)
    fb88:	87a700d8 	lh	a3,216(sp)
    fb8c:	24018080 	li	at,-32640
    fb90:	00e15824 	and	t3,a3,at
    fb94:	5160001d 	beqzl	t3,fc0c <Camera_Unique9+0x5f0>
    fb98:	8e050000 	lw	a1,0(s0)
    fb9c:	8e0a0000 	lw	t2,0(s0)
    fba0:	3c010000 	lui	at,0x0
    fba4:	c4280000 	lwc1	$f8,0(at)
    fba8:	c5460010 	lwc1	$f6,16(t2)
    fbac:	3c013f00 	lui	at,0x3f00
    fbb0:	44812000 	mtc1	at,$f4
    fbb4:	46083282 	mul.s	$f10,$f6,$f8
    fbb8:	3c010000 	lui	at,0x0
    fbbc:	46045180 	add.s	$f6,$f10,$f4
    fbc0:	c4240000 	lwc1	$f4,0(at)
    fbc4:	3c013f00 	lui	at,0x3f00
    fbc8:	4600320d 	trunc.w.s	$f8,$f6
    fbcc:	440d4000 	mfc1	t5,$f8
    fbd0:	44814000 	mtc1	at,$f8
    fbd4:	a7ad00e8 	sh	t5,232(sp)
    fbd8:	8e0e0000 	lw	t6,0(s0)
    fbdc:	c5ca0014 	lwc1	$f10,20(t6)
    fbe0:	46045182 	mul.s	$f6,$f10,$f4
    fbe4:	46083280 	add.s	$f10,$f6,$f8
    fbe8:	4600510d 	trunc.w.s	$f4,$f10
    fbec:	44182000 	mfc1	t8,$f4
    fbf0:	00000000 	nop
    fbf4:	a7b800ea 	sh	t8,234(sp)
    fbf8:	8e190000 	lw	t9,0(s0)
    fbfc:	c7260018 	lwc1	$f6,24(t9)
    fc00:	10000005 	b	fc18 <Camera_Unique9+0x5fc>
    fc04:	e7a600e4 	swc1	$f6,228(sp)
    fc08:	8e050000 	lw	a1,0(s0)
    fc0c:	27a400e4 	addiu	a0,sp,228
    fc10:	0c000000 	jal	0 <func_800437F0>
    fc14:	24a50010 	addiu	a1,a1,16
    fc18:	87ab00ea 	lh	t3,234(sp)
    fc1c:	87aa007a 	lh	t2,122(sp)
    fc20:	87ad00e8 	lh	t5,232(sp)
    fc24:	87ae0078 	lh	t6,120(sp)
    fc28:	016a6021 	addu	t4,t3,t2
    fc2c:	a7ac00ea 	sh	t4,234(sp)
    fc30:	01ae7823 	subu	t7,t5,t6
    fc34:	a7af00e8 	sh	t7,232(sp)
    fc38:	26040004 	addiu	a0,s0,4
    fc3c:	27a5006c 	addiu	a1,sp,108
    fc40:	0c000000 	jal	0 <func_800437F0>
    fc44:	27a600e4 	addiu	a2,sp,228
    fc48:	8e030000 	lw	v1,0(s0)
    fc4c:	1000000f 	b	fc8c <Camera_Unique9+0x670>
    fc50:	84640002 	lh	a0,2(v1)
    fc54:	8e3800a8 	lw	t8,168(s1)
    fc58:	3c040000 	lui	a0,0x0
    fc5c:	57000004 	bnezl	t8,fc70 <Camera_Unique9+0x654>
    fc60:	8e2b0050 	lw	t3,80(s1)
    fc64:	0c000000 	jal	0 <func_800437F0>
    fc68:	24840000 	addiu	a0,a0,0
    fc6c:	8e2b0050 	lw	t3,80(s1)
    fc70:	8e030000 	lw	v1,0(s0)
    fc74:	ae0b0004 	sw	t3,4(s0)
    fc78:	8e390054 	lw	t9,84(s1)
    fc7c:	ae190008 	sw	t9,8(s0)
    fc80:	8e2b0058 	lw	t3,88(s1)
    fc84:	ae0b000c 	sw	t3,12(s0)
    fc88:	84640002 	lh	a0,2(v1)
    fc8c:	262a0050 	addiu	t2,s1,80
    fc90:	1000000a 	b	fcbc <Camera_Unique9+0x6a0>
    fc94:	afaa0030 	sw	t2,48(sp)
    fc98:	afac0030 	sw	t4,48(sp)
    fc9c:	8d8f0000 	lw	t7,0(t4)
    fca0:	8e030000 	lw	v1,0(s0)
    fca4:	ae0f0004 	sw	t7,4(s0)
    fca8:	8d8e0004 	lw	t6,4(t4)
    fcac:	ae0e0008 	sw	t6,8(s0)
    fcb0:	8d8f0008 	lw	t7,8(t4)
    fcb4:	ae0f000c 	sw	t7,12(s0)
    fcb8:	84640002 	lh	a0,2(v1)
    fcbc:	3087ff00 	andi	a3,a0,0xff00
    fcc0:	00073c00 	sll	a3,a3,0x10
    fcc4:	24080100 	li	t0,256
    fcc8:	00073c03 	sra	a3,a3,0x10
    fccc:	14e8000c 	bne	a3,t0,fd00 <Camera_Unique9+0x6e4>
    fcd0:	24090200 	li	t1,512
    fcd4:	8c79001c 	lw	t9,28(v1)
    fcd8:	262b0074 	addiu	t3,s1,116
    fcdc:	ae190010 	sw	t9,16(s0)
    fce0:	8c780020 	lw	t8,32(v1)
    fce4:	ae180014 	sw	t8,20(s0)
    fce8:	8c790024 	lw	t9,36(v1)
    fcec:	ae190018 	sw	t9,24(s0)
    fcf0:	afab0034 	sw	t3,52(sp)
    fcf4:	8e030000 	lw	v1,0(s0)
    fcf8:	1000011a 	b	10164 <Camera_Unique9+0xb48>
    fcfc:	84640002 	lh	a0,2(v1)
    fd00:	14e90017 	bne	a3,t1,fd60 <Camera_Unique9+0x744>
    fd04:	24010300 	li	at,768
    fd08:	860a003a 	lh	t2,58(s0)
    fd0c:	262f0074 	addiu	t7,s1,116
    fd10:	11400011 	beqz	t2,fd58 <Camera_Unique9+0x73c>
    fd14:	00000000 	nop
    fd18:	8e2c008c 	lw	t4,140(s1)
    fd1c:	c46a001c 	lwc1	$f10,28(v1)
    fd20:	c58800e0 	lwc1	$f8,224(t4)
    fd24:	460a4100 	add.s	$f4,$f8,$f10
    fd28:	e6040010 	swc1	$f4,16(s0)
    fd2c:	8e2d008c 	lw	t5,140(s1)
    fd30:	c4680020 	lwc1	$f8,32(v1)
    fd34:	c5a600e4 	lwc1	$f6,228(t5)
    fd38:	46083280 	add.s	$f10,$f6,$f8
    fd3c:	e60a0014 	swc1	$f10,20(s0)
    fd40:	8e2e008c 	lw	t6,140(s1)
    fd44:	c4660024 	lwc1	$f6,36(v1)
    fd48:	c5c400e8 	lwc1	$f4,232(t6)
    fd4c:	46062200 	add.s	$f8,$f4,$f6
    fd50:	e6080018 	swc1	$f8,24(s0)
    fd54:	84640002 	lh	a0,2(v1)
    fd58:	10000102 	b	10164 <Camera_Unique9+0xb48>
    fd5c:	afaf0034 	sw	t7,52(sp)
    fd60:	14e10013 	bne	a3,at,fdb0 <Camera_Unique9+0x794>
    fd64:	26390074 	addiu	t9,s1,116
    fd68:	8618003a 	lh	t8,58(s0)
    fd6c:	1300000e 	beqz	t8,fda8 <Camera_Unique9+0x78c>
    fd70:	00000000 	nop
    fd74:	c62a0074 	lwc1	$f10,116(s1)
    fd78:	c464001c 	lwc1	$f4,28(v1)
    fd7c:	46045180 	add.s	$f6,$f10,$f4
    fd80:	e6060010 	swc1	$f6,16(s0)
    fd84:	c46a0020 	lwc1	$f10,32(v1)
    fd88:	c6280078 	lwc1	$f8,120(s1)
    fd8c:	460a4100 	add.s	$f4,$f8,$f10
    fd90:	e6040014 	swc1	$f4,20(s0)
    fd94:	c4680024 	lwc1	$f8,36(v1)
    fd98:	c626007c 	lwc1	$f6,124(s1)
    fd9c:	46083280 	add.s	$f10,$f6,$f8
    fda0:	e60a0018 	swc1	$f10,24(s0)
    fda4:	84640002 	lh	a0,2(v1)
    fda8:	100000ee 	b	10164 <Camera_Unique9+0xb48>
    fdac:	afb90034 	sw	t9,52(sp)
    fdb0:	24010400 	li	at,1024
    fdb4:	10e10007 	beq	a3,at,fdd4 <Camera_Unique9+0x7b8>
    fdb8:	24018400 	li	at,-31744
    fdbc:	10e10005 	beq	a3,at,fdd4 <Camera_Unique9+0x7b8>
    fdc0:	24010500 	li	at,1280
    fdc4:	10e10003 	beq	a3,at,fdd4 <Camera_Unique9+0x7b8>
    fdc8:	24018500 	li	at,-31488
    fdcc:	14e1006d 	bne	a3,at,ff84 <Camera_Unique9+0x968>
    fdd0:	30ed6060 	andi	t5,a3,0x6060
    fdd4:	8e2500a8 	lw	a1,168(s1)
    fdd8:	10a0005a 	beqz	a1,ff44 <Camera_Unique9+0x928>
    fddc:	00000000 	nop
    fde0:	8cab0130 	lw	t3,304(a1)
    fde4:	27a400c0 	addiu	a0,sp,192
    fde8:	11600056 	beqz	t3,ff44 <Camera_Unique9+0x928>
    fdec:	00000000 	nop
    fdf0:	0c000000 	jal	0 <func_800437F0>
    fdf4:	a7a700d6 	sh	a3,214(sp)
    fdf8:	27a400ac 	addiu	a0,sp,172
    fdfc:	0c000000 	jal	0 <func_800437F0>
    fe00:	8e250090 	lw	a1,144(s1)
    fe04:	c7a40098 	lwc1	$f4,152(sp)
    fe08:	c7a600a0 	lwc1	$f6,160(sp)
    fe0c:	27a400dc 	addiu	a0,sp,220
    fe10:	27a500c0 	addiu	a1,sp,192
    fe14:	27a600ac 	addiu	a2,sp,172
    fe18:	e7a400ac 	swc1	$f4,172(sp)
    fe1c:	0c000000 	jal	0 <func_800437F0>
    fe20:	e7a600b4 	swc1	$f6,180(sp)
    fe24:	87a700d6 	lh	a3,214(sp)
    fe28:	24010400 	li	at,1024
    fe2c:	27ac00c0 	addiu	t4,sp,192
    fe30:	10e10003 	beq	a3,at,fe40 <Camera_Unique9+0x824>
    fe34:	24018400 	li	at,-31744
    fe38:	54e1000a 	bnel	a3,at,fe64 <Camera_Unique9+0x848>
    fe3c:	8e190004 	lw	t9,4(s0)
    fe40:	8d8e0000 	lw	t6,0(t4)
    fe44:	27aa0060 	addiu	t2,sp,96
    fe48:	ad4e0000 	sw	t6,0(t2)
    fe4c:	8d8d0004 	lw	t5,4(t4)
    fe50:	ad4d0004 	sw	t5,4(t2)
    fe54:	8d8e0008 	lw	t6,8(t4)
    fe58:	10000008 	b	fe7c <Camera_Unique9+0x860>
    fe5c:	ad4e0008 	sw	t6,8(t2)
    fe60:	8e190004 	lw	t9,4(s0)
    fe64:	27af0060 	addiu	t7,sp,96
    fe68:	adf90000 	sw	t9,0(t7)
    fe6c:	8e180008 	lw	t8,8(s0)
    fe70:	adf80004 	sw	t8,4(t7)
    fe74:	8e19000c 	lw	t9,12(s0)
    fe78:	adf90008 	sw	t9,8(t7)
    fe7c:	24018080 	li	at,-32640
    fe80:	00e15824 	and	t3,a3,at
    fe84:	5160001d 	beqzl	t3,fefc <Camera_Unique9+0x8e0>
    fe88:	8e050000 	lw	a1,0(s0)
    fe8c:	8e0a0000 	lw	t2,0(s0)
    fe90:	3c010000 	lui	at,0x0
    fe94:	c42a0000 	lwc1	$f10,0(at)
    fe98:	c548001c 	lwc1	$f8,28(t2)
    fe9c:	3c013f00 	lui	at,0x3f00
    fea0:	44813000 	mtc1	at,$f6
    fea4:	460a4102 	mul.s	$f4,$f8,$f10
    fea8:	3c010000 	lui	at,0x0
    feac:	46062200 	add.s	$f8,$f4,$f6
    feb0:	c4260000 	lwc1	$f6,0(at)
    feb4:	3c013f00 	lui	at,0x3f00
    feb8:	4600428d 	trunc.w.s	$f10,$f8
    febc:	440d5000 	mfc1	t5,$f10
    fec0:	44815000 	mtc1	at,$f10
    fec4:	a7ad00e8 	sh	t5,232(sp)
    fec8:	8e0e0000 	lw	t6,0(s0)
    fecc:	c5c40020 	lwc1	$f4,32(t6)
    fed0:	46062202 	mul.s	$f8,$f4,$f6
    fed4:	460a4100 	add.s	$f4,$f8,$f10
    fed8:	4600218d 	trunc.w.s	$f6,$f4
    fedc:	44183000 	mfc1	t8,$f6
    fee0:	00000000 	nop
    fee4:	a7b800ea 	sh	t8,234(sp)
    fee8:	8e190000 	lw	t9,0(s0)
    feec:	c7280024 	lwc1	$f8,36(t9)
    fef0:	10000005 	b	ff08 <Camera_Unique9+0x8ec>
    fef4:	e7a800e4 	swc1	$f8,228(sp)
    fef8:	8e050000 	lw	a1,0(s0)
    fefc:	27a400e4 	addiu	a0,sp,228
    ff00:	0c000000 	jal	0 <func_800437F0>
    ff04:	24a5001c 	addiu	a1,a1,28
    ff08:	87ab00ea 	lh	t3,234(sp)
    ff0c:	87aa00e2 	lh	t2,226(sp)
    ff10:	87ad00e8 	lh	t5,232(sp)
    ff14:	87ae00e0 	lh	t6,224(sp)
    ff18:	016a6021 	addu	t4,t3,t2
    ff1c:	a7ac00ea 	sh	t4,234(sp)
    ff20:	01ae7821 	addu	t7,t5,t6
    ff24:	a7af00e8 	sh	t7,232(sp)
    ff28:	26040010 	addiu	a0,s0,16
    ff2c:	27a50060 	addiu	a1,sp,96
    ff30:	0c000000 	jal	0 <func_800437F0>
    ff34:	27a600e4 	addiu	a2,sp,228
    ff38:	26380074 	addiu	t8,s1,116
    ff3c:	1000000e 	b	ff78 <Camera_Unique9+0x95c>
    ff40:	afb80034 	sw	t8,52(sp)
    ff44:	14a00003 	bnez	a1,ff54 <Camera_Unique9+0x938>
    ff48:	3c040000 	lui	a0,0x0
    ff4c:	0c000000 	jal	0 <func_800437F0>
    ff50:	24840000 	addiu	a0,a0,0
    ff54:	ae2000a8 	sw	zero,168(s1)
    ff58:	26390074 	addiu	t9,s1,116
    ff5c:	afb90034 	sw	t9,52(sp)
    ff60:	8f2c0000 	lw	t4,0(t9)
    ff64:	ae0c0010 	sw	t4,16(s0)
    ff68:	8f2a0004 	lw	t2,4(t9)
    ff6c:	ae0a0014 	sw	t2,20(s0)
    ff70:	8f2c0008 	lw	t4,8(t9)
    ff74:	ae0c0018 	sw	t4,24(s0)
    ff78:	8e030000 	lw	v1,0(s0)
    ff7c:	10000079 	b	10164 <Camera_Unique9+0xb48>
    ff80:	84640002 	lh	a0,2(v1)
    ff84:	11a0006e 	beqz	t5,10140 <Camera_Unique9+0xb24>
    ff88:	262c0074 	addiu	t4,s1,116
    ff8c:	30ee0400 	andi	t6,a3,0x400
    ff90:	11c00004 	beqz	t6,ffa4 <Camera_Unique9+0x988>
    ff94:	30f82020 	andi	t8,a3,0x2020
    ff98:	860f003a 	lh	t7,58(s0)
    ff9c:	51e00066 	beqzl	t7,10138 <Camera_Unique9+0xb1c>
    ffa0:	262a0074 	addiu	t2,s1,116
    ffa4:	13000003 	beqz	t8,ffb4 <Camera_Unique9+0x998>
    ffa8:	30e20f00 	andi	v0,a3,0xf00
    ffac:	1000000b 	b	ffdc <Camera_Unique9+0x9c0>
    ffb0:	8e260090 	lw	a2,144(s1)
    ffb4:	8e2500a8 	lw	a1,168(s1)
    ffb8:	00003025 	move	a2,zero
    ffbc:	50a00007 	beqzl	a1,ffdc <Camera_Unique9+0x9c0>
    ffc0:	ae2000a8 	sw	zero,168(s1)
    ffc4:	8cb90130 	lw	t9,304(a1)
    ffc8:	53200004 	beqzl	t9,ffdc <Camera_Unique9+0x9c0>
    ffcc:	ae2000a8 	sw	zero,168(s1)
    ffd0:	10000002 	b	ffdc <Camera_Unique9+0x9c0>
    ffd4:	00a03025 	move	a2,a1
    ffd8:	ae2000a8 	sw	zero,168(s1)
    ffdc:	50c00047 	beqzl	a2,100fc <Camera_Unique9+0xae0>
    ffe0:	8e3800a8 	lw	t8,168(s1)
    ffe4:	15020006 	bne	t0,v0,10000 <Camera_Unique9+0x9e4>
    ffe8:	27a40048 	addiu	a0,sp,72
    ffec:	00c02825 	move	a1,a2
    fff0:	0c000000 	jal	0 <func_800437F0>
    fff4:	a7a700d6 	sh	a3,214(sp)
    fff8:	1000000d 	b	10030 <Camera_Unique9+0xa14>
    fffc:	87a700d6 	lh	a3,214(sp)
   10000:	15220007 	bne	t1,v0,10020 <Camera_Unique9+0xa04>
   10004:	27a40048 	addiu	a0,sp,72
   10008:	27a40048 	addiu	a0,sp,72
   1000c:	00c02825 	move	a1,a2
   10010:	0c000000 	jal	0 <func_800437F0>
   10014:	a7a700d6 	sh	a3,214(sp)
   10018:	10000005 	b	10030 <Camera_Unique9+0xa14>
   1001c:	87a700d6 	lh	a3,214(sp)
   10020:	00c02825 	move	a1,a2
   10024:	0c000000 	jal	0 <func_800437F0>
   10028:	a7a700d6 	sh	a3,214(sp)
   1002c:	87a700d6 	lh	a3,214(sp)
   10030:	24018080 	li	at,-32640
   10034:	00e15824 	and	t3,a3,at
   10038:	5160001d 	beqzl	t3,100b0 <Camera_Unique9+0xa94>
   1003c:	8e050000 	lw	a1,0(s0)
   10040:	8e0a0000 	lw	t2,0(s0)
   10044:	3c010000 	lui	at,0x0
   10048:	c4240000 	lwc1	$f4,0(at)
   1004c:	c54a001c 	lwc1	$f10,28(t2)
   10050:	3c013f00 	lui	at,0x3f00
   10054:	44814000 	mtc1	at,$f8
   10058:	46045182 	mul.s	$f6,$f10,$f4
   1005c:	3c010000 	lui	at,0x0
   10060:	46083280 	add.s	$f10,$f6,$f8
   10064:	c4280000 	lwc1	$f8,0(at)
   10068:	3c013f00 	lui	at,0x3f00
   1006c:	4600510d 	trunc.w.s	$f4,$f10
   10070:	440d2000 	mfc1	t5,$f4
   10074:	44812000 	mtc1	at,$f4
   10078:	a7ad00e8 	sh	t5,232(sp)
   1007c:	8e0e0000 	lw	t6,0(s0)
   10080:	c5c60020 	lwc1	$f6,32(t6)
   10084:	46083282 	mul.s	$f10,$f6,$f8
   10088:	46045180 	add.s	$f6,$f10,$f4
   1008c:	4600320d 	trunc.w.s	$f8,$f6
   10090:	44184000 	mfc1	t8,$f8
   10094:	00000000 	nop
   10098:	a7b800ea 	sh	t8,234(sp)
   1009c:	8e190000 	lw	t9,0(s0)
   100a0:	c72a0024 	lwc1	$f10,36(t9)
   100a4:	10000005 	b	100bc <Camera_Unique9+0xaa0>
   100a8:	e7aa00e4 	swc1	$f10,228(sp)
   100ac:	8e050000 	lw	a1,0(s0)
   100b0:	27a400e4 	addiu	a0,sp,228
   100b4:	0c000000 	jal	0 <func_800437F0>
   100b8:	24a5001c 	addiu	a1,a1,28
   100bc:	87ab00ea 	lh	t3,234(sp)
   100c0:	87aa0056 	lh	t2,86(sp)
   100c4:	87ad00e8 	lh	t5,232(sp)
   100c8:	87ae0054 	lh	t6,84(sp)
   100cc:	016a6021 	addu	t4,t3,t2
   100d0:	a7ac00ea 	sh	t4,234(sp)
   100d4:	01ae7823 	subu	t7,t5,t6
   100d8:	a7af00e8 	sh	t7,232(sp)
   100dc:	26040010 	addiu	a0,s0,16
   100e0:	27a50048 	addiu	a1,sp,72
   100e4:	0c000000 	jal	0 <func_800437F0>
   100e8:	27a600e4 	addiu	a2,sp,228
   100ec:	8e030000 	lw	v1,0(s0)
   100f0:	10000010 	b	10134 <Camera_Unique9+0xb18>
   100f4:	84640002 	lh	a0,2(v1)
   100f8:	8e3800a8 	lw	t8,168(s1)
   100fc:	3c040000 	lui	a0,0x0
   10100:	57000004 	bnezl	t8,10114 <Camera_Unique9+0xaf8>
   10104:	8e2b0074 	lw	t3,116(s1)
   10108:	0c000000 	jal	0 <func_800437F0>
   1010c:	24840000 	addiu	a0,a0,0
   10110:	8e2b0074 	lw	t3,116(s1)
   10114:	ae2000a8 	sw	zero,168(s1)
   10118:	8e030000 	lw	v1,0(s0)
   1011c:	ae0b0010 	sw	t3,16(s0)
   10120:	8e390078 	lw	t9,120(s1)
   10124:	ae190014 	sw	t9,20(s0)
   10128:	8e2b007c 	lw	t3,124(s1)
   1012c:	ae0b0018 	sw	t3,24(s0)
   10130:	84640002 	lh	a0,2(v1)
   10134:	262a0074 	addiu	t2,s1,116
   10138:	1000000a 	b	10164 <Camera_Unique9+0xb48>
   1013c:	afaa0034 	sw	t2,52(sp)
   10140:	afac0034 	sw	t4,52(sp)
   10144:	8d8f0000 	lw	t7,0(t4)
   10148:	8e030000 	lw	v1,0(s0)
   1014c:	ae0f0010 	sw	t7,16(s0)
   10150:	8d8e0004 	lw	t6,4(t4)
   10154:	ae0e0014 	sw	t6,20(s0)
   10158:	8d8f0008 	lw	t7,8(t4)
   1015c:	ae0f0018 	sw	t7,24(s0)
   10160:	84640002 	lh	a0,2(v1)
   10164:	24010002 	li	at,2
   10168:	14810007 	bne	a0,at,10188 <Camera_Unique9+0xb6c>
   1016c:	00000000 	nop
   10170:	8e38008c 	lw	t8,140(s1)
   10174:	8e030000 	lw	v1,0(s0)
   10178:	c70400d0 	lwc1	$f4,208(t8)
   1017c:	a6000034 	sh	zero,52(s0)
   10180:	10000019 	b	101e8 <Camera_Unique9+0xbcc>
   10184:	e6040028 	swc1	$f4,40(s0)
   10188:	54800008 	bnezl	a0,101ac <Camera_Unique9+0xb90>
   1018c:	c4680008 	lwc1	$f8,8(v1)
   10190:	c62600fc 	lwc1	$f6,252(s1)
   10194:	8e030000 	lw	v1,0(s0)
   10198:	e6060028 	swc1	$f6,40(s0)
   1019c:	8639015a 	lh	t9,346(s1)
   101a0:	10000011 	b	101e8 <Camera_Unique9+0xbcc>
   101a4:	a6190034 	sh	t9,52(s0)
   101a8:	c4680008 	lwc1	$f8,8(v1)
   101ac:	3c010000 	lui	at,0x0
   101b0:	e6080028 	swc1	$f8,40(s0)
   101b4:	846b0006 	lh	t3,6(v1)
   101b8:	c4260000 	lwc1	$f6,0(at)
   101bc:	3c013f00 	lui	at,0x3f00
   101c0:	448b5000 	mtc1	t3,$f10
   101c4:	00000000 	nop
   101c8:	46805120 	cvt.s.w	$f4,$f10
   101cc:	44815000 	mtc1	at,$f10
   101d0:	46062202 	mul.s	$f8,$f4,$f6
   101d4:	460a4100 	add.s	$f4,$f8,$f10
   101d8:	4600218d 	trunc.w.s	$f6,$f4
   101dc:	440c3000 	mfc1	t4,$f6
   101e0:	00000000 	nop
   101e4:	a60c0034 	sh	t4,52(s0)
   101e8:	90620000 	lbu	v0,0(v1)
   101ec:	3042001f 	andi	v0,v0,0x1f
   101f0:	00021400 	sll	v0,v0,0x10
   101f4:	00021403 	sra	v0,v0,0x10
   101f8:	244dffff 	addiu	t5,v0,-1
   101fc:	2da10018 	sltiu	at,t5,24
   10200:	102001f5 	beqz	at,109d8 <L800541C8>
   10204:	000d6880 	sll	t5,t5,0x2
   10208:	3c010000 	lui	at,0x0
   1020c:	002d0821 	addu	at,at,t5
   10210:	8c2d0000 	lw	t5,0(at)
   10214:	01a00008 	jr	t5
   10218:	00000000 	nop

0001021c <L80053A0C>:
   1021c:	8fae0030 	lw	t6,48(sp)
   10220:	8e180004 	lw	t8,4(s0)
   10224:	2626005c 	addiu	a2,s1,92
   10228:	add80000 	sw	t8,0(t6)
   1022c:	8e0f0008 	lw	t7,8(s0)
   10230:	adcf0004 	sw	t7,4(t6)
   10234:	8e18000c 	lw	t8,12(s0)
   10238:	add80008 	sw	t8,8(t6)
   1023c:	8e0a0010 	lw	t2,16(s0)
   10240:	8fb90034 	lw	t9,52(sp)
   10244:	af2a0000 	sw	t2,0(t9)
   10248:	8e0b0014 	lw	t3,20(s0)
   1024c:	af2b0004 	sw	t3,4(t9)
   10250:	8e0a0018 	lw	t2,24(s0)
   10254:	af2a0008 	sw	t2,8(t9)
   10258:	c6080028 	lwc1	$f8,40(s0)
   1025c:	862d014c 	lh	t5,332(s1)
   10260:	e62800fc 	swc1	$f8,252(s1)
   10264:	860c0034 	lh	t4,52(s0)
   10268:	35ae0400 	ori	t6,t5,0x400
   1026c:	a62e014c 	sh	t6,332(s1)
   10270:	100001de 	b	109ec <L800541C8+0x14>
   10274:	a62c015a 	sh	t4,346(s1)

00010278 <L80053A68>:
   10278:	860f0038 	lh	t7,56(s0)
   1027c:	26070004 	addiu	a3,s0,4
   10280:	26020010 	addiu	v0,s0,16
   10284:	15e00003 	bnez	t7,10294 <L80053A68+0x1c>
   10288:	24180001 	li	t8,1
   1028c:	10000009 	b	102b4 <L80053A68+0x3c>
   10290:	a6180038 	sh	t8,56(s0)
   10294:	8639014c 	lh	t9,332(s1)
   10298:	332b0008 	andi	t3,t9,0x8
   1029c:	51600006 	beqzl	t3,102b8 <L80053A68+0x40>
   102a0:	8fad0030 	lw	t5,48(sp)
   102a4:	a6000038 	sh	zero,56(s0)
   102a8:	862a014c 	lh	t2,332(s1)
   102ac:	314cfff7 	andi	t4,t2,0xfff7
   102b0:	a62c014c 	sh	t4,332(s1)
   102b4:	8fad0030 	lw	t5,48(sp)
   102b8:	8cef0000 	lw	t7,0(a3)
   102bc:	2626005c 	addiu	a2,s1,92
   102c0:	adaf0000 	sw	t7,0(t5)
   102c4:	8cee0004 	lw	t6,4(a3)
   102c8:	adae0004 	sw	t6,4(t5)
   102cc:	8cef0008 	lw	t7,8(a3)
   102d0:	adaf0008 	sw	t7,8(t5)
   102d4:	8c4b0000 	lw	t3,0(v0)
   102d8:	8fb80034 	lw	t8,52(sp)
   102dc:	af0b0000 	sw	t3,0(t8)
   102e0:	8c590004 	lw	t9,4(v0)
   102e4:	af190004 	sw	t9,4(t8)
   102e8:	8c4b0008 	lw	t3,8(v0)
   102ec:	af0b0008 	sw	t3,8(t8)
   102f0:	c60a0028 	lwc1	$f10,40(s0)
   102f4:	e62a00fc 	swc1	$f10,252(s1)
   102f8:	860a0034 	lh	t2,52(s0)
   102fc:	100001bb 	b	109ec <L800541C8+0x14>
   10300:	a62a015a 	sh	t2,346(s1)

00010304 <L80053AF4>:
   10304:	860c0038 	lh	t4,56(s0)
   10308:	26070004 	addiu	a3,s0,4
   1030c:	26020010 	addiu	v0,s0,16
   10310:	15800003 	bnez	t4,10320 <L80053AF4+0x1c>
   10314:	240d0001 	li	t5,1
   10318:	10000006 	b	10334 <L80053AF4+0x30>
   1031c:	a60d0038 	sh	t5,56(s0)
   10320:	862e014c 	lh	t6,332(s1)
   10324:	31cf0008 	andi	t7,t6,0x8
   10328:	51e00003 	beqzl	t7,10338 <L80053AF4+0x34>
   1032c:	8fb80030 	lw	t8,48(sp)
   10330:	a6000038 	sh	zero,56(s0)
   10334:	8fb80030 	lw	t8,48(sp)
   10338:	8ceb0000 	lw	t3,0(a3)
   1033c:	2626005c 	addiu	a2,s1,92
   10340:	af0b0000 	sw	t3,0(t8)
   10344:	8cf90004 	lw	t9,4(a3)
   10348:	af190004 	sw	t9,4(t8)
   1034c:	8ceb0008 	lw	t3,8(a3)
   10350:	af0b0008 	sw	t3,8(t8)
   10354:	8c4d0000 	lw	t5,0(v0)
   10358:	8faa0034 	lw	t2,52(sp)
   1035c:	ad4d0000 	sw	t5,0(t2)
   10360:	8c4c0004 	lw	t4,4(v0)
   10364:	ad4c0004 	sw	t4,4(t2)
   10368:	8c4d0008 	lw	t5,8(v0)
   1036c:	ad4d0008 	sw	t5,8(t2)
   10370:	c6040028 	lwc1	$f4,40(s0)
   10374:	e62400fc 	swc1	$f4,252(s1)
   10378:	860e0034 	lh	t6,52(s0)
   1037c:	1000019b 	b	109ec <L800541C8+0x14>
   10380:	a62e015a 	sh	t6,346(s1)

00010384 <L80053B74>:
   10384:	26070004 	addiu	a3,s0,4
   10388:	260f0010 	addiu	t7,s0,16
   1038c:	afaf0024 	sw	t7,36(sp)
   10390:	afa70028 	sw	a3,40(sp)
   10394:	27a400ec 	addiu	a0,sp,236
   10398:	8fa50030 	lw	a1,48(sp)
   1039c:	0c000000 	jal	0 <func_800437F0>
   103a0:	8fa60034 	lw	a2,52(sp)
   103a4:	8fa50028 	lw	a1,40(sp)
   103a8:	2604002c 	addiu	a0,s0,44
   103ac:	0c000000 	jal	0 <func_800437F0>
   103b0:	8fa60024 	lw	a2,36(sp)
   103b4:	8618003c 	lh	t8,60(s0)
   103b8:	3c013f80 	lui	at,0x3f80
   103bc:	44813000 	mtc1	at,$f6
   103c0:	44984000 	mtc1	t8,$f8
   103c4:	c604002c 	lwc1	$f4,44(s0)
   103c8:	87ab00f0 	lh	t3,240(sp)
   103cc:	468042a0 	cvt.s.w	$f10,$f8
   103d0:	c7a800ec 	lwc1	$f8,236(sp)
   103d4:	27a40100 	addiu	a0,sp,256
   103d8:	8fa50030 	lw	a1,48(sp)
   103dc:	27a600e4 	addiu	a2,sp,228
   103e0:	460a3083 	div.s	$f2,$f6,$f10
   103e4:	46082181 	sub.s	$f6,$f4,$f8
   103e8:	46023282 	mul.s	$f10,$f6,$f2
   103ec:	46085100 	add.s	$f4,$f10,$f8
   103f0:	e7a400e4 	swc1	$f4,228(sp)
   103f4:	86190030 	lh	t9,48(s0)
   103f8:	448b2000 	mtc1	t3,$f4
   103fc:	032b5023 	subu	t2,t9,t3
   10400:	000a6400 	sll	t4,t2,0x10
   10404:	000c6c03 	sra	t5,t4,0x10
   10408:	448d3000 	mtc1	t5,$f6
   1040c:	87b900f2 	lh	t9,242(sp)
   10410:	468032a0 	cvt.s.w	$f10,$f6
   10414:	468021a0 	cvt.s.w	$f6,$f4
   10418:	46025202 	mul.s	$f8,$f10,$f2
   1041c:	46083280 	add.s	$f10,$f6,$f8
   10420:	4600510d 	trunc.w.s	$f4,$f10
   10424:	440f2000 	mfc1	t7,$f4
   10428:	44992000 	mtc1	t9,$f4
   1042c:	a7af00e8 	sh	t7,232(sp)
   10430:	86180032 	lh	t8,50(s0)
   10434:	03195023 	subu	t2,t8,t9
   10438:	000a6400 	sll	t4,t2,0x10
   1043c:	000c6c03 	sra	t5,t4,0x10
   10440:	448d3000 	mtc1	t5,$f6
   10444:	00000000 	nop
   10448:	46803220 	cvt.s.w	$f8,$f6
   1044c:	468021a0 	cvt.s.w	$f6,$f4
   10450:	46024282 	mul.s	$f10,$f8,$f2
   10454:	460a3200 	add.s	$f8,$f6,$f10
   10458:	4600410d 	trunc.w.s	$f4,$f8
   1045c:	440e2000 	mfc1	t6,$f4
   10460:	0c000000 	jal	0 <func_800437F0>
   10464:	a7ae00ea 	sh	t6,234(sp)
   10468:	1000001a 	b	104d4 <L80053C60+0x64>
   1046c:	8e180000 	lw	t8,0(s0)

00010470 <L80053C60>:
   10470:	860f003c 	lh	t7,60(s0)
   10474:	3c013f80 	lui	at,0x3f80
   10478:	44813000 	mtc1	at,$f6
   1047c:	448f5000 	mtc1	t7,$f10
   10480:	c6200074 	lwc1	$f0,116(s1)
   10484:	c6040010 	lwc1	$f4,16(s0)
   10488:	46805220 	cvt.s.w	$f8,$f10
   1048c:	46002281 	sub.s	$f10,$f4,$f0
   10490:	46083083 	div.s	$f2,$f6,$f8
   10494:	46025182 	mul.s	$f6,$f10,$f2
   10498:	46060200 	add.s	$f8,$f0,$f6
   1049c:	e7a80100 	swc1	$f8,256(sp)
   104a0:	c6040014 	lwc1	$f4,20(s0)
   104a4:	c62c0078 	lwc1	$f12,120(s1)
   104a8:	460c2281 	sub.s	$f10,$f4,$f12
   104ac:	46025182 	mul.s	$f6,$f10,$f2
   104b0:	46066200 	add.s	$f8,$f12,$f6
   104b4:	e7a80104 	swc1	$f8,260(sp)
   104b8:	c6040018 	lwc1	$f4,24(s0)
   104bc:	c62e007c 	lwc1	$f14,124(s1)
   104c0:	460e2281 	sub.s	$f10,$f4,$f14
   104c4:	46025182 	mul.s	$f6,$f10,$f2
   104c8:	46067200 	add.s	$f8,$f14,$f6
   104cc:	e7a80108 	swc1	$f8,264(sp)
   104d0:	8e180000 	lw	t8,0(s0)
   104d4:	c7ac0100 	lwc1	$f12,256(sp)
   104d8:	c62e0074 	lwc1	$f14,116(s1)
   104dc:	3c073f80 	lui	a3,0x3f80
   104e0:	0c000000 	jal	0 <func_800437F0>
   104e4:	8f06000c 	lw	a2,12(t8)
   104e8:	e6200074 	swc1	$f0,116(s1)
   104ec:	8e0a0000 	lw	t2,0(s0)
   104f0:	c7ac0104 	lwc1	$f12,260(sp)
   104f4:	c62e0078 	lwc1	$f14,120(s1)
   104f8:	3c073f80 	lui	a3,0x3f80
   104fc:	0c000000 	jal	0 <func_800437F0>
   10500:	8d46000c 	lw	a2,12(t2)
   10504:	e6200078 	swc1	$f0,120(s1)
   10508:	8e0c0000 	lw	t4,0(s0)
   1050c:	c7ac0108 	lwc1	$f12,264(sp)
   10510:	c62e007c 	lwc1	$f14,124(s1)
   10514:	3c073f80 	lui	a3,0x3f80
   10518:	0c000000 	jal	0 <func_800437F0>
   1051c:	8d86000c 	lw	a2,12(t4)
   10520:	e620007c 	swc1	$f0,124(s1)
   10524:	8e030000 	lw	v1,0(s0)

00010528 <L80053D18>:
   10528:	860d003c 	lh	t5,60(s0)
   1052c:	3c013f80 	lui	at,0x3f80
   10530:	44819000 	mtc1	at,$f18
   10534:	448d2000 	mtc1	t5,$f4
   10538:	c62e0050 	lwc1	$f14,80(s1)
   1053c:	c6060004 	lwc1	$f6,4(s0)
   10540:	468022a0 	cvt.s.w	$f10,$f4
   10544:	c6200054 	lwc1	$f0,84(s1)
   10548:	44079000 	mfc1	a3,$f18
   1054c:	460e3201 	sub.s	$f8,$f6,$f14
   10550:	460a9083 	div.s	$f2,$f18,$f10
   10554:	c60a0008 	lwc1	$f10,8(s0)
   10558:	46005181 	sub.s	$f6,$f10,$f0
   1055c:	46024102 	mul.s	$f4,$f8,$f2
   10560:	00000000 	nop
   10564:	46023202 	mul.s	$f8,$f6,$f2
   10568:	46047300 	add.s	$f12,$f14,$f4
   1056c:	46080100 	add.s	$f4,$f0,$f8
   10570:	e7a40110 	swc1	$f4,272(sp)
   10574:	c60a000c 	lwc1	$f10,12(s0)
   10578:	c6300058 	lwc1	$f16,88(s1)
   1057c:	46105181 	sub.s	$f6,$f10,$f16
   10580:	46023202 	mul.s	$f8,$f6,$f2
   10584:	46088100 	add.s	$f4,$f16,$f8
   10588:	e7a40114 	swc1	$f4,276(sp)
   1058c:	8c66000c 	lw	a2,12(v1)
   10590:	0c000000 	jal	0 <func_800437F0>
   10594:	e7a200f4 	swc1	$f2,244(sp)
   10598:	e6200050 	swc1	$f0,80(s1)
   1059c:	8e190000 	lw	t9,0(s0)
   105a0:	c7ac0110 	lwc1	$f12,272(sp)
   105a4:	c62e0054 	lwc1	$f14,84(s1)
   105a8:	3c073f80 	lui	a3,0x3f80
   105ac:	0c000000 	jal	0 <func_800437F0>
   105b0:	8f26000c 	lw	a2,12(t9)
   105b4:	e6200054 	swc1	$f0,84(s1)
   105b8:	8e0b0000 	lw	t3,0(s0)
   105bc:	c7ac0114 	lwc1	$f12,276(sp)
   105c0:	c62e0058 	lwc1	$f14,88(s1)
   105c4:	3c073f80 	lui	a3,0x3f80
   105c8:	0c000000 	jal	0 <func_800437F0>
   105cc:	8d66000c 	lw	a2,12(t3)
   105d0:	c7a200f4 	lwc1	$f2,244(sp)
   105d4:	e6200058 	swc1	$f0,88(s1)
   105d8:	c60a0028 	lwc1	$f10,40(s0)
   105dc:	c62e00fc 	lwc1	$f14,252(s1)
   105e0:	8e0e0000 	lw	t6,0(s0)
   105e4:	3c073c23 	lui	a3,0x3c23
   105e8:	460e5181 	sub.s	$f6,$f10,$f14
   105ec:	34e7d70a 	ori	a3,a3,0xd70a
   105f0:	8dc6000c 	lw	a2,12(t6)
   105f4:	46023202 	mul.s	$f8,$f6,$f2
   105f8:	0c000000 	jal	0 <func_800437F0>
   105fc:	46087300 	add.s	$f12,$f14,$f8
   10600:	e62000fc 	swc1	$f0,252(s1)
   10604:	860f0034 	lh	t7,52(s0)
   10608:	8625015a 	lh	a1,346(s1)
   1060c:	860d003c 	lh	t5,60(s0)
   10610:	8e0b0000 	lw	t3,0(s0)
   10614:	01e5c023 	subu	t8,t7,a1
   10618:	00185400 	sll	t2,t8,0x10
   1061c:	000a6403 	sra	t4,t2,0x10
   10620:	018d001a 	div	zero,t4,t5
   10624:	0000c812 	mflo	t9
   10628:	00b92021 	addu	a0,a1,t9
   1062c:	00042400 	sll	a0,a0,0x10
   10630:	15a00002 	bnez	t5,1063c <L80053D18+0x114>
   10634:	00000000 	nop
   10638:	0007000d 	break	0x7
   1063c:	2401ffff 	li	at,-1
   10640:	15a10004 	bne	t5,at,10654 <L80053D18+0x12c>
   10644:	3c018000 	lui	at,0x8000
   10648:	15810002 	bne	t4,at,10654 <L80053D18+0x12c>
   1064c:	00000000 	nop
   10650:	0006000d 	break	0x6
   10654:	00042403 	sra	a0,a0,0x10
   10658:	2407000a 	li	a3,10
   1065c:	0c000000 	jal	0 <func_800437F0>
   10660:	8d66000c 	lw	a2,12(t3)
   10664:	a622015a 	sh	v0,346(s1)
   10668:	100000e0 	b	109ec <L800541C8+0x14>
   1066c:	2626005c 	addiu	a2,s1,92

00010670 <L80053E60>:
   10670:	26070004 	addiu	a3,s0,4
   10674:	260e0010 	addiu	t6,s0,16
   10678:	afae0024 	sw	t6,36(sp)
   1067c:	afa70028 	sw	a3,40(sp)
   10680:	27a400ec 	addiu	a0,sp,236
   10684:	8fa50030 	lw	a1,48(sp)
   10688:	0c000000 	jal	0 <func_800437F0>
   1068c:	8fa60034 	lw	a2,52(sp)
   10690:	8fa50028 	lw	a1,40(sp)
   10694:	2604002c 	addiu	a0,s0,44
   10698:	0c000000 	jal	0 <func_800437F0>
   1069c:	8fa60024 	lw	a2,36(sp)
   106a0:	8e0f0000 	lw	t7,0(s0)
   106a4:	3c073dcc 	lui	a3,0x3dcc
   106a8:	34e7cccd 	ori	a3,a3,0xcccd
   106ac:	c60c002c 	lwc1	$f12,44(s0)
   106b0:	c7ae00ec 	lwc1	$f14,236(sp)
   106b4:	0c000000 	jal	0 <func_800437F0>
   106b8:	8de6000c 	lw	a2,12(t7)
   106bc:	e7a000e4 	swc1	$f0,228(sp)
   106c0:	8e180000 	lw	t8,0(s0)
   106c4:	86040030 	lh	a0,48(s0)
   106c8:	87a500f0 	lh	a1,240(sp)
   106cc:	24070001 	li	a3,1
   106d0:	0c000000 	jal	0 <func_800437F0>
   106d4:	8f06000c 	lw	a2,12(t8)
   106d8:	a7a200e8 	sh	v0,232(sp)
   106dc:	8e0a0000 	lw	t2,0(s0)
   106e0:	86040032 	lh	a0,50(s0)
   106e4:	87a500f2 	lh	a1,242(sp)
   106e8:	24070001 	li	a3,1
   106ec:	0c000000 	jal	0 <func_800437F0>
   106f0:	8d46000c 	lw	a2,12(t2)
   106f4:	a7a200ea 	sh	v0,234(sp)
   106f8:	8fa40034 	lw	a0,52(sp)
   106fc:	8fa50030 	lw	a1,48(sp)
   10700:	0c000000 	jal	0 <func_800437F0>
   10704:	27a600e4 	addiu	a2,sp,228
   10708:	10000016 	b	10764 <L80053F54>
   1070c:	8e030000 	lw	v1,0(s0)

00010710 <L80053F00>:
   10710:	c60c0010 	lwc1	$f12,16(s0)
   10714:	c62e0074 	lwc1	$f14,116(s1)
   10718:	8c66000c 	lw	a2,12(v1)
   1071c:	0c000000 	jal	0 <func_800437F0>
   10720:	3c073f80 	lui	a3,0x3f80
   10724:	e6200074 	swc1	$f0,116(s1)
   10728:	8e0c0000 	lw	t4,0(s0)
   1072c:	c60c0014 	lwc1	$f12,20(s0)
   10730:	c62e0078 	lwc1	$f14,120(s1)
   10734:	3c073f80 	lui	a3,0x3f80
   10738:	0c000000 	jal	0 <func_800437F0>
   1073c:	8d86000c 	lw	a2,12(t4)
   10740:	e6200078 	swc1	$f0,120(s1)
   10744:	8e0d0000 	lw	t5,0(s0)
   10748:	c60c0018 	lwc1	$f12,24(s0)
   1074c:	c62e007c 	lwc1	$f14,124(s1)
   10750:	3c073f80 	lui	a3,0x3f80
   10754:	0c000000 	jal	0 <func_800437F0>
   10758:	8da6000c 	lw	a2,12(t5)
   1075c:	e620007c 	swc1	$f0,124(s1)
   10760:	8e030000 	lw	v1,0(s0)

00010764 <L80053F54>:
   10764:	c60c0004 	lwc1	$f12,4(s0)
   10768:	c62e0050 	lwc1	$f14,80(s1)
   1076c:	8c66000c 	lw	a2,12(v1)
   10770:	0c000000 	jal	0 <func_800437F0>
   10774:	3c073f80 	lui	a3,0x3f80
   10778:	e6200050 	swc1	$f0,80(s1)
   1077c:	8e190000 	lw	t9,0(s0)
   10780:	c60c0008 	lwc1	$f12,8(s0)
   10784:	c62e0054 	lwc1	$f14,84(s1)
   10788:	3c073f80 	lui	a3,0x3f80
   1078c:	0c000000 	jal	0 <func_800437F0>
   10790:	8f26000c 	lw	a2,12(t9)
   10794:	e6200054 	swc1	$f0,84(s1)
   10798:	8e0b0000 	lw	t3,0(s0)
   1079c:	c60c000c 	lwc1	$f12,12(s0)
   107a0:	c62e0058 	lwc1	$f14,88(s1)
   107a4:	3c073f80 	lui	a3,0x3f80
   107a8:	0c000000 	jal	0 <func_800437F0>
   107ac:	8d66000c 	lw	a2,12(t3)
   107b0:	e6200058 	swc1	$f0,88(s1)
   107b4:	8e0e0000 	lw	t6,0(s0)
   107b8:	c60c0028 	lwc1	$f12,40(s0)
   107bc:	c62e00fc 	lwc1	$f14,252(s1)
   107c0:	3c073f80 	lui	a3,0x3f80
   107c4:	0c000000 	jal	0 <func_800437F0>
   107c8:	8dc6000c 	lw	a2,12(t6)
   107cc:	e62000fc 	swc1	$f0,252(s1)
   107d0:	8e0f0000 	lw	t7,0(s0)
   107d4:	86040034 	lh	a0,52(s0)
   107d8:	8625015a 	lh	a1,346(s1)
   107dc:	24070001 	li	a3,1
   107e0:	0c000000 	jal	0 <func_800437F0>
   107e4:	8de6000c 	lw	a2,12(t7)
   107e8:	a622015a 	sh	v0,346(s1)
   107ec:	1000007f 	b	109ec <L800541C8+0x14>
   107f0:	2626005c 	addiu	a2,s1,92

000107f4 <L80053FE4>:
   107f4:	c60c0004 	lwc1	$f12,4(s0)
   107f8:	c62e0050 	lwc1	$f14,80(s1)
   107fc:	8c66000c 	lw	a2,12(v1)
   10800:	0c000000 	jal	0 <func_800437F0>
   10804:	3c073f80 	lui	a3,0x3f80
   10808:	e6200050 	swc1	$f0,80(s1)
   1080c:	8e180000 	lw	t8,0(s0)
   10810:	c62400f4 	lwc1	$f4,244(s1)
   10814:	c6280054 	lwc1	$f8,84(s1)
   10818:	c70a000c 	lwc1	$f10,12(t8)
   1081c:	c62e0058 	lwc1	$f14,88(s1)
   10820:	3c073f80 	lui	a3,0x3f80
   10824:	460a2182 	mul.s	$f6,$f4,$f10
   10828:	46064100 	add.s	$f4,$f8,$f6
   1082c:	e6240054 	swc1	$f4,84(s1)
   10830:	8e0a0000 	lw	t2,0(s0)
   10834:	c60c000c 	lwc1	$f12,12(s0)
   10838:	0c000000 	jal	0 <func_800437F0>
   1083c:	8d46000c 	lw	a2,12(t2)
   10840:	e6200058 	swc1	$f0,88(s1)
   10844:	8fa60034 	lw	a2,52(sp)
   10848:	8fa50030 	lw	a1,48(sp)
   1084c:	0c000000 	jal	0 <func_800437F0>
   10850:	27a400e4 	addiu	a0,sp,228
   10854:	8e0c0000 	lw	t4,0(s0)
   10858:	3c010000 	lui	at,0x0
   1085c:	c4280000 	lwc1	$f8,0(at)
   10860:	c58a0020 	lwc1	$f10,32(t4)
   10864:	3c013f00 	lui	at,0x3f00
   10868:	44812000 	mtc1	at,$f4
   1086c:	46085182 	mul.s	$f6,$f10,$f8
   10870:	87af00ea 	lh	t7,234(sp)
   10874:	87aa00e8 	lh	t2,232(sp)
   10878:	240c3a98 	li	t4,15000
   1087c:	2419c568 	li	t9,-15000
   10880:	29413a99 	slti	at,t2,15001
   10884:	3c073f80 	lui	a3,0x3f80
   10888:	46043280 	add.s	$f10,$f6,$f4
   1088c:	4600520d 	trunc.w.s	$f8,$f10
   10890:	440e4000 	mfc1	t6,$f8
   10894:	00000000 	nop
   10898:	01eec021 	addu	t8,t7,t6
   1089c:	14200002 	bnez	at,108a8 <L80053FE4+0xb4>
   108a0:	a7b800ea 	sh	t8,234(sp)
   108a4:	a7ac00e8 	sh	t4,232(sp)
   108a8:	87ad00e8 	lh	t5,232(sp)
   108ac:	29a1c568 	slti	at,t5,-15000
   108b0:	50200003 	beqzl	at,108c0 <L80053FE4+0xcc>
   108b4:	8e030000 	lw	v1,0(s0)
   108b8:	a7b900e8 	sh	t9,232(sp)
   108bc:	8e030000 	lw	v1,0(s0)
   108c0:	c7a600e4 	lwc1	$f6,228(sp)
   108c4:	c7ae00e4 	lwc1	$f14,228(sp)
   108c8:	c46c0024 	lwc1	$f12,36(v1)
   108cc:	460c303c 	c.lt.s	$f6,$f12
   108d0:	00000000 	nop
   108d4:	45030005 	bc1tl	108ec <L80053FE4+0xf8>
   108d8:	8fa40034 	lw	a0,52(sp)
   108dc:	0c000000 	jal	0 <func_800437F0>
   108e0:	8c66000c 	lw	a2,12(v1)
   108e4:	e7a000e4 	swc1	$f0,228(sp)
   108e8:	8fa40034 	lw	a0,52(sp)
   108ec:	8fa50030 	lw	a1,48(sp)
   108f0:	0c000000 	jal	0 <func_800437F0>
   108f4:	27a600e4 	addiu	a2,sp,228
   108f8:	860b003c 	lh	t3,60(s0)
   108fc:	8e030000 	lw	v1,0(s0)
   10900:	c62e00fc 	lwc1	$f14,252(s1)
   10904:	448b4000 	mtc1	t3,$f8
   10908:	c4640008 	lwc1	$f4,8(v1)
   1090c:	3c073f80 	lui	a3,0x3f80
   10910:	468041a0 	cvt.s.w	$f6,$f8
   10914:	8c66000c 	lw	a2,12(v1)
   10918:	460e2281 	sub.s	$f10,$f4,$f14
   1091c:	46065103 	div.s	$f4,$f10,$f6
   10920:	0c000000 	jal	0 <func_800437F0>
   10924:	46047300 	add.s	$f12,$f14,$f4
   10928:	e62000fc 	swc1	$f0,252(s1)
   1092c:	8e0f0000 	lw	t7,0(s0)
   10930:	86040034 	lh	a0,52(s0)
   10934:	8625015a 	lh	a1,346(s1)
   10938:	24070001 	li	a3,1
   1093c:	0c000000 	jal	0 <func_800437F0>
   10940:	8de6000c 	lw	a2,12(t7)
   10944:	a622015a 	sh	v0,346(s1)
   10948:	10000028 	b	109ec <L800541C8+0x14>
   1094c:	2626005c 	addiu	a2,s1,92

00010950 <L80054140>:
   10950:	860e0034 	lh	t6,52(s0)
   10954:	2626005c 	addiu	a2,s1,92
   10958:	10000024 	b	109ec <L800541C8+0x14>
   1095c:	a60e0036 	sh	t6,54(s0)

00010960 <L80054150>:
   10960:	86220162 	lh	v0,354(s1)
   10964:	00002825 	move	a1,zero
   10968:	04410003 	bgez	v0,10978 <L80054150+0x18>
   1096c:	00401825 	move	v1,v0
   10970:	10000001 	b	10978 <L80054150+0x18>
   10974:	00001825 	move	v1,zero
   10978:	8e38008c 	lw	t8,140(s1)
   1097c:	00035080 	sll	t2,v1,0x2
   10980:	24060001 	li	a2,1
   10984:	030a6021 	addu	t4,t8,t2
   10988:	0c000000 	jal	0 <func_800437F0>
   1098c:	8d840790 	lw	a0,1936(t4)

00010990 <L80054180>:
   10990:	86220162 	lh	v0,354(s1)
   10994:	8faf0034 	lw	t7,52(sp)
   10998:	04410003 	bgez	v0,109a8 <L80054180+0x18>
   1099c:	00401825 	move	v1,v0
   109a0:	10000001 	b	109a8 <L80054180+0x18>
   109a4:	00001825 	move	v1,zero
   109a8:	8e2d008c 	lw	t5,140(s1)
   109ac:	8df80000 	lw	t8,0(t7)
   109b0:	0003c880 	sll	t9,v1,0x2
   109b4:	01b95821 	addu	t3,t5,t9
   109b8:	8d640790 	lw	a0,1936(t3)
   109bc:	ae38005c 	sw	t8,92(s1)
   109c0:	8dee0004 	lw	t6,4(t7)
   109c4:	02202825 	move	a1,s1
   109c8:	ae2e0060 	sw	t6,96(s1)
   109cc:	8df80008 	lw	t8,8(t7)
   109d0:	0c000000 	jal	0 <func_800437F0>
   109d4:	ae380064 	sw	t8,100(s1)

000109d8 <L800541C8>:
   109d8:	862a0164 	lh	t2,356(s1)
   109dc:	2626005c 	addiu	a2,s1,92
   109e0:	51400003 	beqzl	t2,109f0 <L800541C8+0x18>
   109e4:	8fac0034 	lw	t4,52(sp)
   109e8:	a6200160 	sh	zero,352(s1)
   109ec:	8fac0034 	lw	t4,52(sp)
   109f0:	02202025 	move	a0,s1
   109f4:	8d990000 	lw	t9,0(t4)
   109f8:	acd90000 	sw	t9,0(a2)
   109fc:	8d8d0004 	lw	t5,4(t4)
   10a00:	accd0004 	sw	t5,4(a2)
   10a04:	8d990008 	lw	t9,8(t4)
   10a08:	acd90008 	sw	t9,8(a2)
   10a0c:	8e0b0000 	lw	t3,0(s0)
   10a10:	8fa50030 	lw	a1,48(sp)
   10a14:	91630000 	lbu	v1,0(t3)
   10a18:	306f0080 	andi	t7,v1,0x80
   10a1c:	51e00007 	beqzl	t7,10a3c <L800541C8+0x64>
   10a20:	30780040 	andi	t8,v1,0x40
   10a24:	0c000000 	jal	0 <func_800437F0>
   10a28:	afa6002c 	sw	a2,44(sp)
   10a2c:	8e0e0000 	lw	t6,0(s0)
   10a30:	8fa6002c 	lw	a2,44(sp)
   10a34:	91c30000 	lbu	v1,0(t6)
   10a38:	30780040 	andi	t8,v1,0x40
   10a3c:	13000014 	beqz	t8,10a90 <L800541C8+0xb8>
   10a40:	00c02825 	move	a1,a2
   10a44:	c608001c 	lwc1	$f8,28(s0)
   10a48:	8e2a0090 	lw	t2,144(s1)
   10a4c:	e5480024 	swc1	$f8,36(t2)
   10a50:	8e2c0090 	lw	t4,144(s1)
   10a54:	c60a0024 	lwc1	$f10,36(s0)
   10a58:	e58a002c 	swc1	$f10,44(t4)
   10a5c:	8e220090 	lw	v0,144(s1)
   10a60:	8fab0088 	lw	t3,136(sp)
   10a64:	8c4d067c 	lw	t5,1660(v0)
   10a68:	000dc900 	sll	t9,t5,0x4
   10a6c:	0723000f 	bgezl	t9,10aac <L800541C8+0xd4>
   10a70:	860e0038 	lh	t6,56(s0)
   10a74:	816f014f 	lb	t7,335(t3)
   10a78:	24010001 	li	at,1
   10a7c:	51e1000b 	beql	t7,at,10aac <L800541C8+0xd4>
   10a80:	860e0038 	lh	t6,56(s0)
   10a84:	c6060020 	lwc1	$f6,32(s0)
   10a88:	10000007 	b	10aa8 <L800541C8+0xd0>
   10a8c:	e4460028 	swc1	$f6,40(v0)
   10a90:	c7a40098 	lwc1	$f4,152(sp)
   10a94:	e604001c 	swc1	$f4,28(s0)
   10a98:	c7a8009c 	lwc1	$f8,156(sp)
   10a9c:	e6080020 	swc1	$f8,32(s0)
   10aa0:	c7aa00a0 	lwc1	$f10,160(sp)
   10aa4:	e60a0024 	swc1	$f10,36(s0)
   10aa8:	860e0038 	lh	t6,56(s0)
   10aac:	55c00006 	bnezl	t6,10ac8 <L800541C8+0xf0>
   10ab0:	8e2a0090 	lw	t2,144(s1)
   10ab4:	86220160 	lh	v0,352(s1)
   10ab8:	18400002 	blez	v0,10ac4 <L800541C8+0xec>
   10abc:	2458ffff 	addiu	t8,v0,-1
   10ac0:	a6380160 	sh	t8,352(s1)
   10ac4:	8e2a0090 	lw	t2,144(s1)
   10ac8:	1140000d 	beqz	t2,10b00 <L800541C8+0x128>
   10acc:	00000000 	nop
   10ad0:	c6260050 	lwc1	$f6,80(s1)
   10ad4:	c6240094 	lwc1	$f4,148(s1)
   10ad8:	c62a0054 	lwc1	$f10,84(s1)
   10adc:	46043201 	sub.s	$f8,$f6,$f4
   10ae0:	c6260098 	lwc1	$f6,152(s1)
   10ae4:	46065101 	sub.s	$f4,$f10,$f6
   10ae8:	e62800e4 	swc1	$f8,228(s1)
   10aec:	c6280058 	lwc1	$f8,88(s1)
   10af0:	c62a009c 	lwc1	$f10,156(s1)
   10af4:	e62400e8 	swc1	$f4,232(s1)
   10af8:	460a4181 	sub.s	$f6,$f8,$f10
   10afc:	e62600ec 	swc1	$f6,236(s1)
   10b00:	0c000000 	jal	0 <func_800437F0>
   10b04:	8fa40030 	lw	a0,48(sp)
   10b08:	e62000dc 	swc1	$f0,220(s1)
   10b0c:	24020001 	li	v0,1
   10b10:	8fbf001c 	lw	ra,28(sp)
   10b14:	8fb00014 	lw	s0,20(sp)
   10b18:	8fb10018 	lw	s1,24(sp)
   10b1c:	03e00008 	jr	ra
   10b20:	27bd0118 	addiu	sp,sp,280

00010b24 <Camera_DebugPrintSplineArray>:
   10b24:	27bdffc0 	addiu	sp,sp,-64
   10b28:	afa50044 	sw	a1,68(sp)
   10b2c:	00802825 	move	a1,a0
   10b30:	afa40040 	sw	a0,64(sp)
   10b34:	afbf003c 	sw	ra,60(sp)
   10b38:	afb20020 	sw	s2,32(sp)
   10b3c:	3c040000 	lui	a0,0x0
   10b40:	00c09025 	move	s2,a2
   10b44:	afbe0038 	sw	s8,56(sp)
   10b48:	afb70034 	sw	s7,52(sp)
   10b4c:	afb60030 	sw	s6,48(sp)
   10b50:	afb5002c 	sw	s5,44(sp)
   10b54:	afb40028 	sw	s4,40(sp)
   10b58:	afb30024 	sw	s3,36(sp)
   10b5c:	afb1001c 	sw	s1,28(sp)
   10b60:	afb00018 	sw	s0,24(sp)
   10b64:	0c000000 	jal	0 <func_800437F0>
   10b68:	248404d0 	addiu	a0,a0,1232
   10b6c:	87ae0046 	lh	t6,70(sp)
   10b70:	00008825 	move	s1,zero
   10b74:	02408025 	move	s0,s2
   10b78:	19c0002d 	blez	t6,10c30 <Camera_DebugPrintSplineArray+0x10c>
   10b7c:	3c170000 	lui	s7,0x0
   10b80:	3c1e0000 	lui	s8,0x0
   10b84:	3c160000 	lui	s6,0x0
   10b88:	3c150000 	lui	s5,0x0
   10b8c:	3c140000 	lui	s4,0x0
   10b90:	3c130000 	lui	s3,0x0
   10b94:	3c120000 	lui	s2,0x0
   10b98:	265204f0 	addiu	s2,s2,1264
   10b9c:	2673050c 	addiu	s3,s3,1292
   10ba0:	26940528 	addiu	s4,s4,1320
   10ba4:	26b50544 	addiu	s5,s5,1348
   10ba8:	26d60560 	addiu	s6,s6,1376
   10bac:	27de05a4 	addiu	s8,s8,1444
   10bb0:	26f7057c 	addiu	s7,s7,1404
   10bb4:	02402025 	move	a0,s2
   10bb8:	0c000000 	jal	0 <func_800437F0>
   10bbc:	02202825 	move	a1,s1
   10bc0:	02602025 	move	a0,s3
   10bc4:	0c000000 	jal	0 <func_800437F0>
   10bc8:	82050000 	lb	a1,0(s0)
   10bcc:	02802025 	move	a0,s4
   10bd0:	0c000000 	jal	0 <func_800437F0>
   10bd4:	82050001 	lb	a1,1(s0)
   10bd8:	02a02025 	move	a0,s5
   10bdc:	0c000000 	jal	0 <func_800437F0>
   10be0:	96050002 	lhu	a1,2(s0)
   10be4:	c6040004 	lwc1	$f4,4(s0)
   10be8:	02c02025 	move	a0,s6
   10bec:	460021a1 	cvt.d.s	$f6,$f4
   10bf0:	44073000 	mfc1	a3,$f6
   10bf4:	44063800 	mfc1	a2,$f7
   10bf8:	0c000000 	jal	0 <func_800437F0>
   10bfc:	00000000 	nop
   10c00:	02e02025 	move	a0,s7
   10c04:	86050008 	lh	a1,8(s0)
   10c08:	8606000a 	lh	a2,10(s0)
   10c0c:	0c000000 	jal	0 <func_800437F0>
   10c10:	8607000c 	lh	a3,12(s0)
   10c14:	0c000000 	jal	0 <func_800437F0>
   10c18:	03c02025 	move	a0,s8
   10c1c:	87af0046 	lh	t7,70(sp)
   10c20:	26310001 	addiu	s1,s1,1
   10c24:	26100010 	addiu	s0,s0,16
   10c28:	562fffe3 	bnel	s1,t7,10bb8 <Camera_DebugPrintSplineArray+0x94>
   10c2c:	02402025 	move	a0,s2
   10c30:	3c040000 	lui	a0,0x0
   10c34:	0c000000 	jal	0 <func_800437F0>
   10c38:	248405ac 	addiu	a0,a0,1452
   10c3c:	8fbf003c 	lw	ra,60(sp)
   10c40:	8fb00018 	lw	s0,24(sp)
   10c44:	8fb1001c 	lw	s1,28(sp)
   10c48:	8fb20020 	lw	s2,32(sp)
   10c4c:	8fb30024 	lw	s3,36(sp)
   10c50:	8fb40028 	lw	s4,40(sp)
   10c54:	8fb5002c 	lw	s5,44(sp)
   10c58:	8fb60030 	lw	s6,48(sp)
   10c5c:	8fb70034 	lw	s7,52(sp)
   10c60:	8fbe0038 	lw	s8,56(sp)
   10c64:	03e00008 	jr	ra
   10c68:	27bd0040 	addiu	sp,sp,64

00010c6c <Camera_Vec3fCopy>:
   10c6c:	c4840000 	lwc1	$f4,0(a0)
   10c70:	e4a40000 	swc1	$f4,0(a1)
   10c74:	c4860004 	lwc1	$f6,4(a0)
   10c78:	e4a60004 	swc1	$f6,4(a1)
   10c7c:	c4880008 	lwc1	$f8,8(a0)
   10c80:	03e00008 	jr	ra
   10c84:	e4a80008 	swc1	$f8,8(a1)

00010c88 <func_80054478>:
   10c88:	27bdffd0 	addiu	sp,sp,-48
   10c8c:	afa40030 	sw	a0,48(sp)
   10c90:	afbf0014 	sw	ra,20(sp)
   10c94:	00a02025 	move	a0,a1
   10c98:	afa60038 	sw	a2,56(sp)
   10c9c:	0c000000 	jal	0 <func_800437F0>
   10ca0:	27a5001c 	addiu	a1,sp,28
   10ca4:	27a40028 	addiu	a0,sp,40
   10ca8:	0c000000 	jal	0 <func_800437F0>
   10cac:	27a5001c 	addiu	a1,sp,28
   10cb0:	8fa50030 	lw	a1,48(sp)
   10cb4:	87ae002e 	lh	t6,46(sp)
   10cb8:	8fa40038 	lw	a0,56(sp)
   10cbc:	84af000e 	lh	t7,14(a1)
   10cc0:	27a60028 	addiu	a2,sp,40
   10cc4:	01cfc021 	addu	t8,t6,t7
   10cc8:	0c000000 	jal	0 <func_800437F0>
   10ccc:	a7b8002e 	sh	t8,46(sp)
   10cd0:	8fbf0014 	lw	ra,20(sp)
   10cd4:	27bd0030 	addiu	sp,sp,48
   10cd8:	03e00008 	jr	ra
   10cdc:	00000000 	nop

00010ce0 <Camera_Demo1>:
   10ce0:	27bdff68 	addiu	sp,sp,-152
   10ce4:	afbf0024 	sw	ra,36(sp)
   10ce8:	afb00020 	sw	s0,32(sp)
   10cec:	8c8e0124 	lw	t6,292(a0)
   10cf0:	00808025 	move	s0,a0
   10cf4:	2401000a 	li	at,10
   10cf8:	afae0084 	sw	t6,132(sp)
   10cfc:	8c8f0128 	lw	t7,296(a0)
   10d00:	afaf0080 	sw	t7,128(sp)
   10d04:	8482015e 	lh	v0,350(a0)
   10d08:	3c040000 	lui	a0,0x0
   10d0c:	5040000a 	beqzl	v0,10d38 <Camera_Demo1+0x58>
   10d10:	86090142 	lh	t1,322(s0)
   10d14:	10410007 	beq	v0,at,10d34 <Camera_Demo1+0x54>
   10d18:	24010014 	li	at,20
   10d1c:	10410005 	beq	v0,at,10d34 <Camera_Demo1+0x54>
   10d20:	3c180000 	lui	t8,0x0
   10d24:	8f180000 	lw	t8,0(t8)
   10d28:	87190314 	lh	t9,788(t8)
   10d2c:	5320000d 	beqzl	t9,10d64 <Camera_Demo1+0x84>
   10d30:	86180000 	lh	t8,0(s0)
   10d34:	86090142 	lh	t1,322(s0)
   10d38:	3c0b0000 	lui	t3,0x0
   10d3c:	860c0144 	lh	t4,324(s0)
   10d40:	000950c0 	sll	t2,t1,0x3
   10d44:	016a5821 	addu	t3,t3,t2
   10d48:	8d6b0004 	lw	t3,4(t3)
   10d4c:	000c68c0 	sll	t5,t4,0x3
   10d50:	016d7021 	addu	t6,t3,t5
   10d54:	8dc20004 	lw	v0,4(t6)
   10d58:	844f0000 	lh	t7,0(v0)
   10d5c:	a60f0000 	sh	t7,0(s0)
   10d60:	86180000 	lh	t8,0(s0)
   10d64:	3c010000 	lui	at,0x0
   10d68:	ac380000 	sw	t8,0(at)
   10d6c:	8606015e 	lh	a2,350(s0)
   10d70:	24010001 	li	at,1
   10d74:	50c00006 	beqzl	a2,10d90 <Camera_Demo1+0xb0>
   10d78:	44802000 	mtc1	zero,$f4
   10d7c:	50c10025 	beql	a2,at,10e14 <Camera_Demo1+0x134>
   10d80:	26030004 	addiu	v1,s0,4
   10d84:	1000007b 	b	10f74 <Camera_Demo1+0x294>
   10d88:	8fbf0024 	lw	ra,36(sp)
   10d8c:	44802000 	mtc1	zero,$f4
   10d90:	26030004 	addiu	v1,s0,4
   10d94:	a4600004 	sh	zero,4(v1)
   10d98:	e4640000 	swc1	$f4,0(v1)
   10d9c:	8619015e 	lh	t9,350(s0)
   10da0:	860a012c 	lh	t2,300(s0)
   10da4:	3c060000 	lui	a2,0x0
   10da8:	27290001 	addiu	t1,t9,1
   10dac:	15400004 	bnez	t2,10dc0 <Camera_Demo1+0xe0>
   10db0:	a609015e 	sh	t1,350(s0)
   10db4:	3c060000 	lui	a2,0x0
   10db8:	10000002 	b	10dc4 <Camera_Demo1+0xe4>
   10dbc:	24c60000 	addiu	a2,a2,0
   10dc0:	24c60000 	addiu	a2,a2,0
   10dc4:	8e0c008c 	lw	t4,140(s0)
   10dc8:	24840000 	addiu	a0,a0,0
   10dcc:	0c000000 	jal	0 <func_800437F0>
   10dd0:	8d85009c 	lw	a1,156(t4)
   10dd4:	3c0b0000 	lui	t3,0x0
   10dd8:	8d6b0000 	lw	t3,0(t3)
   10ddc:	3c040000 	lui	a0,0x0
   10de0:	24840000 	addiu	a0,a0,0
   10de4:	856d030e 	lh	t5,782(t3)
   10de8:	24050005 	li	a1,5
   10dec:	51a00009 	beqzl	t5,10e14 <Camera_Demo1+0x134>
   10df0:	26030004 	addiu	v1,s0,4
   10df4:	0c000000 	jal	0 <func_800437F0>
   10df8:	8fa60084 	lw	a2,132(sp)
   10dfc:	3c040000 	lui	a0,0x0
   10e00:	24840000 	addiu	a0,a0,0
   10e04:	24050005 	li	a1,5
   10e08:	0c000000 	jal	0 <func_800437F0>
   10e0c:	8fa60080 	lw	a2,128(sp)
   10e10:	26030004 	addiu	v1,s0,4
   10e14:	24680004 	addiu	t0,v1,4
   10e18:	260600fc 	addiu	a2,s0,252
   10e1c:	260e012c 	addiu	t6,s0,300
   10e20:	afae0030 	sw	t6,48(sp)
   10e24:	afa60034 	sw	a2,52(sp)
   10e28:	afa80010 	sw	t0,16(sp)
   10e2c:	afa80028 	sw	t0,40(sp)
   10e30:	afa30014 	sw	v1,20(sp)
   10e34:	afa3002c 	sw	v1,44(sp)
   10e38:	27a4005c 	addiu	a0,sp,92
   10e3c:	27a5004c 	addiu	a1,sp,76
   10e40:	0c000000 	jal	0 <func_800437F0>
   10e44:	8fa70080 	lw	a3,128(sp)
   10e48:	8fa3002c 	lw	v1,44(sp)
   10e4c:	8fa60034 	lw	a2,52(sp)
   10e50:	14400009 	bnez	v0,10e78 <Camera_Demo1+0x198>
   10e54:	8fa80028 	lw	t0,40(sp)
   10e58:	27a40050 	addiu	a0,sp,80
   10e5c:	27a5004c 	addiu	a1,sp,76
   10e60:	8fa70084 	lw	a3,132(sp)
   10e64:	afa80010 	sw	t0,16(sp)
   10e68:	0c000000 	jal	0 <func_800437F0>
   10e6c:	afa30014 	sw	v1,20(sp)
   10e70:	50400005 	beqzl	v0,10e88 <Camera_Demo1+0x1a8>
   10e74:	8fb90030 	lw	t9,48(sp)
   10e78:	860f015e 	lh	t7,350(s0)
   10e7c:	25f80001 	addiu	t8,t7,1
   10e80:	a618015e 	sh	t8,350(s0)
   10e84:	8fb90030 	lw	t9,48(sp)
   10e88:	27a4005c 	addiu	a0,sp,92
   10e8c:	26050074 	addiu	a1,s0,116
   10e90:	87290000 	lh	t1,0(t9)
   10e94:	1120001c 	beqz	t1,10f08 <Camera_Demo1+0x228>
   10e98:	00000000 	nop
   10e9c:	8e050090 	lw	a1,144(s0)
   10ea0:	3c040000 	lui	a0,0x0
   10ea4:	10a00012 	beqz	a1,10ef0 <Camera_Demo1+0x210>
   10ea8:	00000000 	nop
   10eac:	8caa0130 	lw	t2,304(a1)
   10eb0:	1140000f 	beqz	t2,10ef0 <Camera_Demo1+0x210>
   10eb4:	00000000 	nop
   10eb8:	0c000000 	jal	0 <func_800437F0>
   10ebc:	27a40068 	addiu	a0,sp,104
   10ec0:	26060074 	addiu	a2,s0,116
   10ec4:	afa60030 	sw	a2,48(sp)
   10ec8:	27a40068 	addiu	a0,sp,104
   10ecc:	0c000000 	jal	0 <func_800437F0>
   10ed0:	27a5005c 	addiu	a1,sp,92
   10ed4:	26060050 	addiu	a2,s0,80
   10ed8:	afa60034 	sw	a2,52(sp)
   10edc:	27a40068 	addiu	a0,sp,104
   10ee0:	0c000000 	jal	0 <func_800437F0>
   10ee4:	27a50050 	addiu	a1,sp,80
   10ee8:	1000000f 	b	10f28 <Camera_Demo1+0x248>
   10eec:	8fa60034 	lw	a2,52(sp)
   10ef0:	0c000000 	jal	0 <func_800437F0>
   10ef4:	24840000 	addiu	a0,a0,0
   10ef8:	260c0074 	addiu	t4,s0,116
   10efc:	afac0030 	sw	t4,48(sp)
   10f00:	10000009 	b	10f28 <Camera_Demo1+0x248>
   10f04:	26060050 	addiu	a2,s0,80
   10f08:	0c000000 	jal	0 <func_800437F0>
   10f0c:	afa50030 	sw	a1,48(sp)
   10f10:	26060050 	addiu	a2,s0,80
   10f14:	00c02825 	move	a1,a2
   10f18:	afa60034 	sw	a2,52(sp)
   10f1c:	0c000000 	jal	0 <func_800437F0>
   10f20:	27a40050 	addiu	a0,sp,80
   10f24:	8fa60034 	lw	a2,52(sp)
   10f28:	8fad0030 	lw	t5,48(sp)
   10f2c:	2605005c 	addiu	a1,s0,92
   10f30:	3c014380 	lui	at,0x4380
   10f34:	8daf0000 	lw	t7,0(t5)
   10f38:	44814000 	mtc1	at,$f8
   10f3c:	00c02025 	move	a0,a2
   10f40:	acaf0000 	sw	t7,0(a1)
   10f44:	8dae0004 	lw	t6,4(t5)
   10f48:	acae0004 	sw	t6,4(a1)
   10f4c:	8daf0008 	lw	t7,8(t5)
   10f50:	acaf0008 	sw	t7,8(a1)
   10f54:	c7a6004c 	lwc1	$f6,76(sp)
   10f58:	46083282 	mul.s	$f10,$f6,$f8
   10f5c:	4600540d 	trunc.w.s	$f16,$f10
   10f60:	44198000 	mfc1	t9,$f16
   10f64:	0c000000 	jal	0 <func_800437F0>
   10f68:	a619015a 	sh	t9,346(s0)
   10f6c:	e60000dc 	swc1	$f0,220(s0)
   10f70:	8fbf0024 	lw	ra,36(sp)
   10f74:	8fb00020 	lw	s0,32(sp)
   10f78:	27bd0098 	addiu	sp,sp,152
   10f7c:	03e00008 	jr	ra
   10f80:	24020001 	li	v0,1

00010f84 <Camera_Demo2>:
   10f84:	27bdffe8 	addiu	sp,sp,-24
   10f88:	afbf0014 	sw	ra,20(sp)
   10f8c:	0c000000 	jal	0 <func_800437F0>
   10f90:	00000000 	nop
   10f94:	8fbf0014 	lw	ra,20(sp)
   10f98:	27bd0018 	addiu	sp,sp,24
   10f9c:	03e00008 	jr	ra
   10fa0:	00000000 	nop

00010fa4 <Camera_Demo3>:
   10fa4:	27bdff58 	addiu	sp,sp,-168
   10fa8:	afb10018 	sw	s1,24(sp)
   10fac:	00808825 	move	s1,a0
   10fb0:	afbf001c 	sw	ra,28(sp)
   10fb4:	afb00014 	sw	s0,20(sp)
   10fb8:	a3a00053 	sb	zero,83(sp)
   10fbc:	0c000000 	jal	0 <func_800437F0>
   10fc0:	8c840090 	lw	a0,144(a0)
   10fc4:	862e014c 	lh	t6,332(s1)
   10fc8:	8622015e 	lh	v0,350(s1)
   10fcc:	46000406 	mov.s	$f16,$f0
   10fd0:	31cfffef 	andi	t7,t6,0xffef
   10fd4:	1040000a 	beqz	v0,11000 <Camera_Demo3+0x5c>
   10fd8:	a62f014c 	sh	t7,332(s1)
   10fdc:	2401000a 	li	at,10
   10fe0:	10410007 	beq	v0,at,11000 <Camera_Demo3+0x5c>
   10fe4:	24010014 	li	at,20
   10fe8:	10410005 	beq	v0,at,11000 <Camera_Demo3+0x5c>
   10fec:	3c180000 	lui	t8,0x0
   10ff0:	8f180000 	lw	t8,0(t8)
   10ff4:	87030314 	lh	v1,788(t8)
   10ff8:	1060001a 	beqz	v1,11064 <Camera_Demo3+0xc0>
   10ffc:	00000000 	nop
   11000:	86390142 	lh	t9,322(s1)
   11004:	3c090000 	lui	t1,0x0
   11008:	862a0144 	lh	t2,324(s1)
   1100c:	001940c0 	sll	t0,t9,0x3
   11010:	01284821 	addu	t1,t1,t0
   11014:	8d290004 	lw	t1,4(t1)
   11018:	000a58c0 	sll	t3,t2,0x3
   1101c:	3c180000 	lui	t8,0x0
   11020:	012b6021 	addu	t4,t1,t3
   11024:	8d820004 	lw	v0,4(t4)
   11028:	844d0000 	lh	t5,0(v0)
   1102c:	24420008 	addiu	v0,v0,8
   11030:	448d2000 	mtc1	t5,$f4
   11034:	00000000 	nop
   11038:	468021a0 	cvt.s.w	$f6,$f4
   1103c:	e6260000 	swc1	$f6,0(s1)
   11040:	844efffc 	lh	t6,-4(v0)
   11044:	448e4000 	mtc1	t6,$f8
   11048:	00000000 	nop
   1104c:	468042a0 	cvt.s.w	$f10,$f8
   11050:	e62a0004 	swc1	$f10,4(s1)
   11054:	844f0000 	lh	t7,0(v0)
   11058:	a62f0008 	sh	t7,8(s1)
   1105c:	8f180000 	lw	t8,0(t8)
   11060:	87030314 	lh	v1,788(t8)
   11064:	10600004 	beqz	v1,11078 <Camera_Demo3+0xd4>
   11068:	02202025 	move	a0,s1
   1106c:	0c000000 	jal	0 <func_800437F0>
   11070:	e7b0004c 	swc1	$f16,76(sp)
   11074:	c7b0004c 	lwc1	$f16,76(sp)
   11078:	26250050 	addiu	a1,s1,80
   1107c:	2626005c 	addiu	a2,s1,92
   11080:	afa60034 	sw	a2,52(sp)
   11084:	afa50030 	sw	a1,48(sp)
   11088:	27a40090 	addiu	a0,sp,144
   1108c:	0c000000 	jal	0 <func_800437F0>
   11090:	e7b0004c 	swc1	$f16,76(sp)
   11094:	86390008 	lh	t9,8(s1)
   11098:	3c010000 	lui	at,0x0
   1109c:	c7b0004c 	lwc1	$f16,76(sp)
   110a0:	ac390000 	sw	t9,0(at)
   110a4:	9628015e 	lhu	t0,350(s1)
   110a8:	2d01001f 	sltiu	at,t0,31
   110ac:	102001fb 	beqz	at,1189c <L8005508C>
   110b0:	00084080 	sll	t0,t0,0x2
   110b4:	3c010000 	lui	at,0x0
   110b8:	00280821 	addu	at,at,t0
   110bc:	8c280000 	lw	t0,0(at)
   110c0:	01000008 	jr	t0
   110c4:	00000000 	nop

000110c8 <L800548B8>:
   110c8:	862a014c 	lh	t2,332(s1)
   110cc:	02202025 	move	a0,s1
   110d0:	3149fff3 	andi	t1,t2,0xfff3
   110d4:	0c000000 	jal	0 <func_800437F0>
   110d8:	a629014c 	sh	t1,332(s1)
   110dc:	c6320000 	lwc1	$f18,0(s1)
   110e0:	2630000c 	addiu	s0,s1,12
   110e4:	26220094 	addiu	v0,s1,148
   110e8:	e63200fc 	swc1	$f18,252(s1)
   110ec:	a6000010 	sh	zero,16(s0)
   110f0:	860b0010 	lh	t3,16(s0)
   110f4:	3c01c6fa 	lui	at,0xc6fa
   110f8:	44812000 	mtc1	at,$f4
   110fc:	a62b015a 	sh	t3,346(s1)
   11100:	8c4d0000 	lw	t5,0(v0)
   11104:	ae0d0000 	sw	t5,0(s0)
   11108:	8c4c0004 	lw	t4,4(v0)
   1110c:	ae0c0004 	sw	t4,4(s0)
   11110:	8c4d0008 	lw	t5,8(v0)
   11114:	ae0d0008 	sw	t5,8(s0)
   11118:	c6200104 	lwc1	$f0,260(s1)
   1111c:	46002032 	c.eq.s	$f4,$f0
   11120:	00000000 	nop
   11124:	45030003 	bc1tl	11134 <L800548B8+0x6c>
   11128:	8444000e 	lh	a0,14(v0)
   1112c:	e6000004 	swc1	$f0,4(s0)
   11130:	8444000e 	lh	a0,14(v0)
   11134:	afa20028 	sw	v0,40(sp)
   11138:	0c000000 	jal	0 <func_800437F0>
   1113c:	a7a4004a 	sh	a0,74(sp)
   11140:	3c014220 	lui	at,0x4220
   11144:	44811000 	mtc1	at,$f2
   11148:	c6080000 	lwc1	$f8,0(s0)
   1114c:	87a4004a 	lh	a0,74(sp)
   11150:	46020182 	mul.s	$f6,$f0,$f2
   11154:	46083280 	add.s	$f10,$f6,$f8
   11158:	e7aa0068 	swc1	$f10,104(sp)
   1115c:	c6120004 	lwc1	$f18,4(s0)
   11160:	46029100 	add.s	$f4,$f18,$f2
   11164:	0c000000 	jal	0 <func_800437F0>
   11168:	e7a4006c 	swc1	$f4,108(sp)
   1116c:	3c014220 	lui	at,0x4220
   11170:	44813000 	mtc1	at,$f6
   11174:	c60a0008 	lwc1	$f10,8(s0)
   11178:	87a4004a 	lh	a0,74(sp)
   1117c:	46060202 	mul.s	$f8,$f0,$f6
   11180:	24190001 	li	t9,1
   11184:	2408ffff 	li	t0,-1
   11188:	460a4480 	add.s	$f18,$f8,$f10
   1118c:	e7b20070 	swc1	$f18,112(sp)
   11190:	8e2e008c 	lw	t6,140(s1)
   11194:	8dcf009c 	lw	t7,156(t6)
   11198:	31f80001 	andi	t8,t7,0x1
   1119c:	53000007 	beqzl	t8,111bc <L800548B8+0xf4>
   111a0:	24843fff 	addiu	a0,a0,16383
   111a4:	2484c001 	addiu	a0,a0,-16383
   111a8:	00042400 	sll	a0,a0,0x10
   111ac:	00042403 	sra	a0,a0,0x10
   111b0:	10000005 	b	111c8 <L800548B8+0x100>
   111b4:	a6190012 	sh	t9,18(s0)
   111b8:	24843fff 	addiu	a0,a0,16383
   111bc:	00042400 	sll	a0,a0,0x10
   111c0:	00042403 	sra	a0,a0,0x10
   111c4:	a6080012 	sh	t0,18(s0)
   111c8:	0c000000 	jal	0 <func_800437F0>
   111cc:	a7a4004a 	sh	a0,74(sp)
   111d0:	3c030000 	lui	v1,0x0
   111d4:	24630000 	addiu	v1,v1,0
   111d8:	c4640008 	lwc1	$f4,8(v1)
   111dc:	c7a80068 	lwc1	$f8,104(sp)
   111e0:	3c0140a0 	lui	at,0x40a0
   111e4:	46040182 	mul.s	$f6,$f0,$f4
   111e8:	44812000 	mtc1	at,$f4
   111ec:	87a4004a 	lh	a0,74(sp)
   111f0:	46083280 	add.s	$f10,$f6,$f8
   111f4:	e7aa0074 	swc1	$f10,116(sp)
   111f8:	c6120004 	lwc1	$f18,4(s0)
   111fc:	46049180 	add.s	$f6,$f18,$f4
   11200:	0c000000 	jal	0 <func_800437F0>
   11204:	e7a60078 	swc1	$f6,120(sp)
   11208:	3c030000 	lui	v1,0x0
   1120c:	24630000 	addiu	v1,v1,0
   11210:	c4680008 	lwc1	$f8,8(v1)
   11214:	c7b20070 	lwc1	$f18,112(sp)
   11218:	02202025 	move	a0,s1
   1121c:	46080282 	mul.s	$f10,$f0,$f8
   11220:	27a50068 	addiu	a1,sp,104
   11224:	27a60074 	addiu	a2,sp,116
   11228:	46125100 	add.s	$f4,$f10,$f18
   1122c:	0c000000 	jal	0 <func_800437F0>
   11230:	e7a4007c 	swc1	$f4,124(sp)
   11234:	10400004 	beqz	v0,11248 <L800548B8+0x180>
   11238:	3c060000 	lui	a2,0x0
   1123c:	860a0012 	lh	t2,18(s0)
   11240:	000a4823 	negu	t1,t2
   11244:	a6090012 	sh	t1,18(s0)
   11248:	24c50000 	addiu	a1,a2,0
   1124c:	0c000000 	jal	0 <func_800437F0>
   11250:	27a40080 	addiu	a0,sp,128
   11254:	8fac0028 	lw	t4,40(sp)
   11258:	87ab0086 	lh	t3,134(sp)
   1125c:	8fa40030 	lw	a0,48(sp)
   11260:	858d000e 	lh	t5,14(t4)
   11264:	02002825 	move	a1,s0
   11268:	27a60080 	addiu	a2,sp,128
   1126c:	016d7021 	addu	t6,t3,t5
   11270:	0c000000 	jal	0 <func_800437F0>
   11274:	a7ae0086 	sh	t6,134(sp)
   11278:	3c030000 	lui	v1,0x0
   1127c:	24630000 	addiu	v1,v1,0
   11280:	c4660000 	lwc1	$f6,0(v1)
   11284:	846f0004 	lh	t7,4(v1)
   11288:	84780006 	lh	t8,6(v1)
   1128c:	e7a60088 	swc1	$f6,136(sp)
   11290:	a7af008c 	sh	t7,140(sp)
   11294:	86190012 	lh	t9,18(s0)
   11298:	8faa0028 	lw	t2,40(sp)
   1129c:	3c013f80 	lui	at,0x3f80
   112a0:	03190019 	multu	t8,t9
   112a4:	8549000e 	lh	t1,14(t2)
   112a8:	44814000 	mtc1	at,$f8
   112ac:	00004012 	mflo	t0
   112b0:	01096021 	addu	t4,t0,t1
   112b4:	a7ac008e 	sh	t4,142(sp)
   112b8:	86060010 	lh	a2,16(s0)
   112bc:	10000191 	b	11904 <L8005508C+0x68>
   112c0:	e608000c 	swc1	$f8,12(s0)

000112c4 <L80054AB4>:
   112c4:	2630000c 	addiu	s0,s1,12
   112c8:	860b0010 	lh	t3,16(s0)
   112cc:	3c010000 	lui	at,0x0
   112d0:	c4240000 	lwc1	$f4,0(at)
   112d4:	256dfffe 	addiu	t5,t3,-2
   112d8:	448d5000 	mtc1	t5,$f10
   112dc:	3c060000 	lui	a2,0x0
   112e0:	24c60000 	addiu	a2,a2,0
   112e4:	468054a0 	cvt.s.w	$f18,$f10
   112e8:	c4c20000 	lwc1	$f2,0(a2)
   112ec:	c4c6000c 	lwc1	$f6,12(a2)
   112f0:	c4cc0004 	lwc1	$f12,4(a2)
   112f4:	c4ce0008 	lwc1	$f14,8(a2)
   112f8:	46023201 	sub.s	$f8,$f6,$f2
   112fc:	46049002 	mul.s	$f0,$f18,$f4
   11300:	c4c40010 	lwc1	$f4,16(a2)
   11304:	27a40080 	addiu	a0,sp,128
   11308:	27a5005c 	addiu	a1,sp,92
   1130c:	460c2181 	sub.s	$f6,$f4,$f12
   11310:	46004282 	mul.s	$f10,$f8,$f0
   11314:	e7a00058 	swc1	$f0,88(sp)
   11318:	46003202 	mul.s	$f8,$f6,$f0
   1131c:	46025480 	add.s	$f18,$f10,$f2
   11320:	460c4280 	add.s	$f10,$f8,$f12
   11324:	e7b2005c 	swc1	$f18,92(sp)
   11328:	c4d20014 	lwc1	$f18,20(a2)
   1132c:	e7aa0060 	swc1	$f10,96(sp)
   11330:	460e9101 	sub.s	$f4,$f18,$f14
   11334:	46002182 	mul.s	$f6,$f4,$f0
   11338:	460e3200 	add.s	$f8,$f6,$f14
   1133c:	0c000000 	jal	0 <func_800437F0>
   11340:	e7a80064 	swc1	$f8,100(sp)
   11344:	87ae0086 	lh	t6,134(sp)
   11348:	860f0012 	lh	t7,18(s0)
   1134c:	26230094 	addiu	v1,s1,148
   11350:	8479000e 	lh	t9,14(v1)
   11354:	01cf0019 	multu	t6,t7
   11358:	afa30028 	sw	v1,40(sp)
   1135c:	8fa40030 	lw	a0,48(sp)
   11360:	02002825 	move	a1,s0
   11364:	27a60080 	addiu	a2,sp,128
   11368:	0000c012 	mflo	t8
   1136c:	03195021 	addu	t2,t8,t9
   11370:	0c000000 	jal	0 <func_800437F0>
   11374:	a7aa0086 	sh	t2,134(sp)
   11378:	3c030000 	lui	v1,0x0
   1137c:	24630000 	addiu	v1,v1,0
   11380:	84640004 	lh	a0,4(v1)
   11384:	8468000c 	lh	t0,12(v1)
   11388:	c4620000 	lwc1	$f2,0(v1)
   1138c:	c46a0008 	lwc1	$f10,8(v1)
   11390:	01044823 	subu	t1,t0,a0
   11394:	00096400 	sll	t4,t1,0x10
   11398:	000c5c03 	sra	t3,t4,0x10
   1139c:	448b4000 	mtc1	t3,$f8
   113a0:	46025481 	sub.s	$f18,$f10,$f2
   113a4:	84650006 	lh	a1,6(v1)
   113a8:	846a000e 	lh	t2,14(v1)
   113ac:	468042a0 	cvt.s.w	$f10,$f8
   113b0:	c7a00058 	lwc1	$f0,88(sp)
   113b4:	01454023 	subu	t0,t2,a1
   113b8:	00084c00 	sll	t1,t0,0x10
   113bc:	46009102 	mul.s	$f4,$f18,$f0
   113c0:	00096403 	sra	t4,t1,0x10
   113c4:	448c4000 	mtc1	t4,$f8
   113c8:	46005482 	mul.s	$f18,$f10,$f0
   113cc:	8fae0028 	lw	t6,40(sp)
   113d0:	3c010000 	lui	at,0x0
   113d4:	46022180 	add.s	$f6,$f4,$f2
   113d8:	468042a0 	cvt.s.w	$f10,$f8
   113dc:	e7a60080 	swc1	$f6,128(sp)
   113e0:	e7a60088 	swc1	$f6,136(sp)
   113e4:	4600910d 	trunc.w.s	$f4,$f18
   113e8:	46005482 	mul.s	$f18,$f10,$f0
   113ec:	c42a0000 	lwc1	$f10,0(at)
   113f0:	44182000 	mfc1	t8,$f4
   113f4:	00000000 	nop
   113f8:	0304c821 	addu	t9,t8,a0
   113fc:	4600910d 	trunc.w.s	$f4,$f18
   11400:	03204025 	move	t0,t9
   11404:	a7b90084 	sh	t9,132(sp)
   11408:	a7a8008c 	sh	t0,140(sp)
   1140c:	440f2000 	mfc1	t7,$f4
   11410:	00000000 	nop
   11414:	01e5c021 	addu	t8,t7,a1
   11418:	a7b80086 	sh	t8,134(sp)
   1141c:	86090012 	lh	t1,18(s0)
   11420:	00186400 	sll	t4,t8,0x10
   11424:	000c5c03 	sra	t3,t4,0x10
   11428:	01690019 	multu	t3,t1
   1142c:	85cf000e 	lh	t7,14(t6)
   11430:	00006812 	mflo	t5
   11434:	01afc821 	addu	t9,t5,t7
   11438:	a7b9008e 	sh	t9,142(sp)
   1143c:	c608000c 	lwc1	$f8,12(s0)
   11440:	86060010 	lh	a2,16(s0)
   11444:	460a4481 	sub.s	$f18,$f8,$f10
   11448:	1000012e 	b	11904 <L8005508C+0x68>
   1144c:	e612000c 	swc1	$f18,12(s0)

00011450 <L80054C40>:
   11450:	2630000c 	addiu	s0,s1,12
   11454:	860a0010 	lh	t2,16(s0)
   11458:	3c010000 	lui	at,0x0
   1145c:	c4280000 	lwc1	$f8,0(at)
   11460:	2548ff6c 	addiu	t0,t2,-148
   11464:	44882000 	mtc1	t0,$f4
   11468:	3c060000 	lui	a2,0x0
   1146c:	24c60000 	addiu	a2,a2,0
   11470:	468021a0 	cvt.s.w	$f6,$f4
   11474:	c4c2000c 	lwc1	$f2,12(a2)
   11478:	c4ca0018 	lwc1	$f10,24(a2)
   1147c:	c4cc0014 	lwc1	$f12,20(a2)
   11480:	27a40080 	addiu	a0,sp,128
   11484:	46025481 	sub.s	$f18,$f10,$f2
   11488:	46083002 	mul.s	$f0,$f6,$f8
   1148c:	c4c80010 	lwc1	$f8,16(a2)
   11490:	c4ca001c 	lwc1	$f10,28(a2)
   11494:	27a5005c 	addiu	a1,sp,92
   11498:	46104381 	sub.s	$f14,$f8,$f16
   1149c:	46009102 	mul.s	$f4,$f18,$f0
   114a0:	e7a00058 	swc1	$f0,88(sp)
   114a4:	460e5481 	sub.s	$f18,$f10,$f14
   114a8:	c4ca0020 	lwc1	$f10,32(a2)
   114ac:	46022180 	add.s	$f6,$f4,$f2
   114b0:	46009102 	mul.s	$f4,$f18,$f0
   114b4:	460c5481 	sub.s	$f18,$f10,$f12
   114b8:	e7a6005c 	swc1	$f6,92(sp)
   114bc:	460e2180 	add.s	$f6,$f4,$f14
   114c0:	46009102 	mul.s	$f4,$f18,$f0
   114c4:	e7a60060 	swc1	$f6,96(sp)
   114c8:	46103200 	add.s	$f8,$f6,$f16
   114cc:	460c2180 	add.s	$f6,$f4,$f12
   114d0:	e7a80060 	swc1	$f8,96(sp)
   114d4:	0c000000 	jal	0 <func_800437F0>
   114d8:	e7a60064 	swc1	$f6,100(sp)
   114dc:	87b80086 	lh	t8,134(sp)
   114e0:	860c0012 	lh	t4,18(s0)
   114e4:	26230094 	addiu	v1,s1,148
   114e8:	8469000e 	lh	t1,14(v1)
   114ec:	030c0019 	multu	t8,t4
   114f0:	afa30028 	sw	v1,40(sp)
   114f4:	8fa40030 	lw	a0,48(sp)
   114f8:	02002825 	move	a1,s0
   114fc:	27a60080 	addiu	a2,sp,128
   11500:	00005812 	mflo	t3
   11504:	01697021 	addu	t6,t3,t1
   11508:	0c000000 	jal	0 <func_800437F0>
   1150c:	a7ae0086 	sh	t6,134(sp)
   11510:	3c030000 	lui	v1,0x0
   11514:	24630000 	addiu	v1,v1,0
   11518:	8464000c 	lh	a0,12(v1)
   1151c:	846d0014 	lh	t5,20(v1)
   11520:	c4620008 	lwc1	$f2,8(v1)
   11524:	c4680010 	lwc1	$f8,16(v1)
   11528:	01a47823 	subu	t7,t5,a0
   1152c:	000fcc00 	sll	t9,t7,0x10
   11530:	00195403 	sra	t2,t9,0x10
   11534:	448a3000 	mtc1	t2,$f6
   11538:	46024281 	sub.s	$f10,$f8,$f2
   1153c:	8465000e 	lh	a1,14(v1)
   11540:	846e0016 	lh	t6,22(v1)
   11544:	46803220 	cvt.s.w	$f8,$f6
   11548:	c7a00058 	lwc1	$f0,88(sp)
   1154c:	01c56823 	subu	t5,t6,a1
   11550:	000d7c00 	sll	t7,t5,0x10
   11554:	46005482 	mul.s	$f18,$f10,$f0
   11558:	000fcc03 	sra	t9,t7,0x10
   1155c:	44993000 	mtc1	t9,$f6
   11560:	46004282 	mul.s	$f10,$f8,$f0
   11564:	8fb80028 	lw	t8,40(sp)
   11568:	3c010000 	lui	at,0x0
   1156c:	46029100 	add.s	$f4,$f18,$f2
   11570:	46803220 	cvt.s.w	$f8,$f6
   11574:	e7a40080 	swc1	$f4,128(sp)
   11578:	e7a40088 	swc1	$f4,136(sp)
   1157c:	4600548d 	trunc.w.s	$f18,$f10
   11580:	46004282 	mul.s	$f10,$f8,$f0
   11584:	c4280000 	lwc1	$f8,0(at)
   11588:	440b9000 	mfc1	t3,$f18
   1158c:	00000000 	nop
   11590:	01644821 	addu	t1,t3,a0
   11594:	4600548d 	trunc.w.s	$f18,$f10
   11598:	01206825 	move	t5,t1
   1159c:	a7a90084 	sh	t1,132(sp)
   115a0:	a7ad008c 	sh	t5,140(sp)
   115a4:	440c9000 	mfc1	t4,$f18
   115a8:	00000000 	nop
   115ac:	01855821 	addu	t3,t4,a1
   115b0:	a7ab0086 	sh	t3,134(sp)
   115b4:	860f0012 	lh	t7,18(s0)
   115b8:	000bcc00 	sll	t9,t3,0x10
   115bc:	00195403 	sra	t2,t9,0x10
   115c0:	014f0019 	multu	t2,t7
   115c4:	870c000e 	lh	t4,14(t8)
   115c8:	00004012 	mflo	t0
   115cc:	010c4821 	addu	t1,t0,t4
   115d0:	a7a9008e 	sh	t1,142(sp)
   115d4:	c606000c 	lwc1	$f6,12(s0)
   115d8:	86060010 	lh	a2,16(s0)
   115dc:	46083281 	sub.s	$f10,$f6,$f8
   115e0:	100000c8 	b	11904 <L8005508C+0x68>
   115e4:	e60a000c 	swc1	$f10,12(s0)

000115e8 <L80054DD8>:
   115e8:	2630000c 	addiu	s0,s1,12
   115ec:	860e0010 	lh	t6,16(s0)
   115f0:	3c010000 	lui	at,0x0
   115f4:	c4260000 	lwc1	$f6,0(at)
   115f8:	25cdff61 	addiu	t5,t6,-159
   115fc:	448d9000 	mtc1	t5,$f18
   11600:	3c060000 	lui	a2,0x0
   11604:	24c60000 	addiu	a2,a2,0
   11608:	46809120 	cvt.s.w	$f4,$f18
   1160c:	c4c20018 	lwc1	$f2,24(a2)
   11610:	c4c80024 	lwc1	$f8,36(a2)
   11614:	c4cc001c 	lwc1	$f12,28(a2)
   11618:	c4ce0020 	lwc1	$f14,32(a2)
   1161c:	46024281 	sub.s	$f10,$f8,$f2
   11620:	46062002 	mul.s	$f0,$f4,$f6
   11624:	c4c60028 	lwc1	$f6,40(a2)
   11628:	27a40080 	addiu	a0,sp,128
   1162c:	27a5005c 	addiu	a1,sp,92
   11630:	460c3201 	sub.s	$f8,$f6,$f12
   11634:	c4c6002c 	lwc1	$f6,44(a2)
   11638:	46005482 	mul.s	$f18,$f10,$f0
   1163c:	e7a00058 	swc1	$f0,88(sp)
   11640:	46004282 	mul.s	$f10,$f8,$f0
   11644:	460e3201 	sub.s	$f8,$f6,$f14
   11648:	46029100 	add.s	$f4,$f18,$f2
   1164c:	460c5480 	add.s	$f18,$f10,$f12
   11650:	46004282 	mul.s	$f10,$f8,$f0
   11654:	e7a4005c 	swc1	$f4,92(sp)
   11658:	e7b20060 	swc1	$f18,96(sp)
   1165c:	46109100 	add.s	$f4,$f18,$f16
   11660:	460e5480 	add.s	$f18,$f10,$f14
   11664:	e7a40060 	swc1	$f4,96(sp)
   11668:	0c000000 	jal	0 <func_800437F0>
   1166c:	e7b20064 	swc1	$f18,100(sp)
   11670:	87ab0086 	lh	t3,134(sp)
   11674:	86190012 	lh	t9,18(s0)
   11678:	26230094 	addiu	v1,s1,148
   1167c:	846f000e 	lh	t7,14(v1)
   11680:	01790019 	multu	t3,t9
   11684:	afa30028 	sw	v1,40(sp)
   11688:	8fa40030 	lw	a0,48(sp)
   1168c:	02002825 	move	a1,s0
   11690:	27a60080 	addiu	a2,sp,128
   11694:	00005012 	mflo	t2
   11698:	014fc021 	addu	t8,t2,t7
   1169c:	0c000000 	jal	0 <func_800437F0>
   116a0:	a7b80086 	sh	t8,134(sp)
   116a4:	3c030000 	lui	v1,0x0
   116a8:	24630000 	addiu	v1,v1,0
   116ac:	84640014 	lh	a0,20(v1)
   116b0:	8468001c 	lh	t0,28(v1)
   116b4:	c4620010 	lwc1	$f2,16(v1)
   116b8:	c4640018 	lwc1	$f4,24(v1)
   116bc:	01046023 	subu	t4,t0,a0
   116c0:	000c4c00 	sll	t1,t4,0x10
   116c4:	00097403 	sra	t6,t1,0x10
   116c8:	448e9000 	mtc1	t6,$f18
   116cc:	46022181 	sub.s	$f6,$f4,$f2
   116d0:	84650016 	lh	a1,22(v1)
   116d4:	8478001e 	lh	t8,30(v1)
   116d8:	46809120 	cvt.s.w	$f4,$f18
   116dc:	c7a00058 	lwc1	$f0,88(sp)
   116e0:	03054023 	subu	t0,t8,a1
   116e4:	00086400 	sll	t4,t0,0x10
   116e8:	46003202 	mul.s	$f8,$f6,$f0
   116ec:	000c4c03 	sra	t1,t4,0x10
   116f0:	44899000 	mtc1	t1,$f18
   116f4:	46002182 	mul.s	$f6,$f4,$f0
   116f8:	8fab0028 	lw	t3,40(sp)
   116fc:	3c010000 	lui	at,0x0
   11700:	46024280 	add.s	$f10,$f8,$f2
   11704:	46809120 	cvt.s.w	$f4,$f18
   11708:	e7aa0080 	swc1	$f10,128(sp)
   1170c:	e7aa0088 	swc1	$f10,136(sp)
   11710:	4600320d 	trunc.w.s	$f8,$f6
   11714:	46002182 	mul.s	$f6,$f4,$f0
   11718:	c4240000 	lwc1	$f4,0(at)
   1171c:	440a4000 	mfc1	t2,$f8
   11720:	00000000 	nop
   11724:	01447821 	addu	t7,t2,a0
   11728:	4600320d 	trunc.w.s	$f8,$f6
   1172c:	01e04025 	move	t0,t7
   11730:	a7af0084 	sh	t7,132(sp)
   11734:	a7a8008c 	sh	t0,140(sp)
   11738:	44194000 	mfc1	t9,$f8
   1173c:	00000000 	nop
   11740:	03255021 	addu	t2,t9,a1
   11744:	a7aa0086 	sh	t2,134(sp)
   11748:	860c0012 	lh	t4,18(s0)
   1174c:	000a4c00 	sll	t1,t2,0x10
   11750:	00097403 	sra	t6,t1,0x10
   11754:	01cc0019 	multu	t6,t4
   11758:	8579000e 	lh	t9,14(t3)
   1175c:	00006812 	mflo	t5
   11760:	01b97821 	addu	t7,t5,t9
   11764:	a7af008e 	sh	t7,142(sp)
   11768:	c612000c 	lwc1	$f18,12(s0)
   1176c:	86060010 	lh	a2,16(s0)
   11770:	46049180 	add.s	$f6,$f18,$f4
   11774:	10000063 	b	11904 <L8005508C+0x68>
   11778:	e606000c 	swc1	$f6,12(s0)

0001177c <L80054F6C>:
   1177c:	8638014c 	lh	t8,332(s1)
   11780:	240e0004 	li	t6,4
   11784:	37080400 	ori	t0,t8,0x400
   11788:	a628014c 	sh	t0,332(s1)
   1178c:	862a014c 	lh	t2,332(s1)
   11790:	31490008 	andi	t1,t2,0x8
   11794:	51200003 	beqzl	t1,117a4 <L80054F90+0x4>
   11798:	240c0001 	li	t4,1
   1179c:	a62e015e 	sh	t6,350(s1)

000117a0 <L80054F90>:
   117a0:	240c0001 	li	t4,1
   117a4:	262b0094 	addiu	t3,s1,148
   117a8:	a3ac0053 	sb	t4,83(sp)
   117ac:	afab0028 	sw	t3,40(sp)
   117b0:	2630000c 	addiu	s0,s1,12
   117b4:	10000053 	b	11904 <L8005508C+0x68>
   117b8:	86060010 	lh	a2,16(s0)

000117bc <L80054FAC>:
   117bc:	3c0142a0 	lui	at,0x42a0
   117c0:	44814000 	mtc1	at,$f8
   117c4:	87ad0096 	lh	t5,150(sp)
   117c8:	3c010000 	lui	at,0x0
   117cc:	c42a0000 	lwc1	$f10,0(at)
   117d0:	a7a0008c 	sh	zero,140(sp)
   117d4:	2630000c 	addiu	s0,s1,12
   117d8:	e7a80088 	swc1	$f8,136(sp)
   117dc:	a7ad008e 	sh	t5,142(sp)
   117e0:	3c010000 	lui	at,0x0
   117e4:	24193400 	li	t9,13312
   117e8:	e60a000c 	swc1	$f10,12(s0)
   117ec:	ac390000 	sw	t9,0(at)
   117f0:	86060010 	lh	a2,16(s0)
   117f4:	3c010000 	lui	at,0x0
   117f8:	04c20025 	bltzl	a2,11890 <L80054FAC+0xd4>
   117fc:	8639014c 	lh	t9,332(s1)
   11800:	c4320000 	lwc1	$f18,0(at)
   11804:	c62400d8 	lwc1	$f4,216(s1)
   11808:	3c0f0000 	lui	t7,0x0
   1180c:	4604903c 	c.lt.s	$f18,$f4
   11810:	00000000 	nop
   11814:	4503001e 	bc1tl	11890 <L80054FAC+0xd4>
   11818:	8639014c 	lh	t9,332(s1)
   1181c:	8def0000 	lw	t7,0(t7)
   11820:	3c01ffff 	lui	at,0xffff
   11824:	34217fff 	ori	at,at,0x7fff
   11828:	95e20020 	lhu	v0,32(t7)
   1182c:	0041c027 	nor	t8,v0,at
   11830:	13000016 	beqz	t8,1188c <L80054FAC+0xd0>
   11834:	2401bfff 	li	at,-16385
   11838:	00414027 	nor	t0,v0,at
   1183c:	11000013 	beqz	t0,1188c <L80054FAC+0xd0>
   11840:	2401fffd 	li	at,-3
   11844:	00415027 	nor	t2,v0,at
   11848:	11400010 	beqz	t2,1188c <L80054FAC+0xd0>
   1184c:	2401fffb 	li	at,-5
   11850:	00414827 	nor	t1,v0,at
   11854:	1120000d 	beqz	t1,1188c <L80054FAC+0xd0>
   11858:	2401fff7 	li	at,-9
   1185c:	00417027 	nor	t6,v0,at
   11860:	11c0000a 	beqz	t6,1188c <L80054FAC+0xd0>
   11864:	2401fffe 	li	at,-2
   11868:	00416027 	nor	t4,v0,at
   1186c:	11800007 	beqz	t4,1188c <L80054FAC+0xd0>
   11870:	2401ffef 	li	at,-17
   11874:	00415827 	nor	t3,v0,at
   11878:	11600004 	beqz	t3,1188c <L80054FAC+0xd0>
   1187c:	2401dfff 	li	at,-8193
   11880:	00416827 	nor	t5,v0,at
   11884:	55a0001c 	bnezl	t5,118f8 <L8005508C+0x5c>
   11888:	240c0001 	li	t4,1
   1188c:	8639014c 	lh	t9,332(s1)
   11890:	332f0008 	andi	t7,t9,0x8
   11894:	51e00018 	beqzl	t7,118f8 <L8005508C+0x5c>
   11898:	240c0001 	li	t4,1

0001189c <L8005508C>:
   1189c:	8638014c 	lh	t8,332(s1)
   118a0:	86250166 	lh	a1,358(s1)
   118a4:	2630000c 	addiu	s0,s1,12
   118a8:	37080014 	ori	t0,t8,0x14
   118ac:	a628014c 	sh	t0,332(s1)
   118b0:	862a014c 	lh	t2,332(s1)
   118b4:	02202025 	move	a0,s1
   118b8:	24060002 	li	a2,2
   118bc:	3149fff7 	andi	t1,t2,0xfff7
   118c0:	04a10005 	bgez	a1,118d8 <L8005508C+0x3c>
   118c4:	a629014c 	sh	t1,332(s1)
   118c8:	0c000000 	jal	0 <func_800437F0>
   118cc:	86250154 	lh	a1,340(s1)
   118d0:	10000005 	b	118e8 <L8005508C+0x4c>
   118d4:	00000000 	nop
   118d8:	0c000000 	jal	0 <func_800437F0>
   118dc:	02202025 	move	a0,s1
   118e0:	240effff 	li	t6,-1
   118e4:	a62e0166 	sh	t6,358(s1)
   118e8:	3c010000 	lui	at,0x0
   118ec:	ac200000 	sw	zero,0(at)
   118f0:	86060010 	lh	a2,16(s0)
   118f4:	240c0001 	li	t4,1
   118f8:	262b0094 	addiu	t3,s1,148
   118fc:	a3ac0053 	sb	t4,83(sp)
   11900:	afab0028 	sw	t3,40(sp)
   11904:	24cd0001 	addiu	t5,a2,1
   11908:	a60d0010 	sh	t5,16(s0)
   1190c:	86060010 	lh	a2,16(s0)
   11910:	24010001 	li	at,1
   11914:	14c10003 	bne	a2,at,11924 <L8005508C+0x88>
   11918:	2419000a 	li	t9,10
   1191c:	1000001e 	b	11998 <L8005508C+0xfc>
   11920:	a639015e 	sh	t9,350(s1)
   11924:	24020002 	li	v0,2
   11928:	14460004 	bne	v0,a2,1193c <L8005508C+0xa0>
   1192c:	24010094 	li	at,148
   11930:	240f0001 	li	t7,1
   11934:	10000018 	b	11998 <L8005508C+0xfc>
   11938:	a62f015e 	sh	t7,350(s1)
   1193c:	54c10004 	bnel	a2,at,11950 <L8005508C+0xb4>
   11940:	2401009e 	li	at,158
   11944:	10000014 	b	11998 <L8005508C+0xfc>
   11948:	a622015e 	sh	v0,350(s1)
   1194c:	2401009e 	li	at,158
   11950:	14c10003 	bne	a2,at,11960 <L8005508C+0xc4>
   11954:	24180014 	li	t8,20
   11958:	1000000f 	b	11998 <L8005508C+0xfc>
   1195c:	a638015e 	sh	t8,350(s1)
   11960:	2401009f 	li	at,159
   11964:	14c10003 	bne	a2,at,11974 <L8005508C+0xd8>
   11968:	24080003 	li	t0,3
   1196c:	1000000a 	b	11998 <L8005508C+0xfc>
   11970:	a628015e 	sh	t0,350(s1)
   11974:	240100a8 	li	at,168
   11978:	14c10003 	bne	a2,at,11988 <L8005508C+0xec>
   1197c:	240a001e 	li	t2,30
   11980:	10000005 	b	11998 <L8005508C+0xfc>
   11984:	a62a015e 	sh	t2,350(s1)
   11988:	240100e4 	li	at,228
   1198c:	14c10002 	bne	a2,at,11998 <L8005508C+0xfc>
   11990:	24090004 	li	t1,4
   11994:	a629015e 	sh	t1,350(s1)
   11998:	93ae0053 	lbu	t6,83(sp)
   1199c:	55c00020 	bnezl	t6,11a20 <L8005508C+0x184>
   119a0:	8fa40030 	lw	a0,48(sp)
   119a4:	c7ac0088 	lwc1	$f12,136(sp)
   119a8:	c7ae0090 	lwc1	$f14,144(sp)
   119ac:	8e06000c 	lw	a2,12(s0)
   119b0:	0c000000 	jal	0 <func_800437F0>
   119b4:	3c074000 	lui	a3,0x4000
   119b8:	e7a00088 	swc1	$f0,136(sp)
   119bc:	8e06000c 	lw	a2,12(s0)
   119c0:	87a4008c 	lh	a0,140(sp)
   119c4:	87a50094 	lh	a1,148(sp)
   119c8:	0c000000 	jal	0 <func_800437F0>
   119cc:	2407000a 	li	a3,10
   119d0:	a7a2008c 	sh	v0,140(sp)
   119d4:	8e06000c 	lw	a2,12(s0)
   119d8:	87a4008e 	lh	a0,142(sp)
   119dc:	87a50096 	lh	a1,150(sp)
   119e0:	0c000000 	jal	0 <func_800437F0>
   119e4:	2407000a 	li	a3,10
   119e8:	26300074 	addiu	s0,s1,116
   119ec:	a7a2008e 	sh	v0,142(sp)
   119f0:	02002025 	move	a0,s0
   119f4:	8fa50030 	lw	a1,48(sp)
   119f8:	0c000000 	jal	0 <func_800437F0>
   119fc:	27a60088 	addiu	a2,sp,136
   11a00:	8fac0034 	lw	t4,52(sp)
   11a04:	8e0d0000 	lw	t5,0(s0)
   11a08:	ad8d0000 	sw	t5,0(t4)
   11a0c:	8e0b0004 	lw	t3,4(s0)
   11a10:	ad8b0004 	sw	t3,4(t4)
   11a14:	8e0d0008 	lw	t5,8(s0)
   11a18:	ad8d0008 	sw	t5,8(t4)
   11a1c:	8fa40030 	lw	a0,48(sp)
   11a20:	0c000000 	jal	0 <func_800437F0>
   11a24:	8fa50034 	lw	a1,52(sp)
   11a28:	e62000dc 	swc1	$f0,220(s1)
   11a2c:	3c010000 	lui	at,0x0
   11a30:	c4260000 	lwc1	$f6,0(at)
   11a34:	c6280050 	lwc1	$f8,80(s1)
   11a38:	c6240054 	lwc1	$f4,84(s1)
   11a3c:	e6260100 	swc1	$f6,256(s1)
   11a40:	8fb90028 	lw	t9,40(sp)
   11a44:	24020001 	li	v0,1
   11a48:	c72a0000 	lwc1	$f10,0(t9)
   11a4c:	460a4481 	sub.s	$f18,$f8,$f10
   11a50:	c62a0058 	lwc1	$f10,88(s1)
   11a54:	e63200e4 	swc1	$f18,228(s1)
   11a58:	8faf0028 	lw	t7,40(sp)
   11a5c:	c5e60004 	lwc1	$f6,4(t7)
   11a60:	46062201 	sub.s	$f8,$f4,$f6
   11a64:	e62800e8 	swc1	$f8,232(s1)
   11a68:	8fb80028 	lw	t8,40(sp)
   11a6c:	c7120008 	lwc1	$f18,8(t8)
   11a70:	46125101 	sub.s	$f4,$f10,$f18
   11a74:	e62400ec 	swc1	$f4,236(s1)
   11a78:	8fbf001c 	lw	ra,28(sp)
   11a7c:	8fb10018 	lw	s1,24(sp)
   11a80:	8fb00014 	lw	s0,20(sp)
   11a84:	03e00008 	jr	ra
   11a88:	27bd00a8 	addiu	sp,sp,168

00011a8c <Camera_Demo4>:
   11a8c:	27bdffe8 	addiu	sp,sp,-24
   11a90:	afbf0014 	sw	ra,20(sp)
   11a94:	0c000000 	jal	0 <func_800437F0>
   11a98:	00000000 	nop
   11a9c:	8fbf0014 	lw	ra,20(sp)
   11aa0:	27bd0018 	addiu	sp,sp,24
   11aa4:	03e00008 	jr	ra
   11aa8:	00000000 	nop

00011aac <Camera_Demo5>:
   11aac:	27bdff68 	addiu	sp,sp,-152
   11ab0:	afb00018 	sw	s0,24(sp)
   11ab4:	00808025 	move	s0,a0
   11ab8:	afbf001c 	sw	ra,28(sp)
   11abc:	8e050090 	lw	a1,144(s0)
   11ac0:	0c000000 	jal	0 <func_800437F0>
   11ac4:	27a40064 	addiu	a0,sp,100
   11ac8:	8e0e0090 	lw	t6,144(s0)
   11acc:	240f3200 	li	t7,12800
   11ad0:	3c010000 	lui	at,0x0
   11ad4:	ac2f0000 	sw	t7,0(at)
   11ad8:	afae004c 	sw	t6,76(sp)
   11adc:	8e0500a8 	lw	a1,168(s0)
   11ae0:	10a00005 	beqz	a1,11af8 <Camera_Demo5+0x4c>
   11ae4:	00000000 	nop
   11ae8:	8cb80130 	lw	t8,304(a1)
   11aec:	260400ac 	addiu	a0,s0,172
   11af0:	17000008 	bnez	t8,11b14 <Camera_Demo5+0x68>
   11af4:	00000000 	nop
   11af8:	14a00003 	bnez	a1,11b08 <Camera_Demo5+0x5c>
   11afc:	3c040000 	lui	a0,0x0
   11b00:	0c000000 	jal	0 <func_800437F0>
   11b04:	24840000 	addiu	a0,a0,0
   11b08:	ae0000a8 	sw	zero,168(s0)
   11b0c:	10000259 	b	12474 <Camera_Demo5+0x9c8>
   11b10:	24020001 	li	v0,1
   11b14:	0c000000 	jal	0 <func_800437F0>
   11b18:	afa40020 	sw	a0,32(sp)
   11b1c:	27a40088 	addiu	a0,sp,136
   11b20:	8fa50020 	lw	a1,32(sp)
   11b24:	0c000000 	jal	0 <func_800437F0>
   11b28:	26060094 	addiu	a2,s0,148
   11b2c:	8e1900a8 	lw	t9,168(s0)
   11b30:	3c010000 	lui	at,0x0
   11b34:	27a6007e 	addiu	a2,sp,126
   11b38:	93280002 	lbu	t0,2(t9)
   11b3c:	27a7007c 	addiu	a3,sp,124
   11b40:	ac280000 	sw	t0,0(at)
   11b44:	8e0500a8 	lw	a1,168(s0)
   11b48:	0c000000 	jal	0 <func_800437F0>
   11b4c:	8e04008c 	lw	a0,140(s0)
   11b50:	8fa40020 	lw	a0,32(sp)
   11b54:	0c000000 	jal	0 <func_800437F0>
   11b58:	2605005c 	addiu	a1,s0,92
   11b5c:	e7a00094 	swc1	$f0,148(sp)
   11b60:	27a40080 	addiu	a0,sp,128
   11b64:	27a50064 	addiu	a1,sp,100
   11b68:	0c000000 	jal	0 <func_800437F0>
   11b6c:	26060074 	addiu	a2,s0,116
   11b70:	87a90086 	lh	t1,134(sp)
   11b74:	87aa008e 	lh	t2,142(sp)
   11b78:	24010002 	li	at,2
   11b7c:	c7a40080 	lwc1	$f4,128(sp)
   11b80:	012a5823 	subu	t3,t1,t2
   11b84:	a7ab004a 	sh	t3,74(sp)
   11b88:	8e0c00a8 	lw	t4,168(s0)
   11b8c:	c7a00088 	lwc1	$f0,136(sp)
   11b90:	91830002 	lbu	v1,2(t4)
   11b94:	14610040 	bne	v1,at,11c98 <Camera_Demo5+0x1ec>
   11b98:	3c0141f0 	lui	at,0x41f0
   11b9c:	44811000 	mtc1	at,$f2
   11ba0:	00000000 	nop
   11ba4:	4604103c 	c.lt.s	$f2,$f4
   11ba8:	00000000 	nop
   11bac:	45000021 	bc1f	11c34 <Camera_Demo5+0x188>
   11bb0:	00000000 	nop
   11bb4:	860d0160 	lh	t5,352(s0)
   11bb8:	3c010000 	lui	at,0x0
   11bbc:	25aeffff 	addiu	t6,t5,-1
   11bc0:	0c000000 	jal	0 <func_800437F0>
   11bc4:	a42e0000 	sh	t6,0(at)
   11bc8:	3c014120 	lui	at,0x4120
   11bcc:	44813000 	mtc1	at,$f6
   11bd0:	3c020000 	lui	v0,0x0
   11bd4:	24420000 	addiu	v0,v0,0
   11bd8:	46060202 	mul.s	$f8,$f0,$f6
   11bdc:	0c000000 	jal	0 <func_800437F0>
   11be0:	e4480040 	swc1	$f8,64(v0)
   11be4:	3c014120 	lui	at,0x4120
   11be8:	44815000 	mtc1	at,$f10
   11bec:	3c020000 	lui	v0,0x0
   11bf0:	24420000 	addiu	v0,v0,0
   11bf4:	460a0402 	mul.s	$f16,$f0,$f10
   11bf8:	240f0003 	li	t7,3
   11bfc:	25e8ffff 	addiu	t0,t7,-1
   11c00:	e4500044 	swc1	$f16,68(v0)
   11c04:	86180162 	lh	t8,354(s0)
   11c08:	ae020004 	sw	v0,4(s0)
   11c0c:	ae0f0000 	sw	t7,0(s0)
   11c10:	53000004 	beqzl	t8,11c24 <Camera_Demo5+0x178>
   11c14:	86090160 	lh	t1,352(s0)
   11c18:	100001c2 	b	12324 <Camera_Demo5+0x878>
   11c1c:	ae080000 	sw	t0,0(s0)
   11c20:	86090160 	lh	t1,352(s0)
   11c24:	844a0054 	lh	t2,84(v0)
   11c28:	012a5821 	addu	t3,t1,t2
   11c2c:	100001bd 	b	12324 <Camera_Demo5+0x878>
   11c30:	a60b0160 	sh	t3,352(s0)
   11c34:	0c000000 	jal	0 <func_800437F0>
   11c38:	00000000 	nop
   11c3c:	3c014120 	lui	at,0x4120
   11c40:	44819000 	mtc1	at,$f18
   11c44:	3c020000 	lui	v0,0x0
   11c48:	24420000 	addiu	v0,v0,0
   11c4c:	46120102 	mul.s	$f4,$f0,$f18
   11c50:	240e0003 	li	t6,3
   11c54:	25d9ffff 	addiu	t9,t6,-1
   11c58:	e4440044 	swc1	$f4,68(v0)
   11c5c:	860c0160 	lh	t4,352(s0)
   11c60:	258dffff 	addiu	t5,t4,-1
   11c64:	a44d002c 	sh	t5,44(v0)
   11c68:	860f0162 	lh	t7,354(s0)
   11c6c:	ae020004 	sw	v0,4(s0)
   11c70:	ae0e0000 	sw	t6,0(s0)
   11c74:	51e00004 	beqzl	t7,11c88 <Camera_Demo5+0x1dc>
   11c78:	86080160 	lh	t0,352(s0)
   11c7c:	100001a9 	b	12324 <Camera_Demo5+0x878>
   11c80:	ae190000 	sw	t9,0(s0)
   11c84:	86080160 	lh	t0,352(s0)
   11c88:	84490054 	lh	t1,84(v0)
   11c8c:	01095021 	addu	t2,t0,t1
   11c90:	100001a4 	b	12324 <Camera_Demo5+0x878>
   11c94:	a60a0160 	sh	t2,352(s0)
   11c98:	3c0141f0 	lui	at,0x41f0
   11c9c:	44811000 	mtc1	at,$f2
   11ca0:	3c020000 	lui	v0,0x0
   11ca4:	24420000 	addiu	v0,v0,0
   11ca8:	4602003c 	c.lt.s	$f0,$f2
   11cac:	240b0004 	li	t3,4
   11cb0:	c7ac0094 	lwc1	$f12,148(sp)
   11cb4:	3c014396 	lui	at,0x4396
   11cb8:	4502002e 	bc1fl	11d74 <Camera_Demo5+0x2c8>
   11cbc:	44818000 	mtc1	at,$f16
   11cc0:	ae020004 	sw	v0,4(s0)
   11cc4:	ae0b0000 	sw	t3,0(s0)
   11cc8:	87ac007e 	lh	t4,126(sp)
   11ccc:	240d0041 	li	t5,65
   11cd0:	29810015 	slti	at,t4,21
   11cd4:	14200007 	bnez	at,11cf4 <Camera_Demo5+0x248>
   11cd8:	2981012c 	slti	at,t4,300
   11cdc:	10200005 	beqz	at,11cf4 <Camera_Demo5+0x248>
   11ce0:	87a3007c 	lh	v1,124(sp)
   11ce4:	28610029 	slti	at,v1,41
   11ce8:	14200002 	bnez	at,11cf4 <Camera_Demo5+0x248>
   11cec:	286100c8 	slti	at,v1,200
   11cf0:	1420000e 	bnez	at,11d2c <Camera_Demo5+0x280>
   11cf4:	3c01c1f0 	lui	at,0xc1f0
   11cf8:	44813000 	mtc1	at,$f6
   11cfc:	3c014120 	lui	at,0x4120
   11d00:	44801000 	mtc1	zero,$f2
   11d04:	44814000 	mtc1	at,$f8
   11d08:	3c01c248 	lui	at,0xc248
   11d0c:	44815000 	mtc1	at,$f10
   11d10:	a04d0000 	sb	t5,0(v0)
   11d14:	e4460014 	swc1	$f6,20(v0)
   11d18:	e4420010 	swc1	$f2,16(v0)
   11d1c:	e4420018 	swc1	$f2,24(v0)
   11d20:	e4420020 	swc1	$f2,32(v0)
   11d24:	e448001c 	swc1	$f8,28(v0)
   11d28:	e44a0024 	swc1	$f10,36(v0)
   11d2c:	860e0160 	lh	t6,352(s0)
   11d30:	25cfffff 	addiu	t7,t6,-1
   11d34:	a44f002c 	sh	t7,44(v0)
   11d38:	86180162 	lh	t8,354(s0)
   11d3c:	53000006 	beqzl	t8,11d58 <Camera_Demo5+0x2ac>
   11d40:	86090160 	lh	t1,352(s0)
   11d44:	8e190000 	lw	t9,0(s0)
   11d48:	2728fffe 	addiu	t0,t9,-2
   11d4c:	10000175 	b	12324 <Camera_Demo5+0x878>
   11d50:	ae080000 	sw	t0,0(s0)
   11d54:	86090160 	lh	t1,352(s0)
   11d58:	844a0054 	lh	t2,84(v0)
   11d5c:	844c007c 	lh	t4,124(v0)
   11d60:	012a5821 	addu	t3,t1,t2
   11d64:	016c6821 	addu	t5,t3,t4
   11d68:	1000016e 	b	12324 <Camera_Demo5+0x878>
   11d6c:	a60d0160 	sh	t5,352(s0)
   11d70:	44818000 	mtc1	at,$f16
   11d74:	c7b20080 	lwc1	$f18,128(sp)
   11d78:	3c01442f 	lui	at,0x442f
   11d7c:	4610603c 	c.lt.s	$f12,$f16
   11d80:	00000000 	nop
   11d84:	45020017 	bc1fl	11de4 <Camera_Demo5+0x338>
   11d88:	44812000 	mtc1	at,$f4
   11d8c:	4602903c 	c.lt.s	$f18,$f2
   11d90:	00000000 	nop
   11d94:	45020013 	bc1fl	11de4 <Camera_Demo5+0x338>
   11d98:	44812000 	mtc1	at,$f4
   11d9c:	860e0160 	lh	t6,352(s0)
   11da0:	3c020000 	lui	v0,0x0
   11da4:	24420000 	addiu	v0,v0,0
   11da8:	a44e0004 	sh	t6,4(v0)
   11dac:	86180162 	lh	t8,354(s0)
   11db0:	240f0002 	li	t7,2
   11db4:	ae020004 	sw	v0,4(s0)
   11db8:	13000004 	beqz	t8,11dcc <Camera_Demo5+0x320>
   11dbc:	ae0f0000 	sw	t7,0(s0)
   11dc0:	25e8ffff 	addiu	t0,t7,-1
   11dc4:	10000157 	b	12324 <Camera_Demo5+0x878>
   11dc8:	ae080000 	sw	t0,0(s0)
   11dcc:	86090160 	lh	t1,352(s0)
   11dd0:	844a002c 	lh	t2,44(v0)
   11dd4:	012a5821 	addu	t3,t1,t2
   11dd8:	10000152 	b	12324 <Camera_Demo5+0x878>
   11ddc:	a60b0160 	sh	t3,352(s0)
   11de0:	44812000 	mtc1	at,$f4
   11de4:	87a5004a 	lh	a1,74(sp)
   11de8:	4604603c 	c.lt.s	$f12,$f4
   11dec:	00000000 	nop
   11df0:	45020064 	bc1fl	11f84 <Camera_Demo5+0x4d8>
   11df4:	2401000a 	li	at,10
   11df8:	04a00003 	bltz	a1,11e08 <Camera_Demo5+0x35c>
   11dfc:	00051023 	negu	v0,a1
   11e00:	10000001 	b	11e08 <Camera_Demo5+0x35c>
   11e04:	00a01025 	move	v0,a1
   11e08:	284136b0 	slti	at,v0,14000
   11e0c:	5020005d 	beqzl	at,11f84 <Camera_Demo5+0x4d8>
   11e10:	2401000a 	li	at,10
   11e14:	87a3007e 	lh	v1,126(sp)
   11e18:	28610015 	slti	at,v1,21
   11e1c:	1420001d 	bnez	at,11e94 <Camera_Demo5+0x3e8>
   11e20:	2861012c 	slti	at,v1,300
   11e24:	1020001b 	beqz	at,11e94 <Camera_Demo5+0x3e8>
   11e28:	87a3007c 	lh	v1,124(sp)
   11e2c:	28610029 	slti	at,v1,41
   11e30:	14200018 	bnez	at,11e94 <Camera_Demo5+0x3e8>
   11e34:	286100c8 	slti	at,v1,200
   11e38:	10200016 	beqz	at,11e94 <Camera_Demo5+0x3e8>
   11e3c:	c7a60080 	lwc1	$f6,128(sp)
   11e40:	4606103c 	c.lt.s	$f2,$f6
   11e44:	00000000 	nop
   11e48:	45000012 	bc1f	11e94 <Camera_Demo5+0x3e8>
   11e4c:	00000000 	nop
   11e50:	860c0160 	lh	t4,352(s0)
   11e54:	3c020000 	lui	v0,0x0
   11e58:	24420000 	addiu	v0,v0,0
   11e5c:	a44c0004 	sh	t4,4(v0)
   11e60:	860e0162 	lh	t6,354(s0)
   11e64:	240d0002 	li	t5,2
   11e68:	ae020004 	sw	v0,4(s0)
   11e6c:	11c00004 	beqz	t6,11e80 <Camera_Demo5+0x3d4>
   11e70:	ae0d0000 	sw	t5,0(s0)
   11e74:	25b8ffff 	addiu	t8,t5,-1
   11e78:	1000012a 	b	12324 <Camera_Demo5+0x878>
   11e7c:	ae180000 	sw	t8,0(s0)
   11e80:	86190160 	lh	t9,352(s0)
   11e84:	8448002c 	lh	t0,44(v0)
   11e88:	03284821 	addu	t1,t9,t0
   11e8c:	10000125 	b	12324 <Camera_Demo5+0x878>
   11e90:	a6090160 	sh	t1,352(s0)
   11e94:	3c010000 	lui	at,0x0
   11e98:	c4280000 	lwc1	$f8,0(at)
   11e9c:	3c014248 	lui	at,0x4248
   11ea0:	44818000 	mtc1	at,$f16
   11ea4:	46086282 	mul.s	$f10,$f12,$f8
   11ea8:	3c020000 	lui	v0,0x0
   11eac:	46106480 	add.s	$f18,$f12,$f16
   11eb0:	24420000 	addiu	v0,v0,0
   11eb4:	e4520024 	swc1	$f18,36(v0)
   11eb8:	0c000000 	jal	0 <func_800437F0>
   11ebc:	e44a0018 	swc1	$f10,24(v0)
   11ec0:	3c014120 	lui	at,0x4120
   11ec4:	44812000 	mtc1	at,$f4
   11ec8:	87aa0086 	lh	t2,134(sp)
   11ecc:	87ab008e 	lh	t3,142(sp)
   11ed0:	46040182 	mul.s	$f6,$f0,$f4
   11ed4:	3c020000 	lui	v0,0x0
   11ed8:	014b6023 	subu	t4,t2,t3
   11edc:	000c6c00 	sll	t5,t4,0x10
   11ee0:	24420000 	addiu	v0,v0,0
   11ee4:	000d7403 	sra	t6,t5,0x10
   11ee8:	19c0000a 	blez	t6,11f14 <Camera_Demo5+0x468>
   11eec:	e446001c 	swc1	$f6,28(v0)
   11ef0:	c4480010 	lwc1	$f8,16(v0)
   11ef4:	c450001c 	lwc1	$f16,28(v0)
   11ef8:	844f0006 	lh	t7,6(v0)
   11efc:	46004287 	neg.s	$f10,$f8
   11f00:	46008487 	neg.s	$f18,$f16
   11f04:	000fc023 	negu	t8,t7
   11f08:	e44a0010 	swc1	$f10,16(v0)
   11f0c:	e452001c 	swc1	$f18,28(v0)
   11f10:	a4580006 	sh	t8,6(v0)
   11f14:	86190160 	lh	t9,352(s0)
   11f18:	3c010000 	lui	at,0x0
   11f1c:	c7a40094 	lwc1	$f4,148(sp)
   11f20:	a4590004 	sh	t9,4(v0)
   11f24:	c4260000 	lwc1	$f6,0(at)
   11f28:	240d0003 	li	t5,3
   11f2c:	25b8fffe 	addiu	t8,t5,-2
   11f30:	46062202 	mul.s	$f8,$f4,$f6
   11f34:	4600428d 	trunc.w.s	$f10,$f8
   11f38:	440b5000 	mfc1	t3,$f10
   11f3c:	00000000 	nop
   11f40:	256c0008 	addiu	t4,t3,8
   11f44:	a44c002c 	sh	t4,44(v0)
   11f48:	860e0162 	lh	t6,354(s0)
   11f4c:	ae020004 	sw	v0,4(s0)
   11f50:	ae0d0000 	sw	t5,0(s0)
   11f54:	51c00004 	beqzl	t6,11f68 <Camera_Demo5+0x4bc>
   11f58:	86190160 	lh	t9,352(s0)
   11f5c:	100000f1 	b	12324 <Camera_Demo5+0x878>
   11f60:	ae180000 	sw	t8,0(s0)
   11f64:	86190160 	lh	t9,352(s0)
   11f68:	8448002c 	lh	t0,44(v0)
   11f6c:	844a0054 	lh	t2,84(v0)
   11f70:	03284821 	addu	t1,t9,t0
   11f74:	012a5821 	addu	t3,t1,t2
   11f78:	100000ea 	b	12324 <Camera_Demo5+0x878>
   11f7c:	a60b0160 	sh	t3,352(s0)
   11f80:	2401000a 	li	at,10
   11f84:	14610090 	bne	v1,at,121c8 <Camera_Demo5+0x71c>
   11f88:	c7a00088 	lwc1	$f0,136(sp)
   11f8c:	860c0160 	lh	t4,352(s0)
   11f90:	3c070000 	lui	a3,0x0
   11f94:	24e70000 	addiu	a3,a3,0
   11f98:	258dfffb 	addiu	t5,t4,-5
   11f9c:	a4ed0004 	sh	t5,4(a3)
   11fa0:	a7a0004a 	sh	zero,74(sp)
   11fa4:	8e0500a8 	lw	a1,168(s0)
   11fa8:	8e04008c 	lw	a0,140(s0)
   11fac:	0c000000 	jal	0 <func_800437F0>
   11fb0:	27a6004a 	addiu	a2,sp,74
   11fb4:	3c070000 	lui	a3,0x0
   11fb8:	14400014 	bnez	v0,1200c <Camera_Demo5+0x560>
   11fbc:	24e70000 	addiu	a3,a3,0
   11fc0:	3c040000 	lui	a0,0x0
   11fc4:	0c000000 	jal	0 <func_800437F0>
   11fc8:	24840000 	addiu	a0,a0,0
   11fcc:	8e0e00a8 	lw	t6,168(s0)
   11fd0:	87af008e 	lh	t7,142(sp)
   11fd4:	3c070000 	lui	a3,0x0
   11fd8:	85c400b6 	lh	a0,182(t6)
   11fdc:	24e70000 	addiu	a3,a3,0
   11fe0:	01e41823 	subu	v1,t7,a0
   11fe4:	04600003 	bltz	v1,11ff4 <Camera_Demo5+0x548>
   11fe8:	00031023 	negu	v0,v1
   11fec:	10000001 	b	11ff4 <Camera_Demo5+0x548>
   11ff0:	00601025 	move	v0,v1
   11ff4:	28414000 	slti	at,v0,16384
   11ff8:	14200003 	bnez	at,12008 <Camera_Demo5+0x55c>
   11ffc:	24988001 	addiu	t8,a0,-32767
   12000:	10000002 	b	1200c <Camera_Demo5+0x560>
   12004:	a7a4004a 	sh	a0,74(sp)
   12008:	a7b8004a 	sh	t8,74(sp)
   1200c:	8e0800a8 	lw	t0,168(s0)
   12010:	87b9004a 	lh	t9,74(sp)
   12014:	87a5004a 	lh	a1,74(sp)
   12018:	850900b6 	lh	t1,182(t0)
   1201c:	3c014334 	lui	at,0x4334
   12020:	57290005 	bnel	t9,t1,12038 <Camera_Demo5+0x58c>
   12024:	44800000 	mtc1	zero,$f0
   12028:	44810000 	mtc1	at,$f0
   1202c:	10000004 	b	12040 <Camera_Demo5+0x594>
   12030:	87aa008e 	lh	t2,142(sp)
   12034:	44800000 	mtc1	zero,$f0
   12038:	00000000 	nop
   1203c:	87aa008e 	lh	t2,142(sp)
   12040:	e4e0003c 	swc1	$f0,60(a3)
   12044:	e4e00020 	swc1	$f0,32(a3)
   12048:	01455823 	subu	t3,t2,a1
   1204c:	000b6400 	sll	t4,t3,0x10
   12050:	000c6c03 	sra	t5,t4,0x10
   12054:	05a10005 	bgez	t5,1206c <Camera_Demo5+0x5c0>
   12058:	e4e00014 	swc1	$f0,20(a3)
   1205c:	3c0141a0 	lui	at,0x41a0
   12060:	44816000 	mtc1	at,$f12
   12064:	10000004 	b	12078 <Camera_Demo5+0x5cc>
   12068:	00000000 	nop
   1206c:	3c01c1a0 	lui	at,0xc1a0
   12070:	44816000 	mtc1	at,$f12
   12074:	00000000 	nop
   12078:	0c000000 	jal	0 <func_800437F0>
   1207c:	e7ac0030 	swc1	$f12,48(sp)
   12080:	c7ac0030 	lwc1	$f12,48(sp)
   12084:	3c070000 	lui	a3,0x0
   12088:	24e70000 	addiu	a3,a3,0
   1208c:	460c0082 	mul.s	$f2,$f0,$f12
   12090:	c4f00020 	lwc1	$f16,32(a3)
   12094:	46028480 	add.s	$f18,$f16,$f2
   12098:	e7a20090 	swc1	$f2,144(sp)
   1209c:	0c000000 	jal	0 <func_800437F0>
   120a0:	e4f20020 	swc1	$f18,32(a3)
   120a4:	3c010000 	lui	at,0x0
   120a8:	c4260000 	lwc1	$f6,0(at)
   120ac:	c7a40090 	lwc1	$f4,144(sp)
   120b0:	3c070000 	lui	a3,0x0
   120b4:	24e70000 	addiu	a3,a3,0
   120b8:	46062202 	mul.s	$f8,$f4,$f6
   120bc:	27a40050 	addiu	a0,sp,80
   120c0:	46080282 	mul.s	$f10,$f0,$f8
   120c4:	4600540d 	trunc.w.s	$f16,$f10
   120c8:	44028000 	mfc1	v0,$f16
   120cc:	00000000 	nop
   120d0:	a4e2002e 	sh	v0,46(a3)
   120d4:	a4e20006 	sh	v0,6(a3)
   120d8:	0c000000 	jal	0 <func_800437F0>
   120dc:	8e0500a8 	lw	a1,168(s0)
   120e0:	87a5004a 	lh	a1,74(sp)
   120e4:	24a48001 	addiu	a0,a1,-32767
   120e8:	00042400 	sll	a0,a0,0x10
   120ec:	0c000000 	jal	0 <func_800437F0>
   120f0:	00042403 	sra	a0,a0,0x10
   120f4:	3c014248 	lui	at,0x4248
   120f8:	44812000 	mtc1	at,$f4
   120fc:	c7b20050 	lwc1	$f18,80(sp)
   12100:	87a5004a 	lh	a1,74(sp)
   12104:	46002182 	mul.s	$f6,$f4,$f0
   12108:	24a48001 	addiu	a0,a1,-32767
   1210c:	00042400 	sll	a0,a0,0x10
   12110:	00042403 	sra	a0,a0,0x10
   12114:	46069200 	add.s	$f8,$f18,$f6
   12118:	0c000000 	jal	0 <func_800437F0>
   1211c:	e7a80050 	swc1	$f8,80(sp)
   12120:	3c014248 	lui	at,0x4248
   12124:	44818000 	mtc1	at,$f16
   12128:	c7aa0058 	lwc1	$f10,88(sp)
   1212c:	02002025 	move	a0,s0
   12130:	46008102 	mul.s	$f4,$f16,$f0
   12134:	27a50064 	addiu	a1,sp,100
   12138:	27a60050 	addiu	a2,sp,80
   1213c:	46045480 	add.s	$f18,$f10,$f4
   12140:	0c000000 	jal	0 <func_800437F0>
   12144:	e7b20058 	swc1	$f18,88(sp)
   12148:	3c070000 	lui	a3,0x0
   1214c:	10400006 	beqz	v0,12168 <Camera_Demo5+0x6bc>
   12150:	24e70000 	addiu	a3,a3,0
   12154:	240f00c1 	li	t7,193
   12158:	2418008f 	li	t8,143
   1215c:	a0ef0028 	sb	t7,40(a3)
   12160:	1000000a 	b	1218c <Camera_Demo5+0x6e0>
   12164:	a0f80050 	sb	t8,80(a3)
   12168:	3c010000 	lui	at,0x0
   1216c:	c4280000 	lwc1	$f8,0(at)
   12170:	c7a60094 	lwc1	$f6,148(sp)
   12174:	46083402 	mul.s	$f16,$f6,$f8
   12178:	4600828d 	trunc.w.s	$f10,$f16
   1217c:	440a5000 	mfc1	t2,$f10
   12180:	00000000 	nop
   12184:	254b0006 	addiu	t3,t2,6
   12188:	a4eb0054 	sh	t3,84(a3)
   1218c:	860d0162 	lh	t5,354(s0)
   12190:	240c0004 	li	t4,4
   12194:	ae070004 	sw	a3,4(s0)
   12198:	11a00004 	beqz	t5,121ac <Camera_Demo5+0x700>
   1219c:	ae0c0000 	sw	t4,0(s0)
   121a0:	258ffffe 	addiu	t7,t4,-2
   121a4:	1000005f 	b	12324 <Camera_Demo5+0x878>
   121a8:	ae0f0000 	sw	t7,0(s0)
   121ac:	86180160 	lh	t8,352(s0)
   121b0:	84e80054 	lh	t0,84(a3)
   121b4:	84e9007c 	lh	t1,124(a3)
   121b8:	0308c821 	addu	t9,t8,t0
   121bc:	03295021 	addu	t2,t9,t1
   121c0:	10000058 	b	12324 <Camera_Demo5+0x878>
   121c4:	a60a0160 	sh	t2,352(s0)
   121c8:	3c014348 	lui	at,0x4348
   121cc:	44812000 	mtc1	at,$f4
   121d0:	3c013e80 	lui	at,0x3e80
   121d4:	4604003c 	c.lt.s	$f0,$f4
   121d8:	00000000 	nop
   121dc:	45020008 	bc1fl	12200 <Camera_Demo5+0x754>
   121e0:	3c0143c8 	lui	at,0x43c8
   121e4:	44819000 	mtc1	at,$f18
   121e8:	3c030000 	lui	v1,0x0
   121ec:	24630000 	addiu	v1,v1,0
   121f0:	46120182 	mul.s	$f6,$f0,$f18
   121f4:	e4600024 	swc1	$f0,36(v1)
   121f8:	e4660018 	swc1	$f6,24(v1)
   121fc:	3c0143c8 	lui	at,0x43c8
   12200:	44814000 	mtc1	at,$f8
   12204:	00000000 	nop
   12208:	4608003c 	c.lt.s	$f0,$f8
   1220c:	00000000 	nop
   12210:	45000009 	bc1f	12238 <Camera_Demo5+0x78c>
   12214:	00000000 	nop
   12218:	0c000000 	jal	0 <func_800437F0>
   1221c:	00000000 	nop
   12220:	3c0141c8 	lui	at,0x41c8
   12224:	44818000 	mtc1	at,$f16
   12228:	3c030000 	lui	v1,0x0
   1222c:	24630000 	addiu	v1,v1,0
   12230:	46100282 	mul.s	$f10,$f0,$f16
   12234:	e46a001c 	swc1	$f10,28(v1)
   12238:	0c000000 	jal	0 <func_800437F0>
   1223c:	8e040090 	lw	a0,144(s0)
   12240:	860b0160 	lh	t3,352(s0)
   12244:	3c030000 	lui	v1,0x0
   12248:	24630000 	addiu	v1,v1,0
   1224c:	a46b0004 	sh	t3,4(v1)
   12250:	8e0500a8 	lw	a1,168(s0)
   12254:	0c000000 	jal	0 <func_800437F0>
   12258:	27a40050 	addiu	a0,sp,80
   1225c:	02002025 	move	a0,s0
   12260:	27a50064 	addiu	a1,sp,100
   12264:	0c000000 	jal	0 <func_800437F0>
   12268:	27a60050 	addiu	a2,sp,80
   1226c:	3c030000 	lui	v1,0x0
   12270:	10400006 	beqz	v0,1228c <Camera_Demo5+0x7e0>
   12274:	24630000 	addiu	v1,v1,0
   12278:	240c0004 	li	t4,4
   1227c:	240d008f 	li	t5,143
   12280:	a46c002c 	sh	t4,44(v1)
   12284:	1000000a 	b	122b0 <Camera_Demo5+0x804>
   12288:	a06d0028 	sb	t5,40(v1)
   1228c:	3c010000 	lui	at,0x0
   12290:	c4320000 	lwc1	$f18,0(at)
   12294:	c7a40094 	lwc1	$f4,148(sp)
   12298:	46122182 	mul.s	$f6,$f4,$f18
   1229c:	4600320d 	trunc.w.s	$f8,$f6
   122a0:	44084000 	mfc1	t0,$f8
   122a4:	00000000 	nop
   122a8:	25190008 	addiu	t9,t0,8
   122ac:	a479002c 	sh	t9,44(v1)
   122b0:	860a0162 	lh	t2,354(s0)
   122b4:	24090003 	li	t1,3
   122b8:	ae030004 	sw	v1,4(s0)
   122bc:	11400010 	beqz	t2,12300 <Camera_Demo5+0x854>
   122c0:	ae090000 	sw	t1,0(s0)
   122c4:	8e0b008c 	lw	t3,140(s0)
   122c8:	8d6c009c 	lw	t4,156(t3)
   122cc:	318d0001 	andi	t5,t4,0x1
   122d0:	51a00008 	beqzl	t5,122f4 <Camera_Demo5+0x848>
   122d4:	8e190000 	lw	t9,0(s0)
   122d8:	846e0006 	lh	t6,6(v1)
   122dc:	8478002e 	lh	t8,46(v1)
   122e0:	000e7823 	negu	t7,t6
   122e4:	00184023 	negu	t0,t8
   122e8:	a46f0006 	sh	t7,6(v1)
   122ec:	a468002e 	sh	t0,46(v1)
   122f0:	8e190000 	lw	t9,0(s0)
   122f4:	2729fffe 	addiu	t1,t9,-2
   122f8:	1000000a 	b	12324 <Camera_Demo5+0x878>
   122fc:	ae090000 	sw	t1,0(s0)
   12300:	860a0160 	lh	t2,352(s0)
   12304:	846b002c 	lh	t3,44(v1)
   12308:	846d0054 	lh	t5,84(v1)
   1230c:	014b6021 	addu	t4,t2,t3
   12310:	018d7021 	addu	t6,t4,t5
   12314:	a60e0160 	sh	t6,352(s0)
   12318:	a460002e 	sh	zero,46(v1)
   1231c:	846f002e 	lh	t7,46(v1)
   12320:	a46f0006 	sh	t7,6(v1)
   12324:	8e18008c 	lw	t8,140(s0)
   12328:	3c080000 	lui	t0,0x0
   1232c:	8d080000 	lw	t0,0(t0)
   12330:	8f02009c 	lw	v0,156(t8)
   12334:	01021823 	subu	v1,t0,v0
   12338:	28610033 	slti	at,v1,51
   1233c:	10200003 	beqz	at,1234c <Camera_Demo5+0x8a0>
   12340:	2861ffce 	slti	at,v1,-50
   12344:	10200005 	beqz	at,1235c <Camera_Demo5+0x8b0>
   12348:	00000000 	nop
   1234c:	0c000000 	jal	0 <func_800437F0>
   12350:	9604012a 	lhu	a0,298(s0)
   12354:	8e19008c 	lw	t9,140(s0)
   12358:	8f22009c 	lw	v0,156(t9)
   1235c:	3c010000 	lui	at,0x0
   12360:	ac220000 	sw	v0,0(at)
   12364:	8e090090 	lw	t1,144(s0)
   12368:	87b80072 	lh	t8,114(sp)
   1236c:	87a8008e 	lh	t0,142(sp)
   12370:	8d2a067c 	lw	t2,1660(t1)
   12374:	8fa2004c 	lw	v0,76(sp)
   12378:	0308c823 	subu	t9,t8,t0
   1237c:	000a5900 	sll	t3,t2,0x4
   12380:	0563000d 	bgezl	t3,123b8 <Camera_Demo5+0x90c>
   12384:	a7b9004a 	sh	t9,74(sp)
   12388:	804c014f 	lb	t4,335(v0)
   1238c:	24010001 	li	at,1
   12390:	51810009 	beql	t4,at,123b8 <Camera_Demo5+0x90c>
   12394:	a7b9004a 	sh	t9,74(sp)
   12398:	8c4d067c 	lw	t5,1660(v0)
   1239c:	3c012000 	lui	at,0x2000
   123a0:	01a17025 	or	t6,t5,at
   123a4:	ac4e067c 	sw	t6,1660(v0)
   123a8:	860f0160 	lh	t7,352(s0)
   123ac:	10000026 	b	12448 <Camera_Demo5+0x99c>
   123b0:	a44f0110 	sh	t7,272(v0)
   123b4:	a7b9004a 	sh	t9,74(sp)
   123b8:	8e0500a8 	lw	a1,168(s0)
   123bc:	24010002 	li	at,2
   123c0:	8fa2004c 	lw	v0,76(sp)
   123c4:	90a90002 	lbu	t1,2(a1)
   123c8:	3c0b0000 	lui	t3,0x0
   123cc:	24060001 	li	a2,1
   123d0:	1521001b 	bne	t1,at,12440 <Camera_Demo5+0x994>
   123d4:	00000000 	nop
   123d8:	8e04008c 	lw	a0,140(s0)
   123dc:	8c4c067c 	lw	t4,1660(v0)
   123e0:	8d6b0000 	lw	t3,0(t3)
   123e4:	8c8a009c 	lw	t2,156(a0)
   123e8:	318d0800 	andi	t5,t4,0x800
   123ec:	11a00005 	beqz	t5,12404 <Camera_Demo5+0x958>
   123f0:	014b1823 	subu	v1,t2,t3
   123f4:	0c000000 	jal	0 <func_800437F0>
   123f8:	24060008 	li	a2,8
   123fc:	10000013 	b	1244c <Camera_Demo5+0x9a0>
   12400:	8e0e008c 	lw	t6,140(s0)
   12404:	04600003 	bltz	v1,12414 <Camera_Demo5+0x968>
   12408:	00031023 	negu	v0,v1
   1240c:	10000001 	b	12414 <Camera_Demo5+0x968>
   12410:	00601025 	move	v0,v1
   12414:	28410bb9 	slti	at,v0,3001
   12418:	14200005 	bnez	at,12430 <Camera_Demo5+0x984>
   1241c:	00000000 	nop
   12420:	0c000000 	jal	0 <func_800437F0>
   12424:	2406000c 	li	a2,12
   12428:	10000008 	b	1244c <Camera_Demo5+0x9a0>
   1242c:	8e0e008c 	lw	t6,140(s0)
   12430:	0c000000 	jal	0 <func_800437F0>
   12434:	24060045 	li	a2,69
   12438:	10000004 	b	1244c <Camera_Demo5+0x9a0>
   1243c:	8e0e008c 	lw	t6,140(s0)
   12440:	0c000000 	jal	0 <func_800437F0>
   12444:	8e04008c 	lw	a0,140(s0)
   12448:	8e0e008c 	lw	t6,140(s0)
   1244c:	3c010000 	lui	at,0x0
   12450:	02002025 	move	a0,s0
   12454:	8dcf009c 	lw	t7,156(t6)
   12458:	2405003c 	li	a1,60
   1245c:	24060005 	li	a2,5
   12460:	0c000000 	jal	0 <func_800437F0>
   12464:	ac2f0000 	sw	t7,0(at)
   12468:	0c000000 	jal	0 <func_800437F0>
   1246c:	02002025 	move	a0,s0
   12470:	24020001 	li	v0,1
   12474:	8fbf001c 	lw	ra,28(sp)
   12478:	8fb00018 	lw	s0,24(sp)
   1247c:	27bd0098 	addiu	sp,sp,152
   12480:	03e00008 	jr	ra
   12484:	00000000 	nop

00012488 <Camera_Demo6>:
   12488:	27bdff88 	addiu	sp,sp,-120
   1248c:	afb00020 	sw	s0,32(sp)
   12490:	00808025 	move	s0,a0
   12494:	afbf0024 	sw	ra,36(sp)
   12498:	8c84008c 	lw	a0,140(a0)
   1249c:	0c000000 	jal	0 <func_800437F0>
   124a0:	00002825 	move	a1,zero
   124a4:	afa20074 	sw	v0,116(sp)
   124a8:	8e0e00a8 	lw	t6,168(s0)
   124ac:	240f0037 	li	t7,55
   124b0:	24180046 	li	t8,70
   124b4:	2419005a 	li	t9,90
   124b8:	a7af0042 	sh	t7,66(sp)
   124bc:	a7b80044 	sh	t8,68(sp)
   124c0:	a7b90046 	sh	t9,70(sp)
   124c4:	afae005c 	sw	t6,92(sp)
   124c8:	8603015e 	lh	v1,350(s0)
   124cc:	2401000a 	li	at,10
   124d0:	5060000a 	beqzl	v1,124fc <Camera_Demo6+0x74>
   124d4:	860a0142 	lh	t2,322(s0)
   124d8:	10610007 	beq	v1,at,124f8 <Camera_Demo6+0x70>
   124dc:	24010014 	li	at,20
   124e0:	10610005 	beq	v1,at,124f8 <Camera_Demo6+0x70>
   124e4:	3c090000 	lui	t1,0x0
   124e8:	8d290000 	lw	t1,0(t1)
   124ec:	85220314 	lh	v0,788(t1)
   124f0:	1040000f 	beqz	v0,12530 <Camera_Demo6+0xa8>
   124f4:	00000000 	nop
   124f8:	860a0142 	lh	t2,322(s0)
   124fc:	3c0c0000 	lui	t4,0x0
   12500:	860d0144 	lh	t5,324(s0)
   12504:	000a58c0 	sll	t3,t2,0x3
   12508:	018b6021 	addu	t4,t4,t3
   1250c:	8d8c0004 	lw	t4,4(t4)
   12510:	000d70c0 	sll	t6,t5,0x3
   12514:	3c190000 	lui	t9,0x0
   12518:	018e7821 	addu	t7,t4,t6
   1251c:	8de30004 	lw	v1,4(t7)
   12520:	84780000 	lh	t8,0(v1)
   12524:	a6180000 	sh	t8,0(s0)
   12528:	8f390000 	lw	t9,0(t9)
   1252c:	87220314 	lh	v0,788(t9)
   12530:	50400004 	beqzl	v0,12544 <Camera_Demo6+0xbc>
   12534:	8603015e 	lh	v1,350(s0)
   12538:	0c000000 	jal	0 <func_800437F0>
   1253c:	02002025 	move	a0,s0
   12540:	8603015e 	lh	v1,350(s0)
   12544:	3c014270 	lui	at,0x4270
   12548:	1060000a 	beqz	v1,12574 <Camera_Demo6+0xec>
   1254c:	00601025 	move	v0,v1
   12550:	24010001 	li	at,1
   12554:	10610031 	beq	v1,at,1261c <Camera_Demo6+0x194>
   12558:	24010002 	li	at,2
   1255c:	1041004c 	beq	v0,at,12690 <Camera_Demo6+0x208>
   12560:	24010003 	li	at,3
   12564:	10410061 	beq	v0,at,126ec <Camera_Demo6+0x264>
   12568:	26080004 	addiu	t0,s0,4
   1256c:	10000076 	b	12748 <Camera_Demo6+0x2c0>
   12570:	85020000 	lh	v0,0(t0)
   12574:	44812000 	mtc1	at,$f4
   12578:	a6000004 	sh	zero,4(s0)
   1257c:	27a40048 	addiu	a0,sp,72
   12580:	e60400fc 	swc1	$f4,252(s0)
   12584:	0c000000 	jal	0 <func_800437F0>
   12588:	8fa5005c 	lw	a1,92(sp)
   1258c:	c7a60048 	lwc1	$f6,72(sp)
   12590:	3c0141a0 	lui	at,0x41a0
   12594:	44815000 	mtc1	at,$f10
   12598:	e6060050 	swc1	$f6,80(s0)
   1259c:	c7a8004c 	lwc1	$f8,76(sp)
   125a0:	3c014348 	lui	at,0x4348
   125a4:	44812000 	mtc1	at,$f4
   125a8:	460a4400 	add.s	$f16,$f8,$f10
   125ac:	27a40048 	addiu	a0,sp,72
   125b0:	e6100054 	swc1	$f16,84(s0)
   125b4:	c7b20050 	lwc1	$f18,80(sp)
   125b8:	e6120058 	swc1	$f18,88(s0)
   125bc:	8fa50074 	lw	a1,116(sp)
   125c0:	e7a40060 	swc1	$f4,96(sp)
   125c4:	0c000000 	jal	0 <func_800437F0>
   125c8:	24a50094 	addiu	a1,a1,148
   125cc:	244907d0 	addiu	t1,v0,2000
   125d0:	240afc18 	li	t2,-1000
   125d4:	26040074 	addiu	a0,s0,116
   125d8:	a7a90066 	sh	t1,102(sp)
   125dc:	a7aa0064 	sh	t2,100(sp)
   125e0:	afa40034 	sw	a0,52(sp)
   125e4:	26050050 	addiu	a1,s0,80
   125e8:	0c000000 	jal	0 <func_800437F0>
   125ec:	27a60060 	addiu	a2,sp,96
   125f0:	8fa40034 	lw	a0,52(sp)
   125f4:	860c015e 	lh	t4,350(s0)
   125f8:	8c8d0000 	lw	t5,0(a0)
   125fc:	258e0001 	addiu	t6,t4,1
   12600:	ae0d005c 	sw	t5,92(s0)
   12604:	8c8b0004 	lw	t3,4(a0)
   12608:	ae0b0060 	sw	t3,96(s0)
   1260c:	8c8d0008 	lw	t5,8(a0)
   12610:	a60e015e 	sh	t6,350(s0)
   12614:	8603015e 	lh	v1,350(s0)
   12618:	ae0d0064 	sw	t5,100(s0)
   1261c:	00037840 	sll	t7,v1,0x1
   12620:	03afc021 	addu	t8,sp,t7
   12624:	26080004 	addiu	t0,s0,4
   12628:	85020000 	lh	v0,0(t0)
   1262c:	87180040 	lh	t8,64(t8)
   12630:	24060008 	li	a2,8
   12634:	0302082a 	slt	at,t8,v0
   12638:	50200044 	beqzl	at,1274c <Camera_Demo6+0x2c4>
   1263c:	24580001 	addiu	t8,v0,1
   12640:	8e04008c 	lw	a0,140(s0)
   12644:	8e050090 	lw	a1,144(s0)
   12648:	0c000000 	jal	0 <func_800437F0>
   1264c:	afa80034 	sw	t0,52(sp)
   12650:	27a40048 	addiu	a0,sp,72
   12654:	0c000000 	jal	0 <func_800437F0>
   12658:	8fa5005c 	lw	a1,92(sp)
   1265c:	8fa80034 	lw	t0,52(sp)
   12660:	c7a60048 	lwc1	$f6,72(sp)
   12664:	3c0141a0 	lui	at,0x41a0
   12668:	44815000 	mtc1	at,$f10
   1266c:	e5060004 	swc1	$f6,4(t0)
   12670:	c7a8004c 	lwc1	$f8,76(sp)
   12674:	460a4401 	sub.s	$f16,$f8,$f10
   12678:	e5100008 	swc1	$f16,8(t0)
   1267c:	c7b20050 	lwc1	$f18,80(sp)
   12680:	e512000c 	swc1	$f18,12(t0)
   12684:	8619015e 	lh	t9,350(s0)
   12688:	27290001 	addiu	t1,t9,1
   1268c:	a609015e 	sh	t1,350(s0)
   12690:	3c010000 	lui	at,0x0
   12694:	c4200000 	lwc1	$f0,0(at)
   12698:	3c014100 	lui	at,0x4100
   1269c:	44812000 	mtc1	at,$f4
   126a0:	26080004 	addiu	t0,s0,4
   126a4:	44060000 	mfc1	a2,$f0
   126a8:	44070000 	mfc1	a3,$f0
   126ac:	25040004 	addiu	a0,t0,4
   126b0:	afa80034 	sw	t0,52(sp)
   126b4:	26050050 	addiu	a1,s0,80
   126b8:	0c000000 	jal	0 <func_800437F0>
   126bc:	e7a40010 	swc1	$f4,16(sp)
   126c0:	8603015e 	lh	v1,350(s0)
   126c4:	8fa80034 	lw	t0,52(sp)
   126c8:	00035040 	sll	t2,v1,0x1
   126cc:	03aa5821 	addu	t3,sp,t2
   126d0:	856b0040 	lh	t3,64(t3)
   126d4:	85020000 	lh	v0,0(t0)
   126d8:	246d0001 	addiu	t5,v1,1
   126dc:	0162082a 	slt	at,t3,v0
   126e0:	5020001a 	beqzl	at,1274c <Camera_Demo6+0x2c4>
   126e4:	24580001 	addiu	t8,v0,1
   126e8:	a60d015e 	sh	t5,350(s0)
   126ec:	3c014248 	lui	at,0x4248
   126f0:	44816000 	mtc1	at,$f12
   126f4:	c60e00fc 	lwc1	$f14,252(s0)
   126f8:	3c063e4c 	lui	a2,0x3e4c
   126fc:	3c073c23 	lui	a3,0x3c23
   12700:	26080004 	addiu	t0,s0,4
   12704:	afa80034 	sw	t0,52(sp)
   12708:	34e7d70a 	ori	a3,a3,0xd70a
   1270c:	0c000000 	jal	0 <func_800437F0>
   12710:	34c6cccd 	ori	a2,a2,0xcccd
   12714:	860c015e 	lh	t4,350(s0)
   12718:	8fa80034 	lw	t0,52(sp)
   1271c:	e60000fc 	swc1	$f0,252(s0)
   12720:	000c7040 	sll	t6,t4,0x1
   12724:	03ae7821 	addu	t7,sp,t6
   12728:	85ef0040 	lh	t7,64(t7)
   1272c:	85020000 	lh	v0,0(t0)
   12730:	01e2082a 	slt	at,t7,v0
   12734:	50200005 	beqzl	at,1274c <Camera_Demo6+0x2c4>
   12738:	24580001 	addiu	t8,v0,1
   1273c:	a6000160 	sh	zero,352(s0)
   12740:	10000007 	b	12760 <Camera_Demo6+0x2d8>
   12744:	24020001 	li	v0,1
   12748:	24580001 	addiu	t8,v0,1
   1274c:	a5180000 	sh	t8,0(t0)
   12750:	8fa5005c 	lw	a1,92(sp)
   12754:	0c000000 	jal	0 <func_800437F0>
   12758:	27a40048 	addiu	a0,sp,72
   1275c:	24020001 	li	v0,1
   12760:	8fbf0024 	lw	ra,36(sp)
   12764:	8fb00020 	lw	s0,32(sp)
   12768:	27bd0078 	addiu	sp,sp,120
   1276c:	03e00008 	jr	ra
   12770:	00000000 	nop

00012774 <Camera_Demo7>:
   12774:	8482015e 	lh	v0,350(a0)
   12778:	14400009 	bnez	v0,127a0 <Camera_Demo7+0x2c>
   1277c:	00000000 	nop
   12780:	848e014c 	lh	t6,332(a0)
   12784:	24480001 	addiu	t0,v0,1
   12788:	a488015e 	sh	t0,350(a0)
   1278c:	31cffffb 	andi	t7,t6,0xfffb
   12790:	a48f014c 	sh	t7,332(a0)
   12794:	8498014c 	lh	t8,332(a0)
   12798:	37191000 	ori	t9,t8,0x1000
   1279c:	a499014c 	sh	t9,332(a0)
   127a0:	03e00008 	jr	ra
   127a4:	00000000 	nop

000127a8 <Camera_Demo8>:
   127a8:	27bdffe8 	addiu	sp,sp,-24
   127ac:	afbf0014 	sw	ra,20(sp)
   127b0:	0c000000 	jal	0 <func_800437F0>
   127b4:	00000000 	nop
   127b8:	8fbf0014 	lw	ra,20(sp)
   127bc:	27bd0018 	addiu	sp,sp,24
   127c0:	03e00008 	jr	ra
   127c4:	00000000 	nop

000127c8 <Camera_Demo9>:
   127c8:	27bdff48 	addiu	sp,sp,-184
   127cc:	afb00020 	sw	s0,32(sp)
   127d0:	00808025 	move	s0,a0
   127d4:	afbf0024 	sw	ra,36(sp)
   127d8:	8c84008c 	lw	a0,140(a0)
   127dc:	0c000000 	jal	0 <func_800437F0>
   127e0:	00002825 	move	a1,zero
   127e4:	244e0094 	addiu	t6,v0,148
   127e8:	afae0064 	sw	t6,100(sp)
   127ec:	8603015e 	lh	v1,350(s0)
   127f0:	00403025 	move	a2,v0
   127f4:	2401000a 	li	at,10
   127f8:	5060000a 	beqzl	v1,12824 <Camera_Demo9+0x5c>
   127fc:	86180142 	lh	t8,322(s0)
   12800:	10610007 	beq	v1,at,12820 <Camera_Demo9+0x58>
   12804:	24010014 	li	at,20
   12808:	10610005 	beq	v1,at,12820 <Camera_Demo9+0x58>
   1280c:	3c0f0000 	lui	t7,0x0
   12810:	8def0000 	lw	t7,0(t7)
   12814:	85e20314 	lh	v0,788(t7)
   12818:	1040000f 	beqz	v0,12858 <Camera_Demo9+0x90>
   1281c:	00000000 	nop
   12820:	86180142 	lh	t8,322(s0)
   12824:	3c090000 	lui	t1,0x0
   12828:	860a0144 	lh	t2,324(s0)
   1282c:	0018c8c0 	sll	t9,t8,0x3
   12830:	01394821 	addu	t1,t1,t9
   12834:	8d290004 	lw	t1,4(t1)
   12838:	000a58c0 	sll	t3,t2,0x3
   1283c:	3c0e0000 	lui	t6,0x0
   12840:	012b6021 	addu	t4,t1,t3
   12844:	8d830004 	lw	v1,4(t4)
   12848:	846d0000 	lh	t5,0(v1)
   1284c:	a60d000c 	sh	t5,12(s0)
   12850:	8dce0000 	lw	t6,0(t6)
   12854:	85c20314 	lh	v0,788(t6)
   12858:	10400007 	beqz	v0,12878 <Camera_Demo9+0xb0>
   1285c:	2603000c 	addiu	v1,s0,12
   12860:	02002025 	move	a0,s0
   12864:	afa30034 	sw	v1,52(sp)
   12868:	0c000000 	jal	0 <func_800437F0>
   1286c:	afa6006c 	sw	a2,108(sp)
   12870:	8fa30034 	lw	v1,52(sp)
   12874:	8fa6006c 	lw	a2,108(sp)
   12878:	846f0000 	lh	t7,0(v1)
   1287c:	3c010000 	lui	at,0x0
   12880:	ac2f0000 	sw	t7,0(at)
   12884:	9618015e 	lhu	t8,350(s0)
   12888:	2f010005 	sltiu	at,t8,5
   1288c:	102000e7 	beqz	at,12c2c <L8005641C>
   12890:	0018c080 	sll	t8,t8,0x2
   12894:	3c010000 	lui	at,0x0
   12898:	00380821 	addu	at,at,t8
   1289c:	8c380000 	lw	t8,0(at)
   128a0:	03000008 	jr	t8
   128a4:	00000000 	nop

000128a8 <L80056098>:
   128a8:	44802000 	mtc1	zero,$f4
   128ac:	26080010 	addiu	t0,s0,16
   128b0:	a5000004 	sh	zero,4(t0)
   128b4:	a5000008 	sh	zero,8(t0)
   128b8:	e5040000 	swc1	$f4,0(t0)
   128bc:	8619015e 	lh	t9,350(s0)
   128c0:	272a0001 	addiu	t2,t9,1
   128c4:	a60a015e 	sh	t2,350(s0)
   128c8:	a5000006 	sh	zero,6(t0)
   128cc:	86020008 	lh	v0,8(s0)
   128d0:	3042f000 	andi	v0,v0,0xf000
   128d4:	50400006 	beqzl	v0,128f0 <L80056098+0x48>
   128d8:	860c000a 	lh	t4,10(s0)
   128dc:	a5020008 	sh	v0,8(t0)
   128e0:	86090008 	lh	t1,8(s0)
   128e4:	312b0fff 	andi	t3,t1,0xfff
   128e8:	a60b0008 	sh	t3,8(s0)
   128ec:	860c000a 	lh	t4,10(s0)
   128f0:	a50c000a 	sh	t4,10(t0)

000128f4 <L800560E4>:
   128f4:	26080010 	addiu	t0,s0,16
   128f8:	850d000a 	lh	t5,10(t0)
   128fc:	25030004 	addiu	v1,t0,4
   12900:	27a4009c 	addiu	a0,sp,156
   12904:	19a0009f 	blez	t5,12b84 <L80056374>
   12908:	27a50074 	addiu	a1,sp,116
   1290c:	8e070004 	lw	a3,4(s0)
   12910:	260600fc 	addiu	a2,s0,252
   12914:	afa60034 	sw	a2,52(sp)
   12918:	afa8002c 	sw	t0,44(sp)
   1291c:	afa30030 	sw	v1,48(sp)
   12920:	afa80014 	sw	t0,20(sp)
   12924:	0c000000 	jal	0 <func_800437F0>
   12928:	afa30010 	sw	v1,16(sp)
   1292c:	8fa30030 	lw	v1,48(sp)
   12930:	8fa60034 	lw	a2,52(sp)
   12934:	1440000a 	bnez	v0,12960 <L800560E4+0x6c>
   12938:	8fa8002c 	lw	t0,44(sp)
   1293c:	8e070000 	lw	a3,0(s0)
   12940:	afa8002c 	sw	t0,44(sp)
   12944:	afa80014 	sw	t0,20(sp)
   12948:	afa30010 	sw	v1,16(sp)
   1294c:	27a40090 	addiu	a0,sp,144
   12950:	0c000000 	jal	0 <func_800437F0>
   12954:	27a50074 	addiu	a1,sp,116
   12958:	10400003 	beqz	v0,12968 <L800560E4+0x74>
   1295c:	8fa8002c 	lw	t0,44(sp)
   12960:	240e0002 	li	t6,2
   12964:	a60e015e 	sh	t6,350(s0)
   12968:	86020008 	lh	v0,8(s0)
   1296c:	24010001 	li	at,1
   12970:	8fa40064 	lw	a0,100(sp)
   12974:	1441000c 	bne	v0,at,129a8 <L800560E4+0xb4>
   12978:	27a5009c 	addiu	a1,sp,156
   1297c:	27a60084 	addiu	a2,sp,132
   12980:	0c000000 	jal	0 <func_800437F0>
   12984:	afa8002c 	sw	t0,44(sp)
   12988:	8fa40064 	lw	a0,100(sp)
   1298c:	27a50090 	addiu	a1,sp,144
   12990:	0c000000 	jal	0 <func_800437F0>
   12994:	27a60078 	addiu	a2,sp,120
   12998:	8fa8002c 	lw	t0,44(sp)
   1299c:	2603005c 	addiu	v1,s0,92
   129a0:	10000046 	b	12abc <L800560E4+0x1c8>
   129a4:	26050050 	addiu	a1,s0,80
   129a8:	24010004 	li	at,4
   129ac:	14410010 	bne	v0,at,129f0 <L800560E4+0xfc>
   129b0:	27a40050 	addiu	a0,sp,80
   129b4:	8e050090 	lw	a1,144(s0)
   129b8:	0c000000 	jal	0 <func_800437F0>
   129bc:	afa8002c 	sw	t0,44(sp)
   129c0:	27a40050 	addiu	a0,sp,80
   129c4:	27a5009c 	addiu	a1,sp,156
   129c8:	0c000000 	jal	0 <func_800437F0>
   129cc:	27a60084 	addiu	a2,sp,132
   129d0:	27a40050 	addiu	a0,sp,80
   129d4:	27a50090 	addiu	a1,sp,144
   129d8:	0c000000 	jal	0 <func_800437F0>
   129dc:	27a60078 	addiu	a2,sp,120
   129e0:	8fa8002c 	lw	t0,44(sp)
   129e4:	2603005c 	addiu	v1,s0,92
   129e8:	10000034 	b	12abc <L800560E4+0x1c8>
   129ec:	26050050 	addiu	a1,s0,80
   129f0:	24010008 	li	at,8
   129f4:	14410028 	bne	v0,at,12a98 <L800560E4+0x1a4>
   129f8:	27a4009c 	addiu	a0,sp,156
   129fc:	8e0500a8 	lw	a1,168(s0)
   12a00:	2603005c 	addiu	v1,s0,92
   12a04:	50a00014 	beqzl	a1,12a58 <L800560E4+0x164>
   12a08:	ae0000a8 	sw	zero,168(s0)
   12a0c:	8caf0130 	lw	t7,304(a1)
   12a10:	27a40050 	addiu	a0,sp,80
   12a14:	51e00010 	beqzl	t7,12a58 <L800560E4+0x164>
   12a18:	ae0000a8 	sw	zero,168(s0)
   12a1c:	0c000000 	jal	0 <func_800437F0>
   12a20:	afa8002c 	sw	t0,44(sp)
   12a24:	27a40050 	addiu	a0,sp,80
   12a28:	27a5009c 	addiu	a1,sp,156
   12a2c:	0c000000 	jal	0 <func_800437F0>
   12a30:	27a60084 	addiu	a2,sp,132
   12a34:	27a40050 	addiu	a0,sp,80
   12a38:	27a50090 	addiu	a1,sp,144
   12a3c:	0c000000 	jal	0 <func_800437F0>
   12a40:	27a60078 	addiu	a2,sp,120
   12a44:	8fa8002c 	lw	t0,44(sp)
   12a48:	2603005c 	addiu	v1,s0,92
   12a4c:	1000001b 	b	12abc <L800560E4+0x1c8>
   12a50:	26050050 	addiu	a1,s0,80
   12a54:	ae0000a8 	sw	zero,168(s0)
   12a58:	8c6a0000 	lw	t2,0(v1)
   12a5c:	27b80084 	addiu	t8,sp,132
   12a60:	26050050 	addiu	a1,s0,80
   12a64:	af0a0000 	sw	t2,0(t8)
   12a68:	8c790004 	lw	t9,4(v1)
   12a6c:	27a90078 	addiu	t1,sp,120
   12a70:	af190004 	sw	t9,4(t8)
   12a74:	8c6a0008 	lw	t2,8(v1)
   12a78:	af0a0008 	sw	t2,8(t8)
   12a7c:	8cac0000 	lw	t4,0(a1)
   12a80:	ad2c0000 	sw	t4,0(t1)
   12a84:	8cab0004 	lw	t3,4(a1)
   12a88:	ad2b0004 	sw	t3,4(t1)
   12a8c:	8cac0008 	lw	t4,8(a1)
   12a90:	1000000a 	b	12abc <L800560E4+0x1c8>
   12a94:	ad2c0008 	sw	t4,8(t1)
   12a98:	27a50084 	addiu	a1,sp,132
   12a9c:	0c000000 	jal	0 <func_800437F0>
   12aa0:	afa8002c 	sw	t0,44(sp)
   12aa4:	27a40090 	addiu	a0,sp,144
   12aa8:	0c000000 	jal	0 <func_800437F0>
   12aac:	27a50078 	addiu	a1,sp,120
   12ab0:	8fa8002c 	lw	t0,44(sp)
   12ab4:	2603005c 	addiu	v1,s0,92
   12ab8:	26050050 	addiu	a1,s0,80
   12abc:	27ad0084 	addiu	t5,sp,132
   12ac0:	8daf0000 	lw	t7,0(t5)
   12ac4:	26020074 	addiu	v0,s0,116
   12ac8:	3c013f00 	lui	at,0x3f00
   12acc:	ac4f0000 	sw	t7,0(v0)
   12ad0:	8dae0004 	lw	t6,4(t5)
   12ad4:	8c590000 	lw	t9,0(v0)
   12ad8:	27a40078 	addiu	a0,sp,120
   12adc:	ac4e0004 	sw	t6,4(v0)
   12ae0:	8daf0008 	lw	t7,8(t5)
   12ae4:	27a90078 	addiu	t1,sp,120
   12ae8:	ac4f0008 	sw	t7,8(v0)
   12aec:	ac790000 	sw	t9,0(v1)
   12af0:	8c580004 	lw	t8,4(v0)
   12af4:	ac780004 	sw	t8,4(v1)
   12af8:	8c590008 	lw	t9,8(v0)
   12afc:	ac790008 	sw	t9,8(v1)
   12b00:	850a0006 	lh	t2,6(t0)
   12b04:	5140000c 	beqzl	t2,12b38 <L800560E4+0x244>
   12b08:	8d2c0000 	lw	t4,0(t1)
   12b0c:	44810000 	mtc1	at,$f0
   12b10:	3c010000 	lui	at,0x0
   12b14:	c4260000 	lwc1	$f6,0(at)
   12b18:	44060000 	mfc1	a2,$f0
   12b1c:	44070000 	mfc1	a3,$f0
   12b20:	afa8002c 	sw	t0,44(sp)
   12b24:	0c000000 	jal	0 <func_800437F0>
   12b28:	e7a60010 	swc1	$f6,16(sp)
   12b2c:	10000009 	b	12b54 <L800560E4+0x260>
   12b30:	8fa8002c 	lw	t0,44(sp)
   12b34:	8d2c0000 	lw	t4,0(t1)
   12b38:	240d0001 	li	t5,1
   12b3c:	acac0000 	sw	t4,0(a1)
   12b40:	8d2b0004 	lw	t3,4(t1)
   12b44:	acab0004 	sw	t3,4(a1)
   12b48:	8d2c0008 	lw	t4,8(t1)
   12b4c:	acac0008 	sw	t4,8(a1)
   12b50:	a50d0006 	sh	t5,6(t0)
   12b54:	3c014380 	lui	at,0x4380
   12b58:	44815000 	mtc1	at,$f10
   12b5c:	c7a80074 	lwc1	$f8,116(sp)
   12b60:	460a4402 	mul.s	$f16,$f8,$f10
   12b64:	4600848d 	trunc.w.s	$f18,$f16
   12b68:	440f9000 	mfc1	t7,$f18
   12b6c:	00000000 	nop
   12b70:	a60f015a 	sh	t7,346(s0)
   12b74:	8518000a 	lh	t8,10(t0)
   12b78:	2719ffff 	addiu	t9,t8,-1
   12b7c:	1000002b 	b	12c2c <L8005641C>
   12b80:	a519000a 	sh	t9,10(t0)

00012b84 <L80056374>:
   12b84:	86020018 	lh	v0,24(s0)
   12b88:	a6000160 	sh	zero,352(s0)
   12b8c:	24011000 	li	at,4096
   12b90:	50400027 	beqzl	v0,12c30 <L8005641C+0x4>
   12b94:	8fbf0024 	lw	ra,36(sp)
   12b98:	10410016 	beq	v0,at,12bf4 <L80056374+0x70>
   12b9c:	00c02025 	move	a0,a2
   12ba0:	24012000 	li	at,8192
   12ba4:	14410021 	bne	v0,at,12c2c <L8005641C>
   12ba8:	240503fc 	li	a1,1020
   12bac:	8602000a 	lh	v0,10(s0)
   12bb0:	00003825 	move	a3,zero
   12bb4:	28410032 	slti	at,v0,50
   12bb8:	50200004 	beqzl	at,12bcc <L80056374+0x48>
   12bbc:	24010005 	li	at,5
   12bc0:	10000006 	b	12bdc <L80056374+0x58>
   12bc4:	24060005 	li	a2,5
   12bc8:	24010005 	li	at,5
   12bcc:	0041001a 	div	zero,v0,at
   12bd0:	00003012 	mflo	a2
   12bd4:	00063400 	sll	a2,a2,0x10
   12bd8:	00063403 	sra	a2,a2,0x10
   12bdc:	860a0162 	lh	t2,354(s0)
   12be0:	8e04008c 	lw	a0,140(s0)
   12be4:	0c000000 	jal	0 <func_800437F0>
   12be8:	afaa0010 	sw	t2,16(sp)
   12bec:	10000010 	b	12c30 <L8005641C+0x4>
   12bf0:	8fbf0024 	lw	ra,36(sp)
   12bf4:	0c000000 	jal	0 <func_800437F0>
   12bf8:	02002825 	move	a1,s0
   12bfc:	1000000c 	b	12c30 <L8005641C+0x4>
   12c00:	8fbf0024 	lw	ra,36(sp)

00012c04 <L800563F4>:
   12c04:	26080010 	addiu	t0,s0,16
   12c08:	8509000a 	lh	t1,10(t0)
   12c0c:	252bffff 	addiu	t3,t1,-1
   12c10:	a50b000a 	sh	t3,10(t0)
   12c14:	850c000a 	lh	t4,10(t0)
   12c18:	05830005 	bgezl	t4,12c30 <L8005641C+0x4>
   12c1c:	8fbf0024 	lw	ra,36(sp)
   12c20:	860d015e 	lh	t5,350(s0)
   12c24:	25ae0001 	addiu	t6,t5,1
   12c28:	a60e015e 	sh	t6,350(s0)

00012c2c <L8005641C>:
   12c2c:	8fbf0024 	lw	ra,36(sp)
   12c30:	8fb00020 	lw	s0,32(sp)
   12c34:	27bd00b8 	addiu	sp,sp,184
   12c38:	03e00008 	jr	ra
   12c3c:	24020001 	li	v0,1

00012c40 <Camera_Demo0>:
   12c40:	27bdffe8 	addiu	sp,sp,-24
   12c44:	afbf0014 	sw	ra,20(sp)
   12c48:	0c000000 	jal	0 <func_800437F0>
   12c4c:	00000000 	nop
   12c50:	8fbf0014 	lw	ra,20(sp)
   12c54:	27bd0018 	addiu	sp,sp,24
   12c58:	03e00008 	jr	ra
   12c5c:	00000000 	nop

00012c60 <Camera_Special0>:
   12c60:	27bdffc0 	addiu	sp,sp,-64
   12c64:	afbf0024 	sw	ra,36(sp)
   12c68:	afb00020 	sw	s0,32(sp)
   12c6c:	8482015e 	lh	v0,350(a0)
   12c70:	00808025 	move	s0,a0
   12c74:	2401000a 	li	at,10
   12c78:	5040000a 	beqzl	v0,12ca4 <Camera_Special0+0x44>
   12c7c:	860f0142 	lh	t7,322(s0)
   12c80:	10410007 	beq	v0,at,12ca0 <Camera_Special0+0x40>
   12c84:	24010014 	li	at,20
   12c88:	10410005 	beq	v0,at,12ca0 <Camera_Special0+0x40>
   12c8c:	3c0e0000 	lui	t6,0x0
   12c90:	8dce0000 	lw	t6,0(t6)
   12c94:	85c30314 	lh	v1,788(t6)
   12c98:	10600018 	beqz	v1,12cfc <Camera_Special0+0x9c>
   12c9c:	00000000 	nop
   12ca0:	860f0142 	lh	t7,322(s0)
   12ca4:	3c190000 	lui	t9,0x0
   12ca8:	86080144 	lh	t0,324(s0)
   12cac:	000fc0c0 	sll	t8,t7,0x3
   12cb0:	0338c821 	addu	t9,t9,t8
   12cb4:	8f390004 	lw	t9,4(t9)
   12cb8:	000848c0 	sll	t1,t0,0x3
   12cbc:	3c010000 	lui	at,0x0
   12cc0:	03295021 	addu	t2,t9,t1
   12cc4:	8d420004 	lw	v0,4(t2)
   12cc8:	c4281328 	lwc1	$f8,4904(at)
   12ccc:	3c0d0000 	lui	t5,0x0
   12cd0:	844b0000 	lh	t3,0(v0)
   12cd4:	24420004 	addiu	v0,v0,4
   12cd8:	448b2000 	mtc1	t3,$f4
   12cdc:	00000000 	nop
   12ce0:	468021a0 	cvt.s.w	$f6,$f4
   12ce4:	46083282 	mul.s	$f10,$f6,$f8
   12ce8:	e60a0000 	swc1	$f10,0(s0)
   12cec:	844c0000 	lh	t4,0(v0)
   12cf0:	a60c0004 	sh	t4,4(s0)
   12cf4:	8dad0000 	lw	t5,0(t5)
   12cf8:	85a30314 	lh	v1,788(t5)
   12cfc:	50600004 	beqzl	v1,12d10 <Camera_Special0+0xb0>
   12d00:	860e0004 	lh	t6,4(s0)
   12d04:	0c000000 	jal	0 <func_800437F0>
   12d08:	02002025 	move	a0,s0
   12d0c:	860e0004 	lh	t6,4(s0)
   12d10:	3c010000 	lui	at,0x0
   12d14:	ac2e0000 	sw	t6,0(at)
   12d18:	8602015e 	lh	v0,350(s0)
   12d1c:	14400002 	bnez	v0,12d28 <Camera_Special0+0xc8>
   12d20:	244f0001 	addiu	t7,v0,1
   12d24:	a60f015e 	sh	t7,350(s0)
   12d28:	8e0500a8 	lw	a1,168(s0)
   12d2c:	10a00005 	beqz	a1,12d44 <Camera_Special0+0xe4>
   12d30:	00000000 	nop
   12d34:	8cb80130 	lw	t8,304(a1)
   12d38:	260400ac 	addiu	a0,s0,172
   12d3c:	17000008 	bnez	t8,12d60 <Camera_Special0+0x100>
   12d40:	00000000 	nop
   12d44:	14a00003 	bnez	a1,12d54 <Camera_Special0+0xf4>
   12d48:	3c040000 	lui	a0,0x0
   12d4c:	0c000000 	jal	0 <func_800437F0>
   12d50:	248406b4 	addiu	a0,a0,1716
   12d54:	ae0000a8 	sw	zero,168(s0)
   12d58:	10000025 	b	12df0 <Camera_Special0+0x190>
   12d5c:	24020001 	li	v0,1
   12d60:	0c000000 	jal	0 <func_800437F0>
   12d64:	afa4002c 	sw	a0,44(sp)
   12d68:	c6000000 	lwc1	$f0,0(s0)
   12d6c:	3c010000 	lui	at,0x0
   12d70:	c430132c 	lwc1	$f16,4908(at)
   12d74:	26050050 	addiu	a1,s0,80
   12d78:	44060000 	mfc1	a2,$f0
   12d7c:	44070000 	mfc1	a3,$f0
   12d80:	8fa4002c 	lw	a0,44(sp)
   12d84:	afa50030 	sw	a1,48(sp)
   12d88:	0c000000 	jal	0 <func_800437F0>
   12d8c:	e7b00010 	swc1	$f16,16(sp)
   12d90:	26020094 	addiu	v0,s0,148
   12d94:	c4440000 	lwc1	$f4,0(v0)
   12d98:	c6120050 	lwc1	$f18,80(s0)
   12d9c:	c6080054 	lwc1	$f8,84(s0)
   12da0:	2605005c 	addiu	a1,s0,92
   12da4:	46049181 	sub.s	$f6,$f18,$f4
   12da8:	c6120058 	lwc1	$f18,88(s0)
   12dac:	e60600e4 	swc1	$f6,228(s0)
   12db0:	c44a0004 	lwc1	$f10,4(v0)
   12db4:	460a4401 	sub.s	$f16,$f8,$f10
   12db8:	e61000e8 	swc1	$f16,232(s0)
   12dbc:	c4440008 	lwc1	$f4,8(v0)
   12dc0:	46049181 	sub.s	$f6,$f18,$f4
   12dc4:	e60600ec 	swc1	$f6,236(s0)
   12dc8:	0c000000 	jal	0 <func_800437F0>
   12dcc:	8fa40030 	lw	a0,48(sp)
   12dd0:	86020160 	lh	v0,352(s0)
   12dd4:	44804000 	mtc1	zero,$f8
   12dd8:	e60000dc 	swc1	$f0,220(s0)
   12ddc:	18400003 	blez	v0,12dec <Camera_Special0+0x18c>
   12de0:	e60800d8 	swc1	$f8,216(s0)
   12de4:	2448ffff 	addiu	t0,v0,-1
   12de8:	a6080160 	sh	t0,352(s0)
   12dec:	24020001 	li	v0,1
   12df0:	8fbf0024 	lw	ra,36(sp)
   12df4:	8fb00020 	lw	s0,32(sp)
   12df8:	27bd0040 	addiu	sp,sp,64
   12dfc:	03e00008 	jr	ra
   12e00:	00000000 	nop

00012e04 <Camera_Special1>:
   12e04:	27bdffe8 	addiu	sp,sp,-24
   12e08:	afbf0014 	sw	ra,20(sp)
   12e0c:	0c000000 	jal	0 <func_800437F0>
   12e10:	00000000 	nop
   12e14:	8fbf0014 	lw	ra,20(sp)
   12e18:	27bd0018 	addiu	sp,sp,24
   12e1c:	03e00008 	jr	ra
   12e20:	00000000 	nop

00012e24 <Camera_Special2>:
   12e24:	27bdffe8 	addiu	sp,sp,-24
   12e28:	afbf0014 	sw	ra,20(sp)
   12e2c:	0c000000 	jal	0 <func_800437F0>
   12e30:	00000000 	nop
   12e34:	8fbf0014 	lw	ra,20(sp)
   12e38:	27bd0018 	addiu	sp,sp,24
   12e3c:	03e00008 	jr	ra
   12e40:	00000000 	nop

00012e44 <Camera_Special3>:
   12e44:	27bdffe8 	addiu	sp,sp,-24
   12e48:	afbf0014 	sw	ra,20(sp)
   12e4c:	0c000000 	jal	0 <func_800437F0>
   12e50:	00000000 	nop
   12e54:	8fbf0014 	lw	ra,20(sp)
   12e58:	27bd0018 	addiu	sp,sp,24
   12e5c:	03e00008 	jr	ra
   12e60:	00000000 	nop

00012e64 <Camera_Special4>:
   12e64:	27bdffb0 	addiu	sp,sp,-80
   12e68:	afbf001c 	sw	ra,28(sp)
   12e6c:	afb10018 	sw	s1,24(sp)
   12e70:	afb00014 	sw	s0,20(sp)
   12e74:	848e015e 	lh	t6,350(a0)
   12e78:	00808025 	move	s0,a0
   12e7c:	240f3200 	li	t7,12800
   12e80:	15c0000b 	bnez	t6,12eb0 <Camera_Special4+0x4c>
   12e84:	26110160 	addiu	s1,s0,352
   12e88:	3c010000 	lui	at,0x0
   12e8c:	ac2f0000 	sw	t7,0(at)
   12e90:	8498015e 	lh	t8,350(a0)
   12e94:	3c014220 	lui	at,0x4220
   12e98:	44812000 	mtc1	at,$f4
   12e9c:	84880160 	lh	t0,352(a0)
   12ea0:	27190001 	addiu	t9,t8,1
   12ea4:	a499015e 	sh	t9,350(a0)
   12ea8:	e48400fc 	swc1	$f4,252(a0)
   12eac:	a4880000 	sh	t0,0(a0)
   12eb0:	86290000 	lh	t1,0(s1)
   12eb4:	3c0142a0 	lui	at,0x42a0
   12eb8:	44816000 	mtc1	at,$f12
   12ebc:	44894000 	mtc1	t1,$f8
   12ec0:	3c013f80 	lui	at,0x3f80
   12ec4:	44813000 	mtc1	at,$f6
   12ec8:	468042a0 	cvt.s.w	$f10,$f8
   12ecc:	3c073dcc 	lui	a3,0x3dcc
   12ed0:	34e7cccd 	ori	a3,a3,0xcccd
   12ed4:	c60e00fc 	lwc1	$f14,252(s0)
   12ed8:	460a3403 	div.s	$f16,$f6,$f10
   12edc:	44068000 	mfc1	a2,$f16
   12ee0:	0c000000 	jal	0 <func_800437F0>
   12ee4:	00000000 	nop
   12ee8:	e60000fc 	swc1	$f0,252(s0)
   12eec:	86230000 	lh	v1,0(s1)
   12ef0:	860a0000 	lh	t2,0(s0)
   12ef4:	240dfe0c 	li	t5,-500
   12ef8:	27a4003c 	addiu	a0,sp,60
   12efc:	01435823 	subu	t3,t2,v1
   12f00:	2961000f 	slti	at,t3,15
   12f04:	10200004 	beqz	at,12f18 <Camera_Special4+0xb4>
   12f08:	246cffff 	addiu	t4,v1,-1
   12f0c:	a62c0000 	sh	t4,0(s1)
   12f10:	10000038 	b	12ff4 <Camera_Special4+0x190>
   12f14:	00001025 	move	v0,zero
   12f18:	a60d015a 	sh	t5,346(s0)
   12f1c:	0c000000 	jal	0 <func_800437F0>
   12f20:	8e0500a8 	lw	a1,168(s0)
   12f24:	27ae003c 	addiu	t6,sp,60
   12f28:	8dd80000 	lw	t8,0(t6)
   12f2c:	3c014316 	lui	at,0x4316
   12f30:	44812000 	mtc1	at,$f4
   12f34:	ae180050 	sw	t8,80(s0)
   12f38:	8dcf0004 	lw	t7,4(t6)
   12f3c:	ae0f0054 	sw	t7,84(s0)
   12f40:	c6120054 	lwc1	$f18,84(s0)
   12f44:	8dd80008 	lw	t8,8(t6)
   12f48:	46049201 	sub.s	$f8,$f18,$f4
   12f4c:	ae180058 	sw	t8,88(s0)
   12f50:	e6080054 	swc1	$f8,84(s0)
   12f54:	87a2004a 	lh	v0,74(sp)
   12f58:	24428001 	addiu	v0,v0,-32767
   12f5c:	00021400 	sll	v0,v0,0x10
   12f60:	00021403 	sra	v0,v0,0x10
   12f64:	244203e8 	addiu	v0,v0,1000
   12f68:	00022400 	sll	a0,v0,0x10
   12f6c:	a7a2003a 	sh	v0,58(sp)
   12f70:	0c000000 	jal	0 <func_800437F0>
   12f74:	00042403 	sra	a0,a0,0x10
   12f78:	3c014443 	lui	at,0x4443
   12f7c:	44813000 	mtc1	at,$f6
   12f80:	c6100050 	lwc1	$f16,80(s0)
   12f84:	c6120054 	lwc1	$f18,84(s0)
   12f88:	46060282 	mul.s	$f10,$f0,$f6
   12f8c:	e6120078 	swc1	$f18,120(s0)
   12f90:	46105080 	add.s	$f2,$f10,$f16
   12f94:	e6020074 	swc1	$f2,116(s0)
   12f98:	e602005c 	swc1	$f2,92(s0)
   12f9c:	0c000000 	jal	0 <func_800437F0>
   12fa0:	87a4003a 	lh	a0,58(sp)
   12fa4:	3c014443 	lui	at,0x4443
   12fa8:	44812000 	mtc1	at,$f4
   12fac:	c6060058 	lwc1	$f6,88(s0)
   12fb0:	02002025 	move	a0,s0
   12fb4:	46040202 	mul.s	$f8,$f0,$f4
   12fb8:	2605005c 	addiu	a1,s0,92
   12fbc:	46064080 	add.s	$f2,$f8,$f6
   12fc0:	e602007c 	swc1	$f2,124(s0)
   12fc4:	e6020064 	swc1	$f2,100(s0)
   12fc8:	c7aa0040 	lwc1	$f10,64(sp)
   12fcc:	0c000000 	jal	0 <func_800437F0>
   12fd0:	e60a0060 	swc1	$f10,96(s0)
   12fd4:	3c0141a0 	lui	at,0x41a0
   12fd8:	44818000 	mtc1	at,$f16
   12fdc:	24020001 	li	v0,1
   12fe0:	46100480 	add.s	$f18,$f0,$f16
   12fe4:	e6120060 	swc1	$f18,96(s0)
   12fe8:	86390000 	lh	t9,0(s1)
   12fec:	2728ffff 	addiu	t0,t9,-1
   12ff0:	a6280000 	sh	t0,0(s1)
   12ff4:	8fbf001c 	lw	ra,28(sp)
   12ff8:	8fb00014 	lw	s0,20(sp)
   12ffc:	8fb10018 	lw	s1,24(sp)
   13000:	03e00008 	jr	ra
   13004:	27bd0050 	addiu	sp,sp,80

00013008 <Camera_Special5>:
   13008:	27bdff38 	addiu	sp,sp,-200
   1300c:	afb00018 	sw	s0,24(sp)
   13010:	00808025 	move	s0,a0
   13014:	afbf001c 	sw	ra,28(sp)
   13018:	0c000000 	jal	0 <func_800437F0>
   1301c:	8c840090 	lw	a0,144(a0)
   13020:	8603015e 	lh	v1,350(s0)
   13024:	10600008 	beqz	v1,13048 <Camera_Special5+0x40>
   13028:	2401000a 	li	at,10
   1302c:	10610006 	beq	v1,at,13048 <Camera_Special5+0x40>
   13030:	24010014 	li	at,20
   13034:	10610004 	beq	v1,at,13048 <Camera_Special5+0x40>
   13038:	3c0e0000 	lui	t6,0x0
   1303c:	8dce0000 	lw	t6,0(t6)
   13040:	85c30314 	lh	v1,788(t6)
   13044:	10600050 	beqz	v1,13188 <Camera_Special5+0x180>
   13048:	3c0b0000 	lui	t3,0x0
   1304c:	8d6b0000 	lw	t3,0(t3)
   13050:	3c010000 	lui	at,0x0
   13054:	c4280000 	lwc1	$f8,0(at)
   13058:	856c01f0 	lh	t4,496(t3)
   1305c:	3c013f80 	lui	at,0x3f80
   13060:	44815000 	mtc1	at,$f10
   13064:	448c2000 	mtc1	t4,$f4
   13068:	3c014288 	lui	at,0x4288
   1306c:	44819000 	mtc1	at,$f18
   13070:	468021a0 	cvt.s.w	$f6,$f4
   13074:	860f0142 	lh	t7,322(s0)
   13078:	3c190000 	lui	t9,0x0
   1307c:	86080144 	lh	t0,324(s0)
   13080:	000fc0c0 	sll	t8,t7,0x3
   13084:	46009103 	div.s	$f4,$f18,$f0
   13088:	0338c821 	addu	t9,t9,t8
   1308c:	8f390004 	lw	t9,4(t9)
   13090:	000848c0 	sll	t1,t0,0x3
   13094:	46083082 	mul.s	$f2,$f6,$f8
   13098:	03295021 	addu	t2,t9,t1
   1309c:	8d420004 	lw	v0,4(t2)
   130a0:	3c010000 	lui	at,0x0
   130a4:	c4320000 	lwc1	$f18,0(at)
   130a8:	844d0000 	lh	t5,0(v0)
   130ac:	3c010000 	lui	at,0x0
   130b0:	2442001c 	addiu	v0,v0,28
   130b4:	448d4000 	mtc1	t5,$f8
   130b8:	3c0d0000 	lui	t5,0x0
   130bc:	46025400 	add.s	$f16,$f10,$f2
   130c0:	46041182 	mul.s	$f6,$f2,$f4
   130c4:	468042a0 	cvt.s.w	$f10,$f8
   130c8:	46068301 	sub.s	$f12,$f16,$f6
   130cc:	46125102 	mul.s	$f4,$f10,$f18
   130d0:	00000000 	nop
   130d4:	46002402 	mul.s	$f16,$f4,$f0
   130d8:	00000000 	nop
   130dc:	460c8182 	mul.s	$f6,$f16,$f12
   130e0:	e6060000 	swc1	$f6,0(s0)
   130e4:	844effe8 	lh	t6,-24(v0)
   130e8:	448e4000 	mtc1	t6,$f8
   130ec:	00000000 	nop
   130f0:	468042a0 	cvt.s.w	$f10,$f8
   130f4:	e60a0004 	swc1	$f10,4(s0)
   130f8:	844fffec 	lh	t7,-20(v0)
   130fc:	448f9000 	mtc1	t7,$f18
   13100:	00000000 	nop
   13104:	46809120 	cvt.s.w	$f4,$f18
   13108:	e6040008 	swc1	$f4,8(s0)
   1310c:	8458fff0 	lh	t8,-16(v0)
   13110:	a6180014 	sh	t8,20(s0)
   13114:	8448fff4 	lh	t0,-12(v0)
   13118:	c4280000 	lwc1	$f8,0(at)
   1311c:	3c013f00 	lui	at,0x3f00
   13120:	44888000 	mtc1	t0,$f16
   13124:	44819000 	mtc1	at,$f18
   13128:	3c010000 	lui	at,0x0
   1312c:	468081a0 	cvt.s.w	$f6,$f16
   13130:	46083282 	mul.s	$f10,$f6,$f8
   13134:	46125100 	add.s	$f4,$f10,$f18
   13138:	4600240d 	trunc.w.s	$f16,$f4
   1313c:	44098000 	mfc1	t1,$f16
   13140:	00000000 	nop
   13144:	a6090016 	sh	t1,22(s0)
   13148:	844afff8 	lh	t2,-8(v0)
   1314c:	448a3000 	mtc1	t2,$f6
   13150:	00000000 	nop
   13154:	46803220 	cvt.s.w	$f8,$f6
   13158:	e608000c 	swc1	$f8,12(s0)
   1315c:	844bfffc 	lh	t3,-4(v0)
   13160:	c4240000 	lwc1	$f4,0(at)
   13164:	448b5000 	mtc1	t3,$f10
   13168:	00000000 	nop
   1316c:	468054a0 	cvt.s.w	$f18,$f10
   13170:	46049402 	mul.s	$f16,$f18,$f4
   13174:	e6100010 	swc1	$f16,16(s0)
   13178:	844c0000 	lh	t4,0(v0)
   1317c:	a60c0018 	sh	t4,24(s0)
   13180:	8dad0000 	lw	t5,0(t5)
   13184:	85a30314 	lh	v1,788(t5)
   13188:	50600004 	beqzl	v1,1319c <Camera_Special5+0x194>
   1318c:	26050050 	addiu	a1,s0,80
   13190:	0c000000 	jal	0 <func_800437F0>
   13194:	02002025 	move	a0,s0
   13198:	26050050 	addiu	a1,s0,80
   1319c:	2606005c 	addiu	a2,s0,92
   131a0:	afa60038 	sw	a2,56(sp)
   131a4:	afa50034 	sw	a1,52(sp)
   131a8:	0c000000 	jal	0 <func_800437F0>
   131ac:	27a40064 	addiu	a0,sp,100
   131b0:	26060074 	addiu	a2,s0,116
   131b4:	afa60030 	sw	a2,48(sp)
   131b8:	27a4005c 	addiu	a0,sp,92
   131bc:	0c000000 	jal	0 <func_800437F0>
   131c0:	8fa50034 	lw	a1,52(sp)
   131c4:	27a400a8 	addiu	a0,sp,168
   131c8:	0c000000 	jal	0 <func_800437F0>
   131cc:	8e0500a8 	lw	a1,168(s0)
   131d0:	860e0018 	lh	t6,24(s0)
   131d4:	3c010000 	lui	at,0x0
   131d8:	2606001c 	addiu	a2,s0,28
   131dc:	ac2e0000 	sw	t6,0(at)
   131e0:	8603015e 	lh	v1,350(s0)
   131e4:	54600006 	bnezl	v1,13200 <Camera_Special5+0x1f8>
   131e8:	84c20000 	lh	v0,0(a2)
   131ec:	86180014 	lh	t8,20(s0)
   131f0:	246f0001 	addiu	t7,v1,1
   131f4:	a60f015e 	sh	t7,350(s0)
   131f8:	a618001c 	sh	t8,28(s0)
   131fc:	84c20000 	lh	v0,0(a2)
   13200:	18400003 	blez	v0,13210 <Camera_Special5+0x208>
   13204:	2448ffff 	addiu	t0,v0,-1
   13208:	10000062 	b	13394 <Camera_Special5+0x38c>
   1320c:	a4c80000 	sh	t0,0(a2)
   13210:	54400061 	bnezl	v0,13398 <Camera_Special5+0x390>
   13214:	02002025 	move	a0,s0
   13218:	8e0300a8 	lw	v1,168(s0)
   1321c:	50600007 	beqzl	v1,1323c <Camera_Special5+0x234>
   13220:	ae0000a8 	sw	zero,168(s0)
   13224:	8c790130 	lw	t9,304(v1)
   13228:	2449ffff 	addiu	t1,v0,-1
   1322c:	27a400a8 	addiu	a0,sp,168
   13230:	17200004 	bnez	t9,13244 <Camera_Special5+0x23c>
   13234:	26050094 	addiu	a1,s0,148
   13238:	ae0000a8 	sw	zero,168(s0)
   1323c:	10000077 	b	1341c <Camera_Special5+0x414>
   13240:	24020001 	li	v0,1
   13244:	a4c90000 	sh	t1,0(a2)
   13248:	0c000000 	jal	0 <func_800437F0>
   1324c:	afa5002c 	sw	a1,44(sp)
   13250:	c6060008 	lwc1	$f6,8(s0)
   13254:	8fa2002c 	lw	v0,44(sp)
   13258:	3c0141a0 	lui	at,0x41a0
   1325c:	4600303c 	c.lt.s	$f6,$f0
   13260:	27a4007c 	addiu	a0,sp,124
   13264:	4502004c 	bc1fl	13398 <Camera_Special5+0x390>
   13268:	02002025 	move	a0,s0
   1326c:	844a000e 	lh	t2,14(v0)
   13270:	44814000 	mtc1	at,$f8
   13274:	27a500a8 	addiu	a1,sp,168
   13278:	a7aa0072 	sh	t2,114(sp)
   1327c:	844b000c 	lh	t3,12(v0)
   13280:	27a6006c 	addiu	a2,sp,108
   13284:	e7a8006c 	swc1	$f8,108(sp)
   13288:	000b6023 	negu	t4,t3
   1328c:	0c000000 	jal	0 <func_800437F0>
   13290:	a7ac0070 	sh	t4,112(sp)
   13294:	02002025 	move	a0,s0
   13298:	8fa50034 	lw	a1,52(sp)
   1329c:	0c000000 	jal	0 <func_800437F0>
   132a0:	27a6007c 	addiu	a2,sp,124
   132a4:	27a4006c 	addiu	a0,sp,108
   132a8:	0c000000 	jal	0 <func_800437F0>
   132ac:	27a50088 	addiu	a1,sp,136
   132b0:	8fad002c 	lw	t5,44(sp)
   132b4:	87af0072 	lh	t7,114(sp)
   132b8:	85ae000e 	lh	t6,14(t5)
   132bc:	01cfc023 	subu	t8,t6,t7
   132c0:	a7b800a4 	sh	t8,164(sp)
   132c4:	c60a0004 	lwc1	$f10,4(s0)
   132c8:	0c000000 	jal	0 <func_800437F0>
   132cc:	e7aa0074 	swc1	$f10,116(sp)
   132d0:	87a800a4 	lh	t0,164(sp)
   132d4:	8fac002c 	lw	t4,44(sp)
   132d8:	3c010000 	lui	at,0x0
   132dc:	0501000e 	bgez	t0,13318 <Camera_Special5+0x310>
   132e0:	00000000 	nop
   132e4:	3c010000 	lui	at,0x0
   132e8:	c4320000 	lwc1	$f18,0(at)
   132ec:	46120102 	mul.s	$f4,$f0,$f18
   132f0:	4600240d 	trunc.w.s	$f16,$f4
   132f4:	44028000 	mfc1	v0,$f16
   132f8:	00000000 	nop
   132fc:	00021400 	sll	v0,v0,0x10
   13300:	00021403 	sra	v0,v0,0x10
   13304:	24421553 	addiu	v0,v0,5459
   13308:	00021400 	sll	v0,v0,0x10
   1330c:	00021403 	sra	v0,v0,0x10
   13310:	1000000b 	b	13340 <Camera_Special5+0x338>
   13314:	00021023 	negu	v0,v0
   13318:	c4260000 	lwc1	$f6,0(at)
   1331c:	46060202 	mul.s	$f8,$f0,$f6
   13320:	4600428d 	trunc.w.s	$f10,$f8
   13324:	44025000 	mfc1	v0,$f10
   13328:	00000000 	nop
   1332c:	00021400 	sll	v0,v0,0x10
   13330:	00021403 	sra	v0,v0,0x10
   13334:	24421553 	addiu	v0,v0,5459
   13338:	00021400 	sll	v0,v0,0x10
   1333c:	00021403 	sra	v0,v0,0x10
   13340:	858d000e 	lh	t5,14(t4)
   13344:	8fa40030 	lw	a0,48(sp)
   13348:	27a500a8 	addiu	a1,sp,168
   1334c:	25b88001 	addiu	t8,t5,-32767
   13350:	00584021 	addu	t0,v0,t8
   13354:	a7a8007a 	sh	t0,122(sp)
   13358:	86190016 	lh	t9,22(s0)
   1335c:	27a60074 	addiu	a2,sp,116
   13360:	0c000000 	jal	0 <func_800437F0>
   13364:	a7b90078 	sh	t9,120(sp)
   13368:	8fa90030 	lw	t1,48(sp)
   1336c:	8fa60038 	lw	a2,56(sp)
   13370:	02002025 	move	a0,s0
   13374:	8d2c0000 	lw	t4,0(t1)
   13378:	27a500a8 	addiu	a1,sp,168
   1337c:	accc0000 	sw	t4,0(a2)
   13380:	8d2a0004 	lw	t2,4(t1)
   13384:	acca0004 	sw	t2,4(a2)
   13388:	8d2c0008 	lw	t4,8(t1)
   1338c:	0c000000 	jal	0 <func_800437F0>
   13390:	accc0008 	sw	t4,8(a2)
   13394:	02002025 	move	a0,s0
   13398:	27a5005c 	addiu	a1,sp,92
   1339c:	8e060000 	lw	a2,0(s0)
   133a0:	0c000000 	jal	0 <func_800437F0>
   133a4:	00003825 	move	a3,zero
   133a8:	3c0d0000 	lui	t5,0x0
   133ac:	8dad0000 	lw	t5,0(t5)
   133b0:	3c010000 	lui	at,0x0
   133b4:	c4300000 	lwc1	$f16,0(at)
   133b8:	85ae019c 	lh	t6,412(t5)
   133bc:	c6080100 	lwc1	$f8,256(s0)
   133c0:	c60c000c 	lwc1	$f12,12(s0)
   133c4:	448e9000 	mtc1	t6,$f18
   133c8:	c60e00fc 	lwc1	$f14,252(s0)
   133cc:	3c073f80 	lui	a3,0x3f80
   133d0:	46809120 	cvt.s.w	$f4,$f18
   133d4:	46102182 	mul.s	$f6,$f4,$f16
   133d8:	00000000 	nop
   133dc:	46083282 	mul.s	$f10,$f6,$f8
   133e0:	44065000 	mfc1	a2,$f10
   133e4:	0c000000 	jal	0 <func_800437F0>
   133e8:	00000000 	nop
   133ec:	e60000fc 	swc1	$f0,252(s0)
   133f0:	00002025 	move	a0,zero
   133f4:	8605015a 	lh	a1,346(s0)
   133f8:	3c063f00 	lui	a2,0x3f00
   133fc:	0c000000 	jal	0 <func_800437F0>
   13400:	2407000a 	li	a3,10
   13404:	a602015a 	sh	v0,346(s0)
   13408:	02002025 	move	a0,s0
   1340c:	0c000000 	jal	0 <func_800437F0>
   13410:	8e050010 	lw	a1,16(s0)
   13414:	e6000100 	swc1	$f0,256(s0)
   13418:	24020001 	li	v0,1
   1341c:	8fbf001c 	lw	ra,28(sp)
   13420:	8fb00018 	lw	s0,24(sp)
   13424:	27bd00c8 	addiu	sp,sp,200
   13428:	03e00008 	jr	ra
   1342c:	00000000 	nop

00013430 <Camera_Special7>:
   13430:	27bdff90 	addiu	sp,sp,-112
   13434:	afb00020 	sw	s0,32(sp)
   13438:	00808025 	move	s0,a0
   1343c:	afbf002c 	sw	ra,44(sp)
   13440:	afb20028 	sw	s2,40(sp)
   13444:	afb10024 	sw	s1,36(sp)
   13448:	0c000000 	jal	0 <func_800437F0>
   1344c:	8c840090 	lw	a0,144(a0)
   13450:	860e015e 	lh	t6,350(s0)
   13454:	46000086 	mov.s	$f2,$f0
   13458:	27a4005c 	addiu	a0,sp,92
   1345c:	15c00023 	bnez	t6,134ec <Camera_Special7+0xbc>
   13460:	26120050 	addiu	s2,s0,80
   13464:	8e0f008c 	lw	t7,140(s0)
   13468:	24010006 	li	at,6
   1346c:	24190003 	li	t9,3
   13470:	85f800a4 	lh	t8,164(t7)
   13474:	26110094 	addiu	s1,s0,148
   13478:	17010003 	bne	t8,at,13488 <Camera_Special7+0x58>
   1347c:	00000000 	nop
   13480:	10000016 	b	134dc <Camera_Special7+0xac>
   13484:	a6190000 	sh	t9,0(s0)
   13488:	3c010000 	lui	at,0x0
   1348c:	c4260000 	lwc1	$f6,0(at)
   13490:	c6240000 	lwc1	$f4,0(s1)
   13494:	24080002 	li	t0,2
   13498:	3c010000 	lui	at,0x0
   1349c:	4606203c 	c.lt.s	$f4,$f6
   134a0:	00000000 	nop
   134a4:	45020004 	bc1fl	134b8 <Camera_Special7+0x88>
   134a8:	c6280004 	lwc1	$f8,4(s1)
   134ac:	1000000b 	b	134dc <Camera_Special7+0xac>
   134b0:	a6080000 	sh	t0,0(s0)
   134b4:	c6280004 	lwc1	$f8,4(s1)
   134b8:	c42a0000 	lwc1	$f10,0(at)
   134bc:	24090001 	li	t1,1
   134c0:	460a403c 	c.lt.s	$f8,$f10
   134c4:	00000000 	nop
   134c8:	45020004 	bc1fl	134dc <Camera_Special7+0xac>
   134cc:	a6090000 	sh	t1,0(s0)
   134d0:	10000002 	b	134dc <Camera_Special7+0xac>
   134d4:	a6000000 	sh	zero,0(s0)
   134d8:	a6090000 	sh	t1,0(s0)
   134dc:	860a015e 	lh	t2,350(s0)
   134e0:	a600015a 	sh	zero,346(s0)
   134e4:	254b0001 	addiu	t3,t2,1
   134e8:	a60b015e 	sh	t3,350(s0)
   134ec:	860c0000 	lh	t4,0(s0)
   134f0:	3c010000 	lui	at,0x0
   134f4:	c6100054 	lwc1	$f16,84(s0)
   134f8:	000c6880 	sll	t5,t4,0x2
   134fc:	002d0821 	addu	at,at,t5
   13500:	c4320000 	lwc1	$f18,0(at)
   13504:	26110094 	addiu	s1,s0,148
   13508:	4612803c 	c.lt.s	$f16,$f18
   1350c:	00000000 	nop
   13510:	45020050 	bc1fl	13654 <Camera_Special7+0x224>
   13514:	8e2b0000 	lw	t3,0(s1)
   13518:	8e2f0000 	lw	t7,0(s1)
   1351c:	3c010000 	lui	at,0x0
   13520:	c4200000 	lwc1	$f0,0(at)
   13524:	ac8f0000 	sw	t7,0(a0)
   13528:	8e2e0004 	lw	t6,4(s1)
   1352c:	3c0141a0 	lui	at,0x41a0
   13530:	44813000 	mtc1	at,$f6
   13534:	ac8e0004 	sw	t6,4(a0)
   13538:	8e2f0008 	lw	t7,8(s1)
   1353c:	3c010000 	lui	at,0x0
   13540:	44060000 	mfc1	a2,$f0
   13544:	ac8f0008 	sw	t7,8(a0)
   13548:	c7a40060 	lwc1	$f4,96(sp)
   1354c:	c42a0000 	lwc1	$f10,0(at)
   13550:	44070000 	mfc1	a3,$f0
   13554:	46062201 	sub.s	$f8,$f4,$f6
   13558:	02402825 	move	a1,s2
   1355c:	e7aa0010 	swc1	$f10,16(sp)
   13560:	0c000000 	jal	0 <func_800437F0>
   13564:	e7a80060 	swc1	$f8,96(sp)
   13568:	86180000 	lh	t8,0(s0)
   1356c:	3c080000 	lui	t0,0x0
   13570:	25080000 	addiu	t0,t0,0
   13574:	0018c880 	sll	t9,t8,0x2
   13578:	0338c823 	subu	t9,t9,t8
   1357c:	0019c880 	sll	t9,t9,0x2
   13580:	03284821 	addu	t1,t9,t0
   13584:	8d2b0000 	lw	t3,0(t1)
   13588:	27a40048 	addiu	a0,sp,72
   1358c:	2605005c 	addiu	a1,s0,92
   13590:	ac8b0000 	sw	t3,0(a0)
   13594:	8d2a0004 	lw	t2,4(t1)
   13598:	8c8d0000 	lw	t5,0(a0)
   1359c:	3c010000 	lui	at,0x0
   135a0:	ac8a0004 	sw	t2,4(a0)
   135a4:	8d2b0008 	lw	t3,8(t1)
   135a8:	3c190000 	lui	t9,0x0
   135ac:	ac8b0008 	sw	t3,8(a0)
   135b0:	ae0d0074 	sw	t5,116(s0)
   135b4:	8c8c0004 	lw	t4,4(a0)
   135b8:	ae0c0078 	sw	t4,120(s0)
   135bc:	8c8d0008 	lw	t5,8(a0)
   135c0:	ae0d007c 	sw	t5,124(s0)
   135c4:	8c8f0000 	lw	t7,0(a0)
   135c8:	acaf0000 	sw	t7,0(a1)
   135cc:	8c8e0004 	lw	t6,4(a0)
   135d0:	acae0004 	sw	t6,4(a1)
   135d4:	8c8f0008 	lw	t7,8(a0)
   135d8:	acaf0008 	sw	t7,8(a1)
   135dc:	86020000 	lh	v0,0(s0)
   135e0:	c6300004 	lwc1	$f16,4(s1)
   135e4:	00021880 	sll	v1,v0,0x2
   135e8:	00230821 	addu	at,at,v1
   135ec:	c4220000 	lwc1	$f2,0(at)
   135f0:	3c010000 	lui	at,0x0
   135f4:	00230821 	addu	at,at,v1
   135f8:	c4240000 	lwc1	$f4,0(at)
   135fc:	46028481 	sub.s	$f18,$f16,$f2
   13600:	0002c040 	sll	t8,v0,0x1
   13604:	0338c821 	addu	t9,t9,t8
   13608:	46022181 	sub.s	$f6,$f4,$f2
   1360c:	87390000 	lh	t9,0(t9)
   13610:	3c0141a0 	lui	at,0x41a0
   13614:	46069003 	div.s	$f0,$f18,$f6
   13618:	44994000 	mtc1	t9,$f8
   1361c:	44819000 	mtc1	at,$f18
   13620:	3c014270 	lui	at,0x4270
   13624:	468042a0 	cvt.s.w	$f10,$f8
   13628:	44814000 	mtc1	at,$f8
   1362c:	46005402 	mul.s	$f16,$f10,$f0
   13630:	4600810d 	trunc.w.s	$f4,$f16
   13634:	46009182 	mul.s	$f6,$f18,$f0
   13638:	44092000 	mfc1	t1,$f4
   1363c:	00000000 	nop
   13640:	a609015a 	sh	t1,346(s0)
   13644:	46083280 	add.s	$f10,$f6,$f8
   13648:	10000034 	b	1371c <Camera_Special7+0x2ec>
   1364c:	e60a00fc 	swc1	$f10,252(s0)
   13650:	8e2b0000 	lw	t3,0(s1)
   13654:	3c010000 	lui	at,0x0
   13658:	c4200000 	lwc1	$f0,0(at)
   1365c:	27a4005c 	addiu	a0,sp,92
   13660:	ac8b0000 	sw	t3,0(a0)
   13664:	8e2a0004 	lw	t2,4(s1)
   13668:	3c010000 	lui	at,0x0
   1366c:	26120050 	addiu	s2,s0,80
   13670:	ac8a0004 	sw	t2,4(a0)
   13674:	8e2b0008 	lw	t3,8(s1)
   13678:	44060000 	mfc1	a2,$f0
   1367c:	44070000 	mfc1	a3,$f0
   13680:	ac8b0008 	sw	t3,8(a0)
   13684:	c7b00060 	lwc1	$f16,96(sp)
   13688:	c4320000 	lwc1	$f18,0(at)
   1368c:	02402825 	move	a1,s2
   13690:	46028100 	add.s	$f4,$f16,$f2
   13694:	e7b20010 	swc1	$f18,16(sp)
   13698:	0c000000 	jal	0 <func_800437F0>
   1369c:	e7a40060 	swc1	$f4,96(sp)
   136a0:	860c0000 	lh	t4,0(s0)
   136a4:	3c0e0000 	lui	t6,0x0
   136a8:	25ce0000 	addiu	t6,t6,0
   136ac:	000c6880 	sll	t5,t4,0x2
   136b0:	01ac6823 	subu	t5,t5,t4
   136b4:	000d6880 	sll	t5,t5,0x2
   136b8:	a600015a 	sh	zero,346(s0)
   136bc:	01ae7821 	addu	t7,t5,t6
   136c0:	8df90000 	lw	t9,0(t7)
   136c4:	27a40048 	addiu	a0,sp,72
   136c8:	2605005c 	addiu	a1,s0,92
   136cc:	ac990000 	sw	t9,0(a0)
   136d0:	8df80004 	lw	t8,4(t7)
   136d4:	8c890000 	lw	t1,0(a0)
   136d8:	3c01428c 	lui	at,0x428c
   136dc:	ac980004 	sw	t8,4(a0)
   136e0:	8df90008 	lw	t9,8(t7)
   136e4:	44813000 	mtc1	at,$f6
   136e8:	ac990008 	sw	t9,8(a0)
   136ec:	ae090074 	sw	t1,116(s0)
   136f0:	8c880004 	lw	t0,4(a0)
   136f4:	ae080078 	sw	t0,120(s0)
   136f8:	8c890008 	lw	t1,8(a0)
   136fc:	ae09007c 	sw	t1,124(s0)
   13700:	8c8b0000 	lw	t3,0(a0)
   13704:	acab0000 	sw	t3,0(a1)
   13708:	8c8a0004 	lw	t2,4(a0)
   1370c:	acaa0004 	sw	t2,4(a1)
   13710:	8c8b0008 	lw	t3,8(a0)
   13714:	acab0008 	sw	t3,8(a1)
   13718:	e60600fc 	swc1	$f6,252(s0)
   1371c:	0c000000 	jal	0 <func_800437F0>
   13720:	02402025 	move	a0,s2
   13724:	44804000 	mtc1	zero,$f8
   13728:	e60000dc 	swc1	$f0,220(s0)
   1372c:	c60a0050 	lwc1	$f10,80(s0)
   13730:	e6080100 	swc1	$f8,256(s0)
   13734:	c6300000 	lwc1	$f16,0(s1)
   13738:	c6120054 	lwc1	$f18,84(s0)
   1373c:	24020001 	li	v0,1
   13740:	46105101 	sub.s	$f4,$f10,$f16
   13744:	c60a0058 	lwc1	$f10,88(s0)
   13748:	e60400e4 	swc1	$f4,228(s0)
   1374c:	c6260004 	lwc1	$f6,4(s1)
   13750:	46069201 	sub.s	$f8,$f18,$f6
   13754:	e60800e8 	swc1	$f8,232(s0)
   13758:	c6300008 	lwc1	$f16,8(s1)
   1375c:	46105101 	sub.s	$f4,$f10,$f16
   13760:	e60400ec 	swc1	$f4,236(s0)
   13764:	8fbf002c 	lw	ra,44(sp)
   13768:	8fb20028 	lw	s2,40(sp)
   1376c:	8fb10024 	lw	s1,36(sp)
   13770:	8fb00020 	lw	s0,32(sp)
   13774:	03e00008 	jr	ra
   13778:	27bd0070 	addiu	sp,sp,112

0001377c <Camera_Special6>:
   1377c:	27bdff40 	addiu	sp,sp,-192
   13780:	afbf0024 	sw	ra,36(sp)
   13784:	afb20020 	sw	s2,32(sp)
   13788:	afb1001c 	sw	s1,28(sp)
   1378c:	afb00018 	sw	s0,24(sp)
   13790:	8482015e 	lh	v0,350(a0)
   13794:	00808025 	move	s0,a0
   13798:	2401000a 	li	at,10
   1379c:	5040000a 	beqzl	v0,137c8 <Camera_Special6+0x4c>
   137a0:	860f0142 	lh	t7,322(s0)
   137a4:	10410007 	beq	v0,at,137c4 <Camera_Special6+0x48>
   137a8:	24010014 	li	at,20
   137ac:	10410005 	beq	v0,at,137c4 <Camera_Special6+0x48>
   137b0:	3c0e0000 	lui	t6,0x0
   137b4:	8dce0000 	lw	t6,0(t6)
   137b8:	85c20314 	lh	v0,788(t6)
   137bc:	1040000f 	beqz	v0,137fc <Camera_Special6+0x80>
   137c0:	00000000 	nop
   137c4:	860f0142 	lh	t7,322(s0)
   137c8:	3c190000 	lui	t9,0x0
   137cc:	860b0144 	lh	t3,324(s0)
   137d0:	000fc0c0 	sll	t8,t7,0x3
   137d4:	0338c821 	addu	t9,t9,t8
   137d8:	8f390004 	lw	t9,4(t9)
   137dc:	000b60c0 	sll	t4,t3,0x3
   137e0:	3c0f0000 	lui	t7,0x0
   137e4:	032c6821 	addu	t5,t9,t4
   137e8:	8da30004 	lw	v1,4(t5)
   137ec:	846e0000 	lh	t6,0(v1)
   137f0:	a60e0000 	sh	t6,0(s0)
   137f4:	8def0000 	lw	t7,0(t7)
   137f8:	85e20314 	lh	v0,788(t7)
   137fc:	50400004 	beqzl	v0,13810 <Camera_Special6+0x94>
   13800:	2611005c 	addiu	s1,s0,92
   13804:	0c000000 	jal	0 <func_800437F0>
   13808:	02002025 	move	a0,s0
   1380c:	2611005c 	addiu	s1,s0,92
   13810:	26120050 	addiu	s2,s0,80
   13814:	02403025 	move	a2,s2
   13818:	02202825 	move	a1,s1
   1381c:	0c000000 	jal	0 <func_800437F0>
   13820:	27a40074 	addiu	a0,sp,116
   13824:	0c000000 	jal	0 <func_800437F0>
   13828:	02002025 	move	a0,s0
   1382c:	27a400a0 	addiu	a0,sp,160
   13830:	00402825 	move	a1,v0
   13834:	0c000000 	jal	0 <func_800437F0>
   13838:	afa2006c 	sw	v0,108(sp)
   1383c:	8fa3006c 	lw	v1,108(sp)
   13840:	27b80064 	addiu	t8,sp,100
   13844:	2401ffff 	li	at,-1
   13848:	88790006 	lwl	t9,6(v1)
   1384c:	98790009 	lwr	t9,9(v1)
   13850:	26040074 	addiu	a0,s0,116
   13854:	3c090000 	lui	t1,0x0
   13858:	af190000 	sw	t9,0(t8)
   1385c:	9479000a 	lhu	t9,10(v1)
   13860:	a7190004 	sh	t9,4(t8)
   13864:	8468000c 	lh	t0,12(v1)
   13868:	55010003 	bnel	t0,at,13878 <Camera_Special6+0xfc>
   1386c:	29010169 	slti	at,t0,361
   13870:	24081770 	li	t0,6000
   13874:	29010169 	slti	at,t0,361
   13878:	10200008 	beqz	at,1389c <Camera_Special6+0x120>
   1387c:	01000821 	move	at,t0
   13880:	00084080 	sll	t0,t0,0x2
   13884:	01014023 	subu	t0,t0,at
   13888:	000840c0 	sll	t0,t0,0x3
   1388c:	01014021 	addu	t0,t0,at
   13890:	00084080 	sll	t0,t0,0x2
   13894:	00084400 	sll	t0,t0,0x10
   13898:	00084403 	sra	t0,t0,0x10
   1389c:	860c0000 	lh	t4,0(s0)
   138a0:	3c010000 	lui	at,0x0
   138a4:	c7a400a0 	lwc1	$f4,160(sp)
   138a8:	ac2c0000 	sw	t4,0(at)
   138ac:	c4860000 	lwc1	$f6,0(a0)
   138b0:	c7a800a4 	lwc1	$f8,164(sp)
   138b4:	46062032 	c.eq.s	$f4,$f6
   138b8:	00000000 	nop
   138bc:	45020010 	bc1fl	13900 <Camera_Special6+0x184>
   138c0:	8e0f0090 	lw	t7,144(s0)
   138c4:	c48a0004 	lwc1	$f10,4(a0)
   138c8:	c7a400a8 	lwc1	$f4,168(sp)
   138cc:	460a4032 	c.eq.s	$f8,$f10
   138d0:	00000000 	nop
   138d4:	4502000a 	bc1fl	13900 <Camera_Special6+0x184>
   138d8:	8e0f0090 	lw	t7,144(s0)
   138dc:	c4860008 	lwc1	$f6,8(a0)
   138e0:	46062032 	c.eq.s	$f4,$f6
   138e4:	00000000 	nop
   138e8:	45020005 	bc1fl	13900 <Camera_Special6+0x184>
   138ec:	8e0f0090 	lw	t7,144(s0)
   138f0:	860d015e 	lh	t5,350(s0)
   138f4:	55a0001a 	bnezl	t5,13960 <Camera_Special6+0x1e4>
   138f8:	26030004 	addiu	v1,s0,4
   138fc:	8e0f0090 	lw	t7,144(s0)
   13900:	240e000c 	li	t6,12
   13904:	25290000 	addiu	t1,t1,0
   13908:	a5ee0110 	sh	t6,272(t7)
   1390c:	8d380000 	lw	t8,0(t1)
   13910:	26030004 	addiu	v1,s0,4
   13914:	240c000c 	li	t4,12
   13918:	330bf0ff 	andi	t3,t8,0xf0ff
   1391c:	35790300 	ori	t9,t3,0x300
   13920:	ad390000 	sw	t9,0(t1)
   13924:	c6080098 	lwc1	$f8,152(s0)
   13928:	a46c0004 	sh	t4,4(v1)
   1392c:	27ad00a0 	addiu	t5,sp,160
   13930:	e4680000 	swc1	$f8,0(v1)
   13934:	8daf0000 	lw	t7,0(t5)
   13938:	ac8f0000 	sw	t7,0(a0)
   1393c:	8dae0004 	lw	t6,4(t5)
   13940:	ac8e0004 	sw	t6,4(a0)
   13944:	8daf0008 	lw	t7,8(t5)
   13948:	ac8f0008 	sw	t7,8(a0)
   1394c:	8602015e 	lh	v0,350(s0)
   13950:	14400002 	bnez	v0,1395c <Camera_Special6+0x1e0>
   13954:	24580001 	addiu	t8,v0,1
   13958:	a618015e 	sh	t8,350(s0)
   1395c:	26030004 	addiu	v1,s0,4
   13960:	84650004 	lh	a1,4(v1)
   13964:	3c090000 	lui	t1,0x0
   13968:	25290000 	addiu	t1,t1,0
   1396c:	18a00077 	blez	a1,13b4c <Camera_Special6+0x3d0>
   13970:	26020094 	addiu	v0,s0,148
   13974:	44855000 	mtc1	a1,$f10
   13978:	27aa0094 	addiu	t2,sp,148
   1397c:	3c013f00 	lui	at,0x3f00
   13980:	46805120 	cvt.s.w	$f4,$f10
   13984:	44810000 	mtc1	at,$f0
   13988:	3c010000 	lui	at,0x0
   1398c:	27ac0088 	addiu	t4,sp,136
   13990:	3c073c23 	lui	a3,0x3c23
   13994:	44060000 	mfc1	a2,$f0
   13998:	e7a40058 	swc1	$f4,88(sp)
   1399c:	8c990000 	lw	t9,0(a0)
   139a0:	34e7d70a 	ori	a3,a3,0xd70a
   139a4:	ad590000 	sw	t9,0(t2)
   139a8:	8c8b0004 	lw	t3,4(a0)
   139ac:	ad4b0004 	sw	t3,4(t2)
   139b0:	8c990008 	lw	t9,8(a0)
   139b4:	ad590008 	sw	t9,8(t2)
   139b8:	c7a80094 	lwc1	$f8,148(sp)
   139bc:	c4460000 	lwc1	$f6,0(v0)
   139c0:	46083281 	sub.s	$f10,$f6,$f8
   139c4:	46005102 	mul.s	$f4,$f10,$f0
   139c8:	46044180 	add.s	$f6,$f8,$f4
   139cc:	e7a60094 	swc1	$f6,148(sp)
   139d0:	c4680000 	lwc1	$f8,0(v1)
   139d4:	c44a0004 	lwc1	$f10,4(v0)
   139d8:	c4260000 	lwc1	$f6,0(at)
   139dc:	46085101 	sub.s	$f4,$f10,$f8
   139e0:	c7a80098 	lwc1	$f8,152(sp)
   139e4:	46062282 	mul.s	$f10,$f4,$f6
   139e8:	460a4100 	add.s	$f4,$f8,$f10
   139ec:	e7a40098 	swc1	$f4,152(sp)
   139f0:	8d4e0000 	lw	t6,0(t2)
   139f4:	ad8e0000 	sw	t6,0(t4)
   139f8:	8d4d0004 	lw	t5,4(t2)
   139fc:	ad8d0004 	sw	t5,4(t4)
   13a00:	8d4e0008 	lw	t6,8(t2)
   13a04:	ad8e0008 	sw	t6,8(t4)
   13a08:	c62e0004 	lwc1	$f14,4(s1)
   13a0c:	a7a80062 	sh	t0,98(sp)
   13a10:	afa30030 	sw	v1,48(sp)
   13a14:	0c000000 	jal	0 <func_800437F0>
   13a18:	c7ac0098 	lwc1	$f12,152(sp)
   13a1c:	87b80064 	lh	t8,100(sp)
   13a20:	3c0142c8 	lui	at,0x42c8
   13a24:	44813000 	mtc1	at,$f6
   13a28:	87af0066 	lh	t7,102(sp)
   13a2c:	00185823 	negu	t3,t8
   13a30:	e7a0008c 	swc1	$f0,140(sp)
   13a34:	a7ab00b0 	sh	t3,176(sp)
   13a38:	27a4007c 	addiu	a0,sp,124
   13a3c:	27a50088 	addiu	a1,sp,136
   13a40:	27a600ac 	addiu	a2,sp,172
   13a44:	e7a600ac 	swc1	$f6,172(sp)
   13a48:	0c000000 	jal	0 <func_800437F0>
   13a4c:	a7af00b2 	sh	t7,178(sp)
   13a50:	3c013f80 	lui	at,0x3f80
   13a54:	44814000 	mtc1	at,$f8
   13a58:	c7aa0058 	lwc1	$f10,88(sp)
   13a5c:	c7a40088 	lwc1	$f4,136(sp)
   13a60:	8fa30030 	lw	v1,48(sp)
   13a64:	460a4003 	div.s	$f0,$f8,$f10
   13a68:	87a80062 	lh	t0,98(sp)
   13a6c:	3c010000 	lui	at,0x0
   13a70:	e7a00054 	swc1	$f0,84(sp)
   13a74:	c62c0000 	lwc1	$f12,0(s1)
   13a78:	c6220004 	lwc1	$f2,4(s1)
   13a7c:	c62e0008 	lwc1	$f14,8(s1)
   13a80:	460c2181 	sub.s	$f6,$f4,$f12
   13a84:	46003202 	mul.s	$f8,$f6,$f0
   13a88:	46086280 	add.s	$f10,$f12,$f8
   13a8c:	e62a0000 	swc1	$f10,0(s1)
   13a90:	c7a4008c 	lwc1	$f4,140(sp)
   13a94:	46022181 	sub.s	$f6,$f4,$f2
   13a98:	46003202 	mul.s	$f8,$f6,$f0
   13a9c:	46081280 	add.s	$f10,$f2,$f8
   13aa0:	e62a0004 	swc1	$f10,4(s1)
   13aa4:	c7a40090 	lwc1	$f4,144(sp)
   13aa8:	460e2181 	sub.s	$f6,$f4,$f14
   13aac:	46003202 	mul.s	$f8,$f6,$f0
   13ab0:	46087280 	add.s	$f10,$f14,$f8
   13ab4:	e62a0008 	swc1	$f10,8(s1)
   13ab8:	c6500000 	lwc1	$f16,0(s2)
   13abc:	c7a4007c 	lwc1	$f4,124(sp)
   13ac0:	c6520004 	lwc1	$f18,4(s2)
   13ac4:	c6420008 	lwc1	$f2,8(s2)
   13ac8:	46102181 	sub.s	$f6,$f4,$f16
   13acc:	46003202 	mul.s	$f8,$f6,$f0
   13ad0:	46088280 	add.s	$f10,$f16,$f8
   13ad4:	e64a0000 	swc1	$f10,0(s2)
   13ad8:	c7a40080 	lwc1	$f4,128(sp)
   13adc:	46122181 	sub.s	$f6,$f4,$f18
   13ae0:	46003202 	mul.s	$f8,$f6,$f0
   13ae4:	46089280 	add.s	$f10,$f18,$f8
   13ae8:	e64a0004 	swc1	$f10,4(s2)
   13aec:	c7a40084 	lwc1	$f4,132(sp)
   13af0:	c7a80054 	lwc1	$f8,84(sp)
   13af4:	46022181 	sub.s	$f6,$f4,$f2
   13af8:	46083282 	mul.s	$f10,$f6,$f8
   13afc:	44883000 	mtc1	t0,$f6
   13b00:	00000000 	nop
   13b04:	46803220 	cvt.s.w	$f8,$f6
   13b08:	460a1100 	add.s	$f4,$f2,$f10
   13b0c:	e6440008 	swc1	$f4,8(s2)
   13b10:	c42a0000 	lwc1	$f10,0(at)
   13b14:	84790004 	lh	t9,4(v1)
   13b18:	c60000fc 	lwc1	$f0,252(s0)
   13b1c:	460a4102 	mul.s	$f4,$f8,$f10
   13b20:	44994000 	mtc1	t9,$f8
   13b24:	00000000 	nop
   13b28:	468042a0 	cvt.s.w	$f10,$f8
   13b2c:	46002181 	sub.s	$f6,$f4,$f0
   13b30:	460a3103 	div.s	$f4,$f6,$f10
   13b34:	46040200 	add.s	$f8,$f0,$f4
   13b38:	e60800fc 	swc1	$f8,252(s0)
   13b3c:	846c0004 	lh	t4,4(v1)
   13b40:	258dffff 	addiu	t5,t4,-1
   13b44:	10000035 	b	13c1c <Camera_Special6+0x4a0>
   13b48:	a46d0004 	sh	t5,4(v1)
   13b4c:	8d2e0000 	lw	t6,0(t1)
   13b50:	27aa0094 	addiu	t2,sp,148
   13b54:	3c013f00 	lui	at,0x3f00
   13b58:	31cff0ff 	andi	t7,t6,0xf0ff
   13b5c:	ad2f0000 	sw	t7,0(t1)
   13b60:	8c8b0000 	lw	t3,0(a0)
   13b64:	44810000 	mtc1	at,$f0
   13b68:	3c010000 	lui	at,0x0
   13b6c:	ad4b0000 	sw	t3,0(t2)
   13b70:	8c980004 	lw	t8,4(a0)
   13b74:	3c073c23 	lui	a3,0x3c23
   13b78:	44060000 	mfc1	a2,$f0
   13b7c:	ad580004 	sw	t8,4(t2)
   13b80:	8c8b0008 	lw	t3,8(a0)
   13b84:	34e7d70a 	ori	a3,a3,0xd70a
   13b88:	ad4b0008 	sw	t3,8(t2)
   13b8c:	c7aa0094 	lwc1	$f10,148(sp)
   13b90:	c4460000 	lwc1	$f6,0(v0)
   13b94:	460a3101 	sub.s	$f4,$f6,$f10
   13b98:	46002202 	mul.s	$f8,$f4,$f0
   13b9c:	46085180 	add.s	$f6,$f10,$f8
   13ba0:	e7a60094 	swc1	$f6,148(sp)
   13ba4:	c46a0000 	lwc1	$f10,0(v1)
   13ba8:	c4440004 	lwc1	$f4,4(v0)
   13bac:	c4260000 	lwc1	$f6,0(at)
   13bb0:	460a2201 	sub.s	$f8,$f4,$f10
   13bb4:	c7aa0098 	lwc1	$f10,152(sp)
   13bb8:	46064102 	mul.s	$f4,$f8,$f6
   13bbc:	46045200 	add.s	$f8,$f10,$f4
   13bc0:	e7a80098 	swc1	$f8,152(sp)
   13bc4:	8d4c0000 	lw	t4,0(t2)
   13bc8:	ae2c0000 	sw	t4,0(s1)
   13bcc:	8d590004 	lw	t9,4(t2)
   13bd0:	ae390004 	sw	t9,4(s1)
   13bd4:	8d4c0008 	lw	t4,8(t2)
   13bd8:	c62e0004 	lwc1	$f14,4(s1)
   13bdc:	ae2c0008 	sw	t4,8(s1)
   13be0:	0c000000 	jal	0 <func_800437F0>
   13be4:	c7ac0098 	lwc1	$f12,152(sp)
   13be8:	e6200004 	swc1	$f0,4(s1)
   13bec:	87ae0064 	lh	t6,100(sp)
   13bf0:	3c0142c8 	lui	at,0x42c8
   13bf4:	44813000 	mtc1	at,$f6
   13bf8:	87ad0066 	lh	t5,102(sp)
   13bfc:	000e7823 	negu	t7,t6
   13c00:	a7af00b0 	sh	t7,176(sp)
   13c04:	02402025 	move	a0,s2
   13c08:	02202825 	move	a1,s1
   13c0c:	27a600ac 	addiu	a2,sp,172
   13c10:	e7a600ac 	swc1	$f6,172(sp)
   13c14:	0c000000 	jal	0 <func_800437F0>
   13c18:	a7ad00b2 	sh	t5,178(sp)
   13c1c:	8fbf0024 	lw	ra,36(sp)
   13c20:	8fb00018 	lw	s0,24(sp)
   13c24:	8fb1001c 	lw	s1,28(sp)
   13c28:	8fb20020 	lw	s2,32(sp)
   13c2c:	27bd00c0 	addiu	sp,sp,192
   13c30:	03e00008 	jr	ra
   13c34:	24020001 	li	v0,1

00013c38 <Camera_Special8>:
   13c38:	27bdffe8 	addiu	sp,sp,-24
   13c3c:	afbf0014 	sw	ra,20(sp)
   13c40:	0c000000 	jal	0 <func_800437F0>
   13c44:	00000000 	nop
   13c48:	8fbf0014 	lw	ra,20(sp)
   13c4c:	27bd0018 	addiu	sp,sp,24
   13c50:	03e00008 	jr	ra
   13c54:	00000000 	nop

00013c58 <Camera_Special9>:
   13c58:	27bdff38 	addiu	sp,sp,-200
   13c5c:	afb00020 	sw	s0,32(sp)
   13c60:	00808025 	move	s0,a0
   13c64:	afbf0024 	sw	ra,36(sp)
   13c68:	0c000000 	jal	0 <func_800437F0>
   13c6c:	8c840090 	lw	a0,144(a0)
   13c70:	3c010000 	lui	at,0x0
   13c74:	c42c0000 	lwc1	$f12,0(at)
   13c78:	3c013f80 	lui	at,0x3f80
   13c7c:	44814000 	mtc1	at,$f8
   13c80:	e7a00098 	swc1	$f0,152(sp)
   13c84:	860e014c 	lh	t6,332(s0)
   13c88:	3c014288 	lui	at,0x4288
   13c8c:	44818000 	mtc1	at,$f16
   13c90:	31cfffef 	andi	t7,t6,0xffef
   13c94:	a60f014c 	sh	t7,332(s0)
   13c98:	46008483 	div.s	$f18,$f16,$f0
   13c9c:	3c020000 	lui	v0,0x0
   13ca0:	8c420000 	lw	v0,0(v0)
   13ca4:	2401000a 	li	at,10
   13ca8:	845801f0 	lh	t8,496(v0)
   13cac:	44982000 	mtc1	t8,$f4
   13cb0:	00000000 	nop
   13cb4:	468021a0 	cvt.s.w	$f6,$f4
   13cb8:	460c3082 	mul.s	$f2,$f6,$f12
   13cbc:	00000000 	nop
   13cc0:	46121102 	mul.s	$f4,$f2,$f18
   13cc4:	46024280 	add.s	$f10,$f8,$f2
   13cc8:	46045181 	sub.s	$f6,$f10,$f4
   13ccc:	e7a60078 	swc1	$f6,120(sp)
   13cd0:	8603015e 	lh	v1,350(s0)
   13cd4:	10600008 	beqz	v1,13cf8 <Camera_Special9+0xa0>
   13cd8:	00000000 	nop
   13cdc:	10610006 	beq	v1,at,13cf8 <Camera_Special9+0xa0>
   13ce0:	24010014 	li	at,20
   13ce4:	50610005 	beql	v1,at,13cfc <Camera_Special9+0xa4>
   13ce8:	86190142 	lh	t9,322(s0)
   13cec:	84430314 	lh	v1,788(v0)
   13cf0:	50600022 	beqzl	v1,13d7c <Camera_Special9+0x124>
   13cf4:	260c000c 	addiu	t4,s0,12
   13cf8:	86190142 	lh	t9,322(s0)
   13cfc:	3c0c0000 	lui	t4,0x0
   13d00:	860d0144 	lh	t5,324(s0)
   13d04:	001958c0 	sll	t3,t9,0x3
   13d08:	018b6021 	addu	t4,t4,t3
   13d0c:	8d8c0004 	lw	t4,4(t4)
   13d10:	000d70c0 	sll	t6,t5,0x3
   13d14:	c7a40078 	lwc1	$f4,120(sp)
   13d18:	018e7821 	addu	t7,t4,t6
   13d1c:	8de20004 	lw	v0,4(t7)
   13d20:	2604000c 	addiu	a0,s0,12
   13d24:	3c0d0000 	lui	t5,0x0
   13d28:	84580000 	lh	t8,0(v0)
   13d2c:	24420008 	addiu	v0,v0,8
   13d30:	44984000 	mtc1	t8,$f8
   13d34:	00000000 	nop
   13d38:	46804420 	cvt.s.w	$f16,$f8
   13d3c:	460c8482 	mul.s	$f18,$f16,$f12
   13d40:	00000000 	nop
   13d44:	46009282 	mul.s	$f10,$f18,$f0
   13d48:	00000000 	nop
   13d4c:	46045182 	mul.s	$f6,$f10,$f4
   13d50:	e4860000 	swc1	$f6,0(a0)
   13d54:	8459fffc 	lh	t9,-4(v0)
   13d58:	44994000 	mtc1	t9,$f8
   13d5c:	00000000 	nop
   13d60:	46804420 	cvt.s.w	$f16,$f8
   13d64:	e4900004 	swc1	$f16,4(a0)
   13d68:	844b0000 	lh	t3,0(v0)
   13d6c:	a48b0008 	sh	t3,8(a0)
   13d70:	8dad0000 	lw	t5,0(t5)
   13d74:	85a30314 	lh	v1,788(t5)
   13d78:	260c000c 	addiu	t4,s0,12
   13d7c:	10600003 	beqz	v1,13d8c <Camera_Special9+0x134>
   13d80:	afac0038 	sw	t4,56(sp)
   13d84:	0c000000 	jal	0 <func_800437F0>
   13d88:	02002025 	move	a0,s0
   13d8c:	8e050000 	lw	a1,0(s0)
   13d90:	26020094 	addiu	v0,s0,148
   13d94:	50a00007 	beqzl	a1,13db4 <Camera_Special9+0x15c>
   13d98:	8c590000 	lw	t9,0(v0)
   13d9c:	0c000000 	jal	0 <func_800437F0>
   13da0:	27a4007c 	addiu	a0,sp,124
   13da4:	260e0094 	addiu	t6,s0,148
   13da8:	10000015 	b	13e00 <Camera_Special9+0x1a8>
   13dac:	afae003c 	sw	t6,60(sp)
   13db0:	8c590000 	lw	t9,0(v0)
   13db4:	27af007c 	addiu	t7,sp,124
   13db8:	adf90000 	sw	t9,0(t7)
   13dbc:	8c580004 	lw	t8,4(v0)
   13dc0:	adf80004 	sw	t8,4(t7)
   13dc4:	8c590008 	lw	t9,8(v0)
   13dc8:	adf90008 	sw	t9,8(t7)
   13dcc:	8c58000c 	lw	t8,12(v0)
   13dd0:	adf8000c 	sw	t8,12(t7)
   13dd4:	8c590010 	lw	t9,16(v0)
   13dd8:	adf90010 	sw	t9,16(t7)
   13ddc:	8fab0038 	lw	t3,56(sp)
   13de0:	c7b20098 	lwc1	$f18,152(sp)
   13de4:	c7a60080 	lwc1	$f6,128(sp)
   13de8:	c56a0000 	lwc1	$f10,0(t3)
   13dec:	afa2003c 	sw	v0,60(sp)
   13df0:	a7a00088 	sh	zero,136(sp)
   13df4:	460a9100 	add.s	$f4,$f18,$f10
   13df8:	46043200 	add.s	$f8,$f6,$f4
   13dfc:	e7a80080 	swc1	$f8,128(sp)
   13e00:	26050050 	addiu	a1,s0,80
   13e04:	2606005c 	addiu	a2,s0,92
   13e08:	afa60048 	sw	a2,72(sp)
   13e0c:	afa50044 	sw	a1,68(sp)
   13e10:	0c000000 	jal	0 <func_800437F0>
   13e14:	27a4009c 	addiu	a0,sp,156
   13e18:	8faa0038 	lw	t2,56(sp)
   13e1c:	3c010000 	lui	at,0x0
   13e20:	854d0008 	lh	t5,8(t2)
   13e24:	ac2d0000 	sw	t5,0(at)
   13e28:	8603015e 	lh	v1,350(s0)
   13e2c:	2c610005 	sltiu	at,v1,5
   13e30:	10200107 	beqz	at,14250 <L80057A38+0x8>
   13e34:	00036080 	sll	t4,v1,0x2
   13e38:	3c010000 	lui	at,0x0
   13e3c:	002c0821 	addu	at,at,t4
   13e40:	8c2c0000 	lw	t4,0(at)
   13e44:	01800008 	jr	t4
   13e48:	00000000 	nop

00013e4c <L8005763C>:
   13e4c:	860e014c 	lh	t6,332(s0)
   13e50:	24780001 	addiu	t8,v1,1
   13e54:	a618015e 	sh	t8,350(s0)
   13e58:	31cffff9 	andi	t7,t6,0xfff9
   13e5c:	a60f014c 	sh	t7,332(s0)
   13e60:	8fb9003c 	lw	t9,60(sp)
   13e64:	87ad008a 	lh	t5,138(sp)
   13e68:	87ac008a 	lh	t4,138(sp)
   13e6c:	872b000e 	lh	t3,14(t9)
   13e70:	87af008a 	lh	t7,138(sp)
   13e74:	258e8001 	addiu	t6,t4,-32767
   13e78:	016d1023 	subu	v0,t3,t5
   13e7c:	04400003 	bltz	v0,13e8c <L8005763C+0x40>
   13e80:	00023823 	negu	a3,v0
   13e84:	10000001 	b	13e8c <L8005763C+0x40>
   13e88:	00403825 	move	a3,v0
   13e8c:	28e14000 	slti	at,a3,16384
   13e90:	54200004 	bnezl	at,13ea4 <L80057694>
   13e94:	a60f0018 	sh	t7,24(s0)
   13e98:	10000002 	b	13ea4 <L80057694>
   13e9c:	a60e0018 	sh	t6,24(s0)
   13ea0:	a60f0018 	sh	t7,24(s0)

00013ea4 <L80057694>:
   13ea4:	86180006 	lh	t8,6(s0)
   13ea8:	2719ffff 	addiu	t9,t8,-1
   13eac:	a6190006 	sh	t9,6(s0)
   13eb0:	860b0006 	lh	t3,6(s0)
   13eb4:	5d60011b 	bgtzl	t3,14324 <L80057A38+0xdc>
   13eb8:	8fb9003c 	lw	t9,60(sp)
   13ebc:	860d015e 	lh	t5,350(s0)
   13ec0:	25ac0001 	addiu	t4,t5,1
   13ec4:	a60c015e 	sh	t4,350(s0)
   13ec8:	854e0008 	lh	t6,8(t2)
   13ecc:	31cf0001 	andi	t7,t6,0x1
   13ed0:	51e0001f 	beqzl	t7,13f50 <L80057694+0xac>
   13ed4:	240b0e38 	li	t3,3640
   13ed8:	0c000000 	jal	0 <func_800437F0>
   13edc:	02002025 	move	a0,s0
   13ee0:	26040074 	addiu	a0,s0,116
   13ee4:	afa40040 	sw	a0,64(sp)
   13ee8:	0c000000 	jal	0 <func_800437F0>
   13eec:	00402825 	move	a1,v0
   13ef0:	8fb80040 	lw	t8,64(sp)
   13ef4:	27a7004c 	addiu	a3,sp,76
   13ef8:	27af00ac 	addiu	t7,sp,172
   13efc:	8f0b0000 	lw	t3,0(t8)
   13f00:	aceb0000 	sw	t3,0(a3)
   13f04:	8f190004 	lw	t9,4(t8)
   13f08:	8cee0000 	lw	t6,0(a3)
   13f0c:	acf90004 	sw	t9,4(a3)
   13f10:	8f0b0008 	lw	t3,8(t8)
   13f14:	aceb0008 	sw	t3,8(a3)
   13f18:	8fad0048 	lw	t5,72(sp)
   13f1c:	adae0000 	sw	t6,0(t5)
   13f20:	8cec0004 	lw	t4,4(a3)
   13f24:	adac0004 	sw	t4,4(t5)
   13f28:	8cee0008 	lw	t6,8(a3)
   13f2c:	adae0008 	sw	t6,8(t5)
   13f30:	8cf90000 	lw	t9,0(a3)
   13f34:	adf90000 	sw	t9,0(t7)
   13f38:	8cf80004 	lw	t8,4(a3)
   13f3c:	adf80004 	sw	t8,4(t7)
   13f40:	8cf90008 	lw	t9,8(a3)
   13f44:	1000004f 	b	14084 <L80057694+0x1e0>
   13f48:	adf90008 	sw	t9,8(t7)
   13f4c:	240b0e38 	li	t3,3640
   13f50:	a7ab00a8 	sh	t3,168(sp)
   13f54:	8e0d008c 	lw	t5,140(s0)
   13f58:	26030018 	addiu	v1,s0,24
   13f5c:	24010aaa 	li	at,2730
   13f60:	8dac009c 	lw	t4,156(t5)
   13f64:	26040074 	addiu	a0,s0,116
   13f68:	318e0001 	andi	t6,t4,0x1
   13f6c:	51c00004 	beqzl	t6,13f80 <L80057694+0xdc>
   13f70:	2407ffff 	li	a3,-1
   13f74:	10000002 	b	13f80 <L80057694+0xdc>
   13f78:	24070001 	li	a3,1
   13f7c:	2407ffff 	li	a3,-1
   13f80:	00e10019 	multu	a3,at
   13f84:	3c014348 	lui	at,0x4348
   13f88:	44818000 	mtc1	at,$f16
   13f8c:	c7b20078 	lwc1	$f18,120(sp)
   13f90:	846f0000 	lh	t7,0(v1)
   13f94:	afa40040 	sw	a0,64(sp)
   13f98:	46128282 	mul.s	$f10,$f16,$f18
   13f9c:	afa30034 	sw	v1,52(sp)
   13fa0:	8fa50044 	lw	a1,68(sp)
   13fa4:	27a600a4 	addiu	a2,sp,164
   13fa8:	00001012 	mflo	v0
   13fac:	00024c00 	sll	t1,v0,0x10
   13fb0:	00094c03 	sra	t1,t1,0x10
   13fb4:	01e9c021 	addu	t8,t7,t1
   13fb8:	a7b800aa 	sh	t8,170(sp)
   13fbc:	e7aa00a4 	swc1	$f10,164(sp)
   13fc0:	0c000000 	jal	0 <func_800437F0>
   13fc4:	afa90030 	sw	t1,48(sp)
   13fc8:	8fb90040 	lw	t9,64(sp)
   13fcc:	27a7004c 	addiu	a3,sp,76
   13fd0:	27b800ac 	addiu	t8,sp,172
   13fd4:	8f2d0000 	lw	t5,0(t9)
   13fd8:	02002025 	move	a0,s0
   13fdc:	27a500ac 	addiu	a1,sp,172
   13fe0:	aced0000 	sw	t5,0(a3)
   13fe4:	8f2b0004 	lw	t3,4(t9)
   13fe8:	8cef0000 	lw	t7,0(a3)
   13fec:	aceb0004 	sw	t3,4(a3)
   13ff0:	8f2d0008 	lw	t5,8(t9)
   13ff4:	aced0008 	sw	t5,8(a3)
   13ff8:	8fac0048 	lw	t4,72(sp)
   13ffc:	ad8f0000 	sw	t7,0(t4)
   14000:	8cee0004 	lw	t6,4(a3)
   14004:	ad8e0004 	sw	t6,4(t4)
   14008:	8cef0008 	lw	t7,8(a3)
   1400c:	ad8f0008 	sw	t7,8(t4)
   14010:	8ceb0000 	lw	t3,0(a3)
   14014:	af0b0000 	sw	t3,0(t8)
   14018:	8cf90004 	lw	t9,4(a3)
   1401c:	af190004 	sw	t9,4(t8)
   14020:	8ceb0008 	lw	t3,8(a3)
   14024:	af0b0008 	sw	t3,8(t8)
   14028:	0c000000 	jal	0 <func_800437F0>
   1402c:	8fa6003c 	lw	a2,60(sp)
   14030:	10400014 	beqz	v0,14084 <L80057694+0x1e0>
   14034:	8fa30034 	lw	v1,52(sp)
   14038:	8fa80030 	lw	t0,48(sp)
   1403c:	846d0000 	lh	t5,0(v1)
   14040:	8fa40040 	lw	a0,64(sp)
   14044:	00084023 	negu	t0,t0
   14048:	00084400 	sll	t0,t0,0x10
   1404c:	00084403 	sra	t0,t0,0x10
   14050:	01a86021 	addu	t4,t5,t0
   14054:	a7ac00aa 	sh	t4,170(sp)
   14058:	8fa50044 	lw	a1,68(sp)
   1405c:	0c000000 	jal	0 <func_800437F0>
   14060:	27a600a4 	addiu	a2,sp,164
   14064:	8faf0040 	lw	t7,64(sp)
   14068:	8fae0048 	lw	t6,72(sp)
   1406c:	8df90000 	lw	t9,0(t7)
   14070:	add90000 	sw	t9,0(t6)
   14074:	8df80004 	lw	t8,4(t7)
   14078:	add80004 	sw	t8,4(t6)
   1407c:	8df90008 	lw	t9,8(t7)
   14080:	add90008 	sw	t9,8(t6)
   14084:	8faa0038 	lw	t2,56(sp)

00014088 <L80057878>:
   14088:	8fad003c 	lw	t5,60(sp)
   1408c:	27ab00ac 	addiu	t3,sp,172
   14090:	3c013e80 	lui	at,0x3e80
   14094:	8dae0000 	lw	t6,0(t5)
   14098:	44810000 	mtc1	at,$f0
   1409c:	3c010000 	lui	at,0x0
   140a0:	ad6e0000 	sw	t6,0(t3)
   140a4:	8dac0004 	lw	t4,4(t5)
   140a8:	44060000 	mfc1	a2,$f0
   140ac:	44070000 	mfc1	a3,$f0
   140b0:	ad6c0004 	sw	t4,4(t3)
   140b4:	8dae0008 	lw	t6,8(t5)
   140b8:	27a400ac 	addiu	a0,sp,172
   140bc:	ad6e0008 	sw	t6,8(t3)
   140c0:	c5440000 	lwc1	$f4,0(t2)
   140c4:	c7a60098 	lwc1	$f6,152(sp)
   140c8:	c7b000b0 	lwc1	$f16,176(sp)
   140cc:	c42a0000 	lwc1	$f10,0(at)
   140d0:	46043200 	add.s	$f8,$f6,$f4
   140d4:	8fa50044 	lw	a1,68(sp)
   140d8:	e7aa0010 	swc1	$f10,16(sp)
   140dc:	46088480 	add.s	$f18,$f16,$f8
   140e0:	0c000000 	jal	0 <func_800437F0>
   140e4:	e7b200b0 	swc1	$f18,176(sp)
   140e8:	860f0008 	lh	t7,8(s0)
   140ec:	25f8ffff 	addiu	t8,t7,-1
   140f0:	a6180008 	sh	t8,8(s0)
   140f4:	86190008 	lh	t9,8(s0)
   140f8:	5f20008a 	bgtzl	t9,14324 <L80057A38+0xdc>
   140fc:	8fb9003c 	lw	t9,60(sp)
   14100:	860b015e 	lh	t3,350(s0)
   14104:	26030018 	addiu	v1,s0,24
   14108:	256d0001 	addiu	t5,t3,1
   1410c:	a60d015e 	sh	t5,350(s0)
   14110:	846c0000 	lh	t4,0(v1)
   14114:	258e8001 	addiu	t6,t4,-32767
   14118:	a46e0000 	sh	t6,0(v1)
   1411c:	8faa0038 	lw	t2,56(sp)

00014120 <L80057910>:
   14120:	8fb8003c 	lw	t8,60(sp)
   14124:	27af00ac 	addiu	t7,sp,172
   14128:	3c013f00 	lui	at,0x3f00
   1412c:	8f0b0000 	lw	t3,0(t8)
   14130:	44810000 	mtc1	at,$f0
   14134:	3c010000 	lui	at,0x0
   14138:	adeb0000 	sw	t3,0(t7)
   1413c:	8f190004 	lw	t9,4(t8)
   14140:	260d0074 	addiu	t5,s0,116
   14144:	26030018 	addiu	v1,s0,24
   14148:	adf90004 	sw	t9,4(t7)
   1414c:	8f0b0008 	lw	t3,8(t8)
   14150:	44060000 	mfc1	a2,$f0
   14154:	44070000 	mfc1	a3,$f0
   14158:	adeb0008 	sw	t3,8(t7)
   1415c:	c5440000 	lwc1	$f4,0(t2)
   14160:	c7a60098 	lwc1	$f6,152(sp)
   14164:	c7a800b0 	lwc1	$f8,176(sp)
   14168:	c42a0000 	lwc1	$f10,0(at)
   1416c:	46043400 	add.s	$f16,$f6,$f4
   14170:	afa30034 	sw	v1,52(sp)
   14174:	afad0040 	sw	t5,64(sp)
   14178:	8fa50044 	lw	a1,68(sp)
   1417c:	46104480 	add.s	$f18,$f8,$f16
   14180:	27a400ac 	addiu	a0,sp,172
   14184:	e7aa0010 	swc1	$f10,16(sp)
   14188:	0c000000 	jal	0 <func_800437F0>
   1418c:	e7b200b0 	swc1	$f18,176(sp)
   14190:	3c063e99 	lui	a2,0x3e99
   14194:	34c6999a 	ori	a2,a2,0x999a
   14198:	24040aaa 	li	a0,2730
   1419c:	87a500a0 	lh	a1,160(sp)
   141a0:	0c000000 	jal	0 <func_800437F0>
   141a4:	2407000a 	li	a3,10
   141a8:	8fa30034 	lw	v1,52(sp)
   141ac:	a7a200a8 	sh	v0,168(sp)
   141b0:	3c063e99 	lui	a2,0x3e99
   141b4:	34c6999a 	ori	a2,a2,0x999a
   141b8:	87a500a2 	lh	a1,162(sp)
   141bc:	2407000a 	li	a3,10
   141c0:	0c000000 	jal	0 <func_800437F0>
   141c4:	84640000 	lh	a0,0(v1)
   141c8:	3c014270 	lui	at,0x4270
   141cc:	44816000 	mtc1	at,$f12
   141d0:	3c063e99 	lui	a2,0x3e99
   141d4:	a7a200aa 	sh	v0,170(sp)
   141d8:	34c6999a 	ori	a2,a2,0x999a
   141dc:	c7ae009c 	lwc1	$f14,156(sp)
   141e0:	0c000000 	jal	0 <func_800437F0>
   141e4:	3c073f80 	lui	a3,0x3f80
   141e8:	e7a000a4 	swc1	$f0,164(sp)
   141ec:	8fa40040 	lw	a0,64(sp)
   141f0:	8fa50044 	lw	a1,68(sp)
   141f4:	0c000000 	jal	0 <func_800437F0>
   141f8:	27a600a4 	addiu	a2,sp,164
   141fc:	8fae0040 	lw	t6,64(sp)
   14200:	8fac0048 	lw	t4,72(sp)
   14204:	8dd80000 	lw	t8,0(t6)
   14208:	ad980000 	sw	t8,0(t4)
   1420c:	8dcf0004 	lw	t7,4(t6)
   14210:	ad8f0004 	sw	t7,4(t4)
   14214:	8dd80008 	lw	t8,8(t6)
   14218:	ad980008 	sw	t8,8(t4)
   1421c:	8619000a 	lh	t9,10(s0)
   14220:	272bffff 	addiu	t3,t9,-1
   14224:	a60b000a 	sh	t3,10(s0)
   14228:	860d000a 	lh	t5,10(s0)
   1422c:	5da0003d 	bgtzl	t5,14324 <L80057A38+0xdc>
   14230:	8fb9003c 	lw	t9,60(sp)
   14234:	860c015e 	lh	t4,350(s0)
   14238:	258e0001 	addiu	t6,t4,1
   1423c:	a60e015e 	sh	t6,350(s0)
   14240:	8faa0038 	lw	t2,56(sp)
   14244:	8603015e 	lh	v1,350(s0)

00014248 <L80057A38>:
   14248:	246f0001 	addiu	t7,v1,1
   1424c:	a60f015e 	sh	t7,350(s0)
   14250:	8618014c 	lh	t8,332(s0)
   14254:	3c010000 	lui	at,0x0
   14258:	3c0b0000 	lui	t3,0x0
   1425c:	37190410 	ori	t9,t8,0x410
   14260:	a619014c 	sh	t9,332(s0)
   14264:	ac200000 	sw	zero,0(at)
   14268:	3c010000 	lui	at,0x0
   1426c:	c4260000 	lwc1	$f6,0(at)
   14270:	c60400d8 	lwc1	$f4,216(s0)
   14274:	02002025 	move	a0,s0
   14278:	24060002 	li	a2,2
   1427c:	4604303c 	c.lt.s	$f6,$f4
   14280:	00000000 	nop
   14284:	45010021 	bc1t	1430c <L80057A38+0xc4>
   14288:	00000000 	nop
   1428c:	8d6b0000 	lw	t3,0(t3)
   14290:	3c01ffff 	lui	at,0xffff
   14294:	34217fff 	ori	at,at,0x7fff
   14298:	95620020 	lhu	v0,32(t3)
   1429c:	00416827 	nor	t5,v0,at
   142a0:	11a0001a 	beqz	t5,1430c <L80057A38+0xc4>
   142a4:	2401bfff 	li	at,-16385
   142a8:	00416027 	nor	t4,v0,at
   142ac:	11800017 	beqz	t4,1430c <L80057A38+0xc4>
   142b0:	2401fffd 	li	at,-3
   142b4:	00417027 	nor	t6,v0,at
   142b8:	11c00014 	beqz	t6,1430c <L80057A38+0xc4>
   142bc:	2401fffb 	li	at,-5
   142c0:	00417827 	nor	t7,v0,at
   142c4:	11e00011 	beqz	t7,1430c <L80057A38+0xc4>
   142c8:	2401fff7 	li	at,-9
   142cc:	0041c027 	nor	t8,v0,at
   142d0:	1300000e 	beqz	t8,1430c <L80057A38+0xc4>
   142d4:	2401fffe 	li	at,-2
   142d8:	0041c827 	nor	t9,v0,at
   142dc:	1320000b 	beqz	t9,1430c <L80057A38+0xc4>
   142e0:	2401ffef 	li	at,-17
   142e4:	00415827 	nor	t3,v0,at
   142e8:	11600008 	beqz	t3,1430c <L80057A38+0xc4>
   142ec:	2401dfff 	li	at,-8193
   142f0:	00416827 	nor	t5,v0,at
   142f4:	11a00005 	beqz	t5,1430c <L80057A38+0xc4>
   142f8:	00000000 	nop
   142fc:	854c0008 	lh	t4,8(t2)
   14300:	318e0008 	andi	t6,t4,0x8
   14304:	51c00007 	beqzl	t6,14324 <L80057A38+0xdc>
   14308:	8fb9003c 	lw	t9,60(sp)
   1430c:	0c000000 	jal	0 <func_800437F0>
   14310:	86050154 	lh	a1,340(s0)
   14314:	860f014c 	lh	t7,332(s0)
   14318:	35f80006 	ori	t8,t7,0x6
   1431c:	a618014c 	sh	t8,332(s0)
   14320:	8fb9003c 	lw	t9,60(sp)
   14324:	27a400ac 	addiu	a0,sp,172
   14328:	8f2d0000 	lw	t5,0(t9)
   1432c:	ac8d0000 	sw	t5,0(a0)
   14330:	8f2b0004 	lw	t3,4(t9)
   14334:	ac8b0004 	sw	t3,4(a0)
   14338:	8f2d0008 	lw	t5,8(t9)
   1433c:	ac8d0008 	sw	t5,8(a0)
   14340:	c7a800b0 	lwc1	$f8,176(sp)
   14344:	c7b00098 	lwc1	$f16,152(sp)
   14348:	8fa50048 	lw	a1,72(sp)
   1434c:	46104480 	add.s	$f18,$f8,$f16
   14350:	0c000000 	jal	0 <func_800437F0>
   14354:	e7b200b0 	swc1	$f18,176(sp)
   14358:	8fa3003c 	lw	v1,60(sp)
   1435c:	e60000dc 	swc1	$f0,220(s0)
   14360:	c60a0050 	lwc1	$f10,80(s0)
   14364:	c4660000 	lwc1	$f6,0(v1)
   14368:	c6080054 	lwc1	$f8,84(s0)
   1436c:	24020001 	li	v0,1
   14370:	46065101 	sub.s	$f4,$f10,$f6
   14374:	c60a0058 	lwc1	$f10,88(s0)
   14378:	e60400e4 	swc1	$f4,228(s0)
   1437c:	c4700004 	lwc1	$f16,4(v1)
   14380:	46104481 	sub.s	$f18,$f8,$f16
   14384:	e61200e8 	swc1	$f18,232(s0)
   14388:	c4660008 	lwc1	$f6,8(v1)
   1438c:	46065101 	sub.s	$f4,$f10,$f6
   14390:	e60400ec 	swc1	$f4,236(s0)
   14394:	8fbf0024 	lw	ra,36(sp)
   14398:	8fb00020 	lw	s0,32(sp)
   1439c:	27bd00c8 	addiu	sp,sp,200
   143a0:	03e00008 	jr	ra
   143a4:	00000000 	nop

000143a8 <func_80057B98>:
   143a8:	27bdffe0 	addiu	sp,sp,-32
   143ac:	afa50024 	sw	a1,36(sp)
   143b0:	afbf0014 	sw	ra,20(sp)
   143b4:	afa40020 	sw	a0,32(sp)
   143b8:	afa60028 	sw	a2,40(sp)
   143bc:	3c050000 	lui	a1,0x0
   143c0:	24a506f4 	addiu	a1,a1,1780
   143c4:	2406249a 	li	a2,9370
   143c8:	0c000000 	jal	0 <func_800437F0>
   143cc:	2404016c 	li	a0,364
   143d0:	1040000c 	beqz	v0,14404 <func_80057B98+0x5c>
   143d4:	afa2001c 	sw	v0,28(sp)
   143d8:	3c040000 	lui	a0,0x0
   143dc:	24840704 	addiu	a0,a0,1796
   143e0:	0c000000 	jal	0 <func_800437F0>
   143e4:	240505b0 	li	a1,1456
   143e8:	8fa4001c 	lw	a0,28(sp)
   143ec:	8fa50020 	lw	a1,32(sp)
   143f0:	8fa60024 	lw	a2,36(sp)
   143f4:	0c000000 	jal	0 <func_800437F0>
   143f8:	8fa70028 	lw	a3,40(sp)
   143fc:	10000005 	b	14414 <func_80057B98+0x6c>
   14400:	8fbf0014 	lw	ra,20(sp)
   14404:	3c040000 	lui	a0,0x0
   14408:	0c000000 	jal	0 <func_800437F0>
   1440c:	24840734 	addiu	a0,a0,1844
   14410:	8fbf0014 	lw	ra,20(sp)
   14414:	8fa2001c 	lw	v0,28(sp)
   14418:	27bd0020 	addiu	sp,sp,32
   1441c:	03e00008 	jr	ra
   14420:	00000000 	nop

00014424 <func_80057C14>:
   14424:	27bdffe8 	addiu	sp,sp,-24
   14428:	afbf0014 	sw	ra,20(sp)
   1442c:	1080000c 	beqz	a0,14460 <func_80057C14+0x3c>
   14430:	00803825 	move	a3,a0
   14434:	3c040000 	lui	a0,0x0
   14438:	24840764 	addiu	a0,a0,1892
   1443c:	0c000000 	jal	0 <func_800437F0>
   14440:	afa70018 	sw	a3,24(sp)
   14444:	3c050000 	lui	a1,0x0
   14448:	8fa40018 	lw	a0,24(sp)
   1444c:	24a50784 	addiu	a1,a1,1924
   14450:	0c000000 	jal	0 <func_800437F0>
   14454:	240624af 	li	a2,9391
   14458:	10000005 	b	14470 <func_80057C14+0x4c>
   1445c:	8fbf0014 	lw	ra,20(sp)
   14460:	3c040000 	lui	a0,0x0
   14464:	0c000000 	jal	0 <func_800437F0>
   14468:	24840794 	addiu	a0,a0,1940
   1446c:	8fbf0014 	lw	ra,20(sp)
   14470:	27bd0018 	addiu	sp,sp,24
   14474:	03e00008 	jr	ra
   14478:	00000000 	nop

0001447c <func_80057C6C>:
   1447c:	27bdffe0 	addiu	sp,sp,-32
   14480:	afbf001c 	sw	ra,28(sp)
   14484:	afb00018 	sw	s0,24(sp)
   14488:	afa50024 	sw	a1,36(sp)
   1448c:	afa60028 	sw	a2,40(sp)
   14490:	00808025 	move	s0,a0
   14494:	afa7002c 	sw	a3,44(sp)
   14498:	2406016c 	li	a2,364
   1449c:	0c000000 	jal	0 <func_800437F0>
   144a0:	00002825 	move	a1,zero
   144a4:	3c0e0000 	lui	t6,0x0
   144a8:	8dce0000 	lw	t6,0(t6)
   144ac:	3c050000 	lui	a1,0x0
   144b0:	24a50000 	addiu	a1,a1,0
   144b4:	51c00035 	beqzl	t6,1458c <func_80057C6C+0x110>
   144b8:	8fab002c 	lw	t3,44(sp)
   144bc:	84af0000 	lh	t7,0(a1)
   144c0:	00001825 	move	v1,zero
   144c4:	00001025 	move	v0,zero
   144c8:	19e00010 	blez	t7,1450c <func_80057C6C+0x90>
   144cc:	3c040000 	lui	a0,0x0
   144d0:	3c070000 	lui	a3,0x0
   144d4:	24e70000 	addiu	a3,a3,0
   144d8:	24840000 	addiu	a0,a0,0
   144dc:	8cf90000 	lw	t9,0(a3)
   144e0:	84980000 	lh	t8,0(a0)
   144e4:	24630001 	addiu	v1,v1,1
   144e8:	03225021 	addu	t2,t9,v0
   144ec:	a5580194 	sh	t8,404(t2)
   144f0:	84ab0000 	lh	t3,0(a1)
   144f4:	24420002 	addiu	v0,v0,2
   144f8:	24840002 	addiu	a0,a0,2
   144fc:	006b082a 	slt	at,v1,t3
   14500:	5420fff7 	bnezl	at,144e0 <func_80057C6C+0x64>
   14504:	8cf90000 	lw	t9,0(a3)
   14508:	00001825 	move	v1,zero
   1450c:	3c050000 	lui	a1,0x0
   14510:	24a50000 	addiu	a1,a1,0
   14514:	84ac0000 	lh	t4,0(a1)
   14518:	3c070000 	lui	a3,0x0
   1451c:	24e70000 	addiu	a3,a3,0
   14520:	1980000e 	blez	t4,1455c <func_80057C6C+0xe0>
   14524:	00001025 	move	v0,zero
   14528:	3c040000 	lui	a0,0x0
   1452c:	24840000 	addiu	a0,a0,0
   14530:	8cee0000 	lw	t6,0(a3)
   14534:	848d0000 	lh	t5,0(a0)
   14538:	24630001 	addiu	v1,v1,1
   1453c:	01c27821 	addu	t7,t6,v0
   14540:	a5ed0254 	sh	t5,596(t7)
   14544:	84b90000 	lh	t9,0(a1)
   14548:	24420002 	addiu	v0,v0,2
   1454c:	24840002 	addiu	a0,a0,2
   14550:	0079082a 	slt	at,v1,t9
   14554:	5420fff7 	bnezl	at,14534 <func_80057C6C+0xb8>
   14558:	8cee0000 	lw	t6,0(a3)
   1455c:	3c050000 	lui	a1,0x0
   14560:	24a50000 	addiu	a1,a1,0
   14564:	0c000000 	jal	0 <func_800437F0>
   14568:	02002025 	move	a0,s0
   1456c:	3c070000 	lui	a3,0x0
   14570:	3c010000 	lui	at,0x0
   14574:	24e70000 	addiu	a3,a3,0
   14578:	ac200000 	sw	zero,0(at)
   1457c:	8cea0000 	lw	t2,0(a3)
   14580:	2418ffff 	li	t8,-1
   14584:	a5580304 	sh	t8,772(t2)
   14588:	8fab002c 	lw	t3,44(sp)
   1458c:	3c020000 	lui	v0,0x0
   14590:	24420000 	addiu	v0,v0,0
   14594:	3c040000 	lui	a0,0x0
   14598:	ac4b0000 	sw	t3,0(v0)
   1459c:	24840000 	addiu	a0,a0,0
   145a0:	02002825 	move	a1,s0
   145a4:	0c000000 	jal	0 <func_800437F0>
   145a8:	ae0b008c 	sw	t3,140(s0)
   145ac:	3c060000 	lui	a2,0x0
   145b0:	24c60000 	addiu	a2,a2,0
   145b4:	84c20000 	lh	v0,0(a2)
   145b8:	3c070000 	lui	a3,0x0
   145bc:	24e70000 	addiu	a3,a3,0
   145c0:	00022c00 	sll	a1,v0,0x10
   145c4:	00052c03 	sra	a1,a1,0x10
   145c8:	244e0001 	addiu	t6,v0,1
   145cc:	2409ffff 	li	t1,-1
   145d0:	10a0001e 	beqz	a1,1464c <func_80057C6C+0x1d0>
   145d4:	a4ce0000 	sh	t6,0(a2)
   145d8:	24080004 	li	t0,4
   145dc:	14a00004 	bnez	a1,145f0 <func_80057C6C+0x174>
   145e0:	00001825 	move	v1,zero
   145e4:	84cd0000 	lh	t5,0(a2)
   145e8:	25af0001 	addiu	t7,t5,1
   145ec:	a4cf0000 	sh	t7,0(a2)
   145f0:	8e04008c 	lw	a0,140(s0)
   145f4:	0003c880 	sll	t9,v1,0x2
   145f8:	0099c021 	addu	t8,a0,t9
   145fc:	8f020790 	lw	v0,1936(t8)
   14600:	50400005 	beqzl	v0,14618 <func_80057C6C+0x19c>
   14604:	24630001 	addiu	v1,v1,1
   14608:	844a0130 	lh	t2,304(v0)
   1460c:	10aa0007 	beq	a1,t2,1462c <func_80057C6C+0x1b0>
   14610:	00000000 	nop
   14614:	24630001 	addiu	v1,v1,1
   14618:	00031c00 	sll	v1,v1,0x10
   1461c:	00031c03 	sra	v1,v1,0x10
   14620:	28610004 	slti	at,v1,4
   14624:	5420fff4 	bnezl	at,145f8 <func_80057C6C+0x17c>
   14628:	0003c880 	sll	t9,v1,0x2
   1462c:	10680007 	beq	v1,t0,1464c <func_80057C6C+0x1d0>
   14630:	00000000 	nop
   14634:	84c20000 	lh	v0,0(a2)
   14638:	00022c00 	sll	a1,v0,0x10
   1463c:	00052c03 	sra	a1,a1,0x10
   14640:	244b0001 	addiu	t3,v0,1
   14644:	14a0ffe5 	bnez	a1,145dc <func_80057C6C+0x160>
   14648:	a4cb0000 	sh	t3,0(a2)
   1464c:	3c010000 	lui	at,0x0
   14650:	c4200000 	lwc1	$f0,0(at)
   14654:	240c3fff 	li	t4,16383
   14658:	a60c0136 	sh	t4,310(s0)
   1465c:	8a0d0134 	lwl	t5,308(s0)
   14660:	9a0d0137 	lwr	t5,311(s0)
   14664:	3c014120 	lui	at,0x4120
   14668:	44816000 	mtc1	at,$f12
   1466c:	3c013f80 	lui	at,0x3f80
   14670:	44817000 	mtc1	at,$f14
   14674:	aa0d013a 	swl	t5,314(s0)
   14678:	44801000 	mtc1	zero,$f2
   1467c:	3c014270 	lui	at,0x4270
   14680:	ba0d013d 	swr	t5,317(s0)
   14684:	960d0138 	lhu	t5,312(s0)
   14688:	44812000 	mtc1	at,$f4
   1468c:	a6050130 	sh	a1,304(s0)
   14690:	e60c00c0 	swc1	$f12,192(s0)
   14694:	e60c00c8 	swc1	$f12,200(s0)
   14698:	e60e006c 	swc1	$f14,108(s0)
   1469c:	e6020068 	swc1	$f2,104(s0)
   146a0:	e6020070 	swc1	$f2,112(s0)
   146a4:	a60d013e 	sh	t5,318(s0)
   146a8:	e60400fc 	swc1	$f4,252(s0)
   146ac:	8cef0000 	lw	t7,0(a3)
   146b0:	3c010000 	lui	at,0x0
   146b4:	3c040000 	lui	a0,0x0
   146b8:	85f901a2 	lh	t9,418(t7)
   146bc:	240f0020 	li	t7,32
   146c0:	24840000 	addiu	a0,a0,0
   146c4:	44993000 	mtc1	t9,$f6
   146c8:	24190021 	li	t9,33
   146cc:	46803220 	cvt.s.w	$f8,$f6
   146d0:	e60800c4 	swc1	$f8,196(s0)
   146d4:	8cf80000 	lw	t8,0(a3)
   146d8:	870a0198 	lh	t2,408(t8)
   146dc:	448a5000 	mtc1	t2,$f10
   146e0:	00000000 	nop
   146e4:	46805420 	cvt.s.w	$f16,$f10
   146e8:	46008482 	mul.s	$f18,$f16,$f0
   146ec:	e61200cc 	swc1	$f18,204(s0)
   146f0:	8ceb0000 	lw	t3,0(a3)
   146f4:	856c019a 	lh	t4,410(t3)
   146f8:	240b0032 	li	t3,50
   146fc:	448c2000 	mtc1	t4,$f4
   14700:	240c7fff 	li	t4,32767
   14704:	468021a0 	cvt.s.w	$f6,$f4
   14708:	46003202 	mul.s	$f8,$f6,$f0
   1470c:	e60800d0 	swc1	$f8,208(s0)
   14710:	8cee0000 	lw	t6,0(a3)
   14714:	85cd019c 	lh	t5,412(t6)
   14718:	448d5000 	mtc1	t5,$f10
   1471c:	00000000 	nop
   14720:	46805420 	cvt.s.w	$f16,$f10
   14724:	46008482 	mul.s	$f18,$f16,$f0
   14728:	44800000 	mtc1	zero,$f0
   1472c:	e61200d4 	swc1	$f18,212(s0)
   14730:	ac2f0000 	sw	t7,0(at)
   14734:	3c010000 	lui	at,0x0
   14738:	ac200000 	sw	zero,0(at)
   1473c:	a600014c 	sh	zero,332(s0)
   14740:	860e014c 	lh	t6,332(s0)
   14744:	a6190154 	sh	t9,340(s0)
   14748:	a6090166 	sh	t1,358(s0)
   1474c:	3c013f80 	lui	at,0x3f80
   14750:	86180154 	lh	t8,340(s0)
   14754:	860a0166 	lh	t2,358(s0)
   14758:	44812000 	mtc1	at,$f4
   1475c:	35cd4000 	ori	t5,t6,0x4000
   14760:	a6000144 	sh	zero,324(s0)
   14764:	a60b0146 	sh	t3,326(s0)
   14768:	a60c0168 	sh	t4,360(s0)
   1476c:	a6090160 	sh	t1,352(s0)
   14770:	a60d014c 	sh	t5,332(s0)
   14774:	3c010000 	lui	at,0x0
   14778:	340fff00 	li	t7,0xff00
   1477c:	e60e006c 	swc1	$f14,108(s0)
   14780:	e6020070 	swc1	$f2,112(s0)
   14784:	e6020068 	swc1	$f2,104(s0)
   14788:	e6000080 	swc1	$f0,128(s0)
   1478c:	e6000084 	swc1	$f0,132(s0)
   14790:	e6000088 	swc1	$f0,136(s0)
   14794:	a6180142 	sh	t8,322(s0)
   14798:	a60a0148 	sh	t2,328(s0)
   1479c:	e6040100 	swc1	$f4,256(s0)
   147a0:	ac2f0000 	sw	t7,0(at)
   147a4:	3c010000 	lui	at,0x0
   147a8:	ac290000 	sw	t1,0(at)
   147ac:	3c010000 	lui	at,0x0
   147b0:	24190003 	li	t9,3
   147b4:	ac390000 	sw	t9,0(at)
   147b8:	0c000000 	jal	0 <func_800437F0>
   147bc:	86050130 	lh	a1,304(s0)
   147c0:	8fbf001c 	lw	ra,28(sp)
   147c4:	8fb00018 	lw	s0,24(sp)
   147c8:	27bd0020 	addiu	sp,sp,32
   147cc:	03e00008 	jr	ra
   147d0:	00000000 	nop

000147d4 <func_80057FC4>:
   147d4:	27bdffd0 	addiu	sp,sp,-48
   147d8:	afbf002c 	sw	ra,44(sp)
   147dc:	afb00028 	sw	s0,40(sp)
   147e0:	8c82008c 	lw	v0,140(a0)
   147e4:	3c010001 	lui	at,0x1
   147e8:	00808025 	move	s0,a0
   147ec:	244e01e0 	addiu	t6,v0,480
   147f0:	108e0009 	beq	a0,t6,14818 <func_80057FC4+0x44>
   147f4:	00411821 	addu	v1,v0,at
   147f8:	8499014c 	lh	t9,332(a0)
   147fc:	240f0021 	li	t7,33
   14800:	a48f0142 	sh	t7,322(a0)
   14804:	84980142 	lh	t8,322(a0)
   14808:	3328fffb 	andi	t0,t9,0xfffb
   1480c:	a488014c 	sh	t0,332(a0)
   14810:	1000004a 	b	1493c <func_80057FC4+0x168>
   14814:	a4980154 	sh	t8,340(a0)
   14818:	8c691cc4 	lw	t1,7364(v1)
   1481c:	24060001 	li	a2,1
   14820:	3c040000 	lui	a0,0x0
   14824:	912a0000 	lbu	t2,0(t1)
   14828:	10ca003b 	beq	a2,t2,14918 <func_80057FC4+0x144>
   1482c:	00000000 	nop
   14830:	90651cbf 	lbu	a1,7359(v1)
   14834:	3c040000 	lui	a0,0x0
   14838:	10a00012 	beqz	a1,14884 <func_80057FC4+0xb0>
   1483c:	00000000 	nop
   14840:	14a60021 	bne	a1,a2,148c8 <func_80057FC4+0xf4>
   14844:	3c040000 	lui	a0,0x0
   14848:	240b0012 	li	t3,18
   1484c:	240c000a 	li	t4,10
   14850:	afac0018 	sw	t4,24(sp)
   14854:	afab0014 	sw	t3,20(sp)
   14858:	02002025 	move	a0,s0
   1485c:	00002825 	move	a1,zero
   14860:	2406ff9d 	li	a2,-99
   14864:	24070000 	li	a3,0
   14868:	0c000000 	jal	0 <func_800437F0>
   1486c:	afa00010 	sw	zero,16(sp)
   14870:	240d0003 	li	t5,3
   14874:	a60d0142 	sh	t5,322(s0)
   14878:	860e0142 	lh	t6,322(s0)
   1487c:	1000002f 	b	1493c <func_80057FC4+0x168>
   14880:	a60e0154 	sh	t6,340(s0)
   14884:	0c000000 	jal	0 <func_800437F0>
   14888:	248407ec 	addiu	a0,a0,2028
   1488c:	240f0012 	li	t7,18
   14890:	2418000a 	li	t8,10
   14894:	afb80018 	sw	t8,24(sp)
   14898:	afaf0014 	sw	t7,20(sp)
   1489c:	02002025 	move	a0,s0
   148a0:	00002825 	move	a1,zero
   148a4:	2406ff9d 	li	a2,-99
   148a8:	24070000 	li	a3,0
   148ac:	0c000000 	jal	0 <func_800437F0>
   148b0:	afa00010 	sw	zero,16(sp)
   148b4:	24190001 	li	t9,1
   148b8:	a6190142 	sh	t9,322(s0)
   148bc:	86080142 	lh	t0,322(s0)
   148c0:	1000001e 	b	1493c <func_80057FC4+0x168>
   148c4:	a6080154 	sh	t0,340(s0)
   148c8:	0c000000 	jal	0 <func_800437F0>
   148cc:	24840814 	addiu	a0,a0,2068
   148d0:	24090012 	li	t1,18
   148d4:	240a000a 	li	t2,10
   148d8:	afaa0018 	sw	t2,24(sp)
   148dc:	afa90014 	sw	t1,20(sp)
   148e0:	02002025 	move	a0,s0
   148e4:	00002825 	move	a1,zero
   148e8:	2406ff9d 	li	a2,-99
   148ec:	24070000 	li	a3,0
   148f0:	0c000000 	jal	0 <func_800437F0>
   148f4:	afa00010 	sw	zero,16(sp)
   148f8:	860d014c 	lh	t5,332(s0)
   148fc:	240b0001 	li	t3,1
   14900:	a60b0142 	sh	t3,322(s0)
   14904:	860c0142 	lh	t4,322(s0)
   14908:	35ae0004 	ori	t6,t5,0x4
   1490c:	a60e014c 	sh	t6,332(s0)
   14910:	1000000a 	b	1493c <func_80057FC4+0x168>
   14914:	a60c0154 	sh	t4,340(s0)
   14918:	0c000000 	jal	0 <func_800437F0>
   1491c:	24840840 	addiu	a0,a0,2112
   14920:	240f0021 	li	t7,33
   14924:	8619014c 	lh	t9,332(s0)
   14928:	a60f0142 	sh	t7,322(s0)
   1492c:	86180142 	lh	t8,322(s0)
   14930:	3328fffb 	andi	t0,t9,0xfffb
   14934:	a608014c 	sh	t0,332(s0)
   14938:	a6180154 	sh	t8,340(s0)
   1493c:	8fbf002c 	lw	ra,44(sp)
   14940:	8fb00028 	lw	s0,40(sp)
   14944:	27bd0030 	addiu	sp,sp,48
   14948:	03e00008 	jr	ra
   1494c:	00000000 	nop

00014950 <Camera_Stub80058140>:
   14950:	03e00008 	jr	ra
   14954:	afa40000 	sw	a0,0(sp)

00014958 <func_80058148>:
   14958:	27bdff98 	addiu	sp,sp,-104
   1495c:	afb00018 	sw	s0,24(sp)
   14960:	00808025 	move	s0,a0
   14964:	afbf001c 	sw	ra,28(sp)
   14968:	afa5006c 	sw	a1,108(sp)
   1496c:	0c000000 	jal	0 <func_800437F0>
   14970:	27a40054 	addiu	a0,sp,84
   14974:	0c000000 	jal	0 <func_800437F0>
   14978:	8fa4006c 	lw	a0,108(sp)
   1497c:	8fae006c 	lw	t6,108(sp)
   14980:	27a20054 	addiu	v0,sp,84
   14984:	3c014334 	lui	at,0x4334
   14988:	ae0e0090 	sw	t6,144(s0)
   1498c:	8c580000 	lw	t8,0(v0)
   14990:	44816000 	mtc1	at,$f12
   14994:	240a071c 	li	t2,1820
   14998:	ae180094 	sw	t8,148(s0)
   1499c:	8c4f0004 	lw	t7,4(v0)
   149a0:	240b071c 	li	t3,1820
   149a4:	44801000 	mtc1	zero,$f2
   149a8:	ae0f0098 	sw	t7,152(s0)
   149ac:	8c580008 	lw	t8,8(v0)
   149b0:	26050050 	addiu	a1,s0,80
   149b4:	44807000 	mtc1	zero,$f14
   149b8:	ae18009c 	sw	t8,156(s0)
   149bc:	8c4f000c 	lw	t7,12(v0)
   149c0:	26040074 	addiu	a0,s0,116
   149c4:	27a6004c 	addiu	a2,sp,76
   149c8:	ae0f00a0 	sw	t7,160(s0)
   149cc:	8c580010 	lw	t8,16(v0)
   149d0:	ae1800a4 	sw	t8,164(s0)
   149d4:	e7ac004c 	swc1	$f12,76(sp)
   149d8:	e60c00dc 	swc1	$f12,220(s0)
   149dc:	87b90062 	lh	t9,98(sp)
   149e0:	a6190136 	sh	t9,310(s0)
   149e4:	86080136 	lh	t0,310(s0)
   149e8:	a7aa0050 	sh	t2,80(sp)
   149ec:	25098001 	addiu	t1,t0,-32767
   149f0:	a7a90052 	sh	t1,82(sp)
   149f4:	a60b0134 	sh	t3,308(s0)
   149f8:	8a0d0134 	lwl	t5,308(s0)
   149fc:	9a0d0137 	lwr	t5,311(s0)
   14a00:	a6000138 	sh	zero,312(s0)
   14a04:	a600013e 	sh	zero,318(s0)
   14a08:	aa0d013a 	swl	t5,314(s0)
   14a0c:	e60200d8 	swc1	$f2,216(s0)
   14a10:	e60200f4 	swc1	$f2,244(s0)
   14a14:	ba0d013d 	swr	t5,317(s0)
   14a18:	8c4f0000 	lw	t7,0(v0)
   14a1c:	acaf0000 	sw	t7,0(a1)
   14a20:	8c4e0004 	lw	t6,4(v0)
   14a24:	acae0004 	sw	t6,4(a1)
   14a28:	8c4f0008 	lw	t7,8(v0)
   14a2c:	acaf0008 	sw	t7,8(a1)
   14a30:	c6040054 	lwc1	$f4,84(s0)
   14a34:	e60000e8 	swc1	$f0,232(s0)
   14a38:	e60e00e4 	swc1	$f14,228(s0)
   14a3c:	46002180 	add.s	$f6,$f4,$f0
   14a40:	e60e00ec 	swc1	$f14,236(s0)
   14a44:	e6060054 	swc1	$f6,84(s0)
   14a48:	afa50024 	sw	a1,36(sp)
   14a4c:	0c000000 	jal	0 <func_800437F0>
   14a50:	afa40020 	sw	a0,32(sp)
   14a54:	8fb80020 	lw	t8,32(sp)
   14a58:	44801000 	mtc1	zero,$f2
   14a5c:	3c013f80 	lui	at,0x3f80
   14a60:	8f080000 	lw	t0,0(t8)
   14a64:	44814000 	mtc1	at,$f8
   14a68:	02002025 	move	a0,s0
   14a6c:	ae08005c 	sw	t0,92(s0)
   14a70:	8f190004 	lw	t9,4(t8)
   14a74:	27a5003c 	addiu	a1,sp,60
   14a78:	27a70048 	addiu	a3,sp,72
   14a7c:	ae190060 	sw	t9,96(s0)
   14a80:	8f080008 	lw	t0,8(t8)
   14a84:	a600015a 	sh	zero,346(s0)
   14a88:	e6020070 	swc1	$f2,112(s0)
   14a8c:	e6020068 	swc1	$f2,104(s0)
   14a90:	e608006c 	swc1	$f8,108(s0)
   14a94:	ae080064 	sw	t0,100(s0)
   14a98:	0c000000 	jal	0 <func_800437F0>
   14a9c:	8fa60024 	lw	a2,36(sp)
   14aa0:	3c01c6fa 	lui	at,0xc6fa
   14aa4:	44815000 	mtc1	at,$f10
   14aa8:	2402ffff 	li	v0,-1
   14aac:	8fa90048 	lw	t1,72(sp)
   14ab0:	460a0032 	c.eq.s	$f0,$f10
   14ab4:	340eb200 	li	t6,0xb200
   14ab8:	3c010000 	lui	at,0x0
   14abc:	45030003 	bc1tl	14acc <func_80058148+0x174>
   14ac0:	860a014c 	lh	t2,332(s0)
   14ac4:	a6090146 	sh	t1,326(s0)
   14ac8:	860a014c 	lh	t2,332(s0)
   14acc:	8e0c008c 	lw	t4,140(s0)
   14ad0:	ae020118 	sw	v0,280(s0)
   14ad4:	354b0004 	ori	t3,t2,0x4
   14ad8:	258d01e0 	addiu	t5,t4,480
   14adc:	ae02011c 	sw	v0,284(s0)
   14ae0:	160d0004 	bne	s0,t5,14af4 <func_80058148+0x19c>
   14ae4:	a60b014c 	sh	t3,332(s0)
   14ae8:	3c010000 	lui	at,0x0
   14aec:	10000002 	b	14af8 <func_80058148+0x1a0>
   14af0:	ac2e0000 	sw	t6,0(at)
   14af4:	ac200000 	sw	zero,0(at)
   14af8:	0c000000 	jal	0 <func_800437F0>
   14afc:	02002025 	move	a0,s0
   14b00:	3c013f80 	lui	at,0x3f80
   14b04:	44818000 	mtc1	at,$f16
   14b08:	2402ffff 	li	v0,-1
   14b0c:	a600014a 	sh	zero,330(s0)
   14b10:	a600015c 	sh	zero,348(s0)
   14b14:	a6020156 	sh	v0,342(s0)
   14b18:	02002025 	move	a0,s0
   14b1c:	86050144 	lh	a1,324(s0)
   14b20:	0c000000 	jal	0 <func_800437F0>
   14b24:	e6100100 	swc1	$f16,256(s0)
   14b28:	0c000000 	jal	0 <func_800437F0>
   14b2c:	00000000 	nop
   14b30:	3c040000 	lui	a0,0x0
   14b34:	0c000000 	jal	0 <func_800437F0>
   14b38:	24840000 	addiu	a0,a0,0
   14b3c:	860f0164 	lh	t7,356(s0)
   14b40:	55e00004 	bnezl	t7,14b54 <func_80058148+0x1fc>
   14b44:	8fbf001c 	lw	ra,28(sp)
   14b48:	0c000000 	jal	0 <func_800437F0>
   14b4c:	02002025 	move	a0,s0
   14b50:	8fbf001c 	lw	ra,28(sp)
   14b54:	8fb00018 	lw	s0,24(sp)
   14b58:	27bd0068 	addiu	sp,sp,104
   14b5c:	03e00008 	jr	ra
   14b60:	00000000 	nop

00014b64 <Camera_ChangeStatus>:
   14b64:	27bdffd0 	addiu	sp,sp,-48
   14b68:	afb40024 	sw	s4,36(sp)
   14b6c:	3c140000 	lui	s4,0x0
   14b70:	26940000 	addiu	s4,s4,0
   14b74:	8e8e0000 	lw	t6,0(s4)
   14b78:	afbf002c 	sw	ra,44(sp)
   14b7c:	afb50028 	sw	s5,40(sp)
   14b80:	afb30020 	sw	s3,32(sp)
   14b84:	afb2001c 	sw	s2,28(sp)
   14b88:	afb10018 	sw	s1,24(sp)
   14b8c:	afb00014 	sw	s0,20(sp)
   14b90:	afa50034 	sw	a1,52(sp)
   14b94:	85c202f8 	lh	v0,760(t6)
   14b98:	00809825 	move	s3,a0
   14b9c:	3c040000 	lui	a0,0x0
   14ba0:	10400010 	beqz	v0,14be4 <Camera_ChangeStatus+0x80>
   14ba4:	87af0036 	lh	t7,54(sp)
   14ba8:	24100007 	li	s0,7
   14bac:	15f00003 	bne	t7,s0,14bbc <Camera_ChangeStatus+0x58>
   14bb0:	24050078 	li	a1,120
   14bb4:	10000001 	b	14bbc <Camera_ChangeStatus+0x58>
   14bb8:	2405006f 	li	a1,111
   14bbc:	86780140 	lh	t8,320(s3)
   14bc0:	24060078 	li	a2,120
   14bc4:	12180003 	beq	s0,t8,14bd4 <Camera_ChangeStatus+0x70>
   14bc8:	00000000 	nop
   14bcc:	10000001 	b	14bd4 <Camera_ChangeStatus+0x70>
   14bd0:	2406006f 	li	a2,111
   14bd4:	0c000000 	jal	0 <func_800437F0>
   14bd8:	24840000 	addiu	a0,a0,0
   14bdc:	8e990000 	lw	t9,0(s4)
   14be0:	872202f8 	lh	v0,760(t9)
   14be4:	10400007 	beqz	v0,14c04 <Camera_ChangeStatus+0xa0>
   14be8:	24100007 	li	s0,7
   14bec:	3c040000 	lui	a0,0x0
   14bf0:	24840000 	addiu	a0,a0,0
   14bf4:	86650164 	lh	a1,356(s3)
   14bf8:	86660142 	lh	a2,322(s3)
   14bfc:	0c000000 	jal	0 <func_800437F0>
   14c00:	86670144 	lh	a3,324(s3)
   14c04:	87a80036 	lh	t0,54(sp)
   14c08:	55100030 	bnel	t0,s0,14ccc <Camera_ChangeStatus+0x168>
   14c0c:	87ac0036 	lh	t4,54(sp)
   14c10:	86690140 	lh	t1,320(s3)
   14c14:	3c150000 	lui	s5,0x0
   14c18:	5209002c 	beql	s0,t1,14ccc <Camera_ChangeStatus+0x168>
   14c1c:	87ac0036 	lh	t4,54(sp)
   14c20:	866a0142 	lh	t2,322(s3)
   14c24:	26b50000 	addiu	s5,s5,0
   14c28:	866e0144 	lh	t6,324(s3)
   14c2c:	000a58c0 	sll	t3,t2,0x3
   14c30:	02ab6021 	addu	t4,s5,t3
   14c34:	8d8d0004 	lw	t5,4(t4)
   14c38:	000e78c0 	sll	t7,t6,0x3
   14c3c:	00008825 	move	s1,zero
   14c40:	01af1021 	addu	v0,t5,t7
   14c44:	84580002 	lh	t8,2(v0)
   14c48:	8c430004 	lw	v1,4(v0)
   14c4c:	3c120000 	lui	s2,0x0
   14c50:	1b00001d 	blez	t8,14cc8 <Camera_ChangeStatus+0x164>
   14c54:	00608025 	move	s0,v1
   14c58:	26520000 	addiu	s2,s2,0
   14c5c:	86090002 	lh	t1,2(s0)
   14c60:	8e880000 	lw	t0,0(s4)
   14c64:	86190000 	lh	t9,0(s0)
   14c68:	00095040 	sll	t2,t1,0x1
   14c6c:	010a5821 	addu	t3,t0,t2
   14c70:	a5790254 	sh	t9,596(t3)
   14c74:	8e8c0000 	lw	t4,0(s4)
   14c78:	02402025 	move	a0,s2
   14c7c:	858e02f8 	lh	t6,760(t4)
   14c80:	51c00005 	beqzl	t6,14c98 <Camera_ChangeStatus+0x134>
   14c84:	866d0142 	lh	t5,322(s3)
   14c88:	86050002 	lh	a1,2(s0)
   14c8c:	0c000000 	jal	0 <func_800437F0>
   14c90:	86060000 	lh	a2,0(s0)
   14c94:	866d0142 	lh	t5,322(s3)
   14c98:	86680144 	lh	t0,324(s3)
   14c9c:	26310001 	addiu	s1,s1,1
   14ca0:	000d78c0 	sll	t7,t5,0x3
   14ca4:	02afc021 	addu	t8,s5,t7
   14ca8:	8f090004 	lw	t1,4(t8)
   14cac:	000850c0 	sll	t2,t0,0x3
   14cb0:	26100004 	addiu	s0,s0,4
   14cb4:	012ac821 	addu	t9,t1,t2
   14cb8:	872b0002 	lh	t3,2(t9)
   14cbc:	022b082a 	slt	at,s1,t3
   14cc0:	5420ffe7 	bnezl	at,14c60 <Camera_ChangeStatus+0xfc>
   14cc4:	86090002 	lh	t1,2(s0)
   14cc8:	87ac0036 	lh	t4,54(sp)
   14ccc:	a66c0140 	sh	t4,320(s3)
   14cd0:	8fbf002c 	lw	ra,44(sp)
   14cd4:	86620140 	lh	v0,320(s3)
   14cd8:	8fb30020 	lw	s3,32(sp)
   14cdc:	8fb50028 	lw	s5,40(sp)
   14ce0:	8fb40024 	lw	s4,36(sp)
   14ce4:	8fb2001c 	lw	s2,28(sp)
   14ce8:	8fb10018 	lw	s1,24(sp)
   14cec:	8fb00014 	lw	s0,20(sp)
   14cf0:	03e00008 	jr	ra
   14cf4:	27bd0030 	addiu	sp,sp,48

00014cf8 <func_800584E8>:
   14cf8:	27bdffa0 	addiu	sp,sp,-96
   14cfc:	3c0e0000 	lui	t6,0x0
   14d00:	8dce0000 	lw	t6,0(t6)
   14d04:	afbf002c 	sw	ra,44(sp)
   14d08:	afb50028 	sw	s5,40(sp)
   14d0c:	afb40024 	sw	s4,36(sp)
   14d10:	afb30020 	sw	s3,32(sp)
   14d14:	afb2001c 	sw	s2,28(sp)
   14d18:	afb10018 	sw	s1,24(sp)
   14d1c:	afb00014 	sw	s0,20(sp)
   14d20:	85cf0194 	lh	t7,404(t6)
   14d24:	00808025 	move	s0,a0
   14d28:	31f80001 	andi	t8,t7,0x1
   14d2c:	530000dd 	beqzl	t8,150a4 <func_800584E8+0x3ac>
   14d30:	8fbf002c 	lw	ra,44(sp)
   14d34:	8c8e008c 	lw	t6,140(a0)
   14d38:	84990164 	lh	t9,356(a0)
   14d3c:	3c180000 	lui	t8,0x0
   14d40:	85cf07a0 	lh	t7,1952(t6)
   14d44:	572f00d7 	bnel	t9,t7,150a4 <func_800584E8+0x3ac>
   14d48:	8fbf002c 	lw	ra,44(sp)
   14d4c:	8f180000 	lw	t8,0(t8)
   14d50:	00002825 	move	a1,zero
   14d54:	27a30058 	addiu	v1,sp,88
   14d58:	170000d1 	bnez	t8,150a0 <func_800584E8+0x3a8>
   14d5c:	27a80048 	addiu	t0,sp,72
   14d60:	24150020 	li	s5,32
   14d64:	24140063 	li	s4,99
   14d68:	24130077 	li	s3,119
   14d6c:	24120073 	li	s2,115
   14d70:	24110064 	li	s1,100
   14d74:	241f002a 	li	ra,42
   14d78:	240d0100 	li	t5,256
   14d7c:	240c0007 	li	t4,7
   14d80:	240b0003 	li	t3,3
   14d84:	240a0001 	li	t2,1
   14d88:	24090061 	li	t1,97
   14d8c:	27a7005c 	addiu	a3,sp,92
   14d90:	2406002d 	li	a2,45
   14d94:	8e0e008c 	lw	t6,140(s0)
   14d98:	01c5c821 	addu	t9,t6,a1
   14d9c:	8f240790 	lw	a0,1936(t9)
   14da0:	24a50004 	addiu	a1,a1,4
   14da4:	54800005 	bnezl	a0,14dbc <func_800584E8+0xc4>
   14da8:	84820140 	lh	v0,320(a0)
   14dac:	a0660000 	sb	a2,0(v1)
   14db0:	1000001f 	b	14e30 <func_800584E8+0x138>
   14db4:	a1150000 	sb	s5,0(t0)
   14db8:	84820140 	lh	v0,320(a0)
   14dbc:	24180020 	li	t8,32
   14dc0:	5040000e 	beqzl	v0,14dfc <func_800584E8+0x104>
   14dc4:	a0740000 	sb	s4,0(v1)
   14dc8:	104a000e 	beq	v0,t2,14e04 <func_800584E8+0x10c>
   14dcc:	240e0020 	li	t6,32
   14dd0:	104b000f 	beq	v0,t3,14e10 <func_800584E8+0x118>
   14dd4:	24190020 	li	t9,32
   14dd8:	104c0010 	beq	v0,t4,14e1c <func_800584E8+0x124>
   14ddc:	240f0020 	li	t7,32
   14de0:	104d0011 	beq	v0,t5,14e28 <func_800584E8+0x130>
   14de4:	24180020 	li	t8,32
   14de8:	240f0020 	li	t7,32
   14dec:	a10f0000 	sb	t7,0(t0)
   14df0:	1000000f 	b	14e30 <func_800584E8+0x138>
   14df4:	a07f0000 	sb	ra,0(v1)
   14df8:	a0740000 	sb	s4,0(v1)
   14dfc:	1000000c 	b	14e30 <func_800584E8+0x138>
   14e00:	a1180000 	sb	t8,0(t0)
   14e04:	a0730000 	sb	s3,0(v1)
   14e08:	10000009 	b	14e30 <func_800584E8+0x138>
   14e0c:	a10e0000 	sb	t6,0(t0)
   14e10:	a0720000 	sb	s2,0(v1)
   14e14:	10000006 	b	14e30 <func_800584E8+0x138>
   14e18:	a1190000 	sb	t9,0(t0)
   14e1c:	a0690000 	sb	t1,0(v1)
   14e20:	10000003 	b	14e30 <func_800584E8+0x138>
   14e24:	a10f0000 	sb	t7,0(t0)
   14e28:	a0710000 	sb	s1,0(v1)
   14e2c:	a1180000 	sb	t8,0(t0)
   14e30:	24630001 	addiu	v1,v1,1
   14e34:	0067082b 	sltu	at,v1,a3
   14e38:	1420ffd6 	bnez	at,14d94 <func_800584E8+0x9c>
   14e3c:	25080001 	addiu	t0,t0,1
   14e40:	a0600000 	sb	zero,0(v1)
   14e44:	a1000000 	sb	zero,0(t0)
   14e48:	8e0e008c 	lw	t6,140(s0)
   14e4c:	27b10048 	addiu	s1,sp,72
   14e50:	24040003 	li	a0,3
   14e54:	85d907a0 	lh	t9,1952(t6)
   14e58:	24050016 	li	a1,22
   14e5c:	24060005 	li	a2,5
   14e60:	02397821 	addu	t7,s1,t9
   14e64:	a1e90000 	sb	t1,0(t7)
   14e68:	0c000000 	jal	0 <func_800437F0>
   14e6c:	27a70058 	addiu	a3,sp,88
   14e70:	24040003 	li	a0,3
   14e74:	24050016 	li	a1,22
   14e78:	24060001 	li	a2,1
   14e7c:	0c000000 	jal	0 <func_800437F0>
   14e80:	02203825 	move	a3,s1
   14e84:	3c070000 	lui	a3,0x0
   14e88:	24e70000 	addiu	a3,a3,0
   14e8c:	24040003 	li	a0,3
   14e90:	24050017 	li	a1,23
   14e94:	0c000000 	jal	0 <func_800437F0>
   14e98:	24060005 	li	a2,5
   14e9c:	86180142 	lh	t8,322(s0)
   14ea0:	2411000c 	li	s1,12
   14ea4:	3c190000 	lui	t9,0x0
   14ea8:	03110019 	multu	t8,s1
   14eac:	27390000 	addiu	t9,t9,0
   14eb0:	24040005 	li	a0,5
   14eb4:	24050017 	li	a1,23
   14eb8:	24060004 	li	a2,4
   14ebc:	00007012 	mflo	t6
   14ec0:	01d93821 	addu	a3,t6,t9
   14ec4:	0c000000 	jal	0 <func_800437F0>
   14ec8:	00000000 	nop
   14ecc:	3c070000 	lui	a3,0x0
   14ed0:	24e70000 	addiu	a3,a3,0
   14ed4:	24040003 	li	a0,3
   14ed8:	24050018 	li	a1,24
   14edc:	0c000000 	jal	0 <func_800437F0>
   14ee0:	24060005 	li	a2,5
   14ee4:	860f0144 	lh	t7,324(s0)
   14ee8:	3c0e0000 	lui	t6,0x0
   14eec:	25ce0000 	addiu	t6,t6,0
   14ef0:	01f10019 	multu	t7,s1
   14ef4:	24040005 	li	a0,5
   14ef8:	24050018 	li	a1,24
   14efc:	24060004 	li	a2,4
   14f00:	0000c012 	mflo	t8
   14f04:	030e3821 	addu	a3,t8,t6
   14f08:	0c000000 	jal	0 <func_800437F0>
   14f0c:	00000000 	nop
   14f10:	3c070000 	lui	a3,0x0
   14f14:	24e70000 	addiu	a3,a3,0
   14f18:	24040003 	li	a0,3
   14f1c:	24050019 	li	a1,25
   14f20:	0c000000 	jal	0 <func_800437F0>
   14f24:	24060005 	li	a2,5
   14f28:	86190142 	lh	t9,322(s0)
   14f2c:	3c180000 	lui	t8,0x0
   14f30:	860e0144 	lh	t6,324(s0)
   14f34:	001978c0 	sll	t7,t9,0x3
   14f38:	030fc021 	addu	t8,t8,t7
   14f3c:	8f180004 	lw	t8,4(t8)
   14f40:	000ec8c0 	sll	t9,t6,0x3
   14f44:	24040005 	li	a0,5
   14f48:	03197821 	addu	t7,t8,t9
   14f4c:	85ee0000 	lh	t6,0(t7)
   14f50:	3c190000 	lui	t9,0x0
   14f54:	27390000 	addiu	t9,t9,0
   14f58:	000ec0c0 	sll	t8,t6,0x3
   14f5c:	03193821 	addu	a3,t8,t9
   14f60:	24050019 	li	a1,25
   14f64:	0c000000 	jal	0 <func_800437F0>
   14f68:	24060004 	li	a2,4
   14f6c:	86030148 	lh	v1,328(s0)
   14f70:	00001025 	move	v0,zero
   14f74:	2408000a 	li	t0,10
   14f78:	04610005 	bgez	v1,14f90 <func_800584E8+0x298>
   14f7c:	24040003 	li	a0,3
   14f80:	240f002d 	li	t7,45
   14f84:	a3af0050 	sb	t7,80(sp)
   14f88:	86030148 	lh	v1,328(s0)
   14f8c:	24020001 	li	v0,1
   14f90:	0068001a 	div	zero,v1,t0
   14f94:	00007012 	mflo	t6
   14f98:	2405001a 	li	a1,26
   14f9c:	15000002 	bnez	t0,14fa8 <func_800584E8+0x2b0>
   14fa0:	00000000 	nop
   14fa4:	0007000d 	break	0x7
   14fa8:	2401ffff 	li	at,-1
   14fac:	15010004 	bne	t0,at,14fc0 <func_800584E8+0x2c8>
   14fb0:	3c018000 	lui	at,0x8000
   14fb4:	14610002 	bne	v1,at,14fc0 <func_800584E8+0x2c8>
   14fb8:	00000000 	nop
   14fbc:	0006000d 	break	0x6
   14fc0:	24060005 	li	a2,5
   14fc4:	11c00011 	beqz	t6,1500c <func_800584E8+0x314>
   14fc8:	3c070000 	lui	a3,0x0
   14fcc:	0048001a 	div	zero,v0,t0
   14fd0:	27a30050 	addiu	v1,sp,80
   14fd4:	00627821 	addu	t7,v1,v0
   14fd8:	0000c012 	mflo	t8
   14fdc:	27190030 	addiu	t9,t8,48
   14fe0:	15000002 	bnez	t0,14fec <func_800584E8+0x2f4>
   14fe4:	00000000 	nop
   14fe8:	0007000d 	break	0x7
   14fec:	2401ffff 	li	at,-1
   14ff0:	15010004 	bne	t0,at,15004 <func_800584E8+0x30c>
   14ff4:	3c018000 	lui	at,0x8000
   14ff8:	14410002 	bne	v0,at,15004 <func_800584E8+0x30c>
   14ffc:	00000000 	nop
   15000:	0006000d 	break	0x6
   15004:	24420001 	addiu	v0,v0,1
   15008:	a1f90000 	sb	t9,0(t7)
   1500c:	0048001a 	div	zero,v0,t0
   15010:	27a30050 	addiu	v1,sp,80
   15014:	0062c821 	addu	t9,v1,v0
   15018:	15000002 	bnez	t0,15024 <func_800584E8+0x32c>
   1501c:	00000000 	nop
   15020:	0007000d 	break	0x7
   15024:	2401ffff 	li	at,-1
   15028:	15010004 	bne	t0,at,1503c <func_800584E8+0x344>
   1502c:	3c018000 	lui	at,0x8000
   15030:	14410002 	bne	v0,at,1503c <func_800584E8+0x344>
   15034:	00000000 	nop
   15038:	0006000d 	break	0x6
   1503c:	24420001 	addiu	v0,v0,1
   15040:	00007010 	mfhi	t6
   15044:	25d80030 	addiu	t8,t6,48
   15048:	00627821 	addu	t7,v1,v0
   1504c:	24420001 	addiu	v0,v0,1
   15050:	a3380000 	sb	t8,0(t9)
   15054:	00627021 	addu	t6,v1,v0
   15058:	24420001 	addiu	v0,v0,1
   1505c:	a1f50000 	sb	s5,0(t7)
   15060:	0062c021 	addu	t8,v1,v0
   15064:	24420001 	addiu	v0,v0,1
   15068:	a1d50000 	sb	s5,0(t6)
   1506c:	0062c821 	addu	t9,v1,v0
   15070:	a3150000 	sb	s5,0(t8)
   15074:	24420001 	addiu	v0,v0,1
   15078:	a3350000 	sb	s5,0(t9)
   1507c:	00627821 	addu	t7,v1,v0
   15080:	a1e00000 	sb	zero,0(t7)
   15084:	0c000000 	jal	0 <func_800437F0>
   15088:	24e70000 	addiu	a3,a3,0
   1508c:	24040005 	li	a0,5
   15090:	2405001a 	li	a1,26
   15094:	24060004 	li	a2,4
   15098:	0c000000 	jal	0 <func_800437F0>
   1509c:	27a70050 	addiu	a3,sp,80
   150a0:	8fbf002c 	lw	ra,44(sp)
   150a4:	8fb00014 	lw	s0,20(sp)
   150a8:	8fb10018 	lw	s1,24(sp)
   150ac:	8fb2001c 	lw	s2,28(sp)
   150b0:	8fb30020 	lw	s3,32(sp)
   150b4:	8fb40024 	lw	s4,36(sp)
   150b8:	8fb50028 	lw	s5,40(sp)
   150bc:	03e00008 	jr	ra
   150c0:	27bd0060 	addiu	sp,sp,96

000150c4 <func_800588B4>:
   150c4:	27bdffb0 	addiu	sp,sp,-80
   150c8:	afbf0024 	sw	ra,36(sp)
   150cc:	afb00020 	sw	s0,32(sp)
   150d0:	8483014c 	lh	v1,332(a0)
   150d4:	00808025 	move	s0,a0
   150d8:	8c820090 	lw	v0,144(a0)
   150dc:	306e0002 	andi	t6,v1,0x2
   150e0:	11c0000a 	beqz	t6,1510c <func_800588B4+0x48>
   150e4:	00000000 	nop
   150e8:	848f0142 	lh	t7,322(a0)
   150ec:	3c190000 	lui	t9,0x0
   150f0:	30690200 	andi	t1,v1,0x200
   150f4:	000fc0c0 	sll	t8,t7,0x3
   150f8:	0338c821 	addu	t9,t9,t8
   150fc:	8f390000 	lw	t9,0(t9)
   15100:	00194040 	sll	t0,t9,0x1
   15104:	05010003 	bgez	t0,15114 <func_800588B4+0x50>
   15108:	00000000 	nop
   1510c:	100000f9 	b	154f4 <func_800588B4+0x430>
   15110:	00001025 	move	v0,zero
   15114:	51200019 	beqzl	t1,1517c <func_800588B4+0xb8>
   15118:	0003cbc2 	srl	t9,v1,0xf
   1511c:	8c4a0680 	lw	t2,1664(v0)
   15120:	02002025 	move	a0,s0
   15124:	24050024 	li	a1,36
   15128:	314b0800 	andi	t3,t2,0x800
   1512c:	11600009 	beqz	t3,15154 <func_800588B4+0x90>
   15130:	000373c2 	srl	t6,v1,0xf
   15134:	0c000000 	jal	0 <func_800437F0>
   15138:	24060006 	li	a2,6
   1513c:	860c014c 	lh	t4,332(s0)
   15140:	24018000 	li	at,-32768
   15144:	01816825 	or	t5,t4,at
   15148:	a60d014c 	sh	t5,332(s0)
   1514c:	1000000a 	b	15178 <func_800588B4+0xb4>
   15150:	8603014c 	lh	v1,332(s0)
   15154:	11c00008 	beqz	t6,15178 <func_800588B4+0xb4>
   15158:	02002025 	move	a0,s0
   1515c:	8605011e 	lh	a1,286(s0)
   15160:	0c000000 	jal	0 <func_800437F0>
   15164:	24060006 	li	a2,6
   15168:	860f014c 	lh	t7,332(s0)
   1516c:	31f87fff 	andi	t8,t7,0x7fff
   15170:	a618014c 	sh	t8,332(s0)
   15174:	8603014c 	lh	v1,332(s0)
   15178:	0003cbc2 	srl	t9,v1,0xf
   1517c:	17200068 	bnez	t9,15320 <func_800588B4+0x25c>
   15180:	02002025 	move	a0,s0
   15184:	0c000000 	jal	0 <func_800437F0>
   15188:	27a5004c 	addiu	a1,sp,76
   1518c:	00021c00 	sll	v1,v0,0x10
   15190:	00031c03 	sra	v1,v1,0x10
   15194:	00022c00 	sll	a1,v0,0x10
   15198:	2401fffe 	li	at,-2
   1519c:	14610024 	bne	v1,at,15230 <func_800588B4+0x16c>
   151a0:	00052c03 	sra	a1,a1,0x10
   151a4:	8603014c 	lh	v1,332(s0)
   151a8:	240bffff 	li	t3,-1
   151ac:	240d0032 	li	t5,50
   151b0:	30680200 	andi	t0,v1,0x200
   151b4:	15000007 	bnez	t0,151d4 <func_800588B4+0x110>
   151b8:	34690200 	ori	t1,v1,0x200
   151bc:	a609014c 	sh	t1,332(s0)
   151c0:	c7a4004c 	lwc1	$f4,76(sp)
   151c4:	860a0148 	lh	t2,328(s0)
   151c8:	a60b0120 	sh	t3,288(s0)
   151cc:	e6040114 	swc1	$f4,276(s0)
   151d0:	ae0a0118 	sw	t2,280(s0)
   151d4:	c6060098 	lwc1	$f6,152(s0)
   151d8:	c6080104 	lwc1	$f8,260(s0)
   151dc:	02002025 	move	a0,s0
   151e0:	24050005 	li	a1,5
   151e4:	46083032 	c.eq.s	$f6,$f8
   151e8:	00000000 	nop
   151ec:	4503004d 	bc1tl	15324 <func_800588B4+0x260>
   151f0:	02002025 	move	a0,s0
   151f4:	860c0146 	lh	t4,326(s0)
   151f8:	260e011c 	addiu	t6,s0,284
   151fc:	24060002 	li	a2,2
   15200:	a7ac0032 	sh	t4,50(sp)
   15204:	a60d0146 	sh	t5,326(s0)
   15208:	0c000000 	jal	0 <func_800437F0>
   1520c:	afae002c 	sw	t6,44(sp)
   15210:	860f0142 	lh	t7,322(s0)
   15214:	8fb8002c 	lw	t8,44(sp)
   15218:	2408fffe 	li	t0,-2
   1521c:	af0f0000 	sw	t7,0(t8)
   15220:	87b90032 	lh	t9,50(sp)
   15224:	a6080148 	sh	t0,328(s0)
   15228:	1000003d 	b	15320 <func_800588B4+0x25c>
   1522c:	a6190146 	sh	t9,326(s0)
   15230:	2401ffff 	li	at,-1
   15234:	50610021 	beql	v1,at,152bc <func_800588B4+0x1f8>
   15238:	8609014c 	lh	t1,332(s0)
   1523c:	8603014c 	lh	v1,332(s0)
   15240:	240cffff 	li	t4,-1
   15244:	240e0032 	li	t6,50
   15248:	30690200 	andi	t1,v1,0x200
   1524c:	15200007 	bnez	t1,1526c <func_800588B4+0x1a8>
   15250:	346a0200 	ori	t2,v1,0x200
   15254:	a60a014c 	sh	t2,332(s0)
   15258:	c7aa004c 	lwc1	$f10,76(sp)
   1525c:	860b0148 	lh	t3,328(s0)
   15260:	a60c0120 	sh	t4,288(s0)
   15264:	e60a0114 	swc1	$f10,276(s0)
   15268:	ae0b0118 	sw	t3,280(s0)
   1526c:	c6100098 	lwc1	$f16,152(s0)
   15270:	c6120104 	lwc1	$f18,260(s0)
   15274:	46128032 	c.eq.s	$f16,$f18
   15278:	00000000 	nop
   1527c:	45030029 	bc1tl	15324 <func_800588B4+0x260>
   15280:	02002025 	move	a0,s0
   15284:	860d0146 	lh	t5,326(s0)
   15288:	260f011c 	addiu	t7,s0,284
   1528c:	02002025 	move	a0,s0
   15290:	a7ad0032 	sh	t5,50(sp)
   15294:	a60e0146 	sh	t6,326(s0)
   15298:	0c000000 	jal	0 <func_800437F0>
   1529c:	afaf002c 	sw	t7,44(sp)
   152a0:	86180142 	lh	t8,322(s0)
   152a4:	8fb9002c 	lw	t9,44(sp)
   152a8:	af380000 	sw	t8,0(t9)
   152ac:	87a80032 	lh	t0,50(sp)
   152b0:	1000001b 	b	15320 <func_800588B4+0x25c>
   152b4:	a6080146 	sh	t0,326(s0)
   152b8:	8609014c 	lh	t1,332(s0)
   152bc:	3c040000 	lui	a0,0x0
   152c0:	312a0200 	andi	t2,t1,0x200
   152c4:	51400017 	beqzl	t2,15324 <func_800588B4+0x260>
   152c8:	02002025 	move	a0,s0
   152cc:	0c000000 	jal	0 <func_800437F0>
   152d0:	24840000 	addiu	a0,a0,0
   152d4:	860b014c 	lh	t3,332(s0)
   152d8:	860d0146 	lh	t5,326(s0)
   152dc:	240e0032 	li	t6,50
   152e0:	316cfdff 	andi	t4,t3,0xfdff
   152e4:	a60c014c 	sh	t4,332(s0)
   152e8:	a7ad0032 	sh	t5,50(sp)
   152ec:	8e050118 	lw	a1,280(s0)
   152f0:	a60e0146 	sh	t6,326(s0)
   152f4:	04a10006 	bgez	a1,15310 <func_800588B4+0x24c>
   152f8:	00000000 	nop
   152fc:	0c000000 	jal	0 <func_800437F0>
   15300:	02002025 	move	a0,s0
   15304:	240fffff 	li	t7,-1
   15308:	10000003 	b	15318 <func_800588B4+0x254>
   1530c:	a60f0148 	sh	t7,328(s0)
   15310:	0c000000 	jal	0 <func_800437F0>
   15314:	02002025 	move	a0,s0
   15318:	87b80032 	lh	t8,50(sp)
   1531c:	a6180146 	sh	t8,326(s0)
   15320:	02002025 	move	a0,s0
   15324:	2605005c 	addiu	a1,s0,92
   15328:	0c000000 	jal	0 <func_800437F0>
   1532c:	27a60044 	addiu	a2,sp,68
   15330:	3c01c6fa 	lui	at,0xc6fa
   15334:	44812000 	mtc1	at,$f4
   15338:	e7a0004c 	swc1	$f0,76(sp)
   1533c:	46040032 	c.eq.s	$f0,$f4
   15340:	00000000 	nop
   15344:	45030056 	bc1tl	154a0 <func_800588B4+0x3dc>
   15348:	8603014c 	lh	v1,332(s0)
   1534c:	8603014c 	lh	v1,332(s0)
   15350:	e6000114 	swc1	$f0,276(s0)
   15354:	26190120 	addiu	t9,s0,288
   15358:	30680100 	andi	t0,v1,0x100
   1535c:	1500000b 	bnez	t0,1538c <func_800588B4+0x2c8>
   15360:	afb9002c 	sw	t9,44(sp)
   15364:	34690100 	ori	t1,v1,0x100
   15368:	3c040000 	lui	a0,0x0
   1536c:	a609014c 	sh	t1,332(s0)
   15370:	0c000000 	jal	0 <func_800437F0>
   15374:	24840000 	addiu	a0,a0,0
   15378:	8e04008c 	lw	a0,140(s0)
   1537c:	0c000000 	jal	0 <func_800437F0>
   15380:	8fa50044 	lw	a1,68(sp)
   15384:	240a0050 	li	t2,80
   15388:	a60a0150 	sh	t2,336(s0)
   1538c:	0c000000 	jal	0 <func_800437F0>
   15390:	24040020 	li	a0,32
   15394:	3c0b0000 	lui	t3,0x0
   15398:	8d6b0000 	lw	t3,0(t3)
   1539c:	8fad002c 	lw	t5,44(sp)
   153a0:	856c02f6 	lh	t4,758(t3)
   153a4:	5180000a 	beqzl	t4,153d0 <func_800588B4+0x30c>
   153a8:	8fb9002c 	lw	t9,44(sp)
   153ac:	0c000000 	jal	0 <func_800437F0>
   153b0:	85a40000 	lh	a0,0(t5)
   153b4:	8faf002c 	lw	t7,44(sp)
   153b8:	240effff 	li	t6,-1
   153bc:	3c180000 	lui	t8,0x0
   153c0:	a5ee0000 	sh	t6,0(t7)
   153c4:	8f180000 	lw	t8,0(t8)
   153c8:	a70002f6 	sh	zero,758(t8)
   153cc:	8fb9002c 	lw	t9,44(sp)
   153d0:	2401ffff 	li	at,-1
   153d4:	87240000 	lh	a0,0(t9)
   153d8:	50810006 	beql	a0,at,153f4 <func_800588B4+0x330>
   153dc:	02002025 	move	a0,s0
   153e0:	0c000000 	jal	0 <func_800437F0>
   153e4:	00000000 	nop
   153e8:	2401000a 	li	at,10
   153ec:	14410015 	bne	v0,at,15444 <func_800588B4+0x380>
   153f0:	02002025 	move	a0,s0
   153f4:	0c000000 	jal	0 <func_800437F0>
   153f8:	24050005 	li	a1,5
   153fc:	8fa8002c 	lw	t0,44(sp)
   15400:	10400010 	beqz	v0,15444 <func_800588B4+0x380>
   15404:	a5020000 	sh	v0,0(t0)
   15408:	8fa9002c 	lw	t1,44(sp)
   1540c:	24050226 	li	a1,550
   15410:	0c000000 	jal	0 <func_800437F0>
   15414:	85240000 	lh	a0,0(t1)
   15418:	8faa002c 	lw	t2,44(sp)
   1541c:	24050001 	li	a1,1
   15420:	24060001 	li	a2,1
   15424:	85440000 	lh	a0,0(t2)
   15428:	afa00010 	sw	zero,16(sp)
   1542c:	0c000000 	jal	0 <func_800437F0>
   15430:	240700b4 	li	a3,180
   15434:	8fab002c 	lw	t3,44(sp)
   15438:	240503e8 	li	a1,1000
   1543c:	0c000000 	jal	0 <func_800437F0>
   15440:	85640000 	lh	a0,0(t3)
   15444:	86020150 	lh	v0,336(s0)
   15448:	58400008 	blezl	v0,1546c <func_800588B4+0x3a8>
   1544c:	8e0f008c 	lw	t7,140(s0)
   15450:	860d0152 	lh	t5,338(s0)
   15454:	244cffff 	addiu	t4,v0,-1
   15458:	a60c0150 	sh	t4,336(s0)
   1545c:	35ae0008 	ori	t6,t5,0x8
   15460:	10000024 	b	154f4 <func_800588B4+0x430>
   15464:	a60e0152 	sh	t6,338(s0)
   15468:	8e0f008c 	lw	t7,140(s0)
   1546c:	24010049 	li	at,73
   15470:	85f800a4 	lh	t8,164(t7)
   15474:	57010006 	bnel	t8,at,15490 <func_800588B4+0x3cc>
   15478:	86090152 	lh	t1,338(s0)
   1547c:	86190152 	lh	t9,338(s0)
   15480:	37280010 	ori	t0,t9,0x10
   15484:	1000001b 	b	154f4 <func_800588B4+0x430>
   15488:	a6080152 	sh	t0,338(s0)
   1548c:	86090152 	lh	t1,338(s0)
   15490:	352a0002 	ori	t2,t1,0x2
   15494:	10000017 	b	154f4 <func_800588B4+0x430>
   15498:	a60a0152 	sh	t2,338(s0)
   1549c:	8603014c 	lh	v1,332(s0)
   154a0:	3c040000 	lui	a0,0x0
   154a4:	24840000 	addiu	a0,a0,0
   154a8:	306b0100 	andi	t3,v1,0x100
   154ac:	1160000f 	beqz	t3,154ec <func_800588B4+0x428>
   154b0:	306cfeff 	andi	t4,v1,0xfeff
   154b4:	a60c014c 	sh	t4,332(s0)
   154b8:	260d0120 	addiu	t5,s0,288
   154bc:	0c000000 	jal	0 <func_800437F0>
   154c0:	afad002c 	sw	t5,44(sp)
   154c4:	0c000000 	jal	0 <func_800437F0>
   154c8:	8e04008c 	lw	a0,140(s0)
   154cc:	8fae002c 	lw	t6,44(sp)
   154d0:	85c40000 	lh	a0,0(t6)
   154d4:	50800004 	beqzl	a0,154e8 <func_800588B4+0x424>
   154d8:	a6000150 	sh	zero,336(s0)
   154dc:	0c000000 	jal	0 <func_800437F0>
   154e0:	00000000 	nop
   154e4:	a6000150 	sh	zero,336(s0)
   154e8:	a6000152 	sh	zero,338(s0)
   154ec:	0c000000 	jal	0 <func_800437F0>
   154f0:	00002025 	move	a0,zero
   154f4:	8fbf0024 	lw	ra,36(sp)
   154f8:	8fb00020 	lw	s0,32(sp)
   154fc:	27bd0050 	addiu	sp,sp,80
   15500:	03e00008 	jr	ra
   15504:	00000000 	nop

00015508 <func_80058CF8>:
   15508:	848e0152 	lh	t6,338(a0)
   1550c:	8c98008c 	lw	t8,140(a0)
   15510:	3c190001 	lui	t9,0x1
   15514:	31cffffe 	andi	t7,t6,0xfffe
   15518:	a48f0152 	sh	t7,338(a0)
   1551c:	0338c821 	addu	t9,t9,t8
   15520:	93391cbe 	lbu	t9,7358(t9)
   15524:	24010003 	li	at,3
   15528:	17210004 	bne	t9,at,1553c <func_80058CF8+0x34>
   1552c:	00000000 	nop
   15530:	84880152 	lh	t0,338(a0)
   15534:	35090001 	ori	t1,t0,0x1
   15538:	a4890152 	sh	t1,338(a0)
   1553c:	03e00008 	jr	ra
   15540:	24020001 	li	v0,1

00015544 <func_80058D34>:
   15544:	3c0e0000 	lui	t6,0x0
   15548:	8dce0000 	lw	t6,0(t6)
   1554c:	27bdffe0 	addiu	sp,sp,-32
   15550:	afbf0014 	sw	ra,20(sp)
   15554:	afa40020 	sw	a0,32(sp)
   15558:	15c0004b 	bnez	t6,15688 <func_80058D34+0x144>
   1555c:	00003025 	move	a2,zero
   15560:	8c98008c 	lw	t8,140(a0)
   15564:	3c080000 	lui	t0,0x0
   15568:	871907a0 	lh	t9,1952(t8)
   1556c:	57200047 	bnezl	t9,1568c <func_80058D34+0x148>
   15570:	8fbf0014 	lw	ra,20(sp)
   15574:	8d080000 	lw	t0,0(t0)
   15578:	2401fff7 	li	at,-9
   1557c:	3c040000 	lui	a0,0x0
   15580:	95020050 	lhu	v0,80(t0)
   15584:	2484096c 	addiu	a0,a0,2412
   15588:	00414827 	nor	t1,v0,at
   1558c:	5520000a 	bnezl	t1,155b8 <func_80058D34+0x74>
   15590:	2401fffb 	li	at,-5
   15594:	0c000000 	jal	0 <func_800437F0>
   15598:	afa0001c 	sw	zero,28(sp)
   1559c:	0c000000 	jal	0 <func_800437F0>
   155a0:	24044837 	li	a0,18487
   155a4:	3c0a0000 	lui	t2,0x0
   155a8:	8d4a0000 	lw	t2,0(t2)
   155ac:	8fa6001c 	lw	a2,28(sp)
   155b0:	95420050 	lhu	v0,80(t2)
   155b4:	2401fffb 	li	at,-5
   155b8:	00415827 	nor	t3,v0,at
   155bc:	1560000a 	bnez	t3,155e8 <func_80058D34+0xa4>
   155c0:	3c040000 	lui	a0,0x0
   155c4:	24840988 	addiu	a0,a0,2440
   155c8:	0c000000 	jal	0 <func_800437F0>
   155cc:	afa6001c 	sw	a2,28(sp)
   155d0:	0c000000 	jal	0 <func_800437F0>
   155d4:	2404480c 	li	a0,18444
   155d8:	3c0c0000 	lui	t4,0x0
   155dc:	8d8c0000 	lw	t4,0(t4)
   155e0:	8fa6001c 	lw	a2,28(sp)
   155e4:	95820050 	lhu	v0,80(t4)
   155e8:	2401fffe 	li	at,-2
   155ec:	00416827 	nor	t5,v0,at
   155f0:	15a00002 	bnez	t5,155fc <func_80058D34+0xb8>
   155f4:	2401fffd 	li	at,-3
   155f8:	24060001 	li	a2,1
   155fc:	00417027 	nor	t6,v0,at
   15600:	15c00002 	bnez	t6,1560c <func_80058D34+0xc8>
   15604:	3c030000 	lui	v1,0x0
   15608:	2406ffff 	li	a2,-1
   1560c:	10c0001e 	beqz	a2,15688 <func_80058D34+0x144>
   15610:	24630000 	addiu	v1,v1,0
   15614:	8c6f0000 	lw	t7,0(v1)
   15618:	24010006 	li	at,6
   1561c:	3c050000 	lui	a1,0x0
   15620:	01e6c021 	addu	t8,t7,a2
   15624:	0301001a 	div	zero,t8,at
   15628:	0000c810 	mfhi	t9
   1562c:	00194840 	sll	t1,t9,0x1
   15630:	ac790000 	sw	t9,0(v1)
   15634:	00a92821 	addu	a1,a1,t1
   15638:	84a50000 	lh	a1,0(a1)
   1563c:	0c000000 	jal	0 <func_800437F0>
   15640:	8fa40020 	lw	a0,32(sp)
   15644:	3c030000 	lui	v1,0x0
   15648:	1840000f 	blez	v0,15688 <func_80058D34+0x144>
   1564c:	24630000 	addiu	v1,v1,0
   15650:	8c6a0000 	lw	t2,0(v1)
   15654:	3c0c0000 	lui	t4,0x0
   15658:	3c0e0000 	lui	t6,0x0
   1565c:	000a5840 	sll	t3,t2,0x1
   15660:	018b6021 	addu	t4,t4,t3
   15664:	858c0000 	lh	t4,0(t4)
   15668:	25ce0000 	addiu	t6,t6,0
   1566c:	3c040000 	lui	a0,0x0
   15670:	000c6880 	sll	t5,t4,0x2
   15674:	01ac6823 	subu	t5,t5,t4
   15678:	000d6880 	sll	t5,t5,0x2
   1567c:	01ae2821 	addu	a1,t5,t6
   15680:	0c000000 	jal	0 <func_800437F0>
   15684:	248409a0 	addiu	a0,a0,2464
   15688:	8fbf0014 	lw	ra,20(sp)
   1568c:	27bd0020 	addiu	sp,sp,32
   15690:	24020001 	li	v0,1
   15694:	03e00008 	jr	ra
   15698:	00000000 	nop

0001569c <func_80058E8C>:
   1569c:	27bdff98 	addiu	sp,sp,-104
   156a0:	afbf0024 	sw	ra,36(sp)
   156a4:	afb00020 	sw	s0,32(sp)
   156a8:	f7b40018 	sdc1	$f20,24(sp)
   156ac:	84820152 	lh	v0,338(a0)
   156b0:	00808025 	move	s0,a0
   156b4:	104000c2 	beqz	v0,159c0 <func_80058E8C+0x324>
   156b8:	304e0004 	andi	t6,v0,0x4
   156bc:	11c00019 	beqz	t6,15724 <func_80058E8C+0x88>
   156c0:	30580008 	andi	t8,v0,0x8
   156c4:	3c010000 	lui	at,0x0
   156c8:	c4300000 	lwc1	$f16,0(at)
   156cc:	3c01432a 	lui	at,0x432a
   156d0:	44811000 	mtc1	at,$f2
   156d4:	3c010000 	lui	at,0x0
   156d8:	c4240000 	lwc1	$f4,0(at)
   156dc:	3c010000 	lui	at,0x0
   156e0:	44803000 	mtc1	zero,$f6
   156e4:	c4280000 	lwc1	$f8,0(at)
   156e8:	e7b0003c 	swc1	$f16,60(sp)
   156ec:	e7a40040 	swc1	$f4,64(sp)
   156f0:	e7a60038 	swc1	$f6,56(sp)
   156f4:	e7a80034 	swc1	$f8,52(sp)
   156f8:	848f0150 	lh	t7,336(a0)
   156fc:	3c014270 	lui	at,0x4270
   15700:	44813000 	mtc1	at,$f6
   15704:	448f5000 	mtc1	t7,$f10
   15708:	3c013f80 	lui	at,0x3f80
   1570c:	44814000 	mtc1	at,$f8
   15710:	46805120 	cvt.s.w	$f4,$f10
   15714:	44800000 	mtc1	zero,$f0
   15718:	e7a80060 	swc1	$f8,96(sp)
   1571c:	10000054 	b	15870 <func_80058E8C+0x1d4>
   15720:	46062503 	div.s	$f20,$f4,$f6
   15724:	13000019 	beqz	t8,1578c <func_80058E8C+0xf0>
   15728:	30480002 	andi	t0,v0,0x2
   1572c:	3c010000 	lui	at,0x0
   15730:	c42c0000 	lwc1	$f12,0(at)
   15734:	3c014378 	lui	at,0x4378
   15738:	44810000 	mtc1	at,$f0
   1573c:	3c01c2b4 	lui	at,0xc2b4
   15740:	44811000 	mtc1	at,$f2
   15744:	3c010000 	lui	at,0x0
   15748:	c42a0000 	lwc1	$f10,0(at)
   1574c:	3c010000 	lui	at,0x0
   15750:	c4240000 	lwc1	$f4,0(at)
   15754:	e7ac0038 	swc1	$f12,56(sp)
   15758:	e7ac0034 	swc1	$f12,52(sp)
   1575c:	e7aa0040 	swc1	$f10,64(sp)
   15760:	e7a4003c 	swc1	$f4,60(sp)
   15764:	86190150 	lh	t9,336(s0)
   15768:	3c0142a0 	lui	at,0x42a0
   1576c:	44815000 	mtc1	at,$f10
   15770:	44993000 	mtc1	t9,$f6
   15774:	3c013f80 	lui	at,0x3f80
   15778:	44812000 	mtc1	at,$f4
   1577c:	46803220 	cvt.s.w	$f8,$f6
   15780:	e7a40060 	swc1	$f4,96(sp)
   15784:	1000003a 	b	15870 <func_80058E8C+0x1d4>
   15788:	460a4503 	div.s	$f20,$f8,$f10
   1578c:	11000026 	beqz	t0,15828 <func_80058E8C+0x18c>
   15790:	30490001 	andi	t1,v0,0x1
   15794:	3c010000 	lui	at,0x0
   15798:	c42e0000 	lwc1	$f14,0(at)
   1579c:	3c010000 	lui	at,0x0
   157a0:	c4300000 	lwc1	$f16,0(at)
   157a4:	3c014316 	lui	at,0x4316
   157a8:	44819000 	mtc1	at,$f18
   157ac:	3c010000 	lui	at,0x0
   157b0:	c4200000 	lwc1	$f0,0(at)
   157b4:	3c01c194 	lui	at,0xc194
   157b8:	44811000 	mtc1	at,$f2
   157bc:	3c010000 	lui	at,0x0
   157c0:	c4260000 	lwc1	$f6,0(at)
   157c4:	e7ae0040 	swc1	$f14,64(sp)
   157c8:	e7ae003c 	swc1	$f14,60(sp)
   157cc:	e7b00038 	swc1	$f16,56(sp)
   157d0:	e7a60034 	swc1	$f6,52(sp)
   157d4:	c60a0060 	lwc1	$f10,96(s0)
   157d8:	c6080114 	lwc1	$f8,276(s0)
   157dc:	3c013f80 	lui	at,0x3f80
   157e0:	460a4301 	sub.s	$f12,$f8,$f10
   157e4:	460c903c 	c.lt.s	$f18,$f12
   157e8:	00000000 	nop
   157ec:	45020005 	bc1fl	15804 <func_80058E8C+0x168>
   157f0:	46126383 	div.s	$f14,$f12,$f18
   157f4:	44817000 	mtc1	at,$f14
   157f8:	10000002 	b	15804 <func_80058E8C+0x168>
   157fc:	00000000 	nop
   15800:	46126383 	div.s	$f14,$f12,$f18
   15804:	3c010000 	lui	at,0x0
   15808:	c42c0000 	lwc1	$f12,0(at)
   1580c:	c60600e0 	lwc1	$f6,224(s0)
   15810:	460c7102 	mul.s	$f4,$f14,$f12
   15814:	00000000 	nop
   15818:	460c3202 	mul.s	$f8,$f6,$f12
   1581c:	46082500 	add.s	$f20,$f4,$f8
   15820:	10000013 	b	15870 <func_80058E8C+0x1d4>
   15824:	e7b40060 	swc1	$f20,96(sp)
   15828:	1120006f 	beqz	t1,159e8 <func_80058E8C+0x34c>
   1582c:	3c010000 	lui	at,0x0
   15830:	c4300000 	lwc1	$f16,0(at)
   15834:	3c014316 	lui	at,0x4316
   15838:	44811000 	mtc1	at,$f2
   1583c:	3c010000 	lui	at,0x0
   15840:	c42a0000 	lwc1	$f10,0(at)
   15844:	3c010000 	lui	at,0x0
   15848:	c4260000 	lwc1	$f6,0(at)
   1584c:	3c013f80 	lui	at,0x3f80
   15850:	44812000 	mtc1	at,$f4
   15854:	44800000 	mtc1	zero,$f0
   15858:	4481a000 	mtc1	at,$f20
   1585c:	e7b0003c 	swc1	$f16,60(sp)
   15860:	e7b00038 	swc1	$f16,56(sp)
   15864:	e7aa0040 	swc1	$f10,64(sp)
   15868:	e7a60034 	swc1	$f6,52(sp)
   1586c:	e7a40060 	swc1	$f4,96(sp)
   15870:	3c010000 	lui	at,0x0
   15874:	c42c0000 	lwc1	$f12,0(at)
   15878:	3c013f00 	lui	at,0x3f00
   1587c:	44817000 	mtc1	at,$f14
   15880:	460c0202 	mul.s	$f8,$f0,$f12
   15884:	3c040000 	lui	a0,0x0
   15888:	3c0e0000 	lui	t6,0x0
   1588c:	460c1102 	mul.s	$f4,$f2,$f12
   15890:	84840000 	lh	a0,0(a0)
   15894:	85ce0000 	lh	t6,0(t6)
   15898:	3c010000 	lui	at,0x0
   1589c:	460e4280 	add.s	$f10,$f8,$f14
   158a0:	460e2200 	add.s	$f8,$f4,$f14
   158a4:	4600518d 	trunc.w.s	$f6,$f10
   158a8:	4600428d 	trunc.w.s	$f10,$f8
   158ac:	440d3000 	mfc1	t5,$f6
   158b0:	44085000 	mfc1	t0,$f10
   158b4:	008d2021 	addu	a0,a0,t5
   158b8:	00042400 	sll	a0,a0,0x10
   158bc:	01c84821 	addu	t1,t6,t0
   158c0:	a4290000 	sh	t1,0(at)
   158c4:	00042403 	sra	a0,a0,0x10
   158c8:	3c010000 	lui	at,0x0
   158cc:	0c000000 	jal	0 <func_800437F0>
   158d0:	a4240000 	sh	a0,0(at)
   158d4:	3c040000 	lui	a0,0x0
   158d8:	0c000000 	jal	0 <func_800437F0>
   158dc:	84840000 	lh	a0,0(a0)
   158e0:	3c040000 	lui	a0,0x0
   158e4:	0c000000 	jal	0 <func_800437F0>
   158e8:	84840000 	lh	a0,0(a0)
   158ec:	44801000 	mtc1	zero,$f2
   158f0:	8e04008c 	lw	a0,140(s0)
   158f4:	44051000 	mfc1	a1,$f2
   158f8:	44061000 	mfc1	a2,$f2
   158fc:	44071000 	mfc1	a3,$f2
   15900:	0c000000 	jal	0 <func_800437F0>
   15904:	248400b8 	addiu	a0,a0,184
   15908:	3c040000 	lui	a0,0x0
   1590c:	0c000000 	jal	0 <func_800437F0>
   15910:	84840000 	lh	a0,0(a0)
   15914:	3c040000 	lui	a0,0x0
   15918:	84840000 	lh	a0,0(a0)
   1591c:	0c000000 	jal	0 <func_800437F0>
   15920:	e7a00028 	swc1	$f0,40(sp)
   15924:	3c040000 	lui	a0,0x0
   15928:	84840000 	lh	a0,0(a0)
   1592c:	0c000000 	jal	0 <func_800437F0>
   15930:	e7a0002c 	swc1	$f0,44(sp)
   15934:	c7a40040 	lwc1	$f4,64(sp)
   15938:	c7a60028 	lwc1	$f6,40(sp)
   1593c:	3c013f80 	lui	at,0x3f80
   15940:	46142202 	mul.s	$f8,$f4,$f20
   15944:	44811000 	mtc1	at,$f2
   15948:	8e04008c 	lw	a0,140(s0)
   1594c:	248400b8 	addiu	a0,a0,184
   15950:	46083282 	mul.s	$f10,$f6,$f8
   15954:	c7a8003c 	lwc1	$f8,60(sp)
   15958:	c7a6002c 	lwc1	$f6,44(sp)
   1595c:	46025100 	add.s	$f4,$f10,$f2
   15960:	46144282 	mul.s	$f10,$f8,$f20
   15964:	44052000 	mfc1	a1,$f4
   15968:	460a3102 	mul.s	$f4,$f6,$f10
   1596c:	c7a60038 	lwc1	$f6,56(sp)
   15970:	46143282 	mul.s	$f10,$f6,$f20
   15974:	46022200 	add.s	$f8,$f4,$f2
   15978:	460a0102 	mul.s	$f4,$f0,$f10
   1597c:	44064000 	mfc1	a2,$f8
   15980:	46022200 	add.s	$f8,$f4,$f2
   15984:	44074000 	mfc1	a3,$f8
   15988:	0c000000 	jal	0 <func_800437F0>
   1598c:	00000000 	nop
   15990:	c7a60034 	lwc1	$f6,52(sp)
   15994:	c7aa0060 	lwc1	$f10,96(sp)
   15998:	8e04008c 	lw	a0,140(s0)
   1599c:	460a3102 	mul.s	$f4,$f6,$f10
   159a0:	248400b8 	addiu	a0,a0,184
   159a4:	44052000 	mfc1	a1,$f4
   159a8:	0c000000 	jal	0 <func_800437F0>
   159ac:	00000000 	nop
   159b0:	860a014c 	lh	t2,332(s0)
   159b4:	354b0040 	ori	t3,t2,0x40
   159b8:	1000000b 	b	159e8 <func_80058E8C+0x34c>
   159bc:	a60b014c 	sh	t3,332(s0)
   159c0:	860c014c 	lh	t4,332(s0)
   159c4:	318d0040 	andi	t5,t4,0x40
   159c8:	51a00008 	beqzl	t5,159ec <func_80058E8C+0x350>
   159cc:	8fbf0024 	lw	ra,36(sp)
   159d0:	8e04008c 	lw	a0,140(s0)
   159d4:	0c000000 	jal	0 <func_800437F0>
   159d8:	248400b8 	addiu	a0,a0,184
   159dc:	860f014c 	lh	t7,332(s0)
   159e0:	31f8ffbf 	andi	t8,t7,0xffbf
   159e4:	a618014c 	sh	t8,332(s0)
   159e8:	8fbf0024 	lw	ra,36(sp)
   159ec:	d7b40018 	ldc1	$f20,24(sp)
   159f0:	8fb00020 	lw	s0,32(sp)
   159f4:	03e00008 	jr	ra
   159f8:	27bd0068 	addiu	sp,sp,104

000159fc <func_800591EC>:
   159fc:	27bdff20 	addiu	sp,sp,-224
   15a00:	afbf0044 	sw	ra,68(sp)
   15a04:	afb00040 	sw	s0,64(sp)
   15a08:	afa400e0 	sw	a0,224(sp)
   15a0c:	8cae008c 	lw	t6,140(a1)
   15a10:	3c190000 	lui	t9,0x0
   15a14:	8f390000 	lw	t9,0(t9)
   15a18:	8dcf0790 	lw	t7,1936(t6)
   15a1c:	00a08025 	move	s0,a1
   15a20:	3c040000 	lui	a0,0x0
   15a24:	8df80090 	lw	t8,144(t7)
   15a28:	afb80058 	sw	t8,88(sp)
   15a2c:	872902f4 	lh	t1,756(t9)
   15a30:	51200004 	beqzl	t1,15a44 <func_800591EC+0x48>
   15a34:	860a0140 	lh	t2,320(s0)
   15a38:	0c000000 	jal	0 <func_800437F0>
   15a3c:	24840000 	addiu	a0,a0,0
   15a40:	860a0140 	lh	t2,320(s0)
   15a44:	3c0b0000 	lui	t3,0x0
   15a48:	3c010000 	lui	at,0x0
   15a4c:	15400012 	bnez	t2,15a98 <func_800591EC+0x9c>
   15a50:	00000000 	nop
   15a54:	8d6b0000 	lw	t3,0(t3)
   15a58:	3c040000 	lui	a0,0x0
   15a5c:	24840000 	addiu	a0,a0,0
   15a60:	856c02f4 	lh	t4,756(t3)
   15a64:	51800004 	beqzl	t4,15a78 <func_800591EC+0x7c>
   15a68:	8a0f0134 	lwl	t7,308(s0)
   15a6c:	0c000000 	jal	0 <func_800437F0>
   15a70:	02002825 	move	a1,s0
   15a74:	8a0f0134 	lwl	t7,308(s0)
   15a78:	8fad00e0 	lw	t5,224(sp)
   15a7c:	9a0f0137 	lwr	t7,311(s0)
   15a80:	a9af0000 	swl	t7,0(t5)
   15a84:	b9af0003 	swr	t7,3(t5)
   15a88:	960f0138 	lhu	t7,312(s0)
   15a8c:	a5af0004 	sh	t7,4(t5)
   15a90:	1000030c 	b	166c4 <func_800591EC+0xcc8>
   15a94:	8fa200e0 	lw	v0,224(sp)
   15a98:	ac200000 	sw	zero,0(at)
   15a9c:	8e050090 	lw	a1,144(s0)
   15aa0:	10a000cc 	beqz	a1,15dd4 <func_800591EC+0x3d8>
   15aa4:	00000000 	nop
   15aa8:	0c000000 	jal	0 <func_800437F0>
   15aac:	27a40080 	addiu	a0,sp,128
   15ab0:	26050094 	addiu	a1,s0,148
   15ab4:	afa50050 	sw	a1,80(sp)
   15ab8:	0c000000 	jal	0 <func_800437F0>
   15abc:	27a40080 	addiu	a0,sp,128
   15ac0:	e7a000a0 	swc1	$f0,160(sp)
   15ac4:	e60000d8 	swc1	$f0,216(s0)
   15ac8:	0c000000 	jal	0 <func_800437F0>
   15acc:	8e040090 	lw	a0,144(s0)
   15ad0:	3c180000 	lui	t8,0x0
   15ad4:	8f180000 	lw	t8,0(t8)
   15ad8:	3c010000 	lui	at,0x0
   15adc:	c4280000 	lwc1	$f8,0(at)
   15ae0:	871901a4 	lh	t9,420(t8)
   15ae4:	c7b200a0 	lwc1	$f18,160(sp)
   15ae8:	3c013f80 	lui	at,0x3f80
   15aec:	44992000 	mtc1	t9,$f4
   15af0:	44817000 	mtc1	at,$f14
   15af4:	468021a0 	cvt.s.w	$f6,$f4
   15af8:	46083282 	mul.s	$f10,$f6,$f8
   15afc:	00000000 	nop
   15b00:	46005402 	mul.s	$f16,$f10,$f0
   15b04:	0c000000 	jal	0 <func_800437F0>
   15b08:	46109303 	div.s	$f12,$f18,$f16
   15b0c:	e60000e0 	swc1	$f0,224(s0)
   15b10:	c7a40080 	lwc1	$f4,128(sp)
   15b14:	c6060094 	lwc1	$f6,148(s0)
   15b18:	c6120098 	lwc1	$f18,152(s0)
   15b1c:	27aa0080 	addiu	t2,sp,128
   15b20:	46062201 	sub.s	$f8,$f4,$f6
   15b24:	c606009c 	lwc1	$f6,156(s0)
   15b28:	27a900ac 	addiu	t1,sp,172
   15b2c:	e60800f0 	swc1	$f8,240(s0)
   15b30:	c7aa0084 	lwc1	$f10,132(sp)
   15b34:	46125401 	sub.s	$f16,$f10,$f18
   15b38:	e61000f4 	swc1	$f16,244(s0)
   15b3c:	c7a40088 	lwc1	$f4,136(sp)
   15b40:	46062201 	sub.s	$f8,$f4,$f6
   15b44:	e60800f8 	swc1	$f8,248(s0)
   15b48:	8d4c0000 	lw	t4,0(t2)
   15b4c:	ad2c0000 	sw	t4,0(t1)
   15b50:	8d4b0004 	lw	t3,4(t2)
   15b54:	ad2b0004 	sw	t3,4(t1)
   15b58:	8d4c0008 	lw	t4,8(t2)
   15b5c:	ad2c0008 	sw	t4,8(t1)
   15b60:	0c000000 	jal	0 <func_800437F0>
   15b64:	8e040090 	lw	a0,144(s0)
   15b68:	c7aa00b0 	lwc1	$f10,176(sp)
   15b6c:	3c060000 	lui	a2,0x0
   15b70:	27ae00ac 	addiu	t6,sp,172
   15b74:	46005480 	add.s	$f18,$f10,$f0
   15b78:	24c60000 	addiu	a2,a2,0
   15b7c:	27a700a8 	addiu	a3,sp,168
   15b80:	e7b200b0 	swc1	$f18,176(sp)
   15b84:	8e0d0090 	lw	t5,144(s0)
   15b88:	8e04008c 	lw	a0,140(s0)
   15b8c:	afae0014 	sw	t6,20(sp)
   15b90:	afad0010 	sw	t5,16(sp)
   15b94:	0c000000 	jal	0 <func_800437F0>
   15b98:	248507c0 	addiu	a1,a0,1984
   15b9c:	3c01c6fa 	lui	at,0xc6fa
   15ba0:	44818000 	mtc1	at,$f16
   15ba4:	3c030000 	lui	v1,0x0
   15ba8:	24630000 	addiu	v1,v1,0
   15bac:	46100032 	c.eq.s	$f0,$f16
   15bb0:	e7a000a4 	swc1	$f0,164(sp)
   15bb4:	3c020000 	lui	v0,0x0
   15bb8:	3c013f80 	lui	at,0x3f80
   15bbc:	4501001d 	bc1t	15c34 <func_800591EC+0x238>
   15bc0:	27ae0080 	addiu	t6,sp,128
   15bc4:	8c6f0000 	lw	t7,0(v1)
   15bc8:	3c010000 	lui	at,0x0
   15bcc:	c4220000 	lwc1	$f2,0(at)
   15bd0:	85f80008 	lh	t8,8(t7)
   15bd4:	00001025 	move	v0,zero
   15bd8:	44982000 	mtc1	t8,$f4
   15bdc:	00000000 	nop
   15be0:	468021a0 	cvt.s.w	$f6,$f4
   15be4:	46023202 	mul.s	$f8,$f6,$f2
   15be8:	e6080108 	swc1	$f8,264(s0)
   15bec:	8c790000 	lw	t9,0(v1)
   15bf0:	8729000a 	lh	t1,10(t9)
   15bf4:	44895000 	mtc1	t1,$f10
   15bf8:	00000000 	nop
   15bfc:	468054a0 	cvt.s.w	$f18,$f10
   15c00:	46029402 	mul.s	$f16,$f18,$f2
   15c04:	e610010c 	swc1	$f16,268(s0)
   15c08:	8c6a0000 	lw	t2,0(v1)
   15c0c:	854b000c 	lh	t3,12(t2)
   15c10:	448b2000 	mtc1	t3,$f4
   15c14:	00000000 	nop
   15c18:	468021a0 	cvt.s.w	$f6,$f4
   15c1c:	46023202 	mul.s	$f8,$f6,$f2
   15c20:	e6080110 	swc1	$f8,272(s0)
   15c24:	8fac00a8 	lw	t4,168(sp)
   15c28:	e6000104 	swc1	$f0,260(s0)
   15c2c:	10000008 	b	15c50 <func_800591EC+0x254>
   15c30:	a60c0146 	sh	t4,326(s0)
   15c34:	8c420000 	lw	v0,0(v0)
   15c38:	44800000 	mtc1	zero,$f0
   15c3c:	44815000 	mtc1	at,$f10
   15c40:	24420001 	addiu	v0,v0,1
   15c44:	e6000108 	swc1	$f0,264(s0)
   15c48:	e6000110 	swc1	$f0,272(s0)
   15c4c:	e60a010c 	swc1	$f10,268(s0)
   15c50:	8fad0050 	lw	t5,80(sp)
   15c54:	8dd80000 	lw	t8,0(t6)
   15c58:	3c010000 	lui	at,0x0
   15c5c:	adb80000 	sw	t8,0(t5)
   15c60:	8dcf0004 	lw	t7,4(t6)
   15c64:	adaf0004 	sw	t7,4(t5)
   15c68:	8dd80008 	lw	t8,8(t6)
   15c6c:	adb80008 	sw	t8,8(t5)
   15c70:	8dcf000c 	lw	t7,12(t6)
   15c74:	adaf000c 	sw	t7,12(t5)
   15c78:	8dd80010 	lw	t8,16(t6)
   15c7c:	adb80010 	sw	t8,16(t5)
   15c80:	ac220000 	sw	v0,0(at)
   15c84:	284100c8 	slti	at,v0,200
   15c88:	10200052 	beqz	at,15dd4 <func_800591EC+0x3d8>
   15c8c:	00000000 	nop
   15c90:	86190140 	lh	t9,320(s0)
   15c94:	24010007 	li	at,7
   15c98:	57210008 	bnel	t9,at,15cbc <func_800591EC+0x2c0>
   15c9c:	8602014c 	lh	v0,332(s0)
   15ca0:	0c000000 	jal	0 <func_800437F0>
   15ca4:	02002025 	move	a0,s0
   15ca8:	0c000000 	jal	0 <func_800437F0>
   15cac:	02002025 	move	a0,s0
   15cb0:	3c030000 	lui	v1,0x0
   15cb4:	24630000 	addiu	v1,v1,0
   15cb8:	8602014c 	lh	v0,332(s0)
   15cbc:	240affff 	li	t2,-1
   15cc0:	30490004 	andi	t1,v0,0x4
   15cc4:	55200004 	bnezl	t1,15cd8 <func_800591EC+0x2dc>
   15cc8:	304b0001 	andi	t3,v0,0x1
   15ccc:	a60a0156 	sh	t2,342(s0)
   15cd0:	8602014c 	lh	v0,332(s0)
   15cd4:	304b0001 	andi	t3,v0,0x1
   15cd8:	11600022 	beqz	t3,15d64 <func_800591EC+0x368>
   15cdc:	304c0004 	andi	t4,v0,0x4
   15ce0:	11800020 	beqz	t4,15d64 <func_800591EC+0x368>
   15ce4:	304d0400 	andi	t5,v0,0x400
   15ce8:	15a0001e 	bnez	t5,15d64 <func_800591EC+0x368>
   15cec:	304e0200 	andi	t6,v0,0x200
   15cf0:	11c00004 	beqz	t6,15d04 <func_800591EC+0x308>
   15cf4:	8faf0058 	lw	t7,88(sp)
   15cf8:	81f8014f 	lb	t8,335(t7)
   15cfc:	24010001 	li	at,1
   15d00:	17010018 	bne	t8,at,15d64 <func_800591EC+0x368>
   15d04:	0002cbc2 	srl	t9,v0,0xf
   15d08:	17200016 	bnez	t9,15d64 <func_800591EC+0x368>
   15d0c:	c7b200a4 	lwc1	$f18,164(sp)
   15d10:	3c01c6fa 	lui	at,0xc6fa
   15d14:	44818000 	mtc1	at,$f16
   15d18:	02002025 	move	a0,s0
   15d1c:	27a500a8 	addiu	a1,sp,168
   15d20:	46109032 	c.eq.s	$f18,$f16
   15d24:	00000000 	nop
   15d28:	4503000f 	bc1tl	15d68 <func_800591EC+0x36c>
   15d2c:	86050156 	lh	a1,342(s0)
   15d30:	0c000000 	jal	0 <func_800437F0>
   15d34:	8c660000 	lw	a2,0(v1)
   15d38:	00021c00 	sll	v1,v0,0x10
   15d3c:	00031c03 	sra	v1,v1,0x10
   15d40:	2401ffff 	li	at,-1
   15d44:	10610007 	beq	v1,at,15d64 <func_800591EC+0x368>
   15d48:	8fa900a8 	lw	t1,168(sp)
   15d4c:	a6090158 	sh	t1,344(s0)
   15d50:	8faa00a8 	lw	t2,168(sp)
   15d54:	24010032 	li	at,50
   15d58:	55410003 	bnel	t2,at,15d68 <func_800591EC+0x36c>
   15d5c:	86050156 	lh	a1,342(s0)
   15d60:	a6030156 	sh	v1,342(s0)
   15d64:	86050156 	lh	a1,342(s0)
   15d68:	2401ffff 	li	at,-1
   15d6c:	c7a40084 	lwc1	$f4,132(sp)
   15d70:	10a10018 	beq	a1,at,15dd4 <func_800591EC+0x3d8>
   15d74:	c7a600a4 	lwc1	$f6,164(sp)
   15d78:	46062001 	sub.s	$f0,$f4,$f6
   15d7c:	3c014000 	lui	at,0x4000
   15d80:	44814000 	mtc1	at,$f8
   15d84:	46000005 	abs.s	$f0,$f0
   15d88:	4608003c 	c.lt.s	$f0,$f8
   15d8c:	00000000 	nop
   15d90:	45000010 	bc1f	15dd4 <func_800591EC+0x3d8>
   15d94:	00000000 	nop
   15d98:	860b014c 	lh	t3,332(s0)
   15d9c:	8fad0058 	lw	t5,88(sp)
   15da0:	316c0200 	andi	t4,t3,0x200
   15da4:	51800006 	beqzl	t4,15dc0 <func_800591EC+0x3c4>
   15da8:	860f0158 	lh	t7,344(s0)
   15dac:	81ae014f 	lb	t6,335(t5)
   15db0:	24010001 	li	at,1
   15db4:	15c10007 	bne	t6,at,15dd4 <func_800591EC+0x3d8>
   15db8:	00000000 	nop
   15dbc:	860f0158 	lh	t7,344(s0)
   15dc0:	02002025 	move	a0,s0
   15dc4:	0c000000 	jal	0 <func_800437F0>
   15dc8:	a60f0146 	sh	t7,326(s0)
   15dcc:	2418ffff 	li	t8,-1
   15dd0:	a6180156 	sh	t8,342(s0)
   15dd4:	0c000000 	jal	0 <func_800437F0>
   15dd8:	02002025 	move	a0,s0
   15ddc:	0c000000 	jal	0 <func_800437F0>
   15de0:	02002025 	move	a0,s0
   15de4:	86190140 	lh	t9,320(s0)
   15de8:	24010001 	li	at,1
   15dec:	3c090000 	lui	t1,0x0
   15df0:	57210012 	bnel	t9,at,15e3c <func_800591EC+0x440>
   15df4:	860d014c 	lh	t5,332(s0)
   15df8:	8d290000 	lw	t1,0(t1)
   15dfc:	3c040000 	lui	a0,0x0
   15e00:	24840000 	addiu	a0,a0,0
   15e04:	852a02f4 	lh	t2,756(t1)
   15e08:	51400004 	beqzl	t2,15e1c <func_800591EC+0x420>
   15e0c:	8a0c0134 	lwl	t4,308(s0)
   15e10:	0c000000 	jal	0 <func_800437F0>
   15e14:	02002825 	move	a1,s0
   15e18:	8a0c0134 	lwl	t4,308(s0)
   15e1c:	8fa200e0 	lw	v0,224(sp)
   15e20:	9a0c0137 	lwr	t4,311(s0)
   15e24:	a84c0000 	swl	t4,0(v0)
   15e28:	b84c0003 	swr	t4,3(v0)
   15e2c:	960c0138 	lhu	t4,312(s0)
   15e30:	10000224 	b	166c4 <func_800591EC+0xcc8>
   15e34:	a44c0004 	sh	t4,4(v0)
   15e38:	860d014c 	lh	t5,332(s0)
   15e3c:	a600014a 	sh	zero,330(s0)
   15e40:	3c190000 	lui	t9,0x0
   15e44:	31aefbdf 	andi	t6,t5,0xfbdf
   15e48:	a60e014c 	sh	t6,332(s0)
   15e4c:	860f014c 	lh	t7,332(s0)
   15e50:	3c040000 	lui	a0,0x0
   15e54:	24840000 	addiu	a0,a0,0
   15e58:	35f80010 	ori	t8,t7,0x10
   15e5c:	a618014c 	sh	t8,332(s0)
   15e60:	8f390000 	lw	t9,0(t9)
   15e64:	872902f4 	lh	t1,756(t9)
   15e68:	1120000d 	beqz	t1,15ea0 <func_800591EC+0x4a4>
   15e6c:	00000000 	nop
   15e70:	86050142 	lh	a1,322(s0)
   15e74:	3c0b0000 	lui	t3,0x0
   15e78:	86060144 	lh	a2,324(s0)
   15e7c:	000550c0 	sll	t2,a1,0x3
   15e80:	016a5821 	addu	t3,t3,t2
   15e84:	8d6b0004 	lw	t3,4(t3)
   15e88:	000660c0 	sll	t4,a2,0x3
   15e8c:	860e014c 	lh	t6,332(s0)
   15e90:	016c6821 	addu	t5,t3,t4
   15e94:	85a70000 	lh	a3,0(t5)
   15e98:	0c000000 	jal	0 <func_800437F0>
   15e9c:	afae0010 	sw	t6,16(sp)
   15ea0:	3c020000 	lui	v0,0x0
   15ea4:	8c420000 	lw	v0,0(v0)
   15ea8:	284100c8 	slti	at,v0,200
   15eac:	50200014 	beqzl	at,15f00 <func_800591EC+0x504>
   15eb0:	8e0e0090 	lw	t6,144(s0)
   15eb4:	860f0142 	lh	t7,322(s0)
   15eb8:	3c190000 	lui	t9,0x0
   15ebc:	86090144 	lh	t1,324(s0)
   15ec0:	000fc0c0 	sll	t8,t7,0x3
   15ec4:	0338c821 	addu	t9,t9,t8
   15ec8:	8f390004 	lw	t9,4(t9)
   15ecc:	000950c0 	sll	t2,t1,0x3
   15ed0:	02002025 	move	a0,s0
   15ed4:	032a5821 	addu	t3,t9,t2
   15ed8:	856c0000 	lh	t4,0(t3)
   15edc:	3c190000 	lui	t9,0x0
   15ee0:	000c6880 	sll	t5,t4,0x2
   15ee4:	032dc821 	addu	t9,t9,t5
   15ee8:	8f390000 	lw	t9,0(t9)
   15eec:	0320f809 	jalr	t9
   15ef0:	00000000 	nop
   15ef4:	1000000e 	b	15f30 <func_800591EC+0x534>
   15ef8:	860f0140 	lh	t7,320(s0)
   15efc:	8e0e0090 	lw	t6,144(s0)
   15f00:	27a40098 	addiu	a0,sp,152
   15f04:	26050050 	addiu	a1,s0,80
   15f08:	51c00009 	beqzl	t6,15f30 <func_800591EC+0x534>
   15f0c:	860f0140 	lh	t7,320(s0)
   15f10:	0c000000 	jal	0 <func_800437F0>
   15f14:	2606005c 	addiu	a2,s0,92
   15f18:	02002025 	move	a0,s0
   15f1c:	27a50098 	addiu	a1,sp,152
   15f20:	24060000 	li	a2,0
   15f24:	0c000000 	jal	0 <func_800437F0>
   15f28:	00003825 	move	a3,zero
   15f2c:	860f0140 	lh	t7,320(s0)
   15f30:	24010007 	li	at,7
   15f34:	3c020000 	lui	v0,0x0
   15f38:	15e10038 	bne	t7,at,1601c <func_800591EC+0x620>
   15f3c:	00000000 	nop
   15f40:	8c42135c 	lw	v0,4956(v0)
   15f44:	3c030000 	lui	v1,0x0
   15f48:	24010003 	li	at,3
   15f4c:	10400009 	beqz	v0,15f74 <func_800591EC+0x578>
   15f50:	24630000 	addiu	v1,v1,0
   15f54:	10410007 	beq	v0,at,15f74 <func_800591EC+0x578>
   15f58:	3c020000 	lui	v0,0x0
   15f5c:	24420000 	addiu	v0,v0,0
   15f60:	ac400000 	sw	zero,0(v0)
   15f64:	0c000000 	jal	0 <func_800437F0>
   15f68:	84440002 	lh	a0,2(v0)
   15f6c:	1000002b 	b	1601c <func_800591EC+0x620>
   15f70:	00000000 	nop
   15f74:	8c620000 	lw	v0,0(v1)
   15f78:	5040000e 	beqzl	v0,15fb4 <func_800591EC+0x5b8>
   15f7c:	8e06008c 	lw	a2,140(s0)
   15f80:	86180164 	lh	t8,356(s0)
   15f84:	3c050000 	lui	a1,0x0
   15f88:	24a50000 	addiu	a1,a1,0
   15f8c:	17000008 	bnez	t8,15fb0 <func_800591EC+0x5b4>
   15f90:	2449ffff 	addiu	t1,v0,-1
   15f94:	240a3200 	li	t2,12800
   15f98:	acaa0000 	sw	t2,0(a1)
   15f9c:	ac690000 	sw	t1,0(v1)
   15fa0:	0c000000 	jal	0 <func_800437F0>
   15fa4:	84a40002 	lh	a0,2(a1)
   15fa8:	1000001c 	b	1601c <func_800591EC+0x620>
   15fac:	00000000 	nop
   15fb0:	8e06008c 	lw	a2,140(s0)
   15fb4:	3c0b0001 	lui	t3,0x1
   15fb8:	340cf200 	li	t4,0xf200
   15fbc:	01665821 	addu	t3,t3,a2
   15fc0:	916b241b 	lbu	t3,9243(t3)
   15fc4:	3c010000 	lui	at,0x0
   15fc8:	3c040000 	lui	a0,0x0
   15fcc:	51600007 	beqzl	t3,15fec <func_800591EC+0x5f0>
   15fd0:	90cd1d6c 	lbu	t5,7532(a2)
   15fd4:	ac2c0000 	sw	t4,0(at)
   15fd8:	0c000000 	jal	0 <func_800437F0>
   15fdc:	84840002 	lh	a0,2(a0)
   15fe0:	1000000e 	b	1601c <func_800591EC+0x620>
   15fe4:	00000000 	nop
   15fe8:	90cd1d6c 	lbu	t5,7532(a2)
   15fec:	24193200 	li	t9,12800
   15ff0:	3c010000 	lui	at,0x0
   15ff4:	11a00007 	beqz	t5,16014 <func_800591EC+0x618>
   15ff8:	3c040000 	lui	a0,0x0
   15ffc:	ac390000 	sw	t9,0(at)
   16000:	3c040000 	lui	a0,0x0
   16004:	0c000000 	jal	0 <func_800437F0>
   16008:	84840002 	lh	a0,2(a0)
   1600c:	10000003 	b	1601c <func_800591EC+0x620>
   16010:	00000000 	nop
   16014:	0c000000 	jal	0 <func_800437F0>
   16018:	84840002 	lh	a0,2(a0)
   1601c:	3c0e0000 	lui	t6,0x0
   16020:	8dce0000 	lw	t6,0(t6)
   16024:	3c040000 	lui	a0,0x0
   16028:	24840000 	addiu	a0,a0,0
   1602c:	85c202f4 	lh	v0,756(t6)
   16030:	3c050000 	lui	a1,0x0
   16034:	1040000a 	beqz	v0,16060 <func_800591EC+0x664>
   16038:	00000000 	nop
   1603c:	8e0f008c 	lw	t7,140(s0)
   16040:	3c060001 	lui	a2,0x1
   16044:	8ca50000 	lw	a1,0(a1)
   16048:	00cf3021 	addu	a2,a2,t7
   1604c:	0c000000 	jal	0 <func_800437F0>
   16050:	90c6241b 	lbu	a2,9243(a2)
   16054:	3c180000 	lui	t8,0x0
   16058:	8f180000 	lw	t8,0(t8)
   1605c:	870202f4 	lh	v0,756(t8)
   16060:	1040001f 	beqz	v0,160e0 <func_800591EC+0x6e4>
   16064:	00000000 	nop
   16068:	86060142 	lh	a2,322(s0)
   1606c:	2408000c 	li	t0,12
   16070:	86020144 	lh	v0,324(s0)
   16074:	00c80019 	multu	a2,t0
   16078:	3c190000 	lui	t9,0x0
   1607c:	000668c0 	sll	t5,a2,0x3
   16080:	032dc821 	addu	t9,t9,t5
   16084:	8f390004 	lw	t9,4(t9)
   16088:	000270c0 	sll	t6,v0,0x3
   1608c:	3c0a0000 	lui	t2,0x0
   16090:	afa20010 	sw	v0,16(sp)
   16094:	032e7821 	addu	t7,t9,t6
   16098:	85e30000 	lh	v1,0(t7)
   1609c:	00004812 	mflo	t1
   160a0:	254a0000 	addiu	t2,t2,0
   160a4:	012a2821 	addu	a1,t1,t2
   160a8:	00480019 	multu	v0,t0
   160ac:	3c090000 	lui	t1,0x0
   160b0:	25290000 	addiu	t1,t1,0
   160b4:	3c0c0000 	lui	t4,0x0
   160b8:	0003c0c0 	sll	t8,v1,0x3
   160bc:	03095021 	addu	t2,t8,t1
   160c0:	258c0000 	addiu	t4,t4,0
   160c4:	3c040000 	lui	a0,0x0
   160c8:	24840000 	addiu	a0,a0,0
   160cc:	afaa0014 	sw	t2,20(sp)
   160d0:	00005812 	mflo	t3
   160d4:	016c3821 	addu	a3,t3,t4
   160d8:	0c000000 	jal	0 <func_800437F0>
   160dc:	afa30018 	sw	v1,24(sp)
   160e0:	3c0b0000 	lui	t3,0x0
   160e4:	8d6b0000 	lw	t3,0(t3)
   160e8:	2401efff 	li	at,-4097
   160ec:	3c020000 	lui	v0,0x0
   160f0:	956c0050 	lhu	t4,80(t3)
   160f4:	24420000 	addiu	v0,v0,0
   160f8:	01816827 	nor	t5,t4,at
   160fc:	15a00012 	bnez	t5,16148 <func_800591EC+0x74c>
   16100:	00000000 	nop
   16104:	8c590000 	lw	t9,0(v0)
   16108:	3c040000 	lui	a0,0x0
   1610c:	24840000 	addiu	a0,a0,0
   16110:	3b2e0001 	xori	t6,t9,0x1
   16114:	11c00005 	beqz	t6,1612c <func_800591EC+0x730>
   16118:	ac4e0000 	sw	t6,0(v0)
   1611c:	0c000000 	jal	0 <func_800437F0>
   16120:	02002825 	move	a1,s0
   16124:	10000008 	b	16148 <func_800591EC+0x74c>
   16128:	00000000 	nop
   1612c:	8e06008c 	lw	a2,140(s0)
   16130:	90d81d6c 	lbu	t8,7532(a2)
   16134:	00c02025 	move	a0,a2
   16138:	13000003 	beqz	t8,16148 <func_800591EC+0x74c>
   1613c:	00000000 	nop
   16140:	0c000000 	jal	0 <func_800437F0>
   16144:	24c51d64 	addiu	a1,a2,7524
   16148:	3c020000 	lui	v0,0x0
   1614c:	24420000 	addiu	v0,v0,0
   16150:	8c490000 	lw	t1,0(v0)
   16154:	3c010000 	lui	at,0x0
   16158:	3c040000 	lui	a0,0x0
   1615c:	11200022 	beqz	t1,161e8 <func_800591EC+0x7ec>
   16160:	3c020000 	lui	v0,0x0
   16164:	c42a0000 	lwc1	$f10,0(at)
   16168:	8e0a008c 	lw	t2,140(s0)
   1616c:	24840000 	addiu	a0,a0,0
   16170:	02002825 	move	a1,s0
   16174:	0c000000 	jal	0 <func_800437F0>
   16178:	e54a00d0 	swc1	$f10,208(t2)
   1617c:	8e04008c 	lw	a0,140(s0)
   16180:	3c050000 	lui	a1,0x0
   16184:	3c060000 	lui	a2,0x0
   16188:	3c070000 	lui	a3,0x0
   1618c:	24e70000 	addiu	a3,a3,0
   16190:	24c60000 	addiu	a2,a2,0
   16194:	24a50000 	addiu	a1,a1,0
   16198:	0c000000 	jal	0 <func_800437F0>
   1619c:	248400b8 	addiu	a0,a0,184
   161a0:	3c0b0000 	lui	t3,0x0
   161a4:	8d6b0000 	lw	t3,0(t3)
   161a8:	3c040000 	lui	a0,0x0
   161ac:	856c02f4 	lh	t4,756(t3)
   161b0:	11800003 	beqz	t4,161c0 <func_800591EC+0x7c4>
   161b4:	00000000 	nop
   161b8:	0c000000 	jal	0 <func_800437F0>
   161bc:	24840000 	addiu	a0,a0,0
   161c0:	3c0d0000 	lui	t5,0x0
   161c4:	25ad0000 	addiu	t5,t5,0
   161c8:	89ae0000 	lwl	t6,0(t5)
   161cc:	8fa200e0 	lw	v0,224(sp)
   161d0:	99ae0003 	lwr	t6,3(t5)
   161d4:	a84e0000 	swl	t6,0(v0)
   161d8:	b84e0003 	swr	t6,3(v0)
   161dc:	95ae0004 	lhu	t6,4(t5)
   161e0:	10000138 	b	166c4 <func_800591EC+0xcc8>
   161e4:	a44e0004 	sh	t6,4(v0)
   161e8:	8c420000 	lw	v0,0(v0)
   161ec:	24010003 	li	at,3
   161f0:	02002025 	move	a0,s0
   161f4:	844f0194 	lh	t7,404(v0)
   161f8:	31f8fff7 	andi	t8,t7,0xfff7
   161fc:	a4580194 	sh	t8,404(v0)
   16200:	86090140 	lh	t1,320(s0)
   16204:	1521000a 	bne	t1,at,16230 <func_800591EC+0x834>
   16208:	00000000 	nop
   1620c:	8a0c0134 	lwl	t4,308(s0)
   16210:	8faa00e0 	lw	t2,224(sp)
   16214:	9a0c0137 	lwr	t4,311(s0)
   16218:	a94c0000 	swl	t4,0(t2)
   1621c:	b94c0003 	swr	t4,3(t2)
   16220:	960c0138 	lhu	t4,312(s0)
   16224:	a54c0004 	sh	t4,4(t2)
   16228:	10000126 	b	166c4 <func_800591EC+0xcc8>
   1622c:	8fa200e0 	lw	v0,224(sp)
   16230:	0c000000 	jal	0 <func_800437F0>
   16234:	27a5005c 	addiu	a1,sp,92
   16238:	10400038 	beqz	v0,1631c <func_800591EC+0x920>
   1623c:	afa200a8 	sw	v0,168(sp)
   16240:	860d0142 	lh	t5,322(s0)
   16244:	24010038 	li	at,56
   16248:	c7b0005c 	lwc1	$f16,92(sp)
   1624c:	51a10034 	beql	t5,at,16320 <func_800591EC+0x924>
   16250:	8e0c0050 	lw	t4,80(s0)
   16254:	c6120050 	lwc1	$f18,80(s0)
   16258:	c7a80060 	lwc1	$f8,96(sp)
   1625c:	27a40098 	addiu	a0,sp,152
   16260:	46109100 	add.s	$f4,$f18,$f16
   16264:	c7b00064 	lwc1	$f16,100(sp)
   16268:	27a500c8 	addiu	a1,sp,200
   1626c:	27a600d4 	addiu	a2,sp,212
   16270:	e7a400d4 	swc1	$f4,212(sp)
   16274:	c6060054 	lwc1	$f6,84(s0)
   16278:	46083280 	add.s	$f10,$f6,$f8
   1627c:	c7a80068 	lwc1	$f8,104(sp)
   16280:	e7aa00d8 	swc1	$f10,216(sp)
   16284:	c6120058 	lwc1	$f18,88(s0)
   16288:	46109100 	add.s	$f4,$f18,$f16
   1628c:	c7b0006c 	lwc1	$f16,108(sp)
   16290:	e7a400dc 	swc1	$f4,220(sp)
   16294:	c606005c 	lwc1	$f6,92(s0)
   16298:	46083280 	add.s	$f10,$f6,$f8
   1629c:	c7a80070 	lwc1	$f8,112(sp)
   162a0:	e7aa00c8 	swc1	$f10,200(sp)
   162a4:	c6120060 	lwc1	$f18,96(s0)
   162a8:	46109100 	add.s	$f4,$f18,$f16
   162ac:	e7a400cc 	swc1	$f4,204(sp)
   162b0:	c6060064 	lwc1	$f6,100(s0)
   162b4:	46083280 	add.s	$f10,$f6,$f8
   162b8:	0c000000 	jal	0 <func_800437F0>
   162bc:	e7aa00d0 	swc1	$f10,208(sp)
   162c0:	87b9009c 	lh	t9,156(sp)
   162c4:	87ae0074 	lh	t6,116(sp)
   162c8:	87af009e 	lh	t7,158(sp)
   162cc:	87b80076 	lh	t8,118(sp)
   162d0:	032e2821 	addu	a1,t9,t6
   162d4:	00052c00 	sll	a1,a1,0x10
   162d8:	01f83021 	addu	a2,t7,t8
   162dc:	00063400 	sll	a2,a2,0x10
   162e0:	00063403 	sra	a2,a2,0x10
   162e4:	00052c03 	sra	a1,a1,0x10
   162e8:	27a400bc 	addiu	a0,sp,188
   162ec:	0c000000 	jal	0 <func_800437F0>
   162f0:	8607015a 	lh	a3,346(s0)
   162f4:	87a90078 	lh	t1,120(sp)
   162f8:	3c010000 	lui	at,0x0
   162fc:	c4240000 	lwc1	$f4,0(at)
   16300:	44899000 	mtc1	t1,$f18
   16304:	c60800fc 	lwc1	$f8,252(s0)
   16308:	46809420 	cvt.s.w	$f16,$f18
   1630c:	46048182 	mul.s	$f6,$f16,$f4
   16310:	46064280 	add.s	$f10,$f8,$f6
   16314:	1000001a 	b	16380 <func_800591EC+0x984>
   16318:	e7aa00b8 	swc1	$f10,184(sp)
   1631c:	8e0c0050 	lw	t4,80(s0)
   16320:	27aa00d4 	addiu	t2,sp,212
   16324:	27ad00c8 	addiu	t5,sp,200
   16328:	ad4c0000 	sw	t4,0(t2)
   1632c:	8e0b0054 	lw	t3,84(s0)
   16330:	27a40098 	addiu	a0,sp,152
   16334:	27a500c8 	addiu	a1,sp,200
   16338:	ad4b0004 	sw	t3,4(t2)
   1633c:	8e0c0058 	lw	t4,88(s0)
   16340:	27a600d4 	addiu	a2,sp,212
   16344:	ad4c0008 	sw	t4,8(t2)
   16348:	8e0e005c 	lw	t6,92(s0)
   1634c:	adae0000 	sw	t6,0(t5)
   16350:	8e190060 	lw	t9,96(s0)
   16354:	adb90004 	sw	t9,4(t5)
   16358:	8e0e0064 	lw	t6,100(s0)
   1635c:	0c000000 	jal	0 <func_800437F0>
   16360:	adae0008 	sw	t6,8(t5)
   16364:	27a400bc 	addiu	a0,sp,188
   16368:	87a5009c 	lh	a1,156(sp)
   1636c:	87a6009e 	lh	a2,158(sp)
   16370:	0c000000 	jal	0 <func_800437F0>
   16374:	8607015a 	lh	a3,346(s0)
   16378:	c61200fc 	lwc1	$f18,252(s0)
   1637c:	e7b200b8 	swc1	$f18,184(sp)
   16380:	8602015c 	lh	v0,348(s0)
   16384:	27ac00bc 	addiu	t4,sp,188
   16388:	27ae0068 	addiu	t6,sp,104
   1638c:	304f0004 	andi	t7,v0,0x4
   16390:	11e0000a 	beqz	t7,163bc <func_800591EC+0x9c0>
   16394:	3058fffb 	andi	t8,v0,0xfffb
   16398:	8e0b0068 	lw	t3,104(s0)
   1639c:	a618015c 	sh	t8,348(s0)
   163a0:	27a900bc 	addiu	t1,sp,188
   163a4:	ad2b0000 	sw	t3,0(t1)
   163a8:	8e0a006c 	lw	t2,108(s0)
   163ac:	ad2a0004 	sw	t2,4(t1)
   163b0:	8e0b0070 	lw	t3,112(s0)
   163b4:	10000007 	b	163d4 <func_800591EC+0x9d8>
   163b8:	ad2b0008 	sw	t3,8(t1)
   163bc:	8d990000 	lw	t9,0(t4)
   163c0:	ae190068 	sw	t9,104(s0)
   163c4:	8d8d0004 	lw	t5,4(t4)
   163c8:	ae0d006c 	sw	t5,108(s0)
   163cc:	8d990008 	lw	t9,8(t4)
   163d0:	ae190070 	sw	t9,112(s0)
   163d4:	8dd80000 	lw	t8,0(t6)
   163d8:	02002025 	move	a0,s0
   163dc:	ae180080 	sw	t8,128(s0)
   163e0:	8dcf0004 	lw	t7,4(t6)
   163e4:	ae0f0084 	sw	t7,132(s0)
   163e8:	8dd80008 	lw	t8,8(t6)
   163ec:	0c000000 	jal	0 <func_800437F0>
   163f0:	ae180088 	sw	t8,136(s0)
   163f4:	8e06008c 	lw	a2,140(s0)
   163f8:	24010051 	li	at,81
   163fc:	84c900a4 	lh	t1,164(a2)
   16400:	24c400b8 	addiu	a0,a2,184
   16404:	1521000d 	bne	t1,at,1643c <func_800591EC+0xa40>
   16408:	3c01426c 	lui	at,0x426c
   1640c:	44812000 	mtc1	at,$f4
   16410:	c61000fc 	lwc1	$f16,252(s0)
   16414:	3c053f4a 	lui	a1,0x3f4a
   16418:	34a53d71 	ori	a1,a1,0x3d71
   1641c:	4604803c 	c.lt.s	$f16,$f4
   16420:	00000000 	nop
   16424:	45000005 	bc1f	1643c <func_800591EC+0xa40>
   16428:	00000000 	nop
   1642c:	0c000000 	jal	0 <func_800437F0>
   16430:	24c400b8 	addiu	a0,a2,184
   16434:	10000004 	b	16448 <func_800591EC+0xa4c>
   16438:	c7a800b8 	lwc1	$f8,184(sp)
   1643c:	0c000000 	jal	0 <func_800437F0>
   16440:	3c053f80 	lui	a1,0x3f80
   16444:	c7a800b8 	lwc1	$f8,184(sp)
   16448:	8e0a008c 	lw	t2,140(s0)
   1644c:	27a500c8 	addiu	a1,sp,200
   16450:	27a600d4 	addiu	a2,sp,212
   16454:	e54800d0 	swc1	$f8,208(t2)
   16458:	8e04008c 	lw	a0,140(s0)
   1645c:	27a700bc 	addiu	a3,sp,188
   16460:	0c000000 	jal	0 <func_800437F0>
   16464:	248400b8 	addiu	a0,a0,184
   16468:	87ab009c 	lh	t3,156(sp)
   1646c:	3c030000 	lui	v1,0x0
   16470:	24630000 	addiu	v1,v1,0
   16474:	a60b013a 	sh	t3,314(s0)
   16478:	87ac009e 	lh	t4,158(sp)
   1647c:	a600013e 	sh	zero,318(s0)
   16480:	3c0f0000 	lui	t7,0x0
   16484:	a60c013c 	sh	t4,316(s0)
   16488:	8c6d0000 	lw	t5,0(v1)
   1648c:	87b9009c 	lh	t9,156(sp)
   16490:	15a00005 	bnez	t5,164a8 <func_800591EC+0xaac>
   16494:	00000000 	nop
   16498:	a6190134 	sh	t9,308(s0)
   1649c:	87ae009e 	lh	t6,158(sp)
   164a0:	a6000138 	sh	zero,312(s0)
   164a4:	a60e0136 	sh	t6,310(s0)
   164a8:	8def0000 	lw	t7,0(t7)
   164ac:	85f802f6 	lh	t8,758(t7)
   164b0:	53000029 	beqzl	t8,16558 <func_800591EC+0xb5c>
   164b4:	86090160 	lh	t1,352(s0)
   164b8:	86060134 	lh	a2,308(s0)
   164bc:	3c010000 	lui	at,0x0
   164c0:	c4200000 	lwc1	$f0,0(at)
   164c4:	44863000 	mtc1	a2,$f6
   164c8:	3c040000 	lui	a0,0x0
   164cc:	24840000 	addiu	a0,a0,0
   164d0:	468032a0 	cvt.s.w	$f10,$f6
   164d4:	8c650000 	lw	a1,0(v1)
   164d8:	46005482 	mul.s	$f18,$f10,$f0
   164dc:	46009421 	cvt.d.s	$f16,$f18
   164e0:	f7b00010 	sdc1	$f16,16(sp)
   164e4:	86020136 	lh	v0,310(s0)
   164e8:	44822000 	mtc1	v0,$f4
   164ec:	afa20018 	sw	v0,24(sp)
   164f0:	46802220 	cvt.s.w	$f8,$f4
   164f4:	46004182 	mul.s	$f6,$f8,$f0
   164f8:	460032a1 	cvt.d.s	$f10,$f6
   164fc:	0c000000 	jal	0 <func_800437F0>
   16500:	f7aa0020 	sdc1	$f10,32(sp)
   16504:	8606013a 	lh	a2,314(s0)
   16508:	3c010000 	lui	at,0x0
   1650c:	c4200000 	lwc1	$f0,0(at)
   16510:	44869000 	mtc1	a2,$f18
   16514:	3c040000 	lui	a0,0x0
   16518:	3c050000 	lui	a1,0x0
   1651c:	46809420 	cvt.s.w	$f16,$f18
   16520:	8ca50000 	lw	a1,0(a1)
   16524:	24840000 	addiu	a0,a0,0
   16528:	46008102 	mul.s	$f4,$f16,$f0
   1652c:	46002221 	cvt.d.s	$f8,$f4
   16530:	f7a80010 	sdc1	$f8,16(sp)
   16534:	8602013c 	lh	v0,316(s0)
   16538:	44823000 	mtc1	v0,$f6
   1653c:	afa20018 	sw	v0,24(sp)
   16540:	468032a0 	cvt.s.w	$f10,$f6
   16544:	46005482 	mul.s	$f18,$f10,$f0
   16548:	46009421 	cvt.d.s	$f16,$f18
   1654c:	0c000000 	jal	0 <func_800437F0>
   16550:	f7b00020 	sdc1	$f16,32(sp)
   16554:	86090160 	lh	t1,352(s0)
   16558:	2401ffff 	li	at,-1
   1655c:	3c0a0000 	lui	t2,0x0
   16560:	11210008 	beq	t1,at,16584 <func_800591EC+0xb88>
   16564:	3c0d0000 	lui	t5,0x0
   16568:	8d4a0000 	lw	t2,0(t2)
   1656c:	2401feff 	li	at,-257
   16570:	954b0020 	lhu	t3,32(t2)
   16574:	01616027 	nor	t4,t3,at
   16578:	15800002 	bnez	t4,16584 <func_800591EC+0xb88>
   1657c:	00000000 	nop
   16580:	a6000160 	sh	zero,352(s0)
   16584:	8dad0000 	lw	t5,0(t5)
   16588:	85b902f4 	lh	t9,756(t5)
   1658c:	53200046 	beqzl	t9,166a8 <func_800591EC+0xcac>
   16590:	8a0b0134 	lwl	t3,308(s0)
   16594:	c6060054 	lwc1	$f6,84(s0)
   16598:	c6040050 	lwc1	$f4,80(s0)
   1659c:	3c040000 	lui	a0,0x0
   165a0:	460032a1 	cvt.d.s	$f10,$f6
   165a4:	46002221 	cvt.d.s	$f8,$f4
   165a8:	f7aa0010 	sdc1	$f10,16(sp)
   165ac:	c6120058 	lwc1	$f18,88(s0)
   165b0:	44074000 	mfc1	a3,$f8
   165b4:	44064800 	mfc1	a2,$f9
   165b8:	46009421 	cvt.d.s	$f16,$f18
   165bc:	24840000 	addiu	a0,a0,0
   165c0:	f7b00018 	sdc1	$f16,24(sp)
   165c4:	c604005c 	lwc1	$f4,92(s0)
   165c8:	46002221 	cvt.d.s	$f8,$f4
   165cc:	f7a80020 	sdc1	$f8,32(sp)
   165d0:	c6060060 	lwc1	$f6,96(s0)
   165d4:	460032a1 	cvt.d.s	$f10,$f6
   165d8:	f7aa0028 	sdc1	$f10,40(sp)
   165dc:	c6120064 	lwc1	$f18,100(s0)
   165e0:	46009421 	cvt.d.s	$f16,$f18
   165e4:	0c000000 	jal	0 <func_800437F0>
   165e8:	f7b00030 	sdc1	$f16,48(sp)
   165ec:	87ae009c 	lh	t6,156(sp)
   165f0:	c7a40098 	lwc1	$f4,152(sp)
   165f4:	87af009e 	lh	t7,158(sp)
   165f8:	448e3000 	mtc1	t6,$f6
   165fc:	46002221 	cvt.d.s	$f8,$f4
   16600:	3c010000 	lui	at,0x0
   16604:	468032a0 	cvt.s.w	$f10,$f6
   16608:	44074000 	mfc1	a3,$f8
   1660c:	448f4000 	mtc1	t7,$f8
   16610:	c4320000 	lwc1	$f18,0(at)
   16614:	3c010000 	lui	at,0x0
   16618:	468041a0 	cvt.s.w	$f6,$f8
   1661c:	46125402 	mul.s	$f16,$f10,$f18
   16620:	c42a0000 	lwc1	$f10,0(at)
   16624:	afae0010 	sw	t6,16(sp)
   16628:	afaf0020 	sw	t7,32(sp)
   1662c:	44064800 	mfc1	a2,$f9
   16630:	460a3482 	mul.s	$f18,$f6,$f10
   16634:	3c040000 	lui	a0,0x0
   16638:	46008121 	cvt.d.s	$f4,$f16
   1663c:	24840000 	addiu	a0,a0,0
   16640:	f7a40018 	sdc1	$f4,24(sp)
   16644:	46009421 	cvt.d.s	$f16,$f18
   16648:	f7b00028 	sdc1	$f16,40(sp)
   1664c:	c60400fc 	lwc1	$f4,252(s0)
   16650:	46002221 	cvt.d.s	$f8,$f4
   16654:	0c000000 	jal	0 <func_800437F0>
   16658:	f7a80030 	sdc1	$f8,48(sp)
   1665c:	8e180090 	lw	t8,144(s0)
   16660:	3c040000 	lui	a0,0x0
   16664:	24840000 	addiu	a0,a0,0
   16668:	1300000e 	beqz	t8,166a4 <func_800591EC+0xca8>
   1666c:	c7a60080 	lwc1	$f6,128(sp)
   16670:	c7b20084 	lwc1	$f18,132(sp)
   16674:	c7a40088 	lwc1	$f4,136(sp)
   16678:	460032a1 	cvt.d.s	$f10,$f6
   1667c:	46009421 	cvt.d.s	$f16,$f18
   16680:	46002221 	cvt.d.s	$f8,$f4
   16684:	f7b00010 	sdc1	$f16,16(sp)
   16688:	f7a80018 	sdc1	$f8,24(sp)
   1668c:	c60600dc 	lwc1	$f6,220(s0)
   16690:	44075000 	mfc1	a3,$f10
   16694:	44065800 	mfc1	a2,$f11
   16698:	460032a1 	cvt.d.s	$f10,$f6
   1669c:	0c000000 	jal	0 <func_800437F0>
   166a0:	f7aa0020 	sdc1	$f10,32(sp)
   166a4:	8a0b0134 	lwl	t3,308(s0)
   166a8:	8fa900e0 	lw	t1,224(sp)
   166ac:	9a0b0137 	lwr	t3,311(s0)
   166b0:	a92b0000 	swl	t3,0(t1)
   166b4:	b92b0003 	swr	t3,3(t1)
   166b8:	960b0138 	lhu	t3,312(s0)
   166bc:	a52b0004 	sh	t3,4(t1)
   166c0:	8fa200e0 	lw	v0,224(sp)
   166c4:	8fbf0044 	lw	ra,68(sp)
   166c8:	8fb00040 	lw	s0,64(sp)
   166cc:	27bd00e0 	addiu	sp,sp,224
   166d0:	03e00008 	jr	ra
   166d4:	00000000 	nop

000166d8 <func_80059EC8>:
   166d8:	27bdffd8 	addiu	sp,sp,-40
   166dc:	afbf001c 	sw	ra,28(sp)
   166e0:	afb10018 	sw	s1,24(sp)
   166e4:	afb00014 	sw	s0,20(sp)
   166e8:	8c87008c 	lw	a3,140(a0)
   166ec:	00808025 	move	s0,a0
   166f0:	24060007 	li	a2,7
   166f4:	8cee0790 	lw	t6,1936(a3)
   166f8:	afae0024 	sw	t6,36(sp)
   166fc:	848f0160 	lh	t7,352(a0)
   16700:	8cf11c44 	lw	s1,7236(a3)
   16704:	00e02025 	move	a0,a3
   16708:	55e00048 	bnezl	t7,1682c <func_80059EC8+0x154>
   1670c:	8fbf001c 	lw	ra,28(sp)
   16710:	0c000000 	jal	0 <func_800437F0>
   16714:	86050162 	lh	a1,354(s0)
   16718:	86030162 	lh	v1,354(s0)
   1671c:	54600019 	bnezl	v1,16784 <func_80059EC8+0xac>
   16720:	860c014e 	lh	t4,334(s0)
   16724:	86180168 	lh	t8,360(s0)
   16728:	3c01dfff 	lui	at,0xdfff
   1672c:	3421ffff 	ori	at,at,0xffff
   16730:	53000014 	beqzl	t8,16784 <func_80059EC8+0xac>
   16734:	860c014e 	lh	t4,334(s0)
   16738:	8e39067c 	lw	t9,1660(s1)
   1673c:	92290444 	lbu	t1,1092(s1)
   16740:	a6200110 	sh	zero,272(s1)
   16744:	03214024 	and	t0,t9,at
   16748:	11200008 	beqz	t1,1676c <func_80059EC8+0x94>
   1674c:	ae28067c 	sw	t0,1660(s1)
   16750:	8e04008c 	lw	a0,140(s0)
   16754:	02202825 	move	a1,s1
   16758:	0c000000 	jal	0 <func_800437F0>
   1675c:	24060007 	li	a2,7
   16760:	3c040000 	lui	a0,0x0
   16764:	0c000000 	jal	0 <func_800437F0>
   16768:	24840b38 	addiu	a0,a0,2872
   1676c:	8fa20024 	lw	v0,36(sp)
   16770:	844a014c 	lh	t2,332(v0)
   16774:	354b0008 	ori	t3,t2,0x8
   16778:	a44b014c 	sh	t3,332(v0)
   1677c:	86030162 	lh	v1,354(s0)
   16780:	860c014e 	lh	t4,334(s0)
   16784:	8e07008c 	lw	a3,140(s0)
   16788:	86040164 	lh	a0,356(s0)
   1678c:	000c6880 	sll	t5,t4,0x2
   16790:	00ed7021 	addu	t6,a3,t5
   16794:	8dc20790 	lw	v0,1936(t6)
   16798:	3c010001 	lui	at,0x1
   1679c:	844f0162 	lh	t7,354(v0)
   167a0:	548f0006 	bnel	a0,t7,167bc <func_80059EC8+0xe4>
   167a4:	0003c080 	sll	t8,v1,0x2
   167a8:	a4430162 	sh	v1,354(v0)
   167ac:	86040164 	lh	a0,356(s0)
   167b0:	86030162 	lh	v1,354(s0)
   167b4:	8e07008c 	lw	a3,140(s0)
   167b8:	0003c080 	sll	t8,v1,0x2
   167bc:	00f8c821 	addu	t9,a3,t8
   167c0:	8f220790 	lw	v0,1936(t9)
   167c4:	240fffff 	li	t7,-1
   167c8:	8448014e 	lh	t0,334(v0)
   167cc:	54880009 	bnel	a0,t0,167f4 <func_80059EC8+0x11c>
   167d0:	844d0164 	lh	t5,356(v0)
   167d4:	8609014e 	lh	t1,334(s0)
   167d8:	a449014e 	sh	t1,334(v0)
   167dc:	860a0162 	lh	t2,354(s0)
   167e0:	8e07008c 	lw	a3,140(s0)
   167e4:	000a5880 	sll	t3,t2,0x2
   167e8:	00eb6021 	addu	t4,a3,t3
   167ec:	8d820790 	lw	v0,1936(t4)
   167f0:	844d0164 	lh	t5,356(v0)
   167f4:	55a00004 	bnezl	t5,16808 <func_80059EC8+0x130>
   167f8:	a6000162 	sh	zero,354(s0)
   167fc:	a440015e 	sh	zero,350(v0)
   16800:	8e07008c 	lw	a3,140(s0)
   16804:	a6000162 	sh	zero,354(s0)
   16808:	860e0162 	lh	t6,354(s0)
   1680c:	a60f0160 	sh	t7,352(s0)
   16810:	00270821 	addu	at,at,a3
   16814:	a60e014e 	sh	t6,334(s0)
   16818:	a0200b05 	sb	zero,2821(at)
   1681c:	86050164 	lh	a1,356(s0)
   16820:	0c000000 	jal	0 <func_800437F0>
   16824:	8e04008c 	lw	a0,140(s0)
   16828:	8fbf001c 	lw	ra,28(sp)
   1682c:	8fb00014 	lw	s0,20(sp)
   16830:	8fb10018 	lw	s1,24(sp)
   16834:	03e00008 	jr	ra
   16838:	27bd0028 	addiu	sp,sp,40

0001683c <func_8005A02C>:
   1683c:	848e014c 	lh	t6,332(a0)
   16840:	24020001 	li	v0,1
   16844:	35cf000c 	ori	t7,t6,0xc
   16848:	a48f014c 	sh	t7,332(a0)
   1684c:	8498014c 	lh	t8,332(a0)
   16850:	3319eff7 	andi	t9,t8,0xeff7
   16854:	03e00008 	jr	ra
   16858:	a499014c 	sh	t9,332(a0)

0001685c <Camera_ChangeMode>:
   1685c:	27bdffe8 	addiu	sp,sp,-24
   16860:	3c0e0000 	lui	t6,0x0
   16864:	8dce0000 	lw	t6,0(t6)
   16868:	afbf0014 	sw	ra,20(sp)
   1686c:	afa5001c 	sw	a1,28(sp)
   16870:	afa60020 	sw	a2,32(sp)
   16874:	85cf03c6 	lh	t7,966(t6)
   16878:	00803825 	move	a3,a0
   1687c:	3c040000 	lui	a0,0x0
   16880:	11e0000d 	beqz	t7,168b8 <Camera_ChangeMode+0x5c>
   16884:	24840000 	addiu	a0,a0,0
   16888:	87b9001e 	lh	t9,30(sp)
   1688c:	8cf8008c 	lw	t8,140(a3)
   16890:	3c090000 	lui	t1,0x0
   16894:	00194080 	sll	t0,t9,0x2
   16898:	01194023 	subu	t0,t0,t9
   1689c:	00084080 	sll	t0,t0,0x2
   168a0:	25290000 	addiu	t1,t1,0
   168a4:	8f05009c 	lw	a1,156(t8)
   168a8:	afa70018 	sw	a3,24(sp)
   168ac:	0c000000 	jal	0 <func_800437F0>
   168b0:	01093021 	addu	a2,t0,t1
   168b4:	8fa70018 	lw	a3,24(sp)
   168b8:	84ea014c 	lh	t2,332(a3)
   168bc:	93ac0023 	lbu	t4,35(sp)
   168c0:	3c190000 	lui	t9,0x0
   168c4:	314b0020 	andi	t3,t2,0x20
   168c8:	11600008 	beqz	t3,168ec <Camera_ChangeMode+0x90>
   168cc:	3c013fff 	lui	at,0x3fff
   168d0:	55800007 	bnezl	t4,168f0 <Camera_ChangeMode+0x94>
   168d4:	84ef0142 	lh	t7,322(a3)
   168d8:	84ed014a 	lh	t5,330(a3)
   168dc:	2402ffff 	li	v0,-1
   168e0:	35ae0020 	ori	t6,t5,0x20
   168e4:	100000d7 	b	16c44 <L8005A330+0x104>
   168e8:	a4ee014a 	sh	t6,330(a3)
   168ec:	84ef0142 	lh	t7,322(a3)
   168f0:	87a9001e 	lh	t1,30(sp)
   168f4:	3421ffff 	ori	at,at,0xffff
   168f8:	000fc0c0 	sll	t8,t7,0x3
   168fc:	0338c821 	addu	t9,t9,t8
   16900:	8f390000 	lw	t9,0(t9)
   16904:	240a0001 	li	t2,1
   16908:	012a5804 	sllv	t3,t2,t1
   1690c:	03214024 	and	t0,t9,at
   16910:	010b6024 	and	t4,t0,t3
   16914:	15800030 	bnez	t4,169d8 <Camera_ChangeMode+0x17c>
   16918:	87ae001e 	lh	t6,30(sp)
   1691c:	24010006 	li	at,6
   16920:	15210007 	bne	t1,at,16940 <Camera_ChangeMode+0xe4>
   16924:	3c040000 	lui	a0,0x0
   16928:	24840000 	addiu	a0,a0,0
   1692c:	0c000000 	jal	0 <func_800437F0>
   16930:	afa70018 	sw	a3,24(sp)
   16934:	0c000000 	jal	0 <func_800437F0>
   16938:	24044806 	li	a0,18438
   1693c:	8fa70018 	lw	a3,24(sp)
   16940:	84ed0144 	lh	t5,324(a3)
   16944:	3c040000 	lui	a0,0x0
   16948:	24840000 	addiu	a0,a0,0
   1694c:	11a0001a 	beqz	t5,169b8 <Camera_ChangeMode+0x15c>
   16950:	3c180000 	lui	t8,0x0
   16954:	84ee0142 	lh	t6,322(a3)
   16958:	87b9001e 	lh	t9,30(sp)
   1695c:	3c080000 	lui	t0,0x0
   16960:	000e7880 	sll	t7,t6,0x2
   16964:	00195080 	sll	t2,t9,0x2
   16968:	01ee7823 	subu	t7,t7,t6
   1696c:	01595023 	subu	t2,t2,t9
   16970:	000a5080 	sll	t2,t2,0x2
   16974:	000f7880 	sll	t7,t7,0x2
   16978:	25080000 	addiu	t0,t0,0
   1697c:	27180000 	addiu	t8,t8,0
   16980:	01f82821 	addu	a1,t7,t8
   16984:	01483021 	addu	a2,t2,t0
   16988:	0c000000 	jal	0 <func_800437F0>
   1698c:	afa70018 	sw	a3,24(sp)
   16990:	8fa40018 	lw	a0,24(sp)
   16994:	a4800144 	sh	zero,324(a0)
   16998:	0c000000 	jal	0 <func_800437F0>
   1699c:	84850144 	lh	a1,324(a0)
   169a0:	0c000000 	jal	0 <func_800437F0>
   169a4:	8fa40018 	lw	a0,24(sp)
   169a8:	87a2001e 	lh	v0,30(sp)
   169ac:	3c01c000 	lui	at,0xc000
   169b0:	100000a4 	b	16c44 <L8005A330+0x104>
   169b4:	00411025 	or	v0,v0,at
   169b8:	84eb014a 	lh	t3,330(a3)
   169bc:	00001025 	move	v0,zero
   169c0:	356c0020 	ori	t4,t3,0x20
   169c4:	a4ec014a 	sh	t4,330(a3)
   169c8:	84e9014a 	lh	t1,330(a3)
   169cc:	352d0002 	ori	t5,t1,0x2
   169d0:	1000009c 	b	16c44 <L8005A330+0x104>
   169d4:	a4ed014a 	sh	t5,330(a3)
   169d8:	84ef0144 	lh	t7,324(a3)
   169dc:	93b80023 	lbu	t8,35(sp)
   169e0:	55cf000c 	bnel	t6,t7,16a14 <Camera_ChangeMode+0x1b8>
   169e4:	84ec014a 	lh	t4,330(a3)
   169e8:	5700000a 	bnezl	t8,16a14 <Camera_ChangeMode+0x1b8>
   169ec:	84ec014a 	lh	t4,330(a3)
   169f0:	84f9014a 	lh	t9,330(a3)
   169f4:	2402ffff 	li	v0,-1
   169f8:	372a0020 	ori	t2,t9,0x20
   169fc:	a4ea014a 	sh	t2,330(a3)
   16a00:	84e8014a 	lh	t0,330(a3)
   16a04:	350b0002 	ori	t3,t0,0x2
   16a08:	1000008e 	b	16c44 <L8005A330+0x104>
   16a0c:	a4eb014a 	sh	t3,330(a3)
   16a10:	84ec014a 	lh	t4,330(a3)
   16a14:	00e02025 	move	a0,a3
   16a18:	35890020 	ori	t1,t4,0x20
   16a1c:	a4e9014a 	sh	t1,330(a3)
   16a20:	84ed014a 	lh	t5,330(a3)
   16a24:	35ae0002 	ori	t6,t5,0x2
   16a28:	a4ee014a 	sh	t6,330(a3)
   16a2c:	afa70018 	sw	a3,24(sp)
   16a30:	0c000000 	jal	0 <func_800437F0>
   16a34:	87a5001e 	lh	a1,30(sp)
   16a38:	87af001e 	lh	t7,30(sp)
   16a3c:	8fa70018 	lw	a3,24(sp)
   16a40:	00001025 	move	v0,zero
   16a44:	25f8ffff 	addiu	t8,t7,-1
   16a48:	2f010013 	sltiu	at,t8,19
   16a4c:	10200014 	beqz	at,16aa0 <L8005A290>
   16a50:	0018c080 	sll	t8,t8,0x2
   16a54:	3c010000 	lui	at,0x0
   16a58:	00380821 	addu	at,at,t8
   16a5c:	8c380000 	lw	t8,0(at)
   16a60:	03000008 	jr	t8
   16a64:	00000000 	nop

00016a68 <L8005A258>:
   16a68:	1000000d 	b	16aa0 <L8005A290>
   16a6c:	24020020 	li	v0,32

00016a70 <L8005A260>:
   16a70:	1000000b 	b	16aa0 <L8005A290>
   16a74:	24020004 	li	v0,4

00016a78 <L8005A268>:
   16a78:	8ce300a8 	lw	v1,168(a3)
   16a7c:	50600009 	beqzl	v1,16aa4 <L8005A290+0x4>
   16a80:	94ea0144 	lhu	t2,324(a3)
   16a84:	84790000 	lh	t9,0(v1)
   16a88:	24010032 	li	at,50
   16a8c:	53210005 	beql	t9,at,16aa4 <L8005A290+0x4>
   16a90:	94ea0144 	lhu	t2,324(a3)
   16a94:	10000002 	b	16aa0 <L8005A290>
   16a98:	24020008 	li	v0,8

00016a9c <L8005A28C>:
   16a9c:	24020002 	li	v0,2

00016aa0 <L8005A290>:
   16aa0:	94ea0144 	lhu	t2,324(a3)
   16aa4:	2d410014 	sltiu	at,t2,20
   16aa8:	10200025 	beqz	at,16b40 <L8005A330>
   16aac:	000a5080 	sll	t2,t2,0x2
   16ab0:	3c010000 	lui	at,0x0
   16ab4:	002a0821 	addu	at,at,t2
   16ab8:	8c2a0000 	lw	t2,0(at)
   16abc:	01400008 	jr	t2
   16ac0:	00000000 	nop

00016ac4 <L8005A2B4>:
   16ac4:	30480020 	andi	t0,v0,0x20
   16ac8:	1100001d 	beqz	t0,16b40 <L8005A330>
   16acc:	240b000a 	li	t3,10
   16ad0:	1000001b 	b	16b40 <L8005A330>
   16ad4:	a4eb015e 	sh	t3,350(a3)

00016ad8 <L8005A2C8>:
   16ad8:	304c0010 	andi	t4,v0,0x10
   16adc:	11800002 	beqz	t4,16ae8 <L8005A2C8+0x10>
   16ae0:	2409000a 	li	t1,10
   16ae4:	a4e9015e 	sh	t1,350(a3)
   16ae8:	10000015 	b	16b40 <L8005A330>
   16aec:	34420001 	ori	v0,v0,0x1

00016af0 <L8005A2E0>:
   16af0:	10000013 	b	16b40 <L8005A330>
   16af4:	34420001 	ori	v0,v0,0x1

00016af8 <L8005A2E8>:
   16af8:	304d0008 	andi	t5,v0,0x8
   16afc:	11a00002 	beqz	t5,16b08 <L8005A2E8+0x10>
   16b00:	240e000a 	li	t6,10
   16b04:	a4ee015e 	sh	t6,350(a3)
   16b08:	1000000d 	b	16b40 <L8005A330>
   16b0c:	34420001 	ori	v0,v0,0x1

00016b10 <L8005A300>:
   16b10:	304f0004 	andi	t7,v0,0x4
   16b14:	11e00002 	beqz	t7,16b20 <L8005A300+0x10>
   16b18:	2418000a 	li	t8,10
   16b1c:	a4f8015e 	sh	t8,350(a3)
   16b20:	10000007 	b	16b40 <L8005A330>
   16b24:	34420001 	ori	v0,v0,0x1

00016b28 <L8005A318>:
   16b28:	10000005 	b	16b40 <L8005A330>
   16b2c:	34420001 	ori	v0,v0,0x1

00016b30 <L8005A320>:
   16b30:	30590010 	andi	t9,v0,0x10
   16b34:	13200002 	beqz	t9,16b40 <L8005A330>
   16b38:	240a000a 	li	t2,10
   16b3c:	a4ea015e 	sh	t2,350(a3)

00016b40 <L8005A330>:
   16b40:	2401ffef 	li	at,-17
   16b44:	00411024 	and	v0,v0,at
   16b48:	3c010000 	lui	at,0x0
   16b4c:	ac220000 	sw	v0,0(at)
   16b50:	84e80140 	lh	t0,320(a3)
   16b54:	24010007 	li	at,7
   16b58:	24030001 	li	v1,1
   16b5c:	55010031 	bnel	t0,at,16c24 <L8005A330+0xe4>
   16b60:	00e02025 	move	a0,a3
   16b64:	1043000d 	beq	v0,v1,16b9c <L8005A330+0x5c>
   16b68:	3c010000 	lui	at,0x0
   16b6c:	24010002 	li	at,2
   16b70:	10410010 	beq	v0,at,16bb4 <L8005A330+0x74>
   16b74:	24010004 	li	at,4
   16b78:	10410020 	beq	v0,at,16bfc <L8005A330+0xbc>
   16b7c:	24044837 	li	a0,18487
   16b80:	3c010000 	lui	at,0x0
   16b84:	ac220000 	sw	v0,0(at)
   16b88:	24010008 	li	at,8
   16b8c:	10410021 	beq	v0,at,16c14 <L8005A330+0xd4>
   16b90:	2404480c 	li	a0,18444
   16b94:	10000023 	b	16c24 <L8005A330+0xe4>
   16b98:	00e02025 	move	a0,a3
   16b9c:	ac220000 	sw	v0,0(at)
   16ba0:	00002025 	move	a0,zero
   16ba4:	0c000000 	jal	0 <func_800437F0>
   16ba8:	afa70018 	sw	a3,24(sp)
   16bac:	1000001c 	b	16c20 <L8005A330+0xe0>
   16bb0:	8fa70018 	lw	a3,24(sp)
   16bb4:	3c010000 	lui	at,0x0
   16bb8:	ac220000 	sw	v0,0(at)
   16bbc:	8ceb008c 	lw	t3,140(a3)
   16bc0:	3c0c0001 	lui	t4,0x1
   16bc4:	2404480c 	li	a0,18444
   16bc8:	018b6021 	addu	t4,t4,t3
   16bcc:	918c1cbf 	lbu	t4,7359(t4)
   16bd0:	146c0006 	bne	v1,t4,16bec <L8005A330+0xac>
   16bd4:	00000000 	nop
   16bd8:	24044837 	li	a0,18487
   16bdc:	0c000000 	jal	0 <func_800437F0>
   16be0:	afa70018 	sw	a3,24(sp)
   16be4:	1000000e 	b	16c20 <L8005A330+0xe0>
   16be8:	8fa70018 	lw	a3,24(sp)
   16bec:	0c000000 	jal	0 <func_800437F0>
   16bf0:	afa70018 	sw	a3,24(sp)
   16bf4:	1000000a 	b	16c20 <L8005A330+0xe0>
   16bf8:	8fa70018 	lw	a3,24(sp)
   16bfc:	3c010000 	lui	at,0x0
   16c00:	ac220000 	sw	v0,0(at)
   16c04:	0c000000 	jal	0 <func_800437F0>
   16c08:	afa70018 	sw	a3,24(sp)
   16c0c:	10000004 	b	16c20 <L8005A330+0xe0>
   16c10:	8fa70018 	lw	a3,24(sp)
   16c14:	0c000000 	jal	0 <func_800437F0>
   16c18:	afa70018 	sw	a3,24(sp)
   16c1c:	8fa70018 	lw	a3,24(sp)
   16c20:	00e02025 	move	a0,a3
   16c24:	0c000000 	jal	0 <func_800437F0>
   16c28:	afa70018 	sw	a3,24(sp)
   16c2c:	8fa70018 	lw	a3,24(sp)
   16c30:	87a9001e 	lh	t1,30(sp)
   16c34:	3c018000 	lui	at,0x8000
   16c38:	a4e90144 	sh	t1,324(a3)
   16c3c:	87a2001e 	lh	v0,30(sp)
   16c40:	00411025 	or	v0,v0,at
   16c44:	8fbf0014 	lw	ra,20(sp)
   16c48:	27bd0018 	addiu	sp,sp,24
   16c4c:	03e00008 	jr	ra
   16c50:	00000000 	nop

00016c54 <func_8005A444>:
   16c54:	27bdffe8 	addiu	sp,sp,-24
   16c58:	afa5001c 	sw	a1,28(sp)
   16c5c:	00052c00 	sll	a1,a1,0x10
   16c60:	afbf0014 	sw	ra,20(sp)
   16c64:	00052c03 	sra	a1,a1,0x10
   16c68:	0c000000 	jal	0 <func_800437F0>
   16c6c:	00003025 	move	a2,zero
   16c70:	8fbf0014 	lw	ra,20(sp)
   16c74:	27bd0018 	addiu	sp,sp,24
   16c78:	03e00008 	jr	ra
   16c7c:	00000000 	nop

00016c80 <func_8005A470>:
   16c80:	3c0e0000 	lui	t6,0x0
   16c84:	8dce0000 	lw	t6,0(t6)
   16c88:	27bdffe8 	addiu	sp,sp,-24
   16c8c:	afbf0014 	sw	ra,20(sp)
   16c90:	afa5001c 	sw	a1,28(sp)
   16c94:	85cf03c6 	lh	t7,966(t6)
   16c98:	00803825 	move	a3,a0
   16c9c:	87b8001e 	lh	t8,30(sp)
   16ca0:	11e00013 	beqz	t7,16cf0 <func_8005A470+0x70>
   16ca4:	2402000c 	li	v0,12
   16ca8:	03020019 	multu	t8,v0
   16cac:	84e90142 	lh	t1,322(a3)
   16cb0:	3c080000 	lui	t0,0x0
   16cb4:	3c0b0000 	lui	t3,0x0
   16cb8:	256b0000 	addiu	t3,t3,0
   16cbc:	25080000 	addiu	t0,t0,0
   16cc0:	3c040000 	lui	a0,0x0
   16cc4:	24840bd4 	addiu	a0,a0,3028
   16cc8:	afa70018 	sw	a3,24(sp)
   16ccc:	0000c812 	mflo	t9
   16cd0:	03282821 	addu	a1,t9,t0
   16cd4:	00000000 	nop
   16cd8:	01220019 	multu	t1,v0
   16cdc:	00005012 	mflo	t2
   16ce0:	014b3021 	addu	a2,t2,t3
   16ce4:	0c000000 	jal	0 <func_800437F0>
   16ce8:	00000000 	nop
   16cec:	8fa70018 	lw	a3,24(sp)
   16cf0:	84ec0142 	lh	t4,322(a3)
   16cf4:	3c0e0000 	lui	t6,0x0
   16cf8:	87b8001e 	lh	t8,30(sp)
   16cfc:	000c68c0 	sll	t5,t4,0x3
   16d00:	01cd7021 	addu	t6,t6,t5
   16d04:	8dce0000 	lw	t6,0(t6)
   16d08:	3c013fff 	lui	at,0x3fff
   16d0c:	3421ffff 	ori	at,at,0xffff
   16d10:	24190001 	li	t9,1
   16d14:	03194004 	sllv	t0,t9,t8
   16d18:	01c17824 	and	t7,t6,at
   16d1c:	01e84824 	and	t1,t7,t0
   16d20:	15200003 	bnez	t1,16d30 <func_8005A470+0xb0>
   16d24:	8fbf0014 	lw	ra,20(sp)
   16d28:	10000009 	b	16d50 <func_8005A470+0xd0>
   16d2c:	00001025 	move	v0,zero
   16d30:	87aa001e 	lh	t2,30(sp)
   16d34:	84eb0144 	lh	t3,324(a3)
   16d38:	87a2001e 	lh	v0,30(sp)
   16d3c:	3c018000 	lui	at,0x8000
   16d40:	154b0003 	bne	t2,t3,16d50 <func_8005A470+0xd0>
   16d44:	00411025 	or	v0,v0,at
   16d48:	10000001 	b	16d50 <func_8005A470+0xd0>
   16d4c:	2402ffff 	li	v0,-1
   16d50:	03e00008 	jr	ra
   16d54:	27bd0018 	addiu	sp,sp,24

00016d58 <Camera_ChangeSetting>:
   16d58:	27bdffe0 	addiu	sp,sp,-32
   16d5c:	afbf001c 	sw	ra,28(sp)
   16d60:	afb00018 	sw	s0,24(sp)
   16d64:	afa50024 	sw	a1,36(sp)
   16d68:	afa60028 	sw	a2,40(sp)
   16d6c:	8483014a 	lh	v1,330(a0)
   16d70:	00063400 	sll	a2,a2,0x10
   16d74:	00053c00 	sll	a3,a1,0x10
   16d78:	306e0001 	andi	t6,v1,0x1
   16d7c:	00073c03 	sra	a3,a3,0x10
   16d80:	00063403 	sra	a2,a2,0x10
   16d84:	11c00015 	beqz	t6,16ddc <Camera_ChangeSetting+0x84>
   16d88:	00808025 	move	s0,a0
   16d8c:	848f0142 	lh	t7,322(a0)
   16d90:	3c050000 	lui	a1,0x0
   16d94:	24a50000 	addiu	a1,a1,0
   16d98:	000758c0 	sll	t3,a3,0x3
   16d9c:	000fc0c0 	sll	t8,t7,0x3
   16da0:	00b8c821 	addu	t9,a1,t8
   16da4:	00ab6021 	addu	t4,a1,t3
   16da8:	8d8d0000 	lw	t5,0(t4)
   16dac:	8f280000 	lw	t0,0(t9)
   16db0:	3c020f00 	lui	v0,0xf00
   16db4:	01a27024 	and	t6,t5,v0
   16db8:	01024824 	and	t1,t0,v0
   16dbc:	00095602 	srl	t2,t1,0x18
   16dc0:	000e7e02 	srl	t7,t6,0x18
   16dc4:	014f082b 	sltu	at,t2,t7
   16dc8:	14200004 	bnez	at,16ddc <Camera_ChangeSetting+0x84>
   16dcc:	34780010 	ori	t8,v1,0x10
   16dd0:	a498014a 	sh	t8,330(a0)
   16dd4:	10000068 	b	16f78 <Camera_ChangeSetting+0x220>
   16dd8:	2402fffe 	li	v0,-2
   16ddc:	3c050000 	lui	a1,0x0
   16de0:	24010035 	li	at,53
   16de4:	10e10003 	beq	a3,at,16df4 <Camera_ChangeSetting+0x9c>
   16de8:	24a50000 	addiu	a1,a1,0
   16dec:	24010036 	li	at,54
   16df0:	14e1000d 	bne	a3,at,16e28 <Camera_ChangeSetting+0xd0>
   16df4:	3c190000 	lui	t9,0x0
   16df8:	8f390004 	lw	t9,4(t9)
   16dfc:	1720000a 	bnez	t9,16e28 <Camera_ChangeSetting+0xd0>
   16e00:	00000000 	nop
   16e04:	8e08008c 	lw	t0,140(s0)
   16e08:	24010056 	li	at,86
   16e0c:	346b0010 	ori	t3,v1,0x10
   16e10:	850900a4 	lh	t1,164(t0)
   16e14:	2402fffb 	li	v0,-5
   16e18:	15210003 	bne	t1,at,16e28 <Camera_ChangeSetting+0xd0>
   16e1c:	00000000 	nop
   16e20:	10000055 	b	16f78 <Camera_ChangeSetting+0x220>
   16e24:	a60b014a 	sh	t3,330(s0)
   16e28:	10e00002 	beqz	a3,16e34 <Camera_ChangeSetting+0xdc>
   16e2c:	28e10042 	slti	at,a3,66
   16e30:	14200006 	bnez	at,16e4c <Camera_ChangeSetting+0xf4>
   16e34:	3c040000 	lui	a0,0x0
   16e38:	24840000 	addiu	a0,a0,0
   16e3c:	0c000000 	jal	0 <func_800437F0>
   16e40:	00e02825 	move	a1,a3
   16e44:	1000004c 	b	16f78 <Camera_ChangeSetting+0x220>
   16e48:	2402ff9d 	li	v0,-99
   16e4c:	860c0142 	lh	t4,322(s0)
   16e50:	30cd0001 	andi	t5,a2,0x1
   16e54:	34790010 	ori	t9,v1,0x10
   16e58:	14ec000b 	bne	a3,t4,16e88 <Camera_ChangeSetting+0x130>
   16e5c:	30c80002 	andi	t0,a2,0x2
   16e60:	15a00009 	bnez	t5,16e88 <Camera_ChangeSetting+0x130>
   16e64:	346e0010 	ori	t6,v1,0x10
   16e68:	30ca0002 	andi	t2,a2,0x2
   16e6c:	15400004 	bnez	t2,16e80 <Camera_ChangeSetting+0x128>
   16e70:	a60e014a 	sh	t6,330(s0)
   16e74:	860f014a 	lh	t7,330(s0)
   16e78:	35f80001 	ori	t8,t7,0x1
   16e7c:	a618014a 	sh	t8,330(s0)
   16e80:	1000003d 	b	16f78 <Camera_ChangeSetting+0x220>
   16e84:	2402ffff 	li	v0,-1
   16e88:	15000004 	bnez	t0,16e9c <Camera_ChangeSetting+0x144>
   16e8c:	a619014a 	sh	t9,330(s0)
   16e90:	8609014a 	lh	t1,330(s0)
   16e94:	352b0001 	ori	t3,t1,0x1
   16e98:	a60b014a 	sh	t3,330(s0)
   16e9c:	860c014c 	lh	t4,332(s0)
   16ea0:	86020142 	lh	v0,322(s0)
   16ea4:	3c044000 	lui	a0,0x4000
   16ea8:	358d000c 	ori	t5,t4,0xc
   16eac:	a60d014c 	sh	t5,332(s0)
   16eb0:	860e014c 	lh	t6,332(s0)
   16eb4:	000278c0 	sll	t7,v0,0x3
   16eb8:	00af1821 	addu	v1,a1,t7
   16ebc:	31caeff7 	andi	t2,t6,0xeff7
   16ec0:	a60a014c 	sh	t2,332(s0)
   16ec4:	8c780000 	lw	t8,0(v1)
   16ec8:	30c80008 	andi	t0,a2,0x8
   16ecc:	240bffff 	li	t3,-1
   16ed0:	0018c840 	sll	t9,t8,0x1
   16ed4:	07200002 	bltz	t9,16ee0 <Camera_ChangeSetting+0x188>
   16ed8:	30cc0004 	andi	t4,a2,0x4
   16edc:	a6020154 	sh	v0,340(s0)
   16ee0:	11000005 	beqz	t0,16ef8 <Camera_ChangeSetting+0x1a0>
   16ee4:	24060001 	li	a2,1
   16ee8:	86090166 	lh	t1,358(s0)
   16eec:	a60b0166 	sh	t3,358(s0)
   16ef0:	1000000a 	b	16f1c <Camera_ChangeSetting+0x1c4>
   16ef4:	a6090148 	sh	t1,328(s0)
   16ef8:	15800008 	bnez	t4,16f1c <Camera_ChangeSetting+0x1c4>
   16efc:	240fffff 	li	t7,-1
   16f00:	8c6d0000 	lw	t5,0(v1)
   16f04:	01a47024 	and	t6,t5,a0
   16f08:	55c00004 	bnezl	t6,16f1c <Camera_ChangeSetting+0x1c4>
   16f0c:	a60f0148 	sh	t7,328(s0)
   16f10:	860a0148 	lh	t2,328(s0)
   16f14:	a60a0166 	sh	t2,358(s0)
   16f18:	a60f0148 	sh	t7,328(s0)
   16f1c:	a6070142 	sh	a3,322(s0)
   16f20:	86050144 	lh	a1,324(s0)
   16f24:	a7a70026 	sh	a3,38(sp)
   16f28:	0c000000 	jal	0 <func_800437F0>
   16f2c:	02002025 	move	a0,s0
   16f30:	04400003 	bltz	v0,16f40 <Camera_ChangeSetting+0x1e8>
   16f34:	02002025 	move	a0,s0
   16f38:	0c000000 	jal	0 <func_800437F0>
   16f3c:	86050144 	lh	a1,324(s0)
   16f40:	86190142 	lh	t9,322(s0)
   16f44:	8e18008c 	lw	t8,140(s0)
   16f48:	3c090000 	lui	t1,0x0
   16f4c:	00194080 	sll	t0,t9,0x2
   16f50:	01194023 	subu	t0,t0,t9
   16f54:	00084080 	sll	t0,t0,0x2
   16f58:	25290000 	addiu	t1,t1,0
   16f5c:	3c040000 	lui	a0,0x0
   16f60:	24840000 	addiu	a0,a0,0
   16f64:	01093821 	addu	a3,t0,t1
   16f68:	86060164 	lh	a2,356(s0)
   16f6c:	0c000000 	jal	0 <func_800437F0>
   16f70:	8f05009c 	lw	a1,156(t8)
   16f74:	87a20026 	lh	v0,38(sp)
   16f78:	8fbf001c 	lw	ra,28(sp)
   16f7c:	8fb00018 	lw	s0,24(sp)
   16f80:	27bd0020 	addiu	sp,sp,32
   16f84:	03e00008 	jr	ra
   16f88:	00000000 	nop

00016f8c <func_8005A77C>:
   16f8c:	27bdffe8 	addiu	sp,sp,-24
   16f90:	afa5001c 	sw	a1,28(sp)
   16f94:	00052c00 	sll	a1,a1,0x10
   16f98:	afbf0014 	sw	ra,20(sp)
   16f9c:	00052c03 	sra	a1,a1,0x10
   16fa0:	0c000000 	jal	0 <func_800437F0>
   16fa4:	00003025 	move	a2,zero
   16fa8:	8fbf0014 	lw	ra,20(sp)
   16fac:	27bd0018 	addiu	sp,sp,24
   16fb0:	03e00008 	jr	ra
   16fb4:	00000000 	nop

00016fb8 <func_8005A7A8>:
   16fb8:	27bdffd0 	addiu	sp,sp,-48
   16fbc:	afb10020 	sw	s1,32(sp)
   16fc0:	afb0001c 	sw	s0,28(sp)
   16fc4:	2401ffff 	li	at,-1
   16fc8:	00808025 	move	s0,a0
   16fcc:	00a08825 	move	s1,a1
   16fd0:	10a10004 	beq	a1,at,16fe4 <func_8005A7A8+0x2c>
   16fd4:	afbf0024 	sw	ra,36(sp)
   16fd8:	848e0148 	lh	t6,328(a0)
   16fdc:	54ae0007 	bnel	a1,t6,16ffc <func_8005A7A8+0x44>
   16fe0:	8619014a 	lh	t9,330(s0)
   16fe4:	860f014a 	lh	t7,330(s0)
   16fe8:	2402ffff 	li	v0,-1
   16fec:	35f80040 	ori	t8,t7,0x40
   16ff0:	10000033 	b	170c0 <func_8005A7A8+0x108>
   16ff4:	a618014a 	sh	t8,330(s0)
   16ff8:	8619014a 	lh	t9,330(s0)
   16ffc:	02002025 	move	a0,s0
   17000:	33280040 	andi	t0,t9,0x40
   17004:	5500002f 	bnezl	t0,170c4 <func_8005A7A8+0x10c>
   17008:	8fbf0024 	lw	ra,36(sp)
   1700c:	0c000000 	jal	0 <func_800437F0>
   17010:	02202825 	move	a1,s1
   17014:	a7a2002e 	sh	v0,46(sp)
   17018:	8609014a 	lh	t1,330(s0)
   1701c:	00022c00 	sll	a1,v0,0x10
   17020:	00052c03 	sra	a1,a1,0x10
   17024:	352a0040 	ori	t2,t1,0x40
   17028:	a60a014a 	sh	t2,330(s0)
   1702c:	02002025 	move	a0,s0
   17030:	0c000000 	jal	0 <func_800437F0>
   17034:	24060005 	li	a2,5
   17038:	28430000 	slti	v1,v0,0
   1703c:	38630001 	xori	v1,v1,0x1
   17040:	00031c00 	sll	v1,v1,0x10
   17044:	00031c03 	sra	v1,v1,0x10
   17048:	1460000a 	bnez	v1,17074 <func_8005A7A8+0xbc>
   1704c:	02002025 	move	a0,s0
   17050:	860b0142 	lh	t3,322(s0)
   17054:	3c0d0000 	lui	t5,0x0
   17058:	2861ffff 	slti	at,v1,-1
   1705c:	000b60c0 	sll	t4,t3,0x3
   17060:	01ac6821 	addu	t5,t5,t4
   17064:	8dad0000 	lw	t5,0(t5)
   17068:	000d7000 	sll	t6,t5,0x0
   1706c:	05c10009 	bgez	t6,17094 <func_8005A7A8+0xdc>
   17070:	00000000 	nop
   17074:	860f014a 	lh	t7,330(s0)
   17078:	a6110148 	sh	s1,328(s0)
   1707c:	86050144 	lh	a1,324(s0)
   17080:	35f80004 	ori	t8,t7,0x4
   17084:	0c000000 	jal	0 <func_800437F0>
   17088:	a618014a 	sh	t8,330(s0)
   1708c:	1000000b 	b	170bc <func_8005A7A8+0x104>
   17090:	3c018000 	lui	at,0x8000
   17094:	10200008 	beqz	at,170b8 <func_8005A7A8+0x100>
   17098:	3c040000 	lui	a0,0x0
   1709c:	87b9002e 	lh	t9,46(sp)
   170a0:	86060164 	lh	a2,356(s0)
   170a4:	24840000 	addiu	a0,a0,0
   170a8:	02202825 	move	a1,s1
   170ac:	24070032 	li	a3,50
   170b0:	0c000000 	jal	0 <func_800437F0>
   170b4:	afb90010 	sw	t9,16(sp)
   170b8:	3c018000 	lui	at,0x8000
   170bc:	02211025 	or	v0,s1,at
   170c0:	8fbf0024 	lw	ra,36(sp)
   170c4:	8fb0001c 	lw	s0,28(sp)
   170c8:	8fb10020 	lw	s1,32(sp)
   170cc:	03e00008 	jr	ra
   170d0:	27bd0030 	addiu	sp,sp,48

000170d4 <func_8005A8C4>:
   170d4:	3c0e0000 	lui	t6,0x0
   170d8:	8dce0000 	lw	t6,0(t6)
   170dc:	3c0f0000 	lui	t7,0x0
   170e0:	25ef0000 	addiu	t7,t7,0
   170e4:	51c0000a 	beqzl	t6,17110 <func_8005A8C4+0x3c>
   170e8:	88a90134 	lwl	t1,308(a1)
   170ec:	89f90000 	lwl	t9,0(t7)
   170f0:	99f90003 	lwr	t9,3(t7)
   170f4:	00801025 	move	v0,a0
   170f8:	a8990000 	swl	t9,0(a0)
   170fc:	b8990003 	swr	t9,3(a0)
   17100:	95f90004 	lhu	t9,4(t7)
   17104:	03e00008 	jr	ra
   17108:	a4990004 	sh	t9,4(a0)
   1710c:	88a90134 	lwl	t1,308(a1)
   17110:	98a90137 	lwr	t1,311(a1)
   17114:	00801025 	move	v0,a0
   17118:	a8890000 	swl	t1,0(a0)
   1711c:	b8890003 	swr	t1,3(a0)
   17120:	94a90138 	lhu	t1,312(a1)
   17124:	a4890004 	sh	t1,4(a0)
   17128:	03e00008 	jr	ra
   1712c:	00000000 	nop
   17130:	27bdffe0 	addiu	sp,sp,-32
   17134:	afbf0014 	sw	ra,20(sp)
   17138:	00802825 	move	a1,a0
   1713c:	0c000000 	jal	0 <func_800437F0>
   17140:	27a40018 	addiu	a0,sp,24
   17144:	8fbf0014 	lw	ra,20(sp)
   17148:	87a20018 	lh	v0,24(sp)
   1714c:	27bd0020 	addiu	sp,sp,32
   17150:	03e00008 	jr	ra
   17154:	00000000 	nop

00017158 <func_8005A948>:
   17158:	27bdffe0 	addiu	sp,sp,-32
   1715c:	afbf0014 	sw	ra,20(sp)
   17160:	00802825 	move	a1,a0
   17164:	0c000000 	jal	0 <func_800437F0>
   17168:	27a40018 	addiu	a0,sp,24
   1716c:	8fbf0014 	lw	ra,20(sp)
   17170:	87a2001a 	lh	v0,26(sp)
   17174:	27bd0020 	addiu	sp,sp,32
   17178:	03e00008 	jr	ra
   1717c:	00000000 	nop

00017180 <func_8005A970>:
   17180:	3c0e0000 	lui	t6,0x0
   17184:	8dce0000 	lw	t6,0(t6)
   17188:	3c0f0000 	lui	t7,0x0
   1718c:	25ef0000 	addiu	t7,t7,0
   17190:	51c0000a 	beqzl	t6,171bc <func_8005A970+0x3c>
   17194:	88a9013a 	lwl	t1,314(a1)
   17198:	89f90000 	lwl	t9,0(t7)
   1719c:	99f90003 	lwr	t9,3(t7)
   171a0:	00801025 	move	v0,a0
   171a4:	a8990000 	swl	t9,0(a0)
   171a8:	b8990003 	swr	t9,3(a0)
   171ac:	95f90004 	lhu	t9,4(t7)
   171b0:	03e00008 	jr	ra
   171b4:	a4990004 	sh	t9,4(a0)
   171b8:	88a9013a 	lwl	t1,314(a1)
   171bc:	98a9013d 	lwr	t1,317(a1)
   171c0:	00801025 	move	v0,a0
   171c4:	a8890000 	swl	t1,0(a0)
   171c8:	b8890003 	swr	t1,3(a0)
   171cc:	94a9013e 	lhu	t1,318(a1)
   171d0:	a4890004 	sh	t1,4(a0)
   171d4:	03e00008 	jr	ra
   171d8:	00000000 	nop

000171dc <func_8005A9CC>:
   171dc:	27bdffe0 	addiu	sp,sp,-32
   171e0:	afbf0014 	sw	ra,20(sp)
   171e4:	00802825 	move	a1,a0
   171e8:	0c000000 	jal	0 <func_800437F0>
   171ec:	27a40018 	addiu	a0,sp,24
   171f0:	8fbf0014 	lw	ra,20(sp)
   171f4:	87a20018 	lh	v0,24(sp)
   171f8:	27bd0020 	addiu	sp,sp,32
   171fc:	03e00008 	jr	ra
   17200:	00000000 	nop

00017204 <func_8005A9F4>:
   17204:	27bdffe0 	addiu	sp,sp,-32
   17208:	afbf0014 	sw	ra,20(sp)
   1720c:	00802825 	move	a1,a0
   17210:	0c000000 	jal	0 <func_800437F0>
   17214:	27a40018 	addiu	a0,sp,24
   17218:	8fbf0014 	lw	ra,20(sp)
   1721c:	87a2001a 	lh	v0,26(sp)
   17220:	27bd0020 	addiu	sp,sp,32
   17224:	03e00008 	jr	ra
   17228:	00000000 	nop

0001722c <func_8005AA1C>:
   1722c:	27bdffd8 	addiu	sp,sp,-40
   17230:	afbf001c 	sw	ra,28(sp)
   17234:	afa5002c 	sw	a1,44(sp)
   17238:	afa60030 	sw	a2,48(sp)
   1723c:	afa70034 	sw	a3,52(sp)
   17240:	0c000000 	jal	0 <func_800437F0>
   17244:	24050003 	li	a1,3
   17248:	00022400 	sll	a0,v0,0x10
   1724c:	14400003 	bnez	v0,1725c <func_8005AA1C+0x30>
   17250:	00042403 	sra	a0,a0,0x10
   17254:	1000000e 	b	17290 <func_8005AA1C+0x64>
   17258:	00001025 	move	v0,zero
   1725c:	240561a8 	li	a1,25000
   17260:	0c000000 	jal	0 <func_800437F0>
   17264:	a7a40026 	sh	a0,38(sp)
   17268:	87a40026 	lh	a0,38(sp)
   1726c:	87a50032 	lh	a1,50(sp)
   17270:	00003025 	move	a2,zero
   17274:	00003825 	move	a3,zero
   17278:	0c000000 	jal	0 <func_800437F0>
   1727c:	afa00010 	sw	zero,16(sp)
   17280:	87a40026 	lh	a0,38(sp)
   17284:	0c000000 	jal	0 <func_800437F0>
   17288:	87a50036 	lh	a1,54(sp)
   1728c:	24020001 	li	v0,1
   17290:	8fbf001c 	lw	ra,28(sp)
   17294:	27bd0028 	addiu	sp,sp,40
   17298:	03e00008 	jr	ra
   1729c:	00000000 	nop

000172a0 <Camera_SetParam>:
   172a0:	10c00060 	beqz	a2,17424 <L8005AC0C+0x8>
   172a4:	27bdffe0 	addiu	sp,sp,-32
   172a8:	28a10021 	slti	at,a1,33
   172ac:	14200006 	bnez	at,172c8 <Camera_SetParam+0x28>
   172b0:	24aeffff 	addiu	t6,a1,-1
   172b4:	24010040 	li	at,64
   172b8:	10a1004a 	beq	a1,at,173e4 <L8005ABB8+0x1c>
   172bc:	00000000 	nop
   172c0:	1000005a 	b	1742c <L8005AC0C+0x10>
   172c4:	00001025 	move	v0,zero
   172c8:	2dc10020 	sltiu	at,t6,32
   172cc:	10200053 	beqz	at,1741c <L8005AC0C>
   172d0:	000e7080 	sll	t6,t6,0x2
   172d4:	3c010000 	lui	at,0x0
   172d8:	002e0821 	addu	at,at,t6
   172dc:	8c2e0000 	lw	t6,0(at)
   172e0:	01c00008 	jr	t6
   172e4:	00000000 	nop

000172e8 <L8005AAD8>:
   172e8:	848f015c 	lh	t7,348(a0)
   172ec:	31f8ffe6 	andi	t8,t7,0xffe6
   172f0:	a498015c 	sh	t8,348(a0)
   172f4:	8cc80000 	lw	t0,0(a2)
   172f8:	ac880050 	sw	t0,80(a0)
   172fc:	8cd90004 	lw	t9,4(a2)
   17300:	ac990054 	sw	t9,84(a0)
   17304:	8cc80008 	lw	t0,8(a2)
   17308:	ac880058 	sw	t0,88(a0)
   1730c:	8489015c 	lh	t1,348(a0)
   17310:	24020001 	li	v0,1
   17314:	01255025 	or	t2,t1,a1
   17318:	10000044 	b	1742c <L8005AC0C+0x10>
   1731c:	a48a015c 	sh	t2,348(a0)

00017320 <L8005AB10>:
   17320:	848b015c 	lh	t3,348(a0)
   17324:	316cffe6 	andi	t4,t3,0xffe6
   17328:	a48c015c 	sh	t4,348(a0)
   1732c:	8cce0000 	lw	t6,0(a2)
   17330:	ac8e00ac 	sw	t6,172(a0)
   17334:	8ccd0004 	lw	t5,4(a2)
   17338:	ac8d00b0 	sw	t5,176(a0)
   1733c:	8cce0008 	lw	t6,8(a2)
   17340:	1000fff2 	b	1730c <L8005AAD8+0x24>
   17344:	ac8e00b4 	sw	t6,180(a0)

00017348 <L8005AB38>:
   17348:	84820142 	lh	v0,322(a0)
   1734c:	2401003c 	li	at,60
   17350:	5041ffef 	beql	v0,at,17310 <L8005AAD8+0x28>
   17354:	8489015c 	lh	t1,348(a0)
   17358:	2401002b 	li	at,43
   1735c:	5041ffec 	beql	v0,at,17310 <L8005AAD8+0x28>
   17360:	8489015c 	lh	t1,348(a0)
   17364:	848f015c 	lh	t7,348(a0)
   17368:	ac8600a8 	sw	a2,168(a0)
   1736c:	31f8ffe6 	andi	t8,t7,0xffe6
   17370:	1000ffe6 	b	1730c <L8005AAD8+0x24>
   17374:	a498015c 	sh	t8,348(a0)

00017378 <L8005AB68>:
   17378:	8cc80000 	lw	t0,0(a2)
   1737c:	27a20004 	addiu	v0,sp,4
   17380:	ac480000 	sw	t0,0(v0)
   17384:	8cd90004 	lw	t9,4(a2)
   17388:	8c4a0000 	lw	t2,0(v0)
   1738c:	ac590004 	sw	t9,4(v0)
   17390:	8cc80008 	lw	t0,8(a2)
   17394:	ac480008 	sw	t0,8(v0)
   17398:	ac8a0074 	sw	t2,116(a0)
   1739c:	8c490004 	lw	t1,4(v0)
   173a0:	ac890078 	sw	t1,120(a0)
   173a4:	8c4a0008 	lw	t2,8(v0)
   173a8:	ac8a007c 	sw	t2,124(a0)
   173ac:	8c4c0000 	lw	t4,0(v0)
   173b0:	ac8c005c 	sw	t4,92(a0)
   173b4:	8c4b0004 	lw	t3,4(v0)
   173b8:	ac8b0060 	sw	t3,96(a0)
   173bc:	8c4c0008 	lw	t4,8(v0)
   173c0:	1000ffd2 	b	1730c <L8005AAD8+0x24>
   173c4:	ac8c0064 	sw	t4,100(a0)

000173c8 <L8005ABB8>:
   173c8:	8cce0000 	lw	t6,0(a2)
   173cc:	ac8e0068 	sw	t6,104(a0)
   173d0:	8ccd0004 	lw	t5,4(a2)
   173d4:	ac8d006c 	sw	t5,108(a0)
   173d8:	8cce0008 	lw	t6,8(a2)
   173dc:	1000ffcb 	b	1730c <L8005AAD8+0x24>
   173e0:	ac8e0070 	sw	t6,112(a0)
   173e4:	3c010000 	lui	at,0x0
   173e8:	c4260000 	lwc1	$f6,0(at)
   173ec:	c4c40000 	lwc1	$f4,0(a2)
   173f0:	3c013f00 	lui	at,0x3f00
   173f4:	44815000 	mtc1	at,$f10
   173f8:	46062202 	mul.s	$f8,$f4,$f6
   173fc:	460a4400 	add.s	$f16,$f8,$f10
   17400:	4600848d 	trunc.w.s	$f18,$f16
   17404:	44189000 	mfc1	t8,$f18
   17408:	1000ffc0 	b	1730c <L8005AAD8+0x24>
   1740c:	a498015a 	sh	t8,346(a0)

00017410 <L8005AC00>:
   17410:	c4c40000 	lwc1	$f4,0(a2)
   17414:	1000ffbd 	b	1730c <L8005AAD8+0x24>
   17418:	e48400fc 	swc1	$f4,252(a0)

0001741c <L8005AC0C>:
   1741c:	10000003 	b	1742c <L8005AC0C+0x10>
   17420:	00001025 	move	v0,zero
   17424:	10000001 	b	1742c <L8005AC0C+0x10>
   17428:	00001025 	move	v0,zero
   1742c:	03e00008 	jr	ra
   17430:	27bd0020 	addiu	sp,sp,32

00017434 <func_8005AC24>:
   17434:	afa50004 	sw	a1,4(sp)
   17438:	848e015c 	lh	t6,348(a0)
   1743c:	00052c00 	sll	a1,a1,0x10
   17440:	00052c03 	sra	a1,a1,0x10
   17444:	00a07827 	nor	t7,a1,zero
   17448:	01cfc024 	and	t8,t6,t7
   1744c:	a498015c 	sh	t8,348(a0)
   17450:	03e00008 	jr	ra
   17454:	24020001 	li	v0,1

00017458 <func_8005AC48>:
   17458:	afa50004 	sw	a1,4(sp)
   1745c:	00052c00 	sll	a1,a1,0x10
   17460:	00052c03 	sra	a1,a1,0x10
   17464:	a485014c 	sh	a1,332(a0)
   17468:	03e00008 	jr	ra
   1746c:	24020001 	li	v0,1

00017470 <func_8005AC60>:
   17470:	a480015e 	sh	zero,350(a0)
   17474:	03e00008 	jr	ra
   17478:	24020001 	li	v0,1

0001747c <func_8005AC6C>:
   1747c:	27bdffc8 	addiu	sp,sp,-56
   17480:	afbf001c 	sw	ra,28(sp)
   17484:	afb00018 	sw	s0,24(sp)
   17488:	ac850124 	sw	a1,292(a0)
   1748c:	ac860128 	sw	a2,296(a0)
   17490:	87ae004a 	lh	t6,74(sp)
   17494:	00808025 	move	s0,a0
   17498:	00e02825 	move	a1,a3
   1749c:	a48e012c 	sh	t6,300(a0)
   174a0:	848f012c 	lh	t7,300(a0)
   174a4:	51e00015 	beqzl	t7,174fc <func_8005AC6C+0x80>
   174a8:	8fbf001c 	lw	ra,28(sp)
   174ac:	ac870090 	sw	a3,144(a0)
   174b0:	0c000000 	jal	0 <func_800437F0>
   174b4:	27a40024 	addiu	a0,sp,36
   174b8:	27b80024 	addiu	t8,sp,36
   174bc:	8f080000 	lw	t0,0(t8)
   174c0:	44800000 	mtc1	zero,$f0
   174c4:	2409ffff 	li	t1,-1
   174c8:	ae080094 	sw	t0,148(s0)
   174cc:	8f190004 	lw	t9,4(t8)
   174d0:	ae190098 	sw	t9,152(s0)
   174d4:	8f080008 	lw	t0,8(t8)
   174d8:	ae08009c 	sw	t0,156(s0)
   174dc:	8f19000c 	lw	t9,12(t8)
   174e0:	ae1900a0 	sw	t9,160(s0)
   174e4:	8f080010 	lw	t0,16(t8)
   174e8:	a6090156 	sh	t1,342(s0)
   174ec:	e60000d8 	swc1	$f0,216(s0)
   174f0:	e60000e0 	swc1	$f0,224(s0)
   174f4:	ae0800a4 	sw	t0,164(s0)
   174f8:	8fbf001c 	lw	ra,28(sp)
   174fc:	8fb00018 	lw	s0,24(sp)
   17500:	27bd0038 	addiu	sp,sp,56
   17504:	03e00008 	jr	ra
   17508:	24020001 	li	v0,1

0001750c <func_8005ACFC>:
   1750c:	afa50004 	sw	a1,4(sp)
   17510:	848e014c 	lh	t6,332(a0)
   17514:	00052c00 	sll	a1,a1,0x10
   17518:	00052c03 	sra	a1,a1,0x10
   1751c:	01c57825 	or	t7,t6,a1
   17520:	a48f014c 	sh	t7,332(a0)
   17524:	03e00008 	jr	ra
   17528:	8482014c 	lh	v0,332(a0)

0001752c <func_8005AD1C>:
   1752c:	afa50004 	sw	a1,4(sp)
   17530:	848e014c 	lh	t6,332(a0)
   17534:	00052c00 	sll	a1,a1,0x10
   17538:	00052c03 	sra	a1,a1,0x10
   1753c:	00a07827 	nor	t7,a1,zero
   17540:	01cfc024 	and	t8,t6,t7
   17544:	a498014c 	sh	t8,332(a0)
   17548:	03e00008 	jr	ra
   1754c:	8482014c 	lh	v0,332(a0)

00017550 <func_8005AD40>:
   17550:	27bdffe0 	addiu	sp,sp,-32
   17554:	afbf001c 	sw	ra,28(sp)
   17558:	afb00018 	sw	s0,24(sp)
   1755c:	afa60028 	sw	a2,40(sp)
   17560:	afa7002c 	sw	a3,44(sp)
   17564:	84820142 	lh	v0,322(a0)
   17568:	00063400 	sll	a2,a2,0x10
   1756c:	2401002b 	li	at,43
   17570:	00063403 	sra	a2,a2,0x10
   17574:	10410004 	beq	v0,at,17588 <func_8005AD40+0x38>
   17578:	00808025 	move	s0,a0
   1757c:	2401001d 	li	at,29
   17580:	54410004 	bnel	v0,at,17594 <func_8005AD40+0x44>
   17584:	ae050000 	sw	a1,0(s0)
   17588:	10000035 	b	17660 <func_8005AD40+0x110>
   1758c:	00001025 	move	v0,zero
   17590:	ae050000 	sw	a1,0(s0)
   17594:	87ae0032 	lh	t6,50(sp)
   17598:	2401ff9d 	li	at,-99
   1759c:	02002025 	move	a0,s0
   175a0:	a60e0006 	sh	t6,6(s0)
   175a4:	87af0036 	lh	t7,54(sp)
   175a8:	a60f0008 	sh	t7,8(s0)
   175ac:	87b8003a 	lh	t8,58(sp)
   175b0:	a6060004 	sh	a2,4(s0)
   175b4:	14c10005 	bne	a2,at,175cc <func_8005AD40+0x7c>
   175b8:	a618000a 	sh	t8,10(s0)
   175bc:	0c000000 	jal	0 <func_800437F0>
   175c0:	86050144 	lh	a1,324(s0)
   175c4:	10000026 	b	17660 <func_8005AD40+0x110>
   175c8:	2402ff9d 	li	v0,-99
   175cc:	2401ffff 	li	at,-1
   175d0:	14c1000a 	bne	a2,at,175fc <func_8005AD40+0xac>
   175d4:	02002025 	move	a0,s0
   175d8:	02002025 	move	a0,s0
   175dc:	0c000000 	jal	0 <func_800437F0>
   175e0:	2405001d 	li	a1,29
   175e4:	3c040000 	lui	a0,0x0
   175e8:	24840ca0 	addiu	a0,a0,3232
   175ec:	0c000000 	jal	0 <func_800437F0>
   175f0:	2405001d 	li	a1,29
   175f4:	10000017 	b	17654 <func_8005AD40+0x104>
   175f8:	02002025 	move	a0,s0
   175fc:	00c02825 	move	a1,a2
   17600:	0c000000 	jal	0 <func_800437F0>
   17604:	a7a6002a 	sh	a2,42(sp)
   17608:	8619014a 	lh	t9,330(s0)
   1760c:	00022c00 	sll	a1,v0,0x10
   17610:	00052c03 	sra	a1,a1,0x10
   17614:	37280040 	ori	t0,t9,0x40
   17618:	a608014a 	sh	t0,330(s0)
   1761c:	0c000000 	jal	0 <func_800437F0>
   17620:	02002025 	move	a0,s0
   17624:	04400005 	bltz	v0,1763c <func_8005AD40+0xec>
   17628:	87a6002a 	lh	a2,42(sp)
   1762c:	8609014a 	lh	t1,330(s0)
   17630:	a6060148 	sh	a2,328(s0)
   17634:	352a0004 	ori	t2,t1,0x4
   17638:	a60a014a 	sh	t2,330(s0)
   1763c:	3c040000 	lui	a0,0x0
   17640:	24840ccc 	addiu	a0,a0,3276
   17644:	86050148 	lh	a1,328(s0)
   17648:	0c000000 	jal	0 <func_800437F0>
   1764c:	86060142 	lh	a2,322(s0)
   17650:	02002025 	move	a0,s0
   17654:	0c000000 	jal	0 <func_800437F0>
   17658:	86050144 	lh	a1,324(s0)
   1765c:	2402ffff 	li	v0,-1
   17660:	8fbf001c 	lw	ra,28(sp)
   17664:	8fb00018 	lw	s0,24(sp)
   17668:	27bd0020 	addiu	sp,sp,32
   1766c:	03e00008 	jr	ra
   17670:	00000000 	nop

00017674 <func_8005AE64>:
   17674:	44800000 	mtc1	zero,$f0
   17678:	27bdffc0 	addiu	sp,sp,-64
   1767c:	afbf001c 	sw	ra,28(sp)
   17680:	afb00018 	sw	s0,24(sp)
   17684:	3c010000 	lui	at,0x0
   17688:	e48000e4 	swc1	$f0,228(a0)
   1768c:	e48000e8 	swc1	$f0,232(a0)
   17690:	e48000ec 	swc1	$f0,236(a0)
   17694:	c4241510 	lwc1	$f4,5392(at)
   17698:	27a20030 	addiu	v0,sp,48
   1769c:	00808025 	move	s0,a0
   176a0:	e4840100 	swc1	$f4,256(a0)
   176a4:	8caf0050 	lw	t7,80(a1)
   176a8:	00a03025 	move	a2,a1
   176ac:	24840050 	addiu	a0,a0,80
   176b0:	ac8f0000 	sw	t7,0(a0)
   176b4:	8cae0054 	lw	t6,84(a1)
   176b8:	ac8e0004 	sw	t6,4(a0)
   176bc:	8caf0058 	lw	t7,88(a1)
   176c0:	ac8f0008 	sw	t7,8(a0)
   176c4:	8cb9005c 	lw	t9,92(a1)
   176c8:	ac590000 	sw	t9,0(v0)
   176cc:	8cb80060 	lw	t8,96(a1)
   176d0:	8c490000 	lw	t1,0(v0)
   176d4:	ac580004 	sw	t8,4(v0)
   176d8:	8cb90064 	lw	t9,100(a1)
   176dc:	2605005c 	addiu	a1,s0,92
   176e0:	ac590008 	sw	t9,8(v0)
   176e4:	ae090074 	sw	t1,116(s0)
   176e8:	8c480004 	lw	t0,4(v0)
   176ec:	ae080078 	sw	t0,120(s0)
   176f0:	8c490008 	lw	t1,8(v0)
   176f4:	ae09007c 	sw	t1,124(s0)
   176f8:	8c4b0000 	lw	t3,0(v0)
   176fc:	acab0000 	sw	t3,0(a1)
   17700:	8c4a0004 	lw	t2,4(v0)
   17704:	acaa0004 	sw	t2,4(a1)
   17708:	8c4b0008 	lw	t3,8(v0)
   1770c:	acab0008 	sw	t3,8(a1)
   17710:	afa60044 	sw	a2,68(sp)
   17714:	0c000000 	jal	0 <func_800437F0>
   17718:	afa5002c 	sw	a1,44(sp)
   1771c:	8fa60044 	lw	a2,68(sp)
   17720:	e60000dc 	swc1	$f0,220(s0)
   17724:	02002025 	move	a0,s0
   17728:	c4c600fc 	lwc1	$f6,252(a2)
   1772c:	e60600fc 	swc1	$f6,252(s0)
   17730:	84cc015a 	lh	t4,346(a2)
   17734:	0c000000 	jal	0 <func_800437F0>
   17738:	a60c015a 	sh	t4,346(s0)
   1773c:	8e050090 	lw	a1,144(s0)
   17740:	26040094 	addiu	a0,s0,148
   17744:	50a00018 	beqzl	a1,177a8 <func_8005AE64+0x134>
   17748:	8fbf001c 	lw	ra,28(sp)
   1774c:	0c000000 	jal	0 <func_800437F0>
   17750:	afa40024 	sw	a0,36(sp)
   17754:	c6080050 	lwc1	$f8,80(s0)
   17758:	c60a0094 	lwc1	$f10,148(s0)
   1775c:	c6120054 	lwc1	$f18,84(s0)
   17760:	c6040098 	lwc1	$f4,152(s0)
   17764:	460a4401 	sub.s	$f16,$f8,$f10
   17768:	c60a009c 	lwc1	$f10,156(s0)
   1776c:	c6080058 	lwc1	$f8,88(s0)
   17770:	8fa40024 	lw	a0,36(sp)
   17774:	e61000e4 	swc1	$f16,228(s0)
   17778:	46049181 	sub.s	$f6,$f18,$f4
   1777c:	460a4401 	sub.s	$f16,$f8,$f10
   17780:	e60600e8 	swc1	$f6,232(s0)
   17784:	e61000ec 	swc1	$f16,236(s0)
   17788:	0c000000 	jal	0 <func_800437F0>
   1778c:	8fa5002c 	lw	a1,44(sp)
   17790:	3c013f80 	lui	at,0x3f80
   17794:	44811000 	mtc1	at,$f2
   17798:	e60000dc 	swc1	$f0,220(s0)
   1779c:	e60200cc 	swc1	$f2,204(s0)
   177a0:	e60200d0 	swc1	$f2,208(s0)
   177a4:	8fbf001c 	lw	ra,28(sp)
   177a8:	8fb00018 	lw	s0,24(sp)
   177ac:	27bd0040 	addiu	sp,sp,64
   177b0:	03e00008 	jr	ra
   177b4:	24020001 	li	v0,1

000177b8 <func_8005AFA8>:
   177b8:	3c020000 	lui	v0,0x0
   177bc:	03e00008 	jr	ra
   177c0:	8c420000 	lw	v0,0(v0)

000177c4 <func_8005AFB4>:
   177c4:	8caf0080 	lw	t7,128(a1)
   177c8:	00801025 	move	v0,a0
   177cc:	ac8f0000 	sw	t7,0(a0)
   177d0:	8cae0084 	lw	t6,132(a1)
   177d4:	ac8e0004 	sw	t6,4(a0)
   177d8:	8caf0088 	lw	t7,136(a1)
   177dc:	03e00008 	jr	ra
   177e0:	ac8f0008 	sw	t7,8(a0)

000177e4 <Camera_SetCameraData>:
   177e4:	27bdffe8 	addiu	sp,sp,-24
   177e8:	afa5001c 	sw	a1,28(sp)
   177ec:	00052c00 	sll	a1,a1,0x10
   177f0:	00052c03 	sra	a1,a1,0x10
   177f4:	30ae0001 	andi	t6,a1,0x1
   177f8:	11c00002 	beqz	t6,17804 <Camera_SetCameraData+0x20>
   177fc:	afbf0014 	sw	ra,20(sp)
   17800:	ac860124 	sw	a2,292(a0)
   17804:	30af0002 	andi	t7,a1,0x2
   17808:	11e00002 	beqz	t7,17814 <Camera_SetCameraData+0x30>
   1780c:	30b80004 	andi	t8,a1,0x4
   17810:	ac870128 	sw	a3,296(a0)
   17814:	13000003 	beqz	t8,17824 <Camera_SetCameraData+0x40>
   17818:	30a80008 	andi	t0,a1,0x8
   1781c:	87b9002a 	lh	t9,42(sp)
   17820:	a499012c 	sh	t9,300(a0)
   17824:	11000003 	beqz	t0,17834 <Camera_SetCameraData+0x50>
   17828:	30aa0010 	andi	t2,a1,0x10
   1782c:	87a9002e 	lh	t1,46(sp)
   17830:	a489012e 	sh	t1,302(a0)
   17834:	11400003 	beqz	t2,17844 <Camera_SetCameraData+0x60>
   17838:	3c040000 	lui	a0,0x0
   1783c:	0c000000 	jal	0 <func_800437F0>
   17840:	24840cf4 	addiu	a0,a0,3316
   17844:	8fbf0014 	lw	ra,20(sp)
   17848:	27bd0018 	addiu	sp,sp,24
   1784c:	03e00008 	jr	ra
   17850:	00000000 	nop

00017854 <func_8005B044>:
   17854:	3c020000 	lui	v0,0x0
   17858:	24420000 	addiu	v0,v0,0
   1785c:	8c430000 	lw	v1,0(v0)
   17860:	24040001 	li	a0,1
   17864:	846e0314 	lh	t6,788(v1)
   17868:	55c0004c 	bnezl	t6,1799c <func_8005B044+0x148>
   1786c:	24080032 	li	t0,50
   17870:	a4640318 	sh	a0,792(v1)
   17874:	8c580000 	lw	t8,0(v0)
   17878:	240fffff 	li	t7,-1
   1787c:	24190064 	li	t9,100
   17880:	a70f0328 	sh	t7,808(t8)
   17884:	8c480000 	lw	t0,0(v0)
   17888:	24090050 	li	t1,80
   1788c:	240b005a 	li	t3,90
   17890:	a519032a 	sh	t9,810(t0)
   17894:	8c4a0000 	lw	t2,0(v0)
   17898:	2405000a 	li	a1,10
   1789c:	240f0032 	li	t7,50
   178a0:	a549032c 	sh	t1,812(t2)
   178a4:	8c4c0000 	lw	t4,0(v0)
   178a8:	24191770 	li	t9,6000
   178ac:	240900f0 	li	t1,240
   178b0:	a58b033c 	sh	t3,828(t4)
   178b4:	8c4d0000 	lw	t5,0(v0)
   178b8:	240b0028 	li	t3,40
   178bc:	24060014 	li	a2,20
   178c0:	a5a5033e 	sh	a1,830(t5)
   178c4:	8c4e0000 	lw	t6,0(v0)
   178c8:	240d0055 	li	t5,85
   178cc:	2407000f 	li	a3,15
   178d0:	a5c50340 	sh	a1,832(t6)
   178d4:	8c580000 	lw	t8,0(v0)
   178d8:	a70f0342 	sh	t7,834(t8)
   178dc:	8c480000 	lw	t0,0(v0)
   178e0:	240f0037 	li	t7,55
   178e4:	a5190344 	sh	t9,836(t0)
   178e8:	8c4a0000 	lw	t2,0(v0)
   178ec:	24190057 	li	t9,87
   178f0:	a5490346 	sh	t1,838(t2)
   178f4:	8c4c0000 	lw	t4,0(v0)
   178f8:	24090017 	li	t1,23
   178fc:	a58b0348 	sh	t3,840(t4)
   17900:	8c4e0000 	lw	t6,0(v0)
   17904:	240c0004 	li	t4,4
   17908:	a5cd034a 	sh	t5,842(t6)
   1790c:	8c580000 	lw	t8,0(v0)
   17910:	240e0005 	li	t6,5
   17914:	a70f034c 	sh	t7,844(t8)
   17918:	8c480000 	lw	t0,0(v0)
   1791c:	a519034e 	sh	t9,846(t0)
   17920:	8c4a0000 	lw	t2,0(v0)
   17924:	240800c8 	li	t0,200
   17928:	a5490350 	sh	t1,848(t2)
   1792c:	8c4b0000 	lw	t3,0(v0)
   17930:	a5660352 	sh	a2,850(t3)
   17934:	8c4d0000 	lw	t5,0(v0)
   17938:	a5ac0354 	sh	t4,852(t5)
   1793c:	8c4f0000 	lw	t7,0(v0)
   17940:	240c003c 	li	t4,60
   17944:	a5ee0356 	sh	t6,854(t7)
   17948:	8c580000 	lw	t8,0(v0)
   1794c:	240f001e 	li	t7,30
   17950:	a7040378 	sh	a0,888(t8)
   17954:	8c590000 	lw	t9,0(v0)
   17958:	a726037a 	sh	a2,890(t9)
   1795c:	8c490000 	lw	t1,0(v0)
   17960:	a528037c 	sh	t0,892(t1)
   17964:	8c4a0000 	lw	t2,0(v0)
   17968:	a544037e 	sh	a0,894(t2)
   1796c:	8c4b0000 	lw	t3,0(v0)
   17970:	a5670380 	sh	a3,896(t3)
   17974:	8c4d0000 	lw	t5,0(v0)
   17978:	a5ac0382 	sh	t4,898(t5)
   1797c:	8c4e0000 	lw	t6,0(v0)
   17980:	a5c70384 	sh	a3,900(t6)
   17984:	8c580000 	lw	t8,0(v0)
   17988:	a70f0386 	sh	t7,902(t8)
   1798c:	8c590000 	lw	t9,0(v0)
   17990:	a7200388 	sh	zero,904(t9)
   17994:	8c430000 	lw	v1,0(v0)
   17998:	24080032 	li	t0,50
   1799c:	a4680396 	sh	t0,918(v1)
   179a0:	03e00008 	jr	ra
   179a4:	24020001 	li	v0,1

000179a8 <func_8005B198>:
   179a8:	3c020000 	lui	v0,0x0
   179ac:	03e00008 	jr	ra
   179b0:	8c420000 	lw	v0,0(v0)

000179b4 <func_8005B1A4>:
   179b4:	848e014c 	lh	t6,332(a0)
   179b8:	84830164 	lh	v1,356(a0)
   179bc:	35cf0008 	ori	t7,t6,0x8
   179c0:	1460000d 	bnez	v1,179f8 <func_8005B1A4+0x44>
   179c4:	a48f014c 	sh	t7,332(a0)
   179c8:	8c85008c 	lw	a1,140(a0)
   179cc:	84a607a0 	lh	a2,1952(a1)
   179d0:	10c00009 	beqz	a2,179f8 <func_8005B1A4+0x44>
   179d4:	0006c080 	sll	t8,a2,0x2
   179d8:	00b8c821 	addu	t9,a1,t8
   179dc:	8f230790 	lw	v1,1936(t9)
   179e0:	8468014c 	lh	t0,332(v1)
   179e4:	35090008 	ori	t1,t0,0x8
   179e8:	a469014c 	sh	t1,332(v1)
   179ec:	8c8a008c 	lw	t2,140(a0)
   179f0:	03e00008 	jr	ra
   179f4:	854207a0 	lh	v0,1952(t2)
   179f8:	00601025 	move	v0,v1
   179fc:	03e00008 	jr	ra
   17a00:	00000000 	nop
	...
