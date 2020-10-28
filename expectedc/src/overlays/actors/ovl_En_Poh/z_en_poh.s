
build/src/overlays/actors/ovl_En_Poh/z_en_poh.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnPoh_Init>:
       0:	27bdffc0 	addiu	sp,sp,-64
       4:	afb10028 	sw	s1,40(sp)
       8:	00a08825 	move	s1,a1
       c:	afbf002c 	sw	ra,44(sp)
      10:	afb00024 	sw	s0,36(sp)
      14:	3c050000 	lui	a1,0x0
      18:	00808025 	move	s0,a0
      1c:	0c000000 	jal	0 <EnPoh_Init>
      20:	24a50000 	addiu	a1,a1,0
      24:	3c060000 	lui	a2,0x0
      28:	24c60000 	addiu	a2,a2,0
      2c:	260400b4 	addiu	a0,s0,180
      30:	24050000 	li	a1,0
      34:	0c000000 	jal	0 <EnPoh_Init>
      38:	3c0741f0 	lui	a3,0x41f0
      3c:	26050308 	addiu	a1,s0,776
      40:	afa50030 	sw	a1,48(sp)
      44:	0c000000 	jal	0 <EnPoh_Init>
      48:	02202025 	move	a0,s1
      4c:	3c070000 	lui	a3,0x0
      50:	260e0328 	addiu	t6,s0,808
      54:	8fa50030 	lw	a1,48(sp)
      58:	afae0010 	sw	t6,16(sp)
      5c:	24e70000 	addiu	a3,a3,0
      60:	02202025 	move	a0,s1
      64:	0c000000 	jal	0 <EnPoh_Init>
      68:	02003025 	move	a2,s0
      6c:	8e0f0324 	lw	t7,804(s0)
      70:	260502bc 	addiu	a1,s0,700
      74:	02202025 	move	a0,s1
      78:	a5e00036 	sh	zero,54(t7)
      7c:	c6040024 	lwc1	$f4,36(s0)
      80:	8e080324 	lw	t0,804(s0)
      84:	4600218d 	trunc.w.s	$f6,$f4
      88:	44193000 	mfc1	t9,$f6
      8c:	00000000 	nop
      90:	a5190030 	sh	t9,48(t0)
      94:	c6080028 	lwc1	$f8,40(s0)
      98:	8e0b0324 	lw	t3,804(s0)
      9c:	4600428d 	trunc.w.s	$f10,$f8
      a0:	440a5000 	mfc1	t2,$f10
      a4:	00000000 	nop
      a8:	a56a0032 	sh	t2,50(t3)
      ac:	c610002c 	lwc1	$f16,44(s0)
      b0:	8e0e0324 	lw	t6,804(s0)
      b4:	4600848d 	trunc.w.s	$f18,$f16
      b8:	440d9000 	mfc1	t5,$f18
      bc:	00000000 	nop
      c0:	a5cd0034 	sh	t5,52(t6)
      c4:	0c000000 	jal	0 <EnPoh_Init>
      c8:	afa50030 	sw	a1,48(sp)
      cc:	3c070000 	lui	a3,0x0
      d0:	8fa50030 	lw	a1,48(sp)
      d4:	24e70000 	addiu	a3,a3,0
      d8:	02202025 	move	a0,s1
      dc:	0c000000 	jal	0 <EnPoh_Init>
      e0:	02003025 	move	a2,s0
      e4:	3c050000 	lui	a1,0x0
      e8:	3c060000 	lui	a2,0x0
      ec:	24c60000 	addiu	a2,a2,0
      f0:	24a50000 	addiu	a1,a1,0
      f4:	0c000000 	jal	0 <EnPoh_Init>
      f8:	26040098 	addiu	a0,s0,152
      fc:	240f0020 	li	t7,32
     100:	a2000194 	sb	zero,404(s0)
     104:	a20f0195 	sb	t7,405(s0)
     108:	240402bc 	li	a0,700
     10c:	0c000000 	jal	0 <EnPoh_Init>
     110:	2405012c 	li	a1,300
     114:	a602019a 	sh	v0,410(s0)
     118:	260602ac 	addiu	a2,s0,684
     11c:	afa60030 	sw	a2,48(sp)
     120:	02202025 	move	a0,s1
     124:	0c000000 	jal	0 <EnPoh_Init>
     128:	262507a8 	addiu	a1,s1,1960
     12c:	c6040008 	lwc1	$f4,8(s0)
     130:	c608000c 	lwc1	$f8,12(s0)
     134:	c6100010 	lwc1	$f16,16(s0)
     138:	4600218d 	trunc.w.s	$f6,$f4
     13c:	ae0202a8 	sw	v0,680(s0)
     140:	240900ff 	li	t1,255
     144:	4600428d 	trunc.w.s	$f10,$f8
     148:	44053000 	mfc1	a1,$f6
     14c:	240a00ff 	li	t2,255
     150:	4600848d 	trunc.w.s	$f18,$f16
     154:	44065000 	mfc1	a2,$f10
     158:	240b00ff 	li	t3,255
     15c:	00052c00 	sll	a1,a1,0x10
     160:	44079000 	mfc1	a3,$f18
     164:	00063400 	sll	a2,a2,0x10
     168:	00063403 	sra	a2,a2,0x10
     16c:	00073c00 	sll	a3,a3,0x10
     170:	00073c03 	sra	a3,a3,0x10
     174:	00052c03 	sra	a1,a1,0x10
     178:	afab0018 	sw	t3,24(sp)
     17c:	afaa0014 	sw	t2,20(sp)
     180:	afa90010 	sw	t1,16(sp)
     184:	afa0001c 	sw	zero,28(sp)
     188:	0c000000 	jal	0 <EnPoh_Init>
     18c:	8fa40030 	lw	a0,48(sp)
     190:	8602001c 	lh	v0,28(s0)
     194:	28410004 	slti	at,v0,4
     198:	54200004 	bnezl	at,1ac <EnPoh_Init+0x1ac>
     19c:	24010001 	li	at,1
     1a0:	a600001c 	sh	zero,28(s0)
     1a4:	8602001c 	lh	v0,28(s0)
     1a8:	24010001 	li	at,1
     1ac:	5441001a 	bnel	v0,at,218 <EnPoh_Init+0x218>
     1b0:	24010003 	li	at,3
     1b4:	3c020000 	lui	v0,0x0
     1b8:	24420000 	addiu	v0,v0,0
     1bc:	844c0000 	lh	t4,0(v0)
     1c0:	02202025 	move	a0,s1
     1c4:	26050024 	addiu	a1,s0,36
     1c8:	258d0001 	addiu	t5,t4,1
     1cc:	a44d0000 	sh	t5,0(v0)
     1d0:	844e0000 	lh	t6,0(v0)
     1d4:	29c10003 	slti	at,t6,3
     1d8:	14200005 	bnez	at,1f0 <EnPoh_Init+0x1f0>
     1dc:	00000000 	nop
     1e0:	0c000000 	jal	0 <EnPoh_Init>
     1e4:	02002025 	move	a0,s0
     1e8:	10000008 	b	20c <EnPoh_Init+0x20c>
     1ec:	00000000 	nop
     1f0:	0c000000 	jal	0 <EnPoh_Init>
     1f4:	24064001 	li	a2,16385
     1f8:	10400004 	beqz	v0,20c <EnPoh_Init+0x20c>
     1fc:	00000000 	nop
     200:	44802000 	mtc1	zero,$f4
     204:	00000000 	nop
     208:	e4440068 	swc1	$f4,104(v0)
     20c:	10000026 	b	2a8 <EnPoh_Init+0x2a8>
     210:	8602001c 	lh	v0,28(s0)
     214:	24010003 	li	at,3
     218:	14410011 	bne	v0,at,260 <EnPoh_Init+0x260>
     21c:	02202025 	move	a0,s1
     220:	0c000000 	jal	0 <EnPoh_Init>
     224:	24050028 	li	a1,40
     228:	14400005 	bnez	v0,240 <EnPoh_Init+0x240>
     22c:	02202025 	move	a0,s1
     230:	0c000000 	jal	0 <EnPoh_Init>
     234:	24050009 	li	a1,9
     238:	10400005 	beqz	v0,250 <EnPoh_Init+0x250>
     23c:	02202025 	move	a0,s1
     240:	0c000000 	jal	0 <EnPoh_Init>
     244:	02002025 	move	a0,s0
     248:	10000003 	b	258 <EnPoh_Init+0x258>
     24c:	00000000 	nop
     250:	0c000000 	jal	0 <EnPoh_Init>
     254:	24050028 	li	a1,40
     258:	10000013 	b	2a8 <EnPoh_Init+0x2a8>
     25c:	8602001c 	lh	v0,28(s0)
     260:	24010002 	li	at,2
     264:	14410010 	bne	v0,at,2a8 <EnPoh_Init+0x2a8>
     268:	02202025 	move	a0,s1
     26c:	0c000000 	jal	0 <EnPoh_Init>
     270:	24050029 	li	a1,41
     274:	14400005 	bnez	v0,28c <EnPoh_Init+0x28c>
     278:	02202025 	move	a0,s1
     27c:	0c000000 	jal	0 <EnPoh_Init>
     280:	24050009 	li	a1,9
     284:	10400005 	beqz	v0,29c <EnPoh_Init+0x29c>
     288:	02202025 	move	a0,s1
     28c:	0c000000 	jal	0 <EnPoh_Init>
     290:	02002025 	move	a0,s0
     294:	10000004 	b	2a8 <EnPoh_Init+0x2a8>
     298:	8602001c 	lh	v0,28(s0)
     29c:	0c000000 	jal	0 <EnPoh_Init>
     2a0:	24050029 	li	a1,41
     2a4:	8602001c 	lh	v0,28(s0)
     2a8:	28410002 	slti	at,v0,2
     2ac:	1020000b 	beqz	at,2dc <EnPoh_Init+0x2dc>
     2b0:	2405006e 	li	a1,110
     2b4:	3c010001 	lui	at,0x1
     2b8:	342117a4 	ori	at,at,0x17a4
     2bc:	02212021 	addu	a0,s1,at
     2c0:	0c000000 	jal	0 <EnPoh_Init>
     2c4:	24050009 	li	a1,9
     2c8:	240f0044 	li	t7,68
     2cc:	a2020196 	sb	v0,406(s0)
     2d0:	a2000197 	sb	zero,407(s0)
     2d4:	1000000a 	b	300 <EnPoh_Init+0x300>
     2d8:	a20f0117 	sb	t7,279(s0)
     2dc:	3c010001 	lui	at,0x1
     2e0:	342117a4 	ori	at,at,0x17a4
     2e4:	0c000000 	jal	0 <EnPoh_Init>
     2e8:	02212021 	addu	a0,s1,at
     2ec:	24180001 	li	t8,1
     2f0:	24190043 	li	t9,67
     2f4:	a2020196 	sb	v0,406(s0)
     2f8:	a2180197 	sb	t8,407(s0)
     2fc:	a2190117 	sb	t9,279(s0)
     300:	92080197 	lbu	t0,407(s0)
     304:	820c0196 	lb	t4,406(s0)
     308:	3c0a0000 	lui	t2,0x0
     30c:	00084880 	sll	t1,t0,0x2
     310:	01284821 	addu	t1,t1,t0
     314:	000948c0 	sll	t1,t1,0x3
     318:	254a0000 	addiu	t2,t2,0
     31c:	012a5821 	addu	t3,t1,t2
     320:	05810003 	bgez	t4,330 <EnPoh_Init+0x330>
     324:	ae0b02a4 	sw	t3,676(s0)
     328:	0c000000 	jal	0 <EnPoh_Init>
     32c:	02002025 	move	a0,s0
     330:	8fbf002c 	lw	ra,44(sp)
     334:	8fb00024 	lw	s0,36(sp)
     338:	8fb10028 	lw	s1,40(sp)
     33c:	03e00008 	jr	ra
     340:	27bd0040 	addiu	sp,sp,64

00000344 <EnPoh_Destroy>:
     344:	27bdffe8 	addiu	sp,sp,-24
     348:	afa40018 	sw	a0,24(sp)
     34c:	8fae0018 	lw	t6,24(sp)
     350:	afbf0014 	sw	ra,20(sp)
     354:	00a03825 	move	a3,a1
     358:	00a02025 	move	a0,a1
     35c:	8dc602a8 	lw	a2,680(t6)
     360:	afa7001c 	sw	a3,28(sp)
     364:	0c000000 	jal	0 <EnPoh_Init>
     368:	24a507a8 	addiu	a1,a1,1960
     36c:	8fa50018 	lw	a1,24(sp)
     370:	8fa4001c 	lw	a0,28(sp)
     374:	0c000000 	jal	0 <EnPoh_Init>
     378:	24a50308 	addiu	a1,a1,776
     37c:	8fa50018 	lw	a1,24(sp)
     380:	8fa4001c 	lw	a0,28(sp)
     384:	0c000000 	jal	0 <EnPoh_Init>
     388:	24a502bc 	addiu	a1,a1,700
     38c:	8faf0018 	lw	t7,24(sp)
     390:	24010001 	li	at,1
     394:	3c020000 	lui	v0,0x0
     398:	85f8001c 	lh	t8,28(t7)
     39c:	24420000 	addiu	v0,v0,0
     3a0:	57010005 	bnel	t8,at,3b8 <EnPoh_Destroy+0x74>
     3a4:	8fbf0014 	lw	ra,20(sp)
     3a8:	84590000 	lh	t9,0(v0)
     3ac:	2728ffff 	addiu	t0,t9,-1
     3b0:	a4480000 	sh	t0,0(v0)
     3b4:	8fbf0014 	lw	ra,20(sp)
     3b8:	27bd0018 	addiu	sp,sp,24
     3bc:	03e00008 	jr	ra
     3c0:	00000000 	nop

000003c4 <func_80ADE114>:
     3c4:	27bdffe8 	addiu	sp,sp,-24
     3c8:	afbf0014 	sw	ra,20(sp)
     3cc:	00803025 	move	a2,a0
     3d0:	8cce02a4 	lw	t6,676(a2)
     3d4:	2484014c 	addiu	a0,a0,332
     3d8:	8dc5000c 	lw	a1,12(t6)
     3dc:	0c000000 	jal	0 <EnPoh_Init>
     3e0:	afa60018 	sw	a2,24(sp)
     3e4:	24040002 	li	a0,2
     3e8:	0c000000 	jal	0 <EnPoh_Init>
     3ec:	24050003 	li	a1,3
     3f0:	8fa60018 	lw	a2,24(sp)
     3f4:	44802000 	mtc1	zero,$f4
     3f8:	3c0f0000 	lui	t7,0x0
     3fc:	25ef0000 	addiu	t7,t7,0
     400:	a4c20198 	sh	v0,408(a2)
     404:	accf0190 	sw	t7,400(a2)
     408:	e4c40068 	swc1	$f4,104(a2)
     40c:	8fbf0014 	lw	ra,20(sp)
     410:	27bd0018 	addiu	sp,sp,24
     414:	03e00008 	jr	ra
     418:	00000000 	nop

0000041c <func_80ADE16C>:
     41c:	27bdffe8 	addiu	sp,sp,-24
     420:	afbf0014 	sw	ra,20(sp)
     424:	00803025 	move	a2,a0
     428:	8cce02a4 	lw	t6,676(a2)
     42c:	2484014c 	addiu	a0,a0,332
     430:	8dc50010 	lw	a1,16(t6)
     434:	0c000000 	jal	0 <EnPoh_Init>
     438:	afa60018 	sw	a2,24(sp)
     43c:	2404000f 	li	a0,15
     440:	0c000000 	jal	0 <EnPoh_Init>
     444:	24050003 	li	a1,3
     448:	8fa60018 	lw	a2,24(sp)
     44c:	3c0f0000 	lui	t7,0x0
     450:	25ef0000 	addiu	t7,t7,0
     454:	a4c20198 	sh	v0,408(a2)
     458:	accf0190 	sw	t7,400(a2)
     45c:	8fbf0014 	lw	ra,20(sp)
     460:	27bd0018 	addiu	sp,sp,24
     464:	03e00008 	jr	ra
     468:	00000000 	nop

0000046c <func_80ADE1BC>:
     46c:	27bdffe8 	addiu	sp,sp,-24
     470:	afbf0014 	sw	ra,20(sp)
     474:	00803025 	move	a2,a0
     478:	8cce02a4 	lw	t6,676(a2)
     47c:	2484014c 	addiu	a0,a0,332
     480:	8dc50010 	lw	a1,16(t6)
     484:	0c000000 	jal	0 <EnPoh_Init>
     488:	afa60018 	sw	a2,24(sp)
     48c:	8fa60018 	lw	a2,24(sp)
     490:	3c014000 	lui	at,0x4000
     494:	44812000 	mtc1	at,$f4
     498:	3c0f0000 	lui	t7,0x0
     49c:	25ef0000 	addiu	t7,t7,0
     4a0:	accf0190 	sw	t7,400(a2)
     4a4:	a4c00198 	sh	zero,408(a2)
     4a8:	e4c40068 	swc1	$f4,104(a2)
     4ac:	8fbf0014 	lw	ra,20(sp)
     4b0:	27bd0018 	addiu	sp,sp,24
     4b4:	03e00008 	jr	ra
     4b8:	00000000 	nop

000004bc <func_80ADE20C>:
     4bc:	27bdffe0 	addiu	sp,sp,-32
     4c0:	afbf001c 	sw	ra,28(sp)
     4c4:	afb00018 	sw	s0,24(sp)
     4c8:	908e0197 	lbu	t6,407(a0)
     4cc:	3c050600 	lui	a1,0x600
     4d0:	00808025 	move	s0,a0
     4d4:	15c00008 	bnez	t6,4f8 <func_80ADE20C+0x3c>
     4d8:	24a5020c 	addiu	a1,a1,524
     4dc:	3c050600 	lui	a1,0x600
     4e0:	24a501a8 	addiu	a1,a1,424
     4e4:	2484014c 	addiu	a0,a0,332
     4e8:	0c000000 	jal	0 <EnPoh_Init>
     4ec:	3c06c0c0 	lui	a2,0xc0c0
     4f0:	10000004 	b	504 <func_80ADE20C+0x48>
     4f4:	44802000 	mtc1	zero,$f4
     4f8:	0c000000 	jal	0 <EnPoh_Init>
     4fc:	2604014c 	addiu	a0,s0,332
     500:	44802000 	mtc1	zero,$f4
     504:	240f000c 	li	t7,12
     508:	a60f0198 	sh	t7,408(s0)
     50c:	02002025 	move	a0,s0
     510:	240538ec 	li	a1,14572
     514:	0c000000 	jal	0 <EnPoh_Init>
     518:	e6040068 	swc1	$f4,104(s0)
     51c:	3c180000 	lui	t8,0x0
     520:	27180000 	addiu	t8,t8,0
     524:	ae180190 	sw	t8,400(s0)
     528:	8fbf001c 	lw	ra,28(sp)
     52c:	8fb00018 	lw	s0,24(sp)
     530:	27bd0020 	addiu	sp,sp,32
     534:	03e00008 	jr	ra
     538:	00000000 	nop

0000053c <func_80ADE28C>:
     53c:	27bdffd8 	addiu	sp,sp,-40
     540:	afbf0024 	sw	ra,36(sp)
     544:	afb00020 	sw	s0,32(sp)
     548:	908e0197 	lbu	t6,407(a0)
     54c:	3c050600 	lui	a1,0x600
     550:	00808025 	move	s0,a0
     554:	15c00008 	bnez	t6,578 <func_80ADE28C+0x3c>
     558:	24a50570 	addiu	a1,a1,1392
     55c:	3c050600 	lui	a1,0x600
     560:	24a504ec 	addiu	a1,a1,1260
     564:	2484014c 	addiu	a0,a0,332
     568:	0c000000 	jal	0 <EnPoh_Init>
     56c:	3c06c0c0 	lui	a2,0xc0c0
     570:	10000004 	b	584 <func_80ADE28C+0x48>
     574:	8e0f02f8 	lw	t7,760(s0)
     578:	0c000000 	jal	0 <EnPoh_Init>
     57c:	2604014c 	addiu	a0,s0,332
     580:	8e0f02f8 	lw	t7,760(s0)
     584:	3c010001 	lui	at,0x1
     588:	3421f824 	ori	at,at,0xf824
     58c:	8df80000 	lw	t8,0(t7)
     590:	02002025 	move	a0,s0
     594:	0301c824 	and	t9,t8,at
     598:	13200005 	beqz	t9,5b0 <func_80ADE28C+0x74>
     59c:	00000000 	nop
     5a0:	8e0802c4 	lw	t0,708(s0)
     5a4:	85090032 	lh	t1,50(t0)
     5a8:	10000006 	b	5c4 <func_80ADE28C+0x88>
     5ac:	a6090032 	sh	t1,50(s0)
     5b0:	0c000000 	jal	0 <EnPoh_Init>
     5b4:	8e0502c4 	lw	a1,708(s0)
     5b8:	34018000 	li	at,0x8000
     5bc:	00415021 	addu	t2,v0,at
     5c0:	a60a0032 	sh	t2,50(s0)
     5c4:	920b02cd 	lbu	t3,717(s0)
     5c8:	3c0140a0 	lui	at,0x40a0
     5cc:	44812000 	mtc1	at,$f4
     5d0:	316cfffe 	andi	t4,t3,0xfffe
     5d4:	a20c02cd 	sb	t4,717(s0)
     5d8:	240d0010 	li	t5,16
     5dc:	e6040068 	swc1	$f4,104(s0)
     5e0:	afad0010 	sw	t5,16(sp)
     5e4:	02002025 	move	a0,s0
     5e8:	24054000 	li	a1,16384
     5ec:	240600ff 	li	a2,255
     5f0:	0c000000 	jal	0 <EnPoh_Init>
     5f4:	00003825 	move	a3,zero
     5f8:	3c0e0000 	lui	t6,0x0
     5fc:	25ce0000 	addiu	t6,t6,0
     600:	ae0e0190 	sw	t6,400(s0)
     604:	8fbf0024 	lw	ra,36(sp)
     608:	8fb00020 	lw	s0,32(sp)
     60c:	27bd0028 	addiu	sp,sp,40
     610:	03e00008 	jr	ra
     614:	00000000 	nop

00000618 <func_80ADE368>:
     618:	27bdffe8 	addiu	sp,sp,-24
     61c:	afbf0014 	sw	ra,20(sp)
     620:	00803825 	move	a3,a0
     624:	8cee02a4 	lw	t6,676(a3)
     628:	2484014c 	addiu	a0,a0,332
     62c:	3c06c0a0 	lui	a2,0xc0a0
     630:	8dc50018 	lw	a1,24(t6)
     634:	0c000000 	jal	0 <EnPoh_Init>
     638:	afa70018 	sw	a3,24(sp)
     63c:	8fa70018 	lw	a3,24(sp)
     640:	3c0140a0 	lui	at,0x40a0
     644:	44812000 	mtc1	at,$f4
     648:	84ef00b6 	lh	t7,182(a3)
     64c:	90f902cd 	lbu	t9,717(a3)
     650:	34018000 	li	at,0x8000
     654:	3c0a0000 	lui	t2,0x0
     658:	240900c8 	li	t1,200
     65c:	254a0000 	addiu	t2,t2,0
     660:	01e1c021 	addu	t8,t7,at
     664:	37280001 	ori	t0,t9,0x1
     668:	a4f80032 	sh	t8,50(a3)
     66c:	a0e802cd 	sb	t0,717(a3)
     670:	a4e90198 	sh	t1,408(a3)
     674:	acea0190 	sw	t2,400(a3)
     678:	e4e40068 	swc1	$f4,104(a3)
     67c:	8fbf0014 	lw	ra,20(sp)
     680:	27bd0018 	addiu	sp,sp,24
     684:	03e00008 	jr	ra
     688:	00000000 	nop

0000068c <func_80ADE3DC>:
     68c:	27bdffe0 	addiu	sp,sp,-32
     690:	afbf001c 	sw	ra,28(sp)
     694:	afb00018 	sw	s0,24(sp)
     698:	8c8e0004 	lw	t6,4(a0)
     69c:	90980197 	lbu	t8,407(a0)
     6a0:	2401fffe 	li	at,-2
     6a4:	01c17824 	and	t7,t6,at
     6a8:	00808025 	move	s0,a0
     6ac:	a080029d 	sb	zero,669(a0)
     6b0:	1700000a 	bnez	t8,6dc <func_80ADE3DC+0x50>
     6b4:	ac8f0004 	sw	t7,4(a0)
     6b8:	3c050600 	lui	a1,0x600
     6bc:	24a511c4 	addiu	a1,a1,4548
     6c0:	2484014c 	addiu	a0,a0,332
     6c4:	0c000000 	jal	0 <EnPoh_Init>
     6c8:	24060000 	li	a2,0
     6cc:	3c190000 	lui	t9,0x0
     6d0:	27390000 	addiu	t9,t9,0
     6d4:	10000014 	b	728 <func_80ADE3DC+0x9c>
     6d8:	ae190190 	sw	t9,400(s0)
     6dc:	3c050600 	lui	a1,0x600
     6e0:	24a50fe4 	addiu	a1,a1,4068
     6e4:	2604014c 	addiu	a0,s0,332
     6e8:	0c000000 	jal	0 <EnPoh_Init>
     6ec:	3c063f80 	lui	a2,0x3f80
     6f0:	3c0141a0 	lui	at,0x41a0
     6f4:	44813000 	mtc1	at,$f6
     6f8:	c604000c 	lwc1	$f4,12(s0)
     6fc:	02002025 	move	a0,s0
     700:	240538ec 	li	a1,14572
     704:	46062200 	add.s	$f8,$f4,$f6
     708:	0c000000 	jal	0 <EnPoh_Init>
     70c:	e6080028 	swc1	$f8,40(s0)
     710:	02002025 	move	a0,s0
     714:	0c000000 	jal	0 <EnPoh_Init>
     718:	24053873 	li	a1,14451
     71c:	3c080000 	lui	t0,0x0
     720:	25080000 	addiu	t0,t0,0
     724:	ae080190 	sw	t0,400(s0)
     728:	8fbf001c 	lw	ra,28(sp)
     72c:	8fb00018 	lw	s0,24(sp)
     730:	27bd0020 	addiu	sp,sp,32
     734:	03e00008 	jr	ra
     738:	00000000 	nop

0000073c <func_80ADE48C>:
     73c:	8c980004 	lw	t8,4(a0)
     740:	44802000 	mtc1	zero,$f4
     744:	848e00b6 	lh	t6,182(a0)
     748:	2401fffe 	li	at,-2
     74c:	3c080000 	lui	t0,0x0
     750:	240f00ff 	li	t7,255
     754:	25080000 	addiu	t0,t0,0
     758:	0301c824 	and	t9,t8,at
     75c:	a4800198 	sh	zero,408(a0)
     760:	a08f0117 	sb	t7,279(a0)
     764:	ac990004 	sw	t9,4(a0)
     768:	ac880190 	sw	t0,400(a0)
     76c:	e4840068 	swc1	$f4,104(a0)
     770:	03e00008 	jr	ra
     774:	a48e0032 	sh	t6,50(a0)

00000778 <func_80ADE4C8>:
     778:	27bdffe8 	addiu	sp,sp,-24
     77c:	afbf0014 	sw	ra,20(sp)
     780:	00803025 	move	a2,a0
     784:	8cce02a4 	lw	t6,676(a2)
     788:	2484014c 	addiu	a0,a0,332
     78c:	8dc50010 	lw	a1,16(t6)
     790:	0c000000 	jal	0 <EnPoh_Init>
     794:	afa60018 	sw	a2,24(sp)
     798:	8fa60018 	lw	a2,24(sp)
     79c:	3c01c0a0 	lui	at,0xc0a0
     7a0:	44812000 	mtc1	at,$f4
     7a4:	3c0f0000 	lui	t7,0x0
     7a8:	25ef0000 	addiu	t7,t7,0
     7ac:	accf0190 	sw	t7,400(a2)
     7b0:	e4c40068 	swc1	$f4,104(a2)
     7b4:	8fbf0014 	lw	ra,20(sp)
     7b8:	27bd0018 	addiu	sp,sp,24
     7bc:	03e00008 	jr	ra
     7c0:	00000000 	nop

000007c4 <func_80ADE514>:
     7c4:	27bdffe8 	addiu	sp,sp,-24
     7c8:	afbf0014 	sw	ra,20(sp)
     7cc:	00803025 	move	a2,a0
     7d0:	8cce02a4 	lw	t6,676(a2)
     7d4:	2484014c 	addiu	a0,a0,332
     7d8:	8dc5000c 	lw	a1,12(t6)
     7dc:	0c000000 	jal	0 <EnPoh_Init>
     7e0:	afa60018 	sw	a2,24(sp)
     7e4:	8fa60018 	lw	a2,24(sp)
     7e8:	44802000 	mtc1	zero,$f4
     7ec:	34018000 	li	at,0x8000
     7f0:	84cf0032 	lh	t7,50(a2)
     7f4:	3c190000 	lui	t9,0x0
     7f8:	27390000 	addiu	t9,t9,0
     7fc:	01e1c021 	addu	t8,t7,at
     800:	a4d8019c 	sh	t8,412(a2)
     804:	acd90190 	sw	t9,400(a2)
     808:	e4c40068 	swc1	$f4,104(a2)
     80c:	8fbf0014 	lw	ra,20(sp)
     810:	27bd0018 	addiu	sp,sp,24
     814:	03e00008 	jr	ra
     818:	00000000 	nop

0000081c <func_80ADE56C>:
     81c:	27bdffe8 	addiu	sp,sp,-24
     820:	afbf0014 	sw	ra,20(sp)
     824:	44802000 	mtc1	zero,$f4
     828:	848f00b6 	lh	t7,182(a0)
     82c:	240e0020 	li	t6,32
     830:	a08e0194 	sb	t6,404(a0)
     834:	e4840068 	swc1	$f4,104(a0)
     838:	a48f0032 	sh	t7,50(a0)
     83c:	afa40018 	sw	a0,24(sp)
     840:	0c000000 	jal	0 <EnPoh_Init>
     844:	24053874 	li	a1,14452
     848:	8fa40018 	lw	a0,24(sp)
     84c:	0c000000 	jal	0 <EnPoh_Init>
     850:	240538ec 	li	a1,14572
     854:	8fa40018 	lw	a0,24(sp)
     858:	3c180000 	lui	t8,0x0
     85c:	27180000 	addiu	t8,t8,0
     860:	ac980190 	sw	t8,400(a0)
     864:	8fbf0014 	lw	ra,20(sp)
     868:	27bd0018 	addiu	sp,sp,24
     86c:	03e00008 	jr	ra
     870:	00000000 	nop

00000874 <func_80ADE5C4>:
     874:	44802000 	mtc1	zero,$f4
     878:	27bdffe8 	addiu	sp,sp,-24
     87c:	afbf0014 	sw	ra,20(sp)
     880:	a0800194 	sb	zero,404(a0)
     884:	e4840068 	swc1	$f4,104(a0)
     888:	afa40018 	sw	a0,24(sp)
     88c:	0c000000 	jal	0 <EnPoh_Init>
     890:	24053873 	li	a1,14451
     894:	8fa40018 	lw	a0,24(sp)
     898:	0c000000 	jal	0 <EnPoh_Init>
     89c:	240538ec 	li	a1,14572
     8a0:	8fa40018 	lw	a0,24(sp)
     8a4:	3c0e0000 	lui	t6,0x0
     8a8:	25ce0000 	addiu	t6,t6,0
     8ac:	ac8e0190 	sw	t6,400(a0)
     8b0:	8fbf0014 	lw	ra,20(sp)
     8b4:	27bd0018 	addiu	sp,sp,24
     8b8:	03e00008 	jr	ra
     8bc:	00000000 	nop

000008c0 <func_80ADE610>:
     8c0:	27bdffe8 	addiu	sp,sp,-24
     8c4:	afa5001c 	sw	a1,28(sp)
     8c8:	afbf0014 	sw	ra,20(sp)
     8cc:	3c0e0000 	lui	t6,0x0
     8d0:	3c0f0000 	lui	t7,0x0
     8d4:	25ce0000 	addiu	t6,t6,0
     8d8:	25ef0000 	addiu	t7,t7,0
     8dc:	ac8e0130 	sw	t6,304(a0)
     8e0:	ac8f0134 	sw	t7,308(a0)
     8e4:	ac8000c0 	sw	zero,192(a0)
     8e8:	3c053c23 	lui	a1,0x3c23
     8ec:	34a5d70a 	ori	a1,a1,0xd70a
     8f0:	0c000000 	jal	0 <EnPoh_Init>
     8f4:	afa40018 	sw	a0,24(sp)
     8f8:	8fa60018 	lw	a2,24(sp)
     8fc:	3c01bf80 	lui	at,0xbf80
     900:	44812000 	mtc1	at,$f4
     904:	8cd80004 	lw	t8,4(a2)
     908:	8fa4001c 	lw	a0,28(sp)
     90c:	3c010000 	lui	at,0x0
     910:	37190010 	ori	t9,t8,0x10
     914:	acd90004 	sw	t9,4(a2)
     918:	e4c4006c 	swc1	$f4,108(a2)
     91c:	c4260000 	lwc1	$f6,0(at)
     920:	3c014170 	lui	at,0x4170
     924:	44815000 	mtc1	at,$f10
     928:	c4c80028 	lwc1	$f8,40(a2)
     92c:	90c80197 	lbu	t0,407(a2)
     930:	24010001 	li	at,1
     934:	460a4401 	sub.s	$f16,$f8,$f10
     938:	24851c24 	addiu	a1,a0,7204
     93c:	e4c600bc 	swc1	$f6,188(a2)
     940:	11010003 	beq	t0,at,950 <func_80ADE610+0x90>
     944:	e4d00028 	swc1	$f16,40(a2)
     948:	24098000 	li	t1,-32768
     94c:	a4c900b4 	sh	t1,180(a2)
     950:	24070008 	li	a3,8
     954:	0c000000 	jal	0 <EnPoh_Init>
     958:	afa60018 	sw	a2,24(sp)
     95c:	8fa60018 	lw	a2,24(sp)
     960:	3c0b0000 	lui	t3,0x0
     964:	240a003c 	li	t2,60
     968:	256b0000 	addiu	t3,t3,0
     96c:	a4ca0198 	sh	t2,408(a2)
     970:	accb0190 	sw	t3,400(a2)
     974:	8fbf0014 	lw	ra,20(sp)
     978:	27bd0018 	addiu	sp,sp,24
     97c:	03e00008 	jr	ra
     980:	00000000 	nop

00000984 <func_80ADE6D4>:
     984:	27bdffd0 	addiu	sp,sp,-48
     988:	afb00028 	sw	s0,40(sp)
     98c:	00808025 	move	s0,a0
     990:	afbf002c 	sw	ra,44(sp)
     994:	c610002c 	lwc1	$f16,44(s0)
     998:	c6080028 	lwc1	$f8,40(s0)
     99c:	c6040024 	lwc1	$f4,36(s0)
     9a0:	4600848d 	trunc.w.s	$f18,$f16
     9a4:	afa0001c 	sw	zero,28(sp)
     9a8:	afa00018 	sw	zero,24(sp)
     9ac:	4600428d 	trunc.w.s	$f10,$f8
     9b0:	44079000 	mfc1	a3,$f18
     9b4:	afa00014 	sw	zero,20(sp)
     9b8:	4600218d 	trunc.w.s	$f6,$f4
     9bc:	44065000 	mfc1	a2,$f10
     9c0:	00073c00 	sll	a3,a3,0x10
     9c4:	00073c03 	sra	a3,a3,0x10
     9c8:	44053000 	mfc1	a1,$f6
     9cc:	00063400 	sll	a2,a2,0x10
     9d0:	00063403 	sra	a2,a2,0x10
     9d4:	00052c00 	sll	a1,a1,0x10
     9d8:	00052c03 	sra	a1,a1,0x10
     9dc:	afa00010 	sw	zero,16(sp)
     9e0:	0c000000 	jal	0 <EnPoh_Init>
     9e4:	248402ac 	addiu	a0,a0,684
     9e8:	44800000 	mtc1	zero,$f0
     9ec:	8619001c 	lh	t9,28(s0)
     9f0:	a600019a 	sh	zero,410(s0)
     9f4:	a60000b6 	sh	zero,182(s0)
     9f8:	2b210002 	slti	at,t9,2
     9fc:	a200029a 	sb	zero,666(s0)
     a00:	a200029d 	sb	zero,669(s0)
     a04:	e60000bc 	swc1	$f0,188(s0)
     a08:	e600006c 	swc1	$f0,108(s0)
     a0c:	14200005 	bnez	at,a24 <func_80ADE6D4+0xa0>
     a10:	e6000060 	swc1	$f0,96(s0)
     a14:	240800c8 	li	t0,200
     a18:	a208029b 	sb	t0,667(s0)
     a1c:	10000004 	b	a30 <func_80ADE6D4+0xac>
     a20:	a200029c 	sb	zero,668(s0)
     a24:	240900c8 	li	t1,200
     a28:	a200029b 	sb	zero,667(s0)
     a2c:	a209029c 	sb	t1,668(s0)
     a30:	c6040028 	lwc1	$f4,40(s0)
     a34:	e6000050 	swc1	$f0,80(s0)
     a38:	e6000054 	swc1	$f0,84(s0)
     a3c:	a60000b4 	sh	zero,180(s0)
     a40:	02002025 	move	a0,s0
     a44:	240528e0 	li	a1,10464
     a48:	0c000000 	jal	0 <EnPoh_Init>
     a4c:	e604000c 	swc1	$f4,12(s0)
     a50:	3c0a0000 	lui	t2,0x0
     a54:	254a0000 	addiu	t2,t2,0
     a58:	ae0a0190 	sw	t2,400(s0)
     a5c:	8fbf002c 	lw	ra,44(sp)
     a60:	8fb00028 	lw	s0,40(sp)
     a64:	27bd0030 	addiu	sp,sp,48
     a68:	03e00008 	jr	ra
     a6c:	00000000 	nop

00000a70 <func_80ADE7C0>:
     a70:	27bdffe8 	addiu	sp,sp,-24
     a74:	afbf0014 	sw	ra,20(sp)
     a78:	afa5001c 	sw	a1,28(sp)
     a7c:	c4840028 	lwc1	$f4,40(a0)
     a80:	3c05c120 	lui	a1,0xc120
     a84:	e484000c 	swc1	$f4,12(a0)
     a88:	0c000000 	jal	0 <EnPoh_Init>
     a8c:	afa40018 	sw	a0,24(sp)
     a90:	8fa60018 	lw	a2,24(sp)
     a94:	3c0141a0 	lui	at,0x41a0
     a98:	44818000 	mtc1	at,$f16
     a9c:	c4c60024 	lwc1	$f6,36(a2)
     aa0:	c4ca0028 	lwc1	$f10,40(a2)
     aa4:	84c2001c 	lh	v0,28(a2)
     aa8:	4600320d 	trunc.w.s	$f8,$f6
     aac:	c4c6002c 	lwc1	$f6,44(a2)
     ab0:	240e000d 	li	t6,13
     ab4:	46105481 	sub.s	$f18,$f10,$f16
     ab8:	44194000 	mfc1	t9,$f8
     abc:	240f001e 	li	t7,30
     ac0:	4600320d 	trunc.w.s	$f8,$f6
     ac4:	240c0009 	li	t4,9
     ac8:	24010003 	li	at,3
     acc:	4600910d 	trunc.w.s	$f4,$f18
     ad0:	440b4000 	mfc1	t3,$f8
     ad4:	a4ce02fc 	sh	t6,764(a2)
     ad8:	a4cf02fe 	sh	t7,766(a2)
     adc:	44092000 	mfc1	t1,$f4
     ae0:	a4c00300 	sh	zero,768(a2)
     ae4:	a0cc02ce 	sb	t4,718(a2)
     ae8:	a4d90302 	sh	t9,770(a2)
     aec:	a4cb0306 	sh	t3,774(a2)
     af0:	10410004 	beq	v0,at,b04 <func_80ADE7C0+0x94>
     af4:	a4c90304 	sh	t1,772(a2)
     af8:	24010002 	li	at,2
     afc:	14410031 	bne	v0,at,bc4 <func_80ADE7C0+0x154>
     b00:	240a5005 	li	t2,20485
     b04:	3c0d0000 	lui	t5,0x0
     b08:	3c0e0000 	lui	t6,0x0
     b0c:	8dce00a4 	lw	t6,164(t6)
     b10:	8dad003c 	lw	t5,60(t5)
     b14:	24185000 	li	t8,20480
     b18:	8fa4001c 	lw	a0,28(sp)
     b1c:	01ae7824 	and	t7,t5,t6
     b20:	11e00003 	beqz	t7,b30 <func_80ADE7C0+0xc0>
     b24:	2405000a 	li	a1,10
     b28:	10000027 	b	bc8 <func_80ADE7C0+0x158>
     b2c:	a4d8010e 	sh	t8,270(a2)
     b30:	0c000000 	jal	0 <EnPoh_Init>
     b34:	afa60018 	sw	a2,24(sp)
     b38:	1440000a 	bnez	v0,b64 <func_80ADE7C0+0xf4>
     b3c:	8fa60018 	lw	a2,24(sp)
     b40:	8fa4001c 	lw	a0,28(sp)
     b44:	2405000b 	li	a1,11
     b48:	0c000000 	jal	0 <EnPoh_Init>
     b4c:	afa60018 	sw	a2,24(sp)
     b50:	14400004 	bnez	v0,b64 <func_80ADE7C0+0xf4>
     b54:	8fa60018 	lw	a2,24(sp)
     b58:	2419500f 	li	t9,20495
     b5c:	1000001a 	b	bc8 <func_80ADE7C0+0x158>
     b60:	a4d9010e 	sh	t9,270(a2)
     b64:	84c2001c 	lh	v0,28(a2)
     b68:	24010003 	li	at,3
     b6c:	8fa4001c 	lw	a0,28(sp)
     b70:	14410006 	bne	v0,at,b8c <func_80ADE7C0+0x11c>
     b74:	2405000a 	li	a1,10
     b78:	0c000000 	jal	0 <EnPoh_Init>
     b7c:	afa60018 	sw	a2,24(sp)
     b80:	1440000a 	bnez	v0,bac <func_80ADE7C0+0x13c>
     b84:	8fa60018 	lw	a2,24(sp)
     b88:	84c2001c 	lh	v0,28(a2)
     b8c:	24010002 	li	at,2
     b90:	14410009 	bne	v0,at,bb8 <func_80ADE7C0+0x148>
     b94:	8fa4001c 	lw	a0,28(sp)
     b98:	2405000b 	li	a1,11
     b9c:	0c000000 	jal	0 <EnPoh_Init>
     ba0:	afa60018 	sw	a2,24(sp)
     ba4:	10400004 	beqz	v0,bb8 <func_80ADE7C0+0x148>
     ba8:	8fa60018 	lw	a2,24(sp)
     bac:	24085013 	li	t0,20499
     bb0:	10000005 	b	bc8 <func_80ADE7C0+0x158>
     bb4:	a4c8010e 	sh	t0,270(a2)
     bb8:	24095012 	li	t1,20498
     bbc:	10000002 	b	bc8 <func_80ADE7C0+0x158>
     bc0:	a4c9010e 	sh	t1,270(a2)
     bc4:	a4ca010e 	sh	t2,270(a2)
     bc8:	8ccd0004 	lw	t5,4(a2)
     bcc:	3c0f0000 	lui	t7,0x0
     bd0:	240b00c8 	li	t3,200
     bd4:	240c0020 	li	t4,32
     bd8:	25ef0000 	addiu	t7,t7,0
     bdc:	35ae0001 	ori	t6,t5,0x1
     be0:	a4cb0198 	sh	t3,408(a2)
     be4:	a0cc0195 	sb	t4,405(a2)
     be8:	acce0004 	sw	t6,4(a2)
     bec:	accf0190 	sw	t7,400(a2)
     bf0:	8fbf0014 	lw	ra,20(sp)
     bf4:	27bd0018 	addiu	sp,sp,24
     bf8:	03e00008 	jr	ra
     bfc:	00000000 	nop

00000c00 <func_80ADE950>:
     c00:	27bdffe8 	addiu	sp,sp,-24
     c04:	afbf0014 	sw	ra,20(sp)
     c08:	10a00007 	beqz	a1,c28 <func_80ADE950+0x28>
     c0c:	afa40018 	sw	a0,24(sp)
     c10:	248400e4 	addiu	a0,a0,228
     c14:	0c000000 	jal	0 <EnPoh_Init>
     c18:	240531e8 	li	a1,12776
     c1c:	8fa40018 	lw	a0,24(sp)
     c20:	0c000000 	jal	0 <EnPoh_Init>
     c24:	240538ec 	li	a1,14572
     c28:	8faf0018 	lw	t7,24(sp)
     c2c:	3c0e0000 	lui	t6,0x0
     c30:	25ce0000 	addiu	t6,t6,0
     c34:	adee0190 	sw	t6,400(t7)
     c38:	8fbf0014 	lw	ra,20(sp)
     c3c:	27bd0018 	addiu	sp,sp,24
     c40:	03e00008 	jr	ra
     c44:	00000000 	nop

00000c48 <func_80ADE998>:
     c48:	3c014170 	lui	at,0x4170
     c4c:	44813000 	mtc1	at,$f6
     c50:	c4840028 	lwc1	$f4,40(a0)
     c54:	3c0e0000 	lui	t6,0x0
     c58:	25ce0000 	addiu	t6,t6,0
     c5c:	46062201 	sub.s	$f8,$f4,$f6
     c60:	ac8e0190 	sw	t6,400(a0)
     c64:	03e00008 	jr	ra
     c68:	e488000c 	swc1	$f8,12(a0)

00000c6c <func_80ADE9BC>:
     c6c:	3c0e0000 	lui	t6,0x0
     c70:	25ce0000 	addiu	t6,t6,0
     c74:	03e00008 	jr	ra
     c78:	ac8e0190 	sw	t6,400(a0)

00000c7c <func_80ADE9CC>:
     c7c:	27bdffe8 	addiu	sp,sp,-24
     c80:	afbf0014 	sw	ra,20(sp)
     c84:	afa5001c 	sw	a1,28(sp)
     c88:	8ca21c44 	lw	v0,7236(a1)
     c8c:	00803825 	move	a3,a0
     c90:	24840028 	addiu	a0,a0,40
     c94:	8c450028 	lw	a1,40(v0)
     c98:	afa70018 	sw	a3,24(sp)
     c9c:	0c000000 	jal	0 <EnPoh_Init>
     ca0:	3c063f80 	lui	a2,0x3f80
     ca4:	8fa70018 	lw	a3,24(sp)
     ca8:	90e40195 	lbu	a0,405(a3)
     cac:	000422c0 	sll	a0,a0,0xb
     cb0:	00042400 	sll	a0,a0,0x10
     cb4:	0c000000 	jal	0 <EnPoh_Init>
     cb8:	00042403 	sra	a0,a0,0x10
     cbc:	3c014020 	lui	at,0x4020
     cc0:	44813000 	mtc1	at,$f6
     cc4:	8fa70018 	lw	a3,24(sp)
     cc8:	24180020 	li	t8,32
     ccc:	46003202 	mul.s	$f8,$f6,$f0
     cd0:	c4e40028 	lwc1	$f4,40(a3)
     cd4:	90e20195 	lbu	v0,405(a3)
     cd8:	244fffff 	addiu	t7,v0,-1
     cdc:	46082280 	add.s	$f10,$f4,$f8
     ce0:	10400003 	beqz	v0,cf0 <func_80ADE9CC+0x74>
     ce4:	e4ea0028 	swc1	$f10,40(a3)
     ce8:	a0ef0195 	sb	t7,405(a3)
     cec:	31e200ff 	andi	v0,t7,0xff
     cf0:	54400003 	bnezl	v0,d00 <func_80ADE9CC+0x84>
     cf4:	8fbf0014 	lw	ra,20(sp)
     cf8:	a0f80195 	sb	t8,405(a3)
     cfc:	8fbf0014 	lw	ra,20(sp)
     d00:	27bd0018 	addiu	sp,sp,24
     d04:	03e00008 	jr	ra
     d08:	00000000 	nop

00000d0c <func_80ADEA5C>:
     d0c:	27bdffe0 	addiu	sp,sp,-32
     d10:	afbf0014 	sw	ra,20(sp)
     d14:	24850008 	addiu	a1,a0,8
     d18:	afa5001c 	sw	a1,28(sp)
     d1c:	0c000000 	jal	0 <EnPoh_Init>
     d20:	afa40020 	sw	a0,32(sp)
     d24:	3c0143c8 	lui	at,0x43c8
     d28:	44812000 	mtc1	at,$f4
     d2c:	8fa70020 	lw	a3,32(sp)
     d30:	8fa5001c 	lw	a1,28(sp)
     d34:	4600203c 	c.lt.s	$f4,$f0
     d38:	00e02025 	move	a0,a3
     d3c:	45020006 	bc1fl	d58 <func_80ADEA5C+0x4c>
     d40:	24e40032 	addiu	a0,a3,50
     d44:	0c000000 	jal	0 <EnPoh_Init>
     d48:	afa70020 	sw	a3,32(sp)
     d4c:	8fa70020 	lw	a3,32(sp)
     d50:	a4e2019c 	sh	v0,412(a3)
     d54:	24e40032 	addiu	a0,a3,50
     d58:	84e5019c 	lh	a1,412(a3)
     d5c:	0c000000 	jal	0 <EnPoh_Init>
     d60:	2406071c 	li	a2,1820
     d64:	8fbf0014 	lw	ra,20(sp)
     d68:	27bd0020 	addiu	sp,sp,32
     d6c:	03e00008 	jr	ra
     d70:	00000000 	nop

00000d74 <func_80ADEAC4>:
     d74:	27bdffd8 	addiu	sp,sp,-40
     d78:	afb00018 	sw	s0,24(sp)
     d7c:	00808025 	move	s0,a0
     d80:	afbf001c 	sw	ra,28(sp)
     d84:	2484014c 	addiu	a0,a0,332
     d88:	afa5002c 	sw	a1,44(sp)
     d8c:	0c000000 	jal	0 <EnPoh_Init>
     d90:	afa40024 	sw	a0,36(sp)
     d94:	8fa40024 	lw	a0,36(sp)
     d98:	0c000000 	jal	0 <EnPoh_Init>
     d9c:	24050000 	li	a1,0
     da0:	10400005 	beqz	v0,db8 <func_80ADEAC4+0x44>
     da4:	02002025 	move	a0,s0
     da8:	86020198 	lh	v0,408(s0)
     dac:	10400002 	beqz	v0,db8 <func_80ADEAC4+0x44>
     db0:	244effff 	addiu	t6,v0,-1
     db4:	a60e0198 	sh	t6,408(s0)
     db8:	0c000000 	jal	0 <EnPoh_Init>
     dbc:	8fa5002c 	lw	a1,44(sp)
     dc0:	3c014348 	lui	at,0x4348
     dc4:	44813000 	mtc1	at,$f6
     dc8:	c6040090 	lwc1	$f4,144(s0)
     dcc:	4606203c 	c.lt.s	$f4,$f6
     dd0:	00000000 	nop
     dd4:	45020006 	bc1fl	df0 <func_80ADEAC4+0x7c>
     dd8:	860f0198 	lh	t7,408(s0)
     ddc:	0c000000 	jal	0 <EnPoh_Init>
     de0:	02002025 	move	a0,s0
     de4:	10000007 	b	e04 <func_80ADEAC4+0x90>
     de8:	9218029d 	lbu	t8,669(s0)
     dec:	860f0198 	lh	t7,408(s0)
     df0:	55e00004 	bnezl	t7,e04 <func_80ADEAC4+0x90>
     df4:	9218029d 	lbu	t8,669(s0)
     df8:	0c000000 	jal	0 <EnPoh_Init>
     dfc:	02002025 	move	a0,s0
     e00:	9218029d 	lbu	t8,669(s0)
     e04:	240100ff 	li	at,255
     e08:	02002025 	move	a0,s0
     e0c:	57010004 	bnel	t8,at,e20 <func_80ADEAC4+0xac>
     e10:	8fbf001c 	lw	ra,28(sp)
     e14:	0c000000 	jal	0 <EnPoh_Init>
     e18:	24053071 	li	a1,12401
     e1c:	8fbf001c 	lw	ra,28(sp)
     e20:	8fb00018 	lw	s0,24(sp)
     e24:	27bd0028 	addiu	sp,sp,40
     e28:	03e00008 	jr	ra
     e2c:	00000000 	nop

00000e30 <func_80ADEB80>:
     e30:	27bdffd8 	addiu	sp,sp,-40
     e34:	afb00018 	sw	s0,24(sp)
     e38:	00808025 	move	s0,a0
     e3c:	afbf001c 	sw	ra,28(sp)
     e40:	2484014c 	addiu	a0,a0,332
     e44:	afa5002c 	sw	a1,44(sp)
     e48:	0c000000 	jal	0 <EnPoh_Init>
     e4c:	afa40024 	sw	a0,36(sp)
     e50:	3c063e4c 	lui	a2,0x3e4c
     e54:	34c6cccd 	ori	a2,a2,0xcccd
     e58:	26040068 	addiu	a0,s0,104
     e5c:	0c000000 	jal	0 <EnPoh_Init>
     e60:	3c053f80 	lui	a1,0x3f80
     e64:	8fa40024 	lw	a0,36(sp)
     e68:	0c000000 	jal	0 <EnPoh_Init>
     e6c:	24050000 	li	a1,0
     e70:	10400005 	beqz	v0,e88 <func_80ADEB80+0x58>
     e74:	00000000 	nop
     e78:	86020198 	lh	v0,408(s0)
     e7c:	10400002 	beqz	v0,e88 <func_80ADEB80+0x58>
     e80:	244effff 	addiu	t6,v0,-1
     e84:	a60e0198 	sh	t6,408(s0)
     e88:	0c000000 	jal	0 <EnPoh_Init>
     e8c:	02002025 	move	a0,s0
     e90:	02002025 	move	a0,s0
     e94:	0c000000 	jal	0 <EnPoh_Init>
     e98:	8fa5002c 	lw	a1,44(sp)
     e9c:	3c014348 	lui	at,0x4348
     ea0:	44813000 	mtc1	at,$f6
     ea4:	c6040090 	lwc1	$f4,144(s0)
     ea8:	4606203c 	c.lt.s	$f4,$f6
     eac:	00000000 	nop
     eb0:	4502000a 	bc1fl	edc <func_80ADEB80+0xac>
     eb4:	86180198 	lh	t8,408(s0)
     eb8:	860f0198 	lh	t7,408(s0)
     ebc:	29e10013 	slti	at,t7,19
     ec0:	50200006 	beqzl	at,edc <func_80ADEB80+0xac>
     ec4:	86180198 	lh	t8,408(s0)
     ec8:	0c000000 	jal	0 <EnPoh_Init>
     ecc:	02002025 	move	a0,s0
     ed0:	10000013 	b	f20 <func_80ADEB80+0xf0>
     ed4:	9219029d 	lbu	t9,669(s0)
     ed8:	86180198 	lh	t8,408(s0)
     edc:	57000010 	bnezl	t8,f20 <func_80ADEB80+0xf0>
     ee0:	9219029d 	lbu	t9,669(s0)
     ee4:	0c000000 	jal	0 <EnPoh_Init>
     ee8:	00000000 	nop
     eec:	3c010000 	lui	at,0x0
     ef0:	c4280000 	lwc1	$f8,0(at)
     ef4:	4608003c 	c.lt.s	$f0,$f8
     ef8:	00000000 	nop
     efc:	45000005 	bc1f	f14 <func_80ADEB80+0xe4>
     f00:	00000000 	nop
     f04:	0c000000 	jal	0 <EnPoh_Init>
     f08:	02002025 	move	a0,s0
     f0c:	10000004 	b	f20 <func_80ADEB80+0xf0>
     f10:	9219029d 	lbu	t9,669(s0)
     f14:	0c000000 	jal	0 <EnPoh_Init>
     f18:	02002025 	move	a0,s0
     f1c:	9219029d 	lbu	t9,669(s0)
     f20:	240100ff 	li	at,255
     f24:	02002025 	move	a0,s0
     f28:	57210004 	bnel	t9,at,f3c <func_80ADEB80+0x10c>
     f2c:	8fbf001c 	lw	ra,28(sp)
     f30:	0c000000 	jal	0 <EnPoh_Init>
     f34:	24053071 	li	a1,12401
     f38:	8fbf001c 	lw	ra,28(sp)
     f3c:	8fb00018 	lw	s0,24(sp)
     f40:	27bd0028 	addiu	sp,sp,40
     f44:	03e00008 	jr	ra
     f48:	00000000 	nop

00000f4c <func_80ADEC9C>:
     f4c:	27bdffd8 	addiu	sp,sp,-40
     f50:	afbf001c 	sw	ra,28(sp)
     f54:	afb00018 	sw	s0,24(sp)
     f58:	afa5002c 	sw	a1,44(sp)
     f5c:	8caf1c44 	lw	t7,7236(a1)
     f60:	00808025 	move	s0,a0
     f64:	2484014c 	addiu	a0,a0,332
     f68:	0c000000 	jal	0 <EnPoh_Init>
     f6c:	afaf0024 	sw	t7,36(sp)
     f70:	86030198 	lh	v1,408(s0)
     f74:	26040032 	addiu	a0,s0,50
     f78:	2406071c 	li	a2,1820
     f7c:	10600002 	beqz	v1,f88 <func_80ADEC9C+0x3c>
     f80:	2478ffff 	addiu	t8,v1,-1
     f84:	a6180198 	sh	t8,408(s0)
     f88:	8fb90024 	lw	t9,36(sp)
     f8c:	8607008a 	lh	a3,138(s0)
     f90:	872800b6 	lh	t0,182(t9)
     f94:	24e53000 	addiu	a1,a3,12288
     f98:	00052c00 	sll	a1,a1,0x10
     f9c:	00e81023 	subu	v0,a3,t0
     fa0:	00021400 	sll	v0,v0,0x10
     fa4:	00021403 	sra	v0,v0,0x10
     fa8:	28413001 	slti	at,v0,12289
     fac:	54200006 	bnezl	at,fc8 <func_80ADEC9C+0x7c>
     fb0:	2841d000 	slti	at,v0,-12288
     fb4:	0c000000 	jal	0 <EnPoh_Init>
     fb8:	00052c03 	sra	a1,a1,0x10
     fbc:	10000011 	b	1004 <func_80ADEC9C+0xb8>
     fc0:	02002025 	move	a0,s0
     fc4:	2841d000 	slti	at,v0,-12288
     fc8:	10200009 	beqz	at,ff0 <func_80ADEC9C+0xa4>
     fcc:	26040032 	addiu	a0,s0,50
     fd0:	24e5d000 	addiu	a1,a3,-12288
     fd4:	00052c00 	sll	a1,a1,0x10
     fd8:	00052c03 	sra	a1,a1,0x10
     fdc:	26040032 	addiu	a0,s0,50
     fe0:	0c000000 	jal	0 <EnPoh_Init>
     fe4:	2406071c 	li	a2,1820
     fe8:	10000006 	b	1004 <func_80ADEC9C+0xb8>
     fec:	02002025 	move	a0,s0
     ff0:	00072c00 	sll	a1,a3,0x10
     ff4:	00052c03 	sra	a1,a1,0x10
     ff8:	0c000000 	jal	0 <EnPoh_Init>
     ffc:	2406071c 	li	a2,1820
    1000:	02002025 	move	a0,s0
    1004:	0c000000 	jal	0 <EnPoh_Init>
    1008:	8fa5002c 	lw	a1,44(sp)
    100c:	3c01438c 	lui	at,0x438c
    1010:	44812000 	mtc1	at,$f4
    1014:	c6000090 	lwc1	$f0,144(s0)
    1018:	4600203c 	c.lt.s	$f4,$f0
    101c:	00000000 	nop
    1020:	45020006 	bc1fl	103c <func_80ADEC9C+0xf0>
    1024:	86090198 	lh	t1,408(s0)
    1028:	0c000000 	jal	0 <EnPoh_Init>
    102c:	02002025 	move	a0,s0
    1030:	10000013 	b	1080 <func_80ADEC9C+0x134>
    1034:	920a029d 	lbu	t2,669(s0)
    1038:	86090198 	lh	t1,408(s0)
    103c:	3c01430c 	lui	at,0x430c
    1040:	5520000f 	bnezl	t1,1080 <func_80ADEC9C+0x134>
    1044:	920a029d 	lbu	t2,669(s0)
    1048:	44813000 	mtc1	at,$f6
    104c:	02002025 	move	a0,s0
    1050:	24052aaa 	li	a1,10922
    1054:	4606003c 	c.lt.s	$f0,$f6
    1058:	00000000 	nop
    105c:	45020008 	bc1fl	1080 <func_80ADEC9C+0x134>
    1060:	920a029d 	lbu	t2,669(s0)
    1064:	0c000000 	jal	0 <EnPoh_Init>
    1068:	8fa6002c 	lw	a2,44(sp)
    106c:	54400004 	bnezl	v0,1080 <func_80ADEC9C+0x134>
    1070:	920a029d 	lbu	t2,669(s0)
    1074:	0c000000 	jal	0 <EnPoh_Init>
    1078:	02002025 	move	a0,s0
    107c:	920a029d 	lbu	t2,669(s0)
    1080:	240100ff 	li	at,255
    1084:	02002025 	move	a0,s0
    1088:	55410004 	bnel	t2,at,109c <func_80ADEC9C+0x150>
    108c:	8fbf001c 	lw	ra,28(sp)
    1090:	0c000000 	jal	0 <EnPoh_Init>
    1094:	24053071 	li	a1,12401
    1098:	8fbf001c 	lw	ra,28(sp)
    109c:	8fb00018 	lw	s0,24(sp)
    10a0:	27bd0028 	addiu	sp,sp,40
    10a4:	03e00008 	jr	ra
    10a8:	00000000 	nop

000010ac <func_80ADEDFC>:
    10ac:	27bdffd8 	addiu	sp,sp,-40
    10b0:	afb00018 	sw	s0,24(sp)
    10b4:	00808025 	move	s0,a0
    10b8:	afbf001c 	sw	ra,28(sp)
    10bc:	2484014c 	addiu	a0,a0,332
    10c0:	afa5002c 	sw	a1,44(sp)
    10c4:	0c000000 	jal	0 <EnPoh_Init>
    10c8:	afa40024 	sw	a0,36(sp)
    10cc:	8fa40024 	lw	a0,36(sp)
    10d0:	0c000000 	jal	0 <EnPoh_Init>
    10d4:	24050000 	li	a1,0
    10d8:	10400007 	beqz	v0,10f8 <func_80ADEDFC+0x4c>
    10dc:	02002025 	move	a0,s0
    10e0:	0c000000 	jal	0 <EnPoh_Init>
    10e4:	24053870 	li	a1,14448
    10e8:	86020198 	lh	v0,408(s0)
    10ec:	10400002 	beqz	v0,10f8 <func_80ADEDFC+0x4c>
    10f0:	244effff 	addiu	t6,v0,-1
    10f4:	a60e0198 	sh	t6,408(s0)
    10f8:	02002025 	move	a0,s0
    10fc:	0c000000 	jal	0 <EnPoh_Init>
    1100:	8fa5002c 	lw	a1,44(sp)
    1104:	86020198 	lh	v0,408(s0)
    1108:	26040032 	addiu	a0,s0,50
    110c:	24060e38 	li	a2,3640
    1110:	2841000a 	slti	at,v0,10
    1114:	54200006 	bnezl	at,1130 <func_80ADEDFC+0x84>
    1118:	24010009 	li	at,9
    111c:	0c000000 	jal	0 <EnPoh_Init>
    1120:	8605008a 	lh	a1,138(s0)
    1124:	10000011 	b	116c <func_80ADEDFC+0xc0>
    1128:	8fbf001c 	lw	ra,28(sp)
    112c:	24010009 	li	at,9
    1130:	14410007 	bne	v0,at,1150 <func_80ADEDFC+0xa4>
    1134:	3c0140a0 	lui	at,0x40a0
    1138:	44812000 	mtc1	at,$f4
    113c:	3c014000 	lui	at,0x4000
    1140:	44813000 	mtc1	at,$f6
    1144:	e6040068 	swc1	$f4,104(s0)
    1148:	10000007 	b	1168 <func_80ADEDFC+0xbc>
    114c:	e6060168 	swc1	$f6,360(s0)
    1150:	54400006 	bnezl	v0,116c <func_80ADEDFC+0xc0>
    1154:	8fbf001c 	lw	ra,28(sp)
    1158:	0c000000 	jal	0 <EnPoh_Init>
    115c:	02002025 	move	a0,s0
    1160:	240f0017 	li	t7,23
    1164:	a60f0198 	sh	t7,408(s0)
    1168:	8fbf001c 	lw	ra,28(sp)
    116c:	8fb00018 	lw	s0,24(sp)
    1170:	27bd0028 	addiu	sp,sp,40
    1174:	03e00008 	jr	ra
    1178:	00000000 	nop

0000117c <func_80ADEECC>:
    117c:	27bdffe8 	addiu	sp,sp,-24
    1180:	afbf0014 	sw	ra,20(sp)
    1184:	afa5001c 	sw	a1,28(sp)
    1188:	00803825 	move	a3,a0
    118c:	afa70018 	sw	a3,24(sp)
    1190:	24840068 	addiu	a0,a0,104
    1194:	24050000 	li	a1,0
    1198:	0c000000 	jal	0 <EnPoh_Init>
    119c:	3c063f00 	lui	a2,0x3f00
    11a0:	8fa70018 	lw	a3,24(sp)
    11a4:	0c000000 	jal	0 <EnPoh_Init>
    11a8:	24e4014c 	addiu	a0,a3,332
    11ac:	1040000a 	beqz	v0,11d8 <func_80ADEECC+0x5c>
    11b0:	8fa70018 	lw	a3,24(sp)
    11b4:	90ee00af 	lbu	t6,175(a3)
    11b8:	11c00005 	beqz	t6,11d0 <func_80ADEECC+0x54>
    11bc:	00000000 	nop
    11c0:	0c000000 	jal	0 <EnPoh_Init>
    11c4:	00e02025 	move	a0,a3
    11c8:	10000004 	b	11dc <func_80ADEECC+0x60>
    11cc:	8fbf0014 	lw	ra,20(sp)
    11d0:	0c000000 	jal	0 <EnPoh_Init>
    11d4:	00e02025 	move	a0,a3
    11d8:	8fbf0014 	lw	ra,20(sp)
    11dc:	27bd0018 	addiu	sp,sp,24
    11e0:	03e00008 	jr	ra
    11e4:	00000000 	nop

000011e8 <func_80ADEF38>:
    11e8:	27bdffe0 	addiu	sp,sp,-32
    11ec:	afb00018 	sw	s0,24(sp)
    11f0:	00808025 	move	s0,a0
    11f4:	afbf001c 	sw	ra,28(sp)
    11f8:	afa50024 	sw	a1,36(sp)
    11fc:	0c000000 	jal	0 <EnPoh_Init>
    1200:	2484014c 	addiu	a0,a0,332
    1204:	1040000e 	beqz	v0,1240 <func_80ADEF38+0x58>
    1208:	3c014120 	lui	at,0x4120
    120c:	240e00ff 	li	t6,255
    1210:	a20e029d 	sb	t6,669(s0)
    1214:	240402bc 	li	a0,700
    1218:	0c000000 	jal	0 <EnPoh_Init>
    121c:	2405012c 	li	a1,300
    1220:	8e0f0004 	lw	t7,4(s0)
    1224:	a602019a 	sh	v0,410(s0)
    1228:	02002025 	move	a0,s0
    122c:	35f80001 	ori	t8,t7,0x1
    1230:	0c000000 	jal	0 <EnPoh_Init>
    1234:	ae180004 	sw	t8,4(s0)
    1238:	10000032 	b	1304 <func_80ADEF38+0x11c>
    123c:	3c013f00 	lui	at,0x3f00
    1240:	44811000 	mtc1	at,$f2
    1244:	c6000164 	lwc1	$f0,356(s0)
    1248:	3c010000 	lui	at,0x0
    124c:	4600103c 	c.lt.s	$f2,$f0
    1250:	00000000 	nop
    1254:	4502002b 	bc1fl	1304 <func_80ADEF38+0x11c>
    1258:	3c013f00 	lui	at,0x3f00
    125c:	46020101 	sub.s	$f4,$f0,$f2
    1260:	c4260000 	lwc1	$f6,0(at)
    1264:	3c01437f 	lui	at,0x437f
    1268:	44815000 	mtc1	at,$f10
    126c:	46062202 	mul.s	$f8,$f4,$f6
    1270:	24080001 	li	t0,1
    1274:	3c014f00 	lui	at,0x4f00
    1278:	460a4402 	mul.s	$f16,$f8,$f10
    127c:	4459f800 	cfc1	t9,$31
    1280:	44c8f800 	ctc1	t0,$31
    1284:	00000000 	nop
    1288:	460084a4 	cvt.w.s	$f18,$f16
    128c:	4448f800 	cfc1	t0,$31
    1290:	00000000 	nop
    1294:	31080078 	andi	t0,t0,0x78
    1298:	51000013 	beqzl	t0,12e8 <func_80ADEF38+0x100>
    129c:	44089000 	mfc1	t0,$f18
    12a0:	44819000 	mtc1	at,$f18
    12a4:	24080001 	li	t0,1
    12a8:	46128481 	sub.s	$f18,$f16,$f18
    12ac:	44c8f800 	ctc1	t0,$31
    12b0:	00000000 	nop
    12b4:	460094a4 	cvt.w.s	$f18,$f18
    12b8:	4448f800 	cfc1	t0,$31
    12bc:	00000000 	nop
    12c0:	31080078 	andi	t0,t0,0x78
    12c4:	15000005 	bnez	t0,12dc <func_80ADEF38+0xf4>
    12c8:	00000000 	nop
    12cc:	44089000 	mfc1	t0,$f18
    12d0:	3c018000 	lui	at,0x8000
    12d4:	10000007 	b	12f4 <func_80ADEF38+0x10c>
    12d8:	01014025 	or	t0,t0,at
    12dc:	10000005 	b	12f4 <func_80ADEF38+0x10c>
    12e0:	2408ffff 	li	t0,-1
    12e4:	44089000 	mfc1	t0,$f18
    12e8:	00000000 	nop
    12ec:	0500fffb 	bltz	t0,12dc <func_80ADEF38+0xf4>
    12f0:	00000000 	nop
    12f4:	44d9f800 	ctc1	t9,$31
    12f8:	a208029d 	sb	t0,669(s0)
    12fc:	00000000 	nop
    1300:	3c013f00 	lui	at,0x3f00
    1304:	44813000 	mtc1	at,$f6
    1308:	c6040168 	lwc1	$f4,360(s0)
    130c:	3c01438c 	lui	at,0x438c
    1310:	4606203c 	c.lt.s	$f4,$f6
    1314:	00000000 	nop
    1318:	4502000f 	bc1fl	1358 <func_80ADEF38+0x170>
    131c:	8fbf001c 	lw	ra,28(sp)
    1320:	c6080090 	lwc1	$f8,144(s0)
    1324:	44815000 	mtc1	at,$f10
    1328:	02002025 	move	a0,s0
    132c:	460a403c 	c.lt.s	$f8,$f10
    1330:	00000000 	nop
    1334:	45020008 	bc1fl	1358 <func_80ADEF38+0x170>
    1338:	8fbf001c 	lw	ra,28(sp)
    133c:	0c000000 	jal	0 <EnPoh_Init>
    1340:	24053873 	li	a1,14451
    1344:	3c013f80 	lui	at,0x3f80
    1348:	44818000 	mtc1	at,$f16
    134c:	00000000 	nop
    1350:	e6100168 	swc1	$f16,360(s0)
    1354:	8fbf001c 	lw	ra,28(sp)
    1358:	8fb00018 	lw	s0,24(sp)
    135c:	27bd0020 	addiu	sp,sp,32
    1360:	03e00008 	jr	ra
    1364:	00000000 	nop

00001368 <func_80ADF0B8>:
    1368:	27bdffe8 	addiu	sp,sp,-24
    136c:	afbf0014 	sw	ra,20(sp)
    1370:	00803025 	move	a2,a0
    1374:	afa5001c 	sw	a1,28(sp)
    1378:	afa60018 	sw	a2,24(sp)
    137c:	0c000000 	jal	0 <EnPoh_Init>
    1380:	2484014c 	addiu	a0,a0,332
    1384:	1040000f 	beqz	v0,13c4 <func_80ADF0B8+0x5c>
    1388:	8fa60018 	lw	a2,24(sp)
    138c:	240e00ff 	li	t6,255
    1390:	a0ce029d 	sb	t6,669(a2)
    1394:	afa60018 	sw	a2,24(sp)
    1398:	240402bc 	li	a0,700
    139c:	0c000000 	jal	0 <EnPoh_Init>
    13a0:	2405012c 	li	a1,300
    13a4:	8fa40018 	lw	a0,24(sp)
    13a8:	8c8f0004 	lw	t7,4(a0)
    13ac:	a482019a 	sh	v0,410(a0)
    13b0:	35f80001 	ori	t8,t7,0x1
    13b4:	0c000000 	jal	0 <EnPoh_Init>
    13b8:	ac980004 	sw	t8,4(a0)
    13bc:	10000010 	b	1400 <func_80ADF0B8+0x98>
    13c0:	8fbf0014 	lw	ra,20(sp)
    13c4:	3c0141cc 	lui	at,0x41cc
    13c8:	44813000 	mtc1	at,$f6
    13cc:	c4c40164 	lwc1	$f4,356(a2)
    13d0:	240800ff 	li	t0,255
    13d4:	46062202 	mul.s	$f8,$f4,$f6
    13d8:	4600428d 	trunc.w.s	$f10,$f8
    13dc:	44025000 	mfc1	v0,$f10
    13e0:	00000000 	nop
    13e4:	28410100 	slti	at,v0,256
    13e8:	54200004 	bnezl	at,13fc <func_80ADF0B8+0x94>
    13ec:	a0c2029d 	sb	v0,669(a2)
    13f0:	10000002 	b	13fc <func_80ADF0B8+0x94>
    13f4:	a0c8029d 	sb	t0,669(a2)
    13f8:	a0c2029d 	sb	v0,669(a2)
    13fc:	8fbf0014 	lw	ra,20(sp)
    1400:	27bd0018 	addiu	sp,sp,24
    1404:	03e00008 	jr	ra
    1408:	00000000 	nop

0000140c <func_80ADF15C>:
    140c:	27bdff88 	addiu	sp,sp,-120
    1410:	afbf004c 	sw	ra,76(sp)
    1414:	afb10048 	sw	s1,72(sp)
    1418:	afb00044 	sw	s0,68(sp)
    141c:	848e0198 	lh	t6,408(a0)
    1420:	00808025 	move	s0,a0
    1424:	00a08825 	move	s1,a1
    1428:	25cf0001 	addiu	t7,t6,1
    142c:	a48f0198 	sh	t7,408(a0)
    1430:	84820198 	lh	v0,408(a0)
    1434:	2403001c 	li	v1,28
    1438:	28410008 	slti	at,v0,8
    143c:	102000d9 	beqz	at,17a4 <func_80ADF15C+0x398>
    1440:	28410005 	slti	at,v0,5
    1444:	10200037 	beqz	at,1524 <func_80ADF15C+0x118>
    1448:	244cfffb 	addiu	t4,v0,-5
    144c:	00022300 	sll	a0,v0,0xc
    1450:	2484c000 	addiu	a0,a0,-16384
    1454:	00042400 	sll	a0,a0,0x10
    1458:	0c000000 	jal	0 <EnPoh_Init>
    145c:	00042403 	sra	a0,a0,0x10
    1460:	3c014220 	lui	at,0x4220
    1464:	44813000 	mtc1	at,$f6
    1468:	3c0141b8 	lui	at,0x41b8
    146c:	44815000 	mtc1	at,$f10
    1470:	c6040028 	lwc1	$f4,40(s0)
    1474:	460a0402 	mul.s	$f16,$f0,$f10
    1478:	46062200 	add.s	$f8,$f4,$f6
    147c:	46088480 	add.s	$f18,$f16,$f8
    1480:	e7b20070 	swc1	$f18,112(sp)
    1484:	86040198 	lh	a0,408(s0)
    1488:	00042300 	sll	a0,a0,0xc
    148c:	2484c000 	addiu	a0,a0,-16384
    1490:	00042400 	sll	a0,a0,0x10
    1494:	0c000000 	jal	0 <EnPoh_Init>
    1498:	00042403 	sra	a0,a0,0x10
    149c:	3c0141b8 	lui	at,0x41b8
    14a0:	44812000 	mtc1	at,$f4
    14a4:	00000000 	nop
    14a8:	46040182 	mul.s	$f6,$f0,$f4
    14ac:	e7a60068 	swc1	$f6,104(sp)
    14b0:	863807a0 	lh	t8,1952(s1)
    14b4:	0018c880 	sll	t9,t8,0x2
    14b8:	02394021 	addu	t0,s1,t9
    14bc:	0c000000 	jal	0 <EnPoh_Init>
    14c0:	8d040790 	lw	a0,1936(t0)
    14c4:	24444800 	addiu	a0,v0,18432
    14c8:	00042400 	sll	a0,a0,0x10
    14cc:	0c000000 	jal	0 <EnPoh_Init>
    14d0:	00042403 	sra	a0,a0,0x10
    14d4:	c7aa0068 	lwc1	$f10,104(sp)
    14d8:	c6080024 	lwc1	$f8,36(s0)
    14dc:	460a0402 	mul.s	$f16,$f0,$f10
    14e0:	46088480 	add.s	$f18,$f16,$f8
    14e4:	e7b2006c 	swc1	$f18,108(sp)
    14e8:	862907a0 	lh	t1,1952(s1)
    14ec:	00095080 	sll	t2,t1,0x2
    14f0:	022a5821 	addu	t3,s1,t2
    14f4:	0c000000 	jal	0 <EnPoh_Init>
    14f8:	8d640790 	lw	a0,1936(t3)
    14fc:	24444800 	addiu	a0,v0,18432
    1500:	00042400 	sll	a0,a0,0x10
    1504:	0c000000 	jal	0 <EnPoh_Init>
    1508:	00042403 	sra	a0,a0,0x10
    150c:	c7a40068 	lwc1	$f4,104(sp)
    1510:	c60a002c 	lwc1	$f10,44(s0)
    1514:	46040182 	mul.s	$f6,$f0,$f4
    1518:	460a3400 	add.s	$f16,$f6,$f10
    151c:	1000002a 	b	15c8 <func_80ADF15C+0x1bc>
    1520:	e7b00074 	swc1	$f16,116(sp)
    1524:	448c5000 	mtc1	t4,$f10
    1528:	3c014220 	lui	at,0x4220
    152c:	44819000 	mtc1	at,$f18
    1530:	46805420 	cvt.s.w	$f16,$f10
    1534:	c6080028 	lwc1	$f8,40(s0)
    1538:	3c014170 	lui	at,0x4170
    153c:	44813000 	mtc1	at,$f6
    1540:	46124100 	add.s	$f4,$f8,$f18
    1544:	46103202 	mul.s	$f8,$f6,$f16
    1548:	46082480 	add.s	$f18,$f4,$f8
    154c:	e7b20070 	swc1	$f18,112(sp)
    1550:	862d07a0 	lh	t5,1952(s1)
    1554:	000d7080 	sll	t6,t5,0x2
    1558:	022e7821 	addu	t7,s1,t6
    155c:	0c000000 	jal	0 <EnPoh_Init>
    1560:	8de40790 	lw	a0,1936(t7)
    1564:	24444800 	addiu	a0,v0,18432
    1568:	00042400 	sll	a0,a0,0x10
    156c:	0c000000 	jal	0 <EnPoh_Init>
    1570:	00042403 	sra	a0,a0,0x10
    1574:	3c0141b8 	lui	at,0x41b8
    1578:	44815000 	mtc1	at,$f10
    157c:	c6100024 	lwc1	$f16,36(s0)
    1580:	460a0182 	mul.s	$f6,$f0,$f10
    1584:	46103100 	add.s	$f4,$f6,$f16
    1588:	e7a4006c 	swc1	$f4,108(sp)
    158c:	863807a0 	lh	t8,1952(s1)
    1590:	0018c880 	sll	t9,t8,0x2
    1594:	02394021 	addu	t0,s1,t9
    1598:	0c000000 	jal	0 <EnPoh_Init>
    159c:	8d040790 	lw	a0,1936(t0)
    15a0:	24444800 	addiu	a0,v0,18432
    15a4:	00042400 	sll	a0,a0,0x10
    15a8:	0c000000 	jal	0 <EnPoh_Init>
    15ac:	00042403 	sra	a0,a0,0x10
    15b0:	3c0141b8 	lui	at,0x41b8
    15b4:	44814000 	mtc1	at,$f8
    15b8:	c60a002c 	lwc1	$f10,44(s0)
    15bc:	46080482 	mul.s	$f18,$f0,$f8
    15c0:	460a9180 	add.s	$f6,$f18,$f10
    15c4:	e7a60074 	swc1	$f6,116(sp)
    15c8:	86090198 	lh	t1,408(s0)
    15cc:	3c060000 	lui	a2,0x0
    15d0:	3c070000 	lui	a3,0x0
    15d4:	00095080 	sll	t2,t1,0x2
    15d8:	01495021 	addu	t2,t2,t1
    15dc:	000a5040 	sll	t2,t2,0x1
    15e0:	254b0050 	addiu	t3,t2,80
    15e4:	24090001 	li	t1,1
    15e8:	240c00ff 	li	t4,255
    15ec:	240d00ff 	li	t5,255
    15f0:	240e00ff 	li	t6,255
    15f4:	240f00ff 	li	t7,255
    15f8:	241800ff 	li	t8,255
    15fc:	24190001 	li	t9,1
    1600:	24080009 	li	t0,9
    1604:	afa80038 	sw	t0,56(sp)
    1608:	afb90034 	sw	t9,52(sp)
    160c:	afb80030 	sw	t8,48(sp)
    1610:	afaf0024 	sw	t7,36(sp)
    1614:	afae0020 	sw	t6,32(sp)
    1618:	afad001c 	sw	t5,28(sp)
    161c:	afac0018 	sw	t4,24(sp)
    1620:	afa9003c 	sw	t1,60(sp)
    1624:	afab0010 	sw	t3,16(sp)
    1628:	24e70000 	addiu	a3,a3,0
    162c:	24c60000 	addiu	a2,a2,0
    1630:	afa0002c 	sw	zero,44(sp)
    1634:	afa00028 	sw	zero,40(sp)
    1638:	afa00014 	sw	zero,20(sp)
    163c:	02202025 	move	a0,s1
    1640:	0c000000 	jal	0 <EnPoh_Init>
    1644:	27a5006c 	addiu	a1,sp,108
    1648:	c6000024 	lwc1	$f0,36(s0)
    164c:	c7a4006c 	lwc1	$f4,108(sp)
    1650:	c7aa0074 	lwc1	$f10,116(sp)
    1654:	46000400 	add.s	$f16,$f0,$f0
    1658:	3c060000 	lui	a2,0x0
    165c:	3c070000 	lui	a3,0x0
    1660:	240d00ff 	li	t5,255
    1664:	46048201 	sub.s	$f8,$f16,$f4
    1668:	240e00ff 	li	t6,255
    166c:	240f00ff 	li	t7,255
    1670:	241800ff 	li	t8,255
    1674:	e7a8006c 	swc1	$f8,108(sp)
    1678:	c602002c 	lwc1	$f2,44(s0)
    167c:	241900ff 	li	t9,255
    1680:	24080001 	li	t0,1
    1684:	46021480 	add.s	$f18,$f2,$f2
    1688:	24090009 	li	t1,9
    168c:	24e70000 	addiu	a3,a3,0
    1690:	24c60000 	addiu	a2,a2,0
    1694:	460a9181 	sub.s	$f6,$f18,$f10
    1698:	02202025 	move	a0,s1
    169c:	27a5006c 	addiu	a1,sp,108
    16a0:	e7a60074 	swc1	$f6,116(sp)
    16a4:	860a0198 	lh	t2,408(s0)
    16a8:	afa90038 	sw	t1,56(sp)
    16ac:	afa80034 	sw	t0,52(sp)
    16b0:	000a5880 	sll	t3,t2,0x2
    16b4:	016a5821 	addu	t3,t3,t2
    16b8:	000b5840 	sll	t3,t3,0x1
    16bc:	256c0050 	addiu	t4,t3,80
    16c0:	240a0001 	li	t2,1
    16c4:	afaa003c 	sw	t2,60(sp)
    16c8:	afac0010 	sw	t4,16(sp)
    16cc:	afb90030 	sw	t9,48(sp)
    16d0:	afa0002c 	sw	zero,44(sp)
    16d4:	afa00028 	sw	zero,40(sp)
    16d8:	afb80024 	sw	t8,36(sp)
    16dc:	afaf0020 	sw	t7,32(sp)
    16e0:	afae001c 	sw	t6,28(sp)
    16e4:	afad0018 	sw	t5,24(sp)
    16e8:	0c000000 	jal	0 <EnPoh_Init>
    16ec:	afa00014 	sw	zero,20(sp)
    16f0:	c6100024 	lwc1	$f16,36(s0)
    16f4:	3c060000 	lui	a2,0x0
    16f8:	3c070000 	lui	a3,0x0
    16fc:	e7b0006c 	swc1	$f16,108(sp)
    1700:	c604002c 	lwc1	$f4,44(s0)
    1704:	240e00ff 	li	t6,255
    1708:	240f00ff 	li	t7,255
    170c:	e7a40074 	swc1	$f4,116(sp)
    1710:	860b0198 	lh	t3,408(s0)
    1714:	241800ff 	li	t8,255
    1718:	241900ff 	li	t9,255
    171c:	000b6080 	sll	t4,t3,0x2
    1720:	018b6021 	addu	t4,t4,t3
    1724:	000c6040 	sll	t4,t4,0x1
    1728:	258d0050 	addiu	t5,t4,80
    172c:	240b0001 	li	t3,1
    1730:	240800ff 	li	t0,255
    1734:	24090001 	li	t1,1
    1738:	240a0009 	li	t2,9
    173c:	afaa0038 	sw	t2,56(sp)
    1740:	afa90034 	sw	t1,52(sp)
    1744:	afa80030 	sw	t0,48(sp)
    1748:	afab003c 	sw	t3,60(sp)
    174c:	afad0010 	sw	t5,16(sp)
    1750:	afb90024 	sw	t9,36(sp)
    1754:	afb80020 	sw	t8,32(sp)
    1758:	afa0002c 	sw	zero,44(sp)
    175c:	afa00028 	sw	zero,40(sp)
    1760:	afaf001c 	sw	t7,28(sp)
    1764:	afae0018 	sw	t6,24(sp)
    1768:	afa00014 	sw	zero,20(sp)
    176c:	24e70000 	addiu	a3,a3,0
    1770:	24c60000 	addiu	a2,a2,0
    1774:	02202025 	move	a0,s1
    1778:	0c000000 	jal	0 <EnPoh_Init>
    177c:	27a5006c 	addiu	a1,sp,108
    1780:	86020198 	lh	v0,408(s0)
    1784:	24010001 	li	at,1
    1788:	02002025 	move	a0,s0
    178c:	5441001c 	bnel	v0,at,1800 <func_80ADF15C+0x3f4>
    1790:	24010012 	li	at,18
    1794:	0c000000 	jal	0 <EnPoh_Init>
    1798:	24053878 	li	a1,14456
    179c:	10000017 	b	17fc <func_80ADF15C+0x3f0>
    17a0:	86020198 	lh	v0,408(s0)
    17a4:	14620006 	bne	v1,v0,17c0 <func_80ADF15C+0x3b4>
    17a8:	28410013 	slti	at,v0,19
    17ac:	02002025 	move	a0,s0
    17b0:	0c000000 	jal	0 <EnPoh_Init>
    17b4:	02202825 	move	a1,s1
    17b8:	10000010 	b	17fc <func_80ADF15C+0x3f0>
    17bc:	86020198 	lh	v0,408(s0)
    17c0:	1420000e 	bnez	at,17fc <func_80ADF15C+0x3f0>
    17c4:	00626023 	subu	t4,v1,v0
    17c8:	448c4000 	mtc1	t4,$f8
    17cc:	3c010000 	lui	at,0x0
    17d0:	c42a0000 	lwc1	$f10,0(at)
    17d4:	468044a0 	cvt.s.w	$f18,$f8
    17d8:	3c0140a0 	lui	at,0x40a0
    17dc:	44818000 	mtc1	at,$f16
    17e0:	c6060028 	lwc1	$f6,40(s0)
    17e4:	460a9002 	mul.s	$f0,$f18,$f10
    17e8:	46103100 	add.s	$f4,$f6,$f16
    17ec:	e6040028 	swc1	$f4,40(s0)
    17f0:	e6000058 	swc1	$f0,88(s0)
    17f4:	e6000054 	swc1	$f0,84(s0)
    17f8:	e6000050 	swc1	$f0,80(s0)
    17fc:	24010012 	li	at,18
    1800:	14410003 	bne	v0,at,1810 <func_80ADF15C+0x404>
    1804:	02002025 	move	a0,s0
    1808:	0c000000 	jal	0 <EnPoh_Init>
    180c:	24053877 	li	a1,14455
    1810:	8fbf004c 	lw	ra,76(sp)
    1814:	8fb00044 	lw	s0,68(sp)
    1818:	8fb10048 	lw	s1,72(sp)
    181c:	03e00008 	jr	ra
    1820:	27bd0078 	addiu	sp,sp,120

00001824 <func_80ADF574>:
    1824:	27bdffe0 	addiu	sp,sp,-32
    1828:	afb00018 	sw	s0,24(sp)
    182c:	00808025 	move	s0,a0
    1830:	afbf001c 	sw	ra,28(sp)
    1834:	afa50024 	sw	a1,36(sp)
    1838:	0c000000 	jal	0 <EnPoh_Init>
    183c:	2484014c 	addiu	a0,a0,332
    1840:	10400008 	beqz	v0,1864 <func_80ADF574+0x40>
    1844:	26040068 	addiu	a0,s0,104
    1848:	860e00b6 	lh	t6,182(s0)
    184c:	02002025 	move	a0,s0
    1850:	0c000000 	jal	0 <EnPoh_Init>
    1854:	a60e0032 	sh	t6,50(s0)
    1858:	240f0017 	li	t7,23
    185c:	10000007 	b	187c <func_80ADF574+0x58>
    1860:	a60f0198 	sh	t7,408(s0)
    1864:	24050000 	li	a1,0
    1868:	0c000000 	jal	0 <EnPoh_Init>
    186c:	3c063f00 	lui	a2,0x3f00
    1870:	861800b6 	lh	t8,182(s0)
    1874:	27191000 	addiu	t9,t8,4096
    1878:	a61900b6 	sh	t9,182(s0)
    187c:	8fbf001c 	lw	ra,28(sp)
    1880:	8fb00018 	lw	s0,24(sp)
    1884:	27bd0020 	addiu	sp,sp,32
    1888:	03e00008 	jr	ra
    188c:	00000000 	nop

00001890 <func_80ADF5E0>:
    1890:	27bdffe0 	addiu	sp,sp,-32
    1894:	afb00018 	sw	s0,24(sp)
    1898:	00808025 	move	s0,a0
    189c:	afbf001c 	sw	ra,28(sp)
    18a0:	afa50024 	sw	a1,36(sp)
    18a4:	0c000000 	jal	0 <EnPoh_Init>
    18a8:	2484014c 	addiu	a0,a0,332
    18ac:	26040032 	addiu	a0,s0,50
    18b0:	8605019c 	lh	a1,412(s0)
    18b4:	0c000000 	jal	0 <EnPoh_Init>
    18b8:	2406071c 	li	a2,1820
    18bc:	50400004 	beqzl	v0,18d0 <func_80ADF5E0+0x40>
    18c0:	3c014348 	lui	at,0x4348
    18c4:	0c000000 	jal	0 <EnPoh_Init>
    18c8:	02002025 	move	a0,s0
    18cc:	3c014348 	lui	at,0x4348
    18d0:	44813000 	mtc1	at,$f6
    18d4:	c6040090 	lwc1	$f4,144(s0)
    18d8:	4606203c 	c.lt.s	$f4,$f6
    18dc:	00000000 	nop
    18e0:	45020004 	bc1fl	18f4 <func_80ADF5E0+0x64>
    18e4:	02002025 	move	a0,s0
    18e8:	0c000000 	jal	0 <EnPoh_Init>
    18ec:	02002025 	move	a0,s0
    18f0:	02002025 	move	a0,s0
    18f4:	0c000000 	jal	0 <EnPoh_Init>
    18f8:	8fa50024 	lw	a1,36(sp)
    18fc:	8fbf001c 	lw	ra,28(sp)
    1900:	8fb00018 	lw	s0,24(sp)
    1904:	27bd0020 	addiu	sp,sp,32
    1908:	03e00008 	jr	ra
    190c:	00000000 	nop

00001910 <func_80ADF660>:
    1910:	27bdffe8 	addiu	sp,sp,-24
    1914:	afbf0014 	sw	ra,20(sp)
    1918:	90820194 	lbu	v0,404(a0)
    191c:	00803025 	move	a2,a0
    1920:	10400002 	beqz	v0,192c <func_80ADF660+0x1c>
    1924:	244effff 	addiu	t6,v0,-1
    1928:	a08e0194 	sb	t6,404(a0)
    192c:	84cf0032 	lh	t7,50(a2)
    1930:	00c02025 	move	a0,a2
    1934:	25f81000 	addiu	t8,t7,4096
    1938:	a4d80032 	sh	t8,50(a2)
    193c:	0c000000 	jal	0 <EnPoh_Init>
    1940:	afa60018 	sw	a2,24(sp)
    1944:	8fa60018 	lw	a2,24(sp)
    1948:	3c014f80 	lui	at,0x4f80
    194c:	24040064 	li	a0,100
    1950:	90c20194 	lbu	v0,404(a2)
    1954:	24050032 	li	a1,50
    1958:	44822000 	mtc1	v0,$f4
    195c:	04410004 	bgez	v0,1970 <func_80ADF660+0x60>
    1960:	468021a0 	cvt.s.w	$f6,$f4
    1964:	44814000 	mtc1	at,$f8
    1968:	00000000 	nop
    196c:	46083180 	add.s	$f6,$f6,$f8
    1970:	3c0140ff 	lui	at,0x40ff
    1974:	44815000 	mtc1	at,$f10
    1978:	24080001 	li	t0,1
    197c:	3c014f00 	lui	at,0x4f00
    1980:	460a3402 	mul.s	$f16,$f6,$f10
    1984:	4459f800 	cfc1	t9,$31
    1988:	44c8f800 	ctc1	t0,$31
    198c:	00000000 	nop
    1990:	460084a4 	cvt.w.s	$f18,$f16
    1994:	4448f800 	cfc1	t0,$31
    1998:	00000000 	nop
    199c:	31080078 	andi	t0,t0,0x78
    19a0:	51000013 	beqzl	t0,19f0 <func_80ADF660+0xe0>
    19a4:	44089000 	mfc1	t0,$f18
    19a8:	44819000 	mtc1	at,$f18
    19ac:	24080001 	li	t0,1
    19b0:	46128481 	sub.s	$f18,$f16,$f18
    19b4:	44c8f800 	ctc1	t0,$31
    19b8:	00000000 	nop
    19bc:	460094a4 	cvt.w.s	$f18,$f18
    19c0:	4448f800 	cfc1	t0,$31
    19c4:	00000000 	nop
    19c8:	31080078 	andi	t0,t0,0x78
    19cc:	15000005 	bnez	t0,19e4 <func_80ADF660+0xd4>
    19d0:	00000000 	nop
    19d4:	44089000 	mfc1	t0,$f18
    19d8:	3c018000 	lui	at,0x8000
    19dc:	10000007 	b	19fc <func_80ADF660+0xec>
    19e0:	01014025 	or	t0,t0,at
    19e4:	10000005 	b	19fc <func_80ADF660+0xec>
    19e8:	2408ffff 	li	t0,-1
    19ec:	44089000 	mfc1	t0,$f18
    19f0:	00000000 	nop
    19f4:	0500fffb 	bltz	t0,19e4 <func_80ADF660+0xd4>
    19f8:	00000000 	nop
    19fc:	44d9f800 	ctc1	t9,$31
    1a00:	14400006 	bnez	v0,1a1c <func_80ADF660+0x10c>
    1a04:	a0c8029d 	sb	t0,669(a2)
    1a08:	0c000000 	jal	0 <EnPoh_Init>
    1a0c:	afa60018 	sw	a2,24(sp)
    1a10:	8fa40018 	lw	a0,24(sp)
    1a14:	0c000000 	jal	0 <EnPoh_Init>
    1a18:	a482019a 	sh	v0,410(a0)
    1a1c:	8fbf0014 	lw	ra,20(sp)
    1a20:	27bd0018 	addiu	sp,sp,24
    1a24:	03e00008 	jr	ra
    1a28:	00000000 	nop

00001a2c <func_80ADF77C>:
    1a2c:	27bdffe8 	addiu	sp,sp,-24
    1a30:	afbf0014 	sw	ra,20(sp)
    1a34:	908e0194 	lbu	t6,404(a0)
    1a38:	84980032 	lh	t8,50(a0)
    1a3c:	25cf0001 	addiu	t7,t6,1
    1a40:	2719f000 	addiu	t9,t8,-4096
    1a44:	a08f0194 	sb	t7,404(a0)
    1a48:	a4990032 	sh	t9,50(a0)
    1a4c:	0c000000 	jal	0 <EnPoh_Init>
    1a50:	afa40018 	sw	a0,24(sp)
    1a54:	8fa60018 	lw	a2,24(sp)
    1a58:	3c014f80 	lui	at,0x4f80
    1a5c:	240402bc 	li	a0,700
    1a60:	90c20194 	lbu	v0,404(a2)
    1a64:	2405012c 	li	a1,300
    1a68:	44822000 	mtc1	v0,$f4
    1a6c:	04410004 	bgez	v0,1a80 <func_80ADF77C+0x54>
    1a70:	468021a0 	cvt.s.w	$f6,$f4
    1a74:	44814000 	mtc1	at,$f8
    1a78:	00000000 	nop
    1a7c:	46083180 	add.s	$f6,$f6,$f8
    1a80:	3c0140ff 	lui	at,0x40ff
    1a84:	44815000 	mtc1	at,$f10
    1a88:	24090001 	li	t1,1
    1a8c:	3c014f00 	lui	at,0x4f00
    1a90:	460a3402 	mul.s	$f16,$f6,$f10
    1a94:	4448f800 	cfc1	t0,$31
    1a98:	44c9f800 	ctc1	t1,$31
    1a9c:	00000000 	nop
    1aa0:	460084a4 	cvt.w.s	$f18,$f16
    1aa4:	4449f800 	cfc1	t1,$31
    1aa8:	00000000 	nop
    1aac:	31290078 	andi	t1,t1,0x78
    1ab0:	51200013 	beqzl	t1,1b00 <func_80ADF77C+0xd4>
    1ab4:	44099000 	mfc1	t1,$f18
    1ab8:	44819000 	mtc1	at,$f18
    1abc:	24090001 	li	t1,1
    1ac0:	46128481 	sub.s	$f18,$f16,$f18
    1ac4:	44c9f800 	ctc1	t1,$31
    1ac8:	00000000 	nop
    1acc:	460094a4 	cvt.w.s	$f18,$f18
    1ad0:	4449f800 	cfc1	t1,$31
    1ad4:	00000000 	nop
    1ad8:	31290078 	andi	t1,t1,0x78
    1adc:	15200005 	bnez	t1,1af4 <func_80ADF77C+0xc8>
    1ae0:	00000000 	nop
    1ae4:	44099000 	mfc1	t1,$f18
    1ae8:	3c018000 	lui	at,0x8000
    1aec:	10000007 	b	1b0c <func_80ADF77C+0xe0>
    1af0:	01214825 	or	t1,t1,at
    1af4:	10000005 	b	1b0c <func_80ADF77C+0xe0>
    1af8:	2409ffff 	li	t1,-1
    1afc:	44099000 	mfc1	t1,$f18
    1b00:	00000000 	nop
    1b04:	0520fffb 	bltz	t1,1af4 <func_80ADF77C+0xc8>
    1b08:	00000000 	nop
    1b0c:	44c8f800 	ctc1	t0,$31
    1b10:	24010020 	li	at,32
    1b14:	14410007 	bne	v0,at,1b34 <func_80ADF77C+0x108>
    1b18:	a0c9029d 	sb	t1,669(a2)
    1b1c:	0c000000 	jal	0 <EnPoh_Init>
    1b20:	afa60018 	sw	a2,24(sp)
    1b24:	8fa40018 	lw	a0,24(sp)
    1b28:	a482019a 	sh	v0,410(a0)
    1b2c:	0c000000 	jal	0 <EnPoh_Init>
    1b30:	a0800194 	sb	zero,404(a0)
    1b34:	8fbf0014 	lw	ra,20(sp)
    1b38:	27bd0018 	addiu	sp,sp,24
    1b3c:	03e00008 	jr	ra
    1b40:	00000000 	nop

00001b44 <func_80ADF894>:
    1b44:	27bdffd8 	addiu	sp,sp,-40
    1b48:	afb00018 	sw	s0,24(sp)
    1b4c:	00808025 	move	s0,a0
    1b50:	afbf001c 	sw	ra,28(sp)
    1b54:	afa5002c 	sw	a1,44(sp)
    1b58:	0c000000 	jal	0 <EnPoh_Init>
    1b5c:	2484014c 	addiu	a0,a0,332
    1b60:	92040195 	lbu	a0,405(s0)
    1b64:	000422c0 	sll	a0,a0,0xb
    1b68:	00042400 	sll	a0,a0,0x10
    1b6c:	0c000000 	jal	0 <EnPoh_Init>
    1b70:	00042403 	sra	a0,a0,0x10
    1b74:	3c014040 	lui	at,0x4040
    1b78:	44812000 	mtc1	at,$f4
    1b7c:	00000000 	nop
    1b80:	46040182 	mul.s	$f6,$f0,$f4
    1b84:	e7a60024 	swc1	$f6,36(sp)
    1b88:	0c000000 	jal	0 <EnPoh_Init>
    1b8c:	860400b6 	lh	a0,182(s0)
    1b90:	c7aa0024 	lwc1	$f10,36(sp)
    1b94:	c6080024 	lwc1	$f8,36(s0)
    1b98:	860400b6 	lh	a0,182(s0)
    1b9c:	46005402 	mul.s	$f16,$f10,$f0
    1ba0:	46104481 	sub.s	$f18,$f8,$f16
    1ba4:	0c000000 	jal	0 <EnPoh_Init>
    1ba8:	e6120024 	swc1	$f18,36(s0)
    1bac:	c7a60024 	lwc1	$f6,36(sp)
    1bb0:	c604002c 	lwc1	$f4,44(s0)
    1bb4:	8605008a 	lh	a1,138(s0)
    1bb8:	46003282 	mul.s	$f10,$f6,$f0
    1bbc:	34018000 	li	at,0x8000
    1bc0:	00a12821 	addu	a1,a1,at
    1bc4:	00052c00 	sll	a1,a1,0x10
    1bc8:	00052c03 	sra	a1,a1,0x10
    1bcc:	26040032 	addiu	a0,s0,50
    1bd0:	2406071c 	li	a2,1820
    1bd4:	460a2200 	add.s	$f8,$f4,$f10
    1bd8:	0c000000 	jal	0 <EnPoh_Init>
    1bdc:	e608002c 	swc1	$f8,44(s0)
    1be0:	02002025 	move	a0,s0
    1be4:	0c000000 	jal	0 <EnPoh_Init>
    1be8:	8fa5002c 	lw	a1,44(sp)
    1bec:	860e0198 	lh	t6,408(s0)
    1bf0:	3c01437a 	lui	at,0x437a
    1bf4:	51c00008 	beqzl	t6,1c18 <func_80ADF894+0xd4>
    1bf8:	860f00b6 	lh	t7,182(s0)
    1bfc:	44818000 	mtc1	at,$f16
    1c00:	c6120090 	lwc1	$f18,144(s0)
    1c04:	4612803c 	c.lt.s	$f16,$f18
    1c08:	00000000 	nop
    1c0c:	45020006 	bc1fl	1c28 <func_80ADF894+0xe4>
    1c10:	02002025 	move	a0,s0
    1c14:	860f00b6 	lh	t7,182(s0)
    1c18:	02002025 	move	a0,s0
    1c1c:	0c000000 	jal	0 <EnPoh_Init>
    1c20:	a60f0032 	sh	t7,50(s0)
    1c24:	02002025 	move	a0,s0
    1c28:	0c000000 	jal	0 <EnPoh_Init>
    1c2c:	24053072 	li	a1,12402
    1c30:	8fbf001c 	lw	ra,28(sp)
    1c34:	8fb00018 	lw	s0,24(sp)
    1c38:	27bd0028 	addiu	sp,sp,40
    1c3c:	03e00008 	jr	ra
    1c40:	00000000 	nop

00001c44 <func_80ADF994>:
    1c44:	27bdffc8 	addiu	sp,sp,-56
    1c48:	afbf0034 	sw	ra,52(sp)
    1c4c:	afb00030 	sw	s0,48(sp)
    1c50:	afa5003c 	sw	a1,60(sp)
    1c54:	84820198 	lh	v0,408(a0)
    1c58:	00808025 	move	s0,a0
    1c5c:	26050024 	addiu	a1,s0,36
    1c60:	10400002 	beqz	v0,1c6c <func_80ADF994+0x28>
    1c64:	244effff 	addiu	t6,v0,-1
    1c68:	a48e0198 	sh	t6,408(a0)
    1c6c:	960f0088 	lhu	t7,136(s0)
    1c70:	24080001 	li	t0,1
    1c74:	24090001 	li	t1,1
    1c78:	31f80001 	andi	t8,t7,0x1
    1c7c:	13000018 	beqz	t8,1ce0 <func_80ADF994+0x9c>
    1c80:	240a000f 	li	t2,15
    1c84:	92190197 	lbu	t9,407(s0)
    1c88:	24010001 	li	at,1
    1c8c:	24020009 	li	v0,9
    1c90:	17210003 	bne	t9,at,1ca0 <func_80ADF994+0x5c>
    1c94:	240b000a 	li	t3,10
    1c98:	10000001 	b	1ca0 <func_80ADF994+0x5c>
    1c9c:	2402006e 	li	v0,110
    1ca0:	afa80010 	sw	t0,16(sp)
    1ca4:	afa90014 	sw	t1,20(sp)
    1ca8:	afaa0018 	sw	t2,24(sp)
    1cac:	afa2001c 	sw	v0,28(sp)
    1cb0:	afab0020 	sw	t3,32(sp)
    1cb4:	8e0c02a4 	lw	t4,676(s0)
    1cb8:	8fa4003c 	lw	a0,60(sp)
    1cbc:	3c0640c0 	lui	a2,0x40c0
    1cc0:	8d8d001c 	lw	t5,28(t4)
    1cc4:	00003825 	move	a3,zero
    1cc8:	0c000000 	jal	0 <EnPoh_Init>
    1ccc:	afad0024 	sw	t5,36(sp)
    1cd0:	0c000000 	jal	0 <EnPoh_Init>
    1cd4:	02002025 	move	a0,s0
    1cd8:	10000008 	b	1cfc <func_80ADF994+0xb8>
    1cdc:	00000000 	nop
    1ce0:	860e0198 	lh	t6,408(s0)
    1ce4:	15c00005 	bnez	t6,1cfc <func_80ADF994+0xb8>
    1ce8:	00000000 	nop
    1cec:	0c000000 	jal	0 <EnPoh_Init>
    1cf0:	02002025 	move	a0,s0
    1cf4:	1000000e 	b	1d30 <func_80ADF994+0xec>
    1cf8:	8fbf0034 	lw	ra,52(sp)
    1cfc:	0c000000 	jal	0 <EnPoh_Init>
    1d00:	02002025 	move	a0,s0
    1d04:	3c014120 	lui	at,0x4120
    1d08:	44810000 	mtc1	at,$f0
    1d0c:	240f0004 	li	t7,4
    1d10:	afaf0014 	sw	t7,20(sp)
    1d14:	44060000 	mfc1	a2,$f0
    1d18:	44070000 	mfc1	a3,$f0
    1d1c:	8fa4003c 	lw	a0,60(sp)
    1d20:	02002825 	move	a1,s0
    1d24:	0c000000 	jal	0 <EnPoh_Init>
    1d28:	e7a00010 	swc1	$f0,16(sp)
    1d2c:	8fbf0034 	lw	ra,52(sp)
    1d30:	8fb00030 	lw	s0,48(sp)
    1d34:	27bd0038 	addiu	sp,sp,56
    1d38:	03e00008 	jr	ra
    1d3c:	00000000 	nop

00001d40 <func_80ADFA90>:
    1d40:	27bdffd0 	addiu	sp,sp,-48
    1d44:	afbf002c 	sw	ra,44(sp)
    1d48:	afb00028 	sw	s0,40(sp)
    1d4c:	908e029d 	lbu	t6,669(a0)
    1d50:	00808025 	move	s0,a0
    1d54:	01c51021 	addu	v0,t6,a1
    1d58:	04410003 	bgez	v0,1d68 <func_80ADFA90+0x28>
    1d5c:	28410100 	slti	at,v0,256
    1d60:	10000006 	b	1d7c <func_80ADFA90+0x3c>
    1d64:	a080029d 	sb	zero,669(a0)
    1d68:	14200003 	bnez	at,1d78 <func_80ADFA90+0x38>
    1d6c:	00401825 	move	v1,v0
    1d70:	10000001 	b	1d78 <func_80ADFA90+0x38>
    1d74:	240300ff 	li	v1,255
    1d78:	a203029d 	sb	v1,669(s0)
    1d7c:	04a3001d 	bgezl	a1,1df4 <func_80ADFA90+0xb4>
    1d80:	9218029d 	lbu	t8,669(s0)
    1d84:	920f029d 	lbu	t7,669(s0)
    1d88:	3c010000 	lui	at,0x0
    1d8c:	c42e0000 	lwc1	$f14,0(at)
    1d90:	448f2000 	mtc1	t7,$f4
    1d94:	3c014f80 	lui	at,0x4f80
    1d98:	05e10004 	bgez	t7,1dac <func_80ADFA90+0x6c>
    1d9c:	46802320 	cvt.s.w	$f12,$f4
    1da0:	44813000 	mtc1	at,$f6
    1da4:	00000000 	nop
    1da8:	46066300 	add.s	$f12,$f12,$f6
    1dac:	3c010000 	lui	at,0x0
    1db0:	c4280000 	lwc1	$f8,0(at)
    1db4:	3c010000 	lui	at,0x0
    1db8:	c42a0000 	lwc1	$f10,0(at)
    1dbc:	46086082 	mul.s	$f2,$f12,$f8
    1dc0:	3c010000 	lui	at,0x0
    1dc4:	c4320000 	lwc1	$f18,0(at)
    1dc8:	46025402 	mul.s	$f16,$f10,$f2
    1dcc:	00000000 	nop
    1dd0:	46027102 	mul.s	$f4,$f14,$f2
    1dd4:	46128000 	add.s	$f0,$f16,$f18
    1dd8:	46047181 	sub.s	$f6,$f14,$f4
    1ddc:	e6000058 	swc1	$f0,88(s0)
    1de0:	e6000050 	swc1	$f0,80(s0)
    1de4:	460e3200 	add.s	$f8,$f6,$f14
    1de8:	10000017 	b	1e48 <func_80ADFA90+0x108>
    1dec:	e6080054 	swc1	$f8,84(s0)
    1df0:	9218029d 	lbu	t8,669(s0)
    1df4:	3c013f80 	lui	at,0x3f80
    1df8:	44811000 	mtc1	at,$f2
    1dfc:	44985000 	mtc1	t8,$f10
    1e00:	3c014f80 	lui	at,0x4f80
    1e04:	07010004 	bgez	t8,1e18 <func_80ADFA90+0xd8>
    1e08:	46805320 	cvt.s.w	$f12,$f10
    1e0c:	44818000 	mtc1	at,$f16
    1e10:	00000000 	nop
    1e14:	46106300 	add.s	$f12,$f12,$f16
    1e18:	3c010000 	lui	at,0x0
    1e1c:	c4320000 	lwc1	$f18,0(at)
    1e20:	3c010000 	lui	at,0x0
    1e24:	c604000c 	lwc1	$f4,12(s0)
    1e28:	46126002 	mul.s	$f0,$f12,$f18
    1e2c:	e6000058 	swc1	$f0,88(s0)
    1e30:	e6000054 	swc1	$f0,84(s0)
    1e34:	e6000050 	swc1	$f0,80(s0)
    1e38:	c4260000 	lwc1	$f6,0(at)
    1e3c:	460c3202 	mul.s	$f8,$f6,$f12
    1e40:	46082280 	add.s	$f10,$f4,$f8
    1e44:	e60a0028 	swc1	$f10,40(s0)
    1e48:	8e0202a4 	lw	v0,676(s0)
    1e4c:	3c014f80 	lui	at,0x4f80
    1e50:	90590003 	lbu	t9,3(v0)
    1e54:	44998000 	mtc1	t9,$f16
    1e58:	07210004 	bgez	t9,1e6c <func_80ADFA90+0x12c>
    1e5c:	468084a0 	cvt.s.w	$f18,$f16
    1e60:	44813000 	mtc1	at,$f6
    1e64:	00000000 	nop
    1e68:	46069480 	add.s	$f18,$f18,$f6
    1e6c:	46029102 	mul.s	$f4,$f18,$f2
    1e70:	24090001 	li	t1,1
    1e74:	3c014f00 	lui	at,0x4f00
    1e78:	4448f800 	cfc1	t0,$31
    1e7c:	44c9f800 	ctc1	t1,$31
    1e80:	00000000 	nop
    1e84:	46002224 	cvt.w.s	$f8,$f4
    1e88:	4449f800 	cfc1	t1,$31
    1e8c:	00000000 	nop
    1e90:	31290078 	andi	t1,t1,0x78
    1e94:	51200013 	beqzl	t1,1ee4 <func_80ADFA90+0x1a4>
    1e98:	44094000 	mfc1	t1,$f8
    1e9c:	44814000 	mtc1	at,$f8
    1ea0:	24090001 	li	t1,1
    1ea4:	46082201 	sub.s	$f8,$f4,$f8
    1ea8:	44c9f800 	ctc1	t1,$31
    1eac:	00000000 	nop
    1eb0:	46004224 	cvt.w.s	$f8,$f8
    1eb4:	4449f800 	cfc1	t1,$31
    1eb8:	00000000 	nop
    1ebc:	31290078 	andi	t1,t1,0x78
    1ec0:	15200005 	bnez	t1,1ed8 <func_80ADFA90+0x198>
    1ec4:	00000000 	nop
    1ec8:	44094000 	mfc1	t1,$f8
    1ecc:	3c018000 	lui	at,0x8000
    1ed0:	10000007 	b	1ef0 <func_80ADFA90+0x1b0>
    1ed4:	01214825 	or	t1,t1,at
    1ed8:	10000005 	b	1ef0 <func_80ADFA90+0x1b0>
    1edc:	2409ffff 	li	t1,-1
    1ee0:	44094000 	mfc1	t1,$f8
    1ee4:	00000000 	nop
    1ee8:	0520fffb 	bltz	t1,1ed8 <func_80ADFA90+0x198>
    1eec:	00000000 	nop
    1ef0:	a209029a 	sb	t1,666(s0)
    1ef4:	904a0004 	lbu	t2,4(v0)
    1ef8:	44c8f800 	ctc1	t0,$31
    1efc:	3c014f80 	lui	at,0x4f80
    1f00:	448a5000 	mtc1	t2,$f10
    1f04:	05410004 	bgez	t2,1f18 <func_80ADFA90+0x1d8>
    1f08:	46805420 	cvt.s.w	$f16,$f10
    1f0c:	44813000 	mtc1	at,$f6
    1f10:	00000000 	nop
    1f14:	46068400 	add.s	$f16,$f16,$f6
    1f18:	46028482 	mul.s	$f18,$f16,$f2
    1f1c:	240c0001 	li	t4,1
    1f20:	3c014f00 	lui	at,0x4f00
    1f24:	444bf800 	cfc1	t3,$31
    1f28:	44ccf800 	ctc1	t4,$31
    1f2c:	00000000 	nop
    1f30:	46009124 	cvt.w.s	$f4,$f18
    1f34:	444cf800 	cfc1	t4,$31
    1f38:	00000000 	nop
    1f3c:	318c0078 	andi	t4,t4,0x78
    1f40:	51800013 	beqzl	t4,1f90 <func_80ADFA90+0x250>
    1f44:	440c2000 	mfc1	t4,$f4
    1f48:	44812000 	mtc1	at,$f4
    1f4c:	240c0001 	li	t4,1
    1f50:	46049101 	sub.s	$f4,$f18,$f4
    1f54:	44ccf800 	ctc1	t4,$31
    1f58:	00000000 	nop
    1f5c:	46002124 	cvt.w.s	$f4,$f4
    1f60:	444cf800 	cfc1	t4,$31
    1f64:	00000000 	nop
    1f68:	318c0078 	andi	t4,t4,0x78
    1f6c:	15800005 	bnez	t4,1f84 <func_80ADFA90+0x244>
    1f70:	00000000 	nop
    1f74:	440c2000 	mfc1	t4,$f4
    1f78:	3c018000 	lui	at,0x8000
    1f7c:	10000007 	b	1f9c <func_80ADFA90+0x25c>
    1f80:	01816025 	or	t4,t4,at
    1f84:	10000005 	b	1f9c <func_80ADFA90+0x25c>
    1f88:	240cffff 	li	t4,-1
    1f8c:	440c2000 	mfc1	t4,$f4
    1f90:	00000000 	nop
    1f94:	0580fffb 	bltz	t4,1f84 <func_80ADFA90+0x244>
    1f98:	00000000 	nop
    1f9c:	a20c029b 	sb	t4,667(s0)
    1fa0:	904d0005 	lbu	t5,5(v0)
    1fa4:	44cbf800 	ctc1	t3,$31
    1fa8:	3c014f80 	lui	at,0x4f80
    1fac:	448d4000 	mtc1	t5,$f8
    1fb0:	05a10004 	bgez	t5,1fc4 <func_80ADFA90+0x284>
    1fb4:	468042a0 	cvt.s.w	$f10,$f8
    1fb8:	44813000 	mtc1	at,$f6
    1fbc:	00000000 	nop
    1fc0:	46065280 	add.s	$f10,$f10,$f6
    1fc4:	46025402 	mul.s	$f16,$f10,$f2
    1fc8:	240f0001 	li	t7,1
    1fcc:	3c014f00 	lui	at,0x4f00
    1fd0:	444ef800 	cfc1	t6,$31
    1fd4:	44cff800 	ctc1	t7,$31
    1fd8:	00000000 	nop
    1fdc:	460084a4 	cvt.w.s	$f18,$f16
    1fe0:	444ff800 	cfc1	t7,$31
    1fe4:	00000000 	nop
    1fe8:	31ef0078 	andi	t7,t7,0x78
    1fec:	51e00013 	beqzl	t7,203c <func_80ADFA90+0x2fc>
    1ff0:	440f9000 	mfc1	t7,$f18
    1ff4:	44819000 	mtc1	at,$f18
    1ff8:	240f0001 	li	t7,1
    1ffc:	46128481 	sub.s	$f18,$f16,$f18
    2000:	44cff800 	ctc1	t7,$31
    2004:	00000000 	nop
    2008:	460094a4 	cvt.w.s	$f18,$f18
    200c:	444ff800 	cfc1	t7,$31
    2010:	00000000 	nop
    2014:	31ef0078 	andi	t7,t7,0x78
    2018:	15e00005 	bnez	t7,2030 <func_80ADFA90+0x2f0>
    201c:	00000000 	nop
    2020:	440f9000 	mfc1	t7,$f18
    2024:	3c018000 	lui	at,0x8000
    2028:	10000007 	b	2048 <func_80ADFA90+0x308>
    202c:	01e17825 	or	t7,t7,at
    2030:	10000005 	b	2048 <func_80ADFA90+0x308>
    2034:	240fffff 	li	t7,-1
    2038:	440f9000 	mfc1	t7,$f18
    203c:	00000000 	nop
    2040:	05e0fffb 	bltz	t7,2030 <func_80ADFA90+0x2f0>
    2044:	00000000 	nop
    2048:	44cef800 	ctc1	t6,$31
    204c:	c6040024 	lwc1	$f4,36(s0)
    2050:	a20f029c 	sb	t7,668(s0)
    2054:	3c010000 	lui	at,0x0
    2058:	4600220d 	trunc.w.s	$f8,$f4
    205c:	c4240000 	lwc1	$f4,0(at)
    2060:	c6060028 	lwc1	$f6,40(s0)
    2064:	c610002c 	lwc1	$f16,44(s0)
    2068:	44054000 	mfc1	a1,$f8
    206c:	46046202 	mul.s	$f8,$f12,$f4
    2070:	90490003 	lbu	t1,3(v0)
    2074:	00052c00 	sll	a1,a1,0x10
    2078:	00052c03 	sra	a1,a1,0x10
    207c:	afa90010 	sw	t1,16(sp)
    2080:	904a0004 	lbu	t2,4(v0)
    2084:	4600328d 	trunc.w.s	$f10,$f6
    2088:	260402ac 	addiu	a0,s0,684
    208c:	afaa0014 	sw	t2,20(sp)
    2090:	4600848d 	trunc.w.s	$f18,$f16
    2094:	44065000 	mfc1	a2,$f10
    2098:	904b0005 	lbu	t3,5(v0)
    209c:	4600418d 	trunc.w.s	$f6,$f8
    20a0:	44079000 	mfc1	a3,$f18
    20a4:	00063400 	sll	a2,a2,0x10
    20a8:	00063403 	sra	a2,a2,0x10
    20ac:	440d3000 	mfc1	t5,$f6
    20b0:	00073c00 	sll	a3,a3,0x10
    20b4:	00073c03 	sra	a3,a3,0x10
    20b8:	afab0018 	sw	t3,24(sp)
    20bc:	0c000000 	jal	0 <EnPoh_Init>
    20c0:	afad001c 	sw	t5,28(sp)
    20c4:	8fbf002c 	lw	ra,44(sp)
    20c8:	8fb00028 	lw	s0,40(sp)
    20cc:	27bd0030 	addiu	sp,sp,48
    20d0:	03e00008 	jr	ra
    20d4:	00000000 	nop

000020d8 <func_80ADFE28>:
    20d8:	27bdffe8 	addiu	sp,sp,-24
    20dc:	afbf0014 	sw	ra,20(sp)
    20e0:	afa5001c 	sw	a1,28(sp)
    20e4:	3c014000 	lui	at,0x4000
    20e8:	44813000 	mtc1	at,$f6
    20ec:	c484000c 	lwc1	$f4,12(a0)
    20f0:	24050014 	li	a1,20
    20f4:	46062200 	add.s	$f8,$f4,$f6
    20f8:	e488000c 	swc1	$f8,12(a0)
    20fc:	0c000000 	jal	0 <EnPoh_Init>
    2100:	afa40018 	sw	a0,24(sp)
    2104:	8fa40018 	lw	a0,24(sp)
    2108:	240100ff 	li	at,255
    210c:	908e029d 	lbu	t6,669(a0)
    2110:	55c10004 	bnel	t6,at,2124 <func_80ADFE28+0x4c>
    2114:	8fbf0014 	lw	ra,20(sp)
    2118:	0c000000 	jal	0 <EnPoh_Init>
    211c:	8fa5001c 	lw	a1,28(sp)
    2120:	8fbf0014 	lw	ra,20(sp)
    2124:	27bd0018 	addiu	sp,sp,24
    2128:	03e00008 	jr	ra
    212c:	00000000 	nop

00002130 <func_80ADFE80>:
    2130:	27bdffd0 	addiu	sp,sp,-48
    2134:	afbf002c 	sw	ra,44(sp)
    2138:	afb00028 	sw	s0,40(sp)
    213c:	84820198 	lh	v0,408(a0)
    2140:	00a03825 	move	a3,a1
    2144:	00808025 	move	s0,a0
    2148:	10400003 	beqz	v0,2158 <func_80ADFE80+0x28>
    214c:	00e02825 	move	a1,a3
    2150:	244effff 	addiu	t6,v0,-1
    2154:	a48e0198 	sh	t6,408(a0)
    2158:	02002025 	move	a0,s0
    215c:	0c000000 	jal	0 <EnPoh_Init>
    2160:	afa70034 	sw	a3,52(sp)
    2164:	1040000d 	beqz	v0,219c <func_80ADFE80+0x6c>
    2168:	8fa70034 	lw	a3,52(sp)
    216c:	860f001c 	lh	t7,28(s0)
    2170:	29e10002 	slti	at,t7,2
    2174:	14200005 	bnez	at,218c <func_80ADFE80+0x5c>
    2178:	00000000 	nop
    217c:	0c000000 	jal	0 <EnPoh_Init>
    2180:	02002025 	move	a0,s0
    2184:	1000006d 	b	233c <func_80ADFE80+0x20c>
    2188:	8fbf002c 	lw	ra,44(sp)
    218c:	0c000000 	jal	0 <EnPoh_Init>
    2190:	02002025 	move	a0,s0
    2194:	10000069 	b	233c <func_80ADFE80+0x20c>
    2198:	8fbf002c 	lw	ra,44(sp)
    219c:	86180198 	lh	t8,408(s0)
    21a0:	02002025 	move	a0,s0
    21a4:	5700000a 	bnezl	t8,21d0 <func_80ADFE80+0xa0>
    21a8:	920902ce 	lbu	t1,718(s0)
    21ac:	0c000000 	jal	0 <EnPoh_Init>
    21b0:	24050001 	li	a1,1
    21b4:	8e190004 	lw	t9,4(s0)
    21b8:	3c01fffe 	lui	at,0xfffe
    21bc:	3421ffff 	ori	at,at,0xffff
    21c0:	03214024 	and	t0,t9,at
    21c4:	1000005c 	b	2338 <func_80ADFE80+0x208>
    21c8:	ae080004 	sw	t0,4(s0)
    21cc:	920902ce 	lbu	t1,718(s0)
    21d0:	3c01fffe 	lui	at,0xfffe
    21d4:	02002025 	move	a0,s0
    21d8:	312a0002 	andi	t2,t1,0x2
    21dc:	11400009 	beqz	t2,2204 <func_80ADFE80+0xd4>
    21e0:	3421ffff 	ori	at,at,0xffff
    21e4:	8e0b0004 	lw	t3,4(s0)
    21e8:	3c010001 	lui	at,0x1
    21ec:	00e02825 	move	a1,a3
    21f0:	01616025 	or	t4,t3,at
    21f4:	0c000000 	jal	0 <EnPoh_Init>
    21f8:	ae0c0004 	sw	t4,4(s0)
    21fc:	1000000b 	b	222c <func_80ADFE80+0xfc>
    2200:	92040195 	lbu	a0,405(s0)
    2204:	8e0d0004 	lw	t5,4(s0)
    2208:	00e02025 	move	a0,a3
    220c:	260602bc 	addiu	a2,s0,700
    2210:	01a17024 	and	t6,t5,at
    2214:	3c010001 	lui	at,0x1
    2218:	34211e60 	ori	at,at,0x1e60
    221c:	ae0e0004 	sw	t6,4(s0)
    2220:	0c000000 	jal	0 <EnPoh_Init>
    2224:	00e12821 	addu	a1,a3,at
    2228:	92040195 	lbu	a0,405(s0)
    222c:	000422c0 	sll	a0,a0,0xb
    2230:	00042400 	sll	a0,a0,0x10
    2234:	0c000000 	jal	0 <EnPoh_Init>
    2238:	00042403 	sra	a0,a0,0x10
    223c:	3c0140a0 	lui	at,0x40a0
    2240:	44812000 	mtc1	at,$f4
    2244:	c608000c 	lwc1	$f8,12(s0)
    2248:	92020195 	lbu	v0,405(s0)
    224c:	46040182 	mul.s	$f6,$f0,$f4
    2250:	3c0141a0 	lui	at,0x41a0
    2254:	44819000 	mtc1	at,$f18
    2258:	24180020 	li	t8,32
    225c:	244fffff 	addiu	t7,v0,-1
    2260:	46083280 	add.s	$f10,$f6,$f8
    2264:	10400003 	beqz	v0,2274 <func_80ADFE80+0x144>
    2268:	e60a0028 	swc1	$f10,40(s0)
    226c:	a20f0195 	sb	t7,405(s0)
    2270:	31e200ff 	andi	v0,t7,0xff
    2274:	54400003 	bnezl	v0,2284 <func_80ADFE80+0x154>
    2278:	c6100028 	lwc1	$f16,40(s0)
    227c:	a2180195 	sb	t8,405(s0)
    2280:	c6100028 	lwc1	$f16,40(s0)
    2284:	02002025 	move	a0,s0
    2288:	3c05c120 	lui	a1,0xc120
    228c:	46128101 	sub.s	$f4,$f16,$f18
    2290:	4600218d 	trunc.w.s	$f6,$f4
    2294:	44083000 	mfc1	t0,$f6
    2298:	0c000000 	jal	0 <EnPoh_Init>
    229c:	a6080304 	sh	t0,772(s0)
    22a0:	8e0202a4 	lw	v0,676(s0)
    22a4:	c6080024 	lwc1	$f8,36(s0)
    22a8:	c6100028 	lwc1	$f16,40(s0)
    22ac:	904c0003 	lbu	t4,3(v0)
    22b0:	c604002c 	lwc1	$f4,44(s0)
    22b4:	4600428d 	trunc.w.s	$f10,$f8
    22b8:	afac0010 	sw	t4,16(sp)
    22bc:	904d0004 	lbu	t5,4(v0)
    22c0:	4600848d 	trunc.w.s	$f18,$f16
    22c4:	44055000 	mfc1	a1,$f10
    22c8:	afad0014 	sw	t5,20(sp)
    22cc:	904e0005 	lbu	t6,5(v0)
    22d0:	4600218d 	trunc.w.s	$f6,$f4
    22d4:	44069000 	mfc1	a2,$f18
    22d8:	afae0018 	sw	t6,24(sp)
    22dc:	920f029d 	lbu	t7,669(s0)
    22e0:	44073000 	mfc1	a3,$f6
    22e4:	00052c00 	sll	a1,a1,0x10
    22e8:	448f4000 	mtc1	t7,$f8
    22ec:	00063400 	sll	a2,a2,0x10
    22f0:	00073c00 	sll	a3,a3,0x10
    22f4:	00073c03 	sra	a3,a3,0x10
    22f8:	00063403 	sra	a2,a2,0x10
    22fc:	00052c03 	sra	a1,a1,0x10
    2300:	260402ac 	addiu	a0,s0,684
    2304:	05e10005 	bgez	t7,231c <func_80ADFE80+0x1ec>
    2308:	468042a0 	cvt.s.w	$f10,$f8
    230c:	3c014f80 	lui	at,0x4f80
    2310:	44818000 	mtc1	at,$f16
    2314:	00000000 	nop
    2318:	46105280 	add.s	$f10,$f10,$f16
    231c:	3c010000 	lui	at,0x0
    2320:	c4320000 	lwc1	$f18,0(at)
    2324:	46125102 	mul.s	$f4,$f10,$f18
    2328:	4600218d 	trunc.w.s	$f6,$f4
    232c:	44193000 	mfc1	t9,$f6
    2330:	0c000000 	jal	0 <EnPoh_Init>
    2334:	afb9001c 	sw	t9,28(sp)
    2338:	8fbf002c 	lw	ra,44(sp)
    233c:	8fb00028 	lw	s0,40(sp)
    2340:	27bd0030 	addiu	sp,sp,48
    2344:	03e00008 	jr	ra
    2348:	00000000 	nop

0000234c <func_80AE009C>:
    234c:	27bdffe8 	addiu	sp,sp,-24
    2350:	afbf0014 	sw	ra,20(sp)
    2354:	afa5001c 	sw	a1,28(sp)
    2358:	2405fff3 	li	a1,-13
    235c:	0c000000 	jal	0 <EnPoh_Init>
    2360:	afa40018 	sw	a0,24(sp)
    2364:	8fa40018 	lw	a0,24(sp)
    2368:	908e029d 	lbu	t6,669(a0)
    236c:	55c00004 	bnezl	t6,2380 <func_80AE009C+0x34>
    2370:	8fbf0014 	lw	ra,20(sp)
    2374:	0c000000 	jal	0 <EnPoh_Init>
    2378:	00000000 	nop
    237c:	8fbf0014 	lw	ra,20(sp)
    2380:	27bd0018 	addiu	sp,sp,24
    2384:	03e00008 	jr	ra
    2388:	00000000 	nop

0000238c <func_80AE00DC>:
    238c:	27bdffe0 	addiu	sp,sp,-32
    2390:	afbf001c 	sw	ra,28(sp)
    2394:	afb00018 	sw	s0,24(sp)
    2398:	afa50024 	sw	a1,36(sp)
    239c:	948e010e 	lhu	t6,270(a0)
    23a0:	24015005 	li	at,20485
    23a4:	00808025 	move	s0,a0
    23a8:	11c10005 	beq	t6,at,23c0 <func_80AE00DC+0x34>
    23ac:	240531e8 	li	a1,12776
    23b0:	0c000000 	jal	0 <EnPoh_Init>
    23b4:	2405fff3 	li	a1,-13
    23b8:	10000004 	b	23cc <func_80AE00DC+0x40>
    23bc:	8fa40024 	lw	a0,36(sp)
    23c0:	0c000000 	jal	0 <EnPoh_Init>
    23c4:	02002025 	move	a0,s0
    23c8:	8fa40024 	lw	a0,36(sp)
    23cc:	0c000000 	jal	0 <EnPoh_Init>
    23d0:	248420d8 	addiu	a0,a0,8408
    23d4:	24010004 	li	at,4
    23d8:	1441002b 	bne	v0,at,2488 <func_80AE00DC+0xfc>
    23dc:	02002025 	move	a0,s0
    23e0:	0c000000 	jal	0 <EnPoh_Init>
    23e4:	8fa40024 	lw	a0,36(sp)
    23e8:	1040002d 	beqz	v0,24a0 <func_80AE00DC+0x114>
    23ec:	260400e4 	addiu	a0,s0,228
    23f0:	0c000000 	jal	0 <EnPoh_Init>
    23f4:	240531e8 	li	a1,12776
    23f8:	8faf0024 	lw	t7,36(sp)
    23fc:	3c180001 	lui	t8,0x1
    2400:	24095007 	li	t1,20487
    2404:	030fc021 	addu	t8,t8,t7
    2408:	931804bd 	lbu	t8,1213(t8)
    240c:	02002025 	move	a0,s0
    2410:	240538ec 	li	a1,14572
    2414:	17000015 	bnez	t8,246c <func_80AE00DC+0xe0>
    2418:	00000000 	nop
    241c:	0c000000 	jal	0 <EnPoh_Init>
    2420:	00000000 	nop
    2424:	1040000b 	beqz	v0,2454 <func_80AE00DC+0xc8>
    2428:	24085006 	li	t0,20486
    242c:	24195008 	li	t9,20488
    2430:	a619010e 	sh	t9,270(s0)
    2434:	8fa40024 	lw	a0,36(sp)
    2438:	0c000000 	jal	0 <EnPoh_Init>
    243c:	24050020 	li	a1,32
    2440:	02002025 	move	a0,s0
    2444:	0c000000 	jal	0 <EnPoh_Init>
    2448:	24053883 	li	a1,14467
    244c:	1000000a 	b	2478 <func_80AE00DC+0xec>
    2450:	8fa40024 	lw	a0,36(sp)
    2454:	a608010e 	sh	t0,270(s0)
    2458:	02002025 	move	a0,s0
    245c:	0c000000 	jal	0 <EnPoh_Init>
    2460:	240538ec 	li	a1,14572
    2464:	10000004 	b	2478 <func_80AE00DC+0xec>
    2468:	8fa40024 	lw	a0,36(sp)
    246c:	0c000000 	jal	0 <EnPoh_Init>
    2470:	a609010e 	sh	t1,270(s0)
    2474:	8fa40024 	lw	a0,36(sp)
    2478:	0c000000 	jal	0 <EnPoh_Init>
    247c:	9605010e 	lhu	a1,270(s0)
    2480:	10000008 	b	24a4 <func_80AE00DC+0x118>
    2484:	8fbf001c 	lw	ra,28(sp)
    2488:	0c000000 	jal	0 <EnPoh_Init>
    248c:	8fa50024 	lw	a1,36(sp)
    2490:	10400003 	beqz	v0,24a0 <func_80AE00DC+0x114>
    2494:	02002025 	move	a0,s0
    2498:	0c000000 	jal	0 <EnPoh_Init>
    249c:	00002825 	move	a1,zero
    24a0:	8fbf001c 	lw	ra,28(sp)
    24a4:	8fb00018 	lw	s0,24(sp)
    24a8:	27bd0020 	addiu	sp,sp,32
    24ac:	03e00008 	jr	ra
    24b0:	00000000 	nop

000024b4 <func_80AE0204>:
    24b4:	27bdffe0 	addiu	sp,sp,-32
    24b8:	afb00014 	sw	s0,20(sp)
    24bc:	00a08025 	move	s0,a1
    24c0:	afbf001c 	sw	ra,28(sp)
    24c4:	afb10018 	sw	s1,24(sp)
    24c8:	00808825 	move	s1,a0
    24cc:	0c000000 	jal	0 <EnPoh_Init>
    24d0:	240531e8 	li	a1,12776
    24d4:	0c000000 	jal	0 <EnPoh_Init>
    24d8:	260420d8 	addiu	a0,s0,8408
    24dc:	24010004 	li	at,4
    24e0:	1441002b 	bne	v0,at,2590 <func_80AE0204+0xdc>
    24e4:	02202025 	move	a0,s1
    24e8:	0c000000 	jal	0 <EnPoh_Init>
    24ec:	02002025 	move	a0,s0
    24f0:	10400035 	beqz	v0,25c8 <func_80AE0204+0x114>
    24f4:	3c0e0001 	lui	t6,0x1
    24f8:	01d07021 	addu	t6,t6,s0
    24fc:	91ce04bd 	lbu	t6,1213(t6)
    2500:	02002025 	move	a0,s0
    2504:	55c00013 	bnezl	t6,2554 <func_80AE0204+0xa0>
    2508:	8639001c 	lh	t9,28(s1)
    250c:	0c000000 	jal	0 <EnPoh_Init>
    2510:	2405000b 	li	a1,11
    2514:	14400007 	bnez	v0,2534 <func_80AE0204+0x80>
    2518:	02002025 	move	a0,s0
    251c:	0c000000 	jal	0 <EnPoh_Init>
    2520:	2405000a 	li	a1,10
    2524:	14400003 	bnez	v0,2534 <func_80AE0204+0x80>
    2528:	240f5010 	li	t7,20496
    252c:	10000003 	b	253c <func_80AE0204+0x88>
    2530:	a62f010e 	sh	t7,270(s1)
    2534:	24185014 	li	t8,20500
    2538:	a638010e 	sh	t8,270(s1)
    253c:	02002025 	move	a0,s0
    2540:	0c000000 	jal	0 <EnPoh_Init>
    2544:	9625010e 	lhu	a1,270(s1)
    2548:	10000020 	b	25cc <func_80AE0204+0x118>
    254c:	8fbf001c 	lw	ra,28(sp)
    2550:	8639001c 	lh	t9,28(s1)
    2554:	24010002 	li	at,2
    2558:	2405000b 	li	a1,11
    255c:	17210005 	bne	t9,at,2574 <func_80AE0204+0xc0>
    2560:	02002025 	move	a0,s0
    2564:	0c000000 	jal	0 <EnPoh_Init>
    2568:	02002025 	move	a0,s0
    256c:	10000004 	b	2580 <func_80AE0204+0xcc>
    2570:	02202025 	move	a0,s1
    2574:	0c000000 	jal	0 <EnPoh_Init>
    2578:	2405000a 	li	a1,10
    257c:	02202025 	move	a0,s1
    2580:	0c000000 	jal	0 <EnPoh_Init>
    2584:	24050001 	li	a1,1
    2588:	10000010 	b	25cc <func_80AE0204+0x118>
    258c:	8fbf001c 	lw	ra,28(sp)
    2590:	0c000000 	jal	0 <EnPoh_Init>
    2594:	02002825 	move	a1,s0
    2598:	5040000c 	beqzl	v0,25cc <func_80AE0204+0x118>
    259c:	8fbf001c 	lw	ra,28(sp)
    25a0:	9628010e 	lhu	t0,270(s1)
    25a4:	24015000 	li	at,20480
    25a8:	02002025 	move	a0,s0
    25ac:	55010004 	bnel	t0,at,25c0 <func_80AE0204+0x10c>
    25b0:	02202025 	move	a0,s1
    25b4:	0c000000 	jal	0 <EnPoh_Init>
    25b8:	24050009 	li	a1,9
    25bc:	02202025 	move	a0,s1
    25c0:	0c000000 	jal	0 <EnPoh_Init>
    25c4:	24050001 	li	a1,1
    25c8:	8fbf001c 	lw	ra,28(sp)
    25cc:	8fb00014 	lw	s0,20(sp)
    25d0:	8fb10018 	lw	s1,24(sp)
    25d4:	03e00008 	jr	ra
    25d8:	27bd0020 	addiu	sp,sp,32

000025dc <func_80AE032C>:
    25dc:	27bdffe0 	addiu	sp,sp,-32
    25e0:	afbf001c 	sw	ra,28(sp)
    25e4:	afb00018 	sw	s0,24(sp)
    25e8:	afa50024 	sw	a1,36(sp)
    25ec:	908202cd 	lbu	v0,717(a0)
    25f0:	00808025 	move	s0,a0
    25f4:	304e0002 	andi	t6,v0,0x2
    25f8:	51c0001a 	beqzl	t6,2664 <func_80AE032C+0x88>
    25fc:	8fbf001c 	lw	ra,28(sp)
    2600:	909800b1 	lbu	t8,177(a0)
    2604:	304ffffd 	andi	t7,v0,0xfffd
    2608:	a08f02cd 	sb	t7,717(a0)
    260c:	17000004 	bnez	t8,2620 <func_80AE032C+0x44>
    2610:	00000000 	nop
    2614:	909900b0 	lbu	t9,176(a0)
    2618:	53200012 	beqzl	t9,2664 <func_80AE032C+0x88>
    261c:	8fbf001c 	lw	ra,28(sp)
    2620:	0c000000 	jal	0 <EnPoh_Init>
    2624:	02002025 	move	a0,s0
    2628:	14400009 	bnez	v0,2650 <func_80AE032C+0x74>
    262c:	02002025 	move	a0,s0
    2630:	8fa40024 	lw	a0,36(sp)
    2634:	0c000000 	jal	0 <EnPoh_Init>
    2638:	02002825 	move	a1,s0
    263c:	02002025 	move	a0,s0
    2640:	0c000000 	jal	0 <EnPoh_Init>
    2644:	24053876 	li	a1,14454
    2648:	10000003 	b	2658 <func_80AE032C+0x7c>
    264c:	00000000 	nop
    2650:	0c000000 	jal	0 <EnPoh_Init>
    2654:	24053875 	li	a1,14453
    2658:	0c000000 	jal	0 <EnPoh_Init>
    265c:	02002025 	move	a0,s0
    2660:	8fbf001c 	lw	ra,28(sp)
    2664:	8fb00018 	lw	s0,24(sp)
    2668:	27bd0020 	addiu	sp,sp,32
    266c:	03e00008 	jr	ra
    2670:	00000000 	nop

00002674 <func_80AE03C4>:
    2674:	27bdffe8 	addiu	sp,sp,-24
    2678:	afbf0014 	sw	ra,20(sp)
    267c:	8c820190 	lw	v0,400(a0)
    2680:	3c0e0000 	lui	t6,0x0
    2684:	25ce0000 	addiu	t6,t6,0
    2688:	11c20052 	beq	t6,v0,27d4 <func_80AE03C4+0x160>
    268c:	3c0f0000 	lui	t7,0x0
    2690:	25ef0000 	addiu	t7,t7,0
    2694:	11e2004f 	beq	t7,v0,27d4 <func_80AE03C4+0x160>
    2698:	3c180000 	lui	t8,0x0
    269c:	27180000 	addiu	t8,t8,0
    26a0:	1302004c 	beq	t8,v0,27d4 <func_80AE03C4+0x160>
    26a4:	3c190000 	lui	t9,0x0
    26a8:	27390000 	addiu	t9,t9,0
    26ac:	5322004a 	beql	t9,v0,27d8 <func_80AE03C4+0x164>
    26b0:	8fbf0014 	lw	ra,20(sp)
    26b4:	8482019a 	lh	v0,410(a0)
    26b8:	10400002 	beqz	v0,26c4 <func_80AE03C4+0x50>
    26bc:	2448ffff 	addiu	t0,v0,-1
    26c0:	a488019a 	sh	t0,410(a0)
    26c4:	9082029d 	lbu	v0,669(a0)
    26c8:	240100ff 	li	at,255
    26cc:	1441002c 	bne	v0,at,2780 <func_80AE03C4+0x10c>
    26d0:	00000000 	nop
    26d4:	9089010c 	lbu	t1,268(a0)
    26d8:	5120000d 	beqzl	t1,2710 <func_80AE03C4+0x9c>
    26dc:	a0800194 	sb	zero,404(a0)
    26e0:	908a0194 	lbu	t2,404(a0)
    26e4:	240c0014 	li	t4,20
    26e8:	254b0001 	addiu	t3,t2,1
    26ec:	316200ff 	andi	v0,t3,0xff
    26f0:	28410015 	slti	at,v0,21
    26f4:	14200003 	bnez	at,2704 <func_80AE03C4+0x90>
    26f8:	a08b0194 	sb	t3,404(a0)
    26fc:	10000004 	b	2710 <func_80AE03C4+0x9c>
    2700:	a08c0194 	sb	t4,404(a0)
    2704:	10000002 	b	2710 <func_80AE03C4+0x9c>
    2708:	a0820194 	sb	v0,404(a0)
    270c:	a0800194 	sb	zero,404(a0)
    2710:	908d0194 	lbu	t5,404(a0)
    2714:	24010014 	li	at,20
    2718:	51a10005 	beql	t5,at,2730 <func_80AE03C4+0xbc>
    271c:	8c820190 	lw	v0,400(a0)
    2720:	848e019a 	lh	t6,410(a0)
    2724:	55c0002c 	bnezl	t6,27d8 <func_80AE03C4+0x164>
    2728:	8fbf0014 	lw	ra,20(sp)
    272c:	8c820190 	lw	v0,400(a0)
    2730:	3c0f0000 	lui	t7,0x0
    2734:	25ef0000 	addiu	t7,t7,0
    2738:	11e2000d 	beq	t7,v0,2770 <func_80AE03C4+0xfc>
    273c:	3c180000 	lui	t8,0x0
    2740:	27180000 	addiu	t8,t8,0
    2744:	1302000a 	beq	t8,v0,2770 <func_80AE03C4+0xfc>
    2748:	3c190000 	lui	t9,0x0
    274c:	27390000 	addiu	t9,t9,0
    2750:	13220007 	beq	t9,v0,2770 <func_80AE03C4+0xfc>
    2754:	3c080000 	lui	t0,0x0
    2758:	25080000 	addiu	t0,t0,0
    275c:	11020004 	beq	t0,v0,2770 <func_80AE03C4+0xfc>
    2760:	3c090000 	lui	t1,0x0
    2764:	25290000 	addiu	t1,t1,0
    2768:	5522001b 	bnel	t1,v0,27d8 <func_80AE03C4+0x164>
    276c:	8fbf0014 	lw	ra,20(sp)
    2770:	0c000000 	jal	0 <EnPoh_Init>
    2774:	00000000 	nop
    2778:	10000017 	b	27d8 <func_80AE03C4+0x164>
    277c:	8fbf0014 	lw	ra,20(sp)
    2780:	54400015 	bnezl	v0,27d8 <func_80AE03C4+0x164>
    2784:	8fbf0014 	lw	ra,20(sp)
    2788:	848a019a 	lh	t2,410(a0)
    278c:	55400012 	bnezl	t2,27d8 <func_80AE03C4+0x164>
    2790:	8fbf0014 	lw	ra,20(sp)
    2794:	8c820190 	lw	v0,400(a0)
    2798:	3c0b0000 	lui	t3,0x0
    279c:	256b0000 	addiu	t3,t3,0
    27a0:	1162000a 	beq	t3,v0,27cc <func_80AE03C4+0x158>
    27a4:	3c0c0000 	lui	t4,0x0
    27a8:	258c0000 	addiu	t4,t4,0
    27ac:	11820007 	beq	t4,v0,27cc <func_80AE03C4+0x158>
    27b0:	3c0d0000 	lui	t5,0x0
    27b4:	25ad0000 	addiu	t5,t5,0
    27b8:	11a20004 	beq	t5,v0,27cc <func_80AE03C4+0x158>
    27bc:	3c0e0000 	lui	t6,0x0
    27c0:	25ce0000 	addiu	t6,t6,0
    27c4:	55c20004 	bnel	t6,v0,27d8 <func_80AE03C4+0x164>
    27c8:	8fbf0014 	lw	ra,20(sp)
    27cc:	0c000000 	jal	0 <EnPoh_Init>
    27d0:	00000000 	nop
    27d4:	8fbf0014 	lw	ra,20(sp)
    27d8:	27bd0018 	addiu	sp,sp,24
    27dc:	03e00008 	jr	ra
    27e0:	00000000 	nop

000027e4 <EnPoh_Update>:
    27e4:	27bdffd0 	addiu	sp,sp,-48
    27e8:	afb00028 	sw	s0,40(sp)
    27ec:	3c010001 	lui	at,0x1
    27f0:	00808025 	move	s0,a0
    27f4:	342117a4 	ori	at,at,0x17a4
    27f8:	afbf002c 	sw	ra,44(sp)
    27fc:	afa50034 	sw	a1,52(sp)
    2800:	00a12021 	addu	a0,a1,at
    2804:	0c000000 	jal	0 <EnPoh_Init>
    2808:	82050196 	lb	a1,406(s0)
    280c:	10400042 	beqz	v0,2918 <EnPoh_Update+0x134>
    2810:	3c0f0000 	lui	t7,0x0
    2814:	820e0196 	lb	t6,406(s0)
    2818:	25ef0000 	addiu	t7,t7,0
    281c:	ae0f0130 	sw	t7,304(s0)
    2820:	a20e001e 	sb	t6,30(s0)
    2824:	8fa40034 	lw	a0,52(sp)
    2828:	0c000000 	jal	0 <EnPoh_Init>
    282c:	02002825 	move	a1,s0
    2830:	92180197 	lbu	t8,407(s0)
    2834:	8fa40034 	lw	a0,52(sp)
    2838:	2605014c 	addiu	a1,s0,332
    283c:	17000012 	bnez	t8,2888 <EnPoh_Update+0xa4>
    2840:	3c060600 	lui	a2,0x600
    2844:	3c060600 	lui	a2,0x600
    2848:	3c070600 	lui	a3,0x600
    284c:	2619019e 	addiu	t9,s0,414
    2850:	2608021c 	addiu	t0,s0,540
    2854:	24090015 	li	t1,21
    2858:	afa90018 	sw	t1,24(sp)
    285c:	afa80014 	sw	t0,20(sp)
    2860:	afb90010 	sw	t9,16(sp)
    2864:	24e70a60 	addiu	a3,a3,2656
    2868:	24c650d0 	addiu	a2,a2,20688
    286c:	8fa40034 	lw	a0,52(sp)
    2870:	0c000000 	jal	0 <EnPoh_Init>
    2874:	2605014c 	addiu	a1,s0,332
    2878:	3c0a0000 	lui	t2,0x0
    287c:	254a0000 	addiu	t2,t2,0
    2880:	1000001f 	b	2900 <EnPoh_Update+0x11c>
    2884:	ae0a0134 	sw	t2,308(s0)
    2888:	3c070600 	lui	a3,0x600
    288c:	260b019e 	addiu	t3,s0,414
    2890:	260c021c 	addiu	t4,s0,540
    2894:	240d000c 	li	t5,12
    2898:	afad0018 	sw	t5,24(sp)
    289c:	afac0014 	sw	t4,20(sp)
    28a0:	afab0010 	sw	t3,16(sp)
    28a4:	24e709dc 	addiu	a3,a3,2524
    28a8:	0c000000 	jal	0 <EnPoh_Init>
    28ac:	24c66f90 	addiu	a2,a2,28560
    28b0:	8e180324 	lw	t8,804(s0)
    28b4:	3c0e0000 	lui	t6,0x0
    28b8:	25ce0000 	addiu	t6,t6,0
    28bc:	ae0e0134 	sw	t6,308(s0)
    28c0:	240f0009 	li	t7,9
    28c4:	a30f003c 	sb	t7,60(t8)
    28c8:	8e030324 	lw	v1,804(s0)
    28cc:	2409c000 	li	t1,-16384
    28d0:	240b0014 	li	t3,20
    28d4:	8479002a 	lh	t9,42(v1)
    28d8:	240c0037 	li	t4,55
    28dc:	240d000f 	li	t5,15
    28e0:	00194023 	negu	t0,t9
    28e4:	a468002a 	sh	t0,42(v1)
    28e8:	a6090032 	sh	t1,50(s0)
    28ec:	860a0032 	lh	t2,50(s0)
    28f0:	a60b02fc 	sh	t3,764(s0)
    28f4:	a60c02fe 	sh	t4,766(s0)
    28f8:	a60d0300 	sh	t5,768(s0)
    28fc:	a60a00b6 	sh	t2,182(s0)
    2900:	8e0e0004 	lw	t6,4(s0)
    2904:	2401ffef 	li	at,-17
    2908:	02002025 	move	a0,s0
    290c:	01c17824 	and	t7,t6,at
    2910:	0c000000 	jal	0 <EnPoh_Init>
    2914:	ae0f0004 	sw	t7,4(s0)
    2918:	8fbf002c 	lw	ra,44(sp)
    291c:	8fb00028 	lw	s0,40(sp)
    2920:	27bd0030 	addiu	sp,sp,48
    2924:	03e00008 	jr	ra
    2928:	00000000 	nop

0000292c <func_80AE067C>:
    292c:	8c820190 	lw	v0,400(a0)
    2930:	3c0e0000 	lui	t6,0x0
    2934:	25ce0000 	addiu	t6,t6,0
    2938:	15c20021 	bne	t6,v0,29c0 <func_80AE067C+0x94>
    293c:	3c190000 	lui	t9,0x0
    2940:	9082029a 	lbu	v0,666(a0)
    2944:	240f00ff 	li	t7,255
    2948:	24180032 	li	t8,50
    294c:	24420005 	addiu	v0,v0,5
    2950:	00021400 	sll	v0,v0,0x10
    2954:	00021403 	sra	v0,v0,0x10
    2958:	28410100 	slti	at,v0,256
    295c:	54200004 	bnezl	at,2970 <func_80AE067C+0x44>
    2960:	a082029a 	sb	v0,666(a0)
    2964:	10000002 	b	2970 <func_80AE067C+0x44>
    2968:	a08f029a 	sb	t7,666(a0)
    296c:	a082029a 	sb	v0,666(a0)
    2970:	9082029b 	lbu	v0,667(a0)
    2974:	2442fffb 	addiu	v0,v0,-5
    2978:	00021400 	sll	v0,v0,0x10
    297c:	00021403 	sra	v0,v0,0x10
    2980:	28410032 	slti	at,v0,50
    2984:	50200004 	beqzl	at,2998 <func_80AE067C+0x6c>
    2988:	a082029b 	sb	v0,667(a0)
    298c:	10000002 	b	2998 <func_80AE067C+0x6c>
    2990:	a098029b 	sb	t8,667(a0)
    2994:	a082029b 	sb	v0,667(a0)
    2998:	9082029c 	lbu	v0,668(a0)
    299c:	2442fffb 	addiu	v0,v0,-5
    29a0:	00021400 	sll	v0,v0,0x10
    29a4:	00021403 	sra	v0,v0,0x10
    29a8:	04410003 	bgez	v0,29b8 <func_80AE067C+0x8c>
    29ac:	00000000 	nop
    29b0:	03e00008 	jr	ra
    29b4:	a080029c 	sb	zero,668(a0)
    29b8:	03e00008 	jr	ra
    29bc:	a082029c 	sb	v0,668(a0)
    29c0:	27390000 	addiu	t9,t9,0
    29c4:	17220022 	bne	t9,v0,2a50 <func_80AE067C+0x124>
    29c8:	3c0b0000 	lui	t3,0x0
    29cc:	9082029a 	lbu	v0,666(a0)
    29d0:	24080050 	li	t0,80
    29d4:	240900ff 	li	t1,255
    29d8:	24420005 	addiu	v0,v0,5
    29dc:	00021400 	sll	v0,v0,0x10
    29e0:	00021403 	sra	v0,v0,0x10
    29e4:	28410051 	slti	at,v0,81
    29e8:	14200003 	bnez	at,29f8 <func_80AE067C+0xcc>
    29ec:	240a00e1 	li	t2,225
    29f0:	10000002 	b	29fc <func_80AE067C+0xd0>
    29f4:	a088029a 	sb	t0,666(a0)
    29f8:	a082029a 	sb	v0,666(a0)
    29fc:	9082029b 	lbu	v0,667(a0)
    2a00:	24420005 	addiu	v0,v0,5
    2a04:	00021400 	sll	v0,v0,0x10
    2a08:	00021403 	sra	v0,v0,0x10
    2a0c:	28410100 	slti	at,v0,256
    2a10:	54200004 	bnezl	at,2a24 <func_80AE067C+0xf8>
    2a14:	a082029b 	sb	v0,667(a0)
    2a18:	10000002 	b	2a24 <func_80AE067C+0xf8>
    2a1c:	a089029b 	sb	t1,667(a0)
    2a20:	a082029b 	sb	v0,667(a0)
    2a24:	9082029c 	lbu	v0,668(a0)
    2a28:	24420005 	addiu	v0,v0,5
    2a2c:	00021400 	sll	v0,v0,0x10
    2a30:	00021403 	sra	v0,v0,0x10
    2a34:	284100e2 	slti	at,v0,226
    2a38:	14200003 	bnez	at,2a48 <func_80AE067C+0x11c>
    2a3c:	00000000 	nop
    2a40:	03e00008 	jr	ra
    2a44:	a08a029c 	sb	t2,668(a0)
    2a48:	03e00008 	jr	ra
    2a4c:	a082029c 	sb	v0,668(a0)
    2a50:	256b0000 	addiu	t3,t3,0
    2a54:	55620010 	bnel	t3,v0,2a98 <func_80AE067C+0x16c>
    2a58:	9082029a 	lbu	v0,666(a0)
    2a5c:	908c0114 	lbu	t4,276(a0)
    2a60:	240e0050 	li	t6,80
    2a64:	240f00ff 	li	t7,255
    2a68:	318d0002 	andi	t5,t4,0x2
    2a6c:	11a00005 	beqz	t5,2a84 <func_80AE067C+0x158>
    2a70:	241800e1 	li	t8,225
    2a74:	a080029a 	sb	zero,666(a0)
    2a78:	a080029b 	sb	zero,667(a0)
    2a7c:	03e00008 	jr	ra
    2a80:	a080029c 	sb	zero,668(a0)
    2a84:	a08e029a 	sb	t6,666(a0)
    2a88:	a08f029b 	sb	t7,667(a0)
    2a8c:	03e00008 	jr	ra
    2a90:	a098029c 	sb	t8,668(a0)
    2a94:	9082029a 	lbu	v0,666(a0)
    2a98:	241900ff 	li	t9,255
    2a9c:	240800ff 	li	t0,255
    2aa0:	24420005 	addiu	v0,v0,5
    2aa4:	00021400 	sll	v0,v0,0x10
    2aa8:	00021403 	sra	v0,v0,0x10
    2aac:	28410100 	slti	at,v0,256
    2ab0:	54200004 	bnezl	at,2ac4 <func_80AE067C+0x198>
    2ab4:	a082029a 	sb	v0,666(a0)
    2ab8:	10000002 	b	2ac4 <func_80AE067C+0x198>
    2abc:	a099029a 	sb	t9,666(a0)
    2ac0:	a082029a 	sb	v0,666(a0)
    2ac4:	9082029b 	lbu	v0,667(a0)
    2ac8:	24420005 	addiu	v0,v0,5
    2acc:	00021400 	sll	v0,v0,0x10
    2ad0:	00021403 	sra	v0,v0,0x10
    2ad4:	28410100 	slti	at,v0,256
    2ad8:	54200004 	bnezl	at,2aec <func_80AE067C+0x1c0>
    2adc:	a082029b 	sb	v0,667(a0)
    2ae0:	10000002 	b	2aec <func_80AE067C+0x1c0>
    2ae4:	a088029b 	sb	t0,667(a0)
    2ae8:	a082029b 	sb	v0,667(a0)
    2aec:	9083029c 	lbu	v1,668(a0)
    2af0:	286100d3 	slti	at,v1,211
    2af4:	1420000b 	bnez	at,2b24 <func_80AE067C+0x1f8>
    2af8:	24620005 	addiu	v0,v1,5
    2afc:	2462fffb 	addiu	v0,v1,-5
    2b00:	00021400 	sll	v0,v0,0x10
    2b04:	00021403 	sra	v0,v0,0x10
    2b08:	284100d2 	slti	at,v0,210
    2b0c:	10200003 	beqz	at,2b1c <func_80AE067C+0x1f0>
    2b10:	240900d2 	li	t1,210
    2b14:	03e00008 	jr	ra
    2b18:	a089029c 	sb	t1,668(a0)
    2b1c:	03e00008 	jr	ra
    2b20:	a082029c 	sb	v0,668(a0)
    2b24:	00021400 	sll	v0,v0,0x10
    2b28:	00021403 	sra	v0,v0,0x10
    2b2c:	284100d3 	slti	at,v0,211
    2b30:	14200003 	bnez	at,2b40 <func_80AE067C+0x214>
    2b34:	240a00d2 	li	t2,210
    2b38:	03e00008 	jr	ra
    2b3c:	a08a029c 	sb	t2,668(a0)
    2b40:	a082029c 	sb	v0,668(a0)
    2b44:	03e00008 	jr	ra
    2b48:	00000000 	nop

00002b4c <func_80AE089C>:
    2b4c:	27bdffe8 	addiu	sp,sp,-24
    2b50:	afbf0014 	sw	ra,20(sp)
    2b54:	8c820190 	lw	v0,400(a0)
    2b58:	3c0e0000 	lui	t6,0x0
    2b5c:	25ce0000 	addiu	t6,t6,0
    2b60:	11c20003 	beq	t6,v0,2b70 <func_80AE089C+0x24>
    2b64:	3c0f0000 	lui	t7,0x0
    2b68:	25ef0000 	addiu	t7,t7,0
    2b6c:	15e20039 	bne	t7,v0,2c54 <func_80AE089C+0x108>
    2b70:	3c014140 	lui	at,0x4140
    2b74:	44812000 	mtc1	at,$f4
    2b78:	c4800164 	lwc1	$f0,356(a0)
    2b7c:	3c010000 	lui	at,0x0
    2b80:	4604003c 	c.lt.s	$f0,$f4
    2b84:	00000000 	nop
    2b88:	45000032 	bc1f	2c54 <func_80AE089C+0x108>
    2b8c:	00000000 	nop
    2b90:	c4260000 	lwc1	$f6,0(at)
    2b94:	3c010000 	lui	at,0x0
    2b98:	24080001 	li	t0,1
    2b9c:	46060202 	mul.s	$f8,$f0,$f6
    2ba0:	4600428d 	trunc.w.s	$f10,$f8
    2ba4:	44025000 	mfc1	v0,$f10
    2ba8:	00000000 	nop
    2bac:	00021400 	sll	v0,v0,0x10
    2bb0:	00021403 	sra	v0,v0,0x10
    2bb4:	24420037 	addiu	v0,v0,55
    2bb8:	a08202a0 	sb	v0,672(a0)
    2bbc:	a082029f 	sb	v0,671(a0)
    2bc0:	a082029e 	sb	v0,670(a0)
    2bc4:	c4300000 	lwc1	$f16,0(at)
    2bc8:	3c014f00 	lui	at,0x4f00
    2bcc:	46100482 	mul.s	$f18,$f0,$f16
    2bd0:	4459f800 	cfc1	t9,$31
    2bd4:	44c8f800 	ctc1	t0,$31
    2bd8:	00000000 	nop
    2bdc:	46009124 	cvt.w.s	$f4,$f18
    2be0:	4448f800 	cfc1	t0,$31
    2be4:	00000000 	nop
    2be8:	31080078 	andi	t0,t0,0x78
    2bec:	51000013 	beqzl	t0,2c3c <func_80AE089C+0xf0>
    2bf0:	44082000 	mfc1	t0,$f4
    2bf4:	44812000 	mtc1	at,$f4
    2bf8:	24080001 	li	t0,1
    2bfc:	46049101 	sub.s	$f4,$f18,$f4
    2c00:	44c8f800 	ctc1	t0,$31
    2c04:	00000000 	nop
    2c08:	46002124 	cvt.w.s	$f4,$f4
    2c0c:	4448f800 	cfc1	t0,$31
    2c10:	00000000 	nop
    2c14:	31080078 	andi	t0,t0,0x78
    2c18:	15000005 	bnez	t0,2c30 <func_80AE089C+0xe4>
    2c1c:	00000000 	nop
    2c20:	44082000 	mfc1	t0,$f4
    2c24:	3c018000 	lui	at,0x8000
    2c28:	10000007 	b	2c48 <func_80AE089C+0xfc>
    2c2c:	01014025 	or	t0,t0,at
    2c30:	10000005 	b	2c48 <func_80AE089C+0xfc>
    2c34:	2408ffff 	li	t0,-1
    2c38:	44082000 	mfc1	t0,$f4
    2c3c:	00000000 	nop
    2c40:	0500fffb 	bltz	t0,2c30 <func_80AE089C+0xe4>
    2c44:	00000000 	nop
    2c48:	44d9f800 	ctc1	t9,$31
    2c4c:	1000001b 	b	2cbc <func_80AE089C+0x170>
    2c50:	a08802a1 	sb	t0,673(a0)
    2c54:	0c000000 	jal	0 <EnPoh_Init>
    2c58:	afa40018 	sw	a0,24(sp)
    2c5c:	3c0141f0 	lui	at,0x41f0
    2c60:	44813000 	mtc1	at,$f6
    2c64:	3c0142c8 	lui	at,0x42c8
    2c68:	44818000 	mtc1	at,$f16
    2c6c:	46060202 	mul.s	$f8,$f0,$f6
    2c70:	3c014320 	lui	at,0x4320
    2c74:	44813000 	mtc1	at,$f6
    2c78:	46100482 	mul.s	$f18,$f0,$f16
    2c7c:	8fa40018 	lw	a0,24(sp)
    2c80:	240e00c8 	li	t6,200
    2c84:	a08e02a1 	sb	t6,673(a0)
    2c88:	4600428d 	trunc.w.s	$f10,$f8
    2c8c:	46060202 	mul.s	$f8,$f0,$f6
    2c90:	440c5000 	mfc1	t4,$f10
    2c94:	4600910d 	trunc.w.s	$f4,$f18
    2c98:	258d00e1 	addiu	t5,t4,225
    2c9c:	a08d029e 	sb	t5,670(a0)
    2ca0:	4600428d 	trunc.w.s	$f10,$f8
    2ca4:	44192000 	mfc1	t9,$f4
    2ca8:	440c5000 	mfc1	t4,$f10
    2cac:	2728009b 	addiu	t0,t9,155
    2cb0:	a088029f 	sb	t0,671(a0)
    2cb4:	258d005f 	addiu	t5,t4,95
    2cb8:	a08d02a0 	sb	t5,672(a0)
    2cbc:	8fbf0014 	lw	ra,20(sp)
    2cc0:	27bd0018 	addiu	sp,sp,24
    2cc4:	03e00008 	jr	ra
    2cc8:	00000000 	nop

00002ccc <func_80AE0A1C>:
    2ccc:	27bdffb0 	addiu	sp,sp,-80
    2cd0:	afbf0024 	sw	ra,36(sp)
    2cd4:	afb10020 	sw	s1,32(sp)
    2cd8:	afb0001c 	sw	s0,28(sp)
    2cdc:	90820318 	lbu	v0,792(a0)
    2ce0:	00808025 	move	s0,a0
    2ce4:	00a08825 	move	s1,a1
    2ce8:	304e0002 	andi	t6,v0,0x2
    2cec:	11c00003 	beqz	t6,2cfc <func_80AE0A1C+0x30>
    2cf0:	304ffffd 	andi	t7,v0,0xfffd
    2cf4:	0c000000 	jal	0 <EnPoh_Init>
    2cf8:	a08f0318 	sb	t7,792(a0)
    2cfc:	02002025 	move	a0,s0
    2d00:	0c000000 	jal	0 <EnPoh_Init>
    2d04:	02202825 	move	a1,s1
    2d08:	0c000000 	jal	0 <EnPoh_Init>
    2d0c:	02002025 	move	a0,s0
    2d10:	8e190190 	lw	t9,400(s0)
    2d14:	02002025 	move	a0,s0
    2d18:	02202825 	move	a1,s1
    2d1c:	0320f809 	jalr	t9
    2d20:	00000000 	nop
    2d24:	0c000000 	jal	0 <EnPoh_Init>
    2d28:	02002025 	move	a0,s0
    2d2c:	8e080190 	lw	t0,400(s0)
    2d30:	3c180000 	lui	t8,0x0
    2d34:	27180000 	addiu	t8,t8,0
    2d38:	57080010 	bnel	t8,t0,2d7c <func_80AE0A1C+0xb0>
    2d3c:	3c010001 	lui	at,0x1
    2d40:	86090198 	lh	t1,408(s0)
    2d44:	02202025 	move	a0,s1
    2d48:	2921000a 	slti	at,t1,10
    2d4c:	5020000b 	beqzl	at,2d7c <func_80AE0A1C+0xb0>
    2d50:	3c010001 	lui	at,0x1
    2d54:	8e0a0004 	lw	t2,4(s0)
    2d58:	3c010100 	lui	at,0x100
    2d5c:	26060308 	addiu	a2,s0,776
    2d60:	01415825 	or	t3,t2,at
    2d64:	3c010001 	lui	at,0x1
    2d68:	34211e60 	ori	at,at,0x1e60
    2d6c:	ae0b0004 	sw	t3,4(s0)
    2d70:	0c000000 	jal	0 <EnPoh_Init>
    2d74:	02212821 	addu	a1,s1,at
    2d78:	3c010001 	lui	at,0x1
    2d7c:	34211e60 	ori	at,at,0x1e60
    2d80:	02216021 	addu	t4,s1,at
    2d84:	260502bc 	addiu	a1,s0,700
    2d88:	260d0308 	addiu	t5,s0,776
    2d8c:	afad0030 	sw	t5,48(sp)
    2d90:	afa5002c 	sw	a1,44(sp)
    2d94:	afac0034 	sw	t4,52(sp)
    2d98:	0c000000 	jal	0 <EnPoh_Init>
    2d9c:	02002025 	move	a0,s0
    2da0:	920e02cd 	lbu	t6,717(s0)
    2da4:	31cf0001 	andi	t7,t6,0x1
    2da8:	51e00009 	beqzl	t7,2dd0 <func_80AE0A1C+0x104>
    2dac:	02202025 	move	a0,s1
    2db0:	9219029d 	lbu	t9,669(s0)
    2db4:	240100ff 	li	at,255
    2db8:	02202025 	move	a0,s1
    2dbc:	17210003 	bne	t9,at,2dcc <func_80AE0A1C+0x100>
    2dc0:	8fa50034 	lw	a1,52(sp)
    2dc4:	0c000000 	jal	0 <EnPoh_Init>
    2dc8:	8fa6002c 	lw	a2,44(sp)
    2dcc:	02202025 	move	a0,s1
    2dd0:	8fa50034 	lw	a1,52(sp)
    2dd4:	0c000000 	jal	0 <EnPoh_Init>
    2dd8:	8fa6002c 	lw	a2,44(sp)
    2ddc:	02202025 	move	a0,s1
    2de0:	8fa50034 	lw	a1,52(sp)
    2de4:	0c000000 	jal	0 <EnPoh_Init>
    2de8:	8fa60030 	lw	a2,48(sp)
    2dec:	02002025 	move	a0,s0
    2df0:	0c000000 	jal	0 <EnPoh_Init>
    2df4:	3c054228 	lui	a1,0x4228
    2df8:	8e020190 	lw	v0,400(s0)
    2dfc:	3c180000 	lui	t8,0x0
    2e00:	27180000 	addiu	t8,t8,0
    2e04:	1302000e 	beq	t8,v0,2e40 <func_80AE0A1C+0x174>
    2e08:	3c080000 	lui	t0,0x0
    2e0c:	25080000 	addiu	t0,t0,0
    2e10:	1102000b 	beq	t0,v0,2e40 <func_80AE0A1C+0x174>
    2e14:	3c090000 	lui	t1,0x0
    2e18:	25290000 	addiu	t1,t1,0
    2e1c:	55220007 	bnel	t1,v0,2e3c <func_80AE0A1C+0x170>
    2e20:	860c0032 	lh	t4,50(s0)
    2e24:	860a0032 	lh	t2,50(s0)
    2e28:	34018000 	li	at,0x8000
    2e2c:	01415821 	addu	t3,t2,at
    2e30:	10000003 	b	2e40 <func_80AE0A1C+0x174>
    2e34:	a60b00b6 	sh	t3,182(s0)
    2e38:	860c0032 	lh	t4,50(s0)
    2e3c:	a60c00b6 	sh	t4,182(s0)
    2e40:	c6040024 	lwc1	$f4,36(s0)
    2e44:	3c0141a0 	lui	at,0x41a0
    2e48:	44814000 	mtc1	at,$f8
    2e4c:	e7a4003c 	swc1	$f4,60(sp)
    2e50:	c6060028 	lwc1	$f6,40(s0)
    2e54:	27ad003c 	addiu	t5,sp,60
    2e58:	262407c0 	addiu	a0,s1,1984
    2e5c:	46083280 	add.s	$f10,$f6,$f8
    2e60:	26050078 	addiu	a1,s0,120
    2e64:	27a60038 	addiu	a2,sp,56
    2e68:	02003825 	move	a3,s0
    2e6c:	e7aa0040 	swc1	$f10,64(sp)
    2e70:	c610002c 	lwc1	$f16,44(s0)
    2e74:	afad0010 	sw	t5,16(sp)
    2e78:	0c000000 	jal	0 <EnPoh_Init>
    2e7c:	e7b00044 	swc1	$f16,68(sp)
    2e80:	e6000080 	swc1	$f0,128(s0)
    2e84:	0c000000 	jal	0 <EnPoh_Init>
    2e88:	02002025 	move	a0,s0
    2e8c:	920e029d 	lbu	t6,669(s0)
    2e90:	a20e00c8 	sb	t6,200(s0)
    2e94:	8fbf0024 	lw	ra,36(sp)
    2e98:	8fb10020 	lw	s1,32(sp)
    2e9c:	8fb0001c 	lw	s0,28(sp)
    2ea0:	03e00008 	jr	ra
    2ea4:	27bd0050 	addiu	sp,sp,80

00002ea8 <func_80AE0BF8>:
    2ea8:	afa40000 	sw	a0,0(sp)
    2eac:	8fa40014 	lw	a0,20(sp)
    2eb0:	afa7000c 	sw	a3,12(sp)
    2eb4:	908e029d 	lbu	t6,669(a0)
    2eb8:	11c0000e 	beqz	t6,2ef4 <func_80AE0BF8+0x4c>
    2ebc:	00000000 	nop
    2ec0:	8c8f02a4 	lw	t7,676(a0)
    2ec4:	91f80006 	lbu	t8,6(t7)
    2ec8:	10b8000a 	beq	a1,t8,2ef4 <func_80AE0BF8+0x4c>
    2ecc:	00000000 	nop
    2ed0:	8c880190 	lw	t0,400(a0)
    2ed4:	3c190000 	lui	t9,0x0
    2ed8:	27390000 	addiu	t9,t9,0
    2edc:	57280008 	bnel	t9,t0,2f00 <func_80AE0BF8+0x58>
    2ee0:	848a001c 	lh	t2,28(a0)
    2ee4:	84890198 	lh	t1,408(a0)
    2ee8:	29210002 	slti	at,t1,2
    2eec:	54200004 	bnezl	at,2f00 <func_80AE0BF8+0x58>
    2ef0:	848a001c 	lh	t2,28(a0)
    2ef4:	10000009 	b	2f1c <func_80AE0BF8+0x74>
    2ef8:	acc00000 	sw	zero,0(a2)
    2efc:	848a001c 	lh	t2,28(a0)
    2f00:	24010003 	li	at,3
    2f04:	15410005 	bne	t2,at,2f1c <func_80AE0BF8+0x74>
    2f08:	2401000a 	li	at,10
    2f0c:	14a10003 	bne	a1,at,2f1c <func_80AE0BF8+0x74>
    2f10:	3c0b0600 	lui	t3,0x600
    2f14:	256b4638 	addiu	t3,t3,17976
    2f18:	accb0000 	sw	t3,0(a2)
    2f1c:	24010013 	li	at,19
    2f20:	14a1001b 	bne	a1,at,2f90 <func_80AE0BF8+0xe8>
    2f24:	00000000 	nop
    2f28:	908c0197 	lbu	t4,407(a0)
    2f2c:	8fa30018 	lw	v1,24(sp)
    2f30:	15800017 	bnez	t4,2f90 <func_80AE0BF8+0xe8>
    2f34:	00000000 	nop
    2f38:	8c650000 	lw	a1,0(v1)
    2f3c:	3c0ee700 	lui	t6,0xe700
    2f40:	3c18fb00 	lui	t8,0xfb00
    2f44:	24ad0008 	addiu	t5,a1,8
    2f48:	ac6d0000 	sw	t5,0(v1)
    2f4c:	aca00004 	sw	zero,4(a1)
    2f50:	acae0000 	sw	t6,0(a1)
    2f54:	8c650000 	lw	a1,0(v1)
    2f58:	24af0008 	addiu	t7,a1,8
    2f5c:	ac6f0000 	sw	t7,0(v1)
    2f60:	acb80000 	sw	t8,0(a1)
    2f64:	908b029b 	lbu	t3,667(a0)
    2f68:	9088029a 	lbu	t0,666(a0)
    2f6c:	908f029c 	lbu	t7,668(a0)
    2f70:	908a029d 	lbu	t2,669(a0)
    2f74:	000b6400 	sll	t4,t3,0x10
    2f78:	00084e00 	sll	t1,t0,0x18
    2f7c:	012c6825 	or	t5,t1,t4
    2f80:	000fc200 	sll	t8,t7,0x8
    2f84:	01b8c825 	or	t9,t5,t8
    2f88:	032a5825 	or	t3,t9,t2
    2f8c:	acab0004 	sw	t3,4(a1)
    2f90:	03e00008 	jr	ra
    2f94:	00001025 	move	v0,zero

00002f98 <func_80AE0CE8>:
    2f98:	27bdffb8 	addiu	sp,sp,-72
    2f9c:	afb00028 	sw	s0,40(sp)
    2fa0:	8fb00058 	lw	s0,88(sp)
    2fa4:	afa40048 	sw	a0,72(sp)
    2fa8:	afbf002c 	sw	ra,44(sp)
    2fac:	afa5004c 	sw	a1,76(sp)
    2fb0:	00a02025 	move	a0,a1
    2fb4:	afa60050 	sw	a2,80(sp)
    2fb8:	afa70054 	sw	a3,84(sp)
    2fbc:	0c000000 	jal	0 <EnPoh_Init>
    2fc0:	26050308 	addiu	a1,s0,776
    2fc4:	8e0e0190 	lw	t6,400(s0)
    2fc8:	3c080000 	lui	t0,0x0
    2fcc:	25080000 	addiu	t0,t0,0
    2fd0:	550e0026 	bnel	t0,t6,306c <func_80AE0CE8+0xd4>
    2fd4:	8e0902a4 	lw	t1,676(s0)
    2fd8:	860f0198 	lh	t7,408(s0)
    2fdc:	29e10002 	slti	at,t7,2
    2fe0:	54200022 	bnezl	at,306c <func_80AE0CE8+0xd4>
    2fe4:	8e0902a4 	lw	t1,676(s0)
    2fe8:	8e1902a4 	lw	t9,676(s0)
    2fec:	8fb8004c 	lw	t8,76(sp)
    2ff0:	8fa7005c 	lw	a3,92(sp)
    2ff4:	93290007 	lbu	t1,7(t9)
    2ff8:	3c0bda38 	lui	t3,0xda38
    2ffc:	5709001b 	bnel	t8,t1,306c <func_80AE0CE8+0xd4>
    3000:	8e0902a4 	lw	t1,676(s0)
    3004:	8ce20000 	lw	v0,0(a3)
    3008:	356b0003 	ori	t3,t3,0x3
    300c:	3c050000 	lui	a1,0x0
    3010:	244a0008 	addiu	t2,v0,8
    3014:	acea0000 	sw	t2,0(a3)
    3018:	ac4b0000 	sw	t3,0(v0)
    301c:	8fac0048 	lw	t4,72(sp)
    3020:	24a50000 	addiu	a1,a1,0
    3024:	2406099c 	li	a2,2460
    3028:	8d840000 	lw	a0,0(t4)
    302c:	afa80034 	sw	t0,52(sp)
    3030:	0c000000 	jal	0 <EnPoh_Init>
    3034:	afa20040 	sw	v0,64(sp)
    3038:	8fa30040 	lw	v1,64(sp)
    303c:	8fa7005c 	lw	a3,92(sp)
    3040:	8fa80034 	lw	t0,52(sp)
    3044:	ac620004 	sw	v0,4(v1)
    3048:	8ce20000 	lw	v0,0(a3)
    304c:	3c0ede00 	lui	t6,0xde00
    3050:	244d0008 	addiu	t5,v0,8
    3054:	aced0000 	sw	t5,0(a3)
    3058:	ac4e0000 	sw	t6,0(v0)
    305c:	8e0f02a4 	lw	t7,676(s0)
    3060:	8df90020 	lw	t9,32(t7)
    3064:	ac590004 	sw	t9,4(v0)
    3068:	8e0902a4 	lw	t1,676(s0)
    306c:	8fb8004c 	lw	t8,76(sp)
    3070:	912a0006 	lbu	t2,6(t1)
    3074:	570a0043 	bnel	t8,t2,3184 <func_80AE0CE8+0x1ec>
    3078:	8fbf002c 	lw	ra,44(sp)
    307c:	8e0b0190 	lw	t3,400(s0)
    3080:	550b0015 	bnel	t0,t3,30d8 <func_80AE0CE8+0x140>
    3084:	26040368 	addiu	a0,s0,872
    3088:	860c0198 	lh	t4,408(s0)
    308c:	29810013 	slti	at,t4,19
    3090:	54200011 	bnezl	at,30d8 <func_80AE0CE8+0x140>
    3094:	26040368 	addiu	a0,s0,872
    3098:	c6000050 	lwc1	$f0,80(s0)
    309c:	44802000 	mtc1	zero,$f4
    30a0:	3c010000 	lui	at,0x0
    30a4:	46002032 	c.eq.s	$f4,$f0
    30a8:	00000000 	nop
    30ac:	4503000a 	bc1tl	30d8 <func_80AE0CE8+0x140>
    30b0:	26040368 	addiu	a0,s0,872
    30b4:	c4260000 	lwc1	$f6,0(at)
    30b8:	24070001 	li	a3,1
    30bc:	afa80034 	sw	t0,52(sp)
    30c0:	46003303 	div.s	$f12,$f6,$f0
    30c4:	44066000 	mfc1	a2,$f12
    30c8:	0c000000 	jal	0 <EnPoh_Init>
    30cc:	46006386 	mov.s	$f14,$f12
    30d0:	8fa80034 	lw	t0,52(sp)
    30d4:	26040368 	addiu	a0,s0,872
    30d8:	0c000000 	jal	0 <EnPoh_Init>
    30dc:	afa80034 	sw	t0,52(sp)
    30e0:	8fa80034 	lw	t0,52(sp)
    30e4:	8e0d0190 	lw	t5,400(s0)
    30e8:	550d000c 	bnel	t0,t5,311c <func_80AE0CE8+0x184>
    30ec:	8e020324 	lw	v0,804(s0)
    30f0:	860e0198 	lh	t6,408(s0)
    30f4:	2401001b 	li	at,27
    30f8:	55c10008 	bnel	t6,at,311c <func_80AE0CE8+0x184>
    30fc:	8e020324 	lw	v0,804(s0)
    3100:	c6080398 	lwc1	$f8,920(s0)
    3104:	c60a039c 	lwc1	$f10,924(s0)
    3108:	c61003a0 	lwc1	$f16,928(s0)
    310c:	e6080024 	swc1	$f8,36(s0)
    3110:	e60a0028 	swc1	$f10,40(s0)
    3114:	e610002c 	swc1	$f16,44(s0)
    3118:	8e020324 	lw	v0,804(s0)
    311c:	920f029e 	lbu	t7,670(s0)
    3120:	260402ac 	addiu	a0,s0,684
    3124:	84450030 	lh	a1,48(v0)
    3128:	84460032 	lh	a2,50(v0)
    312c:	84470034 	lh	a3,52(v0)
    3130:	afaf0010 	sw	t7,16(sp)
    3134:	9219029f 	lbu	t9,671(s0)
    3138:	3c014f80 	lui	at,0x4f80
    313c:	afb90014 	sw	t9,20(sp)
    3140:	920902a0 	lbu	t1,672(s0)
    3144:	afa90018 	sw	t1,24(sp)
    3148:	921802a1 	lbu	t8,673(s0)
    314c:	44989000 	mtc1	t8,$f18
    3150:	07010004 	bgez	t8,3164 <func_80AE0CE8+0x1cc>
    3154:	46809120 	cvt.s.w	$f4,$f18
    3158:	44813000 	mtc1	at,$f6
    315c:	00000000 	nop
    3160:	46062100 	add.s	$f4,$f4,$f6
    3164:	3c010000 	lui	at,0x0
    3168:	c4280000 	lwc1	$f8,0(at)
    316c:	46082282 	mul.s	$f10,$f4,$f8
    3170:	4600540d 	trunc.w.s	$f16,$f10
    3174:	440b8000 	mfc1	t3,$f16
    3178:	0c000000 	jal	0 <EnPoh_Init>
    317c:	afab001c 	sw	t3,28(sp)
    3180:	8fbf002c 	lw	ra,44(sp)
    3184:	8fb00028 	lw	s0,40(sp)
    3188:	27bd0048 	addiu	sp,sp,72
    318c:	03e00008 	jr	ra
    3190:	00000000 	nop

00003194 <func_80AE0EE4>:
    3194:	27bdff90 	addiu	sp,sp,-112
    3198:	afbf002c 	sw	ra,44(sp)
    319c:	afb10028 	sw	s1,40(sp)
    31a0:	afb00024 	sw	s0,36(sp)
    31a4:	afa50074 	sw	a1,116(sp)
    31a8:	8ca50000 	lw	a1,0(a1)
    31ac:	00808825 	move	s1,a0
    31b0:	3c060000 	lui	a2,0x0
    31b4:	24c60000 	addiu	a2,a2,0
    31b8:	27a40058 	addiu	a0,sp,88
    31bc:	24070a45 	li	a3,2629
    31c0:	0c000000 	jal	0 <EnPoh_Init>
    31c4:	00a08025 	move	s0,a1
    31c8:	0c000000 	jal	0 <EnPoh_Init>
    31cc:	02202025 	move	a0,s1
    31d0:	8faf0074 	lw	t7,116(sp)
    31d4:	0c000000 	jal	0 <EnPoh_Init>
    31d8:	8de40000 	lw	a0,0(t7)
    31dc:	8fb80074 	lw	t8,116(sp)
    31e0:	0c000000 	jal	0 <EnPoh_Init>
    31e4:	8f040000 	lw	a0,0(t8)
    31e8:	9222029d 	lbu	v0,669(s1)
    31ec:	240100ff 	li	at,255
    31f0:	3c08fb00 	lui	t0,0xfb00
    31f4:	10410003 	beq	v0,at,3204 <func_80AE0EE4+0x70>
    31f8:	3c180000 	lui	t8,0x0
    31fc:	14400026 	bnez	v0,3298 <func_80AE0EE4+0x104>
    3200:	3c0afb00 	lui	t2,0xfb00
    3204:	8e0202c0 	lw	v0,704(s0)
    3208:	27180010 	addiu	t8,t8,16
    320c:	3c070000 	lui	a3,0x0
    3210:	24590008 	addiu	t9,v0,8
    3214:	ae1902c0 	sw	t9,704(s0)
    3218:	ac480000 	sw	t0,0(v0)
    321c:	922d029b 	lbu	t5,667(s1)
    3220:	922a029a 	lbu	t2,666(s1)
    3224:	9239029c 	lbu	t9,668(s1)
    3228:	922c029d 	lbu	t4,669(s1)
    322c:	000d7400 	sll	t6,t5,0x10
    3230:	000a5e00 	sll	t3,t2,0x18
    3234:	016e7825 	or	t7,t3,t6
    3238:	00194200 	sll	t0,t9,0x8
    323c:	01e84825 	or	t1,t7,t0
    3240:	012c6825 	or	t5,t1,t4
    3244:	ac4d0004 	sw	t5,4(v0)
    3248:	8e0202c0 	lw	v0,704(s0)
    324c:	3c0edb06 	lui	t6,0xdb06
    3250:	35ce0020 	ori	t6,t6,0x20
    3254:	244b0008 	addiu	t3,v0,8
    3258:	ae0b02c0 	sw	t3,704(s0)
    325c:	ac580004 	sw	t8,4(v0)
    3260:	ac4e0000 	sw	t6,0(v0)
    3264:	8e26016c 	lw	a2,364(s1)
    3268:	8e250150 	lw	a1,336(s1)
    326c:	3c190000 	lui	t9,0x0
    3270:	27390000 	addiu	t9,t9,0
    3274:	afb90010 	sw	t9,16(sp)
    3278:	afb10014 	sw	s1,20(sp)
    327c:	8e0f02c0 	lw	t7,704(s0)
    3280:	8fa40074 	lw	a0,116(sp)
    3284:	24e70000 	addiu	a3,a3,0
    3288:	0c000000 	jal	0 <EnPoh_Init>
    328c:	afaf0018 	sw	t7,24(sp)
    3290:	1000001f 	b	3310 <func_80AE0EE4+0x17c>
    3294:	ae0202c0 	sw	v0,704(s0)
    3298:	8e0302d0 	lw	v1,720(s0)
    329c:	2401ff00 	li	at,-256
    32a0:	3c0edb06 	lui	t6,0xdb06
    32a4:	24680008 	addiu	t0,v1,8
    32a8:	ae0802d0 	sw	t0,720(s0)
    32ac:	ac6a0000 	sw	t2,0(v1)
    32b0:	922c029d 	lbu	t4,669(s1)
    32b4:	3c180000 	lui	t8,0x0
    32b8:	27180000 	addiu	t8,t8,0
    32bc:	01816825 	or	t5,t4,at
    32c0:	ac6d0004 	sw	t5,4(v1)
    32c4:	8e0302d0 	lw	v1,720(s0)
    32c8:	35ce0020 	ori	t6,t6,0x20
    32cc:	3c190000 	lui	t9,0x0
    32d0:	246b0008 	addiu	t3,v1,8
    32d4:	ae0b02d0 	sw	t3,720(s0)
    32d8:	ac780004 	sw	t8,4(v1)
    32dc:	ac6e0000 	sw	t6,0(v1)
    32e0:	8e26016c 	lw	a2,364(s1)
    32e4:	8e250150 	lw	a1,336(s1)
    32e8:	27390000 	addiu	t9,t9,0
    32ec:	afb90010 	sw	t9,16(sp)
    32f0:	afb10014 	sw	s1,20(sp)
    32f4:	8e0f02d0 	lw	t7,720(s0)
    32f8:	3c070000 	lui	a3,0x0
    32fc:	24e70000 	addiu	a3,a3,0
    3300:	8fa40074 	lw	a0,116(sp)
    3304:	0c000000 	jal	0 <EnPoh_Init>
    3308:	afaf0018 	sw	t7,24(sp)
    330c:	ae0202d0 	sw	v0,720(s0)
    3310:	8e0202c0 	lw	v0,704(s0)
    3314:	3c0ae700 	lui	t2,0xe700
    3318:	3c0cfb00 	lui	t4,0xfb00
    331c:	24480008 	addiu	t0,v0,8
    3320:	ae0802c0 	sw	t0,704(s0)
    3324:	ac400004 	sw	zero,4(v0)
    3328:	ac4a0000 	sw	t2,0(v0)
    332c:	8e0202c0 	lw	v0,704(s0)
    3330:	26240368 	addiu	a0,s1,872
    3334:	24490008 	addiu	t1,v0,8
    3338:	ae0902c0 	sw	t1,704(s0)
    333c:	ac4c0000 	sw	t4,0(v0)
    3340:	9239029f 	lbu	t9,671(s1)
    3344:	922b029e 	lbu	t3,670(s1)
    3348:	922902a0 	lbu	t1,672(s1)
    334c:	00197c00 	sll	t7,t9,0x10
    3350:	000b7600 	sll	t6,t3,0x18
    3354:	01cf4025 	or	t0,t6,t7
    3358:	00096200 	sll	t4,t1,0x8
    335c:	010c6825 	or	t5,t0,t4
    3360:	35ab00ff 	ori	t3,t5,0xff
    3364:	0c000000 	jal	0 <EnPoh_Init>
    3368:	ac4b0004 	sw	t3,4(v0)
    336c:	8e0202c0 	lw	v0,704(s0)
    3370:	3c19da38 	lui	t9,0xda38
    3374:	37390003 	ori	t9,t9,0x3
    3378:	24580008 	addiu	t8,v0,8
    337c:	ae1802c0 	sw	t8,704(s0)
    3380:	ac590000 	sw	t9,0(v0)
    3384:	8fae0074 	lw	t6,116(sp)
    3388:	3c050000 	lui	a1,0x0
    338c:	24a50000 	addiu	a1,a1,0
    3390:	8dc40000 	lw	a0,0(t6)
    3394:	24060a74 	li	a2,2676
    3398:	0c000000 	jal	0 <EnPoh_Init>
    339c:	afa2003c 	sw	v0,60(sp)
    33a0:	8fa3003c 	lw	v1,60(sp)
    33a4:	3c0ade00 	lui	t2,0xde00
    33a8:	3c060000 	lui	a2,0x0
    33ac:	ac620004 	sw	v0,4(v1)
    33b0:	8e0202c0 	lw	v0,704(s0)
    33b4:	24c60000 	addiu	a2,a2,0
    33b8:	27a40058 	addiu	a0,sp,88
    33bc:	244f0008 	addiu	t7,v0,8
    33c0:	ae0f02c0 	sw	t7,704(s0)
    33c4:	ac4a0000 	sw	t2,0(v0)
    33c8:	8e2902a4 	lw	t1,676(s1)
    33cc:	24070a79 	li	a3,2681
    33d0:	8d28001c 	lw	t0,28(t1)
    33d4:	ac480004 	sw	t0,4(v0)
    33d8:	8fac0074 	lw	t4,116(sp)
    33dc:	0c000000 	jal	0 <EnPoh_Init>
    33e0:	8d850000 	lw	a1,0(t4)
    33e4:	8fbf002c 	lw	ra,44(sp)
    33e8:	8fb00024 	lw	s0,36(sp)
    33ec:	8fb10028 	lw	s1,40(sp)
    33f0:	03e00008 	jr	ra
    33f4:	27bd0070 	addiu	sp,sp,112

000033f8 <func_80AE1148>:
    33f8:	27bdff68 	addiu	sp,sp,-152
    33fc:	afbf002c 	sw	ra,44(sp)
    3400:	afb10028 	sw	s1,40(sp)
    3404:	afb00024 	sw	s0,36(sp)
    3408:	afa5009c 	sw	a1,156(sp)
    340c:	8ca50000 	lw	a1,0(a1)
    3410:	00808825 	move	s1,a0
    3414:	3c060000 	lui	a2,0x0
    3418:	24c60000 	addiu	a2,a2,0
    341c:	27a40078 	addiu	a0,sp,120
    3420:	24070a86 	li	a3,2694
    3424:	0c000000 	jal	0 <EnPoh_Init>
    3428:	00a08025 	move	s0,a1
    342c:	0c000000 	jal	0 <EnPoh_Init>
    3430:	02202025 	move	a0,s1
    3434:	862f001c 	lh	t7,28(s1)
    3438:	24010002 	li	at,2
    343c:	3c190000 	lui	t9,0x0
    3440:	15e10007 	bne	t7,at,3460 <func_80AE1148+0x68>
    3444:	27390000 	addiu	t9,t9,0
    3448:	3c180000 	lui	t8,0x0
    344c:	27180000 	addiu	t8,t8,0
    3450:	3c080000 	lui	t0,0x0
    3454:	afb80090 	sw	t8,144(sp)
    3458:	10000004 	b	346c <func_80AE1148+0x74>
    345c:	25080000 	addiu	t0,t0,0
    3460:	3c080000 	lui	t0,0x0
    3464:	afb90090 	sw	t9,144(sp)
    3468:	25080000 	addiu	t0,t0,0
    346c:	9222029d 	lbu	v0,669(s1)
    3470:	240100ff 	li	at,255
    3474:	8faa009c 	lw	t2,156(sp)
    3478:	50410004 	beql	v0,at,348c <func_80AE1148+0x94>
    347c:	8d440000 	lw	a0,0(t2)
    3480:	14400056 	bnez	v0,35dc <func_80AE1148+0x1e4>
    3484:	8fad009c 	lw	t5,156(sp)
    3488:	8d440000 	lw	a0,0(t2)
    348c:	0c000000 	jal	0 <EnPoh_Init>
    3490:	afa8008c 	sw	t0,140(sp)
    3494:	8e0202c0 	lw	v0,704(s0)
    3498:	8fa8008c 	lw	t0,140(sp)
    349c:	3c0cdb06 	lui	t4,0xdb06
    34a0:	244b0008 	addiu	t3,v0,8
    34a4:	ae0b02c0 	sw	t3,704(s0)
    34a8:	358c0020 	ori	t4,t4,0x20
    34ac:	ac4c0000 	sw	t4,0(v0)
    34b0:	8fad009c 	lw	t5,156(sp)
    34b4:	922e029d 	lbu	t6,669(s1)
    34b8:	9227029c 	lbu	a3,668(s1)
    34bc:	9226029b 	lbu	a2,667(s1)
    34c0:	9225029a 	lbu	a1,666(s1)
    34c4:	8da40000 	lw	a0,0(t5)
    34c8:	afa20074 	sw	v0,116(sp)
    34cc:	afa8008c 	sw	t0,140(sp)
    34d0:	0c000000 	jal	0 <EnPoh_Init>
    34d4:	afae0010 	sw	t6,16(sp)
    34d8:	8fa30074 	lw	v1,116(sp)
    34dc:	8fa8008c 	lw	t0,140(sp)
    34e0:	3c18db06 	lui	t8,0xdb06
    34e4:	ac620004 	sw	v0,4(v1)
    34e8:	8e0202c0 	lw	v0,704(s0)
    34ec:	8fa90090 	lw	t1,144(sp)
    34f0:	37180028 	ori	t8,t8,0x28
    34f4:	244f0008 	addiu	t7,v0,8
    34f8:	ae0f02c0 	sw	t7,704(s0)
    34fc:	ac580000 	sw	t8,0(v0)
    3500:	8fb9009c 	lw	t9,156(sp)
    3504:	922a029d 	lbu	t2,669(s1)
    3508:	91270002 	lbu	a3,2(t1)
    350c:	91260001 	lbu	a2,1(t1)
    3510:	91250000 	lbu	a1,0(t1)
    3514:	8f240000 	lw	a0,0(t9)
    3518:	afa8008c 	sw	t0,140(sp)
    351c:	afa20070 	sw	v0,112(sp)
    3520:	0c000000 	jal	0 <EnPoh_Init>
    3524:	afaa0010 	sw	t2,16(sp)
    3528:	8fa30070 	lw	v1,112(sp)
    352c:	8fa8008c 	lw	t0,140(sp)
    3530:	3c0cdb06 	lui	t4,0xdb06
    3534:	ac620004 	sw	v0,4(v1)
    3538:	8e0202c0 	lw	v0,704(s0)
    353c:	358c002c 	ori	t4,t4,0x2c
    3540:	244b0008 	addiu	t3,v0,8
    3544:	ae0b02c0 	sw	t3,704(s0)
    3548:	ac4c0000 	sw	t4,0(v0)
    354c:	8fad009c 	lw	t5,156(sp)
    3550:	922e029d 	lbu	t6,669(s1)
    3554:	91070002 	lbu	a3,2(t0)
    3558:	91060001 	lbu	a2,1(t0)
    355c:	91050000 	lbu	a1,0(t0)
    3560:	8da40000 	lw	a0,0(t5)
    3564:	afa2006c 	sw	v0,108(sp)
    3568:	0c000000 	jal	0 <EnPoh_Init>
    356c:	afae0010 	sw	t6,16(sp)
    3570:	8fa3006c 	lw	v1,108(sp)
    3574:	3c18db06 	lui	t8,0xdb06
    3578:	3c190000 	lui	t9,0x0
    357c:	ac620004 	sw	v0,4(v1)
    3580:	8e0202c0 	lw	v0,704(s0)
    3584:	27390010 	addiu	t9,t9,16
    3588:	37180030 	ori	t8,t8,0x30
    358c:	244f0008 	addiu	t7,v0,8
    3590:	ae0f02c0 	sw	t7,704(s0)
    3594:	ac590004 	sw	t9,4(v0)
    3598:	ac580000 	sw	t8,0(v0)
    359c:	9227014e 	lbu	a3,334(s1)
    35a0:	8e26016c 	lw	a2,364(s1)
    35a4:	8e250150 	lw	a1,336(s1)
    35a8:	3c0a0000 	lui	t2,0x0
    35ac:	3c0b0000 	lui	t3,0x0
    35b0:	256b0000 	addiu	t3,t3,0
    35b4:	254a0000 	addiu	t2,t2,0
    35b8:	afaa0010 	sw	t2,16(sp)
    35bc:	afab0014 	sw	t3,20(sp)
    35c0:	afb10018 	sw	s1,24(sp)
    35c4:	8e0c02c0 	lw	t4,704(s0)
    35c8:	8fa4009c 	lw	a0,156(sp)
    35cc:	0c000000 	jal	0 <EnPoh_Init>
    35d0:	afac001c 	sw	t4,28(sp)
    35d4:	10000058 	b	3738 <func_80AE1148+0x340>
    35d8:	ae0202c0 	sw	v0,704(s0)
    35dc:	8da40000 	lw	a0,0(t5)
    35e0:	0c000000 	jal	0 <EnPoh_Init>
    35e4:	afa8008c 	sw	t0,140(sp)
    35e8:	8fae009c 	lw	t6,156(sp)
    35ec:	0c000000 	jal	0 <EnPoh_Init>
    35f0:	8dc40000 	lw	a0,0(t6)
    35f4:	8e0202d0 	lw	v0,720(s0)
    35f8:	8fa8008c 	lw	t0,140(sp)
    35fc:	3c18db06 	lui	t8,0xdb06
    3600:	244f0008 	addiu	t7,v0,8
    3604:	ae0f02d0 	sw	t7,720(s0)
    3608:	37180020 	ori	t8,t8,0x20
    360c:	ac580000 	sw	t8,0(v0)
    3610:	8fb9009c 	lw	t9,156(sp)
    3614:	922a029d 	lbu	t2,669(s1)
    3618:	9227029c 	lbu	a3,668(s1)
    361c:	9226029b 	lbu	a2,667(s1)
    3620:	9225029a 	lbu	a1,666(s1)
    3624:	8f240000 	lw	a0,0(t9)
    3628:	afa20064 	sw	v0,100(sp)
    362c:	afa8008c 	sw	t0,140(sp)
    3630:	0c000000 	jal	0 <EnPoh_Init>
    3634:	afaa0010 	sw	t2,16(sp)
    3638:	8fa30064 	lw	v1,100(sp)
    363c:	8fa8008c 	lw	t0,140(sp)
    3640:	3c0cdb06 	lui	t4,0xdb06
    3644:	ac620004 	sw	v0,4(v1)
    3648:	8e0202d0 	lw	v0,720(s0)
    364c:	358c0028 	ori	t4,t4,0x28
    3650:	244b0008 	addiu	t3,v0,8
    3654:	ae0b02d0 	sw	t3,720(s0)
    3658:	ac4c0000 	sw	t4,0(v0)
    365c:	8fae0090 	lw	t6,144(sp)
    3660:	8fad009c 	lw	t5,156(sp)
    3664:	922f029d 	lbu	t7,669(s1)
    3668:	91c50000 	lbu	a1,0(t6)
    366c:	91c60001 	lbu	a2,1(t6)
    3670:	91c70002 	lbu	a3,2(t6)
    3674:	8da40000 	lw	a0,0(t5)
    3678:	afa8008c 	sw	t0,140(sp)
    367c:	afa20060 	sw	v0,96(sp)
    3680:	0c000000 	jal	0 <EnPoh_Init>
    3684:	afaf0010 	sw	t7,16(sp)
    3688:	8fa30060 	lw	v1,96(sp)
    368c:	8fa8008c 	lw	t0,140(sp)
    3690:	3c19db06 	lui	t9,0xdb06
    3694:	ac620004 	sw	v0,4(v1)
    3698:	8e0202d0 	lw	v0,720(s0)
    369c:	3739002c 	ori	t9,t9,0x2c
    36a0:	24580008 	addiu	t8,v0,8
    36a4:	ae1802d0 	sw	t8,720(s0)
    36a8:	ac590000 	sw	t9,0(v0)
    36ac:	8faa009c 	lw	t2,156(sp)
    36b0:	922b029d 	lbu	t3,669(s1)
    36b4:	91070002 	lbu	a3,2(t0)
    36b8:	91060001 	lbu	a2,1(t0)
    36bc:	91050000 	lbu	a1,0(t0)
    36c0:	8d440000 	lw	a0,0(t2)
    36c4:	afa2005c 	sw	v0,92(sp)
    36c8:	0c000000 	jal	0 <EnPoh_Init>
    36cc:	afab0010 	sw	t3,16(sp)
    36d0:	8fa3005c 	lw	v1,92(sp)
    36d4:	3c0ddb06 	lui	t5,0xdb06
    36d8:	3c0e0000 	lui	t6,0x0
    36dc:	ac620004 	sw	v0,4(v1)
    36e0:	8e0202d0 	lw	v0,720(s0)
    36e4:	25ce0000 	addiu	t6,t6,0
    36e8:	35ad0030 	ori	t5,t5,0x30
    36ec:	244c0008 	addiu	t4,v0,8
    36f0:	ae0c02d0 	sw	t4,720(s0)
    36f4:	ac4e0004 	sw	t6,4(v0)
    36f8:	ac4d0000 	sw	t5,0(v0)
    36fc:	9227014e 	lbu	a3,334(s1)
    3700:	8e26016c 	lw	a2,364(s1)
    3704:	8e250150 	lw	a1,336(s1)
    3708:	3c0f0000 	lui	t7,0x0
    370c:	3c180000 	lui	t8,0x0
    3710:	27180000 	addiu	t8,t8,0
    3714:	25ef0000 	addiu	t7,t7,0
    3718:	afaf0010 	sw	t7,16(sp)
    371c:	afb80014 	sw	t8,20(sp)
    3720:	afb10018 	sw	s1,24(sp)
    3724:	8e1902d0 	lw	t9,720(s0)
    3728:	8fa4009c 	lw	a0,156(sp)
    372c:	0c000000 	jal	0 <EnPoh_Init>
    3730:	afb9001c 	sw	t9,28(sp)
    3734:	ae0202d0 	sw	v0,720(s0)
    3738:	8e0202c0 	lw	v0,704(s0)
    373c:	3c0be700 	lui	t3,0xe700
    3740:	3c0dfb00 	lui	t5,0xfb00
    3744:	244a0008 	addiu	t2,v0,8
    3748:	ae0a02c0 	sw	t2,704(s0)
    374c:	ac400004 	sw	zero,4(v0)
    3750:	ac4b0000 	sw	t3,0(v0)
    3754:	8e0202c0 	lw	v0,704(s0)
    3758:	26240368 	addiu	a0,s1,872
    375c:	244c0008 	addiu	t4,v0,8
    3760:	ae0c02c0 	sw	t4,704(s0)
    3764:	ac4d0000 	sw	t5,0(v0)
    3768:	922f029e 	lbu	t7,670(s1)
    376c:	922a029f 	lbu	t2,671(s1)
    3770:	922e02a0 	lbu	t6,672(s1)
    3774:	000fc600 	sll	t8,t7,0x18
    3778:	000a5c00 	sll	t3,t2,0x10
    377c:	030b6025 	or	t4,t8,t3
    3780:	000e7a00 	sll	t7,t6,0x8
    3784:	018fc825 	or	t9,t4,t7
    3788:	372a00ff 	ori	t2,t9,0xff
    378c:	0c000000 	jal	0 <EnPoh_Init>
    3790:	ac4a0004 	sw	t2,4(v0)
    3794:	8e0202c0 	lw	v0,704(s0)
    3798:	3c0bda38 	lui	t3,0xda38
    379c:	356b0003 	ori	t3,t3,0x3
    37a0:	24580008 	addiu	t8,v0,8
    37a4:	ae1802c0 	sw	t8,704(s0)
    37a8:	ac4b0000 	sw	t3,0(v0)
    37ac:	8fad009c 	lw	t5,156(sp)
    37b0:	3c050000 	lui	a1,0x0
    37b4:	24a50000 	addiu	a1,a1,0
    37b8:	8da40000 	lw	a0,0(t5)
    37bc:	24060ae3 	li	a2,2787
    37c0:	0c000000 	jal	0 <EnPoh_Init>
    37c4:	afa2004c 	sw	v0,76(sp)
    37c8:	8fa3004c 	lw	v1,76(sp)
    37cc:	3c04de00 	lui	a0,0xde00
    37d0:	3c0a0600 	lui	t2,0x600
    37d4:	ac620004 	sw	v0,4(v1)
    37d8:	8e0202c0 	lw	v0,704(s0)
    37dc:	254a4498 	addiu	t2,t2,17560
    37e0:	3c0be700 	lui	t3,0xe700
    37e4:	244e0008 	addiu	t6,v0,8
    37e8:	ae0e02c0 	sw	t6,704(s0)
    37ec:	ac440000 	sw	a0,0(v0)
    37f0:	8e2c02a4 	lw	t4,676(s1)
    37f4:	3c0efb00 	lui	t6,0xfb00
    37f8:	3c060000 	lui	a2,0x0
    37fc:	8d8f001c 	lw	t7,28(t4)
    3800:	24c60000 	addiu	a2,a2,0
    3804:	24070af2 	li	a3,2802
    3808:	ac4f0004 	sw	t7,4(v0)
    380c:	8e0202c0 	lw	v0,704(s0)
    3810:	24590008 	addiu	t9,v0,8
    3814:	ae1902c0 	sw	t9,704(s0)
    3818:	ac4a0004 	sw	t2,4(v0)
    381c:	ac440000 	sw	a0,0(v0)
    3820:	8e0202c0 	lw	v0,704(s0)
    3824:	24580008 	addiu	t8,v0,8
    3828:	ae1802c0 	sw	t8,704(s0)
    382c:	ac400004 	sw	zero,4(v0)
    3830:	ac4b0000 	sw	t3,0(v0)
    3834:	8e0202c0 	lw	v0,704(s0)
    3838:	8fa50090 	lw	a1,144(sp)
    383c:	244d0008 	addiu	t5,v0,8
    3840:	ae0d02c0 	sw	t5,704(s0)
    3844:	ac4e0000 	sw	t6,0(v0)
    3848:	90af0000 	lbu	t7,0(a1)
    384c:	90b80001 	lbu	t8,1(a1)
    3850:	90ac0002 	lbu	t4,2(a1)
    3854:	000fce00 	sll	t9,t7,0x18
    3858:	00185c00 	sll	t3,t8,0x10
    385c:	032b6825 	or	t5,t9,t3
    3860:	000c7a00 	sll	t7,t4,0x8
    3864:	01af5025 	or	t2,t5,t7
    3868:	355800ff 	ori	t8,t2,0xff
    386c:	ac580004 	sw	t8,4(v0)
    3870:	8e0202c0 	lw	v0,704(s0)
    3874:	3c0b0600 	lui	t3,0x600
    3878:	256b4530 	addiu	t3,t3,17712
    387c:	24590008 	addiu	t9,v0,8
    3880:	ae1902c0 	sw	t9,704(s0)
    3884:	ac4b0004 	sw	t3,4(v0)
    3888:	ac440000 	sw	a0,0(v0)
    388c:	8fae009c 	lw	t6,156(sp)
    3890:	27a40078 	addiu	a0,sp,120
    3894:	0c000000 	jal	0 <EnPoh_Init>
    3898:	8dc50000 	lw	a1,0(t6)
    389c:	8fbf002c 	lw	ra,44(sp)
    38a0:	8fb00024 	lw	s0,36(sp)
    38a4:	8fb10028 	lw	s1,40(sp)
    38a8:	03e00008 	jr	ra
    38ac:	27bd0098 	addiu	sp,sp,152

000038b0 <func_80AE1600>:
    38b0:	27bdffe8 	addiu	sp,sp,-24
    38b4:	afbf0014 	sw	ra,20(sp)
    38b8:	afa40018 	sw	a0,24(sp)
    38bc:	8c990190 	lw	t9,400(a0)
    38c0:	0320f809 	jalr	t9
    38c4:	00000000 	nop
    38c8:	8fa40018 	lw	a0,24(sp)
    38cc:	3c0e0000 	lui	t6,0x0
    38d0:	25ce0000 	addiu	t6,t6,0
    38d4:	8c8f0190 	lw	t7,400(a0)
    38d8:	11cf0004 	beq	t6,t7,38ec <func_80AE1600+0x3c>
    38dc:	00000000 	nop
    38e0:	8498019a 	lh	t8,410(a0)
    38e4:	27080001 	addiu	t0,t8,1
    38e8:	a488019a 	sh	t0,410(a0)
    38ec:	0c000000 	jal	0 <EnPoh_Init>
    38f0:	00000000 	nop
    38f4:	8fbf0014 	lw	ra,20(sp)
    38f8:	27bd0018 	addiu	sp,sp,24
    38fc:	03e00008 	jr	ra
    3900:	00000000 	nop

00003904 <func_80AE1654>:
    3904:	27bdff68 	addiu	sp,sp,-152
    3908:	afbf003c 	sw	ra,60(sp)
    390c:	afb10038 	sw	s1,56(sp)
    3910:	afb00034 	sw	s0,52(sp)
    3914:	afa5009c 	sw	a1,156(sp)
    3918:	8ca50000 	lw	a1,0(a1)
    391c:	00808025 	move	s0,a0
    3920:	3c060000 	lui	a2,0x0
    3924:	24c60000 	addiu	a2,a2,0
    3928:	27a40080 	addiu	a0,sp,128
    392c:	24070b11 	li	a3,2833
    3930:	0c000000 	jal	0 <EnPoh_Init>
    3934:	00a08825 	move	s1,a1
    3938:	8e180190 	lw	t8,400(s0)
    393c:	3c0f0000 	lui	t7,0x0
    3940:	25ef0000 	addiu	t7,t7,0
    3944:	15f80072 	bne	t7,t8,3b10 <func_80AE1654+0x20c>
    3948:	8fb9009c 	lw	t9,156(sp)
    394c:	0c000000 	jal	0 <EnPoh_Init>
    3950:	8f240000 	lw	a0,0(t9)
    3954:	8e2202c0 	lw	v0,704(s1)
    3958:	3c09fb00 	lui	t1,0xfb00
    395c:	260402ac 	addiu	a0,s0,684
    3960:	24480008 	addiu	t0,v0,8
    3964:	ae2802c0 	sw	t0,704(s1)
    3968:	ac490000 	sw	t1,0(v0)
    396c:	920e029f 	lbu	t6,671(s0)
    3970:	920b029e 	lbu	t3,670(s0)
    3974:	920802a0 	lbu	t0,672(s0)
    3978:	000e7c00 	sll	t7,t6,0x10
    397c:	000b6600 	sll	t4,t3,0x18
    3980:	018fc025 	or	t8,t4,t7
    3984:	00084a00 	sll	t1,t0,0x8
    3988:	03095025 	or	t2,t8,t1
    398c:	354b00ff 	ori	t3,t2,0xff
    3990:	ac4b0004 	sw	t3,4(v0)
    3994:	c610002c 	lwc1	$f16,44(s0)
    3998:	c6080028 	lwc1	$f8,40(s0)
    399c:	c6040024 	lwc1	$f4,36(s0)
    39a0:	920f029e 	lbu	t7,670(s0)
    39a4:	4600848d 	trunc.w.s	$f18,$f16
    39a8:	241800c8 	li	t8,200
    39ac:	afaf0010 	sw	t7,16(sp)
    39b0:	4600428d 	trunc.w.s	$f10,$f8
    39b4:	9219029f 	lbu	t9,671(s0)
    39b8:	44079000 	mfc1	a3,$f18
    39bc:	4600218d 	trunc.w.s	$f6,$f4
    39c0:	44065000 	mfc1	a2,$f10
    39c4:	afb90014 	sw	t9,20(sp)
    39c8:	920802a0 	lbu	t0,672(s0)
    39cc:	44053000 	mfc1	a1,$f6
    39d0:	00073c00 	sll	a3,a3,0x10
    39d4:	00063400 	sll	a2,a2,0x10
    39d8:	00052c00 	sll	a1,a1,0x10
    39dc:	00052c03 	sra	a1,a1,0x10
    39e0:	00063403 	sra	a2,a2,0x10
    39e4:	00073c03 	sra	a3,a3,0x10
    39e8:	afb8001c 	sw	t8,28(sp)
    39ec:	0c000000 	jal	0 <EnPoh_Init>
    39f0:	afa80018 	sw	t0,24(sp)
    39f4:	8e2202c0 	lw	v0,704(s1)
    39f8:	3c0ada38 	lui	t2,0xda38
    39fc:	354a0003 	ori	t2,t2,0x3
    3a00:	24490008 	addiu	t1,v0,8
    3a04:	ae2902c0 	sw	t1,704(s1)
    3a08:	ac4a0000 	sw	t2,0(v0)
    3a0c:	8fab009c 	lw	t3,156(sp)
    3a10:	3c050000 	lui	a1,0x0
    3a14:	24a50000 	addiu	a1,a1,0
    3a18:	8d640000 	lw	a0,0(t3)
    3a1c:	24060b26 	li	a2,2854
    3a20:	0c000000 	jal	0 <EnPoh_Init>
    3a24:	afa20078 	sw	v0,120(sp)
    3a28:	8fa30078 	lw	v1,120(sp)
    3a2c:	3c05de00 	lui	a1,0xde00
    3a30:	24010001 	li	at,1
    3a34:	ac620004 	sw	v0,4(v1)
    3a38:	8e2202c0 	lw	v0,704(s1)
    3a3c:	244d0008 	addiu	t5,v0,8
    3a40:	ae2d02c0 	sw	t5,704(s1)
    3a44:	ac450000 	sw	a1,0(v0)
    3a48:	8e0e02a4 	lw	t6,676(s0)
    3a4c:	8dcc001c 	lw	t4,28(t6)
    3a50:	ac4c0004 	sw	t4,4(v0)
    3a54:	920f0197 	lbu	t7,407(s0)
    3a58:	55e1009c 	bnel	t7,at,3ccc <func_80AE1654+0x3c8>
    3a5c:	8fae009c 	lw	t6,156(sp)
    3a60:	8619001c 	lh	t9,28(s0)
    3a64:	24010002 	li	at,2
    3a68:	3c040000 	lui	a0,0x0
    3a6c:	17210004 	bne	t9,at,3a80 <func_80AE1654+0x17c>
    3a70:	24840000 	addiu	a0,a0,0
    3a74:	3c040000 	lui	a0,0x0
    3a78:	10000001 	b	3a80 <func_80AE1654+0x17c>
    3a7c:	24840000 	addiu	a0,a0,0
    3a80:	8e2202c0 	lw	v0,704(s1)
    3a84:	3c180600 	lui	t8,0x600
    3a88:	27184498 	addiu	t8,t8,17560
    3a8c:	24480008 	addiu	t0,v0,8
    3a90:	ae2802c0 	sw	t0,704(s1)
    3a94:	ac580004 	sw	t8,4(v0)
    3a98:	ac450000 	sw	a1,0(v0)
    3a9c:	8e2202c0 	lw	v0,704(s1)
    3aa0:	3c0ae700 	lui	t2,0xe700
    3aa4:	3c0dfb00 	lui	t5,0xfb00
    3aa8:	24490008 	addiu	t1,v0,8
    3aac:	ae2902c0 	sw	t1,704(s1)
    3ab0:	ac400004 	sw	zero,4(v0)
    3ab4:	ac4a0000 	sw	t2,0(v0)
    3ab8:	8e2202c0 	lw	v0,704(s1)
    3abc:	244b0008 	addiu	t3,v0,8
    3ac0:	ae2b02c0 	sw	t3,704(s1)
    3ac4:	ac4d0000 	sw	t5,0(v0)
    3ac8:	90880001 	lbu	t0,1(a0)
    3acc:	908c0000 	lbu	t4,0(a0)
    3ad0:	908b0002 	lbu	t3,2(a0)
    3ad4:	0008c400 	sll	t8,t0,0x10
    3ad8:	000c7e00 	sll	t7,t4,0x18
    3adc:	01f84825 	or	t1,t7,t8
    3ae0:	000b6a00 	sll	t5,t3,0x8
    3ae4:	012d7025 	or	t6,t1,t5
    3ae8:	35cc00ff 	ori	t4,t6,0xff
    3aec:	ac4c0004 	sw	t4,4(v0)
    3af0:	8e2202c0 	lw	v0,704(s1)
    3af4:	3c080600 	lui	t0,0x600
    3af8:	25084530 	addiu	t0,t0,17712
    3afc:	24590008 	addiu	t9,v0,8
    3b00:	ae3902c0 	sw	t9,704(s1)
    3b04:	ac480004 	sw	t0,4(v0)
    3b08:	1000006f 	b	3cc8 <func_80AE1654+0x3c4>
    3b0c:	ac450000 	sw	a1,0(v0)
    3b10:	8faf009c 	lw	t7,156(sp)
    3b14:	0c000000 	jal	0 <EnPoh_Init>
    3b18:	8de40000 	lw	a0,0(t7)
    3b1c:	8e2202d0 	lw	v0,720(s1)
    3b20:	3c0adb06 	lui	t2,0xdb06
    3b24:	354a0020 	ori	t2,t2,0x20
    3b28:	24580008 	addiu	t8,v0,8
    3b2c:	ae3802d0 	sw	t8,720(s1)
    3b30:	ac4a0000 	sw	t2,0(v0)
    3b34:	8fab009c 	lw	t3,156(sp)
    3b38:	24090020 	li	t1,32
    3b3c:	240d0040 	li	t5,64
    3b40:	8d640000 	lw	a0,0(t3)
    3b44:	240e0001 	li	t6,1
    3b48:	afae0018 	sw	t6,24(sp)
    3b4c:	afa0001c 	sw	zero,28(sp)
    3b50:	afad0014 	sw	t5,20(sp)
    3b54:	afa90010 	sw	t1,16(sp)
    3b58:	8e1902a4 	lw	t9,676(s0)
    3b5c:	860c019a 	lh	t4,410(s0)
    3b60:	240b0080 	li	t3,128
    3b64:	83280008 	lb	t0,8(t9)
    3b68:	240a0020 	li	t2,32
    3b6c:	afaa0024 	sw	t2,36(sp)
    3b70:	01880019 	multu	t4,t0
    3b74:	afab0028 	sw	t3,40(sp)
    3b78:	00002825 	move	a1,zero
    3b7c:	00003025 	move	a2,zero
    3b80:	00003825 	move	a3,zero
    3b84:	afa20058 	sw	v0,88(sp)
    3b88:	00007812 	mflo	t7
    3b8c:	31f801ff 	andi	t8,t7,0x1ff
    3b90:	0c000000 	jal	0 <EnPoh_Init>
    3b94:	afb80020 	sw	t8,32(sp)
    3b98:	8fa30058 	lw	v1,88(sp)
    3b9c:	3c0dfa00 	lui	t5,0xfa00
    3ba0:	35ad8080 	ori	t5,t5,0x8080
    3ba4:	ac620004 	sw	v0,4(v1)
    3ba8:	8e2202d0 	lw	v0,720(s1)
    3bac:	24490008 	addiu	t1,v0,8
    3bb0:	ae2902d0 	sw	t1,720(s1)
    3bb4:	ac4d0000 	sw	t5,0(v0)
    3bb8:	8e0302a4 	lw	v1,676(s0)
    3bbc:	9208029d 	lbu	t0,669(s0)
    3bc0:	90790000 	lbu	t9,0(v1)
    3bc4:	906f0001 	lbu	t7,1(v1)
    3bc8:	90690002 	lbu	t1,2(v1)
    3bcc:	00196600 	sll	t4,t9,0x18
    3bd0:	000fc400 	sll	t8,t7,0x10
    3bd4:	01985025 	or	t2,t4,t8
    3bd8:	00096a00 	sll	t5,t1,0x8
    3bdc:	014d7025 	or	t6,t2,t5
    3be0:	01c87825 	or	t7,t6,t0
    3be4:	ac4f0004 	sw	t7,4(v0)
    3be8:	8e2202d0 	lw	v0,720(s1)
    3bec:	3c18fb00 	lui	t8,0xfb00
    3bf0:	244c0008 	addiu	t4,v0,8
    3bf4:	ae2c02d0 	sw	t4,720(s1)
    3bf8:	ac580000 	sw	t8,0(v0)
    3bfc:	9219029b 	lbu	t9,667(s0)
    3c00:	9209029a 	lbu	t1,666(s0)
    3c04:	920c029c 	lbu	t4,668(s0)
    3c08:	00197400 	sll	t6,t9,0x10
    3c0c:	00095600 	sll	t2,t1,0x18
    3c10:	014e4025 	or	t0,t2,t6
    3c14:	000cc200 	sll	t8,t4,0x8
    3c18:	01185825 	or	t3,t0,t8
    3c1c:	356900ff 	ori	t1,t3,0xff
    3c20:	ac490004 	sw	t1,4(v0)
    3c24:	8fad009c 	lw	t5,156(sp)
    3c28:	85b907a0 	lh	t9,1952(t5)
    3c2c:	00195080 	sll	t2,t9,0x2
    3c30:	01aa7021 	addu	t6,t5,t2
    3c34:	0c000000 	jal	0 <EnPoh_Init>
    3c38:	8dc40790 	lw	a0,1936(t6)
    3c3c:	34018000 	li	at,0x8000
    3c40:	00417821 	addu	t7,v0,at
    3c44:	000f6400 	sll	t4,t7,0x10
    3c48:	000c4403 	sra	t0,t4,0x10
    3c4c:	44882000 	mtc1	t0,$f4
    3c50:	3c010000 	lui	at,0x0
    3c54:	c4280000 	lwc1	$f8,0(at)
    3c58:	468021a0 	cvt.s.w	$f6,$f4
    3c5c:	24050001 	li	a1,1
    3c60:	46083302 	mul.s	$f12,$f6,$f8
    3c64:	0c000000 	jal	0 <EnPoh_Init>
    3c68:	00000000 	nop
    3c6c:	8e2202d0 	lw	v0,720(s1)
    3c70:	3c0bda38 	lui	t3,0xda38
    3c74:	356b0003 	ori	t3,t3,0x3
    3c78:	24580008 	addiu	t8,v0,8
    3c7c:	ae3802d0 	sw	t8,720(s1)
    3c80:	ac4b0000 	sw	t3,0(v0)
    3c84:	8fa9009c 	lw	t1,156(sp)
    3c88:	3c050000 	lui	a1,0x0
    3c8c:	24a50000 	addiu	a1,a1,0
    3c90:	8d240000 	lw	a0,0(t1)
    3c94:	24060b5e 	li	a2,2910
    3c98:	0c000000 	jal	0 <EnPoh_Init>
    3c9c:	afa2004c 	sw	v0,76(sp)
    3ca0:	8fa3004c 	lw	v1,76(sp)
    3ca4:	3c05de00 	lui	a1,0xde00
    3ca8:	ac620004 	sw	v0,4(v1)
    3cac:	8e2202d0 	lw	v0,720(s1)
    3cb0:	24590008 	addiu	t9,v0,8
    3cb4:	ae3902d0 	sw	t9,720(s1)
    3cb8:	ac450000 	sw	a1,0(v0)
    3cbc:	8e0d02a4 	lw	t5,676(s0)
    3cc0:	8daa0024 	lw	t2,36(t5)
    3cc4:	ac4a0004 	sw	t2,4(v0)
    3cc8:	8fae009c 	lw	t6,156(sp)
    3ccc:	3c060000 	lui	a2,0x0
    3cd0:	24c60000 	addiu	a2,a2,0
    3cd4:	27a40080 	addiu	a0,sp,128
    3cd8:	24070b64 	li	a3,2916
    3cdc:	0c000000 	jal	0 <EnPoh_Init>
    3ce0:	8dc50000 	lw	a1,0(t6)
    3ce4:	8fbf003c 	lw	ra,60(sp)
    3ce8:	8fb00034 	lw	s0,52(sp)
    3cec:	8fb10038 	lw	s1,56(sp)
    3cf0:	03e00008 	jr	ra
    3cf4:	27bd0098 	addiu	sp,sp,152
	...
