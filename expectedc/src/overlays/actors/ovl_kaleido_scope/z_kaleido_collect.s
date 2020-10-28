
build/src/overlays/actors/ovl_kaleido_scope/z_kaleido_collect.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80813820>:
       0:	27bdfdd0 	addiu	sp,sp,-560
       4:	afb50034 	sw	s5,52(sp)
       8:	0080a825 	move	s5,a0
       c:	afbf0044 	sw	ra,68(sp)
      10:	afb10024 	sw	s1,36(sp)
      14:	3c060000 	lui	a2,0x0
      18:	00a08825 	move	s1,a1
      1c:	afbe0040 	sw	s8,64(sp)
      20:	afb7003c 	sw	s7,60(sp)
      24:	afb60038 	sw	s6,56(sp)
      28:	afb40030 	sw	s4,48(sp)
      2c:	afb3002c 	sw	s3,44(sp)
      30:	afb20028 	sw	s2,40(sp)
      34:	afb00020 	sw	s0,32(sp)
      38:	24c60000 	addiu	a2,a2,0
      3c:	27a401f4 	addiu	a0,sp,500
      40:	0c000000 	jal	0 <func_80813820>
      44:	240700f8 	li	a3,248
      48:	3c010001 	lui	at,0x1
      4c:	34210760 	ori	at,at,0x760
      50:	02a1a021 	addu	s4,s5,at
      54:	968301e4 	lhu	v1,484(s4)
      58:	24010005 	li	at,5
      5c:	50600007 	beqzl	v1,7c <func_80813820+0x7c>
      60:	968e01e8 	lhu	t6,488(s4)
      64:	10610004 	beq	v1,at,78 <func_80813820+0x78>
      68:	00601025 	move	v0,v1
      6c:	24010008 	li	at,8
      70:	544101cb 	bnel	v0,at,7a0 <func_80813820+0x7a0>
      74:	24010009 	li	at,9
      78:	968e01e8 	lhu	t6,488(s4)
      7c:	24010002 	li	at,2
      80:	55c101c7 	bnel	t6,at,7a0 <func_80813820+0x7a0>
      84:	24010009 	li	at,9
      88:	86820238 	lh	v0,568(s4)
      8c:	a6800260 	sh	zero,608(s4)
      90:	2401000a 	li	at,10
      94:	1440014b 	bnez	v0,5c4 <func_80813820+0x5c4>
      98:	00000000 	nop
      9c:	968f01d4 	lhu	t7,468(s4)
      a0:	24010006 	li	at,6
      a4:	a680025e 	sh	zero,606(s4)
      a8:	15e10007 	bne	t7,at,c8 <func_80813820+0xc8>
      ac:	00000000 	nop
      b0:	86820214 	lh	v0,532(s4)
      b4:	14400006 	bnez	v0,d0 <func_80813820+0xd0>
      b8:	2841ffe2 	slti	at,v0,-30
      bc:	86980216 	lh	t8,534(s4)
      c0:	17000003 	bnez	t8,d0 <func_80813820+0xd0>
      c4:	00000000 	nop
      c8:	100000bc 	b	3bc <func_80813820+0x3bc>
      cc:	8697024a 	lh	s7,586(s4)
      d0:	1020001c 	beqz	at,144 <func_80813820+0x144>
      d4:	8693021c 	lh	s3,540(s4)
      d8:	3c120000 	lui	s2,0x0
      dc:	26520000 	addiu	s2,s2,0
      e0:	0013c880 	sll	t9,s3,0x2
      e4:	02597021 	addu	t6,s2,t9
      e8:	81d00002 	lb	s0,2(t6)
      ec:	2401fffd 	li	at,-3
      f0:	02a02025 	move	a0,s5
      f4:	16010005 	bne	s0,at,10c <func_80813820+0x10c>
      f8:	00000000 	nop
      fc:	0c000000 	jal	0 <func_80813820>
     100:	2405000a 	li	a1,10
     104:	1000002a 	b	1b0 <func_80813820+0x1b0>
     108:	a68001e4 	sh	zero,484(s4)
     10c:	06000028 	bltz	s0,1b0 <func_80813820+0x1b0>
     110:	02802025 	move	a0,s4
     114:	0c000000 	jal	0 <func_80813820>
     118:	02002825 	move	a1,s0
     11c:	00027c00 	sll	t7,v0,0x10
     120:	000fc403 	sra	t8,t7,0x10
     124:	17000022 	bnez	t8,1b0 <func_80813820+0x1b0>
     128:	0010c880 	sll	t9,s0,0x2
     12c:	02597021 	addu	t6,s2,t9
     130:	81d00002 	lb	s0,2(t6)
     134:	0603fff7 	bgezl	s0,114 <func_80813820+0x114>
     138:	02802025 	move	a0,s4
     13c:	1000001d 	b	1b4 <func_80813820+0x1b4>
     140:	86820216 	lh	v0,534(s4)
     144:	2841001f 	slti	at,v0,31
     148:	14200019 	bnez	at,1b0 <func_80813820+0x1b0>
     14c:	3c120000 	lui	s2,0x0
     150:	26520000 	addiu	s2,s2,0
     154:	00137880 	sll	t7,s3,0x2
     158:	024fc021 	addu	t8,s2,t7
     15c:	83100003 	lb	s0,3(t8)
     160:	2401fffe 	li	at,-2
     164:	02a02025 	move	a0,s5
     168:	16010005 	bne	s0,at,180 <func_80813820+0x180>
     16c:	00000000 	nop
     170:	0c000000 	jal	0 <func_80813820>
     174:	2405000b 	li	a1,11
     178:	1000000d 	b	1b0 <func_80813820+0x1b0>
     17c:	a68001e4 	sh	zero,484(s4)
     180:	0600000b 	bltz	s0,1b0 <func_80813820+0x1b0>
     184:	02802025 	move	a0,s4
     188:	0c000000 	jal	0 <func_80813820>
     18c:	02002825 	move	a1,s0
     190:	0002cc00 	sll	t9,v0,0x10
     194:	00197403 	sra	t6,t9,0x10
     198:	15c00005 	bnez	t6,1b0 <func_80813820+0x1b0>
     19c:	00107880 	sll	t7,s0,0x2
     1a0:	024fc021 	addu	t8,s2,t7
     1a4:	83100003 	lb	s0,3(t8)
     1a8:	0603fff7 	bgezl	s0,188 <func_80813820+0x188>
     1ac:	02802025 	move	a0,s4
     1b0:	86820216 	lh	v0,534(s4)
     1b4:	3c120000 	lui	s2,0x0
     1b8:	26520000 	addiu	s2,s2,0
     1bc:	2841ffe2 	slti	at,v0,-30
     1c0:	10200011 	beqz	at,208 <func_80813820+0x208>
     1c4:	0013c880 	sll	t9,s3,0x2
     1c8:	02597021 	addu	t6,s2,t9
     1cc:	81d00001 	lb	s0,1(t6)
     1d0:	0600001e 	bltz	s0,24c <func_80813820+0x24c>
     1d4:	02802025 	move	a0,s4
     1d8:	0c000000 	jal	0 <func_80813820>
     1dc:	02002825 	move	a1,s0
     1e0:	00027c00 	sll	t7,v0,0x10
     1e4:	000fc403 	sra	t8,t7,0x10
     1e8:	17000018 	bnez	t8,24c <func_80813820+0x24c>
     1ec:	0010c880 	sll	t9,s0,0x2
     1f0:	02597021 	addu	t6,s2,t9
     1f4:	81d00001 	lb	s0,1(t6)
     1f8:	0603fff7 	bgezl	s0,1d8 <func_80813820+0x1d8>
     1fc:	02802025 	move	a0,s4
     200:	10000013 	b	250 <func_80813820+0x250>
     204:	8686021c 	lh	a2,540(s4)
     208:	2841001f 	slti	at,v0,31
     20c:	1420000f 	bnez	at,24c <func_80813820+0x24c>
     210:	00137880 	sll	t7,s3,0x2
     214:	024fc021 	addu	t8,s2,t7
     218:	83100000 	lb	s0,0(t8)
     21c:	0600000b 	bltz	s0,24c <func_80813820+0x24c>
     220:	02802025 	move	a0,s4
     224:	0c000000 	jal	0 <func_80813820>
     228:	02002825 	move	a1,s0
     22c:	0002cc00 	sll	t9,v0,0x10
     230:	00197403 	sra	t6,t9,0x10
     234:	15c00005 	bnez	t6,24c <func_80813820+0x24c>
     238:	00107880 	sll	t7,s0,0x2
     23c:	024fc021 	addu	t8,s2,t7
     240:	83100000 	lb	s0,0(t8)
     244:	0603fff7 	bgezl	s0,224 <func_80813820+0x224>
     248:	02802025 	move	a0,s4
     24c:	8686021c 	lh	a2,540(s4)
     250:	3c070000 	lui	a3,0x0
     254:	24e70000 	addiu	a3,a3,0
     258:	1266000b 	beq	s3,a2,288 <func_80813820+0x288>
     25c:	24044809 	li	a0,18441
     260:	3c190000 	lui	t9,0x0
     264:	a68001e4 	sh	zero,484(s4)
     268:	27390000 	addiu	t9,t9,0
     26c:	3c050000 	lui	a1,0x0
     270:	24a50000 	addiu	a1,a1,0
     274:	afb90014 	sw	t9,20(sp)
     278:	afa70010 	sw	a3,16(sp)
     27c:	0c000000 	jal	0 <func_80813820>
     280:	24060004 	li	a2,4
     284:	8686021c 	lh	a2,540(s4)
     288:	24010018 	li	at,24
     28c:	10c10033 	beq	a2,at,35c <func_80813820+0x35c>
     290:	3c020000 	lui	v0,0x0
     294:	00067080 	sll	t6,a2,0x2
     298:	3c0f0000 	lui	t7,0x0
     29c:	01ee7821 	addu	t7,t7,t6
     2a0:	3c180000 	lui	t8,0x0
     2a4:	8f1800a4 	lw	t8,164(t8)
     2a8:	8def0000 	lw	t7,0(t7)
     2ac:	3c040000 	lui	a0,0x0
     2b0:	241003e7 	li	s0,999
     2b4:	01f8c824 	and	t9,t7,t8
     2b8:	13200023 	beqz	t9,348 <func_80813820+0x348>
     2bc:	24840000 	addiu	a0,a0,0
     2c0:	28c10006 	slti	at,a2,6
     2c4:	10200009 	beqz	at,2ec <func_80813820+0x2ec>
     2c8:	24d00066 	addiu	s0,a2,102
     2cc:	00108400 	sll	s0,s0,0x10
     2d0:	00108403 	sra	s0,s0,0x10
     2d4:	3c040000 	lui	a0,0x0
     2d8:	24840000 	addiu	a0,a0,0
     2dc:	0c000000 	jal	0 <func_80813820>
     2e0:	02002825 	move	a1,s0
     2e4:	1000002b 	b	394 <func_80813820+0x394>
     2e8:	968f01e8 	lhu	t7,488(s4)
     2ec:	28c10012 	slti	at,a2,18
     2f0:	1020000a 	beqz	at,31c <func_80813820+0x31c>
     2f4:	24d0005a 	addiu	s0,a2,90
     2f8:	24d00054 	addiu	s0,a2,84
     2fc:	00108400 	sll	s0,s0,0x10
     300:	00108403 	sra	s0,s0,0x10
     304:	3c040000 	lui	a0,0x0
     308:	24840000 	addiu	a0,a0,0
     30c:	0c000000 	jal	0 <func_80813820>
     310:	02002825 	move	a1,s0
     314:	1000001f 	b	394 <func_80813820+0x394>
     318:	968f01e8 	lhu	t7,488(s4)
     31c:	00108400 	sll	s0,s0,0x10
     320:	00108403 	sra	s0,s0,0x10
     324:	3c040000 	lui	a0,0x0
     328:	240e006c 	li	t6,108
     32c:	afae0010 	sw	t6,16(sp)
     330:	24840000 	addiu	a0,a0,0
     334:	02002825 	move	a1,s0
     338:	0c000000 	jal	0 <func_80813820>
     33c:	24070012 	li	a3,18
     340:	10000014 	b	394 <func_80813820+0x394>
     344:	968f01e8 	lhu	t7,488(s4)
     348:	240503e7 	li	a1,999
     34c:	0c000000 	jal	0 <func_80813820>
     350:	24070018 	li	a3,24
     354:	1000000f 	b	394 <func_80813820+0x394>
     358:	968f01e8 	lhu	t7,488(s4)
     35c:	8c4200a4 	lw	v0,164(v0)
     360:	3c01f000 	lui	at,0xf000
     364:	3c040000 	lui	a0,0x0
     368:	00411024 	and	v0,v0,at
     36c:	10400003 	beqz	v0,37c <func_80813820+0x37c>
     370:	24840000 	addiu	a0,a0,0
     374:	10000002 	b	380 <func_80813820+0x380>
     378:	24100072 	li	s0,114
     37c:	241003e7 	li	s0,999
     380:	02002825 	move	a1,s0
     384:	24070072 	li	a3,114
     388:	0c000000 	jal	0 <func_80813820>
     38c:	afa20010 	sw	v0,16(sp)
     390:	968f01e8 	lhu	t7,488(s4)
     394:	8682021c 	lh	v0,540(s4)
     398:	000fc040 	sll	t8,t7,0x1
     39c:	0298c821 	addu	t9,s4,t8
     3a0:	a730023e 	sh	s0,574(t9)
     3a4:	968e01e8 	lhu	t6,488(s4)
     3a8:	000e7840 	sll	t7,t6,0x1
     3ac:	028fc021 	addu	t8,s4,t7
     3b0:	a7020246 	sh	v0,582(t8)
     3b4:	a7a20216 	sh	v0,534(sp)
     3b8:	87b70216 	lh	s7,534(sp)
     3bc:	00172880 	sll	a1,s7,0x2
     3c0:	30a5ffff 	andi	a1,a1,0xffff
     3c4:	02802025 	move	a0,s4
     3c8:	0c000000 	jal	0 <func_80813820>
     3cc:	8e860164 	lw	a2,356(s4)
     3d0:	969901d4 	lhu	t9,468(s4)
     3d4:	24010006 	li	at,6
     3d8:	57210059 	bnel	t9,at,540 <func_80813820+0x540>
     3dc:	968201e4 	lhu	v0,484(s4)
     3e0:	968e01e4 	lhu	t6,484(s4)
     3e4:	55c00056 	bnezl	t6,540 <func_80813820+0x540>
     3e8:	968201e4 	lhu	v0,484(s4)
     3ec:	868f0238 	lh	t7,568(s4)
     3f0:	2ae10006 	slti	at,s7,6
     3f4:	55e00052 	bnezl	t7,540 <func_80813820+0x540>
     3f8:	968201e4 	lhu	v0,484(s4)
     3fc:	1420004d 	bnez	at,534 <func_80813820+0x534>
     400:	2ae10012 	slti	at,s7,18
     404:	1020004b 	beqz	at,534 <func_80813820+0x534>
     408:	3c0e0000 	lui	t6,0x0
     40c:	8698021c 	lh	t8,540(s4)
     410:	3c0f0000 	lui	t7,0x0
     414:	8def00a4 	lw	t7,164(t7)
     418:	0018c880 	sll	t9,t8,0x2
     41c:	01d97021 	addu	t6,t6,t9
     420:	8dce0000 	lw	t6,0(t6)
     424:	2402000a 	li	v0,10
     428:	00009825 	move	s3,zero
     42c:	01cfc024 	and	t8,t6,t7
     430:	13000040 	beqz	t8,534 <func_80813820+0x534>
     434:	3c0e0000 	lui	t6,0x0
     438:	8697024a 	lh	s7,586(s4)
     43c:	3c010000 	lui	at,0x0
     440:	3c150000 	lui	s5,0x0
     444:	0017c840 	sll	t9,s7,0x1
     448:	01d97021 	addu	t6,t6,t9
     44c:	85ce0000 	lh	t6,0(t6)
     450:	3c120000 	lui	s2,0x0
     454:	26520000 	addiu	s2,s2,0
     458:	a68e0264 	sh	t6,612(s4)
     45c:	a4220000 	sh	v0,0(at)
     460:	26b50000 	addiu	s5,s5,0
     464:	241000ff 	li	s0,255
     468:	02537821 	addu	t7,s2,s3
     46c:	0013c040 	sll	t8,s3,0x1
     470:	26730001 	addiu	s3,s3,1
     474:	00139c00 	sll	s3,s3,0x10
     478:	00139c03 	sra	s3,s3,0x10
     47c:	2a610008 	slti	at,s3,8
     480:	a1f00000 	sb	s0,0(t7)
     484:	02b8c821 	addu	t9,s5,t8
     488:	1420fff7 	bnez	at,468 <func_80813820+0x468>
     48c:	a7200000 	sh	zero,0(t9)
     490:	3c010000 	lui	at,0x0
     494:	a4200000 	sh	zero,0(at)
     498:	0c000000 	jal	0 <func_80813820>
     49c:	24040001 	li	a0,1
     4a0:	868e0264 	lh	t6,612(s4)
     4a4:	240f0001 	li	t7,1
     4a8:	34018000 	li	at,0x8000
     4ac:	01cf2004 	sllv	a0,t7,t6
     4b0:	00812021 	addu	a0,a0,at
     4b4:	0c000000 	jal	0 <func_80813820>
     4b8:	3084ffff 	andi	a0,a0,0xffff
     4bc:	0c000000 	jal	0 <func_80813820>
     4c0:	00000000 	nop
     4c4:	ae820194 	sw	v0,404(s4)
     4c8:	a0400002 	sb	zero,2(v0)
     4cc:	8e980194 	lw	t8,404(s4)
     4d0:	3c0f0000 	lui	t7,0x0
     4d4:	2419ffc2 	li	t9,-62
     4d8:	a3100001 	sb	s0,1(t8)
     4dc:	8def0000 	lw	t7,0(t7)
     4e0:	3c180000 	lui	t8,0x0
     4e4:	240effc8 	li	t6,-56
     4e8:	a5f90f3e 	sh	t9,3902(t7)
     4ec:	8f180000 	lw	t8,0(t8)
     4f0:	3c0f0000 	lui	t7,0x0
     4f4:	2419ffcf 	li	t9,-49
     4f8:	a70e0f40 	sh	t6,3904(t8)
     4fc:	8def0000 	lw	t7,0(t7)
     500:	3c180000 	lui	t8,0x0
     504:	240effd2 	li	t6,-46
     508:	a5f90f42 	sh	t9,3906(t7)
     50c:	8f180000 	lw	t8,0(t8)
     510:	3c0f0000 	lui	t7,0x0
     514:	2419ffd7 	li	t9,-41
     518:	a70e0f44 	sh	t6,3908(t8)
     51c:	8def0000 	lw	t7,0(t7)
     520:	240e0008 	li	t6,8
     524:	00002025 	move	a0,zero
     528:	a5f90f46 	sh	t9,3910(t7)
     52c:	0c000000 	jal	0 <func_80813820>
     530:	a68e01e4 	sh	t6,484(s4)
     534:	10000021 	b	5bc <func_80813820+0x5bc>
     538:	00000000 	nop
     53c:	968201e4 	lhu	v0,484(s4)
     540:	24010005 	li	at,5
     544:	5441000d 	bnel	v0,at,57c <func_80813820+0x57c>
     548:	24010008 	li	at,8
     54c:	86980214 	lh	t8,532(s4)
     550:	00002025 	move	a0,zero
     554:	17000004 	bnez	t8,568 <func_80813820+0x568>
     558:	00000000 	nop
     55c:	86990216 	lh	t9,534(s4)
     560:	13200016 	beqz	t9,5bc <func_80813820+0x5bc>
     564:	00000000 	nop
     568:	0c000000 	jal	0 <func_80813820>
     56c:	a68001e4 	sh	zero,484(s4)
     570:	10000012 	b	5bc <func_80813820+0x5bc>
     574:	00000000 	nop
     578:	24010008 	li	at,8
     57c:	1441000f 	bne	v0,at,5bc <func_80813820+0x5bc>
     580:	00000000 	nop
     584:	96af0020 	lhu	t7,32(s5)
     588:	3c01ffff 	lui	at,0xffff
     58c:	34217fff 	ori	at,at,0x7fff
     590:	01e17027 	nor	t6,t7,at
     594:	15c00009 	bnez	t6,5bc <func_80813820+0x5bc>
     598:	2ae10006 	slti	at,s7,6
     59c:	14200007 	bnez	at,5bc <func_80813820+0x5bc>
     5a0:	2ae10012 	slti	at,s7,18
     5a4:	10200005 	beqz	at,5bc <func_80813820+0x5bc>
     5a8:	24180009 	li	t8,9
     5ac:	a69801e4 	sh	t8,484(s4)
     5b0:	2402000a 	li	v0,10
     5b4:	3c010000 	lui	at,0x0
     5b8:	a4220000 	sh	v0,0(at)
     5bc:	10000072 	b	788 <func_80813820+0x788>
     5c0:	a7b70216 	sh	s7,534(sp)
     5c4:	54410035 	bnel	v0,at,69c <func_80813820+0x69c>
     5c8:	86980214 	lh	t8,532(s4)
     5cc:	86990214 	lh	t9,532(s4)
     5d0:	240f0015 	li	t7,21
     5d4:	02802025 	move	a0,s4
     5d8:	2b21001f 	slti	at,t9,31
     5dc:	1420006a 	bnez	at,788 <func_80813820+0x788>
     5e0:	00000000 	nop
     5e4:	a68f021c 	sh	t7,540(s4)
     5e8:	8682021c 	lh	v0,540(s4)
     5ec:	a680025c 	sh	zero,604(s4)
     5f0:	a6800238 	sh	zero,568(s4)
     5f4:	00022880 	sll	a1,v0,0x2
     5f8:	30a5ffff 	andi	a1,a1,0xffff
     5fc:	0c000000 	jal	0 <func_80813820>
     600:	8e860164 	lw	a2,356(s4)
     604:	3c070000 	lui	a3,0x0
     608:	3c0e0000 	lui	t6,0x0
     60c:	24e70000 	addiu	a3,a3,0
     610:	25ce0000 	addiu	t6,t6,0
     614:	3c050000 	lui	a1,0x0
     618:	24a50000 	addiu	a1,a1,0
     61c:	afae0014 	sw	t6,20(sp)
     620:	afa70010 	sw	a3,16(sp)
     624:	24044809 	li	a0,18441
     628:	0c000000 	jal	0 <func_80813820>
     62c:	24060004 	li	a2,4
     630:	8686021c 	lh	a2,540(s4)
     634:	3c190000 	lui	t9,0x0
     638:	3c0f0000 	lui	t7,0x0
     63c:	0006c080 	sll	t8,a2,0x2
     640:	0338c821 	addu	t9,t9,t8
     644:	8f390000 	lw	t9,0(t9)
     648:	8def00a4 	lw	t7,164(t7)
     64c:	241003e7 	li	s0,999
     650:	032f7024 	and	t6,t9,t7
     654:	11c00005 	beqz	t6,66c <func_80813820+0x66c>
     658:	00000000 	nop
     65c:	24d0005a 	addiu	s0,a2,90
     660:	00108400 	sll	s0,s0,0x10
     664:	10000001 	b	66c <func_80813820+0x66c>
     668:	00108403 	sra	s0,s0,0x10
     66c:	a7a60216 	sh	a2,534(sp)
     670:	969801e8 	lhu	t8,488(s4)
     674:	0018c840 	sll	t9,t8,0x1
     678:	02997821 	addu	t7,s4,t9
     67c:	a5f0023e 	sh	s0,574(t7)
     680:	969801e8 	lhu	t8,488(s4)
     684:	87ae0216 	lh	t6,534(sp)
     688:	0018c840 	sll	t9,t8,0x1
     68c:	02997821 	addu	t7,s4,t9
     690:	1000003d 	b	788 <func_80813820+0x788>
     694:	a5ee0246 	sh	t6,582(t7)
     698:	86980214 	lh	t8,532(s4)
     69c:	02802025 	move	a0,s4
     6a0:	2b01ffe2 	slti	at,t8,-30
     6a4:	10200038 	beqz	at,788 <func_80813820+0x788>
     6a8:	00000000 	nop
     6ac:	a680021c 	sh	zero,540(s4)
     6b0:	8682021c 	lh	v0,540(s4)
     6b4:	a680025c 	sh	zero,604(s4)
     6b8:	a6800238 	sh	zero,568(s4)
     6bc:	00022880 	sll	a1,v0,0x2
     6c0:	30a5ffff 	andi	a1,a1,0xffff
     6c4:	0c000000 	jal	0 <func_80813820>
     6c8:	8e860164 	lw	a2,356(s4)
     6cc:	3c070000 	lui	a3,0x0
     6d0:	3c190000 	lui	t9,0x0
     6d4:	24e70000 	addiu	a3,a3,0
     6d8:	27390000 	addiu	t9,t9,0
     6dc:	3c050000 	lui	a1,0x0
     6e0:	24a50000 	addiu	a1,a1,0
     6e4:	afb90014 	sw	t9,20(sp)
     6e8:	afa70010 	sw	a3,16(sp)
     6ec:	24044809 	li	a0,18441
     6f0:	0c000000 	jal	0 <func_80813820>
     6f4:	24060004 	li	a2,4
     6f8:	8686021c 	lh	a2,540(s4)
     6fc:	3c0f0000 	lui	t7,0x0
     700:	3c180000 	lui	t8,0x0
     704:	00067080 	sll	t6,a2,0x2
     708:	01ee7821 	addu	t7,t7,t6
     70c:	8def0000 	lw	t7,0(t7)
     710:	8f1800a4 	lw	t8,164(t8)
     714:	241003e7 	li	s0,999
     718:	28c10006 	slti	at,a2,6
     71c:	01f8c824 	and	t9,t7,t8
     720:	13200010 	beqz	t9,764 <func_80813820+0x764>
     724:	00000000 	nop
     728:	10200004 	beqz	at,73c <func_80813820+0x73c>
     72c:	24d00066 	addiu	s0,a2,102
     730:	00108400 	sll	s0,s0,0x10
     734:	1000000b 	b	764 <func_80813820+0x764>
     738:	00108403 	sra	s0,s0,0x10
     73c:	28c1000c 	slti	at,a2,12
     740:	10200005 	beqz	at,758 <func_80813820+0x758>
     744:	24d00069 	addiu	s0,a2,105
     748:	24d0004e 	addiu	s0,a2,78
     74c:	00108400 	sll	s0,s0,0x10
     750:	10000004 	b	764 <func_80813820+0x764>
     754:	00108403 	sra	s0,s0,0x10
     758:	00108400 	sll	s0,s0,0x10
     75c:	10000001 	b	764 <func_80813820+0x764>
     760:	00108403 	sra	s0,s0,0x10
     764:	968e01e8 	lhu	t6,488(s4)
     768:	000e7840 	sll	t7,t6,0x1
     76c:	028fc021 	addu	t8,s4,t7
     770:	a710023e 	sh	s0,574(t8)
     774:	969901e8 	lhu	t9,488(s4)
     778:	00197040 	sll	t6,t9,0x1
     77c:	028e7821 	addu	t7,s4,t6
     780:	a5e60246 	sh	a2,582(t7)
     784:	a7a60216 	sh	a2,534(sp)
     788:	3c120000 	lui	s2,0x0
     78c:	26520000 	addiu	s2,s2,0
     790:	241000ff 	li	s0,255
     794:	1000005d 	b	90c <func_80813820+0x90c>
     798:	87b70216 	lh	s7,534(sp)
     79c:	24010009 	li	at,9
     7a0:	1461004f 	bne	v1,at,8e0 <func_80813820+0x8e0>
     7a4:	3c020000 	lui	v0,0x0
     7a8:	84420000 	lh	v0,0(v0)
     7ac:	24180008 	li	t8,8
     7b0:	a6980260 	sh	t8,608(s4)
     7b4:	2442ffff 	addiu	v0,v0,-1
     7b8:	00021400 	sll	v0,v0,0x10
     7bc:	00021403 	sra	v0,v0,0x10
     7c0:	3c010000 	lui	at,0x0
     7c4:	14400041 	bnez	v0,8cc <func_80813820+0x8cc>
     7c8:	a4220000 	sh	v0,0(at)
     7cc:	3c150000 	lui	s5,0x0
     7d0:	3c100000 	lui	s0,0x0
     7d4:	26100000 	addiu	s0,s0,0
     7d8:	26b50000 	addiu	s5,s5,0
     7dc:	00009825 	move	s3,zero
     7e0:	241200ff 	li	s2,255
     7e4:	02b3c821 	addu	t9,s5,s3
     7e8:	00137040 	sll	t6,s3,0x1
     7ec:	26730001 	addiu	s3,s3,1
     7f0:	00139c00 	sll	s3,s3,0x10
     7f4:	00139c03 	sra	s3,s3,0x10
     7f8:	2a610008 	slti	at,s3,8
     7fc:	a3320000 	sb	s2,0(t9)
     800:	020e7821 	addu	t7,s0,t6
     804:	1420fff7 	bnez	at,7e4 <func_80813820+0x7e4>
     808:	a5e00000 	sh	zero,0(t7)
     80c:	3c130000 	lui	s3,0x0
     810:	3c010000 	lui	at,0x0
     814:	26730000 	addiu	s3,s3,0
     818:	a4200000 	sh	zero,0(at)
     81c:	8e790000 	lw	t9,0(s3)
     820:	2418ffc2 	li	t8,-62
     824:	240effc8 	li	t6,-56
     828:	a7380f3e 	sh	t8,3902(t9)
     82c:	8e6f0000 	lw	t7,0(s3)
     830:	2418ffcf 	li	t8,-49
     834:	24040001 	li	a0,1
     838:	a5ee0f40 	sh	t6,3904(t7)
     83c:	8e790000 	lw	t9,0(s3)
     840:	240effd2 	li	t6,-46
     844:	a7380f42 	sh	t8,3906(t9)
     848:	8e6f0000 	lw	t7,0(s3)
     84c:	2418ffd7 	li	t8,-41
     850:	a5ee0f44 	sh	t6,3908(t7)
     854:	8e790000 	lw	t9,0(s3)
     858:	a7380f46 	sh	t8,3910(t9)
     85c:	0c000000 	jal	0 <func_80813820>
     860:	8696024a 	lh	s6,586(s4)
     864:	0c000000 	jal	0 <func_80813820>
     868:	24040001 	li	a0,1
     86c:	00167040 	sll	t6,s6,0x1
     870:	3c0f0000 	lui	t7,0x0
     874:	01ee7821 	addu	t7,t7,t6
     878:	85ef0000 	lh	t7,0(t7)
     87c:	24050001 	li	a1,1
     880:	a68f0264 	sh	t7,612(s4)
     884:	86840264 	lh	a0,612(s4)
     888:	24840001 	addiu	a0,a0,1
     88c:	00042600 	sll	a0,a0,0x18
     890:	0c000000 	jal	0 <func_80813820>
     894:	00042603 	sra	a0,a0,0x18
     898:	24180002 	li	t8,2
     89c:	0c000000 	jal	0 <func_80813820>
     8a0:	a69801e4 	sh	t8,484(s4)
     8a4:	ae820194 	sw	v0,404(s4)
     8a8:	a0400002 	sb	zero,2(v0)
     8ac:	9699024a 	lhu	t9,586(s4)
     8b0:	02802025 	move	a0,s4
     8b4:	a7b90216 	sh	t9,534(sp)
     8b8:	87a50216 	lh	a1,534(sp)
     8bc:	8e860164 	lw	a2,356(s4)
     8c0:	00052880 	sll	a1,a1,0x2
     8c4:	0c000000 	jal	0 <func_80813820>
     8c8:	30a5ffff 	andi	a1,a1,0xffff
     8cc:	3c0f0000 	lui	t7,0x0
     8d0:	25f20000 	addiu	s2,t7,0
     8d4:	87b70216 	lh	s7,534(sp)
     8d8:	1000000c 	b	90c <func_80813820+0x90c>
     8dc:	241000ff 	li	s0,255
     8e0:	8690024a 	lh	s0,586(s4)
     8e4:	02802025 	move	a0,s4
     8e8:	8e860164 	lw	a2,356(s4)
     8ec:	00102880 	sll	a1,s0,0x2
     8f0:	0c000000 	jal	0 <func_80813820>
     8f4:	30a5ffff 	andi	a1,a1,0xffff
     8f8:	a7b00216 	sh	s0,534(sp)
     8fc:	3c120000 	lui	s2,0x0
     900:	26520000 	addiu	s2,s2,0
     904:	87b70216 	lh	s7,534(sp)
     908:	241000ff 	li	s0,255
     90c:	8e2502c0 	lw	a1,704(s1)
     910:	3c16e700 	lui	s6,0xe700
     914:	3c0efa00 	lui	t6,0xfa00
     918:	24b80008 	addiu	t8,a1,8
     91c:	ae3802c0 	sw	t8,704(s1)
     920:	aca00004 	sw	zero,4(a1)
     924:	acb60000 	sw	s6,0(a1)
     928:	8e2502c0 	lw	a1,704(s1)
     92c:	2401ff00 	li	at,-256
     930:	3c130000 	lui	s3,0x0
     934:	24b90008 	addiu	t9,a1,8
     938:	ae3902c0 	sw	t9,704(s1)
     93c:	acae0000 	sw	t6,0(a1)
     940:	968f0208 	lhu	t7,520(s4)
     944:	3c150000 	lui	s5,0x0
     948:	00004025 	move	t0,zero
     94c:	31f800ff 	andi	t8,t7,0xff
     950:	0301c825 	or	t9,t8,at
     954:	acb90004 	sw	t9,4(a1)
     958:	8e2502c0 	lw	a1,704(s1)
     95c:	3c18552e 	lui	t8,0x552e
     960:	3c0ffc30 	lui	t7,0xfc30
     964:	24ae0008 	addiu	t6,a1,8
     968:	ae2e02c0 	sw	t6,704(s1)
     96c:	35ef9661 	ori	t7,t7,0x9661
     970:	3718ff7f 	ori	t8,t8,0xff7f
     974:	acb80004 	sw	t8,4(a1)
     978:	acaf0000 	sw	t7,0(a1)
     97c:	86730000 	lh	s3,0(s3)
     980:	a7b70216 	sh	s7,534(sp)
     984:	24170001 	li	s7,1
     988:	2673ffff 	addiu	s3,s3,-1
     98c:	00139c00 	sll	s3,s3,0x10
     990:	00139c03 	sra	s3,s3,0x10
     994:	86b50000 	lh	s5,0(s5)
     998:	00004825 	move	t1,zero
     99c:	241e0003 	li	s8,3
     9a0:	3c190000 	lui	t9,0x0
     9a4:	8f3900a4 	lw	t9,164(t9)
     9a8:	12b70094 	beq	s5,s7,bfc <func_80813820+0xbfc>
     9ac:	afb90078 	sw	t9,120(sp)
     9b0:	52be0093 	beql	s5,s8,c00 <func_80813820+0xc00>
     9b4:	00081880 	sll	v1,t0,0x2
     9b8:	12a00005 	beqz	s5,9d0 <func_80813820+0x9d0>
     9bc:	00081c00 	sll	v1,t0,0x10
     9c0:	25030006 	addiu	v1,t0,6
     9c4:	00031c00 	sll	v1,v1,0x10
     9c8:	10000002 	b	9d4 <func_80813820+0x9d4>
     9cc:	00031c03 	sra	v1,v1,0x10
     9d0:	00031c03 	sra	v1,v1,0x10
     9d4:	12600077 	beqz	s3,bb4 <func_80813820+0xbb4>
     9d8:	00083040 	sll	a2,t0,0x1
     9dc:	00037880 	sll	t7,v1,0x2
     9e0:	01e37823 	subu	t7,t7,v1
     9e4:	3c0e0000 	lui	t6,0x0
     9e8:	3c180000 	lui	t8,0x0
     9ec:	27180000 	addiu	t8,t8,0
     9f0:	25ce0000 	addiu	t6,t6,0
     9f4:	000f7840 	sll	t7,t7,0x1
     9f8:	00083040 	sll	a2,t0,0x1
     9fc:	00ce5821 	addu	t3,a2,t6
     a00:	01f81021 	addu	v0,t7,t8
     a04:	845f0000 	lh	ra,0(v0)
     a08:	85650000 	lh	a1,0(t3)
     a0c:	3c0e0000 	lui	t6,0x0
     a10:	25ce0000 	addiu	t6,t6,0
     a14:	00bf2023 	subu	a0,a1,ra
     a18:	04800003 	bltz	a0,a28 <func_80813820+0xa28>
     a1c:	00ce6021 	addu	t4,a2,t6
     a20:	10000002 	b	a2c <func_80813820+0xa2c>
     a24:	00805025 	move	t2,a0
     a28:	00045023 	negu	t2,a0
     a2c:	0153001a 	div	zero,t2,s3
     a30:	85840000 	lh	a0,0(t4)
     a34:	84500002 	lh	s0,2(v0)
     a38:	0000c812 	mflo	t9
     a3c:	a7b90226 	sh	t9,550(sp)
     a40:	16600002 	bnez	s3,a4c <func_80813820+0xa4c>
     a44:	00000000 	nop
     a48:	0007000d 	break	0x7
     a4c:	2401ffff 	li	at,-1
     a50:	16610004 	bne	s3,at,a64 <func_80813820+0xa64>
     a54:	3c018000 	lui	at,0x8000
     a58:	15410002 	bne	t2,at,a64 <func_80813820+0xa64>
     a5c:	00000000 	nop
     a60:	0006000d 	break	0x6
     a64:	00901823 	subu	v1,a0,s0
     a68:	04600003 	bltz	v1,a78 <func_80813820+0xa78>
     a6c:	3c180000 	lui	t8,0x0
     a70:	10000002 	b	a7c <func_80813820+0xa7c>
     a74:	00605025 	move	t2,v1
     a78:	00035023 	negu	t2,v1
     a7c:	0153001a 	div	zero,t2,s3
     a80:	27180000 	addiu	t8,t8,0
     a84:	00d86821 	addu	t5,a2,t8
     a88:	85a70000 	lh	a3,0(t5)
     a8c:	84520004 	lh	s2,4(v0)
     a90:	16600002 	bnez	s3,a9c <func_80813820+0xa9c>
     a94:	00000000 	nop
     a98:	0007000d 	break	0x7
     a9c:	2401ffff 	li	at,-1
     aa0:	16610004 	bne	s3,at,ab4 <func_80813820+0xab4>
     aa4:	3c018000 	lui	at,0x8000
     aa8:	15410002 	bne	t2,at,ab4 <func_80813820+0xab4>
     aac:	00000000 	nop
     ab0:	0006000d 	break	0x6
     ab4:	00007812 	mflo	t7
     ab8:	00f21823 	subu	v1,a3,s2
     abc:	a7af0224 	sh	t7,548(sp)
     ac0:	04600004 	bltz	v1,ad4 <func_80813820+0xad4>
     ac4:	00bf082a 	slt	at,a1,ra
     ac8:	87a60224 	lh	a2,548(sp)
     acc:	10000003 	b	adc <func_80813820+0xadc>
     ad0:	00605025 	move	t2,v1
     ad4:	87a60224 	lh	a2,548(sp)
     ad8:	00035023 	negu	t2,v1
     adc:	54200006 	bnezl	at,af8 <func_80813820+0xaf8>
     ae0:	87af0226 	lh	t7,550(sp)
     ae4:	87b90226 	lh	t9,550(sp)
     ae8:	00b97023 	subu	t6,a1,t9
     aec:	10000004 	b	b00 <func_80813820+0xb00>
     af0:	a56e0000 	sh	t6,0(t3)
     af4:	87af0226 	lh	t7,550(sp)
     af8:	00afc021 	addu	t8,a1,t7
     afc:	a5780000 	sh	t8,0(t3)
     b00:	0090082a 	slt	at,a0,s0
     b04:	54200005 	bnezl	at,b1c <func_80813820+0xb1c>
     b08:	00867021 	addu	t6,a0,a2
     b0c:	0086c823 	subu	t9,a0,a2
     b10:	10000003 	b	b20 <func_80813820+0xb20>
     b14:	a5990000 	sh	t9,0(t4)
     b18:	00867021 	addu	t6,a0,a2
     b1c:	a58e0000 	sh	t6,0(t4)
     b20:	00f2082a 	slt	at,a3,s2
     b24:	14200012 	bnez	at,b70 <func_80813820+0xb70>
     b28:	00000000 	nop
     b2c:	0153001a 	div	zero,t2,s3
     b30:	00007812 	mflo	t7
     b34:	000fc400 	sll	t8,t7,0x10
     b38:	0018cc03 	sra	t9,t8,0x10
     b3c:	00f97023 	subu	t6,a3,t9
     b40:	16600002 	bnez	s3,b4c <func_80813820+0xb4c>
     b44:	00000000 	nop
     b48:	0007000d 	break	0x7
     b4c:	2401ffff 	li	at,-1
     b50:	16610004 	bne	s3,at,b64 <func_80813820+0xb64>
     b54:	3c018000 	lui	at,0x8000
     b58:	15410002 	bne	t2,at,b64 <func_80813820+0xb64>
     b5c:	00000000 	nop
     b60:	0006000d 	break	0x6
     b64:	a5ae0000 	sh	t6,0(t5)
     b68:	10000025 	b	c00 <func_80813820+0xc00>
     b6c:	00081880 	sll	v1,t0,0x2
     b70:	0153001a 	div	zero,t2,s3
     b74:	00007812 	mflo	t7
     b78:	000fc400 	sll	t8,t7,0x10
     b7c:	0018cc03 	sra	t9,t8,0x10
     b80:	00f97021 	addu	t6,a3,t9
     b84:	16600002 	bnez	s3,b90 <func_80813820+0xb90>
     b88:	00000000 	nop
     b8c:	0007000d 	break	0x7
     b90:	2401ffff 	li	at,-1
     b94:	16610004 	bne	s3,at,ba8 <func_80813820+0xba8>
     b98:	3c018000 	lui	at,0x8000
     b9c:	15410002 	bne	t2,at,ba8 <func_80813820+0xba8>
     ba0:	00000000 	nop
     ba4:	0006000d 	break	0x6
     ba8:	a5ae0000 	sh	t6,0(t5)
     bac:	10000014 	b	c00 <func_80813820+0xc00>
     bb0:	00081880 	sll	v1,t0,0x2
     bb4:	00037880 	sll	t7,v1,0x2
     bb8:	01e37823 	subu	t7,t7,v1
     bbc:	3c180000 	lui	t8,0x0
     bc0:	27180000 	addiu	t8,t8,0
     bc4:	000f7840 	sll	t7,t7,0x1
     bc8:	01f81021 	addu	v0,t7,t8
     bcc:	84590000 	lh	t9,0(v0)
     bd0:	3c010000 	lui	at,0x0
     bd4:	00260821 	addu	at,at,a2
     bd8:	a4390000 	sh	t9,0(at)
     bdc:	844e0002 	lh	t6,2(v0)
     be0:	3c010000 	lui	at,0x0
     be4:	00260821 	addu	at,at,a2
     be8:	a42e0000 	sh	t6,0(at)
     bec:	844f0004 	lh	t7,4(v0)
     bf0:	3c010000 	lui	at,0x0
     bf4:	00260821 	addu	at,at,a2
     bf8:	a42f0000 	sh	t7,0(at)
     bfc:	00081880 	sll	v1,t0,0x2
     c00:	3c180000 	lui	t8,0x0
     c04:	0303c021 	addu	t8,t8,v1
     c08:	8f180000 	lw	t8,0(t8)
     c0c:	8fb90078 	lw	t9,120(sp)
     c10:	3c0f0000 	lui	t7,0x0
     c14:	3c010000 	lui	at,0x0
     c18:	03197024 	and	t6,t8,t9
     c1c:	11c00043 	beqz	t6,d2c <func_80813820+0xd2c>
     c20:	25ef0000 	addiu	t7,t7,0
     c24:	a4330000 	sh	s3,0(at)
     c28:	8e2502c0 	lw	a1,704(s1)
     c2c:	00083040 	sll	a2,t0,0x1
     c30:	3c180000 	lui	t8,0x0
     c34:	24ae0008 	addiu	t6,a1,8
     c38:	ae2e02c0 	sw	t6,704(s1)
     c3c:	aca00004 	sw	zero,4(a1)
     c40:	acb60000 	sw	s6,0(a1)
     c44:	8e2502c0 	lw	a1,704(s1)
     c48:	27180000 	addiu	t8,t8,0
     c4c:	00cf5821 	addu	t3,a2,t7
     c50:	00d86021 	addu	t4,a2,t8
     c54:	3c190000 	lui	t9,0x0
     c58:	24af0008 	addiu	t7,a1,8
     c5c:	27390000 	addiu	t9,t9,0
     c60:	ae2f02c0 	sw	t7,704(s1)
     c64:	3c18fa00 	lui	t8,0xfa00
     c68:	00d96821 	addu	t5,a2,t9
     c6c:	acb80000 	sw	t8,0(a1)
     c70:	96990208 	lhu	t9,520(s4)
     c74:	2401ff00 	li	at,-256
     c78:	24060018 	li	a2,24
     c7c:	332e00ff 	andi	t6,t9,0xff
     c80:	01c17825 	or	t7,t6,at
     c84:	acaf0004 	sw	t7,4(a1)
     c88:	8e2502c0 	lw	a1,704(s1)
     c8c:	3c19fb00 	lui	t9,0xfb00
     c90:	02202025 	move	a0,s1
     c94:	24b80008 	addiu	t8,a1,8
     c98:	ae3802c0 	sw	t8,704(s1)
     c9c:	acb90000 	sw	t9,0(a1)
     ca0:	85ae0000 	lh	t6,0(t5)
     ca4:	24070018 	li	a3,24
     ca8:	31cf00ff 	andi	t7,t6,0xff
     cac:	856e0000 	lh	t6,0(t3)
     cb0:	000fc200 	sll	t8,t7,0x8
     cb4:	000e7e00 	sll	t7,t6,0x18
     cb8:	858e0000 	lh	t6,0(t4)
     cbc:	030fc825 	or	t9,t8,t7
     cc0:	31d800ff 	andi	t8,t6,0xff
     cc4:	00187c00 	sll	t7,t8,0x10
     cc8:	032f7025 	or	t6,t9,t7
     ccc:	acae0004 	sw	t6,4(a1)
     cd0:	8e2502c0 	lw	a1,704(s1)
     cd4:	3c190100 	lui	t9,0x100
     cd8:	37394008 	ori	t9,t9,0x4008
     cdc:	24b80008 	addiu	t8,a1,8
     ce0:	ae3802c0 	sw	t8,704(s1)
     ce4:	acb90000 	sw	t9,0(a1)
     ce8:	8e8f0164 	lw	t7,356(s4)
     cec:	00097100 	sll	t6,t1,0x4
     cf0:	01eec021 	addu	t8,t7,t6
     cf4:	acb80004 	sw	t8,4(a1)
     cf8:	3c050000 	lui	a1,0x0
     cfc:	00a32821 	addu	a1,a1,v1
     d00:	8ca50198 	lw	a1,408(a1)
     d04:	a7a9021a 	sh	t1,538(sp)
     d08:	a7a80218 	sh	t0,536(sp)
     d0c:	0c000000 	jal	0 <func_80813820>
     d10:	afa00010 	sw	zero,16(sp)
     d14:	3c150000 	lui	s5,0x0
     d18:	3c130000 	lui	s3,0x0
     d1c:	86730000 	lh	s3,0(s3)
     d20:	86b50000 	lh	s5,0(s5)
     d24:	87a80218 	lh	t0,536(sp)
     d28:	87a9021a 	lh	t1,538(sp)
     d2c:	25080001 	addiu	t0,t0,1
     d30:	00084400 	sll	t0,t0,0x10
     d34:	00084403 	sra	t0,t0,0x10
     d38:	25290004 	addiu	t1,t1,4
     d3c:	00094c00 	sll	t1,t1,0x10
     d40:	29010006 	slti	at,t0,6
     d44:	1420ff16 	bnez	at,9a0 <func_80813820+0x9a0>
     d48:	00094c03 	sra	t1,t1,0x10
     d4c:	3c010000 	lui	at,0x0
     d50:	16600011 	bnez	s3,d98 <func_80813820+0xd98>
     d54:	a4330000 	sh	s3,0(at)
     d58:	3c190000 	lui	t9,0x0
     d5c:	8f390000 	lw	t9,0(t9)
     d60:	00157840 	sll	t7,s5,0x1
     d64:	26b50001 	addiu	s5,s5,1
     d68:	032f7021 	addu	t6,t9,t7
     d6c:	85d3080e 	lh	s3,2062(t6)
     d70:	3c010000 	lui	at,0x0
     d74:	0015ac00 	sll	s5,s5,0x10
     d78:	a4330000 	sh	s3,0(at)
     d7c:	3c010000 	lui	at,0x0
     d80:	0015ac03 	sra	s5,s5,0x10
     d84:	a4350000 	sh	s5,0(at)
     d88:	2aa10004 	slti	at,s5,4
     d8c:	14200002 	bnez	at,d98 <func_80813820+0xd98>
     d90:	3c010000 	lui	at,0x0
     d94:	a4200000 	sh	zero,0(at)
     d98:	8e2502c0 	lw	a1,704(s1)
     d9c:	3c0ffa00 	lui	t7,0xfa00
     da0:	2401ff00 	li	at,-256
     da4:	24b80008 	addiu	t8,a1,8
     da8:	ae3802c0 	sw	t8,704(s1)
     dac:	aca00004 	sw	zero,4(a1)
     db0:	acb60000 	sw	s6,0(a1)
     db4:	8e2502c0 	lw	a1,704(s1)
     db8:	3c150700 	lui	s5,0x700
     dbc:	3c1ee600 	lui	s8,0xe600
     dc0:	24b90008 	addiu	t9,a1,8
     dc4:	ae3902c0 	sw	t9,704(s1)
     dc8:	acaf0000 	sw	t7,0(a1)
     dcc:	968e0208 	lhu	t6,520(s4)
     dd0:	3c17f200 	lui	s7,0xf200
     dd4:	3c0b0000 	lui	t3,0x0
     dd8:	31d800ff 	andi	t8,t6,0xff
     ddc:	0301c825 	or	t9,t8,at
     de0:	acb90004 	sw	t9,4(a1)
     de4:	8e2502c0 	lw	a1,704(s1)
     de8:	241800ff 	li	t8,255
     dec:	3c0efb00 	lui	t6,0xfb00
     df0:	24af0008 	addiu	t7,a1,8
     df4:	ae2f02c0 	sw	t7,704(s1)
     df8:	acb80004 	sw	t8,4(a1)
     dfc:	acae0000 	sw	t6,0(a1)
     e00:	8e2502c0 	lw	a1,704(s1)
     e04:	3c0e0809 	lui	t6,0x809
     e08:	25ce9440 	addiu	t6,t6,-27584
     e0c:	24b90008 	addiu	t9,a1,8
     e10:	ae3902c0 	sw	t9,704(s1)
     e14:	3c0ffd70 	lui	t7,0xfd70
     e18:	acaf0000 	sw	t7,0(a1)
     e1c:	acae0004 	sw	t6,4(a1)
     e20:	8e2502c0 	lw	a1,704(s1)
     e24:	3c19f570 	lui	t9,0xf570
     e28:	3c0a0000 	lui	t2,0x0
     e2c:	24b80008 	addiu	t8,a1,8
     e30:	ae3802c0 	sw	t8,704(s1)
     e34:	acb50004 	sw	s5,4(a1)
     e38:	acb90000 	sw	t9,0(a1)
     e3c:	8e2502c0 	lw	a1,704(s1)
     e40:	3c19070b 	lui	t9,0x70b
     e44:	3739f400 	ori	t9,t9,0xf400
     e48:	24af0008 	addiu	t7,a1,8
     e4c:	ae2f02c0 	sw	t7,704(s1)
     e50:	aca00004 	sw	zero,4(a1)
     e54:	acbe0000 	sw	s8,0(a1)
     e58:	8e2502c0 	lw	a1,704(s1)
     e5c:	3c18f300 	lui	t8,0xf300
     e60:	3c070000 	lui	a3,0x0
     e64:	24ae0008 	addiu	t6,a1,8
     e68:	ae2e02c0 	sw	t6,704(s1)
     e6c:	acb90004 	sw	t9,4(a1)
     e70:	acb80000 	sw	t8,0(a1)
     e74:	8e2502c0 	lw	a1,704(s1)
     e78:	3c18f568 	lui	t8,0xf568
     e7c:	37180400 	ori	t8,t8,0x400
     e80:	24af0008 	addiu	t7,a1,8
     e84:	ae2f02c0 	sw	t7,704(s1)
     e88:	aca00004 	sw	zero,4(a1)
     e8c:	acb60000 	sw	s6,0(a1)
     e90:	8e2502c0 	lw	a1,704(s1)
     e94:	3c0f0003 	lui	t7,0x3
     e98:	35efc05c 	ori	t7,t7,0xc05c
     e9c:	24ae0008 	addiu	t6,a1,8
     ea0:	ae2e02c0 	sw	t6,704(s1)
     ea4:	aca00004 	sw	zero,4(a1)
     ea8:	acb80000 	sw	t8,0(a1)
     eac:	8e2502c0 	lw	a1,704(s1)
     eb0:	24e70000 	addiu	a3,a3,0
     eb4:	254a0000 	addiu	t2,t2,0
     eb8:	24b90008 	addiu	t9,a1,8
     ebc:	ae3902c0 	sw	t9,704(s1)
     ec0:	256b0000 	addiu	t3,t3,0
     ec4:	00004025 	move	t0,zero
     ec8:	acaf0004 	sw	t7,4(a1)
     ecc:	acb70000 	sw	s7,0(a1)
     ed0:	00087080 	sll	t6,t0,0x2
     ed4:	3c180000 	lui	t8,0x0
     ed8:	030ec021 	addu	t8,t8,t6
     edc:	3c190000 	lui	t9,0x0
     ee0:	8f3900a4 	lw	t9,164(t9)
     ee4:	8f180018 	lw	t8,24(t8)
     ee8:	03197824 	and	t7,t8,t9
     eec:	11e00055 	beqz	t7,1044 <func_80813820+0x1044>
     ef0:	87b80216 	lh	t8,534(sp)
     ef4:	250e0006 	addiu	t6,t0,6
     ef8:	15d8002a 	bne	t6,t8,fa4 <func_80813820+0xfa4>
     efc:	00083040 	sll	a2,t0,0x1
     f00:	8e990164 	lw	t9,356(s4)
     f04:	00092100 	sll	a0,t1,0x4
     f08:	03241821 	addu	v1,t9,a0
     f0c:	84620000 	lh	v0,0(v1)
     f10:	2442fffe 	addiu	v0,v0,-2
     f14:	00021400 	sll	v0,v0,0x10
     f18:	00021403 	sra	v0,v0,0x10
     f1c:	a4620020 	sh	v0,32(v1)
     f20:	8e8f0164 	lw	t7,356(s4)
     f24:	01e47021 	addu	t6,t7,a0
     f28:	a5c20000 	sh	v0,0(t6)
     f2c:	8e980164 	lw	t8,356(s4)
     f30:	03041821 	addu	v1,t8,a0
     f34:	84620010 	lh	v0,16(v1)
     f38:	24420004 	addiu	v0,v0,4
     f3c:	00021400 	sll	v0,v0,0x10
     f40:	00021403 	sra	v0,v0,0x10
     f44:	a4620030 	sh	v0,48(v1)
     f48:	8e990164 	lw	t9,356(s4)
     f4c:	03247821 	addu	t7,t9,a0
     f50:	a5e20010 	sh	v0,16(t7)
     f54:	8e8e0164 	lw	t6,356(s4)
     f58:	01c41821 	addu	v1,t6,a0
     f5c:	84620002 	lh	v0,2(v1)
     f60:	24420002 	addiu	v0,v0,2
     f64:	00021400 	sll	v0,v0,0x10
     f68:	00021403 	sra	v0,v0,0x10
     f6c:	a4620012 	sh	v0,18(v1)
     f70:	8e980164 	lw	t8,356(s4)
     f74:	0304c821 	addu	t9,t8,a0
     f78:	a7220002 	sh	v0,2(t9)
     f7c:	8e8f0164 	lw	t7,356(s4)
     f80:	01e41821 	addu	v1,t7,a0
     f84:	84620022 	lh	v0,34(v1)
     f88:	2442fffc 	addiu	v0,v0,-4
     f8c:	00021400 	sll	v0,v0,0x10
     f90:	00021403 	sra	v0,v0,0x10
     f94:	a4620032 	sh	v0,50(v1)
     f98:	8e8e0164 	lw	t6,356(s4)
     f9c:	01c4c021 	addu	t8,t6,a0
     fa0:	a7020022 	sh	v0,34(t8)
     fa4:	8e2502c0 	lw	a1,704(s1)
     fa8:	3c0ffa00 	lui	t7,0xfa00
     fac:	00e67021 	addu	t6,a3,a2
     fb0:	24b90008 	addiu	t9,a1,8
     fb4:	ae3902c0 	sw	t9,704(s1)
     fb8:	acaf0000 	sw	t7,0(a1)
     fbc:	85d80000 	lh	t8,0(t6)
     fc0:	01467021 	addu	t6,t2,a2
     fc4:	00092100 	sll	a0,t1,0x4
     fc8:	331900ff 	andi	t9,t8,0xff
     fcc:	00197a00 	sll	t7,t9,0x8
     fd0:	85d90000 	lh	t9,0(t6)
     fd4:	00197600 	sll	t6,t9,0x18
     fd8:	01eec025 	or	t8,t7,t6
     fdc:	0166c821 	addu	t9,t3,a2
     fe0:	872f0000 	lh	t7,0(t9)
     fe4:	31ee00ff 	andi	t6,t7,0xff
     fe8:	000ecc00 	sll	t9,t6,0x10
     fec:	968e0208 	lhu	t6,520(s4)
     ff0:	03197825 	or	t7,t8,t9
     ff4:	31d800ff 	andi	t8,t6,0xff
     ff8:	01f8c825 	or	t9,t7,t8
     ffc:	acb90004 	sw	t9,4(a1)
    1000:	8e2502c0 	lw	a1,704(s1)
    1004:	3c0f0100 	lui	t7,0x100
    1008:	35ef4008 	ori	t7,t7,0x4008
    100c:	24ae0008 	addiu	t6,a1,8
    1010:	ae2e02c0 	sw	t6,704(s1)
    1014:	acaf0000 	sw	t7,0(a1)
    1018:	8e980164 	lw	t8,356(s4)
    101c:	3c0f0700 	lui	t7,0x700
    1020:	35ef0406 	ori	t7,t7,0x406
    1024:	0304c821 	addu	t9,t8,a0
    1028:	acb90004 	sw	t9,4(a1)
    102c:	8e2502c0 	lw	a1,704(s1)
    1030:	24180602 	li	t8,1538
    1034:	24ae0008 	addiu	t6,a1,8
    1038:	ae2e02c0 	sw	t6,704(s1)
    103c:	acb80004 	sw	t8,4(a1)
    1040:	acaf0000 	sw	t7,0(a1)
    1044:	25080001 	addiu	t0,t0,1
    1048:	00084400 	sll	t0,t0,0x10
    104c:	00084403 	sra	t0,t0,0x10
    1050:	25290004 	addiu	t1,t1,4
    1054:	00094c00 	sll	t1,t1,0x10
    1058:	2901000c 	slti	at,t0,12
    105c:	1420ff9c 	bnez	at,ed0 <func_80813820+0xed0>
    1060:	00094c03 	sra	t1,t1,0x10
    1064:	8e2502c0 	lw	a1,704(s1)
    1068:	3c0ffa00 	lui	t7,0xfa00
    106c:	2401ff00 	li	at,-256
    1070:	24b90008 	addiu	t9,a1,8
    1074:	ae3902c0 	sw	t9,704(s1)
    1078:	aca00004 	sw	zero,4(a1)
    107c:	acb60000 	sw	s6,0(a1)
    1080:	8e2502c0 	lw	a1,704(s1)
    1084:	00004025 	move	t0,zero
    1088:	24ae0008 	addiu	t6,a1,8
    108c:	ae2e02c0 	sw	t6,704(s1)
    1090:	acaf0000 	sw	t7,0(a1)
    1094:	96980208 	lhu	t8,520(s4)
    1098:	331900ff 	andi	t9,t8,0xff
    109c:	03217025 	or	t6,t9,at
    10a0:	acae0004 	sw	t6,4(a1)
    10a4:	8e2502c0 	lw	a1,704(s1)
    10a8:	241900ff 	li	t9,255
    10ac:	3c18fb00 	lui	t8,0xfb00
    10b0:	24af0008 	addiu	t7,a1,8
    10b4:	ae2f02c0 	sw	t7,704(s1)
    10b8:	acb90004 	sw	t9,4(a1)
    10bc:	acb80000 	sw	t8,0(a1)
    10c0:	00081880 	sll	v1,t0,0x2
    10c4:	3c0e0000 	lui	t6,0x0
    10c8:	01c37021 	addu	t6,t6,v1
    10cc:	3c0f0000 	lui	t7,0x0
    10d0:	8def00a4 	lw	t7,164(t7)
    10d4:	8dce0048 	lw	t6,72(t6)
    10d8:	02202025 	move	a0,s1
    10dc:	01cfc024 	and	t8,t6,t7
    10e0:	13000015 	beqz	t8,1138 <func_80813820+0x1138>
    10e4:	3c0e0100 	lui	t6,0x100
    10e8:	8e2502c0 	lw	a1,704(s1)
    10ec:	35ce4008 	ori	t6,t6,0x4008
    10f0:	0009c100 	sll	t8,t1,0x4
    10f4:	24b90008 	addiu	t9,a1,8
    10f8:	ae3902c0 	sw	t9,704(s1)
    10fc:	acae0000 	sw	t6,0(a1)
    1100:	8e8f0164 	lw	t7,356(s4)
    1104:	24060018 	li	a2,24
    1108:	24070018 	li	a3,24
    110c:	01f8c821 	addu	t9,t7,t8
    1110:	acb90004 	sw	t9,4(a1)
    1114:	3c050000 	lui	a1,0x0
    1118:	00a32821 	addu	a1,a1,v1
    111c:	8ca501b0 	lw	a1,432(a1)
    1120:	a7a9021a 	sh	t1,538(sp)
    1124:	a7a80218 	sh	t0,536(sp)
    1128:	0c000000 	jal	0 <func_80813820>
    112c:	afa00010 	sw	zero,16(sp)
    1130:	87a80218 	lh	t0,536(sp)
    1134:	87a9021a 	lh	t1,538(sp)
    1138:	25080001 	addiu	t0,t0,1
    113c:	00084400 	sll	t0,t0,0x10
    1140:	00084403 	sra	t0,t0,0x10
    1144:	25290004 	addiu	t1,t1,4
    1148:	00094c00 	sll	t1,t1,0x10
    114c:	29010003 	slti	at,t0,3
    1150:	1420ffdb 	bnez	at,10c0 <func_80813820+0x10c0>
    1154:	00094c03 	sra	t1,t1,0x10
    1158:	8e2502c0 	lw	a1,704(s1)
    115c:	3c18fa00 	lui	t8,0xfa00
    1160:	2401ff00 	li	at,-256
    1164:	24ae0008 	addiu	t6,a1,8
    1168:	ae2e02c0 	sw	t6,704(s1)
    116c:	aca00004 	sw	zero,4(a1)
    1170:	acb60000 	sw	s6,0(a1)
    1174:	8e2502c0 	lw	a1,704(s1)
    1178:	00004025 	move	t0,zero
    117c:	24af0008 	addiu	t7,a1,8
    1180:	ae2f02c0 	sw	t7,704(s1)
    1184:	acb80000 	sw	t8,0(a1)
    1188:	96990208 	lhu	t9,520(s4)
    118c:	3c180000 	lui	t8,0x0
    1190:	332e00ff 	andi	t6,t9,0xff
    1194:	01c17825 	or	t7,t6,at
    1198:	acaf0004 	sw	t7,4(a1)
    119c:	8f1800a4 	lw	t8,164(t8)
    11a0:	afb80078 	sw	t8,120(sp)
    11a4:	00081880 	sll	v1,t0,0x2
    11a8:	3c190000 	lui	t9,0x0
    11ac:	0323c821 	addu	t9,t9,v1
    11b0:	8f390054 	lw	t9,84(t9)
    11b4:	8fae0078 	lw	t6,120(sp)
    11b8:	032e7824 	and	t7,t9,t6
    11bc:	51e00025 	beqzl	t7,1254 <func_80813820+0x1254>
    11c0:	25080001 	addiu	t0,t0,1
    11c4:	8e2502c0 	lw	a1,704(s1)
    11c8:	3c190100 	lui	t9,0x100
    11cc:	37394008 	ori	t9,t9,0x4008
    11d0:	24b80008 	addiu	t8,a1,8
    11d4:	ae3802c0 	sw	t8,704(s1)
    11d8:	acb90000 	sw	t9,0(a1)
    11dc:	8e8e0164 	lw	t6,356(s4)
    11e0:	00097900 	sll	t7,t1,0x4
    11e4:	2401ff00 	li	at,-256
    11e8:	01cfc021 	addu	t8,t6,t7
    11ec:	acb80004 	sw	t8,4(a1)
    11f0:	8e2502c0 	lw	a1,704(s1)
    11f4:	3c0efa00 	lui	t6,0xfa00
    11f8:	02202025 	move	a0,s1
    11fc:	24b90008 	addiu	t9,a1,8
    1200:	ae3902c0 	sw	t9,704(s1)
    1204:	acae0000 	sw	t6,0(a1)
    1208:	968f0208 	lhu	t7,520(s4)
    120c:	24060018 	li	a2,24
    1210:	24070018 	li	a3,24
    1214:	31f800ff 	andi	t8,t7,0xff
    1218:	0301c825 	or	t9,t8,at
    121c:	acb90004 	sw	t9,4(a1)
    1220:	3c050000 	lui	a1,0x0
    1224:	00a32821 	addu	a1,a1,v1
    1228:	8ca501bc 	lw	a1,444(a1)
    122c:	a7a9021a 	sh	t1,538(sp)
    1230:	a7a80218 	sh	t0,536(sp)
    1234:	0c000000 	jal	0 <func_80813820>
    1238:	afa00010 	sw	zero,16(sp)
    123c:	3c0e0000 	lui	t6,0x0
    1240:	8dce00a4 	lw	t6,164(t6)
    1244:	87a80218 	lh	t0,536(sp)
    1248:	87a9021a 	lh	t1,538(sp)
    124c:	afae0078 	sw	t6,120(sp)
    1250:	25080001 	addiu	t0,t0,1
    1254:	00084400 	sll	t0,t0,0x10
    1258:	00084403 	sra	t0,t0,0x10
    125c:	25290004 	addiu	t1,t1,4
    1260:	00094c00 	sll	t1,t1,0x10
    1264:	29010003 	slti	at,t0,3
    1268:	1420ffce 	bnez	at,11a4 <func_80813820+0x11a4>
    126c:	00094c03 	sra	t1,t1,0x10
    1270:	3c0d0000 	lui	t5,0x0
    1274:	85ad0000 	lh	t5,0(t5)
    1278:	3c180000 	lui	t8,0x0
    127c:	27180000 	addiu	t8,t8,0
    1280:	000d78c0 	sll	t7,t5,0x3
    1284:	3c130000 	lui	s3,0x0
    1288:	01f81821 	addu	v1,t7,t8
    128c:	86730000 	lh	s3,0(s3)
    1290:	846c0000 	lh	t4,0(v1)
    1294:	3c040000 	lui	a0,0x0
    1298:	3c100000 	lui	s0,0x0
    129c:	026c1023 	subu	v0,s3,t4
    12a0:	04400003 	bltz	v0,12b0 <func_80813820+0x12b0>
    12a4:	3c120000 	lui	s2,0x0
    12a8:	10000002 	b	12b4 <func_80813820+0x12b4>
    12ac:	00405025 	move	t2,v0
    12b0:	00025023 	negu	t2,v0
    12b4:	84840000 	lh	a0,0(a0)
    12b8:	86100000 	lh	s0,0(s0)
    12bc:	846b0002 	lh	t3,2(v1)
    12c0:	0144001a 	div	zero,t2,a0
    12c4:	0000c812 	mflo	t9
    12c8:	020b1023 	subu	v0,s0,t3
    12cc:	14800002 	bnez	a0,12d8 <func_80813820+0x12d8>
    12d0:	00000000 	nop
    12d4:	0007000d 	break	0x7
    12d8:	2401ffff 	li	at,-1
    12dc:	14810004 	bne	a0,at,12f0 <func_80813820+0x12f0>
    12e0:	3c018000 	lui	at,0x8000
    12e4:	15410002 	bne	t2,at,12f0 <func_80813820+0x12f0>
    12e8:	00000000 	nop
    12ec:	0006000d 	break	0x6
    12f0:	a7b90226 	sh	t9,550(sp)
    12f4:	04400003 	bltz	v0,1304 <func_80813820+0x1304>
    12f8:	3c1f0000 	lui	ra,0x0
    12fc:	10000002 	b	1308 <func_80813820+0x1308>
    1300:	00405025 	move	t2,v0
    1304:	00025023 	negu	t2,v0
    1308:	0144001a 	div	zero,t2,a0
    130c:	86520000 	lh	s2,0(s2)
    1310:	84680004 	lh	t0,4(v1)
    1314:	00003012 	mflo	a2
    1318:	00063400 	sll	a2,a2,0x10
    131c:	14800002 	bnez	a0,1328 <func_80813820+0x1328>
    1320:	00000000 	nop
    1324:	0007000d 	break	0x7
    1328:	2401ffff 	li	at,-1
    132c:	14810004 	bne	a0,at,1340 <func_80813820+0x1340>
    1330:	3c018000 	lui	at,0x8000
    1334:	15410002 	bne	t2,at,1340 <func_80813820+0x1340>
    1338:	00000000 	nop
    133c:	0006000d 	break	0x6
    1340:	02481023 	subu	v0,s2,t0
    1344:	04400003 	bltz	v0,1354 <func_80813820+0x1354>
    1348:	00063403 	sra	a2,a2,0x10
    134c:	10000002 	b	1358 <func_80813820+0x1358>
    1350:	00405025 	move	t2,v0
    1354:	00025023 	negu	t2,v0
    1358:	0144001a 	div	zero,t2,a0
    135c:	87ff0000 	lh	ra,0(ra)
    1360:	84650006 	lh	a1,6(v1)
    1364:	00003812 	mflo	a3
    1368:	00073c00 	sll	a3,a3,0x10
    136c:	14800002 	bnez	a0,1378 <func_80813820+0x1378>
    1370:	00000000 	nop
    1374:	0007000d 	break	0x7
    1378:	2401ffff 	li	at,-1
    137c:	14810004 	bne	a0,at,1390 <func_80813820+0x1390>
    1380:	3c018000 	lui	at,0x8000
    1384:	15410002 	bne	t2,at,1390 <func_80813820+0x1390>
    1388:	00000000 	nop
    138c:	0006000d 	break	0x6
    1390:	03e51023 	subu	v0,ra,a1
    1394:	04400003 	bltz	v0,13a4 <func_80813820+0x13a4>
    1398:	00073c03 	sra	a3,a3,0x10
    139c:	10000002 	b	13a8 <func_80813820+0x13a8>
    13a0:	00405025 	move	t2,v0
    13a4:	00025023 	negu	t2,v0
    13a8:	026c082a 	slt	at,s3,t4
    13ac:	54200007 	bnezl	at,13cc <func_80813820+0x13cc>
    13b0:	87af0226 	lh	t7,550(sp)
    13b4:	87ae0226 	lh	t6,550(sp)
    13b8:	026e9823 	subu	s3,s3,t6
    13bc:	00139c00 	sll	s3,s3,0x10
    13c0:	10000005 	b	13d8 <func_80813820+0x13d8>
    13c4:	00139c03 	sra	s3,s3,0x10
    13c8:	87af0226 	lh	t7,550(sp)
    13cc:	026f9821 	addu	s3,s3,t7
    13d0:	00139c00 	sll	s3,s3,0x10
    13d4:	00139c03 	sra	s3,s3,0x10
    13d8:	020b082a 	slt	at,s0,t3
    13dc:	54200006 	bnezl	at,13f8 <func_80813820+0x13f8>
    13e0:	02068021 	addu	s0,s0,a2
    13e4:	02068023 	subu	s0,s0,a2
    13e8:	00108400 	sll	s0,s0,0x10
    13ec:	10000004 	b	1400 <func_80813820+0x1400>
    13f0:	00108403 	sra	s0,s0,0x10
    13f4:	02068021 	addu	s0,s0,a2
    13f8:	00108400 	sll	s0,s0,0x10
    13fc:	00108403 	sra	s0,s0,0x10
    1400:	0248082a 	slt	at,s2,t0
    1404:	54200006 	bnezl	at,1420 <func_80813820+0x1420>
    1408:	02479021 	addu	s2,s2,a3
    140c:	02479023 	subu	s2,s2,a3
    1410:	00129400 	sll	s2,s2,0x10
    1414:	10000004 	b	1428 <func_80813820+0x1428>
    1418:	00129403 	sra	s2,s2,0x10
    141c:	02479021 	addu	s2,s2,a3
    1420:	00129400 	sll	s2,s2,0x10
    1424:	00129403 	sra	s2,s2,0x10
    1428:	03e5082a 	slt	at,ra,a1
    142c:	14200013 	bnez	at,147c <func_80813820+0x147c>
    1430:	24060030 	li	a2,48
    1434:	0144001a 	div	zero,t2,a0
    1438:	0000c012 	mflo	t8
    143c:	0018cc00 	sll	t9,t8,0x10
    1440:	00197403 	sra	t6,t9,0x10
    1444:	03eef823 	subu	ra,ra,t6
    1448:	001ffc00 	sll	ra,ra,0x10
    144c:	14800002 	bnez	a0,1458 <func_80813820+0x1458>
    1450:	00000000 	nop
    1454:	0007000d 	break	0x7
    1458:	2401ffff 	li	at,-1
    145c:	14810004 	bne	a0,at,1470 <func_80813820+0x1470>
    1460:	3c018000 	lui	at,0x8000
    1464:	15410002 	bne	t2,at,1470 <func_80813820+0x1470>
    1468:	00000000 	nop
    146c:	0006000d 	break	0x6
    1470:	001ffc03 	sra	ra,ra,0x10
    1474:	10000012 	b	14c0 <func_80813820+0x14c0>
    1478:	2484ffff 	addiu	a0,a0,-1
    147c:	0144001a 	div	zero,t2,a0
    1480:	00007812 	mflo	t7
    1484:	000fc400 	sll	t8,t7,0x10
    1488:	0018cc03 	sra	t9,t8,0x10
    148c:	03f9f821 	addu	ra,ra,t9
    1490:	001ffc00 	sll	ra,ra,0x10
    1494:	001ffc03 	sra	ra,ra,0x10
    1498:	14800002 	bnez	a0,14a4 <func_80813820+0x14a4>
    149c:	00000000 	nop
    14a0:	0007000d 	break	0x7
    14a4:	2401ffff 	li	at,-1
    14a8:	14810004 	bne	a0,at,14bc <func_80813820+0x14bc>
    14ac:	3c018000 	lui	at,0x8000
    14b0:	15410002 	bne	t2,at,14bc <func_80813820+0x14bc>
    14b4:	00000000 	nop
    14b8:	0006000d 	break	0x6
    14bc:	2484ffff 	addiu	a0,a0,-1
    14c0:	00042400 	sll	a0,a0,0x10
    14c4:	00042403 	sra	a0,a0,0x10
    14c8:	3c010000 	lui	at,0x0
    14cc:	14800019 	bnez	a0,1534 <func_80813820+0x1534>
    14d0:	a4240000 	sh	a0,0(at)
    14d4:	3c0e0000 	lui	t6,0x0
    14d8:	8dce0000 	lw	t6,0(t6)
    14dc:	000d7840 	sll	t7,t5,0x1
    14e0:	25ad0001 	addiu	t5,t5,1
    14e4:	01cfc021 	addu	t8,t6,t7
    14e8:	870407c4 	lh	a0,1988(t8)
    14ec:	3c010000 	lui	at,0x0
    14f0:	000d6c00 	sll	t5,t5,0x10
    14f4:	a4240000 	sh	a0,0(at)
    14f8:	3c010000 	lui	at,0x0
    14fc:	000d6c03 	sra	t5,t5,0x10
    1500:	a42d0000 	sh	t5,0(at)
    1504:	000c9c00 	sll	s3,t4,0x10
    1508:	000b8400 	sll	s0,t3,0x10
    150c:	00089400 	sll	s2,t0,0x10
    1510:	0005fc00 	sll	ra,a1,0x10
    1514:	29a10004 	slti	at,t5,4
    1518:	00139c03 	sra	s3,s3,0x10
    151c:	00108403 	sra	s0,s0,0x10
    1520:	00129403 	sra	s2,s2,0x10
    1524:	14200003 	bnez	at,1534 <func_80813820+0x1534>
    1528:	001ffc03 	sra	ra,ra,0x10
    152c:	3c010000 	lui	at,0x0
    1530:	a4200000 	sh	zero,0(at)
    1534:	3c010000 	lui	at,0x0
    1538:	a43f0000 	sh	ra,0(at)
    153c:	3c010000 	lui	at,0x0
    1540:	8fb90078 	lw	t9,120(sp)
    1544:	a4300000 	sh	s0,0(at)
    1548:	3c010000 	lui	at,0x0
    154c:	a4320000 	sh	s2,0(at)
    1550:	3c010000 	lui	at,0x0
    1554:	00197702 	srl	t6,t9,0x1c
    1558:	11c00073 	beqz	t6,1728 <func_80813820+0x1728>
    155c:	a4330000 	sh	s3,0(at)
    1560:	8e2502c0 	lw	a1,704(s1)
    1564:	3c19fc30 	lui	t9,0xfc30
    1568:	3c0e552e 	lui	t6,0x552e
    156c:	24af0008 	addiu	t7,a1,8
    1570:	ae2f02c0 	sw	t7,704(s1)
    1574:	aca00004 	sw	zero,4(a1)
    1578:	acb60000 	sw	s6,0(a1)
    157c:	8e2502c0 	lw	a1,704(s1)
    1580:	35ceff7f 	ori	t6,t6,0xff7f
    1584:	37399661 	ori	t9,t9,0x9661
    1588:	24b80008 	addiu	t8,a1,8
    158c:	ae3802c0 	sw	t8,704(s1)
    1590:	acae0004 	sw	t6,4(a1)
    1594:	acb90000 	sw	t9,0(a1)
    1598:	968201d4 	lhu	v0,468(s4)
    159c:	3c010000 	lui	at,0x0
    15a0:	a43f0000 	sh	ra,0(at)
    15a4:	3c010000 	lui	at,0x0
    15a8:	a4300000 	sh	s0,0(at)
    15ac:	3c010000 	lui	at,0x0
    15b0:	a4320000 	sh	s2,0(at)
    15b4:	3c010000 	lui	at,0x0
    15b8:	a4330000 	sh	s3,0(at)
    15bc:	24010004 	li	at,4
    15c0:	1041000c 	beq	v0,at,15f4 <func_80813820+0x15f4>
    15c4:	24070030 	li	a3,48
    15c8:	24010012 	li	at,18
    15cc:	1441001f 	bne	v0,at,164c <func_80813820+0x164c>
    15d0:	3c19fa00 	lui	t9,0xfa00
    15d4:	3c010000 	lui	at,0x0
    15d8:	a4330000 	sh	s3,0(at)
    15dc:	3c010000 	lui	at,0x0
    15e0:	a4320000 	sh	s2,0(at)
    15e4:	3c010000 	lui	at,0x0
    15e8:	a4300000 	sh	s0,0(at)
    15ec:	3c010000 	lui	at,0x0
    15f0:	a43f0000 	sh	ra,0(at)
    15f4:	8e2502c0 	lw	a1,704(s1)
    15f8:	3c030000 	lui	v1,0x0
    15fc:	3c18fa00 	lui	t8,0xfa00
    1600:	24af0008 	addiu	t7,a1,8
    1604:	ae2f02c0 	sw	t7,704(s1)
    1608:	24630000 	addiu	v1,v1,0
    160c:	acb80000 	sw	t8,0(a1)
    1610:	84790004 	lh	t9,4(v1)
    1614:	332e00ff 	andi	t6,t9,0xff
    1618:	84790000 	lh	t9,0(v1)
    161c:	000e7a00 	sll	t7,t6,0x8
    1620:	00197600 	sll	t6,t9,0x18
    1624:	84790002 	lh	t9,2(v1)
    1628:	01eec025 	or	t8,t7,t6
    162c:	332f00ff 	andi	t7,t9,0xff
    1630:	000f7400 	sll	t6,t7,0x10
    1634:	968f0208 	lhu	t7,520(s4)
    1638:	030ec825 	or	t9,t8,t6
    163c:	31f800ff 	andi	t8,t7,0xff
    1640:	03387025 	or	t6,t9,t8
    1644:	10000017 	b	16a4 <func_80813820+0x16a4>
    1648:	acae0004 	sw	t6,4(a1)
    164c:	8e2502c0 	lw	a1,704(s1)
    1650:	00137600 	sll	t6,s3,0x18
    1654:	3c010000 	lui	at,0x0
    1658:	24af0008 	addiu	t7,a1,8
    165c:	ae2f02c0 	sw	t7,704(s1)
    1660:	320f00ff 	andi	t7,s0,0xff
    1664:	acb90000 	sw	t9,0(a1)
    1668:	000fcc00 	sll	t9,t7,0x10
    166c:	01d9c025 	or	t8,t6,t9
    1670:	324f00ff 	andi	t7,s2,0xff
    1674:	000f7200 	sll	t6,t7,0x8
    1678:	030ec825 	or	t9,t8,t6
    167c:	33ef00ff 	andi	t7,ra,0xff
    1680:	032fc025 	or	t8,t9,t7
    1684:	acb80004 	sw	t8,4(a1)
    1688:	a43f0000 	sh	ra,0(at)
    168c:	3c010000 	lui	at,0x0
    1690:	a4300000 	sh	s0,0(at)
    1694:	3c010000 	lui	at,0x0
    1698:	a4320000 	sh	s2,0(at)
    169c:	3c010000 	lui	at,0x0
    16a0:	a4330000 	sh	s3,0(at)
    16a4:	8e2502c0 	lw	a1,704(s1)
    16a8:	3c19fb00 	lui	t9,0xfb00
    16ac:	240f00ff 	li	t7,255
    16b0:	24ae0008 	addiu	t6,a1,8
    16b4:	ae2e02c0 	sw	t6,704(s1)
    16b8:	acaf0004 	sw	t7,4(a1)
    16bc:	acb90000 	sw	t9,0(a1)
    16c0:	8e2502c0 	lw	a1,704(s1)
    16c4:	3c0e0100 	lui	t6,0x100
    16c8:	35ce4008 	ori	t6,t6,0x4008
    16cc:	24b80008 	addiu	t8,a1,8
    16d0:	ae3802c0 	sw	t8,704(s1)
    16d4:	acae0000 	sw	t6,0(a1)
    16d8:	8e990164 	lw	t9,356(s4)
    16dc:	00097900 	sll	t7,t1,0x4
    16e0:	3c0e0000 	lui	t6,0x0
    16e4:	032fc021 	addu	t8,t9,t7
    16e8:	acb80004 	sw	t8,4(a1)
    16ec:	8dce00a4 	lw	t6,164(t6)
    16f0:	3c01f000 	lui	at,0xf000
    16f4:	3c050000 	lui	a1,0x0
    16f8:	01c1c824 	and	t9,t6,at
    16fc:	03217824 	and	t7,t9,at
    1700:	000fc702 	srl	t8,t7,0x1c
    1704:	00187080 	sll	t6,t8,0x2
    1708:	00ae2821 	addu	a1,a1,t6
    170c:	8e2402c0 	lw	a0,704(s1)
    1710:	a7a9021a 	sh	t1,538(sp)
    1714:	afa00010 	sw	zero,16(sp)
    1718:	0c000000 	jal	0 <func_80813820>
    171c:	8ca501e4 	lw	a1,484(a1)
    1720:	87a9021a 	lh	t1,538(sp)
    1724:	ae2202c0 	sw	v0,704(s1)
    1728:	969901d4 	lhu	t9,468(s4)
    172c:	24010006 	li	at,6
    1730:	1721027f 	bne	t9,at,2130 <func_80813820+0x2130>
    1734:	00000000 	nop
    1738:	8e2502c0 	lw	a1,704(s1)
    173c:	3c0efc11 	lui	t6,0xfc11
    1740:	3c19ff2f 	lui	t9,0xff2f
    1744:	24af0008 	addiu	t7,a1,8
    1748:	ae2f02c0 	sw	t7,704(s1)
    174c:	aca00004 	sw	zero,4(a1)
    1750:	acb60000 	sw	s6,0(a1)
    1754:	8e2502c0 	lw	a1,704(s1)
    1758:	3739ffff 	ori	t9,t9,0xffff
    175c:	35ce9623 	ori	t6,t6,0x9623
    1760:	24b80008 	addiu	t8,a1,8
    1764:	ae3802c0 	sw	t8,704(s1)
    1768:	acb90004 	sw	t9,4(a1)
    176c:	acae0000 	sw	t6,0(a1)
    1770:	868f0238 	lh	t7,568(s4)
    1774:	25290004 	addiu	t1,t1,4
    1778:	00094c00 	sll	t1,t1,0x10
    177c:	15e0001d 	bnez	t7,17f4 <func_80813820+0x17f4>
    1780:	00094c03 	sra	t1,t1,0x10
    1784:	87a20216 	lh	v0,534(sp)
    1788:	28410006 	slti	at,v0,6
    178c:	14200019 	bnez	at,17f4 <func_80813820+0x17f4>
    1790:	28410012 	slti	at,v0,18
    1794:	50200018 	beqzl	at,17f8 <func_80813820+0x17f8>
    1798:	968201e4 	lhu	v0,484(s4)
    179c:	968201e4 	lhu	v0,484(s4)
    17a0:	28410003 	slti	at,v0,3
    17a4:	14200005 	bnez	at,17bc <func_80813820+0x17bc>
    17a8:	24010005 	li	at,5
    17ac:	10410003 	beq	v0,at,17bc <func_80813820+0x17bc>
    17b0:	24010008 	li	at,8
    17b4:	54410010 	bnel	v0,at,17f8 <func_80813820+0x17f8>
    17b8:	968201e4 	lhu	v0,484(s4)
    17bc:	969801e8 	lhu	t8,488(s4)
    17c0:	240103e7 	li	at,999
    17c4:	00187040 	sll	t6,t8,0x1
    17c8:	028ec821 	addu	t9,s4,t6
    17cc:	972f023e 	lhu	t7,574(t9)
    17d0:	24180008 	li	t8,8
    17d4:	11e10007 	beq	t7,at,17f4 <func_80813820+0x17f4>
    17d8:	28410002 	slti	at,v0,2
    17dc:	14200005 	bnez	at,17f4 <func_80813820+0x17f4>
    17e0:	a6980260 	sh	t8,608(s4)
    17e4:	28410007 	slti	at,v0,7
    17e8:	50200003 	beqzl	at,17f8 <func_80813820+0x17f8>
    17ec:	968201e4 	lhu	v0,484(s4)
    17f0:	a6800260 	sh	zero,608(s4)
    17f4:	968201e4 	lhu	v0,484(s4)
    17f8:	24010002 	li	at,2
    17fc:	544100b9 	bnel	v0,at,1ae4 <func_80813820+0x1ae4>
    1800:	28410004 	slti	at,v0,4
    1804:	0c000000 	jal	0 <func_80813820>
    1808:	a7a9021a 	sh	t1,538(sp)
    180c:	87a9021a 	lh	t1,538(sp)
    1810:	ae820194 	sw	v0,404(s4)
    1814:	904e0002 	lbu	t6,2(v0)
    1818:	3c190000 	lui	t9,0x0
    181c:	00004025 	move	t0,zero
    1820:	11c00243 	beqz	t6,2130 <func_80813820+0x2130>
    1824:	00009825 	move	s3,zero
    1828:	87390000 	lh	t9,0(t9)
    182c:	90430002 	lbu	v1,2(v0)
    1830:	3c120000 	lui	s2,0x0
    1834:	272f0001 	addiu	t7,t9,1
    1838:	15e30007 	bne	t7,v1,1858 <func_80813820+0x1858>
    183c:	26520000 	addiu	s2,s2,0
    1840:	3c010000 	lui	at,0x0
    1844:	a42f0000 	sh	t7,0(at)
    1848:	90580000 	lbu	t8,0(v0)
    184c:	3c010000 	lui	at,0x0
    1850:	00230821 	addu	at,at,v1
    1854:	a0380000 	sb	t8,0(at)
    1858:	3c100a0a 	lui	s0,0xa0a
    185c:	3c1f0003 	lui	ra,0x3
    1860:	3c0d0707 	lui	t5,0x707
    1864:	3c0cffff 	lui	t4,0xffff
    1868:	3c0b50ff 	lui	t3,0x50ff
    186c:	356b9600 	ori	t3,t3,0x9600
    1870:	358c3200 	ori	t4,t4,0x3200
    1874:	35adf400 	ori	t5,t5,0xf400
    1878:	37ffc03c 	ori	ra,ra,0xc03c
    187c:	36100a00 	ori	s0,s0,0xa00
    1880:	240a00ff 	li	t2,255
    1884:	3c0e0000 	lui	t6,0x0
    1888:	25ce0000 	addiu	t6,t6,0
    188c:	010e3821 	addu	a3,t0,t6
    1890:	90e50000 	lbu	a1,0(a3)
    1894:	3c0f0000 	lui	t7,0x0
    1898:	25ef0000 	addiu	t7,t7,0
    189c:	11450224 	beq	t2,a1,2130 <func_80813820+0x2130>
    18a0:	0008c840 	sll	t9,t0,0x1
    18a4:	032f3021 	addu	a2,t9,t7
    18a8:	84c20000 	lh	v0,0(a2)
    18ac:	3c180000 	lui	t8,0x0
    18b0:	1142000a 	beq	t2,v0,18dc <func_80813820+0x18dc>
    18b4:	00000000 	nop
    18b8:	8f180000 	lw	t8,0(t8)
    18bc:	870e0f78 	lh	t6,3960(t8)
    18c0:	004ec821 	addu	t9,v0,t6
    18c4:	a4d90000 	sh	t9,0(a2)
    18c8:	84cf0000 	lh	t7,0(a2)
    18cc:	29e100ff 	slti	at,t7,255
    18d0:	14200002 	bnez	at,18dc <func_80813820+0x18dc>
    18d4:	00000000 	nop
    18d8:	a4ca0000 	sh	t2,0(a2)
    18dc:	3c180000 	lui	t8,0x0
    18e0:	8f180000 	lw	t8,0(t8)
    18e4:	00057040 	sll	t6,a1,0x1
    18e8:	8e8f0164 	lw	t7,356(s4)
    18ec:	030ec821 	addu	t9,t8,t6
    18f0:	87220f3e 	lh	v0,3902(t9)
    18f4:	00092100 	sll	a0,t1,0x4
    18f8:	01e4c021 	addu	t8,t7,a0
    18fc:	a7020012 	sh	v0,18(t8)
    1900:	8e8e0164 	lw	t6,356(s4)
    1904:	01c4c821 	addu	t9,t6,a0
    1908:	a7220002 	sh	v0,2(t9)
    190c:	8e8f0164 	lw	t7,356(s4)
    1910:	01e41821 	addu	v1,t7,a0
    1914:	84620002 	lh	v0,2(v1)
    1918:	2442fff4 	addiu	v0,v0,-12
    191c:	00021400 	sll	v0,v0,0x10
    1920:	00021403 	sra	v0,v0,0x10
    1924:	a4620032 	sh	v0,50(v1)
    1928:	8e980164 	lw	t8,356(s4)
    192c:	03047021 	addu	t6,t8,a0
    1930:	a5c20022 	sh	v0,34(t6)
    1934:	8e2502c0 	lw	a1,704(s1)
    1938:	24b90008 	addiu	t9,a1,8
    193c:	ae3902c0 	sw	t9,704(s1)
    1940:	aca00004 	sw	zero,4(a1)
    1944:	acb60000 	sw	s6,0(a1)
    1948:	90ef0000 	lbu	t7,0(a3)
    194c:	55e0000c 	bnezl	t7,1980 <func_80813820+0x1980>
    1950:	8e2502c0 	lw	a1,704(s1)
    1954:	8e2502c0 	lw	a1,704(s1)
    1958:	3c0efa00 	lui	t6,0xfa00
    195c:	24b80008 	addiu	t8,a1,8
    1960:	ae3802c0 	sw	t8,704(s1)
    1964:	acae0000 	sw	t6,0(a1)
    1968:	84d90000 	lh	t9,0(a2)
    196c:	332f00ff 	andi	t7,t9,0xff
    1970:	01ebc025 	or	t8,t7,t3
    1974:	1000000a 	b	19a0 <func_80813820+0x19a0>
    1978:	acb80004 	sw	t8,4(a1)
    197c:	8e2502c0 	lw	a1,704(s1)
    1980:	3c19fa00 	lui	t9,0xfa00
    1984:	24ae0008 	addiu	t6,a1,8
    1988:	ae2e02c0 	sw	t6,704(s1)
    198c:	acb90000 	sw	t9,0(a1)
    1990:	84cf0000 	lh	t7,0(a2)
    1994:	31f800ff 	andi	t8,t7,0xff
    1998:	030c7025 	or	t6,t8,t4
    199c:	acae0004 	sw	t6,4(a1)
    19a0:	8e2502c0 	lw	a1,704(s1)
    19a4:	3c0ffb00 	lui	t7,0xfb00
    19a8:	3c0e0100 	lui	t6,0x100
    19ac:	24b90008 	addiu	t9,a1,8
    19b0:	ae3902c0 	sw	t9,704(s1)
    19b4:	acb00004 	sw	s0,4(a1)
    19b8:	acaf0000 	sw	t7,0(a1)
    19bc:	8e2502c0 	lw	a1,704(s1)
    19c0:	35ce4008 	ori	t6,t6,0x4008
    19c4:	25080001 	addiu	t0,t0,1
    19c8:	24b80008 	addiu	t8,a1,8
    19cc:	ae3802c0 	sw	t8,704(s1)
    19d0:	acae0000 	sw	t6,0(a1)
    19d4:	8e990164 	lw	t9,356(s4)
    19d8:	3c0efd70 	lui	t6,0xfd70
    19dc:	00084400 	sll	t0,t0,0x10
    19e0:	03247821 	addu	t7,t9,a0
    19e4:	acaf0004 	sw	t7,4(a1)
    19e8:	8e2502c0 	lw	a1,704(s1)
    19ec:	00084403 	sra	t0,t0,0x10
    19f0:	26730004 	addiu	s3,s3,4
    19f4:	24b80008 	addiu	t8,a1,8
    19f8:	ae3802c0 	sw	t8,704(s1)
    19fc:	acae0000 	sw	t6,0(a1)
    1a00:	90f90000 	lbu	t9,0(a3)
    1a04:	25290004 	addiu	t1,t1,4
    1a08:	00094c00 	sll	t1,t1,0x10
    1a0c:	00197880 	sll	t7,t9,0x2
    1a10:	024fc021 	addu	t8,s2,t7
    1a14:	8f0e0000 	lw	t6,0(t8)
    1a18:	3c0ff570 	lui	t7,0xf570
    1a1c:	00139c00 	sll	s3,s3,0x10
    1a20:	acae0004 	sw	t6,4(a1)
    1a24:	8e2502c0 	lw	a1,704(s1)
    1a28:	29010008 	slti	at,t0,8
    1a2c:	00139c03 	sra	s3,s3,0x10
    1a30:	24b90008 	addiu	t9,a1,8
    1a34:	ae3902c0 	sw	t9,704(s1)
    1a38:	acb50004 	sw	s5,4(a1)
    1a3c:	acaf0000 	sw	t7,0(a1)
    1a40:	8e2502c0 	lw	a1,704(s1)
    1a44:	3c19f300 	lui	t9,0xf300
    1a48:	00094c03 	sra	t1,t1,0x10
    1a4c:	24b80008 	addiu	t8,a1,8
    1a50:	ae3802c0 	sw	t8,704(s1)
    1a54:	aca00004 	sw	zero,4(a1)
    1a58:	acbe0000 	sw	s8,0(a1)
    1a5c:	8e2502c0 	lw	a1,704(s1)
    1a60:	24ae0008 	addiu	t6,a1,8
    1a64:	ae2e02c0 	sw	t6,704(s1)
    1a68:	acad0004 	sw	t5,4(a1)
    1a6c:	acb90000 	sw	t9,0(a1)
    1a70:	8e2502c0 	lw	a1,704(s1)
    1a74:	3c0ef568 	lui	t6,0xf568
    1a78:	35ce0400 	ori	t6,t6,0x400
    1a7c:	24af0008 	addiu	t7,a1,8
    1a80:	ae2f02c0 	sw	t7,704(s1)
    1a84:	aca00004 	sw	zero,4(a1)
    1a88:	acb60000 	sw	s6,0(a1)
    1a8c:	8e2502c0 	lw	a1,704(s1)
    1a90:	24b80008 	addiu	t8,a1,8
    1a94:	ae3802c0 	sw	t8,704(s1)
    1a98:	aca00004 	sw	zero,4(a1)
    1a9c:	acae0000 	sw	t6,0(a1)
    1aa0:	8e2502c0 	lw	a1,704(s1)
    1aa4:	3c180700 	lui	t8,0x700
    1aa8:	37180406 	ori	t8,t8,0x406
    1aac:	24b90008 	addiu	t9,a1,8
    1ab0:	ae3902c0 	sw	t9,704(s1)
    1ab4:	acbf0004 	sw	ra,4(a1)
    1ab8:	acb70000 	sw	s7,0(a1)
    1abc:	8e2502c0 	lw	a1,704(s1)
    1ac0:	240e0602 	li	t6,1538
    1ac4:	24af0008 	addiu	t7,a1,8
    1ac8:	ae2f02c0 	sw	t7,704(s1)
    1acc:	acae0004 	sw	t6,4(a1)
    1ad0:	1420ff6c 	bnez	at,1884 <func_80813820+0x1884>
    1ad4:	acb80000 	sw	t8,0(a1)
    1ad8:	10000195 	b	2130 <func_80813820+0x2130>
    1adc:	00000000 	nop
    1ae0:	28410004 	slti	at,v0,4
    1ae4:	14200002 	bnez	at,1af0 <func_80813820+0x1af0>
    1ae8:	28410007 	slti	at,v0,7
    1aec:	14200003 	bnez	at,1afc <func_80813820+0x1afc>
    1af0:	24010008 	li	at,8
    1af4:	1441018e 	bne	v0,at,2130 <func_80813820+0x2130>
    1af8:	00000000 	nop
    1afc:	86860264 	lh	a2,612(s4)
    1b00:	3c0f0000 	lui	t7,0x0
    1b04:	25ef0000 	addiu	t7,t7,0
    1b08:	0006c8c0 	sll	t9,a2,0x3
    1b0c:	0326c821 	addu	t9,t9,a2
    1b10:	032fc021 	addu	t8,t9,t7
    1b14:	93030000 	lbu	v1,0(t8)
    1b18:	00094400 	sll	t0,t1,0x10
    1b1c:	00084403 	sra	t0,t0,0x10
    1b20:	18600099 	blez	v1,1d88 <func_80813820+0x1d88>
    1b24:	00009825 	move	s3,zero
    1b28:	000670c0 	sll	t6,a2,0x3
    1b2c:	01c67021 	addu	t6,t6,a2
    1b30:	3c120000 	lui	s2,0x0
    1b34:	3c100a0a 	lui	s0,0xa0a
    1b38:	3c1f0003 	lui	ra,0x3
    1b3c:	3c0d0707 	lui	t5,0x707
    1b40:	3c0c9696 	lui	t4,0x9696
    1b44:	3c0bffff 	lui	t3,0xffff
    1b48:	3c0a50ff 	lui	t2,0x50ff
    1b4c:	354a96c8 	ori	t2,t2,0x96c8
    1b50:	356b32c8 	ori	t3,t3,0x32c8
    1b54:	358c9696 	ori	t4,t4,0x9696
    1b58:	35adf400 	ori	t5,t5,0xf400
    1b5c:	37ffc03c 	ori	ra,ra,0xc03c
    1b60:	36100a00 	ori	s0,s0,0xa00
    1b64:	26520000 	addiu	s2,s2,0
    1b68:	01cf3821 	addu	a3,t6,t7
    1b6c:	a7a30226 	sh	v1,550(sp)
    1b70:	00f33021 	addu	a2,a3,s3
    1b74:	90d80001 	lbu	t8,1(a2)
    1b78:	3c190000 	lui	t9,0x0
    1b7c:	8f390000 	lw	t9,0(t9)
    1b80:	00187040 	sll	t6,t8,0x1
    1b84:	8e980164 	lw	t8,356(s4)
    1b88:	032e7821 	addu	t7,t9,t6
    1b8c:	85e20f3e 	lh	v0,3902(t7)
    1b90:	00092100 	sll	a0,t1,0x4
    1b94:	0304c821 	addu	t9,t8,a0
    1b98:	a7220012 	sh	v0,18(t9)
    1b9c:	8e8e0164 	lw	t6,356(s4)
    1ba0:	24010008 	li	at,8
    1ba4:	01c47821 	addu	t7,t6,a0
    1ba8:	a5e20002 	sh	v0,2(t7)
    1bac:	8e980164 	lw	t8,356(s4)
    1bb0:	03041821 	addu	v1,t8,a0
    1bb4:	84620002 	lh	v0,2(v1)
    1bb8:	2442fff4 	addiu	v0,v0,-12
    1bbc:	00021400 	sll	v0,v0,0x10
    1bc0:	00021403 	sra	v0,v0,0x10
    1bc4:	a4620032 	sh	v0,50(v1)
    1bc8:	8e990164 	lw	t9,356(s4)
    1bcc:	03247021 	addu	t6,t9,a0
    1bd0:	a5c20022 	sh	v0,34(t6)
    1bd4:	8e2502c0 	lw	a1,704(s1)
    1bd8:	24af0008 	addiu	t7,a1,8
    1bdc:	ae2f02c0 	sw	t7,704(s1)
    1be0:	aca00004 	sw	zero,4(a1)
    1be4:	acb60000 	sw	s6,0(a1)
    1be8:	969801e4 	lhu	t8,484(s4)
    1bec:	57010013 	bnel	t8,at,1c3c <func_80813820+0x1c3c>
    1bf0:	8e2502c0 	lw	a1,704(s1)
    1bf4:	90d90001 	lbu	t9,1(a2)
    1bf8:	57200009 	bnezl	t9,1c20 <func_80813820+0x1c20>
    1bfc:	8e2502c0 	lw	a1,704(s1)
    1c00:	8e2502c0 	lw	a1,704(s1)
    1c04:	3c0ffa00 	lui	t7,0xfa00
    1c08:	24ae0008 	addiu	t6,a1,8
    1c0c:	ae2e02c0 	sw	t6,704(s1)
    1c10:	acaa0004 	sw	t2,4(a1)
    1c14:	1000000e 	b	1c50 <func_80813820+0x1c50>
    1c18:	acaf0000 	sw	t7,0(a1)
    1c1c:	8e2502c0 	lw	a1,704(s1)
    1c20:	3c19fa00 	lui	t9,0xfa00
    1c24:	24b80008 	addiu	t8,a1,8
    1c28:	ae3802c0 	sw	t8,704(s1)
    1c2c:	acab0004 	sw	t3,4(a1)
    1c30:	10000007 	b	1c50 <func_80813820+0x1c50>
    1c34:	acb90000 	sw	t9,0(a1)
    1c38:	8e2502c0 	lw	a1,704(s1)
    1c3c:	3c0ffa00 	lui	t7,0xfa00
    1c40:	24ae0008 	addiu	t6,a1,8
    1c44:	ae2e02c0 	sw	t6,704(s1)
    1c48:	acac0004 	sw	t4,4(a1)
    1c4c:	acaf0000 	sw	t7,0(a1)
    1c50:	8e2502c0 	lw	a1,704(s1)
    1c54:	3c19fb00 	lui	t9,0xfb00
    1c58:	3c0f0100 	lui	t7,0x100
    1c5c:	24b80008 	addiu	t8,a1,8
    1c60:	ae3802c0 	sw	t8,704(s1)
    1c64:	acb00004 	sw	s0,4(a1)
    1c68:	acb90000 	sw	t9,0(a1)
    1c6c:	8e2502c0 	lw	a1,704(s1)
    1c70:	35ef4008 	ori	t7,t7,0x4008
    1c74:	26730001 	addiu	s3,s3,1
    1c78:	24ae0008 	addiu	t6,a1,8
    1c7c:	ae2e02c0 	sw	t6,704(s1)
    1c80:	acaf0000 	sw	t7,0(a1)
    1c84:	8e980164 	lw	t8,356(s4)
    1c88:	3c0ffd70 	lui	t7,0xfd70
    1c8c:	00139c00 	sll	s3,s3,0x10
    1c90:	0304c821 	addu	t9,t8,a0
    1c94:	acb90004 	sw	t9,4(a1)
    1c98:	8e2502c0 	lw	a1,704(s1)
    1c9c:	00139c03 	sra	s3,s3,0x10
    1ca0:	25290004 	addiu	t1,t1,4
    1ca4:	24ae0008 	addiu	t6,a1,8
    1ca8:	ae2e02c0 	sw	t6,704(s1)
    1cac:	acaf0000 	sw	t7,0(a1)
    1cb0:	90d80001 	lbu	t8,1(a2)
    1cb4:	00094c00 	sll	t1,t1,0x10
    1cb8:	00094c03 	sra	t1,t1,0x10
    1cbc:	0018c880 	sll	t9,t8,0x2
    1cc0:	02597021 	addu	t6,s2,t9
    1cc4:	8dcf0000 	lw	t7,0(t6)
    1cc8:	3c19f570 	lui	t9,0xf570
    1ccc:	acaf0004 	sw	t7,4(a1)
    1cd0:	8e2502c0 	lw	a1,704(s1)
    1cd4:	24b80008 	addiu	t8,a1,8
    1cd8:	ae3802c0 	sw	t8,704(s1)
    1cdc:	acb50004 	sw	s5,4(a1)
    1ce0:	acb90000 	sw	t9,0(a1)
    1ce4:	8e2502c0 	lw	a1,704(s1)
    1ce8:	3c18f300 	lui	t8,0xf300
    1cec:	24ae0008 	addiu	t6,a1,8
    1cf0:	ae2e02c0 	sw	t6,704(s1)
    1cf4:	aca00004 	sw	zero,4(a1)
    1cf8:	acbe0000 	sw	s8,0(a1)
    1cfc:	8e2502c0 	lw	a1,704(s1)
    1d00:	24af0008 	addiu	t7,a1,8
    1d04:	ae2f02c0 	sw	t7,704(s1)
    1d08:	acad0004 	sw	t5,4(a1)
    1d0c:	acb80000 	sw	t8,0(a1)
    1d10:	8e2502c0 	lw	a1,704(s1)
    1d14:	3c0ff568 	lui	t7,0xf568
    1d18:	35ef0400 	ori	t7,t7,0x400
    1d1c:	24b90008 	addiu	t9,a1,8
    1d20:	ae3902c0 	sw	t9,704(s1)
    1d24:	aca00004 	sw	zero,4(a1)
    1d28:	acb60000 	sw	s6,0(a1)
    1d2c:	8e2502c0 	lw	a1,704(s1)
    1d30:	24ae0008 	addiu	t6,a1,8
    1d34:	ae2e02c0 	sw	t6,704(s1)
    1d38:	aca00004 	sw	zero,4(a1)
    1d3c:	acaf0000 	sw	t7,0(a1)
    1d40:	8e2502c0 	lw	a1,704(s1)
    1d44:	3c0e0700 	lui	t6,0x700
    1d48:	35ce0406 	ori	t6,t6,0x406
    1d4c:	24b80008 	addiu	t8,a1,8
    1d50:	ae3802c0 	sw	t8,704(s1)
    1d54:	acbf0004 	sw	ra,4(a1)
    1d58:	acb70000 	sw	s7,0(a1)
    1d5c:	8e2502c0 	lw	a1,704(s1)
    1d60:	240f0602 	li	t7,1538
    1d64:	24b90008 	addiu	t9,a1,8
    1d68:	ae3902c0 	sw	t9,704(s1)
    1d6c:	acaf0004 	sw	t7,4(a1)
    1d70:	acae0000 	sw	t6,0(a1)
    1d74:	87b80226 	lh	t8,550(sp)
    1d78:	0278082a 	slt	at,s3,t8
    1d7c:	5420ff7d 	bnezl	at,1b74 <func_80813820+0x1b74>
    1d80:	00f33021 	addu	a2,a3,s3
    1d84:	968201e4 	lhu	v0,484(s4)
    1d88:	3c100a0a 	lui	s0,0xa0a
    1d8c:	3c120000 	lui	s2,0x0
    1d90:	24010008 	li	at,8
    1d94:	26520000 	addiu	s2,s2,0
    1d98:	104100e5 	beq	v0,at,2130 <func_80813820+0x2130>
    1d9c:	36100a00 	ori	s0,s0,0xa00
    1da0:	00009825 	move	s3,zero
    1da4:	0c000000 	jal	0 <func_80813820>
    1da8:	a7a80218 	sh	t0,536(sp)
    1dac:	87a80218 	lh	t0,536(sp)
    1db0:	ae820194 	sw	v0,404(s4)
    1db4:	90590002 	lbu	t9,2(v0)
    1db8:	3c0d0707 	lui	t5,0x707
    1dbc:	3c1f0003 	lui	ra,0x3
    1dc0:	37ffc03c 	ori	ra,ra,0xc03c
    1dc4:	13200019 	beqz	t9,1e2c <func_80813820+0x1e2c>
    1dc8:	35adf400 	ori	t5,t5,0xf400
    1dcc:	3c0e0000 	lui	t6,0x0
    1dd0:	85ce0000 	lh	t6,0(t6)
    1dd4:	90430002 	lbu	v1,2(v0)
    1dd8:	25cf0001 	addiu	t7,t6,1
    1ddc:	55e30014 	bnel	t7,v1,1e30 <func_80813820+0x1e30>
    1de0:	25090020 	addiu	t1,t0,32
    1de4:	90440000 	lbu	a0,0(v0)
    1de8:	04800010 	bltz	a0,1e2c <func_80813820+0x1e2c>
    1dec:	28810005 	slti	at,a0,5
    1df0:	1020000e 	beqz	at,1e2c <func_80813820+0x1e2c>
    1df4:	241800ff 	li	t8,255
    1df8:	3c010000 	lui	at,0x0
    1dfc:	00230821 	addu	at,at,v1
    1e00:	a0240000 	sb	a0,0(at)
    1e04:	8e990194 	lw	t9,404(s4)
    1e08:	3c0f0000 	lui	t7,0x0
    1e0c:	85ef0000 	lh	t7,0(t7)
    1e10:	932e0002 	lbu	t6,2(t9)
    1e14:	3c010000 	lui	at,0x0
    1e18:	25f90001 	addiu	t9,t7,1
    1e1c:	002e0821 	addu	at,at,t6
    1e20:	a0380000 	sb	t8,0(at)
    1e24:	3c010000 	lui	at,0x0
    1e28:	a4390000 	sh	t9,0(at)
    1e2c:	25090020 	addiu	t1,t0,32
    1e30:	00094c00 	sll	t1,t1,0x10
    1e34:	3c0cffff 	lui	t4,0xffff
    1e38:	3c0b50ff 	lui	t3,0x50ff
    1e3c:	00094c03 	sra	t1,t1,0x10
    1e40:	356b9600 	ori	t3,t3,0x9600
    1e44:	358c3200 	ori	t4,t4,0x3200
    1e48:	240a00ff 	li	t2,255
    1e4c:	3c180000 	lui	t8,0x0
    1e50:	27180000 	addiu	t8,t8,0
    1e54:	02783821 	addu	a3,s3,t8
    1e58:	90e50000 	lbu	a1,0(a3)
    1e5c:	3c0f0000 	lui	t7,0x0
    1e60:	25ef0000 	addiu	t7,t7,0
    1e64:	11450083 	beq	t2,a1,2074 <func_80813820+0x2074>
    1e68:	00137040 	sll	t6,s3,0x1
    1e6c:	01cf3021 	addu	a2,t6,t7
    1e70:	84c20000 	lh	v0,0(a2)
    1e74:	3c190000 	lui	t9,0x0
    1e78:	1142000a 	beq	t2,v0,1ea4 <func_80813820+0x1ea4>
    1e7c:	00000000 	nop
    1e80:	8f390000 	lw	t9,0(t9)
    1e84:	87380f78 	lh	t8,3960(t9)
    1e88:	00587021 	addu	t6,v0,t8
    1e8c:	a4ce0000 	sh	t6,0(a2)
    1e90:	84cf0000 	lh	t7,0(a2)
    1e94:	29e100ff 	slti	at,t7,255
    1e98:	14200002 	bnez	at,1ea4 <func_80813820+0x1ea4>
    1e9c:	00000000 	nop
    1ea0:	a4ca0000 	sh	t2,0(a2)
    1ea4:	3c190000 	lui	t9,0x0
    1ea8:	8f390000 	lw	t9,0(t9)
    1eac:	0005c040 	sll	t8,a1,0x1
    1eb0:	8e8f0164 	lw	t7,356(s4)
    1eb4:	03387021 	addu	t6,t9,t8
    1eb8:	85c20f3e 	lh	v0,3902(t6)
    1ebc:	00092100 	sll	a0,t1,0x4
    1ec0:	01e4c821 	addu	t9,t7,a0
    1ec4:	a7220012 	sh	v0,18(t9)
    1ec8:	8e980164 	lw	t8,356(s4)
    1ecc:	03047021 	addu	t6,t8,a0
    1ed0:	a5c20002 	sh	v0,2(t6)
    1ed4:	8e8f0164 	lw	t7,356(s4)
    1ed8:	01e41821 	addu	v1,t7,a0
    1edc:	84620002 	lh	v0,2(v1)
    1ee0:	2442fff4 	addiu	v0,v0,-12
    1ee4:	00021400 	sll	v0,v0,0x10
    1ee8:	00021403 	sra	v0,v0,0x10
    1eec:	a4620032 	sh	v0,50(v1)
    1ef0:	8e990164 	lw	t9,356(s4)
    1ef4:	0324c021 	addu	t8,t9,a0
    1ef8:	a7020022 	sh	v0,34(t8)
    1efc:	8e2502c0 	lw	a1,704(s1)
    1f00:	24ae0008 	addiu	t6,a1,8
    1f04:	ae2e02c0 	sw	t6,704(s1)
    1f08:	aca00004 	sw	zero,4(a1)
    1f0c:	acb60000 	sw	s6,0(a1)
    1f10:	90ef0000 	lbu	t7,0(a3)
    1f14:	55e0000c 	bnezl	t7,1f48 <func_80813820+0x1f48>
    1f18:	8e2502c0 	lw	a1,704(s1)
    1f1c:	8e2502c0 	lw	a1,704(s1)
    1f20:	3c18fa00 	lui	t8,0xfa00
    1f24:	24b90008 	addiu	t9,a1,8
    1f28:	ae3902c0 	sw	t9,704(s1)
    1f2c:	acb80000 	sw	t8,0(a1)
    1f30:	84ce0000 	lh	t6,0(a2)
    1f34:	31cf00ff 	andi	t7,t6,0xff
    1f38:	01ebc825 	or	t9,t7,t3
    1f3c:	1000000a 	b	1f68 <func_80813820+0x1f68>
    1f40:	acb90004 	sw	t9,4(a1)
    1f44:	8e2502c0 	lw	a1,704(s1)
    1f48:	3c0efa00 	lui	t6,0xfa00
    1f4c:	24b80008 	addiu	t8,a1,8
    1f50:	ae3802c0 	sw	t8,704(s1)
    1f54:	acae0000 	sw	t6,0(a1)
    1f58:	84cf0000 	lh	t7,0(a2)
    1f5c:	31f900ff 	andi	t9,t7,0xff
    1f60:	032cc025 	or	t8,t9,t4
    1f64:	acb80004 	sw	t8,4(a1)
    1f68:	8e2502c0 	lw	a1,704(s1)
    1f6c:	3c0ffb00 	lui	t7,0xfb00
    1f70:	3c180100 	lui	t8,0x100
    1f74:	24ae0008 	addiu	t6,a1,8
    1f78:	ae2e02c0 	sw	t6,704(s1)
    1f7c:	acb00004 	sw	s0,4(a1)
    1f80:	acaf0000 	sw	t7,0(a1)
    1f84:	8e2502c0 	lw	a1,704(s1)
    1f88:	37184008 	ori	t8,t8,0x4008
    1f8c:	24b90008 	addiu	t9,a1,8
    1f90:	ae3902c0 	sw	t9,704(s1)
    1f94:	acb80000 	sw	t8,0(a1)
    1f98:	8e8e0164 	lw	t6,356(s4)
    1f9c:	3c18fd70 	lui	t8,0xfd70
    1fa0:	01c47821 	addu	t7,t6,a0
    1fa4:	acaf0004 	sw	t7,4(a1)
    1fa8:	8e2502c0 	lw	a1,704(s1)
    1fac:	24b90008 	addiu	t9,a1,8
    1fb0:	ae3902c0 	sw	t9,704(s1)
    1fb4:	acb80000 	sw	t8,0(a1)
    1fb8:	90ee0000 	lbu	t6,0(a3)
    1fbc:	000e7880 	sll	t7,t6,0x2
    1fc0:	024fc821 	addu	t9,s2,t7
    1fc4:	8f380000 	lw	t8,0(t9)
    1fc8:	3c0ff570 	lui	t7,0xf570
    1fcc:	acb80004 	sw	t8,4(a1)
    1fd0:	8e2502c0 	lw	a1,704(s1)
    1fd4:	24ae0008 	addiu	t6,a1,8
    1fd8:	ae2e02c0 	sw	t6,704(s1)
    1fdc:	acb50004 	sw	s5,4(a1)
    1fe0:	acaf0000 	sw	t7,0(a1)
    1fe4:	8e2502c0 	lw	a1,704(s1)
    1fe8:	3c0ef300 	lui	t6,0xf300
    1fec:	24b90008 	addiu	t9,a1,8
    1ff0:	ae3902c0 	sw	t9,704(s1)
    1ff4:	aca00004 	sw	zero,4(a1)
    1ff8:	acbe0000 	sw	s8,0(a1)
    1ffc:	8e2502c0 	lw	a1,704(s1)
    2000:	24b80008 	addiu	t8,a1,8
    2004:	ae3802c0 	sw	t8,704(s1)
    2008:	acad0004 	sw	t5,4(a1)
    200c:	acae0000 	sw	t6,0(a1)
    2010:	8e2502c0 	lw	a1,704(s1)
    2014:	3c18f568 	lui	t8,0xf568
    2018:	37180400 	ori	t8,t8,0x400
    201c:	24af0008 	addiu	t7,a1,8
    2020:	ae2f02c0 	sw	t7,704(s1)
    2024:	aca00004 	sw	zero,4(a1)
    2028:	acb60000 	sw	s6,0(a1)
    202c:	8e2502c0 	lw	a1,704(s1)
    2030:	24b90008 	addiu	t9,a1,8
    2034:	ae3902c0 	sw	t9,704(s1)
    2038:	aca00004 	sw	zero,4(a1)
    203c:	acb80000 	sw	t8,0(a1)
    2040:	8e2502c0 	lw	a1,704(s1)
    2044:	3c190700 	lui	t9,0x700
    2048:	37390406 	ori	t9,t9,0x406
    204c:	24ae0008 	addiu	t6,a1,8
    2050:	ae2e02c0 	sw	t6,704(s1)
    2054:	acbf0004 	sw	ra,4(a1)
    2058:	acb70000 	sw	s7,0(a1)
    205c:	8e2502c0 	lw	a1,704(s1)
    2060:	24180602 	li	t8,1538
    2064:	24af0008 	addiu	t7,a1,8
    2068:	ae2f02c0 	sw	t7,704(s1)
    206c:	acb80004 	sw	t8,4(a1)
    2070:	acb90000 	sw	t9,0(a1)
    2074:	26730001 	addiu	s3,s3,1
    2078:	00139c00 	sll	s3,s3,0x10
    207c:	00139c03 	sra	s3,s3,0x10
    2080:	25290004 	addiu	t1,t1,4
    2084:	00094c00 	sll	t1,t1,0x10
    2088:	2a610008 	slti	at,s3,8
    208c:	1420ff6f 	bnez	at,1e4c <func_80813820+0x1e4c>
    2090:	00094c03 	sra	t1,t1,0x10
    2094:	968e01e4 	lhu	t6,484(s4)
    2098:	24010004 	li	at,4
    209c:	00009825 	move	s3,zero
    20a0:	15c10023 	bne	t6,at,2130 <func_80813820+0x2130>
    20a4:	3c040000 	lui	a0,0x0
    20a8:	3c020000 	lui	v0,0x0
    20ac:	24420000 	addiu	v0,v0,0
    20b0:	24840000 	addiu	a0,a0,0
    20b4:	240300ff 	li	v1,255
    20b8:	00937821 	addu	t7,a0,s3
    20bc:	0013c840 	sll	t9,s3,0x1
    20c0:	26730001 	addiu	s3,s3,1
    20c4:	00139c00 	sll	s3,s3,0x10
    20c8:	00139c03 	sra	s3,s3,0x10
    20cc:	2a610008 	slti	at,s3,8
    20d0:	a1e30000 	sb	v1,0(t7)
    20d4:	0059c021 	addu	t8,v0,t9
    20d8:	1420fff7 	bnez	at,20b8 <func_80813820+0x20b8>
    20dc:	a7000000 	sh	zero,0(t8)
    20e0:	3c010000 	lui	at,0x0
    20e4:	a4200000 	sh	zero,0(at)
    20e8:	0c000000 	jal	0 <func_80813820>
    20ec:	24040001 	li	a0,1
    20f0:	868e0264 	lh	t6,612(s4)
    20f4:	240f0001 	li	t7,1
    20f8:	34018000 	li	at,0x8000
    20fc:	01cf2004 	sllv	a0,t7,t6
    2100:	00812021 	addu	a0,a0,at
    2104:	0c000000 	jal	0 <func_80813820>
    2108:	3084ffff 	andi	a0,a0,0xffff
    210c:	0c000000 	jal	0 <func_80813820>
    2110:	00000000 	nop
    2114:	ae820194 	sw	v0,404(s4)
    2118:	a0400002 	sb	zero,2(v0)
    211c:	8e980194 	lw	t8,404(s4)
    2120:	241900fe 	li	t9,254
    2124:	240f0005 	li	t7,5
    2128:	a3190001 	sb	t9,1(t8)
    212c:	a68f01e4 	sh	t7,484(s4)
    2130:	3c0e0000 	lui	t6,0x0
    2134:	3c190000 	lui	t9,0x0
    2138:	8f3900a4 	lw	t9,164(t9)
    213c:	8dce005c 	lw	t6,92(t6)
    2140:	00009825 	move	s3,zero
    2144:	00004025 	move	t0,zero
    2148:	01d9c024 	and	t8,t6,t9
    214c:	130000c4 	beqz	t8,2460 <func_80813820+0x2460>
    2150:	3c19fc30 	lui	t9,0xfc30
    2154:	8e2502c0 	lw	a1,704(s1)
    2158:	3c18552e 	lui	t8,0x552e
    215c:	3718ff7f 	ori	t8,t8,0xff7f
    2160:	24af0008 	addiu	t7,a1,8
    2164:	ae2f02c0 	sw	t7,704(s1)
    2168:	aca00004 	sw	zero,4(a1)
    216c:	acb60000 	sw	s6,0(a1)
    2170:	8e2502c0 	lw	a1,704(s1)
    2174:	37399661 	ori	t9,t9,0x9661
    2178:	3c020000 	lui	v0,0x0
    217c:	24ae0008 	addiu	t6,a1,8
    2180:	ae2e02c0 	sw	t6,704(s1)
    2184:	acb80004 	sw	t8,4(a1)
    2188:	acb90000 	sw	t9,0(a1)
    218c:	8e2502c0 	lw	a1,704(s1)
    2190:	3c0efb00 	lui	t6,0xfb00
    2194:	00001c00 	sll	v1,zero,0x10
    2198:	24af0008 	addiu	t7,a1,8
    219c:	ae2f02c0 	sw	t7,704(s1)
    21a0:	aca00004 	sw	zero,4(a1)
    21a4:	acae0000 	sw	t6,0(a1)
    21a8:	844200d0 	lh	v0,208(v0)
    21ac:	00031c03 	sra	v1,v1,0x10
    21b0:	00002025 	move	a0,zero
    21b4:	28410064 	slti	at,v0,100
    21b8:	1420000a 	bnez	at,21e4 <func_80813820+0x21e4>
    21bc:	a7a30208 	sh	v1,520(sp)
    21c0:	2442ff9c 	addiu	v0,v0,-100
    21c4:	00021400 	sll	v0,v0,0x10
    21c8:	24630001 	addiu	v1,v1,1
    21cc:	00021403 	sra	v0,v0,0x10
    21d0:	28410064 	slti	at,v0,100
    21d4:	00031c00 	sll	v1,v1,0x10
    21d8:	1020fff9 	beqz	at,21c0 <func_80813820+0x21c0>
    21dc:	00031c03 	sra	v1,v1,0x10
    21e0:	a7a30208 	sh	v1,520(sp)
    21e4:	2841000a 	slti	at,v0,10
    21e8:	a7a2020c 	sh	v0,524(sp)
    21ec:	1420000b 	bnez	at,221c <func_80813820+0x221c>
    21f0:	a7a4020a 	sh	a0,522(sp)
    21f4:	2442fff6 	addiu	v0,v0,-10
    21f8:	00021400 	sll	v0,v0,0x10
    21fc:	24840001 	addiu	a0,a0,1
    2200:	00021403 	sra	v0,v0,0x10
    2204:	2841000a 	slti	at,v0,10
    2208:	00042400 	sll	a0,a0,0x10
    220c:	1020fff9 	beqz	at,21f4 <func_80813820+0x21f4>
    2210:	00042403 	sra	a0,a0,0x10
    2214:	a7a4020a 	sh	a0,522(sp)
    2218:	a7a2020c 	sh	v0,524(sp)
    221c:	8e2502c0 	lw	a1,704(s1)
    2220:	3c180101 	lui	t8,0x101
    2224:	37188030 	ori	t8,t8,0x8030
    2228:	24b90008 	addiu	t9,a1,8
    222c:	ae3902c0 	sw	t9,704(s1)
    2230:	acb80000 	sw	t8,0(a1)
    2234:	8e8f0164 	lw	t7,356(s4)
    2238:	3c120001 	lui	s2,0x1
    223c:	3c1ff588 	lui	ra,0xf588
    2240:	3c0d0703 	lui	t5,0x703
    2244:	3c0b0200 	lui	t3,0x200
    2248:	25ee0a40 	addiu	t6,t7,2624
    224c:	256b3040 	addiu	t3,t3,12352
    2250:	35adf800 	ori	t5,t5,0xf800
    2254:	37ff0200 	ori	ra,ra,0x200
    2258:	3652c03c 	ori	s2,s2,0xc03c
    225c:	3c0cf590 	lui	t4,0xf590
    2260:	3c0afd90 	lui	t2,0xfd90
    2264:	27a70208 	addiu	a3,sp,520
    2268:	acae0004 	sw	t6,4(a1)
    226c:	1660000a 	bnez	s3,2298 <func_80813820+0x2298>
    2270:	00008025 	move	s0,zero
    2274:	8e2502c0 	lw	a1,704(s1)
    2278:	3c18fa00 	lui	t8,0xfa00
    227c:	24b90008 	addiu	t9,a1,8
    2280:	ae3902c0 	sw	t9,704(s1)
    2284:	acb80000 	sw	t8,0(a1)
    2288:	968f0208 	lhu	t7,520(s4)
    228c:	31ee00ff 	andi	t6,t7,0xff
    2290:	1000001c 	b	2304 <func_80813820+0x2304>
    2294:	acae0004 	sw	t6,4(a1)
    2298:	3c190000 	lui	t9,0x0
    229c:	873900d0 	lh	t9,208(t9)
    22a0:	24010064 	li	at,100
    22a4:	5721000e 	bnel	t9,at,22e0 <func_80813820+0x22e0>
    22a8:	8e2502c0 	lw	a1,704(s1)
    22ac:	8e2502c0 	lw	a1,704(s1)
    22b0:	3c0ffa00 	lui	t7,0xfa00
    22b4:	3c01c832 	lui	at,0xc832
    22b8:	24b80008 	addiu	t8,a1,8
    22bc:	ae3802c0 	sw	t8,704(s1)
    22c0:	acaf0000 	sw	t7,0(a1)
    22c4:	968e0208 	lhu	t6,520(s4)
    22c8:	34213200 	ori	at,at,0x3200
    22cc:	31d900ff 	andi	t9,t6,0xff
    22d0:	0321c025 	or	t8,t9,at
    22d4:	1000000b 	b	2304 <func_80813820+0x2304>
    22d8:	acb80004 	sw	t8,4(a1)
    22dc:	8e2502c0 	lw	a1,704(s1)
    22e0:	3c0efa00 	lui	t6,0xfa00
    22e4:	2401ff00 	li	at,-256
    22e8:	24af0008 	addiu	t7,a1,8
    22ec:	ae2f02c0 	sw	t7,704(s1)
    22f0:	acae0000 	sw	t6,0(a1)
    22f4:	96990208 	lhu	t9,520(s4)
    22f8:	333800ff 	andi	t8,t9,0xff
    22fc:	03017825 	or	t7,t8,at
    2300:	acaf0004 	sw	t7,4(a1)
    2304:	00004825 	move	t1,zero
    2308:	29210002 	slti	at,t1,2
    230c:	10200007 	beqz	at,232c <func_80813820+0x232c>
    2310:	00097040 	sll	t6,t1,0x1
    2314:	00eec821 	addu	t9,a3,t6
    2318:	87380000 	lh	t8,0(t9)
    231c:	57000004 	bnezl	t8,2330 <func_80813820+0x2330>
    2320:	8e2502c0 	lw	a1,704(s1)
    2324:	52000041 	beqzl	s0,242c <func_80813820+0x242c>
    2328:	25290001 	addiu	t1,t1,1
    232c:	8e2502c0 	lw	a1,704(s1)
    2330:	00097840 	sll	t7,t1,0x1
    2334:	00ef1821 	addu	v1,a3,t7
    2338:	24ae0008 	addiu	t6,a1,8
    233c:	ae2e02c0 	sw	t6,704(s1)
    2340:	acaa0000 	sw	t2,0(a1)
    2344:	84790000 	lh	t9,0(v1)
    2348:	00083040 	sll	a2,t0,0x1
    234c:	30c300ff 	andi	v1,a2,0xff
    2350:	0019c1c0 	sll	t8,t9,0x7
    2354:	030b7821 	addu	t7,t8,t3
    2358:	acaf0004 	sw	t7,4(a1)
    235c:	8e2502c0 	lw	a1,704(s1)
    2360:	3c0ff300 	lui	t7,0xf300
    2364:	00031c00 	sll	v1,v1,0x10
    2368:	24ae0008 	addiu	t6,a1,8
    236c:	ae2e02c0 	sw	t6,704(s1)
    2370:	acb50004 	sw	s5,4(a1)
    2374:	acac0000 	sw	t4,0(a1)
    2378:	8e2502c0 	lw	a1,704(s1)
    237c:	24c40006 	addiu	a0,a2,6
    2380:	308400ff 	andi	a0,a0,0xff
    2384:	24b90008 	addiu	t9,a1,8
    2388:	ae3902c0 	sw	t9,704(s1)
    238c:	aca00004 	sw	zero,4(a1)
    2390:	acbe0000 	sw	s8,0(a1)
    2394:	8e2502c0 	lw	a1,704(s1)
    2398:	24100001 	li	s0,1
    239c:	24b80008 	addiu	t8,a1,8
    23a0:	ae3802c0 	sw	t8,704(s1)
    23a4:	acad0004 	sw	t5,4(a1)
    23a8:	acaf0000 	sw	t7,0(a1)
    23ac:	8e2502c0 	lw	a1,704(s1)
    23b0:	24ae0008 	addiu	t6,a1,8
    23b4:	ae2e02c0 	sw	t6,704(s1)
    23b8:	aca00004 	sw	zero,4(a1)
    23bc:	acb60000 	sw	s6,0(a1)
    23c0:	8e2502c0 	lw	a1,704(s1)
    23c4:	24ce0004 	addiu	t6,a2,4
    23c8:	24b90008 	addiu	t9,a1,8
    23cc:	ae3902c0 	sw	t9,704(s1)
    23d0:	aca00004 	sw	zero,4(a1)
    23d4:	acbf0000 	sw	ra,0(a1)
    23d8:	8e2502c0 	lw	a1,704(s1)
    23dc:	31d900ff 	andi	t9,t6,0xff
    23e0:	24b80008 	addiu	t8,a1,8
    23e4:	ae3802c0 	sw	t8,704(s1)
    23e8:	acb20004 	sw	s2,4(a1)
    23ec:	acb70000 	sw	s7,0(a1)
    23f0:	8e2502c0 	lw	a1,704(s1)
    23f4:	0019c200 	sll	t8,t9,0x8
    23f8:	24af0008 	addiu	t7,a1,8
    23fc:	ae2f02c0 	sw	t7,704(s1)
    2400:	00787825 	or	t7,v1,t8
    2404:	01e47025 	or	t6,t7,a0
    2408:	01d5c825 	or	t9,t6,s5
    240c:	24ce0002 	addiu	t6,a2,2
    2410:	0004c200 	sll	t8,a0,0x8
    2414:	acb90000 	sw	t9,0(a1)
    2418:	31d900ff 	andi	t9,t6,0xff
    241c:	00787825 	or	t7,v1,t8
    2420:	01f9c025 	or	t8,t7,t9
    2424:	acb80004 	sw	t8,4(a1)
    2428:	25290001 	addiu	t1,t1,1
    242c:	00094c00 	sll	t1,t1,0x10
    2430:	00094c03 	sra	t1,t1,0x10
    2434:	25080004 	addiu	t0,t0,4
    2438:	00084400 	sll	t0,t0,0x10
    243c:	29210003 	slti	at,t1,3
    2440:	1420ffb1 	bnez	at,2308 <func_80813820+0x2308>
    2444:	00084403 	sra	t0,t0,0x10
    2448:	26730001 	addiu	s3,s3,1
    244c:	00139c00 	sll	s3,s3,0x10
    2450:	00139c03 	sra	s3,s3,0x10
    2454:	2a610002 	slti	at,s3,2
    2458:	1420ff84 	bnez	at,226c <func_80813820+0x226c>
    245c:	00000000 	nop
    2460:	3c060000 	lui	a2,0x0
    2464:	24c60000 	addiu	a2,a2,0
    2468:	27a401f4 	addiu	a0,sp,500
    246c:	02202825 	move	a1,s1
    2470:	0c000000 	jal	0 <func_80813820>
    2474:	2407035f 	li	a3,863
    2478:	8fbf0044 	lw	ra,68(sp)
    247c:	8fb00020 	lw	s0,32(sp)
    2480:	8fb10024 	lw	s1,36(sp)
    2484:	8fb20028 	lw	s2,40(sp)
    2488:	8fb3002c 	lw	s3,44(sp)
    248c:	8fb40030 	lw	s4,48(sp)
    2490:	8fb50034 	lw	s5,52(sp)
    2494:	8fb60038 	lw	s6,56(sp)
    2498:	8fb7003c 	lw	s7,60(sp)
    249c:	8fbe0040 	lw	s8,64(sp)
    24a0:	03e00008 	jr	ra
    24a4:	27bd0230 	addiu	sp,sp,560

000024a8 <func_80815CC8>:
    24a8:	a485021c 	sh	a1,540(a0)
    24ac:	03e00008 	jr	ra
    24b0:	24020001 	li	v0,1
	...
