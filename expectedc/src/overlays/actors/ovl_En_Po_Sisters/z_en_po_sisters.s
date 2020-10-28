
build/src/overlays/actors/ovl_En_Po_Sisters/z_en_po_sisters.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnPoSisters_Init>:
       0:	27bdffc0 	addiu	sp,sp,-64
       4:	afb10028 	sw	s1,40(sp)
       8:	00a08825 	move	s1,a1
       c:	afbf002c 	sw	ra,44(sp)
      10:	afb00024 	sw	s0,36(sp)
      14:	3c050000 	lui	a1,0x0
      18:	00808025 	move	s0,a0
      1c:	0c000000 	jal	0 <EnPoSisters_Init>
      20:	24a50000 	addiu	a1,a1,0
      24:	3c060000 	lui	a2,0x0
      28:	24c60000 	addiu	a2,a2,0
      2c:	260400b4 	addiu	a0,s0,180
      30:	24050000 	li	a1,0
      34:	0c000000 	jal	0 <EnPoSisters_Init>
      38:	3c074248 	lui	a3,0x4248
      3c:	3c060600 	lui	a2,0x600
      40:	3c070600 	lui	a3,0x600
      44:	260e019e 	addiu	t6,s0,414
      48:	260f01e6 	addiu	t7,s0,486
      4c:	2418000c 	li	t8,12
      50:	afb80018 	sw	t8,24(sp)
      54:	afaf0014 	sw	t7,20(sp)
      58:	afae0010 	sw	t6,16(sp)
      5c:	24e714cc 	addiu	a3,a3,5324
      60:	24c665c8 	addiu	a2,a2,26056
      64:	02202025 	move	a0,s1
      68:	0c000000 	jal	0 <EnPoSisters_Init>
      6c:	2605014c 	addiu	a1,s0,332
      70:	240300ff 	li	v1,255
      74:	241900d2 	li	t9,210
      78:	a203022e 	sb	v1,558(s0)
      7c:	a203022f 	sb	v1,559(s0)
      80:	a2190230 	sb	t9,560(s0)
      84:	a2030231 	sb	v1,561(s0)
      88:	2606029c 	addiu	a2,s0,668
      8c:	afa60034 	sw	a2,52(sp)
      90:	02202025 	move	a0,s1
      94:	0c000000 	jal	0 <EnPoSisters_Init>
      98:	262507a8 	addiu	a1,s1,1960
      9c:	c6040008 	lwc1	$f4,8(s0)
      a0:	c608000c 	lwc1	$f8,12(s0)
      a4:	c6100010 	lwc1	$f16,16(s0)
      a8:	4600218d 	trunc.w.s	$f6,$f4
      ac:	ae020298 	sw	v0,664(s0)
      b0:	afa0001c 	sw	zero,28(sp)
      b4:	4600428d 	trunc.w.s	$f10,$f8
      b8:	44053000 	mfc1	a1,$f6
      bc:	afa00018 	sw	zero,24(sp)
      c0:	4600848d 	trunc.w.s	$f18,$f16
      c4:	44065000 	mfc1	a2,$f10
      c8:	00052c00 	sll	a1,a1,0x10
      cc:	00052c03 	sra	a1,a1,0x10
      d0:	44079000 	mfc1	a3,$f18
      d4:	00063400 	sll	a2,a2,0x10
      d8:	00063403 	sra	a2,a2,0x10
      dc:	00073c00 	sll	a3,a3,0x10
      e0:	00073c03 	sra	a3,a3,0x10
      e4:	afa00014 	sw	zero,20(sp)
      e8:	afa00010 	sw	zero,16(sp)
      ec:	0c000000 	jal	0 <EnPoSisters_Init>
      f0:	8fa40034 	lw	a0,52(sp)
      f4:	260502ac 	addiu	a1,s0,684
      f8:	afa50034 	sw	a1,52(sp)
      fc:	0c000000 	jal	0 <EnPoSisters_Init>
     100:	02202025 	move	a0,s1
     104:	3c070000 	lui	a3,0x0
     108:	8fa50034 	lw	a1,52(sp)
     10c:	24e70000 	addiu	a3,a3,0
     110:	02202025 	move	a0,s1
     114:	0c000000 	jal	0 <EnPoSisters_Init>
     118:	02003025 	move	a2,s0
     11c:	3c050000 	lui	a1,0x0
     120:	3c060000 	lui	a2,0x0
     124:	24c60000 	addiu	a2,a2,0
     128:	24a50000 	addiu	a1,a1,0
     12c:	0c000000 	jal	0 <EnPoSisters_Init>
     130:	26040098 	addiu	a0,s0,152
     134:	860b001c 	lh	t3,28(s0)
     138:	8618001c 	lh	t8,28(s0)
     13c:	860d001c 	lh	t5,28(s0)
     140:	000b6203 	sra	t4,t3,0x8
     144:	318e0003 	andi	t6,t4,0x3
     148:	8e0b0004 	lw	t3,4(s0)
     14c:	3c0142dc 	lui	at,0x42dc
     150:	44812000 	mtc1	at,$f4
     154:	a20e0194 	sb	t6,404(s0)
     158:	25cf0050 	addiu	t7,t6,80
     15c:	2401fffe 	li	at,-2
     160:	0018ca83 	sra	t9,t8,0xa
     164:	24020020 	li	v0,32
     168:	33280003 	andi	t0,t9,0x3
     16c:	24090014 	li	t1,20
     170:	240a0001 	li	t2,1
     174:	31ae1000 	andi	t6,t5,0x1000
     178:	01616024 	and	t4,t3,at
     17c:	a20f0117 	sb	t7,279(s0)
     180:	a2080195 	sb	t0,405(s0)
     184:	a2020196 	sb	v0,406(s0)
     188:	a2090197 	sb	t1,407(s0)
     18c:	a20a0198 	sb	t2,408(s0)
     190:	a2020199 	sb	v0,409(s0)
     194:	ae0c0004 	sw	t4,4(s0)
     198:	11c00006 	beqz	t6,1b4 <EnPoSisters_Init+0x1b4>
     19c:	e6040294 	swc1	$f4,660(s0)
     1a0:	02002025 	move	a0,s0
     1a4:	0c000000 	jal	0 <EnPoSisters_Init>
     1a8:	02202825 	move	a1,s1
     1ac:	1000001f 	b	22c <EnPoSisters_Init+0x22c>
     1b0:	860d001c 	lh	t5,28(s0)
     1b4:	920f0194 	lbu	t7,404(s0)
     1b8:	15e00019 	bnez	t7,220 <EnPoSisters_Init+0x220>
     1bc:	00000000 	nop
     1c0:	92180195 	lbu	t8,405(s0)
     1c4:	2401bdff 	li	at,-16897
     1c8:	240a0004 	li	t2,4
     1cc:	17000008 	bnez	t8,1f0 <EnPoSisters_Init+0x1f0>
     1d0:	02002025 	move	a0,s0
     1d4:	24190009 	li	t9,9
     1d8:	a21902be 	sb	t9,702(s0)
     1dc:	02002025 	move	a0,s0
     1e0:	0c000000 	jal	0 <EnPoSisters_Init>
     1e4:	02202825 	move	a1,s1
     1e8:	10000010 	b	22c <EnPoSisters_Init+0x22c>
     1ec:	860d001c 	lh	t5,28(s0)
     1f0:	8e080004 	lw	t0,4(s0)
     1f4:	8e0b02cc 	lw	t3,716(s0)
     1f8:	a20a02d8 	sb	t2,728(s0)
     1fc:	01014824 	and	t1,t0,at
     200:	356c0001 	ori	t4,t3,0x1
     204:	ae090004 	sw	t1,4(s0)
     208:	ae0c02cc 	sw	t4,716(s0)
     20c:	a20002be 	sb	zero,702(s0)
     210:	0c000000 	jal	0 <EnPoSisters_Init>
     214:	00002825 	move	a1,zero
     218:	10000004 	b	22c <EnPoSisters_Init+0x22c>
     21c:	860d001c 	lh	t5,28(s0)
     220:	0c000000 	jal	0 <EnPoSisters_Init>
     224:	02002025 	move	a0,s0
     228:	860d001c 	lh	t5,28(s0)
     22c:	31ae003f 	andi	t6,t5,0x3f
     230:	a60e001c 	sh	t6,28(s0)
     234:	8fbf002c 	lw	ra,44(sp)
     238:	8fb10028 	lw	s1,40(sp)
     23c:	8fb00024 	lw	s0,36(sp)
     240:	03e00008 	jr	ra
     244:	27bd0040 	addiu	sp,sp,64

00000248 <EnPoSisters_Destroy>:
     248:	27bdffe8 	addiu	sp,sp,-24
     24c:	00803825 	move	a3,a0
     250:	afbf0014 	sw	ra,20(sp)
     254:	afa5001c 	sw	a1,28(sp)
     258:	8ce60298 	lw	a2,664(a3)
     25c:	00a02025 	move	a0,a1
     260:	24a507a8 	addiu	a1,a1,1960
     264:	0c000000 	jal	0 <EnPoSisters_Init>
     268:	afa70018 	sw	a3,24(sp)
     26c:	8fa70018 	lw	a3,24(sp)
     270:	90ef0194 	lbu	t7,404(a3)
     274:	55e00008 	bnezl	t7,298 <EnPoSisters_Destroy+0x50>
     278:	8fa4001c 	lw	a0,28(sp)
     27c:	90f80195 	lbu	t8,405(a3)
     280:	57000005 	bnezl	t8,298 <EnPoSisters_Destroy+0x50>
     284:	8fa4001c 	lw	a0,28(sp)
     288:	0c000000 	jal	0 <EnPoSisters_Init>
     28c:	afa70018 	sw	a3,24(sp)
     290:	8fa70018 	lw	a3,24(sp)
     294:	8fa4001c 	lw	a0,28(sp)
     298:	0c000000 	jal	0 <EnPoSisters_Init>
     29c:	24e502ac 	addiu	a1,a3,684
     2a0:	8fbf0014 	lw	ra,20(sp)
     2a4:	27bd0018 	addiu	sp,sp,24
     2a8:	03e00008 	jr	ra
     2ac:	00000000 	nop

000002b0 <func_80AD9240>:
     2b0:	27bdffc0 	addiu	sp,sp,-64
     2b4:	afbf003c 	sw	ra,60(sp)
     2b8:	afb50038 	sw	s5,56(sp)
     2bc:	afb40034 	sw	s4,52(sp)
     2c0:	afb30030 	sw	s3,48(sp)
     2c4:	afb2002c 	sw	s2,44(sp)
     2c8:	afb10028 	sw	s1,40(sp)
     2cc:	afb00024 	sw	s0,36(sp)
     2d0:	f7b60018 	sdc1	$f22,24(sp)
     2d4:	f7b40010 	sdc1	$f20,16(sp)
     2d8:	908e0198 	lbu	t6,408(a0)
     2dc:	00808025 	move	s0,a0
     2e0:	00c0a825 	move	s5,a2
     2e4:	19c00031 	blez	t6,3ac <func_80AD9240+0xfc>
     2e8:	00009825 	move	s3,zero
     2ec:	00a50019 	multu	a1,a1
     2f0:	3c010000 	lui	at,0x0
     2f4:	c4280000 	lwc1	$f8,0(at)
     2f8:	44855000 	mtc1	a1,$f10
     2fc:	24910234 	addiu	s1,a0,564
     300:	00009025 	move	s2,zero
     304:	468055a0 	cvt.s.w	$f22,$f10
     308:	00007812 	mflo	t7
     30c:	448f2000 	mtc1	t7,$f4
     310:	00000000 	nop
     314:	468021a0 	cvt.s.w	$f6,$f4
     318:	46083502 	mul.s	$f20,$f6,$f8
     31c:	00000000 	nop
     320:	8619019a 	lh	t9,410(s0)
     324:	861800b6 	lh	t8,182(s0)
     328:	0220a025 	move	s4,s1
     32c:	001942c0 	sll	t0,t9,0xb
     330:	03084821 	addu	t1,t8,t0
     334:	01322021 	addu	a0,t1,s2
     338:	00042400 	sll	a0,a0,0x10
     33c:	0c000000 	jal	0 <EnPoSisters_Init>
     340:	00042403 	sra	a0,a0,0x10
     344:	46140402 	mul.s	$f16,$f0,$f20
     348:	c6b20000 	lwc1	$f18,0(s5)
     34c:	46128100 	add.s	$f4,$f16,$f18
     350:	e6240000 	swc1	$f4,0(s1)
     354:	860b019a 	lh	t3,410(s0)
     358:	860a00b6 	lh	t2,182(s0)
     35c:	000b62c0 	sll	t4,t3,0xb
     360:	014c6821 	addu	t5,t2,t4
     364:	01b22021 	addu	a0,t5,s2
     368:	00042400 	sll	a0,a0,0x10
     36c:	0c000000 	jal	0 <EnPoSisters_Init>
     370:	00042403 	sra	a0,a0,0x10
     374:	46140182 	mul.s	$f6,$f0,$f20
     378:	c6a80008 	lwc1	$f8,8(s5)
     37c:	26730001 	addiu	s3,s3,1
     380:	2631000c 	addiu	s1,s1,12
     384:	26522000 	addiu	s2,s2,8192
     388:	46083280 	add.s	$f10,$f6,$f8
     38c:	e68a0008 	swc1	$f10,8(s4)
     390:	c6b00004 	lwc1	$f16,4(s5)
     394:	46168480 	add.s	$f18,$f16,$f22
     398:	e6920004 	swc1	$f18,4(s4)
     39c:	920e0198 	lbu	t6,408(s0)
     3a0:	026e082a 	slt	at,s3,t6
     3a4:	5420ffdf 	bnezl	at,324 <func_80AD9240+0x74>
     3a8:	8619019a 	lh	t9,410(s0)
     3ac:	8fbf003c 	lw	ra,60(sp)
     3b0:	d7b40010 	ldc1	$f20,16(sp)
     3b4:	d7b60018 	ldc1	$f22,24(sp)
     3b8:	8fb00024 	lw	s0,36(sp)
     3bc:	8fb10028 	lw	s1,40(sp)
     3c0:	8fb2002c 	lw	s2,44(sp)
     3c4:	8fb30030 	lw	s3,48(sp)
     3c8:	8fb40034 	lw	s4,52(sp)
     3cc:	8fb50038 	lw	s5,56(sp)
     3d0:	03e00008 	jr	ra
     3d4:	27bd0040 	addiu	sp,sp,64

000003d8 <func_80AD9368>:
     3d8:	27bdffe8 	addiu	sp,sp,-24
     3dc:	afbf0014 	sw	ra,20(sp)
     3e0:	00803825 	move	a3,a0
     3e4:	3c050600 	lui	a1,0x600
     3e8:	24a514cc 	addiu	a1,a1,5324
     3ec:	afa70018 	sw	a3,24(sp)
     3f0:	2484014c 	addiu	a0,a0,332
     3f4:	0c000000 	jal	0 <EnPoSisters_Init>
     3f8:	3c06c040 	lui	a2,0xc040
     3fc:	24040002 	li	a0,2
     400:	0c000000 	jal	0 <EnPoSisters_Init>
     404:	24050003 	li	a1,3
     408:	8fa70018 	lw	a3,24(sp)
     40c:	44802000 	mtc1	zero,$f4
     410:	3c0e0000 	lui	t6,0x0
     414:	25ce0000 	addiu	t6,t6,0
     418:	a4e2019a 	sh	v0,410(a3)
     41c:	acee0190 	sw	t6,400(a3)
     420:	e4e40068 	swc1	$f4,104(a3)
     424:	8fbf0014 	lw	ra,20(sp)
     428:	27bd0018 	addiu	sp,sp,24
     42c:	03e00008 	jr	ra
     430:	00000000 	nop

00000434 <func_80AD93C4>:
     434:	27bdffe8 	addiu	sp,sp,-24
     438:	afbf0014 	sw	ra,20(sp)
     43c:	8c8f0190 	lw	t7,400(a0)
     440:	3c0e0000 	lui	t6,0x0
     444:	25ce0000 	addiu	t6,t6,0
     448:	11cf0008 	beq	t6,t7,46c <func_80AD93C4+0x38>
     44c:	00803825 	move	a3,a0
     450:	3c050600 	lui	a1,0x600
     454:	24a50d40 	addiu	a1,a1,3392
     458:	2484014c 	addiu	a0,a0,332
     45c:	3c06c040 	lui	a2,0xc040
     460:	0c000000 	jal	0 <EnPoSisters_Init>
     464:	afa70018 	sw	a3,24(sp)
     468:	8fa70018 	lw	a3,24(sp)
     46c:	2404000f 	li	a0,15
     470:	24050003 	li	a1,3
     474:	0c000000 	jal	0 <EnPoSisters_Init>
     478:	afa70018 	sw	a3,24(sp)
     47c:	8fa70018 	lw	a3,24(sp)
     480:	3c080000 	lui	t0,0x0
     484:	25080000 	addiu	t0,t0,0
     488:	90f80199 	lbu	t8,409(a3)
     48c:	a4e2019a 	sh	v0,410(a3)
     490:	ace80190 	sw	t0,400(a3)
     494:	37190007 	ori	t9,t8,0x7
     498:	a0f90199 	sb	t9,409(a3)
     49c:	8fbf0014 	lw	ra,20(sp)
     4a0:	27bd0018 	addiu	sp,sp,24
     4a4:	03e00008 	jr	ra
     4a8:	00000000 	nop

000004ac <func_80AD943C>:
     4ac:	3c0e0000 	lui	t6,0x0
     4b0:	25ce0000 	addiu	t6,t6,0
     4b4:	03e00008 	jr	ra
     4b8:	ac8e0190 	sw	t6,400(a0)

000004bc <func_80AD944C>:
     4bc:	27bdffe8 	addiu	sp,sp,-24
     4c0:	afbf0014 	sw	ra,20(sp)
     4c4:	908e0231 	lbu	t6,561(a0)
     4c8:	3c050600 	lui	a1,0x600
     4cc:	00803825 	move	a3,a0
     4d0:	11c00006 	beqz	t6,4ec <func_80AD944C+0x30>
     4d4:	24a50114 	addiu	a1,a1,276
     4d8:	909802bd 	lbu	t8,701(a0)
     4dc:	240f0009 	li	t7,9
     4e0:	a08f02c0 	sb	t7,704(a0)
     4e4:	37190004 	ori	t9,t8,0x4
     4e8:	a09902bd 	sb	t9,701(a0)
     4ec:	24e4014c 	addiu	a0,a3,332
     4f0:	3c06c0a0 	lui	a2,0xc0a0
     4f4:	0c000000 	jal	0 <EnPoSisters_Init>
     4f8:	afa70018 	sw	a3,24(sp)
     4fc:	8fa70018 	lw	a3,24(sp)
     500:	44802000 	mtc1	zero,$f4
     504:	3c040600 	lui	a0,0x600
     508:	24840114 	addiu	a0,a0,276
     50c:	0c000000 	jal	0 <EnPoSisters_Init>
     510:	e4e40068 	swc1	$f4,104(a3)
     514:	8fa70018 	lw	a3,24(sp)
     518:	00024080 	sll	t0,v0,0x2
     51c:	01024023 	subu	t0,t0,v0
     520:	90ea0199 	lbu	t2,409(a3)
     524:	3c0c0000 	lui	t4,0x0
     528:	25090003 	addiu	t1,t0,3
     52c:	258c0000 	addiu	t4,t4,0
     530:	314bfffd 	andi	t3,t2,0xfffd
     534:	a4e9019a 	sh	t1,410(a3)
     538:	a0eb0199 	sb	t3,409(a3)
     53c:	acec0190 	sw	t4,400(a3)
     540:	8fbf0014 	lw	ra,20(sp)
     544:	27bd0018 	addiu	sp,sp,24
     548:	03e00008 	jr	ra
     54c:	00000000 	nop

00000550 <func_80AD94E0>:
     550:	27bdffe8 	addiu	sp,sp,-24
     554:	afbf0014 	sw	ra,20(sp)
     558:	908e0194 	lbu	t6,404(a0)
     55c:	3c0140a0 	lui	at,0x40a0
     560:	44812000 	mtc1	at,$f4
     564:	00803825 	move	a3,a0
     568:	15c0000d 	bnez	t6,5a0 <func_80AD94E0+0x50>
     56c:	e4840068 	swc1	$f4,104(a0)
     570:	909802bd 	lbu	t8,701(a0)
     574:	240f0009 	li	t7,9
     578:	a08f02c0 	sb	t7,704(a0)
     57c:	37190004 	ori	t9,t8,0x4
     580:	a09902bd 	sb	t9,701(a0)
     584:	3c050600 	lui	a1,0x600
     588:	24a50114 	addiu	a1,a1,276
     58c:	afa70018 	sw	a3,24(sp)
     590:	2484014c 	addiu	a0,a0,332
     594:	0c000000 	jal	0 <EnPoSisters_Init>
     598:	3c06c0a0 	lui	a2,0xc0a0
     59c:	8fa70018 	lw	a3,24(sp)
     5a0:	90ea0199 	lbu	t2,409(a3)
     5a4:	84e9008a 	lh	t1,138(a3)
     5a8:	3c0c0000 	lui	t4,0x0
     5ac:	24080005 	li	t0,5
     5b0:	258c0000 	addiu	t4,t4,0
     5b4:	354b0008 	ori	t3,t2,0x8
     5b8:	a4e8019a 	sh	t0,410(a3)
     5bc:	a0eb0199 	sb	t3,409(a3)
     5c0:	acec0190 	sw	t4,400(a3)
     5c4:	a4e90032 	sh	t1,50(a3)
     5c8:	8fbf0014 	lw	ra,20(sp)
     5cc:	27bd0018 	addiu	sp,sp,24
     5d0:	03e00008 	jr	ra
     5d4:	00000000 	nop

000005d8 <func_80AD9568>:
     5d8:	27bdffe8 	addiu	sp,sp,-24
     5dc:	afbf0014 	sw	ra,20(sp)
     5e0:	00803825 	move	a3,a0
     5e4:	3c050600 	lui	a1,0x600
     5e8:	24a50d40 	addiu	a1,a1,3392
     5ec:	afa70018 	sw	a3,24(sp)
     5f0:	2484014c 	addiu	a0,a0,332
     5f4:	0c000000 	jal	0 <EnPoSisters_Init>
     5f8:	3c06c040 	lui	a2,0xc040
     5fc:	8fa70018 	lw	a3,24(sp)
     600:	34018000 	li	at,0x8000
     604:	3c0a0000 	lui	t2,0x0
     608:	84ee008a 	lh	t6,138(a3)
     60c:	90f80194 	lbu	t8,404(a3)
     610:	254a0000 	addiu	t2,t2,0
     614:	01c17821 	addu	t7,t6,at
     618:	13000006 	beqz	t8,634 <func_80AD9568+0x5c>
     61c:	a4ef0032 	sh	t7,50(a3)
     620:	90e802bd 	lbu	t0,701(a3)
     624:	24190003 	li	t9,3
     628:	a0f902c0 	sb	t9,704(a3)
     62c:	3109fffb 	andi	t1,t0,0xfffb
     630:	a0e902bd 	sb	t1,701(a3)
     634:	acea0190 	sw	t2,400(a3)
     638:	8fbf0014 	lw	ra,20(sp)
     63c:	27bd0018 	addiu	sp,sp,24
     640:	03e00008 	jr	ra
     644:	00000000 	nop

00000648 <func_80AD95D8>:
     648:	27bdffd8 	addiu	sp,sp,-40
     64c:	afb00020 	sw	s0,32(sp)
     650:	00808025 	move	s0,a0
     654:	afbf0024 	sw	ra,36(sp)
     658:	3c050600 	lui	a1,0x600
     65c:	24a508c0 	addiu	a1,a1,2240
     660:	2484014c 	addiu	a0,a0,332
     664:	0c000000 	jal	0 <EnPoSisters_Init>
     668:	3c06c040 	lui	a2,0xc040
     66c:	8e0502b4 	lw	a1,692(s0)
     670:	50a00011 	beqzl	a1,6b8 <func_80AD95D8+0x70>
     674:	92090194 	lbu	t1,404(s0)
     678:	8e0e02e8 	lw	t6,744(s0)
     67c:	3c010001 	lui	at,0x1
     680:	3421f824 	ori	at,at,0xf824
     684:	8dcf0000 	lw	t7,0(t6)
     688:	01e1c024 	and	t8,t7,at
     68c:	13000004 	beqz	t8,6a0 <func_80AD95D8+0x58>
     690:	00000000 	nop
     694:	84b90032 	lh	t9,50(a1)
     698:	10000006 	b	6b4 <func_80AD95D8+0x6c>
     69c:	a6190032 	sh	t9,50(s0)
     6a0:	0c000000 	jal	0 <EnPoSisters_Init>
     6a4:	02002025 	move	a0,s0
     6a8:	34018000 	li	at,0x8000
     6ac:	00414021 	addu	t0,v0,at
     6b0:	a6080032 	sh	t0,50(s0)
     6b4:	92090194 	lbu	t1,404(s0)
     6b8:	02002025 	move	a0,s0
     6bc:	24054000 	li	a1,16384
     6c0:	11200005 	beqz	t1,6d8 <func_80AD95D8+0x90>
     6c4:	240600ff 	li	a2,255
     6c8:	3c014120 	lui	at,0x4120
     6cc:	44812000 	mtc1	at,$f4
     6d0:	00000000 	nop
     6d4:	e6040068 	swc1	$f4,104(s0)
     6d8:	920a0199 	lbu	t2,409(s0)
     6dc:	240c0010 	li	t4,16
     6e0:	00003825 	move	a3,zero
     6e4:	314bfff4 	andi	t3,t2,0xfff4
     6e8:	a20b0199 	sb	t3,409(s0)
     6ec:	0c000000 	jal	0 <EnPoSisters_Init>
     6f0:	afac0010 	sw	t4,16(sp)
     6f4:	3c0d0000 	lui	t5,0x0
     6f8:	25ad0000 	addiu	t5,t5,0
     6fc:	ae0d0190 	sw	t5,400(s0)
     700:	8fbf0024 	lw	ra,36(sp)
     704:	8fb00020 	lw	s0,32(sp)
     708:	27bd0028 	addiu	sp,sp,40
     70c:	03e00008 	jr	ra
     710:	00000000 	nop

00000714 <func_80AD96A4>:
     714:	27bdffe8 	addiu	sp,sp,-24
     718:	afbf0014 	sw	ra,20(sp)
     71c:	00803825 	move	a3,a0
     720:	3c050600 	lui	a1,0x600
     724:	24a50a54 	addiu	a1,a1,2644
     728:	afa70018 	sw	a3,24(sp)
     72c:	2484014c 	addiu	a0,a0,332
     730:	0c000000 	jal	0 <EnPoSisters_Init>
     734:	3c06c040 	lui	a2,0xc040
     738:	8fa70018 	lw	a3,24(sp)
     73c:	34018000 	li	at,0x8000
     740:	3c090000 	lui	t1,0x0
     744:	84ee00b6 	lh	t6,182(a3)
     748:	90f90199 	lbu	t9,409(a3)
     74c:	24180005 	li	t8,5
     750:	01c17821 	addu	t7,t6,at
     754:	3c0140a0 	lui	at,0x40a0
     758:	44812000 	mtc1	at,$f4
     75c:	25290000 	addiu	t1,t1,0
     760:	3728000b 	ori	t0,t9,0xb
     764:	a4ef0032 	sh	t7,50(a3)
     768:	a4f8019a 	sh	t8,410(a3)
     76c:	a0e80199 	sb	t0,409(a3)
     770:	ace90190 	sw	t1,400(a3)
     774:	e4e40068 	swc1	$f4,104(a3)
     778:	8fbf0014 	lw	ra,20(sp)
     77c:	27bd0018 	addiu	sp,sp,24
     780:	03e00008 	jr	ra
     784:	00000000 	nop

00000788 <func_80AD9718>:
     788:	27bdffd0 	addiu	sp,sp,-48
     78c:	afb00028 	sw	s0,40(sp)
     790:	00808025 	move	s0,a0
     794:	afbf002c 	sw	ra,44(sp)
     798:	3c040600 	lui	a0,0x600
     79c:	0c000000 	jal	0 <EnPoSisters_Init>
     7a0:	2484119c 	addiu	a0,a0,4508
     7a4:	44822000 	mtc1	v0,$f4
     7a8:	3c01c040 	lui	at,0xc040
     7ac:	44814000 	mtc1	at,$f8
     7b0:	468021a0 	cvt.s.w	$f6,$f4
     7b4:	3c050600 	lui	a1,0x600
     7b8:	240e0002 	li	t6,2
     7bc:	afae0014 	sw	t6,20(sp)
     7c0:	24a5119c 	addiu	a1,a1,4508
     7c4:	2604014c 	addiu	a0,s0,332
     7c8:	e7a60010 	swc1	$f6,16(sp)
     7cc:	3c063fc0 	lui	a2,0x3fc0
     7d0:	24070000 	li	a3,0
     7d4:	0c000000 	jal	0 <EnPoSisters_Init>
     7d8:	e7a80018 	swc1	$f8,24(sp)
     7dc:	92190199 	lbu	t9,409(s0)
     7e0:	44805000 	mtc1	zero,$f10
     7e4:	861800b6 	lh	t8,182(s0)
     7e8:	240f0064 	li	t7,100
     7ec:	3328fffa 	andi	t0,t9,0xfffa
     7f0:	a60f019c 	sh	t7,412(s0)
     7f4:	a2080199 	sb	t0,409(s0)
     7f8:	02002025 	move	a0,s0
     7fc:	24053874 	li	a1,14452
     800:	e60a0068 	swc1	$f10,104(s0)
     804:	0c000000 	jal	0 <EnPoSisters_Init>
     808:	a6180032 	sh	t8,50(s0)
     80c:	02002025 	move	a0,s0
     810:	0c000000 	jal	0 <EnPoSisters_Init>
     814:	240538ef 	li	a1,14575
     818:	3c090000 	lui	t1,0x0
     81c:	25290000 	addiu	t1,t1,0
     820:	ae090190 	sw	t1,400(s0)
     824:	8fbf002c 	lw	ra,44(sp)
     828:	8fb00028 	lw	s0,40(sp)
     82c:	27bd0030 	addiu	sp,sp,48
     830:	03e00008 	jr	ra
     834:	00000000 	nop

00000838 <func_80AD97C8>:
     838:	27bdffd8 	addiu	sp,sp,-40
     83c:	afbf001c 	sw	ra,28(sp)
     840:	afb10018 	sw	s1,24(sp)
     844:	afb00014 	sw	s0,20(sp)
     848:	90820195 	lbu	v0,405(a0)
     84c:	00808025 	move	s0,a0
     850:	8cb11c44 	lw	s1,7236(a1)
     854:	50400007 	beqzl	v0,874 <func_80AD97C8+0x3c>
     858:	82380843 	lb	t8,2115(s1)
     85c:	8c8f0190 	lw	t7,400(a0)
     860:	3c0e0000 	lui	t6,0x0
     864:	25ce0000 	addiu	t6,t6,0
     868:	11cf001e 	beq	t6,t7,8e4 <func_80AD97C8+0xac>
     86c:	00000000 	nop
     870:	82380843 	lb	t8,2115(s1)
     874:	53000006 	beqzl	t8,890 <func_80AD97C8+0x58>
     878:	c6240028 	lwc1	$f4,40(s1)
     87c:	82390842 	lb	t9,2114(s1)
     880:	2b210018 	slti	at,t9,24
     884:	54200011 	bnezl	at,8cc <func_80AD97C8+0x94>
     888:	26040294 	addiu	a0,s0,660
     88c:	c6240028 	lwc1	$f4,40(s1)
     890:	c6260080 	lwc1	$f6,128(s1)
     894:	3c013f80 	lui	at,0x3f80
     898:	44815000 	mtc1	at,$f10
     89c:	46062201 	sub.s	$f8,$f4,$f6
     8a0:	26040294 	addiu	a0,s0,660
     8a4:	3c0542dc 	lui	a1,0x42dc
     8a8:	460a403c 	c.lt.s	$f8,$f10
     8ac:	00000000 	nop
     8b0:	45020006 	bc1fl	8cc <func_80AD97C8+0x94>
     8b4:	26040294 	addiu	a0,s0,660
     8b8:	0c000000 	jal	0 <EnPoSisters_Init>
     8bc:	3c064040 	lui	a2,0x4040
     8c0:	10000006 	b	8dc <func_80AD97C8+0xa4>
     8c4:	c6100294 	lwc1	$f16,660(s0)
     8c8:	26040294 	addiu	a0,s0,660
     8cc:	3c05432a 	lui	a1,0x432a
     8d0:	0c000000 	jal	0 <EnPoSisters_Init>
     8d4:	3c064120 	lui	a2,0x4120
     8d8:	c6100294 	lwc1	$f16,660(s0)
     8dc:	10000006 	b	8f8 <func_80AD97C8+0xc0>
     8e0:	e7b00020 	swc1	$f16,32(sp)
     8e4:	50400005 	beqzl	v0,8fc <func_80AD97C8+0xc4>
     8e8:	860400b6 	lh	a0,182(s0)
     8ec:	8e080118 	lw	t0,280(s0)
     8f0:	c5120090 	lwc1	$f18,144(t0)
     8f4:	e7b20020 	swc1	$f18,32(sp)
     8f8:	860400b6 	lh	a0,182(s0)
     8fc:	34018000 	li	at,0x8000
     900:	00812021 	addu	a0,a0,at
     904:	00042400 	sll	a0,a0,0x10
     908:	0c000000 	jal	0 <EnPoSisters_Init>
     90c:	00042403 	sra	a0,a0,0x10
     910:	c7a40020 	lwc1	$f4,32(sp)
     914:	c6280024 	lwc1	$f8,36(s1)
     918:	860400b6 	lh	a0,182(s0)
     91c:	46040182 	mul.s	$f6,$f0,$f4
     920:	34018000 	li	at,0x8000
     924:	00812021 	addu	a0,a0,at
     928:	00042400 	sll	a0,a0,0x10
     92c:	00042403 	sra	a0,a0,0x10
     930:	46083280 	add.s	$f10,$f6,$f8
     934:	0c000000 	jal	0 <EnPoSisters_Init>
     938:	e60a0024 	swc1	$f10,36(s0)
     93c:	c7b00020 	lwc1	$f16,32(sp)
     940:	c624002c 	lwc1	$f4,44(s1)
     944:	46100482 	mul.s	$f18,$f0,$f16
     948:	46049180 	add.s	$f6,$f18,$f4
     94c:	e606002c 	swc1	$f6,44(s0)
     950:	8fbf001c 	lw	ra,28(sp)
     954:	8fb10018 	lw	s1,24(sp)
     958:	8fb00014 	lw	s0,20(sp)
     95c:	03e00008 	jr	ra
     960:	27bd0028 	addiu	sp,sp,40

00000964 <func_80AD98F4>:
     964:	27bdffd0 	addiu	sp,sp,-48
     968:	afb00028 	sw	s0,40(sp)
     96c:	00808025 	move	s0,a0
     970:	afbf002c 	sw	ra,44(sp)
     974:	3c040600 	lui	a0,0x600
     978:	afa50034 	sw	a1,52(sp)
     97c:	0c000000 	jal	0 <EnPoSisters_Init>
     980:	2484119c 	addiu	a0,a0,4508
     984:	44822000 	mtc1	v0,$f4
     988:	3c01c040 	lui	at,0xc040
     98c:	44814000 	mtc1	at,$f8
     990:	468021a0 	cvt.s.w	$f6,$f4
     994:	3c050600 	lui	a1,0x600
     998:	240e0002 	li	t6,2
     99c:	afae0014 	sw	t6,20(sp)
     9a0:	24a5119c 	addiu	a1,a1,4508
     9a4:	2604014c 	addiu	a0,s0,332
     9a8:	e7a60010 	swc1	$f6,16(sp)
     9ac:	3c063fc0 	lui	a2,0x3fc0
     9b0:	24070000 	li	a3,0
     9b4:	0c000000 	jal	0 <EnPoSisters_Init>
     9b8:	e7a80018 	swc1	$f8,24(sp)
     9bc:	920f0194 	lbu	t7,404(s0)
     9c0:	3c0142dc 	lui	at,0x42dc
     9c4:	55e0000c 	bnezl	t7,9f8 <func_80AD98F4+0x94>
     9c8:	861900b6 	lh	t9,182(s0)
     9cc:	44815000 	mtc1	at,$f10
     9d0:	02002025 	move	a0,s0
     9d4:	e60a0294 	swc1	$f10,660(s0)
     9d8:	0c000000 	jal	0 <EnPoSisters_Init>
     9dc:	8fa50034 	lw	a1,52(sp)
     9e0:	3c180000 	lui	t8,0x0
     9e4:	27180000 	addiu	t8,t8,0
     9e8:	a2000231 	sb	zero,561(s0)
     9ec:	10000003 	b	9fc <func_80AD98F4+0x98>
     9f0:	ae180134 	sw	t8,308(s0)
     9f4:	861900b6 	lh	t9,182(s0)
     9f8:	a6190032 	sh	t9,50(s0)
     9fc:	44808000 	mtc1	zero,$f16
     a00:	2408000f 	li	t0,15
     a04:	a608019a 	sh	t0,410(s0)
     a08:	02002025 	move	a0,s0
     a0c:	24053873 	li	a1,14451
     a10:	0c000000 	jal	0 <EnPoSisters_Init>
     a14:	e6100068 	swc1	$f16,104(s0)
     a18:	92090199 	lbu	t1,409(s0)
     a1c:	3c0b0000 	lui	t3,0x0
     a20:	256b0000 	addiu	t3,t3,0
     a24:	312afffe 	andi	t2,t1,0xfffe
     a28:	a20a0199 	sb	t2,409(s0)
     a2c:	ae0b0190 	sw	t3,400(s0)
     a30:	8fbf002c 	lw	ra,44(sp)
     a34:	8fb00028 	lw	s0,40(sp)
     a38:	27bd0030 	addiu	sp,sp,48
     a3c:	03e00008 	jr	ra
     a40:	00000000 	nop

00000a44 <func_80AD99D4>:
     a44:	27bdffe0 	addiu	sp,sp,-32
     a48:	afbf001c 	sw	ra,28(sp)
     a4c:	afa50024 	sw	a1,36(sp)
     a50:	3c014228 	lui	at,0x4228
     a54:	44814000 	mtc1	at,$f8
     a58:	c4860028 	lwc1	$f6,40(a0)
     a5c:	44802000 	mtc1	zero,$f4
     a60:	a480019a 	sh	zero,410(a0)
     a64:	46083280 	add.s	$f10,$f6,$f8
     a68:	3c010000 	lui	at,0x0
     a6c:	e4840068 	swc1	$f4,104(a0)
     a70:	8c8e0004 	lw	t6,4(a0)
     a74:	e48a0028 	swc1	$f10,40(a0)
     a78:	c4300000 	lwc1	$f16,0(at)
     a7c:	2401fffe 	li	at,-2
     a80:	3c180000 	lui	t8,0x0
     a84:	27180000 	addiu	t8,t8,0
     a88:	01c17824 	and	t7,t6,at
     a8c:	00803825 	move	a3,a0
     a90:	ac8f0004 	sw	t7,4(a0)
     a94:	a0800199 	sb	zero,409(a0)
     a98:	ac980190 	sw	t8,400(a0)
     a9c:	e49000bc 	swc1	$f16,188(a0)
     aa0:	afa00010 	sw	zero,16(sp)
     aa4:	8fa40024 	lw	a0,36(sp)
     aa8:	24050c76 	li	a1,3190
     aac:	0c000000 	jal	0 <EnPoSisters_Init>
     ab0:	240603e7 	li	a2,999
     ab4:	8fbf001c 	lw	ra,28(sp)
     ab8:	27bd0020 	addiu	sp,sp,32
     abc:	03e00008 	jr	ra
     ac0:	00000000 	nop

00000ac4 <func_80AD9A54>:
     ac4:	27bdffe8 	addiu	sp,sp,-24
     ac8:	afbf0014 	sw	ra,20(sp)
     acc:	afa40018 	sw	a0,24(sp)
     ad0:	afa5001c 	sw	a1,28(sp)
     ad4:	c4840238 	lwc1	$f4,568(a0)
     ad8:	00802825 	move	a1,a0
     adc:	a480019a 	sh	zero,410(a0)
     ae0:	e4840028 	swc1	$f4,40(a0)
     ae4:	afa50018 	sw	a1,24(sp)
     ae8:	8fa4001c 	lw	a0,28(sp)
     aec:	24a60024 	addiu	a2,a1,36
     af0:	0c000000 	jal	0 <EnPoSisters_Init>
     af4:	24070080 	li	a3,128
     af8:	8fa50018 	lw	a1,24(sp)
     afc:	3c0e0000 	lui	t6,0x0
     b00:	25ce0000 	addiu	t6,t6,0
     b04:	acae0190 	sw	t6,400(a1)
     b08:	8fbf0014 	lw	ra,20(sp)
     b0c:	27bd0018 	addiu	sp,sp,24
     b10:	03e00008 	jr	ra
     b14:	00000000 	nop

00000b18 <func_80AD9AA8>:
     b18:	27bdffb0 	addiu	sp,sp,-80
     b1c:	afb00030 	sw	s0,48(sp)
     b20:	00808025 	move	s0,a0
     b24:	afbf0034 	sw	ra,52(sp)
     b28:	c6040028 	lwc1	$f4,40(s0)
     b2c:	8e070024 	lw	a3,36(s0)
     b30:	24a41c24 	addiu	a0,a1,7204
     b34:	e7a40010 	swc1	$f4,16(sp)
     b38:	c606002c 	lwc1	$f6,44(s0)
     b3c:	240e0400 	li	t6,1024
     b40:	afae0024 	sw	t6,36(sp)
     b44:	afa50054 	sw	a1,84(sp)
     b48:	afa40038 	sw	a0,56(sp)
     b4c:	afa00020 	sw	zero,32(sp)
     b50:	afa0001c 	sw	zero,28(sp)
     b54:	afa00018 	sw	zero,24(sp)
     b58:	24060091 	li	a2,145
     b5c:	0c000000 	jal	0 <EnPoSisters_Init>
     b60:	e7a60014 	swc1	$f6,20(sp)
     b64:	afa2004c 	sw	v0,76(sp)
     b68:	c6080028 	lwc1	$f8,40(s0)
     b6c:	8e070024 	lw	a3,36(s0)
     b70:	240f0800 	li	t7,2048
     b74:	e7a80010 	swc1	$f8,16(sp)
     b78:	c60a002c 	lwc1	$f10,44(s0)
     b7c:	afaf0024 	sw	t7,36(sp)
     b80:	afa00020 	sw	zero,32(sp)
     b84:	afa0001c 	sw	zero,28(sp)
     b88:	afa00018 	sw	zero,24(sp)
     b8c:	8fa40038 	lw	a0,56(sp)
     b90:	8fa50054 	lw	a1,84(sp)
     b94:	24060091 	li	a2,145
     b98:	0c000000 	jal	0 <EnPoSisters_Init>
     b9c:	e7aa0014 	swc1	$f10,20(sp)
     ba0:	afa20048 	sw	v0,72(sp)
     ba4:	c6100028 	lwc1	$f16,40(s0)
     ba8:	8e070024 	lw	a3,36(s0)
     bac:	24180c00 	li	t8,3072
     bb0:	e7b00010 	swc1	$f16,16(sp)
     bb4:	c612002c 	lwc1	$f18,44(s0)
     bb8:	afb80024 	sw	t8,36(sp)
     bbc:	afa00020 	sw	zero,32(sp)
     bc0:	afa0001c 	sw	zero,28(sp)
     bc4:	afa00018 	sw	zero,24(sp)
     bc8:	8fa40038 	lw	a0,56(sp)
     bcc:	8fa50054 	lw	a1,84(sp)
     bd0:	24060091 	li	a2,145
     bd4:	0c000000 	jal	0 <EnPoSisters_Init>
     bd8:	e7b20014 	swc1	$f18,20(sp)
     bdc:	8fa7004c 	lw	a3,76(sp)
     be0:	00403025 	move	a2,v0
     be4:	8fb90048 	lw	t9,72(sp)
     be8:	10e00005 	beqz	a3,c00 <func_80AD9AA8+0xe8>
     bec:	00000000 	nop
     bf0:	13200003 	beqz	t9,c00 <func_80AD9AA8+0xe8>
     bf4:	00000000 	nop
     bf8:	14400014 	bnez	v0,c4c <func_80AD9AA8+0x134>
     bfc:	2604014c 	addiu	a0,s0,332
     c00:	10e00004 	beqz	a3,c14 <func_80AD9AA8+0xfc>
     c04:	00e02025 	move	a0,a3
     c08:	0c000000 	jal	0 <EnPoSisters_Init>
     c0c:	afa60044 	sw	a2,68(sp)
     c10:	8fa60044 	lw	a2,68(sp)
     c14:	8fa80048 	lw	t0,72(sp)
     c18:	11000004 	beqz	t0,c2c <func_80AD9AA8+0x114>
     c1c:	01002025 	move	a0,t0
     c20:	0c000000 	jal	0 <EnPoSisters_Init>
     c24:	afa60044 	sw	a2,68(sp)
     c28:	8fa60044 	lw	a2,68(sp)
     c2c:	10c00003 	beqz	a2,c3c <func_80AD9AA8+0x124>
     c30:	00000000 	nop
     c34:	0c000000 	jal	0 <EnPoSisters_Init>
     c38:	00c02025 	move	a0,a2
     c3c:	0c000000 	jal	0 <EnPoSisters_Init>
     c40:	02002025 	move	a0,s0
     c44:	1000000f 	b	c84 <func_80AD9AA8+0x16c>
     c48:	8fbf0034 	lw	ra,52(sp)
     c4c:	acd00118 	sw	s0,280(a2)
     c50:	8fa90048 	lw	t1,72(sp)
     c54:	3c050600 	lui	a1,0x600
     c58:	24a50680 	addiu	a1,a1,1664
     c5c:	ad300118 	sw	s0,280(t1)
     c60:	0c000000 	jal	0 <EnPoSisters_Init>
     c64:	acf00118 	sw	s0,280(a3)
     c68:	3c0b0000 	lui	t3,0x0
     c6c:	240a00a0 	li	t2,160
     c70:	256b0000 	addiu	t3,t3,0
     c74:	a2000198 	sb	zero,408(s0)
     c78:	a20a0199 	sb	t2,409(s0)
     c7c:	ae0b0190 	sw	t3,400(s0)
     c80:	8fbf0034 	lw	ra,52(sp)
     c84:	8fb00030 	lw	s0,48(sp)
     c88:	27bd0050 	addiu	sp,sp,80
     c8c:	03e00008 	jr	ra
     c90:	00000000 	nop

00000c94 <func_80AD9C24>:
     c94:	27bdffa0 	addiu	sp,sp,-96
     c98:	afbf004c 	sw	ra,76(sp)
     c9c:	afb00048 	sw	s0,72(sp)
     ca0:	afa50064 	sw	a1,100(sp)
     ca4:	8c8e0004 	lw	t6,4(a0)
     ca8:	908902bd 	lbu	t1,701(a0)
     cac:	2401fffe 	li	at,-2
     cb0:	24180064 	li	t8,100
     cb4:	24190020 	li	t9,32
     cb8:	24080003 	li	t0,3
     cbc:	01c17824 	and	t7,t6,at
     cc0:	312afffb 	andi	t2,t1,0xfffb
     cc4:	ac800134 	sw	zero,308(a0)
     cc8:	ac8f0004 	sw	t7,4(a0)
     ccc:	a498019c 	sh	t8,412(a0)
     cd0:	a0990199 	sb	t9,409(a0)
     cd4:	a08802c0 	sb	t0,704(a0)
     cd8:	a08a02bd 	sb	t2,701(a0)
     cdc:	8fab0064 	lw	t3,100(sp)
     ce0:	3c060000 	lui	a2,0x0
     ce4:	00808025 	move	s0,a0
     ce8:	11600024 	beqz	t3,d7c <func_80AD9C24+0xe8>
     cec:	24c60000 	addiu	a2,a2,0
     cf0:	c4840024 	lwc1	$f4,36(a0)
     cf4:	3c014234 	lui	at,0x4234
     cf8:	44814000 	mtc1	at,$f8
     cfc:	e7a40054 	swc1	$f4,84(sp)
     d00:	c4860028 	lwc1	$f6,40(a0)
     d04:	240c0096 	li	t4,150
     d08:	240d00ff 	li	t5,255
     d0c:	46083280 	add.s	$f10,$f6,$f8
     d10:	240e00ff 	li	t6,255
     d14:	240f00ff 	li	t7,255
     d18:	2418009b 	li	t8,155
     d1c:	e7aa0058 	swc1	$f10,88(sp)
     d20:	c490002c 	lwc1	$f16,44(a0)
     d24:	01602025 	move	a0,t3
     d28:	240b0009 	li	t3,9
     d2c:	24190096 	li	t9,150
     d30:	24080096 	li	t0,150
     d34:	24090096 	li	t1,150
     d38:	240a0001 	li	t2,1
     d3c:	afaa0034 	sw	t2,52(sp)
     d40:	afa90030 	sw	t1,48(sp)
     d44:	afa8002c 	sw	t0,44(sp)
     d48:	afb90028 	sw	t9,40(sp)
     d4c:	afab0038 	sw	t3,56(sp)
     d50:	afa0003c 	sw	zero,60(sp)
     d54:	afb80024 	sw	t8,36(sp)
     d58:	afaf0020 	sw	t7,32(sp)
     d5c:	afae001c 	sw	t6,28(sp)
     d60:	afad0018 	sw	t5,24(sp)
     d64:	afa00014 	sw	zero,20(sp)
     d68:	afac0010 	sw	t4,16(sp)
     d6c:	27a50054 	addiu	a1,sp,84
     d70:	00c03825 	move	a3,a2
     d74:	0c000000 	jal	0 <EnPoSisters_Init>
     d78:	e7b0005c 	swc1	$f16,92(sp)
     d7c:	2604029c 	addiu	a0,s0,668
     d80:	00002825 	move	a1,zero
     d84:	00003025 	move	a2,zero
     d88:	00003825 	move	a3,zero
     d8c:	0c000000 	jal	0 <EnPoSisters_Init>
     d90:	afa00010 	sw	zero,16(sp)
     d94:	3c0c0000 	lui	t4,0x0
     d98:	258c0000 	addiu	t4,t4,0
     d9c:	ae0c0190 	sw	t4,400(s0)
     da0:	8fbf004c 	lw	ra,76(sp)
     da4:	8fb00048 	lw	s0,72(sp)
     da8:	27bd0060 	addiu	sp,sp,96
     dac:	03e00008 	jr	ra
     db0:	00000000 	nop

00000db4 <func_80AD9D44>:
     db4:	27bdffd0 	addiu	sp,sp,-48
     db8:	afbf002c 	sw	ra,44(sp)
     dbc:	afb00028 	sw	s0,40(sp)
     dc0:	908e0194 	lbu	t6,404(a0)
     dc4:	00808025 	move	s0,a0
     dc8:	24010003 	li	at,3
     dcc:	15c10009 	bne	t6,at,df4 <func_80AD9D44+0x40>
     dd0:	2484014c 	addiu	a0,a0,332
     dd4:	3c050600 	lui	a1,0x600
     dd8:	0c000000 	jal	0 <EnPoSisters_Init>
     ddc:	24a5119c 	addiu	a1,a1,4508
     de0:	02002025 	move	a0,s0
     de4:	0c000000 	jal	0 <EnPoSisters_Init>
     de8:	24053873 	li	a1,14451
     dec:	10000011 	b	e34 <func_80AD9D44+0x80>
     df0:	00000000 	nop
     df4:	3c040600 	lui	a0,0x600
     df8:	0c000000 	jal	0 <EnPoSisters_Init>
     dfc:	2484119c 	addiu	a0,a0,4508
     e00:	44822000 	mtc1	v0,$f4
     e04:	44800000 	mtc1	zero,$f0
     e08:	3c050600 	lui	a1,0x600
     e0c:	468021a0 	cvt.s.w	$f6,$f4
     e10:	240f0003 	li	t7,3
     e14:	44070000 	mfc1	a3,$f0
     e18:	afaf0014 	sw	t7,20(sp)
     e1c:	24a5119c 	addiu	a1,a1,4508
     e20:	2604014c 	addiu	a0,s0,332
     e24:	e7a60010 	swc1	$f6,16(sp)
     e28:	3c063f00 	lui	a2,0x3f00
     e2c:	0c000000 	jal	0 <EnPoSisters_Init>
     e30:	e7a00018 	swc1	$f0,24(sp)
     e34:	3c190000 	lui	t9,0x0
     e38:	24180020 	li	t8,32
     e3c:	27390000 	addiu	t9,t9,0
     e40:	a2000231 	sb	zero,561(s0)
     e44:	a2180199 	sb	t8,409(s0)
     e48:	ae190190 	sw	t9,400(s0)
     e4c:	8fbf002c 	lw	ra,44(sp)
     e50:	8fb00028 	lw	s0,40(sp)
     e54:	27bd0030 	addiu	sp,sp,48
     e58:	03e00008 	jr	ra
     e5c:	00000000 	nop

00000e60 <func_80AD9DF0>:
     e60:	27bdffe0 	addiu	sp,sp,-32
     e64:	afa50024 	sw	a1,36(sp)
     e68:	afbf001c 	sw	ra,28(sp)
     e6c:	00803825 	move	a3,a0
     e70:	3c050600 	lui	a1,0x600
     e74:	24a5119c 	addiu	a1,a1,4508
     e78:	afa70020 	sw	a3,32(sp)
     e7c:	2484014c 	addiu	a0,a0,332
     e80:	0c000000 	jal	0 <EnPoSisters_Init>
     e84:	3c06c0a0 	lui	a2,0xc0a0
     e88:	8fa70020 	lw	a3,32(sp)
     e8c:	3c190000 	lui	t9,0x0
     e90:	240e0001 	li	t6,1
     e94:	90ef0199 	lbu	t7,409(a3)
     e98:	27390000 	addiu	t9,t9,0
     e9c:	a0ee0198 	sb	t6,408(a3)
     ea0:	31f8ff7f 	andi	t8,t7,0xff7f
     ea4:	a0f80199 	sb	t8,409(a3)
     ea8:	acf90190 	sw	t9,400(a3)
     eac:	afa00010 	sw	zero,16(sp)
     eb0:	8fa40024 	lw	a0,36(sp)
     eb4:	24050c6c 	li	a1,3180
     eb8:	0c000000 	jal	0 <EnPoSisters_Init>
     ebc:	2406009c 	li	a2,156
     ec0:	8fbf001c 	lw	ra,28(sp)
     ec4:	27bd0020 	addiu	sp,sp,32
     ec8:	03e00008 	jr	ra
     ecc:	00000000 	nop

00000ed0 <func_80AD9E60>:
     ed0:	27bdffe0 	addiu	sp,sp,-32
     ed4:	afb00018 	sw	s0,24(sp)
     ed8:	00808025 	move	s0,a0
     edc:	afbf001c 	sw	ra,28(sp)
     ee0:	3c050600 	lui	a1,0x600
     ee4:	24a50d40 	addiu	a1,a1,3392
     ee8:	2484014c 	addiu	a0,a0,332
     eec:	0c000000 	jal	0 <EnPoSisters_Init>
     ef0:	3c06c040 	lui	a2,0xc040
     ef4:	3c040600 	lui	a0,0x600
     ef8:	0c000000 	jal	0 <EnPoSisters_Init>
     efc:	24840d40 	addiu	a0,a0,3392
     f00:	8e030118 	lw	v1,280(s0)
     f04:	000270c0 	sll	t6,v0,0x3
     f08:	01c27023 	subu	t6,t6,v0
     f0c:	25cf0007 	addiu	t7,t6,7
     f10:	1060000b 	beqz	v1,f40 <func_80AD9E60+0x70>
     f14:	a60f019a 	sh	t7,410(s0)
     f18:	8c790024 	lw	t9,36(v1)
     f1c:	8e080118 	lw	t0,280(s0)
     f20:	ae190024 	sw	t9,36(s0)
     f24:	8c780028 	lw	t8,40(v1)
     f28:	ae180028 	sw	t8,40(s0)
     f2c:	8c79002c 	lw	t9,44(v1)
     f30:	ae19002c 	sw	t9,44(s0)
     f34:	850900b6 	lh	t1,182(t0)
     f38:	10000006 	b	f54 <func_80AD9E60+0x84>
     f3c:	a60900b6 	sh	t1,182(s0)
     f40:	860b019a 	lh	t3,410(s0)
     f44:	860a008a 	lh	t2,138(s0)
     f48:	256c0001 	addiu	t4,t3,1
     f4c:	a60c019a 	sh	t4,410(s0)
     f50:	a60a00b6 	sh	t2,182(s0)
     f54:	920d0195 	lbu	t5,405(s0)
     f58:	02002025 	move	a0,s0
     f5c:	15a00003 	bnez	t5,f6c <func_80AD9E60+0x9c>
     f60:	00000000 	nop
     f64:	0c000000 	jal	0 <EnPoSisters_Init>
     f68:	240538ef 	li	a1,14575
     f6c:	3c0e0000 	lui	t6,0x0
     f70:	25ce0000 	addiu	t6,t6,0
     f74:	ae0e0190 	sw	t6,400(s0)
     f78:	8fbf001c 	lw	ra,28(sp)
     f7c:	8fb00018 	lw	s0,24(sp)
     f80:	27bd0020 	addiu	sp,sp,32
     f84:	03e00008 	jr	ra
     f88:	00000000 	nop

00000f8c <func_80AD9F1C>:
     f8c:	27bdffe8 	addiu	sp,sp,-24
     f90:	afbf0014 	sw	ra,20(sp)
     f94:	00803825 	move	a3,a0
     f98:	3c050600 	lui	a1,0x600
     f9c:	24a50d40 	addiu	a1,a1,3392
     fa0:	afa70018 	sw	a3,24(sp)
     fa4:	2484014c 	addiu	a0,a0,332
     fa8:	0c000000 	jal	0 <EnPoSisters_Init>
     fac:	3c06c040 	lui	a2,0xc040
     fb0:	8fa70018 	lw	a3,24(sp)
     fb4:	3c0b0000 	lui	t3,0x0
     fb8:	240e00ff 	li	t6,255
     fbc:	90f90199 	lbu	t9,409(a3)
     fc0:	8ce90004 	lw	t1,4(a3)
     fc4:	240f012c 	li	t7,300
     fc8:	24180003 	li	t8,3
     fcc:	256b0000 	addiu	t3,t3,0
     fd0:	37280009 	ori	t0,t9,0x9
     fd4:	352a0001 	ori	t2,t1,0x1
     fd8:	a0ee0231 	sb	t6,561(a3)
     fdc:	a4ef019a 	sh	t7,410(a3)
     fe0:	a4f8019c 	sh	t8,412(a3)
     fe4:	a0e80199 	sb	t0,409(a3)
     fe8:	acea0004 	sw	t2,4(a3)
     fec:	aceb0190 	sw	t3,400(a3)
     ff0:	8fbf0014 	lw	ra,20(sp)
     ff4:	27bd0018 	addiu	sp,sp,24
     ff8:	03e00008 	jr	ra
     ffc:	00000000 	nop

00001000 <func_80AD9F90>:
    1000:	27bdffe8 	addiu	sp,sp,-24
    1004:	afbf0014 	sw	ra,20(sp)
    1008:	908e0194 	lbu	t6,404(a0)
    100c:	24010001 	li	at,1
    1010:	00803025 	move	a2,a0
    1014:	15c10008 	bne	t6,at,1038 <func_80AD9F90+0x38>
    1018:	3c050600 	lui	a1,0x600
    101c:	3c01c41e 	lui	at,0xc41e
    1020:	44812000 	mtc1	at,$f4
    1024:	3c01c557 	lui	at,0xc557
    1028:	44813000 	mtc1	at,$f6
    102c:	e4840008 	swc1	$f4,8(a0)
    1030:	10000007 	b	1050 <func_80AD9F90+0x50>
    1034:	e4860010 	swc1	$f6,16(a0)
    1038:	3c01443c 	lui	at,0x443c
    103c:	44814000 	mtc1	at,$f8
    1040:	3c01c557 	lui	at,0xc557
    1044:	44815000 	mtc1	at,$f10
    1048:	e4c80008 	swc1	$f8,8(a2)
    104c:	e4ca0010 	swc1	$f10,16(a2)
    1050:	24c4014c 	addiu	a0,a2,332
    1054:	24a50d40 	addiu	a1,a1,3392
    1058:	0c000000 	jal	0 <EnPoSisters_Init>
    105c:	afa60018 	sw	a2,24(sp)
    1060:	8fa60018 	lw	a2,24(sp)
    1064:	3c0140a0 	lui	at,0x40a0
    1068:	44818000 	mtc1	at,$f16
    106c:	90cf0199 	lbu	t7,409(a2)
    1070:	3c190000 	lui	t9,0x0
    1074:	27390000 	addiu	t9,t9,0
    1078:	35f8000a 	ori	t8,t7,0xa
    107c:	a0d80199 	sb	t8,409(a2)
    1080:	acd90190 	sw	t9,400(a2)
    1084:	e4d00068 	swc1	$f16,104(a2)
    1088:	8fbf0014 	lw	ra,20(sp)
    108c:	27bd0018 	addiu	sp,sp,24
    1090:	03e00008 	jr	ra
    1094:	00000000 	nop

00001098 <func_80ADA028>:
    1098:	27bdffe8 	addiu	sp,sp,-24
    109c:	afbf0014 	sw	ra,20(sp)
    10a0:	00803825 	move	a3,a0
    10a4:	3c050600 	lui	a1,0x600
    10a8:	24a514cc 	addiu	a1,a1,5324
    10ac:	afa70018 	sw	a3,24(sp)
    10b0:	2484014c 	addiu	a0,a0,332
    10b4:	0c000000 	jal	0 <EnPoSisters_Init>
    10b8:	3c06c040 	lui	a2,0xc040
    10bc:	8fa70018 	lw	a3,24(sp)
    10c0:	44802000 	mtc1	zero,$f4
    10c4:	3c090000 	lui	t1,0x0
    10c8:	90ef0199 	lbu	t7,409(a3)
    10cc:	8cf90004 	lw	t9,4(a3)
    10d0:	240e00ff 	li	t6,255
    10d4:	25290000 	addiu	t1,t1,0
    10d8:	35f80015 	ori	t8,t7,0x15
    10dc:	37280001 	ori	t0,t9,0x1
    10e0:	a0ee0231 	sb	t6,561(a3)
    10e4:	a0f80199 	sb	t8,409(a3)
    10e8:	ace80004 	sw	t0,4(a3)
    10ec:	ace90190 	sw	t1,400(a3)
    10f0:	e4e40068 	swc1	$f4,104(a3)
    10f4:	8fbf0014 	lw	ra,20(sp)
    10f8:	27bd0018 	addiu	sp,sp,24
    10fc:	03e00008 	jr	ra
    1100:	00000000 	nop

00001104 <func_80ADA094>:
    1104:	27bdffe8 	addiu	sp,sp,-24
    1108:	3c010000 	lui	at,0x0
    110c:	afbf0014 	sw	ra,20(sp)
    1110:	afa5001c 	sw	a1,28(sp)
    1114:	ac200000 	sw	zero,0(at)
    1118:	8c990008 	lw	t9,8(a0)
    111c:	8c98000c 	lw	t8,12(a0)
    1120:	240e0080 	li	t6,128
    1124:	ac990234 	sw	t9,564(a0)
    1128:	8c990010 	lw	t9,16(a0)
    112c:	240f0032 	li	t7,50
    1130:	00803025 	move	a2,a0
    1134:	a0800231 	sb	zero,561(a0)
    1138:	a08e0199 	sb	t6,409(a0)
    113c:	a48f019a 	sh	t7,410(a0)
    1140:	ac980238 	sw	t8,568(a0)
    1144:	ac99023c 	sw	t9,572(a0)
    1148:	8fa4001c 	lw	a0,28(sp)
    114c:	afa60018 	sw	a2,24(sp)
    1150:	24070006 	li	a3,6
    1154:	0c000000 	jal	0 <EnPoSisters_Init>
    1158:	24851c24 	addiu	a1,a0,7204
    115c:	8fa60018 	lw	a2,24(sp)
    1160:	3c090000 	lui	t1,0x0
    1164:	25290000 	addiu	t1,t1,0
    1168:	acc90190 	sw	t1,400(a2)
    116c:	8fbf0014 	lw	ra,20(sp)
    1170:	27bd0018 	addiu	sp,sp,24
    1174:	03e00008 	jr	ra
    1178:	00000000 	nop

0000117c <func_80ADA10C>:
    117c:	240e0008 	li	t6,8
    1180:	a08e0198 	sb	t6,408(a0)
    1184:	00001025 	move	v0,zero
    1188:	24850234 	addiu	a1,a0,564
    118c:	24860234 	addiu	a2,a0,564
    1190:	24870240 	addiu	a3,a0,576
    1194:	2488024c 	addiu	t0,a0,588
    1198:	24890258 	addiu	t1,a0,600
    119c:	24030008 	li	v1,8
    11a0:	8cd80000 	lw	t8,0(a2)
    11a4:	24420004 	addiu	v0,v0,4
    11a8:	24a50030 	addiu	a1,a1,48
    11ac:	acb8ffd0 	sw	t8,-48(a1)
    11b0:	8ccf0004 	lw	t7,4(a2)
    11b4:	24e70030 	addiu	a3,a3,48
    11b8:	25080030 	addiu	t0,t0,48
    11bc:	acafffd4 	sw	t7,-44(a1)
    11c0:	8cd80008 	lw	t8,8(a2)
    11c4:	25290030 	addiu	t1,t1,48
    11c8:	acb8ffd8 	sw	t8,-40(a1)
    11cc:	8cca0000 	lw	t2,0(a2)
    11d0:	aceaffd0 	sw	t2,-48(a3)
    11d4:	8cd90004 	lw	t9,4(a2)
    11d8:	acf9ffd4 	sw	t9,-44(a3)
    11dc:	8cca0008 	lw	t2,8(a2)
    11e0:	aceaffd8 	sw	t2,-40(a3)
    11e4:	8ccc0000 	lw	t4,0(a2)
    11e8:	ad0cffd0 	sw	t4,-48(t0)
    11ec:	8ccb0004 	lw	t3,4(a2)
    11f0:	ad0bffd4 	sw	t3,-44(t0)
    11f4:	8ccc0008 	lw	t4,8(a2)
    11f8:	ad0cffd8 	sw	t4,-40(t0)
    11fc:	8cce0000 	lw	t6,0(a2)
    1200:	ad2effd0 	sw	t6,-48(t1)
    1204:	8ccd0004 	lw	t5,4(a2)
    1208:	ad2dffd4 	sw	t5,-44(t1)
    120c:	8cce0008 	lw	t6,8(a2)
    1210:	1443ffe3 	bne	v0,v1,11a0 <func_80ADA10C+0x24>
    1214:	ad2effd8 	sw	t6,-40(t1)
    1218:	3c0f0000 	lui	t7,0x0
    121c:	25ef0000 	addiu	t7,t7,0
    1220:	03e00008 	jr	ra
    1224:	ac8f0190 	sw	t7,400(a0)

00001228 <func_80ADA1B8>:
    1228:	27bdffd0 	addiu	sp,sp,-48
    122c:	afb00028 	sw	s0,40(sp)
    1230:	00808025 	move	s0,a0
    1234:	afbf002c 	sw	ra,44(sp)
    1238:	3c040600 	lui	a0,0x600
    123c:	0c000000 	jal	0 <EnPoSisters_Init>
    1240:	2484119c 	addiu	a0,a0,4508
    1244:	44822000 	mtc1	v0,$f4
    1248:	44800000 	mtc1	zero,$f0
    124c:	3c050600 	lui	a1,0x600
    1250:	468021a0 	cvt.s.w	$f6,$f4
    1254:	3c063f55 	lui	a2,0x3f55
    1258:	240e0003 	li	t6,3
    125c:	44070000 	mfc1	a3,$f0
    1260:	afae0014 	sw	t6,20(sp)
    1264:	34c63f7d 	ori	a2,a2,0x3f7d
    1268:	e7a60010 	swc1	$f6,16(sp)
    126c:	24a5119c 	addiu	a1,a1,4508
    1270:	2604014c 	addiu	a0,s0,332
    1274:	0c000000 	jal	0 <EnPoSisters_Init>
    1278:	e7a00018 	swc1	$f0,24(sp)
    127c:	92020194 	lbu	v0,404(s0)
    1280:	3c190000 	lui	t9,0x0
    1284:	24010001 	li	at,1
    1288:	10400003 	beqz	v0,1298 <func_80ADA1B8+0x70>
    128c:	27390000 	addiu	t9,t9,0
    1290:	14410004 	bne	v0,at,12a4 <func_80ADA1B8+0x7c>
    1294:	2418004c 	li	t8,76
    1298:	240f0028 	li	t7,40
    129c:	10000002 	b	12a8 <func_80ADA1B8+0x80>
    12a0:	a60f019a 	sh	t7,410(s0)
    12a4:	a618019a 	sh	t8,410(s0)
    12a8:	a2000198 	sb	zero,408(s0)
    12ac:	3c010000 	lui	at,0x0
    12b0:	ac200000 	sw	zero,0(at)
    12b4:	ae190190 	sw	t9,400(s0)
    12b8:	8fbf002c 	lw	ra,44(sp)
    12bc:	8fb00028 	lw	s0,40(sp)
    12c0:	27bd0030 	addiu	sp,sp,48
    12c4:	03e00008 	jr	ra
    12c8:	00000000 	nop

000012cc <func_80ADA25C>:
    12cc:	27bdffe8 	addiu	sp,sp,-24
    12d0:	afbf0014 	sw	ra,20(sp)
    12d4:	00803825 	move	a3,a0
    12d8:	3c050600 	lui	a1,0x600
    12dc:	24a514cc 	addiu	a1,a1,5324
    12e0:	afa70018 	sw	a3,24(sp)
    12e4:	0c000000 	jal	0 <EnPoSisters_Init>
    12e8:	2484014c 	addiu	a0,a0,332
    12ec:	8fa40018 	lw	a0,24(sp)
    12f0:	240f0020 	li	t7,32
    12f4:	240e0008 	li	t6,8
    12f8:	a48f019a 	sh	t7,410(a0)
    12fc:	a08e0198 	sb	t6,408(a0)
    1300:	8485019a 	lh	a1,410(a0)
    1304:	0c000000 	jal	0 <EnPoSisters_Init>
    1308:	24860008 	addiu	a2,a0,8
    130c:	8fa70018 	lw	a3,24(sp)
    1310:	3c180000 	lui	t8,0x0
    1314:	27180000 	addiu	t8,t8,0
    1318:	acf80190 	sw	t8,400(a3)
    131c:	8fbf0014 	lw	ra,20(sp)
    1320:	27bd0018 	addiu	sp,sp,24
    1324:	03e00008 	jr	ra
    1328:	00000000 	nop

0000132c <func_80ADA2BC>:
    132c:	27bdffe0 	addiu	sp,sp,-32
    1330:	afb00018 	sw	s0,24(sp)
    1334:	afa50024 	sw	a1,36(sp)
    1338:	00808025 	move	s0,a0
    133c:	afbf001c 	sw	ra,28(sp)
    1340:	3c050600 	lui	a1,0x600
    1344:	24a50d40 	addiu	a1,a1,3392
    1348:	2484014c 	addiu	a0,a0,332
    134c:	0c000000 	jal	0 <EnPoSisters_Init>
    1350:	3c06c040 	lui	a2,0xc040
    1354:	92020194 	lbu	v0,404(s0)
    1358:	240e0028 	li	t6,40
    135c:	240f005a 	li	t7,90
    1360:	24180020 	li	t8,32
    1364:	3c080000 	lui	t0,0x0
    1368:	0002c840 	sll	t9,v0,0x1
    136c:	a2000198 	sb	zero,408(s0)
    1370:	a20e0199 	sb	t6,409(s0)
    1374:	a60f019a 	sh	t7,410(s0)
    1378:	a2180196 	sb	t8,406(s0)
    137c:	01194021 	addu	t0,t0,t9
    1380:	85080000 	lh	t0,0(t0)
    1384:	c6040028 	lwc1	$f4,40(s0)
    1388:	2405001b 	li	a1,27
    138c:	a6080032 	sh	t0,50(s0)
    1390:	14400003 	bnez	v0,13a0 <func_80ADA2BC+0x74>
    1394:	e604000c 	swc1	$f4,12(s0)
    1398:	0c000000 	jal	0 <EnPoSisters_Init>
    139c:	8fa40024 	lw	a0,36(sp)
    13a0:	02002025 	move	a0,s0
    13a4:	0c000000 	jal	0 <EnPoSisters_Init>
    13a8:	24052822 	li	a1,10274
    13ac:	3c090000 	lui	t1,0x0
    13b0:	25290000 	addiu	t1,t1,0
    13b4:	ae090190 	sw	t1,400(s0)
    13b8:	8fbf001c 	lw	ra,28(sp)
    13bc:	8fb00018 	lw	s0,24(sp)
    13c0:	27bd0020 	addiu	sp,sp,32
    13c4:	03e00008 	jr	ra
    13c8:	00000000 	nop

000013cc <func_80ADA35C>:
    13cc:	27bdffd0 	addiu	sp,sp,-48
    13d0:	afbf001c 	sw	ra,28(sp)
    13d4:	afb00018 	sw	s0,24(sp)
    13d8:	8c8f0190 	lw	t7,400(a0)
    13dc:	3c0e0000 	lui	t6,0x0
    13e0:	25ce0000 	addiu	t6,t6,0
    13e4:	00808025 	move	s0,a0
    13e8:	15cf0003 	bne	t6,t7,13f8 <func_80ADA35C+0x2c>
    13ec:	8ca31c44 	lw	v1,7236(a1)
    13f0:	1000000e 	b	142c <func_80ADA35C+0x60>
    13f4:	c480000c 	lwc1	$f0,12(a0)
    13f8:	92020194 	lbu	v0,404(s0)
    13fc:	24010003 	li	at,3
    1400:	50400003 	beqzl	v0,1410 <func_80ADA35C+0x44>
    1404:	3c0140a0 	lui	at,0x40a0
    1408:	14410005 	bne	v0,at,1420 <func_80ADA35C+0x54>
    140c:	3c0140a0 	lui	at,0x40a0
    1410:	44813000 	mtc1	at,$f6
    1414:	c4640028 	lwc1	$f4,40(v1)
    1418:	10000004 	b	142c <func_80ADA35C+0x60>
    141c:	46062000 	add.s	$f0,$f4,$f6
    1420:	3c014450 	lui	at,0x4450
    1424:	44810000 	mtc1	at,$f0
    1428:	00000000 	nop
    142c:	44050000 	mfc1	a1,$f0
    1430:	26040028 	addiu	a0,s0,40
    1434:	3c063f00 	lui	a2,0x3f00
    1438:	0c000000 	jal	0 <EnPoSisters_Init>
    143c:	3c074040 	lui	a3,0x4040
    1440:	92020196 	lbu	v0,406(s0)
    1444:	24180020 	li	t8,32
    1448:	14400003 	bnez	v0,1458 <func_80ADA35C+0x8c>
    144c:	00000000 	nop
    1450:	a2180196 	sb	t8,406(s0)
    1454:	330200ff 	andi	v0,t8,0xff
    1458:	10400004 	beqz	v0,146c <func_80ADA35C+0xa0>
    145c:	00401825 	move	v1,v0
    1460:	2459ffff 	addiu	t9,v0,-1
    1464:	a2190196 	sb	t9,406(s0)
    1468:	332300ff 	andi	v1,t9,0xff
    146c:	00602025 	move	a0,v1
    1470:	000426c0 	sll	a0,a0,0x1b
    1474:	0c000000 	jal	0 <EnPoSisters_Init>
    1478:	00042403 	sra	a0,a0,0x10
    147c:	0c000000 	jal	0 <EnPoSisters_Init>
    1480:	e7a00020 	swc1	$f0,32(sp)
    1484:	3c014000 	lui	at,0x4000
    1488:	44814000 	mtc1	at,$f8
    148c:	3c013f00 	lui	at,0x3f00
    1490:	44815000 	mtc1	at,$f10
    1494:	c7a40020 	lwc1	$f4,32(sp)
    1498:	92080231 	lbu	t0,561(s0)
    149c:	46005402 	mul.s	$f16,$f10,$f0
    14a0:	c60a0028 	lwc1	$f10,40(s0)
    14a4:	240100ff 	li	at,255
    14a8:	46104480 	add.s	$f18,$f8,$f16
    14ac:	46049182 	mul.s	$f6,$f18,$f4
    14b0:	46065200 	add.s	$f8,$f10,$f6
    14b4:	15010013 	bne	t0,at,1504 <func_80ADA35C+0x138>
    14b8:	e6080028 	swc1	$f8,40(s0)
    14bc:	8e020190 	lw	v0,400(s0)
    14c0:	3c090000 	lui	t1,0x0
    14c4:	25290000 	addiu	t1,t1,0
    14c8:	1122000e 	beq	t1,v0,1504 <func_80ADA35C+0x138>
    14cc:	3c0a0000 	lui	t2,0x0
    14d0:	254a0000 	addiu	t2,t2,0
    14d4:	1142000b 	beq	t2,v0,1504 <func_80ADA35C+0x138>
    14d8:	3c0b0000 	lui	t3,0x0
    14dc:	256b0000 	addiu	t3,t3,0
    14e0:	15620006 	bne	t3,v0,14fc <func_80ADA35C+0x130>
    14e4:	02002025 	move	a0,s0
    14e8:	02002025 	move	a0,s0
    14ec:	0c000000 	jal	0 <EnPoSisters_Init>
    14f0:	24053072 	li	a1,12402
    14f4:	10000004 	b	1508 <func_80ADA35C+0x13c>
    14f8:	8fbf001c 	lw	ra,28(sp)
    14fc:	0c000000 	jal	0 <EnPoSisters_Init>
    1500:	24053071 	li	a1,12401
    1504:	8fbf001c 	lw	ra,28(sp)
    1508:	8fb00018 	lw	s0,24(sp)
    150c:	27bd0030 	addiu	sp,sp,48
    1510:	03e00008 	jr	ra
    1514:	00000000 	nop

00001518 <func_80ADA4A8>:
    1518:	27bdffe0 	addiu	sp,sp,-32
    151c:	00803025 	move	a2,a0
    1520:	afbf0014 	sw	ra,20(sp)
    1524:	2484014c 	addiu	a0,a0,332
    1528:	afa50024 	sw	a1,36(sp)
    152c:	afa4001c 	sw	a0,28(sp)
    1530:	0c000000 	jal	0 <EnPoSisters_Init>
    1534:	afa60020 	sw	a2,32(sp)
    1538:	8fa4001c 	lw	a0,28(sp)
    153c:	0c000000 	jal	0 <EnPoSisters_Init>
    1540:	24050000 	li	a1,0
    1544:	10400005 	beqz	v0,155c <func_80ADA4A8+0x44>
    1548:	8fa60020 	lw	a2,32(sp)
    154c:	84c2019a 	lh	v0,410(a2)
    1550:	10400002 	beqz	v0,155c <func_80ADA4A8+0x44>
    1554:	244effff 	addiu	t6,v0,-1
    1558:	a4ce019a 	sh	t6,410(a2)
    155c:	84cf019a 	lh	t7,410(a2)
    1560:	3c014348 	lui	at,0x4348
    1564:	11e00008 	beqz	t7,1588 <func_80ADA4A8+0x70>
    1568:	00000000 	nop
    156c:	c4c40090 	lwc1	$f4,144(a2)
    1570:	44813000 	mtc1	at,$f6
    1574:	00000000 	nop
    1578:	4606203c 	c.lt.s	$f4,$f6
    157c:	00000000 	nop
    1580:	45020004 	bc1fl	1594 <func_80ADA4A8+0x7c>
    1584:	8fbf0014 	lw	ra,20(sp)
    1588:	0c000000 	jal	0 <EnPoSisters_Init>
    158c:	00c02025 	move	a0,a2
    1590:	8fbf0014 	lw	ra,20(sp)
    1594:	27bd0020 	addiu	sp,sp,32
    1598:	03e00008 	jr	ra
    159c:	00000000 	nop

000015a0 <func_80ADA530>:
    15a0:	27bdffd0 	addiu	sp,sp,-48
    15a4:	afb00018 	sw	s0,24(sp)
    15a8:	00808025 	move	s0,a0
    15ac:	afbf001c 	sw	ra,28(sp)
    15b0:	2484014c 	addiu	a0,a0,332
    15b4:	afa50034 	sw	a1,52(sp)
    15b8:	0c000000 	jal	0 <EnPoSisters_Init>
    15bc:	afa40028 	sw	a0,40(sp)
    15c0:	26040068 	addiu	a0,s0,104
    15c4:	3c063e4c 	lui	a2,0x3e4c
    15c8:	34c6cccd 	ori	a2,a2,0xcccd
    15cc:	afa40024 	sw	a0,36(sp)
    15d0:	0c000000 	jal	0 <EnPoSisters_Init>
    15d4:	3c053f80 	lui	a1,0x3f80
    15d8:	8fa40028 	lw	a0,40(sp)
    15dc:	0c000000 	jal	0 <EnPoSisters_Init>
    15e0:	24050000 	li	a1,0
    15e4:	10400005 	beqz	v0,15fc <func_80ADA530+0x5c>
    15e8:	3c014348 	lui	at,0x4348
    15ec:	8602019a 	lh	v0,410(s0)
    15f0:	10400002 	beqz	v0,15fc <func_80ADA530+0x5c>
    15f4:	244effff 	addiu	t6,v0,-1
    15f8:	a60e019a 	sh	t6,410(s0)
    15fc:	c6040090 	lwc1	$f4,144(s0)
    1600:	44813000 	mtc1	at,$f6
    1604:	3c0140a0 	lui	at,0x40a0
    1608:	4606203c 	c.lt.s	$f4,$f6
    160c:	00000000 	nop
    1610:	45020010 	bc1fl	1654 <func_80ADA530+0xb4>
    1614:	860f019a 	lh	t7,410(s0)
    1618:	c6080094 	lwc1	$f8,148(s0)
    161c:	44815000 	mtc1	at,$f10
    1620:	3c0141f0 	lui	at,0x41f0
    1624:	44818000 	mtc1	at,$f16
    1628:	460a4000 	add.s	$f0,$f8,$f10
    162c:	46000005 	abs.s	$f0,$f0
    1630:	4610003c 	c.lt.s	$f0,$f16
    1634:	00000000 	nop
    1638:	45020006 	bc1fl	1654 <func_80ADA530+0xb4>
    163c:	860f019a 	lh	t7,410(s0)
    1640:	0c000000 	jal	0 <EnPoSisters_Init>
    1644:	02002025 	move	a0,s0
    1648:	1000000d 	b	1680 <func_80ADA530+0xe0>
    164c:	96180088 	lhu	t8,136(s0)
    1650:	860f019a 	lh	t7,410(s0)
    1654:	8fa40024 	lw	a0,36(sp)
    1658:	24050000 	li	a1,0
    165c:	15e00007 	bnez	t7,167c <func_80ADA530+0xdc>
    1660:	3c063e4c 	lui	a2,0x3e4c
    1664:	0c000000 	jal	0 <EnPoSisters_Init>
    1668:	34c6cccd 	ori	a2,a2,0xcccd
    166c:	50400004 	beqzl	v0,1680 <func_80ADA530+0xe0>
    1670:	96180088 	lhu	t8,136(s0)
    1674:	0c000000 	jal	0 <EnPoSisters_Init>
    1678:	02002025 	move	a0,s0
    167c:	96180088 	lhu	t8,136(s0)
    1680:	02002025 	move	a0,s0
    1684:	26050008 	addiu	a1,s0,8
    1688:	33190008 	andi	t9,t8,0x8
    168c:	1320000b 	beqz	t9,16bc <func_80ADA530+0x11c>
    1690:	00000000 	nop
    1694:	02002025 	move	a0,s0
    1698:	0c000000 	jal	0 <EnPoSisters_Init>
    169c:	26050008 	addiu	a1,s0,8
    16a0:	00022c00 	sll	a1,v0,0x10
    16a4:	00052c03 	sra	a1,a1,0x10
    16a8:	26040032 	addiu	a0,s0,50
    16ac:	0c000000 	jal	0 <EnPoSisters_Init>
    16b0:	2406071c 	li	a2,1820
    16b4:	10000012 	b	1700 <func_80ADA530+0x160>
    16b8:	8fbf001c 	lw	ra,28(sp)
    16bc:	0c000000 	jal	0 <EnPoSisters_Init>
    16c0:	afa50028 	sw	a1,40(sp)
    16c4:	3c014396 	lui	at,0x4396
    16c8:	44819000 	mtc1	at,$f18
    16cc:	8fa50028 	lw	a1,40(sp)
    16d0:	4600903c 	c.lt.s	$f18,$f0
    16d4:	00000000 	nop
    16d8:	45020009 	bc1fl	1700 <func_80ADA530+0x160>
    16dc:	8fbf001c 	lw	ra,28(sp)
    16e0:	0c000000 	jal	0 <EnPoSisters_Init>
    16e4:	02002025 	move	a0,s0
    16e8:	00022c00 	sll	a1,v0,0x10
    16ec:	00052c03 	sra	a1,a1,0x10
    16f0:	26040032 	addiu	a0,s0,50
    16f4:	0c000000 	jal	0 <EnPoSisters_Init>
    16f8:	2406071c 	li	a2,1820
    16fc:	8fbf001c 	lw	ra,28(sp)
    1700:	8fb00018 	lw	s0,24(sp)
    1704:	27bd0030 	addiu	sp,sp,48
    1708:	03e00008 	jr	ra
    170c:	00000000 	nop

00001710 <func_80ADA6A0>:
    1710:	27bdffd8 	addiu	sp,sp,-40
    1714:	afbf001c 	sw	ra,28(sp)
    1718:	afb00018 	sw	s0,24(sp)
    171c:	8cae1c44 	lw	t6,7236(a1)
    1720:	00808025 	move	s0,a0
    1724:	2484014c 	addiu	a0,a0,332
    1728:	0c000000 	jal	0 <EnPoSisters_Init>
    172c:	afae0024 	sw	t6,36(sp)
    1730:	8fb80024 	lw	t8,36(sp)
    1734:	860f008a 	lh	t7,138(s0)
    1738:	3c063e4c 	lui	a2,0x3e4c
    173c:	871900b6 	lh	t9,182(t8)
    1740:	34c6cccd 	ori	a2,a2,0xcccd
    1744:	26040068 	addiu	a0,s0,104
    1748:	01f91023 	subu	v0,t7,t9
    174c:	00021400 	sll	v0,v0,0x10
    1750:	00021403 	sra	v0,v0,0x10
    1754:	a7a20022 	sh	v0,34(sp)
    1758:	0c000000 	jal	0 <EnPoSisters_Init>
    175c:	3c054000 	lui	a1,0x4000
    1760:	87a20022 	lh	v0,34(sp)
    1764:	28413001 	slti	at,v0,12289
    1768:	5420000b 	bnezl	at,1798 <func_80ADA6A0+0x88>
    176c:	2841d000 	slti	at,v0,-12288
    1770:	8605008a 	lh	a1,138(s0)
    1774:	26040032 	addiu	a0,s0,50
    1778:	2406071c 	li	a2,1820
    177c:	24a53000 	addiu	a1,a1,12288
    1780:	00052c00 	sll	a1,a1,0x10
    1784:	0c000000 	jal	0 <EnPoSisters_Init>
    1788:	00052c03 	sra	a1,a1,0x10
    178c:	10000011 	b	17d4 <func_80ADA6A0+0xc4>
    1790:	3c014320 	lui	at,0x4320
    1794:	2841d000 	slti	at,v0,-12288
    1798:	1020000a 	beqz	at,17c4 <func_80ADA6A0+0xb4>
    179c:	26040032 	addiu	a0,s0,50
    17a0:	8605008a 	lh	a1,138(s0)
    17a4:	26040032 	addiu	a0,s0,50
    17a8:	2406071c 	li	a2,1820
    17ac:	24a5d000 	addiu	a1,a1,-12288
    17b0:	00052c00 	sll	a1,a1,0x10
    17b4:	0c000000 	jal	0 <EnPoSisters_Init>
    17b8:	00052c03 	sra	a1,a1,0x10
    17bc:	10000005 	b	17d4 <func_80ADA6A0+0xc4>
    17c0:	3c014320 	lui	at,0x4320
    17c4:	8605008a 	lh	a1,138(s0)
    17c8:	0c000000 	jal	0 <EnPoSisters_Init>
    17cc:	2406071c 	li	a2,1820
    17d0:	3c014320 	lui	at,0x4320
    17d4:	44812000 	mtc1	at,$f4
    17d8:	c6020090 	lwc1	$f2,144(s0)
    17dc:	3c0140a0 	lui	at,0x40a0
    17e0:	4604103c 	c.lt.s	$f2,$f4
    17e4:	00000000 	nop
    17e8:	45020010 	bc1fl	182c <func_80ADA6A0+0x11c>
    17ec:	3c014370 	lui	at,0x4370
    17f0:	c6060094 	lwc1	$f6,148(s0)
    17f4:	44814000 	mtc1	at,$f8
    17f8:	3c0141f0 	lui	at,0x41f0
    17fc:	44815000 	mtc1	at,$f10
    1800:	46083000 	add.s	$f0,$f6,$f8
    1804:	46000005 	abs.s	$f0,$f0
    1808:	460a003c 	c.lt.s	$f0,$f10
    180c:	00000000 	nop
    1810:	45020006 	bc1fl	182c <func_80ADA6A0+0x11c>
    1814:	3c014370 	lui	at,0x4370
    1818:	0c000000 	jal	0 <EnPoSisters_Init>
    181c:	02002025 	move	a0,s0
    1820:	1000000b 	b	1850 <func_80ADA6A0+0x140>
    1824:	8fbf001c 	lw	ra,28(sp)
    1828:	3c014370 	lui	at,0x4370
    182c:	44818000 	mtc1	at,$f16
    1830:	00000000 	nop
    1834:	4602803c 	c.lt.s	$f16,$f2
    1838:	00000000 	nop
    183c:	45020004 	bc1fl	1850 <func_80ADA6A0+0x140>
    1840:	8fbf001c 	lw	ra,28(sp)
    1844:	0c000000 	jal	0 <EnPoSisters_Init>
    1848:	02002025 	move	a0,s0
    184c:	8fbf001c 	lw	ra,28(sp)
    1850:	8fb00018 	lw	s0,24(sp)
    1854:	27bd0028 	addiu	sp,sp,40
    1858:	03e00008 	jr	ra
    185c:	00000000 	nop

00001860 <func_80ADA7F0>:
    1860:	27bdffe8 	addiu	sp,sp,-24
    1864:	afbf0014 	sw	ra,20(sp)
    1868:	00803025 	move	a2,a0
    186c:	afa5001c 	sw	a1,28(sp)
    1870:	afa60018 	sw	a2,24(sp)
    1874:	0c000000 	jal	0 <EnPoSisters_Init>
    1878:	2484014c 	addiu	a0,a0,332
    187c:	8fa60018 	lw	a2,24(sp)
    1880:	3c013f80 	lui	at,0x3f80
    1884:	44813000 	mtc1	at,$f6
    1888:	84c2019a 	lh	v0,410(a2)
    188c:	3c014040 	lui	at,0x4040
    1890:	00c02025 	move	a0,a2
    1894:	10400003 	beqz	v0,18a4 <func_80ADA7F0+0x44>
    1898:	244effff 	addiu	t6,v0,-1
    189c:	a4ce019a 	sh	t6,410(a2)
    18a0:	84c2019a 	lh	v0,410(a2)
    18a4:	c4c4015c 	lwc1	$f4,348(a2)
    18a8:	44815000 	mtc1	at,$f10
    18ac:	44829000 	mtc1	v0,$f18
    18b0:	46062200 	add.s	$f8,$f4,$f6
    18b4:	84cf00b6 	lh	t7,182(a2)
    18b8:	3c0143c0 	lui	at,0x43c0
    18bc:	46809120 	cvt.s.w	$f4,$f18
    18c0:	460a4402 	mul.s	$f16,$f8,$f10
    18c4:	44814000 	mtc1	at,$f8
    18c8:	448f9000 	mtc1	t7,$f18
    18cc:	24010012 	li	at,18
    18d0:	240538ee 	li	a1,14574
    18d4:	46048181 	sub.s	$f6,$f16,$f4
    18d8:	46809420 	cvt.s.w	$f16,$f18
    18dc:	46064282 	mul.s	$f10,$f8,$f6
    18e0:	460a8100 	add.s	$f4,$f16,$f10
    18e4:	4600220d 	trunc.w.s	$f8,$f4
    18e8:	44194000 	mfc1	t9,$f8
    18ec:	10410004 	beq	v0,at,1900 <func_80ADA7F0+0xa0>
    18f0:	a4d900b6 	sh	t9,182(a2)
    18f4:	24010007 	li	at,7
    18f8:	14410005 	bne	v0,at,1910 <func_80ADA7F0+0xb0>
    18fc:	00000000 	nop
    1900:	0c000000 	jal	0 <EnPoSisters_Init>
    1904:	afa60018 	sw	a2,24(sp)
    1908:	8fa60018 	lw	a2,24(sp)
    190c:	84c2019a 	lh	v0,410(a2)
    1910:	54400004 	bnezl	v0,1924 <func_80ADA7F0+0xc4>
    1914:	8fbf0014 	lw	ra,20(sp)
    1918:	0c000000 	jal	0 <EnPoSisters_Init>
    191c:	00c02025 	move	a0,a2
    1920:	8fbf0014 	lw	ra,20(sp)
    1924:	27bd0018 	addiu	sp,sp,24
    1928:	03e00008 	jr	ra
    192c:	00000000 	nop

00001930 <func_80ADA8C0>:
    1930:	27bdffd0 	addiu	sp,sp,-48
    1934:	afb00018 	sw	s0,24(sp)
    1938:	00808025 	move	s0,a0
    193c:	afbf001c 	sw	ra,28(sp)
    1940:	2484014c 	addiu	a0,a0,332
    1944:	afa50034 	sw	a1,52(sp)
    1948:	0c000000 	jal	0 <EnPoSisters_Init>
    194c:	afa40024 	sw	a0,36(sp)
    1950:	8fa40024 	lw	a0,36(sp)
    1954:	0c000000 	jal	0 <EnPoSisters_Init>
    1958:	24050000 	li	a1,0
    195c:	10400005 	beqz	v0,1974 <func_80ADA8C0+0x44>
    1960:	3c0143c0 	lui	at,0x43c0
    1964:	8602019a 	lh	v0,410(s0)
    1968:	10400002 	beqz	v0,1974 <func_80ADA8C0+0x44>
    196c:	244effff 	addiu	t6,v0,-1
    1970:	a60e019a 	sh	t6,410(s0)
    1974:	44812000 	mtc1	at,$f4
    1978:	c606015c 	lwc1	$f6,348(s0)
    197c:	860f00b6 	lh	t7,182(s0)
    1980:	3c014040 	lui	at,0x4040
    1984:	46062202 	mul.s	$f8,$f4,$f6
    1988:	44815000 	mtc1	at,$f10
    198c:	448f9000 	mtc1	t7,$f18
    1990:	8608019a 	lh	t0,410(s0)
    1994:	46809120 	cvt.s.w	$f4,$f18
    1998:	460a4402 	mul.s	$f16,$f8,$f10
    199c:	46102180 	add.s	$f6,$f4,$f16
    19a0:	4600320d 	trunc.w.s	$f8,$f6
    19a4:	44194000 	mfc1	t9,$f8
    19a8:	1500001f 	bnez	t0,1a28 <func_80ADA8C0+0xf8>
    19ac:	a61900b6 	sh	t9,182(s0)
    19b0:	860900b6 	lh	t1,182(s0)
    19b4:	860a0032 	lh	t2,50(s0)
    19b8:	012a1023 	subu	v0,t1,t2
    19bc:	00021400 	sll	v0,v0,0x10
    19c0:	00021403 	sra	v0,v0,0x10
    19c4:	04400003 	bltz	v0,19d4 <func_80ADA8C0+0xa4>
    19c8:	00021823 	negu	v1,v0
    19cc:	10000001 	b	19d4 <func_80ADA8C0+0xa4>
    19d0:	00401825 	move	v1,v0
    19d4:	28611000 	slti	at,v1,4096
    19d8:	50200014 	beqzl	at,1a2c <func_80ADA8C0+0xfc>
    19dc:	8fa40024 	lw	a0,36(sp)
    19e0:	920b0194 	lbu	t3,404(s0)
    19e4:	240c0003 	li	t4,3
    19e8:	02002025 	move	a0,s0
    19ec:	11600009 	beqz	t3,1a14 <func_80ADA8C0+0xe4>
    19f0:	00000000 	nop
    19f4:	920d02bd 	lbu	t5,701(s0)
    19f8:	a20c02c0 	sb	t4,704(s0)
    19fc:	02002025 	move	a0,s0
    1a00:	31aefffb 	andi	t6,t5,0xfffb
    1a04:	0c000000 	jal	0 <EnPoSisters_Init>
    1a08:	a20e02bd 	sb	t6,701(s0)
    1a0c:	10000007 	b	1a2c <func_80ADA8C0+0xfc>
    1a10:	8fa40024 	lw	a0,36(sp)
    1a14:	0c000000 	jal	0 <EnPoSisters_Init>
    1a18:	240538ef 	li	a1,14575
    1a1c:	02002025 	move	a0,s0
    1a20:	0c000000 	jal	0 <EnPoSisters_Init>
    1a24:	8fa50034 	lw	a1,52(sp)
    1a28:	8fa40024 	lw	a0,36(sp)
    1a2c:	0c000000 	jal	0 <EnPoSisters_Init>
    1a30:	3c053f80 	lui	a1,0x3f80
    1a34:	10400003 	beqz	v0,1a44 <func_80ADA8C0+0x114>
    1a38:	02002025 	move	a0,s0
    1a3c:	0c000000 	jal	0 <EnPoSisters_Init>
    1a40:	240538ee 	li	a1,14574
    1a44:	8fbf001c 	lw	ra,28(sp)
    1a48:	8fb00018 	lw	s0,24(sp)
    1a4c:	27bd0030 	addiu	sp,sp,48
    1a50:	03e00008 	jr	ra
    1a54:	00000000 	nop

00001a58 <func_80ADA9E8>:
    1a58:	27bdffe0 	addiu	sp,sp,-32
    1a5c:	afb00018 	sw	s0,24(sp)
    1a60:	00808025 	move	s0,a0
    1a64:	afbf001c 	sw	ra,28(sp)
    1a68:	afa50024 	sw	a1,36(sp)
    1a6c:	0c000000 	jal	0 <EnPoSisters_Init>
    1a70:	2484014c 	addiu	a0,a0,332
    1a74:	3c014120 	lui	at,0x4120
    1a78:	44813000 	mtc1	at,$f6
    1a7c:	c6040068 	lwc1	$f4,104(s0)
    1a80:	860e00b6 	lh	t6,182(s0)
    1a84:	3c014300 	lui	at,0x4300
    1a88:	46062202 	mul.s	$f8,$f4,$f6
    1a8c:	44815000 	mtc1	at,$f10
    1a90:	448e9000 	mtc1	t6,$f18
    1a94:	3c063dcc 	lui	a2,0x3dcc
    1a98:	34c6cccd 	ori	a2,a2,0xcccd
    1a9c:	26040068 	addiu	a0,s0,104
    1aa0:	46809120 	cvt.s.w	$f4,$f18
    1aa4:	460a4402 	mul.s	$f16,$f8,$f10
    1aa8:	24050000 	li	a1,0
    1aac:	46102181 	sub.s	$f6,$f4,$f16
    1ab0:	4600320d 	trunc.w.s	$f8,$f6
    1ab4:	44184000 	mfc1	t8,$f8
    1ab8:	0c000000 	jal	0 <EnPoSisters_Init>
    1abc:	a61800b6 	sh	t8,182(s0)
    1ac0:	50400010 	beqzl	v0,1b04 <func_80ADA9E8+0xac>
    1ac4:	8fbf001c 	lw	ra,28(sp)
    1ac8:	92080194 	lbu	t0,404(s0)
    1acc:	861900b6 	lh	t9,182(s0)
    1ad0:	02002025 	move	a0,s0
    1ad4:	11000005 	beqz	t0,1aec <func_80ADA9E8+0x94>
    1ad8:	a6190032 	sh	t9,50(s0)
    1adc:	0c000000 	jal	0 <EnPoSisters_Init>
    1ae0:	02002025 	move	a0,s0
    1ae4:	10000007 	b	1b04 <func_80ADA9E8+0xac>
    1ae8:	8fbf001c 	lw	ra,28(sp)
    1aec:	0c000000 	jal	0 <EnPoSisters_Init>
    1af0:	240538ef 	li	a1,14575
    1af4:	02002025 	move	a0,s0
    1af8:	0c000000 	jal	0 <EnPoSisters_Init>
    1afc:	8fa50024 	lw	a1,36(sp)
    1b00:	8fbf001c 	lw	ra,28(sp)
    1b04:	8fb00018 	lw	s0,24(sp)
    1b08:	27bd0020 	addiu	sp,sp,32
    1b0c:	03e00008 	jr	ra
    1b10:	00000000 	nop

00001b14 <func_80ADAAA4>:
    1b14:	27bdffe0 	addiu	sp,sp,-32
    1b18:	afb00018 	sw	s0,24(sp)
    1b1c:	00808025 	move	s0,a0
    1b20:	afbf001c 	sw	ra,28(sp)
    1b24:	afa50024 	sw	a1,36(sp)
    1b28:	0c000000 	jal	0 <EnPoSisters_Init>
    1b2c:	2484014c 	addiu	a0,a0,332
    1b30:	50400020 	beqzl	v0,1bb4 <func_80ADAAA4+0xa0>
    1b34:	92020195 	lbu	v0,405(s0)
    1b38:	8e0e0004 	lw	t6,4(s0)
    1b3c:	31cf8000 	andi	t7,t6,0x8000
    1b40:	55e0001c 	bnezl	t7,1bb4 <func_80ADAAA4+0xa0>
    1b44:	92020195 	lbu	v0,405(s0)
    1b48:	921800af 	lbu	t8,175(s0)
    1b4c:	02002025 	move	a0,s0
    1b50:	13000015 	beqz	t8,1ba8 <func_80ADAAA4+0x94>
    1b54:	00000000 	nop
    1b58:	92190194 	lbu	t9,404(s0)
    1b5c:	53200006 	beqzl	t9,1b78 <func_80ADAAA4+0x64>
    1b60:	92080195 	lbu	t0,405(s0)
    1b64:	0c000000 	jal	0 <EnPoSisters_Init>
    1b68:	02002025 	move	a0,s0
    1b6c:	10000011 	b	1bb4 <func_80ADAAA4+0xa0>
    1b70:	92020195 	lbu	v0,405(s0)
    1b74:	92080195 	lbu	t0,405(s0)
    1b78:	00002825 	move	a1,zero
    1b7c:	02002025 	move	a0,s0
    1b80:	11000005 	beqz	t0,1b98 <func_80ADAAA4+0x84>
    1b84:	00000000 	nop
    1b88:	0c000000 	jal	0 <EnPoSisters_Init>
    1b8c:	02002025 	move	a0,s0
    1b90:	10000008 	b	1bb4 <func_80ADAAA4+0xa0>
    1b94:	92020195 	lbu	v0,405(s0)
    1b98:	0c000000 	jal	0 <EnPoSisters_Init>
    1b9c:	8fa50024 	lw	a1,36(sp)
    1ba0:	10000004 	b	1bb4 <func_80ADAAA4+0xa0>
    1ba4:	92020195 	lbu	v0,405(s0)
    1ba8:	0c000000 	jal	0 <EnPoSisters_Init>
    1bac:	8fa50024 	lw	a1,36(sp)
    1bb0:	92020195 	lbu	v0,405(s0)
    1bb4:	24010002 	li	at,2
    1bb8:	260400b6 	addiu	a0,s0,182
    1bbc:	5040003d 	beqzl	v0,1cb4 <func_80ADAAA4+0x1a0>
    1bc0:	920d0194 	lbu	t5,404(s0)
    1bc4:	54410004 	bnel	v0,at,1bd8 <func_80ADAAA4+0xc4>
    1bc8:	24020400 	li	v0,1024
    1bcc:	10000002 	b	1bd8 <func_80ADAAA4+0xc4>
    1bd0:	24020800 	li	v0,2048
    1bd4:	24020400 	li	v0,1024
    1bd8:	8e090118 	lw	t1,280(s0)
    1bdc:	00023400 	sll	a2,v0,0x10
    1be0:	00063403 	sra	a2,a2,0x10
    1be4:	0c000000 	jal	0 <EnPoSisters_Init>
    1be8:	852500b6 	lh	a1,182(t1)
    1bec:	c600015c 	lwc1	$f0,348(s0)
    1bf0:	c6040164 	lwc1	$f4,356(s0)
    1bf4:	3c01437f 	lui	at,0x437f
    1bf8:	44814000 	mtc1	at,$f8
    1bfc:	46040181 	sub.s	$f6,$f0,$f4
    1c00:	240b0001 	li	t3,1
    1c04:	3c014f00 	lui	at,0x4f00
    1c08:	46083282 	mul.s	$f10,$f6,$f8
    1c0c:	46005403 	div.s	$f16,$f10,$f0
    1c10:	444af800 	cfc1	t2,$31
    1c14:	44cbf800 	ctc1	t3,$31
    1c18:	00000000 	nop
    1c1c:	460084a4 	cvt.w.s	$f18,$f16
    1c20:	444bf800 	cfc1	t3,$31
    1c24:	00000000 	nop
    1c28:	316b0078 	andi	t3,t3,0x78
    1c2c:	51600013 	beqzl	t3,1c7c <func_80ADAAA4+0x168>
    1c30:	440b9000 	mfc1	t3,$f18
    1c34:	44819000 	mtc1	at,$f18
    1c38:	240b0001 	li	t3,1
    1c3c:	46128481 	sub.s	$f18,$f16,$f18
    1c40:	44cbf800 	ctc1	t3,$31
    1c44:	00000000 	nop
    1c48:	460094a4 	cvt.w.s	$f18,$f18
    1c4c:	444bf800 	cfc1	t3,$31
    1c50:	00000000 	nop
    1c54:	316b0078 	andi	t3,t3,0x78
    1c58:	15600005 	bnez	t3,1c70 <func_80ADAAA4+0x15c>
    1c5c:	00000000 	nop
    1c60:	440b9000 	mfc1	t3,$f18
    1c64:	3c018000 	lui	at,0x8000
    1c68:	10000007 	b	1c88 <func_80ADAAA4+0x174>
    1c6c:	01615825 	or	t3,t3,at
    1c70:	10000005 	b	1c88 <func_80ADAAA4+0x174>
    1c74:	240bffff 	li	t3,-1
    1c78:	440b9000 	mfc1	t3,$f18
    1c7c:	00000000 	nop
    1c80:	0560fffb 	bltz	t3,1c70 <func_80ADAAA4+0x15c>
    1c84:	00000000 	nop
    1c88:	8e0c0118 	lw	t4,280(s0)
    1c8c:	a20b0231 	sb	t3,561(s0)
    1c90:	44caf800 	ctc1	t2,$31
    1c94:	c5840028 	lwc1	$f4,40(t4)
    1c98:	02002025 	move	a0,s0
    1c9c:	e6040028 	swc1	$f4,40(s0)
    1ca0:	0c000000 	jal	0 <EnPoSisters_Init>
    1ca4:	8fa50024 	lw	a1,36(sp)
    1ca8:	10000009 	b	1cd0 <func_80ADAAA4+0x1bc>
    1cac:	8fbf001c 	lw	ra,28(sp)
    1cb0:	920d0194 	lbu	t5,404(s0)
    1cb4:	26040068 	addiu	a0,s0,104
    1cb8:	24050000 	li	a1,0
    1cbc:	51a00004 	beqzl	t5,1cd0 <func_80ADAAA4+0x1bc>
    1cc0:	8fbf001c 	lw	ra,28(sp)
    1cc4:	0c000000 	jal	0 <EnPoSisters_Init>
    1cc8:	3c063f00 	lui	a2,0x3f00
    1ccc:	8fbf001c 	lw	ra,28(sp)
    1cd0:	8fb00018 	lw	s0,24(sp)
    1cd4:	27bd0020 	addiu	sp,sp,32
    1cd8:	03e00008 	jr	ra
    1cdc:	00000000 	nop

00001ce0 <func_80ADAC70>:
    1ce0:	27bdffd8 	addiu	sp,sp,-40
    1ce4:	afb00018 	sw	s0,24(sp)
    1ce8:	00808025 	move	s0,a0
    1cec:	afbf001c 	sw	ra,28(sp)
    1cf0:	2484014c 	addiu	a0,a0,332
    1cf4:	afa5002c 	sw	a1,44(sp)
    1cf8:	0c000000 	jal	0 <EnPoSisters_Init>
    1cfc:	afa40024 	sw	a0,36(sp)
    1d00:	8605008a 	lh	a1,138(s0)
    1d04:	34018000 	li	at,0x8000
    1d08:	26040032 	addiu	a0,s0,50
    1d0c:	00a12821 	addu	a1,a1,at
    1d10:	00052c00 	sll	a1,a1,0x10
    1d14:	00052c03 	sra	a1,a1,0x10
    1d18:	0c000000 	jal	0 <EnPoSisters_Init>
    1d1c:	2406071c 	li	a2,1820
    1d20:	8fa40024 	lw	a0,36(sp)
    1d24:	0c000000 	jal	0 <EnPoSisters_Init>
    1d28:	24050000 	li	a1,0
    1d2c:	50400006 	beqzl	v0,1d48 <func_80ADAC70+0x68>
    1d30:	960f0088 	lhu	t7,136(s0)
    1d34:	8602019a 	lh	v0,410(s0)
    1d38:	10400002 	beqz	v0,1d44 <func_80ADAC70+0x64>
    1d3c:	244effff 	addiu	t6,v0,-1
    1d40:	a60e019a 	sh	t6,410(s0)
    1d44:	960f0088 	lhu	t7,136(s0)
    1d48:	31f80008 	andi	t8,t7,0x8
    1d4c:	5300000b 	beqzl	t8,1d7c <func_80ADAC70+0x9c>
    1d50:	860a019a 	lh	t2,410(s0)
    1d54:	92080199 	lbu	t0,409(s0)
    1d58:	861900b6 	lh	t9,182(s0)
    1d5c:	02002025 	move	a0,s0
    1d60:	35090002 	ori	t1,t0,0x2
    1d64:	a2090199 	sb	t1,409(s0)
    1d68:	0c000000 	jal	0 <EnPoSisters_Init>
    1d6c:	a6190032 	sh	t9,50(s0)
    1d70:	10000010 	b	1db4 <func_80ADAC70+0xd4>
    1d74:	8fbf001c 	lw	ra,28(sp)
    1d78:	860a019a 	lh	t2,410(s0)
    1d7c:	3c014370 	lui	at,0x4370
    1d80:	5540000c 	bnezl	t2,1db4 <func_80ADAC70+0xd4>
    1d84:	8fbf001c 	lw	ra,28(sp)
    1d88:	44812000 	mtc1	at,$f4
    1d8c:	c6060090 	lwc1	$f6,144(s0)
    1d90:	4606203c 	c.lt.s	$f4,$f6
    1d94:	00000000 	nop
    1d98:	45020006 	bc1fl	1db4 <func_80ADAC70+0xd4>
    1d9c:	8fbf001c 	lw	ra,28(sp)
    1da0:	860b00b6 	lh	t3,182(s0)
    1da4:	02002025 	move	a0,s0
    1da8:	0c000000 	jal	0 <EnPoSisters_Init>
    1dac:	a60b0032 	sh	t3,50(s0)
    1db0:	8fbf001c 	lw	ra,28(sp)
    1db4:	8fb00018 	lw	s0,24(sp)
    1db8:	27bd0028 	addiu	sp,sp,40
    1dbc:	03e00008 	jr	ra
    1dc0:	00000000 	nop

00001dc4 <func_80ADAD54>:
    1dc4:	27bdffe8 	addiu	sp,sp,-24
    1dc8:	afa5001c 	sw	a1,28(sp)
    1dcc:	00802825 	move	a1,a0
    1dd0:	afbf0014 	sw	ra,20(sp)
    1dd4:	afa40018 	sw	a0,24(sp)
    1dd8:	afa50018 	sw	a1,24(sp)
    1ddc:	0c000000 	jal	0 <EnPoSisters_Init>
    1de0:	2484014c 	addiu	a0,a0,332
    1de4:	10400009 	beqz	v0,1e0c <func_80ADAD54+0x48>
    1de8:	8fa50018 	lw	a1,24(sp)
    1dec:	3c0e0006 	lui	t6,0x6
    1df0:	35ce0001 	ori	t6,t6,0x1
    1df4:	a0a00231 	sb	zero,561(a1)
    1df8:	acae02cc 	sw	t6,716(a1)
    1dfc:	0c000000 	jal	0 <EnPoSisters_Init>
    1e00:	00a02025 	move	a0,a1
    1e04:	10000032 	b	1ed0 <func_80ADAD54+0x10c>
    1e08:	8fbf0014 	lw	ra,20(sp)
    1e0c:	c4a4015c 	lwc1	$f4,348(a1)
    1e10:	c4aa0164 	lwc1	$f10,356(a1)
    1e14:	3c01437f 	lui	at,0x437f
    1e18:	4600218d 	trunc.w.s	$f6,$f4
    1e1c:	44819000 	mtc1	at,$f18
    1e20:	24190001 	li	t9,1
    1e24:	3c014f00 	lui	at,0x4f00
    1e28:	44023000 	mfc1	v0,$f6
    1e2c:	00000000 	nop
    1e30:	44824000 	mtc1	v0,$f8
    1e34:	00000000 	nop
    1e38:	46804020 	cvt.s.w	$f0,$f8
    1e3c:	460a0401 	sub.s	$f16,$f0,$f10
    1e40:	46128102 	mul.s	$f4,$f16,$f18
    1e44:	46002183 	div.s	$f6,$f4,$f0
    1e48:	4458f800 	cfc1	t8,$31
    1e4c:	44d9f800 	ctc1	t9,$31
    1e50:	00000000 	nop
    1e54:	46003224 	cvt.w.s	$f8,$f6
    1e58:	4459f800 	cfc1	t9,$31
    1e5c:	00000000 	nop
    1e60:	33390078 	andi	t9,t9,0x78
    1e64:	53200013 	beqzl	t9,1eb4 <func_80ADAD54+0xf0>
    1e68:	44194000 	mfc1	t9,$f8
    1e6c:	44814000 	mtc1	at,$f8
    1e70:	24190001 	li	t9,1
    1e74:	46083201 	sub.s	$f8,$f6,$f8
    1e78:	44d9f800 	ctc1	t9,$31
    1e7c:	00000000 	nop
    1e80:	46004224 	cvt.w.s	$f8,$f8
    1e84:	4459f800 	cfc1	t9,$31
    1e88:	00000000 	nop
    1e8c:	33390078 	andi	t9,t9,0x78
    1e90:	17200005 	bnez	t9,1ea8 <func_80ADAD54+0xe4>
    1e94:	00000000 	nop
    1e98:	44194000 	mfc1	t9,$f8
    1e9c:	3c018000 	lui	at,0x8000
    1ea0:	10000007 	b	1ec0 <func_80ADAD54+0xfc>
    1ea4:	0321c825 	or	t9,t9,at
    1ea8:	10000005 	b	1ec0 <func_80ADAD54+0xfc>
    1eac:	2419ffff 	li	t9,-1
    1eb0:	44194000 	mfc1	t9,$f8
    1eb4:	00000000 	nop
    1eb8:	0720fffb 	bltz	t9,1ea8 <func_80ADAD54+0xe4>
    1ebc:	00000000 	nop
    1ec0:	44d8f800 	ctc1	t8,$31
    1ec4:	a0b90231 	sb	t9,561(a1)
    1ec8:	00000000 	nop
    1ecc:	8fbf0014 	lw	ra,20(sp)
    1ed0:	27bd0018 	addiu	sp,sp,24
    1ed4:	03e00008 	jr	ra
    1ed8:	00000000 	nop

00001edc <func_80ADAE6C>:
    1edc:	27bdffe8 	addiu	sp,sp,-24
    1ee0:	afbf0014 	sw	ra,20(sp)
    1ee4:	00803025 	move	a2,a0
    1ee8:	afa5001c 	sw	a1,28(sp)
    1eec:	afa60018 	sw	a2,24(sp)
    1ef0:	0c000000 	jal	0 <EnPoSisters_Init>
    1ef4:	2484014c 	addiu	a0,a0,332
    1ef8:	1040001b 	beqz	v0,1f68 <func_80ADAE6C+0x8c>
    1efc:	8fa60018 	lw	a2,24(sp)
    1f00:	90cf0194 	lbu	t7,404(a2)
    1f04:	240e00ff 	li	t6,255
    1f08:	a0ce0231 	sb	t6,561(a2)
    1f0c:	11e00012 	beqz	t7,1f58 <func_80ADAE6C+0x7c>
    1f10:	3c084fc7 	lui	t0,0x4fc7
    1f14:	90d80199 	lbu	t8,409(a2)
    1f18:	84c2019a 	lh	v0,410(a2)
    1f1c:	3508ffea 	ori	t0,t0,0xffea
    1f20:	37190001 	ori	t9,t8,0x1
    1f24:	a0d90199 	sb	t9,409(a2)
    1f28:	10400004 	beqz	v0,1f3c <func_80ADAE6C+0x60>
    1f2c:	acc802cc 	sw	t0,716(a2)
    1f30:	2449ffff 	addiu	t1,v0,-1
    1f34:	a4c9019a 	sh	t1,410(a2)
    1f38:	84c2019a 	lh	v0,410(a2)
    1f3c:	14400038 	bnez	v0,2020 <func_80ADAE6C+0x144>
    1f40:	240a0014 	li	t2,20
    1f44:	a0ca0197 	sb	t2,407(a2)
    1f48:	0c000000 	jal	0 <EnPoSisters_Init>
    1f4c:	00c02025 	move	a0,a2
    1f50:	10000034 	b	2024 <func_80ADAE6C+0x148>
    1f54:	8fbf0014 	lw	ra,20(sp)
    1f58:	0c000000 	jal	0 <EnPoSisters_Init>
    1f5c:	00c02025 	move	a0,a2
    1f60:	10000030 	b	2024 <func_80ADAE6C+0x148>
    1f64:	8fbf0014 	lw	ra,20(sp)
    1f68:	3c01437f 	lui	at,0x437f
    1f6c:	44813000 	mtc1	at,$f6
    1f70:	c4c40164 	lwc1	$f4,356(a2)
    1f74:	c4ca015c 	lwc1	$f10,348(a2)
    1f78:	240c0001 	li	t4,1
    1f7c:	46062202 	mul.s	$f8,$f4,$f6
    1f80:	3c014f00 	lui	at,0x4f00
    1f84:	00c02025 	move	a0,a2
    1f88:	460a4403 	div.s	$f16,$f8,$f10
    1f8c:	444bf800 	cfc1	t3,$31
    1f90:	44ccf800 	ctc1	t4,$31
    1f94:	00000000 	nop
    1f98:	460084a4 	cvt.w.s	$f18,$f16
    1f9c:	444cf800 	cfc1	t4,$31
    1fa0:	00000000 	nop
    1fa4:	318c0078 	andi	t4,t4,0x78
    1fa8:	51800013 	beqzl	t4,1ff8 <func_80ADAE6C+0x11c>
    1fac:	440c9000 	mfc1	t4,$f18
    1fb0:	44819000 	mtc1	at,$f18
    1fb4:	240c0001 	li	t4,1
    1fb8:	46128481 	sub.s	$f18,$f16,$f18
    1fbc:	44ccf800 	ctc1	t4,$31
    1fc0:	00000000 	nop
    1fc4:	460094a4 	cvt.w.s	$f18,$f18
    1fc8:	444cf800 	cfc1	t4,$31
    1fcc:	00000000 	nop
    1fd0:	318c0078 	andi	t4,t4,0x78
    1fd4:	15800005 	bnez	t4,1fec <func_80ADAE6C+0x110>
    1fd8:	00000000 	nop
    1fdc:	440c9000 	mfc1	t4,$f18
    1fe0:	3c018000 	lui	at,0x8000
    1fe4:	10000007 	b	2004 <func_80ADAE6C+0x128>
    1fe8:	01816025 	or	t4,t4,at
    1fec:	10000005 	b	2004 <func_80ADAE6C+0x128>
    1ff0:	240cffff 	li	t4,-1
    1ff4:	440c9000 	mfc1	t4,$f18
    1ff8:	00000000 	nop
    1ffc:	0580fffb 	bltz	t4,1fec <func_80ADAE6C+0x110>
    2000:	00000000 	nop
    2004:	90cd0194 	lbu	t5,404(a2)
    2008:	44cbf800 	ctc1	t3,$31
    200c:	a0cc0231 	sb	t4,561(a2)
    2010:	55a00004 	bnezl	t5,2024 <func_80ADAE6C+0x148>
    2014:	8fbf0014 	lw	ra,20(sp)
    2018:	0c000000 	jal	0 <EnPoSisters_Init>
    201c:	8fa5001c 	lw	a1,28(sp)
    2020:	8fbf0014 	lw	ra,20(sp)
    2024:	27bd0018 	addiu	sp,sp,24
    2028:	03e00008 	jr	ra
    202c:	00000000 	nop

00002030 <func_80ADAFC0>:
    2030:	27bdffe0 	addiu	sp,sp,-32
    2034:	afbf001c 	sw	ra,28(sp)
    2038:	afb00018 	sw	s0,24(sp)
    203c:	afa50024 	sw	a1,36(sp)
    2040:	90820198 	lbu	v0,408(a0)
    2044:	848e019a 	lh	t6,410(a0)
    2048:	00808025 	move	s0,a0
    204c:	24420001 	addiu	v0,v0,1
    2050:	28410009 	slti	at,v0,9
    2054:	25cf0001 	addiu	t7,t6,1
    2058:	14200004 	bnez	at,206c <func_80ADAFC0+0x3c>
    205c:	a48f019a 	sh	t7,410(a0)
    2060:	24180008 	li	t8,8
    2064:	10000002 	b	2070 <func_80ADAFC0+0x40>
    2068:	a0980198 	sb	t8,408(a0)
    206c:	a2020198 	sb	v0,408(s0)
    2070:	92020198 	lbu	v0,408(s0)
    2074:	2442ffff 	addiu	v0,v0,-1
    2078:	18400010 	blez	v0,20bc <func_80ADAFC0+0x8c>
    207c:	0002c880 	sll	t9,v0,0x2
    2080:	0322c823 	subu	t9,t9,v0
    2084:	0019c880 	sll	t9,t9,0x2
    2088:	02192821 	addu	a1,s0,t9
    208c:	24a30234 	addiu	v1,a1,564
    2090:	24a40228 	addiu	a0,a1,552
    2094:	8c890000 	lw	t1,0(a0)
    2098:	2442ffff 	addiu	v0,v0,-1
    209c:	2463fff4 	addiu	v1,v1,-12
    20a0:	ac69000c 	sw	t1,12(v1)
    20a4:	8c880004 	lw	t0,4(a0)
    20a8:	2484fff4 	addiu	a0,a0,-12
    20ac:	ac680010 	sw	t0,16(v1)
    20b0:	8c890014 	lw	t1,20(a0)
    20b4:	1c40fff7 	bgtz	v0,2094 <func_80ADAFC0+0x64>
    20b8:	ac690014 	sw	t1,20(v1)
    20bc:	860b019a 	lh	t3,410(s0)
    20c0:	860a00b6 	lh	t2,182(s0)
    20c4:	000b6080 	sll	t4,t3,0x2
    20c8:	018b6023 	subu	t4,t4,t3
    20cc:	000c6300 	sll	t4,t4,0xc
    20d0:	014c2021 	addu	a0,t2,t4
    20d4:	2484c000 	addiu	a0,a0,-16384
    20d8:	00042400 	sll	a0,a0,0x10
    20dc:	0c000000 	jal	0 <EnPoSisters_Init>
    20e0:	00042403 	sra	a0,a0,0x10
    20e4:	3c010000 	lui	at,0x0
    20e8:	c4240000 	lwc1	$f4,0(at)
    20ec:	c6060050 	lwc1	$f6,80(s0)
    20f0:	860e019a 	lh	t6,410(s0)
    20f4:	c6100024 	lwc1	$f16,36(s0)
    20f8:	46062202 	mul.s	$f8,$f4,$f6
    20fc:	860d00b6 	lh	t5,182(s0)
    2100:	000e7880 	sll	t7,t6,0x2
    2104:	01ee7823 	subu	t7,t7,t6
    2108:	000f7b00 	sll	t7,t7,0xc
    210c:	01af2021 	addu	a0,t5,t7
    2110:	2484c000 	addiu	a0,a0,-16384
    2114:	46080282 	mul.s	$f10,$f0,$f8
    2118:	00042400 	sll	a0,a0,0x10
    211c:	00042403 	sra	a0,a0,0x10
    2120:	46105480 	add.s	$f18,$f10,$f16
    2124:	0c000000 	jal	0 <EnPoSisters_Init>
    2128:	e6120234 	swc1	$f18,564(s0)
    212c:	3c010000 	lui	at,0x0
    2130:	c4240000 	lwc1	$f4,0(at)
    2134:	c6060050 	lwc1	$f6,80(s0)
    2138:	c610002c 	lwc1	$f16,44(s0)
    213c:	8602019a 	lh	v0,410(s0)
    2140:	46062202 	mul.s	$f8,$f4,$f6
    2144:	28410008 	slti	at,v0,8
    2148:	46080282 	mul.s	$f10,$f0,$f8
    214c:	46105480 	add.s	$f18,$f10,$f16
    2150:	10200008 	beqz	at,2174 <func_80ADAFC0+0x144>
    2154:	e612023c 	swc1	$f18,572(s0)
    2158:	3c014110 	lui	at,0x4110
    215c:	44813000 	mtc1	at,$f6
    2160:	c6040244 	lwc1	$f4,580(s0)
    2164:	8602019a 	lh	v0,410(s0)
    2168:	46062201 	sub.s	$f8,$f4,$f6
    216c:	10000015 	b	21c4 <func_80ADAFC0+0x194>
    2170:	e6080238 	swc1	$f8,568(s0)
    2174:	3c014000 	lui	at,0x4000
    2178:	44818000 	mtc1	at,$f16
    217c:	c60a0244 	lwc1	$f10,580(s0)
    2180:	28410010 	slti	at,v0,16
    2184:	26040050 	addiu	a0,s0,80
    2188:	46105480 	add.s	$f18,$f10,$f16
    218c:	24050000 	li	a1,0
    2190:	3c063a83 	lui	a2,0x3a83
    2194:	1420000b 	bnez	at,21c4 <func_80ADAFC0+0x194>
    2198:	e6120238 	swc1	$f18,568(s0)
    219c:	0c000000 	jal	0 <EnPoSisters_Init>
    21a0:	34c6126f 	ori	a2,a2,0x126f
    21a4:	10400003 	beqz	v0,21b4 <func_80ADAFC0+0x184>
    21a8:	02002025 	move	a0,s0
    21ac:	0c000000 	jal	0 <EnPoSisters_Init>
    21b0:	8fa50024 	lw	a1,36(sp)
    21b4:	c6000050 	lwc1	$f0,80(s0)
    21b8:	8602019a 	lh	v0,410(s0)
    21bc:	e6000058 	swc1	$f0,88(s0)
    21c0:	e6000054 	swc1	$f0,84(s0)
    21c4:	24010010 	li	at,16
    21c8:	14410003 	bne	v0,at,21d8 <func_80ADAFC0+0x1a8>
    21cc:	02002025 	move	a0,s0
    21d0:	0c000000 	jal	0 <EnPoSisters_Init>
    21d4:	24053877 	li	a1,14455
    21d8:	8fbf001c 	lw	ra,28(sp)
    21dc:	8fb00018 	lw	s0,24(sp)
    21e0:	27bd0020 	addiu	sp,sp,32
    21e4:	03e00008 	jr	ra
    21e8:	00000000 	nop

000021ec <func_80ADB17C>:
    21ec:	27bdffe0 	addiu	sp,sp,-32
    21f0:	afbf001c 	sw	ra,28(sp)
    21f4:	afb00018 	sw	s0,24(sp)
    21f8:	afa50024 	sw	a1,36(sp)
    21fc:	848e019a 	lh	t6,410(a0)
    2200:	00808025 	move	s0,a0
    2204:	24020040 	li	v0,64
    2208:	25cf0001 	addiu	t7,t6,1
    220c:	a48f019a 	sh	t7,410(a0)
    2210:	8487019a 	lh	a3,410(a0)
    2214:	8fa40024 	lw	a0,36(sp)
    2218:	14470019 	bne	v0,a3,2280 <func_80ADB17C+0x94>
    221c:	28e10020 	slti	at,a3,32
    2220:	0c000000 	jal	0 <EnPoSisters_Init>
    2224:	8605001c 	lh	a1,28(s0)
    2228:	8fa40024 	lw	a0,36(sp)
    222c:	26050024 	addiu	a1,s0,36
    2230:	2406001e 	li	a2,30
    2234:	0c000000 	jal	0 <EnPoSisters_Init>
    2238:	24072822 	li	a3,10274
    223c:	92180194 	lbu	t8,404(s0)
    2240:	8fa40024 	lw	a0,36(sp)
    2244:	57000004 	bnezl	t8,2258 <func_80ADB17C+0x6c>
    2248:	8fa80024 	lw	t0,36(sp)
    224c:	0c000000 	jal	0 <EnPoSisters_Init>
    2250:	2405001b 	li	a1,27
    2254:	8fa80024 	lw	t0,36(sp)
    2258:	3c010001 	lui	at,0x1
    225c:	241900ff 	li	t9,255
    2260:	00280821 	addu	at,at,t0
    2264:	a0390ae3 	sb	t9,2787(at)
    2268:	0c000000 	jal	0 <EnPoSisters_Init>
    226c:	24044802 	li	a0,18434
    2270:	0c000000 	jal	0 <EnPoSisters_Init>
    2274:	02002025 	move	a0,s0
    2278:	1000000d 	b	22b0 <func_80ADB17C+0xc4>
    227c:	8609019a 	lh	t1,410(s0)
    2280:	10200007 	beqz	at,22a0 <func_80ADB17C+0xb4>
    2284:	02002025 	move	a0,s0
    2288:	02002025 	move	a0,s0
    228c:	00e02825 	move	a1,a3
    2290:	0c000000 	jal	0 <EnPoSisters_Init>
    2294:	26060024 	addiu	a2,s0,36
    2298:	10000005 	b	22b0 <func_80ADB17C+0xc4>
    229c:	8609019a 	lh	t1,410(s0)
    22a0:	00472823 	subu	a1,v0,a3
    22a4:	0c000000 	jal	0 <EnPoSisters_Init>
    22a8:	26060024 	addiu	a2,s0,36
    22ac:	8609019a 	lh	t1,410(s0)
    22b0:	24010020 	li	at,32
    22b4:	55210018 	bnel	t1,at,2318 <func_80ADB17C+0x12c>
    22b8:	8fbf001c 	lw	ra,28(sp)
    22bc:	920a0194 	lbu	t2,404(s0)
    22c0:	3c0c0000 	lui	t4,0x0
    22c4:	258c0000 	addiu	t4,t4,0
    22c8:	000a5880 	sll	t3,t2,0x2
    22cc:	016a5823 	subu	t3,t3,t2
    22d0:	000b5840 	sll	t3,t3,0x1
    22d4:	016c1021 	addu	v0,t3,t4
    22d8:	844d0000 	lh	t5,0(v0)
    22dc:	448d2000 	mtc1	t5,$f4
    22e0:	00000000 	nop
    22e4:	468021a0 	cvt.s.w	$f6,$f4
    22e8:	e6060024 	swc1	$f6,36(s0)
    22ec:	844e0002 	lh	t6,2(v0)
    22f0:	448e4000 	mtc1	t6,$f8
    22f4:	00000000 	nop
    22f8:	468042a0 	cvt.s.w	$f10,$f8
    22fc:	e60a0028 	swc1	$f10,40(s0)
    2300:	844f0004 	lh	t7,4(v0)
    2304:	448f8000 	mtc1	t7,$f16
    2308:	00000000 	nop
    230c:	468084a0 	cvt.s.w	$f18,$f16
    2310:	e612002c 	swc1	$f18,44(s0)
    2314:	8fbf001c 	lw	ra,28(sp)
    2318:	8fb00018 	lw	s0,24(sp)
    231c:	27bd0020 	addiu	sp,sp,32
    2320:	03e00008 	jr	ra
    2324:	00000000 	nop

00002328 <func_80ADB2B8>:
    2328:	27bdffd8 	addiu	sp,sp,-40
    232c:	afb00018 	sw	s0,24(sp)
    2330:	00808025 	move	s0,a0
    2334:	afbf001c 	sw	ra,28(sp)
    2338:	2484014c 	addiu	a0,a0,332
    233c:	afa5002c 	sw	a1,44(sp)
    2340:	0c000000 	jal	0 <EnPoSisters_Init>
    2344:	afa40024 	sw	a0,36(sp)
    2348:	3c014302 	lui	at,0x4302
    234c:	44813000 	mtc1	at,$f6
    2350:	c6040090 	lwc1	$f4,144(s0)
    2354:	02002025 	move	a0,s0
    2358:	4606203c 	c.lt.s	$f4,$f6
    235c:	00000000 	nop
    2360:	45020004 	bc1fl	2374 <func_80ADB2B8+0x4c>
    2364:	8fa40024 	lw	a0,36(sp)
    2368:	0c000000 	jal	0 <EnPoSisters_Init>
    236c:	8fa5002c 	lw	a1,44(sp)
    2370:	8fa40024 	lw	a0,36(sp)
    2374:	0c000000 	jal	0 <EnPoSisters_Init>
    2378:	24050000 	li	a1,0
    237c:	10400003 	beqz	v0,238c <func_80ADB2B8+0x64>
    2380:	02002025 	move	a0,s0
    2384:	0c000000 	jal	0 <EnPoSisters_Init>
    2388:	240538ed 	li	a1,14573
    238c:	860e008a 	lh	t6,138(s0)
    2390:	a60e00b6 	sh	t6,182(s0)
    2394:	8fbf001c 	lw	ra,28(sp)
    2398:	8fb00018 	lw	s0,24(sp)
    239c:	27bd0028 	addiu	sp,sp,40
    23a0:	03e00008 	jr	ra
    23a4:	00000000 	nop

000023a8 <func_80ADB338>:
    23a8:	27bdffe0 	addiu	sp,sp,-32
    23ac:	afbf0014 	sw	ra,20(sp)
    23b0:	afa50024 	sw	a1,36(sp)
    23b4:	8caf1c44 	lw	t7,7236(a1)
    23b8:	00803025 	move	a2,a0
    23bc:	24c50008 	addiu	a1,a2,8
    23c0:	afaf001c 	sw	t7,28(sp)
    23c4:	90870195 	lbu	a3,405(a0)
    23c8:	8c830118 	lw	v1,280(a0)
    23cc:	01e02025 	move	a0,t7
    23d0:	14e0002c 	bnez	a3,2484 <func_80ADB338+0xdc>
    23d4:	00604025 	move	t0,v1
    23d8:	0c000000 	jal	0 <EnPoSisters_Init>
    23dc:	afa60020 	sw	a2,32(sp)
    23e0:	3c014416 	lui	at,0x4416
    23e4:	44812000 	mtc1	at,$f4
    23e8:	8fa60020 	lw	a2,32(sp)
    23ec:	24190064 	li	t9,100
    23f0:	4604003c 	c.lt.s	$f0,$f4
    23f4:	00000000 	nop
    23f8:	45020008 	bc1fl	241c <func_80ADB338+0x74>
    23fc:	a4d9019c 	sh	t9,412(a2)
    2400:	84c2019c 	lh	v0,412(a2)
    2404:	10400006 	beqz	v0,2420 <func_80ADB338+0x78>
    2408:	2458ffff 	addiu	t8,v0,-1
    240c:	a4d8019c 	sh	t8,412(a2)
    2410:	10000003 	b	2420 <func_80ADB338+0x78>
    2414:	84c2019c 	lh	v0,412(a2)
    2418:	a4d9019c 	sh	t9,412(a2)
    241c:	84c2019c 	lh	v0,412(a2)
    2420:	5440003c 	bnezl	v0,2514 <func_80ADB338+0x16c>
    2424:	8fbf0014 	lw	ra,20(sp)
    2428:	0c000000 	jal	0 <EnPoSisters_Init>
    242c:	afa60020 	sw	a2,32(sp)
    2430:	3c014080 	lui	at,0x4080
    2434:	44813000 	mtc1	at,$f6
    2438:	8fa40020 	lw	a0,32(sp)
    243c:	3c0140a0 	lui	at,0x40a0
    2440:	46060202 	mul.s	$f8,$f0,$f6
    2444:	848c008a 	lh	t4,138(a0)
    2448:	44819000 	mtc1	at,$f18
    244c:	4600428d 	trunc.w.s	$f10,$f8
    2450:	440a5000 	mfc1	t2,$f10
    2454:	00000000 	nop
    2458:	000a5b80 	sll	t3,t2,0xe
    245c:	016c6821 	addu	t5,t3,t4
    2460:	a48d00b6 	sh	t5,182(a0)
    2464:	8fae001c 	lw	t6,28(sp)
    2468:	c5d00028 	lwc1	$f16,40(t6)
    246c:	46128100 	add.s	$f4,$f16,$f18
    2470:	e4840028 	swc1	$f4,40(a0)
    2474:	0c000000 	jal	0 <EnPoSisters_Init>
    2478:	8fa50024 	lw	a1,36(sp)
    247c:	10000025 	b	2514 <func_80ADB338+0x16c>
    2480:	8fbf0014 	lw	ra,20(sp)
    2484:	8d020190 	lw	v0,400(t0)
    2488:	3c0f0000 	lui	t7,0x0
    248c:	25ef0000 	addiu	t7,t7,0
    2490:	15e20008 	bne	t7,v0,24b4 <func_80ADB338+0x10c>
    2494:	3c190000 	lui	t9,0x0
    2498:	3c180000 	lui	t8,0x0
    249c:	27180000 	addiu	t8,t8,0
    24a0:	acd80134 	sw	t8,308(a2)
    24a4:	0c000000 	jal	0 <EnPoSisters_Init>
    24a8:	00c02025 	move	a0,a2
    24ac:	10000019 	b	2514 <func_80ADB338+0x16c>
    24b0:	8fbf0014 	lw	ra,20(sp)
    24b4:	27390000 	addiu	t9,t9,0
    24b8:	17220010 	bne	t9,v0,24fc <func_80ADB338+0x154>
    24bc:	3c0d0000 	lui	t5,0x0
    24c0:	846900b6 	lh	t1,182(v1)
    24c4:	00075380 	sll	t2,a3,0xe
    24c8:	3c0140a0 	lui	at,0x40a0
    24cc:	012a5821 	addu	t3,t1,t2
    24d0:	a4cb00b6 	sh	t3,182(a2)
    24d4:	8fac001c 	lw	t4,28(sp)
    24d8:	44814000 	mtc1	at,$f8
    24dc:	00c02025 	move	a0,a2
    24e0:	c5860028 	lwc1	$f6,40(t4)
    24e4:	46083280 	add.s	$f10,$f6,$f8
    24e8:	e4ca0028 	swc1	$f10,40(a2)
    24ec:	0c000000 	jal	0 <EnPoSisters_Init>
    24f0:	8fa50024 	lw	a1,36(sp)
    24f4:	10000007 	b	2514 <func_80ADB338+0x16c>
    24f8:	8fbf0014 	lw	ra,20(sp)
    24fc:	25ad0000 	addiu	t5,t5,0
    2500:	55a20004 	bnel	t5,v0,2514 <func_80ADB338+0x16c>
    2504:	8fbf0014 	lw	ra,20(sp)
    2508:	0c000000 	jal	0 <EnPoSisters_Init>
    250c:	00c02025 	move	a0,a2
    2510:	8fbf0014 	lw	ra,20(sp)
    2514:	27bd0020 	addiu	sp,sp,32
    2518:	03e00008 	jr	ra
    251c:	00000000 	nop

00002520 <func_80ADB4B0>:
    2520:	27bdffe0 	addiu	sp,sp,-32
    2524:	afb00018 	sw	s0,24(sp)
    2528:	00808025 	move	s0,a0
    252c:	afbf001c 	sw	ra,28(sp)
    2530:	afa50024 	sw	a1,36(sp)
    2534:	0c000000 	jal	0 <EnPoSisters_Init>
    2538:	2484014c 	addiu	a0,a0,332
    253c:	50400004 	beqzl	v0,2550 <func_80ADB4B0+0x30>
    2540:	02002025 	move	a0,s0
    2544:	0c000000 	jal	0 <EnPoSisters_Init>
    2548:	02002025 	move	a0,s0
    254c:	02002025 	move	a0,s0
    2550:	0c000000 	jal	0 <EnPoSisters_Init>
    2554:	8fa50024 	lw	a1,36(sp)
    2558:	3c013f80 	lui	at,0x3f80
    255c:	44813000 	mtc1	at,$f6
    2560:	c6040028 	lwc1	$f4,40(s0)
    2564:	02002025 	move	a0,s0
    2568:	3c054220 	lui	a1,0x4220
    256c:	46062200 	add.s	$f8,$f4,$f6
    2570:	0c000000 	jal	0 <EnPoSisters_Init>
    2574:	e6080028 	swc1	$f8,40(s0)
    2578:	8fbf001c 	lw	ra,28(sp)
    257c:	8fb00018 	lw	s0,24(sp)
    2580:	27bd0020 	addiu	sp,sp,32
    2584:	03e00008 	jr	ra
    2588:	00000000 	nop

0000258c <func_80ADB51C>:
    258c:	27bdffe0 	addiu	sp,sp,-32
    2590:	afb00018 	sw	s0,24(sp)
    2594:	00808025 	move	s0,a0
    2598:	afbf001c 	sw	ra,28(sp)
    259c:	afa50024 	sw	a1,36(sp)
    25a0:	0c000000 	jal	0 <EnPoSisters_Init>
    25a4:	2484014c 	addiu	a0,a0,332
    25a8:	3c013f00 	lui	at,0x3f00
    25ac:	44813000 	mtc1	at,$f6
    25b0:	c604015c 	lwc1	$f4,348(s0)
    25b4:	c6080164 	lwc1	$f8,356(s0)
    25b8:	3c01437f 	lui	at,0x437f
    25bc:	46062082 	mul.s	$f2,$f4,$f6
    25c0:	44815000 	mtc1	at,$f10
    25c4:	240f0001 	li	t7,1
    25c8:	3c014f00 	lui	at,0x4f00
    25cc:	46081001 	sub.s	$f0,$f2,$f8
    25d0:	46000005 	abs.s	$f0,$f0
    25d4:	460a0402 	mul.s	$f16,$f0,$f10
    25d8:	46028483 	div.s	$f18,$f16,$f2
    25dc:	444ef800 	cfc1	t6,$31
    25e0:	44cff800 	ctc1	t7,$31
    25e4:	00000000 	nop
    25e8:	46009124 	cvt.w.s	$f4,$f18
    25ec:	444ff800 	cfc1	t7,$31
    25f0:	00000000 	nop
    25f4:	31ef0078 	andi	t7,t7,0x78
    25f8:	51e00013 	beqzl	t7,2648 <func_80ADB51C+0xbc>
    25fc:	440f2000 	mfc1	t7,$f4
    2600:	44812000 	mtc1	at,$f4
    2604:	240f0001 	li	t7,1
    2608:	46049101 	sub.s	$f4,$f18,$f4
    260c:	44cff800 	ctc1	t7,$31
    2610:	00000000 	nop
    2614:	46002124 	cvt.w.s	$f4,$f4
    2618:	444ff800 	cfc1	t7,$31
    261c:	00000000 	nop
    2620:	31ef0078 	andi	t7,t7,0x78
    2624:	15e00005 	bnez	t7,263c <func_80ADB51C+0xb0>
    2628:	00000000 	nop
    262c:	440f2000 	mfc1	t7,$f4
    2630:	3c018000 	lui	at,0x8000
    2634:	10000007 	b	2654 <func_80ADB51C+0xc8>
    2638:	01e17825 	or	t7,t7,at
    263c:	10000005 	b	2654 <func_80ADB51C+0xc8>
    2640:	240fffff 	li	t7,-1
    2644:	440f2000 	mfc1	t7,$f4
    2648:	00000000 	nop
    264c:	05e0fffb 	bltz	t7,263c <func_80ADB51C+0xb0>
    2650:	00000000 	nop
    2654:	8602019a 	lh	v0,410(s0)
    2658:	44cef800 	ctc1	t6,$31
    265c:	a20f0231 	sb	t7,561(s0)
    2660:	10400003 	beqz	v0,2670 <func_80ADB51C+0xe4>
    2664:	2458ffff 	addiu	t8,v0,-1
    2668:	a618019a 	sh	t8,410(s0)
    266c:	8602019a 	lh	v0,410(s0)
    2670:	14400017 	bnez	v0,26d0 <func_80ADB51C+0x144>
    2674:	3c010000 	lui	at,0x0
    2678:	0c000000 	jal	0 <EnPoSisters_Init>
    267c:	00000000 	nop
    2680:	3c014080 	lui	at,0x4080
    2684:	44813000 	mtc1	at,$f6
    2688:	861900b6 	lh	t9,182(s0)
    268c:	920d0195 	lbu	t5,405(s0)
    2690:	46060202 	mul.s	$f8,$f0,$f6
    2694:	4600428d 	trunc.w.s	$f10,$f8
    2698:	44095000 	mfc1	t1,$f10
    269c:	00000000 	nop
    26a0:	00095380 	sll	t2,t1,0xe
    26a4:	032a5821 	addu	t3,t9,t2
    26a8:	a60b00b6 	sh	t3,182(s0)
    26ac:	860c00b6 	lh	t4,182(s0)
    26b0:	15a00003 	bnez	t5,26c0 <func_80ADB51C+0x134>
    26b4:	a60c0032 	sh	t4,50(s0)
    26b8:	0c000000 	jal	0 <EnPoSisters_Init>
    26bc:	24040038 	li	a0,56
    26c0:	0c000000 	jal	0 <EnPoSisters_Init>
    26c4:	02002025 	move	a0,s0
    26c8:	1000003b 	b	27b8 <func_80ADB51C+0x22c>
    26cc:	02002025 	move	a0,s0
    26d0:	c6100028 	lwc1	$f16,40(s0)
    26d4:	c4320000 	lwc1	$f18,0(at)
    26d8:	92040195 	lbu	a0,405(s0)
    26dc:	46128100 	add.s	$f4,$f16,$f18
    26e0:	1080002b 	beqz	a0,2790 <func_80ADB51C+0x204>
    26e4:	e6040028 	swc1	$f4,40(s0)
    26e8:	8602019a 	lh	v0,410(s0)
    26ec:	24060040 	li	a2,64
    26f0:	2841005b 	slti	at,v0,91
    26f4:	54200004 	bnezl	at,2708 <func_80ADB51C+0x17c>
    26f8:	28410047 	slti	at,v0,71
    26fc:	10000012 	b	2748 <func_80ADB51C+0x1bc>
    2700:	24020001 	li	v0,1
    2704:	28410047 	slti	at,v0,71
    2708:	14200003 	bnez	at,2718 <func_80ADB51C+0x18c>
    270c:	24060040 	li	a2,64
    2710:	1000000d 	b	2748 <func_80ADB51C+0x1bc>
    2714:	00001025 	move	v0,zero
    2718:	28410038 	slti	at,v0,56
    271c:	14200003 	bnez	at,272c <func_80ADB51C+0x1a0>
    2720:	24060060 	li	a2,96
    2724:	10000008 	b	2748 <func_80ADB51C+0x1bc>
    2728:	24020001 	li	v0,1
    272c:	28410029 	slti	at,v0,41
    2730:	14200004 	bnez	at,2744 <func_80ADB51C+0x1b8>
    2734:	24020001 	li	v0,1
    2738:	00001025 	move	v0,zero
    273c:	10000002 	b	2748 <func_80ADB51C+0x1bc>
    2740:	24060060 	li	a2,96
    2744:	24060100 	li	a2,256
    2748:	24010002 	li	at,2
    274c:	14810004 	bne	a0,at,2760 <func_80ADB51C+0x1d4>
    2750:	00801825 	move	v1,a0
    2754:	00063040 	sll	a2,a2,0x1
    2758:	00063400 	sll	a2,a2,0x10
    275c:	00063403 	sra	a2,a2,0x10
    2760:	0003c380 	sll	t8,v1,0xe
    2764:	03020019 	multu	t8,v0
    2768:	8e0e0118 	lw	t6,280(s0)
    276c:	260400b6 	addiu	a0,s0,182
    2770:	85cf00b6 	lh	t7,182(t6)
    2774:	00004012 	mflo	t0
    2778:	01e82821 	addu	a1,t7,t0
    277c:	00052c00 	sll	a1,a1,0x10
    2780:	0c000000 	jal	0 <EnPoSisters_Init>
    2784:	00052c03 	sra	a1,a1,0x10
    2788:	1000000b 	b	27b8 <func_80ADB51C+0x22c>
    278c:	02002025 	move	a0,s0
    2790:	8602019a 	lh	v0,410(s0)
    2794:	24010046 	li	at,70
    2798:	02002025 	move	a0,s0
    279c:	10410003 	beq	v0,at,27ac <func_80ADB51C+0x220>
    27a0:	24010028 	li	at,40
    27a4:	54410004 	bnel	v0,at,27b8 <func_80ADB51C+0x22c>
    27a8:	02002025 	move	a0,s0
    27ac:	0c000000 	jal	0 <EnPoSisters_Init>
    27b0:	240538ef 	li	a1,14575
    27b4:	02002025 	move	a0,s0
    27b8:	0c000000 	jal	0 <EnPoSisters_Init>
    27bc:	8fa50024 	lw	a1,36(sp)
    27c0:	02002025 	move	a0,s0
    27c4:	0c000000 	jal	0 <EnPoSisters_Init>
    27c8:	3c054220 	lui	a1,0x4220
    27cc:	8fbf001c 	lw	ra,28(sp)
    27d0:	8fb00018 	lw	s0,24(sp)
    27d4:	27bd0020 	addiu	sp,sp,32
    27d8:	03e00008 	jr	ra
    27dc:	00000000 	nop

000027e0 <func_80ADB770>:
    27e0:	27bdffe0 	addiu	sp,sp,-32
    27e4:	afbf001c 	sw	ra,28(sp)
    27e8:	afb00018 	sw	s0,24(sp)
    27ec:	afa50024 	sw	a1,36(sp)
    27f0:	8482019a 	lh	v0,410(a0)
    27f4:	00808025 	move	s0,a0
    27f8:	10400002 	beqz	v0,2804 <func_80ADB770+0x24>
    27fc:	244effff 	addiu	t6,v0,-1
    2800:	a48e019a 	sh	t6,410(a0)
    2804:	860f019c 	lh	t7,412(s0)
    2808:	59e0003f 	blezl	t7,2908 <func_80ADB770+0x128>
    280c:	920d0195 	lbu	t5,405(s0)
    2810:	8618019a 	lh	t8,410(s0)
    2814:	2b010010 	slti	at,t8,16
    2818:	5420003b 	bnezl	at,2908 <func_80ADB770+0x128>
    281c:	920d0195 	lbu	t5,405(s0)
    2820:	0c000000 	jal	0 <EnPoSisters_Init>
    2824:	2604014c 	addiu	a0,s0,332
    2828:	92020195 	lbu	v0,405(s0)
    282c:	54400031 	bnezl	v0,28f4 <func_80ADB770+0x114>
    2830:	8e090118 	lw	t1,280(s0)
    2834:	92030196 	lbu	v1,406(s0)
    2838:	24190010 	li	t9,16
    283c:	03231023 	subu	v0,t9,v1
    2840:	00021400 	sll	v0,v0,0x10
    2844:	00021403 	sra	v0,v0,0x10
    2848:	04400003 	bltz	v0,2858 <func_80ADB770+0x78>
    284c:	00022023 	negu	a0,v0
    2850:	10000001 	b	2858 <func_80ADB770+0x78>
    2854:	00402025 	move	a0,v0
    2858:	2881000e 	slti	at,a0,14
    285c:	10200016 	beqz	at,28b8 <func_80ADB770+0xd8>
    2860:	00602025 	move	a0,v1
    2864:	000426c0 	sll	a0,a0,0x1b
    2868:	0c000000 	jal	0 <EnPoSisters_Init>
    286c:	00042403 	sra	a0,a0,0x10
    2870:	8609019c 	lh	t1,412(s0)
    2874:	240b0580 	li	t3,1408
    2878:	860800b6 	lh	t0,182(s0)
    287c:	00095080 	sll	t2,t1,0x2
    2880:	01495023 	subu	t2,t2,t1
    2884:	000a51c0 	sll	t2,t2,0x7
    2888:	016a6023 	subu	t4,t3,t2
    288c:	448c4000 	mtc1	t4,$f8
    2890:	44882000 	mtc1	t0,$f4
    2894:	46000005 	abs.s	$f0,$f0
    2898:	468042a0 	cvt.s.w	$f10,$f8
    289c:	468021a0 	cvt.s.w	$f6,$f4
    28a0:	46005402 	mul.s	$f16,$f10,$f0
    28a4:	46103480 	add.s	$f18,$f6,$f16
    28a8:	4600910d 	trunc.w.s	$f4,$f18
    28ac:	440e2000 	mfc1	t6,$f4
    28b0:	00000000 	nop
    28b4:	a60e00b6 	sh	t6,182(s0)
    28b8:	8602019a 	lh	v0,410(s0)
    28bc:	2841011c 	slti	at,v0,284
    28c0:	10200003 	beqz	at,28d0 <func_80ADB770+0xf0>
    28c4:	2841001f 	slti	at,v0,31
    28c8:	50200006 	beqzl	at,28e4 <func_80ADB770+0x104>
    28cc:	92190199 	lbu	t9,409(s0)
    28d0:	920f0199 	lbu	t7,409(s0)
    28d4:	35f80040 	ori	t8,t7,0x40
    28d8:	1000000a 	b	2904 <func_80ADB770+0x124>
    28dc:	a2180199 	sb	t8,409(s0)
    28e0:	92190199 	lbu	t9,409(s0)
    28e4:	3328ffbf 	andi	t0,t9,0xffbf
    28e8:	10000006 	b	2904 <func_80ADB770+0x124>
    28ec:	a2080199 	sb	t0,409(s0)
    28f0:	8e090118 	lw	t1,280(s0)
    28f4:	00025380 	sll	t2,v0,0xe
    28f8:	852b00b6 	lh	t3,182(t1)
    28fc:	016a6021 	addu	t4,t3,t2
    2900:	a60c00b6 	sh	t4,182(s0)
    2904:	920d0195 	lbu	t5,405(s0)
    2908:	55a00011 	bnezl	t5,2950 <func_80ADB770+0x170>
    290c:	8fa80024 	lw	t0,36(sp)
    2910:	8602019a 	lh	v0,410(s0)
    2914:	2841011c 	slti	at,v0,284
    2918:	10200005 	beqz	at,2930 <func_80ADB770+0x150>
    291c:	2841001f 	slti	at,v0,31
    2920:	10200007 	beqz	at,2940 <func_80ADB770+0x160>
    2924:	28410010 	slti	at,v0,16
    2928:	54200006 	bnezl	at,2944 <func_80ADB770+0x164>
    292c:	92180199 	lbu	t8,409(s0)
    2930:	920e0199 	lbu	t6,409(s0)
    2934:	35cf0040 	ori	t7,t6,0x40
    2938:	10000004 	b	294c <func_80ADB770+0x16c>
    293c:	a20f0199 	sb	t7,409(s0)
    2940:	92180199 	lbu	t8,409(s0)
    2944:	3319ffbf 	andi	t9,t8,0xffbf
    2948:	a2190199 	sb	t9,409(s0)
    294c:	8fa80024 	lw	t0,36(sp)
    2950:	26050008 	addiu	a1,s0,8
    2954:	0c000000 	jal	0 <EnPoSisters_Init>
    2958:	8d041c44 	lw	a0,7236(t0)
    295c:	3c014416 	lui	at,0x4416
    2960:	44814000 	mtc1	at,$f8
    2964:	00000000 	nop
    2968:	4600403c 	c.lt.s	$f8,$f0
    296c:	00000000 	nop
    2970:	4502000a 	bc1fl	299c <func_80ADB770+0x1bc>
    2974:	860a019a 	lh	t2,410(s0)
    2978:	92090199 	lbu	t1,409(s0)
    297c:	02002025 	move	a0,s0
    2980:	312bffbf 	andi	t3,t1,0xffbf
    2984:	a20b0199 	sb	t3,409(s0)
    2988:	0c000000 	jal	0 <EnPoSisters_Init>
    298c:	8fa50024 	lw	a1,36(sp)
    2990:	1000002c 	b	2a44 <func_80ADB770+0x264>
    2994:	02002025 	move	a0,s0
    2998:	860a019a 	lh	t2,410(s0)
    299c:	5540000e 	bnezl	t2,29d8 <func_80ADB770+0x1f8>
    29a0:	920d0195 	lbu	t5,405(s0)
    29a4:	920c0195 	lbu	t4,405(s0)
    29a8:	02002025 	move	a0,s0
    29ac:	15800005 	bnez	t4,29c4 <func_80ADB770+0x1e4>
    29b0:	00000000 	nop
    29b4:	0c000000 	jal	0 <EnPoSisters_Init>
    29b8:	02002025 	move	a0,s0
    29bc:	10000021 	b	2a44 <func_80ADB770+0x264>
    29c0:	02002025 	move	a0,s0
    29c4:	0c000000 	jal	0 <EnPoSisters_Init>
    29c8:	8fa50024 	lw	a1,36(sp)
    29cc:	1000001d 	b	2a44 <func_80ADB770+0x264>
    29d0:	02002025 	move	a0,s0
    29d4:	920d0195 	lbu	t5,405(s0)
    29d8:	51a0000c 	beqzl	t5,2a0c <func_80ADB770+0x22c>
    29dc:	8602019c 	lh	v0,412(s0)
    29e0:	8e020118 	lw	v0,280(s0)
    29e4:	3c0e0000 	lui	t6,0x0
    29e8:	25ce0000 	addiu	t6,t6,0
    29ec:	8c4f0190 	lw	t7,400(v0)
    29f0:	55cf0014 	bnel	t6,t7,2a44 <func_80ADB770+0x264>
    29f4:	02002025 	move	a0,s0
    29f8:	0c000000 	jal	0 <EnPoSisters_Init>
    29fc:	02002025 	move	a0,s0
    2a00:	10000010 	b	2a44 <func_80ADB770+0x264>
    2a04:	02002025 	move	a0,s0
    2a08:	8602019c 	lh	v0,412(s0)
    2a0c:	2418fff1 	li	t8,-15
    2a10:	14400003 	bnez	v0,2a20 <func_80ADB770+0x240>
    2a14:	00000000 	nop
    2a18:	10000009 	b	2a40 <func_80ADB770+0x260>
    2a1c:	a618019c 	sh	t8,412(s0)
    2a20:	04410007 	bgez	v0,2a40 <func_80ADB770+0x260>
    2a24:	24590001 	addiu	t9,v0,1
    2a28:	a619019c 	sh	t9,412(s0)
    2a2c:	8608019c 	lh	t0,412(s0)
    2a30:	55000004 	bnezl	t0,2a44 <func_80ADB770+0x264>
    2a34:	02002025 	move	a0,s0
    2a38:	0c000000 	jal	0 <EnPoSisters_Init>
    2a3c:	02002025 	move	a0,s0
    2a40:	02002025 	move	a0,s0
    2a44:	0c000000 	jal	0 <EnPoSisters_Init>
    2a48:	8fa50024 	lw	a1,36(sp)
    2a4c:	8fbf001c 	lw	ra,28(sp)
    2a50:	8fb00018 	lw	s0,24(sp)
    2a54:	27bd0020 	addiu	sp,sp,32
    2a58:	03e00008 	jr	ra
    2a5c:	00000000 	nop

00002a60 <func_80ADB9F0>:
    2a60:	27bdffd8 	addiu	sp,sp,-40
    2a64:	afb00018 	sw	s0,24(sp)
    2a68:	00808025 	move	s0,a0
    2a6c:	afbf001c 	sw	ra,28(sp)
    2a70:	2484014c 	addiu	a0,a0,332
    2a74:	afa5002c 	sw	a1,44(sp)
    2a78:	0c000000 	jal	0 <EnPoSisters_Init>
    2a7c:	afa40020 	sw	a0,32(sp)
    2a80:	5040001b 	beqzl	v0,2af0 <func_80ADB9F0+0x90>
    2a84:	c6080164 	lwc1	$f8,356(s0)
    2a88:	920f0194 	lbu	t7,404(s0)
    2a8c:	240e00ff 	li	t6,255
    2a90:	24010003 	li	at,3
    2a94:	15e10011 	bne	t7,at,2adc <func_80ADB9F0+0x7c>
    2a98:	a20e0231 	sb	t6,561(s0)
    2a9c:	3c0144f9 	lui	at,0x44f9
    2aa0:	8e180004 	lw	t8,4(s0)
    2aa4:	44812000 	mtc1	at,$f4
    2aa8:	92080199 	lbu	t0,409(s0)
    2aac:	3c01c4b4 	lui	at,0xc4b4
    2ab0:	44813000 	mtc1	at,$f6
    2ab4:	37190001 	ori	t9,t8,0x1
    2ab8:	35090018 	ori	t1,t0,0x18
    2abc:	ae190004 	sw	t9,4(s0)
    2ac0:	a2090199 	sb	t1,409(s0)
    2ac4:	02002025 	move	a0,s0
    2ac8:	e6040008 	swc1	$f4,8(s0)
    2acc:	0c000000 	jal	0 <EnPoSisters_Init>
    2ad0:	e6060010 	swc1	$f6,16(s0)
    2ad4:	1000002f 	b	2b94 <func_80ADB9F0+0x134>
    2ad8:	920c0194 	lbu	t4,404(s0)
    2adc:	0c000000 	jal	0 <EnPoSisters_Init>
    2ae0:	02002025 	move	a0,s0
    2ae4:	1000002b 	b	2b94 <func_80ADB9F0+0x134>
    2ae8:	920c0194 	lbu	t4,404(s0)
    2aec:	c6080164 	lwc1	$f8,356(s0)
    2af0:	c60a015c 	lwc1	$f10,348(s0)
    2af4:	3c01437f 	lui	at,0x437f
    2af8:	44818000 	mtc1	at,$f16
    2afc:	460a4003 	div.s	$f0,$f8,$f10
    2b00:	240b0001 	li	t3,1
    2b04:	3c014f00 	lui	at,0x4f00
    2b08:	46008482 	mul.s	$f18,$f16,$f0
    2b0c:	444af800 	cfc1	t2,$31
    2b10:	44cbf800 	ctc1	t3,$31
    2b14:	00000000 	nop
    2b18:	46009124 	cvt.w.s	$f4,$f18
    2b1c:	444bf800 	cfc1	t3,$31
    2b20:	00000000 	nop
    2b24:	316b0078 	andi	t3,t3,0x78
    2b28:	51600013 	beqzl	t3,2b78 <func_80ADB9F0+0x118>
    2b2c:	440b2000 	mfc1	t3,$f4
    2b30:	44812000 	mtc1	at,$f4
    2b34:	240b0001 	li	t3,1
    2b38:	46049101 	sub.s	$f4,$f18,$f4
    2b3c:	44cbf800 	ctc1	t3,$31
    2b40:	00000000 	nop
    2b44:	46002124 	cvt.w.s	$f4,$f4
    2b48:	444bf800 	cfc1	t3,$31
    2b4c:	00000000 	nop
    2b50:	316b0078 	andi	t3,t3,0x78
    2b54:	15600005 	bnez	t3,2b6c <func_80ADB9F0+0x10c>
    2b58:	00000000 	nop
    2b5c:	440b2000 	mfc1	t3,$f4
    2b60:	3c018000 	lui	at,0x8000
    2b64:	10000007 	b	2b84 <func_80ADB9F0+0x124>
    2b68:	01615825 	or	t3,t3,at
    2b6c:	10000005 	b	2b84 <func_80ADB9F0+0x124>
    2b70:	240bffff 	li	t3,-1
    2b74:	440b2000 	mfc1	t3,$f4
    2b78:	00000000 	nop
    2b7c:	0560fffb 	bltz	t3,2b6c <func_80ADB9F0+0x10c>
    2b80:	00000000 	nop
    2b84:	44caf800 	ctc1	t2,$31
    2b88:	a20b0231 	sb	t3,561(s0)
    2b8c:	00000000 	nop
    2b90:	920c0194 	lbu	t4,404(s0)
    2b94:	24010003 	li	at,3
    2b98:	8fa40020 	lw	a0,32(sp)
    2b9c:	51810008 	beql	t4,at,2bc0 <func_80ADB9F0+0x160>
    2ba0:	02002025 	move	a0,s0
    2ba4:	0c000000 	jal	0 <EnPoSisters_Init>
    2ba8:	3c053f80 	lui	a1,0x3f80
    2bac:	10400003 	beqz	v0,2bbc <func_80ADB9F0+0x15c>
    2bb0:	02002025 	move	a0,s0
    2bb4:	0c000000 	jal	0 <EnPoSisters_Init>
    2bb8:	24053873 	li	a1,14451
    2bbc:	02002025 	move	a0,s0
    2bc0:	0c000000 	jal	0 <EnPoSisters_Init>
    2bc4:	3c054220 	lui	a1,0x4220
    2bc8:	8fbf001c 	lw	ra,28(sp)
    2bcc:	8fb00018 	lw	s0,24(sp)
    2bd0:	27bd0028 	addiu	sp,sp,40
    2bd4:	03e00008 	jr	ra
    2bd8:	00000000 	nop

00002bdc <func_80ADBB6C>:
    2bdc:	27bdffd8 	addiu	sp,sp,-40
    2be0:	afb00018 	sw	s0,24(sp)
    2be4:	00808025 	move	s0,a0
    2be8:	afbf001c 	sw	ra,28(sp)
    2bec:	afa5002c 	sw	a1,44(sp)
    2bf0:	0c000000 	jal	0 <EnPoSisters_Init>
    2bf4:	2484014c 	addiu	a0,a0,332
    2bf8:	26050008 	addiu	a1,s0,8
    2bfc:	afa50020 	sw	a1,32(sp)
    2c00:	0c000000 	jal	0 <EnPoSisters_Init>
    2c04:	02002025 	move	a0,s0
    2c08:	3c014120 	lui	at,0x4120
    2c0c:	44812000 	mtc1	at,$f4
    2c10:	8fa50020 	lw	a1,32(sp)
    2c14:	4604003c 	c.lt.s	$f0,$f4
    2c18:	00000000 	nop
    2c1c:	45000005 	bc1f	2c34 <func_80ADBB6C+0x58>
    2c20:	00000000 	nop
    2c24:	0c000000 	jal	0 <EnPoSisters_Init>
    2c28:	02002025 	move	a0,s0
    2c2c:	10000009 	b	2c54 <func_80ADBB6C+0x78>
    2c30:	8fbf001c 	lw	ra,28(sp)
    2c34:	0c000000 	jal	0 <EnPoSisters_Init>
    2c38:	02002025 	move	a0,s0
    2c3c:	00022c00 	sll	a1,v0,0x10
    2c40:	00052c03 	sra	a1,a1,0x10
    2c44:	26040032 	addiu	a0,s0,50
    2c48:	0c000000 	jal	0 <EnPoSisters_Init>
    2c4c:	2406071c 	li	a2,1820
    2c50:	8fbf001c 	lw	ra,28(sp)
    2c54:	8fb00018 	lw	s0,24(sp)
    2c58:	27bd0028 	addiu	sp,sp,40
    2c5c:	03e00008 	jr	ra
    2c60:	00000000 	nop

00002c64 <func_80ADBBF4>:
    2c64:	27bdffe8 	addiu	sp,sp,-24
    2c68:	afbf0014 	sw	ra,20(sp)
    2c6c:	00803825 	move	a3,a0
    2c70:	afa5001c 	sw	a1,28(sp)
    2c74:	afa70018 	sw	a3,24(sp)
    2c78:	0c000000 	jal	0 <EnPoSisters_Init>
    2c7c:	2484014c 	addiu	a0,a0,332
    2c80:	8fa70018 	lw	a3,24(sp)
    2c84:	2406071c 	li	a2,1820
    2c88:	24e40032 	addiu	a0,a3,50
    2c8c:	0c000000 	jal	0 <EnPoSisters_Init>
    2c90:	84e5008a 	lh	a1,138(a3)
    2c94:	8fa70018 	lw	a3,24(sp)
    2c98:	3c014370 	lui	at,0x4370
    2c9c:	44813000 	mtc1	at,$f6
    2ca0:	c4e40090 	lwc1	$f4,144(a3)
    2ca4:	3c0140a0 	lui	at,0x40a0
    2ca8:	4606203c 	c.lt.s	$f4,$f6
    2cac:	00000000 	nop
    2cb0:	4502000e 	bc1fl	2cec <func_80ADBBF4+0x88>
    2cb4:	8fbf0014 	lw	ra,20(sp)
    2cb8:	c4e80094 	lwc1	$f8,148(a3)
    2cbc:	44815000 	mtc1	at,$f10
    2cc0:	3c0141f0 	lui	at,0x41f0
    2cc4:	44818000 	mtc1	at,$f16
    2cc8:	460a4000 	add.s	$f0,$f8,$f10
    2ccc:	46000005 	abs.s	$f0,$f0
    2cd0:	4610003c 	c.lt.s	$f0,$f16
    2cd4:	00000000 	nop
    2cd8:	45020004 	bc1fl	2cec <func_80ADBBF4+0x88>
    2cdc:	8fbf0014 	lw	ra,20(sp)
    2ce0:	0c000000 	jal	0 <EnPoSisters_Init>
    2ce4:	00e02025 	move	a0,a3
    2ce8:	8fbf0014 	lw	ra,20(sp)
    2cec:	27bd0018 	addiu	sp,sp,24
    2cf0:	03e00008 	jr	ra
    2cf4:	00000000 	nop

00002cf8 <func_80ADBC88>:
    2cf8:	3c0e0000 	lui	t6,0x0
    2cfc:	8dce0000 	lw	t6,0(t6)
    2d00:	27bdffd8 	addiu	sp,sp,-40
    2d04:	afb00020 	sw	s0,32(sp)
    2d08:	00808025 	move	s0,a0
    2d0c:	afbf0024 	sw	ra,36(sp)
    2d10:	15c00005 	bnez	t6,2d28 <func_80ADBC88+0x30>
    2d14:	afa5002c 	sw	a1,44(sp)
    2d18:	0c000000 	jal	0 <EnPoSisters_Init>
    2d1c:	00a02025 	move	a0,a1
    2d20:	5440001a 	bnezl	v0,2d8c <func_80ADBC88+0x94>
    2d24:	02002025 	move	a0,s0
    2d28:	8602019a 	lh	v0,410(s0)
    2d2c:	2401001e 	li	at,30
    2d30:	10400003 	beqz	v0,2d40 <func_80ADBC88+0x48>
    2d34:	244fffff 	addiu	t7,v0,-1
    2d38:	a60f019a 	sh	t7,410(s0)
    2d3c:	8602019a 	lh	v0,410(s0)
    2d40:	1441000d 	bne	v0,at,2d78 <func_80ADBC88+0x80>
    2d44:	00000000 	nop
    2d48:	92180194 	lbu	t8,404(s0)
    2d4c:	8fa4002c 	lw	a0,44(sp)
    2d50:	24050c44 	li	a1,3140
    2d54:	17000004 	bnez	t8,2d68 <func_80ADBC88+0x70>
    2d58:	240603e7 	li	a2,999
    2d5c:	00003825 	move	a3,zero
    2d60:	0c000000 	jal	0 <EnPoSisters_Init>
    2d64:	afa00010 	sw	zero,16(sp)
    2d68:	24190001 	li	t9,1
    2d6c:	3c010000 	lui	at,0x0
    2d70:	ac390000 	sw	t9,0(at)
    2d74:	8602019a 	lh	v0,410(s0)
    2d78:	54400004 	bnezl	v0,2d8c <func_80ADBC88+0x94>
    2d7c:	02002025 	move	a0,s0
    2d80:	0c000000 	jal	0 <EnPoSisters_Init>
    2d84:	02002025 	move	a0,s0
    2d88:	02002025 	move	a0,s0
    2d8c:	0c000000 	jal	0 <EnPoSisters_Init>
    2d90:	24052031 	li	a1,8241
    2d94:	8fbf0024 	lw	ra,36(sp)
    2d98:	8fb00020 	lw	s0,32(sp)
    2d9c:	27bd0028 	addiu	sp,sp,40
    2da0:	03e00008 	jr	ra
    2da4:	00000000 	nop

00002da8 <func_80ADBD38>:
    2da8:	27bdffe8 	addiu	sp,sp,-24
    2dac:	afbf0014 	sw	ra,20(sp)
    2db0:	afa5001c 	sw	a1,28(sp)
    2db4:	848e019a 	lh	t6,410(a0)
    2db8:	24860008 	addiu	a2,a0,8
    2dbc:	25cf0001 	addiu	t7,t6,1
    2dc0:	a48f019a 	sh	t7,410(a0)
    2dc4:	8485019a 	lh	a1,410(a0)
    2dc8:	0c000000 	jal	0 <EnPoSisters_Init>
    2dcc:	afa40018 	sw	a0,24(sp)
    2dd0:	8fa40018 	lw	a0,24(sp)
    2dd4:	24010020 	li	at,32
    2dd8:	8498019a 	lh	t8,410(a0)
    2ddc:	57010004 	bnel	t8,at,2df0 <func_80ADBD38+0x48>
    2de0:	8fbf0014 	lw	ra,20(sp)
    2de4:	0c000000 	jal	0 <EnPoSisters_Init>
    2de8:	00000000 	nop
    2dec:	8fbf0014 	lw	ra,20(sp)
    2df0:	27bd0018 	addiu	sp,sp,24
    2df4:	03e00008 	jr	ra
    2df8:	00000000 	nop

00002dfc <func_80ADBD8C>:
    2dfc:	27bdffe8 	addiu	sp,sp,-24
    2e00:	afbf0014 	sw	ra,20(sp)
    2e04:	afa5001c 	sw	a1,28(sp)
    2e08:	848e019a 	lh	t6,410(a0)
    2e0c:	00803025 	move	a2,a0
    2e10:	24053873 	li	a1,14451
    2e14:	25cfffff 	addiu	t7,t6,-1
    2e18:	a48f019a 	sh	t7,410(a0)
    2e1c:	8482019a 	lh	v0,410(a0)
    2e20:	14400008 	bnez	v0,2e44 <func_80ADBD8C+0x48>
    2e24:	00000000 	nop
    2e28:	0c000000 	jal	0 <EnPoSisters_Init>
    2e2c:	afa60018 	sw	a2,24(sp)
    2e30:	8fa60018 	lw	a2,24(sp)
    2e34:	90d80199 	lbu	t8,409(a2)
    2e38:	84c2019a 	lh	v0,410(a2)
    2e3c:	3319ff7f 	andi	t9,t8,0xff7f
    2e40:	a0d90199 	sb	t9,409(a2)
    2e44:	1c400038 	bgtz	v0,2f28 <func_80ADBD8C+0x12c>
    2e48:	24c4014c 	addiu	a0,a2,332
    2e4c:	0c000000 	jal	0 <EnPoSisters_Init>
    2e50:	afa60018 	sw	a2,24(sp)
    2e54:	1040000c 	beqz	v0,2e88 <func_80ADBD8C+0x8c>
    2e58:	8fa60018 	lw	a2,24(sp)
    2e5c:	3c020000 	lui	v0,0x0
    2e60:	240800ff 	li	t0,255
    2e64:	90ca0194 	lbu	t2,404(a2)
    2e68:	24420000 	addiu	v0,v0,0
    2e6c:	a0c80231 	sb	t0,561(a2)
    2e70:	8c490000 	lw	t1,0(v0)
    2e74:	240b0001 	li	t3,1
    2e78:	014b6004 	sllv	t4,t3,t2
    2e7c:	012c6825 	or	t5,t1,t4
    2e80:	10000029 	b	2f28 <func_80ADBD8C+0x12c>
    2e84:	ac4d0000 	sw	t5,0(v0)
    2e88:	3c01437f 	lui	at,0x437f
    2e8c:	44813000 	mtc1	at,$f6
    2e90:	c4c40164 	lwc1	$f4,356(a2)
    2e94:	c4ca015c 	lwc1	$f10,348(a2)
    2e98:	240f0001 	li	t7,1
    2e9c:	46062202 	mul.s	$f8,$f4,$f6
    2ea0:	460a4403 	div.s	$f16,$f8,$f10
    2ea4:	444ef800 	cfc1	t6,$31
    2ea8:	44cff800 	ctc1	t7,$31
    2eac:	00000000 	nop
    2eb0:	460084a4 	cvt.w.s	$f18,$f16
    2eb4:	444ff800 	cfc1	t7,$31
    2eb8:	00000000 	nop
    2ebc:	31ef0078 	andi	t7,t7,0x78
    2ec0:	11e00012 	beqz	t7,2f0c <func_80ADBD8C+0x110>
    2ec4:	3c014f00 	lui	at,0x4f00
    2ec8:	44819000 	mtc1	at,$f18
    2ecc:	240f0001 	li	t7,1
    2ed0:	46128481 	sub.s	$f18,$f16,$f18
    2ed4:	44cff800 	ctc1	t7,$31
    2ed8:	00000000 	nop
    2edc:	460094a4 	cvt.w.s	$f18,$f18
    2ee0:	444ff800 	cfc1	t7,$31
    2ee4:	00000000 	nop
    2ee8:	31ef0078 	andi	t7,t7,0x78
    2eec:	15e00005 	bnez	t7,2f04 <func_80ADBD8C+0x108>
    2ef0:	00000000 	nop
    2ef4:	440f9000 	mfc1	t7,$f18
    2ef8:	3c018000 	lui	at,0x8000
    2efc:	10000007 	b	2f1c <func_80ADBD8C+0x120>
    2f00:	01e17825 	or	t7,t7,at
    2f04:	10000005 	b	2f1c <func_80ADBD8C+0x120>
    2f08:	240fffff 	li	t7,-1
    2f0c:	440f9000 	mfc1	t7,$f18
    2f10:	00000000 	nop
    2f14:	05e0fffb 	bltz	t7,2f04 <func_80ADBD8C+0x108>
    2f18:	00000000 	nop
    2f1c:	44cef800 	ctc1	t6,$31
    2f20:	a0cf0231 	sb	t7,561(a2)
    2f24:	00000000 	nop
    2f28:	3c020000 	lui	v0,0x0
    2f2c:	24420000 	addiu	v0,v0,0
    2f30:	8c580000 	lw	t8,0(v0)
    2f34:	2401000f 	li	at,15
    2f38:	57010004 	bnel	t8,at,2f4c <func_80ADBD8C+0x150>
    2f3c:	8fbf0014 	lw	ra,20(sp)
    2f40:	0c000000 	jal	0 <EnPoSisters_Init>
    2f44:	00c02025 	move	a0,a2
    2f48:	8fbf0014 	lw	ra,20(sp)
    2f4c:	27bd0018 	addiu	sp,sp,24
    2f50:	03e00008 	jr	ra
    2f54:	00000000 	nop

00002f58 <func_80ADBEE8>:
    2f58:	27bdffe8 	addiu	sp,sp,-24
    2f5c:	afbf0014 	sw	ra,20(sp)
    2f60:	00803825 	move	a3,a0
    2f64:	afa5001c 	sw	a1,28(sp)
    2f68:	afa70018 	sw	a3,24(sp)
    2f6c:	0c000000 	jal	0 <EnPoSisters_Init>
    2f70:	2484014c 	addiu	a0,a0,332
    2f74:	8fa70018 	lw	a3,24(sp)
    2f78:	84e5019a 	lh	a1,410(a3)
    2f7c:	00e02025 	move	a0,a3
    2f80:	24e60008 	addiu	a2,a3,8
    2f84:	10a00003 	beqz	a1,2f94 <func_80ADBEE8+0x3c>
    2f88:	24aeffff 	addiu	t6,a1,-1
    2f8c:	a4ee019a 	sh	t6,410(a3)
    2f90:	84e5019a 	lh	a1,410(a3)
    2f94:	0c000000 	jal	0 <EnPoSisters_Init>
    2f98:	afa70018 	sw	a3,24(sp)
    2f9c:	8fa70018 	lw	a3,24(sp)
    2fa0:	84ef019a 	lh	t7,410(a3)
    2fa4:	00e02025 	move	a0,a3
    2fa8:	55e00004 	bnezl	t7,2fbc <func_80ADBEE8+0x64>
    2fac:	8fbf0014 	lw	ra,20(sp)
    2fb0:	0c000000 	jal	0 <EnPoSisters_Init>
    2fb4:	8fa5001c 	lw	a1,28(sp)
    2fb8:	8fbf0014 	lw	ra,20(sp)
    2fbc:	27bd0018 	addiu	sp,sp,24
    2fc0:	03e00008 	jr	ra
    2fc4:	00000000 	nop

00002fc8 <func_80ADBF58>:
    2fc8:	27bdffe0 	addiu	sp,sp,-32
    2fcc:	afb00018 	sw	s0,24(sp)
    2fd0:	00808025 	move	s0,a0
    2fd4:	afbf001c 	sw	ra,28(sp)
    2fd8:	afa50024 	sw	a1,36(sp)
    2fdc:	0c000000 	jal	0 <EnPoSisters_Init>
    2fe0:	2484014c 	addiu	a0,a0,332
    2fe4:	860e019a 	lh	t6,410(s0)
    2fe8:	260400b6 	addiu	a0,s0,182
    2fec:	86050032 	lh	a1,50(s0)
    2ff0:	25cfffff 	addiu	t7,t6,-1
    2ff4:	a60f019a 	sh	t7,410(s0)
    2ff8:	0c000000 	jal	0 <EnPoSisters_Init>
    2ffc:	24060500 	li	a2,1280
    3000:	8602019a 	lh	v0,410(s0)
    3004:	26040068 	addiu	a0,s0,104
    3008:	3c0540a0 	lui	a1,0x40a0
    300c:	14400009 	bnez	v0,3034 <func_80ADBF58+0x6c>
    3010:	3c063e4c 	lui	a2,0x3e4c
    3014:	92180194 	lbu	t8,404(s0)
    3018:	8fa80024 	lw	t0,36(sp)
    301c:	3c010001 	lui	at,0x1
    3020:	17000004 	bnez	t8,3034 <func_80ADBF58+0x6c>
    3024:	00280821 	addu	at,at,t0
    3028:	24190004 	li	t9,4
    302c:	a0390ae3 	sb	t9,2787(at)
    3030:	8602019a 	lh	v0,410(s0)
    3034:	04430005 	bgezl	v0,304c <func_80ADBF58+0x84>
    3038:	2401ffba 	li	at,-70
    303c:	0c000000 	jal	0 <EnPoSisters_Init>
    3040:	34c6cccd 	ori	a2,a2,0xcccd
    3044:	8602019a 	lh	v0,410(s0)
    3048:	2401ffba 	li	at,-70
    304c:	5441000c 	bnel	v0,at,3080 <func_80ADBF58+0xb8>
    3050:	2841ff88 	slti	at,v0,-120
    3054:	92090194 	lbu	t1,404(s0)
    3058:	24010001 	li	at,1
    305c:	8fa40024 	lw	a0,36(sp)
    3060:	15210006 	bne	t1,at,307c <func_80ADBF58+0xb4>
    3064:	3c050000 	lui	a1,0x0
    3068:	24a50000 	addiu	a1,a1,0
    306c:	24060028 	li	a2,40
    3070:	0c000000 	jal	0 <EnPoSisters_Init>
    3074:	240738ec 	li	a3,14572
    3078:	8602019a 	lh	v0,410(s0)
    307c:	2841ff88 	slti	at,v0,-120
    3080:	50200004 	beqzl	at,3094 <func_80ADBF58+0xcc>
    3084:	8fbf001c 	lw	ra,28(sp)
    3088:	0c000000 	jal	0 <EnPoSisters_Init>
    308c:	02002025 	move	a0,s0
    3090:	8fbf001c 	lw	ra,28(sp)
    3094:	8fb00018 	lw	s0,24(sp)
    3098:	27bd0020 	addiu	sp,sp,32
    309c:	03e00008 	jr	ra
    30a0:	00000000 	nop

000030a4 <func_80ADC034>:
    30a4:	27bdffe8 	addiu	sp,sp,-24
    30a8:	afbf0014 	sw	ra,20(sp)
    30ac:	908e010c 	lbu	t6,268(a0)
    30b0:	3c090000 	lui	t1,0x0
    30b4:	24180014 	li	t8,20
    30b8:	11c0000b 	beqz	t6,30e8 <func_80ADC034+0x44>
    30bc:	25290000 	addiu	t1,t1,0
    30c0:	90820231 	lbu	v0,561(a0)
    30c4:	240100ff 	li	at,255
    30c8:	54410008 	bnel	v0,at,30ec <func_80ADC034+0x48>
    30cc:	a0980197 	sb	t8,407(a0)
    30d0:	90830197 	lbu	v1,407(a0)
    30d4:	10600006 	beqz	v1,30f0 <func_80ADC034+0x4c>
    30d8:	246fffff 	addiu	t7,v1,-1
    30dc:	a08f0197 	sb	t7,407(a0)
    30e0:	10000003 	b	30f0 <func_80ADC034+0x4c>
    30e4:	90820231 	lbu	v0,561(a0)
    30e8:	a0980197 	sb	t8,407(a0)
    30ec:	90820231 	lbu	v0,561(a0)
    30f0:	54400006 	bnezl	v0,310c <func_80ADC034+0x68>
    30f4:	8c820190 	lw	v0,400(a0)
    30f8:	8482019c 	lh	v0,412(a0)
    30fc:	10400002 	beqz	v0,3108 <func_80ADC034+0x64>
    3100:	2459ffff 	addiu	t9,v0,-1
    3104:	a499019c 	sh	t9,412(a0)
    3108:	8c820190 	lw	v0,400(a0)
    310c:	3c080000 	lui	t0,0x0
    3110:	25080000 	addiu	t0,t0,0
    3114:	51020016 	beql	t0,v0,3170 <func_80ADC034+0xcc>
    3118:	8fbf0014 	lw	ra,20(sp)
    311c:	11220013 	beq	t1,v0,316c <func_80ADC034+0xc8>
    3120:	3c0a0000 	lui	t2,0x0
    3124:	254a0000 	addiu	t2,t2,0
    3128:	51420011 	beql	t2,v0,3170 <func_80ADC034+0xcc>
    312c:	8fbf0014 	lw	ra,20(sp)
    3130:	908b0197 	lbu	t3,407(a0)
    3134:	55600006 	bnezl	t3,3150 <func_80ADC034+0xac>
    3138:	848c019c 	lh	t4,412(a0)
    313c:	0c000000 	jal	0 <EnPoSisters_Init>
    3140:	00000000 	nop
    3144:	1000000a 	b	3170 <func_80ADC034+0xcc>
    3148:	8fbf0014 	lw	ra,20(sp)
    314c:	848c019c 	lh	t4,412(a0)
    3150:	55800007 	bnezl	t4,3170 <func_80ADC034+0xcc>
    3154:	8fbf0014 	lw	ra,20(sp)
    3158:	908d0231 	lbu	t5,561(a0)
    315c:	55a00004 	bnezl	t5,3170 <func_80ADC034+0xcc>
    3160:	8fbf0014 	lw	ra,20(sp)
    3164:	0c000000 	jal	0 <EnPoSisters_Init>
    3168:	00000000 	nop
    316c:	8fbf0014 	lw	ra,20(sp)
    3170:	27bd0018 	addiu	sp,sp,24
    3174:	03e00008 	jr	ra
    3178:	00000000 	nop

0000317c <func_80ADC10C>:
    317c:	27bdffd0 	addiu	sp,sp,-48
    3180:	afbf001c 	sw	ra,28(sp)
    3184:	afb00018 	sw	s0,24(sp)
    3188:	afa50034 	sw	a1,52(sp)
    318c:	908202bd 	lbu	v0,701(a0)
    3190:	00808025 	move	s0,a0
    3194:	260502c4 	addiu	a1,s0,708
    3198:	304e0002 	andi	t6,v0,0x2
    319c:	11c00062 	beqz	t6,3328 <func_80ADC10C+0x1ac>
    31a0:	304ffffd 	andi	t7,v0,0xfffd
    31a4:	a08f02bd 	sb	t7,701(a0)
    31a8:	0c000000 	jal	0 <EnPoSisters_Init>
    31ac:	24060001 	li	a2,1
    31b0:	92180195 	lbu	t8,405(s0)
    31b4:	53000020 	beqzl	t8,3238 <func_80ADC10C+0xbc>
    31b8:	920902c0 	lbu	t1,704(s0)
    31bc:	8e020118 	lw	v0,280(s0)
    31c0:	02002025 	move	a0,s0
    31c4:	240538ef 	li	a1,14575
    31c8:	8459019c 	lh	t9,412(v0)
    31cc:	2728ffff 	addiu	t0,t9,-1
    31d0:	0c000000 	jal	0 <EnPoSisters_Init>
    31d4:	a448019c 	sh	t0,412(v0)
    31d8:	02002025 	move	a0,s0
    31dc:	0c000000 	jal	0 <EnPoSisters_Init>
    31e0:	8fa50034 	lw	a1,52(sp)
    31e4:	0c000000 	jal	0 <EnPoSisters_Init>
    31e8:	00000000 	nop
    31ec:	3c010000 	lui	at,0x0
    31f0:	c4240000 	lwc1	$f4,0(at)
    31f4:	4604003c 	c.lt.s	$f0,$f4
    31f8:	00000000 	nop
    31fc:	4502004b 	bc1fl	332c <func_80ADC10C+0x1b0>
    3200:	8fbf001c 	lw	ra,28(sp)
    3204:	c6060024 	lwc1	$f6,36(s0)
    3208:	8fa40034 	lw	a0,52(sp)
    320c:	27a50024 	addiu	a1,sp,36
    3210:	e7a60024 	swc1	$f6,36(sp)
    3214:	c6080028 	lwc1	$f8,40(s0)
    3218:	24060008 	li	a2,8
    321c:	e7a80028 	swc1	$f8,40(sp)
    3220:	c60a002c 	lwc1	$f10,44(s0)
    3224:	0c000000 	jal	0 <EnPoSisters_Init>
    3228:	e7aa002c 	swc1	$f10,44(sp)
    322c:	1000003f 	b	332c <func_80ADC10C+0x1b0>
    3230:	8fbf001c 	lw	ra,28(sp)
    3234:	920902c0 	lbu	t1,704(s0)
    3238:	24010009 	li	at,9
    323c:	51210009 	beql	t1,at,3264 <func_80ADC10C+0xe8>
    3240:	920b0194 	lbu	t3,404(s0)
    3244:	920200b1 	lbu	v0,177(s0)
    3248:	2401000f 	li	at,15
    324c:	14400009 	bnez	v0,3274 <func_80ADC10C+0xf8>
    3250:	00000000 	nop
    3254:	920a00b0 	lbu	t2,176(s0)
    3258:	15400006 	bnez	t2,3274 <func_80ADC10C+0xf8>
    325c:	00000000 	nop
    3260:	920b0194 	lbu	t3,404(s0)
    3264:	55600031 	bnezl	t3,332c <func_80ADC10C+0x1b0>
    3268:	8fbf001c 	lw	ra,28(sp)
    326c:	1000002e 	b	3328 <func_80ADC10C+0x1ac>
    3270:	a6000110 	sh	zero,272(s0)
    3274:	5441000c 	bnel	v0,at,32a8 <func_80ADC10C+0x12c>
    3278:	920f0194 	lbu	t7,404(s0)
    327c:	920d0199 	lbu	t5,409(s0)
    3280:	860c00b6 	lh	t4,182(s0)
    3284:	02002025 	move	a0,s0
    3288:	35ae0002 	ori	t6,t5,0x2
    328c:	a20e0199 	sb	t6,409(s0)
    3290:	a60c0032 	sh	t4,50(s0)
    3294:	0c000000 	jal	0 <EnPoSisters_Init>
    3298:	8fa50034 	lw	a1,52(sp)
    329c:	10000023 	b	332c <func_80ADC10C+0x1b0>
    32a0:	8fbf001c 	lw	ra,28(sp)
    32a4:	920f0194 	lbu	t7,404(s0)
    32a8:	2401000e 	li	at,14
    32ac:	15e0000e 	bnez	t7,32e8 <func_80ADC10C+0x16c>
    32b0:	00000000 	nop
    32b4:	1441000c 	bne	v0,at,32e8 <func_80ADC10C+0x16c>
    32b8:	00000000 	nop
    32bc:	8e190190 	lw	t9,400(s0)
    32c0:	3c180000 	lui	t8,0x0
    32c4:	27180000 	addiu	t8,t8,0
    32c8:	17190007 	bne	t8,t9,32e8 <func_80ADC10C+0x16c>
    32cc:	00000000 	nop
    32d0:	8608019c 	lh	t0,412(s0)
    32d4:	2409ffd3 	li	t1,-45
    32d8:	55000014 	bnezl	t0,332c <func_80ADC10C+0x1b0>
    32dc:	8fbf001c 	lw	ra,28(sp)
    32e0:	10000011 	b	3328 <func_80ADC10C+0x1ac>
    32e4:	a609019c 	sh	t1,412(s0)
    32e8:	0c000000 	jal	0 <EnPoSisters_Init>
    32ec:	02002025 	move	a0,s0
    32f0:	10400006 	beqz	v0,330c <func_80ADC10C+0x190>
    32f4:	8fa40034 	lw	a0,52(sp)
    32f8:	02002025 	move	a0,s0
    32fc:	0c000000 	jal	0 <EnPoSisters_Init>
    3300:	24053875 	li	a1,14453
    3304:	10000006 	b	3320 <func_80ADC10C+0x1a4>
    3308:	00000000 	nop
    330c:	0c000000 	jal	0 <EnPoSisters_Init>
    3310:	02002825 	move	a1,s0
    3314:	02002025 	move	a0,s0
    3318:	0c000000 	jal	0 <EnPoSisters_Init>
    331c:	24053886 	li	a1,14470
    3320:	0c000000 	jal	0 <EnPoSisters_Init>
    3324:	02002025 	move	a0,s0
    3328:	8fbf001c 	lw	ra,28(sp)
    332c:	8fb00018 	lw	s0,24(sp)
    3330:	27bd0030 	addiu	sp,sp,48
    3334:	03e00008 	jr	ra
    3338:	00000000 	nop

0000333c <EnPoSisters_Update>:
    333c:	27bdffb0 	addiu	sp,sp,-80
    3340:	afbf0024 	sw	ra,36(sp)
    3344:	afb00020 	sw	s0,32(sp)
    3348:	afa50054 	sw	a1,84(sp)
    334c:	908202bc 	lbu	v0,700(a0)
    3350:	00808025 	move	s0,a0
    3354:	304e0002 	andi	t6,v0,0x2
    3358:	11c00003 	beqz	t6,3368 <EnPoSisters_Update+0x2c>
    335c:	304ffffd 	andi	t7,v0,0xfffd
    3360:	0c000000 	jal	0 <EnPoSisters_Init>
    3364:	a08f02bc 	sb	t7,700(a0)
    3368:	02002025 	move	a0,s0
    336c:	0c000000 	jal	0 <EnPoSisters_Init>
    3370:	8fa50054 	lw	a1,84(sp)
    3374:	92180199 	lbu	t8,409(s0)
    3378:	02002025 	move	a0,s0
    337c:	33190004 	andi	t9,t8,0x4
    3380:	53200004 	beqzl	t9,3394 <EnPoSisters_Update+0x58>
    3384:	8e190190 	lw	t9,400(s0)
    3388:	0c000000 	jal	0 <EnPoSisters_Init>
    338c:	8fa50054 	lw	a1,84(sp)
    3390:	8e190190 	lw	t9,400(s0)
    3394:	02002025 	move	a0,s0
    3398:	8fa50054 	lw	a1,84(sp)
    339c:	0320f809 	jalr	t9
    33a0:	00000000 	nop
    33a4:	92020199 	lbu	v0,409(s0)
    33a8:	3048001f 	andi	t0,v0,0x1f
    33ac:	11000082 	beqz	t0,35b8 <EnPoSisters_Update+0x27c>
    33b0:	30490008 	andi	t1,v0,0x8
    33b4:	11200003 	beqz	t1,33c4 <EnPoSisters_Update+0x88>
    33b8:	02002025 	move	a0,s0
    33bc:	0c000000 	jal	0 <EnPoSisters_Init>
    33c0:	8fa50054 	lw	a1,84(sp)
    33c4:	0c000000 	jal	0 <EnPoSisters_Init>
    33c8:	02002025 	move	a0,s0
    33cc:	920a0199 	lbu	t2,409(s0)
    33d0:	8fa40054 	lw	a0,84(sp)
    33d4:	02002825 	move	a1,s0
    33d8:	314b0010 	andi	t3,t2,0x10
    33dc:	1160000c 	beqz	t3,3410 <EnPoSisters_Update+0xd4>
    33e0:	3c014120 	lui	at,0x4120
    33e4:	3c0141a0 	lui	at,0x41a0
    33e8:	44810000 	mtc1	at,$f0
    33ec:	44802000 	mtc1	zero,$f4
    33f0:	240c0005 	li	t4,5
    33f4:	44060000 	mfc1	a2,$f0
    33f8:	44070000 	mfc1	a3,$f0
    33fc:	afac0014 	sw	t4,20(sp)
    3400:	0c000000 	jal	0 <EnPoSisters_Init>
    3404:	e7a40010 	swc1	$f4,16(sp)
    3408:	10000013 	b	3458 <EnPoSisters_Update+0x11c>
    340c:	260502ac 	addiu	a1,s0,684
    3410:	c6060024 	lwc1	$f6,36(s0)
    3414:	44815000 	mtc1	at,$f10
    3418:	8fa40054 	lw	a0,84(sp)
    341c:	e7a60038 	swc1	$f6,56(sp)
    3420:	c6080028 	lwc1	$f8,40(s0)
    3424:	27ad0038 	addiu	t5,sp,56
    3428:	26050078 	addiu	a1,s0,120
    342c:	460a4400 	add.s	$f16,$f8,$f10
    3430:	27a60034 	addiu	a2,sp,52
    3434:	02003825 	move	a3,s0
    3438:	248407c0 	addiu	a0,a0,1984
    343c:	e7b0003c 	swc1	$f16,60(sp)
    3440:	c612002c 	lwc1	$f18,44(s0)
    3444:	afad0010 	sw	t5,16(sp)
    3448:	0c000000 	jal	0 <EnPoSisters_Init>
    344c:	e7b20040 	swc1	$f18,64(sp)
    3450:	e6000080 	swc1	$f0,128(s0)
    3454:	260502ac 	addiu	a1,s0,684
    3458:	afa50028 	sw	a1,40(sp)
    345c:	0c000000 	jal	0 <EnPoSisters_Init>
    3460:	02002025 	move	a0,s0
    3464:	8e020190 	lw	v0,400(s0)
    3468:	3c040000 	lui	a0,0x0
    346c:	24840000 	addiu	a0,a0,0
    3470:	10820004 	beq	a0,v0,3484 <EnPoSisters_Update+0x148>
    3474:	3c0e0000 	lui	t6,0x0
    3478:	25ce0000 	addiu	t6,t6,0
    347c:	15c2000d 	bne	t6,v0,34b4 <EnPoSisters_Update+0x178>
    3480:	3c080000 	lui	t0,0x0
    3484:	920f0198 	lbu	t7,408(s0)
    3488:	24190008 	li	t9,8
    348c:	25f80001 	addiu	t8,t7,1
    3490:	330200ff 	andi	v0,t8,0xff
    3494:	28410009 	slti	at,v0,9
    3498:	14200003 	bnez	at,34a8 <EnPoSisters_Update+0x16c>
    349c:	a2180198 	sb	t8,408(s0)
    34a0:	10000002 	b	34ac <EnPoSisters_Update+0x170>
    34a4:	a2190198 	sb	t9,408(s0)
    34a8:	a2020198 	sb	v0,408(s0)
    34ac:	10000010 	b	34f0 <EnPoSisters_Update+0x1b4>
    34b0:	8e020190 	lw	v0,400(s0)
    34b4:	25080000 	addiu	t0,t0,0
    34b8:	1102000d 	beq	t0,v0,34f0 <EnPoSisters_Update+0x1b4>
    34bc:	00000000 	nop
    34c0:	92030198 	lbu	v1,408(s0)
    34c4:	24090001 	li	t1,1
    34c8:	2463ffff 	addiu	v1,v1,-1
    34cc:	00031c00 	sll	v1,v1,0x10
    34d0:	00031c03 	sra	v1,v1,0x10
    34d4:	5c600005 	bgtzl	v1,34ec <EnPoSisters_Update+0x1b0>
    34d8:	a2030198 	sb	v1,408(s0)
    34dc:	a2090198 	sb	t1,408(s0)
    34e0:	10000003 	b	34f0 <EnPoSisters_Update+0x1b4>
    34e4:	8e020190 	lw	v0,400(s0)
    34e8:	a2030198 	sb	v1,408(s0)
    34ec:	8e020190 	lw	v0,400(s0)
    34f0:	5482000c 	bnel	a0,v0,3524 <EnPoSisters_Update+0x1e8>
    34f4:	920c0199 	lbu	t4,409(s0)
    34f8:	8e0a0004 	lw	t2,4(s0)
    34fc:	3c010100 	lui	at,0x100
    3500:	8fa40054 	lw	a0,84(sp)
    3504:	01415825 	or	t3,t2,at
    3508:	3c010001 	lui	at,0x1
    350c:	ae0b0004 	sw	t3,4(s0)
    3510:	34211e60 	ori	at,at,0x1e60
    3514:	8fa60028 	lw	a2,40(sp)
    3518:	0c000000 	jal	0 <EnPoSisters_Init>
    351c:	00812821 	addu	a1,a0,at
    3520:	920c0199 	lbu	t4,409(s0)
    3524:	3c010001 	lui	at,0x1
    3528:	34211e60 	ori	at,at,0x1e60
    352c:	318d0001 	andi	t5,t4,0x1
    3530:	11a00004 	beqz	t5,3544 <EnPoSisters_Update+0x208>
    3534:	8fa40054 	lw	a0,84(sp)
    3538:	00812821 	addu	a1,a0,at
    353c:	0c000000 	jal	0 <EnPoSisters_Init>
    3540:	8fa60028 	lw	a2,40(sp)
    3544:	8e180190 	lw	t8,400(s0)
    3548:	3c0f0000 	lui	t7,0x0
    354c:	25ef0000 	addiu	t7,t7,0
    3550:	11f80006 	beq	t7,t8,356c <EnPoSisters_Update+0x230>
    3554:	8fa40054 	lw	a0,84(sp)
    3558:	3c010001 	lui	at,0x1
    355c:	34211e60 	ori	at,at,0x1e60
    3560:	00812821 	addu	a1,a0,at
    3564:	0c000000 	jal	0 <EnPoSisters_Init>
    3568:	8fa60028 	lw	a2,40(sp)
    356c:	02002025 	move	a0,s0
    3570:	0c000000 	jal	0 <EnPoSisters_Init>
    3574:	3c054220 	lui	a1,0x4220
    3578:	8e090190 	lw	t1,400(s0)
    357c:	3c080000 	lui	t0,0x0
    3580:	25080000 	addiu	t0,t0,0
    3584:	55090007 	bnel	t0,t1,35a4 <EnPoSisters_Update+0x268>
    3588:	920c0199 	lbu	t4,409(s0)
    358c:	860a0032 	lh	t2,50(s0)
    3590:	34018000 	li	at,0x8000
    3594:	01415821 	addu	t3,t2,at
    3598:	10000007 	b	35b8 <EnPoSisters_Update+0x27c>
    359c:	a60b00b6 	sh	t3,182(s0)
    35a0:	920c0199 	lbu	t4,409(s0)
    35a4:	318d0002 	andi	t5,t4,0x2
    35a8:	51a00004 	beqzl	t5,35bc <EnPoSisters_Update+0x280>
    35ac:	8fbf0024 	lw	ra,36(sp)
    35b0:	860e0032 	lh	t6,50(s0)
    35b4:	a60e00b6 	sh	t6,182(s0)
    35b8:	8fbf0024 	lw	ra,36(sp)
    35bc:	8fb00020 	lw	s0,32(sp)
    35c0:	27bd0050 	addiu	sp,sp,80
    35c4:	03e00008 	jr	ra
    35c8:	00000000 	nop

000035cc <func_80ADC55C>:
    35cc:	8c820154 	lw	v0,340(a0)
    35d0:	3c0e0600 	lui	t6,0x600
    35d4:	25ce0114 	addiu	t6,t6,276
    35d8:	15c20021 	bne	t6,v0,3660 <func_80ADC55C+0x94>
    35dc:	3c190600 	lui	t9,0x600
    35e0:	9082022e 	lbu	v0,558(a0)
    35e4:	240f00ff 	li	t7,255
    35e8:	24180032 	li	t8,50
    35ec:	24420005 	addiu	v0,v0,5
    35f0:	00021400 	sll	v0,v0,0x10
    35f4:	00021403 	sra	v0,v0,0x10
    35f8:	28410100 	slti	at,v0,256
    35fc:	54200004 	bnezl	at,3610 <func_80ADC55C+0x44>
    3600:	a082022e 	sb	v0,558(a0)
    3604:	10000002 	b	3610 <func_80ADC55C+0x44>
    3608:	a08f022e 	sb	t7,558(a0)
    360c:	a082022e 	sb	v0,558(a0)
    3610:	9082022f 	lbu	v0,559(a0)
    3614:	2442fffb 	addiu	v0,v0,-5
    3618:	00021400 	sll	v0,v0,0x10
    361c:	00021403 	sra	v0,v0,0x10
    3620:	28410032 	slti	at,v0,50
    3624:	50200004 	beqzl	at,3638 <func_80ADC55C+0x6c>
    3628:	a082022f 	sb	v0,559(a0)
    362c:	10000002 	b	3638 <func_80ADC55C+0x6c>
    3630:	a098022f 	sb	t8,559(a0)
    3634:	a082022f 	sb	v0,559(a0)
    3638:	90820230 	lbu	v0,560(a0)
    363c:	2442fffb 	addiu	v0,v0,-5
    3640:	00021400 	sll	v0,v0,0x10
    3644:	00021403 	sra	v0,v0,0x10
    3648:	04410003 	bgez	v0,3658 <func_80ADC55C+0x8c>
    364c:	00000000 	nop
    3650:	03e00008 	jr	ra
    3654:	a0800230 	sb	zero,560(a0)
    3658:	03e00008 	jr	ra
    365c:	a0820230 	sb	v0,560(a0)
    3660:	27390a54 	addiu	t9,t9,2644
    3664:	17220022 	bne	t9,v0,36f0 <func_80ADC55C+0x124>
    3668:	3c0b0600 	lui	t3,0x600
    366c:	9082022e 	lbu	v0,558(a0)
    3670:	24080050 	li	t0,80
    3674:	240900ff 	li	t1,255
    3678:	24420005 	addiu	v0,v0,5
    367c:	00021400 	sll	v0,v0,0x10
    3680:	00021403 	sra	v0,v0,0x10
    3684:	28410051 	slti	at,v0,81
    3688:	14200003 	bnez	at,3698 <func_80ADC55C+0xcc>
    368c:	240a00e1 	li	t2,225
    3690:	10000002 	b	369c <func_80ADC55C+0xd0>
    3694:	a088022e 	sb	t0,558(a0)
    3698:	a082022e 	sb	v0,558(a0)
    369c:	9082022f 	lbu	v0,559(a0)
    36a0:	24420005 	addiu	v0,v0,5
    36a4:	00021400 	sll	v0,v0,0x10
    36a8:	00021403 	sra	v0,v0,0x10
    36ac:	28410100 	slti	at,v0,256
    36b0:	54200004 	bnezl	at,36c4 <func_80ADC55C+0xf8>
    36b4:	a082022f 	sb	v0,559(a0)
    36b8:	10000002 	b	36c4 <func_80ADC55C+0xf8>
    36bc:	a089022f 	sb	t1,559(a0)
    36c0:	a082022f 	sb	v0,559(a0)
    36c4:	90820230 	lbu	v0,560(a0)
    36c8:	24420005 	addiu	v0,v0,5
    36cc:	00021400 	sll	v0,v0,0x10
    36d0:	00021403 	sra	v0,v0,0x10
    36d4:	284100e2 	slti	at,v0,226
    36d8:	14200003 	bnez	at,36e8 <func_80ADC55C+0x11c>
    36dc:	00000000 	nop
    36e0:	03e00008 	jr	ra
    36e4:	a08a0230 	sb	t2,560(a0)
    36e8:	03e00008 	jr	ra
    36ec:	a0820230 	sb	v0,560(a0)
    36f0:	256b08c0 	addiu	t3,t3,2240
    36f4:	55620010 	bnel	t3,v0,3738 <func_80ADC55C+0x16c>
    36f8:	9082022e 	lbu	v0,558(a0)
    36fc:	908c0114 	lbu	t4,276(a0)
    3700:	240e0050 	li	t6,80
    3704:	240f00ff 	li	t7,255
    3708:	318d0002 	andi	t5,t4,0x2
    370c:	11a00005 	beqz	t5,3724 <func_80ADC55C+0x158>
    3710:	241800e1 	li	t8,225
    3714:	a080022e 	sb	zero,558(a0)
    3718:	a080022f 	sb	zero,559(a0)
    371c:	03e00008 	jr	ra
    3720:	a0800230 	sb	zero,560(a0)
    3724:	a08e022e 	sb	t6,558(a0)
    3728:	a08f022f 	sb	t7,559(a0)
    372c:	03e00008 	jr	ra
    3730:	a0980230 	sb	t8,560(a0)
    3734:	9082022e 	lbu	v0,558(a0)
    3738:	241900ff 	li	t9,255
    373c:	240800ff 	li	t0,255
    3740:	24420005 	addiu	v0,v0,5
    3744:	00021400 	sll	v0,v0,0x10
    3748:	00021403 	sra	v0,v0,0x10
    374c:	28410100 	slti	at,v0,256
    3750:	54200004 	bnezl	at,3764 <func_80ADC55C+0x198>
    3754:	a082022e 	sb	v0,558(a0)
    3758:	10000002 	b	3764 <func_80ADC55C+0x198>
    375c:	a099022e 	sb	t9,558(a0)
    3760:	a082022e 	sb	v0,558(a0)
    3764:	9082022f 	lbu	v0,559(a0)
    3768:	24420005 	addiu	v0,v0,5
    376c:	00021400 	sll	v0,v0,0x10
    3770:	00021403 	sra	v0,v0,0x10
    3774:	28410100 	slti	at,v0,256
    3778:	54200004 	bnezl	at,378c <func_80ADC55C+0x1c0>
    377c:	a082022f 	sb	v0,559(a0)
    3780:	10000002 	b	378c <func_80ADC55C+0x1c0>
    3784:	a088022f 	sb	t0,559(a0)
    3788:	a082022f 	sb	v0,559(a0)
    378c:	90830230 	lbu	v1,560(a0)
    3790:	286100d3 	slti	at,v1,211
    3794:	1420000b 	bnez	at,37c4 <func_80ADC55C+0x1f8>
    3798:	24620005 	addiu	v0,v1,5
    379c:	2462fffb 	addiu	v0,v1,-5
    37a0:	00021400 	sll	v0,v0,0x10
    37a4:	00021403 	sra	v0,v0,0x10
    37a8:	284100d2 	slti	at,v0,210
    37ac:	10200003 	beqz	at,37bc <func_80ADC55C+0x1f0>
    37b0:	240900d2 	li	t1,210
    37b4:	03e00008 	jr	ra
    37b8:	a0890230 	sb	t1,560(a0)
    37bc:	03e00008 	jr	ra
    37c0:	a0820230 	sb	v0,560(a0)
    37c4:	00021400 	sll	v0,v0,0x10
    37c8:	00021403 	sra	v0,v0,0x10
    37cc:	284100d3 	slti	at,v0,211
    37d0:	14200003 	bnez	at,37e0 <func_80ADC55C+0x214>
    37d4:	240a00d2 	li	t2,210
    37d8:	03e00008 	jr	ra
    37dc:	a08a0230 	sb	t2,560(a0)
    37e0:	a0820230 	sb	v0,560(a0)
    37e4:	03e00008 	jr	ra
    37e8:	00000000 	nop

000037ec <func_80ADC77C>:
    37ec:	24010001 	li	at,1
    37f0:	afa40000 	sw	a0,0(sp)
    37f4:	14a1001a 	bne	a1,at,3860 <func_80ADC77C+0x74>
    37f8:	afa7000c 	sw	a3,12(sp)
    37fc:	8fa20014 	lw	v0,20(sp)
    3800:	904e0199 	lbu	t6,409(v0)
    3804:	31cf0040 	andi	t7,t6,0x40
    3808:	51e00016 	beqzl	t7,3864 <func_80ADC77C+0x78>
    380c:	8fa20014 	lw	v0,20(sp)
    3810:	8444019a 	lh	a0,410(v0)
    3814:	8fa30010 	lw	v1,16(sp)
    3818:	2881011c 	slti	at,a0,284
    381c:	1420000a 	bnez	at,3848 <func_80ADC77C+0x5c>
    3820:	00045b00 	sll	t3,a0,0xc
    3824:	8fa30010 	lw	v1,16(sp)
    3828:	0004cb00 	sll	t9,a0,0xc
    382c:	3c01ffee 	lui	at,0xffee
    3830:	84780000 	lh	t8,0(v1)
    3834:	34214000 	ori	at,at,0x4000
    3838:	03194021 	addu	t0,t8,t9
    383c:	01014821 	addu	t1,t0,at
    3840:	10000007 	b	3860 <func_80ADC77C+0x74>
    3844:	a4690000 	sh	t1,0(v1)
    3848:	846a0000 	lh	t2,0(v1)
    384c:	3c01ffff 	lui	at,0xffff
    3850:	34211000 	ori	at,at,0x1000
    3854:	014b6021 	addu	t4,t2,t3
    3858:	01816821 	addu	t5,t4,at
    385c:	a46d0000 	sh	t5,0(v1)
    3860:	8fa20014 	lw	v0,20(sp)
    3864:	24010008 	li	at,8
    3868:	904e0231 	lbu	t6,561(v0)
    386c:	51c0000d 	beqzl	t6,38a4 <func_80ADC77C+0xb8>
    3870:	acc00000 	sw	zero,0(a2)
    3874:	50a1000b 	beql	a1,at,38a4 <func_80ADC77C+0xb8>
    3878:	acc00000 	sw	zero,0(a2)
    387c:	8c580190 	lw	t8,400(v0)
    3880:	3c0f0000 	lui	t7,0x0
    3884:	25ef0000 	addiu	t7,t7,0
    3888:	55f80009 	bnel	t7,t8,38b0 <func_80ADC77C+0xc4>
    388c:	24010009 	li	at,9
    3890:	8459019a 	lh	t9,410(v0)
    3894:	2b210008 	slti	at,t9,8
    3898:	54200005 	bnezl	at,38b0 <func_80ADC77C+0xc4>
    389c:	24010009 	li	at,9
    38a0:	acc00000 	sw	zero,0(a2)
    38a4:	03e00008 	jr	ra
    38a8:	00001025 	move	v0,zero
    38ac:	24010009 	li	at,9
    38b0:	54a1000a 	bnel	a1,at,38dc <func_80ADC77C+0xf0>
    38b4:	2401000a 	li	at,10
    38b8:	90480194 	lbu	t0,404(v0)
    38bc:	3c0a0000 	lui	t2,0x0
    38c0:	00001025 	move	v0,zero
    38c4:	00084880 	sll	t1,t0,0x2
    38c8:	01495021 	addu	t2,t2,t1
    38cc:	8d4a0000 	lw	t2,0(t2)
    38d0:	03e00008 	jr	ra
    38d4:	acca0000 	sw	t2,0(a2)
    38d8:	2401000a 	li	at,10
    38dc:	54a10021 	bnel	a1,at,3964 <func_80ADC77C+0x178>
    38e0:	2401000b 	li	at,11
    38e4:	904b0194 	lbu	t3,404(v0)
    38e8:	3c0d0000 	lui	t5,0x0
    38ec:	3c0fe700 	lui	t7,0xe700
    38f0:	000b6080 	sll	t4,t3,0x2
    38f4:	01ac6821 	addu	t5,t5,t4
    38f8:	8dad0000 	lw	t5,0(t5)
    38fc:	3c19fb00 	lui	t9,0xfb00
    3900:	accd0000 	sw	t5,0(a2)
    3904:	8fa40018 	lw	a0,24(sp)
    3908:	8c850000 	lw	a1,0(a0)
    390c:	24ae0008 	addiu	t6,a1,8
    3910:	ac8e0000 	sw	t6,0(a0)
    3914:	aca00004 	sw	zero,4(a1)
    3918:	acaf0000 	sw	t7,0(a1)
    391c:	8c850000 	lw	a1,0(a0)
    3920:	24b80008 	addiu	t8,a1,8
    3924:	ac980000 	sw	t8,0(a0)
    3928:	acb90000 	sw	t9,0(a1)
    392c:	904c022f 	lbu	t4,559(v0)
    3930:	9049022e 	lbu	t1,558(v0)
    3934:	90580230 	lbu	t8,560(v0)
    3938:	904b0231 	lbu	t3,561(v0)
    393c:	000c6c00 	sll	t5,t4,0x10
    3940:	00095600 	sll	t2,t1,0x18
    3944:	014d7025 	or	t6,t2,t5
    3948:	0018ca00 	sll	t9,t8,0x8
    394c:	01d94025 	or	t0,t6,t9
    3950:	010b6025 	or	t4,t0,t3
    3954:	00001025 	move	v0,zero
    3958:	03e00008 	jr	ra
    395c:	acac0004 	sw	t4,4(a1)
    3960:	2401000b 	li	at,11
    3964:	14a1001c 	bne	a1,at,39d8 <func_80ADC77C+0x1ec>
    3968:	3c0f0000 	lui	t7,0x0
    396c:	8fa40018 	lw	a0,24(sp)
    3970:	904a0194 	lbu	t2,404(v0)
    3974:	3c0ee700 	lui	t6,0xe700
    3978:	8c850000 	lw	a1,0(a0)
    397c:	25ef0000 	addiu	t7,t7,0
    3980:	3c09fb00 	lui	t1,0xfb00
    3984:	24b80008 	addiu	t8,a1,8
    3988:	ac980000 	sw	t8,0(a0)
    398c:	aca00004 	sw	zero,4(a1)
    3990:	acae0000 	sw	t6,0(a1)
    3994:	8c850000 	lw	a1,0(a0)
    3998:	000a6880 	sll	t5,t2,0x2
    399c:	01af1821 	addu	v1,t5,t7
    39a0:	24b90008 	addiu	t9,a1,8
    39a4:	ac990000 	sw	t9,0(a0)
    39a8:	aca90000 	sw	t1,0(a1)
    39ac:	906d0001 	lbu	t5,1(v1)
    39b0:	906b0000 	lbu	t3,0(v1)
    39b4:	90790002 	lbu	t9,2(v1)
    39b8:	904a0231 	lbu	t2,561(v0)
    39bc:	000d7c00 	sll	t7,t5,0x10
    39c0:	000b6600 	sll	t4,t3,0x18
    39c4:	018fc025 	or	t8,t4,t7
    39c8:	00194a00 	sll	t1,t9,0x8
    39cc:	03094025 	or	t0,t8,t1
    39d0:	010a6825 	or	t5,t0,t2
    39d4:	acad0004 	sw	t5,4(a1)
    39d8:	03e00008 	jr	ra
    39dc:	00001025 	move	v0,zero

000039e0 <func_80ADC970>:
    39e0:	27bdffb8 	addiu	sp,sp,-72
    39e4:	afb00028 	sw	s0,40(sp)
    39e8:	8fb00058 	lw	s0,88(sp)
    39ec:	afbf002c 	sw	ra,44(sp)
    39f0:	afa40048 	sw	a0,72(sp)
    39f4:	afa5004c 	sw	a1,76(sp)
    39f8:	afa60050 	sw	a2,80(sp)
    39fc:	afa70054 	sw	a3,84(sp)
    3a00:	8e0f0190 	lw	t7,400(s0)
    3a04:	3c0e0000 	lui	t6,0x0
    3a08:	25ce0000 	addiu	t6,t6,0
    3a0c:	55cf0020 	bnel	t6,t7,3a90 <func_80ADC970+0xb0>
    3a10:	8fae004c 	lw	t6,76(sp)
    3a14:	8618019a 	lh	t8,410(s0)
    3a18:	2b010008 	slti	at,t8,8
    3a1c:	1420001b 	bnez	at,3a8c <func_80ADC970+0xac>
    3a20:	24010009 	li	at,9
    3a24:	14a10019 	bne	a1,at,3a8c <func_80ADC970+0xac>
    3a28:	8fa7005c 	lw	a3,92(sp)
    3a2c:	8ce20000 	lw	v0,0(a3)
    3a30:	3c09da38 	lui	t1,0xda38
    3a34:	35290003 	ori	t1,t1,0x3
    3a38:	24480008 	addiu	t0,v0,8
    3a3c:	ace80000 	sw	t0,0(a3)
    3a40:	ac490000 	sw	t1,0(v0)
    3a44:	8faa0048 	lw	t2,72(sp)
    3a48:	3c050000 	lui	a1,0x0
    3a4c:	24a50000 	addiu	a1,a1,0
    3a50:	8d440000 	lw	a0,0(t2)
    3a54:	24060b3c 	li	a2,2876
    3a58:	0c000000 	jal	0 <EnPoSisters_Init>
    3a5c:	afa20038 	sw	v0,56(sp)
    3a60:	8fa30038 	lw	v1,56(sp)
    3a64:	8fa7005c 	lw	a3,92(sp)
    3a68:	3c0d0600 	lui	t5,0x600
    3a6c:	ac620004 	sw	v0,4(v1)
    3a70:	8ce20000 	lw	v0,0(a3)
    3a74:	25ad46e0 	addiu	t5,t5,18144
    3a78:	3c0cde00 	lui	t4,0xde00
    3a7c:	244b0008 	addiu	t3,v0,8
    3a80:	aceb0000 	sw	t3,0(a3)
    3a84:	ac4d0004 	sw	t5,4(v0)
    3a88:	ac4c0000 	sw	t4,0(v0)
    3a8c:	8fae004c 	lw	t6,76(sp)
    3a90:	24010008 	li	at,8
    3a94:	55c10183 	bnel	t6,at,40a4 <func_80ADC970+0x6c4>
    3a98:	8fbf002c 	lw	ra,44(sp)
    3a9c:	8e020190 	lw	v0,400(s0)
    3aa0:	3c0f0000 	lui	t7,0x0
    3aa4:	25ef0000 	addiu	t7,t7,0
    3aa8:	51e2017e 	beql	t7,v0,40a4 <func_80ADC970+0x6c4>
    3aac:	8fbf002c 	lw	ra,44(sp)
    3ab0:	92180199 	lbu	t8,409(s0)
    3ab4:	3c0b0000 	lui	t3,0x0
    3ab8:	256b0000 	addiu	t3,t3,0
    3abc:	33190020 	andi	t9,t8,0x20
    3ac0:	1320001a 	beqz	t9,3b2c <func_80ADC970+0x14c>
    3ac4:	00000000 	nop
    3ac8:	92020198 	lbu	v0,408(s0)
    3acc:	2442ffff 	addiu	v0,v0,-1
    3ad0:	18400010 	blez	v0,3b14 <func_80ADC970+0x134>
    3ad4:	00024080 	sll	t0,v0,0x2
    3ad8:	01024023 	subu	t0,t0,v0
    3adc:	00084080 	sll	t0,t0,0x2
    3ae0:	02082821 	addu	a1,s0,t0
    3ae4:	24a30234 	addiu	v1,a1,564
    3ae8:	24a40228 	addiu	a0,a1,552
    3aec:	8c8a0000 	lw	t2,0(a0)
    3af0:	2442ffff 	addiu	v0,v0,-1
    3af4:	2463fff4 	addiu	v1,v1,-12
    3af8:	ac6a000c 	sw	t2,12(v1)
    3afc:	8c890004 	lw	t1,4(a0)
    3b00:	2484fff4 	addiu	a0,a0,-12
    3b04:	ac690010 	sw	t1,16(v1)
    3b08:	8c8a0014 	lw	t2,20(a0)
    3b0c:	1c40fff7 	bgtz	v0,3aec <func_80ADC970+0x10c>
    3b10:	ac6a0014 	sw	t2,20(v1)
    3b14:	3c040000 	lui	a0,0x0
    3b18:	24840000 	addiu	a0,a0,0
    3b1c:	0c000000 	jal	0 <EnPoSisters_Init>
    3b20:	26050234 	addiu	a1,s0,564
    3b24:	10000007 	b	3b44 <func_80ADC970+0x164>
    3b28:	920c0198 	lbu	t4,408(s0)
    3b2c:	15620004 	bne	t3,v0,3b40 <func_80ADC970+0x160>
    3b30:	3c040000 	lui	a0,0x0
    3b34:	24840000 	addiu	a0,a0,0
    3b38:	0c000000 	jal	0 <EnPoSisters_Init>
    3b3c:	26050008 	addiu	a1,s0,8
    3b40:	920c0198 	lbu	t4,408(s0)
    3b44:	2604029c 	addiu	a0,s0,668
    3b48:	00002825 	move	a1,zero
    3b4c:	1980014b 	blez	t4,407c <func_80ADC970+0x69c>
    3b50:	00003025 	move	a2,zero
    3b54:	920d0194 	lbu	t5,404(s0)
    3b58:	3c0f0000 	lui	t7,0x0
    3b5c:	25ef0000 	addiu	t7,t7,0
    3b60:	000d7080 	sll	t6,t5,0x2
    3b64:	01cf1821 	addu	v1,t6,t7
    3b68:	0c000000 	jal	0 <EnPoSisters_Init>
    3b6c:	afa30030 	sw	v1,48(sp)
    3b70:	3c010000 	lui	at,0x0
    3b74:	c4240000 	lwc1	$f4,0(at)
    3b78:	8e020190 	lw	v0,400(s0)
    3b7c:	3c010000 	lui	at,0x0
    3b80:	46040182 	mul.s	$f6,$f0,$f4
    3b84:	c4280000 	lwc1	$f8,0(at)
    3b88:	3c180000 	lui	t8,0x0
    3b8c:	27180000 	addiu	t8,t8,0
    3b90:	8fa30030 	lw	v1,48(sp)
    3b94:	3c190000 	lui	t9,0x0
    3b98:	13020007 	beq	t8,v0,3bb8 <func_80ADC970+0x1d8>
    3b9c:	46083080 	add.s	$f2,$f6,$f8
    3ba0:	27390000 	addiu	t9,t9,0
    3ba4:	13220004 	beq	t9,v0,3bb8 <func_80ADC970+0x1d8>
    3ba8:	3c080000 	lui	t0,0x0
    3bac:	25080000 	addiu	t0,t0,0
    3bb0:	1502009a 	bne	t0,v0,3e1c <func_80ADC970+0x43c>
    3bb4:	3c014170 	lui	at,0x4170
    3bb8:	c60a0234 	lwc1	$f10,564(s0)
    3bbc:	3c014170 	lui	at,0x4170
    3bc0:	44812000 	mtc1	at,$f4
    3bc4:	c6120238 	lwc1	$f18,568(s0)
    3bc8:	4600540d 	trunc.w.s	$f16,$f10
    3bcc:	c60a023c 	lwc1	$f10,572(s0)
    3bd0:	906c0000 	lbu	t4,0(v1)
    3bd4:	46049180 	add.s	$f6,$f18,$f4
    3bd8:	44058000 	mfc1	a1,$f16
    3bdc:	448c9000 	mtc1	t4,$f18
    3be0:	4600540d 	trunc.w.s	$f16,$f10
    3be4:	00052c00 	sll	a1,a1,0x10
    3be8:	00052c03 	sra	a1,a1,0x10
    3bec:	4600320d 	trunc.w.s	$f8,$f6
    3bf0:	44078000 	mfc1	a3,$f16
    3bf4:	2604029c 	addiu	a0,s0,668
    3bf8:	46809120 	cvt.s.w	$f4,$f18
    3bfc:	44064000 	mfc1	a2,$f8
    3c00:	00073c00 	sll	a3,a3,0x10
    3c04:	00073c03 	sra	a3,a3,0x10
    3c08:	00063400 	sll	a2,a2,0x10
    3c0c:	05810005 	bgez	t4,3c24 <func_80ADC970+0x244>
    3c10:	00063403 	sra	a2,a2,0x10
    3c14:	3c014f80 	lui	at,0x4f80
    3c18:	44813000 	mtc1	at,$f6
    3c1c:	00000000 	nop
    3c20:	46062100 	add.s	$f4,$f4,$f6
    3c24:	46022202 	mul.s	$f8,$f4,$f2
    3c28:	240e0001 	li	t6,1
    3c2c:	240b00c8 	li	t3,200
    3c30:	3c014f00 	lui	at,0x4f00
    3c34:	444df800 	cfc1	t5,$31
    3c38:	44cef800 	ctc1	t6,$31
    3c3c:	00000000 	nop
    3c40:	460042a4 	cvt.w.s	$f10,$f8
    3c44:	444ef800 	cfc1	t6,$31
    3c48:	00000000 	nop
    3c4c:	31ce0078 	andi	t6,t6,0x78
    3c50:	51c00013 	beqzl	t6,3ca0 <func_80ADC970+0x2c0>
    3c54:	440e5000 	mfc1	t6,$f10
    3c58:	44815000 	mtc1	at,$f10
    3c5c:	240e0001 	li	t6,1
    3c60:	460a4281 	sub.s	$f10,$f8,$f10
    3c64:	44cef800 	ctc1	t6,$31
    3c68:	00000000 	nop
    3c6c:	460052a4 	cvt.w.s	$f10,$f10
    3c70:	444ef800 	cfc1	t6,$31
    3c74:	00000000 	nop
    3c78:	31ce0078 	andi	t6,t6,0x78
    3c7c:	15c00005 	bnez	t6,3c94 <func_80ADC970+0x2b4>
    3c80:	00000000 	nop
    3c84:	440e5000 	mfc1	t6,$f10
    3c88:	3c018000 	lui	at,0x8000
    3c8c:	10000007 	b	3cac <func_80ADC970+0x2cc>
    3c90:	01c17025 	or	t6,t6,at
    3c94:	10000005 	b	3cac <func_80ADC970+0x2cc>
    3c98:	240effff 	li	t6,-1
    3c9c:	440e5000 	mfc1	t6,$f10
    3ca0:	00000000 	nop
    3ca4:	05c0fffb 	bltz	t6,3c94 <func_80ADC970+0x2b4>
    3ca8:	00000000 	nop
    3cac:	afae0010 	sw	t6,16(sp)
    3cb0:	906f0001 	lbu	t7,1(v1)
    3cb4:	44cdf800 	ctc1	t5,$31
    3cb8:	3c014f80 	lui	at,0x4f80
    3cbc:	448f8000 	mtc1	t7,$f16
    3cc0:	05e10004 	bgez	t7,3cd4 <func_80ADC970+0x2f4>
    3cc4:	468084a0 	cvt.s.w	$f18,$f16
    3cc8:	44813000 	mtc1	at,$f6
    3ccc:	00000000 	nop
    3cd0:	46069480 	add.s	$f18,$f18,$f6
    3cd4:	46029102 	mul.s	$f4,$f18,$f2
    3cd8:	24190001 	li	t9,1
    3cdc:	3c014f00 	lui	at,0x4f00
    3ce0:	4458f800 	cfc1	t8,$31
    3ce4:	44d9f800 	ctc1	t9,$31
    3ce8:	00000000 	nop
    3cec:	46002224 	cvt.w.s	$f8,$f4
    3cf0:	4459f800 	cfc1	t9,$31
    3cf4:	00000000 	nop
    3cf8:	33390078 	andi	t9,t9,0x78
    3cfc:	53200013 	beqzl	t9,3d4c <func_80ADC970+0x36c>
    3d00:	44194000 	mfc1	t9,$f8
    3d04:	44814000 	mtc1	at,$f8
    3d08:	24190001 	li	t9,1
    3d0c:	46082201 	sub.s	$f8,$f4,$f8
    3d10:	44d9f800 	ctc1	t9,$31
    3d14:	00000000 	nop
    3d18:	46004224 	cvt.w.s	$f8,$f8
    3d1c:	4459f800 	cfc1	t9,$31
    3d20:	00000000 	nop
    3d24:	33390078 	andi	t9,t9,0x78
    3d28:	17200005 	bnez	t9,3d40 <func_80ADC970+0x360>
    3d2c:	00000000 	nop
    3d30:	44194000 	mfc1	t9,$f8
    3d34:	3c018000 	lui	at,0x8000
    3d38:	10000007 	b	3d58 <func_80ADC970+0x378>
    3d3c:	0321c825 	or	t9,t9,at
    3d40:	10000005 	b	3d58 <func_80ADC970+0x378>
    3d44:	2419ffff 	li	t9,-1
    3d48:	44194000 	mfc1	t9,$f8
    3d4c:	00000000 	nop
    3d50:	0720fffb 	bltz	t9,3d40 <func_80ADC970+0x360>
    3d54:	00000000 	nop
    3d58:	afb90014 	sw	t9,20(sp)
    3d5c:	90680002 	lbu	t0,2(v1)
    3d60:	44d8f800 	ctc1	t8,$31
    3d64:	3c014f80 	lui	at,0x4f80
    3d68:	44885000 	mtc1	t0,$f10
    3d6c:	05010004 	bgez	t0,3d80 <func_80ADC970+0x3a0>
    3d70:	46805420 	cvt.s.w	$f16,$f10
    3d74:	44813000 	mtc1	at,$f6
    3d78:	00000000 	nop
    3d7c:	46068400 	add.s	$f16,$f16,$f6
    3d80:	46028482 	mul.s	$f18,$f16,$f2
    3d84:	240a0001 	li	t2,1
    3d88:	3c014f00 	lui	at,0x4f00
    3d8c:	4449f800 	cfc1	t1,$31
    3d90:	44caf800 	ctc1	t2,$31
    3d94:	00000000 	nop
    3d98:	46009124 	cvt.w.s	$f4,$f18
    3d9c:	444af800 	cfc1	t2,$31
    3da0:	00000000 	nop
    3da4:	314a0078 	andi	t2,t2,0x78
    3da8:	51400013 	beqzl	t2,3df8 <func_80ADC970+0x418>
    3dac:	440a2000 	mfc1	t2,$f4
    3db0:	44812000 	mtc1	at,$f4
    3db4:	240a0001 	li	t2,1
    3db8:	46049101 	sub.s	$f4,$f18,$f4
    3dbc:	44caf800 	ctc1	t2,$31
    3dc0:	00000000 	nop
    3dc4:	46002124 	cvt.w.s	$f4,$f4
    3dc8:	444af800 	cfc1	t2,$31
    3dcc:	00000000 	nop
    3dd0:	314a0078 	andi	t2,t2,0x78
    3dd4:	15400005 	bnez	t2,3dec <func_80ADC970+0x40c>
    3dd8:	00000000 	nop
    3ddc:	440a2000 	mfc1	t2,$f4
    3de0:	3c018000 	lui	at,0x8000
    3de4:	10000007 	b	3e04 <func_80ADC970+0x424>
    3de8:	01415025 	or	t2,t2,at
    3dec:	10000005 	b	3e04 <func_80ADC970+0x424>
    3df0:	240affff 	li	t2,-1
    3df4:	440a2000 	mfc1	t2,$f4
    3df8:	00000000 	nop
    3dfc:	0540fffb 	bltz	t2,3dec <func_80ADC970+0x40c>
    3e00:	00000000 	nop
    3e04:	44c9f800 	ctc1	t1,$31
    3e08:	afaa0018 	sw	t2,24(sp)
    3e0c:	0c000000 	jal	0 <EnPoSisters_Init>
    3e10:	afab001c 	sw	t3,28(sp)
    3e14:	1000009d 	b	408c <func_80ADC970+0x6ac>
    3e18:	920f0199 	lbu	t7,409(s0)
    3e1c:	c6080234 	lwc1	$f8,564(s0)
    3e20:	c6060238 	lwc1	$f6,568(s0)
    3e24:	44818000 	mtc1	at,$f16
    3e28:	4600428d 	trunc.w.s	$f10,$f8
    3e2c:	c608023c 	lwc1	$f8,572(s0)
    3e30:	906f0000 	lbu	t7,0(v1)
    3e34:	46103480 	add.s	$f18,$f6,$f16
    3e38:	44055000 	mfc1	a1,$f10
    3e3c:	448f3000 	mtc1	t7,$f6
    3e40:	4600428d 	trunc.w.s	$f10,$f8
    3e44:	00052c00 	sll	a1,a1,0x10
    3e48:	00052c03 	sra	a1,a1,0x10
    3e4c:	4600910d 	trunc.w.s	$f4,$f18
    3e50:	44075000 	mfc1	a3,$f10
    3e54:	2604029c 	addiu	a0,s0,668
    3e58:	46803420 	cvt.s.w	$f16,$f6
    3e5c:	44062000 	mfc1	a2,$f4
    3e60:	00073c00 	sll	a3,a3,0x10
    3e64:	00073c03 	sra	a3,a3,0x10
    3e68:	00063400 	sll	a2,a2,0x10
    3e6c:	05e10005 	bgez	t7,3e84 <func_80ADC970+0x4a4>
    3e70:	00063403 	sra	a2,a2,0x10
    3e74:	3c014f80 	lui	at,0x4f80
    3e78:	44819000 	mtc1	at,$f18
    3e7c:	00000000 	nop
    3e80:	46128400 	add.s	$f16,$f16,$f18
    3e84:	46028102 	mul.s	$f4,$f16,$f2
    3e88:	24190001 	li	t9,1
    3e8c:	240e00c8 	li	t6,200
    3e90:	3c014f00 	lui	at,0x4f00
    3e94:	4458f800 	cfc1	t8,$31
    3e98:	44d9f800 	ctc1	t9,$31
    3e9c:	00000000 	nop
    3ea0:	46002224 	cvt.w.s	$f8,$f4
    3ea4:	4459f800 	cfc1	t9,$31
    3ea8:	00000000 	nop
    3eac:	33390078 	andi	t9,t9,0x78
    3eb0:	53200013 	beqzl	t9,3f00 <func_80ADC970+0x520>
    3eb4:	44194000 	mfc1	t9,$f8
    3eb8:	44814000 	mtc1	at,$f8
    3ebc:	24190001 	li	t9,1
    3ec0:	46082201 	sub.s	$f8,$f4,$f8
    3ec4:	44d9f800 	ctc1	t9,$31
    3ec8:	00000000 	nop
    3ecc:	46004224 	cvt.w.s	$f8,$f8
    3ed0:	4459f800 	cfc1	t9,$31
    3ed4:	00000000 	nop
    3ed8:	33390078 	andi	t9,t9,0x78
    3edc:	17200005 	bnez	t9,3ef4 <func_80ADC970+0x514>
    3ee0:	00000000 	nop
    3ee4:	44194000 	mfc1	t9,$f8
    3ee8:	3c018000 	lui	at,0x8000
    3eec:	10000007 	b	3f0c <func_80ADC970+0x52c>
    3ef0:	0321c825 	or	t9,t9,at
    3ef4:	10000005 	b	3f0c <func_80ADC970+0x52c>
    3ef8:	2419ffff 	li	t9,-1
    3efc:	44194000 	mfc1	t9,$f8
    3f00:	00000000 	nop
    3f04:	0720fffb 	bltz	t9,3ef4 <func_80ADC970+0x514>
    3f08:	00000000 	nop
    3f0c:	afb90010 	sw	t9,16(sp)
    3f10:	90680001 	lbu	t0,1(v1)
    3f14:	44d8f800 	ctc1	t8,$31
    3f18:	3c014f80 	lui	at,0x4f80
    3f1c:	44885000 	mtc1	t0,$f10
    3f20:	05010004 	bgez	t0,3f34 <func_80ADC970+0x554>
    3f24:	468051a0 	cvt.s.w	$f6,$f10
    3f28:	44819000 	mtc1	at,$f18
    3f2c:	00000000 	nop
    3f30:	46123180 	add.s	$f6,$f6,$f18
    3f34:	46023402 	mul.s	$f16,$f6,$f2
    3f38:	240a0001 	li	t2,1
    3f3c:	3c014f00 	lui	at,0x4f00
    3f40:	4449f800 	cfc1	t1,$31
    3f44:	44caf800 	ctc1	t2,$31
    3f48:	00000000 	nop
    3f4c:	46008124 	cvt.w.s	$f4,$f16
    3f50:	444af800 	cfc1	t2,$31
    3f54:	00000000 	nop
    3f58:	314a0078 	andi	t2,t2,0x78
    3f5c:	51400013 	beqzl	t2,3fac <func_80ADC970+0x5cc>
    3f60:	440a2000 	mfc1	t2,$f4
    3f64:	44812000 	mtc1	at,$f4
    3f68:	240a0001 	li	t2,1
    3f6c:	46048101 	sub.s	$f4,$f16,$f4
    3f70:	44caf800 	ctc1	t2,$31
    3f74:	00000000 	nop
    3f78:	46002124 	cvt.w.s	$f4,$f4
    3f7c:	444af800 	cfc1	t2,$31
    3f80:	00000000 	nop
    3f84:	314a0078 	andi	t2,t2,0x78
    3f88:	15400005 	bnez	t2,3fa0 <func_80ADC970+0x5c0>
    3f8c:	00000000 	nop
    3f90:	440a2000 	mfc1	t2,$f4
    3f94:	3c018000 	lui	at,0x8000
    3f98:	10000007 	b	3fb8 <func_80ADC970+0x5d8>
    3f9c:	01415025 	or	t2,t2,at
    3fa0:	10000005 	b	3fb8 <func_80ADC970+0x5d8>
    3fa4:	240affff 	li	t2,-1
    3fa8:	440a2000 	mfc1	t2,$f4
    3fac:	00000000 	nop
    3fb0:	0540fffb 	bltz	t2,3fa0 <func_80ADC970+0x5c0>
    3fb4:	00000000 	nop
    3fb8:	afaa0014 	sw	t2,20(sp)
    3fbc:	906b0002 	lbu	t3,2(v1)
    3fc0:	44c9f800 	ctc1	t1,$31
    3fc4:	3c014f80 	lui	at,0x4f80
    3fc8:	448b4000 	mtc1	t3,$f8
    3fcc:	05610004 	bgez	t3,3fe0 <func_80ADC970+0x600>
    3fd0:	468042a0 	cvt.s.w	$f10,$f8
    3fd4:	44819000 	mtc1	at,$f18
    3fd8:	00000000 	nop
    3fdc:	46125280 	add.s	$f10,$f10,$f18
    3fe0:	46025182 	mul.s	$f6,$f10,$f2
    3fe4:	240d0001 	li	t5,1
    3fe8:	3c014f00 	lui	at,0x4f00
    3fec:	444cf800 	cfc1	t4,$31
    3ff0:	44cdf800 	ctc1	t5,$31
    3ff4:	00000000 	nop
    3ff8:	46003424 	cvt.w.s	$f16,$f6
    3ffc:	444df800 	cfc1	t5,$31
    4000:	00000000 	nop
    4004:	31ad0078 	andi	t5,t5,0x78
    4008:	51a00013 	beqzl	t5,4058 <func_80ADC970+0x678>
    400c:	440d8000 	mfc1	t5,$f16
    4010:	44818000 	mtc1	at,$f16
    4014:	240d0001 	li	t5,1
    4018:	46103401 	sub.s	$f16,$f6,$f16
    401c:	44cdf800 	ctc1	t5,$31
    4020:	00000000 	nop
    4024:	46008424 	cvt.w.s	$f16,$f16
    4028:	444df800 	cfc1	t5,$31
    402c:	00000000 	nop
    4030:	31ad0078 	andi	t5,t5,0x78
    4034:	15a00005 	bnez	t5,404c <func_80ADC970+0x66c>
    4038:	00000000 	nop
    403c:	440d8000 	mfc1	t5,$f16
    4040:	3c018000 	lui	at,0x8000
    4044:	10000007 	b	4064 <func_80ADC970+0x684>
    4048:	01a16825 	or	t5,t5,at
    404c:	10000005 	b	4064 <func_80ADC970+0x684>
    4050:	240dffff 	li	t5,-1
    4054:	440d8000 	mfc1	t5,$f16
    4058:	00000000 	nop
    405c:	05a0fffb 	bltz	t5,404c <func_80ADC970+0x66c>
    4060:	00000000 	nop
    4064:	44ccf800 	ctc1	t4,$31
    4068:	afad0018 	sw	t5,24(sp)
    406c:	0c000000 	jal	0 <EnPoSisters_Init>
    4070:	afae001c 	sw	t6,28(sp)
    4074:	10000005 	b	408c <func_80ADC970+0x6ac>
    4078:	920f0199 	lbu	t7,409(s0)
    407c:	00003825 	move	a3,zero
    4080:	0c000000 	jal	0 <EnPoSisters_Init>
    4084:	afa00010 	sw	zero,16(sp)
    4088:	920f0199 	lbu	t7,409(s0)
    408c:	31f80080 	andi	t8,t7,0x80
    4090:	57000004 	bnezl	t8,40a4 <func_80ADC970+0x6c4>
    4094:	8fbf002c 	lw	ra,44(sp)
    4098:	0c000000 	jal	0 <EnPoSisters_Init>
    409c:	260402f8 	addiu	a0,s0,760
    40a0:	8fbf002c 	lw	ra,44(sp)
    40a4:	8fb00028 	lw	s0,40(sp)
    40a8:	27bd0048 	addiu	sp,sp,72
    40ac:	03e00008 	jr	ra
    40b0:	00000000 	nop

000040b4 <EnPoSisters_Draw>:
    40b4:	27bdff08 	addiu	sp,sp,-248
    40b8:	afbf006c 	sw	ra,108(sp)
    40bc:	afb70068 	sw	s7,104(sp)
    40c0:	afb60064 	sw	s6,100(sp)
    40c4:	afb50060 	sw	s5,96(sp)
    40c8:	afb4005c 	sw	s4,92(sp)
    40cc:	afb30058 	sw	s3,88(sp)
    40d0:	afb20054 	sw	s2,84(sp)
    40d4:	afb10050 	sw	s1,80(sp)
    40d8:	afb0004c 	sw	s0,76(sp)
    40dc:	f7b80040 	sdc1	$f24,64(sp)
    40e0:	f7b60038 	sdc1	$f22,56(sp)
    40e4:	f7b40030 	sdc1	$f20,48(sp)
    40e8:	afa400f4 	sw	a0,244(sp)
    40ec:	90820194 	lbu	v0,404(a0)
    40f0:	00a0b025 	move	s6,a1
    40f4:	8ca50000 	lw	a1,0(a1)
    40f8:	3c0e0000 	lui	t6,0x0
    40fc:	3c0f0000 	lui	t7,0x0
    4100:	0080a025 	move	s4,a0
    4104:	25ce0000 	addiu	t6,t6,0
    4108:	25ef0000 	addiu	t7,t7,0
    410c:	3c060000 	lui	a2,0x0
    4110:	00021080 	sll	v0,v0,0x2
    4114:	004e8821 	addu	s1,v0,t6
    4118:	004fb821 	addu	s7,v0,t7
    411c:	24c60000 	addiu	a2,a2,0
    4120:	27a400c4 	addiu	a0,sp,196
    4124:	24070bad 	li	a3,2989
    4128:	0c000000 	jal	0 <EnPoSisters_Init>
    412c:	00a09825 	move	s3,a1
    4130:	0c000000 	jal	0 <EnPoSisters_Init>
    4134:	02802025 	move	a0,s4
    4138:	0c000000 	jal	0 <EnPoSisters_Init>
    413c:	8ec40000 	lw	a0,0(s6)
    4140:	0c000000 	jal	0 <EnPoSisters_Init>
    4144:	8ec40000 	lw	a0,0(s6)
    4148:	92820231 	lbu	v0,561(s4)
    414c:	241200ff 	li	s2,255
    4150:	3c15fb00 	lui	s5,0xfb00
    4154:	12420003 	beq	s2,v0,4164 <EnPoSisters_Draw+0xb0>
    4158:	3c0e0000 	lui	t6,0x0
    415c:	14400026 	bnez	v0,41f8 <EnPoSisters_Draw+0x144>
    4160:	2401ff00 	li	at,-256
    4164:	8e6202c0 	lw	v0,704(s3)
    4168:	25ce0010 	addiu	t6,t6,16
    416c:	3c070000 	lui	a3,0x0
    4170:	24580008 	addiu	t8,v0,8
    4174:	ae7802c0 	sw	t8,704(s3)
    4178:	ac550000 	sw	s5,0(v0)
    417c:	928b022f 	lbu	t3,559(s4)
    4180:	9288022e 	lbu	t0,558(s4)
    4184:	928f0230 	lbu	t7,560(s4)
    4188:	928a0231 	lbu	t2,561(s4)
    418c:	000b6400 	sll	t4,t3,0x10
    4190:	00084e00 	sll	t1,t0,0x18
    4194:	012c6825 	or	t5,t1,t4
    4198:	000fc200 	sll	t8,t7,0x8
    419c:	01b8c825 	or	t9,t5,t8
    41a0:	032a5825 	or	t3,t9,t2
    41a4:	ac4b0004 	sw	t3,4(v0)
    41a8:	8e6202c0 	lw	v0,704(s3)
    41ac:	3c0cdb06 	lui	t4,0xdb06
    41b0:	358c0024 	ori	t4,t4,0x24
    41b4:	24490008 	addiu	t1,v0,8
    41b8:	ae6902c0 	sw	t1,704(s3)
    41bc:	ac4e0004 	sw	t6,4(v0)
    41c0:	ac4c0000 	sw	t4,0(v0)
    41c4:	8e86016c 	lw	a2,364(s4)
    41c8:	8e850150 	lw	a1,336(s4)
    41cc:	3c0f0000 	lui	t7,0x0
    41d0:	25ef0000 	addiu	t7,t7,0
    41d4:	afaf0010 	sw	t7,16(sp)
    41d8:	afb40014 	sw	s4,20(sp)
    41dc:	8e6d02c0 	lw	t5,704(s3)
    41e0:	24e70000 	addiu	a3,a3,0
    41e4:	02c02025 	move	a0,s6
    41e8:	0c000000 	jal	0 <EnPoSisters_Init>
    41ec:	afad0018 	sw	t5,24(sp)
    41f0:	1000001f 	b	4270 <EnPoSisters_Draw+0x1bc>
    41f4:	ae6202c0 	sw	v0,704(s3)
    41f8:	8e6202d0 	lw	v0,720(s3)
    41fc:	3c15fb00 	lui	s5,0xfb00
    4200:	3c09db06 	lui	t1,0xdb06
    4204:	24580008 	addiu	t8,v0,8
    4208:	ae7802d0 	sw	t8,720(s3)
    420c:	ac550000 	sw	s5,0(v0)
    4210:	92990231 	lbu	t9,561(s4)
    4214:	3c0c0000 	lui	t4,0x0
    4218:	258c0000 	addiu	t4,t4,0
    421c:	03215025 	or	t2,t9,at
    4220:	ac4a0004 	sw	t2,4(v0)
    4224:	8e6202d0 	lw	v0,720(s3)
    4228:	35290024 	ori	t1,t1,0x24
    422c:	3c0e0000 	lui	t6,0x0
    4230:	244b0008 	addiu	t3,v0,8
    4234:	ae6b02d0 	sw	t3,720(s3)
    4238:	ac4c0004 	sw	t4,4(v0)
    423c:	ac490000 	sw	t1,0(v0)
    4240:	8e86016c 	lw	a2,364(s4)
    4244:	8e850150 	lw	a1,336(s4)
    4248:	25ce0000 	addiu	t6,t6,0
    424c:	afae0010 	sw	t6,16(sp)
    4250:	afb40014 	sw	s4,20(sp)
    4254:	8e6f02d0 	lw	t7,720(s3)
    4258:	3c070000 	lui	a3,0x0
    425c:	24e70000 	addiu	a3,a3,0
    4260:	02c02025 	move	a0,s6
    4264:	0c000000 	jal	0 <EnPoSisters_Init>
    4268:	afaf0018 	sw	t7,24(sp)
    426c:	ae6202d0 	sw	v0,720(s3)
    4270:	928d0199 	lbu	t5,409(s4)
    4274:	31b80080 	andi	t8,t5,0x80
    4278:	57000019 	bnezl	t8,42e0 <EnPoSisters_Draw+0x22c>
    427c:	8e6202d0 	lw	v0,720(s3)
    4280:	0c000000 	jal	0 <EnPoSisters_Init>
    4284:	268402f8 	addiu	a0,s4,760
    4288:	8e6202c0 	lw	v0,704(s3)
    428c:	3c19da38 	lui	t9,0xda38
    4290:	37390003 	ori	t9,t9,0x3
    4294:	24480008 	addiu	t0,v0,8
    4298:	ae6802c0 	sw	t0,704(s3)
    429c:	3c050000 	lui	a1,0x0
    42a0:	ac590000 	sw	t9,0(v0)
    42a4:	8ec40000 	lw	a0,0(s6)
    42a8:	24a50000 	addiu	a1,a1,0
    42ac:	24060bda 	li	a2,3034
    42b0:	0c000000 	jal	0 <EnPoSisters_Init>
    42b4:	00408025 	move	s0,v0
    42b8:	ae020004 	sw	v0,4(s0)
    42bc:	8e6202c0 	lw	v0,704(s3)
    42c0:	3c090600 	lui	t1,0x600
    42c4:	252927b0 	addiu	t1,t1,10160
    42c8:	244a0008 	addiu	t2,v0,8
    42cc:	ae6a02c0 	sw	t2,704(s3)
    42d0:	3c0bde00 	lui	t3,0xde00
    42d4:	ac4b0000 	sw	t3,0(v0)
    42d8:	ac490004 	sw	t1,4(v0)
    42dc:	8e6202d0 	lw	v0,720(s3)
    42e0:	3c0edb06 	lui	t6,0xdb06
    42e4:	35ce0020 	ori	t6,t6,0x20
    42e8:	244c0008 	addiu	t4,v0,8
    42ec:	ae6c02d0 	sw	t4,720(s3)
    42f0:	ac4e0000 	sw	t6,0(v0)
    42f4:	8ec40000 	lw	a0,0(s6)
    42f8:	240f0020 	li	t7,32
    42fc:	240d0040 	li	t5,64
    4300:	24180001 	li	t8,1
    4304:	3c080001 	lui	t0,0x1
    4308:	01164021 	addu	t0,t0,s6
    430c:	afb80018 	sw	t8,24(sp)
    4310:	afad0014 	sw	t5,20(sp)
    4314:	afaf0010 	sw	t7,16(sp)
    4318:	afa0001c 	sw	zero,28(sp)
    431c:	8d081de4 	lw	t0,7652(t0)
    4320:	240b0020 	li	t3,32
    4324:	24090080 	li	t1,128
    4328:	00080823 	negu	at,t0
    432c:	0001c880 	sll	t9,at,0x2
    4330:	0321c821 	addu	t9,t9,at
    4334:	0019c880 	sll	t9,t9,0x2
    4338:	332a01ff 	andi	t2,t9,0x1ff
    433c:	afaa0020 	sw	t2,32(sp)
    4340:	afa90028 	sw	t1,40(sp)
    4344:	afab0024 	sw	t3,36(sp)
    4348:	00002825 	move	a1,zero
    434c:	00003025 	move	a2,zero
    4350:	00003825 	move	a3,zero
    4354:	0c000000 	jal	0 <EnPoSisters_Init>
    4358:	00408025 	move	s0,v0
    435c:	ae020004 	sw	v0,4(s0)
    4360:	8e6202d0 	lw	v0,720(s3)
    4364:	3c050000 	lui	a1,0x0
    4368:	24a50000 	addiu	a1,a1,0
    436c:	244c0008 	addiu	t4,v0,8
    4370:	ae6c02d0 	sw	t4,720(s3)
    4374:	ac550000 	sw	s5,0(v0)
    4378:	92280001 	lbu	t0,1(s1)
    437c:	922f0000 	lbu	t7,0(s1)
    4380:	92290002 	lbu	t1,2(s1)
    4384:	92380003 	lbu	t8,3(s1)
    4388:	0008cc00 	sll	t9,t0,0x10
    438c:	000f6e00 	sll	t5,t7,0x18
    4390:	01b95025 	or	t2,t5,t9
    4394:	00096200 	sll	t4,t1,0x8
    4398:	014c7025 	or	t6,t2,t4
    439c:	01d84025 	or	t0,t6,t8
    43a0:	ac480004 	sw	t0,4(v0)
    43a4:	8e820190 	lw	v0,400(s4)
    43a8:	3c0b0000 	lui	t3,0x0
    43ac:	256b0000 	addiu	t3,t3,0
    43b0:	14a20020 	bne	a1,v0,4434 <EnPoSisters_Draw+0x380>
    43b4:	00000000 	nop
    43b8:	8682019a 	lh	v0,410(s4)
    43bc:	240d0020 	li	t5,32
    43c0:	28410020 	slti	at,v0,32
    43c4:	1020000d 	beqz	at,43fc <EnPoSisters_Draw+0x348>
    43c8:	01a2c823 	subu	t9,t5,v0
    43cc:	03320019 	multu	t9,s2
    43d0:	0000a812 	mflo	s5
    43d4:	06a10002 	bgez	s5,43e0 <EnPoSisters_Draw+0x32c>
    43d8:	02a00821 	move	at,s5
    43dc:	26a1001f 	addiu	at,s5,31
    43e0:	0001a943 	sra	s5,at,0x5
    43e4:	3c010000 	lui	at,0x0
    43e8:	c4340000 	lwc1	$f20,0(at)
    43ec:	3c013f00 	lui	at,0x3f00
    43f0:	4481b000 	mtc1	at,$f22
    43f4:	10000040 	b	44f8 <EnPoSisters_Draw+0x444>
    43f8:	32b500ff 	andi	s5,s5,0xff
    43fc:	00520019 	multu	v0,s2
    4400:	0000a812 	mflo	s5
    4404:	26b5e020 	addiu	s5,s5,-8160
    4408:	06a10002 	bgez	s5,4414 <EnPoSisters_Draw+0x360>
    440c:	02a00821 	move	at,s5
    4410:	26a1001f 	addiu	at,s5,31
    4414:	0001a943 	sra	s5,at,0x5
    4418:	3c010000 	lui	at,0x0
    441c:	32b500ff 	andi	s5,s5,0xff
    4420:	c4340000 	lwc1	$f20,0(at)
    4424:	3c013f00 	lui	at,0x3f00
    4428:	4481b000 	mtc1	at,$f22
    442c:	10000033 	b	44fc <EnPoSisters_Draw+0x448>
    4430:	92990198 	lbu	t9,408(s4)
    4434:	15620010 	bne	t3,v0,4478 <EnPoSisters_Draw+0x3c4>
    4438:	3c0f0000 	lui	t7,0x0
    443c:	8689019a 	lh	t1,410(s4)
    4440:	240a0020 	li	t2,32
    4444:	01496023 	subu	t4,t2,t1
    4448:	01920019 	multu	t4,s2
    444c:	0000a812 	mflo	s5
    4450:	06a10002 	bgez	s5,445c <EnPoSisters_Draw+0x3a8>
    4454:	02a00821 	move	at,s5
    4458:	26a1001f 	addiu	at,s5,31
    445c:	0001a943 	sra	s5,at,0x5
    4460:	3c010000 	lui	at,0x0
    4464:	c4340000 	lwc1	$f20,0(at)
    4468:	3c013f00 	lui	at,0x3f00
    446c:	4481b000 	mtc1	at,$f22
    4470:	10000021 	b	44f8 <EnPoSisters_Draw+0x444>
    4474:	32b500ff 	andi	s5,s5,0xff
    4478:	25ef0000 	addiu	t7,t7,0
    447c:	15e20010 	bne	t7,v0,44c0 <EnPoSisters_Draw+0x40c>
    4480:	3c0d0000 	lui	t5,0x0
    4484:	868e019a 	lh	t6,410(s4)
    4488:	24180020 	li	t8,32
    448c:	030e4023 	subu	t0,t8,t6
    4490:	01120019 	multu	t0,s2
    4494:	0000a812 	mflo	s5
    4498:	06a10002 	bgez	s5,44a4 <EnPoSisters_Draw+0x3f0>
    449c:	02a00821 	move	at,s5
    44a0:	26a1001f 	addiu	at,s5,31
    44a4:	0001a943 	sra	s5,at,0x5
    44a8:	3c010000 	lui	at,0x0
    44ac:	c4340000 	lwc1	$f20,0(at)
    44b0:	3c013f00 	lui	at,0x3f00
    44b4:	4481b000 	mtc1	at,$f22
    44b8:	1000000f 	b	44f8 <EnPoSisters_Draw+0x444>
    44bc:	32b500ff 	andi	s5,s5,0xff
    44c0:	25ad0000 	addiu	t5,t5,0
    44c4:	15a20007 	bne	t5,v0,44e4 <EnPoSisters_Draw+0x430>
    44c8:	3c013f00 	lui	at,0x3f00
    44cc:	3c010000 	lui	at,0x0
    44d0:	c4340000 	lwc1	$f20,0(at)
    44d4:	3c013f00 	lui	at,0x3f00
    44d8:	4481b000 	mtc1	at,$f22
    44dc:	10000006 	b	44f8 <EnPoSisters_Draw+0x444>
    44e0:	93b500e7 	lbu	s5,231(sp)
    44e4:	4481b000 	mtc1	at,$f22
    44e8:	c6840050 	lwc1	$f4,80(s4)
    44ec:	93b500e7 	lbu	s5,231(sp)
    44f0:	46162502 	mul.s	$f20,$f4,$f22
    44f4:	00000000 	nop
    44f8:	92990198 	lbu	t9,408(s4)
    44fc:	3c0b0000 	lui	t3,0x0
    4500:	256b0000 	addiu	t3,t3,0
    4504:	1b200081 	blez	t9,470c <EnPoSisters_Draw+0x658>
    4508:	00008825 	move	s1,zero
    450c:	3c0a0405 	lui	t2,0x405
    4510:	254ad4e0 	addiu	t2,t2,-11040
    4514:	3c010000 	lui	at,0x0
    4518:	c4380000 	lwc1	$f24,0(at)
    451c:	afaa0078 	sw	t2,120(sp)
    4520:	afab007c 	sw	t3,124(sp)
    4524:	02809025 	move	s2,s4
    4528:	afa50084 	sw	a1,132(sp)
    452c:	8fa50084 	lw	a1,132(sp)
    4530:	8e820190 	lw	v0,400(s4)
    4534:	3c090000 	lui	t1,0x0
    4538:	25290000 	addiu	t1,t1,0
    453c:	10a2000c 	beq	a1,v0,4570 <EnPoSisters_Draw+0x4bc>
    4540:	3c18e700 	lui	t8,0xe700
    4544:	1122000a 	beq	t1,v0,4570 <EnPoSisters_Draw+0x4bc>
    4548:	3c0c0000 	lui	t4,0x0
    454c:	258c0000 	addiu	t4,t4,0
    4550:	51820008 	beql	t4,v0,4574 <EnPoSisters_Draw+0x4c0>
    4554:	8e6202d0 	lw	v0,720(s3)
    4558:	0011a823 	negu	s5,s1
    455c:	02a00821 	move	at,s5
    4560:	0015a940 	sll	s5,s5,0x5
    4564:	02a1a823 	subu	s5,s5,at
    4568:	26b500f8 	addiu	s5,s5,248
    456c:	32b500ff 	andi	s5,s5,0xff
    4570:	8e6202d0 	lw	v0,720(s3)
    4574:	3c08fa00 	lui	t0,0xfa00
    4578:	35088080 	ori	t0,t0,0x8080
    457c:	244f0008 	addiu	t7,v0,8
    4580:	ae6f02d0 	sw	t7,720(s3)
    4584:	ac400004 	sw	zero,4(v0)
    4588:	ac580000 	sw	t8,0(v0)
    458c:	8e6202d0 	lw	v0,720(s3)
    4590:	32a400ff 	andi	a0,s5,0xff
    4594:	00003825 	move	a3,zero
    4598:	244e0008 	addiu	t6,v0,8
    459c:	ae6e02d0 	sw	t6,720(s3)
    45a0:	ac480000 	sw	t0,0(v0)
    45a4:	92e90001 	lbu	t1,1(s7)
    45a8:	92f90000 	lbu	t9,0(s7)
    45ac:	92ee0002 	lbu	t6,2(s7)
    45b0:	00096400 	sll	t4,t1,0x10
    45b4:	00195e00 	sll	t3,t9,0x18
    45b8:	016c7825 	or	t7,t3,t4
    45bc:	000e4200 	sll	t0,t6,0x8
    45c0:	01e86825 	or	t5,t7,t0
    45c4:	01a4c825 	or	t9,t5,a0
    45c8:	ac590004 	sw	t9,4(v0)
    45cc:	8e46023c 	lw	a2,572(s2)
    45d0:	c64e0238 	lwc1	$f14,568(s2)
    45d4:	c64c0234 	lwc1	$f12,564(s2)
    45d8:	0c000000 	jal	0 <EnPoSisters_Init>
    45dc:	afa50084 	sw	a1,132(sp)
    45e0:	86ca07a0 	lh	t2,1952(s6)
    45e4:	000a4880 	sll	t1,t2,0x2
    45e8:	02c95821 	addu	t3,s6,t1
    45ec:	0c000000 	jal	0 <EnPoSisters_Init>
    45f0:	8d640790 	lw	a0,1936(t3)
    45f4:	34018000 	li	at,0x8000
    45f8:	00412821 	addu	a1,v0,at
    45fc:	00052c00 	sll	a1,a1,0x10
    4600:	00052c03 	sra	a1,a1,0x10
    4604:	00002025 	move	a0,zero
    4608:	00003025 	move	a2,zero
    460c:	0c000000 	jal	0 <EnPoSisters_Init>
    4610:	24070001 	li	a3,1
    4614:	8fac007c 	lw	t4,124(sp)
    4618:	8e980190 	lw	t8,400(s4)
    461c:	24070001 	li	a3,1
    4620:	5598001c 	bnel	t4,t8,4694 <EnPoSisters_Draw+0x5e0>
    4624:	4406a000 	mfc1	a2,$f20
    4628:	868e019a 	lh	t6,410(s4)
    462c:	3c010000 	lui	at,0x0
    4630:	c42a0000 	lwc1	$f10,0(at)
    4634:	01d17823 	subu	t7,t6,s1
    4638:	448f3000 	mtc1	t7,$f6
    463c:	3c010000 	lui	at,0x0
    4640:	46803220 	cvt.s.w	$f8,$f6
    4644:	460a4402 	mul.s	$f16,$f8,$f10
    4648:	46168500 	add.s	$f20,$f16,$f22
    464c:	4616a03c 	c.lt.s	$f20,$f22
    4650:	00000000 	nop
    4654:	45020004 	bc1fl	4668 <EnPoSisters_Draw+0x5b4>
    4658:	4614c03c 	c.lt.s	$f24,$f20
    465c:	10000009 	b	4684 <EnPoSisters_Draw+0x5d0>
    4660:	4600b006 	mov.s	$f0,$f22
    4664:	4614c03c 	c.lt.s	$f24,$f20
    4668:	00000000 	nop
    466c:	45020004 	bc1fl	4680 <EnPoSisters_Draw+0x5cc>
    4670:	4600a086 	mov.s	$f2,$f20
    4674:	10000002 	b	4680 <EnPoSisters_Draw+0x5cc>
    4678:	4600c086 	mov.s	$f2,$f24
    467c:	4600a086 	mov.s	$f2,$f20
    4680:	46001006 	mov.s	$f0,$f2
    4684:	c4320000 	lwc1	$f18,0(at)
    4688:	46120502 	mul.s	$f20,$f0,$f18
    468c:	00000000 	nop
    4690:	4406a000 	mfc1	a2,$f20
    4694:	4600a306 	mov.s	$f12,$f20
    4698:	0c000000 	jal	0 <EnPoSisters_Init>
    469c:	4600a386 	mov.s	$f14,$f20
    46a0:	8e6202d0 	lw	v0,720(s3)
    46a4:	3c0dda38 	lui	t5,0xda38
    46a8:	35ad0003 	ori	t5,t5,0x3
    46ac:	24480008 	addiu	t0,v0,8
    46b0:	ae6802d0 	sw	t0,720(s3)
    46b4:	3c050000 	lui	a1,0x0
    46b8:	ac4d0000 	sw	t5,0(v0)
    46bc:	8ec40000 	lw	a0,0(s6)
    46c0:	24a50000 	addiu	a1,a1,0
    46c4:	24060c3c 	li	a2,3132
    46c8:	0c000000 	jal	0 <EnPoSisters_Init>
    46cc:	00408025 	move	s0,v0
    46d0:	ae020004 	sw	v0,4(s0)
    46d4:	8e6202d0 	lw	v0,720(s3)
    46d8:	3c0ade00 	lui	t2,0xde00
    46dc:	26310001 	addiu	s1,s1,1
    46e0:	24590008 	addiu	t9,v0,8
    46e4:	ae7902d0 	sw	t9,720(s3)
    46e8:	ac4a0000 	sw	t2,0(v0)
    46ec:	8fa90078 	lw	t1,120(sp)
    46f0:	2652000c 	addiu	s2,s2,12
    46f4:	ac490004 	sw	t1,4(v0)
    46f8:	8fab00f4 	lw	t3,244(sp)
    46fc:	916c0198 	lbu	t4,408(t3)
    4700:	022c082a 	slt	at,s1,t4
    4704:	5420ff8a 	bnezl	at,4530 <EnPoSisters_Draw+0x47c>
    4708:	8fa50084 	lw	a1,132(sp)
    470c:	3c060000 	lui	a2,0x0
    4710:	24c60000 	addiu	a2,a2,0
    4714:	27a400c4 	addiu	a0,sp,196
    4718:	8ec50000 	lw	a1,0(s6)
    471c:	0c000000 	jal	0 <EnPoSisters_Init>
    4720:	24070c43 	li	a3,3139
    4724:	8fbf006c 	lw	ra,108(sp)
    4728:	d7b40030 	ldc1	$f20,48(sp)
    472c:	d7b60038 	ldc1	$f22,56(sp)
    4730:	d7b80040 	ldc1	$f24,64(sp)
    4734:	8fb0004c 	lw	s0,76(sp)
    4738:	8fb10050 	lw	s1,80(sp)
    473c:	8fb20054 	lw	s2,84(sp)
    4740:	8fb30058 	lw	s3,88(sp)
    4744:	8fb4005c 	lw	s4,92(sp)
    4748:	8fb50060 	lw	s5,96(sp)
    474c:	8fb60064 	lw	s6,100(sp)
    4750:	8fb70068 	lw	s7,104(sp)
    4754:	03e00008 	jr	ra
    4758:	27bd00f8 	addiu	sp,sp,248
    475c:	00000000 	nop
