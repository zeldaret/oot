
build/src/overlays/actors/ovl_Demo_Gj/z_demo_gj.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80978930>:
       0:	8483001c 	lh	v1,28(a0)
       4:	00031ac3 	sra	v1,v1,0xb
       8:	03e00008 	jr	ra
       c:	3062001f 	andi	v0,v1,0x1f

00000010 <func_80978940>:
      10:	8483001c 	lh	v1,28(a0)
      14:	00031a03 	sra	v1,v1,0x8
      18:	03e00008 	jr	ra
      1c:	30620007 	andi	v0,v1,0x7

00000020 <func_80978950>:
      20:	8483001c 	lh	v1,28(a0)
      24:	03e00008 	jr	ra
      28:	306200ff 	andi	v0,v1,0xff

0000002c <func_8097895C>:
      2c:	27bdffe8 	addiu	sp,sp,-24
      30:	afa40018 	sw	a0,24(sp)
      34:	afbf0014 	sw	ra,20(sp)
      38:	afa5001c 	sw	a1,28(sp)
      3c:	00a02025 	move	a0,a1
      40:	afa60020 	sw	a2,32(sp)
      44:	afa70024 	sw	a3,36(sp)
      48:	0c000000 	jal	0 <func_80978930>
      4c:	00c02825 	move	a1,a2
      50:	8fa4001c 	lw	a0,28(sp)
      54:	8fa50020 	lw	a1,32(sp)
      58:	8fa60018 	lw	a2,24(sp)
      5c:	0c000000 	jal	0 <func_80978930>
      60:	8fa70024 	lw	a3,36(sp)
      64:	8fbf0014 	lw	ra,20(sp)
      68:	27bd0018 	addiu	sp,sp,24
      6c:	03e00008 	jr	ra
      70:	00000000 	nop

00000074 <func_809789A4>:
      74:	27bdffe8 	addiu	sp,sp,-24
      78:	afa40018 	sw	a0,24(sp)
      7c:	afbf0014 	sw	ra,20(sp)
      80:	00a02025 	move	a0,a1
      84:	0c000000 	jal	0 <func_80978930>
      88:	00c02825 	move	a1,a2
      8c:	10400003 	beqz	v0,9c <func_809789A4+0x28>
      90:	8fbf0014 	lw	ra,20(sp)
      94:	10000002 	b	a0 <func_809789A4+0x2c>
      98:	24020001 	li	v0,1
      9c:	00001025 	move	v0,zero
      a0:	03e00008 	jr	ra
      a4:	27bd0018 	addiu	sp,sp,24

000000a8 <func_809789D8>:
      a8:	27bdffe0 	addiu	sp,sp,-32
      ac:	afbf001c 	sw	ra,28(sp)
      b0:	afb10018 	sw	s1,24(sp)
      b4:	afb00014 	sw	s0,20(sp)
      b8:	00808025 	move	s0,a0
      bc:	0c000000 	jal	0 <func_80978930>
      c0:	00a08825 	move	s1,a1
      c4:	24010010 	li	at,16
      c8:	10410009 	beq	v0,at,f0 <func_809789D8+0x48>
      cc:	02202025 	move	a0,s1
      d0:	24010011 	li	at,17
      d4:	10410010 	beq	v0,at,118 <func_809789D8+0x70>
      d8:	02202025 	move	a0,s1
      dc:	24010016 	li	at,22
      e0:	10410017 	beq	v0,at,140 <func_809789D8+0x98>
      e4:	02202025 	move	a0,s1
      e8:	10000018 	b	14c <func_809789D8+0xa4>
      ec:	8fbf001c 	lw	ra,28(sp)
      f0:	0c000000 	jal	0 <func_80978930>
      f4:	26050184 	addiu	a1,s0,388
      f8:	02202025 	move	a0,s1
      fc:	0c000000 	jal	0 <func_80978930>
     100:	260501d0 	addiu	a1,s0,464
     104:	02202025 	move	a0,s1
     108:	0c000000 	jal	0 <func_80978930>
     10c:	2605021c 	addiu	a1,s0,540
     110:	1000000e 	b	14c <func_809789D8+0xa4>
     114:	8fbf001c 	lw	ra,28(sp)
     118:	0c000000 	jal	0 <func_80978930>
     11c:	26050184 	addiu	a1,s0,388
     120:	02202025 	move	a0,s1
     124:	0c000000 	jal	0 <func_80978930>
     128:	260501d0 	addiu	a1,s0,464
     12c:	02202025 	move	a0,s1
     130:	0c000000 	jal	0 <func_80978930>
     134:	2605021c 	addiu	a1,s0,540
     138:	10000004 	b	14c <func_809789D8+0xa4>
     13c:	8fbf001c 	lw	ra,28(sp)
     140:	0c000000 	jal	0 <func_80978930>
     144:	26050184 	addiu	a1,s0,388
     148:	8fbf001c 	lw	ra,28(sp)
     14c:	8fb00014 	lw	s0,20(sp)
     150:	8fb10018 	lw	s1,24(sp)
     154:	03e00008 	jr	ra
     158:	27bd0020 	addiu	sp,sp,32

0000015c <DemoGj_Destroy>:
     15c:	27bdffe8 	addiu	sp,sp,-24
     160:	afbf0014 	sw	ra,20(sp)
     164:	afa40018 	sw	a0,24(sp)
     168:	0c000000 	jal	0 <func_80978930>
     16c:	afa5001c 	sw	a1,28(sp)
     170:	8fa4001c 	lw	a0,28(sp)
     174:	8fae0018 	lw	t6,24(sp)
     178:	24850810 	addiu	a1,a0,2064
     17c:	0c000000 	jal	0 <func_80978930>
     180:	8dc6014c 	lw	a2,332(t6)
     184:	8fbf0014 	lw	ra,20(sp)
     188:	27bd0018 	addiu	sp,sp,24
     18c:	03e00008 	jr	ra
     190:	00000000 	nop

00000194 <func_80978AC4>:
     194:	27bdffe8 	addiu	sp,sp,-24
     198:	afa40018 	sw	a0,24(sp)
     19c:	afa5001c 	sw	a1,28(sp)
     1a0:	00a02025 	move	a0,a1
     1a4:	8fa50018 	lw	a1,24(sp)
     1a8:	afbf0014 	sw	ra,20(sp)
     1ac:	24060032 	li	a2,50
     1b0:	240728c2 	li	a3,10434
     1b4:	0c000000 	jal	0 <func_80978930>
     1b8:	24a50024 	addiu	a1,a1,36
     1bc:	8fbf0014 	lw	ra,20(sp)
     1c0:	27bd0018 	addiu	sp,sp,24
     1c4:	03e00008 	jr	ra
     1c8:	00000000 	nop

000001cc <func_80978AFC>:
     1cc:	27bdffd0 	addiu	sp,sp,-48
     1d0:	44866000 	mtc1	a2,$f12
     1d4:	afbf002c 	sw	ra,44(sp)
     1d8:	afa40030 	sw	a0,48(sp)
     1dc:	afa50034 	sw	a1,52(sp)
     1e0:	0c000000 	jal	0 <func_80978930>
     1e4:	e7ac0038 	swc1	$f12,56(sp)
     1e8:	3c010000 	lui	at,0x0
     1ec:	c4240000 	lwc1	$f4,0(at)
     1f0:	c7ac0038 	lwc1	$f12,56(sp)
     1f4:	3c0e0000 	lui	t6,0x0
     1f8:	3c0f0000 	lui	t7,0x0
     1fc:	46046182 	mul.s	$f6,$f12,$f4
     200:	25ef0000 	addiu	t7,t7,0
     204:	25ce0000 	addiu	t6,t6,0
     208:	3c060000 	lui	a2,0x0
     20c:	3c070000 	lui	a3,0x0
     210:	2408000f 	li	t0,15
     214:	2409005a 	li	t1,90
     218:	46060202 	mul.s	$f8,$f0,$f6
     21c:	afa90020 	sw	t1,32(sp)
     220:	afa8001c 	sw	t0,28(sp)
     224:	24e70000 	addiu	a3,a3,0
     228:	24c60000 	addiu	a2,a2,0
     22c:	afae0010 	sw	t6,16(sp)
     230:	afaf0014 	sw	t7,20(sp)
     234:	460c4280 	add.s	$f10,$f8,$f12
     238:	8fa40030 	lw	a0,48(sp)
     23c:	8fa50034 	lw	a1,52(sp)
     240:	4600540d 	trunc.w.s	$f16,$f10
     244:	44198000 	mfc1	t9,$f16
     248:	0c000000 	jal	0 <func_80978930>
     24c:	afb90018 	sw	t9,24(sp)
     250:	8fbf002c 	lw	ra,44(sp)
     254:	27bd0030 	addiu	sp,sp,48
     258:	03e00008 	jr	ra
     25c:	00000000 	nop

00000260 <func_80978B90>:
     260:	27bdffd0 	addiu	sp,sp,-48
     264:	afbf002c 	sw	ra,44(sp)
     268:	afb40028 	sw	s4,40(sp)
     26c:	00a0a025 	move	s4,a1
     270:	afb30024 	sw	s3,36(sp)
     274:	afb20020 	sw	s2,32(sp)
     278:	afb1001c 	sw	s1,28(sp)
     27c:	afb00018 	sw	s0,24(sp)
     280:	0c000000 	jal	0 <func_80978930>
     284:	afa40030 	sw	a0,48(sp)
     288:	00029400 	sll	s2,v0,0x10
     28c:	00129403 	sra	s2,s2,0x10
     290:	0c000000 	jal	0 <func_80978930>
     294:	8fa40030 	lw	a0,48(sp)
     298:	00409825 	move	s3,v0
     29c:	1840000c 	blez	v0,2d0 <func_80978B90+0x70>
     2a0:	00008025 	move	s0,zero
     2a4:	8fb10030 	lw	s1,48(sp)
     2a8:	26310024 	addiu	s1,s1,36
     2ac:	00123400 	sll	a2,s2,0x10
     2b0:	00063403 	sra	a2,a2,0x10
     2b4:	02802025 	move	a0,s4
     2b8:	0c000000 	jal	0 <func_80978930>
     2bc:	02202825 	move	a1,s1
     2c0:	26100001 	addiu	s0,s0,1
     2c4:	0213082a 	slt	at,s0,s3
     2c8:	5420fff9 	bnezl	at,2b0 <func_80978B90+0x50>
     2cc:	00123400 	sll	a2,s2,0x10
     2d0:	8fbf002c 	lw	ra,44(sp)
     2d4:	8fb00018 	lw	s0,24(sp)
     2d8:	8fb1001c 	lw	s1,28(sp)
     2dc:	8fb20020 	lw	s2,32(sp)
     2e0:	8fb30024 	lw	s3,36(sp)
     2e4:	8fb40028 	lw	s4,40(sp)
     2e8:	03e00008 	jr	ra
     2ec:	27bd0030 	addiu	sp,sp,48

000002f0 <func_80978C20>:
     2f0:	27bdff30 	addiu	sp,sp,-208
     2f4:	f7be0070 	sdc1	$f30,112(sp)
     2f8:	3c0140a0 	lui	at,0x40a0
     2fc:	4481f000 	mtc1	at,$f30
     300:	f7bc0068 	sdc1	$f28,104(sp)
     304:	3c0141a0 	lui	at,0x41a0
     308:	4481e000 	mtc1	at,$f28
     30c:	f7ba0060 	sdc1	$f26,96(sp)
     310:	3c014140 	lui	at,0x4140
     314:	4481d000 	mtc1	at,$f26
     318:	f7b80058 	sdc1	$f24,88(sp)
     31c:	3c010000 	lui	at,0x0
     320:	c4380000 	lwc1	$f24,0(at)
     324:	afbe0098 	sw	s8,152(sp)
     328:	f7b60050 	sdc1	$f22,80(sp)
     32c:	3c014180 	lui	at,0x4180
     330:	afb70094 	sw	s7,148(sp)
     334:	afb60090 	sw	s6,144(sp)
     338:	afb5008c 	sw	s5,140(sp)
     33c:	afb40088 	sw	s4,136(sp)
     340:	afb30084 	sw	s3,132(sp)
     344:	afb20080 	sw	s2,128(sp)
     348:	afb1007c 	sw	s1,124(sp)
     34c:	3c1e0600 	lui	s8,0x600
     350:	4481b000 	mtc1	at,$f22
     354:	00c09025 	move	s2,a2
     358:	00e0a025 	move	s4,a3
     35c:	00a0a825 	move	s5,a1
     360:	afbf009c 	sw	ra,156(sp)
     364:	afb00078 	sw	s0,120(sp)
     368:	f7b40048 	sdc1	$f20,72(sp)
     36c:	afa400d0 	sw	a0,208(sp)
     370:	00008825 	move	s1,zero
     374:	27de0ea0 	addiu	s8,s8,3744
     378:	00009825 	move	s3,zero
     37c:	27b600c4 	addiu	s6,sp,196
     380:	27b700b8 	addiu	s7,sp,184
     384:	00112400 	sll	a0,s1,0x10
     388:	0c000000 	jal	0 <func_80978930>
     38c:	00042403 	sra	a0,a0,0x10
     390:	46160102 	mul.s	$f4,$f0,$f22
     394:	0c000000 	jal	0 <func_80978930>
     398:	e7a400c4 	swc1	$f4,196(sp)
     39c:	461e0182 	mul.s	$f6,$f0,$f30
     3a0:	3c014000 	lui	at,0x4000
     3a4:	44814000 	mtc1	at,$f8
     3a8:	00112400 	sll	a0,s1,0x10
     3ac:	00042403 	sra	a0,a0,0x10
     3b0:	46083280 	add.s	$f10,$f6,$f8
     3b4:	0c000000 	jal	0 <func_80978930>
     3b8:	e7aa00c8 	swc1	$f10,200(sp)
     3bc:	46160402 	mul.s	$f16,$f0,$f22
     3c0:	c7b200c4 	lwc1	$f18,196(sp)
     3c4:	46189102 	mul.s	$f4,$f18,$f24
     3c8:	e7b000cc 	swc1	$f16,204(sp)
     3cc:	c6860000 	lwc1	$f6,0(s4)
     3d0:	4606d202 	mul.s	$f8,$f26,$f6
     3d4:	46082280 	add.s	$f10,$f4,$f8
     3d8:	0c000000 	jal	0 <func_80978930>
     3dc:	e7aa00b8 	swc1	$f10,184(sp)
     3e0:	3c014210 	lui	at,0x4210
     3e4:	44818000 	mtc1	at,$f16
     3e8:	3c0140c0 	lui	at,0x40c0
     3ec:	44813000 	mtc1	at,$f6
     3f0:	46100482 	mul.s	$f18,$f0,$f16
     3f4:	c7a800cc 	lwc1	$f8,204(sp)
     3f8:	46184282 	mul.s	$f10,$f8,$f24
     3fc:	46069100 	add.s	$f4,$f18,$f6
     400:	e7a400bc 	swc1	$f4,188(sp)
     404:	c6900008 	lwc1	$f16,8(s4)
     408:	c7a400c4 	lwc1	$f4,196(sp)
     40c:	4610d482 	mul.s	$f18,$f26,$f16
     410:	46125180 	add.s	$f6,$f10,$f18
     414:	c7b200c8 	lwc1	$f18,200(sp)
     418:	e7a600c0 	swc1	$f6,192(sp)
     41c:	c6500000 	lwc1	$f16,0(s2)
     420:	46102280 	add.s	$f10,$f4,$f16
     424:	e7aa00c4 	swc1	$f10,196(sp)
     428:	c6460004 	lwc1	$f6,4(s2)
     42c:	46069100 	add.s	$f4,$f18,$f6
     430:	e7a400c8 	swc1	$f4,200(sp)
     434:	c6500008 	lwc1	$f16,8(s2)
     438:	46104280 	add.s	$f10,$f8,$f16
     43c:	0c000000 	jal	0 <func_80978930>
     440:	e7aa00cc 	swc1	$f10,204(sp)
     444:	3c010000 	lui	at,0x0
     448:	c4320000 	lwc1	$f18,0(at)
     44c:	3c010000 	lui	at,0x0
     450:	4612003c 	c.lt.s	$f0,$f18
     454:	00000000 	nop
     458:	45000003 	bc1f	468 <func_80978C20+0x178>
     45c:	00000000 	nop
     460:	10000009 	b	488 <func_80978C20+0x198>
     464:	24100061 	li	s0,97
     468:	c4260000 	lwc1	$f6,0(at)
     46c:	24100021 	li	s0,33
     470:	4606003c 	c.lt.s	$f0,$f6
     474:	00000000 	nop
     478:	45000003 	bc1f	488 <func_80978C20+0x198>
     47c:	00000000 	nop
     480:	10000001 	b	488 <func_80978C20+0x198>
     484:	24100041 	li	s0,65
     488:	0c000000 	jal	0 <func_80978930>
     48c:	00000000 	nop
     490:	0c000000 	jal	0 <func_80978930>
     494:	46000506 	mov.s	$f20,$f0
     498:	3c0141f0 	lui	at,0x41f0
     49c:	461ca102 	mul.s	$f4,$f20,$f28
     4a0:	44815000 	mtc1	at,$f10
     4a4:	240eff38 	li	t6,-200
     4a8:	240f000a 	li	t7,10
     4ac:	460a0482 	mul.s	$f18,$f0,$f10
     4b0:	afaf0018 	sw	t7,24(sp)
     4b4:	afae0010 	sw	t6,16(sp)
     4b8:	240effff 	li	t6,-1
     4bc:	240f0186 	li	t7,390
     4c0:	461c2200 	add.s	$f8,$f4,$f28
     4c4:	2418000a 	li	t8,10
     4c8:	24090014 	li	t1,20
     4cc:	4600918d 	trunc.w.s	$f6,$f18
     4d0:	240a012c 	li	t2,300
     4d4:	afaa002c 	sw	t2,44(sp)
     4d8:	4600440d 	trunc.w.s	$f16,$f8
     4dc:	440c3000 	mfc1	t4,$f6
     4e0:	afa90028 	sw	t1,40(sp)
     4e4:	afb8001c 	sw	t8,28(sp)
     4e8:	44088000 	mfc1	t0,$f16
     4ec:	258d001e 	addiu	t5,t4,30
     4f0:	afad0030 	sw	t5,48(sp)
     4f4:	afaf0038 	sw	t7,56(sp)
     4f8:	afae0034 	sw	t6,52(sp)
     4fc:	02a02025 	move	a0,s5
     500:	02c02825 	move	a1,s6
     504:	02e03025 	move	a2,s7
     508:	02403825 	move	a3,s2
     50c:	afb00014 	sw	s0,20(sp)
     510:	afa00020 	sw	zero,32(sp)
     514:	afbe003c 	sw	s8,60(sp)
     518:	0c000000 	jal	0 <func_80978930>
     51c:	afa80024 	sw	t0,36(sp)
     520:	26312aaa 	addiu	s1,s1,10922
     524:	26730001 	addiu	s3,s3,1
     528:	24010006 	li	at,6
     52c:	00118c00 	sll	s1,s1,0x10
     530:	1661ff94 	bne	s3,at,384 <func_80978C20+0x94>
     534:	00118c03 	sra	s1,s1,0x10
     538:	8fa400d0 	lw	a0,208(sp)
     53c:	0c000000 	jal	0 <func_80978930>
     540:	02a02825 	move	a1,s5
     544:	8fbf009c 	lw	ra,156(sp)
     548:	d7b40048 	ldc1	$f20,72(sp)
     54c:	d7b60050 	ldc1	$f22,80(sp)
     550:	d7b80058 	ldc1	$f24,88(sp)
     554:	d7ba0060 	ldc1	$f26,96(sp)
     558:	d7bc0068 	ldc1	$f28,104(sp)
     55c:	d7be0070 	ldc1	$f30,112(sp)
     560:	8fb00078 	lw	s0,120(sp)
     564:	8fb1007c 	lw	s1,124(sp)
     568:	8fb20080 	lw	s2,128(sp)
     56c:	8fb30084 	lw	s3,132(sp)
     570:	8fb40088 	lw	s4,136(sp)
     574:	8fb5008c 	lw	s5,140(sp)
     578:	8fb60090 	lw	s6,144(sp)
     57c:	8fb70094 	lw	s7,148(sp)
     580:	8fbe0098 	lw	s8,152(sp)
     584:	03e00008 	jr	ra
     588:	27bd00d0 	addiu	sp,sp,208

0000058c <func_80978EBC>:
     58c:	3c0e0000 	lui	t6,0x0
     590:	8dce1360 	lw	t6,4960(t6)
     594:	24020001 	li	v0,1
     598:	29c10004 	slti	at,t6,4
     59c:	10200003 	beqz	at,5ac <func_80978EBC+0x20>
     5a0:	00000000 	nop
     5a4:	03e00008 	jr	ra
     5a8:	00001025 	move	v0,zero
     5ac:	03e00008 	jr	ra
     5b0:	00000000 	nop

000005b4 <func_80978EE4>:
     5b4:	27bdffe8 	addiu	sp,sp,-24
     5b8:	afbf0014 	sw	ra,20(sp)
     5bc:	8c8e0178 	lw	t6,376(a0)
     5c0:	00803025 	move	a2,a0
     5c4:	55c00017 	bnezl	t6,624 <func_80978EE4+0x70>
     5c8:	8fbf0014 	lw	ra,20(sp)
     5cc:	8ca21c7c 	lw	v0,7292(a1)
     5d0:	3c040000 	lui	a0,0x0
     5d4:	2403017a 	li	v1,378
     5d8:	1040000c 	beqz	v0,60c <func_80978EE4+0x58>
     5dc:	24840000 	addiu	a0,a0,0
     5e0:	844f0000 	lh	t7,0(v0)
     5e4:	546f0007 	bnel	v1,t7,604 <func_80978EE4+0x50>
     5e8:	8c420124 	lw	v0,292(v0)
     5ec:	acc20178 	sw	v0,376(a2)
     5f0:	0c000000 	jal	0 <func_80978930>
     5f4:	84c5001c 	lh	a1,28(a2)
     5f8:	10000009 	b	620 <func_80978EE4+0x6c>
     5fc:	24020001 	li	v0,1
     600:	8c420124 	lw	v0,292(v0)
     604:	5440fff7 	bnezl	v0,5e4 <func_80978EE4+0x30>
     608:	844f0000 	lh	t7,0(v0)
     60c:	3c040000 	lui	a0,0x0
     610:	24840000 	addiu	a0,a0,0
     614:	0c000000 	jal	0 <func_80978930>
     618:	84c5001c 	lh	a1,28(a2)
     61c:	00001025 	move	v0,zero
     620:	8fbf0014 	lw	ra,20(sp)
     624:	27bd0018 	addiu	sp,sp,24
     628:	03e00008 	jr	ra
     62c:	00000000 	nop

00000630 <func_80978F60>:
     630:	27bdffd8 	addiu	sp,sp,-40
     634:	afbf0014 	sw	ra,20(sp)
     638:	afa40028 	sw	a0,40(sp)
     63c:	afa5002c 	sw	a1,44(sp)
     640:	10c00012 	beqz	a2,68c <func_80978F60+0x5c>
     644:	afa60030 	sw	a2,48(sp)
     648:	3c050000 	lui	a1,0x0
     64c:	0c000000 	jal	0 <func_80978930>
     650:	24a50000 	addiu	a1,a1,0
     654:	8fa40028 	lw	a0,40(sp)
     658:	0c000000 	jal	0 <func_80978930>
     65c:	00002825 	move	a1,zero
     660:	afa00018 	sw	zero,24(sp)
     664:	8fa40030 	lw	a0,48(sp)
     668:	0c000000 	jal	0 <func_80978930>
     66c:	27a50018 	addiu	a1,sp,24
     670:	8fa4002c 	lw	a0,44(sp)
     674:	8fa60028 	lw	a2,40(sp)
     678:	8fa70018 	lw	a3,24(sp)
     67c:	0c000000 	jal	0 <func_80978930>
     680:	24850810 	addiu	a1,a0,2064
     684:	8faf0028 	lw	t7,40(sp)
     688:	ade2014c 	sw	v0,332(t7)
     68c:	8fbf0014 	lw	ra,20(sp)
     690:	27bd0028 	addiu	sp,sp,40
     694:	03e00008 	jr	ra
     698:	00000000 	nop

0000069c <func_80978FCC>:
     69c:	27bdffe8 	addiu	sp,sp,-24
     6a0:	afbf0014 	sw	ra,20(sp)
     6a4:	afa5001c 	sw	a1,28(sp)
     6a8:	afa60020 	sw	a2,32(sp)
     6ac:	afa70024 	sw	a3,36(sp)
     6b0:	0c000000 	jal	0 <func_80978930>
     6b4:	afa40018 	sw	a0,24(sp)
     6b8:	1440000a 	bnez	v0,6e4 <func_80978FCC+0x48>
     6bc:	8fa40018 	lw	a0,24(sp)
     6c0:	8fae0020 	lw	t6,32(sp)
     6c4:	ac8e0164 	sw	t6,356(a0)
     6c8:	8faf0024 	lw	t7,36(sp)
     6cc:	ac8f0168 	sw	t7,360(a0)
     6d0:	8fa60028 	lw	a2,40(sp)
     6d4:	0c000000 	jal	0 <func_80978930>
     6d8:	8fa5001c 	lw	a1,28(sp)
     6dc:	10000004 	b	6f0 <func_80978FCC+0x54>
     6e0:	24020001 	li	v0,1
     6e4:	0c000000 	jal	0 <func_80978930>
     6e8:	00000000 	nop
     6ec:	00001025 	move	v0,zero
     6f0:	8fbf0014 	lw	ra,20(sp)
     6f4:	27bd0018 	addiu	sp,sp,24
     6f8:	03e00008 	jr	ra
     6fc:	00000000 	nop

00000700 <func_80979030>:
     700:	27bdffb8 	addiu	sp,sp,-72
     704:	3c0e0000 	lui	t6,0x0
     708:	8dce0000 	lw	t6,0(t6)
     70c:	afbf001c 	sw	ra,28(sp)
     710:	afb00018 	sw	s0,24(sp)
     714:	afa40048 	sw	a0,72(sp)
     718:	afa5004c 	sw	a1,76(sp)
     71c:	afa60050 	sw	a2,80(sp)
     720:	85cf1454 	lh	t7,5204(t6)
     724:	3c060000 	lui	a2,0x0
     728:	24c60000 	addiu	a2,a2,0
     72c:	15e0002a 	bnez	t7,7d8 <func_80979030+0xd8>
     730:	27a40030 	addiu	a0,sp,48
     734:	8cb00000 	lw	s0,0(a1)
     738:	2407048b 	li	a3,1163
     73c:	0c000000 	jal	0 <func_80978930>
     740:	02002825 	move	a1,s0
     744:	0c000000 	jal	0 <func_80978930>
     748:	02002025 	move	a0,s0
     74c:	8e0202c0 	lw	v0,704(s0)
     750:	3c08da38 	lui	t0,0xda38
     754:	35080002 	ori	t0,t0,0x2
     758:	24590008 	addiu	t9,v0,8
     75c:	ae1902c0 	sw	t9,704(s0)
     760:	3c050000 	lui	a1,0x0
     764:	ac480000 	sw	t0,0(v0)
     768:	24a50000 	addiu	a1,a1,0
     76c:	02002025 	move	a0,s0
     770:	2406048d 	li	a2,1165
     774:	0c000000 	jal	0 <func_80978930>
     778:	afa2002c 	sw	v0,44(sp)
     77c:	8fa3002c 	lw	v1,44(sp)
     780:	3c0ade00 	lui	t2,0xde00
     784:	3c0dd838 	lui	t5,0xd838
     788:	ac620004 	sw	v0,4(v1)
     78c:	8e0202c0 	lw	v0,704(s0)
     790:	35ad0002 	ori	t5,t5,0x2
     794:	240e0040 	li	t6,64
     798:	24490008 	addiu	t1,v0,8
     79c:	ae0902c0 	sw	t1,704(s0)
     7a0:	ac4a0000 	sw	t2,0(v0)
     7a4:	8fab0050 	lw	t3,80(sp)
     7a8:	3c060000 	lui	a2,0x0
     7ac:	24c60000 	addiu	a2,a2,0
     7b0:	ac4b0004 	sw	t3,4(v0)
     7b4:	8e0202c0 	lw	v0,704(s0)
     7b8:	27a40030 	addiu	a0,sp,48
     7bc:	02002825 	move	a1,s0
     7c0:	244c0008 	addiu	t4,v0,8
     7c4:	ae0c02c0 	sw	t4,704(s0)
     7c8:	24070491 	li	a3,1169
     7cc:	ac4e0004 	sw	t6,4(v0)
     7d0:	0c000000 	jal	0 <func_80978930>
     7d4:	ac4d0000 	sw	t5,0(v0)
     7d8:	8fbf001c 	lw	ra,28(sp)
     7dc:	8fb00018 	lw	s0,24(sp)
     7e0:	27bd0048 	addiu	sp,sp,72
     7e4:	03e00008 	jr	ra
     7e8:	00000000 	nop

000007ec <func_8097911C>:
     7ec:	27bdffa0 	addiu	sp,sp,-96
     7f0:	afbf001c 	sw	ra,28(sp)
     7f4:	afb00018 	sw	s0,24(sp)
     7f8:	afa50064 	sw	a1,100(sp)
     7fc:	afa60068 	sw	a2,104(sp)
     800:	848e016c 	lh	t6,364(a0)
     804:	a7ae0056 	sh	t6,86(sp)
     808:	848f016e 	lh	t7,366(a0)
     80c:	a7af0054 	sh	t7,84(sp)
     810:	84980170 	lh	t8,368(a0)
     814:	a7b80052 	sh	t8,82(sp)
     818:	8cb00000 	lw	s0,0(a1)
     81c:	24050040 	li	a1,64
     820:	0c000000 	jal	0 <func_80978930>
     824:	02002025 	move	a0,s0
     828:	3c060000 	lui	a2,0x0
     82c:	afa20048 	sw	v0,72(sp)
     830:	24c60000 	addiu	a2,a2,0
     834:	27a40034 	addiu	a0,sp,52
     838:	02002825 	move	a1,s0
     83c:	0c000000 	jal	0 <func_80978930>
     840:	240704a3 	li	a3,1187
     844:	0c000000 	jal	0 <func_80978930>
     848:	00000000 	nop
     84c:	87a40056 	lh	a0,86(sp)
     850:	87a50054 	lh	a1,84(sp)
     854:	87a60052 	lh	a2,82(sp)
     858:	0c000000 	jal	0 <func_80978930>
     85c:	24070001 	li	a3,1
     860:	3c050000 	lui	a1,0x0
     864:	24a50000 	addiu	a1,a1,0
     868:	8fa40048 	lw	a0,72(sp)
     86c:	0c000000 	jal	0 <func_80978930>
     870:	240604a9 	li	a2,1193
     874:	0c000000 	jal	0 <func_80978930>
     878:	00000000 	nop
     87c:	0c000000 	jal	0 <func_80978930>
     880:	02002025 	move	a0,s0
     884:	8e0202c0 	lw	v0,704(s0)
     888:	3c09da38 	lui	t1,0xda38
     88c:	35290002 	ori	t1,t1,0x2
     890:	24480008 	addiu	t0,v0,8
     894:	ae0802c0 	sw	t0,704(s0)
     898:	ac490000 	sw	t1,0(v0)
     89c:	8faa0048 	lw	t2,72(sp)
     8a0:	3c0cde00 	lui	t4,0xde00
     8a4:	3c0fd838 	lui	t7,0xd838
     8a8:	ac4a0004 	sw	t2,4(v0)
     8ac:	8e0202c0 	lw	v0,704(s0)
     8b0:	35ef0002 	ori	t7,t7,0x2
     8b4:	24180040 	li	t8,64
     8b8:	244b0008 	addiu	t3,v0,8
     8bc:	ae0b02c0 	sw	t3,704(s0)
     8c0:	ac4c0000 	sw	t4,0(v0)
     8c4:	8fad0068 	lw	t5,104(sp)
     8c8:	3c060000 	lui	a2,0x0
     8cc:	24c60000 	addiu	a2,a2,0
     8d0:	ac4d0004 	sw	t5,4(v0)
     8d4:	8e0202c0 	lw	v0,704(s0)
     8d8:	27a40034 	addiu	a0,sp,52
     8dc:	02002825 	move	a1,s0
     8e0:	244e0008 	addiu	t6,v0,8
     8e4:	ae0e02c0 	sw	t6,704(s0)
     8e8:	240704b1 	li	a3,1201
     8ec:	ac580004 	sw	t8,4(v0)
     8f0:	0c000000 	jal	0 <func_80978930>
     8f4:	ac4f0000 	sw	t7,0(v0)
     8f8:	8fbf001c 	lw	ra,28(sp)
     8fc:	8fb00018 	lw	s0,24(sp)
     900:	27bd0060 	addiu	sp,sp,96
     904:	03e00008 	jr	ra
     908:	00000000 	nop

0000090c <func_8097923C>:
     90c:	27bdffd0 	addiu	sp,sp,-48
     910:	afbf0024 	sw	ra,36(sp)
     914:	f7b60018 	sdc1	$f22,24(sp)
     918:	f7b40010 	sdc1	$f20,16(sp)
     91c:	afa50034 	sw	a1,52(sp)
     920:	c4840028 	lwc1	$f4,40(a0)
     924:	afa40030 	sw	a0,48(sp)
     928:	0c000000 	jal	0 <func_80978930>
     92c:	e7a4002c 	swc1	$f4,44(sp)
     930:	244efff8 	addiu	t6,v0,-8
     934:	2dc10007 	sltiu	at,t6,7
     938:	10200114 	beqz	at,d8c <L80979618+0xa4>
     93c:	8fa60030 	lw	a2,48(sp)
     940:	000e7080 	sll	t6,t6,0x2
     944:	3c010000 	lui	at,0x0
     948:	002e0821 	addu	at,at,t6
     94c:	8c2e0000 	lw	t6,0(at)
     950:	01c00008 	jr	t6
     954:	00000000 	nop

00000958 <L80979288>:
     958:	3c020000 	lui	v0,0x0
     95c:	8c420000 	lw	v0,0(v0)
     960:	3c010000 	lui	at,0x0
     964:	c4200000 	lwc1	$f0,0(at)
     968:	844f1482 	lh	t7,5250(v0)
     96c:	84581484 	lh	t8,5252(v0)
     970:	84591486 	lh	t9,5254(v0)
     974:	448f3000 	mtc1	t7,$f6
     978:	44984000 	mtc1	t8,$f8
     97c:	3c013f80 	lui	at,0x3f80
     980:	46803320 	cvt.s.w	$f12,$f6
     984:	44993000 	mtc1	t9,$f6
     988:	44811000 	mtc1	at,$f2
     98c:	84481488 	lh	t0,5256(v0)
     990:	8449148a 	lh	t1,5258(v0)
     994:	468042a0 	cvt.s.w	$f10,$f8
     998:	844a148c 	lh	t2,5260(v0)
     99c:	3c01bf80 	lui	at,0xbf80
     9a0:	46803220 	cvt.s.w	$f8,$f6
     9a4:	46005102 	mul.s	$f4,$f10,$f0
     9a8:	46022380 	add.s	$f14,$f4,$f2
     9ac:	46004282 	mul.s	$f10,$f8,$f0
     9b0:	44882000 	mtc1	t0,$f4
     9b4:	00000000 	nop
     9b8:	468021a0 	cvt.s.w	$f6,$f4
     9bc:	46025400 	add.s	$f16,$f10,$f2
     9c0:	44895000 	mtc1	t1,$f10
     9c4:	46003202 	mul.s	$f8,$f6,$f0
     9c8:	46805120 	cvt.s.w	$f4,$f10
     9cc:	448a5000 	mtc1	t2,$f10
     9d0:	46024480 	add.s	$f18,$f8,$f2
     9d4:	46002182 	mul.s	$f6,$f4,$f0
     9d8:	44814000 	mtc1	at,$f8
     9dc:	46805120 	cvt.s.w	$f4,$f10
     9e0:	46083500 	add.s	$f20,$f6,$f8
     9e4:	46002182 	mul.s	$f6,$f4,$f0
     9e8:	100000ee 	b	da4 <L80979618+0xbc>
     9ec:	46023580 	add.s	$f22,$f6,$f2

000009f0 <L80979320>:
     9f0:	3c020000 	lui	v0,0x0
     9f4:	8c420000 	lw	v0,0(v0)
     9f8:	3c010000 	lui	at,0x0
     9fc:	c4200000 	lwc1	$f0,0(at)
     a00:	844b149c 	lh	t3,5276(v0)
     a04:	844c149e 	lh	t4,5278(v0)
     a08:	844d14a0 	lh	t5,5280(v0)
     a0c:	448b4000 	mtc1	t3,$f8
     a10:	448c5000 	mtc1	t4,$f10
     a14:	3c013f80 	lui	at,0x3f80
     a18:	46804320 	cvt.s.w	$f12,$f8
     a1c:	448d4000 	mtc1	t5,$f8
     a20:	44811000 	mtc1	at,$f2
     a24:	844e14a2 	lh	t6,5282(v0)
     a28:	844f14a4 	lh	t7,5284(v0)
     a2c:	46805120 	cvt.s.w	$f4,$f10
     a30:	845814a6 	lh	t8,5286(v0)
     a34:	3c01bf80 	lui	at,0xbf80
     a38:	468042a0 	cvt.s.w	$f10,$f8
     a3c:	46002182 	mul.s	$f6,$f4,$f0
     a40:	46023380 	add.s	$f14,$f6,$f2
     a44:	46005102 	mul.s	$f4,$f10,$f0
     a48:	448e3000 	mtc1	t6,$f6
     a4c:	00000000 	nop
     a50:	46803220 	cvt.s.w	$f8,$f6
     a54:	46022400 	add.s	$f16,$f4,$f2
     a58:	448f2000 	mtc1	t7,$f4
     a5c:	46004282 	mul.s	$f10,$f8,$f0
     a60:	468021a0 	cvt.s.w	$f6,$f4
     a64:	44982000 	mtc1	t8,$f4
     a68:	46025480 	add.s	$f18,$f10,$f2
     a6c:	46003202 	mul.s	$f8,$f6,$f0
     a70:	44815000 	mtc1	at,$f10
     a74:	468021a0 	cvt.s.w	$f6,$f4
     a78:	460a4500 	add.s	$f20,$f8,$f10
     a7c:	46003202 	mul.s	$f8,$f6,$f0
     a80:	100000c8 	b	da4 <L80979618+0xbc>
     a84:	46024580 	add.s	$f22,$f8,$f2

00000a88 <L809793B8>:
     a88:	3c020000 	lui	v0,0x0
     a8c:	8c420000 	lw	v0,0(v0)
     a90:	3c010000 	lui	at,0x0
     a94:	c4200000 	lwc1	$f0,0(at)
     a98:	845914b6 	lh	t9,5302(v0)
     a9c:	844814b8 	lh	t0,5304(v0)
     aa0:	844914ba 	lh	t1,5306(v0)
     aa4:	44995000 	mtc1	t9,$f10
     aa8:	44882000 	mtc1	t0,$f4
     aac:	3c013f80 	lui	at,0x3f80
     ab0:	46805320 	cvt.s.w	$f12,$f10
     ab4:	44895000 	mtc1	t1,$f10
     ab8:	44811000 	mtc1	at,$f2
     abc:	844a14bc 	lh	t2,5308(v0)
     ac0:	844b14be 	lh	t3,5310(v0)
     ac4:	468021a0 	cvt.s.w	$f6,$f4
     ac8:	844c14c0 	lh	t4,5312(v0)
     acc:	3c01bf80 	lui	at,0xbf80
     ad0:	46805120 	cvt.s.w	$f4,$f10
     ad4:	46003202 	mul.s	$f8,$f6,$f0
     ad8:	46024380 	add.s	$f14,$f8,$f2
     adc:	46002182 	mul.s	$f6,$f4,$f0
     ae0:	448a4000 	mtc1	t2,$f8
     ae4:	00000000 	nop
     ae8:	468042a0 	cvt.s.w	$f10,$f8
     aec:	46023400 	add.s	$f16,$f6,$f2
     af0:	448b3000 	mtc1	t3,$f6
     af4:	46005102 	mul.s	$f4,$f10,$f0
     af8:	46803220 	cvt.s.w	$f8,$f6
     afc:	448c3000 	mtc1	t4,$f6
     b00:	46022480 	add.s	$f18,$f4,$f2
     b04:	46004282 	mul.s	$f10,$f8,$f0
     b08:	44812000 	mtc1	at,$f4
     b0c:	46803220 	cvt.s.w	$f8,$f6
     b10:	46045500 	add.s	$f20,$f10,$f4
     b14:	46004282 	mul.s	$f10,$f8,$f0
     b18:	100000a2 	b	da4 <L80979618+0xbc>
     b1c:	46025580 	add.s	$f22,$f10,$f2

00000b20 <L80979450>:
     b20:	3c020000 	lui	v0,0x0
     b24:	8c420000 	lw	v0,0(v0)
     b28:	3c010000 	lui	at,0x0
     b2c:	c4200000 	lwc1	$f0,0(at)
     b30:	844d14d0 	lh	t5,5328(v0)
     b34:	844e14d2 	lh	t6,5330(v0)
     b38:	844f14d4 	lh	t7,5332(v0)
     b3c:	448d2000 	mtc1	t5,$f4
     b40:	448e3000 	mtc1	t6,$f6
     b44:	3c013f80 	lui	at,0x3f80
     b48:	46802320 	cvt.s.w	$f12,$f4
     b4c:	448f2000 	mtc1	t7,$f4
     b50:	44811000 	mtc1	at,$f2
     b54:	845814d6 	lh	t8,5334(v0)
     b58:	845914d8 	lh	t9,5336(v0)
     b5c:	46803220 	cvt.s.w	$f8,$f6
     b60:	844814da 	lh	t0,5338(v0)
     b64:	3c01bf80 	lui	at,0xbf80
     b68:	468021a0 	cvt.s.w	$f6,$f4
     b6c:	46004282 	mul.s	$f10,$f8,$f0
     b70:	46025380 	add.s	$f14,$f10,$f2
     b74:	46003202 	mul.s	$f8,$f6,$f0
     b78:	44985000 	mtc1	t8,$f10
     b7c:	00000000 	nop
     b80:	46805120 	cvt.s.w	$f4,$f10
     b84:	46024400 	add.s	$f16,$f8,$f2
     b88:	44994000 	mtc1	t9,$f8
     b8c:	46002182 	mul.s	$f6,$f4,$f0
     b90:	468042a0 	cvt.s.w	$f10,$f8
     b94:	44884000 	mtc1	t0,$f8
     b98:	46023480 	add.s	$f18,$f6,$f2
     b9c:	46005102 	mul.s	$f4,$f10,$f0
     ba0:	44813000 	mtc1	at,$f6
     ba4:	468042a0 	cvt.s.w	$f10,$f8
     ba8:	46062500 	add.s	$f20,$f4,$f6
     bac:	46005102 	mul.s	$f4,$f10,$f0
     bb0:	1000007c 	b	da4 <L80979618+0xbc>
     bb4:	46022580 	add.s	$f22,$f4,$f2

00000bb8 <L809794E8>:
     bb8:	3c020000 	lui	v0,0x0
     bbc:	8c420000 	lw	v0,0(v0)
     bc0:	3c010000 	lui	at,0x0
     bc4:	c4200000 	lwc1	$f0,0(at)
     bc8:	844914ea 	lh	t1,5354(v0)
     bcc:	844a14ec 	lh	t2,5356(v0)
     bd0:	844b14ee 	lh	t3,5358(v0)
     bd4:	44893000 	mtc1	t1,$f6
     bd8:	448a4000 	mtc1	t2,$f8
     bdc:	3c013f80 	lui	at,0x3f80
     be0:	46803320 	cvt.s.w	$f12,$f6
     be4:	448b3000 	mtc1	t3,$f6
     be8:	44811000 	mtc1	at,$f2
     bec:	844c14f0 	lh	t4,5360(v0)
     bf0:	844d14f2 	lh	t5,5362(v0)
     bf4:	468042a0 	cvt.s.w	$f10,$f8
     bf8:	844e14f4 	lh	t6,5364(v0)
     bfc:	3c01bf80 	lui	at,0xbf80
     c00:	46803220 	cvt.s.w	$f8,$f6
     c04:	46005102 	mul.s	$f4,$f10,$f0
     c08:	46022380 	add.s	$f14,$f4,$f2
     c0c:	46004282 	mul.s	$f10,$f8,$f0
     c10:	448c2000 	mtc1	t4,$f4
     c14:	00000000 	nop
     c18:	468021a0 	cvt.s.w	$f6,$f4
     c1c:	46025400 	add.s	$f16,$f10,$f2
     c20:	448d5000 	mtc1	t5,$f10
     c24:	46003202 	mul.s	$f8,$f6,$f0
     c28:	46805120 	cvt.s.w	$f4,$f10
     c2c:	448e5000 	mtc1	t6,$f10
     c30:	46024480 	add.s	$f18,$f8,$f2
     c34:	46002182 	mul.s	$f6,$f4,$f0
     c38:	44814000 	mtc1	at,$f8
     c3c:	46805120 	cvt.s.w	$f4,$f10
     c40:	46083500 	add.s	$f20,$f6,$f8
     c44:	46002182 	mul.s	$f6,$f4,$f0
     c48:	10000056 	b	da4 <L80979618+0xbc>
     c4c:	46023580 	add.s	$f22,$f6,$f2

00000c50 <L80979580>:
     c50:	3c020000 	lui	v0,0x0
     c54:	8c420000 	lw	v0,0(v0)
     c58:	3c010000 	lui	at,0x0
     c5c:	c4200000 	lwc1	$f0,0(at)
     c60:	844f1504 	lh	t7,5380(v0)
     c64:	84581506 	lh	t8,5382(v0)
     c68:	84591508 	lh	t9,5384(v0)
     c6c:	448f4000 	mtc1	t7,$f8
     c70:	44985000 	mtc1	t8,$f10
     c74:	3c013f80 	lui	at,0x3f80
     c78:	46804320 	cvt.s.w	$f12,$f8
     c7c:	44994000 	mtc1	t9,$f8
     c80:	44811000 	mtc1	at,$f2
     c84:	8448150a 	lh	t0,5386(v0)
     c88:	8449150c 	lh	t1,5388(v0)
     c8c:	46805120 	cvt.s.w	$f4,$f10
     c90:	844a150e 	lh	t2,5390(v0)
     c94:	3c01bf80 	lui	at,0xbf80
     c98:	468042a0 	cvt.s.w	$f10,$f8
     c9c:	46002182 	mul.s	$f6,$f4,$f0
     ca0:	46023380 	add.s	$f14,$f6,$f2
     ca4:	46005102 	mul.s	$f4,$f10,$f0
     ca8:	44883000 	mtc1	t0,$f6
     cac:	00000000 	nop
     cb0:	46803220 	cvt.s.w	$f8,$f6
     cb4:	46022400 	add.s	$f16,$f4,$f2
     cb8:	44892000 	mtc1	t1,$f4
     cbc:	46004282 	mul.s	$f10,$f8,$f0
     cc0:	468021a0 	cvt.s.w	$f6,$f4
     cc4:	448a2000 	mtc1	t2,$f4
     cc8:	46025480 	add.s	$f18,$f10,$f2
     ccc:	46003202 	mul.s	$f8,$f6,$f0
     cd0:	44815000 	mtc1	at,$f10
     cd4:	468021a0 	cvt.s.w	$f6,$f4
     cd8:	460a4500 	add.s	$f20,$f8,$f10
     cdc:	46003202 	mul.s	$f8,$f6,$f0
     ce0:	10000030 	b	da4 <L80979618+0xbc>
     ce4:	46024580 	add.s	$f22,$f8,$f2

00000ce8 <L80979618>:
     ce8:	3c020000 	lui	v0,0x0
     cec:	8c420000 	lw	v0,0(v0)
     cf0:	3c010000 	lui	at,0x0
     cf4:	c4200000 	lwc1	$f0,0(at)
     cf8:	844b1468 	lh	t3,5224(v0)
     cfc:	844c1466 	lh	t4,5222(v0)
     d00:	3c013f80 	lui	at,0x3f80
     d04:	448b5000 	mtc1	t3,$f10
     d08:	44811000 	mtc1	at,$f2
     d0c:	3c01c33e 	lui	at,0xc33e
     d10:	46805120 	cvt.s.w	$f4,$f10
     d14:	44813000 	mtc1	at,$f6
     d18:	448c4000 	mtc1	t4,$f8
     d1c:	844d1464 	lh	t5,5220(v0)
     d20:	844e1462 	lh	t6,5218(v0)
     d24:	468042a0 	cvt.s.w	$f10,$f8
     d28:	844f1460 	lh	t7,5216(v0)
     d2c:	8458145e 	lh	t8,5214(v0)
     d30:	3c01bf80 	lui	at,0xbf80
     d34:	46062300 	add.s	$f12,$f4,$f6
     d38:	448d3000 	mtc1	t5,$f6
     d3c:	46005102 	mul.s	$f4,$f10,$f0
     d40:	46803220 	cvt.s.w	$f8,$f6
     d44:	46022380 	add.s	$f14,$f4,$f2
     d48:	46004282 	mul.s	$f10,$f8,$f0
     d4c:	448e2000 	mtc1	t6,$f4
     d50:	00000000 	nop
     d54:	468021a0 	cvt.s.w	$f6,$f4
     d58:	46025400 	add.s	$f16,$f10,$f2
     d5c:	448f5000 	mtc1	t7,$f10
     d60:	46003202 	mul.s	$f8,$f6,$f0
     d64:	46805120 	cvt.s.w	$f4,$f10
     d68:	44985000 	mtc1	t8,$f10
     d6c:	46024480 	add.s	$f18,$f8,$f2
     d70:	46002182 	mul.s	$f6,$f4,$f0
     d74:	44814000 	mtc1	at,$f8
     d78:	46805120 	cvt.s.w	$f4,$f10
     d7c:	46083500 	add.s	$f20,$f6,$f8
     d80:	46002182 	mul.s	$f6,$f4,$f0
     d84:	10000007 	b	da4 <L80979618+0xbc>
     d88:	46023580 	add.s	$f22,$f6,$f2
     d8c:	3c040000 	lui	a0,0x0
     d90:	24840000 	addiu	a0,a0,0
     d94:	0c000000 	jal	0 <func_80978930>
     d98:	84c5001c 	lh	a1,28(a2)
     d9c:	10000041 	b	ea4 <L80979618+0x1bc>
     da0:	8fbf0024 	lw	ra,36(sp)
     da4:	c7a0002c 	lwc1	$f0,44(sp)
     da8:	3c010000 	lui	at,0x0
     dac:	c4280000 	lwc1	$f8,0(at)
     db0:	460c0000 	add.s	$f0,$f0,$f12
     db4:	24c30060 	addiu	v1,a2,96
     db8:	4608003e 	c.le.s	$f0,$f8
     dbc:	00000000 	nop
     dc0:	45020038 	bc1fl	ea4 <L80979618+0x1bc>
     dc4:	8fbf0024 	lw	ra,36(sp)
     dc8:	44801000 	mtc1	zero,$f2
     dcc:	c4600000 	lwc1	$f0,0(v1)
     dd0:	4602003c 	c.lt.s	$f0,$f2
     dd4:	00000000 	nop
     dd8:	45020032 	bc1fl	ea4 <L80979618+0x1bc>
     ddc:	8fbf0024 	lw	ra,36(sp)
     de0:	8cd90180 	lw	t9,384(a2)
     de4:	5720002f 	bnezl	t9,ea4 <L80979618+0x1bc>
     de8:	8fbf0024 	lw	ra,36(sp)
     dec:	46140282 	mul.s	$f10,$f0,$f20
     df0:	24c40068 	addiu	a0,a2,104
     df4:	24c20172 	addiu	v0,a2,370
     df8:	24190001 	li	t9,1
     dfc:	e46a0000 	swc1	$f10,0(v1)
     e00:	c4840000 	lwc1	$f4,0(a0)
     e04:	46162182 	mul.s	$f6,$f4,$f22
     e08:	e4860000 	swc1	$f6,0(a0)
     e0c:	84480000 	lh	t0,0(v0)
     e10:	844b0002 	lh	t3,2(v0)
     e14:	844e0004 	lh	t6,4(v0)
     e18:	44884000 	mtc1	t0,$f8
     e1c:	00000000 	nop
     e20:	468042a0 	cvt.s.w	$f10,$f8
     e24:	448b4000 	mtc1	t3,$f8
     e28:	460e5102 	mul.s	$f4,$f10,$f14
     e2c:	468042a0 	cvt.s.w	$f10,$f8
     e30:	448e4000 	mtc1	t6,$f8
     e34:	4600218d 	trunc.w.s	$f6,$f4
     e38:	46105102 	mul.s	$f4,$f10,$f16
     e3c:	440a3000 	mfc1	t2,$f6
     e40:	468042a0 	cvt.s.w	$f10,$f8
     e44:	a44a0000 	sh	t2,0(v0)
     e48:	4600218d 	trunc.w.s	$f6,$f4
     e4c:	46125102 	mul.s	$f4,$f10,$f18
     e50:	440d3000 	mfc1	t5,$f6
     e54:	00000000 	nop
     e58:	a44d0002 	sh	t5,2(v0)
     e5c:	4600218d 	trunc.w.s	$f6,$f4
     e60:	44183000 	mfc1	t8,$f6
     e64:	00000000 	nop
     e68:	a4580004 	sh	t8,4(v0)
     e6c:	c4c8006c 	lwc1	$f8,108(a2)
     e70:	c4640000 	lwc1	$f4,0(v1)
     e74:	46004287 	neg.s	$f10,$f8
     e78:	460a203e 	c.le.s	$f4,$f10
     e7c:	00000000 	nop
     e80:	45020007 	bc1fl	ea0 <L80979618+0x1b8>
     e84:	acd90180 	sw	t9,384(a2)
     e88:	e4620000 	swc1	$f2,0(v1)
     e8c:	e4820000 	swc1	$f2,0(a0)
     e90:	a4400000 	sh	zero,0(v0)
     e94:	a4400002 	sh	zero,2(v0)
     e98:	a4400004 	sh	zero,4(v0)
     e9c:	acd90180 	sw	t9,384(a2)
     ea0:	8fbf0024 	lw	ra,36(sp)
     ea4:	d7b40010 	ldc1	$f20,16(sp)
     ea8:	d7b60018 	ldc1	$f22,24(sp)
     eac:	03e00008 	jr	ra
     eb0:	27bd0030 	addiu	sp,sp,48

00000eb4 <func_809797E4>:
     eb4:	afa50004 	sw	a1,4(sp)
     eb8:	8c820178 	lw	v0,376(a0)
     ebc:	30a500ff 	andi	a1,a1,0xff
     ec0:	50400007 	beqzl	v0,ee0 <func_809797E4+0x2c>
     ec4:	00001025 	move	v0,zero
     ec8:	904e0314 	lbu	t6,788(v0)
     ecc:	54ae0004 	bnel	a1,t6,ee0 <func_809797E4+0x2c>
     ed0:	00001025 	move	v0,zero
     ed4:	03e00008 	jr	ra
     ed8:	24020001 	li	v0,1
     edc:	00001025 	move	v0,zero
     ee0:	03e00008 	jr	ra
     ee4:	00000000 	nop

00000ee8 <func_80979818>:
     ee8:	27bdffe8 	addiu	sp,sp,-24
     eec:	afbf0014 	sw	ra,20(sp)
     ef0:	afa5001c 	sw	a1,28(sp)
     ef4:	0c000000 	jal	0 <func_80978930>
     ef8:	24050001 	li	a1,1
     efc:	8fbf0014 	lw	ra,20(sp)
     f00:	27bd0018 	addiu	sp,sp,24
     f04:	03e00008 	jr	ra
     f08:	00000000 	nop

00000f0c <func_8097983C>:
     f0c:	27bdffe8 	addiu	sp,sp,-24
     f10:	afbf0014 	sw	ra,20(sp)
     f14:	afa5001c 	sw	a1,28(sp)
     f18:	0c000000 	jal	0 <func_80978930>
     f1c:	24050002 	li	a1,2
     f20:	8fbf0014 	lw	ra,20(sp)
     f24:	27bd0018 	addiu	sp,sp,24
     f28:	03e00008 	jr	ra
     f2c:	00000000 	nop

00000f30 <func_80979860>:
     f30:	27bdffc8 	addiu	sp,sp,-56
     f34:	afbf001c 	sw	ra,28(sp)
     f38:	afb00018 	sw	s0,24(sp)
     f3c:	afa5003c 	sw	a1,60(sp)
     f40:	8c820178 	lw	v0,376(a0)
     f44:	00808025 	move	s0,a0
     f48:	504001c4 	beqzl	v0,165c <L80979DE0+0x1ac>
     f4c:	8fbf001c 	lw	ra,28(sp)
     f50:	c4840024 	lwc1	$f4,36(a0)
     f54:	c4460024 	lwc1	$f6,36(v0)
     f58:	c488002c 	lwc1	$f8,44(a0)
     f5c:	c44a002c 	lwc1	$f10,44(v0)
     f60:	46062301 	sub.s	$f12,$f4,$f6
     f64:	460a4381 	sub.s	$f14,$f8,$f10
     f68:	e7ac0024 	swc1	$f12,36(sp)
     f6c:	0c000000 	jal	0 <func_80978930>
     f70:	e7ae0020 	swc1	$f14,32(sp)
     f74:	244efff8 	addiu	t6,v0,-8
     f78:	2dc10007 	sltiu	at,t6,7
     f7c:	c7ac0024 	lwc1	$f12,36(sp)
     f80:	10200181 	beqz	at,1588 <L80979DE0+0xd8>
     f84:	c7ae0020 	lwc1	$f14,32(sp)
     f88:	000e7080 	sll	t6,t6,0x2
     f8c:	3c010000 	lui	at,0x0
     f90:	002e0821 	addu	at,at,t6
     f94:	8c2e0000 	lw	t6,0(at)
     f98:	01c00008 	jr	t6
     f9c:	00000000 	nop

00000fa0 <L809798D0>:
     fa0:	3c020000 	lui	v0,0x0
     fa4:	24420000 	addiu	v0,v0,0
     fa8:	8c4f0000 	lw	t7,0(v0)
     fac:	3c010000 	lui	at,0x0
     fb0:	c4200000 	lwc1	$f0,0(at)
     fb4:	85f81474 	lh	t8,5236(t7)
     fb8:	3c014120 	lui	at,0x4120
     fbc:	44812000 	mtc1	at,$f4
     fc0:	44988000 	mtc1	t8,$f16
     fc4:	3c014220 	lui	at,0x4220
     fc8:	26030172 	addiu	v1,s0,370
     fcc:	468084a0 	cvt.s.w	$f18,$f16
     fd0:	44818000 	mtc1	at,$f16
     fd4:	3c01c1e8 	lui	at,0xc1e8
     fd8:	46049180 	add.s	$f6,$f18,$f4
     fdc:	e6060068 	swc1	$f6,104(s0)
     fe0:	8c590000 	lw	t9,0(v0)
     fe4:	87281476 	lh	t0,5238(t9)
     fe8:	44884000 	mtc1	t0,$f8
     fec:	00000000 	nop
     ff0:	468042a0 	cvt.s.w	$f10,$f8
     ff4:	46105480 	add.s	$f18,$f10,$f16
     ff8:	44815000 	mtc1	at,$f10
     ffc:	3c01c0a0 	lui	at,0xc0a0
    1000:	e6120060 	swc1	$f18,96(s0)
    1004:	8c490000 	lw	t1,0(v0)
    1008:	852a1478 	lh	t2,5240(t1)
    100c:	a46a0000 	sh	t2,0(v1)
    1010:	8c4b0000 	lw	t3,0(v0)
    1014:	856c147a 	lh	t4,5242(t3)
    1018:	258d03e8 	addiu	t5,t4,1000
    101c:	a46d0002 	sh	t5,2(v1)
    1020:	8c4e0000 	lw	t6,0(v0)
    1024:	85cf147c 	lh	t7,5244(t6)
    1028:	25f80bb8 	addiu	t8,t7,3000
    102c:	a4780004 	sh	t8,4(v1)
    1030:	8c590000 	lw	t9,0(v0)
    1034:	8728147e 	lh	t0,5246(t9)
    1038:	44882000 	mtc1	t0,$f4
    103c:	00000000 	nop
    1040:	468021a0 	cvt.s.w	$f6,$f4
    1044:	46003202 	mul.s	$f8,$f6,$f0
    1048:	460a4400 	add.s	$f16,$f8,$f10
    104c:	44814000 	mtc1	at,$f8
    1050:	e6100070 	swc1	$f16,112(s0)
    1054:	8c490000 	lw	t1,0(v0)
    1058:	852a1480 	lh	t2,5248(t1)
    105c:	448a9000 	mtc1	t2,$f18
    1060:	00000000 	nop
    1064:	46809120 	cvt.s.w	$f4,$f18
    1068:	46002182 	mul.s	$f6,$f4,$f0
    106c:	46083280 	add.s	$f10,$f6,$f8
    1070:	1000014d 	b	15a8 <L80979DE0+0xf8>
    1074:	e60a006c 	swc1	$f10,108(s0)

00001078 <L809799A8>:
    1078:	3c020000 	lui	v0,0x0
    107c:	24420000 	addiu	v0,v0,0
    1080:	8c4b0000 	lw	t3,0(v0)
    1084:	3c010000 	lui	at,0x0
    1088:	c4200000 	lwc1	$f0,0(at)
    108c:	856c148e 	lh	t4,5262(t3)
    1090:	3c014120 	lui	at,0x4120
    1094:	44812000 	mtc1	at,$f4
    1098:	448c8000 	mtc1	t4,$f16
    109c:	3c014220 	lui	at,0x4220
    10a0:	26030172 	addiu	v1,s0,370
    10a4:	468084a0 	cvt.s.w	$f18,$f16
    10a8:	44818000 	mtc1	at,$f16
    10ac:	3c01c1e8 	lui	at,0xc1e8
    10b0:	46049180 	add.s	$f6,$f18,$f4
    10b4:	e6060068 	swc1	$f6,104(s0)
    10b8:	8c4d0000 	lw	t5,0(v0)
    10bc:	85ae1490 	lh	t6,5264(t5)
    10c0:	448e4000 	mtc1	t6,$f8
    10c4:	00000000 	nop
    10c8:	468042a0 	cvt.s.w	$f10,$f8
    10cc:	46105480 	add.s	$f18,$f10,$f16
    10d0:	44815000 	mtc1	at,$f10
    10d4:	3c01c0a0 	lui	at,0xc0a0
    10d8:	e6120060 	swc1	$f18,96(s0)
    10dc:	8c4f0000 	lw	t7,0(v0)
    10e0:	85f81492 	lh	t8,5266(t7)
    10e4:	a4780000 	sh	t8,0(v1)
    10e8:	8c590000 	lw	t9,0(v0)
    10ec:	87281494 	lh	t0,5268(t9)
    10f0:	250903e8 	addiu	t1,t0,1000
    10f4:	a4690002 	sh	t1,2(v1)
    10f8:	8c4a0000 	lw	t2,0(v0)
    10fc:	854b1496 	lh	t3,5270(t2)
    1100:	256c0bb8 	addiu	t4,t3,3000
    1104:	a46c0004 	sh	t4,4(v1)
    1108:	8c4d0000 	lw	t5,0(v0)
    110c:	85ae1498 	lh	t6,5272(t5)
    1110:	448e2000 	mtc1	t6,$f4
    1114:	00000000 	nop
    1118:	468021a0 	cvt.s.w	$f6,$f4
    111c:	46003202 	mul.s	$f8,$f6,$f0
    1120:	460a4400 	add.s	$f16,$f8,$f10
    1124:	44814000 	mtc1	at,$f8
    1128:	e6100070 	swc1	$f16,112(s0)
    112c:	8c4f0000 	lw	t7,0(v0)
    1130:	85f8149a 	lh	t8,5274(t7)
    1134:	44989000 	mtc1	t8,$f18
    1138:	00000000 	nop
    113c:	46809120 	cvt.s.w	$f4,$f18
    1140:	46002182 	mul.s	$f6,$f4,$f0
    1144:	46083280 	add.s	$f10,$f6,$f8
    1148:	10000117 	b	15a8 <L80979DE0+0xf8>
    114c:	e60a006c 	swc1	$f10,108(s0)

00001150 <L80979A80>:
    1150:	3c020000 	lui	v0,0x0
    1154:	24420000 	addiu	v0,v0,0
    1158:	8c590000 	lw	t9,0(v0)
    115c:	3c010000 	lui	at,0x0
    1160:	c4200000 	lwc1	$f0,0(at)
    1164:	872814a8 	lh	t0,5288(t9)
    1168:	3c014120 	lui	at,0x4120
    116c:	44812000 	mtc1	at,$f4
    1170:	44888000 	mtc1	t0,$f16
    1174:	3c014220 	lui	at,0x4220
    1178:	26030172 	addiu	v1,s0,370
    117c:	468084a0 	cvt.s.w	$f18,$f16
    1180:	44818000 	mtc1	at,$f16
    1184:	3c01c1e8 	lui	at,0xc1e8
    1188:	46049180 	add.s	$f6,$f18,$f4
    118c:	e6060068 	swc1	$f6,104(s0)
    1190:	8c490000 	lw	t1,0(v0)
    1194:	852a14aa 	lh	t2,5290(t1)
    1198:	448a4000 	mtc1	t2,$f8
    119c:	00000000 	nop
    11a0:	468042a0 	cvt.s.w	$f10,$f8
    11a4:	46105480 	add.s	$f18,$f10,$f16
    11a8:	44815000 	mtc1	at,$f10
    11ac:	3c01c0a0 	lui	at,0xc0a0
    11b0:	e6120060 	swc1	$f18,96(s0)
    11b4:	8c4b0000 	lw	t3,0(v0)
    11b8:	856c14ac 	lh	t4,5292(t3)
    11bc:	a46c0000 	sh	t4,0(v1)
    11c0:	8c4d0000 	lw	t5,0(v0)
    11c4:	85ae14ae 	lh	t6,5294(t5)
    11c8:	25cf03e8 	addiu	t7,t6,1000
    11cc:	a46f0002 	sh	t7,2(v1)
    11d0:	8c580000 	lw	t8,0(v0)
    11d4:	871914b0 	lh	t9,5296(t8)
    11d8:	27280bb8 	addiu	t0,t9,3000
    11dc:	a4680004 	sh	t0,4(v1)
    11e0:	8c490000 	lw	t1,0(v0)
    11e4:	852a14b2 	lh	t2,5298(t1)
    11e8:	448a2000 	mtc1	t2,$f4
    11ec:	00000000 	nop
    11f0:	468021a0 	cvt.s.w	$f6,$f4
    11f4:	46003202 	mul.s	$f8,$f6,$f0
    11f8:	460a4400 	add.s	$f16,$f8,$f10
    11fc:	44814000 	mtc1	at,$f8
    1200:	e6100070 	swc1	$f16,112(s0)
    1204:	8c4b0000 	lw	t3,0(v0)
    1208:	856c14b4 	lh	t4,5300(t3)
    120c:	448c9000 	mtc1	t4,$f18
    1210:	00000000 	nop
    1214:	46809120 	cvt.s.w	$f4,$f18
    1218:	46002182 	mul.s	$f6,$f4,$f0
    121c:	46083280 	add.s	$f10,$f6,$f8
    1220:	100000e1 	b	15a8 <L80979DE0+0xf8>
    1224:	e60a006c 	swc1	$f10,108(s0)

00001228 <L80979B58>:
    1228:	3c020000 	lui	v0,0x0
    122c:	24420000 	addiu	v0,v0,0
    1230:	8c4d0000 	lw	t5,0(v0)
    1234:	3c010000 	lui	at,0x0
    1238:	c4200000 	lwc1	$f0,0(at)
    123c:	85ae14c2 	lh	t6,5314(t5)
    1240:	3c014120 	lui	at,0x4120
    1244:	44812000 	mtc1	at,$f4
    1248:	448e8000 	mtc1	t6,$f16
    124c:	3c014220 	lui	at,0x4220
    1250:	26030172 	addiu	v1,s0,370
    1254:	468084a0 	cvt.s.w	$f18,$f16
    1258:	44818000 	mtc1	at,$f16
    125c:	3c01c1e8 	lui	at,0xc1e8
    1260:	46049180 	add.s	$f6,$f18,$f4
    1264:	e6060068 	swc1	$f6,104(s0)
    1268:	8c4f0000 	lw	t7,0(v0)
    126c:	85f814c4 	lh	t8,5316(t7)
    1270:	44984000 	mtc1	t8,$f8
    1274:	00000000 	nop
    1278:	468042a0 	cvt.s.w	$f10,$f8
    127c:	46105480 	add.s	$f18,$f10,$f16
    1280:	44815000 	mtc1	at,$f10
    1284:	3c01c0a0 	lui	at,0xc0a0
    1288:	e6120060 	swc1	$f18,96(s0)
    128c:	8c590000 	lw	t9,0(v0)
    1290:	872814c6 	lh	t0,5318(t9)
    1294:	a4680000 	sh	t0,0(v1)
    1298:	8c490000 	lw	t1,0(v0)
    129c:	852a14c8 	lh	t2,5320(t1)
    12a0:	254b03e8 	addiu	t3,t2,1000
    12a4:	a46b0002 	sh	t3,2(v1)
    12a8:	8c4c0000 	lw	t4,0(v0)
    12ac:	858d14ca 	lh	t5,5322(t4)
    12b0:	25ae0bb8 	addiu	t6,t5,3000
    12b4:	a46e0004 	sh	t6,4(v1)
    12b8:	8c4f0000 	lw	t7,0(v0)
    12bc:	85f814cc 	lh	t8,5324(t7)
    12c0:	44982000 	mtc1	t8,$f4
    12c4:	00000000 	nop
    12c8:	468021a0 	cvt.s.w	$f6,$f4
    12cc:	46003202 	mul.s	$f8,$f6,$f0
    12d0:	460a4400 	add.s	$f16,$f8,$f10
    12d4:	44814000 	mtc1	at,$f8
    12d8:	e6100070 	swc1	$f16,112(s0)
    12dc:	8c590000 	lw	t9,0(v0)
    12e0:	872814ce 	lh	t0,5326(t9)
    12e4:	44889000 	mtc1	t0,$f18
    12e8:	00000000 	nop
    12ec:	46809120 	cvt.s.w	$f4,$f18
    12f0:	46002182 	mul.s	$f6,$f4,$f0
    12f4:	46083280 	add.s	$f10,$f6,$f8
    12f8:	100000ab 	b	15a8 <L80979DE0+0xf8>
    12fc:	e60a006c 	swc1	$f10,108(s0)

00001300 <L80979C30>:
    1300:	3c020000 	lui	v0,0x0
    1304:	24420000 	addiu	v0,v0,0
    1308:	8c490000 	lw	t1,0(v0)
    130c:	3c010000 	lui	at,0x0
    1310:	c4200000 	lwc1	$f0,0(at)
    1314:	852a14dc 	lh	t2,5340(t1)
    1318:	3c014120 	lui	at,0x4120
    131c:	44812000 	mtc1	at,$f4
    1320:	448a8000 	mtc1	t2,$f16
    1324:	3c014220 	lui	at,0x4220
    1328:	26030172 	addiu	v1,s0,370
    132c:	468084a0 	cvt.s.w	$f18,$f16
    1330:	44818000 	mtc1	at,$f16
    1334:	3c01c1e8 	lui	at,0xc1e8
    1338:	46049180 	add.s	$f6,$f18,$f4
    133c:	e6060068 	swc1	$f6,104(s0)
    1340:	8c4b0000 	lw	t3,0(v0)
    1344:	856c14de 	lh	t4,5342(t3)
    1348:	448c4000 	mtc1	t4,$f8
    134c:	00000000 	nop
    1350:	468042a0 	cvt.s.w	$f10,$f8
    1354:	46105480 	add.s	$f18,$f10,$f16
    1358:	44815000 	mtc1	at,$f10
    135c:	3c01c0a0 	lui	at,0xc0a0
    1360:	e6120060 	swc1	$f18,96(s0)
    1364:	8c4d0000 	lw	t5,0(v0)
    1368:	85ae14e0 	lh	t6,5344(t5)
    136c:	a46e0000 	sh	t6,0(v1)
    1370:	8c4f0000 	lw	t7,0(v0)
    1374:	85f814e2 	lh	t8,5346(t7)
    1378:	271903e8 	addiu	t9,t8,1000
    137c:	a4790002 	sh	t9,2(v1)
    1380:	8c480000 	lw	t0,0(v0)
    1384:	850914e4 	lh	t1,5348(t0)
    1388:	252a0bb8 	addiu	t2,t1,3000
    138c:	a46a0004 	sh	t2,4(v1)
    1390:	8c4b0000 	lw	t3,0(v0)
    1394:	856c14e6 	lh	t4,5350(t3)
    1398:	448c2000 	mtc1	t4,$f4
    139c:	00000000 	nop
    13a0:	468021a0 	cvt.s.w	$f6,$f4
    13a4:	46003202 	mul.s	$f8,$f6,$f0
    13a8:	460a4400 	add.s	$f16,$f8,$f10
    13ac:	44814000 	mtc1	at,$f8
    13b0:	e6100070 	swc1	$f16,112(s0)
    13b4:	8c4d0000 	lw	t5,0(v0)
    13b8:	85ae14e8 	lh	t6,5352(t5)
    13bc:	448e9000 	mtc1	t6,$f18
    13c0:	00000000 	nop
    13c4:	46809120 	cvt.s.w	$f4,$f18
    13c8:	46002182 	mul.s	$f6,$f4,$f0
    13cc:	46083280 	add.s	$f10,$f6,$f8
    13d0:	10000075 	b	15a8 <L80979DE0+0xf8>
    13d4:	e60a006c 	swc1	$f10,108(s0)

000013d8 <L80979D08>:
    13d8:	3c020000 	lui	v0,0x0
    13dc:	24420000 	addiu	v0,v0,0
    13e0:	8c4f0000 	lw	t7,0(v0)
    13e4:	3c010000 	lui	at,0x0
    13e8:	c4200000 	lwc1	$f0,0(at)
    13ec:	85f814f6 	lh	t8,5366(t7)
    13f0:	3c014120 	lui	at,0x4120
    13f4:	44812000 	mtc1	at,$f4
    13f8:	44988000 	mtc1	t8,$f16
    13fc:	3c014220 	lui	at,0x4220
    1400:	26030172 	addiu	v1,s0,370
    1404:	468084a0 	cvt.s.w	$f18,$f16
    1408:	44818000 	mtc1	at,$f16
    140c:	3c01c1e8 	lui	at,0xc1e8
    1410:	46049180 	add.s	$f6,$f18,$f4
    1414:	e6060068 	swc1	$f6,104(s0)
    1418:	8c590000 	lw	t9,0(v0)
    141c:	872814f8 	lh	t0,5368(t9)
    1420:	44884000 	mtc1	t0,$f8
    1424:	00000000 	nop
    1428:	468042a0 	cvt.s.w	$f10,$f8
    142c:	46105480 	add.s	$f18,$f10,$f16
    1430:	44815000 	mtc1	at,$f10
    1434:	3c01c0a0 	lui	at,0xc0a0
    1438:	e6120060 	swc1	$f18,96(s0)
    143c:	8c490000 	lw	t1,0(v0)
    1440:	852a14fa 	lh	t2,5370(t1)
    1444:	a46a0000 	sh	t2,0(v1)
    1448:	8c4b0000 	lw	t3,0(v0)
    144c:	856c14fc 	lh	t4,5372(t3)
    1450:	258d03e8 	addiu	t5,t4,1000
    1454:	a46d0002 	sh	t5,2(v1)
    1458:	8c4e0000 	lw	t6,0(v0)
    145c:	85cf14fe 	lh	t7,5374(t6)
    1460:	25f80bb8 	addiu	t8,t7,3000
    1464:	a4780004 	sh	t8,4(v1)
    1468:	8c590000 	lw	t9,0(v0)
    146c:	87281500 	lh	t0,5376(t9)
    1470:	44882000 	mtc1	t0,$f4
    1474:	00000000 	nop
    1478:	468021a0 	cvt.s.w	$f6,$f4
    147c:	46003202 	mul.s	$f8,$f6,$f0
    1480:	460a4400 	add.s	$f16,$f8,$f10
    1484:	44814000 	mtc1	at,$f8
    1488:	e6100070 	swc1	$f16,112(s0)
    148c:	8c490000 	lw	t1,0(v0)
    1490:	852a1502 	lh	t2,5378(t1)
    1494:	448a9000 	mtc1	t2,$f18
    1498:	00000000 	nop
    149c:	46809120 	cvt.s.w	$f4,$f18
    14a0:	46002182 	mul.s	$f6,$f4,$f0
    14a4:	46083280 	add.s	$f10,$f6,$f8
    14a8:	1000003f 	b	15a8 <L80979DE0+0xf8>
    14ac:	e60a006c 	swc1	$f10,108(s0)

000014b0 <L80979DE0>:
    14b0:	3c020000 	lui	v0,0x0
    14b4:	24420000 	addiu	v0,v0,0
    14b8:	8c4b0000 	lw	t3,0(v0)
    14bc:	3c010000 	lui	at,0x0
    14c0:	c4200000 	lwc1	$f0,0(at)
    14c4:	856c1510 	lh	t4,5392(t3)
    14c8:	3c014120 	lui	at,0x4120
    14cc:	44812000 	mtc1	at,$f4
    14d0:	448c8000 	mtc1	t4,$f16
    14d4:	3c01428c 	lui	at,0x428c
    14d8:	26030172 	addiu	v1,s0,370
    14dc:	468084a0 	cvt.s.w	$f18,$f16
    14e0:	44818000 	mtc1	at,$f16
    14e4:	3c01c1e8 	lui	at,0xc1e8
    14e8:	46049180 	add.s	$f6,$f18,$f4
    14ec:	e6060068 	swc1	$f6,104(s0)
    14f0:	8c4d0000 	lw	t5,0(v0)
    14f4:	85ae1512 	lh	t6,5394(t5)
    14f8:	448e4000 	mtc1	t6,$f8
    14fc:	00000000 	nop
    1500:	468042a0 	cvt.s.w	$f10,$f8
    1504:	46105480 	add.s	$f18,$f10,$f16
    1508:	44815000 	mtc1	at,$f10
    150c:	3c01c0a0 	lui	at,0xc0a0
    1510:	e6120060 	swc1	$f18,96(s0)
    1514:	8c4f0000 	lw	t7,0(v0)
    1518:	85f81472 	lh	t8,5234(t7)
    151c:	a4780000 	sh	t8,0(v1)
    1520:	8c590000 	lw	t9,0(v0)
    1524:	87281470 	lh	t0,5232(t9)
    1528:	250903e8 	addiu	t1,t0,1000
    152c:	a4690002 	sh	t1,2(v1)
    1530:	8c4a0000 	lw	t2,0(v0)
    1534:	854b146e 	lh	t3,5230(t2)
    1538:	256c0bb8 	addiu	t4,t3,3000
    153c:	a46c0004 	sh	t4,4(v1)
    1540:	8c4d0000 	lw	t5,0(v0)
    1544:	85ae146c 	lh	t6,5228(t5)
    1548:	448e2000 	mtc1	t6,$f4
    154c:	00000000 	nop
    1550:	468021a0 	cvt.s.w	$f6,$f4
    1554:	46003202 	mul.s	$f8,$f6,$f0
    1558:	460a4400 	add.s	$f16,$f8,$f10
    155c:	44814000 	mtc1	at,$f8
    1560:	e6100070 	swc1	$f16,112(s0)
    1564:	8c4f0000 	lw	t7,0(v0)
    1568:	85f8146a 	lh	t8,5226(t7)
    156c:	44989000 	mtc1	t8,$f18
    1570:	00000000 	nop
    1574:	46809120 	cvt.s.w	$f4,$f18
    1578:	46002182 	mul.s	$f6,$f4,$f0
    157c:	46083280 	add.s	$f10,$f6,$f8
    1580:	10000009 	b	15a8 <L80979DE0+0xf8>
    1584:	e60a006c 	swc1	$f10,108(s0)
    1588:	3c040000 	lui	a0,0x0
    158c:	8605001c 	lh	a1,28(s0)
    1590:	e7ae0020 	swc1	$f14,32(sp)
    1594:	e7ac0024 	swc1	$f12,36(sp)
    1598:	0c000000 	jal	0 <func_80978930>
    159c:	24840000 	addiu	a0,a0,0
    15a0:	c7ac0024 	lwc1	$f12,36(sp)
    15a4:	c7ae0020 	lwc1	$f14,32(sp)
    15a8:	44800000 	mtc1	zero,$f0
    15ac:	00000000 	nop
    15b0:	46006032 	c.eq.s	$f12,$f0
    15b4:	00000000 	nop
    15b8:	4500001e 	bc1f	1634 <L80979DE0+0x184>
    15bc:	00000000 	nop
    15c0:	46007032 	c.eq.s	$f14,$f0
    15c4:	8fb9003c 	lw	t9,60(sp)
    15c8:	4500001a 	bc1f	1634 <L80979DE0+0x184>
    15cc:	00000000 	nop
    15d0:	8f231c44 	lw	v1,7236(t9)
    15d4:	26020024 	addiu	v0,s0,36
    15d8:	c4520000 	lwc1	$f18,0(v0)
    15dc:	c4700024 	lwc1	$f16,36(v1)
    15e0:	c4460008 	lwc1	$f6,8(v0)
    15e4:	c464002c 	lwc1	$f4,44(v1)
    15e8:	46128301 	sub.s	$f12,$f16,$f18
    15ec:	46062381 	sub.s	$f14,$f4,$f6
    15f0:	46006032 	c.eq.s	$f12,$f0
    15f4:	00000000 	nop
    15f8:	45000005 	bc1f	1610 <L80979DE0+0x160>
    15fc:	00000000 	nop
    1600:	46007032 	c.eq.s	$f14,$f0
    1604:	00000000 	nop
    1608:	45030014 	bc1tl	165c <L80979DE0+0x1ac>
    160c:	8fbf001c 	lw	ra,28(sp)
    1610:	0c000000 	jal	0 <func_80978930>
    1614:	00000000 	nop
    1618:	3c010000 	lui	at,0x0
    161c:	c4280000 	lwc1	$f8,0(at)
    1620:	46080282 	mul.s	$f10,$f0,$f8
    1624:	4600540d 	trunc.w.s	$f16,$f10
    1628:	44098000 	mfc1	t1,$f16
    162c:	1000000a 	b	1658 <L80979DE0+0x1a8>
    1630:	a6090032 	sh	t1,50(s0)
    1634:	0c000000 	jal	0 <func_80978930>
    1638:	00000000 	nop
    163c:	3c010000 	lui	at,0x0
    1640:	c4320000 	lwc1	$f18,0(at)
    1644:	46120102 	mul.s	$f4,$f0,$f18
    1648:	4600218d 	trunc.w.s	$f6,$f4
    164c:	440b3000 	mfc1	t3,$f6
    1650:	00000000 	nop
    1654:	a60b0032 	sh	t3,50(s0)
    1658:	8fbf001c 	lw	ra,28(sp)
    165c:	8fb00018 	lw	s0,24(sp)
    1660:	27bd0038 	addiu	sp,sp,56
    1664:	03e00008 	jr	ra
    1668:	00000000 	nop

0000166c <func_80979F9C>:
    166c:	27bdffe8 	addiu	sp,sp,-24
    1670:	afbf0014 	sw	ra,20(sp)
    1674:	afa40018 	sw	a0,24(sp)
    1678:	0c000000 	jal	0 <func_80978930>
    167c:	24050003 	li	a1,3
    1680:	10400003 	beqz	v0,1690 <func_80979F9C+0x24>
    1684:	8faf0018 	lw	t7,24(sp)
    1688:	240e0001 	li	t6,1
    168c:	adee017c 	sw	t6,380(t7)
    1690:	8fbf0014 	lw	ra,20(sp)
    1694:	27bd0018 	addiu	sp,sp,24
    1698:	03e00008 	jr	ra
    169c:	00000000 	nop

000016a0 <func_80979FD0>:
    16a0:	27bdffe0 	addiu	sp,sp,-32
    16a4:	3c0e0600 	lui	t6,0x600
    16a8:	afbf001c 	sw	ra,28(sp)
    16ac:	25ce1f70 	addiu	t6,t6,8048
    16b0:	afae0010 	sw	t6,16(sp)
    16b4:	24060001 	li	a2,1
    16b8:	0c000000 	jal	0 <func_80978930>
    16bc:	24070002 	li	a3,2
    16c0:	8fbf001c 	lw	ra,28(sp)
    16c4:	27bd0020 	addiu	sp,sp,32
    16c8:	03e00008 	jr	ra
    16cc:	00000000 	nop

000016d0 <func_8097A000>:
    16d0:	27bdffe8 	addiu	sp,sp,-24
    16d4:	afbf0014 	sw	ra,20(sp)
    16d8:	afa5001c 	sw	a1,28(sp)
    16dc:	0c000000 	jal	0 <func_80978930>
    16e0:	afa40018 	sw	a0,24(sp)
    16e4:	3c020000 	lui	v0,0x0
    16e8:	24420000 	addiu	v0,v0,0
    16ec:	8fa40018 	lw	a0,24(sp)
    16f0:	8c4f0000 	lw	t7,0(v0)
    16f4:	848e016c 	lh	t6,364(a0)
    16f8:	85f81478 	lh	t8,5240(t7)
    16fc:	8488016e 	lh	t0,366(a0)
    1700:	01d8c821 	addu	t9,t6,t8
    1704:	a499016c 	sh	t9,364(a0)
    1708:	8c490000 	lw	t1,0(v0)
    170c:	848e0170 	lh	t6,368(a0)
    1710:	852a147a 	lh	t2,5242(t1)
    1714:	254d03e8 	addiu	t5,t2,1000
    1718:	010d7821 	addu	t7,t0,t5
    171c:	a48f016e 	sh	t7,366(a0)
    1720:	8c580000 	lw	t8,0(v0)
    1724:	8719147c 	lh	t9,5244(t8)
    1728:	272b0bb8 	addiu	t3,t9,3000
    172c:	01cb6021 	addu	t4,t6,t3
    1730:	a48c0170 	sh	t4,368(a0)
    1734:	0c000000 	jal	0 <func_80978930>
    1738:	8fa5001c 	lw	a1,28(sp)
    173c:	8fbf0014 	lw	ra,20(sp)
    1740:	27bd0018 	addiu	sp,sp,24
    1744:	03e00008 	jr	ra
    1748:	00000000 	nop

0000174c <func_8097A07C>:
    174c:	27bdffe8 	addiu	sp,sp,-24
    1750:	afbf0014 	sw	ra,20(sp)
    1754:	afa5001c 	sw	a1,28(sp)
    1758:	8c8e017c 	lw	t6,380(a0)
    175c:	3c020001 	lui	v0,0x1
    1760:	00803825 	move	a3,a0
    1764:	15c0000f 	bnez	t6,17a4 <func_8097A07C+0x58>
    1768:	00451021 	addu	v0,v0,a1
    176c:	8c421de4 	lw	v0,7652(v0)
    1770:	24010003 	li	at,3
    1774:	00a02025 	move	a0,a1
    1778:	0041001b 	divu	zero,v0,at
    177c:	00001810 	mfhi	v1
    1780:	3c050000 	lui	a1,0x0
    1784:	14600005 	bnez	v1,179c <func_8097A07C+0x50>
    1788:	24a50000 	addiu	a1,a1,0
    178c:	3c064396 	lui	a2,0x4396
    1790:	0c000000 	jal	0 <func_80978930>
    1794:	afa70018 	sw	a3,24(sp)
    1798:	8fa70018 	lw	a3,24(sp)
    179c:	0c000000 	jal	0 <func_80978930>
    17a0:	00e02025 	move	a0,a3
    17a4:	8fbf0014 	lw	ra,20(sp)
    17a8:	27bd0018 	addiu	sp,sp,24
    17ac:	03e00008 	jr	ra
    17b0:	00000000 	nop

000017b4 <func_8097A0E4>:
    17b4:	27bdffe8 	addiu	sp,sp,-24
    17b8:	afbf0014 	sw	ra,20(sp)
    17bc:	afa40018 	sw	a0,24(sp)
    17c0:	0c000000 	jal	0 <func_80978930>
    17c4:	afa5001c 	sw	a1,28(sp)
    17c8:	10400009 	beqz	v0,17f0 <func_8097A0E4+0x3c>
    17cc:	8fa40018 	lw	a0,24(sp)
    17d0:	0c000000 	jal	0 <func_80978930>
    17d4:	8fa5001c 	lw	a1,28(sp)
    17d8:	8faf0018 	lw	t7,24(sp)
    17dc:	240e0008 	li	t6,8
    17e0:	24180009 	li	t8,9
    17e4:	adee0164 	sw	t6,356(t7)
    17e8:	8fb90018 	lw	t9,24(sp)
    17ec:	af380168 	sw	t8,360(t9)
    17f0:	8fbf0014 	lw	ra,20(sp)
    17f4:	27bd0018 	addiu	sp,sp,24
    17f8:	03e00008 	jr	ra
    17fc:	00000000 	nop

00001800 <func_8097A130>:
    1800:	27bdffe8 	addiu	sp,sp,-24
    1804:	afbf0014 	sw	ra,20(sp)
    1808:	0c000000 	jal	0 <func_80978930>
    180c:	afa40018 	sw	a0,24(sp)
    1810:	50400004 	beqzl	v0,1824 <func_8097A130+0x24>
    1814:	8fbf0014 	lw	ra,20(sp)
    1818:	0c000000 	jal	0 <func_80978930>
    181c:	8fa40018 	lw	a0,24(sp)
    1820:	8fbf0014 	lw	ra,20(sp)
    1824:	27bd0018 	addiu	sp,sp,24
    1828:	03e00008 	jr	ra
    182c:	00000000 	nop

00001830 <func_8097A160>:
    1830:	27bdffe8 	addiu	sp,sp,-24
    1834:	afbf0014 	sw	ra,20(sp)
    1838:	afa40018 	sw	a0,24(sp)
    183c:	0c000000 	jal	0 <func_80978930>
    1840:	afa5001c 	sw	a1,28(sp)
    1844:	8fa40018 	lw	a0,24(sp)
    1848:	0c000000 	jal	0 <func_80978930>
    184c:	8fa5001c 	lw	a1,28(sp)
    1850:	8fbf0014 	lw	ra,20(sp)
    1854:	27bd0018 	addiu	sp,sp,24
    1858:	03e00008 	jr	ra
    185c:	00000000 	nop

00001860 <func_8097A190>:
    1860:	27bdffe8 	addiu	sp,sp,-24
    1864:	afbf0014 	sw	ra,20(sp)
    1868:	afa40018 	sw	a0,24(sp)
    186c:	0c000000 	jal	0 <func_80978930>
    1870:	afa5001c 	sw	a1,28(sp)
    1874:	8fa40018 	lw	a0,24(sp)
    1878:	0c000000 	jal	0 <func_80978930>
    187c:	8fa5001c 	lw	a1,28(sp)
    1880:	8fbf0014 	lw	ra,20(sp)
    1884:	27bd0018 	addiu	sp,sp,24
    1888:	03e00008 	jr	ra
    188c:	00000000 	nop

00001890 <func_8097A1C0>:
    1890:	27bdffe8 	addiu	sp,sp,-24
    1894:	afbf0014 	sw	ra,20(sp)
    1898:	3c060600 	lui	a2,0x600
    189c:	0c000000 	jal	0 <func_80978930>
    18a0:	24c61d20 	addiu	a2,a2,7456
    18a4:	8fbf0014 	lw	ra,20(sp)
    18a8:	27bd0018 	addiu	sp,sp,24
    18ac:	03e00008 	jr	ra
    18b0:	00000000 	nop

000018b4 <func_8097A1E4>:
    18b4:	27bdffe8 	addiu	sp,sp,-24
    18b8:	afbf0014 	sw	ra,20(sp)
    18bc:	3c060600 	lui	a2,0x600
    18c0:	0c000000 	jal	0 <func_80978930>
    18c4:	24c61d20 	addiu	a2,a2,7456
    18c8:	8fbf0014 	lw	ra,20(sp)
    18cc:	27bd0018 	addiu	sp,sp,24
    18d0:	03e00008 	jr	ra
    18d4:	00000000 	nop

000018d8 <func_8097A208>:
    18d8:	27bdffe0 	addiu	sp,sp,-32
    18dc:	3c0e0600 	lui	t6,0x600
    18e0:	afbf001c 	sw	ra,28(sp)
    18e4:	25ce2448 	addiu	t6,t6,9288
    18e8:	afae0010 	sw	t6,16(sp)
    18ec:	24060002 	li	a2,2
    18f0:	0c000000 	jal	0 <func_80978930>
    18f4:	24070003 	li	a3,3
    18f8:	8fbf001c 	lw	ra,28(sp)
    18fc:	27bd0020 	addiu	sp,sp,32
    1900:	03e00008 	jr	ra
    1904:	00000000 	nop

00001908 <func_8097A238>:
    1908:	27bdffe8 	addiu	sp,sp,-24
    190c:	afbf0014 	sw	ra,20(sp)
    1910:	afa5001c 	sw	a1,28(sp)
    1914:	0c000000 	jal	0 <func_80978930>
    1918:	afa40018 	sw	a0,24(sp)
    191c:	3c020000 	lui	v0,0x0
    1920:	24420000 	addiu	v0,v0,0
    1924:	8fa40018 	lw	a0,24(sp)
    1928:	8c4f0000 	lw	t7,0(v0)
    192c:	848e016c 	lh	t6,364(a0)
    1930:	85f81492 	lh	t8,5266(t7)
    1934:	8488016e 	lh	t0,366(a0)
    1938:	01d8c821 	addu	t9,t6,t8
    193c:	a499016c 	sh	t9,364(a0)
    1940:	8c490000 	lw	t1,0(v0)
    1944:	848e0170 	lh	t6,368(a0)
    1948:	852a1494 	lh	t2,5268(t1)
    194c:	254d03e8 	addiu	t5,t2,1000
    1950:	010d7821 	addu	t7,t0,t5
    1954:	a48f016e 	sh	t7,366(a0)
    1958:	8c580000 	lw	t8,0(v0)
    195c:	87191496 	lh	t9,5270(t8)
    1960:	272b0bb8 	addiu	t3,t9,3000
    1964:	01cb6021 	addu	t4,t6,t3
    1968:	a48c0170 	sh	t4,368(a0)
    196c:	0c000000 	jal	0 <func_80978930>
    1970:	8fa5001c 	lw	a1,28(sp)
    1974:	8fbf0014 	lw	ra,20(sp)
    1978:	27bd0018 	addiu	sp,sp,24
    197c:	03e00008 	jr	ra
    1980:	00000000 	nop

00001984 <func_8097A2B4>:
    1984:	27bdffe8 	addiu	sp,sp,-24
    1988:	afbf0014 	sw	ra,20(sp)
    198c:	afa5001c 	sw	a1,28(sp)
    1990:	8c8e017c 	lw	t6,380(a0)
    1994:	3c020001 	lui	v0,0x1
    1998:	00803825 	move	a3,a0
    199c:	15c00010 	bnez	t6,19e0 <func_8097A2B4+0x5c>
    19a0:	00451021 	addu	v0,v0,a1
    19a4:	8c421de4 	lw	v0,7652(v0)
    19a8:	24010003 	li	at,3
    19ac:	00a02025 	move	a0,a1
    19b0:	0041001b 	divu	zero,v0,at
    19b4:	00001810 	mfhi	v1
    19b8:	24010001 	li	at,1
    19bc:	14610006 	bne	v1,at,19d8 <func_8097A2B4+0x54>
    19c0:	3c050000 	lui	a1,0x0
    19c4:	24a50000 	addiu	a1,a1,0
    19c8:	3c064396 	lui	a2,0x4396
    19cc:	0c000000 	jal	0 <func_80978930>
    19d0:	afa70018 	sw	a3,24(sp)
    19d4:	8fa70018 	lw	a3,24(sp)
    19d8:	0c000000 	jal	0 <func_80978930>
    19dc:	00e02025 	move	a0,a3
    19e0:	8fbf0014 	lw	ra,20(sp)
    19e4:	27bd0018 	addiu	sp,sp,24
    19e8:	03e00008 	jr	ra
    19ec:	00000000 	nop

000019f0 <func_8097A320>:
    19f0:	27bdffe8 	addiu	sp,sp,-24
    19f4:	afbf0014 	sw	ra,20(sp)
    19f8:	afa40018 	sw	a0,24(sp)
    19fc:	0c000000 	jal	0 <func_80978930>
    1a00:	afa5001c 	sw	a1,28(sp)
    1a04:	10400009 	beqz	v0,1a2c <func_8097A320+0x3c>
    1a08:	8fa40018 	lw	a0,24(sp)
    1a0c:	0c000000 	jal	0 <func_80978930>
    1a10:	8fa5001c 	lw	a1,28(sp)
    1a14:	8faf0018 	lw	t7,24(sp)
    1a18:	240e0009 	li	t6,9
    1a1c:	2418000a 	li	t8,10
    1a20:	adee0164 	sw	t6,356(t7)
    1a24:	8fb90018 	lw	t9,24(sp)
    1a28:	af380168 	sw	t8,360(t9)
    1a2c:	8fbf0014 	lw	ra,20(sp)
    1a30:	27bd0018 	addiu	sp,sp,24
    1a34:	03e00008 	jr	ra
    1a38:	00000000 	nop

00001a3c <func_8097A36C>:
    1a3c:	27bdffe8 	addiu	sp,sp,-24
    1a40:	afbf0014 	sw	ra,20(sp)
    1a44:	0c000000 	jal	0 <func_80978930>
    1a48:	afa40018 	sw	a0,24(sp)
    1a4c:	50400004 	beqzl	v0,1a60 <func_8097A36C+0x24>
    1a50:	8fbf0014 	lw	ra,20(sp)
    1a54:	0c000000 	jal	0 <func_80978930>
    1a58:	8fa40018 	lw	a0,24(sp)
    1a5c:	8fbf0014 	lw	ra,20(sp)
    1a60:	27bd0018 	addiu	sp,sp,24
    1a64:	03e00008 	jr	ra
    1a68:	00000000 	nop

00001a6c <func_8097A39C>:
    1a6c:	27bdffe8 	addiu	sp,sp,-24
    1a70:	afbf0014 	sw	ra,20(sp)
    1a74:	afa40018 	sw	a0,24(sp)
    1a78:	0c000000 	jal	0 <func_80978930>
    1a7c:	afa5001c 	sw	a1,28(sp)
    1a80:	8fa40018 	lw	a0,24(sp)
    1a84:	0c000000 	jal	0 <func_80978930>
    1a88:	8fa5001c 	lw	a1,28(sp)
    1a8c:	8fbf0014 	lw	ra,20(sp)
    1a90:	27bd0018 	addiu	sp,sp,24
    1a94:	03e00008 	jr	ra
    1a98:	00000000 	nop

00001a9c <func_8097A3CC>:
    1a9c:	27bdffe8 	addiu	sp,sp,-24
    1aa0:	afbf0014 	sw	ra,20(sp)
    1aa4:	afa40018 	sw	a0,24(sp)
    1aa8:	0c000000 	jal	0 <func_80978930>
    1aac:	afa5001c 	sw	a1,28(sp)
    1ab0:	8fa40018 	lw	a0,24(sp)
    1ab4:	0c000000 	jal	0 <func_80978930>
    1ab8:	8fa5001c 	lw	a1,28(sp)
    1abc:	8fbf0014 	lw	ra,20(sp)
    1ac0:	27bd0018 	addiu	sp,sp,24
    1ac4:	03e00008 	jr	ra
    1ac8:	00000000 	nop

00001acc <func_8097A3FC>:
    1acc:	27bdffe8 	addiu	sp,sp,-24
    1ad0:	afbf0014 	sw	ra,20(sp)
    1ad4:	3c060600 	lui	a2,0x600
    1ad8:	0c000000 	jal	0 <func_80978930>
    1adc:	24c62160 	addiu	a2,a2,8544
    1ae0:	8fbf0014 	lw	ra,20(sp)
    1ae4:	27bd0018 	addiu	sp,sp,24
    1ae8:	03e00008 	jr	ra
    1aec:	00000000 	nop

00001af0 <func_8097A420>:
    1af0:	27bdffe8 	addiu	sp,sp,-24
    1af4:	afbf0014 	sw	ra,20(sp)
    1af8:	3c060600 	lui	a2,0x600
    1afc:	0c000000 	jal	0 <func_80978930>
    1b00:	24c62160 	addiu	a2,a2,8544
    1b04:	8fbf0014 	lw	ra,20(sp)
    1b08:	27bd0018 	addiu	sp,sp,24
    1b0c:	03e00008 	jr	ra
    1b10:	00000000 	nop

00001b14 <func_8097A444>:
    1b14:	27bdffe0 	addiu	sp,sp,-32
    1b18:	3c0e0600 	lui	t6,0x600
    1b1c:	afbf001c 	sw	ra,28(sp)
    1b20:	25ce2850 	addiu	t6,t6,10320
    1b24:	afae0010 	sw	t6,16(sp)
    1b28:	24060003 	li	a2,3
    1b2c:	0c000000 	jal	0 <func_80978930>
    1b30:	24070004 	li	a3,4
    1b34:	8fbf001c 	lw	ra,28(sp)
    1b38:	27bd0020 	addiu	sp,sp,32
    1b3c:	03e00008 	jr	ra
    1b40:	00000000 	nop

00001b44 <func_8097A474>:
    1b44:	27bdffe8 	addiu	sp,sp,-24
    1b48:	afbf0014 	sw	ra,20(sp)
    1b4c:	afa5001c 	sw	a1,28(sp)
    1b50:	0c000000 	jal	0 <func_80978930>
    1b54:	afa40018 	sw	a0,24(sp)
    1b58:	3c020000 	lui	v0,0x0
    1b5c:	24420000 	addiu	v0,v0,0
    1b60:	8fa40018 	lw	a0,24(sp)
    1b64:	8c4f0000 	lw	t7,0(v0)
    1b68:	848e016c 	lh	t6,364(a0)
    1b6c:	85f814ac 	lh	t8,5292(t7)
    1b70:	8488016e 	lh	t0,366(a0)
    1b74:	01d8c821 	addu	t9,t6,t8
    1b78:	a499016c 	sh	t9,364(a0)
    1b7c:	8c490000 	lw	t1,0(v0)
    1b80:	848e0170 	lh	t6,368(a0)
    1b84:	852a14ae 	lh	t2,5294(t1)
    1b88:	254d03e8 	addiu	t5,t2,1000
    1b8c:	010d7821 	addu	t7,t0,t5
    1b90:	a48f016e 	sh	t7,366(a0)
    1b94:	8c580000 	lw	t8,0(v0)
    1b98:	871914b0 	lh	t9,5296(t8)
    1b9c:	272b0bb8 	addiu	t3,t9,3000
    1ba0:	01cb6021 	addu	t4,t6,t3
    1ba4:	a48c0170 	sh	t4,368(a0)
    1ba8:	0c000000 	jal	0 <func_80978930>
    1bac:	8fa5001c 	lw	a1,28(sp)
    1bb0:	8fbf0014 	lw	ra,20(sp)
    1bb4:	27bd0018 	addiu	sp,sp,24
    1bb8:	03e00008 	jr	ra
    1bbc:	00000000 	nop

00001bc0 <func_8097A4F0>:
    1bc0:	27bdffe8 	addiu	sp,sp,-24
    1bc4:	afbf0014 	sw	ra,20(sp)
    1bc8:	afa40018 	sw	a0,24(sp)
    1bcc:	0c000000 	jal	0 <func_80978930>
    1bd0:	afa5001c 	sw	a1,28(sp)
    1bd4:	10400009 	beqz	v0,1bfc <func_8097A4F0+0x3c>
    1bd8:	8fa40018 	lw	a0,24(sp)
    1bdc:	0c000000 	jal	0 <func_80978930>
    1be0:	8fa5001c 	lw	a1,28(sp)
    1be4:	8faf0018 	lw	t7,24(sp)
    1be8:	240e000a 	li	t6,10
    1bec:	2418000b 	li	t8,11
    1bf0:	adee0164 	sw	t6,356(t7)
    1bf4:	8fb90018 	lw	t9,24(sp)
    1bf8:	af380168 	sw	t8,360(t9)
    1bfc:	8fbf0014 	lw	ra,20(sp)
    1c00:	27bd0018 	addiu	sp,sp,24
    1c04:	03e00008 	jr	ra
    1c08:	00000000 	nop

00001c0c <func_8097A53C>:
    1c0c:	27bdffe8 	addiu	sp,sp,-24
    1c10:	afbf0014 	sw	ra,20(sp)
    1c14:	0c000000 	jal	0 <func_80978930>
    1c18:	afa40018 	sw	a0,24(sp)
    1c1c:	50400004 	beqzl	v0,1c30 <func_8097A53C+0x24>
    1c20:	8fbf0014 	lw	ra,20(sp)
    1c24:	0c000000 	jal	0 <func_80978930>
    1c28:	8fa40018 	lw	a0,24(sp)
    1c2c:	8fbf0014 	lw	ra,20(sp)
    1c30:	27bd0018 	addiu	sp,sp,24
    1c34:	03e00008 	jr	ra
    1c38:	00000000 	nop

00001c3c <func_8097A56C>:
    1c3c:	27bdffe8 	addiu	sp,sp,-24
    1c40:	afbf0014 	sw	ra,20(sp)
    1c44:	afa40018 	sw	a0,24(sp)
    1c48:	0c000000 	jal	0 <func_80978930>
    1c4c:	afa5001c 	sw	a1,28(sp)
    1c50:	8fa40018 	lw	a0,24(sp)
    1c54:	0c000000 	jal	0 <func_80978930>
    1c58:	8fa5001c 	lw	a1,28(sp)
    1c5c:	8fbf0014 	lw	ra,20(sp)
    1c60:	27bd0018 	addiu	sp,sp,24
    1c64:	03e00008 	jr	ra
    1c68:	00000000 	nop

00001c6c <func_8097A59C>:
    1c6c:	27bdffe8 	addiu	sp,sp,-24
    1c70:	afbf0014 	sw	ra,20(sp)
    1c74:	afa40018 	sw	a0,24(sp)
    1c78:	0c000000 	jal	0 <func_80978930>
    1c7c:	afa5001c 	sw	a1,28(sp)
    1c80:	8fa40018 	lw	a0,24(sp)
    1c84:	0c000000 	jal	0 <func_80978930>
    1c88:	8fa5001c 	lw	a1,28(sp)
    1c8c:	8fbf0014 	lw	ra,20(sp)
    1c90:	27bd0018 	addiu	sp,sp,24
    1c94:	03e00008 	jr	ra
    1c98:	00000000 	nop

00001c9c <func_8097A5CC>:
    1c9c:	27bdffe8 	addiu	sp,sp,-24
    1ca0:	afbf0014 	sw	ra,20(sp)
    1ca4:	3c060600 	lui	a2,0x600
    1ca8:	0c000000 	jal	0 <func_80978930>
    1cac:	24c62600 	addiu	a2,a2,9728
    1cb0:	8fbf0014 	lw	ra,20(sp)
    1cb4:	27bd0018 	addiu	sp,sp,24
    1cb8:	03e00008 	jr	ra
    1cbc:	00000000 	nop

00001cc0 <func_8097A5F0>:
    1cc0:	27bdffe8 	addiu	sp,sp,-24
    1cc4:	afbf0014 	sw	ra,20(sp)
    1cc8:	3c060600 	lui	a2,0x600
    1ccc:	0c000000 	jal	0 <func_80978930>
    1cd0:	24c62600 	addiu	a2,a2,9728
    1cd4:	8fbf0014 	lw	ra,20(sp)
    1cd8:	27bd0018 	addiu	sp,sp,24
    1cdc:	03e00008 	jr	ra
    1ce0:	00000000 	nop

00001ce4 <func_8097A614>:
    1ce4:	27bdffe0 	addiu	sp,sp,-32
    1ce8:	3c0e0600 	lui	t6,0x600
    1cec:	afbf001c 	sw	ra,28(sp)
    1cf0:	25ce2d28 	addiu	t6,t6,11560
    1cf4:	afae0010 	sw	t6,16(sp)
    1cf8:	24060004 	li	a2,4
    1cfc:	0c000000 	jal	0 <func_80978930>
    1d00:	24070005 	li	a3,5
    1d04:	8fbf001c 	lw	ra,28(sp)
    1d08:	27bd0020 	addiu	sp,sp,32
    1d0c:	03e00008 	jr	ra
    1d10:	00000000 	nop

00001d14 <func_8097A644>:
    1d14:	27bdffe8 	addiu	sp,sp,-24
    1d18:	afbf0014 	sw	ra,20(sp)
    1d1c:	afa5001c 	sw	a1,28(sp)
    1d20:	0c000000 	jal	0 <func_80978930>
    1d24:	afa40018 	sw	a0,24(sp)
    1d28:	3c020000 	lui	v0,0x0
    1d2c:	24420000 	addiu	v0,v0,0
    1d30:	8fa40018 	lw	a0,24(sp)
    1d34:	8c4f0000 	lw	t7,0(v0)
    1d38:	848e016c 	lh	t6,364(a0)
    1d3c:	85f814c6 	lh	t8,5318(t7)
    1d40:	8488016e 	lh	t0,366(a0)
    1d44:	01d8c821 	addu	t9,t6,t8
    1d48:	a499016c 	sh	t9,364(a0)
    1d4c:	8c490000 	lw	t1,0(v0)
    1d50:	848e0170 	lh	t6,368(a0)
    1d54:	852a14c8 	lh	t2,5320(t1)
    1d58:	254d03e8 	addiu	t5,t2,1000
    1d5c:	010d7821 	addu	t7,t0,t5
    1d60:	a48f016e 	sh	t7,366(a0)
    1d64:	8c580000 	lw	t8,0(v0)
    1d68:	871914ca 	lh	t9,5322(t8)
    1d6c:	272b0bb8 	addiu	t3,t9,3000
    1d70:	01cb6021 	addu	t4,t6,t3
    1d74:	a48c0170 	sh	t4,368(a0)
    1d78:	0c000000 	jal	0 <func_80978930>
    1d7c:	8fa5001c 	lw	a1,28(sp)
    1d80:	8fbf0014 	lw	ra,20(sp)
    1d84:	27bd0018 	addiu	sp,sp,24
    1d88:	03e00008 	jr	ra
    1d8c:	00000000 	nop

00001d90 <func_8097A6C0>:
    1d90:	27bdffe8 	addiu	sp,sp,-24
    1d94:	afbf0014 	sw	ra,20(sp)
    1d98:	afa40018 	sw	a0,24(sp)
    1d9c:	0c000000 	jal	0 <func_80978930>
    1da0:	afa5001c 	sw	a1,28(sp)
    1da4:	10400009 	beqz	v0,1dcc <func_8097A6C0+0x3c>
    1da8:	8fa40018 	lw	a0,24(sp)
    1dac:	0c000000 	jal	0 <func_80978930>
    1db0:	8fa5001c 	lw	a1,28(sp)
    1db4:	8faf0018 	lw	t7,24(sp)
    1db8:	240e000b 	li	t6,11
    1dbc:	2418000c 	li	t8,12
    1dc0:	adee0164 	sw	t6,356(t7)
    1dc4:	8fb90018 	lw	t9,24(sp)
    1dc8:	af380168 	sw	t8,360(t9)
    1dcc:	8fbf0014 	lw	ra,20(sp)
    1dd0:	27bd0018 	addiu	sp,sp,24
    1dd4:	03e00008 	jr	ra
    1dd8:	00000000 	nop

00001ddc <func_8097A70C>:
    1ddc:	27bdffe8 	addiu	sp,sp,-24
    1de0:	afbf0014 	sw	ra,20(sp)
    1de4:	0c000000 	jal	0 <func_80978930>
    1de8:	afa40018 	sw	a0,24(sp)
    1dec:	50400004 	beqzl	v0,1e00 <func_8097A70C+0x24>
    1df0:	8fbf0014 	lw	ra,20(sp)
    1df4:	0c000000 	jal	0 <func_80978930>
    1df8:	8fa40018 	lw	a0,24(sp)
    1dfc:	8fbf0014 	lw	ra,20(sp)
    1e00:	27bd0018 	addiu	sp,sp,24
    1e04:	03e00008 	jr	ra
    1e08:	00000000 	nop

00001e0c <func_8097A73C>:
    1e0c:	27bdffe8 	addiu	sp,sp,-24
    1e10:	afbf0014 	sw	ra,20(sp)
    1e14:	afa40018 	sw	a0,24(sp)
    1e18:	0c000000 	jal	0 <func_80978930>
    1e1c:	afa5001c 	sw	a1,28(sp)
    1e20:	8fa40018 	lw	a0,24(sp)
    1e24:	0c000000 	jal	0 <func_80978930>
    1e28:	8fa5001c 	lw	a1,28(sp)
    1e2c:	8fbf0014 	lw	ra,20(sp)
    1e30:	27bd0018 	addiu	sp,sp,24
    1e34:	03e00008 	jr	ra
    1e38:	00000000 	nop

00001e3c <func_8097A76C>:
    1e3c:	27bdffe8 	addiu	sp,sp,-24
    1e40:	afbf0014 	sw	ra,20(sp)
    1e44:	afa40018 	sw	a0,24(sp)
    1e48:	0c000000 	jal	0 <func_80978930>
    1e4c:	afa5001c 	sw	a1,28(sp)
    1e50:	8fa40018 	lw	a0,24(sp)
    1e54:	0c000000 	jal	0 <func_80978930>
    1e58:	8fa5001c 	lw	a1,28(sp)
    1e5c:	8fbf0014 	lw	ra,20(sp)
    1e60:	27bd0018 	addiu	sp,sp,24
    1e64:	03e00008 	jr	ra
    1e68:	00000000 	nop

00001e6c <func_8097A79C>:
    1e6c:	27bdffe8 	addiu	sp,sp,-24
    1e70:	afbf0014 	sw	ra,20(sp)
    1e74:	3c060600 	lui	a2,0x600
    1e78:	0c000000 	jal	0 <func_80978930>
    1e7c:	24c62a40 	addiu	a2,a2,10816
    1e80:	8fbf0014 	lw	ra,20(sp)
    1e84:	27bd0018 	addiu	sp,sp,24
    1e88:	03e00008 	jr	ra
    1e8c:	00000000 	nop

00001e90 <func_8097A7C0>:
    1e90:	27bdffe8 	addiu	sp,sp,-24
    1e94:	afbf0014 	sw	ra,20(sp)
    1e98:	3c060600 	lui	a2,0x600
    1e9c:	0c000000 	jal	0 <func_80978930>
    1ea0:	24c62a40 	addiu	a2,a2,10816
    1ea4:	8fbf0014 	lw	ra,20(sp)
    1ea8:	27bd0018 	addiu	sp,sp,24
    1eac:	03e00008 	jr	ra
    1eb0:	00000000 	nop

00001eb4 <func_8097A7E4>:
    1eb4:	27bdffe0 	addiu	sp,sp,-32
    1eb8:	3c0e0600 	lui	t6,0x600
    1ebc:	afbf001c 	sw	ra,28(sp)
    1ec0:	25ce2fe4 	addiu	t6,t6,12260
    1ec4:	afae0010 	sw	t6,16(sp)
    1ec8:	24060005 	li	a2,5
    1ecc:	0c000000 	jal	0 <func_80978930>
    1ed0:	24070006 	li	a3,6
    1ed4:	8fbf001c 	lw	ra,28(sp)
    1ed8:	27bd0020 	addiu	sp,sp,32
    1edc:	03e00008 	jr	ra
    1ee0:	00000000 	nop

00001ee4 <func_8097A814>:
    1ee4:	27bdffe8 	addiu	sp,sp,-24
    1ee8:	afbf0014 	sw	ra,20(sp)
    1eec:	afa5001c 	sw	a1,28(sp)
    1ef0:	0c000000 	jal	0 <func_80978930>
    1ef4:	afa40018 	sw	a0,24(sp)
    1ef8:	3c020000 	lui	v0,0x0
    1efc:	24420000 	addiu	v0,v0,0
    1f00:	8fa40018 	lw	a0,24(sp)
    1f04:	8c4f0000 	lw	t7,0(v0)
    1f08:	848e016c 	lh	t6,364(a0)
    1f0c:	85f814e0 	lh	t8,5344(t7)
    1f10:	8488016e 	lh	t0,366(a0)
    1f14:	01d8c821 	addu	t9,t6,t8
    1f18:	a499016c 	sh	t9,364(a0)
    1f1c:	8c490000 	lw	t1,0(v0)
    1f20:	848e0170 	lh	t6,368(a0)
    1f24:	852a14e2 	lh	t2,5346(t1)
    1f28:	254d03e8 	addiu	t5,t2,1000
    1f2c:	010d7821 	addu	t7,t0,t5
    1f30:	a48f016e 	sh	t7,366(a0)
    1f34:	8c580000 	lw	t8,0(v0)
    1f38:	871914e4 	lh	t9,5348(t8)
    1f3c:	272b0bb8 	addiu	t3,t9,3000
    1f40:	01cb6021 	addu	t4,t6,t3
    1f44:	a48c0170 	sh	t4,368(a0)
    1f48:	0c000000 	jal	0 <func_80978930>
    1f4c:	8fa5001c 	lw	a1,28(sp)
    1f50:	8fbf0014 	lw	ra,20(sp)
    1f54:	27bd0018 	addiu	sp,sp,24
    1f58:	03e00008 	jr	ra
    1f5c:	00000000 	nop

00001f60 <func_8097A890>:
    1f60:	27bdffe8 	addiu	sp,sp,-24
    1f64:	afbf0014 	sw	ra,20(sp)
    1f68:	afa40018 	sw	a0,24(sp)
    1f6c:	0c000000 	jal	0 <func_80978930>
    1f70:	afa5001c 	sw	a1,28(sp)
    1f74:	10400009 	beqz	v0,1f9c <func_8097A890+0x3c>
    1f78:	8fa40018 	lw	a0,24(sp)
    1f7c:	0c000000 	jal	0 <func_80978930>
    1f80:	8fa5001c 	lw	a1,28(sp)
    1f84:	8faf0018 	lw	t7,24(sp)
    1f88:	240e000c 	li	t6,12
    1f8c:	2418000d 	li	t8,13
    1f90:	adee0164 	sw	t6,356(t7)
    1f94:	8fb90018 	lw	t9,24(sp)
    1f98:	af380168 	sw	t8,360(t9)
    1f9c:	8fbf0014 	lw	ra,20(sp)
    1fa0:	27bd0018 	addiu	sp,sp,24
    1fa4:	03e00008 	jr	ra
    1fa8:	00000000 	nop

00001fac <func_8097A8DC>:
    1fac:	27bdffe8 	addiu	sp,sp,-24
    1fb0:	afbf0014 	sw	ra,20(sp)
    1fb4:	0c000000 	jal	0 <func_80978930>
    1fb8:	afa40018 	sw	a0,24(sp)
    1fbc:	50400004 	beqzl	v0,1fd0 <func_8097A8DC+0x24>
    1fc0:	8fbf0014 	lw	ra,20(sp)
    1fc4:	0c000000 	jal	0 <func_80978930>
    1fc8:	8fa40018 	lw	a0,24(sp)
    1fcc:	8fbf0014 	lw	ra,20(sp)
    1fd0:	27bd0018 	addiu	sp,sp,24
    1fd4:	03e00008 	jr	ra
    1fd8:	00000000 	nop

00001fdc <func_8097A90C>:
    1fdc:	27bdffe8 	addiu	sp,sp,-24
    1fe0:	afbf0014 	sw	ra,20(sp)
    1fe4:	afa40018 	sw	a0,24(sp)
    1fe8:	0c000000 	jal	0 <func_80978930>
    1fec:	afa5001c 	sw	a1,28(sp)
    1ff0:	8fa40018 	lw	a0,24(sp)
    1ff4:	0c000000 	jal	0 <func_80978930>
    1ff8:	8fa5001c 	lw	a1,28(sp)
    1ffc:	8fbf0014 	lw	ra,20(sp)
    2000:	27bd0018 	addiu	sp,sp,24
    2004:	03e00008 	jr	ra
    2008:	00000000 	nop

0000200c <func_8097A93C>:
    200c:	27bdffe8 	addiu	sp,sp,-24
    2010:	afbf0014 	sw	ra,20(sp)
    2014:	afa40018 	sw	a0,24(sp)
    2018:	0c000000 	jal	0 <func_80978930>
    201c:	afa5001c 	sw	a1,28(sp)
    2020:	8fa40018 	lw	a0,24(sp)
    2024:	0c000000 	jal	0 <func_80978930>
    2028:	8fa5001c 	lw	a1,28(sp)
    202c:	8fbf0014 	lw	ra,20(sp)
    2030:	27bd0018 	addiu	sp,sp,24
    2034:	03e00008 	jr	ra
    2038:	00000000 	nop

0000203c <func_8097A96C>:
    203c:	27bdffe8 	addiu	sp,sp,-24
    2040:	afbf0014 	sw	ra,20(sp)
    2044:	3c060600 	lui	a2,0x600
    2048:	0c000000 	jal	0 <func_80978930>
    204c:	24c62e80 	addiu	a2,a2,11904
    2050:	8fbf0014 	lw	ra,20(sp)
    2054:	27bd0018 	addiu	sp,sp,24
    2058:	03e00008 	jr	ra
    205c:	00000000 	nop

00002060 <func_8097A990>:
    2060:	27bdffe8 	addiu	sp,sp,-24
    2064:	afbf0014 	sw	ra,20(sp)
    2068:	3c060600 	lui	a2,0x600
    206c:	0c000000 	jal	0 <func_80978930>
    2070:	24c62e80 	addiu	a2,a2,11904
    2074:	8fbf0014 	lw	ra,20(sp)
    2078:	27bd0018 	addiu	sp,sp,24
    207c:	03e00008 	jr	ra
    2080:	00000000 	nop

00002084 <func_8097A9B4>:
    2084:	27bdffe0 	addiu	sp,sp,-32
    2088:	3c0e0600 	lui	t6,0x600
    208c:	afbf001c 	sw	ra,28(sp)
    2090:	25ce33e0 	addiu	t6,t6,13280
    2094:	afae0010 	sw	t6,16(sp)
    2098:	24060006 	li	a2,6
    209c:	0c000000 	jal	0 <func_80978930>
    20a0:	24070007 	li	a3,7
    20a4:	8fbf001c 	lw	ra,28(sp)
    20a8:	27bd0020 	addiu	sp,sp,32
    20ac:	03e00008 	jr	ra
    20b0:	00000000 	nop

000020b4 <func_8097A9E4>:
    20b4:	27bdffe8 	addiu	sp,sp,-24
    20b8:	afbf0014 	sw	ra,20(sp)
    20bc:	afa5001c 	sw	a1,28(sp)
    20c0:	0c000000 	jal	0 <func_80978930>
    20c4:	afa40018 	sw	a0,24(sp)
    20c8:	3c020000 	lui	v0,0x0
    20cc:	24420000 	addiu	v0,v0,0
    20d0:	8fa40018 	lw	a0,24(sp)
    20d4:	8c4f0000 	lw	t7,0(v0)
    20d8:	848e016c 	lh	t6,364(a0)
    20dc:	85f814fa 	lh	t8,5370(t7)
    20e0:	8488016e 	lh	t0,366(a0)
    20e4:	01d8c821 	addu	t9,t6,t8
    20e8:	a499016c 	sh	t9,364(a0)
    20ec:	8c490000 	lw	t1,0(v0)
    20f0:	848e0170 	lh	t6,368(a0)
    20f4:	852a14fc 	lh	t2,5372(t1)
    20f8:	254d03e8 	addiu	t5,t2,1000
    20fc:	010d7821 	addu	t7,t0,t5
    2100:	a48f016e 	sh	t7,366(a0)
    2104:	8c580000 	lw	t8,0(v0)
    2108:	871914fe 	lh	t9,5374(t8)
    210c:	272b0bb8 	addiu	t3,t9,3000
    2110:	01cb6021 	addu	t4,t6,t3
    2114:	a48c0170 	sh	t4,368(a0)
    2118:	0c000000 	jal	0 <func_80978930>
    211c:	8fa5001c 	lw	a1,28(sp)
    2120:	8fbf0014 	lw	ra,20(sp)
    2124:	27bd0018 	addiu	sp,sp,24
    2128:	03e00008 	jr	ra
    212c:	00000000 	nop

00002130 <func_8097AA60>:
    2130:	27bdffe8 	addiu	sp,sp,-24
    2134:	afbf0014 	sw	ra,20(sp)
    2138:	afa40018 	sw	a0,24(sp)
    213c:	0c000000 	jal	0 <func_80978930>
    2140:	afa5001c 	sw	a1,28(sp)
    2144:	10400009 	beqz	v0,216c <func_8097AA60+0x3c>
    2148:	8fa40018 	lw	a0,24(sp)
    214c:	0c000000 	jal	0 <func_80978930>
    2150:	8fa5001c 	lw	a1,28(sp)
    2154:	8faf0018 	lw	t7,24(sp)
    2158:	240e000d 	li	t6,13
    215c:	2418000e 	li	t8,14
    2160:	adee0164 	sw	t6,356(t7)
    2164:	8fb90018 	lw	t9,24(sp)
    2168:	af380168 	sw	t8,360(t9)
    216c:	8fbf0014 	lw	ra,20(sp)
    2170:	27bd0018 	addiu	sp,sp,24
    2174:	03e00008 	jr	ra
    2178:	00000000 	nop

0000217c <func_8097AAAC>:
    217c:	27bdffe8 	addiu	sp,sp,-24
    2180:	afbf0014 	sw	ra,20(sp)
    2184:	0c000000 	jal	0 <func_80978930>
    2188:	afa40018 	sw	a0,24(sp)
    218c:	50400004 	beqzl	v0,21a0 <func_8097AAAC+0x24>
    2190:	8fbf0014 	lw	ra,20(sp)
    2194:	0c000000 	jal	0 <func_80978930>
    2198:	8fa40018 	lw	a0,24(sp)
    219c:	8fbf0014 	lw	ra,20(sp)
    21a0:	27bd0018 	addiu	sp,sp,24
    21a4:	03e00008 	jr	ra
    21a8:	00000000 	nop

000021ac <func_8097AADC>:
    21ac:	27bdffe8 	addiu	sp,sp,-24
    21b0:	afbf0014 	sw	ra,20(sp)
    21b4:	afa40018 	sw	a0,24(sp)
    21b8:	0c000000 	jal	0 <func_80978930>
    21bc:	afa5001c 	sw	a1,28(sp)
    21c0:	8fa40018 	lw	a0,24(sp)
    21c4:	0c000000 	jal	0 <func_80978930>
    21c8:	8fa5001c 	lw	a1,28(sp)
    21cc:	8fbf0014 	lw	ra,20(sp)
    21d0:	27bd0018 	addiu	sp,sp,24
    21d4:	03e00008 	jr	ra
    21d8:	00000000 	nop

000021dc <func_8097AB0C>:
    21dc:	27bdffe8 	addiu	sp,sp,-24
    21e0:	afbf0014 	sw	ra,20(sp)
    21e4:	afa40018 	sw	a0,24(sp)
    21e8:	0c000000 	jal	0 <func_80978930>
    21ec:	afa5001c 	sw	a1,28(sp)
    21f0:	8fa40018 	lw	a0,24(sp)
    21f4:	0c000000 	jal	0 <func_80978930>
    21f8:	8fa5001c 	lw	a1,28(sp)
    21fc:	8fbf0014 	lw	ra,20(sp)
    2200:	27bd0018 	addiu	sp,sp,24
    2204:	03e00008 	jr	ra
    2208:	00000000 	nop

0000220c <func_8097AB3C>:
    220c:	27bdffe8 	addiu	sp,sp,-24
    2210:	afbf0014 	sw	ra,20(sp)
    2214:	3c060600 	lui	a2,0x600
    2218:	0c000000 	jal	0 <func_80978930>
    221c:	24c63190 	addiu	a2,a2,12688
    2220:	8fbf0014 	lw	ra,20(sp)
    2224:	27bd0018 	addiu	sp,sp,24
    2228:	03e00008 	jr	ra
    222c:	00000000 	nop

00002230 <func_8097AB60>:
    2230:	27bdffe8 	addiu	sp,sp,-24
    2234:	afbf0014 	sw	ra,20(sp)
    2238:	3c060600 	lui	a2,0x600
    223c:	0c000000 	jal	0 <func_80978930>
    2240:	24c63190 	addiu	a2,a2,12688
    2244:	8fbf0014 	lw	ra,20(sp)
    2248:	27bd0018 	addiu	sp,sp,24
    224c:	03e00008 	jr	ra
    2250:	00000000 	nop

00002254 <func_8097AB84>:
    2254:	27bdffe0 	addiu	sp,sp,-32
    2258:	3c0e0600 	lui	t6,0x600
    225c:	afbf001c 	sw	ra,28(sp)
    2260:	25ce3af0 	addiu	t6,t6,15088
    2264:	afae0010 	sw	t6,16(sp)
    2268:	24060007 	li	a2,7
    226c:	0c000000 	jal	0 <func_80978930>
    2270:	24070008 	li	a3,8
    2274:	8fbf001c 	lw	ra,28(sp)
    2278:	27bd0020 	addiu	sp,sp,32
    227c:	03e00008 	jr	ra
    2280:	00000000 	nop

00002284 <func_8097ABB4>:
    2284:	27bdffe8 	addiu	sp,sp,-24
    2288:	afbf0014 	sw	ra,20(sp)
    228c:	afa5001c 	sw	a1,28(sp)
    2290:	0c000000 	jal	0 <func_80978930>
    2294:	afa40018 	sw	a0,24(sp)
    2298:	3c020000 	lui	v0,0x0
    229c:	24420000 	addiu	v0,v0,0
    22a0:	8fa40018 	lw	a0,24(sp)
    22a4:	8c4f0000 	lw	t7,0(v0)
    22a8:	848e016c 	lh	t6,364(a0)
    22ac:	85f81472 	lh	t8,5234(t7)
    22b0:	8488016e 	lh	t0,366(a0)
    22b4:	01d8c821 	addu	t9,t6,t8
    22b8:	a499016c 	sh	t9,364(a0)
    22bc:	8c490000 	lw	t1,0(v0)
    22c0:	848e0170 	lh	t6,368(a0)
    22c4:	852a1470 	lh	t2,5232(t1)
    22c8:	254d03e8 	addiu	t5,t2,1000
    22cc:	010d7821 	addu	t7,t0,t5
    22d0:	a48f016e 	sh	t7,366(a0)
    22d4:	8c580000 	lw	t8,0(v0)
    22d8:	8719146e 	lh	t9,5230(t8)
    22dc:	272b0bb8 	addiu	t3,t9,3000
    22e0:	01cb6021 	addu	t4,t6,t3
    22e4:	a48c0170 	sh	t4,368(a0)
    22e8:	0c000000 	jal	0 <func_80978930>
    22ec:	8fa5001c 	lw	a1,28(sp)
    22f0:	8fbf0014 	lw	ra,20(sp)
    22f4:	27bd0018 	addiu	sp,sp,24
    22f8:	03e00008 	jr	ra
    22fc:	00000000 	nop

00002300 <func_8097AC30>:
    2300:	27bdffe8 	addiu	sp,sp,-24
    2304:	afbf0014 	sw	ra,20(sp)
    2308:	afa5001c 	sw	a1,28(sp)
    230c:	8c8e017c 	lw	t6,380(a0)
    2310:	3c020001 	lui	v0,0x1
    2314:	00803825 	move	a3,a0
    2318:	15c00010 	bnez	t6,235c <func_8097AC30+0x5c>
    231c:	00451021 	addu	v0,v0,a1
    2320:	8c421de4 	lw	v0,7652(v0)
    2324:	24010003 	li	at,3
    2328:	00a02025 	move	a0,a1
    232c:	0041001b 	divu	zero,v0,at
    2330:	00001810 	mfhi	v1
    2334:	24010002 	li	at,2
    2338:	14610006 	bne	v1,at,2354 <func_8097AC30+0x54>
    233c:	3c050000 	lui	a1,0x0
    2340:	24a50000 	addiu	a1,a1,0
    2344:	3c064396 	lui	a2,0x4396
    2348:	0c000000 	jal	0 <func_80978930>
    234c:	afa70018 	sw	a3,24(sp)
    2350:	8fa70018 	lw	a3,24(sp)
    2354:	0c000000 	jal	0 <func_80978930>
    2358:	00e02025 	move	a0,a3
    235c:	8fbf0014 	lw	ra,20(sp)
    2360:	27bd0018 	addiu	sp,sp,24
    2364:	03e00008 	jr	ra
    2368:	00000000 	nop

0000236c <func_8097AC9C>:
    236c:	27bdffe8 	addiu	sp,sp,-24
    2370:	afbf0014 	sw	ra,20(sp)
    2374:	afa40018 	sw	a0,24(sp)
    2378:	0c000000 	jal	0 <func_80978930>
    237c:	afa5001c 	sw	a1,28(sp)
    2380:	10400009 	beqz	v0,23a8 <func_8097AC9C+0x3c>
    2384:	8fa40018 	lw	a0,24(sp)
    2388:	0c000000 	jal	0 <func_80978930>
    238c:	8fa5001c 	lw	a1,28(sp)
    2390:	8faf0018 	lw	t7,24(sp)
    2394:	240e000e 	li	t6,14
    2398:	2418000f 	li	t8,15
    239c:	adee0164 	sw	t6,356(t7)
    23a0:	8fb90018 	lw	t9,24(sp)
    23a4:	af380168 	sw	t8,360(t9)
    23a8:	8fbf0014 	lw	ra,20(sp)
    23ac:	27bd0018 	addiu	sp,sp,24
    23b0:	03e00008 	jr	ra
    23b4:	00000000 	nop

000023b8 <func_8097ACE8>:
    23b8:	27bdffe8 	addiu	sp,sp,-24
    23bc:	afbf0014 	sw	ra,20(sp)
    23c0:	0c000000 	jal	0 <func_80978930>
    23c4:	afa40018 	sw	a0,24(sp)
    23c8:	50400004 	beqzl	v0,23dc <func_8097ACE8+0x24>
    23cc:	8fbf0014 	lw	ra,20(sp)
    23d0:	0c000000 	jal	0 <func_80978930>
    23d4:	8fa40018 	lw	a0,24(sp)
    23d8:	8fbf0014 	lw	ra,20(sp)
    23dc:	27bd0018 	addiu	sp,sp,24
    23e0:	03e00008 	jr	ra
    23e4:	00000000 	nop

000023e8 <func_8097AD18>:
    23e8:	27bdffe8 	addiu	sp,sp,-24
    23ec:	afbf0014 	sw	ra,20(sp)
    23f0:	afa40018 	sw	a0,24(sp)
    23f4:	0c000000 	jal	0 <func_80978930>
    23f8:	afa5001c 	sw	a1,28(sp)
    23fc:	8fa40018 	lw	a0,24(sp)
    2400:	0c000000 	jal	0 <func_80978930>
    2404:	8fa5001c 	lw	a1,28(sp)
    2408:	8fbf0014 	lw	ra,20(sp)
    240c:	27bd0018 	addiu	sp,sp,24
    2410:	03e00008 	jr	ra
    2414:	00000000 	nop

00002418 <func_8097AD48>:
    2418:	27bdffe8 	addiu	sp,sp,-24
    241c:	afbf0014 	sw	ra,20(sp)
    2420:	afa40018 	sw	a0,24(sp)
    2424:	0c000000 	jal	0 <func_80978930>
    2428:	afa5001c 	sw	a1,28(sp)
    242c:	8fa40018 	lw	a0,24(sp)
    2430:	0c000000 	jal	0 <func_80978930>
    2434:	8fa5001c 	lw	a1,28(sp)
    2438:	8fbf0014 	lw	ra,20(sp)
    243c:	27bd0018 	addiu	sp,sp,24
    2440:	03e00008 	jr	ra
    2444:	00000000 	nop

00002448 <func_8097AD78>:
    2448:	27bdffe8 	addiu	sp,sp,-24
    244c:	afbf0014 	sw	ra,20(sp)
    2450:	3c060600 	lui	a2,0x600
    2454:	0c000000 	jal	0 <func_80978930>
    2458:	24c63710 	addiu	a2,a2,14096
    245c:	8fbf0014 	lw	ra,20(sp)
    2460:	27bd0018 	addiu	sp,sp,24
    2464:	03e00008 	jr	ra
    2468:	00000000 	nop

0000246c <func_8097AD9C>:
    246c:	27bdffe8 	addiu	sp,sp,-24
    2470:	afbf0014 	sw	ra,20(sp)
    2474:	3c060600 	lui	a2,0x600
    2478:	0c000000 	jal	0 <func_80978930>
    247c:	24c63710 	addiu	a2,a2,14096
    2480:	8fbf0014 	lw	ra,20(sp)
    2484:	27bd0018 	addiu	sp,sp,24
    2488:	03e00008 	jr	ra
    248c:	00000000 	nop

00002490 <func_8097ADC0>:
    2490:	27bdffe0 	addiu	sp,sp,-32
    2494:	3c0e0600 	lui	t6,0x600
    2498:	afbf001c 	sw	ra,28(sp)
    249c:	25ce1b70 	addiu	t6,t6,7024
    24a0:	afae0010 	sw	t6,16(sp)
    24a4:	00003025 	move	a2,zero
    24a8:	0c000000 	jal	0 <func_80978930>
    24ac:	24070001 	li	a3,1
    24b0:	8fbf001c 	lw	ra,28(sp)
    24b4:	27bd0020 	addiu	sp,sp,32
    24b8:	03e00008 	jr	ra
    24bc:	00000000 	nop

000024c0 <func_8097ADF0>:
    24c0:	27bdffe8 	addiu	sp,sp,-24
    24c4:	afbf0014 	sw	ra,20(sp)
    24c8:	afa40018 	sw	a0,24(sp)
    24cc:	0c000000 	jal	0 <func_80978930>
    24d0:	afa5001c 	sw	a1,28(sp)
    24d4:	8fa40018 	lw	a0,24(sp)
    24d8:	0c000000 	jal	0 <func_80978930>
    24dc:	8fa5001c 	lw	a1,28(sp)
    24e0:	8fa40018 	lw	a0,24(sp)
    24e4:	0c000000 	jal	0 <func_80978930>
    24e8:	8fa5001c 	lw	a1,28(sp)
    24ec:	8fa40018 	lw	a0,24(sp)
    24f0:	0c000000 	jal	0 <func_80978930>
    24f4:	8fa5001c 	lw	a1,28(sp)
    24f8:	8fbf0014 	lw	ra,20(sp)
    24fc:	27bd0018 	addiu	sp,sp,24
    2500:	03e00008 	jr	ra
    2504:	00000000 	nop

00002508 <func_8097AE38>:
    2508:	27bdffe8 	addiu	sp,sp,-24
    250c:	afbf0014 	sw	ra,20(sp)
    2510:	3c060600 	lui	a2,0x600
    2514:	0c000000 	jal	0 <func_80978930>
    2518:	24c60dc0 	addiu	a2,a2,3520
    251c:	8fbf0014 	lw	ra,20(sp)
    2520:	27bd0018 	addiu	sp,sp,24
    2524:	03e00008 	jr	ra
    2528:	00000000 	nop

0000252c <func_8097AE5C>:
    252c:	27bdffd8 	addiu	sp,sp,-40
    2530:	afbf0024 	sw	ra,36(sp)
    2534:	afb00020 	sw	s0,32(sp)
    2538:	00808025 	move	s0,a0
    253c:	afa5002c 	sw	a1,44(sp)
    2540:	afa00010 	sw	zero,16(sp)
    2544:	2406000f 	li	a2,15
    2548:	0c000000 	jal	0 <func_80978930>
    254c:	00003825 	move	a3,zero
    2550:	3c070000 	lui	a3,0x0
    2554:	24e70000 	addiu	a3,a3,0
    2558:	02002025 	move	a0,s0
    255c:	8fa5002c 	lw	a1,44(sp)
    2560:	0c000000 	jal	0 <func_80978930>
    2564:	26060184 	addiu	a2,s0,388
    2568:	3c070000 	lui	a3,0x0
    256c:	24e70000 	addiu	a3,a3,0
    2570:	02002025 	move	a0,s0
    2574:	8fa5002c 	lw	a1,44(sp)
    2578:	0c000000 	jal	0 <func_80978930>
    257c:	260601d0 	addiu	a2,s0,464
    2580:	3c070000 	lui	a3,0x0
    2584:	24e70000 	addiu	a3,a3,0
    2588:	02002025 	move	a0,s0
    258c:	8fa5002c 	lw	a1,44(sp)
    2590:	0c000000 	jal	0 <func_80978930>
    2594:	2606021c 	addiu	a2,s0,540
    2598:	8fbf0024 	lw	ra,36(sp)
    259c:	8fb00020 	lw	s0,32(sp)
    25a0:	27bd0028 	addiu	sp,sp,40
    25a4:	03e00008 	jr	ra
    25a8:	00000000 	nop

000025ac <func_8097AEDC>:
    25ac:	afa40000 	sw	a0,0(sp)
    25b0:	03e00008 	jr	ra
    25b4:	afa50004 	sw	a1,4(sp)

000025b8 <func_8097AEE8>:
    25b8:	27bdffc8 	addiu	sp,sp,-56
    25bc:	afa5003c 	sw	a1,60(sp)
    25c0:	00802825 	move	a1,a0
    25c4:	afbf0014 	sw	ra,20(sp)
    25c8:	afa40038 	sw	a0,56(sp)
    25cc:	84840032 	lh	a0,50(a0)
    25d0:	afa50038 	sw	a1,56(sp)
    25d4:	0c000000 	jal	0 <func_80978930>
    25d8:	a7a40022 	sh	a0,34(sp)
    25dc:	87a40022 	lh	a0,34(sp)
    25e0:	0c000000 	jal	0 <func_80978930>
    25e4:	e7a0001c 	swc1	$f0,28(sp)
    25e8:	3c0141a0 	lui	at,0x41a0
    25ec:	c7b2001c 	lwc1	$f18,28(sp)
    25f0:	44812000 	mtc1	at,$f4
    25f4:	8fa50038 	lw	a1,56(sp)
    25f8:	3c01c1a0 	lui	at,0xc1a0
    25fc:	46122082 	mul.s	$f2,$f4,$f18
    2600:	44813000 	mtc1	at,$f6
    2604:	24a20024 	addiu	v0,a1,36
    2608:	c4480008 	lwc1	$f8,8(v0)
    260c:	46003302 	mul.s	$f12,$f6,$f0
    2610:	3c0141a0 	lui	at,0x41a0
    2614:	24a30184 	addiu	v1,a1,388
    2618:	24a401d0 	addiu	a0,a1,464
    261c:	24a6021c 	addiu	a2,a1,540
    2620:	46024280 	add.s	$f10,$f8,$f2
    2624:	44814000 	mtc1	at,$f8
    2628:	3c01c1a0 	lui	at,0xc1a0
    262c:	460c5101 	sub.s	$f4,$f10,$f12
    2630:	46004382 	mul.s	$f14,$f8,$f0
    2634:	44815000 	mtc1	at,$f10
    2638:	3c01c270 	lui	at,0xc270
    263c:	46125402 	mul.s	$f16,$f10,$f18
    2640:	4600218d 	trunc.w.s	$f6,$f4
    2644:	440f3000 	mfc1	t7,$f6
    2648:	00000000 	nop
    264c:	a46f004a 	sh	t7,74(v1)
    2650:	c4440000 	lwc1	$f4,0(v0)
    2654:	460e2180 	add.s	$f6,$f4,$f14
    2658:	46103200 	add.s	$f8,$f6,$f16
    265c:	4600428d 	trunc.w.s	$f10,$f8
    2660:	44195000 	mfc1	t9,$f10
    2664:	00000000 	nop
    2668:	a4790046 	sh	t9,70(v1)
    266c:	c4440004 	lwc1	$f4,4(v0)
    2670:	4600218d 	trunc.w.s	$f6,$f4
    2674:	44093000 	mfc1	t1,$f6
    2678:	00000000 	nop
    267c:	a4690048 	sh	t1,72(v1)
    2680:	c4480008 	lwc1	$f8,8(v0)
    2684:	46104280 	add.s	$f10,$f8,$f16
    2688:	460e5101 	sub.s	$f4,$f10,$f14
    268c:	4600218d 	trunc.w.s	$f6,$f4
    2690:	440b3000 	mfc1	t3,$f6
    2694:	00000000 	nop
    2698:	a48b004a 	sh	t3,74(a0)
    269c:	c4480000 	lwc1	$f8,0(v0)
    26a0:	460c4280 	add.s	$f10,$f8,$f12
    26a4:	46025100 	add.s	$f4,$f10,$f2
    26a8:	4600218d 	trunc.w.s	$f6,$f4
    26ac:	440d3000 	mfc1	t5,$f6
    26b0:	44813000 	mtc1	at,$f6
    26b4:	3c014270 	lui	at,0x4270
    26b8:	a48d0046 	sh	t5,70(a0)
    26bc:	c4480004 	lwc1	$f8,4(v0)
    26c0:	4600428d 	trunc.w.s	$f10,$f8
    26c4:	46123202 	mul.s	$f8,$f6,$f18
    26c8:	44813000 	mtc1	at,$f6
    26cc:	3c01c270 	lui	at,0xc270
    26d0:	440f5000 	mfc1	t7,$f10
    26d4:	00000000 	nop
    26d8:	a48f0048 	sh	t7,72(a0)
    26dc:	c4440008 	lwc1	$f4,8(v0)
    26e0:	46082280 	add.s	$f10,$f4,$f8
    26e4:	46003102 	mul.s	$f4,$f6,$f0
    26e8:	46045201 	sub.s	$f8,$f10,$f4
    26ec:	44812000 	mtc1	at,$f4
    26f0:	3c014270 	lui	at,0x4270
    26f4:	4600418d 	trunc.w.s	$f6,$f8
    26f8:	46002202 	mul.s	$f8,$f4,$f0
    26fc:	44812000 	mtc1	at,$f4
    2700:	44193000 	mfc1	t9,$f6
    2704:	00000000 	nop
    2708:	a4d9004a 	sh	t9,74(a2)
    270c:	c44a0000 	lwc1	$f10,0(v0)
    2710:	46085180 	add.s	$f6,$f10,$f8
    2714:	46122282 	mul.s	$f10,$f4,$f18
    2718:	460a3200 	add.s	$f8,$f6,$f10
    271c:	4600410d 	trunc.w.s	$f4,$f8
    2720:	44092000 	mfc1	t1,$f4
    2724:	00000000 	nop
    2728:	a4c90046 	sh	t1,70(a2)
    272c:	c4460004 	lwc1	$f6,4(v0)
    2730:	4600328d 	trunc.w.s	$f10,$f6
    2734:	440b5000 	mfc1	t3,$f10
    2738:	00000000 	nop
    273c:	a4cb0048 	sh	t3,72(a2)
    2740:	8fbf0014 	lw	ra,20(sp)
    2744:	27bd0038 	addiu	sp,sp,56
    2748:	03e00008 	jr	ra
    274c:	00000000 	nop

00002750 <func_8097B080>:
    2750:	27bdffc0 	addiu	sp,sp,-64
    2754:	afa40040 	sw	a0,64(sp)
    2758:	3c010001 	lui	at,0x1
    275c:	8fa60040 	lw	a2,64(sp)
    2760:	00a03825 	move	a3,a1
    2764:	34211e60 	ori	at,at,0x1e60
    2768:	00a02025 	move	a0,a1
    276c:	afbf0014 	sw	ra,20(sp)
    2770:	00a12821 	addu	a1,a1,at
    2774:	afa5001c 	sw	a1,28(sp)
    2778:	afa70044 	sw	a3,68(sp)
    277c:	0c000000 	jal	0 <func_80978930>
    2780:	24c60184 	addiu	a2,a2,388
    2784:	8fa60040 	lw	a2,64(sp)
    2788:	8fa40044 	lw	a0,68(sp)
    278c:	8fa5001c 	lw	a1,28(sp)
    2790:	0c000000 	jal	0 <func_80978930>
    2794:	24c601d0 	addiu	a2,a2,464
    2798:	8fa60040 	lw	a2,64(sp)
    279c:	8fa40044 	lw	a0,68(sp)
    27a0:	8fa5001c 	lw	a1,28(sp)
    27a4:	0c000000 	jal	0 <func_80978930>
    27a8:	24c6021c 	addiu	a2,a2,540
    27ac:	8fbf0014 	lw	ra,20(sp)
    27b0:	27bd0040 	addiu	sp,sp,64
    27b4:	03e00008 	jr	ra
    27b8:	00000000 	nop

000027bc <func_8097B0EC>:
    27bc:	27bdffd8 	addiu	sp,sp,-40
    27c0:	afbf0014 	sw	ra,20(sp)
    27c4:	c4840024 	lwc1	$f4,36(a0)
    27c8:	00c03825 	move	a3,a2
    27cc:	27a6001c 	addiu	a2,sp,28
    27d0:	e7a4001c 	swc1	$f4,28(sp)
    27d4:	c4860028 	lwc1	$f6,40(a0)
    27d8:	e7a60020 	swc1	$f6,32(sp)
    27dc:	c488002c 	lwc1	$f8,44(a0)
    27e0:	0c000000 	jal	0 <func_80978930>
    27e4:	e7a80024 	swc1	$f8,36(sp)
    27e8:	8fbf0014 	lw	ra,20(sp)
    27ec:	27bd0028 	addiu	sp,sp,40
    27f0:	03e00008 	jr	ra
    27f4:	00000000 	nop

000027f8 <func_8097B128>:
    27f8:	27bdffe8 	addiu	sp,sp,-24
    27fc:	afbf0014 	sw	ra,20(sp)
    2800:	afa5001c 	sw	a1,28(sp)
    2804:	0c000000 	jal	0 <func_80978930>
    2808:	afa40018 	sw	a0,24(sp)
    280c:	10400019 	beqz	v0,2874 <func_8097B128+0x7c>
    2810:	8fa40018 	lw	a0,24(sp)
    2814:	3c060600 	lui	a2,0x600
    2818:	24c61f70 	addiu	a2,a2,8048
    281c:	8fa5001c 	lw	a1,28(sp)
    2820:	0c000000 	jal	0 <func_80978930>
    2824:	afa40018 	sw	a0,24(sp)
    2828:	8fa40018 	lw	a0,24(sp)
    282c:	3c010000 	lui	at,0x0
    2830:	c4200000 	lwc1	$f0,0(at)
    2834:	240e0012 	li	t6,18
    2838:	240f0010 	li	t7,16
    283c:	ac8e0164 	sw	t6,356(a0)
    2840:	ac8f0168 	sw	t7,360(a0)
    2844:	24820050 	addiu	v0,a0,80
    2848:	c4440000 	lwc1	$f4,0(v0)
    284c:	c4480004 	lwc1	$f8,4(v0)
    2850:	c4500008 	lwc1	$f16,8(v0)
    2854:	46002182 	mul.s	$f6,$f4,$f0
    2858:	00000000 	nop
    285c:	46004282 	mul.s	$f10,$f8,$f0
    2860:	00000000 	nop
    2864:	46008482 	mul.s	$f18,$f16,$f0
    2868:	e4460000 	swc1	$f6,0(v0)
    286c:	e44a0004 	swc1	$f10,4(v0)
    2870:	e4520008 	swc1	$f18,8(v0)
    2874:	8fbf0014 	lw	ra,20(sp)
    2878:	27bd0018 	addiu	sp,sp,24
    287c:	03e00008 	jr	ra
    2880:	00000000 	nop

00002884 <func_8097B1B4>:
    2884:	27bdffe8 	addiu	sp,sp,-24
    2888:	afbf0014 	sw	ra,20(sp)
    288c:	afa5001c 	sw	a1,28(sp)
    2890:	afa40018 	sw	a0,24(sp)
    2894:	0c000000 	jal	0 <func_80978930>
    2898:	24860184 	addiu	a2,a0,388
    289c:	10400003 	beqz	v0,28ac <func_8097B1B4+0x28>
    28a0:	8fa40018 	lw	a0,24(sp)
    28a4:	10000011 	b	28ec <func_8097B1B4+0x68>
    28a8:	24020001 	li	v0,1
    28ac:	8fa5001c 	lw	a1,28(sp)
    28b0:	248601d0 	addiu	a2,a0,464
    28b4:	0c000000 	jal	0 <func_80978930>
    28b8:	afa40018 	sw	a0,24(sp)
    28bc:	10400003 	beqz	v0,28cc <func_8097B1B4+0x48>
    28c0:	8fa40018 	lw	a0,24(sp)
    28c4:	10000009 	b	28ec <func_8097B1B4+0x68>
    28c8:	24020001 	li	v0,1
    28cc:	8fa5001c 	lw	a1,28(sp)
    28d0:	0c000000 	jal	0 <func_80978930>
    28d4:	2486021c 	addiu	a2,a0,540
    28d8:	50400004 	beqzl	v0,28ec <func_8097B1B4+0x68>
    28dc:	00001025 	move	v0,zero
    28e0:	10000002 	b	28ec <func_8097B1B4+0x68>
    28e4:	24020001 	li	v0,1
    28e8:	00001025 	move	v0,zero
    28ec:	8fbf0014 	lw	ra,20(sp)
    28f0:	27bd0018 	addiu	sp,sp,24
    28f4:	03e00008 	jr	ra
    28f8:	00000000 	nop

000028fc <func_8097B22C>:
    28fc:	27bdffc0 	addiu	sp,sp,-64
    2900:	afb10018 	sw	s1,24(sp)
    2904:	00a08825 	move	s1,a1
    2908:	afbf001c 	sw	ra,28(sp)
    290c:	afb00014 	sw	s0,20(sp)
    2910:	00808025 	move	s0,a0
    2914:	0c000000 	jal	0 <func_80978930>
    2918:	24050004 	li	a1,4
    291c:	10400005 	beqz	v0,2934 <func_8097B22C+0x38>
    2920:	02002025 	move	a0,s0
    2924:	0c000000 	jal	0 <func_80978930>
    2928:	02002025 	move	a0,s0
    292c:	1000002e 	b	29e8 <func_8097B22C+0xec>
    2930:	02002025 	move	a0,s0
    2934:	0c000000 	jal	0 <func_80978930>
    2938:	02202825 	move	a1,s1
    293c:	10400014 	beqz	v0,2990 <func_8097B22C+0x94>
    2940:	27ae0030 	addiu	t6,sp,48
    2944:	3c0f0000 	lui	t7,0x0
    2948:	25ef0000 	addiu	t7,t7,0
    294c:	8df90000 	lw	t9,0(t7)
    2950:	8df80004 	lw	t8,4(t7)
    2954:	02002025 	move	a0,s0
    2958:	add90000 	sw	t9,0(t6)
    295c:	8df90008 	lw	t9,8(t7)
    2960:	02202825 	move	a1,s1
    2964:	add80004 	sw	t8,4(t6)
    2968:	0c000000 	jal	0 <func_80978930>
    296c:	add90008 	sw	t9,8(t6)
    2970:	02002025 	move	a0,s0
    2974:	02202825 	move	a1,s1
    2978:	0c000000 	jal	0 <func_80978930>
    297c:	27a60030 	addiu	a2,sp,48
    2980:	0c000000 	jal	0 <func_80978930>
    2984:	02002025 	move	a0,s0
    2988:	10000017 	b	29e8 <func_8097B22C+0xec>
    298c:	02002025 	move	a0,s0
    2990:	8e080268 	lw	t0,616(s0)
    2994:	51000014 	beqzl	t0,29e8 <func_8097B22C+0xec>
    2998:	02002025 	move	a0,s0
    299c:	8e0b026c 	lw	t3,620(s0)
    29a0:	27a90024 	addiu	t1,sp,36
    29a4:	44802000 	mtc1	zero,$f4
    29a8:	ad2b0000 	sw	t3,0(t1)
    29ac:	8e0a0270 	lw	t2,624(s0)
    29b0:	02002025 	move	a0,s0
    29b4:	02202825 	move	a1,s1
    29b8:	ad2a0004 	sw	t2,4(t1)
    29bc:	8e0b0274 	lw	t3,628(s0)
    29c0:	ad2b0008 	sw	t3,8(t1)
    29c4:	0c000000 	jal	0 <func_80978930>
    29c8:	e7a40028 	swc1	$f4,40(sp)
    29cc:	02002025 	move	a0,s0
    29d0:	02202825 	move	a1,s1
    29d4:	0c000000 	jal	0 <func_80978930>
    29d8:	27a60024 	addiu	a2,sp,36
    29dc:	0c000000 	jal	0 <func_80978930>
    29e0:	02002025 	move	a0,s0
    29e4:	02002025 	move	a0,s0
    29e8:	0c000000 	jal	0 <func_80978930>
    29ec:	02202825 	move	a1,s1
    29f0:	02002025 	move	a0,s0
    29f4:	0c000000 	jal	0 <func_80978930>
    29f8:	02202825 	move	a1,s1
    29fc:	8fbf001c 	lw	ra,28(sp)
    2a00:	8fb00014 	lw	s0,20(sp)
    2a04:	8fb10018 	lw	s1,24(sp)
    2a08:	03e00008 	jr	ra
    2a0c:	27bd0040 	addiu	sp,sp,64

00002a10 <func_8097B340>:
    2a10:	27bdffe8 	addiu	sp,sp,-24
    2a14:	afbf0014 	sw	ra,20(sp)
    2a18:	afa40018 	sw	a0,24(sp)
    2a1c:	0c000000 	jal	0 <func_80978930>
    2a20:	afa5001c 	sw	a1,28(sp)
    2a24:	8fa40018 	lw	a0,24(sp)
    2a28:	0c000000 	jal	0 <func_80978930>
    2a2c:	8fa5001c 	lw	a1,28(sp)
    2a30:	8fbf0014 	lw	ra,20(sp)
    2a34:	27bd0018 	addiu	sp,sp,24
    2a38:	03e00008 	jr	ra
    2a3c:	00000000 	nop

00002a40 <func_8097B370>:
    2a40:	27bdffe8 	addiu	sp,sp,-24
    2a44:	afbf0014 	sw	ra,20(sp)
    2a48:	afa40018 	sw	a0,24(sp)
    2a4c:	0c000000 	jal	0 <func_80978930>
    2a50:	afa5001c 	sw	a1,28(sp)
    2a54:	8fa40018 	lw	a0,24(sp)
    2a58:	0c000000 	jal	0 <func_80978930>
    2a5c:	8fa5001c 	lw	a1,28(sp)
    2a60:	8fbf0014 	lw	ra,20(sp)
    2a64:	27bd0018 	addiu	sp,sp,24
    2a68:	03e00008 	jr	ra
    2a6c:	00000000 	nop

00002a70 <func_8097B3A0>:
    2a70:	27bdffe8 	addiu	sp,sp,-24
    2a74:	afbf0014 	sw	ra,20(sp)
    2a78:	3c060600 	lui	a2,0x600
    2a7c:	0c000000 	jal	0 <func_80978930>
    2a80:	24c61d20 	addiu	a2,a2,7456
    2a84:	8fbf0014 	lw	ra,20(sp)
    2a88:	27bd0018 	addiu	sp,sp,24
    2a8c:	03e00008 	jr	ra
    2a90:	00000000 	nop

00002a94 <func_8097B3C4>:
    2a94:	27bdffd8 	addiu	sp,sp,-40
    2a98:	afbf0024 	sw	ra,36(sp)
    2a9c:	afb00020 	sw	s0,32(sp)
    2aa0:	00808025 	move	s0,a0
    2aa4:	afa5002c 	sw	a1,44(sp)
    2aa8:	afa00010 	sw	zero,16(sp)
    2aac:	24060010 	li	a2,16
    2ab0:	0c000000 	jal	0 <func_80978930>
    2ab4:	00003825 	move	a3,zero
    2ab8:	3c070000 	lui	a3,0x0
    2abc:	24e70000 	addiu	a3,a3,0
    2ac0:	02002025 	move	a0,s0
    2ac4:	8fa5002c 	lw	a1,44(sp)
    2ac8:	0c000000 	jal	0 <func_80978930>
    2acc:	26060184 	addiu	a2,s0,388
    2ad0:	3c070000 	lui	a3,0x0
    2ad4:	24e70000 	addiu	a3,a3,0
    2ad8:	02002025 	move	a0,s0
    2adc:	8fa5002c 	lw	a1,44(sp)
    2ae0:	0c000000 	jal	0 <func_80978930>
    2ae4:	260601d0 	addiu	a2,s0,464
    2ae8:	3c070000 	lui	a3,0x0
    2aec:	24e70000 	addiu	a3,a3,0
    2af0:	02002025 	move	a0,s0
    2af4:	8fa5002c 	lw	a1,44(sp)
    2af8:	0c000000 	jal	0 <func_80978930>
    2afc:	2606021c 	addiu	a2,s0,540
    2b00:	8fbf0024 	lw	ra,36(sp)
    2b04:	8fb00020 	lw	s0,32(sp)
    2b08:	27bd0028 	addiu	sp,sp,40
    2b0c:	03e00008 	jr	ra
    2b10:	00000000 	nop

00002b14 <func_8097B444>:
    2b14:	afa40000 	sw	a0,0(sp)
    2b18:	03e00008 	jr	ra
    2b1c:	afa50004 	sw	a1,4(sp)

00002b20 <func_8097B450>:
    2b20:	27bdffc8 	addiu	sp,sp,-56
    2b24:	afa5003c 	sw	a1,60(sp)
    2b28:	00802825 	move	a1,a0
    2b2c:	afbf0014 	sw	ra,20(sp)
    2b30:	afa40038 	sw	a0,56(sp)
    2b34:	84840032 	lh	a0,50(a0)
    2b38:	afa50038 	sw	a1,56(sp)
    2b3c:	0c000000 	jal	0 <func_80978930>
    2b40:	a7a40022 	sh	a0,34(sp)
    2b44:	87a40022 	lh	a0,34(sp)
    2b48:	0c000000 	jal	0 <func_80978930>
    2b4c:	e7a0001c 	swc1	$f0,28(sp)
    2b50:	3c01420c 	lui	at,0x420c
    2b54:	44816000 	mtc1	at,$f12
    2b58:	8fa50038 	lw	a1,56(sp)
    2b5c:	c7a2001c 	lwc1	$f2,28(sp)
    2b60:	46006182 	mul.s	$f6,$f12,$f0
    2b64:	24a20024 	addiu	v0,a1,36
    2b68:	c4440008 	lwc1	$f4,8(v0)
    2b6c:	24a30184 	addiu	v1,a1,388
    2b70:	3c01c120 	lui	at,0xc120
    2b74:	44817000 	mtc1	at,$f14
    2b78:	24a401d0 	addiu	a0,a1,464
    2b7c:	46062201 	sub.s	$f8,$f4,$f6
    2b80:	46026102 	mul.s	$f4,$f12,$f2
    2b84:	3c01c25c 	lui	at,0xc25c
    2b88:	44818000 	mtc1	at,$f16
    2b8c:	24a6021c 	addiu	a2,a1,540
    2b90:	4600428d 	trunc.w.s	$f10,$f8
    2b94:	440f5000 	mfc1	t7,$f10
    2b98:	00000000 	nop
    2b9c:	a46f004a 	sh	t7,74(v1)
    2ba0:	c4520000 	lwc1	$f18,0(v0)
    2ba4:	46049180 	add.s	$f6,$f18,$f4
    2ba8:	4600320d 	trunc.w.s	$f8,$f6
    2bac:	46007182 	mul.s	$f6,$f14,$f0
    2bb0:	44194000 	mfc1	t9,$f8
    2bb4:	00000000 	nop
    2bb8:	a4790046 	sh	t9,70(v1)
    2bbc:	c44a0004 	lwc1	$f10,4(v0)
    2bc0:	4600548d 	trunc.w.s	$f18,$f10
    2bc4:	44099000 	mfc1	t1,$f18
    2bc8:	00000000 	nop
    2bcc:	a4690048 	sh	t1,72(v1)
    2bd0:	c4440008 	lwc1	$f4,8(v0)
    2bd4:	46062201 	sub.s	$f8,$f4,$f6
    2bd8:	46027102 	mul.s	$f4,$f14,$f2
    2bdc:	4600428d 	trunc.w.s	$f10,$f8
    2be0:	440b5000 	mfc1	t3,$f10
    2be4:	00000000 	nop
    2be8:	a48b004a 	sh	t3,74(a0)
    2bec:	c4520000 	lwc1	$f18,0(v0)
    2bf0:	46049180 	add.s	$f6,$f18,$f4
    2bf4:	4600320d 	trunc.w.s	$f8,$f6
    2bf8:	46008182 	mul.s	$f6,$f16,$f0
    2bfc:	440d4000 	mfc1	t5,$f8
    2c00:	00000000 	nop
    2c04:	a48d0046 	sh	t5,70(a0)
    2c08:	c44a0004 	lwc1	$f10,4(v0)
    2c0c:	4600548d 	trunc.w.s	$f18,$f10
    2c10:	440f9000 	mfc1	t7,$f18
    2c14:	00000000 	nop
    2c18:	a48f0048 	sh	t7,72(a0)
    2c1c:	c4440008 	lwc1	$f4,8(v0)
    2c20:	46062201 	sub.s	$f8,$f4,$f6
    2c24:	46028102 	mul.s	$f4,$f16,$f2
    2c28:	4600428d 	trunc.w.s	$f10,$f8
    2c2c:	44195000 	mfc1	t9,$f10
    2c30:	00000000 	nop
    2c34:	a4d9004a 	sh	t9,74(a2)
    2c38:	c4520000 	lwc1	$f18,0(v0)
    2c3c:	46049180 	add.s	$f6,$f18,$f4
    2c40:	4600320d 	trunc.w.s	$f8,$f6
    2c44:	44094000 	mfc1	t1,$f8
    2c48:	00000000 	nop
    2c4c:	a4c90046 	sh	t1,70(a2)
    2c50:	c44a0004 	lwc1	$f10,4(v0)
    2c54:	4600548d 	trunc.w.s	$f18,$f10
    2c58:	440b9000 	mfc1	t3,$f18
    2c5c:	00000000 	nop
    2c60:	a4cb0048 	sh	t3,72(a2)
    2c64:	8fbf0014 	lw	ra,20(sp)
    2c68:	27bd0038 	addiu	sp,sp,56
    2c6c:	03e00008 	jr	ra
    2c70:	00000000 	nop

00002c74 <func_8097B5A4>:
    2c74:	27bdffc0 	addiu	sp,sp,-64
    2c78:	afa40040 	sw	a0,64(sp)
    2c7c:	3c010001 	lui	at,0x1
    2c80:	8fa60040 	lw	a2,64(sp)
    2c84:	00a03825 	move	a3,a1
    2c88:	34211e60 	ori	at,at,0x1e60
    2c8c:	00a02025 	move	a0,a1
    2c90:	afbf0014 	sw	ra,20(sp)
    2c94:	00a12821 	addu	a1,a1,at
    2c98:	afa5001c 	sw	a1,28(sp)
    2c9c:	afa70044 	sw	a3,68(sp)
    2ca0:	0c000000 	jal	0 <func_80978930>
    2ca4:	24c60184 	addiu	a2,a2,388
    2ca8:	8fa60040 	lw	a2,64(sp)
    2cac:	8fa40044 	lw	a0,68(sp)
    2cb0:	8fa5001c 	lw	a1,28(sp)
    2cb4:	0c000000 	jal	0 <func_80978930>
    2cb8:	24c601d0 	addiu	a2,a2,464
    2cbc:	8fa60040 	lw	a2,64(sp)
    2cc0:	8fa40044 	lw	a0,68(sp)
    2cc4:	8fa5001c 	lw	a1,28(sp)
    2cc8:	0c000000 	jal	0 <func_80978930>
    2ccc:	24c6021c 	addiu	a2,a2,540
    2cd0:	8fbf0014 	lw	ra,20(sp)
    2cd4:	27bd0040 	addiu	sp,sp,64
    2cd8:	03e00008 	jr	ra
    2cdc:	00000000 	nop

00002ce0 <func_8097B610>:
    2ce0:	27bdffe8 	addiu	sp,sp,-24
    2ce4:	afbf0014 	sw	ra,20(sp)
    2ce8:	afa5001c 	sw	a1,28(sp)
    2cec:	afa40018 	sw	a0,24(sp)
    2cf0:	0c000000 	jal	0 <func_80978930>
    2cf4:	24860184 	addiu	a2,a0,388
    2cf8:	10400003 	beqz	v0,2d08 <func_8097B610+0x28>
    2cfc:	8fa40018 	lw	a0,24(sp)
    2d00:	10000011 	b	2d48 <func_8097B610+0x68>
    2d04:	24020001 	li	v0,1
    2d08:	8fa5001c 	lw	a1,28(sp)
    2d0c:	248601d0 	addiu	a2,a0,464
    2d10:	0c000000 	jal	0 <func_80978930>
    2d14:	afa40018 	sw	a0,24(sp)
    2d18:	10400003 	beqz	v0,2d28 <func_8097B610+0x48>
    2d1c:	8fa40018 	lw	a0,24(sp)
    2d20:	10000009 	b	2d48 <func_8097B610+0x68>
    2d24:	24020001 	li	v0,1
    2d28:	8fa5001c 	lw	a1,28(sp)
    2d2c:	0c000000 	jal	0 <func_80978930>
    2d30:	2486021c 	addiu	a2,a0,540
    2d34:	50400004 	beqzl	v0,2d48 <func_8097B610+0x68>
    2d38:	00001025 	move	v0,zero
    2d3c:	10000002 	b	2d48 <func_8097B610+0x68>
    2d40:	24020001 	li	v0,1
    2d44:	00001025 	move	v0,zero
    2d48:	8fbf0014 	lw	ra,20(sp)
    2d4c:	27bd0018 	addiu	sp,sp,24
    2d50:	03e00008 	jr	ra
    2d54:	00000000 	nop

00002d58 <func_8097B688>:
    2d58:	27bdffd8 	addiu	sp,sp,-40
    2d5c:	afbf0014 	sw	ra,20(sp)
    2d60:	c4840024 	lwc1	$f4,36(a0)
    2d64:	00c03825 	move	a3,a2
    2d68:	27a6001c 	addiu	a2,sp,28
    2d6c:	e7a4001c 	swc1	$f4,28(sp)
    2d70:	c4860028 	lwc1	$f6,40(a0)
    2d74:	e7a60020 	swc1	$f6,32(sp)
    2d78:	c488002c 	lwc1	$f8,44(a0)
    2d7c:	0c000000 	jal	0 <func_80978930>
    2d80:	e7a80024 	swc1	$f8,36(sp)
    2d84:	8fbf0014 	lw	ra,20(sp)
    2d88:	27bd0028 	addiu	sp,sp,40
    2d8c:	03e00008 	jr	ra
    2d90:	00000000 	nop

00002d94 <func_8097B6C4>:
    2d94:	27bdffe8 	addiu	sp,sp,-24
    2d98:	afbf0014 	sw	ra,20(sp)
    2d9c:	afa5001c 	sw	a1,28(sp)
    2da0:	0c000000 	jal	0 <func_80978930>
    2da4:	afa40018 	sw	a0,24(sp)
    2da8:	10400019 	beqz	v0,2e10 <func_8097B6C4+0x7c>
    2dac:	8fa40018 	lw	a0,24(sp)
    2db0:	3c060600 	lui	a2,0x600
    2db4:	24c62448 	addiu	a2,a2,9288
    2db8:	8fa5001c 	lw	a1,28(sp)
    2dbc:	0c000000 	jal	0 <func_80978930>
    2dc0:	afa40018 	sw	a0,24(sp)
    2dc4:	8fa40018 	lw	a0,24(sp)
    2dc8:	3c010000 	lui	at,0x0
    2dcc:	c4200000 	lwc1	$f0,0(at)
    2dd0:	240e0013 	li	t6,19
    2dd4:	240f0011 	li	t7,17
    2dd8:	ac8e0164 	sw	t6,356(a0)
    2ddc:	ac8f0168 	sw	t7,360(a0)
    2de0:	24820050 	addiu	v0,a0,80
    2de4:	c4440000 	lwc1	$f4,0(v0)
    2de8:	c4480004 	lwc1	$f8,4(v0)
    2dec:	c4500008 	lwc1	$f16,8(v0)
    2df0:	46002182 	mul.s	$f6,$f4,$f0
    2df4:	00000000 	nop
    2df8:	46004282 	mul.s	$f10,$f8,$f0
    2dfc:	00000000 	nop
    2e00:	46008482 	mul.s	$f18,$f16,$f0
    2e04:	e4460000 	swc1	$f6,0(v0)
    2e08:	e44a0004 	swc1	$f10,4(v0)
    2e0c:	e4520008 	swc1	$f18,8(v0)
    2e10:	8fbf0014 	lw	ra,20(sp)
    2e14:	27bd0018 	addiu	sp,sp,24
    2e18:	03e00008 	jr	ra
    2e1c:	00000000 	nop

00002e20 <func_8097B750>:
    2e20:	27bdffc0 	addiu	sp,sp,-64
    2e24:	afb10018 	sw	s1,24(sp)
    2e28:	00a08825 	move	s1,a1
    2e2c:	afbf001c 	sw	ra,28(sp)
    2e30:	afb00014 	sw	s0,20(sp)
    2e34:	00808025 	move	s0,a0
    2e38:	0c000000 	jal	0 <func_80978930>
    2e3c:	24050004 	li	a1,4
    2e40:	10400005 	beqz	v0,2e58 <func_8097B750+0x38>
    2e44:	02002025 	move	a0,s0
    2e48:	0c000000 	jal	0 <func_80978930>
    2e4c:	02002025 	move	a0,s0
    2e50:	1000002e 	b	2f0c <func_8097B750+0xec>
    2e54:	02002025 	move	a0,s0
    2e58:	0c000000 	jal	0 <func_80978930>
    2e5c:	02202825 	move	a1,s1
    2e60:	10400014 	beqz	v0,2eb4 <func_8097B750+0x94>
    2e64:	27ae0030 	addiu	t6,sp,48
    2e68:	3c0f0000 	lui	t7,0x0
    2e6c:	25ef0000 	addiu	t7,t7,0
    2e70:	8df90000 	lw	t9,0(t7)
    2e74:	8df80004 	lw	t8,4(t7)
    2e78:	02002025 	move	a0,s0
    2e7c:	add90000 	sw	t9,0(t6)
    2e80:	8df90008 	lw	t9,8(t7)
    2e84:	02202825 	move	a1,s1
    2e88:	add80004 	sw	t8,4(t6)
    2e8c:	0c000000 	jal	0 <func_80978930>
    2e90:	add90008 	sw	t9,8(t6)
    2e94:	02002025 	move	a0,s0
    2e98:	02202825 	move	a1,s1
    2e9c:	0c000000 	jal	0 <func_80978930>
    2ea0:	27a60030 	addiu	a2,sp,48
    2ea4:	0c000000 	jal	0 <func_80978930>
    2ea8:	02002025 	move	a0,s0
    2eac:	10000017 	b	2f0c <func_8097B750+0xec>
    2eb0:	02002025 	move	a0,s0
    2eb4:	8e080268 	lw	t0,616(s0)
    2eb8:	51000014 	beqzl	t0,2f0c <func_8097B750+0xec>
    2ebc:	02002025 	move	a0,s0
    2ec0:	8e0b026c 	lw	t3,620(s0)
    2ec4:	27a90024 	addiu	t1,sp,36
    2ec8:	44802000 	mtc1	zero,$f4
    2ecc:	ad2b0000 	sw	t3,0(t1)
    2ed0:	8e0a0270 	lw	t2,624(s0)
    2ed4:	02002025 	move	a0,s0
    2ed8:	02202825 	move	a1,s1
    2edc:	ad2a0004 	sw	t2,4(t1)
    2ee0:	8e0b0274 	lw	t3,628(s0)
    2ee4:	ad2b0008 	sw	t3,8(t1)
    2ee8:	0c000000 	jal	0 <func_80978930>
    2eec:	e7a40028 	swc1	$f4,40(sp)
    2ef0:	02002025 	move	a0,s0
    2ef4:	02202825 	move	a1,s1
    2ef8:	0c000000 	jal	0 <func_80978930>
    2efc:	27a60024 	addiu	a2,sp,36
    2f00:	0c000000 	jal	0 <func_80978930>
    2f04:	02002025 	move	a0,s0
    2f08:	02002025 	move	a0,s0
    2f0c:	0c000000 	jal	0 <func_80978930>
    2f10:	02202825 	move	a1,s1
    2f14:	02002025 	move	a0,s0
    2f18:	0c000000 	jal	0 <func_80978930>
    2f1c:	02202825 	move	a1,s1
    2f20:	8fbf001c 	lw	ra,28(sp)
    2f24:	8fb00014 	lw	s0,20(sp)
    2f28:	8fb10018 	lw	s1,24(sp)
    2f2c:	03e00008 	jr	ra
    2f30:	27bd0040 	addiu	sp,sp,64

00002f34 <func_8097B864>:
    2f34:	27bdffe8 	addiu	sp,sp,-24
    2f38:	afbf0014 	sw	ra,20(sp)
    2f3c:	afa40018 	sw	a0,24(sp)
    2f40:	0c000000 	jal	0 <func_80978930>
    2f44:	afa5001c 	sw	a1,28(sp)
    2f48:	8fa40018 	lw	a0,24(sp)
    2f4c:	0c000000 	jal	0 <func_80978930>
    2f50:	8fa5001c 	lw	a1,28(sp)
    2f54:	8fbf0014 	lw	ra,20(sp)
    2f58:	27bd0018 	addiu	sp,sp,24
    2f5c:	03e00008 	jr	ra
    2f60:	00000000 	nop

00002f64 <func_8097B894>:
    2f64:	27bdffe8 	addiu	sp,sp,-24
    2f68:	afbf0014 	sw	ra,20(sp)
    2f6c:	afa40018 	sw	a0,24(sp)
    2f70:	0c000000 	jal	0 <func_80978930>
    2f74:	afa5001c 	sw	a1,28(sp)
    2f78:	8fa40018 	lw	a0,24(sp)
    2f7c:	0c000000 	jal	0 <func_80978930>
    2f80:	8fa5001c 	lw	a1,28(sp)
    2f84:	8fbf0014 	lw	ra,20(sp)
    2f88:	27bd0018 	addiu	sp,sp,24
    2f8c:	03e00008 	jr	ra
    2f90:	00000000 	nop

00002f94 <func_8097B8C4>:
    2f94:	27bdffe8 	addiu	sp,sp,-24
    2f98:	afbf0014 	sw	ra,20(sp)
    2f9c:	3c060600 	lui	a2,0x600
    2fa0:	0c000000 	jal	0 <func_80978930>
    2fa4:	24c62160 	addiu	a2,a2,8544
    2fa8:	8fbf0014 	lw	ra,20(sp)
    2fac:	27bd0018 	addiu	sp,sp,24
    2fb0:	03e00008 	jr	ra
    2fb4:	00000000 	nop

00002fb8 <func_8097B8E8>:
    2fb8:	27bdffe0 	addiu	sp,sp,-32
    2fbc:	afbf001c 	sw	ra,28(sp)
    2fc0:	afa50024 	sw	a1,36(sp)
    2fc4:	afa00010 	sw	zero,16(sp)
    2fc8:	afa40020 	sw	a0,32(sp)
    2fcc:	24060011 	li	a2,17
    2fd0:	0c000000 	jal	0 <func_80978930>
    2fd4:	00003825 	move	a3,zero
    2fd8:	8fa40020 	lw	a0,32(sp)
    2fdc:	3c070000 	lui	a3,0x0
    2fe0:	24e70000 	addiu	a3,a3,0
    2fe4:	8fa50024 	lw	a1,36(sp)
    2fe8:	0c000000 	jal	0 <func_80978930>
    2fec:	24860184 	addiu	a2,a0,388
    2ff0:	8fbf001c 	lw	ra,28(sp)
    2ff4:	27bd0020 	addiu	sp,sp,32
    2ff8:	03e00008 	jr	ra
    2ffc:	00000000 	nop

00003000 <func_8097B930>:
    3000:	afa40000 	sw	a0,0(sp)
    3004:	03e00008 	jr	ra
    3008:	afa50004 	sw	a1,4(sp)

0000300c <func_8097B93C>:
    300c:	27bdffd8 	addiu	sp,sp,-40
    3010:	afbf0014 	sw	ra,20(sp)
    3014:	afa5002c 	sw	a1,44(sp)
    3018:	afa60030 	sw	a2,48(sp)
    301c:	c4840024 	lwc1	$f4,36(a0)
    3020:	8fa70030 	lw	a3,48(sp)
    3024:	27a6001c 	addiu	a2,sp,28
    3028:	e7a4001c 	swc1	$f4,28(sp)
    302c:	c4860028 	lwc1	$f6,40(a0)
    3030:	e7a60020 	swc1	$f6,32(sp)
    3034:	c488002c 	lwc1	$f8,44(a0)
    3038:	afa40028 	sw	a0,40(sp)
    303c:	0c000000 	jal	0 <func_80978930>
    3040:	e7a80024 	swc1	$f8,36(sp)
    3044:	8fa40028 	lw	a0,40(sp)
    3048:	3c0142c8 	lui	at,0x42c8
    304c:	44819000 	mtc1	at,$f18
    3050:	c48a0024 	lwc1	$f10,36(a0)
    3054:	8fa5002c 	lw	a1,44(sp)
    3058:	27a6001c 	addiu	a2,sp,28
    305c:	e7aa001c 	swc1	$f10,28(sp)
    3060:	c4900028 	lwc1	$f16,40(a0)
    3064:	8fa70030 	lw	a3,48(sp)
    3068:	46128100 	add.s	$f4,$f16,$f18
    306c:	e7a40020 	swc1	$f4,32(sp)
    3070:	c486002c 	lwc1	$f6,44(a0)
    3074:	0c000000 	jal	0 <func_80978930>
    3078:	e7a60024 	swc1	$f6,36(sp)
    307c:	8fbf0014 	lw	ra,20(sp)
    3080:	27bd0028 	addiu	sp,sp,40
    3084:	03e00008 	jr	ra
    3088:	00000000 	nop

0000308c <func_8097B9BC>:
    308c:	27bdffe8 	addiu	sp,sp,-24
    3090:	afbf0014 	sw	ra,20(sp)
    3094:	afa5001c 	sw	a1,28(sp)
    3098:	0c000000 	jal	0 <func_80978930>
    309c:	afa40018 	sw	a0,24(sp)
    30a0:	10400019 	beqz	v0,3108 <func_8097B9BC+0x7c>
    30a4:	8fa40018 	lw	a0,24(sp)
    30a8:	3c060600 	lui	a2,0x600
    30ac:	24c63af0 	addiu	a2,a2,15088
    30b0:	8fa5001c 	lw	a1,28(sp)
    30b4:	0c000000 	jal	0 <func_80978930>
    30b8:	afa40018 	sw	a0,24(sp)
    30bc:	8fa40018 	lw	a0,24(sp)
    30c0:	3c010000 	lui	at,0x0
    30c4:	c4200000 	lwc1	$f0,0(at)
    30c8:	240e0014 	li	t6,20
    30cc:	240f0012 	li	t7,18
    30d0:	ac8e0164 	sw	t6,356(a0)
    30d4:	ac8f0168 	sw	t7,360(a0)
    30d8:	24820050 	addiu	v0,a0,80
    30dc:	c4440000 	lwc1	$f4,0(v0)
    30e0:	c4480004 	lwc1	$f8,4(v0)
    30e4:	c4500008 	lwc1	$f16,8(v0)
    30e8:	46002182 	mul.s	$f6,$f4,$f0
    30ec:	00000000 	nop
    30f0:	46004282 	mul.s	$f10,$f8,$f0
    30f4:	00000000 	nop
    30f8:	46008482 	mul.s	$f18,$f16,$f0
    30fc:	e4460000 	swc1	$f6,0(v0)
    3100:	e44a0004 	swc1	$f10,4(v0)
    3104:	e4520008 	swc1	$f18,8(v0)
    3108:	8fbf0014 	lw	ra,20(sp)
    310c:	27bd0018 	addiu	sp,sp,24
    3110:	03e00008 	jr	ra
    3114:	00000000 	nop

00003118 <func_8097BA48>:
    3118:	27bdffa8 	addiu	sp,sp,-88
    311c:	afb1001c 	sw	s1,28(sp)
    3120:	00a08825 	move	s1,a1
    3124:	afbf0024 	sw	ra,36(sp)
    3128:	afb00018 	sw	s0,24(sp)
    312c:	00808025 	move	s0,a0
    3130:	afb20020 	sw	s2,32(sp)
    3134:	0c000000 	jal	0 <func_80978930>
    3138:	24050004 	li	a1,4
    313c:	10400005 	beqz	v0,3154 <func_8097BA48+0x3c>
    3140:	02002025 	move	a0,s0
    3144:	0c000000 	jal	0 <func_80978930>
    3148:	02002025 	move	a0,s0
    314c:	1000002f 	b	320c <func_8097BA48+0xf4>
    3150:	26120184 	addiu	s2,s0,388
    3154:	26120184 	addiu	s2,s0,388
    3158:	02403025 	move	a2,s2
    315c:	0c000000 	jal	0 <func_80978930>
    3160:	02202825 	move	a1,s1
    3164:	10400014 	beqz	v0,31b8 <func_8097BA48+0xa0>
    3168:	27ae003c 	addiu	t6,sp,60
    316c:	3c0f0000 	lui	t7,0x0
    3170:	25ef0000 	addiu	t7,t7,0
    3174:	8df90000 	lw	t9,0(t7)
    3178:	8df80004 	lw	t8,4(t7)
    317c:	02002025 	move	a0,s0
    3180:	add90000 	sw	t9,0(t6)
    3184:	8df90008 	lw	t9,8(t7)
    3188:	02202825 	move	a1,s1
    318c:	add80004 	sw	t8,4(t6)
    3190:	0c000000 	jal	0 <func_80978930>
    3194:	add90008 	sw	t9,8(t6)
    3198:	02002025 	move	a0,s0
    319c:	02202825 	move	a1,s1
    31a0:	0c000000 	jal	0 <func_80978930>
    31a4:	27a6003c 	addiu	a2,sp,60
    31a8:	0c000000 	jal	0 <func_80978930>
    31ac:	02002025 	move	a0,s0
    31b0:	10000017 	b	3210 <func_8097BA48+0xf8>
    31b4:	02002025 	move	a0,s0
    31b8:	8e080268 	lw	t0,616(s0)
    31bc:	51000014 	beqzl	t0,3210 <func_8097BA48+0xf8>
    31c0:	02002025 	move	a0,s0
    31c4:	8e0b026c 	lw	t3,620(s0)
    31c8:	27a90030 	addiu	t1,sp,48
    31cc:	44802000 	mtc1	zero,$f4
    31d0:	ad2b0000 	sw	t3,0(t1)
    31d4:	8e0a0270 	lw	t2,624(s0)
    31d8:	02002025 	move	a0,s0
    31dc:	02202825 	move	a1,s1
    31e0:	ad2a0004 	sw	t2,4(t1)
    31e4:	8e0b0274 	lw	t3,628(s0)
    31e8:	ad2b0008 	sw	t3,8(t1)
    31ec:	0c000000 	jal	0 <func_80978930>
    31f0:	e7a40034 	swc1	$f4,52(sp)
    31f4:	02002025 	move	a0,s0
    31f8:	02202825 	move	a1,s1
    31fc:	0c000000 	jal	0 <func_80978930>
    3200:	27a60030 	addiu	a2,sp,48
    3204:	0c000000 	jal	0 <func_80978930>
    3208:	02002025 	move	a0,s0
    320c:	02002025 	move	a0,s0
    3210:	0c000000 	jal	0 <func_80978930>
    3214:	02402825 	move	a1,s2
    3218:	3c010001 	lui	at,0x1
    321c:	34211e60 	ori	at,at,0x1e60
    3220:	02212821 	addu	a1,s1,at
    3224:	02202025 	move	a0,s1
    3228:	0c000000 	jal	0 <func_80978930>
    322c:	02403025 	move	a2,s2
    3230:	8fbf0024 	lw	ra,36(sp)
    3234:	8fb00018 	lw	s0,24(sp)
    3238:	8fb1001c 	lw	s1,28(sp)
    323c:	8fb20020 	lw	s2,32(sp)
    3240:	03e00008 	jr	ra
    3244:	27bd0058 	addiu	sp,sp,88

00003248 <func_8097BB78>:
    3248:	27bdffe8 	addiu	sp,sp,-24
    324c:	afbf0014 	sw	ra,20(sp)
    3250:	afa40018 	sw	a0,24(sp)
    3254:	0c000000 	jal	0 <func_80978930>
    3258:	afa5001c 	sw	a1,28(sp)
    325c:	8fa40018 	lw	a0,24(sp)
    3260:	0c000000 	jal	0 <func_80978930>
    3264:	8fa5001c 	lw	a1,28(sp)
    3268:	8fbf0014 	lw	ra,20(sp)
    326c:	27bd0018 	addiu	sp,sp,24
    3270:	03e00008 	jr	ra
    3274:	00000000 	nop

00003278 <func_8097BBA8>:
    3278:	27bdffe8 	addiu	sp,sp,-24
    327c:	afbf0014 	sw	ra,20(sp)
    3280:	afa40018 	sw	a0,24(sp)
    3284:	0c000000 	jal	0 <func_80978930>
    3288:	afa5001c 	sw	a1,28(sp)
    328c:	8fa40018 	lw	a0,24(sp)
    3290:	0c000000 	jal	0 <func_80978930>
    3294:	8fa5001c 	lw	a1,28(sp)
    3298:	8fbf0014 	lw	ra,20(sp)
    329c:	27bd0018 	addiu	sp,sp,24
    32a0:	03e00008 	jr	ra
    32a4:	00000000 	nop

000032a8 <func_8097BBD8>:
    32a8:	27bdffe8 	addiu	sp,sp,-24
    32ac:	afbf0014 	sw	ra,20(sp)
    32b0:	3c060600 	lui	a2,0x600
    32b4:	0c000000 	jal	0 <func_80978930>
    32b8:	24c63710 	addiu	a2,a2,14096
    32bc:	8fbf0014 	lw	ra,20(sp)
    32c0:	27bd0018 	addiu	sp,sp,24
    32c4:	03e00008 	jr	ra
    32c8:	00000000 	nop

000032cc <DemoGj_Update>:
    32cc:	27bdffe8 	addiu	sp,sp,-24
    32d0:	afbf0014 	sw	ra,20(sp)
    32d4:	8c820164 	lw	v0,356(a0)
    32d8:	04400008 	bltz	v0,32fc <DemoGj_Update+0x30>
    32dc:	28410015 	slti	at,v0,21
    32e0:	10200006 	beqz	at,32fc <DemoGj_Update+0x30>
    32e4:	00027080 	sll	t6,v0,0x2
    32e8:	3c030000 	lui	v1,0x0
    32ec:	006e1821 	addu	v1,v1,t6
    32f0:	8c630000 	lw	v1,0(v1)
    32f4:	14600006 	bnez	v1,3310 <DemoGj_Update+0x44>
    32f8:	00000000 	nop
    32fc:	3c040000 	lui	a0,0x0
    3300:	0c000000 	jal	0 <func_80978930>
    3304:	24840000 	addiu	a0,a0,0
    3308:	10000004 	b	331c <DemoGj_Update+0x50>
    330c:	8fbf0014 	lw	ra,20(sp)
    3310:	0060f809 	jalr	v1
    3314:	00000000 	nop
    3318:	8fbf0014 	lw	ra,20(sp)
    331c:	27bd0018 	addiu	sp,sp,24
    3320:	03e00008 	jr	ra
    3324:	00000000 	nop

00003328 <DemoGj_Init>:
    3328:	27bdffe8 	addiu	sp,sp,-24
    332c:	afbf0014 	sw	ra,20(sp)
    3330:	afa5001c 	sw	a1,28(sp)
    3334:	0c000000 	jal	0 <func_80978930>
    3338:	afa40018 	sw	a0,24(sp)
    333c:	244efffc 	addiu	t6,v0,-4
    3340:	2dc10013 	sltiu	at,t6,19
    3344:	8fa5001c 	lw	a1,28(sp)
    3348:	10200033 	beqz	at,3418 <L8097BD48>
    334c:	8fa60018 	lw	a2,24(sp)
    3350:	000e7080 	sll	t6,t6,0x2
    3354:	3c010000 	lui	at,0x0
    3358:	002e0821 	addu	at,at,t6
    335c:	8c2e0000 	lw	t6,0(at)
    3360:	01c00008 	jr	t6
    3364:	00000000 	nop

00003368 <L8097BC98>:
    3368:	0c000000 	jal	0 <func_80978930>
    336c:	00c02025 	move	a0,a2
    3370:	10000030 	b	3434 <L8097BD48+0x1c>
    3374:	8fbf0014 	lw	ra,20(sp)

00003378 <L8097BCA8>:
    3378:	0c000000 	jal	0 <func_80978930>
    337c:	00c02025 	move	a0,a2
    3380:	1000002c 	b	3434 <L8097BD48+0x1c>
    3384:	8fbf0014 	lw	ra,20(sp)

00003388 <L8097BCB8>:
    3388:	0c000000 	jal	0 <func_80978930>
    338c:	00c02025 	move	a0,a2
    3390:	10000028 	b	3434 <L8097BD48+0x1c>
    3394:	8fbf0014 	lw	ra,20(sp)

00003398 <L8097BCC8>:
    3398:	0c000000 	jal	0 <func_80978930>
    339c:	00c02025 	move	a0,a2
    33a0:	10000024 	b	3434 <L8097BD48+0x1c>
    33a4:	8fbf0014 	lw	ra,20(sp)

000033a8 <L8097BCD8>:
    33a8:	0c000000 	jal	0 <func_80978930>
    33ac:	00c02025 	move	a0,a2
    33b0:	10000020 	b	3434 <L8097BD48+0x1c>
    33b4:	8fbf0014 	lw	ra,20(sp)

000033b8 <L8097BCE8>:
    33b8:	0c000000 	jal	0 <func_80978930>
    33bc:	00c02025 	move	a0,a2
    33c0:	1000001c 	b	3434 <L8097BD48+0x1c>
    33c4:	8fbf0014 	lw	ra,20(sp)

000033c8 <L8097BCF8>:
    33c8:	0c000000 	jal	0 <func_80978930>
    33cc:	00c02025 	move	a0,a2
    33d0:	10000018 	b	3434 <L8097BD48+0x1c>
    33d4:	8fbf0014 	lw	ra,20(sp)

000033d8 <L8097BD08>:
    33d8:	0c000000 	jal	0 <func_80978930>
    33dc:	00c02025 	move	a0,a2
    33e0:	10000014 	b	3434 <L8097BD48+0x1c>
    33e4:	8fbf0014 	lw	ra,20(sp)

000033e8 <L8097BD18>:
    33e8:	0c000000 	jal	0 <func_80978930>
    33ec:	00c02025 	move	a0,a2
    33f0:	10000010 	b	3434 <L8097BD48+0x1c>
    33f4:	8fbf0014 	lw	ra,20(sp)

000033f8 <L8097BD28>:
    33f8:	0c000000 	jal	0 <func_80978930>
    33fc:	00c02025 	move	a0,a2
    3400:	1000000c 	b	3434 <L8097BD48+0x1c>
    3404:	8fbf0014 	lw	ra,20(sp)

00003408 <L8097BD38>:
    3408:	0c000000 	jal	0 <func_80978930>
    340c:	00c02025 	move	a0,a2
    3410:	10000008 	b	3434 <L8097BD48+0x1c>
    3414:	8fbf0014 	lw	ra,20(sp)

00003418 <L8097BD48>:
    3418:	3c040000 	lui	a0,0x0
    341c:	24840000 	addiu	a0,a0,0
    3420:	0c000000 	jal	0 <func_80978930>
    3424:	afa60018 	sw	a2,24(sp)
    3428:	0c000000 	jal	0 <func_80978930>
    342c:	8fa40018 	lw	a0,24(sp)
    3430:	8fbf0014 	lw	ra,20(sp)
    3434:	27bd0018 	addiu	sp,sp,24
    3438:	03e00008 	jr	ra
    343c:	00000000 	nop

00003440 <func_8097BD70>:
    3440:	afa40000 	sw	a0,0(sp)
    3444:	03e00008 	jr	ra
    3448:	afa50004 	sw	a1,4(sp)

0000344c <DemoGj_Draw>:
    344c:	27bdffe8 	addiu	sp,sp,-24
    3450:	afbf0014 	sw	ra,20(sp)
    3454:	8c820168 	lw	v0,360(a0)
    3458:	04400008 	bltz	v0,347c <DemoGj_Draw+0x30>
    345c:	28410013 	slti	at,v0,19
    3460:	10200006 	beqz	at,347c <DemoGj_Draw+0x30>
    3464:	00027080 	sll	t6,v0,0x2
    3468:	3c030000 	lui	v1,0x0
    346c:	006e1821 	addu	v1,v1,t6
    3470:	8c630000 	lw	v1,0(v1)
    3474:	14600006 	bnez	v1,3490 <DemoGj_Draw+0x44>
    3478:	00000000 	nop
    347c:	3c040000 	lui	a0,0x0
    3480:	0c000000 	jal	0 <func_80978930>
    3484:	24840000 	addiu	a0,a0,0
    3488:	10000004 	b	349c <DemoGj_Draw+0x50>
    348c:	8fbf0014 	lw	ra,20(sp)
    3490:	0060f809 	jalr	v1
    3494:	00000000 	nop
    3498:	8fbf0014 	lw	ra,20(sp)
    349c:	27bd0018 	addiu	sp,sp,24
    34a0:	03e00008 	jr	ra
    34a4:	00000000 	nop
	...
