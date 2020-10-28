
build/src/overlays/actors/ovl_En_Kanban/z_en_kanban.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A91FA0>:
       0:	27bdffe0 	addiu	sp,sp,-32
       4:	afbf0014 	sw	ra,20(sp)
       8:	afa40020 	sw	a0,32(sp)
       c:	8c820078 	lw	v0,120(a0)
      10:	50400026 	beqzl	v0,ac <func_80A91FA0+0xac>
      14:	8fbf0014 	lw	ra,20(sp)
      18:	844f0008 	lh	t7,8(v0)
      1c:	3c010000 	lui	at,0x0
      20:	c4220000 	lwc1	$f2,0(at)
      24:	448f2000 	mtc1	t7,$f4
      28:	3c013f80 	lui	at,0x3f80
      2c:	44817000 	mtc1	at,$f14
      30:	468021a0 	cvt.s.w	$f6,$f4
      34:	46023202 	mul.s	$f8,$f6,$f2
      38:	e7a8001c 	swc1	$f8,28(sp)
      3c:	8458000a 	lh	t8,10(v0)
      40:	8459000c 	lh	t9,12(v0)
      44:	44985000 	mtc1	t8,$f10
      48:	44992000 	mtc1	t9,$f4
      4c:	468054a0 	cvt.s.w	$f18,$f10
      50:	468021a0 	cvt.s.w	$f6,$f4
      54:	46029402 	mul.s	$f16,$f18,$f2
      58:	00000000 	nop
      5c:	46023002 	mul.s	$f0,$f6,$f2
      60:	e7b00018 	swc1	$f16,24(sp)
      64:	46000207 	neg.s	$f8,$f0
      68:	46104302 	mul.s	$f12,$f8,$f16
      6c:	0c000000 	jal	0 <func_80A91FA0>
      70:	00000000 	nop
      74:	8fa80020 	lw	t0,32(sp)
      78:	46000287 	neg.s	$f10,$f0
      7c:	c7b00018 	lwc1	$f16,24(sp)
      80:	e50a0188 	swc1	$f10,392(t0)
      84:	c7b2001c 	lwc1	$f18,28(sp)
      88:	3c013f80 	lui	at,0x3f80
      8c:	44817000 	mtc1	at,$f14
      90:	46009107 	neg.s	$f4,$f18
      94:	46102302 	mul.s	$f12,$f4,$f16
      98:	0c000000 	jal	0 <func_80A91FA0>
      9c:	00000000 	nop
      a0:	8fa90020 	lw	t1,32(sp)
      a4:	e5200190 	swc1	$f0,400(t1)
      a8:	8fbf0014 	lw	ra,20(sp)
      ac:	27bd0020 	addiu	sp,sp,32
      b0:	03e00008 	jr	ra
      b4:	00000000 	nop

000000b8 <EnKanban_Init>:
      b8:	27bdffd0 	addiu	sp,sp,-48
      bc:	afa50034 	sw	a1,52(sp)
      c0:	afbf0024 	sw	ra,36(sp)
      c4:	afb00020 	sw	s0,32(sp)
      c8:	3c053c23 	lui	a1,0x3c23
      cc:	00808025 	move	s0,a0
      d0:	0c000000 	jal	0 <func_80A91FA0>
      d4:	34a5d70a 	ori	a1,a1,0xd70a
      d8:	860e001c 	lh	t6,28(s0)
      dc:	2401ffdd 	li	at,-35
      e0:	51c1003e 	beql	t6,at,1dc <EnKanban_Init+0x124>
      e4:	8fbf0024 	lw	ra,36(sp)
      e8:	8e0f0004 	lw	t7,4(s0)
      ec:	a200001f 	sb	zero,31(s0)
      f0:	260501a0 	addiu	a1,s0,416
      f4:	35f80001 	ori	t8,t7,0x1
      f8:	ae180004 	sw	t8,4(s0)
      fc:	afa50028 	sw	a1,40(sp)
     100:	0c000000 	jal	0 <func_80A91FA0>
     104:	8fa40034 	lw	a0,52(sp)
     108:	3c070000 	lui	a3,0x0
     10c:	8fa50028 	lw	a1,40(sp)
     110:	24e70000 	addiu	a3,a3,0
     114:	8fa40034 	lw	a0,52(sp)
     118:	0c000000 	jal	0 <func_80A91FA0>
     11c:	02003025 	move	a2,s0
     120:	3c040000 	lui	a0,0x0
     124:	24840000 	addiu	a0,a0,0
     128:	0c000000 	jal	0 <func_80A91FA0>
     12c:	8605001c 	lh	a1,28(s0)
     130:	8602001c 	lh	v0,28(s0)
     134:	24010300 	li	at,768
     138:	240b0001 	li	t3,1
     13c:	1441000b 	bne	v0,at,16c <EnKanban_Init+0xb4>
     140:	340cffff 	li	t4,0xffff
     144:	3c190000 	lui	t9,0x0
     148:	8f390004 	lw	t9,4(t9)
     14c:	24010001 	li	at,1
     150:	2408409d 	li	t0,16541
     154:	17210003 	bne	t9,at,164 <EnKanban_Init+0xac>
     158:	24094090 	li	t1,16528
     15c:	10000005 	b	174 <EnKanban_Init+0xbc>
     160:	a608010e 	sh	t0,270(s0)
     164:	10000003 	b	174 <EnKanban_Init+0xbc>
     168:	a609010e 	sh	t1,270(s0)
     16c:	344a0300 	ori	t2,v0,0x300
     170:	a60a010e 	sh	t2,270(s0)
     174:	3c014120 	lui	at,0x4120
     178:	44810000 	mtc1	at,$f0
     17c:	3c014248 	lui	at,0x4248
     180:	44812000 	mtc1	at,$f4
     184:	a60b0176 	sh	t3,374(s0)
     188:	a60c0156 	sh	t4,342(s0)
     18c:	240d0004 	li	t5,4
     190:	44060000 	mfc1	a2,$f0
     194:	44070000 	mfc1	a3,$f0
     198:	afad0014 	sw	t5,20(sp)
     19c:	8fa40034 	lw	a0,52(sp)
     1a0:	02002825 	move	a1,s0
     1a4:	0c000000 	jal	0 <func_80A91FA0>
     1a8:	e7a40010 	swc1	$f4,16(sp)
     1ac:	0c000000 	jal	0 <func_80A91FA0>
     1b0:	02002025 	move	a0,s0
     1b4:	3c0e0000 	lui	t6,0x0
     1b8:	8dce0004 	lw	t6,4(t6)
     1bc:	24010001 	li	at,1
     1c0:	15c10005 	bne	t6,at,1d8 <EnKanban_Init+0x120>
     1c4:	3c014170 	lui	at,0x4170
     1c8:	44814000 	mtc1	at,$f8
     1cc:	c6060028 	lwc1	$f6,40(s0)
     1d0:	46083281 	sub.s	$f10,$f6,$f8
     1d4:	e60a0028 	swc1	$f10,40(s0)
     1d8:	8fbf0024 	lw	ra,36(sp)
     1dc:	8fb00020 	lw	s0,32(sp)
     1e0:	27bd0030 	addiu	sp,sp,48
     1e4:	03e00008 	jr	ra
     1e8:	00000000 	nop

000001ec <EnKanban_Destroy>:
     1ec:	27bdffe8 	addiu	sp,sp,-24
     1f0:	afbf0014 	sw	ra,20(sp)
     1f4:	908e0154 	lbu	t6,340(a0)
     1f8:	00803025 	move	a2,a0
     1fc:	00a02025 	move	a0,a1
     200:	55c00004 	bnezl	t6,214 <EnKanban_Destroy+0x28>
     204:	8fbf0014 	lw	ra,20(sp)
     208:	0c000000 	jal	0 <func_80A91FA0>
     20c:	24c501a0 	addiu	a1,a2,416
     210:	8fbf0014 	lw	ra,20(sp)
     214:	27bd0018 	addiu	sp,sp,24
     218:	03e00008 	jr	ra
     21c:	00000000 	nop

00000220 <func_80A921C0>:
     220:	27bdffe8 	addiu	sp,sp,-24
     224:	afbf0014 	sw	ra,20(sp)
     228:	908e019c 	lbu	t6,412(a0)
     22c:	15c0001f 	bnez	t6,2ac <func_80A921C0+0x8c>
     230:	00000000 	nop
     234:	9082019d 	lbu	v0,413(a0)
     238:	1440001a 	bnez	v0,2a4 <func_80A921C0+0x84>
     23c:	2448ffff 	addiu	t0,v0,-1
     240:	848f008a 	lh	t7,138(a0)
     244:	849800b6 	lh	t8,182(a0)
     248:	01f81023 	subu	v0,t7,t8
     24c:	00021400 	sll	v0,v0,0x10
     250:	00021403 	sra	v0,v0,0x10
     254:	04400003 	bltz	v0,264 <func_80A921C0+0x44>
     258:	00021823 	negu	v1,v0
     25c:	10000001 	b	264 <func_80A921C0+0x44>
     260:	00401825 	move	v1,v0
     264:	28612800 	slti	at,v1,10240
     268:	50200018 	beqzl	at,2cc <func_80A921C0+0xac>
     26c:	8fbf0014 	lw	ra,20(sp)
     270:	afa40018 	sw	a0,24(sp)
     274:	0c000000 	jal	0 <func_80A91FA0>
     278:	afa5001c 	sw	a1,28(sp)
     27c:	8fa40018 	lw	a0,24(sp)
     280:	10400004 	beqz	v0,294 <func_80A921C0+0x74>
     284:	8fa5001c 	lw	a1,28(sp)
     288:	24190001 	li	t9,1
     28c:	1000000e 	b	2c8 <func_80A921C0+0xa8>
     290:	a099019c 	sb	t9,412(a0)
     294:	0c000000 	jal	0 <func_80A91FA0>
     298:	3c064288 	lui	a2,0x4288
     29c:	1000000b 	b	2cc <func_80A921C0+0xac>
     2a0:	8fbf0014 	lw	ra,20(sp)
     2a4:	10000008 	b	2c8 <func_80A921C0+0xa8>
     2a8:	a088019d 	sb	t0,413(a0)
     2ac:	0c000000 	jal	0 <func_80A91FA0>
     2b0:	afa40018 	sw	a0,24(sp)
     2b4:	10400004 	beqz	v0,2c8 <func_80A921C0+0xa8>
     2b8:	8fa40018 	lw	a0,24(sp)
     2bc:	24090014 	li	t1,20
     2c0:	a080019c 	sb	zero,412(a0)
     2c4:	a089019d 	sb	t1,413(a0)
     2c8:	8fbf0014 	lw	ra,20(sp)
     2cc:	27bd0018 	addiu	sp,sp,24
     2d0:	03e00008 	jr	ra
     2d4:	00000000 	nop

000002d8 <EnKanban_Update>:
     2d8:	27bdff00 	addiu	sp,sp,-256
     2dc:	afbf003c 	sw	ra,60(sp)
     2e0:	afb10038 	sw	s1,56(sp)
     2e4:	afb00034 	sw	s0,52(sp)
     2e8:	afa50104 	sw	a1,260(sp)
     2ec:	a3a000ff 	sb	zero,255(sp)
     2f0:	8caf1c44 	lw	t7,7236(a1)
     2f4:	00808825 	move	s1,a0
     2f8:	afaf00e8 	sw	t7,232(sp)
     2fc:	90980150 	lbu	t8,336(a0)
     300:	90890154 	lbu	t1,340(a0)
     304:	27190001 	addiu	t9,t8,1
     308:	2d210006 	sltiu	at,t1,6
     30c:	10200631 	beqz	at,1bd4 <L80A93920+0x254>
     310:	a0990150 	sb	t9,336(a0)
     314:	00094880 	sll	t1,t1,0x2
     318:	3c010000 	lui	at,0x0
     31c:	00290821 	addu	at,at,t1
     320:	8c290000 	lw	t1,0(at)
     324:	01200008 	jr	t1
     328:	00000000 	nop

0000032c <L80A922CC>:
     32c:	8622015a 	lh	v0,346(s1)
     330:	24010001 	li	at,1
     334:	02202025 	move	a0,s1
     338:	10400002 	beqz	v0,344 <L80A922CC+0x18>
     33c:	244affff 	addiu	t2,v0,-1
     340:	a62a015a 	sh	t2,346(s1)
     344:	8622019a 	lh	v0,410(s1)
     348:	10400003 	beqz	v0,358 <L80A922CC+0x2c>
     34c:	244bffff 	addiu	t3,v0,-1
     350:	a62b019a 	sh	t3,410(s1)
     354:	8622019a 	lh	v0,410(s1)
     358:	54410006 	bnel	v0,at,374 <L80A922CC+0x48>
     35c:	962e0156 	lhu	t6,342(s1)
     360:	8e2c0004 	lw	t4,4(s1)
     364:	2401fffe 	li	at,-2
     368:	01816824 	and	t5,t4,at
     36c:	ae2d0004 	sw	t5,4(s1)
     370:	962e0156 	lhu	t6,342(s1)
     374:	3401ffff 	li	at,0xffff
     378:	55c10004 	bnel	t6,at,38c <L80A922CC+0x60>
     37c:	862f015a 	lh	t7,346(s1)
     380:	0c000000 	jal	0 <func_80A91FA0>
     384:	8fa50104 	lw	a1,260(sp)
     388:	862f015a 	lh	t7,346(s1)
     38c:	55e0017e 	bnezl	t7,988 <L80A922CC+0x65c>
     390:	8e290028 	lw	t1,40(s1)
     394:	922201b1 	lbu	v0,433(s1)
     398:	24090006 	li	t1,6
     39c:	30580002 	andi	t8,v0,0x2
     3a0:	13000178 	beqz	t8,984 <L80A922CC+0x658>
     3a4:	3059fffd 	andi	t9,v0,0xfffd
     3a8:	c6240024 	lwc1	$f4,36(s1)
     3ac:	a23901b1 	sb	t9,433(s1)
     3b0:	a629015a 	sh	t1,346(s1)
     3b4:	e7a40010 	swc1	$f4,16(sp)
     3b8:	c6260028 	lwc1	$f6,40(s1)
     3bc:	8fa60104 	lw	a2,260(sp)
     3c0:	240effdd 	li	t6,-35
     3c4:	e7a60014 	swc1	$f6,20(sp)
     3c8:	c628002c 	lwc1	$f8,44(s1)
     3cc:	02202825 	move	a1,s1
     3d0:	24070141 	li	a3,321
     3d4:	e7a80018 	swc1	$f8,24(sp)
     3d8:	862b00b4 	lh	t3,180(s1)
     3dc:	24c41c24 	addiu	a0,a2,7204
     3e0:	afab001c 	sw	t3,28(sp)
     3e4:	862c00b6 	lh	t4,182(s1)
     3e8:	afac0020 	sw	t4,32(sp)
     3ec:	862d00b8 	lh	t5,184(s1)
     3f0:	afae0028 	sw	t6,40(sp)
     3f4:	0c000000 	jal	0 <func_80A91FA0>
     3f8:	afad0024 	sw	t5,36(sp)
     3fc:	10400161 	beqz	v0,984 <L80A922CC+0x658>
     400:	00408025 	move	s0,v0
     404:	8e2301dc 	lw	v1,476(s1)
     408:	862f008a 	lh	t7,138(s1)
     40c:	863800b6 	lh	t8,182(s1)
     410:	8c790000 	lw	t9,0(v1)
     414:	3c050000 	lui	a1,0x0
     418:	01f82023 	subu	a0,t7,t8
     41c:	00042400 	sll	a0,a0,0x10
     420:	33290700 	andi	t1,t9,0x700
     424:	11200008 	beqz	t1,448 <L80A922CC+0x11c>
     428:	00042403 	sra	a0,a0,0x10
     42c:	8faa00e8 	lw	t2,232(sp)
     430:	3c0c0000 	lui	t4,0x0
     434:	814b0842 	lb	t3,2114(t2)
     438:	018b6021 	addu	t4,t4,t3
     43c:	918c0000 	lbu	t4,0(t4)
     440:	10000002 	b	44c <L80A922CC+0x120>
     444:	a22c0194 	sb	t4,404(s1)
     448:	a2200194 	sb	zero,404(s1)
     44c:	04800003 	bltz	a0,45c <L80A922CC+0x130>
     450:	00041823 	negu	v1,a0
     454:	10000001 	b	45c <L80A922CC+0x130>
     458:	00801825 	move	v1,a0
     45c:	28614001 	slti	at,v1,16385
     460:	1420000c 	bnez	at,494 <L80A922CC+0x168>
     464:	3c040000 	lui	a0,0x0
     468:	92230194 	lbu	v1,404(s1)
     46c:	24010004 	li	at,4
     470:	240d0003 	li	t5,3
     474:	54610004 	bnel	v1,at,488 <L80A922CC+0x15c>
     478:	24010001 	li	at,1
     47c:	10000005 	b	494 <L80A922CC+0x168>
     480:	a22d0194 	sb	t5,404(s1)
     484:	24010001 	li	at,1
     488:	14610002 	bne	v1,at,494 <L80A922CC+0x168>
     48c:	240e0005 	li	t6,5
     490:	a22e0194 	sb	t6,404(s1)
     494:	922f0194 	lbu	t7,404(s1)
     498:	24a50000 	addiu	a1,a1,0
     49c:	962a0156 	lhu	t2,342(s1)
     4a0:	000fc040 	sll	t8,t7,0x1
     4a4:	00b8c821 	addu	t9,a1,t8
     4a8:	97290000 	lhu	t1,0(t9)
     4ac:	00001825 	move	v1,zero
     4b0:	24840000 	addiu	a0,a0,0
     4b4:	012a5824 	and	t3,t1,t2
     4b8:	316cffff 	andi	t4,t3,0xffff
     4bc:	15800005 	bnez	t4,4d4 <L80A922CC+0x1a8>
     4c0:	a44b0156 	sh	t3,342(v0)
     4c4:	0c000000 	jal	0 <func_80A91FA0>
     4c8:	02002025 	move	a0,s0
     4cc:	100005c2 	b	1bd8 <L80A93920+0x258>
     4d0:	8fbf003c 	lw	ra,60(sp)
     4d4:	a0400158 	sb	zero,344(v0)
     4d8:	00036840 	sll	t5,v1,0x1
     4dc:	008d7021 	addu	t6,a0,t5
     4e0:	95cf0000 	lhu	t7,0(t6)
     4e4:	94580156 	lhu	t8,342(v0)
     4e8:	24630001 	addiu	v1,v1,1
     4ec:	306300ff 	andi	v1,v1,0xff
     4f0:	01f8c824 	and	t9,t7,t8
     4f4:	13200004 	beqz	t9,508 <L80A922CC+0x1dc>
     4f8:	2861000b 	slti	at,v1,11
     4fc:	90490158 	lbu	t1,344(v0)
     500:	252a0001 	addiu	t2,t1,1
     504:	a04a0158 	sb	t2,344(v0)
     508:	5420fff4 	bnezl	at,4dc <L80A922CC+0x1b0>
     50c:	00036840 	sll	t5,v1,0x1
     510:	922c0194 	lbu	t4,404(s1)
     514:	962b0156 	lhu	t3,342(s1)
     518:	000c6840 	sll	t5,t4,0x1
     51c:	00ad7021 	addu	t6,a1,t5
     520:	95cf0000 	lhu	t7,0(t6)
     524:	01e0c027 	nor	t8,t7,zero
     528:	01784824 	and	t1,t3,t8
     52c:	312a03ff 	andi	t2,t1,0x3ff
     530:	15400003 	bnez	t2,540 <L80A922CC+0x214>
     534:	a6290156 	sh	t1,342(s1)
     538:	240c000a 	li	t4,10
     53c:	a62c019a 	sh	t4,410(s1)
     540:	94430156 	lhu	v1,342(v0)
     544:	30650001 	andi	a1,v1,0x1
     548:	10a00005 	beqz	a1,560 <L80A922CC+0x234>
     54c:	306d0080 	andi	t5,v1,0x80
     550:	51a00004 	beqzl	t5,564 <L80A922CC+0x238>
     554:	30680002 	andi	t0,v1,0x2
     558:	10000064 	b	6ec <L80A922CC+0x3c0>
     55c:	a0400195 	sb	zero,405(v0)
     560:	30680002 	andi	t0,v1,0x2
     564:	11000005 	beqz	t0,57c <L80A922CC+0x250>
     568:	306e0008 	andi	t6,v1,0x8
     56c:	11c00003 	beqz	t6,57c <L80A922CC+0x250>
     570:	240f0001 	li	t7,1
     574:	1000005d 	b	6ec <L80A922CC+0x3c0>
     578:	a04f0195 	sb	t7,405(v0)
     57c:	30670004 	andi	a3,v1,0x4
     580:	10e00005 	beqz	a3,598 <L80A922CC+0x26c>
     584:	306b0010 	andi	t3,v1,0x10
     588:	11600003 	beqz	t3,598 <L80A922CC+0x26c>
     58c:	24180002 	li	t8,2
     590:	10000056 	b	6ec <L80A922CC+0x3c0>
     594:	a0580195 	sb	t8,405(v0)
     598:	30660040 	andi	a2,v1,0x40
     59c:	10c00005 	beqz	a2,5b4 <L80A922CC+0x288>
     5a0:	30790080 	andi	t9,v1,0x80
     5a4:	13200003 	beqz	t9,5b4 <L80A922CC+0x288>
     5a8:	24090003 	li	t1,3
     5ac:	1000004f 	b	6ec <L80A922CC+0x3c0>
     5b0:	a0490195 	sb	t1,405(v0)
     5b4:	10a00005 	beqz	a1,5cc <L80A922CC+0x2a0>
     5b8:	306a0020 	andi	t2,v1,0x20
     5bc:	11400003 	beqz	t2,5cc <L80A922CC+0x2a0>
     5c0:	240c0004 	li	t4,4
     5c4:	10000049 	b	6ec <L80A922CC+0x3c0>
     5c8:	a04c0195 	sb	t4,405(v0)
     5cc:	10a00005 	beqz	a1,5e4 <L80A922CC+0x2b8>
     5d0:	00000000 	nop
     5d4:	11000003 	beqz	t0,5e4 <L80A922CC+0x2b8>
     5d8:	240d0005 	li	t5,5
     5dc:	10000043 	b	6ec <L80A922CC+0x3c0>
     5e0:	a04d0195 	sb	t5,405(v0)
     5e4:	10c00005 	beqz	a2,5fc <L80A922CC+0x2d0>
     5e8:	306e0008 	andi	t6,v1,0x8
     5ec:	11c00003 	beqz	t6,5fc <L80A922CC+0x2d0>
     5f0:	240f0006 	li	t7,6
     5f4:	1000003d 	b	6ec <L80A922CC+0x3c0>
     5f8:	a04f0195 	sb	t7,405(v0)
     5fc:	10e00005 	beqz	a3,614 <L80A922CC+0x2e8>
     600:	306b0020 	andi	t3,v1,0x20
     604:	11600003 	beqz	t3,614 <L80A922CC+0x2e8>
     608:	24180007 	li	t8,7
     60c:	10000037 	b	6ec <L80A922CC+0x3c0>
     610:	a0580195 	sb	t8,405(v0)
     614:	30640010 	andi	a0,v1,0x10
     618:	10800005 	beqz	a0,630 <L80A922CC+0x304>
     61c:	30790080 	andi	t9,v1,0x80
     620:	13200003 	beqz	t9,630 <L80A922CC+0x304>
     624:	24090008 	li	t1,8
     628:	10000030 	b	6ec <L80A922CC+0x3c0>
     62c:	a0490195 	sb	t1,405(v0)
     630:	10a00003 	beqz	a1,640 <L80A922CC+0x314>
     634:	240a0009 	li	t2,9
     638:	1000002c 	b	6ec <L80A922CC+0x3c0>
     63c:	a04a0195 	sb	t2,405(v0)
     640:	11000003 	beqz	t0,650 <L80A922CC+0x324>
     644:	240c000a 	li	t4,10
     648:	10000028 	b	6ec <L80A922CC+0x3c0>
     64c:	a04c0195 	sb	t4,405(v0)
     650:	10e00004 	beqz	a3,664 <L80A922CC+0x338>
     654:	306e0020 	andi	t6,v1,0x20
     658:	240d000b 	li	t5,11
     65c:	10000023 	b	6ec <L80A922CC+0x3c0>
     660:	a04d0195 	sb	t5,405(v0)
     664:	11c00003 	beqz	t6,674 <L80A922CC+0x348>
     668:	240f000c 	li	t7,12
     66c:	1000001f 	b	6ec <L80A922CC+0x3c0>
     670:	a04f0195 	sb	t7,405(v0)
     674:	10c00004 	beqz	a2,688 <L80A922CC+0x35c>
     678:	30780008 	andi	t8,v1,0x8
     67c:	240b000d 	li	t3,13
     680:	1000001a 	b	6ec <L80A922CC+0x3c0>
     684:	a04b0195 	sb	t3,405(v0)
     688:	13000003 	beqz	t8,698 <L80A922CC+0x36c>
     68c:	2419000e 	li	t9,14
     690:	10000016 	b	6ec <L80A922CC+0x3c0>
     694:	a0590195 	sb	t9,405(v0)
     698:	10800004 	beqz	a0,6ac <L80A922CC+0x380>
     69c:	306a0080 	andi	t2,v1,0x80
     6a0:	2409000f 	li	t1,15
     6a4:	10000011 	b	6ec <L80A922CC+0x3c0>
     6a8:	a0490195 	sb	t1,405(v0)
     6ac:	11400004 	beqz	t2,6c0 <L80A922CC+0x394>
     6b0:	306d0100 	andi	t5,v1,0x100
     6b4:	240c0010 	li	t4,16
     6b8:	1000000c 	b	6ec <L80A922CC+0x3c0>
     6bc:	a04c0195 	sb	t4,405(v0)
     6c0:	11a00004 	beqz	t5,6d4 <L80A922CC+0x3a8>
     6c4:	306f0200 	andi	t7,v1,0x200
     6c8:	240e0011 	li	t6,17
     6cc:	10000007 	b	6ec <L80A922CC+0x3c0>
     6d0:	a04e0195 	sb	t6,405(v0)
     6d4:	11e00004 	beqz	t7,6e8 <L80A922CC+0x3bc>
     6d8:	24180064 	li	t8,100
     6dc:	240b0012 	li	t3,18
     6e0:	10000002 	b	6ec <L80A922CC+0x3c0>
     6e4:	a04b0195 	sb	t3,405(v0)
     6e8:	a0580195 	sb	t8,405(v0)
     6ec:	90590195 	lbu	t9,405(v0)
     6f0:	24010064 	li	at,100
     6f4:	57210003 	bnel	t9,at,704 <L80A922CC+0x3d8>
     6f8:	862900b6 	lh	t1,182(s1)
     6fc:	a0400195 	sb	zero,405(v0)
     700:	862900b6 	lh	t1,182(s1)
     704:	3c014700 	lui	at,0x4700
     708:	44813000 	mtc1	at,$f6
     70c:	44895000 	mtc1	t1,$f10
     710:	3c010000 	lui	at,0x0
     714:	00002825 	move	a1,zero
     718:	46805120 	cvt.s.w	$f4,$f10
     71c:	c42a0000 	lwc1	$f10,0(at)
     720:	46062203 	div.s	$f8,$f4,$f6
     724:	460a4302 	mul.s	$f12,$f8,$f10
     728:	0c000000 	jal	0 <func_80A91FA0>
     72c:	00000000 	nop
     730:	920a0195 	lbu	t2,405(s0)
     734:	3c0d0000 	lui	t5,0x0
     738:	25ad0000 	addiu	t5,t5,0
     73c:	000a6080 	sll	t4,t2,0x2
     740:	018a6023 	subu	t4,t4,t2
     744:	000c6080 	sll	t4,t4,0x2
     748:	018d2021 	addu	a0,t4,t5
     74c:	0c000000 	jal	0 <func_80A91FA0>
     750:	27a500dc 	addiu	a1,sp,220
     754:	c6040024 	lwc1	$f4,36(s0)
     758:	c7a600dc 	lwc1	$f6,220(sp)
     75c:	c60a0028 	lwc1	$f10,40(s0)
     760:	92010195 	lbu	at,405(s0)
     764:	46062200 	add.s	$f8,$f4,$f6
     768:	3c0e0000 	lui	t6,0x0
     76c:	00011880 	sll	v1,at,0x2
     770:	00611823 	subu	v1,v1,at
     774:	e6080024 	swc1	$f8,36(s0)
     778:	c7a400e0 	lwc1	$f4,224(sp)
     77c:	c608002c 	lwc1	$f8,44(s0)
     780:	00031880 	sll	v1,v1,0x2
     784:	46045180 	add.s	$f6,$f10,$f4
     788:	25ce0000 	addiu	t6,t6,0
     78c:	006e1021 	addu	v0,v1,t6
     790:	3c0f0000 	lui	t7,0x0
     794:	e6060028 	swc1	$f6,40(s0)
     798:	c7aa00e4 	lwc1	$f10,228(sp)
     79c:	25ef0000 	addiu	t7,t7,0
     7a0:	006f2021 	addu	a0,v1,t7
     7a4:	460a4100 	add.s	$f4,$f8,$f10
     7a8:	3c01bf80 	lui	at,0xbf80
     7ac:	240b0001 	li	t3,1
     7b0:	e604002c 	swc1	$f4,44(s0)
     7b4:	c4460000 	lwc1	$f6,0(v0)
     7b8:	c62a0050 	lwc1	$f10,80(s1)
     7bc:	46003207 	neg.s	$f8,$f6
     7c0:	460a4103 	div.s	$f4,$f8,$f10
     7c4:	e604015c 	swc1	$f4,348(s0)
     7c8:	c4460004 	lwc1	$f6,4(v0)
     7cc:	c62a0050 	lwc1	$f10,80(s1)
     7d0:	46003207 	neg.s	$f8,$f6
     7d4:	460a4103 	div.s	$f4,$f8,$f10
     7d8:	e6040160 	swc1	$f4,352(s0)
     7dc:	c4460008 	lwc1	$f6,8(v0)
     7e0:	c62a0050 	lwc1	$f10,80(s1)
     7e4:	46003207 	neg.s	$f8,$f6
     7e8:	460a4103 	div.s	$f4,$f8,$f10
     7ec:	44815000 	mtc1	at,$f10
     7f0:	3c014640 	lui	at,0x4640
     7f4:	44816000 	mtc1	at,$f12
     7f8:	e6040164 	swc1	$f4,356(s0)
     7fc:	c4860000 	lwc1	$f6,0(a0)
     800:	e606017c 	swc1	$f6,380(s0)
     804:	c4880004 	lwc1	$f8,4(a0)
     808:	a20b0154 	sb	t3,340(s0)
     80c:	e60a006c 	swc1	$f10,108(s0)
     810:	0c000000 	jal	0 <func_80A91FA0>
     814:	e6080180 	swc1	$f8,384(s0)
     818:	4600010d 	trunc.w.s	$f4,$f0
     81c:	862c008a 	lh	t4,138(s1)
     820:	34018000 	li	at,0x8000
     824:	440a2000 	mfc1	t2,$f4
     828:	00000000 	nop
     82c:	014c6821 	addu	t5,t2,t4
     830:	01a17021 	addu	t6,t5,at
     834:	3c014000 	lui	at,0x4000
     838:	44816000 	mtc1	at,$f12
     83c:	0c000000 	jal	0 <func_80A91FA0>
     840:	a60e0032 	sh	t6,50(s0)
     844:	3c014040 	lui	at,0x4040
     848:	44813000 	mtc1	at,$f6
     84c:	3c014000 	lui	at,0x4000
     850:	44816000 	mtc1	at,$f12
     854:	46060200 	add.s	$f8,$f0,$f6
     858:	0c000000 	jal	0 <func_80A91FA0>
     85c:	e6080060 	swc1	$f8,96(s0)
     860:	3c014040 	lui	at,0x4040
     864:	44815000 	mtc1	at,$f10
     868:	920f0158 	lbu	t7,344(s0)
     86c:	460a0100 	add.s	$f4,$f0,$f10
     870:	29e10004 	slti	at,t7,4
     874:	14200013 	bnez	at,8c4 <L80A922CC+0x598>
     878:	e6040068 	swc1	$f4,104(s0)
     87c:	3c014120 	lui	at,0x4120
     880:	44816000 	mtc1	at,$f12
     884:	0c000000 	jal	0 <func_80A91FA0>
     888:	00000000 	nop
     88c:	4600018d 	trunc.w.s	$f6,$f0
     890:	3c014120 	lui	at,0x4120
     894:	44816000 	mtc1	at,$f12
     898:	44093000 	mfc1	t1,$f6
     89c:	00000000 	nop
     8a0:	252a0006 	addiu	t2,t1,6
     8a4:	0c000000 	jal	0 <func_80A91FA0>
     8a8:	a60a0176 	sh	t2,374(s0)
     8ac:	4600020d 	trunc.w.s	$f8,$f0
     8b0:	440f4000 	mfc1	t7,$f8
     8b4:	00000000 	nop
     8b8:	25eb0006 	addiu	t3,t7,6
     8bc:	10000012 	b	908 <L80A922CC+0x5dc>
     8c0:	a60b0178 	sh	t3,376(s0)
     8c4:	3c0140e0 	lui	at,0x40e0
     8c8:	44816000 	mtc1	at,$f12
     8cc:	0c000000 	jal	0 <func_80A91FA0>
     8d0:	00000000 	nop
     8d4:	4600028d 	trunc.w.s	$f10,$f0
     8d8:	3c0140e0 	lui	at,0x40e0
     8dc:	44816000 	mtc1	at,$f12
     8e0:	440a5000 	mfc1	t2,$f10
     8e4:	00000000 	nop
     8e8:	254c0003 	addiu	t4,t2,3
     8ec:	0c000000 	jal	0 <func_80A91FA0>
     8f0:	a60c0176 	sh	t4,374(s0)
     8f4:	4600010d 	trunc.w.s	$f4,$f0
     8f8:	440b2000 	mfc1	t3,$f4
     8fc:	00000000 	nop
     900:	25780003 	addiu	t8,t3,3
     904:	a6180178 	sh	t8,376(s0)
     908:	3c0145c0 	lui	at,0x45c0
     90c:	44816000 	mtc1	at,$f12
     910:	0c000000 	jal	0 <func_80A91FA0>
     914:	00000000 	nop
     918:	4600018d 	trunc.w.s	$f6,$f0
     91c:	44093000 	mfc1	t1,$f6
     920:	0c000000 	jal	0 <func_80A91FA0>
     924:	a6090170 	sh	t1,368(s0)
     928:	3c013f00 	lui	at,0x3f00
     92c:	44814000 	mtc1	at,$f8
     930:	240a0001 	li	t2,1
     934:	240cffff 	li	t4,-1
     938:	4608003c 	c.lt.s	$f0,$f8
     93c:	240d0064 	li	t5,100
     940:	2401fffe 	li	at,-2
     944:	24190005 	li	t9,5
     948:	45000003 	bc1f	958 <L80A922CC+0x62c>
     94c:	02202025 	move	a0,s1
     950:	10000002 	b	95c <L80A922CC+0x630>
     954:	a60a0184 	sh	t2,388(s0)
     958:	a60c0184 	sh	t4,388(s0)
     95c:	8e0e0004 	lw	t6,4(s0)
     960:	a60d0152 	sh	t5,338(s0)
     964:	24051811 	li	a1,6161
     968:	01c17824 	and	t7,t6,at
     96c:	3c010200 	lui	at,0x200
     970:	ae0f0004 	sw	t7,4(s0)
     974:	01e1c025 	or	t8,t7,at
     978:	ae180004 	sw	t8,4(s0)
     97c:	0c000000 	jal	0 <func_80A91FA0>
     980:	a6390196 	sh	t9,406(s1)
     984:	8e290028 	lw	t1,40(s1)
     988:	3c014230 	lui	at,0x4230
     98c:	8e2a0024 	lw	t2,36(s1)
     990:	ae29003c 	sw	t1,60(s1)
     994:	c62a003c 	lwc1	$f10,60(s1)
     998:	44812000 	mtc1	at,$f4
     99c:	ae2a0038 	sw	t2,56(s1)
     9a0:	8e2a002c 	lw	t2,44(s1)
     9a4:	46045180 	add.s	$f6,$f10,$f4
     9a8:	263001a0 	addiu	s0,s1,416
     9ac:	02002825 	move	a1,s0
     9b0:	02202025 	move	a0,s1
     9b4:	e626003c 	swc1	$f6,60(s1)
     9b8:	0c000000 	jal	0 <func_80A91FA0>
     9bc:	ae2a0040 	sw	t2,64(s1)
     9c0:	8fa40104 	lw	a0,260(sp)
     9c4:	3c010001 	lui	at,0x1
     9c8:	34211e60 	ori	at,at,0x1e60
     9cc:	00812821 	addu	a1,a0,at
     9d0:	afa50054 	sw	a1,84(sp)
     9d4:	0c000000 	jal	0 <func_80A91FA0>
     9d8:	02003025 	move	a2,s0
     9dc:	8fa50054 	lw	a1,84(sp)
     9e0:	8fa40104 	lw	a0,260(sp)
     9e4:	0c000000 	jal	0 <func_80A91FA0>
     9e8:	02003025 	move	a2,s0
     9ec:	3c0143fa 	lui	at,0x43fa
     9f0:	44814000 	mtc1	at,$f8
     9f4:	c62a0090 	lwc1	$f10,144(s1)
     9f8:	460a403c 	c.lt.s	$f8,$f10
     9fc:	00000000 	nop
     a00:	45020007 	bc1fl	a20 <L80A922CC+0x6f4>
     a04:	86220196 	lh	v0,406(s1)
     a08:	8e2d0004 	lw	t5,4(s1)
     a0c:	340fffff 	li	t7,0xffff
     a10:	a62f0156 	sh	t7,342(s1)
     a14:	35ae0001 	ori	t6,t5,0x1
     a18:	ae2e0004 	sw	t6,4(s1)
     a1c:	86220196 	lh	v0,406(s1)
     a20:	1040046c 	beqz	v0,1bd4 <L80A93920+0x254>
     a24:	28410005 	slti	at,v0,5
     a28:	5420000c 	bnezl	at,a5c <L80A922CC+0x730>
     a2c:	862a0198 	lh	t2,408(s1)
     a30:	862b0198 	lh	t3,408(s1)
     a34:	240900ff 	li	t1,255
     a38:	257800ff 	addiu	t8,t3,255
     a3c:	a6380198 	sh	t8,408(s1)
     a40:	86390198 	lh	t9,408(s1)
     a44:	2b210100 	slti	at,t9,256
     a48:	5420000b 	bnezl	at,a78 <L80A922CC+0x74c>
     a4c:	862e0196 	lh	t6,406(s1)
     a50:	10000008 	b	a74 <L80A922CC+0x748>
     a54:	a6290198 	sh	t1,408(s1)
     a58:	862a0198 	lh	t2,408(s1)
     a5c:	254cffbf 	addiu	t4,t2,-65
     a60:	a62c0198 	sh	t4,408(s1)
     a64:	862d0198 	lh	t5,408(s1)
     a68:	05a30003 	bgezl	t5,a78 <L80A922CC+0x74c>
     a6c:	862e0196 	lh	t6,406(s1)
     a70:	a6200198 	sh	zero,408(s1)
     a74:	862e0196 	lh	t6,406(s1)
     a78:	25cfffff 	addiu	t7,t6,-1
     a7c:	10000455 	b	1bd4 <L80A93920+0x254>
     a80:	a62f0196 	sh	t7,406(s1)

00000a84 <L80A92A24>:
     a84:	0c000000 	jal	0 <func_80A91FA0>
     a88:	02202025 	move	a0,s1
     a8c:	3c0141f0 	lui	at,0x41f0
     a90:	44810000 	mtc1	at,$f0
     a94:	3c014248 	lui	at,0x4248
     a98:	44812000 	mtc1	at,$f4
     a9c:	240b0005 	li	t3,5
     aa0:	44060000 	mfc1	a2,$f0
     aa4:	44070000 	mfc1	a3,$f0
     aa8:	afab0014 	sw	t3,20(sp)
     aac:	8fa40104 	lw	a0,260(sp)
     ab0:	02202825 	move	a1,s1
     ab4:	0c000000 	jal	0 <func_80A91FA0>
     ab8:	e7a40010 	swc1	$f4,16(sp)
     abc:	c6260024 	lwc1	$f6,36(s1)
     ac0:	3c01c248 	lui	at,0xc248
     ac4:	24180004 	li	t8,4
     ac8:	e7a600cc 	swc1	$f6,204(sp)
     acc:	c6200028 	lwc1	$f0,40(s1)
     ad0:	44813000 	mtc1	at,$f6
     ad4:	3c0142c8 	lui	at,0x42c8
     ad8:	e7a000c8 	swc1	$f0,200(sp)
     adc:	c622002c 	lwc1	$f2,44(s1)
     ae0:	02202825 	move	a1,s1
     ae4:	3c064120 	lui	a2,0x4120
     ae8:	e7a200c4 	swc1	$f2,196(sp)
     aec:	c6280084 	lwc1	$f8,132(s1)
     af0:	96300088 	lhu	s0,136(s1)
     af4:	3c074120 	lui	a3,0x4120
     af8:	e7a800c0 	swc1	$f8,192(sp)
     afc:	c62a0080 	lwc1	$f10,128(s1)
     b00:	460a0101 	sub.s	$f4,$f0,$f10
     b04:	44815000 	mtc1	at,$f10
     b08:	3c014248 	lui	at,0x4248
     b0c:	46062202 	mul.s	$f8,$f4,$f6
     b10:	460a4103 	div.s	$f4,$f8,$f10
     b14:	44814000 	mtc1	at,$f8
     b18:	46041180 	add.s	$f6,$f2,$f4
     b1c:	e626002c 	swc1	$f6,44(s1)
     b20:	afb80014 	sw	t8,20(sp)
     b24:	8fa40104 	lw	a0,260(sp)
     b28:	0c000000 	jal	0 <func_80A91FA0>
     b2c:	e7a80010 	swc1	$f8,16(sp)
     b30:	0c000000 	jal	0 <func_80A91FA0>
     b34:	02202025 	move	a0,s1
     b38:	c7aa00cc 	lwc1	$f10,204(sp)
     b3c:	3c040000 	lui	a0,0x0
     b40:	24840000 	addiu	a0,a0,0
     b44:	e62a0024 	swc1	$f10,36(s1)
     b48:	c7a400c8 	lwc1	$f4,200(sp)
     b4c:	e6240028 	swc1	$f4,40(s1)
     b50:	c7a600c4 	lwc1	$f6,196(sp)
     b54:	a6300088 	sh	s0,136(s1)
     b58:	e626002c 	swc1	$f6,44(s1)
     b5c:	c7a800c0 	lwc1	$f8,192(sp)
     b60:	0c000000 	jal	0 <func_80A91FA0>
     b64:	e6280084 	swc1	$f8,132(s1)
     b68:	96300088 	lhu	s0,136(s1)
     b6c:	82390174 	lb	t9,372(s1)
     b70:	32100001 	andi	s0,s0,0x1
     b74:	1320000f 	beqz	t9,bb4 <L80A92A24+0x130>
     b78:	321000ff 	andi	s0,s0,0xff
     b7c:	8622016e 	lh	v0,366(s1)
     b80:	86290168 	lh	t1,360(s1)
     b84:	244cf800 	addiu	t4,v0,-2048
     b88:	01225021 	addu	t2,t1,v0
     b8c:	a62a0168 	sh	t2,360(s1)
     b90:	862d0168 	lh	t5,360(s1)
     b94:	a62c016e 	sh	t4,366(s1)
     b98:	5da00014 	bgtzl	t5,bec <L80A92A24+0x168>
     b9c:	8639016e 	lh	t9,366(s1)
     ba0:	52000012 	beqzl	s0,bec <L80A92A24+0x168>
     ba4:	8639016e 	lh	t9,366(s1)
     ba8:	a6200168 	sh	zero,360(s1)
     bac:	1000000e 	b	be8 <L80A92A24+0x164>
     bb0:	a620016e 	sh	zero,366(s1)
     bb4:	8622016e 	lh	v0,366(s1)
     bb8:	862e0168 	lh	t6,360(s1)
     bbc:	244bf800 	addiu	t3,v0,-2048
     bc0:	01c27823 	subu	t7,t6,v0
     bc4:	a62f0168 	sh	t7,360(s1)
     bc8:	86380168 	lh	t8,360(s1)
     bcc:	a62b016e 	sh	t3,366(s1)
     bd0:	07020006 	bltzl	t8,bec <L80A92A24+0x168>
     bd4:	8639016e 	lh	t9,366(s1)
     bd8:	52000004 	beqzl	s0,bec <L80A92A24+0x168>
     bdc:	8639016e 	lh	t9,366(s1)
     be0:	a6200168 	sh	zero,360(s1)
     be4:	a620016e 	sh	zero,366(s1)
     be8:	8639016e 	lh	t9,366(s1)
     bec:	2409f400 	li	t1,-3072
     bf0:	2b21f400 	slti	at,t9,-3072
     bf4:	50200003 	beqzl	at,c04 <L80A92A24+0x180>
     bf8:	822a0175 	lb	t2,373(s1)
     bfc:	a629016e 	sh	t1,366(s1)
     c00:	822a0175 	lb	t2,373(s1)
     c04:	51400010 	beqzl	t2,c48 <L80A92A24+0x1c4>
     c08:	86220172 	lh	v0,370(s1)
     c0c:	86220172 	lh	v0,370(s1)
     c10:	862c016c 	lh	t4,364(s1)
     c14:	244ef800 	addiu	t6,v0,-2048
     c18:	01826821 	addu	t5,t4,v0
     c1c:	a62d016c 	sh	t5,364(s1)
     c20:	862f016c 	lh	t7,364(s1)
     c24:	a62e0172 	sh	t6,370(s1)
     c28:	5de00014 	bgtzl	t7,c7c <L80A92A24+0x1f8>
     c2c:	862a0172 	lh	t2,370(s1)
     c30:	52000012 	beqzl	s0,c7c <L80A92A24+0x1f8>
     c34:	862a0172 	lh	t2,370(s1)
     c38:	a620016c 	sh	zero,364(s1)
     c3c:	1000000e 	b	c78 <L80A92A24+0x1f4>
     c40:	a6200172 	sh	zero,370(s1)
     c44:	86220172 	lh	v0,370(s1)
     c48:	862b016c 	lh	t3,364(s1)
     c4c:	2459f800 	addiu	t9,v0,-2048
     c50:	0162c023 	subu	t8,t3,v0
     c54:	a638016c 	sh	t8,364(s1)
     c58:	8629016c 	lh	t1,364(s1)
     c5c:	a6390172 	sh	t9,370(s1)
     c60:	05220006 	bltzl	t1,c7c <L80A92A24+0x1f8>
     c64:	862a0172 	lh	t2,370(s1)
     c68:	52000004 	beqzl	s0,c7c <L80A92A24+0x1f8>
     c6c:	862a0172 	lh	t2,370(s1)
     c70:	a620016c 	sh	zero,364(s1)
     c74:	a6200172 	sh	zero,370(s1)
     c78:	862a0172 	lh	t2,370(s1)
     c7c:	240cf400 	li	t4,-3072
     c80:	2941f400 	slti	at,t2,-3072
     c84:	50200003 	beqzl	at,c94 <L80A92A24+0x210>
     c88:	96220088 	lhu	v0,136(s1)
     c8c:	a62c0172 	sh	t4,370(s1)
     c90:	96220088 	lhu	v0,136(s1)
     c94:	3c01bf00 	lui	at,0xbf00
     c98:	304d0008 	andi	t5,v0,0x8
     c9c:	51a0000a 	beqzl	t5,cc8 <L80A92A24+0x244>
     ca0:	304e0040 	andi	t6,v0,0x40
     ca4:	c62a0068 	lwc1	$f10,104(s1)
     ca8:	44812000 	mtc1	at,$f4
     cac:	02202025 	move	a0,s1
     cb0:	240528b4 	li	a1,10420
     cb4:	46045182 	mul.s	$f6,$f10,$f4
     cb8:	0c000000 	jal	0 <func_80A91FA0>
     cbc:	e6260068 	swc1	$f6,104(s1)
     cc0:	96220088 	lhu	v0,136(s1)
     cc4:	304e0040 	andi	t6,v0,0x40
     cc8:	11c00043 	beqz	t6,dd8 <L80A92A24+0x354>
     ccc:	240f0004 	li	t7,4
     cd0:	a22f0154 	sb	t7,340(s1)
     cd4:	02202025 	move	a0,s1
     cd8:	0c000000 	jal	0 <func_80A91FA0>
     cdc:	24052817 	li	a1,10263
     ce0:	c6280028 	lwc1	$f8,40(s1)
     ce4:	c62a0084 	lwc1	$f10,132(s1)
     ce8:	a6200178 	sh	zero,376(s1)
     cec:	862b0178 	lh	t3,376(s1)
     cf0:	460a4100 	add.s	$f4,$f8,$f10
     cf4:	26300024 	addiu	s0,s1,36
     cf8:	a62b0176 	sh	t3,374(s1)
     cfc:	02002825 	move	a1,s0
     d00:	e6240028 	swc1	$f4,40(s1)
     d04:	afa00010 	sw	zero,16(sp)
     d08:	92380158 	lbu	t8,344(s1)
     d0c:	8fa40104 	lw	a0,260(sp)
     d10:	00003025 	move	a2,zero
     d14:	0018c880 	sll	t9,t8,0x2
     d18:	0338c821 	addu	t9,t9,t8
     d1c:	0019c880 	sll	t9,t9,0x2
     d20:	2729012c 	addiu	t1,t9,300
     d24:	afa90014 	sw	t1,20(sp)
     d28:	0c000000 	jal	0 <func_80A91FA0>
     d2c:	00003825 	move	a3,zero
     d30:	8fa40104 	lw	a0,260(sp)
     d34:	02002825 	move	a1,s0
     d38:	24060096 	li	a2,150
     d3c:	2407028a 	li	a3,650
     d40:	0c000000 	jal	0 <func_80A91FA0>
     d44:	afa00010 	sw	zero,16(sp)
     d48:	240a0005 	li	t2,5
     d4c:	afaa0010 	sw	t2,16(sp)
     d50:	8fa40104 	lw	a0,260(sp)
     d54:	02002825 	move	a1,s0
     d58:	2406012c 	li	a2,300
     d5c:	0c000000 	jal	0 <func_80A91FA0>
     d60:	24070320 	li	a3,800
     d64:	c62a0084 	lwc1	$f10,132(s1)
     d68:	44803000 	mtc1	zero,$f6
     d6c:	44804000 	mtc1	zero,$f8
     d70:	46005121 	cvt.d.s	$f4,$f10
     d74:	3c040000 	lui	a0,0x0
     d78:	44072000 	mfc1	a3,$f4
     d7c:	44062800 	mfc1	a2,$f5
     d80:	24840000 	addiu	a0,a0,0
     d84:	e6260060 	swc1	$f6,96(s1)
     d88:	0c000000 	jal	0 <func_80A91FA0>
     d8c:	e628006c 	swc1	$f8,108(s1)
     d90:	c6260028 	lwc1	$f6,40(s1)
     d94:	3c040000 	lui	a0,0x0
     d98:	24840000 	addiu	a0,a0,0
     d9c:	46003221 	cvt.d.s	$f8,$f6
     da0:	44074000 	mfc1	a3,$f8
     da4:	44064800 	mfc1	a2,$f9
     da8:	0c000000 	jal	0 <func_80A91FA0>
     dac:	00000000 	nop
     db0:	c62a0080 	lwc1	$f10,128(s1)
     db4:	3c040000 	lui	a0,0x0
     db8:	24840000 	addiu	a0,a0,0
     dbc:	46005121 	cvt.d.s	$f4,$f10
     dc0:	44072000 	mfc1	a3,$f4
     dc4:	44062800 	mfc1	a2,$f5
     dc8:	0c000000 	jal	0 <func_80A91FA0>
     dcc:	00000000 	nop
     dd0:	10000381 	b	1bd8 <L80A93920+0x258>
     dd4:	8fbf003c 	lw	ra,60(sp)
     dd8:	5200005e 	beqzl	s0,f54 <L80A92A24+0x4d0>
     ddc:	86380184 	lh	t8,388(s1)
     de0:	9222017a 	lbu	v0,378(s1)
     de4:	3c010000 	lui	at,0x0
     de8:	1c400010 	bgtz	v0,e2c <L80A92A24+0x3a8>
     dec:	244c0001 	addiu	t4,v0,1
     df0:	a22c017a 	sb	t4,378(s1)
     df4:	c4280000 	lwc1	$f8,0(at)
     df8:	c6260060 	lwc1	$f6,96(s1)
     dfc:	3c014680 	lui	at,0x4680
     e00:	44816000 	mtc1	at,$f12
     e04:	46083282 	mul.s	$f10,$f6,$f8
     e08:	0c000000 	jal	0 <func_80A91FA0>
     e0c:	e62a0060 	swc1	$f10,96(s1)
     e10:	4600010d 	trunc.w.s	$f4,$f0
     e14:	862d0032 	lh	t5,50(s1)
     e18:	44182000 	mfc1	t8,$f4
     e1c:	00000000 	nop
     e20:	01b8c821 	addu	t9,t5,t8
     e24:	10000004 	b	e38 <L80A92A24+0x3b4>
     e28:	a6390032 	sh	t9,50(s1)
     e2c:	44803000 	mtc1	zero,$f6
     e30:	00000000 	nop
     e34:	e6260060 	swc1	$f6,96(s1)
     e38:	3c010000 	lui	at,0x0
     e3c:	c42a0000 	lwc1	$f10,0(at)
     e40:	c6280068 	lwc1	$f8,104(s1)
     e44:	86290168 	lh	t1,360(s1)
     e48:	460a4102 	mul.s	$f4,$f8,$f10
     e4c:	1520001a 	bnez	t1,eb8 <L80A92A24+0x434>
     e50:	e6240068 	swc1	$f4,104(s1)
     e54:	86220176 	lh	v0,374(s1)
     e58:	10400017 	beqz	v0,eb8 <L80A92A24+0x434>
     e5c:	00025240 	sll	t2,v0,0x9
     e60:	10400007 	beqz	v0,e80 <L80A92A24+0x3fc>
     e64:	a62a016e 	sh	t2,366(s1)
     e68:	244cfffb 	addiu	t4,v0,-5
     e6c:	a62c0176 	sh	t4,374(s1)
     e70:	862e0176 	lh	t6,374(s1)
     e74:	1dc00002 	bgtz	t6,e80 <L80A92A24+0x3fc>
     e78:	00000000 	nop
     e7c:	a6200176 	sh	zero,374(s1)
     e80:	0c000000 	jal	0 <func_80A91FA0>
     e84:	00000000 	nop
     e88:	3c013f00 	lui	at,0x3f00
     e8c:	44813000 	mtc1	at,$f6
     e90:	240f0001 	li	t7,1
     e94:	240b0001 	li	t3,1
     e98:	4606003c 	c.lt.s	$f0,$f6
     e9c:	00000000 	nop
     ea0:	45020004 	bc1fl	eb4 <L80A92A24+0x430>
     ea4:	a2200174 	sb	zero,372(s1)
     ea8:	10000002 	b	eb4 <L80A92A24+0x430>
     eac:	a22f0174 	sb	t7,372(s1)
     eb0:	a2200174 	sb	zero,372(s1)
     eb4:	a3ab00ff 	sb	t3,255(sp)
     eb8:	862d016c 	lh	t5,364(s1)
     ebc:	55a0001b 	bnezl	t5,f2c <L80A92A24+0x4a8>
     ec0:	86250184 	lh	a1,388(s1)
     ec4:	86220178 	lh	v0,376(s1)
     ec8:	24190001 	li	t9,1
     ecc:	10400016 	beqz	v0,f28 <L80A92A24+0x4a4>
     ed0:	0002c240 	sll	t8,v0,0x9
     ed4:	a6380172 	sh	t8,370(s1)
     ed8:	10400007 	beqz	v0,ef8 <L80A92A24+0x474>
     edc:	a3b900ff 	sb	t9,255(sp)
     ee0:	2449fffb 	addiu	t1,v0,-5
     ee4:	a6290178 	sh	t1,376(s1)
     ee8:	862a0178 	lh	t2,376(s1)
     eec:	1d400002 	bgtz	t2,ef8 <L80A92A24+0x474>
     ef0:	00000000 	nop
     ef4:	a6200178 	sh	zero,376(s1)
     ef8:	0c000000 	jal	0 <func_80A91FA0>
     efc:	00000000 	nop
     f00:	3c013f00 	lui	at,0x3f00
     f04:	44814000 	mtc1	at,$f8
     f08:	240c0001 	li	t4,1
     f0c:	4608003c 	c.lt.s	$f0,$f8
     f10:	00000000 	nop
     f14:	45020004 	bc1fl	f28 <L80A92A24+0x4a4>
     f18:	a2200175 	sb	zero,373(s1)
     f1c:	10000002 	b	f28 <L80A92A24+0x4a4>
     f20:	a22c0175 	sb	t4,373(s1)
     f24:	a2200175 	sb	zero,373(s1)
     f28:	86250184 	lh	a1,388(s1)
     f2c:	262400b4 	addiu	a0,s1,180
     f30:	24060001 	li	a2,1
     f34:	00052b80 	sll	a1,a1,0xe
     f38:	00052c00 	sll	a1,a1,0x10
     f3c:	00052c03 	sra	a1,a1,0x10
     f40:	0c000000 	jal	0 <func_80A91FA0>
     f44:	24072000 	li	a3,8192
     f48:	1000000f 	b	f88 <L80A92A24+0x504>
     f4c:	93aa00ff 	lbu	t2,255(sp)
     f50:	86380184 	lh	t8,388(s1)
     f54:	862e00b6 	lh	t6,182(s1)
     f58:	862f0170 	lh	t7,368(s1)
     f5c:	0018c940 	sll	t9,t8,0x5
     f60:	0338c823 	subu	t9,t9,t8
     f64:	862d00b4 	lh	t5,180(s1)
     f68:	0019c880 	sll	t9,t9,0x2
     f6c:	0338c821 	addu	t9,t9,t8
     f70:	0019c900 	sll	t9,t9,0x4
     f74:	01cf5821 	addu	t3,t6,t7
     f78:	01b94821 	addu	t1,t5,t9
     f7c:	a62b00b6 	sh	t3,182(s1)
     f80:	a62900b4 	sh	t1,180(s1)
     f84:	93aa00ff 	lbu	t2,255(sp)
     f88:	3c0e0000 	lui	t6,0x0
     f8c:	25ce0000 	addiu	t6,t6,0
     f90:	1140005f 	beqz	t2,1110 <L80A92A24+0x68c>
     f94:	27ac00ac 	addiu	t4,sp,172
     f98:	8dcb0000 	lw	t3,0(t6)
     f9c:	8dcf0004 	lw	t7,4(t6)
     fa0:	02202025 	move	a0,s1
     fa4:	ad8b0000 	sw	t3,0(t4)
     fa8:	8dcb0008 	lw	t3,8(t6)
     fac:	240528b4 	li	a1,10420
     fb0:	ad8f0004 	sw	t7,4(t4)
     fb4:	0c000000 	jal	0 <func_80A91FA0>
     fb8:	ad8b0008 	sw	t3,8(t4)
     fbc:	3c013f00 	lui	at,0x3f00
     fc0:	44810000 	mtc1	at,$f0
     fc4:	44805000 	mtc1	zero,$f10
     fc8:	3c010000 	lui	at,0x0
     fcc:	c4240000 	lwc1	$f4,0(at)
     fd0:	44803000 	mtc1	zero,$f6
     fd4:	e7aa00a0 	swc1	$f10,160(sp)
     fd8:	3c014040 	lui	at,0x4040
     fdc:	e7a400a4 	swc1	$f4,164(sp)
     fe0:	e7a600a8 	swc1	$f6,168(sp)
     fe4:	c6280080 	lwc1	$f8,128(s1)
     fe8:	44815000 	mtc1	at,$f10
     fec:	3c014f80 	lui	at,0x4f80
     ff0:	460a4100 	add.s	$f4,$f8,$f10
     ff4:	e7a40098 	swc1	$f4,152(sp)
     ff8:	92380158 	lbu	t8,344(s1)
     ffc:	44983000 	mtc1	t8,$f6
    1000:	07010004 	bgez	t8,1014 <L80A92A24+0x590>
    1004:	46803220 	cvt.s.w	$f8,$f6
    1008:	44815000 	mtc1	at,$f10
    100c:	00000000 	nop
    1010:	460a4200 	add.s	$f8,$f8,$f10
    1014:	46004102 	mul.s	$f4,$f8,$f0
    1018:	00008025 	move	s0,zero
    101c:	4600218d 	trunc.w.s	$f6,$f4
    1020:	44023000 	mfc1	v0,$f6
    1024:	00000000 	nop
    1028:	00021400 	sll	v0,v0,0x10
    102c:	00021403 	sra	v0,v0,0x10
    1030:	24430003 	addiu	v1,v0,3
    1034:	58600037 	blezl	v1,1114 <L80A92A24+0x690>
    1038:	86220152 	lh	v0,338(s1)
    103c:	afa30054 	sw	v1,84(sp)
    1040:	92390158 	lbu	t9,344(s1)
    1044:	3c013f00 	lui	at,0x3f00
    1048:	44810000 	mtc1	at,$f0
    104c:	44995000 	mtc1	t9,$f10
    1050:	3c014f80 	lui	at,0x4f80
    1054:	07210004 	bgez	t9,1068 <L80A92A24+0x5e4>
    1058:	46805220 	cvt.s.w	$f8,$f10
    105c:	44812000 	mtc1	at,$f4
    1060:	00000000 	nop
    1064:	46044200 	add.s	$f8,$f8,$f4
    1068:	46004182 	mul.s	$f6,$f8,$f0
    106c:	3c0141a0 	lui	at,0x41a0
    1070:	44815000 	mtc1	at,$f10
    1074:	0c000000 	jal	0 <func_80A91FA0>
    1078:	460a3300 	add.s	$f12,$f6,$f10
    107c:	c6240024 	lwc1	$f4,36(s1)
    1080:	3c014f80 	lui	at,0x4f80
    1084:	46040200 	add.s	$f8,$f0,$f4
    1088:	e7a80094 	swc1	$f8,148(sp)
    108c:	92290158 	lbu	t1,344(s1)
    1090:	44893000 	mtc1	t1,$f6
    1094:	05210004 	bgez	t1,10a8 <L80A92A24+0x624>
    1098:	468032a0 	cvt.s.w	$f10,$f6
    109c:	44812000 	mtc1	at,$f4
    10a0:	00000000 	nop
    10a4:	46045280 	add.s	$f10,$f10,$f4
    10a8:	3c013f00 	lui	at,0x3f00
    10ac:	44814000 	mtc1	at,$f8
    10b0:	3c0141a0 	lui	at,0x41a0
    10b4:	44812000 	mtc1	at,$f4
    10b8:	46085182 	mul.s	$f6,$f10,$f8
    10bc:	0c000000 	jal	0 <func_80A91FA0>
    10c0:	46043300 	add.s	$f12,$f6,$f4
    10c4:	c62a002c 	lwc1	$f10,44(s1)
    10c8:	240a0064 	li	t2,100
    10cc:	240c0005 	li	t4,5
    10d0:	460a0200 	add.s	$f8,$f0,$f10
    10d4:	afac0014 	sw	t4,20(sp)
    10d8:	afaa0010 	sw	t2,16(sp)
    10dc:	8fa40104 	lw	a0,260(sp)
    10e0:	e7a8009c 	swc1	$f8,156(sp)
    10e4:	27a50094 	addiu	a1,sp,148
    10e8:	27a600ac 	addiu	a2,sp,172
    10ec:	0c000000 	jal	0 <func_80A91FA0>
    10f0:	27a700a0 	addiu	a3,sp,160
    10f4:	8fae0054 	lw	t6,84(sp)
    10f8:	26100001 	addiu	s0,s0,1
    10fc:	00108400 	sll	s0,s0,0x10
    1100:	00108403 	sra	s0,s0,0x10
    1104:	020e082a 	slt	at,s0,t6
    1108:	5420ffce 	bnezl	at,1044 <L80A92A24+0x5c0>
    110c:	92390158 	lbu	t9,344(s1)
    1110:	86220152 	lh	v0,338(s1)
    1114:	240b0003 	li	t3,3
    1118:	14400003 	bnez	v0,1128 <L80A92A24+0x6a4>
    111c:	244fffff 	addiu	t7,v0,-1
    1120:	10000003 	b	1130 <L80A92A24+0x6ac>
    1124:	00001825 	move	v1,zero
    1128:	a62f0152 	sh	t7,338(s1)
    112c:	86230152 	lh	v1,338(s1)
    1130:	14600002 	bnez	v1,113c <L80A930DC>
    1134:	00000000 	nop
    1138:	a22b0154 	sb	t3,340(s1)

0000113c <L80A930DC>:
    113c:	8e300118 	lw	s0,280(s1)
    1140:	3401ffff 	li	at,0xffff
    1144:	96180156 	lhu	t8,342(s0)
    1148:	57010004 	bnel	t8,at,115c <L80A930DC+0x20>
    114c:	262400bc 	addiu	a0,s1,188
    1150:	0c000000 	jal	0 <func_80A91FA0>
    1154:	02202025 	move	a0,s1
    1158:	262400bc 	addiu	a0,s1,188
    115c:	3c0542c8 	lui	a1,0x42c8
    1160:	3c063f80 	lui	a2,0x3f80
    1164:	0c000000 	jal	0 <func_80A91FA0>
    1168:	3c0740a0 	lui	a3,0x40a0
    116c:	922d0154 	lbu	t5,340(s1)
    1170:	24010004 	li	at,4
    1174:	8fb900e8 	lw	t9,232(sp)
    1178:	15a100e4 	bne	t5,at,150c <L80A930DC+0x3d0>
    117c:	8fac0104 	lw	t4,260(sp)
    1180:	c7200068 	lwc1	$f0,104(t9)
    1184:	44803000 	mtc1	zero,$f6
    1188:	262900b4 	addiu	t1,s1,180
    118c:	afa90050 	sw	t1,80(sp)
    1190:	4600303c 	c.lt.s	$f6,$f0
    1194:	00000000 	nop
    1198:	45020037 	bc1fl	1278 <L80A930DC+0x13c>
    119c:	962b0088 	lhu	t3,136(s1)
    11a0:	c7240028 	lwc1	$f4,40(t9)
    11a4:	c62a0028 	lwc1	$f10,40(s1)
    11a8:	3c010000 	lui	at,0x0
    11ac:	460a203c 	c.lt.s	$f4,$f10
    11b0:	00000000 	nop
    11b4:	45020030 	bc1fl	1278 <L80A930DC+0x13c>
    11b8:	962b0088 	lhu	t3,136(s1)
    11bc:	c628008c 	lwc1	$f8,140(s1)
    11c0:	c4260000 	lwc1	$f6,0(at)
    11c4:	26240068 	addiu	a0,s1,104
    11c8:	3c063f80 	lui	a2,0x3f80
    11cc:	4606403c 	c.lt.s	$f8,$f6
    11d0:	3c073e4c 	lui	a3,0x3e4c
    11d4:	45020028 	bc1fl	1278 <L80A930DC+0x13c>
    11d8:	962b0088 	lhu	t3,136(s1)
    11dc:	44050000 	mfc1	a1,$f0
    11e0:	0c000000 	jal	0 <func_80A91FA0>
    11e4:	34e7cccd 	ori	a3,a3,0xcccd
    11e8:	3c013f80 	lui	at,0x3f80
    11ec:	44810000 	mtc1	at,$f0
    11f0:	c6240068 	lwc1	$f4,104(s1)
    11f4:	34018000 	li	at,0x8000
    11f8:	26240032 	addiu	a0,s1,50
    11fc:	4604003c 	c.lt.s	$f0,$f4
    1200:	24060001 	li	a2,1
    1204:	45020003 	bc1fl	1214 <L80A930DC+0xd8>
    1208:	8625008a 	lh	a1,138(s1)
    120c:	e6200068 	swc1	$f0,104(s1)
    1210:	8625008a 	lh	a1,138(s1)
    1214:	afa00010 	sw	zero,16(sp)
    1218:	24071000 	li	a3,4096
    121c:	00a12821 	addu	a1,a1,at
    1220:	00052c00 	sll	a1,a1,0x10
    1224:	0c000000 	jal	0 <func_80A91FA0>
    1228:	00052c03 	sra	a1,a1,0x10
    122c:	18400009 	blez	v0,1254 <L80A930DC+0x118>
    1230:	3c01c47a 	lui	at,0xc47a
    1234:	3c01447a 	lui	at,0x447a
    1238:	44814000 	mtc1	at,$f8
    123c:	c62a0068 	lwc1	$f10,104(s1)
    1240:	46085182 	mul.s	$f6,$f10,$f8
    1244:	4600310d 	trunc.w.s	$f4,$f6
    1248:	440c2000 	mfc1	t4,$f4
    124c:	10000009 	b	1274 <L80A930DC+0x138>
    1250:	a62c0170 	sh	t4,368(s1)
    1254:	c62a0068 	lwc1	$f10,104(s1)
    1258:	44814000 	mtc1	at,$f8
    125c:	00000000 	nop
    1260:	46085182 	mul.s	$f6,$f10,$f8
    1264:	4600310d 	trunc.w.s	$f4,$f6
    1268:	440f2000 	mfc1	t7,$f4
    126c:	00000000 	nop
    1270:	a62f0170 	sh	t7,368(s1)
    1274:	962b0088 	lhu	t3,136(s1)
    1278:	31780001 	andi	t8,t3,0x1
    127c:	13000004 	beqz	t8,1290 <L80A930DC+0x154>
    1280:	00000000 	nop
    1284:	44805000 	mtc1	zero,$f10
    1288:	00000000 	nop
    128c:	e62a0068 	swc1	$f10,104(s1)
    1290:	0c000000 	jal	0 <func_80A91FA0>
    1294:	02202025 	move	a0,s1
    1298:	44804000 	mtc1	zero,$f8
    129c:	c6260068 	lwc1	$f6,104(s1)
    12a0:	3c014120 	lui	at,0x4120
    12a4:	8fa40104 	lw	a0,260(sp)
    12a8:	46064032 	c.eq.s	$f8,$f6
    12ac:	02202825 	move	a1,s1
    12b0:	240d0005 	li	t5,5
    12b4:	26300068 	addiu	s0,s1,104
    12b8:	4503001e 	bc1tl	1334 <L80A930DC+0x1f8>
    12bc:	862f00b6 	lh	t7,182(s1)
    12c0:	44810000 	mtc1	at,$f0
    12c4:	3c014248 	lui	at,0x4248
    12c8:	44812000 	mtc1	at,$f4
    12cc:	44060000 	mfc1	a2,$f0
    12d0:	44070000 	mfc1	a3,$f0
    12d4:	afad0014 	sw	t5,20(sp)
    12d8:	0c000000 	jal	0 <func_80A91FA0>
    12dc:	e7a40010 	swc1	$f4,16(sp)
    12e0:	96290088 	lhu	t1,136(s1)
    12e4:	02002025 	move	a0,s0
    12e8:	3c053f80 	lui	a1,0x3f80
    12ec:	31390008 	andi	t9,t1,0x8
    12f0:	1320000d 	beqz	t9,1328 <L80A930DC+0x1ec>
    12f4:	3c063e19 	lui	a2,0x3e19
    12f8:	3c01bf00 	lui	at,0xbf00
    12fc:	44814000 	mtc1	at,$f8
    1300:	c62a0068 	lwc1	$f10,104(s1)
    1304:	862a0170 	lh	t2,368(s1)
    1308:	240cf830 	li	t4,-2000
    130c:	46085182 	mul.s	$f6,$f10,$f8
    1310:	240e07d0 	li	t6,2000
    1314:	19400003 	blez	t2,1324 <L80A930DC+0x1e8>
    1318:	e6260068 	swc1	$f6,104(s1)
    131c:	10000002 	b	1328 <L80A930DC+0x1ec>
    1320:	a62c0170 	sh	t4,368(s1)
    1324:	a62e0170 	sh	t6,368(s1)
    1328:	0c000000 	jal	0 <func_80A91FA0>
    132c:	34c6999a 	ori	a2,a2,0x999a
    1330:	862f00b6 	lh	t7,182(s1)
    1334:	862b0170 	lh	t3,368(s1)
    1338:	26240170 	addiu	a0,s1,368
    133c:	00002825 	move	a1,zero
    1340:	01ebc021 	addu	t8,t7,t3
    1344:	a63800b6 	sh	t8,182(s1)
    1348:	24060001 	li	a2,1
    134c:	0c000000 	jal	0 <func_80A91FA0>
    1350:	2407003a 	li	a3,58
    1354:	86250184 	lh	a1,388(s1)
    1358:	8fa40050 	lw	a0,80(sp)
    135c:	24060002 	li	a2,2
    1360:	00052b80 	sll	a1,a1,0xe
    1364:	00052c00 	sll	a1,a1,0x10
    1368:	00052c03 	sra	a1,a1,0x10
    136c:	0c000000 	jal	0 <func_80A91FA0>
    1370:	24071000 	li	a3,4096
    1374:	92240150 	lbu	a0,336(s1)
    1378:	00800821 	move	at,a0
    137c:	00042080 	sll	a0,a0,0x2
    1380:	00812021 	addu	a0,a0,at
    1384:	000420c0 	sll	a0,a0,0x3
    1388:	00812023 	subu	a0,a0,at
    138c:	00042100 	sll	a0,a0,0x4
    1390:	00812021 	addu	a0,a0,at
    1394:	00042080 	sll	a0,a0,0x2
    1398:	00042400 	sll	a0,a0,0x10
    139c:	0c000000 	jal	0 <func_80A91FA0>
    13a0:	00042403 	sra	a0,a0,0x10
    13a4:	3c0143fa 	lui	at,0x43fa
    13a8:	44812000 	mtc1	at,$f4
    13ac:	26240168 	addiu	a0,s1,360
    13b0:	24060002 	li	a2,2
    13b4:	46040282 	mul.s	$f10,$f0,$f4
    13b8:	24071000 	li	a3,4096
    13bc:	4600520d 	trunc.w.s	$f8,$f10
    13c0:	44054000 	mfc1	a1,$f8
    13c4:	00000000 	nop
    13c8:	00052c00 	sll	a1,a1,0x10
    13cc:	0c000000 	jal	0 <func_80A91FA0>
    13d0:	00052c03 	sra	a1,a1,0x10
    13d4:	92240150 	lbu	a0,336(s1)
    13d8:	00800821 	move	at,a0
    13dc:	00042080 	sll	a0,a0,0x2
    13e0:	00812023 	subu	a0,a0,at
    13e4:	00042100 	sll	a0,a0,0x4
    13e8:	00812023 	subu	a0,a0,at
    13ec:	000420c0 	sll	a0,a0,0x3
    13f0:	00812023 	subu	a0,a0,at
    13f4:	000420c0 	sll	a0,a0,0x3
    13f8:	00042400 	sll	a0,a0,0x10
    13fc:	0c000000 	jal	0 <func_80A91FA0>
    1400:	00042403 	sra	a0,a0,0x10
    1404:	3c0143fa 	lui	at,0x43fa
    1408:	44813000 	mtc1	at,$f6
    140c:	2624016c 	addiu	a0,s1,364
    1410:	24060002 	li	a2,2
    1414:	46060102 	mul.s	$f4,$f0,$f6
    1418:	24071000 	li	a3,4096
    141c:	4600228d 	trunc.w.s	$f10,$f4
    1420:	44055000 	mfc1	a1,$f10
    1424:	00000000 	nop
    1428:	00052c00 	sll	a1,a1,0x10
    142c:	0c000000 	jal	0 <func_80A91FA0>
    1430:	00052c03 	sra	a1,a1,0x10
    1434:	3c063e4c 	lui	a2,0x3e4c
    1438:	34c6cccd 	ori	a2,a2,0xcccd
    143c:	26240188 	addiu	a0,s1,392
    1440:	0c000000 	jal	0 <func_80A91FA0>
    1444:	3c053f00 	lui	a1,0x3f00
    1448:	3c063e4c 	lui	a2,0x3e4c
    144c:	34c6cccd 	ori	a2,a2,0xcccd
    1450:	26240190 	addiu	a0,s1,400
    1454:	0c000000 	jal	0 <func_80A91FA0>
    1458:	3c053f00 	lui	a1,0x3f00
    145c:	c6220068 	lwc1	$f2,104(s1)
    1460:	3c013f80 	lui	at,0x3f80
    1464:	44814000 	mtc1	at,$f8
    1468:	46001085 	abs.s	$f2,$f2
    146c:	3c013f00 	lui	at,0x3f00
    1470:	4602403c 	c.lt.s	$f8,$f2
    1474:	8fa40104 	lw	a0,260(sp)
    1478:	26250024 	addiu	a1,s1,36
    147c:	45020004 	bc1fl	1490 <L80A930DC+0x354>
    1480:	44813000 	mtc1	at,$f6
    1484:	10000009 	b	14ac <L80A930DC+0x370>
    1488:	00001025 	move	v0,zero
    148c:	44813000 	mtc1	at,$f6
    1490:	24020007 	li	v0,7
    1494:	4602303c 	c.lt.s	$f6,$f2
    1498:	00000000 	nop
    149c:	45000003 	bc1f	14ac <L80A930DC+0x370>
    14a0:	00000000 	nop
    14a4:	10000001 	b	14ac <L80A930DC+0x370>
    14a8:	24020003 	li	v0,3
    14ac:	92390150 	lbu	t9,336(s1)
    14b0:	03225024 	and	t2,t9,v0
    14b4:	5540007d 	bnezl	t2,16ac <L80A930DC+0x570>
    14b8:	86380176 	lh	t8,374(s1)
    14bc:	92220158 	lbu	v0,344(s1)
    14c0:	28410003 	slti	at,v0,3
    14c4:	50200004 	beqzl	at,14d8 <L80A930DC+0x39c>
    14c8:	28410006 	slti	at,v0,6
    14cc:	10000006 	b	14e8 <L80A930DC+0x3ac>
    14d0:	00001025 	move	v0,zero
    14d4:	28410006 	slti	at,v0,6
    14d8:	10200003 	beqz	at,14e8 <L80A930DC+0x3ac>
    14dc:	240200c8 	li	v0,200
    14e0:	10000001 	b	14e8 <L80A930DC+0x3ac>
    14e4:	24020064 	li	v0,100
    14e8:	244701f4 	addiu	a3,v0,500
    14ec:	00073c00 	sll	a3,a3,0x10
    14f0:	00023400 	sll	a2,v0,0x10
    14f4:	00063403 	sra	a2,a2,0x10
    14f8:	00073c03 	sra	a3,a3,0x10
    14fc:	0c000000 	jal	0 <func_80A91FA0>
    1500:	afa00010 	sw	zero,16(sp)
    1504:	10000069 	b	16ac <L80A930DC+0x570>
    1508:	86380176 	lh	t8,374(s1)
    150c:	918e1c26 	lbu	t6,7206(t4)
    1510:	3c010000 	lui	at,0x0
    1514:	51c00065 	beqzl	t6,16ac <L80A930DC+0x570>
    1518:	86380176 	lh	t8,374(s1)
    151c:	c622008c 	lwc1	$f2,140(s1)
    1520:	c4240000 	lwc1	$f4,0(at)
    1524:	4604103c 	c.lt.s	$f2,$f4
    1528:	00000000 	nop
    152c:	4502005f 	bc1fl	16ac <L80A930DC+0x570>
    1530:	86380176 	lh	t8,374(s1)
    1534:	46001004 	sqrt.s	$f0,$f2
    1538:	3c0142c8 	lui	at,0x42c8
    153c:	44815000 	mtc1	at,$f10
    1540:	3c010000 	lui	at,0x0
    1544:	c4260000 	lwc1	$f6,0(at)
    1548:	3c01bf80 	lui	at,0xbf80
    154c:	240f0001 	li	t7,1
    1550:	46005201 	sub.s	$f8,$f10,$f0
    1554:	44815000 	mtc1	at,$f10
    1558:	3c014780 	lui	at,0x4780
    155c:	44816000 	mtc1	at,$f12
    1560:	46064102 	mul.s	$f4,$f8,$f6
    1564:	e7a40088 	swc1	$f4,136(sp)
    1568:	a22f0154 	sb	t7,340(s1)
    156c:	0c000000 	jal	0 <func_80A91FA0>
    1570:	e62a006c 	swc1	$f10,108(s1)
    1574:	4600020d 	trunc.w.s	$f8,$f0
    1578:	922d0158 	lbu	t5,344(s1)
    157c:	44184000 	mfc1	t8,$f8
    1580:	29a10004 	slti	at,t5,4
    1584:	1420001b 	bnez	at,15f4 <L80A930DC+0x4b8>
    1588:	a6380032 	sh	t8,50(s1)
    158c:	3c014120 	lui	at,0x4120
    1590:	44816000 	mtc1	at,$f12
    1594:	0c000000 	jal	0 <func_80A91FA0>
    1598:	00000000 	nop
    159c:	4600018d 	trunc.w.s	$f6,$f0
    15a0:	3c014120 	lui	at,0x4120
    15a4:	44816000 	mtc1	at,$f12
    15a8:	440c3000 	mfc1	t4,$f6
    15ac:	00000000 	nop
    15b0:	258e0006 	addiu	t6,t4,6
    15b4:	0c000000 	jal	0 <func_80A91FA0>
    15b8:	a62e0176 	sh	t6,374(s1)
    15bc:	4600010d 	trunc.w.s	$f4,$f0
    15c0:	3c014000 	lui	at,0x4000
    15c4:	44815000 	mtc1	at,$f10
    15c8:	3c013f80 	lui	at,0x3f80
    15cc:	440d2000 	mfc1	t5,$f4
    15d0:	44816000 	mtc1	at,$f12
    15d4:	25a90006 	addiu	t1,t5,6
    15d8:	a6290178 	sh	t1,376(s1)
    15dc:	c7a80088 	lwc1	$f8,136(sp)
    15e0:	46085180 	add.s	$f6,$f10,$f8
    15e4:	0c000000 	jal	0 <func_80A91FA0>
    15e8:	e6260060 	swc1	$f6,96(s1)
    15ec:	1000001a 	b	1658 <L80A930DC+0x51c>
    15f0:	e6200068 	swc1	$f0,104(s1)
    15f4:	3c0140e0 	lui	at,0x40e0
    15f8:	44816000 	mtc1	at,$f12
    15fc:	0c000000 	jal	0 <func_80A91FA0>
    1600:	00000000 	nop
    1604:	4600010d 	trunc.w.s	$f4,$f0
    1608:	3c0140e0 	lui	at,0x40e0
    160c:	44816000 	mtc1	at,$f12
    1610:	440e2000 	mfc1	t6,$f4
    1614:	00000000 	nop
    1618:	25cf0003 	addiu	t7,t6,3
    161c:	0c000000 	jal	0 <func_80A91FA0>
    1620:	a62f0176 	sh	t7,374(s1)
    1624:	4600028d 	trunc.w.s	$f10,$f0
    1628:	3c014040 	lui	at,0x4040
    162c:	44814000 	mtc1	at,$f8
    1630:	3c013fc0 	lui	at,0x3fc0
    1634:	44095000 	mfc1	t1,$f10
    1638:	44816000 	mtc1	at,$f12
    163c:	25390003 	addiu	t9,t1,3
    1640:	a6390178 	sh	t9,376(s1)
    1644:	c7a60088 	lwc1	$f6,136(sp)
    1648:	46064100 	add.s	$f4,$f8,$f6
    164c:	0c000000 	jal	0 <func_80A91FA0>
    1650:	e6240060 	swc1	$f4,96(s1)
    1654:	e6200068 	swc1	$f0,104(s1)
    1658:	3c0145c0 	lui	at,0x45c0
    165c:	44816000 	mtc1	at,$f12
    1660:	0c000000 	jal	0 <func_80A91FA0>
    1664:	00000000 	nop
    1668:	4600028d 	trunc.w.s	$f10,$f0
    166c:	440c5000 	mfc1	t4,$f10
    1670:	0c000000 	jal	0 <func_80A91FA0>
    1674:	a62c0170 	sh	t4,368(s1)
    1678:	3c013f00 	lui	at,0x3f00
    167c:	44814000 	mtc1	at,$f8
    1680:	240e0001 	li	t6,1
    1684:	240fffff 	li	t7,-1
    1688:	4608003c 	c.lt.s	$f0,$f8
    168c:	240b0046 	li	t3,70
    1690:	45020004 	bc1fl	16a4 <L80A930DC+0x568>
    1694:	a62f0184 	sh	t7,388(s1)
    1698:	10000002 	b	16a4 <L80A930DC+0x568>
    169c:	a62e0184 	sh	t6,388(s1)
    16a0:	a62f0184 	sh	t7,388(s1)
    16a4:	a62b0152 	sh	t3,338(s1)
    16a8:	86380176 	lh	t8,374(s1)
    16ac:	8fad0104 	lw	t5,260(sp)
    16b0:	17000080 	bnez	t8,18b4 <L80A930DC+0x778>
    16b4:	00000000 	nop
    16b8:	8db01c4c 	lw	s0,7244(t5)
    16bc:	3c0142c8 	lui	at,0x42c8
    16c0:	1200007c 	beqz	s0,18b4 <L80A930DC+0x778>
    16c4:	00000000 	nop
    16c8:	44819000 	mtc1	at,$f18
    16cc:	00000000 	nop
    16d0:	8609001c 	lh	t1,28(s0)
    16d4:	24010001 	li	at,1
    16d8:	51210004 	beql	t1,at,16ec <L80A930DC+0x5b0>
    16dc:	c6260024 	lwc1	$f6,36(s1)
    16e0:	10000072 	b	18ac <L80A930DC+0x770>
    16e4:	8e100124 	lw	s0,292(s0)
    16e8:	c6260024 	lwc1	$f6,36(s1)
    16ec:	c6040024 	lwc1	$f4,36(s0)
    16f0:	c62a0028 	lwc1	$f10,40(s1)
    16f4:	c6080028 	lwc1	$f8,40(s0)
    16f8:	46043301 	sub.s	$f12,$f6,$f4
    16fc:	c604002c 	lwc1	$f4,44(s0)
    1700:	c626002c 	lwc1	$f6,44(s1)
    1704:	46085081 	sub.s	$f2,$f10,$f8
    1708:	460c6282 	mul.s	$f10,$f12,$f12
    170c:	3c010000 	lui	at,0x0
    1710:	46043381 	sub.s	$f14,$f6,$f4
    1714:	46021202 	mul.s	$f8,$f2,$f2
    1718:	24190001 	li	t9,1
    171c:	460e7102 	mul.s	$f4,$f14,$f14
    1720:	46085180 	add.s	$f6,$f10,$f8
    1724:	46043400 	add.s	$f16,$f6,$f4
    1728:	46008404 	sqrt.s	$f16,$f16
    172c:	4612803c 	c.lt.s	$f16,$f18
    1730:	00000000 	nop
    1734:	4502005d 	bc1fl	18ac <L80A930DC+0x770>
    1738:	8e100124 	lw	s0,292(s0)
    173c:	46109281 	sub.s	$f10,$f18,$f16
    1740:	c4280000 	lwc1	$f8,0(at)
    1744:	3c01bf80 	lui	at,0xbf80
    1748:	44812000 	mtc1	at,$f4
    174c:	46085182 	mul.s	$f6,$f10,$f8
    1750:	e7a60074 	swc1	$f6,116(sp)
    1754:	a2390154 	sb	t9,340(s1)
    1758:	0c000000 	jal	0 <func_80A91FA0>
    175c:	e624006c 	swc1	$f4,108(s1)
    1760:	3c010000 	lui	at,0x0
    1764:	c42a0000 	lwc1	$f10,0(at)
    1768:	922e0158 	lbu	t6,344(s1)
    176c:	460a0202 	mul.s	$f8,$f0,$f10
    1770:	29c10004 	slti	at,t6,4
    1774:	4600418d 	trunc.w.s	$f6,$f8
    1778:	440c3000 	mfc1	t4,$f6
    177c:	1420001b 	bnez	at,17ec <L80A930DC+0x6b0>
    1780:	a62c0032 	sh	t4,50(s1)
    1784:	3c014120 	lui	at,0x4120
    1788:	44816000 	mtc1	at,$f12
    178c:	0c000000 	jal	0 <func_80A91FA0>
    1790:	00000000 	nop
    1794:	4600010d 	trunc.w.s	$f4,$f0
    1798:	3c014120 	lui	at,0x4120
    179c:	44816000 	mtc1	at,$f12
    17a0:	440d2000 	mfc1	t5,$f4
    17a4:	00000000 	nop
    17a8:	25a90006 	addiu	t1,t5,6
    17ac:	0c000000 	jal	0 <func_80A91FA0>
    17b0:	a6290176 	sh	t1,374(s1)
    17b4:	4600028d 	trunc.w.s	$f10,$f0
    17b8:	3c014020 	lui	at,0x4020
    17bc:	44814000 	mtc1	at,$f8
    17c0:	c7a20074 	lwc1	$f2,116(sp)
    17c4:	3c014040 	lui	at,0x4040
    17c8:	44812000 	mtc1	at,$f4
    17cc:	440e5000 	mfc1	t6,$f10
    17d0:	46024180 	add.s	$f6,$f8,$f2
    17d4:	25cf0006 	addiu	t7,t6,6
    17d8:	46022280 	add.s	$f10,$f4,$f2
    17dc:	a62f0178 	sh	t7,376(s1)
    17e0:	e6260060 	swc1	$f6,96(s1)
    17e4:	1000001a 	b	1850 <L80A930DC+0x714>
    17e8:	e62a0068 	swc1	$f10,104(s1)
    17ec:	3c0140e0 	lui	at,0x40e0
    17f0:	44816000 	mtc1	at,$f12
    17f4:	0c000000 	jal	0 <func_80A91FA0>
    17f8:	00000000 	nop
    17fc:	4600020d 	trunc.w.s	$f8,$f0
    1800:	3c0140e0 	lui	at,0x40e0
    1804:	44816000 	mtc1	at,$f12
    1808:	44094000 	mfc1	t1,$f8
    180c:	00000000 	nop
    1810:	25390003 	addiu	t9,t1,3
    1814:	0c000000 	jal	0 <func_80A91FA0>
    1818:	a6390176 	sh	t9,374(s1)
    181c:	3c0140a0 	lui	at,0x40a0
    1820:	4600018d 	trunc.w.s	$f6,$f0
    1824:	44812000 	mtc1	at,$f4
    1828:	c7a20074 	lwc1	$f2,116(sp)
    182c:	3c014080 	lui	at,0x4080
    1830:	44814000 	mtc1	at,$f8
    1834:	440f3000 	mfc1	t7,$f6
    1838:	46022280 	add.s	$f10,$f4,$f2
    183c:	25eb0003 	addiu	t3,t7,3
    1840:	46024180 	add.s	$f6,$f8,$f2
    1844:	a62b0178 	sh	t3,376(s1)
    1848:	e62a0060 	swc1	$f10,96(s1)
    184c:	e6260068 	swc1	$f6,104(s1)
    1850:	3c0145c0 	lui	at,0x45c0
    1854:	44816000 	mtc1	at,$f12
    1858:	0c000000 	jal	0 <func_80A91FA0>
    185c:	00000000 	nop
    1860:	4600010d 	trunc.w.s	$f4,$f0
    1864:	440d2000 	mfc1	t5,$f4
    1868:	0c000000 	jal	0 <func_80A91FA0>
    186c:	a62d0170 	sh	t5,368(s1)
    1870:	3c013f00 	lui	at,0x3f00
    1874:	44815000 	mtc1	at,$f10
    1878:	3c0142c8 	lui	at,0x42c8
    187c:	44819000 	mtc1	at,$f18
    1880:	460a003c 	c.lt.s	$f0,$f10
    1884:	24090001 	li	t1,1
    1888:	2419ffff 	li	t9,-1
    188c:	240a0046 	li	t2,70
    1890:	45020004 	bc1fl	18a4 <L80A930DC+0x768>
    1894:	a6390184 	sh	t9,388(s1)
    1898:	10000002 	b	18a4 <L80A930DC+0x768>
    189c:	a6290184 	sh	t1,388(s1)
    18a0:	a6390184 	sh	t9,388(s1)
    18a4:	a62a0152 	sh	t2,338(s1)
    18a8:	8e100124 	lw	s0,292(s0)
    18ac:	5600ff89 	bnezl	s0,16d4 <L80A930DC+0x598>
    18b0:	8609001c 	lh	t1,28(s0)
    18b4:	3c040000 	lui	a0,0x0
    18b8:	0c000000 	jal	0 <func_80A91FA0>
    18bc:	24840000 	addiu	a0,a0,0
    18c0:	8fb00104 	lw	s0,260(sp)
    18c4:	3c010001 	lui	at,0x1
    18c8:	3c040000 	lui	a0,0x0
    18cc:	02018021 	addu	s0,s0,at
    18d0:	960504c6 	lhu	a1,1222(s0)
    18d4:	0c000000 	jal	0 <func_80A91FA0>
    18d8:	24840000 	addiu	a0,a0,0
    18dc:	3c040000 	lui	a0,0x0
    18e0:	0c000000 	jal	0 <func_80A91FA0>
    18e4:	24840000 	addiu	a0,a0,0
    18e8:	9223019e 	lbu	v1,414(s1)
    18ec:	24080001 	li	t0,1
    18f0:	50600006 	beqzl	v1,190c <L80A930DC+0x7d0>
    18f4:	960c04c6 	lhu	t4,1222(s0)
    18f8:	5068000b 	beql	v1,t0,1928 <L80A930DC+0x7ec>
    18fc:	960f04c6 	lhu	t7,1222(s0)
    1900:	100000b5 	b	1bd8 <L80A93920+0x258>
    1904:	8fbf003c 	lw	ra,60(sp)
    1908:	960c04c6 	lhu	t4,1222(s0)
    190c:	24010001 	li	at,1
    1910:	240e0001 	li	t6,1
    1914:	558100b0 	bnel	t4,at,1bd8 <L80A93920+0x258>
    1918:	8fbf003c 	lw	ra,60(sp)
    191c:	100000ad 	b	1bd4 <L80A93920+0x254>
    1920:	a22e019e 	sb	t6,414(s1)
    1924:	960f04c6 	lhu	t7,1222(s0)
    1928:	24010004 	li	at,4
    192c:	55e100aa 	bnel	t7,at,1bd8 <L80A93920+0x258>
    1930:	8fbf003c 	lw	ra,60(sp)
    1934:	960b04ca 	lhu	t3,1226(s0)
    1938:	24010008 	li	at,8
    193c:	3c070000 	lui	a3,0x0
    1940:	156100a4 	bne	t3,at,1bd4 <L80A93920+0x254>
    1944:	24e70000 	addiu	a3,a3,0
    1948:	24180005 	li	t8,5
    194c:	3c0d0000 	lui	t5,0x0
    1950:	a2380154 	sb	t8,340(s1)
    1954:	a6280176 	sh	t0,374(s1)
    1958:	25ad0000 	addiu	t5,t5,0
    195c:	3c050000 	lui	a1,0x0
    1960:	24a50000 	addiu	a1,a1,0
    1964:	afad0014 	sw	t5,20(sp)
    1968:	afa70010 	sw	a3,16(sp)
    196c:	24044807 	li	a0,18439
    1970:	0c000000 	jal	0 <func_80A91FA0>
    1974:	24060004 	li	a2,4
    1978:	10000097 	b	1bd8 <L80A93920+0x258>
    197c:	8fbf003c 	lw	ra,60(sp)

00001980 <L80A93920>:
    1980:	8e300118 	lw	s0,280(s1)
    1984:	3401ffff 	li	at,0xffff
    1988:	96090156 	lhu	t1,342(s0)
    198c:	55210004 	bnel	t1,at,19a0 <L80A93920+0x20>
    1990:	861900b6 	lh	t9,182(s0)
    1994:	0c000000 	jal	0 <func_80A91FA0>
    1998:	02202025 	move	a0,s1
    199c:	861900b6 	lh	t9,182(s0)
    19a0:	3c014700 	lui	at,0x4700
    19a4:	44812000 	mtc1	at,$f4
    19a8:	44994000 	mtc1	t9,$f8
    19ac:	3c010000 	lui	at,0x0
    19b0:	00002825 	move	a1,zero
    19b4:	468041a0 	cvt.s.w	$f6,$f8
    19b8:	c4280000 	lwc1	$f8,0(at)
    19bc:	46043283 	div.s	$f10,$f6,$f4
    19c0:	46085302 	mul.s	$f12,$f10,$f8
    19c4:	0c000000 	jal	0 <func_80A91FA0>
    19c8:	00000000 	nop
    19cc:	922a0195 	lbu	t2,405(s1)
    19d0:	3c0e0000 	lui	t6,0x0
    19d4:	25ce0000 	addiu	t6,t6,0
    19d8:	000a6080 	sll	t4,t2,0x2
    19dc:	018a6023 	subu	t4,t4,t2
    19e0:	000c6080 	sll	t4,t4,0x2
    19e4:	018e2021 	addu	a0,t4,t6
    19e8:	0c000000 	jal	0 <func_80A91FA0>
    19ec:	27a500dc 	addiu	a1,sp,220
    19f0:	c6060024 	lwc1	$f6,36(s0)
    19f4:	c7a400dc 	lwc1	$f4,220(sp)
    19f8:	44804000 	mtc1	zero,$f8
    19fc:	26240024 	addiu	a0,s1,36
    1a00:	46043280 	add.s	$f10,$f6,$f4
    1a04:	3c063f80 	lui	a2,0x3f80
    1a08:	3c074040 	lui	a3,0x4040
    1a0c:	e7a80010 	swc1	$f8,16(sp)
    1a10:	44055000 	mfc1	a1,$f10
    1a14:	0c000000 	jal	0 <func_80A91FA0>
    1a18:	00000000 	nop
    1a1c:	e7a00070 	swc1	$f0,112(sp)
    1a20:	c6060028 	lwc1	$f6,40(s0)
    1a24:	c7a400e0 	lwc1	$f4,224(sp)
    1a28:	44804000 	mtc1	zero,$f8
    1a2c:	26240028 	addiu	a0,s1,40
    1a30:	46043280 	add.s	$f10,$f6,$f4
    1a34:	3c063f80 	lui	a2,0x3f80
    1a38:	3c074040 	lui	a3,0x4040
    1a3c:	e7a80010 	swc1	$f8,16(sp)
    1a40:	44055000 	mfc1	a1,$f10
    1a44:	0c000000 	jal	0 <func_80A91FA0>
    1a48:	00000000 	nop
    1a4c:	e7a0006c 	swc1	$f0,108(sp)
    1a50:	c606002c 	lwc1	$f6,44(s0)
    1a54:	c7a400e4 	lwc1	$f4,228(sp)
    1a58:	44804000 	mtc1	zero,$f8
    1a5c:	2624002c 	addiu	a0,s1,44
    1a60:	46043280 	add.s	$f10,$f6,$f4
    1a64:	3c063f80 	lui	a2,0x3f80
    1a68:	3c074040 	lui	a3,0x4040
    1a6c:	e7a80010 	swc1	$f8,16(sp)
    1a70:	44055000 	mfc1	a1,$f10
    1a74:	0c000000 	jal	0 <func_80A91FA0>
    1a78:	00000000 	nop
    1a7c:	e7a00068 	swc1	$f0,104(sp)
    1a80:	860500b4 	lh	a1,180(s0)
    1a84:	afa00010 	sw	zero,16(sp)
    1a88:	262400b4 	addiu	a0,s1,180
    1a8c:	24060001 	li	a2,1
    1a90:	0c000000 	jal	0 <func_80A91FA0>
    1a94:	24070200 	li	a3,512
    1a98:	a7a20066 	sh	v0,102(sp)
    1a9c:	860500b6 	lh	a1,182(s0)
    1aa0:	afa00010 	sw	zero,16(sp)
    1aa4:	262400b6 	addiu	a0,s1,182
    1aa8:	24060001 	li	a2,1
    1aac:	0c000000 	jal	0 <func_80A91FA0>
    1ab0:	24070200 	li	a3,512
    1ab4:	a7a20064 	sh	v0,100(sp)
    1ab8:	860500b8 	lh	a1,184(s0)
    1abc:	afa00010 	sw	zero,16(sp)
    1ac0:	262400b8 	addiu	a0,s1,184
    1ac4:	24060001 	li	a2,1
    1ac8:	0c000000 	jal	0 <func_80A91FA0>
    1acc:	24070200 	li	a3,512
    1ad0:	a7a20062 	sh	v0,98(sp)
    1ad4:	26240168 	addiu	a0,s1,360
    1ad8:	00002825 	move	a1,zero
    1adc:	24060001 	li	a2,1
    1ae0:	0c000000 	jal	0 <func_80A91FA0>
    1ae4:	24070200 	li	a3,512
    1ae8:	2624016c 	addiu	a0,s1,364
    1aec:	00002825 	move	a1,zero
    1af0:	24060001 	li	a2,1
    1af4:	0c000000 	jal	0 <func_80A91FA0>
    1af8:	24070200 	li	a3,512
    1afc:	3c063d4c 	lui	a2,0x3d4c
    1b00:	34c6cccd 	ori	a2,a2,0xcccd
    1b04:	26240188 	addiu	a0,s1,392
    1b08:	0c000000 	jal	0 <func_80A91FA0>
    1b0c:	3c053f80 	lui	a1,0x3f80
    1b10:	3c063d4c 	lui	a2,0x3d4c
    1b14:	34c6cccd 	ori	a2,a2,0xcccd
    1b18:	26240190 	addiu	a0,s1,400
    1b1c:	0c000000 	jal	0 <func_80A91FA0>
    1b20:	3c053f80 	lui	a1,0x3f80
    1b24:	262400bc 	addiu	a0,s1,188
    1b28:	3c053f80 	lui	a1,0x3f80
    1b2c:	0c000000 	jal	0 <func_80A91FA0>
    1b30:	3c064000 	lui	a2,0x4000
    1b34:	c7a60070 	lwc1	$f6,112(sp)
    1b38:	c7a4006c 	lwc1	$f4,108(sp)
    1b3c:	c7a80068 	lwc1	$f8,104(sp)
    1b40:	44800000 	mtc1	zero,$f0
    1b44:	46043280 	add.s	$f10,$f6,$f4
    1b48:	87af0066 	lh	t7,102(sp)
    1b4c:	87ab0064 	lh	t3,100(sp)
    1b50:	87ad0062 	lh	t5,98(sp)
    1b54:	46085180 	add.s	$f6,$f10,$f8
    1b58:	01ebc021 	addu	t8,t7,t3
    1b5c:	46060032 	c.eq.s	$f0,$f6
    1b60:	00000000 	nop
    1b64:	4502001c 	bc1fl	1bd8 <L80A93920+0x258>
    1b68:	8fbf003c 	lw	ra,60(sp)
    1b6c:	86390168 	lh	t9,360(s1)
    1b70:	862c016c 	lh	t4,364(s1)
    1b74:	030d4821 	addu	t1,t8,t5
    1b78:	01395021 	addu	t2,t1,t9
    1b7c:	014c7021 	addu	t6,t2,t4
    1b80:	55c00015 	bnezl	t6,1bd8 <L80A93920+0x258>
    1b84:	8fbf003c 	lw	ra,60(sp)
    1b88:	c6240188 	lwc1	$f4,392(s1)
    1b8c:	46040032 	c.eq.s	$f0,$f4
    1b90:	00000000 	nop
    1b94:	45020010 	bc1fl	1bd8 <L80A93920+0x258>
    1b98:	8fbf003c 	lw	ra,60(sp)
    1b9c:	c62a0190 	lwc1	$f10,400(s1)
    1ba0:	460a0032 	c.eq.s	$f0,$f10
    1ba4:	00000000 	nop
    1ba8:	4502000b 	bc1fl	1bd8 <L80A93920+0x258>
    1bac:	8fbf003c 	lw	ra,60(sp)
    1bb0:	960f0156 	lhu	t7,342(s0)
    1bb4:	962b0156 	lhu	t3,342(s1)
    1bb8:	8e0d0004 	lw	t5,4(s0)
    1bbc:	02202025 	move	a0,s1
    1bc0:	01ebc025 	or	t8,t7,t3
    1bc4:	35a90001 	ori	t1,t5,0x1
    1bc8:	a6180156 	sh	t8,342(s0)
    1bcc:	0c000000 	jal	0 <func_80A91FA0>
    1bd0:	ae090004 	sw	t1,4(s0)
    1bd4:	8fbf003c 	lw	ra,60(sp)
    1bd8:	8fb00034 	lw	s0,52(sp)
    1bdc:	8fb10038 	lw	s1,56(sp)
    1be0:	03e00008 	jr	ra
    1be4:	27bd0100 	addiu	sp,sp,256

00001be8 <EnKanban_Draw>:
    1be8:	27bdff60 	addiu	sp,sp,-160
    1bec:	afb00014 	sw	s0,20(sp)
    1bf0:	00808025 	move	s0,a0
    1bf4:	afbf001c 	sw	ra,28(sp)
    1bf8:	afb10018 	sw	s1,24(sp)
    1bfc:	afa500a4 	sw	a1,164(sp)
    1c00:	8ca40000 	lw	a0,0(a1)
    1c04:	0c000000 	jal	0 <func_80A91FA0>
    1c08:	24050400 	li	a1,1024
    1c0c:	8faf00a4 	lw	t7,164(sp)
    1c10:	afa2008c 	sw	v0,140(sp)
    1c14:	3c060000 	lui	a2,0x0
    1c18:	8de50000 	lw	a1,0(t7)
    1c1c:	24c60000 	addiu	a2,a2,0
    1c20:	27a40078 	addiu	a0,sp,120
    1c24:	2407067b 	li	a3,1659
    1c28:	0c000000 	jal	0 <func_80A91FA0>
    1c2c:	00a08825 	move	s1,a1
    1c30:	8fb800a4 	lw	t8,164(sp)
    1c34:	0c000000 	jal	0 <func_80A91FA0>
    1c38:	8f040000 	lw	a0,0(t8)
    1c3c:	8fb900a4 	lw	t9,164(sp)
    1c40:	0c000000 	jal	0 <func_80A91FA0>
    1c44:	8f240000 	lw	a0,0(t9)
    1c48:	8e2702c0 	lw	a3,704(s1)
    1c4c:	3c0b0600 	lui	t3,0x600
    1c50:	256b0c30 	addiu	t3,t3,3120
    1c54:	24e90008 	addiu	t1,a3,8
    1c58:	ae2902c0 	sw	t1,704(s1)
    1c5c:	3c0ade00 	lui	t2,0xde00
    1c60:	acea0000 	sw	t2,0(a3)
    1c64:	aceb0004 	sw	t3,4(a3)
    1c68:	920c0154 	lbu	t4,340(s0)
    1c6c:	00003825 	move	a3,zero
    1c70:	3c06c2c8 	lui	a2,0xc2c8
    1c74:	51800099 	beqzl	t4,1edc <EnKanban_Draw+0x2f4>
    1c78:	44806000 	mtc1	zero,$f12
    1c7c:	c60c0024 	lwc1	$f12,36(s0)
    1c80:	c60e0028 	lwc1	$f14,40(s0)
    1c84:	0c000000 	jal	0 <func_80A91FA0>
    1c88:	8e06002c 	lw	a2,44(s0)
    1c8c:	c60c0050 	lwc1	$f12,80(s0)
    1c90:	c60e0054 	lwc1	$f14,84(s0)
    1c94:	8e060058 	lw	a2,88(s0)
    1c98:	0c000000 	jal	0 <func_80A91FA0>
    1c9c:	24070001 	li	a3,1
    1ca0:	c60c0188 	lwc1	$f12,392(s0)
    1ca4:	0c000000 	jal	0 <func_80A91FA0>
    1ca8:	24050001 	li	a1,1
    1cac:	c60c0190 	lwc1	$f12,400(s0)
    1cb0:	0c000000 	jal	0 <func_80A91FA0>
    1cb4:	24050001 	li	a1,1
    1cb8:	44806000 	mtc1	zero,$f12
    1cbc:	c60e00bc 	lwc1	$f14,188(s0)
    1cc0:	24070001 	li	a3,1
    1cc4:	44066000 	mfc1	a2,$f12
    1cc8:	0c000000 	jal	0 <func_80A91FA0>
    1ccc:	00000000 	nop
    1cd0:	860d00b6 	lh	t5,182(s0)
    1cd4:	3c014700 	lui	at,0x4700
    1cd8:	44814000 	mtc1	at,$f8
    1cdc:	448d2000 	mtc1	t5,$f4
    1ce0:	3c010000 	lui	at,0x0
    1ce4:	c4320000 	lwc1	$f18,0(at)
    1ce8:	468021a0 	cvt.s.w	$f6,$f4
    1cec:	24050001 	li	a1,1
    1cf0:	46083283 	div.s	$f10,$f6,$f8
    1cf4:	46125302 	mul.s	$f12,$f10,$f18
    1cf8:	0c000000 	jal	0 <func_80A91FA0>
    1cfc:	00000000 	nop
    1d00:	860e00b4 	lh	t6,180(s0)
    1d04:	3c014700 	lui	at,0x4700
    1d08:	44814000 	mtc1	at,$f8
    1d0c:	448e2000 	mtc1	t6,$f4
    1d10:	3c010000 	lui	at,0x0
    1d14:	c4320000 	lwc1	$f18,0(at)
    1d18:	468021a0 	cvt.s.w	$f6,$f4
    1d1c:	24050001 	li	a1,1
    1d20:	46083283 	div.s	$f10,$f6,$f8
    1d24:	46125302 	mul.s	$f12,$f10,$f18
    1d28:	0c000000 	jal	0 <func_80A91FA0>
    1d2c:	00000000 	nop
    1d30:	0c000000 	jal	0 <func_80A91FA0>
    1d34:	86040168 	lh	a0,360(s0)
    1d38:	c6040180 	lwc1	$f4,384(s0)
    1d3c:	8604016c 	lh	a0,364(s0)
    1d40:	46040002 	mul.s	$f0,$f0,$f4
    1d44:	46000085 	abs.s	$f2,$f0
    1d48:	0c000000 	jal	0 <func_80A91FA0>
    1d4c:	e7a20098 	swc1	$f2,152(sp)
    1d50:	c606017c 	lwc1	$f6,380(s0)
    1d54:	c7a20098 	lwc1	$f2,152(sp)
    1d58:	46060002 	mul.s	$f0,$f0,$f6
    1d5c:	46000005 	abs.s	$f0,$f0
    1d60:	4600103c 	c.lt.s	$f2,$f0
    1d64:	00000000 	nop
    1d68:	45020003 	bc1fl	1d78 <EnKanban_Draw+0x190>
    1d6c:	860f0184 	lh	t7,388(s0)
    1d70:	46000086 	mov.s	$f2,$f0
    1d74:	860f0184 	lh	t7,388(s0)
    1d78:	44806000 	mtc1	zero,$f12
    1d7c:	24070001 	li	a3,1
    1d80:	448f4000 	mtc1	t7,$f8
    1d84:	46006386 	mov.s	$f14,$f12
    1d88:	468042a0 	cvt.s.w	$f10,$f8
    1d8c:	46005487 	neg.s	$f18,$f10
    1d90:	46121082 	mul.s	$f2,$f2,$f18
    1d94:	44061000 	mfc1	a2,$f2
    1d98:	0c000000 	jal	0 <func_80A91FA0>
    1d9c:	00000000 	nop
    1da0:	86180168 	lh	t8,360(s0)
    1da4:	3c014700 	lui	at,0x4700
    1da8:	44814000 	mtc1	at,$f8
    1dac:	44982000 	mtc1	t8,$f4
    1db0:	3c010000 	lui	at,0x0
    1db4:	c4320000 	lwc1	$f18,0(at)
    1db8:	468021a0 	cvt.s.w	$f6,$f4
    1dbc:	24050001 	li	a1,1
    1dc0:	46083283 	div.s	$f10,$f6,$f8
    1dc4:	46125302 	mul.s	$f12,$f10,$f18
    1dc8:	0c000000 	jal	0 <func_80A91FA0>
    1dcc:	00000000 	nop
    1dd0:	8619016c 	lh	t9,364(s0)
    1dd4:	3c014700 	lui	at,0x4700
    1dd8:	44814000 	mtc1	at,$f8
    1ddc:	44992000 	mtc1	t9,$f4
    1de0:	3c010000 	lui	at,0x0
    1de4:	c4320000 	lwc1	$f18,0(at)
    1de8:	468021a0 	cvt.s.w	$f6,$f4
    1dec:	24050001 	li	a1,1
    1df0:	46083283 	div.s	$f10,$f6,$f8
    1df4:	46125302 	mul.s	$f12,$f10,$f18
    1df8:	0c000000 	jal	0 <func_80A91FA0>
    1dfc:	00000000 	nop
    1e00:	3c0142c8 	lui	at,0x42c8
    1e04:	44813000 	mtc1	at,$f6
    1e08:	c6040164 	lwc1	$f4,356(s0)
    1e0c:	c60c015c 	lwc1	$f12,348(s0)
    1e10:	c60e0160 	lwc1	$f14,352(s0)
    1e14:	46062201 	sub.s	$f8,$f4,$f6
    1e18:	24070001 	li	a3,1
    1e1c:	44064000 	mfc1	a2,$f8
    1e20:	0c000000 	jal	0 <func_80A91FA0>
    1e24:	00000000 	nop
    1e28:	8e2702c0 	lw	a3,704(s1)
    1e2c:	3c0ada38 	lui	t2,0xda38
    1e30:	354a0003 	ori	t2,t2,0x3
    1e34:	24e90008 	addiu	t1,a3,8
    1e38:	ae2902c0 	sw	t1,704(s1)
    1e3c:	acea0000 	sw	t2,0(a3)
    1e40:	8fab00a4 	lw	t3,164(sp)
    1e44:	3c050000 	lui	a1,0x0
    1e48:	24a50000 	addiu	a1,a1,0
    1e4c:	8d640000 	lw	a0,0(t3)
    1e50:	240606b3 	li	a2,1715
    1e54:	0c000000 	jal	0 <func_80A91FA0>
    1e58:	afa70070 	sw	a3,112(sp)
    1e5c:	8fa30070 	lw	v1,112(sp)
    1e60:	3c050000 	lui	a1,0x0
    1e64:	3c040000 	lui	a0,0x0
    1e68:	ac620004 	sw	v0,4(v1)
    1e6c:	00001025 	move	v0,zero
    1e70:	24840000 	addiu	a0,a0,0
    1e74:	24a50000 	addiu	a1,a1,0
    1e78:	3c08de00 	lui	t0,0xde00
    1e7c:	00026040 	sll	t4,v0,0x1
    1e80:	008c6821 	addu	t5,a0,t4
    1e84:	95ae0000 	lhu	t6,0(t5)
    1e88:	960f0156 	lhu	t7,342(s0)
    1e8c:	01cfc024 	and	t8,t6,t7
    1e90:	5300000a 	beqzl	t8,1ebc <EnKanban_Draw+0x2d4>
    1e94:	24420001 	addiu	v0,v0,1
    1e98:	8e2702c0 	lw	a3,704(s1)
    1e9c:	00024880 	sll	t1,v0,0x2
    1ea0:	00a95021 	addu	t2,a1,t1
    1ea4:	24f90008 	addiu	t9,a3,8
    1ea8:	ae3902c0 	sw	t9,704(s1)
    1eac:	ace80000 	sw	t0,0(a3)
    1eb0:	8d4b0000 	lw	t3,0(t2)
    1eb4:	aceb0004 	sw	t3,4(a3)
    1eb8:	24420001 	addiu	v0,v0,1
    1ebc:	00021400 	sll	v0,v0,0x10
    1ec0:	00021403 	sra	v0,v0,0x10
    1ec4:	2841000b 	slti	at,v0,11
    1ec8:	5420ffed 	bnezl	at,1e80 <EnKanban_Draw+0x298>
    1ecc:	00026040 	sll	t4,v0,0x1
    1ed0:	1000008a 	b	20fc <EnKanban_Draw+0x514>
    1ed4:	3c0143c8 	lui	at,0x43c8
    1ed8:	44806000 	mtc1	zero,$f12
    1edc:	24070001 	li	a3,1
    1ee0:	0c000000 	jal	0 <func_80A91FA0>
    1ee4:	46006386 	mov.s	$f14,$f12
    1ee8:	8e2702c0 	lw	a3,704(s1)
    1eec:	3c0dda38 	lui	t5,0xda38
    1ef0:	35ad0003 	ori	t5,t5,0x3
    1ef4:	24ec0008 	addiu	t4,a3,8
    1ef8:	ae2c02c0 	sw	t4,704(s1)
    1efc:	aced0000 	sw	t5,0(a3)
    1f00:	8fae00a4 	lw	t6,164(sp)
    1f04:	3c050000 	lui	a1,0x0
    1f08:	24a50000 	addiu	a1,a1,0
    1f0c:	8dc40000 	lw	a0,0(t6)
    1f10:	240606bd 	li	a2,1725
    1f14:	0c000000 	jal	0 <func_80A91FA0>
    1f18:	afa70068 	sw	a3,104(sp)
    1f1c:	8fa30068 	lw	v1,104(sp)
    1f20:	3401ffff 	li	at,0xffff
    1f24:	3c050000 	lui	a1,0x0
    1f28:	ac620004 	sw	v0,4(v1)
    1f2c:	960f0156 	lhu	t7,342(s0)
    1f30:	00001025 	move	v0,zero
    1f34:	24a50000 	addiu	a1,a1,0
    1f38:	15e1000a 	bne	t7,at,1f64 <EnKanban_Draw+0x37c>
    1f3c:	3c06de00 	lui	a2,0xde00
    1f40:	8e2702c0 	lw	a3,704(s1)
    1f44:	3c090404 	lui	t1,0x404
    1f48:	2529c050 	addiu	t1,t1,-16304
    1f4c:	24f80008 	addiu	t8,a3,8
    1f50:	ae3802c0 	sw	t8,704(s1)
    1f54:	3c19de00 	lui	t9,0xde00
    1f58:	acf90000 	sw	t9,0(a3)
    1f5c:	10000018 	b	1fc0 <EnKanban_Draw+0x3d8>
    1f60:	ace90004 	sw	t1,4(a3)
    1f64:	3c040000 	lui	a0,0x0
    1f68:	24840000 	addiu	a0,a0,0
    1f6c:	00025040 	sll	t2,v0,0x1
    1f70:	008a5821 	addu	t3,a0,t2
    1f74:	956c0000 	lhu	t4,0(t3)
    1f78:	960d0156 	lhu	t5,342(s0)
    1f7c:	018d7024 	and	t6,t4,t5
    1f80:	51c0000a 	beqzl	t6,1fac <EnKanban_Draw+0x3c4>
    1f84:	24420001 	addiu	v0,v0,1
    1f88:	8e2702c0 	lw	a3,704(s1)
    1f8c:	0002c080 	sll	t8,v0,0x2
    1f90:	00b8c821 	addu	t9,a1,t8
    1f94:	24ef0008 	addiu	t7,a3,8
    1f98:	ae2f02c0 	sw	t7,704(s1)
    1f9c:	ace60000 	sw	a2,0(a3)
    1fa0:	8f290000 	lw	t1,0(t9)
    1fa4:	ace90004 	sw	t1,4(a3)
    1fa8:	24420001 	addiu	v0,v0,1
    1fac:	00021400 	sll	v0,v0,0x10
    1fb0:	00021403 	sra	v0,v0,0x10
    1fb4:	2841000b 	slti	at,v0,11
    1fb8:	5420ffed 	bnezl	at,1f70 <EnKanban_Draw+0x388>
    1fbc:	00025040 	sll	t2,v0,0x1
    1fc0:	860a0198 	lh	t2,408(s0)
    1fc4:	3c064348 	lui	a2,0x4348
    1fc8:	24070001 	li	a3,1
    1fcc:	5140004b 	beqzl	t2,20fc <EnKanban_Draw+0x514>
    1fd0:	3c0143c8 	lui	at,0x43c8
    1fd4:	920b0194 	lbu	t3,404(s0)
    1fd8:	3c01c496 	lui	at,0xc496
    1fdc:	55600005 	bnezl	t3,1ff4 <EnKanban_Draw+0x40c>
    1fe0:	44800000 	mtc1	zero,$f0
    1fe4:	44810000 	mtc1	at,$f0
    1fe8:	10000003 	b	1ff8 <EnKanban_Draw+0x410>
    1fec:	00000000 	nop
    1ff0:	44800000 	mtc1	zero,$f0
    1ff4:	00000000 	nop
    1ff8:	3c010000 	lui	at,0x0
    1ffc:	c42a0000 	lwc1	$f10,0(at)
    2000:	44806000 	mtc1	zero,$f12
    2004:	0c000000 	jal	0 <func_80A91FA0>
    2008:	46005380 	add.s	$f14,$f10,$f0
    200c:	920c0194 	lbu	t4,404(s0)
    2010:	3c010000 	lui	at,0x0
    2014:	24050001 	li	a1,1
    2018:	000c6880 	sll	t5,t4,0x2
    201c:	002d0821 	addu	at,at,t5
    2020:	0c000000 	jal	0 <func_80A91FA0>
    2024:	c42c0000 	lwc1	$f12,0(at)
    2028:	3c014120 	lui	at,0x4120
    202c:	44817000 	mtc1	at,$f14
    2030:	44806000 	mtc1	zero,$f12
    2034:	3c064000 	lui	a2,0x4000
    2038:	0c000000 	jal	0 <func_80A91FA0>
    203c:	24070001 	li	a3,1
    2040:	8e2202d0 	lw	v0,720(s1)
    2044:	3c0fe700 	lui	t7,0xe700
    2048:	3c19fa00 	lui	t9,0xfa00
    204c:	244e0008 	addiu	t6,v0,8
    2050:	ae2e02d0 	sw	t6,720(s1)
    2054:	ac4f0000 	sw	t7,0(v0)
    2058:	ac400004 	sw	zero,4(v0)
    205c:	8e2202d0 	lw	v0,720(s1)
    2060:	2401ff00 	li	at,-256
    2064:	240e9600 	li	t6,-27136
    2068:	24580008 	addiu	t8,v0,8
    206c:	ae3802d0 	sw	t8,720(s1)
    2070:	ac590000 	sw	t9,0(v0)
    2074:	86090198 	lh	t1,408(s0)
    2078:	3c0dfb00 	lui	t5,0xfb00
    207c:	3c18da38 	lui	t8,0xda38
    2080:	312a00ff 	andi	t2,t1,0xff
    2084:	01415825 	or	t3,t2,at
    2088:	ac4b0004 	sw	t3,4(v0)
    208c:	8e2202d0 	lw	v0,720(s1)
    2090:	37180003 	ori	t8,t8,0x3
    2094:	3c050000 	lui	a1,0x0
    2098:	244c0008 	addiu	t4,v0,8
    209c:	ae2c02d0 	sw	t4,720(s1)
    20a0:	ac4d0000 	sw	t5,0(v0)
    20a4:	ac4e0004 	sw	t6,4(v0)
    20a8:	8e2202d0 	lw	v0,720(s1)
    20ac:	24a50000 	addiu	a1,a1,0
    20b0:	240606ed 	li	a2,1773
    20b4:	244f0008 	addiu	t7,v0,8
    20b8:	ae2f02d0 	sw	t7,720(s1)
    20bc:	ac580000 	sw	t8,0(v0)
    20c0:	8fb900a4 	lw	t9,164(sp)
    20c4:	8f240000 	lw	a0,0(t9)
    20c8:	0c000000 	jal	0 <func_80A91FA0>
    20cc:	afa2004c 	sw	v0,76(sp)
    20d0:	8fa3004c 	lw	v1,76(sp)
    20d4:	3c0b0600 	lui	t3,0x600
    20d8:	256b1630 	addiu	t3,t3,5680
    20dc:	ac620004 	sw	v0,4(v1)
    20e0:	8e2202d0 	lw	v0,720(s1)
    20e4:	3c0ade00 	lui	t2,0xde00
    20e8:	24490008 	addiu	t1,v0,8
    20ec:	ae2902d0 	sw	t1,720(s1)
    20f0:	ac4b0004 	sw	t3,4(v0)
    20f4:	ac4a0000 	sw	t2,0(v0)
    20f8:	3c0143c8 	lui	at,0x43c8
    20fc:	44816000 	mtc1	at,$f12
    2100:	c60200ec 	lwc1	$f2,236(s0)
    2104:	460c103e 	c.le.s	$f2,$f12
    2108:	00000000 	nop
    210c:	450200e2 	bc1fl	2498 <EnKanban_Draw+0x8b0>
    2110:	8faf00a4 	lw	t7,164(sp)
    2114:	44808000 	mtc1	zero,$f16
    2118:	3c010000 	lui	at,0x0
    211c:	4602803c 	c.lt.s	$f16,$f2
    2120:	00000000 	nop
    2124:	450200dc 	bc1fl	2498 <EnKanban_Draw+0x8b0>
    2128:	8faf00a4 	lw	t7,164(sp)
    212c:	c4320000 	lwc1	$f18,0(at)
    2130:	c6040080 	lwc1	$f4,128(s0)
    2134:	4604903c 	c.lt.s	$f18,$f4
    2138:	00000000 	nop
    213c:	450200d6 	bc1fl	2498 <EnKanban_Draw+0x8b0>
    2140:	8faf00a4 	lw	t7,164(sp)
    2144:	860c0176 	lh	t4,374(s0)
    2148:	3c040000 	lui	a0,0x0
    214c:	24840000 	addiu	a0,a0,0
    2150:	55800005 	bnezl	t4,2168 <EnKanban_Draw+0x580>
    2154:	9482000c 	lhu	v0,12(a0)
    2158:	860d0178 	lh	t5,376(s0)
    215c:	51a000ce 	beqzl	t5,2498 <EnKanban_Draw+0x8b0>
    2160:	8faf00a4 	lw	t7,164(sp)
    2164:	9482000c 	lhu	v0,12(a0)
    2168:	34018000 	li	at,0x8000
    216c:	0041082a 	slt	at,v0,at
    2170:	14200004 	bnez	at,2184 <EnKanban_Draw+0x59c>
    2174:	00401825 	move	v1,v0
    2178:	340effff 	li	t6,0xffff
    217c:	01c31023 	subu	v0,t6,v1
    2180:	3042ffff 	andi	v0,v0,0xffff
    2184:	44823000 	mtc1	v0,$f6
    2188:	04410005 	bgez	v0,21a0 <EnKanban_Draw+0x5b8>
    218c:	46803220 	cvt.s.w	$f8,$f6
    2190:	3c014f80 	lui	at,0x4f80
    2194:	44815000 	mtc1	at,$f10
    2198:	00000000 	nop
    219c:	460a4200 	add.s	$f8,$f8,$f10
    21a0:	3c010000 	lui	at,0x0
    21a4:	c4320000 	lwc1	$f18,0(at)
    21a8:	3c014120 	lui	at,0x4120
    21ac:	44813000 	mtc1	at,$f6
    21b0:	3c014396 	lui	at,0x4396
    21b4:	44815000 	mtc1	at,$f10
    21b8:	46124102 	mul.s	$f4,$f8,$f18
    21bc:	4602503c 	c.lt.s	$f10,$f2
    21c0:	00000000 	nop
    21c4:	45000008 	bc1f	21e8 <EnKanban_Draw+0x600>
    21c8:	46062000 	add.s	$f0,$f4,$f6
    21cc:	46026201 	sub.s	$f8,$f12,$f2
    21d0:	3c010000 	lui	at,0x0
    21d4:	c4320000 	lwc1	$f18,0(at)
    21d8:	46124102 	mul.s	$f4,$f8,$f18
    21dc:	00000000 	nop
    21e0:	46040002 	mul.s	$f0,$f0,$f4
    21e4:	00000000 	nop
    21e8:	4600018d 	trunc.w.s	$f6,$f0
    21ec:	8e2202d0 	lw	v0,720(s1)
    21f0:	3c18fa00 	lui	t8,0xfa00
    21f4:	440b3000 	mfc1	t3,$f6
    21f8:	244f0008 	addiu	t7,v0,8
    21fc:	ae2f02d0 	sw	t7,720(s1)
    2200:	316c00ff 	andi	t4,t3,0xff
    2204:	ac4c0004 	sw	t4,4(v0)
    2208:	ac580000 	sw	t8,0(v0)
    220c:	920d0154 	lbu	t5,340(s0)
    2210:	55a00009 	bnezl	t5,2238 <EnKanban_Draw+0x650>
    2214:	c60e0080 	lwc1	$f14,128(s0)
    2218:	8c8e0004 	lw	t6,4(a0)
    221c:	24010001 	li	at,1
    2220:	55c10005 	bnel	t6,at,2238 <EnKanban_Draw+0x650>
    2224:	c60e0080 	lwc1	$f14,128(s0)
    2228:	46008086 	mov.s	$f2,$f16
    222c:	1000000a 	b	2258 <EnKanban_Draw+0x670>
    2230:	c60e0080 	lwc1	$f14,128(s0)
    2234:	c60e0080 	lwc1	$f14,128(s0)
    2238:	c60a0028 	lwc1	$f10,40(s0)
    223c:	3c01c248 	lui	at,0xc248
    2240:	44819000 	mtc1	at,$f18
    2244:	460e5201 	sub.s	$f8,$f10,$f14
    2248:	3c0142c8 	lui	at,0x42c8
    224c:	44813000 	mtc1	at,$f6
    2250:	46124102 	mul.s	$f4,$f8,$f18
    2254:	46062083 	div.s	$f2,$f4,$f6
    2258:	c60a002c 	lwc1	$f10,44(s0)
    225c:	c60c0024 	lwc1	$f12,36(s0)
    2260:	00003825 	move	a3,zero
    2264:	46025200 	add.s	$f8,$f10,$f2
    2268:	44064000 	mfc1	a2,$f8
    226c:	0c000000 	jal	0 <func_80A91FA0>
    2270:	00000000 	nop
    2274:	c60c0188 	lwc1	$f12,392(s0)
    2278:	0c000000 	jal	0 <func_80A91FA0>
    227c:	24050001 	li	a1,1
    2280:	c60c0190 	lwc1	$f12,400(s0)
    2284:	0c000000 	jal	0 <func_80A91FA0>
    2288:	24050001 	li	a1,1
    228c:	44807000 	mtc1	zero,$f14
    2290:	c60c0050 	lwc1	$f12,80(s0)
    2294:	8e060058 	lw	a2,88(s0)
    2298:	0c000000 	jal	0 <func_80A91FA0>
    229c:	24070001 	li	a3,1
    22a0:	920f0154 	lbu	t7,340(s0)
    22a4:	3c010000 	lui	at,0x0
    22a8:	24050001 	li	a1,1
    22ac:	55e00004 	bnezl	t7,22c0 <EnKanban_Draw+0x6d8>
    22b0:	861800b6 	lh	t8,182(s0)
    22b4:	0c000000 	jal	0 <func_80A91FA0>
    22b8:	c42c0000 	lwc1	$f12,0(at)
    22bc:	861800b6 	lh	t8,182(s0)
    22c0:	3c014700 	lui	at,0x4700
    22c4:	44813000 	mtc1	at,$f6
    22c8:	44989000 	mtc1	t8,$f18
    22cc:	3c010000 	lui	at,0x0
    22d0:	c4280000 	lwc1	$f8,0(at)
    22d4:	46809120 	cvt.s.w	$f4,$f18
    22d8:	24050001 	li	a1,1
    22dc:	46062283 	div.s	$f10,$f4,$f6
    22e0:	46085302 	mul.s	$f12,$f10,$f8
    22e4:	0c000000 	jal	0 <func_80A91FA0>
    22e8:	00000000 	nop
    22ec:	861900b4 	lh	t9,180(s0)
    22f0:	3c014700 	lui	at,0x4700
    22f4:	44813000 	mtc1	at,$f6
    22f8:	44999000 	mtc1	t9,$f18
    22fc:	3c010000 	lui	at,0x0
    2300:	c4280000 	lwc1	$f8,0(at)
    2304:	46809120 	cvt.s.w	$f4,$f18
    2308:	24050001 	li	a1,1
    230c:	46062283 	div.s	$f10,$f4,$f6
    2310:	46085302 	mul.s	$f12,$f10,$f8
    2314:	0c000000 	jal	0 <func_80A91FA0>
    2318:	00000000 	nop
    231c:	86090168 	lh	t1,360(s0)
    2320:	3c014700 	lui	at,0x4700
    2324:	44813000 	mtc1	at,$f6
    2328:	44899000 	mtc1	t1,$f18
    232c:	3c010000 	lui	at,0x0
    2330:	c4280000 	lwc1	$f8,0(at)
    2334:	46809120 	cvt.s.w	$f4,$f18
    2338:	24050001 	li	a1,1
    233c:	46062283 	div.s	$f10,$f4,$f6
    2340:	46085302 	mul.s	$f12,$f10,$f8
    2344:	0c000000 	jal	0 <func_80A91FA0>
    2348:	00000000 	nop
    234c:	860a016c 	lh	t2,364(s0)
    2350:	3c014700 	lui	at,0x4700
    2354:	44813000 	mtc1	at,$f6
    2358:	448a9000 	mtc1	t2,$f18
    235c:	3c010000 	lui	at,0x0
    2360:	c4280000 	lwc1	$f8,0(at)
    2364:	46809120 	cvt.s.w	$f4,$f18
    2368:	24050001 	li	a1,1
    236c:	46062283 	div.s	$f10,$f4,$f6
    2370:	46085302 	mul.s	$f12,$f10,$f8
    2374:	0c000000 	jal	0 <func_80A91FA0>
    2378:	00000000 	nop
    237c:	c60c015c 	lwc1	$f12,348(s0)
    2380:	c60e0160 	lwc1	$f14,352(s0)
    2384:	8e060164 	lw	a2,356(s0)
    2388:	0c000000 	jal	0 <func_80A91FA0>
    238c:	24070001 	li	a3,1
    2390:	8e2202d0 	lw	v0,720(s1)
    2394:	3c0cda38 	lui	t4,0xda38
    2398:	358c0003 	ori	t4,t4,0x3
    239c:	244b0008 	addiu	t3,v0,8
    23a0:	ae2b02d0 	sw	t3,720(s1)
    23a4:	ac4c0000 	sw	t4,0(v0)
    23a8:	8fad00a4 	lw	t5,164(sp)
    23ac:	3c050000 	lui	a1,0x0
    23b0:	24a50000 	addiu	a1,a1,0
    23b4:	8da40000 	lw	a0,0(t5)
    23b8:	24060729 	li	a2,1833
    23bc:	0c000000 	jal	0 <func_80A91FA0>
    23c0:	afa20038 	sw	v0,56(sp)
    23c4:	8fa30038 	lw	v1,56(sp)
    23c8:	240400ff 	li	a0,255
    23cc:	3c0ddb06 	lui	t5,0xdb06
    23d0:	ac620004 	sw	v0,4(v1)
    23d4:	3c030000 	lui	v1,0x0
    23d8:	24630000 	addiu	v1,v1,0
    23dc:	8fa5008c 	lw	a1,140(sp)
    23e0:	00001025 	move	v0,zero
    23e4:	00027040 	sll	t6,v0,0x1
    23e8:	006e7821 	addu	t7,v1,t6
    23ec:	95f80000 	lhu	t8,0(t7)
    23f0:	96190156 	lhu	t9,342(s0)
    23f4:	00a25021 	addu	t2,a1,v0
    23f8:	00a25821 	addu	t3,a1,v0
    23fc:	03194824 	and	t1,t8,t9
    2400:	51200004 	beqzl	t1,2414 <EnKanban_Draw+0x82c>
    2404:	a1600000 	sb	zero,0(t3)
    2408:	10000002 	b	2414 <EnKanban_Draw+0x82c>
    240c:	a1440000 	sb	a0,0(t2)
    2410:	a1600000 	sb	zero,0(t3)
    2414:	24420001 	addiu	v0,v0,1
    2418:	00021400 	sll	v0,v0,0x10
    241c:	00021403 	sra	v0,v0,0x10
    2420:	28410400 	slti	at,v0,1024
    2424:	5420fff0 	bnezl	at,23e8 <EnKanban_Draw+0x800>
    2428:	00027040 	sll	t6,v0,0x1
    242c:	8e2202d0 	lw	v0,720(s1)
    2430:	00057100 	sll	t6,a1,0x4
    2434:	000e7f02 	srl	t7,t6,0x1c
    2438:	244c0008 	addiu	t4,v0,8
    243c:	ae2c02d0 	sw	t4,720(s1)
    2440:	000fc080 	sll	t8,t7,0x2
    2444:	35ad0020 	ori	t5,t5,0x20
    2448:	3c190000 	lui	t9,0x0
    244c:	0338c821 	addu	t9,t9,t8
    2450:	3c0100ff 	lui	at,0xff
    2454:	ac4d0000 	sw	t5,0(v0)
    2458:	8f390000 	lw	t9,0(t9)
    245c:	3421ffff 	ori	at,at,0xffff
    2460:	00a14824 	and	t1,a1,at
    2464:	3c018000 	lui	at,0x8000
    2468:	03295021 	addu	t2,t9,t1
    246c:	01415821 	addu	t3,t2,at
    2470:	ac4b0004 	sw	t3,4(v0)
    2474:	8e2202d0 	lw	v0,720(s1)
    2478:	3c0e0000 	lui	t6,0x0
    247c:	25ce0000 	addiu	t6,t6,0
    2480:	244c0008 	addiu	t4,v0,8
    2484:	ae2c02d0 	sw	t4,720(s1)
    2488:	3c0dde00 	lui	t5,0xde00
    248c:	ac4d0000 	sw	t5,0(v0)
    2490:	ac4e0004 	sw	t6,4(v0)
    2494:	8faf00a4 	lw	t7,164(sp)
    2498:	3c060000 	lui	a2,0x0
    249c:	24c60000 	addiu	a2,a2,0
    24a0:	27a40078 	addiu	a0,sp,120
    24a4:	24070741 	li	a3,1857
    24a8:	0c000000 	jal	0 <func_80A91FA0>
    24ac:	8de50000 	lw	a1,0(t7)
    24b0:	8fbf001c 	lw	ra,28(sp)
    24b4:	8fb00014 	lw	s0,20(sp)
    24b8:	8fb10018 	lw	s1,24(sp)
    24bc:	03e00008 	jr	ra
    24c0:	27bd00a0 	addiu	sp,sp,160
	...
