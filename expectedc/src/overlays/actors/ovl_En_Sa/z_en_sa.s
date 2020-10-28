
build/src/overlays/actors/ovl_En_Sa/z_en_sa.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80AF5560>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afbf0014 	sw	ra,20(sp)
       8:	00803025 	move	a2,a0
       c:	afa60018 	sw	a2,24(sp)
      10:	0c000000 	jal	0 <func_80AF5560>
      14:	24a420d8 	addiu	a0,a1,8408
      18:	8fa60018 	lw	a2,24(sp)
      1c:	00402825 	move	a1,v0
      20:	00022400 	sll	a0,v0,0x10
      24:	90c30209 	lbu	v1,521(a2)
      28:	2401000a 	li	at,10
      2c:	00042403 	sra	a0,a0,0x10
      30:	10610007 	beq	v1,at,50 <func_80AF5560+0x50>
      34:	00057400 	sll	t6,a1,0x10
      38:	24010005 	li	at,5
      3c:	10610004 	beq	v1,at,50 <func_80AF5560+0x50>
      40:	24010002 	li	at,2
      44:	10610002 	beq	v1,at,50 <func_80AF5560+0x50>
      48:	24010001 	li	at,1
      4c:	14610006 	bne	v1,at,68 <func_80AF5560+0x68>
      50:	000e7c03 	sra	t7,t6,0x10
      54:	51e30005 	beql	t7,v1,6c <func_80AF5560+0x6c>
      58:	a0c40209 	sb	a0,521(a2)
      5c:	90d80208 	lbu	t8,520(a2)
      60:	27190001 	addiu	t9,t8,1
      64:	a0d90208 	sb	t9,520(a2)
      68:	a0c40209 	sb	a0,521(a2)
      6c:	8fbf0014 	lw	ra,20(sp)
      70:	27bd0018 	addiu	sp,sp,24
      74:	00801025 	move	v0,a0
      78:	03e00008 	jr	ra
      7c:	00000000 	nop

00000080 <func_80AF55E0>:
      80:	27bdffe8 	addiu	sp,sp,-24
      84:	afbf0014 	sw	ra,20(sp)
      88:	00a03025 	move	a2,a1
      8c:	afa6001c 	sw	a2,28(sp)
      90:	0c000000 	jal	0 <func_80AF5560>
      94:	24050010 	li	a1,16
      98:	8fa6001c 	lw	a2,28(sp)
      9c:	10400003 	beqz	v0,ac <func_80AF55E0+0x2c>
      a0:	3043ffff 	andi	v1,v0,0xffff
      a4:	10000037 	b	184 <func_80AF55E0+0x104>
      a8:	00601025 	move	v0,v1
      ac:	3c020000 	lui	v0,0x0
      b0:	3c040000 	lui	a0,0x0
      b4:	24840000 	addiu	a0,a0,0
      b8:	24420000 	addiu	v0,v0,0
      bc:	8c4300a4 	lw	v1,164(v0)
      c0:	8c8e0038 	lw	t6,56(a0)
      c4:	01c37824 	and	t7,t6,v1
      c8:	51e00004 	beqzl	t7,dc <func_80AF55E0+0x5c>
      cc:	8c980048 	lw	t8,72(a0)
      d0:	1000002c 	b	184 <func_80AF55E0+0x104>
      d4:	240210ad 	li	v0,4269
      d8:	8c980048 	lw	t8,72(a0)
      dc:	0303c824 	and	t9,t8,v1
      e0:	5320000c 	beqzl	t9,114 <func_80AF55E0+0x94>
      e4:	944a0ed4 	lhu	t2,3796(v0)
      e8:	a0c00208 	sb	zero,520(a2)
      ec:	a0c00209 	sb	zero,521(a2)
      f0:	94480ef8 	lhu	t0,3832(v0)
      f4:	31090020 	andi	t1,t0,0x20
      f8:	11200003 	beqz	t1,108 <func_80AF55E0+0x88>
      fc:	00000000 	nop
     100:	10000020 	b	184 <func_80AF55E0+0x104>
     104:	24021048 	li	v0,4168
     108:	1000001e 	b	184 <func_80AF55E0+0x104>
     10c:	24021047 	li	v0,4167
     110:	944a0ed4 	lhu	t2,3796(v0)
     114:	314b0004 	andi	t3,t2,0x4
     118:	5160000c 	beqzl	t3,14c <func_80AF55E0+0xcc>
     11c:	944e0ef8 	lhu	t6,3832(v0)
     120:	a0c00208 	sb	zero,520(a2)
     124:	a0c00209 	sb	zero,521(a2)
     128:	944c0ef8 	lhu	t4,3832(v0)
     12c:	318d0008 	andi	t5,t4,0x8
     130:	11a00003 	beqz	t5,140 <func_80AF55E0+0xc0>
     134:	00000000 	nop
     138:	10000012 	b	184 <func_80AF55E0+0x104>
     13c:	24021032 	li	v0,4146
     140:	10000010 	b	184 <func_80AF55E0+0x104>
     144:	24021031 	li	v0,4145
     148:	944e0ef8 	lhu	t6,3832(v0)
     14c:	31cf0001 	andi	t7,t6,0x1
     150:	51e0000c 	beqzl	t7,184 <func_80AF55E0+0x104>
     154:	24021001 	li	v0,4097
     158:	a0c00208 	sb	zero,520(a2)
     15c:	a0c00209 	sb	zero,521(a2)
     160:	94580ef8 	lhu	t8,3832(v0)
     164:	33190002 	andi	t9,t8,0x2
     168:	13200003 	beqz	t9,178 <func_80AF55E0+0xf8>
     16c:	00000000 	nop
     170:	10000004 	b	184 <func_80AF55E0+0x104>
     174:	24021003 	li	v0,4099
     178:	10000002 	b	184 <func_80AF55E0+0x104>
     17c:	24021002 	li	v0,4098
     180:	24021001 	li	v0,4097
     184:	8fbf0014 	lw	ra,20(sp)
     188:	27bd0018 	addiu	sp,sp,24
     18c:	03e00008 	jr	ra
     190:	00000000 	nop

00000194 <func_80AF56F4>:
     194:	27bdffe0 	addiu	sp,sp,-32
     198:	afa50024 	sw	a1,36(sp)
     19c:	00802825 	move	a1,a0
     1a0:	afbf0014 	sw	ra,20(sp)
     1a4:	afa40020 	sw	a0,32(sp)
     1a8:	24030001 	li	v1,1
     1ac:	a7a3001e 	sh	v1,30(sp)
     1b0:	0c000000 	jal	0 <func_80AF5560>
     1b4:	8fa40024 	lw	a0,36(sp)
     1b8:	2c41000a 	sltiu	at,v0,10
     1bc:	10200029 	beqz	at,264 <L80AF57C4>
     1c0:	87a3001e 	lh	v1,30(sp)
     1c4:	00027080 	sll	t6,v0,0x2
     1c8:	3c010000 	lui	at,0x0
     1cc:	002e0821 	addu	at,at,t6
     1d0:	8c2e0000 	lw	t6,0(at)
     1d4:	01c00008 	jr	t6
     1d8:	00000000 	nop

000001dc <L80AF573C>:
     1dc:	8faf0024 	lw	t7,36(sp)
     1e0:	24011002 	li	at,4098
     1e4:	95e2010e 	lhu	v0,270(t7)
     1e8:	10410007 	beq	v0,at,208 <L80AF573C+0x2c>
     1ec:	24011031 	li	at,4145
     1f0:	1041000c 	beq	v0,at,224 <L80AF573C+0x48>
     1f4:	24011047 	li	at,4167
     1f8:	10410014 	beq	v0,at,24c <L80AF573C+0x70>
     1fc:	00000000 	nop
     200:	10000018 	b	264 <L80AF57C4>
     204:	00001825 	move	v1,zero
     208:	3c020000 	lui	v0,0x0
     20c:	24420000 	addiu	v0,v0,0
     210:	94580ef8 	lhu	t8,3832(v0)
     214:	00001825 	move	v1,zero
     218:	37190002 	ori	t9,t8,0x2
     21c:	10000011 	b	264 <L80AF57C4>
     220:	a4590ef8 	sh	t9,3832(v0)
     224:	3c020000 	lui	v0,0x0
     228:	24420000 	addiu	v0,v0,0
     22c:	94480ed4 	lhu	t0,3796(v0)
     230:	944a0ef8 	lhu	t2,3832(v0)
     234:	00001825 	move	v1,zero
     238:	35090008 	ori	t1,t0,0x8
     23c:	354b0008 	ori	t3,t2,0x8
     240:	a4490ed4 	sh	t1,3796(v0)
     244:	10000007 	b	264 <L80AF57C4>
     248:	a44b0ef8 	sh	t3,3832(v0)
     24c:	3c020000 	lui	v0,0x0
     250:	24420000 	addiu	v0,v0,0
     254:	944c0ef8 	lhu	t4,3832(v0)
     258:	00001825 	move	v1,zero
     25c:	358d0020 	ori	t5,t4,0x20
     260:	a44d0ef8 	sh	t5,3832(v0)

00000264 <L80AF57C4>:
     264:	8fbf0014 	lw	ra,20(sp)
     268:	27bd0020 	addiu	sp,sp,32
     26c:	00601025 	move	v0,v1
     270:	03e00008 	jr	ra
     274:	00000000 	nop

00000278 <func_80AF57D8>:
     278:	27bdffd8 	addiu	sp,sp,-40
     27c:	afbf0024 	sw	ra,36(sp)
     280:	afb00020 	sw	s0,32(sp)
     284:	afa5002c 	sw	a1,44(sp)
     288:	84af00a4 	lh	t7,164(a1)
     28c:	24010056 	li	at,86
     290:	00808025 	move	s0,a0
     294:	55e10011 	bnel	t7,at,2dc <func_80AF57D8+0x64>
     298:	860901d4 	lh	t1,468(s0)
     29c:	8498008a 	lh	t8,138(a0)
     2a0:	849900b6 	lh	t9,182(a0)
     2a4:	03191023 	subu	v0,t8,t9
     2a8:	00021400 	sll	v0,v0,0x10
     2ac:	00021403 	sra	v0,v0,0x10
     2b0:	04400003 	bltz	v0,2c0 <func_80AF57D8+0x48>
     2b4:	00021823 	negu	v1,v0
     2b8:	10000001 	b	2c0 <func_80AF57D8+0x48>
     2bc:	00401825 	move	v1,v0
     2c0:	28611555 	slti	at,v1,5461
     2c4:	54200005 	bnezl	at,2dc <func_80AF57D8+0x64>
     2c8:	860901d4 	lh	t1,468(s0)
     2cc:	860801e0 	lh	t0,480(s0)
     2d0:	51000014 	beqzl	t0,324 <func_80AF57D8+0xac>
     2d4:	8fbf0024 	lw	ra,36(sp)
     2d8:	860901d4 	lh	t1,468(s0)
     2dc:	3c0141f0 	lui	at,0x41f0
     2e0:	44814000 	mtc1	at,$f8
     2e4:	44892000 	mtc1	t1,$f4
     2e8:	3c0a0000 	lui	t2,0x0
     2ec:	3c0b0000 	lui	t3,0x0
     2f0:	468021a0 	cvt.s.w	$f6,$f4
     2f4:	256b0000 	addiu	t3,t3,0
     2f8:	254a0000 	addiu	t2,t2,0
     2fc:	afaa0010 	sw	t2,16(sp)
     300:	afab0014 	sw	t3,20(sp)
     304:	8fa4002c 	lw	a0,44(sp)
     308:	46083280 	add.s	$f10,$f6,$f8
     30c:	02002825 	move	a1,s0
     310:	260601e0 	addiu	a2,s0,480
     314:	44075000 	mfc1	a3,$f10
     318:	0c000000 	jal	0 <func_80AF5560>
     31c:	00000000 	nop
     320:	8fbf0024 	lw	ra,36(sp)
     324:	8fb00020 	lw	s0,32(sp)
     328:	27bd0028 	addiu	sp,sp,40
     32c:	03e00008 	jr	ra
     330:	00000000 	nop

00000334 <func_80AF5894>:
     334:	c482015c 	lwc1	$f2,348(a0)
     338:	3c01bf80 	lui	at,0xbf80
     33c:	c4800158 	lwc1	$f0,344(a0)
     340:	44812000 	mtc1	at,$f4
     344:	e4820158 	swc1	$f2,344(a0)
     348:	e4820164 	swc1	$f2,356(a0)
     34c:	e480015c 	swc1	$f0,348(a0)
     350:	03e00008 	jr	ra
     354:	e4840168 	swc1	$f4,360(a0)

00000358 <func_80AF58B8>:
     358:	27bdffd8 	addiu	sp,sp,-40
     35c:	afbf001c 	sw	ra,28(sp)
     360:	afb00018 	sw	s0,24(sp)
     364:	9082020a 	lbu	v0,522(a0)
     368:	00808025 	move	s0,a0
     36c:	2604014c 	addiu	a0,s0,332
     370:	10400006 	beqz	v0,38c <func_80AF58B8+0x34>
     374:	3c050000 	lui	a1,0x0
     378:	24010001 	li	at,1
     37c:	5041000a 	beql	v0,at,3a8 <func_80AF58B8+0x50>
     380:	2604014c 	addiu	a0,s0,332
     384:	10000015 	b	3dc <func_80AF58B8+0x84>
     388:	8fbf001c 	lw	ra,28(sp)
     38c:	24a50000 	addiu	a1,a1,0
     390:	0c000000 	jal	0 <func_80AF5560>
     394:	24060003 	li	a2,3
     398:	920e020a 	lbu	t6,522(s0)
     39c:	25cf0001 	addiu	t7,t6,1
     3a0:	a20f020a 	sb	t7,522(s0)
     3a4:	2604014c 	addiu	a0,s0,332
     3a8:	8e05015c 	lw	a1,348(s0)
     3ac:	0c000000 	jal	0 <func_80AF5560>
     3b0:	afa40020 	sw	a0,32(sp)
     3b4:	10400008 	beqz	v0,3d8 <func_80AF58B8+0x80>
     3b8:	8fa40020 	lw	a0,32(sp)
     3bc:	3c050000 	lui	a1,0x0
     3c0:	24a50000 	addiu	a1,a1,0
     3c4:	0c000000 	jal	0 <func_80AF5560>
     3c8:	24060002 	li	a2,2
     3cc:	9218020a 	lbu	t8,522(s0)
     3d0:	27190001 	addiu	t9,t8,1
     3d4:	a219020a 	sb	t9,522(s0)
     3d8:	8fbf001c 	lw	ra,28(sp)
     3dc:	8fb00018 	lw	s0,24(sp)
     3e0:	27bd0028 	addiu	sp,sp,40
     3e4:	03e00008 	jr	ra
     3e8:	00000000 	nop

000003ec <func_80AF594C>:
     3ec:	27bdffd8 	addiu	sp,sp,-40
     3f0:	afbf001c 	sw	ra,28(sp)
     3f4:	afb00018 	sw	s0,24(sp)
     3f8:	9082020a 	lbu	v0,522(a0)
     3fc:	00808025 	move	s0,a0
     400:	2604014c 	addiu	a0,s0,332
     404:	10400006 	beqz	v0,420 <func_80AF594C+0x34>
     408:	3c050000 	lui	a1,0x0
     40c:	24010001 	li	at,1
     410:	5041000a 	beql	v0,at,43c <func_80AF594C+0x50>
     414:	2604014c 	addiu	a0,s0,332
     418:	10000015 	b	470 <func_80AF594C+0x84>
     41c:	8fbf001c 	lw	ra,28(sp)
     420:	24a50000 	addiu	a1,a1,0
     424:	0c000000 	jal	0 <func_80AF5560>
     428:	24060008 	li	a2,8
     42c:	920e020a 	lbu	t6,522(s0)
     430:	25cf0001 	addiu	t7,t6,1
     434:	a20f020a 	sb	t7,522(s0)
     438:	2604014c 	addiu	a0,s0,332
     43c:	8e05015c 	lw	a1,348(s0)
     440:	0c000000 	jal	0 <func_80AF5560>
     444:	afa40020 	sw	a0,32(sp)
     448:	10400008 	beqz	v0,46c <func_80AF594C+0x80>
     44c:	8fa40020 	lw	a0,32(sp)
     450:	3c050000 	lui	a1,0x0
     454:	24a50000 	addiu	a1,a1,0
     458:	0c000000 	jal	0 <func_80AF5560>
     45c:	24060009 	li	a2,9
     460:	9218020a 	lbu	t8,522(s0)
     464:	27190001 	addiu	t9,t8,1
     468:	a219020a 	sb	t9,522(s0)
     46c:	8fbf001c 	lw	ra,28(sp)
     470:	8fb00018 	lw	s0,24(sp)
     474:	27bd0028 	addiu	sp,sp,40
     478:	03e00008 	jr	ra
     47c:	00000000 	nop

00000480 <func_80AF59E0>:
     480:	27bdffd8 	addiu	sp,sp,-40
     484:	afbf001c 	sw	ra,28(sp)
     488:	afb00018 	sw	s0,24(sp)
     48c:	9082020a 	lbu	v0,522(a0)
     490:	00808025 	move	s0,a0
     494:	2604014c 	addiu	a0,s0,332
     498:	10400006 	beqz	v0,4b4 <func_80AF59E0+0x34>
     49c:	3c050000 	lui	a1,0x0
     4a0:	24010001 	li	at,1
     4a4:	5041000a 	beql	v0,at,4d0 <func_80AF59E0+0x50>
     4a8:	2604014c 	addiu	a0,s0,332
     4ac:	10000015 	b	504 <func_80AF59E0+0x84>
     4b0:	8fbf001c 	lw	ra,28(sp)
     4b4:	24a50000 	addiu	a1,a1,0
     4b8:	0c000000 	jal	0 <func_80AF5560>
     4bc:	24060001 	li	a2,1
     4c0:	920e020a 	lbu	t6,522(s0)
     4c4:	25cf0001 	addiu	t7,t6,1
     4c8:	a20f020a 	sb	t7,522(s0)
     4cc:	2604014c 	addiu	a0,s0,332
     4d0:	8e05015c 	lw	a1,348(s0)
     4d4:	0c000000 	jal	0 <func_80AF5560>
     4d8:	afa40020 	sw	a0,32(sp)
     4dc:	10400008 	beqz	v0,500 <func_80AF59E0+0x80>
     4e0:	8fa40020 	lw	a0,32(sp)
     4e4:	3c050000 	lui	a1,0x0
     4e8:	24a50000 	addiu	a1,a1,0
     4ec:	0c000000 	jal	0 <func_80AF5560>
     4f0:	24060007 	li	a2,7
     4f4:	9218020a 	lbu	t8,522(s0)
     4f8:	27190001 	addiu	t9,t8,1
     4fc:	a219020a 	sb	t9,522(s0)
     500:	8fbf001c 	lw	ra,28(sp)
     504:	8fb00018 	lw	s0,24(sp)
     508:	27bd0028 	addiu	sp,sp,40
     50c:	03e00008 	jr	ra
     510:	00000000 	nop

00000514 <func_80AF5A74>:
     514:	27bdffd8 	addiu	sp,sp,-40
     518:	afbf001c 	sw	ra,28(sp)
     51c:	afb00018 	sw	s0,24(sp)
     520:	9082020a 	lbu	v0,522(a0)
     524:	00808025 	move	s0,a0
     528:	2604014c 	addiu	a0,s0,332
     52c:	10400006 	beqz	v0,548 <func_80AF5A74+0x34>
     530:	3c050000 	lui	a1,0x0
     534:	24010001 	li	at,1
     538:	5041000c 	beql	v0,at,56c <func_80AF5A74+0x58>
     53c:	2604014c 	addiu	a0,s0,332
     540:	10000017 	b	5a0 <func_80AF5A74+0x8c>
     544:	8fbf001c 	lw	ra,28(sp)
     548:	24a50000 	addiu	a1,a1,0
     54c:	0c000000 	jal	0 <func_80AF5560>
     550:	24060001 	li	a2,1
     554:	0c000000 	jal	0 <func_80AF5560>
     558:	02002025 	move	a0,s0
     55c:	920e020a 	lbu	t6,522(s0)
     560:	25cf0001 	addiu	t7,t6,1
     564:	a20f020a 	sb	t7,522(s0)
     568:	2604014c 	addiu	a0,s0,332
     56c:	8e05015c 	lw	a1,348(s0)
     570:	0c000000 	jal	0 <func_80AF5560>
     574:	afa40020 	sw	a0,32(sp)
     578:	10400008 	beqz	v0,59c <func_80AF5A74+0x88>
     57c:	8fa40020 	lw	a0,32(sp)
     580:	3c050000 	lui	a1,0x0
     584:	24a50000 	addiu	a1,a1,0
     588:	0c000000 	jal	0 <func_80AF5560>
     58c:	24060009 	li	a2,9
     590:	9218020a 	lbu	t8,522(s0)
     594:	27190001 	addiu	t9,t8,1
     598:	a219020a 	sb	t9,522(s0)
     59c:	8fbf001c 	lw	ra,28(sp)
     5a0:	8fb00018 	lw	s0,24(sp)
     5a4:	27bd0028 	addiu	sp,sp,40
     5a8:	03e00008 	jr	ra
     5ac:	00000000 	nop

000005b0 <func_80AF5B10>:
     5b0:	27bdffd8 	addiu	sp,sp,-40
     5b4:	afbf001c 	sw	ra,28(sp)
     5b8:	afb00018 	sw	s0,24(sp)
     5bc:	9082020a 	lbu	v0,522(a0)
     5c0:	00808025 	move	s0,a0
     5c4:	2604014c 	addiu	a0,s0,332
     5c8:	10400006 	beqz	v0,5e4 <func_80AF5B10+0x34>
     5cc:	3c050000 	lui	a1,0x0
     5d0:	24010001 	li	at,1
     5d4:	5041000a 	beql	v0,at,600 <func_80AF5B10+0x50>
     5d8:	2604014c 	addiu	a0,s0,332
     5dc:	10000015 	b	634 <func_80AF5B10+0x84>
     5e0:	8fbf001c 	lw	ra,28(sp)
     5e4:	24a50000 	addiu	a1,a1,0
     5e8:	0c000000 	jal	0 <func_80AF5560>
     5ec:	24060006 	li	a2,6
     5f0:	920e020a 	lbu	t6,522(s0)
     5f4:	25cf0001 	addiu	t7,t6,1
     5f8:	a20f020a 	sb	t7,522(s0)
     5fc:	2604014c 	addiu	a0,s0,332
     600:	8e05015c 	lw	a1,348(s0)
     604:	0c000000 	jal	0 <func_80AF5560>
     608:	afa40020 	sw	a0,32(sp)
     60c:	10400008 	beqz	v0,630 <func_80AF5B10+0x80>
     610:	8fa40020 	lw	a0,32(sp)
     614:	3c050000 	lui	a1,0x0
     618:	24a50000 	addiu	a1,a1,0
     61c:	0c000000 	jal	0 <func_80AF5560>
     620:	24060004 	li	a2,4
     624:	9218020a 	lbu	t8,522(s0)
     628:	27190001 	addiu	t9,t8,1
     62c:	a219020a 	sb	t9,522(s0)
     630:	8fbf001c 	lw	ra,28(sp)
     634:	8fb00018 	lw	s0,24(sp)
     638:	27bd0028 	addiu	sp,sp,40
     63c:	03e00008 	jr	ra
     640:	00000000 	nop

00000644 <func_80AF5BA4>:
     644:	27bdffd8 	addiu	sp,sp,-40
     648:	afbf001c 	sw	ra,28(sp)
     64c:	afb00018 	sw	s0,24(sp)
     650:	9082020a 	lbu	v0,522(a0)
     654:	00808025 	move	s0,a0
     658:	2604014c 	addiu	a0,s0,332
     65c:	10400006 	beqz	v0,678 <func_80AF5BA4+0x34>
     660:	3c050000 	lui	a1,0x0
     664:	24010001 	li	at,1
     668:	5041000c 	beql	v0,at,69c <func_80AF5BA4+0x58>
     66c:	2604014c 	addiu	a0,s0,332
     670:	10000017 	b	6d0 <func_80AF5BA4+0x8c>
     674:	8fbf001c 	lw	ra,28(sp)
     678:	24a50000 	addiu	a1,a1,0
     67c:	0c000000 	jal	0 <func_80AF5560>
     680:	24060006 	li	a2,6
     684:	0c000000 	jal	0 <func_80AF5560>
     688:	02002025 	move	a0,s0
     68c:	920e020a 	lbu	t6,522(s0)
     690:	25cf0001 	addiu	t7,t6,1
     694:	a20f020a 	sb	t7,522(s0)
     698:	2604014c 	addiu	a0,s0,332
     69c:	8e05015c 	lw	a1,348(s0)
     6a0:	0c000000 	jal	0 <func_80AF5560>
     6a4:	afa40020 	sw	a0,32(sp)
     6a8:	10400008 	beqz	v0,6cc <func_80AF5BA4+0x88>
     6ac:	8fa40020 	lw	a0,32(sp)
     6b0:	3c050000 	lui	a1,0x0
     6b4:	24a50000 	addiu	a1,a1,0
     6b8:	0c000000 	jal	0 <func_80AF5560>
     6bc:	24060009 	li	a2,9
     6c0:	9218020a 	lbu	t8,522(s0)
     6c4:	27190001 	addiu	t9,t8,1
     6c8:	a219020a 	sb	t9,522(s0)
     6cc:	8fbf001c 	lw	ra,28(sp)
     6d0:	8fb00018 	lw	s0,24(sp)
     6d4:	27bd0028 	addiu	sp,sp,40
     6d8:	03e00008 	jr	ra
     6dc:	00000000 	nop

000006e0 <func_80AF5C40>:
     6e0:	27bdffd8 	addiu	sp,sp,-40
     6e4:	afbf001c 	sw	ra,28(sp)
     6e8:	afb00018 	sw	s0,24(sp)
     6ec:	9082020a 	lbu	v0,522(a0)
     6f0:	00808025 	move	s0,a0
     6f4:	2604014c 	addiu	a0,s0,332
     6f8:	10400006 	beqz	v0,714 <func_80AF5C40+0x34>
     6fc:	3c050000 	lui	a1,0x0
     700:	24010001 	li	at,1
     704:	5041000a 	beql	v0,at,730 <func_80AF5C40+0x50>
     708:	2604014c 	addiu	a0,s0,332
     70c:	10000015 	b	764 <func_80AF5C40+0x84>
     710:	8fbf001c 	lw	ra,28(sp)
     714:	24a50000 	addiu	a1,a1,0
     718:	0c000000 	jal	0 <func_80AF5560>
     71c:	24060005 	li	a2,5
     720:	920e020a 	lbu	t6,522(s0)
     724:	25cf0001 	addiu	t7,t6,1
     728:	a20f020a 	sb	t7,522(s0)
     72c:	2604014c 	addiu	a0,s0,332
     730:	8e05015c 	lw	a1,348(s0)
     734:	0c000000 	jal	0 <func_80AF5560>
     738:	afa40020 	sw	a0,32(sp)
     73c:	10400008 	beqz	v0,760 <func_80AF5C40+0x80>
     740:	8fa40020 	lw	a0,32(sp)
     744:	3c050000 	lui	a1,0x0
     748:	24a50000 	addiu	a1,a1,0
     74c:	0c000000 	jal	0 <func_80AF5560>
     750:	00003025 	move	a2,zero
     754:	9218020a 	lbu	t8,522(s0)
     758:	27190001 	addiu	t9,t8,1
     75c:	a219020a 	sb	t9,522(s0)
     760:	8fbf001c 	lw	ra,28(sp)
     764:	8fb00018 	lw	s0,24(sp)
     768:	27bd0028 	addiu	sp,sp,40
     76c:	03e00008 	jr	ra
     770:	00000000 	nop

00000774 <func_80AF5CD4>:
     774:	afa50004 	sw	a1,4(sp)
     778:	a085020b 	sb	a1,523(a0)
     77c:	03e00008 	jr	ra
     780:	a080020a 	sb	zero,522(a0)

00000784 <func_80AF5CE4>:
     784:	27bdffe8 	addiu	sp,sp,-24
     788:	afbf0014 	sw	ra,20(sp)
     78c:	908e020b 	lbu	t6,523(a0)
     790:	25cfffff 	addiu	t7,t6,-1
     794:	2de10007 	sltiu	at,t7,7
     798:	10200020 	beqz	at,81c <L80AF5D74+0x8>
     79c:	000f7880 	sll	t7,t7,0x2
     7a0:	3c010000 	lui	at,0x0
     7a4:	002f0821 	addu	at,at,t7
     7a8:	8c2f0000 	lw	t7,0(at)
     7ac:	01e00008 	jr	t7
     7b0:	00000000 	nop

000007b4 <L80AF5D14>:
     7b4:	0c000000 	jal	0 <func_80AF5560>
     7b8:	00000000 	nop
     7bc:	10000018 	b	820 <L80AF5D74+0xc>
     7c0:	8fbf0014 	lw	ra,20(sp)

000007c4 <L80AF5D24>:
     7c4:	0c000000 	jal	0 <func_80AF5560>
     7c8:	00000000 	nop
     7cc:	10000014 	b	820 <L80AF5D74+0xc>
     7d0:	8fbf0014 	lw	ra,20(sp)

000007d4 <L80AF5D34>:
     7d4:	0c000000 	jal	0 <func_80AF5560>
     7d8:	00000000 	nop
     7dc:	10000010 	b	820 <L80AF5D74+0xc>
     7e0:	8fbf0014 	lw	ra,20(sp)

000007e4 <L80AF5D44>:
     7e4:	0c000000 	jal	0 <func_80AF5560>
     7e8:	00000000 	nop
     7ec:	1000000c 	b	820 <L80AF5D74+0xc>
     7f0:	8fbf0014 	lw	ra,20(sp)

000007f4 <L80AF5D54>:
     7f4:	0c000000 	jal	0 <func_80AF5560>
     7f8:	00000000 	nop
     7fc:	10000008 	b	820 <L80AF5D74+0xc>
     800:	8fbf0014 	lw	ra,20(sp)

00000804 <L80AF5D64>:
     804:	0c000000 	jal	0 <func_80AF5560>
     808:	00000000 	nop
     80c:	10000004 	b	820 <L80AF5D74+0xc>
     810:	8fbf0014 	lw	ra,20(sp)

00000814 <L80AF5D74>:
     814:	0c000000 	jal	0 <func_80AF5560>
     818:	00000000 	nop
     81c:	8fbf0014 	lw	ra,20(sp)
     820:	27bd0018 	addiu	sp,sp,24
     824:	03e00008 	jr	ra
     828:	00000000 	nop

0000082c <func_80AF5D8C>:
     82c:	27bdffd0 	addiu	sp,sp,-48
     830:	3c0f0000 	lui	t7,0x0
     834:	25ef0000 	addiu	t7,t7,0
     838:	00057100 	sll	t6,a1,0x4
     83c:	afbf0024 	sw	ra,36(sp)
     840:	afa40030 	sw	a0,48(sp)
     844:	01cf1821 	addu	v1,t6,t7
     848:	8c640000 	lw	a0,0(v1)
     84c:	0c000000 	jal	0 <func_80AF5560>
     850:	afa30028 	sw	v1,40(sp)
     854:	44822000 	mtc1	v0,$f4
     858:	8fa30028 	lw	v1,40(sp)
     85c:	8fa40030 	lw	a0,48(sp)
     860:	468021a0 	cvt.s.w	$f6,$f4
     864:	90780008 	lbu	t8,8(v1)
     868:	c468000c 	lwc1	$f8,12(v1)
     86c:	3c063f80 	lui	a2,0x3f80
     870:	24070000 	li	a3,0
     874:	8c650000 	lw	a1,0(v1)
     878:	e7a60010 	swc1	$f6,16(sp)
     87c:	2484014c 	addiu	a0,a0,332
     880:	afb80014 	sw	t8,20(sp)
     884:	0c000000 	jal	0 <func_80AF5560>
     888:	e7a80018 	swc1	$f8,24(sp)
     88c:	8fbf0024 	lw	ra,36(sp)
     890:	27bd0030 	addiu	sp,sp,48
     894:	03e00008 	jr	ra
     898:	00000000 	nop

0000089c <func_80AF5DFC>:
     89c:	3c030000 	lui	v1,0x0
     8a0:	24630000 	addiu	v1,v1,0
     8a4:	8c620008 	lw	v0,8(v1)
     8a8:	3401fff0 	li	at,0xfff0
     8ac:	afa40000 	sw	a0,0(sp)
     8b0:	0041082a 	slt	at,v0,at
     8b4:	1420000e 	bnez	at,8f0 <func_80AF5DFC+0x54>
     8b8:	3401fffd 	li	at,0xfffd
     8bc:	5041000d 	beql	v0,at,8f4 <func_80AF5DFC+0x58>
     8c0:	84a200a4 	lh	v0,164(a1)
     8c4:	84a200a4 	lh	v0,164(a1)
     8c8:	24010055 	li	at,85
     8cc:	54410004 	bnel	v0,at,8e0 <func_80AF5DFC+0x44>
     8d0:	24010056 	li	at,86
     8d4:	03e00008 	jr	ra
     8d8:	24020004 	li	v0,4
     8dc:	24010056 	li	at,86
     8e0:	54410004 	bnel	v0,at,8f4 <func_80AF5DFC+0x58>
     8e4:	84a200a4 	lh	v0,164(a1)
     8e8:	03e00008 	jr	ra
     8ec:	24020005 	li	v0,5
     8f0:	84a200a4 	lh	v0,164(a1)
     8f4:	24010029 	li	at,41
     8f8:	54410012 	bnel	v0,at,944 <func_80AF5DFC+0xa8>
     8fc:	24010056 	li	at,86
     900:	8c6e0004 	lw	t6,4(v1)
     904:	3c0f0000 	lui	t7,0x0
     908:	51c0000e 	beqzl	t6,944 <func_80AF5DFC+0xa8>
     90c:	24010056 	li	at,86
     910:	91ef0007 	lbu	t7,7(t7)
     914:	24010007 	li	at,7
     918:	006fc021 	addu	t8,v1,t7
     91c:	93190074 	lbu	t9,116(t8)
     920:	57210008 	bnel	t9,at,944 <func_80AF5DFC+0xa8>
     924:	24010056 	li	at,86
     928:	94680edc 	lhu	t0,3804(v1)
     92c:	31090001 	andi	t1,t0,0x1
     930:	55200004 	bnezl	t1,944 <func_80AF5DFC+0xa8>
     934:	24010056 	li	at,86
     938:	03e00008 	jr	ra
     93c:	24020001 	li	v0,1
     940:	24010056 	li	at,86
     944:	54410011 	bnel	v0,at,98c <func_80AF5DFC+0xf0>
     948:	24010055 	li	at,85
     94c:	946a0edc 	lhu	t2,3804(v1)
     950:	3c0c0000 	lui	t4,0x0
     954:	314b0001 	andi	t3,t2,0x1
     958:	5160000c 	beqzl	t3,98c <func_80AF5DFC+0xf0>
     95c:	24010055 	li	at,85
     960:	8d8c0038 	lw	t4,56(t4)
     964:	8c6d00a4 	lw	t5,164(v1)
     968:	24030005 	li	v1,5
     96c:	018d7024 	and	t6,t4,t5
     970:	11c00003 	beqz	t6,980 <func_80AF5DFC+0xe4>
     974:	00000000 	nop
     978:	03e00008 	jr	ra
     97c:	24020002 	li	v0,2
     980:	03e00008 	jr	ra
     984:	00601025 	move	v0,v1
     988:	24010055 	li	at,85
     98c:	1441000e 	bne	v0,at,9c8 <func_80AF5DFC+0x12c>
     990:	3c0f0000 	lui	t7,0x0
     994:	8def0048 	lw	t7,72(t7)
     998:	8c7800a4 	lw	t8,164(v1)
     99c:	01f8c824 	and	t9,t7,t8
     9a0:	5720000a 	bnezl	t9,9cc <func_80AF5DFC+0x130>
     9a4:	00001025 	move	v0,zero
     9a8:	94680ef8 	lhu	t0,3832(v1)
     9ac:	31090001 	andi	t1,t0,0x1
     9b0:	11200003 	beqz	t1,9c0 <func_80AF5DFC+0x124>
     9b4:	00000000 	nop
     9b8:	03e00008 	jr	ra
     9bc:	24020001 	li	v0,1
     9c0:	03e00008 	jr	ra
     9c4:	24020004 	li	v0,4
     9c8:	00001025 	move	v0,zero
     9cc:	03e00008 	jr	ra
     9d0:	00000000 	nop

000009d4 <func_80AF5F34>:
     9d4:	27bdffe8 	addiu	sp,sp,-24
     9d8:	afbf0014 	sw	ra,20(sp)
     9dc:	84a200a4 	lh	v0,164(a1)
     9e0:	24010055 	li	at,85
     9e4:	8ca81c44 	lw	t0,7236(a1)
     9e8:	14410008 	bne	v0,at,a0c <func_80AF5F34+0x38>
     9ec:	00003825 	move	a3,zero
     9f0:	8c8f0190 	lw	t7,400(a0)
     9f4:	3c0e0000 	lui	t6,0x0
     9f8:	25ce0000 	addiu	t6,t6,0
     9fc:	15cf0003 	bne	t6,t7,a0c <func_80AF5F34+0x38>
     a00:	24070004 	li	a3,4
     a04:	10000001 	b	a0c <func_80AF5F34+0x38>
     a08:	24070001 	li	a3,1
     a0c:	24030056 	li	v1,86
     a10:	14620008 	bne	v1,v0,a34 <func_80AF5F34+0x60>
     a14:	00000000 	nop
     a18:	8c990154 	lw	t9,340(a0)
     a1c:	3c180601 	lui	t8,0x601
     a20:	2718baec 	addiu	t8,t8,-17684
     a24:	17190003 	bne	t8,t9,a34 <func_80AF5F34+0x60>
     a28:	24070003 	li	a3,3
     a2c:	10000001 	b	a34 <func_80AF5F34+0x60>
     a30:	24070001 	li	a3,1
     a34:	1462000c 	bne	v1,v0,a68 <func_80AF5F34+0x94>
     a38:	00000000 	nop
     a3c:	8c8a0190 	lw	t2,400(a0)
     a40:	3c090000 	lui	t1,0x0
     a44:	25290000 	addiu	t1,t1,0
     a48:	152a0007 	bne	t1,t2,a68 <func_80AF5F34+0x94>
     a4c:	00000000 	nop
     a50:	8c8c0154 	lw	t4,340(a0)
     a54:	3c0b0601 	lui	t3,0x601
     a58:	256bc500 	addiu	t3,t3,-15104
     a5c:	156c0002 	bne	t3,t4,a68 <func_80AF5F34+0x94>
     a60:	00000000 	nop
     a64:	24070001 	li	a3,1
     a68:	5462000d 	bnel	v1,v0,aa0 <func_80AF5F34+0xcc>
     a6c:	8d090024 	lw	t1,36(t0)
     a70:	8c8e0190 	lw	t6,400(a0)
     a74:	3c0d0000 	lui	t5,0x0
     a78:	25ad0000 	addiu	t5,t5,0
     a7c:	55ae0008 	bnel	t5,t6,aa0 <func_80AF5F34+0xcc>
     a80:	8d090024 	lw	t1,36(t0)
     a84:	8c980154 	lw	t8,340(a0)
     a88:	3c0f0600 	lui	t7,0x600
     a8c:	25ef1d50 	addiu	t7,t7,7504
     a90:	55f80003 	bnel	t7,t8,aa0 <func_80AF5F34+0xcc>
     a94:	8d090024 	lw	t1,36(t0)
     a98:	24070001 	li	a3,1
     a9c:	8d090024 	lw	t1,36(t0)
     aa0:	3c014080 	lui	at,0x4080
     aa4:	44812000 	mtc1	at,$f4
     aa8:	ac8901f8 	sw	t1,504(a0)
     aac:	8d190028 	lw	t9,40(t0)
     ab0:	248501e0 	addiu	a1,a0,480
     ab4:	24060002 	li	a2,2
     ab8:	ac9901fc 	sw	t9,508(a0)
     abc:	8d09002c 	lw	t1,44(t0)
     ac0:	e48401f4 	swc1	$f4,500(a0)
     ac4:	0c000000 	jal	0 <func_80AF5560>
     ac8:	ac890200 	sw	t1,512(a0)
     acc:	8fbf0014 	lw	ra,20(sp)
     ad0:	27bd0018 	addiu	sp,sp,24
     ad4:	03e00008 	jr	ra
     ad8:	00000000 	nop

00000adc <func_80AF603C>:
     adc:	8c820154 	lw	v0,340(a0)
     ae0:	3c0e0601 	lui	t6,0x601
     ae4:	25cebaec 	addiu	t6,t6,-17684
     ae8:	11c20006 	beq	t6,v0,b04 <func_80AF603C+0x28>
     aec:	3c0f0600 	lui	t7,0x600
     af0:	25ef1d50 	addiu	t7,t7,7504
     af4:	51e20004 	beql	t7,v0,b08 <func_80AF603C+0x2c>
     af8:	849801e0 	lh	t8,480(a0)
     afc:	03e00008 	jr	ra
     b00:	00001025 	move	v0,zero
     b04:	849801e0 	lh	t8,480(a0)
     b08:	53000004 	beqzl	t8,b1c <func_80AF603C+0x40>
     b0c:	84990212 	lh	t9,530(a0)
     b10:	03e00008 	jr	ra
     b14:	00001025 	move	v0,zero
     b18:	84990212 	lh	t9,530(a0)
     b1c:	24010002 	li	at,2
     b20:	a480020e 	sh	zero,526(a0)
     b24:	13210003 	beq	t9,at,b34 <func_80AF603C+0x58>
     b28:	24020001 	li	v0,1
     b2c:	03e00008 	jr	ra
     b30:	00001025 	move	v0,zero
     b34:	03e00008 	jr	ra
     b38:	00000000 	nop

00000b3c <func_80AF609C>:
     b3c:	27bdffe8 	addiu	sp,sp,-24
     b40:	afbf0014 	sw	ra,20(sp)
     b44:	0c000000 	jal	0 <func_80AF5560>
     b48:	afa40018 	sw	a0,24(sp)
     b4c:	1440001c 	bnez	v0,bc0 <func_80AF609C+0x84>
     b50:	8fa60018 	lw	a2,24(sp)
     b54:	84c2020e 	lh	v0,526(a2)
     b58:	14400003 	bnez	v0,b68 <func_80AF609C+0x2c>
     b5c:	244effff 	addiu	t6,v0,-1
     b60:	10000003 	b	b70 <func_80AF609C+0x34>
     b64:	00001825 	move	v1,zero
     b68:	a4ce020e 	sh	t6,526(a2)
     b6c:	84c3020e 	lh	v1,526(a2)
     b70:	54600014 	bnezl	v1,bc4 <func_80AF609C+0x88>
     b74:	8fbf0014 	lw	ra,20(sp)
     b78:	84cf0212 	lh	t7,530(a2)
     b7c:	2404001e 	li	a0,30
     b80:	2405001e 	li	a1,30
     b84:	25f80001 	addiu	t8,t7,1
     b88:	a4d80212 	sh	t8,530(a2)
     b8c:	84c20212 	lh	v0,530(a2)
     b90:	28410003 	slti	at,v0,3
     b94:	10200003 	beqz	at,ba4 <func_80AF609C+0x68>
     b98:	00000000 	nop
     b9c:	10000008 	b	bc0 <func_80AF609C+0x84>
     ba0:	a4c20214 	sh	v0,532(a2)
     ba4:	0c000000 	jal	0 <func_80AF5560>
     ba8:	afa60018 	sw	a2,24(sp)
     bac:	8fa60018 	lw	a2,24(sp)
     bb0:	a4c00214 	sh	zero,532(a2)
     bb4:	84d90214 	lh	t9,532(a2)
     bb8:	a4c2020e 	sh	v0,526(a2)
     bbc:	a4d90212 	sh	t9,530(a2)
     bc0:	8fbf0014 	lw	ra,20(sp)
     bc4:	27bd0018 	addiu	sp,sp,24
     bc8:	03e00008 	jr	ra
     bcc:	00000000 	nop

00000bd0 <func_80AF6130>:
     bd0:	8c8e000c 	lw	t6,12(a0)
     bd4:	448e2000 	mtc1	t6,$f4
     bd8:	00000000 	nop
     bdc:	468021a0 	cvt.s.w	$f6,$f4
     be0:	e4a60000 	swc1	$f6,0(a1)
     be4:	8c8f0010 	lw	t7,16(a0)
     be8:	448f4000 	mtc1	t7,$f8
     bec:	00000000 	nop
     bf0:	468042a0 	cvt.s.w	$f10,$f8
     bf4:	e4aa0004 	swc1	$f10,4(a1)
     bf8:	8c980014 	lw	t8,20(a0)
     bfc:	44988000 	mtc1	t8,$f16
     c00:	00000000 	nop
     c04:	468084a0 	cvt.s.w	$f18,$f16
     c08:	03e00008 	jr	ra
     c0c:	e4b20008 	swc1	$f18,8(a1)

00000c10 <func_80AF6170>:
     c10:	8c8e0018 	lw	t6,24(a0)
     c14:	448e2000 	mtc1	t6,$f4
     c18:	00000000 	nop
     c1c:	468021a0 	cvt.s.w	$f6,$f4
     c20:	e4a60000 	swc1	$f6,0(a1)
     c24:	8c8f001c 	lw	t7,28(a0)
     c28:	448f4000 	mtc1	t7,$f8
     c2c:	00000000 	nop
     c30:	468042a0 	cvt.s.w	$f10,$f8
     c34:	e4aa0004 	swc1	$f10,4(a1)
     c38:	8c980020 	lw	t8,32(a0)
     c3c:	44988000 	mtc1	t8,$f16
     c40:	00000000 	nop
     c44:	468084a0 	cvt.s.w	$f18,$f16
     c48:	03e00008 	jr	ra
     c4c:	e4b20008 	swc1	$f18,8(a1)

00000c50 <EnSa_Init>:
     c50:	27bdffb0 	addiu	sp,sp,-80
     c54:	afb00034 	sw	s0,52(sp)
     c58:	00808025 	move	s0,a0
     c5c:	afb10038 	sw	s1,56(sp)
     c60:	00a08825 	move	s1,a1
     c64:	afbf003c 	sw	ra,60(sp)
     c68:	248400b4 	addiu	a0,a0,180
     c6c:	3c060000 	lui	a2,0x0
     c70:	24c60000 	addiu	a2,a2,0
     c74:	afa40044 	sw	a0,68(sp)
     c78:	24050000 	li	a1,0
     c7c:	0c000000 	jal	0 <func_80AF5560>
     c80:	3c074140 	lui	a3,0x4140
     c84:	3c060601 	lui	a2,0x601
     c88:	260e0220 	addiu	t6,s0,544
     c8c:	260f0286 	addiu	t7,s0,646
     c90:	24180011 	li	t8,17
     c94:	afb80018 	sw	t8,24(sp)
     c98:	afaf0014 	sw	t7,20(sp)
     c9c:	afae0010 	sw	t6,16(sp)
     ca0:	24c6b1a0 	addiu	a2,a2,-20064
     ca4:	02202025 	move	a0,s1
     ca8:	2605014c 	addiu	a1,s0,332
     cac:	0c000000 	jal	0 <func_80AF5560>
     cb0:	00003825 	move	a3,zero
     cb4:	26050194 	addiu	a1,s0,404
     cb8:	afa50040 	sw	a1,64(sp)
     cbc:	0c000000 	jal	0 <func_80AF5560>
     cc0:	02202025 	move	a0,s1
     cc4:	3c070000 	lui	a3,0x0
     cc8:	8fa50040 	lw	a1,64(sp)
     ccc:	24e70000 	addiu	a3,a3,0
     cd0:	02202025 	move	a0,s1
     cd4:	0c000000 	jal	0 <func_80AF5560>
     cd8:	02003025 	move	a2,s0
     cdc:	3c060000 	lui	a2,0x0
     ce0:	24c60000 	addiu	a2,a2,0
     ce4:	26040098 	addiu	a0,s0,152
     ce8:	0c000000 	jal	0 <func_80AF5560>
     cec:	00002825 	move	a1,zero
     cf0:	02002025 	move	a0,s0
     cf4:	0c000000 	jal	0 <func_80AF5560>
     cf8:	02202825 	move	a1,s1
     cfc:	2c410006 	sltiu	at,v0,6
     d00:	1020004a 	beqz	at,e2c <L80AF637C+0x10>
     d04:	0002c880 	sll	t9,v0,0x2
     d08:	3c010000 	lui	at,0x0
     d0c:	00390821 	addu	at,at,t9
     d10:	8c390000 	lw	t9,0(at)
     d14:	03200008 	jr	t9
     d18:	00000000 	nop

00000d1c <L80AF627C>:
     d1c:	02002025 	move	a0,s0
     d20:	0c000000 	jal	0 <func_80AF5560>
     d24:	2405000b 	li	a1,11
     d28:	3c080000 	lui	t0,0x0
     d2c:	25080000 	addiu	t0,t0,0
     d30:	1000003e 	b	e2c <L80AF637C+0x10>
     d34:	ae080190 	sw	t0,400(s0)

00000d38 <L80AF6298>:
     d38:	02002025 	move	a0,s0
     d3c:	0c000000 	jal	0 <func_80AF5560>
     d40:	2405000b 	li	a1,11
     d44:	3c090000 	lui	t1,0x0
     d48:	25290000 	addiu	t1,t1,0
     d4c:	10000037 	b	e2c <L80AF637C+0x10>
     d50:	ae090190 	sw	t1,400(s0)

00000d54 <L80AF62B4>:
     d54:	3c01bf80 	lui	at,0xbf80
     d58:	44812000 	mtc1	at,$f4
     d5c:	02002025 	move	a0,s0
     d60:	00002825 	move	a1,zero
     d64:	0c000000 	jal	0 <func_80AF5560>
     d68:	e604006c 	swc1	$f4,108(s0)
     d6c:	3c0a0000 	lui	t2,0x0
     d70:	254a0000 	addiu	t2,t2,0
     d74:	1000002d 	b	e2c <L80AF637C+0x10>
     d78:	ae0a0190 	sw	t2,400(s0)

00000d7c <L80AF62DC>:
     d7c:	3c020201 	lui	v0,0x201
     d80:	3c01bf80 	lui	at,0xbf80
     d84:	24420e20 	addiu	v0,v0,3616
     d88:	44813000 	mtc1	at,$f6
     d8c:	00025900 	sll	t3,v0,0x4
     d90:	000b6702 	srl	t4,t3,0x1c
     d94:	000c6880 	sll	t5,t4,0x2
     d98:	3c0e0000 	lui	t6,0x0
     d9c:	a6000210 	sh	zero,528(s0)
     da0:	01cd7021 	addu	t6,t6,t5
     da4:	3c0100ff 	lui	at,0xff
     da8:	e606006c 	swc1	$f6,108(s0)
     dac:	8dce0000 	lw	t6,0(t6)
     db0:	3421ffff 	ori	at,at,0xffff
     db4:	00417824 	and	t7,v0,at
     db8:	3c018000 	lui	at,0x8000
     dbc:	01cfc021 	addu	t8,t6,t7
     dc0:	0301c821 	addu	t9,t8,at
     dc4:	ae391d68 	sw	t9,7528(s1)
     dc8:	3c010000 	lui	at,0x0
     dcc:	24080001 	li	t0,1
     dd0:	a0281414 	sb	t0,5140(at)
     dd4:	02002025 	move	a0,s0
     dd8:	0c000000 	jal	0 <func_80AF5560>
     ddc:	24050004 	li	a1,4
     de0:	3c090000 	lui	t1,0x0
     de4:	25290000 	addiu	t1,t1,0
     de8:	10000010 	b	e2c <L80AF637C+0x10>
     dec:	ae090190 	sw	t1,400(s0)

00000df0 <L80AF6350>:
     df0:	3c01bf80 	lui	at,0xbf80
     df4:	44814000 	mtc1	at,$f8
     df8:	a6000210 	sh	zero,528(s0)
     dfc:	02002025 	move	a0,s0
     e00:	00002825 	move	a1,zero
     e04:	0c000000 	jal	0 <func_80AF5560>
     e08:	e608006c 	swc1	$f8,108(s0)
     e0c:	3c0a0000 	lui	t2,0x0
     e10:	254a0000 	addiu	t2,t2,0
     e14:	10000005 	b	e2c <L80AF637C+0x10>
     e18:	ae0a0190 	sw	t2,400(s0)

00000e1c <L80AF637C>:
     e1c:	0c000000 	jal	0 <func_80AF5560>
     e20:	02002025 	move	a0,s0
     e24:	10000022 	b	eb0 <L80AF637C+0x94>
     e28:	8fbf003c 	lw	ra,60(sp)
     e2c:	3c053c23 	lui	a1,0x3c23
     e30:	34a5d70a 	ori	a1,a1,0xd70a
     e34:	0c000000 	jal	0 <func_80AF5560>
     e38:	02002025 	move	a0,s0
     e3c:	240b0006 	li	t3,6
     e40:	240c00ff 	li	t4,255
     e44:	a20b001f 	sb	t3,31(s0)
     e48:	a60001e0 	sh	zero,480(s0)
     e4c:	a60c0218 	sh	t4,536(s0)
     e50:	8fad0044 	lw	t5,68(sp)
     e54:	c60a0024 	lwc1	$f10,36(s0)
     e58:	24180003 	li	t8,3
     e5c:	89af0000 	lwl	t7,0(t5)
     e60:	99af0003 	lwr	t7,3(t5)
     e64:	26241c24 	addiu	a0,s1,7204
     e68:	02002825 	move	a1,s0
     e6c:	aa0f021a 	swl	t7,538(s0)
     e70:	ba0f021d 	swr	t7,541(s0)
     e74:	95af0004 	lhu	t7,4(t5)
     e78:	02203025 	move	a2,s1
     e7c:	24070018 	li	a3,24
     e80:	a60f021e 	sh	t7,542(s0)
     e84:	e7aa0010 	swc1	$f10,16(sp)
     e88:	c6100028 	lwc1	$f16,40(s0)
     e8c:	e7b00014 	swc1	$f16,20(sp)
     e90:	c612002c 	lwc1	$f18,44(s0)
     e94:	afb80028 	sw	t8,40(sp)
     e98:	afa00024 	sw	zero,36(sp)
     e9c:	afa00020 	sw	zero,32(sp)
     ea0:	afa0001c 	sw	zero,28(sp)
     ea4:	0c000000 	jal	0 <func_80AF5560>
     ea8:	e7b20018 	swc1	$f18,24(sp)
     eac:	8fbf003c 	lw	ra,60(sp)
     eb0:	8fb00034 	lw	s0,52(sp)
     eb4:	8fb10038 	lw	s1,56(sp)
     eb8:	03e00008 	jr	ra
     ebc:	27bd0050 	addiu	sp,sp,80

00000ec0 <EnSa_Destroy>:
     ec0:	27bdffe8 	addiu	sp,sp,-24
     ec4:	00803025 	move	a2,a0
     ec8:	afbf0014 	sw	ra,20(sp)
     ecc:	00a02025 	move	a0,a1
     ed0:	0c000000 	jal	0 <func_80AF5560>
     ed4:	24c50194 	addiu	a1,a2,404
     ed8:	8fbf0014 	lw	ra,20(sp)
     edc:	27bd0018 	addiu	sp,sp,24
     ee0:	03e00008 	jr	ra
     ee4:	00000000 	nop

00000ee8 <func_80AF6448>:
     ee8:	27bdffd0 	addiu	sp,sp,-48
     eec:	afbf002c 	sw	ra,44(sp)
     ef0:	afb00028 	sw	s0,40(sp)
     ef4:	afa50034 	sw	a1,52(sp)
     ef8:	84af00a4 	lh	t7,164(a1)
     efc:	24010055 	li	at,85
     f00:	00808025 	move	s0,a0
     f04:	55e100ad 	bnel	t7,at,11bc <func_80AF6448+0x2d4>
     f08:	8e0e0154 	lw	t6,340(s0)
     f0c:	849801e0 	lh	t8,480(a0)
     f10:	3c030000 	lui	v1,0x0
     f14:	24630000 	addiu	v1,v1,0
     f18:	1300008e 	beqz	t8,1154 <func_80AF6448+0x26c>
     f1c:	3c190000 	lui	t9,0x0
     f20:	9482010e 	lhu	v0,270(a0)
     f24:	24011002 	li	at,4098
     f28:	1041000d 	beq	v0,at,f60 <func_80AF6448+0x78>
     f2c:	24011003 	li	at,4099
     f30:	10410029 	beq	v0,at,fd8 <func_80AF6448+0xf0>
     f34:	24011031 	li	at,4145
     f38:	10410033 	beq	v0,at,1008 <func_80AF6448+0x120>
     f3c:	24011032 	li	at,4146
     f40:	1041005b 	beq	v0,at,10b0 <func_80AF6448+0x1c8>
     f44:	24011047 	li	at,4167
     f48:	10410069 	beq	v0,at,10f0 <func_80AF6448+0x208>
     f4c:	24011048 	li	at,4168
     f50:	50410075 	beql	v0,at,1128 <func_80AF6448+0x240>
     f54:	920f0208 	lbu	t7,520(s0)
     f58:	10000095 	b	11b0 <func_80AF6448+0x2c8>
     f5c:	00000000 	nop
     f60:	92020208 	lbu	v0,520(s0)
     f64:	5440000c 	bnezl	v0,f98 <func_80AF6448+0xb0>
     f68:	24030002 	li	v1,2
     f6c:	9219020b 	lbu	t9,523(s0)
     f70:	24010001 	li	at,1
     f74:	02002025 	move	a0,s0
     f78:	53210007 	beql	t9,at,f98 <func_80AF6448+0xb0>
     f7c:	24030002 	li	v1,2
     f80:	0c000000 	jal	0 <func_80AF5560>
     f84:	24050001 	li	a1,1
     f88:	24080001 	li	t0,1
     f8c:	a6080216 	sh	t0,534(s0)
     f90:	92020208 	lbu	v0,520(s0)
     f94:	24030002 	li	v1,2
     f98:	5462000b 	bnel	v1,v0,fc8 <func_80AF6448+0xe0>
     f9c:	24010005 	li	at,5
     fa0:	9209020b 	lbu	t1,523(s0)
     fa4:	02002025 	move	a0,s0
     fa8:	50690007 	beql	v1,t1,fc8 <func_80AF6448+0xe0>
     fac:	24010005 	li	at,5
     fb0:	0c000000 	jal	0 <func_80AF5560>
     fb4:	24050002 	li	a1,2
     fb8:	240a0001 	li	t2,1
     fbc:	a60a0216 	sh	t2,534(s0)
     fc0:	92020208 	lbu	v0,520(s0)
     fc4:	24010005 	li	at,5
     fc8:	14410079 	bne	v0,at,11b0 <func_80AF6448+0x2c8>
     fcc:	00000000 	nop
     fd0:	10000077 	b	11b0 <func_80AF6448+0x2c8>
     fd4:	a6000216 	sh	zero,534(s0)
     fd8:	920b0208 	lbu	t3,520(s0)
     fdc:	15600074 	bnez	t3,11b0 <func_80AF6448+0x2c8>
     fe0:	00000000 	nop
     fe4:	920c020b 	lbu	t4,523(s0)
     fe8:	24010004 	li	at,4
     fec:	02002025 	move	a0,s0
     ff0:	1181006f 	beq	t4,at,11b0 <func_80AF6448+0x2c8>
     ff4:	00000000 	nop
     ff8:	0c000000 	jal	0 <func_80AF5560>
     ffc:	24050004 	li	a1,4
    1000:	1000006b 	b	11b0 <func_80AF6448+0x2c8>
    1004:	00000000 	nop
    1008:	92020208 	lbu	v0,520(s0)
    100c:	54400010 	bnezl	v0,1050 <func_80AF6448+0x168>
    1010:	24030002 	li	v1,2
    1014:	920d020b 	lbu	t5,523(s0)
    1018:	24010004 	li	at,4
    101c:	51a1000c 	beql	t5,at,1050 <func_80AF6448+0x168>
    1020:	24030002 	li	v1,2
    1024:	8e0f0154 	lw	t7,340(s0)
    1028:	3c0e0601 	lui	t6,0x601
    102c:	25ce2100 	addiu	t6,t6,8448
    1030:	15cf0006 	bne	t6,t7,104c <func_80AF6448+0x164>
    1034:	02002025 	move	a0,s0
    1038:	0c000000 	jal	0 <func_80AF5560>
    103c:	24050004 	li	a1,4
    1040:	24180003 	li	t8,3
    1044:	a6180216 	sh	t8,534(s0)
    1048:	92020208 	lbu	v0,520(s0)
    104c:	24030002 	li	v1,2
    1050:	5462000c 	bnel	v1,v0,1084 <func_80AF6448+0x19c>
    1054:	24010004 	li	at,4
    1058:	9219020b 	lbu	t9,523(s0)
    105c:	24010005 	li	at,5
    1060:	02002025 	move	a0,s0
    1064:	53210007 	beql	t9,at,1084 <func_80AF6448+0x19c>
    1068:	24010004 	li	at,4
    106c:	0c000000 	jal	0 <func_80AF5560>
    1070:	24050005 	li	a1,5
    1074:	24030002 	li	v1,2
    1078:	a6030216 	sh	v1,534(s0)
    107c:	92020208 	lbu	v0,520(s0)
    1080:	24010004 	li	at,4
    1084:	1441004a 	bne	v0,at,11b0 <func_80AF6448+0x2c8>
    1088:	00000000 	nop
    108c:	9208020b 	lbu	t0,523(s0)
    1090:	24010006 	li	at,6
    1094:	02002025 	move	a0,s0
    1098:	11010045 	beq	t0,at,11b0 <func_80AF6448+0x2c8>
    109c:	00000000 	nop
    10a0:	0c000000 	jal	0 <func_80AF5560>
    10a4:	24050006 	li	a1,6
    10a8:	10000041 	b	11b0 <func_80AF6448+0x2c8>
    10ac:	a6000216 	sh	zero,534(s0)
    10b0:	92090208 	lbu	t1,520(s0)
    10b4:	1520003e 	bnez	t1,11b0 <func_80AF6448+0x2c8>
    10b8:	00000000 	nop
    10bc:	920a020b 	lbu	t2,523(s0)
    10c0:	24010004 	li	at,4
    10c4:	1141003a 	beq	t2,at,11b0 <func_80AF6448+0x2c8>
    10c8:	00000000 	nop
    10cc:	8e0c0154 	lw	t4,340(s0)
    10d0:	3c0b0601 	lui	t3,0x601
    10d4:	256b2100 	addiu	t3,t3,8448
    10d8:	156c0035 	bne	t3,t4,11b0 <func_80AF6448+0x2c8>
    10dc:	02002025 	move	a0,s0
    10e0:	0c000000 	jal	0 <func_80AF5560>
    10e4:	24050004 	li	a1,4
    10e8:	10000031 	b	11b0 <func_80AF6448+0x2c8>
    10ec:	00000000 	nop
    10f0:	920d0208 	lbu	t5,520(s0)
    10f4:	24010001 	li	at,1
    10f8:	15a1002d 	bne	t5,at,11b0 <func_80AF6448+0x2c8>
    10fc:	00000000 	nop
    1100:	920e020b 	lbu	t6,523(s0)
    1104:	24010007 	li	at,7
    1108:	02002025 	move	a0,s0
    110c:	11c10028 	beq	t6,at,11b0 <func_80AF6448+0x2c8>
    1110:	00000000 	nop
    1114:	0c000000 	jal	0 <func_80AF5560>
    1118:	24050007 	li	a1,7
    111c:	10000024 	b	11b0 <func_80AF6448+0x2c8>
    1120:	00000000 	nop
    1124:	920f0208 	lbu	t7,520(s0)
    1128:	15e00021 	bnez	t7,11b0 <func_80AF6448+0x2c8>
    112c:	00000000 	nop
    1130:	9218020b 	lbu	t8,523(s0)
    1134:	24010007 	li	at,7
    1138:	02002025 	move	a0,s0
    113c:	1301001c 	beq	t8,at,11b0 <func_80AF6448+0x2c8>
    1140:	00000000 	nop
    1144:	0c000000 	jal	0 <func_80AF5560>
    1148:	24050007 	li	a1,7
    114c:	10000018 	b	11b0 <func_80AF6448+0x2c8>
    1150:	00000000 	nop
    1154:	8f390048 	lw	t9,72(t9)
    1158:	8c6800a4 	lw	t0,164(v1)
    115c:	02002025 	move	a0,s0
    1160:	03284824 	and	t1,t9,t0
    1164:	15200010 	bnez	t1,11a8 <func_80AF6448+0x2c0>
    1168:	00000000 	nop
    116c:	94620ef8 	lhu	v0,3832(v1)
    1170:	304a0002 	andi	t2,v0,0x2
    1174:	15400003 	bnez	t2,1184 <func_80AF6448+0x29c>
    1178:	304b0008 	andi	t3,v0,0x8
    117c:	1160000a 	beqz	t3,11a8 <func_80AF6448+0x2c0>
    1180:	00000000 	nop
    1184:	920c020b 	lbu	t4,523(s0)
    1188:	24010003 	li	at,3
    118c:	02002025 	move	a0,s0
    1190:	11810007 	beq	t4,at,11b0 <func_80AF6448+0x2c8>
    1194:	00000000 	nop
    1198:	0c000000 	jal	0 <func_80AF5560>
    119c:	24050003 	li	a1,3
    11a0:	10000003 	b	11b0 <func_80AF6448+0x2c8>
    11a4:	00000000 	nop
    11a8:	0c000000 	jal	0 <func_80AF5560>
    11ac:	00002825 	move	a1,zero
    11b0:	0c000000 	jal	0 <func_80AF5560>
    11b4:	02002025 	move	a0,s0
    11b8:	8e0e0154 	lw	t6,340(s0)
    11bc:	3c0d0601 	lui	t5,0x601
    11c0:	25adc500 	addiu	t5,t5,-15104
    11c4:	55ae000e 	bnel	t5,t6,1200 <func_80AF6448+0x318>
    11c8:	861901e0 	lh	t9,480(s0)
    11cc:	c6060164 	lwc1	$f6,356(s0)
    11d0:	3c01bf80 	lui	at,0xbf80
    11d4:	44812000 	mtc1	at,$f4
    11d8:	4600320d 	trunc.w.s	$f8,$f6
    11dc:	02002025 	move	a0,s0
    11e0:	e6040168 	swc1	$f4,360(s0)
    11e4:	44184000 	mfc1	t8,$f8
    11e8:	00000000 	nop
    11ec:	57000004 	bnezl	t8,1200 <func_80AF6448+0x318>
    11f0:	861901e0 	lh	t9,480(s0)
    11f4:	0c000000 	jal	0 <func_80AF5560>
    11f8:	24050006 	li	a1,6
    11fc:	861901e0 	lh	t9,480(s0)
    1200:	8fa80034 	lw	t0,52(sp)
    1204:	53200016 	beqzl	t9,1260 <func_80AF6448+0x378>
    1208:	8fbf002c 	lw	ra,44(sp)
    120c:	850900a4 	lh	t1,164(t0)
    1210:	24010056 	li	at,86
    1214:	2604014c 	addiu	a0,s0,332
    1218:	15210010 	bne	t1,at,125c <func_80AF6448+0x374>
    121c:	3c050601 	lui	a1,0x601
    1220:	3c014120 	lui	at,0x4120
    1224:	44815000 	mtc1	at,$f10
    1228:	3c01c120 	lui	at,0xc120
    122c:	44818000 	mtc1	at,$f16
    1230:	240a0002 	li	t2,2
    1234:	afaa0014 	sw	t2,20(sp)
    1238:	24a5c500 	addiu	a1,a1,-15104
    123c:	3c063f80 	lui	a2,0x3f80
    1240:	24070000 	li	a3,0
    1244:	e7aa0010 	swc1	$f10,16(sp)
    1248:	0c000000 	jal	0 <func_80AF5560>
    124c:	e7b00018 	swc1	$f16,24(sp)
    1250:	3c0b0000 	lui	t3,0x0
    1254:	256b0000 	addiu	t3,t3,0
    1258:	ae0b0190 	sw	t3,400(s0)
    125c:	8fbf002c 	lw	ra,44(sp)
    1260:	8fb00028 	lw	s0,40(sp)
    1264:	27bd0030 	addiu	sp,sp,48
    1268:	03e00008 	jr	ra
    126c:	00000000 	nop

00001270 <func_80AF67D0>:
    1270:	27bdffd8 	addiu	sp,sp,-40
    1274:	afbf0024 	sw	ra,36(sp)
    1278:	afa40028 	sw	a0,40(sp)
    127c:	afa5002c 	sw	a1,44(sp)
    1280:	848f01e0 	lh	t7,480(a0)
    1284:	3c050601 	lui	a1,0x601
    1288:	24a5c500 	addiu	a1,a1,-15104
    128c:	15e0000f 	bnez	t7,12cc <func_80AF67D0+0x5c>
    1290:	2484014c 	addiu	a0,a0,332
    1294:	44800000 	mtc1	zero,$f0
    1298:	3c01c120 	lui	at,0xc120
    129c:	44812000 	mtc1	at,$f4
    12a0:	24180002 	li	t8,2
    12a4:	44060000 	mfc1	a2,$f0
    12a8:	afb80014 	sw	t8,20(sp)
    12ac:	3c074120 	lui	a3,0x4120
    12b0:	e7a00010 	swc1	$f0,16(sp)
    12b4:	0c000000 	jal	0 <func_80AF5560>
    12b8:	e7a40018 	swc1	$f4,24(sp)
    12bc:	8fa80028 	lw	t0,40(sp)
    12c0:	3c190000 	lui	t9,0x0
    12c4:	27390000 	addiu	t9,t9,0
    12c8:	ad190190 	sw	t9,400(t0)
    12cc:	8fbf0024 	lw	ra,36(sp)
    12d0:	27bd0028 	addiu	sp,sp,40
    12d4:	03e00008 	jr	ra
    12d8:	00000000 	nop

000012dc <func_80AF683C>:
    12dc:	27bdffe8 	addiu	sp,sp,-24
    12e0:	afbf0014 	sw	ra,20(sp)
    12e4:	afa40018 	sw	a0,24(sp)
    12e8:	8ca21c44 	lw	v0,7236(a1)
    12ec:	3c010000 	lui	at,0x0
    12f0:	c4260000 	lwc1	$f6,0(at)
    12f4:	c444002c 	lwc1	$f4,44(v0)
    12f8:	00a02025 	move	a0,a1
    12fc:	4604303e 	c.le.s	$f6,$f4
    1300:	00000000 	nop
    1304:	4503001c 	bc1tl	1378 <func_80AF683C+0x9c>
    1308:	8fbf0014 	lw	ra,20(sp)
    130c:	0c000000 	jal	0 <func_80AF5560>
    1310:	afa5001c 	sw	a1,28(sp)
    1314:	14400017 	bnez	v0,1374 <func_80AF683C+0x98>
    1318:	8fa5001c 	lw	a1,28(sp)
    131c:	3c020200 	lui	v0,0x200
    1320:	24425730 	addiu	v0,v0,22320
    1324:	00027100 	sll	t6,v0,0x4
    1328:	000e7f02 	srl	t7,t6,0x1c
    132c:	000fc080 	sll	t8,t7,0x2
    1330:	3c190000 	lui	t9,0x0
    1334:	0338c821 	addu	t9,t9,t8
    1338:	3c0100ff 	lui	at,0xff
    133c:	8f390000 	lw	t9,0(t9)
    1340:	3421ffff 	ori	at,at,0xffff
    1344:	00414024 	and	t0,v0,at
    1348:	3c018000 	lui	at,0x8000
    134c:	03284821 	addu	t1,t9,t0
    1350:	01215021 	addu	t2,t1,at
    1354:	acaa1d68 	sw	t2,7528(a1)
    1358:	8fad0018 	lw	t5,24(sp)
    135c:	3c010000 	lui	at,0x0
    1360:	240b0001 	li	t3,1
    1364:	3c0c0000 	lui	t4,0x0
    1368:	a02b1414 	sb	t3,5140(at)
    136c:	258c0000 	addiu	t4,t4,0
    1370:	adac0190 	sw	t4,400(t5)
    1374:	8fbf0014 	lw	ra,20(sp)
    1378:	27bd0018 	addiu	sp,sp,24
    137c:	03e00008 	jr	ra
    1380:	00000000 	nop

00001384 <func_80AF68E4>:
    1384:	27bdff98 	addiu	sp,sp,-104
    1388:	3c0f0000 	lui	t7,0x0
    138c:	afbf0024 	sw	ra,36(sp)
    1390:	afb10020 	sw	s1,32(sp)
    1394:	afb0001c 	sw	s0,28(sp)
    1398:	25ef0000 	addiu	t7,t7,0
    139c:	8df90000 	lw	t9,0(t7)
    13a0:	27ae0040 	addiu	t6,sp,64
    13a4:	8df80004 	lw	t8,4(t7)
    13a8:	add90000 	sw	t9,0(t6)
    13ac:	8df90008 	lw	t9,8(t7)
    13b0:	add80004 	sw	t8,4(t6)
    13b4:	3c090000 	lui	t1,0x0
    13b8:	add90008 	sw	t9,8(t6)
    13bc:	90a81d6c 	lbu	t0,7532(a1)
    13c0:	00808025 	move	s0,a0
    13c4:	00a03025 	move	a2,a1
    13c8:	15000003 	bnez	t0,13d8 <func_80AF68E4+0x54>
    13cc:	25290000 	addiu	t1,t1,0
    13d0:	10000076 	b	15ac <func_80AF68E4+0x228>
    13d4:	ac890190 	sw	t1,400(a0)
    13d8:	8cd11d90 	lw	s1,7568(a2)
    13dc:	27a50058 	addiu	a1,sp,88
    13e0:	12200072 	beqz	s1,15ac <func_80AF68E4+0x228>
    13e4:	02202025 	move	a0,s1
    13e8:	0c000000 	jal	0 <func_80AF5560>
    13ec:	afa6006c 	sw	a2,108(sp)
    13f0:	02202025 	move	a0,s1
    13f4:	0c000000 	jal	0 <func_80AF5560>
    13f8:	27a5004c 	addiu	a1,sp,76
    13fc:	86020210 	lh	v0,528(s0)
    1400:	27aa0058 	addiu	t2,sp,88
    1404:	24010002 	li	at,2
    1408:	14400008 	bnez	v0,142c <func_80AF68E4+0xa8>
    140c:	02002025 	move	a0,s0
    1410:	8d4c0000 	lw	t4,0(t2)
    1414:	86020210 	lh	v0,528(s0)
    1418:	ae0c0024 	sw	t4,36(s0)
    141c:	8d4b0004 	lw	t3,4(t2)
    1420:	ae0b0028 	sw	t3,40(s0)
    1424:	8d4c0008 	lw	t4,8(t2)
    1428:	ae0c002c 	sw	t4,44(s0)
    142c:	96230000 	lhu	v1,0(s1)
    1430:	50620011 	beql	v1,v0,1478 <func_80AF68E4+0xf4>
    1434:	24010003 	li	at,3
    1438:	10610006 	beq	v1,at,1454 <func_80AF68E4+0xd0>
    143c:	240d0001 	li	t5,1
    1440:	24010009 	li	at,9
    1444:	10610005 	beq	v1,at,145c <func_80AF68E4+0xd8>
    1448:	240e0001 	li	t6,1
    144c:	10000004 	b	1460 <func_80AF68E4+0xdc>
    1450:	a6000216 	sh	zero,534(s0)
    1454:	10000002 	b	1460 <func_80AF68E4+0xdc>
    1458:	a60d0216 	sh	t5,534(s0)
    145c:	a60e0216 	sh	t6,534(s0)
    1460:	0c000000 	jal	0 <func_80AF5560>
    1464:	96250000 	lhu	a1,0(s1)
    1468:	962f0000 	lhu	t7,0(s1)
    146c:	a60f0210 	sh	t7,528(s0)
    1470:	96230000 	lhu	v1,0(s1)
    1474:	24010003 	li	at,3
    1478:	54610016 	bnel	v1,at,14d4 <func_80AF68E4+0x150>
    147c:	96290006 	lhu	t1,6(s1)
    1480:	8603020c 	lh	v1,524(s0)
    1484:	3c070000 	lui	a3,0x0
    1488:	24e70000 	addiu	a3,a3,0
    148c:	14600003 	bnez	v1,149c <func_80AF68E4+0x118>
    1490:	2478ffff 	addiu	t8,v1,-1
    1494:	10000003 	b	14a4 <func_80AF68E4+0x120>
    1498:	00001025 	move	v0,zero
    149c:	a618020c 	sh	t8,524(s0)
    14a0:	8602020c 	lh	v0,524(s0)
    14a4:	1440000a 	bnez	v0,14d0 <func_80AF68E4+0x14c>
    14a8:	24040800 	li	a0,2048
    14ac:	3c190000 	lui	t9,0x0
    14b0:	27390000 	addiu	t9,t9,0
    14b4:	afb90014 	sw	t9,20(sp)
    14b8:	260500e4 	addiu	a1,s0,228
    14bc:	24060004 	li	a2,4
    14c0:	0c000000 	jal	0 <func_80AF5560>
    14c4:	afa70010 	sw	a3,16(sp)
    14c8:	24080008 	li	t0,8
    14cc:	a608020c 	sh	t0,524(s0)
    14d0:	96290006 	lhu	t1,6(s1)
    14d4:	8fa3006c 	lw	v1,108(sp)
    14d8:	27ac0040 	addiu	t4,sp,64
    14dc:	a60900b4 	sh	t1,180(s0)
    14e0:	962a0008 	lhu	t2,8(s1)
    14e4:	a60a00b6 	sh	t2,182(s0)
    14e8:	962b000a 	lhu	t3,10(s1)
    14ec:	a60b00b8 	sh	t3,184(s0)
    14f0:	8d8e0000 	lw	t6,0(t4)
    14f4:	ae0e005c 	sw	t6,92(s0)
    14f8:	8d8d0004 	lw	t5,4(t4)
    14fc:	ae0d0060 	sw	t5,96(s0)
    1500:	8d8e0008 	lw	t6,8(t4)
    1504:	ae0e0064 	sw	t6,100(s0)
    1508:	96220004 	lhu	v0,4(s1)
    150c:	946f1d74 	lhu	t7,7540(v1)
    1510:	01e2082a 	slt	at,t7,v0
    1514:	50200026 	beqzl	at,15b0 <func_80AF68E4+0x22c>
    1518:	8fbf0024 	lw	ra,36(sp)
    151c:	96380002 	lhu	t8,2(s1)
    1520:	c7a6004c 	lwc1	$f6,76(sp)
    1524:	c7a80058 	lwc1	$f8,88(sp)
    1528:	0058c823 	subu	t9,v0,t8
    152c:	44992000 	mtc1	t9,$f4
    1530:	46083281 	sub.s	$f10,$f6,$f8
    1534:	24010056 	li	at,86
    1538:	c602006c 	lwc1	$f2,108(s0)
    153c:	46802020 	cvt.s.w	$f0,$f4
    1540:	46005403 	div.s	$f16,$f10,$f0
    1544:	e610005c 	swc1	$f16,92(s0)
    1548:	c7a4005c 	lwc1	$f4,92(sp)
    154c:	c7b20050 	lwc1	$f18,80(sp)
    1550:	46049181 	sub.s	$f6,$f18,$f4
    1554:	46003203 	div.s	$f8,$f6,$f0
    1558:	e6080060 	swc1	$f8,96(s0)
    155c:	846800a4 	lh	t0,164(v1)
    1560:	55010004 	bnel	t0,at,1574 <func_80AF68E4+0x1f0>
    1564:	c60a0060 	lwc1	$f10,96(s0)
    1568:	44801000 	mtc1	zero,$f2
    156c:	00000000 	nop
    1570:	c60a0060 	lwc1	$f10,96(s0)
    1574:	c60c0070 	lwc1	$f12,112(s0)
    1578:	46025400 	add.s	$f16,$f10,$f2
    157c:	e6100060 	swc1	$f16,96(s0)
    1580:	c6120060 	lwc1	$f18,96(s0)
    1584:	460c903c 	c.lt.s	$f18,$f12
    1588:	00000000 	nop
    158c:	45020003 	bc1fl	159c <func_80AF68E4+0x218>
    1590:	c7a40054 	lwc1	$f4,84(sp)
    1594:	e60c0060 	swc1	$f12,96(s0)
    1598:	c7a40054 	lwc1	$f4,84(sp)
    159c:	c7a60060 	lwc1	$f6,96(sp)
    15a0:	46062201 	sub.s	$f8,$f4,$f6
    15a4:	46004283 	div.s	$f10,$f8,$f0
    15a8:	e60a0064 	swc1	$f10,100(s0)
    15ac:	8fbf0024 	lw	ra,36(sp)
    15b0:	8fb0001c 	lw	s0,28(sp)
    15b4:	8fb10020 	lw	s1,32(sp)
    15b8:	03e00008 	jr	ra
    15bc:	27bd0068 	addiu	sp,sp,104

000015c0 <func_80AF6B20>:
    15c0:	27bdffe0 	addiu	sp,sp,-32
    15c4:	afbf001c 	sw	ra,28(sp)
    15c8:	afb00018 	sw	s0,24(sp)
    15cc:	84a200a4 	lh	v0,164(a1)
    15d0:	24010056 	li	at,86
    15d4:	00808025 	move	s0,a0
    15d8:	1441000a 	bne	v0,at,1604 <func_80AF6B20+0x44>
    15dc:	00a03025 	move	a2,a1
    15e0:	00a02025 	move	a0,a1
    15e4:	24050062 	li	a1,98
    15e8:	0c000000 	jal	0 <func_80AF5560>
    15ec:	afa60024 	sw	a2,36(sp)
    15f0:	02002025 	move	a0,s0
    15f4:	0c000000 	jal	0 <func_80AF5560>
    15f8:	24050006 	li	a1,6
    15fc:	8fae0024 	lw	t6,36(sp)
    1600:	85c200a4 	lh	v0,164(t6)
    1604:	24010055 	li	at,85
    1608:	14410015 	bne	v0,at,1660 <func_80AF6B20+0xa0>
    160c:	02002025 	move	a0,s0
    1610:	0c000000 	jal	0 <func_80AF5560>
    1614:	24050004 	li	a1,4
    1618:	8a08021a 	lwl	t0,538(s0)
    161c:	9a08021d 	lwr	t0,541(s0)
    1620:	8e180008 	lw	t8,8(s0)
    1624:	8e0f000c 	lw	t7,12(s0)
    1628:	aa080030 	swl	t0,48(s0)
    162c:	ba080033 	swr	t0,51(s0)
    1630:	ae180024 	sw	t8,36(s0)
    1634:	8e180010 	lw	t8,16(s0)
    1638:	9608021e 	lhu	t0,542(s0)
    163c:	3c020000 	lui	v0,0x0
    1640:	24420000 	addiu	v0,v0,0
    1644:	a6000216 	sh	zero,534(s0)
    1648:	ae0f0028 	sw	t7,40(s0)
    164c:	ae18002c 	sw	t8,44(s0)
    1650:	a6080034 	sh	t0,52(s0)
    1654:	94490ef8 	lhu	t1,3832(v0)
    1658:	352a0001 	ori	t2,t1,0x1
    165c:	a44a0ef8 	sh	t2,3832(v0)
    1660:	3c0b0000 	lui	t3,0x0
    1664:	256b0000 	addiu	t3,t3,0
    1668:	ae0b0190 	sw	t3,400(s0)
    166c:	8fbf001c 	lw	ra,28(sp)
    1670:	8fb00018 	lw	s0,24(sp)
    1674:	27bd0020 	addiu	sp,sp,32
    1678:	03e00008 	jr	ra
    167c:	00000000 	nop

00001680 <EnSa_Update>:
    1680:	27bdffc8 	addiu	sp,sp,-56
    1684:	afb0001c 	sw	s0,28(sp)
    1688:	00808025 	move	s0,a0
    168c:	afb10020 	sw	s1,32(sp)
    1690:	00a08825 	move	s1,a1
    1694:	afbf0024 	sw	ra,36(sp)
    1698:	26060194 	addiu	a2,s0,404
    169c:	00c02825 	move	a1,a2
    16a0:	0c000000 	jal	0 <func_80AF5560>
    16a4:	afa6002c 	sw	a2,44(sp)
    16a8:	3c010001 	lui	at,0x1
    16ac:	34211e60 	ori	at,at,0x1e60
    16b0:	8fa6002c 	lw	a2,44(sp)
    16b4:	02212821 	addu	a1,s1,at
    16b8:	0c000000 	jal	0 <func_80AF5560>
    16bc:	02202025 	move	a0,s1
    16c0:	0c000000 	jal	0 <func_80AF5560>
    16c4:	2604014c 	addiu	a0,s0,332
    16c8:	8e0e0154 	lw	t6,340(s0)
    16cc:	3c040600 	lui	a0,0x600
    16d0:	24841d50 	addiu	a0,a0,7504
    16d4:	548e000e 	bnel	a0,t6,1710 <EnSa_Update+0x90>
    16d8:	8e0f0190 	lw	t7,400(s0)
    16dc:	0c000000 	jal	0 <func_80AF5560>
    16e0:	00000000 	nop
    16e4:	44823000 	mtc1	v0,$f6
    16e8:	c6040164 	lwc1	$f4,356(s0)
    16ec:	02002025 	move	a0,s0
    16f0:	46803220 	cvt.s.w	$f8,$f6
    16f4:	4604403e 	c.le.s	$f8,$f4
    16f8:	00000000 	nop
    16fc:	45020004 	bc1fl	1710 <EnSa_Update+0x90>
    1700:	8e0f0190 	lw	t7,400(s0)
    1704:	0c000000 	jal	0 <func_80AF5560>
    1708:	24050006 	li	a1,6
    170c:	8e0f0190 	lw	t7,400(s0)
    1710:	3c030000 	lui	v1,0x0
    1714:	24630000 	addiu	v1,v1,0
    1718:	106f000a 	beq	v1,t7,1744 <EnSa_Update+0xc4>
    171c:	241800ff 	li	t8,255
    1720:	86060218 	lh	a2,536(s0)
    1724:	afa3002c 	sw	v1,44(sp)
    1728:	02002025 	move	a0,s0
    172c:	02202825 	move	a1,s1
    1730:	0c000000 	jal	0 <func_80AF5560>
    1734:	3c0743c8 	lui	a3,0x43c8
    1738:	8fa3002c 	lw	v1,44(sp)
    173c:	10000002 	b	1748 <EnSa_Update+0xc8>
    1740:	a6020218 	sh	v0,536(s0)
    1744:	a6180218 	sh	t8,536(s0)
    1748:	8e080190 	lw	t0,400(s0)
    174c:	86190218 	lh	t9,536(s0)
    1750:	1468000e 	bne	v1,t0,178c <EnSa_Update+0x10c>
    1754:	a21900c8 	sb	t9,200(s0)
    1758:	c60a0024 	lwc1	$f10,36(s0)
    175c:	c610005c 	lwc1	$f16,92(s0)
    1760:	c6060028 	lwc1	$f6,40(s0)
    1764:	c6040060 	lwc1	$f4,96(s0)
    1768:	46105480 	add.s	$f18,$f10,$f16
    176c:	c6100064 	lwc1	$f16,100(s0)
    1770:	c60a002c 	lwc1	$f10,44(s0)
    1774:	46043200 	add.s	$f8,$f6,$f4
    1778:	e6120024 	swc1	$f18,36(s0)
    177c:	46105480 	add.s	$f18,$f10,$f16
    1780:	e6080028 	swc1	$f8,40(s0)
    1784:	10000003 	b	1794 <EnSa_Update+0x114>
    1788:	e612002c 	swc1	$f18,44(s0)
    178c:	0c000000 	jal	0 <func_80AF5560>
    1790:	02002025 	move	a0,s0
    1794:	862900a4 	lh	t1,164(s1)
    1798:	24010056 	li	at,86
    179c:	02202025 	move	a0,s1
    17a0:	11210008 	beq	t1,at,17c4 <EnSa_Update+0x144>
    17a4:	02002825 	move	a1,s0
    17a8:	44800000 	mtc1	zero,$f0
    17ac:	240a0004 	li	t2,4
    17b0:	afaa0014 	sw	t2,20(sp)
    17b4:	44060000 	mfc1	a2,$f0
    17b8:	44070000 	mfc1	a3,$f0
    17bc:	0c000000 	jal	0 <func_80AF5560>
    17c0:	e7a00010 	swc1	$f0,16(sp)
    17c4:	0c000000 	jal	0 <func_80AF5560>
    17c8:	02002025 	move	a0,s0
    17cc:	8e190190 	lw	t9,400(s0)
    17d0:	02002025 	move	a0,s0
    17d4:	02202825 	move	a1,s1
    17d8:	0320f809 	jalr	t9
    17dc:	00000000 	nop
    17e0:	02002025 	move	a0,s0
    17e4:	0c000000 	jal	0 <func_80AF5560>
    17e8:	02202825 	move	a1,s1
    17ec:	02002025 	move	a0,s0
    17f0:	0c000000 	jal	0 <func_80AF5560>
    17f4:	02202825 	move	a1,s1
    17f8:	8fbf0024 	lw	ra,36(sp)
    17fc:	8fb0001c 	lw	s0,28(sp)
    1800:	8fb10020 	lw	s1,32(sp)
    1804:	03e00008 	jr	ra
    1808:	27bd0038 	addiu	sp,sp,56

0000180c <func_80AF6D6C>:
    180c:	27bdffd8 	addiu	sp,sp,-40
    1810:	24010010 	li	at,16
    1814:	afbf0014 	sw	ra,20(sp)
    1818:	afa40028 	sw	a0,40(sp)
    181c:	afa5002c 	sw	a1,44(sp)
    1820:	afa60030 	sw	a2,48(sp)
    1824:	14a1002d 	bne	a1,at,18dc <func_80AF6D6C+0xd0>
    1828:	afa70034 	sw	a3,52(sp)
    182c:	44807000 	mtc1	zero,$f14
    1830:	3c014461 	lui	at,0x4461
    1834:	44816000 	mtc1	at,$f12
    1838:	44067000 	mfc1	a2,$f14
    183c:	0c000000 	jal	0 <func_80AF5560>
    1840:	24070001 	li	a3,1
    1844:	8fb8003c 	lw	t8,60(sp)
    1848:	27af0018 	addiu	t7,sp,24
    184c:	3c014700 	lui	at,0x4700
    1850:	8b0801e8 	lwl	t0,488(t8)
    1854:	9b0801eb 	lwr	t0,491(t8)
    1858:	44814000 	mtc1	at,$f8
    185c:	3c010000 	lui	at,0x0
    1860:	ade80000 	sw	t0,0(t7)
    1864:	970801ec 	lhu	t0,492(t8)
    1868:	24050001 	li	a1,1
    186c:	a5e80004 	sh	t0,4(t7)
    1870:	87a9001a 	lh	t1,26(sp)
    1874:	c4300000 	lwc1	$f16,0(at)
    1878:	44892000 	mtc1	t1,$f4
    187c:	00000000 	nop
    1880:	468021a0 	cvt.s.w	$f6,$f4
    1884:	46083283 	div.s	$f10,$f6,$f8
    1888:	46105302 	mul.s	$f12,$f10,$f16
    188c:	0c000000 	jal	0 <func_80AF5560>
    1890:	00000000 	nop
    1894:	87aa0018 	lh	t2,24(sp)
    1898:	3c014700 	lui	at,0x4700
    189c:	44813000 	mtc1	at,$f6
    18a0:	448a9000 	mtc1	t2,$f18
    18a4:	3c010000 	lui	at,0x0
    18a8:	c42a0000 	lwc1	$f10,0(at)
    18ac:	46809120 	cvt.s.w	$f4,$f18
    18b0:	24050001 	li	a1,1
    18b4:	46062203 	div.s	$f8,$f4,$f6
    18b8:	460a4302 	mul.s	$f12,$f8,$f10
    18bc:	0c000000 	jal	0 <func_80AF5560>
    18c0:	00000000 	nop
    18c4:	44807000 	mtc1	zero,$f14
    18c8:	3c01c461 	lui	at,0xc461
    18cc:	44816000 	mtc1	at,$f12
    18d0:	44067000 	mfc1	a2,$f14
    18d4:	0c000000 	jal	0 <func_80AF5560>
    18d8:	24070001 	li	a3,1
    18dc:	8fab002c 	lw	t3,44(sp)
    18e0:	24010009 	li	at,9
    18e4:	8fad003c 	lw	t5,60(sp)
    18e8:	55610021 	bnel	t3,at,1970 <func_80AF6D6C+0x164>
    18ec:	8fa80028 	lw	t0,40(sp)
    18f0:	89af01ee 	lwl	t7,494(t5)
    18f4:	99af01f1 	lwr	t7,497(t5)
    18f8:	27ac0018 	addiu	t4,sp,24
    18fc:	3c014700 	lui	at,0x4700
    1900:	ad8f0000 	sw	t7,0(t4)
    1904:	95af01f2 	lhu	t7,498(t5)
    1908:	44812000 	mtc1	at,$f4
    190c:	3c010000 	lui	at,0x0
    1910:	a58f0004 	sh	t7,4(t4)
    1914:	87b8001a 	lh	t8,26(sp)
    1918:	c4280000 	lwc1	$f8,0(at)
    191c:	24050001 	li	a1,1
    1920:	44988000 	mtc1	t8,$f16
    1924:	00000000 	nop
    1928:	468084a0 	cvt.s.w	$f18,$f16
    192c:	46049183 	div.s	$f6,$f18,$f4
    1930:	46083302 	mul.s	$f12,$f6,$f8
    1934:	0c000000 	jal	0 <func_80AF5560>
    1938:	00000000 	nop
    193c:	87b90018 	lh	t9,24(sp)
    1940:	3c014700 	lui	at,0x4700
    1944:	44819000 	mtc1	at,$f18
    1948:	44995000 	mtc1	t9,$f10
    194c:	3c010000 	lui	at,0x0
    1950:	c4260000 	lwc1	$f6,0(at)
    1954:	46805420 	cvt.s.w	$f16,$f10
    1958:	24050001 	li	a1,1
    195c:	46128103 	div.s	$f4,$f16,$f18
    1960:	46062302 	mul.s	$f12,$f4,$f6
    1964:	0c000000 	jal	0 <func_80AF5560>
    1968:	00000000 	nop
    196c:	8fa80028 	lw	t0,40(sp)
    1970:	24010056 	li	at,86
    1974:	8faa002c 	lw	t2,44(sp)
    1978:	850900a4 	lh	t1,164(t0)
    197c:	15210006 	bne	t1,at,1998 <func_80AF6D6C+0x18c>
    1980:	2401000f 	li	at,15
    1984:	15410004 	bne	t2,at,1998 <func_80AF6D6C+0x18c>
    1988:	8fac0030 	lw	t4,48(sp)
    198c:	3c0b0600 	lui	t3,0x600
    1990:	256b7b80 	addiu	t3,t3,31616
    1994:	ad8b0000 	sw	t3,0(t4)
    1998:	8fbf0014 	lw	ra,20(sp)
    199c:	27bd0028 	addiu	sp,sp,40
    19a0:	00001025 	move	v0,zero
    19a4:	03e00008 	jr	ra
    19a8:	00000000 	nop

000019ac <func_80AF6F0C>:
    19ac:	27bdffd8 	addiu	sp,sp,-40
    19b0:	3c0e0000 	lui	t6,0x0
    19b4:	afbf0014 	sw	ra,20(sp)
    19b8:	afa40028 	sw	a0,40(sp)
    19bc:	afa60030 	sw	a2,48(sp)
    19c0:	afa70034 	sw	a3,52(sp)
    19c4:	25ce0000 	addiu	t6,t6,0
    19c8:	8dd80000 	lw	t8,0(t6)
    19cc:	27a40018 	addiu	a0,sp,24
    19d0:	24010010 	li	at,16
    19d4:	ac980000 	sw	t8,0(a0)
    19d8:	8dcf0004 	lw	t7,4(t6)
    19dc:	ac8f0004 	sw	t7,4(a0)
    19e0:	8dd80008 	lw	t8,8(t6)
    19e4:	14a10004 	bne	a1,at,19f8 <func_80AF6F0C+0x4c>
    19e8:	ac980008 	sw	t8,8(a0)
    19ec:	8fa50038 	lw	a1,56(sp)
    19f0:	0c000000 	jal	0 <func_80AF5560>
    19f4:	24a50038 	addiu	a1,a1,56
    19f8:	8fbf0014 	lw	ra,20(sp)
    19fc:	27bd0028 	addiu	sp,sp,40
    1a00:	03e00008 	jr	ra
    1a04:	00000000 	nop

00001a08 <EnSa_Draw>:
    1a08:	27bdffa0 	addiu	sp,sp,-96
    1a0c:	afbf0024 	sw	ra,36(sp)
    1a10:	afb00020 	sw	s0,32(sp)
    1a14:	afa50064 	sw	a1,100(sp)
    1a18:	8ca50000 	lw	a1,0(a1)
    1a1c:	00808025 	move	s0,a0
    1a20:	3c060000 	lui	a2,0x0
    1a24:	24c60000 	addiu	a2,a2,0
    1a28:	27a40048 	addiu	a0,sp,72
    1a2c:	240705a4 	li	a3,1444
    1a30:	0c000000 	jal	0 <func_80AF5560>
    1a34:	afa50058 	sw	a1,88(sp)
    1a38:	86020218 	lh	v0,536(s0)
    1a3c:	240100ff 	li	at,255
    1a40:	8fa80058 	lw	t0,88(sp)
    1a44:	1441004d 	bne	v0,at,1b7c <EnSa_Draw+0x174>
    1a48:	3c0500ff 	lui	a1,0xff
    1a4c:	8d0202c0 	lw	v0,704(t0)
    1a50:	3c18db06 	lui	t8,0xdb06
    1a54:	37180020 	ori	t8,t8,0x20
    1a58:	244f0008 	addiu	t7,v0,8
    1a5c:	ad0f02c0 	sw	t7,704(t0)
    1a60:	ac580000 	sw	t8,0(v0)
    1a64:	86190212 	lh	t9,530(s0)
    1a68:	3c090000 	lui	t1,0x0
    1a6c:	25290000 	addiu	t1,t1,0
    1a70:	00195080 	sll	t2,t9,0x2
    1a74:	012a5821 	addu	t3,t1,t2
    1a78:	8d640000 	lw	a0,0(t3)
    1a7c:	3c060000 	lui	a2,0x0
    1a80:	24c60000 	addiu	a2,a2,0
    1a84:	00046900 	sll	t5,a0,0x4
    1a88:	000d7702 	srl	t6,t5,0x1c
    1a8c:	000e7880 	sll	t7,t6,0x2
    1a90:	00cfc021 	addu	t8,a2,t7
    1a94:	8f190000 	lw	t9,0(t8)
    1a98:	34a5ffff 	ori	a1,a1,0xffff
    1a9c:	00856024 	and	t4,a0,a1
    1aa0:	3c078000 	lui	a3,0x8000
    1aa4:	01995021 	addu	t2,t4,t9
    1aa8:	01475821 	addu	t3,t2,a3
    1aac:	ac4b0004 	sw	t3,4(v0)
    1ab0:	8d0202c0 	lw	v0,704(t0)
    1ab4:	3c0edb06 	lui	t6,0xdb06
    1ab8:	35ce0024 	ori	t6,t6,0x24
    1abc:	244d0008 	addiu	t5,v0,8
    1ac0:	ad0d02c0 	sw	t5,704(t0)
    1ac4:	ac4e0000 	sw	t6,0(v0)
    1ac8:	860f0214 	lh	t7,532(s0)
    1acc:	000fc080 	sll	t8,t7,0x2
    1ad0:	01386021 	addu	t4,t1,t8
    1ad4:	8d840000 	lw	a0,0(t4)
    1ad8:	00045100 	sll	t2,a0,0x4
    1adc:	000a5f02 	srl	t3,t2,0x1c
    1ae0:	000b6880 	sll	t5,t3,0x2
    1ae4:	00cd7021 	addu	t6,a2,t5
    1ae8:	8dcf0000 	lw	t7,0(t6)
    1aec:	0085c824 	and	t9,a0,a1
    1af0:	3c0bdb06 	lui	t3,0xdb06
    1af4:	032fc021 	addu	t8,t9,t7
    1af8:	03076021 	addu	t4,t8,a3
    1afc:	ac4c0004 	sw	t4,4(v0)
    1b00:	8d0202c0 	lw	v0,704(t0)
    1b04:	356b0028 	ori	t3,t3,0x28
    1b08:	3c040000 	lui	a0,0x0
    1b0c:	244a0008 	addiu	t2,v0,8
    1b10:	ad0a02c0 	sw	t2,704(t0)
    1b14:	ac4b0000 	sw	t3,0(v0)
    1b18:	860d0216 	lh	t5,534(s0)
    1b1c:	000d7080 	sll	t6,t5,0x2
    1b20:	008e2021 	addu	a0,a0,t6
    1b24:	8c840000 	lw	a0,0(a0)
    1b28:	00047900 	sll	t7,a0,0x4
    1b2c:	000fc702 	srl	t8,t7,0x1c
    1b30:	00186080 	sll	t4,t8,0x2
    1b34:	00cc5021 	addu	t2,a2,t4
    1b38:	8d4b0000 	lw	t3,0(t2)
    1b3c:	0085c824 	and	t9,a0,a1
    1b40:	3c060000 	lui	a2,0x0
    1b44:	032b6821 	addu	t5,t9,t3
    1b48:	01a77021 	addu	t6,t5,a3
    1b4c:	ac4e0004 	sw	t6,4(v0)
    1b50:	afb00010 	sw	s0,16(sp)
    1b54:	860f0218 	lh	t7,536(s0)
    1b58:	3c070000 	lui	a3,0x0
    1b5c:	24e70000 	addiu	a3,a3,0
    1b60:	8fa40064 	lw	a0,100(sp)
    1b64:	24c60000 	addiu	a2,a2,0
    1b68:	2605014c 	addiu	a1,s0,332
    1b6c:	0c000000 	jal	0 <func_80AF5560>
    1b70:	afaf0014 	sw	t7,20(sp)
    1b74:	1000004e 	b	1cb0 <EnSa_Draw+0x2a8>
    1b78:	8fac0064 	lw	t4,100(sp)
    1b7c:	1040004b 	beqz	v0,1cac <EnSa_Draw+0x2a4>
    1b80:	3c0500ff 	lui	a1,0xff
    1b84:	8d0202d0 	lw	v0,720(t0)
    1b88:	3c0cdb06 	lui	t4,0xdb06
    1b8c:	358c0020 	ori	t4,t4,0x20
    1b90:	24580008 	addiu	t8,v0,8
    1b94:	ad1802d0 	sw	t8,720(t0)
    1b98:	ac4c0000 	sw	t4,0(v0)
    1b9c:	860a0212 	lh	t2,530(s0)
    1ba0:	3c090000 	lui	t1,0x0
    1ba4:	25290000 	addiu	t1,t1,0
    1ba8:	000ac880 	sll	t9,t2,0x2
    1bac:	01395821 	addu	t3,t1,t9
    1bb0:	8d640000 	lw	a0,0(t3)
    1bb4:	3c060000 	lui	a2,0x0
    1bb8:	24c60000 	addiu	a2,a2,0
    1bbc:	00047100 	sll	t6,a0,0x4
    1bc0:	000e7f02 	srl	t7,t6,0x1c
    1bc4:	000fc080 	sll	t8,t7,0x2
    1bc8:	00d86021 	addu	t4,a2,t8
    1bcc:	8d8a0000 	lw	t2,0(t4)
    1bd0:	34a5ffff 	ori	a1,a1,0xffff
    1bd4:	00856824 	and	t5,a0,a1
    1bd8:	3c078000 	lui	a3,0x8000
    1bdc:	01aac821 	addu	t9,t5,t2
    1be0:	03275821 	addu	t3,t9,a3
    1be4:	ac4b0004 	sw	t3,4(v0)
    1be8:	8d0202d0 	lw	v0,720(t0)
    1bec:	3c0fdb06 	lui	t7,0xdb06
    1bf0:	35ef0024 	ori	t7,t7,0x24
    1bf4:	244e0008 	addiu	t6,v0,8
    1bf8:	ad0e02d0 	sw	t6,720(t0)
    1bfc:	ac4f0000 	sw	t7,0(v0)
    1c00:	86180214 	lh	t8,532(s0)
    1c04:	00186080 	sll	t4,t8,0x2
    1c08:	012c6821 	addu	t5,t1,t4
    1c0c:	8da40000 	lw	a0,0(t5)
    1c10:	0004c900 	sll	t9,a0,0x4
    1c14:	00195f02 	srl	t3,t9,0x1c
    1c18:	000b7080 	sll	t6,t3,0x2
    1c1c:	00ce7821 	addu	t7,a2,t6
    1c20:	8df80000 	lw	t8,0(t7)
    1c24:	00855024 	and	t2,a0,a1
    1c28:	3c0bdb06 	lui	t3,0xdb06
    1c2c:	01586021 	addu	t4,t2,t8
    1c30:	01876821 	addu	t5,t4,a3
    1c34:	ac4d0004 	sw	t5,4(v0)
    1c38:	8d0202d0 	lw	v0,720(t0)
    1c3c:	356b0028 	ori	t3,t3,0x28
    1c40:	3c040000 	lui	a0,0x0
    1c44:	24590008 	addiu	t9,v0,8
    1c48:	ad1902d0 	sw	t9,720(t0)
    1c4c:	ac4b0000 	sw	t3,0(v0)
    1c50:	860e0216 	lh	t6,534(s0)
    1c54:	000e7880 	sll	t7,t6,0x2
    1c58:	008f2021 	addu	a0,a0,t7
    1c5c:	8c840000 	lw	a0,0(a0)
    1c60:	0004c100 	sll	t8,a0,0x4
    1c64:	00186702 	srl	t4,t8,0x1c
    1c68:	000c6880 	sll	t5,t4,0x2
    1c6c:	00cdc821 	addu	t9,a2,t5
    1c70:	8f2b0000 	lw	t3,0(t9)
    1c74:	00855024 	and	t2,a0,a1
    1c78:	3c060000 	lui	a2,0x0
    1c7c:	014b7021 	addu	t6,t2,t3
    1c80:	01c77821 	addu	t7,t6,a3
    1c84:	ac4f0004 	sw	t7,4(v0)
    1c88:	afb00010 	sw	s0,16(sp)
    1c8c:	86180218 	lh	t8,536(s0)
    1c90:	3c070000 	lui	a3,0x0
    1c94:	24e70000 	addiu	a3,a3,0
    1c98:	8fa40064 	lw	a0,100(sp)
    1c9c:	24c60000 	addiu	a2,a2,0
    1ca0:	2605014c 	addiu	a1,s0,332
    1ca4:	0c000000 	jal	0 <func_80AF5560>
    1ca8:	afb80014 	sw	t8,20(sp)
    1cac:	8fac0064 	lw	t4,100(sp)
    1cb0:	3c060000 	lui	a2,0x0
    1cb4:	24c60000 	addiu	a2,a2,0
    1cb8:	27a40048 	addiu	a0,sp,72
    1cbc:	240705d9 	li	a3,1497
    1cc0:	0c000000 	jal	0 <func_80AF5560>
    1cc4:	8d850000 	lw	a1,0(t4)
    1cc8:	8fbf0024 	lw	ra,36(sp)
    1ccc:	8fb00020 	lw	s0,32(sp)
    1cd0:	27bd0060 	addiu	sp,sp,96
    1cd4:	03e00008 	jr	ra
    1cd8:	00000000 	nop
    1cdc:	00000000 	nop
