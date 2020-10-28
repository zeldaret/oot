
build/src/overlays/actors/ovl_En_Kusa/z_en_kusa.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A9AFA0>:
       0:	a480019c 	sh	zero,412(a0)
       4:	03e00008 	jr	ra
       8:	ac85014c 	sw	a1,332(a0)

0000000c <func_80A9AFAC>:
       c:	27bdffc0 	addiu	sp,sp,-64
      10:	afbf001c 	sw	ra,28(sp)
      14:	afa50044 	sw	a1,68(sp)
      18:	afa60048 	sw	a2,72(sp)
      1c:	c4840024 	lwc1	$f4,36(a0)
      20:	3c0141f0 	lui	at,0x41f0
      24:	44814000 	mtc1	at,$f8
      28:	e7a4002c 	swc1	$f4,44(sp)
      2c:	c4860028 	lwc1	$f6,40(a0)
      30:	00803825 	move	a3,a0
      34:	27ae002c 	addiu	t6,sp,44
      38:	46083280 	add.s	$f10,$f6,$f8
      3c:	27a60028 	addiu	a2,sp,40
      40:	e7aa0030 	swc1	$f10,48(sp)
      44:	c490002c 	lwc1	$f16,44(a0)
      48:	24a407c0 	addiu	a0,a1,1984
      4c:	27a50038 	addiu	a1,sp,56
      50:	afa70040 	sw	a3,64(sp)
      54:	afae0010 	sw	t6,16(sp)
      58:	0c000000 	jal	0 <func_80A9AFA0>
      5c:	e7b00034 	swc1	$f16,52(sp)
      60:	3c01c6fa 	lui	at,0xc6fa
      64:	44819000 	mtc1	at,$f18
      68:	8fa70040 	lw	a3,64(sp)
      6c:	c7a40048 	lwc1	$f4,72(sp)
      70:	4600903c 	c.lt.s	$f18,$f0
      74:	3c040000 	lui	a0,0x0
      78:	45000008 	bc1f	9c <func_80A9AFAC+0x90>
      7c:	00000000 	nop
      80:	46040180 	add.s	$f6,$f0,$f4
      84:	24e40008 	addiu	a0,a3,8
      88:	24e50024 	addiu	a1,a3,36
      8c:	0c000000 	jal	0 <func_80A9AFA0>
      90:	e4e60028 	swc1	$f6,40(a3)
      94:	1000000d 	b	cc <func_80A9AFAC+0xc0>
      98:	24020001 	li	v0,1
      9c:	0c000000 	jal	0 <func_80A9AFA0>
      a0:	24840000 	addiu	a0,a0,0
      a4:	3c040000 	lui	a0,0x0
      a8:	3c050000 	lui	a1,0x0
      ac:	24a50000 	addiu	a1,a1,0
      b0:	24840000 	addiu	a0,a0,0
      b4:	0c000000 	jal	0 <func_80A9AFA0>
      b8:	24060143 	li	a2,323
      bc:	3c040000 	lui	a0,0x0
      c0:	0c000000 	jal	0 <func_80A9AFA0>
      c4:	24840000 	addiu	a0,a0,0
      c8:	00001025 	move	v0,zero
      cc:	8fbf001c 	lw	ra,28(sp)
      d0:	27bd0040 	addiu	sp,sp,64
      d4:	03e00008 	jr	ra
      d8:	00000000 	nop

000000dc <func_80A9B07C>:
      dc:	27bdffe8 	addiu	sp,sp,-24
      e0:	afbf0014 	sw	ra,20(sp)
      e4:	afa40018 	sw	a0,24(sp)
      e8:	afa5001c 	sw	a1,28(sp)
      ec:	8483001c 	lh	v1,28(a0)
      f0:	24010001 	li	at,1
      f4:	8fa4001c 	lw	a0,28(sp)
      f8:	30620003 	andi	v0,v1,0x3
      fc:	10400004 	beqz	v0,110 <func_80A9B07C+0x34>
     100:	00002825 	move	a1,zero
     104:	10410011 	beq	v0,at,14c <func_80A9B07C+0x70>
     108:	24010002 	li	at,2
     10c:	14410020 	bne	v0,at,190 <func_80A9B07C+0xb4>
     110:	00031203 	sra	v0,v1,0x8
     114:	3042000f 	andi	v0,v0,0xf
     118:	00021400 	sll	v0,v0,0x10
     11c:	00021403 	sra	v0,v0,0x10
     120:	2841000d 	slti	at,v0,13
     124:	14200002 	bnez	at,130 <func_80A9B07C+0x54>
     128:	8fa60018 	lw	a2,24(sp)
     12c:	00001025 	move	v0,zero
     130:	00403825 	move	a3,v0
     134:	00073d00 	sll	a3,a3,0x14
     138:	00073c03 	sra	a3,a3,0x10
     13c:	0c000000 	jal	0 <func_80A9AFA0>
     140:	24c60024 	addiu	a2,a2,36
     144:	10000013 	b	194 <func_80A9B07C+0xb8>
     148:	8fbf0014 	lw	ra,20(sp)
     14c:	0c000000 	jal	0 <func_80A9AFA0>
     150:	00000000 	nop
     154:	3c013f00 	lui	at,0x3f00
     158:	44812000 	mtc1	at,$f4
     15c:	8fa20018 	lw	v0,24(sp)
     160:	8fa4001c 	lw	a0,28(sp)
     164:	4604003c 	c.lt.s	$f0,$f4
     168:	24060010 	li	a2,16
     16c:	24450024 	addiu	a1,v0,36
     170:	45000005 	bc1f	188 <func_80A9B07C+0xac>
     174:	00000000 	nop
     178:	0c000000 	jal	0 <func_80A9AFA0>
     17c:	24450024 	addiu	a1,v0,36
     180:	10000004 	b	194 <func_80A9B07C+0xb8>
     184:	8fbf0014 	lw	ra,20(sp)
     188:	0c000000 	jal	0 <func_80A9AFA0>
     18c:	24060003 	li	a2,3
     190:	8fbf0014 	lw	ra,20(sp)
     194:	27bd0018 	addiu	sp,sp,24
     198:	03e00008 	jr	ra
     19c:	00000000 	nop

000001a0 <func_80A9B140>:
     1a0:	c4840060 	lwc1	$f4,96(a0)
     1a4:	c486006c 	lwc1	$f6,108(a0)
     1a8:	c4800070 	lwc1	$f0,112(a0)
     1ac:	46062200 	add.s	$f8,$f4,$f6
     1b0:	e4880060 	swc1	$f8,96(a0)
     1b4:	c48a0060 	lwc1	$f10,96(a0)
     1b8:	4600503c 	c.lt.s	$f10,$f0
     1bc:	00000000 	nop
     1c0:	45000002 	bc1f	1cc <func_80A9B140+0x2c>
     1c4:	00000000 	nop
     1c8:	e4800060 	swc1	$f0,96(a0)
     1cc:	03e00008 	jr	ra
     1d0:	00000000 	nop

000001d4 <func_80A9B174>:
     1d4:	44856000 	mtc1	a1,$f12
     1d8:	27bdffe8 	addiu	sp,sp,-24
     1dc:	afbf0014 	sw	ra,20(sp)
     1e0:	afa40018 	sw	a0,24(sp)
     1e4:	0c000000 	jal	0 <func_80A9AFA0>
     1e8:	e7ac001c 	swc1	$f12,28(sp)
     1ec:	3c010000 	lui	at,0x0
     1f0:	c4240000 	lwc1	$f4,0(at)
     1f4:	3c010000 	lui	at,0x0
     1f8:	c4280000 	lwc1	$f8,0(at)
     1fc:	46040182 	mul.s	$f6,$f0,$f4
     200:	c7ac001c 	lwc1	$f12,28(sp)
     204:	8fa40018 	lw	a0,24(sp)
     208:	c4820000 	lwc1	$f2,0(a0)
     20c:	c48e0004 	lwc1	$f14,4(a0)
     210:	46083281 	sub.s	$f10,$f6,$f8
     214:	c4900008 	lwc1	$f16,8(a0)
     218:	460c5482 	mul.s	$f18,$f10,$f12
     21c:	46126300 	add.s	$f12,$f12,$f18
     220:	460c1102 	mul.s	$f4,$f2,$f12
     224:	00000000 	nop
     228:	460c7202 	mul.s	$f8,$f14,$f12
     22c:	00000000 	nop
     230:	460c8482 	mul.s	$f18,$f16,$f12
     234:	46041181 	sub.s	$f6,$f2,$f4
     238:	46087281 	sub.s	$f10,$f14,$f8
     23c:	e4860000 	swc1	$f6,0(a0)
     240:	46128101 	sub.s	$f4,$f16,$f18
     244:	e48a0004 	swc1	$f10,4(a0)
     248:	e4840008 	swc1	$f4,8(a0)
     24c:	8fbf0014 	lw	ra,20(sp)
     250:	27bd0018 	addiu	sp,sp,24
     254:	03e00008 	jr	ra
     258:	00000000 	nop

0000025c <func_80A9B1FC>:
     25c:	3c010000 	lui	at,0x0
     260:	c4200000 	lwc1	$f0,0(at)
     264:	3c010000 	lui	at,0x0
     268:	c4240000 	lwc1	$f4,0(at)
     26c:	e4800050 	swc1	$f0,80(a0)
     270:	e4800058 	swc1	$f0,88(a0)
     274:	03e00008 	jr	ra
     278:	e4840054 	swc1	$f4,84(a0)

0000027c <func_80A9B21C>:
     27c:	27bdff30 	addiu	sp,sp,-208
     280:	f7be0070 	sdc1	$f30,112(sp)
     284:	3c010000 	lui	at,0x0
     288:	c43e0000 	lwc1	$f30,0(at)
     28c:	f7bc0068 	sdc1	$f28,104(sp)
     290:	3c014100 	lui	at,0x4100
     294:	4481e000 	mtc1	at,$f28
     298:	f7ba0060 	sdc1	$f26,96(sp)
     29c:	3c014220 	lui	at,0x4220
     2a0:	4481d000 	mtc1	at,$f26
     2a4:	f7b80058 	sdc1	$f24,88(sp)
     2a8:	3c0141a0 	lui	at,0x41a0
     2ac:	4481c000 	mtc1	at,$f24
     2b0:	f7b60050 	sdc1	$f22,80(sp)
     2b4:	3c013f00 	lui	at,0x3f00
     2b8:	4481b000 	mtc1	at,$f22
     2bc:	afbe0098 	sw	s8,152(sp)
     2c0:	afb60090 	sw	s6,144(sp)
     2c4:	afb5008c 	sw	s5,140(sp)
     2c8:	afb1007c 	sw	s1,124(sp)
     2cc:	f7b40048 	sdc1	$f20,72(sp)
     2d0:	3c014120 	lui	at,0x4120
     2d4:	afb70094 	sw	s7,148(sp)
     2d8:	afb40088 	sw	s4,136(sp)
     2dc:	afb30084 	sw	s3,132(sp)
     2e0:	afb20080 	sw	s2,128(sp)
     2e4:	afb00078 	sw	s0,120(sp)
     2e8:	3c110000 	lui	s1,0x0
     2ec:	3c150000 	lui	s5,0x0
     2f0:	3c160403 	lui	s6,0x403
     2f4:	3c1e0403 	lui	s8,0x403
     2f8:	4481a000 	mtc1	at,$f20
     2fc:	00808025 	move	s0,a0
     300:	00a09825 	move	s3,a1
     304:	afbf009c 	sw	ra,156(sp)
     308:	27de56a0 	addiu	s8,s8,22176
     30c:	26d655e0 	addiu	s6,s6,21984
     310:	26b50000 	addiu	s5,s5,0
     314:	26310000 	addiu	s1,s1,0
     318:	27b200b8 	addiu	s2,sp,184
     31c:	27b400c4 	addiu	s4,sp,196
     320:	24170007 	li	s7,7
     324:	c6240000 	lwc1	$f4,0(s1)
     328:	c6060050 	lwc1	$f6,80(s0)
     32c:	c6100024 	lwc1	$f16,36(s0)
     330:	46062202 	mul.s	$f8,$f4,$f6
     334:	c6240004 	lwc1	$f4,4(s1)
     338:	46184282 	mul.s	$f10,$f8,$f24
     33c:	460a8480 	add.s	$f18,$f16,$f10
     340:	e7b200b8 	swc1	$f18,184(sp)
     344:	c6060054 	lwc1	$f6,84(s0)
     348:	c60a0028 	lwc1	$f10,40(s0)
     34c:	46062202 	mul.s	$f8,$f4,$f6
     350:	c6260008 	lwc1	$f6,8(s1)
     354:	46184402 	mul.s	$f16,$f8,$f24
     358:	46105480 	add.s	$f18,$f10,$f16
     35c:	46149100 	add.s	$f4,$f18,$f20
     360:	e7a400bc 	swc1	$f4,188(sp)
     364:	c6080058 	lwc1	$f8,88(s0)
     368:	c612002c 	lwc1	$f18,44(s0)
     36c:	46083282 	mul.s	$f10,$f6,$f8
     370:	00000000 	nop
     374:	46185402 	mul.s	$f16,$f10,$f24
     378:	46109100 	add.s	$f4,$f18,$f16
     37c:	0c000000 	jal	0 <func_80A9AFA0>
     380:	e7a400c0 	swc1	$f4,192(sp)
     384:	46160181 	sub.s	$f6,$f0,$f22
     388:	461c3202 	mul.s	$f8,$f6,$f28
     38c:	0c000000 	jal	0 <func_80A9AFA0>
     390:	e7a800c4 	swc1	$f8,196(sp)
     394:	46140282 	mul.s	$f10,$f0,$f20
     398:	0c000000 	jal	0 <func_80A9AFA0>
     39c:	e7aa00c8 	swc1	$f10,200(sp)
     3a0:	46160481 	sub.s	$f18,$f0,$f22
     3a4:	461c9402 	mul.s	$f16,$f18,$f28
     3a8:	0c000000 	jal	0 <func_80A9AFA0>
     3ac:	e7b000cc 	swc1	$f16,204(sp)
     3b0:	461e0102 	mul.s	$f4,$f0,$f30
     3b4:	240eff9c 	li	t6,-100
     3b8:	240f0040 	li	t7,64
     3bc:	24180028 	li	t8,40
     3c0:	afb80018 	sw	t8,24(sp)
     3c4:	afaf0014 	sw	t7,20(sp)
     3c8:	afae0010 	sw	t6,16(sp)
     3cc:	4600218d 	trunc.w.s	$f6,$f4
     3d0:	240e0050 	li	t6,80
     3d4:	240fffff 	li	t7,-1
     3d8:	24180001 	li	t8,1
     3dc:	44093000 	mfc1	t1,$f6
     3e0:	24190003 	li	t9,3
     3e4:	afb9001c 	sw	t9,28(sp)
     3e8:	312a0007 	andi	t2,t1,0x7
     3ec:	000a5840 	sll	t3,t2,0x1
     3f0:	02ab6021 	addu	t4,s5,t3
     3f4:	858d0000 	lh	t5,0(t4)
     3f8:	afb6003c 	sw	s6,60(sp)
     3fc:	afb80038 	sw	t8,56(sp)
     400:	afaf0034 	sw	t7,52(sp)
     404:	afae0030 	sw	t6,48(sp)
     408:	afa0002c 	sw	zero,44(sp)
     40c:	afa00028 	sw	zero,40(sp)
     410:	02602025 	move	a0,s3
     414:	02402825 	move	a1,s2
     418:	02803025 	move	a2,s4
     41c:	02403825 	move	a3,s2
     420:	afa00020 	sw	zero,32(sp)
     424:	0c000000 	jal	0 <func_80A9AFA0>
     428:	afad0024 	sw	t5,36(sp)
     42c:	c6280000 	lwc1	$f8,0(s1)
     430:	c60a0050 	lwc1	$f10,80(s0)
     434:	c6040024 	lwc1	$f4,36(s0)
     438:	460a4482 	mul.s	$f18,$f8,$f10
     43c:	c6280004 	lwc1	$f8,4(s1)
     440:	461a9402 	mul.s	$f16,$f18,$f26
     444:	46102180 	add.s	$f6,$f4,$f16
     448:	e7a600b8 	swc1	$f6,184(sp)
     44c:	c60a0054 	lwc1	$f10,84(s0)
     450:	c6100028 	lwc1	$f16,40(s0)
     454:	460a4482 	mul.s	$f18,$f8,$f10
     458:	c62a0008 	lwc1	$f10,8(s1)
     45c:	461a9102 	mul.s	$f4,$f18,$f26
     460:	46048180 	add.s	$f6,$f16,$f4
     464:	46143200 	add.s	$f8,$f6,$f20
     468:	e7a800bc 	swc1	$f8,188(sp)
     46c:	c6120058 	lwc1	$f18,88(s0)
     470:	c606002c 	lwc1	$f6,44(s0)
     474:	46125402 	mul.s	$f16,$f10,$f18
     478:	00000000 	nop
     47c:	461a8102 	mul.s	$f4,$f16,$f26
     480:	46043200 	add.s	$f8,$f6,$f4
     484:	0c000000 	jal	0 <func_80A9AFA0>
     488:	e7a800c0 	swc1	$f8,192(sp)
     48c:	46160281 	sub.s	$f10,$f0,$f22
     490:	3c0140c0 	lui	at,0x40c0
     494:	44819000 	mtc1	at,$f18
     498:	00000000 	nop
     49c:	46125402 	mul.s	$f16,$f10,$f18
     4a0:	0c000000 	jal	0 <func_80A9AFA0>
     4a4:	e7b000c4 	swc1	$f16,196(sp)
     4a8:	46140182 	mul.s	$f6,$f0,$f20
     4ac:	0c000000 	jal	0 <func_80A9AFA0>
     4b0:	e7a600c8 	swc1	$f6,200(sp)
     4b4:	46160101 	sub.s	$f4,$f0,$f22
     4b8:	3c0140c0 	lui	at,0x40c0
     4bc:	44814000 	mtc1	at,$f8
     4c0:	00000000 	nop
     4c4:	46082282 	mul.s	$f10,$f4,$f8
     4c8:	0c000000 	jal	0 <func_80A9AFA0>
     4cc:	e7aa00cc 	swc1	$f10,204(sp)
     4d0:	461e0482 	mul.s	$f18,$f0,$f30
     4d4:	2419ff9c 	li	t9,-100
     4d8:	24080040 	li	t0,64
     4dc:	24090028 	li	t1,40
     4e0:	afa90018 	sw	t1,24(sp)
     4e4:	afa80014 	sw	t0,20(sp)
     4e8:	afb90010 	sw	t9,16(sp)
     4ec:	4600940d 	trunc.w.s	$f16,$f18
     4f0:	24190050 	li	t9,80
     4f4:	2408ffff 	li	t0,-1
     4f8:	24090001 	li	t1,1
     4fc:	440c8000 	mfc1	t4,$f16
     500:	240a0003 	li	t2,3
     504:	afaa001c 	sw	t2,28(sp)
     508:	0197001a 	div	zero,t4,s7
     50c:	00006810 	mfhi	t5
     510:	000d7040 	sll	t6,t5,0x1
     514:	02ae7821 	addu	t7,s5,t6
     518:	85f80000 	lh	t8,0(t7)
     51c:	afbe003c 	sw	s8,60(sp)
     520:	afa90038 	sw	t1,56(sp)
     524:	afa80034 	sw	t0,52(sp)
     528:	afb90030 	sw	t9,48(sp)
     52c:	afa0002c 	sw	zero,44(sp)
     530:	afa00028 	sw	zero,40(sp)
     534:	02602025 	move	a0,s3
     538:	02402825 	move	a1,s2
     53c:	02803025 	move	a2,s4
     540:	02403825 	move	a3,s2
     544:	afa00020 	sw	zero,32(sp)
     548:	16e00002 	bnez	s7,554 <func_80A9B21C+0x2d8>
     54c:	00000000 	nop
     550:	0007000d 	break	0x7
     554:	2401ffff 	li	at,-1
     558:	16e10004 	bne	s7,at,56c <func_80A9B21C+0x2f0>
     55c:	3c018000 	lui	at,0x8000
     560:	15810002 	bne	t4,at,56c <func_80A9B21C+0x2f0>
     564:	00000000 	nop
     568:	0006000d 	break	0x6
     56c:	afb80024 	sw	t8,36(sp)
     570:	0c000000 	jal	0 <func_80A9AFA0>
     574:	00000000 	nop
     578:	3c0a0000 	lui	t2,0x0
     57c:	254a0000 	addiu	t2,t2,0
     580:	2631000c 	addiu	s1,s1,12
     584:	562aff68 	bnel	s1,t2,328 <func_80A9B21C+0xac>
     588:	c6240000 	lwc1	$f4,0(s1)
     58c:	8fbf009c 	lw	ra,156(sp)
     590:	d7b40048 	ldc1	$f20,72(sp)
     594:	d7b60050 	ldc1	$f22,80(sp)
     598:	d7b80058 	ldc1	$f24,88(sp)
     59c:	d7ba0060 	ldc1	$f26,96(sp)
     5a0:	d7bc0068 	ldc1	$f28,104(sp)
     5a4:	d7be0070 	ldc1	$f30,112(sp)
     5a8:	8fb00078 	lw	s0,120(sp)
     5ac:	8fb1007c 	lw	s1,124(sp)
     5b0:	8fb20080 	lw	s2,128(sp)
     5b4:	8fb30084 	lw	s3,132(sp)
     5b8:	8fb40088 	lw	s4,136(sp)
     5bc:	8fb5008c 	lw	s5,140(sp)
     5c0:	8fb60090 	lw	s6,144(sp)
     5c4:	8fb70094 	lw	s7,148(sp)
     5c8:	8fbe0098 	lw	s8,152(sp)
     5cc:	03e00008 	jr	ra
     5d0:	27bd00d0 	addiu	sp,sp,208

000005d4 <func_80A9B574>:
     5d4:	27bdffb0 	addiu	sp,sp,-80
     5d8:	afb40048 	sw	s4,72(sp)
     5dc:	afb30044 	sw	s3,68(sp)
     5e0:	afb20040 	sw	s2,64(sp)
     5e4:	afb1003c 	sw	s1,60(sp)
     5e8:	afb00038 	sw	s0,56(sp)
     5ec:	f7b40030 	sdc1	$f20,48(sp)
     5f0:	3c010000 	lui	at,0x0
     5f4:	00808825 	move	s1,a0
     5f8:	00a09025 	move	s2,a1
     5fc:	afbf004c 	sw	ra,76(sp)
     600:	c4340000 	lwc1	$f20,0(at)
     604:	00008025 	move	s0,zero
     608:	24b31c24 	addiu	s3,a1,7204
     60c:	24140003 	li	s4,3
     610:	0c000000 	jal	0 <func_80A9AFA0>
     614:	00000000 	nop
     618:	46140202 	mul.s	$f8,$f0,$f20
     61c:	c6240028 	lwc1	$f4,40(s1)
     620:	8e270024 	lw	a3,36(s1)
     624:	24180001 	li	t8,1
     628:	e7a40010 	swc1	$f4,16(sp)
     62c:	c626002c 	lwc1	$f6,44(s1)
     630:	afb80024 	sw	t8,36(sp)
     634:	4600428d 	trunc.w.s	$f10,$f8
     638:	afa00020 	sw	zero,32(sp)
     63c:	afa00018 	sw	zero,24(sp)
     640:	02602025 	move	a0,s3
     644:	440f5000 	mfc1	t7,$f10
     648:	02402825 	move	a1,s2
     64c:	24060020 	li	a2,32
     650:	e7a60014 	swc1	$f6,20(sp)
     654:	0c000000 	jal	0 <func_80A9AFA0>
     658:	afaf001c 	sw	t7,28(sp)
     65c:	10400003 	beqz	v0,66c <func_80A9B574+0x98>
     660:	26100001 	addiu	s0,s0,1
     664:	1614ffea 	bne	s0,s4,610 <func_80A9B574+0x3c>
     668:	00000000 	nop
     66c:	8fbf004c 	lw	ra,76(sp)
     670:	d7b40030 	ldc1	$f20,48(sp)
     674:	8fb00038 	lw	s0,56(sp)
     678:	8fb1003c 	lw	s1,60(sp)
     67c:	8fb20040 	lw	s2,64(sp)
     680:	8fb30044 	lw	s3,68(sp)
     684:	8fb40048 	lw	s4,72(sp)
     688:	03e00008 	jr	ra
     68c:	27bd0050 	addiu	sp,sp,80

00000690 <func_80A9B630>:
     690:	27bdffe0 	addiu	sp,sp,-32
     694:	00803025 	move	a2,a0
     698:	afa50024 	sw	a1,36(sp)
     69c:	00a02025 	move	a0,a1
     6a0:	afbf0014 	sw	ra,20(sp)
     6a4:	24c50150 	addiu	a1,a2,336
     6a8:	afa50018 	sw	a1,24(sp)
     6ac:	0c000000 	jal	0 <func_80A9AFA0>
     6b0:	afa60020 	sw	a2,32(sp)
     6b4:	3c070000 	lui	a3,0x0
     6b8:	8fa60020 	lw	a2,32(sp)
     6bc:	24e70000 	addiu	a3,a3,0
     6c0:	8fa40024 	lw	a0,36(sp)
     6c4:	0c000000 	jal	0 <func_80A9AFA0>
     6c8:	8fa50018 	lw	a1,24(sp)
     6cc:	8fa40020 	lw	a0,32(sp)
     6d0:	0c000000 	jal	0 <func_80A9AFA0>
     6d4:	8fa50018 	lw	a1,24(sp)
     6d8:	8fbf0014 	lw	ra,20(sp)
     6dc:	27bd0020 	addiu	sp,sp,32
     6e0:	03e00008 	jr	ra
     6e4:	00000000 	nop

000006e8 <EnKusa_Init>:
     6e8:	27bdffe0 	addiu	sp,sp,-32
     6ec:	afa50024 	sw	a1,36(sp)
     6f0:	afbf001c 	sw	ra,28(sp)
     6f4:	afb00018 	sw	s0,24(sp)
     6f8:	3c050000 	lui	a1,0x0
     6fc:	00808025 	move	s0,a0
     700:	0c000000 	jal	0 <func_80A9AFA0>
     704:	24a50000 	addiu	a1,a1,0
     708:	8fa50024 	lw	a1,36(sp)
     70c:	3c01447a 	lui	at,0x447a
     710:	90ae1d6c 	lbu	t6,7532(a1)
     714:	11c00006 	beqz	t6,730 <EnKusa_Init+0x48>
     718:	00000000 	nop
     71c:	c60400f4 	lwc1	$f4,244(s0)
     720:	44813000 	mtc1	at,$f6
     724:	00000000 	nop
     728:	46062200 	add.s	$f8,$f4,$f6
     72c:	e60800f4 	swc1	$f8,244(s0)
     730:	0c000000 	jal	0 <func_80A9AFA0>
     734:	02002025 	move	a0,s0
     738:	3c060000 	lui	a2,0x0
     73c:	24c60000 	addiu	a2,a2,0
     740:	26040098 	addiu	a0,s0,152
     744:	0c000000 	jal	0 <func_80A9AFA0>
     748:	00002825 	move	a1,zero
     74c:	860f00b6 	lh	t7,182(s0)
     750:	3c014780 	lui	at,0x4780
     754:	55e0000b 	bnezl	t7,784 <EnKusa_Init+0x9c>
     758:	02002025 	move	a0,s0
     75c:	44816000 	mtc1	at,$f12
     760:	0c000000 	jal	0 <func_80A9AFA0>
     764:	00000000 	nop
     768:	4600028d 	trunc.w.s	$f10,$f0
     76c:	44025000 	mfc1	v0,$f10
     770:	00000000 	nop
     774:	a6020032 	sh	v0,50(s0)
     778:	a6020016 	sh	v0,22(s0)
     77c:	a60200b6 	sh	v0,182(s0)
     780:	02002025 	move	a0,s0
     784:	8fa50024 	lw	a1,36(sp)
     788:	0c000000 	jal	0 <func_80A9AFA0>
     78c:	24060000 	li	a2,0
     790:	14400005 	bnez	v0,7a8 <EnKusa_Init+0xc0>
     794:	8fa40024 	lw	a0,36(sp)
     798:	0c000000 	jal	0 <func_80A9AFA0>
     79c:	02002025 	move	a0,s0
     7a0:	1000001c 	b	814 <EnKusa_Init+0x12c>
     7a4:	8fbf001c 	lw	ra,28(sp)
     7a8:	8619001c 	lh	t9,28(s0)
     7ac:	3c010001 	lui	at,0x1
     7b0:	3c050000 	lui	a1,0x0
     7b4:	33280003 	andi	t0,t9,0x3
     7b8:	00084840 	sll	t1,t0,0x1
     7bc:	00a92821 	addu	a1,a1,t1
     7c0:	342117a4 	ori	at,at,0x17a4
     7c4:	00812021 	addu	a0,a0,at
     7c8:	0c000000 	jal	0 <func_80A9AFA0>
     7cc:	84a50000 	lh	a1,0(a1)
     7d0:	a202019e 	sb	v0,414(s0)
     7d4:	820a019e 	lb	t2,414(s0)
     7d8:	3c040000 	lui	a0,0x0
     7dc:	24840000 	addiu	a0,a0,0
     7e0:	05410009 	bgez	t2,808 <EnKusa_Init+0x120>
     7e4:	3c060000 	lui	a2,0x0
     7e8:	8605001c 	lh	a1,28(s0)
     7ec:	24c60000 	addiu	a2,a2,0
     7f0:	0c000000 	jal	0 <func_80A9AFA0>
     7f4:	24070231 	li	a3,561
     7f8:	0c000000 	jal	0 <func_80A9AFA0>
     7fc:	02002025 	move	a0,s0
     800:	10000004 	b	814 <EnKusa_Init+0x12c>
     804:	8fbf001c 	lw	ra,28(sp)
     808:	0c000000 	jal	0 <func_80A9AFA0>
     80c:	02002025 	move	a0,s0
     810:	8fbf001c 	lw	ra,28(sp)
     814:	8fb00018 	lw	s0,24(sp)
     818:	27bd0020 	addiu	sp,sp,32
     81c:	03e00008 	jr	ra
     820:	00000000 	nop

00000824 <EnKusa_Destroy>:
     824:	27bdffe8 	addiu	sp,sp,-24
     828:	00803825 	move	a3,a0
     82c:	afbf0014 	sw	ra,20(sp)
     830:	00a02025 	move	a0,a1
     834:	0c000000 	jal	0 <func_80A9AFA0>
     838:	24e50150 	addiu	a1,a3,336
     83c:	8fbf0014 	lw	ra,20(sp)
     840:	27bd0018 	addiu	sp,sp,24
     844:	03e00008 	jr	ra
     848:	00000000 	nop

0000084c <func_80A9B7EC>:
     84c:	27bdffe8 	addiu	sp,sp,-24
     850:	afbf0014 	sw	ra,20(sp)
     854:	3c050000 	lui	a1,0x0
     858:	0c000000 	jal	0 <func_80A9AFA0>
     85c:	24a50000 	addiu	a1,a1,0
     860:	8fbf0014 	lw	ra,20(sp)
     864:	27bd0018 	addiu	sp,sp,24
     868:	03e00008 	jr	ra
     86c:	00000000 	nop

00000870 <func_80A9B810>:
     870:	27bdffe0 	addiu	sp,sp,-32
     874:	afb00018 	sw	s0,24(sp)
     878:	3c010001 	lui	at,0x1
     87c:	00808025 	move	s0,a0
     880:	342117a4 	ori	at,at,0x17a4
     884:	afbf001c 	sw	ra,28(sp)
     888:	00a12021 	addu	a0,a1,at
     88c:	0c000000 	jal	0 <func_80A9AFA0>
     890:	8205019e 	lb	a1,414(s0)
     894:	50400015 	beqzl	v0,8ec <func_80A9B810+0x7c>
     898:	8fbf001c 	lw	ra,28(sp)
     89c:	8e0e0004 	lw	t6,4(s0)
     8a0:	31cf0800 	andi	t7,t6,0x800
     8a4:	11e00005 	beqz	t7,8bc <func_80A9B810+0x4c>
     8a8:	00000000 	nop
     8ac:	0c000000 	jal	0 <func_80A9AFA0>
     8b0:	02002025 	move	a0,s0
     8b4:	10000004 	b	8c8 <func_80A9B810+0x58>
     8b8:	8e080004 	lw	t0,4(s0)
     8bc:	0c000000 	jal	0 <func_80A9AFA0>
     8c0:	02002025 	move	a0,s0
     8c4:	8e080004 	lw	t0,4(s0)
     8c8:	8219019e 	lb	t9,414(s0)
     8cc:	3c180000 	lui	t8,0x0
     8d0:	2401ffef 	li	at,-17
     8d4:	27180000 	addiu	t8,t8,0
     8d8:	01014824 	and	t1,t0,at
     8dc:	ae180134 	sw	t8,308(s0)
     8e0:	ae090004 	sw	t1,4(s0)
     8e4:	a219001e 	sb	t9,30(s0)
     8e8:	8fbf001c 	lw	ra,28(sp)
     8ec:	8fb00018 	lw	s0,24(sp)
     8f0:	27bd0020 	addiu	sp,sp,32
     8f4:	03e00008 	jr	ra
     8f8:	00000000 	nop

000008fc <func_80A9B89C>:
     8fc:	27bdffe8 	addiu	sp,sp,-24
     900:	afbf0014 	sw	ra,20(sp)
     904:	3c050000 	lui	a1,0x0
     908:	24a50000 	addiu	a1,a1,0
     90c:	0c000000 	jal	0 <func_80A9AFA0>
     910:	afa40018 	sw	a0,24(sp)
     914:	8fa40018 	lw	a0,24(sp)
     918:	2401ffef 	li	at,-17
     91c:	8c8e0004 	lw	t6,4(a0)
     920:	01c17824 	and	t7,t6,at
     924:	ac8f0004 	sw	t7,4(a0)
     928:	8fbf0014 	lw	ra,20(sp)
     92c:	27bd0018 	addiu	sp,sp,24
     930:	03e00008 	jr	ra
     934:	00000000 	nop

00000938 <func_80A9B8D8>:
     938:	27bdffd0 	addiu	sp,sp,-48
     93c:	afbf001c 	sw	ra,28(sp)
     940:	afb10018 	sw	s1,24(sp)
     944:	afb00014 	sw	s0,20(sp)
     948:	00808025 	move	s0,a0
     94c:	0c000000 	jal	0 <func_80A9AFA0>
     950:	00a08825 	move	s1,a1
     954:	5040000b 	beqzl	v0,984 <func_80A9B8D8+0x4c>
     958:	92020161 	lbu	v0,353(s0)
     95c:	0c000000 	jal	0 <func_80A9AFA0>
     960:	02002025 	move	a0,s0
     964:	02202025 	move	a0,s1
     968:	26050024 	addiu	a1,s0,36
     96c:	24060014 	li	a2,20
     970:	0c000000 	jal	0 <func_80A9AFA0>
     974:	24070869 	li	a3,2153
     978:	1000005b 	b	ae8 <func_80A9B8D8+0x1b0>
     97c:	8fbf001c 	lw	ra,28(sp)
     980:	92020161 	lbu	v0,353(s0)
     984:	02002025 	move	a0,s0
     988:	02202825 	move	a1,s1
     98c:	304e0002 	andi	t6,v0,0x2
     990:	11c00021 	beqz	t6,a18 <func_80A9B8D8+0xe0>
     994:	304ffffd 	andi	t7,v0,0xfffd
     998:	0c000000 	jal	0 <func_80A9AFA0>
     99c:	a20f0161 	sb	t7,353(s0)
     9a0:	02002025 	move	a0,s0
     9a4:	0c000000 	jal	0 <func_80A9AFA0>
     9a8:	02202825 	move	a1,s1
     9ac:	02202025 	move	a0,s1
     9b0:	26050024 	addiu	a1,s0,36
     9b4:	24060014 	li	a2,20
     9b8:	0c000000 	jal	0 <func_80A9AFA0>
     9bc:	2407284e 	li	a3,10318
     9c0:	8602001c 	lh	v0,28(s0)
     9c4:	02002025 	move	a0,s0
     9c8:	0002c103 	sra	t8,v0,0x4
     9cc:	33190001 	andi	t9,t8,0x1
     9d0:	53200005 	beqzl	t9,9e8 <func_80A9B8D8+0xb0>
     9d4:	30480003 	andi	t0,v0,0x3
     9d8:	0c000000 	jal	0 <func_80A9AFA0>
     9dc:	02202825 	move	a1,s1
     9e0:	8602001c 	lh	v0,28(s0)
     9e4:	30480003 	andi	t0,v0,0x3
     9e8:	15000005 	bnez	t0,a00 <func_80A9B8D8+0xc8>
     9ec:	00000000 	nop
     9f0:	0c000000 	jal	0 <func_80A9AFA0>
     9f4:	02002025 	move	a0,s0
     9f8:	1000003b 	b	ae8 <func_80A9B8D8+0x1b0>
     9fc:	8fbf001c 	lw	ra,28(sp)
     a00:	0c000000 	jal	0 <func_80A9AFA0>
     a04:	02002025 	move	a0,s0
     a08:	8e090004 	lw	t1,4(s0)
     a0c:	352a0800 	ori	t2,t1,0x800
     a10:	10000034 	b	ae4 <func_80A9B8D8+0x1ac>
     a14:	ae0a0004 	sw	t2,4(s0)
     a18:	92020162 	lbu	v0,354(s0)
     a1c:	3c014140 	lui	at,0x4140
     a20:	02002025 	move	a0,s0
     a24:	304b0008 	andi	t3,v0,0x8
     a28:	15600009 	bnez	t3,a50 <func_80A9B8D8+0x118>
     a2c:	26050150 	addiu	a1,s0,336
     a30:	44812000 	mtc1	at,$f4
     a34:	c6060090 	lwc1	$f6,144(s0)
     a38:	344c0008 	ori	t4,v0,0x8
     a3c:	4606203c 	c.lt.s	$f4,$f6
     a40:	00000000 	nop
     a44:	45020003 	bc1fl	a54 <func_80A9B8D8+0x11c>
     a48:	3c014416 	lui	at,0x4416
     a4c:	a20c0162 	sb	t4,354(s0)
     a50:	3c014416 	lui	at,0x4416
     a54:	44815000 	mtc1	at,$f10
     a58:	c6080090 	lwc1	$f8,144(s0)
     a5c:	460a403c 	c.lt.s	$f8,$f10
     a60:	00000000 	nop
     a64:	45020020 	bc1fl	ae8 <func_80A9B8D8+0x1b0>
     a68:	8fbf001c 	lw	ra,28(sp)
     a6c:	0c000000 	jal	0 <func_80A9AFA0>
     a70:	afa50028 	sw	a1,40(sp)
     a74:	3c010001 	lui	at,0x1
     a78:	34211e60 	ori	at,at,0x1e60
     a7c:	02212821 	addu	a1,s1,at
     a80:	afa50024 	sw	a1,36(sp)
     a84:	02202025 	move	a0,s1
     a88:	0c000000 	jal	0 <func_80A9AFA0>
     a8c:	8fa60028 	lw	a2,40(sp)
     a90:	3c0143c8 	lui	at,0x43c8
     a94:	44819000 	mtc1	at,$f18
     a98:	c6100090 	lwc1	$f16,144(s0)
     a9c:	8fa50024 	lw	a1,36(sp)
     aa0:	02202025 	move	a0,s1
     aa4:	4612803c 	c.lt.s	$f16,$f18
     aa8:	00000000 	nop
     aac:	4502000e 	bc1fl	ae8 <func_80A9B8D8+0x1b0>
     ab0:	8fbf001c 	lw	ra,28(sp)
     ab4:	0c000000 	jal	0 <func_80A9AFA0>
     ab8:	8fa60028 	lw	a2,40(sp)
     abc:	3c0142c8 	lui	at,0x42c8
     ac0:	44813000 	mtc1	at,$f6
     ac4:	c6040090 	lwc1	$f4,144(s0)
     ac8:	02002025 	move	a0,s0
     acc:	4606203c 	c.lt.s	$f4,$f6
     ad0:	00000000 	nop
     ad4:	45020004 	bc1fl	ae8 <func_80A9B8D8+0x1b0>
     ad8:	8fbf001c 	lw	ra,28(sp)
     adc:	0c000000 	jal	0 <func_80A9AFA0>
     ae0:	02202825 	move	a1,s1
     ae4:	8fbf001c 	lw	ra,28(sp)
     ae8:	8fb00014 	lw	s0,20(sp)
     aec:	8fb10018 	lw	s1,24(sp)
     af0:	03e00008 	jr	ra
     af4:	27bd0030 	addiu	sp,sp,48

00000af8 <func_80A9BA98>:
     af8:	27bdffe8 	addiu	sp,sp,-24
     afc:	afbf0014 	sw	ra,20(sp)
     b00:	3c050000 	lui	a1,0x0
     b04:	24a50000 	addiu	a1,a1,0
     b08:	0c000000 	jal	0 <func_80A9AFA0>
     b0c:	afa40018 	sw	a0,24(sp)
     b10:	8fa40018 	lw	a0,24(sp)
     b14:	240effff 	li	t6,-1
     b18:	8c8f0004 	lw	t7,4(a0)
     b1c:	a08e0003 	sb	t6,3(a0)
     b20:	35f80010 	ori	t8,t7,0x10
     b24:	ac980004 	sw	t8,4(a0)
     b28:	8fbf0014 	lw	ra,20(sp)
     b2c:	27bd0018 	addiu	sp,sp,24
     b30:	03e00008 	jr	ra
     b34:	00000000 	nop

00000b38 <func_80A9BAD8>:
     b38:	27bdffd8 	addiu	sp,sp,-40
     b3c:	afbf0024 	sw	ra,36(sp)
     b40:	afb00020 	sw	s0,32(sp)
     b44:	00808025 	move	s0,a0
     b48:	0c000000 	jal	0 <func_80A9AFA0>
     b4c:	afa5002c 	sw	a1,44(sp)
     b50:	1040002a 	beqz	v0,bfc <func_80A9BAD8+0xc4>
     b54:	8fae002c 	lw	t6,44(sp)
     b58:	3c0f0001 	lui	t7,0x1
     b5c:	01ee7821 	addu	t7,t7,t6
     b60:	81ef1cbc 	lb	t7,7356(t7)
     b64:	02002025 	move	a0,s0
     b68:	0c000000 	jal	0 <func_80A9AFA0>
     b6c:	a20f0003 	sb	t7,3(s0)
     b70:	0c000000 	jal	0 <func_80A9AFA0>
     b74:	86040032 	lh	a0,50(s0)
     b78:	c6040068 	lwc1	$f4,104(s0)
     b7c:	86040032 	lh	a0,50(s0)
     b80:	46040182 	mul.s	$f6,$f0,$f4
     b84:	0c000000 	jal	0 <func_80A9AFA0>
     b88:	e606005c 	swc1	$f6,92(s0)
     b8c:	c6080068 	lwc1	$f8,104(s0)
     b90:	241800f0 	li	t8,240
     b94:	a21800ae 	sb	t8,174(s0)
     b98:	46080282 	mul.s	$f10,$f0,$f8
     b9c:	3c010000 	lui	at,0x0
     ba0:	02002025 	move	a0,s0
     ba4:	e60a0064 	swc1	$f10,100(s0)
     ba8:	c4300000 	lwc1	$f16,0(at)
     bac:	0c000000 	jal	0 <func_80A9AFA0>
     bb0:	e610006c 	swc1	$f16,108(s0)
     bb4:	3c053ba3 	lui	a1,0x3ba3
     bb8:	34a5d70a 	ori	a1,a1,0xd70a
     bbc:	0c000000 	jal	0 <func_80A9AFA0>
     bc0:	2604005c 	addiu	a0,s0,92
     bc4:	0c000000 	jal	0 <func_80A9AFA0>
     bc8:	02002025 	move	a0,s0
     bcc:	44809000 	mtc1	zero,$f18
     bd0:	241900c5 	li	t9,197
     bd4:	afb90014 	sw	t9,20(sp)
     bd8:	8fa4002c 	lw	a0,44(sp)
     bdc:	02002825 	move	a1,s0
     be0:	3c0640f0 	lui	a2,0x40f0
     be4:	3c07420c 	lui	a3,0x420c
     be8:	0c000000 	jal	0 <func_80A9AFA0>
     bec:	e7b20010 	swc1	$f18,16(sp)
     bf0:	3c010000 	lui	at,0x0
     bf4:	c4240000 	lwc1	$f4,0(at)
     bf8:	e604006c 	swc1	$f4,108(s0)
     bfc:	8fbf0024 	lw	ra,36(sp)
     c00:	8fb00020 	lw	s0,32(sp)
     c04:	27bd0028 	addiu	sp,sp,40
     c08:	03e00008 	jr	ra
     c0c:	00000000 	nop

00000c10 <func_80A9BBB0>:
     c10:	27bdffe8 	addiu	sp,sp,-24
     c14:	afbf0014 	sw	ra,20(sp)
     c18:	3c050000 	lui	a1,0x0
     c1c:	0c000000 	jal	0 <func_80A9AFA0>
     c20:	24a50000 	addiu	a1,a1,0
     c24:	240ef448 	li	t6,-3000
     c28:	3c010000 	lui	at,0x0
     c2c:	0c000000 	jal	0 <func_80A9AFA0>
     c30:	a42e0000 	sh	t6,0(at)
     c34:	3c013f00 	lui	at,0x3f00
     c38:	44812000 	mtc1	at,$f4
     c3c:	3c0144c8 	lui	at,0x44c8
     c40:	44814000 	mtc1	at,$f8
     c44:	46040181 	sub.s	$f6,$f0,$f4
     c48:	3c010000 	lui	at,0x0
     c4c:	8fbf0014 	lw	ra,20(sp)
     c50:	27bd0018 	addiu	sp,sp,24
     c54:	46083282 	mul.s	$f10,$f6,$f8
     c58:	4600540d 	trunc.w.s	$f16,$f10
     c5c:	44188000 	mfc1	t8,$f16
     c60:	00000000 	nop
     c64:	a4380000 	sh	t8,0(at)
     c68:	3c010000 	lui	at,0x0
     c6c:	a4200000 	sh	zero,0(at)
     c70:	3c010000 	lui	at,0x0
     c74:	03e00008 	jr	ra
     c78:	a4200000 	sh	zero,0(at)

00000c7c <func_80A9BC1C>:
     c7c:	27bdffc0 	addiu	sp,sp,-64
     c80:	afbf0024 	sw	ra,36(sp)
     c84:	afb10020 	sw	s1,32(sp)
     c88:	afb0001c 	sw	s0,28(sp)
     c8c:	94820088 	lhu	v0,136(a0)
     c90:	00808025 	move	s0,a0
     c94:	00a08825 	move	s1,a1
     c98:	304e000b 	andi	t6,v0,0xb
     c9c:	11c0001f 	beqz	t6,d1c <func_80A9BC1C+0xa0>
     ca0:	30580040 	andi	t8,v0,0x40
     ca4:	304f0020 	andi	t7,v0,0x20
     ca8:	15e00005 	bnez	t7,cc0 <func_80A9BC1C+0x44>
     cac:	00a02025 	move	a0,a1
     cb0:	26050024 	addiu	a1,s0,36
     cb4:	24060014 	li	a2,20
     cb8:	0c000000 	jal	0 <func_80A9AFA0>
     cbc:	2407284e 	li	a3,10318
     cc0:	02002025 	move	a0,s0
     cc4:	0c000000 	jal	0 <func_80A9AFA0>
     cc8:	02202825 	move	a1,s1
     ccc:	02002025 	move	a0,s0
     cd0:	0c000000 	jal	0 <func_80A9AFA0>
     cd4:	02202825 	move	a1,s1
     cd8:	8602001c 	lh	v0,28(s0)
     cdc:	24010001 	li	at,1
     ce0:	30420003 	andi	v0,v0,0x3
     ce4:	10400005 	beqz	v0,cfc <func_80A9BC1C+0x80>
     ce8:	00000000 	nop
     cec:	10410007 	beq	v0,at,d0c <func_80A9BC1C+0x90>
     cf0:	24010002 	li	at,2
     cf4:	54410081 	bnel	v0,at,efc <func_80A9BC1C+0x280>
     cf8:	8fbf0024 	lw	ra,36(sp)
     cfc:	0c000000 	jal	0 <func_80A9AFA0>
     d00:	02002025 	move	a0,s0
     d04:	1000007d 	b	efc <func_80A9BC1C+0x280>
     d08:	8fbf0024 	lw	ra,36(sp)
     d0c:	0c000000 	jal	0 <func_80A9AFA0>
     d10:	02002025 	move	a0,s0
     d14:	10000079 	b	efc <func_80A9BC1C+0x280>
     d18:	8fbf0024 	lw	ra,36(sp)
     d1c:	13000044 	beqz	t8,e30 <func_80A9BC1C+0x1b4>
     d20:	00000000 	nop
     d24:	c6040024 	lwc1	$f4,36(s0)
     d28:	24190190 	li	t9,400
     d2c:	02202025 	move	a0,s1
     d30:	e7a40030 	swc1	$f4,48(sp)
     d34:	c6080084 	lwc1	$f8,132(s0)
     d38:	c6060028 	lwc1	$f6,40(s0)
     d3c:	27a50030 	addiu	a1,sp,48
     d40:	00003025 	move	a2,zero
     d44:	46083280 	add.s	$f10,$f6,$f8
     d48:	00003825 	move	a3,zero
     d4c:	e7aa0034 	swc1	$f10,52(sp)
     d50:	c610002c 	lwc1	$f16,44(s0)
     d54:	afb90014 	sw	t9,20(sp)
     d58:	afa00010 	sw	zero,16(sp)
     d5c:	0c000000 	jal	0 <func_80A9AFA0>
     d60:	e7b00038 	swc1	$f16,56(sp)
     d64:	02202025 	move	a0,s1
     d68:	27a50030 	addiu	a1,sp,48
     d6c:	24060096 	li	a2,150
     d70:	2407028a 	li	a3,650
     d74:	0c000000 	jal	0 <func_80A9AFA0>
     d78:	afa00010 	sw	zero,16(sp)
     d7c:	240a0004 	li	t2,4
     d80:	afaa0010 	sw	t2,16(sp)
     d84:	02202025 	move	a0,s1
     d88:	27a50030 	addiu	a1,sp,48
     d8c:	24060190 	li	a2,400
     d90:	0c000000 	jal	0 <func_80A9AFA0>
     d94:	24070320 	li	a3,800
     d98:	240b0008 	li	t3,8
     d9c:	afab0010 	sw	t3,16(sp)
     da0:	02202025 	move	a0,s1
     da4:	27a50030 	addiu	a1,sp,48
     da8:	240601f4 	li	a2,500
     dac:	0c000000 	jal	0 <func_80A9AFA0>
     db0:	2407044c 	li	a3,1100
     db4:	3c01c040 	lui	at,0xc040
     db8:	44819000 	mtc1	at,$f18
     dbc:	3c020000 	lui	v0,0x0
     dc0:	3c030000 	lui	v1,0x0
     dc4:	e6120070 	swc1	$f18,112(s0)
     dc8:	3c080000 	lui	t0,0x0
     dcc:	3c090000 	lui	t1,0x0
     dd0:	25290000 	addiu	t1,t1,0
     dd4:	25080000 	addiu	t0,t0,0
     dd8:	24630000 	addiu	v1,v1,0
     ddc:	24420000 	addiu	v0,v0,0
     de0:	844c0000 	lh	t4,0(v0)
     de4:	850e0000 	lh	t6,0(t0)
     de8:	84780000 	lh	t8,0(v1)
     dec:	852a0000 	lh	t2,0(t1)
     df0:	000c6843 	sra	t5,t4,0x1
     df4:	000e7843 	sra	t7,t6,0x1
     df8:	0018c843 	sra	t9,t8,0x1
     dfc:	000a5843 	sra	t3,t2,0x1
     e00:	a44d0000 	sh	t5,0(v0)
     e04:	a50f0000 	sh	t7,0(t0)
     e08:	a4790000 	sh	t9,0(v1)
     e0c:	a52b0000 	sh	t3,0(t1)
     e10:	960c0088 	lhu	t4,136(s0)
     e14:	02202025 	move	a0,s1
     e18:	26050024 	addiu	a1,s0,36
     e1c:	318dffbf 	andi	t5,t4,0xffbf
     e20:	a60d0088 	sh	t5,136(s0)
     e24:	24060028 	li	a2,40
     e28:	0c000000 	jal	0 <func_80A9AFA0>
     e2c:	240728c5 	li	a3,10437
     e30:	0c000000 	jal	0 <func_80A9AFA0>
     e34:	02002025 	move	a0,s0
     e38:	3c040000 	lui	a0,0x0
     e3c:	3c050000 	lui	a1,0x0
     e40:	84a50000 	lh	a1,0(a1)
     e44:	24840000 	addiu	a0,a0,0
     e48:	0c000000 	jal	0 <func_80A9AFA0>
     e4c:	240601f4 	li	a2,500
     e50:	3c040000 	lui	a0,0x0
     e54:	3c050000 	lui	a1,0x0
     e58:	84a50000 	lh	a1,0(a1)
     e5c:	24840000 	addiu	a0,a0,0
     e60:	0c000000 	jal	0 <func_80A9AFA0>
     e64:	240600aa 	li	a2,170
     e68:	3c0f0000 	lui	t7,0x0
     e6c:	85ef0000 	lh	t7,0(t7)
     e70:	860e00b4 	lh	t6,180(s0)
     e74:	3c0a0000 	lui	t2,0x0
     e78:	861900b6 	lh	t9,182(s0)
     e7c:	01cfc021 	addu	t8,t6,t7
     e80:	a61800b4 	sh	t8,180(s0)
     e84:	854a0000 	lh	t2,0(t2)
     e88:	3c053d4c 	lui	a1,0x3d4c
     e8c:	34a5cccd 	ori	a1,a1,0xcccd
     e90:	032a5821 	addu	t3,t9,t2
     e94:	a60b00b6 	sh	t3,182(s0)
     e98:	0c000000 	jal	0 <func_80A9AFA0>
     e9c:	2604005c 	addiu	a0,s0,92
     ea0:	0c000000 	jal	0 <func_80A9AFA0>
     ea4:	02002025 	move	a0,s0
     ea8:	44802000 	mtc1	zero,$f4
     eac:	240c00c5 	li	t4,197
     eb0:	afac0014 	sw	t4,20(sp)
     eb4:	02202025 	move	a0,s1
     eb8:	02002825 	move	a1,s0
     ebc:	3c0640f0 	lui	a2,0x40f0
     ec0:	3c07420c 	lui	a3,0x420c
     ec4:	0c000000 	jal	0 <func_80A9AFA0>
     ec8:	e7a40010 	swc1	$f4,16(sp)
     ecc:	26060150 	addiu	a2,s0,336
     ed0:	00c02825 	move	a1,a2
     ed4:	afa60028 	sw	a2,40(sp)
     ed8:	0c000000 	jal	0 <func_80A9AFA0>
     edc:	02002025 	move	a0,s0
     ee0:	3c010001 	lui	at,0x1
     ee4:	34211e60 	ori	at,at,0x1e60
     ee8:	8fa60028 	lw	a2,40(sp)
     eec:	02212821 	addu	a1,s1,at
     ef0:	0c000000 	jal	0 <func_80A9AFA0>
     ef4:	02202025 	move	a0,s1
     ef8:	8fbf0024 	lw	ra,36(sp)
     efc:	8fb0001c 	lw	s0,28(sp)
     f00:	8fb10020 	lw	s1,32(sp)
     f04:	03e00008 	jr	ra
     f08:	27bd0040 	addiu	sp,sp,64

00000f0c <func_80A9BEAC>:
     f0c:	27bdffe8 	addiu	sp,sp,-24
     f10:	afbf0014 	sw	ra,20(sp)
     f14:	8482001c 	lh	v0,28(a0)
     f18:	24010001 	li	at,1
     f1c:	3c050000 	lui	a1,0x0
     f20:	30420003 	andi	v0,v0,0x3
     f24:	10410007 	beq	v0,at,f44 <func_80A9BEAC+0x38>
     f28:	24010002 	li	at,2
     f2c:	14410007 	bne	v0,at,f4c <func_80A9BEAC+0x40>
     f30:	3c050000 	lui	a1,0x0
     f34:	0c000000 	jal	0 <func_80A9AFA0>
     f38:	24a50000 	addiu	a1,a1,0
     f3c:	10000004 	b	f50 <func_80A9BEAC+0x44>
     f40:	8fbf0014 	lw	ra,20(sp)
     f44:	0c000000 	jal	0 <func_80A9AFA0>
     f48:	24a50000 	addiu	a1,a1,0
     f4c:	8fbf0014 	lw	ra,20(sp)
     f50:	27bd0018 	addiu	sp,sp,24
     f54:	03e00008 	jr	ra
     f58:	00000000 	nop

00000f5c <func_80A9BEFC>:
     f5c:	27bdffe8 	addiu	sp,sp,-24
     f60:	afbf0014 	sw	ra,20(sp)
     f64:	afa5001c 	sw	a1,28(sp)
     f68:	848e019c 	lh	t6,412(a0)
     f6c:	29c10078 	slti	at,t6,120
     f70:	54200004 	bnezl	at,f84 <func_80A9BEFC+0x28>
     f74:	8fbf0014 	lw	ra,20(sp)
     f78:	0c000000 	jal	0 <func_80A9AFA0>
     f7c:	00000000 	nop
     f80:	8fbf0014 	lw	ra,20(sp)
     f84:	27bd0018 	addiu	sp,sp,24
     f88:	03e00008 	jr	ra
     f8c:	00000000 	nop

00000f90 <func_80A9BF30>:
     f90:	afa40000 	sw	a0,0(sp)
     f94:	03e00008 	jr	ra
     f98:	afa50004 	sw	a1,4(sp)

00000f9c <func_80A9BF3C>:
     f9c:	27bdffe8 	addiu	sp,sp,-24
     fa0:	afbf0014 	sw	ra,20(sp)
     fa4:	3c014110 	lui	at,0x4110
     fa8:	44814000 	mtc1	at,$f8
     fac:	c486000c 	lwc1	$f6,12(a0)
     fb0:	c4840008 	lwc1	$f4,8(a0)
     fb4:	c4900010 	lwc1	$f16,16(a0)
     fb8:	46083281 	sub.s	$f10,$f6,$f8
     fbc:	e4840024 	swc1	$f4,36(a0)
     fc0:	e490002c 	swc1	$f16,44(a0)
     fc4:	e48a0028 	swc1	$f10,40(a0)
     fc8:	0c000000 	jal	0 <func_80A9AFA0>
     fcc:	afa40018 	sw	a0,24(sp)
     fd0:	8fa40018 	lw	a0,24(sp)
     fd4:	3c050000 	lui	a1,0x0
     fd8:	24a50000 	addiu	a1,a1,0
     fdc:	888f0014 	lwl	t7,20(a0)
     fe0:	988f0017 	lwr	t7,23(a0)
     fe4:	a88f00b4 	swl	t7,180(a0)
     fe8:	b88f00b7 	swr	t7,183(a0)
     fec:	948f0018 	lhu	t7,24(a0)
     ff0:	0c000000 	jal	0 <func_80A9AFA0>
     ff4:	a48f00b8 	sh	t7,184(a0)
     ff8:	8fbf0014 	lw	ra,20(sp)
     ffc:	27bd0018 	addiu	sp,sp,24
    1000:	03e00008 	jr	ra
    1004:	00000000 	nop

00001008 <func_80A9BFA8>:
    1008:	27bdffe8 	addiu	sp,sp,-24
    100c:	afbf0014 	sw	ra,20(sp)
    1010:	afa5001c 	sw	a1,28(sp)
    1014:	848e019c 	lh	t6,412(a0)
    1018:	00803825 	move	a3,a0
    101c:	24840028 	addiu	a0,a0,40
    1020:	29c10079 	slti	at,t6,121
    1024:	1420000d 	bnez	at,105c <func_80A9BFA8+0x54>
    1028:	3c063f19 	lui	a2,0x3f19
    102c:	8ce5000c 	lw	a1,12(a3)
    1030:	afa70018 	sw	a3,24(sp)
    1034:	0c000000 	jal	0 <func_80A9AFA0>
    1038:	34c6999a 	ori	a2,a2,0x999a
    103c:	10400007 	beqz	v0,105c <func_80A9BFA8+0x54>
    1040:	8fa70018 	lw	a3,24(sp)
    1044:	84ef019c 	lh	t7,412(a3)
    1048:	29e100aa 	slti	at,t7,170
    104c:	54200004 	bnezl	at,1060 <func_80A9BFA8+0x58>
    1050:	8fbf0014 	lw	ra,20(sp)
    1054:	0c000000 	jal	0 <func_80A9AFA0>
    1058:	00e02025 	move	a0,a3
    105c:	8fbf0014 	lw	ra,20(sp)
    1060:	27bd0018 	addiu	sp,sp,24
    1064:	03e00008 	jr	ra
    1068:	00000000 	nop

0000106c <func_80A9C00C>:
    106c:	27bdffe8 	addiu	sp,sp,-24
    1070:	afbf0014 	sw	ra,20(sp)
    1074:	3c050000 	lui	a1,0x0
    1078:	24a50000 	addiu	a1,a1,0
    107c:	0c000000 	jal	0 <func_80A9AFA0>
    1080:	afa40018 	sw	a0,24(sp)
    1084:	0c000000 	jal	0 <func_80A9AFA0>
    1088:	8fa40018 	lw	a0,24(sp)
    108c:	8fa40018 	lw	a0,24(sp)
    1090:	2401f7ff 	li	at,-2049
    1094:	888f0014 	lwl	t7,20(a0)
    1098:	988f0017 	lwr	t7,23(a0)
    109c:	8c980004 	lw	t8,4(a0)
    10a0:	a88f00b4 	swl	t7,180(a0)
    10a4:	b88f00b7 	swr	t7,183(a0)
    10a8:	948f0018 	lhu	t7,24(a0)
    10ac:	0301c824 	and	t9,t8,at
    10b0:	ac990004 	sw	t9,4(a0)
    10b4:	a48f00b8 	sh	t7,184(a0)
    10b8:	8fbf0014 	lw	ra,20(sp)
    10bc:	27bd0018 	addiu	sp,sp,24
    10c0:	03e00008 	jr	ra
    10c4:	00000000 	nop

000010c8 <func_80A9C068>:
    10c8:	27bdffd8 	addiu	sp,sp,-40
    10cc:	afb00018 	sw	s0,24(sp)
    10d0:	afa5002c 	sw	a1,44(sp)
    10d4:	00808025 	move	s0,a0
    10d8:	afbf001c 	sw	ra,28(sp)
    10dc:	3c053ecc 	lui	a1,0x3ecc
    10e0:	3c063c65 	lui	a2,0x3c65
    10e4:	34c66042 	ori	a2,a2,0x6042
    10e8:	34a5cccd 	ori	a1,a1,0xcccd
    10ec:	0c000000 	jal	0 <func_80A9AFA0>
    10f0:	24840054 	addiu	a0,a0,84
    10f4:	30430001 	andi	v1,v0,0x1
    10f8:	3c053ecc 	lui	a1,0x3ecc
    10fc:	3c063c34 	lui	a2,0x3c34
    1100:	34c63958 	ori	a2,a2,0x3958
    1104:	34a5cccd 	ori	a1,a1,0xcccd
    1108:	afa30024 	sw	v1,36(sp)
    110c:	0c000000 	jal	0 <func_80A9AFA0>
    1110:	26040050 	addiu	a0,s0,80
    1114:	8fa30024 	lw	v1,36(sp)
    1118:	c6040050 	lwc1	$f4,80(s0)
    111c:	02002025 	move	a0,s0
    1120:	00621824 	and	v1,v1,v0
    1124:	10600009 	beqz	v1,114c <func_80A9C068+0x84>
    1128:	e6040058 	swc1	$f4,88(s0)
    112c:	3c053ecc 	lui	a1,0x3ecc
    1130:	0c000000 	jal	0 <func_80A9AFA0>
    1134:	34a5cccd 	ori	a1,a1,0xcccd
    1138:	0c000000 	jal	0 <func_80A9AFA0>
    113c:	02002025 	move	a0,s0
    1140:	920e0162 	lbu	t6,354(s0)
    1144:	31cffff7 	andi	t7,t6,0xfff7
    1148:	a20f0162 	sb	t7,354(s0)
    114c:	8fbf001c 	lw	ra,28(sp)
    1150:	8fb00018 	lw	s0,24(sp)
    1154:	27bd0028 	addiu	sp,sp,40
    1158:	03e00008 	jr	ra
    115c:	00000000 	nop

00001160 <EnKusa_Update>:
    1160:	27bdffe8 	addiu	sp,sp,-24
    1164:	afbf0014 	sw	ra,20(sp)
    1168:	848e019c 	lh	t6,412(a0)
    116c:	25cf0001 	addiu	t7,t6,1
    1170:	a48f019c 	sh	t7,412(a0)
    1174:	afa40018 	sw	a0,24(sp)
    1178:	8c99014c 	lw	t9,332(a0)
    117c:	0320f809 	jalr	t9
    1180:	00000000 	nop
    1184:	8fa40018 	lw	a0,24(sp)
    1188:	3c01c0c8 	lui	at,0xc0c8
    118c:	8c980004 	lw	t8,4(a0)
    1190:	33080800 	andi	t0,t8,0x800
    1194:	51000005 	beqzl	t0,11ac <EnKusa_Update+0x4c>
    1198:	44803000 	mtc1	zero,$f6
    119c:	44812000 	mtc1	at,$f4
    11a0:	10000004 	b	11b4 <EnKusa_Update+0x54>
    11a4:	e48400bc 	swc1	$f4,188(a0)
    11a8:	44803000 	mtc1	zero,$f6
    11ac:	00000000 	nop
    11b0:	e48600bc 	swc1	$f6,188(a0)
    11b4:	8fbf0014 	lw	ra,20(sp)
    11b8:	27bd0018 	addiu	sp,sp,24
    11bc:	03e00008 	jr	ra
    11c0:	00000000 	nop

000011c4 <func_80A9C164>:
    11c4:	27bdffe8 	addiu	sp,sp,-24
    11c8:	afbf0014 	sw	ra,20(sp)
    11cc:	8c8e0004 	lw	t6,4(a0)
    11d0:	00803025 	move	a2,a0
    11d4:	00a03825 	move	a3,a1
    11d8:	31cf0800 	andi	t7,t6,0x800
    11dc:	11e00006 	beqz	t7,11f8 <func_80A9C164+0x34>
    11e0:	00a02025 	move	a0,a1
    11e4:	3c050600 	lui	a1,0x600
    11e8:	0c000000 	jal	0 <func_80A9AFA0>
    11ec:	24a502e0 	addiu	a1,a1,736
    11f0:	1000000a 	b	121c <func_80A9C164+0x58>
    11f4:	8fbf0014 	lw	ra,20(sp)
    11f8:	84d8001c 	lh	t8,28(a2)
    11fc:	3c050000 	lui	a1,0x0
    1200:	00e02025 	move	a0,a3
    1204:	33190003 	andi	t9,t8,0x3
    1208:	00194080 	sll	t0,t9,0x2
    120c:	00a82821 	addu	a1,a1,t0
    1210:	0c000000 	jal	0 <func_80A9AFA0>
    1214:	8ca50000 	lw	a1,0(a1)
    1218:	8fbf0014 	lw	ra,20(sp)
    121c:	27bd0018 	addiu	sp,sp,24
    1220:	03e00008 	jr	ra
    1224:	00000000 	nop
	...
