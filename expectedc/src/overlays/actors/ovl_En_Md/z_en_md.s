
build/src/overlays/actors/ovl_En_Md/z_en_md.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80AAA250>:
       0:	c482015c 	lwc1	$f2,348(a0)
       4:	3c01bf80 	lui	at,0xbf80
       8:	c4800158 	lwc1	$f0,344(a0)
       c:	44812000 	mtc1	at,$f4
      10:	e4820158 	swc1	$f2,344(a0)
      14:	e4820164 	swc1	$f2,356(a0)
      18:	e480015c 	swc1	$f0,348(a0)
      1c:	03e00008 	jr	ra
      20:	e4840168 	swc1	$f4,360(a0)

00000024 <func_80AAA274>:
      24:	27bdffd8 	addiu	sp,sp,-40
      28:	afbf001c 	sw	ra,28(sp)
      2c:	afb00018 	sw	s0,24(sp)
      30:	9082020a 	lbu	v0,522(a0)
      34:	00808025 	move	s0,a0
      38:	2604014c 	addiu	a0,s0,332
      3c:	10400006 	beqz	v0,58 <func_80AAA274+0x34>
      40:	3c050000 	lui	a1,0x0
      44:	24010001 	li	at,1
      48:	5041000a 	beql	v0,at,74 <func_80AAA274+0x50>
      4c:	2604014c 	addiu	a0,s0,332
      50:	10000015 	b	a8 <func_80AAA274+0x84>
      54:	8fbf001c 	lw	ra,28(sp)
      58:	24a50058 	addiu	a1,a1,88
      5c:	0c000000 	jal	0 <func_80AAA250>
      60:	24060002 	li	a2,2
      64:	920e020a 	lbu	t6,522(s0)
      68:	25cf0001 	addiu	t7,t6,1
      6c:	a20f020a 	sb	t7,522(s0)
      70:	2604014c 	addiu	a0,s0,332
      74:	8e05015c 	lw	a1,348(s0)
      78:	0c000000 	jal	0 <func_80AAA250>
      7c:	afa40020 	sw	a0,32(sp)
      80:	10400008 	beqz	v0,a4 <func_80AAA274+0x80>
      84:	8fa40020 	lw	a0,32(sp)
      88:	3c050000 	lui	a1,0x0
      8c:	24a50058 	addiu	a1,a1,88
      90:	0c000000 	jal	0 <func_80AAA250>
      94:	24060003 	li	a2,3
      98:	9218020a 	lbu	t8,522(s0)
      9c:	27190001 	addiu	t9,t8,1
      a0:	a219020a 	sb	t9,522(s0)
      a4:	8fbf001c 	lw	ra,28(sp)
      a8:	8fb00018 	lw	s0,24(sp)
      ac:	27bd0028 	addiu	sp,sp,40
      b0:	03e00008 	jr	ra
      b4:	00000000 	nop

000000b8 <func_80AAA308>:
      b8:	27bdffd8 	addiu	sp,sp,-40
      bc:	afbf001c 	sw	ra,28(sp)
      c0:	afb00018 	sw	s0,24(sp)
      c4:	9082020a 	lbu	v0,522(a0)
      c8:	00808025 	move	s0,a0
      cc:	2604014c 	addiu	a0,s0,332
      d0:	10400006 	beqz	v0,ec <func_80AAA308+0x34>
      d4:	3c050000 	lui	a1,0x0
      d8:	24010001 	li	at,1
      dc:	5041000a 	beql	v0,at,108 <func_80AAA308+0x50>
      e0:	2604014c 	addiu	a0,s0,332
      e4:	10000015 	b	13c <func_80AAA308+0x84>
      e8:	8fbf001c 	lw	ra,28(sp)
      ec:	24a50058 	addiu	a1,a1,88
      f0:	0c000000 	jal	0 <func_80AAA250>
      f4:	24060004 	li	a2,4
      f8:	920e020a 	lbu	t6,522(s0)
      fc:	25cf0001 	addiu	t7,t6,1
     100:	a20f020a 	sb	t7,522(s0)
     104:	2604014c 	addiu	a0,s0,332
     108:	8e05015c 	lw	a1,348(s0)
     10c:	0c000000 	jal	0 <func_80AAA250>
     110:	afa40020 	sw	a0,32(sp)
     114:	10400008 	beqz	v0,138 <func_80AAA308+0x80>
     118:	8fa40020 	lw	a0,32(sp)
     11c:	3c050000 	lui	a1,0x0
     120:	24a50058 	addiu	a1,a1,88
     124:	0c000000 	jal	0 <func_80AAA250>
     128:	24060005 	li	a2,5
     12c:	9218020a 	lbu	t8,522(s0)
     130:	27190001 	addiu	t9,t8,1
     134:	a219020a 	sb	t9,522(s0)
     138:	8fbf001c 	lw	ra,28(sp)
     13c:	8fb00018 	lw	s0,24(sp)
     140:	27bd0028 	addiu	sp,sp,40
     144:	03e00008 	jr	ra
     148:	00000000 	nop

0000014c <func_80AAA39C>:
     14c:	27bdffd8 	addiu	sp,sp,-40
     150:	afbf001c 	sw	ra,28(sp)
     154:	afb00018 	sw	s0,24(sp)
     158:	9082020a 	lbu	v0,522(a0)
     15c:	00808025 	move	s0,a0
     160:	2604014c 	addiu	a0,s0,332
     164:	10400008 	beqz	v0,188 <func_80AAA39C+0x3c>
     168:	3c050000 	lui	a1,0x0
     16c:	24010001 	li	at,1
     170:	1041000d 	beq	v0,at,1a8 <func_80AAA39C+0x5c>
     174:	24010002 	li	at,2
     178:	50410019 	beql	v0,at,1e0 <func_80AAA39C+0x94>
     17c:	2604014c 	addiu	a0,s0,332
     180:	10000024 	b	214 <func_80AAA39C+0xc8>
     184:	8fbf001c 	lw	ra,28(sp)
     188:	24a50058 	addiu	a1,a1,88
     18c:	0c000000 	jal	0 <func_80AAA250>
     190:	24060002 	li	a2,2
     194:	0c000000 	jal	0 <func_80AAA250>
     198:	02002025 	move	a0,s0
     19c:	920e020a 	lbu	t6,522(s0)
     1a0:	25cf0001 	addiu	t7,t6,1
     1a4:	a20f020a 	sb	t7,522(s0)
     1a8:	2604014c 	addiu	a0,s0,332
     1ac:	8e05015c 	lw	a1,348(s0)
     1b0:	0c000000 	jal	0 <func_80AAA250>
     1b4:	afa40020 	sw	a0,32(sp)
     1b8:	10400015 	beqz	v0,210 <func_80AAA39C+0xc4>
     1bc:	8fa40020 	lw	a0,32(sp)
     1c0:	3c050000 	lui	a1,0x0
     1c4:	24a50058 	addiu	a1,a1,88
     1c8:	0c000000 	jal	0 <func_80AAA250>
     1cc:	24060007 	li	a2,7
     1d0:	9218020a 	lbu	t8,522(s0)
     1d4:	27190001 	addiu	t9,t8,1
     1d8:	a219020a 	sb	t9,522(s0)
     1dc:	2604014c 	addiu	a0,s0,332
     1e0:	8e05015c 	lw	a1,348(s0)
     1e4:	0c000000 	jal	0 <func_80AAA250>
     1e8:	afa40020 	sw	a0,32(sp)
     1ec:	10400008 	beqz	v0,210 <func_80AAA39C+0xc4>
     1f0:	8fa40020 	lw	a0,32(sp)
     1f4:	3c050000 	lui	a1,0x0
     1f8:	24a50058 	addiu	a1,a1,88
     1fc:	0c000000 	jal	0 <func_80AAA250>
     200:	24060008 	li	a2,8
     204:	9208020a 	lbu	t0,522(s0)
     208:	25090001 	addiu	t1,t0,1
     20c:	a209020a 	sb	t1,522(s0)
     210:	8fbf001c 	lw	ra,28(sp)
     214:	8fb00018 	lw	s0,24(sp)
     218:	27bd0028 	addiu	sp,sp,40
     21c:	03e00008 	jr	ra
     220:	00000000 	nop

00000224 <func_80AAA474>:
     224:	27bdffd8 	addiu	sp,sp,-40
     228:	afbf001c 	sw	ra,28(sp)
     22c:	afb00018 	sw	s0,24(sp)
     230:	9082020a 	lbu	v0,522(a0)
     234:	00808025 	move	s0,a0
     238:	2604014c 	addiu	a0,s0,332
     23c:	10400006 	beqz	v0,258 <func_80AAA474+0x34>
     240:	3c050000 	lui	a1,0x0
     244:	24010001 	li	at,1
     248:	5041000a 	beql	v0,at,274 <func_80AAA474+0x50>
     24c:	2604014c 	addiu	a0,s0,332
     250:	10000015 	b	2a8 <func_80AAA474+0x84>
     254:	8fbf001c 	lw	ra,28(sp)
     258:	24a50058 	addiu	a1,a1,88
     25c:	0c000000 	jal	0 <func_80AAA250>
     260:	24060007 	li	a2,7
     264:	920e020a 	lbu	t6,522(s0)
     268:	25cf0001 	addiu	t7,t6,1
     26c:	a20f020a 	sb	t7,522(s0)
     270:	2604014c 	addiu	a0,s0,332
     274:	8e05015c 	lw	a1,348(s0)
     278:	0c000000 	jal	0 <func_80AAA250>
     27c:	afa40020 	sw	a0,32(sp)
     280:	10400008 	beqz	v0,2a4 <func_80AAA474+0x80>
     284:	8fa40020 	lw	a0,32(sp)
     288:	3c050000 	lui	a1,0x0
     28c:	24a50058 	addiu	a1,a1,88
     290:	0c000000 	jal	0 <func_80AAA250>
     294:	2406000a 	li	a2,10
     298:	9218020a 	lbu	t8,522(s0)
     29c:	27190001 	addiu	t9,t8,1
     2a0:	a219020a 	sb	t9,522(s0)
     2a4:	8fbf001c 	lw	ra,28(sp)
     2a8:	8fb00018 	lw	s0,24(sp)
     2ac:	27bd0028 	addiu	sp,sp,40
     2b0:	03e00008 	jr	ra
     2b4:	00000000 	nop

000002b8 <func_80AAA508>:
     2b8:	27bdffd8 	addiu	sp,sp,-40
     2bc:	afbf001c 	sw	ra,28(sp)
     2c0:	afb00018 	sw	s0,24(sp)
     2c4:	9082020a 	lbu	v0,522(a0)
     2c8:	00808025 	move	s0,a0
     2cc:	2604014c 	addiu	a0,s0,332
     2d0:	10400006 	beqz	v0,2ec <func_80AAA508+0x34>
     2d4:	3c050000 	lui	a1,0x0
     2d8:	24010001 	li	at,1
     2dc:	5041000c 	beql	v0,at,310 <func_80AAA508+0x58>
     2e0:	2604014c 	addiu	a0,s0,332
     2e4:	10000017 	b	344 <func_80AAA508+0x8c>
     2e8:	8fbf001c 	lw	ra,28(sp)
     2ec:	24a50058 	addiu	a1,a1,88
     2f0:	0c000000 	jal	0 <func_80AAA250>
     2f4:	24060002 	li	a2,2
     2f8:	0c000000 	jal	0 <func_80AAA250>
     2fc:	02002025 	move	a0,s0
     300:	920e020a 	lbu	t6,522(s0)
     304:	25cf0001 	addiu	t7,t6,1
     308:	a20f020a 	sb	t7,522(s0)
     30c:	2604014c 	addiu	a0,s0,332
     310:	8e05015c 	lw	a1,348(s0)
     314:	0c000000 	jal	0 <func_80AAA250>
     318:	afa40020 	sw	a0,32(sp)
     31c:	10400008 	beqz	v0,340 <func_80AAA508+0x88>
     320:	8fa40020 	lw	a0,32(sp)
     324:	3c050000 	lui	a1,0x0
     328:	24a50058 	addiu	a1,a1,88
     32c:	0c000000 	jal	0 <func_80AAA250>
     330:	2406000a 	li	a2,10
     334:	9218020a 	lbu	t8,522(s0)
     338:	27190001 	addiu	t9,t8,1
     33c:	a219020a 	sb	t9,522(s0)
     340:	8fbf001c 	lw	ra,28(sp)
     344:	8fb00018 	lw	s0,24(sp)
     348:	27bd0028 	addiu	sp,sp,40
     34c:	03e00008 	jr	ra
     350:	00000000 	nop

00000354 <func_80AAA5A4>:
     354:	27bdffd8 	addiu	sp,sp,-40
     358:	afbf001c 	sw	ra,28(sp)
     35c:	afb00018 	sw	s0,24(sp)
     360:	9082020a 	lbu	v0,522(a0)
     364:	00808025 	move	s0,a0
     368:	2604014c 	addiu	a0,s0,332
     36c:	10400006 	beqz	v0,388 <func_80AAA5A4+0x34>
     370:	3c050000 	lui	a1,0x0
     374:	24010001 	li	at,1
     378:	5041000a 	beql	v0,at,3a4 <func_80AAA5A4+0x50>
     37c:	2604014c 	addiu	a0,s0,332
     380:	10000015 	b	3d8 <func_80AAA5A4+0x84>
     384:	8fbf001c 	lw	ra,28(sp)
     388:	24a50058 	addiu	a1,a1,88
     38c:	0c000000 	jal	0 <func_80AAA250>
     390:	24060009 	li	a2,9
     394:	920e020a 	lbu	t6,522(s0)
     398:	25cf0001 	addiu	t7,t6,1
     39c:	a20f020a 	sb	t7,522(s0)
     3a0:	2604014c 	addiu	a0,s0,332
     3a4:	8e05015c 	lw	a1,348(s0)
     3a8:	0c000000 	jal	0 <func_80AAA250>
     3ac:	afa40020 	sw	a0,32(sp)
     3b0:	10400008 	beqz	v0,3d4 <func_80AAA5A4+0x80>
     3b4:	8fa40020 	lw	a0,32(sp)
     3b8:	3c050000 	lui	a1,0x0
     3bc:	24a50058 	addiu	a1,a1,88
     3c0:	0c000000 	jal	0 <func_80AAA250>
     3c4:	24060006 	li	a2,6
     3c8:	9218020a 	lbu	t8,522(s0)
     3cc:	27190001 	addiu	t9,t8,1
     3d0:	a219020a 	sb	t9,522(s0)
     3d4:	8fbf001c 	lw	ra,28(sp)
     3d8:	8fb00018 	lw	s0,24(sp)
     3dc:	27bd0028 	addiu	sp,sp,40
     3e0:	03e00008 	jr	ra
     3e4:	00000000 	nop

000003e8 <func_80AAA638>:
     3e8:	27bdffd8 	addiu	sp,sp,-40
     3ec:	afbf001c 	sw	ra,28(sp)
     3f0:	afb00018 	sw	s0,24(sp)
     3f4:	9082020a 	lbu	v0,522(a0)
     3f8:	00808025 	move	s0,a0
     3fc:	2604014c 	addiu	a0,s0,332
     400:	10400006 	beqz	v0,41c <func_80AAA638+0x34>
     404:	3c050000 	lui	a1,0x0
     408:	24010001 	li	at,1
     40c:	5041000c 	beql	v0,at,440 <func_80AAA638+0x58>
     410:	2604014c 	addiu	a0,s0,332
     414:	10000017 	b	474 <func_80AAA638+0x8c>
     418:	8fbf001c 	lw	ra,28(sp)
     41c:	24a50058 	addiu	a1,a1,88
     420:	0c000000 	jal	0 <func_80AAA250>
     424:	24060009 	li	a2,9
     428:	0c000000 	jal	0 <func_80AAA250>
     42c:	02002025 	move	a0,s0
     430:	920e020a 	lbu	t6,522(s0)
     434:	25cf0001 	addiu	t7,t6,1
     438:	a20f020a 	sb	t7,522(s0)
     43c:	2604014c 	addiu	a0,s0,332
     440:	8e05015c 	lw	a1,348(s0)
     444:	0c000000 	jal	0 <func_80AAA250>
     448:	afa40020 	sw	a0,32(sp)
     44c:	10400008 	beqz	v0,470 <func_80AAA638+0x88>
     450:	8fa40020 	lw	a0,32(sp)
     454:	3c050000 	lui	a1,0x0
     458:	24a50058 	addiu	a1,a1,88
     45c:	0c000000 	jal	0 <func_80AAA250>
     460:	2406000a 	li	a2,10
     464:	9218020a 	lbu	t8,522(s0)
     468:	27190001 	addiu	t9,t8,1
     46c:	a219020a 	sb	t9,522(s0)
     470:	8fbf001c 	lw	ra,28(sp)
     474:	8fb00018 	lw	s0,24(sp)
     478:	27bd0028 	addiu	sp,sp,40
     47c:	03e00008 	jr	ra
     480:	00000000 	nop

00000484 <func_80AAA6D4>:
     484:	27bdffd8 	addiu	sp,sp,-40
     488:	afbf001c 	sw	ra,28(sp)
     48c:	afb00018 	sw	s0,24(sp)
     490:	9082020a 	lbu	v0,522(a0)
     494:	00808025 	move	s0,a0
     498:	2604014c 	addiu	a0,s0,332
     49c:	10400006 	beqz	v0,4b8 <func_80AAA6D4+0x34>
     4a0:	3c050000 	lui	a1,0x0
     4a4:	24010001 	li	at,1
     4a8:	5041000a 	beql	v0,at,4d4 <func_80AAA6D4+0x50>
     4ac:	2604014c 	addiu	a0,s0,332
     4b0:	10000015 	b	508 <func_80AAA6D4+0x84>
     4b4:	8fbf001c 	lw	ra,28(sp)
     4b8:	24a50058 	addiu	a1,a1,88
     4bc:	0c000000 	jal	0 <func_80AAA250>
     4c0:	2406000b 	li	a2,11
     4c4:	920e020a 	lbu	t6,522(s0)
     4c8:	25cf0001 	addiu	t7,t6,1
     4cc:	a20f020a 	sb	t7,522(s0)
     4d0:	2604014c 	addiu	a0,s0,332
     4d4:	8e05015c 	lw	a1,348(s0)
     4d8:	0c000000 	jal	0 <func_80AAA250>
     4dc:	afa40020 	sw	a0,32(sp)
     4e0:	10400008 	beqz	v0,504 <func_80AAA6D4+0x80>
     4e4:	8fa40020 	lw	a0,32(sp)
     4e8:	3c050000 	lui	a1,0x0
     4ec:	24a50058 	addiu	a1,a1,88
     4f0:	0c000000 	jal	0 <func_80AAA250>
     4f4:	24060006 	li	a2,6
     4f8:	9218020a 	lbu	t8,522(s0)
     4fc:	27190001 	addiu	t9,t8,1
     500:	a219020a 	sb	t9,522(s0)
     504:	8fbf001c 	lw	ra,28(sp)
     508:	8fb00018 	lw	s0,24(sp)
     50c:	27bd0028 	addiu	sp,sp,40
     510:	03e00008 	jr	ra
     514:	00000000 	nop

00000518 <func_80AAA768>:
     518:	27bdffd8 	addiu	sp,sp,-40
     51c:	afbf001c 	sw	ra,28(sp)
     520:	afb00018 	sw	s0,24(sp)
     524:	9082020a 	lbu	v0,522(a0)
     528:	00808025 	move	s0,a0
     52c:	2604014c 	addiu	a0,s0,332
     530:	10400006 	beqz	v0,54c <func_80AAA768+0x34>
     534:	3c050000 	lui	a1,0x0
     538:	24010001 	li	at,1
     53c:	5041000a 	beql	v0,at,568 <func_80AAA768+0x50>
     540:	2604014c 	addiu	a0,s0,332
     544:	10000015 	b	59c <func_80AAA768+0x84>
     548:	8fbf001c 	lw	ra,28(sp)
     54c:	24a50058 	addiu	a1,a1,88
     550:	0c000000 	jal	0 <func_80AAA250>
     554:	2406000c 	li	a2,12
     558:	920e020a 	lbu	t6,522(s0)
     55c:	25cf0001 	addiu	t7,t6,1
     560:	a20f020a 	sb	t7,522(s0)
     564:	2604014c 	addiu	a0,s0,332
     568:	8e05015c 	lw	a1,348(s0)
     56c:	0c000000 	jal	0 <func_80AAA250>
     570:	afa40020 	sw	a0,32(sp)
     574:	10400008 	beqz	v0,598 <func_80AAA768+0x80>
     578:	8fa40020 	lw	a0,32(sp)
     57c:	3c050000 	lui	a1,0x0
     580:	24a50058 	addiu	a1,a1,88
     584:	0c000000 	jal	0 <func_80AAA250>
     588:	24060003 	li	a2,3
     58c:	9218020a 	lbu	t8,522(s0)
     590:	27190001 	addiu	t9,t8,1
     594:	a219020a 	sb	t9,522(s0)
     598:	8fbf001c 	lw	ra,28(sp)
     59c:	8fb00018 	lw	s0,24(sp)
     5a0:	27bd0028 	addiu	sp,sp,40
     5a4:	03e00008 	jr	ra
     5a8:	00000000 	nop

000005ac <func_80AAA7FC>:
     5ac:	27bdffd8 	addiu	sp,sp,-40
     5b0:	afbf001c 	sw	ra,28(sp)
     5b4:	afb00018 	sw	s0,24(sp)
     5b8:	9082020a 	lbu	v0,522(a0)
     5bc:	00808025 	move	s0,a0
     5c0:	2604014c 	addiu	a0,s0,332
     5c4:	10400006 	beqz	v0,5e0 <func_80AAA7FC+0x34>
     5c8:	3c050000 	lui	a1,0x0
     5cc:	24010001 	li	at,1
     5d0:	5041000a 	beql	v0,at,5fc <func_80AAA7FC+0x50>
     5d4:	2604014c 	addiu	a0,s0,332
     5d8:	10000015 	b	630 <func_80AAA7FC+0x84>
     5dc:	8fbf001c 	lw	ra,28(sp)
     5e0:	24a50058 	addiu	a1,a1,88
     5e4:	0c000000 	jal	0 <func_80AAA250>
     5e8:	2406000d 	li	a2,13
     5ec:	920e020a 	lbu	t6,522(s0)
     5f0:	25cf0001 	addiu	t7,t6,1
     5f4:	a20f020a 	sb	t7,522(s0)
     5f8:	2604014c 	addiu	a0,s0,332
     5fc:	8e05015c 	lw	a1,348(s0)
     600:	0c000000 	jal	0 <func_80AAA250>
     604:	afa40020 	sw	a0,32(sp)
     608:	10400008 	beqz	v0,62c <func_80AAA7FC+0x80>
     60c:	8fa40020 	lw	a0,32(sp)
     610:	3c050000 	lui	a1,0x0
     614:	24a50058 	addiu	a1,a1,88
     618:	0c000000 	jal	0 <func_80AAA250>
     61c:	24060006 	li	a2,6
     620:	9218020a 	lbu	t8,522(s0)
     624:	27190001 	addiu	t9,t8,1
     628:	a219020a 	sb	t9,522(s0)
     62c:	8fbf001c 	lw	ra,28(sp)
     630:	8fb00018 	lw	s0,24(sp)
     634:	27bd0028 	addiu	sp,sp,40
     638:	03e00008 	jr	ra
     63c:	00000000 	nop

00000640 <func_80AAA890>:
     640:	27bdffd8 	addiu	sp,sp,-40
     644:	afbf001c 	sw	ra,28(sp)
     648:	afb00018 	sw	s0,24(sp)
     64c:	9082020a 	lbu	v0,522(a0)
     650:	00808025 	move	s0,a0
     654:	2604014c 	addiu	a0,s0,332
     658:	10400006 	beqz	v0,674 <func_80AAA890+0x34>
     65c:	3c050000 	lui	a1,0x0
     660:	24010001 	li	at,1
     664:	5041000c 	beql	v0,at,698 <func_80AAA890+0x58>
     668:	2604014c 	addiu	a0,s0,332
     66c:	10000017 	b	6cc <func_80AAA890+0x8c>
     670:	8fbf001c 	lw	ra,28(sp)
     674:	24a50058 	addiu	a1,a1,88
     678:	0c000000 	jal	0 <func_80AAA250>
     67c:	24060007 	li	a2,7
     680:	0c000000 	jal	0 <func_80AAA250>
     684:	02002025 	move	a0,s0
     688:	920e020a 	lbu	t6,522(s0)
     68c:	25cf0001 	addiu	t7,t6,1
     690:	a20f020a 	sb	t7,522(s0)
     694:	2604014c 	addiu	a0,s0,332
     698:	8e05015c 	lw	a1,348(s0)
     69c:	0c000000 	jal	0 <func_80AAA250>
     6a0:	afa40020 	sw	a0,32(sp)
     6a4:	10400008 	beqz	v0,6c8 <func_80AAA890+0x88>
     6a8:	8fa40020 	lw	a0,32(sp)
     6ac:	3c050000 	lui	a1,0x0
     6b0:	24a50058 	addiu	a1,a1,88
     6b4:	0c000000 	jal	0 <func_80AAA250>
     6b8:	2406000a 	li	a2,10
     6bc:	9218020a 	lbu	t8,522(s0)
     6c0:	27190001 	addiu	t9,t8,1
     6c4:	a219020a 	sb	t9,522(s0)
     6c8:	8fbf001c 	lw	ra,28(sp)
     6cc:	8fb00018 	lw	s0,24(sp)
     6d0:	27bd0028 	addiu	sp,sp,40
     6d4:	03e00008 	jr	ra
     6d8:	00000000 	nop

000006dc <func_80AAA92C>:
     6dc:	afa50004 	sw	a1,4(sp)
     6e0:	a085020b 	sb	a1,523(a0)
     6e4:	03e00008 	jr	ra
     6e8:	a080020a 	sb	zero,522(a0)

000006ec <func_80AAA93C>:
     6ec:	27bdffe8 	addiu	sp,sp,-24
     6f0:	afbf0014 	sw	ra,20(sp)
     6f4:	908e020b 	lbu	t6,523(a0)
     6f8:	25cfffff 	addiu	t7,t6,-1
     6fc:	2de1000b 	sltiu	at,t7,11
     700:	10200030 	beqz	at,7c4 <func_80AAA93C+0xd8>
     704:	000f7880 	sll	t7,t7,0x2
     708:	3c010000 	lui	at,0x0
     70c:	002f0821 	addu	at,at,t7
     710:	8c2f0020 	lw	t7,32(at)
     714:	01e00008 	jr	t7
     718:	00000000 	nop
     71c:	0c000000 	jal	0 <func_80AAA250>
     720:	00000000 	nop
     724:	10000028 	b	7c8 <func_80AAA93C+0xdc>
     728:	8fbf0014 	lw	ra,20(sp)
     72c:	0c000000 	jal	0 <func_80AAA250>
     730:	00000000 	nop
     734:	10000024 	b	7c8 <func_80AAA93C+0xdc>
     738:	8fbf0014 	lw	ra,20(sp)
     73c:	0c000000 	jal	0 <func_80AAA250>
     740:	00000000 	nop
     744:	10000020 	b	7c8 <func_80AAA93C+0xdc>
     748:	8fbf0014 	lw	ra,20(sp)
     74c:	0c000000 	jal	0 <func_80AAA250>
     750:	00000000 	nop
     754:	1000001c 	b	7c8 <func_80AAA93C+0xdc>
     758:	8fbf0014 	lw	ra,20(sp)
     75c:	0c000000 	jal	0 <func_80AAA250>
     760:	00000000 	nop
     764:	10000018 	b	7c8 <func_80AAA93C+0xdc>
     768:	8fbf0014 	lw	ra,20(sp)
     76c:	0c000000 	jal	0 <func_80AAA250>
     770:	00000000 	nop
     774:	10000014 	b	7c8 <func_80AAA93C+0xdc>
     778:	8fbf0014 	lw	ra,20(sp)
     77c:	0c000000 	jal	0 <func_80AAA250>
     780:	00000000 	nop
     784:	10000010 	b	7c8 <func_80AAA93C+0xdc>
     788:	8fbf0014 	lw	ra,20(sp)
     78c:	0c000000 	jal	0 <func_80AAA250>
     790:	00000000 	nop
     794:	1000000c 	b	7c8 <func_80AAA93C+0xdc>
     798:	8fbf0014 	lw	ra,20(sp)
     79c:	0c000000 	jal	0 <func_80AAA250>
     7a0:	00000000 	nop
     7a4:	10000008 	b	7c8 <func_80AAA93C+0xdc>
     7a8:	8fbf0014 	lw	ra,20(sp)
     7ac:	0c000000 	jal	0 <func_80AAA250>
     7b0:	00000000 	nop
     7b4:	10000004 	b	7c8 <func_80AAA93C+0xdc>
     7b8:	8fbf0014 	lw	ra,20(sp)
     7bc:	0c000000 	jal	0 <func_80AAA250>
     7c0:	00000000 	nop
     7c4:	8fbf0014 	lw	ra,20(sp)
     7c8:	27bd0018 	addiu	sp,sp,24
     7cc:	03e00008 	jr	ra
     7d0:	00000000 	nop

000007d4 <func_80AAAA24>:
     7d4:	27bdffe0 	addiu	sp,sp,-32
     7d8:	afbf001c 	sw	ra,28(sp)
     7dc:	afb00018 	sw	s0,24(sp)
     7e0:	848e01e0 	lh	t6,480(a0)
     7e4:	00808025 	move	s0,a0
     7e8:	51c0007d 	beqzl	t6,9e0 <func_80AAAA24+0x20c>
     7ec:	8e0a0154 	lw	t2,340(s0)
     7f0:	948f010e 	lhu	t7,270(a0)
     7f4:	25f8efd1 	addiu	t8,t7,-4143
     7f8:	2f010018 	sltiu	at,t8,24
     7fc:	10200083 	beqz	at,a0c <func_80AAAA24+0x238>
     800:	0018c080 	sll	t8,t8,0x2
     804:	3c010000 	lui	at,0x0
     808:	00380821 	addu	at,at,t8
     80c:	8c38004c 	lw	t8,76(at)
     810:	03000008 	jr	t8
     814:	00000000 	nop
     818:	92020208 	lbu	v0,520(s0)
     81c:	5440000a 	bnezl	v0,848 <func_80AAAA24+0x74>
     820:	24030002 	li	v1,2
     824:	9219020b 	lbu	t9,523(s0)
     828:	24010001 	li	at,1
     82c:	02002025 	move	a0,s0
     830:	53210005 	beql	t9,at,848 <func_80AAAA24+0x74>
     834:	24030002 	li	v1,2
     838:	0c000000 	jal	0 <func_80AAA250>
     83c:	24050001 	li	a1,1
     840:	92020208 	lbu	v0,520(s0)
     844:	24030002 	li	v1,2
     848:	54620009 	bnel	v1,v0,870 <func_80AAAA24+0x9c>
     84c:	24010005 	li	at,5
     850:	9208020b 	lbu	t0,523(s0)
     854:	02002025 	move	a0,s0
     858:	50680005 	beql	v1,t0,870 <func_80AAAA24+0x9c>
     85c:	24010005 	li	at,5
     860:	0c000000 	jal	0 <func_80AAA250>
     864:	24050002 	li	a1,2
     868:	92020208 	lbu	v0,520(s0)
     86c:	24010005 	li	at,5
     870:	5441000a 	bnel	v0,at,89c <func_80AAAA24+0xc8>
     874:	2401000b 	li	at,11
     878:	9209020b 	lbu	t1,523(s0)
     87c:	24010008 	li	at,8
     880:	02002025 	move	a0,s0
     884:	51210005 	beql	t1,at,89c <func_80AAAA24+0xc8>
     888:	2401000b 	li	at,11
     88c:	0c000000 	jal	0 <func_80AAA250>
     890:	24050008 	li	a1,8
     894:	92020208 	lbu	v0,520(s0)
     898:	2401000b 	li	at,11
     89c:	1441005b 	bne	v0,at,a0c <func_80AAAA24+0x238>
     8a0:	00000000 	nop
     8a4:	920a020b 	lbu	t2,523(s0)
     8a8:	24010009 	li	at,9
     8ac:	02002025 	move	a0,s0
     8b0:	11410056 	beq	t2,at,a0c <func_80AAAA24+0x238>
     8b4:	00000000 	nop
     8b8:	0c000000 	jal	0 <func_80AAA250>
     8bc:	24050009 	li	a1,9
     8c0:	10000052 	b	a0c <func_80AAAA24+0x238>
     8c4:	00000000 	nop
     8c8:	92020208 	lbu	v0,520(s0)
     8cc:	5440000a 	bnezl	v0,8f8 <func_80AAAA24+0x124>
     8d0:	24010001 	li	at,1
     8d4:	920b020b 	lbu	t3,523(s0)
     8d8:	24010001 	li	at,1
     8dc:	02002025 	move	a0,s0
     8e0:	51610005 	beql	t3,at,8f8 <func_80AAAA24+0x124>
     8e4:	24010001 	li	at,1
     8e8:	0c000000 	jal	0 <func_80AAA250>
     8ec:	24050001 	li	a1,1
     8f0:	92020208 	lbu	v0,520(s0)
     8f4:	24010001 	li	at,1
     8f8:	5441000a 	bnel	v0,at,924 <func_80AAAA24+0x150>
     8fc:	24010005 	li	at,5
     900:	920c020b 	lbu	t4,523(s0)
     904:	24030002 	li	v1,2
     908:	02002025 	move	a0,s0
     90c:	506c0005 	beql	v1,t4,924 <func_80AAAA24+0x150>
     910:	24010005 	li	at,5
     914:	0c000000 	jal	0 <func_80AAA250>
     918:	24050002 	li	a1,2
     91c:	92020208 	lbu	v0,520(s0)
     920:	24010005 	li	at,5
     924:	5441000a 	bnel	v0,at,950 <func_80AAAA24+0x17c>
     928:	24010007 	li	at,7
     92c:	920d020b 	lbu	t5,523(s0)
     930:	2401000a 	li	at,10
     934:	02002025 	move	a0,s0
     938:	51a10005 	beql	t5,at,950 <func_80AAAA24+0x17c>
     93c:	24010007 	li	at,7
     940:	0c000000 	jal	0 <func_80AAA250>
     944:	2405000a 	li	a1,10
     948:	92020208 	lbu	v0,520(s0)
     94c:	24010007 	li	at,7
     950:	1441002e 	bne	v0,at,a0c <func_80AAAA24+0x238>
     954:	00000000 	nop
     958:	920e020b 	lbu	t6,523(s0)
     95c:	24010009 	li	at,9
     960:	02002025 	move	a0,s0
     964:	11c10029 	beq	t6,at,a0c <func_80AAAA24+0x238>
     968:	00000000 	nop
     96c:	0c000000 	jal	0 <func_80AAA250>
     970:	24050009 	li	a1,9
     974:	10000025 	b	a0c <func_80AAAA24+0x238>
     978:	00000000 	nop
     97c:	920f0208 	lbu	t7,520(s0)
     980:	15e00022 	bnez	t7,a0c <func_80AAAA24+0x238>
     984:	00000000 	nop
     988:	9218020b 	lbu	t8,523(s0)
     98c:	24010001 	li	at,1
     990:	02002025 	move	a0,s0
     994:	1301001d 	beq	t8,at,a0c <func_80AAAA24+0x238>
     998:	00000000 	nop
     99c:	0c000000 	jal	0 <func_80AAA250>
     9a0:	24050001 	li	a1,1
     9a4:	10000019 	b	a0c <func_80AAAA24+0x238>
     9a8:	00000000 	nop
     9ac:	92190208 	lbu	t9,520(s0)
     9b0:	17200016 	bnez	t9,a0c <func_80AAAA24+0x238>
     9b4:	00000000 	nop
     9b8:	9208020b 	lbu	t0,523(s0)
     9bc:	24010006 	li	at,6
     9c0:	02002025 	move	a0,s0
     9c4:	11010011 	beq	t0,at,a0c <func_80AAAA24+0x238>
     9c8:	00000000 	nop
     9cc:	0c000000 	jal	0 <func_80AAA250>
     9d0:	24050006 	li	a1,6
     9d4:	1000000d 	b	a0c <func_80AAAA24+0x238>
     9d8:	00000000 	nop
     9dc:	8e0a0154 	lw	t2,340(s0)
     9e0:	3c090000 	lui	t1,0x0
     9e4:	25290000 	addiu	t1,t1,0
     9e8:	112a0008 	beq	t1,t2,a0c <func_80AAAA24+0x238>
     9ec:	2604014c 	addiu	a0,s0,332
     9f0:	3c050000 	lui	a1,0x0
     9f4:	24a50058 	addiu	a1,a1,88
     9f8:	0c000000 	jal	0 <func_80AAA250>
     9fc:	2406000a 	li	a2,10
     a00:	02002025 	move	a0,s0
     a04:	0c000000 	jal	0 <func_80AAA250>
     a08:	00002825 	move	a1,zero
     a0c:	0c000000 	jal	0 <func_80AAA250>
     a10:	02002025 	move	a0,s0
     a14:	8fbf001c 	lw	ra,28(sp)
     a18:	8fb00018 	lw	s0,24(sp)
     a1c:	27bd0020 	addiu	sp,sp,32
     a20:	03e00008 	jr	ra
     a24:	00000000 	nop

00000a28 <func_80AAAC78>:
     a28:	27bdffe8 	addiu	sp,sp,-24
     a2c:	afbf0014 	sw	ra,20(sp)
     a30:	00803025 	move	a2,a0
     a34:	afa60018 	sw	a2,24(sp)
     a38:	0c000000 	jal	0 <func_80AAA250>
     a3c:	24a420d8 	addiu	a0,a1,8408
     a40:	8fa60018 	lw	a2,24(sp)
     a44:	00402825 	move	a1,v0
     a48:	00022400 	sll	a0,v0,0x10
     a4c:	90c30209 	lbu	v1,521(a2)
     a50:	2401000a 	li	at,10
     a54:	00042403 	sra	a0,a0,0x10
     a58:	10610007 	beq	v1,at,a78 <func_80AAAC78+0x50>
     a5c:	00057400 	sll	t6,a1,0x10
     a60:	24010005 	li	at,5
     a64:	10610004 	beq	v1,at,a78 <func_80AAAC78+0x50>
     a68:	24010002 	li	at,2
     a6c:	10610002 	beq	v1,at,a78 <func_80AAAC78+0x50>
     a70:	24010001 	li	at,1
     a74:	14610006 	bne	v1,at,a90 <func_80AAAC78+0x68>
     a78:	000e7c03 	sra	t7,t6,0x10
     a7c:	51e30005 	beql	t7,v1,a94 <func_80AAAC78+0x6c>
     a80:	a0c40209 	sb	a0,521(a2)
     a84:	90d80208 	lbu	t8,520(a2)
     a88:	27190001 	addiu	t9,t8,1
     a8c:	a0d90208 	sb	t9,520(a2)
     a90:	a0c40209 	sb	a0,521(a2)
     a94:	8fbf0014 	lw	ra,20(sp)
     a98:	27bd0018 	addiu	sp,sp,24
     a9c:	00801025 	move	v0,a0
     aa0:	03e00008 	jr	ra
     aa4:	00000000 	nop

00000aa8 <EnMd_GetTextKokiriForest>:
     aa8:	27bdffe8 	addiu	sp,sp,-24
     aac:	afbf0014 	sw	ra,20(sp)
     ab0:	afa5001c 	sw	a1,28(sp)
     ab4:	0c000000 	jal	0 <func_80AAA250>
     ab8:	24050011 	li	a1,17
     abc:	8fa4001c 	lw	a0,28(sp)
     ac0:	10400003 	beqz	v0,ad0 <EnMd_GetTextKokiriForest+0x28>
     ac4:	3043ffff 	andi	v1,v0,0xffff
     ac8:	1000002d 	b	b80 <EnMd_GetTextKokiriForest+0xd8>
     acc:	00601025 	move	v0,v1
     ad0:	3c030000 	lui	v1,0x0
     ad4:	a0800208 	sb	zero,520(a0)
     ad8:	a0800209 	sb	zero,521(a0)
     adc:	24630000 	addiu	v1,v1,0
     ae0:	3c0e0000 	lui	t6,0x0
     ae4:	8dce0048 	lw	t6,72(t6)
     ae8:	8c6f00a4 	lw	t7,164(v1)
     aec:	01cfc024 	and	t8,t6,t7
     af0:	53000004 	beqzl	t8,b04 <EnMd_GetTextKokiriForest+0x5c>
     af4:	94790ed4 	lhu	t9,3796(v1)
     af8:	10000021 	b	b80 <EnMd_GetTextKokiriForest+0xd8>
     afc:	24021045 	li	v0,4165
     b00:	94790ed4 	lhu	t9,3796(v1)
     b04:	3c050000 	lui	a1,0x0
     b08:	24a50000 	addiu	a1,a1,0
     b0c:	33280010 	andi	t0,t9,0x10
     b10:	11000003 	beqz	t0,b20 <EnMd_GetTextKokiriForest+0x78>
     b14:	3c060000 	lui	a2,0x0
     b18:	10000019 	b	b80 <EnMd_GetTextKokiriForest+0xd8>
     b1c:	24021034 	li	v0,4148
     b20:	94620070 	lhu	v0,112(v1)
     b24:	94a90002 	lhu	t1,2(a1)
     b28:	24c60000 	addiu	a2,a2,0
     b2c:	90cb0001 	lbu	t3,1(a2)
     b30:	00495024 	and	t2,v0,t1
     b34:	24040001 	li	a0,1
     b38:	016a6007 	srav	t4,t2,t3
     b3c:	548c000a 	bnel	a0,t4,b68 <EnMd_GetTextKokiriForest+0xc0>
     b40:	94790ef8 	lhu	t9,3832(v1)
     b44:	94ad0000 	lhu	t5,0(a1)
     b48:	90cf0000 	lbu	t7,0(a2)
     b4c:	004d7024 	and	t6,v0,t5
     b50:	01eec007 	srav	t8,t6,t7
     b54:	54980004 	bnel	a0,t8,b68 <EnMd_GetTextKokiriForest+0xc0>
     b58:	94790ef8 	lhu	t9,3832(v1)
     b5c:	10000008 	b	b80 <EnMd_GetTextKokiriForest+0xd8>
     b60:	24021033 	li	v0,4147
     b64:	94790ef8 	lhu	t9,3832(v1)
     b68:	2402102f 	li	v0,4143
     b6c:	33281000 	andi	t0,t9,0x1000
     b70:	11000003 	beqz	t0,b80 <EnMd_GetTextKokiriForest+0xd8>
     b74:	00000000 	nop
     b78:	10000001 	b	b80 <EnMd_GetTextKokiriForest+0xd8>
     b7c:	24021030 	li	v0,4144
     b80:	8fbf0014 	lw	ra,20(sp)
     b84:	27bd0018 	addiu	sp,sp,24
     b88:	03e00008 	jr	ra
     b8c:	00000000 	nop

00000b90 <EnMd_GetTextKokiriHome>:
     b90:	afa40000 	sw	a0,0(sp)
     b94:	a0a00208 	sb	zero,520(a1)
     b98:	a0a00209 	sb	zero,521(a1)
     b9c:	3c0e0000 	lui	t6,0x0
     ba0:	95ce0edc 	lhu	t6,3804(t6)
     ba4:	24021046 	li	v0,4166
     ba8:	31cf0001 	andi	t7,t6,0x1
     bac:	11e00003 	beqz	t7,bbc <EnMd_GetTextKokiriHome+0x2c>
     bb0:	00000000 	nop
     bb4:	03e00008 	jr	ra
     bb8:	24021028 	li	v0,4136
     bbc:	03e00008 	jr	ra
     bc0:	00000000 	nop

00000bc4 <EnMd_GetTextLostWoods>:
     bc4:	afa40000 	sw	a0,0(sp)
     bc8:	3c020000 	lui	v0,0x0
     bcc:	24420000 	addiu	v0,v0,0
     bd0:	a0a00208 	sb	zero,520(a1)
     bd4:	a0a00209 	sb	zero,521(a1)
     bd8:	944e0edc 	lhu	t6,3804(v0)
     bdc:	31cf0100 	andi	t7,t6,0x100
     be0:	51e0000a 	beqzl	t7,c0c <EnMd_GetTextLostWoods+0x48>
     be4:	94480ed4 	lhu	t0,3796(v0)
     be8:	94580efa 	lhu	t8,3834(v0)
     bec:	33190200 	andi	t9,t8,0x200
     bf0:	13200003 	beqz	t9,c00 <EnMd_GetTextLostWoods+0x3c>
     bf4:	00000000 	nop
     bf8:	03e00008 	jr	ra
     bfc:	24021071 	li	v0,4209
     c00:	03e00008 	jr	ra
     c04:	24021070 	li	v0,4208
     c08:	94480ed4 	lhu	t0,3796(v0)
     c0c:	31090400 	andi	t1,t0,0x400
     c10:	51200004 	beqzl	t1,c24 <EnMd_GetTextLostWoods+0x60>
     c14:	944a0efa 	lhu	t2,3834(v0)
     c18:	03e00008 	jr	ra
     c1c:	24021068 	li	v0,4200
     c20:	944a0efa 	lhu	t2,3834(v0)
     c24:	24021060 	li	v0,4192
     c28:	314b0020 	andi	t3,t2,0x20
     c2c:	11600003 	beqz	t3,c3c <EnMd_GetTextLostWoods+0x78>
     c30:	00000000 	nop
     c34:	03e00008 	jr	ra
     c38:	24021061 	li	v0,4193
     c3c:	03e00008 	jr	ra
     c40:	00000000 	nop

00000c44 <EnMd_GetText>:
     c44:	27bdffe8 	addiu	sp,sp,-24
     c48:	afbf0014 	sw	ra,20(sp)
     c4c:	848200a4 	lh	v0,164(a0)
     c50:	24010028 	li	at,40
     c54:	1041000b 	beq	v0,at,c84 <EnMd_GetText+0x40>
     c58:	24010055 	li	at,85
     c5c:	10410005 	beq	v0,at,c74 <EnMd_GetText+0x30>
     c60:	2401005b 	li	at,91
     c64:	1041000b 	beq	v0,at,c94 <EnMd_GetText+0x50>
     c68:	00000000 	nop
     c6c:	1000000d 	b	ca4 <EnMd_GetText+0x60>
     c70:	00001025 	move	v0,zero
     c74:	0c000000 	jal	0 <func_80AAA250>
     c78:	00000000 	nop
     c7c:	1000000a 	b	ca8 <EnMd_GetText+0x64>
     c80:	8fbf0014 	lw	ra,20(sp)
     c84:	0c000000 	jal	0 <func_80AAA250>
     c88:	00000000 	nop
     c8c:	10000006 	b	ca8 <EnMd_GetText+0x64>
     c90:	8fbf0014 	lw	ra,20(sp)
     c94:	0c000000 	jal	0 <func_80AAA250>
     c98:	00000000 	nop
     c9c:	10000002 	b	ca8 <EnMd_GetText+0x64>
     ca0:	8fbf0014 	lw	ra,20(sp)
     ca4:	8fbf0014 	lw	ra,20(sp)
     ca8:	27bd0018 	addiu	sp,sp,24
     cac:	03e00008 	jr	ra
     cb0:	00000000 	nop

00000cb4 <func_80AAAF04>:
     cb4:	27bdffe8 	addiu	sp,sp,-24
     cb8:	afa40018 	sw	a0,24(sp)
     cbc:	afbf0014 	sw	ra,20(sp)
     cc0:	afa5001c 	sw	a1,28(sp)
     cc4:	00a02025 	move	a0,a1
     cc8:	0c000000 	jal	0 <func_80AAA250>
     ccc:	8fa50018 	lw	a1,24(sp)
     cd0:	2c41000a 	sltiu	at,v0,10
     cd4:	10200040 	beqz	at,dd8 <func_80AAAF04+0x124>
     cd8:	00027080 	sll	t6,v0,0x2
     cdc:	3c010000 	lui	at,0x0
     ce0:	002e0821 	addu	at,at,t6
     ce4:	8c2e00ac 	lw	t6,172(at)
     ce8:	01c00008 	jr	t6
     cec:	00000000 	nop
     cf0:	1000003a 	b	ddc <func_80AAAF04+0x128>
     cf4:	24020001 	li	v0,1
     cf8:	8faf001c 	lw	t7,28(sp)
     cfc:	24011028 	li	at,4136
     d00:	95e2010e 	lhu	v0,270(t7)
     d04:	1041000d 	beq	v0,at,d3c <func_80AAAF04+0x88>
     d08:	2401102f 	li	at,4143
     d0c:	10410012 	beq	v0,at,d58 <func_80AAAF04+0xa4>
     d10:	24011033 	li	at,4147
     d14:	10410028 	beq	v0,at,db8 <func_80AAAF04+0x104>
     d18:	24011060 	li	at,4192
     d1c:	10410018 	beq	v0,at,d80 <func_80AAAF04+0xcc>
     d20:	24011067 	li	at,4199
     d24:	10410024 	beq	v0,at,db8 <func_80AAAF04+0x104>
     d28:	24011070 	li	at,4208
     d2c:	1041001b 	beq	v0,at,d9c <func_80AAAF04+0xe8>
     d30:	00000000 	nop
     d34:	10000029 	b	ddc <func_80AAAF04+0x128>
     d38:	00001025 	move	v0,zero
     d3c:	3c020000 	lui	v0,0x0
     d40:	24420000 	addiu	v0,v0,0
     d44:	94580ed4 	lhu	t8,3796(v0)
     d48:	37198000 	ori	t9,t8,0x8000
     d4c:	a4590ed4 	sh	t9,3796(v0)
     d50:	10000022 	b	ddc <func_80AAAF04+0x128>
     d54:	00001025 	move	v0,zero
     d58:	3c020000 	lui	v0,0x0
     d5c:	24420000 	addiu	v0,v0,0
     d60:	94480ed4 	lhu	t0,3796(v0)
     d64:	944a0ef8 	lhu	t2,3832(v0)
     d68:	35090004 	ori	t1,t0,0x4
     d6c:	354b1000 	ori	t3,t2,0x1000
     d70:	a4490ed4 	sh	t1,3796(v0)
     d74:	a44b0ef8 	sh	t3,3832(v0)
     d78:	10000018 	b	ddc <func_80AAAF04+0x128>
     d7c:	00001025 	move	v0,zero
     d80:	3c020000 	lui	v0,0x0
     d84:	24420000 	addiu	v0,v0,0
     d88:	944c0efa 	lhu	t4,3834(v0)
     d8c:	358d0020 	ori	t5,t4,0x20
     d90:	a44d0efa 	sh	t5,3834(v0)
     d94:	10000011 	b	ddc <func_80AAAF04+0x128>
     d98:	00001025 	move	v0,zero
     d9c:	3c020000 	lui	v0,0x0
     da0:	24420000 	addiu	v0,v0,0
     da4:	944e0efa 	lhu	t6,3834(v0)
     da8:	35cf0200 	ori	t7,t6,0x200
     dac:	a44f0efa 	sh	t7,3834(v0)
     db0:	1000000a 	b	ddc <func_80AAAF04+0x128>
     db4:	00001025 	move	v0,zero
     db8:	10000008 	b	ddc <func_80AAAF04+0x128>
     dbc:	24020002 	li	v0,2
     dc0:	0c000000 	jal	0 <func_80AAA250>
     dc4:	8fa40018 	lw	a0,24(sp)
     dc8:	50400004 	beqzl	v0,ddc <func_80AAAF04+0x128>
     dcc:	24020001 	li	v0,1
     dd0:	10000002 	b	ddc <func_80AAAF04+0x128>
     dd4:	24020002 	li	v0,2
     dd8:	24020001 	li	v0,1
     ddc:	8fbf0014 	lw	ra,20(sp)
     de0:	27bd0018 	addiu	sp,sp,24
     de4:	03e00008 	jr	ra
     de8:	00000000 	nop

00000dec <EnMd_ShouldSpawn>:
     dec:	afa40000 	sw	a0,0(sp)
     df0:	84a200a4 	lh	v0,164(a1)
     df4:	24010055 	li	at,85
     df8:	3c030000 	lui	v1,0x0
     dfc:	1441000b 	bne	v0,at,e2c <EnMd_ShouldSpawn+0x40>
     e00:	24630000 	addiu	v1,v1,0
     e04:	946e0ed6 	lhu	t6,3798(v1)
     e08:	31cf1000 	andi	t7,t6,0x1000
     e0c:	15e00007 	bnez	t7,e2c <EnMd_ShouldSpawn+0x40>
     e10:	00000000 	nop
     e14:	94780edc 	lhu	t8,3804(v1)
     e18:	33190001 	andi	t9,t8,0x1
     e1c:	17200003 	bnez	t9,e2c <EnMd_ShouldSpawn+0x40>
     e20:	00000000 	nop
     e24:	03e00008 	jr	ra
     e28:	24020001 	li	v0,1
     e2c:	3c030000 	lui	v1,0x0
     e30:	24010028 	li	at,40
     e34:	1441000e 	bne	v0,at,e70 <EnMd_ShouldSpawn+0x84>
     e38:	24630000 	addiu	v1,v1,0
     e3c:	94680ed6 	lhu	t0,3798(v1)
     e40:	31091000 	andi	t1,t0,0x1000
     e44:	55200006 	bnezl	t1,e60 <EnMd_ShouldSpawn+0x74>
     e48:	8c6c0004 	lw	t4,4(v1)
     e4c:	946a0edc 	lhu	t2,3804(v1)
     e50:	314b0001 	andi	t3,t2,0x1
     e54:	51600007 	beqzl	t3,e74 <EnMd_ShouldSpawn+0x88>
     e58:	2401005b 	li	at,91
     e5c:	8c6c0004 	lw	t4,4(v1)
     e60:	51800004 	beqzl	t4,e74 <EnMd_ShouldSpawn+0x88>
     e64:	2401005b 	li	at,91
     e68:	03e00008 	jr	ra
     e6c:	24020001 	li	v0,1
     e70:	2401005b 	li	at,91
     e74:	54410004 	bnel	v0,at,e88 <EnMd_ShouldSpawn+0x9c>
     e78:	00001025 	move	v0,zero
     e7c:	03e00008 	jr	ra
     e80:	24020001 	li	v0,1
     e84:	00001025 	move	v0,zero
     e88:	03e00008 	jr	ra
     e8c:	00000000 	nop

00000e90 <EnMd_UpdateEyes>:
     e90:	27bdffe8 	addiu	sp,sp,-24
     e94:	afbf0014 	sw	ra,20(sp)
     e98:	8482020c 	lh	v0,524(a0)
     e9c:	00803025 	move	a2,a0
     ea0:	14400003 	bnez	v0,eb0 <EnMd_UpdateEyes+0x20>
     ea4:	244effff 	addiu	t6,v0,-1
     ea8:	10000003 	b	eb8 <EnMd_UpdateEyes+0x28>
     eac:	00001825 	move	v1,zero
     eb0:	a4ce020c 	sh	t6,524(a2)
     eb4:	84c3020c 	lh	v1,524(a2)
     eb8:	54600010 	bnezl	v1,efc <EnMd_UpdateEyes+0x6c>
     ebc:	8fbf0014 	lw	ra,20(sp)
     ec0:	84cf020e 	lh	t7,526(a2)
     ec4:	2404001e 	li	a0,30
     ec8:	2405001e 	li	a1,30
     ecc:	25f80001 	addiu	t8,t7,1
     ed0:	a4d8020e 	sh	t8,526(a2)
     ed4:	84d9020e 	lh	t9,526(a2)
     ed8:	2b210003 	slti	at,t9,3
     edc:	54200007 	bnezl	at,efc <EnMd_UpdateEyes+0x6c>
     ee0:	8fbf0014 	lw	ra,20(sp)
     ee4:	0c000000 	jal	0 <func_80AAA250>
     ee8:	afa60018 	sw	a2,24(sp)
     eec:	8fa60018 	lw	a2,24(sp)
     ef0:	a4c2020c 	sh	v0,524(a2)
     ef4:	a4c0020e 	sh	zero,526(a2)
     ef8:	8fbf0014 	lw	ra,20(sp)
     efc:	27bd0018 	addiu	sp,sp,24
     f00:	03e00008 	jr	ra
     f04:	00000000 	nop

00000f08 <func_80AAB158>:
     f08:	27bdffc8 	addiu	sp,sp,-56
     f0c:	afbf0024 	sw	ra,36(sp)
     f10:	afb00020 	sw	s0,32(sp)
     f14:	afa5003c 	sw	a1,60(sp)
     f18:	3c01432a 	lui	at,0x432a
     f1c:	44813000 	mtc1	at,$f6
     f20:	c4840090 	lwc1	$f4,144(a0)
     f24:	00808025 	move	s0,a0
     f28:	8ca61c44 	lw	a2,7236(a1)
     f2c:	4606203c 	c.lt.s	$f4,$f6
     f30:	24070001 	li	a3,1
     f34:	00001825 	move	v1,zero
     f38:	45000022 	bc1f	fc4 <func_80AAB158+0xbc>
     f3c:	00000000 	nop
     f40:	848f008a 	lh	t7,138(a0)
     f44:	849800b6 	lh	t8,182(a0)
     f48:	24040002 	li	a0,2
     f4c:	448f4000 	mtc1	t7,$f8
     f50:	44988000 	mtc1	t8,$f16
     f54:	468042a0 	cvt.s.w	$f10,$f8
     f58:	468084a0 	cvt.s.w	$f18,$f16
     f5c:	46125101 	sub.s	$f4,$f10,$f18
     f60:	4600218d 	trunc.w.s	$f6,$f4
     f64:	44023000 	mfc1	v0,$f6
     f68:	00000000 	nop
     f6c:	00021400 	sll	v0,v0,0x10
     f70:	00021403 	sra	v0,v0,0x10
     f74:	04400004 	bltz	v0,f88 <func_80AAB158+0x80>
     f78:	00021823 	negu	v1,v0
     f7c:	00021c00 	sll	v1,v0,0x10
     f80:	10000003 	b	f90 <func_80AAB158+0x88>
     f84:	00031c03 	sra	v1,v1,0x10
     f88:	00031c00 	sll	v1,v1,0x10
     f8c:	00031c03 	sra	v1,v1,0x10
     f90:	a7a30032 	sh	v1,50(sp)
     f94:	0c000000 	jal	0 <func_80AAA250>
     f98:	afa60034 	sw	a2,52(sp)
     f9c:	87a30032 	lh	v1,50(sp)
     fa0:	8fa60034 	lw	a2,52(sp)
     fa4:	24070001 	li	a3,1
     fa8:	0043082a 	slt	at,v0,v1
     fac:	14200003 	bnez	at,fbc <func_80AAB158+0xb4>
     fb0:	24030001 	li	v1,1
     fb4:	10000003 	b	fc4 <func_80AAB158+0xbc>
     fb8:	24070002 	li	a3,2
     fbc:	10000001 	b	fc4 <func_80AAB158+0xbc>
     fc0:	24030001 	li	v1,1
     fc4:	860801e0 	lh	t0,480(s0)
     fc8:	3c0a0000 	lui	t2,0x0
     fcc:	254a0000 	addiu	t2,t2,0
     fd0:	11000002 	beqz	t0,fdc <func_80AAB158+0xd4>
     fd4:	8fab003c 	lw	t3,60(sp)
     fd8:	24070004 	li	a3,4
     fdc:	8e020190 	lw	v0,400(s0)
     fe0:	3c090000 	lui	t1,0x0
     fe4:	25290000 	addiu	t1,t1,0
     fe8:	15220003 	bne	t1,v0,ff8 <func_80AAB158+0xf0>
     fec:	02002025 	move	a0,s0
     ff0:	24070001 	li	a3,1
     ff4:	00001825 	move	v1,zero
     ff8:	15420003 	bne	t2,v0,1008 <func_80AAB158+0x100>
     ffc:	260501e0 	addiu	a1,s0,480
    1000:	24070004 	li	a3,4
    1004:	24030001 	li	v1,1
    1008:	916c1d6c 	lbu	t4,7532(t3)
    100c:	3c0d0000 	lui	t5,0x0
    1010:	8fae003c 	lw	t6,60(sp)
    1014:	55800005 	bnezl	t4,102c <func_80AAB158+0x124>
    1018:	8dd800e0 	lw	t8,224(t6)
    101c:	8dad0000 	lw	t5,0(t5)
    1020:	51a0000d 	beqzl	t5,1058 <func_80AAB158+0x150>
    1024:	8cc80024 	lw	t0,36(a2)
    1028:	8dd800e0 	lw	t8,224(t6)
    102c:	3c014220 	lui	at,0x4220
    1030:	44814000 	mtc1	at,$f8
    1034:	ae1801f8 	sw	t8,504(s0)
    1038:	8dcf00e4 	lw	t7,228(t6)
    103c:	24070002 	li	a3,2
    1040:	ae0f01fc 	sw	t7,508(s0)
    1044:	8dd800e8 	lw	t8,232(t6)
    1048:	e60801f4 	swc1	$f8,500(s0)
    104c:	10000012 	b	1098 <func_80AAB158+0x190>
    1050:	ae180200 	sw	t8,512(s0)
    1054:	8cc80024 	lw	t0,36(a2)
    1058:	3c090000 	lui	t1,0x0
    105c:	3c01c190 	lui	at,0xc190
    1060:	ae0801f8 	sw	t0,504(s0)
    1064:	8cd90028 	lw	t9,40(a2)
    1068:	ae1901fc 	sw	t9,508(s0)
    106c:	8cc8002c 	lw	t0,44(a2)
    1070:	ae080200 	sw	t0,512(s0)
    1074:	8d290004 	lw	t1,4(t1)
    1078:	59200005 	blezl	t1,1090 <func_80AAB158+0x188>
    107c:	44815000 	mtc1	at,$f10
    1080:	44808000 	mtc1	zero,$f16
    1084:	10000004 	b	1098 <func_80AAB158+0x190>
    1088:	e61001f4 	swc1	$f16,500(s0)
    108c:	44815000 	mtc1	at,$f10
    1090:	00000000 	nop
    1094:	e60a01f4 	swc1	$f10,500(s0)
    1098:	24060002 	li	a2,2
    109c:	a7a3002e 	sh	v1,46(sp)
    10a0:	0c000000 	jal	0 <func_80AAA250>
    10a4:	afa50028 	sw	a1,40(sp)
    10a8:	8e0b0190 	lw	t3,400(s0)
    10ac:	3c0a0000 	lui	t2,0x0
    10b0:	254a0000 	addiu	t2,t2,0
    10b4:	114b0015 	beq	t2,t3,110c <func_80AAB158+0x204>
    10b8:	87a3002e 	lh	v1,46(sp)
    10bc:	50600014 	beqzl	v1,1110 <func_80AAB158+0x208>
    10c0:	8fbf0024 	lw	ra,36(sp)
    10c4:	860c01d4 	lh	t4,468(s0)
    10c8:	3c0141f0 	lui	at,0x41f0
    10cc:	44813000 	mtc1	at,$f6
    10d0:	448c9000 	mtc1	t4,$f18
    10d4:	3c0d0000 	lui	t5,0x0
    10d8:	3c0e0000 	lui	t6,0x0
    10dc:	46809120 	cvt.s.w	$f4,$f18
    10e0:	25ce0000 	addiu	t6,t6,0
    10e4:	25ad0000 	addiu	t5,t5,0
    10e8:	afad0010 	sw	t5,16(sp)
    10ec:	afae0014 	sw	t6,20(sp)
    10f0:	8fa4003c 	lw	a0,60(sp)
    10f4:	46062200 	add.s	$f8,$f4,$f6
    10f8:	02002825 	move	a1,s0
    10fc:	8fa60028 	lw	a2,40(sp)
    1100:	44074000 	mfc1	a3,$f8
    1104:	0c000000 	jal	0 <func_80AAA250>
    1108:	00000000 	nop
    110c:	8fbf0024 	lw	ra,36(sp)
    1110:	8fb00020 	lw	s0,32(sp)
    1114:	27bd0038 	addiu	sp,sp,56
    1118:	03e00008 	jr	ra
    111c:	00000000 	nop

00001120 <EnMd_FollowPath>:
    1120:	27bdffc8 	addiu	sp,sp,-56
    1124:	afbf0024 	sw	ra,36(sp)
    1128:	afb00020 	sw	s0,32(sp)
    112c:	8486001c 	lh	a2,28(a0)
    1130:	3401ff00 	li	at,0xff00
    1134:	00808025 	move	s0,a0
    1138:	30c6ff00 	andi	a2,a2,0xff00
    113c:	14c10003 	bne	a2,at,114c <EnMd_FollowPath+0x2c>
    1140:	3c0e0001 	lui	t6,0x1
    1144:	1000004c 	b	1278 <EnMd_FollowPath+0x158>
    1148:	00001025 	move	v0,zero
    114c:	01c57021 	addu	t6,t6,a1
    1150:	8dce1e08 	lw	t6,7688(t6)
    1154:	00067a03 	sra	t7,a2,0x8
    1158:	000fc0c0 	sll	t8,t7,0x3
    115c:	01d82021 	addu	a0,t6,t8
    1160:	8c830004 	lw	v1,4(a0)
    1164:	3c0a0000 	lui	t2,0x0
    1168:	860c0212 	lh	t4,530(s0)
    116c:	0003c900 	sll	t9,v1,0x4
    1170:	00194702 	srl	t0,t9,0x1c
    1174:	00084880 	sll	t1,t0,0x2
    1178:	01495021 	addu	t2,t2,t1
    117c:	3c0100ff 	lui	at,0xff
    1180:	8d4a0000 	lw	t2,0(t2)
    1184:	3421ffff 	ori	at,at,0xffff
    1188:	00615824 	and	t3,v1,at
    118c:	000c6880 	sll	t5,t4,0x2
    1190:	3c018000 	lui	at,0x8000
    1194:	01ac6823 	subu	t5,t5,t4
    1198:	014b1021 	addu	v0,t2,t3
    119c:	00411021 	addu	v0,v0,at
    11a0:	000d6840 	sll	t5,t5,0x1
    11a4:	004d1021 	addu	v0,v0,t5
    11a8:	844f0000 	lh	t7,0(v0)
    11ac:	844e0004 	lh	t6,4(v0)
    11b0:	c6080024 	lwc1	$f8,36(s0)
    11b4:	448f2000 	mtc1	t7,$f4
    11b8:	448e5000 	mtc1	t6,$f10
    11bc:	c612002c 	lwc1	$f18,44(s0)
    11c0:	468021a0 	cvt.s.w	$f6,$f4
    11c4:	afa40034 	sw	a0,52(sp)
    11c8:	46805420 	cvt.s.w	$f16,$f10
    11cc:	46083301 	sub.s	$f12,$f6,$f8
    11d0:	46128381 	sub.s	$f14,$f16,$f18
    11d4:	e7ac002c 	swc1	$f12,44(sp)
    11d8:	0c000000 	jal	0 <func_80AAA250>
    11dc:	e7ae0028 	swc1	$f14,40(sp)
    11e0:	3c010000 	lui	at,0x0
    11e4:	c42400d4 	lwc1	$f4,212(at)
    11e8:	24190001 	li	t9,1
    11ec:	afb90010 	sw	t9,16(sp)
    11f0:	46040182 	mul.s	$f6,$f0,$f4
    11f4:	26040032 	addiu	a0,s0,50
    11f8:	24060004 	li	a2,4
    11fc:	24070fa0 	li	a3,4000
    1200:	4600320d 	trunc.w.s	$f8,$f6
    1204:	44054000 	mfc1	a1,$f8
    1208:	00000000 	nop
    120c:	00052c00 	sll	a1,a1,0x10
    1210:	0c000000 	jal	0 <func_80AAA250>
    1214:	00052c03 	sra	a1,a1,0x10
    1218:	c7ac002c 	lwc1	$f12,44(sp)
    121c:	c7ae0028 	lwc1	$f14,40(sp)
    1220:	3c0142c8 	lui	at,0x42c8
    1224:	460c6282 	mul.s	$f10,$f12,$f12
    1228:	44812000 	mtc1	at,$f4
    122c:	00001025 	move	v0,zero
    1230:	460e7402 	mul.s	$f16,$f14,$f14
    1234:	46105480 	add.s	$f18,$f10,$f16
    1238:	4604903c 	c.lt.s	$f18,$f4
    123c:	00000000 	nop
    1240:	4500000d 	bc1f	1278 <EnMd_FollowPath+0x158>
    1244:	00000000 	nop
    1248:	86080212 	lh	t0,530(s0)
    124c:	25090001 	addiu	t1,t0,1
    1250:	a6090212 	sh	t1,530(s0)
    1254:	8fab0034 	lw	t3,52(sp)
    1258:	860a0212 	lh	t2,530(s0)
    125c:	916c0000 	lbu	t4,0(t3)
    1260:	014c082a 	slt	at,t2,t4
    1264:	14200002 	bnez	at,1270 <EnMd_FollowPath+0x150>
    1268:	00000000 	nop
    126c:	a6000212 	sh	zero,530(s0)
    1270:	10000001 	b	1278 <EnMd_FollowPath+0x158>
    1274:	24020001 	li	v0,1
    1278:	8fbf0024 	lw	ra,36(sp)
    127c:	8fb00020 	lw	s0,32(sp)
    1280:	27bd0038 	addiu	sp,sp,56
    1284:	03e00008 	jr	ra
    1288:	00000000 	nop

0000128c <EnMd_SetMovedPos>:
    128c:	8483001c 	lh	v1,28(a0)
    1290:	3401ff00 	li	at,0xff00
    1294:	00a03025 	move	a2,a1
    1298:	3063ff00 	andi	v1,v1,0xff00
    129c:	14610003 	bne	v1,at,12ac <EnMd_SetMovedPos+0x20>
    12a0:	3c0e0001 	lui	t6,0x1
    12a4:	03e00008 	jr	ra
    12a8:	00001025 	move	v0,zero
    12ac:	01c67021 	addu	t6,t6,a2
    12b0:	8dce1e08 	lw	t6,7688(t6)
    12b4:	00037a03 	sra	t7,v1,0x8
    12b8:	000fc0c0 	sll	t8,t7,0x3
    12bc:	01d82821 	addu	a1,t6,t8
    12c0:	8ca80004 	lw	t0,4(a1)
    12c4:	3c0b0000 	lui	t3,0x0
    12c8:	90ad0000 	lbu	t5,0(a1)
    12cc:	0008c900 	sll	t9,t0,0x4
    12d0:	00194f02 	srl	t1,t9,0x1c
    12d4:	00095080 	sll	t2,t1,0x2
    12d8:	016a5821 	addu	t3,t3,t2
    12dc:	3c0100ff 	lui	at,0xff
    12e0:	8d6b0000 	lw	t3,0(t3)
    12e4:	3421ffff 	ori	at,at,0xffff
    12e8:	01016024 	and	t4,t0,at
    12ec:	000d7880 	sll	t7,t5,0x2
    12f0:	3c018000 	lui	at,0x8000
    12f4:	01ed7823 	subu	t7,t7,t5
    12f8:	016c3821 	addu	a3,t3,t4
    12fc:	00e13821 	addu	a3,a3,at
    1300:	000f7840 	sll	t7,t7,0x1
    1304:	00ef3821 	addu	a3,a3,t7
    1308:	84eefffa 	lh	t6,-6(a3)
    130c:	24e7fffa 	addiu	a3,a3,-6
    1310:	24020001 	li	v0,1
    1314:	448e2000 	mtc1	t6,$f4
    1318:	00000000 	nop
    131c:	468021a0 	cvt.s.w	$f6,$f4
    1320:	e4860024 	swc1	$f6,36(a0)
    1324:	84f80002 	lh	t8,2(a3)
    1328:	44984000 	mtc1	t8,$f8
    132c:	00000000 	nop
    1330:	468042a0 	cvt.s.w	$f10,$f8
    1334:	e48a0028 	swc1	$f10,40(a0)
    1338:	84f90004 	lh	t9,4(a3)
    133c:	44998000 	mtc1	t9,$f16
    1340:	00000000 	nop
    1344:	468084a0 	cvt.s.w	$f18,$f16
    1348:	e492002c 	swc1	$f18,44(a0)
    134c:	03e00008 	jr	ra
    1350:	00000000 	nop

00001354 <func_80AAB5A4>:
    1354:	27bdffe8 	addiu	sp,sp,-24
    1358:	afbf0014 	sw	ra,20(sp)
    135c:	84a200a4 	lh	v0,164(a1)
    1360:	24010028 	li	at,40
    1364:	3c030000 	lui	v1,0x0
    1368:	1041001e 	beq	v0,at,13e4 <func_80AAB5A4+0x90>
    136c:	240a00ff 	li	t2,255
    1370:	24630000 	addiu	v1,v1,0
    1374:	3c0e0000 	lui	t6,0x0
    1378:	8dce0048 	lw	t6,72(t6)
    137c:	8c6f00a4 	lw	t7,164(v1)
    1380:	01cfc024 	and	t8,t6,t7
    1384:	5300000c 	beqzl	t8,13b8 <func_80AAB5A4+0x64>
    1388:	3c0143c8 	lui	at,0x43c8
    138c:	94790ed6 	lhu	t9,3798(v1)
    1390:	24010055 	li	at,85
    1394:	33281000 	andi	t0,t9,0x1000
    1398:	55000007 	bnezl	t0,13b8 <func_80AAB5A4+0x64>
    139c:	3c0143c8 	lui	at,0x43c8
    13a0:	14410004 	bne	v0,at,13b4 <func_80AAB5A4+0x60>
    13a4:	3c0142c8 	lui	at,0x42c8
    13a8:	44810000 	mtc1	at,$f0
    13ac:	10000005 	b	13c4 <func_80AAB5A4+0x70>
    13b0:	84860210 	lh	a2,528(a0)
    13b4:	3c0143c8 	lui	at,0x43c8
    13b8:	44810000 	mtc1	at,$f0
    13bc:	00000000 	nop
    13c0:	84860210 	lh	a2,528(a0)
    13c4:	44070000 	mfc1	a3,$f0
    13c8:	0c000000 	jal	0 <func_80AAA250>
    13cc:	afa40018 	sw	a0,24(sp)
    13d0:	8fa40018 	lw	a0,24(sp)
    13d4:	a4820210 	sh	v0,528(a0)
    13d8:	84890210 	lh	t1,528(a0)
    13dc:	10000004 	b	13f0 <func_80AAB5A4+0x9c>
    13e0:	a08900c8 	sb	t1,200(a0)
    13e4:	a48a0210 	sh	t2,528(a0)
    13e8:	848b0210 	lh	t3,528(a0)
    13ec:	a08b00c8 	sb	t3,200(a0)
    13f0:	8fbf0014 	lw	ra,20(sp)
    13f4:	27bd0018 	addiu	sp,sp,24
    13f8:	03e00008 	jr	ra
    13fc:	00000000 	nop

00001400 <EnMd_Init>:
    1400:	27bdffb0 	addiu	sp,sp,-80
    1404:	afb10038 	sw	s1,56(sp)
    1408:	afb00034 	sw	s0,52(sp)
    140c:	00808025 	move	s0,a0
    1410:	00a08825 	move	s1,a1
    1414:	afbf003c 	sw	ra,60(sp)
    1418:	3c060000 	lui	a2,0x0
    141c:	24c60000 	addiu	a2,a2,0
    1420:	24050000 	li	a1,0
    1424:	248400b4 	addiu	a0,a0,180
    1428:	0c000000 	jal	0 <func_80AAA250>
    142c:	3c0741c0 	lui	a3,0x41c0
    1430:	2605014c 	addiu	a1,s0,332
    1434:	3c060000 	lui	a2,0x0
    1438:	260e0258 	addiu	t6,s0,600
    143c:	260f02be 	addiu	t7,s0,702
    1440:	24180011 	li	t8,17
    1444:	afb80018 	sw	t8,24(sp)
    1448:	afaf0014 	sw	t7,20(sp)
    144c:	afae0010 	sw	t6,16(sp)
    1450:	24c60000 	addiu	a2,a2,0
    1454:	afa50044 	sw	a1,68(sp)
    1458:	02202025 	move	a0,s1
    145c:	0c000000 	jal	0 <func_80AAA250>
    1460:	00003825 	move	a3,zero
    1464:	26050194 	addiu	a1,s0,404
    1468:	afa50040 	sw	a1,64(sp)
    146c:	0c000000 	jal	0 <func_80AAA250>
    1470:	02202025 	move	a0,s1
    1474:	3c070000 	lui	a3,0x0
    1478:	8fa50040 	lw	a1,64(sp)
    147c:	24e70020 	addiu	a3,a3,32
    1480:	02202025 	move	a0,s1
    1484:	0c000000 	jal	0 <func_80AAA250>
    1488:	02003025 	move	a2,s0
    148c:	3c060000 	lui	a2,0x0
    1490:	24c6004c 	addiu	a2,a2,76
    1494:	26040098 	addiu	a0,s0,152
    1498:	0c000000 	jal	0 <func_80AAA250>
    149c:	00002825 	move	a1,zero
    14a0:	02002025 	move	a0,s0
    14a4:	0c000000 	jal	0 <func_80AAA250>
    14a8:	02202825 	move	a1,s1
    14ac:	14400005 	bnez	v0,14c4 <EnMd_Init+0xc4>
    14b0:	8fa40044 	lw	a0,68(sp)
    14b4:	0c000000 	jal	0 <func_80AAA250>
    14b8:	02002025 	move	a0,s0
    14bc:	1000004b 	b	15ec <EnMd_Init+0x1ec>
    14c0:	8fbf003c 	lw	ra,60(sp)
    14c4:	3c050000 	lui	a1,0x0
    14c8:	24a50058 	addiu	a1,a1,88
    14cc:	0c000000 	jal	0 <func_80AAA250>
    14d0:	00003025 	move	a2,zero
    14d4:	3c053c23 	lui	a1,0x3c23
    14d8:	34a5d70a 	ori	a1,a1,0xd70a
    14dc:	0c000000 	jal	0 <func_80AAA250>
    14e0:	02002025 	move	a0,s0
    14e4:	c6040024 	lwc1	$f4,36(s0)
    14e8:	24190006 	li	t9,6
    14ec:	240800ff 	li	t0,255
    14f0:	a219001f 	sb	t9,31(s0)
    14f4:	a6080210 	sh	t0,528(s0)
    14f8:	e7a40010 	swc1	$f4,16(sp)
    14fc:	c6060028 	lwc1	$f6,40(s0)
    1500:	24090003 	li	t1,3
    1504:	26241c24 	addiu	a0,s1,7204
    1508:	e7a60014 	swc1	$f6,20(sp)
    150c:	c608002c 	lwc1	$f8,44(s0)
    1510:	afa90028 	sw	t1,40(sp)
    1514:	afa00024 	sw	zero,36(sp)
    1518:	afa00020 	sw	zero,32(sp)
    151c:	afa0001c 	sw	zero,28(sp)
    1520:	02002825 	move	a1,s0
    1524:	02203025 	move	a2,s1
    1528:	24070018 	li	a3,24
    152c:	0c000000 	jal	0 <func_80AAA250>
    1530:	e7a80018 	swc1	$f8,24(sp)
    1534:	862300a4 	lh	v1,164(s1)
    1538:	24040055 	li	a0,85
    153c:	3c020000 	lui	v0,0x0
    1540:	14830004 	bne	a0,v1,1554 <EnMd_Init+0x154>
    1544:	24420000 	addiu	v0,v0,0
    1548:	944a0ed4 	lhu	t2,3796(v0)
    154c:	314b0010 	andi	t3,t2,0x10
    1550:	11600013 	beqz	t3,15a0 <EnMd_Init+0x1a0>
    1554:	3c020000 	lui	v0,0x0
    1558:	1483000a 	bne	a0,v1,1584 <EnMd_Init+0x184>
    155c:	24420000 	addiu	v0,v0,0
    1560:	944c0ed4 	lhu	t4,3796(v0)
    1564:	3c0e0000 	lui	t6,0x0
    1568:	318d0010 	andi	t5,t4,0x10
    156c:	51a00006 	beqzl	t5,1588 <EnMd_Init+0x188>
    1570:	2401005b 	li	at,91
    1574:	8dce0048 	lw	t6,72(t6)
    1578:	8c4f00a4 	lw	t7,164(v0)
    157c:	01cfc024 	and	t8,t6,t7
    1580:	17000007 	bnez	t8,15a0 <EnMd_Init+0x1a0>
    1584:	2401005b 	li	at,91
    1588:	54610010 	bnel	v1,at,15cc <EnMd_Init+0x1cc>
    158c:	24010028 	li	at,40
    1590:	94590ed4 	lhu	t9,3796(v0)
    1594:	33280400 	andi	t0,t9,0x400
    1598:	5500000c 	bnezl	t0,15cc <EnMd_Init+0x1cc>
    159c:	24010028 	li	at,40
    15a0:	8e0a0024 	lw	t2,36(s0)
    15a4:	8e090028 	lw	t1,40(s0)
    15a8:	3c0b0000 	lui	t3,0x0
    15ac:	ae0a0008 	sw	t2,8(s0)
    15b0:	8e0a002c 	lw	t2,44(s0)
    15b4:	256b0000 	addiu	t3,t3,0
    15b8:	ae0b0190 	sw	t3,400(s0)
    15bc:	ae09000c 	sw	t1,12(s0)
    15c0:	10000009 	b	15e8 <EnMd_Init+0x1e8>
    15c4:	ae0a0010 	sw	t2,16(s0)
    15c8:	24010028 	li	at,40
    15cc:	10610003 	beq	v1,at,15dc <EnMd_Init+0x1dc>
    15d0:	02002025 	move	a0,s0
    15d4:	0c000000 	jal	0 <func_80AAA250>
    15d8:	02202825 	move	a1,s1
    15dc:	3c0c0000 	lui	t4,0x0
    15e0:	258c0000 	addiu	t4,t4,0
    15e4:	ae0c0190 	sw	t4,400(s0)
    15e8:	8fbf003c 	lw	ra,60(sp)
    15ec:	8fb00034 	lw	s0,52(sp)
    15f0:	8fb10038 	lw	s1,56(sp)
    15f4:	03e00008 	jr	ra
    15f8:	27bd0050 	addiu	sp,sp,80

000015fc <EnMd_Destroy>:
    15fc:	27bdffe8 	addiu	sp,sp,-24
    1600:	00803025 	move	a2,a0
    1604:	afbf0014 	sw	ra,20(sp)
    1608:	00a02025 	move	a0,a1
    160c:	0c000000 	jal	0 <func_80AAA250>
    1610:	24c50194 	addiu	a1,a2,404
    1614:	8fbf0014 	lw	ra,20(sp)
    1618:	27bd0018 	addiu	sp,sp,24
    161c:	03e00008 	jr	ra
    1620:	00000000 	nop

00001624 <func_80AAB874>:
    1624:	27bdffe0 	addiu	sp,sp,-32
    1628:	afbf001c 	sw	ra,28(sp)
    162c:	afb00018 	sw	s0,24(sp)
    1630:	afa50024 	sw	a1,36(sp)
    1634:	8c8f0154 	lw	t7,340(a0)
    1638:	3c0e0000 	lui	t6,0x0
    163c:	25ce0000 	addiu	t6,t6,0
    1640:	15cf0008 	bne	t6,t7,1664 <func_80AAB874+0x40>
    1644:	00808025 	move	s0,a0
    1648:	00a02025 	move	a0,a1
    164c:	26050214 	addiu	a1,s0,532
    1650:	26060236 	addiu	a2,s0,566
    1654:	0c000000 	jal	0 <func_80AAA250>
    1658:	24070011 	li	a3,17
    165c:	1000000b 	b	168c <func_80AAB874+0x68>
    1660:	00000000 	nop
    1664:	861801e0 	lh	t8,480(s0)
    1668:	17000008 	bnez	t8,168c <func_80AAB874+0x68>
    166c:	00000000 	nop
    1670:	9219020b 	lbu	t9,523(s0)
    1674:	24010007 	li	at,7
    1678:	02002025 	move	a0,s0
    167c:	13210003 	beq	t9,at,168c <func_80AAB874+0x68>
    1680:	00000000 	nop
    1684:	0c000000 	jal	0 <func_80AAA250>
    1688:	24050007 	li	a1,7
    168c:	0c000000 	jal	0 <func_80AAA250>
    1690:	02002025 	move	a0,s0
    1694:	8fbf001c 	lw	ra,28(sp)
    1698:	8fb00018 	lw	s0,24(sp)
    169c:	27bd0020 	addiu	sp,sp,32
    16a0:	03e00008 	jr	ra
    16a4:	00000000 	nop

000016a8 <func_80AAB8F8>:
    16a8:	27bdffe8 	addiu	sp,sp,-24
    16ac:	afbf0014 	sw	ra,20(sp)
    16b0:	afa40018 	sw	a0,24(sp)
    16b4:	afa5001c 	sw	a1,28(sp)
    16b8:	8c980154 	lw	t8,340(a0)
    16bc:	3c0e0000 	lui	t6,0x0
    16c0:	25ce0000 	addiu	t6,t6,0
    16c4:	15d80006 	bne	t6,t8,16e0 <func_80AAB8F8+0x38>
    16c8:	00807825 	move	t7,a0
    16cc:	00a02025 	move	a0,a1
    16d0:	25e50214 	addiu	a1,t7,532
    16d4:	25e60236 	addiu	a2,t7,566
    16d8:	0c000000 	jal	0 <func_80AAA250>
    16dc:	24070011 	li	a3,17
    16e0:	0c000000 	jal	0 <func_80AAA250>
    16e4:	8fa40018 	lw	a0,24(sp)
    16e8:	8fbf0014 	lw	ra,20(sp)
    16ec:	27bd0018 	addiu	sp,sp,24
    16f0:	03e00008 	jr	ra
    16f4:	00000000 	nop

000016f8 <func_80AAB948>:
    16f8:	27bdffd0 	addiu	sp,sp,-48
    16fc:	afbf001c 	sw	ra,28(sp)
    1700:	afb00018 	sw	s0,24(sp)
    1704:	afa50034 	sw	a1,52(sp)
    1708:	8ca21c44 	lw	v0,7236(a1)
    170c:	00808025 	move	s0,a0
    1710:	afa2002c 	sw	v0,44(sp)
    1714:	0c000000 	jal	0 <func_80AAA250>
    1718:	afa20024 	sw	v0,36(sp)
    171c:	860201e0 	lh	v0,480(s0)
    1720:	54400042 	bnezl	v0,182c <func_80AAB948+0x134>
    1724:	24010002 	li	at,2
    1728:	8602008a 	lh	v0,138(s0)
    172c:	26040008 	addiu	a0,s0,8
    1730:	a6020032 	sh	v0,50(s0)
    1734:	a60200b6 	sh	v0,182(s0)
    1738:	8fa50024 	lw	a1,36(sp)
    173c:	0c000000 	jal	0 <func_80AAA250>
    1740:	24a50024 	addiu	a1,a1,36
    1744:	a7a20022 	sh	v0,34(sp)
    1748:	c6040008 	lwc1	$f4,8(s0)
    174c:	00022400 	sll	a0,v0,0x10
    1750:	00042403 	sra	a0,a0,0x10
    1754:	0c000000 	jal	0 <func_80AAA250>
    1758:	e6040024 	swc1	$f4,36(s0)
    175c:	3c014270 	lui	at,0x4270
    1760:	44814000 	mtc1	at,$f8
    1764:	c6060024 	lwc1	$f6,36(s0)
    1768:	c6120010 	lwc1	$f18,16(s0)
    176c:	46004282 	mul.s	$f10,$f8,$f0
    1770:	e612002c 	swc1	$f18,44(s0)
    1774:	460a3400 	add.s	$f16,$f6,$f10
    1778:	e6100024 	swc1	$f16,36(s0)
    177c:	0c000000 	jal	0 <func_80AAA250>
    1780:	87a40022 	lh	a0,34(sp)
    1784:	3c014040 	lui	at,0x4040
    1788:	44816000 	mtc1	at,$f12
    178c:	3c013f80 	lui	at,0x3f80
    1790:	44817000 	mtc1	at,$f14
    1794:	3c014270 	lui	at,0x4270
    1798:	44814000 	mtc1	at,$f8
    179c:	c604002c 	lwc1	$f4,44(s0)
    17a0:	860f008a 	lh	t7,138(s0)
    17a4:	46004182 	mul.s	$f6,$f8,$f0
    17a8:	3c010000 	lui	at,0x0
    17ac:	448f8000 	mtc1	t7,$f16
    17b0:	00000000 	nop
    17b4:	468084a0 	cvt.s.w	$f18,$f16
    17b8:	46062280 	add.s	$f10,$f4,$f6
    17bc:	e60a002c 	swc1	$f10,44(s0)
    17c0:	87b80022 	lh	t8,34(sp)
    17c4:	c42600d8 	lwc1	$f6,216(at)
    17c8:	44984000 	mtc1	t8,$f8
    17cc:	00000000 	nop
    17d0:	46804120 	cvt.s.w	$f4,$f8
    17d4:	46049001 	sub.s	$f0,$f18,$f4
    17d8:	46000005 	abs.s	$f0,$f0
    17dc:	46060282 	mul.s	$f10,$f0,$f6
    17e0:	00000000 	nop
    17e4:	460c5082 	mul.s	$f2,$f10,$f12
    17e8:	460e103c 	c.lt.s	$f2,$f14
    17ec:	00000000 	nop
    17f0:	45000004 	bc1f	1804 <func_80AAB948+0x10c>
    17f4:	00000000 	nop
    17f8:	e60e0168 	swc1	$f14,360(s0)
    17fc:	1000000a 	b	1828 <func_80AAB948+0x130>
    1800:	860201e0 	lh	v0,480(s0)
    1804:	4602603c 	c.lt.s	$f12,$f2
    1808:	00000000 	nop
    180c:	45020004 	bc1fl	1820 <func_80AAB948+0x128>
    1810:	46001006 	mov.s	$f0,$f2
    1814:	10000002 	b	1820 <func_80AAB948+0x128>
    1818:	46006006 	mov.s	$f0,$f12
    181c:	46001006 	mov.s	$f0,$f2
    1820:	e6000168 	swc1	$f0,360(s0)
    1824:	860201e0 	lh	v0,480(s0)
    1828:	24010002 	li	at,2
    182c:	14410032 	bne	v0,at,18f8 <func_80AAB948+0x200>
    1830:	3c030000 	lui	v1,0x0
    1834:	24630000 	addiu	v1,v1,0
    1838:	3c190000 	lui	t9,0x0
    183c:	8f390048 	lw	t9,72(t9)
    1840:	8c6800a4 	lw	t0,164(v1)
    1844:	24050003 	li	a1,3
    1848:	03284824 	and	t1,t9,t0
    184c:	5120000e 	beqzl	t1,1888 <func_80AAB948+0x190>
    1850:	8fa40034 	lw	a0,52(sp)
    1854:	946a0ed6 	lhu	t2,3798(v1)
    1858:	8fa40034 	lw	a0,52(sp)
    185c:	314b1000 	andi	t3,t2,0x1000
    1860:	55600009 	bnezl	t3,1888 <func_80AAB948+0x190>
    1864:	8fa40034 	lw	a0,52(sp)
    1868:	848c00a4 	lh	t4,164(a0)
    186c:	24010055 	li	at,85
    1870:	240d0037 	li	t5,55
    1874:	15810003 	bne	t4,at,1884 <func_80AAB948+0x18c>
    1878:	3c010001 	lui	at,0x1
    187c:	00240821 	addu	at,at,a0
    1880:	a02d03dc 	sb	t5,988(at)
    1884:	8fa40034 	lw	a0,52(sp)
    1888:	24010055 	li	at,85
    188c:	848200a4 	lh	v0,164(a0)
    1890:	54410006 	bnel	v0,at,18ac <func_80AAB948+0x1b4>
    1894:	2401005b 	li	at,91
    1898:	946e0ed4 	lhu	t6,3796(v1)
    189c:	35cf0010 	ori	t7,t6,0x10
    18a0:	a46f0ed4 	sh	t7,3796(v1)
    18a4:	848200a4 	lh	v0,164(a0)
    18a8:	2401005b 	li	at,91
    18ac:	14410004 	bne	v0,at,18c0 <func_80AAB948+0x1c8>
    18b0:	00000000 	nop
    18b4:	94780ed4 	lhu	t8,3796(v1)
    18b8:	37190400 	ori	t9,t8,0x400
    18bc:	a4790ed4 	sh	t9,3796(v1)
    18c0:	0c000000 	jal	0 <func_80AAA250>
    18c4:	02002025 	move	a0,s0
    18c8:	0c000000 	jal	0 <func_80AAA250>
    18cc:	02002025 	move	a0,s0
    18d0:	3c013fc0 	lui	at,0x3fc0
    18d4:	44818000 	mtc1	at,$f16
    18d8:	3c090000 	lui	t1,0x0
    18dc:	24080001 	li	t0,1
    18e0:	25290000 	addiu	t1,t1,0
    18e4:	a6080212 	sh	t0,530(s0)
    18e8:	a60001e0 	sh	zero,480(s0)
    18ec:	ae090190 	sw	t1,400(s0)
    18f0:	1000002e 	b	19ac <func_80AAB948+0x2b4>
    18f4:	e6100068 	swc1	$f16,104(s0)
    18f8:	8e0b0154 	lw	t3,340(s0)
    18fc:	3c0a0000 	lui	t2,0x0
    1900:	254a0000 	addiu	t2,t2,0
    1904:	154b0006 	bne	t2,t3,1920 <func_80AAB948+0x228>
    1908:	8fa40034 	lw	a0,52(sp)
    190c:	26050214 	addiu	a1,s0,532
    1910:	26060236 	addiu	a2,s0,566
    1914:	0c000000 	jal	0 <func_80AAA250>
    1918:	24070011 	li	a3,17
    191c:	860201e0 	lh	v0,480(s0)
    1920:	14400022 	bnez	v0,19ac <func_80AAB948+0x2b4>
    1924:	8fac0034 	lw	t4,52(sp)
    1928:	858d00a4 	lh	t5,164(t4)
    192c:	2401005b 	li	at,91
    1930:	8fa3002c 	lw	v1,44(sp)
    1934:	55a1001e 	bnel	t5,at,19b0 <func_80AAB948+0x2b8>
    1938:	8fbf001c 	lw	ra,28(sp)
    193c:	8c620680 	lw	v0,1664(v1)
    1940:	3c010200 	lui	at,0x200
    1944:	24050022 	li	a1,34
    1948:	000271c0 	sll	t6,v0,0x7
    194c:	05c10009 	bgez	t6,1974 <func_80AAB948+0x27c>
    1950:	00417825 	or	t7,v0,at
    1954:	ac6f0680 	sw	t7,1664(v1)
    1958:	ac7006a8 	sw	s0,1704(v1)
    195c:	0c000000 	jal	0 <func_80AAA250>
    1960:	8fa40034 	lw	a0,52(sp)
    1964:	3c180000 	lui	t8,0x0
    1968:	27180000 	addiu	t8,t8,0
    196c:	1000000f 	b	19ac <func_80AAB948+0x2b4>
    1970:	ae180190 	sw	t8,400(s0)
    1974:	861901d4 	lh	t9,468(s0)
    1978:	3c0141f0 	lui	at,0x41f0
    197c:	44819000 	mtc1	at,$f18
    1980:	44992000 	mtc1	t9,$f4
    1984:	c6080090 	lwc1	$f8,144(s0)
    1988:	3c010080 	lui	at,0x80
    198c:	468021a0 	cvt.s.w	$f6,$f4
    1990:	00414025 	or	t0,v0,at
    1994:	46069280 	add.s	$f10,$f18,$f6
    1998:	460a403c 	c.lt.s	$f8,$f10
    199c:	00000000 	nop
    19a0:	45020003 	bc1fl	19b0 <func_80AAB948+0x2b8>
    19a4:	8fbf001c 	lw	ra,28(sp)
    19a8:	ac680680 	sw	t0,1664(v1)
    19ac:	8fbf001c 	lw	ra,28(sp)
    19b0:	8fb00018 	lw	s0,24(sp)
    19b4:	27bd0030 	addiu	sp,sp,48
    19b8:	03e00008 	jr	ra
    19bc:	00000000 	nop

000019c0 <func_80AABC10>:
    19c0:	27bdffd8 	addiu	sp,sp,-40
    19c4:	3c030001 	lui	v1,0x1
    19c8:	afbf0024 	sw	ra,36(sp)
    19cc:	afb10020 	sw	s1,32(sp)
    19d0:	afb0001c 	sw	s0,28(sp)
    19d4:	00651821 	addu	v1,v1,a1
    19d8:	946304c6 	lhu	v1,1222(v1)
    19dc:	00a08025 	move	s0,a1
    19e0:	00808825 	move	s1,a0
    19e4:	28610004 	slti	at,v1,4
    19e8:	14200009 	bnez	at,1a10 <func_80AABC10+0x50>
    19ec:	8ca21c44 	lw	v0,7236(a1)
    19f0:	3c0e0000 	lui	t6,0x0
    19f4:	25ce0000 	addiu	t6,t6,0
    19f8:	3c010001 	lui	at,0x1
    19fc:	ac8e0190 	sw	t6,400(a0)
    1a00:	00250821 	addu	at,at,a1
    1a04:	240f0004 	li	t7,4
    1a08:	10000027 	b	1aa8 <func_80AABC10+0xe8>
    1a0c:	a42f04c6 	sh	t7,1222(at)
    1a10:	24010003 	li	at,3
    1a14:	14610020 	bne	v1,at,1a98 <func_80AABC10+0xd8>
    1a18:	3c070000 	lui	a3,0x0
    1a1c:	3c180000 	lui	t8,0x0
    1a20:	24e70000 	addiu	a3,a3,0
    1a24:	27180000 	addiu	t8,t8,0
    1a28:	3c050000 	lui	a1,0x0
    1a2c:	24a50000 	addiu	a1,a1,0
    1a30:	afb80014 	sw	t8,20(sp)
    1a34:	afa70010 	sw	a3,16(sp)
    1a38:	24044802 	li	a0,18434
    1a3c:	0c000000 	jal	0 <func_80AAA250>
    1a40:	24060004 	li	a2,4
    1a44:	862801d4 	lh	t0,468(s1)
    1a48:	3c0141f0 	lui	at,0x41f0
    1a4c:	44814000 	mtc1	at,$f8
    1a50:	44882000 	mtc1	t0,$f4
    1a54:	24191067 	li	t9,4199
    1a58:	a639010e 	sh	t9,270(s1)
    1a5c:	468021a0 	cvt.s.w	$f6,$f4
    1a60:	02202025 	move	a0,s1
    1a64:	02002825 	move	a1,s0
    1a68:	46083280 	add.s	$f10,$f6,$f8
    1a6c:	44065000 	mfc1	a2,$f10
    1a70:	0c000000 	jal	0 <func_80AAA250>
    1a74:	00000000 	nop
    1a78:	3c090000 	lui	t1,0x0
    1a7c:	25290000 	addiu	t1,t1,0
    1a80:	3c010001 	lui	at,0x1
    1a84:	ae290190 	sw	t1,400(s1)
    1a88:	00300821 	addu	at,at,s0
    1a8c:	240a0004 	li	t2,4
    1a90:	10000005 	b	1aa8 <func_80AABC10+0xe8>
    1a94:	a42a04c6 	sh	t2,1222(at)
    1a98:	8c4b0680 	lw	t3,1664(v0)
    1a9c:	3c010080 	lui	at,0x80
    1aa0:	01616025 	or	t4,t3,at
    1aa4:	ac4c0680 	sw	t4,1664(v0)
    1aa8:	8fbf0024 	lw	ra,36(sp)
    1aac:	8fb0001c 	lw	s0,28(sp)
    1ab0:	8fb10020 	lw	s1,32(sp)
    1ab4:	03e00008 	jr	ra
    1ab8:	27bd0028 	addiu	sp,sp,40

00001abc <func_80AABD0C>:
    1abc:	27bdffe0 	addiu	sp,sp,-32
    1ac0:	afb00018 	sw	s0,24(sp)
    1ac4:	00808025 	move	s0,a0
    1ac8:	afbf001c 	sw	ra,28(sp)
    1acc:	afa50024 	sw	a1,36(sp)
    1ad0:	00a02025 	move	a0,a1
    1ad4:	26050214 	addiu	a1,s0,532
    1ad8:	26060236 	addiu	a2,s0,566
    1adc:	0c000000 	jal	0 <func_80AAA250>
    1ae0:	24070011 	li	a3,17
    1ae4:	0c000000 	jal	0 <func_80AAA250>
    1ae8:	02002025 	move	a0,s0
    1aec:	02002025 	move	a0,s0
    1af0:	0c000000 	jal	0 <func_80AAA250>
    1af4:	8fa50024 	lw	a1,36(sp)
    1af8:	50400007 	beqzl	v0,1b18 <func_80AABD0C+0x5c>
    1afc:	8a180030 	lwl	t8,48(s0)
    1b00:	860e0212 	lh	t6,530(s0)
    1b04:	3c020000 	lui	v0,0x0
    1b08:	24420000 	addiu	v0,v0,0
    1b0c:	11c00008 	beqz	t6,1b30 <func_80AABD0C+0x74>
    1b10:	3c190000 	lui	t9,0x0
    1b14:	8a180030 	lwl	t8,48(s0)
    1b18:	9a180033 	lwr	t8,51(s0)
    1b1c:	aa1800b4 	swl	t8,180(s0)
    1b20:	ba1800b7 	swr	t8,183(s0)
    1b24:	96180034 	lhu	t8,52(s0)
    1b28:	10000029 	b	1bd0 <func_80AABD0C+0x114>
    1b2c:	a61800b8 	sh	t8,184(s0)
    1b30:	8f390048 	lw	t9,72(t9)
    1b34:	8c4800a4 	lw	t0,164(v0)
    1b38:	02002025 	move	a0,s0
    1b3c:	03284824 	and	t1,t9,t0
    1b40:	11200015 	beqz	t1,1b98 <func_80AABD0C+0xdc>
    1b44:	00000000 	nop
    1b48:	944a0ed6 	lhu	t2,3798(v0)
    1b4c:	8fac0024 	lw	t4,36(sp)
    1b50:	314b1000 	andi	t3,t2,0x1000
    1b54:	15600010 	bnez	t3,1b98 <func_80AABD0C+0xdc>
    1b58:	00000000 	nop
    1b5c:	858d00a4 	lh	t5,164(t4)
    1b60:	24010055 	li	at,85
    1b64:	15a1000c 	bne	t5,at,1b98 <func_80AABD0C+0xdc>
    1b68:	00000000 	nop
    1b6c:	0c000000 	jal	0 <func_80AAA250>
    1b70:	01802025 	move	a0,t4
    1b74:	3c020000 	lui	v0,0x0
    1b78:	24420000 	addiu	v0,v0,0
    1b7c:	944e0ed6 	lhu	t6,3798(v0)
    1b80:	02002025 	move	a0,s0
    1b84:	35cf1000 	ori	t7,t6,0x1000
    1b88:	0c000000 	jal	0 <func_80AAA250>
    1b8c:	a44f0ed6 	sh	t7,3798(v0)
    1b90:	10000010 	b	1bd4 <func_80AABD0C+0x118>
    1b94:	8fbf001c 	lw	ra,28(sp)
    1b98:	0c000000 	jal	0 <func_80AAA250>
    1b9c:	2405000b 	li	a1,11
    1ba0:	8e190024 	lw	t9,36(s0)
    1ba4:	44800000 	mtc1	zero,$f0
    1ba8:	8e180028 	lw	t8,40(s0)
    1bac:	ae190008 	sw	t9,8(s0)
    1bb0:	8e19002c 	lw	t9,44(s0)
    1bb4:	3c080000 	lui	t0,0x0
    1bb8:	25080000 	addiu	t0,t0,0
    1bbc:	ae080190 	sw	t0,400(s0)
    1bc0:	e6000168 	swc1	$f0,360(s0)
    1bc4:	e6000068 	swc1	$f0,104(s0)
    1bc8:	ae18000c 	sw	t8,12(s0)
    1bcc:	ae190010 	sw	t9,16(s0)
    1bd0:	8fbf001c 	lw	ra,28(sp)
    1bd4:	8fb00018 	lw	s0,24(sp)
    1bd8:	27bd0020 	addiu	sp,sp,32
    1bdc:	03e00008 	jr	ra
    1be0:	00000000 	nop

00001be4 <EnMd_Update>:
    1be4:	27bdffc8 	addiu	sp,sp,-56
    1be8:	afb0001c 	sw	s0,28(sp)
    1bec:	00808025 	move	s0,a0
    1bf0:	afb10020 	sw	s1,32(sp)
    1bf4:	00a08825 	move	s1,a1
    1bf8:	afbf0024 	sw	ra,36(sp)
    1bfc:	26060194 	addiu	a2,s0,404
    1c00:	00c02825 	move	a1,a2
    1c04:	0c000000 	jal	0 <func_80AAA250>
    1c08:	afa6002c 	sw	a2,44(sp)
    1c0c:	3c010001 	lui	at,0x1
    1c10:	34211e60 	ori	at,at,0x1e60
    1c14:	8fa6002c 	lw	a2,44(sp)
    1c18:	02212821 	addu	a1,s1,at
    1c1c:	0c000000 	jal	0 <func_80AAA250>
    1c20:	02202025 	move	a0,s1
    1c24:	0c000000 	jal	0 <func_80AAA250>
    1c28:	2604014c 	addiu	a0,s0,332
    1c2c:	0c000000 	jal	0 <func_80AAA250>
    1c30:	02002025 	move	a0,s0
    1c34:	02002025 	move	a0,s0
    1c38:	0c000000 	jal	0 <func_80AAA250>
    1c3c:	02202825 	move	a1,s1
    1c40:	0c000000 	jal	0 <func_80AAA250>
    1c44:	02002025 	move	a0,s0
    1c48:	02002025 	move	a0,s0
    1c4c:	0c000000 	jal	0 <func_80AAA250>
    1c50:	02202825 	move	a1,s1
    1c54:	44800000 	mtc1	zero,$f0
    1c58:	240e0004 	li	t6,4
    1c5c:	afae0014 	sw	t6,20(sp)
    1c60:	44060000 	mfc1	a2,$f0
    1c64:	44070000 	mfc1	a3,$f0
    1c68:	02202025 	move	a0,s1
    1c6c:	02002825 	move	a1,s0
    1c70:	0c000000 	jal	0 <func_80AAA250>
    1c74:	e7a00010 	swc1	$f0,16(sp)
    1c78:	8e190190 	lw	t9,400(s0)
    1c7c:	02002025 	move	a0,s0
    1c80:	02202825 	move	a1,s1
    1c84:	0320f809 	jalr	t9
    1c88:	00000000 	nop
    1c8c:	8fbf0024 	lw	ra,36(sp)
    1c90:	8fb0001c 	lw	s0,28(sp)
    1c94:	8fb10020 	lw	s1,32(sp)
    1c98:	03e00008 	jr	ra
    1c9c:	27bd0038 	addiu	sp,sp,56

00001ca0 <EnMd_OverrideLimbDraw>:
    1ca0:	27bdffc8 	addiu	sp,sp,-56
    1ca4:	afb00018 	sw	s0,24(sp)
    1ca8:	24010010 	li	at,16
    1cac:	00a08025 	move	s0,a1
    1cb0:	afbf001c 	sw	ra,28(sp)
    1cb4:	afa40038 	sw	a0,56(sp)
    1cb8:	afa60040 	sw	a2,64(sp)
    1cbc:	14a1002d 	bne	a1,at,1d74 <EnMd_OverrideLimbDraw+0xd4>
    1cc0:	afa70044 	sw	a3,68(sp)
    1cc4:	44807000 	mtc1	zero,$f14
    1cc8:	3c014496 	lui	at,0x4496
    1ccc:	44816000 	mtc1	at,$f12
    1cd0:	44067000 	mfc1	a2,$f14
    1cd4:	0c000000 	jal	0 <func_80AAA250>
    1cd8:	24070001 	li	a3,1
    1cdc:	8faf004c 	lw	t7,76(sp)
    1ce0:	27ae002c 	addiu	t6,sp,44
    1ce4:	3c014700 	lui	at,0x4700
    1ce8:	89f901e8 	lwl	t9,488(t7)
    1cec:	99f901eb 	lwr	t9,491(t7)
    1cf0:	44814000 	mtc1	at,$f8
    1cf4:	3c010000 	lui	at,0x0
    1cf8:	add90000 	sw	t9,0(t6)
    1cfc:	95f901ec 	lhu	t9,492(t7)
    1d00:	24050001 	li	a1,1
    1d04:	a5d90004 	sh	t9,4(t6)
    1d08:	87a8002e 	lh	t0,46(sp)
    1d0c:	c43000dc 	lwc1	$f16,220(at)
    1d10:	44882000 	mtc1	t0,$f4
    1d14:	00000000 	nop
    1d18:	468021a0 	cvt.s.w	$f6,$f4
    1d1c:	46083283 	div.s	$f10,$f6,$f8
    1d20:	46105302 	mul.s	$f12,$f10,$f16
    1d24:	0c000000 	jal	0 <func_80AAA250>
    1d28:	00000000 	nop
    1d2c:	87a9002c 	lh	t1,44(sp)
    1d30:	3c014700 	lui	at,0x4700
    1d34:	44813000 	mtc1	at,$f6
    1d38:	44899000 	mtc1	t1,$f18
    1d3c:	3c010000 	lui	at,0x0
    1d40:	c42a00e0 	lwc1	$f10,224(at)
    1d44:	46809120 	cvt.s.w	$f4,$f18
    1d48:	24050001 	li	a1,1
    1d4c:	46062203 	div.s	$f8,$f4,$f6
    1d50:	460a4302 	mul.s	$f12,$f8,$f10
    1d54:	0c000000 	jal	0 <func_80AAA250>
    1d58:	00000000 	nop
    1d5c:	44807000 	mtc1	zero,$f14
    1d60:	3c01c496 	lui	at,0xc496
    1d64:	44816000 	mtc1	at,$f12
    1d68:	44067000 	mfc1	a2,$f14
    1d6c:	0c000000 	jal	0 <func_80AAA250>
    1d70:	24070001 	li	a3,1
    1d74:	24010009 	li	at,9
    1d78:	16010020 	bne	s0,at,1dfc <EnMd_OverrideLimbDraw+0x15c>
    1d7c:	8fab004c 	lw	t3,76(sp)
    1d80:	896d01ee 	lwl	t5,494(t3)
    1d84:	996d01f1 	lwr	t5,497(t3)
    1d88:	27aa002c 	addiu	t2,sp,44
    1d8c:	3c014700 	lui	at,0x4700
    1d90:	ad4d0000 	sw	t5,0(t2)
    1d94:	956d01f2 	lhu	t5,498(t3)
    1d98:	44812000 	mtc1	at,$f4
    1d9c:	3c010000 	lui	at,0x0
    1da0:	a54d0004 	sh	t5,4(t2)
    1da4:	87ae002c 	lh	t6,44(sp)
    1da8:	c42800e4 	lwc1	$f8,228(at)
    1dac:	24050001 	li	a1,1
    1db0:	448e8000 	mtc1	t6,$f16
    1db4:	00000000 	nop
    1db8:	468084a0 	cvt.s.w	$f18,$f16
    1dbc:	46049183 	div.s	$f6,$f18,$f4
    1dc0:	46083302 	mul.s	$f12,$f6,$f8
    1dc4:	0c000000 	jal	0 <func_80AAA250>
    1dc8:	00000000 	nop
    1dcc:	87af002e 	lh	t7,46(sp)
    1dd0:	3c014700 	lui	at,0x4700
    1dd4:	44819000 	mtc1	at,$f18
    1dd8:	448f5000 	mtc1	t7,$f10
    1ddc:	3c010000 	lui	at,0x0
    1de0:	c42600e8 	lwc1	$f6,232(at)
    1de4:	46805420 	cvt.s.w	$f16,$f10
    1de8:	24050001 	li	a1,1
    1dec:	46128103 	div.s	$f4,$f16,$f18
    1df0:	46062302 	mul.s	$f12,$f4,$f6
    1df4:	0c000000 	jal	0 <func_80AAA250>
    1df8:	00000000 	nop
    1dfc:	24010009 	li	at,9
    1e00:	12010005 	beq	s0,at,1e18 <EnMd_OverrideLimbDraw+0x178>
    1e04:	8fb8004c 	lw	t8,76(sp)
    1e08:	2401000a 	li	at,10
    1e0c:	12010002 	beq	s0,at,1e18 <EnMd_OverrideLimbDraw+0x178>
    1e10:	2401000d 	li	at,13
    1e14:	16010022 	bne	s0,at,1ea0 <EnMd_OverrideLimbDraw+0x200>
    1e18:	0010c840 	sll	t9,s0,0x1
    1e1c:	03191821 	addu	v1,t8,t9
    1e20:	84640214 	lh	a0,532(v1)
    1e24:	0c000000 	jal	0 <func_80AAA250>
    1e28:	afa30024 	sw	v1,36(sp)
    1e2c:	8fa20048 	lw	v0,72(sp)
    1e30:	3c014348 	lui	at,0x4348
    1e34:	44818000 	mtc1	at,$f16
    1e38:	84480002 	lh	t0,2(v0)
    1e3c:	8fa30024 	lw	v1,36(sp)
    1e40:	46100482 	mul.s	$f18,$f0,$f16
    1e44:	44884000 	mtc1	t0,$f8
    1e48:	00000000 	nop
    1e4c:	468042a0 	cvt.s.w	$f10,$f8
    1e50:	46125100 	add.s	$f4,$f10,$f18
    1e54:	4600218d 	trunc.w.s	$f6,$f4
    1e58:	440a3000 	mfc1	t2,$f6
    1e5c:	00000000 	nop
    1e60:	a44a0002 	sh	t2,2(v0)
    1e64:	0c000000 	jal	0 <func_80AAA250>
    1e68:	84640236 	lh	a0,566(v1)
    1e6c:	8fa20048 	lw	v0,72(sp)
    1e70:	3c014348 	lui	at,0x4348
    1e74:	44815000 	mtc1	at,$f10
    1e78:	844b0004 	lh	t3,4(v0)
    1e7c:	460a0482 	mul.s	$f18,$f0,$f10
    1e80:	448b4000 	mtc1	t3,$f8
    1e84:	00000000 	nop
    1e88:	46804420 	cvt.s.w	$f16,$f8
    1e8c:	46128100 	add.s	$f4,$f16,$f18
    1e90:	4600218d 	trunc.w.s	$f6,$f4
    1e94:	440d3000 	mfc1	t5,$f6
    1e98:	00000000 	nop
    1e9c:	a44d0004 	sh	t5,4(v0)
    1ea0:	8fbf001c 	lw	ra,28(sp)
    1ea4:	8fb00018 	lw	s0,24(sp)
    1ea8:	27bd0038 	addiu	sp,sp,56
    1eac:	03e00008 	jr	ra
    1eb0:	00001025 	move	v0,zero

00001eb4 <EnMd_PostLimbDraw>:
    1eb4:	27bdffd8 	addiu	sp,sp,-40
    1eb8:	3c0e0000 	lui	t6,0x0
    1ebc:	afbf0014 	sw	ra,20(sp)
    1ec0:	afa40028 	sw	a0,40(sp)
    1ec4:	afa60030 	sw	a2,48(sp)
    1ec8:	afa70034 	sw	a3,52(sp)
    1ecc:	25ce01a8 	addiu	t6,t6,424
    1ed0:	8dd80000 	lw	t8,0(t6)
    1ed4:	27a40018 	addiu	a0,sp,24
    1ed8:	24010010 	li	at,16
    1edc:	ac980000 	sw	t8,0(a0)
    1ee0:	8dcf0004 	lw	t7,4(t6)
    1ee4:	ac8f0004 	sw	t7,4(a0)
    1ee8:	8dd80008 	lw	t8,8(t6)
    1eec:	14a10004 	bne	a1,at,1f00 <EnMd_PostLimbDraw+0x4c>
    1ef0:	ac980008 	sw	t8,8(a0)
    1ef4:	8fa50038 	lw	a1,56(sp)
    1ef8:	0c000000 	jal	0 <func_80AAA250>
    1efc:	24a50038 	addiu	a1,a1,56
    1f00:	8fbf0014 	lw	ra,20(sp)
    1f04:	27bd0028 	addiu	sp,sp,40
    1f08:	03e00008 	jr	ra
    1f0c:	00000000 	nop

00001f10 <EnMd_Draw>:
    1f10:	27bdffb0 	addiu	sp,sp,-80
    1f14:	afbf0024 	sw	ra,36(sp)
    1f18:	afb00020 	sw	s0,32(sp)
    1f1c:	afa50054 	sw	a1,84(sp)
    1f20:	8ca50000 	lw	a1,0(a1)
    1f24:	00808025 	move	s0,a0
    1f28:	3c060000 	lui	a2,0x0
    1f2c:	24c60000 	addiu	a2,a2,0
    1f30:	27a40038 	addiu	a0,sp,56
    1f34:	24070500 	li	a3,1280
    1f38:	0c000000 	jal	0 <func_80AAA250>
    1f3c:	afa50048 	sw	a1,72(sp)
    1f40:	86020210 	lh	v0,528(s0)
    1f44:	240100ff 	li	at,255
    1f48:	8fa80048 	lw	t0,72(sp)
    1f4c:	14410024 	bne	v0,at,1fe0 <EnMd_Draw+0xd0>
    1f50:	3c18db06 	lui	t8,0xdb06
    1f54:	8d0302c0 	lw	v1,704(t0)
    1f58:	37180020 	ori	t8,t8,0x20
    1f5c:	3c040000 	lui	a0,0x0
    1f60:	246f0008 	addiu	t7,v1,8
    1f64:	ad0f02c0 	sw	t7,704(t0)
    1f68:	ac780000 	sw	t8,0(v1)
    1f6c:	8619020e 	lh	t9,526(s0)
    1f70:	3c0e0000 	lui	t6,0x0
    1f74:	3c0100ff 	lui	at,0xff
    1f78:	00194880 	sll	t1,t9,0x2
    1f7c:	00892021 	addu	a0,a0,t1
    1f80:	8c8401b4 	lw	a0,436(a0)
    1f84:	3421ffff 	ori	at,at,0xffff
    1f88:	3c060000 	lui	a2,0x0
    1f8c:	00045900 	sll	t3,a0,0x4
    1f90:	000b6702 	srl	t4,t3,0x1c
    1f94:	000c6880 	sll	t5,t4,0x2
    1f98:	01cd7021 	addu	t6,t6,t5
    1f9c:	8dce0000 	lw	t6,0(t6)
    1fa0:	00815024 	and	t2,a0,at
    1fa4:	3c018000 	lui	at,0x8000
    1fa8:	014e7821 	addu	t7,t2,t6
    1fac:	01e1c021 	addu	t8,t7,at
    1fb0:	ac780004 	sw	t8,4(v1)
    1fb4:	afb00010 	sw	s0,16(sp)
    1fb8:	86190210 	lh	t9,528(s0)
    1fbc:	3c070000 	lui	a3,0x0
    1fc0:	24e70000 	addiu	a3,a3,0
    1fc4:	8fa40054 	lw	a0,84(sp)
    1fc8:	24c60000 	addiu	a2,a2,0
    1fcc:	2605014c 	addiu	a1,s0,332
    1fd0:	0c000000 	jal	0 <func_80AAA250>
    1fd4:	afb90014 	sw	t9,20(sp)
    1fd8:	10000025 	b	2070 <EnMd_Draw+0x160>
    1fdc:	8fad0054 	lw	t5,84(sp)
    1fe0:	10400022 	beqz	v0,206c <EnMd_Draw+0x15c>
    1fe4:	3c0bdb06 	lui	t3,0xdb06
    1fe8:	8d0302d0 	lw	v1,720(t0)
    1fec:	356b0020 	ori	t3,t3,0x20
    1ff0:	3c040000 	lui	a0,0x0
    1ff4:	24690008 	addiu	t1,v1,8
    1ff8:	ad0902d0 	sw	t1,720(t0)
    1ffc:	ac6b0000 	sw	t3,0(v1)
    2000:	860c020e 	lh	t4,526(s0)
    2004:	3c190000 	lui	t9,0x0
    2008:	3c0100ff 	lui	at,0xff
    200c:	000c6880 	sll	t5,t4,0x2
    2010:	008d2021 	addu	a0,a0,t5
    2014:	8c8401b4 	lw	a0,436(a0)
    2018:	3421ffff 	ori	at,at,0xffff
    201c:	3c060000 	lui	a2,0x0
    2020:	00047100 	sll	t6,a0,0x4
    2024:	000e7f02 	srl	t7,t6,0x1c
    2028:	000fc080 	sll	t8,t7,0x2
    202c:	0338c821 	addu	t9,t9,t8
    2030:	8f390000 	lw	t9,0(t9)
    2034:	00815024 	and	t2,a0,at
    2038:	3c018000 	lui	at,0x8000
    203c:	01594821 	addu	t1,t2,t9
    2040:	01215821 	addu	t3,t1,at
    2044:	ac6b0004 	sw	t3,4(v1)
    2048:	afb00010 	sw	s0,16(sp)
    204c:	860c0210 	lh	t4,528(s0)
    2050:	3c070000 	lui	a3,0x0
    2054:	24e70000 	addiu	a3,a3,0
    2058:	8fa40054 	lw	a0,84(sp)
    205c:	24c60000 	addiu	a2,a2,0
    2060:	2605014c 	addiu	a1,s0,332
    2064:	0c000000 	jal	0 <func_80AAA250>
    2068:	afac0014 	sw	t4,20(sp)
    206c:	8fad0054 	lw	t5,84(sp)
    2070:	3c060000 	lui	a2,0x0
    2074:	24c60010 	addiu	a2,a2,16
    2078:	27a40038 	addiu	a0,sp,56
    207c:	24070525 	li	a3,1317
    2080:	0c000000 	jal	0 <func_80AAA250>
    2084:	8da50000 	lw	a1,0(t5)
    2088:	8fbf0024 	lw	ra,36(sp)
    208c:	8fb00020 	lw	s0,32(sp)
    2090:	27bd0050 	addiu	sp,sp,80
    2094:	03e00008 	jr	ra
    2098:	00000000 	nop
    209c:	00000000 	nop
