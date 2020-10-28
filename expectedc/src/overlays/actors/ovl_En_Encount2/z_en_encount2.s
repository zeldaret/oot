
build/src/overlays/actors/ovl_En_Encount2/z_en_encount2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnEncount2_Init>:
       0:	27bdffe0 	addiu	sp,sp,-32
       4:	afbf001c 	sw	ra,28(sp)
       8:	afb00018 	sw	s0,24(sp)
       c:	84ae00a4 	lh	t6,164(a1)
      10:	24010060 	li	at,96
      14:	00808025 	move	s0,a0
      18:	11c10002 	beq	t6,at,24 <EnEncount2_Init+0x24>
      1c:	240f0001 	li	t7,1
      20:	a48f015a 	sh	t7,346(a0)
      24:	8618015a 	lh	t8,346(s0)
      28:	3c040000 	lui	a0,0x0
      2c:	17000015 	bnez	t8,84 <EnEncount2_Init+0x84>
      30:	00000000 	nop
      34:	3c040000 	lui	a0,0x0
      38:	0c000000 	jal	0 <EnEncount2_Init>
      3c:	24840000 	addiu	a0,a0,0
      40:	3c040000 	lui	a0,0x0
      44:	24840000 	addiu	a0,a0,0
      48:	0c000000 	jal	0 <EnEncount2_Init>
      4c:	8605001c 	lh	a1,28(s0)
      50:	3c020000 	lui	v0,0x0
      54:	24420000 	addiu	v0,v0,0
      58:	8c590004 	lw	t9,4(v0)
      5c:	1720000f 	bnez	t9,9c <EnEncount2_Init+0x9c>
      60:	00000000 	nop
      64:	94480edc 	lhu	t0,3804(v0)
      68:	31090200 	andi	t1,t0,0x200
      6c:	1120000b 	beqz	t1,9c <EnEncount2_Init+0x9c>
      70:	00000000 	nop
      74:	0c000000 	jal	0 <EnEncount2_Init>
      78:	02002025 	move	a0,s0
      7c:	10000007 	b	9c <EnEncount2_Init+0x9c>
      80:	00000000 	nop
      84:	0c000000 	jal	0 <EnEncount2_Init>
      88:	24840000 	addiu	a0,a0,0
      8c:	3c040000 	lui	a0,0x0
      90:	24840000 	addiu	a0,a0,0
      94:	0c000000 	jal	0 <EnEncount2_Init>
      98:	8605001c 	lh	a1,28(s0)
      9c:	3c0a0000 	lui	t2,0x0
      a0:	254a0000 	addiu	t2,t2,0
      a4:	ae0a014c 	sw	t2,332(s0)
      a8:	8fbf001c 	lw	ra,28(sp)
      ac:	8fb00018 	lw	s0,24(sp)
      b0:	27bd0020 	addiu	sp,sp,32
      b4:	03e00008 	jr	ra
      b8:	00000000 	nop

000000bc <func_80A07A4C>:
      bc:	27bdffd0 	addiu	sp,sp,-48
      c0:	afbf0024 	sw	ra,36(sp)
      c4:	afb00020 	sw	s0,32(sp)
      c8:	848e015a 	lh	t6,346(a0)
      cc:	00808025 	move	s0,a0
      d0:	00a03025 	move	a2,a1
      d4:	8ca21c44 	lw	v0,7236(a1)
      d8:	15c00025 	bnez	t6,170 <func_80A07A4C+0xb4>
      dc:	00001825 	move	v1,zero
      e0:	3c010000 	lui	at,0x0
      e4:	c4240000 	lwc1	$f4,0(at)
      e8:	c4460028 	lwc1	$f6,40(v0)
      ec:	3c01c42f 	lui	at,0xc42f
      f0:	4606203c 	c.lt.s	$f4,$f6
      f4:	00000000 	nop
      f8:	4500003a 	bc1f	1e4 <func_80A07A4C+0x128>
      fc:	00000000 	nop
     100:	c4400024 	lwc1	$f0,36(v0)
     104:	44814000 	mtc1	at,$f8
     108:	3c0142c8 	lui	at,0x42c8
     10c:	4600403c 	c.lt.s	$f8,$f0
     110:	00000000 	nop
     114:	45000033 	bc1f	1e4 <func_80A07A4C+0x128>
     118:	00000000 	nop
     11c:	44815000 	mtc1	at,$f10
     120:	3c010000 	lui	at,0x0
     124:	460a003c 	c.lt.s	$f0,$f10
     128:	00000000 	nop
     12c:	4500002d 	bc1f	1e4 <func_80A07A4C+0x128>
     130:	00000000 	nop
     134:	c440002c 	lwc1	$f0,44(v0)
     138:	c4300000 	lwc1	$f16,0(at)
     13c:	3c01c561 	lui	at,0xc561
     140:	4610003c 	c.lt.s	$f0,$f16
     144:	00000000 	nop
     148:	45000026 	bc1f	1e4 <func_80A07A4C+0x128>
     14c:	00000000 	nop
     150:	44819000 	mtc1	at,$f18
     154:	00000000 	nop
     158:	4600903c 	c.lt.s	$f18,$f0
     15c:	00000000 	nop
     160:	45000020 	bc1f	1e4 <func_80A07A4C+0x128>
     164:	00000000 	nop
     168:	1000001e 	b	1e4 <func_80A07A4C+0x128>
     16c:	24030001 	li	v1,1
     170:	3c01442f 	lui	at,0x442f
     174:	44813000 	mtc1	at,$f6
     178:	c6040090 	lwc1	$f4,144(s0)
     17c:	00c02025 	move	a0,a2
     180:	24050037 	li	a1,55
     184:	4606203c 	c.lt.s	$f4,$f6
     188:	00000000 	nop
     18c:	45000015 	bc1f	1e4 <func_80A07A4C+0x128>
     190:	00000000 	nop
     194:	a7a30028 	sh	v1,40(sp)
     198:	0c000000 	jal	0 <EnEncount2_Init>
     19c:	afa60034 	sw	a2,52(sp)
     1a0:	87a30028 	lh	v1,40(sp)
     1a4:	1040000f 	beqz	v0,1e4 <func_80A07A4C+0x128>
     1a8:	8fa60034 	lw	a2,52(sp)
     1ac:	84c200a4 	lh	v0,164(a2)
     1b0:	2401004f 	li	at,79
     1b4:	10410007 	beq	v0,at,1d4 <func_80A07A4C+0x118>
     1b8:	2401001a 	li	at,26
     1bc:	10410005 	beq	v0,at,1d4 <func_80A07A4C+0x118>
     1c0:	2401000e 	li	at,14
     1c4:	10410003 	beq	v0,at,1d4 <func_80A07A4C+0x118>
     1c8:	2401000f 	li	at,15
     1cc:	14410005 	bne	v0,at,1e4 <func_80A07A4C+0x128>
     1d0:	00000000 	nop
     1d4:	860f015c 	lh	t7,348(s0)
     1d8:	15e00002 	bnez	t7,1e4 <func_80A07A4C+0x128>
     1dc:	00000000 	nop
     1e0:	24030002 	li	v1,2
     1e4:	10600007 	beqz	v1,204 <func_80A07A4C+0x148>
     1e8:	24020001 	li	v0,1
     1ec:	10620011 	beq	v1,v0,234 <func_80A07A4C+0x178>
     1f0:	24010002 	li	at,2
     1f4:	50610031 	beql	v1,at,2bc <func_80A07A4C+0x200>
     1f8:	86190178 	lh	t9,376(s0)
     1fc:	10000041 	b	304 <func_80A07A4C+0x248>
     200:	8fbf0024 	lw	ra,36(sp)
     204:	86080178 	lh	t0,376(s0)
     208:	24180000 	li	t8,0
     20c:	24190000 	li	t9,0
     210:	2509ffff 	addiu	t1,t0,-1
     214:	a6090178 	sh	t1,376(s0)
     218:	860a0178 	lh	t2,376(s0)
     21c:	ae190184 	sw	t9,388(s0)
     220:	ae180180 	sw	t8,384(s0)
     224:	5d400037 	bgtzl	t2,304 <func_80A07A4C+0x248>
     228:	8fbf0024 	lw	ra,36(sp)
     22c:	10000034 	b	300 <func_80A07A4C+0x244>
     230:	a6000178 	sh	zero,376(s0)
     234:	860b0154 	lh	t3,340(s0)
     238:	504b0008 	beql	v0,t3,25c <func_80A07A4C+0x1a0>
     23c:	84ce07a0 	lh	t6,1952(a2)
     240:	8e0c0180 	lw	t4,384(s0)
     244:	8e0d0184 	lw	t5,388(s0)
     248:	5580001c 	bnezl	t4,2bc <func_80A07A4C+0x200>
     24c:	86190178 	lh	t9,376(s0)
     250:	55a0001a 	bnezl	t5,2bc <func_80A07A4C+0x200>
     254:	86190178 	lh	t9,376(s0)
     258:	84ce07a0 	lh	t6,1952(a2)
     25c:	24050001 	li	a1,1
     260:	000e7880 	sll	t7,t6,0x2
     264:	00cfc021 	addu	t8,a2,t7
     268:	0c000000 	jal	0 <EnEncount2_Init>
     26c:	8f040790 	lw	a0,1936(t8)
     270:	00022400 	sll	a0,v0,0x10
     274:	a7a2002a 	sh	v0,42(sp)
     278:	00042403 	sra	a0,a0,0x10
     27c:	0c000000 	jal	0 <EnEncount2_Init>
     280:	24057fff 	li	a1,32767
     284:	87a4002a 	lh	a0,42(sp)
     288:	24050032 	li	a1,50
     28c:	00003025 	move	a2,zero
     290:	00003825 	move	a3,zero
     294:	0c000000 	jal	0 <EnEncount2_Init>
     298:	afa00010 	sw	zero,16(sp)
     29c:	87a4002a 	lh	a0,42(sp)
     2a0:	0c000000 	jal	0 <EnEncount2_Init>
     2a4:	2405012c 	li	a1,300
     2a8:	24080000 	li	t0,0
     2ac:	24090001 	li	t1,1
     2b0:	ae090184 	sw	t1,388(s0)
     2b4:	ae080180 	sw	t0,384(s0)
     2b8:	86190178 	lh	t9,376(s0)
     2bc:	3c0f0000 	lui	t7,0x0
     2c0:	240c003c 	li	t4,60
     2c4:	272a0001 	addiu	t2,t9,1
     2c8:	a60a0178 	sh	t2,376(s0)
     2cc:	860b0178 	lh	t3,376(s0)
     2d0:	240e00c8 	li	t6,200
     2d4:	25ef0000 	addiu	t7,t7,0
     2d8:	2961003d 	slti	at,t3,61
     2dc:	54200003 	bnezl	at,2ec <func_80A07A4C+0x230>
     2e0:	860d0154 	lh	t5,340(s0)
     2e4:	a60c0178 	sh	t4,376(s0)
     2e8:	860d0154 	lh	t5,340(s0)
     2ec:	55a00005 	bnezl	t5,304 <func_80A07A4C+0x248>
     2f0:	8fbf0024 	lw	ra,36(sp)
     2f4:	a60e0154 	sh	t6,340(s0)
     2f8:	a6000158 	sh	zero,344(s0)
     2fc:	ae0f014c 	sw	t7,332(s0)
     300:	8fbf0024 	lw	ra,36(sp)
     304:	8fb00020 	lw	s0,32(sp)
     308:	27bd0030 	addiu	sp,sp,48
     30c:	03e00008 	jr	ra
     310:	00000000 	nop

00000314 <func_80A07CA4>:
     314:	27bdff68 	addiu	sp,sp,-152
     318:	afbf003c 	sw	ra,60(sp)
     31c:	afb00038 	sw	s0,56(sp)
     320:	8cb91c44 	lw	t9,7236(a1)
     324:	00808025 	move	s0,a0
     328:	00a03025 	move	a2,a1
     32c:	afb90094 	sw	t9,148(sp)
     330:	84880178 	lh	t0,376(a0)
     334:	240b003c 	li	t3,60
     338:	25090001 	addiu	t1,t0,1
     33c:	a4890178 	sh	t1,376(a0)
     340:	848a0178 	lh	t2,376(a0)
     344:	2941003d 	slti	at,t2,61
     348:	54200003 	bnezl	at,358 <func_80A07CA4+0x44>
     34c:	a7a00060 	sh	zero,96(sp)
     350:	a48b0178 	sh	t3,376(a0)
     354:	a7a00060 	sh	zero,96(sp)
     358:	860c015a 	lh	t4,346(s0)
     35c:	3c01442f 	lui	at,0x442f
     360:	55800036 	bnezl	t4,43c <func_80A07CA4+0x128>
     364:	afa6009c 	sw	a2,156(sp)
     368:	860d0154 	lh	t5,340(s0)
     36c:	8fb80094 	lw	t8,148(sp)
     370:	02002025 	move	a0,s0
     374:	15a00007 	bnez	t5,394 <func_80A07CA4+0x80>
     378:	24052049 	li	a1,8265
     37c:	3c0f0000 	lui	t7,0x0
     380:	240e0064 	li	t6,100
     384:	25ef0000 	addiu	t7,t7,0
     388:	a60e0154 	sh	t6,340(s0)
     38c:	1000015d 	b	904 <func_80A07CA4+0x5f0>
     390:	ae0f014c 	sw	t7,332(s0)
     394:	3c010000 	lui	at,0x0
     398:	c4240000 	lwc1	$f4,0(at)
     39c:	c70a0028 	lwc1	$f10,40(t8)
     3a0:	3c01c42f 	lui	at,0xc42f
     3a4:	460a203c 	c.lt.s	$f4,$f10
     3a8:	00000000 	nop
     3ac:	4500001e 	bc1f	428 <func_80A07CA4+0x114>
     3b0:	00000000 	nop
     3b4:	c7000024 	lwc1	$f0,36(t8)
     3b8:	44813000 	mtc1	at,$f6
     3bc:	3c0142c8 	lui	at,0x42c8
     3c0:	4600303c 	c.lt.s	$f6,$f0
     3c4:	00000000 	nop
     3c8:	45000017 	bc1f	428 <func_80A07CA4+0x114>
     3cc:	00000000 	nop
     3d0:	44814000 	mtc1	at,$f8
     3d4:	3c010000 	lui	at,0x0
     3d8:	4608003c 	c.lt.s	$f0,$f8
     3dc:	00000000 	nop
     3e0:	45000011 	bc1f	428 <func_80A07CA4+0x114>
     3e4:	00000000 	nop
     3e8:	c700002c 	lwc1	$f0,44(t8)
     3ec:	c4240000 	lwc1	$f4,0(at)
     3f0:	3c010000 	lui	at,0x0
     3f4:	4604003c 	c.lt.s	$f0,$f4
     3f8:	00000000 	nop
     3fc:	4500000a 	bc1f	428 <func_80A07CA4+0x114>
     400:	00000000 	nop
     404:	c42a0000 	lwc1	$f10,0(at)
     408:	24190002 	li	t9,2
     40c:	24080001 	li	t0,1
     410:	4600503c 	c.lt.s	$f10,$f0
     414:	00000000 	nop
     418:	45000003 	bc1f	428 <func_80A07CA4+0x114>
     41c:	00000000 	nop
     420:	a7b9005e 	sh	t9,94(sp)
     424:	a7a80060 	sh	t0,96(sp)
     428:	0c000000 	jal	0 <EnEncount2_Init>
     42c:	afa6009c 	sw	a2,156(sp)
     430:	10000020 	b	4b4 <func_80A07CA4+0x1a0>
     434:	87ad0060 	lh	t5,96(sp)
     438:	afa6009c 	sw	a2,156(sp)
     43c:	c6060090 	lwc1	$f6,144(s0)
     440:	44814000 	mtc1	at,$f8
     444:	00c02025 	move	a0,a2
     448:	24050037 	li	a1,55
     44c:	4608303c 	c.lt.s	$f6,$f8
     450:	00000000 	nop
     454:	45020017 	bc1fl	4b4 <func_80A07CA4+0x1a0>
     458:	87ad0060 	lh	t5,96(sp)
     45c:	0c000000 	jal	0 <EnEncount2_Init>
     460:	afa6009c 	sw	a2,156(sp)
     464:	10400012 	beqz	v0,4b0 <func_80A07CA4+0x19c>
     468:	8fa9009c 	lw	t1,156(sp)
     46c:	852200a4 	lh	v0,164(t1)
     470:	2401004f 	li	at,79
     474:	10410007 	beq	v0,at,494 <func_80A07CA4+0x180>
     478:	2401001a 	li	at,26
     47c:	10410005 	beq	v0,at,494 <func_80A07CA4+0x180>
     480:	2401000e 	li	at,14
     484:	10410003 	beq	v0,at,494 <func_80A07CA4+0x180>
     488:	2401000f 	li	at,15
     48c:	54410009 	bnel	v0,at,4b4 <func_80A07CA4+0x1a0>
     490:	87ad0060 	lh	t5,96(sp)
     494:	860a015c 	lh	t2,348(s0)
     498:	240b0001 	li	t3,1
     49c:	240c0002 	li	t4,2
     4a0:	55400004 	bnezl	t2,4b4 <func_80A07CA4+0x1a0>
     4a4:	87ad0060 	lh	t5,96(sp)
     4a8:	a7ab005e 	sh	t3,94(sp)
     4ac:	a7ac0060 	sh	t4,96(sp)
     4b0:	87ad0060 	lh	t5,96(sp)
     4b4:	8fa6009c 	lw	a2,156(sp)
     4b8:	51a00113 	beqzl	t5,908 <func_80A07CA4+0x5f4>
     4bc:	8fbf003c 	lw	ra,60(sp)
     4c0:	c4c200e0 	lwc1	$f2,224(a2)
     4c4:	c4c400ec 	lwc1	$f4,236(a2)
     4c8:	3c014396 	lui	at,0x4396
     4cc:	46022281 	sub.s	$f10,$f4,$f2
     4d0:	e7aa008c 	swc1	$f10,140(sp)
     4d4:	c4c600f0 	lwc1	$f6,240(a2)
     4d8:	c4ce00e4 	lwc1	$f14,228(a2)
     4dc:	460e3201 	sub.s	$f8,$f6,$f14
     4e0:	c7a6008c 	lwc1	$f6,140(sp)
     4e4:	e7a80088 	swc1	$f8,136(sp)
     4e8:	c4c400f4 	lwc1	$f4,244(a2)
     4ec:	c4d000e8 	lwc1	$f16,232(a2)
     4f0:	46063202 	mul.s	$f8,$f6,$f6
     4f4:	e7a60040 	swc1	$f6,64(sp)
     4f8:	46102281 	sub.s	$f10,$f4,$f16
     4fc:	c7a40088 	lwc1	$f4,136(sp)
     500:	afa6009c 	sw	a2,156(sp)
     504:	e7aa0084 	swc1	$f10,132(sp)
     508:	46042282 	mul.s	$f10,$f4,$f4
     50c:	460a4200 	add.s	$f8,$f8,$f10
     510:	c7aa0084 	lwc1	$f10,132(sp)
     514:	460a5182 	mul.s	$f6,$f10,$f10
     518:	46064000 	add.s	$f0,$f8,$f6
     51c:	c7a80040 	lwc1	$f8,64(sp)
     520:	46000004 	sqrt.s	$f0,$f0
     524:	46004483 	div.s	$f18,$f8,$f0
     528:	44814000 	mtc1	at,$f8
     52c:	3c014320 	lui	at,0x4320
     530:	46005183 	div.s	$f6,$f10,$f0
     534:	e7b2007c 	swc1	$f18,124(sp)
     538:	46089282 	mul.s	$f10,$f18,$f8
     53c:	460a1200 	add.s	$f8,$f2,$f10
     540:	e7a60048 	swc1	$f6,72(sp)
     544:	e7a60074 	swc1	$f6,116(sp)
     548:	46002283 	div.s	$f10,$f4,$f0
     54c:	e7a8008c 	swc1	$f8,140(sp)
     550:	44814000 	mtc1	at,$f8
     554:	3c0143c8 	lui	at,0x43c8
     558:	46085102 	mul.s	$f4,$f10,$f8
     55c:	44814000 	mtc1	at,$f8
     560:	3c014396 	lui	at,0x4396
     564:	46047280 	add.s	$f10,$f14,$f4
     568:	46085100 	add.s	$f4,$f10,$f8
     56c:	44815000 	mtc1	at,$f10
     570:	3c014348 	lui	at,0x4348
     574:	44816000 	mtc1	at,$f12
     578:	460a3202 	mul.s	$f8,$f6,$f10
     57c:	e7a40088 	swc1	$f4,136(sp)
     580:	46088100 	add.s	$f4,$f16,$f8
     584:	0c000000 	jal	0 <EnEncount2_Init>
     588:	e7a40084 	swc1	$f4,132(sp)
     58c:	3c014348 	lui	at,0x4348
     590:	44815000 	mtc1	at,$f10
     594:	c7a6007c 	lwc1	$f6,124(sp)
     598:	8fae009c 	lw	t6,156(sp)
     59c:	3c014248 	lui	at,0x4248
     5a0:	460a3202 	mul.s	$f8,$f6,$f10
     5a4:	c5c400e0 	lwc1	$f4,224(t6)
     5a8:	44816000 	mtc1	at,$f12
     5ac:	46082180 	add.s	$f6,$f4,$f8
     5b0:	46060280 	add.s	$f10,$f0,$f6
     5b4:	0c000000 	jal	0 <EnEncount2_Init>
     5b8:	e7aa0064 	swc1	$f10,100(sp)
     5bc:	c7a40088 	lwc1	$f4,136(sp)
     5c0:	3c014348 	lui	at,0x4348
     5c4:	44816000 	mtc1	at,$f12
     5c8:	46040200 	add.s	$f8,$f0,$f4
     5cc:	0c000000 	jal	0 <EnEncount2_Init>
     5d0:	e7a80068 	swc1	$f8,104(sp)
     5d4:	3c014348 	lui	at,0x4348
     5d8:	44815000 	mtc1	at,$f10
     5dc:	c7a60074 	lwc1	$f6,116(sp)
     5e0:	8faf009c 	lw	t7,156(sp)
     5e4:	3c010000 	lui	at,0x0
     5e8:	460a3102 	mul.s	$f4,$f6,$f10
     5ec:	c5e800e8 	lwc1	$f8,232(t7)
     5f0:	c42c0000 	lwc1	$f12,0(at)
     5f4:	46044180 	add.s	$f6,$f8,$f4
     5f8:	46060280 	add.s	$f10,$f0,$f6
     5fc:	0c000000 	jal	0 <EnEncount2_Init>
     600:	e7aa006c 	swc1	$f10,108(sp)
     604:	3c010000 	lui	at,0x0
     608:	c4280000 	lwc1	$f8,0(at)
     60c:	87b80060 	lh	t8,96(sp)
     610:	24010001 	li	at,1
     614:	02002025 	move	a0,s0
     618:	17010006 	bne	t8,at,634 <func_80A07CA4+0x320>
     61c:	46080080 	add.s	$f2,$f0,$f8
     620:	44061000 	mfc1	a2,$f2
     624:	0c000000 	jal	0 <EnEncount2_Init>
     628:	27a50064 	addiu	a1,sp,100
     62c:	1000000b 	b	65c <func_80A07CA4+0x348>
     630:	86090158 	lh	t1,344(s0)
     634:	8619015e 	lh	t9,350(s0)
     638:	02002025 	move	a0,s0
     63c:	57200007 	bnezl	t9,65c <func_80A07CA4+0x348>
     640:	86090158 	lh	t1,344(s0)
     644:	44061000 	mfc1	a2,$f2
     648:	0c000000 	jal	0 <EnEncount2_Init>
     64c:	27a50064 	addiu	a1,sp,100
     650:	24080005 	li	t0,5
     654:	a608015e 	sh	t0,350(s0)
     658:	86090158 	lh	t1,344(s0)
     65c:	87aa005e 	lh	t2,94(sp)
     660:	012a082a 	slt	at,t1,t2
     664:	502000a8 	beqzl	at,908 <func_80A07CA4+0x5f4>
     668:	8fbf003c 	lw	ra,60(sp)
     66c:	860b0156 	lh	t3,342(s0)
     670:	87ac0060 	lh	t4,96(sp)
     674:	24010001 	li	at,1
     678:	556000a3 	bnezl	t3,908 <func_80A07CA4+0x5f4>
     67c:	8fbf003c 	lw	ra,60(sp)
     680:	15810054 	bne	t4,at,7d4 <func_80A07CA4+0x4c0>
     684:	240d0032 	li	t5,50
     688:	240d0004 	li	t5,4
     68c:	a60d0156 	sh	t5,342(s0)
     690:	3c010000 	lui	at,0x0
     694:	a7a00062 	sh	zero,98(sp)
     698:	0c000000 	jal	0 <EnEncount2_Init>
     69c:	c42c0000 	lwc1	$f12,0(at)
     6a0:	3c013f80 	lui	at,0x3f80
     6a4:	44812000 	mtc1	at,$f4
     6a8:	3c0e0000 	lui	t6,0x0
     6ac:	8fb90094 	lw	t9,148(sp)
     6b0:	4604003c 	c.lt.s	$f0,$f4
     6b4:	00000000 	nop
     6b8:	45020015 	bc1fl	710 <func_80A07CA4+0x3fc>
     6bc:	44803000 	mtc1	zero,$f6
     6c0:	8dce0004 	lw	t6,4(t6)
     6c4:	3c014120 	lui	at,0x4120
     6c8:	51c00011 	beqzl	t6,710 <func_80A07CA4+0x3fc>
     6cc:	44803000 	mtc1	zero,$f6
     6d0:	44816000 	mtc1	at,$f12
     6d4:	0c000000 	jal	0 <EnEncount2_Init>
     6d8:	00000000 	nop
     6dc:	8faf0094 	lw	t7,148(sp)
     6e0:	3c014120 	lui	at,0x4120
     6e4:	44816000 	mtc1	at,$f12
     6e8:	c5e60024 	lwc1	$f6,36(t7)
     6ec:	46060280 	add.s	$f10,$f0,$f6
     6f0:	0c000000 	jal	0 <EnEncount2_Init>
     6f4:	e7aa007c 	swc1	$f10,124(sp)
     6f8:	8fb80094 	lw	t8,148(sp)
     6fc:	c708002c 	lwc1	$f8,44(t8)
     700:	46080100 	add.s	$f4,$f0,$f8
     704:	1000005a 	b	870 <func_80A07CA4+0x55c>
     708:	e7a40074 	swc1	$f4,116(sp)
     70c:	44803000 	mtc1	zero,$f6
     710:	c72a0838 	lwc1	$f10,2104(t9)
     714:	3c014120 	lui	at,0x4120
     718:	460a3032 	c.eq.s	$f6,$f10
     71c:	00000000 	nop
     720:	4503001c 	bc1tl	794 <func_80A07CA4+0x480>
     724:	44816000 	mtc1	at,$f12
     728:	3c014348 	lui	at,0x4348
     72c:	44816000 	mtc1	at,$f12
     730:	0c000000 	jal	0 <EnEncount2_Init>
     734:	00000000 	nop
     738:	3c014396 	lui	at,0x4396
     73c:	44812000 	mtc1	at,$f4
     740:	c7a8007c 	lwc1	$f8,124(sp)
     744:	8fa8009c 	lw	t0,156(sp)
     748:	3c014248 	lui	at,0x4248
     74c:	46044182 	mul.s	$f6,$f8,$f4
     750:	c50a00e0 	lwc1	$f10,224(t0)
     754:	44816000 	mtc1	at,$f12
     758:	46065200 	add.s	$f8,$f10,$f6
     75c:	46080100 	add.s	$f4,$f0,$f8
     760:	0c000000 	jal	0 <EnEncount2_Init>
     764:	e7a4007c 	swc1	$f4,124(sp)
     768:	3c014416 	lui	at,0x4416
     76c:	44813000 	mtc1	at,$f6
     770:	c7aa0074 	lwc1	$f10,116(sp)
     774:	8fa9009c 	lw	t1,156(sp)
     778:	46065202 	mul.s	$f8,$f10,$f6
     77c:	c52400e8 	lwc1	$f4,232(t1)
     780:	46082280 	add.s	$f10,$f4,$f8
     784:	460a0180 	add.s	$f6,$f0,$f10
     788:	1000000f 	b	7c8 <func_80A07CA4+0x4b4>
     78c:	e7a60074 	swc1	$f6,116(sp)
     790:	44816000 	mtc1	at,$f12
     794:	0c000000 	jal	0 <EnEncount2_Init>
     798:	00000000 	nop
     79c:	8faa0094 	lw	t2,148(sp)
     7a0:	3c014120 	lui	at,0x4120
     7a4:	44816000 	mtc1	at,$f12
     7a8:	c5440024 	lwc1	$f4,36(t2)
     7ac:	46040200 	add.s	$f8,$f0,$f4
     7b0:	0c000000 	jal	0 <EnEncount2_Init>
     7b4:	e7a8007c 	swc1	$f8,124(sp)
     7b8:	8fab0094 	lw	t3,148(sp)
     7bc:	c56a002c 	lwc1	$f10,44(t3)
     7c0:	460a0180 	add.s	$f6,$f0,$f10
     7c4:	e7a60074 	swc1	$f6,116(sp)
     7c8:	240c0003 	li	t4,3
     7cc:	10000028 	b	870 <func_80A07CA4+0x55c>
     7d0:	a7ac0062 	sh	t4,98(sp)
     7d4:	3c0142c8 	lui	at,0x42c8
     7d8:	a60d0156 	sh	t5,342(s0)
     7dc:	240e0003 	li	t6,3
     7e0:	44816000 	mtc1	at,$f12
     7e4:	0c000000 	jal	0 <EnEncount2_Init>
     7e8:	a7ae0062 	sh	t6,98(sp)
     7ec:	c7a4008c 	lwc1	$f4,140(sp)
     7f0:	3c0142c8 	lui	at,0x42c8
     7f4:	44816000 	mtc1	at,$f12
     7f8:	46040200 	add.s	$f8,$f0,$f4
     7fc:	0c000000 	jal	0 <EnEncount2_Init>
     800:	e7a8007c 	swc1	$f8,124(sp)
     804:	c7aa0084 	lwc1	$f10,132(sp)
     808:	3c010000 	lui	at,0x0
     80c:	c42c0000 	lwc1	$f12,0(at)
     810:	460a0180 	add.s	$f6,$f0,$f10
     814:	0c000000 	jal	0 <EnEncount2_Init>
     818:	e7a60074 	swc1	$f6,116(sp)
     81c:	3c013f80 	lui	at,0x3f80
     820:	44812000 	mtc1	at,$f4
     824:	3c01428c 	lui	at,0x428c
     828:	4604003c 	c.lt.s	$f0,$f4
     82c:	00000000 	nop
     830:	45020010 	bc1fl	874 <func_80A07CA4+0x560>
     834:	8fa6009c 	lw	a2,156(sp)
     838:	44816000 	mtc1	at,$f12
     83c:	0c000000 	jal	0 <EnEncount2_Init>
     840:	00000000 	nop
     844:	8faf0094 	lw	t7,148(sp)
     848:	3c01428c 	lui	at,0x428c
     84c:	44816000 	mtc1	at,$f12
     850:	c5e80024 	lwc1	$f8,36(t7)
     854:	46080280 	add.s	$f10,$f0,$f8
     858:	0c000000 	jal	0 <EnEncount2_Init>
     85c:	e7aa007c 	swc1	$f10,124(sp)
     860:	8fb80094 	lw	t8,148(sp)
     864:	c706002c 	lwc1	$f6,44(t8)
     868:	46060100 	add.s	$f4,$f0,$f6
     86c:	e7a40074 	swc1	$f4,116(sp)
     870:	8fa6009c 	lw	a2,156(sp)
     874:	c7a8007c 	lwc1	$f8,124(sp)
     878:	c7aa0088 	lwc1	$f10,136(sp)
     87c:	c7a60074 	lwc1	$f6,116(sp)
     880:	87b90062 	lh	t9,98(sp)
     884:	02002825 	move	a1,s0
     888:	240700b5 	li	a3,181
     88c:	afa0001c 	sw	zero,28(sp)
     890:	afa00020 	sw	zero,32(sp)
     894:	afa00024 	sw	zero,36(sp)
     898:	24c41c24 	addiu	a0,a2,7204
     89c:	e7a80010 	swc1	$f8,16(sp)
     8a0:	e7aa0014 	swc1	$f10,20(sp)
     8a4:	e7a60018 	swc1	$f6,24(sp)
     8a8:	0c000000 	jal	0 <EnEncount2_Init>
     8ac:	afb90028 	sw	t9,40(sp)
     8b0:	10400006 	beqz	v0,8cc <func_80A07CA4+0x5b8>
     8b4:	3c040000 	lui	a0,0x0
     8b8:	ac500190 	sw	s0,400(v0)
     8bc:	86080158 	lh	t0,344(s0)
     8c0:	25090001 	addiu	t1,t0,1
     8c4:	1000000f 	b	904 <func_80A07CA4+0x5f0>
     8c8:	a6090158 	sh	t1,344(s0)
     8cc:	0c000000 	jal	0 <EnEncount2_Init>
     8d0:	24840000 	addiu	a0,a0,0
     8d4:	3c040000 	lui	a0,0x0
     8d8:	0c000000 	jal	0 <EnEncount2_Init>
     8dc:	24840000 	addiu	a0,a0,0
     8e0:	3c040000 	lui	a0,0x0
     8e4:	0c000000 	jal	0 <EnEncount2_Init>
     8e8:	24840000 	addiu	a0,a0,0
     8ec:	3c040000 	lui	a0,0x0
     8f0:	0c000000 	jal	0 <EnEncount2_Init>
     8f4:	24840000 	addiu	a0,a0,0
     8f8:	3c040000 	lui	a0,0x0
     8fc:	0c000000 	jal	0 <EnEncount2_Init>
     900:	24840000 	addiu	a0,a0,0
     904:	8fbf003c 	lw	ra,60(sp)
     908:	8fb00038 	lw	s0,56(sp)
     90c:	27bd0098 	addiu	sp,sp,152
     910:	03e00008 	jr	ra
     914:	00000000 	nop

00000918 <EnEncount2_Update>:
     918:	27bdffe8 	addiu	sp,sp,-24
     91c:	afbf0014 	sw	ra,20(sp)
     920:	84820154 	lh	v0,340(a0)
     924:	10400002 	beqz	v0,930 <EnEncount2_Update+0x18>
     928:	244effff 	addiu	t6,v0,-1
     92c:	a48e0154 	sh	t6,340(a0)
     930:	84820156 	lh	v0,342(a0)
     934:	10400002 	beqz	v0,940 <EnEncount2_Update+0x28>
     938:	244fffff 	addiu	t7,v0,-1
     93c:	a48f0156 	sh	t7,342(a0)
     940:	8482015e 	lh	v0,350(a0)
     944:	10400002 	beqz	v0,950 <EnEncount2_Update+0x38>
     948:	2458ffff 	addiu	t8,v0,-1
     94c:	a498015e 	sh	t8,350(a0)
     950:	afa40018 	sw	a0,24(sp)
     954:	afa5001c 	sw	a1,28(sp)
     958:	8c99014c 	lw	t9,332(a0)
     95c:	0320f809 	jalr	t9
     960:	00000000 	nop
     964:	8fa40018 	lw	a0,24(sp)
     968:	0c000000 	jal	0 <EnEncount2_Init>
     96c:	8fa5001c 	lw	a1,28(sp)
     970:	8fa40018 	lw	a0,24(sp)
     974:	8fa5001c 	lw	a1,28(sp)
     978:	8488015a 	lh	t0,346(a0)
     97c:	550000d6 	bnezl	t0,cd8 <EnEncount2_Update+0x3c0>
     980:	8fbf0014 	lw	ra,20(sp)
     984:	84890178 	lh	t1,376(a0)
     988:	3c01bfc0 	lui	at,0xbfc0
     98c:	44817000 	mtc1	at,$f14
     990:	44892000 	mtc1	t1,$f4
     994:	3c01c248 	lui	at,0xc248
     998:	44818000 	mtc1	at,$f16
     99c:	468021a0 	cvt.s.w	$f6,$f4
     9a0:	3c014270 	lui	at,0x4270
     9a4:	44814000 	mtc1	at,$f8
     9a8:	3c010001 	lui	at,0x1
     9ac:	00a11021 	addu	v0,a1,at
     9b0:	3c01c1a0 	lui	at,0xc1a0
     9b4:	46083003 	div.s	$f0,$f6,$f8
     9b8:	46100082 	mul.s	$f2,$f0,$f16
     9bc:	e480017c 	swc1	$f0,380(a0)
     9c0:	4600128d 	trunc.w.s	$f10,$f2
     9c4:	e4820160 	swc1	$f2,352(a0)
     9c8:	440b5000 	mfc1	t3,$f10
     9cc:	00000000 	nop
     9d0:	000b6400 	sll	t4,t3,0x10
     9d4:	000c6c03 	sra	t5,t4,0x10
     9d8:	448d9000 	mtc1	t5,$f18
     9dc:	00000000 	nop
     9e0:	46809120 	cvt.s.w	$f4,$f18
     9e4:	460e2182 	mul.s	$f6,$f4,$f14
     9e8:	4600320d 	trunc.w.s	$f8,$f6
     9ec:	44813000 	mtc1	at,$f6
     9f0:	3c014320 	lui	at,0x4320
     9f4:	44811000 	mtc1	at,$f2
     9f8:	440f4000 	mfc1	t7,$f8
     9fc:	3c010001 	lui	at,0x1
     a00:	00250821 	addu	at,at,a1
     a04:	a44f0ab0 	sh	t7,2736(v0)
     a08:	c48a0160 	lwc1	$f10,352(a0)
     a0c:	4600548d 	trunc.w.s	$f18,$f10
     a10:	44039000 	mfc1	v1,$f18
     a14:	00000000 	nop
     a18:	00031c00 	sll	v1,v1,0x10
     a1c:	00031c03 	sra	v1,v1,0x10
     a20:	a4430ab4 	sh	v1,2740(v0)
     a24:	a4430ab2 	sh	v1,2738(v0)
     a28:	c484017c 	lwc1	$f4,380(a0)
     a2c:	46062302 	mul.s	$f12,$f4,$f6
     a30:	4600620d 	trunc.w.s	$f8,$f12
     a34:	e48c0168 	swc1	$f12,360(a0)
     a38:	44084000 	mfc1	t0,$f8
     a3c:	00000000 	nop
     a40:	00084c00 	sll	t1,t0,0x10
     a44:	00095403 	sra	t2,t1,0x10
     a48:	448a5000 	mtc1	t2,$f10
     a4c:	00000000 	nop
     a50:	468054a0 	cvt.s.w	$f18,$f10
     a54:	460e9102 	mul.s	$f4,$f18,$f14
     a58:	4600218d 	trunc.w.s	$f6,$f4
     a5c:	440c3000 	mfc1	t4,$f6
     a60:	00000000 	nop
     a64:	a44c0ab6 	sh	t4,2742(v0)
     a68:	c4880168 	lwc1	$f8,360(a0)
     a6c:	4600428d 	trunc.w.s	$f10,$f8
     a70:	44035000 	mfc1	v1,$f10
     a74:	00000000 	nop
     a78:	00031c00 	sll	v1,v1,0x10
     a7c:	00031c03 	sra	v1,v1,0x10
     a80:	a4430aba 	sh	v1,2746(v0)
     a84:	a4430ab8 	sh	v1,2744(v0)
     a88:	c492017c 	lwc1	$f18,380(a0)
     a8c:	46109002 	mul.s	$f0,$f18,$f16
     a90:	4600010d 	trunc.w.s	$f4,$f0
     a94:	e4800170 	swc1	$f0,368(a0)
     a98:	440f2000 	mfc1	t7,$f4
     a9c:	00000000 	nop
     aa0:	a42f0ac2 	sh	t7,2754(at)
     aa4:	90580af3 	lbu	t8,2803(v0)
     aa8:	3c014f80 	lui	at,0x4f80
     aac:	44983000 	mtc1	t8,$f6
     ab0:	07010004 	bgez	t8,ac4 <EnEncount2_Update+0x1ac>
     ab4:	46803220 	cvt.s.w	$f8,$f6
     ab8:	44815000 	mtc1	at,$f10
     abc:	00000000 	nop
     ac0:	460a4200 	add.s	$f8,$f8,$f10
     ac4:	46081481 	sub.s	$f18,$f2,$f8
     ac8:	c484017c 	lwc1	$f4,380(a0)
     acc:	24080001 	li	t0,1
     ad0:	3c014f00 	lui	at,0x4f00
     ad4:	46049182 	mul.s	$f6,$f18,$f4
     ad8:	4459f800 	cfc1	t9,$31
     adc:	44c8f800 	ctc1	t0,$31
     ae0:	00000000 	nop
     ae4:	460032a4 	cvt.w.s	$f10,$f6
     ae8:	4448f800 	cfc1	t0,$31
     aec:	00000000 	nop
     af0:	31080078 	andi	t0,t0,0x78
     af4:	51000013 	beqzl	t0,b44 <EnEncount2_Update+0x22c>
     af8:	44085000 	mfc1	t0,$f10
     afc:	44815000 	mtc1	at,$f10
     b00:	24080001 	li	t0,1
     b04:	460a3281 	sub.s	$f10,$f6,$f10
     b08:	44c8f800 	ctc1	t0,$31
     b0c:	00000000 	nop
     b10:	460052a4 	cvt.w.s	$f10,$f10
     b14:	4448f800 	cfc1	t0,$31
     b18:	00000000 	nop
     b1c:	31080078 	andi	t0,t0,0x78
     b20:	15000005 	bnez	t0,b38 <EnEncount2_Update+0x220>
     b24:	00000000 	nop
     b28:	44085000 	mfc1	t0,$f10
     b2c:	3c018000 	lui	at,0x8000
     b30:	10000007 	b	b50 <EnEncount2_Update+0x238>
     b34:	01014025 	or	t0,t0,at
     b38:	10000005 	b	b50 <EnEncount2_Update+0x238>
     b3c:	2408ffff 	li	t0,-1
     b40:	44085000 	mfc1	t0,$f10
     b44:	00000000 	nop
     b48:	0500fffb 	bltz	t0,b38 <EnEncount2_Update+0x220>
     b4c:	00000000 	nop
     b50:	904a0af4 	lbu	t2,2804(v0)
     b54:	44d9f800 	ctc1	t9,$31
     b58:	310900ff 	andi	t1,t0,0xff
     b5c:	448a4000 	mtc1	t2,$f8
     b60:	a4490abc 	sh	t1,2748(v0)
     b64:	05410005 	bgez	t2,b7c <EnEncount2_Update+0x264>
     b68:	468044a0 	cvt.s.w	$f18,$f8
     b6c:	3c014f80 	lui	at,0x4f80
     b70:	44812000 	mtc1	at,$f4
     b74:	00000000 	nop
     b78:	46049480 	add.s	$f18,$f18,$f4
     b7c:	46121181 	sub.s	$f6,$f2,$f18
     b80:	c48a017c 	lwc1	$f10,380(a0)
     b84:	240c0001 	li	t4,1
     b88:	3c014f00 	lui	at,0x4f00
     b8c:	460a3202 	mul.s	$f8,$f6,$f10
     b90:	444bf800 	cfc1	t3,$31
     b94:	44ccf800 	ctc1	t4,$31
     b98:	00000000 	nop
     b9c:	46004124 	cvt.w.s	$f4,$f8
     ba0:	444cf800 	cfc1	t4,$31
     ba4:	00000000 	nop
     ba8:	318c0078 	andi	t4,t4,0x78
     bac:	51800013 	beqzl	t4,bfc <EnEncount2_Update+0x2e4>
     bb0:	440c2000 	mfc1	t4,$f4
     bb4:	44812000 	mtc1	at,$f4
     bb8:	240c0001 	li	t4,1
     bbc:	46044101 	sub.s	$f4,$f8,$f4
     bc0:	44ccf800 	ctc1	t4,$31
     bc4:	00000000 	nop
     bc8:	46002124 	cvt.w.s	$f4,$f4
     bcc:	444cf800 	cfc1	t4,$31
     bd0:	00000000 	nop
     bd4:	318c0078 	andi	t4,t4,0x78
     bd8:	15800005 	bnez	t4,bf0 <EnEncount2_Update+0x2d8>
     bdc:	00000000 	nop
     be0:	440c2000 	mfc1	t4,$f4
     be4:	3c018000 	lui	at,0x8000
     be8:	10000007 	b	c08 <EnEncount2_Update+0x2f0>
     bec:	01816025 	or	t4,t4,at
     bf0:	10000005 	b	c08 <EnEncount2_Update+0x2f0>
     bf4:	240cffff 	li	t4,-1
     bf8:	440c2000 	mfc1	t4,$f4
     bfc:	00000000 	nop
     c00:	0580fffb 	bltz	t4,bf0 <EnEncount2_Update+0x2d8>
     c04:	00000000 	nop
     c08:	904e0af5 	lbu	t6,2805(v0)
     c0c:	44cbf800 	ctc1	t3,$31
     c10:	3c014316 	lui	at,0x4316
     c14:	448e3000 	mtc1	t6,$f6
     c18:	318d00ff 	andi	t5,t4,0xff
     c1c:	44819000 	mtc1	at,$f18
     c20:	a44d0abe 	sh	t5,2750(v0)
     c24:	05c10005 	bgez	t6,c3c <EnEncount2_Update+0x324>
     c28:	468032a0 	cvt.s.w	$f10,$f6
     c2c:	3c014f80 	lui	at,0x4f80
     c30:	44814000 	mtc1	at,$f8
     c34:	00000000 	nop
     c38:	46085280 	add.s	$f10,$f10,$f8
     c3c:	460a9101 	sub.s	$f4,$f18,$f10
     c40:	c486017c 	lwc1	$f6,380(a0)
     c44:	24180001 	li	t8,1
     c48:	3c014f00 	lui	at,0x4f00
     c4c:	46062202 	mul.s	$f8,$f4,$f6
     c50:	444ff800 	cfc1	t7,$31
     c54:	44d8f800 	ctc1	t8,$31
     c58:	00000000 	nop
     c5c:	460044a4 	cvt.w.s	$f18,$f8
     c60:	4458f800 	cfc1	t8,$31
     c64:	00000000 	nop
     c68:	33180078 	andi	t8,t8,0x78
     c6c:	53000013 	beqzl	t8,cbc <EnEncount2_Update+0x3a4>
     c70:	44189000 	mfc1	t8,$f18
     c74:	44819000 	mtc1	at,$f18
     c78:	24180001 	li	t8,1
     c7c:	46124481 	sub.s	$f18,$f8,$f18
     c80:	44d8f800 	ctc1	t8,$31
     c84:	00000000 	nop
     c88:	460094a4 	cvt.w.s	$f18,$f18
     c8c:	4458f800 	cfc1	t8,$31
     c90:	00000000 	nop
     c94:	33180078 	andi	t8,t8,0x78
     c98:	17000005 	bnez	t8,cb0 <EnEncount2_Update+0x398>
     c9c:	00000000 	nop
     ca0:	44189000 	mfc1	t8,$f18
     ca4:	3c018000 	lui	at,0x8000
     ca8:	10000007 	b	cc8 <EnEncount2_Update+0x3b0>
     cac:	0301c025 	or	t8,t8,at
     cb0:	10000005 	b	cc8 <EnEncount2_Update+0x3b0>
     cb4:	2418ffff 	li	t8,-1
     cb8:	44189000 	mfc1	t8,$f18
     cbc:	00000000 	nop
     cc0:	0700fffb 	bltz	t8,cb0 <EnEncount2_Update+0x398>
     cc4:	00000000 	nop
     cc8:	44cff800 	ctc1	t7,$31
     ccc:	331900ff 	andi	t9,t8,0xff
     cd0:	a4590ac0 	sh	t9,2752(v0)
     cd4:	8fbf0014 	lw	ra,20(sp)
     cd8:	27bd0018 	addiu	sp,sp,24
     cdc:	03e00008 	jr	ra
     ce0:	00000000 	nop

00000ce4 <EnEncount2_Draw>:
     ce4:	27bdffe8 	addiu	sp,sp,-24
     ce8:	afbf0014 	sw	ra,20(sp)
     cec:	0c000000 	jal	0 <EnEncount2_Init>
     cf0:	00000000 	nop
     cf4:	8fbf0014 	lw	ra,20(sp)
     cf8:	27bd0018 	addiu	sp,sp,24
     cfc:	03e00008 	jr	ra
     d00:	00000000 	nop

00000d04 <func_80A08694>:
     d04:	27bdffe0 	addiu	sp,sp,-32
     d08:	44867000 	mtc1	a2,$f14
     d0c:	afbf0014 	sw	ra,20(sp)
     d10:	24830188 	addiu	v1,a0,392
     d14:	00001025 	move	v0,zero
     d18:	906e0010 	lbu	t6,16(v1)
     d1c:	24420001 	addiu	v0,v0,1
     d20:	00021400 	sll	v0,v0,0x10
     d24:	15c0001d 	bnez	t6,d9c <func_80A08694+0x98>
     d28:	00021403 	sra	v0,v0,0x10
     d2c:	8cb80000 	lw	t8,0(a1)
     d30:	44800000 	mtc1	zero,$f0
     d34:	3c0141a0 	lui	at,0x41a0
     d38:	ac780000 	sw	t8,0(v1)
     d3c:	8caf0004 	lw	t7,4(a1)
     d40:	44816000 	mtc1	at,$f12
     d44:	ac6f0004 	sw	t7,4(v1)
     d48:	8cb80008 	lw	t8,8(a1)
     d4c:	e46e000c 	swc1	$f14,12(v1)
     d50:	e4600020 	swc1	$f0,32(v1)
     d54:	e4600024 	swc1	$f0,36(v1)
     d58:	e4600028 	swc1	$f0,40(v1)
     d5c:	ac780008 	sw	t8,8(v1)
     d60:	0c000000 	jal	0 <EnEncount2_Init>
     d64:	afa3001c 	sw	v1,28(sp)
     d68:	3c01c1a0 	lui	at,0xc1a0
     d6c:	8fa3001c 	lw	v1,28(sp)
     d70:	44812000 	mtc1	at,$f4
     d74:	3c0141a0 	lui	at,0x41a0
     d78:	44816000 	mtc1	at,$f12
     d7c:	e4600014 	swc1	$f0,20(v1)
     d80:	0c000000 	jal	0 <EnEncount2_Init>
     d84:	e4640018 	swc1	$f4,24(v1)
     d88:	8fa3001c 	lw	v1,28(sp)
     d8c:	24190001 	li	t9,1
     d90:	e460001c 	swc1	$f0,28(v1)
     d94:	10000004 	b	da8 <func_80A08694+0xa4>
     d98:	a0790010 	sb	t9,16(v1)
     d9c:	28410032 	slti	at,v0,50
     da0:	1420ffdd 	bnez	at,d18 <func_80A08694+0x14>
     da4:	2463002c 	addiu	v1,v1,44
     da8:	8fbf0014 	lw	ra,20(sp)
     dac:	27bd0020 	addiu	sp,sp,32
     db0:	03e00008 	jr	ra
     db4:	00000000 	nop

00000db8 <func_80A08748>:
     db8:	27bdffa0 	addiu	sp,sp,-96
     dbc:	f7be0040 	sdc1	$f30,64(sp)
     dc0:	3c010000 	lui	at,0x0
     dc4:	c43e0000 	lwc1	$f30,0(at)
     dc8:	f7bc0038 	sdc1	$f28,56(sp)
     dcc:	3c0141f0 	lui	at,0x41f0
     dd0:	4481e000 	mtc1	at,$f28
     dd4:	f7ba0030 	sdc1	$f26,48(sp)
     dd8:	3c010000 	lui	at,0x0
     ddc:	c43a0000 	lwc1	$f26,0(at)
     de0:	afb40058 	sw	s4,88(sp)
     de4:	afb30054 	sw	s3,84(sp)
     de8:	afb1004c 	sw	s1,76(sp)
     dec:	afb00048 	sw	s0,72(sp)
     df0:	f7b80028 	sdc1	$f24,40(sp)
     df4:	3c0143fa 	lui	at,0x43fa
     df8:	afbf005c 	sw	ra,92(sp)
     dfc:	afb20050 	sw	s2,80(sp)
     e00:	f7b60020 	sdc1	$f22,32(sp)
     e04:	f7b40018 	sdc1	$f20,24(sp)
     e08:	4481c000 	mtc1	at,$f24
     e0c:	00a09825 	move	s3,a1
     e10:	24900188 	addiu	s0,a0,392
     e14:	8cb21c44 	lw	s2,7236(a1)
     e18:	00008825 	move	s1,zero
     e1c:	24140060 	li	s4,96
     e20:	920e0010 	lbu	t6,16(s0)
     e24:	51c00046 	beqzl	t6,f40 <func_80A08748+0x188>
     e28:	26310001 	addiu	s1,s1,1
     e2c:	0c000000 	jal	0 <EnEncount2_Init>
     e30:	00000000 	nop
     e34:	46180182 	mul.s	$f6,$f0,$f24
     e38:	c6040020 	lwc1	$f4,32(s0)
     e3c:	46062200 	add.s	$f8,$f4,$f6
     e40:	0c000000 	jal	0 <EnEncount2_Init>
     e44:	e6080020 	swc1	$f8,32(s0)
     e48:	46180402 	mul.s	$f16,$f0,$f24
     e4c:	c60a0024 	lwc1	$f10,36(s0)
     e50:	46105480 	add.s	$f18,$f10,$f16
     e54:	0c000000 	jal	0 <EnEncount2_Init>
     e58:	e6120024 	swc1	$f18,36(s0)
     e5c:	46180482 	mul.s	$f18,$f0,$f24
     e60:	c6100000 	lwc1	$f16,0(s0)
     e64:	c60e0014 	lwc1	$f14,20(s0)
     e68:	c60c0028 	lwc1	$f12,40(s0)
     e6c:	c60a0004 	lwc1	$f10,4(s0)
     e70:	460e8380 	add.s	$f14,$f16,$f14
     e74:	c6100018 	lwc1	$f16,24(s0)
     e78:	c6080008 	lwc1	$f8,8(s0)
     e7c:	46126480 	add.s	$f18,$f12,$f18
     e80:	44057000 	mfc1	a1,$f14
     e84:	c60e001c 	lwc1	$f14,28(s0)
     e88:	46105500 	add.s	$f20,$f10,$f16
     e8c:	4406d000 	mfc1	a2,$f26
     e90:	4407e000 	mfc1	a3,$f28
     e94:	460e4580 	add.s	$f22,$f8,$f14
     e98:	e6120028 	swc1	$f18,40(s0)
     e9c:	0c000000 	jal	0 <EnEncount2_Init>
     ea0:	02002025 	move	a0,s0
     ea4:	4405a000 	mfc1	a1,$f20
     ea8:	4406f000 	mfc1	a2,$f30
     eac:	26040004 	addiu	a0,s0,4
     eb0:	0c000000 	jal	0 <EnEncount2_Init>
     eb4:	3c07437a 	lui	a3,0x437a
     eb8:	4405b000 	mfc1	a1,$f22
     ebc:	4406d000 	mfc1	a2,$f26
     ec0:	4407e000 	mfc1	a3,$f28
     ec4:	0c000000 	jal	0 <EnEncount2_Init>
     ec8:	26040008 	addiu	a0,s0,8
     ecc:	3c063f66 	lui	a2,0x3f66
     ed0:	34c66666 	ori	a2,a2,0x6666
     ed4:	26040018 	addiu	a0,s0,24
     ed8:	3c05c1a0 	lui	a1,0xc1a0
     edc:	0c000000 	jal	0 <EnEncount2_Init>
     ee0:	3c073f80 	lui	a3,0x3f80
     ee4:	866f00a4 	lh	t7,164(s3)
     ee8:	3c010000 	lui	at,0x0
     eec:	528f000d 	beql	s4,t7,f24 <func_80A08748+0x16c>
     ef0:	c6060004 	lwc1	$f6,4(s0)
     ef4:	3c014248 	lui	at,0x4248
     ef8:	44819000 	mtc1	at,$f18
     efc:	c6500080 	lwc1	$f16,128(s2)
     f00:	c60a0004 	lwc1	$f10,4(s0)
     f04:	46128101 	sub.s	$f4,$f16,$f18
     f08:	4604503c 	c.lt.s	$f10,$f4
     f0c:	00000000 	nop
     f10:	4502000b 	bc1fl	f40 <func_80A08748+0x188>
     f14:	26310001 	addiu	s1,s1,1
     f18:	10000008 	b	f3c <func_80A08748+0x184>
     f1c:	a2000010 	sb	zero,16(s0)
     f20:	c6060004 	lwc1	$f6,4(s0)
     f24:	c4280000 	lwc1	$f8,0(at)
     f28:	4608303c 	c.lt.s	$f6,$f8
     f2c:	00000000 	nop
     f30:	45020003 	bc1fl	f40 <func_80A08748+0x188>
     f34:	26310001 	addiu	s1,s1,1
     f38:	a2000010 	sb	zero,16(s0)
     f3c:	26310001 	addiu	s1,s1,1
     f40:	00118c00 	sll	s1,s1,0x10
     f44:	00118c03 	sra	s1,s1,0x10
     f48:	2a210032 	slti	at,s1,50
     f4c:	1420ffb4 	bnez	at,e20 <func_80A08748+0x68>
     f50:	2610002c 	addiu	s0,s0,44
     f54:	8fbf005c 	lw	ra,92(sp)
     f58:	d7b40018 	ldc1	$f20,24(sp)
     f5c:	d7b60020 	ldc1	$f22,32(sp)
     f60:	d7b80028 	ldc1	$f24,40(sp)
     f64:	d7ba0030 	ldc1	$f26,48(sp)
     f68:	d7bc0038 	ldc1	$f28,56(sp)
     f6c:	d7be0040 	ldc1	$f30,64(sp)
     f70:	8fb00048 	lw	s0,72(sp)
     f74:	8fb1004c 	lw	s1,76(sp)
     f78:	8fb20050 	lw	s2,80(sp)
     f7c:	8fb30054 	lw	s3,84(sp)
     f80:	8fb40058 	lw	s4,88(sp)
     f84:	03e00008 	jr	ra
     f88:	27bd0060 	addiu	sp,sp,96

00000f8c <func_80A0891C>:
     f8c:	27bdff70 	addiu	sp,sp,-144
     f90:	afbf0044 	sw	ra,68(sp)
     f94:	afbe0040 	sw	s8,64(sp)
     f98:	afb7003c 	sw	s7,60(sp)
     f9c:	afb60038 	sw	s6,56(sp)
     fa0:	afb50034 	sw	s5,52(sp)
     fa4:	afb40030 	sw	s4,48(sp)
     fa8:	afb3002c 	sw	s3,44(sp)
     fac:	afb20028 	sw	s2,40(sp)
     fb0:	afb10024 	sw	s1,36(sp)
     fb4:	afb00020 	sw	s0,32(sp)
     fb8:	f7b40018 	sdc1	$f20,24(sp)
     fbc:	afa50094 	sw	a1,148(sp)
     fc0:	8cb20000 	lw	s2,0(a1)
     fc4:	24910188 	addiu	s1,a0,392
     fc8:	3c060000 	lui	a2,0x0
     fcc:	24c60000 	addiu	a2,a2,0
     fd0:	27a40068 	addiu	a0,sp,104
     fd4:	24070282 	li	a3,642
     fd8:	0c000000 	jal	0 <EnEncount2_Init>
     fdc:	02402825 	move	a1,s2
     fe0:	8fa40094 	lw	a0,148(sp)
     fe4:	3c010001 	lui	at,0x1
     fe8:	342117a4 	ori	at,at,0x17a4
     fec:	24050092 	li	a1,146
     ff0:	0c000000 	jal	0 <EnEncount2_Init>
     ff4:	00812021 	addu	a0,a0,at
     ff8:	0440005e 	bltz	v0,1174 <func_80A0891C+0x1e8>
     ffc:	3c18e700 	lui	t8,0xe700
    1000:	8e4402d0 	lw	a0,720(s2)
    1004:	3c08db06 	lui	t0,0xdb06
    1008:	35080018 	ori	t0,t0,0x18
    100c:	248f0008 	addiu	t7,a0,8
    1010:	ae4f02d0 	sw	t7,720(s2)
    1014:	ac800004 	sw	zero,4(a0)
    1018:	ac980000 	sw	t8,0(a0)
    101c:	8e4302c0 	lw	v1,704(s2)
    1020:	00025100 	sll	t2,v0,0x4
    1024:	01425021 	addu	t2,t2,v0
    1028:	24790008 	addiu	t9,v1,8
    102c:	ae5902c0 	sw	t9,704(s2)
    1030:	ac680000 	sw	t0,0(v1)
    1034:	8fa90094 	lw	t1,148(sp)
    1038:	000a5080 	sll	t2,t2,0x2
    103c:	3c0c0001 	lui	t4,0x1
    1040:	012a5821 	addu	t3,t1,t2
    1044:	018b6021 	addu	t4,t4,t3
    1048:	8d8c17b4 	lw	t4,6068(t4)
    104c:	3c010000 	lui	at,0x0
    1050:	3c1e9bff 	lui	s8,0x9bff
    1054:	3c16ff9b 	lui	s6,0xff9b
    1058:	ac6c0004 	sw	t4,4(v1)
    105c:	c4340000 	lwc1	$f20,0(at)
    1060:	36d637ff 	ori	s6,s6,0x37ff
    1064:	37de37ff 	ori	s8,s8,0x37ff
    1068:	00009825 	move	s3,zero
    106c:	3c17fb00 	lui	s7,0xfb00
    1070:	3c15fa00 	lui	s5,0xfa00
    1074:	922d0010 	lbu	t5,16(s1)
    1078:	3c140600 	lui	s4,0x600
    107c:	26940de0 	addiu	s4,s4,3552
    1080:	11a00036 	beqz	t5,115c <func_80A0891C+0x1d0>
    1084:	00003825 	move	a3,zero
    1088:	c62c0000 	lwc1	$f12,0(s1)
    108c:	c62e0004 	lwc1	$f14,4(s1)
    1090:	0c000000 	jal	0 <EnEncount2_Init>
    1094:	8e260008 	lw	a2,8(s1)
    1098:	c6240020 	lwc1	$f4,32(s1)
    109c:	24050001 	li	a1,1
    10a0:	46142302 	mul.s	$f12,$f4,$f20
    10a4:	0c000000 	jal	0 <EnEncount2_Init>
    10a8:	00000000 	nop
    10ac:	c6260024 	lwc1	$f6,36(s1)
    10b0:	24050001 	li	a1,1
    10b4:	46143302 	mul.s	$f12,$f6,$f20
    10b8:	0c000000 	jal	0 <EnEncount2_Init>
    10bc:	00000000 	nop
    10c0:	c6280028 	lwc1	$f8,40(s1)
    10c4:	24050001 	li	a1,1
    10c8:	46144302 	mul.s	$f12,$f8,$f20
    10cc:	0c000000 	jal	0 <EnEncount2_Init>
    10d0:	00000000 	nop
    10d4:	c62c000c 	lwc1	$f12,12(s1)
    10d8:	24070001 	li	a3,1
    10dc:	44066000 	mfc1	a2,$f12
    10e0:	0c000000 	jal	0 <EnEncount2_Init>
    10e4:	46006386 	mov.s	$f14,$f12
    10e8:	8e4302c0 	lw	v1,704(s2)
    10ec:	3c19da38 	lui	t9,0xda38
    10f0:	37390003 	ori	t9,t9,0x3
    10f4:	246e0008 	addiu	t6,v1,8
    10f8:	ae4e02c0 	sw	t6,704(s2)
    10fc:	ac760004 	sw	s6,4(v1)
    1100:	ac750000 	sw	s5,0(v1)
    1104:	8e4302c0 	lw	v1,704(s2)
    1108:	3c050000 	lui	a1,0x0
    110c:	24a50000 	addiu	a1,a1,0
    1110:	246f0008 	addiu	t7,v1,8
    1114:	ae4f02c0 	sw	t7,704(s2)
    1118:	ac7e0004 	sw	s8,4(v1)
    111c:	ac770000 	sw	s7,0(v1)
    1120:	8e5002c0 	lw	s0,704(s2)
    1124:	2406029d 	li	a2,669
    1128:	26180008 	addiu	t8,s0,8
    112c:	ae5802c0 	sw	t8,704(s2)
    1130:	ae190000 	sw	t9,0(s0)
    1134:	8fa80094 	lw	t0,148(sp)
    1138:	0c000000 	jal	0 <EnEncount2_Init>
    113c:	8d040000 	lw	a0,0(t0)
    1140:	ae020004 	sw	v0,4(s0)
    1144:	8e4302c0 	lw	v1,704(s2)
    1148:	3c0ade00 	lui	t2,0xde00
    114c:	24690008 	addiu	t1,v1,8
    1150:	ae4902c0 	sw	t1,704(s2)
    1154:	ac740004 	sw	s4,4(v1)
    1158:	ac6a0000 	sw	t2,0(v1)
    115c:	26730001 	addiu	s3,s3,1
    1160:	00139c00 	sll	s3,s3,0x10
    1164:	00139c03 	sra	s3,s3,0x10
    1168:	2a610032 	slti	at,s3,50
    116c:	1420ffc1 	bnez	at,1074 <func_80A0891C+0xe8>
    1170:	2631002c 	addiu	s1,s1,44
    1174:	3c060000 	lui	a2,0x0
    1178:	24c60000 	addiu	a2,a2,0
    117c:	27a40068 	addiu	a0,sp,104
    1180:	02402825 	move	a1,s2
    1184:	0c000000 	jal	0 <EnEncount2_Init>
    1188:	240702a6 	li	a3,678
    118c:	8fbf0044 	lw	ra,68(sp)
    1190:	d7b40018 	ldc1	$f20,24(sp)
    1194:	8fb00020 	lw	s0,32(sp)
    1198:	8fb10024 	lw	s1,36(sp)
    119c:	8fb20028 	lw	s2,40(sp)
    11a0:	8fb3002c 	lw	s3,44(sp)
    11a4:	8fb40030 	lw	s4,48(sp)
    11a8:	8fb50034 	lw	s5,52(sp)
    11ac:	8fb60038 	lw	s6,56(sp)
    11b0:	8fb7003c 	lw	s7,60(sp)
    11b4:	8fbe0040 	lw	s8,64(sp)
    11b8:	03e00008 	jr	ra
    11bc:	27bd0090 	addiu	sp,sp,144
