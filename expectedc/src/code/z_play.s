
build/src/code/z_play.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800BC450>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afbf0014 	sw	ra,20(sp)
       8:	848e07a0 	lh	t6,1952(a0)
       c:	00803025 	move	a2,a0
      10:	3c050001 	lui	a1,0x1
      14:	00a62821 	addu	a1,a1,a2
      18:	90a5242b 	lbu	a1,9259(a1)
      1c:	000e7880 	sll	t7,t6,0x2
      20:	008fc021 	addu	t8,a0,t7
      24:	8f040790 	lw	a0,1936(t8)
      28:	0c000000 	jal	0 <func_800BC450>
      2c:	24a5ffff 	addiu	a1,a1,-1
      30:	8fbf0014 	lw	ra,20(sp)
      34:	27bd0018 	addiu	sp,sp,24
      38:	03e00008 	jr	ra
      3c:	00000000 	nop

00000040 <func_800BC490>:
      40:	27bdffe0 	addiu	sp,sp,-32
      44:	00053c00 	sll	a3,a1,0x10
      48:	00073c03 	sra	a3,a3,0x10
      4c:	24010001 	li	at,1
      50:	afbf001c 	sw	ra,28(sp)
      54:	afa40020 	sw	a0,32(sp)
      58:	10e1000b 	beq	a3,at,88 <func_800BC490+0x48>
      5c:	afa50024 	sw	a1,36(sp)
      60:	24010002 	li	at,2
      64:	10e10008 	beq	a3,at,88 <func_800BC490+0x48>
      68:	3c040000 	lui	a0,0x0
      6c:	3c050000 	lui	a1,0x0
      70:	24a5001c 	addiu	a1,a1,28
      74:	24840000 	addiu	a0,a0,0
      78:	24060870 	li	a2,2160
      7c:	0c000000 	jal	0 <func_800BC450>
      80:	a7a70026 	sh	a3,38(sp)
      84:	87a70026 	lh	a3,38(sp)
      88:	8fae0020 	lw	t6,32(sp)
      8c:	3c010001 	lui	at,0x1
      90:	3c0f0000 	lui	t7,0x0
      94:	002e0821 	addu	at,at,t6
      98:	a027242b 	sb	a3,9259(at)
      9c:	8def0000 	lw	t7,0(t7)
      a0:	24010010 	li	at,16
      a4:	3c190000 	lui	t9,0x0
      a8:	85f804b2 	lh	t8,1202(t7)
      ac:	13010015 	beq	t8,at,104 <func_800BC490+0xc4>
      b0:	00000000 	nop
      b4:	8f390008 	lw	t9,8(t9)
      b8:	3401fff0 	li	at,0xfff0
      bc:	3c050000 	lui	a1,0x0
      c0:	0321082a 	slt	at,t9,at
      c4:	1020000f 	beqz	at,104 <func_800BC490+0xc4>
      c8:	24a50000 	addiu	a1,a1,0
      cc:	24010001 	li	at,1
      d0:	14e10003 	bne	a3,at,e0 <func_800BC490+0xa0>
      d4:	24060004 	li	a2,4
      d8:	10000002 	b	e4 <func_800BC490+0xa4>
      dc:	24024814 	li	v0,18452
      e0:	24024813 	li	v0,18451
      e4:	3c070000 	lui	a3,0x0
      e8:	3c080000 	lui	t0,0x0
      ec:	25080000 	addiu	t0,t0,0
      f0:	24e70000 	addiu	a3,a3,0
      f4:	afa70010 	sw	a3,16(sp)
      f8:	afa80014 	sw	t0,20(sp)
      fc:	0c000000 	jal	0 <func_800BC450>
     100:	3044ffff 	andi	a0,v0,0xffff
     104:	0c000000 	jal	0 <func_800BC450>
     108:	8fa40020 	lw	a0,32(sp)
     10c:	8fbf001c 	lw	ra,28(sp)
     110:	27bd0020 	addiu	sp,sp,32
     114:	03e00008 	jr	ra
     118:	00000000 	nop

0000011c <func_800BC56C>:
     11c:	3c0e0001 	lui	t6,0x1
     120:	afa50004 	sw	a1,4(sp)
     124:	01c47021 	addu	t6,t6,a0
     128:	91ce242b 	lbu	t6,9259(t6)
     12c:	00052c00 	sll	a1,a1,0x10
     130:	00052c03 	sra	a1,a1,0x10
     134:	00ae1026 	xor	v0,a1,t6
     138:	03e00008 	jr	ra
     13c:	2c420001 	sltiu	v0,v0,1

00000140 <func_800BC590>:
     140:	27bdffe8 	addiu	sp,sp,-24
     144:	afa40018 	sw	a0,24(sp)
     148:	afbf0014 	sw	ra,20(sp)
     14c:	3c040000 	lui	a0,0x0
     150:	0c000000 	jal	0 <func_800BC450>
     154:	24840028 	addiu	a0,a0,40
     158:	3c0e0000 	lui	t6,0x0
     15c:	8dce0000 	lw	t6,0(t6)
     160:	24010010 	li	at,16
     164:	8fb90018 	lw	t9,24(sp)
     168:	85cf04b2 	lh	t7,1202(t6)
     16c:	15e10004 	bne	t7,at,180 <func_800BC590+0x40>
     170:	3c010001 	lui	at,0x1
     174:	00390821 	addu	at,at,t9
     178:	24180002 	li	t8,2
     17c:	a038242b 	sb	t8,9259(at)
     180:	8fbf0014 	lw	ra,20(sp)
     184:	27bd0018 	addiu	sp,sp,24
     188:	03e00008 	jr	ra
     18c:	00000000 	nop

00000190 <func_800BC5E0>:
     190:	27bdffe0 	addiu	sp,sp,-32
     194:	3c010001 	lui	at,0x1
     198:	00803025 	move	a2,a0
     19c:	342121c8 	ori	at,at,0x21c8
     1a0:	afbf0014 	sw	ra,20(sp)
     1a4:	afa50024 	sw	a1,36(sp)
     1a8:	00812021 	addu	a0,a0,at
     1ac:	afa40018 	sw	a0,24(sp)
     1b0:	24050250 	li	a1,592
     1b4:	0c000000 	jal	0 <func_800BC450>
     1b8:	afa60020 	sw	a2,32(sp)
     1bc:	8fa20024 	lw	v0,36(sp)
     1c0:	8fa40018 	lw	a0,24(sp)
     1c4:	8fa60020 	lw	a2,32(sp)
     1c8:	24010001 	li	at,1
     1cc:	00027143 	sra	t6,v0,0x5
     1d0:	15c1001d 	bne	t6,at,248 <func_800BC5E0+0xb8>
     1d4:	ac820228 	sw	v0,552(a0)
     1d8:	3c0f0000 	lui	t7,0x0
     1dc:	3c180000 	lui	t8,0x0
     1e0:	3c190000 	lui	t9,0x0
     1e4:	3c080000 	lui	t0,0x0
     1e8:	3c090000 	lui	t1,0x0
     1ec:	3c0a0000 	lui	t2,0x0
     1f0:	3c0b0000 	lui	t3,0x0
     1f4:	3c0c0000 	lui	t4,0x0
     1f8:	3c0d0000 	lui	t5,0x0
     1fc:	25ef0000 	addiu	t7,t7,0
     200:	27180000 	addiu	t8,t8,0
     204:	27390000 	addiu	t9,t9,0
     208:	25080000 	addiu	t0,t0,0
     20c:	25290000 	addiu	t1,t1,0
     210:	254a0000 	addiu	t2,t2,0
     214:	256b0000 	addiu	t3,t3,0
     218:	258c0000 	addiu	t4,t4,0
     21c:	25ad0000 	addiu	t5,t5,0
     220:	ac8f022c 	sw	t7,556(a0)
     224:	ac980230 	sw	t8,560(a0)
     228:	ac99023c 	sw	t9,572(a0)
     22c:	ac88024c 	sw	t0,588(a0)
     230:	ac890238 	sw	t1,568(a0)
     234:	ac8a0234 	sw	t2,564(a0)
     238:	ac8b0240 	sw	t3,576(a0)
     23c:	ac8c0244 	sw	t4,580(a0)
     240:	1000007a 	b	42c <L800BC85C+0x20>
     244:	ac8d0248 	sw	t5,584(a0)
     248:	8c8e0228 	lw	t6,552(a0)
     24c:	240508f2 	li	a1,2290
     250:	2dc10014 	sltiu	at,t6,20
     254:	10200072 	beqz	at,420 <L800BC85C+0x14>
     258:	000e7080 	sll	t6,t6,0x2
     25c:	3c010000 	lui	at,0x0
     260:	002e0821 	addu	at,at,t6
     264:	8c2e0000 	lw	t6,0(at)
     268:	01c00008 	jr	t6
     26c:	00000000 	nop

00000270 <L800BC6C0>:
     270:	3c0f0000 	lui	t7,0x0
     274:	3c180000 	lui	t8,0x0
     278:	3c190000 	lui	t9,0x0
     27c:	3c080000 	lui	t0,0x0
     280:	3c090000 	lui	t1,0x0
     284:	3c0a0000 	lui	t2,0x0
     288:	3c0b0000 	lui	t3,0x0
     28c:	3c0c0000 	lui	t4,0x0
     290:	25ef0000 	addiu	t7,t7,0
     294:	27180000 	addiu	t8,t8,0
     298:	27390000 	addiu	t9,t9,0
     29c:	25080000 	addiu	t0,t0,0
     2a0:	25290000 	addiu	t1,t1,0
     2a4:	254a0000 	addiu	t2,t2,0
     2a8:	256b0000 	addiu	t3,t3,0
     2ac:	258c0000 	addiu	t4,t4,0
     2b0:	ac8f022c 	sw	t7,556(a0)
     2b4:	ac980230 	sw	t8,560(a0)
     2b8:	ac99023c 	sw	t9,572(a0)
     2bc:	ac88024c 	sw	t0,588(a0)
     2c0:	ac890238 	sw	t1,568(a0)
     2c4:	ac8a0234 	sw	t2,564(a0)
     2c8:	ac8b0240 	sw	t3,576(a0)
     2cc:	ac8c0244 	sw	t4,580(a0)
     2d0:	10000056 	b	42c <L800BC85C+0x20>
     2d4:	ac800248 	sw	zero,584(a0)

000002d8 <L800BC728>:
     2d8:	3c0d0000 	lui	t5,0x0
     2dc:	3c0e0000 	lui	t6,0x0
     2e0:	3c0f0000 	lui	t7,0x0
     2e4:	3c180000 	lui	t8,0x0
     2e8:	3c190000 	lui	t9,0x0
     2ec:	3c080000 	lui	t0,0x0
     2f0:	3c090000 	lui	t1,0x0
     2f4:	3c0a0000 	lui	t2,0x0
     2f8:	25ad0000 	addiu	t5,t5,0
     2fc:	25ce0000 	addiu	t6,t6,0
     300:	25ef0000 	addiu	t7,t7,0
     304:	27180000 	addiu	t8,t8,0
     308:	27390000 	addiu	t9,t9,0
     30c:	25080000 	addiu	t0,t0,0
     310:	25290000 	addiu	t1,t1,0
     314:	254a0000 	addiu	t2,t2,0
     318:	ac8d022c 	sw	t5,556(a0)
     31c:	ac8e0230 	sw	t6,560(a0)
     320:	ac8f023c 	sw	t7,572(a0)
     324:	ac98024c 	sw	t8,588(a0)
     328:	ac990238 	sw	t9,568(a0)
     32c:	ac880234 	sw	t0,564(a0)
     330:	ac890240 	sw	t1,576(a0)
     334:	ac8a0244 	sw	t2,580(a0)
     338:	1000003c 	b	42c <L800BC85C+0x20>
     33c:	ac800248 	sw	zero,584(a0)

00000340 <L800BC790>:
     340:	3c0b0000 	lui	t3,0x0
     344:	3c0c0000 	lui	t4,0x0
     348:	3c0d0000 	lui	t5,0x0
     34c:	3c0e0000 	lui	t6,0x0
     350:	3c0f0000 	lui	t7,0x0
     354:	3c180000 	lui	t8,0x0
     358:	3c190000 	lui	t9,0x0
     35c:	3c080000 	lui	t0,0x0
     360:	256b0000 	addiu	t3,t3,0
     364:	258c0000 	addiu	t4,t4,0
     368:	25ad0000 	addiu	t5,t5,0
     36c:	25ce0000 	addiu	t6,t6,0
     370:	25ef0000 	addiu	t7,t7,0
     374:	27180000 	addiu	t8,t8,0
     378:	27390000 	addiu	t9,t9,0
     37c:	25080000 	addiu	t0,t0,0
     380:	ac8b022c 	sw	t3,556(a0)
     384:	ac8c0230 	sw	t4,560(a0)
     388:	ac8d023c 	sw	t5,572(a0)
     38c:	ac8e024c 	sw	t6,588(a0)
     390:	ac8f0238 	sw	t7,568(a0)
     394:	ac980234 	sw	t8,564(a0)
     398:	ac990240 	sw	t9,576(a0)
     39c:	ac880244 	sw	t0,580(a0)
     3a0:	10000022 	b	42c <L800BC85C+0x20>
     3a4:	ac800248 	sw	zero,584(a0)

000003a8 <L800BC7F8>:
     3a8:	3c010001 	lui	at,0x1
     3ac:	00260821 	addu	at,at,a2
     3b0:	24090004 	li	t1,4
     3b4:	1000001d 	b	42c <L800BC85C+0x20>
     3b8:	a029241b 	sb	t1,9243(at)

000003bc <L800BC80C>:
     3bc:	3c010001 	lui	at,0x1
     3c0:	00260821 	addu	at,at,a2
     3c4:	240a000a 	li	t2,10
     3c8:	10000018 	b	42c <L800BC85C+0x20>
     3cc:	a02a241b 	sb	t2,9243(at)

000003d0 <L800BC820>:
     3d0:	3c010001 	lui	at,0x1
     3d4:	00260821 	addu	at,at,a2
     3d8:	240b0007 	li	t3,7
     3dc:	10000013 	b	42c <L800BC85C+0x20>
     3e0:	a02b241b 	sb	t3,9243(at)

000003e4 <L800BC834>:
     3e4:	3c010001 	lui	at,0x1
     3e8:	00260821 	addu	at,at,a2
     3ec:	240c000c 	li	t4,12
     3f0:	1000000e 	b	42c <L800BC85C+0x20>
     3f4:	a02c241b 	sb	t4,9243(at)

000003f8 <L800BC848>:
     3f8:	3c010001 	lui	at,0x1
     3fc:	00260821 	addu	at,at,a2
     400:	240d000e 	li	t5,14
     404:	10000009 	b	42c <L800BC85C+0x20>
     408:	a02d241b 	sb	t5,9243(at)

0000040c <L800BC85C>:
     40c:	3c010001 	lui	at,0x1
     410:	00260821 	addu	at,at,a2
     414:	240e0010 	li	t6,16
     418:	10000004 	b	42c <L800BC85C+0x20>
     41c:	a02e241b 	sb	t6,9243(at)
     420:	3c040000 	lui	a0,0x0
     424:	0c000000 	jal	0 <func_800BC450>
     428:	24840000 	addiu	a0,a0,0
     42c:	8fbf0014 	lw	ra,20(sp)
     430:	27bd0020 	addiu	sp,sp,32
     434:	03e00008 	jr	ra
     438:	00000000 	nop

0000043c <func_800BC88C>:
     43c:	3c010001 	lui	at,0x1
     440:	00240821 	addu	at,at,a0
     444:	240effff 	li	t6,-1
     448:	03e00008 	jr	ra
     44c:	ac2e23f0 	sw	t6,9200(at)

00000450 <func_800BC8A0>:
     450:	27bdffd8 	addiu	sp,sp,-40
     454:	afa40028 	sw	a0,40(sp)
     458:	8fae0028 	lw	t6,40(sp)
     45c:	afbf0024 	sw	ra,36(sp)
     460:	afa5002c 	sw	a1,44(sp)
     464:	00a02025 	move	a0,a1
     468:	91c507af 	lbu	a1,1967(t6)
     46c:	91c707b1 	lbu	a3,1969(t6)
     470:	91c607b0 	lbu	a2,1968(t6)
     474:	afa00010 	sw	zero,16(sp)
     478:	85cf07b2 	lh	t7,1970(t6)
     47c:	241803e8 	li	t8,1000
     480:	afb80018 	sw	t8,24(sp)
     484:	0c000000 	jal	0 <func_800BC450>
     488:	afaf0014 	sw	t7,20(sp)
     48c:	8fbf0024 	lw	ra,36(sp)
     490:	27bd0028 	addiu	sp,sp,40
     494:	03e00008 	jr	ra
     498:	00000000 	nop

0000049c <Gameplay_Destroy>:
     49c:	27bdffd0 	addiu	sp,sp,-48
     4a0:	afbf001c 	sw	ra,28(sp)
     4a4:	afb00018 	sw	s0,24(sp)
     4a8:	8c8e1c44 	lw	t6,7236(a0)
     4ac:	3c020000 	lui	v0,0x0
     4b0:	24420000 	addiu	v0,v0,0
     4b4:	afae0028 	sw	t6,40(sp)
     4b8:	8c8f0000 	lw	t7,0(a0)
     4bc:	3c010001 	lui	at,0x1
     4c0:	00808025 	move	s0,a0
     4c4:	ade002ec 	sw	zero,748(t7)
     4c8:	8c980000 	lw	t8,0(a0)
     4cc:	34212124 	ori	at,at,0x2124
     4d0:	00812021 	addu	a0,a0,at
     4d4:	af0002f0 	sw	zero,752(t8)
     4d8:	8c590000 	lw	t9,0(v0)
     4dc:	a720018a 	sh	zero,394(t9)
     4e0:	8c480000 	lw	t0,0(v0)
     4e4:	0c000000 	jal	0 <func_800BC450>
     4e8:	a5000190 	sh	zero,400(t0)
     4ec:	0c000000 	jal	0 <func_800BC450>
     4f0:	02002025 	move	a0,s0
     4f4:	0c000000 	jal	0 <func_800BC450>
     4f8:	02002025 	move	a0,s0
     4fc:	3c010001 	lui	at,0x1
     500:	34211e60 	ori	at,at,0x1e60
     504:	02012821 	addu	a1,s0,at
     508:	0c000000 	jal	0 <func_800BC450>
     50c:	02002025 	move	a0,s0
     510:	3c090000 	lui	t1,0x0
     514:	8d290000 	lw	t1,0(t1)
     518:	24010003 	li	at,3
     51c:	15210005 	bne	t1,at,534 <Gameplay_Destroy+0x98>
     520:	3c040000 	lui	a0,0x0
     524:	0c000000 	jal	0 <func_800BC450>
     528:	24840000 	addiu	a0,a0,0
     52c:	3c010000 	lui	at,0x0
     530:	ac200000 	sw	zero,0(at)
     534:	3c010001 	lui	at,0x1
     538:	02015021 	addu	t2,s0,at
     53c:	afaa0024 	sw	t2,36(sp)
     540:	914c241b 	lbu	t4,9243(t2)
     544:	24010003 	li	at,3
     548:	1581000b 	bne	t4,at,578 <Gameplay_Destroy+0xdc>
     54c:	00000000 	nop
     550:	8d5923f8 	lw	t9,9208(t2)
     554:	3c010001 	lui	at,0x1
     558:	342121c8 	ori	at,at,0x21c8
     55c:	0320f809 	jalr	t9
     560:	02012021 	addu	a0,s0,at
     564:	0c000000 	jal	0 <func_800BC450>
     568:	02002025 	move	a0,s0
     56c:	3c010001 	lui	at,0x1
     570:	00300821 	addu	at,at,s0
     574:	a020241b 	sb	zero,9243(at)
     578:	0c000000 	jal	0 <func_800BC450>
     57c:	00000000 	nop
     580:	3c010001 	lui	at,0x1
     584:	3421241c 	ori	at,at,0x241c
     588:	0c000000 	jal	0 <func_800BC450>
     58c:	02012021 	addu	a0,s0,at
     590:	3c040000 	lui	a0,0x0
     594:	0c000000 	jal	0 <func_800BC450>
     598:	24840000 	addiu	a0,a0,0
     59c:	8fae0024 	lw	t6,36(sp)
     5a0:	3c0d0000 	lui	t5,0x0
     5a4:	8dad0004 	lw	t5,4(t5)
     5a8:	91cf1de8 	lbu	t7,7656(t6)
     5ac:	51af0007 	beql	t5,t7,5cc <Gameplay_Destroy+0x130>
     5b0:	26041c24 	addiu	a0,s0,7204
     5b4:	0c000000 	jal	0 <func_800BC450>
     5b8:	00000000 	nop
     5bc:	02002025 	move	a0,s0
     5c0:	0c000000 	jal	0 <func_800BC450>
     5c4:	8fa50028 	lw	a1,40(sp)
     5c8:	26041c24 	addiu	a0,s0,7204
     5cc:	0c000000 	jal	0 <func_800BC450>
     5d0:	02002825 	move	a1,s0
     5d4:	0c000000 	jal	0 <func_800BC450>
     5d8:	02002025 	move	a0,s0
     5dc:	0c000000 	jal	0 <func_800BC450>
     5e0:	02002025 	move	a0,s0
     5e4:	0c000000 	jal	0 <func_800BC450>
     5e8:	00000000 	nop
     5ec:	0c000000 	jal	0 <func_800BC450>
     5f0:	00000000 	nop
     5f4:	3c040000 	lui	a0,0x0
     5f8:	0c000000 	jal	0 <func_800BC450>
     5fc:	24840000 	addiu	a0,a0,0
     600:	8fbf001c 	lw	ra,28(sp)
     604:	8fb00018 	lw	s0,24(sp)
     608:	27bd0030 	addiu	sp,sp,48
     60c:	03e00008 	jr	ra
     610:	00000000 	nop

00000614 <Gameplay_Init>:
     614:	27bdff70 	addiu	sp,sp,-144
     618:	afb20028 	sw	s2,40(sp)
     61c:	3c120000 	lui	s2,0x0
     620:	26520000 	addiu	s2,s2,0
     624:	8e4e0000 	lw	t6,0(s2)
     628:	afbf002c 	sw	ra,44(sp)
     62c:	afb10024 	sw	s1,36(sp)
     630:	afb00020 	sw	s0,32(sp)
     634:	2401ffff 	li	at,-1
     638:	00808825 	move	s1,a0
     63c:	15c10009 	bne	t6,at,664 <Gameplay_Init+0x50>
     640:	8c900000 	lw	s0,0(a0)
     644:	ae400000 	sw	zero,0(s2)
     648:	3c0f0000 	lui	t7,0x0
     64c:	25ef0000 	addiu	t7,t7,0
     650:	241801d0 	li	t8,464
     654:	ac800098 	sw	zero,152(a0)
     658:	ac980010 	sw	t8,16(a0)
     65c:	10000213 	b	eac <Gameplay_Init+0x898>
     660:	ac8f000c 	sw	t7,12(a0)
     664:	0c000000 	jal	0 <func_800BC450>
     668:	00000000 	nop
     66c:	3c05001d 	lui	a1,0x1d
     670:	34a54790 	ori	a1,a1,0x4790
     674:	0c000000 	jal	0 <func_800BC450>
     678:	02202025 	move	a0,s1
     67c:	0c000000 	jal	0 <func_800BC450>
     680:	02202025 	move	a0,s1
     684:	262400b8 	addiu	a0,s1,184
     688:	afa4003c 	sw	a0,60(sp)
     68c:	0c000000 	jal	0 <func_800BC450>
     690:	02002825 	move	a1,s0
     694:	0c000000 	jal	0 <func_800BC450>
     698:	00002025 	move	a0,zero
     69c:	0c000000 	jal	0 <func_800BC450>
     6a0:	00000000 	nop
     6a4:	00002025 	move	a0,zero
     6a8:	02201025 	move	v0,s1
     6ac:	24840001 	addiu	a0,a0,1
     6b0:	28810004 	slti	at,a0,4
     6b4:	24420004 	addiu	v0,v0,4
     6b8:	1420fffc 	bnez	at,6ac <Gameplay_Init+0x98>
     6bc:	ac40078c 	sw	zero,1932(v0)
     6c0:	262401e0 	addiu	a0,s1,480
     6c4:	262607c0 	addiu	a2,s1,1984
     6c8:	afa60034 	sw	a2,52(sp)
     6cc:	afa40038 	sw	a0,56(sp)
     6d0:	8fa5003c 	lw	a1,60(sp)
     6d4:	0c000000 	jal	0 <func_800BC450>
     6d8:	02203825 	move	a3,s1
     6dc:	8fa40038 	lw	a0,56(sp)
     6e0:	0c000000 	jal	0 <func_800BC450>
     6e4:	24050007 	li	a1,7
     6e8:	00004025 	move	t0,zero
     6ec:	2630034c 	addiu	s0,s1,844
     6f0:	02002025 	move	a0,s0
     6f4:	8fa5003c 	lw	a1,60(sp)
     6f8:	8fa60034 	lw	a2,52(sp)
     6fc:	02203825 	move	a3,s1
     700:	0c000000 	jal	0 <func_800BC450>
     704:	afa80044 	sw	t0,68(sp)
     708:	02002025 	move	a0,s0
     70c:	0c000000 	jal	0 <func_800BC450>
     710:	24050100 	li	a1,256
     714:	8fa80044 	lw	t0,68(sp)
     718:	24010444 	li	at,1092
     71c:	2610016c 	addiu	s0,s0,364
     720:	2508016c 	addiu	t0,t0,364
     724:	5501fff3 	bnel	t0,at,6f4 <Gameplay_Init+0xe0>
     728:	02002025 	move	a0,s0
     72c:	8fa40038 	lw	a0,56(sp)
     730:	240500ff 	li	a1,255
     734:	ae240790 	sw	a0,1936(s1)
     738:	a4800130 	sh	zero,304(a0)
     73c:	0c000000 	jal	0 <func_800BC450>
     740:	a62007a0 	sh	zero,1952(s1)
     744:	02202025 	move	a0,s1
     748:	0c000000 	jal	0 <func_800BC450>
     74c:	26251f74 	addiu	a1,s1,8052
     750:	0c000000 	jal	0 <func_800BC450>
     754:	02202025 	move	a0,s1
     758:	0c000000 	jal	0 <func_800BC450>
     75c:	02202025 	move	a0,s1
     760:	0c000000 	jal	0 <func_800BC450>
     764:	02202025 	move	a0,s1
     768:	0c000000 	jal	0 <func_800BC450>
     76c:	02202025 	move	a0,s1
     770:	0c000000 	jal	0 <func_800BC450>
     774:	02202025 	move	a0,s1
     778:	02202025 	move	a0,s1
     77c:	0c000000 	jal	0 <func_800BC450>
     780:	24050055 	li	a1,85
     784:	3c010001 	lui	at,0x1
     788:	34211e60 	ori	at,at,0x1e60
     78c:	02212821 	addu	a1,s1,at
     790:	0c000000 	jal	0 <func_800BC450>
     794:	02202025 	move	a0,s1
     798:	3c010001 	lui	at,0x1
     79c:	34210b20 	ori	at,at,0xb20
     7a0:	02212021 	addu	a0,s1,at
     7a4:	0c000000 	jal	0 <func_800BC450>
     7a8:	afa4003c 	sw	a0,60(sp)
     7ac:	02202025 	move	a0,s1
     7b0:	0c000000 	jal	0 <func_800BC450>
     7b4:	26251d64 	addiu	a1,s1,7524
     7b8:	96421412 	lhu	v0,5138(s2)
     7bc:	3401ffef 	li	at,0xffef
     7c0:	10410003 	beq	v0,at,7d0 <Gameplay_Init+0x1bc>
     7c4:	3419ffef 	li	t9,0xffef
     7c8:	ae420008 	sw	v0,8(s2)
     7cc:	a6591412 	sh	t9,5138(s2)
     7d0:	8e490008 	lw	t1,8(s2)
     7d4:	3401fffd 	li	at,0xfffd
     7d8:	55210003 	bnel	t1,at,7e8 <Gameplay_Init+0x1d4>
     7dc:	96421416 	lhu	v0,5142(s2)
     7e0:	ae400008 	sw	zero,8(s2)
     7e4:	96421416 	lhu	v0,5142(s2)
     7e8:	3401ffff 	li	at,0xffff
     7ec:	50410004 	beql	v0,at,800 <Gameplay_Init+0x1ec>
     7f0:	9642000c 	lhu	v0,12(s2)
     7f4:	a642000c 	sh	v0,12(s2)
     7f8:	a642141a 	sh	v0,5146(s2)
     7fc:	9642000c 	lhu	v0,12(s2)
     800:	3401c001 	li	at,0xc001
     804:	0041082a 	slt	at,v0,at
     808:	10200002 	beqz	at,814 <Gameplay_Init+0x200>
     80c:	28414555 	slti	at,v0,17749
     810:	10200003 	beqz	at,820 <Gameplay_Init+0x20c>
     814:	240a0001 	li	t2,1
     818:	10000002 	b	824 <Gameplay_Init+0x210>
     81c:	ae4a0010 	sw	t2,16(s2)
     820:	ae400010 	sw	zero,16(s2)
     824:	0c000000 	jal	0 <func_800BC450>
     828:	02202025 	move	a0,s1
     82c:	8e4b135c 	lw	t3,4956(s2)
     830:	55600007 	bnezl	t3,850 <Gameplay_Init+0x23c>
     834:	a64013c8 	sh	zero,5064(s2)
     838:	8e4c0008 	lw	t4,8(s2)
     83c:	3401fff0 	li	at,0xfff0
     840:	0181082a 	slt	at,t4,at
     844:	5420000a 	bnezl	at,870 <Gameplay_Init+0x25c>
     848:	8e420004 	lw	v0,4(s2)
     84c:	a64013c8 	sh	zero,5064(s2)
     850:	0c000000 	jal	0 <func_800BC450>
     854:	02202025 	move	a0,s1
     858:	8e4d0008 	lw	t5,8(s2)
     85c:	31ae000f 	andi	t6,t5,0xf
     860:	25cf0004 	addiu	t7,t6,4
     864:	1000001a 	b	8d0 <Gameplay_Init+0x2bc>
     868:	ae4f1360 	sw	t7,4960(s2)
     86c:	8e420004 	lw	v0,4(s2)
     870:	10400006 	beqz	v0,88c <Gameplay_Init+0x278>
     874:	00000000 	nop
     878:	8e580010 	lw	t8,16(s2)
     87c:	17000003 	bnez	t8,88c <Gameplay_Init+0x278>
     880:	00000000 	nop
     884:	10000012 	b	8d0 <Gameplay_Init+0x2bc>
     888:	ae401360 	sw	zero,4960(s2)
     88c:	10400007 	beqz	v0,8ac <Gameplay_Init+0x298>
     890:	00000000 	nop
     894:	8e590010 	lw	t9,16(s2)
     898:	24090001 	li	t1,1
     89c:	13200003 	beqz	t9,8ac <Gameplay_Init+0x298>
     8a0:	00000000 	nop
     8a4:	1000000a 	b	8d0 <Gameplay_Init+0x2bc>
     8a8:	ae491360 	sw	t1,4960(s2)
     8ac:	14400007 	bnez	v0,8cc <Gameplay_Init+0x2b8>
     8b0:	240c0003 	li	t4,3
     8b4:	8e4a0010 	lw	t2,16(s2)
     8b8:	240b0002 	li	t3,2
     8bc:	55400004 	bnezl	t2,8d0 <Gameplay_Init+0x2bc>
     8c0:	ae4c1360 	sw	t4,4960(s2)
     8c4:	10000002 	b	8d0 <Gameplay_Init+0x2bc>
     8c8:	ae4b1360 	sw	t3,4960(s2)
     8cc:	ae4c1360 	sw	t4,4960(s2)
     8d0:	8e470000 	lw	a3,0(s2)
     8d4:	3c080000 	lui	t0,0x0
     8d8:	25080000 	addiu	t0,t0,0
     8dc:	00076880 	sll	t5,a3,0x2
     8e0:	010d7021 	addu	t6,t0,t5
     8e4:	81cf0000 	lb	t7,0(t6)
     8e8:	8e431360 	lw	v1,4960(s2)
     8ec:	24010051 	li	at,81
     8f0:	00e08025 	move	s0,a3
     8f4:	15e1001c 	bne	t7,at,968 <Gameplay_Init+0x354>
     8f8:	a3a3006f 	sb	v1,111(sp)
     8fc:	8e580004 	lw	t8,4(s2)
     900:	28610004 	slti	at,v1,4
     904:	53000019 	beqzl	t8,96c <Gameplay_Init+0x358>
     908:	00107880 	sll	t7,s0,0x2
     90c:	50200017 	beqzl	at,96c <Gameplay_Init+0x358>
     910:	00107880 	sll	t7,s0,0x2
     914:	3c030000 	lui	v1,0x0
     918:	24630000 	addiu	v1,v1,0
     91c:	8c790048 	lw	t9,72(v1)
     920:	8e4200a4 	lw	v0,164(s2)
     924:	03224824 	and	t1,t9,v0
     928:	5120000d 	beqzl	t1,960 <Gameplay_Init+0x34c>
     92c:	ae401360 	sw	zero,4960(s2)
     930:	8c6a004c 	lw	t2,76(v1)
     934:	01425824 	and	t3,t2,v0
     938:	51600009 	beqzl	t3,960 <Gameplay_Init+0x34c>
     93c:	ae401360 	sw	zero,4960(s2)
     940:	8c6c0050 	lw	t4,80(v1)
     944:	240e0001 	li	t6,1
     948:	01826824 	and	t5,t4,v0
     94c:	51a00004 	beqzl	t5,960 <Gameplay_Init+0x34c>
     950:	ae401360 	sw	zero,4960(s2)
     954:	10000002 	b	960 <Gameplay_Init+0x34c>
     958:	ae4e1360 	sw	t6,4960(s2)
     95c:	ae401360 	sw	zero,4960(s2)
     960:	10000016 	b	9bc <Gameplay_Init+0x3a8>
     964:	8e431360 	lw	v1,4960(s2)
     968:	00107880 	sll	t7,s0,0x2
     96c:	010fc021 	addu	t8,t0,t7
     970:	83190000 	lb	t9,0(t8)
     974:	24010055 	li	at,85
     978:	57210011 	bnel	t9,at,9c0 <Gameplay_Init+0x3ac>
     97c:	00037080 	sll	t6,v1,0x2
     980:	8e490004 	lw	t1,4(s2)
     984:	28610004 	slti	at,v1,4
     988:	5520000d 	bnezl	t1,9c0 <Gameplay_Init+0x3ac>
     98c:	00037080 	sll	t6,v1,0x2
     990:	5020000b 	beqzl	at,9c0 <Gameplay_Init+0x3ac>
     994:	00037080 	sll	t6,v1,0x2
     998:	964a0edc 	lhu	t2,3804(s2)
     99c:	24030002 	li	v1,2
     9a0:	314b0100 	andi	t3,t2,0x100
     9a4:	51600005 	beqzl	t3,9bc <Gameplay_Init+0x3a8>
     9a8:	ae431360 	sw	v1,4960(s2)
     9ac:	24030003 	li	v1,3
     9b0:	10000002 	b	9bc <Gameplay_Init+0x3a8>
     9b4:	ae431360 	sw	v1,4960(s2)
     9b8:	ae431360 	sw	v1,4960(s2)
     9bc:	00037080 	sll	t6,v1,0x2
     9c0:	010e7821 	addu	t7,t0,t6
     9c4:	0007c080 	sll	t8,a3,0x2
     9c8:	01f81021 	addu	v0,t7,t8
     9cc:	80450000 	lb	a1,0(v0)
     9d0:	80460001 	lb	a2,1(v0)
     9d4:	0c000000 	jal	0 <func_800BC450>
     9d8:	02202025 	move	a0,s1
     9dc:	3c040000 	lui	a0,0x0
     9e0:	24840000 	addiu	a0,a0,0
     9e4:	8e450000 	lw	a1,0(s2)
     9e8:	0c000000 	jal	0 <func_800BC450>
     9ec:	8e461360 	lw	a2,4960(s2)
     9f0:	8e500000 	lw	s0,0(s2)
     9f4:	3c090000 	lui	t1,0x0
     9f8:	2401005a 	li	at,90
     9fc:	0010c880 	sll	t9,s0,0x2
     a00:	01394821 	addu	t1,t1,t9
     a04:	81290000 	lb	t1,0(t1)
     a08:	1521000e 	bne	t1,at,a44 <Gameplay_Init+0x430>
     a0c:	00000000 	nop
     a10:	8e4a1360 	lw	t2,4960(s2)
     a14:	24010006 	li	at,6
     a18:	3c040000 	lui	a0,0x0
     a1c:	15410009 	bne	t2,at,a44 <Gameplay_Init+0x430>
     a20:	00000000 	nop
     a24:	0c000000 	jal	0 <func_800BC450>
     a28:	24840000 	addiu	a0,a0,0
     a2c:	3c198100 	lui	t9,0x8100
     a30:	0320f809 	jalr	t9
     a34:	00000000 	nop
     a38:	3c040000 	lui	a0,0x0
     a3c:	0c000000 	jal	0 <func_800BC450>
     a40:	24840000 	addiu	a0,a0,0
     a44:	0c000000 	jal	0 <func_800BC450>
     a48:	02202025 	move	a0,s1
     a4c:	0c000000 	jal	0 <func_800BC450>
     a50:	02202025 	move	a0,s1
     a54:	0c000000 	jal	0 <func_800BC450>
     a58:	02202025 	move	a0,s1
     a5c:	96421416 	lhu	v0,5142(s2)
     a60:	3401ffff 	li	at,0xffff
     a64:	1041001d 	beq	v0,at,adc <Gameplay_Init+0x4c8>
     a68:	34018001 	li	at,0x8001
     a6c:	1441001a 	bne	v0,at,ad8 <Gameplay_Init+0x4c4>
     a70:	3409fffd 	li	t1,0xfffd
     a74:	8e4b0014 	lw	t3,20(s2)
     a78:	8e4d0018 	lw	t5,24(s2)
     a7c:	240f0001 	li	t7,1
     a80:	256c0001 	addiu	t4,t3,1
     a84:	25ae0001 	addiu	t6,t5,1
     a88:	ae4c0014 	sw	t4,20(s2)
     a8c:	ae4e0018 	sw	t6,24(s2)
     a90:	a24f141c 	sb	t7,5148(s2)
     a94:	02202025 	move	a0,s1
     a98:	24050021 	li	a1,33
     a9c:	0c000000 	jal	0 <func_800BC450>
     aa0:	24060022 	li	a2,34
     aa4:	14400005 	bnez	v0,abc <Gameplay_Init+0x4a8>
     aa8:	02202025 	move	a0,s1
     aac:	2405002d 	li	a1,45
     ab0:	0c000000 	jal	0 <func_800BC450>
     ab4:	2406002e 	li	a2,46
     ab8:	10400004 	beqz	v0,acc <Gameplay_Init+0x4b8>
     abc:	02202025 	move	a0,s1
     ac0:	24053066 	li	a1,12390
     ac4:	0c000000 	jal	0 <func_800BC450>
     ac8:	00003025 	move	a2,zero
     acc:	3418fffe 	li	t8,0xfffe
     ad0:	10000002 	b	adc <Gameplay_Init+0x4c8>
     ad4:	a6581416 	sh	t8,5142(s2)
     ad8:	a6491416 	sh	t1,5142(s2)
     adc:	3c020000 	lui	v0,0x0
     ae0:	24420000 	addiu	v0,v0,0
     ae4:	8c590000 	lw	t9,0(v0)
     ae8:	240affff 	li	t2,-1
     aec:	3c010001 	lui	at,0x1
     af0:	a72a018a 	sh	t2,394(t9)
     af4:	8c4b0000 	lw	t3,0(v0)
     af8:	34212124 	ori	at,at,0x2124
     afc:	02218021 	addu	s0,s1,at
     b00:	02002025 	move	a0,s0
     b04:	0c000000 	jal	0 <func_800BC450>
     b08:	a5600190 	sh	zero,400(t3)
     b0c:	02002025 	move	a0,s0
     b10:	24050140 	li	a1,320
     b14:	240600f0 	li	a2,240
     b18:	00003825 	move	a3,zero
     b1c:	afa00010 	sw	zero,16(sp)
     b20:	0c000000 	jal	0 <func_800BC450>
     b24:	afa00014 	sw	zero,20(sp)
     b28:	02002025 	move	a0,s0
     b2c:	24050140 	li	a1,320
     b30:	240600f0 	li	a2,240
     b34:	00003825 	move	a3,zero
     b38:	0c000000 	jal	0 <func_800BC450>
     b3c:	afa00010 	sw	zero,16(sp)
     b40:	3c010000 	lui	at,0x0
     b44:	ac200000 	sw	zero,0(at)
     b48:	3c010001 	lui	at,0x1
     b4c:	00310821 	addu	at,at,s1
     b50:	a020241b 	sb	zero,9243(at)
     b54:	0c000000 	jal	0 <func_800BC450>
     b58:	262407b8 	addiu	a0,s1,1976
     b5c:	0c000000 	jal	0 <func_800BC450>
     b60:	00000000 	nop
     b64:	0c000000 	jal	0 <func_800BC450>
     b68:	00602025 	move	a0,v1
     b6c:	0c000000 	jal	0 <func_800BC450>
     b70:	02202025 	move	a0,s1
     b74:	3c0c0000 	lui	t4,0x0
     b78:	3c0d0000 	lui	t5,0x0
     b7c:	258c0000 	addiu	t4,t4,0
     b80:	25ad0000 	addiu	t5,t5,0
     b84:	3c010001 	lui	at,0x1
     b88:	ae2c0004 	sw	t4,4(s1)
     b8c:	ae2d0008 	sw	t5,8(s1)
     b90:	00310821 	addu	at,at,s1
     b94:	240effec 	li	t6,-20
     b98:	a02e1e15 	sb	t6,7701(at)
     b9c:	3c010001 	lui	at,0x1
     ba0:	240300ff 	li	v1,255
     ba4:	00310821 	addu	at,at,s1
     ba8:	a4231e16 	sh	v1,7702(at)
     bac:	3c010001 	lui	at,0x1
     bb0:	00310821 	addu	at,at,s1
     bb4:	a4201e18 	sh	zero,7704(at)
     bb8:	3c010001 	lui	at,0x1
     bbc:	00310821 	addu	at,at,s1
     bc0:	a0201de9 	sb	zero,7657(at)
     bc4:	8e4f135c 	lw	t7,4956(s2)
     bc8:	24010001 	li	at,1
     bcc:	51e10018 	beql	t7,at,c30 <Gameplay_Init+0x61c>
     bd0:	3c010001 	lui	at,0x1
     bd4:	9242141d 	lbu	v0,5149(s2)
     bd8:	3c010001 	lui	at,0x1
     bdc:	00310821 	addu	at,at,s1
     be0:	1462000f 	bne	v1,v0,c20 <Gameplay_Init+0x60c>
     be4:	240e00ff 	li	t6,255
     be8:	8e500000 	lw	s0,0(s2)
     bec:	93a9006f 	lbu	t1,111(sp)
     bf0:	3c0b0000 	lui	t3,0x0
     bf4:	0010c080 	sll	t8,s0,0x2
     bf8:	00095080 	sll	t2,t1,0x2
     bfc:	030ac821 	addu	t9,t8,t2
     c00:	01795821 	addu	t3,t3,t9
     c04:	956b0002 	lhu	t3,2(t3)
     c08:	3c010001 	lui	at,0x1
     c0c:	00310821 	addu	at,at,s1
     c10:	000b61c3 	sra	t4,t3,0x7
     c14:	318d007f 	andi	t5,t4,0x7f
     c18:	10000008 	b	c3c <Gameplay_Init+0x628>
     c1c:	a02d1e5e 	sb	t5,7774(at)
     c20:	a0221e5e 	sb	v0,7774(at)
     c24:	10000005 	b	c3c <Gameplay_Init+0x628>
     c28:	a24e141d 	sb	t6,5149(s2)
     c2c:	3c010001 	lui	at,0x1
     c30:	00310821 	addu	at,at,s1
     c34:	240f0006 	li	t7,6
     c38:	a02f1e5e 	sb	t7,7774(at)
     c3c:	0c000000 	jal	0 <func_800BC450>
     c40:	00000000 	nop
     c44:	3c010001 	lui	at,0x1
     c48:	3421241c 	ori	at,at,0x241c
     c4c:	02218021 	addu	s0,s1,at
     c50:	0c000000 	jal	0 <func_800BC450>
     c54:	02002025 	move	a0,s0
     c58:	02002025 	move	a0,s0
     c5c:	0c000000 	jal	0 <func_800BC450>
     c60:	24050003 	li	a1,3
     c64:	3c05a0a0 	lui	a1,0xa0a0
     c68:	34a5a0ff 	ori	a1,a1,0xa0ff
     c6c:	0c000000 	jal	0 <func_800BC450>
     c70:	02002025 	move	a0,s0
     c74:	0c000000 	jal	0 <func_800BC450>
     c78:	02002025 	move	a0,s0
     c7c:	3c040000 	lui	a0,0x0
     c80:	0c000000 	jal	0 <func_800BC450>
     c84:	24840000 	addiu	a0,a0,0
     c88:	3c010000 	lui	at,0x0
     c8c:	a0200003 	sb	zero,3(at)
     c90:	0c000000 	jal	0 <func_800BC450>
     c94:	02202025 	move	a0,s1
     c98:	26300074 	addiu	s0,s1,116
     c9c:	0c000000 	jal	0 <func_800BC450>
     ca0:	02002025 	move	a0,s0
     ca4:	3c040000 	lui	a0,0x0
     ca8:	24840000 	addiu	a0,a0,0
     cac:	0c000000 	jal	0 <func_800BC450>
     cb0:	00402825 	move	a1,v0
     cb4:	0c000000 	jal	0 <func_800BC450>
     cb8:	02002025 	move	a0,s0
     cbc:	3c060000 	lui	a2,0x0
     cc0:	afa2007c 	sw	v0,124(sp)
     cc4:	24c60000 	addiu	a2,a2,0
     cc8:	02202025 	move	a0,s1
     ccc:	00402825 	move	a1,v0
     cd0:	0c000000 	jal	0 <func_800BC450>
     cd4:	24070b66 	li	a3,2918
     cd8:	8fa9007c 	lw	t1,124(sp)
     cdc:	24460008 	addiu	a2,v0,8
     ce0:	2401fff0 	li	at,-16
     ce4:	00c12024 	and	a0,a2,at
     ce8:	0124c023 	subu	t8,t1,a0
     cec:	afa20084 	sw	v0,132(sp)
     cf0:	00808025 	move	s0,a0
     cf4:	0c000000 	jal	0 <func_800BC450>
     cf8:	03022821 	addu	a1,t8,v0
     cfc:	8faa007c 	lw	t2,124(sp)
     d00:	8fab0084 	lw	t3,132(sp)
     d04:	3c040000 	lui	a0,0x0
     d08:	020ac821 	addu	t9,s0,t2
     d0c:	020b6023 	subu	t4,s0,t3
     d10:	032c3023 	subu	a2,t9,t4
     d14:	24840000 	addiu	a0,a0,0
     d18:	0c000000 	jal	0 <func_800BC450>
     d1c:	02002825 	move	a1,s0
     d20:	3c040000 	lui	a0,0x0
     d24:	3c050000 	lui	a1,0x0
     d28:	24a50000 	addiu	a1,a1,0
     d2c:	24840000 	addiu	a0,a0,0
     d30:	00003025 	move	a2,zero
     d34:	0c000000 	jal	0 <func_800BC450>
     d38:	00003825 	move	a3,zero
     d3c:	3c060001 	lui	a2,0x1
     d40:	00d13021 	addu	a2,a2,s1
     d44:	8cc61df4 	lw	a2,7668(a2)
     d48:	02202025 	move	a0,s1
     d4c:	0c000000 	jal	0 <func_800BC450>
     d50:	26251c24 	addiu	a1,s1,7204
     d54:	3c010001 	lui	at,0x1
     d58:	34211cbc 	ori	at,at,0x1cbc
     d5c:	02218021 	addu	s0,s1,at
     d60:	02002825 	move	a1,s0
     d64:	0c000000 	jal	0 <func_800BC450>
     d68:	02202025 	move	a0,s1
     d6c:	14400005 	bnez	v0,d84 <Gameplay_Init+0x770>
     d70:	02202025 	move	a0,s1
     d74:	0c000000 	jal	0 <func_800BC450>
     d78:	02002825 	move	a1,s0
     d7c:	5040fffd 	beqzl	v0,d74 <Gameplay_Init+0x760>
     d80:	02202025 	move	a0,s1
     d84:	8e251c44 	lw	a1,7236(s1)
     d88:	8fa40038 	lw	a0,56(sp)
     d8c:	0c000000 	jal	0 <func_800BC450>
     d90:	afa50078 	sw	a1,120(sp)
     d94:	8fa40038 	lw	a0,56(sp)
     d98:	0c000000 	jal	0 <func_800BC450>
     d9c:	00002825 	move	a1,zero
     da0:	8fad0078 	lw	t5,120(sp)
     da4:	240100ff 	li	at,255
     da8:	3c040000 	lui	a0,0x0
     dac:	85b0001c 	lh	s0,28(t5)
     db0:	24840000 	addiu	a0,a0,0
     db4:	321000ff 	andi	s0,s0,0xff
     db8:	12010006 	beq	s0,at,dd4 <Gameplay_Init+0x7c0>
     dbc:	00000000 	nop
     dc0:	0c000000 	jal	0 <func_800BC450>
     dc4:	02002825 	move	a1,s0
     dc8:	8fa40038 	lw	a0,56(sp)
     dcc:	0c000000 	jal	0 <func_800BC450>
     dd0:	02002825 	move	a1,s0
     dd4:	3c0e0000 	lui	t6,0x0
     dd8:	8dce0000 	lw	t6,0(t6)
     ddc:	24010020 	li	at,32
     de0:	240f0002 	li	t7,2
     de4:	85c204b2 	lh	v0,1202(t6)
     de8:	14410004 	bne	v0,at,dfc <Gameplay_Init+0x7e8>
     dec:	3c010001 	lui	at,0x1
     df0:	00310821 	addu	at,at,s1
     df4:	1000000b 	b	e24 <Gameplay_Init+0x810>
     df8:	a02f242b 	sb	t7,9259(at)
     dfc:	24010010 	li	at,16
     e00:	14410005 	bne	v0,at,e18 <Gameplay_Init+0x804>
     e04:	24090001 	li	t1,1
     e08:	3c010001 	lui	at,0x1
     e0c:	00310821 	addu	at,at,s1
     e10:	10000004 	b	e24 <Gameplay_Init+0x810>
     e14:	a029242b 	sb	t1,9259(at)
     e18:	3c010001 	lui	at,0x1
     e1c:	00310821 	addu	at,at,s1
     e20:	a020242b 	sb	zero,9259(at)
     e24:	0c000000 	jal	0 <func_800BC450>
     e28:	02202025 	move	a0,s1
     e2c:	0c000000 	jal	0 <func_800BC450>
     e30:	02202025 	move	a0,s1
     e34:	923807a4 	lbu	t8,1956(s1)
     e38:	3c010000 	lui	at,0x0
     e3c:	02202025 	move	a0,s1
     e40:	a03813e0 	sb	t8,5088(at)
     e44:	922a07a5 	lbu	t2,1957(s1)
     e48:	3c010000 	lui	at,0x0
     e4c:	a02a13e1 	sb	t2,5089(at)
     e50:	0c000000 	jal	0 <func_800BC450>
     e54:	8e251c44 	lw	a1,7236(s1)
     e58:	02202025 	move	a0,s1
     e5c:	0c000000 	jal	0 <func_800BC450>
     e60:	8fa5003c 	lw	a1,60(sp)
     e64:	ae401364 	sw	zero,4964(s2)
     e68:	3c0b0000 	lui	t3,0x0
     e6c:	8d6b0000 	lw	t3,0(t3)
     e70:	3c100000 	lui	s0,0x0
     e74:	3c0c0000 	lui	t4,0x0
     e78:	85791452 	lh	t9,5202(t3)
     e7c:	26100000 	addiu	s0,s0,0
     e80:	25850000 	addiu	a1,t4,0
     e84:	13200009 	beqz	t9,eac <Gameplay_Init+0x898>
     e88:	3c040000 	lui	a0,0x0
     e8c:	ae050000 	sw	a1,0(s0)
     e90:	0c000000 	jal	0 <func_800BC450>
     e94:	24840000 	addiu	a0,a0,0
     e98:	3c0403fe 	lui	a0,0x3fe
     e9c:	3484b000 	ori	a0,a0,0xb000
     ea0:	8e050000 	lw	a1,0(s0)
     ea4:	0c000000 	jal	0 <func_800BC450>
     ea8:	24065000 	li	a2,20480
     eac:	8fbf002c 	lw	ra,44(sp)
     eb0:	8fb00020 	lw	s0,32(sp)
     eb4:	8fb10024 	lw	s1,36(sp)
     eb8:	8fb20028 	lw	s2,40(sp)
     ebc:	03e00008 	jr	ra
     ec0:	27bd0090 	addiu	sp,sp,144

00000ec4 <Gameplay_Update>:
     ec4:	27bdff78 	addiu	sp,sp,-136
     ec8:	3c020000 	lui	v0,0x0
     ecc:	8c420000 	lw	v0,0(v0)
     ed0:	afbf002c 	sw	ra,44(sp)
     ed4:	afb10028 	sw	s1,40(sp)
     ed8:	afb00024 	sw	s0,36(sp)
     edc:	844e00d6 	lh	t6,214(v0)
     ee0:	00808025 	move	s0,a0
     ee4:	05c00004 	bltz	t6,ef8 <Gameplay_Update+0x34>
     ee8:	00000000 	nop
     eec:	844f0554 	lh	t7,1364(v0)
     ef0:	51e00006 	beqzl	t7,f0c <Gameplay_Update+0x48>
     ef4:	84581074 	lh	t8,4212(v0)
     ef8:	0c000000 	jal	0 <func_800BC450>
     efc:	a44000d6 	sh	zero,214(v0)
     f00:	3c020000 	lui	v0,0x0
     f04:	8c420000 	lw	v0,0(v0)
     f08:	84581074 	lh	t8,4212(v0)
     f0c:	24010012 	li	at,18
     f10:	5701002f 	bnel	t8,at,fd0 <Gameplay_Update+0x10c>
     f14:	844b1076 	lh	t3,4214(v0)
     f18:	84591076 	lh	t9,4214(v0)
     f1c:	3c040000 	lui	a0,0x0
     f20:	24840000 	addiu	a0,a0,0
     f24:	07210029 	bgez	t9,fcc <Gameplay_Update+0x108>
     f28:	3c050000 	lui	a1,0x0
     f2c:	a4401076 	sh	zero,4214(v0)
     f30:	0c000000 	jal	0 <func_800BC450>
     f34:	8ca50000 	lw	a1,0(a1)
     f38:	3c040000 	lui	a0,0x0
     f3c:	0c000000 	jal	0 <func_800BC450>
     f40:	24840000 	addiu	a0,a0,0
     f44:	3c090000 	lui	t1,0x0
     f48:	8d290000 	lw	t1,0(t1)
     f4c:	3c020000 	lui	v0,0x0
     f50:	24420000 	addiu	v0,v0,0
     f54:	11200018 	beqz	t1,fb8 <Gameplay_Update+0xf4>
     f58:	00001825 	move	v1,zero
     f5c:	8c460004 	lw	a2,4(v0)
     f60:	8c450000 	lw	a1,0(v0)
     f64:	3c013a80 	lui	at,0x3a80
     f68:	44814000 	mtc1	at,$f8
     f6c:	00c53823 	subu	a3,a2,a1
     f70:	44872000 	mtc1	a3,$f4
     f74:	3c040000 	lui	a0,0x0
     f78:	24840000 	addiu	a0,a0,0
     f7c:	468021a0 	cvt.s.w	$f6,$f4
     f80:	afa20044 	sw	v0,68(sp)
     f84:	afa30078 	sw	v1,120(sp)
     f88:	46083282 	mul.s	$f10,$f6,$f8
     f8c:	46005421 	cvt.d.s	$f16,$f10
     f90:	0c000000 	jal	0 <func_800BC450>
     f94:	f7b00010 	sdc1	$f16,16(sp)
     f98:	8fa30078 	lw	v1,120(sp)
     f9c:	3c0a0000 	lui	t2,0x0
     fa0:	8d4a0000 	lw	t2,0(t2)
     fa4:	8fa20044 	lw	v0,68(sp)
     fa8:	24630001 	addiu	v1,v1,1
     fac:	006a082b 	sltu	at,v1,t2
     fb0:	1420ffea 	bnez	at,f5c <Gameplay_Update+0x98>
     fb4:	24420008 	addiu	v0,v0,8
     fb8:	3c040000 	lui	a0,0x0
     fbc:	0c000000 	jal	0 <func_800BC450>
     fc0:	24840000 	addiu	a0,a0,0
     fc4:	3c020000 	lui	v0,0x0
     fc8:	8c420000 	lw	v0,0(v0)
     fcc:	844b1076 	lh	t3,4214(v0)
     fd0:	24010012 	li	at,18
     fd4:	55610007 	bnel	t3,at,ff4 <Gameplay_Update+0x130>
     fd8:	3c030001 	lui	v1,0x1
     fdc:	844c1078 	lh	t4,4216(v0)
     fe0:	05830004 	bgezl	t4,ff4 <Gameplay_Update+0x130>
     fe4:	3c030001 	lui	v1,0x1
     fe8:	0c000000 	jal	0 <func_800BC450>
     fec:	a4401078 	sh	zero,4216(v0)
     ff0:	3c030001 	lui	v1,0x1
     ff4:	02038821 	addu	s1,s0,v1
     ff8:	922d17ae 	lbu	t5,6062(s1)
     ffc:	24070044 	li	a3,68
    1000:	3c020000 	lui	v0,0x0
    1004:	01a70019 	multu	t5,a3
    1008:	3c068000 	lui	a2,0x8000
    100c:	24420000 	addiu	v0,v0,0
    1010:	26080014 	addiu	t0,s0,20
    1014:	25050018 	addiu	a1,t0,24
    1018:	260407b8 	addiu	a0,s0,1976
    101c:	00007012 	mflo	t6
    1020:	020e7821 	addu	t7,s0,t6
    1024:	01e3c021 	addu	t8,t7,v1
    1028:	8f1917b4 	lw	t9,6068(t8)
    102c:	03264821 	addu	t1,t9,a2
    1030:	ac490010 	sw	t1,16(v0)
    1034:	922a17af 	lbu	t2,6063(s1)
    1038:	01470019 	multu	t2,a3
    103c:	00005812 	mflo	t3
    1040:	020b6021 	addu	t4,s0,t3
    1044:	01836821 	addu	t5,t4,v1
    1048:	8dae17b4 	lw	t6,6068(t5)
    104c:	01c67821 	addu	t7,t6,a2
    1050:	ac4f0014 	sw	t7,20(v0)
    1054:	8e1800b0 	lw	t8,176(s0)
    1058:	afa80044 	sw	t0,68(sp)
    105c:	afa50030 	sw	a1,48(sp)
    1060:	0306c821 	addu	t9,t8,a2
    1064:	0c000000 	jal	0 <func_800BC450>
    1068:	ac590008 	sw	t9,8(v0)
    106c:	1040059c 	beqz	v0,26e0 <L800BE148+0x9e8>
    1070:	00000000 	nop
    1074:	9229241b 	lbu	t1,9243(s1)
    1078:	3c020000 	lui	v0,0x0
    107c:	15200007 	bnez	t1,109c <Gameplay_Update+0x1d8>
    1080:	00000000 	nop
    1084:	822a1e15 	lb	t2,7701(s1)
    1088:	3c010001 	lui	at,0x1
    108c:	00300821 	addu	at,at,s0
    1090:	11400002 	beqz	t2,109c <Gameplay_Update+0x1d8>
    1094:	240b0001 	li	t3,1
    1098:	a02b241b 	sb	t3,9243(at)
    109c:	8c420000 	lw	v0,0(v0)
    10a0:	24010002 	li	at,2
    10a4:	50400022 	beqzl	v0,1130 <Gameplay_Update+0x26c>
    10a8:	9224241b 	lbu	a0,9243(s1)
    10ac:	10410006 	beq	v0,at,10c8 <Gameplay_Update+0x204>
    10b0:	3c040000 	lui	a0,0x0
    10b4:	24010003 	li	at,3
    10b8:	1041001a 	beq	v0,at,1124 <Gameplay_Update+0x260>
    10bc:	3c040000 	lui	a0,0x0
    10c0:	1000001b 	b	1130 <Gameplay_Update+0x26c>
    10c4:	9224241b 	lbu	a0,9243(s1)
    10c8:	24840000 	addiu	a0,a0,0
    10cc:	2405000a 	li	a1,10
    10d0:	0c000000 	jal	0 <func_800BC450>
    10d4:	24060007 	li	a2,7
    10d8:	14400007 	bnez	v0,10f8 <Gameplay_Update+0x234>
    10dc:	3c0c0000 	lui	t4,0x0
    10e0:	3c040000 	lui	a0,0x0
    10e4:	0c000000 	jal	0 <func_800BC450>
    10e8:	24840000 	addiu	a0,a0,0
    10ec:	3c010000 	lui	at,0x0
    10f0:	1000000e 	b	112c <Gameplay_Update+0x268>
    10f4:	ac200000 	sw	zero,0(at)
    10f8:	258c0000 	addiu	t4,t4,0
    10fc:	3c010000 	lui	at,0x0
    1100:	ac2c00dc 	sw	t4,220(at)
    1104:	3c0f0000 	lui	t7,0x0
    1108:	8def0000 	lw	t7,0(t7)
    110c:	3c010000 	lui	at,0x0
    1110:	240d0003 	li	t5,3
    1114:	ac2d0000 	sw	t5,0(at)
    1118:	240e0001 	li	t6,1
    111c:	10000003 	b	112c <Gameplay_Update+0x268>
    1120:	a5ee0110 	sh	t6,272(t7)
    1124:	0c000000 	jal	0 <func_800BC450>
    1128:	24840000 	addiu	a0,a0,0
    112c:	9224241b 	lbu	a0,9243(s1)
    1130:	24010001 	li	at,1
    1134:	108002f0 	beqz	a0,1cf8 <L800BE148>
    1138:	00000000 	nop
    113c:	10810008 	beq	a0,at,1160 <Gameplay_Update+0x29c>
    1140:	00801025 	move	v0,a0
    1144:	24010002 	li	at,2
    1148:	10810045 	beq	a0,at,1260 <Gameplay_Update+0x39c>
    114c:	24010003 	li	at,3
    1150:	508100e3 	beql	a0,at,14e0 <Gameplay_Update+0x61c>
    1154:	3c010001 	lui	at,0x1
    1158:	1000013e 	b	1654 <Gameplay_Update+0x790>
    115c:	244afffc 	addiu	t2,v0,-4
    1160:	82381e15 	lb	t8,7701(s1)
    1164:	2401ffec 	li	at,-20
    1168:	24040001 	li	a0,1
    116c:	1301002c 	beq	t8,at,1220 <Gameplay_Update+0x35c>
    1170:	00000000 	nop
    1174:	0c000000 	jal	0 <func_800BC450>
    1178:	a7a0006e 	sh	zero,110(sp)
    117c:	3c030000 	lui	v1,0x0
    1180:	8c630008 	lw	v1,8(v1)
    1184:	3401fff0 	li	at,0xfff0
    1188:	87a2006e 	lh	v0,110(sp)
    118c:	0061082a 	slt	at,v1,at
    1190:	14200005 	bnez	at,11a8 <Gameplay_Update+0x2e4>
    1194:	3c040000 	lui	a0,0x0
    1198:	3062000f 	andi	v0,v1,0xf
    119c:	24420004 	addiu	v0,v0,4
    11a0:	00021400 	sll	v0,v0,0x10
    11a4:	00021403 	sra	v0,v0,0x10
    11a8:	86391e1a 	lh	t9,7706(s1)
    11ac:	00025080 	sll	t2,v0,0x2
    11b0:	3c0c0000 	lui	t4,0x0
    11b4:	00194880 	sll	t1,t9,0x2
    11b8:	012a5821 	addu	t3,t1,t2
    11bc:	018b6021 	addu	t4,t4,t3
    11c0:	958c0002 	lhu	t4,2(t4)
    11c4:	318d8000 	andi	t5,t4,0x8000
    11c8:	15a00015 	bnez	t5,1220 <Gameplay_Update+0x35c>
    11cc:	00000000 	nop
    11d0:	0c000000 	jal	0 <func_800BC450>
    11d4:	24840000 	addiu	a0,a0,0
    11d8:	922e1e5e 	lbu	t6,7774(s1)
    11dc:	29c10038 	slti	at,t6,56
    11e0:	1020000f 	beqz	at,1220 <Gameplay_Update+0x35c>
    11e4:	00000000 	nop
    11e8:	0c000000 	jal	0 <func_800BC450>
    11ec:	00000000 	nop
    11f0:	1440000b 	bnez	v0,1220 <Gameplay_Update+0x35c>
    11f4:	3c040000 	lui	a0,0x0
    11f8:	0c000000 	jal	0 <func_800BC450>
    11fc:	24840000 	addiu	a0,a0,0
    1200:	0c000000 	jal	0 <func_800BC450>
    1204:	24040014 	li	a0,20
    1208:	240f00ff 	li	t7,255
    120c:	3c010000 	lui	at,0x0
    1210:	a02f13e0 	sb	t7,5088(at)
    1214:	3c010000 	lui	at,0x0
    1218:	241800ff 	li	t8,255
    121c:	a03813e1 	sb	t8,5089(at)
    1220:	3c020000 	lui	v0,0x0
    1224:	8c420000 	lw	v0,0(v0)
    1228:	02002025 	move	a0,s0
    122c:	8459086a 	lh	t9,2154(v0)
    1230:	17200006 	bnez	t9,124c <Gameplay_Update+0x388>
    1234:	00000000 	nop
    1238:	02002025 	move	a0,s0
    123c:	0c000000 	jal	0 <func_800BC450>
    1240:	92251e5e 	lbu	a1,7774(s1)
    1244:	10000004 	b	1258 <Gameplay_Update+0x394>
    1248:	9222241b 	lbu	v0,9243(s1)
    124c:	0c000000 	jal	0 <func_800BC450>
    1250:	8445086c 	lh	a1,2156(v0)
    1254:	9222241b 	lbu	v0,9243(s1)
    1258:	28410004 	slti	at,v0,4
    125c:	102000fc 	beqz	at,1650 <Gameplay_Update+0x78c>
    1260:	3c010001 	lui	at,0x1
    1264:	342121c8 	ori	at,at,0x21c8
    1268:	02012021 	addu	a0,s0,at
    126c:	afa40040 	sw	a0,64(sp)
    1270:	8e3923f4 	lw	t9,9204(s1)
    1274:	0320f809 	jalr	t9
    1278:	00000000 	nop
    127c:	8e2323f0 	lw	v1,9200(s1)
    1280:	24010001 	li	at,1
    1284:	00034943 	sra	t1,v1,0x5
    1288:	15210006 	bne	t1,at,12a4 <Gameplay_Update+0x3e0>
    128c:	00000000 	nop
    1290:	8e392408 	lw	t9,9224(s1)
    1294:	8fa40040 	lw	a0,64(sp)
    1298:	34650080 	ori	a1,v1,0x80
    129c:	0320f809 	jalr	t9
    12a0:	00000000 	nop
    12a4:	3c020000 	lui	v0,0x0
    12a8:	24420000 	addiu	v0,v0,0
    12ac:	240a000e 	li	t2,14
    12b0:	a04a1419 	sb	t2,5145(v0)
    12b4:	8e2323f0 	lw	v1,9200(s1)
    12b8:	24010008 	li	at,8
    12bc:	240b001c 	li	t3,28
    12c0:	10610004 	beq	v1,at,12d4 <Gameplay_Update+0x410>
    12c4:	240c003c 	li	t4,60
    12c8:	24010009 	li	at,9
    12cc:	54610003 	bnel	v1,at,12dc <Gameplay_Update+0x418>
    12d0:	a04c1418 	sb	t4,5144(v0)
    12d4:	a04b1419 	sb	t3,5145(v0)
    12d8:	a04c1418 	sb	t4,5144(v0)
    12dc:	8e2323f0 	lw	v1,9200(s1)
    12e0:	24010004 	li	at,4
    12e4:	240d0014 	li	t5,20
    12e8:	10610003 	beq	v1,at,12f8 <Gameplay_Update+0x434>
    12ec:	24010005 	li	at,5
    12f0:	54610005 	bnel	v1,at,1308 <Gameplay_Update+0x444>
    12f4:	24010006 	li	at,6
    12f8:	a04d1418 	sb	t5,5144(v0)
    12fc:	1000000f 	b	133c <Gameplay_Update+0x478>
    1300:	8e2323f0 	lw	v1,9200(s1)
    1304:	24010006 	li	at,6
    1308:	10610004 	beq	v1,at,131c <Gameplay_Update+0x458>
    130c:	240e0096 	li	t6,150
    1310:	24010007 	li	at,7
    1314:	54610005 	bnel	v1,at,132c <Gameplay_Update+0x468>
    1318:	24010011 	li	at,17
    131c:	a04e1418 	sb	t6,5144(v0)
    1320:	10000006 	b	133c <Gameplay_Update+0x478>
    1324:	8e2323f0 	lw	v1,9200(s1)
    1328:	24010011 	li	at,17
    132c:	14610003 	bne	v1,at,133c <Gameplay_Update+0x478>
    1330:	240f0002 	li	t7,2
    1334:	a04f1418 	sb	t7,5144(v0)
    1338:	8e2323f0 	lw	v1,9200(s1)
    133c:	24010003 	li	at,3
    1340:	10610009 	beq	v1,at,1368 <Gameplay_Update+0x4a4>
    1344:	24010005 	li	at,5
    1348:	10610007 	beq	v1,at,1368 <Gameplay_Update+0x4a4>
    134c:	24010007 	li	at,7
    1350:	10610005 	beq	v1,at,1368 <Gameplay_Update+0x4a4>
    1354:	2401000d 	li	at,13
    1358:	10610003 	beq	v1,at,1368 <Gameplay_Update+0x4a4>
    135c:	24010011 	li	at,17
    1360:	54610010 	bnel	v1,at,13a4 <Gameplay_Update+0x4e0>
    1364:	24010012 	li	at,18
    1368:	8e39240c 	lw	t9,9228(s1)
    136c:	3c05a0a0 	lui	a1,0xa0a0
    1370:	34a5a0ff 	ori	a1,a1,0xa0ff
    1374:	0320f809 	jalr	t9
    1378:	8fa40040 	lw	a0,64(sp)
    137c:	8e222410 	lw	v0,9232(s1)
    1380:	8fa40040 	lw	a0,64(sp)
    1384:	3c05a0a0 	lui	a1,0xa0a0
    1388:	50400033 	beqzl	v0,1458 <Gameplay_Update+0x594>
    138c:	82381e15 	lb	t8,7701(s1)
    1390:	0040f809 	jalr	v0
    1394:	34a5a0ff 	ori	a1,a1,0xa0ff
    1398:	1000002f 	b	1458 <Gameplay_Update+0x594>
    139c:	82381e15 	lb	t8,7701(s1)
    13a0:	24010012 	li	at,18
    13a4:	54610010 	bnel	v1,at,13e8 <Gameplay_Update+0x524>
    13a8:	24010013 	li	at,19
    13ac:	8e39240c 	lw	t9,9228(s1)
    13b0:	3c058c8c 	lui	a1,0x8c8c
    13b4:	34a564ff 	ori	a1,a1,0x64ff
    13b8:	0320f809 	jalr	t9
    13bc:	8fa40040 	lw	a0,64(sp)
    13c0:	8e222410 	lw	v0,9232(s1)
    13c4:	8fa40040 	lw	a0,64(sp)
    13c8:	3c058c8c 	lui	a1,0x8c8c
    13cc:	50400022 	beqzl	v0,1458 <Gameplay_Update+0x594>
    13d0:	82381e15 	lb	t8,7701(s1)
    13d4:	0040f809 	jalr	v0
    13d8:	34a564ff 	ori	a1,a1,0x64ff
    13dc:	1000001e 	b	1458 <Gameplay_Update+0x594>
    13e0:	82381e15 	lb	t8,7701(s1)
    13e4:	24010013 	li	at,19
    13e8:	54610010 	bnel	v1,at,142c <Gameplay_Update+0x568>
    13ec:	8e39240c 	lw	t9,9228(s1)
    13f0:	8e39240c 	lw	t9,9228(s1)
    13f4:	3c054664 	lui	a1,0x4664
    13f8:	34a56eff 	ori	a1,a1,0x6eff
    13fc:	0320f809 	jalr	t9
    1400:	8fa40040 	lw	a0,64(sp)
    1404:	8e222410 	lw	v0,9232(s1)
    1408:	8fa40040 	lw	a0,64(sp)
    140c:	3c054664 	lui	a1,0x4664
    1410:	50400011 	beqzl	v0,1458 <Gameplay_Update+0x594>
    1414:	82381e15 	lb	t8,7701(s1)
    1418:	0040f809 	jalr	v0
    141c:	34a56eff 	ori	a1,a1,0x6eff
    1420:	1000000d 	b	1458 <Gameplay_Update+0x594>
    1424:	82381e15 	lb	t8,7701(s1)
    1428:	8e39240c 	lw	t9,9228(s1)
    142c:	8fa40040 	lw	a0,64(sp)
    1430:	00002825 	move	a1,zero
    1434:	0320f809 	jalr	t9
    1438:	00000000 	nop
    143c:	8e222410 	lw	v0,9232(s1)
    1440:	8fa40040 	lw	a0,64(sp)
    1444:	50400004 	beqzl	v0,1458 <Gameplay_Update+0x594>
    1448:	82381e15 	lb	t8,7701(s1)
    144c:	0040f809 	jalr	v0
    1450:	00002825 	move	a1,zero
    1454:	82381e15 	lb	t8,7701(s1)
    1458:	2401ffec 	li	at,-20
    145c:	57010009 	bnel	t8,at,1484 <Gameplay_Update+0x5c0>
    1460:	8e392408 	lw	t9,9224(s1)
    1464:	8e392408 	lw	t9,9224(s1)
    1468:	8fa40040 	lw	a0,64(sp)
    146c:	24050001 	li	a1,1
    1470:	0320f809 	jalr	t9
    1474:	00000000 	nop
    1478:	10000007 	b	1498 <Gameplay_Update+0x5d4>
    147c:	8e392404 	lw	t9,9220(s1)
    1480:	8e392408 	lw	t9,9224(s1)
    1484:	8fa40040 	lw	a0,64(sp)
    1488:	24050002 	li	a1,2
    148c:	0320f809 	jalr	t9
    1490:	00000000 	nop
    1494:	8e392404 	lw	t9,9220(s1)
    1498:	8fa40040 	lw	a0,64(sp)
    149c:	0320f809 	jalr	t9
    14a0:	00000000 	nop
    14a4:	8e2923f0 	lw	t1,9200(s1)
    14a8:	2401000d 	li	at,13
    14ac:	240a000b 	li	t2,11
    14b0:	15210005 	bne	t1,at,14c8 <Gameplay_Update+0x604>
    14b4:	240b0003 	li	t3,3
    14b8:	3c010001 	lui	at,0x1
    14bc:	00300821 	addu	at,at,s0
    14c0:	10000004 	b	14d4 <Gameplay_Update+0x610>
    14c4:	a02a241b 	sb	t2,9243(at)
    14c8:	3c010001 	lui	at,0x1
    14cc:	00300821 	addu	at,at,s0
    14d0:	a02b241b 	sb	t3,9243(at)
    14d4:	1000005e 	b	1650 <Gameplay_Update+0x78c>
    14d8:	9222241b 	lbu	v0,9243(s1)
    14dc:	3c010001 	lui	at,0x1
    14e0:	342121c8 	ori	at,at,0x21c8
    14e4:	02012021 	addu	a0,s0,at
    14e8:	afa40040 	sw	a0,64(sp)
    14ec:	8e392414 	lw	t9,9236(s1)
    14f0:	0320f809 	jalr	t9
    14f4:	00000000 	nop
    14f8:	1040004f 	beqz	v0,1638 <Gameplay_Update+0x774>
    14fc:	3c090000 	lui	t1,0x0
    1500:	8e2c23f0 	lw	t4,9200(s1)
    1504:	29810038 	slti	at,t4,56
    1508:	54200010 	bnezl	at,154c <Gameplay_Update+0x688>
    150c:	822e1e15 	lb	t6,7701(s1)
    1510:	822d1e15 	lb	t5,7701(s1)
    1514:	2401ffec 	li	at,-20
    1518:	55a10044 	bnel	t5,at,162c <Gameplay_Update+0x768>
    151c:	3c010001 	lui	at,0x1
    1520:	8e3923f8 	lw	t9,9208(s1)
    1524:	8fa40040 	lw	a0,64(sp)
    1528:	0320f809 	jalr	t9
    152c:	00000000 	nop
    1530:	0c000000 	jal	0 <func_800BC450>
    1534:	02002025 	move	a0,s0
    1538:	3c010001 	lui	at,0x1
    153c:	00300821 	addu	at,at,s0
    1540:	10000039 	b	1628 <Gameplay_Update+0x764>
    1544:	a020241b 	sb	zero,9243(at)
    1548:	822e1e15 	lb	t6,7701(s1)
    154c:	2401ffec 	li	at,-20
    1550:	3c0f0000 	lui	t7,0x0
    1554:	51c1001e 	beql	t6,at,15d0 <Gameplay_Update+0x70c>
    1558:	8e3923f8 	lw	t9,9208(s1)
    155c:	ae000098 	sw	zero,152(s0)
    1560:	8def135c 	lw	t7,4956(t7)
    1564:	24010002 	li	at,2
    1568:	3c0d0000 	lui	t5,0x0
    156c:	11e10012 	beq	t7,at,15b8 <Gameplay_Update+0x6f4>
    1570:	25ad0000 	addiu	t5,t5,0
    1574:	3c180000 	lui	t8,0x0
    1578:	3c090001 	lui	t1,0x1
    157c:	35292518 	ori	t1,t1,0x2518
    1580:	27180000 	addiu	t8,t8,0
    1584:	ae18000c 	sw	t8,12(s0)
    1588:	ae090010 	sw	t1,16(s0)
    158c:	862a1e1a 	lh	t2,7706(s1)
    1590:	3c010000 	lui	at,0x0
    1594:	3c0b0000 	lui	t3,0x0
    1598:	ac2a0000 	sw	t2,0(at)
    159c:	956b1404 	lhu	t3,5124(t3)
    15a0:	24010001 	li	at,1
    15a4:	240c0003 	li	t4,3
    15a8:	1561001f 	bne	t3,at,1628 <Gameplay_Update+0x764>
    15ac:	3c010000 	lui	at,0x0
    15b0:	1000001d 	b	1628 <Gameplay_Update+0x764>
    15b4:	a42c1404 	sh	t4,5124(at)
    15b8:	3c190001 	lui	t9,0x1
    15bc:	3739cae0 	ori	t9,t9,0xcae0
    15c0:	ae190010 	sw	t9,16(s0)
    15c4:	10000018 	b	1628 <Gameplay_Update+0x764>
    15c8:	ae0d000c 	sw	t5,12(s0)
    15cc:	8e3923f8 	lw	t9,9208(s1)
    15d0:	8fa40040 	lw	a0,64(sp)
    15d4:	0320f809 	jalr	t9
    15d8:	00000000 	nop
    15dc:	0c000000 	jal	0 <func_800BC450>
    15e0:	02002025 	move	a0,s0
    15e4:	3c010001 	lui	at,0x1
    15e8:	00300821 	addu	at,at,s0
    15ec:	a020241b 	sb	zero,9243(at)
    15f0:	3c0e0000 	lui	t6,0x0
    15f4:	8dce0000 	lw	t6,0(t6)
    15f8:	24010003 	li	at,3
    15fc:	3c040000 	lui	a0,0x0
    1600:	55c1000a 	bnel	t6,at,162c <Gameplay_Update+0x768>
    1604:	3c010001 	lui	at,0x1
    1608:	0c000000 	jal	0 <func_800BC450>
    160c:	24840000 	addiu	a0,a0,0
    1610:	3c180000 	lui	t8,0x0
    1614:	8f180000 	lw	t8,0(t8)
    1618:	3c010000 	lui	at,0x0
    161c:	ac200000 	sw	zero,0(at)
    1620:	240f0003 	li	t7,3
    1624:	a70f0110 	sh	t7,272(t8)
    1628:	3c010001 	lui	at,0x1
    162c:	00300821 	addu	at,at,s0
    1630:	10000006 	b	164c <Gameplay_Update+0x788>
    1634:	a0201e15 	sb	zero,7701(at)
    1638:	8e3923fc 	lw	t9,9212(s1)
    163c:	8d290000 	lw	t1,0(t1)
    1640:	8fa40040 	lw	a0,64(sp)
    1644:	0320f809 	jalr	t9
    1648:	85250110 	lh	a1,272(t1)
    164c:	9222241b 	lbu	v0,9243(s1)
    1650:	244afffc 	addiu	t2,v0,-4
    1654:	2d41000e 	sltiu	at,t2,14
    1658:	102001a7 	beqz	at,1cf8 <L800BE148>
    165c:	000a5080 	sll	t2,t2,0x2
    1660:	3c010000 	lui	at,0x0
    1664:	002a0821 	addu	at,at,t2
    1668:	8c2a0000 	lw	t2,0(at)
    166c:	01400008 	jr	t2
    1670:	00000000 	nop

00001674 <L800BDAC4>:
    1674:	3c030000 	lui	v1,0x0
    1678:	24630000 	addiu	v1,v1,0
    167c:	3c010001 	lui	at,0x1
    1680:	a4600000 	sh	zero,0(v1)
    1684:	00300821 	addu	at,at,s0
    1688:	240b0001 	li	t3,1
    168c:	a02b0b05 	sb	t3,2821(at)
    1690:	822c1e15 	lb	t4,7701(s1)
    1694:	240200a0 	li	v0,160
    1698:	2401ffec 	li	at,-20
    169c:	a2220b06 	sb	v0,2822(s1)
    16a0:	a2220b07 	sb	v0,2823(s1)
    16a4:	11810007 	beq	t4,at,16c4 <L800BDAC4+0x50>
    16a8:	a2220b08 	sb	v0,2824(s1)
    16ac:	3c010001 	lui	at,0x1
    16b0:	a2200b09 	sb	zero,2825(s1)
    16b4:	00300821 	addu	at,at,s0
    16b8:	240d0005 	li	t5,5
    16bc:	1000018e 	b	1cf8 <L800BE148>
    16c0:	a02d241b 	sb	t5,9243(at)
    16c4:	240e00ff 	li	t6,255
    16c8:	3c010001 	lui	at,0x1
    16cc:	a22e0b09 	sb	t6,2825(s1)
    16d0:	00300821 	addu	at,at,s0
    16d4:	240f0006 	li	t7,6
    16d8:	10000187 	b	1cf8 <L800BE148>
    16dc:	a02f241b 	sb	t7,9243(at)

000016e0 <L800BDB30>:
    16e0:	3c030000 	lui	v1,0x0
    16e4:	24630000 	addiu	v1,v1,0
    16e8:	84780000 	lh	t8,0(v1)
    16ec:	3c0141a0 	lui	at,0x41a0
    16f0:	44813000 	mtc1	at,$f6
    16f4:	44989000 	mtc1	t8,$f18
    16f8:	3c01437f 	lui	at,0x437f
    16fc:	44815000 	mtc1	at,$f10
    1700:	46809120 	cvt.s.w	$f4,$f18
    1704:	24190001 	li	t9,1
    1708:	3c0a0001 	lui	t2,0x1
    170c:	3c014f00 	lui	at,0x4f00
    1710:	354a2518 	ori	t2,t2,0x2518
    1714:	46062203 	div.s	$f8,$f4,$f6
    1718:	460a4402 	mul.s	$f16,$f8,$f10
    171c:	4449f800 	cfc1	t1,$31
    1720:	44d9f800 	ctc1	t9,$31
    1724:	00000000 	nop
    1728:	460084a4 	cvt.w.s	$f18,$f16
    172c:	4459f800 	cfc1	t9,$31
    1730:	00000000 	nop
    1734:	33390078 	andi	t9,t9,0x78
    1738:	53200013 	beqzl	t9,1788 <L800BDB30+0xa8>
    173c:	44199000 	mfc1	t9,$f18
    1740:	44819000 	mtc1	at,$f18
    1744:	24190001 	li	t9,1
    1748:	46128481 	sub.s	$f18,$f16,$f18
    174c:	44d9f800 	ctc1	t9,$31
    1750:	00000000 	nop
    1754:	460094a4 	cvt.w.s	$f18,$f18
    1758:	4459f800 	cfc1	t9,$31
    175c:	00000000 	nop
    1760:	33390078 	andi	t9,t9,0x78
    1764:	17200005 	bnez	t9,177c <L800BDB30+0x9c>
    1768:	00000000 	nop
    176c:	44199000 	mfc1	t9,$f18
    1770:	3c018000 	lui	at,0x8000
    1774:	10000007 	b	1794 <L800BDB30+0xb4>
    1778:	0321c825 	or	t9,t9,at
    177c:	10000005 	b	1794 <L800BDB30+0xb4>
    1780:	2419ffff 	li	t9,-1
    1784:	44199000 	mfc1	t9,$f18
    1788:	00000000 	nop
    178c:	0720fffb 	bltz	t9,177c <L800BDB30+0x9c>
    1790:	00000000 	nop
    1794:	a2390b09 	sb	t9,2825(s1)
    1798:	84620000 	lh	v0,0(v1)
    179c:	44c9f800 	ctc1	t1,$31
    17a0:	28410014 	slti	at,v0,20
    17a4:	14200010 	bnez	at,17e8 <L800BDB30+0x108>
    17a8:	244c0001 	addiu	t4,v0,1
    17ac:	3c020000 	lui	v0,0x0
    17b0:	24420000 	addiu	v0,v0,0
    17b4:	ae000098 	sw	zero,152(s0)
    17b8:	ae02000c 	sw	v0,12(s0)
    17bc:	ae0a0010 	sw	t2,16(s0)
    17c0:	862b1e1a 	lh	t3,7706(s1)
    17c4:	3c010000 	lui	at,0x0
    17c8:	ac2b0000 	sw	t3,0(at)
    17cc:	3c010001 	lui	at,0x1
    17d0:	00300821 	addu	at,at,s0
    17d4:	a0201e15 	sb	zero,7701(at)
    17d8:	3c010001 	lui	at,0x1
    17dc:	00300821 	addu	at,at,s0
    17e0:	10000145 	b	1cf8 <L800BE148>
    17e4:	a020241b 	sb	zero,9243(at)
    17e8:	10000143 	b	1cf8 <L800BE148>
    17ec:	a46c0000 	sh	t4,0(v1)

000017f0 <L800BDC40>:
    17f0:	3c030000 	lui	v1,0x0
    17f4:	24630000 	addiu	v1,v1,0
    17f8:	846d0000 	lh	t5,0(v1)
    17fc:	3c0141a0 	lui	at,0x41a0
    1800:	44814000 	mtc1	at,$f8
    1804:	448d2000 	mtc1	t5,$f4
    1808:	3c013f80 	lui	at,0x3f80
    180c:	44818000 	mtc1	at,$f16
    1810:	468021a0 	cvt.s.w	$f6,$f4
    1814:	3c01437f 	lui	at,0x437f
    1818:	44812000 	mtc1	at,$f4
    181c:	240f0001 	li	t7,1
    1820:	3c014f00 	lui	at,0x4f00
    1824:	24180003 	li	t8,3
    1828:	46083283 	div.s	$f10,$f6,$f8
    182c:	3c090000 	lui	t1,0x0
    1830:	460a8481 	sub.s	$f18,$f16,$f10
    1834:	46049182 	mul.s	$f6,$f18,$f4
    1838:	444ef800 	cfc1	t6,$31
    183c:	44cff800 	ctc1	t7,$31
    1840:	00000000 	nop
    1844:	46003224 	cvt.w.s	$f8,$f6
    1848:	444ff800 	cfc1	t7,$31
    184c:	00000000 	nop
    1850:	31ef0078 	andi	t7,t7,0x78
    1854:	51e00013 	beqzl	t7,18a4 <L800BDC40+0xb4>
    1858:	440f4000 	mfc1	t7,$f8
    185c:	44814000 	mtc1	at,$f8
    1860:	240f0001 	li	t7,1
    1864:	46083201 	sub.s	$f8,$f6,$f8
    1868:	44cff800 	ctc1	t7,$31
    186c:	00000000 	nop
    1870:	46004224 	cvt.w.s	$f8,$f8
    1874:	444ff800 	cfc1	t7,$31
    1878:	00000000 	nop
    187c:	31ef0078 	andi	t7,t7,0x78
    1880:	15e00005 	bnez	t7,1898 <L800BDC40+0xa8>
    1884:	00000000 	nop
    1888:	440f4000 	mfc1	t7,$f8
    188c:	3c018000 	lui	at,0x8000
    1890:	10000007 	b	18b0 <L800BDC40+0xc0>
    1894:	01e17825 	or	t7,t7,at
    1898:	10000005 	b	18b0 <L800BDC40+0xc0>
    189c:	240fffff 	li	t7,-1
    18a0:	440f4000 	mfc1	t7,$f8
    18a4:	00000000 	nop
    18a8:	05e0fffb 	bltz	t7,1898 <L800BDC40+0xa8>
    18ac:	00000000 	nop
    18b0:	a22f0b09 	sb	t7,2825(s1)
    18b4:	84620000 	lh	v0,0(v1)
    18b8:	44cef800 	ctc1	t6,$31
    18bc:	28410014 	slti	at,v0,20
    18c0:	1420000f 	bnez	at,1900 <L800BDC40+0x110>
    18c4:	24590001 	addiu	t9,v0,1
    18c8:	8d290000 	lw	t1,0(t1)
    18cc:	3c010000 	lui	at,0x0
    18d0:	ac200000 	sw	zero,0(at)
    18d4:	3c010001 	lui	at,0x1
    18d8:	00300821 	addu	at,at,s0
    18dc:	a5380110 	sh	t8,272(t1)
    18e0:	a0201e15 	sb	zero,7701(at)
    18e4:	3c010001 	lui	at,0x1
    18e8:	00300821 	addu	at,at,s0
    18ec:	a020241b 	sb	zero,9243(at)
    18f0:	3c010001 	lui	at,0x1
    18f4:	00300821 	addu	at,at,s0
    18f8:	100000ff 	b	1cf8 <L800BE148>
    18fc:	a0200b05 	sb	zero,2821(at)
    1900:	100000fd 	b	1cf8 <L800BE148>
    1904:	a4790000 	sh	t9,0(v1)

00001908 <L800BDD58>:
    1908:	3c030000 	lui	v1,0x0
    190c:	24630000 	addiu	v1,v1,0
    1910:	3c010001 	lui	at,0x1
    1914:	a4600000 	sh	zero,0(v1)
    1918:	00300821 	addu	at,at,s0
    191c:	240a0001 	li	t2,1
    1920:	a02a0b05 	sb	t2,2821(at)
    1924:	822d1e15 	lb	t5,7701(s1)
    1928:	240200a0 	li	v0,160
    192c:	240b00aa 	li	t3,170
    1930:	240c0096 	li	t4,150
    1934:	2401ffec 	li	at,-20
    1938:	a22b0b06 	sb	t3,2822(s1)
    193c:	a2220b07 	sb	v0,2823(s1)
    1940:	11a10007 	beq	t5,at,1960 <L800BDD58+0x58>
    1944:	a22c0b08 	sb	t4,2824(s1)
    1948:	3c010001 	lui	at,0x1
    194c:	a2200b09 	sb	zero,2825(s1)
    1950:	00300821 	addu	at,at,s0
    1954:	240e0005 	li	t6,5
    1958:	100000e7 	b	1cf8 <L800BE148>
    195c:	a02e241b 	sb	t6,9243(at)
    1960:	240f00ff 	li	t7,255
    1964:	3c010001 	lui	at,0x1
    1968:	a22f0b09 	sb	t7,2825(s1)
    196c:	00300821 	addu	at,at,s0
    1970:	24180006 	li	t8,6
    1974:	100000e0 	b	1cf8 <L800BE148>
    1978:	a038241b 	sb	t8,9243(at)

0000197c <L800BDDCC>:
    197c:	82291e15 	lb	t1,7701(s1)
    1980:	2401ffec 	li	at,-20
    1984:	240b0003 	li	t3,3
    1988:	11210012 	beq	t1,at,19d4 <L800BDDCC+0x58>
    198c:	3c0c0000 	lui	t4,0x0
    1990:	3c020000 	lui	v0,0x0
    1994:	3c190001 	lui	t9,0x1
    1998:	37392518 	ori	t9,t9,0x2518
    199c:	24420000 	addiu	v0,v0,0
    19a0:	ae000098 	sw	zero,152(s0)
    19a4:	ae02000c 	sw	v0,12(s0)
    19a8:	ae190010 	sw	t9,16(s0)
    19ac:	862a1e1a 	lh	t2,7706(s1)
    19b0:	3c010000 	lui	at,0x0
    19b4:	ac2a0000 	sw	t2,0(at)
    19b8:	3c010001 	lui	at,0x1
    19bc:	00300821 	addu	at,at,s0
    19c0:	a0201e15 	sb	zero,7701(at)
    19c4:	3c010001 	lui	at,0x1
    19c8:	00300821 	addu	at,at,s0
    19cc:	100000ca 	b	1cf8 <L800BE148>
    19d0:	a020241b 	sb	zero,9243(at)
    19d4:	8d8c0000 	lw	t4,0(t4)
    19d8:	3c010000 	lui	at,0x0
    19dc:	ac200000 	sw	zero,0(at)
    19e0:	3c010001 	lui	at,0x1
    19e4:	00300821 	addu	at,at,s0
    19e8:	a58b0110 	sh	t3,272(t4)
    19ec:	a0201e15 	sb	zero,7701(at)
    19f0:	3c010001 	lui	at,0x1
    19f4:	00300821 	addu	at,at,s0
    19f8:	100000bf 	b	1cf8 <L800BE148>
    19fc:	a020241b 	sb	zero,9243(at)

00001a00 <L800BDE50>:
    1a00:	3c0d0000 	lui	t5,0x0
    1a04:	91ad1410 	lbu	t5,5136(t5)
    1a08:	3c010001 	lui	at,0x1
    1a0c:	00300821 	addu	at,at,s0
    1a10:	11a000b9 	beqz	t5,1cf8 <L800BE148>
    1a14:	240e0003 	li	t6,3
    1a18:	100000b7 	b	1cf8 <L800BE148>
    1a1c:	a02e241b 	sb	t6,9243(at)

00001a20 <L800BDE70>:
    1a20:	822f1e15 	lb	t7,7701(s1)
    1a24:	2401ffec 	li	at,-20
    1a28:	240200ff 	li	v0,255
    1a2c:	11e1000a 	beq	t7,at,1a58 <L800BDE70+0x38>
    1a30:	24190002 	li	t9,2
    1a34:	3c010001 	lui	at,0x1
    1a38:	00300821 	addu	at,at,s0
    1a3c:	24180001 	li	t8,1
    1a40:	a0380b0a 	sb	t8,2826(at)
    1a44:	3c010001 	lui	at,0x1
    1a48:	00300821 	addu	at,at,s0
    1a4c:	2409000d 	li	t1,13
    1a50:	100000a9 	b	1cf8 <L800BE148>
    1a54:	a029241b 	sb	t1,9243(at)
    1a58:	3c010001 	lui	at,0x1
    1a5c:	00300821 	addu	at,at,s0
    1a60:	a0390b0a 	sb	t9,2826(at)
    1a64:	3c010001 	lui	at,0x1
    1a68:	00300821 	addu	at,at,s0
    1a6c:	a0220b0b 	sb	v0,2827(at)
    1a70:	3c010001 	lui	at,0x1
    1a74:	00300821 	addu	at,at,s0
    1a78:	a0220b0c 	sb	v0,2828(at)
    1a7c:	3c010001 	lui	at,0x1
    1a80:	00300821 	addu	at,at,s0
    1a84:	240a000d 	li	t2,13
    1a88:	1000009b 	b	1cf8 <L800BE148>
    1a8c:	a02a241b 	sb	t2,9243(at)

00001a90 <L800BDEE0>:
    1a90:	3c0b0000 	lui	t3,0x0
    1a94:	3c0c0000 	lui	t4,0x0
    1a98:	258c0000 	addiu	t4,t4,0
    1a9c:	25670000 	addiu	a3,t3,0
    1aa0:	3c050000 	lui	a1,0x0
    1aa4:	24a50000 	addiu	a1,a1,0
    1aa8:	afa70010 	sw	a3,16(sp)
    1aac:	afac0014 	sw	t4,20(sp)
    1ab0:	240420c0 	li	a0,8384
    1ab4:	0c000000 	jal	0 <func_800BC450>
    1ab8:	24060004 	li	a2,4
    1abc:	822d1e15 	lb	t5,7701(s1)
    1ac0:	2401ffec 	li	at,-20
    1ac4:	55a10013 	bnel	t5,at,1b14 <L800BDEE0+0x84>
    1ac8:	92290b0c 	lbu	t1,2828(s1)
    1acc:	922e0b0b 	lbu	t6,2827(s1)
    1ad0:	240f0003 	li	t7,3
    1ad4:	3c180000 	lui	t8,0x0
    1ad8:	29c1006e 	slti	at,t6,110
    1adc:	10200086 	beqz	at,1cf8 <L800BE148>
    1ae0:	00000000 	nop
    1ae4:	8f180000 	lw	t8,0(t8)
    1ae8:	3c010000 	lui	at,0x0
    1aec:	ac200000 	sw	zero,0(at)
    1af0:	3c010001 	lui	at,0x1
    1af4:	00300821 	addu	at,at,s0
    1af8:	a70f0110 	sh	t7,272(t8)
    1afc:	a0201e15 	sb	zero,7701(at)
    1b00:	3c010001 	lui	at,0x1
    1b04:	00300821 	addu	at,at,s0
    1b08:	1000007b 	b	1cf8 <L800BE148>
    1b0c:	a020241b 	sb	zero,9243(at)
    1b10:	92290b0c 	lbu	t1,2828(s1)
    1b14:	240100ff 	li	at,255
    1b18:	3c020000 	lui	v0,0x0
    1b1c:	15210076 	bne	t1,at,1cf8 <L800BE148>
    1b20:	24420000 	addiu	v0,v0,0
    1b24:	3c190001 	lui	t9,0x1
    1b28:	37392518 	ori	t9,t9,0x2518
    1b2c:	ae000098 	sw	zero,152(s0)
    1b30:	ae190010 	sw	t9,16(s0)
    1b34:	ae02000c 	sw	v0,12(s0)
    1b38:	862a1e1a 	lh	t2,7706(s1)
    1b3c:	3c010000 	lui	at,0x0
    1b40:	ac2a0000 	sw	t2,0(at)
    1b44:	3c010001 	lui	at,0x1
    1b48:	00300821 	addu	at,at,s0
    1b4c:	a0201e15 	sb	zero,7701(at)
    1b50:	3c010001 	lui	at,0x1
    1b54:	00300821 	addu	at,at,s0
    1b58:	10000067 	b	1cf8 <L800BE148>
    1b5c:	a020241b 	sb	zero,9243(at)

00001b60 <L800BDFB0>:
    1b60:	822b1e15 	lb	t3,7701(s1)
    1b64:	2401ffec 	li	at,-20
    1b68:	240200ff 	li	v0,255
    1b6c:	15610019 	bne	t3,at,1bd4 <L800BDFB0+0x74>
    1b70:	240e000c 	li	t6,12
    1b74:	3c010001 	lui	at,0x1
    1b78:	00300821 	addu	at,at,s0
    1b7c:	240c0004 	li	t4,4
    1b80:	a02c0b0a 	sb	t4,2826(at)
    1b84:	3c010001 	lui	at,0x1
    1b88:	00300821 	addu	at,at,s0
    1b8c:	a0220b0b 	sb	v0,2827(at)
    1b90:	3c010001 	lui	at,0x1
    1b94:	00300821 	addu	at,at,s0
    1b98:	3c040000 	lui	a0,0x0
    1b9c:	a0220b0c 	sb	v0,2828(at)
    1ba0:	24840000 	addiu	a0,a0,0
    1ba4:	0c000000 	jal	0 <func_800BC450>
    1ba8:	24050d8f 	li	a1,3471
    1bac:	3c040000 	lui	a0,0x0
    1bb0:	3c050000 	lui	a1,0x0
    1bb4:	24a50000 	addiu	a1,a1,0
    1bb8:	0c000000 	jal	0 <func_800BC450>
    1bbc:	24840000 	addiu	a0,a0,0
    1bc0:	3c010001 	lui	at,0x1
    1bc4:	00300821 	addu	at,at,s0
    1bc8:	240d000f 	li	t5,15
    1bcc:	1000004a 	b	1cf8 <L800BE148>
    1bd0:	a02d241b 	sb	t5,9243(at)
    1bd4:	3c010001 	lui	at,0x1
    1bd8:	00300821 	addu	at,at,s0
    1bdc:	10000046 	b	1cf8 <L800BE148>
    1be0:	a02e241b 	sb	t6,9243(at)

00001be4 <L800BE034>:
    1be4:	3c070000 	lui	a3,0x0
    1be8:	3c0f0000 	lui	t7,0x0
    1bec:	24e70000 	addiu	a3,a3,0
    1bf0:	25ef0000 	addiu	t7,t7,0
    1bf4:	3c050000 	lui	a1,0x0
    1bf8:	24a50000 	addiu	a1,a1,0
    1bfc:	afaf0014 	sw	t7,20(sp)
    1c00:	afa70010 	sw	a3,16(sp)
    1c04:	240420c0 	li	a0,8384
    1c08:	0c000000 	jal	0 <func_800BC450>
    1c0c:	24060004 	li	a2,4
    1c10:	82381e15 	lb	t8,7701(s1)
    1c14:	2401ffec 	li	at,-20
    1c18:	17010037 	bne	t8,at,1cf8 <L800BE148>
    1c1c:	00000000 	nop
    1c20:	92290b0b 	lbu	t1,2827(s1)
    1c24:	3c010000 	lui	at,0x0
    1c28:	24190003 	li	t9,3
    1c2c:	1d200032 	bgtz	t1,1cf8 <L800BE148>
    1c30:	3c0a0000 	lui	t2,0x0
    1c34:	8d4a0000 	lw	t2,0(t2)
    1c38:	ac200000 	sw	zero,0(at)
    1c3c:	3c010001 	lui	at,0x1
    1c40:	00300821 	addu	at,at,s0
    1c44:	a5590110 	sh	t9,272(t2)
    1c48:	a0201e15 	sb	zero,7701(at)
    1c4c:	3c010001 	lui	at,0x1
    1c50:	00300821 	addu	at,at,s0
    1c54:	10000028 	b	1cf8 <L800BE148>
    1c58:	a020241b 	sb	zero,9243(at)

00001c5c <L800BE0AC>:
    1c5c:	3c030000 	lui	v1,0x0
    1c60:	24630000 	addiu	v1,v1,0
    1c64:	3c010001 	lui	at,0x1
    1c68:	a4600000 	sh	zero,0(v1)
    1c6c:	00300821 	addu	at,at,s0
    1c70:	240b0001 	li	t3,1
    1c74:	a02b0b05 	sb	t3,2821(at)
    1c78:	240c00ff 	li	t4,255
    1c7c:	3c010001 	lui	at,0x1
    1c80:	a2200b06 	sb	zero,2822(s1)
    1c84:	a2200b07 	sb	zero,2823(s1)
    1c88:	a2200b08 	sb	zero,2824(s1)
    1c8c:	a22c0b09 	sb	t4,2825(s1)
    1c90:	00300821 	addu	at,at,s0
    1c94:	240d0011 	li	t5,17
    1c98:	10000017 	b	1cf8 <L800BE148>
    1c9c:	a02d241b 	sb	t5,9243(at)

00001ca0 <L800BE0F0>:
    1ca0:	3c020000 	lui	v0,0x0
    1ca4:	90421410 	lbu	v0,5136(v0)
    1ca8:	10400013 	beqz	v0,1cf8 <L800BE148>
    1cac:	00000000 	nop
    1cb0:	a2220b09 	sb	v0,2825(s1)
    1cb4:	3c0e0000 	lui	t6,0x0
    1cb8:	91ce1410 	lbu	t6,5136(t6)
    1cbc:	240f0003 	li	t7,3
    1cc0:	3c180000 	lui	t8,0x0
    1cc4:	29c10065 	slti	at,t6,101
    1cc8:	1020000b 	beqz	at,1cf8 <L800BE148>
    1ccc:	00000000 	nop
    1cd0:	8f180000 	lw	t8,0(t8)
    1cd4:	3c010000 	lui	at,0x0
    1cd8:	ac200000 	sw	zero,0(at)
    1cdc:	3c010001 	lui	at,0x1
    1ce0:	00300821 	addu	at,at,s0
    1ce4:	a70f0110 	sh	t7,272(t8)
    1ce8:	a0201e15 	sb	zero,7701(at)
    1cec:	3c010001 	lui	at,0x1
    1cf0:	00300821 	addu	at,at,s0
    1cf4:	a020241b 	sb	zero,9243(at)

00001cf8 <L800BE148>:
    1cf8:	3c090000 	lui	t1,0x0
    1cfc:	8d290000 	lw	t1,0(t1)
    1d00:	85241052 	lh	a0,4178(t1)
    1d04:	1080000c 	beqz	a0,1d38 <L800BE148+0x40>
    1d08:	00000000 	nop
    1d0c:	3c040000 	lui	a0,0x0
    1d10:	24840000 	addiu	a0,a0,0
    1d14:	0c000000 	jal	0 <func_800BC450>
    1d18:	24050dcd 	li	a1,3533
    1d1c:	3c040000 	lui	a0,0x0
    1d20:	24840000 	addiu	a0,a0,0
    1d24:	0c000000 	jal	0 <func_800BC450>
    1d28:	24050001 	li	a1,1
    1d2c:	3c190000 	lui	t9,0x0
    1d30:	8f390000 	lw	t9,0(t9)
    1d34:	87241052 	lh	a0,4178(t9)
    1d38:	3c020000 	lui	v0,0x0
    1d3c:	8c420000 	lw	v0,0(v0)
    1d40:	24010003 	li	at,3
    1d44:	10410276 	beq	v0,at,2720 <L800BE148+0xa28>
    1d48:	00000000 	nop
    1d4c:	10800008 	beqz	a0,1d70 <L800BE148+0x78>
    1d50:	3c040000 	lui	a0,0x0
    1d54:	24840000 	addiu	a0,a0,0
    1d58:	0c000000 	jal	0 <func_800BC450>
    1d5c:	24050dd6 	li	a1,3542
    1d60:	3c040000 	lui	a0,0x0
    1d64:	24840000 	addiu	a0,a0,0
    1d68:	0c000000 	jal	0 <func_800BC450>
    1d6c:	24050001 	li	a1,1
    1d70:	3c0a0000 	lui	t2,0x0
    1d74:	8d4a135c 	lw	t2,4956(t2)
    1d78:	15400009 	bnez	t2,1da0 <L800BE148+0xa8>
    1d7c:	00000000 	nop
    1d80:	922b03dc 	lbu	t3,988(s1)
    1d84:	15600006 	bnez	t3,1da0 <L800BE148+0xa8>
    1d88:	00000000 	nop
    1d8c:	962c0a20 	lhu	t4,2592(s1)
    1d90:	15800003 	bnez	t4,1da0 <L800BE148+0xa8>
    1d94:	00000000 	nop
    1d98:	0c000000 	jal	0 <func_800BC450>
    1d9c:	02002025 	move	a0,s0
    1da0:	3c0d0000 	lui	t5,0x0
    1da4:	8dad0000 	lw	t5,0(t5)
    1da8:	85a41052 	lh	a0,4178(t5)
    1dac:	5080000d 	beqzl	a0,1de4 <L800BE148+0xec>
    1db0:	96230934 	lhu	v1,2356(s1)
    1db4:	3c040000 	lui	a0,0x0
    1db8:	24840000 	addiu	a0,a0,0
    1dbc:	0c000000 	jal	0 <func_800BC450>
    1dc0:	24050ddf 	li	a1,3551
    1dc4:	3c040000 	lui	a0,0x0
    1dc8:	24840000 	addiu	a0,a0,0
    1dcc:	0c000000 	jal	0 <func_800BC450>
    1dd0:	24050001 	li	a1,1
    1dd4:	3c0e0000 	lui	t6,0x0
    1dd8:	8dce0000 	lw	t6,0(t6)
    1ddc:	85c41052 	lh	a0,4178(t6)
    1de0:	96230934 	lhu	v1,2356(s1)
    1de4:	0003182b 	sltu	v1,zero,v1
    1de8:	14600003 	bnez	v1,1df8 <L800BE148+0x100>
    1dec:	00000000 	nop
    1df0:	96230936 	lhu	v1,2358(s1)
    1df4:	0003182b 	sltu	v1,zero,v1
    1df8:	1080000b 	beqz	a0,1e28 <L800BE148+0x130>
    1dfc:	afa30080 	sw	v1,128(sp)
    1e00:	3c040000 	lui	a0,0x0
    1e04:	24840000 	addiu	a0,a0,0
    1e08:	24050de3 	li	a1,3555
    1e0c:	0c000000 	jal	0 <func_800BC450>
    1e10:	afa30050 	sw	v1,80(sp)
    1e14:	3c040000 	lui	a0,0x0
    1e18:	24840000 	addiu	a0,a0,0
    1e1c:	0c000000 	jal	0 <func_800BC450>
    1e20:	24050001 	li	a1,1
    1e24:	8fa30050 	lw	v1,80(sp)
    1e28:	3c010001 	lui	at,0x1
    1e2c:	34210b20 	ori	at,at,0xb20
    1e30:	02012021 	addu	a0,s0,at
    1e34:	afa40034 	sw	a0,52(sp)
    1e38:	0c000000 	jal	0 <func_800BC450>
    1e3c:	afa30050 	sw	v1,80(sp)
    1e40:	3c0f0000 	lui	t7,0x0
    1e44:	8def0000 	lw	t7,0(t7)
    1e48:	8fa30050 	lw	v1,80(sp)
    1e4c:	85f81052 	lh	t8,4178(t7)
    1e50:	1300000a 	beqz	t8,1e7c <L800BE148+0x184>
    1e54:	3c040000 	lui	a0,0x0
    1e58:	24840000 	addiu	a0,a0,0
    1e5c:	24050de9 	li	a1,3561
    1e60:	0c000000 	jal	0 <func_800BC450>
    1e64:	afa30050 	sw	v1,80(sp)
    1e68:	3c040000 	lui	a0,0x0
    1e6c:	24840000 	addiu	a0,a0,0
    1e70:	0c000000 	jal	0 <func_800BC450>
    1e74:	24050001 	li	a1,1
    1e78:	8fa30050 	lw	v1,80(sp)
    1e7c:	3c010001 	lui	at,0x1
    1e80:	342117a4 	ori	at,at,0x17a4
    1e84:	02012021 	addu	a0,s0,at
    1e88:	0c000000 	jal	0 <func_800BC450>
    1e8c:	afa30050 	sw	v1,80(sp)
    1e90:	3c090000 	lui	t1,0x0
    1e94:	8d290000 	lw	t1,0(t1)
    1e98:	8fa30050 	lw	v1,80(sp)
    1e9c:	85391052 	lh	t9,4178(t1)
    1ea0:	1320000a 	beqz	t9,1ecc <L800BE148+0x1d4>
    1ea4:	3c040000 	lui	a0,0x0
    1ea8:	24840000 	addiu	a0,a0,0
    1eac:	24050df9 	li	a1,3577
    1eb0:	0c000000 	jal	0 <func_800BC450>
    1eb4:	afa30050 	sw	v1,80(sp)
    1eb8:	3c040000 	lui	a0,0x0
    1ebc:	24840000 	addiu	a0,a0,0
    1ec0:	0c000000 	jal	0 <func_800BC450>
    1ec4:	24050001 	li	a1,1
    1ec8:	8fa30050 	lw	v1,80(sp)
    1ecc:	146000ed 	bnez	v1,2284 <L800BE148+0x58c>
    1ed0:	3c020000 	lui	v0,0x0
    1ed4:	8c420000 	lw	v0,0(v0)
    1ed8:	844a0764 	lh	t2,1892(v0)
    1edc:	154000e9 	bnez	t2,2284 <L800BE148+0x58c>
    1ee0:	00000000 	nop
    1ee4:	84441052 	lh	a0,4178(v0)
    1ee8:	24050dfc 	li	a1,3580
    1eec:	10800007 	beqz	a0,1f0c <L800BE148+0x214>
    1ef0:	3c040000 	lui	a0,0x0
    1ef4:	0c000000 	jal	0 <func_800BC450>
    1ef8:	24840000 	addiu	a0,a0,0
    1efc:	3c040000 	lui	a0,0x0
    1f00:	24840000 	addiu	a0,a0,0
    1f04:	0c000000 	jal	0 <func_800BC450>
    1f08:	24050001 	li	a1,1
    1f0c:	8e2b1de4 	lw	t3,7652(s1)
    1f10:	3c010001 	lui	at,0x1
    1f14:	00300821 	addu	at,at,s0
    1f18:	256c0001 	addiu	t4,t3,1
    1f1c:	ac2c1de4 	sw	t4,7652(at)
    1f20:	0c000000 	jal	0 <func_800BC450>
    1f24:	24040001 	li	a0,1
    1f28:	92021c24 	lbu	v0,7204(s0)
    1f2c:	3c0b0000 	lui	t3,0x0
    1f30:	10400022 	beqz	v0,1fbc <L800BE148+0x2c4>
    1f34:	28430005 	slti	v1,v0,5
    1f38:	244dffff 	addiu	t5,v0,-1
    1f3c:	1060001f 	beqz	v1,1fbc <L800BE148+0x2c4>
    1f40:	a20d1c24 	sb	t5,7204(s0)
    1f44:	3c040000 	lui	a0,0x0
    1f48:	24840000 	addiu	a0,a0,0
    1f4c:	0c000000 	jal	0 <func_800BC450>
    1f50:	31a500ff 	andi	a1,t5,0xff
    1f54:	92021c24 	lbu	v0,7204(s0)
    1f58:	3c190000 	lui	t9,0x0
    1f5c:	3c010001 	lui	at,0x1
    1f60:	1840000d 	blez	v0,1f98 <L800BE148+0x2a0>
    1f64:	304e0001 	andi	t6,v0,0x1
    1f68:	11c0000b 	beqz	t6,1f98 <L800BE148+0x2a0>
    1f6c:	240f0001 	li	t7,1
    1f70:	3c010001 	lui	at,0x1
    1f74:	00300821 	addu	at,at,s0
    1f78:	a02f0b05 	sb	t7,2821(at)
    1f7c:	24020096 	li	v0,150
    1f80:	24090050 	li	t1,80
    1f84:	a2220b08 	sb	v0,2824(s1)
    1f88:	a2220b07 	sb	v0,2823(s1)
    1f8c:	a2220b06 	sb	v0,2822(s1)
    1f90:	10000003 	b	1fa0 <L800BE148+0x2a8>
    1f94:	a2290b09 	sb	t1,2825(s1)
    1f98:	00300821 	addu	at,at,s0
    1f9c:	a0200b05 	sb	zero,2821(at)
    1fa0:	8f390000 	lw	t9,0(t9)
    1fa4:	3c010001 	lui	at,0x1
    1fa8:	34211cbc 	ori	at,at,0x1cbc
    1fac:	02015021 	addu	t2,s0,at
    1fb0:	87241052 	lh	a0,4178(t9)
    1fb4:	100000bc 	b	22a8 <L800BE148+0x5b0>
    1fb8:	afaa0040 	sw	t2,64(sp)
    1fbc:	8d6b0000 	lw	t3,0(t3)
    1fc0:	856c1052 	lh	t4,4178(t3)
    1fc4:	11800008 	beqz	t4,1fe8 <L800BE148+0x2f0>
    1fc8:	3c040000 	lui	a0,0x0
    1fcc:	24840000 	addiu	a0,a0,0
    1fd0:	0c000000 	jal	0 <func_800BC450>
    1fd4:	24050e16 	li	a1,3606
    1fd8:	3c040000 	lui	a0,0x0
    1fdc:	24840000 	addiu	a0,a0,0
    1fe0:	0c000000 	jal	0 <func_800BC450>
    1fe4:	24050001 	li	a1,1
    1fe8:	3c010001 	lui	at,0x1
    1fec:	34211cbc 	ori	at,at,0x1cbc
    1ff0:	02012821 	addu	a1,s0,at
    1ff4:	afa50040 	sw	a1,64(sp)
    1ff8:	0c000000 	jal	0 <func_800BC450>
    1ffc:	02002025 	move	a0,s0
    2000:	3c0e0000 	lui	t6,0x0
    2004:	8dce0000 	lw	t6,0(t6)
    2008:	85cf1052 	lh	t7,4178(t6)
    200c:	11e00008 	beqz	t7,2030 <L800BE148+0x338>
    2010:	3c040000 	lui	a0,0x0
    2014:	24840000 	addiu	a0,a0,0
    2018:	0c000000 	jal	0 <func_800BC450>
    201c:	24050e1c 	li	a1,3612
    2020:	3c040000 	lui	a0,0x0
    2024:	24840000 	addiu	a0,a0,0
    2028:	0c000000 	jal	0 <func_800BC450>
    202c:	24050001 	li	a1,1
    2030:	3c010001 	lui	at,0x1
    2034:	34211e60 	ori	at,at,0x1e60
    2038:	02012821 	addu	a1,s0,at
    203c:	afa50038 	sw	a1,56(sp)
    2040:	0c000000 	jal	0 <func_800BC450>
    2044:	02002025 	move	a0,s0
    2048:	3c180000 	lui	t8,0x0
    204c:	8f180000 	lw	t8,0(t8)
    2050:	87091052 	lh	t1,4178(t8)
    2054:	11200008 	beqz	t1,2078 <L800BE148+0x380>
    2058:	3c040000 	lui	a0,0x0
    205c:	24840000 	addiu	a0,a0,0
    2060:	0c000000 	jal	0 <func_800BC450>
    2064:	24050e22 	li	a1,3618
    2068:	3c040000 	lui	a0,0x0
    206c:	24840000 	addiu	a0,a0,0
    2070:	0c000000 	jal	0 <func_800BC450>
    2074:	24050001 	li	a1,1
    2078:	02002025 	move	a0,s0
    207c:	0c000000 	jal	0 <func_800BC450>
    2080:	8fa50038 	lw	a1,56(sp)
    2084:	3c190000 	lui	t9,0x0
    2088:	8f390000 	lw	t9,0(t9)
    208c:	872a1052 	lh	t2,4178(t9)
    2090:	11400008 	beqz	t2,20b4 <L800BE148+0x3bc>
    2094:	3c040000 	lui	a0,0x0
    2098:	24840000 	addiu	a0,a0,0
    209c:	0c000000 	jal	0 <func_800BC450>
    20a0:	24050e28 	li	a1,3624
    20a4:	3c040000 	lui	a0,0x0
    20a8:	24840000 	addiu	a0,a0,0
    20ac:	0c000000 	jal	0 <func_800BC450>
    20b0:	24050001 	li	a1,1
    20b4:	02002025 	move	a0,s0
    20b8:	0c000000 	jal	0 <func_800BC450>
    20bc:	8fa50038 	lw	a1,56(sp)
    20c0:	3c0b0000 	lui	t3,0x0
    20c4:	8d6b0000 	lw	t3,0(t3)
    20c8:	856c1052 	lh	t4,4178(t3)
    20cc:	11800008 	beqz	t4,20f0 <L800BE148+0x3f8>
    20d0:	3c040000 	lui	a0,0x0
    20d4:	24840000 	addiu	a0,a0,0
    20d8:	0c000000 	jal	0 <func_800BC450>
    20dc:	24050e2f 	li	a1,3631
    20e0:	3c040000 	lui	a0,0x0
    20e4:	24840000 	addiu	a0,a0,0
    20e8:	0c000000 	jal	0 <func_800BC450>
    20ec:	24050001 	li	a1,1
    20f0:	02002025 	move	a0,s0
    20f4:	0c000000 	jal	0 <func_800BC450>
    20f8:	8fa50038 	lw	a1,56(sp)
    20fc:	3c0d0000 	lui	t5,0x0
    2100:	8dad0000 	lw	t5,0(t5)
    2104:	3c040000 	lui	a0,0x0
    2108:	24840000 	addiu	a0,a0,0
    210c:	85ae1052 	lh	t6,4178(t5)
    2110:	51c00008 	beqzl	t6,2134 <L800BE148+0x43c>
    2114:	922f1de9 	lbu	t7,7657(s1)
    2118:	0c000000 	jal	0 <func_800BC450>
    211c:	24050e35 	li	a1,3637
    2120:	3c040000 	lui	a0,0x0
    2124:	24840000 	addiu	a0,a0,0
    2128:	0c000000 	jal	0 <func_800BC450>
    212c:	24050001 	li	a1,1
    2130:	922f1de9 	lbu	t7,7657(s1)
    2134:	02002025 	move	a0,s0
    2138:	15e00003 	bnez	t7,2148 <L800BE148+0x450>
    213c:	00000000 	nop
    2140:	0c000000 	jal	0 <func_800BC450>
    2144:	26051c24 	addiu	a1,s0,7204
    2148:	3c180000 	lui	t8,0x0
    214c:	8f180000 	lw	t8,0(t8)
    2150:	24050e3b 	li	a1,3643
    2154:	87041052 	lh	a0,4178(t8)
    2158:	10800007 	beqz	a0,2178 <L800BE148+0x480>
    215c:	3c040000 	lui	a0,0x0
    2160:	0c000000 	jal	0 <func_800BC450>
    2164:	24840000 	addiu	a0,a0,0
    2168:	3c040000 	lui	a0,0x0
    216c:	24840000 	addiu	a0,a0,0
    2170:	0c000000 	jal	0 <func_800BC450>
    2174:	24050001 	li	a1,1
    2178:	26051d64 	addiu	a1,s0,7524
    217c:	afa50038 	sw	a1,56(sp)
    2180:	0c000000 	jal	0 <func_800BC450>
    2184:	02002025 	move	a0,s0
    2188:	3c090000 	lui	t1,0x0
    218c:	8d290000 	lw	t1,0(t1)
    2190:	3c040000 	lui	a0,0x0
    2194:	24840000 	addiu	a0,a0,0
    2198:	85391052 	lh	t9,4178(t1)
    219c:	53200008 	beqzl	t9,21c0 <L800BE148+0x4c8>
    21a0:	02002025 	move	a0,s0
    21a4:	0c000000 	jal	0 <func_800BC450>
    21a8:	24050e40 	li	a1,3648
    21ac:	3c040000 	lui	a0,0x0
    21b0:	24840000 	addiu	a0,a0,0
    21b4:	0c000000 	jal	0 <func_800BC450>
    21b8:	24050001 	li	a1,1
    21bc:	02002025 	move	a0,s0
    21c0:	0c000000 	jal	0 <func_800BC450>
    21c4:	8fa50038 	lw	a1,56(sp)
    21c8:	3c0a0000 	lui	t2,0x0
    21cc:	8d4a0000 	lw	t2,0(t2)
    21d0:	3c040000 	lui	a0,0x0
    21d4:	24840000 	addiu	a0,a0,0
    21d8:	854b1052 	lh	t3,4178(t2)
    21dc:	11600007 	beqz	t3,21fc <L800BE148+0x504>
    21e0:	00000000 	nop
    21e4:	0c000000 	jal	0 <func_800BC450>
    21e8:	24050e43 	li	a1,3651
    21ec:	3c040000 	lui	a0,0x0
    21f0:	24840000 	addiu	a0,a0,0
    21f4:	0c000000 	jal	0 <func_800BC450>
    21f8:	24050001 	li	a1,1
    21fc:	0c000000 	jal	0 <func_800BC450>
    2200:	02002025 	move	a0,s0
    2204:	3c0c0000 	lui	t4,0x0
    2208:	8d8c0000 	lw	t4,0(t4)
    220c:	3c040000 	lui	a0,0x0
    2210:	24840000 	addiu	a0,a0,0
    2214:	858d1052 	lh	t5,4178(t4)
    2218:	11a00007 	beqz	t5,2238 <L800BE148+0x540>
    221c:	00000000 	nop
    2220:	0c000000 	jal	0 <func_800BC450>
    2224:	24050e49 	li	a1,3657
    2228:	3c040000 	lui	a0,0x0
    222c:	24840000 	addiu	a0,a0,0
    2230:	0c000000 	jal	0 <func_800BC450>
    2234:	24050001 	li	a1,1
    2238:	0c000000 	jal	0 <func_800BC450>
    223c:	02002025 	move	a0,s0
    2240:	3c0e0000 	lui	t6,0x0
    2244:	8dce0000 	lw	t6,0(t6)
    2248:	24050e4e 	li	a1,3662
    224c:	85c41052 	lh	a0,4178(t6)
    2250:	10800015 	beqz	a0,22a8 <L800BE148+0x5b0>
    2254:	00000000 	nop
    2258:	3c040000 	lui	a0,0x0
    225c:	0c000000 	jal	0 <func_800BC450>
    2260:	24840000 	addiu	a0,a0,0
    2264:	3c040000 	lui	a0,0x0
    2268:	24840000 	addiu	a0,a0,0
    226c:	0c000000 	jal	0 <func_800BC450>
    2270:	24050001 	li	a1,1
    2274:	3c0f0000 	lui	t7,0x0
    2278:	8def0000 	lw	t7,0(t7)
    227c:	1000000a 	b	22a8 <L800BE148+0x5b0>
    2280:	85e41052 	lh	a0,4178(t7)
    2284:	0c000000 	jal	0 <func_800BC450>
    2288:	00002025 	move	a0,zero
    228c:	3c180000 	lui	t8,0x0
    2290:	8f180000 	lw	t8,0(t8)
    2294:	3c010001 	lui	at,0x1
    2298:	34211cbc 	ori	at,at,0x1cbc
    229c:	02014821 	addu	t1,s0,at
    22a0:	87041052 	lh	a0,4178(t8)
    22a4:	afa90040 	sw	t1,64(sp)
    22a8:	10800008 	beqz	a0,22cc <L800BE148+0x5d4>
    22ac:	3c040000 	lui	a0,0x0
    22b0:	24840000 	addiu	a0,a0,0
    22b4:	0c000000 	jal	0 <func_800BC450>
    22b8:	24050e58 	li	a1,3672
    22bc:	3c040000 	lui	a0,0x0
    22c0:	24840000 	addiu	a0,a0,0
    22c4:	0c000000 	jal	0 <func_800BC450>
    22c8:	24050001 	li	a1,1
    22cc:	02002025 	move	a0,s0
    22d0:	8fa50040 	lw	a1,64(sp)
    22d4:	8fa60030 	lw	a2,48(sp)
    22d8:	0c000000 	jal	0 <func_800BC450>
    22dc:	00003825 	move	a3,zero
    22e0:	3c190000 	lui	t9,0x0
    22e4:	8f390000 	lw	t9,0(t9)
    22e8:	872a1052 	lh	t2,4178(t9)
    22ec:	11400008 	beqz	t2,2310 <L800BE148+0x618>
    22f0:	3c040000 	lui	a0,0x0
    22f4:	24840000 	addiu	a0,a0,0
    22f8:	0c000000 	jal	0 <func_800BC450>
    22fc:	24050e5b 	li	a1,3675
    2300:	3c040000 	lui	a0,0x0
    2304:	24840000 	addiu	a0,a0,0
    2308:	0c000000 	jal	0 <func_800BC450>
    230c:	24050001 	li	a1,1
    2310:	3c010001 	lui	at,0x1
    2314:	34211cd0 	ori	at,at,0x1cd0
    2318:	02012821 	addu	a1,s0,at
    231c:	02002025 	move	a0,s0
    2320:	8fa60030 	lw	a2,48(sp)
    2324:	0c000000 	jal	0 <func_800BC450>
    2328:	24070001 	li	a3,1
    232c:	3c0b0000 	lui	t3,0x0
    2330:	8d6b0000 	lw	t3,0(t3)
    2334:	856c1052 	lh	t4,4178(t3)
    2338:	11800008 	beqz	t4,235c <L800BE148+0x664>
    233c:	3c040000 	lui	a0,0x0
    2340:	24840000 	addiu	a0,a0,0
    2344:	0c000000 	jal	0 <func_800BC450>
    2348:	24050e5d 	li	a1,3677
    234c:	3c040000 	lui	a0,0x0
    2350:	24840000 	addiu	a0,a0,0
    2354:	0c000000 	jal	0 <func_800BC450>
    2358:	24050001 	li	a1,1
    235c:	922d242b 	lbu	t5,9259(s1)
    2360:	11a00034 	beqz	t5,2434 <L800BE148+0x73c>
    2364:	00000000 	nop
    2368:	8fae0044 	lw	t6,68(sp)
    236c:	2401fff7 	li	at,-9
    2370:	95cf000c 	lhu	t7,12(t6)
    2374:	01e1c027 	nor	t8,t7,at
    2378:	1700002c 	bnez	t8,242c <L800BE148+0x734>
    237c:	00000000 	nop
    2380:	96290934 	lhu	t1,2356(s1)
    2384:	3c040000 	lui	a0,0x0
    2388:	15200004 	bnez	t1,239c <L800BE148+0x6a4>
    238c:	00000000 	nop
    2390:	96390936 	lhu	t9,2358(s1)
    2394:	13200005 	beqz	t9,23ac <L800BE148+0x6b4>
    2398:	00000000 	nop
    239c:	0c000000 	jal	0 <func_800BC450>
    23a0:	24840000 	addiu	a0,a0,0
    23a4:	10000021 	b	242c <L800BE148+0x734>
    23a8:	00000000 	nop
    23ac:	0c000000 	jal	0 <func_800BC450>
    23b0:	02002025 	move	a0,s0
    23b4:	10400006 	beqz	v0,23d0 <L800BE148+0x6d8>
    23b8:	3c0a0000 	lui	t2,0x0
    23bc:	3c040000 	lui	a0,0x0
    23c0:	0c000000 	jal	0 <func_800BC450>
    23c4:	24840000 	addiu	a0,a0,0
    23c8:	10000018 	b	242c <L800BE148+0x734>
    23cc:	00000000 	nop
    23d0:	8d4a0000 	lw	t2,0(t2)
    23d4:	24010010 	li	at,16
    23d8:	3c070000 	lui	a3,0x0
    23dc:	854b04b2 	lh	t3,1202(t2)
    23e0:	24e70000 	addiu	a3,a3,0
    23e4:	24044806 	li	a0,18438
    23e8:	1561000a 	bne	t3,at,2414 <L800BE148+0x71c>
    23ec:	3c050000 	lui	a1,0x0
    23f0:	3c0c0000 	lui	t4,0x0
    23f4:	258c0000 	addiu	t4,t4,0
    23f8:	afac0014 	sw	t4,20(sp)
    23fc:	24a50000 	addiu	a1,a1,0
    2400:	24060004 	li	a2,4
    2404:	0c000000 	jal	0 <func_800BC450>
    2408:	afa70010 	sw	a3,16(sp)
    240c:	10000007 	b	242c <L800BE148+0x734>
    2410:	00000000 	nop
    2414:	9225242b 	lbu	a1,9259(s1)
    2418:	02002025 	move	a0,s0
    241c:	38a50003 	xori	a1,a1,0x3
    2420:	00052c00 	sll	a1,a1,0x10
    2424:	0c000000 	jal	0 <func_800BC450>
    2428:	00052c03 	sra	a1,a1,0x10
    242c:	0c000000 	jal	0 <func_800BC450>
    2430:	02002025 	move	a0,s0
    2434:	3c0d0000 	lui	t5,0x0
    2438:	8dad0000 	lw	t5,0(t5)
    243c:	85a41052 	lh	a0,4178(t5)
    2440:	10800008 	beqz	a0,2464 <L800BE148+0x76c>
    2444:	3c040000 	lui	a0,0x0
    2448:	24840000 	addiu	a0,a0,0
    244c:	0c000000 	jal	0 <func_800BC450>
    2450:	24050e7c 	li	a1,3708
    2454:	3c040000 	lui	a0,0x0
    2458:	24840000 	addiu	a0,a0,0
    245c:	0c000000 	jal	0 <func_800BC450>
    2460:	24050001 	li	a1,1
    2464:	0c000000 	jal	0 <func_800BC450>
    2468:	26041f78 	addiu	a0,s0,8056
    246c:	3c0e0000 	lui	t6,0x0
    2470:	8dce0000 	lw	t6,0(t6)
    2474:	85c41052 	lh	a0,4178(t6)
    2478:	5080000d 	beqzl	a0,24b0 <L800BE148+0x7b8>
    247c:	96380934 	lhu	t8,2356(s1)
    2480:	3c040000 	lui	a0,0x0
    2484:	24840000 	addiu	a0,a0,0
    2488:	0c000000 	jal	0 <func_800BC450>
    248c:	24050e84 	li	a1,3716
    2490:	3c040000 	lui	a0,0x0
    2494:	24840000 	addiu	a0,a0,0
    2498:	0c000000 	jal	0 <func_800BC450>
    249c:	24050001 	li	a1,1
    24a0:	3c0f0000 	lui	t7,0x0
    24a4:	8def0000 	lw	t7,0(t7)
    24a8:	85e41052 	lh	a0,4178(t7)
    24ac:	96380934 	lhu	t8,2356(s1)
    24b0:	17000004 	bnez	t8,24c4 <L800BE148+0x7cc>
    24b4:	00000000 	nop
    24b8:	96290936 	lhu	t1,2358(s1)
    24bc:	5120000f 	beqzl	t1,24fc <L800BE148+0x804>
    24c0:	96390a20 	lhu	t9,2592(s1)
    24c4:	10800008 	beqz	a0,24e8 <L800BE148+0x7f0>
    24c8:	24050e89 	li	a1,3721
    24cc:	3c040000 	lui	a0,0x0
    24d0:	0c000000 	jal	0 <func_800BC450>
    24d4:	24840000 	addiu	a0,a0,0
    24d8:	3c040000 	lui	a0,0x0
    24dc:	24840000 	addiu	a0,a0,0
    24e0:	0c000000 	jal	0 <func_800BC450>
    24e4:	24050001 	li	a1,1
    24e8:	0c000000 	jal	0 <func_800BC450>
    24ec:	02002025 	move	a0,s0
    24f0:	1000001c 	b	2564 <L800BE148+0x86c>
    24f4:	00000000 	nop
    24f8:	96390a20 	lhu	t9,2592(s1)
    24fc:	1320000e 	beqz	t9,2538 <L800BE148+0x840>
    2500:	00000000 	nop
    2504:	10800008 	beqz	a0,2528 <L800BE148+0x830>
    2508:	24050e8f 	li	a1,3727
    250c:	3c040000 	lui	a0,0x0
    2510:	0c000000 	jal	0 <func_800BC450>
    2514:	24840000 	addiu	a0,a0,0
    2518:	3c040000 	lui	a0,0x0
    251c:	24840000 	addiu	a0,a0,0
    2520:	0c000000 	jal	0 <func_800BC450>
    2524:	24050001 	li	a1,1
    2528:	0c000000 	jal	0 <func_800BC450>
    252c:	02002025 	move	a0,s0
    2530:	1000000c 	b	2564 <L800BE148+0x86c>
    2534:	00000000 	nop
    2538:	10800008 	beqz	a0,255c <L800BE148+0x864>
    253c:	24050e95 	li	a1,3733
    2540:	3c040000 	lui	a0,0x0
    2544:	0c000000 	jal	0 <func_800BC450>
    2548:	24840000 	addiu	a0,a0,0
    254c:	3c040000 	lui	a0,0x0
    2550:	24840000 	addiu	a0,a0,0
    2554:	0c000000 	jal	0 <func_800BC450>
    2558:	24050001 	li	a1,1
    255c:	0c000000 	jal	0 <func_800BC450>
    2560:	02002025 	move	a0,s0
    2564:	3c0a0000 	lui	t2,0x0
    2568:	8d4a0000 	lw	t2,0(t2)
    256c:	24050e99 	li	a1,3737
    2570:	85441052 	lh	a0,4178(t2)
    2574:	1080000b 	beqz	a0,25a4 <L800BE148+0x8ac>
    2578:	00000000 	nop
    257c:	3c040000 	lui	a0,0x0
    2580:	0c000000 	jal	0 <func_800BC450>
    2584:	24840000 	addiu	a0,a0,0
    2588:	3c040000 	lui	a0,0x0
    258c:	24840000 	addiu	a0,a0,0
    2590:	0c000000 	jal	0 <func_800BC450>
    2594:	24050001 	li	a1,1
    2598:	3c0b0000 	lui	t3,0x0
    259c:	8d6b0000 	lw	t3,0(t3)
    25a0:	85641052 	lh	a0,4178(t3)
    25a4:	10800008 	beqz	a0,25c8 <L800BE148+0x8d0>
    25a8:	24050e9e 	li	a1,3742
    25ac:	3c040000 	lui	a0,0x0
    25b0:	0c000000 	jal	0 <func_800BC450>
    25b4:	24840000 	addiu	a0,a0,0
    25b8:	3c040000 	lui	a0,0x0
    25bc:	24840000 	addiu	a0,a0,0
    25c0:	0c000000 	jal	0 <func_800BC450>
    25c4:	24050001 	li	a1,1
    25c8:	0c000000 	jal	0 <func_800BC450>
    25cc:	02002025 	move	a0,s0
    25d0:	3c0c0000 	lui	t4,0x0
    25d4:	8d8c0000 	lw	t4,0(t4)
    25d8:	3c040000 	lui	a0,0x0
    25dc:	24840000 	addiu	a0,a0,0
    25e0:	858d1052 	lh	t5,4178(t4)
    25e4:	51a00008 	beqzl	t5,2608 <L800BE148+0x910>
    25e8:	02002025 	move	a0,s0
    25ec:	0c000000 	jal	0 <func_800BC450>
    25f0:	24050eb5 	li	a1,3765
    25f4:	3c040000 	lui	a0,0x0
    25f8:	24840000 	addiu	a0,a0,0
    25fc:	0c000000 	jal	0 <func_800BC450>
    2600:	24050001 	li	a1,1
    2604:	02002025 	move	a0,s0
    2608:	0c000000 	jal	0 <func_800BC450>
    260c:	8fa50034 	lw	a1,52(sp)
    2610:	3c0e0000 	lui	t6,0x0
    2614:	8dce0000 	lw	t6,0(t6)
    2618:	3c040000 	lui	a0,0x0
    261c:	24840000 	addiu	a0,a0,0
    2620:	85cf1052 	lh	t7,4178(t6)
    2624:	11e00007 	beqz	t7,2644 <L800BE148+0x94c>
    2628:	00000000 	nop
    262c:	0c000000 	jal	0 <func_800BC450>
    2630:	24050ebb 	li	a1,3771
    2634:	3c040000 	lui	a0,0x0
    2638:	24840000 	addiu	a0,a0,0
    263c:	0c000000 	jal	0 <func_800BC450>
    2640:	24050001 	li	a1,1
    2644:	0c000000 	jal	0 <func_800BC450>
    2648:	02002025 	move	a0,s0
    264c:	3c020000 	lui	v0,0x0
    2650:	8c420000 	lw	v0,0(v0)
    2654:	3c040000 	lui	a0,0x0
    2658:	24840000 	addiu	a0,a0,0
    265c:	84581052 	lh	t8,4178(v0)
    2660:	13000009 	beqz	t8,2688 <L800BE148+0x990>
    2664:	00000000 	nop
    2668:	0c000000 	jal	0 <func_800BC450>
    266c:	24050ec1 	li	a1,3777
    2670:	3c040000 	lui	a0,0x0
    2674:	24840000 	addiu	a0,a0,0
    2678:	0c000000 	jal	0 <func_800BC450>
    267c:	24050001 	li	a1,1
    2680:	3c020000 	lui	v0,0x0
    2684:	8c420000 	lw	v0,0(v0)
    2688:	0c000000 	jal	0 <func_800BC450>
    268c:	84440110 	lh	a0,272(v0)
    2690:	3c020000 	lui	v0,0x0
    2694:	8c420000 	lw	v0,0(v0)
    2698:	3c040000 	lui	a0,0x0
    269c:	24840000 	addiu	a0,a0,0
    26a0:	84491052 	lh	t1,4178(v0)
    26a4:	5120000a 	beqzl	t1,26d0 <L800BE148+0x9d8>
    26a8:	3c010001 	lui	at,0x1
    26ac:	0c000000 	jal	0 <func_800BC450>
    26b0:	24050ec7 	li	a1,3783
    26b4:	3c040000 	lui	a0,0x0
    26b8:	24840000 	addiu	a0,a0,0
    26bc:	0c000000 	jal	0 <func_800BC450>
    26c0:	24050001 	li	a1,1
    26c4:	3c020000 	lui	v0,0x0
    26c8:	8c420000 	lw	v0,0(v0)
    26cc:	3c010001 	lui	at,0x1
    26d0:	3421241c 	ori	at,at,0x241c
    26d4:	02012021 	addu	a0,s0,at
    26d8:	0c000000 	jal	0 <func_800BC450>
    26dc:	84450110 	lh	a1,272(v0)
    26e0:	3c190000 	lui	t9,0x0
    26e4:	8f390000 	lw	t9,0(t9)
    26e8:	87241052 	lh	a0,4178(t9)
    26ec:	1080000c 	beqz	a0,2720 <L800BE148+0xa28>
    26f0:	00000000 	nop
    26f4:	3c040000 	lui	a0,0x0
    26f8:	24840000 	addiu	a0,a0,0
    26fc:	0c000000 	jal	0 <func_800BC450>
    2700:	24050ed7 	li	a1,3799
    2704:	3c040000 	lui	a0,0x0
    2708:	24840000 	addiu	a0,a0,0
    270c:	0c000000 	jal	0 <func_800BC450>
    2710:	24050001 	li	a1,1
    2714:	3c0a0000 	lui	t2,0x0
    2718:	8d4a0000 	lw	t2,0(t2)
    271c:	85441052 	lh	a0,4178(t2)
    2720:	10800008 	beqz	a0,2744 <L800BE148+0xa4c>
    2724:	3c040000 	lui	a0,0x0
    2728:	24840000 	addiu	a0,a0,0
    272c:	0c000000 	jal	0 <func_800BC450>
    2730:	24050ed9 	li	a1,3801
    2734:	3c040000 	lui	a0,0x0
    2738:	24840000 	addiu	a0,a0,0
    273c:	0c000000 	jal	0 <func_800BC450>
    2740:	24050001 	li	a1,1
    2744:	8fab0080 	lw	t3,128(sp)
    2748:	11600004 	beqz	t3,275c <L800BE148+0xa64>
    274c:	3c0c0000 	lui	t4,0x0
    2750:	8d8c0000 	lw	t4,0(t4)
    2754:	11800044 	beqz	t4,2868 <L800BE148+0xb70>
    2758:	00000000 	nop
    275c:	860d07a0 	lh	t5,1952(s0)
    2760:	3c0e0000 	lui	t6,0x0
    2764:	3c040000 	lui	a0,0x0
    2768:	a60d07a2 	sh	t5,1954(s0)
    276c:	8dce0000 	lw	t6,0(t6)
    2770:	24840000 	addiu	a0,a0,0
    2774:	85cf1052 	lh	t7,4178(t6)
    2778:	51e00008 	beqzl	t7,279c <L800BE148+0xaa4>
    277c:	00001825 	move	v1,zero
    2780:	0c000000 	jal	0 <func_800BC450>
    2784:	24050ede 	li	a1,3806
    2788:	3c040000 	lui	a0,0x0
    278c:	24840000 	addiu	a0,a0,0
    2790:	0c000000 	jal	0 <func_800BC450>
    2794:	24050001 	li	a1,1
    2798:	00001825 	move	v1,zero
    279c:	860607a2 	lh	a2,1954(s0)
    27a0:	1066001b 	beq	v1,a2,2810 <L800BE148+0xb18>
    27a4:	0003c080 	sll	t8,v1,0x2
    27a8:	02181021 	addu	v0,s0,t8
    27ac:	8c450790 	lw	a1,1936(v0)
    27b0:	3c090000 	lui	t1,0x0
    27b4:	50a00017 	beqzl	a1,2814 <L800BE148+0xb1c>
    27b8:	24630001 	addiu	v1,v1,1
    27bc:	8d290000 	lw	t1,0(t1)
    27c0:	85241052 	lh	a0,4178(t1)
    27c4:	1080000d 	beqz	a0,27fc <L800BE148+0xb04>
    27c8:	3c040000 	lui	a0,0x0
    27cc:	24840000 	addiu	a0,a0,0
    27d0:	24050ee1 	li	a1,3809
    27d4:	afa20040 	sw	v0,64(sp)
    27d8:	0c000000 	jal	0 <func_800BC450>
    27dc:	afa30054 	sw	v1,84(sp)
    27e0:	3c040000 	lui	a0,0x0
    27e4:	24840000 	addiu	a0,a0,0
    27e8:	0c000000 	jal	0 <func_800BC450>
    27ec:	24050001 	li	a1,1
    27f0:	8fa20040 	lw	v0,64(sp)
    27f4:	8fa30054 	lw	v1,84(sp)
    27f8:	8c450790 	lw	a1,1936(v0)
    27fc:	27a40048 	addiu	a0,sp,72
    2800:	0c000000 	jal	0 <func_800BC450>
    2804:	afa30054 	sw	v1,84(sp)
    2808:	8fa30054 	lw	v1,84(sp)
    280c:	860607a2 	lh	a2,1954(s0)
    2810:	24630001 	addiu	v1,v1,1
    2814:	24010004 	li	at,4
    2818:	1461ffe1 	bne	v1,at,27a0 <L800BE148+0xaa8>
    281c:	00000000 	nop
    2820:	0006c880 	sll	t9,a2,0x2
    2824:	02195021 	addu	t2,s0,t9
    2828:	8d450790 	lw	a1,1936(t2)
    282c:	0c000000 	jal	0 <func_800BC450>
    2830:	27a40048 	addiu	a0,sp,72
    2834:	3c0b0000 	lui	t3,0x0
    2838:	8d6b0000 	lw	t3,0(t3)
    283c:	3c040000 	lui	a0,0x0
    2840:	24840000 	addiu	a0,a0,0
    2844:	856c1052 	lh	t4,4178(t3)
    2848:	11800007 	beqz	t4,2868 <L800BE148+0xb70>
    284c:	00000000 	nop
    2850:	0c000000 	jal	0 <func_800BC450>
    2854:	24050ee6 	li	a1,3814
    2858:	3c040000 	lui	a0,0x0
    285c:	24840000 	addiu	a0,a0,0
    2860:	0c000000 	jal	0 <func_800BC450>
    2864:	24050001 	li	a1,1
    2868:	3c0d0000 	lui	t5,0x0
    286c:	8dad0000 	lw	t5,0(t5)
    2870:	85a41052 	lh	a0,4178(t5)
    2874:	10800008 	beqz	a0,2898 <L800BE148+0xba0>
    2878:	3c040000 	lui	a0,0x0
    287c:	24840000 	addiu	a0,a0,0
    2880:	0c000000 	jal	0 <func_800BC450>
    2884:	24050ee8 	li	a1,3816
    2888:	3c040000 	lui	a0,0x0
    288c:	24840000 	addiu	a0,a0,0
    2890:	0c000000 	jal	0 <func_800BC450>
    2894:	24050001 	li	a1,1
    2898:	3c010001 	lui	at,0x1
    289c:	34210a24 	ori	at,at,0xa24
    28a0:	02012821 	addu	a1,s0,at
    28a4:	3c010001 	lui	at,0x1
    28a8:	34210760 	ori	at,at,0x760
    28ac:	02013821 	addu	a3,s0,at
    28b0:	3c010001 	lui	at,0x1
    28b4:	34210a20 	ori	at,at,0xa20
    28b8:	02017821 	addu	t7,s0,at
    28bc:	260e20d8 	addiu	t6,s0,8408
    28c0:	afae0010 	sw	t6,16(sp)
    28c4:	afaf0014 	sw	t7,20(sp)
    28c8:	8e180000 	lw	t8,0(s0)
    28cc:	02002025 	move	a0,s0
    28d0:	260607a8 	addiu	a2,s0,1960
    28d4:	0c000000 	jal	0 <func_800BC450>
    28d8:	afb80018 	sw	t8,24(sp)
    28dc:	8fbf002c 	lw	ra,44(sp)
    28e0:	8fb00024 	lw	s0,36(sp)
    28e4:	8fb10028 	lw	s1,40(sp)
    28e8:	03e00008 	jr	ra
    28ec:	27bd0088 	addiu	sp,sp,136

000028f0 <Gameplay_DrawOverlayElements>:
    28f0:	27bdffd8 	addiu	sp,sp,-40
    28f4:	3c010001 	lui	at,0x1
    28f8:	afbf001c 	sw	ra,28(sp)
    28fc:	afb00018 	sw	s0,24(sp)
    2900:	00811021 	addu	v0,a0,at
    2904:	944e0934 	lhu	t6,2356(v0)
    2908:	00808025 	move	s0,a0
    290c:	02002025 	move	a0,s0
    2910:	15c00004 	bnez	t6,2924 <Gameplay_DrawOverlayElements+0x34>
    2914:	00000000 	nop
    2918:	944f0936 	lhu	t7,2358(v0)
    291c:	11e00004 	beqz	t7,2930 <Gameplay_DrawOverlayElements+0x40>
    2920:	00000000 	nop
    2924:	0c000000 	jal	0 <func_800BC450>
    2928:	afa20024 	sw	v0,36(sp)
    292c:	8fa20024 	lw	v0,36(sp)
    2930:	3c180000 	lui	t8,0x0
    2934:	8f18135c 	lw	t8,4956(t8)
    2938:	02002025 	move	a0,s0
    293c:	57000005 	bnezl	t8,2954 <Gameplay_DrawOverlayElements+0x64>
    2940:	02002025 	move	a0,s0
    2944:	0c000000 	jal	0 <func_800BC450>
    2948:	afa20024 	sw	v0,36(sp)
    294c:	8fa20024 	lw	v0,36(sp)
    2950:	02002025 	move	a0,s0
    2954:	0c000000 	jal	0 <func_800BC450>
    2958:	afa20024 	sw	v0,36(sp)
    295c:	8fa20024 	lw	v0,36(sp)
    2960:	94590a20 	lhu	t9,2592(v0)
    2964:	53200004 	beqzl	t9,2978 <Gameplay_DrawOverlayElements+0x88>
    2968:	8fbf001c 	lw	ra,28(sp)
    296c:	0c000000 	jal	0 <func_800BC450>
    2970:	02002025 	move	a0,s0
    2974:	8fbf001c 	lw	ra,28(sp)
    2978:	8fb00018 	lw	s0,24(sp)
    297c:	27bd0028 	addiu	sp,sp,40
    2980:	03e00008 	jr	ra
    2984:	00000000 	nop

00002988 <Gameplay_Draw>:
    2988:	27bdfdd0 	addiu	sp,sp,-560
    298c:	afbf002c 	sw	ra,44(sp)
    2990:	afb10028 	sw	s1,40(sp)
    2994:	afb00024 	sw	s0,36(sp)
    2998:	8c910000 	lw	s1,0(a0)
    299c:	00808025 	move	s0,a0
    29a0:	3c060000 	lui	a2,0x0
    29a4:	24c60000 	addiu	a2,a2,0
    29a8:	27a40208 	addiu	a0,sp,520
    29ac:	24070f43 	li	a3,3907
    29b0:	0c000000 	jal	0 <func_800BC450>
    29b4:	02202825 	move	a1,s1
    29b8:	3c040001 	lui	a0,0x1
    29bc:	02044021 	addu	t0,s0,a0
    29c0:	910e17ae 	lbu	t6,6062(t0)
    29c4:	24050044 	li	a1,68
    29c8:	3c020000 	lui	v0,0x0
    29cc:	01c50019 	multu	t6,a1
    29d0:	3c038000 	lui	v1,0x8000
    29d4:	24420000 	addiu	v0,v0,0
    29d8:	3c06db06 	lui	a2,0xdb06
    29dc:	00003825 	move	a3,zero
    29e0:	00007812 	mflo	t7
    29e4:	020fc021 	addu	t8,s0,t7
    29e8:	0304c821 	addu	t9,t8,a0
    29ec:	8f2917b4 	lw	t1,6068(t9)
    29f0:	01235021 	addu	t2,t1,v1
    29f4:	ac4a0010 	sw	t2,16(v0)
    29f8:	910b17af 	lbu	t3,6063(t0)
    29fc:	01650019 	multu	t3,a1
    2a00:	00006012 	mflo	t4
    2a04:	020c6821 	addu	t5,s0,t4
    2a08:	01a47021 	addu	t6,t5,a0
    2a0c:	8dcf17b4 	lw	t7,6068(t6)
    2a10:	01e3c021 	addu	t8,t7,v1
    2a14:	ac580014 	sw	t8,20(v0)
    2a18:	8e1900b0 	lw	t9,176(s0)
    2a1c:	03234821 	addu	t1,t9,v1
    2a20:	ac490008 	sw	t1,8(v0)
    2a24:	8e2202c0 	lw	v0,704(s1)
    2a28:	244a0008 	addiu	t2,v0,8
    2a2c:	ae2a02c0 	sw	t2,704(s1)
    2a30:	ac400004 	sw	zero,4(v0)
    2a34:	ac460000 	sw	a2,0(v0)
    2a38:	8e2202d0 	lw	v0,720(s1)
    2a3c:	244b0008 	addiu	t3,v0,8
    2a40:	ae2b02d0 	sw	t3,720(s1)
    2a44:	ac400004 	sw	zero,4(v0)
    2a48:	ac460000 	sw	a2,0(v0)
    2a4c:	8e2202b0 	lw	v0,688(s1)
    2a50:	244c0008 	addiu	t4,v0,8
    2a54:	ae2c02b0 	sw	t4,688(s1)
    2a58:	ac400004 	sw	zero,4(v0)
    2a5c:	ac460000 	sw	a2,0(v0)
    2a60:	8e2202c0 	lw	v0,704(s1)
    2a64:	34c60010 	ori	a2,a2,0x10
    2a68:	244d0008 	addiu	t5,v0,8
    2a6c:	ae2d02c0 	sw	t5,704(s1)
    2a70:	ac460000 	sw	a2,0(v0)
    2a74:	910e17ae 	lbu	t6,6062(t0)
    2a78:	01c50019 	multu	t6,a1
    2a7c:	00007812 	mflo	t7
    2a80:	020fc021 	addu	t8,s0,t7
    2a84:	0304c821 	addu	t9,t8,a0
    2a88:	8f2917b4 	lw	t1,6068(t9)
    2a8c:	ac490004 	sw	t1,4(v0)
    2a90:	8e2202d0 	lw	v0,720(s1)
    2a94:	244a0008 	addiu	t2,v0,8
    2a98:	ae2a02d0 	sw	t2,720(s1)
    2a9c:	ac460000 	sw	a2,0(v0)
    2aa0:	910b17ae 	lbu	t3,6062(t0)
    2aa4:	01650019 	multu	t3,a1
    2aa8:	00006012 	mflo	t4
    2aac:	020c6821 	addu	t5,s0,t4
    2ab0:	01a47021 	addu	t6,t5,a0
    2ab4:	8dcf17b4 	lw	t7,6068(t6)
    2ab8:	ac4f0004 	sw	t7,4(v0)
    2abc:	8e2202b0 	lw	v0,688(s1)
    2ac0:	24580008 	addiu	t8,v0,8
    2ac4:	ae3802b0 	sw	t8,688(s1)
    2ac8:	ac460000 	sw	a2,0(v0)
    2acc:	911917ae 	lbu	t9,6062(t0)
    2ad0:	3c06db06 	lui	a2,0xdb06
    2ad4:	34c60014 	ori	a2,a2,0x14
    2ad8:	03250019 	multu	t9,a1
    2adc:	00004812 	mflo	t1
    2ae0:	02095021 	addu	t2,s0,t1
    2ae4:	01445821 	addu	t3,t2,a0
    2ae8:	8d6c17b4 	lw	t4,6068(t3)
    2aec:	ac4c0004 	sw	t4,4(v0)
    2af0:	8e2202c0 	lw	v0,704(s1)
    2af4:	244d0008 	addiu	t5,v0,8
    2af8:	ae2d02c0 	sw	t5,704(s1)
    2afc:	ac460000 	sw	a2,0(v0)
    2b00:	910e17af 	lbu	t6,6063(t0)
    2b04:	01c50019 	multu	t6,a1
    2b08:	00007812 	mflo	t7
    2b0c:	020fc021 	addu	t8,s0,t7
    2b10:	0304c821 	addu	t9,t8,a0
    2b14:	8f2917b4 	lw	t1,6068(t9)
    2b18:	ac490004 	sw	t1,4(v0)
    2b1c:	8e2202d0 	lw	v0,720(s1)
    2b20:	244a0008 	addiu	t2,v0,8
    2b24:	ae2a02d0 	sw	t2,720(s1)
    2b28:	ac460000 	sw	a2,0(v0)
    2b2c:	910b17af 	lbu	t3,6063(t0)
    2b30:	01650019 	multu	t3,a1
    2b34:	00006012 	mflo	t4
    2b38:	020c6821 	addu	t5,s0,t4
    2b3c:	01a47021 	addu	t6,t5,a0
    2b40:	8dcf17b4 	lw	t7,6068(t6)
    2b44:	ac4f0004 	sw	t7,4(v0)
    2b48:	8e2202b0 	lw	v0,688(s1)
    2b4c:	24580008 	addiu	t8,v0,8
    2b50:	ae3802b0 	sw	t8,688(s1)
    2b54:	ac460000 	sw	a2,0(v0)
    2b58:	911917af 	lbu	t9,6063(t0)
    2b5c:	00003025 	move	a2,zero
    2b60:	03250019 	multu	t9,a1
    2b64:	00002825 	move	a1,zero
    2b68:	00004812 	mflo	t1
    2b6c:	02095021 	addu	t2,s0,t1
    2b70:	01445821 	addu	t3,t2,a0
    2b74:	8d6c17b4 	lw	t4,6068(t3)
    2b78:	3c04db06 	lui	a0,0xdb06
    2b7c:	34840008 	ori	a0,a0,0x8
    2b80:	ac4c0004 	sw	t4,4(v0)
    2b84:	8e2202c0 	lw	v0,704(s1)
    2b88:	244d0008 	addiu	t5,v0,8
    2b8c:	ae2d02c0 	sw	t5,704(s1)
    2b90:	ac440000 	sw	a0,0(v0)
    2b94:	8e0e00b0 	lw	t6,176(s0)
    2b98:	ac4e0004 	sw	t6,4(v0)
    2b9c:	8e2202d0 	lw	v0,720(s1)
    2ba0:	244f0008 	addiu	t7,v0,8
    2ba4:	ae2f02d0 	sw	t7,720(s1)
    2ba8:	ac440000 	sw	a0,0(v0)
    2bac:	8e1800b0 	lw	t8,176(s0)
    2bb0:	ac580004 	sw	t8,4(v0)
    2bb4:	8e2202b0 	lw	v0,688(s1)
    2bb8:	24590008 	addiu	t9,v0,8
    2bbc:	ae3902b0 	sw	t9,688(s1)
    2bc0:	ac440000 	sw	a0,0(v0)
    2bc4:	8e0900b0 	lw	t1,176(s0)
    2bc8:	02202025 	move	a0,s1
    2bcc:	ac490004 	sw	t1,4(v0)
    2bd0:	0c000000 	jal	0 <func_800BC450>
    2bd4:	afa8004c 	sw	t0,76(sp)
    2bd8:	3c020000 	lui	v0,0x0
    2bdc:	8c420000 	lw	v0,0(v0)
    2be0:	2401000a 	li	at,10
    2be4:	02002025 	move	a0,s0
    2be8:	844a1074 	lh	t2,4212(v0)
    2bec:	15410004 	bne	t2,at,2c00 <Gameplay_Draw+0x278>
    2bf0:	00000000 	nop
    2bf4:	844b1078 	lh	t3,4216(v0)
    2bf8:	5160027a 	beqzl	t3,35e4 <Gameplay_Draw+0xc5c>
    2bfc:	8e1901dc 	lw	t9,476(s0)
    2c00:	0c000000 	jal	0 <func_800BC450>
    2c04:	8e2502c0 	lw	a1,704(s1)
    2c08:	ae2202c0 	sw	v0,704(s1)
    2c0c:	02002025 	move	a0,s0
    2c10:	0c000000 	jal	0 <func_800BC450>
    2c14:	8e2502d0 	lw	a1,720(s1)
    2c18:	ae2202d0 	sw	v0,720(s1)
    2c1c:	860c07b4 	lh	t4,1972(s0)
    2c20:	8e0600d4 	lw	a2,212(s0)
    2c24:	8e0500d0 	lw	a1,208(s0)
    2c28:	448c2000 	mtc1	t4,$f4
    2c2c:	260400b8 	addiu	a0,s0,184
    2c30:	afa40040 	sw	a0,64(sp)
    2c34:	46802120 	cvt.s.w	$f4,$f4
    2c38:	44072000 	mfc1	a3,$f4
    2c3c:	0c000000 	jal	0 <func_800BC450>
    2c40:	00000000 	nop
    2c44:	8fa40040 	lw	a0,64(sp)
    2c48:	0c000000 	jal	0 <func_800BC450>
    2c4c:	2405000f 	li	a1,15
    2c50:	3c010001 	lui	at,0x1
    2c54:	34211da0 	ori	at,at,0x1da0
    2c58:	02012821 	addu	a1,s0,at
    2c5c:	afa50048 	sw	a1,72(sp)
    2c60:	0c000000 	jal	0 <func_800BC450>
    2c64:	26040158 	addiu	a0,s0,344
    2c68:	3c010001 	lui	at,0x1
    2c6c:	34211d60 	ori	at,at,0x1d60
    2c70:	02012821 	addu	a1,s0,at
    2c74:	afa50044 	sw	a1,68(sp)
    2c78:	0c000000 	jal	0 <func_800BC450>
    2c7c:	26040118 	addiu	a0,s0,280
    2c80:	8fa40044 	lw	a0,68(sp)
    2c84:	0c000000 	jal	0 <func_800BC450>
    2c88:	00002825 	move	a1,zero
    2c8c:	8fa40048 	lw	a0,72(sp)
    2c90:	0c000000 	jal	0 <func_800BC450>
    2c94:	24050001 	li	a1,1
    2c98:	0c000000 	jal	0 <func_800BC450>
    2c9c:	8fa40044 	lw	a0,68(sp)
    2ca0:	8fa2004c 	lw	v0,76(sp)
    2ca4:	44800000 	mtc1	zero,$f0
    2ca8:	00000000 	nop
    2cac:	e4401dd8 	swc1	$f0,7640(v0)
    2cb0:	e4401dd4 	swc1	$f0,7636(v0)
    2cb4:	e4401dd0 	swc1	$f0,7632(v0)
    2cb8:	e4401dcc 	swc1	$f0,7628(v0)
    2cbc:	e4401dbc 	swc1	$f0,7612(v0)
    2cc0:	e4401dac 	swc1	$f0,7596(v0)
    2cc4:	0c000000 	jal	0 <func_800BC450>
    2cc8:	8fa40048 	lw	a0,72(sp)
    2ccc:	3c050000 	lui	a1,0x0
    2cd0:	24a50000 	addiu	a1,a1,0
    2cd4:	8fa40048 	lw	a0,72(sp)
    2cd8:	0c000000 	jal	0 <func_800BC450>
    2cdc:	24060fa5 	li	a2,4005
    2ce0:	afa20058 	sw	v0,88(sp)
    2ce4:	02202025 	move	a0,s1
    2ce8:	0c000000 	jal	0 <func_800BC450>
    2cec:	24050040 	li	a1,64
    2cf0:	8fa40058 	lw	a0,88(sp)
    2cf4:	0c000000 	jal	0 <func_800BC450>
    2cf8:	00402825 	move	a1,v0
    2cfc:	3c010001 	lui	at,0x1
    2d00:	00300821 	addu	at,at,s0
    2d04:	ac221de0 	sw	v0,7648(at)
    2d08:	8e2202c0 	lw	v0,704(s1)
    2d0c:	3c0edb06 	lui	t6,0xdb06
    2d10:	35ce0004 	ori	t6,t6,0x4
    2d14:	244d0008 	addiu	t5,v0,8
    2d18:	ae2d02c0 	sw	t5,704(s1)
    2d1c:	ac4e0000 	sw	t6,0(v0)
    2d20:	8faf004c 	lw	t7,76(sp)
    2d24:	2401000a 	li	at,10
    2d28:	8df81de0 	lw	t8,7648(t7)
    2d2c:	ac580004 	sw	t8,4(v0)
    2d30:	3c020000 	lui	v0,0x0
    2d34:	8c420000 	lw	v0,0(v0)
    2d38:	84591074 	lh	t9,4212(v0)
    2d3c:	57210005 	bnel	t9,at,2d54 <Gameplay_Draw+0x3cc>
    2d40:	8e2402c0 	lw	a0,704(s1)
    2d44:	8449108c 	lh	t1,4236(v0)
    2d48:	1120004c 	beqz	t1,2e7c <Gameplay_Draw+0x4f4>
    2d4c:	00000000 	nop
    2d50:	8e2402c0 	lw	a0,704(s1)
    2d54:	0c000000 	jal	0 <func_800BC450>
    2d58:	afa401cc 	sw	a0,460(sp)
    2d5c:	afa201d0 	sw	v0,464(sp)
    2d60:	8e2202b0 	lw	v0,688(s1)
    2d64:	3c0bde00 	lui	t3,0xde00
    2d68:	24010003 	li	at,3
    2d6c:	244a0008 	addiu	t2,v0,8
    2d70:	ae2a02b0 	sw	t2,688(s1)
    2d74:	ac4b0000 	sw	t3,0(v0)
    2d78:	8fac01d0 	lw	t4,464(sp)
    2d7c:	27a400a0 	addiu	a0,sp,160
    2d80:	ac4c0004 	sw	t4,4(v0)
    2d84:	8fad004c 	lw	t5,76(sp)
    2d88:	91a2241b 	lbu	v0,9243(t5)
    2d8c:	10410007 	beq	v0,at,2dac <Gameplay_Draw+0x424>
    2d90:	2401000b 	li	at,11
    2d94:	10410005 	beq	v0,at,2dac <Gameplay_Draw+0x424>
    2d98:	00000000 	nop
    2d9c:	8dae23f0 	lw	t6,9200(t5)
    2da0:	29c10038 	slti	at,t6,56
    2da4:	5420001b 	bnezl	at,2e14 <Gameplay_Draw+0x48c>
    2da8:	3c010001 	lui	at,0x1
    2dac:	0c000000 	jal	0 <func_800BC450>
    2db0:	02202825 	move	a1,s1
    2db4:	240f000a 	li	t7,10
    2db8:	241800f0 	li	t8,240
    2dbc:	24190140 	li	t9,320
    2dc0:	afaf01c0 	sw	t7,448(sp)
    2dc4:	afb9009c 	sw	t9,156(sp)
    2dc8:	afb80094 	sw	t8,148(sp)
    2dcc:	afa00090 	sw	zero,144(sp)
    2dd0:	afa00098 	sw	zero,152(sp)
    2dd4:	27a400a0 	addiu	a0,sp,160
    2dd8:	0c000000 	jal	0 <func_800BC450>
    2ddc:	27a50090 	addiu	a1,sp,144
    2de0:	27a400a0 	addiu	a0,sp,160
    2de4:	2405000f 	li	a1,15
    2de8:	0c000000 	jal	0 <func_800BC450>
    2dec:	27a601d0 	addiu	a2,sp,464
    2df0:	8fa9004c 	lw	t1,76(sp)
    2df4:	3c010001 	lui	at,0x1
    2df8:	342121c8 	ori	at,at,0x21c8
    2dfc:	8d392400 	lw	t9,9216(t1)
    2e00:	02012021 	addu	a0,s0,at
    2e04:	27a501d0 	addiu	a1,sp,464
    2e08:	0320f809 	jalr	t9
    2e0c:	00000000 	nop
    2e10:	3c010001 	lui	at,0x1
    2e14:	3421241c 	ori	at,at,0x241c
    2e18:	02012021 	addu	a0,s0,at
    2e1c:	0c000000 	jal	0 <func_800BC450>
    2e20:	27a501d0 	addiu	a1,sp,464
    2e24:	3c020000 	lui	v0,0x0
    2e28:	24420000 	addiu	v0,v0,0
    2e2c:	904a0003 	lbu	t2,3(v0)
    2e30:	3c040000 	lui	a0,0x0
    2e34:	24840000 	addiu	a0,a0,0
    2e38:	59400006 	blezl	t2,2e54 <Gameplay_Draw+0x4cc>
    2e3c:	8fac01d0 	lw	t4,464(sp)
    2e40:	8c4b0000 	lw	t3,0(v0)
    2e44:	27a501d0 	addiu	a1,sp,464
    2e48:	0c000000 	jal	0 <func_800BC450>
    2e4c:	ac8b0008 	sw	t3,8(a0)
    2e50:	8fac01d0 	lw	t4,464(sp)
    2e54:	3c0edf00 	lui	t6,0xdf00
    2e58:	258d0008 	addiu	t5,t4,8
    2e5c:	afad01d0 	sw	t5,464(sp)
    2e60:	ad800004 	sw	zero,4(t4)
    2e64:	ad8e0000 	sw	t6,0(t4)
    2e68:	8fa501d0 	lw	a1,464(sp)
    2e6c:	0c000000 	jal	0 <func_800BC450>
    2e70:	8fa401cc 	lw	a0,460(sp)
    2e74:	8faf01d0 	lw	t7,464(sp)
    2e78:	ae2f02c0 	sw	t7,704(s1)
    2e7c:	3c180000 	lui	t8,0x0
    2e80:	8f180000 	lw	t8,0(t8)
    2e84:	24010003 	li	at,3
    2e88:	24050140 	li	a1,320
    2e8c:	1701000d 	bne	t8,at,2ec4 <Gameplay_Draw+0x53c>
    2e90:	240600f0 	li	a2,240
    2e94:	8e2902c0 	lw	t1,704(s1)
    2e98:	3c040000 	lui	a0,0x0
    2e9c:	24840000 	addiu	a0,a0,0
    2ea0:	27a50088 	addiu	a1,sp,136
    2ea4:	0c000000 	jal	0 <func_800BC450>
    2ea8:	afa90088 	sw	t1,136(sp)
    2eac:	8fb90088 	lw	t9,136(sp)
    2eb0:	3c020000 	lui	v0,0x0
    2eb4:	ae3902c0 	sw	t9,704(s1)
    2eb8:	8c420000 	lw	v0,0(v0)
    2ebc:	100001c0 	b	35c0 <Gameplay_Draw+0xc38>
    2ec0:	84431074 	lh	v1,4212(v0)
    2ec4:	3c010001 	lui	at,0x1
    2ec8:	34212124 	ori	at,at,0x2124
    2ecc:	3c0a0000 	lui	t2,0x0
    2ed0:	254a0000 	addiu	t2,t2,0
    2ed4:	02012021 	addu	a0,s0,at
    2ed8:	8e2702dc 	lw	a3,732(s1)
    2edc:	afa4003c 	sw	a0,60(sp)
    2ee0:	0c000000 	jal	0 <func_800BC450>
    2ee4:	afaa0010 	sw	t2,16(sp)
    2ee8:	3c020000 	lui	v0,0x0
    2eec:	8c420000 	lw	v0,0(v0)
    2ef0:	24010002 	li	at,2
    2ef4:	84430190 	lh	v1,400(v0)
    2ef8:	5461000e 	bnel	v1,at,2f34 <Gameplay_Draw+0x5ac>
    2efc:	28610004 	slti	at,v1,4
    2f00:	0c000000 	jal	0 <func_800BC450>
    2f04:	00000000 	nop
    2f08:	0c000000 	jal	0 <func_800BC450>
    2f0c:	8fa4003c 	lw	a0,60(sp)
    2f10:	3c0c0000 	lui	t4,0x0
    2f14:	8d8c0000 	lw	t4,0(t4)
    2f18:	240b0003 	li	t3,3
    2f1c:	3c020000 	lui	v0,0x0
    2f20:	a58b0190 	sh	t3,400(t4)
    2f24:	8c420000 	lw	v0,0(v0)
    2f28:	10000008 	b	2f4c <Gameplay_Draw+0x5c4>
    2f2c:	84430190 	lh	v1,400(v0)
    2f30:	28610004 	slti	at,v1,4
    2f34:	54200006 	bnezl	at,2f50 <Gameplay_Draw+0x5c8>
    2f38:	24010003 	li	at,3
    2f3c:	a4400190 	sh	zero,400(v0)
    2f40:	3c020000 	lui	v0,0x0
    2f44:	8c420000 	lw	v0,0(v0)
    2f48:	84430190 	lh	v1,400(v0)
    2f4c:	24010003 	li	at,3
    2f50:	5461000d 	bnel	v1,at,2f88 <Gameplay_Draw+0x600>
    2f54:	84431074 	lh	v1,4212(v0)
    2f58:	8e2d02c0 	lw	t5,704(s1)
    2f5c:	8fa4003c 	lw	a0,60(sp)
    2f60:	27a50084 	addiu	a1,sp,132
    2f64:	0c000000 	jal	0 <func_800BC450>
    2f68:	afad0084 	sw	t5,132(sp)
    2f6c:	8fae0084 	lw	t6,132(sp)
    2f70:	3c020000 	lui	v0,0x0
    2f74:	ae2e02c0 	sw	t6,704(s1)
    2f78:	8c420000 	lw	v0,0(v0)
    2f7c:	10000190 	b	35c0 <Gameplay_Draw+0xc38>
    2f80:	84431074 	lh	v1,4212(v0)
    2f84:	84431074 	lh	v1,4212(v0)
    2f88:	2401000a 	li	at,10
    2f8c:	54610005 	bnel	v1,at,2fa4 <Gameplay_Draw+0x61c>
    2f90:	8fb8004c 	lw	t8,76(sp)
    2f94:	844f107a 	lh	t7,4218(v0)
    2f98:	51e00038 	beqzl	t7,307c <Gameplay_Draw+0x6f4>
    2f9c:	2401000a 	li	at,10
    2fa0:	8fb8004c 	lw	t8,76(sp)
    2fa4:	2401001d 	li	at,29
    2fa8:	93041e14 	lbu	a0,7700(t8)
    2fac:	50800033 	beqzl	a0,307c <Gameplay_Draw+0x6f4>
    2fb0:	2401000a 	li	at,10
    2fb4:	10810030 	beq	a0,at,3078 <Gameplay_Draw+0x6f0>
    2fb8:	00804025 	move	t0,a0
    2fbc:	93090a39 	lbu	t1,2617(t8)
    2fc0:	24010001 	li	at,1
    2fc4:	5520002d 	bnezl	t1,307c <Gameplay_Draw+0x6f4>
    2fc8:	2401000a 	li	at,10
    2fcc:	10810003 	beq	a0,at,2fdc <Gameplay_Draw+0x654>
    2fd0:	26061f78 	addiu	a2,s0,8056
    2fd4:	24010005 	li	at,5
    2fd8:	15010015 	bne	t0,at,3030 <Gameplay_Draw+0x6a8>
    2fdc:	3c010001 	lui	at,0x1
    2fe0:	34210a24 	ori	at,at,0xa24
    2fe4:	02012821 	addu	a1,s0,at
    2fe8:	0c000000 	jal	0 <func_800BC450>
    2fec:	afa60048 	sw	a2,72(sp)
    2ff0:	8fb9004c 	lw	t9,76(sp)
    2ff4:	c60600e0 	lwc1	$f6,224(s0)
    2ff8:	8fa40048 	lw	a0,72(sp)
    2ffc:	93261e14 	lbu	a2,7700(t9)
    3000:	93270a37 	lbu	a3,2615(t9)
    3004:	e7a60010 	swc1	$f6,16(sp)
    3008:	c60800e4 	lwc1	$f8,228(s0)
    300c:	02202825 	move	a1,s1
    3010:	e7a80014 	swc1	$f8,20(sp)
    3014:	c60a00e8 	lwc1	$f10,232(s0)
    3018:	0c000000 	jal	0 <func_800BC450>
    301c:	e7aa0018 	swc1	$f10,24(sp)
    3020:	3c020000 	lui	v0,0x0
    3024:	8c420000 	lw	v0,0(v0)
    3028:	10000013 	b	3078 <Gameplay_Draw+0x6f0>
    302c:	84431074 	lh	v1,4212(v0)
    3030:	860a20b8 	lh	t2,8376(s0)
    3034:	55400011 	bnezl	t2,307c <Gameplay_Draw+0x6f4>
    3038:	2401000a 	li	at,10
    303c:	c61000e0 	lwc1	$f16,224(s0)
    3040:	00083400 	sll	a2,t0,0x10
    3044:	00063403 	sra	a2,a2,0x10
    3048:	e7b00010 	swc1	$f16,16(sp)
    304c:	c61200e4 	lwc1	$f18,228(s0)
    3050:	26041f78 	addiu	a0,s0,8056
    3054:	02202825 	move	a1,s1
    3058:	e7b20014 	swc1	$f18,20(sp)
    305c:	c60400e8 	lwc1	$f4,232(s0)
    3060:	00003825 	move	a3,zero
    3064:	0c000000 	jal	0 <func_800BC450>
    3068:	e7a40018 	swc1	$f4,24(sp)
    306c:	3c020000 	lui	v0,0x0
    3070:	8c420000 	lw	v0,0(v0)
    3074:	84431074 	lh	v1,4212(v0)
    3078:	2401000a 	li	at,10
    307c:	54610006 	bnel	v1,at,3098 <Gameplay_Draw+0x710>
    3080:	8fad004c 	lw	t5,76(sp)
    3084:	844b1088 	lh	t3,4232(v0)
    3088:	316c0002 	andi	t4,t3,0x2
    308c:	5180000b 	beqzl	t4,30bc <Gameplay_Draw+0x734>
    3090:	2401000a 	li	at,10
    3094:	8fad004c 	lw	t5,76(sp)
    3098:	91ae0a3a 	lbu	t6,2618(t5)
    309c:	55c00007 	bnezl	t6,30bc <Gameplay_Draw+0x734>
    30a0:	2401000a 	li	at,10
    30a4:	0c000000 	jal	0 <func_800BC450>
    30a8:	02002025 	move	a0,s0
    30ac:	3c020000 	lui	v0,0x0
    30b0:	8c420000 	lw	v0,0(v0)
    30b4:	84431074 	lh	v1,4212(v0)
    30b8:	2401000a 	li	at,10
    30bc:	14610005 	bne	v1,at,30d4 <Gameplay_Draw+0x74c>
    30c0:	00000000 	nop
    30c4:	844f1088 	lh	t7,4232(v0)
    30c8:	31f80001 	andi	t8,t7,0x1
    30cc:	53000007 	beqzl	t8,30ec <Gameplay_Draw+0x764>
    30d0:	2401000a 	li	at,10
    30d4:	0c000000 	jal	0 <func_800BC450>
    30d8:	02002025 	move	a0,s0
    30dc:	3c020000 	lui	v0,0x0
    30e0:	8c420000 	lw	v0,0(v0)
    30e4:	84431074 	lh	v1,4212(v0)
    30e8:	2401000a 	li	at,10
    30ec:	14610005 	bne	v1,at,3104 <Gameplay_Draw+0x77c>
    30f0:	00000000 	nop
    30f4:	84491088 	lh	t1,4232(v0)
    30f8:	31390004 	andi	t9,t1,0x4
    30fc:	5320000a 	beqzl	t9,3128 <Gameplay_Draw+0x7a0>
    3100:	2401000a 	li	at,10
    3104:	0c000000 	jal	0 <func_800BC450>
    3108:	02002025 	move	a0,s0
    310c:	02002025 	move	a0,s0
    3110:	0c000000 	jal	0 <func_800BC450>
    3114:	00002825 	move	a1,zero
    3118:	3c020000 	lui	v0,0x0
    311c:	8c420000 	lw	v0,0(v0)
    3120:	84431074 	lh	v1,4212(v0)
    3124:	2401000a 	li	at,10
    3128:	54610005 	bnel	v1,at,3140 <Gameplay_Draw+0x7b8>
    312c:	260407a8 	addiu	a0,s0,1960
    3130:	844a1088 	lh	t2,4232(v0)
    3134:	314b0008 	andi	t3,t2,0x8
    3138:	1160000e 	beqz	t3,3174 <Gameplay_Draw+0x7ec>
    313c:	260407a8 	addiu	a0,s0,1960
    3140:	0c000000 	jal	0 <func_800BC450>
    3144:	02202825 	move	a1,s1
    3148:	afa20228 	sw	v0,552(sp)
    314c:	8e0507a8 	lw	a1,1960(s0)
    3150:	00402025 	move	a0,v0
    3154:	0c000000 	jal	0 <func_800BC450>
    3158:	00003025 	move	a2,zero
    315c:	8fa40228 	lw	a0,552(sp)
    3160:	0c000000 	jal	0 <func_800BC450>
    3164:	02202825 	move	a1,s1
    3168:	3c020000 	lui	v0,0x0
    316c:	8c420000 	lw	v0,0(v0)
    3170:	84431074 	lh	v1,4212(v0)
    3174:	2401000a 	li	at,10
    3178:	54610005 	bnel	v1,at,3190 <Gameplay_Draw+0x808>
    317c:	844d0fd0 	lh	t5,4048(v0)
    3180:	844c107c 	lh	t4,4220(v0)
    3184:	5180001f 	beqzl	t4,3204 <Gameplay_Draw+0x87c>
    3188:	2401000a 	li	at,10
    318c:	844d0fd0 	lh	t5,4048(v0)
    3190:	2401000a 	li	at,10
    3194:	02002025 	move	a0,s0
    3198:	55a0001a 	bnezl	t5,3204 <Gameplay_Draw+0x87c>
    319c:	2401000a 	li	at,10
    31a0:	50610004 	beql	v1,at,31b4 <Gameplay_Draw+0x82c>
    31a4:	8443107c 	lh	v1,4220(v0)
    31a8:	10000002 	b	31b4 <Gameplay_Draw+0x82c>
    31ac:	24030003 	li	v1,3
    31b0:	8443107c 	lh	v1,4220(v0)
    31b4:	0c000000 	jal	0 <func_800BC450>
    31b8:	afa30080 	sw	v1,128(sp)
    31bc:	8fa30080 	lw	v1,128(sp)
    31c0:	3c010001 	lui	at,0x1
    31c4:	34211cbc 	ori	at,at,0x1cbc
    31c8:	30660003 	andi	a2,v1,0x3
    31cc:	afa60048 	sw	a2,72(sp)
    31d0:	02012821 	addu	a1,s0,at
    31d4:	0c000000 	jal	0 <func_800BC450>
    31d8:	02002025 	move	a0,s0
    31dc:	3c010001 	lui	at,0x1
    31e0:	34211cd0 	ori	at,at,0x1cd0
    31e4:	8fa60048 	lw	a2,72(sp)
    31e8:	02012821 	addu	a1,s0,at
    31ec:	0c000000 	jal	0 <func_800BC450>
    31f0:	02002025 	move	a0,s0
    31f4:	3c020000 	lui	v0,0x0
    31f8:	8c420000 	lw	v0,0(v0)
    31fc:	84431074 	lh	v1,4212(v0)
    3200:	2401000a 	li	at,10
    3204:	54610005 	bnel	v1,at,321c <Gameplay_Draw+0x894>
    3208:	860f20b8 	lh	t7,8376(s0)
    320c:	844e107a 	lh	t6,4218(v0)
    3210:	51c00023 	beqzl	t6,32a0 <Gameplay_Draw+0x918>
    3214:	8fad004c 	lw	t5,76(sp)
    3218:	860f20b8 	lh	t7,8376(s0)
    321c:	51e00020 	beqzl	t7,32a0 <Gameplay_Draw+0x918>
    3220:	8fad004c 	lw	t5,76(sp)
    3224:	861807a0 	lh	t8,1952(s0)
    3228:	24010019 	li	at,25
    322c:	27a40074 	addiu	a0,sp,116
    3230:	00184880 	sll	t1,t8,0x2
    3234:	0209c821 	addu	t9,s0,t1
    3238:	8f250790 	lw	a1,1936(t9)
    323c:	260b1f78 	addiu	t3,s0,8056
    3240:	84aa0142 	lh	t2,322(a1)
    3244:	51410016 	beql	t2,at,32a0 <Gameplay_Draw+0x918>
    3248:	8fad004c 	lw	t5,76(sp)
    324c:	0c000000 	jal	0 <func_800BC450>
    3250:	afab0048 	sw	t3,72(sp)
    3254:	c60600e0 	lwc1	$f6,224(s0)
    3258:	c7a80074 	lwc1	$f8,116(sp)
    325c:	8fac004c 	lw	t4,76(sp)
    3260:	c7b20078 	lwc1	$f18,120(sp)
    3264:	46083280 	add.s	$f10,$f6,$f8
    3268:	91861e14 	lbu	a2,7700(t4)
    326c:	c7a8007c 	lwc1	$f8,124(sp)
    3270:	8fa40048 	lw	a0,72(sp)
    3274:	e7aa0010 	swc1	$f10,16(sp)
    3278:	c61000e4 	lwc1	$f16,228(s0)
    327c:	02202825 	move	a1,s1
    3280:	00003825 	move	a3,zero
    3284:	46128100 	add.s	$f4,$f16,$f18
    3288:	e7a40014 	swc1	$f4,20(sp)
    328c:	c60600e8 	lwc1	$f6,232(s0)
    3290:	46083280 	add.s	$f10,$f6,$f8
    3294:	0c000000 	jal	0 <func_800BC450>
    3298:	e7aa0018 	swc1	$f10,24(sp)
    329c:	8fad004c 	lw	t5,76(sp)
    32a0:	02002025 	move	a0,s0
    32a4:	8fa50040 	lw	a1,64(sp)
    32a8:	91ae0b13 	lbu	t6,2835(t5)
    32ac:	11c00003 	beqz	t6,32bc <Gameplay_Draw+0x934>
    32b0:	00000000 	nop
    32b4:	0c000000 	jal	0 <func_800BC450>
    32b8:	02203025 	move	a2,s1
    32bc:	3c020000 	lui	v0,0x0
    32c0:	8c420000 	lw	v0,0(v0)
    32c4:	2401000a 	li	at,10
    32c8:	02202025 	move	a0,s1
    32cc:	84431074 	lh	v1,4212(v0)
    32d0:	00002825 	move	a1,zero
    32d4:	00003025 	move	a2,zero
    32d8:	14610004 	bne	v1,at,32ec <Gameplay_Draw+0x964>
    32dc:	8fb8004c 	lw	t8,76(sp)
    32e0:	844f107c 	lh	t7,4220(v0)
    32e4:	51e0000b 	beqzl	t7,3314 <Gameplay_Draw+0x98c>
    32e8:	2401000a 	li	at,10
    32ec:	87091e18 	lh	t1,7704(t8)
    32f0:	24190001 	li	t9,1
    32f4:	afb90014 	sw	t9,20(sp)
    32f8:	00003825 	move	a3,zero
    32fc:	0c000000 	jal	0 <func_800BC450>
    3300:	afa90010 	sw	t1,16(sp)
    3304:	3c020000 	lui	v0,0x0
    3308:	8c420000 	lw	v0,0(v0)
    330c:	84431074 	lh	v1,4212(v0)
    3310:	2401000a 	li	at,10
    3314:	14610004 	bne	v1,at,3328 <Gameplay_Draw+0x9a0>
    3318:	02002025 	move	a0,s0
    331c:	844a107e 	lh	t2,4222(v0)
    3320:	51400007 	beqzl	t2,3340 <Gameplay_Draw+0x9b8>
    3324:	2401000a 	li	at,10
    3328:	0c000000 	jal	0 <func_800BC450>
    332c:	26051c24 	addiu	a1,s0,7204
    3330:	3c020000 	lui	v0,0x0
    3334:	8c420000 	lw	v0,0(v0)
    3338:	84431074 	lh	v1,4212(v0)
    333c:	2401000a 	li	at,10
    3340:	14610004 	bne	v1,at,3354 <Gameplay_Draw+0x9cc>
    3344:	8fac004c 	lw	t4,76(sp)
    3348:	844b1080 	lh	t3,4224(v0)
    334c:	51600025 	beqzl	t3,33e4 <Gameplay_Draw+0xa5c>
    3350:	2401000a 	li	at,10
    3354:	918d0a3a 	lbu	t5,2618(t4)
    3358:	15a0001c 	bnez	t5,33cc <Gameplay_Draw+0xa44>
    335c:	00000000 	nop
    3360:	c61000e0 	lwc1	$f16,224(s0)
    3364:	c5920a28 	lwc1	$f18,2600(t4)
    3368:	27ae021c 	addiu	t6,sp,540
    336c:	3c010001 	lui	at,0x1
    3370:	46128100 	add.s	$f4,$f16,$f18
    3374:	34210a24 	ori	at,at,0xa24
    3378:	02012821 	addu	a1,s0,at
    337c:	02002025 	move	a0,s0
    3380:	e7a4021c 	swc1	$f4,540(sp)
    3384:	c5880a2c 	lwc1	$f8,2604(t4)
    3388:	c60600e4 	lwc1	$f6,228(s0)
    338c:	8fa60040 	lw	a2,64(sp)
    3390:	02203825 	move	a3,s1
    3394:	46083280 	add.s	$f10,$f6,$f8
    3398:	e7aa0220 	swc1	$f10,544(sp)
    339c:	c5920a30 	lwc1	$f18,2608(t4)
    33a0:	c61000e8 	lwc1	$f16,232(s0)
    33a4:	46128100 	add.s	$f4,$f16,$f18
    33a8:	e7a40224 	swc1	$f4,548(sp)
    33ac:	8dd80000 	lw	t8,0(t6)
    33b0:	afb80010 	sw	t8,16(sp)
    33b4:	8dcf0004 	lw	t7,4(t6)
    33b8:	afaf0014 	sw	t7,20(sp)
    33bc:	8dd80008 	lw	t8,8(t6)
    33c0:	afa0001c 	sw	zero,28(sp)
    33c4:	0c000000 	jal	0 <func_800BC450>
    33c8:	afb80018 	sw	t8,24(sp)
    33cc:	0c000000 	jal	0 <func_800BC450>
    33d0:	02002025 	move	a0,s0
    33d4:	3c020000 	lui	v0,0x0
    33d8:	8c420000 	lw	v0,0(v0)
    33dc:	84431074 	lh	v1,4212(v0)
    33e0:	2401000a 	li	at,10
    33e4:	54610005 	bnel	v1,at,33fc <Gameplay_Draw+0xa74>
    33e8:	84590454 	lh	t9,1108(v0)
    33ec:	84491082 	lh	t1,4226(v0)
    33f0:	51200024 	beqzl	t1,3484 <Gameplay_Draw+0xafc>
    33f4:	2401000a 	li	at,10
    33f8:	84590454 	lh	t9,1108(v0)
    33fc:	02202025 	move	a0,s1
    3400:	240b0003 	li	t3,3
    3404:	53200009 	beqzl	t9,342c <Gameplay_Draw+0xaa4>
    3408:	8fad004c 	lw	t5,76(sp)
    340c:	844a045c 	lh	t2,1116(v0)
    3410:	90450457 	lbu	a1,1111(v0)
    3414:	90460459 	lbu	a2,1113(v0)
    3418:	9047045b 	lbu	a3,1115(v0)
    341c:	afab0014 	sw	t3,20(sp)
    3420:	0c000000 	jal	0 <func_800BC450>
    3424:	afaa0010 	sw	t2,16(sp)
    3428:	8fad004c 	lw	t5,76(sp)
    342c:	24010001 	li	at,1
    3430:	8fae004c 	lw	t6,76(sp)
    3434:	91ac0b05 	lbu	t4,2821(t5)
    3438:	24180003 	li	t8,3
    343c:	3c020000 	lui	v0,0x0
    3440:	1581000d 	bne	t4,at,3478 <Gameplay_Draw+0xaf0>
    3444:	00000000 	nop
    3448:	91cf0b09 	lbu	t7,2825(t6)
    344c:	91c50b06 	lbu	a1,2822(t6)
    3450:	91c60b07 	lbu	a2,2823(t6)
    3454:	91c70b08 	lbu	a3,2824(t6)
    3458:	afb80014 	sw	t8,20(sp)
    345c:	02202025 	move	a0,s1
    3460:	0c000000 	jal	0 <func_800BC450>
    3464:	afaf0010 	sw	t7,16(sp)
    3468:	3c020000 	lui	v0,0x0
    346c:	8c420000 	lw	v0,0(v0)
    3470:	10000003 	b	3480 <Gameplay_Draw+0xaf8>
    3474:	84431074 	lh	v1,4212(v0)
    3478:	8c420000 	lw	v0,0(v0)
    347c:	84431074 	lh	v1,4212(v0)
    3480:	2401000a 	li	at,10
    3484:	14610004 	bne	v1,at,3498 <Gameplay_Draw+0xb10>
    3488:	8fb9004c 	lw	t9,76(sp)
    348c:	84491084 	lh	t1,4228(v0)
    3490:	5120000a 	beqzl	t1,34bc <Gameplay_Draw+0xb34>
    3494:	2401000a 	li	at,10
    3498:	93250b0a 	lbu	a1,2826(t9)
    349c:	50a00007 	beqzl	a1,34bc <Gameplay_Draw+0xb34>
    34a0:	2401000a 	li	at,10
    34a4:	0c000000 	jal	0 <func_800BC450>
    34a8:	02002025 	move	a0,s0
    34ac:	3c020000 	lui	v0,0x0
    34b0:	8c420000 	lw	v0,0(v0)
    34b4:	84431074 	lh	v1,4212(v0)
    34b8:	2401000a 	li	at,10
    34bc:	14610004 	bne	v1,at,34d0 <Gameplay_Draw+0xb48>
    34c0:	00000000 	nop
    34c4:	844a108e 	lh	t2,4238(v0)
    34c8:	51400006 	beqzl	t2,34e4 <Gameplay_Draw+0xb5c>
    34cc:	844b0190 	lh	t3,400(v0)
    34d0:	0c000000 	jal	0 <func_800BC450>
    34d4:	02002025 	move	a0,s0
    34d8:	3c020000 	lui	v0,0x0
    34dc:	8c420000 	lw	v0,0(v0)
    34e0:	844b0190 	lh	t3,400(v0)
    34e4:	24010001 	li	at,1
    34e8:	3c0d0000 	lui	t5,0x0
    34ec:	11610005 	beq	t3,at,3504 <Gameplay_Draw+0xb7c>
    34f0:	3c0f0000 	lui	t7,0x0
    34f4:	8dad0000 	lw	t5,0(t5)
    34f8:	24010001 	li	at,1
    34fc:	55a10030 	bnel	t5,at,35c0 <Gameplay_Draw+0xc38>
    3500:	84431074 	lh	v1,4212(v0)
    3504:	8e2c02b0 	lw	t4,688(s1)
    3508:	3c010001 	lui	at,0x1
    350c:	00300821 	addu	at,at,s0
    3510:	afac0070 	sw	t4,112(sp)
    3514:	8e2e02dc 	lw	t6,732(s1)
    3518:	25ef0000 	addiu	t7,t7,0
    351c:	27a50070 	addiu	a1,sp,112
    3520:	ac2e2134 	sw	t6,8500(at)
    3524:	3c010001 	lui	at,0x1
    3528:	00300821 	addu	at,at,s0
    352c:	ac2f2138 	sw	t7,8504(at)
    3530:	0c000000 	jal	0 <func_800BC450>
    3534:	8fa4003c 	lw	a0,60(sp)
    3538:	3c180000 	lui	t8,0x0
    353c:	8f180000 	lw	t8,0(t8)
    3540:	24010001 	li	at,1
    3544:	27a50070 	addiu	a1,sp,112
    3548:	87090190 	lh	t1,400(t8)
    354c:	240d0002 	li	t5,2
    3550:	1521000c 	bne	t1,at,3584 <Gameplay_Draw+0xbfc>
    3554:	00000000 	nop
    3558:	8e3902dc 	lw	t9,732(s1)
    355c:	3c010001 	lui	at,0x1
    3560:	00300821 	addu	at,at,s0
    3564:	ac39213c 	sw	t9,8508(at)
    3568:	0c000000 	jal	0 <func_800BC450>
    356c:	8fa4003c 	lw	a0,60(sp)
    3570:	3c0b0000 	lui	t3,0x0
    3574:	8d6b0000 	lw	t3,0(t3)
    3578:	240a0002 	li	t2,2
    357c:	10000003 	b	358c <Gameplay_Draw+0xc04>
    3580:	a56a0190 	sh	t2,400(t3)
    3584:	3c010000 	lui	at,0x0
    3588:	ac2d0000 	sw	t5,0(at)
    358c:	8fac0070 	lw	t4,112(sp)
    3590:	3c010001 	lui	at,0x1
    3594:	00300821 	addu	at,at,s0
    3598:	240e0002 	li	t6,2
    359c:	ae2c02b0 	sw	t4,688(s1)
    35a0:	a02e21c7 	sb	t6,8647(at)
    35a4:	3c020000 	lui	v0,0x0
    35a8:	8c420000 	lw	v0,0(v0)
    35ac:	844f0116 	lh	t7,278(v0)
    35b0:	35f80001 	ori	t8,t7,0x1
    35b4:	1000000a 	b	35e0 <Gameplay_Draw+0xc58>
    35b8:	a4580116 	sh	t8,278(v0)
    35bc:	84431074 	lh	v1,4212(v0)
    35c0:	2401000a 	li	at,10
    35c4:	14610004 	bne	v1,at,35d8 <Gameplay_Draw+0xc50>
    35c8:	00000000 	nop
    35cc:	84491086 	lh	t1,4230(v0)
    35d0:	51200004 	beqzl	t1,35e4 <Gameplay_Draw+0xc5c>
    35d4:	8e1901dc 	lw	t9,476(s0)
    35d8:	0c000000 	jal	0 <func_800BC450>
    35dc:	02002025 	move	a0,s0
    35e0:	8e1901dc 	lw	t9,476(s0)
    35e4:	5320001c 	beqzl	t9,3658 <Gameplay_Draw+0xcd0>
    35e8:	860f07a0 	lh	t7,1952(s0)
    35ec:	860a07a0 	lh	t2,1952(s0)
    35f0:	260c00b8 	addiu	t4,s0,184
    35f4:	27a40050 	addiu	a0,sp,80
    35f8:	000a5880 	sll	t3,t2,0x2
    35fc:	020b6821 	addu	t5,s0,t3
    3600:	8da50790 	lw	a1,1936(t5)
    3604:	0c000000 	jal	0 <func_800BC450>
    3608:	afac0040 	sw	t4,64(sp)
    360c:	0c000000 	jal	0 <func_800BC450>
    3610:	8fa40040 	lw	a0,64(sp)
    3614:	8fa3004c 	lw	v1,76(sp)
    3618:	ae0001dc 	sw	zero,476(s0)
    361c:	2401001d 	li	at,29
    3620:	90641e14 	lbu	a0,7700(v1)
    3624:	5080000c 	beqzl	a0,3658 <Gameplay_Draw+0xcd0>
    3628:	860f07a0 	lh	t7,1952(s0)
    362c:	5081000a 	beql	a0,at,3658 <Gameplay_Draw+0xcd0>
    3630:	860f07a0 	lh	t7,1952(s0)
    3634:	906e0a39 	lbu	t6,2617(v1)
    3638:	26041f78 	addiu	a0,s0,8056
    363c:	55c00006 	bnezl	t6,3658 <Gameplay_Draw+0xcd0>
    3640:	860f07a0 	lh	t7,1952(s0)
    3644:	8e0500e0 	lw	a1,224(s0)
    3648:	8e0600e4 	lw	a2,228(s0)
    364c:	0c000000 	jal	0 <func_800BC450>
    3650:	8e0700e8 	lw	a3,232(s0)
    3654:	860f07a0 	lh	t7,1952(s0)
    3658:	000fc080 	sll	t8,t7,0x2
    365c:	02184821 	addu	t1,s0,t8
    3660:	0c000000 	jal	0 <func_800BC450>
    3664:	8d240790 	lw	a0,1936(t1)
    3668:	3c060000 	lui	a2,0x0
    366c:	24c60000 	addiu	a2,a2,0
    3670:	27a40208 	addiu	a0,sp,520
    3674:	02202825 	move	a1,s1
    3678:	0c000000 	jal	0 <func_800BC450>
    367c:	2407119c 	li	a3,4508
    3680:	8fbf002c 	lw	ra,44(sp)
    3684:	8fb00024 	lw	s0,36(sp)
    3688:	8fb10028 	lw	s1,40(sp)
    368c:	03e00008 	jr	ra
    3690:	27bd0230 	addiu	sp,sp,560

00003694 <Gameplay_Main>:
    3694:	27bdffe8 	addiu	sp,sp,-24
    3698:	afbf0014 	sw	ra,20(sp)
    369c:	248f0014 	addiu	t7,a0,20
    36a0:	3c010000 	lui	at,0x0
    36a4:	afa40018 	sw	a0,24(sp)
    36a8:	0c000000 	jal	0 <func_800BC450>
    36ac:	ac2f0000 	sw	t7,0(at)
    36b0:	3c060000 	lui	a2,0x0
    36b4:	24c60000 	addiu	a2,a2,0
    36b8:	8cc30000 	lw	v1,0(a2)
    36bc:	3c040000 	lui	a0,0x0
    36c0:	248405b4 	addiu	a0,a0,1460
    36c4:	84781052 	lh	t8,4178(v1)
    36c8:	5300000b 	beqzl	t8,36f8 <Gameplay_Main+0x64>
    36cc:	84641074 	lh	a0,4212(v1)
    36d0:	0c000000 	jal	0 <func_800BC450>
    36d4:	240511cc 	li	a1,4556
    36d8:	3c040000 	lui	a0,0x0
    36dc:	248405c0 	addiu	a0,a0,1472
    36e0:	0c000000 	jal	0 <func_800BC450>
    36e4:	24050001 	li	a1,1
    36e8:	3c060000 	lui	a2,0x0
    36ec:	24c60000 	addiu	a2,a2,0
    36f0:	8cc30000 	lw	v1,0(a2)
    36f4:	84641074 	lh	a0,4212(v1)
    36f8:	2405000a 	li	a1,10
    36fc:	14a40024 	bne	a1,a0,3790 <Gameplay_Main+0xfc>
    3700:	00000000 	nop
    3704:	84791090 	lh	t9,4240(v1)
    3708:	24020001 	li	v0,1
    370c:	10b90020 	beq	a1,t9,3790 <Gameplay_Main+0xfc>
    3710:	00000000 	nop
    3714:	a4621076 	sh	v0,4214(v1)
    3718:	8cc80000 	lw	t0,0(a2)
    371c:	240a0003 	li	t2,3
    3720:	2419000f 	li	t9,15
    3724:	a5021078 	sh	v0,4216(t0)
    3728:	8cc90000 	lw	t1,0(a2)
    372c:	a522107a 	sh	v0,4218(t1)
    3730:	8ccb0000 	lw	t3,0(a2)
    3734:	a56a107c 	sh	t2,4220(t3)
    3738:	8ccc0000 	lw	t4,0(a2)
    373c:	a582107e 	sh	v0,4222(t4)
    3740:	8ccd0000 	lw	t5,0(a2)
    3744:	a5a21080 	sh	v0,4224(t5)
    3748:	8cce0000 	lw	t6,0(a2)
    374c:	a5c21082 	sh	v0,4226(t6)
    3750:	8ccf0000 	lw	t7,0(a2)
    3754:	a5e21084 	sh	v0,4228(t7)
    3758:	8cd80000 	lw	t8,0(a2)
    375c:	a7021086 	sh	v0,4230(t8)
    3760:	8cc80000 	lw	t0,0(a2)
    3764:	a5191088 	sh	t9,4232(t0)
    3768:	8cc90000 	lw	t1,0(a2)
    376c:	a522108a 	sh	v0,4234(t1)
    3770:	8cca0000 	lw	t2,0(a2)
    3774:	a542108c 	sh	v0,4236(t2)
    3778:	8ccb0000 	lw	t3,0(a2)
    377c:	a562108e 	sh	v0,4238(t3)
    3780:	8ccc0000 	lw	t4,0(a2)
    3784:	a5851090 	sh	a1,4240(t4)
    3788:	8cc30000 	lw	v1,0(a2)
    378c:	84641074 	lh	a0,4212(v1)
    3790:	14a40004 	bne	a1,a0,37a4 <Gameplay_Main+0x110>
    3794:	00000000 	nop
    3798:	846d1076 	lh	t5,4214(v1)
    379c:	51a00007 	beqzl	t5,37bc <Gameplay_Main+0x128>
    37a0:	84621052 	lh	v0,4178(v1)
    37a4:	0c000000 	jal	0 <func_800BC450>
    37a8:	8fa40018 	lw	a0,24(sp)
    37ac:	3c060000 	lui	a2,0x0
    37b0:	24c60000 	addiu	a2,a2,0
    37b4:	8cc30000 	lw	v1,0(a2)
    37b8:	84621052 	lh	v0,4178(v1)
    37bc:	3c040000 	lui	a0,0x0
    37c0:	248405c8 	addiu	a0,a0,1480
    37c4:	10400007 	beqz	v0,37e4 <Gameplay_Main+0x150>
    37c8:	00000000 	nop
    37cc:	0c000000 	jal	0 <func_800BC450>
    37d0:	240511e7 	li	a1,4583
    37d4:	3c040000 	lui	a0,0x0
    37d8:	248405d4 	addiu	a0,a0,1492
    37dc:	0c000000 	jal	0 <func_800BC450>
    37e0:	24050001 	li	a1,1
    37e4:	0c000000 	jal	0 <func_800BC450>
    37e8:	8fa40018 	lw	a0,24(sp)
    37ec:	3c060000 	lui	a2,0x0
    37f0:	24c60000 	addiu	a2,a2,0
    37f4:	8cce0000 	lw	t6,0(a2)
    37f8:	3c040000 	lui	a0,0x0
    37fc:	248405dc 	addiu	a0,a0,1500
    3800:	85cf1052 	lh	t7,4178(t6)
    3804:	51e00008 	beqzl	t7,3828 <Gameplay_Main+0x194>
    3808:	8fbf0014 	lw	ra,20(sp)
    380c:	0c000000 	jal	0 <func_800BC450>
    3810:	240511eb 	li	a1,4587
    3814:	3c040000 	lui	a0,0x0
    3818:	248405e8 	addiu	a0,a0,1512
    381c:	0c000000 	jal	0 <func_800BC450>
    3820:	24050001 	li	a1,1
    3824:	8fbf0014 	lw	ra,20(sp)
    3828:	27bd0018 	addiu	sp,sp,24
    382c:	03e00008 	jr	ra
    3830:	00000000 	nop

00003834 <Gameplay_InCsMode>:
    3834:	27bdffe8 	addiu	sp,sp,-24
    3838:	afbf0014 	sw	ra,20(sp)
    383c:	90821d6c 	lbu	v0,7532(a0)
    3840:	0002102b 	sltu	v0,zero,v0
    3844:	54400005 	bnezl	v0,385c <Gameplay_InCsMode+0x28>
    3848:	8fbf0014 	lw	ra,20(sp)
    384c:	0c000000 	jal	0 <func_800BC450>
    3850:	00000000 	nop
    3854:	0002102b 	sltu	v0,zero,v0
    3858:	8fbf0014 	lw	ra,20(sp)
    385c:	27bd0018 	addiu	sp,sp,24
    3860:	03e00008 	jr	ra
    3864:	00000000 	nop

00003868 <func_800BFCB8>:
    3868:	27bdffa0 	addiu	sp,sp,-96
    386c:	afbf0014 	sw	ra,20(sp)
    3870:	afa40060 	sw	a0,96(sp)
    3874:	00a03825 	move	a3,a1
    3878:	afa70064 	sw	a3,100(sp)
    387c:	27a50050 	addiu	a1,sp,80
    3880:	248407c0 	addiu	a0,a0,1984
    3884:	0c000000 	jal	0 <func_800BC450>
    3888:	afa60068 	sw	a2,104(sp)
    388c:	3c01c6fa 	lui	at,0xc6fa
    3890:	44812000 	mtc1	at,$f4
    3894:	8fa60068 	lw	a2,104(sp)
    3898:	8fa70064 	lw	a3,100(sp)
    389c:	4600203c 	c.lt.s	$f4,$f0
    38a0:	e7a00040 	swc1	$f0,64(sp)
    38a4:	4502003f 	bc1fl	39a4 <func_800BFCB8+0x13c>
    38a8:	44801000 	mtc1	zero,$f2
    38ac:	87ae0058 	lh	t6,88(sp)
    38b0:	87af005a 	lh	t7,90(sp)
    38b4:	87b8005c 	lh	t8,92(sp)
    38b8:	448e3000 	mtc1	t6,$f6
    38bc:	448f5000 	mtc1	t7,$f10
    38c0:	3c010000 	lui	at,0x0
    38c4:	46803220 	cvt.s.w	$f8,$f6
    38c8:	c4300878 	lwc1	$f16,2168(at)
    38cc:	44983000 	mtc1	t8,$f6
    38d0:	3c013f80 	lui	at,0x3f80
    38d4:	44801000 	mtc1	zero,$f2
    38d8:	46805120 	cvt.s.w	$f4,$f10
    38dc:	46104382 	mul.s	$f14,$f8,$f16
    38e0:	46803220 	cvt.s.w	$f8,$f6
    38e4:	46102482 	mul.s	$f18,$f4,$f16
    38e8:	44812000 	mtc1	at,$f4
    38ec:	46104282 	mul.s	$f10,$f8,$f16
    38f0:	e7b20038 	swc1	$f18,56(sp)
    38f4:	460e7182 	mul.s	$f6,$f14,$f14
    38f8:	e7aa0018 	swc1	$f10,24(sp)
    38fc:	e7aa0034 	swc1	$f10,52(sp)
    3900:	46062001 	sub.s	$f0,$f4,$f6
    3904:	46007107 	neg.s	$f4,$f14
    3908:	46000004 	sqrt.s	$f0,$f0
    390c:	46020032 	c.eq.s	$f0,$f2
    3910:	00000000 	nop
    3914:	45030007 	bc1tl	3934 <func_800BFCB8+0xcc>
    3918:	46001406 	mov.s	$f16,$f2
    391c:	46009302 	mul.s	$f12,$f18,$f0
    3920:	46005207 	neg.s	$f8,$f10
    3924:	46004402 	mul.s	$f16,$f8,$f0
    3928:	10000003 	b	3938 <func_800BFCB8+0xd0>
    392c:	00000000 	nop
    3930:	46001406 	mov.s	$f16,$f2
    3934:	46001306 	mov.s	$f12,$f2
    3938:	460c2182 	mul.s	$f6,$f4,$f12
    393c:	e4e00000 	swc1	$f0,0(a3)
    3940:	e4ee0010 	swc1	$f14,16(a3)
    3944:	46107282 	mul.s	$f10,$f14,$f16
    3948:	3c013f80 	lui	at,0x3f80
    394c:	e4e60004 	swc1	$f6,4(a3)
    3950:	e4ea0008 	swc1	$f10,8(a3)
    3954:	c7a80038 	lwc1	$f8,56(sp)
    3958:	e4e80014 	swc1	$f8,20(a3)
    395c:	c7a40034 	lwc1	$f4,52(sp)
    3960:	e4f00024 	swc1	$f16,36(a3)
    3964:	e4ec0028 	swc1	$f12,40(a3)
    3968:	e4e2000c 	swc1	$f2,12(a3)
    396c:	e4e2001c 	swc1	$f2,28(a3)
    3970:	e4e20020 	swc1	$f2,32(a3)
    3974:	e4e2002c 	swc1	$f2,44(a3)
    3978:	e4e40018 	swc1	$f4,24(a3)
    397c:	c4c60000 	lwc1	$f6,0(a2)
    3980:	44812000 	mtc1	at,$f4
    3984:	e4e60030 	swc1	$f6,48(a3)
    3988:	c7aa0040 	lwc1	$f10,64(sp)
    398c:	e4ea0034 	swc1	$f10,52(a3)
    3990:	c4c80008 	lwc1	$f8,8(a2)
    3994:	e4e4003c 	swc1	$f4,60(a3)
    3998:	10000017 	b	39f8 <func_800BFCB8+0x190>
    399c:	e4e80038 	swc1	$f8,56(a3)
    39a0:	44801000 	mtc1	zero,$f2
    39a4:	3c013f80 	lui	at,0x3f80
    39a8:	44810000 	mtc1	at,$f0
    39ac:	e4e20010 	swc1	$f2,16(a3)
    39b0:	e4e20008 	swc1	$f2,8(a3)
    39b4:	e4e20004 	swc1	$f2,4(a3)
    39b8:	e4e20000 	swc1	$f2,0(a3)
    39bc:	e4e2002c 	swc1	$f2,44(a3)
    39c0:	e4e20020 	swc1	$f2,32(a3)
    39c4:	e4e2001c 	swc1	$f2,28(a3)
    39c8:	e4e2000c 	swc1	$f2,12(a3)
    39cc:	e4e20028 	swc1	$f2,40(a3)
    39d0:	e4e20024 	swc1	$f2,36(a3)
    39d4:	e4e20018 	swc1	$f2,24(a3)
    39d8:	e4e00014 	swc1	$f0,20(a3)
    39dc:	c4c60000 	lwc1	$f6,0(a2)
    39e0:	e4e60030 	swc1	$f6,48(a3)
    39e4:	c4ca0004 	lwc1	$f10,4(a2)
    39e8:	e4ea0034 	swc1	$f10,52(a3)
    39ec:	c4c80008 	lwc1	$f8,8(a2)
    39f0:	e4e0003c 	swc1	$f0,60(a3)
    39f4:	e4e80038 	swc1	$f8,56(a3)
    39f8:	8fbf0014 	lw	ra,20(sp)
    39fc:	c7a00040 	lwc1	$f0,64(sp)
    3a00:	27bd0060 	addiu	sp,sp,96
    3a04:	03e00008 	jr	ra
    3a08:	00000000 	nop

00003a0c <Gameplay_LoadFile>:
    3a0c:	27bdffd8 	addiu	sp,sp,-40
    3a10:	afbf001c 	sw	ra,28(sp)
    3a14:	afa5002c 	sw	a1,44(sp)
    3a18:	8cb80000 	lw	t8,0(a1)
    3a1c:	8caf0004 	lw	t7,4(a1)
    3a20:	3c060000 	lui	a2,0x0
    3a24:	24c605f0 	addiu	a2,a2,1520
    3a28:	01f82823 	subu	a1,t7,t8
    3a2c:	afa50024 	sw	a1,36(sp)
    3a30:	0c000000 	jal	0 <func_800BC450>
    3a34:	24071254 	li	a3,4692
    3a38:	8fb9002c 	lw	t9,44(sp)
    3a3c:	afa20020 	sw	v0,32(sp)
    3a40:	3c070000 	lui	a3,0x0
    3a44:	24081256 	li	t0,4694
    3a48:	8f250000 	lw	a1,0(t9)
    3a4c:	afa80010 	sw	t0,16(sp)
    3a50:	24e705fc 	addiu	a3,a3,1532
    3a54:	00402025 	move	a0,v0
    3a58:	0c000000 	jal	0 <func_800BC450>
    3a5c:	8fa60024 	lw	a2,36(sp)
    3a60:	8fbf001c 	lw	ra,28(sp)
    3a64:	8fa20020 	lw	v0,32(sp)
    3a68:	27bd0028 	addiu	sp,sp,40
    3a6c:	03e00008 	jr	ra
    3a70:	00000000 	nop

00003a74 <Gameplay_InitSkybox>:
    3a74:	27bdffe8 	addiu	sp,sp,-24
    3a78:	afbf0014 	sw	ra,20(sp)
    3a7c:	afa5001c 	sw	a1,28(sp)
    3a80:	00053400 	sll	a2,a1,0x10
    3a84:	00063403 	sra	a2,a2,0x10
    3a88:	24851f78 	addiu	a1,a0,8056
    3a8c:	0c000000 	jal	0 <func_800BC450>
    3a90:	afa40018 	sw	a0,24(sp)
    3a94:	8fa40018 	lw	a0,24(sp)
    3a98:	3c010001 	lui	at,0x1
    3a9c:	34210a24 	ori	at,at,0xa24
    3aa0:	00003025 	move	a2,zero
    3aa4:	0c000000 	jal	0 <func_800BC450>
    3aa8:	00812821 	addu	a1,a0,at
    3aac:	8fbf0014 	lw	ra,20(sp)
    3ab0:	27bd0018 	addiu	sp,sp,24
    3ab4:	03e00008 	jr	ra
    3ab8:	00000000 	nop

00003abc <Gameplay_InitScene>:
    3abc:	27bdffe0 	addiu	sp,sp,-32
    3ac0:	3c010001 	lui	at,0x1
    3ac4:	afbf001c 	sw	ra,28(sp)
    3ac8:	afb00018 	sw	s0,24(sp)
    3acc:	00240821 	addu	at,at,a0
    3ad0:	a0251dea 	sb	a1,7658(at)
    3ad4:	3c010001 	lui	at,0x1
    3ad8:	00240821 	addu	at,at,a0
    3adc:	ac201df4 	sw	zero,7668(at)
    3ae0:	3c010001 	lui	at,0x1
    3ae4:	00240821 	addu	at,at,a0
    3ae8:	ac201dfc 	sw	zero,7676(at)
    3aec:	3c010001 	lui	at,0x1
    3af0:	00240821 	addu	at,at,a0
    3af4:	ac201e00 	sw	zero,7680(at)
    3af8:	3c010001 	lui	at,0x1
    3afc:	00240821 	addu	at,at,a0
    3b00:	ac201e04 	sw	zero,7684(at)
    3b04:	3c010001 	lui	at,0x1
    3b08:	00240821 	addu	at,at,a0
    3b0c:	ac201e0c 	sw	zero,7692(at)
    3b10:	3c010001 	lui	at,0x1
    3b14:	00240821 	addu	at,at,a0
    3b18:	ac201e08 	sw	zero,7688(at)
    3b1c:	3c010001 	lui	at,0x1
    3b20:	00240821 	addu	at,at,a0
    3b24:	a0201deb 	sb	zero,7659(at)
    3b28:	3c010001 	lui	at,0x1
    3b2c:	00808025 	move	s0,a0
    3b30:	342117a4 	ori	at,at,0x17a4
    3b34:	0c000000 	jal	0 <func_800BC450>
    3b38:	02012821 	addu	a1,s0,at
    3b3c:	02002025 	move	a0,s0
    3b40:	0c000000 	jal	0 <func_800BC450>
    3b44:	260507a8 	addiu	a1,s0,1960
    3b48:	3c010001 	lui	at,0x1
    3b4c:	34211d34 	ori	at,at,0x1d34
    3b50:	02012821 	addu	a1,s0,at
    3b54:	0c000000 	jal	0 <func_800BC450>
    3b58:	02002025 	move	a0,s0
    3b5c:	3c010001 	lui	at,0x1
    3b60:	34211cbc 	ori	at,at,0x1cbc
    3b64:	02012821 	addu	a1,s0,at
    3b68:	0c000000 	jal	0 <func_800BC450>
    3b6c:	02002025 	move	a0,s0
    3b70:	3c0e0000 	lui	t6,0x0
    3b74:	8dce0000 	lw	t6,0(t6)
    3b78:	3c010000 	lui	at,0x0
    3b7c:	02002025 	move	a0,s0
    3b80:	a5c004b2 	sh	zero,1202(t6)
    3b84:	a4201420 	sh	zero,5152(at)
    3b88:	0c000000 	jal	0 <func_800BC450>
    3b8c:	8e0500b0 	lw	a1,176(s0)
    3b90:	3c050001 	lui	a1,0x1
    3b94:	00b02821 	addu	a1,a1,s0
    3b98:	90a51e14 	lbu	a1,7700(a1)
    3b9c:	0c000000 	jal	0 <func_800BC450>
    3ba0:	02002025 	move	a0,s0
    3ba4:	8fbf001c 	lw	ra,28(sp)
    3ba8:	8fb00018 	lw	s0,24(sp)
    3bac:	27bd0020 	addiu	sp,sp,32
    3bb0:	03e00008 	jr	ra
    3bb4:	00000000 	nop

00003bb8 <Gameplay_SpawnScene>:
    3bb8:	27bdffe0 	addiu	sp,sp,-32
    3bbc:	00057080 	sll	t6,a1,0x2
    3bc0:	01c57021 	addu	t6,t6,a1
    3bc4:	3c0f0000 	lui	t7,0x0
    3bc8:	afb00014 	sw	s0,20(sp)
    3bcc:	25ef0000 	addiu	t7,t7,0
    3bd0:	000e7080 	sll	t6,t6,0x2
    3bd4:	01cf8021 	addu	s0,t6,t7
    3bd8:	3c010001 	lui	at,0x1
    3bdc:	afbf001c 	sw	ra,28(sp)
    3be0:	afb10018 	sw	s1,24(sp)
    3be4:	afa60028 	sw	a2,40(sp)
    3be8:	a2000013 	sb	zero,19(s0)
    3bec:	00240821 	addu	at,at,a0
    3bf0:	ac30242c 	sw	s0,9260(at)
    3bf4:	a48500a4 	sh	a1,164(a0)
    3bf8:	92180011 	lbu	t8,17(s0)
    3bfc:	00808825 	move	s1,a0
    3c00:	3c014f80 	lui	at,0x4f80
    3c04:	a09800a6 	sb	t8,166(a0)
    3c08:	8e080000 	lw	t0,0(s0)
    3c0c:	8e190004 	lw	t9,4(s0)
    3c10:	3c040000 	lui	a0,0x0
    3c14:	24840608 	addiu	a0,a0,1544
    3c18:	03284823 	subu	t1,t9,t0
    3c1c:	44892000 	mtc1	t1,$f4
    3c20:	05210004 	bgez	t1,3c34 <Gameplay_SpawnScene+0x7c>
    3c24:	468021a0 	cvt.s.w	$f6,$f4
    3c28:	44814000 	mtc1	at,$f8
    3c2c:	00000000 	nop
    3c30:	46083180 	add.s	$f6,$f6,$f8
    3c34:	3c013a80 	lui	at,0x3a80
    3c38:	44815000 	mtc1	at,$f10
    3c3c:	00000000 	nop
    3c40:	460a3402 	mul.s	$f16,$f6,$f10
    3c44:	460084a1 	cvt.d.s	$f18,$f16
    3c48:	44079000 	mfc1	a3,$f18
    3c4c:	44069800 	mfc1	a2,$f19
    3c50:	0c000000 	jal	0 <func_800BC450>
    3c54:	00000000 	nop
    3c58:	02202025 	move	a0,s1
    3c5c:	0c000000 	jal	0 <func_800BC450>
    3c60:	02002825 	move	a1,s0
    3c64:	ae2200b0 	sw	v0,176(s1)
    3c68:	a2000013 	sb	zero,19(s0)
    3c6c:	8e2300b0 	lw	v1,176(s1)
    3c70:	3c040000 	lui	a0,0x0
    3c74:	2484061c 	addiu	a0,a0,1564
    3c78:	14600005 	bnez	v1,3c90 <Gameplay_SpawnScene+0xd8>
    3c7c:	3c050000 	lui	a1,0x0
    3c80:	24a50638 	addiu	a1,a1,1592
    3c84:	0c000000 	jal	0 <func_800BC450>
    3c88:	24061360 	li	a2,4960
    3c8c:	8e2300b0 	lw	v1,176(s1)
    3c90:	3c018000 	lui	at,0x8000
    3c94:	00615021 	addu	t2,v1,at
    3c98:	3c010000 	lui	at,0x0
    3c9c:	ac2a0008 	sw	t2,8(at)
    3ca0:	02202025 	move	a0,s1
    3ca4:	0c000000 	jal	0 <func_800BC450>
    3ca8:	8fa50028 	lw	a1,40(sp)
    3cac:	3c010001 	lui	at,0x1
    3cb0:	34211cbc 	ori	at,at,0x1cbc
    3cb4:	02212821 	addu	a1,s1,at
    3cb8:	0c000000 	jal	0 <func_800BC450>
    3cbc:	02202025 	move	a0,s1
    3cc0:	44822000 	mtc1	v0,$f4
    3cc4:	3c040000 	lui	a0,0x0
    3cc8:	24840644 	addiu	a0,a0,1604
    3ccc:	04410005 	bgez	v0,3ce4 <Gameplay_SpawnScene+0x12c>
    3cd0:	46802220 	cvt.s.w	$f8,$f4
    3cd4:	3c014f80 	lui	at,0x4f80
    3cd8:	44813000 	mtc1	at,$f6
    3cdc:	00000000 	nop
    3ce0:	46064200 	add.s	$f8,$f8,$f6
    3ce4:	3c013a80 	lui	at,0x3a80
    3ce8:	44815000 	mtc1	at,$f10
    3cec:	00000000 	nop
    3cf0:	460a4402 	mul.s	$f16,$f8,$f10
    3cf4:	460084a1 	cvt.d.s	$f18,$f16
    3cf8:	44079000 	mfc1	a3,$f18
    3cfc:	44069800 	mfc1	a2,$f19
    3d00:	0c000000 	jal	0 <func_800BC450>
    3d04:	00000000 	nop
    3d08:	8fbf001c 	lw	ra,28(sp)
    3d0c:	8fb00014 	lw	s0,20(sp)
    3d10:	8fb10018 	lw	s1,24(sp)
    3d14:	03e00008 	jr	ra
    3d18:	27bd0020 	addiu	sp,sp,32

00003d1c <func_800C016C>:
    3d1c:	27bdffe8 	addiu	sp,sp,-24
    3d20:	3c010001 	lui	at,0x1
    3d24:	afbf0014 	sw	ra,20(sp)
    3d28:	afa40018 	sw	a0,24(sp)
    3d2c:	afa5001c 	sw	a1,28(sp)
    3d30:	34211d60 	ori	at,at,0x1d60
    3d34:	00812021 	addu	a0,a0,at
    3d38:	00002825 	move	a1,zero
    3d3c:	0c000000 	jal	0 <func_800BC450>
    3d40:	afa60020 	sw	a2,32(sp)
    3d44:	8fa4001c 	lw	a0,28(sp)
    3d48:	0c000000 	jal	0 <func_800BC450>
    3d4c:	8fa50020 	lw	a1,32(sp)
    3d50:	3c014320 	lui	at,0x4320
    3d54:	44811000 	mtc1	at,$f2
    3d58:	8fa20018 	lw	v0,24(sp)
    3d5c:	3c0142f0 	lui	at,0x42f0
    3d60:	44816000 	mtc1	at,$f12
    3d64:	8fa4001c 	lw	a0,28(sp)
    3d68:	3c010001 	lui	at,0x1
    3d6c:	00411021 	addu	v0,v0,at
    3d70:	c4441d6c 	lwc1	$f4,7532(v0)
    3d74:	c4860000 	lwc1	$f6,0(a0)
    3d78:	c44a1d7c 	lwc1	$f10,7548(v0)
    3d7c:	c4900004 	lwc1	$f16,4(a0)
    3d80:	46062202 	mul.s	$f8,$f4,$f6
    3d84:	c4461d8c 	lwc1	$f6,7564(v0)
    3d88:	8fa60020 	lw	a2,32(sp)
    3d8c:	46105482 	mul.s	$f18,$f10,$f16
    3d90:	c48a0008 	lwc1	$f10,8(a0)
    3d94:	460a3402 	mul.s	$f16,$f6,$f10
    3d98:	c4c60000 	lwc1	$f6,0(a2)
    3d9c:	46124100 	add.s	$f4,$f8,$f18
    3da0:	c4521d9c 	lwc1	$f18,7580(v0)
    3da4:	46102200 	add.s	$f8,$f4,$f16
    3da8:	46089000 	add.s	$f0,$f18,$f8
    3dac:	c4d20004 	lwc1	$f18,4(a2)
    3db0:	46003283 	div.s	$f10,$f6,$f0
    3db4:	46009203 	div.s	$f8,$f18,$f0
    3db8:	46025102 	mul.s	$f4,$f10,$f2
    3dbc:	46022400 	add.s	$f16,$f4,$f2
    3dc0:	460c4182 	mul.s	$f6,$f8,$f12
    3dc4:	e4d00000 	swc1	$f16,0(a2)
    3dc8:	46066281 	sub.s	$f10,$f12,$f6
    3dcc:	e4ca0004 	swc1	$f10,4(a2)
    3dd0:	8fbf0014 	lw	ra,20(sp)
    3dd4:	27bd0018 	addiu	sp,sp,24
    3dd8:	03e00008 	jr	ra
    3ddc:	00000000 	nop

00003de0 <Gameplay_CreateSubCamera>:
    3de0:	27bdffd8 	addiu	sp,sp,-40
    3de4:	afb00018 	sw	s0,24(sp)
    3de8:	afbf001c 	sw	ra,28(sp)
    3dec:	00803825 	move	a3,a0
    3df0:	24100001 	li	s0,1
    3df4:	00107080 	sll	t6,s0,0x2
    3df8:	00ee7821 	addu	t7,a3,t6
    3dfc:	8df80790 	lw	t8,1936(t7)
    3e00:	53000008 	beqzl	t8,3e24 <Gameplay_CreateSubCamera+0x44>
    3e04:	24010004 	li	at,4
    3e08:	26100001 	addiu	s0,s0,1
    3e0c:	00108400 	sll	s0,s0,0x10
    3e10:	00108403 	sra	s0,s0,0x10
    3e14:	2a010004 	slti	at,s0,4
    3e18:	5420fff7 	bnezl	at,3df8 <Gameplay_CreateSubCamera+0x18>
    3e1c:	00107080 	sll	t6,s0,0x2
    3e20:	24010004 	li	at,4
    3e24:	16010006 	bne	s0,at,3e40 <Gameplay_CreateSubCamera+0x60>
    3e28:	3c040000 	lui	a0,0x0
    3e2c:	3c040000 	lui	a0,0x0
    3e30:	0c000000 	jal	0 <func_800BC450>
    3e34:	24840654 	addiu	a0,a0,1620
    3e38:	1000001b 	b	3ea8 <Gameplay_CreateSubCamera+0xc8>
    3e3c:	2402ffff 	li	v0,-1
    3e40:	0010c880 	sll	t9,s0,0x2
    3e44:	00f94021 	addu	t0,a3,t9
    3e48:	afa80020 	sw	t0,32(sp)
    3e4c:	24840698 	addiu	a0,a0,1688
    3e50:	02002825 	move	a1,s0
    3e54:	0c000000 	jal	0 <func_800BC450>
    3e58:	afa70028 	sw	a3,40(sp)
    3e5c:	00104880 	sll	t1,s0,0x2
    3e60:	01304823 	subu	t1,t1,s0
    3e64:	000948c0 	sll	t1,t1,0x3
    3e68:	01304823 	subu	t1,t1,s0
    3e6c:	8fa70028 	lw	a3,40(sp)
    3e70:	00094880 	sll	t1,t1,0x2
    3e74:	01304823 	subu	t1,t1,s0
    3e78:	00094880 	sll	t1,t1,0x2
    3e7c:	8faa0020 	lw	t2,32(sp)
    3e80:	00e92021 	addu	a0,a3,t1
    3e84:	248401e0 	addiu	a0,a0,480
    3e88:	24e500b8 	addiu	a1,a3,184
    3e8c:	24e607c0 	addiu	a2,a3,1984
    3e90:	0c000000 	jal	0 <func_800BC450>
    3e94:	ad440790 	sw	a0,1936(t2)
    3e98:	8fab0020 	lw	t3,32(sp)
    3e9c:	02001025 	move	v0,s0
    3ea0:	8d6c0790 	lw	t4,1936(t3)
    3ea4:	a5900164 	sh	s0,356(t4)
    3ea8:	8fbf001c 	lw	ra,28(sp)
    3eac:	8fb00018 	lw	s0,24(sp)
    3eb0:	27bd0028 	addiu	sp,sp,40
    3eb4:	03e00008 	jr	ra
    3eb8:	00000000 	nop

00003ebc <Gameplay_GetActiveCamId>:
    3ebc:	03e00008 	jr	ra
    3ec0:	848207a0 	lh	v0,1952(a0)

00003ec4 <Gameplay_ChangeCameraStatus>:
    3ec4:	27bdffe8 	addiu	sp,sp,-24
    3ec8:	afa5001c 	sw	a1,28(sp)
    3ecc:	00052c00 	sll	a1,a1,0x10
    3ed0:	afa60020 	sw	a2,32(sp)
    3ed4:	00063400 	sll	a2,a2,0x10
    3ed8:	00052c03 	sra	a1,a1,0x10
    3edc:	2401ffff 	li	at,-1
    3ee0:	00063403 	sra	a2,a2,0x10
    3ee4:	afbf0014 	sw	ra,20(sp)
    3ee8:	14a10003 	bne	a1,at,3ef8 <Gameplay_ChangeCameraStatus+0x34>
    3eec:	00803825 	move	a3,a0
    3ef0:	10000003 	b	3f00 <Gameplay_ChangeCameraStatus+0x3c>
    3ef4:	848207a0 	lh	v0,1952(a0)
    3ef8:	00051400 	sll	v0,a1,0x10
    3efc:	00021403 	sra	v0,v0,0x10
    3f00:	24010007 	li	at,7
    3f04:	14c10002 	bne	a2,at,3f10 <Gameplay_ChangeCameraStatus+0x4c>
    3f08:	00027080 	sll	t6,v0,0x2
    3f0c:	a4e207a0 	sh	v0,1952(a3)
    3f10:	00ee7821 	addu	t7,a3,t6
    3f14:	00062c00 	sll	a1,a2,0x10
    3f18:	00052c03 	sra	a1,a1,0x10
    3f1c:	0c000000 	jal	0 <func_800BC450>
    3f20:	8de40790 	lw	a0,1936(t7)
    3f24:	8fbf0014 	lw	ra,20(sp)
    3f28:	27bd0018 	addiu	sp,sp,24
    3f2c:	03e00008 	jr	ra
    3f30:	00000000 	nop

00003f34 <Gameplay_ClearCamera>:
    3f34:	27bdffe0 	addiu	sp,sp,-32
    3f38:	afa50024 	sw	a1,36(sp)
    3f3c:	00052c00 	sll	a1,a1,0x10
    3f40:	00052c03 	sra	a1,a1,0x10
    3f44:	2401ffff 	li	at,-1
    3f48:	afbf0014 	sw	ra,20(sp)
    3f4c:	14a10003 	bne	a1,at,3f5c <Gameplay_ClearCamera+0x28>
    3f50:	00803825 	move	a3,a0
    3f54:	10000003 	b	3f64 <Gameplay_ClearCamera+0x30>
    3f58:	848607a0 	lh	a2,1952(a0)
    3f5c:	00053400 	sll	a2,a1,0x10
    3f60:	00063403 	sra	a2,a2,0x10
    3f64:	14c00007 	bnez	a2,3f84 <Gameplay_ClearCamera+0x50>
    3f68:	3c040000 	lui	a0,0x0
    3f6c:	248406e0 	addiu	a0,a0,1760
    3f70:	a7a6001e 	sh	a2,30(sp)
    3f74:	0c000000 	jal	0 <func_800BC450>
    3f78:	afa70020 	sw	a3,32(sp)
    3f7c:	87a6001e 	lh	a2,30(sp)
    3f80:	8fa70020 	lw	a3,32(sp)
    3f84:	00067080 	sll	t6,a2,0x2
    3f88:	00ee1021 	addu	v0,a3,t6
    3f8c:	8c440790 	lw	a0,1936(v0)
    3f90:	00c02825 	move	a1,a2
    3f94:	1080000d 	beqz	a0,3fcc <Gameplay_ClearCamera+0x98>
    3f98:	00000000 	nop
    3f9c:	24050100 	li	a1,256
    3fa0:	afa20018 	sw	v0,24(sp)
    3fa4:	0c000000 	jal	0 <func_800BC450>
    3fa8:	a7a6001e 	sh	a2,30(sp)
    3fac:	8fa20018 	lw	v0,24(sp)
    3fb0:	87a5001e 	lh	a1,30(sp)
    3fb4:	3c040000 	lui	a0,0x0
    3fb8:	2484071c 	addiu	a0,a0,1820
    3fbc:	0c000000 	jal	0 <func_800BC450>
    3fc0:	ac400790 	sw	zero,1936(v0)
    3fc4:	10000005 	b	3fdc <Gameplay_ClearCamera+0xa8>
    3fc8:	8fbf0014 	lw	ra,20(sp)
    3fcc:	3c040000 	lui	a0,0x0
    3fd0:	0c000000 	jal	0 <func_800BC450>
    3fd4:	2484075c 	addiu	a0,a0,1884
    3fd8:	8fbf0014 	lw	ra,20(sp)
    3fdc:	27bd0020 	addiu	sp,sp,32
    3fe0:	03e00008 	jr	ra
    3fe4:	00000000 	nop

00003fe8 <Gameplay_ClearAllSubCameras>:
    3fe8:	27bdffe0 	addiu	sp,sp,-32
    3fec:	afb10018 	sw	s1,24(sp)
    3ff0:	afb00014 	sw	s0,20(sp)
    3ff4:	00808825 	move	s1,a0
    3ff8:	afbf001c 	sw	ra,28(sp)
    3ffc:	24100001 	li	s0,1
    4000:	00107080 	sll	t6,s0,0x2
    4004:	022e7821 	addu	t7,s1,t6
    4008:	8df80790 	lw	t8,1936(t7)
    400c:	02202025 	move	a0,s1
    4010:	00102c00 	sll	a1,s0,0x10
    4014:	53000004 	beqzl	t8,4028 <Gameplay_ClearAllSubCameras+0x40>
    4018:	26100001 	addiu	s0,s0,1
    401c:	0c000000 	jal	0 <func_800BC450>
    4020:	00052c03 	sra	a1,a1,0x10
    4024:	26100001 	addiu	s0,s0,1
    4028:	00108400 	sll	s0,s0,0x10
    402c:	00108403 	sra	s0,s0,0x10
    4030:	2a010004 	slti	at,s0,4
    4034:	5420fff3 	bnezl	at,4004 <Gameplay_ClearAllSubCameras+0x1c>
    4038:	00107080 	sll	t6,s0,0x2
    403c:	a62007a0 	sh	zero,1952(s1)
    4040:	8fbf001c 	lw	ra,28(sp)
    4044:	8fb10018 	lw	s1,24(sp)
    4048:	8fb00014 	lw	s0,20(sp)
    404c:	03e00008 	jr	ra
    4050:	27bd0020 	addiu	sp,sp,32

00004054 <Gameplay_GetCamera>:
    4054:	afa50004 	sw	a1,4(sp)
    4058:	00052c00 	sll	a1,a1,0x10
    405c:	00052c03 	sra	a1,a1,0x10
    4060:	2401ffff 	li	at,-1
    4064:	14a10003 	bne	a1,at,4074 <Gameplay_GetCamera+0x20>
    4068:	00051c00 	sll	v1,a1,0x10
    406c:	10000002 	b	4078 <Gameplay_GetCamera+0x24>
    4070:	848307a0 	lh	v1,1952(a0)
    4074:	00031c03 	sra	v1,v1,0x10
    4078:	00037080 	sll	t6,v1,0x2
    407c:	008e7821 	addu	t7,a0,t6
    4080:	03e00008 	jr	ra
    4084:	8de20790 	lw	v0,1936(t7)

00004088 <func_800C04D8>:
    4088:	27bdffd8 	addiu	sp,sp,-40
    408c:	afa5002c 	sw	a1,44(sp)
    4090:	00052c00 	sll	a1,a1,0x10
    4094:	00052c03 	sra	a1,a1,0x10
    4098:	afb10018 	sw	s1,24(sp)
    409c:	2401ffff 	li	at,-1
    40a0:	00c08825 	move	s1,a2
    40a4:	afbf001c 	sw	ra,28(sp)
    40a8:	afb00014 	sw	s0,20(sp)
    40ac:	afa40028 	sw	a0,40(sp)
    40b0:	14a10003 	bne	a1,at,40c0 <func_800C04D8+0x38>
    40b4:	afa70034 	sw	a3,52(sp)
    40b8:	10000003 	b	40c8 <func_800C04D8+0x40>
    40bc:	848207a0 	lh	v0,1952(a0)
    40c0:	00051400 	sll	v0,a1,0x10
    40c4:	00021403 	sra	v0,v0,0x10
    40c8:	8faf0028 	lw	t7,40(sp)
    40cc:	0002c080 	sll	t8,v0,0x2
    40d0:	24050001 	li	a1,1
    40d4:	01f8c821 	addu	t9,t7,t8
    40d8:	8f300790 	lw	s0,1936(t9)
    40dc:	02203025 	move	a2,s1
    40e0:	0c000000 	jal	0 <func_800BC450>
    40e4:	02002025 	move	a0,s0
    40e8:	00021840 	sll	v1,v0,0x1
    40ec:	afa30024 	sw	v1,36(sp)
    40f0:	02002025 	move	a0,s0
    40f4:	24050002 	li	a1,2
    40f8:	0c000000 	jal	0 <func_800BC450>
    40fc:	8fa60034 	lw	a2,52(sp)
    4100:	8fa30024 	lw	v1,36(sp)
    4104:	02202025 	move	a0,s1
    4108:	8fa50034 	lw	a1,52(sp)
    410c:	00621825 	or	v1,v1,v0
    4110:	0c000000 	jal	0 <func_800BC450>
    4114:	afa30024 	sw	v1,36(sp)
    4118:	8e020090 	lw	v0,144(s0)
    411c:	8fa30024 	lw	v1,36(sp)
    4120:	e60000dc 	swc1	$f0,220(s0)
    4124:	1040000e 	beqz	v0,4160 <func_800C04D8+0xd8>
    4128:	3c010000 	lui	at,0x0
    412c:	c6240000 	lwc1	$f4,0(s1)
    4130:	c4460024 	lwc1	$f6,36(v0)
    4134:	46062201 	sub.s	$f8,$f4,$f6
    4138:	e60800e4 	swc1	$f8,228(s0)
    413c:	c4500028 	lwc1	$f16,40(v0)
    4140:	c62a0004 	lwc1	$f10,4(s1)
    4144:	46105481 	sub.s	$f18,$f10,$f16
    4148:	e61200e8 	swc1	$f18,232(s0)
    414c:	c446002c 	lwc1	$f6,44(v0)
    4150:	c6240008 	lwc1	$f4,8(s1)
    4154:	46062201 	sub.s	$f8,$f4,$f6
    4158:	10000006 	b	4174 <func_800C04D8+0xec>
    415c:	e60800ec 	swc1	$f8,236(s0)
    4160:	44800000 	mtc1	zero,$f0
    4164:	00000000 	nop
    4168:	e60000ec 	swc1	$f0,236(s0)
    416c:	e60000e8 	swc1	$f0,232(s0)
    4170:	e60000e4 	swc1	$f0,228(s0)
    4174:	c42a087c 	lwc1	$f10,2172(at)
    4178:	00601025 	move	v0,v1
    417c:	e60a0100 	swc1	$f10,256(s0)
    4180:	8fbf001c 	lw	ra,28(sp)
    4184:	8fb10018 	lw	s1,24(sp)
    4188:	8fb00014 	lw	s0,20(sp)
    418c:	03e00008 	jr	ra
    4190:	27bd0028 	addiu	sp,sp,40

00004194 <func_800C05E4>:
    4194:	27bdffd8 	addiu	sp,sp,-40
    4198:	afa5002c 	sw	a1,44(sp)
    419c:	00052c00 	sll	a1,a1,0x10
    41a0:	00052c03 	sra	a1,a1,0x10
    41a4:	afb20020 	sw	s2,32(sp)
    41a8:	2401ffff 	li	at,-1
    41ac:	00c09025 	move	s2,a2
    41b0:	afbf0024 	sw	ra,36(sp)
    41b4:	afb1001c 	sw	s1,28(sp)
    41b8:	afb00018 	sw	s0,24(sp)
    41bc:	afa40028 	sw	a0,40(sp)
    41c0:	14a10003 	bne	a1,at,41d0 <func_800C05E4+0x3c>
    41c4:	afa70034 	sw	a3,52(sp)
    41c8:	10000003 	b	41d8 <func_800C05E4+0x44>
    41cc:	848207a0 	lh	v0,1952(a0)
    41d0:	00051400 	sll	v0,a1,0x10
    41d4:	00021403 	sra	v0,v0,0x10
    41d8:	8faf0028 	lw	t7,40(sp)
    41dc:	0002c080 	sll	t8,v0,0x2
    41e0:	24050001 	li	a1,1
    41e4:	01f8c821 	addu	t9,t7,t8
    41e8:	8f300790 	lw	s0,1936(t9)
    41ec:	02403025 	move	a2,s2
    41f0:	0c000000 	jal	0 <func_800BC450>
    41f4:	02002025 	move	a0,s0
    41f8:	00028840 	sll	s1,v0,0x1
    41fc:	02002025 	move	a0,s0
    4200:	24050002 	li	a1,2
    4204:	0c000000 	jal	0 <func_800BC450>
    4208:	8fa60034 	lw	a2,52(sp)
    420c:	02228825 	or	s1,s1,v0
    4210:	00118840 	sll	s1,s1,0x1
    4214:	02002025 	move	a0,s0
    4218:	24050004 	li	a1,4
    421c:	0c000000 	jal	0 <func_800BC450>
    4220:	8fa60038 	lw	a2,56(sp)
    4224:	02228825 	or	s1,s1,v0
    4228:	02402025 	move	a0,s2
    422c:	0c000000 	jal	0 <func_800BC450>
    4230:	8fa50034 	lw	a1,52(sp)
    4234:	8e020090 	lw	v0,144(s0)
    4238:	e60000dc 	swc1	$f0,220(s0)
    423c:	3c010000 	lui	at,0x0
    4240:	5040000f 	beqzl	v0,4280 <func_800C05E4+0xec>
    4244:	44800000 	mtc1	zero,$f0
    4248:	c6440000 	lwc1	$f4,0(s2)
    424c:	c4460024 	lwc1	$f6,36(v0)
    4250:	46062201 	sub.s	$f8,$f4,$f6
    4254:	e60800e4 	swc1	$f8,228(s0)
    4258:	c4500028 	lwc1	$f16,40(v0)
    425c:	c64a0004 	lwc1	$f10,4(s2)
    4260:	46105481 	sub.s	$f18,$f10,$f16
    4264:	e61200e8 	swc1	$f18,232(s0)
    4268:	c446002c 	lwc1	$f6,44(v0)
    426c:	c6440008 	lwc1	$f4,8(s2)
    4270:	46062201 	sub.s	$f8,$f4,$f6
    4274:	10000006 	b	4290 <func_800C05E4+0xfc>
    4278:	e60800ec 	swc1	$f8,236(s0)
    427c:	44800000 	mtc1	zero,$f0
    4280:	00000000 	nop
    4284:	e60000ec 	swc1	$f0,236(s0)
    4288:	e60000e8 	swc1	$f0,232(s0)
    428c:	e60000e4 	swc1	$f0,228(s0)
    4290:	c42a0880 	lwc1	$f10,2176(at)
    4294:	02201025 	move	v0,s1
    4298:	e60a0100 	swc1	$f10,256(s0)
    429c:	8fbf0024 	lw	ra,36(sp)
    42a0:	8fb20020 	lw	s2,32(sp)
    42a4:	8fb1001c 	lw	s1,28(sp)
    42a8:	8fb00018 	lw	s0,24(sp)
    42ac:	03e00008 	jr	ra
    42b0:	27bd0028 	addiu	sp,sp,40

000042b4 <func_800C0704>:
    42b4:	27bdffe8 	addiu	sp,sp,-24
    42b8:	afa5001c 	sw	a1,28(sp)
    42bc:	87ae001e 	lh	t6,30(sp)
    42c0:	afbf0014 	sw	ra,20(sp)
    42c4:	afa60020 	sw	a2,32(sp)
    42c8:	000e7880 	sll	t7,t6,0x2
    42cc:	008fc021 	addu	t8,a0,t7
    42d0:	8f040790 	lw	a0,1936(t8)
    42d4:	27a60020 	addiu	a2,sp,32
    42d8:	0c000000 	jal	0 <func_800BC450>
    42dc:	24050020 	li	a1,32
    42e0:	8fbf0014 	lw	ra,20(sp)
    42e4:	30430001 	andi	v1,v0,0x1
    42e8:	00601025 	move	v0,v1
    42ec:	03e00008 	jr	ra
    42f0:	27bd0018 	addiu	sp,sp,24

000042f4 <func_800C0744>:
    42f4:	afa50004 	sw	a1,4(sp)
    42f8:	00052c00 	sll	a1,a1,0x10
    42fc:	afa60008 	sw	a2,8(sp)
    4300:	00063400 	sll	a2,a2,0x10
    4304:	00052c03 	sra	a1,a1,0x10
    4308:	2401ffff 	li	at,-1
    430c:	14a10003 	bne	a1,at,431c <func_800C0744+0x28>
    4310:	00063403 	sra	a2,a2,0x10
    4314:	10000003 	b	4324 <func_800C0744+0x30>
    4318:	848307a0 	lh	v1,1952(a0)
    431c:	00051c00 	sll	v1,a1,0x10
    4320:	00031c03 	sra	v1,v1,0x10
    4324:	00037080 	sll	t6,v1,0x2
    4328:	008e7821 	addu	t7,a0,t6
    432c:	8de50790 	lw	a1,1936(t7)
    4330:	24020001 	li	v0,1
    4334:	03e00008 	jr	ra
    4338:	a4a6015a 	sh	a2,346(a1)

0000433c <func_800C078C>:
    433c:	27bdffe8 	addiu	sp,sp,-24
    4340:	afa60020 	sw	a2,32(sp)
    4344:	00063400 	sll	a2,a2,0x10
    4348:	afa5001c 	sw	a1,28(sp)
    434c:	00052c00 	sll	a1,a1,0x10
    4350:	00063403 	sra	a2,a2,0x10
    4354:	2402ffff 	li	v0,-1
    4358:	00052c03 	sra	a1,a1,0x10
    435c:	afbf0014 	sw	ra,20(sp)
    4360:	14c20003 	bne	a2,v0,4370 <func_800C078C+0x34>
    4364:	00803825 	move	a3,a0
    4368:	10000003 	b	4378 <func_800C078C+0x3c>
    436c:	848307a0 	lh	v1,1952(a0)
    4370:	00061c00 	sll	v1,a2,0x10
    4374:	00031c03 	sra	v1,v1,0x10
    4378:	14a20003 	bne	a1,v0,4388 <func_800C078C+0x4c>
    437c:	0003c080 	sll	t8,v1,0x2
    4380:	10000003 	b	4390 <func_800C078C+0x54>
    4384:	84e207a0 	lh	v0,1952(a3)
    4388:	00051400 	sll	v0,a1,0x10
    438c:	00021403 	sra	v0,v0,0x10
    4390:	00027080 	sll	t6,v0,0x2
    4394:	00ee7821 	addu	t7,a3,t6
    4398:	00f8c821 	addu	t9,a3,t8
    439c:	8f250790 	lw	a1,1936(t9)
    43a0:	0c000000 	jal	0 <func_800BC450>
    43a4:	8de40790 	lw	a0,1936(t7)
    43a8:	8fbf0014 	lw	ra,20(sp)
    43ac:	27bd0018 	addiu	sp,sp,24
    43b0:	03e00008 	jr	ra
    43b4:	00000000 	nop

000043b8 <func_800C0808>:
    43b8:	27bdffe0 	addiu	sp,sp,-32
    43bc:	afa50024 	sw	a1,36(sp)
    43c0:	00052c00 	sll	a1,a1,0x10
    43c4:	00052c03 	sra	a1,a1,0x10
    43c8:	2401ffff 	li	at,-1
    43cc:	afbf0014 	sw	ra,20(sp)
    43d0:	afa40020 	sw	a0,32(sp)
    43d4:	14a10003 	bne	a1,at,43e4 <func_800C0808+0x2c>
    43d8:	afa7002c 	sw	a3,44(sp)
    43dc:	10000003 	b	43ec <func_800C0808+0x34>
    43e0:	848207a0 	lh	v0,1952(a0)
    43e4:	00051400 	sll	v0,a1,0x10
    43e8:	00021403 	sra	v0,v0,0x10
    43ec:	8faf0020 	lw	t7,32(sp)
    43f0:	0002c080 	sll	t8,v0,0x2
    43f4:	00c02825 	move	a1,a2
    43f8:	01f8c821 	addu	t9,t7,t8
    43fc:	8f240790 	lw	a0,1936(t9)
    4400:	0c000000 	jal	0 <func_800BC450>
    4404:	afa4001c 	sw	a0,28(sp)
    4408:	8fa4001c 	lw	a0,28(sp)
    440c:	0c000000 	jal	0 <func_800BC450>
    4410:	87a5002e 	lh	a1,46(sp)
    4414:	8fbf0014 	lw	ra,20(sp)
    4418:	27bd0020 	addiu	sp,sp,32
    441c:	03e00008 	jr	ra
    4420:	00000000 	nop

00004424 <func_800C0874>:
    4424:	27bdffe8 	addiu	sp,sp,-24
    4428:	afa5001c 	sw	a1,28(sp)
    442c:	00052c00 	sll	a1,a1,0x10
    4430:	afbf0014 	sw	ra,20(sp)
    4434:	00052c03 	sra	a1,a1,0x10
    4438:	0c000000 	jal	0 <func_800BC450>
    443c:	afa60020 	sw	a2,32(sp)
    4440:	00402025 	move	a0,v0
    4444:	0c000000 	jal	0 <func_800BC450>
    4448:	87a50022 	lh	a1,34(sp)
    444c:	8fbf0014 	lw	ra,20(sp)
    4450:	27bd0018 	addiu	sp,sp,24
    4454:	03e00008 	jr	ra
    4458:	00000000 	nop

0000445c <func_800C08AC>:
    445c:	27bdffd0 	addiu	sp,sp,-48
    4460:	00053c00 	sll	a3,a1,0x10
    4464:	00073c03 	sra	a3,a3,0x10
    4468:	afb10024 	sw	s1,36(sp)
    446c:	2401ffff 	li	at,-1
    4470:	00808825 	move	s1,a0
    4474:	afbf002c 	sw	ra,44(sp)
    4478:	afb20028 	sw	s2,40(sp)
    447c:	afb00020 	sw	s0,32(sp)
    4480:	afa50034 	sw	a1,52(sp)
    4484:	14e10003 	bne	a3,at,4494 <func_800C08AC+0x38>
    4488:	afa60038 	sw	a2,56(sp)
    448c:	10000003 	b	449c <func_800C08AC+0x40>
    4490:	848507a0 	lh	a1,1952(a0)
    4494:	00072c00 	sll	a1,a3,0x10
    4498:	00052c03 	sra	a1,a1,0x10
    449c:	0c000000 	jal	0 <func_800BC450>
    44a0:	02202025 	move	a0,s1
    44a4:	3c120000 	lui	s2,0x0
    44a8:	2652079c 	addiu	s2,s2,1948
    44ac:	24100001 	li	s0,1
    44b0:	00107080 	sll	t6,s0,0x2
    44b4:	022e7821 	addu	t7,s1,t6
    44b8:	8df80790 	lw	t8,1936(t7)
    44bc:	02402025 	move	a0,s2
    44c0:	53000008 	beqzl	t8,44e4 <func_800C08AC+0x88>
    44c4:	26100001 	addiu	s0,s0,1
    44c8:	0c000000 	jal	0 <func_800BC450>
    44cc:	02002825 	move	a1,s0
    44d0:	00102c00 	sll	a1,s0,0x10
    44d4:	00052c03 	sra	a1,a1,0x10
    44d8:	0c000000 	jal	0 <func_800BC450>
    44dc:	02202025 	move	a0,s1
    44e0:	26100001 	addiu	s0,s0,1
    44e4:	00108400 	sll	s0,s0,0x10
    44e8:	00108403 	sra	s0,s0,0x10
    44ec:	2a010004 	slti	at,s0,4
    44f0:	5420fff0 	bnezl	at,44b4 <func_800C08AC+0x58>
    44f4:	00107080 	sll	t6,s0,0x2
    44f8:	87a6003a 	lh	a2,58(sp)
    44fc:	02202025 	move	a0,s1
    4500:	240503fc 	li	a1,1020
    4504:	1cc0000b 	bgtz	a2,4534 <func_800C08AC+0xd8>
    4508:	00003825 	move	a3,zero
    450c:	02202025 	move	a0,s1
    4510:	00002825 	move	a1,zero
    4514:	0c000000 	jal	0 <func_800BC450>
    4518:	24060007 	li	a2,7
    451c:	8e390790 	lw	t9,1936(s1)
    4520:	a7200162 	sh	zero,354(t9)
    4524:	8e220790 	lw	v0,1936(s1)
    4528:	84480162 	lh	t0,354(v0)
    452c:	10000003 	b	453c <func_800C08AC+0xe0>
    4530:	a448014e 	sh	t0,334(v0)
    4534:	0c000000 	jal	0 <func_800BC450>
    4538:	afa00010 	sw	zero,16(sp)
    453c:	8fbf002c 	lw	ra,44(sp)
    4540:	8fb00020 	lw	s0,32(sp)
    4544:	8fb10024 	lw	s1,36(sp)
    4548:	8fb20028 	lw	s2,40(sp)
    454c:	03e00008 	jr	ra
    4550:	27bd0030 	addiu	sp,sp,48

00004554 <func_800C09A4>:
    4554:	afa50004 	sw	a1,4(sp)
    4558:	00052c00 	sll	a1,a1,0x10
    455c:	00052c03 	sra	a1,a1,0x10
    4560:	00057080 	sll	t6,a1,0x2
    4564:	008e7821 	addu	t7,a0,t6
    4568:	8de30790 	lw	v1,1936(t7)
    456c:	2402ffff 	li	v0,-1
    4570:	10600003 	beqz	v1,4580 <func_800C09A4+0x2c>
    4574:	00000000 	nop
    4578:	03e00008 	jr	ra
    457c:	84620130 	lh	v0,304(v1)
    4580:	03e00008 	jr	ra
    4584:	00000000 	nop

00004588 <func_800C09D8>:
    4588:	afa50004 	sw	a1,4(sp)
    458c:	00052c00 	sll	a1,a1,0x10
    4590:	00052c03 	sra	a1,a1,0x10
    4594:	00057080 	sll	t6,a1,0x2
    4598:	afa60008 	sw	a2,8(sp)
    459c:	008e7821 	addu	t7,a0,t6
    45a0:	8de20790 	lw	v0,1936(t7)
    45a4:	00063400 	sll	a2,a2,0x10
    45a8:	00063403 	sra	a2,a2,0x10
    45ac:	50400004 	beqzl	v0,45c0 <func_800C09D8+0x38>
    45b0:	84580130 	lh	t8,304(v0)
    45b4:	03e00008 	jr	ra
    45b8:	00001025 	move	v0,zero
    45bc:	84580130 	lh	t8,304(v0)
    45c0:	50d80004 	beql	a2,t8,45d4 <func_800C09D8+0x4c>
    45c4:	84590140 	lh	t9,320(v0)
    45c8:	03e00008 	jr	ra
    45cc:	00001025 	move	v0,zero
    45d0:	84590140 	lh	t9,320(v0)
    45d4:	24010007 	li	at,7
    45d8:	24020001 	li	v0,1
    45dc:	13210003 	beq	t9,at,45ec <func_800C09D8+0x64>
    45e0:	00000000 	nop
    45e4:	03e00008 	jr	ra
    45e8:	24020002 	li	v0,2
    45ec:	03e00008 	jr	ra
    45f0:	00000000 	nop

000045f4 <Gameplay_SaveSceneFlags>:
    45f4:	848e00a4 	lh	t6,164(a0)
    45f8:	8c881d38 	lw	t0,7480(a0)
    45fc:	3c190000 	lui	t9,0x0
    4600:	000e78c0 	sll	t7,t6,0x3
    4604:	01ee7823 	subu	t7,t7,t6
    4608:	000f7880 	sll	t7,t7,0x2
    460c:	25f800d4 	addiu	t8,t7,212
    4610:	27390000 	addiu	t9,t9,0
    4614:	03191021 	addu	v0,t8,t9
    4618:	ac480000 	sw	t0,0(v0)
    461c:	8c891d28 	lw	t1,7464(a0)
    4620:	ac490004 	sw	t1,4(v0)
    4624:	8c8a1d3c 	lw	t2,7484(a0)
    4628:	ac4a0008 	sw	t2,8(v0)
    462c:	8c8b1d44 	lw	t3,7492(a0)
    4630:	03e00008 	jr	ra
    4634:	ac4b000c 	sw	t3,12(v0)

00004638 <Gameplay_SetRespawnData>:
    4638:	000570c0 	sll	t6,a1,0x3
    463c:	01c57023 	subu	t6,t6,a1
    4640:	3c0f0000 	lui	t7,0x0
    4644:	afa60008 	sw	a2,8(sp)
    4648:	25ef0000 	addiu	t7,t7,0
    464c:	000e7080 	sll	t6,t6,0x2
    4650:	8fb80014 	lw	t8,20(sp)
    4654:	00063400 	sll	a2,a2,0x10
    4658:	01cf1021 	addu	v0,t6,t7
    465c:	00063403 	sra	a2,a2,0x10
    4660:	a4461378 	sh	a2,4984(v0)
    4664:	a047137a 	sb	a3,4986(v0)
    4668:	8f080000 	lw	t0,0(t8)
    466c:	87a9001a 	lh	t1,26(sp)
    4670:	8faa0010 	lw	t2,16(sp)
    4674:	ac481368 	sw	t0,4968(v0)
    4678:	8f190004 	lw	t9,4(t8)
    467c:	ac59136c 	sw	t9,4972(v0)
    4680:	8f080008 	lw	t0,8(t8)
    4684:	a4491374 	sh	t1,4980(v0)
    4688:	a44a1376 	sh	t2,4982(v0)
    468c:	ac481370 	sw	t0,4976(v0)
    4690:	8c8b1d2c 	lw	t3,7468(a0)
    4694:	ac4b137c 	sw	t3,4988(v0)
    4698:	8c8c1d48 	lw	t4,7496(a0)
    469c:	03e00008 	jr	ra
    46a0:	ac4c1380 	sw	t4,4992(v0)

000046a4 <Gameplay_SetupRespawnPoint>:
    46a4:	27bdffd8 	addiu	sp,sp,-40
    46a8:	afbf0024 	sw	ra,36(sp)
    46ac:	afa60030 	sw	a2,48(sp)
    46b0:	848200a4 	lh	v0,164(a0)
    46b4:	2401003c 	li	at,60
    46b8:	8c831c44 	lw	v1,7236(a0)
    46bc:	10410010 	beq	v0,at,4700 <Gameplay_SetupRespawnPoint+0x5c>
    46c0:	2401003e 	li	at,62
    46c4:	1041000e 	beq	v0,at,4700 <Gameplay_SetupRespawnPoint+0x5c>
    46c8:	3c070001 	lui	a3,0x1
    46cc:	8fae0030 	lw	t6,48(sp)
    46d0:	00e43821 	addu	a3,a3,a0
    46d4:	80e71cbc 	lb	a3,7356(a3)
    46d8:	3c020000 	lui	v0,0x0
    46dc:	8c420000 	lw	v0,0(v0)
    46e0:	246f0024 	addiu	t7,v1,36
    46e4:	afaf0014 	sw	t7,20(sp)
    46e8:	afae0010 	sw	t6,16(sp)
    46ec:	847800b6 	lh	t8,182(v1)
    46f0:	00023400 	sll	a2,v0,0x10
    46f4:	00063403 	sra	a2,a2,0x10
    46f8:	0c000000 	jal	0 <func_800BC450>
    46fc:	afb80018 	sw	t8,24(sp)
    4700:	8fbf0024 	lw	ra,36(sp)
    4704:	27bd0028 	addiu	sp,sp,40
    4708:	03e00008 	jr	ra
    470c:	00000000 	nop

00004710 <Gameplay_TriggerVoidOut>:
    4710:	8c8e1d2c 	lw	t6,7468(a0)
    4714:	3c020000 	lui	v0,0x0
    4718:	24420000 	addiu	v0,v0,0
    471c:	ac4e137c 	sw	t6,4988(v0)
    4720:	8c8f1d48 	lw	t7,7496(a0)
    4724:	24180001 	li	t8,1
    4728:	3c010001 	lui	at,0x1
    472c:	ac581364 	sw	t8,4964(v0)
    4730:	00240821 	addu	at,at,a0
    4734:	24190014 	li	t9,20
    4738:	ac4f1380 	sw	t7,4992(v0)
    473c:	a0391e15 	sb	t9,7701(at)
    4740:	84481378 	lh	t0,4984(v0)
    4744:	3c010001 	lui	at,0x1
    4748:	00240821 	addu	at,at,a0
    474c:	a4281e1a 	sh	t0,7706(at)
    4750:	3c010001 	lui	at,0x1
    4754:	00240821 	addu	at,at,a0
    4758:	24090002 	li	t1,2
    475c:	03e00008 	jr	ra
    4760:	a0291e5e 	sb	t1,7774(at)

00004764 <Gameplay_LoadToLastEntrance>:
    4764:	3c030000 	lui	v1,0x0
    4768:	24630000 	addiu	v1,v1,0
    476c:	27bdffe8 	addiu	sp,sp,-24
    4770:	240effff 	li	t6,-1
    4774:	3c010001 	lui	at,0x1
    4778:	afbf0014 	sw	ra,20(sp)
    477c:	ac6e1364 	sw	t6,4964(v1)
    4780:	00240821 	addu	at,at,a0
    4784:	240f0014 	li	t7,20
    4788:	a02f1e15 	sb	t7,7701(at)
    478c:	848200a4 	lh	v0,164(a0)
    4790:	2401000e 	li	at,14
    4794:	2418043f 	li	t8,1087
    4798:	10410007 	beq	v0,at,47b8 <Gameplay_LoadToLastEntrance+0x54>
    479c:	2405003c 	li	a1,60
    47a0:	2401001a 	li	at,26
    47a4:	10410004 	beq	v0,at,47b8 <Gameplay_LoadToLastEntrance+0x54>
    47a8:	2401000f 	li	at,15
    47ac:	10410002 	beq	v0,at,47b8 <Gameplay_LoadToLastEntrance+0x54>
    47b0:	2401004f 	li	at,79
    47b4:	14410007 	bne	v0,at,47d4 <Gameplay_LoadToLastEntrance+0x70>
    47b8:	3c010001 	lui	at,0x1
    47bc:	00240821 	addu	at,at,a0
    47c0:	a4381e1a 	sh	t8,7706(at)
    47c4:	0c000000 	jal	0 <func_800BC450>
    47c8:	afa40018 	sw	a0,24(sp)
    47cc:	10000012 	b	4818 <Gameplay_LoadToLastEntrance+0xb4>
    47d0:	8fa40018 	lw	a0,24(sp)
    47d4:	8c620000 	lw	v0,0(v1)
    47d8:	2401028a 	li	at,650
    47dc:	241901f9 	li	t9,505
    47e0:	10410006 	beq	v0,at,47fc <Gameplay_LoadToLastEntrance+0x98>
    47e4:	2401028e 	li	at,654
    47e8:	10410004 	beq	v0,at,47fc <Gameplay_LoadToLastEntrance+0x98>
    47ec:	24010292 	li	at,658
    47f0:	10410002 	beq	v0,at,47fc <Gameplay_LoadToLastEntrance+0x98>
    47f4:	24010476 	li	at,1142
    47f8:	14410004 	bne	v0,at,480c <Gameplay_LoadToLastEntrance+0xa8>
    47fc:	3c010001 	lui	at,0x1
    4800:	00240821 	addu	at,at,a0
    4804:	10000004 	b	4818 <Gameplay_LoadToLastEntrance+0xb4>
    4808:	a4391e1a 	sh	t9,7706(at)
    480c:	3c010001 	lui	at,0x1
    4810:	00240821 	addu	at,at,a0
    4814:	a4221e1a 	sh	v0,7706(at)
    4818:	3c010001 	lui	at,0x1
    481c:	00240821 	addu	at,at,a0
    4820:	24080002 	li	t0,2
    4824:	a0281e5e 	sb	t0,7774(at)
    4828:	8fbf0014 	lw	ra,20(sp)
    482c:	27bd0018 	addiu	sp,sp,24
    4830:	03e00008 	jr	ra
    4834:	00000000 	nop

00004838 <Gameplay_TriggerRespawn>:
    4838:	27bdffe8 	addiu	sp,sp,-24
    483c:	afbf0014 	sw	ra,20(sp)
    4840:	afa40018 	sw	a0,24(sp)
    4844:	00002825 	move	a1,zero
    4848:	0c000000 	jal	0 <func_800BC450>
    484c:	24060dff 	li	a2,3583
    4850:	0c000000 	jal	0 <func_800BC450>
    4854:	8fa40018 	lw	a0,24(sp)
    4858:	8fbf0014 	lw	ra,20(sp)
    485c:	27bd0018 	addiu	sp,sp,24
    4860:	03e00008 	jr	ra
    4864:	00000000 	nop

00004868 <func_800C0CB8>:
    4868:	3c0e0001 	lui	t6,0x1
    486c:	01c47021 	addu	t6,t6,a0
    4870:	8dce1cc4 	lw	t6,7364(t6)
    4874:	3c0f0000 	lui	t7,0x0
    4878:	91c20000 	lbu	v0,0(t6)
    487c:	38420001 	xori	v0,v0,0x1
    4880:	0002102b 	sltu	v0,zero,v0
    4884:	10400012 	beqz	v0,48d0 <func_800C0CB8+0x68>
    4888:	00000000 	nop
    488c:	8def0000 	lw	t7,0(t7)
    4890:	85e304b2 	lh	v1,1202(t7)
    4894:	38620020 	xori	v0,v1,0x20
    4898:	0002102b 	sltu	v0,zero,v0
    489c:	1040000c 	beqz	v0,48d0 <func_800C0CB8+0x68>
    48a0:	00000000 	nop
    48a4:	38620030 	xori	v0,v1,0x30
    48a8:	0002102b 	sltu	v0,zero,v0
    48ac:	10400008 	beqz	v0,48d0 <func_800C0CB8+0x68>
    48b0:	00000000 	nop
    48b4:	38620040 	xori	v0,v1,0x40
    48b8:	0002102b 	sltu	v0,zero,v0
    48bc:	10400004 	beqz	v0,48d0 <func_800C0CB8+0x68>
    48c0:	00000000 	nop
    48c4:	848200a4 	lh	v0,164(a0)
    48c8:	38420045 	xori	v0,v0,0x45
    48cc:	0002102b 	sltu	v0,zero,v0
    48d0:	03e00008 	jr	ra
    48d4:	00000000 	nop

000048d8 <func_800C0D28>:
    48d8:	8c8207b8 	lw	v0,1976(a0)
    48dc:	03e00008 	jr	ra
    48e0:	0002102b 	sltu	v0,zero,v0

000048e4 <func_800C0D34>:
    48e4:	90ae0002 	lbu	t6,2(a1)
    48e8:	2401000a 	li	at,10
    48ec:	3c0f0001 	lui	t7,0x1
    48f0:	51c10004 	beql	t6,at,4904 <func_800C0D34+0x20>
    48f4:	94b8001c 	lhu	t8,28(a1)
    48f8:	03e00008 	jr	ra
    48fc:	00001025 	move	v0,zero
    4900:	94b8001c 	lhu	t8,28(a1)
    4904:	01e47821 	addu	t7,t7,a0
    4908:	8def1d38 	lw	t7,7480(t7)
    490c:	0018ca83 	sra	t9,t8,0xa
    4910:	00194100 	sll	t0,t9,0x4
    4914:	01e81021 	addu	v0,t7,t0
    4918:	80430000 	lb	v1,0(v0)
    491c:	80490002 	lb	t1,2(v0)
    4920:	24020001 	li	v0,1
    4924:	54690004 	bnel	v1,t1,4938 <func_800C0D34+0x54>
    4928:	80aa0003 	lb	t2,3(a1)
    492c:	03e00008 	jr	ra
    4930:	00001025 	move	v0,zero
    4934:	80aa0003 	lb	t2,3(a1)
    4938:	546a0005 	bnel	v1,t2,4950 <func_800C0D34+0x6c>
    493c:	84ac00b6 	lh	t4,182(a1)
    4940:	84ab00b6 	lh	t3,182(a1)
    4944:	10000005 	b	495c <func_800C0D34+0x78>
    4948:	a4cb0000 	sh	t3,0(a2)
    494c:	84ac00b6 	lh	t4,182(a1)
    4950:	34018000 	li	at,0x8000
    4954:	01816821 	addu	t5,t4,at
    4958:	a4cd0000 	sh	t5,0(a2)
    495c:	03e00008 	jr	ra
    4960:	00000000 	nop

00004964 <func_800C0DB4>:
    4964:	27bdffc0 	addiu	sp,sp,-64
    4968:	afbf001c 	sw	ra,28(sp)
    496c:	afa50044 	sw	a1,68(sp)
    4970:	8cb90000 	lw	t9,0(a1)
    4974:	27ae002c 	addiu	t6,sp,44
    4978:	27a80030 	addiu	t0,sp,48
    497c:	add90000 	sw	t9,0(t6)
    4980:	8cb80004 	lw	t8,4(a1)
    4984:	27a9003c 	addiu	t1,sp,60
    4988:	add80004 	sw	t8,4(t6)
    498c:	8cb90008 	lw	t9,8(a1)
    4990:	248507c0 	addiu	a1,a0,1984
    4994:	add90008 	sw	t9,8(t6)
    4998:	afa50024 	sw	a1,36(sp)
    499c:	afa90014 	sw	t1,20(sp)
    49a0:	afa80010 	sw	t0,16(sp)
    49a4:	8fa70034 	lw	a3,52(sp)
    49a8:	0c000000 	jal	0 <func_800BC450>
    49ac:	8fa6002c 	lw	a2,44(sp)
    49b0:	24010001 	li	at,1
    49b4:	14410014 	bne	v0,at,4a08 <func_800C0DB4+0xa4>
    49b8:	8faa0044 	lw	t2,68(sp)
    49bc:	c5440004 	lwc1	$f4,4(t2)
    49c0:	c7a60030 	lwc1	$f6,48(sp)
    49c4:	8fa40024 	lw	a0,36(sp)
    49c8:	27a50038 	addiu	a1,sp,56
    49cc:	4606203c 	c.lt.s	$f4,$f6
    49d0:	27a60028 	addiu	a2,sp,40
    49d4:	4502000d 	bc1fl	4a0c <func_800C0DB4+0xa8>
    49d8:	00001025 	move	v0,zero
    49dc:	0c000000 	jal	0 <func_800BC450>
    49e0:	27a7002c 	addiu	a3,sp,44
    49e4:	3c01c6fa 	lui	at,0xc6fa
    49e8:	44814000 	mtc1	at,$f8
    49ec:	00000000 	nop
    49f0:	46080032 	c.eq.s	$f0,$f8
    49f4:	00000000 	nop
    49f8:	45030004 	bc1tl	4a0c <func_800C0DB4+0xa8>
    49fc:	00001025 	move	v0,zero
    4a00:	10000002 	b	4a0c <func_800C0DB4+0xa8>
    4a04:	24020001 	li	v0,1
    4a08:	00001025 	move	v0,zero
    4a0c:	8fbf001c 	lw	ra,28(sp)
    4a10:	27bd0040 	addiu	sp,sp,64
    4a14:	03e00008 	jr	ra
    4a18:	00000000 	nop
    4a1c:	00000000 	nop
