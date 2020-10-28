
build/src/overlays/gamestates/ovl_file_choose/z_file_nameset_PAL.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80803D40>:
       0:	3c010001 	lui	at,0x1
       4:	34218000 	ori	at,at,0x8000
       8:	3c0b0000 	lui	t3,0x0
       c:	256b0000 	addiu	t3,t3,0
      10:	00814821 	addu	t1,a0,at
      14:	00205021 	move	t2,at
      18:	00001025 	move	v0,zero
      1c:	00021840 	sll	v1,v0,0x1
      20:	00837021 	addu	t6,a0,v1
      24:	01ca3821 	addu	a3,t6,t2
      28:	01637821 	addu	t7,t3,v1
      2c:	85e50000 	lh	a1,0(t7)
      30:	84e84a52 	lh	t0,19026(a3)
      34:	24420001 	addiu	v0,v0,1
      38:	00021400 	sll	v0,v0,0x10
      3c:	01053023 	subu	a2,t0,a1
      40:	04c00003 	bltz	a2,50 <func_80803D40+0x50>
      44:	00021403 	sra	v0,v0,0x10
      48:	10000002 	b	54 <func_80803D40+0x54>
      4c:	00c01825 	move	v1,a2
      50:	00061823 	negu	v1,a2
      54:	85384a50 	lh	t8,19024(t1)
      58:	0078001a 	div	zero,v1,t8
      5c:	17000002 	bnez	t8,68 <func_80803D40+0x68>
      60:	00000000 	nop
      64:	0007000d 	break	0x7
      68:	2401ffff 	li	at,-1
      6c:	17010004 	bne	t8,at,80 <func_80803D40+0x80>
      70:	3c018000 	lui	at,0x8000
      74:	14610002 	bne	v1,at,80 <func_80803D40+0x80>
      78:	00000000 	nop
      7c:	0006000d 	break	0x6
      80:	00003012 	mflo	a2
      84:	00063400 	sll	a2,a2,0x10
      88:	0105082a 	slt	at,t0,a1
      8c:	14200004 	bnez	at,a0 <func_80803D40+0xa0>
      90:	00063403 	sra	a2,a2,0x10
      94:	0106c823 	subu	t9,t0,a2
      98:	10000003 	b	a8 <func_80803D40+0xa8>
      9c:	a4f94a52 	sh	t9,19026(a3)
      a0:	01066021 	addu	t4,t0,a2
      a4:	a4ec4a52 	sh	t4,19026(a3)
      a8:	28410005 	slti	at,v0,5
      ac:	5420ffdc 	bnezl	at,20 <func_80803D40+0x20>
      b0:	00021840 	sll	v1,v0,0x1
      b4:	852d4a92 	lh	t5,19090(t1)
      b8:	852f4a94 	lh	t7,19092(t1)
      bc:	85394a9a 	lh	t9,19098(t1)
      c0:	3c010002 	lui	at,0x2
      c4:	25aeffe7 	addiu	t6,t5,-25
      c8:	25f8ffe7 	addiu	t8,t7,-25
      cc:	a52e4a92 	sh	t6,19090(t1)
      d0:	a5384a94 	sh	t8,19092(t1)
      d4:	00240821 	addu	at,at,a0
      d8:	272cffe7 	addiu	t4,t9,-25
      dc:	a42cca9a 	sh	t4,-13670(at)
      e0:	852d4a98 	lh	t5,19096(t1)
      e4:	852f4a6e 	lh	t7,19054(t1)
      e8:	85394a70 	lh	t9,19056(t1)
      ec:	25ae0019 	addiu	t6,t5,25
      f0:	852d4a50 	lh	t5,19024(t1)
      f4:	a52e4a98 	sh	t6,19096(t1)
      f8:	3c010002 	lui	at,0x2
      fc:	25f8ffe1 	addiu	t8,t7,-31
     100:	272c001f 	addiu	t4,t9,31
     104:	a5384a6e 	sh	t8,19054(t1)
     108:	a52c4a70 	sh	t4,19056(t1)
     10c:	00240821 	addu	at,at,a0
     110:	25aeffff 	addiu	t6,t5,-1
     114:	a42eca50 	sh	t6,-13744(at)
     118:	852f4a50 	lh	t7,19024(t1)
     11c:	3c010002 	lui	at,0x2
     120:	00240821 	addu	at,at,a0
     124:	15e0001a 	bnez	t7,190 <func_80803D40+0x190>
     128:	24180008 	li	t8,8
     12c:	a438ca50 	sh	t8,-13744(at)
     130:	3c010002 	lui	at,0x2
     134:	00240821 	addu	at,at,a0
     138:	a420ca9a 	sh	zero,-13670(at)
     13c:	85224a9a 	lh	v0,19098(t1)
     140:	852c4a66 	lh	t4,19046(t1)
     144:	241900c8 	li	t9,200
     148:	3c010002 	lui	at,0x2
     14c:	a5394a98 	sh	t9,19096(t1)
     150:	00240821 	addu	at,at,a0
     154:	a5224a94 	sh	v0,19092(t1)
     158:	a5224a92 	sh	v0,19090(t1)
     15c:	a42cca64 	sh	t4,-13724(at)
     160:	240d00ff 	li	t5,255
     164:	3c010002 	lui	at,0x2
     168:	a52d4a6e 	sh	t5,19054(t1)
     16c:	a5204a70 	sh	zero,19056(t1)
     170:	00240821 	addu	at,at,a0
     174:	240e0003 	li	t6,3
     178:	a42eca38 	sh	t6,-13768(at)
     17c:	852f4a3e 	lh	t7,19006(t1)
     180:	3c010002 	lui	at,0x2
     184:	00240821 	addu	at,at,a0
     188:	25f80001 	addiu	t8,t7,1
     18c:	a438ca3e 	sh	t8,-13762(at)
     190:	03e00008 	jr	ra
     194:	00000000 	nop

00000198 <func_80803ED8>:
     198:	27bdffc0 	addiu	sp,sp,-64
     19c:	3c010001 	lui	at,0x1
     1a0:	34218000 	ori	at,at,0x8000
     1a4:	afbf0024 	sw	ra,36(sp)
     1a8:	afb00020 	sw	s0,32(sp)
     1ac:	00814021 	addu	t0,a0,at
     1b0:	85034a38 	lh	v1,19000(t0)
     1b4:	24090003 	li	t1,3
     1b8:	00808025 	move	s0,a0
     1bc:	55230006 	bnel	t1,v1,1d8 <func_80803ED8+0x40>
     1c0:	96020020 	lhu	v0,32(s0)
     1c4:	948e0020 	lhu	t6,32(a0)
     1c8:	31cf9000 	andi	t7,t6,0x9000
     1cc:	55e00007 	bnezl	t7,1ec <func_80803ED8+0x54>
     1d0:	3c010002 	lui	at,0x2
     1d4:	96020020 	lhu	v0,32(s0)
     1d8:	2401bfff 	li	at,-16385
     1dc:	0041c027 	nor	t8,v0,at
     1e0:	17000020 	bnez	t8,264 <func_80803ED8+0xcc>
     1e4:	304d9000 	andi	t5,v0,0x9000
     1e8:	3c010002 	lui	at,0x2
     1ec:	00300821 	addu	at,at,s0
     1f0:	24190008 	li	t9,8
     1f4:	a439ca50 	sh	t9,-13744(at)
     1f8:	3c010002 	lui	at,0x2
     1fc:	00300821 	addu	at,at,s0
     200:	a429ca38 	sh	t1,-13768(at)
     204:	3c010002 	lui	at,0x2
     208:	00300821 	addu	at,at,s0
     20c:	a420ca66 	sh	zero,-13722(at)
     210:	3c010002 	lui	at,0x2
     214:	00300821 	addu	at,at,s0
     218:	240a0013 	li	t2,19
     21c:	a42aca3e 	sh	t2,-13762(at)
     220:	3c010002 	lui	at,0x2
     224:	3c070000 	lui	a3,0x0
     228:	00300821 	addu	at,at,s0
     22c:	240bffff 	li	t3,-1
     230:	3c0c0000 	lui	t4,0x0
     234:	24e70000 	addiu	a3,a3,0
     238:	a42bca60 	sh	t3,-13728(at)
     23c:	258c0000 	addiu	t4,t4,0
     240:	3c050000 	lui	a1,0x0
     244:	24a50000 	addiu	a1,a1,0
     248:	afac0014 	sw	t4,20(sp)
     24c:	afa70010 	sw	a3,16(sp)
     250:	2404483c 	li	a0,18492
     254:	0c000000 	jal	0 <func_80803D40>
     258:	24060004 	li	a2,4
     25c:	100000a6 	b	4f8 <func_80803ED8+0x360>
     260:	8fbf0024 	lw	ra,36(sp)
     264:	11a00044 	beqz	t5,378 <func_80803ED8+0x1e0>
     268:	00037040 	sll	t6,v1,0x1
     26c:	3c0f0000 	lui	t7,0x0
     270:	01ee7821 	addu	t7,t7,t6
     274:	95ef0000 	lhu	t7,0(t7)
     278:	8e1801e0 	lw	t8,480(s0)
     27c:	2404005a 	li	a0,90
     280:	3c070000 	lui	a3,0x0
     284:	01f81021 	addu	v0,t7,t8
     288:	9059001c 	lbu	t9,28(v0)
     28c:	24e70000 	addiu	a3,a3,0
     290:	240f0008 	li	t7,8
     294:	10990016 	beq	a0,t9,2f0 <func_80803ED8+0x158>
     298:	3c050000 	lui	a1,0x0
     29c:	904a001d 	lbu	t2,29(v0)
     2a0:	24010045 	li	at,69
     2a4:	51410013 	beql	t2,at,2f4 <func_80803ED8+0x15c>
     2a8:	3c010002 	lui	at,0x2
     2ac:	904b001e 	lbu	t3,30(v0)
     2b0:	2401004c 	li	at,76
     2b4:	5161000f 	beql	t3,at,2f4 <func_80803ED8+0x15c>
     2b8:	3c010002 	lui	at,0x2
     2bc:	904c001f 	lbu	t4,31(v0)
     2c0:	24010044 	li	at,68
     2c4:	5181000b 	beql	t4,at,2f4 <func_80803ED8+0x15c>
     2c8:	3c010002 	lui	at,0x2
     2cc:	904d0020 	lbu	t5,32(v0)
     2d0:	24010041 	li	at,65
     2d4:	51a10007 	beql	t5,at,2f4 <func_80803ED8+0x15c>
     2d8:	3c010002 	lui	at,0x2
     2dc:	904e0021 	lbu	t6,33(v0)
     2e0:	3c0b0000 	lui	t3,0x0
     2e4:	256b0000 	addiu	t3,t3,0
     2e8:	148e0019 	bne	a0,t6,350 <func_80803ED8+0x1b8>
     2ec:	24060004 	li	a2,4
     2f0:	3c010002 	lui	at,0x2
     2f4:	00300821 	addu	at,at,s0
     2f8:	a42fca50 	sh	t7,-13744(at)
     2fc:	85184a38 	lh	t8,19000(t0)
     300:	3c010002 	lui	at,0x2
     304:	00300821 	addu	at,at,s0
     308:	a438ca46 	sh	t8,-13754(at)
     30c:	3c010002 	lui	at,0x2
     310:	00300821 	addu	at,at,s0
     314:	24190005 	li	t9,5
     318:	a439ca3e 	sh	t9,-13762(at)
     31c:	3c010002 	lui	at,0x2
     320:	00300821 	addu	at,at,s0
     324:	3c0a0000 	lui	t2,0x0
     328:	a429ca66 	sh	t1,-13722(at)
     32c:	254a0000 	addiu	t2,t2,0
     330:	afaa0014 	sw	t2,20(sp)
     334:	afa70010 	sw	a3,16(sp)
     338:	2404483b 	li	a0,18491
     33c:	24a50000 	addiu	a1,a1,0
     340:	0c000000 	jal	0 <func_80803D40>
     344:	24060004 	li	a2,4
     348:	1000006b 	b	4f8 <func_80803ED8+0x360>
     34c:	8fbf0024 	lw	ra,36(sp)
     350:	3c070000 	lui	a3,0x0
     354:	24e70000 	addiu	a3,a3,0
     358:	3c050000 	lui	a1,0x0
     35c:	24a50000 	addiu	a1,a1,0
     360:	afa70010 	sw	a3,16(sp)
     364:	2404483d 	li	a0,18493
     368:	0c000000 	jal	0 <func_80803D40>
     36c:	afab0014 	sw	t3,20(sp)
     370:	10000061 	b	4f8 <func_80803ED8+0x360>
     374:	8fbf0024 	lw	ra,36(sp)
     378:	85024abc 	lh	v0,19132(t0)
     37c:	3c070000 	lui	a3,0x0
     380:	24e70000 	addiu	a3,a3,0
     384:	04400003 	bltz	v0,394 <func_80803ED8+0x1fc>
     388:	00022023 	negu	a0,v0
     38c:	10000001 	b	394 <func_80803ED8+0x1fc>
     390:	00402025 	move	a0,v0
     394:	2881001e 	slti	at,a0,30
     398:	14200029 	bnez	at,440 <func_80803ED8+0x2a8>
     39c:	24044839 	li	a0,18489
     3a0:	3c0c0000 	lui	t4,0x0
     3a4:	258c0000 	addiu	t4,t4,0
     3a8:	3c050000 	lui	a1,0x0
     3ac:	24a50000 	addiu	a1,a1,0
     3b0:	afac0014 	sw	t4,20(sp)
     3b4:	24060004 	li	a2,4
     3b8:	afa70010 	sw	a3,16(sp)
     3bc:	0c000000 	jal	0 <func_80803D40>
     3c0:	afa8002c 	sw	t0,44(sp)
     3c4:	8fa8002c 	lw	t0,44(sp)
     3c8:	24090003 	li	t1,3
     3cc:	850d4abc 	lh	t5,19132(t0)
     3d0:	29a1001e 	slti	at,t5,30
     3d4:	5420000f 	bnezl	at,414 <func_80803ED8+0x27c>
     3d8:	85184a38 	lh	t8,19000(t0)
     3dc:	850e4a38 	lh	t6,19000(t0)
     3e0:	3c010002 	lui	at,0x2
     3e4:	00300821 	addu	at,at,s0
     3e8:	25cfffff 	addiu	t7,t6,-1
     3ec:	a42fca38 	sh	t7,-13768(at)
     3f0:	85034a38 	lh	v1,19000(t0)
     3f4:	3c010002 	lui	at,0x2
     3f8:	00300821 	addu	at,at,s0
     3fc:	04610010 	bgez	v1,440 <func_80803ED8+0x2a8>
     400:	00000000 	nop
     404:	a429ca38 	sh	t1,-13768(at)
     408:	1000000d 	b	440 <func_80803ED8+0x2a8>
     40c:	85034a38 	lh	v1,19000(t0)
     410:	85184a38 	lh	t8,19000(t0)
     414:	3c010002 	lui	at,0x2
     418:	00300821 	addu	at,at,s0
     41c:	27190001 	addiu	t9,t8,1
     420:	a439ca38 	sh	t9,-13768(at)
     424:	85034a38 	lh	v1,19000(t0)
     428:	28610004 	slti	at,v1,4
     42c:	14200004 	bnez	at,440 <func_80803ED8+0x2a8>
     430:	3c010002 	lui	at,0x2
     434:	00300821 	addu	at,at,s0
     438:	a420ca38 	sh	zero,-13768(at)
     43c:	85034a38 	lh	v1,19000(t0)
     440:	1123002c 	beq	t1,v1,4f4 <func_80803ED8+0x35c>
     444:	00035040 	sll	t2,v1,0x1
     448:	3c0b0000 	lui	t3,0x0
     44c:	016a5821 	addu	t3,t3,t2
     450:	956b0000 	lhu	t3,0(t3)
     454:	8e0c01e0 	lw	t4,480(s0)
     458:	2404005a 	li	a0,90
     45c:	016c1021 	addu	v0,t3,t4
     460:	904d001c 	lbu	t5,28(v0)
     464:	508d0020 	beql	a0,t5,4e8 <func_80803ED8+0x350>
     468:	3c010002 	lui	at,0x2
     46c:	904e001d 	lbu	t6,29(v0)
     470:	24010045 	li	at,69
     474:	51c1001c 	beql	t6,at,4e8 <func_80803ED8+0x350>
     478:	3c010002 	lui	at,0x2
     47c:	904f001e 	lbu	t7,30(v0)
     480:	2401004c 	li	at,76
     484:	51e10018 	beql	t7,at,4e8 <func_80803ED8+0x350>
     488:	3c010002 	lui	at,0x2
     48c:	9058001f 	lbu	t8,31(v0)
     490:	24010044 	li	at,68
     494:	53010014 	beql	t8,at,4e8 <func_80803ED8+0x350>
     498:	3c010002 	lui	at,0x2
     49c:	90590020 	lbu	t9,32(v0)
     4a0:	24010041 	li	at,65
     4a4:	53210010 	beql	t9,at,4e8 <func_80803ED8+0x350>
     4a8:	3c010002 	lui	at,0x2
     4ac:	904a0021 	lbu	t2,33(v0)
     4b0:	3c010002 	lui	at,0x2
     4b4:	00300821 	addu	at,at,s0
     4b8:	108a000a 	beq	a0,t2,4e4 <func_80803ED8+0x34c>
     4bc:	240c00ff 	li	t4,255
     4c0:	a429ca60 	sh	t1,-13728(at)
     4c4:	850b4a38 	lh	t3,19000(t0)
     4c8:	3c010002 	lui	at,0x2
     4cc:	00300821 	addu	at,at,s0
     4d0:	a42bca62 	sh	t3,-13726(at)
     4d4:	3c010002 	lui	at,0x2
     4d8:	00300821 	addu	at,at,s0
     4dc:	10000005 	b	4f4 <func_80803ED8+0x35c>
     4e0:	a42ccaa0 	sh	t4,-13664(at)
     4e4:	3c010002 	lui	at,0x2
     4e8:	00300821 	addu	at,at,s0
     4ec:	240dffff 	li	t5,-1
     4f0:	a42dca60 	sh	t5,-13728(at)
     4f4:	8fbf0024 	lw	ra,36(sp)
     4f8:	8fb00020 	lw	s0,32(sp)
     4fc:	27bd0040 	addiu	sp,sp,64
     500:	03e00008 	jr	ra
     504:	00000000 	nop

00000508 <func_80804248>:
     508:	3c010001 	lui	at,0x1
     50c:	34218000 	ori	at,at,0x8000
     510:	3c0b0000 	lui	t3,0x0
     514:	256b0000 	addiu	t3,t3,0
     518:	00814021 	addu	t0,a0,at
     51c:	00205021 	move	t2,at
     520:	00001025 	move	v0,zero
     524:	850f4a38 	lh	t7,19000(t0)
     528:	00021840 	sll	v1,v0,0x1
     52c:	00837021 	addu	t6,a0,v1
     530:	000fc080 	sll	t8,t7,0x2
     534:	030fc023 	subu	t8,t8,t7
     538:	0018c040 	sll	t8,t8,0x1
     53c:	0178c821 	addu	t9,t3,t8
     540:	03236021 	addu	t4,t9,v1
     544:	01ca3021 	addu	a2,t6,t2
     548:	84c74a52 	lh	a3,19026(a2)
     54c:	85890000 	lh	t1,0(t4)
     550:	24420001 	addiu	v0,v0,1
     554:	00021400 	sll	v0,v0,0x10
     558:	00e92823 	subu	a1,a3,t1
     55c:	04a00003 	bltz	a1,56c <func_80804248+0x64>
     560:	00021403 	sra	v0,v0,0x10
     564:	10000002 	b	570 <func_80804248+0x68>
     568:	00a01825 	move	v1,a1
     56c:	00051823 	negu	v1,a1
     570:	850d4a50 	lh	t5,19024(t0)
     574:	006d001a 	div	zero,v1,t5
     578:	15a00002 	bnez	t5,584 <func_80804248+0x7c>
     57c:	00000000 	nop
     580:	0007000d 	break	0x7
     584:	2401ffff 	li	at,-1
     588:	15a10004 	bne	t5,at,59c <func_80804248+0x94>
     58c:	3c018000 	lui	at,0x8000
     590:	14610002 	bne	v1,at,59c <func_80804248+0x94>
     594:	00000000 	nop
     598:	0006000d 	break	0x6
     59c:	00002812 	mflo	a1
     5a0:	00052c00 	sll	a1,a1,0x10
     5a4:	0127082a 	slt	at,t1,a3
     5a8:	14200004 	bnez	at,5bc <func_80804248+0xb4>
     5ac:	00052c03 	sra	a1,a1,0x10
     5b0:	00e57021 	addu	t6,a3,a1
     5b4:	10000003 	b	5c4 <func_80804248+0xbc>
     5b8:	a4ce4a52 	sh	t6,19026(a2)
     5bc:	00e57823 	subu	t7,a3,a1
     5c0:	a4cf4a52 	sh	t7,19026(a2)
     5c4:	28410003 	slti	at,v0,3
     5c8:	5420ffd7 	bnezl	at,528 <func_80804248+0x20>
     5cc:	850f4a38 	lh	t7,19000(t0)
     5d0:	85184a6e 	lh	t8,19054(t0)
     5d4:	850e4a38 	lh	t6,19000(t0)
     5d8:	850c4a70 	lh	t4,19056(t0)
     5dc:	2719ffe1 	addiu	t9,t8,-31
     5e0:	000e7840 	sll	t7,t6,0x1
     5e4:	008fc021 	addu	t8,a0,t7
     5e8:	258d001f 	addiu	t5,t4,31
     5ec:	a5194a6e 	sh	t9,19054(t0)
     5f0:	a50d4a70 	sh	t5,19056(t0)
     5f4:	030a1021 	addu	v0,t8,t2
     5f8:	84594a7a 	lh	t9,19066(v0)
     5fc:	3c010002 	lui	at,0x2
     600:	00240821 	addu	at,at,a0
     604:	272cffe7 	addiu	t4,t9,-25
     608:	a44c4a7a 	sh	t4,19066(v0)
     60c:	850d4a50 	lh	t5,19024(t0)
     610:	25aeffff 	addiu	t6,t5,-1
     614:	a42eca50 	sh	t6,-13744(at)
     618:	850f4a50 	lh	t7,19024(t0)
     61c:	15e0001c 	bnez	t7,690 <func_80804248+0x188>
     620:	00000000 	nop
     624:	85024a38 	lh	v0,19000(t0)
     628:	3c010002 	lui	at,0x2
     62c:	00240821 	addu	at,at,a0
     630:	0002c080 	sll	t8,v0,0x2
     634:	0302c023 	subu	t8,t8,v0
     638:	0018c040 	sll	t8,t8,0x1
     63c:	0178c821 	addu	t9,t3,t8
     640:	00021840 	sll	v1,v0,0x1
     644:	03236021 	addu	t4,t9,v1
     648:	858d0000 	lh	t5,0(t4)
     64c:	00837021 	addu	t6,a0,v1
     650:	01ca7821 	addu	t7,t6,t2
     654:	a5ed4a52 	sh	t5,19026(t7)
     658:	85184a66 	lh	t8,19046(t0)
     65c:	241900ff 	li	t9,255
     660:	240c0008 	li	t4,8
     664:	a438ca64 	sh	t8,-13724(at)
     668:	3c010002 	lui	at,0x2
     66c:	a5194a6e 	sh	t9,19054(t0)
     670:	a5004a70 	sh	zero,19056(t0)
     674:	00240821 	addu	at,at,a0
     678:	a42cca50 	sh	t4,-13744(at)
     67c:	850e4a3e 	lh	t6,19006(t0)
     680:	3c010002 	lui	at,0x2
     684:	00240821 	addu	at,at,a0
     688:	25cd0001 	addiu	t5,t6,1
     68c:	a42dca3e 	sh	t5,-13762(at)
     690:	03e00008 	jr	ra
     694:	00000000 	nop

00000698 <func_808043D8>:
     698:	3c050001 	lui	a1,0x1
     69c:	34a58000 	ori	a1,a1,0x8000
     6a0:	00851021 	addu	v0,a0,a1
     6a4:	844e4a38 	lh	t6,19000(v0)
     6a8:	3c010002 	lui	at,0x2
     6ac:	00240821 	addu	at,at,a0
     6b0:	000e7840 	sll	t7,t6,0x1
     6b4:	008fc021 	addu	t8,a0,t7
     6b8:	03051821 	addu	v1,t8,a1
     6bc:	84794a7a 	lh	t9,19066(v1)
     6c0:	2728ffe7 	addiu	t0,t9,-25
     6c4:	a4684a7a 	sh	t0,19066(v1)
     6c8:	84494a38 	lh	t1,19000(v0)
     6cc:	00095040 	sll	t2,t1,0x1
     6d0:	008a5821 	addu	t3,a0,t2
     6d4:	01651821 	addu	v1,t3,a1
     6d8:	846c4a8c 	lh	t4,19084(v1)
     6dc:	240b00c8 	li	t3,200
     6e0:	258d0019 	addiu	t5,t4,25
     6e4:	a46d4a8c 	sh	t5,19084(v1)
     6e8:	844e4a50 	lh	t6,19024(v0)
     6ec:	25cfffff 	addiu	t7,t6,-1
     6f0:	a42fca50 	sh	t7,-13744(at)
     6f4:	84584a50 	lh	t8,19024(v0)
     6f8:	3c010002 	lui	at,0x2
     6fc:	17000016 	bnez	t8,758 <func_808043D8+0xc0>
     700:	00000000 	nop
     704:	84594a38 	lh	t9,19000(v0)
     708:	24180003 	li	t8,3
     70c:	00240821 	addu	at,at,a0
     710:	00194040 	sll	t0,t9,0x1
     714:	00884821 	addu	t1,a0,t0
     718:	01255021 	addu	t2,t1,a1
     71c:	a5404a7a 	sh	zero,19066(t2)
     720:	844c4a38 	lh	t4,19000(v0)
     724:	24190008 	li	t9,8
     728:	24080007 	li	t0,7
     72c:	000c6840 	sll	t5,t4,0x1
     730:	008d7021 	addu	t6,a0,t5
     734:	01c57821 	addu	t7,t6,a1
     738:	a5eb4a8c 	sh	t3,19084(t7)
     73c:	a438ca38 	sh	t8,-13768(at)
     740:	3c010002 	lui	at,0x2
     744:	00240821 	addu	at,at,a0
     748:	a439ca50 	sh	t9,-13744(at)
     74c:	3c010002 	lui	at,0x2
     750:	00240821 	addu	at,at,a0
     754:	a428ca3e 	sh	t0,-13762(at)
     758:	03e00008 	jr	ra
     75c:	00000000 	nop

00000760 <func_808044A0>:
     760:	27bdffc0 	addiu	sp,sp,-64
     764:	3c010001 	lui	at,0x1
     768:	34218000 	ori	at,at,0x8000
     76c:	afbf0024 	sw	ra,36(sp)
     770:	afb00020 	sw	s0,32(sp)
     774:	00814021 	addu	t0,a0,at
     778:	85034a38 	lh	v1,19000(t0)
     77c:	24090003 	li	t1,3
     780:	00808025 	move	s0,a0
     784:	55230006 	bnel	t1,v1,7a0 <func_808044A0+0x40>
     788:	96020020 	lhu	v0,32(s0)
     78c:	948e0020 	lhu	t6,32(a0)
     790:	31cf9000 	andi	t7,t6,0x9000
     794:	55e00007 	bnezl	t7,7b4 <func_808044A0+0x54>
     798:	85194a46 	lh	t9,19014(t0)
     79c:	96020020 	lhu	v0,32(s0)
     7a0:	2401bfff 	li	at,-16385
     7a4:	0041c027 	nor	t8,v0,at
     7a8:	1700001d 	bnez	t8,820 <func_808044A0+0xc0>
     7ac:	304c9000 	andi	t4,v0,0x9000
     7b0:	85194a46 	lh	t9,19014(t0)
     7b4:	3c010002 	lui	at,0x2
     7b8:	00300821 	addu	at,at,s0
     7bc:	a439ca38 	sh	t9,-13768(at)
     7c0:	3c010002 	lui	at,0x2
     7c4:	00300821 	addu	at,at,s0
     7c8:	240a0002 	li	t2,2
     7cc:	a42aca66 	sh	t2,-13722(at)
     7d0:	3c010002 	lui	at,0x2
     7d4:	24020008 	li	v0,8
     7d8:	00300821 	addu	at,at,s0
     7dc:	a422ca50 	sh	v0,-13744(at)
     7e0:	3c010002 	lui	at,0x2
     7e4:	3c070000 	lui	a3,0x0
     7e8:	00300821 	addu	at,at,s0
     7ec:	3c0b0000 	lui	t3,0x0
     7f0:	24e70000 	addiu	a3,a3,0
     7f4:	a422ca3e 	sh	v0,-13762(at)
     7f8:	256b0000 	addiu	t3,t3,0
     7fc:	3c050000 	lui	a1,0x0
     800:	24a50000 	addiu	a1,a1,0
     804:	afab0014 	sw	t3,20(sp)
     808:	afa70010 	sw	a3,16(sp)
     80c:	2404483c 	li	a0,18492
     810:	0c000000 	jal	0 <func_80803D40>
     814:	24060004 	li	a2,4
     818:	100000bb 	b	b08 <func_808044A0+0x3a8>
     81c:	8fbf0024 	lw	ra,36(sp)
     820:	11800044 	beqz	t4,934 <func_808044A0+0x1d4>
     824:	00036840 	sll	t5,v1,0x1
     828:	3c0e0000 	lui	t6,0x0
     82c:	01cd7021 	addu	t6,t6,t5
     830:	95ce0000 	lhu	t6,0(t6)
     834:	8e0f01e0 	lw	t7,480(s0)
     838:	2404005a 	li	a0,90
     83c:	3c070000 	lui	a3,0x0
     840:	01cf1021 	addu	v0,t6,t7
     844:	9058001c 	lbu	t8,28(v0)
     848:	3c050000 	lui	a1,0x0
     84c:	24e70000 	addiu	a3,a3,0
     850:	1098002f 	beq	a0,t8,910 <func_808044A0+0x1b0>
     854:	24a50000 	addiu	a1,a1,0
     858:	9059001d 	lbu	t9,29(v0)
     85c:	24010045 	li	at,69
     860:	1321002b 	beq	t9,at,910 <func_808044A0+0x1b0>
     864:	00000000 	nop
     868:	904a001e 	lbu	t2,30(v0)
     86c:	2401004c 	li	at,76
     870:	11410027 	beq	t2,at,910 <func_808044A0+0x1b0>
     874:	00000000 	nop
     878:	904b001f 	lbu	t3,31(v0)
     87c:	24010044 	li	at,68
     880:	11610023 	beq	t3,at,910 <func_808044A0+0x1b0>
     884:	00000000 	nop
     888:	904c0020 	lbu	t4,32(v0)
     88c:	24010041 	li	at,65
     890:	1181001f 	beq	t4,at,910 <func_808044A0+0x1b0>
     894:	00000000 	nop
     898:	904d0021 	lbu	t5,33(v0)
     89c:	3c010002 	lui	at,0x2
     8a0:	24020008 	li	v0,8
     8a4:	108d001a 	beq	a0,t5,910 <func_808044A0+0x1b0>
     8a8:	00300821 	addu	at,at,s0
     8ac:	a423ca5e 	sh	v1,-13730(at)
     8b0:	3c010002 	lui	at,0x2
     8b4:	00300821 	addu	at,at,s0
     8b8:	240e0004 	li	t6,4
     8bc:	a42eca66 	sh	t6,-13722(at)
     8c0:	3c010002 	lui	at,0x2
     8c4:	00300821 	addu	at,at,s0
     8c8:	a422ca50 	sh	v0,-13744(at)
     8cc:	3c010002 	lui	at,0x2
     8d0:	3c070000 	lui	a3,0x0
     8d4:	00300821 	addu	at,at,s0
     8d8:	240f000a 	li	t7,10
     8dc:	3c180000 	lui	t8,0x0
     8e0:	24e70000 	addiu	a3,a3,0
     8e4:	a42fca3e 	sh	t7,-13762(at)
     8e8:	27180000 	addiu	t8,t8,0
     8ec:	3c050000 	lui	a1,0x0
     8f0:	24a50000 	addiu	a1,a1,0
     8f4:	afb80014 	sw	t8,20(sp)
     8f8:	afa70010 	sw	a3,16(sp)
     8fc:	2404483b 	li	a0,18491
     900:	0c000000 	jal	0 <func_80803D40>
     904:	24060004 	li	a2,4
     908:	1000007f 	b	b08 <func_808044A0+0x3a8>
     90c:	8fbf0024 	lw	ra,36(sp)
     910:	3c190000 	lui	t9,0x0
     914:	27390000 	addiu	t9,t9,0
     918:	afb90014 	sw	t9,20(sp)
     91c:	2404483d 	li	a0,18493
     920:	24060004 	li	a2,4
     924:	0c000000 	jal	0 <func_80803D40>
     928:	afa70010 	sw	a3,16(sp)
     92c:	10000076 	b	b08 <func_808044A0+0x3a8>
     930:	8fbf0024 	lw	ra,36(sp)
     934:	85024abc 	lh	v0,19132(t0)
     938:	3c070000 	lui	a3,0x0
     93c:	24e70000 	addiu	a3,a3,0
     940:	04400003 	bltz	v0,950 <func_808044A0+0x1f0>
     944:	00022023 	negu	a0,v0
     948:	10000001 	b	950 <func_808044A0+0x1f0>
     94c:	00402025 	move	a0,v0
     950:	2881001e 	slti	at,a0,30
     954:	1420003d 	bnez	at,a4c <func_808044A0+0x2ec>
     958:	24044839 	li	a0,18489
     95c:	3c0a0000 	lui	t2,0x0
     960:	254a0000 	addiu	t2,t2,0
     964:	3c050000 	lui	a1,0x0
     968:	24a50000 	addiu	a1,a1,0
     96c:	afaa0014 	sw	t2,20(sp)
     970:	24060004 	li	a2,4
     974:	afa70010 	sw	a3,16(sp)
     978:	0c000000 	jal	0 <func_80803D40>
     97c:	afa8002c 	sw	t0,44(sp)
     980:	8fa8002c 	lw	t0,44(sp)
     984:	24090003 	li	t1,3
     988:	850b4abc 	lh	t3,19132(t0)
     98c:	2961001e 	slti	at,t3,30
     990:	5420001c 	bnezl	at,a04 <func_808044A0+0x2a4>
     994:	85184a38 	lh	t8,19000(t0)
     998:	850c4a38 	lh	t4,19000(t0)
     99c:	3c010002 	lui	at,0x2
     9a0:	00300821 	addu	at,at,s0
     9a4:	258dffff 	addiu	t5,t4,-1
     9a8:	a42dca38 	sh	t5,-13768(at)
     9ac:	850e4a46 	lh	t6,19014(t0)
     9b0:	85034a38 	lh	v1,19000(t0)
     9b4:	3c010002 	lui	at,0x2
     9b8:	00300821 	addu	at,at,s0
     9bc:	15c3000a 	bne	t6,v1,9e8 <func_808044A0+0x288>
     9c0:	246fffff 	addiu	t7,v1,-1
     9c4:	a42fca38 	sh	t7,-13768(at)
     9c8:	85034a38 	lh	v1,19000(t0)
     9cc:	3c010002 	lui	at,0x2
     9d0:	00300821 	addu	at,at,s0
     9d4:	0461001d 	bgez	v1,a4c <func_808044A0+0x2ec>
     9d8:	00000000 	nop
     9dc:	a429ca38 	sh	t1,-13768(at)
     9e0:	1000001a 	b	a4c <func_808044A0+0x2ec>
     9e4:	85034a38 	lh	v1,19000(t0)
     9e8:	04610018 	bgez	v1,a4c <func_808044A0+0x2ec>
     9ec:	3c010002 	lui	at,0x2
     9f0:	00300821 	addu	at,at,s0
     9f4:	a429ca38 	sh	t1,-13768(at)
     9f8:	10000014 	b	a4c <func_808044A0+0x2ec>
     9fc:	85034a38 	lh	v1,19000(t0)
     a00:	85184a38 	lh	t8,19000(t0)
     a04:	3c010002 	lui	at,0x2
     a08:	00300821 	addu	at,at,s0
     a0c:	27190001 	addiu	t9,t8,1
     a10:	a439ca38 	sh	t9,-13768(at)
     a14:	85034a38 	lh	v1,19000(t0)
     a18:	28610004 	slti	at,v1,4
     a1c:	14200004 	bnez	at,a30 <func_808044A0+0x2d0>
     a20:	3c010002 	lui	at,0x2
     a24:	00300821 	addu	at,at,s0
     a28:	a420ca38 	sh	zero,-13768(at)
     a2c:	85034a38 	lh	v1,19000(t0)
     a30:	850a4a46 	lh	t2,19014(t0)
     a34:	3c010002 	lui	at,0x2
     a38:	00300821 	addu	at,at,s0
     a3c:	15430003 	bne	t2,v1,a4c <func_808044A0+0x2ec>
     a40:	246b0001 	addiu	t3,v1,1
     a44:	a42bca38 	sh	t3,-13768(at)
     a48:	85034a38 	lh	v1,19000(t0)
     a4c:	1123002d 	beq	t1,v1,b04 <func_808044A0+0x3a4>
     a50:	00036040 	sll	t4,v1,0x1
     a54:	3c0d0000 	lui	t5,0x0
     a58:	01ac6821 	addu	t5,t5,t4
     a5c:	95ad0000 	lhu	t5,0(t5)
     a60:	8e0e01e0 	lw	t6,480(s0)
     a64:	2404005a 	li	a0,90
     a68:	01ae1021 	addu	v0,t5,t6
     a6c:	904f001c 	lbu	t7,28(v0)
     a70:	240d0004 	li	t5,4
     a74:	508f0017 	beql	a0,t7,ad4 <func_808044A0+0x374>
     a78:	3c010002 	lui	at,0x2
     a7c:	9058001d 	lbu	t8,29(v0)
     a80:	24010045 	li	at,69
     a84:	53010013 	beql	t8,at,ad4 <func_808044A0+0x374>
     a88:	3c010002 	lui	at,0x2
     a8c:	9059001e 	lbu	t9,30(v0)
     a90:	2401004c 	li	at,76
     a94:	5321000f 	beql	t9,at,ad4 <func_808044A0+0x374>
     a98:	3c010002 	lui	at,0x2
     a9c:	904a001f 	lbu	t2,31(v0)
     aa0:	24010044 	li	at,68
     aa4:	5141000b 	beql	t2,at,ad4 <func_808044A0+0x374>
     aa8:	3c010002 	lui	at,0x2
     aac:	904b0020 	lbu	t3,32(v0)
     ab0:	24010041 	li	at,65
     ab4:	51610007 	beql	t3,at,ad4 <func_808044A0+0x374>
     ab8:	3c010002 	lui	at,0x2
     abc:	904c0021 	lbu	t4,33(v0)
     ac0:	3c010002 	lui	at,0x2
     ac4:	00300821 	addu	at,at,s0
     ac8:	148c000d 	bne	a0,t4,b00 <func_808044A0+0x3a0>
     acc:	2418ffff 	li	t8,-1
     ad0:	3c010002 	lui	at,0x2
     ad4:	00300821 	addu	at,at,s0
     ad8:	a42dca60 	sh	t5,-13728(at)
     adc:	850e4a38 	lh	t6,19000(t0)
     ae0:	3c010002 	lui	at,0x2
     ae4:	00300821 	addu	at,at,s0
     ae8:	a42eca62 	sh	t6,-13726(at)
     aec:	3c010002 	lui	at,0x2
     af0:	00300821 	addu	at,at,s0
     af4:	240f00ff 	li	t7,255
     af8:	10000002 	b	b04 <func_808044A0+0x3a4>
     afc:	a42fcaa0 	sh	t7,-13664(at)
     b00:	a438ca60 	sh	t8,-13728(at)
     b04:	8fbf0024 	lw	ra,36(sp)
     b08:	8fb00020 	lw	s0,32(sp)
     b0c:	27bd0040 	addiu	sp,sp,64
     b10:	03e00008 	jr	ra
     b14:	00000000 	nop

00000b18 <func_80804858>:
     b18:	3c050001 	lui	a1,0x1
     b1c:	34a58000 	ori	a1,a1,0x8000
     b20:	00851021 	addu	v0,a0,a1
     b24:	844e4a38 	lh	t6,19000(v0)
     b28:	3c010002 	lui	at,0x2
     b2c:	00240821 	addu	at,at,a0
     b30:	000e7840 	sll	t7,t6,0x1
     b34:	008fc021 	addu	t8,a0,t7
     b38:	03051821 	addu	v1,t8,a1
     b3c:	84794a8c 	lh	t9,19084(v1)
     b40:	2728ffe7 	addiu	t0,t9,-25
     b44:	a4684a8c 	sh	t0,19084(v1)
     b48:	84494a38 	lh	t1,19000(v0)
     b4c:	24190002 	li	t9,2
     b50:	00095040 	sll	t2,t1,0x1
     b54:	008a5821 	addu	t3,a0,t2
     b58:	01651821 	addu	v1,t3,a1
     b5c:	846c4a7a 	lh	t4,19066(v1)
     b60:	258d0019 	addiu	t5,t4,25
     b64:	a46d4a7a 	sh	t5,19066(v1)
     b68:	844e4a50 	lh	t6,19024(v0)
     b6c:	25cfffff 	addiu	t7,t6,-1
     b70:	a42fca50 	sh	t7,-13744(at)
     b74:	84584a50 	lh	t8,19024(v0)
     b78:	3c010002 	lui	at,0x2
     b7c:	00240821 	addu	at,at,a0
     b80:	17000016 	bnez	t8,bdc <func_80804858+0xc4>
     b84:	00000000 	nop
     b88:	a439ca66 	sh	t9,-13722(at)
     b8c:	84494a38 	lh	t1,19000(v0)
     b90:	240800c8 	li	t0,200
     b94:	3c010002 	lui	at,0x2
     b98:	00095040 	sll	t2,t1,0x1
     b9c:	008a5821 	addu	t3,a0,t2
     ba0:	01656021 	addu	t4,t3,a1
     ba4:	a5884a7a 	sh	t0,19066(t4)
     ba8:	844d4a38 	lh	t5,19000(v0)
     bac:	00240821 	addu	at,at,a0
     bb0:	24190008 	li	t9,8
     bb4:	000d7040 	sll	t6,t5,0x1
     bb8:	008e7821 	addu	t7,a0,t6
     bbc:	01e5c021 	addu	t8,t7,a1
     bc0:	a7004a8c 	sh	zero,19084(t8)
     bc4:	a439ca50 	sh	t9,-13744(at)
     bc8:	84494a3e 	lh	t1,19006(v0)
     bcc:	3c010002 	lui	at,0x2
     bd0:	00240821 	addu	at,at,a0
     bd4:	252a0001 	addiu	t2,t1,1
     bd8:	a42aca3e 	sh	t2,-13762(at)
     bdc:	03e00008 	jr	ra
     be0:	00000000 	nop

00000be4 <func_80804924>:
     be4:	3c010001 	lui	at,0x1
     be8:	34218000 	ori	at,at,0x8000
     bec:	3c0b0000 	lui	t3,0x0
     bf0:	256b0000 	addiu	t3,t3,0
     bf4:	00814821 	addu	t1,a0,at
     bf8:	00205021 	move	t2,at
     bfc:	00001025 	move	v0,zero
     c00:	00021840 	sll	v1,v0,0x1
     c04:	00837021 	addu	t6,a0,v1
     c08:	01ca3821 	addu	a3,t6,t2
     c0c:	01637821 	addu	t7,t3,v1
     c10:	85e50000 	lh	a1,0(t7)
     c14:	84e84a52 	lh	t0,19026(a3)
     c18:	24420001 	addiu	v0,v0,1
     c1c:	00021400 	sll	v0,v0,0x10
     c20:	01053023 	subu	a2,t0,a1
     c24:	04c00003 	bltz	a2,c34 <func_80804924+0x50>
     c28:	00021403 	sra	v0,v0,0x10
     c2c:	10000002 	b	c38 <func_80804924+0x54>
     c30:	00c01825 	move	v1,a2
     c34:	00061823 	negu	v1,a2
     c38:	85384a50 	lh	t8,19024(t1)
     c3c:	0078001a 	div	zero,v1,t8
     c40:	17000002 	bnez	t8,c4c <func_80804924+0x68>
     c44:	00000000 	nop
     c48:	0007000d 	break	0x7
     c4c:	2401ffff 	li	at,-1
     c50:	17010004 	bne	t8,at,c64 <func_80804924+0x80>
     c54:	3c018000 	lui	at,0x8000
     c58:	14610002 	bne	v1,at,c64 <func_80804924+0x80>
     c5c:	00000000 	nop
     c60:	0006000d 	break	0x6
     c64:	00003012 	mflo	a2
     c68:	00063400 	sll	a2,a2,0x10
     c6c:	0105082a 	slt	at,t0,a1
     c70:	14200004 	bnez	at,c84 <func_80804924+0xa0>
     c74:	00063403 	sra	a2,a2,0x10
     c78:	0106c823 	subu	t9,t0,a2
     c7c:	10000003 	b	c8c <func_80804924+0xa8>
     c80:	a4f94a52 	sh	t9,19026(a3)
     c84:	01066021 	addu	t4,t0,a2
     c88:	a4ec4a52 	sh	t4,19026(a3)
     c8c:	28410003 	slti	at,v0,3
     c90:	5420ffdc 	bnezl	at,c04 <func_80804924+0x20>
     c94:	00021840 	sll	v1,v0,0x1
     c98:	852d4a6e 	lh	t5,19054(t1)
     c9c:	852f4a70 	lh	t7,19056(t1)
     ca0:	85394a50 	lh	t9,19024(t1)
     ca4:	3c010002 	lui	at,0x2
     ca8:	25aeffe1 	addiu	t6,t5,-31
     cac:	25f8001f 	addiu	t8,t7,31
     cb0:	a52e4a6e 	sh	t6,19054(t1)
     cb4:	a5384a70 	sh	t8,19056(t1)
     cb8:	00240821 	addu	at,at,a0
     cbc:	272cffff 	addiu	t4,t9,-1
     cc0:	a42cca50 	sh	t4,-13744(at)
     cc4:	852d4a50 	lh	t5,19024(t1)
     cc8:	3c010002 	lui	at,0x2
     ccc:	00240821 	addu	at,at,a0
     cd0:	15a0000d 	bnez	t5,d08 <func_80804924+0x124>
     cd4:	240f00ff 	li	t7,255
     cd8:	852e4a66 	lh	t6,19046(t1)
     cdc:	24180003 	li	t8,3
     ce0:	24190004 	li	t9,4
     ce4:	a42eca64 	sh	t6,-13724(at)
     ce8:	3c010002 	lui	at,0x2
     cec:	a52f4a6e 	sh	t7,19054(t1)
     cf0:	a5204a70 	sh	zero,19056(t1)
     cf4:	00240821 	addu	at,at,a0
     cf8:	a438ca38 	sh	t8,-13768(at)
     cfc:	3c010002 	lui	at,0x2
     d00:	00240821 	addu	at,at,a0
     d04:	a439ca3e 	sh	t9,-13762(at)
     d08:	03e00008 	jr	ra
     d0c:	00000000 	nop

00000d10 <func_80804A50>:
     d10:	27bdffe8 	addiu	sp,sp,-24
     d14:	3c0b0001 	lui	t3,0x1
     d18:	356b8000 	ori	t3,t3,0x8000
     d1c:	afb40014 	sw	s4,20(sp)
     d20:	afb30010 	sw	s3,16(sp)
     d24:	afb2000c 	sw	s2,12(sp)
     d28:	afb10008 	sw	s1,8(sp)
     d2c:	afb00004 	sw	s0,4(sp)
     d30:	008b1021 	addu	v0,a0,t3
     d34:	844e4a6e 	lh	t6,19054(v0)
     d38:	84584a70 	lh	t8,19056(v0)
     d3c:	3c140000 	lui	s4,0x0
     d40:	3c0d0000 	lui	t5,0x0
     d44:	25cfffe1 	addiu	t7,t6,-31
     d48:	2719001f 	addiu	t9,t8,31
     d4c:	a44f4a6e 	sh	t7,19054(v0)
     d50:	a4594a70 	sh	t9,19056(v0)
     d54:	25ad0000 	addiu	t5,t5,0
     d58:	26940000 	addiu	s4,s4,0
     d5c:	24100045 	li	s0,69
     d60:	2411004c 	li	s1,76
     d64:	24120044 	li	s2,68
     d68:	24130041 	li	s3,65
     d6c:	00001825 	move	v1,zero
     d70:	240c005a 	li	t4,90
     d74:	84454a5e 	lh	a1,19038(v0)
     d78:	10650027 	beq	v1,a1,e18 <func_80804A50+0x108>
     d7c:	00000000 	nop
     d80:	844e4a46 	lh	t6,19014(v0)
     d84:	106e0024 	beq	v1,t6,e18 <func_80804A50+0x108>
     d88:	00000000 	nop
     d8c:	00032840 	sll	a1,v1,0x1
     d90:	00857821 	addu	t7,a0,a1
     d94:	01eb4821 	addu	t1,t7,t3
     d98:	85384a74 	lh	t8,19060(t1)
     d9c:	01a57021 	addu	t6,t5,a1
     da0:	2719ffe7 	addiu	t9,t8,-25
     da4:	a5394a74 	sh	t9,19060(t1)
     da8:	8c9801e0 	lw	t8,480(a0)
     dac:	95cf0000 	lhu	t7,0(t6)
     db0:	01f83021 	addu	a2,t7,t8
     db4:	90d9001c 	lbu	t9,28(a2)
     db8:	51990011 	beql	t4,t9,e00 <func_80804A50+0xf0>
     dbc:	852f4a86 	lh	t7,19078(t1)
     dc0:	90ce001d 	lbu	t6,29(a2)
     dc4:	520e000e 	beql	s0,t6,e00 <func_80804A50+0xf0>
     dc8:	852f4a86 	lh	t7,19078(t1)
     dcc:	90cf001e 	lbu	t7,30(a2)
     dd0:	522f000b 	beql	s1,t7,e00 <func_80804A50+0xf0>
     dd4:	852f4a86 	lh	t7,19078(t1)
     dd8:	90d8001f 	lbu	t8,31(a2)
     ddc:	52580008 	beql	s2,t8,e00 <func_80804A50+0xf0>
     de0:	852f4a86 	lh	t7,19078(t1)
     de4:	90d90020 	lbu	t9,32(a2)
     de8:	52790005 	beql	s3,t9,e00 <func_80804A50+0xf0>
     dec:	852f4a86 	lh	t7,19078(t1)
     df0:	90ce0021 	lbu	t6,33(a2)
     df4:	558e002b 	bnel	t4,t6,ea4 <func_80804A50+0x194>
     df8:	24630001 	addiu	v1,v1,1
     dfc:	852f4a86 	lh	t7,19078(t1)
     e00:	85254a74 	lh	a1,19060(t1)
     e04:	25f8ffe1 	addiu	t8,t7,-31
     e08:	a5384a86 	sh	t8,19078(t1)
     e0c:	a5254a80 	sh	a1,19072(t1)
     e10:	10000023 	b	ea0 <func_80804A50+0x190>
     e14:	a5254a7a 	sh	a1,19066(t1)
     e18:	14650021 	bne	v1,a1,ea0 <func_80804A50+0x190>
     e1c:	00032840 	sll	a1,v1,0x1
     e20:	0085c821 	addu	t9,a0,a1
     e24:	032b4821 	addu	t1,t9,t3
     e28:	02853021 	addu	a2,s4,a1
     e2c:	84ce0000 	lh	t6,0(a2)
     e30:	852a4a52 	lh	t2,19026(t1)
     e34:	014e4023 	subu	t0,t2,t6
     e38:	05000003 	bltz	t0,e48 <func_80804A50+0x138>
     e3c:	00083823 	negu	a3,t0
     e40:	10000001 	b	e48 <func_80804A50+0x138>
     e44:	01003825 	move	a3,t0
     e48:	844f4a50 	lh	t7,19024(v0)
     e4c:	00ef001a 	div	zero,a3,t7
     e50:	00004012 	mflo	t0
     e54:	00084400 	sll	t0,t0,0x10
     e58:	00084403 	sra	t0,t0,0x10
     e5c:	0148c021 	addu	t8,t2,t0
     e60:	a5384a52 	sh	t8,19026(t1)
     e64:	15e00002 	bnez	t7,e70 <func_80804A50+0x160>
     e68:	00000000 	nop
     e6c:	0007000d 	break	0x7
     e70:	2401ffff 	li	at,-1
     e74:	15e10004 	bne	t7,at,e88 <func_80804A50+0x178>
     e78:	3c018000 	lui	at,0x8000
     e7c:	14e10002 	bne	a3,at,e88 <func_80804A50+0x178>
     e80:	00000000 	nop
     e84:	0006000d 	break	0x6
     e88:	85394a52 	lh	t9,19026(t1)
     e8c:	84c50000 	lh	a1,0(a2)
     e90:	0325082a 	slt	at,t9,a1
     e94:	54200003 	bnezl	at,ea4 <func_80804A50+0x194>
     e98:	24630001 	addiu	v1,v1,1
     e9c:	a5254a52 	sh	a1,19026(t1)
     ea0:	24630001 	addiu	v1,v1,1
     ea4:	00031c00 	sll	v1,v1,0x10
     ea8:	00031c03 	sra	v1,v1,0x10
     eac:	28610003 	slti	at,v1,3
     eb0:	5420ffb1 	bnezl	at,d78 <func_80804A50+0x68>
     eb4:	84454a5e 	lh	a1,19038(v0)
     eb8:	844e4a50 	lh	t6,19024(v0)
     ebc:	3c010002 	lui	at,0x2
     ec0:	00240821 	addu	at,at,a0
     ec4:	25cfffff 	addiu	t7,t6,-1
     ec8:	a42fca50 	sh	t7,-13744(at)
     ecc:	84584a50 	lh	t8,19024(v0)
     ed0:	3c010002 	lui	at,0x2
     ed4:	00240821 	addu	at,at,a0
     ed8:	57000010 	bnezl	t8,f1c <func_80804A50+0x20c>
     edc:	8fb00004 	lw	s0,4(sp)
     ee0:	84594a66 	lh	t9,19046(v0)
     ee4:	240e00ff 	li	t6,255
     ee8:	240f0008 	li	t7,8
     eec:	a439ca64 	sh	t9,-13724(at)
     ef0:	3c010002 	lui	at,0x2
     ef4:	a44e4a6e 	sh	t6,19054(v0)
     ef8:	a4404a70 	sh	zero,19056(v0)
     efc:	00240821 	addu	at,at,a0
     f00:	a42fca50 	sh	t7,-13744(at)
     f04:	84584a3e 	lh	t8,19006(v0)
     f08:	3c010002 	lui	at,0x2
     f0c:	00240821 	addu	at,at,a0
     f10:	27190001 	addiu	t9,t8,1
     f14:	a439ca3e 	sh	t9,-13762(at)
     f18:	8fb00004 	lw	s0,4(sp)
     f1c:	8fb10008 	lw	s1,8(sp)
     f20:	8fb2000c 	lw	s2,12(sp)
     f24:	8fb30010 	lw	s3,16(sp)
     f28:	8fb40014 	lw	s4,20(sp)
     f2c:	03e00008 	jr	ra
     f30:	27bd0018 	addiu	sp,sp,24

00000f34 <func_80804C74>:
     f34:	3c010001 	lui	at,0x1
     f38:	34218000 	ori	at,at,0x8000
     f3c:	00811021 	addu	v0,a0,at
     f40:	844e4a96 	lh	t6,19094(v0)
     f44:	84584a50 	lh	t8,19024(v0)
     f48:	3c010002 	lui	at,0x2
     f4c:	25cf0019 	addiu	t7,t6,25
     f50:	a44f4a96 	sh	t7,19094(v0)
     f54:	00240821 	addu	at,at,a0
     f58:	2719ffff 	addiu	t9,t8,-1
     f5c:	a439ca50 	sh	t9,-13744(at)
     f60:	84484a50 	lh	t0,19024(v0)
     f64:	3c010002 	lui	at,0x2
     f68:	00240821 	addu	at,at,a0
     f6c:	15000006 	bnez	t0,f88 <func_80804C74+0x54>
     f70:	2409000c 	li	t1,12
     f74:	a429ca3e 	sh	t1,-13762(at)
     f78:	3c010002 	lui	at,0x2
     f7c:	00240821 	addu	at,at,a0
     f80:	240a0001 	li	t2,1
     f84:	a42aca38 	sh	t2,-13768(at)
     f88:	03e00008 	jr	ra
     f8c:	00000000 	nop

00000f90 <func_80804CD0>:
     f90:	27bdffc0 	addiu	sp,sp,-64
     f94:	3c080001 	lui	t0,0x1
     f98:	35088000 	ori	t0,t0,0x8000
     f9c:	afbf0024 	sw	ra,36(sp)
     fa0:	afb00020 	sw	s0,32(sp)
     fa4:	00881821 	addu	v1,a0,t0
     fa8:	846e4a38 	lh	t6,19000(v1)
     fac:	00808025 	move	s0,a0
     fb0:	51c00006 	beqzl	t6,fcc <func_80804CD0+0x3c>
     fb4:	96020020 	lhu	v0,32(s0)
     fb8:	948f0020 	lhu	t7,32(a0)
     fbc:	31f89000 	andi	t8,t7,0x9000
     fc0:	57000007 	bnezl	t8,fe0 <func_80804CD0+0x50>
     fc4:	3c010002 	lui	at,0x2
     fc8:	96020020 	lhu	v0,32(s0)
     fcc:	2401bfff 	li	at,-16385
     fd0:	0041c827 	nor	t9,v0,at
     fd4:	1720001a 	bnez	t9,1040 <func_80804CD0+0xb0>
     fd8:	304d9000 	andi	t5,v0,0x9000
     fdc:	3c010002 	lui	at,0x2
     fe0:	00300821 	addu	at,at,s0
     fe4:	24090008 	li	t1,8
     fe8:	a429ca50 	sh	t1,-13744(at)
     fec:	3c010002 	lui	at,0x2
     ff0:	00300821 	addu	at,at,s0
     ff4:	240a0003 	li	t2,3
     ff8:	a42aca66 	sh	t2,-13722(at)
     ffc:	3c010002 	lui	at,0x2
    1000:	3c070000 	lui	a3,0x0
    1004:	00300821 	addu	at,at,s0
    1008:	240b000d 	li	t3,13
    100c:	3c0c0000 	lui	t4,0x0
    1010:	24e70000 	addiu	a3,a3,0
    1014:	a42bca3e 	sh	t3,-13762(at)
    1018:	258c0000 	addiu	t4,t4,0
    101c:	3c050000 	lui	a1,0x0
    1020:	24a50000 	addiu	a1,a1,0
    1024:	afac0014 	sw	t4,20(sp)
    1028:	afa70010 	sw	a3,16(sp)
    102c:	2404483c 	li	a0,18492
    1030:	0c000000 	jal	0 <func_80803D40>
    1034:	24060004 	li	a2,4
    1038:	10000053 	b	1188 <func_80804CD0+0x1f8>
    103c:	8fbf0024 	lw	ra,36(sp)
    1040:	11a00037 	beqz	t5,1120 <func_80804CD0+0x190>
    1044:	3c0e0000 	lui	t6,0x0
    1048:	95ce000c 	lhu	t6,12(t6)
    104c:	02002025 	move	a0,s0
    1050:	260501e0 	addiu	a1,s0,480
    1054:	afa30028 	sw	v1,40(sp)
    1058:	0c000000 	jal	0 <func_80803D40>
    105c:	a7ae0032 	sh	t6,50(sp)
    1060:	97af0032 	lhu	t7,50(sp)
    1064:	8fa30028 	lw	v1,40(sp)
    1068:	3c010000 	lui	at,0x0
    106c:	a42f000c 	sh	t7,12(at)
    1070:	84784a5e 	lh	t8,19038(v1)
    1074:	3c080001 	lui	t0,0x1
    1078:	35088000 	ori	t0,t0,0x8000
    107c:	0018c840 	sll	t9,t8,0x1
    1080:	02194821 	addu	t1,s0,t9
    1084:	01285021 	addu	t2,t1,t0
    1088:	a5404a80 	sh	zero,19072(t2)
    108c:	846b4a5e 	lh	t3,19038(v1)
    1090:	3c010002 	lui	at,0x2
    1094:	00300821 	addu	at,at,s0
    1098:	000b6040 	sll	t4,t3,0x1
    109c:	020c6821 	addu	t5,s0,t4
    10a0:	01a81021 	addu	v0,t5,t0
    10a4:	844e4a80 	lh	t6,19072(v0)
    10a8:	240f0005 	li	t7,5
    10ac:	24180008 	li	t8,8
    10b0:	a44e4a8c 	sh	t6,19084(v0)
    10b4:	a42fca66 	sh	t7,-13722(at)
    10b8:	3c010002 	lui	at,0x2
    10bc:	00300821 	addu	at,at,s0
    10c0:	a438ca50 	sh	t8,-13744(at)
    10c4:	3c010002 	lui	at,0x2
    10c8:	00300821 	addu	at,at,s0
    10cc:	2419000e 	li	t9,14
    10d0:	a439ca3e 	sh	t9,-13762(at)
    10d4:	3c014396 	lui	at,0x4396
    10d8:	44816000 	mtc1	at,$f12
    10dc:	240500b4 	li	a1,180
    10e0:	24060014 	li	a2,20
    10e4:	0c000000 	jal	0 <func_80803D40>
    10e8:	24070064 	li	a3,100
    10ec:	3c070000 	lui	a3,0x0
    10f0:	3c090000 	lui	t1,0x0
    10f4:	24e70000 	addiu	a3,a3,0
    10f8:	25290000 	addiu	t1,t1,0
    10fc:	3c050000 	lui	a1,0x0
    1100:	24a50000 	addiu	a1,a1,0
    1104:	afa90014 	sw	t1,20(sp)
    1108:	afa70010 	sw	a3,16(sp)
    110c:	2404483b 	li	a0,18491
    1110:	0c000000 	jal	0 <func_80803D40>
    1114:	24060004 	li	a2,4
    1118:	1000001b 	b	1188 <func_80804CD0+0x1f8>
    111c:	8fbf0024 	lw	ra,36(sp)
    1120:	84624abc 	lh	v0,19132(v1)
    1124:	3c070000 	lui	a3,0x0
    1128:	24e70000 	addiu	a3,a3,0
    112c:	04400003 	bltz	v0,113c <func_80804CD0+0x1ac>
    1130:	00022023 	negu	a0,v0
    1134:	10000001 	b	113c <func_80804CD0+0x1ac>
    1138:	00402025 	move	a0,v0
    113c:	2881001e 	slti	at,a0,30
    1140:	14200010 	bnez	at,1184 <func_80804CD0+0x1f4>
    1144:	24044839 	li	a0,18489
    1148:	3c0a0000 	lui	t2,0x0
    114c:	254a0000 	addiu	t2,t2,0
    1150:	3c050000 	lui	a1,0x0
    1154:	24a50000 	addiu	a1,a1,0
    1158:	afaa0014 	sw	t2,20(sp)
    115c:	24060004 	li	a2,4
    1160:	afa70010 	sw	a3,16(sp)
    1164:	0c000000 	jal	0 <func_80803D40>
    1168:	afa30028 	sw	v1,40(sp)
    116c:	8fa30028 	lw	v1,40(sp)
    1170:	3c010002 	lui	at,0x2
    1174:	00300821 	addu	at,at,s0
    1178:	846b4a38 	lh	t3,19000(v1)
    117c:	396c0001 	xori	t4,t3,0x1
    1180:	a42cca38 	sh	t4,-13768(at)
    1184:	8fbf0024 	lw	ra,36(sp)
    1188:	8fb00020 	lw	s0,32(sp)
    118c:	27bd0040 	addiu	sp,sp,64
    1190:	03e00008 	jr	ra
    1194:	00000000 	nop

00001198 <func_80804ED8>:
    1198:	27bdffe8 	addiu	sp,sp,-24
    119c:	3c0a0001 	lui	t2,0x1
    11a0:	354a8000 	ori	t2,t2,0x8000
    11a4:	afb30014 	sw	s3,20(sp)
    11a8:	afb20010 	sw	s2,16(sp)
    11ac:	afb1000c 	sw	s1,12(sp)
    11b0:	afb00008 	sw	s0,8(sp)
    11b4:	008a1021 	addu	v0,a0,t2
    11b8:	844e4a6e 	lh	t6,19054(v0)
    11bc:	84584a70 	lh	t8,19056(v0)
    11c0:	3c130000 	lui	s3,0x0
    11c4:	25cfffe1 	addiu	t7,t6,-31
    11c8:	844e4a96 	lh	t6,19094(v0)
    11cc:	a44f4a6e 	sh	t7,19054(v0)
    11d0:	3c0c0000 	lui	t4,0x0
    11d4:	2719001f 	addiu	t9,t8,31
    11d8:	25cfffe7 	addiu	t7,t6,-25
    11dc:	a4594a70 	sh	t9,19056(v0)
    11e0:	a44f4a96 	sh	t7,19094(v0)
    11e4:	258c0000 	addiu	t4,t4,0
    11e8:	26730000 	addiu	s3,s3,0
    11ec:	2410004c 	li	s0,76
    11f0:	24110044 	li	s1,68
    11f4:	24120041 	li	s2,65
    11f8:	00001825 	move	v1,zero
    11fc:	240d0045 	li	t5,69
    1200:	240b005a 	li	t3,90
    1204:	84584a5e 	lh	t8,19038(v0)
    1208:	50780026 	beql	v1,t8,12a4 <func_80804ED8+0x10c>
    120c:	84594a46 	lh	t9,19014(v0)
    1210:	84594a46 	lh	t9,19014(v0)
    1214:	00032840 	sll	a1,v1,0x1
    1218:	00857021 	addu	t6,a0,a1
    121c:	10790020 	beq	v1,t9,12a0 <func_80804ED8+0x108>
    1220:	01ca3821 	addu	a3,t6,t2
    1224:	84ef4a74 	lh	t7,19060(a3)
    1228:	0185c821 	addu	t9,t4,a1
    122c:	25f80019 	addiu	t8,t7,25
    1230:	a4f84a74 	sh	t8,19060(a3)
    1234:	8c8f01e0 	lw	t7,480(a0)
    1238:	972e0000 	lhu	t6,0(t9)
    123c:	01cf3021 	addu	a2,t6,t7
    1240:	90d8001c 	lbu	t8,28(a2)
    1244:	51780011 	beql	t3,t8,128c <func_80804ED8+0xf4>
    1248:	84e54a74 	lh	a1,19060(a3)
    124c:	90d9001d 	lbu	t9,29(a2)
    1250:	51b9000e 	beql	t5,t9,128c <func_80804ED8+0xf4>
    1254:	84e54a74 	lh	a1,19060(a3)
    1258:	90ce001e 	lbu	t6,30(a2)
    125c:	520e000b 	beql	s0,t6,128c <func_80804ED8+0xf4>
    1260:	84e54a74 	lh	a1,19060(a3)
    1264:	90cf001f 	lbu	t7,31(a2)
    1268:	522f0008 	beql	s1,t7,128c <func_80804ED8+0xf4>
    126c:	84e54a74 	lh	a1,19060(a3)
    1270:	90d80020 	lbu	t8,32(a2)
    1274:	52580005 	beql	s2,t8,128c <func_80804ED8+0xf4>
    1278:	84e54a74 	lh	a1,19060(a3)
    127c:	90d90021 	lbu	t9,33(a2)
    1280:	55790008 	bnel	t3,t9,12a4 <func_80804ED8+0x10c>
    1284:	84594a46 	lh	t9,19014(v0)
    1288:	84e54a74 	lh	a1,19060(a3)
    128c:	84ee4a86 	lh	t6,19078(a3)
    1290:	a4e54a80 	sh	a1,19072(a3)
    1294:	25cf001f 	addiu	t7,t6,31
    1298:	a4ef4a86 	sh	t7,19078(a3)
    129c:	a4e54a7a 	sh	a1,19066(a3)
    12a0:	84594a46 	lh	t9,19014(v0)
    12a4:	00032840 	sll	a1,v1,0x1
    12a8:	0085c021 	addu	t8,a0,a1
    12ac:	00197080 	sll	t6,t9,0x2
    12b0:	01d97023 	subu	t6,t6,t9
    12b4:	000e7040 	sll	t6,t6,0x1
    12b8:	026e7821 	addu	t7,s3,t6
    12bc:	030a3821 	addu	a3,t8,t2
    12c0:	01e5c021 	addu	t8,t7,a1
    12c4:	87090000 	lh	t1,0(t8)
    12c8:	84e84a52 	lh	t0,19026(a3)
    12cc:	24630001 	addiu	v1,v1,1
    12d0:	00031c00 	sll	v1,v1,0x10
    12d4:	01093023 	subu	a2,t0,t1
    12d8:	04c00003 	bltz	a2,12e8 <func_80804ED8+0x150>
    12dc:	00031c03 	sra	v1,v1,0x10
    12e0:	10000002 	b	12ec <func_80804ED8+0x154>
    12e4:	00c02825 	move	a1,a2
    12e8:	00062823 	negu	a1,a2
    12ec:	84594a50 	lh	t9,19024(v0)
    12f0:	00b9001a 	div	zero,a1,t9
    12f4:	17200002 	bnez	t9,1300 <func_80804ED8+0x168>
    12f8:	00000000 	nop
    12fc:	0007000d 	break	0x7
    1300:	2401ffff 	li	at,-1
    1304:	17210004 	bne	t9,at,1318 <func_80804ED8+0x180>
    1308:	3c018000 	lui	at,0x8000
    130c:	14a10002 	bne	a1,at,1318 <func_80804ED8+0x180>
    1310:	00000000 	nop
    1314:	0006000d 	break	0x6
    1318:	00003012 	mflo	a2
    131c:	00063400 	sll	a2,a2,0x10
    1320:	0128082a 	slt	at,t1,t0
    1324:	14200004 	bnez	at,1338 <func_80804ED8+0x1a0>
    1328:	00063403 	sra	a2,a2,0x10
    132c:	01067021 	addu	t6,t0,a2
    1330:	10000003 	b	1340 <func_80804ED8+0x1a8>
    1334:	a4ee4a52 	sh	t6,19026(a3)
    1338:	01067823 	subu	t7,t0,a2
    133c:	a4ef4a52 	sh	t7,19026(a3)
    1340:	28610003 	slti	at,v1,3
    1344:	5420ffb0 	bnezl	at,1208 <func_80804ED8+0x70>
    1348:	84584a5e 	lh	t8,19038(v0)
    134c:	84584a50 	lh	t8,19024(v0)
    1350:	3c010002 	lui	at,0x2
    1354:	00240821 	addu	at,at,a0
    1358:	2719ffff 	addiu	t9,t8,-1
    135c:	a439ca50 	sh	t9,-13744(at)
    1360:	844e4a50 	lh	t6,19024(v0)
    1364:	3c010002 	lui	at,0x2
    1368:	00240821 	addu	at,at,a0
    136c:	15c00011 	bnez	t6,13b4 <func_80804ED8+0x21c>
    1370:	241800ff 	li	t8,255
    1374:	844f4a66 	lh	t7,19046(v0)
    1378:	24190008 	li	t9,8
    137c:	240e0003 	li	t6,3
    1380:	a42fca64 	sh	t7,-13724(at)
    1384:	3c010002 	lui	at,0x2
    1388:	a4584a6e 	sh	t8,19054(v0)
    138c:	a4404a70 	sh	zero,19056(v0)
    1390:	00240821 	addu	at,at,a0
    1394:	a439ca50 	sh	t9,-13744(at)
    1398:	3c010002 	lui	at,0x2
    139c:	00240821 	addu	at,at,a0
    13a0:	a42eca38 	sh	t6,-13768(at)
    13a4:	3c010002 	lui	at,0x2
    13a8:	00240821 	addu	at,at,a0
    13ac:	240f0007 	li	t7,7
    13b0:	a42fca3e 	sh	t7,-13762(at)
    13b4:	8fb00008 	lw	s0,8(sp)
    13b8:	8fb1000c 	lw	s1,12(sp)
    13bc:	8fb20010 	lw	s2,16(sp)
    13c0:	8fb30014 	lw	s3,20(sp)
    13c4:	03e00008 	jr	ra
    13c8:	27bd0018 	addiu	sp,sp,24

000013cc <func_8080510C>:
    13cc:	27bdffe0 	addiu	sp,sp,-32
    13d0:	3c080001 	lui	t0,0x1
    13d4:	35088000 	ori	t0,t0,0x8000
    13d8:	afbf001c 	sw	ra,28(sp)
    13dc:	afb00018 	sw	s0,24(sp)
    13e0:	00881021 	addu	v0,a0,t0
    13e4:	844e4a6e 	lh	t6,19054(v0)
    13e8:	84584a96 	lh	t8,19094(v0)
    13ec:	84494a98 	lh	t1,19096(v0)
    13f0:	844b4a50 	lh	t3,19024(v0)
    13f4:	3c010002 	lui	at,0x2
    13f8:	25cfffe1 	addiu	t7,t6,-31
    13fc:	2719ffe7 	addiu	t9,t8,-25
    1400:	252affe7 	addiu	t2,t1,-25
    1404:	a44f4a6e 	sh	t7,19054(v0)
    1408:	a4594a96 	sh	t9,19094(v0)
    140c:	a44a4a98 	sh	t2,19096(v0)
    1410:	00240821 	addu	at,at,a0
    1414:	256cffff 	addiu	t4,t3,-1
    1418:	a42cca50 	sh	t4,-13744(at)
    141c:	844d4a50 	lh	t5,19024(v0)
    1420:	00808025 	move	s0,a0
    1424:	3c010002 	lui	at,0x2
    1428:	15a00012 	bnez	t5,1474 <func_8080510C+0xa8>
    142c:	240e0008 	li	t6,8
    1430:	a4404a6e 	sh	zero,19054(v0)
    1434:	00240821 	addu	at,at,a0
    1438:	a42eca50 	sh	t6,-13744(at)
    143c:	844f4a3e 	lh	t7,19006(v0)
    1440:	3c010002 	lui	at,0x2
    1444:	00240821 	addu	at,at,a0
    1448:	25f80001 	addiu	t8,t7,1
    144c:	a438ca3e 	sh	t8,-13762(at)
    1450:	84464a5e 	lh	a2,19038(v0)
    1454:	3c040000 	lui	a0,0x0
    1458:	24840000 	addiu	a0,a0,0
    145c:	0006c840 	sll	t9,a2,0x1
    1460:	02194821 	addu	t1,s0,t9
    1464:	01281821 	addu	v1,t1,t0
    1468:	84654a86 	lh	a1,19078(v1)
    146c:	0c000000 	jal	0 <func_80803D40>
    1470:	84674a8c 	lh	a3,19084(v1)
    1474:	8fbf001c 	lw	ra,28(sp)
    1478:	8fb00018 	lw	s0,24(sp)
    147c:	27bd0020 	addiu	sp,sp,32
    1480:	03e00008 	jr	ra
    1484:	00000000 	nop

00001488 <func_808051C8>:
    1488:	3c080001 	lui	t0,0x1
    148c:	35088000 	ori	t0,t0,0x8000
    1490:	00881021 	addu	v0,a0,t0
    1494:	844e4a5e 	lh	t6,19038(v0)
    1498:	000e7840 	sll	t7,t6,0x1
    149c:	008fc021 	addu	t8,a0,t7
    14a0:	03081821 	addu	v1,t8,t0
    14a4:	84794a8c 	lh	t9,19084(v1)
    14a8:	27290019 	addiu	t1,t9,25
    14ac:	a4694a8c 	sh	t1,19084(v1)
    14b0:	844a4a5e 	lh	t2,19038(v0)
    14b4:	000a5840 	sll	t3,t2,0x1
    14b8:	008b6021 	addu	t4,a0,t3
    14bc:	01881821 	addu	v1,t4,t0
    14c0:	846d4a80 	lh	t5,19072(v1)
    14c4:	25ae0019 	addiu	t6,t5,25
    14c8:	a46e4a80 	sh	t6,19072(v1)
    14cc:	84594a5e 	lh	t9,19038(v0)
    14d0:	844f4a70 	lh	t7,19056(v0)
    14d4:	00194840 	sll	t1,t9,0x1
    14d8:	00895021 	addu	t2,a0,t1
    14dc:	25f8001f 	addiu	t8,t7,31
    14e0:	a4584a70 	sh	t8,19056(v0)
    14e4:	01481821 	addu	v1,t2,t0
    14e8:	84654a4a 	lh	a1,19018(v1)
    14ec:	2409ffc8 	li	t1,-56
    14f0:	24a60038 	addiu	a2,a1,56
    14f4:	04c20004 	bltzl	a2,1508 <func_808051C8+0x80>
    14f8:	240bffc8 	li	t3,-56
    14fc:	10000003 	b	150c <func_808051C8+0x84>
    1500:	00c03825 	move	a3,a2
    1504:	240bffc8 	li	t3,-56
    1508:	01653823 	subu	a3,t3,a1
    150c:	844c4a50 	lh	t4,19024(v0)
    1510:	00ec001a 	div	zero,a3,t4
    1514:	00003012 	mflo	a2
    1518:	00063400 	sll	a2,a2,0x10
    151c:	00063403 	sra	a2,a2,0x10
    1520:	00a66823 	subu	t5,a1,a2
    1524:	a46d4a4a 	sh	t5,19018(v1)
    1528:	844e4a5e 	lh	t6,19038(v0)
    152c:	15800002 	bnez	t4,1538 <func_808051C8+0xb0>
    1530:	00000000 	nop
    1534:	0007000d 	break	0x7
    1538:	2401ffff 	li	at,-1
    153c:	15810004 	bne	t4,at,1550 <func_808051C8+0xc8>
    1540:	3c018000 	lui	at,0x8000
    1544:	14e10002 	bne	a3,at,1550 <func_808051C8+0xc8>
    1548:	00000000 	nop
    154c:	0006000d 	break	0x6
    1550:	000e7840 	sll	t7,t6,0x1
    1554:	008fc021 	addu	t8,a0,t7
    1558:	03081821 	addu	v1,t8,t0
    155c:	84794a4a 	lh	t9,19018(v1)
    1560:	240d005a 	li	t5,90
    1564:	240f00ff 	li	t7,255
    1568:	2b21ffc9 	slti	at,t9,-55
    156c:	50200003 	beqzl	at,157c <func_808051C8+0xf4>
    1570:	844a4a50 	lh	t2,19024(v0)
    1574:	a4694a4a 	sh	t1,19018(v1)
    1578:	844a4a50 	lh	t2,19024(v0)
    157c:	3c010002 	lui	at,0x2
    1580:	00240821 	addu	at,at,a0
    1584:	254bffff 	addiu	t3,t2,-1
    1588:	a42bca50 	sh	t3,-13744(at)
    158c:	844c4a50 	lh	t4,19024(v0)
    1590:	3c010002 	lui	at,0x2
    1594:	00240821 	addu	at,at,a0
    1598:	1580000d 	bnez	t4,15d0 <func_808051C8+0x148>
    159c:	00000000 	nop
    15a0:	a42dca50 	sh	t5,-13744(at)
    15a4:	844e4a66 	lh	t6,19046(v0)
    15a8:	3c010002 	lui	at,0x2
    15ac:	00240821 	addu	at,at,a0
    15b0:	a42eca64 	sh	t6,-13724(at)
    15b4:	84584a3e 	lh	t8,19006(v0)
    15b8:	3c010002 	lui	at,0x2
    15bc:	a44f4a6e 	sh	t7,19054(v0)
    15c0:	a4404a70 	sh	zero,19056(v0)
    15c4:	00240821 	addu	at,at,a0
    15c8:	27190001 	addiu	t9,t8,1
    15cc:	a439ca3e 	sh	t9,-13762(at)
    15d0:	03e00008 	jr	ra
    15d4:	00000000 	nop

000015d8 <func_80805318>:
    15d8:	27bdffc8 	addiu	sp,sp,-56
    15dc:	3c080001 	lui	t0,0x1
    15e0:	35088000 	ori	t0,t0,0x8000
    15e4:	afbf0024 	sw	ra,36(sp)
    15e8:	afb00020 	sw	s0,32(sp)
    15ec:	00881821 	addu	v1,a0,t0
    15f0:	84624a50 	lh	v0,19024(v1)
    15f4:	2401004b 	li	at,75
    15f8:	00808025 	move	s0,a0
    15fc:	14410014 	bne	v0,at,1650 <func_80805318+0x78>
    1600:	3c070000 	lui	a3,0x0
    1604:	846f4a5e 	lh	t7,19038(v1)
    1608:	240e00ff 	li	t6,255
    160c:	3c0a0000 	lui	t2,0x0
    1610:	000fc040 	sll	t8,t7,0x1
    1614:	0098c821 	addu	t9,a0,t8
    1618:	03284821 	addu	t1,t9,t0
    161c:	a52e4a86 	sh	t6,19078(t1)
    1620:	24e70000 	addiu	a3,a3,0
    1624:	254a0000 	addiu	t2,t2,0
    1628:	3c050000 	lui	a1,0x0
    162c:	24a50000 	addiu	a1,a1,0
    1630:	afaa0014 	sw	t2,20(sp)
    1634:	afa70010 	sw	a3,16(sp)
    1638:	afa3002c 	sw	v1,44(sp)
    163c:	240428ba 	li	a0,10426
    1640:	0c000000 	jal	0 <func_80803D40>
    1644:	24060004 	li	a2,4
    1648:	8fa3002c 	lw	v1,44(sp)
    164c:	84624a50 	lh	v0,19024(v1)
    1650:	3c010002 	lui	at,0x2
    1654:	00300821 	addu	at,at,s0
    1658:	244bffff 	addiu	t3,v0,-1
    165c:	a42bca50 	sh	t3,-13744(at)
    1660:	84624a50 	lh	v0,19024(v1)
    1664:	2841004a 	slti	at,v0,74
    1668:	5020001e 	beqzl	at,16e4 <func_80805318+0x10c>
    166c:	8fbf0024 	lw	ra,36(sp)
    1670:	960c0020 	lhu	t4,32(s0)
    1674:	3c010002 	lui	at,0x2
    1678:	00300821 	addu	at,at,s0
    167c:	318dd000 	andi	t5,t4,0xd000
    1680:	15a00003 	bnez	t5,1690 <func_80805318+0xb8>
    1684:	240f0008 	li	t7,8
    1688:	54400016 	bnezl	v0,16e4 <func_80805318+0x10c>
    168c:	8fbf0024 	lw	ra,36(sp)
    1690:	a42fca50 	sh	t7,-13744(at)
    1694:	3c010002 	lui	at,0x2
    1698:	00300821 	addu	at,at,s0
    169c:	a420ca66 	sh	zero,-13722(at)
    16a0:	84784a3e 	lh	t8,19006(v1)
    16a4:	3c010002 	lui	at,0x2
    16a8:	00300821 	addu	at,at,s0
    16ac:	3c0e0000 	lui	t6,0x0
    16b0:	3c090000 	lui	t1,0x0
    16b4:	27190001 	addiu	t9,t8,1
    16b8:	a439ca3e 	sh	t9,-13762(at)
    16bc:	25290000 	addiu	t1,t1,0
    16c0:	25c70000 	addiu	a3,t6,0
    16c4:	3c050000 	lui	a1,0x0
    16c8:	24a50000 	addiu	a1,a1,0
    16cc:	afa70010 	sw	a3,16(sp)
    16d0:	afa90014 	sw	t1,20(sp)
    16d4:	2404483b 	li	a0,18491
    16d8:	0c000000 	jal	0 <func_80803D40>
    16dc:	24060004 	li	a2,4
    16e0:	8fbf0024 	lw	ra,36(sp)
    16e4:	8fb00020 	lw	s0,32(sp)
    16e8:	27bd0038 	addiu	sp,sp,56
    16ec:	03e00008 	jr	ra
    16f0:	00000000 	nop

000016f4 <func_80805434>:
    16f4:	3c060001 	lui	a2,0x1
    16f8:	34c68000 	ori	a2,a2,0x8000
    16fc:	00861021 	addu	v0,a0,a2
    1700:	844e4a46 	lh	t6,19014(v0)
    1704:	3c010002 	lui	at,0x2
    1708:	00240821 	addu	at,at,a0
    170c:	000e7840 	sll	t7,t6,0x1
    1710:	008fc021 	addu	t8,a0,t7
    1714:	03061821 	addu	v1,t8,a2
    1718:	84794a8c 	lh	t9,19084(v1)
    171c:	2728ffe7 	addiu	t0,t9,-25
    1720:	a4684a8c 	sh	t0,19084(v1)
    1724:	84494a5e 	lh	t1,19038(v0)
    1728:	00095040 	sll	t2,t1,0x1
    172c:	008a5821 	addu	t3,a0,t2
    1730:	01662821 	addu	a1,t3,a2
    1734:	84ac4a8c 	lh	t4,19084(a1)
    1738:	258dffe7 	addiu	t5,t4,-25
    173c:	a4ad4a8c 	sh	t5,19084(a1)
    1740:	844e4a46 	lh	t6,19014(v0)
    1744:	000e7840 	sll	t7,t6,0x1
    1748:	008fc021 	addu	t8,a0,t7
    174c:	03061821 	addu	v1,t8,a2
    1750:	84794a7a 	lh	t9,19066(v1)
    1754:	27280019 	addiu	t0,t9,25
    1758:	a4684a7a 	sh	t0,19066(v1)
    175c:	84494a5e 	lh	t1,19038(v0)
    1760:	00095040 	sll	t2,t1,0x1
    1764:	008a5821 	addu	t3,a0,t2
    1768:	01662821 	addu	a1,t3,a2
    176c:	84ac4a7a 	lh	t4,19066(a1)
    1770:	258d0019 	addiu	t5,t4,25
    1774:	a4ad4a7a 	sh	t5,19066(a1)
    1778:	844e4a6e 	lh	t6,19054(v0)
    177c:	84584a50 	lh	t8,19024(v0)
    1780:	25cfffe1 	addiu	t7,t6,-31
    1784:	a44f4a6e 	sh	t7,19054(v0)
    1788:	2719ffff 	addiu	t9,t8,-1
    178c:	a439ca50 	sh	t9,-13744(at)
    1790:	84484a50 	lh	t0,19024(v0)
    1794:	3c010002 	lui	at,0x2
    1798:	00240821 	addu	at,at,a0
    179c:	1500000f 	bnez	t0,17dc <func_80805434+0xe8>
    17a0:	240e0008 	li	t6,8
    17a4:	844a4a5e 	lh	t2,19038(v0)
    17a8:	a4404a58 	sh	zero,19032(v0)
    17ac:	84494a58 	lh	t1,19032(v0)
    17b0:	000a5840 	sll	t3,t2,0x1
    17b4:	008b6021 	addu	t4,a0,t3
    17b8:	01866821 	addu	t5,t4,a2
    17bc:	a5a94a4a 	sh	t1,19018(t5)
    17c0:	a42eca50 	sh	t6,-13744(at)
    17c4:	844f4a3e 	lh	t7,19006(v0)
    17c8:	3c010002 	lui	at,0x2
    17cc:	a4404a6e 	sh	zero,19054(v0)
    17d0:	00240821 	addu	at,at,a0
    17d4:	25f80001 	addiu	t8,t7,1
    17d8:	a438ca3e 	sh	t8,-13762(at)
    17dc:	03e00008 	jr	ra
    17e0:	00000000 	nop

000017e4 <func_80805524>:
    17e4:	27bdffe8 	addiu	sp,sp,-24
    17e8:	3c010001 	lui	at,0x1
    17ec:	34218000 	ori	at,at,0x8000
    17f0:	afb40014 	sw	s4,20(sp)
    17f4:	afb30010 	sw	s3,16(sp)
    17f8:	afb2000c 	sw	s2,12(sp)
    17fc:	afb10008 	sw	s1,8(sp)
    1800:	afb00004 	sw	s0,4(sp)
    1804:	00811021 	addu	v0,a0,at
    1808:	00201821 	move	v1,at
    180c:	00003025 	move	a2,zero
    1810:	00067040 	sll	t6,a2,0x1
    1814:	008e7821 	addu	t7,a0,t6
    1818:	01e34821 	addu	t1,t7,v1
    181c:	85284a52 	lh	t0,19026(t1)
    1820:	24c60001 	addiu	a2,a2,1
    1824:	00063400 	sll	a2,a2,0x10
    1828:	05000003 	bltz	t0,1838 <func_80805524+0x54>
    182c:	00063403 	sra	a2,a2,0x10
    1830:	10000002 	b	183c <func_80805524+0x58>
    1834:	01002825 	move	a1,t0
    1838:	00082823 	negu	a1,t0
    183c:	84584a50 	lh	t8,19024(v0)
    1840:	00b8001a 	div	zero,a1,t8
    1844:	17000002 	bnez	t8,1850 <func_80805524+0x6c>
    1848:	00000000 	nop
    184c:	0007000d 	break	0x7
    1850:	2401ffff 	li	at,-1
    1854:	17010004 	bne	t8,at,1868 <func_80805524+0x84>
    1858:	3c018000 	lui	at,0x8000
    185c:	14a10002 	bne	a1,at,1868 <func_80805524+0x84>
    1860:	00000000 	nop
    1864:	0006000d 	break	0x6
    1868:	00003812 	mflo	a3
    186c:	00073c00 	sll	a3,a3,0x10
    1870:	28c10005 	slti	at,a2,5
    1874:	05000004 	bltz	t0,1888 <func_80805524+0xa4>
    1878:	00073c03 	sra	a3,a3,0x10
    187c:	0107c823 	subu	t9,t0,a3
    1880:	10000003 	b	1890 <func_80805524+0xac>
    1884:	a5394a52 	sh	t9,19026(t1)
    1888:	01077021 	addu	t6,t0,a3
    188c:	a52e4a52 	sh	t6,19026(t1)
    1890:	5420ffe0 	bnezl	at,1814 <func_80805524+0x30>
    1894:	00067040 	sll	t6,a2,0x1
    1898:	3c0c0000 	lui	t4,0x0
    189c:	258c0000 	addiu	t4,t4,0
    18a0:	00003025 	move	a2,zero
    18a4:	24120041 	li	s2,65
    18a8:	24110044 	li	s1,68
    18ac:	2410004c 	li	s0,76
    18b0:	240d0045 	li	t5,69
    18b4:	240b005a 	li	t3,90
    18b8:	844f4a38 	lh	t7,19000(v0)
    18bc:	00063840 	sll	a3,a2,0x1
    18c0:	0087c021 	addu	t8,a0,a3
    18c4:	10cf0020 	beq	a2,t7,1948 <func_80805524+0x164>
    18c8:	03034821 	addu	t1,t8,v1
    18cc:	85394a74 	lh	t9,19060(t1)
    18d0:	01877821 	addu	t7,t4,a3
    18d4:	272e0019 	addiu	t6,t9,25
    18d8:	a52e4a74 	sh	t6,19060(t1)
    18dc:	8c9901e0 	lw	t9,480(a0)
    18e0:	95f80000 	lhu	t8,0(t7)
    18e4:	03195021 	addu	t2,t8,t9
    18e8:	914e001c 	lbu	t6,28(t2)
    18ec:	516e0011 	beql	t3,t6,1934 <func_80805524+0x150>
    18f0:	85284a74 	lh	t0,19060(t1)
    18f4:	914f001d 	lbu	t7,29(t2)
    18f8:	51af000e 	beql	t5,t7,1934 <func_80805524+0x150>
    18fc:	85284a74 	lh	t0,19060(t1)
    1900:	9158001e 	lbu	t8,30(t2)
    1904:	5218000b 	beql	s0,t8,1934 <func_80805524+0x150>
    1908:	85284a74 	lh	t0,19060(t1)
    190c:	9159001f 	lbu	t9,31(t2)
    1910:	52390008 	beql	s1,t9,1934 <func_80805524+0x150>
    1914:	85284a74 	lh	t0,19060(t1)
    1918:	914e0020 	lbu	t6,32(t2)
    191c:	524e0005 	beql	s2,t6,1934 <func_80805524+0x150>
    1920:	85284a74 	lh	t0,19060(t1)
    1924:	914f0021 	lbu	t7,33(t2)
    1928:	556f0008 	bnel	t3,t7,194c <func_80805524+0x168>
    192c:	24c60001 	addiu	a2,a2,1
    1930:	85284a74 	lh	t0,19060(t1)
    1934:	85384a86 	lh	t8,19078(t1)
    1938:	a5284a80 	sh	t0,19072(t1)
    193c:	2719001f 	addiu	t9,t8,31
    1940:	a5394a86 	sh	t9,19078(t1)
    1944:	a5284a7a 	sh	t0,19066(t1)
    1948:	24c60001 	addiu	a2,a2,1
    194c:	00063400 	sll	a2,a2,0x10
    1950:	00063403 	sra	a2,a2,0x10
    1954:	28c10003 	slti	at,a2,3
    1958:	5420ffd8 	bnezl	at,18bc <func_80805524+0xd8>
    195c:	844f4a38 	lh	t7,19000(v0)
    1960:	844e4a92 	lh	t6,19090(v0)
    1964:	84584a94 	lh	t8,19092(v0)
    1968:	3c010002 	lui	at,0x2
    196c:	25cf0019 	addiu	t7,t6,25
    1970:	844e4a9a 	lh	t6,19098(v0)
    1974:	a44f4a92 	sh	t7,19090(v0)
    1978:	27190019 	addiu	t9,t8,25
    197c:	a4594a94 	sh	t9,19092(v0)
    1980:	00240821 	addu	at,at,a0
    1984:	25cf0019 	addiu	t7,t6,25
    1988:	a42fca9a 	sh	t7,-13670(at)
    198c:	84584a70 	lh	t8,19056(v0)
    1990:	844e4a50 	lh	t6,19024(v0)
    1994:	3c010002 	lui	at,0x2
    1998:	2719001f 	addiu	t9,t8,31
    199c:	a4594a70 	sh	t9,19056(v0)
    19a0:	00240821 	addu	at,at,a0
    19a4:	25cfffff 	addiu	t7,t6,-1
    19a8:	a42fca50 	sh	t7,-13744(at)
    19ac:	84584a50 	lh	t8,19024(v0)
    19b0:	00003025 	move	a2,zero
    19b4:	248501e0 	addiu	a1,a0,480
    19b8:	17000043 	bnez	t8,1ac8 <func_80805524+0x2e4>
    19bc:	241400ff 	li	s4,255
    19c0:	241300c8 	li	s3,200
    19c4:	00063840 	sll	a3,a2,0x1
    19c8:	0087c821 	addu	t9,a0,a3
    19cc:	03234821 	addu	t1,t9,v1
    19d0:	a5204a86 	sh	zero,19078(t1)
    19d4:	85284a86 	lh	t0,19078(t1)
    19d8:	a5334a74 	sh	s3,19060(t1)
    19dc:	01877021 	addu	t6,t4,a3
    19e0:	a5284a80 	sh	t0,19072(t1)
    19e4:	a5284a7a 	sh	t0,19066(t1)
    19e8:	8cb80000 	lw	t8,0(a1)
    19ec:	95cf0000 	lhu	t7,0(t6)
    19f0:	24c60001 	addiu	a2,a2,1
    19f4:	00063400 	sll	a2,a2,0x10
    19f8:	01f85021 	addu	t2,t7,t8
    19fc:	9159001c 	lbu	t9,28(t2)
    1a00:	00063403 	sra	a2,a2,0x10
    1a04:	28c10003 	slti	at,a2,3
    1a08:	51790011 	beql	t3,t9,1a50 <func_80805524+0x26c>
    1a0c:	85284a74 	lh	t0,19060(t1)
    1a10:	914e001d 	lbu	t6,29(t2)
    1a14:	51ae000e 	beql	t5,t6,1a50 <func_80805524+0x26c>
    1a18:	85284a74 	lh	t0,19060(t1)
    1a1c:	914f001e 	lbu	t7,30(t2)
    1a20:	520f000b 	beql	s0,t7,1a50 <func_80805524+0x26c>
    1a24:	85284a74 	lh	t0,19060(t1)
    1a28:	9158001f 	lbu	t8,31(t2)
    1a2c:	52380008 	beql	s1,t8,1a50 <func_80805524+0x26c>
    1a30:	85284a74 	lh	t0,19060(t1)
    1a34:	91590020 	lbu	t9,32(t2)
    1a38:	52590005 	beql	s2,t9,1a50 <func_80805524+0x26c>
    1a3c:	85284a74 	lh	t0,19060(t1)
    1a40:	914e0021 	lbu	t6,33(t2)
    1a44:	156e0005 	bne	t3,t6,1a5c <func_80805524+0x278>
    1a48:	00000000 	nop
    1a4c:	85284a74 	lh	t0,19060(t1)
    1a50:	a5344a86 	sh	s4,19078(t1)
    1a54:	a5284a80 	sh	t0,19072(t1)
    1a58:	a5284a7a 	sh	t0,19066(t1)
    1a5c:	5420ffda 	bnezl	at,19c8 <func_80805524+0x1e4>
    1a60:	00063840 	sll	a3,a2,0x1
    1a64:	844f4a46 	lh	t7,19014(v0)
    1a68:	3c010002 	lui	at,0x2
    1a6c:	00240821 	addu	at,at,a0
    1a70:	000fc040 	sll	t8,t7,0x1
    1a74:	0098c821 	addu	t9,a0,t8
    1a78:	03237021 	addu	t6,t9,v1
    1a7c:	a5c04a4a 	sh	zero,19018(t6)
    1a80:	240f0046 	li	t7,70
    1a84:	a44f4aa8 	sh	t7,19112(v0)
    1a88:	24180001 	li	t8,1
    1a8c:	a438caaa 	sh	t8,-13654(at)
    1a90:	3c050000 	lui	a1,0x0
    1a94:	8ca50000 	lw	a1,0(a1)
    1a98:	3c010002 	lui	at,0x2
    1a9c:	00240821 	addu	at,at,a0
    1aa0:	84b90adc 	lh	t9,2780(a1)
    1aa4:	240f0002 	li	t7,2
    1aa8:	a4b90ada 	sh	t9,2778(a1)
    1aac:	844e4a66 	lh	t6,19046(v0)
    1ab0:	a42eca64 	sh	t6,-13724(at)
    1ab4:	3c010002 	lui	at,0x2
    1ab8:	a4544a6e 	sh	s4,19054(v0)
    1abc:	a4404a70 	sh	zero,19056(v0)
    1ac0:	00240821 	addu	at,at,a0
    1ac4:	a42fca3e 	sh	t7,-13762(at)
    1ac8:	8fb00004 	lw	s0,4(sp)
    1acc:	8fb10008 	lw	s1,8(sp)
    1ad0:	8fb2000c 	lw	s2,12(sp)
    1ad4:	8fb30010 	lw	s3,16(sp)
    1ad8:	8fb40014 	lw	s4,20(sp)
    1adc:	03e00008 	jr	ra
    1ae0:	27bd0018 	addiu	sp,sp,24

00001ae4 <func_80805824>:
    1ae4:	3c010001 	lui	at,0x1
    1ae8:	34218000 	ori	at,at,0x8000
    1aec:	00814021 	addu	t0,a0,at
    1af0:	00204821 	move	t1,at
    1af4:	00001025 	move	v0,zero
    1af8:	00027040 	sll	t6,v0,0x1
    1afc:	008e7821 	addu	t7,a0,t6
    1b00:	01e93021 	addu	a2,t7,t1
    1b04:	84c74a52 	lh	a3,19026(a2)
    1b08:	24420001 	addiu	v0,v0,1
    1b0c:	00021400 	sll	v0,v0,0x10
    1b10:	04e00003 	bltz	a3,1b20 <func_80805824+0x3c>
    1b14:	00021403 	sra	v0,v0,0x10
    1b18:	10000002 	b	1b24 <func_80805824+0x40>
    1b1c:	00e01825 	move	v1,a3
    1b20:	00071823 	negu	v1,a3
    1b24:	85184a50 	lh	t8,19024(t0)
    1b28:	0078001a 	div	zero,v1,t8
    1b2c:	17000002 	bnez	t8,1b38 <func_80805824+0x54>
    1b30:	00000000 	nop
    1b34:	0007000d 	break	0x7
    1b38:	2401ffff 	li	at,-1
    1b3c:	17010004 	bne	t8,at,1b50 <func_80805824+0x6c>
    1b40:	3c018000 	lui	at,0x8000
    1b44:	14610002 	bne	v1,at,1b50 <func_80805824+0x6c>
    1b48:	00000000 	nop
    1b4c:	0006000d 	break	0x6
    1b50:	00002812 	mflo	a1
    1b54:	00052c00 	sll	a1,a1,0x10
    1b58:	28410005 	slti	at,v0,5
    1b5c:	04e00004 	bltz	a3,1b70 <func_80805824+0x8c>
    1b60:	00052c03 	sra	a1,a1,0x10
    1b64:	00e5c823 	subu	t9,a3,a1
    1b68:	10000003 	b	1b78 <func_80805824+0x94>
    1b6c:	a4d94a52 	sh	t9,19026(a2)
    1b70:	00e55021 	addu	t2,a3,a1
    1b74:	a4ca4a52 	sh	t2,19026(a2)
    1b78:	5420ffe0 	bnezl	at,1afc <func_80805824+0x18>
    1b7c:	00027040 	sll	t6,v0,0x1
    1b80:	850b4a92 	lh	t3,19090(t0)
    1b84:	850d4a98 	lh	t5,19096(t0)
    1b88:	850f4a6e 	lh	t7,19054(t0)
    1b8c:	85194a70 	lh	t9,19056(t0)
    1b90:	256c0019 	addiu	t4,t3,25
    1b94:	850b4a50 	lh	t3,19024(t0)
    1b98:	a50c4a92 	sh	t4,19090(t0)
    1b9c:	3c010002 	lui	at,0x2
    1ba0:	25aeffe7 	addiu	t6,t5,-25
    1ba4:	25f8ffe1 	addiu	t8,t7,-31
    1ba8:	272a001f 	addiu	t2,t9,31
    1bac:	a50e4a98 	sh	t6,19096(t0)
    1bb0:	a5184a6e 	sh	t8,19054(t0)
    1bb4:	a50a4a70 	sh	t2,19056(t0)
    1bb8:	00240821 	addu	at,at,a0
    1bbc:	256cffff 	addiu	t4,t3,-1
    1bc0:	a42cca50 	sh	t4,-13744(at)
    1bc4:	850d4a50 	lh	t5,19024(t0)
    1bc8:	3c010002 	lui	at,0x2
    1bcc:	240e00c8 	li	t6,200
    1bd0:	15a0000c 	bnez	t5,1c04 <func_80805824+0x120>
    1bd4:	00240821 	addu	at,at,a0
    1bd8:	850f4a66 	lh	t7,19046(t0)
    1bdc:	a50e4a92 	sh	t6,19090(t0)
    1be0:	a5004a98 	sh	zero,19096(t0)
    1be4:	a42fca64 	sh	t7,-13724(at)
    1be8:	241800ff 	li	t8,255
    1bec:	3c010002 	lui	at,0x2
    1bf0:	a5184a6e 	sh	t8,19054(t0)
    1bf4:	a5004a70 	sh	zero,19056(t0)
    1bf8:	00240821 	addu	at,at,a0
    1bfc:	24190002 	li	t9,2
    1c00:	a439ca3e 	sh	t9,-13762(at)
    1c04:	85024a92 	lh	v0,19090(t0)
    1c08:	3c010002 	lui	at,0x2
    1c0c:	00240821 	addu	at,at,a0
    1c10:	a5024a94 	sh	v0,19092(t0)
    1c14:	03e00008 	jr	ra
    1c18:	a422ca9a 	sh	v0,-13670(at)

00001c1c <func_8080595C>:
    1c1c:	3c010001 	lui	at,0x1
    1c20:	34218000 	ori	at,at,0x8000
    1c24:	3c0b0000 	lui	t3,0x0
    1c28:	256b0000 	addiu	t3,t3,0
    1c2c:	00814821 	addu	t1,a0,at
    1c30:	00205021 	move	t2,at
    1c34:	00001025 	move	v0,zero
    1c38:	00021840 	sll	v1,v0,0x1
    1c3c:	00837021 	addu	t6,a0,v1
    1c40:	01ca3821 	addu	a3,t6,t2
    1c44:	01637821 	addu	t7,t3,v1
    1c48:	85e50000 	lh	a1,0(t7)
    1c4c:	84e84a52 	lh	t0,19026(a3)
    1c50:	24420001 	addiu	v0,v0,1
    1c54:	00021400 	sll	v0,v0,0x10
    1c58:	01053023 	subu	a2,t0,a1
    1c5c:	04c00003 	bltz	a2,1c6c <func_8080595C+0x50>
    1c60:	00021403 	sra	v0,v0,0x10
    1c64:	10000002 	b	1c70 <func_8080595C+0x54>
    1c68:	00c01825 	move	v1,a2
    1c6c:	00061823 	negu	v1,a2
    1c70:	85384a50 	lh	t8,19024(t1)
    1c74:	0078001a 	div	zero,v1,t8
    1c78:	17000002 	bnez	t8,1c84 <func_8080595C+0x68>
    1c7c:	00000000 	nop
    1c80:	0007000d 	break	0x7
    1c84:	2401ffff 	li	at,-1
    1c88:	17010004 	bne	t8,at,1c9c <func_8080595C+0x80>
    1c8c:	3c018000 	lui	at,0x8000
    1c90:	14610002 	bne	v1,at,1c9c <func_8080595C+0x80>
    1c94:	00000000 	nop
    1c98:	0006000d 	break	0x6
    1c9c:	00003012 	mflo	a2
    1ca0:	00063400 	sll	a2,a2,0x10
    1ca4:	0105082a 	slt	at,t0,a1
    1ca8:	14200004 	bnez	at,1cbc <func_8080595C+0xa0>
    1cac:	00063403 	sra	a2,a2,0x10
    1cb0:	0106c823 	subu	t9,t0,a2
    1cb4:	10000003 	b	1cc4 <func_8080595C+0xa8>
    1cb8:	a4f94a52 	sh	t9,19026(a3)
    1cbc:	01066021 	addu	t4,t0,a2
    1cc0:	a4ec4a52 	sh	t4,19026(a3)
    1cc4:	28410005 	slti	at,v0,5
    1cc8:	5420ffdc 	bnezl	at,1c3c <func_8080595C+0x20>
    1ccc:	00021840 	sll	v1,v0,0x1
    1cd0:	852d4a92 	lh	t5,19090(t1)
    1cd4:	852f4a94 	lh	t7,19092(t1)
    1cd8:	85394a9a 	lh	t9,19098(t1)
    1cdc:	3c010002 	lui	at,0x2
    1ce0:	25aeffce 	addiu	t6,t5,-50
    1ce4:	25f8ffce 	addiu	t8,t7,-50
    1ce8:	a52e4a92 	sh	t6,19090(t1)
    1cec:	a5384a94 	sh	t8,19092(t1)
    1cf0:	00240821 	addu	at,at,a0
    1cf4:	272cffce 	addiu	t4,t9,-50
    1cf8:	a42cca9a 	sh	t4,-13670(at)
    1cfc:	852d4a98 	lh	t5,19096(t1)
    1d00:	852f4a92 	lh	t7,19090(t1)
    1d04:	3c010002 	lui	at,0x2
    1d08:	25ae0019 	addiu	t6,t5,25
    1d0c:	1de00006 	bgtz	t7,1d28 <func_8080595C+0x10c>
    1d10:	a52e4a98 	sh	t6,19096(t1)
    1d14:	00240821 	addu	at,at,a0
    1d18:	a420ca9a 	sh	zero,-13670(at)
    1d1c:	85224a9a 	lh	v0,19098(t1)
    1d20:	a5224a94 	sh	v0,19092(t1)
    1d24:	a5224a92 	sh	v0,19090(t1)
    1d28:	85384a6e 	lh	t8,19054(t1)
    1d2c:	852c4a70 	lh	t4,19056(t1)
    1d30:	852e4a50 	lh	t6,19024(t1)
    1d34:	3c010002 	lui	at,0x2
    1d38:	2719ffe1 	addiu	t9,t8,-31
    1d3c:	258d001f 	addiu	t5,t4,31
    1d40:	a5394a6e 	sh	t9,19054(t1)
    1d44:	a52d4a70 	sh	t5,19056(t1)
    1d48:	00240821 	addu	at,at,a0
    1d4c:	25cfffff 	addiu	t7,t6,-1
    1d50:	a42fca50 	sh	t7,-13744(at)
    1d54:	85384a50 	lh	t8,19024(t1)
    1d58:	24190046 	li	t9,70
    1d5c:	3c010002 	lui	at,0x2
    1d60:	17000020 	bnez	t8,1de4 <func_8080595C+0x1c8>
    1d64:	240c0001 	li	t4,1
    1d68:	a5394aa8 	sh	t9,19112(t1)
    1d6c:	00240821 	addu	at,at,a0
    1d70:	a42ccaaa 	sh	t4,-13654(at)
    1d74:	3c030000 	lui	v1,0x0
    1d78:	8c630000 	lw	v1,0(v1)
    1d7c:	3c010002 	lui	at,0x2
    1d80:	00240821 	addu	at,at,a0
    1d84:	846d0adc 	lh	t5,2780(v1)
    1d88:	240e00c8 	li	t6,200
    1d8c:	241800ff 	li	t8,255
    1d90:	a46d0ada 	sh	t5,2778(v1)
    1d94:	a420ca9a 	sh	zero,-13670(at)
    1d98:	85224a9a 	lh	v0,19098(t1)
    1d9c:	852f4a66 	lh	t7,19046(t1)
    1da0:	3c010002 	lui	at,0x2
    1da4:	a52e4a98 	sh	t6,19096(t1)
    1da8:	00240821 	addu	at,at,a0
    1dac:	a5224a94 	sh	v0,19092(t1)
    1db0:	a5224a92 	sh	v0,19090(t1)
    1db4:	a42fca64 	sh	t7,-13724(at)
    1db8:	3c010002 	lui	at,0x2
    1dbc:	a5384a6e 	sh	t8,19054(t1)
    1dc0:	a5204a70 	sh	zero,19056(t1)
    1dc4:	00240821 	addu	at,at,a0
    1dc8:	24190003 	li	t9,3
    1dcc:	a439ca38 	sh	t9,-13768(at)
    1dd0:	852c4a3e 	lh	t4,19006(t1)
    1dd4:	3c010002 	lui	at,0x2
    1dd8:	00240821 	addu	at,at,a0
    1ddc:	258d0001 	addiu	t5,t4,1
    1de0:	a42dca3e 	sh	t5,-13762(at)
    1de4:	03e00008 	jr	ra
    1de8:	00000000 	nop

00001dec <func_80805B2C>:
    1dec:	27bdffc0 	addiu	sp,sp,-64
    1df0:	3c010001 	lui	at,0x1
    1df4:	34218000 	ori	at,at,0x8000
    1df8:	afbf0024 	sw	ra,36(sp)
    1dfc:	afb00020 	sw	s0,32(sp)
    1e00:	00814021 	addu	t0,a0,at
    1e04:	85034a38 	lh	v1,19000(t0)
    1e08:	24090003 	li	t1,3
    1e0c:	00808025 	move	s0,a0
    1e10:	55230006 	bnel	t1,v1,1e2c <func_80805B2C+0x40>
    1e14:	96020020 	lhu	v0,32(s0)
    1e18:	948e0020 	lhu	t6,32(a0)
    1e1c:	31cf9000 	andi	t7,t6,0x9000
    1e20:	55e00007 	bnezl	t7,1e40 <func_80805B2C+0x54>
    1e24:	3c010002 	lui	at,0x2
    1e28:	96020020 	lhu	v0,32(s0)
    1e2c:	2401bfff 	li	at,-16385
    1e30:	0041c027 	nor	t8,v0,at
    1e34:	17000021 	bnez	t8,1ebc <func_80805B2C+0xd0>
    1e38:	304e9000 	andi	t6,v0,0x9000
    1e3c:	3c010002 	lui	at,0x2
    1e40:	00300821 	addu	at,at,s0
    1e44:	24190004 	li	t9,4
    1e48:	a439ca38 	sh	t9,-13768(at)
    1e4c:	3c010002 	lui	at,0x2
    1e50:	00300821 	addu	at,at,s0
    1e54:	240a0008 	li	t2,8
    1e58:	a42aca50 	sh	t2,-13744(at)
    1e5c:	3c010002 	lui	at,0x2
    1e60:	00300821 	addu	at,at,s0
    1e64:	a420ca66 	sh	zero,-13722(at)
    1e68:	3c010002 	lui	at,0x2
    1e6c:	00300821 	addu	at,at,s0
    1e70:	240b001e 	li	t3,30
    1e74:	a42bca3e 	sh	t3,-13762(at)
    1e78:	3c010002 	lui	at,0x2
    1e7c:	3c070000 	lui	a3,0x0
    1e80:	00300821 	addu	at,at,s0
    1e84:	240cffff 	li	t4,-1
    1e88:	3c0d0000 	lui	t5,0x0
    1e8c:	24e70000 	addiu	a3,a3,0
    1e90:	a42cca60 	sh	t4,-13728(at)
    1e94:	25ad0000 	addiu	t5,t5,0
    1e98:	3c050000 	lui	a1,0x0
    1e9c:	24a50000 	addiu	a1,a1,0
    1ea0:	afad0014 	sw	t5,20(sp)
    1ea4:	afa70010 	sw	a3,16(sp)
    1ea8:	2404483c 	li	a0,18492
    1eac:	0c000000 	jal	0 <func_80803D40>
    1eb0:	24060004 	li	a2,4
    1eb4:	100000ac 	b	2168 <func_80805B2C+0x37c>
    1eb8:	8fbf0024 	lw	ra,36(sp)
    1ebc:	11c00045 	beqz	t6,1fd4 <func_80805B2C+0x1e8>
    1ec0:	00037840 	sll	t7,v1,0x1
    1ec4:	3c180000 	lui	t8,0x0
    1ec8:	030fc021 	addu	t8,t8,t7
    1ecc:	97180000 	lhu	t8,0(t8)
    1ed0:	8e1901e0 	lw	t9,480(s0)
    1ed4:	2404005a 	li	a0,90
    1ed8:	3c070000 	lui	a3,0x0
    1edc:	03191021 	addu	v0,t8,t9
    1ee0:	904a001c 	lbu	t2,28(v0)
    1ee4:	24e70000 	addiu	a3,a3,0
    1ee8:	24180008 	li	t8,8
    1eec:	108a0016 	beq	a0,t2,1f48 <func_80805B2C+0x15c>
    1ef0:	3c050000 	lui	a1,0x0
    1ef4:	904b001d 	lbu	t3,29(v0)
    1ef8:	24010045 	li	at,69
    1efc:	51610013 	beql	t3,at,1f4c <func_80805B2C+0x160>
    1f00:	3c010002 	lui	at,0x2
    1f04:	904c001e 	lbu	t4,30(v0)
    1f08:	2401004c 	li	at,76
    1f0c:	5181000f 	beql	t4,at,1f4c <func_80805B2C+0x160>
    1f10:	3c010002 	lui	at,0x2
    1f14:	904d001f 	lbu	t5,31(v0)
    1f18:	24010044 	li	at,68
    1f1c:	51a1000b 	beql	t5,at,1f4c <func_80805B2C+0x160>
    1f20:	3c010002 	lui	at,0x2
    1f24:	904e0020 	lbu	t6,32(v0)
    1f28:	24010041 	li	at,65
    1f2c:	51c10007 	beql	t6,at,1f4c <func_80805B2C+0x160>
    1f30:	3c010002 	lui	at,0x2
    1f34:	904f0021 	lbu	t7,33(v0)
    1f38:	3c0d0000 	lui	t5,0x0
    1f3c:	25ad0000 	addiu	t5,t5,0
    1f40:	148f001a 	bne	a0,t7,1fac <func_80805B2C+0x1c0>
    1f44:	24060004 	li	a2,4
    1f48:	3c010002 	lui	at,0x2
    1f4c:	00300821 	addu	at,at,s0
    1f50:	a438ca50 	sh	t8,-13744(at)
    1f54:	85194a38 	lh	t9,19000(t0)
    1f58:	3c010002 	lui	at,0x2
    1f5c:	00300821 	addu	at,at,s0
    1f60:	a439ca46 	sh	t9,-13754(at)
    1f64:	3c010002 	lui	at,0x2
    1f68:	00300821 	addu	at,at,s0
    1f6c:	240a0016 	li	t2,22
    1f70:	a42aca3e 	sh	t2,-13762(at)
    1f74:	3c010002 	lui	at,0x2
    1f78:	00300821 	addu	at,at,s0
    1f7c:	240b0007 	li	t3,7
    1f80:	3c0c0000 	lui	t4,0x0
    1f84:	a42bca66 	sh	t3,-13722(at)
    1f88:	258c0000 	addiu	t4,t4,0
    1f8c:	afac0014 	sw	t4,20(sp)
    1f90:	afa70010 	sw	a3,16(sp)
    1f94:	2404483b 	li	a0,18491
    1f98:	24a50000 	addiu	a1,a1,0
    1f9c:	0c000000 	jal	0 <func_80803D40>
    1fa0:	24060004 	li	a2,4
    1fa4:	10000070 	b	2168 <func_80805B2C+0x37c>
    1fa8:	8fbf0024 	lw	ra,36(sp)
    1fac:	3c070000 	lui	a3,0x0
    1fb0:	24e70000 	addiu	a3,a3,0
    1fb4:	3c050000 	lui	a1,0x0
    1fb8:	24a50000 	addiu	a1,a1,0
    1fbc:	afa70010 	sw	a3,16(sp)
    1fc0:	2404483d 	li	a0,18493
    1fc4:	0c000000 	jal	0 <func_80803D40>
    1fc8:	afad0014 	sw	t5,20(sp)
    1fcc:	10000066 	b	2168 <func_80805B2C+0x37c>
    1fd0:	8fbf0024 	lw	ra,36(sp)
    1fd4:	85024abc 	lh	v0,19132(t0)
    1fd8:	3c070000 	lui	a3,0x0
    1fdc:	24e70000 	addiu	a3,a3,0
    1fe0:	04400003 	bltz	v0,1ff0 <func_80805B2C+0x204>
    1fe4:	00022023 	negu	a0,v0
    1fe8:	10000001 	b	1ff0 <func_80805B2C+0x204>
    1fec:	00402025 	move	a0,v0
    1ff0:	2881001e 	slti	at,a0,30
    1ff4:	14200029 	bnez	at,209c <func_80805B2C+0x2b0>
    1ff8:	24044839 	li	a0,18489
    1ffc:	3c0e0000 	lui	t6,0x0
    2000:	25ce0000 	addiu	t6,t6,0
    2004:	3c050000 	lui	a1,0x0
    2008:	24a50000 	addiu	a1,a1,0
    200c:	afae0014 	sw	t6,20(sp)
    2010:	24060004 	li	a2,4
    2014:	afa70010 	sw	a3,16(sp)
    2018:	0c000000 	jal	0 <func_80803D40>
    201c:	afa8002c 	sw	t0,44(sp)
    2020:	8fa8002c 	lw	t0,44(sp)
    2024:	24090003 	li	t1,3
    2028:	850f4abc 	lh	t7,19132(t0)
    202c:	29e1001e 	slti	at,t7,30
    2030:	5420000f 	bnezl	at,2070 <func_80805B2C+0x284>
    2034:	850a4a38 	lh	t2,19000(t0)
    2038:	85184a38 	lh	t8,19000(t0)
    203c:	3c010002 	lui	at,0x2
    2040:	00300821 	addu	at,at,s0
    2044:	2719ffff 	addiu	t9,t8,-1
    2048:	a439ca38 	sh	t9,-13768(at)
    204c:	85034a38 	lh	v1,19000(t0)
    2050:	3c010002 	lui	at,0x2
    2054:	00300821 	addu	at,at,s0
    2058:	04610010 	bgez	v1,209c <func_80805B2C+0x2b0>
    205c:	00000000 	nop
    2060:	a429ca38 	sh	t1,-13768(at)
    2064:	1000000d 	b	209c <func_80805B2C+0x2b0>
    2068:	85034a38 	lh	v1,19000(t0)
    206c:	850a4a38 	lh	t2,19000(t0)
    2070:	3c010002 	lui	at,0x2
    2074:	00300821 	addu	at,at,s0
    2078:	254b0001 	addiu	t3,t2,1
    207c:	a42bca38 	sh	t3,-13768(at)
    2080:	85034a38 	lh	v1,19000(t0)
    2084:	28610004 	slti	at,v1,4
    2088:	14200004 	bnez	at,209c <func_80805B2C+0x2b0>
    208c:	3c010002 	lui	at,0x2
    2090:	00300821 	addu	at,at,s0
    2094:	a420ca38 	sh	zero,-13768(at)
    2098:	85034a38 	lh	v1,19000(t0)
    209c:	1123002e 	beq	t1,v1,2158 <func_80805B2C+0x36c>
    20a0:	2418ffff 	li	t8,-1
    20a4:	00036040 	sll	t4,v1,0x1
    20a8:	3c0d0000 	lui	t5,0x0
    20ac:	01ac6821 	addu	t5,t5,t4
    20b0:	95ad0000 	lhu	t5,0(t5)
    20b4:	8e0e01e0 	lw	t6,480(s0)
    20b8:	2404005a 	li	a0,90
    20bc:	01ae1021 	addu	v0,t5,t6
    20c0:	904f001c 	lbu	t7,28(v0)
    20c4:	508f0020 	beql	a0,t7,2148 <func_80805B2C+0x35c>
    20c8:	3c010002 	lui	at,0x2
    20cc:	9058001d 	lbu	t8,29(v0)
    20d0:	24010045 	li	at,69
    20d4:	5301001c 	beql	t8,at,2148 <func_80805B2C+0x35c>
    20d8:	3c010002 	lui	at,0x2
    20dc:	9059001e 	lbu	t9,30(v0)
    20e0:	2401004c 	li	at,76
    20e4:	53210018 	beql	t9,at,2148 <func_80805B2C+0x35c>
    20e8:	3c010002 	lui	at,0x2
    20ec:	904a001f 	lbu	t2,31(v0)
    20f0:	24010044 	li	at,68
    20f4:	51410014 	beql	t2,at,2148 <func_80805B2C+0x35c>
    20f8:	3c010002 	lui	at,0x2
    20fc:	904b0020 	lbu	t3,32(v0)
    2100:	24010041 	li	at,65
    2104:	51610010 	beql	t3,at,2148 <func_80805B2C+0x35c>
    2108:	3c010002 	lui	at,0x2
    210c:	904c0021 	lbu	t4,33(v0)
    2110:	3c010002 	lui	at,0x2
    2114:	00300821 	addu	at,at,s0
    2118:	108c000a 	beq	a0,t4,2144 <func_80805B2C+0x358>
    211c:	240e00ff 	li	t6,255
    2120:	a429ca60 	sh	t1,-13728(at)
    2124:	850d4a38 	lh	t5,19000(t0)
    2128:	3c010002 	lui	at,0x2
    212c:	00300821 	addu	at,at,s0
    2130:	a42dca62 	sh	t5,-13726(at)
    2134:	3c010002 	lui	at,0x2
    2138:	00300821 	addu	at,at,s0
    213c:	10000009 	b	2164 <func_80805B2C+0x378>
    2140:	a42ecaa0 	sh	t6,-13664(at)
    2144:	3c010002 	lui	at,0x2
    2148:	00300821 	addu	at,at,s0
    214c:	240fffff 	li	t7,-1
    2150:	10000004 	b	2164 <func_80805B2C+0x378>
    2154:	a42fca60 	sh	t7,-13728(at)
    2158:	3c010002 	lui	at,0x2
    215c:	00300821 	addu	at,at,s0
    2160:	a438ca60 	sh	t8,-13728(at)
    2164:	8fbf0024 	lw	ra,36(sp)
    2168:	8fb00020 	lw	s0,32(sp)
    216c:	27bd0040 	addiu	sp,sp,64
    2170:	03e00008 	jr	ra
    2174:	00000000 	nop

00002178 <func_80805EB8>:
    2178:	27bdfff0 	addiu	sp,sp,-16
    217c:	3c010001 	lui	at,0x1
    2180:	afb2000c 	sw	s2,12(sp)
    2184:	afb10008 	sw	s1,8(sp)
    2188:	afb00004 	sw	s0,4(sp)
    218c:	34228000 	ori	v0,at,0x8000
    2190:	3c0c0000 	lui	t4,0x0
    2194:	258c0000 	addiu	t4,t4,0
    2198:	00821821 	addu	v1,a0,v0
    219c:	2410004c 	li	s0,76
    21a0:	24110044 	li	s1,68
    21a4:	24120041 	li	s2,65
    21a8:	00003025 	move	a2,zero
    21ac:	240d0045 	li	t5,69
    21b0:	240b005a 	li	t3,90
    21b4:	846e4a38 	lh	t6,19000(v1)
    21b8:	00063840 	sll	a3,a2,0x1
    21bc:	00877821 	addu	t7,a0,a3
    21c0:	10ce0022 	beq	a2,t6,224c <func_80805EB8+0xd4>
    21c4:	0006c840 	sll	t9,a2,0x1
    21c8:	01e24021 	addu	t0,t7,v0
    21cc:	85184a74 	lh	t8,19060(t0)
    21d0:	01877021 	addu	t6,t4,a3
    21d4:	2719ffe7 	addiu	t9,t8,-25
    21d8:	a5194a74 	sh	t9,19060(t0)
    21dc:	8c9801e0 	lw	t8,480(a0)
    21e0:	95cf0000 	lhu	t7,0(t6)
    21e4:	01f84821 	addu	t1,t7,t8
    21e8:	9139001c 	lbu	t9,28(t1)
    21ec:	51790011 	beql	t3,t9,2234 <func_80805EB8+0xbc>
    21f0:	850f4a86 	lh	t7,19078(t0)
    21f4:	912e001d 	lbu	t6,29(t1)
    21f8:	51ae000e 	beql	t5,t6,2234 <func_80805EB8+0xbc>
    21fc:	850f4a86 	lh	t7,19078(t0)
    2200:	912f001e 	lbu	t7,30(t1)
    2204:	520f000b 	beql	s0,t7,2234 <func_80805EB8+0xbc>
    2208:	850f4a86 	lh	t7,19078(t0)
    220c:	9138001f 	lbu	t8,31(t1)
    2210:	52380008 	beql	s1,t8,2234 <func_80805EB8+0xbc>
    2214:	850f4a86 	lh	t7,19078(t0)
    2218:	91390020 	lbu	t9,32(t1)
    221c:	52590005 	beql	s2,t9,2234 <func_80805EB8+0xbc>
    2220:	850f4a86 	lh	t7,19078(t0)
    2224:	912e0021 	lbu	t6,33(t1)
    2228:	556e000e 	bnel	t3,t6,2264 <func_80805EB8+0xec>
    222c:	24c60001 	addiu	a2,a2,1
    2230:	850f4a86 	lh	t7,19078(t0)
    2234:	85074a74 	lh	a3,19060(t0)
    2238:	25f8ffe1 	addiu	t8,t7,-31
    223c:	a5184a86 	sh	t8,19078(t0)
    2240:	a5074a80 	sh	a3,19072(t0)
    2244:	10000006 	b	2260 <func_80805EB8+0xe8>
    2248:	a5074a7a 	sh	a3,19066(t0)
    224c:	00997021 	addu	t6,a0,t9
    2250:	01c24021 	addu	t0,t6,v0
    2254:	850f4a7a 	lh	t7,19066(t0)
    2258:	25f8ffe7 	addiu	t8,t7,-25
    225c:	a5184a7a 	sh	t8,19066(t0)
    2260:	24c60001 	addiu	a2,a2,1
    2264:	00063400 	sll	a2,a2,0x10
    2268:	00063403 	sra	a2,a2,0x10
    226c:	28c10003 	slti	at,a2,3
    2270:	5420ffd1 	bnezl	at,21b8 <func_80805EB8+0x40>
    2274:	846e4a38 	lh	t6,19000(v1)
    2278:	84794a6e 	lh	t9,19054(v1)
    227c:	846f4a70 	lh	t7,19056(v1)
    2280:	84664a38 	lh	a2,19000(v1)
    2284:	272efff1 	addiu	t6,t9,-15
    2288:	3c050000 	lui	a1,0x0
    228c:	a46e4a6e 	sh	t6,19054(v1)
    2290:	25f8000f 	addiu	t8,t7,15
    2294:	00063040 	sll	a2,a2,0x1
    2298:	24a50000 	addiu	a1,a1,0
    229c:	a4784a70 	sh	t8,19056(v1)
    22a0:	0086c821 	addu	t9,a0,a2
    22a4:	03224021 	addu	t0,t9,v0
    22a8:	00a67021 	addu	t6,a1,a2
    22ac:	85ca0000 	lh	t2,0(t6)
    22b0:	85094a52 	lh	t1,19026(t0)
    22b4:	012a3823 	subu	a3,t1,t2
    22b8:	04e00003 	bltz	a3,22c8 <func_80805EB8+0x150>
    22bc:	00073023 	negu	a2,a3
    22c0:	10000001 	b	22c8 <func_80805EB8+0x150>
    22c4:	00e03025 	move	a2,a3
    22c8:	846f4a50 	lh	t7,19024(v1)
    22cc:	00cf001a 	div	zero,a2,t7
    22d0:	15e00002 	bnez	t7,22dc <func_80805EB8+0x164>
    22d4:	00000000 	nop
    22d8:	0007000d 	break	0x7
    22dc:	2401ffff 	li	at,-1
    22e0:	15e10004 	bne	t7,at,22f4 <func_80805EB8+0x17c>
    22e4:	3c018000 	lui	at,0x8000
    22e8:	14c10002 	bne	a2,at,22f4 <func_80805EB8+0x17c>
    22ec:	00000000 	nop
    22f0:	0006000d 	break	0x6
    22f4:	00003812 	mflo	a3
    22f8:	00073c00 	sll	a3,a3,0x10
    22fc:	012a082a 	slt	at,t1,t2
    2300:	14200004 	bnez	at,2314 <func_80805EB8+0x19c>
    2304:	00073c03 	sra	a3,a3,0x10
    2308:	0127c023 	subu	t8,t1,a3
    230c:	10000003 	b	231c <func_80805EB8+0x1a4>
    2310:	a5184a52 	sh	t8,19026(t0)
    2314:	0127c821 	addu	t9,t1,a3
    2318:	a5194a52 	sh	t9,19026(t0)
    231c:	846e4a50 	lh	t6,19024(v1)
    2320:	3c010002 	lui	at,0x2
    2324:	00240821 	addu	at,at,a0
    2328:	25cfffff 	addiu	t7,t6,-1
    232c:	a42fca50 	sh	t7,-13744(at)
    2330:	84784a50 	lh	t8,19024(v1)
    2334:	00003025 	move	a2,zero
    2338:	5700003d 	bnezl	t8,2430 <func_80805EB8+0x2b8>
    233c:	8fb00004 	lw	s0,4(sp)
    2340:	84794a38 	lh	t9,19000(v1)
    2344:	00063840 	sll	a3,a2,0x1
    2348:	00877021 	addu	t6,a0,a3
    234c:	10d9001e 	beq	a2,t9,23c8 <func_80805EB8+0x250>
    2350:	0006c040 	sll	t8,a2,0x1
    2354:	01c24021 	addu	t0,t6,v0
    2358:	a5004a74 	sh	zero,19060(t0)
    235c:	01877821 	addu	t7,t4,a3
    2360:	95f80000 	lhu	t8,0(t7)
    2364:	8c9901e0 	lw	t9,480(a0)
    2368:	03194821 	addu	t1,t8,t9
    236c:	912e001c 	lbu	t6,28(t1)
    2370:	516e0011 	beql	t3,t6,23b8 <func_80805EB8+0x240>
    2374:	85074a74 	lh	a3,19060(t0)
    2378:	912f001d 	lbu	t7,29(t1)
    237c:	51af000e 	beql	t5,t7,23b8 <func_80805EB8+0x240>
    2380:	85074a74 	lh	a3,19060(t0)
    2384:	9138001e 	lbu	t8,30(t1)
    2388:	5218000b 	beql	s0,t8,23b8 <func_80805EB8+0x240>
    238c:	85074a74 	lh	a3,19060(t0)
    2390:	9139001f 	lbu	t9,31(t1)
    2394:	52390008 	beql	s1,t9,23b8 <func_80805EB8+0x240>
    2398:	85074a74 	lh	a3,19060(t0)
    239c:	912e0020 	lbu	t6,32(t1)
    23a0:	524e0005 	beql	s2,t6,23b8 <func_80805EB8+0x240>
    23a4:	85074a74 	lh	a3,19060(t0)
    23a8:	912f0021 	lbu	t7,33(t1)
    23ac:	556f000a 	bnel	t3,t7,23d8 <func_80805EB8+0x260>
    23b0:	24c60001 	addiu	a2,a2,1
    23b4:	85074a74 	lh	a3,19060(t0)
    23b8:	a5004a86 	sh	zero,19078(t0)
    23bc:	a5074a80 	sh	a3,19072(t0)
    23c0:	10000004 	b	23d4 <func_80805EB8+0x25c>
    23c4:	a5074a7a 	sh	a3,19066(t0)
    23c8:	0098c821 	addu	t9,a0,t8
    23cc:	03227021 	addu	t6,t9,v0
    23d0:	a5c04a7a 	sh	zero,19066(t6)
    23d4:	24c60001 	addiu	a2,a2,1
    23d8:	00063400 	sll	a2,a2,0x10
    23dc:	00063403 	sra	a2,a2,0x10
    23e0:	28c10003 	slti	at,a2,3
    23e4:	5420ffd7 	bnezl	at,2344 <func_80805EB8+0x1cc>
    23e8:	84794a38 	lh	t9,19000(v1)
    23ec:	84664a38 	lh	a2,19000(v1)
    23f0:	3c010002 	lui	at,0x2
    23f4:	00240821 	addu	at,at,a0
    23f8:	00063040 	sll	a2,a2,0x1
    23fc:	00a67821 	addu	t7,a1,a2
    2400:	85f80000 	lh	t8,0(t7)
    2404:	0086c821 	addu	t9,a0,a2
    2408:	03227021 	addu	t6,t9,v0
    240c:	240f0008 	li	t7,8
    2410:	a5d84a52 	sh	t8,19026(t6)
    2414:	a42fca50 	sh	t7,-13744(at)
    2418:	84794a3e 	lh	t9,19006(v1)
    241c:	3c010002 	lui	at,0x2
    2420:	00240821 	addu	at,at,a0
    2424:	27380001 	addiu	t8,t9,1
    2428:	a438ca3e 	sh	t8,-13762(at)
    242c:	8fb00004 	lw	s0,4(sp)
    2430:	8fb10008 	lw	s1,8(sp)
    2434:	8fb2000c 	lw	s2,12(sp)
    2438:	03e00008 	jr	ra
    243c:	27bd0010 	addiu	sp,sp,16

00002440 <func_80806180>:
    2440:	3c050001 	lui	a1,0x1
    2444:	34a58000 	ori	a1,a1,0x8000
    2448:	00851021 	addu	v0,a0,a1
    244c:	844a4a38 	lh	t2,19000(v0)
    2450:	844e4a96 	lh	t6,19094(v0)
    2454:	84584a6e 	lh	t8,19054(v0)
    2458:	84484a70 	lh	t0,19056(v0)
    245c:	000a5840 	sll	t3,t2,0x1
    2460:	008b6021 	addu	t4,a0,t3
    2464:	25cf0019 	addiu	t7,t6,25
    2468:	2719fff1 	addiu	t9,t8,-15
    246c:	2509000f 	addiu	t1,t0,15
    2470:	a44f4a96 	sh	t7,19094(v0)
    2474:	a4594a6e 	sh	t9,19054(v0)
    2478:	a4494a70 	sh	t1,19056(v0)
    247c:	01851821 	addu	v1,t4,a1
    2480:	846d4a8c 	lh	t5,19084(v1)
    2484:	3c010002 	lui	at,0x2
    2488:	00240821 	addu	at,at,a0
    248c:	25ae0019 	addiu	t6,t5,25
    2490:	a46e4a8c 	sh	t6,19084(v1)
    2494:	844f4a50 	lh	t7,19024(v0)
    2498:	24080008 	li	t0,8
    249c:	240a00ff 	li	t2,255
    24a0:	25f8ffff 	addiu	t8,t7,-1
    24a4:	a438ca50 	sh	t8,-13744(at)
    24a8:	84594a50 	lh	t9,19024(v0)
    24ac:	3c010002 	lui	at,0x2
    24b0:	00240821 	addu	at,at,a0
    24b4:	17200017 	bnez	t9,2514 <func_80806180+0xd4>
    24b8:	241800c8 	li	t8,200
    24bc:	a428ca50 	sh	t0,-13744(at)
    24c0:	84494a66 	lh	t1,19046(v0)
    24c4:	3c010002 	lui	at,0x2
    24c8:	00240821 	addu	at,at,a0
    24cc:	a429ca64 	sh	t1,-13724(at)
    24d0:	844c4a38 	lh	t4,19000(v0)
    24d4:	a44a4a6e 	sh	t2,19054(v0)
    24d8:	844b4a6e 	lh	t3,19054(v0)
    24dc:	000c6840 	sll	t5,t4,0x1
    24e0:	008d7021 	addu	t6,a0,t5
    24e4:	01c57821 	addu	t7,t6,a1
    24e8:	a5eb4a8c 	sh	t3,19084(t7)
    24ec:	3c010002 	lui	at,0x2
    24f0:	a4404a70 	sh	zero,19056(v0)
    24f4:	a4584a96 	sh	t8,19094(v0)
    24f8:	00240821 	addu	at,at,a0
    24fc:	24190001 	li	t9,1
    2500:	a439ca38 	sh	t9,-13768(at)
    2504:	3c010002 	lui	at,0x2
    2508:	00240821 	addu	at,at,a0
    250c:	24080018 	li	t0,24
    2510:	a428ca3e 	sh	t0,-13762(at)
    2514:	03e00008 	jr	ra
    2518:	00000000 	nop

0000251c <func_8080625C>:
    251c:	27bdffc8 	addiu	sp,sp,-56
    2520:	3c030001 	lui	v1,0x1
    2524:	34638000 	ori	v1,v1,0x8000
    2528:	afbf0024 	sw	ra,36(sp)
    252c:	afb00020 	sw	s0,32(sp)
    2530:	00834021 	addu	t0,a0,v1
    2534:	850e4a38 	lh	t6,19000(t0)
    2538:	00808025 	move	s0,a0
    253c:	51c00006 	beqzl	t6,2558 <func_8080625C+0x3c>
    2540:	96020020 	lhu	v0,32(s0)
    2544:	948f0020 	lhu	t7,32(a0)
    2548:	31f89000 	andi	t8,t7,0x9000
    254c:	57000007 	bnezl	t8,256c <func_8080625C+0x50>
    2550:	85094a46 	lh	t1,19014(t0)
    2554:	96020020 	lhu	v0,32(s0)
    2558:	2401bfff 	li	at,-16385
    255c:	0041c827 	nor	t9,v0,at
    2560:	1720001e 	bnez	t9,25dc <func_8080625C+0xc0>
    2564:	304d9000 	andi	t5,v0,0x9000
    2568:	85094a46 	lh	t1,19014(t0)
    256c:	3c010002 	lui	at,0x2
    2570:	00300821 	addu	at,at,s0
    2574:	a429ca38 	sh	t1,-13768(at)
    2578:	3c010002 	lui	at,0x2
    257c:	00300821 	addu	at,at,s0
    2580:	240a0006 	li	t2,6
    2584:	a42aca66 	sh	t2,-13722(at)
    2588:	3c010002 	lui	at,0x2
    258c:	00300821 	addu	at,at,s0
    2590:	240b0019 	li	t3,25
    2594:	a42bca3e 	sh	t3,-13762(at)
    2598:	3c010002 	lui	at,0x2
    259c:	24020008 	li	v0,8
    25a0:	3c070000 	lui	a3,0x0
    25a4:	00300821 	addu	at,at,s0
    25a8:	3c0c0000 	lui	t4,0x0
    25ac:	24e70000 	addiu	a3,a3,0
    25b0:	a422ca50 	sh	v0,-13744(at)
    25b4:	258c0000 	addiu	t4,t4,0
    25b8:	3c050000 	lui	a1,0x0
    25bc:	24a50000 	addiu	a1,a1,0
    25c0:	afac0014 	sw	t4,20(sp)
    25c4:	afa70010 	sw	a3,16(sp)
    25c8:	2404483c 	li	a0,18492
    25cc:	0c000000 	jal	0 <func_80803D40>
    25d0:	24060004 	li	a2,4
    25d4:	10000047 	b	26f4 <func_8080625C+0x1d8>
    25d8:	8fbf0024 	lw	ra,36(sp)
    25dc:	11a0002b 	beqz	t5,268c <func_8080625C+0x170>
    25e0:	3c070000 	lui	a3,0x0
    25e4:	850e4a46 	lh	t6,19014(t0)
    25e8:	3c0d0000 	lui	t5,0x0
    25ec:	24e70000 	addiu	a3,a3,0
    25f0:	000e7840 	sll	t7,t6,0x1
    25f4:	020fc021 	addu	t8,s0,t7
    25f8:	0303c821 	addu	t9,t8,v1
    25fc:	a7204a86 	sh	zero,19078(t9)
    2600:	85094a46 	lh	t1,19014(t0)
    2604:	25ad0000 	addiu	t5,t5,0
    2608:	3c050000 	lui	a1,0x0
    260c:	00095040 	sll	t2,t1,0x1
    2610:	020a5821 	addu	t3,s0,t2
    2614:	01631021 	addu	v0,t3,v1
    2618:	844c4a86 	lh	t4,19078(v0)
    261c:	24a50000 	addiu	a1,a1,0
    2620:	240428ba 	li	a0,10426
    2624:	a44c4a28 	sh	t4,18984(v0)
    2628:	afad0014 	sw	t5,20(sp)
    262c:	afa70010 	sw	a3,16(sp)
    2630:	0c000000 	jal	0 <func_80803D40>
    2634:	24060004 	li	a2,4
    2638:	3c010002 	lui	at,0x2
    263c:	24020008 	li	v0,8
    2640:	00300821 	addu	at,at,s0
    2644:	a422ca50 	sh	v0,-13744(at)
    2648:	3c010002 	lui	at,0x2
    264c:	00300821 	addu	at,at,s0
    2650:	240e001b 	li	t6,27
    2654:	a42eca3e 	sh	t6,-13762(at)
    2658:	3c010002 	lui	at,0x2
    265c:	00300821 	addu	at,at,s0
    2660:	a422ca66 	sh	v0,-13722(at)
    2664:	3c014348 	lui	at,0x4348
    2668:	44816000 	mtc1	at,$f12
    266c:	240500ff 	li	a1,255
    2670:	24060014 	li	a2,20
    2674:	0c000000 	jal	0 <func_80803D40>
    2678:	24070096 	li	a3,150
    267c:	240f000f 	li	t7,15
    2680:	3c010000 	lui	at,0x0
    2684:	1000001a 	b	26f0 <func_8080625C+0x1d4>
    2688:	a42f0000 	sh	t7,0(at)
    268c:	85024abc 	lh	v0,19132(t0)
    2690:	3c070000 	lui	a3,0x0
    2694:	24e70000 	addiu	a3,a3,0
    2698:	04400003 	bltz	v0,26a8 <func_8080625C+0x18c>
    269c:	00021823 	negu	v1,v0
    26a0:	10000001 	b	26a8 <func_8080625C+0x18c>
    26a4:	00401825 	move	v1,v0
    26a8:	2861001e 	slti	at,v1,30
    26ac:	14200010 	bnez	at,26f0 <func_8080625C+0x1d4>
    26b0:	24044839 	li	a0,18489
    26b4:	3c180000 	lui	t8,0x0
    26b8:	27180000 	addiu	t8,t8,0
    26bc:	3c050000 	lui	a1,0x0
    26c0:	24a50000 	addiu	a1,a1,0
    26c4:	afb80014 	sw	t8,20(sp)
    26c8:	24060004 	li	a2,4
    26cc:	afa70010 	sw	a3,16(sp)
    26d0:	0c000000 	jal	0 <func_80803D40>
    26d4:	afa80028 	sw	t0,40(sp)
    26d8:	8fa80028 	lw	t0,40(sp)
    26dc:	3c010002 	lui	at,0x2
    26e0:	00300821 	addu	at,at,s0
    26e4:	85194a38 	lh	t9,19000(t0)
    26e8:	3b290001 	xori	t1,t9,0x1
    26ec:	a429ca38 	sh	t1,-13768(at)
    26f0:	8fbf0024 	lw	ra,36(sp)
    26f4:	8fb00020 	lw	s0,32(sp)
    26f8:	27bd0038 	addiu	sp,sp,56
    26fc:	03e00008 	jr	ra
    2700:	00000000 	nop

00002704 <func_80806444>:
    2704:	3c050001 	lui	a1,0x1
    2708:	34a58000 	ori	a1,a1,0x8000
    270c:	00851021 	addu	v0,a0,a1
    2710:	844e4a38 	lh	t6,19000(v0)
    2714:	3c010002 	lui	at,0x2
    2718:	00240821 	addu	at,at,a0
    271c:	000e7840 	sll	t7,t6,0x1
    2720:	008fc021 	addu	t8,a0,t7
    2724:	03051821 	addu	v1,t8,a1
    2728:	84794a8c 	lh	t9,19084(v1)
    272c:	2728ffe7 	addiu	t0,t9,-25
    2730:	a4684a8c 	sh	t0,19084(v1)
    2734:	84494a38 	lh	t1,19000(v0)
    2738:	00095040 	sll	t2,t1,0x1
    273c:	008a5821 	addu	t3,a0,t2
    2740:	01651821 	addu	v1,t3,a1
    2744:	846c4a7a 	lh	t4,19066(v1)
    2748:	24090008 	li	t1,8
    274c:	258d0019 	addiu	t5,t4,25
    2750:	a46d4a7a 	sh	t5,19066(v1)
    2754:	844e4a96 	lh	t6,19094(v0)
    2758:	84584a50 	lh	t8,19024(v0)
    275c:	25cfffe7 	addiu	t7,t6,-25
    2760:	a44f4a96 	sh	t7,19094(v0)
    2764:	2719ffff 	addiu	t9,t8,-1
    2768:	a439ca50 	sh	t9,-13744(at)
    276c:	84484a50 	lh	t0,19024(v0)
    2770:	3c010002 	lui	at,0x2
    2774:	00240821 	addu	at,at,a0
    2778:	1500000c 	bnez	t0,27ac <func_80806444+0xa8>
    277c:	00000000 	nop
    2780:	a429ca50 	sh	t1,-13744(at)
    2784:	844a4a38 	lh	t2,19000(v0)
    2788:	3c010002 	lui	at,0x2
    278c:	00240821 	addu	at,at,a0
    2790:	000a5840 	sll	t3,t2,0x1
    2794:	008b6021 	addu	t4,a0,t3
    2798:	01856821 	addu	t5,t4,a1
    279c:	a5a04a8c 	sh	zero,19084(t5)
    27a0:	844e4a3e 	lh	t6,19006(v0)
    27a4:	25cf0001 	addiu	t7,t6,1
    27a8:	a42fca3e 	sh	t7,-13762(at)
    27ac:	03e00008 	jr	ra
    27b0:	00000000 	nop

000027b4 <func_808064F4>:
    27b4:	27bdfff0 	addiu	sp,sp,-16
    27b8:	3c030001 	lui	v1,0x1
    27bc:	34638000 	ori	v1,v1,0x8000
    27c0:	afb1000c 	sw	s1,12(sp)
    27c4:	afb00008 	sw	s0,8(sp)
    27c8:	00831021 	addu	v0,a0,v1
    27cc:	84464a38 	lh	a2,19000(v0)
    27d0:	3c050000 	lui	a1,0x0
    27d4:	24a50000 	addiu	a1,a1,0
    27d8:	00063040 	sll	a2,a2,0x1
    27dc:	00867021 	addu	t6,a0,a2
    27e0:	01c33821 	addu	a3,t6,v1
    27e4:	00a67821 	addu	t7,a1,a2
    27e8:	85e90000 	lh	t1,0(t7)
    27ec:	84e84a52 	lh	t0,19026(a3)
    27f0:	24100044 	li	s0,68
    27f4:	24110041 	li	s1,65
    27f8:	01095023 	subu	t2,t0,t1
    27fc:	05400003 	bltz	t2,280c <func_808064F4+0x58>
    2800:	240d004c 	li	t5,76
    2804:	10000002 	b	2810 <func_808064F4+0x5c>
    2808:	01403025 	move	a2,t2
    280c:	000a3023 	negu	a2,t2
    2810:	84584a50 	lh	t8,19024(v0)
    2814:	240c0045 	li	t4,69
    2818:	3c0b0000 	lui	t3,0x0
    281c:	00d8001a 	div	zero,a2,t8
    2820:	17000002 	bnez	t8,282c <func_808064F4+0x78>
    2824:	00000000 	nop
    2828:	0007000d 	break	0x7
    282c:	2401ffff 	li	at,-1
    2830:	17010004 	bne	t8,at,2844 <func_808064F4+0x90>
    2834:	3c018000 	lui	at,0x8000
    2838:	14c10002 	bne	a2,at,2844 <func_808064F4+0x90>
    283c:	00000000 	nop
    2840:	0006000d 	break	0x6
    2844:	00005012 	mflo	t2
    2848:	000a5400 	sll	t2,t2,0x10
    284c:	0109082a 	slt	at,t0,t1
    2850:	14200004 	bnez	at,2864 <func_808064F4+0xb0>
    2854:	000a5403 	sra	t2,t2,0x10
    2858:	010ac823 	subu	t9,t0,t2
    285c:	10000003 	b	286c <func_808064F4+0xb8>
    2860:	a4f94a52 	sh	t9,19026(a3)
    2864:	010a7021 	addu	t6,t0,t2
    2868:	a4ee4a52 	sh	t6,19026(a3)
    286c:	00003025 	move	a2,zero
    2870:	256b0000 	addiu	t3,t3,0
    2874:	240a005a 	li	t2,90
    2878:	844f4a38 	lh	t7,19000(v0)
    287c:	00063840 	sll	a3,a2,0x1
    2880:	0087c021 	addu	t8,a0,a3
    2884:	10cf0020 	beq	a2,t7,2908 <func_808064F4+0x154>
    2888:	03034021 	addu	t0,t8,v1
    288c:	85194a74 	lh	t9,19060(t0)
    2890:	01677821 	addu	t7,t3,a3
    2894:	272e0019 	addiu	t6,t9,25
    2898:	a50e4a74 	sh	t6,19060(t0)
    289c:	8c9901e0 	lw	t9,480(a0)
    28a0:	95f80000 	lhu	t8,0(t7)
    28a4:	03194821 	addu	t1,t8,t9
    28a8:	912e001c 	lbu	t6,28(t1)
    28ac:	514e0011 	beql	t2,t6,28f4 <func_808064F4+0x140>
    28b0:	85074a74 	lh	a3,19060(t0)
    28b4:	912f001d 	lbu	t7,29(t1)
    28b8:	518f000e 	beql	t4,t7,28f4 <func_808064F4+0x140>
    28bc:	85074a74 	lh	a3,19060(t0)
    28c0:	9138001e 	lbu	t8,30(t1)
    28c4:	51b8000b 	beql	t5,t8,28f4 <func_808064F4+0x140>
    28c8:	85074a74 	lh	a3,19060(t0)
    28cc:	9139001f 	lbu	t9,31(t1)
    28d0:	52190008 	beql	s0,t9,28f4 <func_808064F4+0x140>
    28d4:	85074a74 	lh	a3,19060(t0)
    28d8:	912e0020 	lbu	t6,32(t1)
    28dc:	522e0005 	beql	s1,t6,28f4 <func_808064F4+0x140>
    28e0:	85074a74 	lh	a3,19060(t0)
    28e4:	912f0021 	lbu	t7,33(t1)
    28e8:	554f0008 	bnel	t2,t7,290c <func_808064F4+0x158>
    28ec:	24c60001 	addiu	a2,a2,1
    28f0:	85074a74 	lh	a3,19060(t0)
    28f4:	85184a86 	lh	t8,19078(t0)
    28f8:	a5074a80 	sh	a3,19072(t0)
    28fc:	2719001f 	addiu	t9,t8,31
    2900:	a5194a86 	sh	t9,19078(t0)
    2904:	a5074a7a 	sh	a3,19066(t0)
    2908:	24c60001 	addiu	a2,a2,1
    290c:	00063400 	sll	a2,a2,0x10
    2910:	00063403 	sra	a2,a2,0x10
    2914:	28c10003 	slti	at,a2,3
    2918:	5420ffd8 	bnezl	at,287c <func_808064F4+0xc8>
    291c:	844f4a38 	lh	t7,19000(v0)
    2920:	844e4a6e 	lh	t6,19054(v0)
    2924:	84584a70 	lh	t8,19056(v0)
    2928:	3c010002 	lui	at,0x2
    292c:	25cfffe1 	addiu	t7,t6,-31
    2930:	844e4a50 	lh	t6,19024(v0)
    2934:	a44f4a6e 	sh	t7,19054(v0)
    2938:	2719001f 	addiu	t9,t8,31
    293c:	a4594a70 	sh	t9,19056(v0)
    2940:	00240821 	addu	at,at,a0
    2944:	25cfffff 	addiu	t7,t6,-1
    2948:	a42fca50 	sh	t7,-13744(at)
    294c:	84584a50 	lh	t8,19024(v0)
    2950:	5700001c 	bnezl	t8,29c4 <func_808064F4+0x210>
    2954:	8fb00008 	lw	s0,8(sp)
    2958:	84464a38 	lh	a2,19000(v0)
    295c:	3c010002 	lui	at,0x2
    2960:	00240821 	addu	at,at,a0
    2964:	00063040 	sll	a2,a2,0x1
    2968:	00a6c821 	addu	t9,a1,a2
    296c:	872e0000 	lh	t6,0(t9)
    2970:	00867821 	addu	t7,a0,a2
    2974:	01e3c021 	addu	t8,t7,v1
    2978:	24190008 	li	t9,8
    297c:	a70e4a52 	sh	t6,19026(t8)
    2980:	a439ca50 	sh	t9,-13744(at)
    2984:	3c010002 	lui	at,0x2
    2988:	00240821 	addu	at,at,a0
    298c:	240f0003 	li	t7,3
    2990:	a42fca38 	sh	t7,-13768(at)
    2994:	844e4a66 	lh	t6,19046(v0)
    2998:	3c010002 	lui	at,0x2
    299c:	00240821 	addu	at,at,a0
    29a0:	a42eca64 	sh	t6,-13724(at)
    29a4:	241800ff 	li	t8,255
    29a8:	3c010002 	lui	at,0x2
    29ac:	a4584a6e 	sh	t8,19054(v0)
    29b0:	a4404a70 	sh	zero,19056(v0)
    29b4:	00240821 	addu	at,at,a0
    29b8:	24190015 	li	t9,21
    29bc:	a439ca3e 	sh	t9,-13762(at)
    29c0:	8fb00008 	lw	s0,8(sp)
    29c4:	8fb1000c 	lw	s1,12(sp)
    29c8:	03e00008 	jr	ra
    29cc:	27bd0010 	addiu	sp,sp,16

000029d0 <func_80806710>:
    29d0:	3c030000 	lui	v1,0x0
    29d4:	24630000 	addiu	v1,v1,0
    29d8:	84620000 	lh	v0,0(v1)
    29dc:	27bdffd0 	addiu	sp,sp,-48
    29e0:	afbf001c 	sw	ra,28(sp)
    29e4:	14400060 	bnez	v0,2b68 <func_80806710+0x198>
    29e8:	244cffff 	addiu	t4,v0,-1
    29ec:	3c060001 	lui	a2,0x1
    29f0:	34c68000 	ori	a2,a2,0x8000
    29f4:	00861021 	addu	v0,a0,a2
    29f8:	84434a50 	lh	v1,19024(v0)
    29fc:	24010008 	li	at,8
    2a00:	24050001 	li	a1,1
    2a04:	14610002 	bne	v1,at,2a10 <func_80806710+0x40>
    2a08:	3c010000 	lui	at,0x0
    2a0c:	a4250000 	sh	a1,0(at)
    2a10:	3c050000 	lui	a1,0x0
    2a14:	10600014 	beqz	v1,2a68 <func_80806710+0x98>
    2a18:	84a50000 	lh	a1,0(a1)
    2a1c:	84484a46 	lh	t0,19014(v0)
    2a20:	844e4a6e 	lh	t6,19054(v0)
    2a24:	84584a70 	lh	t8,19056(v0)
    2a28:	00084840 	sll	t1,t0,0x1
    2a2c:	00895021 	addu	t2,a0,t1
    2a30:	25cfffe1 	addiu	t7,t6,-31
    2a34:	2719001f 	addiu	t9,t8,31
    2a38:	a44f4a6e 	sh	t7,19054(v0)
    2a3c:	a4594a70 	sh	t9,19056(v0)
    2a40:	01461821 	addu	v1,t2,a2
    2a44:	846b4a8c 	lh	t3,19084(v1)
    2a48:	256cffe7 	addiu	t4,t3,-25
    2a4c:	a46c4a8c 	sh	t4,19084(v1)
    2a50:	844d4a96 	lh	t5,19094(v0)
    2a54:	844f4a98 	lh	t7,19096(v0)
    2a58:	25aeffe7 	addiu	t6,t5,-25
    2a5c:	25f8ffe7 	addiu	t8,t7,-25
    2a60:	a44e4a96 	sh	t6,19094(v0)
    2a64:	a4584a98 	sh	t8,19096(v0)
    2a68:	84594a46 	lh	t9,19014(v0)
    2a6c:	3c010002 	lui	at,0x2
    2a70:	00240821 	addu	at,at,a0
    2a74:	00194040 	sll	t0,t9,0x1
    2a78:	00884821 	addu	t1,a0,t0
    2a7c:	01261821 	addu	v1,t1,a2
    2a80:	846a4a4a 	lh	t2,19018(v1)
    2a84:	01455823 	subu	t3,t2,a1
    2a88:	a46b4a4a 	sh	t3,19018(v1)
    2a8c:	844c4a50 	lh	t4,19024(v0)
    2a90:	24a50002 	addiu	a1,a1,2
    2a94:	00052c00 	sll	a1,a1,0x10
    2a98:	258dffff 	addiu	t5,t4,-1
    2a9c:	a42dca50 	sh	t5,-13744(at)
    2aa0:	00052c03 	sra	a1,a1,0x10
    2aa4:	3c010000 	lui	at,0x0
    2aa8:	a4250000 	sh	a1,0(at)
    2aac:	844e4a50 	lh	t6,19024(v0)
    2ab0:	248501e0 	addiu	a1,a0,480
    2ab4:	55c0003b 	bnezl	t6,2ba4 <func_80806710+0x1d4>
    2ab8:	8fbf001c 	lw	ra,28(sp)
    2abc:	afa20020 	sw	v0,32(sp)
    2ac0:	0c000000 	jal	0 <func_80803D40>
    2ac4:	afa40030 	sw	a0,48(sp)
    2ac8:	8fa20020 	lw	v0,32(sp)
    2acc:	8fa40030 	lw	a0,48(sp)
    2ad0:	3c010002 	lui	at,0x2
    2ad4:	844f4a66 	lh	t7,19046(v0)
    2ad8:	00240821 	addu	at,at,a0
    2adc:	3c060001 	lui	a2,0x1
    2ae0:	a42fca64 	sh	t7,-13724(at)
    2ae4:	84594a46 	lh	t9,19014(v0)
    2ae8:	34c68000 	ori	a2,a2,0x8000
    2aec:	241800ff 	li	t8,255
    2af0:	00194040 	sll	t0,t9,0x1
    2af4:	00884821 	addu	t1,a0,t0
    2af8:	01265021 	addu	t2,t1,a2
    2afc:	a4584a6e 	sh	t8,19054(v0)
    2b00:	a5404a86 	sh	zero,19078(t2)
    2b04:	844b4a46 	lh	t3,19014(v0)
    2b08:	3c010002 	lui	at,0x2
    2b0c:	00240821 	addu	at,at,a0
    2b10:	000b6040 	sll	t4,t3,0x1
    2b14:	008c6821 	addu	t5,a0,t4
    2b18:	01a61821 	addu	v1,t5,a2
    2b1c:	846e4a86 	lh	t6,19078(v1)
    2b20:	a4404a98 	sh	zero,19096(v0)
    2b24:	84454a98 	lh	a1,19096(v0)
    2b28:	a44e4a70 	sh	t6,19056(v0)
    2b2c:	240b005a 	li	t3,90
    2b30:	a4454a96 	sh	a1,19094(v0)
    2b34:	a4654a7a 	sh	a1,19066(v1)
    2b38:	844f4a46 	lh	t7,19014(v0)
    2b3c:	000fc040 	sll	t8,t7,0x1
    2b40:	0098c821 	addu	t9,a0,t8
    2b44:	03264021 	addu	t0,t9,a2
    2b48:	a5054a8c 	sh	a1,19084(t0)
    2b4c:	84494a3e 	lh	t1,19006(v0)
    2b50:	252a0001 	addiu	t2,t1,1
    2b54:	a42aca3e 	sh	t2,-13762(at)
    2b58:	3c010002 	lui	at,0x2
    2b5c:	00240821 	addu	at,at,a0
    2b60:	1000000f 	b	2ba0 <func_80806710+0x1d0>
    2b64:	a42bca50 	sh	t3,-13744(at)
    2b68:	a46c0000 	sh	t4,0(v1)
    2b6c:	846d0000 	lh	t5,0(v1)
    2b70:	3c070000 	lui	a3,0x0
    2b74:	24e70000 	addiu	a3,a3,0
    2b78:	15a00009 	bnez	t5,2ba0 <func_80806710+0x1d0>
    2b7c:	24045801 	li	a0,22529
    2b80:	3c0e0000 	lui	t6,0x0
    2b84:	25ce0000 	addiu	t6,t6,0
    2b88:	3c050000 	lui	a1,0x0
    2b8c:	24a50000 	addiu	a1,a1,0
    2b90:	afae0014 	sw	t6,20(sp)
    2b94:	24060004 	li	a2,4
    2b98:	0c000000 	jal	0 <func_80803D40>
    2b9c:	afa70010 	sw	a3,16(sp)
    2ba0:	8fbf001c 	lw	ra,28(sp)
    2ba4:	27bd0030 	addiu	sp,sp,48
    2ba8:	03e00008 	jr	ra
    2bac:	00000000 	nop

00002bb0 <func_808068F0>:
    2bb0:	27bdffd8 	addiu	sp,sp,-40
    2bb4:	afbf0024 	sw	ra,36(sp)
    2bb8:	afb00020 	sw	s0,32(sp)
    2bbc:	948e0020 	lhu	t6,32(a0)
    2bc0:	3c010001 	lui	at,0x1
    2bc4:	00808025 	move	s0,a0
    2bc8:	31cfd000 	andi	t7,t6,0xd000
    2bcc:	15e00009 	bnez	t7,2bf4 <func_808068F0+0x44>
    2bd0:	34218000 	ori	at,at,0x8000
    2bd4:	00811021 	addu	v0,a0,at
    2bd8:	84584a50 	lh	t8,19024(v0)
    2bdc:	3c010002 	lui	at,0x2
    2be0:	00240821 	addu	at,at,a0
    2be4:	2719ffff 	addiu	t9,t8,-1
    2be8:	a439ca50 	sh	t9,-13744(at)
    2bec:	84484a50 	lh	t0,19024(v0)
    2bf0:	1500001b 	bnez	t0,2c60 <func_808068F0+0xb0>
    2bf4:	3c010001 	lui	at,0x1
    2bf8:	34218000 	ori	at,at,0x8000
    2bfc:	02011021 	addu	v0,s0,at
    2c00:	3c010002 	lui	at,0x2
    2c04:	a4404a58 	sh	zero,19032(v0)
    2c08:	00300821 	addu	at,at,s0
    2c0c:	24090008 	li	t1,8
    2c10:	a429ca50 	sh	t1,-13744(at)
    2c14:	3c010002 	lui	at,0x2
    2c18:	00300821 	addu	at,at,s0
    2c1c:	a420ca66 	sh	zero,-13722(at)
    2c20:	844a4a3e 	lh	t2,19006(v0)
    2c24:	3c010002 	lui	at,0x2
    2c28:	3c070000 	lui	a3,0x0
    2c2c:	00300821 	addu	at,at,s0
    2c30:	3c0c0000 	lui	t4,0x0
    2c34:	254b0001 	addiu	t3,t2,1
    2c38:	24e70000 	addiu	a3,a3,0
    2c3c:	a42bca3e 	sh	t3,-13762(at)
    2c40:	258c0000 	addiu	t4,t4,0
    2c44:	3c050000 	lui	a1,0x0
    2c48:	24a50000 	addiu	a1,a1,0
    2c4c:	afac0014 	sw	t4,20(sp)
    2c50:	afa70010 	sw	a3,16(sp)
    2c54:	2404483c 	li	a0,18492
    2c58:	0c000000 	jal	0 <func_80803D40>
    2c5c:	24060004 	li	a2,4
    2c60:	8fbf0024 	lw	ra,36(sp)
    2c64:	8fb00020 	lw	s0,32(sp)
    2c68:	27bd0028 	addiu	sp,sp,40
    2c6c:	03e00008 	jr	ra
    2c70:	00000000 	nop

00002c74 <func_808069B4>:
    2c74:	3c010001 	lui	at,0x1
    2c78:	27bdfff0 	addiu	sp,sp,-16
    2c7c:	34218000 	ori	at,at,0x8000
    2c80:	afb1000c 	sw	s1,12(sp)
    2c84:	afb00008 	sw	s0,8(sp)
    2c88:	00811021 	addu	v0,a0,at
    2c8c:	00201821 	move	v1,at
    2c90:	00003025 	move	a2,zero
    2c94:	00067040 	sll	t6,a2,0x1
    2c98:	008e7821 	addu	t7,a0,t6
    2c9c:	01e34021 	addu	t0,t7,v1
    2ca0:	85094a52 	lh	t1,19026(t0)
    2ca4:	24c60001 	addiu	a2,a2,1
    2ca8:	00063400 	sll	a2,a2,0x10
    2cac:	05200003 	bltz	t1,2cbc <func_808069B4+0x48>
    2cb0:	00063403 	sra	a2,a2,0x10
    2cb4:	10000002 	b	2cc0 <func_808069B4+0x4c>
    2cb8:	01202825 	move	a1,t1
    2cbc:	00092823 	negu	a1,t1
    2cc0:	84584a50 	lh	t8,19024(v0)
    2cc4:	00b8001a 	div	zero,a1,t8
    2cc8:	17000002 	bnez	t8,2cd4 <func_808069B4+0x60>
    2ccc:	00000000 	nop
    2cd0:	0007000d 	break	0x7
    2cd4:	2401ffff 	li	at,-1
    2cd8:	17010004 	bne	t8,at,2cec <func_808069B4+0x78>
    2cdc:	3c018000 	lui	at,0x8000
    2ce0:	14a10002 	bne	a1,at,2cec <func_808069B4+0x78>
    2ce4:	00000000 	nop
    2ce8:	0006000d 	break	0x6
    2cec:	00003812 	mflo	a3
    2cf0:	00073c00 	sll	a3,a3,0x10
    2cf4:	28c10005 	slti	at,a2,5
    2cf8:	05200004 	bltz	t1,2d0c <func_808069B4+0x98>
    2cfc:	00073c03 	sra	a3,a3,0x10
    2d00:	0127c823 	subu	t9,t1,a3
    2d04:	10000003 	b	2d14 <func_808069B4+0xa0>
    2d08:	a5194a52 	sh	t9,19026(t0)
    2d0c:	01277021 	addu	t6,t1,a3
    2d10:	a50e4a52 	sh	t6,19026(t0)
    2d14:	5420ffe0 	bnezl	at,2c98 <func_808069B4+0x24>
    2d18:	00067040 	sll	t6,a2,0x1
    2d1c:	3c0b0000 	lui	t3,0x0
    2d20:	256b0000 	addiu	t3,t3,0
    2d24:	00003025 	move	a2,zero
    2d28:	248501e0 	addiu	a1,a0,480
    2d2c:	24110041 	li	s1,65
    2d30:	24100044 	li	s0,68
    2d34:	240d004c 	li	t5,76
    2d38:	240c0045 	li	t4,69
    2d3c:	240a005a 	li	t2,90
    2d40:	00063840 	sll	a3,a2,0x1
    2d44:	00877821 	addu	t7,a0,a3
    2d48:	01e34021 	addu	t0,t7,v1
    2d4c:	85184a74 	lh	t8,19060(t0)
    2d50:	01677021 	addu	t6,t3,a3
    2d54:	24c60001 	addiu	a2,a2,1
    2d58:	27190019 	addiu	t9,t8,25
    2d5c:	a5194a74 	sh	t9,19060(t0)
    2d60:	8cb80000 	lw	t8,0(a1)
    2d64:	95cf0000 	lhu	t7,0(t6)
    2d68:	00063400 	sll	a2,a2,0x10
    2d6c:	00063403 	sra	a2,a2,0x10
    2d70:	01f84821 	addu	t1,t7,t8
    2d74:	9139001c 	lbu	t9,28(t1)
    2d78:	28c10003 	slti	at,a2,3
    2d7c:	51590011 	beql	t2,t9,2dc4 <func_808069B4+0x150>
    2d80:	85074a74 	lh	a3,19060(t0)
    2d84:	912e001d 	lbu	t6,29(t1)
    2d88:	518e000e 	beql	t4,t6,2dc4 <func_808069B4+0x150>
    2d8c:	85074a74 	lh	a3,19060(t0)
    2d90:	912f001e 	lbu	t7,30(t1)
    2d94:	51af000b 	beql	t5,t7,2dc4 <func_808069B4+0x150>
    2d98:	85074a74 	lh	a3,19060(t0)
    2d9c:	9138001f 	lbu	t8,31(t1)
    2da0:	52180008 	beql	s0,t8,2dc4 <func_808069B4+0x150>
    2da4:	85074a74 	lh	a3,19060(t0)
    2da8:	91390020 	lbu	t9,32(t1)
    2dac:	52390005 	beql	s1,t9,2dc4 <func_808069B4+0x150>
    2db0:	85074a74 	lh	a3,19060(t0)
    2db4:	912e0021 	lbu	t6,33(t1)
    2db8:	154e0007 	bne	t2,t6,2dd8 <func_808069B4+0x164>
    2dbc:	00000000 	nop
    2dc0:	85074a74 	lh	a3,19060(t0)
    2dc4:	850f4a86 	lh	t7,19078(t0)
    2dc8:	a5074a80 	sh	a3,19072(t0)
    2dcc:	25f8001f 	addiu	t8,t7,31
    2dd0:	a5184a86 	sh	t8,19078(t0)
    2dd4:	a5074a7a 	sh	a3,19066(t0)
    2dd8:	5420ffda 	bnezl	at,2d44 <func_808069B4+0xd0>
    2ddc:	00063840 	sll	a3,a2,0x1
    2de0:	84594a46 	lh	t9,19014(v0)
    2de4:	00197040 	sll	t6,t9,0x1
    2de8:	008e7821 	addu	t7,a0,t6
    2dec:	01e32821 	addu	a1,t7,v1
    2df0:	84b84a74 	lh	t8,19060(a1)
    2df4:	241900c8 	li	t9,200
    2df8:	2b0100c8 	slti	at,t8,200
    2dfc:	54200003 	bnezl	at,2e0c <func_808069B4+0x198>
    2e00:	844e4a6e 	lh	t6,19054(v0)
    2e04:	a4b94a74 	sh	t9,19060(a1)
    2e08:	844e4a6e 	lh	t6,19054(v0)
    2e0c:	84584a70 	lh	t8,19056(v0)
    2e10:	3c010002 	lui	at,0x2
    2e14:	25cfffe1 	addiu	t7,t6,-31
    2e18:	844e4a50 	lh	t6,19024(v0)
    2e1c:	a44f4a6e 	sh	t7,19054(v0)
    2e20:	2719001f 	addiu	t9,t8,31
    2e24:	a4594a70 	sh	t9,19056(v0)
    2e28:	00240821 	addu	at,at,a0
    2e2c:	25cfffff 	addiu	t7,t6,-1
    2e30:	a42fca50 	sh	t7,-13744(at)
    2e34:	84584a50 	lh	t8,19024(v0)
    2e38:	3c010002 	lui	at,0x2
    2e3c:	57000020 	bnezl	t8,2ec0 <func_808069B4+0x24c>
    2e40:	84474a92 	lh	a3,19090(v0)
    2e44:	84594a46 	lh	t9,19014(v0)
    2e48:	00240821 	addu	at,at,a0
    2e4c:	3c050000 	lui	a1,0x0
    2e50:	00197040 	sll	t6,t9,0x1
    2e54:	008e7821 	addu	t7,a0,t6
    2e58:	01e3c021 	addu	t8,t7,v1
    2e5c:	a7004a4a 	sh	zero,19018(t8)
    2e60:	24190046 	li	t9,70
    2e64:	a4594aa8 	sh	t9,19112(v0)
    2e68:	240e0001 	li	t6,1
    2e6c:	a42ecaaa 	sh	t6,-13654(at)
    2e70:	8ca50000 	lw	a1,0(a1)
    2e74:	241800c8 	li	t8,200
    2e78:	3c010002 	lui	at,0x2
    2e7c:	84af0adc 	lh	t7,2780(a1)
    2e80:	00240821 	addu	at,at,a0
    2e84:	a4af0ada 	sh	t7,2778(a1)
    2e88:	a4404a98 	sh	zero,19096(v0)
    2e8c:	84594a98 	lh	t9,19096(v0)
    2e90:	844e4a66 	lh	t6,19046(v0)
    2e94:	a4584a92 	sh	t8,19090(v0)
    2e98:	a4594a96 	sh	t9,19094(v0)
    2e9c:	a42eca64 	sh	t6,-13724(at)
    2ea0:	240f00ff 	li	t7,255
    2ea4:	3c010002 	lui	at,0x2
    2ea8:	a44f4a6e 	sh	t7,19054(v0)
    2eac:	a4404a70 	sh	zero,19056(v0)
    2eb0:	00240821 	addu	at,at,a0
    2eb4:	24180002 	li	t8,2
    2eb8:	a438ca3e 	sh	t8,-13762(at)
    2ebc:	84474a92 	lh	a3,19090(v0)
    2ec0:	3c010002 	lui	at,0x2
    2ec4:	00240821 	addu	at,at,a0
    2ec8:	a4474a94 	sh	a3,19092(v0)
    2ecc:	a427ca9a 	sh	a3,-13670(at)
    2ed0:	8fb1000c 	lw	s1,12(sp)
    2ed4:	8fb00008 	lw	s0,8(sp)
    2ed8:	03e00008 	jr	ra
    2edc:	27bd0010 	addiu	sp,sp,16

00002ee0 <func_80806C20>:
    2ee0:	3c010001 	lui	at,0x1
    2ee4:	34218000 	ori	at,at,0x8000
    2ee8:	00814021 	addu	t0,a0,at
    2eec:	00204821 	move	t1,at
    2ef0:	00001025 	move	v0,zero
    2ef4:	00027040 	sll	t6,v0,0x1
    2ef8:	008e7821 	addu	t7,a0,t6
    2efc:	01e93021 	addu	a2,t7,t1
    2f00:	84c74a52 	lh	a3,19026(a2)
    2f04:	24420001 	addiu	v0,v0,1
    2f08:	00021400 	sll	v0,v0,0x10
    2f0c:	04e00003 	bltz	a3,2f1c <func_80806C20+0x3c>
    2f10:	00021403 	sra	v0,v0,0x10
    2f14:	10000002 	b	2f20 <func_80806C20+0x40>
    2f18:	00e01825 	move	v1,a3
    2f1c:	00071823 	negu	v1,a3
    2f20:	85184a50 	lh	t8,19024(t0)
    2f24:	0078001a 	div	zero,v1,t8
    2f28:	17000002 	bnez	t8,2f34 <func_80806C20+0x54>
    2f2c:	00000000 	nop
    2f30:	0007000d 	break	0x7
    2f34:	2401ffff 	li	at,-1
    2f38:	17010004 	bne	t8,at,2f4c <func_80806C20+0x6c>
    2f3c:	3c018000 	lui	at,0x8000
    2f40:	14610002 	bne	v1,at,2f4c <func_80806C20+0x6c>
    2f44:	00000000 	nop
    2f48:	0006000d 	break	0x6
    2f4c:	00002812 	mflo	a1
    2f50:	00052c00 	sll	a1,a1,0x10
    2f54:	28410005 	slti	at,v0,5
    2f58:	04e00004 	bltz	a3,2f6c <func_80806C20+0x8c>
    2f5c:	00052c03 	sra	a1,a1,0x10
    2f60:	00e5c823 	subu	t9,a3,a1
    2f64:	10000003 	b	2f74 <func_80806C20+0x94>
    2f68:	a4d94a52 	sh	t9,19026(a2)
    2f6c:	00e55021 	addu	t2,a3,a1
    2f70:	a4ca4a52 	sh	t2,19026(a2)
    2f74:	5420ffe0 	bnezl	at,2ef8 <func_80806C20+0x18>
    2f78:	00027040 	sll	t6,v0,0x1
    2f7c:	850b4a92 	lh	t3,19090(t0)
    2f80:	850d4a94 	lh	t5,19092(t0)
    2f84:	850f4a9a 	lh	t7,19098(t0)
    2f88:	3c010002 	lui	at,0x2
    2f8c:	256c0019 	addiu	t4,t3,25
    2f90:	25ae0019 	addiu	t6,t5,25
    2f94:	a50c4a92 	sh	t4,19090(t0)
    2f98:	a50e4a94 	sh	t6,19092(t0)
    2f9c:	00240821 	addu	at,at,a0
    2fa0:	25f80019 	addiu	t8,t7,25
    2fa4:	a438ca9a 	sh	t8,-13670(at)
    2fa8:	85194a98 	lh	t9,19096(t0)
    2fac:	3c010002 	lui	at,0x2
    2fb0:	00240821 	addu	at,at,a0
    2fb4:	272affce 	addiu	t2,t9,-50
    2fb8:	a50a4a98 	sh	t2,19096(t0)
    2fbc:	850b4a98 	lh	t3,19096(t0)
    2fc0:	3c020000 	lui	v0,0x0
    2fc4:	5d600003 	bgtzl	t3,2fd4 <func_80806C20+0xf4>
    2fc8:	850c4a6e 	lh	t4,19054(t0)
    2fcc:	a5004a98 	sh	zero,19096(t0)
    2fd0:	850c4a6e 	lh	t4,19054(t0)
    2fd4:	850e4a70 	lh	t6,19056(t0)
    2fd8:	85184a50 	lh	t8,19024(t0)
    2fdc:	258dffe1 	addiu	t5,t4,-31
    2fe0:	25cf001f 	addiu	t7,t6,31
    2fe4:	a50d4a6e 	sh	t5,19054(t0)
    2fe8:	a50f4a70 	sh	t7,19056(t0)
    2fec:	2719ffff 	addiu	t9,t8,-1
    2ff0:	a439ca50 	sh	t9,-13744(at)
    2ff4:	850a4a50 	lh	t2,19024(t0)
    2ff8:	240b0046 	li	t3,70
    2ffc:	3c010002 	lui	at,0x2
    3000:	15400015 	bnez	t2,3058 <func_80806C20+0x178>
    3004:	240c0001 	li	t4,1
    3008:	a50b4aa8 	sh	t3,19112(t0)
    300c:	00240821 	addu	at,at,a0
    3010:	a42ccaaa 	sh	t4,-13654(at)
    3014:	8c420000 	lw	v0,0(v0)
    3018:	240e00c8 	li	t6,200
    301c:	3c010002 	lui	at,0x2
    3020:	844d0adc 	lh	t5,2780(v0)
    3024:	00240821 	addu	at,at,a0
    3028:	241800ff 	li	t8,255
    302c:	a44d0ada 	sh	t5,2778(v0)
    3030:	850f4a66 	lh	t7,19046(t0)
    3034:	a50e4a92 	sh	t6,19090(t0)
    3038:	a5004a98 	sh	zero,19096(t0)
    303c:	a42fca64 	sh	t7,-13724(at)
    3040:	3c010002 	lui	at,0x2
    3044:	a5184a6e 	sh	t8,19054(t0)
    3048:	a5004a70 	sh	zero,19056(t0)
    304c:	00240821 	addu	at,at,a0
    3050:	24190002 	li	t9,2
    3054:	a439ca3e 	sh	t9,-13762(at)
    3058:	85024a92 	lh	v0,19090(t0)
    305c:	3c010002 	lui	at,0x2
    3060:	00240821 	addu	at,at,a0
    3064:	a5024a94 	sh	v0,19092(t0)
    3068:	03e00008 	jr	ra
    306c:	a422ca9a 	sh	v0,-13670(at)

00003070 <func_80806DB0>:
    3070:	27bdffa8 	addiu	sp,sp,-88
    3074:	afa5005c 	sw	a1,92(sp)
    3078:	afa60060 	sw	a2,96(sp)
    307c:	00802825 	move	a1,a0
    3080:	afbf0014 	sw	ra,20(sp)
    3084:	afa40058 	sw	a0,88(sp)
    3088:	3c060000 	lui	a2,0x0
    308c:	24c60000 	addiu	a2,a2,0
    3090:	afa50058 	sw	a1,88(sp)
    3094:	27a40044 	addiu	a0,sp,68
    3098:	0c000000 	jal	0 <func_80803D40>
    309c:	2407006e 	li	a3,110
    30a0:	8fa50058 	lw	a1,88(sp)
    30a4:	3c0ffd90 	lui	t7,0xfd90
    30a8:	3c090708 	lui	t1,0x708
    30ac:	8ca202c0 	lw	v0,704(a1)
    30b0:	35290200 	ori	t1,t1,0x200
    30b4:	3c08f590 	lui	t0,0xf590
    30b8:	244e0008 	addiu	t6,v0,8
    30bc:	acae02c0 	sw	t6,704(a1)
    30c0:	ac4f0000 	sw	t7,0(v0)
    30c4:	8fb8005c 	lw	t8,92(sp)
    30c8:	3c0be600 	lui	t3,0xe600
    30cc:	3c0e0703 	lui	t6,0x703
    30d0:	ac580004 	sw	t8,4(v0)
    30d4:	8ca202c0 	lw	v0,704(a1)
    30d8:	35cef800 	ori	t6,t6,0xf800
    30dc:	3c0df300 	lui	t5,0xf300
    30e0:	24590008 	addiu	t9,v0,8
    30e4:	acb902c0 	sw	t9,704(a1)
    30e8:	ac490004 	sw	t1,4(v0)
    30ec:	ac480000 	sw	t0,0(v0)
    30f0:	8ca202c0 	lw	v0,704(a1)
    30f4:	3c18e700 	lui	t8,0xe700
    30f8:	3c08f580 	lui	t0,0xf580
    30fc:	244a0008 	addiu	t2,v0,8
    3100:	acaa02c0 	sw	t2,704(a1)
    3104:	ac400004 	sw	zero,4(v0)
    3108:	ac4b0000 	sw	t3,0(v0)
    310c:	8ca202c0 	lw	v0,704(a1)
    3110:	3c090008 	lui	t1,0x8
    3114:	35290200 	ori	t1,t1,0x200
    3118:	244c0008 	addiu	t4,v0,8
    311c:	acac02c0 	sw	t4,704(a1)
    3120:	ac4e0004 	sw	t6,4(v0)
    3124:	ac4d0000 	sw	t5,0(v0)
    3128:	8ca202c0 	lw	v0,704(a1)
    312c:	35080200 	ori	t0,t0,0x200
    3130:	3c0c0003 	lui	t4,0x3
    3134:	244f0008 	addiu	t7,v0,8
    3138:	acaf02c0 	sw	t7,704(a1)
    313c:	ac400004 	sw	zero,4(v0)
    3140:	ac580000 	sw	t8,0(v0)
    3144:	8ca202c0 	lw	v0,704(a1)
    3148:	358cc03c 	ori	t4,t4,0xc03c
    314c:	3c0bf200 	lui	t3,0xf200
    3150:	24590008 	addiu	t9,v0,8
    3154:	acb902c0 	sw	t9,704(a1)
    3158:	ac490004 	sw	t1,4(v0)
    315c:	ac480000 	sw	t0,0(v0)
    3160:	8ca202c0 	lw	v0,704(a1)
    3164:	3c010700 	lui	at,0x700
    3168:	27a40044 	addiu	a0,sp,68
    316c:	244a0008 	addiu	t2,v0,8
    3170:	acaa02c0 	sw	t2,704(a1)
    3174:	ac4c0004 	sw	t4,4(v0)
    3178:	ac4b0000 	sw	t3,0(v0)
    317c:	8ca202c0 	lw	v0,704(a1)
    3180:	244d0008 	addiu	t5,v0,8
    3184:	acad02c0 	sw	t5,704(a1)
    3188:	87a30062 	lh	v1,98(sp)
    318c:	00031840 	sll	v1,v1,0x1
    3190:	306600ff 	andi	a2,v1,0xff
    3194:	24670006 	addiu	a3,v1,6
    3198:	246e0004 	addiu	t6,v1,4
    319c:	31cf00ff 	andi	t7,t6,0xff
    31a0:	30e700ff 	andi	a3,a3,0xff
    31a4:	00063400 	sll	a2,a2,0x10
    31a8:	00075200 	sll	t2,a3,0x8
    31ac:	000fc200 	sll	t8,t7,0x8
    31b0:	00d8c825 	or	t9,a2,t8
    31b4:	00ca5825 	or	t3,a2,t2
    31b8:	246c0002 	addiu	t4,v1,2
    31bc:	318d00ff 	andi	t5,t4,0xff
    31c0:	03274025 	or	t0,t9,a3
    31c4:	01014825 	or	t1,t0,at
    31c8:	016d7025 	or	t6,t3,t5
    31cc:	3c060000 	lui	a2,0x0
    31d0:	24c60000 	addiu	a2,a2,0
    31d4:	24070077 	li	a3,119
    31d8:	ac4e0004 	sw	t6,4(v0)
    31dc:	0c000000 	jal	0 <func_80803D40>
    31e0:	ac490000 	sw	t1,0(v0)
    31e4:	8fbf0014 	lw	ra,20(sp)
    31e8:	27bd0058 	addiu	sp,sp,88
    31ec:	03e00008 	jr	ra
    31f0:	00000000 	nop

000031f4 <func_80806F34>:
    31f4:	27bdffd8 	addiu	sp,sp,-40
    31f8:	afbf0024 	sw	ra,36(sp)
    31fc:	afb20020 	sw	s2,32(sp)
    3200:	afb1001c 	sw	s1,28(sp)
    3204:	afb00018 	sw	s0,24(sp)
    3208:	00803825 	move	a3,a0
    320c:	8c840000 	lw	a0,0(a0)
    3210:	afa70028 	sw	a3,40(sp)
    3214:	0c000000 	jal	0 <func_80803D40>
    3218:	24051040 	li	a1,4160
    321c:	8fa70028 	lw	a3,40(sp)
    3220:	3c010002 	lui	at,0x2
    3224:	3c0d0000 	lui	t5,0x0
    3228:	00270821 	addu	at,at,a3
    322c:	ac22c9ec 	sw	v0,-13844(at)
    3230:	3c010001 	lui	at,0x1
    3234:	34218000 	ori	at,at,0x8000
    3238:	24110026 	li	s1,38
    323c:	25ad0000 	addiu	t5,t5,0
    3240:	00005025 	move	t2,zero
    3244:	00009025 	move	s2,zero
    3248:	00005825 	move	t3,zero
    324c:	241000ff 	li	s0,255
    3250:	241f0200 	li	ra,512
    3254:	00e11821 	addu	v1,a3,at
    3258:	2408ffa0 	li	t0,-96
    325c:	00004825 	move	t1,zero
    3260:	262cfff4 	addiu	t4,s1,-12
    3264:	000a7040 	sll	t6,t2,0x1
    3268:	01ae3021 	addu	a2,t5,t6
    326c:	84cf0000 	lh	t7,0(a2)
    3270:	8c7849ec 	lw	t8,18924(v1)
    3274:	000b1100 	sll	v0,t3,0x4
    3278:	01e82821 	addu	a1,t7,t0
    327c:	00052c00 	sll	a1,a1,0x10
    3280:	00052c03 	sra	a1,a1,0x10
    3284:	0302c821 	addu	t9,t8,v0
    3288:	a7250020 	sh	a1,32(t9)
    328c:	8c6e49ec 	lw	t6,18924(v1)
    3290:	25290001 	addiu	t1,t1,1
    3294:	00094c00 	sll	t1,t1,0x10
    3298:	01c27821 	addu	t7,t6,v0
    329c:	a5e50000 	sh	a1,0(t7)
    32a0:	84d80000 	lh	t8,0(a2)
    32a4:	8c7949ec 	lw	t9,18924(v1)
    32a8:	00094c03 	sra	t1,t1,0x10
    32ac:	03082821 	addu	a1,t8,t0
    32b0:	24a5000c 	addiu	a1,a1,12
    32b4:	00052c00 	sll	a1,a1,0x10
    32b8:	00052c03 	sra	a1,a1,0x10
    32bc:	03227021 	addu	t6,t9,v0
    32c0:	a5c50030 	sh	a1,48(t6)
    32c4:	8c6f49ec 	lw	t7,18924(v1)
    32c8:	256b0004 	addiu	t3,t3,4
    32cc:	254a0001 	addiu	t2,t2,1
    32d0:	01e2c021 	addu	t8,t7,v0
    32d4:	a7050010 	sh	a1,16(t8)
    32d8:	8c7949ec 	lw	t9,18924(v1)
    32dc:	25080010 	addiu	t0,t0,16
    32e0:	000a5400 	sll	t2,t2,0x10
    32e4:	03227021 	addu	t6,t9,v0
    32e8:	a5d10012 	sh	s1,18(t6)
    32ec:	8c6f49ec 	lw	t7,18924(v1)
    32f0:	000b5c00 	sll	t3,t3,0x10
    32f4:	2921000d 	slti	at,t1,13
    32f8:	01e22021 	addu	a0,t7,v0
    32fc:	84980012 	lh	t8,18(a0)
    3300:	00084400 	sll	t0,t0,0x10
    3304:	000b5c03 	sra	t3,t3,0x10
    3308:	a4980002 	sh	t8,2(a0)
    330c:	8c7949ec 	lw	t9,18924(v1)
    3310:	000a5403 	sra	t2,t2,0x10
    3314:	00084403 	sra	t0,t0,0x10
    3318:	03227021 	addu	t6,t9,v0
    331c:	a5cc0032 	sh	t4,50(t6)
    3320:	8c6f49ec 	lw	t7,18924(v1)
    3324:	01e2c021 	addu	t8,t7,v0
    3328:	a70c0022 	sh	t4,34(t8)
    332c:	8c7949ec 	lw	t9,18924(v1)
    3330:	03227021 	addu	t6,t9,v0
    3334:	a5c00034 	sh	zero,52(t6)
    3338:	8c6f49ec 	lw	t7,18924(v1)
    333c:	01e22021 	addu	a0,t7,v0
    3340:	84850034 	lh	a1,52(a0)
    3344:	a4850024 	sh	a1,36(a0)
    3348:	8c7849ec 	lw	t8,18924(v1)
    334c:	0302c821 	addu	t9,t8,v0
    3350:	a7250014 	sh	a1,20(t9)
    3354:	8c6e49ec 	lw	t6,18924(v1)
    3358:	01c27821 	addu	t7,t6,v0
    335c:	a5e50004 	sh	a1,4(t7)
    3360:	8c7849ec 	lw	t8,18924(v1)
    3364:	0302c821 	addu	t9,t8,v0
    3368:	a7200036 	sh	zero,54(t9)
    336c:	8c6e49ec 	lw	t6,18924(v1)
    3370:	01c22021 	addu	a0,t6,v0
    3374:	94850036 	lhu	a1,54(a0)
    3378:	a4850026 	sh	a1,38(a0)
    337c:	8c6f49ec 	lw	t7,18924(v1)
    3380:	01e2c021 	addu	t8,t7,v0
    3384:	a7050016 	sh	a1,22(t8)
    3388:	8c7949ec 	lw	t9,18924(v1)
    338c:	03227021 	addu	t6,t9,v0
    3390:	a5c50006 	sh	a1,6(t6)
    3394:	8c6f49ec 	lw	t7,18924(v1)
    3398:	01e2c021 	addu	t8,t7,v0
    339c:	a7000028 	sh	zero,40(t8)
    33a0:	8c7949ec 	lw	t9,18924(v1)
    33a4:	03222021 	addu	a0,t9,v0
    33a8:	84850028 	lh	a1,40(a0)
    33ac:	a485001a 	sh	a1,26(a0)
    33b0:	8c6e49ec 	lw	t6,18924(v1)
    33b4:	01c27821 	addu	t7,t6,v0
    33b8:	a5e5000a 	sh	a1,10(t7)
    33bc:	8c7849ec 	lw	t8,18924(v1)
    33c0:	0302c821 	addu	t9,t8,v0
    33c4:	a7250008 	sh	a1,8(t9)
    33c8:	8c6e49ec 	lw	t6,18924(v1)
    33cc:	01c27821 	addu	t7,t6,v0
    33d0:	a5ff003a 	sh	ra,58(t7)
    33d4:	8c7849ec 	lw	t8,18924(v1)
    33d8:	03022021 	addu	a0,t8,v0
    33dc:	8485003a 	lh	a1,58(a0)
    33e0:	a4850038 	sh	a1,56(a0)
    33e4:	8c7949ec 	lw	t9,18924(v1)
    33e8:	03227021 	addu	t6,t9,v0
    33ec:	a5c5002a 	sh	a1,42(t6)
    33f0:	8c6f49ec 	lw	t7,18924(v1)
    33f4:	01e2c021 	addu	t8,t7,v0
    33f8:	a7050018 	sh	a1,24(t8)
    33fc:	8c7949ec 	lw	t9,18924(v1)
    3400:	03227021 	addu	t6,t9,v0
    3404:	a1d0003f 	sb	s0,63(t6)
    3408:	8c6f49ec 	lw	t7,18924(v1)
    340c:	01e22021 	addu	a0,t7,v0
    3410:	9086003f 	lbu	a2,63(a0)
    3414:	a086002f 	sb	a2,47(a0)
    3418:	8c7849ec 	lw	t8,18924(v1)
    341c:	0302c821 	addu	t9,t8,v0
    3420:	a326001f 	sb	a2,31(t9)
    3424:	8c6e49ec 	lw	t6,18924(v1)
    3428:	01c27821 	addu	t7,t6,v0
    342c:	a1e6000f 	sb	a2,15(t7)
    3430:	8c7849ec 	lw	t8,18924(v1)
    3434:	0302c821 	addu	t9,t8,v0
    3438:	a326003e 	sb	a2,62(t9)
    343c:	8c6e49ec 	lw	t6,18924(v1)
    3440:	01c27821 	addu	t7,t6,v0
    3444:	a1e6002e 	sb	a2,46(t7)
    3448:	8c7849ec 	lw	t8,18924(v1)
    344c:	0302c821 	addu	t9,t8,v0
    3450:	a326001e 	sb	a2,30(t9)
    3454:	8c6e49ec 	lw	t6,18924(v1)
    3458:	01c27821 	addu	t7,t6,v0
    345c:	a1e6000e 	sb	a2,14(t7)
    3460:	8c7849ec 	lw	t8,18924(v1)
    3464:	0302c821 	addu	t9,t8,v0
    3468:	a326003d 	sb	a2,61(t9)
    346c:	8c6e49ec 	lw	t6,18924(v1)
    3470:	01c27821 	addu	t7,t6,v0
    3474:	a1e6002d 	sb	a2,45(t7)
    3478:	8c7849ec 	lw	t8,18924(v1)
    347c:	0302c821 	addu	t9,t8,v0
    3480:	a326001d 	sb	a2,29(t9)
    3484:	8c6e49ec 	lw	t6,18924(v1)
    3488:	01c27821 	addu	t7,t6,v0
    348c:	a1e6000d 	sb	a2,13(t7)
    3490:	8c7849ec 	lw	t8,18924(v1)
    3494:	0302c821 	addu	t9,t8,v0
    3498:	a326003c 	sb	a2,60(t9)
    349c:	8c6e49ec 	lw	t6,18924(v1)
    34a0:	01c27821 	addu	t7,t6,v0
    34a4:	a1e6002c 	sb	a2,44(t7)
    34a8:	8c7849ec 	lw	t8,18924(v1)
    34ac:	0302c821 	addu	t9,t8,v0
    34b0:	a326001c 	sb	a2,28(t9)
    34b4:	8c6e49ec 	lw	t6,18924(v1)
    34b8:	01c27821 	addu	t7,t6,v0
    34bc:	1420ff69 	bnez	at,3264 <func_80806F34+0x70>
    34c0:	a1e6000c 	sb	a2,12(t7)
    34c4:	26520001 	addiu	s2,s2,1
    34c8:	00129400 	sll	s2,s2,0x10
    34cc:	00129403 	sra	s2,s2,0x10
    34d0:	2631fff0 	addiu	s1,s1,-16
    34d4:	2a410005 	slti	at,s2,5
    34d8:	00118c00 	sll	s1,s1,0x10
    34dc:	1420ff5e 	bnez	at,3258 <func_80806F34+0x64>
    34e0:	00118c03 	sra	s1,s1,0x10
    34e4:	8fbf0024 	lw	ra,36(sp)
    34e8:	8fb00018 	lw	s0,24(sp)
    34ec:	8fb1001c 	lw	s1,28(sp)
    34f0:	8fb20020 	lw	s2,32(sp)
    34f4:	03e00008 	jr	ra
    34f8:	27bd0028 	addiu	sp,sp,40

000034fc <func_8080723C>:
    34fc:	27bdfee0 	addiu	sp,sp,-288
    3500:	afbf001c 	sw	ra,28(sp)
    3504:	afb10018 	sw	s1,24(sp)
    3508:	afb00014 	sw	s0,20(sp)
    350c:	8c850000 	lw	a1,0(a0)
    3510:	00808825 	move	s1,a0
    3514:	3c060000 	lui	a2,0x0
    3518:	24c60000 	addiu	a2,a2,0
    351c:	27a400fc 	addiu	a0,sp,252
    3520:	240700cd 	li	a3,205
    3524:	0c000000 	jal	0 <func_80803D40>
    3528:	afa5010c 	sw	a1,268(sp)
    352c:	8fa8010c 	lw	t0,268(sp)
    3530:	3c04e700 	lui	a0,0xe700
    3534:	3c18fc30 	lui	t8,0xfc30
    3538:	8d0202c0 	lw	v0,704(t0)
    353c:	3c19552e 	lui	t9,0x552e
    3540:	3739ff7f 	ori	t9,t9,0xff7f
    3544:	244e0008 	addiu	t6,v0,8
    3548:	ad0e02c0 	sw	t6,704(t0)
    354c:	ac400004 	sw	zero,4(v0)
    3550:	ac440000 	sw	a0,0(v0)
    3554:	8d0202c0 	lw	v0,704(t0)
    3558:	37189661 	ori	t8,t8,0x9661
    355c:	3c010001 	lui	at,0x1
    3560:	244f0008 	addiu	t7,v0,8
    3564:	ad0f02c0 	sw	t7,704(t0)
    3568:	ac590004 	sw	t9,4(v0)
    356c:	ac580000 	sw	t8,0(v0)
    3570:	8d0202c0 	lw	v0,704(t0)
    3574:	3c0ffa00 	lui	t7,0xfa00
    3578:	34218000 	ori	at,at,0x8000
    357c:	244e0008 	addiu	t6,v0,8
    3580:	ad0e02c0 	sw	t6,704(t0)
    3584:	02213821 	addu	a3,s1,at
    3588:	ac4f0000 	sw	t7,0(v0)
    358c:	84f84a6e 	lh	t8,19054(a3)
    3590:	2401ff00 	li	at,-256
    3594:	3c1ffb00 	lui	ra,0xfb00
    3598:	331900ff 	andi	t9,t8,0xff
    359c:	03217025 	or	t6,t9,at
    35a0:	ac4e0004 	sw	t6,4(v0)
    35a4:	8d0202c0 	lw	v0,704(t0)
    35a8:	3c0e0000 	lui	t6,0x0
    35ac:	3c190101 	lui	t9,0x101
    35b0:	244f0008 	addiu	t7,v0,8
    35b4:	ad0f02c0 	sw	t7,704(t0)
    35b8:	ac400004 	sw	zero,4(v0)
    35bc:	ac5f0000 	sw	ra,0(v0)
    35c0:	8d0202c0 	lw	v0,704(t0)
    35c4:	37398030 	ori	t9,t9,0x8030
    35c8:	25ce0000 	addiu	t6,t6,0
    35cc:	24580008 	addiu	t8,v0,8
    35d0:	ad1802c0 	sw	t8,704(t0)
    35d4:	ac4e0004 	sw	t6,4(v0)
    35d8:	ac590000 	sw	t9,0(v0)
    35dc:	8d0202c0 	lw	v0,704(t0)
    35e0:	3c18fd70 	lui	t8,0xfd70
    35e4:	3c0d0000 	lui	t5,0x0
    35e8:	244f0008 	addiu	t7,v0,8
    35ec:	ad0f02c0 	sw	t7,704(t0)
    35f0:	25ad0000 	addiu	t5,t5,0
    35f4:	ac580000 	sw	t8,0(v0)
    35f8:	91b91409 	lbu	t9,5129(t5)
    35fc:	3c0f0000 	lui	t7,0x0
    3600:	3c0c0000 	lui	t4,0x0
    3604:	00197080 	sll	t6,t9,0x2
    3608:	01ee7821 	addu	t7,t7,t6
    360c:	8def0000 	lw	t7,0(t7)
    3610:	3c0e0700 	lui	t6,0x700
    3614:	3c19f570 	lui	t9,0xf570
    3618:	ac4f0004 	sw	t7,4(v0)
    361c:	8d0202c0 	lw	v0,704(t0)
    3620:	3c0b0000 	lui	t3,0x0
    3624:	24100010 	li	s0,16
    3628:	24580008 	addiu	t8,v0,8
    362c:	ad1802c0 	sw	t8,704(t0)
    3630:	ac4e0004 	sw	t6,4(v0)
    3634:	ac590000 	sw	t9,0(v0)
    3638:	8d0202c0 	lw	v0,704(t0)
    363c:	3c18e600 	lui	t8,0xe600
    3640:	3c0ef300 	lui	t6,0xf300
    3644:	244f0008 	addiu	t7,v0,8
    3648:	ad0f02c0 	sw	t7,704(t0)
    364c:	ac400004 	sw	zero,4(v0)
    3650:	ac580000 	sw	t8,0(v0)
    3654:	8d0202c0 	lw	v0,704(t0)
    3658:	3c0f071b 	lui	t7,0x71b
    365c:	35eff125 	ori	t7,t7,0xf125
    3660:	24590008 	addiu	t9,v0,8
    3664:	ad1902c0 	sw	t9,704(t0)
    3668:	ac4f0004 	sw	t7,4(v0)
    366c:	ac4e0000 	sw	t6,0(v0)
    3670:	8d0202c0 	lw	v0,704(t0)
    3674:	3c0ef568 	lui	t6,0xf568
    3678:	35ce0e00 	ori	t6,t6,0xe00
    367c:	24580008 	addiu	t8,v0,8
    3680:	ad1802c0 	sw	t8,704(t0)
    3684:	ac400004 	sw	zero,4(v0)
    3688:	ac440000 	sw	a0,0(v0)
    368c:	8d0202c0 	lw	v0,704(t0)
    3690:	3c18f200 	lui	t8,0xf200
    3694:	256b0000 	addiu	t3,t3,0
    3698:	24590008 	addiu	t9,v0,8
    369c:	ad1902c0 	sw	t9,704(t0)
    36a0:	ac400004 	sw	zero,4(v0)
    36a4:	ac4e0000 	sw	t6,0(v0)
    36a8:	8d0202c0 	lw	v0,704(t0)
    36ac:	3c19000d 	lui	t9,0xd
    36b0:	3739c03c 	ori	t9,t9,0xc03c
    36b4:	244f0008 	addiu	t7,v0,8
    36b8:	ad0f02c0 	sw	t7,704(t0)
    36bc:	ac590004 	sw	t9,4(v0)
    36c0:	ac580000 	sw	t8,0(v0)
    36c4:	8d0202c0 	lw	v0,704(t0)
    36c8:	3c0f0700 	lui	t7,0x700
    36cc:	35ef0406 	ori	t7,t7,0x406
    36d0:	244e0008 	addiu	t6,v0,8
    36d4:	ad0e02c0 	sw	t6,704(t0)
    36d8:	24180602 	li	t8,1538
    36dc:	ac580004 	sw	t8,4(v0)
    36e0:	ac4f0000 	sw	t7,0(v0)
    36e4:	8d0202c0 	lw	v0,704(t0)
    36e8:	3c0ee700 	lui	t6,0xe700
    36ec:	258c0000 	addiu	t4,t4,0
    36f0:	24590008 	addiu	t9,v0,8
    36f4:	ad1902c0 	sw	t9,704(t0)
    36f8:	00004825 	move	t1,zero
    36fc:	ac400004 	sw	zero,4(v0)
    3700:	ac4e0000 	sw	t6,0(v0)
    3704:	8d0202c0 	lw	v0,704(t0)
    3708:	3c18fa00 	lui	t8,0xfa00
    370c:	240507ff 	li	a1,2047
    3710:	244f0008 	addiu	t7,v0,8
    3714:	ad0f02c0 	sw	t7,704(t0)
    3718:	ac580000 	sw	t8,0(v0)
    371c:	84f94a6c 	lh	t9,19052(a3)
    3720:	332e00ff 	andi	t6,t9,0xff
    3724:	84f94a68 	lh	t9,19048(a3)
    3728:	000e7a00 	sll	t7,t6,0x8
    372c:	00197600 	sll	t6,t9,0x18
    3730:	84f94a6a 	lh	t9,19050(a3)
    3734:	01eec025 	or	t8,t7,t6
    3738:	332f00ff 	andi	t7,t9,0xff
    373c:	000f7400 	sll	t6,t7,0x10
    3740:	030ec825 	or	t9,t8,t6
    3744:	372f00ff 	ori	t7,t9,0xff
    3748:	ac4f0004 	sw	t7,4(v0)
    374c:	8d0202c0 	lw	v0,704(t0)
    3750:	3c19fd70 	lui	t9,0xfd70
    3754:	24580008 	addiu	t8,v0,8
    3758:	ad1802c0 	sw	t8,704(t0)
    375c:	ac400004 	sw	zero,4(v0)
    3760:	ac5f0000 	sw	ra,0(v0)
    3764:	8d0202c0 	lw	v0,704(t0)
    3768:	244e0008 	addiu	t6,v0,8
    376c:	ad0e02c0 	sw	t6,704(t0)
    3770:	ac590000 	sw	t9,0(v0)
    3774:	91af1409 	lbu	t7,5129(t5)
    3778:	0009c880 	sll	t9,t1,0x2
    377c:	000fc0c0 	sll	t8,t7,0x3
    3780:	01787021 	addu	t6,t3,t8
    3784:	01d97821 	addu	t7,t6,t9
    3788:	8df80000 	lw	t8,0(t7)
    378c:	3c0f0700 	lui	t7,0x700
    3790:	3c19f570 	lui	t9,0xf570
    3794:	ac580004 	sw	t8,4(v0)
    3798:	8d0202c0 	lw	v0,704(t0)
    379c:	244e0008 	addiu	t6,v0,8
    37a0:	ad0e02c0 	sw	t6,704(t0)
    37a4:	ac4f0004 	sw	t7,4(v0)
    37a8:	ac590000 	sw	t9,0(v0)
    37ac:	8d0202c0 	lw	v0,704(t0)
    37b0:	3c0ee600 	lui	t6,0xe600
    37b4:	3c0ff300 	lui	t7,0xf300
    37b8:	24580008 	addiu	t8,v0,8
    37bc:	ad1802c0 	sw	t8,704(t0)
    37c0:	ac400004 	sw	zero,4(v0)
    37c4:	ac4e0000 	sw	t6,0(v0)
    37c8:	8d0a02c0 	lw	t2,704(t0)
    37cc:	0009c040 	sll	t8,t1,0x1
    37d0:	01983021 	addu	a2,t4,t8
    37d4:	25590008 	addiu	t9,t2,8
    37d8:	ad1902c0 	sw	t9,704(t0)
    37dc:	ad4f0000 	sw	t7,0(t2)
    37e0:	94c30000 	lhu	v1,0(a2)
    37e4:	00032100 	sll	a0,v1,0x4
    37e8:	2484ffff 	addiu	a0,a0,-1
    37ec:	288107ff 	slti	at,a0,2047
    37f0:	10200003 	beqz	at,3800 <func_8080723C+0x304>
    37f4:	00031040 	sll	v0,v1,0x1
    37f8:	10000001 	b	3800 <func_8080723C+0x304>
    37fc:	00802825 	move	a1,a0
    3800:	04410002 	bgez	v0,380c <func_8080723C+0x310>
    3804:	00400821 	move	at,v0
    3808:	24410007 	addiu	at,v0,7
    380c:	000110c3 	sra	v0,at,0x3
    3810:	1c400003 	bgtz	v0,3820 <func_8080723C+0x324>
    3814:	00402025 	move	a0,v0
    3818:	10000001 	b	3820 <func_8080723C+0x324>
    381c:	24040001 	li	a0,1
    3820:	1c400003 	bgtz	v0,3830 <func_8080723C+0x334>
    3824:	248e07ff 	addiu	t6,a0,2047
    3828:	10000002 	b	3834 <func_8080723C+0x338>
    382c:	24030001 	li	v1,1
    3830:	00401825 	move	v1,v0
    3834:	01c3001a 	div	zero,t6,v1
    3838:	14600002 	bnez	v1,3844 <func_8080723C+0x348>
    383c:	00000000 	nop
    3840:	0007000d 	break	0x7
    3844:	2401ffff 	li	at,-1
    3848:	14610004 	bne	v1,at,385c <func_8080723C+0x360>
    384c:	3c018000 	lui	at,0x8000
    3850:	15c10002 	bne	t6,at,385c <func_8080723C+0x360>
    3854:	00000000 	nop
    3858:	0006000d 	break	0x6
    385c:	0000c812 	mflo	t9
    3860:	332f0fff 	andi	t7,t9,0xfff
    3864:	3c010700 	lui	at,0x700
    3868:	30ae0fff 	andi	t6,a1,0xfff
    386c:	000ecb00 	sll	t9,t6,0xc
    3870:	01e1c025 	or	t8,t7,at
    3874:	03197825 	or	t7,t8,t9
    3878:	ad4f0004 	sw	t7,4(t2)
    387c:	8d0202c0 	lw	v0,704(t0)
    3880:	3c18e700 	lui	t8,0xe700
    3884:	3c01f570 	lui	at,0xf570
    3888:	244e0008 	addiu	t6,v0,8
    388c:	ad0e02c0 	sw	t6,704(t0)
    3890:	ac400004 	sw	zero,4(v0)
    3894:	ac580000 	sw	t8,0(v0)
    3898:	8d0202c0 	lw	v0,704(t0)
    389c:	25290001 	addiu	t1,t1,1
    38a0:	00094c00 	sll	t1,t1,0x10
    38a4:	24590008 	addiu	t9,v0,8
    38a8:	ad1902c0 	sw	t9,704(t0)
    38ac:	94cf0000 	lhu	t7,0(a2)
    38b0:	ac400004 	sw	zero,4(v0)
    38b4:	00094c03 	sra	t1,t1,0x10
    38b8:	000f7040 	sll	t6,t7,0x1
    38bc:	25d80007 	addiu	t8,t6,7
    38c0:	0018c8c3 	sra	t9,t8,0x3
    38c4:	332f01ff 	andi	t7,t9,0x1ff
    38c8:	000f7240 	sll	t6,t7,0x9
    38cc:	01c1c025 	or	t8,t6,at
    38d0:	ac580000 	sw	t8,0(v0)
    38d4:	8d0202c0 	lw	v0,704(t0)
    38d8:	3c0ff200 	lui	t7,0xf200
    38dc:	3c010700 	lui	at,0x700
    38e0:	24590008 	addiu	t9,v0,8
    38e4:	ad1902c0 	sw	t9,704(t0)
    38e8:	ac4f0000 	sw	t7,0(v0)
    38ec:	94ce0000 	lhu	t6,0(a2)
    38f0:	00103040 	sll	a2,s0,0x1
    38f4:	30c400ff 	andi	a0,a2,0xff
    38f8:	25d8ffff 	addiu	t8,t6,-1
    38fc:	0018c880 	sll	t9,t8,0x2
    3900:	332f0fff 	andi	t7,t9,0xfff
    3904:	000f7300 	sll	t6,t7,0xc
    3908:	35d8003c 	ori	t8,t6,0x3c
    390c:	ac580004 	sw	t8,4(v0)
    3910:	8d0202c0 	lw	v0,704(t0)
    3914:	24cf0004 	addiu	t7,a2,4
    3918:	31ee00ff 	andi	t6,t7,0xff
    391c:	24590008 	addiu	t9,v0,8
    3920:	ad1902c0 	sw	t9,704(t0)
    3924:	000ec200 	sll	t8,t6,0x8
    3928:	00042400 	sll	a0,a0,0x10
    392c:	24c50006 	addiu	a1,a2,6
    3930:	30a500ff 	andi	a1,a1,0xff
    3934:	0098c825 	or	t9,a0,t8
    3938:	03257825 	or	t7,t9,a1
    393c:	01e17025 	or	t6,t7,at
    3940:	24cf0002 	addiu	t7,a2,2
    3944:	0005c200 	sll	t8,a1,0x8
    3948:	ac4e0000 	sw	t6,0(v0)
    394c:	26100004 	addiu	s0,s0,4
    3950:	31ee00ff 	andi	t6,t7,0xff
    3954:	0098c825 	or	t9,a0,t8
    3958:	00108400 	sll	s0,s0,0x10
    395c:	29210002 	slti	at,t1,2
    3960:	032ec025 	or	t8,t9,t6
    3964:	00108403 	sra	s0,s0,0x10
    3968:	ac580004 	sw	t8,4(v0)
    396c:	1420ff65 	bnez	at,3704 <func_8080723C+0x208>
    3970:	00401825 	move	v1,v0
    3974:	8e240000 	lw	a0,0(s1)
    3978:	afa8010c 	sw	t0,268(sp)
    397c:	afa70024 	sw	a3,36(sp)
    3980:	0c000000 	jal	0 <func_80803D40>
    3984:	240502c0 	li	a1,704
    3988:	3c010002 	lui	at,0x2
    398c:	00310821 	addu	at,at,s1
    3990:	8fa70024 	lw	a3,36(sp)
    3994:	8fa8010c 	lw	t0,268(sp)
    3998:	3c0c0000 	lui	t4,0x0
    399c:	3c0b0000 	lui	t3,0x0
    39a0:	3c0a0000 	lui	t2,0x0
    39a4:	ac22c9f0 	sw	v0,-13840(at)
    39a8:	254a0000 	addiu	t2,t2,0
    39ac:	256b0000 	addiu	t3,t3,0
    39b0:	258c0000 	addiu	t4,t4,0
    39b4:	00008025 	move	s0,zero
    39b8:	00004825 	move	t1,zero
    39bc:	241f00ff 	li	ra,255
    39c0:	240d0200 	li	t5,512
    39c4:	1a000027 	blez	s0,3a64 <func_8080723C+0x568>
    39c8:	2a010009 	slti	at,s0,9
    39cc:	50200026 	beqzl	at,3a68 <func_8080723C+0x56c>
    39d0:	00103040 	sll	a2,s0,0x1
    39d4:	84ef4a38 	lh	t7,19000(a3)
    39d8:	3c040002 	lui	a0,0x2
    39dc:	00103040 	sll	a2,s0,0x1
    39e0:	000fc8c0 	sll	t9,t7,0x3
    39e4:	02397021 	addu	t6,s1,t9
    39e8:	01d0c021 	addu	t8,t6,s0
    39ec:	00982021 	addu	a0,a0,t8
    39f0:	9084c9fb 	lbu	a0,-13829(a0)
    39f4:	0146c021 	addu	t8,t2,a2
    39f8:	00091100 	sll	v0,t1,0x4
    39fc:	00047840 	sll	t7,a0,0x1
    3a00:	016fc821 	addu	t9,t3,t7
    3a04:	872e0000 	lh	t6,0(t9)
    3a08:	870f0000 	lh	t7,0(t8)
    3a0c:	84f84abe 	lh	t8,19134(a3)
    3a10:	01cfc821 	addu	t9,t6,t7
    3a14:	8cee49f0 	lw	t6,18928(a3)
    3a18:	03381821 	addu	v1,t9,t8
    3a1c:	00031c00 	sll	v1,v1,0x10
    3a20:	00031c03 	sra	v1,v1,0x10
    3a24:	01c27821 	addu	t7,t6,v0
    3a28:	a5e30020 	sh	v1,32(t7)
    3a2c:	8cf949f0 	lw	t9,18928(a3)
    3a30:	0322c021 	addu	t8,t9,v0
    3a34:	a7030000 	sh	v1,0(t8)
    3a38:	8cee49f0 	lw	t6,18928(a3)
    3a3c:	01c22821 	addu	a1,t6,v0
    3a40:	84a30000 	lh	v1,0(a1)
    3a44:	2463000a 	addiu	v1,v1,10
    3a48:	00031c00 	sll	v1,v1,0x10
    3a4c:	00031c03 	sra	v1,v1,0x10
    3a50:	a4a30030 	sh	v1,48(a1)
    3a54:	8cef49f0 	lw	t7,18928(a3)
    3a58:	01e2c821 	addu	t9,t7,v0
    3a5c:	10000019 	b	3ac4 <func_8080723C+0x5c8>
    3a60:	a7230010 	sh	v1,16(t9)
    3a64:	00103040 	sll	a2,s0,0x1
    3a68:	0146c021 	addu	t8,t2,a2
    3a6c:	870e0000 	lh	t6,0(t8)
    3a70:	84ef4abe 	lh	t7,19134(a3)
    3a74:	8cf949f0 	lw	t9,18928(a3)
    3a78:	00091100 	sll	v0,t1,0x4
    3a7c:	01cf1821 	addu	v1,t6,t7
    3a80:	00031c00 	sll	v1,v1,0x10
    3a84:	00031c03 	sra	v1,v1,0x10
    3a88:	0322c021 	addu	t8,t9,v0
    3a8c:	a7030020 	sh	v1,32(t8)
    3a90:	8cee49f0 	lw	t6,18928(a3)
    3a94:	01c27821 	addu	t7,t6,v0
    3a98:	a5e30000 	sh	v1,0(t7)
    3a9c:	8cf949f0 	lw	t9,18928(a3)
    3aa0:	03222821 	addu	a1,t9,v0
    3aa4:	84a30000 	lh	v1,0(a1)
    3aa8:	2463000a 	addiu	v1,v1,10
    3aac:	00031c00 	sll	v1,v1,0x10
    3ab0:	00031c03 	sra	v1,v1,0x10
    3ab4:	a4a30030 	sh	v1,48(a1)
    3ab8:	8cf849f0 	lw	t8,18928(a3)
    3abc:	03027021 	addu	t6,t8,v0
    3ac0:	a5c30010 	sh	v1,16(t6)
    3ac4:	8cf949f0 	lw	t9,18928(a3)
    3ac8:	01867821 	addu	t7,t4,a2
    3acc:	85e30000 	lh	v1,0(t7)
    3ad0:	0322c021 	addu	t8,t9,v0
    3ad4:	25290004 	addiu	t1,t1,4
    3ad8:	a7030012 	sh	v1,18(t8)
    3adc:	8cee49f0 	lw	t6,18928(a3)
    3ae0:	00094c00 	sll	t1,t1,0x10
    3ae4:	00094c03 	sra	t1,t1,0x10
    3ae8:	01c27821 	addu	t7,t6,v0
    3aec:	a5e30002 	sh	v1,2(t7)
    3af0:	8cf949f0 	lw	t9,18928(a3)
    3af4:	26100001 	addiu	s0,s0,1
    3af8:	00108400 	sll	s0,s0,0x10
    3afc:	03222821 	addu	a1,t9,v0
    3b00:	84a30002 	lh	v1,2(a1)
    3b04:	2921002c 	slti	at,t1,44
    3b08:	00108403 	sra	s0,s0,0x10
    3b0c:	2463fff6 	addiu	v1,v1,-10
    3b10:	00031c00 	sll	v1,v1,0x10
    3b14:	00031c03 	sra	v1,v1,0x10
    3b18:	a4a30032 	sh	v1,50(a1)
    3b1c:	8cf849f0 	lw	t8,18928(a3)
    3b20:	03027021 	addu	t6,t8,v0
    3b24:	a5c30022 	sh	v1,34(t6)
    3b28:	8cef49f0 	lw	t7,18928(a3)
    3b2c:	01e2c821 	addu	t9,t7,v0
    3b30:	a7200034 	sh	zero,52(t9)
    3b34:	8cf849f0 	lw	t8,18928(a3)
    3b38:	03022821 	addu	a1,t8,v0
    3b3c:	84a40034 	lh	a0,52(a1)
    3b40:	a4a40024 	sh	a0,36(a1)
    3b44:	8cee49f0 	lw	t6,18928(a3)
    3b48:	01c27821 	addu	t7,t6,v0
    3b4c:	a5e40014 	sh	a0,20(t7)
    3b50:	8cf949f0 	lw	t9,18928(a3)
    3b54:	0322c021 	addu	t8,t9,v0
    3b58:	a7040004 	sh	a0,4(t8)
    3b5c:	8cee49f0 	lw	t6,18928(a3)
    3b60:	01c27821 	addu	t7,t6,v0
    3b64:	a5e00036 	sh	zero,54(t7)
    3b68:	8cf949f0 	lw	t9,18928(a3)
    3b6c:	03222821 	addu	a1,t9,v0
    3b70:	94a40036 	lhu	a0,54(a1)
    3b74:	a4a40026 	sh	a0,38(a1)
    3b78:	8cf849f0 	lw	t8,18928(a3)
    3b7c:	03027021 	addu	t6,t8,v0
    3b80:	a5c40016 	sh	a0,22(t6)
    3b84:	8cef49f0 	lw	t7,18928(a3)
    3b88:	01e2c821 	addu	t9,t7,v0
    3b8c:	a7240006 	sh	a0,6(t9)
    3b90:	8cf849f0 	lw	t8,18928(a3)
    3b94:	03027021 	addu	t6,t8,v0
    3b98:	a5c00028 	sh	zero,40(t6)
    3b9c:	8cef49f0 	lw	t7,18928(a3)
    3ba0:	01e22821 	addu	a1,t7,v0
    3ba4:	84a40028 	lh	a0,40(a1)
    3ba8:	a4a4001a 	sh	a0,26(a1)
    3bac:	8cf949f0 	lw	t9,18928(a3)
    3bb0:	0322c021 	addu	t8,t9,v0
    3bb4:	a704000a 	sh	a0,10(t8)
    3bb8:	8cee49f0 	lw	t6,18928(a3)
    3bbc:	01c27821 	addu	t7,t6,v0
    3bc0:	a5e40008 	sh	a0,8(t7)
    3bc4:	8cf949f0 	lw	t9,18928(a3)
    3bc8:	0322c021 	addu	t8,t9,v0
    3bcc:	a70d003a 	sh	t5,58(t8)
    3bd0:	8cee49f0 	lw	t6,18928(a3)
    3bd4:	01c22821 	addu	a1,t6,v0
    3bd8:	84a4003a 	lh	a0,58(a1)
    3bdc:	a4a40038 	sh	a0,56(a1)
    3be0:	8cef49f0 	lw	t7,18928(a3)
    3be4:	01e2c821 	addu	t9,t7,v0
    3be8:	a724002a 	sh	a0,42(t9)
    3bec:	8cf849f0 	lw	t8,18928(a3)
    3bf0:	03027021 	addu	t6,t8,v0
    3bf4:	a5c40018 	sh	a0,24(t6)
    3bf8:	8cef49f0 	lw	t7,18928(a3)
    3bfc:	01e2c821 	addu	t9,t7,v0
    3c00:	a33f003f 	sb	ra,63(t9)
    3c04:	8cf849f0 	lw	t8,18928(a3)
    3c08:	03022821 	addu	a1,t8,v0
    3c0c:	90a3003f 	lbu	v1,63(a1)
    3c10:	a0a3002f 	sb	v1,47(a1)
    3c14:	8cee49f0 	lw	t6,18928(a3)
    3c18:	01c27821 	addu	t7,t6,v0
    3c1c:	a1e3001f 	sb	v1,31(t7)
    3c20:	8cf949f0 	lw	t9,18928(a3)
    3c24:	0322c021 	addu	t8,t9,v0
    3c28:	a303000f 	sb	v1,15(t8)
    3c2c:	8cee49f0 	lw	t6,18928(a3)
    3c30:	01c27821 	addu	t7,t6,v0
    3c34:	a1e3003e 	sb	v1,62(t7)
    3c38:	8cf949f0 	lw	t9,18928(a3)
    3c3c:	0322c021 	addu	t8,t9,v0
    3c40:	a303002e 	sb	v1,46(t8)
    3c44:	8cee49f0 	lw	t6,18928(a3)
    3c48:	01c27821 	addu	t7,t6,v0
    3c4c:	a1e3001e 	sb	v1,30(t7)
    3c50:	8cf949f0 	lw	t9,18928(a3)
    3c54:	0322c021 	addu	t8,t9,v0
    3c58:	a303000e 	sb	v1,14(t8)
    3c5c:	8cee49f0 	lw	t6,18928(a3)
    3c60:	01c27821 	addu	t7,t6,v0
    3c64:	a1e3003d 	sb	v1,61(t7)
    3c68:	8cf949f0 	lw	t9,18928(a3)
    3c6c:	0322c021 	addu	t8,t9,v0
    3c70:	a303002d 	sb	v1,45(t8)
    3c74:	8cee49f0 	lw	t6,18928(a3)
    3c78:	01c27821 	addu	t7,t6,v0
    3c7c:	a1e3001d 	sb	v1,29(t7)
    3c80:	8cf949f0 	lw	t9,18928(a3)
    3c84:	0322c021 	addu	t8,t9,v0
    3c88:	a303000d 	sb	v1,13(t8)
    3c8c:	8cee49f0 	lw	t6,18928(a3)
    3c90:	01c27821 	addu	t7,t6,v0
    3c94:	a1e3003c 	sb	v1,60(t7)
    3c98:	8cf949f0 	lw	t9,18928(a3)
    3c9c:	0322c021 	addu	t8,t9,v0
    3ca0:	a303002c 	sb	v1,44(t8)
    3ca4:	8cee49f0 	lw	t6,18928(a3)
    3ca8:	01c27821 	addu	t7,t6,v0
    3cac:	a1e3001c 	sb	v1,28(t7)
    3cb0:	8cf949f0 	lw	t9,18928(a3)
    3cb4:	0322c021 	addu	t8,t9,v0
    3cb8:	1420ff42 	bnez	at,39c4 <func_8080723C+0x4c8>
    3cbc:	a303000c 	sb	v1,12(t8)
    3cc0:	8ce249f0 	lw	v0,18928(a3)
    3cc4:	24190d80 	li	t9,3456
    3cc8:	2401ff00 	li	at,-256
    3ccc:	84430000 	lh	v1,0(v0)
    3cd0:	00008025 	move	s0,zero
    3cd4:	2463006c 	addiu	v1,v1,108
    3cd8:	00031c00 	sll	v1,v1,0x10
    3cdc:	00031c03 	sra	v1,v1,0x10
    3ce0:	a4430030 	sh	v1,48(v0)
    3ce4:	8cee49f0 	lw	t6,18928(a3)
    3ce8:	a5c30010 	sh	v1,16(t6)
    3cec:	8ce249f0 	lw	v0,18928(a3)
    3cf0:	84430002 	lh	v1,2(v0)
    3cf4:	2463fff0 	addiu	v1,v1,-16
    3cf8:	00031c00 	sll	v1,v1,0x10
    3cfc:	00031c03 	sra	v1,v1,0x10
    3d00:	a4430032 	sh	v1,50(v0)
    3d04:	8cef49f0 	lw	t7,18928(a3)
    3d08:	a5e30022 	sh	v1,34(t7)
    3d0c:	8cf849f0 	lw	t8,18928(a3)
    3d10:	a7190038 	sh	t9,56(t8)
    3d14:	8ce249f0 	lw	v0,18928(a3)
    3d18:	3c19e700 	lui	t9,0xe700
    3d1c:	844e0038 	lh	t6,56(v0)
    3d20:	a44e0018 	sh	t6,24(v0)
    3d24:	8d0202c0 	lw	v0,704(t0)
    3d28:	3c0efc30 	lui	t6,0xfc30
    3d2c:	35ce9661 	ori	t6,t6,0x9661
    3d30:	244f0008 	addiu	t7,v0,8
    3d34:	ad0f02c0 	sw	t7,704(t0)
    3d38:	ac400004 	sw	zero,4(v0)
    3d3c:	ac590000 	sw	t9,0(v0)
    3d40:	8d0202c0 	lw	v0,704(t0)
    3d44:	3c0f552e 	lui	t7,0x552e
    3d48:	35efff7f 	ori	t7,t7,0xff7f
    3d4c:	24580008 	addiu	t8,v0,8
    3d50:	ad1802c0 	sw	t8,704(t0)
    3d54:	ac4f0004 	sw	t7,4(v0)
    3d58:	ac4e0000 	sw	t6,0(v0)
    3d5c:	8d0202c0 	lw	v0,704(t0)
    3d60:	3c18fa00 	lui	t8,0xfa00
    3d64:	24590008 	addiu	t9,v0,8
    3d68:	ad1902c0 	sw	t9,704(t0)
    3d6c:	ac580000 	sw	t8,0(v0)
    3d70:	84ee4a6c 	lh	t6,19052(a3)
    3d74:	31cf00ff 	andi	t7,t6,0xff
    3d78:	84ee4a68 	lh	t6,19048(a3)
    3d7c:	000fca00 	sll	t9,t7,0x8
    3d80:	000e7e00 	sll	t7,t6,0x18
    3d84:	84ee4a6a 	lh	t6,19050(a3)
    3d88:	032fc025 	or	t8,t9,t7
    3d8c:	31d900ff 	andi	t9,t6,0xff
    3d90:	00197c00 	sll	t7,t9,0x10
    3d94:	84f94a9c 	lh	t9,19100(a3)
    3d98:	030f7025 	or	t6,t8,t7
    3d9c:	333800ff 	andi	t8,t9,0xff
    3da0:	01d87825 	or	t7,t6,t8
    3da4:	ac4f0004 	sw	t7,4(v0)
    3da8:	8d0202c0 	lw	v0,704(t0)
    3dac:	3c0e0100 	lui	t6,0x100
    3db0:	35ce4008 	ori	t6,t6,0x4008
    3db4:	24590008 	addiu	t9,v0,8
    3db8:	ad1902c0 	sw	t9,704(t0)
    3dbc:	ac4e0000 	sw	t6,0(v0)
    3dc0:	8cf849f0 	lw	t8,18928(a3)
    3dc4:	3c0e0101 	lui	t6,0x101
    3dc8:	25ce5600 	addiu	t6,t6,22016
    3dcc:	ac580004 	sw	t8,4(v0)
    3dd0:	8d0202c0 	lw	v0,704(t0)
    3dd4:	3c19fd70 	lui	t9,0xfd70
    3dd8:	244f0008 	addiu	t7,v0,8
    3ddc:	ad0f02c0 	sw	t7,704(t0)
    3de0:	ac4e0004 	sw	t6,4(v0)
    3de4:	ac590000 	sw	t9,0(v0)
    3de8:	8d0202c0 	lw	v0,704(t0)
    3dec:	3c190700 	lui	t9,0x700
    3df0:	3c0ff570 	lui	t7,0xf570
    3df4:	24580008 	addiu	t8,v0,8
    3df8:	ad1802c0 	sw	t8,704(t0)
    3dfc:	ac590004 	sw	t9,4(v0)
    3e00:	ac4f0000 	sw	t7,0(v0)
    3e04:	8d0202c0 	lw	v0,704(t0)
    3e08:	3c18e600 	lui	t8,0xe600
    3e0c:	3c19f300 	lui	t9,0xf300
    3e10:	244e0008 	addiu	t6,v0,8
    3e14:	ad0e02c0 	sw	t6,704(t0)
    3e18:	ac400004 	sw	zero,4(v0)
    3e1c:	ac580000 	sw	t8,0(v0)
    3e20:	8d0202c0 	lw	v0,704(t0)
    3e24:	3c0e076b 	lui	t6,0x76b
    3e28:	35cef04c 	ori	t6,t6,0xf04c
    3e2c:	244f0008 	addiu	t7,v0,8
    3e30:	ad0f02c0 	sw	t7,704(t0)
    3e34:	ac4e0004 	sw	t6,4(v0)
    3e38:	ac590000 	sw	t9,0(v0)
    3e3c:	8d0202c0 	lw	v0,704(t0)
    3e40:	3c0fe700 	lui	t7,0xe700
    3e44:	3c0ef570 	lui	t6,0xf570
    3e48:	24580008 	addiu	t8,v0,8
    3e4c:	ad1802c0 	sw	t8,704(t0)
    3e50:	ac400004 	sw	zero,4(v0)
    3e54:	ac4f0000 	sw	t7,0(v0)
    3e58:	8d0202c0 	lw	v0,704(t0)
    3e5c:	35ce3600 	ori	t6,t6,0x3600
    3e60:	3c0ff200 	lui	t7,0xf200
    3e64:	24590008 	addiu	t9,v0,8
    3e68:	ad1902c0 	sw	t9,704(t0)
    3e6c:	ac400004 	sw	zero,4(v0)
    3e70:	ac4e0000 	sw	t6,0(v0)
    3e74:	8d0202c0 	lw	v0,704(t0)
    3e78:	3c19001a 	lui	t9,0x1a
    3e7c:	3739c03c 	ori	t9,t9,0xc03c
    3e80:	24580008 	addiu	t8,v0,8
    3e84:	ad1802c0 	sw	t8,704(t0)
    3e88:	ac590004 	sw	t9,4(v0)
    3e8c:	ac4f0000 	sw	t7,0(v0)
    3e90:	8d0202c0 	lw	v0,704(t0)
    3e94:	3c180700 	lui	t8,0x700
    3e98:	37180406 	ori	t8,t8,0x406
    3e9c:	244e0008 	addiu	t6,v0,8
    3ea0:	ad0e02c0 	sw	t6,704(t0)
    3ea4:	240f0602 	li	t7,1538
    3ea8:	ac4f0004 	sw	t7,4(v0)
    3eac:	ac580000 	sw	t8,0(v0)
    3eb0:	8d0202c0 	lw	v0,704(t0)
    3eb4:	3c0ee700 	lui	t6,0xe700
    3eb8:	3c0ffcff 	lui	t7,0xfcff
    3ebc:	24590008 	addiu	t9,v0,8
    3ec0:	ad1902c0 	sw	t9,704(t0)
    3ec4:	ac400004 	sw	zero,4(v0)
    3ec8:	ac4e0000 	sw	t6,0(v0)
    3ecc:	8d0202c0 	lw	v0,704(t0)
    3ed0:	3c19ff2d 	lui	t9,0xff2d
    3ed4:	3739feff 	ori	t9,t9,0xfeff
    3ed8:	24580008 	addiu	t8,v0,8
    3edc:	ad1802c0 	sw	t8,704(t0)
    3ee0:	35ef97ff 	ori	t7,t7,0x97ff
    3ee4:	ac4f0000 	sw	t7,0(v0)
    3ee8:	ac590004 	sw	t9,4(v0)
    3eec:	8d0202c0 	lw	v0,704(t0)
    3ef0:	3c180102 	lui	t8,0x102
    3ef4:	37180040 	ori	t8,t8,0x40
    3ef8:	244e0008 	addiu	t6,v0,8
    3efc:	ad0e02c0 	sw	t6,704(t0)
    3f00:	ac580000 	sw	t8,0(v0)
    3f04:	8cef49f0 	lw	t7,18928(a3)
    3f08:	3c18fa00 	lui	t8,0xfa00
    3f0c:	25f90040 	addiu	t9,t7,64
    3f10:	ac590004 	sw	t9,4(v0)
    3f14:	8d0202c0 	lw	v0,704(t0)
    3f18:	244e0008 	addiu	t6,v0,8
    3f1c:	ad0e02c0 	sw	t6,704(t0)
    3f20:	ac580000 	sw	t8,0(v0)
    3f24:	84ef4a9c 	lh	t7,19100(a3)
    3f28:	31f900ff 	andi	t9,t7,0xff
    3f2c:	03217025 	or	t6,t9,at
    3f30:	3401e760 	li	at,0xe760
    3f34:	ac4e0004 	sw	t6,4(v0)
    3f38:	02211821 	addu	v1,s1,at
    3f3c:	afa30030 	sw	v1,48(sp)
    3f40:	00001025 	move	v0,zero
    3f44:	84f84a38 	lh	t8,19000(a3)
    3f48:	8fa30030 	lw	v1,48(sp)
    3f4c:	8e240000 	lw	a0,0(s1)
    3f50:	001878c0 	sll	t7,t8,0x3
    3f54:	022fc821 	addu	t9,s1,t7
    3f58:	03227021 	addu	t6,t9,v0
    3f5c:	3c180002 	lui	t8,0x2
    3f60:	030ec021 	addu	t8,t8,t6
    3f64:	9318c9fc 	lbu	t8,-13828(t8)
    3f68:	00103400 	sll	a2,s0,0x10
    3f6c:	00063403 	sra	a2,a2,0x10
    3f70:	001879c0 	sll	t7,t8,0x7
    3f74:	01e32821 	addu	a1,t7,v1
    3f78:	24a53c88 	addiu	a1,a1,15496
    3f7c:	afa70024 	sw	a3,36(sp)
    3f80:	0c000000 	jal	0 <func_80803D40>
    3f84:	a7a20110 	sh	v0,272(sp)
    3f88:	87a20110 	lh	v0,272(sp)
    3f8c:	26100004 	addiu	s0,s0,4
    3f90:	00108400 	sll	s0,s0,0x10
    3f94:	00108403 	sra	s0,s0,0x10
    3f98:	24420001 	addiu	v0,v0,1
    3f9c:	00021400 	sll	v0,v0,0x10
    3fa0:	2a010020 	slti	at,s0,32
    3fa4:	00021403 	sra	v0,v0,0x10
    3fa8:	1420ffe6 	bnez	at,3f44 <func_8080723C+0xa48>
    3fac:	8fa70024 	lw	a3,36(sp)
    3fb0:	8cee49f0 	lw	t6,18928(a3)
    3fb4:	24190300 	li	t9,768
    3fb8:	3c060000 	lui	a2,0x0
    3fbc:	a5d902ba 	sh	t9,698(t6)
    3fc0:	8ce249f0 	lw	v0,18928(a3)
    3fc4:	24010001 	li	at,1
    3fc8:	24c60000 	addiu	a2,a2,0
    3fcc:	844302ba 	lh	v1,698(v0)
    3fd0:	a44302b8 	sh	v1,696(v0)
    3fd4:	8cf849f0 	lw	t8,18928(a3)
    3fd8:	a70302aa 	sh	v1,682(t8)
    3fdc:	8cef49f0 	lw	t7,18928(a3)
    3fe0:	a5e30298 	sh	v1,664(t7)
    3fe4:	8cf949f0 	lw	t9,18928(a3)
    3fe8:	a723027a 	sh	v1,634(t9)
    3fec:	8cee49f0 	lw	t6,18928(a3)
    3ff0:	a5c30278 	sh	v1,632(t6)
    3ff4:	8cf849f0 	lw	t8,18928(a3)
    3ff8:	a703026a 	sh	v1,618(t8)
    3ffc:	8cef49f0 	lw	t7,18928(a3)
    4000:	a5e30258 	sh	v1,600(t7)
    4004:	84e44ac8 	lh	a0,19144(a3)
    4008:	50800006 	beqzl	a0,4024 <func_8080723C+0xb28>
    400c:	8cee49f0 	lw	t6,18928(a3)
    4010:	10810003 	beq	a0,at,4020 <func_8080723C+0xb24>
    4014:	24010004 	li	at,4
    4018:	54810009 	bnel	a0,at,4040 <func_8080723C+0xb44>
    401c:	24010002 	li	at,2
    4020:	8cee49f0 	lw	t6,18928(a3)
    4024:	24190700 	li	t9,1792
    4028:	a5d902b8 	sh	t9,696(t6)
    402c:	8ce249f0 	lw	v0,18928(a3)
    4030:	845802b8 	lh	t8,696(v0)
    4034:	1000000c 	b	4068 <func_8080723C+0xb6c>
    4038:	a4580298 	sh	t8,664(v0)
    403c:	24010002 	li	at,2
    4040:	10810003 	beq	a0,at,4050 <func_8080723C+0xb54>
    4044:	24010003 	li	at,3
    4048:	54810008 	bnel	a0,at,406c <func_8080723C+0xb70>
    404c:	27a400fc 	addiu	a0,sp,252
    4050:	8cf949f0 	lw	t9,18928(a3)
    4054:	240f0500 	li	t7,1280
    4058:	a72f02b8 	sh	t7,696(t9)
    405c:	8ce249f0 	lw	v0,18928(a3)
    4060:	844e02b8 	lh	t6,696(v0)
    4064:	a44e0298 	sh	t6,664(v0)
    4068:	27a400fc 	addiu	a0,sp,252
    406c:	8e250000 	lw	a1,0(s1)
    4070:	0c000000 	jal	0 <func_80803D40>
    4074:	24070133 	li	a3,307
    4078:	8fbf001c 	lw	ra,28(sp)
    407c:	8fb00014 	lw	s0,20(sp)
    4080:	8fb10018 	lw	s1,24(sp)
    4084:	03e00008 	jr	ra
    4088:	27bd0120 	addiu	sp,sp,288

0000408c <func_80807DCC>:
    408c:	27bdff78 	addiu	sp,sp,-136
    4090:	afbf003c 	sw	ra,60(sp)
    4094:	afbe0038 	sw	s8,56(sp)
    4098:	afb70034 	sw	s7,52(sp)
    409c:	afb60030 	sw	s6,48(sp)
    40a0:	afb5002c 	sw	s5,44(sp)
    40a4:	afb40028 	sw	s4,40(sp)
    40a8:	afb30024 	sw	s3,36(sp)
    40ac:	afb20020 	sw	s2,32(sp)
    40b0:	afb1001c 	sw	s1,28(sp)
    40b4:	afb00018 	sw	s0,24(sp)
    40b8:	8c850000 	lw	a1,0(a0)
    40bc:	0080a025 	move	s4,a0
    40c0:	3c060000 	lui	a2,0x0
    40c4:	00008825 	move	s1,zero
    40c8:	0000a825 	move	s5,zero
    40cc:	24c60000 	addiu	a2,a2,0
    40d0:	27a40064 	addiu	a0,sp,100
    40d4:	24070144 	li	a3,324
    40d8:	0c000000 	jal	0 <func_80803D40>
    40dc:	00a0b025 	move	s6,a1
    40e0:	0c000000 	jal	0 <func_80803D40>
    40e4:	8e840000 	lw	a0,0(s4)
    40e8:	8ec302c0 	lw	v1,704(s6)
    40ec:	3c0fe300 	lui	t7,0xe300
    40f0:	35ef0a01 	ori	t7,t7,0xa01
    40f4:	246e0008 	addiu	t6,v1,8
    40f8:	aece02c0 	sw	t6,704(s6)
    40fc:	3c180010 	lui	t8,0x10
    4100:	ac780004 	sw	t8,4(v1)
    4104:	ac6f0000 	sw	t7,0(v1)
    4108:	8ec302c0 	lw	v1,704(s6)
    410c:	3c08e200 	lui	t0,0xe200
    4110:	3c090c18 	lui	t1,0xc18
    4114:	24790008 	addiu	t9,v1,8
    4118:	aed902c0 	sw	t9,704(s6)
    411c:	35294240 	ori	t1,t1,0x4240
    4120:	3508001c 	ori	t0,t0,0x1c
    4124:	ac680000 	sw	t0,0(v1)
    4128:	ac690004 	sw	t1,4(v1)
    412c:	8ec302c0 	lw	v1,704(s6)
    4130:	3c0bfcff 	lui	t3,0xfcff
    4134:	3c0cfffd 	lui	t4,0xfffd
    4138:	246a0008 	addiu	t2,v1,8
    413c:	aeca02c0 	sw	t2,704(s6)
    4140:	358c9238 	ori	t4,t4,0x9238
    4144:	356badff 	ori	t3,t3,0xadff
    4148:	ac6b0000 	sw	t3,0(v1)
    414c:	ac6c0004 	sw	t4,4(v1)
    4150:	8ec302c0 	lw	v1,704(s6)
    4154:	3c010001 	lui	at,0x1
    4158:	34218000 	ori	at,at,0x8000
    415c:	246d0008 	addiu	t5,v1,8
    4160:	aecd02c0 	sw	t5,704(s6)
    4164:	0281f021 	addu	s8,s4,at
    4168:	87ce4acc 	lh	t6,19148(s8)
    416c:	3c01fa00 	lui	at,0xfa00
    4170:	2419ffff 	li	t9,-1
    4174:	31cf00ff 	andi	t7,t6,0xff
    4178:	01e1c025 	or	t8,t7,at
    417c:	3401e760 	li	at,0xe760
    4180:	3c170102 	lui	s7,0x102
    4184:	3c130000 	lui	s3,0x0
    4188:	26730000 	addiu	s3,s3,0
    418c:	36f70040 	ori	s7,s7,0x40
    4190:	02819021 	addu	s2,s4,at
    4194:	ac780000 	sw	t8,0(v1)
    4198:	ac790004 	sw	t9,4(v1)
    419c:	8ec302c0 	lw	v1,704(s6)
    41a0:	00155100 	sll	t2,s5,0x4
    41a4:	00008025 	move	s0,zero
    41a8:	24680008 	addiu	t0,v1,8
    41ac:	aec802c0 	sw	t0,704(s6)
    41b0:	ac770000 	sw	s7,0(v1)
    41b4:	8fc949ec 	lw	t1,18924(s8)
    41b8:	012a5821 	addu	t3,t1,t2
    41bc:	ac6b0004 	sw	t3,4(v1)
    41c0:	00116040 	sll	t4,s1,0x1
    41c4:	026c6821 	addu	t5,s3,t4
    41c8:	85ae0000 	lh	t6,0(t5)
    41cc:	00103400 	sll	a2,s0,0x10
    41d0:	00063403 	sra	a2,a2,0x10
    41d4:	000e79c0 	sll	t7,t6,0x7
    41d8:	01f22821 	addu	a1,t7,s2
    41dc:	24a53c88 	addiu	a1,a1,15496
    41e0:	0c000000 	jal	0 <func_80803D40>
    41e4:	8e840000 	lw	a0,0(s4)
    41e8:	26100004 	addiu	s0,s0,4
    41ec:	00108400 	sll	s0,s0,0x10
    41f0:	00108403 	sra	s0,s0,0x10
    41f4:	26310001 	addiu	s1,s1,1
    41f8:	00118c00 	sll	s1,s1,0x10
    41fc:	2a010020 	slti	at,s0,32
    4200:	1420ffef 	bnez	at,41c0 <func_80807DCC+0x134>
    4204:	00118c03 	sra	s1,s1,0x10
    4208:	26b50020 	addiu	s5,s5,32
    420c:	0015ac00 	sll	s5,s5,0x10
    4210:	0015ac03 	sra	s5,s5,0x10
    4214:	2aa10100 	slti	at,s5,256
    4218:	5420ffe1 	bnezl	at,41a0 <func_80807DCC+0x114>
    421c:	8ec302c0 	lw	v1,704(s6)
    4220:	8ec302c0 	lw	v1,704(s6)
    4224:	3c190100 	lui	t9,0x100
    4228:	37394008 	ori	t9,t9,0x4008
    422c:	24780008 	addiu	t8,v1,8
    4230:	aed802c0 	sw	t8,704(s6)
    4234:	ac790000 	sw	t9,0(v1)
    4238:	8fc849ec 	lw	t0,18924(s8)
    423c:	3c130000 	lui	s3,0x0
    4240:	26730000 	addiu	s3,s3,0
    4244:	00115040 	sll	t2,s1,0x1
    4248:	25091000 	addiu	t1,t0,4096
    424c:	026a5821 	addu	t3,s3,t2
    4250:	ac690004 	sw	t1,4(v1)
    4254:	856c0000 	lh	t4,0(t3)
    4258:	3401e760 	li	at,0xe760
    425c:	02819021 	addu	s2,s4,at
    4260:	000c69c0 	sll	t5,t4,0x7
    4264:	01b22821 	addu	a1,t5,s2
    4268:	24a53c88 	addiu	a1,a1,15496
    426c:	8e840000 	lw	a0,0(s4)
    4270:	0c000000 	jal	0 <func_80803D40>
    4274:	00003025 	move	a2,zero
    4278:	3c060000 	lui	a2,0x0
    427c:	24c60000 	addiu	a2,a2,0
    4280:	27a40064 	addiu	a0,sp,100
    4284:	8e850000 	lw	a1,0(s4)
    4288:	0c000000 	jal	0 <func_80803D40>
    428c:	2407015b 	li	a3,347
    4290:	8fbf003c 	lw	ra,60(sp)
    4294:	8fb00018 	lw	s0,24(sp)
    4298:	8fb1001c 	lw	s1,28(sp)
    429c:	8fb20020 	lw	s2,32(sp)
    42a0:	8fb30024 	lw	s3,36(sp)
    42a4:	8fb40028 	lw	s4,40(sp)
    42a8:	8fb5002c 	lw	s5,44(sp)
    42ac:	8fb60030 	lw	s6,48(sp)
    42b0:	8fb70034 	lw	s7,52(sp)
    42b4:	8fbe0038 	lw	s8,56(sp)
    42b8:	03e00008 	jr	ra
    42bc:	27bd0088 	addiu	sp,sp,136

000042c0 <func_80808000>:
    42c0:	27bdff10 	addiu	sp,sp,-240
    42c4:	afbf0024 	sw	ra,36(sp)
    42c8:	afb00020 	sw	s0,32(sp)
    42cc:	8c850000 	lw	a1,0(a0)
    42d0:	00808025 	move	s0,a0
    42d4:	3c060000 	lui	a2,0x0
    42d8:	24c60000 	addiu	a2,a2,0
    42dc:	27a400c8 	addiu	a0,sp,200
    42e0:	24070170 	li	a3,368
    42e4:	0c000000 	jal	0 <func_80803D40>
    42e8:	afa500d8 	sw	a1,216(sp)
    42ec:	0c000000 	jal	0 <func_80803D40>
    42f0:	02002025 	move	a0,s0
    42f4:	0c000000 	jal	0 <func_80803D40>
    42f8:	02002025 	move	a0,s0
    42fc:	0c000000 	jal	0 <func_80803D40>
    4300:	02002025 	move	a0,s0
    4304:	3c0a0001 	lui	t2,0x1
    4308:	354a8000 	ori	t2,t2,0x8000
    430c:	020a4021 	addu	t0,s0,t2
    4310:	85054ad4 	lh	a1,19156(t0)
    4314:	8d0349f0 	lw	v1,18928(t0)
    4318:	8fab00d8 	lw	t3,216(sp)
    431c:	00052880 	sll	a1,a1,0x2
    4320:	24a50004 	addiu	a1,a1,4
    4324:	00052c00 	sll	a1,a1,0x10
    4328:	00052c03 	sra	a1,a1,0x10
    432c:	00052100 	sll	a0,a1,0x4
    4330:	00647021 	addu	t6,v1,a0
    4334:	85c20000 	lh	v0,0(t6)
    4338:	24010001 	li	at,1
    433c:	2442fffa 	addiu	v0,v0,-6
    4340:	00021400 	sll	v0,v0,0x10
    4344:	00021403 	sra	v0,v0,0x10
    4348:	a4620260 	sh	v0,608(v1)
    434c:	8d0f49f0 	lw	t7,18928(t0)
    4350:	a5e20240 	sh	v0,576(t7)
    4354:	8d0349f0 	lw	v1,18928(t0)
    4358:	84620240 	lh	v0,576(v1)
    435c:	24420018 	addiu	v0,v0,24
    4360:	00021400 	sll	v0,v0,0x10
    4364:	00021403 	sra	v0,v0,0x10
    4368:	a4620270 	sh	v0,624(v1)
    436c:	8d1849f0 	lw	t8,18928(t0)
    4370:	a7020250 	sh	v0,592(t8)
    4374:	8d0349f0 	lw	v1,18928(t0)
    4378:	0064c821 	addu	t9,v1,a0
    437c:	87220002 	lh	v0,2(t9)
    4380:	24420007 	addiu	v0,v0,7
    4384:	00021400 	sll	v0,v0,0x10
    4388:	00021403 	sra	v0,v0,0x10
    438c:	a4620252 	sh	v0,594(v1)
    4390:	8d0d49f0 	lw	t5,18928(t0)
    4394:	a5a20242 	sh	v0,578(t5)
    4398:	8d0349f0 	lw	v1,18928(t0)
    439c:	84620242 	lh	v0,578(v1)
    43a0:	2442ffe8 	addiu	v0,v0,-24
    43a4:	00021400 	sll	v0,v0,0x10
    43a8:	00021403 	sra	v0,v0,0x10
    43ac:	a4620272 	sh	v0,626(v1)
    43b0:	8d0e49f0 	lw	t6,18928(t0)
    43b4:	a5c20262 	sh	v0,610(t6)
    43b8:	850f4ac8 	lh	t7,19144(t0)
    43bc:	11e00005 	beqz	t7,43d4 <func_80808000+0x114>
    43c0:	afaf0030 	sw	t7,48(sp)
    43c4:	11e10003 	beq	t7,at,43d4 <func_80808000+0x114>
    43c8:	24010004 	li	at,4
    43cc:	55e1002e 	bnel	t7,at,4488 <func_80808000+0x1c8>
    43d0:	8faf0030 	lw	t7,48(sp)
    43d4:	85054ad0 	lh	a1,19152(t0)
    43d8:	8fb90030 	lw	t9,48(sp)
    43dc:	3c040000 	lui	a0,0x0
    43e0:	24840000 	addiu	a0,a0,0
    43e4:	13250007 	beq	t9,a1,4404 <func_80808000+0x144>
    43e8:	03203025 	move	a2,t9
    43ec:	afa80034 	sw	t0,52(sp)
    43f0:	0c000000 	jal	0 <func_80803D40>
    43f4:	afab00d8 	sw	t3,216(sp)
    43f8:	8fa80034 	lw	t0,52(sp)
    43fc:	8fab00d8 	lw	t3,216(sp)
    4400:	85054ad0 	lh	a1,19152(t0)
    4404:	3c040000 	lui	a0,0x0
    4408:	24840000 	addiu	a0,a0,0
    440c:	00057180 	sll	t6,a1,0x6
    4410:	008e7821 	addu	t7,a0,t6
    4414:	85e20040 	lh	v0,64(t7)
    4418:	8d1849f0 	lw	t8,18928(t0)
    441c:	2442fffc 	addiu	v0,v0,-4
    4420:	00021400 	sll	v0,v0,0x10
    4424:	00021403 	sra	v0,v0,0x10
    4428:	a70202a0 	sh	v0,672(t8)
    442c:	8d1949f0 	lw	t9,18928(t0)
    4430:	a7220280 	sh	v0,640(t9)
    4434:	8d0349f0 	lw	v1,18928(t0)
    4438:	84620280 	lh	v0,640(v1)
    443c:	24420034 	addiu	v0,v0,52
    4440:	00021400 	sll	v0,v0,0x10
    4444:	00021403 	sra	v0,v0,0x10
    4448:	a46202b0 	sh	v0,688(v1)
    444c:	8d0d49f0 	lw	t5,18928(t0)
    4450:	a5a20290 	sh	v0,656(t5)
    4454:	850f4ad0 	lh	t7,19152(t0)
    4458:	8d0d49f0 	lw	t5,18928(t0)
    445c:	000fc180 	sll	t8,t7,0x6
    4460:	0098c821 	addu	t9,a0,t8
    4464:	87220042 	lh	v0,66(t9)
    4468:	24420004 	addiu	v0,v0,4
    446c:	00021400 	sll	v0,v0,0x10
    4470:	00021403 	sra	v0,v0,0x10
    4474:	a5a20292 	sh	v0,658(t5)
    4478:	8d0e49f0 	lw	t6,18928(t0)
    447c:	10000067 	b	461c <func_80808000+0x35c>
    4480:	a5c20282 	sh	v0,642(t6)
    4484:	8faf0030 	lw	t7,48(sp)
    4488:	24010002 	li	at,2
    448c:	11e10003 	beq	t7,at,449c <func_80808000+0x1dc>
    4490:	24010003 	li	at,3
    4494:	55e1002e 	bnel	t7,at,4550 <func_80808000+0x290>
    4498:	85054ace 	lh	a1,19150(t0)
    449c:	85054ad0 	lh	a1,19152(t0)
    44a0:	8fb80030 	lw	t8,48(sp)
    44a4:	3c040000 	lui	a0,0x0
    44a8:	24840000 	addiu	a0,a0,0
    44ac:	13050007 	beq	t8,a1,44cc <func_80808000+0x20c>
    44b0:	03003025 	move	a2,t8
    44b4:	afa80034 	sw	t0,52(sp)
    44b8:	0c000000 	jal	0 <func_80803D40>
    44bc:	afab00d8 	sw	t3,216(sp)
    44c0:	8fa80034 	lw	t0,52(sp)
    44c4:	8fab00d8 	lw	t3,216(sp)
    44c8:	85054ad0 	lh	a1,19152(t0)
    44cc:	3c040000 	lui	a0,0x0
    44d0:	24840000 	addiu	a0,a0,0
    44d4:	00056980 	sll	t5,a1,0x6
    44d8:	008d7021 	addu	t6,a0,t5
    44dc:	85c20040 	lh	v0,64(t6)
    44e0:	8d0f49f0 	lw	t7,18928(t0)
    44e4:	2442fffc 	addiu	v0,v0,-4
    44e8:	00021400 	sll	v0,v0,0x10
    44ec:	00021403 	sra	v0,v0,0x10
    44f0:	a5e202a0 	sh	v0,672(t7)
    44f4:	8d1849f0 	lw	t8,18928(t0)
    44f8:	a7020280 	sh	v0,640(t8)
    44fc:	8d0349f0 	lw	v1,18928(t0)
    4500:	84620280 	lh	v0,640(v1)
    4504:	24420028 	addiu	v0,v0,40
    4508:	00021400 	sll	v0,v0,0x10
    450c:	00021403 	sra	v0,v0,0x10
    4510:	a46202b0 	sh	v0,688(v1)
    4514:	8d1949f0 	lw	t9,18928(t0)
    4518:	a7220290 	sh	v0,656(t9)
    451c:	850e4ad0 	lh	t6,19152(t0)
    4520:	8d1949f0 	lw	t9,18928(t0)
    4524:	000e7980 	sll	t7,t6,0x6
    4528:	008fc021 	addu	t8,a0,t7
    452c:	87020042 	lh	v0,66(t8)
    4530:	24420004 	addiu	v0,v0,4
    4534:	00021400 	sll	v0,v0,0x10
    4538:	00021403 	sra	v0,v0,0x10
    453c:	a7220292 	sh	v0,658(t9)
    4540:	8d0d49f0 	lw	t5,18928(t0)
    4544:	10000035 	b	461c <func_80808000+0x35c>
    4548:	a5a20282 	sh	v0,642(t5)
    454c:	85054ace 	lh	a1,19150(t0)
    4550:	28a10041 	slti	at,a1,65
    4554:	5420000e 	bnezl	at,4590 <func_80808000+0x2d0>
    4558:	8d0f49ec 	lw	t7,18924(t0)
    455c:	8fae0030 	lw	t6,48(sp)
    4560:	85064ad0 	lh	a2,19152(t0)
    4564:	85074ad2 	lh	a3,19154(t0)
    4568:	3c040000 	lui	a0,0x0
    456c:	24840000 	addiu	a0,a0,0
    4570:	afab00d8 	sw	t3,216(sp)
    4574:	afa80034 	sw	t0,52(sp)
    4578:	0c000000 	jal	0 <func_80803D40>
    457c:	afae0010 	sw	t6,16(sp)
    4580:	8fa80034 	lw	t0,52(sp)
    4584:	8fab00d8 	lw	t3,216(sp)
    4588:	85054ace 	lh	a1,19150(t0)
    458c:	8d0f49ec 	lw	t7,18924(t0)
    4590:	0005c980 	sll	t9,a1,0x6
    4594:	0005c040 	sll	t8,a1,0x1
    4598:	01f96821 	addu	t5,t7,t9
    459c:	3c0f0000 	lui	t7,0x0
    45a0:	01f87821 	addu	t7,t7,t8
    45a4:	85ef0000 	lh	t7,0(t7)
    45a8:	85ae0000 	lh	t6,0(t5)
    45ac:	8d1949f0 	lw	t9,18928(t0)
    45b0:	01cf1023 	subu	v0,t6,t7
    45b4:	2442fffa 	addiu	v0,v0,-6
    45b8:	00021400 	sll	v0,v0,0x10
    45bc:	00021403 	sra	v0,v0,0x10
    45c0:	a72202a0 	sh	v0,672(t9)
    45c4:	8d0d49f0 	lw	t5,18928(t0)
    45c8:	a5a20280 	sh	v0,640(t5)
    45cc:	8d0349f0 	lw	v1,18928(t0)
    45d0:	84620280 	lh	v0,640(v1)
    45d4:	24420018 	addiu	v0,v0,24
    45d8:	00021400 	sll	v0,v0,0x10
    45dc:	00021403 	sra	v0,v0,0x10
    45e0:	a46202b0 	sh	v0,688(v1)
    45e4:	8d1849f0 	lw	t8,18928(t0)
    45e8:	a7020290 	sh	v0,656(t8)
    45ec:	85194ace 	lh	t9,19150(t0)
    45f0:	8d0e49ec 	lw	t6,18924(t0)
    45f4:	8d0f49f0 	lw	t7,18928(t0)
    45f8:	00196980 	sll	t5,t9,0x6
    45fc:	01cdc021 	addu	t8,t6,t5
    4600:	87020002 	lh	v0,2(t8)
    4604:	24420006 	addiu	v0,v0,6
    4608:	00021400 	sll	v0,v0,0x10
    460c:	00021403 	sra	v0,v0,0x10
    4610:	a5e20292 	sh	v0,658(t7)
    4614:	8d1949f0 	lw	t9,18928(t0)
    4618:	a7220282 	sh	v0,642(t9)
    461c:	8d0349f0 	lw	v1,18928(t0)
    4620:	3c180100 	lui	t8,0x100
    4624:	37188010 	ori	t8,t8,0x8010
    4628:	84620282 	lh	v0,642(v1)
    462c:	3c0ce700 	lui	t4,0xe700
    4630:	3c04fd90 	lui	a0,0xfd90
    4634:	2442ffe8 	addiu	v0,v0,-24
    4638:	00021400 	sll	v0,v0,0x10
    463c:	00021403 	sra	v0,v0,0x10
    4640:	a46202b2 	sh	v0,690(v1)
    4644:	8d0e49f0 	lw	t6,18928(t0)
    4648:	3c05f590 	lui	a1,0xf590
    464c:	3c060700 	lui	a2,0x700
    4650:	a5c202a2 	sh	v0,674(t6)
    4654:	8d6202c0 	lw	v0,704(t3)
    4658:	3c07e600 	lui	a3,0xe600
    465c:	3c09f300 	lui	t1,0xf300
    4660:	244d0008 	addiu	t5,v0,8
    4664:	ad6d02c0 	sw	t5,704(t3)
    4668:	ac580000 	sw	t8,0(v0)
    466c:	8d0f49f0 	lw	t7,18928(t0)
    4670:	3c18fc61 	lui	t8,0xfc61
    4674:	371896c3 	ori	t8,t8,0x96c3
    4678:	25f90240 	addiu	t9,t7,576
    467c:	ac590004 	sw	t9,4(v0)
    4680:	8d6202c0 	lw	v0,704(t3)
    4684:	3c0fff2f 	lui	t7,0xff2f
    4688:	35efffff 	ori	t7,t7,0xffff
    468c:	244e0008 	addiu	t6,v0,8
    4690:	ad6e02c0 	sw	t6,704(t3)
    4694:	ac400004 	sw	zero,4(v0)
    4698:	ac4c0000 	sw	t4,0(v0)
    469c:	8d6202c0 	lw	v0,704(t3)
    46a0:	3c0efa00 	lui	t6,0xfa00
    46a4:	24010001 	li	at,1
    46a8:	244d0008 	addiu	t5,v0,8
    46ac:	ad6d02c0 	sw	t5,704(t3)
    46b0:	ac4f0004 	sw	t7,4(v0)
    46b4:	ac580000 	sw	t8,0(v0)
    46b8:	8d6202c0 	lw	v0,704(t3)
    46bc:	24590008 	addiu	t9,v0,8
    46c0:	ad7902c0 	sw	t9,704(t3)
    46c4:	ac4e0000 	sw	t6,0(v0)
    46c8:	85194aa2 	lh	t9,19106(t0)
    46cc:	850f4aa4 	lh	t7,19108(t0)
    46d0:	850d4aa8 	lh	t5,19112(t0)
    46d4:	00197600 	sll	t6,t9,0x18
    46d8:	31f900ff 	andi	t9,t7,0xff
    46dc:	31b800ff 	andi	t8,t5,0xff
    46e0:	850f4aa6 	lh	t7,19110(t0)
    46e4:	030e6825 	or	t5,t8,t6
    46e8:	0019c400 	sll	t8,t9,0x10
    46ec:	01b87025 	or	t6,t5,t8
    46f0:	31f900ff 	andi	t9,t7,0xff
    46f4:	00196a00 	sll	t5,t9,0x8
    46f8:	01cdc025 	or	t8,t6,t5
    46fc:	ac580004 	sw	t8,4(v0)
    4700:	8d6202c0 	lw	v0,704(t3)
    4704:	3c190102 	lui	t9,0x102
    4708:	2739bd40 	addiu	t9,t9,-17088
    470c:	244f0008 	addiu	t7,v0,8
    4710:	ad6f02c0 	sw	t7,704(t3)
    4714:	ac590004 	sw	t9,4(v0)
    4718:	ac440000 	sw	a0,0(v0)
    471c:	8d6202c0 	lw	v0,704(t3)
    4720:	3c0f0711 	lui	t7,0x711
    4724:	35eff2ab 	ori	t7,t7,0xf2ab
    4728:	244e0008 	addiu	t6,v0,8
    472c:	ad6e02c0 	sw	t6,704(t3)
    4730:	ac460004 	sw	a2,4(v0)
    4734:	ac450000 	sw	a1,0(v0)
    4738:	8d6202c0 	lw	v0,704(t3)
    473c:	244d0008 	addiu	t5,v0,8
    4740:	ad6d02c0 	sw	t5,704(t3)
    4744:	ac400004 	sw	zero,4(v0)
    4748:	ac470000 	sw	a3,0(v0)
    474c:	8d6202c0 	lw	v0,704(t3)
    4750:	3c0df588 	lui	t5,0xf588
    4754:	35ad0600 	ori	t5,t5,0x600
    4758:	24580008 	addiu	t8,v0,8
    475c:	ad7802c0 	sw	t8,704(t3)
    4760:	ac4f0004 	sw	t7,4(v0)
    4764:	ac490000 	sw	t1,0(v0)
    4768:	8d6202c0 	lw	v0,704(t3)
    476c:	3c0f0005 	lui	t7,0x5
    4770:	35efc05c 	ori	t7,t7,0xc05c
    4774:	24590008 	addiu	t9,v0,8
    4778:	ad7902c0 	sw	t9,704(t3)
    477c:	ac400004 	sw	zero,4(v0)
    4780:	ac4c0000 	sw	t4,0(v0)
    4784:	8d6202c0 	lw	v0,704(t3)
    4788:	3c0cf200 	lui	t4,0xf200
    478c:	244e0008 	addiu	t6,v0,8
    4790:	ad6e02c0 	sw	t6,704(t3)
    4794:	ac400004 	sw	zero,4(v0)
    4798:	ac4d0000 	sw	t5,0(v0)
    479c:	8d6202c0 	lw	v0,704(t3)
    47a0:	3c0e0700 	lui	t6,0x700
    47a4:	35ce0406 	ori	t6,t6,0x406
    47a8:	24580008 	addiu	t8,v0,8
    47ac:	ad7802c0 	sw	t8,704(t3)
    47b0:	ac4f0004 	sw	t7,4(v0)
    47b4:	ac4c0000 	sw	t4,0(v0)
    47b8:	8d6202c0 	lw	v0,704(t3)
    47bc:	240d0602 	li	t5,1538
    47c0:	24590008 	addiu	t9,v0,8
    47c4:	ad7902c0 	sw	t9,704(t3)
    47c8:	ac4d0004 	sw	t5,4(v0)
    47cc:	ac4e0000 	sw	t6,0(v0)
    47d0:	85024ac8 	lh	v0,19144(t0)
    47d4:	50400006 	beqzl	v0,47f0 <func_80808000+0x530>
    47d8:	8d6202c0 	lw	v0,704(t3)
    47dc:	10410003 	beq	v0,at,47ec <func_80808000+0x52c>
    47e0:	24010004 	li	at,4
    47e4:	5441002f 	bnel	v0,at,48a4 <func_80808000+0x5e4>
    47e8:	24010002 	li	at,2
    47ec:	8d6202c0 	lw	v0,704(t3)
    47f0:	3c0f0102 	lui	t7,0x102
    47f4:	25efbf80 	addiu	t7,t7,-16512
    47f8:	24580008 	addiu	t8,v0,8
    47fc:	ad7802c0 	sw	t8,704(t3)
    4800:	ac4f0004 	sw	t7,4(v0)
    4804:	ac440000 	sw	a0,0(v0)
    4808:	8d6202c0 	lw	v0,704(t3)
    480c:	3c180729 	lui	t8,0x729
    4810:	3718f125 	ori	t8,t8,0xf125
    4814:	24590008 	addiu	t9,v0,8
    4818:	ad7902c0 	sw	t9,704(t3)
    481c:	ac460004 	sw	a2,4(v0)
    4820:	ac450000 	sw	a1,0(v0)
    4824:	8d6202c0 	lw	v0,704(t3)
    4828:	3c19e700 	lui	t9,0xe700
    482c:	244e0008 	addiu	t6,v0,8
    4830:	ad6e02c0 	sw	t6,704(t3)
    4834:	ac400004 	sw	zero,4(v0)
    4838:	ac470000 	sw	a3,0(v0)
    483c:	8d6202c0 	lw	v0,704(t3)
    4840:	244d0008 	addiu	t5,v0,8
    4844:	ad6d02c0 	sw	t5,704(t3)
    4848:	ac580004 	sw	t8,4(v0)
    484c:	ac490000 	sw	t1,0(v0)
    4850:	8d6202c0 	lw	v0,704(t3)
    4854:	3c0df588 	lui	t5,0xf588
    4858:	35ad0e00 	ori	t5,t5,0xe00
    485c:	244f0008 	addiu	t7,v0,8
    4860:	ad6f02c0 	sw	t7,704(t3)
    4864:	ac400004 	sw	zero,4(v0)
    4868:	ac590000 	sw	t9,0(v0)
    486c:	8d6202c0 	lw	v0,704(t3)
    4870:	3c0f000d 	lui	t7,0xd
    4874:	35efc05c 	ori	t7,t7,0xc05c
    4878:	244e0008 	addiu	t6,v0,8
    487c:	ad6e02c0 	sw	t6,704(t3)
    4880:	ac400004 	sw	zero,4(v0)
    4884:	ac4d0000 	sw	t5,0(v0)
    4888:	8d6202c0 	lw	v0,704(t3)
    488c:	24580008 	addiu	t8,v0,8
    4890:	ad7802c0 	sw	t8,704(t3)
    4894:	ac4f0004 	sw	t7,4(v0)
    4898:	10000032 	b	4964 <func_80808000+0x6a4>
    489c:	ac4c0000 	sw	t4,0(v0)
    48a0:	24010002 	li	at,2
    48a4:	10410003 	beq	v0,at,48b4 <func_80808000+0x5f4>
    48a8:	24010003 	li	at,3
    48ac:	5441002e 	bnel	v0,at,4968 <func_80808000+0x6a8>
    48b0:	8d6202c0 	lw	v0,704(t3)
    48b4:	8d6202c0 	lw	v0,704(t3)
    48b8:	3c0e0102 	lui	t6,0x102
    48bc:	25cec4c0 	addiu	t6,t6,-15168
    48c0:	24590008 	addiu	t9,v0,8
    48c4:	ad7902c0 	sw	t9,704(t3)
    48c8:	ac4e0004 	sw	t6,4(v0)
    48cc:	ac440000 	sw	a0,0(v0)
    48d0:	8d6202c0 	lw	v0,704(t3)
    48d4:	3c19071d 	lui	t9,0x71d
    48d8:	3739f19a 	ori	t9,t9,0xf19a
    48dc:	244d0008 	addiu	t5,v0,8
    48e0:	ad6d02c0 	sw	t5,704(t3)
    48e4:	ac460004 	sw	a2,4(v0)
    48e8:	ac450000 	sw	a1,0(v0)
    48ec:	8d6202c0 	lw	v0,704(t3)
    48f0:	3c0de700 	lui	t5,0xe700
    48f4:	24580008 	addiu	t8,v0,8
    48f8:	ad7802c0 	sw	t8,704(t3)
    48fc:	ac400004 	sw	zero,4(v0)
    4900:	ac470000 	sw	a3,0(v0)
    4904:	8d6202c0 	lw	v0,704(t3)
    4908:	244f0008 	addiu	t7,v0,8
    490c:	ad6f02c0 	sw	t7,704(t3)
    4910:	ac590004 	sw	t9,4(v0)
    4914:	ac490000 	sw	t1,0(v0)
    4918:	8d6202c0 	lw	v0,704(t3)
    491c:	3c0ff588 	lui	t7,0xf588
    4920:	35ef0a00 	ori	t7,t7,0xa00
    4924:	244e0008 	addiu	t6,v0,8
    4928:	ad6e02c0 	sw	t6,704(t3)
    492c:	ac400004 	sw	zero,4(v0)
    4930:	ac4d0000 	sw	t5,0(v0)
    4934:	8d6202c0 	lw	v0,704(t3)
    4938:	3c0e0009 	lui	t6,0x9
    493c:	35cec05c 	ori	t6,t6,0xc05c
    4940:	24580008 	addiu	t8,v0,8
    4944:	ad7802c0 	sw	t8,704(t3)
    4948:	ac400004 	sw	zero,4(v0)
    494c:	ac4f0000 	sw	t7,0(v0)
    4950:	8d6202c0 	lw	v0,704(t3)
    4954:	24590008 	addiu	t9,v0,8
    4958:	ad7902c0 	sw	t9,704(t3)
    495c:	ac4e0004 	sw	t6,4(v0)
    4960:	ac4c0000 	sw	t4,0(v0)
    4964:	8d6202c0 	lw	v0,704(t3)
    4968:	3c180708 	lui	t8,0x708
    496c:	3c0f0008 	lui	t7,0x8
    4970:	244d0008 	addiu	t5,v0,8
    4974:	ad6d02c0 	sw	t5,704(t3)
    4978:	35ef0e0a 	ori	t7,t7,0xe0a
    497c:	37180c0e 	ori	t8,t8,0xc0e
    4980:	ac580000 	sw	t8,0(v0)
    4984:	ac4f0004 	sw	t7,4(v0)
    4988:	afab00d8 	sw	t3,216(sp)
    498c:	afa80034 	sw	t0,52(sp)
    4990:	0c000000 	jal	0 <func_80803D40>
    4994:	02002025 	move	a0,s0
    4998:	8fab00d8 	lw	t3,216(sp)
    499c:	8fa80034 	lw	t0,52(sp)
    49a0:	3c0ee700 	lui	t6,0xe700
    49a4:	8d6202c0 	lw	v0,704(t3)
    49a8:	24590008 	addiu	t9,v0,8
    49ac:	ad7902c0 	sw	t9,704(t3)
    49b0:	ac400004 	sw	zero,4(v0)
    49b4:	ac4e0000 	sw	t6,0(v0)
    49b8:	8e040000 	lw	a0,0(s0)
    49bc:	afab00d8 	sw	t3,216(sp)
    49c0:	0c000000 	jal	0 <func_80803D40>
    49c4:	afa80034 	sw	t0,52(sp)
    49c8:	8fab00d8 	lw	t3,216(sp)
    49cc:	8fa80034 	lw	t0,52(sp)
    49d0:	3c18fcff 	lui	t8,0xfcff
    49d4:	8d6202c0 	lw	v0,704(t3)
    49d8:	3c0fff2d 	lui	t7,0xff2d
    49dc:	35effeff 	ori	t7,t7,0xfeff
    49e0:	244d0008 	addiu	t5,v0,8
    49e4:	ad6d02c0 	sw	t5,704(t3)
    49e8:	371897ff 	ori	t8,t8,0x97ff
    49ec:	ac580000 	sw	t8,0(v0)
    49f0:	ac4f0004 	sw	t7,4(v0)
    49f4:	8d6202c0 	lw	v0,704(t3)
    49f8:	3c05fa00 	lui	a1,0xfa00
    49fc:	240effff 	li	t6,-1
    4a00:	24590008 	addiu	t9,v0,8
    4a04:	ad7902c0 	sw	t9,704(t3)
    4a08:	ac4e0004 	sw	t6,4(v0)
    4a0c:	ac450000 	sw	a1,0(v0)
    4a10:	850d4a3e 	lh	t5,19006(t0)
    4a14:	3c0a0001 	lui	t2,0x1
    4a18:	24010021 	li	at,33
    4a1c:	15a101f0 	bne	t5,at,51e0 <func_80808000+0xf20>
    4a20:	354a8000 	ori	t2,t2,0x8000
    4a24:	26180014 	addiu	t8,s0,20
    4a28:	afb80038 	sw	t8,56(sp)
    4a2c:	9703000c 	lhu	v1,12(t8)
    4a30:	2401efff 	li	at,-4097
    4a34:	3c070000 	lui	a3,0x0
    4a38:	0061c827 	nor	t9,v1,at
    4a3c:	17200016 	bnez	t9,4a98 <func_80808000+0x7d8>
    4a40:	2401bfff 	li	at,-16385
    4a44:	3c0e0000 	lui	t6,0x0
    4a48:	24e70000 	addiu	a3,a3,0
    4a4c:	25ce0000 	addiu	t6,t6,0
    4a50:	3c050000 	lui	a1,0x0
    4a54:	24a50000 	addiu	a1,a1,0
    4a58:	afae0014 	sw	t6,20(sp)
    4a5c:	afa70010 	sw	a3,16(sp)
    4a60:	2404483b 	li	a0,18491
    4a64:	24060004 	li	a2,4
    4a68:	0c000000 	jal	0 <func_80803D40>
    4a6c:	afab00d8 	sw	t3,216(sp)
    4a70:	3c010002 	lui	at,0x2
    4a74:	8fab00d8 	lw	t3,216(sp)
    4a78:	00300821 	addu	at,at,s0
    4a7c:	240d0005 	li	t5,5
    4a80:	a42dcad2 	sh	t5,-13614(at)
    4a84:	3c010002 	lui	at,0x2
    4a88:	00300821 	addu	at,at,s0
    4a8c:	24180004 	li	t8,4
    4a90:	100001d3 	b	51e0 <func_80808000+0xf20>
    4a94:	a438cad0 	sh	t8,-13616(at)
    4a98:	00617827 	nor	t7,v1,at
    4a9c:	55e00065 	bnezl	t7,4c34 <func_80808000+0x974>
    4aa0:	85044aca 	lh	a0,19146(t0)
    4aa4:	85024ad4 	lh	v0,19156(t0)
    4aa8:	24010007 	li	at,7
    4aac:	5441002e 	bnel	v0,at,4b68 <func_80808000+0x8a8>
    4ab0:	3c010002 	lui	at,0x2
    4ab4:	85094a38 	lh	t1,19000(t0)
    4ab8:	00021c00 	sll	v1,v0,0x10
    4abc:	2404003e 	li	a0,62
    4ac0:	0009c8c0 	sll	t9,t1,0x3
    4ac4:	02197021 	addu	t6,s0,t9
    4ac8:	01ca6821 	addu	t5,t6,t2
    4acc:	91b84a03 	lbu	t8,18947(t5)
    4ad0:	00031c03 	sra	v1,v1,0x10
    4ad4:	28610007 	slti	at,v1,7
    4ad8:	10980022 	beq	a0,t8,4b64 <func_80808000+0x8a4>
    4adc:	3c070000 	lui	a3,0x0
    4ae0:	1020000e 	beqz	at,4b1c <func_80808000+0x85c>
    4ae4:	24e70000 	addiu	a3,a3,0
    4ae8:	850f4a38 	lh	t7,19000(t0)
    4aec:	000fc8c0 	sll	t9,t7,0x3
    4af0:	02197021 	addu	t6,s0,t9
    4af4:	01c36821 	addu	t5,t6,v1
    4af8:	24630001 	addiu	v1,v1,1
    4afc:	00031c00 	sll	v1,v1,0x10
    4b00:	01aa1021 	addu	v0,t5,t2
    4b04:	905849fd 	lbu	t8,18941(v0)
    4b08:	00031c03 	sra	v1,v1,0x10
    4b0c:	28610007 	slti	at,v1,7
    4b10:	1420fff5 	bnez	at,4ae8 <func_80808000+0x828>
    4b14:	a05849fc 	sb	t8,18940(v0)
    4b18:	85094a38 	lh	t1,19000(t0)
    4b1c:	0009c8c0 	sll	t9,t1,0x3
    4b20:	02197021 	addu	t6,s0,t9
    4b24:	01c36821 	addu	t5,t6,v1
    4b28:	01aac021 	addu	t8,t5,t2
    4b2c:	240f003e 	li	t7,62
    4b30:	a30f49fc 	sb	t7,18940(t8)
    4b34:	3c190000 	lui	t9,0x0
    4b38:	27390000 	addiu	t9,t9,0
    4b3c:	3c050000 	lui	a1,0x0
    4b40:	24a50000 	addiu	a1,a1,0
    4b44:	afb90014 	sw	t9,20(sp)
    4b48:	afab00d8 	sw	t3,216(sp)
    4b4c:	afa70010 	sw	a3,16(sp)
    4b50:	2404483a 	li	a0,18490
    4b54:	0c000000 	jal	0 <func_80803D40>
    4b58:	24060004 	li	a2,4
    4b5c:	100001a0 	b	51e0 <func_80808000+0xf20>
    4b60:	8fab00d8 	lw	t3,216(sp)
    4b64:	3c010002 	lui	at,0x2
    4b68:	00300821 	addu	at,at,s0
    4b6c:	244effff 	addiu	t6,v0,-1
    4b70:	a42ecad4 	sh	t6,-13612(at)
    4b74:	85024ad4 	lh	v0,19156(t0)
    4b78:	3c070000 	lui	a3,0x0
    4b7c:	24e70000 	addiu	a3,a3,0
    4b80:	04410009 	bgez	v0,4ba8 <func_80808000+0x8e8>
    4b84:	00021c00 	sll	v1,v0,0x10
    4b88:	3c010002 	lui	at,0x2
    4b8c:	00300821 	addu	at,at,s0
    4b90:	a420cad4 	sh	zero,-13612(at)
    4b94:	3c010002 	lui	at,0x2
    4b98:	00300821 	addu	at,at,s0
    4b9c:	240d0023 	li	t5,35
    4ba0:	1000018f 	b	51e0 <func_80808000+0xf20>
    4ba4:	a42dca3e 	sh	t5,-13762(at)
    4ba8:	00031c03 	sra	v1,v1,0x10
    4bac:	28610007 	slti	at,v1,7
    4bb0:	1020000d 	beqz	at,4be8 <func_80808000+0x928>
    4bb4:	2404483a 	li	a0,18490
    4bb8:	850f4a38 	lh	t7,19000(t0)
    4bbc:	000fc0c0 	sll	t8,t7,0x3
    4bc0:	0218c821 	addu	t9,s0,t8
    4bc4:	03237021 	addu	t6,t9,v1
    4bc8:	24630001 	addiu	v1,v1,1
    4bcc:	00031c00 	sll	v1,v1,0x10
    4bd0:	01ca1021 	addu	v0,t6,t2
    4bd4:	904d49fd 	lbu	t5,18941(v0)
    4bd8:	00031c03 	sra	v1,v1,0x10
    4bdc:	28610007 	slti	at,v1,7
    4be0:	1420fff5 	bnez	at,4bb8 <func_80808000+0x8f8>
    4be4:	a04d49fc 	sb	t5,18940(v0)
    4be8:	85184a38 	lh	t8,19000(t0)
    4bec:	240f003e 	li	t7,62
    4bf0:	3c050000 	lui	a1,0x0
    4bf4:	0018c8c0 	sll	t9,t8,0x3
    4bf8:	02197021 	addu	t6,s0,t9
    4bfc:	01c36821 	addu	t5,t6,v1
    4c00:	01aac021 	addu	t8,t5,t2
    4c04:	a30f49fc 	sb	t7,18940(t8)
    4c08:	3c190000 	lui	t9,0x0
    4c0c:	27390000 	addiu	t9,t9,0
    4c10:	afb90014 	sw	t9,20(sp)
    4c14:	afab00d8 	sw	t3,216(sp)
    4c18:	afa70010 	sw	a3,16(sp)
    4c1c:	24a50000 	addiu	a1,a1,0
    4c20:	0c000000 	jal	0 <func_80803D40>
    4c24:	24060004 	li	a2,4
    4c28:	1000016d 	b	51e0 <func_80808000+0xf20>
    4c2c:	8fab00d8 	lw	t3,216(sp)
    4c30:	85044aca 	lh	a0,19146(t0)
    4c34:	28810003 	slti	at,a0,3
    4c38:	5020016a 	beqzl	at,51e4 <func_80808000+0xf24>
    4c3c:	8d6202c0 	lw	v0,704(t3)
    4c40:	850e4ad2 	lh	t6,19154(t0)
    4c44:	24010005 	li	at,5
    4c48:	3c0fffff 	lui	t7,0xffff
    4c4c:	11c10054 	beq	t6,at,4da0 <func_80808000+0xae0>
    4c50:	35ef00ff 	ori	t7,t7,0xff
    4c54:	8d6202c0 	lw	v0,704(t3)
    4c58:	3c190100 	lui	t9,0x100
    4c5c:	37394008 	ori	t9,t9,0x4008
    4c60:	244d0008 	addiu	t5,v0,8
    4c64:	ad6d02c0 	sw	t5,704(t3)
    4c68:	ac4f0004 	sw	t7,4(v0)
    4c6c:	ac450000 	sw	a1,0(v0)
    4c70:	8d6202c0 	lw	v0,704(t3)
    4c74:	3c010001 	lui	at,0x1
    4c78:	342123e8 	ori	at,at,0x23e8
    4c7c:	24580008 	addiu	t8,v0,8
    4c80:	ad7802c0 	sw	t8,704(t3)
    4c84:	ac590000 	sw	t9,0(v0)
    4c88:	850d4ace 	lh	t5,19150(t0)
    4c8c:	8d0e49ec 	lw	t6,18924(t0)
    4c90:	00003025 	move	a2,zero
    4c94:	000d7980 	sll	t7,t5,0x6
    4c98:	01cfc021 	addu	t8,t6,t7
    4c9c:	ac580004 	sw	t8,4(v0)
    4ca0:	85194ace 	lh	t9,19150(t0)
    4ca4:	3c0e0000 	lui	t6,0x0
    4ca8:	8e040000 	lw	a0,0(s0)
    4cac:	00196840 	sll	t5,t9,0x1
    4cb0:	01cd7021 	addu	t6,t6,t5
    4cb4:	85ce0000 	lh	t6,0(t6)
    4cb8:	afab00d8 	sw	t3,216(sp)
    4cbc:	afa80034 	sw	t0,52(sp)
    4cc0:	000e79c0 	sll	t7,t6,0x7
    4cc4:	01f02821 	addu	a1,t7,s0
    4cc8:	0c000000 	jal	0 <func_80803D40>
    4ccc:	00a12821 	addu	a1,a1,at
    4cd0:	8fb80038 	lw	t8,56(sp)
    4cd4:	3c01ffff 	lui	at,0xffff
    4cd8:	34217fff 	ori	at,at,0x7fff
    4cdc:	9719000c 	lhu	t9,12(t8)
    4ce0:	8fa80034 	lw	t0,52(sp)
    4ce4:	8fab00d8 	lw	t3,216(sp)
    4ce8:	03216827 	nor	t5,t9,at
    4cec:	15a00029 	bnez	t5,4d94 <func_80808000+0xad4>
    4cf0:	3c070000 	lui	a3,0x0
    4cf4:	3c0e0000 	lui	t6,0x0
    4cf8:	24e70000 	addiu	a3,a3,0
    4cfc:	25ce0000 	addiu	t6,t6,0
    4d00:	3c050000 	lui	a1,0x0
    4d04:	24a50000 	addiu	a1,a1,0
    4d08:	afae0014 	sw	t6,20(sp)
    4d0c:	afa70010 	sw	a3,16(sp)
    4d10:	2404483a 	li	a0,18490
    4d14:	24060004 	li	a2,4
    4d18:	afa80034 	sw	t0,52(sp)
    4d1c:	0c000000 	jal	0 <func_80803D40>
    4d20:	afab00d8 	sw	t3,216(sp)
    4d24:	8fa80034 	lw	t0,52(sp)
    4d28:	3c190000 	lui	t9,0x0
    4d2c:	3c0a0001 	lui	t2,0x1
    4d30:	850f4ace 	lh	t7,19150(t0)
    4d34:	850d4a38 	lh	t5,19000(t0)
    4d38:	354a8000 	ori	t2,t2,0x8000
    4d3c:	000fc040 	sll	t8,t7,0x1
    4d40:	0338c821 	addu	t9,t9,t8
    4d44:	85184ad4 	lh	t8,19156(t0)
    4d48:	000d70c0 	sll	t6,t5,0x3
    4d4c:	87390000 	lh	t9,0(t9)
    4d50:	020e7821 	addu	t7,s0,t6
    4d54:	01f86821 	addu	t5,t7,t8
    4d58:	8fab00d8 	lw	t3,216(sp)
    4d5c:	01aa7021 	addu	t6,t5,t2
    4d60:	a1d949fc 	sb	t9,18940(t6)
    4d64:	850f4ad4 	lh	t7,19156(t0)
    4d68:	3c010002 	lui	at,0x2
    4d6c:	00300821 	addu	at,at,s0
    4d70:	25f80001 	addiu	t8,t7,1
    4d74:	a438cad4 	sh	t8,-13612(at)
    4d78:	850d4ad4 	lh	t5,19156(t0)
    4d7c:	24190007 	li	t9,7
    4d80:	29a10008 	slti	at,t5,8
    4d84:	14200003 	bnez	at,4d94 <func_80808000+0xad4>
    4d88:	3c010002 	lui	at,0x2
    4d8c:	00300821 	addu	at,at,s0
    4d90:	a439cad4 	sh	t9,-13612(at)
    4d94:	8fae0038 	lw	t6,56(sp)
    4d98:	100000d5 	b	50f0 <func_80808000+0xe30>
    4d9c:	95c3000c 	lhu	v1,12(t6)
    4da0:	3c01ffff 	lui	at,0xffff
    4da4:	34217fff 	ori	at,at,0x7fff
    4da8:	00617827 	nor	t7,v1,at
    4dac:	55e000d1 	bnezl	t7,50f4 <func_80808000+0xe34>
    4db0:	2401fffe 	li	at,-2
    4db4:	85024ac8 	lh	v0,19144(t0)
    4db8:	24010003 	li	at,3
    4dbc:	504400cd 	beql	v0,a0,50f4 <func_80808000+0xe34>
    4dc0:	2401fffe 	li	at,-2
    4dc4:	54410067 	bnel	v0,at,4f64 <func_80808000+0xca4>
    4dc8:	24010004 	li	at,4
    4dcc:	85024ad4 	lh	v0,19156(t0)
    4dd0:	24010007 	li	at,7
    4dd4:	3c050000 	lui	a1,0x0
    4dd8:	1441002f 	bne	v0,at,4e98 <func_80808000+0xbd8>
    4ddc:	24a50000 	addiu	a1,a1,0
    4de0:	85094a38 	lh	t1,19000(t0)
    4de4:	00021c00 	sll	v1,v0,0x10
    4de8:	2404003e 	li	a0,62
    4dec:	0009c0c0 	sll	t8,t1,0x3
    4df0:	02186821 	addu	t5,s0,t8
    4df4:	01aac821 	addu	t9,t5,t2
    4df8:	932e4a03 	lbu	t6,18947(t9)
    4dfc:	00031c03 	sra	v1,v1,0x10
    4e00:	28610007 	slti	at,v1,7
    4e04:	108e0024 	beq	a0,t6,4e98 <func_80808000+0xbd8>
    4e08:	3c070000 	lui	a3,0x0
    4e0c:	1020000e 	beqz	at,4e48 <func_80808000+0xb88>
    4e10:	24e70000 	addiu	a3,a3,0
    4e14:	850f4a38 	lh	t7,19000(t0)
    4e18:	000fc0c0 	sll	t8,t7,0x3
    4e1c:	02186821 	addu	t5,s0,t8
    4e20:	01a3c821 	addu	t9,t5,v1
    4e24:	24630001 	addiu	v1,v1,1
    4e28:	00031c00 	sll	v1,v1,0x10
    4e2c:	032a1021 	addu	v0,t9,t2
    4e30:	904e49fd 	lbu	t6,18941(v0)
    4e34:	00031c03 	sra	v1,v1,0x10
    4e38:	28610007 	slti	at,v1,7
    4e3c:	1420fff5 	bnez	at,4e14 <func_80808000+0xb54>
    4e40:	a04e49fc 	sb	t6,18940(v0)
    4e44:	85094a38 	lh	t1,19000(t0)
    4e48:	0009c0c0 	sll	t8,t1,0x3
    4e4c:	02186821 	addu	t5,s0,t8
    4e50:	01a3c821 	addu	t9,t5,v1
    4e54:	032a7021 	addu	t6,t9,t2
    4e58:	240f003e 	li	t7,62
    4e5c:	a1cf49fc 	sb	t7,18940(t6)
    4e60:	3c180000 	lui	t8,0x0
    4e64:	27180000 	addiu	t8,t8,0
    4e68:	3c050000 	lui	a1,0x0
    4e6c:	24a50000 	addiu	a1,a1,0
    4e70:	afb80014 	sw	t8,20(sp)
    4e74:	afab00d8 	sw	t3,216(sp)
    4e78:	afa80034 	sw	t0,52(sp)
    4e7c:	afa70010 	sw	a3,16(sp)
    4e80:	2404483a 	li	a0,18490
    4e84:	0c000000 	jal	0 <func_80803D40>
    4e88:	24060004 	li	a2,4
    4e8c:	8fa80034 	lw	t0,52(sp)
    4e90:	10000030 	b	4f54 <func_80808000+0xc94>
    4e94:	8fab00d8 	lw	t3,216(sp)
    4e98:	3c010002 	lui	at,0x2
    4e9c:	00300821 	addu	at,at,s0
    4ea0:	244dffff 	addiu	t5,v0,-1
    4ea4:	a42dcad4 	sh	t5,-13612(at)
    4ea8:	85024ad4 	lh	v0,19156(t0)
    4eac:	3c010002 	lui	at,0x2
    4eb0:	00300821 	addu	at,at,s0
    4eb4:	04410003 	bgez	v0,4ec4 <func_80808000+0xc04>
    4eb8:	2404483a 	li	a0,18490
    4ebc:	a420cad4 	sh	zero,-13612(at)
    4ec0:	85024ad4 	lh	v0,19156(t0)
    4ec4:	00021c00 	sll	v1,v0,0x10
    4ec8:	00031c03 	sra	v1,v1,0x10
    4ecc:	28610007 	slti	at,v1,7
    4ed0:	5020000e 	beqzl	at,4f0c <func_80808000+0xc4c>
    4ed4:	850f4a38 	lh	t7,19000(t0)
    4ed8:	85194a38 	lh	t9,19000(t0)
    4edc:	001978c0 	sll	t7,t9,0x3
    4ee0:	020f7021 	addu	t6,s0,t7
    4ee4:	01c3c021 	addu	t8,t6,v1
    4ee8:	24630001 	addiu	v1,v1,1
    4eec:	00031c00 	sll	v1,v1,0x10
    4ef0:	030a1021 	addu	v0,t8,t2
    4ef4:	904d49fd 	lbu	t5,18941(v0)
    4ef8:	00031c03 	sra	v1,v1,0x10
    4efc:	28610007 	slti	at,v1,7
    4f00:	1420fff5 	bnez	at,4ed8 <func_80808000+0xc18>
    4f04:	a04d49fc 	sb	t5,18940(v0)
    4f08:	850f4a38 	lh	t7,19000(t0)
    4f0c:	2419003e 	li	t9,62
    4f10:	24060004 	li	a2,4
    4f14:	000f70c0 	sll	t6,t7,0x3
    4f18:	020ec021 	addu	t8,s0,t6
    4f1c:	03036821 	addu	t5,t8,v1
    4f20:	01aa7821 	addu	t7,t5,t2
    4f24:	a1f949fc 	sb	t9,18940(t7)
    4f28:	3c180000 	lui	t8,0x0
    4f2c:	3c0e0000 	lui	t6,0x0
    4f30:	25c70000 	addiu	a3,t6,0
    4f34:	27180000 	addiu	t8,t8,0
    4f38:	afb80014 	sw	t8,20(sp)
    4f3c:	afa70010 	sw	a3,16(sp)
    4f40:	afab00d8 	sw	t3,216(sp)
    4f44:	0c000000 	jal	0 <func_80803D40>
    4f48:	afa80034 	sw	t0,52(sp)
    4f4c:	8fa80034 	lw	t0,52(sp)
    4f50:	8fab00d8 	lw	t3,216(sp)
    4f54:	8fad0038 	lw	t5,56(sp)
    4f58:	10000065 	b	50f0 <func_80808000+0xe30>
    4f5c:	95a3000c 	lhu	v1,12(t5)
    4f60:	24010004 	li	at,4
    4f64:	14410062 	bne	v0,at,50f0 <func_80808000+0xe30>
    4f68:	00002825 	move	a1,zero
    4f6c:	85194a38 	lh	t9,19000(t0)
    4f70:	00001825 	move	v1,zero
    4f74:	2404003e 	li	a0,62
    4f78:	001978c0 	sll	t7,t9,0x3
    4f7c:	020f1021 	addu	v0,s0,t7
    4f80:	00437021 	addu	t6,v0,v1
    4f84:	01cac021 	addu	t8,t6,t2
    4f88:	930d49fc 	lbu	t5,18940(t8)
    4f8c:	24630001 	addiu	v1,v1,1
    4f90:	00031c00 	sll	v1,v1,0x10
    4f94:	108d0003 	beq	a0,t5,4fa4 <func_80808000+0xce4>
    4f98:	00031c03 	sra	v1,v1,0x10
    4f9c:	10000004 	b	4fb0 <func_80808000+0xcf0>
    4fa0:	24050001 	li	a1,1
    4fa4:	28610008 	slti	at,v1,8
    4fa8:	5420fff6 	bnezl	at,4f84 <func_80808000+0xcc4>
    4fac:	00437021 	addu	t6,v0,v1
    4fb0:	10a0003f 	beqz	a1,50b0 <func_80808000+0xdf0>
    4fb4:	2404483d 	li	a0,18493
    4fb8:	3c190000 	lui	t9,0x0
    4fbc:	3c0f0000 	lui	t7,0x0
    4fc0:	25ef0000 	addiu	t7,t7,0
    4fc4:	27270000 	addiu	a3,t9,0
    4fc8:	3c050000 	lui	a1,0x0
    4fcc:	24a50000 	addiu	a1,a1,0
    4fd0:	afa70010 	sw	a3,16(sp)
    4fd4:	afaf0014 	sw	t7,20(sp)
    4fd8:	2404483b 	li	a0,18491
    4fdc:	24060004 	li	a2,4
    4fe0:	afa80034 	sw	t0,52(sp)
    4fe4:	0c000000 	jal	0 <func_80803D40>
    4fe8:	afab00d8 	sw	t3,216(sp)
    4fec:	8fa80034 	lw	t0,52(sp)
    4ff0:	3c010000 	lui	at,0x0
    4ff4:	3c180000 	lui	t8,0x0
    4ff8:	850e4a38 	lh	t6,19000(t0)
    4ffc:	02002025 	move	a0,s0
    5000:	260501e0 	addiu	a1,s0,480
    5004:	ac2e1354 	sw	t6,4948(at)
    5008:	9718000c 	lhu	t8,12(t8)
    500c:	0c000000 	jal	0 <func_80803D40>
    5010:	a7b800de 	sh	t8,222(sp)
    5014:	97ad00de 	lhu	t5,222(sp)
    5018:	3c010000 	lui	at,0x0
    501c:	8fa80034 	lw	t0,52(sp)
    5020:	a42d000c 	sh	t5,12(at)
    5024:	3c010002 	lui	at,0x2
    5028:	00300821 	addu	at,at,s0
    502c:	24190023 	li	t9,35
    5030:	a439ca3e 	sh	t9,-13762(at)
    5034:	850e4a38 	lh	t6,19000(t0)
    5038:	3c0a0001 	lui	t2,0x1
    503c:	354a8000 	ori	t2,t2,0x8000
    5040:	000ec040 	sll	t8,t6,0x1
    5044:	02186821 	addu	t5,s0,t8
    5048:	01aac821 	addu	t9,t5,t2
    504c:	240f00c8 	li	t7,200
    5050:	a72f4a80 	sh	t7,19072(t9)
    5054:	850e4a38 	lh	t6,19000(t0)
    5058:	3c014396 	lui	at,0x4396
    505c:	241900ff 	li	t9,255
    5060:	000ec040 	sll	t8,t6,0x1
    5064:	02186821 	addu	t5,s0,t8
    5068:	01aa1021 	addu	v0,t5,t2
    506c:	844f4a80 	lh	t7,19072(v0)
    5070:	44816000 	mtc1	at,$f12
    5074:	240500b4 	li	a1,180
    5078:	a44f4a7a 	sh	t7,19066(v0)
    507c:	850e4a38 	lh	t6,19000(t0)
    5080:	24060014 	li	a2,20
    5084:	24070064 	li	a3,100
    5088:	000ec040 	sll	t8,t6,0x1
    508c:	02186821 	addu	t5,s0,t8
    5090:	01aa7821 	addu	t7,t5,t2
    5094:	0c000000 	jal	0 <func_80803D40>
    5098:	a5f94a86 	sh	t9,19078(t7)
    509c:	8fae0038 	lw	t6,56(sp)
    50a0:	8fa80034 	lw	t0,52(sp)
    50a4:	8fab00d8 	lw	t3,216(sp)
    50a8:	10000011 	b	50f0 <func_80808000+0xe30>
    50ac:	95c3000c 	lhu	v1,12(t6)
    50b0:	3c180000 	lui	t8,0x0
    50b4:	3c0d0000 	lui	t5,0x0
    50b8:	25ad0000 	addiu	t5,t5,0
    50bc:	27070000 	addiu	a3,t8,0
    50c0:	3c050000 	lui	a1,0x0
    50c4:	24a50000 	addiu	a1,a1,0
    50c8:	afa70010 	sw	a3,16(sp)
    50cc:	afad0014 	sw	t5,20(sp)
    50d0:	24060004 	li	a2,4
    50d4:	afa80034 	sw	t0,52(sp)
    50d8:	0c000000 	jal	0 <func_80803D40>
    50dc:	afab00d8 	sw	t3,216(sp)
    50e0:	8fb90038 	lw	t9,56(sp)
    50e4:	8fa80034 	lw	t0,52(sp)
    50e8:	8fab00d8 	lw	t3,216(sp)
    50ec:	9723000c 	lhu	v1,12(t9)
    50f0:	2401fffe 	li	at,-2
    50f4:	00617827 	nor	t7,v1,at
    50f8:	15e0001d 	bnez	t7,5170 <func_80808000+0xeb0>
    50fc:	2401fffd 	li	at,-3
    5100:	3c070000 	lui	a3,0x0
    5104:	3c0e0000 	lui	t6,0x0
    5108:	24e70000 	addiu	a3,a3,0
    510c:	25ce0000 	addiu	t6,t6,0
    5110:	3c050000 	lui	a1,0x0
    5114:	24a50000 	addiu	a1,a1,0
    5118:	afae0014 	sw	t6,20(sp)
    511c:	afa70010 	sw	a3,16(sp)
    5120:	24044839 	li	a0,18489
    5124:	24060004 	li	a2,4
    5128:	afa80034 	sw	t0,52(sp)
    512c:	0c000000 	jal	0 <func_80803D40>
    5130:	afab00d8 	sw	t3,216(sp)
    5134:	8fa80034 	lw	t0,52(sp)
    5138:	3c010002 	lui	at,0x2
    513c:	8fab00d8 	lw	t3,216(sp)
    5140:	85184ad4 	lh	t8,19156(t0)
    5144:	00300821 	addu	at,at,s0
    5148:	240f0007 	li	t7,7
    514c:	270d0001 	addiu	t5,t8,1
    5150:	a42dcad4 	sh	t5,-13612(at)
    5154:	85194ad4 	lh	t9,19156(t0)
    5158:	2b210008 	slti	at,t9,8
    515c:	14200020 	bnez	at,51e0 <func_80808000+0xf20>
    5160:	3c010002 	lui	at,0x2
    5164:	00300821 	addu	at,at,s0
    5168:	1000001d 	b	51e0 <func_80808000+0xf20>
    516c:	a42fcad4 	sh	t7,-13612(at)
    5170:	00617027 	nor	t6,v1,at
    5174:	15c0001a 	bnez	t6,51e0 <func_80808000+0xf20>
    5178:	3c070000 	lui	a3,0x0
    517c:	3c180000 	lui	t8,0x0
    5180:	24e70000 	addiu	a3,a3,0
    5184:	27180000 	addiu	t8,t8,0
    5188:	3c050000 	lui	a1,0x0
    518c:	24a50000 	addiu	a1,a1,0
    5190:	afb80014 	sw	t8,20(sp)
    5194:	afa70010 	sw	a3,16(sp)
    5198:	24044839 	li	a0,18489
    519c:	24060004 	li	a2,4
    51a0:	afa80034 	sw	t0,52(sp)
    51a4:	0c000000 	jal	0 <func_80803D40>
    51a8:	afab00d8 	sw	t3,216(sp)
    51ac:	8fa80034 	lw	t0,52(sp)
    51b0:	3c010002 	lui	at,0x2
    51b4:	8fab00d8 	lw	t3,216(sp)
    51b8:	850d4ad4 	lh	t5,19156(t0)
    51bc:	00300821 	addu	at,at,s0
    51c0:	25b9ffff 	addiu	t9,t5,-1
    51c4:	a439cad4 	sh	t9,-13612(at)
    51c8:	850f4ad4 	lh	t7,19156(t0)
    51cc:	3c010002 	lui	at,0x2
    51d0:	00300821 	addu	at,at,s0
    51d4:	05e30003 	bgezl	t7,51e4 <func_80808000+0xf24>
    51d8:	8d6202c0 	lw	v0,704(t3)
    51dc:	a420cad4 	sh	zero,-13612(at)
    51e0:	8d6202c0 	lw	v0,704(t3)
    51e4:	3c18e700 	lui	t8,0xe700
    51e8:	3c19fc12 	lui	t9,0xfc12
    51ec:	244e0008 	addiu	t6,v0,8
    51f0:	ad6e02c0 	sw	t6,704(t3)
    51f4:	ac400004 	sw	zero,4(v0)
    51f8:	ac580000 	sw	t8,0(v0)
    51fc:	8d6202c0 	lw	v0,704(t3)
    5200:	37397e24 	ori	t9,t9,0x7e24
    5204:	240ff3f9 	li	t7,-3079
    5208:	244d0008 	addiu	t5,v0,8
    520c:	ad6d02c0 	sw	t5,704(t3)
    5210:	3c060000 	lui	a2,0x0
    5214:	ac4f0004 	sw	t7,4(v0)
    5218:	ac590000 	sw	t9,0(v0)
    521c:	8e050000 	lw	a1,0(s0)
    5220:	24c60000 	addiu	a2,a2,0
    5224:	27a400c8 	addiu	a0,sp,200
    5228:	0c000000 	jal	0 <func_80803D40>
    522c:	24070226 	li	a3,550
    5230:	8fbf0024 	lw	ra,36(sp)
    5234:	8fb00020 	lw	s0,32(sp)
    5238:	27bd00f0 	addiu	sp,sp,240
    523c:	03e00008 	jr	ra
    5240:	00000000 	nop

00005244 <func_80808F84>:
    5244:	3c010001 	lui	at,0x1
    5248:	34218000 	ori	at,at,0x8000
    524c:	00811021 	addu	v0,a0,at
    5250:	844e4a9c 	lh	t6,19100(v0)
    5254:	3c010002 	lui	at,0x2
    5258:	00240821 	addu	at,at,a0
    525c:	25cf0019 	addiu	t7,t6,25
    5260:	a42fca9c 	sh	t7,-13668(at)
    5264:	84584a9c 	lh	t8,19100(v0)
    5268:	241900ff 	li	t9,255
    526c:	240b00ff 	li	t3,255
    5270:	2b0100ff 	slti	at,t8,255
    5274:	14200004 	bnez	at,5288 <func_80808F84+0x44>
    5278:	240c0063 	li	t4,99
    527c:	3c010002 	lui	at,0x2
    5280:	00240821 	addu	at,at,a0
    5284:	a439ca9c 	sh	t9,-13668(at)
    5288:	84484abe 	lh	t0,19134(v0)
    528c:	3c010002 	lui	at,0x2
    5290:	00240821 	addu	at,at,a0
    5294:	2509ffe2 	addiu	t1,t0,-30
    5298:	a429cabe 	sh	t1,-13634(at)
    529c:	844a4abe 	lh	t2,19134(v0)
    52a0:	3c010002 	lui	at,0x2
    52a4:	00240821 	addu	at,at,a0
    52a8:	1d400011 	bgtz	t2,52f0 <func_80808F84+0xac>
    52ac:	240d0021 	li	t5,33
    52b0:	a420cabe 	sh	zero,-13634(at)
    52b4:	3c010002 	lui	at,0x2
    52b8:	00240821 	addu	at,at,a0
    52bc:	a42bca9c 	sh	t3,-13668(at)
    52c0:	3c010002 	lui	at,0x2
    52c4:	00240821 	addu	at,at,a0
    52c8:	a420cad0 	sh	zero,-13616(at)
    52cc:	3c010002 	lui	at,0x2
    52d0:	00240821 	addu	at,at,a0
    52d4:	a420cad2 	sh	zero,-13614(at)
    52d8:	3c010002 	lui	at,0x2
    52dc:	00240821 	addu	at,at,a0
    52e0:	a42ccac8 	sh	t4,-13624(at)
    52e4:	3c010002 	lui	at,0x2
    52e8:	00240821 	addu	at,at,a0
    52ec:	a42dca3e 	sh	t5,-13762(at)
    52f0:	03e00008 	jr	ra
    52f4:	00000000 	nop

000052f8 <func_80809038>:
    52f8:	27bdffc8 	addiu	sp,sp,-56
    52fc:	3c010002 	lui	at,0x2
    5300:	afbf0024 	sw	ra,36(sp)
    5304:	afb00020 	sw	s0,32(sp)
    5308:	00240821 	addu	at,at,a0
    530c:	240e0063 	li	t6,99
    5310:	a42ecac8 	sh	t6,-13624(at)
    5314:	3c010001 	lui	at,0x1
    5318:	34218000 	ori	at,at,0x8000
    531c:	00811821 	addu	v1,a0,at
    5320:	846f4ad2 	lh	t7,19154(v1)
    5324:	24010005 	li	at,5
    5328:	00808025 	move	s0,a0
    532c:	51e10058 	beql	t7,at,5490 <func_80809038+0x198>
    5330:	84624aba 	lh	v0,19130(v1)
    5334:	84624aba 	lh	v0,19130(v1)
    5338:	3c070000 	lui	a3,0x0
    533c:	24e70000 	addiu	a3,a3,0
    5340:	2841ffe2 	slti	at,v0,-30
    5344:	10200027 	beqz	at,53e4 <func_80809038+0xec>
    5348:	24044839 	li	a0,18489
    534c:	3c180000 	lui	t8,0x0
    5350:	27180000 	addiu	t8,t8,0
    5354:	3c050000 	lui	a1,0x0
    5358:	24a50000 	addiu	a1,a1,0
    535c:	afb80014 	sw	t8,20(sp)
    5360:	24060004 	li	a2,4
    5364:	afa70010 	sw	a3,16(sp)
    5368:	0c000000 	jal	0 <func_80803D40>
    536c:	afa3002c 	sw	v1,44(sp)
    5370:	8fa3002c 	lw	v1,44(sp)
    5374:	3c010002 	lui	at,0x2
    5378:	00300821 	addu	at,at,s0
    537c:	84794ace 	lh	t9,19150(v1)
    5380:	240c000c 	li	t4,12
    5384:	2728ffff 	addiu	t0,t9,-1
    5388:	a428cace 	sh	t0,-13618(at)
    538c:	84694ad0 	lh	t1,19152(v1)
    5390:	3c010002 	lui	at,0x2
    5394:	00300821 	addu	at,at,s0
    5398:	252affff 	addiu	t2,t1,-1
    539c:	a42acad0 	sh	t2,-13616(at)
    53a0:	846b4ad0 	lh	t3,19152(v1)
    53a4:	3c010002 	lui	at,0x2
    53a8:	00300821 	addu	at,at,s0
    53ac:	05630070 	bgezl	t3,5570 <func_80809038+0x278>
    53b0:	84624abc 	lh	v0,19132(v1)
    53b4:	a42ccad0 	sh	t4,-13616(at)
    53b8:	846d4ad2 	lh	t5,19154(v1)
    53bc:	846f4ad0 	lh	t7,19152(v1)
    53c0:	3c010002 	lui	at,0x2
    53c4:	000d7080 	sll	t6,t5,0x2
    53c8:	01cd7023 	subu	t6,t6,t5
    53cc:	000e7080 	sll	t6,t6,0x2
    53d0:	01cd7021 	addu	t6,t6,t5
    53d4:	00300821 	addu	at,at,s0
    53d8:	01cfc021 	addu	t8,t6,t7
    53dc:	10000063 	b	556c <func_80809038+0x274>
    53e0:	a438cace 	sh	t8,-13618(at)
    53e4:	2841001f 	slti	at,v0,31
    53e8:	14200060 	bnez	at,556c <func_80809038+0x274>
    53ec:	24044839 	li	a0,18489
    53f0:	3c190000 	lui	t9,0x0
    53f4:	3c080000 	lui	t0,0x0
    53f8:	25080000 	addiu	t0,t0,0
    53fc:	27270000 	addiu	a3,t9,0
    5400:	3c050000 	lui	a1,0x0
    5404:	24a50000 	addiu	a1,a1,0
    5408:	afa70010 	sw	a3,16(sp)
    540c:	afa80014 	sw	t0,20(sp)
    5410:	24060004 	li	a2,4
    5414:	0c000000 	jal	0 <func_80803D40>
    5418:	afa3002c 	sw	v1,44(sp)
    541c:	8fa3002c 	lw	v1,44(sp)
    5420:	3c010002 	lui	at,0x2
    5424:	00300821 	addu	at,at,s0
    5428:	84694ace 	lh	t1,19150(v1)
    542c:	252a0001 	addiu	t2,t1,1
    5430:	a42acace 	sh	t2,-13618(at)
    5434:	846b4ad0 	lh	t3,19152(v1)
    5438:	3c010002 	lui	at,0x2
    543c:	00300821 	addu	at,at,s0
    5440:	256c0001 	addiu	t4,t3,1
    5444:	a42ccad0 	sh	t4,-13616(at)
    5448:	846d4ad0 	lh	t5,19152(v1)
    544c:	29a1000d 	slti	at,t5,13
    5450:	14200046 	bnez	at,556c <func_80809038+0x274>
    5454:	3c010002 	lui	at,0x2
    5458:	00300821 	addu	at,at,s0
    545c:	a420cad0 	sh	zero,-13616(at)
    5460:	846e4ad2 	lh	t6,19154(v1)
    5464:	84784ad0 	lh	t8,19152(v1)
    5468:	3c010002 	lui	at,0x2
    546c:	000e7880 	sll	t7,t6,0x2
    5470:	01ee7823 	subu	t7,t7,t6
    5474:	000f7880 	sll	t7,t7,0x2
    5478:	01ee7821 	addu	t7,t7,t6
    547c:	00300821 	addu	at,at,s0
    5480:	01f8c821 	addu	t9,t7,t8
    5484:	10000039 	b	556c <func_80809038+0x274>
    5488:	a439cace 	sh	t9,-13618(at)
    548c:	84624aba 	lh	v0,19130(v1)
    5490:	3c050000 	lui	a1,0x0
    5494:	24a50000 	addiu	a1,a1,0
    5498:	2841ffe2 	slti	at,v0,-30
    549c:	10200018 	beqz	at,5500 <func_80809038+0x208>
    54a0:	24044839 	li	a0,18489
    54a4:	3c080000 	lui	t0,0x0
    54a8:	3c090000 	lui	t1,0x0
    54ac:	25290000 	addiu	t1,t1,0
    54b0:	25070000 	addiu	a3,t0,0
    54b4:	afa70010 	sw	a3,16(sp)
    54b8:	afa90014 	sw	t1,20(sp)
    54bc:	24060004 	li	a2,4
    54c0:	0c000000 	jal	0 <func_80803D40>
    54c4:	afa3002c 	sw	v1,44(sp)
    54c8:	8fa3002c 	lw	v1,44(sp)
    54cc:	3c010002 	lui	at,0x2
    54d0:	00300821 	addu	at,at,s0
    54d4:	846a4ad0 	lh	t2,19152(v1)
    54d8:	240d0004 	li	t5,4
    54dc:	254bffff 	addiu	t3,t2,-1
    54e0:	a42bcad0 	sh	t3,-13616(at)
    54e4:	846c4ad0 	lh	t4,19152(v1)
    54e8:	29810003 	slti	at,t4,3
    54ec:	1020001f 	beqz	at,556c <func_80809038+0x274>
    54f0:	3c010002 	lui	at,0x2
    54f4:	00300821 	addu	at,at,s0
    54f8:	1000001c 	b	556c <func_80809038+0x274>
    54fc:	a42dcad0 	sh	t5,-13616(at)
    5500:	2841001f 	slti	at,v0,31
    5504:	14200019 	bnez	at,556c <func_80809038+0x274>
    5508:	24044839 	li	a0,18489
    550c:	3c0e0000 	lui	t6,0x0
    5510:	3c0f0000 	lui	t7,0x0
    5514:	25ef0000 	addiu	t7,t7,0
    5518:	25c70000 	addiu	a3,t6,0
    551c:	3c050000 	lui	a1,0x0
    5520:	24a50000 	addiu	a1,a1,0
    5524:	afa70010 	sw	a3,16(sp)
    5528:	afaf0014 	sw	t7,20(sp)
    552c:	24060004 	li	a2,4
    5530:	0c000000 	jal	0 <func_80803D40>
    5534:	afa3002c 	sw	v1,44(sp)
    5538:	8fa3002c 	lw	v1,44(sp)
    553c:	3c010002 	lui	at,0x2
    5540:	00300821 	addu	at,at,s0
    5544:	84784ad0 	lh	t8,19152(v1)
    5548:	24090003 	li	t1,3
    554c:	27190001 	addiu	t9,t8,1
    5550:	a439cad0 	sh	t9,-13616(at)
    5554:	84684ad0 	lh	t0,19152(v1)
    5558:	29010005 	slti	at,t0,5
    555c:	14200003 	bnez	at,556c <func_80809038+0x274>
    5560:	3c010002 	lui	at,0x2
    5564:	00300821 	addu	at,at,s0
    5568:	a429cad0 	sh	t1,-13616(at)
    556c:	84624abc 	lh	v0,19132(v1)
    5570:	3c070000 	lui	a3,0x0
    5574:	24e70000 	addiu	a3,a3,0
    5578:	2841001f 	slti	at,v0,31
    557c:	1420005d 	bnez	at,56f4 <func_80809038+0x3fc>
    5580:	24044839 	li	a0,18489
    5584:	3c0a0000 	lui	t2,0x0
    5588:	254a0000 	addiu	t2,t2,0
    558c:	3c050000 	lui	a1,0x0
    5590:	24a50000 	addiu	a1,a1,0
    5594:	afaa0014 	sw	t2,20(sp)
    5598:	24060004 	li	a2,4
    559c:	afa70010 	sw	a3,16(sp)
    55a0:	0c000000 	jal	0 <func_80803D40>
    55a4:	afa3002c 	sw	v1,44(sp)
    55a8:	8fa3002c 	lw	v1,44(sp)
    55ac:	3c010002 	lui	at,0x2
    55b0:	00300821 	addu	at,at,s0
    55b4:	846b4ad2 	lh	t3,19154(v1)
    55b8:	256cffff 	addiu	t4,t3,-1
    55bc:	a42ccad2 	sh	t4,-13614(at)
    55c0:	846d4ad2 	lh	t5,19154(v1)
    55c4:	05a30030 	bgezl	t5,5688 <func_80809038+0x390>
    55c8:	846f4ace 	lh	t7,19150(v1)
    55cc:	846e4ad0 	lh	t6,19152(v1)
    55d0:	240f0004 	li	t7,4
    55d4:	24080005 	li	t0,5
    55d8:	29c10008 	slti	at,t6,8
    55dc:	10200009 	beqz	at,5604 <func_80809038+0x30c>
    55e0:	3c010002 	lui	at,0x2
    55e4:	00300821 	addu	at,at,s0
    55e8:	a42fcad2 	sh	t7,-13614(at)
    55ec:	84784ad0 	lh	t8,19152(v1)
    55f0:	3c010002 	lui	at,0x2
    55f4:	00300821 	addu	at,at,s0
    55f8:	27190034 	addiu	t9,t8,52
    55fc:	100000a6 	b	5898 <func_80809038+0x5a0>
    5600:	a439cace 	sh	t9,-13618(at)
    5604:	3c010002 	lui	at,0x2
    5608:	00300821 	addu	at,at,s0
    560c:	a428cad2 	sh	t0,-13614(at)
    5610:	84694ace 	lh	t1,19150(v1)
    5614:	3c010002 	lui	at,0x2
    5618:	00300821 	addu	at,at,s0
    561c:	252a0034 	addiu	t2,t1,52
    5620:	a42acace 	sh	t2,-13618(at)
    5624:	84624ad0 	lh	v0,19152(v1)
    5628:	240b0003 	li	t3,3
    562c:	00022400 	sll	a0,v0,0x10
    5630:	2841000a 	slti	at,v0,10
    5634:	10200006 	beqz	at,5650 <func_80809038+0x358>
    5638:	00042403 	sra	a0,a0,0x10
    563c:	3c010002 	lui	at,0x2
    5640:	00300821 	addu	at,at,s0
    5644:	a42bcad0 	sh	t3,-13616(at)
    5648:	10000008 	b	566c <func_80809038+0x374>
    564c:	84624ad0 	lh	v0,19152(v1)
    5650:	2841000d 	slti	at,v0,13
    5654:	10200005 	beqz	at,566c <func_80809038+0x374>
    5658:	240c0004 	li	t4,4
    565c:	3c010002 	lui	at,0x2
    5660:	00300821 	addu	at,at,s0
    5664:	a42ccad0 	sh	t4,-13616(at)
    5668:	84624ad0 	lh	v0,19152(v1)
    566c:	00026840 	sll	t5,v0,0x1
    5670:	020d7021 	addu	t6,s0,t5
    5674:	3c010002 	lui	at,0x2
    5678:	002e0821 	addu	at,at,t6
    567c:	10000086 	b	5898 <func_80809038+0x5a0>
    5680:	a424cad6 	sh	a0,-13610(at)
    5684:	846f4ace 	lh	t7,19150(v1)
    5688:	3c010002 	lui	at,0x2
    568c:	00300821 	addu	at,at,s0
    5690:	25f8fff3 	addiu	t8,t7,-13
    5694:	a438cace 	sh	t8,-13618(at)
    5698:	84794ad2 	lh	t9,19154(v1)
    569c:	24010004 	li	at,4
    56a0:	24080034 	li	t0,52
    56a4:	1721007c 	bne	t9,at,5898 <func_80809038+0x5a0>
    56a8:	3c010002 	lui	at,0x2
    56ac:	00300821 	addu	at,at,s0
    56b0:	a428cace 	sh	t0,-13618(at)
    56b4:	84694ad0 	lh	t1,19152(v1)
    56b8:	3c0c0002 	lui	t4,0x2
    56bc:	3c010002 	lui	at,0x2
    56c0:	00095040 	sll	t2,t1,0x1
    56c4:	020a5821 	addu	t3,s0,t2
    56c8:	018b6021 	addu	t4,t4,t3
    56cc:	858ccad6 	lh	t4,-13610(t4)
    56d0:	00300821 	addu	at,at,s0
    56d4:	a42ccad0 	sh	t4,-13616(at)
    56d8:	846e4ad0 	lh	t6,19152(v1)
    56dc:	846d4ace 	lh	t5,19150(v1)
    56e0:	3c010002 	lui	at,0x2
    56e4:	00300821 	addu	at,at,s0
    56e8:	01ae7821 	addu	t7,t5,t6
    56ec:	1000006a 	b	5898 <func_80809038+0x5a0>
    56f0:	a42fcace 	sh	t7,-13618(at)
    56f4:	2841ffe2 	slti	at,v0,-30
    56f8:	10200067 	beqz	at,5898 <func_80809038+0x5a0>
    56fc:	3c070000 	lui	a3,0x0
    5700:	3c180000 	lui	t8,0x0
    5704:	24e70000 	addiu	a3,a3,0
    5708:	27180000 	addiu	t8,t8,0
    570c:	3c050000 	lui	a1,0x0
    5710:	24a50000 	addiu	a1,a1,0
    5714:	afb80014 	sw	t8,20(sp)
    5718:	afa70010 	sw	a3,16(sp)
    571c:	24044839 	li	a0,18489
    5720:	24060004 	li	a2,4
    5724:	0c000000 	jal	0 <func_80803D40>
    5728:	afa3002c 	sw	v1,44(sp)
    572c:	8fa3002c 	lw	v1,44(sp)
    5730:	3c010002 	lui	at,0x2
    5734:	00300821 	addu	at,at,s0
    5738:	84794ad2 	lh	t9,19154(v1)
    573c:	27280001 	addiu	t0,t9,1
    5740:	a428cad2 	sh	t0,-13614(at)
    5744:	84694ad2 	lh	t1,19154(v1)
    5748:	29210006 	slti	at,t1,6
    574c:	14200011 	bnez	at,5794 <func_80809038+0x49c>
    5750:	3c010002 	lui	at,0x2
    5754:	00300821 	addu	at,at,s0
    5758:	a420cad2 	sh	zero,-13614(at)
    575c:	846a4ad0 	lh	t2,19152(v1)
    5760:	3c0d0002 	lui	t5,0x2
    5764:	3c010002 	lui	at,0x2
    5768:	000a5840 	sll	t3,t2,0x1
    576c:	020b6021 	addu	t4,s0,t3
    5770:	01ac6821 	addu	t5,t5,t4
    5774:	85adcad6 	lh	t5,-13610(t5)
    5778:	00300821 	addu	at,at,s0
    577c:	a42dcad0 	sh	t5,-13616(at)
    5780:	846e4ad0 	lh	t6,19152(v1)
    5784:	3c010002 	lui	at,0x2
    5788:	00300821 	addu	at,at,s0
    578c:	10000042 	b	5898 <func_80809038+0x5a0>
    5790:	a42ecace 	sh	t6,-13618(at)
    5794:	846f4ace 	lh	t7,19150(v1)
    5798:	3c010002 	lui	at,0x2
    579c:	00300821 	addu	at,at,s0
    57a0:	25f8000d 	addiu	t8,t7,13
    57a4:	a438cace 	sh	t8,-13618(at)
    57a8:	84794ad2 	lh	t9,19154(v1)
    57ac:	24010005 	li	at,5
    57b0:	5721003a 	bnel	t9,at,589c <func_80809038+0x5a4>
    57b4:	846f4ad2 	lh	t7,19154(v1)
    57b8:	84624ad0 	lh	v0,19152(v1)
    57bc:	28410008 	slti	at,v0,8
    57c0:	10200009 	beqz	at,57e8 <func_80809038+0x4f0>
    57c4:	00022400 	sll	a0,v0,0x10
    57c8:	3c010002 	lui	at,0x2
    57cc:	00300821 	addu	at,at,s0
    57d0:	a420cad2 	sh	zero,-13614(at)
    57d4:	84684ad0 	lh	t0,19152(v1)
    57d8:	3c010002 	lui	at,0x2
    57dc:	00300821 	addu	at,at,s0
    57e0:	1000002d 	b	5898 <func_80809038+0x5a0>
    57e4:	a428cace 	sh	t0,-13618(at)
    57e8:	28410003 	slti	at,v0,3
    57ec:	10200006 	beqz	at,5808 <func_80809038+0x510>
    57f0:	00042403 	sra	a0,a0,0x10
    57f4:	3c010002 	lui	at,0x2
    57f8:	00300821 	addu	at,at,s0
    57fc:	a420cad0 	sh	zero,-13616(at)
    5800:	10000020 	b	5884 <func_80809038+0x58c>
    5804:	84624ad0 	lh	v0,19152(v1)
    5808:	28410006 	slti	at,v0,6
    580c:	10200006 	beqz	at,5828 <func_80809038+0x530>
    5810:	24090001 	li	t1,1
    5814:	3c010002 	lui	at,0x2
    5818:	00300821 	addu	at,at,s0
    581c:	a429cad0 	sh	t1,-13616(at)
    5820:	10000018 	b	5884 <func_80809038+0x58c>
    5824:	84624ad0 	lh	v0,19152(v1)
    5828:	28410008 	slti	at,v0,8
    582c:	10200006 	beqz	at,5848 <func_80809038+0x550>
    5830:	240a0002 	li	t2,2
    5834:	3c010002 	lui	at,0x2
    5838:	00300821 	addu	at,at,s0
    583c:	a42acad0 	sh	t2,-13616(at)
    5840:	10000010 	b	5884 <func_80809038+0x58c>
    5844:	84624ad0 	lh	v0,19152(v1)
    5848:	2841000a 	slti	at,v0,10
    584c:	10200006 	beqz	at,5868 <func_80809038+0x570>
    5850:	240b0003 	li	t3,3
    5854:	3c010002 	lui	at,0x2
    5858:	00300821 	addu	at,at,s0
    585c:	a42bcad0 	sh	t3,-13616(at)
    5860:	10000008 	b	5884 <func_80809038+0x58c>
    5864:	84624ad0 	lh	v0,19152(v1)
    5868:	2841000d 	slti	at,v0,13
    586c:	10200005 	beqz	at,5884 <func_80809038+0x58c>
    5870:	240c0004 	li	t4,4
    5874:	3c010002 	lui	at,0x2
    5878:	00300821 	addu	at,at,s0
    587c:	a42ccad0 	sh	t4,-13616(at)
    5880:	84624ad0 	lh	v0,19152(v1)
    5884:	00026840 	sll	t5,v0,0x1
    5888:	020d7021 	addu	t6,s0,t5
    588c:	3c010002 	lui	at,0x2
    5890:	002e0821 	addu	at,at,t6
    5894:	a424cad6 	sh	a0,-13610(at)
    5898:	846f4ad2 	lh	t7,19154(v1)
    589c:	24010005 	li	at,5
    58a0:	55e10006 	bnel	t7,at,58bc <func_80809038+0x5c4>
    58a4:	8fbf0024 	lw	ra,36(sp)
    58a8:	84784ad0 	lh	t8,19152(v1)
    58ac:	3c010002 	lui	at,0x2
    58b0:	00300821 	addu	at,at,s0
    58b4:	a438cac8 	sh	t8,-13624(at)
    58b8:	8fbf0024 	lw	ra,36(sp)
    58bc:	8fb00020 	lw	s0,32(sp)
    58c0:	27bd0038 	addiu	sp,sp,56
    58c4:	03e00008 	jr	ra
    58c8:	00000000 	nop

000058cc <func_8080960C>:
    58cc:	3c010001 	lui	at,0x1
    58d0:	34218000 	ori	at,at,0x8000
    58d4:	00811021 	addu	v0,a0,at
    58d8:	844e4a9c 	lh	t6,19100(v0)
    58dc:	3c010002 	lui	at,0x2
    58e0:	00240821 	addu	at,at,a0
    58e4:	25cf0019 	addiu	t7,t6,25
    58e8:	a42fca9c 	sh	t7,-13668(at)
    58ec:	84584a9c 	lh	t8,19100(v0)
    58f0:	241900ff 	li	t9,255
    58f4:	240b00ff 	li	t3,255
    58f8:	2b0100ff 	slti	at,t8,255
    58fc:	14200004 	bnez	at,5910 <func_8080960C+0x44>
    5900:	240c0025 	li	t4,37
    5904:	3c010002 	lui	at,0x2
    5908:	00240821 	addu	at,at,a0
    590c:	a439ca9c 	sh	t9,-13668(at)
    5910:	84484abe 	lh	t0,19134(v0)
    5914:	3c010002 	lui	at,0x2
    5918:	00240821 	addu	at,at,a0
    591c:	2509ffe2 	addiu	t1,t0,-30
    5920:	a429cabe 	sh	t1,-13634(at)
    5924:	844a4abe 	lh	t2,19134(v0)
    5928:	3c010002 	lui	at,0x2
    592c:	00240821 	addu	at,at,a0
    5930:	1d400008 	bgtz	t2,5954 <func_8080960C+0x88>
    5934:	00000000 	nop
    5938:	a420cabe 	sh	zero,-13634(at)
    593c:	3c010002 	lui	at,0x2
    5940:	00240821 	addu	at,at,a0
    5944:	a42bca9c 	sh	t3,-13668(at)
    5948:	3c010002 	lui	at,0x2
    594c:	00240821 	addu	at,at,a0
    5950:	a42cca3e 	sh	t4,-13762(at)
    5954:	03e00008 	jr	ra
    5958:	00000000 	nop

0000595c <func_8080969C>:
    595c:	27bdffc8 	addiu	sp,sp,-56
    5960:	afbf0024 	sw	ra,36(sp)
    5964:	afb00020 	sw	s0,32(sp)
    5968:	948e0020 	lhu	t6,32(a0)
    596c:	2401bfff 	li	at,-16385
    5970:	00808025 	move	s0,a0
    5974:	01c17827 	nor	t7,t6,at
    5978:	15e00047 	bnez	t7,5a98 <func_8080969C+0x13c>
    597c:	3c010001 	lui	at,0x1
    5980:	3c070000 	lui	a3,0x0
    5984:	3c180000 	lui	t8,0x0
    5988:	24e70000 	addiu	a3,a3,0
    598c:	27180000 	addiu	t8,t8,0
    5990:	3c050000 	lui	a1,0x0
    5994:	24a50000 	addiu	a1,a1,0
    5998:	afb80014 	sw	t8,20(sp)
    599c:	afa70010 	sw	a3,16(sp)
    59a0:	2404483b 	li	a0,18491
    59a4:	24060004 	li	a2,4
    59a8:	0c000000 	jal	0 <func_80803D40>
    59ac:	afb00038 	sw	s0,56(sp)
    59b0:	8fa90038 	lw	t1,56(sp)
    59b4:	3c010002 	lui	at,0x2
    59b8:	24190027 	li	t9,39
    59bc:	00290821 	addu	at,at,t1
    59c0:	a439ca3e 	sh	t9,-13762(at)
    59c4:	8fa20038 	lw	v0,56(sp)
    59c8:	3c100000 	lui	s0,0x0
    59cc:	26100000 	addiu	s0,s0,0
    59d0:	920a140a 	lbu	t2,5130(s0)
    59d4:	8c4b01e0 	lw	t3,480(v0)
    59d8:	3c040000 	lui	a0,0x0
    59dc:	244201e0 	addiu	v0,v0,480
    59e0:	a16a0000 	sb	t2,0(t3)
    59e4:	920c140c 	lbu	t4,5132(s0)
    59e8:	8c4d0000 	lw	t5,0(v0)
    59ec:	24840000 	addiu	a0,a0,0
    59f0:	a1ac0001 	sb	t4,1(t5)
    59f4:	0c000000 	jal	0 <func_80803D40>
    59f8:	afa20028 	sw	v0,40(sp)
    59fc:	0c000000 	jal	0 <func_80803D40>
    5a00:	8fa40028 	lw	a0,40(sp)
    5a04:	3c040000 	lui	a0,0x0
    5a08:	0c000000 	jal	0 <func_80803D40>
    5a0c:	24840000 	addiu	a0,a0,0
    5a10:	8fae0028 	lw	t6,40(sp)
    5a14:	3c040000 	lui	a0,0x0
    5a18:	24840000 	addiu	a0,a0,0
    5a1c:	8dcf0000 	lw	t7,0(t6)
    5a20:	0c000000 	jal	0 <func_80803D40>
    5a24:	91e50002 	lbu	a1,2(t7)
    5a28:	8fb80028 	lw	t8,40(sp)
    5a2c:	3c040000 	lui	a0,0x0
    5a30:	24840000 	addiu	a0,a0,0
    5a34:	8f050000 	lw	a1,0(t8)
    5a38:	0c000000 	jal	0 <func_80803D40>
    5a3c:	24a50002 	addiu	a1,a1,2
    5a40:	3c040000 	lui	a0,0x0
    5a44:	24840000 	addiu	a0,a0,0
    5a48:	0c000000 	jal	0 <func_80803D40>
    5a4c:	9205140a 	lbu	a1,5130(s0)
    5a50:	3c040000 	lui	a0,0x0
    5a54:	24840000 	addiu	a0,a0,0
    5a58:	0c000000 	jal	0 <func_80803D40>
    5a5c:	9205140a 	lbu	a1,5130(s0)
    5a60:	3c040000 	lui	a0,0x0
    5a64:	24840000 	addiu	a0,a0,0
    5a68:	0c000000 	jal	0 <func_80803D40>
    5a6c:	9205140a 	lbu	a1,5130(s0)
    5a70:	3c040000 	lui	a0,0x0
    5a74:	0c000000 	jal	0 <func_80803D40>
    5a78:	24840000 	addiu	a0,a0,0
    5a7c:	0c000000 	jal	0 <func_80803D40>
    5a80:	8204140a 	lb	a0,5130(s0)
    5a84:	3c040000 	lui	a0,0x0
    5a88:	0c000000 	jal	0 <func_80803D40>
    5a8c:	24840000 	addiu	a0,a0,0
    5a90:	10000079 	b	5c78 <func_8080969C+0x31c>
    5a94:	8fbf0024 	lw	ra,36(sp)
    5a98:	34218000 	ori	at,at,0x8000
    5a9c:	02011821 	addu	v1,s0,at
    5aa0:	84624aba 	lh	v0,19130(v1)
    5aa4:	3c070000 	lui	a3,0x0
    5aa8:	24e70000 	addiu	a3,a3,0
    5aac:	2841ffe2 	slti	at,v0,-30
    5ab0:	10200022 	beqz	at,5b3c <func_8080969C+0x1e0>
    5ab4:	24044839 	li	a0,18489
    5ab8:	3c190000 	lui	t9,0x0
    5abc:	27390000 	addiu	t9,t9,0
    5ac0:	3c050000 	lui	a1,0x0
    5ac4:	24a50000 	addiu	a1,a1,0
    5ac8:	afb90014 	sw	t9,20(sp)
    5acc:	24060004 	li	a2,4
    5ad0:	afa70010 	sw	a3,16(sp)
    5ad4:	afa30028 	sw	v1,40(sp)
    5ad8:	0c000000 	jal	0 <func_80803D40>
    5adc:	afb00038 	sw	s0,56(sp)
    5ae0:	3c080000 	lui	t0,0x0
    5ae4:	25080000 	addiu	t0,t0,0
    5ae8:	91090000 	lbu	t1,0(t0)
    5aec:	3c100000 	lui	s0,0x0
    5af0:	8fa30028 	lw	v1,40(sp)
    5af4:	1520000c 	bnez	t1,5b28 <func_8080969C+0x1cc>
    5af8:	26100000 	addiu	s0,s0,0
    5afc:	3c100000 	lui	s0,0x0
    5b00:	26100000 	addiu	s0,s0,0
    5b04:	920a140a 	lbu	t2,5130(s0)
    5b08:	240d0003 	li	t5,3
    5b0c:	254bffff 	addiu	t3,t2,-1
    5b10:	316c00ff 	andi	t4,t3,0xff
    5b14:	298100f1 	slti	at,t4,241
    5b18:	14200006 	bnez	at,5b34 <func_8080969C+0x1d8>
    5b1c:	a20b140a 	sb	t3,5130(s0)
    5b20:	10000004 	b	5b34 <func_8080969C+0x1d8>
    5b24:	a20d140a 	sb	t5,5130(s0)
    5b28:	920e140c 	lbu	t6,5132(s0)
    5b2c:	39cf0001 	xori	t7,t6,0x1
    5b30:	a20f140c 	sb	t7,5132(s0)
    5b34:	10000026 	b	5bd0 <func_8080969C+0x274>
    5b38:	8fb00038 	lw	s0,56(sp)
    5b3c:	2841001f 	slti	at,v0,31
    5b40:	14200023 	bnez	at,5bd0 <func_8080969C+0x274>
    5b44:	3c070000 	lui	a3,0x0
    5b48:	3c180000 	lui	t8,0x0
    5b4c:	24e70000 	addiu	a3,a3,0
    5b50:	27180000 	addiu	t8,t8,0
    5b54:	3c050000 	lui	a1,0x0
    5b58:	24a50000 	addiu	a1,a1,0
    5b5c:	afb80014 	sw	t8,20(sp)
    5b60:	afa70010 	sw	a3,16(sp)
    5b64:	24044839 	li	a0,18489
    5b68:	24060004 	li	a2,4
    5b6c:	afa30028 	sw	v1,40(sp)
    5b70:	0c000000 	jal	0 <func_80803D40>
    5b74:	afb00038 	sw	s0,56(sp)
    5b78:	3c080000 	lui	t0,0x0
    5b7c:	25080000 	addiu	t0,t0,0
    5b80:	91190000 	lbu	t9,0(t0)
    5b84:	3c100000 	lui	s0,0x0
    5b88:	8fa30028 	lw	v1,40(sp)
    5b8c:	1720000c 	bnez	t9,5bc0 <func_8080969C+0x264>
    5b90:	26100000 	addiu	s0,s0,0
    5b94:	3c100000 	lui	s0,0x0
    5b98:	26100000 	addiu	s0,s0,0
    5b9c:	9209140a 	lbu	t1,5130(s0)
    5ba0:	252a0001 	addiu	t2,t1,1
    5ba4:	314b00ff 	andi	t3,t2,0xff
    5ba8:	29610004 	slti	at,t3,4
    5bac:	14200002 	bnez	at,5bb8 <func_8080969C+0x25c>
    5bb0:	a20a140a 	sb	t2,5130(s0)
    5bb4:	a200140a 	sb	zero,5130(s0)
    5bb8:	10000005 	b	5bd0 <func_8080969C+0x274>
    5bbc:	8fb00038 	lw	s0,56(sp)
    5bc0:	920c140c 	lbu	t4,5132(s0)
    5bc4:	398d0001 	xori	t5,t4,0x1
    5bc8:	a20d140c 	sb	t5,5132(s0)
    5bcc:	8fb00038 	lw	s0,56(sp)
    5bd0:	84624abc 	lh	v0,19132(v1)
    5bd4:	3c070000 	lui	a3,0x0
    5bd8:	24e70000 	addiu	a3,a3,0
    5bdc:	2841ffe2 	slti	at,v0,-30
    5be0:	14200003 	bnez	at,5bf0 <func_8080969C+0x294>
    5be4:	24044839 	li	a0,18489
    5be8:	2841001f 	slti	at,v0,31
    5bec:	1420000e 	bnez	at,5c28 <func_8080969C+0x2cc>
    5bf0:	3c0e0000 	lui	t6,0x0
    5bf4:	25ce0000 	addiu	t6,t6,0
    5bf8:	3c050000 	lui	a1,0x0
    5bfc:	24a50000 	addiu	a1,a1,0
    5c00:	afae0014 	sw	t6,20(sp)
    5c04:	24060004 	li	a2,4
    5c08:	0c000000 	jal	0 <func_80803D40>
    5c0c:	afa70010 	sw	a3,16(sp)
    5c10:	3c080000 	lui	t0,0x0
    5c14:	25080000 	addiu	t0,t0,0
    5c18:	910f0000 	lbu	t7,0(t0)
    5c1c:	39f80001 	xori	t8,t7,0x1
    5c20:	10000014 	b	5c74 <func_8080969C+0x318>
    5c24:	a1180000 	sb	t8,0(t0)
    5c28:	96190020 	lhu	t9,32(s0)
    5c2c:	3c01ffff 	lui	at,0xffff
    5c30:	34217fff 	ori	at,at,0x7fff
    5c34:	03214827 	nor	t1,t9,at
    5c38:	1520000e 	bnez	t1,5c74 <func_8080969C+0x318>
    5c3c:	2404483b 	li	a0,18491
    5c40:	3c0a0000 	lui	t2,0x0
    5c44:	254a0000 	addiu	t2,t2,0
    5c48:	3c050000 	lui	a1,0x0
    5c4c:	24a50000 	addiu	a1,a1,0
    5c50:	afaa0014 	sw	t2,20(sp)
    5c54:	24060004 	li	a2,4
    5c58:	0c000000 	jal	0 <func_80803D40>
    5c5c:	afa70010 	sw	a3,16(sp)
    5c60:	3c080000 	lui	t0,0x0
    5c64:	25080000 	addiu	t0,t0,0
    5c68:	910b0000 	lbu	t3,0(t0)
    5c6c:	396c0001 	xori	t4,t3,0x1
    5c70:	a10c0000 	sb	t4,0(t0)
    5c74:	8fbf0024 	lw	ra,36(sp)
    5c78:	8fb00020 	lw	s0,32(sp)
    5c7c:	27bd0038 	addiu	sp,sp,56
    5c80:	03e00008 	jr	ra
    5c84:	00000000 	nop

00005c88 <func_808099C8>:
    5c88:	27bdfe48 	addiu	sp,sp,-440
    5c8c:	afbf0024 	sw	ra,36(sp)
    5c90:	afb20020 	sw	s2,32(sp)
    5c94:	afb1001c 	sw	s1,28(sp)
    5c98:	afb00018 	sw	s0,24(sp)
    5c9c:	8c850000 	lw	a1,0(a0)
    5ca0:	00809025 	move	s2,a0
    5ca4:	3c060000 	lui	a2,0x0
    5ca8:	24c60000 	addiu	a2,a2,0
    5cac:	27a40194 	addiu	a0,sp,404
    5cb0:	24070350 	li	a3,848
    5cb4:	0c000000 	jal	0 <func_80803D40>
    5cb8:	afa501a4 	sw	a1,420(sp)
    5cbc:	3c100000 	lui	s0,0x0
    5cc0:	86100000 	lh	s0,0(s0)
    5cc4:	3c0e0000 	lui	t6,0x0
    5cc8:	25ce0000 	addiu	t6,t6,0
    5ccc:	00104880 	sll	t1,s0,0x2
    5cd0:	01304823 	subu	t1,t1,s0
    5cd4:	00094840 	sll	t1,t1,0x1
    5cd8:	012e1821 	addu	v1,t1,t6
    5cdc:	3c0f0000 	lui	t7,0x0
    5ce0:	85ef0000 	lh	t7,0(t7)
    5ce4:	847f0000 	lh	ra,0(v1)
    5ce8:	8fa801a4 	lw	t0,420(sp)
    5cec:	3c070000 	lui	a3,0x0
    5cf0:	01ff1023 	subu	v0,t7,ra
    5cf4:	04400003 	bltz	v0,5d04 <func_808099C8+0x7c>
    5cf8:	3c0b0000 	lui	t3,0x0
    5cfc:	10000002 	b	5d08 <func_808099C8+0x80>
    5d00:	00402025 	move	a0,v0
    5d04:	00022023 	negu	a0,v0
    5d08:	84e70000 	lh	a3,0(a3)
    5d0c:	856b0000 	lh	t3,0(t3)
    5d10:	846d0002 	lh	t5,2(v1)
    5d14:	0087001a 	div	zero,a0,a3
    5d18:	00002812 	mflo	a1
    5d1c:	00052c00 	sll	a1,a1,0x10
    5d20:	14e00002 	bnez	a3,5d2c <func_808099C8+0xa4>
    5d24:	00000000 	nop
    5d28:	0007000d 	break	0x7
    5d2c:	2401ffff 	li	at,-1
    5d30:	14e10004 	bne	a3,at,5d44 <func_808099C8+0xbc>
    5d34:	3c018000 	lui	at,0x8000
    5d38:	14810002 	bne	a0,at,5d44 <func_808099C8+0xbc>
    5d3c:	00000000 	nop
    5d40:	0006000d 	break	0x6
    5d44:	016d1023 	subu	v0,t3,t5
    5d48:	04400003 	bltz	v0,5d58 <func_808099C8+0xd0>
    5d4c:	00052c03 	sra	a1,a1,0x10
    5d50:	10000002 	b	5d5c <func_808099C8+0xd4>
    5d54:	00402025 	move	a0,v0
    5d58:	00022023 	negu	a0,v0
    5d5c:	0087001a 	div	zero,a0,a3
    5d60:	3c0a0000 	lui	t2,0x0
    5d64:	854a0000 	lh	t2,0(t2)
    5d68:	846c0004 	lh	t4,4(v1)
    5d6c:	00003012 	mflo	a2
    5d70:	00063400 	sll	a2,a2,0x10
    5d74:	14e00002 	bnez	a3,5d80 <func_808099C8+0xf8>
    5d78:	00000000 	nop
    5d7c:	0007000d 	break	0x7
    5d80:	2401ffff 	li	at,-1
    5d84:	14e10004 	bne	a3,at,5d98 <func_808099C8+0x110>
    5d88:	3c018000 	lui	at,0x8000
    5d8c:	14810002 	bne	a0,at,5d98 <func_808099C8+0x110>
    5d90:	00000000 	nop
    5d94:	0006000d 	break	0x6
    5d98:	014c1023 	subu	v0,t2,t4
    5d9c:	04400003 	bltz	v0,5dac <func_808099C8+0x124>
    5da0:	00063403 	sra	a2,a2,0x10
    5da4:	10000002 	b	5db0 <func_808099C8+0x128>
    5da8:	00402025 	move	a0,v0
    5dac:	00022023 	negu	a0,v0
    5db0:	3c020000 	lui	v0,0x0
    5db4:	84420000 	lh	v0,0(v0)
    5db8:	3c11fb00 	lui	s1,0xfb00
    5dbc:	005f082a 	slt	at,v0,ra
    5dc0:	54200006 	bnezl	at,5ddc <func_808099C8+0x154>
    5dc4:	00451021 	addu	v0,v0,a1
    5dc8:	00451023 	subu	v0,v0,a1
    5dcc:	00021400 	sll	v0,v0,0x10
    5dd0:	10000004 	b	5de4 <func_808099C8+0x15c>
    5dd4:	00021403 	sra	v0,v0,0x10
    5dd8:	00451021 	addu	v0,v0,a1
    5ddc:	00021400 	sll	v0,v0,0x10
    5de0:	00021403 	sra	v0,v0,0x10
    5de4:	016d082a 	slt	at,t3,t5
    5de8:	54200006 	bnezl	at,5e04 <func_808099C8+0x17c>
    5dec:	01665821 	addu	t3,t3,a2
    5df0:	01665823 	subu	t3,t3,a2
    5df4:	000b5c00 	sll	t3,t3,0x10
    5df8:	10000004 	b	5e0c <func_808099C8+0x184>
    5dfc:	000b5c03 	sra	t3,t3,0x10
    5e00:	01665821 	addu	t3,t3,a2
    5e04:	000b5c00 	sll	t3,t3,0x10
    5e08:	000b5c03 	sra	t3,t3,0x10
    5e0c:	014c082a 	slt	at,t2,t4
    5e10:	14200018 	bnez	at,5e74 <func_808099C8+0x1ec>
    5e14:	00000000 	nop
    5e18:	0087001a 	div	zero,a0,a3
    5e1c:	14e00002 	bnez	a3,5e28 <func_808099C8+0x1a0>
    5e20:	00000000 	nop
    5e24:	0007000d 	break	0x7
    5e28:	2401ffff 	li	at,-1
    5e2c:	14e10004 	bne	a3,at,5e40 <func_808099C8+0x1b8>
    5e30:	3c018000 	lui	at,0x8000
    5e34:	14810002 	bne	a0,at,5e40 <func_808099C8+0x1b8>
    5e38:	00000000 	nop
    5e3c:	0006000d 	break	0x6
    5e40:	0000c012 	mflo	t8
    5e44:	0018cc00 	sll	t9,t8,0x10
    5e48:	00197403 	sra	t6,t9,0x10
    5e4c:	014e5023 	subu	t2,t2,t6
    5e50:	3c010000 	lui	at,0x0
    5e54:	a4220000 	sh	v0,0(at)
    5e58:	000a5400 	sll	t2,t2,0x10
    5e5c:	000a5403 	sra	t2,t2,0x10
    5e60:	3c010000 	lui	at,0x0
    5e64:	a42a0000 	sh	t2,0(at)
    5e68:	3c010000 	lui	at,0x0
    5e6c:	10000017 	b	5ecc <func_808099C8+0x244>
    5e70:	a42b0000 	sh	t3,0(at)
    5e74:	0087001a 	div	zero,a0,a3
    5e78:	14e00002 	bnez	a3,5e84 <func_808099C8+0x1fc>
    5e7c:	00000000 	nop
    5e80:	0007000d 	break	0x7
    5e84:	2401ffff 	li	at,-1
    5e88:	14e10004 	bne	a3,at,5e9c <func_808099C8+0x214>
    5e8c:	3c018000 	lui	at,0x8000
    5e90:	14810002 	bne	a0,at,5e9c <func_808099C8+0x214>
    5e94:	00000000 	nop
    5e98:	0006000d 	break	0x6
    5e9c:	00007812 	mflo	t7
    5ea0:	000fc400 	sll	t8,t7,0x10
    5ea4:	0018cc03 	sra	t9,t8,0x10
    5ea8:	01595021 	addu	t2,t2,t9
    5eac:	3c010000 	lui	at,0x0
    5eb0:	a4220000 	sh	v0,0(at)
    5eb4:	000a5400 	sll	t2,t2,0x10
    5eb8:	000a5403 	sra	t2,t2,0x10
    5ebc:	3c010000 	lui	at,0x0
    5ec0:	a42a0000 	sh	t2,0(at)
    5ec4:	3c010000 	lui	at,0x0
    5ec8:	a42b0000 	sh	t3,0(at)
    5ecc:	3c0e0000 	lui	t6,0x0
    5ed0:	25ce0000 	addiu	t6,t6,0
    5ed4:	012e1821 	addu	v1,t1,t6
    5ed8:	3c0f0000 	lui	t7,0x0
    5edc:	85ef0000 	lh	t7,0(t7)
    5ee0:	846b0000 	lh	t3,0(v1)
    5ee4:	3c180000 	lui	t8,0x0
    5ee8:	3c190000 	lui	t9,0x0
    5eec:	01eb1023 	subu	v0,t7,t3
    5ef0:	04420004 	bltzl	v0,5f04 <func_808099C8+0x27c>
    5ef4:	00022023 	negu	a0,v0
    5ef8:	10000002 	b	5f04 <func_808099C8+0x27c>
    5efc:	00402025 	move	a0,v0
    5f00:	00022023 	negu	a0,v0
    5f04:	0087001a 	div	zero,a0,a3
    5f08:	84690002 	lh	t1,2(v1)
    5f0c:	87180000 	lh	t8,0(t8)
    5f10:	00002812 	mflo	a1
    5f14:	00052c00 	sll	a1,a1,0x10
    5f18:	14e00002 	bnez	a3,5f24 <func_808099C8+0x29c>
    5f1c:	00000000 	nop
    5f20:	0007000d 	break	0x7
    5f24:	2401ffff 	li	at,-1
    5f28:	14e10004 	bne	a3,at,5f3c <func_808099C8+0x2b4>
    5f2c:	3c018000 	lui	at,0x8000
    5f30:	14810002 	bne	a0,at,5f3c <func_808099C8+0x2b4>
    5f34:	00000000 	nop
    5f38:	0006000d 	break	0x6
    5f3c:	03091023 	subu	v0,t8,t1
    5f40:	04400003 	bltz	v0,5f50 <func_808099C8+0x2c8>
    5f44:	00052c03 	sra	a1,a1,0x10
    5f48:	10000002 	b	5f54 <func_808099C8+0x2cc>
    5f4c:	00402025 	move	a0,v0
    5f50:	00022023 	negu	a0,v0
    5f54:	0087001a 	div	zero,a0,a3
    5f58:	846a0004 	lh	t2,4(v1)
    5f5c:	87390000 	lh	t9,0(t9)
    5f60:	00003012 	mflo	a2
    5f64:	00063400 	sll	a2,a2,0x10
    5f68:	14e00002 	bnez	a3,5f74 <func_808099C8+0x2ec>
    5f6c:	00000000 	nop
    5f70:	0007000d 	break	0x7
    5f74:	2401ffff 	li	at,-1
    5f78:	14e10004 	bne	a3,at,5f8c <func_808099C8+0x304>
    5f7c:	3c018000 	lui	at,0x8000
    5f80:	14810002 	bne	a0,at,5f8c <func_808099C8+0x304>
    5f84:	00000000 	nop
    5f88:	0006000d 	break	0x6
    5f8c:	032a1023 	subu	v0,t9,t2
    5f90:	04400003 	bltz	v0,5fa0 <func_808099C8+0x318>
    5f94:	00063403 	sra	a2,a2,0x10
    5f98:	10000002 	b	5fa4 <func_808099C8+0x31c>
    5f9c:	00402025 	move	a0,v0
    5fa0:	00022023 	negu	a0,v0
    5fa4:	3c020000 	lui	v0,0x0
    5fa8:	84420000 	lh	v0,0(v0)
    5fac:	3c030000 	lui	v1,0x0
    5fb0:	004b082a 	slt	at,v0,t3
    5fb4:	54200008 	bnezl	at,5fd8 <func_808099C8+0x350>
    5fb8:	00451021 	addu	v0,v0,a1
    5fbc:	00451023 	subu	v0,v0,a1
    5fc0:	00021400 	sll	v0,v0,0x10
    5fc4:	00021403 	sra	v0,v0,0x10
    5fc8:	3c010000 	lui	at,0x0
    5fcc:	10000006 	b	5fe8 <func_808099C8+0x360>
    5fd0:	a4220000 	sh	v0,0(at)
    5fd4:	00451021 	addu	v0,v0,a1
    5fd8:	00021400 	sll	v0,v0,0x10
    5fdc:	00021403 	sra	v0,v0,0x10
    5fe0:	3c010000 	lui	at,0x0
    5fe4:	a4220000 	sh	v0,0(at)
    5fe8:	3c020000 	lui	v0,0x0
    5fec:	84420000 	lh	v0,0(v0)
    5ff0:	0049082a 	slt	at,v0,t1
    5ff4:	54200006 	bnezl	at,6010 <func_808099C8+0x388>
    5ff8:	00461021 	addu	v0,v0,a2
    5ffc:	00461023 	subu	v0,v0,a2
    6000:	00021400 	sll	v0,v0,0x10
    6004:	10000004 	b	6018 <func_808099C8+0x390>
    6008:	00021403 	sra	v0,v0,0x10
    600c:	00461021 	addu	v0,v0,a2
    6010:	00021400 	sll	v0,v0,0x10
    6014:	00021403 	sra	v0,v0,0x10
    6018:	84630000 	lh	v1,0(v1)
    601c:	006a082a 	slt	at,v1,t2
    6020:	14200013 	bnez	at,6070 <func_808099C8+0x3e8>
    6024:	00000000 	nop
    6028:	0087001a 	div	zero,a0,a3
    602c:	00007012 	mflo	t6
    6030:	000e7c00 	sll	t7,t6,0x10
    6034:	000fc403 	sra	t8,t7,0x10
    6038:	00781823 	subu	v1,v1,t8
    603c:	00031c00 	sll	v1,v1,0x10
    6040:	14e00002 	bnez	a3,604c <func_808099C8+0x3c4>
    6044:	00000000 	nop
    6048:	0007000d 	break	0x7
    604c:	2401ffff 	li	at,-1
    6050:	14e10004 	bne	a3,at,6064 <func_808099C8+0x3dc>
    6054:	3c018000 	lui	at,0x8000
    6058:	14810002 	bne	a0,at,6064 <func_808099C8+0x3dc>
    605c:	00000000 	nop
    6060:	0006000d 	break	0x6
    6064:	00031c03 	sra	v1,v1,0x10
    6068:	10000011 	b	60b0 <func_808099C8+0x428>
    606c:	00000000 	nop
    6070:	0087001a 	div	zero,a0,a3
    6074:	0000c812 	mflo	t9
    6078:	00197400 	sll	t6,t9,0x10
    607c:	000e7c03 	sra	t7,t6,0x10
    6080:	006f1821 	addu	v1,v1,t7
    6084:	00031c00 	sll	v1,v1,0x10
    6088:	00031c03 	sra	v1,v1,0x10
    608c:	14e00002 	bnez	a3,6098 <func_808099C8+0x410>
    6090:	00000000 	nop
    6094:	0007000d 	break	0x7
    6098:	2401ffff 	li	at,-1
    609c:	14e10004 	bne	a3,at,60b0 <func_808099C8+0x428>
    60a0:	3c018000 	lui	at,0x8000
    60a4:	14810002 	bne	a0,at,60b0 <func_808099C8+0x428>
    60a8:	00000000 	nop
    60ac:	0006000d 	break	0x6
    60b0:	3c010000 	lui	at,0x0
    60b4:	a4220000 	sh	v0,0(at)
    60b8:	3c010000 	lui	at,0x0
    60bc:	24e7ffff 	addiu	a3,a3,-1
    60c0:	00073c00 	sll	a3,a3,0x10
    60c4:	a4230000 	sh	v1,0(at)
    60c8:	3c010000 	lui	at,0x0
    60cc:	00073c03 	sra	a3,a3,0x10
    60d0:	14e00019 	bnez	a3,6138 <func_808099C8+0x4b0>
    60d4:	a4270000 	sh	a3,0(at)
    60d8:	3c010000 	lui	at,0x0
    60dc:	a43f0000 	sh	ra,0(at)
    60e0:	3c010000 	lui	at,0x0
    60e4:	a42d0000 	sh	t5,0(at)
    60e8:	3c010000 	lui	at,0x0
    60ec:	a42c0000 	sh	t4,0(at)
    60f0:	3c010000 	lui	at,0x0
    60f4:	a42b0000 	sh	t3,0(at)
    60f8:	3c010000 	lui	at,0x0
    60fc:	a4290000 	sh	t1,0(at)
    6100:	3c010000 	lui	at,0x0
    6104:	a42a0000 	sh	t2,0(at)
    6108:	24070014 	li	a3,20
    610c:	3c010000 	lui	at,0x0
    6110:	26100001 	addiu	s0,s0,1
    6114:	00108400 	sll	s0,s0,0x10
    6118:	a4270000 	sh	a3,0(at)
    611c:	3c010000 	lui	at,0x0
    6120:	00108403 	sra	s0,s0,0x10
    6124:	a4300000 	sh	s0,0(at)
    6128:	2a010002 	slti	at,s0,2
    612c:	14200002 	bnez	at,6138 <func_808099C8+0x4b0>
    6130:	3c010000 	lui	at,0x0
    6134:	a4200000 	sh	zero,0(at)
    6138:	3c0b0000 	lui	t3,0x0
    613c:	256b0000 	addiu	t3,t3,0
    6140:	91781409 	lbu	t8,5129(t3)
    6144:	24010001 	li	at,1
    6148:	3c10fa00 	lui	s0,0xfa00
    614c:	1701000b 	bne	t8,at,617c <func_808099C8+0x4f4>
    6150:	00005025 	move	t2,zero
    6154:	8d0302c0 	lw	v1,704(t0)
    6158:	3c0e0102 	lui	t6,0x102
    615c:	3c0f0000 	lui	t7,0x0
    6160:	24790008 	addiu	t9,v1,8
    6164:	ad1902c0 	sw	t9,704(t0)
    6168:	25ef0000 	addiu	t7,t7,0
    616c:	35ce0040 	ori	t6,t6,0x40
    6170:	ac6e0000 	sw	t6,0(v1)
    6174:	1000000a 	b	61a0 <func_808099C8+0x518>
    6178:	ac6f0004 	sw	t7,4(v1)
    617c:	8d0302c0 	lw	v1,704(t0)
    6180:	3c190102 	lui	t9,0x102
    6184:	3c0e0000 	lui	t6,0x0
    6188:	24780008 	addiu	t8,v1,8
    618c:	ad1802c0 	sw	t8,704(t0)
    6190:	25ce0000 	addiu	t6,t6,0
    6194:	37390040 	ori	t9,t9,0x40
    6198:	ac790000 	sw	t9,0(v1)
    619c:	ac6e0004 	sw	t6,4(v1)
    61a0:	8d0302c0 	lw	v1,704(t0)
    61a4:	3c18e700 	lui	t8,0xe700
    61a8:	3c0efc30 	lui	t6,0xfc30
    61ac:	246f0008 	addiu	t7,v1,8
    61b0:	ad0f02c0 	sw	t7,704(t0)
    61b4:	ac600004 	sw	zero,4(v1)
    61b8:	ac780000 	sw	t8,0(v1)
    61bc:	8d0302c0 	lw	v1,704(t0)
    61c0:	3c0f552e 	lui	t7,0x552e
    61c4:	35efff7f 	ori	t7,t7,0xff7f
    61c8:	24790008 	addiu	t9,v1,8
    61cc:	ad1902c0 	sw	t9,704(t0)
    61d0:	35ce9661 	ori	t6,t6,0x9661
    61d4:	ac6e0000 	sw	t6,0(v1)
    61d8:	ac6f0004 	sw	t7,4(v1)
    61dc:	8d0302c0 	lw	v1,704(t0)
    61e0:	3c010001 	lui	at,0x1
    61e4:	34218000 	ori	at,at,0x8000
    61e8:	24780008 	addiu	t8,v1,8
    61ec:	ad1802c0 	sw	t8,704(t0)
    61f0:	0241f821 	addu	ra,s2,at
    61f4:	ac700000 	sw	s0,0(v1)
    61f8:	87f94a6e 	lh	t9,19054(ra)
    61fc:	2401ff00 	li	at,-256
    6200:	00006025 	move	t4,zero
    6204:	332e00ff 	andi	t6,t9,0xff
    6208:	01c17825 	or	t7,t6,at
    620c:	ac6f0004 	sw	t7,4(v1)
    6210:	8d0302c0 	lw	v1,704(t0)
    6214:	241900ff 	li	t9,255
    6218:	3c0d0700 	lui	t5,0x700
    621c:	24780008 	addiu	t8,v1,8
    6220:	ad1802c0 	sw	t8,704(t0)
    6224:	ac790004 	sw	t9,4(v1)
    6228:	ac710000 	sw	s1,0(v1)
    622c:	8d0302c0 	lw	v1,704(t0)
    6230:	3c0ffd70 	lui	t7,0xfd70
    6234:	000ac080 	sll	t8,t2,0x2
    6238:	246e0008 	addiu	t6,v1,8
    623c:	ad0e02c0 	sw	t6,704(t0)
    6240:	ac6f0000 	sw	t7,0(v1)
    6244:	916e1409 	lbu	t6,5129(t3)
    6248:	030ac021 	addu	t8,t8,t2
    624c:	3c190000 	lui	t9,0x0
    6250:	27390000 	addiu	t9,t9,0
    6254:	0018c080 	sll	t8,t8,0x2
    6258:	03194821 	addu	t1,t8,t9
    625c:	000e7880 	sll	t7,t6,0x2
    6260:	012fc021 	addu	t8,t1,t7
    6264:	8f190000 	lw	t9,0(t8)
    6268:	3c0ff570 	lui	t7,0xf570
    626c:	240507ff 	li	a1,2047
    6270:	ac790004 	sw	t9,4(v1)
    6274:	8d0302c0 	lw	v1,704(t0)
    6278:	3c19e600 	lui	t9,0xe600
    627c:	246e0008 	addiu	t6,v1,8
    6280:	ad0e02c0 	sw	t6,704(t0)
    6284:	ac6d0004 	sw	t5,4(v1)
    6288:	ac6f0000 	sw	t7,0(v1)
    628c:	8d0302c0 	lw	v1,704(t0)
    6290:	3c0ff300 	lui	t7,0xf300
    6294:	24780008 	addiu	t8,v1,8
    6298:	ad1802c0 	sw	t8,704(t0)
    629c:	ac600004 	sw	zero,4(v1)
    62a0:	ac790000 	sw	t9,0(v1)
    62a4:	8d0702c0 	lw	a3,704(t0)
    62a8:	000ac080 	sll	t8,t2,0x2
    62ac:	030ac021 	addu	t8,t8,t2
    62b0:	24ee0008 	addiu	t6,a3,8
    62b4:	ad0e02c0 	sw	t6,704(t0)
    62b8:	acef0000 	sw	t7,0(a3)
    62bc:	91641409 	lbu	a0,5129(t3)
    62c0:	3c190000 	lui	t9,0x0
    62c4:	27390000 	addiu	t9,t9,0
    62c8:	0018c080 	sll	t8,t8,0x2
    62cc:	03193021 	addu	a2,t8,t9
    62d0:	00042040 	sll	a0,a0,0x1
    62d4:	00c47821 	addu	t7,a2,a0
    62d8:	95f8000c 	lhu	t8,12(t7)
    62dc:	94ce0012 	lhu	t6,18(a2)
    62e0:	254a0001 	addiu	t2,t2,1
    62e4:	000a5400 	sll	t2,t2,0x10
    62e8:	01d80019 	multu	t6,t8
    62ec:	0124c821 	addu	t9,t1,a0
    62f0:	00001012 	mflo	v0
    62f4:	24420001 	addiu	v0,v0,1
    62f8:	00021043 	sra	v0,v0,0x1
    62fc:	2442ffff 	addiu	v0,v0,-1
    6300:	284107ff 	slti	at,v0,2047
    6304:	10200003 	beqz	at,6314 <func_808099C8+0x68c>
    6308:	00000000 	nop
    630c:	10000001 	b	6314 <func_808099C8+0x68c>
    6310:	00402825 	move	a1,v0
    6314:	9722000c 	lhu	v0,12(t9)
    6318:	04410002 	bgez	v0,6324 <func_808099C8+0x69c>
    631c:	00400821 	move	at,v0
    6320:	24410007 	addiu	at,v0,7
    6324:	000110c3 	sra	v0,at,0x3
    6328:	1c400003 	bgtz	v0,6338 <func_808099C8+0x6b0>
    632c:	00401825 	move	v1,v0
    6330:	10000001 	b	6338 <func_808099C8+0x6b0>
    6334:	24030001 	li	v1,1
    6338:	1c400003 	bgtz	v0,6348 <func_808099C8+0x6c0>
    633c:	246f07ff 	addiu	t7,v1,2047
    6340:	10000002 	b	634c <func_808099C8+0x6c4>
    6344:	24040001 	li	a0,1
    6348:	00402025 	move	a0,v0
    634c:	01e4001a 	div	zero,t7,a0
    6350:	00007012 	mflo	t6
    6354:	31d80fff 	andi	t8,t6,0xfff
    6358:	14800002 	bnez	a0,6364 <func_808099C8+0x6dc>
    635c:	00000000 	nop
    6360:	0007000d 	break	0x7
    6364:	2401ffff 	li	at,-1
    6368:	14810004 	bne	a0,at,637c <func_808099C8+0x6f4>
    636c:	3c018000 	lui	at,0x8000
    6370:	15e10002 	bne	t7,at,637c <func_808099C8+0x6f4>
    6374:	00000000 	nop
    6378:	0006000d 	break	0x6
    637c:	30af0fff 	andi	t7,a1,0xfff
    6380:	000f7300 	sll	t6,t7,0xc
    6384:	030dc825 	or	t9,t8,t5
    6388:	032ec025 	or	t8,t9,t6
    638c:	acf80004 	sw	t8,4(a3)
    6390:	8d0302c0 	lw	v1,704(t0)
    6394:	3c19e700 	lui	t9,0xe700
    6398:	3c01f568 	lui	at,0xf568
    639c:	246f0008 	addiu	t7,v1,8
    63a0:	ad0f02c0 	sw	t7,704(t0)
    63a4:	ac600004 	sw	zero,4(v1)
    63a8:	ac790000 	sw	t9,0(v1)
    63ac:	8d0302c0 	lw	v1,704(t0)
    63b0:	000c1040 	sll	v0,t4,0x1
    63b4:	304400ff 	andi	a0,v0,0xff
    63b8:	246e0008 	addiu	t6,v1,8
    63bc:	ad0e02c0 	sw	t6,704(t0)
    63c0:	91781409 	lbu	t8,5129(t3)
    63c4:	00042400 	sll	a0,a0,0x10
    63c8:	24450006 	addiu	a1,v0,6
    63cc:	00187840 	sll	t7,t8,0x1
    63d0:	012fc821 	addu	t9,t1,t7
    63d4:	972e000c 	lhu	t6,12(t9)
    63d8:	ac600004 	sw	zero,4(v1)
    63dc:	30a500ff 	andi	a1,a1,0xff
    63e0:	25d80007 	addiu	t8,t6,7
    63e4:	001878c3 	sra	t7,t8,0x3
    63e8:	31f901ff 	andi	t9,t7,0x1ff
    63ec:	00197240 	sll	t6,t9,0x9
    63f0:	01c1c025 	or	t8,t6,at
    63f4:	ac780000 	sw	t8,0(v1)
    63f8:	8d0302c0 	lw	v1,704(t0)
    63fc:	3c19f200 	lui	t9,0xf200
    6400:	258c0004 	addiu	t4,t4,4
    6404:	246f0008 	addiu	t7,v1,8
    6408:	ad0f02c0 	sw	t7,704(t0)
    640c:	ac790000 	sw	t9,0(v1)
    6410:	94ce0012 	lhu	t6,18(a2)
    6414:	000a5403 	sra	t2,t2,0x10
    6418:	29410004 	slti	at,t2,4
    641c:	25d8ffff 	addiu	t8,t6,-1
    6420:	916e1409 	lbu	t6,5129(t3)
    6424:	00187880 	sll	t7,t8,0x2
    6428:	31f90fff 	andi	t9,t7,0xfff
    642c:	000ec040 	sll	t8,t6,0x1
    6430:	00d87821 	addu	t7,a2,t8
    6434:	95ee000c 	lhu	t6,12(t7)
    6438:	000c6400 	sll	t4,t4,0x10
    643c:	000c6403 	sra	t4,t4,0x10
    6440:	25d8ffff 	addiu	t8,t6,-1
    6444:	00187880 	sll	t7,t8,0x2
    6448:	31ee0fff 	andi	t6,t7,0xfff
    644c:	000ec300 	sll	t8,t6,0xc
    6450:	03387825 	or	t7,t9,t8
    6454:	ac6f0004 	sw	t7,4(v1)
    6458:	8d0302c0 	lw	v1,704(t0)
    645c:	24590004 	addiu	t9,v0,4
    6460:	333800ff 	andi	t8,t9,0xff
    6464:	246e0008 	addiu	t6,v1,8
    6468:	ad0e02c0 	sw	t6,704(t0)
    646c:	00187a00 	sll	t7,t8,0x8
    6470:	008f7025 	or	t6,a0,t7
    6474:	01c5c825 	or	t9,t6,a1
    6478:	032dc025 	or	t8,t9,t5
    647c:	24590002 	addiu	t9,v0,2
    6480:	00057a00 	sll	t7,a1,0x8
    6484:	ac780000 	sw	t8,0(v1)
    6488:	333800ff 	andi	t8,t9,0xff
    648c:	008f7025 	or	t6,a0,t7
    6490:	01d87825 	or	t7,t6,t8
    6494:	ac6f0004 	sw	t7,4(v1)
    6498:	1420ff64 	bnez	at,622c <func_808099C8+0x5a4>
    649c:	00603025 	move	a2,v1
    64a0:	91791409 	lbu	t9,5129(t3)
    64a4:	24010001 	li	at,1
    64a8:	00005025 	move	t2,zero
    64ac:	1721000b 	bne	t9,at,64dc <func_808099C8+0x854>
    64b0:	00006025 	move	t4,zero
    64b4:	8d0302c0 	lw	v1,704(t0)
    64b8:	3c180102 	lui	t8,0x102
    64bc:	3c0f0000 	lui	t7,0x0
    64c0:	246e0008 	addiu	t6,v1,8
    64c4:	ad0e02c0 	sw	t6,704(t0)
    64c8:	25ef0000 	addiu	t7,t7,0
    64cc:	37180040 	ori	t8,t8,0x40
    64d0:	ac780000 	sw	t8,0(v1)
    64d4:	1000000a 	b	6500 <func_808099C8+0x878>
    64d8:	ac6f0004 	sw	t7,4(v1)
    64dc:	8d0302c0 	lw	v1,704(t0)
    64e0:	3c0e0102 	lui	t6,0x102
    64e4:	3c180000 	lui	t8,0x0
    64e8:	24790008 	addiu	t9,v1,8
    64ec:	ad1902c0 	sw	t9,704(t0)
    64f0:	27180000 	addiu	t8,t8,0
    64f4:	35ce0040 	ori	t6,t6,0x40
    64f8:	ac6e0000 	sw	t6,0(v1)
    64fc:	ac780004 	sw	t8,4(v1)
    6500:	8d0302c0 	lw	v1,704(t0)
    6504:	3c19e700 	lui	t9,0xe700
    6508:	3c180000 	lui	t8,0x0
    650c:	246f0008 	addiu	t7,v1,8
    6510:	ad0f02c0 	sw	t7,704(t0)
    6514:	ac600004 	sw	zero,4(v1)
    6518:	ac790000 	sw	t9,0(v1)
    651c:	916e140a 	lbu	t6,5130(t3)
    6520:	554e003d 	bnel	t2,t6,6618 <func_808099C8+0x990>
    6524:	8d0302c0 	lw	v1,704(t0)
    6528:	93180000 	lbu	t8,0(t8)
    652c:	3c040000 	lui	a0,0x0
    6530:	3c050000 	lui	a1,0x0
    6534:	17000027 	bnez	t8,65d4 <func_808099C8+0x94c>
    6538:	3c060000 	lui	a2,0x0
    653c:	3c0f0000 	lui	t7,0x0
    6540:	3c180000 	lui	t8,0x0
    6544:	87180000 	lh	t8,0(t8)
    6548:	85f90000 	lh	t9,0(t7)
    654c:	8d0302c0 	lw	v1,704(t0)
    6550:	330f00ff 	andi	t7,t8,0xff
    6554:	00197600 	sll	t6,t9,0x18
    6558:	000fcc00 	sll	t9,t7,0x10
    655c:	3c0f0000 	lui	t7,0x0
    6560:	85ef0000 	lh	t7,0(t7)
    6564:	01d9c025 	or	t8,t6,t9
    6568:	84840000 	lh	a0,0(a0)
    656c:	31ee00ff 	andi	t6,t7,0xff
    6570:	84a50000 	lh	a1,0(a1)
    6574:	84c60000 	lh	a2,0(a2)
    6578:	246f0008 	addiu	t7,v1,8
    657c:	ad0f02c0 	sw	t7,704(t0)
    6580:	000eca00 	sll	t9,t6,0x8
    6584:	ac700000 	sw	s0,0(v1)
    6588:	87ee4a6e 	lh	t6,19054(ra)
    658c:	03193825 	or	a3,t8,t9
    6590:	00042600 	sll	a0,a0,0x18
    6594:	30a500ff 	andi	a1,a1,0xff
    6598:	31d800ff 	andi	t8,t6,0xff
    659c:	0304c825 	or	t9,t8,a0
    65a0:	00052c00 	sll	a1,a1,0x10
    65a4:	30c600ff 	andi	a2,a2,0xff
    65a8:	00063200 	sll	a2,a2,0x8
    65ac:	03257825 	or	t7,t9,a1
    65b0:	01e67025 	or	t6,t7,a2
    65b4:	ac6e0004 	sw	t6,4(v1)
    65b8:	8d0302c0 	lw	v1,704(t0)
    65bc:	34e700ff 	ori	a3,a3,0xff
    65c0:	24780008 	addiu	t8,v1,8
    65c4:	ad1802c0 	sw	t8,704(t0)
    65c8:	ac670004 	sw	a3,4(v1)
    65cc:	10000021 	b	6654 <func_808099C8+0x9cc>
    65d0:	ac710000 	sw	s1,0(v1)
    65d4:	8d0302c0 	lw	v1,704(t0)
    65d8:	2401ff00 	li	at,-256
    65dc:	24790008 	addiu	t9,v1,8
    65e0:	ad1902c0 	sw	t9,704(t0)
    65e4:	ac700000 	sw	s0,0(v1)
    65e8:	87ef4a6e 	lh	t7,19054(ra)
    65ec:	31ee00ff 	andi	t6,t7,0xff
    65f0:	01c1c025 	or	t8,t6,at
    65f4:	ac780004 	sw	t8,4(v1)
    65f8:	8d0302c0 	lw	v1,704(t0)
    65fc:	240f00ff 	li	t7,255
    6600:	24790008 	addiu	t9,v1,8
    6604:	ad1902c0 	sw	t9,704(t0)
    6608:	ac6f0004 	sw	t7,4(v1)
    660c:	10000011 	b	6654 <func_808099C8+0x9cc>
    6610:	ac710000 	sw	s1,0(v1)
    6614:	8d0302c0 	lw	v1,704(t0)
    6618:	3c017878 	lui	at,0x7878
    661c:	34217800 	ori	at,at,0x7800
    6620:	246e0008 	addiu	t6,v1,8
    6624:	ad0e02c0 	sw	t6,704(t0)
    6628:	ac700000 	sw	s0,0(v1)
    662c:	87f84a6e 	lh	t8,19054(ra)
    6630:	331900ff 	andi	t9,t8,0xff
    6634:	03217825 	or	t7,t9,at
    6638:	ac6f0004 	sw	t7,4(v1)
    663c:	8d0302c0 	lw	v1,704(t0)
    6640:	241800ff 	li	t8,255
    6644:	246e0008 	addiu	t6,v1,8
    6648:	ad0e02c0 	sw	t6,704(t0)
    664c:	ac780004 	sw	t8,4(v1)
    6650:	ac710000 	sw	s1,0(v1)
    6654:	8d0302c0 	lw	v1,704(t0)
    6658:	3c0ffd70 	lui	t7,0xfd70
    665c:	000a7080 	sll	t6,t2,0x2
    6660:	24790008 	addiu	t9,v1,8
    6664:	ad1902c0 	sw	t9,704(t0)
    6668:	ac6f0000 	sw	t7,0(v1)
    666c:	91791409 	lbu	t9,5129(t3)
    6670:	01ca7021 	addu	t6,t6,t2
    6674:	3c180000 	lui	t8,0x0
    6678:	27180000 	addiu	t8,t8,0
    667c:	000e7080 	sll	t6,t6,0x2
    6680:	01d83821 	addu	a3,t6,t8
    6684:	00197880 	sll	t7,t9,0x2
    6688:	00ef7021 	addu	t6,a3,t7
    668c:	8dd80000 	lw	t8,0(t6)
    6690:	3c0ff570 	lui	t7,0xf570
    6694:	240507ff 	li	a1,2047
    6698:	ac780004 	sw	t8,4(v1)
    669c:	8d0302c0 	lw	v1,704(t0)
    66a0:	3c18e600 	lui	t8,0xe600
    66a4:	24790008 	addiu	t9,v1,8
    66a8:	ad1902c0 	sw	t9,704(t0)
    66ac:	ac6d0004 	sw	t5,4(v1)
    66b0:	ac6f0000 	sw	t7,0(v1)
    66b4:	8d0302c0 	lw	v1,704(t0)
    66b8:	3c0ff300 	lui	t7,0xf300
    66bc:	246e0008 	addiu	t6,v1,8
    66c0:	ad0e02c0 	sw	t6,704(t0)
    66c4:	ac600004 	sw	zero,4(v1)
    66c8:	ac780000 	sw	t8,0(v1)
    66cc:	8d0902c0 	lw	t1,704(t0)
    66d0:	000a7080 	sll	t6,t2,0x2
    66d4:	01ca7021 	addu	t6,t6,t2
    66d8:	25390008 	addiu	t9,t1,8
    66dc:	ad1902c0 	sw	t9,704(t0)
    66e0:	ad2f0000 	sw	t7,0(t1)
    66e4:	91791409 	lbu	t9,5129(t3)
    66e8:	3c180000 	lui	t8,0x0
    66ec:	27180000 	addiu	t8,t8,0
    66f0:	000e7080 	sll	t6,t6,0x2
    66f4:	01d83021 	addu	a2,t6,t8
    66f8:	00197840 	sll	t7,t9,0x1
    66fc:	00ef7021 	addu	t6,a3,t7
    6700:	95c4000c 	lhu	a0,12(t6)
    6704:	94d80012 	lhu	t8,18(a2)
    6708:	254a0001 	addiu	t2,t2,1
    670c:	000a5400 	sll	t2,t2,0x10
    6710:	03040019 	multu	t8,a0
    6714:	00001012 	mflo	v0
    6718:	24420001 	addiu	v0,v0,1
    671c:	00021043 	sra	v0,v0,0x1
    6720:	2442ffff 	addiu	v0,v0,-1
    6724:	284107ff 	slti	at,v0,2047
    6728:	10200003 	beqz	at,6738 <func_808099C8+0xab0>
    672c:	00000000 	nop
    6730:	10000001 	b	6738 <func_808099C8+0xab0>
    6734:	00402825 	move	a1,v0
    6738:	04810003 	bgez	a0,6748 <func_808099C8+0xac0>
    673c:	000410c3 	sra	v0,a0,0x3
    6740:	24810007 	addiu	at,a0,7
    6744:	000110c3 	sra	v0,at,0x3
    6748:	1c400003 	bgtz	v0,6758 <func_808099C8+0xad0>
    674c:	00401825 	move	v1,v0
    6750:	10000001 	b	6758 <func_808099C8+0xad0>
    6754:	24030001 	li	v1,1
    6758:	1c400003 	bgtz	v0,6768 <func_808099C8+0xae0>
    675c:	247907ff 	addiu	t9,v1,2047
    6760:	10000002 	b	676c <func_808099C8+0xae4>
    6764:	24040001 	li	a0,1
    6768:	00402025 	move	a0,v0
    676c:	0324001a 	div	zero,t9,a0
    6770:	00007812 	mflo	t7
    6774:	31ee0fff 	andi	t6,t7,0xfff
    6778:	14800002 	bnez	a0,6784 <func_808099C8+0xafc>
    677c:	00000000 	nop
    6780:	0007000d 	break	0x7
    6784:	2401ffff 	li	at,-1
    6788:	14810004 	bne	a0,at,679c <func_808099C8+0xb14>
    678c:	3c018000 	lui	at,0x8000
    6790:	17210002 	bne	t9,at,679c <func_808099C8+0xb14>
    6794:	00000000 	nop
    6798:	0006000d 	break	0x6
    679c:	30b90fff 	andi	t9,a1,0xfff
    67a0:	00197b00 	sll	t7,t9,0xc
    67a4:	01cdc025 	or	t8,t6,t5
    67a8:	030f7025 	or	t6,t8,t7
    67ac:	ad2e0004 	sw	t6,4(t1)
    67b0:	8d0302c0 	lw	v1,704(t0)
    67b4:	3c18e700 	lui	t8,0xe700
    67b8:	3c01f568 	lui	at,0xf568
    67bc:	24790008 	addiu	t9,v1,8
    67c0:	ad1902c0 	sw	t9,704(t0)
    67c4:	ac600004 	sw	zero,4(v1)
    67c8:	ac780000 	sw	t8,0(v1)
    67cc:	8d0302c0 	lw	v1,704(t0)
    67d0:	000c1040 	sll	v0,t4,0x1
    67d4:	304400ff 	andi	a0,v0,0xff
    67d8:	246f0008 	addiu	t7,v1,8
    67dc:	ad0f02c0 	sw	t7,704(t0)
    67e0:	916e1409 	lbu	t6,5129(t3)
    67e4:	00042400 	sll	a0,a0,0x10
    67e8:	24450006 	addiu	a1,v0,6
    67ec:	000ec840 	sll	t9,t6,0x1
    67f0:	00f9c021 	addu	t8,a3,t9
    67f4:	970f000c 	lhu	t7,12(t8)
    67f8:	ac600004 	sw	zero,4(v1)
    67fc:	30a500ff 	andi	a1,a1,0xff
    6800:	25ee0007 	addiu	t6,t7,7
    6804:	000ec8c3 	sra	t9,t6,0x3
    6808:	333801ff 	andi	t8,t9,0x1ff
    680c:	00187a40 	sll	t7,t8,0x9
    6810:	01e17025 	or	t6,t7,at
    6814:	ac6e0000 	sw	t6,0(v1)
    6818:	8d0302c0 	lw	v1,704(t0)
    681c:	3c18f200 	lui	t8,0xf200
    6820:	258c0004 	addiu	t4,t4,4
    6824:	24790008 	addiu	t9,v1,8
    6828:	ad1902c0 	sw	t9,704(t0)
    682c:	ac780000 	sw	t8,0(v1)
    6830:	94cf0012 	lhu	t7,18(a2)
    6834:	000a5403 	sra	t2,t2,0x10
    6838:	29410004 	slti	at,t2,4
    683c:	25eeffff 	addiu	t6,t7,-1
    6840:	916f1409 	lbu	t7,5129(t3)
    6844:	000ec880 	sll	t9,t6,0x2
    6848:	33380fff 	andi	t8,t9,0xfff
    684c:	000f7040 	sll	t6,t7,0x1
    6850:	00eec821 	addu	t9,a3,t6
    6854:	972f000c 	lhu	t7,12(t9)
    6858:	000c6400 	sll	t4,t4,0x10
    685c:	000c6403 	sra	t4,t4,0x10
    6860:	25eeffff 	addiu	t6,t7,-1
    6864:	000ec880 	sll	t9,t6,0x2
    6868:	332f0fff 	andi	t7,t9,0xfff
    686c:	000f7300 	sll	t6,t7,0xc
    6870:	030ec825 	or	t9,t8,t6
    6874:	ac790004 	sw	t9,4(v1)
    6878:	8d0302c0 	lw	v1,704(t0)
    687c:	24580004 	addiu	t8,v0,4
    6880:	330e00ff 	andi	t6,t8,0xff
    6884:	246f0008 	addiu	t7,v1,8
    6888:	ad0f02c0 	sw	t7,704(t0)
    688c:	000eca00 	sll	t9,t6,0x8
    6890:	00997825 	or	t7,a0,t9
    6894:	01e5c025 	or	t8,t7,a1
    6898:	030d7025 	or	t6,t8,t5
    689c:	24580002 	addiu	t8,v0,2
    68a0:	0005ca00 	sll	t9,a1,0x8
    68a4:	ac6e0000 	sw	t6,0(v1)
    68a8:	330e00ff 	andi	t6,t8,0xff
    68ac:	00997825 	or	t7,a0,t9
    68b0:	01eec825 	or	t9,t7,t6
    68b4:	ac790004 	sw	t9,4(v1)
    68b8:	1420ff11 	bnez	at,6500 <func_808099C8+0x878>
    68bc:	00603025 	move	a2,v1
    68c0:	29410006 	slti	at,t2,6
    68c4:	502000f3 	beqzl	at,6c94 <func_808099C8+0x100c>
    68c8:	8d0302c0 	lw	v1,704(t0)
    68cc:	8d0302c0 	lw	v1,704(t0)
    68d0:	3c0fe700 	lui	t7,0xe700
    68d4:	24780008 	addiu	t8,v1,8
    68d8:	ad1802c0 	sw	t8,704(t0)
    68dc:	ac600004 	sw	zero,4(v1)
    68e0:	ac6f0000 	sw	t7,0(v1)
    68e4:	916e140c 	lbu	t6,5132(t3)
    68e8:	3c180000 	lui	t8,0x0
    68ec:	25d90004 	addiu	t9,t6,4
    68f0:	5559003d 	bnel	t2,t9,69e8 <func_808099C8+0xd60>
    68f4:	8d0302c0 	lw	v1,704(t0)
    68f8:	93180000 	lbu	t8,0(t8)
    68fc:	3c040000 	lui	a0,0x0
    6900:	3c050000 	lui	a1,0x0
    6904:	13000027 	beqz	t8,69a4 <func_808099C8+0xd1c>
    6908:	3c060000 	lui	a2,0x0
    690c:	3c0f0000 	lui	t7,0x0
    6910:	3c180000 	lui	t8,0x0
    6914:	87180000 	lh	t8,0(t8)
    6918:	85ee0000 	lh	t6,0(t7)
    691c:	8d0302c0 	lw	v1,704(t0)
    6920:	330f00ff 	andi	t7,t8,0xff
    6924:	000ece00 	sll	t9,t6,0x18
    6928:	000f7400 	sll	t6,t7,0x10
    692c:	3c0f0000 	lui	t7,0x0
    6930:	85ef0000 	lh	t7,0(t7)
    6934:	032ec025 	or	t8,t9,t6
    6938:	84840000 	lh	a0,0(a0)
    693c:	31f900ff 	andi	t9,t7,0xff
    6940:	84a50000 	lh	a1,0(a1)
    6944:	84c60000 	lh	a2,0(a2)
    6948:	246f0008 	addiu	t7,v1,8
    694c:	ad0f02c0 	sw	t7,704(t0)
    6950:	00197200 	sll	t6,t9,0x8
    6954:	ac700000 	sw	s0,0(v1)
    6958:	87f94a6e 	lh	t9,19054(ra)
    695c:	030e3825 	or	a3,t8,t6
    6960:	00042600 	sll	a0,a0,0x18
    6964:	30a500ff 	andi	a1,a1,0xff
    6968:	333800ff 	andi	t8,t9,0xff
    696c:	03047025 	or	t6,t8,a0
    6970:	00052c00 	sll	a1,a1,0x10
    6974:	30c600ff 	andi	a2,a2,0xff
    6978:	00063200 	sll	a2,a2,0x8
    697c:	01c57825 	or	t7,t6,a1
    6980:	01e6c825 	or	t9,t7,a2
    6984:	ac790004 	sw	t9,4(v1)
    6988:	8d0302c0 	lw	v1,704(t0)
    698c:	34e700ff 	ori	a3,a3,0xff
    6990:	24780008 	addiu	t8,v1,8
    6994:	ad1802c0 	sw	t8,704(t0)
    6998:	ac670004 	sw	a3,4(v1)
    699c:	10000021 	b	6a24 <func_808099C8+0xd9c>
    69a0:	ac710000 	sw	s1,0(v1)
    69a4:	8d0302c0 	lw	v1,704(t0)
    69a8:	2401ff00 	li	at,-256
    69ac:	246e0008 	addiu	t6,v1,8
    69b0:	ad0e02c0 	sw	t6,704(t0)
    69b4:	ac700000 	sw	s0,0(v1)
    69b8:	87ef4a6e 	lh	t7,19054(ra)
    69bc:	31f900ff 	andi	t9,t7,0xff
    69c0:	0321c025 	or	t8,t9,at
    69c4:	ac780004 	sw	t8,4(v1)
    69c8:	8d0302c0 	lw	v1,704(t0)
    69cc:	240f00ff 	li	t7,255
    69d0:	246e0008 	addiu	t6,v1,8
    69d4:	ad0e02c0 	sw	t6,704(t0)
    69d8:	ac6f0004 	sw	t7,4(v1)
    69dc:	10000011 	b	6a24 <func_808099C8+0xd9c>
    69e0:	ac710000 	sw	s1,0(v1)
    69e4:	8d0302c0 	lw	v1,704(t0)
    69e8:	3c017878 	lui	at,0x7878
    69ec:	34217800 	ori	at,at,0x7800
    69f0:	24790008 	addiu	t9,v1,8
    69f4:	ad1902c0 	sw	t9,704(t0)
    69f8:	ac700000 	sw	s0,0(v1)
    69fc:	87f84a6e 	lh	t8,19054(ra)
    6a00:	330e00ff 	andi	t6,t8,0xff
    6a04:	01c17825 	or	t7,t6,at
    6a08:	ac6f0004 	sw	t7,4(v1)
    6a0c:	8d0302c0 	lw	v1,704(t0)
    6a10:	241800ff 	li	t8,255
    6a14:	24790008 	addiu	t9,v1,8
    6a18:	ad1902c0 	sw	t9,704(t0)
    6a1c:	ac780004 	sw	t8,4(v1)
    6a20:	ac710000 	sw	s1,0(v1)
    6a24:	8d0302c0 	lw	v1,704(t0)
    6a28:	3c0ffd70 	lui	t7,0xfd70
    6a2c:	000ac880 	sll	t9,t2,0x2
    6a30:	246e0008 	addiu	t6,v1,8
    6a34:	ad0e02c0 	sw	t6,704(t0)
    6a38:	ac6f0000 	sw	t7,0(v1)
    6a3c:	916e1409 	lbu	t6,5129(t3)
    6a40:	032ac821 	addu	t9,t9,t2
    6a44:	3c180000 	lui	t8,0x0
    6a48:	27180000 	addiu	t8,t8,0
    6a4c:	0019c880 	sll	t9,t9,0x2
    6a50:	03383821 	addu	a3,t9,t8
    6a54:	000e7880 	sll	t7,t6,0x2
    6a58:	00efc821 	addu	t9,a3,t7
    6a5c:	8f380000 	lw	t8,0(t9)
    6a60:	3c0ff570 	lui	t7,0xf570
    6a64:	240507ff 	li	a1,2047
    6a68:	ac780004 	sw	t8,4(v1)
    6a6c:	8d0302c0 	lw	v1,704(t0)
    6a70:	3c18e600 	lui	t8,0xe600
    6a74:	246e0008 	addiu	t6,v1,8
    6a78:	ad0e02c0 	sw	t6,704(t0)
    6a7c:	ac6d0004 	sw	t5,4(v1)
    6a80:	ac6f0000 	sw	t7,0(v1)
    6a84:	8d0302c0 	lw	v1,704(t0)
    6a88:	3c0ff300 	lui	t7,0xf300
    6a8c:	24790008 	addiu	t9,v1,8
    6a90:	ad1902c0 	sw	t9,704(t0)
    6a94:	ac600004 	sw	zero,4(v1)
    6a98:	ac780000 	sw	t8,0(v1)
    6a9c:	8d0902c0 	lw	t1,704(t0)
    6aa0:	000ac880 	sll	t9,t2,0x2
    6aa4:	032ac821 	addu	t9,t9,t2
    6aa8:	252e0008 	addiu	t6,t1,8
    6aac:	ad0e02c0 	sw	t6,704(t0)
    6ab0:	ad2f0000 	sw	t7,0(t1)
    6ab4:	916e1409 	lbu	t6,5129(t3)
    6ab8:	3c180000 	lui	t8,0x0
    6abc:	27180000 	addiu	t8,t8,0
    6ac0:	0019c880 	sll	t9,t9,0x2
    6ac4:	03383021 	addu	a2,t9,t8
    6ac8:	000e7840 	sll	t7,t6,0x1
    6acc:	00efc821 	addu	t9,a3,t7
    6ad0:	9724000c 	lhu	a0,12(t9)
    6ad4:	94d80012 	lhu	t8,18(a2)
    6ad8:	254a0001 	addiu	t2,t2,1
    6adc:	000a5400 	sll	t2,t2,0x10
    6ae0:	03040019 	multu	t8,a0
    6ae4:	00001012 	mflo	v0
    6ae8:	24420001 	addiu	v0,v0,1
    6aec:	00021043 	sra	v0,v0,0x1
    6af0:	2442ffff 	addiu	v0,v0,-1
    6af4:	284107ff 	slti	at,v0,2047
    6af8:	10200003 	beqz	at,6b08 <func_808099C8+0xe80>
    6afc:	00000000 	nop
    6b00:	10000001 	b	6b08 <func_808099C8+0xe80>
    6b04:	00402825 	move	a1,v0
    6b08:	04810003 	bgez	a0,6b18 <func_808099C8+0xe90>
    6b0c:	000410c3 	sra	v0,a0,0x3
    6b10:	24810007 	addiu	at,a0,7
    6b14:	000110c3 	sra	v0,at,0x3
    6b18:	1c400003 	bgtz	v0,6b28 <func_808099C8+0xea0>
    6b1c:	00401825 	move	v1,v0
    6b20:	10000001 	b	6b28 <func_808099C8+0xea0>
    6b24:	24030001 	li	v1,1
    6b28:	1c400003 	bgtz	v0,6b38 <func_808099C8+0xeb0>
    6b2c:	246e07ff 	addiu	t6,v1,2047
    6b30:	10000002 	b	6b3c <func_808099C8+0xeb4>
    6b34:	24040001 	li	a0,1
    6b38:	00402025 	move	a0,v0
    6b3c:	01c4001a 	div	zero,t6,a0
    6b40:	00007812 	mflo	t7
    6b44:	31f90fff 	andi	t9,t7,0xfff
    6b48:	14800002 	bnez	a0,6b54 <func_808099C8+0xecc>
    6b4c:	00000000 	nop
    6b50:	0007000d 	break	0x7
    6b54:	2401ffff 	li	at,-1
    6b58:	14810004 	bne	a0,at,6b6c <func_808099C8+0xee4>
    6b5c:	3c018000 	lui	at,0x8000
    6b60:	15c10002 	bne	t6,at,6b6c <func_808099C8+0xee4>
    6b64:	00000000 	nop
    6b68:	0006000d 	break	0x6
    6b6c:	30ae0fff 	andi	t6,a1,0xfff
    6b70:	000e7b00 	sll	t7,t6,0xc
    6b74:	032dc025 	or	t8,t9,t5
    6b78:	030fc825 	or	t9,t8,t7
    6b7c:	ad390004 	sw	t9,4(t1)
    6b80:	8d0302c0 	lw	v1,704(t0)
    6b84:	3c18e700 	lui	t8,0xe700
    6b88:	3c01f568 	lui	at,0xf568
    6b8c:	246e0008 	addiu	t6,v1,8
    6b90:	ad0e02c0 	sw	t6,704(t0)
    6b94:	ac600004 	sw	zero,4(v1)
    6b98:	ac780000 	sw	t8,0(v1)
    6b9c:	8d0302c0 	lw	v1,704(t0)
    6ba0:	000c1040 	sll	v0,t4,0x1
    6ba4:	304400ff 	andi	a0,v0,0xff
    6ba8:	246f0008 	addiu	t7,v1,8
    6bac:	ad0f02c0 	sw	t7,704(t0)
    6bb0:	91791409 	lbu	t9,5129(t3)
    6bb4:	00042400 	sll	a0,a0,0x10
    6bb8:	24450006 	addiu	a1,v0,6
    6bbc:	00197040 	sll	t6,t9,0x1
    6bc0:	00eec021 	addu	t8,a3,t6
    6bc4:	970f000c 	lhu	t7,12(t8)
    6bc8:	ac600004 	sw	zero,4(v1)
    6bcc:	30a500ff 	andi	a1,a1,0xff
    6bd0:	25f90007 	addiu	t9,t7,7
    6bd4:	001970c3 	sra	t6,t9,0x3
    6bd8:	31d801ff 	andi	t8,t6,0x1ff
    6bdc:	00187a40 	sll	t7,t8,0x9
    6be0:	01e1c825 	or	t9,t7,at
    6be4:	ac790000 	sw	t9,0(v1)
    6be8:	8d0302c0 	lw	v1,704(t0)
    6bec:	3c18f200 	lui	t8,0xf200
    6bf0:	258c0004 	addiu	t4,t4,4
    6bf4:	246e0008 	addiu	t6,v1,8
    6bf8:	ad0e02c0 	sw	t6,704(t0)
    6bfc:	ac780000 	sw	t8,0(v1)
    6c00:	94cf0012 	lhu	t7,18(a2)
    6c04:	000a5403 	sra	t2,t2,0x10
    6c08:	29410006 	slti	at,t2,6
    6c0c:	25f9ffff 	addiu	t9,t7,-1
    6c10:	916f1409 	lbu	t7,5129(t3)
    6c14:	00197080 	sll	t6,t9,0x2
    6c18:	31d80fff 	andi	t8,t6,0xfff
    6c1c:	000fc840 	sll	t9,t7,0x1
    6c20:	00f97021 	addu	t6,a3,t9
    6c24:	95cf000c 	lhu	t7,12(t6)
    6c28:	000c6400 	sll	t4,t4,0x10
    6c2c:	000c6403 	sra	t4,t4,0x10
    6c30:	25f9ffff 	addiu	t9,t7,-1
    6c34:	00197080 	sll	t6,t9,0x2
    6c38:	31cf0fff 	andi	t7,t6,0xfff
    6c3c:	000fcb00 	sll	t9,t7,0xc
    6c40:	03197025 	or	t6,t8,t9
    6c44:	ac6e0004 	sw	t6,4(v1)
    6c48:	8d0302c0 	lw	v1,704(t0)
    6c4c:	24580004 	addiu	t8,v0,4
    6c50:	331900ff 	andi	t9,t8,0xff
    6c54:	246f0008 	addiu	t7,v1,8
    6c58:	ad0f02c0 	sw	t7,704(t0)
    6c5c:	00197200 	sll	t6,t9,0x8
    6c60:	008e7825 	or	t7,a0,t6
    6c64:	01e5c025 	or	t8,t7,a1
    6c68:	030dc825 	or	t9,t8,t5
    6c6c:	24580002 	addiu	t8,v0,2
    6c70:	00057200 	sll	t6,a1,0x8
    6c74:	ac790000 	sw	t9,0(v1)
    6c78:	331900ff 	andi	t9,t8,0xff
    6c7c:	008e7825 	or	t7,a0,t6
    6c80:	01f97025 	or	t6,t7,t9
    6c84:	ac6e0004 	sw	t6,4(v1)
    6c88:	1420ff10 	bnez	at,68cc <func_808099C8+0xc44>
    6c8c:	00603025 	move	a2,v1
    6c90:	8d0302c0 	lw	v1,704(t0)
    6c94:	3c0fe700 	lui	t7,0xe700
    6c98:	3c0efd70 	lui	t6,0xfd70
    6c9c:	24780008 	addiu	t8,v1,8
    6ca0:	ad1802c0 	sw	t8,704(t0)
    6ca4:	ac600004 	sw	zero,4(v1)
    6ca8:	ac6f0000 	sw	t7,0(v1)
    6cac:	8d0302c0 	lw	v1,704(t0)
    6cb0:	3c180102 	lui	t8,0x102
    6cb4:	2718b380 	addiu	t8,t8,-19584
    6cb8:	24790008 	addiu	t9,v1,8
    6cbc:	ad1902c0 	sw	t9,704(t0)
    6cc0:	ac780004 	sw	t8,4(v1)
    6cc4:	ac6e0000 	sw	t6,0(v1)
    6cc8:	8d0302c0 	lw	v1,704(t0)
    6ccc:	3c19f570 	lui	t9,0xf570
    6cd0:	3c18e600 	lui	t8,0xe600
    6cd4:	246f0008 	addiu	t7,v1,8
    6cd8:	ad0f02c0 	sw	t7,704(t0)
    6cdc:	ac6d0004 	sw	t5,4(v1)
    6ce0:	ac790000 	sw	t9,0(v1)
    6ce4:	8d0302c0 	lw	v1,704(t0)
    6ce8:	3c19f300 	lui	t9,0xf300
    6cec:	3c013737 	lui	at,0x3737
    6cf0:	246e0008 	addiu	t6,v1,8
    6cf4:	ad0e02c0 	sw	t6,704(t0)
    6cf8:	ac600004 	sw	zero,4(v1)
    6cfc:	ac780000 	sw	t8,0(v1)
    6d00:	8d0302c0 	lw	v1,704(t0)
    6d04:	3c0e0717 	lui	t6,0x717
    6d08:	35cef156 	ori	t6,t6,0xf156
    6d0c:	246f0008 	addiu	t7,v1,8
    6d10:	ad0f02c0 	sw	t7,704(t0)
    6d14:	ac6e0004 	sw	t6,4(v1)
    6d18:	ac790000 	sw	t9,0(v1)
    6d1c:	8d0302c0 	lw	v1,704(t0)
    6d20:	3c0fe700 	lui	t7,0xe700
    6d24:	3c0ef560 	lui	t6,0xf560
    6d28:	24780008 	addiu	t8,v1,8
    6d2c:	ad1802c0 	sw	t8,704(t0)
    6d30:	ac600004 	sw	zero,4(v1)
    6d34:	ac6f0000 	sw	t7,0(v1)
    6d38:	8d0302c0 	lw	v1,704(t0)
    6d3c:	35ce0c00 	ori	t6,t6,0xc00
    6d40:	3c0ff200 	lui	t7,0xf200
    6d44:	24790008 	addiu	t9,v1,8
    6d48:	ad1902c0 	sw	t9,704(t0)
    6d4c:	ac600004 	sw	zero,4(v1)
    6d50:	ac6e0000 	sw	t6,0(v1)
    6d54:	8d0302c0 	lw	v1,704(t0)
    6d58:	3c190017 	lui	t9,0x17
    6d5c:	3739c03c 	ori	t9,t9,0xc03c
    6d60:	24780008 	addiu	t8,v1,8
    6d64:	ad1802c0 	sw	t8,704(t0)
    6d68:	ac790004 	sw	t9,4(v1)
    6d6c:	ac6f0000 	sw	t7,0(v1)
    6d70:	8d0302c0 	lw	v1,704(t0)
    6d74:	34213700 	ori	at,at,0x3700
    6d78:	000c1040 	sll	v0,t4,0x1
    6d7c:	246e0008 	addiu	t6,v1,8
    6d80:	ad0e02c0 	sw	t6,704(t0)
    6d84:	ac700000 	sw	s0,0(v1)
    6d88:	87f84a6e 	lh	t8,19054(ra)
    6d8c:	304400ff 	andi	a0,v0,0xff
    6d90:	00042400 	sll	a0,a0,0x10
    6d94:	330f00ff 	andi	t7,t8,0xff
    6d98:	01e1c825 	or	t9,t7,at
    6d9c:	ac790004 	sw	t9,4(v1)
    6da0:	8d0302c0 	lw	v1,704(t0)
    6da4:	3c182828 	lui	t8,0x2828
    6da8:	371828ff 	ori	t8,t8,0x28ff
    6dac:	246e0008 	addiu	t6,v1,8
    6db0:	ad0e02c0 	sw	t6,704(t0)
    6db4:	ac780004 	sw	t8,4(v1)
    6db8:	ac710000 	sw	s1,0(v1)
    6dbc:	8d0302c0 	lw	v1,704(t0)
    6dc0:	24590004 	addiu	t9,v0,4
    6dc4:	332e00ff 	andi	t6,t9,0xff
    6dc8:	246f0008 	addiu	t7,v1,8
    6dcc:	ad0f02c0 	sw	t7,704(t0)
    6dd0:	000ec200 	sll	t8,t6,0x8
    6dd4:	24450006 	addiu	a1,v0,6
    6dd8:	30a500ff 	andi	a1,a1,0xff
    6ddc:	00987825 	or	t7,a0,t8
    6de0:	01e5c825 	or	t9,t7,a1
    6de4:	032d7025 	or	t6,t9,t5
    6de8:	24590002 	addiu	t9,v0,2
    6dec:	0005c200 	sll	t8,a1,0x8
    6df0:	ac6e0000 	sw	t6,0(v1)
    6df4:	332e00ff 	andi	t6,t9,0xff
    6df8:	00987825 	or	t7,a0,t8
    6dfc:	01eec025 	or	t8,t7,t6
    6e00:	ac780004 	sw	t8,4(v1)
    6e04:	8d0302c0 	lw	v1,704(t0)
    6e08:	3c0fe700 	lui	t7,0xe700
    6e0c:	3c011e1e 	lui	at,0x1e1e
    6e10:	24790008 	addiu	t9,v1,8
    6e14:	ad1902c0 	sw	t9,704(t0)
    6e18:	ac600004 	sw	zero,4(v1)
    6e1c:	ac6f0000 	sw	t7,0(v1)
    6e20:	8d0302c0 	lw	v1,704(t0)
    6e24:	34211e00 	ori	at,at,0x1e00
    6e28:	258c0004 	addiu	t4,t4,4
    6e2c:	246e0008 	addiu	t6,v1,8
    6e30:	ad0e02c0 	sw	t6,704(t0)
    6e34:	ac700000 	sw	s0,0(v1)
    6e38:	87f84a6e 	lh	t8,19054(ra)
    6e3c:	000c6400 	sll	t4,t4,0x10
    6e40:	000c6403 	sra	t4,t4,0x10
    6e44:	331900ff 	andi	t9,t8,0xff
    6e48:	03217825 	or	t7,t9,at
    6e4c:	ac6f0004 	sw	t7,4(v1)
    6e50:	8d0302c0 	lw	v1,704(t0)
    6e54:	241800ff 	li	t8,255
    6e58:	000c1040 	sll	v0,t4,0x1
    6e5c:	246e0008 	addiu	t6,v1,8
    6e60:	ad0e02c0 	sw	t6,704(t0)
    6e64:	ac780004 	sw	t8,4(v1)
    6e68:	ac710000 	sw	s1,0(v1)
    6e6c:	8d0302c0 	lw	v1,704(t0)
    6e70:	244f0004 	addiu	t7,v0,4
    6e74:	31ee00ff 	andi	t6,t7,0xff
    6e78:	304400ff 	andi	a0,v0,0xff
    6e7c:	24790008 	addiu	t9,v1,8
    6e80:	ad1902c0 	sw	t9,704(t0)
    6e84:	00042400 	sll	a0,a0,0x10
    6e88:	000ec200 	sll	t8,t6,0x8
    6e8c:	24450006 	addiu	a1,v0,6
    6e90:	30a500ff 	andi	a1,a1,0xff
    6e94:	0098c825 	or	t9,a0,t8
    6e98:	03257825 	or	t7,t9,a1
    6e9c:	01ed7025 	or	t6,t7,t5
    6ea0:	244f0002 	addiu	t7,v0,2
    6ea4:	0005c200 	sll	t8,a1,0x8
    6ea8:	ac6e0000 	sw	t6,0(v1)
    6eac:	31ee00ff 	andi	t6,t7,0xff
    6eb0:	0098c825 	or	t9,a0,t8
    6eb4:	032ec025 	or	t8,t9,t6
    6eb8:	ac780004 	sw	t8,4(v1)
    6ebc:	8d0302c0 	lw	v1,704(t0)
    6ec0:	3c19e700 	lui	t9,0xe700
    6ec4:	3c0100ff 	lui	at,0xff
    6ec8:	246f0008 	addiu	t7,v1,8
    6ecc:	ad0f02c0 	sw	t7,704(t0)
    6ed0:	ac600004 	sw	zero,4(v1)
    6ed4:	ac790000 	sw	t9,0(v1)
    6ed8:	8d0302c0 	lw	v1,704(t0)
    6edc:	3421ff00 	ori	at,at,0xff00
    6ee0:	246e0008 	addiu	t6,v1,8
    6ee4:	ad0e02c0 	sw	t6,704(t0)
    6ee8:	ac700000 	sw	s0,0(v1)
    6eec:	87f84a6e 	lh	t8,19054(ra)
    6ef0:	330f00ff 	andi	t7,t8,0xff
    6ef4:	01e1c825 	or	t9,t7,at
    6ef8:	ac790004 	sw	t9,4(v1)
    6efc:	8d0302c0 	lw	v1,704(t0)
    6f00:	3c190102 	lui	t9,0x102
    6f04:	2739b280 	addiu	t9,t9,-19840
    6f08:	246e0008 	addiu	t6,v1,8
    6f0c:	ad0e02c0 	sw	t6,704(t0)
    6f10:	ac600004 	sw	zero,4(v1)
    6f14:	ac710000 	sw	s1,0(v1)
    6f18:	8d0302c0 	lw	v1,704(t0)
    6f1c:	3c0ffd70 	lui	t7,0xfd70
    6f20:	24780008 	addiu	t8,v1,8
    6f24:	ad1802c0 	sw	t8,704(t0)
    6f28:	ac790004 	sw	t9,4(v1)
    6f2c:	ac6f0000 	sw	t7,0(v1)
    6f30:	8d0302c0 	lw	v1,704(t0)
    6f34:	3c18f570 	lui	t8,0xf570
    6f38:	3c19e600 	lui	t9,0xe600
    6f3c:	246e0008 	addiu	t6,v1,8
    6f40:	ad0e02c0 	sw	t6,704(t0)
    6f44:	ac6d0004 	sw	t5,4(v1)
    6f48:	ac780000 	sw	t8,0(v1)
    6f4c:	8d0302c0 	lw	v1,704(t0)
    6f50:	3c18f300 	lui	t8,0xf300
    6f54:	246f0008 	addiu	t7,v1,8
    6f58:	ad0f02c0 	sw	t7,704(t0)
    6f5c:	ac600004 	sw	zero,4(v1)
    6f60:	ac790000 	sw	t9,0(v1)
    6f64:	8d0302c0 	lw	v1,704(t0)
    6f68:	3c0f0707 	lui	t7,0x707
    6f6c:	35eff080 	ori	t7,t7,0xf080
    6f70:	246e0008 	addiu	t6,v1,8
    6f74:	ad0e02c0 	sw	t6,704(t0)
    6f78:	ac6f0004 	sw	t7,4(v1)
    6f7c:	ac780000 	sw	t8,0(v1)
    6f80:	8d0302c0 	lw	v1,704(t0)
    6f84:	3c0ee700 	lui	t6,0xe700
    6f88:	3c0ff560 	lui	t7,0xf560
    6f8c:	24790008 	addiu	t9,v1,8
    6f90:	ad1902c0 	sw	t9,704(t0)
    6f94:	ac600004 	sw	zero,4(v1)
    6f98:	ac6e0000 	sw	t6,0(v1)
    6f9c:	8d0302c0 	lw	v1,704(t0)
    6fa0:	35ef2000 	ori	t7,t7,0x2000
    6fa4:	3c0ef200 	lui	t6,0xf200
    6fa8:	24780008 	addiu	t8,v1,8
    6fac:	ad1802c0 	sw	t8,704(t0)
    6fb0:	ac600004 	sw	zero,4(v1)
    6fb4:	ac6f0000 	sw	t7,0(v1)
    6fb8:	8d0302c0 	lw	v1,704(t0)
    6fbc:	3c18003f 	lui	t8,0x3f
    6fc0:	3718c004 	ori	t8,t8,0xc004
    6fc4:	24790008 	addiu	t9,v1,8
    6fc8:	ad1902c0 	sw	t9,704(t0)
    6fcc:	ac780004 	sw	t8,4(v1)
    6fd0:	ac6e0000 	sw	t6,0(v1)
    6fd4:	0c000000 	jal	0 <func_80803D40>
    6fd8:	afa801a4 	sw	t0,420(sp)
    6fdc:	44806000 	mtc1	zero,$f12
    6fe0:	3c010000 	lui	at,0x0
    6fe4:	c42e0000 	lwc1	$f14,0(at)
    6fe8:	44066000 	mfc1	a2,$f12
    6fec:	0c000000 	jal	0 <func_80803D40>
    6ff0:	24070001 	li	a3,1
    6ff4:	8fa801a4 	lw	t0,420(sp)
    6ff8:	3c10da38 	lui	s0,0xda38
    6ffc:	36100003 	ori	s0,s0,0x3
    7000:	8d0302c0 	lw	v1,704(t0)
    7004:	3c050000 	lui	a1,0x0
    7008:	24a50000 	addiu	a1,a1,0
    700c:	246f0008 	addiu	t7,v1,8
    7010:	ad0f02c0 	sw	t7,704(t0)
    7014:	ac700000 	sw	s0,0(v1)
    7018:	8e440000 	lw	a0,0(s2)
    701c:	240603f1 	li	a2,1009
    7020:	afa801a4 	sw	t0,420(sp)
    7024:	0c000000 	jal	0 <func_80803D40>
    7028:	afa30074 	sw	v1,116(sp)
    702c:	8fa70074 	lw	a3,116(sp)
    7030:	8fa801a4 	lw	t0,420(sp)
    7034:	3c110100 	lui	s1,0x100
    7038:	ace20004 	sw	v0,4(a3)
    703c:	8d0302c0 	lw	v1,704(t0)
    7040:	3c0e0000 	lui	t6,0x0
    7044:	25ce0000 	addiu	t6,t6,0
    7048:	24790008 	addiu	t9,v1,8
    704c:	ad1902c0 	sw	t9,704(t0)
    7050:	36314008 	ori	s1,s1,0x4008
    7054:	ac710000 	sw	s1,0(v1)
    7058:	ac6e0004 	sw	t6,4(v1)
    705c:	8d0302c0 	lw	v1,704(t0)
    7060:	3c0f0700 	lui	t7,0x700
    7064:	35ef0406 	ori	t7,t7,0x406
    7068:	24780008 	addiu	t8,v1,8
    706c:	ad1802c0 	sw	t8,704(t0)
    7070:	24190602 	li	t9,1538
    7074:	ac790004 	sw	t9,4(v1)
    7078:	ac6f0000 	sw	t7,0(v1)
    707c:	0c000000 	jal	0 <func_80803D40>
    7080:	afa801a4 	sw	t0,420(sp)
    7084:	0c000000 	jal	0 <func_80803D40>
    7088:	00000000 	nop
    708c:	44806000 	mtc1	zero,$f12
    7090:	3c010000 	lui	at,0x0
    7094:	c42e0000 	lwc1	$f14,0(at)
    7098:	44066000 	mfc1	a2,$f12
    709c:	0c000000 	jal	0 <func_80803D40>
    70a0:	24070001 	li	a3,1
    70a4:	8fa801a4 	lw	t0,420(sp)
    70a8:	3c050000 	lui	a1,0x0
    70ac:	24a50000 	addiu	a1,a1,0
    70b0:	8d0302c0 	lw	v1,704(t0)
    70b4:	240603fd 	li	a2,1021
    70b8:	246e0008 	addiu	t6,v1,8
    70bc:	ad0e02c0 	sw	t6,704(t0)
    70c0:	ac700000 	sw	s0,0(v1)
    70c4:	8e440000 	lw	a0,0(s2)
    70c8:	afa801a4 	sw	t0,420(sp)
    70cc:	0c000000 	jal	0 <func_80803D40>
    70d0:	afa30068 	sw	v1,104(sp)
    70d4:	8fa70068 	lw	a3,104(sp)
    70d8:	8fa801a4 	lw	t0,420(sp)
    70dc:	3c0f0000 	lui	t7,0x0
    70e0:	ace20004 	sw	v0,4(a3)
    70e4:	8d0302c0 	lw	v1,704(t0)
    70e8:	25ef0000 	addiu	t7,t7,0
    70ec:	3c0e0700 	lui	t6,0x700
    70f0:	24780008 	addiu	t8,v1,8
    70f4:	ad1802c0 	sw	t8,704(t0)
    70f8:	ac6f0004 	sw	t7,4(v1)
    70fc:	ac710000 	sw	s1,0(v1)
    7100:	8d0302c0 	lw	v1,704(t0)
    7104:	24180602 	li	t8,1538
    7108:	35ce0406 	ori	t6,t6,0x406
    710c:	24790008 	addiu	t9,v1,8
    7110:	ad1902c0 	sw	t9,704(t0)
    7114:	ac780004 	sw	t8,4(v1)
    7118:	ac6e0000 	sw	t6,0(v1)
    711c:	0c000000 	jal	0 <func_80803D40>
    7120:	afa801a4 	sw	t0,420(sp)
    7124:	0c000000 	jal	0 <func_80803D40>
    7128:	00000000 	nop
    712c:	44806000 	mtc1	zero,$f12
    7130:	3c010000 	lui	at,0x0
    7134:	c42e0000 	lwc1	$f14,0(at)
    7138:	24060000 	li	a2,0
    713c:	0c000000 	jal	0 <func_80803D40>
    7140:	24070001 	li	a3,1
    7144:	8fa801a4 	lw	t0,420(sp)
    7148:	3c050000 	lui	a1,0x0
    714c:	24a50000 	addiu	a1,a1,0
    7150:	8d0302c0 	lw	v1,704(t0)
    7154:	24060409 	li	a2,1033
    7158:	246f0008 	addiu	t7,v1,8
    715c:	ad0f02c0 	sw	t7,704(t0)
    7160:	ac700000 	sw	s0,0(v1)
    7164:	8e440000 	lw	a0,0(s2)
    7168:	afa801a4 	sw	t0,420(sp)
    716c:	0c000000 	jal	0 <func_80803D40>
    7170:	afa3005c 	sw	v1,92(sp)
    7174:	8fa7005c 	lw	a3,92(sp)
    7178:	8fa801a4 	lw	t0,420(sp)
    717c:	3c0e0000 	lui	t6,0x0
    7180:	ace20004 	sw	v0,4(a3)
    7184:	8d0302c0 	lw	v1,704(t0)
    7188:	25ce0000 	addiu	t6,t6,0
    718c:	3c0f0700 	lui	t7,0x700
    7190:	24790008 	addiu	t9,v1,8
    7194:	ad1902c0 	sw	t9,704(t0)
    7198:	ac6e0004 	sw	t6,4(v1)
    719c:	ac710000 	sw	s1,0(v1)
    71a0:	8d0302c0 	lw	v1,704(t0)
    71a4:	24190602 	li	t9,1538
    71a8:	35ef0406 	ori	t7,t7,0x406
    71ac:	24780008 	addiu	t8,v1,8
    71b0:	ad1802c0 	sw	t8,704(t0)
    71b4:	ac790004 	sw	t9,4(v1)
    71b8:	0c000000 	jal	0 <func_80803D40>
    71bc:	ac6f0000 	sw	t7,0(v1)
    71c0:	3c060000 	lui	a2,0x0
    71c4:	24c60000 	addiu	a2,a2,0
    71c8:	27a40194 	addiu	a0,sp,404
    71cc:	8e450000 	lw	a1,0(s2)
    71d0:	0c000000 	jal	0 <func_80803D40>
    71d4:	24070410 	li	a3,1040
    71d8:	8fbf0024 	lw	ra,36(sp)
    71dc:	8fb00018 	lw	s0,24(sp)
    71e0:	8fb1001c 	lw	s1,28(sp)
    71e4:	8fb20020 	lw	s2,32(sp)
    71e8:	03e00008 	jr	ra
    71ec:	27bd01b8 	addiu	sp,sp,440

000071f0 <func_8080AF30>:
    71f0:	27bdffe8 	addiu	sp,sp,-24
    71f4:	afbf0014 	sw	ra,20(sp)
    71f8:	0c000000 	jal	0 <func_80803D40>
    71fc:	00000000 	nop
    7200:	8fbf0014 	lw	ra,20(sp)
    7204:	27bd0018 	addiu	sp,sp,24
    7208:	03e00008 	jr	ra
    720c:	00000000 	nop

00007210 <func_8080AF50>:
    7210:	27bdffc0 	addiu	sp,sp,-64
    7214:	44800000 	mtc1	zero,$f0
    7218:	afa7004c 	sw	a3,76(sp)
    721c:	3c013f80 	lui	at,0x3f80
    7220:	44856000 	mtc1	a1,$f12
    7224:	44867000 	mtc1	a2,$f14
    7228:	c7a4004c 	lwc1	$f4,76(sp)
    722c:	44813000 	mtc1	at,$f6
    7230:	afa40040 	sw	a0,64(sp)
    7234:	afbf0014 	sw	ra,20(sp)
    7238:	248400b8 	addiu	a0,a0,184
    723c:	afa40018 	sw	a0,24(sp)
    7240:	27a60028 	addiu	a2,sp,40
    7244:	27a50034 	addiu	a1,sp,52
    7248:	27a7001c 	addiu	a3,sp,28
    724c:	e7a00030 	swc1	$f0,48(sp)
    7250:	e7a0002c 	swc1	$f0,44(sp)
    7254:	e7a00028 	swc1	$f0,40(sp)
    7258:	e7a00024 	swc1	$f0,36(sp)
    725c:	e7a0001c 	swc1	$f0,28(sp)
    7260:	e7ac0034 	swc1	$f12,52(sp)
    7264:	e7ae0038 	swc1	$f14,56(sp)
    7268:	e7a4003c 	swc1	$f4,60(sp)
    726c:	0c000000 	jal	0 <func_80803D40>
    7270:	e7a60020 	swc1	$f6,32(sp)
    7274:	8fa40018 	lw	a0,24(sp)
    7278:	0c000000 	jal	0 <func_80803D40>
    727c:	2405007f 	li	a1,127
    7280:	8fbf0014 	lw	ra,20(sp)
    7284:	27bd0040 	addiu	sp,sp,64
    7288:	03e00008 	jr	ra
    728c:	00000000 	nop

00007290 <func_8080AFD0>:
    7290:	afa60008 	sw	a2,8(sp)
    7294:	afa7000c 	sw	a3,12(sp)
    7298:	00073c00 	sll	a3,a3,0x10
    729c:	00063400 	sll	a2,a2,0x10
    72a0:	00063403 	sra	a2,a2,0x10
    72a4:	00073c03 	sra	a3,a3,0x10
    72a8:	00c70019 	multu	a2,a3
    72ac:	00801025 	move	v0,a0
    72b0:	24840008 	addiu	a0,a0,8
    72b4:	3c0efd70 	lui	t6,0xfd70
    72b8:	ac4e0000 	sw	t6,0(v0)
    72bc:	00801825 	move	v1,a0
    72c0:	ac450004 	sw	a1,4(v0)
    72c4:	3c020700 	lui	v0,0x700
    72c8:	3c0ff570 	lui	t7,0xf570
    72cc:	ac6f0000 	sw	t7,0(v1)
    72d0:	ac620004 	sw	v0,4(v1)
    72d4:	24840008 	addiu	a0,a0,8
    72d8:	00801825 	move	v1,a0
    72dc:	00002812 	mflo	a1
    72e0:	24a50001 	addiu	a1,a1,1
    72e4:	00052843 	sra	a1,a1,0x1
    72e8:	3c18e600 	lui	t8,0xe600
    72ec:	ac780000 	sw	t8,0(v1)
    72f0:	24a5ffff 	addiu	a1,a1,-1
    72f4:	ac600004 	sw	zero,4(v1)
    72f8:	24840008 	addiu	a0,a0,8
    72fc:	00801825 	move	v1,a0
    7300:	28a107ff 	slti	at,a1,2047
    7304:	3c19f300 	lui	t9,0xf300
    7308:	ac790000 	sw	t9,0(v1)
    730c:	10200003 	beqz	at,731c <func_8080AFD0+0x8c>
    7310:	24840008 	addiu	a0,a0,8
    7314:	10000002 	b	7320 <func_8080AFD0+0x90>
    7318:	00a04025 	move	t0,a1
    731c:	240807ff 	li	t0,2047
    7320:	00c02825 	move	a1,a2
    7324:	04a10003 	bgez	a1,7334 <func_8080AFD0+0xa4>
    7328:	000548c3 	sra	t1,a1,0x3
    732c:	24a10007 	addiu	at,a1,7
    7330:	000148c3 	sra	t1,at,0x3
    7334:	1d200003 	bgtz	t1,7344 <func_8080AFD0+0xb4>
    7338:	31180fff 	andi	t8,t0,0xfff
    733c:	10000002 	b	7348 <func_8080AFD0+0xb8>
    7340:	240a0001 	li	t2,1
    7344:	01205025 	move	t2,t1
    7348:	1d200003 	bgtz	t1,7358 <func_8080AFD0+0xc8>
    734c:	254c07ff 	addiu	t4,t2,2047
    7350:	10000002 	b	735c <func_8080AFD0+0xcc>
    7354:	240b0001 	li	t3,1
    7358:	01205825 	move	t3,t1
    735c:	018b001a 	div	zero,t4,t3
    7360:	00006812 	mflo	t5
    7364:	31ae0fff 	andi	t6,t5,0xfff
    7368:	15600002 	bnez	t3,7374 <func_8080AFD0+0xe4>
    736c:	00000000 	nop
    7370:	0007000d 	break	0x7
    7374:	2401ffff 	li	at,-1
    7378:	15610004 	bne	t3,at,738c <func_8080AFD0+0xfc>
    737c:	3c018000 	lui	at,0x8000
    7380:	15810002 	bne	t4,at,738c <func_8080AFD0+0xfc>
    7384:	00000000 	nop
    7388:	0006000d 	break	0x6
    738c:	01c27825 	or	t7,t6,v0
    7390:	0018cb00 	sll	t9,t8,0xc
    7394:	01f96025 	or	t4,t7,t9
    7398:	ac6c0004 	sw	t4,4(v1)
    739c:	00801825 	move	v1,a0
    73a0:	24ae0007 	addiu	t6,a1,7
    73a4:	000ec0c3 	sra	t8,t6,0x3
    73a8:	3c0de700 	lui	t5,0xe700
    73ac:	ac6d0000 	sw	t5,0(v1)
    73b0:	330f01ff 	andi	t7,t8,0x1ff
    73b4:	ac600004 	sw	zero,4(v1)
    73b8:	24840008 	addiu	a0,a0,8
    73bc:	00801825 	move	v1,a0
    73c0:	000fca40 	sll	t9,t7,0x9
    73c4:	3c01f568 	lui	at,0xf568
    73c8:	03216025 	or	t4,t9,at
    73cc:	ac6c0000 	sw	t4,0(v1)
    73d0:	ac600004 	sw	zero,4(v1)
    73d4:	24840008 	addiu	a0,a0,8
    73d8:	00801825 	move	v1,a0
    73dc:	3c0df200 	lui	t5,0xf200
    73e0:	24ceffff 	addiu	t6,a2,-1
    73e4:	000ec080 	sll	t8,t6,0x2
    73e8:	ac6d0000 	sw	t5,0(v1)
    73ec:	24ecffff 	addiu	t4,a3,-1
    73f0:	000c6880 	sll	t5,t4,0x2
    73f4:	330f0fff 	andi	t7,t8,0xfff
    73f8:	000fcb00 	sll	t9,t7,0xc
    73fc:	31ae0fff 	andi	t6,t5,0xfff
    7400:	032ec025 	or	t8,t9,t6
    7404:	ac780004 	sw	t8,4(v1)
    7408:	87a50012 	lh	a1,18(sp)
    740c:	24840008 	addiu	a0,a0,8
    7410:	00801825 	move	v1,a0
    7414:	00052840 	sll	a1,a1,0x1
    7418:	24af0004 	addiu	t7,a1,4
    741c:	31ec00ff 	andi	t4,t7,0xff
    7420:	30a600ff 	andi	a2,a1,0xff
    7424:	00063400 	sll	a2,a2,0x10
    7428:	000c6a00 	sll	t5,t4,0x8
    742c:	24a70006 	addiu	a3,a1,6
    7430:	30e700ff 	andi	a3,a3,0xff
    7434:	00cdc825 	or	t9,a2,t5
    7438:	03277025 	or	t6,t9,a3
    743c:	24ad0002 	addiu	t5,a1,2
    7440:	00077a00 	sll	t7,a3,0x8
    7444:	00cf6025 	or	t4,a2,t7
    7448:	31b900ff 	andi	t9,t5,0xff
    744c:	01c2c025 	or	t8,t6,v0
    7450:	01997025 	or	t6,t4,t9
    7454:	24840008 	addiu	a0,a0,8
    7458:	ac6e0004 	sw	t6,4(v1)
    745c:	ac780000 	sw	t8,0(v1)
    7460:	03e00008 	jr	ra
    7464:	00801025 	move	v0,a0

00007468 <func_8080B1A8>:
    7468:	27bdffe8 	addiu	sp,sp,-24
    746c:	3c0e0002 	lui	t6,0x2
    7470:	afbf0014 	sw	ra,20(sp)
    7474:	01c47021 	addu	t6,t6,a0
    7478:	85ceca3c 	lh	t6,-13764(t6)
    747c:	00803025 	move	a2,a0
    7480:	24020001 	li	v0,1
    7484:	15c00013 	bnez	t6,74d4 <func_8080B1A8+0x6c>
    7488:	3c010002 	lui	at,0x2
    748c:	00240821 	addu	at,at,a0
    7490:	a422ca3c 	sh	v0,-13764(at)
    7494:	3c010002 	lui	at,0x2
    7498:	00240821 	addu	at,at,a0
    749c:	a420ca3e 	sh	zero,-13762(at)
    74a0:	3c010002 	lui	at,0x2
    74a4:	00240821 	addu	at,at,a0
    74a8:	a422ca66 	sh	v0,-13722(at)
    74ac:	3c040000 	lui	a0,0x0
    74b0:	24840000 	addiu	a0,a0,0
    74b4:	0c000000 	jal	0 <func_80803D40>
    74b8:	afa60018 	sw	a2,24(sp)
    74bc:	8fa40018 	lw	a0,24(sp)
    74c0:	0c000000 	jal	0 <func_80803D40>
    74c4:	248501e0 	addiu	a1,a0,480
    74c8:	3c040000 	lui	a0,0x0
    74cc:	0c000000 	jal	0 <func_80803D40>
    74d0:	24840000 	addiu	a0,a0,0
    74d4:	8fbf0014 	lw	ra,20(sp)
    74d8:	27bd0018 	addiu	sp,sp,24
    74dc:	03e00008 	jr	ra
    74e0:	00000000 	nop

000074e4 <L8080B224>:
    74e4:	03e00008 	jr	ra
    74e8:	afa40000 	sw	a0,0(sp)

000074ec <func_8080B22C>:
    74ec:	27bdffe8 	addiu	sp,sp,-24
    74f0:	3c0a0000 	lui	t2,0x0
    74f4:	254a0000 	addiu	t2,t2,0
    74f8:	8d4f0000 	lw	t7,0(t2)
    74fc:	3c090001 	lui	t1,0x1
    7500:	35298000 	ori	t1,t1,0x8000
    7504:	afb30014 	sw	s3,20(sp)
    7508:	afb20010 	sw	s2,16(sp)
    750c:	afb1000c 	sw	s1,12(sp)
    7510:	afb00008 	sw	s0,8(sp)
    7514:	00891821 	addu	v1,a0,t1
    7518:	846e4a6e 	lh	t6,19054(v1)
    751c:	85f80f16 	lh	t8,3862(t7)
    7520:	846f4a72 	lh	t7,19058(v1)
    7524:	3c010002 	lui	at,0x2
    7528:	01d8c821 	addu	t9,t6,t8
    752c:	a4794a6e 	sh	t9,19054(v1)
    7530:	8d4e0000 	lw	t6,0(t2)
    7534:	00240821 	addu	at,at,a0
    7538:	3c0c0000 	lui	t4,0x0
    753c:	85d80f18 	lh	t8,3864(t6)
    7540:	258c0000 	addiu	t4,t4,0
    7544:	2410004c 	li	s0,76
    7548:	01f8c821 	addu	t9,t7,t8
    754c:	a439ca72 	sh	t9,-13710(at)
    7550:	24110044 	li	s1,68
    7554:	24120041 	li	s2,65
    7558:	241300ff 	li	s3,255
    755c:	00002825 	move	a1,zero
    7560:	248201e0 	addiu	v0,a0,480
    7564:	240d0045 	li	t5,69
    7568:	240b005a 	li	t3,90
    756c:	846f4a72 	lh	t7,19058(v1)
    7570:	00053040 	sll	a2,a1,0x1
    7574:	00867021 	addu	t6,a0,a2
    7578:	01c93821 	addu	a3,t6,t1
    757c:	a4ef4a74 	sh	t7,19060(a3)
    7580:	0186c021 	addu	t8,t4,a2
    7584:	97190000 	lhu	t9,0(t8)
    7588:	8c4e0000 	lw	t6,0(v0)
    758c:	24a50001 	addiu	a1,a1,1
    7590:	00052c00 	sll	a1,a1,0x10
    7594:	032e4021 	addu	t0,t9,t6
    7598:	910f001c 	lbu	t7,28(t0)
    759c:	00052c03 	sra	a1,a1,0x10
    75a0:	516f0011 	beql	t3,t7,75e8 <func_8080B22C+0xfc>
    75a4:	84664a72 	lh	a2,19058(v1)
    75a8:	9118001d 	lbu	t8,29(t0)
    75ac:	51b8000e 	beql	t5,t8,75e8 <func_8080B22C+0xfc>
    75b0:	84664a72 	lh	a2,19058(v1)
    75b4:	9119001e 	lbu	t9,30(t0)
    75b8:	5219000b 	beql	s0,t9,75e8 <func_8080B22C+0xfc>
    75bc:	84664a72 	lh	a2,19058(v1)
    75c0:	910e001f 	lbu	t6,31(t0)
    75c4:	522e0008 	beql	s1,t6,75e8 <func_8080B22C+0xfc>
    75c8:	84664a72 	lh	a2,19058(v1)
    75cc:	910f0020 	lbu	t7,32(t0)
    75d0:	524f0005 	beql	s2,t7,75e8 <func_8080B22C+0xfc>
    75d4:	84664a72 	lh	a2,19058(v1)
    75d8:	91180021 	lbu	t8,33(t0)
    75dc:	5578000f 	bnel	t3,t8,761c <func_8080B22C+0x130>
    75e0:	28a10003 	slti	at,a1,3
    75e4:	84664a72 	lh	a2,19058(v1)
    75e8:	84f94a86 	lh	t9,19078(a3)
    75ec:	a4e64a80 	sh	a2,19072(a3)
    75f0:	a4e64a7a 	sh	a2,19066(a3)
    75f4:	8d4e0000 	lw	t6,0(t2)
    75f8:	85cf0f16 	lh	t7,3862(t6)
    75fc:	032fc021 	addu	t8,t9,t7
    7600:	a4f84a86 	sh	t8,19078(a3)
    7604:	84ee4a86 	lh	t6,19078(a3)
    7608:	29c100ff 	slti	at,t6,255
    760c:	54200003 	bnezl	at,761c <func_8080B22C+0x130>
    7610:	28a10003 	slti	at,a1,3
    7614:	a4f34a86 	sh	s3,19078(a3)
    7618:	28a10003 	slti	at,a1,3
    761c:	5420ffd4 	bnezl	at,7570 <func_8080B22C+0x84>
    7620:	846f4a72 	lh	t7,19058(v1)
    7624:	84624a72 	lh	v0,19058(v1)
    7628:	3c010002 	lui	at,0x2
    762c:	00240821 	addu	at,at,a0
    7630:	a422ca9a 	sh	v0,-13670(at)
    7634:	a4624a92 	sh	v0,19090(v1)
    7638:	a4624a94 	sh	v0,19092(v1)
    763c:	8fb30014 	lw	s3,20(sp)
    7640:	8fb20010 	lw	s2,16(sp)
    7644:	8fb1000c 	lw	s1,12(sp)
    7648:	8fb00008 	lw	s0,8(sp)
    764c:	03e00008 	jr	ra
    7650:	27bd0018 	addiu	sp,sp,24

00007654 <func_8080B394>:
    7654:	afa40000 	sw	a0,0(sp)
    7658:	a4a00000 	sh	zero,0(a1)
    765c:	a4c00000 	sh	zero,0(a2)
    7660:	a4e40000 	sh	a0,0(a3)
    7664:	84e20000 	lh	v0,0(a3)
    7668:	244eff9c 	addiu	t6,v0,-100
    766c:	05c20009 	bltzl	t6,7694 <func_8080B394+0x40>
    7670:	2449fff6 	addiu	t1,v0,-10
    7674:	84af0000 	lh	t7,0(a1)
    7678:	25f80001 	addiu	t8,t7,1
    767c:	a4b80000 	sh	t8,0(a1)
    7680:	84f90000 	lh	t9,0(a3)
    7684:	2728ff9c 	addiu	t0,t9,-100
    7688:	1000fff6 	b	7664 <func_8080B394+0x10>
    768c:	a4e80000 	sh	t0,0(a3)
    7690:	2449fff6 	addiu	t1,v0,-10
    7694:	0520000b 	bltz	t1,76c4 <func_8080B394+0x70>
    7698:	00000000 	nop
    769c:	84ca0000 	lh	t2,0(a2)
    76a0:	254b0001 	addiu	t3,t2,1
    76a4:	a4cb0000 	sh	t3,0(a2)
    76a8:	84ec0000 	lh	t4,0(a3)
    76ac:	258dfff6 	addiu	t5,t4,-10
    76b0:	a4ed0000 	sh	t5,0(a3)
    76b4:	84e20000 	lh	v0,0(a3)
    76b8:	2449fff6 	addiu	t1,v0,-10
    76bc:	0523fff8 	bgezl	t1,76a0 <func_8080B394+0x4c>
    76c0:	84ca0000 	lh	t2,0(a2)
    76c4:	03e00008 	jr	ra
    76c8:	00000000 	nop

000076cc <func_8080B40C>:
    76cc:	27bdffe8 	addiu	sp,sp,-24
    76d0:	afbf0014 	sw	ra,20(sp)
    76d4:	0c000000 	jal	0 <func_80803D40>
    76d8:	afa40018 	sw	a0,24(sp)
    76dc:	3c030000 	lui	v1,0x0
    76e0:	24630000 	addiu	v1,v1,0
    76e4:	846e0000 	lh	t6,0(v1)
    76e8:	8fa40018 	lw	a0,24(sp)
    76ec:	3c010001 	lui	at,0x1
    76f0:	34218000 	ori	at,at,0x8000
    76f4:	25cfffd8 	addiu	t7,t6,-40
    76f8:	a46f0000 	sh	t7,0(v1)
    76fc:	00811021 	addu	v0,a0,at
    7700:	84584ac0 	lh	t8,19136(v0)
    7704:	3c010002 	lui	at,0x2
    7708:	00240821 	addu	at,at,a0
    770c:	2719ffec 	addiu	t9,t8,-20
    7710:	a439cac0 	sh	t9,-13632(at)
    7714:	84484ac0 	lh	t0,19136(v0)
    7718:	2409ffa2 	li	t1,-94
    771c:	240a0001 	li	t2,1
    7720:	2901ffa3 	slti	at,t0,-93
    7724:	10200007 	beqz	at,7744 <func_8080B40C+0x78>
    7728:	3c010002 	lui	at,0x2
    772c:	00240821 	addu	at,at,a0
    7730:	a429cac0 	sh	t1,-13632(at)
    7734:	3c010002 	lui	at,0x2
    7738:	00240821 	addu	at,at,a0
    773c:	a42aca3e 	sh	t2,-13762(at)
    7740:	a4600000 	sh	zero,0(v1)
    7744:	8fbf0014 	lw	ra,20(sp)
    7748:	27bd0018 	addiu	sp,sp,24
    774c:	03e00008 	jr	ra
    7750:	00000000 	nop

00007754 <func_8080B494>:
    7754:	3c0f0000 	lui	t7,0x0
    7758:	8def0000 	lw	t7,0(t7)
    775c:	27bdffe0 	addiu	sp,sp,-32
    7760:	3c010001 	lui	at,0x1
    7764:	afbf0014 	sw	ra,20(sp)
    7768:	34218000 	ori	at,at,0x8000
    776c:	00811021 	addu	v0,a0,at
    7770:	844e4a9e 	lh	t6,19102(v0)
    7774:	85f80f16 	lh	t8,3862(t7)
    7778:	3c010002 	lui	at,0x2
    777c:	00240821 	addu	at,at,a0
    7780:	01d8c821 	addu	t9,t6,t8
    7784:	a439ca9e 	sh	t9,-13666(at)
    7788:	afa40020 	sw	a0,32(sp)
    778c:	0c000000 	jal	0 <func_80803D40>
    7790:	afa20018 	sw	v0,24(sp)
    7794:	8fa20018 	lw	v0,24(sp)
    7798:	8fa40020 	lw	a0,32(sp)
    779c:	240300ff 	li	v1,255
    77a0:	84484a6e 	lh	t0,19054(v0)
    77a4:	240900c8 	li	t1,200
    77a8:	240a0002 	li	t2,2
    77ac:	290100ff 	slti	at,t0,255
    77b0:	1420000a 	bnez	at,77dc <func_8080B494+0x88>
    77b4:	3c010002 	lui	at,0x2
    77b8:	a4434a6e 	sh	v1,19054(v0)
    77bc:	00240821 	addu	at,at,a0
    77c0:	a423ca9e 	sh	v1,-13666(at)
    77c4:	3c010002 	lui	at,0x2
    77c8:	00240821 	addu	at,at,a0
    77cc:	a429ca72 	sh	t1,-13710(at)
    77d0:	3c010002 	lui	at,0x2
    77d4:	00240821 	addu	at,at,a0
    77d8:	a42aca3e 	sh	t2,-13762(at)
    77dc:	8fbf0014 	lw	ra,20(sp)
    77e0:	27bd0020 	addiu	sp,sp,32
    77e4:	03e00008 	jr	ra
    77e8:	00000000 	nop

000077ec <func_8080B52C>:
    77ec:	27bdffb8 	addiu	sp,sp,-72
    77f0:	afbf002c 	sw	ra,44(sp)
    77f4:	afb00028 	sw	s0,40(sp)
    77f8:	948e0020 	lhu	t6,32(a0)
    77fc:	2401efff 	li	at,-4097
    7800:	00808025 	move	s0,a0
    7804:	01c17827 	nor	t7,t6,at
    7808:	51e00008 	beqzl	t7,782c <func_8080B52C+0x40>
    780c:	3c010001 	lui	at,0x1
    7810:	94980020 	lhu	t8,32(a0)
    7814:	3c01ffff 	lui	at,0xffff
    7818:	34217fff 	ori	at,at,0x7fff
    781c:	0301c827 	nor	t9,t8,at
    7820:	17200102 	bnez	t9,7c2c <func_8080B52C+0x440>
    7824:	3c010001 	lui	at,0x1
    7828:	3c010001 	lui	at,0x1
    782c:	34218000 	ori	at,at,0x8000
    7830:	02011821 	addu	v1,s0,at
    7834:	84654a38 	lh	a1,19000(v1)
    7838:	3c090000 	lui	t1,0x0
    783c:	25290000 	addiu	t1,t1,0
    7840:	28a10003 	slti	at,a1,3
    7844:	102000a5 	beqz	at,7adc <func_8080B52C+0x2f0>
    7848:	260801e0 	addiu	t0,s0,480
    784c:	00056840 	sll	t5,a1,0x1
    7850:	012d7021 	addu	t6,t1,t5
    7854:	95cf0000 	lhu	t7,0(t6)
    7858:	8d180000 	lw	t8,0(t0)
    785c:	3c040000 	lui	a0,0x0
    7860:	24840000 	addiu	a0,a0,0
    7864:	01f81021 	addu	v0,t7,t8
    7868:	9059001e 	lbu	t9,30(v0)
    786c:	9046001c 	lbu	a2,28(v0)
    7870:	9047001d 	lbu	a3,29(v0)
    7874:	afb90010 	sw	t9,16(sp)
    7878:	904d001f 	lbu	t5,31(v0)
    787c:	afad0014 	sw	t5,20(sp)
    7880:	904e0020 	lbu	t6,32(v0)
    7884:	afae0018 	sw	t6,24(sp)
    7888:	904f0021 	lbu	t7,33(v0)
    788c:	afa80034 	sw	t0,52(sp)
    7890:	afa30030 	sw	v1,48(sp)
    7894:	0c000000 	jal	0 <func_80803D40>
    7898:	afaf001c 	sw	t7,28(sp)
    789c:	8fa30030 	lw	v1,48(sp)
    78a0:	8fa80034 	lw	t0,52(sp)
    78a4:	3c090000 	lui	t1,0x0
    78a8:	84644a38 	lh	a0,19000(v1)
    78ac:	25290000 	addiu	t1,t1,0
    78b0:	8d0d0000 	lw	t5,0(t0)
    78b4:	00042040 	sll	a0,a0,0x1
    78b8:	0124c021 	addu	t8,t1,a0
    78bc:	97190000 	lhu	t9,0(t8)
    78c0:	2405005a 	li	a1,90
    78c4:	032d1021 	addu	v0,t9,t5
    78c8:	904e001c 	lbu	t6,28(v0)
    78cc:	50ae004f 	beql	a1,t6,7a0c <func_8080B52C+0x220>
    78d0:	0204c821 	addu	t9,s0,a0
    78d4:	904f001d 	lbu	t7,29(v0)
    78d8:	24080045 	li	t0,69
    78dc:	510f004b 	beql	t0,t7,7a0c <func_8080B52C+0x220>
    78e0:	0204c821 	addu	t9,s0,a0
    78e4:	9058001e 	lbu	t8,30(v0)
    78e8:	240a004c 	li	t2,76
    78ec:	51580047 	beql	t2,t8,7a0c <func_8080B52C+0x220>
    78f0:	0204c821 	addu	t9,s0,a0
    78f4:	9059001f 	lbu	t9,31(v0)
    78f8:	240b0044 	li	t3,68
    78fc:	51790043 	beql	t3,t9,7a0c <func_8080B52C+0x220>
    7900:	0204c821 	addu	t9,s0,a0
    7904:	904d0020 	lbu	t5,32(v0)
    7908:	240c0041 	li	t4,65
    790c:	518d003f 	beql	t4,t5,7a0c <func_8080B52C+0x220>
    7910:	0204c821 	addu	t9,s0,a0
    7914:	904e0021 	lbu	t6,33(v0)
    7918:	3c070000 	lui	a3,0x0
    791c:	24e70000 	addiu	a3,a3,0
    7920:	10ae0039 	beq	a1,t6,7a08 <func_8080B52C+0x21c>
    7924:	24060004 	li	a2,4
    7928:	3c0f0000 	lui	t7,0x0
    792c:	25ef0000 	addiu	t7,t7,0
    7930:	3c050000 	lui	a1,0x0
    7934:	24a50000 	addiu	a1,a1,0
    7938:	afaf0014 	sw	t7,20(sp)
    793c:	2404483b 	li	a0,18491
    7940:	afa70010 	sw	a3,16(sp)
    7944:	0c000000 	jal	0 <func_80803D40>
    7948:	afa30030 	sw	v1,48(sp)
    794c:	3c010002 	lui	at,0x2
    7950:	8fa30030 	lw	v1,48(sp)
    7954:	00300821 	addu	at,at,s0
    7958:	24180020 	li	t8,32
    795c:	a438ca3e 	sh	t8,-13762(at)
    7960:	3c010002 	lui	at,0x2
    7964:	00300821 	addu	at,at,s0
    7968:	24190063 	li	t9,99
    796c:	a439cac8 	sh	t9,-13624(at)
    7970:	3c010002 	lui	at,0x2
    7974:	00300821 	addu	at,at,s0
    7978:	240d0002 	li	t5,2
    797c:	a42dcaca 	sh	t5,-13622(at)
    7980:	3c010002 	lui	at,0x2
    7984:	00300821 	addu	at,at,s0
    7988:	a420cad0 	sh	zero,-13616(at)
    798c:	3c010002 	lui	at,0x2
    7990:	00300821 	addu	at,at,s0
    7994:	a420cad2 	sh	zero,-13614(at)
    7998:	3c010002 	lui	at,0x2
    799c:	00300821 	addu	at,at,s0
    79a0:	a420cace 	sh	zero,-13618(at)
    79a4:	3c010002 	lui	at,0x2
    79a8:	00300821 	addu	at,at,s0
    79ac:	a420cacc 	sh	zero,-13620(at)
    79b0:	3c010002 	lui	at,0x2
    79b4:	00300821 	addu	at,at,s0
    79b8:	a420cad4 	sh	zero,-13612(at)
    79bc:	3c010002 	lui	at,0x2
    79c0:	00300821 	addu	at,at,s0
    79c4:	240e0078 	li	t6,120
    79c8:	a42ecabe 	sh	t6,-13634(at)
    79cc:	3c010002 	lui	at,0x2
    79d0:	00300821 	addu	at,at,s0
    79d4:	a420ca9c 	sh	zero,-13668(at)
    79d8:	846f4a38 	lh	t7,19000(v1)
    79dc:	3c010001 	lui	at,0x1
    79e0:	3421c9fc 	ori	at,at,0xc9fc
    79e4:	000fc0c0 	sll	t8,t7,0x3
    79e8:	02182021 	addu	a0,s0,t8
    79ec:	3c050000 	lui	a1,0x0
    79f0:	24a50000 	addiu	a1,a1,0
    79f4:	00812021 	addu	a0,a0,at
    79f8:	0c000000 	jal	0 <func_80803D40>
    79fc:	24060008 	li	a2,8
    7a00:	100001b5 	b	80d8 <func_8080B52C+0x8ec>
    7a04:	8fbf002c 	lw	ra,44(sp)
    7a08:	0204c821 	addu	t9,s0,a0
    7a0c:	3c020002 	lui	v0,0x2
    7a10:	00591021 	addu	v0,v0,t9
    7a14:	8442ca28 	lh	v0,-13784(v0)
    7a18:	906d49f4 	lbu	t5,18932(v1)
    7a1c:	3c070000 	lui	a3,0x0
    7a20:	24e70000 	addiu	a3,a3,0
    7a24:	15a2001f 	bne	t5,v0,7aa4 <func_8080B52C+0x2b8>
    7a28:	2404483b 	li	a0,18491
    7a2c:	3c0e0000 	lui	t6,0x0
    7a30:	25ce0000 	addiu	t6,t6,0
    7a34:	3c050000 	lui	a1,0x0
    7a38:	24a50000 	addiu	a1,a1,0
    7a3c:	afae0014 	sw	t6,20(sp)
    7a40:	24060004 	li	a2,4
    7a44:	afa70010 	sw	a3,16(sp)
    7a48:	0c000000 	jal	0 <func_80803D40>
    7a4c:	afa30030 	sw	v1,48(sp)
    7a50:	3c010002 	lui	at,0x2
    7a54:	8fa30030 	lw	v1,48(sp)
    7a58:	00300821 	addu	at,at,s0
    7a5c:	240f0008 	li	t7,8
    7a60:	a42fca50 	sh	t7,-13744(at)
    7a64:	3c010002 	lui	at,0x2
    7a68:	00300821 	addu	at,at,s0
    7a6c:	a420ca44 	sh	zero,-13756(at)
    7a70:	84784a38 	lh	t8,19000(v1)
    7a74:	3c010002 	lui	at,0x2
    7a78:	00300821 	addu	at,at,s0
    7a7c:	a438ca46 	sh	t8,-13754(at)
    7a80:	3c010002 	lui	at,0x2
    7a84:	00300821 	addu	at,at,s0
    7a88:	24190002 	li	t9,2
    7a8c:	a439ca3c 	sh	t9,-13764(at)
    7a90:	3c010002 	lui	at,0x2
    7a94:	00300821 	addu	at,at,s0
    7a98:	240d0001 	li	t5,1
    7a9c:	1000018d 	b	80d4 <func_8080B52C+0x8e8>
    7aa0:	a42dca66 	sh	t5,-13722(at)
    7aa4:	1440018b 	bnez	v0,80d4 <func_8080B52C+0x8e8>
    7aa8:	3c070000 	lui	a3,0x0
    7aac:	3c0e0000 	lui	t6,0x0
    7ab0:	24e70000 	addiu	a3,a3,0
    7ab4:	25ce0000 	addiu	t6,t6,0
    7ab8:	3c050000 	lui	a1,0x0
    7abc:	24a50000 	addiu	a1,a1,0
    7ac0:	afae0014 	sw	t6,20(sp)
    7ac4:	afa70010 	sw	a3,16(sp)
    7ac8:	2404483d 	li	a0,18493
    7acc:	0c000000 	jal	0 <func_80803D40>
    7ad0:	24060004 	li	a2,4
    7ad4:	10000180 	b	80d8 <func_8080B52C+0x8ec>
    7ad8:	8fbf002c 	lw	ra,44(sp)
    7adc:	846f4a60 	lh	t7,19040(v1)
    7ae0:	2401ffff 	li	at,-1
    7ae4:	3c070000 	lui	a3,0x0
    7ae8:	15e10045 	bne	t7,at,7c00 <func_8080B52C+0x414>
    7aec:	24e70000 	addiu	a3,a3,0
    7af0:	3c070000 	lui	a3,0x0
    7af4:	3c180000 	lui	t8,0x0
    7af8:	24e70000 	addiu	a3,a3,0
    7afc:	27180000 	addiu	t8,t8,0
    7b00:	3c050000 	lui	a1,0x0
    7b04:	24a50000 	addiu	a1,a1,0
    7b08:	afb80014 	sw	t8,20(sp)
    7b0c:	afa70010 	sw	a3,16(sp)
    7b10:	2404483b 	li	a0,18491
    7b14:	24060004 	li	a2,4
    7b18:	0c000000 	jal	0 <func_80803D40>
    7b1c:	afa30030 	sw	v1,48(sp)
    7b20:	8fa30030 	lw	v1,48(sp)
    7b24:	3c010002 	lui	at,0x2
    7b28:	00300821 	addu	at,at,s0
    7b2c:	84794a3e 	lh	t9,19006(v1)
    7b30:	24020003 	li	v0,3
    7b34:	240d0002 	li	t5,2
    7b38:	a439ca40 	sh	t9,-13760(at)
    7b3c:	84664a38 	lh	a2,19000(v1)
    7b40:	24010004 	li	at,4
    7b44:	14460008 	bne	v0,a2,7b68 <func_8080B52C+0x37c>
    7b48:	00000000 	nop
    7b4c:	3c010002 	lui	at,0x2
    7b50:	00300821 	addu	at,at,s0
    7b54:	a422ca3e 	sh	v0,-13762(at)
    7b58:	3c010002 	lui	at,0x2
    7b5c:	00300821 	addu	at,at,s0
    7b60:	10000022 	b	7bec <func_8080B52C+0x400>
    7b64:	a42dca66 	sh	t5,-13722(at)
    7b68:	14c1000a 	bne	a2,at,7b94 <func_8080B52C+0x3a8>
    7b6c:	24180024 	li	t8,36
    7b70:	3c010002 	lui	at,0x2
    7b74:	00300821 	addu	at,at,s0
    7b78:	240e0014 	li	t6,20
    7b7c:	a42eca3e 	sh	t6,-13762(at)
    7b80:	3c010002 	lui	at,0x2
    7b84:	00300821 	addu	at,at,s0
    7b88:	240f0006 	li	t7,6
    7b8c:	10000017 	b	7bec <func_8080B52C+0x400>
    7b90:	a42fca66 	sh	t7,-13722(at)
    7b94:	3c010002 	lui	at,0x2
    7b98:	00300821 	addu	at,at,s0
    7b9c:	a438ca3e 	sh	t8,-13762(at)
    7ba0:	3c010002 	lui	at,0x2
    7ba4:	00300821 	addu	at,at,s0
    7ba8:	a420cac8 	sh	zero,-13624(at)
    7bac:	3c010002 	lui	at,0x2
    7bb0:	00300821 	addu	at,at,s0
    7bb4:	a420cad0 	sh	zero,-13616(at)
    7bb8:	3c010002 	lui	at,0x2
    7bbc:	00300821 	addu	at,at,s0
    7bc0:	a420cad2 	sh	zero,-13614(at)
    7bc4:	3c010002 	lui	at,0x2
    7bc8:	00300821 	addu	at,at,s0
    7bcc:	a420cacc 	sh	zero,-13620(at)
    7bd0:	3c010002 	lui	at,0x2
    7bd4:	00300821 	addu	at,at,s0
    7bd8:	a420cad4 	sh	zero,-13612(at)
    7bdc:	3c010002 	lui	at,0x2
    7be0:	00300821 	addu	at,at,s0
    7be4:	24190078 	li	t9,120
    7be8:	a439cabe 	sh	t9,-13634(at)
    7bec:	3c010002 	lui	at,0x2
    7bf0:	00300821 	addu	at,at,s0
    7bf4:	240d0008 	li	t5,8
    7bf8:	10000136 	b	80d4 <func_8080B52C+0x8e8>
    7bfc:	a42dca50 	sh	t5,-13744(at)
    7c00:	3c0e0000 	lui	t6,0x0
    7c04:	25ce0000 	addiu	t6,t6,0
    7c08:	3c050000 	lui	a1,0x0
    7c0c:	24a50000 	addiu	a1,a1,0
    7c10:	afae0014 	sw	t6,20(sp)
    7c14:	2404483d 	li	a0,18493
    7c18:	24060004 	li	a2,4
    7c1c:	0c000000 	jal	0 <func_80803D40>
    7c20:	afa70010 	sw	a3,16(sp)
    7c24:	1000012c 	b	80d8 <func_8080B52C+0x8ec>
    7c28:	8fbf002c 	lw	ra,44(sp)
    7c2c:	34218000 	ori	at,at,0x8000
    7c30:	02011821 	addu	v1,s0,at
    7c34:	84624abc 	lh	v0,19132(v1)
    7c38:	3c070000 	lui	a3,0x0
    7c3c:	24e70000 	addiu	a3,a3,0
    7c40:	04400003 	bltz	v0,7c50 <func_8080B52C+0x464>
    7c44:	00022023 	negu	a0,v0
    7c48:	10000001 	b	7c50 <func_8080B52C+0x464>
    7c4c:	00402025 	move	a0,v0
    7c50:	2881001f 	slti	at,a0,31
    7c54:	14200026 	bnez	at,7cf0 <func_8080B52C+0x504>
    7c58:	24044839 	li	a0,18489
    7c5c:	3c0f0000 	lui	t7,0x0
    7c60:	25ef0000 	addiu	t7,t7,0
    7c64:	3c050000 	lui	a1,0x0
    7c68:	24a50000 	addiu	a1,a1,0
    7c6c:	afaf0014 	sw	t7,20(sp)
    7c70:	24060004 	li	a2,4
    7c74:	afa70010 	sw	a3,16(sp)
    7c78:	0c000000 	jal	0 <func_80803D40>
    7c7c:	afa30030 	sw	v1,48(sp)
    7c80:	8fa30030 	lw	v1,48(sp)
    7c84:	84784abc 	lh	t8,19132(v1)
    7c88:	2b01001f 	slti	at,t8,31
    7c8c:	5420000e 	bnezl	at,7cc8 <func_8080B52C+0x4dc>
    7c90:	84784a38 	lh	t8,19000(v1)
    7c94:	84794a38 	lh	t9,19000(v1)
    7c98:	3c010002 	lui	at,0x2
    7c9c:	00300821 	addu	at,at,s0
    7ca0:	272dffff 	addiu	t5,t9,-1
    7ca4:	a42dca38 	sh	t5,-13768(at)
    7ca8:	846e4a38 	lh	t6,19000(v1)
    7cac:	3c010002 	lui	at,0x2
    7cb0:	00300821 	addu	at,at,s0
    7cb4:	05c1000e 	bgez	t6,7cf0 <func_8080B52C+0x504>
    7cb8:	240f0005 	li	t7,5
    7cbc:	1000000c 	b	7cf0 <func_8080B52C+0x504>
    7cc0:	a42fca38 	sh	t7,-13768(at)
    7cc4:	84784a38 	lh	t8,19000(v1)
    7cc8:	3c010002 	lui	at,0x2
    7ccc:	00300821 	addu	at,at,s0
    7cd0:	27190001 	addiu	t9,t8,1
    7cd4:	a439ca38 	sh	t9,-13768(at)
    7cd8:	846d4a38 	lh	t5,19000(v1)
    7cdc:	29a10006 	slti	at,t5,6
    7ce0:	14200003 	bnez	at,7cf0 <func_8080B52C+0x504>
    7ce4:	3c010002 	lui	at,0x2
    7ce8:	00300821 	addu	at,at,s0
    7cec:	a420ca38 	sh	zero,-13768(at)
    7cf0:	84664a38 	lh	a2,19000(v1)
    7cf4:	24020003 	li	v0,3
    7cf8:	3c090000 	lui	t1,0x0
    7cfc:	1446009b 	bne	v0,a2,7f6c <func_8080B52C+0x780>
    7d00:	24010004 	li	at,4
    7d04:	25290000 	addiu	t1,t1,0
    7d08:	952e0000 	lhu	t6,0(t1)
    7d0c:	8e0401e0 	lw	a0,480(s0)
    7d10:	2405005a 	li	a1,90
    7d14:	01c41821 	addu	v1,t6,a0
    7d18:	9067001c 	lbu	a3,28(v1)
    7d1c:	50a70047 	beql	a1,a3,7e3c <func_8080B52C+0x650>
    7d20:	24080045 	li	t0,69
    7d24:	906f001d 	lbu	t7,29(v1)
    7d28:	24080045 	li	t0,69
    7d2c:	510f0043 	beql	t0,t7,7e3c <func_8080B52C+0x650>
    7d30:	24080045 	li	t0,69
    7d34:	9078001e 	lbu	t8,30(v1)
    7d38:	240a004c 	li	t2,76
    7d3c:	5158003f 	beql	t2,t8,7e3c <func_8080B52C+0x650>
    7d40:	24080045 	li	t0,69
    7d44:	9079001f 	lbu	t9,31(v1)
    7d48:	240b0044 	li	t3,68
    7d4c:	5179003b 	beql	t3,t9,7e3c <func_8080B52C+0x650>
    7d50:	24080045 	li	t0,69
    7d54:	906d0020 	lbu	t5,32(v1)
    7d58:	240c0041 	li	t4,65
    7d5c:	518d0037 	beql	t4,t5,7e3c <func_8080B52C+0x650>
    7d60:	24080045 	li	t0,69
    7d64:	906e0021 	lbu	t6,33(v1)
    7d68:	50ae0034 	beql	a1,t6,7e3c <func_8080B52C+0x650>
    7d6c:	24080045 	li	t0,69
    7d70:	952f0002 	lhu	t7,2(t1)
    7d74:	01e41021 	addu	v0,t7,a0
    7d78:	9058001c 	lbu	t8,28(v0)
    7d7c:	50b8002f 	beql	a1,t8,7e3c <func_8080B52C+0x650>
    7d80:	24080045 	li	t0,69
    7d84:	9059001d 	lbu	t9,29(v0)
    7d88:	5119002c 	beql	t0,t9,7e3c <func_8080B52C+0x650>
    7d8c:	24080045 	li	t0,69
    7d90:	904d001e 	lbu	t5,30(v0)
    7d94:	514d0029 	beql	t2,t5,7e3c <func_8080B52C+0x650>
    7d98:	24080045 	li	t0,69
    7d9c:	904e001f 	lbu	t6,31(v0)
    7da0:	516e0026 	beql	t3,t6,7e3c <func_8080B52C+0x650>
    7da4:	24080045 	li	t0,69
    7da8:	904f0020 	lbu	t7,32(v0)
    7dac:	518f0023 	beql	t4,t7,7e3c <func_8080B52C+0x650>
    7db0:	24080045 	li	t0,69
    7db4:	90580021 	lbu	t8,33(v0)
    7db8:	50b80020 	beql	a1,t8,7e3c <func_8080B52C+0x650>
    7dbc:	24080045 	li	t0,69
    7dc0:	95390004 	lhu	t9,4(t1)
    7dc4:	03241021 	addu	v0,t9,a0
    7dc8:	904d001c 	lbu	t5,28(v0)
    7dcc:	50ad001b 	beql	a1,t5,7e3c <func_8080B52C+0x650>
    7dd0:	24080045 	li	t0,69
    7dd4:	904e001d 	lbu	t6,29(v0)
    7dd8:	510e0018 	beql	t0,t6,7e3c <func_8080B52C+0x650>
    7ddc:	24080045 	li	t0,69
    7de0:	904f001e 	lbu	t7,30(v0)
    7de4:	514f0015 	beql	t2,t7,7e3c <func_8080B52C+0x650>
    7de8:	24080045 	li	t0,69
    7dec:	9058001f 	lbu	t8,31(v0)
    7df0:	51780012 	beql	t3,t8,7e3c <func_8080B52C+0x650>
    7df4:	24080045 	li	t0,69
    7df8:	90590020 	lbu	t9,32(v0)
    7dfc:	5199000f 	beql	t4,t9,7e3c <func_8080B52C+0x650>
    7e00:	24080045 	li	t0,69
    7e04:	904d0021 	lbu	t5,33(v0)
    7e08:	3c010002 	lui	at,0x2
    7e0c:	00300821 	addu	at,at,s0
    7e10:	10ad0009 	beq	a1,t5,7e38 <func_8080B52C+0x64c>
    7e14:	240e00ff 	li	t6,255
    7e18:	a426ca62 	sh	a2,-13726(at)
    7e1c:	3c010002 	lui	at,0x2
    7e20:	00300821 	addu	at,at,s0
    7e24:	a420ca60 	sh	zero,-13728(at)
    7e28:	3c010002 	lui	at,0x2
    7e2c:	00300821 	addu	at,at,s0
    7e30:	100000a8 	b	80d4 <func_8080B52C+0x8e8>
    7e34:	a42ecaa0 	sh	t6,-13664(at)
    7e38:	24080045 	li	t0,69
    7e3c:	240a004c 	li	t2,76
    7e40:	240b0044 	li	t3,68
    7e44:	10a70010 	beq	a1,a3,7e88 <func_8080B52C+0x69c>
    7e48:	240c0041 	li	t4,65
    7e4c:	906f001d 	lbu	t7,29(v1)
    7e50:	510f000e 	beql	t0,t7,7e8c <func_8080B52C+0x6a0>
    7e54:	952f0002 	lhu	t7,2(t1)
    7e58:	9078001e 	lbu	t8,30(v1)
    7e5c:	5158000b 	beql	t2,t8,7e8c <func_8080B52C+0x6a0>
    7e60:	952f0002 	lhu	t7,2(t1)
    7e64:	9079001f 	lbu	t9,31(v1)
    7e68:	51790008 	beql	t3,t9,7e8c <func_8080B52C+0x6a0>
    7e6c:	952f0002 	lhu	t7,2(t1)
    7e70:	906d0020 	lbu	t5,32(v1)
    7e74:	518d0005 	beql	t4,t5,7e8c <func_8080B52C+0x6a0>
    7e78:	952f0002 	lhu	t7,2(t1)
    7e7c:	906e0021 	lbu	t6,33(v1)
    7e80:	54ae0036 	bnel	a1,t6,7f5c <func_8080B52C+0x770>
    7e84:	3c010002 	lui	at,0x2
    7e88:	952f0002 	lhu	t7,2(t1)
    7e8c:	01e41021 	addu	v0,t7,a0
    7e90:	9058001c 	lbu	t8,28(v0)
    7e94:	50b80011 	beql	a1,t8,7edc <func_8080B52C+0x6f0>
    7e98:	95390004 	lhu	t9,4(t1)
    7e9c:	9059001d 	lbu	t9,29(v0)
    7ea0:	5119000e 	beql	t0,t9,7edc <func_8080B52C+0x6f0>
    7ea4:	95390004 	lhu	t9,4(t1)
    7ea8:	904d001e 	lbu	t5,30(v0)
    7eac:	514d000b 	beql	t2,t5,7edc <func_8080B52C+0x6f0>
    7eb0:	95390004 	lhu	t9,4(t1)
    7eb4:	904e001f 	lbu	t6,31(v0)
    7eb8:	516e0008 	beql	t3,t6,7edc <func_8080B52C+0x6f0>
    7ebc:	95390004 	lhu	t9,4(t1)
    7ec0:	904f0020 	lbu	t7,32(v0)
    7ec4:	518f0005 	beql	t4,t7,7edc <func_8080B52C+0x6f0>
    7ec8:	95390004 	lhu	t9,4(t1)
    7ecc:	90580021 	lbu	t8,33(v0)
    7ed0:	54b80022 	bnel	a1,t8,7f5c <func_8080B52C+0x770>
    7ed4:	3c010002 	lui	at,0x2
    7ed8:	95390004 	lhu	t9,4(t1)
    7edc:	3c010002 	lui	at,0x2
    7ee0:	00300821 	addu	at,at,s0
    7ee4:	03241021 	addu	v0,t9,a0
    7ee8:	904d001c 	lbu	t5,28(v0)
    7eec:	50ad0011 	beql	a1,t5,7f34 <func_8080B52C+0x748>
    7ef0:	a426ca62 	sh	a2,-13726(at)
    7ef4:	904e001d 	lbu	t6,29(v0)
    7ef8:	510e000e 	beql	t0,t6,7f34 <func_8080B52C+0x748>
    7efc:	a426ca62 	sh	a2,-13726(at)
    7f00:	904f001e 	lbu	t7,30(v0)
    7f04:	514f000b 	beql	t2,t7,7f34 <func_8080B52C+0x748>
    7f08:	a426ca62 	sh	a2,-13726(at)
    7f0c:	9058001f 	lbu	t8,31(v0)
    7f10:	51780008 	beql	t3,t8,7f34 <func_8080B52C+0x748>
    7f14:	a426ca62 	sh	a2,-13726(at)
    7f18:	90590020 	lbu	t9,32(v0)
    7f1c:	51990005 	beql	t4,t9,7f34 <func_8080B52C+0x748>
    7f20:	a426ca62 	sh	a2,-13726(at)
    7f24:	904d0021 	lbu	t5,33(v0)
    7f28:	54ad000c 	bnel	a1,t5,7f5c <func_8080B52C+0x770>
    7f2c:	3c010002 	lui	at,0x2
    7f30:	a426ca62 	sh	a2,-13726(at)
    7f34:	3c010002 	lui	at,0x2
    7f38:	00300821 	addu	at,at,s0
    7f3c:	240e0002 	li	t6,2
    7f40:	a42eca60 	sh	t6,-13728(at)
    7f44:	3c010002 	lui	at,0x2
    7f48:	00300821 	addu	at,at,s0
    7f4c:	240f00ff 	li	t7,255
    7f50:	10000060 	b	80d4 <func_8080B52C+0x8e8>
    7f54:	a42fcaa0 	sh	t7,-13664(at)
    7f58:	3c010002 	lui	at,0x2
    7f5c:	00300821 	addu	at,at,s0
    7f60:	2418ffff 	li	t8,-1
    7f64:	1000005b 	b	80d4 <func_8080B52C+0x8e8>
    7f68:	a438ca60 	sh	t8,-13728(at)
    7f6c:	14c10056 	bne	a2,at,80c8 <func_8080B52C+0x8dc>
    7f70:	2418ffff 	li	t8,-1
    7f74:	3c090000 	lui	t1,0x0
    7f78:	25290000 	addiu	t1,t1,0
    7f7c:	95390000 	lhu	t9,0(t1)
    7f80:	8e0401e0 	lw	a0,480(s0)
    7f84:	2405005a 	li	a1,90
    7f88:	3c010002 	lui	at,0x2
    7f8c:	03241821 	addu	v1,t9,a0
    7f90:	906d001c 	lbu	t5,28(v1)
    7f94:	00300821 	addu	at,at,s0
    7f98:	50ad0049 	beql	a1,t5,80c0 <func_8080B52C+0x8d4>
    7f9c:	240fffff 	li	t7,-1
    7fa0:	906e001d 	lbu	t6,29(v1)
    7fa4:	24080045 	li	t0,69
    7fa8:	510e0045 	beql	t0,t6,80c0 <func_8080B52C+0x8d4>
    7fac:	240fffff 	li	t7,-1
    7fb0:	906f001e 	lbu	t7,30(v1)
    7fb4:	240a004c 	li	t2,76
    7fb8:	514f0041 	beql	t2,t7,80c0 <func_8080B52C+0x8d4>
    7fbc:	240fffff 	li	t7,-1
    7fc0:	9078001f 	lbu	t8,31(v1)
    7fc4:	240b0044 	li	t3,68
    7fc8:	5178003d 	beql	t3,t8,80c0 <func_8080B52C+0x8d4>
    7fcc:	240fffff 	li	t7,-1
    7fd0:	90790020 	lbu	t9,32(v1)
    7fd4:	240c0041 	li	t4,65
    7fd8:	51990039 	beql	t4,t9,80c0 <func_8080B52C+0x8d4>
    7fdc:	240fffff 	li	t7,-1
    7fe0:	906d0021 	lbu	t5,33(v1)
    7fe4:	50ad0036 	beql	a1,t5,80c0 <func_8080B52C+0x8d4>
    7fe8:	240fffff 	li	t7,-1
    7fec:	952e0002 	lhu	t6,2(t1)
    7ff0:	01c41021 	addu	v0,t6,a0
    7ff4:	904f001c 	lbu	t7,28(v0)
    7ff8:	50af0031 	beql	a1,t7,80c0 <func_8080B52C+0x8d4>
    7ffc:	240fffff 	li	t7,-1
    8000:	9058001d 	lbu	t8,29(v0)
    8004:	5118002e 	beql	t0,t8,80c0 <func_8080B52C+0x8d4>
    8008:	240fffff 	li	t7,-1
    800c:	9059001e 	lbu	t9,30(v0)
    8010:	5159002b 	beql	t2,t9,80c0 <func_8080B52C+0x8d4>
    8014:	240fffff 	li	t7,-1
    8018:	904d001f 	lbu	t5,31(v0)
    801c:	516d0028 	beql	t3,t5,80c0 <func_8080B52C+0x8d4>
    8020:	240fffff 	li	t7,-1
    8024:	904e0020 	lbu	t6,32(v0)
    8028:	518e0025 	beql	t4,t6,80c0 <func_8080B52C+0x8d4>
    802c:	240fffff 	li	t7,-1
    8030:	904f0021 	lbu	t7,33(v0)
    8034:	50af0022 	beql	a1,t7,80c0 <func_8080B52C+0x8d4>
    8038:	240fffff 	li	t7,-1
    803c:	95380004 	lhu	t8,4(t1)
    8040:	03041021 	addu	v0,t8,a0
    8044:	9059001c 	lbu	t9,28(v0)
    8048:	50b9001d 	beql	a1,t9,80c0 <func_8080B52C+0x8d4>
    804c:	240fffff 	li	t7,-1
    8050:	904d001d 	lbu	t5,29(v0)
    8054:	510d001a 	beql	t0,t5,80c0 <func_8080B52C+0x8d4>
    8058:	240fffff 	li	t7,-1
    805c:	904e001e 	lbu	t6,30(v0)
    8060:	514e0017 	beql	t2,t6,80c0 <func_8080B52C+0x8d4>
    8064:	240fffff 	li	t7,-1
    8068:	904f001f 	lbu	t7,31(v0)
    806c:	516f0014 	beql	t3,t7,80c0 <func_8080B52C+0x8d4>
    8070:	240fffff 	li	t7,-1
    8074:	90580020 	lbu	t8,32(v0)
    8078:	51980011 	beql	t4,t8,80c0 <func_8080B52C+0x8d4>
    807c:	240fffff 	li	t7,-1
    8080:	90590021 	lbu	t9,33(v0)
    8084:	240d0001 	li	t5,1
    8088:	240e00ff 	li	t6,255
    808c:	50b9000c 	beql	a1,t9,80c0 <func_8080B52C+0x8d4>
    8090:	240fffff 	li	t7,-1
    8094:	3c010002 	lui	at,0x2
    8098:	00300821 	addu	at,at,s0
    809c:	a426ca62 	sh	a2,-13726(at)
    80a0:	3c010002 	lui	at,0x2
    80a4:	00300821 	addu	at,at,s0
    80a8:	a42dca60 	sh	t5,-13728(at)
    80ac:	3c010002 	lui	at,0x2
    80b0:	00300821 	addu	at,at,s0
    80b4:	10000007 	b	80d4 <func_8080B52C+0x8e8>
    80b8:	a42ecaa0 	sh	t6,-13664(at)
    80bc:	240fffff 	li	t7,-1
    80c0:	10000004 	b	80d4 <func_8080B52C+0x8e8>
    80c4:	a42fca60 	sh	t7,-13728(at)
    80c8:	3c010002 	lui	at,0x2
    80cc:	00300821 	addu	at,at,s0
    80d0:	a438ca60 	sh	t8,-13728(at)
    80d4:	8fbf002c 	lw	ra,44(sp)
    80d8:	8fb00028 	lw	s0,40(sp)
    80dc:	27bd0048 	addiu	sp,sp,72
    80e0:	03e00008 	jr	ra
    80e4:	00000000 	nop

000080e8 <L8080BE28>:
    80e8:	03e00008 	jr	ra
    80ec:	afa40000 	sw	a0,0(sp)

000080f0 <func_8080BE30>:
    80f0:	3c030000 	lui	v1,0x0
    80f4:	24630000 	addiu	v1,v1,0
    80f8:	8c620000 	lw	v0,0(v1)
    80fc:	240100fe 	li	at,254
    8100:	3c080002 	lui	t0,0x2
    8104:	844e0b26 	lh	t6,2854(v0)
    8108:	01044021 	addu	t0,t0,a0
    810c:	25cf0002 	addiu	t7,t6,2
    8110:	a44f0b26 	sh	t7,2854(v0)
    8114:	8c780000 	lw	t8,0(v1)
    8118:	87190b26 	lh	t9,2854(t8)
    811c:	17210007 	bne	t9,at,813c <func_8080BE30+0x4c>
    8120:	00000000 	nop
    8124:	8508ca42 	lh	t0,-13758(t0)
    8128:	3c010002 	lui	at,0x2
    812c:	00240821 	addu	at,at,a0
    8130:	a428ca3e 	sh	t0,-13762(at)
    8134:	8c690000 	lw	t1,0(v1)
    8138:	a5200b26 	sh	zero,2854(t1)
    813c:	03e00008 	jr	ra
    8140:	00000000 	nop

00008144 <func_8080BE84>:
    8144:	3c0e0000 	lui	t6,0x0
    8148:	8dce0000 	lw	t6,0(t6)
    814c:	3c01439d 	lui	at,0x439d
    8150:	44810000 	mtc1	at,$f0
    8154:	85cf0f34 	lh	t7,3892(t6)
    8158:	3c010001 	lui	at,0x1
    815c:	34218000 	ori	at,at,0x8000
    8160:	448f3000 	mtc1	t7,$f6
    8164:	00811021 	addu	v0,a0,at
    8168:	c4444ac4 	lwc1	$f4,19140(v0)
    816c:	46803220 	cvt.s.w	$f8,$f6
    8170:	3c010002 	lui	at,0x2
    8174:	00240821 	addu	at,at,a0
    8178:	24180022 	li	t8,34
    817c:	46082280 	add.s	$f10,$f4,$f8
    8180:	e42acac4 	swc1	$f10,-13628(at)
    8184:	c4504ac4 	lwc1	$f16,19140(v0)
    8188:	3c010002 	lui	at,0x2
    818c:	00240821 	addu	at,at,a0
    8190:	4610003e 	c.le.s	$f0,$f16
    8194:	00000000 	nop
    8198:	45000005 	bc1f	81b0 <func_8080BE84+0x6c>
    819c:	00000000 	nop
    81a0:	e420cac4 	swc1	$f0,-13628(at)
    81a4:	3c010002 	lui	at,0x2
    81a8:	00240821 	addu	at,at,a0
    81ac:	a438ca3e 	sh	t8,-13762(at)
    81b0:	03e00008 	jr	ra
    81b4:	00000000 	nop

000081b8 <func_8080BEF8>:
    81b8:	3c0e0000 	lui	t6,0x0
    81bc:	8dce0000 	lw	t6,0(t6)
    81c0:	3c01439d 	lui	at,0x439d
    81c4:	44810000 	mtc1	at,$f0
    81c8:	85cf0f34 	lh	t7,3892(t6)
    81cc:	3c010001 	lui	at,0x1
    81d0:	34218000 	ori	at,at,0x8000
    81d4:	448f3000 	mtc1	t7,$f6
    81d8:	00811021 	addu	v0,a0,at
    81dc:	c4444ac4 	lwc1	$f4,19140(v0)
    81e0:	46803220 	cvt.s.w	$f8,$f6
    81e4:	3c010002 	lui	at,0x2
    81e8:	00240821 	addu	at,at,a0
    81ec:	24180026 	li	t8,38
    81f0:	46082280 	add.s	$f10,$f4,$f8
    81f4:	e42acac4 	swc1	$f10,-13628(at)
    81f8:	c4504ac4 	lwc1	$f16,19140(v0)
    81fc:	3c010002 	lui	at,0x2
    8200:	00240821 	addu	at,at,a0
    8204:	4610003e 	c.le.s	$f0,$f16
    8208:	00000000 	nop
    820c:	45000005 	bc1f	8224 <func_8080BEF8+0x6c>
    8210:	00000000 	nop
    8214:	e420cac4 	swc1	$f0,-13628(at)
    8218:	3c010002 	lui	at,0x2
    821c:	00240821 	addu	at,at,a0
    8220:	a438ca3e 	sh	t8,-13762(at)
    8224:	03e00008 	jr	ra
    8228:	00000000 	nop

0000822c <func_8080BF6C>:
    822c:	3c0e0000 	lui	t6,0x0
    8230:	8dce0000 	lw	t6,0(t6)
    8234:	3c010001 	lui	at,0x1
    8238:	34218000 	ori	at,at,0x8000
    823c:	85cf0f34 	lh	t7,3892(t6)
    8240:	00811021 	addu	v0,a0,at
    8244:	c4444ac4 	lwc1	$f4,19140(v0)
    8248:	448f3000 	mtc1	t7,$f6
    824c:	3c010002 	lui	at,0x2
    8250:	00240821 	addu	at,at,a0
    8254:	46803220 	cvt.s.w	$f8,$f6
    8258:	46082280 	add.s	$f10,$f4,$f8
    825c:	e42acac4 	swc1	$f10,-13628(at)
    8260:	3c01441d 	lui	at,0x441d
    8264:	44819000 	mtc1	at,$f18
    8268:	c4504ac4 	lwc1	$f16,19140(v0)
    826c:	3c010002 	lui	at,0x2
    8270:	4610903e 	c.le.s	$f18,$f16
    8274:	00000000 	nop
    8278:	45000008 	bc1f	829c <func_8080BF6C+0x70>
    827c:	00000000 	nop
    8280:	44803000 	mtc1	zero,$f6
    8284:	00240821 	addu	at,at,a0
    8288:	24180002 	li	t8,2
    828c:	e426cac4 	swc1	$f6,-13628(at)
    8290:	3c010002 	lui	at,0x2
    8294:	00240821 	addu	at,at,a0
    8298:	a438ca3e 	sh	t8,-13762(at)
    829c:	03e00008 	jr	ra
    82a0:	00000000 	nop

000082a4 <func_8080BFE4>:
    82a4:	27bdffd8 	addiu	sp,sp,-40
    82a8:	afbf0024 	sw	ra,36(sp)
    82ac:	afb10020 	sw	s1,32(sp)
    82b0:	afb0001c 	sw	s0,28(sp)
    82b4:	948e0050 	lhu	t6,80(a0)
    82b8:	2401fdff 	li	at,-513
    82bc:	00808825 	move	s1,a0
    82c0:	01c17827 	nor	t7,t6,at
    82c4:	15e00026 	bnez	t7,8360 <func_8080BFE4+0xbc>
    82c8:	3c020000 	lui	v0,0x0
    82cc:	24420000 	addiu	v0,v0,0
    82d0:	a0401409 	sb	zero,5129(v0)
    82d4:	249001e0 	addiu	s0,a0,480
    82d8:	8e190000 	lw	t9,0(s0)
    82dc:	3c090000 	lui	t1,0x0
    82e0:	3c040800 	lui	a0,0x800
    82e4:	a3200002 	sb	zero,2(t9)
    82e8:	a1200000 	sb	zero,0(t1)
    82ec:	8e050000 	lw	a1,0(s0)
    82f0:	24060003 	li	a2,3
    82f4:	0c000000 	jal	0 <func_80803D40>
    82f8:	24070001 	li	a3,1
    82fc:	8e020000 	lw	v0,0(s0)
    8300:	3c040000 	lui	a0,0x0
    8304:	24840000 	addiu	a0,a0,0
    8308:	904a0003 	lbu	t2,3(v0)
    830c:	90450000 	lbu	a1,0(v0)
    8310:	90460001 	lbu	a2,1(v0)
    8314:	90470002 	lbu	a3,2(v0)
    8318:	0c000000 	jal	0 <func_80803D40>
    831c:	afaa0010 	sw	t2,16(sp)
    8320:	3c040800 	lui	a0,0x800
    8324:	8e050000 	lw	a1,0(s0)
    8328:	34068000 	li	a2,0x8000
    832c:	0c000000 	jal	0 <func_80803D40>
    8330:	00003825 	move	a3,zero
    8334:	8e020000 	lw	v0,0(s0)
    8338:	3c040000 	lui	a0,0x0
    833c:	24840000 	addiu	a0,a0,0
    8340:	904b0003 	lbu	t3,3(v0)
    8344:	90450000 	lbu	a1,0(v0)
    8348:	90460001 	lbu	a2,1(v0)
    834c:	90470002 	lbu	a3,2(v0)
    8350:	0c000000 	jal	0 <func_80803D40>
    8354:	afab0010 	sw	t3,16(sp)
    8358:	10000055 	b	84b0 <func_8080BFE4+0x20c>
    835c:	3c010001 	lui	at,0x1
    8360:	96220050 	lhu	v0,80(s1)
    8364:	2401f7ff 	li	at,-2049
    8368:	3c0f8000 	lui	t7,0x8000
    836c:	00416027 	nor	t4,v0,at
    8370:	15800027 	bnez	t4,8410 <func_8080BFE4+0x16c>
    8374:	2401feff 	li	at,-257
    8378:	3c020000 	lui	v0,0x0
    837c:	24420000 	addiu	v0,v0,0
    8380:	240d0001 	li	t5,1
    8384:	a04d1409 	sb	t5,5129(v0)
    8388:	263001e0 	addiu	s0,s1,480
    838c:	8e0e0000 	lw	t6,0(s0)
    8390:	3c040800 	lui	a0,0x800
    8394:	24060003 	li	a2,3
    8398:	a1cd0002 	sb	t5,2(t6)
    839c:	a1ed0002 	sb	t5,2(t7)
    83a0:	8e050000 	lw	a1,0(s0)
    83a4:	0c000000 	jal	0 <func_80803D40>
    83a8:	24070001 	li	a3,1
    83ac:	8e020000 	lw	v0,0(s0)
    83b0:	3c040000 	lui	a0,0x0
    83b4:	24840000 	addiu	a0,a0,0
    83b8:	90580003 	lbu	t8,3(v0)
    83bc:	90450000 	lbu	a1,0(v0)
    83c0:	90460001 	lbu	a2,1(v0)
    83c4:	90470002 	lbu	a3,2(v0)
    83c8:	0c000000 	jal	0 <func_80803D40>
    83cc:	afb80010 	sw	t8,16(sp)
    83d0:	3c040800 	lui	a0,0x800
    83d4:	8e050000 	lw	a1,0(s0)
    83d8:	34068000 	li	a2,0x8000
    83dc:	0c000000 	jal	0 <func_80803D40>
    83e0:	00003825 	move	a3,zero
    83e4:	8e020000 	lw	v0,0(s0)
    83e8:	3c040000 	lui	a0,0x0
    83ec:	24840000 	addiu	a0,a0,0
    83f0:	90590003 	lbu	t9,3(v0)
    83f4:	90450000 	lbu	a1,0(v0)
    83f8:	90460001 	lbu	a2,1(v0)
    83fc:	90470002 	lbu	a3,2(v0)
    8400:	0c000000 	jal	0 <func_80803D40>
    8404:	afb90010 	sw	t9,16(sp)
    8408:	10000029 	b	84b0 <func_8080BFE4+0x20c>
    840c:	3c010001 	lui	at,0x1
    8410:	00414827 	nor	t1,v0,at
    8414:	15200025 	bnez	t1,84ac <func_8080BFE4+0x208>
    8418:	3c020000 	lui	v0,0x0
    841c:	24420000 	addiu	v0,v0,0
    8420:	240a0002 	li	t2,2
    8424:	a04a1409 	sb	t2,5129(v0)
    8428:	263001e0 	addiu	s0,s1,480
    842c:	8e0b0000 	lw	t3,0(s0)
    8430:	3c0c0000 	lui	t4,0x0
    8434:	3c040800 	lui	a0,0x800
    8438:	a16a0002 	sb	t2,2(t3)
    843c:	a18a0000 	sb	t2,0(t4)
    8440:	8e050000 	lw	a1,0(s0)
    8444:	24060003 	li	a2,3
    8448:	0c000000 	jal	0 <func_80803D40>
    844c:	24070001 	li	a3,1
    8450:	8e020000 	lw	v0,0(s0)
    8454:	3c040000 	lui	a0,0x0
    8458:	24840000 	addiu	a0,a0,0
    845c:	904d0003 	lbu	t5,3(v0)
    8460:	90450000 	lbu	a1,0(v0)
    8464:	90460001 	lbu	a2,1(v0)
    8468:	90470002 	lbu	a3,2(v0)
    846c:	0c000000 	jal	0 <func_80803D40>
    8470:	afad0010 	sw	t5,16(sp)
    8474:	3c040800 	lui	a0,0x800
    8478:	8e050000 	lw	a1,0(s0)
    847c:	34068000 	li	a2,0x8000
    8480:	0c000000 	jal	0 <func_80803D40>
    8484:	00003825 	move	a3,zero
    8488:	8e020000 	lw	v0,0(s0)
    848c:	3c040000 	lui	a0,0x0
    8490:	24840000 	addiu	a0,a0,0
    8494:	904e0003 	lbu	t6,3(v0)
    8498:	90450000 	lbu	a1,0(v0)
    849c:	90460001 	lbu	a2,1(v0)
    84a0:	90470002 	lbu	a3,2(v0)
    84a4:	0c000000 	jal	0 <func_80803D40>
    84a8:	afae0010 	sw	t6,16(sp)
    84ac:	3c010001 	lui	at,0x1
    84b0:	34218000 	ori	at,at,0x8000
    84b4:	02212021 	addu	a0,s1,at
    84b8:	848f4aaa 	lh	t7,19114(a0)
    84bc:	3c080000 	lui	t0,0x0
    84c0:	25080000 	addiu	t0,t0,0
    84c4:	000fc040 	sll	t8,t7,0x1
    84c8:	0118c821 	addu	t9,t0,t8
    84cc:	87260000 	lh	a2,0(t9)
    84d0:	84834aa8 	lh	v1,19112(a0)
    84d4:	3c070000 	lui	a3,0x0
    84d8:	24e70000 	addiu	a3,a3,0
    84dc:	00661023 	subu	v0,v1,a2
    84e0:	04400003 	bltz	v0,84f0 <func_8080BFE4+0x24c>
    84e4:	00022823 	negu	a1,v0
    84e8:	10000001 	b	84f0 <func_8080BFE4+0x24c>
    84ec:	00402825 	move	a1,v0
    84f0:	8ce90000 	lw	t1,0(a3)
    84f4:	852a0ada 	lh	t2,2778(t1)
    84f8:	00aa001a 	div	zero,a1,t2
    84fc:	15400002 	bnez	t2,8508 <func_8080BFE4+0x264>
    8500:	00000000 	nop
    8504:	0007000d 	break	0x7
    8508:	2401ffff 	li	at,-1
    850c:	15410004 	bne	t2,at,8520 <func_8080BFE4+0x27c>
    8510:	3c018000 	lui	at,0x8000
    8514:	14a10002 	bne	a1,at,8520 <func_8080BFE4+0x27c>
    8518:	00000000 	nop
    851c:	0006000d 	break	0x6
    8520:	00001012 	mflo	v0
    8524:	00021400 	sll	v0,v0,0x10
    8528:	0066082a 	slt	at,v1,a2
    852c:	14200004 	bnez	at,8540 <func_8080BFE4+0x29c>
    8530:	00021403 	sra	v0,v0,0x10
    8534:	00625823 	subu	t3,v1,v0
    8538:	10000003 	b	8548 <func_8080BFE4+0x2a4>
    853c:	a48b4aa8 	sh	t3,19112(a0)
    8540:	00626021 	addu	t4,v1,v0
    8544:	a48c4aa8 	sh	t4,19112(a0)
    8548:	8ce20000 	lw	v0,0(a3)
    854c:	844d0ada 	lh	t5,2778(v0)
    8550:	25aeffff 	addiu	t6,t5,-1
    8554:	a44e0ada 	sh	t6,2778(v0)
    8558:	8cef0000 	lw	t7,0(a3)
    855c:	85f80ada 	lh	t8,2778(t7)
    8560:	57000010 	bnezl	t8,85a4 <func_8080BFE4+0x300>
    8564:	8fbf0024 	lw	ra,36(sp)
    8568:	84834aaa 	lh	v1,19114(a0)
    856c:	3c010002 	lui	at,0x2
    8570:	00310821 	addu	at,at,s1
    8574:	00031840 	sll	v1,v1,0x1
    8578:	0103c821 	addu	t9,t0,v1
    857c:	87290000 	lh	t1,0(t9)
    8580:	a4894aa8 	sh	t1,19112(a0)
    8584:	8ce20000 	lw	v0,0(a3)
    8588:	00435021 	addu	t2,v0,v1
    858c:	854b0adc 	lh	t3,2780(t2)
    8590:	a44b0ada 	sh	t3,2778(v0)
    8594:	848c4aaa 	lh	t4,19114(a0)
    8598:	398d0001 	xori	t5,t4,0x1
    859c:	a42dcaaa 	sh	t5,-13654(at)
    85a0:	8fbf0024 	lw	ra,36(sp)
    85a4:	8fb0001c 	lw	s0,28(sp)
    85a8:	8fb10020 	lw	s1,32(sp)
    85ac:	03e00008 	jr	ra
    85b0:	27bd0028 	addiu	sp,sp,40

000085b4 <func_8080C2F4>:
    85b4:	27bdffe8 	addiu	sp,sp,-24
    85b8:	3c0e0002 	lui	t6,0x2
    85bc:	afbf0014 	sw	ra,20(sp)
    85c0:	01c47021 	addu	t6,t6,a0
    85c4:	85ceca3e 	lh	t6,-13762(t6)
    85c8:	3c190000 	lui	t9,0x0
    85cc:	000e7880 	sll	t7,t6,0x2
    85d0:	032fc821 	addu	t9,t9,t7
    85d4:	8f390000 	lw	t9,0(t9)
    85d8:	0320f809 	jalr	t9
    85dc:	00000000 	nop
    85e0:	8fbf0014 	lw	ra,20(sp)
    85e4:	27bd0018 	addiu	sp,sp,24
    85e8:	03e00008 	jr	ra
    85ec:	00000000 	nop
