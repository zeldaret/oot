
build/src/code/code_800EC960.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800EC960>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afa40018 	sw	a0,24(sp)
       8:	308400ff 	andi	a0,a0,0xff
       c:	14800011 	bnez	a0,54 <func_800EC960+0x54>
      10:	afbf0014 	sw	ra,20(sp)
      14:	3c040000 	lui	a0,0x0
      18:	0c000000 	jal	0 <func_800EC960>
      1c:	24840000 	addiu	a0,a0,0
      20:	340e800f 	li	t6,0x800f
      24:	3c010000 	lui	at,0x0
      28:	ac2e0000 	sw	t6,0(at)
      2c:	3c010000 	lui	at,0x0
      30:	340f8000 	li	t7,0x8000
      34:	ac2f0000 	sw	t7,0(at)
      38:	3c010000 	lui	at,0x0
      3c:	24180008 	li	t8,8
      40:	ac380000 	sw	t8,0(at)
      44:	3c010000 	lui	at,0x0
      48:	24190004 	li	t9,4
      4c:	10000010 	b	90 <func_800EC960+0x90>
      50:	ac390000 	sw	t9,0(at)
      54:	3c040000 	lui	a0,0x0
      58:	0c000000 	jal	0 <func_800EC960>
      5c:	24840000 	addiu	a0,a0,0
      60:	3408c007 	li	t0,0xc007
      64:	3c010000 	lui	at,0x0
      68:	ac280000 	sw	t0,0(at)
      6c:	3c010000 	lui	at,0x0
      70:	24094000 	li	t1,16384
      74:	ac290000 	sw	t1,0(at)
      78:	3c010000 	lui	at,0x0
      7c:	240a0004 	li	t2,4
      80:	ac2a0000 	sw	t2,0(at)
      84:	3c010000 	lui	at,0x0
      88:	340b8000 	li	t3,0x8000
      8c:	ac2b0000 	sw	t3,0(at)
      90:	8fbf0014 	lw	ra,20(sp)
      94:	27bd0018 	addiu	sp,sp,24
      98:	03e00008 	jr	ra
      9c:	00000000 	nop

000000a0 <func_800ECA00>:
      a0:	3c0e0000 	lui	t6,0x0
      a4:	8dce0000 	lw	t6,0(t6)
      a8:	27bdff80 	addiu	sp,sp,-128
      ac:	afbf0014 	sw	ra,20(sp)
      b0:	3c040000 	lui	a0,0x0
      b4:	24840000 	addiu	a0,a0,0
      b8:	27a50020 	addiu	a1,sp,32
      bc:	00003025 	move	a2,zero
      c0:	0c000000 	jal	0 <func_800EC960>
      c4:	afae0018 	sw	t6,24(sp)
      c8:	97af0020 	lhu	t7,32(sp)
      cc:	8fb80018 	lw	t8,24(sp)
      d0:	3c010000 	lui	at,0x0
      d4:	ac2f0000 	sw	t7,0(at)
      d8:	8fbf0014 	lw	ra,20(sp)
      dc:	3c010000 	lui	at,0x0
      e0:	83b90034 	lb	t9,52(sp)
      e4:	83a80035 	lb	t0,53(sp)
      e8:	ac380000 	sw	t8,0(at)
      ec:	3c010000 	lui	at,0x0
      f0:	27bd0080 	addiu	sp,sp,128
      f4:	a0390000 	sb	t9,0(at)
      f8:	03e00008 	jr	ra
      fc:	a0280000 	sb	t0,0(at)

00000100 <func_800ECA60>:
     100:	afa40000 	sw	a0,0(sp)
     104:	00042600 	sll	a0,a0,0x18
     108:	00042603 	sra	a0,a0,0x18
     10c:	28810041 	slti	at,a0,65
     110:	54200004 	bnezl	at,124 <func_800ECA60+0x24>
     114:	2881ffc0 	slti	at,a0,-64
     118:	10000017 	b	178 <func_800ECA60+0x78>
     11c:	2402007f 	li	v0,127
     120:	2881ffc0 	slti	at,a0,-64
     124:	10200003 	beqz	at,134 <func_800ECA60+0x34>
     128:	00000000 	nop
     12c:	10000012 	b	178 <func_800ECA60+0x78>
     130:	2402ff80 	li	v0,-128
     134:	0480000a 	bltz	a0,160 <func_800ECA60+0x60>
     138:	000411c0 	sll	v0,a0,0x7
     13c:	000411c0 	sll	v0,a0,0x7
     140:	00441023 	subu	v0,v0,a0
     144:	04410002 	bgez	v0,150 <func_800ECA60+0x50>
     148:	00400821 	move	at,v0
     14c:	2441003f 	addiu	at,v0,63
     150:	00011183 	sra	v0,at,0x6
     154:	00021600 	sll	v0,v0,0x18
     158:	10000007 	b	178 <func_800ECA60+0x78>
     15c:	00021603 	sra	v0,v0,0x18
     160:	04410002 	bgez	v0,16c <func_800ECA60+0x6c>
     164:	00400821 	move	at,v0
     168:	2441003f 	addiu	at,v0,63
     16c:	00011183 	sra	v0,at,0x6
     170:	00021600 	sll	v0,v0,0x18
     174:	00021603 	sra	v0,v0,0x18
     178:	00027080 	sll	t6,v0,0x2
     17c:	3c010000 	lui	at,0x0
     180:	002e0821 	addu	at,at,t6
     184:	c4220000 	lwc1	$f2,0(at)
     188:	03e00008 	jr	ra
     18c:	46001006 	mov.s	$f0,$f2

00000190 <func_800ECAF0>:
     190:	3c040000 	lui	a0,0x0
     194:	24840000 	addiu	a0,a0,0
     198:	90820000 	lbu	v0,0(a0)
     19c:	10400004 	beqz	v0,1b0 <func_800ECAF0+0x20>
     1a0:	2443ffff 	addiu	v1,v0,-1
     1a4:	306200ff 	andi	v0,v1,0xff
     1a8:	03e00008 	jr	ra
     1ac:	a0800000 	sb	zero,0(a0)
     1b0:	3c0e0000 	lui	t6,0x0
     1b4:	8dce0000 	lw	t6,0(t6)
     1b8:	51c00004 	beqzl	t6,1cc <func_800ECAF0+0x3c>
     1bc:	240300ff 	li	v1,255
     1c0:	03e00008 	jr	ra
     1c4:	240200fe 	li	v0,254
     1c8:	240300ff 	li	v1,255
     1cc:	03e00008 	jr	ra
     1d0:	00601025 	move	v0,v1

000001d4 <func_800ECB34>:
     1d4:	afa40000 	sw	a0,0(sp)
     1d8:	308400ff 	andi	a0,a0,0xff
     1dc:	308e003f 	andi	t6,a0,0x3f
     1e0:	3c030000 	lui	v1,0x0
     1e4:	006e1821 	addu	v1,v1,t6
     1e8:	90630000 	lbu	v1,0(v1)
     1ec:	24010005 	li	at,5
     1f0:	308f0080 	andi	t7,a0,0x80
     1f4:	14610007 	bne	v1,at,214 <func_800ECB34+0x40>
     1f8:	00601025 	move	v0,v1
     1fc:	11e00003 	beqz	t7,20c <func_800ECB34+0x38>
     200:	00000000 	nop
     204:	03e00008 	jr	ra
     208:	24020002 	li	v0,2
     20c:	03e00008 	jr	ra
     210:	24020003 	li	v0,3
     214:	03e00008 	jr	ra
     218:	00000000 	nop

0000021c <func_800ECB7C>:
     21c:	afa40000 	sw	a0,0(sp)
     220:	308400ff 	andi	a0,a0,0xff
     224:	00047080 	sll	t6,a0,0x2
     228:	01c47021 	addu	t6,t6,a0
     22c:	3c0f0000 	lui	t7,0x0
     230:	25ef0000 	addiu	t7,t7,0
     234:	000e7140 	sll	t6,t6,0x5
     238:	3c080000 	lui	t0,0x0
     23c:	3c070000 	lui	a3,0x0
     240:	00001025 	move	v0,zero
     244:	00001825 	move	v1,zero
     248:	24e70000 	addiu	a3,a3,0
     24c:	25080000 	addiu	t0,t0,0
     250:	01cf2821 	addu	a1,t6,t7
     254:	240600ff 	li	a2,255
     258:	0003c0c0 	sll	t8,v1,0x3
     25c:	00b8c821 	addu	t9,a1,t8
     260:	93240000 	lbu	a0,0(t9)
     264:	24630001 	addiu	v1,v1,1
     268:	306300ff 	andi	v1,v1,0xff
     26c:	10c40006 	beq	a2,a0,288 <func_800ECB7C+0x6c>
     270:	01044821 	addu	t1,t0,a0
     274:	912a0000 	lbu	t2,0(t1)
     278:	00e25821 	addu	t3,a3,v0
     27c:	24420001 	addiu	v0,v0,1
     280:	304200ff 	andi	v0,v0,0xff
     284:	a16a006d 	sb	t2,109(t3)
     288:	28410008 	slti	at,v0,8
     28c:	10200003 	beqz	at,29c <func_800ECB7C+0x80>
     290:	28610010 	slti	at,v1,16
     294:	5420fff1 	bnezl	at,25c <func_800ECB7C+0x40>
     298:	0003c0c0 	sll	t8,v1,0x3
     29c:	03e00008 	jr	ra
     2a0:	00000000 	nop

000002a4 <func_800ECC04>:
     2a4:	3c020000 	lui	v0,0x0
     2a8:	90420000 	lbu	v0,0(v0)
     2ac:	27bdffd8 	addiu	sp,sp,-40
     2b0:	afa40028 	sw	a0,40(sp)
     2b4:	240300ff 	li	v1,255
     2b8:	3084ffff 	andi	a0,a0,0xffff
     2bc:	10620007 	beq	v1,v0,2dc <func_800ECC04+0x38>
     2c0:	afbf0014 	sw	ra,20(sp)
     2c4:	308e0fff 	andi	t6,a0,0xfff
     2c8:	24010fff 	li	at,4095
     2cc:	15c10003 	bne	t6,at,2dc <func_800ECC04+0x38>
     2d0:	00804025 	move	t0,a0
     2d4:	35041000 	ori	a0,t0,0x1000
     2d8:	3084ffff 	andi	a0,a0,0xffff
     2dc:	3401cfff 	li	at,0xcfff
     2e0:	14810005 	bne	a0,at,2f8 <func_800ECC04+0x54>
     2e4:	00804025 	move	t0,a0
     2e8:	50620004 	beql	v1,v0,2fc <func_800ECC04+0x58>
     2ec:	24010fff 	li	at,4095
     2f0:	3404dfff 	li	a0,0xdfff
     2f4:	3408dfff 	li	t0,0xdfff
     2f8:	24010fff 	li	at,4095
     2fc:	15010005 	bne	t0,at,314 <func_800ECC04+0x70>
     300:	2418000e 	li	t8,14
     304:	50620004 	beql	v1,v0,318 <func_800ECC04+0x74>
     308:	3401ffff 	li	at,0xffff
     30c:	24041fff 	li	a0,8191
     310:	24081fff 	li	t0,8191
     314:	3401ffff 	li	at,0xffff
     318:	11010048 	beq	t0,at,43c <func_800ECC04+0x198>
     31c:	3c020000 	lui	v0,0x0
     320:	3c018000 	lui	at,0x8000
     324:	00817821 	addu	t7,a0,at
     328:	3c010000 	lui	at,0x0
     32c:	ac2f0000 	sw	t7,0(at)
     330:	3c010000 	lui	at,0x0
     334:	a0200000 	sb	zero,0(at)
     338:	24420000 	addiu	v0,v0,0
     33c:	3401a000 	li	at,0xa000
     340:	11010003 	beq	t0,at,350 <func_800ECC04+0xac>
     344:	a0580000 	sb	t8,0(v0)
     348:	2709ffff 	addiu	t1,t8,-1
     34c:	a0490000 	sb	t1,0(v0)
     350:	310a3fff 	andi	t2,t0,0x3fff
     354:	3c010000 	lui	at,0x0
     358:	a42a0000 	sh	t2,0(at)
     35c:	3c010000 	lui	at,0x0
     360:	240b0008 	li	t3,8
     364:	a02b0000 	sb	t3,0(at)
     368:	3c010000 	lui	at,0x0
     36c:	a0200000 	sb	zero,0(at)
     370:	3c010000 	lui	at,0x0
     374:	a0200000 	sb	zero,0(at)
     378:	3c010000 	lui	at,0x0
     37c:	a0200000 	sb	zero,0(at)
     380:	0c000000 	jal	0 <func_800EC960>
     384:	afa8001c 	sw	t0,28(sp)
     388:	3c010000 	lui	at,0x0
     38c:	a0220000 	sb	v0,0(at)
     390:	3c010000 	lui	at,0x0
     394:	240c0001 	li	t4,1
     398:	a02c0000 	sb	t4,0(at)
     39c:	3c010000 	lui	at,0x0
     3a0:	3c070000 	lui	a3,0x0
     3a4:	3c060000 	lui	a2,0x0
     3a8:	3c050000 	lui	a1,0x0
     3ac:	3c040000 	lui	a0,0x0
     3b0:	8fa8001c 	lw	t0,28(sp)
     3b4:	a4200000 	sh	zero,0(at)
     3b8:	24840000 	addiu	a0,a0,0
     3bc:	24a50000 	addiu	a1,a1,0
     3c0:	24c60000 	addiu	a2,a2,0
     3c4:	24e70000 	addiu	a3,a3,0
     3c8:	00001825 	move	v1,zero
     3cc:	00031040 	sll	v0,v1,0x1
     3d0:	00826821 	addu	t5,a0,v0
     3d4:	00e3c021 	addu	t8,a3,v1
     3d8:	24630001 	addiu	v1,v1,1
     3dc:	a5a00000 	sh	zero,0(t5)
     3e0:	00a27021 	addu	t6,a1,v0
     3e4:	306300ff 	andi	v1,v1,0xff
     3e8:	a5c00000 	sh	zero,0(t6)
     3ec:	00c27821 	addu	t7,a2,v0
     3f0:	2861000e 	slti	at,v1,14
     3f4:	a5e00000 	sh	zero,0(t7)
     3f8:	1420fff4 	bnez	at,3cc <func_800ECC04+0x128>
     3fc:	a3000000 	sb	zero,0(t8)
     400:	31198000 	andi	t9,t0,0x8000
     404:	13200003 	beqz	t9,414 <func_800ECC04+0x170>
     408:	31094000 	andi	t1,t0,0x4000
     40c:	3c010000 	lui	at,0x0
     410:	a0200000 	sb	zero,0(at)
     414:	11200003 	beqz	t1,424 <func_800ECC04+0x180>
     418:	310ad000 	andi	t2,t0,0xd000
     41c:	3c010000 	lui	at,0x0
     420:	a0200000 	sb	zero,0(at)
     424:	5140000a 	beqzl	t2,450 <func_800ECC04+0x1ac>
     428:	8fbf0014 	lw	ra,20(sp)
     42c:	0c000000 	jal	0 <func_800EC960>
     430:	2404000c 	li	a0,12
     434:	10000006 	b	450 <func_800ECC04+0x1ac>
     438:	8fbf0014 	lw	ra,20(sp)
     43c:	3c010000 	lui	at,0x0
     440:	ac200000 	sw	zero,0(at)
     444:	3c010000 	lui	at,0x0
     448:	a0200000 	sb	zero,0(at)
     44c:	8fbf0014 	lw	ra,20(sp)
     450:	27bd0028 	addiu	sp,sp,40
     454:	03e00008 	jr	ra
     458:	00000000 	nop

0000045c <func_800ECDBC>:
     45c:	3c0e0000 	lui	t6,0x0
     460:	91ce0000 	lbu	t6,0(t6)
     464:	240100ff 	li	at,255
     468:	3c020000 	lui	v0,0x0
     46c:	11c10008 	beq	t6,at,490 <func_800ECDBC+0x34>
     470:	24420000 	addiu	v0,v0,0
     474:	904f0000 	lbu	t7,0(v0)
     478:	24180001 	li	t8,1
     47c:	241900ff 	li	t9,255
     480:	15e00003 	bnez	t7,490 <func_800ECDBC+0x34>
     484:	3c010000 	lui	at,0x0
     488:	a0580000 	sb	t8,0(v0)
     48c:	a0390000 	sb	t9,0(at)
     490:	03e00008 	jr	ra
     494:	00000000 	nop

00000498 <func_800ECDF8>:
     498:	27bdffa0 	addiu	sp,sp,-96
     49c:	afbf002c 	sw	ra,44(sp)
     4a0:	afb50028 	sw	s5,40(sp)
     4a4:	afb40024 	sw	s4,36(sp)
     4a8:	afb30020 	sw	s3,32(sp)
     4ac:	afb2001c 	sw	s2,28(sp)
     4b0:	afb10018 	sw	s1,24(sp)
     4b4:	afb00014 	sw	s0,20(sp)
     4b8:	a3a0005b 	sb	zero,91(sp)
     4bc:	0c000000 	jal	0 <func_800EC960>
     4c0:	a3a00057 	sb	zero,87(sp)
     4c4:	3c0e0000 	lui	t6,0x0
     4c8:	91ce0000 	lbu	t6,0(t6)
     4cc:	3c020000 	lui	v0,0x0
     4d0:	51c000eb 	beqzl	t6,880 <func_800ECDF8+0x3e8>
     4d4:	8fbf002c 	lw	ra,44(sp)
     4d8:	80420000 	lb	v0,0(v0)
     4dc:	3c0f0000 	lui	t7,0x0
     4e0:	3c180000 	lui	t8,0x0
     4e4:	04410003 	bgez	v0,4f4 <func_800ECDF8+0x5c>
     4e8:	00401825 	move	v1,v0
     4ec:	10000001 	b	4f4 <func_800ECDF8+0x5c>
     4f0:	00021823 	negu	v1,v0
     4f4:	28610015 	slti	at,v1,21
     4f8:	14200004 	bnez	at,50c <func_800ECDF8+0x74>
     4fc:	3c1f0000 	lui	ra,0x0
     500:	3c010000 	lui	at,0x0
     504:	100000dd 	b	87c <func_800ECDF8+0x3e4>
     508:	ac200000 	sw	zero,0(at)
     50c:	91ef0000 	lbu	t7,0(t7)
     510:	93180000 	lbu	t8,0(t8)
     514:	3c0e0000 	lui	t6,0x0
     518:	afaf0040 	sw	t7,64(sp)
     51c:	11f80003 	beq	t7,t8,52c <func_800ECDF8+0x94>
     520:	01e0a825 	move	s5,t7
     524:	240d00ff 	li	t5,255
     528:	15af0003 	bne	t5,t7,538 <func_800ECDF8+0xa0>
     52c:	24190001 	li	t9,1
     530:	a3b9005b 	sb	t9,91(sp)
     534:	240d00ff 	li	t5,255
     538:	93ff0000 	lbu	ra,0(ra)
     53c:	91ce0000 	lbu	t6,0(t6)
     540:	3c100000 	lui	s0,0x0
     544:	03e03025 	move	a2,ra
     548:	03ee082a 	slt	at,ra,t6
     54c:	102000be 	beqz	at,848 <func_800ECDF8+0x3b0>
     550:	afae0034 	sw	t6,52(sp)
     554:	3c140000 	lui	s4,0x0
     558:	3c130000 	lui	s3,0x0
     55c:	3c120000 	lui	s2,0x0
     560:	3c110000 	lui	s1,0x0
     564:	3c020000 	lui	v0,0x0
     568:	24420000 	addiu	v0,v0,0
     56c:	26310000 	addiu	s1,s1,0
     570:	26520000 	addiu	s2,s2,0
     574:	26730000 	addiu	s3,s3,0
     578:	26940000 	addiu	s4,s4,0
     57c:	96100000 	lhu	s0,0(s0)
     580:	240f0001 	li	t7,1
     584:	00cf5804 	sllv	t3,t7,a2
     588:	316bffff 	andi	t3,t3,0xffff
     58c:	020bc024 	and	t8,s0,t3
     590:	1300008e 	beqz	t8,7cc <func_800ECDF8+0x334>
     594:	001f6040 	sll	t4,ra,0x1
     598:	3c0e0000 	lui	t6,0x0
     59c:	25ce0000 	addiu	t6,t6,0
     5a0:	018e4021 	addu	t0,t4,t6
     5a4:	95040000 	lhu	a0,0(t0)
     5a8:	93af005b 	lbu	t7,91(sp)
     5ac:	3c190000 	lui	t9,0x0
     5b0:	27390000 	addiu	t9,t9,0
     5b4:	01991821 	addu	v1,t4,t9
     5b8:	24850012 	addiu	a1,a0,18
     5bc:	11e00021 	beqz	t7,644 <func_800ECDF8+0x1ac>
     5c0:	a4650000 	sh	a1,0(v1)
     5c4:	30a2ffff 	andi	v0,a1,0xffff
     5c8:	2498ffee 	addiu	t8,a0,-18
     5cc:	0058082a 	slt	at,v0,t8
     5d0:	14200019 	bnez	at,638 <func_800ECDF8+0x1a0>
     5d4:	0045082a 	slt	at,v0,a1
     5d8:	14200017 	bnez	at,638 <func_800ECDF8+0x1a0>
     5dc:	001fc880 	sll	t9,ra,0x2
     5e0:	026c7821 	addu	t7,s3,t4
     5e4:	95f80000 	lhu	t8,0(t7)
     5e8:	033fc821 	addu	t9,t9,ra
     5ec:	0019c940 	sll	t9,t9,0x5
     5f0:	02997021 	addu	t6,s4,t9
     5f4:	0018c8c0 	sll	t9,t8,0x3
     5f8:	01d97821 	addu	t7,t6,t9
     5fc:	95f80002 	lhu	t8,2(t7)
     600:	023fc821 	addu	t9,s1,ra
     604:	1700000c 	bnez	t8,638 <func_800ECDF8+0x1a0>
     608:	00000000 	nop
     60c:	924e0000 	lbu	t6,0(s2)
     610:	932f0000 	lbu	t7,0(t9)
     614:	24d80001 	addiu	t8,a2,1
     618:	3c010000 	lui	at,0x0
     61c:	15cf0006 	bne	t6,t7,638 <func_800ECDF8+0x1a0>
     620:	00000000 	nop
     624:	a0380000 	sb	t8,0(at)
     628:	3c010000 	lui	at,0x0
     62c:	a0200000 	sb	zero,0(at)
     630:	3c010000 	lui	at,0x0
     634:	ac200000 	sw	zero,0(at)
     638:	3c020000 	lui	v0,0x0
     63c:	10000063 	b	7cc <func_800ECDF8+0x334>
     640:	24420000 	addiu	v0,v0,0
     644:	94620000 	lhu	v0,0(v1)
     648:	2499ffee 	addiu	t9,a0,-18
     64c:	026c3821 	addu	a3,s3,t4
     650:	0059082a 	slt	at,v0,t9
     654:	1420004c 	bnez	at,788 <func_800ECDF8+0x2f0>
     658:	001fc880 	sll	t9,ra,0x2
     65c:	92420000 	lbu	v0,0(s2)
     660:	023f7021 	addu	t6,s1,ra
     664:	033fc821 	addu	t9,t9,ra
     668:	51a2000f 	beql	t5,v0,6a8 <func_800ECDF8+0x210>
     66c:	94e20000 	lhu	v0,0(a3)
     670:	91cf0000 	lbu	t7,0(t6)
     674:	020bc026 	xor	t8,s0,t3
     678:	3c010000 	lui	at,0x0
     67c:	144f0006 	bne	v0,t7,698 <func_800ECDF8+0x200>
     680:	00000000 	nop
     684:	2401000c 	li	at,12
     688:	54c10007 	bnel	a2,at,6a8 <func_800ECDF8+0x210>
     68c:	94e20000 	lhu	v0,0(a3)
     690:	10000004 	b	6a4 <func_800ECDF8+0x20c>
     694:	a4600000 	sh	zero,0(v1)
     698:	a4380000 	sh	t8,0(at)
     69c:	3c100000 	lui	s0,0x0
     6a0:	96100000 	lhu	s0,0(s0)
     6a4:	94e20000 	lhu	v0,0(a3)
     6a8:	0019c940 	sll	t9,t9,0x5
     6ac:	02993021 	addu	a2,s4,t9
     6b0:	24490001 	addiu	t1,v0,1
     6b4:	3129ffff 	andi	t1,t1,0xffff
     6b8:	000270c0 	sll	t6,v0,0x3
     6bc:	00ce2821 	addu	a1,a2,t6
     6c0:	a4e90000 	sh	t1,0(a3)
     6c4:	94b80002 	lhu	t8,2(a1)
     6c8:	000978c0 	sll	t7,t1,0x3
     6cc:	00cf5021 	addu	t2,a2,t7
     6d0:	a5180000 	sh	t8,0(t0)
     6d4:	90b90000 	lbu	t9,0(a1)
     6d8:	023f1821 	addu	v1,s1,ra
     6dc:	01402025 	move	a0,t2
     6e0:	332e00ff 	andi	t6,t9,0xff
     6e4:	12ae0006 	beq	s5,t6,700 <func_800ECDF8+0x268>
     6e8:	a0790000 	sb	t9,0(v1)
     6ec:	020b7826 	xor	t7,s0,t3
     6f0:	3c010000 	lui	at,0x0
     6f4:	a42f0000 	sh	t7,0(at)
     6f8:	3c100000 	lui	s0,0x0
     6fc:	96100000 	lhu	s0,0(s0)
     700:	90980000 	lbu	t8,0(a0)
     704:	90b90000 	lbu	t9,0(a1)
     708:	53190008 	beql	t8,t9,72c <func_800ECDF8+0x294>
     70c:	95180000 	lhu	t8,0(t0)
     710:	914e0000 	lbu	t6,0(t2)
     714:	15ae0019 	bne	t5,t6,77c <func_800ECDF8+0x2e4>
     718:	00000000 	nop
     71c:	954f0002 	lhu	t7,2(t2)
     720:	11e00016 	beqz	t7,77c <func_800ECDF8+0x2e4>
     724:	00000000 	nop
     728:	95180000 	lhu	t8,0(t0)
     72c:	94990002 	lhu	t9,2(a0)
     730:	94e20000 	lhu	v0,0(a3)
     734:	03197021 	addu	t6,t8,t9
     738:	24590001 	addiu	t9,v0,1
     73c:	a50e0000 	sh	t6,0(t0)
     740:	a4f90000 	sh	t9,0(a3)
     744:	000278c0 	sll	t7,v0,0x3
     748:	0002c0c0 	sll	t8,v0,0x3
     74c:	00cf2821 	addu	a1,a2,t7
     750:	00d82021 	addu	a0,a2,t8
     754:	90830008 	lbu	v1,8(a0)
     758:	90ae0000 	lbu	t6,0(a1)
     75c:	24840008 	addiu	a0,a0,8
     760:	506efff2 	beql	v1,t6,72c <func_800ECDF8+0x294>
     764:	95180000 	lhu	t8,0(t0)
     768:	15a30004 	bne	t5,v1,77c <func_800ECDF8+0x2e4>
     76c:	00000000 	nop
     770:	948f0002 	lhu	t7,2(a0)
     774:	55e0ffed 	bnezl	t7,72c <func_800ECDF8+0x294>
     778:	95180000 	lhu	t8,0(t0)
     77c:	3c020000 	lui	v0,0x0
     780:	10000012 	b	7cc <func_800ECDF8+0x334>
     784:	24420000 	addiu	v0,v0,0
     788:	2841000a 	slti	at,v0,10
     78c:	10200008 	beqz	at,7b0 <func_800ECDF8+0x318>
     790:	2418ffff 	li	t8,-1
     794:	8fb90040 	lw	t9,64(sp)
     798:	3c020000 	lui	v0,0x0
     79c:	a3b80057 	sb	t8,87(sp)
     7a0:	a4600000 	sh	zero,0(v1)
     7a4:	24420000 	addiu	v0,v0,0
     7a8:	10000008 	b	7cc <func_800ECDF8+0x334>
     7ac:	a2590000 	sb	t9,0(s2)
     7b0:	020b7026 	xor	t6,s0,t3
     7b4:	3c010000 	lui	at,0x0
     7b8:	a42e0000 	sh	t6,0(at)
     7bc:	3c100000 	lui	s0,0x0
     7c0:	3c020000 	lui	v0,0x0
     7c4:	24420000 	addiu	v0,v0,0
     7c8:	96100000 	lhu	s0,0(s0)
     7cc:	16000018 	bnez	s0,830 <func_800ECDF8+0x398>
     7d0:	3c180000 	lui	t8,0x0
     7d4:	904f0000 	lbu	t7,0(v0)
     7d8:	93180000 	lbu	t8,0(t8)
     7dc:	01f8082a 	slt	at,t7,t8
     7e0:	54200014 	bnezl	at,834 <func_800ECDF8+0x39c>
     7e4:	8fb90034 	lw	t9,52(sp)
     7e8:	3c020000 	lui	v0,0x0
     7ec:	8c420000 	lw	v0,0(v0)
     7f0:	3c010000 	lui	at,0x0
     7f4:	a0200000 	sb	zero,0(at)
     7f8:	30594000 	andi	t9,v0,0x4000
     7fc:	13200009 	beqz	t9,824 <func_800ECDF8+0x38c>
     800:	001f7080 	sll	t6,ra,0x2
     804:	01df7021 	addu	t6,t6,ra
     808:	000e7140 	sll	t6,t6,0x5
     80c:	028e7821 	addu	t7,s4,t6
     810:	91f80000 	lbu	t8,0(t7)
     814:	3c010000 	lui	at,0x0
     818:	16b80002 	bne	s5,t8,824 <func_800ECDF8+0x38c>
     81c:	00000000 	nop
     820:	a4220000 	sh	v0,0(at)
     824:	3c010000 	lui	at,0x0
     828:	10000014 	b	87c <func_800ECDF8+0x3e4>
     82c:	ac200000 	sw	zero,0(at)
     830:	8fb90034 	lw	t9,52(sp)
     834:	27ff0001 	addiu	ra,ra,1
     838:	33ff00ff 	andi	ra,ra,0xff
     83c:	03f9082a 	slt	at,ra,t9
     840:	1420ff4f 	bnez	at,580 <func_800ECDF8+0xe8>
     844:	03e03025 	move	a2,ra
     848:	93ae005b 	lbu	t6,91(sp)
     84c:	3c020000 	lui	v0,0x0
     850:	3c120000 	lui	s2,0x0
     854:	26520000 	addiu	s2,s2,0
     858:	15c00008 	bnez	t6,87c <func_800ECDF8+0x3e4>
     85c:	24420000 	addiu	v0,v0,0
     860:	8faf0040 	lw	t7,64(sp)
     864:	90580000 	lbu	t8,0(v0)
     868:	83b90057 	lb	t9,87(sp)
     86c:	a24f0000 	sb	t7,0(s2)
     870:	03197021 	addu	t6,t8,t9
     874:	25cf0001 	addiu	t7,t6,1
     878:	a04f0000 	sb	t7,0(v0)
     87c:	8fbf002c 	lw	ra,44(sp)
     880:	8fb00014 	lw	s0,20(sp)
     884:	8fb10018 	lw	s1,24(sp)
     888:	8fb2001c 	lw	s2,28(sp)
     88c:	8fb30020 	lw	s3,32(sp)
     890:	8fb40024 	lw	s4,36(sp)
     894:	8fb50028 	lw	s5,40(sp)
     898:	03e00008 	jr	ra
     89c:	27bd0060 	addiu	sp,sp,96

000008a0 <func_800ED200>:
     8a0:	3c020000 	lui	v0,0x0
     8a4:	8c420000 	lw	v0,0(v0)
     8a8:	27bdffe0 	addiu	sp,sp,-32
     8ac:	afbf001c 	sw	ra,28(sp)
     8b0:	304e0020 	andi	t6,v0,0x20
     8b4:	11c0000b 	beqz	t6,8e4 <func_800ED200+0x44>
     8b8:	afb00018 	sw	s0,24(sp)
     8bc:	3c0f0000 	lui	t7,0x0
     8c0:	8def0000 	lw	t7,0(t7)
     8c4:	3c040000 	lui	a0,0x0
     8c8:	004fc024 	and	t8,v0,t7
     8cc:	13000005 	beqz	t8,8e4 <func_800ED200+0x44>
     8d0:	00000000 	nop
     8d4:	0c000000 	jal	0 <func_800EC960>
     8d8:	94840000 	lhu	a0,0(a0)
     8dc:	10000082 	b	ae8 <func_800ED200+0x248>
     8e0:	8fbf001c 	lw	ra,28(sp)
     8e4:	0c000000 	jal	0 <func_800EC960>
     8e8:	00000000 	nop
     8ec:	3c190000 	lui	t9,0x0
     8f0:	93390000 	lbu	t9,0(t9)
     8f4:	3c050000 	lui	a1,0x0
     8f8:	3c0e0000 	lui	t6,0x0
     8fc:	5320007a 	beqzl	t9,ae8 <func_800ED200+0x248>
     900:	8fbf001c 	lw	ra,28(sp)
     904:	90a50000 	lbu	a1,0(a1)
     908:	91ce0000 	lbu	t6,0(t6)
     90c:	240100ff 	li	at,255
     910:	50ae0075 	beql	a1,t6,ae8 <func_800ED200+0x248>
     914:	8fbf001c 	lw	ra,28(sp)
     918:	10a10072 	beq	a1,at,ae4 <func_800ED200+0x244>
     91c:	3c020000 	lui	v0,0x0
     920:	24420000 	addiu	v0,v0,0
     924:	904f0000 	lbu	t7,0(v0)
     928:	3c030000 	lui	v1,0x0
     92c:	24630000 	addiu	v1,v1,0
     930:	25f80001 	addiu	t8,t7,1
     934:	331900ff 	andi	t9,t8,0xff
     938:	2b210009 	slti	at,t9,9
     93c:	14200003 	bnez	at,94c <func_800ED200+0xac>
     940:	a0580000 	sb	t8,0(v0)
     944:	240e0001 	li	t6,1
     948:	a04e0000 	sb	t6,0(v0)
     94c:	90620000 	lbu	v0,0(v1)
     950:	24010008 	li	at,8
     954:	00005825 	move	t3,zero
     958:	1441000f 	bne	v0,at,998 <func_800ED200+0xf8>
     95c:	00405025 	move	t2,v0
     960:	3c020000 	lui	v0,0x0
     964:	24420000 	addiu	v0,v0,0
     968:	00006025 	move	t4,zero
     96c:	004bc821 	addu	t9,v0,t3
     970:	256b0001 	addiu	t3,t3,1
     974:	004c7821 	addu	t7,v0,t4
     978:	91f80001 	lbu	t8,1(t7)
     97c:	316b00ff 	andi	t3,t3,0xff
     980:	29610007 	slti	at,t3,7
     984:	01606025 	move	t4,t3
     988:	1420fff8 	bnez	at,96c <func_800ED200+0xcc>
     98c:	a3380000 	sb	t8,0(t9)
     990:	10000006 	b	9ac <func_800ED200+0x10c>
     994:	00000000 	nop
     998:	244e0001 	addiu	t6,v0,1
     99c:	3c020000 	lui	v0,0x0
     9a0:	24420000 	addiu	v0,v0,0
     9a4:	a06e0000 	sb	t6,0(v1)
     9a8:	31ca00ff 	andi	t2,t6,0xff
     9ac:	3c030000 	lui	v1,0x0
     9b0:	80630000 	lb	v1,0(v1)
     9b4:	3c0b0000 	lui	t3,0x0
     9b8:	3c0d0000 	lui	t5,0x0
     9bc:	04610003 	bgez	v1,9cc <func_800ED200+0x12c>
     9c0:	00602025 	move	a0,v1
     9c4:	10000001 	b	9cc <func_800ED200+0x12c>
     9c8:	00032023 	negu	a0,v1
     9cc:	28810015 	slti	at,a0,21
     9d0:	14200005 	bnez	at,9e8 <func_800ED200+0x148>
     9d4:	004af821 	addu	ra,v0,t2
     9d8:	004af821 	addu	ra,v0,t2
     9dc:	240f00ff 	li	t7,255
     9e0:	10000002 	b	9ec <func_800ED200+0x14c>
     9e4:	a3efffff 	sb	t7,-1(ra)
     9e8:	a3e5ffff 	sb	a1,-1(ra)
     9ec:	916b0000 	lbu	t3,0(t3)
     9f0:	91ad0000 	lbu	t5,0(t5)
     9f4:	3c100000 	lui	s0,0x0
     9f8:	3c090000 	lui	t1,0x0
     9fc:	016d082a 	slt	at,t3,t5
     a00:	10200038 	beqz	at,ae4 <func_800ED200+0x244>
     a04:	01606025 	move	t4,t3
     a08:	96100000 	lhu	s0,0(s0)
     a0c:	25290000 	addiu	t1,t1,0
     a10:	24180001 	li	t8,1
     a14:	0198c804 	sllv	t9,t8,t4
     a18:	332effff 	andi	t6,t9,0xffff
     a1c:	020e7824 	and	t7,s0,t6
     a20:	11e0002b 	beqz	t7,ad0 <func_800ED200+0x230>
     a24:	000bc0c0 	sll	t8,t3,0x3
     a28:	3c190000 	lui	t9,0x0
     a2c:	27390000 	addiu	t9,t9,0
     a30:	030bc021 	addu	t8,t8,t3
     a34:	03194021 	addu	t0,t8,t9
     a38:	91060000 	lbu	a2,0(t0)
     a3c:	00001825 	move	v1,zero
     a40:	00002825 	move	a1,zero
     a44:	18c0001a 	blez	a2,ab0 <func_800ED200+0x210>
     a48:	0146082a 	slt	at,t2,a2
     a4c:	14200018 	bnez	at,ab0 <func_800ED200+0x210>
     a50:	00067023 	negu	t6,a2
     a54:	03ee3821 	addu	a3,ra,t6
     a58:	00002025 	move	a0,zero
     a5c:	0103c021 	addu	t8,t0,v1
     a60:	93190001 	lbu	t9,1(t8)
     a64:	00e47821 	addu	t7,a3,a0
     a68:	91e20000 	lbu	v0,0(t7)
     a6c:	01397021 	addu	t6,t1,t9
     a70:	91cf0000 	lbu	t7,0(t6)
     a74:	544f0006 	bnel	v0,t7,a90 <func_800ED200+0x1f0>
     a78:	24a50001 	addiu	a1,a1,1
     a7c:	24630001 	addiu	v1,v1,1
     a80:	306300ff 	andi	v1,v1,0xff
     a84:	10000003 	b	a94 <func_800ED200+0x1f4>
     a88:	00602025 	move	a0,v1
     a8c:	24a50001 	addiu	a1,a1,1
     a90:	30a500ff 	andi	a1,a1,0xff
     a94:	0086082a 	slt	at,a0,a2
     a98:	10200005 	beqz	at,ab0 <func_800ED200+0x210>
     a9c:	00000000 	nop
     aa0:	14a00003 	bnez	a1,ab0 <func_800ED200+0x210>
     aa4:	0146082a 	slt	at,t2,a2
     aa8:	5020ffed 	beqzl	at,a60 <func_800ED200+0x1c0>
     aac:	0103c021 	addu	t8,t0,v1
     ab0:	14660007 	bne	v1,a2,ad0 <func_800ED200+0x230>
     ab4:	25980001 	addiu	t8,t4,1
     ab8:	3c010000 	lui	at,0x0
     abc:	a0380000 	sb	t8,0(at)
     ac0:	3c010000 	lui	at,0x0
     ac4:	a0200000 	sb	zero,0(at)
     ac8:	3c010000 	lui	at,0x0
     acc:	ac200000 	sw	zero,0(at)
     ad0:	256b0001 	addiu	t3,t3,1
     ad4:	316b00ff 	andi	t3,t3,0xff
     ad8:	016d082a 	slt	at,t3,t5
     adc:	1420ffcc 	bnez	at,a10 <func_800ED200+0x170>
     ae0:	01606025 	move	t4,t3
     ae4:	8fbf001c 	lw	ra,28(sp)
     ae8:	8fb00018 	lw	s0,24(sp)
     aec:	27bd0020 	addiu	sp,sp,32
     af0:	03e00008 	jr	ra
     af4:	00000000 	nop

00000af8 <func_800ED458>:
     af8:	3c0e0000 	lui	t6,0x0
     afc:	8dce0000 	lw	t6,0(t6)
     b00:	27bdffe0 	addiu	sp,sp,-32
     b04:	afbf001c 	sw	ra,28(sp)
     b08:	11c00008 	beqz	t6,b2c <func_800ED458+0x34>
     b0c:	afa40020 	sw	a0,32(sp)
     b10:	3c030000 	lui	v1,0x0
     b14:	24630000 	addiu	v1,v1,0
     b18:	90620000 	lbu	v0,0(v1)
     b1c:	10400003 	beqz	v0,b2c <func_800ED458+0x34>
     b20:	244fffff 	addiu	t7,v0,-1
     b24:	100000ec 	b	ed8 <func_800ED458+0x3e0>
     b28:	a06f0000 	sb	t7,0(v1)
     b2c:	3c040000 	lui	a0,0x0
     b30:	24840000 	addiu	a0,a0,0
     b34:	8c830000 	lw	v1,0(a0)
     b38:	10600008 	beqz	v1,b5c <func_800ED458+0x64>
     b3c:	3c020000 	lui	v0,0x0
     b40:	8c420000 	lw	v0,0(v0)
     b44:	3c180000 	lui	t8,0x0
     b48:	8f180000 	lw	t8,0(t8)
     b4c:	00625824 	and	t3,v1,v0
     b50:	0302c824 	and	t9,t8,v0
     b54:	532b00e1 	beql	t9,t3,edc <func_800ED458+0x3e4>
     b58:	8fbf001c 	lw	ra,28(sp)
     b5c:	ac800000 	sw	zero,0(a0)
     b60:	3c030000 	lui	v1,0x0
     b64:	3c020000 	lui	v0,0x0
     b68:	8c420000 	lw	v0,0(v0)
     b6c:	8c630000 	lw	v1,0(v1)
     b70:	3c070000 	lui	a3,0x0
     b74:	240900ff 	li	t1,255
     b78:	3c0a0000 	lui	t2,0x0
     b7c:	254a0000 	addiu	t2,t2,0
     b80:	24e70000 	addiu	a3,a3,0
     b84:	a1490000 	sb	t1,0(t2)
     b88:	a0e90000 	sb	t1,0(a3)
     b8c:	3c0c0000 	lui	t4,0x0
     b90:	8d8c0000 	lw	t4,0(t4)
     b94:	3c060000 	lui	a2,0x0
     b98:	24c60000 	addiu	a2,a2,0
     b9c:	8cce0000 	lw	t6,0(a2)
     ba0:	00624024 	and	t0,v1,v0
     ba4:	010c6824 	and	t5,t0,t4
     ba8:	01a22024 	and	a0,t5,v0
     bac:	01c42824 	and	a1,t6,a0
     bb0:	14a00005 	bnez	a1,bc8 <func_800ED458+0xd0>
     bb4:	3c040000 	lui	a0,0x0
     bb8:	50600004 	beqzl	v1,bcc <func_800ED458+0xd4>
     bbc:	acc50000 	sw	a1,0(a2)
     bc0:	10000002 	b	bcc <func_800ED458+0xd4>
     bc4:	acc30000 	sw	v1,0(a2)
     bc8:	acc50000 	sw	a1,0(a2)
     bcc:	3c050000 	lui	a1,0x0
     bd0:	8ca50000 	lw	a1,0(a1)
     bd4:	8cc20000 	lw	v0,0(a2)
     bd8:	00457824 	and	t7,v0,a1
     bdc:	11e0000b 	beqz	t7,c0c <func_800ED458+0x114>
     be0:	00000000 	nop
     be4:	0c000000 	jal	0 <func_800EC960>
     be8:	24840000 	addiu	a0,a0,0
     bec:	3c070000 	lui	a3,0x0
     bf0:	3c0a0000 	lui	t2,0x0
     bf4:	254a0000 	addiu	t2,t2,0
     bf8:	24e70000 	addiu	a3,a3,0
     bfc:	24180002 	li	t8,2
     c00:	a1580000 	sb	t8,0(t2)
     c04:	10000040 	b	d08 <func_800ED458+0x210>
     c08:	a0e00000 	sb	zero,0(a3)
     c0c:	3c050000 	lui	a1,0x0
     c10:	8ca50000 	lw	a1,0(a1)
     c14:	3c040000 	lui	a0,0x0
     c18:	304d0001 	andi	t5,v0,0x1
     c1c:	0045c824 	and	t9,v0,a1
     c20:	1320000c 	beqz	t9,c54 <func_800ED458+0x15c>
     c24:	00000000 	nop
     c28:	0c000000 	jal	0 <func_800EC960>
     c2c:	24840000 	addiu	a0,a0,0
     c30:	3c070000 	lui	a3,0x0
     c34:	3c0a0000 	lui	t2,0x0
     c38:	254a0000 	addiu	t2,t2,0
     c3c:	24e70000 	addiu	a3,a3,0
     c40:	240b0005 	li	t3,5
     c44:	240c0001 	li	t4,1
     c48:	a14b0000 	sb	t3,0(t2)
     c4c:	1000002e 	b	d08 <func_800ED458+0x210>
     c50:	a0ec0000 	sb	t4,0(a3)
     c54:	11a0000e 	beqz	t5,c90 <func_800ED458+0x198>
     c58:	30580002 	andi	t8,v0,0x2
     c5c:	3c040000 	lui	a0,0x0
     c60:	24840000 	addiu	a0,a0,0
     c64:	0c000000 	jal	0 <func_800EC960>
     c68:	24050001 	li	a1,1
     c6c:	3c070000 	lui	a3,0x0
     c70:	3c0a0000 	lui	t2,0x0
     c74:	254a0000 	addiu	t2,t2,0
     c78:	24e70000 	addiu	a3,a3,0
     c7c:	240e0009 	li	t6,9
     c80:	240f0002 	li	t7,2
     c84:	a14e0000 	sb	t6,0(t2)
     c88:	1000001f 	b	d08 <func_800ED458+0x210>
     c8c:	a0ef0000 	sb	t7,0(a3)
     c90:	1300000e 	beqz	t8,ccc <func_800ED458+0x1d4>
     c94:	3c050000 	lui	a1,0x0
     c98:	3c040000 	lui	a0,0x0
     c9c:	24840000 	addiu	a0,a0,0
     ca0:	0c000000 	jal	0 <func_800EC960>
     ca4:	24050002 	li	a1,2
     ca8:	3c070000 	lui	a3,0x0
     cac:	3c0a0000 	lui	t2,0x0
     cb0:	254a0000 	addiu	t2,t2,0
     cb4:	24e70000 	addiu	a3,a3,0
     cb8:	2419000b 	li	t9,11
     cbc:	240b0003 	li	t3,3
     cc0:	a1590000 	sb	t9,0(t2)
     cc4:	10000010 	b	d08 <func_800ED458+0x210>
     cc8:	a0eb0000 	sb	t3,0(a3)
     ccc:	8ca50000 	lw	a1,0(a1)
     cd0:	3c040000 	lui	a0,0x0
     cd4:	00456024 	and	t4,v0,a1
     cd8:	5180000c 	beqzl	t4,d0c <func_800ED458+0x214>
     cdc:	91430000 	lbu	v1,0(t2)
     ce0:	0c000000 	jal	0 <func_800EC960>
     ce4:	24840000 	addiu	a0,a0,0
     ce8:	3c070000 	lui	a3,0x0
     cec:	3c0a0000 	lui	t2,0x0
     cf0:	254a0000 	addiu	t2,t2,0
     cf4:	24e70000 	addiu	a3,a3,0
     cf8:	240d000e 	li	t5,14
     cfc:	240e0004 	li	t6,4
     d00:	a14d0000 	sb	t5,0(t2)
     d04:	a0ee0000 	sb	t6,0(a3)
     d08:	91430000 	lbu	v1,0(t2)
     d0c:	240600ff 	li	a2,255
     d10:	3c040000 	lui	a0,0x0
     d14:	10c30012 	beq	a2,v1,d60 <func_800ED458+0x268>
     d18:	00601025 	move	v0,v1
     d1c:	3c0f0000 	lui	t7,0x0
     d20:	8def0000 	lw	t7,0(t7)
     d24:	3c190000 	lui	t9,0x0
     d28:	31f80010 	andi	t8,t7,0x10
     d2c:	5300000d 	beqzl	t8,d64 <func_800ED458+0x26c>
     d30:	24050002 	li	a1,2
     d34:	93390000 	lbu	t9,0(t9)
     d38:	24050002 	li	a1,2
     d3c:	246d0001 	addiu	t5,v1,1
     d40:	50b90008 	beql	a1,t9,d64 <func_800ED458+0x26c>
     d44:	24050002 	li	a1,2
     d48:	90eb0000 	lbu	t3,0(a3)
     d4c:	31a300ff 	andi	v1,t5,0xff
     d50:	00601025 	move	v0,v1
     d54:	256c0080 	addiu	t4,t3,128
     d58:	a0ec0000 	sb	t4,0(a3)
     d5c:	a14d0000 	sb	t5,0(t2)
     d60:	24050002 	li	a1,2
     d64:	10c2000d 	beq	a2,v0,d9c <func_800ED458+0x2a4>
     d68:	90840000 	lbu	a0,0(a0)
     d6c:	3c0e0000 	lui	t6,0x0
     d70:	8dce0000 	lw	t6,0(t6)
     d74:	31cf2000 	andi	t7,t6,0x2000
     d78:	11e00008 	beqz	t7,d9c <func_800ED458+0x2a4>
     d7c:	00000000 	nop
     d80:	10a40006 	beq	a1,a0,d9c <func_800ED458+0x2a4>
     d84:	00000000 	nop
     d88:	90f80000 	lbu	t8,0(a3)
     d8c:	246bffff 	addiu	t3,v1,-1
     d90:	a14b0000 	sb	t3,0(t2)
     d94:	27190040 	addiu	t9,t8,64
     d98:	a0f90000 	sb	t9,0(a3)
     d9c:	10a4001d 	beq	a1,a0,e14 <func_800ED458+0x31c>
     da0:	3c030000 	lui	v1,0x0
     da4:	3c0c0000 	lui	t4,0x0
     da8:	818c0000 	lb	t4,0(t4)
     dac:	3c030000 	lui	v1,0x0
     db0:	24630000 	addiu	v1,v1,0
     db4:	a06c0000 	sb	t4,0(v1)
     db8:	0c000000 	jal	0 <func_800EC960>
     dbc:	80640000 	lb	a0,0(v1)
     dc0:	3c020000 	lui	v0,0x0
     dc4:	80420000 	lb	v0,0(v0)
     dc8:	3c010000 	lui	at,0x0
     dcc:	e4200000 	swc1	$f0,0(at)
     dd0:	04410003 	bgez	v0,de0 <func_800ED458+0x2e8>
     dd4:	3c040602 	lui	a0,0x602
     dd8:	10000002 	b	de4 <func_800ED458+0x2ec>
     ddc:	00021823 	negu	v1,v0
     de0:	00401825 	move	v1,v0
     de4:	3c020000 	lui	v0,0x0
     de8:	24420000 	addiu	v0,v0,0
     dec:	00036883 	sra	t5,v1,0x2
     df0:	a04d0000 	sb	t5,0(v0)
     df4:	80450000 	lb	a1,0(v0)
     df8:	0c000000 	jal	0 <func_800EC960>
     dfc:	34840d06 	ori	a0,a0,0xd06
     e00:	3c0a0000 	lui	t2,0x0
     e04:	254a0000 	addiu	t2,t2,0
     e08:	91420000 	lbu	v0,0(t2)
     e0c:	10000008 	b	e30 <func_800ED458+0x338>
     e10:	240600ff 	li	a2,255
     e14:	3c013f80 	lui	at,0x3f80
     e18:	44812000 	mtc1	at,$f4
     e1c:	24630000 	addiu	v1,v1,0
     e20:	a0600000 	sb	zero,0(v1)
     e24:	3c010000 	lui	at,0x0
     e28:	e4240000 	swc1	$f4,0(at)
     e2c:	91420000 	lbu	v0,0(t2)
     e30:	10c20021 	beq	a2,v0,eb8 <func_800ED458+0x3c0>
     e34:	3c0e0000 	lui	t6,0x0
     e38:	91ce0000 	lbu	t6,0(t6)
     e3c:	3c050000 	lui	a1,0x0
     e40:	104e001d 	beq	v0,t6,eb8 <func_800ED458+0x3c0>
     e44:	00000000 	nop
     e48:	80a50000 	lb	a1,0(a1)
     e4c:	3c040602 	lui	a0,0x602
     e50:	34840d07 	ori	a0,a0,0xd07
     e54:	24a5ffff 	addiu	a1,a1,-1
     e58:	00052e00 	sll	a1,a1,0x18
     e5c:	0c000000 	jal	0 <func_800EC960>
     e60:	00052e03 	sra	a1,a1,0x18
     e64:	3c0a0000 	lui	t2,0x0
     e68:	254a0000 	addiu	t2,t2,0
     e6c:	3c040602 	lui	a0,0x602
     e70:	34840d05 	ori	a0,a0,0xd05
     e74:	0c000000 	jal	0 <func_800EC960>
     e78:	81450000 	lb	a1,0(t2)
     e7c:	3c0f0000 	lui	t7,0x0
     e80:	3c180000 	lui	t8,0x0
     e84:	27180000 	addiu	t8,t8,0
     e88:	25ef0000 	addiu	t7,t7,0
     e8c:	3c050000 	lui	a1,0x0
     e90:	3c070000 	lui	a3,0x0
     e94:	24e70000 	addiu	a3,a3,0
     e98:	24a50000 	addiu	a1,a1,0
     e9c:	afaf0010 	sw	t7,16(sp)
     ea0:	afb80014 	sw	t8,20(sp)
     ea4:	24045800 	li	a0,22528
     ea8:	0c000000 	jal	0 <func_800EC960>
     eac:	24060004 	li	a2,4
     eb0:	1000000a 	b	edc <func_800ED458+0x3e4>
     eb4:	8fbf001c 	lw	ra,28(sp)
     eb8:	3c190000 	lui	t9,0x0
     ebc:	93390000 	lbu	t9,0(t9)
     ec0:	50d90006 	beql	a2,t9,edc <func_800ED458+0x3e4>
     ec4:	8fbf001c 	lw	ra,28(sp)
     ec8:	54c20004 	bnel	a2,v0,edc <func_800ED458+0x3e4>
     ecc:	8fbf001c 	lw	ra,28(sp)
     ed0:	0c000000 	jal	0 <func_800EC960>
     ed4:	24045800 	li	a0,22528
     ed8:	8fbf001c 	lw	ra,28(sp)
     edc:	27bd0020 	addiu	sp,sp,32
     ee0:	03e00008 	jr	ra
     ee4:	00000000 	nop

00000ee8 <func_800ED848>:
     ee8:	3c010000 	lui	at,0x0
     eec:	afa40000 	sw	a0,0(sp)
     ef0:	03e00008 	jr	ra
     ef4:	a0240000 	sb	a0,0(at)

00000ef8 <func_800ED858>:
     ef8:	3c0e0000 	lui	t6,0x0
     efc:	81ce0000 	lb	t6,0(t6)
     f00:	27bdffe0 	addiu	sp,sp,-32
     f04:	afa40020 	sw	a0,32(sp)
     f08:	308400ff 	andi	a0,a0,0xff
     f0c:	afbf0014 	sw	ra,20(sp)
     f10:	108e002e 	beq	a0,t6,fcc <func_800ED858+0xd4>
     f14:	00801025 	move	v0,a0
     f18:	3c018201 	lui	at,0x8201
     f1c:	34210d00 	ori	at,at,0xd00
     f20:	00812025 	or	a0,a0,at
     f24:	0c000000 	jal	0 <func_800EC960>
     f28:	afa2001c 	sw	v0,28(sp)
     f2c:	8fa2001c 	lw	v0,28(sp)
     f30:	3c010000 	lui	at,0x0
     f34:	340fffff 	li	t7,0xffff
     f38:	1440001b 	bnez	v0,fa8 <func_800ED858+0xb0>
     f3c:	a0220000 	sb	v0,0(at)
     f40:	3c010000 	lui	at,0x0
     f44:	ac200000 	sw	zero,0(at)
     f48:	3c010000 	lui	at,0x0
     f4c:	ac200000 	sw	zero,0(at)
     f50:	3c010000 	lui	at,0x0
     f54:	ac200000 	sw	zero,0(at)
     f58:	3c010000 	lui	at,0x0
     f5c:	ac2f0000 	sw	t7,0(at)
     f60:	0c000000 	jal	0 <func_800EC960>
     f64:	00002025 	move	a0,zero
     f68:	0c000000 	jal	0 <func_800EC960>
     f6c:	24045800 	li	a0,22528
     f70:	0c000000 	jal	0 <func_800EC960>
     f74:	00002025 	move	a0,zero
     f78:	3c010000 	lui	at,0x0
     f7c:	a0200000 	sb	zero,0(at)
     f80:	3c010000 	lui	at,0x0
     f84:	a4200000 	sh	zero,0(at)
     f88:	3c010000 	lui	at,0x0
     f8c:	a0200000 	sb	zero,0(at)
     f90:	3c010000 	lui	at,0x0
     f94:	ac200000 	sw	zero,0(at)
     f98:	0c000000 	jal	0 <func_800EC960>
     f9c:	2404000d 	li	a0,13
     fa0:	1000000b 	b	fd0 <func_800ED858+0xd8>
     fa4:	8fbf0014 	lw	ra,20(sp)
     fa8:	3c010000 	lui	at,0x0
     fac:	0c000000 	jal	0 <func_800EC960>
     fb0:	ac200000 	sw	zero,0(at)
     fb4:	3c180000 	lui	t8,0x0
     fb8:	8f180000 	lw	t8,0(t8)
     fbc:	3c010000 	lui	at,0x0
     fc0:	2404000d 	li	a0,13
     fc4:	0c000000 	jal	0 <func_800EC960>
     fc8:	ac380000 	sw	t8,0(at)
     fcc:	8fbf0014 	lw	ra,20(sp)
     fd0:	27bd0020 	addiu	sp,sp,32
     fd4:	03e00008 	jr	ra
     fd8:	00000000 	nop

00000fdc <func_800ED93C>:
     fdc:	27bdffe8 	addiu	sp,sp,-24
     fe0:	afa40018 	sw	a0,24(sp)
     fe4:	00042600 	sll	a0,a0,0x18
     fe8:	00042603 	sra	a0,a0,0x18
     fec:	00053600 	sll	a2,a1,0x18
     ff0:	00063603 	sra	a2,a2,0x18
     ff4:	afbf0014 	sw	ra,20(sp)
     ff8:	14800007 	bnez	a0,1018 <func_800ED93C+0x3c>
     ffc:	afa5001c 	sw	a1,28(sp)
    1000:	3c010000 	lui	at,0x0
    1004:	a0200000 	sb	zero,0(at)
    1008:	0c000000 	jal	0 <func_800EC960>
    100c:	24045800 	li	a0,22528
    1010:	1000002f 	b	10d0 <func_800ED93C+0xf4>
    1014:	8fbf0014 	lw	ra,20(sp)
    1018:	2881000f 	slti	at,a0,15
    101c:	1020000c 	beqz	at,1050 <func_800ED93C+0x74>
    1020:	3c030000 	lui	v1,0x0
    1024:	00047080 	sll	t6,a0,0x2
    1028:	01c47021 	addu	t6,t6,a0
    102c:	000e7140 	sll	t6,t6,0x5
    1030:	3c180000 	lui	t8,0x0
    1034:	3c070000 	lui	a3,0x0
    1038:	27180000 	addiu	t8,t8,0
    103c:	25cfff60 	addiu	t7,t6,-160
    1040:	24e70000 	addiu	a3,a3,0
    1044:	01f8c821 	addu	t9,t7,t8
    1048:	10000006 	b	1064 <func_800ED93C+0x88>
    104c:	acf90000 	sw	t9,0(a3)
    1050:	3c070000 	lui	a3,0x0
    1054:	3c080000 	lui	t0,0x0
    1058:	24e70000 	addiu	a3,a3,0
    105c:	25080000 	addiu	t0,t0,0
    1060:	ace80000 	sw	t0,0(a3)
    1064:	3c010000 	lui	at,0x0
    1068:	a0260000 	sb	a2,0(at)
    106c:	3c010000 	lui	at,0x0
    1070:	ac200000 	sw	zero,0(at)
    1074:	3c010000 	lui	at,0x0
    1078:	240900ff 	li	t1,255
    107c:	a0290000 	sb	t1,0(at)
    1080:	24630000 	addiu	v1,v1,0
    1084:	a4600000 	sh	zero,0(v1)
    1088:	3c010000 	lui	at,0x0
    108c:	a4200000 	sh	zero,0(at)
    1090:	94620000 	lhu	v0,0(v1)
    1094:	8ce40000 	lw	a0,0(a3)
    1098:	240500ff 	li	a1,255
    109c:	000250c0 	sll	t2,v0,0x3
    10a0:	008a5821 	addu	t3,a0,t2
    10a4:	916c0000 	lbu	t4,0(t3)
    10a8:	14ac0008 	bne	a1,t4,10cc <func_800ED93C+0xf0>
    10ac:	244d0001 	addiu	t5,v0,1
    10b0:	31a2ffff 	andi	v0,t5,0xffff
    10b4:	000270c0 	sll	t6,v0,0x3
    10b8:	008e7821 	addu	t7,a0,t6
    10bc:	a46d0000 	sh	t5,0(v1)
    10c0:	91f80000 	lbu	t8,0(t7)
    10c4:	50b8fffa 	beql	a1,t8,10b0 <func_800ED93C+0xd4>
    10c8:	244d0001 	addiu	t5,v0,1
    10cc:	8fbf0014 	lw	ra,20(sp)
    10d0:	27bd0018 	addiu	sp,sp,24
    10d4:	03e00008 	jr	ra
    10d8:	00000000 	nop

000010dc <func_800EDA3C>:
    10dc:	3c080000 	lui	t0,0x0
    10e0:	25080000 	addiu	t0,t0,0
    10e4:	91070000 	lbu	a3,0(t0)
    10e8:	27bdffd8 	addiu	sp,sp,-40
    10ec:	afbf001c 	sw	ra,28(sp)
    10f0:	10e000c1 	beqz	a3,13f8 <func_800EDA3C+0x31c>
    10f4:	3c090000 	lui	t1,0x0
    10f8:	25290000 	addiu	t1,t1,0
    10fc:	952e0000 	lhu	t6,0(t1)
    1100:	3c030000 	lui	v1,0x0
    1104:	24630000 	addiu	v1,v1,0
    1108:	15c00003 	bnez	t6,1118 <func_800EDA3C+0x3c>
    110c:	3c0f0000 	lui	t7,0x0
    1110:	10000005 	b	1128 <func_800EDA3C+0x4c>
    1114:	24040003 	li	a0,3
    1118:	3c180000 	lui	t8,0x0
    111c:	8f180000 	lw	t8,0(t8)
    1120:	8def0000 	lw	t7,0(t7)
    1124:	01f82023 	subu	a0,t7,t8
    1128:	8c620000 	lw	v0,0(v1)
    112c:	3c060000 	lui	a2,0x0
    1130:	3c050000 	lui	a1,0x0
    1134:	0082082b 	sltu	at,a0,v0
    1138:	10200004 	beqz	at,114c <func_800EDA3C+0x70>
    113c:	00825023 	subu	t2,a0,v0
    1140:	0044c823 	subu	t9,v0,a0
    1144:	10000003 	b	1154 <func_800EDA3C+0x78>
    1148:	ac790000 	sw	t9,0(v1)
    114c:	afaa0020 	sw	t2,32(sp)
    1150:	ac600000 	sw	zero,0(v1)
    1154:	8c6b0000 	lw	t3,0(v1)
    1158:	556000a8 	bnezl	t3,13fc <func_800EDA3C+0x320>
    115c:	8fbf001c 	lw	ra,28(sp)
    1160:	94a50000 	lhu	a1,0(a1)
    1164:	8cc60000 	lw	a2,0(a2)
    1168:	24010001 	li	at,1
    116c:	000560c0 	sll	t4,a1,0x3
    1170:	00cc2021 	addu	a0,a2,t4
    1174:	948d0002 	lhu	t5,2(a0)
    1178:	24f8ffff 	addiu	t8,a3,-1
    117c:	14a10003 	bne	a1,at,118c <func_800EDA3C+0xb0>
    1180:	ac6d0000 	sw	t5,0(v1)
    1184:	25af0001 	addiu	t7,t5,1
    1188:	ac6f0000 	sw	t7,0(v1)
    118c:	8c620000 	lw	v0,0(v1)
    1190:	8fab0020 	lw	t3,32(sp)
    1194:	331900ff 	andi	t9,t8,0xff
    1198:	1440000f 	bnez	v0,11d8 <func_800EDA3C+0xfc>
    119c:	004b6023 	subu	t4,v0,t3
    11a0:	13200009 	beqz	t9,11c8 <func_800EDA3C+0xec>
    11a4:	a1180000 	sb	t8,0(t0)
    11a8:	3c060000 	lui	a2,0x0
    11ac:	3c010000 	lui	at,0x0
    11b0:	24c60000 	addiu	a2,a2,0
    11b4:	a4200000 	sh	zero,0(at)
    11b8:	240a00ff 	li	t2,255
    11bc:	a5200000 	sh	zero,0(t1)
    11c0:	1000008d 	b	13f8 <func_800EDA3C+0x31c>
    11c4:	a0ca0000 	sb	t2,0(a2)
    11c8:	0c000000 	jal	0 <func_800EC960>
    11cc:	24045800 	li	a0,22528
    11d0:	1000008a 	b	13fc <func_800EDA3C+0x320>
    11d4:	8fbf001c 	lw	ra,28(sp)
    11d8:	ac6c0000 	sw	t4,0(v1)
    11dc:	3c030000 	lui	v1,0x0
    11e0:	24630000 	addiu	v1,v1,0
    11e4:	906d0000 	lbu	t5,0(v1)
    11e8:	90820004 	lbu	v0,4(a0)
    11ec:	11a2000e 	beq	t5,v0,1228 <func_800EDA3C+0x14c>
    11f0:	304e00ff 	andi	t6,v0,0xff
    11f4:	448e2000 	mtc1	t6,$f4
    11f8:	a0620000 	sb	v0,0(v1)
    11fc:	05c10005 	bgez	t6,1214 <func_800EDA3C+0x138>
    1200:	468021a0 	cvt.s.w	$f6,$f4
    1204:	3c014f80 	lui	at,0x4f80
    1208:	44814000 	mtc1	at,$f8
    120c:	00000000 	nop
    1210:	46083180 	add.s	$f6,$f6,$f8
    1214:	3c0142fe 	lui	at,0x42fe
    1218:	44815000 	mtc1	at,$f10
    121c:	3c010000 	lui	at,0x0
    1220:	460a3403 	div.s	$f16,$f6,$f10
    1224:	e4300000 	swc1	$f16,0(at)
    1228:	3c030000 	lui	v1,0x0
    122c:	24630000 	addiu	v1,v1,0
    1230:	906f0000 	lbu	t7,0(v1)
    1234:	90820005 	lbu	v0,5(a0)
    1238:	11e2000e 	beq	t7,v0,1274 <func_800EDA3C+0x198>
    123c:	00000000 	nop
    1240:	a0620000 	sb	v0,0(v1)
    1244:	3c040602 	lui	a0,0x602
    1248:	34840d06 	ori	a0,a0,0xd06
    124c:	0c000000 	jal	0 <func_800EC960>
    1250:	80650000 	lb	a1,0(v1)
    1254:	3c050000 	lui	a1,0x0
    1258:	94a50000 	lhu	a1,0(a1)
    125c:	3c060000 	lui	a2,0x0
    1260:	8cc60000 	lw	a2,0(a2)
    1264:	3c090000 	lui	t1,0x0
    1268:	0005c0c0 	sll	t8,a1,0x3
    126c:	25290000 	addiu	t1,t1,0
    1270:	00d82021 	addu	a0,a2,t8
    1274:	3c030000 	lui	v1,0x0
    1278:	24630000 	addiu	v1,v1,0
    127c:	80790000 	lb	t9,0(v1)
    1280:	80820006 	lb	v0,6(a0)
    1284:	5322000f 	beql	t9,v0,12c4 <func_800EDA3C+0x1e8>
    1288:	000558c0 	sll	t3,a1,0x3
    128c:	a0620000 	sb	v0,0(v1)
    1290:	0c000000 	jal	0 <func_800EC960>
    1294:	80640000 	lb	a0,0(v1)
    1298:	3c050000 	lui	a1,0x0
    129c:	94a50000 	lhu	a1,0(a1)
    12a0:	3c060000 	lui	a2,0x0
    12a4:	8cc60000 	lw	a2,0(a2)
    12a8:	3c090000 	lui	t1,0x0
    12ac:	3c010000 	lui	at,0x0
    12b0:	000550c0 	sll	t2,a1,0x3
    12b4:	e4200000 	swc1	$f0,0(at)
    12b8:	25290000 	addiu	t1,t1,0
    12bc:	00ca2021 	addu	a0,a2,t2
    12c0:	000558c0 	sll	t3,a1,0x3
    12c4:	00cb1021 	addu	v0,a2,t3
    12c8:	904dfffc 	lbu	t5,-4(v0)
    12cc:	908c0004 	lbu	t4,4(a0)
    12d0:	2401000a 	li	at,10
    12d4:	158d000c 	bne	t4,t5,1308 <func_800EDA3C+0x22c>
    12d8:	00000000 	nop
    12dc:	908e0005 	lbu	t6,5(a0)
    12e0:	904ffffd 	lbu	t7,-3(v0)
    12e4:	15cf0008 	bne	t6,t7,1308 <func_800EDA3C+0x22c>
    12e8:	00000000 	nop
    12ec:	80980006 	lb	t8,6(a0)
    12f0:	8059fffe 	lb	t9,-2(v0)
    12f4:	3c060000 	lui	a2,0x0
    12f8:	24c60000 	addiu	a2,a2,0
    12fc:	17190002 	bne	t8,t9,1308 <func_800EDA3C+0x22c>
    1300:	240a00fe 	li	t2,254
    1304:	a0ca0000 	sb	t2,0(a2)
    1308:	3c060000 	lui	a2,0x0
    130c:	24c60000 	addiu	a2,a2,0
    1310:	90cb0000 	lbu	t3,0(a2)
    1314:	90820000 	lbu	v0,0(a0)
    1318:	11620034 	beq	t3,v0,13ec <func_800EDA3C+0x310>
    131c:	304300ff 	andi	v1,v0,0xff
    1320:	14610005 	bne	v1,at,1338 <func_800EDA3C+0x25c>
    1324:	00602825 	move	a1,v1
    1328:	908c0007 	lbu	t4,7(a0)
    132c:	01856821 	addu	t5,t4,a1
    1330:	10000002 	b	133c <func_800EDA3C+0x260>
    1334:	a0cd0000 	sb	t5,0(a2)
    1338:	a0c30000 	sb	v1,0(a2)
    133c:	90ce0000 	lbu	t6,0(a2)
    1340:	240100ff 	li	at,255
    1344:	11c10025 	beq	t6,at,13dc <func_800EDA3C+0x300>
    1348:	00000000 	nop
    134c:	952f0000 	lhu	t7,0(t1)
    1350:	3c050000 	lui	a1,0x0
    1354:	3c040602 	lui	a0,0x602
    1358:	25f80001 	addiu	t8,t7,1
    135c:	a5380000 	sh	t8,0(t1)
    1360:	80a50000 	lb	a1,0(a1)
    1364:	34840d07 	ori	a0,a0,0xd07
    1368:	24a5ffff 	addiu	a1,a1,-1
    136c:	00052e00 	sll	a1,a1,0x18
    1370:	0c000000 	jal	0 <func_800EC960>
    1374:	00052e03 	sra	a1,a1,0x18
    1378:	3c060000 	lui	a2,0x0
    137c:	24c60000 	addiu	a2,a2,0
    1380:	90c50000 	lbu	a1,0(a2)
    1384:	3c040602 	lui	a0,0x602
    1388:	34840d05 	ori	a0,a0,0xd05
    138c:	30a5003f 	andi	a1,a1,0x3f
    1390:	00052e00 	sll	a1,a1,0x18
    1394:	0c000000 	jal	0 <func_800EC960>
    1398:	00052e03 	sra	a1,a1,0x18
    139c:	3c190000 	lui	t9,0x0
    13a0:	3c0a0000 	lui	t2,0x0
    13a4:	254a0000 	addiu	t2,t2,0
    13a8:	27390000 	addiu	t9,t9,0
    13ac:	3c050000 	lui	a1,0x0
    13b0:	3c070000 	lui	a3,0x0
    13b4:	24e70000 	addiu	a3,a3,0
    13b8:	24a50000 	addiu	a1,a1,0
    13bc:	afb90010 	sw	t9,16(sp)
    13c0:	afaa0014 	sw	t2,20(sp)
    13c4:	24045800 	li	a0,22528
    13c8:	0c000000 	jal	0 <func_800EC960>
    13cc:	24060004 	li	a2,4
    13d0:	3c050000 	lui	a1,0x0
    13d4:	10000005 	b	13ec <func_800EDA3C+0x310>
    13d8:	94a50000 	lhu	a1,0(a1)
    13dc:	0c000000 	jal	0 <func_800EC960>
    13e0:	24045800 	li	a0,22528
    13e4:	3c050000 	lui	a1,0x0
    13e8:	94a50000 	lhu	a1,0(a1)
    13ec:	24ab0001 	addiu	t3,a1,1
    13f0:	3c010000 	lui	at,0x0
    13f4:	a42b0000 	sh	t3,0(at)
    13f8:	8fbf001c 	lw	ra,28(sp)
    13fc:	27bd0028 	addiu	sp,sp,40
    1400:	03e00008 	jr	ra
    1404:	00000000 	nop

00001408 <func_800EDD68>:
    1408:	27bdffe0 	addiu	sp,sp,-32
    140c:	afbf0014 	sw	ra,20(sp)
    1410:	3c1f0000 	lui	ra,0x0
    1414:	27ff0000 	addiu	ra,ra,0
    1418:	93ee0000 	lbu	t6,0(ra)
    141c:	24010001 	li	at,1
    1420:	afa40020 	sw	a0,32(sp)
    1424:	15c10004 	bne	t6,at,1438 <func_800EDD68+0x30>
    1428:	3c020000 	lui	v0,0x0
    142c:	3c040000 	lui	a0,0x0
    1430:	10000003 	b	1440 <func_800EDD68+0x38>
    1434:	8c840000 	lw	a0,0(a0)
    1438:	3c040000 	lui	a0,0x0
    143c:	8c840000 	lw	a0,0(a0)
    1440:	3c0d0000 	lui	t5,0x0
    1444:	25ad0000 	addiu	t5,t5,0
    1448:	91b80000 	lbu	t8,0(t5)
    144c:	24420000 	addiu	v0,v0,0
    1450:	904f0000 	lbu	t7,0(v0)
    1454:	0018c8c0 	sll	t9,t8,0x3
    1458:	00997021 	addu	t6,a0,t9
    145c:	a1cf0000 	sb	t7,0(t6)
    1460:	3c190000 	lui	t9,0x0
    1464:	3c180000 	lui	t8,0x0
    1468:	8f180000 	lw	t8,0(t8)
    146c:	8f390000 	lw	t9,0(t9)
    1470:	91ae0000 	lbu	t6,0(t5)
    1474:	3c030000 	lui	v1,0x0
    1478:	03197823 	subu	t7,t8,t9
    147c:	000ec0c0 	sll	t8,t6,0x3
    1480:	0098c821 	addu	t9,a0,t8
    1484:	a72f0002 	sh	t7,2(t9)
    1488:	91b80000 	lbu	t8,0(t5)
    148c:	24630000 	addiu	v1,v1,0
    1490:	906e0000 	lbu	t6,0(v1)
    1494:	001878c0 	sll	t7,t8,0x3
    1498:	008fc821 	addu	t9,a0,t7
    149c:	a32e0004 	sb	t6,4(t9)
    14a0:	91af0000 	lbu	t7,0(t5)
    14a4:	3c050000 	lui	a1,0x0
    14a8:	24a50000 	addiu	a1,a1,0
    14ac:	90b80000 	lbu	t8,0(a1)
    14b0:	000f70c0 	sll	t6,t7,0x3
    14b4:	008ec821 	addu	t9,a0,t6
    14b8:	a3380005 	sb	t8,5(t9)
    14bc:	91ae0000 	lbu	t6,0(t5)
    14c0:	3c080000 	lui	t0,0x0
    14c4:	25080000 	addiu	t0,t0,0
    14c8:	810f0000 	lb	t7,0(t0)
    14cc:	000ec0c0 	sll	t8,t6,0x3
    14d0:	0098c821 	addu	t9,a0,t8
    14d4:	3c090000 	lui	t1,0x0
    14d8:	a32f0006 	sb	t7,6(t9)
    14dc:	25290000 	addiu	t1,t1,0
    14e0:	912e0000 	lbu	t6,0(t1)
    14e4:	91af0000 	lbu	t7,0(t5)
    14e8:	2401006b 	li	at,107
    14ec:	31d800c0 	andi	t8,t6,0xc0
    14f0:	000fc8c0 	sll	t9,t7,0x3
    14f4:	00997021 	addu	t6,a0,t9
    14f8:	a1d80007 	sb	t8,7(t6)
    14fc:	3c0f0000 	lui	t7,0x0
    1500:	91ef0000 	lbu	t7,0(t7)
    1504:	3c190000 	lui	t9,0x0
    1508:	3c180000 	lui	t8,0x0
    150c:	a04f0000 	sb	t7,0(v0)
    1510:	83390000 	lb	t9,0(t9)
    1514:	3c0e0000 	lui	t6,0x0
    1518:	3c0f0000 	lui	t7,0x0
    151c:	a0790000 	sb	t9,0(v1)
    1520:	83180000 	lb	t8,0(t8)
    1524:	91b90000 	lbu	t9,0(t5)
    1528:	a0b80000 	sb	t8,0(a1)
    152c:	81ce0000 	lb	t6,0(t6)
    1530:	27380001 	addiu	t8,t9,1
    1534:	330700ff 	andi	a3,t8,0xff
    1538:	a10e0000 	sb	t6,0(t0)
    153c:	91ef0000 	lbu	t7,0(t7)
    1540:	a1b80000 	sb	t8,0(t5)
    1544:	00e03025 	move	a2,a3
    1548:	10e10003 	beq	a3,at,1558 <func_800EDD68+0x150>
    154c:	a12f0000 	sb	t7,0(t1)
    1550:	93ae0023 	lbu	t6,35(sp)
    1554:	11c000aa 	beqz	t6,1800 <func_800EDD68+0x3f8>
    1558:	30e9ffff 	andi	t1,a3,0xffff
    155c:	1120000b 	beqz	t1,158c <func_800EDD68+0x184>
    1560:	01201025 	move	v0,t1
    1564:	240500ff 	li	a1,255
    1568:	2529ffff 	addiu	t1,t1,-1
    156c:	3129ffff 	andi	t1,t1,0xffff
    1570:	000978c0 	sll	t7,t1,0x3
    1574:	008fc821 	addu	t9,a0,t7
    1578:	01201025 	move	v0,t1
    157c:	11200003 	beqz	t1,158c <func_800EDD68+0x184>
    1580:	93230000 	lbu	v1,0(t9)
    1584:	50a3fff9 	beql	a1,v1,156c <func_800EDD68+0x164>
    1588:	2529ffff 	addiu	t1,t1,-1
    158c:	24580001 	addiu	t8,v0,1
    1590:	13060007 	beq	t8,a2,15b0 <func_800EDD68+0x1a8>
    1594:	244e0002 	addiu	t6,v0,2
    1598:	31cf00ff 	andi	t7,t6,0xff
    159c:	000fc8c0 	sll	t9,t7,0x3
    15a0:	a1ae0000 	sb	t6,0(t5)
    15a4:	0099c021 	addu	t8,a0,t9
    15a8:	a700fffa 	sh	zero,-6(t8)
    15ac:	91a70000 	lbu	a3,0(t5)
    15b0:	000770c0 	sll	t6,a3,0x3
    15b4:	008e7821 	addu	t7,a0,t6
    15b8:	a5e00002 	sh	zero,2(t7)
    15bc:	93f90000 	lbu	t9,0(ra)
    15c0:	24010002 	li	at,2
    15c4:	3c180000 	lui	t8,0x0
    15c8:	5721008d 	bnel	t9,at,1800 <func_800EDD68+0x3f8>
    15cc:	a3e00000 	sb	zero,0(ra)
    15d0:	93180000 	lbu	t8,0(t8)
    15d4:	3c030000 	lui	v1,0x0
    15d8:	24630000 	addiu	v1,v1,0
    15dc:	2b010008 	slti	at,t8,8
    15e0:	14200085 	bnez	at,17f8 <func_800EDD68+0x3f0>
    15e4:	240200ff 	li	v0,255
    15e8:	91ae0000 	lbu	t6,0(t5)
    15ec:	00004825 	move	t1,zero
    15f0:	00001025 	move	v0,zero
    15f4:	19c00014 	blez	t6,1648 <func_800EDD68+0x240>
    15f8:	0002c0c0 	sll	t8,v0,0x3
    15fc:	00987021 	addu	t6,a0,t8
    1600:	89d80008 	lwl	t8,8(t6)
    1604:	99d8000b 	lwr	t8,11(t6)
    1608:	000978c0 	sll	t7,t1,0x3
    160c:	008fc821 	addu	t9,a0,t7
    1610:	ab380000 	swl	t8,0(t9)
    1614:	bb380003 	swr	t8,3(t9)
    1618:	89cf000c 	lwl	t7,12(t6)
    161c:	99cf000f 	lwr	t7,15(t6)
    1620:	25290001 	addiu	t1,t1,1
    1624:	3129ffff 	andi	t1,t1,0xffff
    1628:	ab2f0004 	swl	t7,4(t9)
    162c:	bb2f0007 	swr	t7,7(t9)
    1630:	91b90000 	lbu	t9,0(t5)
    1634:	01201025 	move	v0,t1
    1638:	0139082a 	slt	at,t1,t9
    163c:	5420ffef 	bnezl	at,15fc <func_800EDD68+0x1f4>
    1640:	0002c0c0 	sll	t8,v0,0x3
    1644:	00004825 	move	t1,zero
    1648:	2404000d 	li	a0,13
    164c:	0c000000 	jal	0 <func_800EC960>
    1650:	a7a9001e 	sh	t1,30(sp)
    1654:	3c0d0000 	lui	t5,0x0
    1658:	3c1f0000 	lui	ra,0x0
    165c:	3c070000 	lui	a3,0x0
    1660:	27ff0000 	addiu	ra,ra,0
    1664:	25ad0000 	addiu	t5,t5,0
    1668:	97a9001e 	lhu	t1,30(sp)
    166c:	24e70000 	addiu	a3,a3,0
    1670:	240c0009 	li	t4,9
    1674:	240b0009 	li	t3,9
    1678:	012c0019 	multu	t1,t4
    167c:	00004025 	move	t0,zero
    1680:	00007012 	mflo	t6
    1684:	00ee7821 	addu	t7,a3,t6
    1688:	91e60000 	lbu	a2,0(t7)
    168c:	01665023 	subu	t2,t3,a2
    1690:	5940002a 	blezl	t2,173c <func_800EDD68+0x334>
    1694:	25290001 	addiu	t1,t1,1
    1698:	18c0001b 	blez	a2,1708 <func_800EDD68+0x300>
    169c:	00001825 	move	v1,zero
    16a0:	29010008 	slti	at,t0,8
    16a4:	10200018 	beqz	at,1708 <func_800EDD68+0x300>
    16a8:	01002025 	move	a0,t0
    16ac:	0009c0c0 	sll	t8,t1,0x3
    16b0:	0309c021 	addu	t8,t8,t1
    16b4:	00f82821 	addu	a1,a3,t8
    16b8:	00e47021 	addu	t6,a3,a0
    16bc:	91cf006d 	lbu	t7,109(t6)
    16c0:	90b90001 	lbu	t9,1(a1)
    16c4:	172f0010 	bne	t9,t7,1708 <func_800EDD68+0x300>
    16c8:	00000000 	nop
    16cc:	24630001 	addiu	v1,v1,1
    16d0:	306300ff 	andi	v1,v1,0xff
    16d4:	0066082a 	slt	at,v1,a2
    16d8:	1020000b 	beqz	at,1708 <func_800EDD68+0x300>
    16dc:	00601025 	move	v0,v1
    16e0:	0044c021 	addu	t8,v0,a0
    16e4:	2b010008 	slti	at,t8,8
    16e8:	10200007 	beqz	at,1708 <func_800EDD68+0x300>
    16ec:	00a37021 	addu	t6,a1,v1
    16f0:	00e27821 	addu	t7,a3,v0
    16f4:	91d90001 	lbu	t9,1(t6)
    16f8:	01e4c021 	addu	t8,t7,a0
    16fc:	930e006d 	lbu	t6,109(t8)
    1700:	532efff3 	beql	t9,t6,16d0 <func_800EDD68+0x2c8>
    1704:	24630001 	addiu	v1,v1,1
    1708:	14660006 	bne	v1,a2,1724 <func_800EDD68+0x31c>
    170c:	240200ff 	li	v0,255
    1710:	3c030000 	lui	v1,0x0
    1714:	24630000 	addiu	v1,v1,0
    1718:	a3e20000 	sb	v0,0(ra)
    171c:	10000038 	b	1800 <func_800EDD68+0x3f8>
    1720:	a062078c 	sb	v0,1932(v1)
    1724:	25080001 	addiu	t0,t0,1
    1728:	310800ff 	andi	t0,t0,0xff
    172c:	010a082a 	slt	at,t0,t2
    1730:	1420ffd9 	bnez	at,1698 <func_800EDD68+0x290>
    1734:	00000000 	nop
    1738:	25290001 	addiu	t1,t1,1
    173c:	3129ffff 	andi	t1,t1,0xffff
    1740:	2921000c 	slti	at,t1,12
    1744:	1420ffcc 	bnez	at,1678 <func_800EDD68+0x270>
    1748:	00000000 	nop
    174c:	24090001 	li	t1,1
    1750:	90e3006d 	lbu	v1,109(a3)
    1754:	00e97821 	addu	t7,a3,t1
    1758:	91f8006d 	lbu	t8,109(t7)
    175c:	25290001 	addiu	t1,t1,1
    1760:	3129ffff 	andi	t1,t1,0xffff
    1764:	10780003 	beq	v1,t8,1774 <func_800EDD68+0x36c>
    1768:	00000000 	nop
    176c:	10000001 	b	1774 <func_800EDD68+0x36c>
    1770:	24090009 	li	t1,9
    1774:	29210008 	slti	at,t1,8
    1778:	1420fff6 	bnez	at,1754 <func_800EDD68+0x34c>
    177c:	01201025 	move	v0,t1
    1780:	24010008 	li	at,8
    1784:	14410006 	bne	v0,at,17a0 <func_800EDD68+0x398>
    1788:	3c030000 	lui	v1,0x0
    178c:	240200ff 	li	v0,255
    1790:	24630000 	addiu	v1,v1,0
    1794:	a3e20000 	sb	v0,0(ra)
    1798:	10000019 	b	1800 <func_800EDD68+0x3f8>
    179c:	a062078c 	sb	v0,1932(v1)
    17a0:	91a60000 	lbu	a2,0(t5)
    17a4:	00004825 	move	t1,zero
    17a8:	18c00010 	blez	a2,17ec <func_800EDD68+0x3e4>
    17ac:	3c030000 	lui	v1,0x0
    17b0:	24630000 	addiu	v1,v1,0
    17b4:	0009c8c0 	sll	t9,t1,0x3
    17b8:	00791021 	addu	v0,v1,t9
    17bc:	884f0820 	lwl	t7,2080(v0)
    17c0:	884e0824 	lwl	t6,2084(v0)
    17c4:	984f0823 	lwr	t7,2083(v0)
    17c8:	984e0827 	lwr	t6,2087(v0)
    17cc:	25290001 	addiu	t1,t1,1
    17d0:	3129ffff 	andi	t1,t1,0xffff
    17d4:	0126082a 	slt	at,t1,a2
    17d8:	a84f0780 	swl	t7,1920(v0)
    17dc:	a84e0784 	swl	t6,1924(v0)
    17e0:	b84f0783 	swr	t7,1923(v0)
    17e4:	1420fff3 	bnez	at,17b4 <func_800EDD68+0x3ac>
    17e8:	b84e0787 	swr	t6,1927(v0)
    17ec:	3c010000 	lui	at,0x0
    17f0:	10000002 	b	17fc <func_800EDD68+0x3f4>
    17f4:	a0200000 	sb	zero,0(at)
    17f8:	a062078c 	sb	v0,1932(v1)
    17fc:	a3e00000 	sb	zero,0(ra)
    1800:	8fbf0014 	lw	ra,20(sp)
    1804:	27bd0020 	addiu	sp,sp,32
    1808:	03e00008 	jr	ra
    180c:	00000000 	nop

00001810 <func_800EE170>:
    1810:	3c020000 	lui	v0,0x0
    1814:	90420000 	lbu	v0,0(v0)
    1818:	27bdffe8 	addiu	sp,sp,-24
    181c:	308500ff 	andi	a1,a0,0xff
    1820:	afbf0014 	sw	ra,20(sp)
    1824:	10a20041 	beq	a1,v0,192c <func_800EE170+0x11c>
    1828:	afa40018 	sw	a0,24(sp)
    182c:	10a00023 	beqz	a1,18bc <func_800EE170+0xac>
    1830:	3c0c0000 	lui	t4,0x0
    1834:	3c0e0000 	lui	t6,0x0
    1838:	8dce0000 	lw	t6,0(t6)
    183c:	3c010000 	lui	at,0x0
    1840:	240f00ff 	li	t7,255
    1844:	ac2e0000 	sw	t6,0(at)
    1848:	3c010000 	lui	at,0x0
    184c:	a02f0000 	sb	t7,0(at)
    1850:	3c010000 	lui	at,0x0
    1854:	24180057 	li	t8,87
    1858:	a0380000 	sb	t8,0(at)
    185c:	3c010000 	lui	at,0x0
    1860:	a0200000 	sb	zero,0(at)
    1864:	3c010000 	lui	at,0x0
    1868:	a0200000 	sb	zero,0(at)
    186c:	3c010000 	lui	at,0x0
    1870:	a0200000 	sb	zero,0(at)
    1874:	3c010000 	lui	at,0x0
    1878:	a0200000 	sb	zero,0(at)
    187c:	3c010000 	lui	at,0x0
    1880:	24190001 	li	t9,1
    1884:	a0390000 	sb	t9,0(at)
    1888:	3c010000 	lui	at,0x0
    188c:	3c090000 	lui	t1,0x0
    1890:	a0200000 	sb	zero,0(at)
    1894:	25290000 	addiu	t1,t1,0
    1898:	892b0000 	lwl	t3,0(t1)
    189c:	892a0004 	lwl	t2,4(t1)
    18a0:	992b0003 	lwr	t3,3(t1)
    18a4:	992a0007 	lwr	t2,7(t1)
    18a8:	3c080000 	lui	t0,0x0
    18ac:	25080000 	addiu	t0,t0,0
    18b0:	ad0b0000 	sw	t3,0(t0)
    18b4:	1000001b 	b	1924 <func_800EE170+0x114>
    18b8:	ad0a0004 	sw	t2,4(t0)
    18bc:	918c0000 	lbu	t4,0(t4)
    18c0:	3c0d0000 	lui	t5,0x0
    18c4:	24010002 	li	at,2
    18c8:	1580000b 	bnez	t4,18f8 <func_800EE170+0xe8>
    18cc:	24040001 	li	a0,1
    18d0:	3c0e0000 	lui	t6,0x0
    18d4:	25ce0000 	addiu	t6,t6,0
    18d8:	8dd80000 	lw	t8,0(t6)
    18dc:	8dcf0004 	lw	t7,4(t6)
    18e0:	25ad0000 	addiu	t5,t5,0
    18e4:	a9b80000 	swl	t8,0(t5)
    18e8:	a9af0004 	swl	t7,4(t5)
    18ec:	b9b80003 	swr	t8,3(t5)
    18f0:	10000008 	b	1914 <func_800EE170+0x104>
    18f4:	b9af0007 	swr	t7,7(t5)
    18f8:	14410003 	bne	v0,at,1908 <func_800EE170+0xf8>
    18fc:	24190001 	li	t9,1
    1900:	3c010000 	lui	at,0x0
    1904:	a0390000 	sb	t9,0(at)
    1908:	0c000000 	jal	0 <func_800EC960>
    190c:	a3a5001b 	sb	a1,27(sp)
    1910:	93a5001b 	lbu	a1,27(sp)
    1914:	3c010000 	lui	at,0x0
    1918:	a0200000 	sb	zero,0(at)
    191c:	3c010000 	lui	at,0x0
    1920:	a0200000 	sb	zero,0(at)
    1924:	3c010000 	lui	at,0x0
    1928:	a0250000 	sb	a1,0(at)
    192c:	8fbf0014 	lw	ra,20(sp)
    1930:	27bd0018 	addiu	sp,sp,24
    1934:	03e00008 	jr	ra
    1938:	00000000 	nop

0000193c <func_800EE29C>:
    193c:	3c040000 	lui	a0,0x0
    1940:	24840000 	addiu	a0,a0,0
    1944:	90820000 	lbu	v0,0(a0)
    1948:	3c030000 	lui	v1,0x0
    194c:	24630000 	addiu	v1,v1,0
    1950:	3c0e0000 	lui	t6,0x0
    1954:	a0620001 	sb	v0,1(v1)
    1958:	91ce0000 	lbu	t6,0(t6)
    195c:	240100ff 	li	at,255
    1960:	14410002 	bne	v0,at,196c <func_800EE29C+0x30>
    1964:	a06e0002 	sb	t6,2(v1)
    1968:	a0800000 	sb	zero,0(a0)
    196c:	03e00008 	jr	ra
    1970:	00000000 	nop

00001974 <func_800EE2D4>:
    1974:	3c0e0000 	lui	t6,0x0
    1978:	91ce0000 	lbu	t6,0(t6)
    197c:	27bdffe8 	addiu	sp,sp,-24
    1980:	afbf0014 	sw	ra,20(sp)
    1984:	3c010000 	lui	at,0x0
    1988:	31cf003f 	andi	t7,t6,0x3f
    198c:	0c000000 	jal	0 <func_800EC960>
    1990:	a02f0000 	sb	t7,0(at)
    1994:	3c030000 	lui	v1,0x0
    1998:	24630000 	addiu	v1,v1,0
    199c:	8fbf0014 	lw	ra,20(sp)
    19a0:	a0620001 	sb	v0,1(v1)
    19a4:	3c180000 	lui	t8,0x0
    19a8:	93180000 	lbu	t8,0(t8)
    19ac:	27bd0018 	addiu	sp,sp,24
    19b0:	03e00008 	jr	ra
    19b4:	a0780002 	sb	t8,2(v1)

000019b8 <func_800EE318>:
    19b8:	3c040000 	lui	a0,0x0
    19bc:	90840000 	lbu	a0,0(a0)
    19c0:	27bdffe8 	addiu	sp,sp,-24
    19c4:	afbf0014 	sw	ra,20(sp)
    19c8:	308e003f 	andi	t6,a0,0x3f
    19cc:	29c10010 	slti	at,t6,16
    19d0:	10200006 	beqz	at,19ec <func_800EE318+0x34>
    19d4:	00000000 	nop
    19d8:	0c000000 	jal	0 <func_800EC960>
    19dc:	00000000 	nop
    19e0:	3c030000 	lui	v1,0x0
    19e4:	24630000 	addiu	v1,v1,0
    19e8:	a0620000 	sb	v0,0(v1)
    19ec:	3c0f0000 	lui	t7,0x0
    19f0:	91ef0000 	lbu	t7,0(t7)
    19f4:	3c030000 	lui	v1,0x0
    19f8:	24630000 	addiu	v1,v1,0
    19fc:	3c180000 	lui	t8,0x0
    1a00:	a06f0001 	sb	t7,1(v1)
    1a04:	8f180000 	lw	t8,0(t8)
    1a08:	3c190000 	lui	t9,0x0
    1a0c:	27390000 	addiu	t9,t9,0
    1a10:	13190005 	beq	t8,t9,1a28 <func_800EE318+0x70>
    1a14:	3c020000 	lui	v0,0x0
    1a18:	3c080000 	lui	t0,0x0
    1a1c:	95080000 	lhu	t0,0(t0)
    1a20:	1000000d 	b	1a58 <func_800EE318+0xa0>
    1a24:	a0680002 	sb	t0,2(v1)
    1a28:	94420000 	lhu	v0,0(v0)
    1a2c:	14400003 	bnez	v0,1a3c <func_800EE318+0x84>
    1a30:	2449ffff 	addiu	t1,v0,-1
    1a34:	10000008 	b	1a58 <func_800EE318+0xa0>
    1a38:	a0600002 	sb	zero,2(v1)
    1a3c:	05210004 	bgez	t1,1a50 <func_800EE318+0x98>
    1a40:	312a0007 	andi	t2,t1,0x7
    1a44:	11400002 	beqz	t2,1a50 <func_800EE318+0x98>
    1a48:	00000000 	nop
    1a4c:	254afff8 	addiu	t2,t2,-8
    1a50:	254b0001 	addiu	t3,t2,1
    1a54:	a06b0002 	sb	t3,2(v1)
    1a58:	8fbf0014 	lw	ra,20(sp)
    1a5c:	27bd0018 	addiu	sp,sp,24
    1a60:	03e00008 	jr	ra
    1a64:	00000000 	nop

00001a68 <func_800EE3C8>:
    1a68:	3c020000 	lui	v0,0x0
    1a6c:	03e00008 	jr	ra
    1a70:	24420000 	addiu	v0,v0,0

00001a74 <func_800EE3D4>:
    1a74:	3c030000 	lui	v1,0x0
    1a78:	24630000 	addiu	v1,v1,0
    1a7c:	906e0001 	lbu	t6,1(v1)
    1a80:	29c100fe 	slti	at,t6,254
    1a84:	10200002 	beqz	at,1a90 <func_800EE3D4+0x1c>
    1a88:	3c010000 	lui	at,0x0
    1a8c:	ac200000 	sw	zero,0(at)
    1a90:	03e00008 	jr	ra
    1a94:	00601025 	move	v0,v1

00001a98 <func_800EE3F8>:
    1a98:	3c020000 	lui	v0,0x0
    1a9c:	03e00008 	jr	ra
    1aa0:	24420000 	addiu	v0,v0,0

00001aa4 <func_800EE404>:
    1aa4:	3c040000 	lui	a0,0x0
    1aa8:	90840000 	lbu	a0,0(a0)
    1aac:	27bdffe8 	addiu	sp,sp,-24
    1ab0:	afbf0014 	sw	ra,20(sp)
    1ab4:	10800055 	beqz	a0,1c0c <func_800EE404+0x168>
    1ab8:	3c0e0000 	lui	t6,0x0
    1abc:	3c0f0000 	lui	t7,0x0
    1ac0:	8def0000 	lw	t7,0(t7)
    1ac4:	8dce0000 	lw	t6,0(t6)
    1ac8:	3c030000 	lui	v1,0x0
    1acc:	3c190000 	lui	t9,0x0
    1ad0:	01cfc023 	subu	t8,t6,t7
    1ad4:	2f010003 	sltiu	at,t8,3
    1ad8:	5420004d 	bnezl	at,1c10 <func_800EE404+0x16c>
    1adc:	8fbf0014 	lw	ra,20(sp)
    1ae0:	90630000 	lbu	v1,0(v1)
    1ae4:	93390000 	lbu	t9,0(t9)
    1ae8:	00001025 	move	v0,zero
    1aec:	3c0f0000 	lui	t7,0x0
    1af0:	10790029 	beq	v1,t9,1b98 <func_800EE404+0xf4>
    1af4:	3c180000 	lui	t8,0x0
    1af8:	240100ff 	li	at,255
    1afc:	1061000b 	beq	v1,at,1b2c <func_800EE404+0x88>
    1b00:	3c020000 	lui	v0,0x0
    1b04:	3c080000 	lui	t0,0x0
    1b08:	91080000 	lbu	t0,0(t0)
    1b0c:	3c010000 	lui	at,0x0
    1b10:	24420000 	addiu	v0,v0,0
    1b14:	3109003f 	andi	t1,t0,0x3f
    1b18:	a0290000 	sb	t1,0(at)
    1b1c:	904a0000 	lbu	t2,0(v0)
    1b20:	254b0001 	addiu	t3,t2,1
    1b24:	1000000d 	b	1b5c <func_800EE404+0xb8>
    1b28:	a04b0000 	sb	t3,0(v0)
    1b2c:	24010002 	li	at,2
    1b30:	1481000a 	bne	a0,at,1b5c <func_800EE404+0xb8>
    1b34:	3c020000 	lui	v0,0x0
    1b38:	24420000 	addiu	v0,v0,0
    1b3c:	904c0000 	lbu	t4,0(v0)
    1b40:	24010008 	li	at,8
    1b44:	15810005 	bne	t4,at,1b5c <func_800EE404+0xb8>
    1b48:	00000000 	nop
    1b4c:	0c000000 	jal	0 <func_800EC960>
    1b50:	24040001 	li	a0,1
    1b54:	1000002e 	b	1c10 <func_800EE404+0x16c>
    1b58:	8fbf0014 	lw	ra,20(sp)
    1b5c:	3c020000 	lui	v0,0x0
    1b60:	24420000 	addiu	v0,v0,0
    1b64:	904d0000 	lbu	t5,0(v0)
    1b68:	29a10009 	slti	at,t5,9
    1b6c:	14200008 	bnez	at,1b90 <func_800EE404+0xec>
    1b70:	24010002 	li	at,2
    1b74:	14810005 	bne	a0,at,1b8c <func_800EE404+0xe8>
    1b78:	240e0001 	li	t6,1
    1b7c:	0c000000 	jal	0 <func_800EC960>
    1b80:	24040001 	li	a0,1
    1b84:	10000022 	b	1c10 <func_800EE404+0x16c>
    1b88:	8fbf0014 	lw	ra,20(sp)
    1b8c:	a04e0000 	sb	t6,0(v0)
    1b90:	10000016 	b	1bec <func_800EE404+0x148>
    1b94:	24020001 	li	v0,1
    1b98:	81ef0000 	lb	t7,0(t7)
    1b9c:	93180000 	lbu	t8,0(t8)
    1ba0:	3c190000 	lui	t9,0x0
    1ba4:	3c080000 	lui	t0,0x0
    1ba8:	11f80003 	beq	t7,t8,1bb8 <func_800EE404+0x114>
    1bac:	00000000 	nop
    1bb0:	1000000e 	b	1bec <func_800EE404+0x148>
    1bb4:	24020001 	li	v0,1
    1bb8:	83390000 	lb	t9,0(t9)
    1bbc:	91080000 	lbu	t0,0(t0)
    1bc0:	3c090000 	lui	t1,0x0
    1bc4:	3c0a0000 	lui	t2,0x0
    1bc8:	13280003 	beq	t9,t0,1bd8 <func_800EE404+0x134>
    1bcc:	00000000 	nop
    1bd0:	10000006 	b	1bec <func_800EE404+0x148>
    1bd4:	24020001 	li	v0,1
    1bd8:	81290000 	lb	t1,0(t1)
    1bdc:	814a0000 	lb	t2,0(t2)
    1be0:	112a0002 	beq	t1,t2,1bec <func_800EE404+0x148>
    1be4:	00000000 	nop
    1be8:	24020001 	li	v0,1
    1bec:	50400008 	beqzl	v0,1c10 <func_800EE404+0x16c>
    1bf0:	8fbf0014 	lw	ra,20(sp)
    1bf4:	0c000000 	jal	0 <func_800EC960>
    1bf8:	00002025 	move	a0,zero
    1bfc:	3c0b0000 	lui	t3,0x0
    1c00:	8d6b0000 	lw	t3,0(t3)
    1c04:	3c010000 	lui	at,0x0
    1c08:	ac2b0000 	sw	t3,0(at)
    1c0c:	8fbf0014 	lw	ra,20(sp)
    1c10:	27bd0018 	addiu	sp,sp,24
    1c14:	03e00008 	jr	ra
    1c18:	00000000 	nop

00001c1c <func_800EE57C>:
    1c1c:	27bdffe0 	addiu	sp,sp,-32
    1c20:	afa40020 	sw	a0,32(sp)
    1c24:	308400ff 	andi	a0,a0,0xff
    1c28:	28810003 	slti	at,a0,3
    1c2c:	afbf001c 	sw	ra,28(sp)
    1c30:	14200002 	bnez	at,1c3c <func_800EE57C+0x20>
    1c34:	afb00018 	sw	s0,24(sp)
    1c38:	24040002 	li	a0,2
    1c3c:	3c0e0000 	lui	t6,0x0
    1c40:	01c47021 	addu	t6,t6,a0
    1c44:	91ce0000 	lbu	t6,0(t6)
    1c48:	3c010000 	lui	at,0x0
    1c4c:	a0200000 	sb	zero,0(at)
    1c50:	3c010000 	lui	at,0x0
    1c54:	00008025 	move	s0,zero
    1c58:	a02e0000 	sb	t6,0(at)
    1c5c:	0c000000 	jal	0 <func_800EC960>
    1c60:	00000000 	nop
    1c64:	26100001 	addiu	s0,s0,1
    1c68:	321000ff 	andi	s0,s0,0xff
    1c6c:	2a010003 	slti	at,s0,3
    1c70:	1420fffa 	bnez	at,1c5c <func_800EE57C+0x40>
    1c74:	00000000 	nop
    1c78:	8fbf001c 	lw	ra,28(sp)
    1c7c:	8fb00018 	lw	s0,24(sp)
    1c80:	27bd0020 	addiu	sp,sp,32
    1c84:	03e00008 	jr	ra
    1c88:	00000000 	nop

00001c8c <func_800EE5EC>:
    1c8c:	3c060000 	lui	a2,0x0
    1c90:	24c60000 	addiu	a2,a2,0
    1c94:	3c0e0000 	lui	t6,0x0
    1c98:	91ce0000 	lbu	t6,0(t6)
    1c9c:	90cf0000 	lbu	t7,0(a2)
    1ca0:	27bdffe8 	addiu	sp,sp,-24
    1ca4:	afbf0014 	sw	ra,20(sp)
    1ca8:	15cf0003 	bne	t6,t7,1cb8 <func_800EE5EC+0x2c>
    1cac:	00000000 	nop
    1cb0:	10000034 	b	1d84 <func_800EE5EC+0xf8>
    1cb4:	24020001 	li	v0,1
    1cb8:	0c000000 	jal	0 <func_800EC960>
    1cbc:	00000000 	nop
    1cc0:	24080005 	li	t0,5
    1cc4:	0048001b 	divu	zero,v0,t0
    1cc8:	3c060000 	lui	a2,0x0
    1ccc:	24c60000 	addiu	a2,a2,0
    1cd0:	90c30000 	lbu	v1,0(a2)
    1cd4:	3c040000 	lui	a0,0x0
    1cd8:	3c070000 	lui	a3,0x0
    1cdc:	24e70000 	addiu	a3,a3,0
    1ce0:	24840000 	addiu	a0,a0,0
    1ce4:	0000c010 	mfhi	t8
    1ce8:	000348c0 	sll	t1,v1,0x3
    1cec:	0098c821 	addu	t9,a0,t8
    1cf0:	00e95021 	addu	t2,a3,t1
    1cf4:	93250000 	lbu	a1,0(t9)
    1cf8:	914b0818 	lbu	t3,2072(t2)
    1cfc:	15000002 	bnez	t0,1d08 <func_800EE5EC+0x7c>
    1d00:	00000000 	nop
    1d04:	0007000d 	break	0x7
    1d08:	2418002d 	li	t8,45
    1d0c:	14ab0009 	bne	a1,t3,1d34 <func_800EE5EC+0xa8>
    1d10:	000378c0 	sll	t7,v1,0x3
    1d14:	244c0001 	addiu	t4,v0,1
    1d18:	0188001b 	divu	zero,t4,t0
    1d1c:	00006810 	mfhi	t5
    1d20:	008d7021 	addu	t6,a0,t5
    1d24:	91c50000 	lbu	a1,0(t6)
    1d28:	15000002 	bnez	t0,1d34 <func_800EE5EC+0xa8>
    1d2c:	00000000 	nop
    1d30:	0007000d 	break	0x7
    1d34:	00ef1021 	addu	v0,a3,t7
    1d38:	24690001 	addiu	t1,v1,1
    1d3c:	24190050 	li	t9,80
    1d40:	312300ff 	andi	v1,t1,0xff
    1d44:	a0450820 	sb	a1,2080(v0)
    1d48:	a4580822 	sh	t8,2082(v0)
    1d4c:	a0590824 	sb	t9,2084(v0)
    1d50:	a0400825 	sb	zero,2085(v0)
    1d54:	a0400826 	sb	zero,2086(v0)
    1d58:	000350c0 	sll	t2,v1,0x3
    1d5c:	00ea1021 	addu	v0,a3,t2
    1d60:	240800ff 	li	t0,255
    1d64:	a0480820 	sb	t0,2080(v0)
    1d68:	a4400822 	sh	zero,2082(v0)
    1d6c:	000358c0 	sll	t3,v1,0x3
    1d70:	00eb2021 	addu	a0,a3,t3
    1d74:	a0c90000 	sb	t1,0(a2)
    1d78:	a0880828 	sb	t0,2088(a0)
    1d7c:	a480082a 	sh	zero,2090(a0)
    1d80:	00001025 	move	v0,zero
    1d84:	8fbf0014 	lw	ra,20(sp)
    1d88:	27bd0018 	addiu	sp,sp,24
    1d8c:	03e00008 	jr	ra
    1d90:	00000000 	nop

00001d94 <func_800EE6F4>:
    1d94:	3c0f0000 	lui	t7,0x0
    1d98:	81ef0000 	lb	t7,0(t7)
    1d9c:	3c0e0000 	lui	t6,0x0
    1da0:	8dce289c 	lw	t6,10396(t6)
    1da4:	27bdffe8 	addiu	sp,sp,-24
    1da8:	3c010000 	lui	at,0x0
    1dac:	afbf0014 	sw	ra,20(sp)
    1db0:	11e0003a 	beqz	t7,1e9c <func_800EE6F4+0x108>
    1db4:	ac2e0000 	sw	t6,0(at)
    1db8:	3c180000 	lui	t8,0x0
    1dbc:	93180000 	lbu	t8,0(t8)
    1dc0:	24010001 	li	at,1
    1dc4:	17010003 	bne	t8,at,1dd4 <func_800EE6F4+0x40>
    1dc8:	00000000 	nop
    1dcc:	0c000000 	jal	0 <func_800EC960>
    1dd0:	00000000 	nop
    1dd4:	3c190000 	lui	t9,0x0
    1dd8:	93390000 	lbu	t9,0(t9)
    1ddc:	3c080000 	lui	t0,0x0
    1de0:	17200007 	bnez	t9,1e00 <func_800EE6F4+0x6c>
    1de4:	00000000 	nop
    1de8:	91080000 	lbu	t0,0(t0)
    1dec:	24010001 	li	at,1
    1df0:	15010003 	bne	t0,at,1e00 <func_800EE6F4+0x6c>
    1df4:	00000000 	nop
    1df8:	0c000000 	jal	0 <func_800EC960>
    1dfc:	00002025 	move	a0,zero
    1e00:	3c020000 	lui	v0,0x0
    1e04:	8c420000 	lw	v0,0(v0)
    1e08:	10400009 	beqz	v0,1e30 <func_800EE6F4+0x9c>
    1e0c:	30494000 	andi	t1,v0,0x4000
    1e10:	11200005 	beqz	t1,1e28 <func_800EE6F4+0x94>
    1e14:	00000000 	nop
    1e18:	0c000000 	jal	0 <func_800EC960>
    1e1c:	00000000 	nop
    1e20:	10000003 	b	1e30 <func_800EE6F4+0x9c>
    1e24:	00000000 	nop
    1e28:	0c000000 	jal	0 <func_800EC960>
    1e2c:	00000000 	nop
    1e30:	0c000000 	jal	0 <func_800EC960>
    1e34:	00000000 	nop
    1e38:	3c0b0000 	lui	t3,0x0
    1e3c:	916b0000 	lbu	t3,0(t3)
    1e40:	3c0a0000 	lui	t2,0x0
    1e44:	8d4a0000 	lw	t2,0(t2)
    1e48:	3c010000 	lui	at,0x0
    1e4c:	15600003 	bnez	t3,1e5c <func_800EE6F4+0xc8>
    1e50:	ac2a0000 	sw	t2,0(at)
    1e54:	0c000000 	jal	0 <func_800EC960>
    1e58:	00000000 	nop
    1e5c:	3c0c0000 	lui	t4,0x0
    1e60:	8d8c0000 	lw	t4,0(t4)
    1e64:	3c0d0000 	lui	t5,0x0
    1e68:	3c0e0000 	lui	t6,0x0
    1e6c:	11800008 	beqz	t4,1e90 <func_800EE6F4+0xfc>
    1e70:	3c180000 	lui	t8,0x0
    1e74:	91ad0000 	lbu	t5,0(t5)
    1e78:	91ce0000 	lbu	t6,0(t6)
    1e7c:	240f0001 	li	t7,1
    1e80:	3c010000 	lui	at,0x0
    1e84:	11ae0002 	beq	t5,t6,1e90 <func_800EE6F4+0xfc>
    1e88:	00000000 	nop
    1e8c:	a02f0000 	sb	t7,0(at)
    1e90:	93180000 	lbu	t8,0(t8)
    1e94:	3c010000 	lui	at,0x0
    1e98:	a0380000 	sb	t8,0(at)
    1e9c:	0c000000 	jal	0 <func_800EC960>
    1ea0:	00000000 	nop
    1ea4:	0c000000 	jal	0 <func_800EC960>
    1ea8:	00000000 	nop
    1eac:	0c000000 	jal	0 <func_800EC960>
    1eb0:	00000000 	nop
    1eb4:	8fbf0014 	lw	ra,20(sp)
    1eb8:	27bd0018 	addiu	sp,sp,24
    1ebc:	03e00008 	jr	ra
    1ec0:	00000000 	nop

00001ec4 <func_800EE824>:
    1ec4:	3c050000 	lui	a1,0x0
    1ec8:	90a50000 	lbu	a1,0(a1)
    1ecc:	27bdffe8 	addiu	sp,sp,-24
    1ed0:	afbf0014 	sw	ra,20(sp)
    1ed4:	10a00008 	beqz	a1,1ef8 <func_800EE824+0x34>
    1ed8:	00a01025 	move	v0,a1
    1edc:	24010001 	li	at,1
    1ee0:	1041001d 	beq	v0,at,1f58 <func_800EE824+0x94>
    1ee4:	24010002 	li	at,2
    1ee8:	1041002e 	beq	v0,at,1fa4 <func_800EE824+0xe0>
    1eec:	00000000 	nop
    1ef0:	10000034 	b	1fc4 <func_800EE824+0x100>
    1ef4:	8fbf0014 	lw	ra,20(sp)
    1ef8:	3c030000 	lui	v1,0x0
    1efc:	94630000 	lhu	v1,0(v1)
    1f00:	3c010000 	lui	at,0x0
    1f04:	3c0e0000 	lui	t6,0x0
    1f08:	2c620001 	sltiu	v0,v1,1
    1f0c:	2463ffff 	addiu	v1,v1,-1
    1f10:	1040002b 	beqz	v0,1fc0 <func_800EE824+0xfc>
    1f14:	a4230000 	sh	v1,0(at)
    1f18:	91ce0000 	lbu	t6,0(t6)
    1f1c:	24a50001 	addiu	a1,a1,1
    1f20:	00002025 	move	a0,zero
    1f24:	29c10007 	slti	at,t6,7
    1f28:	10200003 	beqz	at,1f38 <func_800EE824+0x74>
    1f2c:	3c010000 	lui	at,0x0
    1f30:	10000005 	b	1f48 <func_800EE824+0x84>
    1f34:	a0250000 	sb	a1,0(at)
    1f38:	24050003 	li	a1,3
    1f3c:	3c010000 	lui	at,0x0
    1f40:	0c000000 	jal	0 <func_800EC960>
    1f44:	a0250000 	sb	a1,0(at)
    1f48:	240304b0 	li	v1,1200
    1f4c:	3c010000 	lui	at,0x0
    1f50:	1000001b 	b	1fc0 <func_800EE824+0xfc>
    1f54:	a4230000 	sh	v1,0(at)
    1f58:	0c000000 	jal	0 <func_800EC960>
    1f5c:	00002025 	move	a0,zero
    1f60:	3c040000 	lui	a0,0x0
    1f64:	0c000000 	jal	0 <func_800EC960>
    1f68:	90840000 	lbu	a0,0(a0)
    1f6c:	2404000f 	li	a0,15
    1f70:	0c000000 	jal	0 <func_800EC960>
    1f74:	24050001 	li	a1,1
    1f78:	3c0f0000 	lui	t7,0x0
    1f7c:	91ef0000 	lbu	t7,0(t7)
    1f80:	3c050000 	lui	a1,0x0
    1f84:	90a50000 	lbu	a1,0(a1)
    1f88:	3c010000 	lui	at,0x0
    1f8c:	25f80001 	addiu	t8,t7,1
    1f90:	a0380000 	sb	t8,0(at)
    1f94:	3c010000 	lui	at,0x0
    1f98:	24a50001 	addiu	a1,a1,1
    1f9c:	10000008 	b	1fc0 <func_800EE824+0xfc>
    1fa0:	a0250000 	sb	a1,0(at)
    1fa4:	0c000000 	jal	0 <func_800EC960>
    1fa8:	00000000 	nop
    1fac:	90590001 	lbu	t9,1(v0)
    1fb0:	3c010000 	lui	at,0x0
    1fb4:	57200003 	bnezl	t9,1fc4 <func_800EE824+0x100>
    1fb8:	8fbf0014 	lw	ra,20(sp)
    1fbc:	a0200000 	sb	zero,0(at)
    1fc0:	8fbf0014 	lw	ra,20(sp)
    1fc4:	27bd0018 	addiu	sp,sp,24
    1fc8:	03e00008 	jr	ra
    1fcc:	00000000 	nop

00001fd0 <func_800EE930>:
    1fd0:	240300ff 	li	v1,255
    1fd4:	3c020000 	lui	v0,0x0
    1fd8:	3c040000 	lui	a0,0x0
    1fdc:	3c050000 	lui	a1,0x0
    1fe0:	24a50000 	addiu	a1,a1,0
    1fe4:	24840000 	addiu	a0,a0,0
    1fe8:	24420000 	addiu	v0,v0,0
    1fec:	a0430000 	sb	v1,0(v0)
    1ff0:	a0430001 	sb	v1,1(v0)
    1ff4:	a0400002 	sb	zero,2(v0)
    1ff8:	a0830000 	sb	v1,0(a0)
    1ffc:	a0800001 	sb	zero,1(a0)
    2000:	a0800002 	sb	zero,2(a0)
    2004:	a0a30000 	sb	v1,0(a1)
    2008:	a0a30001 	sb	v1,1(a1)
    200c:	a0a00002 	sb	zero,2(a1)
    2010:	3c010000 	lui	at,0x0
    2014:	03e00008 	jr	ra
    2018:	a0200000 	sb	zero,0(at)

0000201c <func_800EE97C>:
    201c:	27bdff80 	addiu	sp,sp,-128
    2020:	afbf0014 	sw	ra,20(sp)
    2024:	3c040000 	lui	a0,0x0
    2028:	24840000 	addiu	a0,a0,0
    202c:	27a50020 	addiu	a1,sp,32
    2030:	0c000000 	jal	0 <func_800EC960>
    2034:	00003025 	move	a2,zero
    2038:	97ae0068 	lhu	t6,104(sp)
    203c:	3c030000 	lui	v1,0x0
    2040:	3c010000 	lui	at,0x0
    2044:	24630000 	addiu	v1,v1,0
    2048:	ac2e0000 	sw	t6,0(at)
    204c:	8c6f0000 	lw	t7,0(v1)
    2050:	8fbf0014 	lw	ra,20(sp)
    2054:	3c010000 	lui	at,0x0
    2058:	01cfc026 	xor	t8,t6,t7
    205c:	030ec824 	and	t9,t8,t6
    2060:	ac390000 	sw	t9,0(at)
    2064:	27bd0080 	addiu	sp,sp,128
    2068:	03e00008 	jr	ra
    206c:	ac6e0000 	sw	t6,0(v1)

00002070 <func_800EE9D0>:
    2070:	afa50004 	sw	a1,4(sp)
    2074:	30a500ff 	andi	a1,a1,0xff
    2078:	24020001 	li	v0,1
    207c:	00a03025 	move	a2,a1
    2080:	18a00016 	blez	a1,20dc <func_800EE9D0+0x6c>
    2084:	00001825 	move	v1,zero
    2088:	3c0e0000 	lui	t6,0x0
    208c:	25ce0000 	addiu	t6,t6,0
    2090:	00ce3821 	addu	a3,a2,t6
    2094:	00004025 	move	t0,zero
    2098:	240a0030 	li	t2,48
    209c:	24090031 	li	t1,49
    20a0:	00827824 	and	t7,a0,v0
    20a4:	11e00005 	beqz	t7,20bc <func_800EE9D0+0x4c>
    20a8:	00021040 	sll	v0,v0,0x1
    20ac:	0008c023 	negu	t8,t0
    20b0:	00f8c821 	addu	t9,a3,t8
    20b4:	10000004 	b	20c8 <func_800EE9D0+0x58>
    20b8:	a329ffff 	sb	t1,-1(t9)
    20bc:	00085823 	negu	t3,t0
    20c0:	00eb6021 	addu	t4,a3,t3
    20c4:	a18affff 	sb	t2,-1(t4)
    20c8:	24630001 	addiu	v1,v1,1
    20cc:	306300ff 	andi	v1,v1,0xff
    20d0:	0066082a 	slt	at,v1,a2
    20d4:	1420fff2 	bnez	at,20a0 <func_800EE9D0+0x30>
    20d8:	00604025 	move	t0,v1
    20dc:	3c030000 	lui	v1,0x0
    20e0:	24620000 	addiu	v0,v1,0
    20e4:	00456821 	addu	t5,v0,a1
    20e8:	03e00008 	jr	ra
    20ec:	a1a00000 	sb	zero,0(t5)

000020f0 <func_800EEA50>:
    20f0:	27bdff50 	addiu	sp,sp,-176
    20f4:	3c0e0000 	lui	t6,0x0
    20f8:	95ce0000 	lhu	t6,0(t6)
    20fc:	afbf0064 	sw	ra,100(sp)
    2100:	afb00040 	sw	s0,64(sp)
    2104:	240f0001 	li	t7,1
    2108:	3c010000 	lui	at,0x0
    210c:	afbe0060 	sw	s8,96(sp)
    2110:	afb7005c 	sw	s7,92(sp)
    2114:	afb60058 	sw	s6,88(sp)
    2118:	afb50054 	sw	s5,84(sp)
    211c:	afb40050 	sw	s4,80(sp)
    2120:	afb3004c 	sw	s3,76(sp)
    2124:	afb20048 	sw	s2,72(sp)
    2128:	afb10044 	sw	s1,68(sp)
    212c:	f7b60038 	sdc1	$f22,56(sp)
    2130:	f7b40030 	sdc1	$f20,48(sp)
    2134:	afa400b0 	sw	a0,176(sp)
    2138:	00008025 	move	s0,zero
    213c:	a02f0000 	sb	t7,0(at)
    2140:	24050003 	li	a1,3
    2144:	24060002 	li	a2,2
    2148:	0c000000 	jal	0 <func_800EC960>
    214c:	a7ae0098 	sh	t6,152(sp)
    2150:	3c080000 	lui	t0,0x0
    2154:	91080000 	lbu	t0,0(t0)
    2158:	240200ff 	li	v0,255
    215c:	240d00ff 	li	t5,255
    2160:	31180004 	andi	t8,t0,0x4
    2164:	0018c883 	sra	t9,t8,0x2
    2168:	03220019 	multu	t9,v0
    216c:	310a0002 	andi	t2,t0,0x2
    2170:	000a5843 	sra	t3,t2,0x1
    2174:	310c0001 	andi	t4,t0,0x1
    2178:	afad0010 	sw	t5,16(sp)
    217c:	8fa400b0 	lw	a0,176(sp)
    2180:	00002812 	mflo	a1
	...
    218c:	01620019 	multu	t3,v0
    2190:	00003012 	mflo	a2
	...
    219c:	01820019 	multu	t4,v0
    21a0:	00003812 	mflo	a3
    21a4:	0c000000 	jal	0 <func_800EC960>
    21a8:	00000000 	nop
    21ac:	3c050000 	lui	a1,0x0
    21b0:	24a50000 	addiu	a1,a1,0
    21b4:	0c000000 	jal	0 <func_800EC960>
    21b8:	8fa400b0 	lw	a0,176(sp)
    21bc:	8fa400b0 	lw	a0,176(sp)
    21c0:	24050003 	li	a1,3
    21c4:	0c000000 	jal	0 <func_800EC960>
    21c8:	24060003 	li	a2,3
    21cc:	3c0e0000 	lui	t6,0x0
    21d0:	91ce0000 	lbu	t6,0(t6)
    21d4:	3c180000 	lui	t8,0x0
    21d8:	27180000 	addiu	t8,t8,0
    21dc:	000e7880 	sll	t7,t6,0x2
    21e0:	01ee7823 	subu	t7,t7,t6
    21e4:	000f78c0 	sll	t7,t7,0x3
    21e8:	3c050000 	lui	a1,0x0
    21ec:	01ee7823 	subu	t7,t7,t6
    21f0:	01f83021 	addu	a2,t7,t8
    21f4:	24a50000 	addiu	a1,a1,0
    21f8:	0c000000 	jal	0 <func_800EC960>
    21fc:	8fa400b0 	lw	a0,176(sp)
    2200:	3c050000 	lui	a1,0x0
    2204:	90a50000 	lbu	a1,0(a1)
    2208:	3c040000 	lui	a0,0x0
    220c:	3c180000 	lui	t8,0x0
    2210:	0005c8c0 	sll	t9,a1,0x3
    2214:	0325c823 	subu	t9,t9,a1
    2218:	0019c8c0 	sll	t9,t9,0x3
    221c:	00992021 	addu	a0,a0,t9
    2220:	90840000 	lbu	a0,0(a0)
    2224:	0000b025 	move	s6,zero
    2228:	3c0e0000 	lui	t6,0x0
    222c:	18800013 	blez	a0,227c <func_800EEA50+0x18c>
    2230:	27180000 	addiu	t8,t8,0
    2234:	3c020000 	lui	v0,0x0
    2238:	8c42352c 	lw	v0,13612(v0)
    223c:	24070001 	li	a3,1
    2240:	240300e0 	li	v1,224
    2244:	02c30019 	multu	s6,v1
    2248:	26d60001 	addiu	s6,s6,1
    224c:	32d600ff 	andi	s6,s6,0xff
    2250:	02c4082a 	slt	at,s6,a0
    2254:	00005012 	mflo	t2
    2258:	004a5821 	addu	t3,v0,t2
    225c:	8d6c00c0 	lw	t4,192(t3)
    2260:	000c6fc2 	srl	t5,t4,0x1f
    2264:	14ed0003 	bne	a3,t5,2274 <func_800EEA50+0x184>
    2268:	00000000 	nop
    226c:	26100001 	addiu	s0,s0,1
    2270:	321000ff 	andi	s0,s0,0xff
    2274:	1420fff3 	bnez	at,2244 <func_800EEA50+0x154>
    2278:	00000000 	nop
    227c:	91ce0000 	lbu	t6,0(t6)
    2280:	afb00078 	sw	s0,120(sp)
    2284:	00b81021 	addu	v0,a1,t8
    2288:	01d0082a 	slt	at,t6,s0
    228c:	10200003 	beqz	at,229c <func_800EEA50+0x1ac>
    2290:	3c140000 	lui	s4,0x0
    2294:	3c010000 	lui	at,0x0
    2298:	a0300000 	sb	s0,0(at)
    229c:	90590000 	lbu	t9,0(v0)
    22a0:	8faa0078 	lw	t2,120(sp)
    22a4:	3c150000 	lui	s5,0x0
    22a8:	26940000 	addiu	s4,s4,0
    22ac:	032a082a 	slt	at,t9,t2
    22b0:	10200002 	beqz	at,22bc <func_800EEA50+0x1cc>
    22b4:	26b50000 	addiu	s5,s5,0
    22b8:	a0500000 	sb	s0,0(v0)
    22bc:	928b0000 	lbu	t3,0(s4)
    22c0:	3c160000 	lui	s6,0x0
    22c4:	26d60000 	addiu	s6,s6,0
    22c8:	11600097 	beqz	t3,2528 <func_800EEA50+0x438>
    22cc:	8fa400b0 	lw	a0,176(sp)
    22d0:	82a50000 	lb	a1,0(s5)
    22d4:	0c000000 	jal	0 <func_800EC960>
    22d8:	82c60000 	lb	a2,0(s6)
    22dc:	92820002 	lbu	v0,2(s4)
    22e0:	240300c8 	li	v1,200
    22e4:	241900ff 	li	t9,255
    22e8:	304c0004 	andi	t4,v0,0x4
    22ec:	000c6883 	sra	t5,t4,0x2
    22f0:	01a30019 	multu	t5,v1
    22f4:	304e0002 	andi	t6,v0,0x2
    22f8:	000e7843 	sra	t7,t6,0x1
    22fc:	30580001 	andi	t8,v0,0x1
    2300:	afb90010 	sw	t9,16(sp)
    2304:	8fa400b0 	lw	a0,176(sp)
    2308:	00002812 	mflo	a1
	...
    2314:	01e30019 	multu	t7,v1
    2318:	00003012 	mflo	a2
	...
    2324:	03030019 	multu	t8,v1
    2328:	00003812 	mflo	a3
    232c:	0c000000 	jal	0 <func_800EC960>
    2330:	00000000 	nop
    2334:	3c050000 	lui	a1,0x0
    2338:	24a50000 	addiu	a1,a1,0
    233c:	0c000000 	jal	0 <func_800EC960>
    2340:	8fa400b0 	lw	a0,176(sp)
    2344:	92840001 	lbu	a0,1(s4)
    2348:	3c1e0000 	lui	s8,0x0
    234c:	83de0000 	lb	s8,0(s8)
    2350:	24840001 	addiu	a0,a0,1
    2354:	18800074 	blez	a0,2528 <func_800EEA50+0x438>
    2358:	00009025 	move	s2,zero
    235c:	24170005 	li	s7,5
    2360:	24130078 	li	s3,120
    2364:	241100b4 	li	s1,180
    2368:	17c0000b 	bnez	s8,2398 <func_800EEA50+0x2a8>
    236c:	3c0c0000 	lui	t4,0x0
    2370:	3c0a0000 	lui	t2,0x0
    2374:	914a0000 	lbu	t2,0(t2)
    2378:	24010001 	li	at,1
    237c:	55410004 	bnel	t2,at,2390 <func_800EEA50+0x2a0>
    2380:	00049600 	sll	s2,a0,0x18
    2384:	10000007 	b	23a4 <func_800EEA50+0x2b4>
    2388:	241e0018 	li	s8,24
    238c:	00049600 	sll	s2,a0,0x18
    2390:	10000004 	b	23a4 <func_800EEA50+0x2b4>
    2394:	00129603 	sra	s2,s2,0x18
    2398:	27deffff 	addiu	s8,s8,-1
    239c:	001ef600 	sll	s8,s8,0x18
    23a0:	001ef603 	sra	s8,s8,0x18
    23a4:	1244005a 	beq	s2,a0,2510 <func_800EEA50+0x420>
    23a8:	001e58c0 	sll	t3,s8,0x3
    23ac:	03d7001a 	div	zero,s8,s7
    23b0:	00006810 	mfhi	t5
    23b4:	258c0000 	addiu	t4,t4,0
    23b8:	016c8021 	addu	s0,t3,t4
    23bc:	16e00002 	bnez	s7,23c8 <func_800EEA50+0x2d8>
    23c0:	00000000 	nop
    23c4:	0007000d 	break	0x7
    23c8:	2401ffff 	li	at,-1
    23cc:	16e10004 	bne	s7,at,23e0 <func_800EEA50+0x2f0>
    23d0:	3c018000 	lui	at,0x8000
    23d4:	17c10002 	bne	s8,at,23e0 <func_800EEA50+0x2f0>
    23d8:	00000000 	nop
    23dc:	0006000d 	break	0x6
    23e0:	51a00019 	beqzl	t5,2448 <func_800EEA50+0x358>
    23e4:	92820002 	lbu	v0,2(s4)
    23e8:	92820002 	lbu	v0,2(s4)
    23ec:	240b00ff 	li	t3,255
    23f0:	afab0010 	sw	t3,16(sp)
    23f4:	304e0004 	andi	t6,v0,0x4
    23f8:	000e7883 	sra	t7,t6,0x2
    23fc:	01f10019 	multu	t7,s1
    2400:	30580002 	andi	t8,v0,0x2
    2404:	0018c843 	sra	t9,t8,0x1
    2408:	304a0001 	andi	t2,v0,0x1
    240c:	8fa400b0 	lw	a0,176(sp)
    2410:	00002812 	mflo	a1
	...
    241c:	03310019 	multu	t9,s1
    2420:	00003012 	mflo	a2
	...
    242c:	01510019 	multu	t2,s1
    2430:	00003812 	mflo	a3
    2434:	0c000000 	jal	0 <func_800EC960>
    2438:	00000000 	nop
    243c:	10000017 	b	249c <func_800EEA50+0x3ac>
    2440:	928a0001 	lbu	t2,1(s4)
    2444:	92820002 	lbu	v0,2(s4)
    2448:	241900ff 	li	t9,255
    244c:	afb90010 	sw	t9,16(sp)
    2450:	304c0004 	andi	t4,v0,0x4
    2454:	000c6883 	sra	t5,t4,0x2
    2458:	01b30019 	multu	t5,s3
    245c:	304e0002 	andi	t6,v0,0x2
    2460:	000e7843 	sra	t7,t6,0x1
    2464:	30580001 	andi	t8,v0,0x1
    2468:	8fa400b0 	lw	a0,176(sp)
    246c:	00002812 	mflo	a1
	...
    2478:	01f30019 	multu	t7,s3
    247c:	00003012 	mflo	a2
	...
    2488:	03130019 	multu	t8,s3
    248c:	00003812 	mflo	a3
    2490:	0c000000 	jal	0 <func_800EC960>
    2494:	00000000 	nop
    2498:	928a0001 	lbu	t2,1(s4)
    249c:	82cb0000 	lb	t3,0(s6)
    24a0:	82a50000 	lb	a1,0(s5)
    24a4:	8fa400b0 	lw	a0,176(sp)
    24a8:	014b6021 	addu	t4,t2,t3
    24ac:	01923023 	subu	a2,t4,s2
    24b0:	24c60001 	addiu	a2,a2,1
    24b4:	0c000000 	jal	0 <func_800EC960>
    24b8:	24a50002 	addiu	a1,a1,2
    24bc:	3c050000 	lui	a1,0x0
    24c0:	24a50000 	addiu	a1,a1,0
    24c4:	8fa400b0 	lw	a0,176(sp)
    24c8:	0c000000 	jal	0 <func_800EC960>
    24cc:	02003025 	move	a2,s0
    24d0:	928d0001 	lbu	t5,1(s4)
    24d4:	82ce0000 	lb	t6,0(s6)
    24d8:	82a50000 	lb	a1,0(s5)
    24dc:	8fa400b0 	lw	a0,176(sp)
    24e0:	01ae7821 	addu	t7,t5,t6
    24e4:	01f23023 	subu	a2,t7,s2
    24e8:	24c60001 	addiu	a2,a2,1
    24ec:	0c000000 	jal	0 <func_800EC960>
    24f0:	24a50007 	addiu	a1,a1,7
    24f4:	3c050000 	lui	a1,0x0
    24f8:	24a50000 	addiu	a1,a1,0
    24fc:	8fa400b0 	lw	a0,176(sp)
    2500:	0c000000 	jal	0 <func_800EC960>
    2504:	96060006 	lhu	a2,6(s0)
    2508:	92840001 	lbu	a0,1(s4)
    250c:	24840001 	addiu	a0,a0,1
    2510:	26520001 	addiu	s2,s2,1
    2514:	00129600 	sll	s2,s2,0x18
    2518:	00129603 	sra	s2,s2,0x18
    251c:	0244082a 	slt	at,s2,a0
    2520:	1420ff91 	bnez	at,2368 <func_800EEA50+0x278>
    2524:	00000000 	nop
    2528:	3c180000 	lui	t8,0x0
    252c:	93180000 	lbu	t8,0(t8)
    2530:	24170005 	li	s7,5
    2534:	2f01000f 	sltiu	at,t8,15
    2538:	10200b42 	beqz	at,5244 <L800F1BA4>
    253c:	0018c080 	sll	t8,t8,0x2
    2540:	3c010000 	lui	at,0x0
    2544:	00380821 	addu	at,at,t8
    2548:	8c380000 	lw	t8,0(at)
    254c:	03000008 	jr	t8
    2550:	00000000 	nop

00002554 <L800EEEB4>:
    2554:	8fa400b0 	lw	a0,176(sp)
    2558:	24050003 	li	a1,3
    255c:	0c000000 	jal	0 <func_800EC960>
    2560:	24060004 	li	a2,4
    2564:	3c080000 	lui	t0,0x0
    2568:	91080000 	lbu	t0,0(t0)
    256c:	241900ff 	li	t9,255
    2570:	afb90010 	sw	t9,16(sp)
    2574:	31050004 	andi	a1,t0,0x4
    2578:	00052883 	sra	a1,a1,0x2
    257c:	00a00821 	move	at,a1
    2580:	31060002 	andi	a2,t0,0x2
    2584:	00063043 	sra	a2,a2,0x1
    2588:	00052a00 	sll	a1,a1,0x8
    258c:	31070001 	andi	a3,t0,0x1
    2590:	00073980 	sll	a3,a3,0x6
    2594:	00a12823 	subu	a1,a1,at
    2598:	00063180 	sll	a2,a2,0x6
    259c:	0c000000 	jal	0 <func_800EC960>
    25a0:	8fa400b0 	lw	a0,176(sp)
    25a4:	3c110000 	lui	s1,0x0
    25a8:	26310000 	addiu	s1,s1,0
    25ac:	962a000a 	lhu	t2,10(s1)
    25b0:	24140005 	li	s4,5
    25b4:	3c100000 	lui	s0,0x0
    25b8:	01540019 	multu	t2,s4
    25bc:	26100000 	addiu	s0,s0,0
    25c0:	3c050000 	lui	a1,0x0
    25c4:	24a50000 	addiu	a1,a1,0
    25c8:	8fa400b0 	lw	a0,176(sp)
    25cc:	00005812 	mflo	t3
    25d0:	020b3021 	addu	a2,s0,t3
    25d4:	0c000000 	jal	0 <func_800EC960>
    25d8:	00000000 	nop
    25dc:	8fa400b0 	lw	a0,176(sp)
    25e0:	24050003 	li	a1,3
    25e4:	0c000000 	jal	0 <func_800EC960>
    25e8:	24060005 	li	a2,5
    25ec:	3c0c0000 	lui	t4,0x0
    25f0:	918c0000 	lbu	t4,0(t4)
    25f4:	3c050000 	lui	a1,0x0
    25f8:	24a50000 	addiu	a1,a1,0
    25fc:	01940019 	multu	t4,s4
    2600:	8fa400b0 	lw	a0,176(sp)
    2604:	00006812 	mflo	t5
    2608:	020d3021 	addu	a2,s0,t5
    260c:	0c000000 	jal	0 <func_800EC960>
    2610:	00000000 	nop
    2614:	8fa400b0 	lw	a0,176(sp)
    2618:	24050012 	li	a1,18
    261c:	0c000000 	jal	0 <func_800EC960>
    2620:	24060004 	li	a2,4
    2624:	3c080000 	lui	t0,0x0
    2628:	91080000 	lbu	t0,0(t0)
    262c:	240200ff 	li	v0,255
    2630:	240b00ff 	li	t3,255
    2634:	310e0004 	andi	t6,t0,0x4
    2638:	000e7883 	sra	t7,t6,0x2
    263c:	01e20019 	multu	t7,v0
    2640:	31180002 	andi	t8,t0,0x2
    2644:	0018c843 	sra	t9,t8,0x1
    2648:	310a0001 	andi	t2,t0,0x1
    264c:	afab0010 	sw	t3,16(sp)
    2650:	8fa400b0 	lw	a0,176(sp)
    2654:	00002812 	mflo	a1
	...
    2660:	03220019 	multu	t9,v0
    2664:	00003012 	mflo	a2
	...
    2670:	01420019 	multu	t2,v0
    2674:	00003812 	mflo	a3
    2678:	0c000000 	jal	0 <func_800EC960>
    267c:	00000000 	nop
    2680:	3c050000 	lui	a1,0x0
    2684:	24a50000 	addiu	a1,a1,0
    2688:	0c000000 	jal	0 <func_800EC960>
    268c:	8fa400b0 	lw	a0,176(sp)
    2690:	3c080000 	lui	t0,0x0
    2694:	91080000 	lbu	t0,0(t0)
    2698:	240900ff 	li	t1,255
    269c:	823e0005 	lb	s8,5(s1)
    26a0:	310e0004 	andi	t6,t0,0x4
    26a4:	000e7883 	sra	t7,t6,0x2
    26a8:	01e90019 	multu	t7,t1
    26ac:	31180002 	andi	t8,t0,0x2
    26b0:	0018c843 	sra	t9,t8,0x1
    26b4:	310a0001 	andi	t2,t0,0x1
    26b8:	3c150000 	lui	s5,0x0
    26bc:	26b50000 	addiu	s5,s5,0
    26c0:	001e6080 	sll	t4,s8,0x2
    26c4:	02ac9021 	addu	s2,s5,t4
    26c8:	8e4d0000 	lw	t5,0(s2)
    26cc:	240b00ff 	li	t3,255
    26d0:	00002812 	mflo	a1
    26d4:	91b6002d 	lbu	s6,45(t5)
    26d8:	00008025 	move	s0,zero
    26dc:	03290019 	multu	t9,t1
    26e0:	afab0010 	sw	t3,16(sp)
    26e4:	8fa400b0 	lw	a0,176(sp)
    26e8:	00003012 	mflo	a2
	...
    26f4:	01490019 	multu	t2,t1
    26f8:	00003812 	mflo	a3
    26fc:	0c000000 	jal	0 <func_800EC960>
    2700:	00000000 	nop
    2704:	8fa400b0 	lw	a0,176(sp)
    2708:	24050003 	li	a1,3
    270c:	0c000000 	jal	0 <func_800EC960>
    2710:	24060006 	li	a2,6
    2714:	001e6080 	sll	t4,s8,0x2
    2718:	019e6023 	subu	t4,t4,s8
    271c:	000c6080 	sll	t4,t4,0x2
    2720:	3c0d0000 	lui	t5,0x0
    2724:	25ad0000 	addiu	t5,t5,0
    2728:	019e6023 	subu	t4,t4,s8
    272c:	3c050000 	lui	a1,0x0
    2730:	24a50000 	addiu	a1,a1,0
    2734:	018d3021 	addu	a2,t4,t5
    2738:	0c000000 	jal	0 <func_800EC960>
    273c:	8fa400b0 	lw	a0,176(sp)
    2740:	240100ff 	li	at,255
    2744:	12c10abf 	beq	s6,at,5244 <L800F1BA4>
    2748:	02c09825 	move	s3,s6
    274c:	3c150000 	lui	s5,0x0
    2750:	26b50000 	addiu	s5,s5,0
    2754:	24140030 	li	s4,48
    2758:	26060007 	addiu	a2,s0,7
    275c:	26100001 	addiu	s0,s0,1
    2760:	321000ff 	andi	s0,s0,0xff
    2764:	8fa400b0 	lw	a0,176(sp)
    2768:	0c000000 	jal	0 <func_800EC960>
    276c:	24050003 	li	a1,3
    2770:	02d40019 	multu	s6,s4
    2774:	8e4e0000 	lw	t6,0(s2)
    2778:	8fa400b0 	lw	a0,176(sp)
    277c:	02a02825 	move	a1,s5
    2780:	02603025 	move	a2,s3
    2784:	00008812 	mflo	s1
    2788:	01d11021 	addu	v0,t6,s1
    278c:	904f002a 	lbu	t7,42(v0)
    2790:	94470028 	lhu	a3,40(v0)
    2794:	afaf0010 	sw	t7,16(sp)
    2798:	8c580020 	lw	t8,32(v0)
    279c:	0c000000 	jal	0 <func_800EC960>
    27a0:	afb80014 	sw	t8,20(sp)
    27a4:	8e590000 	lw	t9,0(s2)
    27a8:	240100ff 	li	at,255
    27ac:	03315021 	addu	t2,t9,s1
    27b0:	9156002d 	lbu	s6,45(t2)
    27b4:	16c1ffe8 	bne	s6,at,2758 <L800EEEB4+0x204>
    27b8:	02c09825 	move	s3,s6
    27bc:	10000aa2 	b	5248 <L800F1BA4+0x4>
    27c0:	8fbf0064 	lw	ra,100(sp)

000027c4 <L800EF124>:
    27c4:	3c060000 	lui	a2,0x0
    27c8:	90c60000 	lbu	a2,0(a2)
    27cc:	8fa400b0 	lw	a0,176(sp)
    27d0:	24050002 	li	a1,2
    27d4:	0c000000 	jal	0 <func_800EC960>
    27d8:	24c60004 	addiu	a2,a2,4
    27dc:	3c080000 	lui	t0,0x0
    27e0:	91080000 	lbu	t0,0(t0)
    27e4:	240b00ff 	li	t3,255
    27e8:	afab0010 	sw	t3,16(sp)
    27ec:	31050004 	andi	a1,t0,0x4
    27f0:	00052883 	sra	a1,a1,0x2
    27f4:	00a00821 	move	at,a1
    27f8:	000529c0 	sll	a1,a1,0x7
    27fc:	31060002 	andi	a2,t0,0x2
    2800:	00063043 	sra	a2,a2,0x1
    2804:	00a12823 	subu	a1,a1,at
    2808:	00c00821 	move	at,a2
    280c:	00063200 	sll	a2,a2,0x8
    2810:	00c13023 	subu	a2,a2,at
    2814:	31070001 	andi	a3,t0,0x1
    2818:	00e00821 	move	at,a3
    281c:	000739c0 	sll	a3,a3,0x7
    2820:	00e13823 	subu	a3,a3,at
    2824:	0c000000 	jal	0 <func_800EC960>
    2828:	8fa400b0 	lw	a0,176(sp)
    282c:	3c050000 	lui	a1,0x0
    2830:	24a50000 	addiu	a1,a1,0
    2834:	0c000000 	jal	0 <func_800EC960>
    2838:	8fa400b0 	lw	a0,176(sp)
    283c:	3c080000 	lui	t0,0x0
    2840:	91080000 	lbu	t0,0(t0)
    2844:	240c00ff 	li	t4,255
    2848:	afac0010 	sw	t4,16(sp)
    284c:	31050004 	andi	a1,t0,0x4
    2850:	00052883 	sra	a1,a1,0x2
    2854:	00a00821 	move	at,a1
    2858:	00052a00 	sll	a1,a1,0x8
    285c:	31060002 	andi	a2,t0,0x2
    2860:	00063043 	sra	a2,a2,0x1
    2864:	00a12823 	subu	a1,a1,at
    2868:	00c00821 	move	at,a2
    286c:	00063200 	sll	a2,a2,0x8
    2870:	00c13023 	subu	a2,a2,at
    2874:	31070001 	andi	a3,t0,0x1
    2878:	00e00821 	move	at,a3
    287c:	00073a00 	sll	a3,a3,0x8
    2880:	00e13823 	subu	a3,a3,at
    2884:	0c000000 	jal	0 <func_800EC960>
    2888:	8fa400b0 	lw	a0,176(sp)
    288c:	8fa400b0 	lw	a0,176(sp)
    2890:	24050003 	li	a1,3
    2894:	0c000000 	jal	0 <func_800EC960>
    2898:	24060004 	li	a2,4
    289c:	3c110000 	lui	s1,0x0
    28a0:	26310000 	addiu	s1,s1,0
    28a4:	3c050000 	lui	a1,0x0
    28a8:	24a50000 	addiu	a1,a1,0
    28ac:	96260000 	lhu	a2,0(s1)
    28b0:	0c000000 	jal	0 <func_800EC960>
    28b4:	8fa400b0 	lw	a0,176(sp)
    28b8:	8fa400b0 	lw	a0,176(sp)
    28bc:	24050003 	li	a1,3
    28c0:	0c000000 	jal	0 <func_800EC960>
    28c4:	24060005 	li	a2,5
    28c8:	3c050000 	lui	a1,0x0
    28cc:	24a50000 	addiu	a1,a1,0
    28d0:	8fa400b0 	lw	a0,176(sp)
    28d4:	0c000000 	jal	0 <func_800EC960>
    28d8:	96260002 	lhu	a2,2(s1)
    28dc:	8fa400b0 	lw	a0,176(sp)
    28e0:	24050003 	li	a1,3
    28e4:	0c000000 	jal	0 <func_800EC960>
    28e8:	24060006 	li	a2,6
    28ec:	96220004 	lhu	v0,4(s1)
    28f0:	3c0e0000 	lui	t6,0x0
    28f4:	25ce0000 	addiu	t6,t6,0
    28f8:	00026880 	sll	t5,v0,0x2
    28fc:	01a26823 	subu	t5,t5,v0
    2900:	000d6880 	sll	t5,t5,0x2
    2904:	3c050000 	lui	a1,0x0
    2908:	01a26823 	subu	t5,t5,v0
    290c:	01ae3821 	addu	a3,t5,t6
    2910:	24a50000 	addiu	a1,a1,0
    2914:	8fa400b0 	lw	a0,176(sp)
    2918:	0c000000 	jal	0 <func_800EC960>
    291c:	00403025 	move	a2,v0
    2920:	8fa400b0 	lw	a0,176(sp)
    2924:	24050003 	li	a1,3
    2928:	0c000000 	jal	0 <func_800EC960>
    292c:	24060007 	li	a2,7
    2930:	3c050000 	lui	a1,0x0
    2934:	24a50000 	addiu	a1,a1,0
    2938:	8fa400b0 	lw	a0,176(sp)
    293c:	0c000000 	jal	0 <func_800EC960>
    2940:	96260006 	lhu	a2,6(s1)
    2944:	8fa400b0 	lw	a0,176(sp)
    2948:	24050003 	li	a1,3
    294c:	0c000000 	jal	0 <func_800EC960>
    2950:	24060008 	li	a2,8
    2954:	96220008 	lhu	v0,8(s1)
    2958:	3c180000 	lui	t8,0x0
    295c:	27180000 	addiu	t8,t8,0
    2960:	00027880 	sll	t7,v0,0x2
    2964:	01e27821 	addu	t7,t7,v0
    2968:	000f7840 	sll	t7,t7,0x1
    296c:	3c050000 	lui	a1,0x0
    2970:	24a50000 	addiu	a1,a1,0
    2974:	01f83821 	addu	a3,t7,t8
    2978:	8fa400b0 	lw	a0,176(sp)
    297c:	0c000000 	jal	0 <func_800EC960>
    2980:	00403025 	move	a2,v0
    2984:	8fa400b0 	lw	a0,176(sp)
    2988:	24050003 	li	a1,3
    298c:	0c000000 	jal	0 <func_800EC960>
    2990:	24060009 	li	a2,9
    2994:	3c050000 	lui	a1,0x0
    2998:	24a50000 	addiu	a1,a1,0
    299c:	8fa400b0 	lw	a0,176(sp)
    29a0:	0c000000 	jal	0 <func_800EC960>
    29a4:	9626000a 	lhu	a2,10(s1)
    29a8:	8fa400b0 	lw	a0,176(sp)
    29ac:	24050003 	li	a1,3
    29b0:	0c000000 	jal	0 <func_800EC960>
    29b4:	2406000a 	li	a2,10
    29b8:	3c050000 	lui	a1,0x0
    29bc:	24a50000 	addiu	a1,a1,0
    29c0:	8fa400b0 	lw	a0,176(sp)
    29c4:	0c000000 	jal	0 <func_800EC960>
    29c8:	9626000c 	lhu	a2,12(s1)
    29cc:	8fa400b0 	lw	a0,176(sp)
    29d0:	24050003 	li	a1,3
    29d4:	0c000000 	jal	0 <func_800EC960>
    29d8:	2406000b 	li	a2,11
    29dc:	3c050000 	lui	a1,0x0
    29e0:	24a50000 	addiu	a1,a1,0
    29e4:	8fa400b0 	lw	a0,176(sp)
    29e8:	0c000000 	jal	0 <func_800EC960>
    29ec:	9626000e 	lhu	a2,14(s1)
    29f0:	8fa400b0 	lw	a0,176(sp)
    29f4:	24050003 	li	a1,3
    29f8:	0c000000 	jal	0 <func_800EC960>
    29fc:	2406000c 	li	a2,12
    2a00:	96390010 	lhu	t9,16(s1)
    2a04:	24140005 	li	s4,5
    2a08:	3c100000 	lui	s0,0x0
    2a0c:	03340019 	multu	t9,s4
    2a10:	26100000 	addiu	s0,s0,0
    2a14:	3c050000 	lui	a1,0x0
    2a18:	24a50000 	addiu	a1,a1,0
    2a1c:	8fa400b0 	lw	a0,176(sp)
    2a20:	00005012 	mflo	t2
    2a24:	020a3021 	addu	a2,s0,t2
    2a28:	0c000000 	jal	0 <func_800EC960>
    2a2c:	00000000 	nop
    2a30:	8fa400b0 	lw	a0,176(sp)
    2a34:	24050003 	li	a1,3
    2a38:	0c000000 	jal	0 <func_800EC960>
    2a3c:	2406000d 	li	a2,13
    2a40:	962b0012 	lhu	t3,18(s1)
    2a44:	3c050000 	lui	a1,0x0
    2a48:	24a50000 	addiu	a1,a1,0
    2a4c:	01740019 	multu	t3,s4
    2a50:	8fa400b0 	lw	a0,176(sp)
    2a54:	00006012 	mflo	t4
    2a58:	020c3021 	addu	a2,s0,t4
    2a5c:	0c000000 	jal	0 <func_800EC960>
    2a60:	00000000 	nop
    2a64:	8fa400b0 	lw	a0,176(sp)
    2a68:	24050003 	li	a1,3
    2a6c:	0c000000 	jal	0 <func_800EC960>
    2a70:	2406000e 	li	a2,14
    2a74:	3c050000 	lui	a1,0x0
    2a78:	24a50000 	addiu	a1,a1,0
    2a7c:	8fa400b0 	lw	a0,176(sp)
    2a80:	0c000000 	jal	0 <func_800EC960>
    2a84:	96260014 	lhu	a2,20(s1)
    2a88:	100009ef 	b	5248 <L800F1BA4+0x4>
    2a8c:	8fbf0064 	lw	ra,100(sp)

00002a90 <L800EF3F0>:
    2a90:	3c0142c8 	lui	at,0x42c8
    2a94:	4481b000 	mtc1	at,$f22
    2a98:	3c010000 	lui	at,0x0
    2a9c:	3c160000 	lui	s6,0x0
    2aa0:	3c150000 	lui	s5,0x0
    2aa4:	0000f025 	move	s8,zero
    2aa8:	26b50000 	addiu	s5,s5,0
    2aac:	26d60000 	addiu	s6,s6,0
    2ab0:	c4340000 	lwc1	$f20,0(at)
    2ab4:	00009025 	move	s2,zero
    2ab8:	24140030 	li	s4,48
    2abc:	24130004 	li	s3,4
    2ac0:	3c0d0000 	lui	t5,0x0
    2ac4:	81ad0000 	lb	t5,0(t5)
    2ac8:	00008025 	move	s0,zero
    2acc:	8fa400b0 	lw	a0,176(sp)
    2ad0:	164d0019 	bne	s2,t5,2b38 <L800EF3F0+0xa8>
    2ad4:	3c080000 	lui	t0,0x0
    2ad8:	3c080000 	lui	t0,0x0
    2adc:	91080000 	lbu	t0,0(t0)
    2ae0:	2402007f 	li	v0,127
    2ae4:	241900ff 	li	t9,255
    2ae8:	310e0002 	andi	t6,t0,0x2
    2aec:	000e7843 	sra	t7,t6,0x1
    2af0:	01e20019 	multu	t7,v0
    2af4:	31180001 	andi	t8,t0,0x1
    2af8:	31050004 	andi	a1,t0,0x4
    2afc:	00052883 	sra	a1,a1,0x2
    2b00:	00a00821 	move	at,a1
    2b04:	00052a00 	sll	a1,a1,0x8
    2b08:	00a12823 	subu	a1,a1,at
    2b0c:	afb90010 	sw	t9,16(sp)
    2b10:	8fa400b0 	lw	a0,176(sp)
    2b14:	00003012 	mflo	a2
	...
    2b20:	03020019 	multu	t8,v0
    2b24:	00003812 	mflo	a3
    2b28:	0c000000 	jal	0 <func_800EC960>
    2b2c:	00000000 	nop
    2b30:	10000013 	b	2b80 <L800EF3F0+0xf0>
    2b34:	00000000 	nop
    2b38:	91080000 	lbu	t0,0(t0)
    2b3c:	240a00ff 	li	t2,255
    2b40:	afaa0010 	sw	t2,16(sp)
    2b44:	31050004 	andi	a1,t0,0x4
    2b48:	00052883 	sra	a1,a1,0x2
    2b4c:	00a00821 	move	at,a1
    2b50:	00052a00 	sll	a1,a1,0x8
    2b54:	31060002 	andi	a2,t0,0x2
    2b58:	00063043 	sra	a2,a2,0x1
    2b5c:	00a12823 	subu	a1,a1,at
    2b60:	00c00821 	move	at,a2
    2b64:	00063200 	sll	a2,a2,0x8
    2b68:	00c13023 	subu	a2,a2,at
    2b6c:	31070001 	andi	a3,t0,0x1
    2b70:	00e00821 	move	at,a3
    2b74:	00073a00 	sll	a3,a3,0x8
    2b78:	0c000000 	jal	0 <func_800EC960>
    2b7c:	00e13823 	subu	a3,a3,at
    2b80:	3c0b0000 	lui	t3,0x0
    2b84:	816b0000 	lb	t3,0(t3)
    2b88:	3c050000 	lui	a1,0x0
    2b8c:	80a50000 	lb	a1,0(a1)
    2b90:	03cb3021 	addu	a2,s8,t3
    2b94:	24c60004 	addiu	a2,a2,4
    2b98:	8fa400b0 	lw	a0,176(sp)
    2b9c:	0c000000 	jal	0 <func_800EC960>
    2ba0:	24a50002 	addiu	a1,a1,2
    2ba4:	00126080 	sll	t4,s2,0x2
    2ba8:	01926023 	subu	t4,t4,s2
    2bac:	3c0e0000 	lui	t6,0x0
    2bb0:	25ce0000 	addiu	t6,t6,0
    2bb4:	000c6080 	sll	t4,t4,0x2
    2bb8:	3c0d0000 	lui	t5,0x0
    2bbc:	25ad0000 	addiu	t5,t5,0
    2bc0:	01926023 	subu	t4,t4,s2
    2bc4:	024e8821 	addu	s1,s2,t6
    2bc8:	3c050000 	lui	a1,0x0
    2bcc:	24a50000 	addiu	a1,a1,0
    2bd0:	82270000 	lb	a3,0(s1)
    2bd4:	018d3021 	addu	a2,t4,t5
    2bd8:	0c000000 	jal	0 <func_800EC960>
    2bdc:	8fa400b0 	lw	a0,176(sp)
    2be0:	3c0f0000 	lui	t7,0x0
    2be4:	91ef0000 	lbu	t7,0(t7)
    2be8:	3c0a0000 	lui	t2,0x0
    2bec:	000fc0c0 	sll	t8,t7,0x3
    2bf0:	030fc023 	subu	t8,t8,t7
    2bf4:	0312c821 	addu	t9,t8,s2
    2bf8:	01595021 	addu	t2,t2,t9
    2bfc:	914a0000 	lbu	t2,0(t2)
    2c00:	194000fb 	blez	t2,2ff0 <L800EF3F0+0x560>
    2c04:	3c0b0000 	lui	t3,0x0
    2c08:	816b0000 	lb	t3,0(t3)
    2c0c:	3c050000 	lui	a1,0x0
    2c10:	80a50000 	lb	a1,0(a1)
    2c14:	03cb3021 	addu	a2,s8,t3
    2c18:	24c60005 	addiu	a2,a2,5
    2c1c:	8fa400b0 	lw	a0,176(sp)
    2c20:	0c000000 	jal	0 <func_800EC960>
    2c24:	24a50002 	addiu	a1,a1,2
    2c28:	82240000 	lb	a0,0(s1)
    2c2c:	24010001 	li	at,1
    2c30:	00126080 	sll	t4,s2,0x2
    2c34:	14810036 	bne	a0,at,2d10 <L800EF3F0+0x280>
    2c38:	01926023 	subu	t4,t4,s2
    2c3c:	000c60c0 	sll	t4,t4,0x3
    2c40:	02cc6821 	addu	t5,s6,t4
    2c44:	001070c0 	sll	t6,s0,0x3
    2c48:	01ae7821 	addu	t7,t5,t6
    2c4c:	91e30004 	lbu	v1,4(t7)
    2c50:	240100ff 	li	at,255
    2c54:	3c050000 	lui	a1,0x0
    2c58:	10610028 	beq	v1,at,2cfc <L800EF3F0+0x26c>
    2c5c:	00603025 	move	a2,v1
    2c60:	00740019 	multu	v1,s4
    2c64:	0012c080 	sll	t8,s2,0x2
    2c68:	02b8c821 	addu	t9,s5,t8
    2c6c:	8f2a0000 	lw	t2,0(t9)
    2c70:	00005812 	mflo	t3
    2c74:	014b1021 	addu	v0,t2,t3
    2c78:	9044002a 	lbu	a0,42(v0)
    2c7c:	52640004 	beql	s3,a0,2c90 <L800EF3F0+0x200>
    2c80:	8c4e0004 	lw	t6,4(v0)
    2c84:	56e4001e 	bnel	s7,a0,2d00 <L800EF3F0+0x270>
    2c88:	8fa400b0 	lw	a0,176(sp)
    2c8c:	8c4e0004 	lw	t6,4(v0)
    2c90:	8c4c0000 	lw	t4,0(v0)
    2c94:	3c050000 	lui	a1,0x0
    2c98:	c5c80000 	lwc1	$f8,0(t6)
    2c9c:	c5840000 	lwc1	$f4,0(t4)
    2ca0:	24a50000 	addiu	a1,a1,0
    2ca4:	4600428d 	trunc.w.s	$f10,$f8
    2ca8:	8fa400b0 	lw	a0,176(sp)
    2cac:	4600218d 	trunc.w.s	$f6,$f4
    2cb0:	44185000 	mfc1	t8,$f10
    2cb4:	00000000 	nop
    2cb8:	afb80010 	sw	t8,16(sp)
    2cbc:	8c590008 	lw	t9,8(v0)
    2cc0:	44073000 	mfc1	a3,$f6
    2cc4:	c7300000 	lwc1	$f16,0(t9)
    2cc8:	4600848d 	trunc.w.s	$f18,$f16
    2ccc:	440b9000 	mfc1	t3,$f18
    2cd0:	00000000 	nop
    2cd4:	afab0014 	sw	t3,20(sp)
    2cd8:	904c0024 	lbu	t4,36(v0)
    2cdc:	afac0018 	sw	t4,24(sp)
    2ce0:	944d0026 	lhu	t5,38(v0)
    2ce4:	afad001c 	sw	t5,28(sp)
    2ce8:	944e0028 	lhu	t6,40(v0)
    2cec:	0c000000 	jal	0 <func_800EC960>
    2cf0:	afae0020 	sw	t6,32(sp)
    2cf4:	10000004 	b	2d08 <L800EF3F0+0x278>
    2cf8:	00000000 	nop
    2cfc:	8fa400b0 	lw	a0,176(sp)
    2d00:	0c000000 	jal	0 <func_800EC960>
    2d04:	24a50000 	addiu	a1,a1,0
    2d08:	100000a7 	b	2fa8 <L800EF3F0+0x518>
    2d0c:	82240000 	lb	a0,0(s1)
    2d10:	24010002 	li	at,2
    2d14:	14810040 	bne	a0,at,2e18 <L800EF3F0+0x388>
    2d18:	00127880 	sll	t7,s2,0x2
    2d1c:	01f27823 	subu	t7,t7,s2
    2d20:	000f78c0 	sll	t7,t7,0x3
    2d24:	02cfc021 	addu	t8,s6,t7
    2d28:	0010c8c0 	sll	t9,s0,0x3
    2d2c:	03195021 	addu	t2,t8,t9
    2d30:	91430004 	lbu	v1,4(t2)
    2d34:	240100ff 	li	at,255
    2d38:	3c050000 	lui	a1,0x0
    2d3c:	10610031 	beq	v1,at,2e04 <L800EF3F0+0x374>
    2d40:	00603025 	move	a2,v1
    2d44:	00740019 	multu	v1,s4
    2d48:	00125880 	sll	t3,s2,0x2
    2d4c:	02ab6021 	addu	t4,s5,t3
    2d50:	8d8d0000 	lw	t5,0(t4)
    2d54:	00007012 	mflo	t6
    2d58:	01ae1021 	addu	v0,t5,t6
    2d5c:	9044002a 	lbu	a0,42(v0)
    2d60:	52640004 	beql	s3,a0,2d74 <L800EF3F0+0x2e4>
    2d64:	8c590004 	lw	t9,4(v0)
    2d68:	56e40027 	bnel	s7,a0,2e08 <L800EF3F0+0x378>
    2d6c:	8fa400b0 	lw	a0,176(sp)
    2d70:	8c590004 	lw	t9,4(v0)
    2d74:	8c4f0000 	lw	t7,0(v0)
    2d78:	3c030000 	lui	v1,0x0
    2d7c:	c7280000 	lwc1	$f8,0(t9)
    2d80:	c5e40000 	lwc1	$f4,0(t7)
    2d84:	3c050000 	lui	a1,0x0
    2d88:	4600428d 	trunc.w.s	$f10,$f8
    2d8c:	24a50000 	addiu	a1,a1,0
    2d90:	8fa400b0 	lw	a0,176(sp)
    2d94:	4600218d 	trunc.w.s	$f6,$f4
    2d98:	440b5000 	mfc1	t3,$f10
    2d9c:	00000000 	nop
    2da0:	afab0010 	sw	t3,16(sp)
    2da4:	8c4c0008 	lw	t4,8(v0)
    2da8:	44073000 	mfc1	a3,$f6
    2dac:	c5900000 	lwc1	$f16,0(t4)
    2db0:	4600848d 	trunc.w.s	$f18,$f16
    2db4:	440e9000 	mfc1	t6,$f18
    2db8:	00000000 	nop
    2dbc:	afae0014 	sw	t6,20(sp)
    2dc0:	904f002e 	lbu	t7,46(v0)
    2dc4:	000fc080 	sll	t8,t7,0x2
    2dc8:	00781821 	addu	v1,v1,t8
    2dcc:	8c633828 	lw	v1,14376(v1)
    2dd0:	c464002c 	lwc1	$f4,44(v1)
    2dd4:	46142182 	mul.s	$f6,$f4,$f20
    2dd8:	4600320d 	trunc.w.s	$f8,$f6
    2ddc:	440a4000 	mfc1	t2,$f8
    2de0:	00000000 	nop
    2de4:	afaa0018 	sw	t2,24(sp)
    2de8:	906b000a 	lbu	t3,10(v1)
    2dec:	afab001c 	sw	t3,28(sp)
    2df0:	944c0028 	lhu	t4,40(v0)
    2df4:	0c000000 	jal	0 <func_800EC960>
    2df8:	afac0020 	sw	t4,32(sp)
    2dfc:	10000004 	b	2e10 <L800EF3F0+0x380>
    2e00:	00000000 	nop
    2e04:	8fa400b0 	lw	a0,176(sp)
    2e08:	0c000000 	jal	0 <func_800EC960>
    2e0c:	24a50000 	addiu	a1,a1,0
    2e10:	10000065 	b	2fa8 <L800EF3F0+0x518>
    2e14:	82240000 	lb	a0,0(s1)
    2e18:	24010003 	li	at,3
    2e1c:	14810040 	bne	a0,at,2f20 <L800EF3F0+0x490>
    2e20:	00126880 	sll	t5,s2,0x2
    2e24:	01b26823 	subu	t5,t5,s2
    2e28:	000d68c0 	sll	t5,t5,0x3
    2e2c:	02cd7021 	addu	t6,s6,t5
    2e30:	001078c0 	sll	t7,s0,0x3
    2e34:	01cfc021 	addu	t8,t6,t7
    2e38:	93030004 	lbu	v1,4(t8)
    2e3c:	240100ff 	li	at,255
    2e40:	3c050000 	lui	a1,0x0
    2e44:	10610031 	beq	v1,at,2f0c <L800EF3F0+0x47c>
    2e48:	00603025 	move	a2,v1
    2e4c:	00740019 	multu	v1,s4
    2e50:	0012c880 	sll	t9,s2,0x2
    2e54:	02b95021 	addu	t2,s5,t9
    2e58:	8d4b0000 	lw	t3,0(t2)
    2e5c:	00006012 	mflo	t4
    2e60:	016c1021 	addu	v0,t3,t4
    2e64:	9044002a 	lbu	a0,42(v0)
    2e68:	52640004 	beql	s3,a0,2e7c <L800EF3F0+0x3ec>
    2e6c:	8c4f0004 	lw	t7,4(v0)
    2e70:	56e40027 	bnel	s7,a0,2f10 <L800EF3F0+0x480>
    2e74:	8fa400b0 	lw	a0,176(sp)
    2e78:	8c4f0004 	lw	t7,4(v0)
    2e7c:	8c4d0000 	lw	t5,0(v0)
    2e80:	3c030000 	lui	v1,0x0
    2e84:	c5f20000 	lwc1	$f18,0(t7)
    2e88:	c5aa0000 	lwc1	$f10,0(t5)
    2e8c:	3c050000 	lui	a1,0x0
    2e90:	4600910d 	trunc.w.s	$f4,$f18
    2e94:	24a50000 	addiu	a1,a1,0
    2e98:	8fa400b0 	lw	a0,176(sp)
    2e9c:	4600540d 	trunc.w.s	$f16,$f10
    2ea0:	44192000 	mfc1	t9,$f4
    2ea4:	00000000 	nop
    2ea8:	afb90010 	sw	t9,16(sp)
    2eac:	8c4a0008 	lw	t2,8(v0)
    2eb0:	44078000 	mfc1	a3,$f16
    2eb4:	c5460000 	lwc1	$f6,0(t2)
    2eb8:	4600320d 	trunc.w.s	$f8,$f6
    2ebc:	440c4000 	mfc1	t4,$f8
    2ec0:	00000000 	nop
    2ec4:	afac0014 	sw	t4,20(sp)
    2ec8:	904d002e 	lbu	t5,46(v0)
    2ecc:	000d7080 	sll	t6,t5,0x2
    2ed0:	006e1821 	addu	v1,v1,t6
    2ed4:	8c633828 	lw	v1,14376(v1)
    2ed8:	c46a0038 	lwc1	$f10,56(v1)
    2edc:	46165402 	mul.s	$f16,$f10,$f22
    2ee0:	4600848d 	trunc.w.s	$f18,$f16
    2ee4:	44189000 	mfc1	t8,$f18
    2ee8:	00000000 	nop
    2eec:	afb80018 	sw	t8,24(sp)
    2ef0:	90790004 	lbu	t9,4(v1)
    2ef4:	afb9001c 	sw	t9,28(sp)
    2ef8:	944a0028 	lhu	t2,40(v0)
    2efc:	0c000000 	jal	0 <func_800EC960>
    2f00:	afaa0020 	sw	t2,32(sp)
    2f04:	10000004 	b	2f18 <L800EF3F0+0x488>
    2f08:	00000000 	nop
    2f0c:	8fa400b0 	lw	a0,176(sp)
    2f10:	0c000000 	jal	0 <func_800EC960>
    2f14:	24a50000 	addiu	a1,a1,0
    2f18:	10000023 	b	2fa8 <L800EF3F0+0x518>
    2f1c:	82240000 	lb	a0,0(s1)
    2f20:	16640021 	bne	s3,a0,2fa8 <L800EF3F0+0x518>
    2f24:	00125880 	sll	t3,s2,0x2
    2f28:	01725823 	subu	t3,t3,s2
    2f2c:	000b58c0 	sll	t3,t3,0x3
    2f30:	02cb6021 	addu	t4,s6,t3
    2f34:	001068c0 	sll	t5,s0,0x3
    2f38:	018d7021 	addu	t6,t4,t5
    2f3c:	91c30004 	lbu	v1,4(t6)
    2f40:	240100ff 	li	at,255
    2f44:	3c050000 	lui	a1,0x0
    2f48:	10610013 	beq	v1,at,2f98 <L800EF3F0+0x508>
    2f4c:	00603025 	move	a2,v1
    2f50:	00740019 	multu	v1,s4
    2f54:	00127880 	sll	t7,s2,0x2
    2f58:	02afc021 	addu	t8,s5,t7
    2f5c:	8f190000 	lw	t9,0(t8)
    2f60:	00005012 	mflo	t2
    2f64:	032a1021 	addu	v0,t9,t2
    2f68:	9044002a 	lbu	a0,42(v0)
    2f6c:	12640003 	beq	s3,a0,2f7c <L800EF3F0+0x4ec>
    2f70:	00000000 	nop
    2f74:	56e40009 	bnel	s7,a0,2f9c <L800EF3F0+0x50c>
    2f78:	8fa400b0 	lw	a0,176(sp)
    2f7c:	3c050000 	lui	a1,0x0
    2f80:	24a50000 	addiu	a1,a1,0
    2f84:	8fa400b0 	lw	a0,176(sp)
    2f88:	0c000000 	jal	0 <func_800EC960>
    2f8c:	94470028 	lhu	a3,40(v0)
    2f90:	10000005 	b	2fa8 <L800EF3F0+0x518>
    2f94:	82240000 	lb	a0,0(s1)
    2f98:	8fa400b0 	lw	a0,176(sp)
    2f9c:	0c000000 	jal	0 <func_800EC960>
    2fa0:	24a50000 	addiu	a1,a1,0
    2fa4:	82240000 	lb	a0,0(s1)
    2fa8:	10800004 	beqz	a0,2fbc <L800EF3F0+0x52c>
    2fac:	3c0b0000 	lui	t3,0x0
    2fb0:	27de0001 	addiu	s8,s8,1
    2fb4:	001ef600 	sll	s8,s8,0x18
    2fb8:	001ef603 	sra	s8,s8,0x18
    2fbc:	916b0000 	lbu	t3,0(t3)
    2fc0:	3c0e0000 	lui	t6,0x0
    2fc4:	26100001 	addiu	s0,s0,1
    2fc8:	000b60c0 	sll	t4,t3,0x3
    2fcc:	018b6023 	subu	t4,t4,t3
    2fd0:	01926821 	addu	t5,t4,s2
    2fd4:	01cd7021 	addu	t6,t6,t5
    2fd8:	91ce0000 	lbu	t6,0(t6)
    2fdc:	00108600 	sll	s0,s0,0x18
    2fe0:	00108603 	sra	s0,s0,0x18
    2fe4:	020e082a 	slt	at,s0,t6
    2fe8:	1420ff06 	bnez	at,2c04 <L800EF3F0+0x174>
    2fec:	00000000 	nop
    2ff0:	26520001 	addiu	s2,s2,1
    2ff4:	00129600 	sll	s2,s2,0x18
    2ff8:	00129603 	sra	s2,s2,0x18
    2ffc:	27de0001 	addiu	s8,s8,1
    3000:	2a410007 	slti	at,s2,7
    3004:	001ef600 	sll	s8,s8,0x18
    3008:	1420fead 	bnez	at,2ac0 <L800EF3F0+0x30>
    300c:	001ef603 	sra	s8,s8,0x18
    3010:	1000088d 	b	5248 <L800F1BA4+0x4>
    3014:	8fbf0064 	lw	ra,100(sp)

00003018 <L800EF978>:
    3018:	3c060000 	lui	a2,0x0
    301c:	90c60000 	lbu	a2,0(a2)
    3020:	8fa400b0 	lw	a0,176(sp)
    3024:	24050002 	li	a1,2
    3028:	0c000000 	jal	0 <func_800EC960>
    302c:	24c60004 	addiu	a2,a2,4
    3030:	3c080000 	lui	t0,0x0
    3034:	91080000 	lbu	t0,0(t0)
    3038:	240200ff 	li	v0,255
    303c:	240c00ff 	li	t4,255
    3040:	310f0004 	andi	t7,t0,0x4
    3044:	000fc083 	sra	t8,t7,0x2
    3048:	03020019 	multu	t8,v0
    304c:	31190002 	andi	t9,t0,0x2
    3050:	00195043 	sra	t2,t9,0x1
    3054:	310b0001 	andi	t3,t0,0x1
    3058:	afac0010 	sw	t4,16(sp)
    305c:	8fa400b0 	lw	a0,176(sp)
    3060:	00002812 	mflo	a1
	...
    306c:	01420019 	multu	t2,v0
    3070:	00003012 	mflo	a2
	...
    307c:	01620019 	multu	t3,v0
    3080:	00003812 	mflo	a3
    3084:	0c000000 	jal	0 <func_800EC960>
    3088:	00000000 	nop
    308c:	3c050000 	lui	a1,0x0
    3090:	24a50000 	addiu	a1,a1,0
    3094:	0c000000 	jal	0 <func_800EC960>
    3098:	8fa400b0 	lw	a0,176(sp)
    309c:	3c080000 	lui	t0,0x0
    30a0:	91080000 	lbu	t0,0(t0)
    30a4:	240900ff 	li	t1,255
    30a8:	240a00ff 	li	t2,255
    30ac:	310d0004 	andi	t5,t0,0x4
    30b0:	000d7083 	sra	t6,t5,0x2
    30b4:	01c90019 	multu	t6,t1
    30b8:	310f0002 	andi	t7,t0,0x2
    30bc:	000fc043 	sra	t8,t7,0x1
    30c0:	31190001 	andi	t9,t0,0x1
    30c4:	afaa0010 	sw	t2,16(sp)
    30c8:	8fa400b0 	lw	a0,176(sp)
    30cc:	00002812 	mflo	a1
	...
    30d8:	03090019 	multu	t8,t1
    30dc:	00003012 	mflo	a2
	...
    30e8:	03290019 	multu	t9,t1
    30ec:	00003812 	mflo	a3
    30f0:	0c000000 	jal	0 <func_800EC960>
    30f4:	00000000 	nop
    30f8:	8fa400b0 	lw	a0,176(sp)
    30fc:	24050003 	li	a1,3
    3100:	0c000000 	jal	0 <func_800EC960>
    3104:	24060004 	li	a2,4
    3108:	3c050000 	lui	a1,0x0
    310c:	24a50000 	addiu	a1,a1,0
    3110:	8fa400b0 	lw	a0,176(sp)
    3114:	0c000000 	jal	0 <func_800EC960>
    3118:	92860000 	lbu	a2,0(s4)
    311c:	8fa400b0 	lw	a0,176(sp)
    3120:	24050003 	li	a1,3
    3124:	0c000000 	jal	0 <func_800EC960>
    3128:	24060005 	li	a2,5
    312c:	92860001 	lbu	a2,1(s4)
    3130:	3c050000 	lui	a1,0x0
    3134:	24a50000 	addiu	a1,a1,0
    3138:	8fa400b0 	lw	a0,176(sp)
    313c:	0c000000 	jal	0 <func_800EC960>
    3140:	24c60001 	addiu	a2,a2,1
    3144:	8fa400b0 	lw	a0,176(sp)
    3148:	24050003 	li	a1,3
    314c:	0c000000 	jal	0 <func_800EC960>
    3150:	24060006 	li	a2,6
    3154:	3c050000 	lui	a1,0x0
    3158:	24a50000 	addiu	a1,a1,0
    315c:	8fa400b0 	lw	a0,176(sp)
    3160:	0c000000 	jal	0 <func_800EC960>
    3164:	92860002 	lbu	a2,2(s4)
    3168:	8fa400b0 	lw	a0,176(sp)
    316c:	24050003 	li	a1,3
    3170:	0c000000 	jal	0 <func_800EC960>
    3174:	24060007 	li	a2,7
    3178:	3c050000 	lui	a1,0x0
    317c:	3c060000 	lui	a2,0x0
    3180:	24c60000 	addiu	a2,a2,0
    3184:	24a50000 	addiu	a1,a1,0
    3188:	8fa400b0 	lw	a0,176(sp)
    318c:	0c000000 	jal	0 <func_800EC960>
    3190:	92870003 	lbu	a3,3(s4)
    3194:	8fa400b0 	lw	a0,176(sp)
    3198:	24050003 	li	a1,3
    319c:	0c000000 	jal	0 <func_800EC960>
    31a0:	24060008 	li	a2,8
    31a4:	3c050000 	lui	a1,0x0
    31a8:	3c060000 	lui	a2,0x0
    31ac:	24c60000 	addiu	a2,a2,0
    31b0:	24a50000 	addiu	a1,a1,0
    31b4:	8fa400b0 	lw	a0,176(sp)
    31b8:	0c000000 	jal	0 <func_800EC960>
    31bc:	92870004 	lbu	a3,4(s4)
    31c0:	8fa400b0 	lw	a0,176(sp)
    31c4:	24050003 	li	a1,3
    31c8:	0c000000 	jal	0 <func_800EC960>
    31cc:	24060009 	li	a2,9
    31d0:	3c050000 	lui	a1,0x0
    31d4:	24a50000 	addiu	a1,a1,0
    31d8:	8fa400b0 	lw	a0,176(sp)
    31dc:	0c000000 	jal	0 <func_800EC960>
    31e0:	92860005 	lbu	a2,5(s4)
    31e4:	8fa400b0 	lw	a0,176(sp)
    31e8:	24050003 	li	a1,3
    31ec:	0c000000 	jal	0 <func_800EC960>
    31f0:	2406000a 	li	a2,10
    31f4:	3c050000 	lui	a1,0x0
    31f8:	3c060000 	lui	a2,0x0
    31fc:	24c60000 	addiu	a2,a2,0
    3200:	24a50000 	addiu	a1,a1,0
    3204:	8fa400b0 	lw	a0,176(sp)
    3208:	0c000000 	jal	0 <func_800EC960>
    320c:	92870006 	lbu	a3,6(s4)
    3210:	8fa400b0 	lw	a0,176(sp)
    3214:	24050003 	li	a1,3
    3218:	0c000000 	jal	0 <func_800EC960>
    321c:	2406000b 	li	a2,11
    3220:	3c050000 	lui	a1,0x0
    3224:	3c060000 	lui	a2,0x0
    3228:	24c60000 	addiu	a2,a2,0
    322c:	24a50000 	addiu	a1,a1,0
    3230:	8fa400b0 	lw	a0,176(sp)
    3234:	0c000000 	jal	0 <func_800EC960>
    3238:	92870007 	lbu	a3,7(s4)
    323c:	8fa400b0 	lw	a0,176(sp)
    3240:	24050003 	li	a1,3
    3244:	0c000000 	jal	0 <func_800EC960>
    3248:	2406000c 	li	a2,12
    324c:	3c050000 	lui	a1,0x0
    3250:	3c060000 	lui	a2,0x0
    3254:	24c60000 	addiu	a2,a2,0
    3258:	24a50000 	addiu	a1,a1,0
    325c:	8fa400b0 	lw	a0,176(sp)
    3260:	0c000000 	jal	0 <func_800EC960>
    3264:	92870008 	lbu	a3,8(s4)
    3268:	8fa400b0 	lw	a0,176(sp)
    326c:	24050003 	li	a1,3
    3270:	0c000000 	jal	0 <func_800EC960>
    3274:	2406000d 	li	a2,13
    3278:	3c050000 	lui	a1,0x0
    327c:	3c060000 	lui	a2,0x0
    3280:	24c60000 	addiu	a2,a2,0
    3284:	24a50000 	addiu	a1,a1,0
    3288:	8fa400b0 	lw	a0,176(sp)
    328c:	0c000000 	jal	0 <func_800EC960>
    3290:	92870009 	lbu	a3,9(s4)
    3294:	8fa400b0 	lw	a0,176(sp)
    3298:	24050003 	li	a1,3
    329c:	0c000000 	jal	0 <func_800EC960>
    32a0:	2406000e 	li	a2,14
    32a4:	3c050000 	lui	a1,0x0
    32a8:	24a50000 	addiu	a1,a1,0
    32ac:	8fa400b0 	lw	a0,176(sp)
    32b0:	0c000000 	jal	0 <func_800EC960>
    32b4:	9286000a 	lbu	a2,10(s4)
    32b8:	100007e3 	b	5248 <L800F1BA4+0x4>
    32bc:	8fbf0064 	lw	ra,100(sp)

000032c0 <L800EFC20>:
    32c0:	8fa400b0 	lw	a0,176(sp)
    32c4:	24050003 	li	a1,3
    32c8:	24060004 	li	a2,4
    32cc:	0c000000 	jal	0 <func_800EC960>
    32d0:	0000b025 	move	s6,zero
    32d4:	3c080000 	lui	t0,0x0
    32d8:	91080000 	lbu	t0,0(t0)
    32dc:	240200ff 	li	v0,255
    32e0:	241800ff 	li	t8,255
    32e4:	310b0004 	andi	t3,t0,0x4
    32e8:	000b6083 	sra	t4,t3,0x2
    32ec:	01820019 	multu	t4,v0
    32f0:	310d0002 	andi	t5,t0,0x2
    32f4:	000d7043 	sra	t6,t5,0x1
    32f8:	310f0001 	andi	t7,t0,0x1
    32fc:	afb80010 	sw	t8,16(sp)
    3300:	8fa400b0 	lw	a0,176(sp)
    3304:	00002812 	mflo	a1
	...
    3310:	01c20019 	multu	t6,v0
    3314:	00003012 	mflo	a2
	...
    3320:	01e20019 	multu	t7,v0
    3324:	00003812 	mflo	a3
    3328:	0c000000 	jal	0 <func_800EC960>
    332c:	00000000 	nop
    3330:	3c190000 	lui	t9,0x0
    3334:	93390000 	lbu	t9,0(t9)
    3338:	8fa400b0 	lw	a0,176(sp)
    333c:	3c050000 	lui	a1,0x0
    3340:	13200003 	beqz	t9,3350 <L800EFC20+0x90>
    3344:	00000000 	nop
    3348:	0c000000 	jal	0 <func_800EC960>
    334c:	24a50000 	addiu	a1,a1,0
    3350:	3c100000 	lui	s0,0x0
    3354:	26100000 	addiu	s0,s0,0
    3358:	920a0000 	lbu	t2,0(s0)
    335c:	3c080000 	lui	t0,0x0
    3360:	1540001a 	bnez	t2,33cc <L800EFC20+0x10c>
    3364:	00000000 	nop
    3368:	3c080000 	lui	t0,0x0
    336c:	91080000 	lbu	t0,0(t0)
    3370:	240200ff 	li	v0,255
    3374:	241800ff 	li	t8,255
    3378:	310b0004 	andi	t3,t0,0x4
    337c:	000b6083 	sra	t4,t3,0x2
    3380:	01820019 	multu	t4,v0
    3384:	310d0002 	andi	t5,t0,0x2
    3388:	000d7043 	sra	t6,t5,0x1
    338c:	310f0001 	andi	t7,t0,0x1
    3390:	afb80010 	sw	t8,16(sp)
    3394:	8fa400b0 	lw	a0,176(sp)
    3398:	00002812 	mflo	a1
	...
    33a4:	01c20019 	multu	t6,v0
    33a8:	00003012 	mflo	a2
	...
    33b4:	01e20019 	multu	t7,v0
    33b8:	00003812 	mflo	a3
    33bc:	0c000000 	jal	0 <func_800EC960>
    33c0:	00000000 	nop
    33c4:	10000017 	b	3424 <L800EFC20+0x164>
    33c8:	00000000 	nop
    33cc:	91080000 	lbu	t0,0(t0)
    33d0:	2402007f 	li	v0,127
    33d4:	240e00ff 	li	t6,255
    33d8:	31190004 	andi	t9,t0,0x4
    33dc:	00195083 	sra	t2,t9,0x2
    33e0:	01420019 	multu	t2,v0
    33e4:	310b0002 	andi	t3,t0,0x2
    33e8:	000b6043 	sra	t4,t3,0x1
    33ec:	310d0001 	andi	t5,t0,0x1
    33f0:	afae0010 	sw	t6,16(sp)
    33f4:	8fa400b0 	lw	a0,176(sp)
    33f8:	00002812 	mflo	a1
	...
    3404:	01820019 	multu	t4,v0
    3408:	00003012 	mflo	a2
	...
    3414:	01a20019 	multu	t5,v0
    3418:	00003812 	mflo	a3
    341c:	0c000000 	jal	0 <func_800EC960>
    3420:	00000000 	nop
    3424:	3c060000 	lui	a2,0x0
    3428:	90c60000 	lbu	a2,0(a2)
    342c:	8fa400b0 	lw	a0,176(sp)
    3430:	24050002 	li	a1,2
    3434:	0c000000 	jal	0 <func_800EC960>
    3438:	24c60006 	addiu	a2,a2,6
    343c:	3c050000 	lui	a1,0x0
    3440:	24a50000 	addiu	a1,a1,0
    3444:	0c000000 	jal	0 <func_800EC960>
    3448:	8fa400b0 	lw	a0,176(sp)
    344c:	3c040000 	lui	a0,0x0
    3450:	90840000 	lbu	a0,0(a0)
    3454:	3c080000 	lui	t0,0x0
    3458:	28810004 	slti	at,a0,4
    345c:	14200003 	bnez	at,346c <L800EFC20+0x1ac>
    3460:	309200ff 	andi	s2,a0,0xff
    3464:	26520001 	addiu	s2,s2,1
    3468:	325200ff 	andi	s2,s2,0xff
    346c:	920f0000 	lbu	t7,0(s0)
    3470:	24010001 	li	at,1
    3474:	15e1001f 	bne	t7,at,34f4 <L800EFC20+0x234>
    3478:	00000000 	nop
    347c:	91080000 	lbu	t0,0(t0)
    3480:	240200ff 	li	v0,255
    3484:	240d00ff 	li	t5,255
    3488:	31180004 	andi	t8,t0,0x4
    348c:	0018c883 	sra	t9,t8,0x2
    3490:	03220019 	multu	t9,v0
    3494:	310a0002 	andi	t2,t0,0x2
    3498:	000a5843 	sra	t3,t2,0x1
    349c:	310c0001 	andi	t4,t0,0x1
    34a0:	afad0010 	sw	t5,16(sp)
    34a4:	8fa400b0 	lw	a0,176(sp)
    34a8:	00002812 	mflo	a1
	...
    34b4:	01620019 	multu	t3,v0
    34b8:	00003012 	mflo	a2
	...
    34c4:	01820019 	multu	t4,v0
    34c8:	00003812 	mflo	a3
    34cc:	0c000000 	jal	0 <func_800EC960>
    34d0:	00000000 	nop
    34d4:	8fa400b0 	lw	a0,176(sp)
    34d8:	26450003 	addiu	a1,s2,3
    34dc:	0c000000 	jal	0 <func_800EC960>
    34e0:	24060005 	li	a2,5
    34e4:	3c050000 	lui	a1,0x0
    34e8:	24a50000 	addiu	a1,a1,0
    34ec:	0c000000 	jal	0 <func_800EC960>
    34f0:	8fa400b0 	lw	a0,176(sp)
    34f4:	3c1e0000 	lui	s8,0x0
    34f8:	3c170000 	lui	s7,0x0
    34fc:	3c150000 	lui	s5,0x0
    3500:	26b50000 	addiu	s5,s5,0
    3504:	26f70000 	addiu	s7,s7,0
    3508:	27de0000 	addiu	s8,s8,0
    350c:	00009825 	move	s3,zero
    3510:	24140005 	li	s4,5
    3514:	24120060 	li	s2,96
    3518:	24110090 	li	s1,144
    351c:	241000c0 	li	s0,192
    3520:	3c0e0000 	lui	t6,0x0
    3524:	91ce0000 	lbu	t6,0(t6)
    3528:	3c020000 	lui	v0,0x0
    352c:	90420000 	lbu	v0,0(v0)
    3530:	15d30033 	bne	t6,s3,3600 <L800EFC20+0x340>
    3534:	00000000 	nop
    3538:	14400019 	bnez	v0,35a0 <L800EFC20+0x2e0>
    353c:	3c080000 	lui	t0,0x0
    3540:	3c080000 	lui	t0,0x0
    3544:	91080000 	lbu	t0,0(t0)
    3548:	240c00ff 	li	t4,255
    354c:	afac0010 	sw	t4,16(sp)
    3550:	310f0004 	andi	t7,t0,0x4
    3554:	000fc083 	sra	t8,t7,0x2
    3558:	03100019 	multu	t8,s0
    355c:	31190002 	andi	t9,t0,0x2
    3560:	00195043 	sra	t2,t9,0x1
    3564:	310b0001 	andi	t3,t0,0x1
    3568:	8fa400b0 	lw	a0,176(sp)
    356c:	00002812 	mflo	a1
	...
    3578:	01500019 	multu	t2,s0
    357c:	00003012 	mflo	a2
	...
    3588:	01700019 	multu	t3,s0
    358c:	00003812 	mflo	a3
    3590:	0c000000 	jal	0 <func_800EC960>
    3594:	00000000 	nop
    3598:	10000049 	b	36c0 <L800EFC20+0x400>
    359c:	8fa400b0 	lw	a0,176(sp)
    35a0:	91080000 	lbu	t0,0(t0)
    35a4:	240200ff 	li	v0,255
    35a8:	240a00ff 	li	t2,255
    35ac:	310d0004 	andi	t5,t0,0x4
    35b0:	000d7083 	sra	t6,t5,0x2
    35b4:	01c20019 	multu	t6,v0
    35b8:	310f0002 	andi	t7,t0,0x2
    35bc:	000fc043 	sra	t8,t7,0x1
    35c0:	31190001 	andi	t9,t0,0x1
    35c4:	afaa0010 	sw	t2,16(sp)
    35c8:	8fa400b0 	lw	a0,176(sp)
    35cc:	00002812 	mflo	a1
	...
    35d8:	03020019 	multu	t8,v0
    35dc:	00003012 	mflo	a2
	...
    35e8:	03220019 	multu	t9,v0
    35ec:	00003812 	mflo	a3
    35f0:	0c000000 	jal	0 <func_800EC960>
    35f4:	00000000 	nop
    35f8:	10000031 	b	36c0 <L800EFC20+0x400>
    35fc:	8fa400b0 	lw	a0,176(sp)
    3600:	14400019 	bnez	v0,3668 <L800EFC20+0x3a8>
    3604:	3c080000 	lui	t0,0x0
    3608:	3c080000 	lui	t0,0x0
    360c:	91080000 	lbu	t0,0(t0)
    3610:	241800ff 	li	t8,255
    3614:	afb80010 	sw	t8,16(sp)
    3618:	310b0004 	andi	t3,t0,0x4
    361c:	000b6083 	sra	t4,t3,0x2
    3620:	01910019 	multu	t4,s1
    3624:	310d0002 	andi	t5,t0,0x2
    3628:	000d7043 	sra	t6,t5,0x1
    362c:	310f0001 	andi	t7,t0,0x1
    3630:	8fa400b0 	lw	a0,176(sp)
    3634:	00002812 	mflo	a1
	...
    3640:	01d10019 	multu	t6,s1
    3644:	00003012 	mflo	a2
	...
    3650:	01f10019 	multu	t7,s1
    3654:	00003812 	mflo	a3
    3658:	0c000000 	jal	0 <func_800EC960>
    365c:	00000000 	nop
    3660:	10000017 	b	36c0 <L800EFC20+0x400>
    3664:	8fa400b0 	lw	a0,176(sp)
    3668:	91080000 	lbu	t0,0(t0)
    366c:	240e00ff 	li	t6,255
    3670:	afae0010 	sw	t6,16(sp)
    3674:	31190004 	andi	t9,t0,0x4
    3678:	00195083 	sra	t2,t9,0x2
    367c:	01520019 	multu	t2,s2
    3680:	310b0002 	andi	t3,t0,0x2
    3684:	000b6043 	sra	t4,t3,0x1
    3688:	310d0001 	andi	t5,t0,0x1
    368c:	8fa400b0 	lw	a0,176(sp)
    3690:	00002812 	mflo	a1
	...
    369c:	01920019 	multu	t4,s2
    36a0:	00003012 	mflo	a2
	...
    36ac:	01b20019 	multu	t5,s2
    36b0:	00003812 	mflo	a3
    36b4:	0c000000 	jal	0 <func_800EC960>
    36b8:	00000000 	nop
    36bc:	8fa400b0 	lw	a0,176(sp)
    36c0:	24050003 	li	a1,3
    36c4:	0c000000 	jal	0 <func_800EC960>
    36c8:	26660006 	addiu	a2,s3,6
    36cc:	3c190000 	lui	t9,0x0
    36d0:	0336c821 	addu	t9,t9,s6
    36d4:	93390000 	lbu	t9,0(t9)
    36d8:	00161040 	sll	v0,s6,0x1
    36dc:	3c0b0000 	lui	t3,0x0
    36e0:	03340019 	multu	t9,s4
    36e4:	256b0000 	addiu	t3,t3,0
    36e8:	02e27821 	addu	t7,s7,v0
    36ec:	03c2c021 	addu	t8,s8,v0
    36f0:	97070000 	lhu	a3,0(t8)
    36f4:	95e60000 	lhu	a2,0(t7)
    36f8:	8fa400b0 	lw	a0,176(sp)
    36fc:	02a02825 	move	a1,s5
    3700:	00005012 	mflo	t2
    3704:	014b6021 	addu	t4,t2,t3
    3708:	0c000000 	jal	0 <func_800EC960>
    370c:	afac0010 	sw	t4,16(sp)
    3710:	26d60001 	addiu	s6,s6,1
    3714:	32d600ff 	andi	s6,s6,0xff
    3718:	2ac1000a 	slti	at,s6,10
    371c:	1420ff80 	bnez	at,3520 <L800EFC20+0x260>
    3720:	02c09825 	move	s3,s6
    3724:	100006c8 	b	5248 <L800F1BA4+0x4>
    3728:	8fbf0064 	lw	ra,100(sp)

0000372c <L800F008C>:
    372c:	8fa400b0 	lw	a0,176(sp)
    3730:	24050003 	li	a1,3
    3734:	24060004 	li	a2,4
    3738:	0c000000 	jal	0 <func_800EC960>
    373c:	0000b025 	move	s6,zero
    3740:	3c080000 	lui	t0,0x0
    3744:	91080000 	lbu	t0,0(t0)
    3748:	240d00ff 	li	t5,255
    374c:	afad0010 	sw	t5,16(sp)
    3750:	31050004 	andi	a1,t0,0x4
    3754:	00052883 	sra	a1,a1,0x2
    3758:	00a00821 	move	at,a1
    375c:	00052a00 	sll	a1,a1,0x8
    3760:	31060002 	andi	a2,t0,0x2
    3764:	00063043 	sra	a2,a2,0x1
    3768:	00a12823 	subu	a1,a1,at
    376c:	00c00821 	move	at,a2
    3770:	00063200 	sll	a2,a2,0x8
    3774:	00c13023 	subu	a2,a2,at
    3778:	31070001 	andi	a3,t0,0x1
    377c:	00e00821 	move	at,a3
    3780:	00073a00 	sll	a3,a3,0x8
    3784:	00e13823 	subu	a3,a3,at
    3788:	0c000000 	jal	0 <func_800EC960>
    378c:	8fa400b0 	lw	a0,176(sp)
    3790:	3c150000 	lui	s5,0x0
    3794:	26b50000 	addiu	s5,s5,0
    3798:	3c050000 	lui	a1,0x0
    379c:	24a50000 	addiu	a1,a1,0
    37a0:	92a60000 	lbu	a2,0(s5)
    37a4:	0c000000 	jal	0 <func_800EC960>
    37a8:	8fa400b0 	lw	a0,176(sp)
    37ac:	8fa400b0 	lw	a0,176(sp)
    37b0:	24050003 	li	a1,3
    37b4:	0c000000 	jal	0 <func_800EC960>
    37b8:	24060005 	li	a2,5
    37bc:	3c050000 	lui	a1,0x0
    37c0:	3c060000 	lui	a2,0x0
    37c4:	90c60000 	lbu	a2,0(a2)
    37c8:	24a50000 	addiu	a1,a1,0
    37cc:	0c000000 	jal	0 <func_800EC960>
    37d0:	8fa400b0 	lw	a0,176(sp)
    37d4:	8fa400b0 	lw	a0,176(sp)
    37d8:	24050003 	li	a1,3
    37dc:	0c000000 	jal	0 <func_800EC960>
    37e0:	24060006 	li	a2,6
    37e4:	3c050000 	lui	a1,0x0
    37e8:	24a50000 	addiu	a1,a1,0
    37ec:	0c000000 	jal	0 <func_800EC960>
    37f0:	8fa400b0 	lw	a0,176(sp)
    37f4:	8fa400b0 	lw	a0,176(sp)
    37f8:	24050003 	li	a1,3
    37fc:	0c000000 	jal	0 <func_800EC960>
    3800:	24060007 	li	a2,7
    3804:	3c050000 	lui	a1,0x0
    3808:	24a50000 	addiu	a1,a1,0
    380c:	0c000000 	jal	0 <func_800EC960>
    3810:	8fa400b0 	lw	a0,176(sp)
    3814:	8fa400b0 	lw	a0,176(sp)
    3818:	24050003 	li	a1,3
    381c:	0c000000 	jal	0 <func_800EC960>
    3820:	24060008 	li	a2,8
    3824:	3c050000 	lui	a1,0x0
    3828:	24a50000 	addiu	a1,a1,0
    382c:	0c000000 	jal	0 <func_800EC960>
    3830:	8fa400b0 	lw	a0,176(sp)
    3834:	8fa400b0 	lw	a0,176(sp)
    3838:	24050003 	li	a1,3
    383c:	0c000000 	jal	0 <func_800EC960>
    3840:	24060009 	li	a2,9
    3844:	3c050000 	lui	a1,0x0
    3848:	24a50000 	addiu	a1,a1,0
    384c:	0c000000 	jal	0 <func_800EC960>
    3850:	8fa400b0 	lw	a0,176(sp)
    3854:	3c1e0000 	lui	s8,0x0
    3858:	3c170000 	lui	s7,0x0
    385c:	0000a025 	move	s4,zero
    3860:	26f70000 	addiu	s7,s7,0
    3864:	27de0000 	addiu	s8,s8,0
    3868:	00009825 	move	s3,zero
    386c:	3c0e0000 	lui	t6,0x0
    3870:	91ce0000 	lbu	t6,0(t6)
    3874:	00009025 	move	s2,zero
    3878:	8fa400b0 	lw	a0,176(sp)
    387c:	15d30016 	bne	t6,s3,38d8 <L800F008C+0x1ac>
    3880:	3c080000 	lui	t0,0x0
    3884:	3c080000 	lui	t0,0x0
    3888:	91080000 	lbu	t0,0(t0)
    388c:	240f00ff 	li	t7,255
    3890:	afaf0010 	sw	t7,16(sp)
    3894:	31050004 	andi	a1,t0,0x4
    3898:	00052883 	sra	a1,a1,0x2
    389c:	00a00821 	move	at,a1
    38a0:	00052a00 	sll	a1,a1,0x8
    38a4:	31060002 	andi	a2,t0,0x2
    38a8:	00063043 	sra	a2,a2,0x1
    38ac:	00a12823 	subu	a1,a1,at
    38b0:	00c00821 	move	at,a2
    38b4:	00063200 	sll	a2,a2,0x8
    38b8:	00c13023 	subu	a2,a2,at
    38bc:	31070001 	andi	a3,t0,0x1
    38c0:	00e00821 	move	at,a3
    38c4:	00073a00 	sll	a3,a3,0x8
    38c8:	0c000000 	jal	0 <func_800EC960>
    38cc:	00e13823 	subu	a3,a3,at
    38d0:	10000018 	b	3934 <L800F008C+0x208>
    38d4:	2670000f 	addiu	s0,s3,15
    38d8:	91080000 	lbu	t0,0(t0)
    38dc:	240200c8 	li	v0,200
    38e0:	240d00ff 	li	t5,255
    38e4:	31180004 	andi	t8,t0,0x4
    38e8:	0018c883 	sra	t9,t8,0x2
    38ec:	03220019 	multu	t9,v0
    38f0:	310a0002 	andi	t2,t0,0x2
    38f4:	000a5843 	sra	t3,t2,0x1
    38f8:	310c0001 	andi	t4,t0,0x1
    38fc:	afad0010 	sw	t5,16(sp)
    3900:	8fa400b0 	lw	a0,176(sp)
    3904:	00002812 	mflo	a1
	...
    3910:	01620019 	multu	t3,v0
    3914:	00003012 	mflo	a2
	...
    3920:	01820019 	multu	t4,v0
    3924:	00003812 	mflo	a3
    3928:	0c000000 	jal	0 <func_800EC960>
    392c:	00000000 	nop
    3930:	2670000f 	addiu	s0,s3,15
    3934:	02002825 	move	a1,s0
    3938:	8fa400b0 	lw	a0,176(sp)
    393c:	0c000000 	jal	0 <func_800EC960>
    3940:	24060006 	li	a2,6
    3944:	8fa400b0 	lw	a0,176(sp)
    3948:	02e02825 	move	a1,s7
    394c:	0c000000 	jal	0 <func_800EC960>
    3950:	02603025 	move	a2,s3
    3954:	8fa400b0 	lw	a0,176(sp)
    3958:	02002825 	move	a1,s0
    395c:	0c000000 	jal	0 <func_800EC960>
    3960:	24060007 	li	a2,7
    3964:	92ae0000 	lbu	t6,0(s5)
    3968:	00168880 	sll	s1,s6,0x2
    396c:	3c190000 	lui	t9,0x0
    3970:	000e7880 	sll	t7,t6,0x2
    3974:	01ee7823 	subu	t7,t7,t6
    3978:	000f7880 	sll	t7,t7,0x2
    397c:	01ee7823 	subu	t7,t7,t6
    3980:	000f7940 	sll	t7,t7,0x5
    3984:	01f1c021 	addu	t8,t7,s1
    3988:	0338c821 	addu	t9,t9,t8
    398c:	8f393568 	lw	t9,13672(t9)
    3990:	8fa400b0 	lw	a0,176(sp)
    3994:	3c050000 	lui	a1,0x0
    3998:	8f2a0000 	lw	t2,0(t9)
    399c:	000a5fc2 	srl	t3,t2,0x1f
    39a0:	11600006 	beqz	t3,39bc <L800F008C+0x290>
    39a4:	00000000 	nop
    39a8:	8fa400b0 	lw	a0,176(sp)
    39ac:	0c000000 	jal	0 <func_800EC960>
    39b0:	03c02825 	move	a1,s8
    39b4:	10000004 	b	39c8 <L800F008C+0x29c>
    39b8:	8fa400b0 	lw	a0,176(sp)
    39bc:	0c000000 	jal	0 <func_800EC960>
    39c0:	24a50000 	addiu	a1,a1,0
    39c4:	8fa400b0 	lw	a0,176(sp)
    39c8:	02002825 	move	a1,s0
    39cc:	0c000000 	jal	0 <func_800EC960>
    39d0:	24060008 	li	a2,8
    39d4:	92ac0000 	lbu	t4,0(s5)
    39d8:	3c0f0000 	lui	t7,0x0
    39dc:	8fa400b0 	lw	a0,176(sp)
    39e0:	000c6880 	sll	t5,t4,0x2
    39e4:	01ac6823 	subu	t5,t5,t4
    39e8:	000d6880 	sll	t5,t5,0x2
    39ec:	01ac6823 	subu	t5,t5,t4
    39f0:	000d6940 	sll	t5,t5,0x5
    39f4:	01b17021 	addu	t6,t5,s1
    39f8:	01ee7821 	addu	t7,t7,t6
    39fc:	8def3568 	lw	t7,13672(t7)
    3a00:	3c050000 	lui	a1,0x0
    3a04:	8df80000 	lw	t8,0(t7)
    3a08:	001850c0 	sll	t2,t8,0x3
    3a0c:	05410007 	bgez	t2,3a2c <L800F008C+0x300>
    3a10:	00000000 	nop
    3a14:	3c050000 	lui	a1,0x0
    3a18:	24a50000 	addiu	a1,a1,0
    3a1c:	0c000000 	jal	0 <func_800EC960>
    3a20:	8fa400b0 	lw	a0,176(sp)
    3a24:	10000004 	b	3a38 <L800F008C+0x30c>
    3a28:	8fa400b0 	lw	a0,176(sp)
    3a2c:	0c000000 	jal	0 <func_800EC960>
    3a30:	24a50000 	addiu	a1,a1,0
    3a34:	8fa400b0 	lw	a0,176(sp)
    3a38:	02002825 	move	a1,s0
    3a3c:	0c000000 	jal	0 <func_800EC960>
    3a40:	24060009 	li	a2,9
    3a44:	92ab0000 	lbu	t3,0(s5)
    3a48:	3c020000 	lui	v0,0x0
    3a4c:	00008025 	move	s0,zero
    3a50:	000b6080 	sll	t4,t3,0x2
    3a54:	018b6023 	subu	t4,t4,t3
    3a58:	000c6080 	sll	t4,t4,0x2
    3a5c:	018b6023 	subu	t4,t4,t3
    3a60:	000c6140 	sll	t4,t4,0x5
    3a64:	01916821 	addu	t5,t4,s1
    3a68:	004d1021 	addu	v0,v0,t5
    3a6c:	8c423568 	lw	v0,13672(v0)
    3a70:	00107080 	sll	t6,s0,0x2
    3a74:	004e7821 	addu	t7,v0,t6
    3a78:	8df80050 	lw	t8,80(t7)
    3a7c:	26100001 	addiu	s0,s0,1
    3a80:	321000ff 	andi	s0,s0,0xff
    3a84:	13000003 	beqz	t8,3a94 <L800F008C+0x368>
    3a88:	2a010004 	slti	at,s0,4
    3a8c:	26520001 	addiu	s2,s2,1
    3a90:	325200ff 	andi	s2,s2,0xff
    3a94:	5420fff7 	bnezl	at,3a74 <L800F008C+0x348>
    3a98:	00107080 	sll	t6,s0,0x2
    3a9c:	3c050000 	lui	a1,0x0
    3aa0:	24a50000 	addiu	a1,a1,0
    3aa4:	8fa400b0 	lw	a0,176(sp)
    3aa8:	02408025 	move	s0,s2
    3aac:	0c000000 	jal	0 <func_800EC960>
    3ab0:	02403025 	move	a2,s2
    3ab4:	26d60001 	addiu	s6,s6,1
    3ab8:	32d600ff 	andi	s6,s6,0xff
    3abc:	2ac10010 	slti	at,s6,16
    3ac0:	0290a021 	addu	s4,s4,s0
    3ac4:	02c09825 	move	s3,s6
    3ac8:	1420ff68 	bnez	at,386c <L800F008C+0x140>
    3acc:	329400ff 	andi	s4,s4,0xff
    3ad0:	3c080000 	lui	t0,0x0
    3ad4:	91080000 	lbu	t0,0(t0)
    3ad8:	241900ff 	li	t9,255
    3adc:	afb90010 	sw	t9,16(sp)
    3ae0:	31050004 	andi	a1,t0,0x4
    3ae4:	00052883 	sra	a1,a1,0x2
    3ae8:	00a00821 	move	at,a1
    3aec:	00052a00 	sll	a1,a1,0x8
    3af0:	31060002 	andi	a2,t0,0x2
    3af4:	00063043 	sra	a2,a2,0x1
    3af8:	00a12823 	subu	a1,a1,at
    3afc:	00c00821 	move	at,a2
    3b00:	00063200 	sll	a2,a2,0x8
    3b04:	00c13023 	subu	a2,a2,at
    3b08:	31070001 	andi	a3,t0,0x1
    3b0c:	00e00821 	move	at,a3
    3b10:	00073a00 	sll	a3,a3,0x8
    3b14:	00e13823 	subu	a3,a3,at
    3b18:	0c000000 	jal	0 <func_800EC960>
    3b1c:	8fa400b0 	lw	a0,176(sp)
    3b20:	92aa0000 	lbu	t2,0(s5)
    3b24:	3c110000 	lui	s1,0x0
    3b28:	26310000 	addiu	s1,s1,0
    3b2c:	022a1021 	addu	v0,s1,t2
    3b30:	904b0000 	lbu	t3,0(v0)
    3b34:	02808025 	move	s0,s4
    3b38:	26650010 	addiu	a1,s3,16
    3b3c:	0174082a 	slt	at,t3,s4
    3b40:	10200002 	beqz	at,3b4c <L800F008C+0x420>
    3b44:	24060009 	li	a2,9
    3b48:	a0540000 	sb	s4,0(v0)
    3b4c:	0c000000 	jal	0 <func_800EC960>
    3b50:	8fa400b0 	lw	a0,176(sp)
    3b54:	92ac0000 	lbu	t4,0(s5)
    3b58:	3c050000 	lui	a1,0x0
    3b5c:	24a50000 	addiu	a1,a1,0
    3b60:	022c6821 	addu	t5,s1,t4
    3b64:	91a70000 	lbu	a3,0(t5)
    3b68:	8fa400b0 	lw	a0,176(sp)
    3b6c:	0c000000 	jal	0 <func_800EC960>
    3b70:	02003025 	move	a2,s0
    3b74:	8fa400b0 	lw	a0,176(sp)
    3b78:	24050003 	li	a1,3
    3b7c:	0c000000 	jal	0 <func_800EC960>
    3b80:	2406000b 	li	a2,11
    3b84:	3c050000 	lui	a1,0x0
    3b88:	24a50000 	addiu	a1,a1,0
    3b8c:	0c000000 	jal	0 <func_800EC960>
    3b90:	8fa400b0 	lw	a0,176(sp)
    3b94:	8fa400b0 	lw	a0,176(sp)
    3b98:	24050003 	li	a1,3
    3b9c:	0c000000 	jal	0 <func_800EC960>
    3ba0:	2406000c 	li	a2,12
    3ba4:	3c050000 	lui	a1,0x0
    3ba8:	24a50000 	addiu	a1,a1,0
    3bac:	0c000000 	jal	0 <func_800EC960>
    3bb0:	8fa400b0 	lw	a0,176(sp)
    3bb4:	8fa400b0 	lw	a0,176(sp)
    3bb8:	24050003 	li	a1,3
    3bbc:	0c000000 	jal	0 <func_800EC960>
    3bc0:	2406000d 	li	a2,13
    3bc4:	3c050000 	lui	a1,0x0
    3bc8:	24a50000 	addiu	a1,a1,0
    3bcc:	0c000000 	jal	0 <func_800EC960>
    3bd0:	8fa400b0 	lw	a0,176(sp)
    3bd4:	8fa400b0 	lw	a0,176(sp)
    3bd8:	24050003 	li	a1,3
    3bdc:	0c000000 	jal	0 <func_800EC960>
    3be0:	2406000e 	li	a2,14
    3be4:	3c050000 	lui	a1,0x0
    3be8:	24a50000 	addiu	a1,a1,0
    3bec:	0c000000 	jal	0 <func_800EC960>
    3bf0:	8fa400b0 	lw	a0,176(sp)
    3bf4:	8fa400b0 	lw	a0,176(sp)
    3bf8:	24050003 	li	a1,3
    3bfc:	0c000000 	jal	0 <func_800EC960>
    3c00:	2406000f 	li	a2,15
    3c04:	3c050000 	lui	a1,0x0
    3c08:	24a50000 	addiu	a1,a1,0
    3c0c:	0c000000 	jal	0 <func_800EC960>
    3c10:	8fa400b0 	lw	a0,176(sp)
    3c14:	8fa400b0 	lw	a0,176(sp)
    3c18:	24050003 	li	a1,3
    3c1c:	0c000000 	jal	0 <func_800EC960>
    3c20:	24060010 	li	a2,16
    3c24:	3c050000 	lui	a1,0x0
    3c28:	24a50000 	addiu	a1,a1,0
    3c2c:	0c000000 	jal	0 <func_800EC960>
    3c30:	8fa400b0 	lw	a0,176(sp)
    3c34:	8fa400b0 	lw	a0,176(sp)
    3c38:	24050003 	li	a1,3
    3c3c:	0c000000 	jal	0 <func_800EC960>
    3c40:	24060011 	li	a2,17
    3c44:	3c050000 	lui	a1,0x0
    3c48:	24a50000 	addiu	a1,a1,0
    3c4c:	0c000000 	jal	0 <func_800EC960>
    3c50:	8fa400b0 	lw	a0,176(sp)
    3c54:	8fa400b0 	lw	a0,176(sp)
    3c58:	24050003 	li	a1,3
    3c5c:	0c000000 	jal	0 <func_800EC960>
    3c60:	24060012 	li	a2,18
    3c64:	3c050000 	lui	a1,0x0
    3c68:	24a50000 	addiu	a1,a1,0
    3c6c:	0c000000 	jal	0 <func_800EC960>
    3c70:	8fa400b0 	lw	a0,176(sp)
    3c74:	8fa400b0 	lw	a0,176(sp)
    3c78:	24050003 	li	a1,3
    3c7c:	0c000000 	jal	0 <func_800EC960>
    3c80:	24060013 	li	a2,19
    3c84:	3c050000 	lui	a1,0x0
    3c88:	24a50000 	addiu	a1,a1,0
    3c8c:	0c000000 	jal	0 <func_800EC960>
    3c90:	8fa400b0 	lw	a0,176(sp)
    3c94:	8fa400b0 	lw	a0,176(sp)
    3c98:	24050003 	li	a1,3
    3c9c:	0c000000 	jal	0 <func_800EC960>
    3ca0:	24060014 	li	a2,20
    3ca4:	3c050000 	lui	a1,0x0
    3ca8:	24a50000 	addiu	a1,a1,0
    3cac:	0c000000 	jal	0 <func_800EC960>
    3cb0:	8fa400b0 	lw	a0,176(sp)
    3cb4:	8fa400b0 	lw	a0,176(sp)
    3cb8:	24050003 	li	a1,3
    3cbc:	0c000000 	jal	0 <func_800EC960>
    3cc0:	24060015 	li	a2,21
    3cc4:	3c050000 	lui	a1,0x0
    3cc8:	24a50000 	addiu	a1,a1,0
    3ccc:	0c000000 	jal	0 <func_800EC960>
    3cd0:	8fa400b0 	lw	a0,176(sp)
    3cd4:	8fa400b0 	lw	a0,176(sp)
    3cd8:	24050003 	li	a1,3
    3cdc:	0c000000 	jal	0 <func_800EC960>
    3ce0:	24060016 	li	a2,22
    3ce4:	3c050000 	lui	a1,0x0
    3ce8:	24a50000 	addiu	a1,a1,0
    3cec:	0c000000 	jal	0 <func_800EC960>
    3cf0:	8fa400b0 	lw	a0,176(sp)
    3cf4:	3c100000 	lui	s0,0x0
    3cf8:	26100000 	addiu	s0,s0,0
    3cfc:	0000b025 	move	s6,zero
    3d00:	00009825 	move	s3,zero
    3d04:	00132880 	sll	a1,s3,0x2
    3d08:	00b32823 	subu	a1,a1,s3
    3d0c:	24a5000f 	addiu	a1,a1,15
    3d10:	8fa400b0 	lw	a0,176(sp)
    3d14:	0c000000 	jal	0 <func_800EC960>
    3d18:	24060016 	li	a2,22
    3d1c:	92ae0000 	lbu	t6,0(s5)
    3d20:	3c180000 	lui	t8,0x0
    3d24:	93180000 	lbu	t8,0(t8)
    3d28:	000e7880 	sll	t7,t6,0x2
    3d2c:	01ee7823 	subu	t7,t7,t6
    3d30:	000f7880 	sll	t7,t7,0x2
    3d34:	01ee7823 	subu	t7,t7,t6
    3d38:	000f7940 	sll	t7,t7,0x5
    3d3c:	0018c880 	sll	t9,t8,0x2
    3d40:	01f95021 	addu	t2,t7,t9
    3d44:	3c0b0000 	lui	t3,0x0
    3d48:	016a5821 	addu	t3,t3,t2
    3d4c:	8d6b3568 	lw	t3,13672(t3)
    3d50:	8fa400b0 	lw	a0,176(sp)
    3d54:	02002825 	move	a1,s0
    3d58:	01766021 	addu	t4,t3,s6
    3d5c:	0c000000 	jal	0 <func_800EC960>
    3d60:	918600c4 	lbu	a2,196(t4)
    3d64:	26d60001 	addiu	s6,s6,1
    3d68:	32d600ff 	andi	s6,s6,0xff
    3d6c:	2ac10008 	slti	at,s6,8
    3d70:	1420ffe4 	bnez	at,3d04 <L800F008C+0x5d8>
    3d74:	02c09825 	move	s3,s6
    3d78:	92ad0000 	lbu	t5,0(s5)
    3d7c:	3c180000 	lui	t8,0x0
    3d80:	93180000 	lbu	t8,0(t8)
    3d84:	000d7080 	sll	t6,t5,0x2
    3d88:	01cd7023 	subu	t6,t6,t5
    3d8c:	000e7080 	sll	t6,t6,0x2
    3d90:	01cd7023 	subu	t6,t6,t5
    3d94:	000e7140 	sll	t6,t6,0x5
    3d98:	00187880 	sll	t7,t8,0x2
    3d9c:	01cfc821 	addu	t9,t6,t7
    3da0:	3c0a0000 	lui	t2,0x0
    3da4:	01595021 	addu	t2,t2,t9
    3da8:	8d4a3568 	lw	t2,13672(t2)
    3dac:	8fa400b0 	lw	a0,176(sp)
    3db0:	2405000f 	li	a1,15
    3db4:	8d4b0000 	lw	t3,0(t2)
    3db8:	000b67c2 	srl	t4,t3,0x1f
    3dbc:	51800522 	beqzl	t4,5248 <L800F1BA4+0x4>
    3dc0:	8fbf0064 	lw	ra,100(sp)
    3dc4:	0c000000 	jal	0 <func_800EC960>
    3dc8:	2406000b 	li	a2,11
    3dcc:	92ad0000 	lbu	t5,0(s5)
    3dd0:	3c0e0000 	lui	t6,0x0
    3dd4:	91ce0000 	lbu	t6,0(t6)
    3dd8:	000dc080 	sll	t8,t5,0x2
    3ddc:	030dc023 	subu	t8,t8,t5
    3de0:	0018c080 	sll	t8,t8,0x2
    3de4:	030dc023 	subu	t8,t8,t5
    3de8:	0018c140 	sll	t8,t8,0x5
    3dec:	000e7880 	sll	t7,t6,0x2
    3df0:	030fc821 	addu	t9,t8,t7
    3df4:	3c0a0000 	lui	t2,0x0
    3df8:	01595021 	addu	t2,t2,t9
    3dfc:	8d4a3568 	lw	t2,13672(t2)
    3e00:	3c010000 	lui	at,0x0
    3e04:	d4340000 	ldc1	$f20,0(at)
    3e08:	c544002c 	lwc1	$f4,44(t2)
    3e0c:	24060001 	li	a2,1
    3e10:	3c050000 	lui	a1,0x0
    3e14:	460021a1 	cvt.d.s	$f6,$f4
    3e18:	24a50000 	addiu	a1,a1,0
    3e1c:	46343202 	mul.d	$f8,$f6,$f20
    3e20:	8fa400b0 	lw	a0,176(sp)
    3e24:	444bf800 	cfc1	t3,$31
    3e28:	44c6f800 	ctc1	a2,$31
    3e2c:	00000000 	nop
    3e30:	462042a4 	cvt.w.d	$f10,$f8
    3e34:	4446f800 	cfc1	a2,$31
    3e38:	00000000 	nop
    3e3c:	30c60078 	andi	a2,a2,0x78
    3e40:	10c00013 	beqz	a2,3e90 <L800F008C+0x764>
    3e44:	3c0141e0 	lui	at,0x41e0
    3e48:	44815800 	mtc1	at,$f11
    3e4c:	44805000 	mtc1	zero,$f10
    3e50:	24060001 	li	a2,1
    3e54:	462a4281 	sub.d	$f10,$f8,$f10
    3e58:	44c6f800 	ctc1	a2,$31
    3e5c:	00000000 	nop
    3e60:	462052a4 	cvt.w.d	$f10,$f10
    3e64:	4446f800 	cfc1	a2,$31
    3e68:	00000000 	nop
    3e6c:	30c60078 	andi	a2,a2,0x78
    3e70:	14c00005 	bnez	a2,3e88 <L800F008C+0x75c>
    3e74:	00000000 	nop
    3e78:	44065000 	mfc1	a2,$f10
    3e7c:	3c018000 	lui	at,0x8000
    3e80:	10000007 	b	3ea0 <L800F008C+0x774>
    3e84:	00c13025 	or	a2,a2,at
    3e88:	10000005 	b	3ea0 <L800F008C+0x774>
    3e8c:	2406ffff 	li	a2,-1
    3e90:	44065000 	mfc1	a2,$f10
    3e94:	00000000 	nop
    3e98:	04c0fffb 	bltz	a2,3e88 <L800F008C+0x75c>
    3e9c:	00000000 	nop
    3ea0:	44cbf800 	ctc1	t3,$31
    3ea4:	0c000000 	jal	0 <func_800EC960>
    3ea8:	30c600ff 	andi	a2,a2,0xff
    3eac:	8fa400b0 	lw	a0,176(sp)
    3eb0:	2405000f 	li	a1,15
    3eb4:	0c000000 	jal	0 <func_800EC960>
    3eb8:	2406000c 	li	a2,12
    3ebc:	92ac0000 	lbu	t4,0(s5)
    3ec0:	3c0e0000 	lui	t6,0x0
    3ec4:	91ce0000 	lbu	t6,0(t6)
    3ec8:	000c6880 	sll	t5,t4,0x2
    3ecc:	01ac6823 	subu	t5,t5,t4
    3ed0:	000d6880 	sll	t5,t5,0x2
    3ed4:	01ac6823 	subu	t5,t5,t4
    3ed8:	000d6940 	sll	t5,t5,0x5
    3edc:	000ec080 	sll	t8,t6,0x2
    3ee0:	01b87821 	addu	t7,t5,t8
    3ee4:	3c190000 	lui	t9,0x0
    3ee8:	032fc821 	addu	t9,t9,t7
    3eec:	8f393568 	lw	t9,13672(t9)
    3ef0:	24060001 	li	a2,1
    3ef4:	3c050000 	lui	a1,0x0
    3ef8:	c7300028 	lwc1	$f16,40(t9)
    3efc:	24a50000 	addiu	a1,a1,0
    3f00:	8fa400b0 	lw	a0,176(sp)
    3f04:	460084a1 	cvt.d.s	$f18,$f16
    3f08:	46349102 	mul.d	$f4,$f18,$f20
    3f0c:	444af800 	cfc1	t2,$31
    3f10:	44c6f800 	ctc1	a2,$31
    3f14:	00000000 	nop
    3f18:	462021a4 	cvt.w.d	$f6,$f4
    3f1c:	4446f800 	cfc1	a2,$31
    3f20:	00000000 	nop
    3f24:	30c60078 	andi	a2,a2,0x78
    3f28:	10c00013 	beqz	a2,3f78 <L800F008C+0x84c>
    3f2c:	3c0141e0 	lui	at,0x41e0
    3f30:	44813800 	mtc1	at,$f7
    3f34:	44803000 	mtc1	zero,$f6
    3f38:	24060001 	li	a2,1
    3f3c:	46262181 	sub.d	$f6,$f4,$f6
    3f40:	44c6f800 	ctc1	a2,$31
    3f44:	00000000 	nop
    3f48:	462031a4 	cvt.w.d	$f6,$f6
    3f4c:	4446f800 	cfc1	a2,$31
    3f50:	00000000 	nop
    3f54:	30c60078 	andi	a2,a2,0x78
    3f58:	14c00005 	bnez	a2,3f70 <L800F008C+0x844>
    3f5c:	00000000 	nop
    3f60:	44063000 	mfc1	a2,$f6
    3f64:	3c018000 	lui	at,0x8000
    3f68:	10000007 	b	3f88 <L800F008C+0x85c>
    3f6c:	00c13025 	or	a2,a2,at
    3f70:	10000005 	b	3f88 <L800F008C+0x85c>
    3f74:	2406ffff 	li	a2,-1
    3f78:	44063000 	mfc1	a2,$f6
    3f7c:	00000000 	nop
    3f80:	04c0fffb 	bltz	a2,3f70 <L800F008C+0x844>
    3f84:	00000000 	nop
    3f88:	44caf800 	ctc1	t2,$31
    3f8c:	0c000000 	jal	0 <func_800EC960>
    3f90:	30c600ff 	andi	a2,a2,0xff
    3f94:	8fa400b0 	lw	a0,176(sp)
    3f98:	2405000f 	li	a1,15
    3f9c:	0c000000 	jal	0 <func_800EC960>
    3fa0:	2406000d 	li	a2,13
    3fa4:	92ab0000 	lbu	t3,0(s5)
    3fa8:	3c0e0000 	lui	t6,0x0
    3fac:	91ce0000 	lbu	t6,0(t6)
    3fb0:	000b6080 	sll	t4,t3,0x2
    3fb4:	018b6023 	subu	t4,t4,t3
    3fb8:	000c6080 	sll	t4,t4,0x2
    3fbc:	018b6023 	subu	t4,t4,t3
    3fc0:	000c6140 	sll	t4,t4,0x5
    3fc4:	000e6880 	sll	t5,t6,0x2
    3fc8:	018dc021 	addu	t8,t4,t5
    3fcc:	3c0f0000 	lui	t7,0x0
    3fd0:	01f87821 	addu	t7,t7,t8
    3fd4:	8def3568 	lw	t7,13672(t7)
    3fd8:	3c050000 	lui	a1,0x0
    3fdc:	24a50000 	addiu	a1,a1,0
    3fe0:	8fa400b0 	lw	a0,176(sp)
    3fe4:	0c000000 	jal	0 <func_800EC960>
    3fe8:	91e60007 	lbu	a2,7(t7)
    3fec:	92b90000 	lbu	t9,0(s5)
    3ff0:	3c0b0000 	lui	t3,0x0
    3ff4:	916b0000 	lbu	t3,0(t3)
    3ff8:	00195080 	sll	t2,t9,0x2
    3ffc:	01595023 	subu	t2,t2,t9
    4000:	000a5080 	sll	t2,t2,0x2
    4004:	01595023 	subu	t2,t2,t9
    4008:	000a5140 	sll	t2,t2,0x5
    400c:	000b7080 	sll	t6,t3,0x2
    4010:	014e6021 	addu	t4,t2,t6
    4014:	3c0d0000 	lui	t5,0x0
    4018:	01ac6821 	addu	t5,t5,t4
    401c:	8dad3568 	lw	t5,13672(t5)
    4020:	8fa400b0 	lw	a0,176(sp)
    4024:	2405000f 	li	a1,15
    4028:	91b20025 	lbu	s2,37(t5)
    402c:	16400003 	bnez	s2,403c <L800F008C+0x910>
    4030:	02408025 	move	s0,s2
    4034:	10000007 	b	4054 <L800F008C+0x928>
    4038:	2414007f 	li	s4,127
    403c:	2a010080 	slti	at,s0,128
    4040:	10200004 	beqz	at,4054 <L800F008C+0x928>
    4044:	325400ff 	andi	s4,s2,0xff
    4048:	2614ffff 	addiu	s4,s0,-1
    404c:	10000001 	b	4054 <L800F008C+0x928>
    4050:	329400ff 	andi	s4,s4,0xff
    4054:	0c000000 	jal	0 <func_800EC960>
    4058:	2406000e 	li	a2,14
    405c:	3c050000 	lui	a1,0x0
    4060:	24a50000 	addiu	a1,a1,0
    4064:	8fa400b0 	lw	a0,176(sp)
    4068:	0c000000 	jal	0 <func_800EC960>
    406c:	02803025 	move	a2,s4
    4070:	8fa400b0 	lw	a0,176(sp)
    4074:	2405000f 	li	a1,15
    4078:	0c000000 	jal	0 <func_800EC960>
    407c:	2406000f 	li	a2,15
    4080:	92b80000 	lbu	t8,0(s5)
    4084:	3c190000 	lui	t9,0x0
    4088:	93390000 	lbu	t9,0(t9)
    408c:	00187880 	sll	t7,t8,0x2
    4090:	01f87823 	subu	t7,t7,t8
    4094:	000f7880 	sll	t7,t7,0x2
    4098:	01f87823 	subu	t7,t7,t8
    409c:	000f7940 	sll	t7,t7,0x5
    40a0:	00195880 	sll	t3,t9,0x2
    40a4:	01eb5021 	addu	t2,t7,t3
    40a8:	3c0e0000 	lui	t6,0x0
    40ac:	01ca7021 	addu	t6,t6,t2
    40b0:	8dce3568 	lw	t6,13672(t6)
    40b4:	3c050000 	lui	a1,0x0
    40b8:	24a50000 	addiu	a1,a1,0
    40bc:	8fa400b0 	lw	a0,176(sp)
    40c0:	0c000000 	jal	0 <func_800EC960>
    40c4:	91c6000a 	lbu	a2,10(t6)
    40c8:	8fa400b0 	lw	a0,176(sp)
    40cc:	2405000f 	li	a1,15
    40d0:	0c000000 	jal	0 <func_800EC960>
    40d4:	24060010 	li	a2,16
    40d8:	92ac0000 	lbu	t4,0(s5)
    40dc:	3c180000 	lui	t8,0x0
    40e0:	93180000 	lbu	t8,0(t8)
    40e4:	000c6880 	sll	t5,t4,0x2
    40e8:	01ac6823 	subu	t5,t5,t4
    40ec:	000d6880 	sll	t5,t5,0x2
    40f0:	01ac6823 	subu	t5,t5,t4
    40f4:	000d6940 	sll	t5,t5,0x5
    40f8:	0018c880 	sll	t9,t8,0x2
    40fc:	01b97821 	addu	t7,t5,t9
    4100:	3c0b0000 	lui	t3,0x0
    4104:	016f5821 	addu	t3,t3,t7
    4108:	8d6b3568 	lw	t3,13672(t3)
    410c:	3c050000 	lui	a1,0x0
    4110:	24a50000 	addiu	a1,a1,0
    4114:	8fa400b0 	lw	a0,176(sp)
    4118:	0c000000 	jal	0 <func_800EC960>
    411c:	9166000b 	lbu	a2,11(t3)
    4120:	8fa400b0 	lw	a0,176(sp)
    4124:	2405000f 	li	a1,15
    4128:	0c000000 	jal	0 <func_800EC960>
    412c:	24060011 	li	a2,17
    4130:	92aa0000 	lbu	t2,0(s5)
    4134:	3c0c0000 	lui	t4,0x0
    4138:	918c0000 	lbu	t4,0(t4)
    413c:	000a7080 	sll	t6,t2,0x2
    4140:	01ca7023 	subu	t6,t6,t2
    4144:	000e7080 	sll	t6,t6,0x2
    4148:	01ca7023 	subu	t6,t6,t2
    414c:	000e7140 	sll	t6,t6,0x5
    4150:	000cc080 	sll	t8,t4,0x2
    4154:	01d86821 	addu	t5,t6,t8
    4158:	3c190000 	lui	t9,0x0
    415c:	032dc821 	addu	t9,t9,t5
    4160:	8f393568 	lw	t9,13672(t9)
    4164:	3c050000 	lui	a1,0x0
    4168:	24a50000 	addiu	a1,a1,0
    416c:	8fa400b0 	lw	a0,176(sp)
    4170:	0c000000 	jal	0 <func_800EC960>
    4174:	93260004 	lbu	a2,4(t9)
    4178:	8fa400b0 	lw	a0,176(sp)
    417c:	2405000f 	li	a1,15
    4180:	0c000000 	jal	0 <func_800EC960>
    4184:	24060012 	li	a2,18
    4188:	92af0000 	lbu	t7,0(s5)
    418c:	3c0a0000 	lui	t2,0x0
    4190:	914a0000 	lbu	t2,0(t2)
    4194:	000f5880 	sll	t3,t7,0x2
    4198:	016f5823 	subu	t3,t3,t7
    419c:	000b5880 	sll	t3,t3,0x2
    41a0:	016f5823 	subu	t3,t3,t7
    41a4:	000b5940 	sll	t3,t3,0x5
    41a8:	000a6080 	sll	t4,t2,0x2
    41ac:	016c7021 	addu	t6,t3,t4
    41b0:	3c180000 	lui	t8,0x0
    41b4:	030ec021 	addu	t8,t8,t6
    41b8:	8f183568 	lw	t8,13672(t8)
    41bc:	3c050000 	lui	a1,0x0
    41c0:	24a50000 	addiu	a1,a1,0
    41c4:	8fa400b0 	lw	a0,176(sp)
    41c8:	0c000000 	jal	0 <func_800EC960>
    41cc:	93060005 	lbu	a2,5(t8)
    41d0:	8fa400b0 	lw	a0,176(sp)
    41d4:	2405000f 	li	a1,15
    41d8:	0c000000 	jal	0 <func_800EC960>
    41dc:	24060013 	li	a2,19
    41e0:	92ad0000 	lbu	t5,0(s5)
    41e4:	3c0f0000 	lui	t7,0x0
    41e8:	91ef0000 	lbu	t7,0(t7)
    41ec:	000dc880 	sll	t9,t5,0x2
    41f0:	032dc823 	subu	t9,t9,t5
    41f4:	0019c880 	sll	t9,t9,0x2
    41f8:	032dc823 	subu	t9,t9,t5
    41fc:	0019c940 	sll	t9,t9,0x5
    4200:	000f5080 	sll	t2,t7,0x2
    4204:	032a5821 	addu	t3,t9,t2
    4208:	3c0c0000 	lui	t4,0x0
    420c:	018b6021 	addu	t4,t4,t3
    4210:	8d8c3568 	lw	t4,13672(t4)
    4214:	3c050000 	lui	a1,0x0
    4218:	24a50000 	addiu	a1,a1,0
    421c:	95860014 	lhu	a2,20(t4)
    4220:	8fa400b0 	lw	a0,176(sp)
    4224:	04c10002 	bgez	a2,4230 <L800F008C+0xb04>
    4228:	00c00821 	move	at,a2
    422c:	24c1001f 	addiu	at,a2,31
    4230:	00013143 	sra	a2,at,0x5
    4234:	0c000000 	jal	0 <func_800EC960>
    4238:	30c600ff 	andi	a2,a2,0xff
    423c:	8fa400b0 	lw	a0,176(sp)
    4240:	2405000f 	li	a1,15
    4244:	0c000000 	jal	0 <func_800EC960>
    4248:	24060014 	li	a2,20
    424c:	92ae0000 	lbu	t6,0(s5)
    4250:	3c0d0000 	lui	t5,0x0
    4254:	91ad0000 	lbu	t5,0(t5)
    4258:	000ec080 	sll	t8,t6,0x2
    425c:	030ec023 	subu	t8,t8,t6
    4260:	0018c080 	sll	t8,t8,0x2
    4264:	030ec023 	subu	t8,t8,t6
    4268:	0018c140 	sll	t8,t8,0x5
    426c:	000d7880 	sll	t7,t5,0x2
    4270:	030fc821 	addu	t9,t8,t7
    4274:	3c0a0000 	lui	t2,0x0
    4278:	01595021 	addu	t2,t2,t9
    427c:	8d4a3568 	lw	t2,13672(t2)
    4280:	3c050000 	lui	a1,0x0
    4284:	24a50000 	addiu	a1,a1,0
    4288:	95460016 	lhu	a2,22(t2)
    428c:	8fa400b0 	lw	a0,176(sp)
    4290:	04c10002 	bgez	a2,429c <L800F008C+0xb70>
    4294:	00c00821 	move	at,a2
    4298:	24c10007 	addiu	at,a2,7
    429c:	000130c3 	sra	a2,at,0x3
    42a0:	0c000000 	jal	0 <func_800EC960>
    42a4:	30c600ff 	andi	a2,a2,0xff
    42a8:	8fa400b0 	lw	a0,176(sp)
    42ac:	2405000f 	li	a1,15
    42b0:	0c000000 	jal	0 <func_800EC960>
    42b4:	24060015 	li	a2,21
    42b8:	92ab0000 	lbu	t3,0(s5)
    42bc:	3c0e0000 	lui	t6,0x0
    42c0:	91ce0000 	lbu	t6,0(t6)
    42c4:	000b6080 	sll	t4,t3,0x2
    42c8:	018b6023 	subu	t4,t4,t3
    42cc:	000c6080 	sll	t4,t4,0x2
    42d0:	018b6023 	subu	t4,t4,t3
    42d4:	000c6140 	sll	t4,t4,0x5
    42d8:	000e6880 	sll	t5,t6,0x2
    42dc:	018dc021 	addu	t8,t4,t5
    42e0:	3c0f0000 	lui	t7,0x0
    42e4:	01f87821 	addu	t7,t7,t8
    42e8:	8def3568 	lw	t7,13672(t7)
    42ec:	3c0142c8 	lui	at,0x42c8
    42f0:	44815000 	mtc1	at,$f10
    42f4:	c5e80038 	lwc1	$f8,56(t7)
    42f8:	24060001 	li	a2,1
    42fc:	3c050000 	lui	a1,0x0
    4300:	460a4402 	mul.s	$f16,$f8,$f10
    4304:	24a50000 	addiu	a1,a1,0
    4308:	3c014f00 	lui	at,0x4f00
    430c:	8fa400b0 	lw	a0,176(sp)
    4310:	4459f800 	cfc1	t9,$31
    4314:	44c6f800 	ctc1	a2,$31
    4318:	00000000 	nop
    431c:	460084a4 	cvt.w.s	$f18,$f16
    4320:	4446f800 	cfc1	a2,$31
    4324:	00000000 	nop
    4328:	30c60078 	andi	a2,a2,0x78
    432c:	50c00013 	beqzl	a2,437c <L800F008C+0xc50>
    4330:	44069000 	mfc1	a2,$f18
    4334:	44819000 	mtc1	at,$f18
    4338:	24060001 	li	a2,1
    433c:	46128481 	sub.s	$f18,$f16,$f18
    4340:	44c6f800 	ctc1	a2,$31
    4344:	00000000 	nop
    4348:	460094a4 	cvt.w.s	$f18,$f18
    434c:	4446f800 	cfc1	a2,$31
    4350:	00000000 	nop
    4354:	30c60078 	andi	a2,a2,0x78
    4358:	14c00005 	bnez	a2,4370 <L800F008C+0xc44>
    435c:	00000000 	nop
    4360:	44069000 	mfc1	a2,$f18
    4364:	3c018000 	lui	at,0x8000
    4368:	10000007 	b	4388 <L800F008C+0xc5c>
    436c:	00c13025 	or	a2,a2,at
    4370:	10000005 	b	4388 <L800F008C+0xc5c>
    4374:	2406ffff 	li	a2,-1
    4378:	44069000 	mfc1	a2,$f18
    437c:	00000000 	nop
    4380:	04c0fffb 	bltz	a2,4370 <L800F008C+0xc44>
    4384:	00000000 	nop
    4388:	44d9f800 	ctc1	t9,$31
    438c:	0c000000 	jal	0 <func_800EC960>
    4390:	30c6ffff 	andi	a2,a2,0xffff
    4394:	100003ac 	b	5248 <L800F1BA4+0x4>
    4398:	8fbf0064 	lw	ra,100(sp)

0000439c <L800F0CFC>:
    439c:	3c080000 	lui	t0,0x0
    43a0:	91080000 	lbu	t0,0(t0)
    43a4:	240a00ff 	li	t2,255
    43a8:	afaa0010 	sw	t2,16(sp)
    43ac:	31050004 	andi	a1,t0,0x4
    43b0:	00052883 	sra	a1,a1,0x2
    43b4:	00a00821 	move	at,a1
    43b8:	00052a00 	sll	a1,a1,0x8
    43bc:	31060002 	andi	a2,t0,0x2
    43c0:	00063043 	sra	a2,a2,0x1
    43c4:	00a12823 	subu	a1,a1,at
    43c8:	00c00821 	move	at,a2
    43cc:	00063200 	sll	a2,a2,0x8
    43d0:	00c13023 	subu	a2,a2,at
    43d4:	31070001 	andi	a3,t0,0x1
    43d8:	00e00821 	move	at,a3
    43dc:	00073a00 	sll	a3,a3,0x8
    43e0:	00e13823 	subu	a3,a3,at
    43e4:	8fa400b0 	lw	a0,176(sp)
    43e8:	0c000000 	jal	0 <func_800EC960>
    43ec:	00009025 	move	s2,zero
    43f0:	8fa400b0 	lw	a0,176(sp)
    43f4:	24050003 	li	a1,3
    43f8:	0c000000 	jal	0 <func_800EC960>
    43fc:	24060004 	li	a2,4
    4400:	3c050000 	lui	a1,0x0
    4404:	3c060000 	lui	a2,0x0
    4408:	8cc60000 	lw	a2,0(a2)
    440c:	24a50000 	addiu	a1,a1,0
    4410:	0c000000 	jal	0 <func_800EC960>
    4414:	8fa400b0 	lw	a0,176(sp)
    4418:	8fa400b0 	lw	a0,176(sp)
    441c:	24050003 	li	a1,3
    4420:	0c000000 	jal	0 <func_800EC960>
    4424:	24060005 	li	a2,5
    4428:	3c0b0000 	lui	t3,0x0
    442c:	3c0e0000 	lui	t6,0x0
    4430:	8dce29c0 	lw	t6,10688(t6)
    4434:	8d6b29c4 	lw	t3,10692(t3)
    4438:	3c050000 	lui	a1,0x0
    443c:	3c070000 	lui	a3,0x0
    4440:	8ce729c8 	lw	a3,10696(a3)
    4444:	24a50000 	addiu	a1,a1,0
    4448:	8fa400b0 	lw	a0,176(sp)
    444c:	0c000000 	jal	0 <func_800EC960>
    4450:	016e3023 	subu	a2,t3,t6
    4454:	8fa400b0 	lw	a0,176(sp)
    4458:	24050003 	li	a1,3
    445c:	0c000000 	jal	0 <func_800EC960>
    4460:	24060006 	li	a2,6
    4464:	3c0c0000 	lui	t4,0x0
    4468:	3c0d0000 	lui	t5,0x0
    446c:	3c180000 	lui	t8,0x0
    4470:	8f182b00 	lw	t8,11008(t8)
    4474:	8dad2b18 	lw	t5,11032(t5)
    4478:	8d8c2b0c 	lw	t4,11020(t4)
    447c:	3c050000 	lui	a1,0x0
    4480:	3c060000 	lui	a2,0x0
    4484:	3c070000 	lui	a3,0x0
    4488:	90e72b1f 	lbu	a3,11039(a3)
    448c:	90c62b13 	lbu	a2,11027(a2)
    4490:	24a50000 	addiu	a1,a1,0
    4494:	8fa400b0 	lw	a0,176(sp)
    4498:	afb80018 	sw	t8,24(sp)
    449c:	afad0014 	sw	t5,20(sp)
    44a0:	0c000000 	jal	0 <func_800EC960>
    44a4:	afac0010 	sw	t4,16(sp)
    44a8:	8fa400b0 	lw	a0,176(sp)
    44ac:	24050003 	li	a1,3
    44b0:	0c000000 	jal	0 <func_800EC960>
    44b4:	24060007 	li	a2,7
    44b8:	3c0f0000 	lui	t7,0x0
    44bc:	3c190000 	lui	t9,0x0
    44c0:	3c0a0000 	lui	t2,0x0
    44c4:	8d4a2c10 	lw	t2,11280(t2)
    44c8:	8f392c28 	lw	t9,11304(t9)
    44cc:	8def2c1c 	lw	t7,11292(t7)
    44d0:	3c050000 	lui	a1,0x0
    44d4:	3c060000 	lui	a2,0x0
    44d8:	3c070000 	lui	a3,0x0
    44dc:	90e72c2f 	lbu	a3,11311(a3)
    44e0:	90c62c23 	lbu	a2,11299(a2)
    44e4:	24a50000 	addiu	a1,a1,0
    44e8:	8fa400b0 	lw	a0,176(sp)
    44ec:	afaa0018 	sw	t2,24(sp)
    44f0:	afb90014 	sw	t9,20(sp)
    44f4:	0c000000 	jal	0 <func_800EC960>
    44f8:	afaf0010 	sw	t7,16(sp)
    44fc:	8fa400b0 	lw	a0,176(sp)
    4500:	24050003 	li	a1,3
    4504:	0c000000 	jal	0 <func_800EC960>
    4508:	24060008 	li	a2,8
    450c:	3c0b0000 	lui	t3,0x0
    4510:	3c0e0000 	lui	t6,0x0
    4514:	3c0c0000 	lui	t4,0x0
    4518:	8d8c2a2c 	lw	t4,10796(t4)
    451c:	8dce2a24 	lw	t6,10788(t6)
    4520:	8d6b2a28 	lw	t3,10792(t3)
    4524:	3c050000 	lui	a1,0x0
    4528:	3c060000 	lui	a2,0x0
    452c:	8cc62a20 	lw	a2,10784(a2)
    4530:	24a50000 	addiu	a1,a1,0
    4534:	8fa400b0 	lw	a0,176(sp)
    4538:	afac0010 	sw	t4,16(sp)
    453c:	0c000000 	jal	0 <func_800EC960>
    4540:	016e3823 	subu	a3,t3,t6
    4544:	3c0d0000 	lui	t5,0x0
    4548:	8dad2a20 	lw	t5,10784(t5)
    454c:	3c100000 	lui	s0,0x0
    4550:	26100000 	addiu	s0,s0,0
    4554:	11a00018 	beqz	t5,45b8 <L800F0CFC+0x21c>
    4558:	2411000c 	li	s1,12
    455c:	00122880 	sll	a1,s2,0x2
    4560:	00b22823 	subu	a1,a1,s2
    4564:	24a50003 	addiu	a1,a1,3
    4568:	8fa400b0 	lw	a0,176(sp)
    456c:	0c000000 	jal	0 <func_800EC960>
    4570:	24060009 	li	a2,9
    4574:	02510019 	multu	s2,s1
    4578:	3c060000 	lui	a2,0x0
    457c:	8fa400b0 	lw	a0,176(sp)
    4580:	02002825 	move	a1,s0
    4584:	0000c012 	mflo	t8
    4588:	00d83021 	addu	a2,a2,t8
    458c:	0c000000 	jal	0 <func_800EC960>
    4590:	84c62a3e 	lh	a2,10814(a2)
    4594:	3c0f0000 	lui	t7,0x0
    4598:	8def2a20 	lw	t7,10784(t7)
    459c:	26520001 	addiu	s2,s2,1
    45a0:	00129600 	sll	s2,s2,0x18
    45a4:	00129603 	sra	s2,s2,0x18
    45a8:	024f082b 	sltu	at,s2,t7
    45ac:	5420ffec 	bnezl	at,4560 <L800F0CFC+0x1c4>
    45b0:	00122880 	sll	a1,s2,0x2
    45b4:	00009025 	move	s2,zero
    45b8:	2411000c 	li	s1,12
    45bc:	8fa400b0 	lw	a0,176(sp)
    45c0:	24050003 	li	a1,3
    45c4:	0c000000 	jal	0 <func_800EC960>
    45c8:	2406000a 	li	a2,10
    45cc:	3c190000 	lui	t9,0x0
    45d0:	3c0a0000 	lui	t2,0x0
    45d4:	3c0b0000 	lui	t3,0x0
    45d8:	8d6b2b3c 	lw	t3,11068(t3)
    45dc:	8d4a2b34 	lw	t2,11060(t2)
    45e0:	8f392b38 	lw	t9,11064(t9)
    45e4:	3c050000 	lui	a1,0x0
    45e8:	3c060000 	lui	a2,0x0
    45ec:	8cc62b30 	lw	a2,11056(a2)
    45f0:	24a50000 	addiu	a1,a1,0
    45f4:	8fa400b0 	lw	a0,176(sp)
    45f8:	afab0010 	sw	t3,16(sp)
    45fc:	0c000000 	jal	0 <func_800EC960>
    4600:	032a3823 	subu	a3,t9,t2
    4604:	3c0e0000 	lui	t6,0x0
    4608:	8dce2b30 	lw	t6,11056(t6)
    460c:	3c100000 	lui	s0,0x0
    4610:	26100000 	addiu	s0,s0,0
    4614:	11c00016 	beqz	t6,4670 <L800F0CFC+0x2d4>
    4618:	00122880 	sll	a1,s2,0x2
    461c:	00b22823 	subu	a1,a1,s2
    4620:	24a50003 	addiu	a1,a1,3
    4624:	8fa400b0 	lw	a0,176(sp)
    4628:	0c000000 	jal	0 <func_800EC960>
    462c:	2406000b 	li	a2,11
    4630:	02510019 	multu	s2,s1
    4634:	3c060000 	lui	a2,0x0
    4638:	8fa400b0 	lw	a0,176(sp)
    463c:	02002825 	move	a1,s0
    4640:	00006012 	mflo	t4
    4644:	00cc3021 	addu	a2,a2,t4
    4648:	0c000000 	jal	0 <func_800EC960>
    464c:	84c62b4e 	lh	a2,11086(a2)
    4650:	3c0d0000 	lui	t5,0x0
    4654:	8dad2b30 	lw	t5,11056(t5)
    4658:	26520001 	addiu	s2,s2,1
    465c:	00129600 	sll	s2,s2,0x18
    4660:	00129603 	sra	s2,s2,0x18
    4664:	024d082b 	sltu	at,s2,t5
    4668:	5420ffec 	bnezl	at,461c <L800F0CFC+0x280>
    466c:	00122880 	sll	a1,s2,0x2
    4670:	8fa400b0 	lw	a0,176(sp)
    4674:	24050003 	li	a1,3
    4678:	0c000000 	jal	0 <func_800EC960>
    467c:	2406000c 	li	a2,12
    4680:	3c180000 	lui	t8,0x0
    4684:	3c0f0000 	lui	t7,0x0
    4688:	8def2d50 	lw	t7,11600(t7)
    468c:	8f182d54 	lw	t8,11604(t8)
    4690:	3c050000 	lui	a1,0x0
    4694:	3c070000 	lui	a3,0x0
    4698:	8ce72d58 	lw	a3,11608(a3)
    469c:	24a50000 	addiu	a1,a1,0
    46a0:	8fa400b0 	lw	a0,176(sp)
    46a4:	0c000000 	jal	0 <func_800EC960>
    46a8:	030f3023 	subu	a2,t8,t7
    46ac:	100002e6 	b	5248 <L800F1BA4+0x4>
    46b0:	8fbf0064 	lw	ra,100(sp)

000046b4 <L800F1014>:
    46b4:	3c080000 	lui	t0,0x0
    46b8:	91080000 	lbu	t0,0(t0)
    46bc:	240200ff 	li	v0,255
    46c0:	240d00ff 	li	t5,255
    46c4:	31190004 	andi	t9,t0,0x4
    46c8:	00195083 	sra	t2,t9,0x2
    46cc:	01420019 	multu	t2,v0
    46d0:	310b0002 	andi	t3,t0,0x2
    46d4:	000b7043 	sra	t6,t3,0x1
    46d8:	310c0001 	andi	t4,t0,0x1
    46dc:	afad0010 	sw	t5,16(sp)
    46e0:	8fa400b0 	lw	a0,176(sp)
    46e4:	00002812 	mflo	a1
	...
    46f0:	01c20019 	multu	t6,v0
    46f4:	00003012 	mflo	a2
	...
    4700:	01820019 	multu	t4,v0
    4704:	00003812 	mflo	a3
    4708:	0c000000 	jal	0 <func_800EC960>
    470c:	00000000 	nop
    4710:	8fa400b0 	lw	a0,176(sp)
    4714:	24050003 	li	a1,3
    4718:	0c000000 	jal	0 <func_800EC960>
    471c:	24060004 	li	a2,4
    4720:	3c110000 	lui	s1,0x0
    4724:	26310000 	addiu	s1,s1,0
    4728:	3c050000 	lui	a1,0x0
    472c:	24a50000 	addiu	a1,a1,0
    4730:	92260000 	lbu	a2,0(s1)
    4734:	0c000000 	jal	0 <func_800EC960>
    4738:	8fa400b0 	lw	a0,176(sp)
    473c:	8fa400b0 	lw	a0,176(sp)
    4740:	24050003 	li	a1,3
    4744:	0c000000 	jal	0 <func_800EC960>
    4748:	24060005 	li	a2,5
    474c:	92220001 	lbu	v0,1(s1)
    4750:	3c100000 	lui	s0,0x0
    4754:	26100000 	addiu	s0,s0,0
    4758:	3c050000 	lui	a1,0x0
    475c:	0002c040 	sll	t8,v0,0x1
    4760:	02183821 	addu	a3,s0,t8
    4764:	24a50000 	addiu	a1,a1,0
    4768:	8fa400b0 	lw	a0,176(sp)
    476c:	0c000000 	jal	0 <func_800EC960>
    4770:	00403025 	move	a2,v0
    4774:	3c080000 	lui	t0,0x0
    4778:	91080000 	lbu	t0,0(t0)
    477c:	24090064 	li	t1,100
    4780:	240b00ff 	li	t3,255
    4784:	310f0004 	andi	t7,t0,0x4
    4788:	000fc883 	sra	t9,t7,0x2
    478c:	03290019 	multu	t9,t1
    4790:	310a0001 	andi	t2,t0,0x1
    4794:	31060002 	andi	a2,t0,0x2
    4798:	00063043 	sra	a2,a2,0x1
    479c:	00c00821 	move	at,a2
    47a0:	00063200 	sll	a2,a2,0x8
    47a4:	00c13023 	subu	a2,a2,at
    47a8:	afab0010 	sw	t3,16(sp)
    47ac:	8fa400b0 	lw	a0,176(sp)
    47b0:	00002812 	mflo	a1
	...
    47bc:	01490019 	multu	t2,t1
    47c0:	00003812 	mflo	a3
    47c4:	0c000000 	jal	0 <func_800EC960>
    47c8:	00000000 	nop
    47cc:	3c060000 	lui	a2,0x0
    47d0:	90c60000 	lbu	a2,0(a2)
    47d4:	8fa400b0 	lw	a0,176(sp)
    47d8:	24050002 	li	a1,2
    47dc:	0c000000 	jal	0 <func_800EC960>
    47e0:	24c60004 	addiu	a2,a2,4
    47e4:	3c050000 	lui	a1,0x0
    47e8:	24a50000 	addiu	a1,a1,0
    47ec:	0c000000 	jal	0 <func_800EC960>
    47f0:	8fa400b0 	lw	a0,176(sp)
    47f4:	3c080000 	lui	t0,0x0
    47f8:	91080000 	lbu	t0,0(t0)
    47fc:	240900ff 	li	t1,255
    4800:	241900ff 	li	t9,255
    4804:	310e0004 	andi	t6,t0,0x4
    4808:	000e6083 	sra	t4,t6,0x2
    480c:	01890019 	multu	t4,t1
    4810:	310d0002 	andi	t5,t0,0x2
    4814:	000dc043 	sra	t8,t5,0x1
    4818:	310f0001 	andi	t7,t0,0x1
    481c:	afb90010 	sw	t9,16(sp)
    4820:	8fa400b0 	lw	a0,176(sp)
    4824:	00002812 	mflo	a1
	...
    4830:	03090019 	multu	t8,t1
    4834:	00003012 	mflo	a2
	...
    4840:	01e90019 	multu	t7,t1
    4844:	00003812 	mflo	a3
    4848:	0c000000 	jal	0 <func_800EC960>
    484c:	00000000 	nop
    4850:	8fa400b0 	lw	a0,176(sp)
    4854:	24050003 	li	a1,3
    4858:	0c000000 	jal	0 <func_800EC960>
    485c:	24060007 	li	a2,7
    4860:	3c020000 	lui	v0,0x0
    4864:	9042368a 	lbu	v0,13962(v0)
    4868:	3c050000 	lui	a1,0x0
    486c:	24a50000 	addiu	a1,a1,0
    4870:	00025040 	sll	t2,v0,0x1
    4874:	020a3821 	addu	a3,s0,t2
    4878:	8fa400b0 	lw	a0,176(sp)
    487c:	0c000000 	jal	0 <func_800EC960>
    4880:	00403025 	move	a2,v0
    4884:	8fa400b0 	lw	a0,176(sp)
    4888:	24050003 	li	a1,3
    488c:	0c000000 	jal	0 <func_800EC960>
    4890:	24060008 	li	a2,8
    4894:	3c020000 	lui	v0,0x0
    4898:	9042368c 	lbu	v0,13964(v0)
    489c:	3c050000 	lui	a1,0x0
    48a0:	24a50000 	addiu	a1,a1,0
    48a4:	00025840 	sll	t3,v0,0x1
    48a8:	020b3821 	addu	a3,s0,t3
    48ac:	8fa400b0 	lw	a0,176(sp)
    48b0:	0c000000 	jal	0 <func_800EC960>
    48b4:	00403025 	move	a2,v0
    48b8:	8fa400b0 	lw	a0,176(sp)
    48bc:	24050003 	li	a1,3
    48c0:	0c000000 	jal	0 <func_800EC960>
    48c4:	24060009 	li	a2,9
    48c8:	3c060000 	lui	a2,0x0
    48cc:	80c6368d 	lb	a2,13965(a2)
    48d0:	3c050000 	lui	a1,0x0
    48d4:	24a50000 	addiu	a1,a1,0
    48d8:	24c60001 	addiu	a2,a2,1
    48dc:	30c600ff 	andi	a2,a2,0xff
    48e0:	0c000000 	jal	0 <func_800EC960>
    48e4:	8fa400b0 	lw	a0,176(sp)
    48e8:	8fa400b0 	lw	a0,176(sp)
    48ec:	24050003 	li	a1,3
    48f0:	0c000000 	jal	0 <func_800EC960>
    48f4:	2406000b 	li	a2,11
    48f8:	3c050000 	lui	a1,0x0
    48fc:	24a50000 	addiu	a1,a1,0
    4900:	0c000000 	jal	0 <func_800EC960>
    4904:	8fa400b0 	lw	a0,176(sp)
    4908:	8fa400b0 	lw	a0,176(sp)
    490c:	24050003 	li	a1,3
    4910:	0c000000 	jal	0 <func_800EC960>
    4914:	2406000c 	li	a2,12
    4918:	3c020000 	lui	v0,0x0
    491c:	24420000 	addiu	v0,v0,0
    4920:	904e368a 	lbu	t6,13962(v0)
    4924:	904c368b 	lbu	t4,13963(v0)
    4928:	3c050000 	lui	a1,0x0
    492c:	24a50000 	addiu	a1,a1,0
    4930:	90463688 	lbu	a2,13960(v0)
    4934:	90473689 	lbu	a3,13961(v0)
    4938:	8fa400b0 	lw	a0,176(sp)
    493c:	afae0010 	sw	t6,16(sp)
    4940:	0c000000 	jal	0 <func_800EC960>
    4944:	afac0014 	sw	t4,20(sp)
    4948:	8fa400b0 	lw	a0,176(sp)
    494c:	24050003 	li	a1,3
    4950:	0c000000 	jal	0 <func_800EC960>
    4954:	2406000d 	li	a2,13
    4958:	3c020000 	lui	v0,0x0
    495c:	24420000 	addiu	v0,v0,0
    4960:	904d368e 	lbu	t5,13966(v0)
    4964:	9058368f 	lbu	t8,13967(v0)
    4968:	3c050000 	lui	a1,0x0
    496c:	24a50000 	addiu	a1,a1,0
    4970:	9046368c 	lbu	a2,13964(v0)
    4974:	9047368d 	lbu	a3,13965(v0)
    4978:	8fa400b0 	lw	a0,176(sp)
    497c:	afad0010 	sw	t5,16(sp)
    4980:	0c000000 	jal	0 <func_800EC960>
    4984:	afb80014 	sw	t8,20(sp)
    4988:	1000022f 	b	5248 <L800F1BA4+0x4>
    498c:	8fbf0064 	lw	ra,100(sp)

00004990 <L800F12F0>:
    4990:	3c080000 	lui	t0,0x0
    4994:	91080000 	lbu	t0,0(t0)
    4998:	240200ff 	li	v0,255
    499c:	240c00ff 	li	t4,255
    49a0:	310f0004 	andi	t7,t0,0x4
    49a4:	000fc883 	sra	t9,t7,0x2
    49a8:	03220019 	multu	t9,v0
    49ac:	310a0002 	andi	t2,t0,0x2
    49b0:	000a5843 	sra	t3,t2,0x1
    49b4:	310e0001 	andi	t6,t0,0x1
    49b8:	afac0010 	sw	t4,16(sp)
    49bc:	8fa400b0 	lw	a0,176(sp)
    49c0:	00002812 	mflo	a1
	...
    49cc:	01620019 	multu	t3,v0
    49d0:	00003012 	mflo	a2
	...
    49dc:	01c20019 	multu	t6,v0
    49e0:	00003812 	mflo	a3
    49e4:	0c000000 	jal	0 <func_800EC960>
    49e8:	00000000 	nop
    49ec:	8fa400b0 	lw	a0,176(sp)
    49f0:	24050003 	li	a1,3
    49f4:	0c000000 	jal	0 <func_800EC960>
    49f8:	24060004 	li	a2,4
    49fc:	3c020000 	lui	v0,0x0
    4a00:	24420000 	addiu	v0,v0,0
    4a04:	904d0002 	lbu	t5,2(v0)
    4a08:	3c050000 	lui	a1,0x0
    4a0c:	24a50000 	addiu	a1,a1,0
    4a10:	90460000 	lbu	a2,0(v0)
    4a14:	90470001 	lbu	a3,1(v0)
    4a18:	8fa400b0 	lw	a0,176(sp)
    4a1c:	0c000000 	jal	0 <func_800EC960>
    4a20:	afad0010 	sw	t5,16(sp)
    4a24:	8fa400b0 	lw	a0,176(sp)
    4a28:	24050003 	li	a1,3
    4a2c:	0c000000 	jal	0 <func_800EC960>
    4a30:	24060005 	li	a2,5
    4a34:	3c020000 	lui	v0,0x0
    4a38:	24420000 	addiu	v0,v0,0
    4a3c:	90580002 	lbu	t8,2(v0)
    4a40:	3c050000 	lui	a1,0x0
    4a44:	24a50000 	addiu	a1,a1,0
    4a48:	90460000 	lbu	a2,0(v0)
    4a4c:	90470001 	lbu	a3,1(v0)
    4a50:	8fa400b0 	lw	a0,176(sp)
    4a54:	0c000000 	jal	0 <func_800EC960>
    4a58:	afb80010 	sw	t8,16(sp)
    4a5c:	8fa400b0 	lw	a0,176(sp)
    4a60:	24050003 	li	a1,3
    4a64:	0c000000 	jal	0 <func_800EC960>
    4a68:	24060006 	li	a2,6
    4a6c:	3c140000 	lui	s4,0x0
    4a70:	26940000 	addiu	s4,s4,0
    4a74:	3c050000 	lui	a1,0x0
    4a78:	24a50000 	addiu	a1,a1,0
    4a7c:	8e860000 	lw	a2,0(s4)
    4a80:	0c000000 	jal	0 <func_800EC960>
    4a84:	8fa400b0 	lw	a0,176(sp)
    4a88:	3c150000 	lui	s5,0x0
    4a8c:	00009025 	move	s2,zero
    4a90:	26b50000 	addiu	s5,s5,0
    4a94:	00008025 	move	s0,zero
    4a98:	00002025 	move	a0,zero
    4a9c:	0000b025 	move	s6,zero
    4aa0:	00009825 	move	s3,zero
    4aa4:	24910007 	addiu	s1,a0,7
    4aa8:	00132880 	sll	a1,s3,0x2
    4aac:	00b32823 	subu	a1,a1,s3
    4ab0:	24a50003 	addiu	a1,a1,3
    4ab4:	8fa400b0 	lw	a0,176(sp)
    4ab8:	0c000000 	jal	0 <func_800EC960>
    4abc:	02203025 	move	a2,s1
    4ac0:	8e8f0000 	lw	t7,0(s4)
    4ac4:	8fa400b0 	lw	a0,176(sp)
    4ac8:	02a02825 	move	a1,s5
    4acc:	024fc821 	addu	t9,s2,t7
    4ad0:	26520001 	addiu	s2,s2,1
    4ad4:	325200ff 	andi	s2,s2,0xff
    4ad8:	0c000000 	jal	0 <func_800EC960>
    4adc:	93260000 	lbu	a2,0(t9)
    4ae0:	26d60001 	addiu	s6,s6,1
    4ae4:	32d600ff 	andi	s6,s6,0xff
    4ae8:	2ac10008 	slti	at,s6,8
    4aec:	1420ffee 	bnez	at,4aa8 <L800F12F0+0x118>
    4af0:	02c09825 	move	s3,s6
    4af4:	26100001 	addiu	s0,s0,1
    4af8:	321000ff 	andi	s0,s0,0xff
    4afc:	2a010004 	slti	at,s0,4
    4b00:	1420ffe6 	bnez	at,4a9c <L800F12F0+0x10c>
    4b04:	02002025 	move	a0,s0
    4b08:	8fa400b0 	lw	a0,176(sp)
    4b0c:	24050003 	li	a1,3
    4b10:	0c000000 	jal	0 <func_800EC960>
    4b14:	24060018 	li	a2,24
    4b18:	3c0a0000 	lui	t2,0x0
    4b1c:	3c0b0000 	lui	t3,0x0
    4b20:	916b0000 	lbu	t3,0(t3)
    4b24:	914a0000 	lbu	t2,0(t2)
    4b28:	3c050000 	lui	a1,0x0
    4b2c:	3c060000 	lui	a2,0x0
    4b30:	3c070000 	lui	a3,0x0
    4b34:	8ce70000 	lw	a3,0(a3)
    4b38:	80c60000 	lb	a2,0(a2)
    4b3c:	24a50000 	addiu	a1,a1,0
    4b40:	8fa400b0 	lw	a0,176(sp)
    4b44:	afab0014 	sw	t3,20(sp)
    4b48:	0c000000 	jal	0 <func_800EC960>
    4b4c:	afaa0010 	sw	t2,16(sp)
    4b50:	100001bd 	b	5248 <L800F1BA4+0x4>
    4b54:	8fbf0064 	lw	ra,100(sp)

00004b58 <L800F14B8>:
    4b58:	3c060000 	lui	a2,0x0
    4b5c:	90c60000 	lbu	a2,0(a2)
    4b60:	8fa400b0 	lw	a0,176(sp)
    4b64:	24050002 	li	a1,2
    4b68:	0c000000 	jal	0 <func_800EC960>
    4b6c:	24c60004 	addiu	a2,a2,4
    4b70:	3c080000 	lui	t0,0x0
    4b74:	91080000 	lbu	t0,0(t0)
    4b78:	2402007f 	li	v0,127
    4b7c:	241800ff 	li	t8,255
    4b80:	310e0004 	andi	t6,t0,0x4
    4b84:	000e6083 	sra	t4,t6,0x2
    4b88:	01820019 	multu	t4,v0
    4b8c:	310d0001 	andi	t5,t0,0x1
    4b90:	31060002 	andi	a2,t0,0x2
    4b94:	00063043 	sra	a2,a2,0x1
    4b98:	00c00821 	move	at,a2
    4b9c:	00063200 	sll	a2,a2,0x8
    4ba0:	00c13023 	subu	a2,a2,at
    4ba4:	afb80010 	sw	t8,16(sp)
    4ba8:	8fa400b0 	lw	a0,176(sp)
    4bac:	00002812 	mflo	a1
	...
    4bb8:	01a20019 	multu	t5,v0
    4bbc:	00003812 	mflo	a3
    4bc0:	0c000000 	jal	0 <func_800EC960>
    4bc4:	00000000 	nop
    4bc8:	3c050000 	lui	a1,0x0
    4bcc:	24a50000 	addiu	a1,a1,0
    4bd0:	0c000000 	jal	0 <func_800EC960>
    4bd4:	8fa400b0 	lw	a0,176(sp)
    4bd8:	3c080000 	lui	t0,0x0
    4bdc:	91080000 	lbu	t0,0(t0)
    4be0:	240900ff 	li	t1,255
    4be4:	240c00ff 	li	t4,255
    4be8:	310f0004 	andi	t7,t0,0x4
    4bec:	000fc883 	sra	t9,t7,0x2
    4bf0:	03290019 	multu	t9,t1
    4bf4:	310a0002 	andi	t2,t0,0x2
    4bf8:	000a5843 	sra	t3,t2,0x1
    4bfc:	310e0001 	andi	t6,t0,0x1
    4c00:	afac0010 	sw	t4,16(sp)
    4c04:	8fa400b0 	lw	a0,176(sp)
    4c08:	00002812 	mflo	a1
	...
    4c14:	01690019 	multu	t3,t1
    4c18:	00003012 	mflo	a2
	...
    4c24:	01c90019 	multu	t6,t1
    4c28:	00003812 	mflo	a3
    4c2c:	0c000000 	jal	0 <func_800EC960>
    4c30:	00000000 	nop
    4c34:	8fa400b0 	lw	a0,176(sp)
    4c38:	24050003 	li	a1,3
    4c3c:	0c000000 	jal	0 <func_800EC960>
    4c40:	24060004 	li	a2,4
    4c44:	3c100000 	lui	s0,0x0
    4c48:	26100000 	addiu	s0,s0,0
    4c4c:	96020000 	lhu	v0,0(s0)
    4c50:	3c180000 	lui	t8,0x0
    4c54:	27180000 	addiu	t8,t8,0
    4c58:	00026880 	sll	t5,v0,0x2
    4c5c:	01a26823 	subu	t5,t5,v0
    4c60:	000d6880 	sll	t5,t5,0x2
    4c64:	3c050000 	lui	a1,0x0
    4c68:	01a26823 	subu	t5,t5,v0
    4c6c:	01b83821 	addu	a3,t5,t8
    4c70:	24a50000 	addiu	a1,a1,0
    4c74:	8fa400b0 	lw	a0,176(sp)
    4c78:	0c000000 	jal	0 <func_800EC960>
    4c7c:	00403025 	move	a2,v0
    4c80:	8fa400b0 	lw	a0,176(sp)
    4c84:	24050003 	li	a1,3
    4c88:	0c000000 	jal	0 <func_800EC960>
    4c8c:	24060005 	li	a2,5
    4c90:	3c050000 	lui	a1,0x0
    4c94:	24a50000 	addiu	a1,a1,0
    4c98:	8fa400b0 	lw	a0,176(sp)
    4c9c:	0c000000 	jal	0 <func_800EC960>
    4ca0:	96060002 	lhu	a2,2(s0)
    4ca4:	8fa400b0 	lw	a0,176(sp)
    4ca8:	24050014 	li	a1,20
    4cac:	0c000000 	jal	0 <func_800EC960>
    4cb0:	24060006 	li	a2,6
    4cb4:	960f0000 	lhu	t7,0(s0)
    4cb8:	3c110000 	lui	s1,0x0
    4cbc:	26310000 	addiu	s1,s1,0
    4cc0:	000fc880 	sll	t9,t7,0x2
    4cc4:	960e0002 	lhu	t6,2(s0)
    4cc8:	02395021 	addu	t2,s1,t9
    4ccc:	8d4b0000 	lw	t3,0(t2)
    4cd0:	000e6080 	sll	t4,t6,0x2
    4cd4:	3c050000 	lui	a1,0x0
    4cd8:	016c6821 	addu	t5,t3,t4
    4cdc:	95a60002 	lhu	a2,2(t5)
    4ce0:	24a50000 	addiu	a1,a1,0
    4ce4:	0c000000 	jal	0 <func_800EC960>
    4ce8:	8fa400b0 	lw	a0,176(sp)
    4cec:	8fa400b0 	lw	a0,176(sp)
    4cf0:	24050003 	li	a1,3
    4cf4:	0c000000 	jal	0 <func_800EC960>
    4cf8:	24060006 	li	a2,6
    4cfc:	96180000 	lhu	t8,0(s0)
    4d00:	960e0002 	lhu	t6,2(s0)
    4d04:	24050010 	li	a1,16
    4d08:	00187880 	sll	t7,t8,0x2
    4d0c:	022fc821 	addu	t9,s1,t7
    4d10:	8f2a0000 	lw	t2,0(t9)
    4d14:	000e5880 	sll	t3,t6,0x2
    4d18:	014b6021 	addu	t4,t2,t3
    4d1c:	0c000000 	jal	0 <func_800EC960>
    4d20:	95840002 	lhu	a0,2(t4)
    4d24:	3c050000 	lui	a1,0x0
    4d28:	24a50000 	addiu	a1,a1,0
    4d2c:	8fa400b0 	lw	a0,176(sp)
    4d30:	0c000000 	jal	0 <func_800EC960>
    4d34:	00403025 	move	a2,v0
    4d38:	3c080000 	lui	t0,0x0
    4d3c:	91080000 	lbu	t0,0(t0)
    4d40:	2409007f 	li	t1,127
    4d44:	241900ff 	li	t9,255
    4d48:	310d0004 	andi	t5,t0,0x4
    4d4c:	000dc083 	sra	t8,t5,0x2
    4d50:	03090019 	multu	t8,t1
    4d54:	310f0001 	andi	t7,t0,0x1
    4d58:	31060002 	andi	a2,t0,0x2
    4d5c:	00063043 	sra	a2,a2,0x1
    4d60:	00c00821 	move	at,a2
    4d64:	00063200 	sll	a2,a2,0x8
    4d68:	00c13023 	subu	a2,a2,at
    4d6c:	afb90010 	sw	t9,16(sp)
    4d70:	8fa400b0 	lw	a0,176(sp)
    4d74:	00002812 	mflo	a1
	...
    4d80:	01e90019 	multu	t7,t1
    4d84:	00003812 	mflo	a3
    4d88:	0c000000 	jal	0 <func_800EC960>
    4d8c:	00000000 	nop
    4d90:	960e0000 	lhu	t6,0(s0)
    4d94:	960d0002 	lhu	t5,2(s0)
    4d98:	3c020000 	lui	v0,0x0
    4d9c:	000e5080 	sll	t2,t6,0x2
    4da0:	022a5821 	addu	t3,s1,t2
    4da4:	8d6c0000 	lw	t4,0(t3)
    4da8:	000dc080 	sll	t8,t5,0x2
    4dac:	90420000 	lbu	v0,0(v0)
    4db0:	01987821 	addu	t7,t4,t8
    4db4:	95f90002 	lhu	t9,2(t7)
    4db8:	240e000f 	li	t6,15
    4dbc:	01c25023 	subu	t2,t6,v0
    4dc0:	01595807 	srav	t3,t9,t2
    4dc4:	316d0001 	andi	t5,t3,0x1
    4dc8:	25ac0030 	addiu	t4,t5,48
    4dcc:	a3ac0098 	sb	t4,152(sp)
    4dd0:	8fa400b0 	lw	a0,176(sp)
    4dd4:	24060006 	li	a2,6
    4dd8:	0c000000 	jal	0 <func_800EC960>
    4ddc:	2445000c 	addiu	a1,v0,12
    4de0:	3c050000 	lui	a1,0x0
    4de4:	24a50000 	addiu	a1,a1,0
    4de8:	8fa400b0 	lw	a0,176(sp)
    4dec:	0c000000 	jal	0 <func_800EC960>
    4df0:	27a60098 	addiu	a2,sp,152
    4df4:	3c080000 	lui	t0,0x0
    4df8:	91080000 	lbu	t0,0(t0)
    4dfc:	240900ff 	li	t1,255
    4e00:	240b00ff 	li	t3,255
    4e04:	31180004 	andi	t8,t0,0x4
    4e08:	00187883 	sra	t7,t8,0x2
    4e0c:	01e90019 	multu	t7,t1
    4e10:	310e0002 	andi	t6,t0,0x2
    4e14:	000ec843 	sra	t9,t6,0x1
    4e18:	310a0001 	andi	t2,t0,0x1
    4e1c:	afab0010 	sw	t3,16(sp)
    4e20:	8fa400b0 	lw	a0,176(sp)
    4e24:	00002812 	mflo	a1
	...
    4e30:	03290019 	multu	t9,t1
    4e34:	00003012 	mflo	a2
	...
    4e40:	01490019 	multu	t2,t1
    4e44:	00003812 	mflo	a3
    4e48:	0c000000 	jal	0 <func_800EC960>
    4e4c:	00000000 	nop
    4e50:	8fa400b0 	lw	a0,176(sp)
    4e54:	24050003 	li	a1,3
    4e58:	0c000000 	jal	0 <func_800EC960>
    4e5c:	24060007 	li	a2,7
    4e60:	960d0000 	lhu	t5,0(s0)
    4e64:	960e0002 	lhu	t6,2(s0)
    4e68:	3c050000 	lui	a1,0x0
    4e6c:	000d6080 	sll	t4,t5,0x2
    4e70:	022cc021 	addu	t8,s1,t4
    4e74:	8f0f0000 	lw	t7,0(t8)
    4e78:	000ec880 	sll	t9,t6,0x2
    4e7c:	24a50000 	addiu	a1,a1,0
    4e80:	01f95021 	addu	t2,t7,t9
    4e84:	91460000 	lbu	a2,0(t2)
    4e88:	0c000000 	jal	0 <func_800EC960>
    4e8c:	8fa400b0 	lw	a0,176(sp)
    4e90:	100000ed 	b	5248 <L800F1BA4+0x4>
    4e94:	8fbf0064 	lw	ra,100(sp)

00004e98 <L800F17F8>:
    4e98:	8fa400b0 	lw	a0,176(sp)
    4e9c:	24050003 	li	a1,3
    4ea0:	24060004 	li	a2,4
    4ea4:	0c000000 	jal	0 <func_800EC960>
    4ea8:	0000b025 	move	s6,zero
    4eac:	3c080000 	lui	t0,0x0
    4eb0:	91080000 	lbu	t0,0(t0)
    4eb4:	240200ff 	li	v0,255
    4eb8:	240f00ff 	li	t7,255
    4ebc:	310b0004 	andi	t3,t0,0x4
    4ec0:	000b6883 	sra	t5,t3,0x2
    4ec4:	01a20019 	multu	t5,v0
    4ec8:	310c0002 	andi	t4,t0,0x2
    4ecc:	000cc043 	sra	t8,t4,0x1
    4ed0:	310e0001 	andi	t6,t0,0x1
    4ed4:	afaf0010 	sw	t7,16(sp)
    4ed8:	8fa400b0 	lw	a0,176(sp)
    4edc:	00002812 	mflo	a1
	...
    4ee8:	03020019 	multu	t8,v0
    4eec:	00003012 	mflo	a2
	...
    4ef8:	01c20019 	multu	t6,v0
    4efc:	00003812 	mflo	a3
    4f00:	0c000000 	jal	0 <func_800EC960>
    4f04:	00000000 	nop
    4f08:	3c190000 	lui	t9,0x0
    4f0c:	93390000 	lbu	t9,0(t9)
    4f10:	3c050000 	lui	a1,0x0
    4f14:	3c060000 	lui	a2,0x0
    4f18:	3c070000 	lui	a3,0x0
    4f1c:	80e70000 	lb	a3,0(a3)
    4f20:	80c60000 	lb	a2,0(a2)
    4f24:	24a50000 	addiu	a1,a1,0
    4f28:	8fa400b0 	lw	a0,176(sp)
    4f2c:	0c000000 	jal	0 <func_800EC960>
    4f30:	afb90010 	sw	t9,16(sp)
    4f34:	3c0a0000 	lui	t2,0x0
    4f38:	3c0b0000 	lui	t3,0x0
    4f3c:	8d6b0000 	lw	t3,0(t3)
    4f40:	8d4a0000 	lw	t2,0(t2)
    4f44:	154b0020 	bne	t2,t3,4fc8 <L800F17F8+0x130>
    4f48:	3c0d0000 	lui	t5,0x0
    4f4c:	3c0c0000 	lui	t4,0x0
    4f50:	8d8c0000 	lw	t4,0(t4)
    4f54:	8dad0000 	lw	t5,0(t5)
    4f58:	24040000 	li	a0,0
    4f5c:	24060000 	li	a2,0
    4f60:	24070040 	li	a3,64
    4f64:	0c000000 	jal	0 <func_800EC960>
    4f68:	01ac2823 	subu	a1,t5,t4
    4f6c:	00402025 	move	a0,v0
    4f70:	00602825 	move	a1,v1
    4f74:	24060000 	li	a2,0
    4f78:	0c000000 	jal	0 <func_800EC960>
    4f7c:	24070003 	li	a3,3
    4f80:	00402025 	move	a0,v0
    4f84:	0c000000 	jal	0 <func_800EC960>
    4f88:	00602825 	move	a1,v1
    4f8c:	3c010000 	lui	at,0x0
    4f90:	c4240000 	lwc1	$f4,0(at)
    4f94:	3c100000 	lui	s0,0x0
    4f98:	26100000 	addiu	s0,s0,0
    4f9c:	46040183 	div.s	$f6,$f0,$f4
    4fa0:	3c110000 	lui	s1,0x0
    4fa4:	26310000 	addiu	s1,s1,0
    4fa8:	c6280000 	lwc1	$f8,0(s1)
    4fac:	e6060000 	swc1	$f6,0(s0)
    4fb0:	c6020000 	lwc1	$f2,0(s0)
    4fb4:	4602403c 	c.lt.s	$f8,$f2
    4fb8:	00000000 	nop
    4fbc:	45000002 	bc1f	4fc8 <L800F17F8+0x130>
    4fc0:	00000000 	nop
    4fc4:	e6220000 	swc1	$f2,0(s1)
    4fc8:	3c100000 	lui	s0,0x0
    4fcc:	3c110000 	lui	s1,0x0
    4fd0:	26310000 	addiu	s1,s1,0
    4fd4:	26100000 	addiu	s0,s0,0
    4fd8:	8fa400b0 	lw	a0,176(sp)
    4fdc:	24050003 	li	a1,3
    4fe0:	0c000000 	jal	0 <func_800EC960>
    4fe4:	24060006 	li	a2,6
    4fe8:	c60a0000 	lwc1	$f10,0(s0)
    4fec:	3c050000 	lui	a1,0x0
    4ff0:	24a50000 	addiu	a1,a1,0
    4ff4:	46005421 	cvt.d.s	$f16,$f10
    4ff8:	8fa400b0 	lw	a0,176(sp)
    4ffc:	44078000 	mfc1	a3,$f16
    5000:	44068800 	mfc1	a2,$f17
    5004:	0c000000 	jal	0 <func_800EC960>
    5008:	00000000 	nop
    500c:	8fa400b0 	lw	a0,176(sp)
    5010:	24050003 	li	a1,3
    5014:	0c000000 	jal	0 <func_800EC960>
    5018:	24060007 	li	a2,7
    501c:	c6320000 	lwc1	$f18,0(s1)
    5020:	3c050000 	lui	a1,0x0
    5024:	24a50000 	addiu	a1,a1,0
    5028:	46009121 	cvt.d.s	$f4,$f18
    502c:	8fa400b0 	lw	a0,176(sp)
    5030:	44072000 	mfc1	a3,$f4
    5034:	44062800 	mfc1	a2,$f5
    5038:	0c000000 	jal	0 <func_800EC960>
    503c:	00000000 	nop
    5040:	8fa400b0 	lw	a0,176(sp)
    5044:	24050003 	li	a1,3
    5048:	0c000000 	jal	0 <func_800EC960>
    504c:	24060009 	li	a2,9
    5050:	3c0e0000 	lui	t6,0x0
    5054:	3c0f0000 	lui	t7,0x0
    5058:	91ef0000 	lbu	t7,0(t7)
    505c:	8dce0000 	lw	t6,0(t6)
    5060:	3c050000 	lui	a1,0x0
    5064:	3c060000 	lui	a2,0x0
    5068:	3c070000 	lui	a3,0x0
    506c:	8ce70000 	lw	a3,0(a3)
    5070:	90c60000 	lbu	a2,0(a2)
    5074:	24a50000 	addiu	a1,a1,0
    5078:	8fa400b0 	lw	a0,176(sp)
    507c:	afaf0014 	sw	t7,20(sp)
    5080:	0c000000 	jal	0 <func_800EC960>
    5084:	afae0010 	sw	t6,16(sp)
    5088:	8fa400b0 	lw	a0,176(sp)
    508c:	24050003 	li	a1,3
    5090:	0c000000 	jal	0 <func_800EC960>
    5094:	2406000a 	li	a2,10
    5098:	3c010000 	lui	at,0x0
    509c:	c4260000 	lwc1	$f6,0(at)
    50a0:	3c190000 	lui	t9,0x0
    50a4:	83390000 	lb	t9,0(t9)
    50a8:	46003221 	cvt.d.s	$f8,$f6
    50ac:	3c050000 	lui	a1,0x0
    50b0:	44074000 	mfc1	a3,$f8
    50b4:	44064800 	mfc1	a2,$f9
    50b8:	24a50000 	addiu	a1,a1,0
    50bc:	8fa400b0 	lw	a0,176(sp)
    50c0:	0c000000 	jal	0 <func_800EC960>
    50c4:	afb90010 	sw	t9,16(sp)
    50c8:	8fa400b0 	lw	a0,176(sp)
    50cc:	24050003 	li	a1,3
    50d0:	0c000000 	jal	0 <func_800EC960>
    50d4:	2406000b 	li	a2,11
    50d8:	3c050000 	lui	a1,0x0
    50dc:	3c060000 	lui	a2,0x0
    50e0:	90c60000 	lbu	a2,0(a2)
    50e4:	24a50000 	addiu	a1,a1,0
    50e8:	0c000000 	jal	0 <func_800EC960>
    50ec:	8fa400b0 	lw	a0,176(sp)
    50f0:	8fa400b0 	lw	a0,176(sp)
    50f4:	24050003 	li	a1,3
    50f8:	0c000000 	jal	0 <func_800EC960>
    50fc:	2406000c 	li	a2,12
    5100:	3c050000 	lui	a1,0x0
    5104:	3c060000 	lui	a2,0x0
    5108:	80c60000 	lb	a2,0(a2)
    510c:	24a50000 	addiu	a1,a1,0
    5110:	0c000000 	jal	0 <func_800EC960>
    5114:	8fa400b0 	lw	a0,176(sp)
    5118:	8fa400b0 	lw	a0,176(sp)
    511c:	24050003 	li	a1,3
    5120:	0c000000 	jal	0 <func_800EC960>
    5124:	2406000c 	li	a2,12
    5128:	3c100000 	lui	s0,0x0
    512c:	26100000 	addiu	s0,s0,0
    5130:	920a0000 	lbu	t2,0(s0)
    5134:	24010001 	li	at,1
    5138:	1541000b 	bne	t2,at,5168 <L800F17F8+0x2d0>
    513c:	3c010000 	lui	at,0x0
    5140:	c42a0000 	lwc1	$f10,0(at)
    5144:	3c050000 	lui	a1,0x0
    5148:	24a50000 	addiu	a1,a1,0
    514c:	46005421 	cvt.d.s	$f16,$f10
    5150:	8fa400b0 	lw	a0,176(sp)
    5154:	44078000 	mfc1	a3,$f16
    5158:	44068800 	mfc1	a2,$f17
    515c:	0c000000 	jal	0 <func_800EC960>
    5160:	00000000 	nop
    5164:	a2000000 	sb	zero,0(s0)
    5168:	8fa400b0 	lw	a0,176(sp)
    516c:	24050003 	li	a1,3
    5170:	0c000000 	jal	0 <func_800EC960>
    5174:	24060017 	li	a2,23
    5178:	3c060000 	lui	a2,0x0
    517c:	90c60000 	lbu	a2,0(a2)
    5180:	8fa400b0 	lw	a0,176(sp)
    5184:	3c050000 	lui	a1,0x0
    5188:	50c00004 	beqzl	a2,519c <L800F17F8+0x304>
    518c:	8fa400b0 	lw	a0,176(sp)
    5190:	0c000000 	jal	0 <func_800EC960>
    5194:	24a50000 	addiu	a1,a1,0
    5198:	8fa400b0 	lw	a0,176(sp)
    519c:	24050003 	li	a1,3
    51a0:	0c000000 	jal	0 <func_800EC960>
    51a4:	24060018 	li	a2,24
    51a8:	3c060000 	lui	a2,0x0
    51ac:	8cc60000 	lw	a2,0(a2)
    51b0:	8fa400b0 	lw	a0,176(sp)
    51b4:	3c050000 	lui	a1,0x0
    51b8:	50c00004 	beqzl	a2,51cc <L800F17F8+0x334>
    51bc:	8fa400b0 	lw	a0,176(sp)
    51c0:	0c000000 	jal	0 <func_800EC960>
    51c4:	24a50000 	addiu	a1,a1,0
    51c8:	8fa400b0 	lw	a0,176(sp)
    51cc:	24050003 	li	a1,3
    51d0:	0c000000 	jal	0 <func_800EC960>
    51d4:	24060019 	li	a2,25
    51d8:	3c050000 	lui	a1,0x0
    51dc:	3c060000 	lui	a2,0x0
    51e0:	90c60000 	lbu	a2,0(a2)
    51e4:	24a50000 	addiu	a1,a1,0
    51e8:	8fa400b0 	lw	a0,176(sp)
    51ec:	0c000000 	jal	0 <func_800EC960>
    51f0:	8fa70078 	lw	a3,120(sp)
    51f4:	3c100000 	lui	s0,0x0
    51f8:	26100000 	addiu	s0,s0,0
    51fc:	00009825 	move	s3,zero
    5200:	00132880 	sll	a1,s3,0x2
    5204:	00b32823 	subu	a1,a1,s3
    5208:	24a50003 	addiu	a1,a1,3
    520c:	8fa400b0 	lw	a0,176(sp)
    5210:	0c000000 	jal	0 <func_800EC960>
    5214:	2406001a 	li	a2,26
    5218:	3c060000 	lui	a2,0x0
    521c:	00d63021 	addu	a2,a2,s6
    5220:	90c60000 	lbu	a2,0(a2)
    5224:	8fa400b0 	lw	a0,176(sp)
    5228:	0c000000 	jal	0 <func_800EC960>
    522c:	02002825 	move	a1,s0
    5230:	26d60001 	addiu	s6,s6,1
    5234:	32d600ff 	andi	s6,s6,0xff
    5238:	2ac1000b 	slti	at,s6,11
    523c:	1420fff0 	bnez	at,5200 <L800F17F8+0x368>
    5240:	02c09825 	move	s3,s6

00005244 <L800F1BA4>:
    5244:	8fbf0064 	lw	ra,100(sp)
    5248:	d7b40030 	ldc1	$f20,48(sp)
    524c:	d7b60038 	ldc1	$f22,56(sp)
    5250:	8fb00040 	lw	s0,64(sp)
    5254:	8fb10044 	lw	s1,68(sp)
    5258:	8fb20048 	lw	s2,72(sp)
    525c:	8fb3004c 	lw	s3,76(sp)
    5260:	8fb40050 	lw	s4,80(sp)
    5264:	8fb50054 	lw	s5,84(sp)
    5268:	8fb60058 	lw	s6,88(sp)
    526c:	8fb7005c 	lw	s7,92(sp)
    5270:	8fbe0060 	lw	s8,96(sp)
    5274:	03e00008 	jr	ra
    5278:	27bd00b0 	addiu	sp,sp,176

0000527c <func_800F1BDC>:
    527c:	3c020000 	lui	v0,0x0
    5280:	8c420000 	lw	v0,0(v0)
    5284:	27bdffe0 	addiu	sp,sp,-32
    5288:	afbf001c 	sw	ra,28(sp)
    528c:	304e0004 	andi	t6,v0,0x4
    5290:	11c0000e 	beqz	t6,52cc <func_800F1BDC+0x50>
    5294:	24090001 	li	t1,1
    5298:	3c0b0000 	lui	t3,0x0
    529c:	256b0000 	addiu	t3,t3,0
    52a0:	916f0000 	lbu	t7,0(t3)
    52a4:	3c0a0000 	lui	t2,0x0
    52a8:	254a0000 	addiu	t2,t2,0
    52ac:	000fc040 	sll	t8,t7,0x1
    52b0:	0158c821 	addu	t9,t2,t8
    52b4:	972c0000 	lhu	t4,0(t9)
    52b8:	29810010 	slti	at,t4,16
    52bc:	14200019 	bnez	at,5324 <func_800F1BDC+0xa8>
    52c0:	00000000 	nop
    52c4:	10000017 	b	5324 <func_800F1BDC+0xa8>
    52c8:	24090010 	li	t1,16
    52cc:	304d0002 	andi	t5,v0,0x2
    52d0:	11a0000c 	beqz	t5,5304 <func_800F1BDC+0x88>
    52d4:	3c0e0000 	lui	t6,0x0
    52d8:	91ce0000 	lbu	t6,0(t6)
    52dc:	3c0a0000 	lui	t2,0x0
    52e0:	254a0000 	addiu	t2,t2,0
    52e4:	000e7840 	sll	t7,t6,0x1
    52e8:	014fc021 	addu	t8,t2,t7
    52ec:	97190000 	lhu	t9,0(t8)
    52f0:	2b210010 	slti	at,t9,16
    52f4:	1420000b 	bnez	at,5324 <func_800F1BDC+0xa8>
    52f8:	00000000 	nop
    52fc:	10000009 	b	5324 <func_800F1BDC+0xa8>
    5300:	24090008 	li	t1,8
    5304:	304c0008 	andi	t4,v0,0x8
    5308:	11800006 	beqz	t4,5324 <func_800F1BDC+0xa8>
    530c:	3c0d0000 	lui	t5,0x0
    5310:	91ad0000 	lbu	t5,0(t5)
    5314:	3c010000 	lui	at,0x0
    5318:	000d7040 	sll	t6,t5,0x1
    531c:	002e0821 	addu	at,at,t6
    5320:	a4200000 	sh	zero,0(at)
    5324:	3c040000 	lui	a0,0x0
    5328:	8c840000 	lw	a0,0(a0)
    532c:	3c0b0000 	lui	t3,0x0
    5330:	256b0000 	addiu	t3,t3,0
    5334:	3c0a0000 	lui	t2,0x0
    5338:	308f0800 	andi	t7,a0,0x800
    533c:	254a0000 	addiu	t2,t2,0
    5340:	11e00009 	beqz	t7,5368 <func_800F1BDC+0xec>
    5344:	91620000 	lbu	v0,0(t3)
    5348:	18400005 	blez	v0,5360 <func_800F1BDC+0xe4>
    534c:	2419000a 	li	t9,10
    5350:	2458ffff 	addiu	t8,v0,-1
    5354:	a1780000 	sb	t8,0(t3)
    5358:	10000003 	b	5368 <func_800F1BDC+0xec>
    535c:	330200ff 	andi	v0,t8,0xff
    5360:	a1790000 	sb	t9,0(t3)
    5364:	332200ff 	andi	v0,t9,0xff
    5368:	308c0400 	andi	t4,a0,0x400
    536c:	11800009 	beqz	t4,5394 <func_800F1BDC+0x118>
    5370:	308e0200 	andi	t6,a0,0x200
    5374:	2841000a 	slti	at,v0,10
    5378:	10200004 	beqz	at,538c <func_800F1BDC+0x110>
    537c:	244d0001 	addiu	t5,v0,1
    5380:	a16d0000 	sb	t5,0(t3)
    5384:	10000003 	b	5394 <func_800F1BDC+0x118>
    5388:	31a200ff 	andi	v0,t5,0xff
    538c:	a1600000 	sb	zero,0(t3)
    5390:	300200ff 	andi	v0,zero,0xff
    5394:	11c00010 	beqz	t6,53d8 <func_800F1BDC+0x15c>
    5398:	3c080000 	lui	t0,0x0
    539c:	25080000 	addiu	t0,t0,0
    53a0:	00021840 	sll	v1,v0,0x1
    53a4:	01032821 	addu	a1,t0,v1
    53a8:	94a60000 	lhu	a2,0(a1)
    53ac:	01203825 	move	a3,t1
    53b0:	0143c021 	addu	t8,t2,v1
    53b4:	00c9082a 	slt	at,a2,t1
    53b8:	14200003 	bnez	at,53c8 <func_800F1BDC+0x14c>
    53bc:	00c77823 	subu	t7,a2,a3
    53c0:	10000005 	b	53d8 <func_800F1BDC+0x15c>
    53c4:	a4af0000 	sh	t7,0(a1)
    53c8:	97190000 	lhu	t9,0(t8)
    53cc:	00d96021 	addu	t4,a2,t9
    53d0:	01876823 	subu	t5,t4,a3
    53d4:	a4ad0000 	sh	t5,0(a1)
    53d8:	3c080000 	lui	t0,0x0
    53dc:	308e0100 	andi	t6,a0,0x100
    53e0:	11c0000d 	beqz	t6,5418 <func_800F1BDC+0x19c>
    53e4:	25080000 	addiu	t0,t0,0
    53e8:	00021840 	sll	v1,v0,0x1
    53ec:	01032821 	addu	a1,t0,v1
    53f0:	94af0000 	lhu	t7,0(a1)
    53f4:	0143c021 	addu	t8,t2,v1
    53f8:	97060000 	lhu	a2,0(t8)
    53fc:	01e92021 	addu	a0,t7,t1
    5400:	0086082a 	slt	at,a0,a2
    5404:	10200003 	beqz	at,5414 <func_800F1BDC+0x198>
    5408:	0086c823 	subu	t9,a0,a2
    540c:	10000002 	b	5418 <func_800F1BDC+0x19c>
    5410:	a4a40000 	sh	a0,0(a1)
    5414:	a4b90000 	sh	t9,0(a1)
    5418:	24010008 	li	at,8
    541c:	14410019 	bne	v0,at,5484 <func_800F1BDC+0x208>
    5420:	00401825 	move	v1,v0
    5424:	00026040 	sll	t4,v0,0x1
    5428:	010c6821 	addu	t5,t0,t4
    542c:	95ae0000 	lhu	t6,0(t5)
    5430:	11c0000b 	beqz	t6,5460 <func_800F1BDC+0x1e4>
    5434:	00000000 	nop
    5438:	0c000000 	jal	0 <func_800EC960>
    543c:	24040020 	li	a0,32
    5440:	3c020000 	lui	v0,0x0
    5444:	90420000 	lbu	v0,0(v0)
    5448:	3c0b0000 	lui	t3,0x0
    544c:	3c080000 	lui	t0,0x0
    5450:	25080000 	addiu	t0,t0,0
    5454:	256b0000 	addiu	t3,t3,0
    5458:	1000000a 	b	5484 <func_800F1BDC+0x208>
    545c:	00401825 	move	v1,v0
    5460:	0c000000 	jal	0 <func_800EC960>
    5464:	00002025 	move	a0,zero
    5468:	3c020000 	lui	v0,0x0
    546c:	90420000 	lbu	v0,0(v0)
    5470:	3c0b0000 	lui	t3,0x0
    5474:	3c080000 	lui	t0,0x0
    5478:	25080000 	addiu	t0,t0,0
    547c:	256b0000 	addiu	t3,t3,0
    5480:	00401825 	move	v1,v0
    5484:	24010009 	li	at,9
    5488:	14610012 	bne	v1,at,54d4 <func_800F1BDC+0x258>
    548c:	00027840 	sll	t7,v0,0x1
    5490:	010fc021 	addu	t8,t0,t7
    5494:	97190000 	lhu	t9,0(t8)
    5498:	13200008 	beqz	t9,54bc <func_800F1BDC+0x240>
    549c:	00000000 	nop
    54a0:	0c000000 	jal	0 <func_800EC960>
    54a4:	24040020 	li	a0,32
    54a8:	3c0b0000 	lui	t3,0x0
    54ac:	3c080000 	lui	t0,0x0
    54b0:	25080000 	addiu	t0,t0,0
    54b4:	10000007 	b	54d4 <func_800F1BDC+0x258>
    54b8:	256b0000 	addiu	t3,t3,0
    54bc:	0c000000 	jal	0 <func_800EC960>
    54c0:	00002025 	move	a0,zero
    54c4:	3c0b0000 	lui	t3,0x0
    54c8:	3c080000 	lui	t0,0x0
    54cc:	25080000 	addiu	t0,t0,0
    54d0:	256b0000 	addiu	t3,t3,0
    54d4:	3c040000 	lui	a0,0x0
    54d8:	8c840000 	lw	a0,0(a0)
    54dc:	308c8000 	andi	t4,a0,0x8000
    54e0:	51800082 	beqzl	t4,56ec <L800F2048+0x4>
    54e4:	308e4000 	andi	t6,a0,0x4000
    54e8:	91620000 	lbu	v0,0(t3)
    54ec:	2c41000b 	sltiu	at,v0,11
    54f0:	1020007d 	beqz	at,56e8 <L800F2048>
    54f4:	00401825 	move	v1,v0
    54f8:	00036880 	sll	t5,v1,0x2
    54fc:	3c010000 	lui	at,0x0
    5500:	002d0821 	addu	at,at,t5
    5504:	8c2d0000 	lw	t5,0(at)
    5508:	01a00008 	jr	t5
    550c:	00000000 	nop

00005510 <L800F1E70>:
    5510:	00027040 	sll	t6,v0,0x1
    5514:	010e7821 	addu	t7,t0,t6
    5518:	95f80000 	lhu	t8,0(t7)
    551c:	0003ce00 	sll	t9,v1,0x18
    5520:	0c000000 	jal	0 <func_800EC960>
    5524:	03192025 	or	a0,t8,t9
    5528:	3c040000 	lui	a0,0x0
    552c:	3c0b0000 	lui	t3,0x0
    5530:	3c080000 	lui	t0,0x0
    5534:	25080000 	addiu	t0,t0,0
    5538:	256b0000 	addiu	t3,t3,0
    553c:	1000006a 	b	56e8 <L800F2048>
    5540:	8c840000 	lw	a0,0(a0)

00005544 <L800F1EA4>:
    5544:	950d0004 	lhu	t5,4(t0)
    5548:	950c0006 	lhu	t4,6(t0)
    554c:	3c070000 	lui	a3,0x0
    5550:	000d7b00 	sll	t7,t5,0xc
    5554:	3c180000 	lui	t8,0x0
    5558:	018f2021 	addu	a0,t4,t7
    555c:	24e70000 	addiu	a3,a3,0
    5560:	24840800 	addiu	a0,a0,2048
    5564:	27180000 	addiu	t8,t8,0
    5568:	3c050000 	lui	a1,0x0
    556c:	24a50000 	addiu	a1,a1,0
    5570:	afb80014 	sw	t8,20(sp)
    5574:	3084ffff 	andi	a0,a0,0xffff
    5578:	afa70010 	sw	a3,16(sp)
    557c:	0c000000 	jal	0 <func_800EC960>
    5580:	24060004 	li	a2,4
    5584:	3c040000 	lui	a0,0x0
    5588:	3c0b0000 	lui	t3,0x0
    558c:	3c080000 	lui	t0,0x0
    5590:	25080000 	addiu	t0,t0,0
    5594:	256b0000 	addiu	t3,t3,0
    5598:	10000053 	b	56e8 <L800F2048>
    559c:	8c840000 	lw	a0,0(a0)

000055a0 <L800F1F00>:
    55a0:	0002c840 	sll	t9,v0,0x1
    55a4:	01196821 	addu	t5,t0,t9
    55a8:	0c000000 	jal	0 <func_800EC960>
    55ac:	81a40001 	lb	a0,1(t5)
    55b0:	3c040000 	lui	a0,0x0
    55b4:	3c0b0000 	lui	t3,0x0
    55b8:	3c080000 	lui	t0,0x0
    55bc:	25080000 	addiu	t0,t0,0
    55c0:	256b0000 	addiu	t3,t3,0
    55c4:	10000048 	b	56e8 <L800F2048>
    55c8:	8c840000 	lw	a0,0(a0)

000055cc <L800F1F2C>:
    55cc:	00027040 	sll	t6,v0,0x1
    55d0:	010e6021 	addu	t4,t0,t6
    55d4:	95840000 	lhu	a0,0(t4)
    55d8:	3c01e000 	lui	at,0xe000
    55dc:	34210100 	ori	at,at,0x100
    55e0:	0c000000 	jal	0 <func_800EC960>
    55e4:	00812025 	or	a0,a0,at
    55e8:	3c040000 	lui	a0,0x0
    55ec:	3c0b0000 	lui	t3,0x0
    55f0:	3c080000 	lui	t0,0x0
    55f4:	25080000 	addiu	t0,t0,0
    55f8:	256b0000 	addiu	t3,t3,0
    55fc:	1000003a 	b	56e8 <L800F2048>
    5600:	8c840000 	lw	a0,0(a0)

00005604 <L800F1F64>:
    5604:	00027840 	sll	t7,v0,0x1
    5608:	010fc021 	addu	t8,t0,t7
    560c:	93040001 	lbu	a0,1(t8)
    5610:	3c01f000 	lui	at,0xf000
    5614:	0c000000 	jal	0 <func_800EC960>
    5618:	00812025 	or	a0,a0,at
    561c:	3c190000 	lui	t9,0x0
    5620:	97390000 	lhu	t9,0(t9)
    5624:	3c030000 	lui	v1,0x0
    5628:	24630000 	addiu	v1,v1,0
    562c:	332d00ff 	andi	t5,t9,0xff
    5630:	000d70c0 	sll	t6,t5,0x3
    5634:	01cd7023 	subu	t6,t6,t5
    5638:	000e70c0 	sll	t6,t6,0x3
    563c:	3c020000 	lui	v0,0x0
    5640:	3c040000 	lui	a0,0x0
    5644:	004e1021 	addu	v0,v0,t6
    5648:	a0790000 	sb	t9,0(v1)
    564c:	90420000 	lbu	v0,0(v0)
    5650:	24840000 	addiu	a0,a0,0
    5654:	908c0000 	lbu	t4,0(a0)
    5658:	2442ffff 	addiu	v0,v0,-1
    565c:	3c0b0000 	lui	t3,0x0
    5660:	004c082a 	slt	at,v0,t4
    5664:	10200002 	beqz	at,5670 <L800F1F64+0x6c>
    5668:	256b0000 	addiu	t3,t3,0
    566c:	a0820000 	sb	v0,0(a0)
    5670:	3c040000 	lui	a0,0x0
    5674:	3c080000 	lui	t0,0x0
    5678:	25080000 	addiu	t0,t0,0
    567c:	1000001a 	b	56e8 <L800F2048>
    5680:	8c840000 	lw	a0,0(a0)

00005684 <L800F1FE4>:
    5684:	00027840 	sll	t7,v0,0x1
    5688:	010fc021 	addu	t8,t0,t7
    568c:	0c000000 	jal	0 <func_800EC960>
    5690:	93040001 	lbu	a0,1(t8)
    5694:	3c040000 	lui	a0,0x0
    5698:	3c0b0000 	lui	t3,0x0
    569c:	3c080000 	lui	t0,0x0
    56a0:	25080000 	addiu	t0,t0,0
    56a4:	256b0000 	addiu	t3,t3,0
    56a8:	1000000f 	b	56e8 <L800F2048>
    56ac:	8c840000 	lw	a0,0(a0)

000056b0 <L800F2010>:
    56b0:	0002c840 	sll	t9,v0,0x1
    56b4:	01196821 	addu	t5,t0,t9
    56b8:	95a40000 	lhu	a0,0(t5)
    56bc:	00800821 	move	at,a0
    56c0:	000421c0 	sll	a0,a0,0x7
    56c4:	00812023 	subu	a0,a0,at
    56c8:	0c000000 	jal	0 <func_800EC960>
    56cc:	3084ffff 	andi	a0,a0,0xffff
    56d0:	3c040000 	lui	a0,0x0
    56d4:	3c0b0000 	lui	t3,0x0
    56d8:	3c080000 	lui	t0,0x0
    56dc:	25080000 	addiu	t0,t0,0
    56e0:	256b0000 	addiu	t3,t3,0
    56e4:	8c840000 	lw	a0,0(a0)

000056e8 <L800F2048>:
    56e8:	308e4000 	andi	t6,a0,0x4000
    56ec:	51c00023 	beqzl	t6,577c <L800F20D8+0x4>
    56f0:	308f0004 	andi	t7,a0,0x4
    56f4:	91630000 	lbu	v1,0(t3)
    56f8:	2c610008 	sltiu	at,v1,8
    56fc:	1020001e 	beqz	at,5778 <L800F20D8>
    5700:	00036080 	sll	t4,v1,0x2
    5704:	3c010000 	lui	at,0x0
    5708:	002c0821 	addu	at,at,t4
    570c:	8c2c0000 	lw	t4,0(at)
    5710:	01800008 	jr	t4
    5714:	00000000 	nop

00005718 <L800F2078>:
    5718:	3c011000 	lui	at,0x1000
    571c:	342100ff 	ori	at,at,0xff
    5720:	00032600 	sll	a0,v1,0x18
    5724:	0c000000 	jal	0 <func_800EC960>
    5728:	00812025 	or	a0,a0,at
    572c:	3c040000 	lui	a0,0x0
    5730:	3c0b0000 	lui	t3,0x0
    5734:	256b0000 	addiu	t3,t3,0
    5738:	1000000f 	b	5778 <L800F20D8>
    573c:	8c840000 	lw	a0,0(a0)

00005740 <L800F20A0>:
    5740:	3c041000 	lui	a0,0x1000
    5744:	0c000000 	jal	0 <func_800EC960>
    5748:	348400ff 	ori	a0,a0,0xff
    574c:	3c040000 	lui	a0,0x0
    5750:	3c0b0000 	lui	t3,0x0
    5754:	256b0000 	addiu	t3,t3,0
    5758:	10000007 	b	5778 <L800F20D8>
    575c:	8c840000 	lw	a0,0(a0)

00005760 <L800F20C0>:
    5760:	0c000000 	jal	0 <func_800EC960>
    5764:	91040005 	lbu	a0,5(t0)
    5768:	3c040000 	lui	a0,0x0
    576c:	3c0b0000 	lui	t3,0x0
    5770:	256b0000 	addiu	t3,t3,0
    5774:	8c840000 	lw	a0,0(a0)

00005778 <L800F20D8>:
    5778:	308f0004 	andi	t7,a0,0x4
    577c:	51e0000e 	beqzl	t7,57b8 <L800F20D8+0x40>
    5780:	308d0001 	andi	t5,a0,0x1
    5784:	91620000 	lbu	v0,0(t3)
    5788:	3c190000 	lui	t9,0x0
    578c:	27390000 	addiu	t9,t9,0
    5790:	14400008 	bnez	v0,57b4 <L800F20D8+0x3c>
    5794:	0002c040 	sll	t8,v0,0x1
    5798:	03192821 	addu	a1,t8,t9
    579c:	0c000000 	jal	0 <func_800EC960>
    57a0:	94a40000 	lhu	a0,0(a1)
    57a4:	3c040000 	lui	a0,0x0
    57a8:	3c0b0000 	lui	t3,0x0
    57ac:	256b0000 	addiu	t3,t3,0
    57b0:	8c840000 	lw	a0,0(a0)
    57b4:	308d0001 	andi	t5,a0,0x1
    57b8:	51a0000a 	beqzl	t5,57e4 <L800F20D8+0x6c>
    57bc:	8fbf001c 	lw	ra,28(sp)
    57c0:	91620000 	lbu	v0,0(t3)
    57c4:	3c0c0000 	lui	t4,0x0
    57c8:	258c0000 	addiu	t4,t4,0
    57cc:	14400004 	bnez	v0,57e0 <L800F20D8+0x68>
    57d0:	00027040 	sll	t6,v0,0x1
    57d4:	01cc2821 	addu	a1,t6,t4
    57d8:	0c000000 	jal	0 <func_800EC960>
    57dc:	94a40000 	lhu	a0,0(a1)
    57e0:	8fbf001c 	lw	ra,28(sp)
    57e4:	27bd0020 	addiu	sp,sp,32
    57e8:	03e00008 	jr	ra
    57ec:	00000000 	nop

000057f0 <func_800F2150>:
    57f0:	3c020000 	lui	v0,0x0
    57f4:	8c420000 	lw	v0,0(v0)
    57f8:	3c030000 	lui	v1,0x0
    57fc:	24630000 	addiu	v1,v1,0
    5800:	304e0008 	andi	t6,v0,0x8
    5804:	11c00004 	beqz	t6,5818 <func_800F2150+0x28>
    5808:	30590004 	andi	t9,v0,0x4
    580c:	806f0000 	lb	t7,0(v1)
    5810:	25f8ffff 	addiu	t8,t7,-1
    5814:	a0780000 	sb	t8,0(v1)
    5818:	3c030000 	lui	v1,0x0
    581c:	13200004 	beqz	t9,5830 <func_800F2150+0x40>
    5820:	24630000 	addiu	v1,v1,0
    5824:	80680000 	lb	t0,0(v1)
    5828:	25090001 	addiu	t1,t0,1
    582c:	a0690000 	sb	t1,0(v1)
    5830:	304a0002 	andi	t2,v0,0x2
    5834:	11400006 	beqz	t2,5850 <func_800F2150+0x60>
    5838:	304d0001 	andi	t5,v0,0x1
    583c:	3c040000 	lui	a0,0x0
    5840:	24840000 	addiu	a0,a0,0
    5844:	808b0000 	lb	t3,0(a0)
    5848:	256cffff 	addiu	t4,t3,-1
    584c:	a08c0000 	sb	t4,0(a0)
    5850:	3c040000 	lui	a0,0x0
    5854:	11a00004 	beqz	t5,5868 <func_800F2150+0x78>
    5858:	24840000 	addiu	a0,a0,0
    585c:	808e0000 	lb	t6,0(a0)
    5860:	25cf0001 	addiu	t7,t6,1
    5864:	a08f0000 	sb	t7,0(a0)
    5868:	30584000 	andi	t8,v0,0x4000
    586c:	13000003 	beqz	t8,587c <func_800F2150+0x8c>
    5870:	30590800 	andi	t9,v0,0x800
    5874:	a0800000 	sb	zero,0(a0)
    5878:	a0600000 	sb	zero,0(v1)
    587c:	13200007 	beqz	t9,589c <func_800F2150+0xac>
    5880:	30490400 	andi	t1,v0,0x400
    5884:	3c050000 	lui	a1,0x0
    5888:	24a50000 	addiu	a1,a1,0
    588c:	80a30000 	lb	v1,0(a1)
    5890:	18600002 	blez	v1,589c <func_800F2150+0xac>
    5894:	2468ffff 	addiu	t0,v1,-1
    5898:	a0a80000 	sb	t0,0(a1)
    589c:	3c050000 	lui	a1,0x0
    58a0:	11200006 	beqz	t1,58bc <func_800F2150+0xcc>
    58a4:	24a50000 	addiu	a1,a1,0
    58a8:	80a30000 	lb	v1,0(a1)
    58ac:	28610006 	slti	at,v1,6
    58b0:	10200002 	beqz	at,58bc <func_800F2150+0xcc>
    58b4:	246a0001 	addiu	t2,v1,1
    58b8:	a0aa0000 	sb	t2,0(a1)
    58bc:	304b0200 	andi	t3,v0,0x200
    58c0:	11600009 	beqz	t3,58e8 <func_800F2150+0xf8>
    58c4:	304f0100 	andi	t7,v0,0x100
    58c8:	80ac0000 	lb	t4,0(a1)
    58cc:	3c0d0000 	lui	t5,0x0
    58d0:	25ad0000 	addiu	t5,t5,0
    58d4:	018d1821 	addu	v1,t4,t5
    58d8:	80640000 	lb	a0,0(v1)
    58dc:	18800002 	blez	a0,58e8 <func_800F2150+0xf8>
    58e0:	248effff 	addiu	t6,a0,-1
    58e4:	a06e0000 	sb	t6,0(v1)
    58e8:	11e0000a 	beqz	t7,5914 <func_800F2150+0x124>
    58ec:	00000000 	nop
    58f0:	80b80000 	lb	t8,0(a1)
    58f4:	3c190000 	lui	t9,0x0
    58f8:	27390000 	addiu	t9,t9,0
    58fc:	03191821 	addu	v1,t8,t9
    5900:	80640000 	lb	a0,0(v1)
    5904:	28810004 	slti	at,a0,4
    5908:	10200002 	beqz	at,5914 <func_800F2150+0x124>
    590c:	24880001 	addiu	t0,a0,1
    5910:	a0680000 	sb	t0,0(v1)
    5914:	03e00008 	jr	ra
    5918:	00000000 	nop

0000591c <func_800F227C>:
    591c:	3c060000 	lui	a2,0x0
    5920:	24c60000 	addiu	a2,a2,0
    5924:	90ce0000 	lbu	t6,0(a2)
    5928:	3c020000 	lui	v0,0x0
    592c:	11c0002c 	beqz	t6,59e0 <func_800F227C+0xc4>
    5930:	00000000 	nop
    5934:	8c420000 	lw	v0,0(v0)
    5938:	3c030000 	lui	v1,0x0
    593c:	24630000 	addiu	v1,v1,0
    5940:	304f0008 	andi	t7,v0,0x8
    5944:	11e00004 	beqz	t7,5958 <func_800F227C+0x3c>
    5948:	30480004 	andi	t0,v0,0x4
    594c:	80780000 	lb	t8,0(v1)
    5950:	2719ffff 	addiu	t9,t8,-1
    5954:	a0790000 	sb	t9,0(v1)
    5958:	3c030000 	lui	v1,0x0
    595c:	11000004 	beqz	t0,5970 <func_800F227C+0x54>
    5960:	24630000 	addiu	v1,v1,0
    5964:	80690000 	lb	t1,0(v1)
    5968:	252a0001 	addiu	t2,t1,1
    596c:	a06a0000 	sb	t2,0(v1)
    5970:	304b0002 	andi	t3,v0,0x2
    5974:	11600006 	beqz	t3,5990 <func_800F227C+0x74>
    5978:	304e0001 	andi	t6,v0,0x1
    597c:	3c040000 	lui	a0,0x0
    5980:	24840000 	addiu	a0,a0,0
    5984:	808c0000 	lb	t4,0(a0)
    5988:	258dffff 	addiu	t5,t4,-1
    598c:	a08d0000 	sb	t5,0(a0)
    5990:	3c040000 	lui	a0,0x0
    5994:	11c00004 	beqz	t6,59a8 <func_800F227C+0x8c>
    5998:	24840000 	addiu	a0,a0,0
    599c:	808f0000 	lb	t7,0(a0)
    59a0:	25f80001 	addiu	t8,t7,1
    59a4:	a0980000 	sb	t8,0(a0)
    59a8:	30598000 	andi	t9,v0,0x8000
    59ac:	13200007 	beqz	t9,59cc <func_800F227C+0xb0>
    59b0:	304b4000 	andi	t3,v0,0x4000
    59b4:	2408001a 	li	t0,26
    59b8:	24090001 	li	t1,1
    59bc:	240a0006 	li	t2,6
    59c0:	a0880000 	sb	t0,0(a0)
    59c4:	a0690000 	sb	t1,0(v1)
    59c8:	a0ca0002 	sb	t2,2(a2)
    59cc:	11600004 	beqz	t3,59e0 <func_800F227C+0xc4>
    59d0:	3c010000 	lui	at,0x0
    59d4:	a0200000 	sb	zero,0(at)
    59d8:	3c010000 	lui	at,0x0
    59dc:	a0200000 	sb	zero,0(at)
    59e0:	3c020000 	lui	v0,0x0
    59e4:	8c420000 	lw	v0,0(v0)
    59e8:	3c070000 	lui	a3,0x0
    59ec:	24e70000 	addiu	a3,a3,0
    59f0:	304c0800 	andi	t4,v0,0x800
    59f4:	11800008 	beqz	t4,5a18 <func_800F227C+0xfc>
    59f8:	304f0400 	andi	t7,v0,0x400
    59fc:	90e30000 	lbu	v1,0(a3)
    5a00:	240e000a 	li	t6,10
    5a04:	18600003 	blez	v1,5a14 <func_800F227C+0xf8>
    5a08:	246dffff 	addiu	t5,v1,-1
    5a0c:	10000002 	b	5a18 <func_800F227C+0xfc>
    5a10:	a0ed0000 	sb	t5,0(a3)
    5a14:	a0ee0000 	sb	t6,0(a3)
    5a18:	3c070000 	lui	a3,0x0
    5a1c:	11e00008 	beqz	t7,5a40 <func_800F227C+0x124>
    5a20:	24e70000 	addiu	a3,a3,0
    5a24:	90e30000 	lbu	v1,0(a3)
    5a28:	2861000a 	slti	at,v1,10
    5a2c:	10200003 	beqz	at,5a3c <func_800F227C+0x120>
    5a30:	24780001 	addiu	t8,v1,1
    5a34:	10000002 	b	5a40 <func_800F227C+0x124>
    5a38:	a0f80000 	sb	t8,0(a3)
    5a3c:	a0e00000 	sb	zero,0(a3)
    5a40:	30590200 	andi	t9,v0,0x200
    5a44:	1320000d 	beqz	t9,5a7c <func_800F227C+0x160>
    5a48:	304b0100 	andi	t3,v0,0x100
    5a4c:	90e30000 	lbu	v1,0(a3)
    5a50:	3c090000 	lui	t1,0x0
    5a54:	00c32021 	addu	a0,a2,v1
    5a58:	90850000 	lbu	a1,0(a0)
    5a5c:	01234821 	addu	t1,t1,v1
    5a60:	18a00003 	blez	a1,5a70 <func_800F227C+0x154>
    5a64:	24a8ffff 	addiu	t0,a1,-1
    5a68:	10000004 	b	5a7c <func_800F227C+0x160>
    5a6c:	a0880000 	sb	t0,0(a0)
    5a70:	91290000 	lbu	t1,0(t1)
    5a74:	252affff 	addiu	t2,t1,-1
    5a78:	a08a0000 	sb	t2,0(a0)
    5a7c:	5160000f 	beqzl	t3,5abc <func_800F227C+0x1a0>
    5a80:	90cf0008 	lbu	t7,8(a2)
    5a84:	90e30000 	lbu	v1,0(a3)
    5a88:	3c0c0000 	lui	t4,0x0
    5a8c:	01836021 	addu	t4,t4,v1
    5a90:	918c0000 	lbu	t4,0(t4)
    5a94:	00c32021 	addu	a0,a2,v1
    5a98:	90850000 	lbu	a1,0(a0)
    5a9c:	258dffff 	addiu	t5,t4,-1
    5aa0:	00ad082a 	slt	at,a1,t5
    5aa4:	10200003 	beqz	at,5ab4 <func_800F227C+0x198>
    5aa8:	24ae0001 	addiu	t6,a1,1
    5aac:	10000002 	b	5ab8 <func_800F227C+0x19c>
    5ab0:	a08e0000 	sb	t6,0(a0)
    5ab4:	a0800000 	sb	zero,0(a0)
    5ab8:	90cf0008 	lbu	t7,8(a2)
    5abc:	90d90003 	lbu	t9,3(a2)
    5ac0:	90c90004 	lbu	t1,4(a2)
    5ac4:	000fc140 	sll	t8,t7,0x5
    5ac8:	90cc0005 	lbu	t4,5(a2)
    5acc:	90cf0006 	lbu	t7,6(a2)
    5ad0:	03194021 	addu	t0,t8,t9
    5ad4:	00095040 	sll	t2,t1,0x1
    5ad8:	90c90007 	lbu	t1,7(a2)
    5adc:	010a5821 	addu	t3,t0,t2
    5ae0:	000c6880 	sll	t5,t4,0x2
    5ae4:	016d7021 	addu	t6,t3,t5
    5ae8:	000fc0c0 	sll	t8,t7,0x3
    5aec:	01d8c821 	addu	t9,t6,t8
    5af0:	00094100 	sll	t0,t1,0x4
    5af4:	03285021 	addu	t2,t9,t0
    5af8:	3c010000 	lui	at,0x0
    5afc:	03e00008 	jr	ra
    5b00:	a02a0000 	sb	t2,0(at)

00005b04 <func_800F2464>:
    5b04:	3c050000 	lui	a1,0x0
    5b08:	24a50000 	addiu	a1,a1,0
    5b0c:	90ae0000 	lbu	t6,0(a1)
    5b10:	27bdfff8 	addiu	sp,sp,-8
    5b14:	3c020000 	lui	v0,0x0
    5b18:	15c0003f 	bnez	t6,5c18 <func_800F2464+0x114>
    5b1c:	00000000 	nop
    5b20:	8c420000 	lw	v0,0(v0)
    5b24:	3c040000 	lui	a0,0x0
    5b28:	24840000 	addiu	a0,a0,0
    5b2c:	304f0800 	andi	t7,v0,0x800
    5b30:	11e00008 	beqz	t7,5b54 <func_800F2464+0x50>
    5b34:	304c0400 	andi	t4,v0,0x400
    5b38:	90830000 	lbu	v1,0(a0)
    5b3c:	24190009 	li	t9,9
    5b40:	18600003 	blez	v1,5b50 <func_800F2464+0x4c>
    5b44:	2478ffff 	addiu	t8,v1,-1
    5b48:	10000002 	b	5b54 <func_800F2464+0x50>
    5b4c:	a0980000 	sb	t8,0(a0)
    5b50:	a0990000 	sb	t9,0(a0)
    5b54:	3c040000 	lui	a0,0x0
    5b58:	11800008 	beqz	t4,5b7c <func_800F2464+0x78>
    5b5c:	24840000 	addiu	a0,a0,0
    5b60:	90830000 	lbu	v1,0(a0)
    5b64:	28610009 	slti	at,v1,9
    5b68:	10200003 	beqz	at,5b78 <func_800F2464+0x74>
    5b6c:	246d0001 	addiu	t5,v1,1
    5b70:	10000002 	b	5b7c <func_800F2464+0x78>
    5b74:	a08d0000 	sb	t5,0(a0)
    5b78:	a0800000 	sb	zero,0(a0)
    5b7c:	304e8000 	andi	t6,v0,0x8000
    5b80:	11c00003 	beqz	t6,5b90 <func_800F2464+0x8c>
    5b84:	30584000 	andi	t8,v0,0x4000
    5b88:	240f0001 	li	t7,1
    5b8c:	a0af0000 	sb	t7,0(a1)
    5b90:	13000009 	beqz	t8,5bb8 <func_800F2464+0xb4>
    5b94:	30591000 	andi	t9,v0,0x1000
    5b98:	90860000 	lbu	a2,0(a0)
    5b9c:	3c010000 	lui	at,0x0
    5ba0:	00063040 	sll	a2,a2,0x1
    5ba4:	00260821 	addu	at,at,a2
    5ba8:	a4200000 	sh	zero,0(at)
    5bac:	3c010000 	lui	at,0x0
    5bb0:	00260821 	addu	at,at,a2
    5bb4:	a4200000 	sh	zero,0(at)
    5bb8:	1320008e 	beqz	t9,5df4 <func_800F2464+0x2f0>
    5bbc:	3c0c0000 	lui	t4,0x0
    5bc0:	90830000 	lbu	v1,0(a0)
    5bc4:	3c0d0000 	lui	t5,0x0
    5bc8:	25ad0000 	addiu	t5,t5,0
    5bcc:	258c0000 	addiu	t4,t4,0
    5bd0:	00033040 	sll	a2,v1,0x1
    5bd4:	00cc3821 	addu	a3,a2,t4
    5bd8:	10600004 	beqz	v1,5bec <func_800F2464+0xe8>
    5bdc:	00cd4021 	addu	t0,a2,t5
    5be0:	2463ffff 	addiu	v1,v1,-1
    5be4:	10000002 	b	5bf0 <func_800F2464+0xec>
    5be8:	306300ff 	andi	v1,v1,0xff
    5bec:	24030009 	li	v1,9
    5bf0:	00032840 	sll	a1,v1,0x1
    5bf4:	3c0e0000 	lui	t6,0x0
    5bf8:	01c57021 	addu	t6,t6,a1
    5bfc:	95ce0000 	lhu	t6,0(t6)
    5c00:	3c0f0000 	lui	t7,0x0
    5c04:	01e57821 	addu	t7,t7,a1
    5c08:	a4ee0000 	sh	t6,0(a3)
    5c0c:	95ef0000 	lhu	t7,0(t7)
    5c10:	10000078 	b	5df4 <func_800F2464+0x2f0>
    5c14:	a50f0000 	sh	t7,0(t0)
    5c18:	3c020000 	lui	v0,0x0
    5c1c:	8c420000 	lw	v0,0(v0)
    5c20:	30580200 	andi	t8,v0,0x200
    5c24:	1300000a 	beqz	t8,5c50 <func_800F2464+0x14c>
    5c28:	304d0100 	andi	t5,v0,0x100
    5c2c:	3c030000 	lui	v1,0x0
    5c30:	24630000 	addiu	v1,v1,0
    5c34:	90640000 	lbu	a0,0(v1)
    5c38:	240c0007 	li	t4,7
    5c3c:	18800003 	blez	a0,5c4c <func_800F2464+0x148>
    5c40:	2499ffff 	addiu	t9,a0,-1
    5c44:	10000002 	b	5c50 <func_800F2464+0x14c>
    5c48:	a0790000 	sb	t9,0(v1)
    5c4c:	a06c0000 	sb	t4,0(v1)
    5c50:	3c030000 	lui	v1,0x0
    5c54:	11a00008 	beqz	t5,5c78 <func_800F2464+0x174>
    5c58:	24630000 	addiu	v1,v1,0
    5c5c:	90640000 	lbu	a0,0(v1)
    5c60:	28810007 	slti	at,a0,7
    5c64:	10200003 	beqz	at,5c74 <func_800F2464+0x170>
    5c68:	248e0001 	addiu	t6,a0,1
    5c6c:	10000002 	b	5c78 <func_800F2464+0x174>
    5c70:	a06e0000 	sb	t6,0(v1)
    5c74:	a0600000 	sb	zero,0(v1)
    5c78:	30440800 	andi	a0,v0,0x800
    5c7c:	14800003 	bnez	a0,5c8c <func_800F2464+0x188>
    5c80:	304f0400 	andi	t7,v0,0x400
    5c84:	11e00047 	beqz	t7,5da4 <func_800F2464+0x2a0>
    5c88:	00000000 	nop
    5c8c:	1080000b 	beqz	a0,5cbc <func_800F2464+0x1b8>
    5c90:	30460400 	andi	a2,v0,0x400
    5c94:	3c180000 	lui	t8,0x0
    5c98:	8f180000 	lw	t8,0(t8)
    5c9c:	24090001 	li	t1,1
    5ca0:	33190008 	andi	t9,t8,0x8
    5ca4:	53200005 	beqzl	t9,5cbc <func_800F2464+0x1b8>
    5ca8:	a7a90006 	sh	t1,6(sp)
    5cac:	24090008 	li	t1,8
    5cb0:	10000002 	b	5cbc <func_800F2464+0x1b8>
    5cb4:	a7a90006 	sh	t1,6(sp)
    5cb8:	a7a90006 	sh	t1,6(sp)
    5cbc:	10c00009 	beqz	a2,5ce4 <func_800F2464+0x1e0>
    5cc0:	87a90006 	lh	t1,6(sp)
    5cc4:	3c0c0000 	lui	t4,0x0
    5cc8:	8d8c0000 	lw	t4,0(t4)
    5ccc:	2409ffff 	li	t1,-1
    5cd0:	318d0008 	andi	t5,t4,0x8
    5cd4:	11a00003 	beqz	t5,5ce4 <func_800F2464+0x1e0>
    5cd8:	00000000 	nop
    5cdc:	10000001 	b	5ce4 <func_800F2464+0x1e0>
    5ce0:	2409fff8 	li	t1,-8
    5ce4:	90660000 	lbu	a2,0(v1)
    5ce8:	3c040000 	lui	a0,0x0
    5cec:	24840000 	addiu	a0,a0,0
    5cf0:	28c10004 	slti	at,a2,4
    5cf4:	10200015 	beqz	at,5d4c <func_800F2464+0x248>
    5cf8:	3c180000 	lui	t8,0x0
    5cfc:	908e0000 	lbu	t6,0(a0)
    5d00:	27180000 	addiu	t8,t8,0
    5d04:	00065823 	negu	t3,a2
    5d08:	000e7840 	sll	t7,t6,0x1
    5d0c:	01f83821 	addu	a3,t7,t8
    5d10:	94e80000 	lhu	t0,0(a3)
    5d14:	000b5880 	sll	t3,t3,0x2
    5d18:	256b000c 	addiu	t3,t3,12
    5d1c:	01685007 	srav	t2,t0,t3
    5d20:	01495021 	addu	t2,t2,t1
    5d24:	2419000f 	li	t9,15
    5d28:	314a000f 	andi	t2,t2,0xf
    5d2c:	01796004 	sllv	t4,t9,t3
    5d30:	314affff 	andi	t2,t2,0xffff
    5d34:	398dffff 	xori	t5,t4,0xffff
    5d38:	016a7804 	sllv	t7,t2,t3
    5d3c:	010d7024 	and	t6,t0,t5
    5d40:	01cfc021 	addu	t8,t6,t7
    5d44:	10000017 	b	5da4 <func_800F2464+0x2a0>
    5d48:	a4f80000 	sh	t8,0(a3)
    5d4c:	3c040000 	lui	a0,0x0
    5d50:	24840000 	addiu	a0,a0,0
    5d54:	90990000 	lbu	t9,0(a0)
    5d58:	3c0d0000 	lui	t5,0x0
    5d5c:	25ad0000 	addiu	t5,t5,0
    5d60:	00196040 	sll	t4,t9,0x1
    5d64:	018d4021 	addu	t0,t4,t5
    5d68:	95070000 	lhu	a3,0(t0)
    5d6c:	00065823 	negu	t3,a2
    5d70:	000b5880 	sll	t3,t3,0x2
    5d74:	256b001c 	addiu	t3,t3,28
    5d78:	01675007 	srav	t2,a3,t3
    5d7c:	01495021 	addu	t2,t2,t1
    5d80:	240e000f 	li	t6,15
    5d84:	314a000f 	andi	t2,t2,0xf
    5d88:	016e7804 	sllv	t7,t6,t3
    5d8c:	314affff 	andi	t2,t2,0xffff
    5d90:	39f8ffff 	xori	t8,t7,0xffff
    5d94:	016a6004 	sllv	t4,t2,t3
    5d98:	00f8c824 	and	t9,a3,t8
    5d9c:	032c6821 	addu	t5,t9,t4
    5da0:	a50d0000 	sh	t5,0(t0)
    5da4:	3c040000 	lui	a0,0x0
    5da8:	304e8000 	andi	t6,v0,0x8000
    5dac:	11c00002 	beqz	t6,5db8 <func_800F2464+0x2b4>
    5db0:	24840000 	addiu	a0,a0,0
    5db4:	a0a00000 	sb	zero,0(a1)
    5db8:	304f4000 	andi	t7,v0,0x4000
    5dbc:	51e0000e 	beqzl	t7,5df8 <func_800F2464+0x2f4>
    5dc0:	30590002 	andi	t9,v0,0x2
    5dc4:	90780000 	lbu	t8,0(v1)
    5dc8:	90860000 	lbu	a2,0(a0)
    5dcc:	2b010004 	slti	at,t8,4
    5dd0:	10200005 	beqz	at,5de8 <func_800F2464+0x2e4>
    5dd4:	00063040 	sll	a2,a2,0x1
    5dd8:	3c010000 	lui	at,0x0
    5ddc:	00260821 	addu	at,at,a2
    5de0:	10000004 	b	5df4 <func_800F2464+0x2f0>
    5de4:	a4200000 	sh	zero,0(at)
    5de8:	3c010000 	lui	at,0x0
    5dec:	00260821 	addu	at,at,a2
    5df0:	a4200000 	sh	zero,0(at)
    5df4:	30590002 	andi	t9,v0,0x2
    5df8:	13200006 	beqz	t9,5e14 <func_800F2464+0x310>
    5dfc:	304e0004 	andi	t6,v0,0x4
    5e00:	3c030000 	lui	v1,0x0
    5e04:	24630000 	addiu	v1,v1,0
    5e08:	906c0000 	lbu	t4,0(v1)
    5e0c:	398d0001 	xori	t5,t4,0x1
    5e10:	a06d0000 	sb	t5,0(v1)
    5e14:	11c00008 	beqz	t6,5e38 <func_800F2464+0x334>
    5e18:	00000000 	nop
    5e1c:	908f0000 	lbu	t7,0(a0)
    5e20:	3c180000 	lui	t8,0x0
    5e24:	27180000 	addiu	t8,t8,0
    5e28:	01f81021 	addu	v0,t7,t8
    5e2c:	90590000 	lbu	t9,0(v0)
    5e30:	3b2c0001 	xori	t4,t9,0x1
    5e34:	a04c0000 	sb	t4,0(v0)
    5e38:	03e00008 	jr	ra
    5e3c:	27bd0008 	addiu	sp,sp,8

00005e40 <func_800F27A0>:
    5e40:	3c020000 	lui	v0,0x0
    5e44:	8c420000 	lw	v0,0(v0)
    5e48:	3c040000 	lui	a0,0x0
    5e4c:	24840000 	addiu	a0,a0,0
    5e50:	304e0400 	andi	t6,v0,0x400
    5e54:	11c00010 	beqz	t6,5e98 <func_800F27A0+0x58>
    5e58:	304a0800 	andi	t2,v0,0x800
    5e5c:	90830000 	lbu	v1,0(a0)
    5e60:	3c180000 	lui	t8,0x0
    5e64:	10600003 	beqz	v1,5e74 <func_800F27A0+0x34>
    5e68:	246fffff 	addiu	t7,v1,-1
    5e6c:	1000000a 	b	5e98 <func_800F27A0+0x58>
    5e70:	a08f0000 	sb	t7,0(a0)
    5e74:	93180000 	lbu	t8,0(t8)
    5e78:	3c080000 	lui	t0,0x0
    5e7c:	0018c8c0 	sll	t9,t8,0x3
    5e80:	0338c823 	subu	t9,t9,t8
    5e84:	0019c8c0 	sll	t9,t9,0x3
    5e88:	01194021 	addu	t0,t0,t9
    5e8c:	91080000 	lbu	t0,0(t0)
    5e90:	2509ffff 	addiu	t1,t0,-1
    5e94:	a0890000 	sb	t1,0(a0)
    5e98:	3c040000 	lui	a0,0x0
    5e9c:	11400012 	beqz	t2,5ee8 <func_800F27A0+0xa8>
    5ea0:	24840000 	addiu	a0,a0,0
    5ea4:	3c0b0000 	lui	t3,0x0
    5ea8:	916b0000 	lbu	t3,0(t3)
    5eac:	3c0d0000 	lui	t5,0x0
    5eb0:	90830000 	lbu	v1,0(a0)
    5eb4:	000b60c0 	sll	t4,t3,0x3
    5eb8:	018b6023 	subu	t4,t4,t3
    5ebc:	000c60c0 	sll	t4,t4,0x3
    5ec0:	01ac6821 	addu	t5,t5,t4
    5ec4:	91ad0000 	lbu	t5,0(t5)
    5ec8:	246f0001 	addiu	t7,v1,1
    5ecc:	25aeffff 	addiu	t6,t5,-1
    5ed0:	006e082a 	slt	at,v1,t6
    5ed4:	50200004 	beqzl	at,5ee8 <func_800F27A0+0xa8>
    5ed8:	a0800000 	sb	zero,0(a0)
    5edc:	10000002 	b	5ee8 <func_800F27A0+0xa8>
    5ee0:	a08f0000 	sb	t7,0(a0)
    5ee4:	a0800000 	sb	zero,0(a0)
    5ee8:	30580200 	andi	t8,v0,0x200
    5eec:	13000007 	beqz	t8,5f0c <func_800F27A0+0xcc>
    5ef0:	304a0100 	andi	t2,v0,0x100
    5ef4:	3c030000 	lui	v1,0x0
    5ef8:	24630000 	addiu	v1,v1,0
    5efc:	90790000 	lbu	t9,0(v1)
    5f00:	2728ffff 	addiu	t0,t9,-1
    5f04:	3109000f 	andi	t1,t0,0xf
    5f08:	a0690000 	sb	t1,0(v1)
    5f0c:	3c030000 	lui	v1,0x0
    5f10:	11400005 	beqz	t2,5f28 <func_800F27A0+0xe8>
    5f14:	24630000 	addiu	v1,v1,0
    5f18:	906b0000 	lbu	t3,0(v1)
    5f1c:	256c0001 	addiu	t4,t3,1
    5f20:	318d000f 	andi	t5,t4,0xf
    5f24:	a06d0000 	sb	t5,0(v1)
    5f28:	304e1000 	andi	t6,v0,0x1000
    5f2c:	11c00005 	beqz	t6,5f44 <func_800F27A0+0x104>
    5f30:	00000000 	nop
    5f34:	908f0000 	lbu	t7,0(a0)
    5f38:	3c010000 	lui	at,0x0
    5f3c:	002f0821 	addu	at,at,t7
    5f40:	a0200000 	sb	zero,0(at)
    5f44:	03e00008 	jr	ra
    5f48:	00000000 	nop

00005f4c <func_800F28AC>:
    5f4c:	03e00008 	jr	ra
    5f50:	00000000 	nop

00005f54 <func_800F28B4>:
    5f54:	3c040000 	lui	a0,0x0
    5f58:	8c840000 	lw	a0,0(a0)
    5f5c:	27bdffe8 	addiu	sp,sp,-24
    5f60:	afbf0014 	sw	ra,20(sp)
    5f64:	308e0800 	andi	t6,a0,0x800
    5f68:	11c0000a 	beqz	t6,5f94 <func_800F28B4+0x40>
    5f6c:	30990400 	andi	t9,a0,0x400
    5f70:	3c050000 	lui	a1,0x0
    5f74:	24a50000 	addiu	a1,a1,0
    5f78:	90a20000 	lbu	v0,0(a1)
    5f7c:	24180001 	li	t8,1
    5f80:	18400003 	blez	v0,5f90 <func_800F28B4+0x3c>
    5f84:	244fffff 	addiu	t7,v0,-1
    5f88:	10000002 	b	5f94 <func_800F28B4+0x40>
    5f8c:	a0af0000 	sb	t7,0(a1)
    5f90:	a0b80000 	sb	t8,0(a1)
    5f94:	3c050000 	lui	a1,0x0
    5f98:	13200007 	beqz	t9,5fb8 <func_800F28B4+0x64>
    5f9c:	24a50000 	addiu	a1,a1,0
    5fa0:	90a20000 	lbu	v0,0(a1)
    5fa4:	1c400003 	bgtz	v0,5fb4 <func_800F28B4+0x60>
    5fa8:	24480001 	addiu	t0,v0,1
    5fac:	10000002 	b	5fb8 <func_800F28B4+0x64>
    5fb0:	a0a80000 	sb	t0,0(a1)
    5fb4:	a0a00000 	sb	zero,0(a1)
    5fb8:	30890200 	andi	t1,a0,0x200
    5fbc:	11200010 	beqz	t1,6000 <func_800F28B4+0xac>
    5fc0:	00000000 	nop
    5fc4:	90a20000 	lbu	v0,0(a1)
    5fc8:	3c060000 	lui	a2,0x0
    5fcc:	24c60000 	addiu	a2,a2,0
    5fd0:	00c21821 	addu	v1,a2,v0
    5fd4:	906a0000 	lbu	t2,0(v1)
    5fd8:	24010001 	li	at,1
    5fdc:	254bffff 	addiu	t3,t2,-1
    5fe0:	14410007 	bne	v0,at,6000 <func_800F28B4+0xac>
    5fe4:	a06b0000 	sb	t3,0(v1)
    5fe8:	0c000000 	jal	0 <func_800EC960>
    5fec:	90c40001 	lbu	a0,1(a2)
    5ff0:	3c050000 	lui	a1,0x0
    5ff4:	3c040000 	lui	a0,0x0
    5ff8:	24a50000 	addiu	a1,a1,0
    5ffc:	8c840000 	lw	a0,0(a0)
    6000:	3c060000 	lui	a2,0x0
    6004:	308c0100 	andi	t4,a0,0x100
    6008:	1180000e 	beqz	t4,6044 <func_800F28B4+0xf0>
    600c:	24c60000 	addiu	a2,a2,0
    6010:	90a20000 	lbu	v0,0(a1)
    6014:	24010001 	li	at,1
    6018:	00c21821 	addu	v1,a2,v0
    601c:	906d0000 	lbu	t5,0(v1)
    6020:	25ae0001 	addiu	t6,t5,1
    6024:	14410007 	bne	v0,at,6044 <func_800F28B4+0xf0>
    6028:	a06e0000 	sb	t6,0(v1)
    602c:	0c000000 	jal	0 <func_800EC960>
    6030:	90c40001 	lbu	a0,1(a2)
    6034:	3c040000 	lui	a0,0x0
    6038:	3c060000 	lui	a2,0x0
    603c:	24c60000 	addiu	a2,a2,0
    6040:	8c840000 	lw	a0,0(a0)
    6044:	308f8000 	andi	t7,a0,0x8000
    6048:	51e0000c 	beqzl	t7,607c <func_800F28B4+0x128>
    604c:	30984000 	andi	t8,a0,0x4000
    6050:	3c044600 	lui	a0,0x4600
    6054:	0c000000 	jal	0 <func_800EC960>
    6058:	80c50001 	lb	a1,1(a2)
    605c:	3c040000 	lui	a0,0x0
    6060:	90840000 	lbu	a0,0(a0)
    6064:	3c010001 	lui	at,0x1
    6068:	0c000000 	jal	0 <func_800EC960>
    606c:	00812025 	or	a0,a0,at
    6070:	3c040000 	lui	a0,0x0
    6074:	8c840000 	lw	a0,0(a0)
    6078:	30984000 	andi	t8,a0,0x4000
    607c:	13000003 	beqz	t8,608c <func_800F28B4+0x138>
    6080:	3c041001 	lui	a0,0x1001
    6084:	0c000000 	jal	0 <func_800EC960>
    6088:	348400ff 	ori	a0,a0,0xff
    608c:	8fbf0014 	lw	ra,20(sp)
    6090:	27bd0018 	addiu	sp,sp,24
    6094:	03e00008 	jr	ra
    6098:	00000000 	nop

0000609c <func_800F29FC>:
    609c:	03e00008 	jr	ra
    60a0:	00000000 	nop

000060a4 <func_800F2A04>:
    60a4:	3c0e0000 	lui	t6,0x0
    60a8:	8dce0000 	lw	t6,0(t6)
    60ac:	27bdffe0 	addiu	sp,sp,-32
    60b0:	afbf001c 	sw	ra,28(sp)
    60b4:	31cf0002 	andi	t7,t6,0x2
    60b8:	11e00003 	beqz	t7,60c8 <func_800F2A04+0x24>
    60bc:	3c050000 	lui	a1,0x0
    60c0:	10000002 	b	60cc <func_800F2A04+0x28>
    60c4:	24060008 	li	a2,8
    60c8:	24060001 	li	a2,1
    60cc:	8ca50000 	lw	a1,0(a1)
    60d0:	3c090000 	lui	t1,0x0
    60d4:	25290000 	addiu	t1,t1,0
    60d8:	30b80800 	andi	t8,a1,0x800
    60dc:	13000008 	beqz	t8,6100 <func_800F2A04+0x5c>
    60e0:	30ac0400 	andi	t4,a1,0x400
    60e4:	91230000 	lbu	v1,0(t1)
    60e8:	240b0003 	li	t3,3
    60ec:	18600003 	blez	v1,60fc <func_800F2A04+0x58>
    60f0:	2479ffff 	addiu	t9,v1,-1
    60f4:	10000002 	b	6100 <func_800F2A04+0x5c>
    60f8:	a1390000 	sb	t9,0(t1)
    60fc:	a12b0000 	sb	t3,0(t1)
    6100:	3c090000 	lui	t1,0x0
    6104:	11800008 	beqz	t4,6128 <func_800F2A04+0x84>
    6108:	25290000 	addiu	t1,t1,0
    610c:	91230000 	lbu	v1,0(t1)
    6110:	28610003 	slti	at,v1,3
    6114:	10200003 	beqz	at,6124 <func_800F2A04+0x80>
    6118:	246d0001 	addiu	t5,v1,1
    611c:	10000002 	b	6128 <func_800F2A04+0x84>
    6120:	a12d0000 	sb	t5,0(t1)
    6124:	a1200000 	sb	zero,0(t1)
    6128:	30ae0200 	andi	t6,a1,0x200
    612c:	11c00036 	beqz	t6,6208 <func_800F2A04+0x164>
    6130:	00000000 	nop
    6134:	91230000 	lbu	v1,0(t1)
    6138:	28610002 	slti	at,v1,2
    613c:	1020001a 	beqz	at,61a8 <func_800F2A04+0x104>
    6140:	00602025 	move	a0,v1
    6144:	1460000f 	bnez	v1,6184 <func_800F2A04+0xe0>
    6148:	3c080000 	lui	t0,0x0
    614c:	3c080000 	lui	t0,0x0
    6150:	25080000 	addiu	t0,t0,0
    6154:	00037840 	sll	t7,v1,0x1
    6158:	010f1021 	addu	v0,t0,t7
    615c:	94440000 	lhu	a0,0(v0)
    6160:	3c190000 	lui	t9,0x0
    6164:	18800003 	blez	a0,6174 <func_800F2A04+0xd0>
    6168:	2498ffff 	addiu	t8,a0,-1
    616c:	10000026 	b	6208 <func_800F2A04+0x164>
    6170:	a4580000 	sh	t8,0(v0)
    6174:	97390000 	lhu	t9,0(t9)
    6178:	272bffff 	addiu	t3,t9,-1
    617c:	10000022 	b	6208 <func_800F2A04+0x164>
    6180:	a44b0000 	sh	t3,0(v0)
    6184:	25080000 	addiu	t0,t0,0
    6188:	00036040 	sll	t4,v1,0x1
    618c:	010c1021 	addu	v0,t0,t4
    6190:	944d0000 	lhu	t5,0(v0)
    6194:	01a67823 	subu	t7,t5,a2
    6198:	a44f0000 	sh	t7,0(v0)
    619c:	31f801ff 	andi	t8,t7,0x1ff
    61a0:	10000019 	b	6208 <func_800F2A04+0x164>
    61a4:	a4580000 	sh	t8,0(v0)
    61a8:	24010003 	li	at,3
    61ac:	14810010 	bne	a0,at,61f0 <func_800F2A04+0x14c>
    61b0:	3c080000 	lui	t0,0x0
    61b4:	25080000 	addiu	t0,t0,0
    61b8:	95190000 	lhu	t9,0(t0)
    61bc:	3c0c0000 	lui	t4,0x0
    61c0:	950d0002 	lhu	t5,2(t0)
    61c4:	00195880 	sll	t3,t9,0x2
    61c8:	018b6021 	addu	t4,t4,t3
    61cc:	8d8c0000 	lw	t4,0(t4)
    61d0:	000d7080 	sll	t6,t5,0x2
    61d4:	3c050000 	lui	a1,0x0
    61d8:	018e1021 	addu	v0,t4,t6
    61dc:	904f0000 	lbu	t7,0(v0)
    61e0:	01e6c023 	subu	t8,t7,a2
    61e4:	a0580000 	sb	t8,0(v0)
    61e8:	10000007 	b	6208 <func_800F2A04+0x164>
    61ec:	8ca50000 	lw	a1,0(a1)
    61f0:	3c0a0000 	lui	t2,0x0
    61f4:	254a0000 	addiu	t2,t2,0
    61f8:	91590000 	lbu	t9,0(t2)
    61fc:	272bffff 	addiu	t3,t9,-1
    6200:	316d000f 	andi	t5,t3,0xf
    6204:	a14d0000 	sb	t5,0(t2)
    6208:	3c080000 	lui	t0,0x0
    620c:	3c0a0000 	lui	t2,0x0
    6210:	30ac0100 	andi	t4,a1,0x100
    6214:	254a0000 	addiu	t2,t2,0
    6218:	1180002e 	beqz	t4,62d4 <func_800F2A04+0x230>
    621c:	25080000 	addiu	t0,t0,0
    6220:	91230000 	lbu	v1,0(t1)
    6224:	28610002 	slti	at,v1,2
    6228:	10200015 	beqz	at,6280 <func_800F2A04+0x1dc>
    622c:	00602025 	move	a0,v1
    6230:	00037040 	sll	t6,v1,0x1
    6234:	1460000c 	bnez	v1,6268 <func_800F2A04+0x1c4>
    6238:	010e1021 	addu	v0,t0,t6
    623c:	3c0f0000 	lui	t7,0x0
    6240:	95ef0000 	lhu	t7,0(t7)
    6244:	94440000 	lhu	a0,0(v0)
    6248:	25f8ffff 	addiu	t8,t7,-1
    624c:	0098082a 	slt	at,a0,t8
    6250:	10200003 	beqz	at,6260 <func_800F2A04+0x1bc>
    6254:	24990001 	addiu	t9,a0,1
    6258:	1000001e 	b	62d4 <func_800F2A04+0x230>
    625c:	a4590000 	sh	t9,0(v0)
    6260:	1000001c 	b	62d4 <func_800F2A04+0x230>
    6264:	a4400000 	sh	zero,0(v0)
    6268:	944b0000 	lhu	t3,0(v0)
    626c:	01666021 	addu	t4,t3,a2
    6270:	a44c0000 	sh	t4,0(v0)
    6274:	318e01ff 	andi	t6,t4,0x1ff
    6278:	10000016 	b	62d4 <func_800F2A04+0x230>
    627c:	a44e0000 	sh	t6,0(v0)
    6280:	24010003 	li	at,3
    6284:	54810010 	bnel	a0,at,62c8 <func_800F2A04+0x224>
    6288:	914f0000 	lbu	t7,0(t2)
    628c:	950f0000 	lhu	t7,0(t0)
    6290:	3c190000 	lui	t9,0x0
    6294:	950b0002 	lhu	t3,2(t0)
    6298:	000fc080 	sll	t8,t7,0x2
    629c:	0338c821 	addu	t9,t9,t8
    62a0:	8f390000 	lw	t9,0(t9)
    62a4:	000b6880 	sll	t5,t3,0x2
    62a8:	3c050000 	lui	a1,0x0
    62ac:	032d1021 	addu	v0,t9,t5
    62b0:	904c0000 	lbu	t4,0(v0)
    62b4:	01867021 	addu	t6,t4,a2
    62b8:	a04e0000 	sb	t6,0(v0)
    62bc:	10000005 	b	62d4 <func_800F2A04+0x230>
    62c0:	8ca50000 	lw	a1,0(a1)
    62c4:	914f0000 	lbu	t7,0(t2)
    62c8:	25f80001 	addiu	t8,t7,1
    62cc:	330b000f 	andi	t3,t8,0xf
    62d0:	a14b0000 	sb	t3,0(t2)
    62d4:	30b98000 	andi	t9,a1,0x8000
    62d8:	5320001a 	beqzl	t9,6344 <func_800F2A04+0x2a0>
    62dc:	30ab4000 	andi	t3,a1,0x4000
    62e0:	950c0000 	lhu	t4,0(t0)
    62e4:	950d0002 	lhu	t5,2(t0)
    62e8:	3c070000 	lui	a3,0x0
    62ec:	000c7b00 	sll	t7,t4,0xc
    62f0:	3c180000 	lui	t8,0x0
    62f4:	01af2021 	addu	a0,t5,t7
    62f8:	24e70000 	addiu	a3,a3,0
    62fc:	24840800 	addiu	a0,a0,2048
    6300:	27180000 	addiu	t8,t8,0
    6304:	3c050000 	lui	a1,0x0
    6308:	3084ffff 	andi	a0,a0,0xffff
    630c:	24a50000 	addiu	a1,a1,0
    6310:	afb80014 	sw	t8,20(sp)
    6314:	afa70010 	sw	a3,16(sp)
    6318:	0c000000 	jal	0 <func_800EC960>
    631c:	24060004 	li	a2,4
    6320:	3c080000 	lui	t0,0x0
    6324:	3c090000 	lui	t1,0x0
    6328:	3c0a0000 	lui	t2,0x0
    632c:	3c050000 	lui	a1,0x0
    6330:	8ca50000 	lw	a1,0(a1)
    6334:	254a0000 	addiu	t2,t2,0
    6338:	25290000 	addiu	t1,t1,0
    633c:	25080000 	addiu	t0,t0,0
    6340:	30ab4000 	andi	t3,a1,0x4000
    6344:	5160000c 	beqzl	t3,6378 <func_800F2A04+0x2d4>
    6348:	30b90004 	andi	t9,a1,0x4
    634c:	0c000000 	jal	0 <func_800EC960>
    6350:	91040001 	lbu	a0,1(t0)
    6354:	3c080000 	lui	t0,0x0
    6358:	3c090000 	lui	t1,0x0
    635c:	3c0a0000 	lui	t2,0x0
    6360:	3c050000 	lui	a1,0x0
    6364:	8ca50000 	lw	a1,0(a1)
    6368:	254a0000 	addiu	t2,t2,0
    636c:	25290000 	addiu	t1,t1,0
    6370:	25080000 	addiu	t0,t0,0
    6374:	30b90004 	andi	t9,a1,0x4
    6378:	53200018 	beqzl	t9,63dc <func_800F2A04+0x338>
    637c:	30ae0008 	andi	t6,a1,0x8
    6380:	912c0000 	lbu	t4,0(t1)
    6384:	24010002 	li	at,2
    6388:	3c0f0000 	lui	t7,0x0
    638c:	55810013 	bnel	t4,at,63dc <func_800F2A04+0x338>
    6390:	30ae0008 	andi	t6,a1,0x8
    6394:	950e0000 	lhu	t6,0(t0)
    6398:	95180002 	lhu	t8,2(t0)
    639c:	914c0000 	lbu	t4,0(t2)
    63a0:	000e6880 	sll	t5,t6,0x2
    63a4:	01ed7821 	addu	t7,t7,t5
    63a8:	8def0000 	lw	t7,0(t7)
    63ac:	00185880 	sll	t3,t8,0x2
    63b0:	240e000f 	li	t6,15
    63b4:	01eb1021 	addu	v0,t7,t3
    63b8:	94590002 	lhu	t9,2(v0)
    63bc:	24180001 	li	t8,1
    63c0:	01cc6823 	subu	t5,t6,t4
    63c4:	01b87804 	sllv	t7,t8,t5
    63c8:	032f5826 	xor	t3,t9,t7
    63cc:	a44b0002 	sh	t3,2(v0)
    63d0:	3c050000 	lui	a1,0x0
    63d4:	8ca50000 	lw	a1,0(a1)
    63d8:	30ae0008 	andi	t6,a1,0x8
    63dc:	51c00008 	beqzl	t6,6400 <func_800F2A04+0x35c>
    63e0:	8fbf001c 	lw	ra,28(sp)
    63e4:	91230000 	lbu	v1,0(t1)
    63e8:	28610002 	slti	at,v1,2
    63ec:	10200003 	beqz	at,63fc <func_800F2A04+0x358>
    63f0:	00036040 	sll	t4,v1,0x1
    63f4:	010cc021 	addu	t8,t0,t4
    63f8:	a7000000 	sh	zero,0(t8)
    63fc:	8fbf001c 	lw	ra,28(sp)
    6400:	27bd0020 	addiu	sp,sp,32
    6404:	03e00008 	jr	ra
    6408:	00000000 	nop

0000640c <func_800F2D6C>:
    640c:	3c070000 	lui	a3,0x0
    6410:	24e70000 	addiu	a3,a3,0
    6414:	90e30000 	lbu	v1,0(a3)
    6418:	3c010000 	lui	at,0x0
    641c:	afa50004 	sw	a1,4(sp)
    6420:	000370c0 	sll	t6,v1,0x3
    6424:	002e0821 	addu	at,at,t6
    6428:	a4250000 	sh	a1,0(at)
    642c:	808f0000 	lb	t7,0(a0)
    6430:	00001025 	move	v0,zero
    6434:	3c190000 	lui	t9,0x0
    6438:	11e0000c 	beqz	t7,646c <func_800F2D6C+0x60>
    643c:	0003c0c0 	sll	t8,v1,0x3
    6440:	27390000 	addiu	t9,t9,0
    6444:	03192821 	addu	a1,t8,t9
    6448:	80860000 	lb	a2,0(a0)
    644c:	00a24021 	addu	t0,a1,v0
    6450:	24420001 	addiu	v0,v0,1
    6454:	304200ff 	andi	v0,v0,0xff
    6458:	00444821 	addu	t1,v0,a0
    645c:	a1060000 	sb	a2,0(t0)
    6460:	81260000 	lb	a2,0(t1)
    6464:	54c0fffa 	bnezl	a2,6450 <func_800F2D6C+0x44>
    6468:	00a24021 	addu	t0,a1,v0
    646c:	28410005 	slti	at,v0,5
    6470:	1020000a 	beqz	at,649c <func_800F2D6C+0x90>
    6474:	000350c0 	sll	t2,v1,0x3
    6478:	3c0b0000 	lui	t3,0x0
    647c:	256b0000 	addiu	t3,t3,0
    6480:	014b2821 	addu	a1,t2,t3
    6484:	00a26021 	addu	t4,a1,v0
    6488:	24420001 	addiu	v0,v0,1
    648c:	304200ff 	andi	v0,v0,0xff
    6490:	28410005 	slti	at,v0,5
    6494:	1420fffb 	bnez	at,6484 <func_800F2D6C+0x78>
    6498:	a1800000 	sb	zero,0(t4)
    649c:	28610018 	slti	at,v1,24
    64a0:	10200004 	beqz	at,64b4 <func_800F2D6C+0xa8>
    64a4:	240e0001 	li	t6,1
    64a8:	246d0001 	addiu	t5,v1,1
    64ac:	03e00008 	jr	ra
    64b0:	a0ed0000 	sb	t5,0(a3)
    64b4:	a0e00000 	sb	zero,0(a3)
    64b8:	3c010000 	lui	at,0x0
    64bc:	a02e0000 	sb	t6,0(at)
    64c0:	03e00008 	jr	ra
    64c4:	00000000 	nop

000064c8 <func_800F2E28>:
    64c8:	3c0e0000 	lui	t6,0x0
    64cc:	91ce0000 	lbu	t6,0(t6)
    64d0:	27bdffe8 	addiu	sp,sp,-24
    64d4:	afbf0014 	sw	ra,20(sp)
    64d8:	11c00082 	beqz	t6,66e4 <L800F3034+0x10>
    64dc:	3c050000 	lui	a1,0x0
    64e0:	24a50000 	addiu	a1,a1,0
    64e4:	90af0000 	lbu	t7,0(a1)
    64e8:	11e00005 	beqz	t7,6500 <func_800F2E28+0x38>
    64ec:	00000000 	nop
    64f0:	0c000000 	jal	0 <func_800EC960>
    64f4:	2404006f 	li	a0,111
    64f8:	3c050000 	lui	a1,0x0
    64fc:	24a50000 	addiu	a1,a1,0
    6500:	3c030000 	lui	v1,0x0
    6504:	8c630000 	lw	v1,0(v1)
    6508:	3c040000 	lui	a0,0x0
    650c:	24840000 	addiu	a0,a0,0
    6510:	30780020 	andi	t8,v1,0x20
    6514:	13000008 	beqz	t8,6538 <func_800F2E28+0x70>
    6518:	30680010 	andi	t0,v1,0x10
    651c:	90820000 	lbu	v0,0(a0)
    6520:	2841000e 	slti	at,v0,14
    6524:	10200003 	beqz	at,6534 <func_800F2E28+0x6c>
    6528:	24590001 	addiu	t9,v0,1
    652c:	10000002 	b	6538 <func_800F2E28+0x70>
    6530:	a0990000 	sb	t9,0(a0)
    6534:	a0800000 	sb	zero,0(a0)
    6538:	3c040000 	lui	a0,0x0
    653c:	11000008 	beqz	t0,6560 <func_800F2E28+0x98>
    6540:	24840000 	addiu	a0,a0,0
    6544:	90820000 	lbu	v0,0(a0)
    6548:	240a000e 	li	t2,14
    654c:	18400003 	blez	v0,655c <func_800F2E28+0x94>
    6550:	2449ffff 	addiu	t1,v0,-1
    6554:	10000002 	b	6560 <func_800F2E28+0x98>
    6558:	a0890000 	sb	t1,0(a0)
    655c:	a08a0000 	sb	t2,0(a0)
    6560:	306b2000 	andi	t3,v1,0x2000
    6564:	11600007 	beqz	t3,6584 <func_800F2E28+0xbc>
    6568:	3c020000 	lui	v0,0x0
    656c:	24420000 	addiu	v0,v0,0
    6570:	904c0000 	lbu	t4,0(v0)
    6574:	258e0001 	addiu	t6,t4,1
    6578:	a04e0000 	sb	t6,0(v0)
    657c:	31cf0007 	andi	t7,t6,0x7
    6580:	a04f0000 	sb	t7,0(v0)
    6584:	90980000 	lbu	t8,0(a0)
    6588:	2f01000f 	sltiu	at,t8,15
    658c:	10200051 	beqz	at,66d4 <L800F3034>
    6590:	0018c080 	sll	t8,t8,0x2
    6594:	3c010000 	lui	at,0x0
    6598:	00380821 	addu	at,at,t8
    659c:	8c380000 	lw	t8,0(at)
    65a0:	03000008 	jr	t8
    65a4:	00000000 	nop

000065a8 <L800F2F08>:
    65a8:	30798000 	andi	t9,v1,0x8000
    65ac:	1320001b 	beqz	t9,661c <L800F2F08+0x74>
    65b0:	3c020000 	lui	v0,0x0
    65b4:	24420000 	addiu	v0,v0,0
    65b8:	9448000a 	lhu	t0,10(v0)
    65bc:	3c01e000 	lui	at,0xe000
    65c0:	34210100 	ori	at,at,0x100
    65c4:	39090001 	xori	t1,t0,0x1
    65c8:	3124ffff 	andi	a0,t1,0xffff
    65cc:	a449000a 	sh	t1,10(v0)
    65d0:	0c000000 	jal	0 <func_800EC960>
    65d4:	00812025 	or	a0,a0,at
    65d8:	0c000000 	jal	0 <func_800EC960>
    65dc:	00002025 	move	a0,zero
    65e0:	24010001 	li	at,1
    65e4:	10410003 	beq	v0,at,65f4 <L800F2F08+0x4c>
    65e8:	3c041000 	lui	a0,0x1000
    65ec:	0c000000 	jal	0 <func_800EC960>
    65f0:	348400ff 	ori	a0,a0,0xff
    65f4:	3c041100 	lui	a0,0x1100
    65f8:	0c000000 	jal	0 <func_800EC960>
    65fc:	348400ff 	ori	a0,a0,0xff
    6600:	3c041300 	lui	a0,0x1300
    6604:	0c000000 	jal	0 <func_800EC960>
    6608:	348400ff 	ori	a0,a0,0xff
    660c:	3c030000 	lui	v1,0x0
    6610:	3c050000 	lui	a1,0x0
    6614:	24a50000 	addiu	a1,a1,0
    6618:	8c630000 	lw	v1,0(v1)
    661c:	306a4000 	andi	t2,v1,0x4000
    6620:	1140002c 	beqz	t2,66d4 <L800F3034>
    6624:	00000000 	nop
    6628:	90ab0000 	lbu	t3,0(a1)
    662c:	396c0001 	xori	t4,t3,0x1
    6630:	318d00ff 	andi	t5,t4,0xff
    6634:	15a00027 	bnez	t5,66d4 <L800F3034>
    6638:	a0ac0000 	sb	t4,0(a1)
    663c:	0c000000 	jal	0 <func_800EC960>
    6640:	00002025 	move	a0,zero
    6644:	10000023 	b	66d4 <L800F3034>
    6648:	00000000 	nop

0000664c <L800F2FAC>:
    664c:	0c000000 	jal	0 <func_800EC960>
    6650:	00000000 	nop
    6654:	1000001f 	b	66d4 <L800F3034>
    6658:	00000000 	nop

0000665c <L800F2FBC>:
    665c:	0c000000 	jal	0 <func_800EC960>
    6660:	00000000 	nop
    6664:	1000001b 	b	66d4 <L800F3034>
    6668:	00000000 	nop

0000666c <L800F2FCC>:
    666c:	0c000000 	jal	0 <func_800EC960>
    6670:	00000000 	nop
    6674:	10000017 	b	66d4 <L800F3034>
    6678:	00000000 	nop

0000667c <L800F2FDC>:
    667c:	0c000000 	jal	0 <func_800EC960>
    6680:	00000000 	nop
    6684:	10000013 	b	66d4 <L800F3034>
    6688:	00000000 	nop

0000668c <L800F2FEC>:
    668c:	0c000000 	jal	0 <func_800EC960>
    6690:	00000000 	nop
    6694:	1000000f 	b	66d4 <L800F3034>
    6698:	00000000 	nop

0000669c <L800F2FFC>:
    669c:	0c000000 	jal	0 <func_800EC960>
    66a0:	00000000 	nop
    66a4:	1000000b 	b	66d4 <L800F3034>
    66a8:	00000000 	nop

000066ac <L800F300C>:
    66ac:	0c000000 	jal	0 <func_800EC960>
    66b0:	00000000 	nop
    66b4:	10000007 	b	66d4 <L800F3034>
    66b8:	00000000 	nop

000066bc <L800F301C>:
    66bc:	0c000000 	jal	0 <func_800EC960>
    66c0:	00000000 	nop
    66c4:	10000003 	b	66d4 <L800F3034>
    66c8:	00000000 	nop

000066cc <L800F302C>:
    66cc:	0c000000 	jal	0 <func_800EC960>
    66d0:	00000000 	nop

000066d4 <L800F3034>:
    66d4:	3c0e0000 	lui	t6,0x0
    66d8:	91ce0000 	lbu	t6,0(t6)
    66dc:	3c010000 	lui	at,0x0
    66e0:	a02e0000 	sb	t6,0(at)
    66e4:	8fbf0014 	lw	ra,20(sp)
    66e8:	27bd0018 	addiu	sp,sp,24
    66ec:	03e00008 	jr	ra
    66f0:	00000000 	nop

000066f4 <func_800F3054>:
    66f4:	27bdffe8 	addiu	sp,sp,-24
    66f8:	afbf0014 	sw	ra,20(sp)
    66fc:	0c000000 	jal	0 <func_800EC960>
    6700:	00000000 	nop
    6704:	14400030 	bnez	v0,67c8 <func_800F3054+0xd4>
    6708:	3c0e0000 	lui	t6,0x0
    670c:	8dce289c 	lw	t6,10396(t6)
    6710:	3c010000 	lui	at,0x0
    6714:	0c000000 	jal	0 <func_800EC960>
    6718:	ac2e0000 	sw	t6,0(at)
    671c:	3c010000 	lui	at,0x0
    6720:	0c000000 	jal	0 <func_800EC960>
    6724:	ac230000 	sw	v1,0(at)
    6728:	3c040000 	lui	a0,0x0
    672c:	0c000000 	jal	0 <func_800EC960>
    6730:	24840000 	addiu	a0,a0,0
    6734:	3c040000 	lui	a0,0x0
    6738:	0c000000 	jal	0 <func_800EC960>
    673c:	24840000 	addiu	a0,a0,0
    6740:	0c000000 	jal	0 <func_800EC960>
    6744:	00000000 	nop
    6748:	0c000000 	jal	0 <func_800EC960>
    674c:	00000000 	nop
    6750:	0c000000 	jal	0 <func_800EC960>
    6754:	00000000 	nop
    6758:	3c180000 	lui	t8,0x0
    675c:	93180000 	lbu	t8,0(t8)
    6760:	24010007 	li	at,7
    6764:	17010003 	bne	t8,at,6774 <func_800F3054+0x80>
    6768:	00000000 	nop
    676c:	0c000000 	jal	0 <func_800EC960>
    6770:	00000000 	nop
    6774:	0c000000 	jal	0 <func_800EC960>
    6778:	00000000 	nop
    677c:	0c000000 	jal	0 <func_800EC960>
    6780:	00000000 	nop
    6784:	0c000000 	jal	0 <func_800EC960>
    6788:	00000000 	nop
    678c:	0c000000 	jal	0 <func_800EC960>
    6790:	00000000 	nop
    6794:	0c000000 	jal	0 <func_800EC960>
    6798:	00000000 	nop
    679c:	0c000000 	jal	0 <func_800EC960>
    67a0:	00000000 	nop
    67a4:	0c000000 	jal	0 <func_800EC960>
    67a8:	00000000 	nop
    67ac:	3c190000 	lui	t9,0x0
    67b0:	8f39289c 	lw	t9,10396(t9)
    67b4:	3c010000 	lui	at,0x0
    67b8:	0c000000 	jal	0 <func_800EC960>
    67bc:	ac390000 	sw	t9,0(at)
    67c0:	3c010000 	lui	at,0x0
    67c4:	ac230000 	sw	v1,0(at)
    67c8:	8fbf0014 	lw	ra,20(sp)
    67cc:	27bd0018 	addiu	sp,sp,24
    67d0:	03e00008 	jr	ra
    67d4:	00000000 	nop

000067d8 <func_800F3138>:
    67d8:	03e00008 	jr	ra
    67dc:	afa40000 	sw	a0,0(sp)

000067e0 <func_800F3140>:
    67e0:	afa40000 	sw	a0,0(sp)
    67e4:	03e00008 	jr	ra
    67e8:	afa50004 	sw	a1,4(sp)

000067ec <func_800F314C>:
    67ec:	27bdffe8 	addiu	sp,sp,-24
    67f0:	afa40018 	sw	a0,24(sp)
    67f4:	00803025 	move	a2,a0
    67f8:	00c02025 	move	a0,a2
    67fc:	308400ff 	andi	a0,a0,0xff
    6800:	afbf0014 	sw	ra,20(sp)
    6804:	00042200 	sll	a0,a0,0x8
    6808:	3c018200 	lui	at,0x8200
    680c:	00812025 	or	a0,a0,at
    6810:	0c000000 	jal	0 <func_800EC960>
    6814:	24050001 	li	a1,1
    6818:	8fbf0014 	lw	ra,20(sp)
    681c:	27bd0018 	addiu	sp,sp,24
    6820:	03e00008 	jr	ra
    6824:	00000000 	nop

00006828 <func_800F3188>:
    6828:	afa40000 	sw	a0,0(sp)
    682c:	308400ff 	andi	a0,a0,0xff
    6830:	afa50004 	sw	a1,4(sp)
    6834:	00047080 	sll	t6,a0,0x2
    6838:	3c0f0000 	lui	t7,0x0
    683c:	30a500ff 	andi	a1,a1,0xff
    6840:	01ee7821 	addu	t7,t7,t6
    6844:	8def0000 	lw	t7,0(t7)
    6848:	0005c080 	sll	t8,a1,0x2
    684c:	0305c023 	subu	t8,t8,a1
    6850:	0018c100 	sll	t8,t8,0x4
    6854:	01f81021 	addu	v0,t7,t8
    6858:	94430026 	lhu	v1,38(v0)
    685c:	3c010000 	lui	at,0x0
    6860:	30792000 	andi	t9,v1,0x2000
    6864:	13200005 	beqz	t9,687c <func_800F3188+0x54>
    6868:	00000000 	nop
    686c:	3c013f80 	lui	at,0x3f80
    6870:	44810000 	mtc1	at,$f0
    6874:	03e00008 	jr	ra
    6878:	00000000 	nop
    687c:	c4300000 	lwc1	$f16,0(at)
    6880:	c442001c 	lwc1	$f2,28(v0)
    6884:	30620003 	andi	v0,v1,0x3
    6888:	24010001 	li	at,1
    688c:	4602803c 	c.lt.s	$f16,$f2
    6890:	00000000 	nop
    6894:	45000004 	bc1f	68a8 <func_800F3188+0x80>
    6898:	00000000 	nop
    689c:	44806000 	mtc1	zero,$f12
    68a0:	10000039 	b	6988 <func_800F3188+0x160>
    68a4:	46006006 	mov.s	$f0,$f12
    68a8:	10410008 	beq	v0,at,68cc <func_800F3188+0xa4>
    68ac:	24010002 	li	at,2
    68b0:	10410009 	beq	v0,at,68d8 <func_800F3188+0xb0>
    68b4:	24010003 	li	at,3
    68b8:	1041000a 	beq	v0,at,68e4 <func_800F3188+0xbc>
    68bc:	3c0143fa 	lui	at,0x43fa
    68c0:	44810000 	mtc1	at,$f0
    68c4:	1000000a 	b	68f0 <func_800F3188+0xc8>
    68c8:	3c0140a0 	lui	at,0x40a0
    68cc:	3c010000 	lui	at,0x0
    68d0:	10000006 	b	68ec <func_800F3188+0xc4>
    68d4:	c4200000 	lwc1	$f0,0(at)
    68d8:	3c010000 	lui	at,0x0
    68dc:	10000003 	b	68ec <func_800F3188+0xc4>
    68e0:	c4200000 	lwc1	$f0,0(at)
    68e4:	3c010000 	lui	at,0x0
    68e8:	c4200000 	lwc1	$f0,0(at)
    68ec:	3c0140a0 	lui	at,0x40a0
    68f0:	44812000 	mtc1	at,$f4
    68f4:	3c013f80 	lui	at,0x3f80
    68f8:	46040383 	div.s	$f14,$f0,$f4
    68fc:	460e103c 	c.lt.s	$f2,$f14
    6900:	00000000 	nop
    6904:	45020005 	bc1fl	691c <func_800F3188+0xf4>
    6908:	4600103c 	c.lt.s	$f2,$f0
    690c:	44816000 	mtc1	at,$f12
    6910:	1000001a 	b	697c <func_800F3188+0x154>
    6914:	00000000 	nop
    6918:	4600103c 	c.lt.s	$f2,$f0
    691c:	00000000 	nop
    6920:	4502000d 	bc1fl	6958 <func_800F3188+0x130>
    6924:	46001201 	sub.s	$f8,$f2,$f0
    6928:	460e0401 	sub.s	$f16,$f0,$f14
    692c:	3c010000 	lui	at,0x0
    6930:	c4320000 	lwc1	$f18,0(at)
    6934:	460e1181 	sub.s	$f6,$f2,$f14
    6938:	3c010000 	lui	at,0x0
    693c:	46068201 	sub.s	$f8,$f16,$f6
    6940:	c4260000 	lwc1	$f6,0(at)
    6944:	46104283 	div.s	$f10,$f8,$f16
    6948:	46125102 	mul.s	$f4,$f10,$f18
    694c:	1000000b 	b	697c <func_800F3188+0x154>
    6950:	46062300 	add.s	$f12,$f4,$f6
    6954:	46001201 	sub.s	$f8,$f2,$f0
    6958:	3c013f80 	lui	at,0x3f80
    695c:	44812000 	mtc1	at,$f4
    6960:	46008281 	sub.s	$f10,$f16,$f0
    6964:	3c010000 	lui	at,0x0
    6968:	460a4483 	div.s	$f18,$f8,$f10
    696c:	c4280000 	lwc1	$f8,0(at)
    6970:	46122181 	sub.s	$f6,$f4,$f18
    6974:	46083302 	mul.s	$f12,$f6,$f8
    6978:	00000000 	nop
    697c:	460c6302 	mul.s	$f12,$f12,$f12
    6980:	00000000 	nop
    6984:	46006006 	mov.s	$f0,$f12
    6988:	03e00008 	jr	ra
    698c:	00000000 	nop

00006990 <func_800F32F0>:
    6990:	afa40000 	sw	a0,0(sp)
    6994:	308400ff 	andi	a0,a0,0xff
    6998:	afa50004 	sw	a1,4(sp)
    699c:	00047080 	sll	t6,a0,0x2
    69a0:	3c0f0000 	lui	t7,0x0
    69a4:	30a500ff 	andi	a1,a1,0xff
    69a8:	01ee7821 	addu	t7,t7,t6
    69ac:	8def0000 	lw	t7,0(t7)
    69b0:	0005c080 	sll	t8,a1,0x2
    69b4:	0305c023 	subu	t8,t8,a1
    69b8:	0018c100 	sll	t8,t8,0x4
    69bc:	afa60008 	sw	a2,8(sp)
    69c0:	01f83821 	addu	a3,t7,t8
    69c4:	94f90026 	lhu	t9,38(a3)
    69c8:	30c600ff 	andi	a2,a2,0xff
    69cc:	00001025 	move	v0,zero
    69d0:	33281000 	andi	t0,t9,0x1000
    69d4:	15000026 	bnez	t0,6a70 <func_800F32F0+0xe0>
    69d8:	00001825 	move	v1,zero
    69dc:	3c010000 	lui	at,0x0
    69e0:	c4220000 	lwc1	$f2,0(at)
    69e4:	c4e0001c 	lwc1	$f0,28(a3)
    69e8:	24020046 	li	v0,70
    69ec:	4602003c 	c.lt.s	$f0,$f2
    69f0:	00000000 	nop
    69f4:	4500001e 	bc1f	6a70 <func_800F32F0+0xe0>
    69f8:	00000000 	nop
    69fc:	8ce90008 	lw	t1,8(a3)
    6a00:	44802000 	mtc1	zero,$f4
    6a04:	c5260000 	lwc1	$f6,0(t1)
    6a08:	4606203c 	c.lt.s	$f4,$f6
    6a0c:	00000000 	nop
    6a10:	4502000d 	bc1fl	6a48 <func_800F32F0+0xb8>
    6a14:	46020103 	div.s	$f4,$f0,$f2
    6a18:	46020203 	div.s	$f8,$f0,$f2
    6a1c:	3c01428c 	lui	at,0x428c
    6a20:	44815000 	mtc1	at,$f10
    6a24:	00000000 	nop
    6a28:	460a4402 	mul.s	$f16,$f8,$f10
    6a2c:	4600848d 	trunc.w.s	$f18,$f16
    6a30:	44029000 	mfc1	v0,$f18
    6a34:	00000000 	nop
    6a38:	00021600 	sll	v0,v0,0x18
    6a3c:	1000000c 	b	6a70 <func_800F32F0+0xe0>
    6a40:	00021603 	sra	v0,v0,0x18
    6a44:	46020103 	div.s	$f4,$f0,$f2
    6a48:	3c0142b6 	lui	at,0x42b6
    6a4c:	44813000 	mtc1	at,$f6
    6a50:	00000000 	nop
    6a54:	46062202 	mul.s	$f8,$f4,$f6
    6a58:	4600428d 	trunc.w.s	$f10,$f8
    6a5c:	44025000 	mfc1	v0,$f10
    6a60:	00000000 	nop
    6a64:	00021600 	sll	v0,v0,0x18
    6a68:	10000001 	b	6a70 <func_800F32F0+0xe0>
    6a6c:	00021603 	sra	v0,v0,0x18
    6a70:	00066080 	sll	t4,a2,0x2
    6a74:	3c050000 	lui	a1,0x0
    6a78:	00ac2821 	addu	a1,a1,t4
    6a7c:	8ca53828 	lw	a1,14376(a1)
    6a80:	3c0d0000 	lui	t5,0x0
    6a84:	25ad5ab0 	addiu	t5,t5,23216
    6a88:	11a50005 	beq	t5,a1,6aa0 <func_800F32F0+0x110>
    6a8c:	3c090000 	lui	t1,0x0
    6a90:	80a300c5 	lb	v1,197(a1)
    6a94:	04630003 	bgezl	v1,6aa4 <func_800F32F0+0x114>
    6a98:	8cee0018 	lw	t6,24(a3)
    6a9c:	00001825 	move	v1,zero
    6aa0:	8cee0018 	lw	t6,24(a3)
    6aa4:	24010005 	li	at,5
    6aa8:	3c0b0000 	lui	t3,0x0
    6aac:	81cf0000 	lb	t7,0(t6)
    6ab0:	3c0d0000 	lui	t5,0x0
    6ab4:	01e2c021 	addu	t8,t7,v0
    6ab8:	14810006 	bne	a0,at,6ad4 <func_800F32F0+0x144>
    6abc:	03032821 	addu	a1,t8,v1
    6ac0:	94f90028 	lhu	t9,40(a3)
    6ac4:	332801ff 	andi	t0,t9,0x1ff
    6ac8:	29010002 	slti	at,t0,2
    6acc:	54200008 	bnezl	at,6af0 <func_800F32F0+0x160>
    6ad0:	28a10080 	slti	at,a1,128
    6ad4:	81290000 	lb	t1,0(t1)
    6ad8:	816b0000 	lb	t3,0(t3)
    6adc:	81ad0000 	lb	t5,0(t5)
    6ae0:	00a95021 	addu	t2,a1,t1
    6ae4:	014b6021 	addu	t4,t2,t3
    6ae8:	018d2821 	addu	a1,t4,t5
    6aec:	28a10080 	slti	at,a1,128
    6af0:	54200003 	bnezl	at,6b00 <func_800F32F0+0x170>
    6af4:	00051600 	sll	v0,a1,0x18
    6af8:	2405007f 	li	a1,127
    6afc:	00051600 	sll	v0,a1,0x18
    6b00:	03e00008 	jr	ra
    6b04:	00021603 	sra	v0,v0,0x18

00006b08 <func_800F3468>:
    6b08:	44800000 	mtc1	zero,$f0
    6b0c:	27bdfff0 	addiu	sp,sp,-16
    6b10:	f7b40008 	sdc1	$f20,8(sp)
    6b14:	4600603c 	c.lt.s	$f12,$f0
    6b18:	44808000 	mtc1	zero,$f16
    6b1c:	46006506 	mov.s	$f20,$f12
    6b20:	afa60018 	sw	a2,24(sp)
    6b24:	45000003 	bc1f	6b34 <func_800F3468+0x2c>
    6b28:	3c0145fa 	lui	at,0x45fa
    6b2c:	10000002 	b	6b38 <func_800F3468+0x30>
    6b30:	46006307 	neg.s	$f12,$f12
    6b34:	4600a306 	mov.s	$f12,$f20
    6b38:	4600703c 	c.lt.s	$f14,$f0
    6b3c:	44810000 	mtc1	at,$f0
    6b40:	45020004 	bc1fl	6b54 <func_800F3468+0x4c>
    6b44:	46007086 	mov.s	$f2,$f14
    6b48:	10000002 	b	6b54 <func_800F3468+0x4c>
    6b4c:	46007087 	neg.s	$f2,$f14
    6b50:	46007086 	mov.s	$f2,$f14
    6b54:	460c003c 	c.lt.s	$f0,$f12
    6b58:	00000000 	nop
    6b5c:	45020003 	bc1fl	6b6c <func_800F3468+0x64>
    6b60:	4602003c 	c.lt.s	$f0,$f2
    6b64:	46000306 	mov.s	$f12,$f0
    6b68:	4602003c 	c.lt.s	$f0,$f2
    6b6c:	00000000 	nop
    6b70:	45020003 	bc1fl	6b80 <func_800F3468+0x78>
    6b74:	4610a032 	c.eq.s	$f20,$f16
    6b78:	46000086 	mov.s	$f2,$f0
    6b7c:	4610a032 	c.eq.s	$f20,$f16
    6b80:	00000000 	nop
    6b84:	45020009 	bc1fl	6bac <func_800F3468+0xa4>
    6b88:	460c103e 	c.le.s	$f2,$f12
    6b8c:	46107032 	c.eq.s	$f14,$f16
    6b90:	3c013f00 	lui	at,0x3f00
    6b94:	45020005 	bc1fl	6bac <func_800F3468+0xa4>
    6b98:	460c103e 	c.le.s	$f2,$f12
    6b9c:	44817000 	mtc1	at,$f14
    6ba0:	1000001e 	b	6c1c <func_800F3468+0x114>
    6ba4:	46007006 	mov.s	$f0,$f14
    6ba8:	460c103e 	c.le.s	$f2,$f12
    6bac:	3c013f00 	lui	at,0x3f00
    6bb0:	45020015 	bc1fl	6c08 <func_800F3468+0x100>
    6bb4:	44817000 	mtc1	at,$f14
    6bb8:	3c01467a 	lui	at,0x467a
    6bbc:	44819000 	mtc1	at,$f18
    6bc0:	3c010000 	lui	at,0x0
    6bc4:	c4240000 	lwc1	$f4,0(at)
    6bc8:	46029181 	sub.s	$f6,$f18,$f2
    6bcc:	3c013f80 	lui	at,0x3f80
    6bd0:	460c9281 	sub.s	$f10,$f18,$f12
    6bd4:	46062202 	mul.s	$f8,$f4,$f6
    6bd8:	4614803e 	c.le.s	$f16,$f20
    6bdc:	46085383 	div.s	$f14,$f10,$f8
    6be0:	45000004 	bc1f	6bf4 <func_800F3468+0xec>
    6be4:	46007006 	mov.s	$f0,$f14
    6be8:	44812000 	mtc1	at,$f4
    6bec:	00000000 	nop
    6bf0:	460e2001 	sub.s	$f0,$f4,$f14
    6bf4:	3c013f00 	lui	at,0x3f00
    6bf8:	44817000 	mtc1	at,$f14
    6bfc:	10000008 	b	6c20 <func_800F3468+0x118>
    6c00:	3c014248 	lui	at,0x4248
    6c04:	44817000 	mtc1	at,$f14
    6c08:	3c010000 	lui	at,0x0
    6c0c:	c4260000 	lwc1	$f6,0(at)
    6c10:	46023282 	mul.s	$f10,$f6,$f2
    6c14:	460aa203 	div.s	$f8,$f20,$f10
    6c18:	460e4000 	add.s	$f0,$f8,$f14
    6c1c:	3c014248 	lui	at,0x4248
    6c20:	44818000 	mtc1	at,$f16
    6c24:	3c0142fe 	lui	at,0x42fe
    6c28:	44814000 	mtc1	at,$f8
    6c2c:	4610103c 	c.lt.s	$f2,$f16
    6c30:	00000000 	nop
    6c34:	4500000b 	bc1f	6c64 <func_800F3468+0x15c>
    6c38:	00000000 	nop
    6c3c:	4610603c 	c.lt.s	$f12,$f16
    6c40:	00000000 	nop
    6c44:	45000007 	bc1f	6c64 <func_800F3468+0x15c>
    6c48:	00000000 	nop
    6c4c:	46106083 	div.s	$f2,$f12,$f16
    6c50:	460e0101 	sub.s	$f4,$f0,$f14
    6c54:	46021182 	mul.s	$f6,$f2,$f2
    6c58:	00000000 	nop
    6c5c:	46062282 	mul.s	$f10,$f4,$f6
    6c60:	460e5000 	add.s	$f0,$f10,$f14
    6c64:	46080102 	mul.s	$f4,$f0,$f8
    6c68:	d7b40008 	ldc1	$f20,8(sp)
    6c6c:	27bd0010 	addiu	sp,sp,16
    6c70:	460e2180 	add.s	$f6,$f4,$f14
    6c74:	4600328d 	trunc.w.s	$f10,$f6
    6c78:	44025000 	mfc1	v0,$f10
    6c7c:	00000000 	nop
    6c80:	00021600 	sll	v0,v0,0x18
    6c84:	03e00008 	jr	ra
    6c88:	00021603 	sra	v0,v0,0x18

00006c8c <func_800F35EC>:
    6c8c:	afa40000 	sw	a0,0(sp)
    6c90:	308400ff 	andi	a0,a0,0xff
    6c94:	afa50004 	sw	a1,4(sp)
    6c98:	00047080 	sll	t6,a0,0x2
    6c9c:	3c0f0000 	lui	t7,0x0
    6ca0:	30a500ff 	andi	a1,a1,0xff
    6ca4:	01ee7821 	addu	t7,t7,t6
    6ca8:	8def0000 	lw	t7,0(t7)
    6cac:	0005c080 	sll	t8,a1,0x2
    6cb0:	0305c023 	subu	t8,t8,a1
    6cb4:	0018c100 	sll	t8,t8,0x4
    6cb8:	01f81821 	addu	v1,t7,t8
    6cbc:	94660026 	lhu	a2,38(v1)
    6cc0:	3c013f80 	lui	at,0x3f80
    6cc4:	44810000 	mtc1	at,$f0
    6cc8:	30d94000 	andi	t9,a2,0x4000
    6ccc:	00001025 	move	v0,zero
    6cd0:	13200010 	beqz	t9,6d14 <func_800F35EC+0x88>
    6cd4:	46000086 	mov.s	$f2,$f0
    6cd8:	3c080000 	lui	t0,0x0
    6cdc:	8d08297c 	lw	t0,10620(t0)
    6ce0:	3c014f80 	lui	at,0x4f80
    6ce4:	3109000f 	andi	t1,t0,0xf
    6ce8:	44892000 	mtc1	t1,$f4
    6cec:	05210004 	bgez	t1,6d00 <func_800F35EC+0x74>
    6cf0:	468021a0 	cvt.s.w	$f6,$f4
    6cf4:	44814000 	mtc1	at,$f8
    6cf8:	00000000 	nop
    6cfc:	46083180 	add.s	$f6,$f6,$f8
    6d00:	3c014340 	lui	at,0x4340
    6d04:	44815000 	mtc1	at,$f10
    6d08:	00000000 	nop
    6d0c:	460a3403 	div.s	$f16,$f6,$f10
    6d10:	46100081 	sub.s	$f2,$f0,$f16
    6d14:	2c810007 	sltiu	at,a0,7
    6d18:	10200011 	beqz	at,6d60 <L800F36C0>
    6d1c:	00045080 	sll	t2,a0,0x2
    6d20:	3c010000 	lui	at,0x0
    6d24:	002a0821 	addu	at,at,t2
    6d28:	8c2a0000 	lw	t2,0(at)
    6d2c:	01400008 	jr	t2
    6d30:	00000000 	nop

00006d34 <L800F3694>:
    6d34:	3c0b0000 	lui	t3,0x0
    6d38:	916b0000 	lbu	t3,0(t3)
    6d3c:	51600009 	beqzl	t3,6d64 <L800F36C0+0x4>
    6d40:	24010001 	li	at,1
    6d44:	10000006 	b	6d60 <L800F36C0>
    6d48:	24020001 	li	v0,1

00006d4c <L800F36AC>:
    6d4c:	3c0c0000 	lui	t4,0x0
    6d50:	918c0000 	lbu	t4,0(t4)
    6d54:	51800003 	beqzl	t4,6d64 <L800F36C0+0x4>
    6d58:	24010001 	li	at,1
    6d5c:	24020001 	li	v0,1

00006d60 <L800F36C0>:
    6d60:	24010001 	li	at,1
    6d64:	14410017 	bne	v0,at,6dc4 <L800F36C0+0x64>
    6d68:	30d82000 	andi	t8,a2,0x2000
    6d6c:	30cd0800 	andi	t5,a2,0x800
    6d70:	15a00014 	bnez	t5,6dc4 <L800F36C0+0x64>
    6d74:	3c0e0000 	lui	t6,0x0
    6d78:	8dce297c 	lw	t6,10620(t6)
    6d7c:	3c014f80 	lui	at,0x4f80
    6d80:	31cf000f 	andi	t7,t6,0xf
    6d84:	448f9000 	mtc1	t7,$f18
    6d88:	05e10004 	bgez	t7,6d9c <L800F36C0+0x3c>
    6d8c:	46809120 	cvt.s.w	$f4,$f18
    6d90:	44814000 	mtc1	at,$f8
    6d94:	00000000 	nop
    6d98:	46082100 	add.s	$f4,$f4,$f8
    6d9c:	3c014310 	lui	at,0x4310
    6da0:	44813000 	mtc1	at,$f6
    6da4:	3c010000 	lui	at,0x0
    6da8:	d4320000 	ldc1	$f18,0(at)
    6dac:	46062283 	div.s	$f10,$f4,$f6
    6db0:	46001121 	cvt.d.s	$f4,$f2
    6db4:	46005421 	cvt.d.s	$f16,$f10
    6db8:	46309201 	sub.d	$f8,$f18,$f16
    6dbc:	46282182 	mul.d	$f6,$f4,$f8
    6dc0:	462030a0 	cvt.s.d	$f2,$f6
    6dc4:	17000012 	bnez	t8,6e10 <L800F36C0+0xb0>
    6dc8:	c460001c 	lwc1	$f0,28(v1)
    6dcc:	30d98000 	andi	t9,a2,0x8000
    6dd0:	1720000f 	bnez	t9,6e10 <L800F36C0+0xb0>
    6dd4:	3c010000 	lui	at,0x0
    6dd8:	c42c0000 	lwc1	$f12,0(at)
    6ddc:	3c010000 	lui	at,0x0
    6de0:	4600603e 	c.le.s	$f12,$f0
    6de4:	00000000 	nop
    6de8:	45020005 	bc1fl	6e00 <L800F36C0+0xa0>
    6dec:	460c0403 	div.s	$f16,$f0,$f12
    6df0:	c42a0000 	lwc1	$f10,0(at)
    6df4:	10000006 	b	6e10 <L800F36C0+0xb0>
    6df8:	460a1080 	add.s	$f2,$f2,$f10
    6dfc:	460c0403 	div.s	$f16,$f0,$f12
    6e00:	3c010000 	lui	at,0x0
    6e04:	c4320000 	lwc1	$f18,0(at)
    6e08:	46109102 	mul.s	$f4,$f18,$f16
    6e0c:	46041080 	add.s	$f2,$f2,$f4
    6e10:	30c800c0 	andi	t0,a2,0xc0
    6e14:	1100000e 	beqz	t0,6e50 <L800F36C0+0xf0>
    6e18:	00000000 	nop
    6e1c:	9069002f 	lbu	t1,47(v1)
    6e20:	3c014f80 	lui	at,0x4f80
    6e24:	44894000 	mtc1	t1,$f8
    6e28:	05210004 	bgez	t1,6e3c <L800F36C0+0xdc>
    6e2c:	468041a0 	cvt.s.w	$f6,$f8
    6e30:	44815000 	mtc1	at,$f10
    6e34:	00000000 	nop
    6e38:	460a3180 	add.s	$f6,$f6,$f10
    6e3c:	3c014340 	lui	at,0x4340
    6e40:	44819000 	mtc1	at,$f18
    6e44:	00000000 	nop
    6e48:	46123403 	div.s	$f16,$f6,$f18
    6e4c:	46101080 	add.s	$f2,$f2,$f16
    6e50:	03e00008 	jr	ra
    6e54:	46001006 	mov.s	$f0,$f2

00006e58 <func_800F37B8>:
    6e58:	afa60008 	sw	a2,8(sp)
    6e5c:	8cae0008 	lw	t6,8(a1)
    6e60:	00063600 	sll	a2,a2,0x18
    6e64:	00063603 	sra	a2,a2,0x18
    6e68:	c5c40000 	lwc1	$f4,0(t6)
    6e6c:	28c10041 	slti	at,a2,65
    6e70:	00001825 	move	v1,zero
    6e74:	460c203c 	c.lt.s	$f4,$f12
    6e78:	00000000 	nop
    6e7c:	4500001d 	bc1f	6ef4 <func_800F37B8+0x9c>
    6e80:	00000000 	nop
    6e84:	10200004 	beqz	at,6e98 <func_800F37B8+0x40>
    6e88:	240f007f 	li	t7,127
    6e8c:	00061600 	sll	v0,a2,0x18
    6e90:	10000004 	b	6ea4 <func_800F37B8+0x4c>
    6e94:	00021603 	sra	v0,v0,0x18
    6e98:	01e61023 	subu	v0,t7,a2
    6e9c:	00021600 	sll	v0,v0,0x18
    6ea0:	00021603 	sra	v0,v0,0x18
    6ea4:	2841001e 	slti	at,v0,30
    6ea8:	50200004 	beqzl	at,6ebc <func_800F37B8+0x64>
    6eac:	3041ffff 	andi	at,v0,0xffff
    6eb0:	10000010 	b	6ef4 <func_800F37B8+0x9c>
    6eb4:	00001825 	move	v1,zero
    6eb8:	3041ffff 	andi	at,v0,0xffff
    6ebc:	00012080 	sll	a0,at,0x2
    6ec0:	00812021 	addu	a0,a0,at
    6ec4:	00042040 	sll	a0,a0,0x1
    6ec8:	2484fed4 	addiu	a0,a0,-300
    6ecc:	24010022 	li	at,34
    6ed0:	0081001a 	div	zero,a0,at
    6ed4:	00002012 	mflo	a0
    6ed8:	308600ff 	andi	a2,a0,0xff
    6edc:	10c00005 	beqz	a2,6ef4 <func_800F37B8+0x9c>
    6ee0:	308300ff 	andi	v1,a0,0xff
    6ee4:	24180010 	li	t8,16
    6ee8:	03061823 	subu	v1,t8,a2
    6eec:	10000001 	b	6ef4 <func_800F37B8+0x9c>
    6ef0:	306300ff 	andi	v1,v1,0xff
    6ef4:	14600006 	bnez	v1,6f10 <func_800F37B8+0xb8>
    6ef8:	00602025 	move	a0,v1
    6efc:	94b90026 	lhu	t9,38(a1)
    6f00:	33280200 	andi	t0,t9,0x200
    6f04:	51000003 	beqzl	t0,6f14 <func_800F37B8+0xbc>
    6f08:	94a20026 	lhu	v0,38(a1)
    6f0c:	2404000f 	li	a0,15
    6f10:	94a20026 	lhu	v0,38(a1)
    6f14:	24010001 	li	at,1
    6f18:	30420003 	andi	v0,v0,0x3
    6f1c:	10410008 	beq	v0,at,6f40 <func_800F37B8+0xe8>
    6f20:	24010002 	li	at,2
    6f24:	1041000a 	beq	v0,at,6f50 <func_800F37B8+0xf8>
    6f28:	24010003 	li	at,3
    6f2c:	1041000c 	beq	v0,at,6f60 <func_800F37B8+0x108>
    6f30:	3c014170 	lui	at,0x4170
    6f34:	44810000 	mtc1	at,$f0
    6f38:	1000000c 	b	6f6c <func_800F37B8+0x114>
    6f3c:	00000000 	nop
    6f40:	3c014140 	lui	at,0x4140
    6f44:	44810000 	mtc1	at,$f0
    6f48:	10000008 	b	6f6c <func_800F37B8+0x114>
    6f4c:	00000000 	nop
    6f50:	3c014110 	lui	at,0x4110
    6f54:	44810000 	mtc1	at,$f0
    6f58:	10000004 	b	6f6c <func_800F37B8+0x114>
    6f5c:	00000000 	nop
    6f60:	3c0140c0 	lui	at,0x40c0
    6f64:	44810000 	mtc1	at,$f0
    6f68:	00000000 	nop
    6f6c:	3c010000 	lui	at,0x0
    6f70:	c42e0000 	lwc1	$f14,0(at)
    6f74:	c4a2001c 	lwc1	$f2,28(a1)
    6f78:	3c014f00 	lui	at,0x4f00
    6f7c:	4602703c 	c.lt.s	$f14,$f2
    6f80:	00000000 	nop
    6f84:	45020004 	bc1fl	6f98 <func_800F37B8+0x140>
    6f88:	46001306 	mov.s	$f12,$f2
    6f8c:	10000002 	b	6f98 <func_800F37B8+0x140>
    6f90:	46007306 	mov.s	$f12,$f14
    6f94:	46001306 	mov.s	$f12,$f2
    6f98:	460c0182 	mul.s	$f6,$f0,$f12
    6f9c:	240b0001 	li	t3,1
    6fa0:	00044900 	sll	t1,a0,0x4
    6fa4:	460e3203 	div.s	$f8,$f6,$f14
    6fa8:	444af800 	cfc1	t2,$31
    6fac:	44cbf800 	ctc1	t3,$31
    6fb0:	00000000 	nop
    6fb4:	460042a4 	cvt.w.s	$f10,$f8
    6fb8:	444bf800 	cfc1	t3,$31
    6fbc:	00000000 	nop
    6fc0:	316b0078 	andi	t3,t3,0x78
    6fc4:	51600013 	beqzl	t3,7014 <func_800F37B8+0x1bc>
    6fc8:	440b5000 	mfc1	t3,$f10
    6fcc:	44815000 	mtc1	at,$f10
    6fd0:	240b0001 	li	t3,1
    6fd4:	460a4281 	sub.s	$f10,$f8,$f10
    6fd8:	44cbf800 	ctc1	t3,$31
    6fdc:	00000000 	nop
    6fe0:	460052a4 	cvt.w.s	$f10,$f10
    6fe4:	444bf800 	cfc1	t3,$31
    6fe8:	00000000 	nop
    6fec:	316b0078 	andi	t3,t3,0x78
    6ff0:	15600005 	bnez	t3,7008 <func_800F37B8+0x1b0>
    6ff4:	00000000 	nop
    6ff8:	440b5000 	mfc1	t3,$f10
    6ffc:	3c018000 	lui	at,0x8000
    7000:	10000007 	b	7020 <func_800F37B8+0x1c8>
    7004:	01615825 	or	t3,t3,at
    7008:	10000005 	b	7020 <func_800F37B8+0x1c8>
    700c:	240bffff 	li	t3,-1
    7010:	440b5000 	mfc1	t3,$f10
    7014:	00000000 	nop
    7018:	0560fffb 	bltz	t3,7008 <func_800F37B8+0x1b0>
    701c:	00000000 	nop
    7020:	44caf800 	ctc1	t2,$31
    7024:	012b1021 	addu	v0,t1,t3
    7028:	03e00008 	jr	ra
    702c:	304200ff 	andi	v0,v0,0xff

00007030 <func_800F3990>:
    7030:	44802000 	mtc1	zero,$f4
    7034:	afa50004 	sw	a1,4(sp)
    7038:	00001825 	move	v1,zero
    703c:	460c203e 	c.le.s	$f4,$f12
    7040:	3c010000 	lui	at,0x0
    7044:	45020015 	bc1fl	709c <func_800F3990+0x6c>
    7048:	34620001 	ori	v0,v1,0x1
    704c:	c4200000 	lwc1	$f0,0(at)
    7050:	2403007f 	li	v1,127
    7054:	34620001 	ori	v0,v1,0x1
    7058:	460c003c 	c.lt.s	$f0,$f12
    705c:	00021600 	sll	v0,v0,0x18
    7060:	45020004 	bc1fl	7074 <func_800F3990+0x44>
    7064:	46006183 	div.s	$f6,$f12,$f0
    7068:	03e00008 	jr	ra
    706c:	00021603 	sra	v0,v0,0x18
    7070:	46006183 	div.s	$f6,$f12,$f0
    7074:	3c0142fc 	lui	at,0x42fc
    7078:	44814000 	mtc1	at,$f8
    707c:	00000000 	nop
    7080:	46083282 	mul.s	$f10,$f6,$f8
    7084:	4600540d 	trunc.w.s	$f16,$f10
    7088:	44038000 	mfc1	v1,$f16
    708c:	00000000 	nop
    7090:	00031e00 	sll	v1,v1,0x18
    7094:	00031e03 	sra	v1,v1,0x18
    7098:	34620001 	ori	v0,v1,0x1
    709c:	00021600 	sll	v0,v0,0x18
    70a0:	03e00008 	jr	ra
    70a4:	00021603 	sra	v0,v0,0x18

000070a8 <func_800F3A08>:
    70a8:	27bdffb8 	addiu	sp,sp,-72
    70ac:	afa40048 	sw	a0,72(sp)
    70b0:	93af004b 	lbu	t7,75(sp)
    70b4:	afa5004c 	sw	a1,76(sp)
    70b8:	93a8004f 	lbu	t0,79(sp)
    70bc:	3c013f80 	lui	at,0x3f80
    70c0:	44811000 	mtc1	at,$f2
    70c4:	3c190000 	lui	t9,0x0
    70c8:	000fc080 	sll	t8,t7,0x2
    70cc:	0338c821 	addu	t9,t9,t8
    70d0:	00084880 	sll	t1,t0,0x2
    70d4:	8f390000 	lw	t9,0(t9)
    70d8:	01284823 	subu	t1,t1,t0
    70dc:	240e0040 	li	t6,64
    70e0:	00094900 	sll	t1,t1,0x4
    70e4:	2de10007 	sltiu	at,t7,7
    70e8:	afbf0014 	sw	ra,20(sp)
    70ec:	afa60050 	sw	a2,80(sp)
    70f0:	a3a00042 	sb	zero,66(sp)
    70f4:	a3ae003b 	sb	t6,59(sp)
    70f8:	a3a0003a 	sb	zero,58(sp)
    70fc:	a3a00039 	sb	zero,57(sp)
    7100:	a3a00038 	sb	zero,56(sp)
    7104:	a3a00033 	sb	zero,51(sp)
    7108:	afaf0024 	sw	t7,36(sp)
    710c:	e7a2003c 	swc1	$f2,60(sp)
    7110:	e7a20044 	swc1	$f2,68(sp)
    7114:	1020007f 	beqz	at,7314 <L800F3C74>
    7118:	03293821 	addu	a3,t9,t1
    711c:	000f5080 	sll	t2,t7,0x2
    7120:	3c010000 	lui	at,0x0
    7124:	002a0821 	addu	at,at,t2
    7128:	8c2a0000 	lw	t2,0(at)
    712c:	01400008 	jr	t2
    7130:	00000000 	nop

00007134 <L800F3A94>:
    7134:	3c0b0000 	lui	t3,0x0
    7138:	816b0000 	lb	t3,0(t3)
    713c:	24010002 	li	at,2
    7140:	55610009 	bnel	t3,at,7168 <L800F3AC4+0x4>
    7144:	c4e0001c 	lwc1	$f0,28(a3)
    7148:	8cec0004 	lw	t4,4(a3)
    714c:	94e50026 	lhu	a1,38(a3)
    7150:	c58c0000 	lwc1	$f12,0(t4)
    7154:	0c000000 	jal	0 <func_800EC960>
    7158:	afa7002c 	sw	a3,44(sp)
    715c:	8fa7002c 	lw	a3,44(sp)
    7160:	a3a20038 	sb	v0,56(sp)

00007164 <L800F3AC4>:
    7164:	c4e0001c 	lwc1	$f0,28(a3)
    7168:	46000004 	sqrt.s	$f0,$f0
    716c:	e4e0001c 	swc1	$f0,28(a3)
    7170:	afa7002c 	sw	a3,44(sp)
    7174:	93a5004f 	lbu	a1,79(sp)
    7178:	0c000000 	jal	0 <func_800EC960>
    717c:	93a4004b 	lbu	a0,75(sp)
    7180:	8fa7002c 	lw	a3,44(sp)
    7184:	93a4004b 	lbu	a0,75(sp)
    7188:	93a5004f 	lbu	a1,79(sp)
    718c:	8ced0014 	lw	t5,20(a3)
    7190:	93a60053 	lbu	a2,83(sp)
    7194:	c5a40000 	lwc1	$f4,0(t5)
    7198:	46002182 	mul.s	$f6,$f4,$f0
    719c:	0c000000 	jal	0 <func_800EC960>
    71a0:	e7a60044 	swc1	$f6,68(sp)
    71a4:	8fa7002c 	lw	a3,44(sp)
    71a8:	a3a20042 	sb	v0,66(sp)
    71ac:	8cf80008 	lw	t8,8(a3)
    71b0:	8cee0000 	lw	t6,0(a3)
    71b4:	90e6000c 	lbu	a2,12(a3)
    71b8:	c70e0000 	lwc1	$f14,0(t8)
    71bc:	0c000000 	jal	0 <func_800EC960>
    71c0:	c5cc0000 	lwc1	$f12,0(t6)
    71c4:	a3a2003b 	sb	v0,59(sp)
    71c8:	93a4004b 	lbu	a0,75(sp)
    71cc:	0c000000 	jal	0 <func_800EC960>
    71d0:	93a5004f 	lbu	a1,79(sp)
    71d4:	8fa7002c 	lw	a3,44(sp)
    71d8:	3c030000 	lui	v1,0x0
    71dc:	80630000 	lb	v1,0(v1)
    71e0:	8ce80010 	lw	t0,16(a3)
    71e4:	24010002 	li	at,2
    71e8:	c5080000 	lwc1	$f8,0(t0)
    71ec:	46004282 	mul.s	$f10,$f8,$f0
    71f0:	14610027 	bne	v1,at,7290 <L800F3AC4+0x12c>
    71f4:	e7aa003c 	swc1	$f10,60(sp)
    71f8:	94e20026 	lhu	v0,38(a3)
    71fc:	3c010000 	lui	at,0x0
    7200:	30590400 	andi	t9,v0,0x400
    7204:	00194a83 	sra	t1,t9,0xa
    7208:	00097880 	sll	t7,t1,0x2
    720c:	002f0821 	addu	at,at,t7
    7210:	c4300000 	lwc1	$f16,0(at)
    7214:	304a0800 	andi	t2,v0,0x800
    7218:	1540001d 	bnez	t2,7290 <L800F3AC4+0x12c>
    721c:	e7b00034 	swc1	$f16,52(sp)
    7220:	8ceb0008 	lw	t3,8(a3)
    7224:	c7a40034 	lwc1	$f4,52(sp)
    7228:	240c0010 	li	t4,16
    722c:	c5720000 	lwc1	$f18,0(t3)
    7230:	4604903c 	c.lt.s	$f18,$f4
    7234:	00000000 	nop
    7238:	45020003 	bc1fl	7248 <L800F3AC4+0xe4>
    723c:	93ad0053 	lbu	t5,83(sp)
    7240:	a3ac003a 	sb	t4,58(sp)
    7244:	93ad0053 	lbu	t5,83(sp)
    7248:	3c020000 	lui	v0,0x0
    724c:	93b8003a 	lbu	t8,58(sp)
    7250:	000d7100 	sll	t6,t5,0x4
    7254:	004e1021 	addu	v0,v0,t6
    7258:	80420000 	lb	v0,0(v0)
    725c:	83a9003b 	lb	t1,59(sp)
    7260:	00584026 	xor	t0,v0,t8
    7264:	31190010 	andi	t9,t0,0x10
    7268:	13200008 	beqz	t9,728c <L800F3AC4+0x128>
    726c:	29210040 	slti	at,t1,64
    7270:	10200004 	beqz	at,7284 <L800F3AC4+0x120>
    7274:	384a0018 	xori	t2,v0,0x18
    7278:	384f0014 	xori	t7,v0,0x14
    727c:	10000004 	b	7290 <L800F3AC4+0x12c>
    7280:	a3af003a 	sb	t7,58(sp)
    7284:	10000002 	b	7290 <L800F3AC4+0x12c>
    7288:	a3aa003a 	sb	t2,58(sp)
    728c:	a3a2003a 	sb	v0,58(sp)
    7290:	3c020000 	lui	v0,0x0
    7294:	90420000 	lbu	v0,0(v0)
    7298:	8fa40024 	lw	a0,36(sp)
    729c:	24010001 	li	at,1
    72a0:	10400008 	beqz	v0,72c4 <L800F3AC4+0x160>
    72a4:	3c0c0000 	lui	t4,0x0
    72a8:	50810006 	beql	a0,at,72c4 <L800F3AC4+0x160>
    72ac:	a3a20033 	sb	v0,51(sp)
    72b0:	10800003 	beqz	a0,72c0 <L800F3AC4+0x15c>
    72b4:	24010006 	li	at,6
    72b8:	54810003 	bnel	a0,at,72c8 <L800F3AC4+0x164>
    72bc:	93ab0033 	lbu	t3,51(sp)
    72c0:	a3a20033 	sb	v0,51(sp)
    72c4:	93ab0033 	lbu	t3,51(sp)
    72c8:	918c0000 	lbu	t4,0(t4)
    72cc:	24010002 	li	at,2
    72d0:	016c1025 	or	v0,t3,t4
    72d4:	10400003 	beqz	v0,72e4 <L800F3AC4+0x180>
    72d8:	00000000 	nop
    72dc:	1000000c 	b	7310 <L800F3AC4+0x1ac>
    72e0:	a3a20039 	sb	v0,57(sp)
    72e4:	5461000b 	bnel	v1,at,7314 <L800F3C74>
    72e8:	c7a20044 	lwc1	$f2,68(sp)
    72ec:	94ed0026 	lhu	t5,38(a3)
    72f0:	c7ac0034 	lwc1	$f12,52(sp)
    72f4:	00e02825 	move	a1,a3
    72f8:	31ae2000 	andi	t6,t5,0x2000
    72fc:	55c00005 	bnezl	t6,7314 <L800F3C74>
    7300:	c7a20044 	lwc1	$f2,68(sp)
    7304:	0c000000 	jal	0 <func_800EC960>
    7308:	83a6003b 	lb	a2,59(sp)
    730c:	a3a20039 	sb	v0,57(sp)
    7310:	c7a20044 	lwc1	$f2,68(sp)

00007314 <L800F3C74>:
    7314:	93b80053 	lbu	t8,83(sp)
    7318:	3c190000 	lui	t9,0x0
    731c:	27390000 	addiu	t9,t9,0
    7320:	00184100 	sll	t0,t8,0x4
    7324:	01191021 	addu	v0,t0,t9
    7328:	c4460000 	lwc1	$f6,0(v0)
    732c:	3c0142fe 	lui	at,0x42fe
    7330:	2405ffff 	li	a1,-1
    7334:	46061032 	c.eq.s	$f2,$f6
    7338:	00000000 	nop
    733c:	45010028 	bc1t	73e0 <L800F3C74+0xcc>
    7340:	00000000 	nop
    7344:	44814000 	mtc1	at,$f8
    7348:	24050001 	li	a1,1
    734c:	3c014f00 	lui	at,0x4f00
    7350:	46081282 	mul.s	$f10,$f2,$f8
    7354:	4449f800 	cfc1	t1,$31
    7358:	44c5f800 	ctc1	a1,$31
    735c:	00000000 	nop
    7360:	46005424 	cvt.w.s	$f16,$f10
    7364:	4445f800 	cfc1	a1,$31
    7368:	00000000 	nop
    736c:	30a50078 	andi	a1,a1,0x78
    7370:	50a00013 	beqzl	a1,73c0 <L800F3C74+0xac>
    7374:	44058000 	mfc1	a1,$f16
    7378:	44818000 	mtc1	at,$f16
    737c:	24050001 	li	a1,1
    7380:	46105401 	sub.s	$f16,$f10,$f16
    7384:	44c5f800 	ctc1	a1,$31
    7388:	00000000 	nop
    738c:	46008424 	cvt.w.s	$f16,$f16
    7390:	4445f800 	cfc1	a1,$31
    7394:	00000000 	nop
    7398:	30a50078 	andi	a1,a1,0x78
    739c:	14a00005 	bnez	a1,73b4 <L800F3C74+0xa0>
    73a0:	00000000 	nop
    73a4:	44058000 	mfc1	a1,$f16
    73a8:	3c018000 	lui	at,0x8000
    73ac:	10000007 	b	73cc <L800F3C74+0xb8>
    73b0:	00a12825 	or	a1,a1,at
    73b4:	10000005 	b	73cc <L800F3C74+0xb8>
    73b8:	2405ffff 	li	a1,-1
    73bc:	44058000 	mfc1	a1,$f16
    73c0:	00000000 	nop
    73c4:	04a0fffb 	bltz	a1,73b4 <L800F3C74+0xa0>
    73c8:	00000000 	nop
    73cc:	44c9f800 	ctc1	t1,$31
    73d0:	00052e00 	sll	a1,a1,0x18
    73d4:	00052e03 	sra	a1,a1,0x18
    73d8:	10000001 	b	73e0 <L800F3C74+0xcc>
    73dc:	e4420000 	swc1	$f2,0(v0)
    73e0:	93a30053 	lbu	v1,83(sp)
    73e4:	3c010602 	lui	at,0x602
    73e8:	afa20024 	sw	v0,36(sp)
    73ec:	00031a00 	sll	v1,v1,0x8
    73f0:	00613025 	or	a2,v1,at
    73f4:	34c40002 	ori	a0,a2,0x2
    73f8:	afa60018 	sw	a2,24(sp)
    73fc:	0c000000 	jal	0 <func_800EC960>
    7400:	afa3001c 	sw	v1,28(sp)
    7404:	8fa20024 	lw	v0,36(sp)
    7408:	83a50042 	lb	a1,66(sp)
    740c:	8fa4001c 	lw	a0,28(sp)
    7410:	804f0008 	lb	t7,8(v0)
    7414:	3c010502 	lui	at,0x502
    7418:	00812025 	or	a0,a0,at
    741c:	50af0007 	beql	a1,t7,743c <L800F3C74+0x128>
    7420:	c7a0003c 	lwc1	$f0,60(sp)
    7424:	0c000000 	jal	0 <func_800EC960>
    7428:	afa20024 	sw	v0,36(sp)
    742c:	8fa20024 	lw	v0,36(sp)
    7430:	83aa0042 	lb	t2,66(sp)
    7434:	a04a0008 	sb	t2,8(v0)
    7438:	c7a0003c 	lwc1	$f0,60(sp)
    743c:	c4520004 	lwc1	$f18,4(v0)
    7440:	8fa4001c 	lw	a0,28(sp)
    7444:	3c010402 	lui	at,0x402
    7448:	46120032 	c.eq.s	$f0,$f18
    744c:	00812025 	or	a0,a0,at
    7450:	45030008 	bc1tl	7474 <L800F3C74+0x160>
    7454:	93a3003a 	lbu	v1,58(sp)
    7458:	44050000 	mfc1	a1,$f0
    745c:	0c000000 	jal	0 <func_800EC960>
    7460:	afa20024 	sw	v0,36(sp)
    7464:	8fa20024 	lw	v0,36(sp)
    7468:	c7a4003c 	lwc1	$f4,60(sp)
    746c:	e4440004 	swc1	$f4,4(v0)
    7470:	93a3003a 	lbu	v1,58(sp)
    7474:	804b000a 	lb	t3,10(v0)
    7478:	8fa4001c 	lw	a0,28(sp)
    747c:	3c010e02 	lui	at,0xe02
    7480:	106b000a 	beq	v1,t3,74ac <L800F3C74+0x198>
    7484:	00812025 	or	a0,a0,at
    7488:	34650010 	ori	a1,v1,0x10
    748c:	00052e00 	sll	a1,a1,0x18
    7490:	00052e03 	sra	a1,a1,0x18
    7494:	afa20024 	sw	v0,36(sp)
    7498:	0c000000 	jal	0 <func_800EC960>
    749c:	afa30020 	sw	v1,32(sp)
    74a0:	8fa20024 	lw	v0,36(sp)
    74a4:	8fa30020 	lw	v1,32(sp)
    74a8:	a043000a 	sb	v1,10(v0)
    74ac:	93a30039 	lbu	v1,57(sp)
    74b0:	904c000b 	lbu	t4,11(v0)
    74b4:	8fa40018 	lw	a0,24(sp)
    74b8:	00032e00 	sll	a1,v1,0x18
    74bc:	106c0007 	beq	v1,t4,74dc <L800F3C74+0x1c8>
    74c0:	34840003 	ori	a0,a0,0x3
    74c4:	00052e03 	sra	a1,a1,0x18
    74c8:	0c000000 	jal	0 <func_800EC960>
    74cc:	afa20024 	sw	v0,36(sp)
    74d0:	8fa20024 	lw	v0,36(sp)
    74d4:	93ad0039 	lbu	t5,57(sp)
    74d8:	a04d000b 	sb	t5,11(v0)
    74dc:	83ae0038 	lb	t6,56(sp)
    74e0:	9058000c 	lbu	t8,12(v0)
    74e4:	8fa4001c 	lw	a0,28(sp)
    74e8:	3c010c02 	lui	at,0xc02
    74ec:	11d80011 	beq	t6,t8,7534 <L800F3C74+0x220>
    74f0:	00812025 	or	a0,a0,at
    74f4:	24050010 	li	a1,16
    74f8:	0c000000 	jal	0 <func_800EC960>
    74fc:	afa20024 	sw	v0,36(sp)
    7500:	83a30038 	lb	v1,56(sp)
    7504:	8fa4001c 	lw	a0,28(sp)
    7508:	3c010d02 	lui	at,0xd02
    750c:	00602825 	move	a1,v1
    7510:	00052a00 	sll	a1,a1,0x8
    7514:	24a500ff 	addiu	a1,a1,255
    7518:	30a5ffff 	andi	a1,a1,0xffff
    751c:	afa30020 	sw	v1,32(sp)
    7520:	0c000000 	jal	0 <func_800EC960>
    7524:	00812025 	or	a0,a0,at
    7528:	8fa20024 	lw	v0,36(sp)
    752c:	8fa30020 	lw	v1,32(sp)
    7530:	a043000c 	sb	v1,12(v0)
    7534:	83a8003b 	lb	t0,59(sp)
    7538:	80590009 	lb	t9,9(v0)
    753c:	8fa4001c 	lw	a0,28(sp)
    7540:	3c010302 	lui	at,0x302
    7544:	11190007 	beq	t0,t9,7564 <L800F3C74+0x250>
    7548:	00812025 	or	a0,a0,at
    754c:	01002825 	move	a1,t0
    7550:	0c000000 	jal	0 <func_800EC960>
    7554:	afa20024 	sw	v0,36(sp)
    7558:	8fa20024 	lw	v0,36(sp)
    755c:	83a9003b 	lb	t1,59(sp)
    7560:	a0490009 	sb	t1,9(v0)
    7564:	8fbf0014 	lw	ra,20(sp)
    7568:	27bd0048 	addiu	sp,sp,72
    756c:	03e00008 	jr	ra
    7570:	00000000 	nop

00007574 <func_800F3ED4>:
    7574:	3c013f80 	lui	at,0x3f80
    7578:	3c040000 	lui	a0,0x0
    757c:	44810000 	mtc1	at,$f0
    7580:	24840000 	addiu	a0,a0,0
    7584:	00001025 	move	v0,zero
    7588:	240600ff 	li	a2,255
    758c:	24050040 	li	a1,64
    7590:	00027100 	sll	t6,v0,0x4
    7594:	008e1821 	addu	v1,a0,t6
    7598:	24420001 	addiu	v0,v0,1
    759c:	304200ff 	andi	v0,v0,0xff
    75a0:	28410010 	slti	at,v0,16
    75a4:	e4600000 	swc1	$f0,0(v1)
    75a8:	e4600004 	swc1	$f0,4(v1)
    75ac:	a0600008 	sb	zero,8(v1)
    75b0:	a0650009 	sb	a1,9(v1)
    75b4:	a060000a 	sb	zero,10(v1)
    75b8:	a066000b 	sb	a2,11(v1)
    75bc:	1420fff4 	bnez	at,7590 <func_800F3ED4+0x1c>
    75c0:	a066000c 	sb	a2,12(v1)
    75c4:	a08000dc 	sb	zero,220(a0)
    75c8:	3c010000 	lui	at,0x0
    75cc:	a0200000 	sb	zero,0(at)
    75d0:	3c010000 	lui	at,0x0
    75d4:	03e00008 	jr	ra
    75d8:	a0200000 	sb	zero,0(at)

000075dc <func_800F3F3C>:
    75dc:	3c0e0000 	lui	t6,0x0
    75e0:	91ce0000 	lbu	t6,0(t6)
    75e4:	27bdffe8 	addiu	sp,sp,-24
    75e8:	24010001 	li	at,1
    75ec:	afbf0014 	sw	ra,20(sp)
    75f0:	11c10008 	beq	t6,at,7614 <func_800F3F3C+0x38>
    75f4:	afa40018 	sw	a0,24(sp)
    75f8:	3c040300 	lui	a0,0x300
    75fc:	0c000000 	jal	0 <func_800EC960>
    7600:	3484006d 	ori	a0,a0,0x6d
    7604:	93a4001b 	lbu	a0,27(sp)
    7608:	3c018300 	lui	at,0x8300
    760c:	0c000000 	jal	0 <func_800EC960>
    7610:	00812025 	or	a0,a0,at
    7614:	8fbf0014 	lw	ra,20(sp)
    7618:	27bd0018 	addiu	sp,sp,24
    761c:	03e00008 	jr	ra
    7620:	00000000 	nop

00007624 <func_800F3F84>:
    7624:	3c013f80 	lui	at,0x3f80
    7628:	44810000 	mtc1	at,$f0
    762c:	3c0140c0 	lui	at,0x40c0
    7630:	44817000 	mtc1	at,$f14
    7634:	3c010000 	lui	at,0x0
    7638:	46000086 	mov.s	$f2,$f0
    763c:	460c703c 	c.lt.s	$f14,$f12
    7640:	00000000 	nop
    7644:	45020008 	bc1fl	7668 <func_800F3F84+0x44>
    7648:	460e6083 	div.s	$f2,$f12,$f14
    764c:	e4200000 	swc1	$f0,0(at)
    7650:	3c010000 	lui	at,0x0
    7654:	c4240000 	lwc1	$f4,0(at)
    7658:	3c010000 	lui	at,0x0
    765c:	03e00008 	jr	ra
    7660:	e4240000 	swc1	$f4,0(at)
    7664:	460e6083 	div.s	$f2,$f12,$f14
    7668:	3c010000 	lui	at,0x0
    766c:	c4260000 	lwc1	$f6,0(at)
    7670:	3c010000 	lui	at,0x0
    7674:	c42a0000 	lwc1	$f10,0(at)
    7678:	3c010000 	lui	at,0x0
    767c:	46061202 	mul.s	$f8,$f2,$f6
    7680:	460a4400 	add.s	$f16,$f8,$f10
    7684:	e4300000 	swc1	$f16,0(at)
    7688:	3c010000 	lui	at,0x0
    768c:	c4320000 	lwc1	$f18,0(at)
    7690:	3c010000 	lui	at,0x0
    7694:	c4260000 	lwc1	$f6,0(at)
    7698:	46121102 	mul.s	$f4,$f2,$f18
    769c:	3c010000 	lui	at,0x0
    76a0:	46062200 	add.s	$f8,$f4,$f6
    76a4:	e4280000 	swc1	$f8,0(at)
    76a8:	03e00008 	jr	ra
    76ac:	46001006 	mov.s	$f0,$f2

000076b0 <func_800F4010>:
    76b0:	44866000 	mtc1	a2,$f12
    76b4:	27bdffd8 	addiu	sp,sp,-40
    76b8:	afbf001c 	sw	ra,28(sp)
    76bc:	3c010000 	lui	at,0x0
    76c0:	afa40028 	sw	a0,40(sp)
    76c4:	afa5002c 	sw	a1,44(sp)
    76c8:	e42c0000 	swc1	$f12,0(at)
    76cc:	0c000000 	jal	0 <func_800EC960>
    76d0:	e7ac0030 	swc1	$f12,48(sp)
    76d4:	3c0e0000 	lui	t6,0x0
    76d8:	3c0f0000 	lui	t7,0x0
    76dc:	25ef0000 	addiu	t7,t7,0
    76e0:	25ce0000 	addiu	t6,t6,0
    76e4:	3c070000 	lui	a3,0x0
    76e8:	24e70000 	addiu	a3,a3,0
    76ec:	afae0010 	sw	t6,16(sp)
    76f0:	afaf0014 	sw	t7,20(sp)
    76f4:	97a4002e 	lhu	a0,46(sp)
    76f8:	8fa50028 	lw	a1,40(sp)
    76fc:	24060004 	li	a2,4
    7700:	0c000000 	jal	0 <func_800EC960>
    7704:	e7a00024 	swc1	$f0,36(sp)
    7708:	97a3002e 	lhu	v1,46(sp)
    770c:	240100b0 	li	at,176
    7710:	c7a20024 	lwc1	$f2,36(sp)
    7714:	307800f0 	andi	t8,v1,0xf0
    7718:	17010007 	bne	t8,at,7738 <func_800F4010+0x88>
    771c:	c7a40030 	lwc1	$f4,48(sp)
    7720:	3c010000 	lui	at,0x0
    7724:	c4200000 	lwc1	$f0,0(at)
    7728:	3c013f80 	lui	at,0x3f80
    772c:	44811000 	mtc1	at,$f2
    7730:	10000007 	b	7750 <func_800F4010+0xa0>
    7734:	24020001 	li	v0,1
    7738:	3c020000 	lui	v0,0x0
    773c:	8c42297c 	lw	v0,10620(v0)
    7740:	3c010000 	lui	at,0x0
    7744:	c4200000 	lwc1	$f0,0(at)
    7748:	30420001 	andi	v0,v0,0x1
    774c:	304200ff 	andi	v0,v0,0xff
    7750:	4604003c 	c.lt.s	$f0,$f4
    7754:	00000000 	nop
    7758:	4502001c 	bc1fl	77cc <func_800F4010+0x11c>
    775c:	8fbf001c 	lw	ra,28(sp)
    7760:	10400019 	beqz	v0,77c8 <func_800F4010+0x118>
    7764:	30790080 	andi	t9,v1,0x80
    7768:	13200003 	beqz	t9,7778 <func_800F4010+0xc8>
    776c:	3c010000 	lui	at,0x0
    7770:	10000002 	b	777c <func_800F4010+0xcc>
    7774:	24040867 	li	a0,2151
    7778:	24040866 	li	a0,2150
    777c:	d4280000 	ldc1	$f8,0(at)
    7780:	460011a1 	cvt.d.s	$f6,$f2
    7784:	3c010000 	lui	at,0x0
    7788:	46283282 	mul.d	$f10,$f6,$f8
    778c:	d4300000 	ldc1	$f16,0(at)
    7790:	3c020000 	lui	v0,0x0
    7794:	3c080000 	lui	t0,0x0
    7798:	24420000 	addiu	v0,v0,0
    779c:	25080000 	addiu	t0,t0,0
    77a0:	3c070000 	lui	a3,0x0
    77a4:	24e70000 	addiu	a3,a3,0
    77a8:	46305480 	add.d	$f18,$f10,$f16
    77ac:	afa80014 	sw	t0,20(sp)
    77b0:	afa20010 	sw	v0,16(sp)
    77b4:	8fa50028 	lw	a1,40(sp)
    77b8:	46209120 	cvt.s.d	$f4,$f18
    77bc:	24060004 	li	a2,4
    77c0:	0c000000 	jal	0 <func_800EC960>
    77c4:	e4440000 	swc1	$f4,0(v0)
    77c8:	8fbf001c 	lw	ra,28(sp)
    77cc:	27bd0028 	addiu	sp,sp,40
    77d0:	03e00008 	jr	ra
    77d4:	00000000 	nop

000077d8 <func_800F4138>:
    77d8:	27bdffe0 	addiu	sp,sp,-32
    77dc:	afbf001c 	sw	ra,28(sp)
    77e0:	44866000 	mtc1	a2,$f12
    77e4:	afa40020 	sw	a0,32(sp)
    77e8:	0c000000 	jal	0 <func_800EC960>
    77ec:	afa50024 	sw	a1,36(sp)
    77f0:	3c0e0000 	lui	t6,0x0
    77f4:	3c0f0000 	lui	t7,0x0
    77f8:	25ef0000 	addiu	t7,t7,0
    77fc:	25ce0000 	addiu	t6,t6,0
    7800:	3c070000 	lui	a3,0x0
    7804:	24e70000 	addiu	a3,a3,0
    7808:	afae0010 	sw	t6,16(sp)
    780c:	afaf0014 	sw	t7,20(sp)
    7810:	97a40026 	lhu	a0,38(sp)
    7814:	8fa50020 	lw	a1,32(sp)
    7818:	0c000000 	jal	0 <func_800EC960>
    781c:	24060004 	li	a2,4
    7820:	8fbf001c 	lw	ra,28(sp)
    7824:	27bd0020 	addiu	sp,sp,32
    7828:	03e00008 	jr	ra
    782c:	00000000 	nop

00007830 <func_800F4190>:
    7830:	27bdffe0 	addiu	sp,sp,-32
    7834:	afa50024 	sw	a1,36(sp)
    7838:	3c0e0000 	lui	t6,0x0
    783c:	3c0f0000 	lui	t7,0x0
    7840:	00802825 	move	a1,a0
    7844:	afbf001c 	sw	ra,28(sp)
    7848:	afa40020 	sw	a0,32(sp)
    784c:	25ef0000 	addiu	t7,t7,0
    7850:	25ce0000 	addiu	t6,t6,0
    7854:	3c070000 	lui	a3,0x0
    7858:	24e70000 	addiu	a3,a3,0
    785c:	afae0010 	sw	t6,16(sp)
    7860:	afaf0014 	sw	t7,20(sp)
    7864:	97a40026 	lhu	a0,38(sp)
    7868:	0c000000 	jal	0 <func_800EC960>
    786c:	24060004 	li	a2,4
    7870:	8fbf001c 	lw	ra,28(sp)
    7874:	27bd0020 	addiu	sp,sp,32
    7878:	03e00008 	jr	ra
    787c:	00000000 	nop

00007880 <func_800F41E0>:
    7880:	27bdffe0 	addiu	sp,sp,-32
    7884:	afbf001c 	sw	ra,28(sp)
    7888:	afa40020 	sw	a0,32(sp)
    788c:	afa50024 	sw	a1,36(sp)
    7890:	0c000000 	jal	0 <func_800EC960>
    7894:	afa60028 	sw	a2,40(sp)
    7898:	93af002b 	lbu	t7,43(sp)
    789c:	97ae0026 	lhu	t6,38(sp)
    78a0:	3c070000 	lui	a3,0x0
    78a4:	004f001b 	divu	zero,v0,t7
    78a8:	0000c010 	mfhi	t8
    78ac:	331900ff 	andi	t9,t8,0xff
    78b0:	3c080000 	lui	t0,0x0
    78b4:	24e70000 	addiu	a3,a3,0
    78b8:	25080000 	addiu	t0,t0,0
    78bc:	15e00002 	bnez	t7,78c8 <func_800F41E0+0x48>
    78c0:	00000000 	nop
    78c4:	0007000d 	break	0x7
    78c8:	01d92021 	addu	a0,t6,t9
    78cc:	3084ffff 	andi	a0,a0,0xffff
    78d0:	afa80014 	sw	t0,20(sp)
    78d4:	afa70010 	sw	a3,16(sp)
    78d8:	8fa50020 	lw	a1,32(sp)
    78dc:	0c000000 	jal	0 <func_800EC960>
    78e0:	24060004 	li	a2,4
    78e4:	8fbf001c 	lw	ra,28(sp)
    78e8:	27bd0020 	addiu	sp,sp,32
    78ec:	03e00008 	jr	ra
    78f0:	00000000 	nop

000078f4 <func_800F4254>:
    78f4:	27bdffd0 	addiu	sp,sp,-48
    78f8:	afb00020 	sw	s0,32(sp)
    78fc:	3c0e0000 	lui	t6,0x0
    7900:	91ce0000 	lbu	t6,0(t6)
    7904:	00a08025 	move	s0,a1
    7908:	32100003 	andi	s0,s0,0x3
    790c:	321000ff 	andi	s0,s0,0xff
    7910:	afbf0024 	sw	ra,36(sp)
    7914:	afa40030 	sw	a0,48(sp)
    7918:	afa50034 	sw	a1,52(sp)
    791c:	11d00029 	beq	t6,s0,79c4 <func_800F4254+0xd0>
    7920:	02001025 	move	v0,s0
    7924:	00107880 	sll	t7,s0,0x2
    7928:	3c010000 	lui	at,0x0
    792c:	002f0821 	addu	at,at,t7
    7930:	c4240000 	lwc1	$f4,0(at)
    7934:	3c070000 	lui	a3,0x0
    7938:	24e70000 	addiu	a3,a3,0
    793c:	24010001 	li	at,1
    7940:	12010006 	beq	s0,at,795c <func_800F4254+0x68>
    7944:	e4e40000 	swc1	$f4,0(a3)
    7948:	24010002 	li	at,2
    794c:	10410010 	beq	v0,at,7990 <func_800F4254+0x9c>
    7950:	2404086d 	li	a0,2157
    7954:	10000019 	b	79bc <func_800F4254+0xc8>
    7958:	00000000 	nop
    795c:	3c180000 	lui	t8,0x0
    7960:	3c190000 	lui	t9,0x0
    7964:	27390000 	addiu	t9,t9,0
    7968:	27180000 	addiu	t8,t8,0
    796c:	afb80010 	sw	t8,16(sp)
    7970:	afb90014 	sw	t9,20(sp)
    7974:	2404086d 	li	a0,2157
    7978:	8fa50030 	lw	a1,48(sp)
    797c:	24060004 	li	a2,4
    7980:	0c000000 	jal	0 <func_800EC960>
    7984:	afa20028 	sw	v0,40(sp)
    7988:	1000000c 	b	79bc <func_800F4254+0xc8>
    798c:	8fa20028 	lw	v0,40(sp)
    7990:	3c080000 	lui	t0,0x0
    7994:	3c090000 	lui	t1,0x0
    7998:	25290000 	addiu	t1,t1,0
    799c:	25080000 	addiu	t0,t0,0
    79a0:	afa80010 	sw	t0,16(sp)
    79a4:	afa90014 	sw	t1,20(sp)
    79a8:	8fa50030 	lw	a1,48(sp)
    79ac:	24060004 	li	a2,4
    79b0:	0c000000 	jal	0 <func_800EC960>
    79b4:	afa20028 	sw	v0,40(sp)
    79b8:	8fa20028 	lw	v0,40(sp)
    79bc:	3c010000 	lui	at,0x0
    79c0:	a0300000 	sb	s0,0(at)
    79c4:	3c070000 	lui	a3,0x0
    79c8:	1040000b 	beqz	v0,79f8 <func_800F4254+0x104>
    79cc:	24e70000 	addiu	a3,a3,0
    79d0:	3c0a0000 	lui	t2,0x0
    79d4:	3c0b0000 	lui	t3,0x0
    79d8:	256b0000 	addiu	t3,t3,0
    79dc:	254a0000 	addiu	t2,t2,0
    79e0:	afaa0010 	sw	t2,16(sp)
    79e4:	afab0014 	sw	t3,20(sp)
    79e8:	24041022 	li	a0,4130
    79ec:	8fa50030 	lw	a1,48(sp)
    79f0:	0c000000 	jal	0 <func_800EC960>
    79f4:	24060004 	li	a2,4
    79f8:	8fbf0024 	lw	ra,36(sp)
    79fc:	8fb00020 	lw	s0,32(sp)
    7a00:	27bd0030 	addiu	sp,sp,48
    7a04:	03e00008 	jr	ra
    7a08:	00000000 	nop

00007a0c <func_800F436C>:
    7a0c:	3c013f40 	lui	at,0x3f40
    7a10:	44810000 	mtc1	at,$f0
    7a14:	44866000 	mtc1	a2,$f12
    7a18:	27bdffe0 	addiu	sp,sp,-32
    7a1c:	3c070000 	lui	a3,0x0
    7a20:	4600603c 	c.lt.s	$f12,$f0
    7a24:	afbf001c 	sw	ra,28(sp)
    7a28:	afa40020 	sw	a0,32(sp)
    7a2c:	afa50024 	sw	a1,36(sp)
    7a30:	4500000c 	bc1f	7a64 <func_800F436C+0x58>
    7a34:	24e70000 	addiu	a3,a3,0
    7a38:	46006103 	div.s	$f4,$f12,$f0
    7a3c:	3c013e80 	lui	at,0x3e80
    7a40:	44813000 	mtc1	at,$f6
    7a44:	3c013f00 	lui	at,0x3f00
    7a48:	44815000 	mtc1	at,$f10
    7a4c:	3c070000 	lui	a3,0x0
    7a50:	24e70000 	addiu	a3,a3,0
    7a54:	46062202 	mul.s	$f8,$f4,$f6
    7a58:	460a4400 	add.s	$f16,$f8,$f10
    7a5c:	10000002 	b	7a68 <func_800F436C+0x5c>
    7a60:	e4f00000 	swc1	$f16,0(a3)
    7a64:	e4ec0000 	swc1	$f12,0(a3)
    7a68:	3c013f00 	lui	at,0x3f00
    7a6c:	44819000 	mtc1	at,$f18
    7a70:	c4e40000 	lwc1	$f4,0(a3)
    7a74:	3c0e0000 	lui	t6,0x0
    7a78:	25ce0000 	addiu	t6,t6,0
    7a7c:	4604903c 	c.lt.s	$f18,$f4
    7a80:	97a40026 	lhu	a0,38(sp)
    7a84:	8fa50020 	lw	a1,32(sp)
    7a88:	24060004 	li	a2,4
    7a8c:	45000005 	bc1f	7aa4 <func_800F436C+0x98>
    7a90:	3c0f0000 	lui	t7,0x0
    7a94:	25ef0000 	addiu	t7,t7,0
    7a98:	afaf0014 	sw	t7,20(sp)
    7a9c:	0c000000 	jal	0 <func_800EC960>
    7aa0:	afae0010 	sw	t6,16(sp)
    7aa4:	8fbf001c 	lw	ra,28(sp)
    7aa8:	27bd0020 	addiu	sp,sp,32
    7aac:	03e00008 	jr	ra
    7ab0:	00000000 	nop

00007ab4 <func_800F4414>:
    7ab4:	3c030000 	lui	v1,0x0
    7ab8:	24630000 	addiu	v1,v1,0
    7abc:	806e0000 	lb	t6,0(v1)
    7ac0:	27bdffe0 	addiu	sp,sp,-32
    7ac4:	44866000 	mtc1	a2,$f12
    7ac8:	25cfffff 	addiu	t7,t6,-1
    7acc:	a06f0000 	sb	t7,0(v1)
    7ad0:	80780000 	lb	t8,0(v1)
    7ad4:	afbf001c 	sw	ra,28(sp)
    7ad8:	afa40020 	sw	a0,32(sp)
    7adc:	17000027 	bnez	t8,7b7c <func_800F4414+0xc8>
    7ae0:	afa50024 	sw	a1,36(sp)
    7ae4:	3c190000 	lui	t9,0x0
    7ae8:	3c080000 	lui	t0,0x0
    7aec:	25080000 	addiu	t0,t0,0
    7af0:	27390000 	addiu	t9,t9,0
    7af4:	3c070000 	lui	a3,0x0
    7af8:	24e70000 	addiu	a3,a3,0
    7afc:	afb90010 	sw	t9,16(sp)
    7b00:	afa80014 	sw	t0,20(sp)
    7b04:	97a40026 	lhu	a0,38(sp)
    7b08:	8fa50020 	lw	a1,32(sp)
    7b0c:	24060004 	li	a2,4
    7b10:	0c000000 	jal	0 <func_800EC960>
    7b14:	e7ac0028 	swc1	$f12,40(sp)
    7b18:	3c014000 	lui	at,0x4000
    7b1c:	44810000 	mtc1	at,$f0
    7b20:	c7ac0028 	lwc1	$f12,40(sp)
    7b24:	3c030000 	lui	v1,0x0
    7b28:	24630000 	addiu	v1,v1,0
    7b2c:	460c003c 	c.lt.s	$f0,$f12
    7b30:	3c020000 	lui	v0,0x0
    7b34:	3c090000 	lui	t1,0x0
    7b38:	45000002 	bc1f	7b44 <func_800F4414+0x90>
    7b3c:	00000000 	nop
    7b40:	46000306 	mov.s	$f12,$f0
    7b44:	80420000 	lb	v0,0(v0)
    7b48:	81290000 	lb	t1,0(t1)
    7b4c:	3c013f80 	lui	at,0x3f80
    7b50:	44814000 	mtc1	at,$f8
    7b54:	00495023 	subu	t2,v0,t1
    7b58:	448a2000 	mtc1	t2,$f4
    7b5c:	460c4281 	sub.s	$f10,$f8,$f12
    7b60:	468021a0 	cvt.s.w	$f6,$f4
    7b64:	460a3402 	mul.s	$f16,$f6,$f10
    7b68:	4600848d 	trunc.w.s	$f18,$f16
    7b6c:	440e9000 	mfc1	t6,$f18
    7b70:	00000000 	nop
    7b74:	01c27821 	addu	t7,t6,v0
    7b78:	a06f0000 	sb	t7,0(v1)
    7b7c:	8fbf001c 	lw	ra,28(sp)
    7b80:	27bd0020 	addiu	sp,sp,32
    7b84:	03e00008 	jr	ra
    7b88:	00000000 	nop

00007b8c <func_800F44EC>:
    7b8c:	afa50004 	sw	a1,4(sp)
    7b90:	240e0001 	li	t6,1
    7b94:	3c010000 	lui	at,0x0
    7b98:	00052e00 	sll	a1,a1,0x18
    7b9c:	a02e0000 	sb	t6,0(at)
    7ba0:	00052e03 	sra	a1,a1,0x18
    7ba4:	afa40000 	sw	a0,0(sp)
    7ba8:	3c010000 	lui	at,0x0
    7bac:	00042600 	sll	a0,a0,0x18
    7bb0:	a0250000 	sb	a1,0(at)
    7bb4:	00042603 	sra	a0,a0,0x18
    7bb8:	3c010000 	lui	at,0x0
    7bbc:	03e00008 	jr	ra
    7bc0:	a0240000 	sb	a0,0(at)

00007bc4 <func_800F4524>:
    7bc4:	27bdffe0 	addiu	sp,sp,-32
    7bc8:	afa60028 	sw	a2,40(sp)
    7bcc:	83ae002b 	lb	t6,43(sp)
    7bd0:	afa50024 	sw	a1,36(sp)
    7bd4:	3c020000 	lui	v0,0x0
    7bd8:	3c070000 	lui	a3,0x0
    7bdc:	24e70000 	addiu	a3,a3,0
    7be0:	24420000 	addiu	v0,v0,0
    7be4:	00802825 	move	a1,a0
    7be8:	afbf001c 	sw	ra,28(sp)
    7bec:	afa40020 	sw	a0,32(sp)
    7bf0:	97a40026 	lhu	a0,38(sp)
    7bf4:	afa20014 	sw	v0,20(sp)
    7bf8:	afa70010 	sw	a3,16(sp)
    7bfc:	24060004 	li	a2,4
    7c00:	0c000000 	jal	0 <func_800EC960>
    7c04:	a04e0000 	sb	t6,0(v0)
    7c08:	8fbf001c 	lw	ra,28(sp)
    7c0c:	27bd0020 	addiu	sp,sp,32
    7c10:	03e00008 	jr	ra
    7c14:	00000000 	nop

00007c18 <func_800F4578>:
    7c18:	27bdffe0 	addiu	sp,sp,-32
    7c1c:	44866000 	mtc1	a2,$f12
    7c20:	afa50024 	sw	a1,36(sp)
    7c24:	3c020000 	lui	v0,0x0
    7c28:	3c0e0000 	lui	t6,0x0
    7c2c:	24420000 	addiu	v0,v0,0
    7c30:	00802825 	move	a1,a0
    7c34:	afbf001c 	sw	ra,28(sp)
    7c38:	afa40020 	sw	a0,32(sp)
    7c3c:	25ce0000 	addiu	t6,t6,0
    7c40:	3c070000 	lui	a3,0x0
    7c44:	24e70000 	addiu	a3,a3,0
    7c48:	afae0014 	sw	t6,20(sp)
    7c4c:	97a40026 	lhu	a0,38(sp)
    7c50:	afa20010 	sw	v0,16(sp)
    7c54:	24060004 	li	a2,4
    7c58:	0c000000 	jal	0 <func_800EC960>
    7c5c:	e44c0000 	swc1	$f12,0(v0)
    7c60:	8fbf001c 	lw	ra,28(sp)
    7c64:	27bd0020 	addiu	sp,sp,32
    7c68:	03e00008 	jr	ra
    7c6c:	00000000 	nop

00007c70 <func_800F45D0>:
    7c70:	27bdffe8 	addiu	sp,sp,-24
    7c74:	afbf0014 	sw	ra,20(sp)
    7c78:	e7ac0018 	swc1	$f12,24(sp)
    7c7c:	3c040000 	lui	a0,0x0
    7c80:	24840000 	addiu	a0,a0,0
    7c84:	8fa60018 	lw	a2,24(sp)
    7c88:	0c000000 	jal	0 <func_800EC960>
    7c8c:	2405103d 	li	a1,4157
    7c90:	3c010000 	lui	at,0x0
    7c94:	c4240000 	lwc1	$f4,0(at)
    7c98:	c7a60018 	lwc1	$f6,24(sp)
    7c9c:	3c010000 	lui	at,0x0
    7ca0:	c42a0000 	lwc1	$f10,0(at)
    7ca4:	46062202 	mul.s	$f8,$f4,$f6
    7ca8:	3c040000 	lui	a0,0x0
    7cac:	24840000 	addiu	a0,a0,0
    7cb0:	00002825 	move	a1,zero
    7cb4:	460a4400 	add.s	$f16,$f8,$f10
    7cb8:	44068000 	mfc1	a2,$f16
    7cbc:	0c000000 	jal	0 <func_800EC960>
    7cc0:	00000000 	nop
    7cc4:	8fbf0014 	lw	ra,20(sp)
    7cc8:	27bd0018 	addiu	sp,sp,24
    7ccc:	03e00008 	jr	ra
    7cd0:	00000000 	nop

00007cd4 <func_800F4634>:
    7cd4:	27bdffe0 	addiu	sp,sp,-32
    7cd8:	44856000 	mtc1	a1,$f12
    7cdc:	afbf001c 	sw	ra,28(sp)
    7ce0:	afa40020 	sw	a0,32(sp)
    7ce4:	24042006 	li	a0,8198
    7ce8:	0c000000 	jal	0 <func_800EC960>
    7cec:	e7ac0024 	swc1	$f12,36(sp)
    7cf0:	14400005 	bnez	v0,7d08 <func_800F4634+0x34>
    7cf4:	c7ac0024 	lwc1	$f12,36(sp)
    7cf8:	3c070000 	lui	a3,0x0
    7cfc:	24e70000 	addiu	a3,a3,0
    7d00:	10000011 	b	7d48 <func_800F4634+0x74>
    7d04:	e4ec0000 	swc1	$f12,0(a3)
    7d08:	3c070000 	lui	a3,0x0
    7d0c:	24e70000 	addiu	a3,a3,0
    7d10:	c4e00000 	lwc1	$f0,0(a3)
    7d14:	46006032 	c.eq.s	$f12,$f0
    7d18:	00000000 	nop
    7d1c:	4501000a 	bc1t	7d48 <func_800F4634+0x74>
    7d20:	00000000 	nop
    7d24:	e4ec0004 	swc1	$f12,4(a3)
    7d28:	c4e40004 	lwc1	$f4,4(a3)
    7d2c:	3c014220 	lui	at,0x4220
    7d30:	44814000 	mtc1	at,$f8
    7d34:	46002181 	sub.s	$f6,$f4,$f0
    7d38:	240e0028 	li	t6,40
    7d3c:	acee000c 	sw	t6,12(a3)
    7d40:	46083283 	div.s	$f10,$f6,$f8
    7d44:	e4ea0008 	swc1	$f10,8(a3)
    7d48:	3c0f0000 	lui	t7,0x0
    7d4c:	3c180000 	lui	t8,0x0
    7d50:	27180000 	addiu	t8,t8,0
    7d54:	25ef0000 	addiu	t7,t7,0
    7d58:	afaf0010 	sw	t7,16(sp)
    7d5c:	afb80014 	sw	t8,20(sp)
    7d60:	24042006 	li	a0,8198
    7d64:	8fa50020 	lw	a1,32(sp)
    7d68:	0c000000 	jal	0 <func_800EC960>
    7d6c:	24060004 	li	a2,4
    7d70:	8fbf001c 	lw	ra,28(sp)
    7d74:	27bd0020 	addiu	sp,sp,32
    7d78:	03e00008 	jr	ra
    7d7c:	00000000 	nop

00007d80 <func_800F46E0>:
    7d80:	27bdffe0 	addiu	sp,sp,-32
    7d84:	44856000 	mtc1	a1,$f12
    7d88:	afbf001c 	sw	ra,28(sp)
    7d8c:	afa40020 	sw	a0,32(sp)
    7d90:	24042007 	li	a0,8199
    7d94:	0c000000 	jal	0 <func_800EC960>
    7d98:	e7ac0024 	swc1	$f12,36(sp)
    7d9c:	14400005 	bnez	v0,7db4 <func_800F46E0+0x34>
    7da0:	c7ac0024 	lwc1	$f12,36(sp)
    7da4:	3c070000 	lui	a3,0x0
    7da8:	24e70000 	addiu	a3,a3,0
    7dac:	10000011 	b	7df4 <func_800F46E0+0x74>
    7db0:	e4ec0000 	swc1	$f12,0(a3)
    7db4:	3c070000 	lui	a3,0x0
    7db8:	24e70000 	addiu	a3,a3,0
    7dbc:	c4e00000 	lwc1	$f0,0(a3)
    7dc0:	46006032 	c.eq.s	$f12,$f0
    7dc4:	00000000 	nop
    7dc8:	4501000a 	bc1t	7df4 <func_800F46E0+0x74>
    7dcc:	00000000 	nop
    7dd0:	e4ec0004 	swc1	$f12,4(a3)
    7dd4:	c4e40004 	lwc1	$f4,4(a3)
    7dd8:	3c014220 	lui	at,0x4220
    7ddc:	44814000 	mtc1	at,$f8
    7de0:	46002181 	sub.s	$f6,$f4,$f0
    7de4:	240e0028 	li	t6,40
    7de8:	acee000c 	sw	t6,12(a3)
    7dec:	46083283 	div.s	$f10,$f6,$f8
    7df0:	e4ea0008 	swc1	$f10,8(a3)
    7df4:	3c0f0000 	lui	t7,0x0
    7df8:	25ef0000 	addiu	t7,t7,0
    7dfc:	afaf0014 	sw	t7,20(sp)
    7e00:	24042007 	li	a0,8199
    7e04:	8fa50020 	lw	a1,32(sp)
    7e08:	24060004 	li	a2,4
    7e0c:	0c000000 	jal	0 <func_800EC960>
    7e10:	afa70010 	sw	a3,16(sp)
    7e14:	8fbf001c 	lw	ra,28(sp)
    7e18:	27bd0020 	addiu	sp,sp,32
    7e1c:	03e00008 	jr	ra
    7e20:	00000000 	nop

00007e24 <func_800F4784>:
    7e24:	8c82000c 	lw	v0,12(a0)
    7e28:	1040000a 	beqz	v0,7e54 <func_800F4784+0x30>
    7e2c:	244effff 	addiu	t6,v0,-1
    7e30:	11c00006 	beqz	t6,7e4c <func_800F4784+0x28>
    7e34:	ac8e000c 	sw	t6,12(a0)
    7e38:	c4840000 	lwc1	$f4,0(a0)
    7e3c:	c4860008 	lwc1	$f6,8(a0)
    7e40:	46062200 	add.s	$f8,$f4,$f6
    7e44:	03e00008 	jr	ra
    7e48:	e4880000 	swc1	$f8,0(a0)
    7e4c:	c48a0004 	lwc1	$f10,4(a0)
    7e50:	e48a0000 	swc1	$f10,0(a0)
    7e54:	03e00008 	jr	ra
    7e58:	00000000 	nop

00007e5c <func_800F47BC>:
    7e5c:	27bdffe8 	addiu	sp,sp,-24
    7e60:	afbf0014 	sw	ra,20(sp)
    7e64:	00002025 	move	a0,zero
    7e68:	24050001 	li	a1,1
    7e6c:	00003025 	move	a2,zero
    7e70:	0c000000 	jal	0 <func_800EC960>
    7e74:	2407000a 	li	a3,10
    7e78:	24040003 	li	a0,3
    7e7c:	24050001 	li	a1,1
    7e80:	00003025 	move	a2,zero
    7e84:	0c000000 	jal	0 <func_800EC960>
    7e88:	2407000a 	li	a3,10
    7e8c:	8fbf0014 	lw	ra,20(sp)
    7e90:	27bd0018 	addiu	sp,sp,24
    7e94:	03e00008 	jr	ra
    7e98:	00000000 	nop

00007e9c <func_800F47FC>:
    7e9c:	27bdffe8 	addiu	sp,sp,-24
    7ea0:	afbf0014 	sw	ra,20(sp)
    7ea4:	00002025 	move	a0,zero
    7ea8:	24050001 	li	a1,1
    7eac:	2406007f 	li	a2,127
    7eb0:	0c000000 	jal	0 <func_800EC960>
    7eb4:	24070003 	li	a3,3
    7eb8:	24040003 	li	a0,3
    7ebc:	24050001 	li	a1,1
    7ec0:	2406007f 	li	a2,127
    7ec4:	0c000000 	jal	0 <func_800EC960>
    7ec8:	24070003 	li	a3,3
    7ecc:	8fbf0014 	lw	ra,20(sp)
    7ed0:	27bd0018 	addiu	sp,sp,24
    7ed4:	03e00008 	jr	ra
    7ed8:	00000000 	nop

00007edc <func_800F483C>:
    7edc:	27bdffe8 	addiu	sp,sp,-24
    7ee0:	afbf0014 	sw	ra,20(sp)
    7ee4:	afa40018 	sw	a0,24(sp)
    7ee8:	afa5001c 	sw	a1,28(sp)
    7eec:	308600ff 	andi	a2,a0,0xff
    7ef0:	30a700ff 	andi	a3,a1,0xff
    7ef4:	00002825 	move	a1,zero
    7ef8:	0c000000 	jal	0 <func_800EC960>
    7efc:	00002025 	move	a0,zero
    7f00:	8fbf0014 	lw	ra,20(sp)
    7f04:	27bd0018 	addiu	sp,sp,24
    7f08:	03e00008 	jr	ra
    7f0c:	00000000 	nop

00007f10 <func_800F4870>:
    7f10:	27bdffd0 	addiu	sp,sp,-48
    7f14:	afb1001c 	sw	s1,28(sp)
    7f18:	308200ff 	andi	v0,a0,0xff
    7f1c:	afbf0024 	sw	ra,36(sp)
    7f20:	afb20020 	sw	s2,32(sp)
    7f24:	afb00018 	sw	s0,24(sp)
    7f28:	afa40030 	sw	a0,48(sp)
    7f2c:	14400002 	bnez	v0,7f38 <func_800F4870+0x28>
    7f30:	00008825 	move	s1,zero
    7f34:	2411007f 	li	s1,127
    7f38:	00008025 	move	s0,zero
    7f3c:	afa20028 	sw	v0,40(sp)
    7f40:	3c120700 	lui	s2,0x700
    7f44:	320e00ff 	andi	t6,s0,0xff
    7f48:	000e7a00 	sll	t7,t6,0x8
    7f4c:	00112e00 	sll	a1,s1,0x18
    7f50:	00052e03 	sra	a1,a1,0x18
    7f54:	0c000000 	jal	0 <func_800EC960>
    7f58:	01f22025 	or	a0,t7,s2
    7f5c:	26100001 	addiu	s0,s0,1
    7f60:	321000ff 	andi	s0,s0,0xff
    7f64:	2a010010 	slti	at,s0,16
    7f68:	5420fff7 	bnezl	at,7f48 <func_800F4870+0x38>
    7f6c:	320e00ff 	andi	t6,s0,0xff
    7f70:	8fb80028 	lw	t8,40(sp)
    7f74:	8fa80028 	lw	t0,40(sp)
    7f78:	24010007 	li	at,7
    7f7c:	17010005 	bne	t8,at,7f94 <func_800F4870+0x84>
    7f80:	31090007 	andi	t1,t0,0x7
    7f84:	24190002 	li	t9,2
    7f88:	3c010000 	lui	at,0x0
    7f8c:	10000005 	b	7fa4 <func_800F4870+0x94>
    7f90:	a0390000 	sb	t9,0(at)
    7f94:	3c040000 	lui	a0,0x0
    7f98:	00892021 	addu	a0,a0,t1
    7f9c:	0c000000 	jal	0 <func_800EC960>
    7fa0:	90840000 	lbu	a0,0(a0)
    7fa4:	8fbf0024 	lw	ra,36(sp)
    7fa8:	8fb00018 	lw	s0,24(sp)
    7fac:	8fb1001c 	lw	s1,28(sp)
    7fb0:	8fb20020 	lw	s2,32(sp)
    7fb4:	03e00008 	jr	ra
    7fb8:	27bd0030 	addiu	sp,sp,48

00007fbc <func_800F491C>:
    7fbc:	27bdffd0 	addiu	sp,sp,-48
    7fc0:	3c0e0000 	lui	t6,0x0
    7fc4:	91ce0000 	lbu	t6,0(t6)
    7fc8:	afb50028 	sw	s5,40(sp)
    7fcc:	308600ff 	andi	a2,a0,0xff
    7fd0:	afbf002c 	sw	ra,44(sp)
    7fd4:	afb40024 	sw	s4,36(sp)
    7fd8:	afb30020 	sw	s3,32(sp)
    7fdc:	afb2001c 	sw	s2,28(sp)
    7fe0:	afb10018 	sw	s1,24(sp)
    7fe4:	afb00014 	sw	s0,20(sp)
    7fe8:	afa40030 	sw	a0,48(sp)
    7fec:	10ce0037 	beq	a2,t6,80cc <func_800F491C+0x110>
    7ff0:	00c0a825 	move	s5,a2
    7ff4:	00002025 	move	a0,zero
    7ff8:	00002825 	move	a1,zero
    7ffc:	24070002 	li	a3,2
    8000:	0c000000 	jal	0 <func_800EC960>
    8004:	a3a60033 	sb	a2,51(sp)
    8008:	2aa10040 	slti	at,s5,64
    800c:	10200003 	beqz	at,801c <func_800F491C+0x60>
    8010:	26a2ffc0 	addiu	v0,s5,-64
    8014:	10000005 	b	802c <func_800F491C+0x70>
    8018:	24020010 	li	v0,16
    801c:	00021083 	sra	v0,v0,0x2
    8020:	24420001 	addiu	v0,v0,1
    8024:	00021100 	sll	v0,v0,0x4
    8028:	304200ff 	andi	v0,v0,0xff
    802c:	3c018004 	lui	at,0x8004
    8030:	34210f00 	ori	at,at,0xf00
    8034:	0c000000 	jal	0 <func_800EC960>
    8038:	00412025 	or	a0,v0,at
    803c:	3c120000 	lui	s2,0x0
    8040:	3c110000 	lui	s1,0x0
    8044:	26315ab0 	addiu	s1,s1,23216
    8048:	26520000 	addiu	s2,s2,0
    804c:	00008025 	move	s0,zero
    8050:	3c140500 	lui	s4,0x500
    8054:	241300ff 	li	s3,255
    8058:	00107880 	sll	t7,s0,0x2
    805c:	024fc021 	addu	t8,s2,t7
    8060:	8f023568 	lw	v0,13672(t8)
    8064:	52220012 	beql	s1,v0,80b0 <func_800F491C+0xf4>
    8068:	26100001 	addiu	s0,s0,1
    806c:	804300c9 	lb	v1,201(v0)
    8070:	320900ff 	andi	t1,s0,0xff
    8074:	00095200 	sll	t2,t1,0x8
    8078:	307900ff 	andi	t9,v1,0xff
    807c:	1279000b 	beq	s3,t9,80ac <func_800F491C+0xf0>
    8080:	00751023 	subu	v0,v1,s5
    8084:	2442007f 	addiu	v0,v0,127
    8088:	3042ffff 	andi	v0,v0,0xffff
    808c:	28410080 	slti	at,v0,128
    8090:	14200002 	bnez	at,809c <func_800F491C+0xe0>
    8094:	01542025 	or	a0,t2,s4
    8098:	2402007f 	li	v0,127
    809c:	00402825 	move	a1,v0
    80a0:	00052e00 	sll	a1,a1,0x18
    80a4:	0c000000 	jal	0 <func_800EC960>
    80a8:	00052e03 	sra	a1,a1,0x18
    80ac:	26100001 	addiu	s0,s0,1
    80b0:	321000ff 	andi	s0,s0,0xff
    80b4:	2a010010 	slti	at,s0,16
    80b8:	5420ffe8 	bnezl	at,805c <func_800F491C+0xa0>
    80bc:	00107880 	sll	t7,s0,0x2
    80c0:	93ab0033 	lbu	t3,51(sp)
    80c4:	3c010000 	lui	at,0x0
    80c8:	a02b0000 	sb	t3,0(at)
    80cc:	8fbf002c 	lw	ra,44(sp)
    80d0:	8fb00014 	lw	s0,20(sp)
    80d4:	8fb10018 	lw	s1,24(sp)
    80d8:	8fb2001c 	lw	s2,28(sp)
    80dc:	8fb30020 	lw	s3,32(sp)
    80e0:	8fb40024 	lw	s4,36(sp)
    80e4:	8fb50028 	lw	s5,40(sp)
    80e8:	27bd0030 	addiu	sp,sp,48
    80ec:	03e00008 	jr	ra
    80f0:	2402ffff 	li	v0,-1

000080f4 <func_800F4A54>:
    80f4:	3c010000 	lui	at,0x0
    80f8:	a0240000 	sb	a0,0(at)
    80fc:	3c010000 	lui	at,0x0
    8100:	240e0001 	li	t6,1
    8104:	afa40000 	sw	a0,0(sp)
    8108:	03e00008 	jr	ra
    810c:	a02e0000 	sb	t6,0(at)

00008110 <func_800F4A70>:
    8110:	3c0e0000 	lui	t6,0x0
    8114:	91ce0000 	lbu	t6,0(t6)
    8118:	27bdffe8 	addiu	sp,sp,-24
    811c:	24020001 	li	v0,1
    8120:	144e0015 	bne	v0,t6,8178 <func_800F4A70+0x68>
    8124:	afbf0014 	sw	ra,20(sp)
    8128:	3c060000 	lui	a2,0x0
    812c:	3c0f0000 	lui	t7,0x0
    8130:	91ef0000 	lbu	t7,0(t7)
    8134:	90c60000 	lbu	a2,0(a2)
    8138:	00002025 	move	a0,zero
    813c:	00002825 	move	a1,zero
    8140:	10cf000a 	beq	a2,t7,816c <func_800F4A70+0x5c>
    8144:	00000000 	nop
    8148:	0c000000 	jal	0 <func_800EC960>
    814c:	2407000a 	li	a3,10
    8150:	3c180000 	lui	t8,0x0
    8154:	93180000 	lbu	t8,0(t8)
    8158:	3c010000 	lui	at,0x0
    815c:	24190001 	li	t9,1
    8160:	a0380000 	sb	t8,0(at)
    8164:	3c010000 	lui	at,0x0
    8168:	a0390000 	sb	t9,0(at)
    816c:	3c010000 	lui	at,0x0
    8170:	10000012 	b	81bc <func_800F4A70+0xac>
    8174:	a0200000 	sb	zero,0(at)
    8178:	3c080000 	lui	t0,0x0
    817c:	91080000 	lbu	t0,0(t0)
    8180:	3c090000 	lui	t1,0x0
    8184:	1448000d 	bne	v0,t0,81bc <func_800F4A70+0xac>
    8188:	00000000 	nop
    818c:	81290000 	lb	t1,0(t1)
    8190:	00002025 	move	a0,zero
    8194:	00002825 	move	a1,zero
    8198:	15200008 	bnez	t1,81bc <func_800F4A70+0xac>
    819c:	2406007f 	li	a2,127
    81a0:	0c000000 	jal	0 <func_800EC960>
    81a4:	2407000a 	li	a3,10
    81a8:	240a007f 	li	t2,127
    81ac:	3c010000 	lui	at,0x0
    81b0:	a02a0000 	sb	t2,0(at)
    81b4:	3c010000 	lui	at,0x0
    81b8:	a0200000 	sb	zero,0(at)
    81bc:	3c030000 	lui	v1,0x0
    81c0:	24630000 	addiu	v1,v1,0
    81c4:	90620000 	lbu	v0,0(v1)
    81c8:	10400007 	beqz	v0,81e8 <func_800F4A70+0xd8>
    81cc:	244bffff 	addiu	t3,v0,-1
    81d0:	316c00ff 	andi	t4,t3,0xff
    81d4:	15800004 	bnez	t4,81e8 <func_800F4A70+0xd8>
    81d8:	a06b0000 	sb	t3,0(v1)
    81dc:	3c040000 	lui	a0,0x0
    81e0:	0c000000 	jal	0 <func_800EC960>
    81e4:	90840000 	lbu	a0,0(a0)
    81e8:	8fbf0014 	lw	ra,20(sp)
    81ec:	27bd0018 	addiu	sp,sp,24
    81f0:	03e00008 	jr	ra
    81f4:	00000000 	nop

000081f8 <func_800F4B58>:
    81f8:	27bdffe0 	addiu	sp,sp,-32
    81fc:	afa60028 	sw	a2,40(sp)
    8200:	3c0e0000 	lui	t6,0x0
    8204:	91ce0000 	lbu	t6,0(t6)
    8208:	8faf0028 	lw	t7,40(sp)
    820c:	afbf001c 	sw	ra,28(sp)
    8210:	afa40020 	sw	a0,32(sp)
    8214:	afa50024 	sw	a1,36(sp)
    8218:	01cfc021 	addu	t8,t6,t7
    821c:	93190000 	lbu	t9,0(t8)
    8220:	3c0a0000 	lui	t2,0x0
    8224:	3c0b0000 	lui	t3,0x0
    8228:	3c0c0000 	lui	t4,0x0
    822c:	00194080 	sll	t0,t9,0x2
    8230:	00802825 	move	a1,a0
    8234:	2509009c 	addiu	t1,t0,156
    8238:	258c0000 	addiu	t4,t4,0
    823c:	256b0000 	addiu	t3,t3,0
    8240:	254a0000 	addiu	t2,t2,0
    8244:	012a3821 	addu	a3,t1,t2
    8248:	afab0010 	sw	t3,16(sp)
    824c:	afac0014 	sw	t4,20(sp)
    8250:	97a40026 	lhu	a0,38(sp)
    8254:	0c000000 	jal	0 <func_800EC960>
    8258:	24060004 	li	a2,4
    825c:	3c030000 	lui	v1,0x0
    8260:	24630000 	addiu	v1,v1,0
    8264:	90620000 	lbu	v0,0(v1)
    8268:	2841000f 	slti	at,v0,15
    826c:	10200002 	beqz	at,8278 <func_800F4B58+0x80>
    8270:	244d0001 	addiu	t5,v0,1
    8274:	a06d0000 	sb	t5,0(v1)
    8278:	8fbf001c 	lw	ra,28(sp)
    827c:	27bd0020 	addiu	sp,sp,32
    8280:	03e00008 	jr	ra
    8284:	00000000 	nop

00008288 <func_800F4BE8>:
    8288:	3c010000 	lui	at,0x0
    828c:	03e00008 	jr	ra
    8290:	a0200000 	sb	zero,0(at)

00008294 <func_800F4BF4>:
    8294:	27bdffe0 	addiu	sp,sp,-32
    8298:	afa60028 	sw	a2,40(sp)
    829c:	83ae002b 	lb	t6,43(sp)
    82a0:	afa50024 	sw	a1,36(sp)
    82a4:	3c190000 	lui	t9,0x0
    82a8:	3c080000 	lui	t0,0x0
    82ac:	3c090000 	lui	t1,0x0
    82b0:	000e7880 	sll	t7,t6,0x2
    82b4:	00802825 	move	a1,a0
    82b8:	afbf001c 	sw	ra,28(sp)
    82bc:	afa40020 	sw	a0,32(sp)
    82c0:	25f8009c 	addiu	t8,t7,156
    82c4:	25290000 	addiu	t1,t1,0
    82c8:	25080000 	addiu	t0,t0,0
    82cc:	27390000 	addiu	t9,t9,0
    82d0:	03193821 	addu	a3,t8,t9
    82d4:	afa80010 	sw	t0,16(sp)
    82d8:	afa90014 	sw	t1,20(sp)
    82dc:	97a40026 	lhu	a0,38(sp)
    82e0:	0c000000 	jal	0 <func_800EC960>
    82e4:	24060004 	li	a2,4
    82e8:	8fbf001c 	lw	ra,28(sp)
    82ec:	27bd0020 	addiu	sp,sp,32
    82f0:	03e00008 	jr	ra
    82f4:	00000000 	nop

000082f8 <func_800F4C58>:
    82f8:	27bdffb0 	addiu	sp,sp,-80
    82fc:	afa50054 	sw	a1,84(sp)
    8300:	97a70056 	lhu	a3,86(sp)
    8304:	afb7003c 	sw	s7,60(sp)
    8308:	afbe0040 	sw	s8,64(sp)
    830c:	00071303 	sra	v0,a3,0xc
    8310:	afb10024 	sw	s1,36(sp)
    8314:	afb00020 	sw	s0,32(sp)
    8318:	305700ff 	andi	s7,v0,0xff
    831c:	afbf0044 	sw	ra,68(sp)
    8320:	afb60038 	sw	s6,56(sp)
    8324:	afb50034 	sw	s5,52(sp)
    8328:	afb40030 	sw	s4,48(sp)
    832c:	afb3002c 	sw	s3,44(sp)
    8330:	afb20028 	sw	s2,40(sp)
    8334:	afa40050 	sw	a0,80(sp)
    8338:	afa60058 	sw	a2,88(sp)
    833c:	00008825 	move	s1,zero
    8340:	305e00ff 	andi	s8,v0,0xff
    8344:	1ae00012 	blez	s7,8390 <func_800F4C58+0x98>
    8348:	00008025 	move	s0,zero
    834c:	3c0e0000 	lui	t6,0x0
    8350:	91ce0000 	lbu	t6,0(t6)
    8354:	3c180000 	lui	t8,0x0
    8358:	27180000 	addiu	t8,t8,0
    835c:	000e78c0 	sll	t7,t6,0x3
    8360:	01ee7823 	subu	t7,t7,t6
    8364:	01f81821 	addu	v1,t7,t8
    8368:	03c01025 	move	v0,s8
    836c:	0070c821 	addu	t9,v1,s0
    8370:	93280000 	lbu	t0,0(t9)
    8374:	26100001 	addiu	s0,s0,1
    8378:	321000ff 	andi	s0,s0,0xff
    837c:	0202082a 	slt	at,s0,v0
    8380:	02288821 	addu	s1,s1,t0
    8384:	1420fff9 	bnez	at,836c <func_800F4C58+0x74>
    8388:	323100ff 	andi	s1,s1,0xff
    838c:	00008025 	move	s0,zero
    8390:	3c090000 	lui	t1,0x0
    8394:	91290000 	lbu	t1,0(t1)
    8398:	3c0b0000 	lui	t3,0x0
    839c:	256b0000 	addiu	t3,t3,0
    83a0:	000950c0 	sll	t2,t1,0x3
    83a4:	01495023 	subu	t2,t2,t1
    83a8:	014b1821 	addu	v1,t2,t3
    83ac:	00776021 	addu	t4,v1,s7
    83b0:	918d0000 	lbu	t5,0(t4)
    83b4:	00177080 	sll	t6,s7,0x2
    83b8:	01d77023 	subu	t6,t6,s7
    83bc:	19a0002e 	blez	t5,8478 <func_800F4C58+0x180>
    83c0:	000e70c0 	sll	t6,t6,0x3
    83c4:	3c0f0000 	lui	t7,0x0
    83c8:	25ef0000 	addiu	t7,t7,0
    83cc:	3c130000 	lui	s3,0x0
    83d0:	26730000 	addiu	s3,s3,0
    83d4:	01cfb021 	addu	s6,t6,t7
    83d8:	3c150602 	lui	s5,0x602
    83dc:	24140030 	li	s4,48
    83e0:	241200ff 	li	s2,255
    83e4:	0010c0c0 	sll	t8,s0,0x3
    83e8:	02d8c821 	addu	t9,s6,t8
    83ec:	93220004 	lbu	v0,4(t9)
    83f0:	5242001a 	beql	s2,v0,845c <func_800F4C58+0x164>
    83f4:	007e4821 	addu	t1,v1,s8
    83f8:	00540019 	multu	v0,s4
    83fc:	00174080 	sll	t0,s7,0x2
    8400:	02684821 	addu	t1,s3,t0
    8404:	8d2a0000 	lw	t2,0(t1)
    8408:	322e00ff 	andi	t6,s1,0xff
    840c:	000e7a00 	sll	t7,t6,0x8
    8410:	01f52025 	or	a0,t7,s5
    8414:	34840006 	ori	a0,a0,0x6
    8418:	83a5005b 	lb	a1,91(sp)
    841c:	00005812 	mflo	t3
    8420:	014b6021 	addu	t4,t2,t3
    8424:	958d0028 	lhu	t5,40(t4)
    8428:	54ed000c 	bnel	a3,t5,845c <func_800F4C58+0x164>
    842c:	007e4821 	addu	t1,v1,s8
    8430:	0c000000 	jal	0 <func_800EC960>
    8434:	afa70048 	sw	a3,72(sp)
    8438:	3c180000 	lui	t8,0x0
    843c:	93180000 	lbu	t8,0(t8)
    8440:	3c080000 	lui	t0,0x0
    8444:	25080000 	addiu	t0,t0,0
    8448:	0018c8c0 	sll	t9,t8,0x3
    844c:	0338c823 	subu	t9,t9,t8
    8450:	03281821 	addu	v1,t9,t0
    8454:	8fa70048 	lw	a3,72(sp)
    8458:	007e4821 	addu	t1,v1,s8
    845c:	912a0000 	lbu	t2,0(t1)
    8460:	26100001 	addiu	s0,s0,1
    8464:	321000ff 	andi	s0,s0,0xff
    8468:	26310001 	addiu	s1,s1,1
    846c:	020a082a 	slt	at,s0,t2
    8470:	1420ffdc 	bnez	at,83e4 <func_800F4C58+0xec>
    8474:	323100ff 	andi	s1,s1,0xff
    8478:	3c070000 	lui	a3,0x0
    847c:	3c0b0000 	lui	t3,0x0
    8480:	24e70000 	addiu	a3,a3,0
    8484:	256b0000 	addiu	t3,t3,0
    8488:	afab0014 	sw	t3,20(sp)
    848c:	afa70010 	sw	a3,16(sp)
    8490:	97a40056 	lhu	a0,86(sp)
    8494:	8fa50050 	lw	a1,80(sp)
    8498:	0c000000 	jal	0 <func_800EC960>
    849c:	24060004 	li	a2,4
    84a0:	8fbf0044 	lw	ra,68(sp)
    84a4:	8fb00020 	lw	s0,32(sp)
    84a8:	8fb10024 	lw	s1,36(sp)
    84ac:	8fb20028 	lw	s2,40(sp)
    84b0:	8fb3002c 	lw	s3,44(sp)
    84b4:	8fb40030 	lw	s4,48(sp)
    84b8:	8fb50034 	lw	s5,52(sp)
    84bc:	8fb60038 	lw	s6,56(sp)
    84c0:	8fb7003c 	lw	s7,60(sp)
    84c4:	8fbe0040 	lw	s8,64(sp)
    84c8:	03e00008 	jr	ra
    84cc:	27bd0050 	addiu	sp,sp,80

000084d0 <func_800F4E30>:
    84d0:	27bdffc0 	addiu	sp,sp,-64
    84d4:	3c030000 	lui	v1,0x0
    84d8:	24630000 	addiu	v1,v1,0
    84dc:	8c620000 	lw	v0,0(v1)
    84e0:	44856000 	mtc1	a1,$f12
    84e4:	afbf003c 	sw	ra,60(sp)
    84e8:	afb40038 	sw	s4,56(sp)
    84ec:	afb30034 	sw	s3,52(sp)
    84f0:	afb20030 	sw	s2,48(sp)
    84f4:	afb1002c 	sw	s1,44(sp)
    84f8:	afb00028 	sw	s0,40(sp)
    84fc:	f7b60020 	sdc1	$f22,32(sp)
    8500:	14400008 	bnez	v0,8524 <func_800F4E30+0x54>
    8504:	f7b40018 	sdc1	$f20,24(sp)
    8508:	3c050000 	lui	a1,0x0
    850c:	24a50000 	addiu	a1,a1,0
    8510:	e4ac0000 	swc1	$f12,0(a1)
    8514:	ac640000 	sw	a0,0(v1)
    8518:	c4a00000 	lwc1	$f0,0(a1)
    851c:	10000012 	b	8568 <func_800F4E30+0x98>
    8520:	00801025 	move	v0,a0
    8524:	1082000c 	beq	a0,v0,8558 <func_800F4E30+0x88>
    8528:	3c050000 	lui	a1,0x0
    852c:	24a50000 	addiu	a1,a1,0
    8530:	c4a00000 	lwc1	$f0,0(a1)
    8534:	4600603c 	c.lt.s	$f12,$f0
    8538:	00000000 	nop
    853c:	4502000b 	bc1fl	856c <func_800F4E30+0x9c>
    8540:	3c0142c8 	lui	at,0x42c8
    8544:	e4ac0000 	swc1	$f12,0(a1)
    8548:	ac640000 	sw	a0,0(v1)
    854c:	c4a00000 	lwc1	$f0,0(a1)
    8550:	10000005 	b	8568 <func_800F4E30+0x98>
    8554:	00801025 	move	v0,a0
    8558:	3c050000 	lui	a1,0x0
    855c:	24a50000 	addiu	a1,a1,0
    8560:	e4ac0000 	swc1	$f12,0(a1)
    8564:	c4a00000 	lwc1	$f0,0(a1)
    8568:	3c0142c8 	lui	at,0x42c8
    856c:	44817000 	mtc1	at,$f14
    8570:	c4420000 	lwc1	$f2,0(v0)
    8574:	00001025 	move	v0,zero
    8578:	00008025 	move	s0,zero
    857c:	4602703c 	c.lt.s	$f14,$f2
    8580:	3c130300 	lui	s3,0x300
    8584:	3c126002 	lui	s2,0x6002
    8588:	45020004 	bc1fl	859c <func_800F4E30+0xcc>
    858c:	3c01c2c8 	lui	at,0xc2c8
    8590:	10000015 	b	85e8 <func_800F4E30+0x118>
    8594:	2414007f 	li	s4,127
    8598:	3c01c2c8 	lui	at,0xc2c8
    859c:	44812000 	mtc1	at,$f4
    85a0:	00000000 	nop
    85a4:	4604103c 	c.lt.s	$f2,$f4
    85a8:	00000000 	nop
    85ac:	45020004 	bc1fl	85c0 <func_800F4E30+0xf0>
    85b0:	460e1183 	div.s	$f6,$f2,$f14
    85b4:	1000000c 	b	85e8 <func_800F4E30+0x118>
    85b8:	0000a025 	move	s4,zero
    85bc:	460e1183 	div.s	$f6,$f2,$f14
    85c0:	3c014280 	lui	at,0x4280
    85c4:	44816000 	mtc1	at,$f12
    85c8:	00000000 	nop
    85cc:	460c3202 	mul.s	$f8,$f6,$f12
    85d0:	460c4280 	add.s	$f10,$f8,$f12
    85d4:	4600540d 	trunc.w.s	$f16,$f10
    85d8:	44148000 	mfc1	s4,$f16
    85dc:	00000000 	nop
    85e0:	0014a600 	sll	s4,s4,0x18
    85e4:	0014a603 	sra	s4,s4,0x18
    85e8:	3c0143c8 	lui	at,0x43c8
    85ec:	44819000 	mtc1	at,$f18
    85f0:	00000000 	nop
    85f4:	4600903c 	c.lt.s	$f18,$f0
    85f8:	00000000 	nop
    85fc:	45000003 	bc1f	860c <func_800F4E30+0x13c>
    8600:	3c010000 	lui	at,0x0
    8604:	10000018 	b	8668 <func_800F4E30+0x198>
    8608:	c4360000 	lwc1	$f22,0(at)
    860c:	3c0142f0 	lui	at,0x42f0
    8610:	44811000 	mtc1	at,$f2
    8614:	3c01438c 	lui	at,0x438c
    8618:	4602003c 	c.lt.s	$f0,$f2
    861c:	00000000 	nop
    8620:	45020006 	bc1fl	863c <func_800F4E30+0x16c>
    8624:	46020101 	sub.s	$f4,$f0,$f2
    8628:	3c013f80 	lui	at,0x3f80
    862c:	4481b000 	mtc1	at,$f22
    8630:	1000000e 	b	866c <func_800F4E30+0x19c>
    8634:	3c0142fe 	lui	at,0x42fe
    8638:	46020101 	sub.s	$f4,$f0,$f2
    863c:	44813000 	mtc1	at,$f6
    8640:	3c013f80 	lui	at,0x3f80
    8644:	44815000 	mtc1	at,$f10
    8648:	46062203 	div.s	$f8,$f4,$f6
    864c:	3c010000 	lui	at,0x0
    8650:	c4320000 	lwc1	$f18,0(at)
    8654:	3c010000 	lui	at,0x0
    8658:	c4260000 	lwc1	$f6,0(at)
    865c:	46085401 	sub.s	$f16,$f10,$f8
    8660:	46128102 	mul.s	$f4,$f16,$f18
    8664:	46062580 	add.s	$f22,$f4,$f6
    8668:	3c0142fe 	lui	at,0x42fe
    866c:	4481a000 	mtc1	at,$f20
    8670:	24110009 	li	s1,9
    8674:	5222002f 	beql	s1,v0,8734 <func_800F4E30+0x264>
    8678:	26100001 	addiu	s0,s0,1
    867c:	4616a282 	mul.s	$f10,$f20,$f22
    8680:	24080001 	li	t0,1
    8684:	00027a00 	sll	t7,v0,0x8
    8688:	01f2c025 	or	t8,t7,s2
    868c:	3c014f00 	lui	at,0x4f00
    8690:	4459f800 	cfc1	t9,$31
    8694:	44c8f800 	ctc1	t0,$31
    8698:	00000000 	nop
    869c:	46005224 	cvt.w.s	$f8,$f10
    86a0:	4448f800 	cfc1	t0,$31
    86a4:	00000000 	nop
    86a8:	31080078 	andi	t0,t0,0x78
    86ac:	51000013 	beqzl	t0,86fc <func_800F4E30+0x22c>
    86b0:	44084000 	mfc1	t0,$f8
    86b4:	44814000 	mtc1	at,$f8
    86b8:	24080001 	li	t0,1
    86bc:	46085201 	sub.s	$f8,$f10,$f8
    86c0:	44c8f800 	ctc1	t0,$31
    86c4:	00000000 	nop
    86c8:	46004224 	cvt.w.s	$f8,$f8
    86cc:	4448f800 	cfc1	t0,$31
    86d0:	00000000 	nop
    86d4:	31080078 	andi	t0,t0,0x78
    86d8:	15000005 	bnez	t0,86f0 <func_800F4E30+0x220>
    86dc:	00000000 	nop
    86e0:	44084000 	mfc1	t0,$f8
    86e4:	3c018000 	lui	at,0x8000
    86e8:	10000007 	b	8708 <func_800F4E30+0x238>
    86ec:	01014025 	or	t0,t0,at
    86f0:	10000005 	b	8708 <func_800F4E30+0x238>
    86f4:	2408ffff 	li	t0,-1
    86f8:	44084000 	mfc1	t0,$f8
    86fc:	00000000 	nop
    8700:	0500fffb 	bltz	t0,86f0 <func_800F4E30+0x220>
    8704:	00000000 	nop
    8708:	44d9f800 	ctc1	t9,$31
    870c:	310900ff 	andi	t1,t0,0xff
    8710:	0c000000 	jal	0 <func_800EC960>
    8714:	03092025 	or	a0,t8,t1
    8718:	320a00ff 	andi	t2,s0,0xff
    871c:	000a5a00 	sll	t3,t2,0x8
    8720:	00142e00 	sll	a1,s4,0x18
    8724:	00052e03 	sra	a1,a1,0x18
    8728:	0c000000 	jal	0 <func_800EC960>
    872c:	01732025 	or	a0,t3,s3
    8730:	26100001 	addiu	s0,s0,1
    8734:	321000ff 	andi	s0,s0,0xff
    8738:	2a010010 	slti	at,s0,16
    873c:	1420ffcd 	bnez	at,8674 <func_800F4E30+0x1a4>
    8740:	02001025 	move	v0,s0
    8744:	8fbf003c 	lw	ra,60(sp)
    8748:	d7b40018 	ldc1	$f20,24(sp)
    874c:	d7b60020 	ldc1	$f22,32(sp)
    8750:	8fb00028 	lw	s0,40(sp)
    8754:	8fb1002c 	lw	s1,44(sp)
    8758:	8fb20030 	lw	s2,48(sp)
    875c:	8fb30034 	lw	s3,52(sp)
    8760:	8fb40038 	lw	s4,56(sp)
    8764:	03e00008 	jr	ra
    8768:	27bd0040 	addiu	sp,sp,64

0000876c <func_800F50CC>:
    876c:	3c020000 	lui	v0,0x0
    8770:	24420000 	addiu	v0,v0,0
    8774:	8c4e0000 	lw	t6,0(v0)
    8778:	11c00002 	beqz	t6,8784 <func_800F50CC+0x18>
    877c:	00000000 	nop
    8780:	ac400000 	sw	zero,0(v0)
    8784:	03e00008 	jr	ra
    8788:	00000000 	nop

0000878c <func_800F50EC>:
    878c:	3c020000 	lui	v0,0x0
    8790:	24420000 	addiu	v0,v0,0
    8794:	8c4e0000 	lw	t6,0(v0)
    8798:	148e0002 	bne	a0,t6,87a4 <func_800F50EC+0x18>
    879c:	00000000 	nop
    87a0:	ac400000 	sw	zero,0(v0)
    87a4:	03e00008 	jr	ra
    87a8:	00000000 	nop

000087ac <func_800F510C>:
    87ac:	27bdffb8 	addiu	sp,sp,-72
    87b0:	3c0e0000 	lui	t6,0x0
    87b4:	95ce0000 	lhu	t6,0(t6)
    87b8:	afb1001c 	sw	s1,28(sp)
    87bc:	00048e00 	sll	s1,a0,0x18
    87c0:	afbf002c 	sw	ra,44(sp)
    87c4:	afa40048 	sw	a0,72(sp)
    87c8:	00118e03 	sra	s1,s1,0x18
    87cc:	afb40028 	sw	s4,40(sp)
    87d0:	afb30024 	sw	s3,36(sp)
    87d4:	afb20020 	sw	s2,32(sp)
    87d8:	afb00018 	sw	s0,24(sp)
    87dc:	24040001 	li	a0,1
    87e0:	0c000000 	jal	0 <func_800EC960>
    87e4:	a7ae0040 	sh	t6,64(sp)
    87e8:	3401ffff 	li	at,0xffff
    87ec:	5441004d 	bnel	v0,at,8924 <func_800F510C+0x178>
    87f0:	8fbf002c 	lw	ra,44(sp)
    87f4:	0c000000 	jal	0 <func_800EC960>
    87f8:	24040003 	li	a0,3
    87fc:	2401002f 	li	at,47
    8800:	10410047 	beq	v0,at,8920 <func_800F510C+0x174>
    8804:	00008025 	move	s0,zero
    8808:	00001025 	move	v0,zero
    880c:	2414007f 	li	s4,127
    8810:	2413000a 	li	s3,10
    8814:	3c12a000 	lui	s2,0xa000
    8818:	14400003 	bnez	v0,8828 <func_800F510C+0x7c>
    881c:	00002825 	move	a1,zero
    8820:	10000003 	b	8830 <func_800F510C+0x84>
    8824:	322300ff 	andi	v1,s1,0xff
    8828:	02911823 	subu	v1,s4,s1
    882c:	306300ff 	andi	v1,v1,0xff
    8830:	28610065 	slti	at,v1,101
    8834:	14200003 	bnez	at,8844 <func_800F510C+0x98>
    8838:	00601025 	move	v0,v1
    883c:	10000013 	b	888c <func_800F510C+0xe0>
    8840:	2406000b 	li	a2,11
    8844:	28410014 	slti	at,v0,20
    8848:	10200003 	beqz	at,8858 <func_800F510C+0xac>
    884c:	244fffec 	addiu	t7,v0,-20
    8850:	1000000e 	b	888c <func_800F510C+0xe0>
    8854:	24060002 	li	a2,2
    8858:	01f3001a 	div	zero,t7,s3
    885c:	00003012 	mflo	a2
    8860:	24c60002 	addiu	a2,a2,2
    8864:	30c600ff 	andi	a2,a2,0xff
    8868:	16600002 	bnez	s3,8874 <func_800F510C+0xc8>
    886c:	00000000 	nop
    8870:	0007000d 	break	0x7
    8874:	2401ffff 	li	at,-1
    8878:	16610004 	bne	s3,at,888c <func_800F510C+0xe0>
    887c:	3c018000 	lui	at,0x8000
    8880:	15e10002 	bne	t7,at,888c <func_800F510C+0xe0>
    8884:	00000000 	nop
    8888:	0006000d 	break	0x6
    888c:	03b03821 	addu	a3,sp,s0
    8890:	90e70040 	lbu	a3,64(a3)
    8894:	3c190000 	lui	t9,0x0
    8898:	27390000 	addiu	t9,t9,0
    889c:	0007c080 	sll	t8,a3,0x2
    88a0:	0307c023 	subu	t8,t8,a3
    88a4:	0018c080 	sll	t8,t8,0x2
    88a8:	0307c023 	subu	t8,t8,a3
    88ac:	0018c140 	sll	t8,t8,0x5
    88b0:	03191821 	addu	v1,t8,t9
    88b4:	00001025 	move	v0,zero
    88b8:	00c02025 	move	a0,a2
    88bc:	00024080 	sll	t0,v0,0x2
    88c0:	00684821 	addu	t1,v1,t0
    88c4:	8d2a3568 	lw	t2,13672(t1)
    88c8:	240c0001 	li	t4,1
    88cc:	004c6804 	sllv	t5,t4,v0
    88d0:	914b0005 	lbu	t3,5(t2)
    88d4:	0164082a 	slt	at,t3,a0
    88d8:	50200004 	beqzl	at,88ec <func_800F510C+0x140>
    88dc:	24420001 	addiu	v0,v0,1
    88e0:	00ad2821 	addu	a1,a1,t5
    88e4:	30a5ffff 	andi	a1,a1,0xffff
    88e8:	24420001 	addiu	v0,v0,1
    88ec:	304200ff 	andi	v0,v0,0xff
    88f0:	28410010 	slti	at,v0,16
    88f4:	5420fff2 	bnezl	at,88c0 <func_800F510C+0x114>
    88f8:	00024080 	sll	t0,v0,0x2
    88fc:	00077600 	sll	t6,a3,0x18
    8900:	01d27825 	or	t7,t6,s2
    8904:	0c000000 	jal	0 <func_800EC960>
    8908:	01e52025 	or	a0,t7,a1
    890c:	26100001 	addiu	s0,s0,1
    8910:	321000ff 	andi	s0,s0,0xff
    8914:	2a010002 	slti	at,s0,2
    8918:	1420ffbf 	bnez	at,8818 <func_800F510C+0x6c>
    891c:	02001025 	move	v0,s0
    8920:	8fbf002c 	lw	ra,44(sp)
    8924:	8fb00018 	lw	s0,24(sp)
    8928:	8fb1001c 	lw	s1,28(sp)
    892c:	8fb20020 	lw	s2,32(sp)
    8930:	8fb30024 	lw	s3,36(sp)
    8934:	8fb40028 	lw	s4,40(sp)
    8938:	03e00008 	jr	ra
    893c:	27bd0048 	addiu	sp,sp,72

00008940 <func_800F52A0>:
    8940:	3c030000 	lui	v1,0x0
    8944:	24630000 	addiu	v1,v1,0
    8948:	90620000 	lbu	v0,0(v1)
    894c:	27bdffc8 	addiu	sp,sp,-56
    8950:	afbf001c 	sw	ra,28(sp)
    8954:	afa40038 	sw	a0,56(sp)
    8958:	afa5003c 	sw	a1,60(sp)
    895c:	10400004 	beqz	v0,8970 <func_800F52A0+0x30>
    8960:	afa60040 	sw	a2,64(sp)
    8964:	244effff 	addiu	t6,v0,-1
    8968:	1000008a 	b	8b94 <func_800F52A0+0x254>
    896c:	a06e0000 	sb	t6,0(v1)
    8970:	8faf0038 	lw	t7,56(sp)
    8974:	3c030000 	lui	v1,0x0
    8978:	24630000 	addiu	v1,v1,0
    897c:	c5e20008 	lwc1	$f2,8(t7)
    8980:	c5ec0000 	lwc1	$f12,0(t7)
    8984:	8c620000 	lw	v0,0(v1)
    8988:	46021102 	mul.s	$f4,$f2,$f2
    898c:	00000000 	nop
    8990:	460c6182 	mul.s	$f6,$f12,$f12
    8994:	46062000 	add.s	$f0,$f4,$f6
    8998:	1440000c 	bnez	v0,89cc <func_800F52A0+0x8c>
    899c:	46000384 	sqrt.s	$f14,$f0
    89a0:	24180002 	li	t8,2
    89a4:	ac6f0000 	sw	t7,0(v1)
    89a8:	afb80010 	sw	t8,16(sp)
    89ac:	24040003 	li	a0,3
    89b0:	97a5003e 	lhu	a1,62(sp)
    89b4:	00003025 	move	a2,zero
    89b8:	24070007 	li	a3,7
    89bc:	0c000000 	jal	0 <func_800EC960>
    89c0:	e7ae0030 	swc1	$f14,48(sp)
    89c4:	10000010 	b	8a08 <func_800F52A0+0xc8>
    89c8:	c7ae0030 	lwc1	$f14,48(sp)
    89cc:	c4420008 	lwc1	$f2,8(v0)
    89d0:	c44c0000 	lwc1	$f12,0(v0)
    89d4:	8fb90038 	lw	t9,56(sp)
    89d8:	46021202 	mul.s	$f8,$f2,$f2
    89dc:	00000000 	nop
    89e0:	460c6282 	mul.s	$f10,$f12,$f12
    89e4:	460a4000 	add.s	$f0,$f8,$f10
    89e8:	46000004 	sqrt.s	$f0,$f0
    89ec:	4600703c 	c.lt.s	$f14,$f0
    89f0:	00000000 	nop
    89f4:	45000003 	bc1f	8a04 <func_800F52A0+0xc4>
    89f8:	00000000 	nop
    89fc:	10000002 	b	8a08 <func_800F52A0+0xc8>
    8a00:	ac790000 	sw	t9,0(v1)
    8a04:	46000386 	mov.s	$f14,$f0
    8a08:	8fa80038 	lw	t0,56(sp)
    8a0c:	44808000 	mtc1	zero,$f16
    8a10:	97a90042 	lhu	t1,66(sp)
    8a14:	c5000004 	lwc1	$f0,4(t0)
    8a18:	97ab003e 	lhu	t3,62(sp)
    8a1c:	44899000 	mtc1	t1,$f18
    8a20:	4610003c 	c.lt.s	$f0,$f16
    8a24:	00000000 	nop
    8a28:	45020004 	bc1fl	8a3c <func_800F52A0+0xfc>
    8a2c:	46000086 	mov.s	$f2,$f0
    8a30:	10000002 	b	8a3c <func_800F52A0+0xfc>
    8a34:	46000087 	neg.s	$f2,$f0
    8a38:	46000086 	mov.s	$f2,$f0
    8a3c:	05210005 	bgez	t1,8a54 <func_800F52A0+0x114>
    8a40:	46809020 	cvt.s.w	$f0,$f18
    8a44:	3c014f80 	lui	at,0x4f80
    8a48:	44812000 	mtc1	at,$f4
    8a4c:	00000000 	nop
    8a50:	46040000 	add.s	$f0,$f0,$f4
    8a54:	3c014170 	lui	at,0x4170
    8a58:	44813000 	mtc1	at,$f6
    8a5c:	00000000 	nop
    8a60:	46060203 	div.s	$f8,$f0,$f6
    8a64:	4602403c 	c.lt.s	$f8,$f2
    8a68:	00000000 	nop
    8a6c:	45020004 	bc1fl	8a80 <func_800F52A0+0x140>
    8a70:	4600703c 	c.lt.s	$f14,$f0
    8a74:	10000033 	b	8b44 <func_800F52A0+0x204>
    8a78:	00003025 	move	a2,zero
    8a7c:	4600703c 	c.lt.s	$f14,$f0
    8a80:	00003025 	move	a2,zero
    8a84:	4500002f 	bc1f	8b44 <func_800F52A0+0x204>
    8a88:	00000000 	nop
    8a8c:	46007403 	div.s	$f16,$f14,$f0
    8a90:	3c013f80 	lui	at,0x3f80
    8a94:	44815000 	mtc1	at,$f10
    8a98:	3c0142fe 	lui	at,0x42fe
    8a9c:	44812000 	mtc1	at,$f4
    8aa0:	24060001 	li	a2,1
    8aa4:	3c014f00 	lui	at,0x4f00
    8aa8:	46105481 	sub.s	$f18,$f10,$f16
    8aac:	46049182 	mul.s	$f6,$f18,$f4
    8ab0:	444af800 	cfc1	t2,$31
    8ab4:	44c6f800 	ctc1	a2,$31
    8ab8:	00000000 	nop
    8abc:	46003224 	cvt.w.s	$f8,$f6
    8ac0:	4446f800 	cfc1	a2,$31
    8ac4:	00000000 	nop
    8ac8:	30c60078 	andi	a2,a2,0x78
    8acc:	50c00017 	beqzl	a2,8b2c <func_800F52A0+0x1ec>
    8ad0:	44064000 	mfc1	a2,$f8
    8ad4:	44814000 	mtc1	at,$f8
    8ad8:	24060001 	li	a2,1
    8adc:	46083201 	sub.s	$f8,$f6,$f8
    8ae0:	44c6f800 	ctc1	a2,$31
    8ae4:	00000000 	nop
    8ae8:	46004224 	cvt.w.s	$f8,$f8
    8aec:	4446f800 	cfc1	a2,$31
    8af0:	00000000 	nop
    8af4:	30c60078 	andi	a2,a2,0x78
    8af8:	54c00008 	bnezl	a2,8b1c <func_800F52A0+0x1dc>
    8afc:	2406ffff 	li	a2,-1
    8b00:	44064000 	mfc1	a2,$f8
    8b04:	3c018000 	lui	at,0x8000
    8b08:	44caf800 	ctc1	t2,$31
    8b0c:	00c13025 	or	a2,a2,at
    8b10:	1000000c 	b	8b44 <func_800F52A0+0x204>
    8b14:	30c600ff 	andi	a2,a2,0xff
    8b18:	2406ffff 	li	a2,-1
    8b1c:	44caf800 	ctc1	t2,$31
    8b20:	10000008 	b	8b44 <func_800F52A0+0x204>
    8b24:	30c600ff 	andi	a2,a2,0xff
    8b28:	44064000 	mfc1	a2,$f8
    8b2c:	00000000 	nop
    8b30:	04c2fffa 	bltzl	a2,8b1c <func_800F52A0+0x1dc>
    8b34:	2406ffff 	li	a2,-1
    8b38:	44caf800 	ctc1	t2,$31
    8b3c:	10000001 	b	8b44 <func_800F52A0+0x204>
    8b40:	30c600ff 	andi	a2,a2,0xff
    8b44:	24010028 	li	at,40
    8b48:	11610005 	beq	t3,at,8b60 <func_800F52A0+0x220>
    8b4c:	00062600 	sll	a0,a2,0x18
    8b50:	00042603 	sra	a0,a0,0x18
    8b54:	0c000000 	jal	0 <func_800EC960>
    8b58:	a3a6002f 	sb	a2,47(sp)
    8b5c:	93a6002f 	lbu	a2,47(sp)
    8b60:	24040003 	li	a0,3
    8b64:	24050003 	li	a1,3
    8b68:	00003825 	move	a3,zero
    8b6c:	0c000000 	jal	0 <func_800EC960>
    8b70:	afa60024 	sw	a2,36(sp)
    8b74:	8fac0024 	lw	t4,36(sp)
    8b78:	240d007f 	li	t5,127
    8b7c:	00002025 	move	a0,zero
    8b80:	01ac3023 	subu	a2,t5,t4
    8b84:	30c600ff 	andi	a2,a2,0xff
    8b88:	24050003 	li	a1,3
    8b8c:	0c000000 	jal	0 <func_800EC960>
    8b90:	00003825 	move	a3,zero
    8b94:	8fbf001c 	lw	ra,28(sp)
    8b98:	27bd0038 	addiu	sp,sp,56
    8b9c:	03e00008 	jr	ra
    8ba0:	00000000 	nop

00008ba4 <func_800F5504>:
    8ba4:	3c010000 	lui	at,0x0
    8ba8:	03e00008 	jr	ra
    8bac:	ac200000 	sw	zero,0(at)

00008bb0 <func_800F5510>:
    8bb0:	27bdffe0 	addiu	sp,sp,-32
    8bb4:	afbf001c 	sw	ra,28(sp)
    8bb8:	afa40020 	sw	a0,32(sp)
    8bbc:	0c000000 	jal	0 <func_800EC960>
    8bc0:	97a40022 	lhu	a0,34(sp)
    8bc4:	240e0001 	li	t6,1
    8bc8:	afae0010 	sw	t6,16(sp)
    8bcc:	00002025 	move	a0,zero
    8bd0:	97a50022 	lhu	a1,34(sp)
    8bd4:	00003025 	move	a2,zero
    8bd8:	0c000000 	jal	0 <func_800EC960>
    8bdc:	00003825 	move	a3,zero
    8be0:	8fbf001c 	lw	ra,28(sp)
    8be4:	27bd0020 	addiu	sp,sp,32
    8be8:	03e00008 	jr	ra
    8bec:	00000000 	nop

00008bf0 <func_800F5550>:
    8bf0:	27bdffd8 	addiu	sp,sp,-40
    8bf4:	afbf001c 	sw	ra,28(sp)
    8bf8:	afa40028 	sw	a0,40(sp)
    8bfc:	a3a00027 	sb	zero,39(sp)
    8c00:	0c000000 	jal	0 <func_800EC960>
    8c04:	00002025 	move	a0,zero
    8c08:	2401004c 	li	at,76
    8c0c:	5041004b 	beql	v0,at,8d3c <func_800F5550+0x14c>
    8c10:	8fbf001c 	lw	ra,28(sp)
    8c14:	0c000000 	jal	0 <func_800EC960>
    8c18:	24040003 	li	a0,3
    8c1c:	2401002f 	li	at,47
    8c20:	14410006 	bne	v0,at,8c3c <func_800F5550+0x4c>
    8c24:	24040003 	li	a0,3
    8c28:	0c000000 	jal	0 <func_800EC960>
    8c2c:	00002825 	move	a1,zero
    8c30:	3c04f800 	lui	a0,0xf800
    8c34:	0c000000 	jal	0 <func_800EC960>
    8c38:	00002825 	move	a1,zero
    8c3c:	3c0e0000 	lui	t6,0x0
    8c40:	91ce0000 	lbu	t6,0(t6)
    8c44:	3c080000 	lui	t0,0x0
    8c48:	25080000 	addiu	t0,t0,0
    8c4c:	010e7821 	addu	t7,t0,t6
    8c50:	91f80000 	lbu	t8,0(t7)
    8c54:	97a5002a 	lhu	a1,42(sp)
    8c58:	00002025 	move	a0,zero
    8c5c:	33190020 	andi	t9,t8,0x20
    8c60:	13200018 	beqz	t9,8cc4 <func_800F5550+0xd4>
    8c64:	30a300ff 	andi	v1,a1,0xff
    8c68:	306900ff 	andi	t1,v1,0xff
    8c6c:	01095021 	addu	t2,t0,t1
    8c70:	914b0000 	lbu	t3,0(t2)
    8c74:	3c020000 	lui	v0,0x0
    8c78:	24070007 	li	a3,7
    8c7c:	316c0010 	andi	t4,t3,0x10
    8c80:	51800011 	beqzl	t4,8cc8 <func_800F5550+0xd8>
    8c84:	97a5002a 	lhu	a1,42(sp)
    8c88:	90420000 	lbu	v0,0(v0)
    8c8c:	240e001e 	li	t6,30
    8c90:	00002025 	move	a0,zero
    8c94:	304d003f 	andi	t5,v0,0x3f
    8c98:	51a00003 	beqzl	t5,8ca8 <func_800F5550+0xb8>
    8c9c:	93a60027 	lbu	a2,39(sp)
    8ca0:	a3ae0027 	sb	t6,39(sp)
    8ca4:	93a60027 	lbu	a2,39(sp)
    8ca8:	afa20010 	sw	v0,16(sp)
    8cac:	0c000000 	jal	0 <func_800EC960>
    8cb0:	afa30020 	sw	v1,32(sp)
    8cb4:	3c010000 	lui	at,0x0
    8cb8:	8fa30020 	lw	v1,32(sp)
    8cbc:	1000001c 	b	8d30 <func_800F5550+0x140>
    8cc0:	a0200000 	sb	zero,0(at)
    8cc4:	97a5002a 	lhu	a1,42(sp)
    8cc8:	240200ff 	li	v0,255
    8ccc:	00003025 	move	a2,zero
    8cd0:	30a300ff 	andi	v1,a1,0xff
    8cd4:	306f00ff 	andi	t7,v1,0xff
    8cd8:	010fc021 	addu	t8,t0,t7
    8cdc:	93190000 	lbu	t9,0(t8)
    8ce0:	24070007 	li	a3,7
    8ce4:	33290040 	andi	t1,t9,0x40
    8ce8:	11200003 	beqz	t1,8cf8 <func_800F5550+0x108>
    8cec:	00000000 	nop
    8cf0:	10000001 	b	8cf8 <func_800F5550+0x108>
    8cf4:	24020001 	li	v0,1
    8cf8:	afa20010 	sw	v0,16(sp)
    8cfc:	0c000000 	jal	0 <func_800EC960>
    8d00:	afa30020 	sw	v1,32(sp)
    8d04:	97aa002a 	lhu	t2,42(sp)
    8d08:	3c080000 	lui	t0,0x0
    8d0c:	25080000 	addiu	t0,t0,0
    8d10:	010a5821 	addu	t3,t0,t2
    8d14:	916c0000 	lbu	t4,0(t3)
    8d18:	8fa30020 	lw	v1,32(sp)
    8d1c:	240e00c0 	li	t6,192
    8d20:	318d0020 	andi	t5,t4,0x20
    8d24:	15a00002 	bnez	t5,8d30 <func_800F5550+0x140>
    8d28:	3c010000 	lui	at,0x0
    8d2c:	a02e0000 	sb	t6,0(at)
    8d30:	3c010000 	lui	at,0x0
    8d34:	a0230000 	sb	v1,0(at)
    8d38:	8fbf001c 	lw	ra,28(sp)
    8d3c:	27bd0028 	addiu	sp,sp,40
    8d40:	03e00008 	jr	ra
    8d44:	00000000 	nop

00008d48 <func_800F56A8>:
    8d48:	27bdffe8 	addiu	sp,sp,-24
    8d4c:	afbf0014 	sw	ra,20(sp)
    8d50:	0c000000 	jal	0 <func_800EC960>
    8d54:	00002025 	move	a0,zero
    8d58:	3401ffff 	li	at,0xffff
    8d5c:	10410012 	beq	v0,at,8da8 <func_800F56A8+0x60>
    8d60:	304f00ff 	andi	t7,v0,0xff
    8d64:	3c180000 	lui	t8,0x0
    8d68:	030fc021 	addu	t8,t8,t7
    8d6c:	93180000 	lbu	t8,0(t8)
    8d70:	3c020000 	lui	v0,0x0
    8d74:	24420000 	addiu	v0,v0,0
    8d78:	33190010 	andi	t9,t8,0x10
    8d7c:	5320000b 	beqzl	t9,8dac <func_800F56A8+0x64>
    8d80:	8fbf0014 	lw	ra,20(sp)
    8d84:	90480000 	lbu	t0,0(v0)
    8d88:	240100c0 	li	at,192
    8d8c:	3c090000 	lui	t1,0x0
    8d90:	51010005 	beql	t0,at,8da8 <func_800F56A8+0x60>
    8d94:	a0400000 	sb	zero,0(v0)
    8d98:	8129368b 	lb	t1,13963(t1)
    8d9c:	10000002 	b	8da8 <func_800F56A8+0x60>
    8da0:	a0490000 	sb	t1,0(v0)
    8da4:	a0400000 	sb	zero,0(v0)
    8da8:	8fbf0014 	lw	ra,20(sp)
    8dac:	27bd0018 	addiu	sp,sp,24
    8db0:	03e00008 	jr	ra
    8db4:	00000000 	nop

00008db8 <func_800F5718>:
    8db8:	27bdffe8 	addiu	sp,sp,-24
    8dbc:	afbf0014 	sw	ra,20(sp)
    8dc0:	0c000000 	jal	0 <func_800EC960>
    8dc4:	00002025 	move	a0,zero
    8dc8:	2401004c 	li	at,76
    8dcc:	50410004 	beql	v0,at,8de0 <func_800F5718+0x28>
    8dd0:	8fbf0014 	lw	ra,20(sp)
    8dd4:	0c000000 	jal	0 <func_800EC960>
    8dd8:	2404004c 	li	a0,76
    8ddc:	8fbf0014 	lw	ra,20(sp)
    8de0:	27bd0018 	addiu	sp,sp,24
    8de4:	03e00008 	jr	ra
    8de8:	00000000 	nop

00008dec <func_800F574C>:
    8dec:	3c013f80 	lui	at,0x3f80
    8df0:	44812000 	mtc1	at,$f4
    8df4:	27bdffd8 	addiu	sp,sp,-40
    8df8:	afa5002c 	sw	a1,44(sp)
    8dfc:	46046032 	c.eq.s	$f12,$f4
    8e00:	30a600ff 	andi	a2,a1,0xff
    8e04:	afbf0014 	sw	ra,20(sp)
    8e08:	00c02825 	move	a1,a2
    8e0c:	45000035 	bc1f	8ee4 <func_800F574C+0xf8>
    8e10:	3c0142c8 	lui	at,0x42c8
    8e14:	3c01b000 	lui	at,0xb000
    8e18:	34214000 	ori	at,at,0x4000
    8e1c:	00062400 	sll	a0,a2,0x10
    8e20:	00812025 	or	a0,a0,at
    8e24:	afa60024 	sw	a2,36(sp)
    8e28:	0c000000 	jal	0 <func_800EC960>
    8e2c:	e7ac0028 	swc1	$f12,40(sp)
    8e30:	3c0142c8 	lui	at,0x42c8
    8e34:	44813000 	mtc1	at,$f6
    8e38:	c7ac0028 	lwc1	$f12,40(sp)
    8e3c:	24030001 	li	v1,1
    8e40:	8fa50024 	lw	a1,36(sp)
    8e44:	46066202 	mul.s	$f8,$f12,$f6
    8e48:	3c014f00 	lui	at,0x4f00
    8e4c:	00051200 	sll	v0,a1,0x8
    8e50:	444ef800 	cfc1	t6,$31
    8e54:	44c3f800 	ctc1	v1,$31
    8e58:	00000000 	nop
    8e5c:	460042a4 	cvt.w.s	$f10,$f8
    8e60:	4443f800 	cfc1	v1,$31
    8e64:	00000000 	nop
    8e68:	30630078 	andi	v1,v1,0x78
    8e6c:	50600017 	beqzl	v1,8ecc <func_800F574C+0xe0>
    8e70:	44035000 	mfc1	v1,$f10
    8e74:	44815000 	mtc1	at,$f10
    8e78:	24030001 	li	v1,1
    8e7c:	460a4281 	sub.s	$f10,$f8,$f10
    8e80:	44c3f800 	ctc1	v1,$31
    8e84:	00000000 	nop
    8e88:	460052a4 	cvt.w.s	$f10,$f10
    8e8c:	4443f800 	cfc1	v1,$31
    8e90:	00000000 	nop
    8e94:	30630078 	andi	v1,v1,0x78
    8e98:	54600008 	bnezl	v1,8ebc <func_800F574C+0xd0>
    8e9c:	2403ffff 	li	v1,-1
    8ea0:	44035000 	mfc1	v1,$f10
    8ea4:	3c018000 	lui	at,0x8000
    8ea8:	44cef800 	ctc1	t6,$31
    8eac:	00611825 	or	v1,v1,at
    8eb0:	10000039 	b	8f98 <func_800F574C+0x1ac>
    8eb4:	306300ff 	andi	v1,v1,0xff
    8eb8:	2403ffff 	li	v1,-1
    8ebc:	44cef800 	ctc1	t6,$31
    8ec0:	10000035 	b	8f98 <func_800F574C+0x1ac>
    8ec4:	306300ff 	andi	v1,v1,0xff
    8ec8:	44035000 	mfc1	v1,$f10
    8ecc:	00000000 	nop
    8ed0:	0462fffa 	bltzl	v1,8ebc <func_800F574C+0xd0>
    8ed4:	2403ffff 	li	v1,-1
    8ed8:	44cef800 	ctc1	t6,$31
    8edc:	1000002e 	b	8f98 <func_800F574C+0x1ac>
    8ee0:	306300ff 	andi	v1,v1,0xff
    8ee4:	44818000 	mtc1	at,$f16
    8ee8:	24030001 	li	v1,1
    8eec:	3c014f00 	lui	at,0x4f00
    8ef0:	46106482 	mul.s	$f18,$f12,$f16
    8ef4:	00061200 	sll	v0,a2,0x8
    8ef8:	444ff800 	cfc1	t7,$31
    8efc:	44c3f800 	ctc1	v1,$31
    8f00:	00000000 	nop
    8f04:	46009124 	cvt.w.s	$f4,$f18
    8f08:	4443f800 	cfc1	v1,$31
    8f0c:	00000000 	nop
    8f10:	30630078 	andi	v1,v1,0x78
    8f14:	50600013 	beqzl	v1,8f64 <func_800F574C+0x178>
    8f18:	44032000 	mfc1	v1,$f4
    8f1c:	44812000 	mtc1	at,$f4
    8f20:	24030001 	li	v1,1
    8f24:	46049101 	sub.s	$f4,$f18,$f4
    8f28:	44c3f800 	ctc1	v1,$31
    8f2c:	00000000 	nop
    8f30:	46002124 	cvt.w.s	$f4,$f4
    8f34:	4443f800 	cfc1	v1,$31
    8f38:	00000000 	nop
    8f3c:	30630078 	andi	v1,v1,0x78
    8f40:	14600005 	bnez	v1,8f58 <func_800F574C+0x16c>
    8f44:	00000000 	nop
    8f48:	44032000 	mfc1	v1,$f4
    8f4c:	3c018000 	lui	at,0x8000
    8f50:	10000007 	b	8f70 <func_800F574C+0x184>
    8f54:	00611825 	or	v1,v1,at
    8f58:	10000005 	b	8f70 <func_800F574C+0x184>
    8f5c:	2403ffff 	li	v1,-1
    8f60:	44032000 	mfc1	v1,$f4
    8f64:	00000000 	nop
    8f68:	0460fffb 	bltz	v1,8f58 <func_800F574C+0x16c>
    8f6c:	00000000 	nop
    8f70:	3c01c130 	lui	at,0xc130
    8f74:	0041c025 	or	t8,v0,at
    8f78:	44cff800 	ctc1	t7,$31
    8f7c:	306300ff 	andi	v1,v1,0xff
    8f80:	03032025 	or	a0,t8,v1
    8f84:	afa3001c 	sw	v1,28(sp)
    8f88:	0c000000 	jal	0 <func_800EC960>
    8f8c:	afa20020 	sw	v0,32(sp)
    8f90:	8fa20020 	lw	v0,32(sp)
    8f94:	8fa3001c 	lw	v1,28(sp)
    8f98:	3c01c1a0 	lui	at,0xc1a0
    8f9c:	0041c825 	or	t9,v0,at
    8fa0:	0c000000 	jal	0 <func_800EC960>
    8fa4:	03232025 	or	a0,t9,v1
    8fa8:	8fbf0014 	lw	ra,20(sp)
    8fac:	27bd0028 	addiu	sp,sp,40
    8fb0:	03e00008 	jr	ra
    8fb4:	00000000 	nop

00008fb8 <func_800F5918>:
    8fb8:	27bdffe8 	addiu	sp,sp,-24
    8fbc:	afbf0014 	sw	ra,20(sp)
    8fc0:	0c000000 	jal	0 <func_800EC960>
    8fc4:	00002025 	move	a0,zero
    8fc8:	2401006c 	li	at,108
    8fcc:	14410007 	bne	v0,at,8fec <func_800F5918+0x34>
    8fd0:	00002025 	move	a0,zero
    8fd4:	0c000000 	jal	0 <func_800EC960>
    8fd8:	3c05f000 	lui	a1,0xf000
    8fdc:	10400003 	beqz	v0,8fec <func_800F5918+0x34>
    8fe0:	3c04b005 	lui	a0,0xb005
    8fe4:	0c000000 	jal	0 <func_800EC960>
    8fe8:	348400d2 	ori	a0,a0,0xd2
    8fec:	8fbf0014 	lw	ra,20(sp)
    8ff0:	27bd0018 	addiu	sp,sp,24
    8ff4:	03e00008 	jr	ra
    8ff8:	00000000 	nop

00008ffc <func_800F595C>:
    8ffc:	3085ffff 	andi	a1,a0,0xffff
    9000:	30af00ff 	andi	t7,a1,0xff
    9004:	3c030000 	lui	v1,0x0
    9008:	006f1821 	addu	v1,v1,t7
    900c:	90630000 	lbu	v1,0(v1)
    9010:	27bdffe0 	addiu	sp,sp,-32
    9014:	afbf001c 	sw	ra,28(sp)
    9018:	30780002 	andi	t8,v1,0x2
    901c:	afa40020 	sw	a0,32(sp)
    9020:	13000005 	beqz	t8,9038 <func_800F595C+0x3c>
    9024:	00a01025 	move	v0,a1
    9028:	0c000000 	jal	0 <func_800EC960>
    902c:	30a4ffff 	andi	a0,a1,0xffff
    9030:	10000012 	b	907c <func_800F595C+0x80>
    9034:	8fbf001c 	lw	ra,28(sp)
    9038:	30790004 	andi	t9,v1,0x4
    903c:	13200006 	beqz	t9,9058 <func_800F595C+0x5c>
    9040:	00002025 	move	a0,zero
    9044:	3c010100 	lui	at,0x100
    9048:	0c000000 	jal	0 <func_800EC960>
    904c:	00412025 	or	a0,v0,at
    9050:	1000000a 	b	907c <func_800F595C+0x80>
    9054:	8fbf001c 	lw	ra,28(sp)
    9058:	2408ffff 	li	t0,-1
    905c:	afa80010 	sw	t0,16(sp)
    9060:	00003025 	move	a2,zero
    9064:	0c000000 	jal	0 <func_800EC960>
    9068:	24070007 	li	a3,7
    906c:	3c041100 	lui	a0,0x1100
    9070:	0c000000 	jal	0 <func_800EC960>
    9074:	348400ff 	ori	a0,a0,0xff
    9078:	8fbf001c 	lw	ra,28(sp)
    907c:	27bd0020 	addiu	sp,sp,32
    9080:	03e00008 	jr	ra
    9084:	00000000 	nop

00009088 <func_800F59E8>:
    9088:	308f00ff 	andi	t7,a0,0xff
    908c:	3c020000 	lui	v0,0x0
    9090:	004f1021 	addu	v0,v0,t7
    9094:	90420000 	lbu	v0,0(v0)
    9098:	27bdffe8 	addiu	sp,sp,-24
    909c:	afbf0014 	sw	ra,20(sp)
    90a0:	30580002 	andi	t8,v0,0x2
    90a4:	13000006 	beqz	t8,90c0 <func_800F59E8+0x38>
    90a8:	afa40018 	sw	a0,24(sp)
    90ac:	3c041100 	lui	a0,0x1100
    90b0:	0c000000 	jal	0 <func_800EC960>
    90b4:	348400ff 	ori	a0,a0,0xff
    90b8:	1000000c 	b	90ec <func_800F59E8+0x64>
    90bc:	8fbf0014 	lw	ra,20(sp)
    90c0:	30590004 	andi	t9,v0,0x4
    90c4:	13200006 	beqz	t9,90e0 <func_800F59E8+0x58>
    90c8:	3c041000 	lui	a0,0x1000
    90cc:	3c041100 	lui	a0,0x1100
    90d0:	0c000000 	jal	0 <func_800EC960>
    90d4:	348400ff 	ori	a0,a0,0xff
    90d8:	10000004 	b	90ec <func_800F59E8+0x64>
    90dc:	8fbf0014 	lw	ra,20(sp)
    90e0:	0c000000 	jal	0 <func_800EC960>
    90e4:	348400ff 	ori	a0,a0,0xff
    90e8:	8fbf0014 	lw	ra,20(sp)
    90ec:	27bd0018 	addiu	sp,sp,24
    90f0:	03e00008 	jr	ra
    90f4:	00000000 	nop

000090f8 <func_800F5A58>:
    90f8:	308300ff 	andi	v1,a0,0xff
    90fc:	306e00ff 	andi	t6,v1,0xff
    9100:	3c020000 	lui	v0,0x0
    9104:	004e1021 	addu	v0,v0,t6
    9108:	90420000 	lbu	v0,0(v0)
    910c:	27bdffe0 	addiu	sp,sp,-32
    9110:	afbf0014 	sw	ra,20(sp)
    9114:	304f0002 	andi	t7,v0,0x2
    9118:	afa40020 	sw	a0,32(sp)
    911c:	11e00003 	beqz	t7,912c <func_800F5A58+0x34>
    9120:	00002825 	move	a1,zero
    9124:	10000005 	b	913c <func_800F5A58+0x44>
    9128:	24050001 	li	a1,1
    912c:	30580004 	andi	t8,v0,0x4
    9130:	53000003 	beqzl	t8,9140 <func_800F5A58+0x48>
    9134:	30a400ff 	andi	a0,a1,0xff
    9138:	24050001 	li	a1,1
    913c:	30a400ff 	andi	a0,a1,0xff
    9140:	0c000000 	jal	0 <func_800EC960>
    9144:	afa30018 	sw	v1,24(sp)
    9148:	8fa30018 	lw	v1,24(sp)
    914c:	305900ff 	andi	t9,v0,0xff
    9150:	00001025 	move	v0,zero
    9154:	14790003 	bne	v1,t9,9164 <func_800F5A58+0x6c>
    9158:	8fbf0014 	lw	ra,20(sp)
    915c:	10000001 	b	9164 <func_800F5A58+0x6c>
    9160:	24020001 	li	v0,1
    9164:	03e00008 	jr	ra
    9168:	27bd0020 	addiu	sp,sp,32

0000916c <func_800F5ACC>:
    916c:	27bdffd8 	addiu	sp,sp,-40
    9170:	afbf0014 	sw	ra,20(sp)
    9174:	afa40028 	sw	a0,40(sp)
    9178:	0c000000 	jal	0 <func_800EC960>
    917c:	00002025 	move	a0,zero
    9180:	304400ff 	andi	a0,v0,0xff
    9184:	2401002e 	li	at,46
    9188:	10810017 	beq	a0,at,91e8 <func_800F5ACC+0x7c>
    918c:	3045ffff 	andi	a1,v0,0xffff
    9190:	24010062 	li	at,98
    9194:	10810014 	beq	a0,at,91e8 <func_800F5ACC+0x7c>
    9198:	97a6002a 	lhu	a2,42(sp)
    919c:	10c20012 	beq	a2,v0,91e8 <func_800F5ACC+0x7c>
    91a0:	24040003 	li	a0,3
    91a4:	a7a50026 	sh	a1,38(sp)
    91a8:	0c000000 	jal	0 <func_800EC960>
    91ac:	afa6001c 	sw	a2,28(sp)
    91b0:	97a50026 	lhu	a1,38(sp)
    91b4:	3401ffff 	li	at,0xffff
    91b8:	8fa6001c 	lw	a2,28(sp)
    91bc:	10a10004 	beq	a1,at,91d0 <func_800F5ACC+0x64>
    91c0:	3c040000 	lui	a0,0x0
    91c4:	3c010000 	lui	at,0x0
    91c8:	10000005 	b	91e0 <func_800F5ACC+0x74>
    91cc:	a4250000 	sh	a1,0(at)
    91d0:	24840000 	addiu	a0,a0,0
    91d4:	0c000000 	jal	0 <func_800EC960>
    91d8:	afa6001c 	sw	a2,28(sp)
    91dc:	8fa6001c 	lw	a2,28(sp)
    91e0:	0c000000 	jal	0 <func_800EC960>
    91e4:	00c02025 	move	a0,a2
    91e8:	8fbf0014 	lw	ra,20(sp)
    91ec:	27bd0028 	addiu	sp,sp,40
    91f0:	03e00008 	jr	ra
    91f4:	00000000 	nop

000091f8 <func_800F5B58>:
    91f8:	27bdffe8 	addiu	sp,sp,-24
    91fc:	afbf0014 	sw	ra,20(sp)
    9200:	0c000000 	jal	0 <func_800EC960>
    9204:	00002025 	move	a0,zero
    9208:	3403ffff 	li	v1,0xffff
    920c:	1062001c 	beq	v1,v0,9280 <func_800F5B58+0x88>
    9210:	3c0e0000 	lui	t6,0x0
    9214:	95ce0000 	lhu	t6,0(t6)
    9218:	506e001a 	beql	v1,t6,9284 <func_800F5B58+0x8c>
    921c:	8fbf0014 	lw	ra,20(sp)
    9220:	0c000000 	jal	0 <func_800EC960>
    9224:	00002025 	move	a0,zero
    9228:	304f00ff 	andi	t7,v0,0xff
    922c:	3c180000 	lui	t8,0x0
    9230:	030fc021 	addu	t8,t8,t7
    9234:	93180000 	lbu	t8,0(t8)
    9238:	3403ffff 	li	v1,0xffff
    923c:	3c020000 	lui	v0,0x0
    9240:	33190008 	andi	t9,t8,0x8
    9244:	5320000f 	beqzl	t9,9284 <func_800F5B58+0x8c>
    9248:	8fbf0014 	lw	ra,20(sp)
    924c:	94420000 	lhu	v0,0(v0)
    9250:	3c041000 	lui	a0,0x1000
    9254:	14620005 	bne	v1,v0,926c <func_800F5B58+0x74>
    9258:	00000000 	nop
    925c:	0c000000 	jal	0 <func_800EC960>
    9260:	348400ff 	ori	a0,a0,0xff
    9264:	10000004 	b	9278 <func_800F5B58+0x80>
    9268:	3408ffff 	li	t0,0xffff
    926c:	0c000000 	jal	0 <func_800EC960>
    9270:	00402025 	move	a0,v0
    9274:	3408ffff 	li	t0,0xffff
    9278:	3c010000 	lui	at,0x0
    927c:	a4280000 	sh	t0,0(at)
    9280:	8fbf0014 	lw	ra,20(sp)
    9284:	27bd0018 	addiu	sp,sp,24
    9288:	03e00008 	jr	ra
    928c:	00000000 	nop

00009290 <func_800F5BF0>:
    9290:	27bdffe8 	addiu	sp,sp,-24
    9294:	afbf0014 	sw	ra,20(sp)
    9298:	afa40018 	sw	a0,24(sp)
    929c:	0c000000 	jal	0 <func_800EC960>
    92a0:	00002025 	move	a0,zero
    92a4:	24010001 	li	at,1
    92a8:	10410002 	beq	v0,at,92b4 <func_800F5BF0+0x24>
    92ac:	3c010000 	lui	at,0x0
    92b0:	a4220000 	sh	v0,0(at)
    92b4:	0c000000 	jal	0 <func_800EC960>
    92b8:	93a4001b 	lbu	a0,27(sp)
    92bc:	8fbf0014 	lw	ra,20(sp)
    92c0:	27bd0018 	addiu	sp,sp,24
    92c4:	03e00008 	jr	ra
    92c8:	00000000 	nop

000092cc <func_800F5C2C>:
    92cc:	3c020000 	lui	v0,0x0
    92d0:	94420000 	lhu	v0,0(v0)
    92d4:	27bdffe8 	addiu	sp,sp,-24
    92d8:	3401ffff 	li	at,0xffff
    92dc:	10410003 	beq	v0,at,92ec <func_800F5C2C+0x20>
    92e0:	afbf0014 	sw	ra,20(sp)
    92e4:	0c000000 	jal	0 <func_800EC960>
    92e8:	00402025 	move	a0,v0
    92ec:	8fbf0014 	lw	ra,20(sp)
    92f0:	340effff 	li	t6,0xffff
    92f4:	3c010000 	lui	at,0x0
    92f8:	a42e0000 	sh	t6,0(at)
    92fc:	03e00008 	jr	ra
    9300:	27bd0018 	addiu	sp,sp,24

00009304 <func_800F5C64>:
    9304:	27bdffd8 	addiu	sp,sp,-40
    9308:	afbf0014 	sw	ra,20(sp)
    930c:	afa40028 	sw	a0,40(sp)
    9310:	0c000000 	jal	0 <func_800EC960>
    9314:	24040001 	li	a0,1
    9318:	a7a20026 	sh	v0,38(sp)
    931c:	304400ff 	andi	a0,v0,0xff
    9320:	0c000000 	jal	0 <func_800EC960>
    9324:	27a50020 	addiu	a1,sp,32
    9328:	97a4002a 	lhu	a0,42(sp)
    932c:	afa2001c 	sw	v0,28(sp)
    9330:	27a50020 	addiu	a1,sp,32
    9334:	0c000000 	jal	0 <func_800EC960>
    9338:	308400ff 	andi	a0,a0,0xff
    933c:	97ae0026 	lhu	t6,38(sp)
    9340:	3401ffff 	li	at,0xffff
    9344:	8faf001c 	lw	t7,28(sp)
    9348:	11c10007 	beq	t6,at,9368 <func_800F5C64+0x64>
    934c:	24080001 	li	t0,1
    9350:	91f80000 	lbu	t8,0(t7)
    9354:	90590000 	lbu	t9,0(v0)
    9358:	24090005 	li	t1,5
    935c:	3c010000 	lui	at,0x0
    9360:	17190004 	bne	t8,t9,9374 <func_800F5C64+0x70>
    9364:	3c041100 	lui	a0,0x1100
    9368:	3c010000 	lui	at,0x0
    936c:	10000004 	b	9380 <func_800F5C64+0x7c>
    9370:	a0280000 	sb	t0,0(at)
    9374:	a0290000 	sb	t1,0(at)
    9378:	0c000000 	jal	0 <func_800EC960>
    937c:	348400ff 	ori	a0,a0,0xff
    9380:	8fbf0014 	lw	ra,20(sp)
    9384:	97aa002a 	lhu	t2,42(sp)
    9388:	3c010000 	lui	at,0x0
    938c:	27bd0028 	addiu	sp,sp,40
    9390:	03e00008 	jr	ra
    9394:	a42a0000 	sh	t2,0(at)

00009398 <func_800F5CF8>:
    9398:	3c030000 	lui	v1,0x0
    939c:	24630000 	addiu	v1,v1,0
    93a0:	90620000 	lbu	v0,0(v1)
    93a4:	27bdffd8 	addiu	sp,sp,-40
    93a8:	afbf0014 	sw	ra,20(sp)
    93ac:	1040003e 	beqz	v0,94a8 <func_800F5CF8+0x110>
    93b0:	244effff 	addiu	t6,v0,-1
    93b4:	31cf00ff 	andi	t7,t6,0xff
    93b8:	15e0003b 	bnez	t7,94a8 <func_800F5CF8+0x110>
    93bc:	a06e0000 	sb	t6,0(v1)
    93c0:	3c04e300 	lui	a0,0xe300
    93c4:	0c000000 	jal	0 <func_800EC960>
    93c8:	00002825 	move	a1,zero
    93cc:	3c04e300 	lui	a0,0xe300
    93d0:	0c000000 	jal	0 <func_800EC960>
    93d4:	24050001 	li	a1,1
    93d8:	0c000000 	jal	0 <func_800EC960>
    93dc:	00002025 	move	a0,zero
    93e0:	0c000000 	jal	0 <func_800EC960>
    93e4:	24040001 	li	a0,1
    93e8:	a7a20026 	sh	v0,38(sp)
    93ec:	0c000000 	jal	0 <func_800EC960>
    93f0:	24040003 	li	a0,3
    93f4:	97b80026 	lhu	t8,38(sp)
    93f8:	3401ffff 	li	at,0xffff
    93fc:	a7a20022 	sh	v0,34(sp)
    9400:	17010018 	bne	t8,at,9464 <func_800F5CF8+0xcc>
    9404:	00002025 	move	a0,zero
    9408:	24050001 	li	a1,1
    940c:	00003025 	move	a2,zero
    9410:	0c000000 	jal	0 <func_800EC960>
    9414:	24070005 	li	a3,5
    9418:	24040003 	li	a0,3
    941c:	24050001 	li	a1,1
    9420:	00003025 	move	a2,zero
    9424:	0c000000 	jal	0 <func_800EC960>
    9428:	24070005 	li	a3,5
    942c:	3c04c180 	lui	a0,0xc180
    9430:	0c000000 	jal	0 <func_800EC960>
    9434:	3484010a 	ori	a0,a0,0x10a
    9438:	3c04c183 	lui	a0,0xc183
    943c:	0c000000 	jal	0 <func_800EC960>
    9440:	3484010a 	ori	a0,a0,0x10a
    9444:	0c000000 	jal	0 <func_800EC960>
    9448:	3c04c190 	lui	a0,0xc190
    944c:	97b90022 	lhu	t9,34(sp)
    9450:	2401002f 	li	at,47
    9454:	13210003 	beq	t9,at,9464 <func_800F5CF8+0xcc>
    9458:	00000000 	nop
    945c:	0c000000 	jal	0 <func_800EC960>
    9460:	3c04c193 	lui	a0,0xc193
    9464:	3c040000 	lui	a0,0x0
    9468:	94840000 	lhu	a0,0(a0)
    946c:	97a80022 	lhu	t0,34(sp)
    9470:	3c010101 	lui	at,0x101
    9474:	00812025 	or	a0,a0,at
    9478:	0c000000 	jal	0 <func_800EC960>
    947c:	afa8001c 	sw	t0,28(sp)
    9480:	3c04a000 	lui	a0,0xa000
    9484:	0c000000 	jal	0 <func_800EC960>
    9488:	3484ffff 	ori	a0,a0,0xffff
    948c:	8fa9001c 	lw	t1,28(sp)
    9490:	2401002f 	li	at,47
    9494:	3c04a300 	lui	a0,0xa300
    9498:	51210004 	beql	t1,at,94ac <func_800F5CF8+0x114>
    949c:	8fbf0014 	lw	ra,20(sp)
    94a0:	0c000000 	jal	0 <func_800EC960>
    94a4:	3484ffff 	ori	a0,a0,0xffff
    94a8:	8fbf0014 	lw	ra,20(sp)
    94ac:	27bd0028 	addiu	sp,sp,40
    94b0:	03e00008 	jr	ra
    94b4:	00000000 	nop

000094b8 <func_800F5E18>:
    94b8:	27bdffe0 	addiu	sp,sp,-32
    94bc:	afa40020 	sw	a0,32(sp)
    94c0:	93a20023 	lbu	v0,35(sp)
    94c4:	afa7002c 	sw	a3,44(sp)
    94c8:	00073e00 	sll	a3,a3,0x18
    94cc:	00073e03 	sra	a3,a3,0x18
    94d0:	30ef00ff 	andi	t7,a3,0xff
    94d4:	3c017000 	lui	at,0x7000
    94d8:	00021600 	sll	v0,v0,0x18
    94dc:	93a80033 	lbu	t0,51(sp)
    94e0:	00417025 	or	t6,v0,at
    94e4:	000fc400 	sll	t8,t7,0x10
    94e8:	afbf0014 	sw	ra,20(sp)
    94ec:	01d8c825 	or	t9,t6,t8
    94f0:	afa50024 	sw	a1,36(sp)
    94f4:	afa60028 	sw	a2,40(sp)
    94f8:	afa2001c 	sw	v0,28(sp)
    94fc:	0c000000 	jal	0 <func_800EC960>
    9500:	03282025 	or	a0,t9,t0
    9504:	93a9002b 	lbu	t1,43(sp)
    9508:	8fa2001c 	lw	v0,28(sp)
    950c:	97ac0026 	lhu	t4,38(sp)
    9510:	00095400 	sll	t2,t1,0x10
    9514:	004a5825 	or	t3,v0,t2
    9518:	0c000000 	jal	0 <func_800EC960>
    951c:	016c2025 	or	a0,t3,t4
    9520:	8fbf0014 	lw	ra,20(sp)
    9524:	27bd0020 	addiu	sp,sp,32
    9528:	03e00008 	jr	ra
    952c:	00000000 	nop

00009530 <func_800F5E90>:
    9530:	3c0e0000 	lui	t6,0x0
    9534:	95ce0000 	lhu	t6,0(t6)
    9538:	308500ff 	andi	a1,a0,0xff
    953c:	3c010000 	lui	at,0x0
    9540:	a0250000 	sb	a1,0(at)
    9544:	27bdffd0 	addiu	sp,sp,-48
    9548:	3401ffff 	li	at,0xffff
    954c:	afbf0014 	sw	ra,20(sp)
    9550:	15c10094 	bne	t6,at,97a4 <func_800F5E90+0x274>
    9554:	afa40030 	sw	a0,48(sp)
    9558:	3c0f0000 	lui	t7,0x0
    955c:	81ef0000 	lb	t7,0(t7)
    9560:	3c020000 	lui	v0,0x0
    9564:	24040003 	li	a0,3
    9568:	11e00002 	beqz	t7,9574 <func_800F5E90+0x44>
    956c:	00000000 	nop
    9570:	24050003 	li	a1,3
    9574:	94420000 	lhu	v0,0(v0)
    9578:	24030002 	li	v1,2
    957c:	1462000a 	bne	v1,v0,95a8 <func_800F5E90+0x78>
    9580:	00405025 	move	t2,v0
    9584:	a3a50033 	sb	a1,51(sp)
    9588:	0c000000 	jal	0 <func_800EC960>
    958c:	afa20024 	sw	v0,36(sp)
    9590:	2401081a 	li	at,2074
    9594:	24030002 	li	v1,2
    9598:	93a50033 	lbu	a1,51(sp)
    959c:	14410002 	bne	v0,at,95a8 <func_800F5E90+0x78>
    95a0:	8faa0024 	lw	t2,36(sp)
    95a4:	24050003 	li	a1,3
    95a8:	3401ffff 	li	at,0xffff
    95ac:	1141000e 	beq	t2,at,95e8 <func_800F5E90+0xb8>
    95b0:	315900ff 	andi	t9,t2,0xff
    95b4:	3c0d0000 	lui	t5,0x0
    95b8:	01b96821 	addu	t5,t5,t9
    95bc:	91ad0000 	lbu	t5,0(t5)
    95c0:	3c0c0000 	lui	t4,0x0
    95c4:	258c0000 	addiu	t4,t4,0
    95c8:	31ae0001 	andi	t6,t5,0x1
    95cc:	15c00006 	bnez	t6,95e8 <func_800F5E90+0xb8>
    95d0:	00000000 	nop
    95d4:	91820000 	lbu	v0,0(t4)
    95d8:	240b0001 	li	t3,1
    95dc:	304f007f 	andi	t7,v0,0x7f
    95e0:	156f004a 	bne	t3,t7,970c <func_800F5E90+0x1dc>
    95e4:	00000000 	nop
    95e8:	3c0c0000 	lui	t4,0x0
    95ec:	258c0000 	addiu	t4,t4,0
    95f0:	91820000 	lbu	v0,0(t4)
    95f4:	240b0001 	li	t3,1
    95f8:	00a04825 	move	t1,a1
    95fc:	3042007f 	andi	v0,v0,0x7f
    9600:	50450069 	beql	v0,a1,97a8 <func_800F5E90+0x278>
    9604:	8fbf0014 	lw	ra,20(sp)
    9608:	15650028 	bne	t3,a1,96ac <func_800F5E90+0x17c>
    960c:	3c030000 	lui	v1,0x0
    9610:	3c180000 	lui	t8,0x0
    9614:	93180000 	lbu	t8,0(t8)
    9618:	80630000 	lb	v1,0(v1)
    961c:	24040003 	li	a0,3
    9620:	24050003 	li	a1,3
    9624:	03031023 	subu	v0,t8,v1
    9628:	04410003 	bgez	v0,9638 <func_800F5E90+0x108>
    962c:	306600ff 	andi	a2,v1,0xff
    9630:	10000002 	b	963c <func_800F5E90+0x10c>
    9634:	00024023 	negu	t0,v0
    9638:	00404025 	move	t0,v0
    963c:	310700ff 	andi	a3,t0,0xff
    9640:	afa9001c 	sw	t1,28(sp)
    9644:	0c000000 	jal	0 <func_800EC960>
    9648:	afaa0024 	sw	t2,36(sp)
    964c:	3c04030a 	lui	a0,0x30a
    9650:	0c000000 	jal	0 <func_800EC960>
    9654:	3484081a 	ori	a0,a0,0x81a
    9658:	8faa0024 	lw	t2,36(sp)
    965c:	24010001 	li	at,1
    9660:	8fa9001c 	lw	t1,28(sp)
    9664:	1141000e 	beq	t2,at,96a0 <func_800F5E90+0x170>
    9668:	00002025 	move	a0,zero
    966c:	3c190000 	lui	t9,0x0
    9670:	83390000 	lb	t9,0(t9)
    9674:	240d007f 	li	t5,127
    9678:	24050003 	li	a1,3
    967c:	01b93023 	subu	a2,t5,t9
    9680:	30c600ff 	andi	a2,a2,0xff
    9684:	2407000a 	li	a3,10
    9688:	0c000000 	jal	0 <func_800EC960>
    968c:	afa9001c 	sw	t1,28(sp)
    9690:	3c040000 	lui	a0,0x0
    9694:	0c000000 	jal	0 <func_800EC960>
    9698:	80840000 	lb	a0,0(a0)
    969c:	8fa9001c 	lw	t1,28(sp)
    96a0:	3c0c0000 	lui	t4,0x0
    96a4:	10000016 	b	9700 <func_800F5E90+0x1d0>
    96a8:	258c0000 	addiu	t4,t4,0
    96ac:	15620014 	bne	t3,v0,9700 <func_800F5E90+0x1d0>
    96b0:	3c04130a 	lui	a0,0x130a
    96b4:	348400ff 	ori	a0,a0,0xff
    96b8:	0c000000 	jal	0 <func_800EC960>
    96bc:	afa9001c 	sw	t1,28(sp)
    96c0:	8fa9001c 	lw	t1,28(sp)
    96c4:	24010003 	li	at,3
    96c8:	00002025 	move	a0,zero
    96cc:	15210003 	bne	t1,at,96dc <func_800F5E90+0x1ac>
    96d0:	24050003 	li	a1,3
    96d4:	10000002 	b	96e0 <func_800F5E90+0x1b0>
    96d8:	00003825 	move	a3,zero
    96dc:	2407000a 	li	a3,10
    96e0:	2406007f 	li	a2,127
    96e4:	0c000000 	jal	0 <func_800EC960>
    96e8:	afa9001c 	sw	t1,28(sp)
    96ec:	0c000000 	jal	0 <func_800EC960>
    96f0:	00002025 	move	a0,zero
    96f4:	3c0c0000 	lui	t4,0x0
    96f8:	258c0000 	addiu	t4,t4,0
    96fc:	8fa9001c 	lw	t1,28(sp)
    9700:	252e0080 	addiu	t6,t1,128
    9704:	10000027 	b	97a4 <func_800F5E90+0x274>
    9708:	a18e0000 	sb	t6,0(t4)
    970c:	14a0000e 	bnez	a1,9748 <func_800F5E90+0x218>
    9710:	00a04825 	move	t1,a1
    9714:	14620003 	bne	v1,v0,9724 <func_800F5E90+0x1f4>
    9718:	3c040000 	lui	a0,0x0
    971c:	24840000 	addiu	a0,a0,0
    9720:	ac800000 	sw	zero,0(a0)
    9724:	3c040000 	lui	a0,0x0
    9728:	24840000 	addiu	a0,a0,0
    972c:	8c8f0000 	lw	t7,0(a0)
    9730:	3c020000 	lui	v0,0x0
    9734:	24420000 	addiu	v0,v0,0
    9738:	25f80001 	addiu	t8,t7,1
    973c:	ac400000 	sw	zero,0(v0)
    9740:	10000008 	b	9764 <func_800F5E90+0x234>
    9744:	ac980000 	sw	t8,0(a0)
    9748:	3c020000 	lui	v0,0x0
    974c:	24420000 	addiu	v0,v0,0
    9750:	8c4d0000 	lw	t5,0(v0)
    9754:	3c040000 	lui	a0,0x0
    9758:	24840000 	addiu	a0,a0,0
    975c:	25b90001 	addiu	t9,t5,1
    9760:	ac590000 	sw	t9,0(v0)
    9764:	5469000c 	bnel	v1,t1,9798 <func_800F5E90+0x268>
    9768:	3c017002 	lui	at,0x7002
    976c:	8c4e0000 	lw	t6,0(v0)
    9770:	2dc1001e 	sltiu	at,t6,30
    9774:	50200008 	beqzl	at,9798 <func_800F5E90+0x268>
    9778:	3c017002 	lui	at,0x7002
    977c:	8c8f0000 	lw	t7,0(a0)
    9780:	2de10015 	sltiu	at,t7,21
    9784:	54200004 	bnezl	at,9798 <func_800F5E90+0x268>
    9788:	3c017002 	lui	at,0x7002
    978c:	00002825 	move	a1,zero
    9790:	00004825 	move	t1,zero
    9794:	3c017002 	lui	at,0x7002
    9798:	a1850000 	sb	a1,0(t4)
    979c:	0c000000 	jal	0 <func_800EC960>
    97a0:	01212025 	or	a0,t1,at
    97a4:	8fbf0014 	lw	ra,20(sp)
    97a8:	27bd0030 	addiu	sp,sp,48
    97ac:	03e00008 	jr	ra
    97b0:	00000000 	nop

000097b4 <func_800F6114>:
    97b4:	3c0e0000 	lui	t6,0x0
    97b8:	91ce0000 	lbu	t6,0(t6)
    97bc:	27bdffe8 	addiu	sp,sp,-24
    97c0:	24010081 	li	at,129
    97c4:	15c1004b 	bne	t6,at,98f4 <func_800F6114+0x140>
    97c8:	afbf0014 	sw	ra,20(sp)
    97cc:	3c010000 	lui	at,0x0
    97d0:	c4240000 	lwc1	$f4,0(at)
    97d4:	3c014316 	lui	at,0x4316
    97d8:	46046032 	c.eq.s	$f12,$f4
    97dc:	00000000 	nop
    97e0:	4501003a 	bc1t	98cc <func_800F6114+0x118>
    97e4:	00000000 	nop
    97e8:	44811000 	mtc1	at,$f2
    97ec:	3c0143fa 	lui	at,0x43fa
    97f0:	4602603c 	c.lt.s	$f12,$f2
    97f4:	00000000 	nop
    97f8:	45020007 	bc1fl	9818 <func_800F6114+0x64>
    97fc:	44813000 	mtc1	at,$f6
    9800:	3c0143af 	lui	at,0x43af
    9804:	44811000 	mtc1	at,$f2
    9808:	44800000 	mtc1	zero,$f0
    980c:	1000000f 	b	984c <func_800F6114+0x98>
    9810:	46001201 	sub.s	$f8,$f2,$f0
    9814:	44813000 	mtc1	at,$f6
    9818:	3c0143af 	lui	at,0x43af
    981c:	460c303c 	c.lt.s	$f6,$f12
    9820:	00000000 	nop
    9824:	45020006 	bc1fl	9840 <func_800F6114+0x8c>
    9828:	46026001 	sub.s	$f0,$f12,$f2
    982c:	3c0143af 	lui	at,0x43af
    9830:	44811000 	mtc1	at,$f2
    9834:	10000004 	b	9848 <func_800F6114+0x94>
    9838:	46001006 	mov.s	$f0,$f2
    983c:	46026001 	sub.s	$f0,$f12,$f2
    9840:	44811000 	mtc1	at,$f2
    9844:	00000000 	nop
    9848:	46001201 	sub.s	$f8,$f2,$f0
    984c:	3c0142fe 	lui	at,0x42fe
    9850:	44815000 	mtc1	at,$f10
    9854:	3c020000 	lui	v0,0x0
    9858:	24420000 	addiu	v0,v0,0
    985c:	460a4402 	mul.s	$f16,$f8,$f10
    9860:	24040003 	li	a0,3
    9864:	24050003 	li	a1,3
    9868:	2407000a 	li	a3,10
    986c:	e7ac0018 	swc1	$f12,24(sp)
    9870:	46028483 	div.s	$f18,$f16,$f2
    9874:	4600910d 	trunc.w.s	$f4,$f18
    9878:	44182000 	mfc1	t8,$f4
    987c:	00000000 	nop
    9880:	a0580000 	sb	t8,0(v0)
    9884:	0c000000 	jal	0 <func_800EC960>
    9888:	330600ff 	andi	a2,t8,0xff
    988c:	3c190000 	lui	t9,0x0
    9890:	97390000 	lhu	t9,0(t9)
    9894:	24010001 	li	at,1
    9898:	c7ac0018 	lwc1	$f12,24(sp)
    989c:	1321000b 	beq	t9,at,98cc <func_800F6114+0x118>
    98a0:	00002025 	move	a0,zero
    98a4:	3c080000 	lui	t0,0x0
    98a8:	81080000 	lb	t0,0(t0)
    98ac:	2409007f 	li	t1,127
    98b0:	24050003 	li	a1,3
    98b4:	01283023 	subu	a2,t1,t0
    98b8:	30c600ff 	andi	a2,a2,0xff
    98bc:	2407000a 	li	a3,10
    98c0:	0c000000 	jal	0 <func_800EC960>
    98c4:	e7ac0018 	swc1	$f12,24(sp)
    98c8:	c7ac0018 	lwc1	$f12,24(sp)
    98cc:	3c0a0000 	lui	t2,0x0
    98d0:	954a0000 	lhu	t2,0(t2)
    98d4:	24010001 	li	at,1
    98d8:	3c040000 	lui	a0,0x0
    98dc:	51410006 	beql	t2,at,98f8 <func_800F6114+0x144>
    98e0:	8fbf0014 	lw	ra,20(sp)
    98e4:	80840000 	lb	a0,0(a0)
    98e8:	0c000000 	jal	0 <func_800EC960>
    98ec:	e7ac0018 	swc1	$f12,24(sp)
    98f0:	c7ac0018 	lwc1	$f12,24(sp)
    98f4:	8fbf0014 	lw	ra,20(sp)
    98f8:	3c010000 	lui	at,0x0
    98fc:	e42c0000 	swc1	$f12,0(at)
    9900:	03e00008 	jr	ra
    9904:	27bd0018 	addiu	sp,sp,24

00009908 <func_800F6268>:
    9908:	3c0f0000 	lui	t7,0x0
    990c:	91ef0000 	lbu	t7,0(t7)
    9910:	240e0001 	li	t6,1
    9914:	3c010000 	lui	at,0x0
    9918:	a02e0000 	sb	t6,0(at)
    991c:	27bdffd0 	addiu	sp,sp,-48
    9920:	3c010000 	lui	at,0x0
    9924:	afbf001c 	sw	ra,28(sp)
    9928:	afa50034 	sw	a1,52(sp)
    992c:	15e00090 	bnez	t7,9b70 <func_800F6268+0x268>
    9930:	e42c0000 	swc1	$f12,0(at)
    9934:	00002025 	move	a0,zero
    9938:	0c000000 	jal	0 <func_800EC960>
    993c:	e7ac0030 	swc1	$f12,48(sp)
    9940:	97a30036 	lhu	v1,54(sp)
    9944:	00402025 	move	a0,v0
    9948:	00042600 	sll	a0,a0,0x18
    994c:	00042603 	sra	a0,a0,0x18
    9950:	306300ff 	andi	v1,v1,0xff
    9954:	14640039 	bne	v1,a0,9a3c <func_800F6268+0x134>
    9958:	c7ac0030 	lwc1	$f12,48(sp)
    995c:	2401002f 	li	at,47
    9960:	14610034 	bne	v1,at,9a34 <func_800F6268+0x12c>
    9964:	2419007f 	li	t9,127
    9968:	3c0144fa 	lui	at,0x44fa
    996c:	44812000 	mtc1	at,$f4
    9970:	3c014348 	lui	at,0x4348
    9974:	460c203c 	c.lt.s	$f4,$f12
    9978:	00000000 	nop
    997c:	45020004 	bc1fl	9990 <func_800F6268+0x88>
    9980:	44810000 	mtc1	at,$f0
    9984:	10000014 	b	99d8 <func_800F6268+0xd0>
    9988:	2403007f 	li	v1,127
    998c:	44810000 	mtc1	at,$f0
    9990:	3c0142fe 	lui	at,0x42fe
    9994:	4600603c 	c.lt.s	$f12,$f0
    9998:	00000000 	nop
    999c:	45020004 	bc1fl	99b0 <func_800F6268+0xa8>
    99a0:	46006181 	sub.s	$f6,$f12,$f0
    99a4:	1000000c 	b	99d8 <func_800F6268+0xd0>
    99a8:	00001825 	move	v1,zero
    99ac:	46006181 	sub.s	$f6,$f12,$f0
    99b0:	44814000 	mtc1	at,$f8
    99b4:	3c0144e1 	lui	at,0x44e1
    99b8:	44818000 	mtc1	at,$f16
    99bc:	46083282 	mul.s	$f10,$f6,$f8
    99c0:	46105483 	div.s	$f18,$f10,$f16
    99c4:	4600910d 	trunc.w.s	$f4,$f18
    99c8:	44032000 	mfc1	v1,$f4
    99cc:	00000000 	nop
    99d0:	00031e00 	sll	v1,v1,0x18
    99d4:	00031e03 	sra	v1,v1,0x18
    99d8:	03231023 	subu	v0,t9,v1
    99dc:	3c016003 	lui	at,0x6003
    99e0:	00412025 	or	a0,v0,at
    99e4:	afa20028 	sw	v0,40(sp)
    99e8:	0c000000 	jal	0 <func_800EC960>
    99ec:	a3a3002e 	sb	v1,46(sp)
    99f0:	8fa20028 	lw	v0,40(sp)
    99f4:	3c016003 	lui	at,0x6003
    99f8:	34210100 	ori	at,at,0x100
    99fc:	0c000000 	jal	0 <func_800EC960>
    9a00:	00412025 	or	a0,v0,at
    9a04:	83a3002e 	lb	v1,46(sp)
    9a08:	3c016003 	lui	at,0x6003
    9a0c:	34210d00 	ori	at,at,0xd00
    9a10:	306400ff 	andi	a0,v1,0xff
    9a14:	0c000000 	jal	0 <func_800EC960>
    9a18:	00812025 	or	a0,a0,at
    9a1c:	3c030000 	lui	v1,0x0
    9a20:	24630000 	addiu	v1,v1,0
    9a24:	90620000 	lbu	v0,0(v1)
    9a28:	14400002 	bnez	v0,9a34 <func_800F6268+0x12c>
    9a2c:	24480001 	addiu	t0,v0,1
    9a30:	a0680000 	sb	t0,0(v1)
    9a34:	10000047 	b	9b54 <func_800F6268+0x24c>
    9a38:	00000000 	nop
    9a3c:	24010001 	li	at,1
    9a40:	14810044 	bne	a0,at,9b54 <func_800F6268+0x24c>
    9a44:	2401002f 	li	at,47
    9a48:	14610042 	bne	v1,at,9b54 <func_800F6268+0x24c>
    9a4c:	24040003 	li	a0,3
    9a50:	afa30024 	sw	v1,36(sp)
    9a54:	0c000000 	jal	0 <func_800EC960>
    9a58:	e7ac0030 	swc1	$f12,48(sp)
    9a5c:	8fa30024 	lw	v1,36(sp)
    9a60:	00025600 	sll	t2,v0,0x18
    9a64:	000a5e03 	sra	t3,t2,0x18
    9a68:	106b0013 	beq	v1,t3,9ab8 <func_800F6268+0x1b0>
    9a6c:	c7ac0030 	lwc1	$f12,48(sp)
    9a70:	3c0c0000 	lui	t4,0x0
    9a74:	918c0000 	lbu	t4,0(t4)
    9a78:	24040003 	li	a0,3
    9a7c:	2405002f 	li	a1,47
    9a80:	2981000a 	slti	at,t4,10
    9a84:	1020000c 	beqz	at,9ab8 <func_800F6268+0x1b0>
    9a88:	00003025 	move	a2,zero
    9a8c:	00003825 	move	a3,zero
    9a90:	afa00010 	sw	zero,16(sp)
    9a94:	0c000000 	jal	0 <func_800EC960>
    9a98:	e7ac0030 	swc1	$f12,48(sp)
    9a9c:	3c04a300 	lui	a0,0xa300
    9aa0:	0c000000 	jal	0 <func_800EC960>
    9aa4:	3484fffc 	ori	a0,a0,0xfffc
    9aa8:	240d000a 	li	t5,10
    9aac:	3c010000 	lui	at,0x0
    9ab0:	c7ac0030 	lwc1	$f12,48(sp)
    9ab4:	a02d0000 	sb	t5,0(at)
    9ab8:	3c0144fa 	lui	at,0x44fa
    9abc:	44813000 	mtc1	at,$f6
    9ac0:	3c014348 	lui	at,0x4348
    9ac4:	240f007f 	li	t7,127
    9ac8:	460c303c 	c.lt.s	$f6,$f12
    9acc:	00000000 	nop
    9ad0:	45020004 	bc1fl	9ae4 <func_800F6268+0x1dc>
    9ad4:	44810000 	mtc1	at,$f0
    9ad8:	10000014 	b	9b2c <func_800F6268+0x224>
    9adc:	2403007f 	li	v1,127
    9ae0:	44810000 	mtc1	at,$f0
    9ae4:	3c0142fe 	lui	at,0x42fe
    9ae8:	4600603c 	c.lt.s	$f12,$f0
    9aec:	00000000 	nop
    9af0:	45020004 	bc1fl	9b04 <func_800F6268+0x1fc>
    9af4:	46006201 	sub.s	$f8,$f12,$f0
    9af8:	1000000c 	b	9b2c <func_800F6268+0x224>
    9afc:	00001825 	move	v1,zero
    9b00:	46006201 	sub.s	$f8,$f12,$f0
    9b04:	44815000 	mtc1	at,$f10
    9b08:	3c0144e1 	lui	at,0x44e1
    9b0c:	44819000 	mtc1	at,$f18
    9b10:	460a4402 	mul.s	$f16,$f8,$f10
    9b14:	46128103 	div.s	$f4,$f16,$f18
    9b18:	4600218d 	trunc.w.s	$f6,$f4
    9b1c:	44033000 	mfc1	v1,$f6
    9b20:	00000000 	nop
    9b24:	00031e00 	sll	v1,v1,0x18
    9b28:	00031e03 	sra	v1,v1,0x18
    9b2c:	01e31023 	subu	v0,t7,v1
    9b30:	3c016303 	lui	at,0x6303
    9b34:	00412025 	or	a0,v0,at
    9b38:	0c000000 	jal	0 <func_800EC960>
    9b3c:	afa20028 	sw	v0,40(sp)
    9b40:	8fa20028 	lw	v0,40(sp)
    9b44:	3c016303 	lui	at,0x6303
    9b48:	34210100 	ori	at,at,0x100
    9b4c:	0c000000 	jal	0 <func_800EC960>
    9b50:	00412025 	or	a0,v0,at
    9b54:	3c030000 	lui	v1,0x0
    9b58:	24630000 	addiu	v1,v1,0
    9b5c:	90620000 	lbu	v0,0(v1)
    9b60:	2841000a 	slti	at,v0,10
    9b64:	10200002 	beqz	at,9b70 <func_800F6268+0x268>
    9b68:	24580001 	addiu	t8,v0,1
    9b6c:	a0780000 	sb	t8,0(v1)
    9b70:	8fbf001c 	lw	ra,28(sp)
    9b74:	27bd0030 	addiu	sp,sp,48
    9b78:	03e00008 	jr	ra
    9b7c:	00000000 	nop

00009b80 <func_800F64E0>:
    9b80:	27bdffe0 	addiu	sp,sp,-32
    9b84:	afa40020 	sw	a0,32(sp)
    9b88:	308400ff 	andi	a0,a0,0xff
    9b8c:	3c010000 	lui	at,0x0
    9b90:	afbf001c 	sw	ra,28(sp)
    9b94:	10800011 	beqz	a0,9bdc <func_800F64E0+0x5c>
    9b98:	a0240000 	sb	a0,0(at)
    9b9c:	3c070000 	lui	a3,0x0
    9ba0:	3c0e0000 	lui	t6,0x0
    9ba4:	24e70000 	addiu	a3,a3,0
    9ba8:	25ce0000 	addiu	t6,t6,0
    9bac:	3c050000 	lui	a1,0x0
    9bb0:	24a50000 	addiu	a1,a1,0
    9bb4:	afae0014 	sw	t6,20(sp)
    9bb8:	afa70010 	sw	a3,16(sp)
    9bbc:	24044800 	li	a0,18432
    9bc0:	0c000000 	jal	0 <func_800EC960>
    9bc4:	24060004 	li	a2,4
    9bc8:	3c04f100 	lui	a0,0xf100
    9bcc:	0c000000 	jal	0 <func_800EC960>
    9bd0:	00002825 	move	a1,zero
    9bd4:	10000010 	b	9c18 <func_800F64E0+0x98>
    9bd8:	8fbf001c 	lw	ra,28(sp)
    9bdc:	3c070000 	lui	a3,0x0
    9be0:	3c0f0000 	lui	t7,0x0
    9be4:	24e70000 	addiu	a3,a3,0
    9be8:	25ef0000 	addiu	t7,t7,0
    9bec:	3c050000 	lui	a1,0x0
    9bf0:	24a50000 	addiu	a1,a1,0
    9bf4:	afaf0014 	sw	t7,20(sp)
    9bf8:	afa70010 	sw	a3,16(sp)
    9bfc:	24044801 	li	a0,18433
    9c00:	0c000000 	jal	0 <func_800EC960>
    9c04:	24060004 	li	a2,4
    9c08:	3c04f200 	lui	a0,0xf200
    9c0c:	0c000000 	jal	0 <func_800EC960>
    9c10:	00002825 	move	a1,zero
    9c14:	8fbf001c 	lw	ra,28(sp)
    9c18:	27bd0020 	addiu	sp,sp,32
    9c1c:	03e00008 	jr	ra
    9c20:	00000000 	nop

00009c24 <func_800F6584>:
    9c24:	27bdffc8 	addiu	sp,sp,-56
    9c28:	afb0001c 	sw	s0,28(sp)
    9c2c:	309000ff 	andi	s0,a0,0xff
    9c30:	afbf0024 	sw	ra,36(sp)
    9c34:	afa40038 	sw	a0,56(sp)
    9c38:	3c010000 	lui	at,0x0
    9c3c:	afb10020 	sw	s1,32(sp)
    9c40:	a0300000 	sb	s0,0(at)
    9c44:	0c000000 	jal	0 <func_800EC960>
    9c48:	00002025 	move	a0,zero
    9c4c:	2411002f 	li	s1,47
    9c50:	304e00ff 	andi	t6,v0,0xff
    9c54:	162e0003 	bne	s1,t6,9c64 <func_800F6584+0x40>
    9c58:	00001825 	move	v1,zero
    9c5c:	10000008 	b	9c80 <func_800F6584+0x5c>
    9c60:	a7a00034 	sh	zero,52(sp)
    9c64:	0c000000 	jal	0 <func_800EC960>
    9c68:	24040003 	li	a0,3
    9c6c:	304f00ff 	andi	t7,v0,0xff
    9c70:	162f0036 	bne	s1,t7,9d4c <func_800F6584+0x128>
    9c74:	24030003 	li	v1,3
    9c78:	3418fffc 	li	t8,0xfffc
    9c7c:	a7b80034 	sh	t8,52(sp)
    9c80:	12000018 	beqz	s0,9ce4 <func_800F6584+0xc0>
    9c84:	24010003 	li	at,3
    9c88:	00038e00 	sll	s1,v1,0x18
    9c8c:	3c016000 	lui	at,0x6000
    9c90:	02211025 	or	v0,s1,at
    9c94:	3c010001 	lui	at,0x1
    9c98:	00411025 	or	v0,v0,at
    9c9c:	00402025 	move	a0,v0
    9ca0:	afa20028 	sw	v0,40(sp)
    9ca4:	0c000000 	jal	0 <func_800EC960>
    9ca8:	00608025 	move	s0,v1
    9cac:	8fa20028 	lw	v0,40(sp)
    9cb0:	0c000000 	jal	0 <func_800EC960>
    9cb4:	34440100 	ori	a0,v0,0x100
    9cb8:	24010003 	li	at,3
    9cbc:	16010023 	bne	s0,at,9d4c <func_800F6584+0x128>
    9cc0:	97a80034 	lhu	t0,52(sp)
    9cc4:	3c01a000 	lui	at,0xa000
    9cc8:	35090003 	ori	t1,t0,0x3
    9ccc:	312affff 	andi	t2,t1,0xffff
    9cd0:	0221c825 	or	t9,s1,at
    9cd4:	0c000000 	jal	0 <func_800EC960>
    9cd8:	032a2025 	or	a0,t9,t2
    9cdc:	1000001c 	b	9d50 <func_800F6584+0x12c>
    9ce0:	8fbf0024 	lw	ra,36(sp)
    9ce4:	14610007 	bne	v1,at,9d04 <func_800F6584+0xe0>
    9ce8:	00608025 	move	s0,v1
    9cec:	24040003 	li	a0,3
    9cf0:	2405002f 	li	a1,47
    9cf4:	00003025 	move	a2,zero
    9cf8:	00003825 	move	a3,zero
    9cfc:	0c000000 	jal	0 <func_800EC960>
    9d00:	afa00010 	sw	zero,16(sp)
    9d04:	00108e00 	sll	s1,s0,0x18
    9d08:	3c016000 	lui	at,0x6000
    9d0c:	02211025 	or	v0,s1,at
    9d10:	3c010001 	lui	at,0x1
    9d14:	00411025 	or	v0,v0,at
    9d18:	3444007f 	ori	a0,v0,0x7f
    9d1c:	0c000000 	jal	0 <func_800EC960>
    9d20:	afa20028 	sw	v0,40(sp)
    9d24:	8fa40028 	lw	a0,40(sp)
    9d28:	0c000000 	jal	0 <func_800EC960>
    9d2c:	3484017f 	ori	a0,a0,0x17f
    9d30:	24010003 	li	at,3
    9d34:	16010005 	bne	s0,at,9d4c <func_800F6584+0x128>
    9d38:	97ac0034 	lhu	t4,52(sp)
    9d3c:	3c01a000 	lui	at,0xa000
    9d40:	02215825 	or	t3,s1,at
    9d44:	0c000000 	jal	0 <func_800EC960>
    9d48:	016c2025 	or	a0,t3,t4
    9d4c:	8fbf0024 	lw	ra,36(sp)
    9d50:	8fb0001c 	lw	s0,28(sp)
    9d54:	8fb10020 	lw	s1,32(sp)
    9d58:	03e00008 	jr	ra
    9d5c:	27bd0038 	addiu	sp,sp,56

00009d60 <func_800F66C0>:
    9d60:	afa40000 	sw	a0,0(sp)
    9d64:	00042600 	sll	a0,a0,0x18
    9d68:	00042603 	sra	a0,a0,0x18
    9d6c:	308e007f 	andi	t6,a0,0x7f
    9d70:	3c010000 	lui	at,0x0
    9d74:	03e00008 	jr	ra
    9d78:	a02e0000 	sb	t6,0(at)

00009d7c <func_800F66DC>:
    9d7c:	afa40000 	sw	a0,0(sp)
    9d80:	00042600 	sll	a0,a0,0x18
    9d84:	00042603 	sra	a0,a0,0x18
    9d88:	10800003 	beqz	a0,9d98 <func_800F66DC+0x1c>
    9d8c:	308e007f 	andi	t6,a0,0x7f
    9d90:	3c010000 	lui	at,0x0
    9d94:	a02e0000 	sb	t6,0(at)
    9d98:	03e00008 	jr	ra
    9d9c:	00000000 	nop

00009da0 <func_800F6700>:
    9da0:	27bdffe0 	addiu	sp,sp,-32
    9da4:	afa40020 	sw	a0,32(sp)
    9da8:	00042600 	sll	a0,a0,0x18
    9dac:	00042603 	sra	a0,a0,0x18
    9db0:	1080000c 	beqz	a0,9de4 <func_800F6700+0x44>
    9db4:	afbf0014 	sw	ra,20(sp)
    9db8:	24020001 	li	v0,1
    9dbc:	1082000d 	beq	a0,v0,9df4 <func_800F6700+0x54>
    9dc0:	240e0003 	li	t6,3
    9dc4:	24030002 	li	v1,2
    9dc8:	1083000f 	beq	a0,v1,9e08 <func_800F6700+0x68>
    9dcc:	3c010000 	lui	at,0x0
    9dd0:	24010003 	li	at,3
    9dd4:	1081000f 	beq	a0,at,9e14 <func_800F6700+0x74>
    9dd8:	00000000 	nop
    9ddc:	10000011 	b	9e24 <func_800F6700+0x84>
    9de0:	93a4001f 	lbu	a0,31(sp)
    9de4:	3c010000 	lui	at,0x0
    9de8:	a3a0001f 	sb	zero,31(sp)
    9dec:	1000000c 	b	9e20 <func_800F6700+0x80>
    9df0:	a0200000 	sb	zero,0(at)
    9df4:	240f0003 	li	t7,3
    9df8:	3c010000 	lui	at,0x0
    9dfc:	a3ae001f 	sb	t6,31(sp)
    9e00:	10000007 	b	9e20 <func_800F6700+0x80>
    9e04:	a02f0000 	sb	t7,0(at)
    9e08:	a3a2001f 	sb	v0,31(sp)
    9e0c:	10000004 	b	9e20 <func_800F6700+0x80>
    9e10:	a0220000 	sb	v0,0(at)
    9e14:	3c010000 	lui	at,0x0
    9e18:	a3a0001f 	sb	zero,31(sp)
    9e1c:	a0230000 	sb	v1,0(at)
    9e20:	93a4001f 	lbu	a0,31(sp)
    9e24:	3c01e000 	lui	at,0xe000
    9e28:	0c000000 	jal	0 <func_800EC960>
    9e2c:	00812025 	or	a0,a0,at
    9e30:	8fbf0014 	lw	ra,20(sp)
    9e34:	27bd0020 	addiu	sp,sp,32
    9e38:	03e00008 	jr	ra
    9e3c:	00000000 	nop

00009e40 <func_800F67A0>:
    9e40:	27bdffe0 	addiu	sp,sp,-32
    9e44:	afa40020 	sw	a0,32(sp)
    9e48:	3c030000 	lui	v1,0x0
    9e4c:	90630000 	lbu	v1,0(v1)
    9e50:	93a20023 	lbu	v0,35(sp)
    9e54:	afbf001c 	sw	ra,28(sp)
    9e58:	50430014 	beql	v0,v1,9eac <func_800F67A0+0x6c>
    9e5c:	93af0023 	lbu	t7,35(sp)
    9e60:	14400005 	bnez	v0,9e78 <func_800F67A0+0x38>
    9e64:	00000000 	nop
    9e68:	0c000000 	jal	0 <func_800EC960>
    9e6c:	2404086b 	li	a0,2155
    9e70:	1000000e 	b	9eac <func_800F67A0+0x6c>
    9e74:	93af0023 	lbu	t7,35(sp)
    9e78:	1460000b 	bnez	v1,9ea8 <func_800F67A0+0x68>
    9e7c:	3c070000 	lui	a3,0x0
    9e80:	3c0e0000 	lui	t6,0x0
    9e84:	24e70000 	addiu	a3,a3,0
    9e88:	25ce0000 	addiu	t6,t6,0
    9e8c:	3c050000 	lui	a1,0x0
    9e90:	24a50000 	addiu	a1,a1,0
    9e94:	afae0014 	sw	t6,20(sp)
    9e98:	afa70010 	sw	a3,16(sp)
    9e9c:	2404086b 	li	a0,2155
    9ea0:	0c000000 	jal	0 <func_800EC960>
    9ea4:	24060004 	li	a2,4
    9ea8:	93af0023 	lbu	t7,35(sp)
    9eac:	8fbf001c 	lw	ra,28(sp)
    9eb0:	3c010000 	lui	at,0x0
    9eb4:	a02f0000 	sb	t7,0(at)
    9eb8:	3c010000 	lui	at,0x0
    9ebc:	27bd0020 	addiu	sp,sp,32
    9ec0:	03e00008 	jr	ra
    9ec4:	a02f0000 	sb	t7,0(at)

00009ec8 <func_800F6828>:
    9ec8:	27bdffd8 	addiu	sp,sp,-40
    9ecc:	afa40028 	sw	a0,40(sp)
    9ed0:	308400ff 	andi	a0,a0,0xff
    9ed4:	3c010000 	lui	at,0x0
    9ed8:	a0240000 	sb	a0,0(at)
    9edc:	3c0e0000 	lui	t6,0x0
    9ee0:	95ce0000 	lhu	t6,0(t6)
    9ee4:	3c010000 	lui	at,0x0
    9ee8:	a0240000 	sb	a0,0(at)
    9eec:	24010001 	li	at,1
    9ef0:	afbf0024 	sw	ra,36(sp)
    9ef4:	afb20020 	sw	s2,32(sp)
    9ef8:	afb1001c 	sw	s1,28(sp)
    9efc:	15c10011 	bne	t6,at,9f44 <func_800F6828+0x7c>
    9f00:	afb00018 	sw	s0,24(sp)
    9f04:	00048e00 	sll	s1,a0,0x18
    9f08:	00118e03 	sra	s1,s1,0x18
    9f0c:	00008025 	move	s0,zero
    9f10:	3c120600 	lui	s2,0x600
    9f14:	320f00ff 	andi	t7,s0,0xff
    9f18:	000fc200 	sll	t8,t7,0x8
    9f1c:	03122025 	or	a0,t8,s2
    9f20:	00112e00 	sll	a1,s1,0x18
    9f24:	00052e03 	sra	a1,a1,0x18
    9f28:	0c000000 	jal	0 <func_800EC960>
    9f2c:	34840006 	ori	a0,a0,0x6
    9f30:	26100001 	addiu	s0,s0,1
    9f34:	321000ff 	andi	s0,s0,0xff
    9f38:	2a010010 	slti	at,s0,16
    9f3c:	5420fff6 	bnezl	at,9f18 <func_800F6828+0x50>
    9f40:	320f00ff 	andi	t7,s0,0xff
    9f44:	8fbf0024 	lw	ra,36(sp)
    9f48:	8fb00018 	lw	s0,24(sp)
    9f4c:	8fb1001c 	lw	s1,28(sp)
    9f50:	8fb20020 	lw	s2,32(sp)
    9f54:	03e00008 	jr	ra
    9f58:	27bd0028 	addiu	sp,sp,40

00009f5c <func_800F68BC>:
    9f5c:	afa40000 	sw	a0,0(sp)
    9f60:	00042600 	sll	a0,a0,0x18
    9f64:	00042603 	sra	a0,a0,0x18
    9f68:	3c010000 	lui	at,0x0
    9f6c:	03e00008 	jr	ra
    9f70:	a0240000 	sb	a0,0(at)

00009f74 <func_800F68D4>:
    9f74:	3c0e0000 	lui	t6,0x0
    9f78:	81ce0000 	lb	t6,0(t6)
    9f7c:	27bdffe0 	addiu	sp,sp,-32
    9f80:	afa40020 	sw	a0,32(sp)
    9f84:	afa60028 	sw	a2,40(sp)
    9f88:	30c600ff 	andi	a2,a2,0xff
    9f8c:	3084ffff 	andi	a0,a0,0xffff
    9f90:	15c00006 	bnez	t6,9fac <func_800F68D4+0x38>
    9f94:	afbf001c 	sw	ra,28(sp)
    9f98:	8faf0030 	lw	t7,48(sp)
    9f9c:	8fb80034 	lw	t8,52(sp)
    9fa0:	afaf0010 	sw	t7,16(sp)
    9fa4:	0c000000 	jal	0 <func_800EC960>
    9fa8:	afb80014 	sw	t8,20(sp)
    9fac:	8fbf001c 	lw	ra,28(sp)
    9fb0:	27bd0020 	addiu	sp,sp,32
    9fb4:	03e00008 	jr	ra
    9fb8:	00000000 	nop

00009fbc <func_800F691C>:
    9fbc:	27bdffe0 	addiu	sp,sp,-32
    9fc0:	3c070000 	lui	a3,0x0
    9fc4:	3c0e0000 	lui	t6,0x0
    9fc8:	24e70000 	addiu	a3,a3,0
    9fcc:	afbf001c 	sw	ra,28(sp)
    9fd0:	afa40020 	sw	a0,32(sp)
    9fd4:	25ce0000 	addiu	t6,t6,0
    9fd8:	3c050000 	lui	a1,0x0
    9fdc:	3084ffff 	andi	a0,a0,0xffff
    9fe0:	24a50000 	addiu	a1,a1,0
    9fe4:	afae0014 	sw	t6,20(sp)
    9fe8:	afa70010 	sw	a3,16(sp)
    9fec:	0c000000 	jal	0 <func_800EC960>
    9ff0:	24060004 	li	a2,4
    9ff4:	8fbf001c 	lw	ra,28(sp)
    9ff8:	27bd0020 	addiu	sp,sp,32
    9ffc:	03e00008 	jr	ra
    a000:	00000000 	nop

0000a004 <func_800F6964>:
    a004:	27bdffb0 	addiu	sp,sp,-80
    a008:	3085ffff 	andi	a1,a0,0xffff
    a00c:	00051080 	sll	v0,a1,0x2
    a010:	00451023 	subu	v0,v0,a1
    a014:	afbf0034 	sw	ra,52(sp)
    a018:	afb70030 	sw	s7,48(sp)
    a01c:	afa40050 	sw	a0,80(sp)
    a020:	afb6002c 	sw	s6,44(sp)
    a024:	afb50028 	sw	s5,40(sp)
    a028:	afb40024 	sw	s4,36(sp)
    a02c:	afb30020 	sw	s3,32(sp)
    a030:	afb2001c 	sw	s2,28(sp)
    a034:	afb10018 	sw	s1,24(sp)
    a038:	afb00014 	sw	s0,20(sp)
    a03c:	00a0b825 	move	s7,a1
    a040:	04410002 	bgez	v0,a04c <func_800F6964+0x48>
    a044:	00400821 	move	at,v0
    a048:	24410001 	addiu	at,v0,1
    a04c:	00011043 	sra	v0,at,0x1
    a050:	3c011000 	lui	at,0x1000
    a054:	304200ff 	andi	v0,v0,0xff
    a058:	00021400 	sll	v0,v0,0x10
    a05c:	342100ff 	ori	at,at,0xff
    a060:	00412025 	or	a0,v0,at
    a064:	0c000000 	jal	0 <func_800EC960>
    a068:	afa2003c 	sw	v0,60(sp)
    a06c:	8fa4003c 	lw	a0,60(sp)
    a070:	3c011100 	lui	at,0x1100
    a074:	342100ff 	ori	at,at,0xff
    a078:	0c000000 	jal	0 <func_800EC960>
    a07c:	00812025 	or	a0,a0,at
    a080:	3c160000 	lui	s6,0x0
    a084:	26d60000 	addiu	s6,s6,0
    a088:	00008025 	move	s0,zero
    a08c:	00001025 	move	v0,zero
    a090:	2415000a 	li	s5,10
    a094:	3c146200 	lui	s4,0x6200
    a098:	2413000d 	li	s3,13
    a09c:	2412000c 	li	s2,12
    a0a0:	2411000b 	li	s1,11
    a0a4:	12220007 	beq	s1,v0,a0c4 <func_800F6964+0xc0>
    a0a8:	00001825 	move	v1,zero
    a0ac:	50520006 	beql	v0,s2,a0c8 <func_800F6964+0xc4>
    a0b0:	92ce0000 	lbu	t6,0(s6)
    a0b4:	50530009 	beql	v0,s3,a0dc <func_800F6964+0xd8>
    a0b8:	24030001 	li	v1,1
    a0bc:	10000007 	b	a0dc <func_800F6964+0xd8>
    a0c0:	00000000 	nop
    a0c4:	92ce0000 	lbu	t6,0(s6)
    a0c8:	16ae0004 	bne	s5,t6,a0dc <func_800F6964+0xd8>
    a0cc:	00000000 	nop
    a0d0:	10000002 	b	a0dc <func_800F6964+0xd8>
    a0d4:	24030001 	li	v1,1
    a0d8:	24030001 	li	v1,1
    a0dc:	14600007 	bnez	v1,a0fc <func_800F6964+0xf8>
    a0e0:	00177843 	sra	t7,s7,0x1
    a0e4:	31f800ff 	andi	t8,t7,0xff
    a0e8:	0018cc00 	sll	t9,t8,0x10
    a0ec:	03344025 	or	t0,t9,s4
    a0f0:	00024a00 	sll	t1,v0,0x8
    a0f4:	0c000000 	jal	0 <func_800EC960>
    a0f8:	01092025 	or	a0,t0,t1
    a0fc:	26100001 	addiu	s0,s0,1
    a100:	321000ff 	andi	s0,s0,0xff
    a104:	2a010010 	slti	at,s0,16
    a108:	1420ffe6 	bnez	at,a0a4 <func_800F6964+0xa0>
    a10c:	02001025 	move	v0,s0
    a110:	8fa4003c 	lw	a0,60(sp)
    a114:	3c011300 	lui	at,0x1300
    a118:	342100ff 	ori	at,at,0xff
    a11c:	0c000000 	jal	0 <func_800EC960>
    a120:	00812025 	or	a0,a0,at
    a124:	8fbf0034 	lw	ra,52(sp)
    a128:	8fb00014 	lw	s0,20(sp)
    a12c:	8fb10018 	lw	s1,24(sp)
    a130:	8fb2001c 	lw	s2,28(sp)
    a134:	8fb30020 	lw	s3,32(sp)
    a138:	8fb40024 	lw	s4,36(sp)
    a13c:	8fb50028 	lw	s5,40(sp)
    a140:	8fb6002c 	lw	s6,44(sp)
    a144:	8fb70030 	lw	s7,48(sp)
    a148:	03e00008 	jr	ra
    a14c:	27bd0050 	addiu	sp,sp,80

0000a150 <func_800F6AB0>:
    a150:	27bdffe0 	addiu	sp,sp,-32
    a154:	00802825 	move	a1,a0
    a158:	30a200ff 	andi	v0,a1,0xff
    a15c:	3c011000 	lui	at,0x1000
    a160:	afbf0014 	sw	ra,20(sp)
    a164:	afa40020 	sw	a0,32(sp)
    a168:	342100ff 	ori	at,at,0xff
    a16c:	00021400 	sll	v0,v0,0x10
    a170:	00412025 	or	a0,v0,at
    a174:	0c000000 	jal	0 <func_800EC960>
    a178:	afa2001c 	sw	v0,28(sp)
    a17c:	8fa4001c 	lw	a0,28(sp)
    a180:	3c011100 	lui	at,0x1100
    a184:	342100ff 	ori	at,at,0xff
    a188:	0c000000 	jal	0 <func_800EC960>
    a18c:	00812025 	or	a0,a0,at
    a190:	8fa4001c 	lw	a0,28(sp)
    a194:	3c011300 	lui	at,0x1300
    a198:	342100ff 	ori	at,at,0xff
    a19c:	0c000000 	jal	0 <func_800EC960>
    a1a0:	00812025 	or	a0,a0,at
    a1a4:	00002025 	move	a0,zero
    a1a8:	24050003 	li	a1,3
    a1ac:	2406007f 	li	a2,127
    a1b0:	0c000000 	jal	0 <func_800EC960>
    a1b4:	00003825 	move	a3,zero
    a1b8:	00002025 	move	a0,zero
    a1bc:	24050001 	li	a1,1
    a1c0:	2406007f 	li	a2,127
    a1c4:	0c000000 	jal	0 <func_800EC960>
    a1c8:	00003825 	move	a3,zero
    a1cc:	8fbf0014 	lw	ra,20(sp)
    a1d0:	27bd0020 	addiu	sp,sp,32
    a1d4:	03e00008 	jr	ra
    a1d8:	00000000 	nop

0000a1dc <func_800F6B3C>:
    a1dc:	27bdffe8 	addiu	sp,sp,-24
    a1e0:	afbf0014 	sw	ra,20(sp)
    a1e4:	24040002 	li	a0,2
    a1e8:	00002825 	move	a1,zero
    a1ec:	240600ff 	li	a2,255
    a1f0:	0c000000 	jal	0 <func_800EC960>
    a1f4:	24070005 	li	a3,5
    a1f8:	8fbf0014 	lw	ra,20(sp)
    a1fc:	27bd0018 	addiu	sp,sp,24
    a200:	03e00008 	jr	ra
    a204:	00000000 	nop

0000a208 <func_800F6B68>:
    a208:	27bdffe8 	addiu	sp,sp,-24
    a20c:	afbf0014 	sw	ra,20(sp)
    a210:	3c048300 	lui	a0,0x8300
    a214:	0c000000 	jal	0 <func_800EC960>
    a218:	00002825 	move	a1,zero
    a21c:	3c048301 	lui	a0,0x8301
    a220:	0c000000 	jal	0 <func_800EC960>
    a224:	00002825 	move	a1,zero
    a228:	3c048302 	lui	a0,0x8302
    a22c:	0c000000 	jal	0 <func_800EC960>
    a230:	00002825 	move	a1,zero
    a234:	3c048303 	lui	a0,0x8303
    a238:	0c000000 	jal	0 <func_800EC960>
    a23c:	00002825 	move	a1,zero
    a240:	0c000000 	jal	0 <func_800EC960>
    a244:	00000000 	nop
    a248:	8fbf0014 	lw	ra,20(sp)
    a24c:	27bd0018 	addiu	sp,sp,24
    a250:	03e00008 	jr	ra
    a254:	00000000 	nop

0000a258 <func_800F6BB8>:
    a258:	27bdffe8 	addiu	sp,sp,-24
    a25c:	afbf0014 	sw	ra,20(sp)
    a260:	0c000000 	jal	0 <func_800EC960>
    a264:	00000000 	nop
    a268:	8fbf0014 	lw	ra,20(sp)
    a26c:	00021600 	sll	v0,v0,0x18
    a270:	00021603 	sra	v0,v0,0x18
    a274:	03e00008 	jr	ra
    a278:	27bd0018 	addiu	sp,sp,24

0000a27c <func_800F6BDC>:
    a27c:	27bdffe8 	addiu	sp,sp,-24
    a280:	afbf0014 	sw	ra,20(sp)
    a284:	0c000000 	jal	0 <func_800EC960>
    a288:	00000000 	nop
    a28c:	0c000000 	jal	0 <func_800EC960>
    a290:	00000000 	nop
    a294:	0c000000 	jal	0 <func_800EC960>
    a298:	00000000 	nop
    a29c:	1440fffd 	bnez	v0,a294 <func_800F6BDC+0x18>
    a2a0:	00000000 	nop
    a2a4:	8fbf0014 	lw	ra,20(sp)
    a2a8:	27bd0018 	addiu	sp,sp,24
    a2ac:	03e00008 	jr	ra
    a2b0:	00000000 	nop

0000a2b4 <func_800F6C14>:
    a2b4:	27bdffe8 	addiu	sp,sp,-24
    a2b8:	afbf0014 	sw	ra,20(sp)
    a2bc:	0c000000 	jal	0 <func_800EC960>
    a2c0:	00000000 	nop
    a2c4:	8fbf0014 	lw	ra,20(sp)
    a2c8:	27bd0018 	addiu	sp,sp,24
    a2cc:	03e00008 	jr	ra
    a2d0:	00000000 	nop

0000a2d4 <func_800F6C34>:
    a2d4:	3c013f80 	lui	at,0x3f80
    a2d8:	44810000 	mtc1	at,$f0
    a2dc:	3c010000 	lui	at,0x0
    a2e0:	a0200000 	sb	zero,0(at)
    a2e4:	3c010000 	lui	at,0x0
    a2e8:	e4200000 	swc1	$f0,0(at)
    a2ec:	3c010000 	lui	at,0x0
    a2f0:	e4200000 	swc1	$f0,0(at)
    a2f4:	3c010000 	lui	at,0x0
    a2f8:	a0200000 	sb	zero,0(at)
    a2fc:	3c010000 	lui	at,0x0
    a300:	a0200000 	sb	zero,0(at)
    a304:	3c010000 	lui	at,0x0
    a308:	27bdffe8 	addiu	sp,sp,-24
    a30c:	a0200000 	sb	zero,0(at)
    a310:	afbf0014 	sw	ra,20(sp)
    a314:	3c010000 	lui	at,0x0
    a318:	a0200000 	sb	zero,0(at)
    a31c:	0c000000 	jal	0 <func_800EC960>
    a320:	00002025 	move	a0,zero
    a324:	3c013f80 	lui	at,0x3f80
    a328:	44810000 	mtc1	at,$f0
    a32c:	3c020000 	lui	v0,0x0
    a330:	3c030000 	lui	v1,0x0
    a334:	24630000 	addiu	v1,v1,0
    a338:	24420000 	addiu	v0,v0,0
    a33c:	ac40000c 	sw	zero,12(v0)
    a340:	ac60000c 	sw	zero,12(v1)
    a344:	3c010000 	lui	at,0x0
    a348:	e4400000 	swc1	$f0,0(v0)
    a34c:	e4600000 	swc1	$f0,0(v1)
    a350:	e4200000 	swc1	$f0,0(at)
    a354:	2406007f 	li	a2,127
    a358:	3c010000 	lui	at,0x0
    a35c:	a0260000 	sb	a2,0(at)
    a360:	3c010000 	lui	at,0x0
    a364:	a0260000 	sb	a2,0(at)
    a368:	3c010000 	lui	at,0x0
    a36c:	a0200000 	sb	zero,0(at)
    a370:	3c0f0000 	lui	t7,0x0
    a374:	91ef0000 	lbu	t7,0(t7)
    a378:	3c010000 	lui	at,0x0
    a37c:	a0200000 	sb	zero,0(at)
    a380:	3c010000 	lui	at,0x0
    a384:	240e00ff 	li	t6,255
    a388:	3c180000 	lui	t8,0x0
    a38c:	a02e0000 	sb	t6,0(at)
    a390:	030fc021 	addu	t8,t8,t7
    a394:	83180000 	lb	t8,0(t8)
    a398:	3c010000 	lui	at,0x0
    a39c:	a0200000 	sb	zero,0(at)
    a3a0:	3c010000 	lui	at,0x0
    a3a4:	a0380000 	sb	t8,0(at)
    a3a8:	3c010000 	lui	at,0x0
    a3ac:	a0200000 	sb	zero,0(at)
    a3b0:	3c010000 	lui	at,0x0
    a3b4:	3419ffff 	li	t9,0xffff
    a3b8:	a4390000 	sh	t9,0(at)
    a3bc:	3c044600 	lui	a0,0x4600
    a3c0:	0c000000 	jal	0 <func_800EC960>
    a3c4:	2405ffff 	li	a1,-1
    a3c8:	3c010000 	lui	at,0x0
    a3cc:	ac200000 	sw	zero,0(at)
    a3d0:	3c010000 	lui	at,0x0
    a3d4:	a0200000 	sb	zero,0(at)
    a3d8:	8fbf0014 	lw	ra,20(sp)
    a3dc:	3c010000 	lui	at,0x0
    a3e0:	24080001 	li	t0,1
    a3e4:	a0280000 	sb	t0,0(at)
    a3e8:	3c010000 	lui	at,0x0
    a3ec:	a0200000 	sb	zero,0(at)
    a3f0:	03e00008 	jr	ra
    a3f4:	27bd0018 	addiu	sp,sp,24

0000a3f8 <func_800F6D58>:
    a3f8:	27bdffc0 	addiu	sp,sp,-64
    a3fc:	3c0e0000 	lui	t6,0x0
    a400:	95ce0000 	lhu	t6,0(t6)
    a404:	afb20020 	sw	s2,32(sp)
    a408:	afb1001c 	sw	s1,28(sp)
    a40c:	24010001 	li	at,1
    a410:	309100ff 	andi	s1,a0,0xff
    a414:	30b200ff 	andi	s2,a1,0xff
    a418:	afbf002c 	sw	ra,44(sp)
    a41c:	afb40028 	sw	s4,40(sp)
    a420:	afb30024 	sw	s3,36(sp)
    a424:	afb00018 	sw	s0,24(sp)
    a428:	afa40040 	sw	a0,64(sp)
    a42c:	afa50044 	sw	a1,68(sp)
    a430:	11c1000a 	beq	t6,at,a45c <func_800F6D58+0x64>
    a434:	afa60048 	sw	a2,72(sp)
    a438:	3c05f000 	lui	a1,0xf000
    a43c:	34a500ff 	ori	a1,a1,0xff
    a440:	0c000000 	jal	0 <func_800EC960>
    a444:	24040001 	li	a0,1
    a448:	10400004 	beqz	v0,a45c <func_800F6D58+0x64>
    a44c:	240f0001 	li	t7,1
    a450:	3c010000 	lui	at,0x0
    a454:	10000029 	b	a4fc <func_800F6D58+0x104>
    a458:	a02f0000 	sb	t7,0(at)
    a45c:	0011c200 	sll	t8,s1,0x8
    a460:	0312c821 	addu	t9,t8,s2
    a464:	24010101 	li	at,257
    a468:	02208025 	move	s0,s1
    a46c:	17210009 	bne	t9,at,a494 <func_800F6D58+0x9c>
    a470:	02402825 	move	a1,s2
    a474:	24040003 	li	a0,3
    a478:	0c000000 	jal	0 <func_800EC960>
    a47c:	afb20034 	sw	s2,52(sp)
    a480:	2401002f 	li	at,47
    a484:	10410003 	beq	v0,at,a494 <func_800F6D58+0x9c>
    a488:	8fa50034 	lw	a1,52(sp)
    a48c:	3c010000 	lui	at,0x0
    a490:	a0200000 	sb	zero,0(at)
    a494:	00101103 	sra	v0,s0,0x4
    a498:	3204000f 	andi	a0,s0,0xf
    a49c:	304800ff 	andi	t0,v0,0xff
    a4a0:	304300ff 	andi	v1,v0,0xff
    a4a4:	15000002 	bnez	t0,a4b0 <func_800F6D58+0xb8>
    a4a8:	308600ff 	andi	a2,a0,0xff
    a4ac:	308300ff 	andi	v1,a0,0xff
    a4b0:	308900ff 	andi	t1,a0,0xff
    a4b4:	0123082a 	slt	at,t1,v1
    a4b8:	14200010 	bnez	at,a4fc <func_800F6D58+0x104>
    a4bc:	307000ff 	andi	s0,v1,0xff
    a4c0:	00059c00 	sll	s3,a1,0x10
    a4c4:	3c018000 	lui	at,0x8000
    a4c8:	02619825 	or	s3,s3,at
    a4cc:	00c09025 	move	s2,a2
    a4d0:	02008825 	move	s1,s0
    a4d4:	93b4004b 	lbu	s4,75(sp)
    a4d8:	00115200 	sll	t2,s1,0x8
    a4dc:	026a5825 	or	t3,s3,t2
    a4e0:	0c000000 	jal	0 <func_800EC960>
    a4e4:	01742025 	or	a0,t3,s4
    a4e8:	26100001 	addiu	s0,s0,1
    a4ec:	321000ff 	andi	s0,s0,0xff
    a4f0:	0250082a 	slt	at,s2,s0
    a4f4:	1020fff8 	beqz	at,a4d8 <func_800F6D58+0xe0>
    a4f8:	02008825 	move	s1,s0
    a4fc:	8fbf002c 	lw	ra,44(sp)
    a500:	8fb00018 	lw	s0,24(sp)
    a504:	8fb1001c 	lw	s1,28(sp)
    a508:	8fb20020 	lw	s2,32(sp)
    a50c:	8fb30024 	lw	s3,36(sp)
    a510:	8fb40028 	lw	s4,40(sp)
    a514:	03e00008 	jr	ra
    a518:	27bd0040 	addiu	sp,sp,64

0000a51c <func_800F6E7C>:
    a51c:	27bdffd8 	addiu	sp,sp,-40
    a520:	afb00014 	sw	s0,20(sp)
    a524:	3090ffff 	andi	s0,a0,0xffff
    a528:	afbf0024 	sw	ra,36(sp)
    a52c:	afb10018 	sw	s1,24(sp)
    a530:	afa40028 	sw	a0,40(sp)
    a534:	30b1ffff 	andi	s1,a1,0xffff
    a538:	afb30020 	sw	s3,32(sp)
    a53c:	afb2001c 	sw	s2,28(sp)
    a540:	afa5002c 	sw	a1,44(sp)
    a544:	0c000000 	jal	0 <func_800EC960>
    a548:	00002025 	move	a0,zero
    a54c:	2401004c 	li	at,76
    a550:	14410005 	bne	v0,at,a568 <func_800F6E7C+0x4c>
    a554:	3c047000 	lui	a0,0x7000
    a558:	0c000000 	jal	0 <func_800EC960>
    a55c:	2404000f 	li	a0,15
    a560:	10000036 	b	a63c <func_800F6E7C+0x120>
    a564:	8fbf0024 	lw	ra,36(sp)
    a568:	0c000000 	jal	0 <func_800EC960>
    a56c:	34840001 	ori	a0,a0,0x1
    a570:	00102203 	sra	a0,s0,0x8
    a574:	308400ff 	andi	a0,a0,0xff
    a578:	3c017004 	lui	at,0x7004
    a57c:	00812025 	or	a0,a0,at
    a580:	0c000000 	jal	0 <func_800EC960>
    a584:	02009825 	move	s3,s0
    a588:	02602025 	move	a0,s3
    a58c:	308400ff 	andi	a0,a0,0xff
    a590:	3c017005 	lui	at,0x7005
    a594:	0c000000 	jal	0 <func_800EC960>
    a598:	00812025 	or	a0,a0,at
    a59c:	00002025 	move	a0,zero
    a5a0:	00002825 	move	a1,zero
    a5a4:	2406007f 	li	a2,127
    a5a8:	0c000000 	jal	0 <func_800EC960>
    a5ac:	24070001 	li	a3,1
    a5b0:	3c0e0000 	lui	t6,0x0
    a5b4:	91ce0000 	lbu	t6,0(t6)
    a5b8:	3c04e000 	lui	a0,0xe000
    a5bc:	00008025 	move	s0,zero
    a5c0:	11c00003 	beqz	t6,a5d0 <func_800F6E7C+0xb4>
    a5c4:	34840100 	ori	a0,a0,0x100
    a5c8:	0c000000 	jal	0 <func_800EC960>
    a5cc:	24100001 	li	s0,1
    a5d0:	0c000000 	jal	0 <func_800EC960>
    a5d4:	24040001 	li	a0,1
    a5d8:	0010102b 	sltu	v0,zero,s0
    a5dc:	10400004 	beqz	v0,a5f0 <func_800F6E7C+0xd4>
    a5e0:	00008025 	move	s0,zero
    a5e4:	3c04e000 	lui	a0,0xe000
    a5e8:	0c000000 	jal	0 <func_800EC960>
    a5ec:	34840101 	ori	a0,a0,0x101
    a5f0:	02209025 	move	s2,s1
    a5f4:	3c118001 	lui	s1,0x8001
    a5f8:	00001025 	move	v0,zero
    a5fc:	240f0001 	li	t7,1
    a600:	004f1804 	sllv	v1,t7,v0
    a604:	0243c024 	and	t8,s2,v1
    a608:	17000006 	bnez	t8,a624 <func_800F6E7C+0x108>
    a60c:	0263c824 	and	t9,s3,v1
    a610:	13200004 	beqz	t9,a624 <func_800F6E7C+0x108>
    a614:	00024200 	sll	t0,v0,0x8
    a618:	01112025 	or	a0,t0,s1
    a61c:	0c000000 	jal	0 <func_800EC960>
    a620:	34840001 	ori	a0,a0,0x1
    a624:	26100001 	addiu	s0,s0,1
    a628:	321000ff 	andi	s0,s0,0xff
    a62c:	2a010010 	slti	at,s0,16
    a630:	1420fff2 	bnez	at,a5fc <func_800F6E7C+0xe0>
    a634:	02001025 	move	v0,s0
    a638:	8fbf0024 	lw	ra,36(sp)
    a63c:	8fb00014 	lw	s0,20(sp)
    a640:	8fb10018 	lw	s1,24(sp)
    a644:	8fb2001c 	lw	s2,28(sp)
    a648:	8fb30020 	lw	s3,32(sp)
    a64c:	03e00008 	jr	ra
    a650:	27bd0028 	addiu	sp,sp,40

0000a654 <func_800F6FB4>:
    a654:	27bdffd0 	addiu	sp,sp,-48
    a658:	3c020000 	lui	v0,0x0
    a65c:	94420000 	lhu	v0,0(v0)
    a660:	afb1001c 	sw	s1,28(sp)
    a664:	afb00018 	sw	s0,24(sp)
    a668:	3401ffff 	li	at,0xffff
    a66c:	309100ff 	andi	s1,a0,0xff
    a670:	afbf002c 	sw	ra,44(sp)
    a674:	afb40028 	sw	s4,40(sp)
    a678:	afb30024 	sw	s3,36(sp)
    a67c:	afb20020 	sw	s2,32(sp)
    a680:	afa40030 	sw	a0,48(sp)
    a684:	10410007 	beq	v0,at,a6a4 <func_800F6FB4+0x50>
    a688:	00008025 	move	s0,zero
    a68c:	304f00ff 	andi	t7,v0,0xff
    a690:	3c180000 	lui	t8,0x0
    a694:	030fc021 	addu	t8,t8,t7
    a698:	93180000 	lbu	t8,0(t8)
    a69c:	33190080 	andi	t9,t8,0x80
    a6a0:	17200035 	bnez	t9,a778 <func_800F6FB4+0x124>
    a6a4:	00114080 	sll	t0,s1,0x2
    a6a8:	01114023 	subu	t0,t0,s1
    a6ac:	00084080 	sll	t0,t0,0x2
    a6b0:	3c130000 	lui	s3,0x0
    a6b4:	01114021 	addu	t0,t0,s1
    a6b8:	26730000 	addiu	s3,s3,0
    a6bc:	000840c0 	sll	t0,t0,0x3
    a6c0:	02681021 	addu	v0,s3,t0
    a6c4:	94440000 	lhu	a0,0(v0)
    a6c8:	0c000000 	jal	0 <func_800EC960>
    a6cc:	94450002 	lhu	a1,2(v0)
    a6d0:	00114880 	sll	t1,s1,0x2
    a6d4:	01314823 	subu	t1,t1,s1
    a6d8:	00094880 	sll	t1,t1,0x2
    a6dc:	01314821 	addu	t1,t1,s1
    a6e0:	000948c0 	sll	t1,t1,0x3
    a6e4:	02699021 	addu	s2,s3,t1
    a6e8:	924a0004 	lbu	t2,4(s2)
    a6ec:	241400ff 	li	s4,255
    a6f0:	02505821 	addu	t3,s2,s0
    a6f4:	128a001a 	beq	s4,t2,a760 <func_800F6FB4+0x10c>
    a6f8:	3c138000 	lui	s3,0x8000
    a6fc:	91710004 	lbu	s1,4(t3)
    a700:	26100001 	addiu	s0,s0,1
    a704:	321000ff 	andi	s0,s0,0xff
    a708:	02506021 	addu	t4,s2,s0
    a70c:	91830004 	lbu	v1,4(t4)
    a710:	26100001 	addiu	s0,s0,1
    a714:	321000ff 	andi	s0,s0,0xff
    a718:	322200ff 	andi	v0,s1,0xff
    a71c:	02506821 	addu	t5,s2,s0
    a720:	00037400 	sll	t6,v1,0x10
    a724:	91a50004 	lbu	a1,4(t5)
    a728:	01d37825 	or	t7,t6,s3
    a72c:	0002c200 	sll	t8,v0,0x8
    a730:	26100001 	addiu	s0,s0,1
    a734:	01f8c825 	or	t9,t7,t8
    a738:	321000ff 	andi	s0,s0,0xff
    a73c:	0c000000 	jal	0 <func_800EC960>
    a740:	03252025 	or	a0,t9,a1
    a744:	02504021 	addu	t0,s2,s0
    a748:	91110004 	lbu	s1,4(t0)
    a74c:	2a010064 	slti	at,s0,100
    a750:	12910003 	beq	s4,s1,a760 <func_800F6FB4+0x10c>
    a754:	00000000 	nop
    a758:	5420ffea 	bnezl	at,a704 <func_800F6FB4+0xb0>
    a75c:	26100001 	addiu	s0,s0,1
    a760:	3c040000 	lui	a0,0x0
    a764:	90840000 	lbu	a0,0(a0)
    a768:	3c018007 	lui	at,0x8007
    a76c:	34210d00 	ori	at,at,0xd00
    a770:	0c000000 	jal	0 <func_800EC960>
    a774:	00812025 	or	a0,a0,at
    a778:	8fbf002c 	lw	ra,44(sp)
    a77c:	8fb00018 	lw	s0,24(sp)
    a780:	8fb1001c 	lw	s1,28(sp)
    a784:	8fb20020 	lw	s2,32(sp)
    a788:	8fb30024 	lw	s3,36(sp)
    a78c:	8fb40028 	lw	s4,40(sp)
    a790:	03e00008 	jr	ra
    a794:	27bd0030 	addiu	sp,sp,48

0000a798 <func_800F70F8>:
    a798:	27bdffe8 	addiu	sp,sp,-24
    a79c:	afbf0014 	sw	ra,20(sp)
    a7a0:	00002025 	move	a0,zero
    a7a4:	0c000000 	jal	0 <func_800EC960>
    a7a8:	00002825 	move	a1,zero
    a7ac:	8fbf0014 	lw	ra,20(sp)
    a7b0:	27bd0018 	addiu	sp,sp,24
    a7b4:	03e00008 	jr	ra
    a7b8:	00000000 	nop

0000a7bc <func_800F711C>:
    a7bc:	27bdffe8 	addiu	sp,sp,-24
    a7c0:	afbf0014 	sw	ra,20(sp)
    a7c4:	0c000000 	jal	0 <func_800EC960>
    a7c8:	00000000 	nop
    a7cc:	0c000000 	jal	0 <func_800EC960>
    a7d0:	00000000 	nop
    a7d4:	0c000000 	jal	0 <func_800EC960>
    a7d8:	00000000 	nop
    a7dc:	0c000000 	jal	0 <func_800EC960>
    a7e0:	00000000 	nop
    a7e4:	0c000000 	jal	0 <func_800EC960>
    a7e8:	00000000 	nop
    a7ec:	24040002 	li	a0,2
    a7f0:	00002825 	move	a1,zero
    a7f4:	24060070 	li	a2,112
    a7f8:	0c000000 	jal	0 <func_800EC960>
    a7fc:	2407000a 	li	a3,10
    a800:	8fbf0014 	lw	ra,20(sp)
    a804:	27bd0018 	addiu	sp,sp,24
    a808:	03e00008 	jr	ra
    a80c:	00000000 	nop

0000a810 <func_800F7170>:
    a810:	27bdffe8 	addiu	sp,sp,-24
    a814:	afbf0014 	sw	ra,20(sp)
    a818:	24040002 	li	a0,2
    a81c:	00002825 	move	a1,zero
    a820:	24060070 	li	a2,112
    a824:	0c000000 	jal	0 <func_800EC960>
    a828:	24070001 	li	a3,1
    a82c:	3c04f200 	lui	a0,0xf200
    a830:	0c000000 	jal	0 <func_800EC960>
    a834:	24050001 	li	a1,1
    a838:	0c000000 	jal	0 <func_800EC960>
    a83c:	00000000 	nop
    a840:	3c04f800 	lui	a0,0xf800
    a844:	0c000000 	jal	0 <func_800EC960>
    a848:	00002825 	move	a1,zero
    a84c:	8fbf0014 	lw	ra,20(sp)
    a850:	27bd0018 	addiu	sp,sp,24
    a854:	03e00008 	jr	ra
    a858:	00000000 	nop

0000a85c <func_800F71BC>:
    a85c:	27bdffe8 	addiu	sp,sp,-24
    a860:	afbf0014 	sw	ra,20(sp)
    a864:	240e0001 	li	t6,1
    a868:	3c010000 	lui	at,0x0
    a86c:	afa40018 	sw	a0,24(sp)
    a870:	0c000000 	jal	0 <func_800EC960>
    a874:	a02e0000 	sb	t6,0(at)
    a878:	0c000000 	jal	0 <func_800EC960>
    a87c:	00000000 	nop
    a880:	0c000000 	jal	0 <func_800EC960>
    a884:	00000000 	nop
    a888:	0c000000 	jal	0 <func_800EC960>
    a88c:	00000000 	nop
    a890:	0c000000 	jal	0 <func_800EC960>
    a894:	00000000 	nop
    a898:	8fbf0014 	lw	ra,20(sp)
    a89c:	27bd0018 	addiu	sp,sp,24
    a8a0:	03e00008 	jr	ra
    a8a4:	00000000 	nop

0000a8a8 <func_800F7208>:
    a8a8:	27bdffe8 	addiu	sp,sp,-24
    a8ac:	afbf0014 	sw	ra,20(sp)
    a8b0:	0c000000 	jal	0 <func_800EC960>
    a8b4:	00000000 	nop
    a8b8:	3c04f200 	lui	a0,0xf200
    a8bc:	0c000000 	jal	0 <func_800EC960>
    a8c0:	24050001 	li	a1,1
    a8c4:	0c000000 	jal	0 <func_800EC960>
    a8c8:	00000000 	nop
    a8cc:	0c000000 	jal	0 <func_800EC960>
    a8d0:	00000000 	nop
    a8d4:	24040002 	li	a0,2
    a8d8:	00002825 	move	a1,zero
    a8dc:	24060070 	li	a2,112
    a8e0:	0c000000 	jal	0 <func_800EC960>
    a8e4:	24070001 	li	a3,1
    a8e8:	8fbf0014 	lw	ra,20(sp)
    a8ec:	27bd0018 	addiu	sp,sp,24
    a8f0:	03e00008 	jr	ra
    a8f4:	00000000 	nop
	...
