
build/src/code/code_800E11F0.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800E11F0>:
       0:	3c060000 	lui	a2,0x0
       4:	24c60000 	addiu	a2,a2,0
       8:	8cc32624 	lw	v1,9764(a2)
       c:	00001025 	move	v0,zero
      10:	00002025 	move	a0,zero
      14:	50600018 	beqzl	v1,78 <func_800E11F0+0x78>
      18:	8ccc2620 	lw	t4,9760(a2)
      1c:	8cce261c 	lw	t6,9756(a2)
      20:	008e1821 	addu	v1,a0,t6
      24:	9065000e 	lbu	a1,14(v1)
      28:	10a0000c 	beqz	a1,5c <func_800E11F0+0x5c>
      2c:	24afffff 	addiu	t7,a1,-1
      30:	31f800ff 	andi	t8,t7,0xff
      34:	17000009 	bnez	t8,5c <func_800E11F0+0x5c>
      38:	a06f000e 	sb	t7,14(v1)
      3c:	90d9282e 	lbu	t9,10286(a2)
      40:	a079000d 	sb	t9,13(v1)
      44:	90c8282e 	lbu	t0,10286(a2)
      48:	00c84821 	addu	t1,a2,t0
      4c:	a122262c 	sb	v0,9772(t1)
      50:	90ca282e 	lbu	t2,10286(a2)
      54:	254b0001 	addiu	t3,t2,1
      58:	a0cb282e 	sb	t3,10286(a2)
      5c:	8cc32624 	lw	v1,9764(a2)
      60:	24420001 	addiu	v0,v0,1
      64:	24840010 	addiu	a0,a0,16
      68:	0043082b 	sltu	at,v0,v1
      6c:	5420ffec 	bnezl	at,20 <func_800E11F0+0x20>
      70:	8cce261c 	lw	t6,9756(a2)
      74:	8ccc2620 	lw	t4,9760(a2)
      78:	00601025 	move	v0,v1
      7c:	00032100 	sll	a0,v1,0x4
      80:	006c082b 	sltu	at,v1,t4
      84:	10200017 	beqz	at,e4 <func_800E11F0+0xe4>
      88:	00000000 	nop
      8c:	8ccd261c 	lw	t5,9756(a2)
      90:	008d1821 	addu	v1,a0,t5
      94:	9065000e 	lbu	a1,14(v1)
      98:	10a0000c 	beqz	a1,cc <func_800E11F0+0xcc>
      9c:	24aeffff 	addiu	t6,a1,-1
      a0:	31cf00ff 	andi	t7,t6,0xff
      a4:	15e00009 	bnez	t7,cc <func_800E11F0+0xcc>
      a8:	a06e000e 	sb	t6,14(v1)
      ac:	90d8282f 	lbu	t8,10287(a2)
      b0:	a078000d 	sb	t8,13(v1)
      b4:	90d9282f 	lbu	t9,10287(a2)
      b8:	00d94021 	addu	t0,a2,t9
      bc:	a102272c 	sb	v0,10028(t0)
      c0:	90c9282f 	lbu	t1,10287(a2)
      c4:	252a0001 	addiu	t2,t1,1
      c8:	a0ca282f 	sb	t2,10287(a2)
      cc:	8ccb2620 	lw	t3,9760(a2)
      d0:	24420001 	addiu	v0,v0,1
      d4:	24840010 	addiu	a0,a0,16
      d8:	004b082b 	sltu	at,v0,t3
      dc:	5420ffec 	bnezl	at,90 <func_800E11F0+0x90>
      e0:	8ccd261c 	lw	t5,9756(a2)
      e4:	03e00008 	jr	ra
      e8:	acc02628 	sw	zero,9768(a2)

000000ec <func_800E12DC>:
      ec:	27bdffb0 	addiu	sp,sp,-80
      f0:	afb10030 	sw	s1,48(sp)
      f4:	afb0002c 	sw	s0,44(sp)
      f8:	00a08025 	move	s0,a1
      fc:	00808825 	move	s1,a0
     100:	afbf0034 	sw	ra,52(sp)
     104:	afa60058 	sw	a2,88(sp)
     108:	afa7005c 	sw	a3,92(sp)
     10c:	14c00008 	bnez	a2,130 <func_800E12DC+0x44>
     110:	00005825 	move	t3,zero
     114:	3c090000 	lui	t1,0x0
     118:	25290000 	addiu	t1,t1,0
     11c:	8d262624 	lw	a2,9764(t1)
     120:	90e20000 	lbu	v0,0(a3)
     124:	0046082b 	sltu	at,v0,a2
     128:	54200057 	bnezl	at,288 <func_800E12DC+0x19c>
     12c:	8d25261c 	lw	a1,9756(t1)
     130:	3c090000 	lui	t1,0x0
     134:	25290000 	addiu	t1,t1,0
     138:	8d262624 	lw	a2,9764(t1)
     13c:	8d252620 	lw	a1,9760(t1)
     140:	00c02025 	move	a0,a2
     144:	00c5082b 	sltu	at,a2,a1
     148:	50200036 	beqzl	at,224 <func_800E12DC+0x138>
     14c:	8fb90058 	lw	t9,88(sp)
     150:	8d39261c 	lw	t9,9756(t1)
     154:	0004c100 	sll	t8,a0,0x4
     158:	03191821 	addu	v1,t8,t9
     15c:	8c6c0004 	lw	t4,4(v1)
     160:	00604025 	move	t0,v1
     164:	022c1023 	subu	v0,s1,t4
     168:	04420029 	bltzl	v0,210 <func_800E12DC+0x124>
     16c:	24840001 	addiu	a0,a0,1
     170:	950d000a 	lhu	t5,10(t0)
     174:	01b07023 	subu	t6,t5,s0
     178:	01c2082b 	sltu	at,t6,v0
     17c:	54200024 	bnezl	at,210 <func_800E12DC+0x124>
     180:	24840001 	addiu	a0,a0,1
     184:	910f000e 	lbu	t7,14(t0)
     188:	55e00018 	bnezl	t7,1ec <func_800E12DC+0x100>
     18c:	240c0020 	li	t4,32
     190:	9122282d 	lbu	v0,10285(t1)
     194:	9138282f 	lbu	t8,10287(t1)
     198:	53020014 	beql	t8,v0,1ec <func_800E12DC+0x100>
     19c:	240c0020 	li	t4,32
     1a0:	9103000d 	lbu	v1,13(t0)
     1a4:	0122c821 	addu	t9,t1,v0
     1a8:	5043000e 	beql	v0,v1,1e4 <func_800E12DC+0xf8>
     1ac:	24590001 	addiu	t9,v0,1
     1b0:	932c272c 	lbu	t4,10028(t9)
     1b4:	01236821 	addu	t5,t1,v1
     1b8:	a1ac272c 	sb	t4,10028(t5)
     1bc:	9138282d 	lbu	t8,10285(t1)
     1c0:	8d2f261c 	lw	t7,9756(t1)
     1c4:	910e000d 	lbu	t6,13(t0)
     1c8:	0138c821 	addu	t9,t1,t8
     1cc:	932c272c 	lbu	t4,10028(t9)
     1d0:	000c6900 	sll	t5,t4,0x4
     1d4:	01edc021 	addu	t8,t7,t5
     1d8:	a30e000d 	sb	t6,13(t8)
     1dc:	9122282d 	lbu	v0,10285(t1)
     1e0:	24590001 	addiu	t9,v0,1
     1e4:	a139282d 	sb	t9,10285(t1)
     1e8:	240c0020 	li	t4,32
     1ec:	a10c000e 	sb	t4,14(t0)
     1f0:	8faf005c 	lw	t7,92(sp)
     1f4:	a1e40000 	sb	a0,0(t7)
     1f8:	8d0d0000 	lw	t5,0(t0)
     1fc:	8d180004 	lw	t8,4(t0)
     200:	01b17021 	addu	t6,t5,s1
     204:	10000083 	b	414 <func_800E12DC+0x328>
     208:	01d81023 	subu	v0,t6,t8
     20c:	24840001 	addiu	a0,a0,1
     210:	0085082b 	sltu	at,a0,a1
     214:	1420ffd1 	bnez	at,15c <func_800E12DC+0x70>
     218:	24630010 	addiu	v1,v1,16
     21c:	afa80048 	sw	t0,72(sp)
     220:	8fb90058 	lw	t9,88(sp)
     224:	8fa80048 	lw	t0,72(sp)
     228:	8fac005c 	lw	t4,92(sp)
     22c:	57200005 	bnezl	t9,244 <func_800E12DC+0x158>
     230:	9122282d 	lbu	v0,10285(t1)
     234:	91820000 	lbu	v0,0(t4)
     238:	10000013 	b	288 <func_800E12DC+0x19c>
     23c:	8d25261c 	lw	a1,9756(t1)
     240:	9122282d 	lbu	v0,10285(t1)
     244:	912f282f 	lbu	t7,10287(t1)
     248:	8fad0058 	lw	t5,88(sp)
     24c:	11e2000b 	beq	t7,v0,27c <func_800E12DC+0x190>
     250:	00000000 	nop
     254:	11a00009 	beqz	t5,27c <func_800E12DC+0x190>
     258:	01227021 	addu	t6,t1,v0
     25c:	91ca272c 	lbu	t2,10028(t6)
     260:	8d2c261c 	lw	t4,9756(t1)
     264:	24580001 	addiu	t8,v0,1
     268:	000ac900 	sll	t9,t2,0x4
     26c:	a138282d 	sb	t8,10285(t1)
     270:	240b0001 	li	t3,1
     274:	afaa0038 	sw	t2,56(sp)
     278:	032c4021 	addu	t0,t9,t4
     27c:	10000030 	b	340 <func_800E12DC+0x254>
     280:	00000000 	nop
     284:	8d25261c 	lw	a1,9756(t1)
     288:	00027900 	sll	t7,v0,0x4
     28c:	01e54021 	addu	t0,t7,a1
     290:	00002025 	move	a0,zero
     294:	8d030004 	lw	v1,4(t0)
     298:	02231023 	subu	v0,s1,v1
     29c:	04420024 	bltzl	v0,330 <func_800E12DC+0x244>
     2a0:	00046900 	sll	t5,a0,0x4
     2a4:	950d000a 	lhu	t5,10(t0)
     2a8:	01b07023 	subu	t6,t5,s0
     2ac:	01c2082b 	sltu	at,t6,v0
     2b0:	5420001f 	bnezl	at,330 <func_800E12DC+0x244>
     2b4:	00046900 	sll	t5,a0,0x4
     2b8:	9118000e 	lbu	t8,14(t0)
     2bc:	57000016 	bnezl	t8,318 <func_800E12DC+0x22c>
     2c0:	8d0e0000 	lw	t6,0(t0)
     2c4:	9122282c 	lbu	v0,10284(t1)
     2c8:	9103000d 	lbu	v1,13(t0)
     2cc:	0122c821 	addu	t9,t1,v0
     2d0:	5043000e 	beql	v0,v1,30c <func_800E12DC+0x220>
     2d4:	24590001 	addiu	t9,v0,1
     2d8:	932c262c 	lbu	t4,9772(t9)
     2dc:	01237821 	addu	t7,t1,v1
     2e0:	a1ec262c 	sb	t4,9772(t7)
     2e4:	9138282c 	lbu	t8,10284(t1)
     2e8:	8d2e261c 	lw	t6,9756(t1)
     2ec:	910d000d 	lbu	t5,13(t0)
     2f0:	0138c821 	addu	t9,t1,t8
     2f4:	932c262c 	lbu	t4,9772(t9)
     2f8:	000c7900 	sll	t7,t4,0x4
     2fc:	01cfc021 	addu	t8,t6,t7
     300:	a30d000d 	sb	t5,13(t8)
     304:	9122282c 	lbu	v0,10284(t1)
     308:	24590001 	addiu	t9,v0,1
     30c:	a139282c 	sb	t9,10284(t1)
     310:	8d030004 	lw	v1,4(t0)
     314:	8d0e0000 	lw	t6,0(t0)
     318:	240c0002 	li	t4,2
     31c:	a10c000e 	sb	t4,14(t0)
     320:	01d17821 	addu	t7,t6,s1
     324:	1000003b 	b	414 <func_800E12DC+0x328>
     328:	01e31023 	subu	v0,t7,v1
     32c:	00046900 	sll	t5,a0,0x4
     330:	24840001 	addiu	a0,a0,1
     334:	00c4082b 	sltu	at,a2,a0
     338:	1020ffd6 	beqz	at,294 <func_800E12DC+0x1a8>
     33c:	01a54021 	addu	t0,t5,a1
     340:	1560000d 	bnez	t3,378 <func_800E12DC+0x28c>
     344:	8faa0038 	lw	t2,56(sp)
     348:	9122282c 	lbu	v0,10284(t1)
     34c:	9138282e 	lbu	t8,10286(t1)
     350:	0122c821 	addu	t9,t1,v0
     354:	17020003 	bne	t8,v0,364 <func_800E12DC+0x278>
     358:	244c0001 	addiu	t4,v0,1
     35c:	1000002d 	b	414 <func_800E12DC+0x328>
     360:	00001025 	move	v0,zero
     364:	932a262c 	lbu	t2,9772(t9)
     368:	8d2f261c 	lw	t7,9756(t1)
     36c:	a12c282c 	sb	t4,10284(t1)
     370:	000a7100 	sll	t6,t2,0x4
     374:	01cf4021 	addu	t0,t6,t7
     378:	9502000a 	lhu	v0,10(t0)
     37c:	240d0003 	li	t5,3
     380:	2401fff0 	li	at,-16
     384:	a10d000e 	sb	t5,14(t0)
     388:	02218024 	and	s0,s1,at
     38c:	ad100004 	sw	s0,4(t0)
     390:	a5020008 	sh	v0,8(t0)
     394:	8d2328a0 	lw	v1,10400(t1)
     398:	8d190000 	lw	t9,0(t0)
     39c:	8fae0060 	lw	t6,96(sp)
     3a0:	0003c080 	sll	t8,v1,0x2
     3a4:	0303c023 	subu	t8,t8,v1
     3a8:	0018c0c0 	sll	t8,t8,0x3
     3ac:	3c0c0000 	lui	t4,0x0
     3b0:	3c0f0000 	lui	t7,0x0
     3b4:	25ef0000 	addiu	t7,t7,0
     3b8:	258c1ed0 	addiu	t4,t4,7888
     3bc:	01382021 	addu	a0,t1,t8
     3c0:	246d0001 	addiu	t5,v1,1
     3c4:	ad2d28a0 	sw	t5,10400(t1)
     3c8:	24841fe8 	addiu	a0,a0,8168
     3cc:	afac0018 	sw	t4,24(sp)
     3d0:	afaf0020 	sw	t7,32(sp)
     3d4:	afaa0038 	sw	t2,56(sp)
     3d8:	afa80048 	sw	t0,72(sp)
     3dc:	02003825 	move	a3,s0
     3e0:	00002825 	move	a1,zero
     3e4:	00003025 	move	a2,zero
     3e8:	afa20014 	sw	v0,20(sp)
     3ec:	afb90010 	sw	t9,16(sp)
     3f0:	0c000000 	jal	0 <func_800E11F0>
     3f4:	afae001c 	sw	t6,28(sp)
     3f8:	8faa0038 	lw	t2,56(sp)
     3fc:	8fb8005c 	lw	t8,92(sp)
     400:	8fa80048 	lw	t0,72(sp)
     404:	0230c823 	subu	t9,s1,s0
     408:	a30a0000 	sb	t2,0(t8)
     40c:	8d0c0000 	lw	t4,0(t0)
     410:	032c1021 	addu	v0,t9,t4
     414:	8fbf0034 	lw	ra,52(sp)
     418:	8fb0002c 	lw	s0,44(sp)
     41c:	8fb10030 	lw	s1,48(sp)
     420:	03e00008 	jr	ra
     424:	27bd0050 	addiu	sp,sp,80

00000428 <func_800E1618>:
     428:	27bdffd0 	addiu	sp,sp,-48
     42c:	afb20020 	sw	s2,32(sp)
     430:	3c120000 	lui	s2,0x0
     434:	26520000 	addiu	s2,s2,0
     438:	8e582894 	lw	t8,10388(s2)
     43c:	86482848 	lh	t0,10312(s2)
     440:	afb40028 	sw	s4,40(sp)
     444:	0018c980 	sll	t9,t8,0x6
     448:	03280019 	multu	t9,t0
     44c:	8e4e2874 	lw	t6,10356(s2)
     450:	3c140000 	lui	s4,0x0
     454:	269429c0 	addiu	s4,s4,10688
     458:	afbf002c 	sw	ra,44(sp)
     45c:	afa40030 	sw	a0,48(sp)
     460:	afb30024 	sw	s3,36(sp)
     464:	afb1001c 	sw	s1,28(sp)
     468:	afb00018 	sw	s0,24(sp)
     46c:	02802025 	move	a0,s4
     470:	00002812 	mflo	a1
     474:	ae4e288c 	sw	t6,10380(s2)
     478:	0c000000 	jal	0 <func_800E11F0>
     47c:	00000000 	nop
     480:	8e492894 	lw	t1,10388(s2)
     484:	864b2848 	lh	t3,10312(s2)
     488:	ae42261c 	sw	v0,9756(s2)
     48c:	00095080 	sll	t2,t1,0x2
     490:	01495023 	subu	t2,t2,t1
     494:	014b0019 	multu	t2,t3
     498:	00008825 	move	s1,zero
     49c:	00009812 	mflo	s3
     4a0:	5a60001c 	blezl	s3,514 <func_800E1618+0xec>
     4a4:	8e442620 	lw	a0,9760(s2)
     4a8:	8e4c2620 	lw	t4,9760(s2)
     4ac:	8e4e261c 	lw	t6,9756(s2)
     4b0:	02802025 	move	a0,s4
     4b4:	000c6900 	sll	t5,t4,0x4
     4b8:	8e45288c 	lw	a1,10380(s2)
     4bc:	0c000000 	jal	0 <func_800E11F0>
     4c0:	01ae8021 	addu	s0,t5,t6
     4c4:	14400003 	bnez	v0,4d4 <func_800E1618+0xac>
     4c8:	ae020000 	sw	v0,0(s0)
     4cc:	10000010 	b	510 <func_800E1618+0xe8>
     4d0:	00008825 	move	s1,zero
     4d4:	8e040000 	lw	a0,0(s0)
     4d8:	0c000000 	jal	0 <func_800E11F0>
     4dc:	8e45288c 	lw	a1,10380(s2)
     4e0:	8e4f288c 	lw	t7,10380(s2)
     4e4:	ae000004 	sw	zero,4(s0)
     4e8:	a6000008 	sh	zero,8(s0)
     4ec:	a200000c 	sb	zero,12(s0)
     4f0:	a200000e 	sb	zero,14(s0)
     4f4:	a60f000a 	sh	t7,10(s0)
     4f8:	8e582620 	lw	t8,9760(s2)
     4fc:	26310001 	addiu	s1,s1,1
     500:	27190001 	addiu	t9,t8,1
     504:	1633ffe8 	bne	s1,s3,4a8 <func_800E1618+0x80>
     508:	ae592620 	sw	t9,9760(s2)
     50c:	00008825 	move	s1,zero
     510:	8e442620 	lw	a0,9760(s2)
     514:	3c020000 	lui	v0,0x0
     518:	24420000 	addiu	v0,v0,0
     51c:	1080000c 	beqz	a0,550 <func_800E1618+0x128>
     520:	00001825 	move	v1,zero
     524:	a051262c 	sb	s1,9772(v0)
     528:	8e48261c 	lw	t0,9756(s2)
     52c:	24420001 	addiu	v0,v0,1
     530:	01034821 	addu	t1,t0,v1
     534:	a131000d 	sb	s1,13(t1)
     538:	8e442620 	lw	a0,9760(s2)
     53c:	26310001 	addiu	s1,s1,1
     540:	24630010 	addiu	v1,v1,16
     544:	0224082b 	sltu	at,s1,a0
     548:	5420fff7 	bnezl	at,528 <func_800E1618+0x100>
     54c:	a051262c 	sb	s1,9772(v0)
     550:	28810100 	slti	at,a0,256
     554:	10200009 	beqz	at,57c <func_800E1618+0x154>
     558:	00808825 	move	s1,a0
     55c:	3c030000 	lui	v1,0x0
     560:	24630100 	addiu	v1,v1,256
     564:	02511021 	addu	v0,s2,s1
     568:	24420001 	addiu	v0,v0,1
     56c:	0043082b 	sltu	at,v0,v1
     570:	1420fffd 	bnez	at,568 <func_800E1618+0x140>
     574:	a040262b 	sb	zero,9771(v0)
     578:	8e442620 	lw	a0,9760(s2)
     57c:	8e4b2894 	lw	t3,10388(s2)
     580:	8e4a2878 	lw	t2,10360(s2)
     584:	a240282c 	sb	zero,10284(s2)
     588:	a244282e 	sb	a0,10286(s2)
     58c:	ae442624 	sw	a0,9764(s2)
     590:	00008825 	move	s1,zero
     594:	1960001d 	blez	t3,60c <func_800E1618+0x1e4>
     598:	ae4a288c 	sw	t2,10380(s2)
     59c:	8e4c2620 	lw	t4,9760(s2)
     5a0:	8e4e261c 	lw	t6,9756(s2)
     5a4:	02802025 	move	a0,s4
     5a8:	000c6900 	sll	t5,t4,0x4
     5ac:	8e45288c 	lw	a1,10380(s2)
     5b0:	0c000000 	jal	0 <func_800E11F0>
     5b4:	01ae8021 	addu	s0,t5,t6
     5b8:	14400003 	bnez	v0,5c8 <func_800E1618+0x1a0>
     5bc:	ae020000 	sw	v0,0(s0)
     5c0:	10000012 	b	60c <func_800E1618+0x1e4>
     5c4:	8e442620 	lw	a0,9760(s2)
     5c8:	8e040000 	lw	a0,0(s0)
     5cc:	0c000000 	jal	0 <func_800E11F0>
     5d0:	8e45288c 	lw	a1,10380(s2)
     5d4:	8e4f288c 	lw	t7,10380(s2)
     5d8:	ae000004 	sw	zero,4(s0)
     5dc:	a6000008 	sh	zero,8(s0)
     5e0:	a200000c 	sb	zero,12(s0)
     5e4:	a200000e 	sb	zero,14(s0)
     5e8:	a60f000a 	sh	t7,10(s0)
     5ec:	8e482894 	lw	t0,10388(s2)
     5f0:	8e582620 	lw	t8,9760(s2)
     5f4:	26310001 	addiu	s1,s1,1
     5f8:	0228082a 	slt	at,s1,t0
     5fc:	27190001 	addiu	t9,t8,1
     600:	1420ffe6 	bnez	at,59c <func_800E1618+0x174>
     604:	ae592620 	sw	t9,9760(s2)
     608:	03202025 	move	a0,t9
     60c:	8e512624 	lw	s1,9764(s2)
     610:	0224082b 	sltu	at,s1,a0
     614:	10200012 	beqz	at,660 <func_800E1618+0x238>
     618:	00111900 	sll	v1,s1,0x4
     61c:	02511021 	addu	v0,s2,s1
     620:	8e492624 	lw	t1,9764(s2)
     624:	00095023 	negu	t2,t1
     628:	004a5821 	addu	t3,v0,t2
     62c:	a171272c 	sb	s1,10028(t3)
     630:	8e4e261c 	lw	t6,9756(s2)
     634:	8e4c2624 	lw	t4,9764(s2)
     638:	24420001 	addiu	v0,v0,1
     63c:	01c37821 	addu	t7,t6,v1
     640:	022c6823 	subu	t5,s1,t4
     644:	a1ed000d 	sb	t5,13(t7)
     648:	8e442620 	lw	a0,9760(s2)
     64c:	26310001 	addiu	s1,s1,1
     650:	24630010 	addiu	v1,v1,16
     654:	0224082b 	sltu	at,s1,a0
     658:	5420fff2 	bnezl	at,624 <func_800E1618+0x1fc>
     65c:	8e492624 	lw	t1,9764(s2)
     660:	28810100 	slti	at,a0,256
     664:	1020000a 	beqz	at,690 <func_800E1618+0x268>
     668:	00808825 	move	s1,a0
     66c:	3c030000 	lui	v1,0x0
     670:	24630100 	addiu	v1,v1,256
     674:	02511021 	addu	v0,s2,s1
     678:	8e582624 	lw	t8,9764(s2)
     67c:	24420001 	addiu	v0,v0,1
     680:	0043082b 	sltu	at,v0,v1
     684:	1420fffc 	bnez	at,678 <func_800E1618+0x250>
     688:	a058272b 	sb	t8,10027(v0)
     68c:	8e442620 	lw	a0,9760(s2)
     690:	8e592624 	lw	t9,9764(s2)
     694:	8fbf002c 	lw	ra,44(sp)
     698:	a240282d 	sb	zero,10285(s2)
     69c:	00994023 	subu	t0,a0,t9
     6a0:	a248282f 	sb	t0,10287(s2)
     6a4:	8fb20020 	lw	s2,32(sp)
     6a8:	8fb00018 	lw	s0,24(sp)
     6ac:	8fb1001c 	lw	s1,28(sp)
     6b0:	8fb30024 	lw	s3,36(sp)
     6b4:	8fb40028 	lw	s4,40(sp)
     6b8:	03e00008 	jr	ra
     6bc:	27bd0030 	addiu	sp,sp,48

000006c0 <Audio_IsBankLoadComplete>:
     6c0:	27bdffe8 	addiu	sp,sp,-24
     6c4:	240100ff 	li	at,255
     6c8:	afbf0014 	sw	ra,20(sp)
     6cc:	14810003 	bne	a0,at,6dc <Audio_IsBankLoadComplete+0x1c>
     6d0:	00802825 	move	a1,a0
     6d4:	10000014 	b	728 <Audio_IsBankLoadComplete+0x68>
     6d8:	24020001 	li	v0,1
     6dc:	3c0e0000 	lui	t6,0x0
     6e0:	01c57021 	addu	t6,t6,a1
     6e4:	91ce3468 	lbu	t6,13416(t6)
     6e8:	29c10002 	slti	at,t6,2
     6ec:	14200003 	bnez	at,6fc <Audio_IsBankLoadComplete+0x3c>
     6f0:	00000000 	nop
     6f4:	1000000c 	b	728 <Audio_IsBankLoadComplete+0x68>
     6f8:	24020001 	li	v0,1
     6fc:	0c000000 	jal	0 <func_800E11F0>
     700:	24040001 	li	a0,1
     704:	3c0f0000 	lui	t7,0x0
     708:	01e27821 	addu	t7,t7,v0
     70c:	91ef3468 	lbu	t7,13416(t7)
     710:	00001025 	move	v0,zero
     714:	29e10002 	slti	at,t7,2
     718:	14200003 	bnez	at,728 <Audio_IsBankLoadComplete+0x68>
     71c:	00000000 	nop
     720:	10000001 	b	728 <Audio_IsBankLoadComplete+0x68>
     724:	24020001 	li	v0,1
     728:	8fbf0014 	lw	ra,20(sp)
     72c:	27bd0018 	addiu	sp,sp,24
     730:	03e00008 	jr	ra
     734:	00000000 	nop

00000738 <Audio_IsSeqLoadComplete>:
     738:	27bdffe8 	addiu	sp,sp,-24
     73c:	240100ff 	li	at,255
     740:	afbf0014 	sw	ra,20(sp)
     744:	14810003 	bne	a0,at,754 <Audio_IsSeqLoadComplete+0x1c>
     748:	00802825 	move	a1,a0
     74c:	10000014 	b	7a0 <Audio_IsSeqLoadComplete+0x68>
     750:	24020001 	li	v0,1
     754:	3c0e0000 	lui	t6,0x0
     758:	01c57021 	addu	t6,t6,a1
     75c:	91ce3498 	lbu	t6,13464(t6)
     760:	29c10002 	slti	at,t6,2
     764:	14200003 	bnez	at,774 <Audio_IsSeqLoadComplete+0x3c>
     768:	00000000 	nop
     76c:	1000000c 	b	7a0 <Audio_IsSeqLoadComplete+0x68>
     770:	24020001 	li	v0,1
     774:	0c000000 	jal	0 <func_800E11F0>
     778:	00002025 	move	a0,zero
     77c:	3c0f0000 	lui	t7,0x0
     780:	01e27821 	addu	t7,t7,v0
     784:	91ef3498 	lbu	t7,13464(t7)
     788:	00001025 	move	v0,zero
     78c:	29e10002 	slti	at,t7,2
     790:	14200003 	bnez	at,7a0 <Audio_IsSeqLoadComplete+0x68>
     794:	00000000 	nop
     798:	10000001 	b	7a0 <Audio_IsSeqLoadComplete+0x68>
     79c:	24020001 	li	v0,1
     7a0:	8fbf0014 	lw	ra,20(sp)
     7a4:	27bd0018 	addiu	sp,sp,24
     7a8:	03e00008 	jr	ra
     7ac:	00000000 	nop

000007b0 <func_800E19A0>:
     7b0:	27bdffe8 	addiu	sp,sp,-24
     7b4:	240100ff 	li	at,255
     7b8:	afbf0014 	sw	ra,20(sp)
     7bc:	14810003 	bne	a0,at,7cc <func_800E19A0+0x1c>
     7c0:	00802825 	move	a1,a0
     7c4:	10000014 	b	818 <func_800E19A0+0x68>
     7c8:	24020001 	li	v0,1
     7cc:	3c0e0000 	lui	t6,0x0
     7d0:	01c57021 	addu	t6,t6,a1
     7d4:	91ce3438 	lbu	t6,13368(t6)
     7d8:	29c10002 	slti	at,t6,2
     7dc:	14200003 	bnez	at,7ec <func_800E19A0+0x3c>
     7e0:	00000000 	nop
     7e4:	1000000c 	b	818 <func_800E19A0+0x68>
     7e8:	24020001 	li	v0,1
     7ec:	0c000000 	jal	0 <func_800E11F0>
     7f0:	24040002 	li	a0,2
     7f4:	3c0f0000 	lui	t7,0x0
     7f8:	01e27821 	addu	t7,t7,v0
     7fc:	91ef3438 	lbu	t7,13368(t7)
     800:	00001025 	move	v0,zero
     804:	29e10002 	slti	at,t7,2
     808:	14200003 	bnez	at,818 <func_800E19A0+0x68>
     80c:	00000000 	nop
     810:	10000001 	b	818 <func_800E19A0+0x68>
     814:	24020001 	li	v0,1
     818:	8fbf0014 	lw	ra,20(sp)
     81c:	27bd0018 	addiu	sp,sp,24
     820:	03e00008 	jr	ra
     824:	00000000 	nop

00000828 <Audio_SetBankLoadStatus>:
     828:	240100ff 	li	at,255
     82c:	10810008 	beq	a0,at,850 <Audio_SetBankLoadStatus+0x28>
     830:	3c0e0000 	lui	t6,0x0
     834:	25ce0000 	addiu	t6,t6,0
     838:	008e1021 	addu	v0,a0,t6
     83c:	904f3468 	lbu	t7,13416(v0)
     840:	24010005 	li	at,5
     844:	11e10002 	beq	t7,at,850 <Audio_SetBankLoadStatus+0x28>
     848:	00000000 	nop
     84c:	a0453468 	sb	a1,13416(v0)
     850:	03e00008 	jr	ra
     854:	00000000 	nop

00000858 <Audio_SetSeqLoadStatus>:
     858:	240100ff 	li	at,255
     85c:	10810008 	beq	a0,at,880 <Audio_SetSeqLoadStatus+0x28>
     860:	3c0e0000 	lui	t6,0x0
     864:	25ce0000 	addiu	t6,t6,0
     868:	008e1021 	addu	v0,a0,t6
     86c:	904f3498 	lbu	t7,13464(v0)
     870:	24010005 	li	at,5
     874:	11e10002 	beq	t7,at,880 <Audio_SetSeqLoadStatus+0x28>
     878:	00000000 	nop
     87c:	a0453498 	sb	a1,13464(v0)
     880:	03e00008 	jr	ra
     884:	00000000 	nop

00000888 <func_800E1A78>:
     888:	27bdffe8 	addiu	sp,sp,-24
     88c:	240100ff 	li	at,255
     890:	10810011 	beq	a0,at,8d8 <func_800E1A78+0x50>
     894:	afbf0014 	sw	ra,20(sp)
     898:	3c0e0000 	lui	t6,0x0
     89c:	25ce0000 	addiu	t6,t6,0
     8a0:	008e1821 	addu	v1,a0,t6
     8a4:	90623438 	lbu	v0,13368(v1)
     8a8:	24060005 	li	a2,5
     8ac:	24010002 	li	at,2
     8b0:	10c20003 	beq	a2,v0,8c0 <func_800E1A78+0x38>
     8b4:	00000000 	nop
     8b8:	a0653438 	sb	a1,13368(v1)
     8bc:	30a200ff 	andi	v0,a1,0xff
     8c0:	10c20003 	beq	a2,v0,8d0 <func_800E1A78+0x48>
     8c4:	00000000 	nop
     8c8:	54410004 	bnel	v0,at,8dc <func_800E1A78+0x54>
     8cc:	8fbf0014 	lw	ra,20(sp)
     8d0:	0c000000 	jal	0 <func_800E11F0>
     8d4:	00000000 	nop
     8d8:	8fbf0014 	lw	ra,20(sp)
     8dc:	27bd0018 	addiu	sp,sp,24
     8e0:	03e00008 	jr	ra
     8e4:	00000000 	nop

000008e8 <func_800E1AD8>:
     8e8:	240100ff 	li	at,255
     8ec:	10810008 	beq	a0,at,910 <func_800E1AD8+0x28>
     8f0:	3c0e0000 	lui	t6,0x0
     8f4:	25ce0000 	addiu	t6,t6,0
     8f8:	008e1021 	addu	v0,a0,t6
     8fc:	904f3438 	lbu	t7,13368(v0)
     900:	24010005 	li	at,5
     904:	11e10002 	beq	t7,at,910 <func_800E1AD8+0x28>
     908:	00000000 	nop
     90c:	a0453438 	sb	a1,13368(v0)
     910:	03e00008 	jr	ra
     914:	00000000 	nop

00000918 <func_800E1B08>:
     918:	afa60008 	sw	a2,8(sp)
     91c:	84830000 	lh	v1,0(a0)
     920:	a4860002 	sh	a2,2(a0)
     924:	ac850004 	sw	a1,4(a0)
     928:	18600011 	blez	v1,970 <func_800E1B08+0x58>
     92c:	00001025 	move	v0,zero
     930:	00803025 	move	a2,a0
     934:	24070002 	li	a3,2
     938:	8cce0014 	lw	t6,20(a2)
     93c:	24420001 	addiu	v0,v0,1
     940:	51c00009 	beqzl	t6,968 <func_800E1B08+0x50>
     944:	0043082a 	slt	at,v0,v1
     948:	80cf0018 	lb	t7,24(a2)
     94c:	54ef0006 	bnel	a3,t7,968 <func_800E1B08+0x50>
     950:	0043082a 	slt	at,v0,v1
     954:	8cd80010 	lw	t8,16(a2)
     958:	0305c821 	addu	t9,t8,a1
     95c:	acd90010 	sw	t9,16(a2)
     960:	84830000 	lh	v1,0(a0)
     964:	0043082a 	slt	at,v0,v1
     968:	1420fff3 	bnez	at,938 <func_800E1B08+0x20>
     96c:	24c60010 	addiu	a2,a2,16
     970:	03e00008 	jr	ra
     974:	00000000 	nop

00000978 <func_800E1B68>:
     978:	27bdffc8 	addiu	sp,sp,-56
     97c:	afb30020 	sw	s3,32(sp)
     980:	3c130000 	lui	s3,0x0
     984:	26730000 	addiu	s3,s3,0
     988:	966e2840 	lhu	t6,10304(s3)
     98c:	afbf0024 	sw	ra,36(sp)
     990:	afb2001c 	sw	s2,28(sp)
     994:	008e082a 	slt	at,a0,t6
     998:	afb10018 	sw	s1,24(sp)
     99c:	afb00014 	sw	s0,20(sp)
     9a0:	14200003 	bnez	at,9b0 <func_800E1B68+0x38>
     9a4:	afa5003c 	sw	a1,60(sp)
     9a8:	10000018 	b	a0c <func_800E1B68+0x94>
     9ac:	00001025 	move	v0,zero
     9b0:	8e62283c 	lw	v0,10300(s3)
     9b4:	00047840 	sll	t7,a0,0x1
     9b8:	241200ff 	li	s2,255
     9bc:	004fc021 	addu	t8,v0,t7
     9c0:	97100000 	lhu	s0,0(t8)
     9c4:	0202c821 	addu	t9,s0,v0
     9c8:	93310000 	lbu	s1,0(t9)
     9cc:	26100001 	addiu	s0,s0,1
     9d0:	5a20000c 	blezl	s1,a04 <func_800E1B68+0x8c>
     9d4:	8faa003c 	lw	t2,60(sp)
     9d8:	8e68283c 	lw	t0,10300(s3)
     9dc:	02084821 	addu	t1,s0,t0
     9e0:	91320000 	lbu	s2,0(t1)
     9e4:	26100001 	addiu	s0,s0,1
     9e8:	0c000000 	jal	0 <func_800E11F0>
     9ec:	02402025 	move	a0,s2
     9f0:	2631ffff 	addiu	s1,s1,-1
     9f4:	5e20fff9 	bgtzl	s1,9dc <func_800E1B68+0x64>
     9f8:	8e68283c 	lw	t0,10300(s3)
     9fc:	afa20028 	sw	v0,40(sp)
     a00:	8faa003c 	lw	t2,60(sp)
     a04:	8fa20028 	lw	v0,40(sp)
     a08:	ad520000 	sw	s2,0(t2)
     a0c:	8fbf0024 	lw	ra,36(sp)
     a10:	8fb00014 	lw	s0,20(sp)
     a14:	8fb10018 	lw	s1,24(sp)
     a18:	8fb2001c 	lw	s2,28(sp)
     a1c:	8fb30020 	lw	s3,32(sp)
     a20:	03e00008 	jr	ra
     a24:	27bd0038 	addiu	sp,sp,56

00000a28 <func_800E1C18>:
     a28:	3c0e0000 	lui	t6,0x0
     a2c:	95ce2840 	lhu	t6,10304(t6)
     a30:	27bdffe0 	addiu	sp,sp,-32
     a34:	afbf0014 	sw	ra,20(sp)
     a38:	008e082a 	slt	at,a0,t6
     a3c:	1020000e 	beqz	at,a78 <func_800E1C18+0x50>
     a40:	00a03025 	move	a2,a1
     a44:	30af0002 	andi	t7,a1,0x2
     a48:	11e00006 	beqz	t7,a64 <func_800E1C18+0x3c>
     a4c:	27a50018 	addiu	a1,sp,24
     a50:	afa40020 	sw	a0,32(sp)
     a54:	0c000000 	jal	0 <func_800E11F0>
     a58:	afa60024 	sw	a2,36(sp)
     a5c:	8fa40020 	lw	a0,32(sp)
     a60:	8fa60024 	lw	a2,36(sp)
     a64:	30d80001 	andi	t8,a2,0x1
     a68:	53000004 	beqzl	t8,a7c <func_800E1C18+0x54>
     a6c:	8fbf0014 	lw	ra,20(sp)
     a70:	0c000000 	jal	0 <func_800E11F0>
     a74:	00000000 	nop
     a78:	8fbf0014 	lw	ra,20(sp)
     a7c:	27bd0020 	addiu	sp,sp,32
     a80:	03e00008 	jr	ra
     a84:	00000000 	nop

00000a88 <func_800E1C78>:
     a88:	27bdffd0 	addiu	sp,sp,-48
     a8c:	afbf0024 	sw	ra,36(sp)
     a90:	afb00020 	sw	s0,32(sp)
     a94:	908e0000 	lbu	t6,0(a0)
     a98:	24010001 	li	at,1
     a9c:	00808025 	move	s0,a0
     aa0:	31cf0001 	andi	t7,t6,0x1
     aa4:	55e1002f 	bnel	t7,at,b64 <func_800E1C78+0xdc>
     aa8:	8fbf0024 	lw	ra,36(sp)
     aac:	8c820000 	lw	v0,0(a0)
     ab0:	3c0100ff 	lui	at,0xff
     ab4:	3421ffff 	ori	at,at,0xffff
     ab8:	00021900 	sll	v1,v0,0x4
     abc:	00031f82 	srl	v1,v1,0x1e
     ac0:	10600027 	beqz	v1,b60 <func_800E1C78+0xd8>
     ac4:	00412024 	and	a0,v0,at
     ac8:	8e060004 	lw	a2,4(s0)
     acc:	00033e00 	sll	a3,v1,0x18
     ad0:	24180001 	li	t8,1
     ad4:	afb80010 	sw	t8,16(sp)
     ad8:	0c000000 	jal	0 <func_800E11F0>
     adc:	00073e03 	sra	a3,a3,0x18
     ae0:	14400003 	bnez	v0,af0 <func_800E1C78+0x68>
     ae4:	00402825 	move	a1,v0
     ae8:	1000001d 	b	b60 <func_800E1C78+0xd8>
     aec:	2402ffff 	li	v0,-1
     af0:	8e020000 	lw	v0,0(s0)
     af4:	24010001 	li	at,1
     af8:	3c190000 	lui	t9,0x0
     afc:	00021900 	sll	v1,v0,0x4
     b00:	00031f82 	srl	v1,v1,0x1e
     b04:	1461000b 	bne	v1,at,b34 <func_800E1C78+0xac>
     b08:	00603825 	move	a3,v1
     b0c:	8f392838 	lw	t9,10296(t9)
     b10:	3c0100ff 	lui	at,0xff
     b14:	3421ffff 	ori	at,at,0xffff
     b18:	8e040004 	lw	a0,4(s0)
     b1c:	87270002 	lh	a3,2(t9)
     b20:	afa5002c 	sw	a1,44(sp)
     b24:	0c000000 	jal	0 <func_800E11F0>
     b28:	00413024 	and	a2,v0,at
     b2c:	10000008 	b	b50 <func_800E1C78+0xc8>
     b30:	92080000 	lbu	t0,0(s0)
     b34:	3c0100ff 	lui	at,0xff
     b38:	3421ffff 	ori	at,at,0xffff
     b3c:	8e040004 	lw	a0,4(s0)
     b40:	afa5002c 	sw	a1,44(sp)
     b44:	0c000000 	jal	0 <func_800E11F0>
     b48:	00413024 	and	a2,v0,at
     b4c:	92080000 	lbu	t0,0(s0)
     b50:	3109fff3 	andi	t1,t0,0xfff3
     b54:	a2090000 	sb	t1,0(s0)
     b58:	8faa002c 	lw	t2,44(sp)
     b5c:	ae0a0004 	sw	t2,4(s0)
     b60:	8fbf0024 	lw	ra,36(sp)
     b64:	8fb00020 	lw	s0,32(sp)
     b68:	27bd0030 	addiu	sp,sp,48
     b6c:	03e00008 	jr	ra
     b70:	00000000 	nop

00000b74 <func_800E1D64>:
     b74:	27bdffd8 	addiu	sp,sp,-40
     b78:	afb00018 	sw	s0,24(sp)
     b7c:	28a1007f 	slti	at,a1,127
     b80:	00808025 	move	s0,a0
     b84:	1020001d 	beqz	at,bfc <func_800E1D64+0x88>
     b88:	afbf001c 	sw	ra,28(sp)
     b8c:	0c000000 	jal	0 <func_800E11F0>
     b90:	00000000 	nop
     b94:	14400003 	bnez	v0,ba4 <func_800E1D64+0x30>
     b98:	00401825 	move	v1,v0
     b9c:	10000024 	b	c30 <func_800E1D64+0xbc>
     ba0:	2402ffff 	li	v0,-1
     ba4:	904e0001 	lbu	t6,1(v0)
     ba8:	02002825 	move	a1,s0
     bac:	51c00006 	beqzl	t6,bc8 <func_800E1D64+0x54>
     bb0:	8c640010 	lw	a0,16(v1)
     bb4:	8c640008 	lw	a0,8(v1)
     bb8:	0c000000 	jal	0 <func_800E11F0>
     bbc:	afa30024 	sw	v1,36(sp)
     bc0:	8fa30024 	lw	v1,36(sp)
     bc4:	8c640010 	lw	a0,16(v1)
     bc8:	afa30024 	sw	v1,36(sp)
     bcc:	0c000000 	jal	0 <func_800E11F0>
     bd0:	02002825 	move	a1,s0
     bd4:	8fa30024 	lw	v1,36(sp)
     bd8:	2401007f 	li	at,127
     bdc:	02002825 	move	a1,s0
     be0:	906f0002 	lbu	t7,2(v1)
     be4:	51e10013 	beql	t7,at,c34 <func_800E1D64+0xc0>
     be8:	8fbf001c 	lw	ra,28(sp)
     bec:	0c000000 	jal	0 <func_800E11F0>
     bf0:	8c640018 	lw	a0,24(v1)
     bf4:	1000000f 	b	c34 <func_800E1D64+0xc0>
     bf8:	8fbf001c 	lw	ra,28(sp)
     bfc:	2401007f 	li	at,127
     c00:	14a1000b 	bne	a1,at,c30 <func_800E1D64+0xbc>
     c04:	02002025 	move	a0,s0
     c08:	0c000000 	jal	0 <func_800E11F0>
     c0c:	00c02825 	move	a1,a2
     c10:	14400003 	bnez	v0,c20 <func_800E1D64+0xac>
     c14:	00401825 	move	v1,v0
     c18:	10000005 	b	c30 <func_800E1D64+0xbc>
     c1c:	2402ffff 	li	v0,-1
     c20:	8c640004 	lw	a0,4(v1)
     c24:	0c000000 	jal	0 <func_800E11F0>
     c28:	02002825 	move	a1,s0
     c2c:	00001025 	move	v0,zero
     c30:	8fbf001c 	lw	ra,28(sp)
     c34:	8fb00018 	lw	s0,24(sp)
     c38:	27bd0028 	addiu	sp,sp,40
     c3c:	03e00008 	jr	ra
     c40:	00000000 	nop

00000c44 <func_800E1E34>:
     c44:	27bdffe0 	addiu	sp,sp,-32
     c48:	8fae0030 	lw	t6,48(sp)
     c4c:	afbf001c 	sw	ra,28(sp)
     c50:	0c000000 	jal	0 <func_800E11F0>
     c54:	afae0010 	sw	t6,16(sp)
     c58:	14400004 	bnez	v0,c6c <func_800E1E34+0x28>
     c5c:	8fa40030 	lw	a0,48(sp)
     c60:	2405ffff 	li	a1,-1
     c64:	0c000000 	jal	0 <func_800E11F0>
     c68:	00003025 	move	a2,zero
     c6c:	8fbf001c 	lw	ra,28(sp)
     c70:	27bd0020 	addiu	sp,sp,32
     c74:	03e00008 	jr	ra
     c78:	00000000 	nop

00000c7c <func_800E1E6C>:
     c7c:	27bdffe0 	addiu	sp,sp,-32
     c80:	afa7002c 	sw	a3,44(sp)
     c84:	8fae002c 	lw	t6,44(sp)
     c88:	afa50024 	sw	a1,36(sp)
     c8c:	00802825 	move	a1,a0
     c90:	00c03825 	move	a3,a2
     c94:	afbf001c 	sw	ra,28(sp)
     c98:	afa40020 	sw	a0,32(sp)
     c9c:	afa60028 	sw	a2,40(sp)
     ca0:	00003025 	move	a2,zero
     ca4:	00002025 	move	a0,zero
     ca8:	0c000000 	jal	0 <func_800E11F0>
     cac:	afae0010 	sw	t6,16(sp)
     cb0:	8fbf001c 	lw	ra,28(sp)
     cb4:	27bd0020 	addiu	sp,sp,32
     cb8:	03e00008 	jr	ra
     cbc:	00000000 	nop

00000cc0 <func_800E1EB0>:
     cc0:	27bdffe0 	addiu	sp,sp,-32
     cc4:	afa7002c 	sw	a3,44(sp)
     cc8:	8fae002c 	lw	t6,44(sp)
     ccc:	afa50024 	sw	a1,36(sp)
     cd0:	00802825 	move	a1,a0
     cd4:	00c03825 	move	a3,a2
     cd8:	afbf001c 	sw	ra,28(sp)
     cdc:	afa40020 	sw	a0,32(sp)
     ce0:	afa60028 	sw	a2,40(sp)
     ce4:	00003025 	move	a2,zero
     ce8:	24040002 	li	a0,2
     cec:	0c000000 	jal	0 <func_800E11F0>
     cf0:	afae0010 	sw	t6,16(sp)
     cf4:	8fbf001c 	lw	ra,28(sp)
     cf8:	27bd0020 	addiu	sp,sp,32
     cfc:	03e00008 	jr	ra
     d00:	00000000 	nop

00000d04 <func_800E1EF4>:
     d04:	27bdffe0 	addiu	sp,sp,-32
     d08:	afa7002c 	sw	a3,44(sp)
     d0c:	8fae002c 	lw	t6,44(sp)
     d10:	afa50024 	sw	a1,36(sp)
     d14:	00802825 	move	a1,a0
     d18:	00c03825 	move	a3,a2
     d1c:	afbf001c 	sw	ra,28(sp)
     d20:	afa40020 	sw	a0,32(sp)
     d24:	afa60028 	sw	a2,40(sp)
     d28:	00003025 	move	a2,zero
     d2c:	24040001 	li	a0,1
     d30:	0c000000 	jal	0 <func_800E11F0>
     d34:	afae0010 	sw	t6,16(sp)
     d38:	8fbf001c 	lw	ra,28(sp)
     d3c:	27bd0020 	addiu	sp,sp,32
     d40:	03e00008 	jr	ra
     d44:	00000000 	nop

00000d48 <func_800E1F38>:
     d48:	3c060000 	lui	a2,0x0
     d4c:	24c60000 	addiu	a2,a2,0
     d50:	8cc2283c 	lw	v0,10300(a2)
     d54:	00047040 	sll	t6,a0,0x1
     d58:	004e7821 	addu	t7,v0,t6
     d5c:	95e30000 	lhu	v1,0(t7)
     d60:	0062c021 	addu	t8,v1,v0
     d64:	93190000 	lbu	t9,0(t8)
     d68:	24630001 	addiu	v1,v1,1
     d6c:	17200003 	bnez	t9,d7c <func_800E1F38+0x34>
     d70:	acb90000 	sw	t9,0(a1)
     d74:	03e00008 	jr	ra
     d78:	00001025 	move	v0,zero
     d7c:	8cc9283c 	lw	t1,10300(a2)
     d80:	01231021 	addu	v0,t1,v1
     d84:	03e00008 	jr	ra
     d88:	00000000 	nop

00000d8c <func_800E1F7C>:
     d8c:	27bdffd8 	addiu	sp,sp,-40
     d90:	afb30020 	sw	s3,32(sp)
     d94:	3c130000 	lui	s3,0x0
     d98:	26730000 	addiu	s3,s3,0
     d9c:	8e62283c 	lw	v0,10300(s3)
     da0:	00047040 	sll	t6,a0,0x1
     da4:	afbf0024 	sw	ra,36(sp)
     da8:	afb2001c 	sw	s2,28(sp)
     dac:	afb10018 	sw	s1,24(sp)
     db0:	afb00014 	sw	s0,20(sp)
     db4:	004e7821 	addu	t7,v0,t6
     db8:	95f10000 	lhu	s1,0(t7)
     dbc:	0222c021 	addu	t8,s1,v0
     dc0:	93120000 	lbu	s2,0(t8)
     dc4:	26310001 	addiu	s1,s1,1
     dc8:	5a400016 	blezl	s2,e24 <func_800E1F7C+0x98>
     dcc:	8fbf0024 	lw	ra,36(sp)
     dd0:	8e79283c 	lw	t9,10300(s3)
     dd4:	2652ffff 	addiu	s2,s2,-1
     dd8:	24040001 	li	a0,1
     ddc:	02394021 	addu	t0,s1,t9
     de0:	91050000 	lbu	a1,0(t0)
     de4:	0c000000 	jal	0 <func_800E11F0>
     de8:	26310001 	addiu	s1,s1,1
     dec:	00408025 	move	s0,v0
     df0:	24040001 	li	a0,1
     df4:	0c000000 	jal	0 <func_800E11F0>
     df8:	00402825 	move	a1,v0
     dfc:	14400006 	bnez	v0,e18 <func_800E1F7C+0x8c>
     e00:	00000000 	nop
     e04:	0c000000 	jal	0 <func_800E11F0>
     e08:	02002025 	move	a0,s0
     e0c:	02002025 	move	a0,s0
     e10:	0c000000 	jal	0 <func_800E11F0>
     e14:	00002825 	move	a1,zero
     e18:	5e40ffee 	bgtzl	s2,dd4 <func_800E1F7C+0x48>
     e1c:	8e79283c 	lw	t9,10300(s3)
     e20:	8fbf0024 	lw	ra,36(sp)
     e24:	8fb00014 	lw	s0,20(sp)
     e28:	8fb10018 	lw	s1,24(sp)
     e2c:	8fb2001c 	lw	s2,28(sp)
     e30:	8fb30020 	lw	s3,32(sp)
     e34:	03e00008 	jr	ra
     e38:	27bd0028 	addiu	sp,sp,40

00000e3c <func_800E202C>:
     e3c:	3c0e0000 	lui	t6,0x0
     e40:	85ce2c22 	lh	t6,11298(t6)
     e44:	27bdffe8 	addiu	sp,sp,-24
     e48:	afbf0014 	sw	ra,20(sp)
     e4c:	148e0005 	bne	a0,t6,e64 <func_800E202C+0x28>
     e50:	00803025 	move	a2,a0
     e54:	240fffff 	li	t7,-1
     e58:	3c010000 	lui	at,0x0
     e5c:	10000008 	b	e80 <func_800E202C+0x44>
     e60:	a42f2c22 	sh	t7,11298(at)
     e64:	3c180000 	lui	t8,0x0
     e68:	87182c2e 	lh	t8,11310(t8)
     e6c:	2419ffff 	li	t9,-1
     e70:	3c010000 	lui	at,0x0
     e74:	14d80002 	bne	a2,t8,e80 <func_800E202C+0x44>
     e78:	00000000 	nop
     e7c:	a4392c2e 	sh	t9,11310(at)
     e80:	3c090000 	lui	t1,0x0
     e84:	8d292b30 	lw	t1,11056(t1)
     e88:	3c080000 	lui	t0,0x0
     e8c:	25082b30 	addiu	t0,t0,11056
     e90:	01002025 	move	a0,t0
     e94:	1120000d 	beqz	t1,ecc <func_800E202C+0x90>
     e98:	00001825 	move	v1,zero
     e9c:	01001025 	move	v0,t0
     ea0:	2405ffff 	li	a1,-1
     ea4:	844a001e 	lh	t2,30(v0)
     ea8:	54ca0003 	bnel	a2,t2,eb8 <func_800E202C+0x7c>
     eac:	8c8b0000 	lw	t3,0(a0)
     eb0:	a445001e 	sh	a1,30(v0)
     eb4:	8c8b0000 	lw	t3,0(a0)
     eb8:	24630001 	addiu	v1,v1,1
     ebc:	2442000c 	addiu	v0,v0,12
     ec0:	006b082b 	sltu	at,v1,t3
     ec4:	5420fff8 	bnezl	at,ea8 <func_800E202C+0x6c>
     ec8:	844a001e 	lh	t2,30(v0)
     ecc:	0c000000 	jal	0 <func_800E11F0>
     ed0:	00c02025 	move	a0,a2
     ed4:	8fbf0014 	lw	ra,20(sp)
     ed8:	27bd0018 	addiu	sp,sp,24
     edc:	03e00008 	jr	ra
     ee0:	00000000 	nop

00000ee4 <func_800E20D4>:
     ee4:	3c020000 	lui	v0,0x0
     ee8:	24420000 	addiu	v0,v0,0
     eec:	8c4e2984 	lw	t6,10628(v0)
     ef0:	27bdffe8 	addiu	sp,sp,-24
     ef4:	afbf0014 	sw	ra,20(sp)
     ef8:	11c00003 	beqz	t6,f08 <func_800E20D4+0x24>
     efc:	00047880 	sll	t7,a0,0x2
     f00:	10000008 	b	f24 <func_800E20D4+0x40>
     f04:	00001025 	move	v0,zero
     f08:	01e47823 	subu	t7,t7,a0
     f0c:	000f7880 	sll	t7,t7,0x2
     f10:	01e47823 	subu	t7,t7,a0
     f14:	000f7940 	sll	t7,t7,0x5
     f18:	004fc021 	addu	t8,v0,t7
     f1c:	0c000000 	jal	0 <func_800E11F0>
     f20:	af00360c 	sw	zero,13836(t8)
     f24:	8fbf0014 	lw	ra,20(sp)
     f28:	27bd0018 	addiu	sp,sp,24
     f2c:	03e00008 	jr	ra
     f30:	00000000 	nop

00000f34 <func_800E2124>:
     f34:	3c020000 	lui	v0,0x0
     f38:	24420000 	addiu	v0,v0,0
     f3c:	8c4e2984 	lw	t6,10628(v0)
     f40:	27bdffe8 	addiu	sp,sp,-24
     f44:	afbf0014 	sw	ra,20(sp)
     f48:	11c00003 	beqz	t6,f58 <func_800E2124+0x24>
     f4c:	00c03825 	move	a3,a2
     f50:	1000000a 	b	f7c <func_800E2124+0x48>
     f54:	00001025 	move	v0,zero
     f58:	00047880 	sll	t7,a0,0x2
     f5c:	01e47823 	subu	t7,t7,a0
     f60:	000f7880 	sll	t7,t7,0x2
     f64:	01e47823 	subu	t7,t7,a0
     f68:	000f7940 	sll	t7,t7,0x5
     f6c:	004fc021 	addu	t8,v0,t7
     f70:	af07360c 	sw	a3,13836(t8)
     f74:	0c000000 	jal	0 <func_800E11F0>
     f78:	00003025 	move	a2,zero
     f7c:	8fbf0014 	lw	ra,20(sp)
     f80:	27bd0018 	addiu	sp,sp,24
     f84:	03e00008 	jr	ra
     f88:	00000000 	nop

00000f8c <func_800E217C>:
     f8c:	27bdffd0 	addiu	sp,sp,-48
     f90:	afb30024 	sw	s3,36(sp)
     f94:	3c130000 	lui	s3,0x0
     f98:	26730000 	addiu	s3,s3,0
     f9c:	966f2840 	lhu	t7,10304(s3)
     fa0:	afbf002c 	sw	ra,44(sp)
     fa4:	afb40028 	sw	s4,40(sp)
     fa8:	00af082a 	slt	at,a1,t7
     fac:	afb20020 	sw	s2,32(sp)
     fb0:	afb1001c 	sw	s1,28(sp)
     fb4:	afb00018 	sw	s0,24(sp)
     fb8:	afa40030 	sw	a0,48(sp)
     fbc:	afa50034 	sw	a1,52(sp)
     fc0:	14200003 	bnez	at,fd0 <func_800E217C+0x44>
     fc4:	afa60038 	sw	a2,56(sp)
     fc8:	1000003a 	b	10b4 <func_800E217C+0x128>
     fcc:	00001025 	move	v0,zero
     fd0:	8fb80030 	lw	t8,48(sp)
     fd4:	0018c880 	sll	t9,t8,0x2
     fd8:	0338c823 	subu	t9,t9,t8
     fdc:	0019c880 	sll	t9,t9,0x2
     fe0:	0338c823 	subu	t9,t9,t8
     fe4:	0019c940 	sll	t9,t9,0x5
     fe8:	0279a021 	addu	s4,s3,t9
     fec:	26943530 	addiu	s4,s4,13616
     ff0:	0c000000 	jal	0 <func_800E11F0>
     ff4:	02802025 	move	a0,s4
     ff8:	8fa80034 	lw	t0,52(sp)
     ffc:	8e62283c 	lw	v0,10300(s3)
    1000:	241200ff 	li	s2,255
    1004:	00084840 	sll	t1,t0,0x1
    1008:	00495021 	addu	t2,v0,t1
    100c:	95500000 	lhu	s0,0(t2)
    1010:	02025821 	addu	t3,s0,v0
    1014:	91710000 	lbu	s1,0(t3)
    1018:	26100001 	addiu	s0,s0,1
    101c:	1a20000a 	blez	s1,1048 <func_800E217C+0xbc>
    1020:	00000000 	nop
    1024:	8e6c283c 	lw	t4,10300(s3)
    1028:	020c6821 	addu	t5,s0,t4
    102c:	91b20000 	lbu	s2,0(t5)
    1030:	26100001 	addiu	s0,s0,1
    1034:	0c000000 	jal	0 <func_800E11F0>
    1038:	02402025 	move	a0,s2
    103c:	2631ffff 	addiu	s1,s1,-1
    1040:	5e20fff9 	bgtzl	s1,1028 <func_800E217C+0x9c>
    1044:	8e6c283c 	lw	t4,10300(s3)
    1048:	0c000000 	jal	0 <func_800E11F0>
    104c:	8fa40034 	lw	a0,52(sp)
    1050:	14400003 	bnez	v0,1060 <func_800E217C+0xd4>
    1054:	00408025 	move	s0,v0
    1058:	10000016 	b	10b4 <func_800E217C+0x128>
    105c:	00001025 	move	v0,zero
    1060:	0c000000 	jal	0 <func_800E11F0>
    1064:	02802025 	move	a0,s4
    1068:	8fae0034 	lw	t6,52(sp)
    106c:	24040001 	li	a0,1
    1070:	02402825 	move	a1,s2
    1074:	0c000000 	jal	0 <func_800E11F0>
    1078:	a28e0004 	sb	t6,4(s4)
    107c:	92980000 	lbu	t8,0(s4)
    1080:	a2820005 	sb	v0,5(s4)
    1084:	ae900018 	sw	s0,24(s4)
    1088:	37080080 	ori	t0,t8,0x80
    108c:	a2880000 	sb	t0,0(s4)
    1090:	310900bf 	andi	t1,t0,0xbf
    1094:	ae900078 	sw	s0,120(s4)
    1098:	a2800090 	sb	zero,144(s4)
    109c:	a6800010 	sh	zero,16(s4)
    10a0:	a2890000 	sb	t1,0(s4)
    10a4:	8faa0030 	lw	t2,48(sp)
    10a8:	02802025 	move	a0,s4
    10ac:	0c000000 	jal	0 <func_800E11F0>
    10b0:	a28a0007 	sb	t2,7(s4)
    10b4:	8fbf002c 	lw	ra,44(sp)
    10b8:	8fb00018 	lw	s0,24(sp)
    10bc:	8fb1001c 	lw	s1,28(sp)
    10c0:	8fb20020 	lw	s2,32(sp)
    10c4:	8fb30024 	lw	s3,36(sp)
    10c8:	8fb40028 	lw	s4,40(sp)
    10cc:	03e00008 	jr	ra
    10d0:	27bd0030 	addiu	sp,sp,48

000010d4 <func_800E22C4>:
    10d4:	27bdffd8 	addiu	sp,sp,-40
    10d8:	afbf0014 	sw	ra,20(sp)
    10dc:	afa40028 	sw	a0,40(sp)
    10e0:	8fa50028 	lw	a1,40(sp)
    10e4:	0c000000 	jal	0 <func_800E11F0>
    10e8:	00002025 	move	a0,zero
    10ec:	3c0e0000 	lui	t6,0x0
    10f0:	01c27021 	addu	t6,t6,v0
    10f4:	91ce3498 	lbu	t6,13464(t6)
    10f8:	24010001 	li	at,1
    10fc:	00002025 	move	a0,zero
    1100:	15c10003 	bne	t6,at,1110 <func_800E22C4+0x3c>
    1104:	8fa50028 	lw	a1,40(sp)
    1108:	10000003 	b	1118 <func_800E22C4+0x44>
    110c:	00001025 	move	v0,zero
    1110:	0c000000 	jal	0 <func_800E11F0>
    1114:	27a60020 	addiu	a2,sp,32
    1118:	8fbf0014 	lw	ra,20(sp)
    111c:	27bd0028 	addiu	sp,sp,40
    1120:	03e00008 	jr	ra
    1124:	00000000 	nop

00001128 <func_800E2318>:
    1128:	27bdffe8 	addiu	sp,sp,-24
    112c:	afbf0014 	sw	ra,20(sp)
    1130:	0c000000 	jal	0 <func_800E11F0>
    1134:	24060001 	li	a2,1
    1138:	8fbf0014 	lw	ra,20(sp)
    113c:	27bd0018 	addiu	sp,sp,24
    1140:	03e00008 	jr	ra
    1144:	00000000 	nop

00001148 <func_800E2338>:
    1148:	27bdffc8 	addiu	sp,sp,-56
    114c:	afbf001c 	sw	ra,28(sp)
    1150:	afa40038 	sw	a0,56(sp)
    1154:	afa5003c 	sw	a1,60(sp)
    1158:	afb00018 	sw	s0,24(sp)
    115c:	afa60040 	sw	a2,64(sp)
    1160:	8fa50038 	lw	a1,56(sp)
    1164:	0c000000 	jal	0 <func_800E11F0>
    1168:	24040002 	li	a0,2
    116c:	00408025 	move	s0,v0
    1170:	0c000000 	jal	0 <func_800E11F0>
    1174:	24040002 	li	a0,2
    1178:	24040002 	li	a0,2
    117c:	02002825 	move	a1,s0
    1180:	0c000000 	jal	0 <func_800E11F0>
    1184:	afa20030 	sw	v0,48(sp)
    1188:	8fa30030 	lw	v1,48(sp)
    118c:	1040000f 	beqz	v0,11cc <func_800E2338+0x84>
    1190:	00403025 	move	a2,v0
    1194:	3c0e0000 	lui	t6,0x0
    1198:	01d07021 	addu	t6,t6,s0
    119c:	91ce3438 	lbu	t6,13368(t6)
    11a0:	24010001 	li	at,1
    11a4:	02002025 	move	a0,s0
    11a8:	11c10004 	beq	t6,at,11bc <func_800E2338+0x74>
    11ac:	24050002 	li	a1,2
    11b0:	0c000000 	jal	0 <func_800E11F0>
    11b4:	afa20034 	sw	v0,52(sp)
    11b8:	8fa60034 	lw	a2,52(sp)
    11bc:	8faf003c 	lw	t7,60(sp)
    11c0:	00c01025 	move	v0,a2
    11c4:	10000022 	b	1250 <func_800E2338+0x108>
    11c8:	ade00000 	sw	zero,0(t7)
    11cc:	8fa50038 	lw	a1,56(sp)
    11d0:	24010004 	li	at,4
    11d4:	8fb90040 	lw	t9,64(sp)
    11d8:	0005c100 	sll	t8,a1,0x4
    11dc:	00783821 	addu	a3,v1,t8
    11e0:	80e20019 	lb	v0,25(a3)
    11e4:	8fa9003c 	lw	t1,60(sp)
    11e8:	10410003 	beq	v0,at,11f8 <func_800E2338+0xb0>
    11ec:	24010001 	li	at,1
    11f0:	17210007 	bne	t9,at,1210 <func_800E2338+0xc8>
    11f4:	24040002 	li	a0,2
    11f8:	80e80018 	lb	t0,24(a3)
    11fc:	00105100 	sll	t2,s0,0x4
    1200:	006a5821 	addu	t3,v1,t2
    1204:	ad280000 	sw	t0,0(t1)
    1208:	10000011 	b	1250 <func_800E2338+0x108>
    120c:	8d620010 	lw	v0,16(t3)
    1210:	27a60040 	addiu	a2,sp,64
    1214:	afa30030 	sw	v1,48(sp)
    1218:	0c000000 	jal	0 <func_800E11F0>
    121c:	afa70024 	sw	a3,36(sp)
    1220:	8fa30030 	lw	v1,48(sp)
    1224:	10400004 	beqz	v0,1238 <func_800E2338+0xf0>
    1228:	8fa70024 	lw	a3,36(sp)
    122c:	8fac003c 	lw	t4,60(sp)
    1230:	10000007 	b	1250 <func_800E2338+0x108>
    1234:	ad800000 	sw	zero,0(t4)
    1238:	80ed0018 	lb	t5,24(a3)
    123c:	8fae003c 	lw	t6,60(sp)
    1240:	00107900 	sll	t7,s0,0x4
    1244:	006fc021 	addu	t8,v1,t7
    1248:	adcd0000 	sw	t5,0(t6)
    124c:	8f020010 	lw	v0,16(t8)
    1250:	8fbf001c 	lw	ra,28(sp)
    1254:	8fb00018 	lw	s0,24(sp)
    1258:	27bd0038 	addiu	sp,sp,56
    125c:	03e00008 	jr	ra
    1260:	00000000 	nop

00001264 <func_800E2454>:
    1264:	27bdffb8 	addiu	sp,sp,-72
    1268:	afbf0014 	sw	ra,20(sp)
    126c:	afa40048 	sw	a0,72(sp)
    1270:	8fa50048 	lw	a1,72(sp)
    1274:	0c000000 	jal	0 <func_800E11F0>
    1278:	24040001 	li	a0,1
    127c:	3c050000 	lui	a1,0x0
    1280:	24a50000 	addiu	a1,a1,0
    1284:	00a27021 	addu	t6,a1,v0
    1288:	91cf3468 	lbu	t7,13416(t6)
    128c:	24010001 	li	at,1
    1290:	afa2001c 	sw	v0,28(sp)
    1294:	15e10003 	bne	t7,at,12a4 <func_800E2454+0x40>
    1298:	0002c880 	sll	t9,v0,0x2
    129c:	1000002e 	b	1358 <func_800E2454+0xf4>
    12a0:	00001025 	move	v0,zero
    12a4:	8cb82844 	lw	t8,10308(a1)
    12a8:	0322c821 	addu	t9,t9,v0
    12ac:	0019c880 	sll	t9,t9,0x2
    12b0:	03191821 	addu	v1,t8,t9
    12b4:	90640002 	lbu	a0,2(v1)
    12b8:	90670003 	lbu	a3,3(v1)
    12bc:	240100ff 	li	at,255
    12c0:	afa40020 	sw	a0,32(sp)
    12c4:	10810008 	beq	a0,at,12e8 <func_800E2454+0x84>
    12c8:	afa70024 	sw	a3,36(sp)
    12cc:	27a50030 	addiu	a1,sp,48
    12d0:	00003025 	move	a2,zero
    12d4:	0c000000 	jal	0 <func_800E11F0>
    12d8:	afa7003c 	sw	a3,60(sp)
    12dc:	8fa7003c 	lw	a3,60(sp)
    12e0:	10000002 	b	12ec <func_800E2454+0x88>
    12e4:	afa20028 	sw	v0,40(sp)
    12e8:	afa00028 	sw	zero,40(sp)
    12ec:	240100ff 	li	at,255
    12f0:	10e10006 	beq	a3,at,130c <func_800E2454+0xa8>
    12f4:	00e02025 	move	a0,a3
    12f8:	27a50034 	addiu	a1,sp,52
    12fc:	0c000000 	jal	0 <func_800E11F0>
    1300:	00003025 	move	a2,zero
    1304:	10000002 	b	1310 <func_800E2454+0xac>
    1308:	afa2002c 	sw	v0,44(sp)
    130c:	afa0002c 	sw	zero,44(sp)
    1310:	24040001 	li	a0,1
    1314:	8fa50048 	lw	a1,72(sp)
    1318:	0c000000 	jal	0 <func_800E11F0>
    131c:	27a60038 	addiu	a2,sp,56
    1320:	14400003 	bnez	v0,1330 <func_800E2454+0xcc>
    1324:	00402825 	move	a1,v0
    1328:	1000000b 	b	1358 <func_800E2454+0xf4>
    132c:	00001025 	move	v0,zero
    1330:	8fa80038 	lw	t0,56(sp)
    1334:	24010001 	li	at,1
    1338:	8fa4001c 	lw	a0,28(sp)
    133c:	15010005 	bne	t0,at,1354 <func_800E2454+0xf0>
    1340:	27a60020 	addiu	a2,sp,32
    1344:	00003825 	move	a3,zero
    1348:	0c000000 	jal	0 <func_800E11F0>
    134c:	afa50044 	sw	a1,68(sp)
    1350:	8fa50044 	lw	a1,68(sp)
    1354:	00a01025 	move	v0,a1
    1358:	8fbf0014 	lw	ra,20(sp)
    135c:	27bd0048 	addiu	sp,sp,72
    1360:	03e00008 	jr	ra
    1364:	00000000 	nop

00001368 <func_800E2558>:
    1368:	27bdffb0 	addiu	sp,sp,-80
    136c:	afbf001c 	sw	ra,28(sp)
    1370:	afb00018 	sw	s0,24(sp)
    1374:	afa40050 	sw	a0,80(sp)
    1378:	afa50054 	sw	a1,84(sp)
    137c:	0c000000 	jal	0 <func_800E11F0>
    1380:	afa60058 	sw	a2,88(sp)
    1384:	afa2002c 	sw	v0,44(sp)
    1388:	8fa40050 	lw	a0,80(sp)
    138c:	0c000000 	jal	0 <func_800E11F0>
    1390:	00402825 	move	a1,v0
    1394:	10400005 	beqz	v0,13ac <func_800E2558+0x44>
    1398:	00408025 	move	s0,v0
    139c:	8fae0058 	lw	t6,88(sp)
    13a0:	24050002 	li	a1,2
    13a4:	1000005a 	b	1510 <L800E2678+0x88>
    13a8:	adc00000 	sw	zero,0(t6)
    13ac:	0c000000 	jal	0 <func_800E11F0>
    13b0:	8fa40050 	lw	a0,80(sp)
    13b4:	8faf002c 	lw	t7,44(sp)
    13b8:	afa20048 	sw	v0,72(sp)
    13bc:	8fab0054 	lw	t3,84(sp)
    13c0:	000fc100 	sll	t8,t7,0x4
    13c4:	00581821 	addu	v1,v0,t8
    13c8:	8c790014 	lw	t9,20(v1)
    13cc:	2401fff0 	li	at,-16
    13d0:	000b6100 	sll	t4,t3,0x4
    13d4:	2729000f 	addiu	t1,t9,15
    13d8:	01215024 	and	t2,t1,at
    13dc:	afb9004c 	sw	t9,76(sp)
    13e0:	afaa004c 	sw	t2,76(sp)
    13e4:	004c2021 	addu	a0,v0,t4
    13e8:	808d0018 	lb	t5,24(a0)
    13ec:	afad0040 	sw	t5,64(sp)
    13f0:	80850019 	lb	a1,25(a0)
    13f4:	8c6e0010 	lw	t6,16(v1)
    13f8:	2ca10005 	sltiu	at,a1,5
    13fc:	afa50024 	sw	a1,36(sp)
    1400:	1020002a 	beqz	at,14ac <L800E2678+0x24>
    1404:	afae0038 	sw	t6,56(sp)
    1408:	00057880 	sll	t7,a1,0x2
    140c:	3c010000 	lui	at,0x0
    1410:	002f0821 	addu	at,at,t7
    1414:	8c2f0000 	lw	t7,0(at)
    1418:	01e00008 	jr	t7
    141c:	00000000 	nop

00001420 <L800E2610>:
    1420:	8fa40050 	lw	a0,80(sp)
    1424:	8fa5002c 	lw	a1,44(sp)
    1428:	0c000000 	jal	0 <func_800E11F0>
    142c:	8fa6004c 	lw	a2,76(sp)
    1430:	1440001e 	bnez	v0,14ac <L800E2678+0x24>
    1434:	00408025 	move	s0,v0
    1438:	1000004b 	b	1568 <L800E2678+0xe0>
    143c:	8fbf001c 	lw	ra,28(sp)

00001440 <L800E2630>:
    1440:	8fa40050 	lw	a0,80(sp)
    1444:	8fa5004c 	lw	a1,76(sp)
    1448:	24060001 	li	a2,1
    144c:	0c000000 	jal	0 <func_800E11F0>
    1450:	8fa7002c 	lw	a3,44(sp)
    1454:	14400015 	bnez	v0,14ac <L800E2678+0x24>
    1458:	00408025 	move	s0,v0
    145c:	10000042 	b	1568 <L800E2678+0xe0>
    1460:	8fbf001c 	lw	ra,28(sp)

00001464 <L800E2654>:
    1464:	8fa40050 	lw	a0,80(sp)
    1468:	8fa5004c 	lw	a1,76(sp)
    146c:	00003025 	move	a2,zero
    1470:	0c000000 	jal	0 <func_800E11F0>
    1474:	8fa7002c 	lw	a3,44(sp)
    1478:	1440000c 	bnez	v0,14ac <L800E2678+0x24>
    147c:	00408025 	move	s0,v0
    1480:	10000039 	b	1568 <L800E2678+0xe0>
    1484:	8fbf001c 	lw	ra,28(sp)

00001488 <L800E2678>:
    1488:	8fa40050 	lw	a0,80(sp)
    148c:	8fa5004c 	lw	a1,76(sp)
    1490:	24060002 	li	a2,2
    1494:	0c000000 	jal	0 <func_800E11F0>
    1498:	8fa7002c 	lw	a3,44(sp)
    149c:	14400003 	bnez	v0,14ac <L800E2678+0x24>
    14a0:	00408025 	move	s0,v0
    14a4:	10000030 	b	1568 <L800E2678+0xe0>
    14a8:	8fbf001c 	lw	ra,28(sp)
    14ac:	8fb90058 	lw	t9,88(sp)
    14b0:	24180001 	li	t8,1
    14b4:	24010001 	li	at,1
    14b8:	af380000 	sw	t8,0(t9)
    14bc:	8fa80040 	lw	t0,64(sp)
    14c0:	8fa6004c 	lw	a2,76(sp)
    14c4:	8fa40038 	lw	a0,56(sp)
    14c8:	15010009 	bne	t0,at,14f0 <L800E2678+0x68>
    14cc:	02002825 	move	a1,s0
    14d0:	8fa90048 	lw	t1,72(sp)
    14d4:	8fa40038 	lw	a0,56(sp)
    14d8:	02002825 	move	a1,s0
    14dc:	8fa6004c 	lw	a2,76(sp)
    14e0:	0c000000 	jal	0 <func_800E11F0>
    14e4:	85270002 	lh	a3,2(t1)
    14e8:	10000004 	b	14fc <L800E2678+0x74>
    14ec:	8faa0024 	lw	t2,36(sp)
    14f0:	0c000000 	jal	0 <func_800E11F0>
    14f4:	8fa70040 	lw	a3,64(sp)
    14f8:	8faa0024 	lw	t2,36(sp)
    14fc:	24050002 	li	a1,2
    1500:	15400003 	bnez	t2,1510 <L800E2678+0x88>
    1504:	00000000 	nop
    1508:	10000001 	b	1510 <L800E2678+0x88>
    150c:	24050005 	li	a1,5
    1510:	8fa20050 	lw	v0,80(sp)
    1514:	24010001 	li	at,1
    1518:	10400007 	beqz	v0,1538 <L800E2678+0xb0>
    151c:	00000000 	nop
    1520:	10410009 	beq	v0,at,1548 <L800E2678+0xc0>
    1524:	24010002 	li	at,2
    1528:	1041000b 	beq	v0,at,1558 <L800E2678+0xd0>
    152c:	00000000 	nop
    1530:	1000000c 	b	1564 <L800E2678+0xdc>
    1534:	02001025 	move	v0,s0
    1538:	0c000000 	jal	0 <func_800E11F0>
    153c:	8fa4002c 	lw	a0,44(sp)
    1540:	10000008 	b	1564 <L800E2678+0xdc>
    1544:	02001025 	move	v0,s0
    1548:	0c000000 	jal	0 <func_800E11F0>
    154c:	8fa4002c 	lw	a0,44(sp)
    1550:	10000004 	b	1564 <L800E2678+0xdc>
    1554:	02001025 	move	v0,s0
    1558:	0c000000 	jal	0 <func_800E11F0>
    155c:	8fa4002c 	lw	a0,44(sp)
    1560:	02001025 	move	v0,s0
    1564:	8fbf001c 	lw	ra,28(sp)
    1568:	8fb00018 	lw	s0,24(sp)
    156c:	27bd0050 	addiu	sp,sp,80
    1570:	03e00008 	jr	ra
    1574:	00000000 	nop

00001578 <func_800E2768>:
    1578:	27bdffe8 	addiu	sp,sp,-24
    157c:	afbf0014 	sw	ra,20(sp)
    1580:	0c000000 	jal	0 <func_800E11F0>
    1584:	afa5001c 	sw	a1,28(sp)
    1588:	8fa5001c 	lw	a1,28(sp)
    158c:	8fbf0014 	lw	ra,20(sp)
    1590:	00057100 	sll	t6,a1,0x4
    1594:	004e1821 	addu	v1,v0,t6
    1598:	8c6f0014 	lw	t7,20(v1)
    159c:	55e00003 	bnezl	t7,15ac <func_800E2768+0x34>
    15a0:	00a01025 	move	v0,a1
    15a4:	8c650010 	lw	a1,16(v1)
    15a8:	00a01025 	move	v0,a1
    15ac:	03e00008 	jr	ra
    15b0:	27bd0018 	addiu	sp,sp,24

000015b4 <func_800E27A4>:
    15b4:	27bdffe8 	addiu	sp,sp,-24
    15b8:	afbf0014 	sw	ra,20(sp)
    15bc:	afa40018 	sw	a0,24(sp)
    15c0:	0c000000 	jal	0 <func_800E11F0>
    15c4:	afa5001c 	sw	a1,28(sp)
    15c8:	10400003 	beqz	v0,15d8 <func_800E27A4+0x24>
    15cc:	8fa40018 	lw	a0,24(sp)
    15d0:	1000000a 	b	15fc <func_800E27A4+0x48>
    15d4:	8fbf0014 	lw	ra,20(sp)
    15d8:	24050002 	li	a1,2
    15dc:	0c000000 	jal	0 <func_800E11F0>
    15e0:	8fa6001c 	lw	a2,28(sp)
    15e4:	50400004 	beqzl	v0,15f8 <func_800E27A4+0x44>
    15e8:	00001025 	move	v0,zero
    15ec:	10000003 	b	15fc <func_800E27A4+0x48>
    15f0:	8fbf0014 	lw	ra,20(sp)
    15f4:	00001025 	move	v0,zero
    15f8:	8fbf0014 	lw	ra,20(sp)
    15fc:	27bd0018 	addiu	sp,sp,24
    1600:	03e00008 	jr	ra
    1604:	00000000 	nop

00001608 <func_800E27F8>:
    1608:	10800009 	beqz	a0,1630 <func_800E27F8+0x28>
    160c:	3c030000 	lui	v1,0x0
    1610:	24010001 	li	at,1
    1614:	10810008 	beq	a0,at,1638 <func_800E27F8+0x30>
    1618:	3c030000 	lui	v1,0x0
    161c:	24010002 	li	at,2
    1620:	10810007 	beq	a0,at,1640 <func_800E27F8+0x38>
    1624:	3c030000 	lui	v1,0x0
    1628:	03e00008 	jr	ra
    162c:	00001025 	move	v0,zero
    1630:	03e00008 	jr	ra
    1634:	8c622830 	lw	v0,10288(v1)
    1638:	03e00008 	jr	ra
    163c:	8c622834 	lw	v0,10292(v1)
    1640:	8c632838 	lw	v1,10296(v1)
    1644:	03e00008 	jr	ra
    1648:	00601025 	move	v0,v1

0000164c <func_800E283C>:
    164c:	27bdff90 	addiu	sp,sp,-112
    1650:	00047080 	sll	t6,a0,0x2
    1654:	3c0f0000 	lui	t7,0x0
    1658:	8def2844 	lw	t7,10308(t7)
    165c:	01c47021 	addu	t6,t6,a0
    1660:	000e7080 	sll	t6,t6,0x2
    1664:	afbf0034 	sw	ra,52(sp)
    1668:	afb60030 	sw	s6,48(sp)
    166c:	afb5002c 	sw	s5,44(sp)
    1670:	afb40028 	sw	s4,40(sp)
    1674:	afb30024 	sw	s3,36(sp)
    1678:	afb20020 	sw	s2,32(sp)
    167c:	afb1001c 	sw	s1,28(sp)
    1680:	afb00018 	sw	s0,24(sp)
    1684:	afae0044 	sw	t6,68(sp)
    1688:	01ee1021 	addu	v0,t7,t6
    168c:	90590000 	lbu	t9,0(v0)
    1690:	90470001 	lbu	a3,1(v0)
    1694:	00a09825 	move	s3,a1
    1698:	afb90050 	sw	t9,80(sp)
    169c:	8ca30000 	lw	v1,0(a1)
    16a0:	00c0a025 	move	s4,a2
    16a4:	94550004 	lhu	s5,4(v0)
    16a8:	50600021 	beqzl	v1,1730 <func_800E283C+0xe4>
    16ac:	8e630004 	lw	v1,4(s3)
    16b0:	10e0001e 	beqz	a3,172c <func_800E283C+0xe0>
    16b4:	00654021 	addu	t0,v1,a1
    16b8:	18e0001c 	blez	a3,172c <func_800E283C+0xe0>
    16bc:	aca80000 	sw	t0,0(a1)
    16c0:	00009025 	move	s2,zero
    16c4:	00071880 	sll	v1,a3,0x2
    16c8:	24160001 	li	s6,1
    16cc:	8e690000 	lw	t1,0(s3)
    16d0:	01321021 	addu	v0,t1,s2
    16d4:	8c500000 	lw	s0,0(v0)
    16d8:	12000011 	beqz	s0,1720 <func_800E283C+0xd4>
    16dc:	02138021 	addu	s0,s0,s3
    16e0:	ac500000 	sw	s0,0(v0)
    16e4:	920a0002 	lbu	t2,2(s0)
    16e8:	02008825 	move	s1,s0
    16ec:	26040004 	addiu	a0,s0,4
    16f0:	1540000b 	bnez	t2,1720 <func_800E283C+0xd4>
    16f4:	02602825 	move	a1,s3
    16f8:	02803025 	move	a2,s4
    16fc:	afa3003c 	sw	v1,60(sp)
    1700:	0c000000 	jal	0 <func_800E11F0>
    1704:	afa70054 	sw	a3,84(sp)
    1708:	8e30000c 	lw	s0,12(s1)
    170c:	8fa3003c 	lw	v1,60(sp)
    1710:	8fa70054 	lw	a3,84(sp)
    1714:	02135821 	addu	t3,s0,s3
    1718:	ae2b000c 	sw	t3,12(s1)
    171c:	a2360002 	sb	s6,2(s1)
    1720:	26520004 	addiu	s2,s2,4
    1724:	5643ffea 	bnel	s2,v1,16d0 <func_800E283C+0x84>
    1728:	8e690000 	lw	t1,0(s3)
    172c:	8e630004 	lw	v1,4(s3)
    1730:	24160001 	li	s6,1
    1734:	50600016 	beqzl	v1,1790 <func_800E283C+0x144>
    1738:	8faf0050 	lw	t7,80(sp)
    173c:	12a00013 	beqz	s5,178c <func_800E283C+0x140>
    1740:	00736021 	addu	t4,v1,s3
    1744:	1aa00011 	blez	s5,178c <func_800E283C+0x140>
    1748:	ae6c0004 	sw	t4,4(s3)
    174c:	00008825 	move	s1,zero
    1750:	001590c0 	sll	s2,s5,0x3
    1754:	8e6d0004 	lw	t5,4(s3)
    1758:	01b18021 	addu	s0,t5,s1
    175c:	52000009 	beqzl	s0,1784 <func_800E283C+0x138>
    1760:	26310008 	addiu	s1,s1,8
    1764:	8e0e0000 	lw	t6,0(s0)
    1768:	02002025 	move	a0,s0
    176c:	02602825 	move	a1,s3
    1770:	51c00004 	beqzl	t6,1784 <func_800E283C+0x138>
    1774:	26310008 	addiu	s1,s1,8
    1778:	0c000000 	jal	0 <func_800E11F0>
    177c:	02803025 	move	a2,s4
    1780:	26310008 	addiu	s1,s1,8
    1784:	5632fff4 	bnel	s1,s2,1758 <func_800E283C+0x10c>
    1788:	8e6d0004 	lw	t5,4(s3)
    178c:	8faf0050 	lw	t7,80(sp)
    1790:	2418007e 	li	t8,126
    1794:	26720008 	addiu	s2,s3,8
    1798:	29e1007f 	slti	at,t7,127
    179c:	54200003 	bnezl	at,17ac <func_800E283C+0x160>
    17a0:	8fa30050 	lw	v1,80(sp)
    17a4:	afb80050 	sw	t8,80(sp)
    17a8:	8fa30050 	lw	v1,80(sp)
    17ac:	24630001 	addiu	v1,v1,1
    17b0:	28610002 	slti	at,v1,2
    17b4:	14200024 	bnez	at,1848 <func_800E283C+0x1fc>
    17b8:	0003c880 	sll	t9,v1,0x2
    17bc:	0333a821 	addu	s5,t9,s3
    17c0:	8e420000 	lw	v0,0(s2)
    17c4:	1040001c 	beqz	v0,1838 <func_800E283C+0x1ec>
    17c8:	00534021 	addu	t0,v0,s3
    17cc:	ae480000 	sw	t0,0(s2)
    17d0:	91090000 	lbu	t1,0(t0)
    17d4:	01008825 	move	s1,t0
    17d8:	55200018 	bnezl	t1,183c <func_800E283C+0x1f0>
    17dc:	26520004 	addiu	s2,s2,4
    17e0:	910a0001 	lbu	t2,1(t0)
    17e4:	25040008 	addiu	a0,t0,8
    17e8:	02602825 	move	a1,s3
    17ec:	51400004 	beqzl	t2,1800 <func_800E283C+0x1b4>
    17f0:	26240010 	addiu	a0,s1,16
    17f4:	0c000000 	jal	0 <func_800E11F0>
    17f8:	02803025 	move	a2,s4
    17fc:	26240010 	addiu	a0,s1,16
    1800:	02602825 	move	a1,s3
    1804:	0c000000 	jal	0 <func_800E11F0>
    1808:	02803025 	move	a2,s4
    180c:	922b0002 	lbu	t3,2(s1)
    1810:	2401007f 	li	at,127
    1814:	26240018 	addiu	a0,s1,24
    1818:	11610003 	beq	t3,at,1828 <func_800E283C+0x1dc>
    181c:	02602825 	move	a1,s3
    1820:	0c000000 	jal	0 <func_800E11F0>
    1824:	02803025 	move	a2,s4
    1828:	8e300004 	lw	s0,4(s1)
    182c:	a2360000 	sb	s6,0(s1)
    1830:	02136021 	addu	t4,s0,s3
    1834:	ae2c0004 	sw	t4,4(s1)
    1838:	26520004 	addiu	s2,s2,4
    183c:	02b2082b 	sltu	at,s5,s2
    1840:	5020ffe0 	beqzl	at,17c4 <func_800E283C+0x178>
    1844:	8e420000 	lw	v0,0(s2)
    1848:	3c0e0000 	lui	t6,0x0
    184c:	8dce2844 	lw	t6,10308(t6)
    1850:	8faf0044 	lw	t7,68(sp)
    1854:	8e6d0000 	lw	t5,0(s3)
    1858:	3c080000 	lui	t0,0x0
    185c:	01cfc021 	addu	t8,t6,t7
    1860:	af0d000c 	sw	t5,12(t8)
    1864:	8fa90044 	lw	t1,68(sp)
    1868:	8d082844 	lw	t0,10308(t0)
    186c:	8e790004 	lw	t9,4(s3)
    1870:	3c0c0000 	lui	t4,0x0
    1874:	01095021 	addu	t2,t0,t1
    1878:	ad590010 	sw	t9,16(t2)
    187c:	8fae0044 	lw	t6,68(sp)
    1880:	8d8c2844 	lw	t4,10308(t4)
    1884:	266b0008 	addiu	t3,s3,8
    1888:	018e7821 	addu	t7,t4,t6
    188c:	adeb0008 	sw	t3,8(t7)
    1890:	8fbf0034 	lw	ra,52(sp)
    1894:	8fb60030 	lw	s6,48(sp)
    1898:	8fb5002c 	lw	s5,44(sp)
    189c:	8fb40028 	lw	s4,40(sp)
    18a0:	8fb30024 	lw	s3,36(sp)
    18a4:	8fb20020 	lw	s2,32(sp)
    18a8:	8fb1001c 	lw	s1,28(sp)
    18ac:	8fb00018 	lw	s0,24(sp)
    18b0:	03e00008 	jr	ra
    18b4:	27bd0070 	addiu	sp,sp,112

000018b8 <func_800E2AA8>:
    18b8:	27bdffb0 	addiu	sp,sp,-80
    18bc:	afb20038 	sw	s2,56(sp)
    18c0:	afb00030 	sw	s0,48(sp)
    18c4:	00809025 	move	s2,a0
    18c8:	afb10034 	sw	s1,52(sp)
    18cc:	24d0000f 	addiu	s0,a2,15
    18d0:	2401fff0 	li	at,-16
    18d4:	00a08825 	move	s1,a1
    18d8:	afbf004c 	sw	ra,76(sp)
    18dc:	afb50044 	sw	s5,68(sp)
    18e0:	02018024 	and	s0,s0,at
    18e4:	00a02025 	move	a0,a1
    18e8:	00e0a825 	move	s5,a3
    18ec:	afb60048 	sw	s6,72(sp)
    18f0:	afb40040 	sw	s4,64(sp)
    18f4:	afb3003c 	sw	s3,60(sp)
    18f8:	0c000000 	jal	0 <func_800E11F0>
    18fc:	02002825 	move	a1,s0
    1900:	3c160000 	lui	s6,0x0
    1904:	3c140000 	lui	s4,0x0
    1908:	3c130000 	lui	s3,0x0
    190c:	267325e8 	addiu	s3,s3,9704
    1910:	26940000 	addiu	s4,s4,0
    1914:	26d62604 	addiu	s6,s6,9732
    1918:	2e010400 	sltiu	at,s0,1024
    191c:	14200014 	bnez	at,1970 <func_800E2AA8+0xb8>
    1920:	240e0400 	li	t6,1024
    1924:	afae0014 	sw	t6,20(sp)
    1928:	02c02025 	move	a0,s6
    192c:	24050001 	li	a1,1
    1930:	00003025 	move	a2,zero
    1934:	02403825 	move	a3,s2
    1938:	afb10010 	sw	s1,16(sp)
    193c:	afb30018 	sw	s3,24(sp)
    1940:	afb5001c 	sw	s5,28(sp)
    1944:	0c000000 	jal	0 <func_800E11F0>
    1948:	afb40020 	sw	s4,32(sp)
    194c:	02602025 	move	a0,s3
    1950:	00002825 	move	a1,zero
    1954:	0c000000 	jal	0 <func_800E11F0>
    1958:	24060001 	li	a2,1
    195c:	2610fc00 	addiu	s0,s0,-1024
    1960:	2e010400 	sltiu	at,s0,1024
    1964:	26520400 	addiu	s2,s2,1024
    1968:	1020ffed 	beqz	at,1920 <func_800E2AA8+0x68>
    196c:	26310400 	addiu	s1,s1,1024
    1970:	12000010 	beqz	s0,19b4 <func_800E2AA8+0xfc>
    1974:	02c02025 	move	a0,s6
    1978:	3c0f0000 	lui	t7,0x0
    197c:	25ef0000 	addiu	t7,t7,0
    1980:	afaf0020 	sw	t7,32(sp)
    1984:	24050001 	li	a1,1
    1988:	00003025 	move	a2,zero
    198c:	02403825 	move	a3,s2
    1990:	afb10010 	sw	s1,16(sp)
    1994:	afb00014 	sw	s0,20(sp)
    1998:	afb30018 	sw	s3,24(sp)
    199c:	0c000000 	jal	0 <func_800E11F0>
    19a0:	afb5001c 	sw	s5,28(sp)
    19a4:	02602025 	move	a0,s3
    19a8:	00002825 	move	a1,zero
    19ac:	0c000000 	jal	0 <func_800E11F0>
    19b0:	24060001 	li	a2,1
    19b4:	8fbf004c 	lw	ra,76(sp)
    19b8:	8fb00030 	lw	s0,48(sp)
    19bc:	8fb10034 	lw	s1,52(sp)
    19c0:	8fb20038 	lw	s2,56(sp)
    19c4:	8fb3003c 	lw	s3,60(sp)
    19c8:	8fb40040 	lw	s4,64(sp)
    19cc:	8fb50044 	lw	s5,68(sp)
    19d0:	8fb60048 	lw	s6,72(sp)
    19d4:	03e00008 	jr	ra
    19d8:	27bd0050 	addiu	sp,sp,80

000019dc <func_800E2BCC>:
    19dc:	afa40000 	sw	a0,0(sp)
    19e0:	afa50004 	sw	a1,4(sp)
    19e4:	afa60008 	sw	a2,8(sp)
    19e8:	03e00008 	jr	ra
    19ec:	afa7000c 	sw	a3,12(sp)

000019f0 <func_800E2BE0>:
    19f0:	3c020000 	lui	v0,0x0
    19f4:	24420000 	addiu	v0,v0,0
    19f8:	8c4e2984 	lw	t6,10628(v0)
    19fc:	27bdffe0 	addiu	sp,sp,-32
    1a00:	afb00018 	sw	s0,24(sp)
    1a04:	2dc10011 	sltiu	at,t6,17
    1a08:	00808025 	move	s0,a0
    1a0c:	afbf001c 	sw	ra,28(sp)
    1a10:	14200003 	bnez	at,1a20 <func_800E2BE0+0x30>
    1a14:	afa50024 	sw	a1,36(sp)
    1a18:	10000026 	b	1ab4 <func_800E2BE0+0xc4>
    1a1c:	2402ffff 	li	v0,-1
    1a20:	8fa3003c 	lw	v1,60(sp)
    1a24:	24010002 	li	at,2
    1a28:	8fb80024 	lw	t8,36(sp)
    1a2c:	10610005 	beq	v1,at,1a44 <func_800E2BE0+0x54>
    1a30:	24010003 	li	at,3
    1a34:	10610005 	beq	v1,at,1a4c <func_800E2BE0+0x5c>
    1a38:	00000000 	nop
    1a3c:	1000001d 	b	1ab4 <func_800E2BE0+0xc4>
    1a40:	00001025 	move	v0,zero
    1a44:	10000005 	b	1a5c <func_800E2BE0+0x6c>
    1a48:	8c441e18 	lw	a0,7704(v0)
    1a4c:	10000003 	b	1a5c <func_800E2BE0+0x6c>
    1a50:	8c441e1c 	lw	a0,7708(v0)
    1a54:	10000017 	b	1ab4 <func_800E2BE0+0xc4>
    1a58:	00001025 	move	v0,zero
    1a5c:	8fa20034 	lw	v0,52(sp)
    1a60:	2401fff0 	li	at,-16
    1a64:	304f000f 	andi	t7,v0,0xf
    1a68:	51e00004 	beqzl	t7,1a7c <func_800E2BE0+0x8c>
    1a6c:	a2180002 	sb	t8,2(s0)
    1a70:	2442000f 	addiu	v0,v0,15
    1a74:	00411024 	and	v0,v0,at
    1a78:	a2180002 	sb	t8,2(s0)
    1a7c:	8fb90038 	lw	t9,56(sp)
    1a80:	24090002 	li	t1,2
    1a84:	02002825 	move	a1,s0
    1a88:	ae190004 	sw	t9,4(s0)
    1a8c:	8fa80030 	lw	t0,48(sp)
    1a90:	ae07000c 	sw	a3,12(s0)
    1a94:	ae020010 	sw	v0,16(s0)
    1a98:	ae080008 	sw	t0,8(s0)
    1a9c:	ac890014 	sw	t1,20(a0)
    1aa0:	3c190000 	lui	t9,0x0
    1aa4:	8f390000 	lw	t9,0(t9)
    1aa8:	0320f809 	jalr	t9
    1aac:	00000000 	nop
    1ab0:	00001025 	move	v0,zero
    1ab4:	8fbf001c 	lw	ra,28(sp)
    1ab8:	8fb00018 	lw	s0,24(sp)
    1abc:	27bd0020 	addiu	sp,sp,32
    1ac0:	03e00008 	jr	ra
    1ac4:	00000000 	nop

00001ac8 <func_800E2CB8>:
    1ac8:	03e00008 	jr	ra
    1acc:	00000000 	nop

00001ad0 <func_800E2CC0>:
    1ad0:	27bdffe0 	addiu	sp,sp,-32
    1ad4:	afbf0014 	sw	ra,20(sp)
    1ad8:	0c000000 	jal	0 <func_800E11F0>
    1adc:	27a6001c 	addiu	a2,sp,28
    1ae0:	8fbf0014 	lw	ra,20(sp)
    1ae4:	27bd0020 	addiu	sp,sp,32
    1ae8:	03e00008 	jr	ra
    1aec:	00000000 	nop

00001af0 <func_800E2CE0>:
    1af0:	27bdffa8 	addiu	sp,sp,-88
    1af4:	afbf002c 	sw	ra,44(sp)
    1af8:	afb00028 	sw	s0,40(sp)
    1afc:	00808025 	move	s0,a0
    1b00:	afa5005c 	sw	a1,92(sp)
    1b04:	afa60060 	sw	a2,96(sp)
    1b08:	0c000000 	jal	0 <func_800E11F0>
    1b0c:	afa70064 	sw	a3,100(sp)
    1b10:	12000009 	beqz	s0,1b38 <func_800E2CE0+0x48>
    1b14:	00402825 	move	a1,v0
    1b18:	24030001 	li	v1,1
    1b1c:	12030010 	beq	s0,v1,1b60 <func_800E2CE0+0x70>
    1b20:	3c0f0000 	lui	t7,0x0
    1b24:	24010002 	li	at,2
    1b28:	12010013 	beq	s0,at,1b78 <func_800E2CE0+0x88>
    1b2c:	3c180000 	lui	t8,0x0
    1b30:	10000018 	b	1b94 <func_800E2CE0+0xa4>
    1b34:	02002025 	move	a0,s0
    1b38:	3c0e0000 	lui	t6,0x0
    1b3c:	01c27021 	addu	t6,t6,v0
    1b40:	91ce3498 	lbu	t6,13464(t6)
    1b44:	24010001 	li	at,1
    1b48:	15c10003 	bne	t6,at,1b58 <func_800E2CE0+0x68>
    1b4c:	00000000 	nop
    1b50:	100000a5 	b	1de8 <L800E2EA4+0x134>
    1b54:	00001025 	move	v0,zero
    1b58:	1000000e 	b	1b94 <func_800E2CE0+0xa4>
    1b5c:	02002025 	move	a0,s0
    1b60:	01e27821 	addu	t7,t7,v0
    1b64:	91ef3468 	lbu	t7,13416(t7)
    1b68:	546f000a 	bnel	v1,t7,1b94 <func_800E2CE0+0xa4>
    1b6c:	02002025 	move	a0,s0
    1b70:	1000009d 	b	1de8 <L800E2EA4+0x134>
    1b74:	00001025 	move	v0,zero
    1b78:	0302c021 	addu	t8,t8,v0
    1b7c:	93183438 	lbu	t8,13368(t8)
    1b80:	54780004 	bnel	v1,t8,1b94 <func_800E2CE0+0xa4>
    1b84:	02002025 	move	a0,s0
    1b88:	10000097 	b	1de8 <L800E2EA4+0x134>
    1b8c:	00001025 	move	v0,zero
    1b90:	02002025 	move	a0,s0
    1b94:	0c000000 	jal	0 <func_800E11F0>
    1b98:	afa50034 	sw	a1,52(sp)
    1b9c:	1040000a 	beqz	v0,1bc8 <func_800E2CE0+0xd8>
    1ba0:	afa2004c 	sw	v0,76(sp)
    1ba4:	8fa50064 	lw	a1,100(sp)
    1ba8:	24190002 	li	t9,2
    1bac:	afb9003c 	sw	t9,60(sp)
    1bb0:	8fa40068 	lw	a0,104(sp)
    1bb4:	00003025 	move	a2,zero
    1bb8:	0c000000 	jal	0 <func_800E11F0>
    1bbc:	00052e00 	sll	a1,a1,0x18
    1bc0:	10000074 	b	1d94 <L800E2EA4+0xe0>
    1bc4:	00000000 	nop
    1bc8:	0c000000 	jal	0 <func_800E11F0>
    1bcc:	02002025 	move	a0,s0
    1bd0:	8fa80034 	lw	t0,52(sp)
    1bd4:	afa20050 	sw	v0,80(sp)
    1bd8:	8fae005c 	lw	t6,92(sp)
    1bdc:	00084900 	sll	t1,t0,0x4
    1be0:	00491821 	addu	v1,v0,t1
    1be4:	8c6a0014 	lw	t2,20(v1)
    1be8:	2401fff0 	li	at,-16
    1bec:	000e7900 	sll	t7,t6,0x4
    1bf0:	254c000f 	addiu	t4,t2,15
    1bf4:	01816824 	and	t5,t4,at
    1bf8:	afaa0054 	sw	t2,84(sp)
    1bfc:	afad0054 	sw	t5,84(sp)
    1c00:	004f2021 	addu	a0,v0,t7
    1c04:	80980018 	lb	t8,24(a0)
    1c08:	24080002 	li	t0,2
    1c0c:	afb80048 	sw	t8,72(sp)
    1c10:	80850019 	lb	a1,25(a0)
    1c14:	8c790010 	lw	t9,16(v1)
    1c18:	afa8003c 	sw	t0,60(sp)
    1c1c:	2ca10005 	sltiu	at,a1,5
    1c20:	1020002d 	beqz	at,1cd8 <L800E2EA4+0x24>
    1c24:	afb90040 	sw	t9,64(sp)
    1c28:	00054880 	sll	t1,a1,0x2
    1c2c:	3c010000 	lui	at,0x0
    1c30:	00290821 	addu	at,at,t1
    1c34:	8c290000 	lw	t1,0(at)
    1c38:	01200008 	jr	t1
    1c3c:	00000000 	nop

00001c40 <L800E2E30>:
    1c40:	02002025 	move	a0,s0
    1c44:	8fa50034 	lw	a1,52(sp)
    1c48:	0c000000 	jal	0 <func_800E11F0>
    1c4c:	8fa60054 	lw	a2,84(sp)
    1c50:	14400003 	bnez	v0,1c60 <L800E2E30+0x20>
    1c54:	afa2004c 	sw	v0,76(sp)
    1c58:	10000064 	b	1dec <L800E2EA4+0x138>
    1c5c:	8fbf002c 	lw	ra,44(sp)
    1c60:	240a0005 	li	t2,5
    1c64:	1000001c 	b	1cd8 <L800E2EA4+0x24>
    1c68:	afaa003c 	sw	t2,60(sp)

00001c6c <L800E2E5C>:
    1c6c:	02002025 	move	a0,s0
    1c70:	8fa50054 	lw	a1,84(sp)
    1c74:	24060001 	li	a2,1
    1c78:	0c000000 	jal	0 <func_800E11F0>
    1c7c:	8fa70034 	lw	a3,52(sp)
    1c80:	14400015 	bnez	v0,1cd8 <L800E2EA4+0x24>
    1c84:	afa2004c 	sw	v0,76(sp)
    1c88:	10000058 	b	1dec <L800E2EA4+0x138>
    1c8c:	8fbf002c 	lw	ra,44(sp)

00001c90 <L800E2E80>:
    1c90:	02002025 	move	a0,s0
    1c94:	8fa50054 	lw	a1,84(sp)
    1c98:	00003025 	move	a2,zero
    1c9c:	0c000000 	jal	0 <func_800E11F0>
    1ca0:	8fa70034 	lw	a3,52(sp)
    1ca4:	1440000c 	bnez	v0,1cd8 <L800E2EA4+0x24>
    1ca8:	afa2004c 	sw	v0,76(sp)
    1cac:	1000004f 	b	1dec <L800E2EA4+0x138>
    1cb0:	8fbf002c 	lw	ra,44(sp)

00001cb4 <L800E2EA4>:
    1cb4:	02002025 	move	a0,s0
    1cb8:	8fa50054 	lw	a1,84(sp)
    1cbc:	24060002 	li	a2,2
    1cc0:	0c000000 	jal	0 <func_800E11F0>
    1cc4:	8fa70034 	lw	a3,52(sp)
    1cc8:	14400003 	bnez	v0,1cd8 <L800E2EA4+0x24>
    1ccc:	afa2004c 	sw	v0,76(sp)
    1cd0:	10000046 	b	1dec <L800E2EA4+0x138>
    1cd4:	8fbf002c 	lw	ra,44(sp)
    1cd8:	8fab0048 	lw	t3,72(sp)
    1cdc:	24010001 	li	at,1
    1ce0:	8fa40040 	lw	a0,64(sp)
    1ce4:	15610018 	bne	t3,at,1d48 <L800E2EA4+0x94>
    1ce8:	8fa5004c 	lw	a1,76(sp)
    1cec:	8fac0050 	lw	t4,80(sp)
    1cf0:	8faf0064 	lw	t7,100(sp)
    1cf4:	8fa9005c 	lw	t1,92(sp)
    1cf8:	85840002 	lh	a0,2(t4)
    1cfc:	8fad0060 	lw	t5,96(sp)
    1d00:	afab0010 	sw	t3,16(sp)
    1d04:	8fab003c 	lw	t3,60(sp)
    1d08:	0010cc00 	sll	t9,s0,0x10
    1d0c:	000fc600 	sll	t8,t7,0x18
    1d10:	03194025 	or	t0,t8,t9
    1d14:	00095200 	sll	t2,t1,0x8
    1d18:	8fae0068 	lw	t6,104(sp)
    1d1c:	010a6025 	or	t4,t0,t2
    1d20:	afad0014 	sw	t5,20(sp)
    1d24:	018b6825 	or	t5,t4,t3
    1d28:	afad001c 	sw	t5,28(sp)
    1d2c:	8fa50040 	lw	a1,64(sp)
    1d30:	8fa6004c 	lw	a2,76(sp)
    1d34:	8fa70054 	lw	a3,84(sp)
    1d38:	0c000000 	jal	0 <func_800E11F0>
    1d3c:	afae0018 	sw	t6,24(sp)
    1d40:	10000013 	b	1d90 <L800E2EA4+0xdc>
    1d44:	240f0001 	li	t7,1
    1d48:	8fb80064 	lw	t8,100(sp)
    1d4c:	8faa0034 	lw	t2,52(sp)
    1d50:	8fae0060 	lw	t6,96(sp)
    1d54:	8fad003c 	lw	t5,60(sp)
    1d58:	00104c00 	sll	t1,s0,0x10
    1d5c:	0018ce00 	sll	t9,t8,0x18
    1d60:	03294025 	or	t0,t9,t1
    1d64:	000a6200 	sll	t4,t2,0x8
    1d68:	8faf0068 	lw	t7,104(sp)
    1d6c:	010c5825 	or	t3,t0,t4
    1d70:	afae0010 	sw	t6,16(sp)
    1d74:	016d7025 	or	t6,t3,t5
    1d78:	afae0018 	sw	t6,24(sp)
    1d7c:	8fa60054 	lw	a2,84(sp)
    1d80:	8fa70048 	lw	a3,72(sp)
    1d84:	0c000000 	jal	0 <func_800E11F0>
    1d88:	afaf0014 	sw	t7,20(sp)
    1d8c:	240f0001 	li	t7,1
    1d90:	afaf003c 	sw	t7,60(sp)
    1d94:	12000009 	beqz	s0,1dbc <L800E2EA4+0x108>
    1d98:	8fa40034 	lw	a0,52(sp)
    1d9c:	24010001 	li	at,1
    1da0:	1201000a 	beq	s0,at,1dcc <L800E2EA4+0x118>
    1da4:	8fa40034 	lw	a0,52(sp)
    1da8:	24010002 	li	at,2
    1dac:	1201000b 	beq	s0,at,1ddc <L800E2EA4+0x128>
    1db0:	8fa40034 	lw	a0,52(sp)
    1db4:	1000000c 	b	1de8 <L800E2EA4+0x134>
    1db8:	8fa2004c 	lw	v0,76(sp)
    1dbc:	0c000000 	jal	0 <func_800E11F0>
    1dc0:	8fa5003c 	lw	a1,60(sp)
    1dc4:	10000008 	b	1de8 <L800E2EA4+0x134>
    1dc8:	8fa2004c 	lw	v0,76(sp)
    1dcc:	0c000000 	jal	0 <func_800E11F0>
    1dd0:	8fa5003c 	lw	a1,60(sp)
    1dd4:	10000004 	b	1de8 <L800E2EA4+0x134>
    1dd8:	8fa2004c 	lw	v0,76(sp)
    1ddc:	0c000000 	jal	0 <func_800E11F0>
    1de0:	8fa5003c 	lw	a1,60(sp)
    1de4:	8fa2004c 	lw	v0,76(sp)
    1de8:	8fbf002c 	lw	ra,44(sp)
    1dec:	8fb00028 	lw	s0,40(sp)
    1df0:	27bd0058 	addiu	sp,sp,88
    1df4:	03e00008 	jr	ra
    1df8:	00000000 	nop

00001dfc <func_800E2FEC>:
    1dfc:	27bdffe8 	addiu	sp,sp,-24
    1e00:	afbf0014 	sw	ra,20(sp)
    1e04:	0c000000 	jal	0 <func_800E11F0>
    1e08:	afa40018 	sw	a0,24(sp)
    1e0c:	0c000000 	jal	0 <func_800E11F0>
    1e10:	8fa40018 	lw	a0,24(sp)
    1e14:	0c000000 	jal	0 <func_800E11F0>
    1e18:	8fa40018 	lw	a0,24(sp)
    1e1c:	8fbf0014 	lw	ra,20(sp)
    1e20:	27bd0018 	addiu	sp,sp,24
    1e24:	03e00008 	jr	ra
    1e28:	00000000 	nop

00001e2c <func_800E301C>:
    1e2c:	3c010000 	lui	at,0x0
    1e30:	03e00008 	jr	ra
    1e34:	ac240000 	sw	a0,0(at)

00001e38 <func_800E3028>:
    1e38:	3c010000 	lui	at,0x0
    1e3c:	03e00008 	jr	ra
    1e40:	ac240000 	sw	a0,0(at)

00001e44 <func_800E3034>:
    1e44:	3c050000 	lui	a1,0x0
    1e48:	24a50000 	addiu	a1,a1,0
    1e4c:	8cb82834 	lw	t8,10292(a1)
    1e50:	0004c900 	sll	t9,a0,0x4
    1e54:	8caf2844 	lw	t7,10308(a1)
    1e58:	03191821 	addu	v1,t8,t9
    1e5c:	8468001a 	lh	t0,26(v1)
    1e60:	00047080 	sll	t6,a0,0x2
    1e64:	01c47021 	addu	t6,t6,a0
    1e68:	000e7080 	sll	t6,t6,0x2
    1e6c:	01cf1021 	addu	v0,t6,t7
    1e70:	00085203 	sra	t2,t0,0x8
    1e74:	a04a0002 	sb	t2,2(v0)
    1e78:	846c001a 	lh	t4,26(v1)
    1e7c:	24630010 	addiu	v1,v1,16
    1e80:	a04c0003 	sb	t4,3(v0)
    1e84:	846d000c 	lh	t5,12(v1)
    1e88:	000d7a03 	sra	t7,t5,0x8
    1e8c:	a04f0000 	sb	t7,0(v0)
    1e90:	8479000c 	lh	t9,12(v1)
    1e94:	a0590001 	sb	t9,1(v0)
    1e98:	8468000e 	lh	t0,14(v1)
    1e9c:	03e00008 	jr	ra
    1ea0:	a4480004 	sh	t0,4(v0)

00001ea4 <func_800E3094>:
    1ea4:	27bdff90 	addiu	sp,sp,-112
    1ea8:	afb10018 	sw	s1,24(sp)
    1eac:	3c110000 	lui	s1,0x0
    1eb0:	26310000 	addiu	s1,s1,0
    1eb4:	3c010000 	lui	at,0x0
    1eb8:	ac200000 	sw	zero,0(at)
    1ebc:	afbf001c 	sw	ra,28(sp)
    1ec0:	afb00014 	sw	s0,20(sp)
    1ec4:	afa40070 	sw	a0,112(sp)
    1ec8:	afa50074 	sw	a1,116(sp)
    1ecc:	ae202984 	sw	zero,10628(s1)
    1ed0:	02201025 	move	v0,s1
    1ed4:	24036450 	li	v1,25680
    1ed8:	2463ffff 	addiu	v1,v1,-1
    1edc:	a0400000 	sb	zero,0(v0)
    1ee0:	0461fffd 	bgez	v1,1ed8 <func_800E3094+0x34>
    1ee4:	24420001 	addiu	v0,v0,1
    1ee8:	3c020000 	lui	v0,0x0
    1eec:	8c420000 	lw	v0,0(v0)
    1ef0:	10400007 	beqz	v0,1f10 <func_800E3094+0x6c>
    1ef4:	24010001 	li	at,1
    1ef8:	10410010 	beq	v0,at,1f3c <func_800E3094+0x98>
    1efc:	24010002 	li	at,2
    1f00:	10410009 	beq	v0,at,1f28 <func_800E3094+0x84>
    1f04:	240f003c 	li	t7,60
    1f08:	1000000c 	b	1f3c <func_800E3094+0x98>
    1f0c:	00000000 	nop
    1f10:	3c010000 	lui	at,0x0
    1f14:	c4240000 	lwc1	$f4,0(at)
    1f18:	240e0032 	li	t6,50
    1f1c:	ae2e2964 	sw	t6,10596(s1)
    1f20:	1000000b 	b	1f50 <func_800E3094+0xac>
    1f24:	e6242960 	swc1	$f4,10592(s1)
    1f28:	3c010000 	lui	at,0x0
    1f2c:	c4260000 	lwc1	$f6,0(at)
    1f30:	ae2f2964 	sw	t7,10596(s1)
    1f34:	10000006 	b	1f50 <func_800E3094+0xac>
    1f38:	e6262960 	swc1	$f6,10592(s1)
    1f3c:	3c010000 	lui	at,0x0
    1f40:	c4280000 	lwc1	$f8,0(at)
    1f44:	2418003c 	li	t8,60
    1f48:	ae382964 	sw	t8,10596(s1)
    1f4c:	e6282960 	swc1	$f8,10592(s1)
    1f50:	0c000000 	jal	0 <func_800E11F0>
    1f54:	00000000 	nop
    1f58:	3c020000 	lui	v0,0x0
    1f5c:	3c040000 	lui	a0,0x0
    1f60:	24840006 	addiu	a0,a0,6
    1f64:	24420000 	addiu	v0,v0,0
    1f68:	240300a0 	li	v1,160
    1f6c:	24420002 	addiu	v0,v0,2
    1f70:	0044082b 	sltu	at,v0,a0
    1f74:	1420fffd 	bnez	at,1f6c <func_800E3094+0xc8>
    1f78:	a4432972 	sh	v1,10610(v0)
    1f7c:	3c040000 	lui	a0,0x0
    1f80:	3c050000 	lui	a1,0x0
    1f84:	ae20289c 	sw	zero,10396(s1)
    1f88:	ae2028a4 	sw	zero,10404(s1)
    1f8c:	ae2028a8 	sw	zero,10408(s1)
    1f90:	a220289a 	sb	zero,10394(s1)
    1f94:	ae2028b8 	sw	zero,10424(s1)
    1f98:	ae2028f4 	sw	zero,10484(s1)
    1f9c:	ae202944 	sw	zero,10564(s1)
    1fa0:	24a52600 	addiu	a1,a1,9728
    1fa4:	248425e8 	addiu	a0,a0,9704
    1fa8:	0c000000 	jal	0 <func_800E11F0>
    1fac:	24060001 	li	a2,1
    1fb0:	3c040000 	lui	a0,0x0
    1fb4:	3c050000 	lui	a1,0x0
    1fb8:	24a51ee8 	addiu	a1,a1,7912
    1fbc:	24841ed0 	addiu	a0,a0,7888
    1fc0:	0c000000 	jal	0 <func_800E11F0>
    1fc4:	24060040 	li	a2,64
    1fc8:	3c040000 	lui	a0,0x0
    1fcc:	3c050000 	lui	a1,0x0
    1fd0:	24a51e38 	addiu	a1,a1,7736
    1fd4:	24841e20 	addiu	a0,a0,7712
    1fd8:	0c000000 	jal	0 <func_800E11F0>
    1fdc:	24060010 	li	a2,16
    1fe0:	3c040000 	lui	a0,0x0
    1fe4:	3c050000 	lui	a1,0x0
    1fe8:	24a51e90 	addiu	a1,a1,7824
    1fec:	24841e78 	addiu	a0,a0,7800
    1ff0:	0c000000 	jal	0 <func_800E11F0>
    1ff4:	24060010 	li	a2,16
    1ff8:	ae2028a0 	sw	zero,10400(s1)
    1ffc:	0c000000 	jal	0 <func_800E11F0>
    2000:	ae202620 	sw	zero,9760(s1)
    2004:	8fa30070 	lw	v1,112(sp)
    2008:	ae221e18 	sw	v0,7704(s1)
    200c:	3c040000 	lui	a0,0x0
    2010:	14600007 	bnez	v1,2030 <func_800E3094+0x18c>
    2014:	3c190000 	lui	t9,0x0
    2018:	27390000 	addiu	t9,t9,0
    201c:	ae393524 	sw	t9,13604(s1)
    2020:	3c080000 	lui	t0,0x0
    2024:	8d080000 	lw	t0,0(t0)
    2028:	10000004 	b	203c <func_800E3094+0x198>
    202c:	ae283528 	sw	t0,13608(s1)
    2030:	8fa90074 	lw	t1,116(sp)
    2034:	ae233524 	sw	v1,13604(s1)
    2038:	ae293528 	sw	t1,13608(s1)
    203c:	8e2a3528 	lw	t2,13608(s1)
    2040:	00008025 	move	s0,zero
    2044:	05410003 	bgez	t2,2054 <func_800E3094+0x1b0>
    2048:	000a58c3 	sra	t3,t2,0x3
    204c:	25410007 	addiu	at,t2,7
    2050:	000158c3 	sra	t3,at,0x3
    2054:	19600011 	blez	t3,209c <func_800E3094+0x1f8>
    2058:	00001025 	move	v0,zero
    205c:	8e2e3524 	lw	t6,13604(s1)
    2060:	240c0000 	li	t4,0
    2064:	240d0000 	li	t5,0
    2068:	01c27821 	addu	t7,t6,v0
    206c:	adec0000 	sw	t4,0(t7)
    2070:	aded0004 	sw	t5,4(t7)
    2074:	8e383528 	lw	t8,13608(s1)
    2078:	26100001 	addiu	s0,s0,1
    207c:	24420008 	addiu	v0,v0,8
    2080:	07010003 	bgez	t8,2090 <func_800E3094+0x1ec>
    2084:	0018c8c3 	sra	t9,t8,0x3
    2088:	27010007 	addiu	at,t8,7
    208c:	0001c8c3 	sra	t9,at,0x3
    2090:	0219082a 	slt	at,s0,t9
    2094:	5420fff2 	bnezl	at,2060 <func_800E3094+0x1bc>
    2098:	8e2e3524 	lw	t6,13604(s1)
    209c:	0c000000 	jal	0 <func_800E11F0>
    20a0:	8c840000 	lw	a0,0(a0)
    20a4:	3c100000 	lui	s0,0x0
    20a8:	26100000 	addiu	s0,s0,0
    20ac:	3c040000 	lui	a0,0x0
    20b0:	248429b0 	addiu	a0,a0,10672
    20b4:	0c000000 	jal	0 <func_800E11F0>
    20b8:	24050b00 	li	a1,2816
    20bc:	3c080000 	lui	t0,0x0
    20c0:	2508000c 	addiu	t0,t0,12
    20c4:	26100004 	addiu	s0,s0,4
    20c8:	0208082b 	sltu	at,s0,t0
    20cc:	1420fff7 	bnez	at,20ac <func_800E3094+0x208>
    20d0:	ae022964 	sw	v0,10596(s0)
    20d4:	3c090000 	lui	t1,0x0
    20d8:	3c0a0000 	lui	t2,0x0
    20dc:	3c0b0000 	lui	t3,0x0
    20e0:	3c0e0000 	lui	t6,0x0
    20e4:	25290000 	addiu	t1,t1,0
    20e8:	254a0000 	addiu	t2,t2,0
    20ec:	256b0000 	addiu	t3,t3,0
    20f0:	25ce0000 	addiu	t6,t6,0
    20f4:	ae292830 	sw	t1,10288(s1)
    20f8:	ae2a2834 	sw	t2,10292(s1)
    20fc:	ae2b2838 	sw	t3,10296(s1)
    2100:	ae2e283c 	sw	t6,10300(s1)
    2104:	852d0000 	lh	t5,0(t1)
    2108:	240f0001 	li	t7,1
    210c:	a2203519 	sb	zero,13593(s1)
    2110:	a22f3518 	sb	t7,13592(s1)
    2114:	0c000000 	jal	0 <func_800E11F0>
    2118:	a62d2840 	sh	t5,10304(s1)
    211c:	3c050000 	lui	a1,0x0
    2120:	24a50000 	addiu	a1,a1,0
    2124:	8e242830 	lw	a0,10288(s1)
    2128:	0c000000 	jal	0 <func_800E11F0>
    212c:	00003025 	move	a2,zero
    2130:	3c050000 	lui	a1,0x0
    2134:	24a50000 	addiu	a1,a1,0
    2138:	8e242834 	lw	a0,10292(s1)
    213c:	0c000000 	jal	0 <func_800E11F0>
    2140:	00003025 	move	a2,zero
    2144:	3c050000 	lui	a1,0x0
    2148:	24a50000 	addiu	a1,a1,0
    214c:	8e242838 	lw	a0,10296(s1)
    2150:	0c000000 	jal	0 <func_800E11F0>
    2154:	00003025 	move	a2,zero
    2158:	8e382834 	lw	t8,10292(s1)
    215c:	3c040000 	lui	a0,0x0
    2160:	248429b0 	addiu	a0,a0,10672
    2164:	87030000 	lh	v1,0(t8)
    2168:	00032880 	sll	a1,v1,0x2
    216c:	00a32821 	addu	a1,a1,v1
    2170:	00052880 	sll	a1,a1,0x2
    2174:	0c000000 	jal	0 <func_800E11F0>
    2178:	afa30024 	sw	v1,36(sp)
    217c:	8fa30024 	lw	v1,36(sp)
    2180:	ae222844 	sw	v0,10308(s1)
    2184:	00008025 	move	s0,zero
    2188:	18600007 	blez	v1,21a8 <func_800E3094+0x304>
    218c:	02002025 	move	a0,s0
    2190:	0c000000 	jal	0 <func_800E11F0>
    2194:	afa30024 	sw	v1,36(sp)
    2198:	8fa30024 	lw	v1,36(sp)
    219c:	26100001 	addiu	s0,s0,1
    21a0:	5603fffb 	bnel	s0,v1,2190 <func_800E3094+0x2ec>
    21a4:	02002025 	move	a0,s0
    21a8:	3c040000 	lui	a0,0x0
    21ac:	3c050000 	lui	a1,0x0
    21b0:	8ca50000 	lw	a1,0(a1)
    21b4:	0c000000 	jal	0 <func_800E11F0>
    21b8:	248429b0 	addiu	a0,a0,10672
    21bc:	14400003 	bnez	v0,21cc <func_800E3094+0x328>
    21c0:	00402825 	move	a1,v0
    21c4:	3c010000 	lui	at,0x0
    21c8:	ac200000 	sw	zero,0(at)
    21cc:	3c040000 	lui	a0,0x0
    21d0:	3c060000 	lui	a2,0x0
    21d4:	8cc60000 	lw	a2,0(a2)
    21d8:	0c000000 	jal	0 <func_800E11F0>
    21dc:	24842d50 	addiu	a0,a0,11600
    21e0:	24190001 	li	t9,1
    21e4:	3c010000 	lui	at,0x0
    21e8:	ac390000 	sw	t9,0(at)
    21ec:	8e25289c 	lw	a1,10396(s1)
    21f0:	8e245be8 	lw	a0,23528(s1)
    21f4:	0c000000 	jal	0 <func_800E11F0>
    21f8:	00003025 	move	a2,zero
    21fc:	8fbf001c 	lw	ra,28(sp)
    2200:	8fb00014 	lw	s0,20(sp)
    2204:	8fb10018 	lw	s1,24(sp)
    2208:	03e00008 	jr	ra
    220c:	27bd0070 	addiu	sp,sp,112

00002210 <func_800E3400>:
    2210:	3c020000 	lui	v0,0x0
    2214:	24420000 	addiu	v0,v0,0
    2218:	ac401d64 	sw	zero,7524(v0)
    221c:	03e00008 	jr	ra
    2220:	ac401dc8 	sw	zero,7624(v0)

00002224 <func_800E3414>:
    2224:	27bdffd0 	addiu	sp,sp,-48
    2228:	afbf0024 	sw	ra,36(sp)
    222c:	afb00020 	sw	s0,32(sp)
    2230:	00c08025 	move	s0,a2
    2234:	afa40030 	sw	a0,48(sp)
    2238:	0c000000 	jal	0 <func_800E11F0>
    223c:	afa50034 	sw	a1,52(sp)
    2240:	14400004 	bnez	v0,2254 <func_800E3414+0x30>
    2244:	00404025 	move	t0,v0
    2248:	a2000000 	sb	zero,0(s0)
    224c:	10000063 	b	23dc <func_800E3414+0x1b8>
    2250:	2402ffff 	li	v0,-1
    2254:	8c4e0000 	lw	t6,0(v0)
    2258:	3c090000 	lui	t1,0x0
    225c:	24190002 	li	t9,2
    2260:	000e7900 	sll	t7,t6,0x4
    2264:	000fc782 	srl	t8,t7,0x1e
    2268:	17000004 	bnez	t8,227c <func_800E3414+0x58>
    226c:	25290000 	addiu	t1,t1,0
    2270:	a2190000 	sb	t9,0(s0)
    2274:	10000059 	b	23dc <func_800E3414+0x1b8>
    2278:	00001025 	move	v0,zero
    227c:	8d2a1d4c 	lw	t2,7500(t1)
    2280:	24010003 	li	at,3
    2284:	000a5880 	sll	t3,t2,0x2
    2288:	016a5823 	subu	t3,t3,t2
    228c:	000b58c0 	sll	t3,t3,0x3
    2290:	016a5821 	addu	t3,t3,t2
    2294:	000b5880 	sll	t3,t3,0x2
    2298:	012b1821 	addu	v1,t1,t3
    229c:	8c6c1d64 	lw	t4,7524(v1)
    22a0:	24631d50 	addiu	v1,v1,7504
    22a4:	55810003 	bnel	t4,at,22b4 <func_800E3414+0x90>
    22a8:	8d0e0000 	lw	t6,0(t0)
    22ac:	ac600014 	sw	zero,20(v1)
    22b0:	8d0e0000 	lw	t6,0(t0)
    22b4:	3c0100ff 	lui	at,0xff
    22b8:	3421ffff 	ori	at,at,0xffff
    22bc:	ac6e0020 	sw	t6,32(v1)
    22c0:	8d0d0004 	lw	t5,4(t0)
    22c4:	ac6d0024 	sw	t5,36(v1)
    22c8:	8d0e0008 	lw	t6,8(t0)
    22cc:	ac6e0028 	sw	t6,40(v1)
    22d0:	8d0d000c 	lw	t5,12(t0)
    22d4:	ac70001c 	sw	s0,28(v1)
    22d8:	ac6d002c 	sw	t5,44(v1)
    22dc:	8d020000 	lw	v0,0(t0)
    22e0:	8d060004 	lw	a2,4(t0)
    22e4:	afa8002c 	sw	t0,44(sp)
    22e8:	00023900 	sll	a3,v0,0x4
    22ec:	00073f82 	srl	a3,a3,0x1e
    22f0:	00073e00 	sll	a3,a3,0x18
    22f4:	00073e03 	sra	a3,a3,0x18
    22f8:	afa30028 	sw	v1,40(sp)
    22fc:	afa00010 	sw	zero,16(sp)
    2300:	8fa50030 	lw	a1,48(sp)
    2304:	0c000000 	jal	0 <func_800E11F0>
    2308:	00412024 	and	a0,v0,at
    230c:	8fa30028 	lw	v1,40(sp)
    2310:	8fa8002c 	lw	t0,44(sp)
    2314:	3c090000 	lui	t1,0x0
    2318:	25290000 	addiu	t1,t1,0
    231c:	14400010 	bnez	v0,2360 <func_800E3414+0x13c>
    2320:	ac62000c 	sw	v0,12(v1)
    2324:	8d020000 	lw	v0,0(t0)
    2328:	24010001 	li	at,1
    232c:	00027900 	sll	t7,v0,0x4
    2330:	000fc782 	srl	t8,t7,0x1e
    2334:	13010004 	beq	t8,at,2348 <func_800E3414+0x124>
    2338:	0002cf02 	srl	t9,v0,0x1c
    233c:	24010002 	li	at,2
    2340:	17210004 	bne	t9,at,2354 <func_800E3414+0x130>
    2344:	240a0003 	li	t2,3
    2348:	a2000000 	sb	zero,0(s0)
    234c:	10000023 	b	23dc <func_800E3414+0x1b8>
    2350:	2402ffff 	li	v0,-1
    2354:	a20a0000 	sb	t2,0(s0)
    2358:	10000020 	b	23dc <func_800E3414+0x1b8>
    235c:	2402ffff 	li	v0,-1
    2360:	24020001 	li	v0,1
    2364:	ac620014 	sw	v0,20(v1)
    2368:	8d0b0000 	lw	t3,0(t0)
    236c:	3c0100ff 	lui	at,0xff
    2370:	3421ffff 	ori	at,at,0xffff
    2374:	01616024 	and	t4,t3,at
    2378:	8c6f000c 	lw	t7,12(v1)
    237c:	258d000f 	addiu	t5,t4,15
    2380:	2401fff0 	li	at,-16
    2384:	01a17024 	and	t6,t5,at
    2388:	ac6e0018 	sw	t6,24(v1)
    238c:	ac6f0010 	sw	t7,16(v1)
    2390:	8d180004 	lw	t8,4(t0)
    2394:	ac780008 	sw	t8,8(v1)
    2398:	8d190000 	lw	t9,0(t0)
    239c:	00195100 	sll	t2,t9,0x4
    23a0:	000a5f82 	srl	t3,t2,0x1e
    23a4:	a06b0000 	sb	t3,0(v1)
    23a8:	8fac0030 	lw	t4,48(sp)
    23ac:	316e00ff 	andi	t6,t3,0xff
    23b0:	a06c0001 	sb	t4,1(v1)
    23b4:	8fad0034 	lw	t5,52(sp)
    23b8:	144e0004 	bne	v0,t6,23cc <func_800E3414+0x1a8>
    23bc:	a46d0002 	sh	t5,2(v1)
    23c0:	8d2f2838 	lw	t7,10296(t1)
    23c4:	85f80002 	lh	t8,2(t7)
    23c8:	ac780004 	sw	t8,4(v1)
    23cc:	8d391d4c 	lw	t9,7500(t1)
    23d0:	00001025 	move	v0,zero
    23d4:	3b2a0001 	xori	t2,t9,0x1
    23d8:	ad2a1d4c 	sw	t2,7500(t1)
    23dc:	8fbf0024 	lw	ra,36(sp)
    23e0:	8fb00020 	lw	s0,32(sp)
    23e4:	27bd0030 	addiu	sp,sp,48
    23e8:	03e00008 	jr	ra
    23ec:	00000000 	nop

000023f0 <func_800E35E0>:
    23f0:	27bdffe8 	addiu	sp,sp,-24
    23f4:	28a10080 	slti	at,a1,128
    23f8:	afbf0014 	sw	ra,20(sp)
    23fc:	10200009 	beqz	at,2424 <func_800E35E0+0x34>
    2400:	00a03025 	move	a2,a1
    2404:	0c000000 	jal	0 <func_800E11F0>
    2408:	00000000 	nop
    240c:	14400003 	bnez	v0,241c <func_800E35E0+0x2c>
    2410:	00000000 	nop
    2414:	10000016 	b	2470 <func_800E35E0+0x80>
    2418:	00001025 	move	v0,zero
    241c:	10000013 	b	246c <func_800E35E0+0x7c>
    2420:	8c430010 	lw	v1,16(v0)
    2424:	28c10100 	slti	at,a2,256
    2428:	10200009 	beqz	at,2450 <func_800E35E0+0x60>
    242c:	00000000 	nop
    2430:	0c000000 	jal	0 <func_800E11F0>
    2434:	24c5ff80 	addiu	a1,a2,-128
    2438:	14400003 	bnez	v0,2448 <func_800E35E0+0x58>
    243c:	00000000 	nop
    2440:	1000000b 	b	2470 <func_800E35E0+0x80>
    2444:	00001025 	move	v0,zero
    2448:	10000008 	b	246c <func_800E35E0+0x7c>
    244c:	8c430004 	lw	v1,4(v0)
    2450:	0c000000 	jal	0 <func_800E11F0>
    2454:	24c5ff00 	addiu	a1,a2,-256
    2458:	54400004 	bnezl	v0,246c <func_800E35E0+0x7c>
    245c:	8c430000 	lw	v1,0(v0)
    2460:	10000003 	b	2470 <func_800E35E0+0x80>
    2464:	00001025 	move	v0,zero
    2468:	8c430000 	lw	v1,0(v0)
    246c:	00601025 	move	v0,v1
    2470:	8fbf0014 	lw	ra,20(sp)
    2474:	27bd0018 	addiu	sp,sp,24
    2478:	03e00008 	jr	ra
    247c:	00000000 	nop

00002480 <func_800E3670>:
    2480:	03e00008 	jr	ra
    2484:	00000000 	nop

00002488 <func_800E3678>:
    2488:	27bdffe8 	addiu	sp,sp,-24
    248c:	afbf0014 	sw	ra,20(sp)
    2490:	8c8e0024 	lw	t6,36(a0)
    2494:	00803025 	move	a2,a0
    2498:	51c00015 	beqzl	t6,24f0 <func_800E3678+0x68>
    249c:	8fbf0014 	lw	ra,20(sp)
    24a0:	90840001 	lbu	a0,1(a0)
    24a4:	94c50002 	lhu	a1,2(a2)
    24a8:	0c000000 	jal	0 <func_800E11F0>
    24ac:	afa60018 	sw	a2,24(sp)
    24b0:	1040000e 	beqz	v0,24ec <func_800E3678+0x64>
    24b4:	8fa60018 	lw	a2,24(sp)
    24b8:	8c580000 	lw	t8,0(v0)
    24bc:	8cd90010 	lw	t9,16(a2)
    24c0:	acd80020 	sw	t8,32(a2)
    24c4:	8c4f0004 	lw	t7,4(v0)
    24c8:	accf0024 	sw	t7,36(a2)
    24cc:	8c580008 	lw	t8,8(v0)
    24d0:	acd80028 	sw	t8,40(a2)
    24d4:	8c4f000c 	lw	t7,12(v0)
    24d8:	accf002c 	sw	t7,44(a2)
    24dc:	90480000 	lbu	t0,0(v0)
    24e0:	ac590004 	sw	t9,4(v0)
    24e4:	3109fff3 	andi	t1,t0,0xfff3
    24e8:	a0490000 	sb	t1,0(v0)
    24ec:	8fbf0014 	lw	ra,20(sp)
    24f0:	27bd0018 	addiu	sp,sp,24
    24f4:	03e00008 	jr	ra
    24f8:	00000000 	nop

000024fc <func_800E36EC>:
    24fc:	27bdffc8 	addiu	sp,sp,-56
    2500:	afb70030 	sw	s7,48(sp)
    2504:	afb2001c 	sw	s2,28(sp)
    2508:	afb6002c 	sw	s6,44(sp)
    250c:	afb50028 	sw	s5,40(sp)
    2510:	afb40024 	sw	s4,36(sp)
    2514:	afb30020 	sw	s3,32(sp)
    2518:	3c120000 	lui	s2,0x0
    251c:	3c170000 	lui	s7,0x0
    2520:	0080b025 	move	s6,a0
    2524:	afbf0034 	sw	ra,52(sp)
    2528:	afb10018 	sw	s1,24(sp)
    252c:	afb00014 	sw	s0,20(sp)
    2530:	26f700c8 	addiu	s7,s7,200
    2534:	26520000 	addiu	s2,s2,0
    2538:	24130001 	li	s3,1
    253c:	24140002 	li	s4,2
    2540:	24150003 	li	s5,3
    2544:	8e421d64 	lw	v0,7524(s2)
    2548:	5053000f 	beql	v0,s3,2588 <func_800E36EC+0x8c>
    254c:	26501d50 	addiu	s0,s2,7504
    2550:	1454003e 	bne	v0,s4,264c <func_800E36EC+0x150>
    2554:	26501d50 	addiu	s0,s2,7504
    2558:	920e0000 	lbu	t6,0(s0)
    255c:	26040030 	addiu	a0,s0,48
    2560:	00002825 	move	a1,zero
    2564:	126e0003 	beq	s3,t6,2574 <func_800E36EC+0x78>
    2568:	00000000 	nop
    256c:	0c000000 	jal	0 <func_800E11F0>
    2570:	02603025 	move	a2,s3
    2574:	52c00004 	beqzl	s6,2588 <func_800E36EC+0x8c>
    2578:	26501d50 	addiu	s0,s2,7504
    257c:	10000033 	b	264c <func_800E36EC+0x150>
    2580:	ae150014 	sw	s5,20(s0)
    2584:	26501d50 	addiu	s0,s2,7504
    2588:	8e110018 	lw	s1,24(s0)
    258c:	ae140014 	sw	s4,20(s0)
    2590:	16200007 	bnez	s1,25b0 <func_800E36EC+0xb4>
    2594:	2a210400 	slti	at,s1,1024
    2598:	0c000000 	jal	0 <func_800E11F0>
    259c:	02002025 	move	a0,s0
    25a0:	8e0f001c 	lw	t7,28(s0)
    25a4:	ae150014 	sw	s5,20(s0)
    25a8:	10000028 	b	264c <func_800E36EC+0x150>
    25ac:	a1f30000 	sb	s3,0(t7)
    25b0:	50200011 	beqzl	at,25f8 <func_800E36EC+0xfc>
    25b4:	92190000 	lbu	t9,0(s0)
    25b8:	92180000 	lbu	t8,0(s0)
    25bc:	02203025 	move	a2,s1
    25c0:	02002025 	move	a0,s0
    25c4:	16780007 	bne	s3,t8,25e4 <func_800E36EC+0xe8>
    25c8:	00000000 	nop
    25cc:	8e040008 	lw	a0,8(s0)
    25d0:	8e05000c 	lw	a1,12(s0)
    25d4:	0c000000 	jal	0 <func_800E11F0>
    25d8:	8e070004 	lw	a3,4(s0)
    25dc:	10000003 	b	25ec <func_800E36EC+0xf0>
    25e0:	00000000 	nop
    25e4:	0c000000 	jal	0 <func_800E11F0>
    25e8:	02202825 	move	a1,s1
    25ec:	10000017 	b	264c <func_800E36EC+0x150>
    25f0:	ae000018 	sw	zero,24(s0)
    25f4:	92190000 	lbu	t9,0(s0)
    25f8:	24060400 	li	a2,1024
    25fc:	02002025 	move	a0,s0
    2600:	16790007 	bne	s3,t9,2620 <func_800E36EC+0x124>
    2604:	00000000 	nop
    2608:	8e040008 	lw	a0,8(s0)
    260c:	8e05000c 	lw	a1,12(s0)
    2610:	0c000000 	jal	0 <func_800E11F0>
    2614:	8e070004 	lw	a3,4(s0)
    2618:	10000004 	b	262c <func_800E36EC+0x130>
    261c:	8e080018 	lw	t0,24(s0)
    2620:	0c000000 	jal	0 <func_800E11F0>
    2624:	24050400 	li	a1,1024
    2628:	8e080018 	lw	t0,24(s0)
    262c:	8e0a000c 	lw	t2,12(s0)
    2630:	8e0c0008 	lw	t4,8(s0)
    2634:	2509fc00 	addiu	t1,t0,-1024
    2638:	254b0400 	addiu	t3,t2,1024
    263c:	258d0400 	addiu	t5,t4,1024
    2640:	ae090018 	sw	t1,24(s0)
    2644:	ae0b000c 	sw	t3,12(s0)
    2648:	ae0d0008 	sw	t5,8(s0)
    264c:	26520064 	addiu	s2,s2,100
    2650:	5657ffbd 	bnel	s2,s7,2548 <func_800E36EC+0x4c>
    2654:	8e421d64 	lw	v0,7524(s2)
    2658:	8fbf0034 	lw	ra,52(sp)
    265c:	8fb00014 	lw	s0,20(sp)
    2660:	8fb10018 	lw	s1,24(sp)
    2664:	8fb2001c 	lw	s2,28(sp)
    2668:	8fb30020 	lw	s3,32(sp)
    266c:	8fb40024 	lw	s4,36(sp)
    2670:	8fb50028 	lw	s5,40(sp)
    2674:	8fb6002c 	lw	s6,44(sp)
    2678:	8fb70030 	lw	s7,48(sp)
    267c:	03e00008 	jr	ra
    2680:	27bd0038 	addiu	sp,sp,56

00002684 <func_800E3874>:
    2684:	27bdffc0 	addiu	sp,sp,-64
    2688:	afb00030 	sw	s0,48(sp)
    268c:	00808025 	move	s0,a0
    2690:	afbf0034 	sw	ra,52(sp)
    2694:	afa50044 	sw	a1,68(sp)
    2698:	0c000000 	jal	0 <func_800E11F0>
    269c:	8c84000c 	lw	a0,12(a0)
    26a0:	26040030 	addiu	a0,s0,48
    26a4:	afa4003c 	sw	a0,60(sp)
    26a8:	26050048 	addiu	a1,s0,72
    26ac:	0c000000 	jal	0 <func_800E11F0>
    26b0:	24060001 	li	a2,1
    26b4:	8e0e000c 	lw	t6,12(s0)
    26b8:	8faf0044 	lw	t7,68(sp)
    26bc:	8fb8003c 	lw	t8,60(sp)
    26c0:	8e070008 	lw	a3,8(s0)
    26c4:	afae0010 	sw	t6,16(sp)
    26c8:	afaf0014 	sw	t7,20(sp)
    26cc:	afb80018 	sw	t8,24(sp)
    26d0:	92190000 	lbu	t9,0(s0)
    26d4:	3c080000 	lui	t0,0x0
    26d8:	25080000 	addiu	t0,t0,0
    26dc:	afa80020 	sw	t0,32(sp)
    26e0:	2604004c 	addiu	a0,s0,76
    26e4:	00002825 	move	a1,zero
    26e8:	00003025 	move	a2,zero
    26ec:	0c000000 	jal	0 <func_800E11F0>
    26f0:	afb9001c 	sw	t9,28(sp)
    26f4:	8fbf0034 	lw	ra,52(sp)
    26f8:	8fb00030 	lw	s0,48(sp)
    26fc:	27bd0040 	addiu	sp,sp,64
    2700:	03e00008 	jr	ra
    2704:	00000000 	nop

00002708 <func_800E38F8>:
    2708:	afa40000 	sw	a0,0(sp)
    270c:	afa50004 	sw	a1,4(sp)
    2710:	afa60008 	sw	a2,8(sp)
    2714:	03e00008 	jr	ra
    2718:	afa7000c 	sw	a3,12(sp)

0000271c <func_800E390C>:
    271c:	3c080000 	lui	t0,0x0
    2720:	25080000 	addiu	t0,t0,0
    2724:	950e2840 	lhu	t6,10304(t0)
    2728:	27bdffe8 	addiu	sp,sp,-24
    272c:	afbf0014 	sw	ra,20(sp)
    2730:	008e082a 	slt	at,a0,t6
    2734:	afa5001c 	sw	a1,28(sp)
    2738:	afa60020 	sw	a2,32(sp)
    273c:	14200004 	bnez	at,2750 <func_800E390C+0x34>
    2740:	00803825 	move	a3,a0
    2744:	a0c00000 	sb	zero,0(a2)
    2748:	10000032 	b	2814 <func_800E390C+0xf8>
    274c:	2402ffff 	li	v0,-1
    2750:	00002025 	move	a0,zero
    2754:	0c000000 	jal	0 <func_800E11F0>
    2758:	00e02825 	move	a1,a3
    275c:	00002025 	move	a0,zero
    2760:	0c000000 	jal	0 <func_800E11F0>
    2764:	afa20018 	sw	v0,24(sp)
    2768:	3c080000 	lui	t0,0x0
    276c:	25080000 	addiu	t0,t0,0
    2770:	8d181d4c 	lw	t8,7500(t0)
    2774:	8fa70018 	lw	a3,24(sp)
    2778:	24010003 	li	at,3
    277c:	0018c880 	sll	t9,t8,0x2
    2780:	0338c823 	subu	t9,t9,t8
    2784:	0019c8c0 	sll	t9,t9,0x3
    2788:	0338c821 	addu	t9,t9,t8
    278c:	0019c880 	sll	t9,t9,0x2
    2790:	01191821 	addu	v1,t0,t9
    2794:	8c6a1d64 	lw	t2,7524(v1)
    2798:	24631d50 	addiu	v1,v1,7504
    279c:	24060001 	li	a2,1
    27a0:	15410002 	bne	t2,at,27ac <func_800E390C+0x90>
    27a4:	00076100 	sll	t4,a3,0x4
    27a8:	ac600014 	sw	zero,20(v1)
    27ac:	8fa9001c 	lw	t1,28(sp)
    27b0:	ac600024 	sw	zero,36(v1)
    27b4:	8fab0020 	lw	t3,32(sp)
    27b8:	004c2821 	addu	a1,v0,t4
    27bc:	2401fff0 	li	at,-16
    27c0:	ac6b001c 	sw	t3,28(v1)
    27c4:	8ca40014 	lw	a0,20(a1)
    27c8:	ac660014 	sw	a2,20(v1)
    27cc:	ac69000c 	sw	t1,12(v1)
    27d0:	2484000f 	addiu	a0,a0,15
    27d4:	00812024 	and	a0,a0,at
    27d8:	ac640018 	sw	a0,24(v1)
    27dc:	ac690010 	sw	t1,16(v1)
    27e0:	8cad0010 	lw	t5,16(a1)
    27e4:	ac6d0008 	sw	t5,8(v1)
    27e8:	80ae0018 	lb	t6,24(a1)
    27ec:	a0670001 	sb	a3,1(v1)
    27f0:	31cf00ff 	andi	t7,t6,0xff
    27f4:	14cf0003 	bne	a2,t7,2804 <func_800E390C+0xe8>
    27f8:	a06e0000 	sb	t6,0(v1)
    27fc:	84580002 	lh	t8,2(v0)
    2800:	ac780004 	sw	t8,4(v1)
    2804:	8d191d4c 	lw	t9,7500(t0)
    2808:	00001025 	move	v0,zero
    280c:	3b2a0001 	xori	t2,t9,0x1
    2810:	ad0a1d4c 	sw	t2,7500(t0)
    2814:	8fbf0014 	lw	ra,20(sp)
    2818:	27bd0018 	addiu	sp,sp,24
    281c:	03e00008 	jr	ra
    2820:	00000000 	nop

00002824 <func_800E3A14>:
    2824:	3c030000 	lui	v1,0x0
    2828:	3c020000 	lui	v0,0x0
    282c:	24420580 	addiu	v0,v0,1408
    2830:	24630000 	addiu	v1,v1,0
    2834:	24630160 	addiu	v1,v1,352
    2838:	a0601668 	sb	zero,5736(v1)
    283c:	a06016c0 	sb	zero,5824(v1)
    2840:	a0601718 	sb	zero,5912(v1)
    2844:	1462fffb 	bne	v1,v0,2834 <func_800E3A14+0x10>
    2848:	a0601610 	sb	zero,5648(v1)
    284c:	03e00008 	jr	ra
    2850:	00000000 	nop

00002854 <func_800E3A44>:
    2854:	27bdffd0 	addiu	sp,sp,-48
    2858:	afa40030 	sw	a0,48(sp)
    285c:	afa50034 	sw	a1,52(sp)
    2860:	00a02025 	move	a0,a1
    2864:	8fae0044 	lw	t6,68(sp)
    2868:	8faf0048 	lw	t7,72(sp)
    286c:	8fb8004c 	lw	t8,76(sp)
    2870:	afa60038 	sw	a2,56(sp)
    2874:	00c02825 	move	a1,a2
    2878:	afbf0024 	sw	ra,36(sp)
    287c:	afa7003c 	sw	a3,60(sp)
    2880:	00e03025 	move	a2,a3
    2884:	8fa70040 	lw	a3,64(sp)
    2888:	afae0010 	sw	t6,16(sp)
    288c:	afaf0014 	sw	t7,20(sp)
    2890:	0c000000 	jal	0 <func_800E11F0>
    2894:	afb80018 	sw	t8,24(sp)
    2898:	14400003 	bnez	v0,28a8 <func_800E3A44+0x54>
    289c:	00402825 	move	a1,v0
    28a0:	10000009 	b	28c8 <func_800E3A44+0x74>
    28a4:	00001025 	move	v0,zero
    28a8:	3c040000 	lui	a0,0x0
    28ac:	24841cf0 	addiu	a0,a0,7408
    28b0:	00003025 	move	a2,zero
    28b4:	0c000000 	jal	0 <func_800E11F0>
    28b8:	afa5002c 	sw	a1,44(sp)
    28bc:	8fa2002c 	lw	v0,44(sp)
    28c0:	8fb90030 	lw	t9,48(sp)
    28c4:	ac590018 	sw	t9,24(v0)
    28c8:	8fbf0024 	lw	ra,36(sp)
    28cc:	27bd0030 	addiu	sp,sp,48
    28d0:	03e00008 	jr	ra
    28d4:	00000000 	nop

000028d8 <func_800E3AC8>:
    28d8:	27bdffe0 	addiu	sp,sp,-32
    28dc:	3c020000 	lui	v0,0x0
    28e0:	3c030000 	lui	v1,0x0
    28e4:	afbf0014 	sw	ra,20(sp)
    28e8:	afa40020 	sw	a0,32(sp)
    28ec:	24630580 	addiu	v1,v1,1408
    28f0:	24420000 	addiu	v0,v0,0
    28f4:	804e1770 	lb	t6,6000(v0)
    28f8:	55c00004 	bnezl	t6,290c <func_800E3AC8+0x34>
    28fc:	24420058 	addiu	v0,v0,88
    2900:	10000005 	b	2918 <func_800E3AC8+0x40>
    2904:	24431770 	addiu	v1,v0,6000
    2908:	24420058 	addiu	v0,v0,88
    290c:	5443fffa 	bnel	v0,v1,28f8 <func_800E3AC8+0x20>
    2910:	804e1770 	lb	t6,6000(v0)
    2914:	8fa3001c 	lw	v1,28(sp)
    2918:	3c0f0000 	lui	t7,0x0
    291c:	25ef0580 	addiu	t7,t7,1408
    2920:	144f0003 	bne	v0,t7,2930 <func_800E3AC8+0x58>
    2924:	8fa40030 	lw	a0,48(sp)
    2928:	10000030 	b	29ec <func_800E3AC8+0x114>
    292c:	00001025 	move	v0,zero
    2930:	24020001 	li	v0,1
    2934:	a0620000 	sb	v0,0(v1)
    2938:	8fb80020 	lw	t8,32(sp)
    293c:	ac650004 	sw	a1,4(v1)
    2940:	ac65000c 	sw	a1,12(v1)
    2944:	ac660010 	sw	a2,16(v1)
    2948:	14800004 	bnez	a0,295c <func_800E3AC8+0x84>
    294c:	ac780008 	sw	t8,8(v1)
    2950:	24191000 	li	t9,4096
    2954:	10000018 	b	29b8 <func_800E3AC8+0xe0>
    2958:	ac790014 	sw	t9,20(v1)
    295c:	14820003 	bne	a0,v0,296c <func_800E3AC8+0x94>
    2960:	00000000 	nop
    2964:	10000014 	b	29b8 <func_800E3AC8+0xe0>
    2968:	ac660014 	sw	a2,20(v1)
    296c:	00c4001a 	div	zero,a2,a0
    2970:	14800002 	bnez	a0,297c <func_800E3AC8+0xa4>
    2974:	00000000 	nop
    2978:	0007000d 	break	0x7
    297c:	2401ffff 	li	at,-1
    2980:	14810004 	bne	a0,at,2994 <func_800E3AC8+0xbc>
    2984:	3c018000 	lui	at,0x8000
    2988:	14c10002 	bne	a2,at,2994 <func_800E3AC8+0xbc>
    298c:	00000000 	nop
    2990:	0006000d 	break	0x6
    2994:	00001012 	mflo	v0
    2998:	244200ff 	addiu	v0,v0,255
    299c:	2401ff00 	li	at,-256
    29a0:	00411024 	and	v0,v0,at
    29a4:	2c410100 	sltiu	at,v0,256
    29a8:	10200003 	beqz	at,29b8 <func_800E3AC8+0xe0>
    29ac:	ac620014 	sw	v0,20(v1)
    29b0:	24080100 	li	t0,256
    29b4:	ac680014 	sw	t0,20(v1)
    29b8:	8fa90034 	lw	t1,52(sp)
    29bc:	240a0003 	li	t2,3
    29c0:	a06a0001 	sb	t2,1(v1)
    29c4:	a0670002 	sb	a3,2(v1)
    29c8:	ac690020 	sw	t1,32(v1)
    29cc:	8fab0038 	lw	t3,56(sp)
    29d0:	24640024 	addiu	a0,v1,36
    29d4:	2465003c 	addiu	a1,v1,60
    29d8:	ac6b001c 	sw	t3,28(v1)
    29dc:	afa3001c 	sw	v1,28(sp)
    29e0:	0c000000 	jal	0 <func_800E11F0>
    29e4:	24060001 	li	a2,1
    29e8:	8fa2001c 	lw	v0,28(sp)
    29ec:	8fbf0014 	lw	ra,20(sp)
    29f0:	27bd0020 	addiu	sp,sp,32
    29f4:	03e00008 	jr	ra
    29f8:	00000000 	nop

000029fc <func_800E3BEC>:
    29fc:	3c030000 	lui	v1,0x0
    2a00:	24630000 	addiu	v1,v1,0
    2a04:	27bdffc8 	addiu	sp,sp,-56
    2a08:	8c6e2984 	lw	t6,10628(v1)
    2a0c:	afb30020 	sw	s3,32(sp)
    2a10:	24010001 	li	at,1
    2a14:	00809825 	move	s3,a0
    2a18:	afbf0024 	sw	ra,36(sp)
    2a1c:	afb2001c 	sw	s2,28(sp)
    2a20:	afb10018 	sw	s1,24(sp)
    2a24:	11c10037 	beq	t6,at,2b04 <func_800E3BEC+0x108>
    2a28:	afb00014 	sw	s0,20(sp)
    2a2c:	8c641d48 	lw	a0,7496(v1)
    2a30:	1480001d 	bnez	a0,2aa8 <func_800E3BEC+0xac>
    2a34:	00000000 	nop
    2a38:	1260000e 	beqz	s3,2a74 <func_800E3BEC+0x78>
    2a3c:	3c100000 	lui	s0,0x0
    2a40:	3c100000 	lui	s0,0x0
    2a44:	26101cf0 	addiu	s0,s0,7408
    2a48:	2412ffff 	li	s2,-1
    2a4c:	27b10034 	addiu	s1,sp,52
    2a50:	02002025 	move	a0,s0
    2a54:	02202825 	move	a1,s1
    2a58:	0c000000 	jal	0 <func_800E11F0>
    2a5c:	00003025 	move	a2,zero
    2a60:	5452fffc 	bnel	v0,s2,2a54 <func_800E3BEC+0x58>
    2a64:	02002025 	move	a0,s0
    2a68:	3c040000 	lui	a0,0x0
    2a6c:	1000000e 	b	2aa8 <func_800E3BEC+0xac>
    2a70:	8c841d48 	lw	a0,7496(a0)
    2a74:	26041cf0 	addiu	a0,s0,7408
    2a78:	27a50034 	addiu	a1,sp,52
    2a7c:	0c000000 	jal	0 <func_800E11F0>
    2a80:	00003025 	move	a2,zero
    2a84:	3c030000 	lui	v1,0x0
    2a88:	2412ffff 	li	s2,-1
    2a8c:	14520004 	bne	v0,s2,2aa0 <func_800E3BEC+0xa4>
    2a90:	24630000 	addiu	v1,v1,0
    2a94:	ac601d48 	sw	zero,7496(v1)
    2a98:	10000003 	b	2aa8 <func_800E3BEC+0xac>
    2a9c:	00002025 	move	a0,zero
    2aa0:	8fa40034 	lw	a0,52(sp)
    2aa4:	ac641d48 	sw	a0,7496(v1)
    2aa8:	10800003 	beqz	a0,2ab8 <func_800E3BEC+0xbc>
    2aac:	00000000 	nop
    2ab0:	0c000000 	jal	0 <func_800E11F0>
    2ab4:	02602825 	move	a1,s3
    2ab8:	3c100000 	lui	s0,0x0
    2abc:	3c120000 	lui	s2,0x0
    2ac0:	26520580 	addiu	s2,s2,1408
    2ac4:	26100000 	addiu	s0,s0,0
    2ac8:	24110001 	li	s1,1
    2acc:	82181770 	lb	t8,6000(s0)
    2ad0:	26191770 	addiu	t9,s0,6000
    2ad4:	56380009 	bnel	s1,t8,2afc <func_800E3BEC+0x100>
    2ad8:	26100058 	addiu	s0,s0,88
    2adc:	afb90034 	sw	t9,52(sp)
    2ae0:	83290002 	lb	t1,2(t9)
    2ae4:	03202025 	move	a0,t9
    2ae8:	52290004 	beql	s1,t1,2afc <func_800E3BEC+0x100>
    2aec:	26100058 	addiu	s0,s0,88
    2af0:	0c000000 	jal	0 <func_800E11F0>
    2af4:	02602825 	move	a1,s3
    2af8:	26100058 	addiu	s0,s0,88
    2afc:	5612fff4 	bnel	s0,s2,2ad0 <func_800E3BEC+0xd4>
    2b00:	82181770 	lb	t8,6000(s0)
    2b04:	8fbf0024 	lw	ra,36(sp)
    2b08:	8fb00014 	lw	s0,20(sp)
    2b0c:	8fb10018 	lw	s1,24(sp)
    2b10:	8fb2001c 	lw	s2,28(sp)
    2b14:	8fb30020 	lw	s3,32(sp)
    2b18:	03e00008 	jr	ra
    2b1c:	27bd0038 	addiu	sp,sp,56

00002b20 <func_800E3D10>:
    2b20:	afa40000 	sw	a0,0(sp)
    2b24:	03e00008 	jr	ra
    2b28:	afa50004 	sw	a1,4(sp)

00002b2c <func_800E3D1C>:
    2b2c:	27bdffa0 	addiu	sp,sp,-96
    2b30:	afbf001c 	sw	ra,28(sp)
    2b34:	afb00018 	sw	s0,24(sp)
    2b38:	8c85001c 	lw	a1,28(a0)
    2b3c:	00808025 	move	s0,a0
    2b40:	24010001 	li	at,1
    2b44:	00051402 	srl	v0,a1,0x10
    2b48:	304200ff 	andi	v0,v0,0xff
    2b4c:	10400008 	beqz	v0,2b70 <func_800E3D1C+0x44>
    2b50:	00a01825 	move	v1,a1
    2b54:	10410011 	beq	v0,at,2b9c <func_800E3D1C+0x70>
    2b58:	00037202 	srl	t6,v1,0x8
    2b5c:	24010002 	li	at,2
    2b60:	10410009 	beq	v0,at,2b88 <func_800E3D1C+0x5c>
    2b64:	00032202 	srl	a0,v1,0x8
    2b68:	10000037 	b	2c48 <func_800E3D1C+0x11c>
    2b6c:	a2000000 	sb	zero,0(s0)
    2b70:	00032202 	srl	a0,v1,0x8
    2b74:	308400ff 	andi	a0,a0,0xff
    2b78:	0c000000 	jal	0 <func_800E11F0>
    2b7c:	306500ff 	andi	a1,v1,0xff
    2b80:	10000030 	b	2c44 <func_800E3D1C+0x118>
    2b84:	8e05001c 	lw	a1,28(s0)
    2b88:	308400ff 	andi	a0,a0,0xff
    2b8c:	0c000000 	jal	0 <func_800E11F0>
    2b90:	306500ff 	andi	a1,v1,0xff
    2b94:	1000002b 	b	2c44 <func_800E3D1C+0x118>
    2b98:	8e05001c 	lw	a1,28(s0)
    2b9c:	31cf00ff 	andi	t7,t6,0xff
    2ba0:	3c180000 	lui	t8,0x0
    2ba4:	8f182844 	lw	t8,10308(t8)
    2ba8:	000fc880 	sll	t9,t7,0x2
    2bac:	032fc821 	addu	t9,t9,t7
    2bb0:	0019c880 	sll	t9,t9,0x2
    2bb4:	afaf0028 	sw	t7,40(sp)
    2bb8:	03191021 	addu	v0,t8,t9
    2bbc:	90440002 	lbu	a0,2(v0)
    2bc0:	90460003 	lbu	a2,3(v0)
    2bc4:	240100ff 	li	at,255
    2bc8:	afa40030 	sw	a0,48(sp)
    2bcc:	10810009 	beq	a0,at,2bf4 <func_800E3D1C+0xc8>
    2bd0:	afa60034 	sw	a2,52(sp)
    2bd4:	27a50040 	addiu	a1,sp,64
    2bd8:	afa3005c 	sw	v1,92(sp)
    2bdc:	0c000000 	jal	0 <func_800E11F0>
    2be0:	afa60048 	sw	a2,72(sp)
    2be4:	8fa3005c 	lw	v1,92(sp)
    2be8:	8fa60048 	lw	a2,72(sp)
    2bec:	10000002 	b	2bf8 <func_800E3D1C+0xcc>
    2bf0:	afa20038 	sw	v0,56(sp)
    2bf4:	afa00038 	sw	zero,56(sp)
    2bf8:	240100ff 	li	at,255
    2bfc:	10c10007 	beq	a2,at,2c1c <func_800E3D1C+0xf0>
    2c00:	00c02025 	move	a0,a2
    2c04:	27a50044 	addiu	a1,sp,68
    2c08:	0c000000 	jal	0 <func_800E11F0>
    2c0c:	afa3005c 	sw	v1,92(sp)
    2c10:	8fa3005c 	lw	v1,92(sp)
    2c14:	10000002 	b	2c20 <func_800E3D1C+0xf4>
    2c18:	afa2003c 	sw	v0,60(sp)
    2c1c:	afa0003c 	sw	zero,60(sp)
    2c20:	8fa40028 	lw	a0,40(sp)
    2c24:	0c000000 	jal	0 <func_800E11F0>
    2c28:	306500ff 	andi	a1,v1,0xff
    2c2c:	8fa40028 	lw	a0,40(sp)
    2c30:	8e050004 	lw	a1,4(s0)
    2c34:	27a60030 	addiu	a2,sp,48
    2c38:	0c000000 	jal	0 <func_800E11F0>
    2c3c:	24070001 	li	a3,1
    2c40:	8e05001c 	lw	a1,28(s0)
    2c44:	a2000000 	sb	zero,0(s0)
    2c48:	8e040020 	lw	a0,32(s0)
    2c4c:	0c000000 	jal	0 <func_800E11F0>
    2c50:	00003025 	move	a2,zero
    2c54:	8fbf001c 	lw	ra,28(sp)
    2c58:	8fb00018 	lw	s0,24(sp)
    2c5c:	27bd0060 	addiu	sp,sp,96
    2c60:	03e00008 	jr	ra
    2c64:	00000000 	nop

00002c68 <func_800E3E58>:
    2c68:	27bdffd8 	addiu	sp,sp,-40
    2c6c:	afbf001c 	sw	ra,28(sp)
    2c70:	afb00018 	sw	s0,24(sp)
    2c74:	80820001 	lb	v0,1(a0)
    2c78:	3c030000 	lui	v1,0x0
    2c7c:	00808025 	move	s0,a0
    2c80:	28410002 	slti	at,v0,2
    2c84:	14200004 	bnez	at,2c98 <func_800E3E58+0x30>
    2c88:	8c632838 	lw	v1,10296(v1)
    2c8c:	244effff 	addiu	t6,v0,-1
    2c90:	10000047 	b	2db0 <func_800E3E58+0x148>
    2c94:	a08e0001 	sb	t6,1(a0)
    2c98:	24070001 	li	a3,1
    2c9c:	14e20003 	bne	a3,v0,2cac <func_800E3E58+0x44>
    2ca0:	00000000 	nop
    2ca4:	10000011 	b	2cec <func_800E3E58+0x84>
    2ca8:	a2000001 	sb	zero,1(s0)
    2cac:	10a00007 	beqz	a1,2ccc <func_800E3E58+0x64>
    2cb0:	26040024 	addiu	a0,s0,36
    2cb4:	26040024 	addiu	a0,s0,36
    2cb8:	00002825 	move	a1,zero
    2cbc:	0c000000 	jal	0 <func_800E11F0>
    2cc0:	24060001 	li	a2,1
    2cc4:	1000003a 	b	2db0 <func_800E3E58+0x148>
    2cc8:	a2000000 	sb	zero,0(s0)
    2ccc:	00002825 	move	a1,zero
    2cd0:	00003025 	move	a2,zero
    2cd4:	0c000000 	jal	0 <func_800E11F0>
    2cd8:	afa30024 	sw	v1,36(sp)
    2cdc:	2401ffff 	li	at,-1
    2ce0:	8fa30024 	lw	v1,36(sp)
    2ce4:	10410032 	beq	v0,at,2db0 <func_800E3E58+0x148>
    2ce8:	24070001 	li	a3,1
    2cec:	8e0f0010 	lw	t7,16(s0)
    2cf0:	15e00005 	bnez	t7,2d08 <func_800E3E58+0xa0>
    2cf4:	afaf0020 	sw	t7,32(sp)
    2cf8:	0c000000 	jal	0 <func_800E11F0>
    2cfc:	02002025 	move	a0,s0
    2d00:	1000002c 	b	2db4 <func_800E3E58+0x14c>
    2d04:	8fbf001c 	lw	ra,28(sp)
    2d08:	8e060014 	lw	a2,20(s0)
    2d0c:	8fb90020 	lw	t9,32(sp)
    2d10:	0326082b 	sltu	at,t9,a2
    2d14:	50200011 	beqzl	at,2d5c <func_800E3E58+0xf4>
    2d18:	82090002 	lb	t1,2(s0)
    2d1c:	82080002 	lb	t0,2(s0)
    2d20:	03203025 	move	a2,t9
    2d24:	02002025 	move	a0,s0
    2d28:	14e80007 	bne	a3,t0,2d48 <func_800E3E58+0xe0>
    2d2c:	00000000 	nop
    2d30:	8e040008 	lw	a0,8(s0)
    2d34:	8e05000c 	lw	a1,12(s0)
    2d38:	0c000000 	jal	0 <func_800E11F0>
    2d3c:	84670002 	lh	a3,2(v1)
    2d40:	10000003 	b	2d50 <func_800E3E58+0xe8>
    2d44:	00000000 	nop
    2d48:	0c000000 	jal	0 <func_800E11F0>
    2d4c:	8fa50020 	lw	a1,32(sp)
    2d50:	10000017 	b	2db0 <func_800E3E58+0x148>
    2d54:	ae000010 	sw	zero,16(s0)
    2d58:	82090002 	lb	t1,2(s0)
    2d5c:	02002025 	move	a0,s0
    2d60:	14e90007 	bne	a3,t1,2d80 <func_800E3E58+0x118>
    2d64:	00000000 	nop
    2d68:	8e040008 	lw	a0,8(s0)
    2d6c:	8e05000c 	lw	a1,12(s0)
    2d70:	0c000000 	jal	0 <func_800E11F0>
    2d74:	84670002 	lh	a3,2(v1)
    2d78:	10000004 	b	2d8c <func_800E3E58+0x124>
    2d7c:	8e060014 	lw	a2,20(s0)
    2d80:	0c000000 	jal	0 <func_800E11F0>
    2d84:	00c02825 	move	a1,a2
    2d88:	8e060014 	lw	a2,20(s0)
    2d8c:	8e0a0010 	lw	t2,16(s0)
    2d90:	8e0c0008 	lw	t4,8(s0)
    2d94:	8e0e000c 	lw	t6,12(s0)
    2d98:	01465823 	subu	t3,t2,a2
    2d9c:	01866821 	addu	t5,t4,a2
    2da0:	01c67821 	addu	t7,t6,a2
    2da4:	ae0b0010 	sw	t3,16(s0)
    2da8:	ae0d0008 	sw	t5,8(s0)
    2dac:	ae0f000c 	sw	t7,12(s0)
    2db0:	8fbf001c 	lw	ra,28(sp)
    2db4:	8fb00018 	lw	s0,24(sp)
    2db8:	27bd0028 	addiu	sp,sp,40
    2dbc:	03e00008 	jr	ra
    2dc0:	00000000 	nop

00002dc4 <func_800E3FB4>:
    2dc4:	27bdffc0 	addiu	sp,sp,-64
    2dc8:	afb00030 	sw	s0,48(sp)
    2dcc:	00808025 	move	s0,a0
    2dd0:	afbf0034 	sw	ra,52(sp)
    2dd4:	24a5000f 	addiu	a1,a1,15
    2dd8:	2401fff0 	li	at,-16
    2ddc:	00a12824 	and	a1,a1,at
    2de0:	8c84000c 	lw	a0,12(a0)
    2de4:	0c000000 	jal	0 <func_800E11F0>
    2de8:	afa50044 	sw	a1,68(sp)
    2dec:	26040024 	addiu	a0,s0,36
    2df0:	afa4003c 	sw	a0,60(sp)
    2df4:	2605003c 	addiu	a1,s0,60
    2df8:	0c000000 	jal	0 <func_800E11F0>
    2dfc:	24060001 	li	a2,1
    2e00:	8e0e000c 	lw	t6,12(s0)
    2e04:	8faf0044 	lw	t7,68(sp)
    2e08:	8fb8003c 	lw	t8,60(sp)
    2e0c:	8e070008 	lw	a3,8(s0)
    2e10:	afae0010 	sw	t6,16(sp)
    2e14:	afaf0014 	sw	t7,20(sp)
    2e18:	afb80018 	sw	t8,24(sp)
    2e1c:	82190002 	lb	t9,2(s0)
    2e20:	3c080000 	lui	t0,0x0
    2e24:	25080000 	addiu	t0,t0,0
    2e28:	afa80020 	sw	t0,32(sp)
    2e2c:	26040040 	addiu	a0,s0,64
    2e30:	00002825 	move	a1,zero
    2e34:	00003025 	move	a2,zero
    2e38:	0c000000 	jal	0 <func_800E11F0>
    2e3c:	afb9001c 	sw	t9,28(sp)
    2e40:	8fbf0034 	lw	ra,52(sp)
    2e44:	8fb00030 	lw	s0,48(sp)
    2e48:	27bd0040 	addiu	sp,sp,64
    2e4c:	03e00008 	jr	ra
    2e50:	00000000 	nop

00002e54 <func_800E4044>:
    2e54:	afa40000 	sw	a0,0(sp)
    2e58:	afa50004 	sw	a1,4(sp)
    2e5c:	afa60008 	sw	a2,8(sp)
    2e60:	03e00008 	jr	ra
    2e64:	afa7000c 	sw	a3,12(sp)

00002e68 <func_800E4058>:
    2e68:	8c820000 	lw	v0,0(a0)
    2e6c:	3c018000 	lui	at,0x8000
    2e70:	34210001 	ori	at,at,0x1
    2e74:	0041082b 	sltu	at,v0,at
    2e78:	10200049 	beqz	at,2fa0 <func_800E4058+0x138>
    2e7c:	00c03825 	move	a3,a2
    2e80:	00451821 	addu	v1,v0,a1
    2e84:	ac830000 	sw	v1,0(a0)
    2e88:	8c6e0000 	lw	t6,0(v1)
    2e8c:	3c0100ff 	lui	at,0xff
    2e90:	3421ffff 	ori	at,at,0xffff
    2e94:	01c17824 	and	t7,t6,at
    2e98:	11e00041 	beqz	t7,2fa0 <func_800E4058+0x138>
    2e9c:	00603025 	move	a2,v1
    2ea0:	90780000 	lbu	t8,0(v1)
    2ea4:	24040001 	li	a0,1
    2ea8:	33190001 	andi	t9,t8,0x1
    2eac:	1099003c 	beq	a0,t9,2fa0 <func_800E4058+0x138>
    2eb0:	00000000 	nop
    2eb4:	8c680008 	lw	t0,8(v1)
    2eb8:	8cc20000 	lw	v0,0(a2)
    2ebc:	8cc9000c 	lw	t1,12(a2)
    2ec0:	01051821 	addu	v1,t0,a1
    2ec4:	acc30008 	sw	v1,8(a2)
    2ec8:	00021100 	sll	v0,v0,0x4
    2ecc:	00021782 	srl	v0,v0,0x1e
    2ed0:	01251821 	addu	v1,t1,a1
    2ed4:	10400009 	beqz	v0,2efc <func_800E4058+0x94>
    2ed8:	acc3000c 	sw	v1,12(a2)
    2edc:	10440013 	beq	v0,a0,2f2c <func_800E4058+0xc4>
    2ee0:	24010002 	li	at,2
    2ee4:	1041001c 	beq	v0,at,2f58 <func_800E4058+0xf0>
    2ee8:	24010003 	li	at,3
    2eec:	5041001b 	beql	v0,at,2f5c <func_800E4058+0xf4>
    2ef0:	90c90000 	lbu	t1,0(a2)
    2ef4:	10000019 	b	2f5c <func_800E4058+0xf4>
    2ef8:	90c90000 	lbu	t1,0(a2)
    2efc:	8cca0004 	lw	t2,4(a2)
    2f00:	8ceb0008 	lw	t3,8(a3)
    2f04:	90d80000 	lbu	t8,0(a2)
    2f08:	014b1821 	addu	v1,t2,t3
    2f0c:	acc30004 	sw	v1,4(a2)
    2f10:	8ced0010 	lw	t5,16(a3)
    2f14:	3319fff3 	andi	t9,t8,0xfff3
    2f18:	000d7080 	sll	t6,t5,0x2
    2f1c:	31cf000c 	andi	t7,t6,0xc
    2f20:	01f94025 	or	t0,t7,t9
    2f24:	1000000c 	b	2f58 <func_800E4058+0xf0>
    2f28:	a0c80000 	sb	t0,0(a2)
    2f2c:	8cc90004 	lw	t1,4(a2)
    2f30:	8cea000c 	lw	t2,12(a3)
    2f34:	90d80000 	lbu	t8,0(a2)
    2f38:	012a1821 	addu	v1,t1,t2
    2f3c:	acc30004 	sw	v1,4(a2)
    2f40:	8cec0014 	lw	t4,20(a3)
    2f44:	330ffff3 	andi	t7,t8,0xfff3
    2f48:	000c6880 	sll	t5,t4,0x2
    2f4c:	31ae000c 	andi	t6,t5,0xc
    2f50:	01cfc825 	or	t9,t6,t7
    2f54:	a0d90000 	sb	t9,0(a2)
    2f58:	90c90000 	lbu	t1,0(a2)
    2f5c:	352a0001 	ori	t2,t1,0x1
    2f60:	a0ca0000 	sb	t2,0(a2)
    2f64:	8cc20000 	lw	v0,0(a2)
    2f68:	00026180 	sll	t4,v0,0x6
    2f6c:	0581000c 	bgez	t4,2fa0 <func_800E4058+0x138>
    2f70:	00026900 	sll	t5,v0,0x4
    2f74:	000dc782 	srl	t8,t5,0x1e
    2f78:	13000009 	beqz	t8,2fa0 <func_800E4058+0x138>
    2f7c:	3c020000 	lui	v0,0x0
    2f80:	24420000 	addiu	v0,v0,0
    2f84:	8c4e1768 	lw	t6,5992(v0)
    2f88:	000e7880 	sll	t7,t6,0x2
    2f8c:	004fc821 	addu	t9,v0,t7
    2f90:	af260b68 	sw	a2,2920(t9)
    2f94:	8c481768 	lw	t0,5992(v0)
    2f98:	25090001 	addiu	t1,t0,1
    2f9c:	ac491768 	sw	t1,5992(v0)
    2fa0:	03e00008 	jr	ra
    2fa4:	00000000 	nop

00002fa8 <func_800E4198>:
    2fa8:	27bdff98 	addiu	sp,sp,-104
    2fac:	afb30030 	sw	s3,48(sp)
    2fb0:	3c130000 	lui	s3,0x0
    2fb4:	26730000 	addiu	s3,s3,0
    2fb8:	8e6e176c 	lw	t6,5996(s3)
    2fbc:	afb50038 	sw	s5,56(sp)
    2fc0:	afb2002c 	sw	s2,44(sp)
    2fc4:	00c09025 	move	s2,a2
    2fc8:	00e0a825 	move	s5,a3
    2fcc:	afbf0044 	sw	ra,68(sp)
    2fd0:	afb70040 	sw	s7,64(sp)
    2fd4:	afb6003c 	sw	s6,60(sp)
    2fd8:	afb40034 	sw	s4,52(sp)
    2fdc:	afb10028 	sw	s1,40(sp)
    2fe0:	afb00024 	sw	s0,36(sp)
    2fe4:	11c00003 	beqz	t6,2ff4 <func_800E4198+0x4c>
    2fe8:	00001025 	move	v0,zero
    2fec:	10000003 	b	2ffc <func_800E4198+0x54>
    2ff0:	24020001 	li	v0,1
    2ff4:	3c010000 	lui	at,0x0
    2ff8:	ac200000 	sw	zero,0(at)
    2ffc:	ae601768 	sw	zero,5992(s3)
    3000:	02403025 	move	a2,s2
    3004:	0c000000 	jal	0 <func_800E11F0>
    3008:	afa2004c 	sw	v0,76(sp)
    300c:	8e641768 	lw	a0,5992(s3)
    3010:	00002825 	move	a1,zero
    3014:	0000a025 	move	s4,zero
    3018:	18800011 	blez	a0,3060 <func_800E4198+0xb8>
    301c:	3c0f0000 	lui	t7,0x0
    3020:	25e20000 	addiu	v0,t7,0
    3024:	0004c080 	sll	t8,a0,0x2
    3028:	03023021 	addu	a2,t8,v0
    302c:	2403fff0 	li	v1,-16
    3030:	8c590b68 	lw	t9,2920(v0)
    3034:	3c0100ff 	lui	at,0xff
    3038:	3421ffff 	ori	at,at,0xffff
    303c:	8f2a0000 	lw	t2,0(t9)
    3040:	24420004 	addiu	v0,v0,4
    3044:	01415824 	and	t3,t2,at
    3048:	256c000f 	addiu	t4,t3,15
    304c:	0046082b 	sltu	at,v0,a2
    3050:	01836824 	and	t5,t4,v1
    3054:	1420fff6 	bnez	at,3030 <func_800E4198+0x88>
    3058:	00ad2821 	addu	a1,a1,t5
    305c:	0000a025 	move	s4,zero
    3060:	188000a7 	blez	a0,3300 <func_800E4198+0x358>
    3064:	24170001 	li	s7,1
    3068:	24160003 	li	s6,3
    306c:	8e6e176c 	lw	t6,5996(s3)
    3070:	24010078 	li	at,120
    3074:	0014c080 	sll	t8,s4,0x2
    3078:	11c100a1 	beq	t6,at,3300 <func_800E4198+0x358>
    307c:	02787821 	addu	t7,s3,t8
    3080:	8df00b68 	lw	s0,2920(t7)
    3084:	12a00005 	beqz	s5,309c <func_800E4198+0xf4>
    3088:	00008825 	move	s1,zero
    308c:	52b7002d 	beql	s5,s7,3144 <func_800E4198+0x19c>
    3090:	8e030000 	lw	v1,0(s0)
    3094:	10000052 	b	31e0 <func_800E4198+0x238>
    3098:	00000000 	nop
    309c:	8e030000 	lw	v1,0(s0)
    30a0:	8e590010 	lw	t9,16(s2)
    30a4:	3c0100ff 	lui	at,0xff
    30a8:	00031100 	sll	v0,v1,0x4
    30ac:	00021782 	srl	v0,v0,0x1e
    30b0:	1722000a 	bne	t9,v0,30dc <func_800E4198+0x134>
    30b4:	3421ffff 	ori	at,at,0xffff
    30b8:	8e450000 	lw	a1,0(s2)
    30bc:	8e060004 	lw	a2,4(s0)
    30c0:	00023e00 	sll	a3,v0,0x18
    30c4:	00073e03 	sra	a3,a3,0x18
    30c8:	afb70010 	sw	s7,16(sp)
    30cc:	0c000000 	jal	0 <func_800E11F0>
    30d0:	00612024 	and	a0,v1,at
    30d4:	10000042 	b	31e0 <func_800E4198+0x238>
    30d8:	00408825 	move	s1,v0
    30dc:	8e4a0014 	lw	t2,20(s2)
    30e0:	3c0100ff 	lui	at,0xff
    30e4:	3421ffff 	ori	at,at,0xffff
    30e8:	15420009 	bne	t2,v0,3110 <func_800E4198+0x168>
    30ec:	00612024 	and	a0,v1,at
    30f0:	8e450004 	lw	a1,4(s2)
    30f4:	8e060004 	lw	a2,4(s0)
    30f8:	00023e00 	sll	a3,v0,0x18
    30fc:	00073e03 	sra	a3,a3,0x18
    3100:	0c000000 	jal	0 <func_800E11F0>
    3104:	afb70010 	sw	s7,16(sp)
    3108:	10000035 	b	31e0 <func_800E4198+0x238>
    310c:	00408825 	move	s1,v0
    3110:	16c20033 	bne	s6,v0,31e0 <func_800E4198+0x238>
    3114:	3c0100ff 	lui	at,0xff
    3118:	3421ffff 	ori	at,at,0xffff
    311c:	8e060004 	lw	a2,4(s0)
    3120:	00023e00 	sll	a3,v0,0x18
    3124:	00073e03 	sra	a3,a3,0x18
    3128:	afb70010 	sw	s7,16(sp)
    312c:	00612024 	and	a0,v1,at
    3130:	0c000000 	jal	0 <func_800E11F0>
    3134:	240500fe 	li	a1,254
    3138:	10000029 	b	31e0 <func_800E4198+0x238>
    313c:	00408825 	move	s1,v0
    3140:	8e030000 	lw	v1,0(s0)
    3144:	8e4b0010 	lw	t3,16(s2)
    3148:	3c0100ff 	lui	at,0xff
    314c:	00031100 	sll	v0,v1,0x4
    3150:	00021782 	srl	v0,v0,0x1e
    3154:	1562000a 	bne	t3,v0,3180 <func_800E4198+0x1d8>
    3158:	3421ffff 	ori	at,at,0xffff
    315c:	8e450000 	lw	a1,0(s2)
    3160:	8e060004 	lw	a2,4(s0)
    3164:	00023e00 	sll	a3,v0,0x18
    3168:	00073e03 	sra	a3,a3,0x18
    316c:	afa00010 	sw	zero,16(sp)
    3170:	0c000000 	jal	0 <func_800E11F0>
    3174:	00612024 	and	a0,v1,at
    3178:	10000019 	b	31e0 <func_800E4198+0x238>
    317c:	00408825 	move	s1,v0
    3180:	8e4c0014 	lw	t4,20(s2)
    3184:	3c0100ff 	lui	at,0xff
    3188:	3421ffff 	ori	at,at,0xffff
    318c:	15820009 	bne	t4,v0,31b4 <func_800E4198+0x20c>
    3190:	00612024 	and	a0,v1,at
    3194:	8e450004 	lw	a1,4(s2)
    3198:	8e060004 	lw	a2,4(s0)
    319c:	00023e00 	sll	a3,v0,0x18
    31a0:	00073e03 	sra	a3,a3,0x18
    31a4:	0c000000 	jal	0 <func_800E11F0>
    31a8:	afa00010 	sw	zero,16(sp)
    31ac:	1000000c 	b	31e0 <func_800E4198+0x238>
    31b0:	00408825 	move	s1,v0
    31b4:	16c2000a 	bne	s6,v0,31e0 <func_800E4198+0x238>
    31b8:	3c0100ff 	lui	at,0xff
    31bc:	3421ffff 	ori	at,at,0xffff
    31c0:	8e060004 	lw	a2,4(s0)
    31c4:	00023e00 	sll	a3,v0,0x18
    31c8:	00073e03 	sra	a3,a3,0x18
    31cc:	afa00010 	sw	zero,16(sp)
    31d0:	00612024 	and	a0,v1,at
    31d4:	0c000000 	jal	0 <func_800E11F0>
    31d8:	240500fe 	li	a1,254
    31dc:	00408825 	move	s1,v0
    31e0:	16200003 	bnez	s1,31f0 <func_800E4198+0x248>
    31e4:	00000000 	nop
    31e8:	10000041 	b	32f0 <func_800E4198+0x348>
    31ec:	8e641768 	lw	a0,5992(s3)
    31f0:	52a00006 	beqzl	s5,320c <func_800E4198+0x264>
    31f4:	8e030000 	lw	v1,0(s0)
    31f8:	52b70023 	beql	s5,s7,3288 <func_800E4198+0x2e0>
    31fc:	8e6a176c 	lw	t2,5996(s3)
    3200:	1000003b 	b	32f0 <func_800E4198+0x348>
    3204:	8e641768 	lw	a0,5992(s3)
    3208:	8e030000 	lw	v1,0(s0)
    320c:	24010001 	li	at,1
    3210:	02202825 	move	a1,s1
    3214:	00031100 	sll	v0,v1,0x4
    3218:	00021782 	srl	v0,v0,0x1e
    321c:	1441000e 	bne	v0,at,3258 <func_800E4198+0x2b0>
    3220:	00403825 	move	a3,v0
    3224:	8e6d2838 	lw	t5,10296(s3)
    3228:	3c0100ff 	lui	at,0xff
    322c:	3421ffff 	ori	at,at,0xffff
    3230:	00613024 	and	a2,v1,at
    3234:	8e040004 	lw	a0,4(s0)
    3238:	02202825 	move	a1,s1
    323c:	0c000000 	jal	0 <func_800E11F0>
    3240:	85a70002 	lh	a3,2(t5)
    3244:	920e0000 	lbu	t6,0(s0)
    3248:	ae110004 	sw	s1,4(s0)
    324c:	31d8fff3 	andi	t8,t6,0xfff3
    3250:	1000000a 	b	327c <func_800E4198+0x2d4>
    3254:	a2180000 	sb	t8,0(s0)
    3258:	3c0100ff 	lui	at,0xff
    325c:	3421ffff 	ori	at,at,0xffff
    3260:	00613024 	and	a2,v1,at
    3264:	0c000000 	jal	0 <func_800E11F0>
    3268:	8e040004 	lw	a0,4(s0)
    326c:	920f0000 	lbu	t7,0(s0)
    3270:	ae110004 	sw	s1,4(s0)
    3274:	31f9fff3 	andi	t9,t7,0xfff3
    3278:	a2190000 	sb	t9,0(s0)
    327c:	1000001c 	b	32f0 <func_800E4198+0x348>
    3280:	8e641768 	lw	a0,5992(s3)
    3284:	8e6a176c 	lw	t2,5996(s3)
    3288:	3c0100ff 	lui	at,0xff
    328c:	3421ffff 	ori	at,at,0xffff
    3290:	000a5880 	sll	t3,t2,0x2
    3294:	016a5821 	addu	t3,t3,t2
    3298:	000b5880 	sll	t3,t3,0x2
    329c:	026b1021 	addu	v0,s3,t3
    32a0:	ac500d6c 	sw	s0,3436(v0)
    32a4:	ac510d70 	sw	s1,3440(v0)
    32a8:	8e6c176c 	lw	t4,5996(s3)
    32ac:	ac400d78 	sw	zero,3448(v0)
    32b0:	24420d68 	addiu	v0,v0,3432
    32b4:	000c6e00 	sll	t5,t4,0x18
    32b8:	01a17025 	or	t6,t5,at
    32bc:	ac4e000c 	sw	t6,12(v0)
    32c0:	8e030000 	lw	v1,0(s0)
    32c4:	8e180004 	lw	t8,4(s0)
    32c8:	00617824 	and	t7,v1,at
    32cc:	00035100 	sll	t2,v1,0x4
    32d0:	000a5f82 	srl	t3,t2,0x1e
    32d4:	030fc821 	addu	t9,t8,t7
    32d8:	032b6021 	addu	t4,t9,t3
    32dc:	ac4c0000 	sw	t4,0(v0)
    32e0:	8e6d176c 	lw	t5,5996(s3)
    32e4:	8e641768 	lw	a0,5992(s3)
    32e8:	25ae0001 	addiu	t6,t5,1
    32ec:	ae6e176c 	sw	t6,5996(s3)
    32f0:	26940001 	addiu	s4,s4,1
    32f4:	0284082a 	slt	at,s4,a0
    32f8:	5420ff5d 	bnezl	at,3070 <func_800E4198+0xc8>
    32fc:	8e6e176c 	lw	t6,5996(s3)
    3300:	8e69176c 	lw	t1,5996(s3)
    3304:	ae601768 	sw	zero,5992(s3)
    3308:	8fb8004c 	lw	t8,76(sp)
    330c:	5120001a 	beqzl	t1,3378 <func_800E4198+0x3d0>
    3310:	8fbf0044 	lw	ra,68(sp)
    3314:	17000017 	bnez	t8,3374 <func_800E4198+0x3cc>
    3318:	00097880 	sll	t7,t1,0x2
    331c:	01e97821 	addu	t7,t7,t1
    3320:	000f7880 	sll	t7,t7,0x2
    3324:	026f1021 	addu	v0,s3,t7
    3328:	8c500d58 	lw	s0,3416(v0)
    332c:	3c0100ff 	lui	at,0xff
    3330:	3421ffff 	ori	at,at,0xffff
    3334:	8e030000 	lw	v1,0(s0)
    3338:	8c450d5c 	lw	a1,3420(v0)
    333c:	3c0a0000 	lui	t2,0x0
    3340:	00613024 	and	a2,v1,at
    3344:	00064302 	srl	t0,a2,0xc
    3348:	8e040004 	lw	a0,4(s0)
    334c:	25080001 	addiu	t0,t0,1
    3350:	254a1e78 	addiu	t2,t2,7800
    3354:	afaa0014 	sw	t2,20(sp)
    3358:	afa80010 	sw	t0,16(sp)
    335c:	8c590d60 	lw	t9,3424(v0)
    3360:	00033900 	sll	a3,v1,0x4
    3364:	24420d54 	addiu	v0,v0,3412
    3368:	00073f82 	srl	a3,a3,0x1e
    336c:	0c000000 	jal	0 <func_800E11F0>
    3370:	afb90018 	sw	t9,24(sp)
    3374:	8fbf0044 	lw	ra,68(sp)
    3378:	8fb00024 	lw	s0,36(sp)
    337c:	8fb10028 	lw	s1,40(sp)
    3380:	8fb2002c 	lw	s2,44(sp)
    3384:	8fb30030 	lw	s3,48(sp)
    3388:	8fb40034 	lw	s4,52(sp)
    338c:	8fb50038 	lw	s5,56(sp)
    3390:	8fb6003c 	lw	s6,60(sp)
    3394:	8fb70040 	lw	s7,64(sp)
    3398:	03e00008 	jr	ra
    339c:	27bd0068 	addiu	sp,sp,104

000033a0 <func_800E4590>:
    33a0:	3c070000 	lui	a3,0x0
    33a4:	24e70000 	addiu	a3,a3,0
    33a8:	8cee176c 	lw	t6,5996(a3)
    33ac:	27bdffa8 	addiu	sp,sp,-88
    33b0:	afbf002c 	sw	ra,44(sp)
    33b4:	19c00061 	blez	t6,353c <func_800E4590+0x19c>
    33b8:	afb00028 	sw	s0,40(sp)
    33bc:	1080000b 	beqz	a0,33ec <func_800E4590+0x4c>
    33c0:	27a5004c 	addiu	a1,sp,76
    33c4:	3c040000 	lui	a0,0x0
    33c8:	24841e78 	addiu	a0,a0,7800
    33cc:	27a5004c 	addiu	a1,sp,76
    33d0:	0c000000 	jal	0 <func_800E11F0>
    33d4:	00003025 	move	a2,zero
    33d8:	3c070000 	lui	a3,0x0
    33dc:	24e70000 	addiu	a3,a3,0
    33e0:	ace0176c 	sw	zero,5996(a3)
    33e4:	10000056 	b	3540 <func_800E4590+0x1a0>
    33e8:	00001025 	move	v0,zero
    33ec:	3c040000 	lui	a0,0x0
    33f0:	24841e78 	addiu	a0,a0,7800
    33f4:	0c000000 	jal	0 <func_800E11F0>
    33f8:	00003025 	move	a2,zero
    33fc:	3c070000 	lui	a3,0x0
    3400:	2401ffff 	li	at,-1
    3404:	14410003 	bne	v0,at,3414 <func_800E4590+0x74>
    3408:	24e70000 	addiu	a3,a3,0
    340c:	1000004c 	b	3540 <func_800E4590+0x1a0>
    3410:	00001025 	move	v0,zero
    3414:	8fa4004c 	lw	a0,76(sp)
    3418:	24090001 	li	t1,1
    341c:	240b0014 	li	t3,20
    3420:	00042602 	srl	a0,a0,0x18
    3424:	00047880 	sll	t7,a0,0x2
    3428:	01e47821 	addu	t7,t7,a0
    342c:	000f7880 	sll	t7,t7,0x2
    3430:	00ef1021 	addu	v0,a3,t7
    3434:	8c580d78 	lw	t8,3448(v0)
    3438:	24460d68 	addiu	a2,v0,3432
    343c:	00c01825 	move	v1,a2
    3440:	17000014 	bnez	t8,3494 <func_800E4590+0xf4>
    3444:	afa4004c 	sw	a0,76(sp)
    3448:	8cc20004 	lw	v0,4(a2)
    344c:	3c0100ff 	lui	at,0xff
    3450:	3421ffff 	ori	at,at,0xffff
    3454:	8c440000 	lw	a0,0(v0)
    3458:	8c590004 	lw	t9,4(v0)
    345c:	8cd80000 	lw	t8,0(a2)
    3460:	00816024 	and	t4,a0,at
    3464:	00047100 	sll	t6,a0,0x4
    3468:	000e7f82 	srl	t7,t6,0x1e
    346c:	032c6821 	addu	t5,t9,t4
    3470:	01af2821 	addu	a1,t5,t7
    3474:	54b80007 	bnel	a1,t8,3494 <func_800E4590+0xf4>
    3478:	ac690010 	sw	t1,16(v1)
    347c:	904c0000 	lbu	t4,0(v0)
    3480:	8cd90008 	lw	t9,8(a2)
    3484:	318efff3 	andi	t6,t4,0xfff3
    3488:	a04e0000 	sb	t6,0(v0)
    348c:	ac590004 	sw	t9,4(v0)
    3490:	ac690010 	sw	t1,16(v1)
    3494:	24090001 	li	t1,1
    3498:	8ce2176c 	lw	v0,5996(a3)
    349c:	18400027 	blez	v0,353c <func_800E4590+0x19c>
    34a0:	2458ffff 	addiu	t8,v0,-1
    34a4:	004b0019 	multu	v0,t3
    34a8:	00006812 	mflo	t5
    34ac:	00ed1821 	addu	v1,a3,t5
    34b0:	8c6f0d64 	lw	t7,3428(v1)
    34b4:	24630d54 	addiu	v1,v1,3412
    34b8:	552f0004 	bnel	t1,t7,34cc <func_800E4590+0x12c>
    34bc:	8c620004 	lw	v0,4(v1)
    34c0:	1000fff5 	b	3498 <func_800E4590+0xf8>
    34c4:	acf8176c 	sw	t8,5996(a3)
    34c8:	8c620004 	lw	v0,4(v1)
    34cc:	3c0100ff 	lui	at,0xff
    34d0:	3421ffff 	ori	at,at,0xffff
    34d4:	8c440000 	lw	a0,0(v0)
    34d8:	8c500004 	lw	s0,4(v0)
    34dc:	8c6c0000 	lw	t4,0(v1)
    34e0:	00813024 	and	a2,a0,at
    34e4:	00044100 	sll	t0,a0,0x4
    34e8:	00084782 	srl	t0,t0,0x1e
    34ec:	0206c821 	addu	t9,s0,a2
    34f0:	00065302 	srl	t2,a2,0xc
    34f4:	03282821 	addu	a1,t9,t0
    34f8:	10ac0006 	beq	a1,t4,3514 <func_800E4590+0x174>
    34fc:	254a0001 	addiu	t2,t2,1
    3500:	ac690010 	sw	t1,16(v1)
    3504:	8cee176c 	lw	t6,5996(a3)
    3508:	25cdffff 	addiu	t5,t6,-1
    350c:	1000ffe2 	b	3498 <func_800E4590+0xf8>
    3510:	aced176c 	sw	t5,5996(a3)
    3514:	8c650008 	lw	a1,8(v1)
    3518:	3c0f0000 	lui	t7,0x0
    351c:	25ef1e78 	addiu	t7,t7,7800
    3520:	afaf0014 	sw	t7,20(sp)
    3524:	afaa0010 	sw	t2,16(sp)
    3528:	8c78000c 	lw	t8,12(v1)
    352c:	02002025 	move	a0,s0
    3530:	01003825 	move	a3,t0
    3534:	0c000000 	jal	0 <func_800E11F0>
    3538:	afb80018 	sw	t8,24(sp)
    353c:	24020001 	li	v0,1
    3540:	8fbf002c 	lw	ra,44(sp)
    3544:	8fb00028 	lw	s0,40(sp)
    3548:	27bd0058 	addiu	sp,sp,88
    354c:	03e00008 	jr	ra
    3550:	00000000 	nop

00003554 <func_800E4744>:
    3554:	18a0000a 	blez	a1,3580 <func_800E4744+0x2c>
    3558:	00001025 	move	v0,zero
    355c:	8c830004 	lw	v1,4(a0)
    3560:	00c03825 	move	a3,a2
    3564:	8cee0000 	lw	t6,0(a3)
    3568:	8dcf0004 	lw	t7,4(t6)
    356c:	106f0004 	beq	v1,t7,3580 <func_800E4744+0x2c>
    3570:	00000000 	nop
    3574:	24420001 	addiu	v0,v0,1
    3578:	1445fffa 	bne	v0,a1,3564 <func_800E4744+0x10>
    357c:	24e70004 	addiu	a3,a3,4
    3580:	14450004 	bne	v0,a1,3594 <func_800E4744+0x40>
    3584:	0005c080 	sll	t8,a1,0x2
    3588:	00d8c821 	addu	t9,a2,t8
    358c:	af240000 	sw	a0,0(t9)
    3590:	24a50001 	addiu	a1,a1,1
    3594:	03e00008 	jr	ra
    3598:	00a01025 	move	v0,a1

0000359c <func_800E478C>:
    359c:	27bdffc8 	addiu	sp,sp,-56
    35a0:	3c0e0000 	lui	t6,0x0
    35a4:	8dce2844 	lw	t6,10308(t6)
    35a8:	00047880 	sll	t7,a0,0x2
    35ac:	01e47821 	addu	t7,t7,a0
    35b0:	000f7880 	sll	t7,t7,0x2
    35b4:	afbf0034 	sw	ra,52(sp)
    35b8:	afb60030 	sw	s6,48(sp)
    35bc:	afb5002c 	sw	s5,44(sp)
    35c0:	afb40028 	sw	s4,40(sp)
    35c4:	afb30024 	sw	s3,36(sp)
    35c8:	afb20020 	sw	s2,32(sp)
    35cc:	afb1001c 	sw	s1,28(sp)
    35d0:	afb00018 	sw	s0,24(sp)
    35d4:	01cf1021 	addu	v0,t6,t7
    35d8:	90500001 	lbu	s0,1(v0)
    35dc:	00a09825 	move	s3,a1
    35e0:	0080a025 	move	s4,a0
    35e4:	00008825 	move	s1,zero
    35e8:	90560000 	lbu	s6,0(v0)
    35ec:	1a00000e 	blez	s0,3628 <func_800E478C+0x8c>
    35f0:	00009025 	move	s2,zero
    35f4:	02802025 	move	a0,s4
    35f8:	0c000000 	jal	0 <func_800E11F0>
    35fc:	02402825 	move	a1,s2
    3600:	10400005 	beqz	v0,3618 <func_800E478C+0x7c>
    3604:	02202825 	move	a1,s1
    3608:	8c440004 	lw	a0,4(v0)
    360c:	0c000000 	jal	0 <func_800E11F0>
    3610:	02603025 	move	a2,s3
    3614:	00408825 	move	s1,v0
    3618:	26520001 	addiu	s2,s2,1
    361c:	5650fff6 	bnel	s2,s0,35f8 <func_800E478C+0x5c>
    3620:	02802025 	move	a0,s4
    3624:	00009025 	move	s2,zero
    3628:	1ac0001e 	blez	s6,36a4 <func_800E478C+0x108>
    362c:	2415007f 	li	s5,127
    3630:	02802025 	move	a0,s4
    3634:	0c000000 	jal	0 <func_800E11F0>
    3638:	02402825 	move	a1,s2
    363c:	10400016 	beqz	v0,3698 <func_800E478C+0xfc>
    3640:	00408025 	move	s0,v0
    3644:	90580001 	lbu	t8,1(v0)
    3648:	02202825 	move	a1,s1
    364c:	02603025 	move	a2,s3
    3650:	53000005 	beqzl	t8,3668 <func_800E478C+0xcc>
    3654:	92190002 	lbu	t9,2(s0)
    3658:	0c000000 	jal	0 <func_800E11F0>
    365c:	8c440008 	lw	a0,8(v0)
    3660:	00408825 	move	s1,v0
    3664:	92190002 	lbu	t9,2(s0)
    3668:	02202825 	move	a1,s1
    366c:	02603025 	move	a2,s3
    3670:	52b90005 	beql	s5,t9,3688 <func_800E478C+0xec>
    3674:	8e040010 	lw	a0,16(s0)
    3678:	0c000000 	jal	0 <func_800E11F0>
    367c:	8e040018 	lw	a0,24(s0)
    3680:	00408825 	move	s1,v0
    3684:	8e040010 	lw	a0,16(s0)
    3688:	02202825 	move	a1,s1
    368c:	0c000000 	jal	0 <func_800E11F0>
    3690:	02603025 	move	a2,s3
    3694:	00408825 	move	s1,v0
    3698:	26520001 	addiu	s2,s2,1
    369c:	5656ffe5 	bnel	s2,s6,3634 <func_800E478C+0x98>
    36a0:	02802025 	move	a0,s4
    36a4:	8fbf0034 	lw	ra,52(sp)
    36a8:	02201025 	move	v0,s1
    36ac:	8fb1001c 	lw	s1,28(sp)
    36b0:	8fb00018 	lw	s0,24(sp)
    36b4:	8fb20020 	lw	s2,32(sp)
    36b8:	8fb30024 	lw	s3,36(sp)
    36bc:	8fb40028 	lw	s4,40(sp)
    36c0:	8fb5002c 	lw	s5,44(sp)
    36c4:	8fb60030 	lw	s6,48(sp)
    36c8:	03e00008 	jr	ra
    36cc:	27bd0038 	addiu	sp,sp,56

000036d0 <func_800E48C0>:
    36d0:	8c820000 	lw	v0,0(a0)
    36d4:	3c0100ff 	lui	at,0xff
    36d8:	3421ffff 	ori	at,at,0xffff
    36dc:	8c430000 	lw	v1,0(v0)
    36e0:	00617024 	and	t6,v1,at
    36e4:	11c0000e 	beqz	t6,3720 <func_800E48C0+0x50>
    36e8:	0003c180 	sll	t8,v1,0x6
    36ec:	0701000c 	bgez	t8,3720 <func_800E48C0+0x50>
    36f0:	0003c900 	sll	t9,v1,0x4
    36f4:	00194782 	srl	t0,t9,0x1e
    36f8:	11000009 	beqz	t0,3720 <func_800E48C0+0x50>
    36fc:	3c030000 	lui	v1,0x0
    3700:	24630000 	addiu	v1,v1,0
    3704:	8c691768 	lw	t1,5992(v1)
    3708:	00095080 	sll	t2,t1,0x2
    370c:	006a5821 	addu	t3,v1,t2
    3710:	ad620b68 	sw	v0,2920(t3)
    3714:	8c6c1768 	lw	t4,5992(v1)
    3718:	258d0001 	addiu	t5,t4,1
    371c:	ac6d1768 	sw	t5,5992(v1)
    3720:	03e00008 	jr	ra
    3724:	00000000 	nop

00003728 <func_800E4918>:
    3728:	27bdff88 	addiu	sp,sp,-120
    372c:	afb40034 	sw	s4,52(sp)
    3730:	3c140000 	lui	s4,0x0
    3734:	26940000 	addiu	s4,s4,0
    3738:	8e8e176c 	lw	t6,5996(s4)
    373c:	afb50038 	sw	s5,56(sp)
    3740:	afb30030 	sw	s3,48(sp)
    3744:	afb10028 	sw	s1,40(sp)
    3748:	00808825 	move	s1,a0
    374c:	00c09825 	move	s3,a2
    3750:	00a0a825 	move	s5,a1
    3754:	afbf003c 	sw	ra,60(sp)
    3758:	afb2002c 	sw	s2,44(sp)
    375c:	afb00024 	sw	s0,36(sp)
    3760:	11c00003 	beqz	t6,3770 <func_800E4918+0x48>
    3764:	afa00044 	sw	zero,68(sp)
    3768:	240f0001 	li	t7,1
    376c:	afaf0044 	sw	t7,68(sp)
    3770:	8e982844 	lw	t8,10308(s4)
    3774:	0011c880 	sll	t9,s1,0x2
    3778:	0331c821 	addu	t9,t9,s1
    377c:	0019c880 	sll	t9,t9,0x2
    3780:	ae801768 	sw	zero,5992(s4)
    3784:	03191021 	addu	v0,t8,t9
    3788:	904a0001 	lbu	t2,1(v0)
    378c:	00009025 	move	s2,zero
    3790:	afaa0074 	sw	t2,116(sp)
    3794:	90430000 	lbu	v1,0(v0)
    3798:	944b0004 	lhu	t3,4(v0)
    379c:	18600019 	blez	v1,3804 <func_800E4918+0xdc>
    37a0:	afab006c 	sw	t3,108(sp)
    37a4:	afa30070 	sw	v1,112(sp)
    37a8:	02202025 	move	a0,s1
    37ac:	0c000000 	jal	0 <func_800E11F0>
    37b0:	02402825 	move	a1,s2
    37b4:	1040000e 	beqz	v0,37f0 <func_800E4918+0xc8>
    37b8:	00408025 	move	s0,v0
    37bc:	904c0001 	lbu	t4,1(v0)
    37c0:	51800004 	beqzl	t4,37d4 <func_800E4918+0xac>
    37c4:	920d0002 	lbu	t5,2(s0)
    37c8:	0c000000 	jal	0 <func_800E11F0>
    37cc:	24440008 	addiu	a0,v0,8
    37d0:	920d0002 	lbu	t5,2(s0)
    37d4:	2401007f 	li	at,127
    37d8:	11a10003 	beq	t5,at,37e8 <func_800E4918+0xc0>
    37dc:	00000000 	nop
    37e0:	0c000000 	jal	0 <func_800E11F0>
    37e4:	26040018 	addiu	a0,s0,24
    37e8:	0c000000 	jal	0 <func_800E11F0>
    37ec:	26040010 	addiu	a0,s0,16
    37f0:	8fae0070 	lw	t6,112(sp)
    37f4:	26520001 	addiu	s2,s2,1
    37f8:	564effec 	bnel	s2,t6,37ac <func_800E4918+0x84>
    37fc:	02202025 	move	a0,s1
    3800:	00009025 	move	s2,zero
    3804:	8faf0074 	lw	t7,116(sp)
    3808:	19e0000c 	blez	t7,383c <func_800E4918+0x114>
    380c:	02202025 	move	a0,s1
    3810:	0c000000 	jal	0 <func_800E11F0>
    3814:	02402825 	move	a1,s2
    3818:	50400004 	beqzl	v0,382c <func_800E4918+0x104>
    381c:	8fb80074 	lw	t8,116(sp)
    3820:	0c000000 	jal	0 <func_800E11F0>
    3824:	24440004 	addiu	a0,v0,4
    3828:	8fb80074 	lw	t8,116(sp)
    382c:	26520001 	addiu	s2,s2,1
    3830:	5658fff7 	bnel	s2,t8,3810 <func_800E4918+0xe8>
    3834:	02202025 	move	a0,s1
    3838:	00009025 	move	s2,zero
    383c:	8fb9006c 	lw	t9,108(sp)
    3840:	1b20000b 	blez	t9,3870 <func_800E4918+0x148>
    3844:	02202025 	move	a0,s1
    3848:	0c000000 	jal	0 <func_800E11F0>
    384c:	02402825 	move	a1,s2
    3850:	10400003 	beqz	v0,3860 <func_800E4918+0x138>
    3854:	00402025 	move	a0,v0
    3858:	0c000000 	jal	0 <func_800E11F0>
    385c:	00000000 	nop
    3860:	8faa006c 	lw	t2,108(sp)
    3864:	26520001 	addiu	s2,s2,1
    3868:	564afff7 	bnel	s2,t2,3848 <func_800E4918+0x120>
    386c:	02202025 	move	a0,s1
    3870:	8e851768 	lw	a1,5992(s4)
    3874:	00001825 	move	v1,zero
    3878:	00009025 	move	s2,zero
    387c:	50a000c1 	beqzl	a1,3b84 <func_800E4918+0x45c>
    3880:	8fbf003c 	lw	ra,60(sp)
    3884:	18a00012 	blez	a1,38d0 <func_800E4918+0x1a8>
    3888:	8e88176c 	lw	t0,5996(s4)
    388c:	3c0b0000 	lui	t3,0x0
    3890:	25620000 	addiu	v0,t3,0
    3894:	00056080 	sll	t4,a1,0x2
    3898:	01823021 	addu	a2,t4,v0
    389c:	2404fff0 	li	a0,-16
    38a0:	8c4d0b68 	lw	t5,2920(v0)
    38a4:	3c0100ff 	lui	at,0xff
    38a8:	3421ffff 	ori	at,at,0xffff
    38ac:	8dae0000 	lw	t6,0(t5)
    38b0:	24420004 	addiu	v0,v0,4
    38b4:	01c17824 	and	t7,t6,at
    38b8:	25f8000f 	addiu	t8,t7,15
    38bc:	0046082b 	sltu	at,v0,a2
    38c0:	0304c824 	and	t9,t8,a0
    38c4:	1420fff6 	bnez	at,38a0 <func_800E4918+0x178>
    38c8:	00791821 	addu	v1,v1,t9
    38cc:	00009025 	move	s2,zero
    38d0:	18a00090 	blez	a1,3b14 <func_800E4918+0x3ec>
    38d4:	8fb10054 	lw	s1,84(sp)
    38d8:	24010078 	li	at,120
    38dc:	1101008d 	beq	t0,at,3b14 <func_800E4918+0x3ec>
    38e0:	00125080 	sll	t2,s2,0x2
    38e4:	028a6021 	addu	t4,s4,t2
    38e8:	8d900b68 	lw	s0,2920(t4)
    38ec:	8e030000 	lw	v1,0(s0)
    38f0:	00031100 	sll	v0,v1,0x4
    38f4:	00021782 	srl	v0,v0,0x1e
    38f8:	50400082 	beqzl	v0,3b04 <func_800E4918+0x3dc>
    38fc:	26520001 	addiu	s2,s2,1
    3900:	12a00005 	beqz	s5,3918 <func_800E4918+0x1f0>
    3904:	24010001 	li	at,1
    3908:	52a10020 	beql	s5,at,398c <func_800E4918+0x264>
    390c:	8e780010 	lw	t8,16(s3)
    3910:	10000036 	b	39ec <func_800E4918+0x2c4>
    3914:	00000000 	nop
    3918:	8e6b0010 	lw	t3,16(s3)
    391c:	3c0100ff 	lui	at,0xff
    3920:	3421ffff 	ori	at,at,0xffff
    3924:	1562000a 	bne	t3,v0,3950 <func_800E4918+0x228>
    3928:	00612024 	and	a0,v1,at
    392c:	8e650000 	lw	a1,0(s3)
    3930:	8e060004 	lw	a2,4(s0)
    3934:	00023e00 	sll	a3,v0,0x18
    3938:	240d0001 	li	t5,1
    393c:	afad0010 	sw	t5,16(sp)
    3940:	0c000000 	jal	0 <func_800E11F0>
    3944:	00073e03 	sra	a3,a3,0x18
    3948:	10000028 	b	39ec <func_800E4918+0x2c4>
    394c:	00408825 	move	s1,v0
    3950:	8e6e0014 	lw	t6,20(s3)
    3954:	3c0100ff 	lui	at,0xff
    3958:	3421ffff 	ori	at,at,0xffff
    395c:	15c20023 	bne	t6,v0,39ec <func_800E4918+0x2c4>
    3960:	00612024 	and	a0,v1,at
    3964:	8e650004 	lw	a1,4(s3)
    3968:	8e060004 	lw	a2,4(s0)
    396c:	00023e00 	sll	a3,v0,0x18
    3970:	240f0001 	li	t7,1
    3974:	afaf0010 	sw	t7,16(sp)
    3978:	0c000000 	jal	0 <func_800E11F0>
    397c:	00073e03 	sra	a3,a3,0x18
    3980:	1000001a 	b	39ec <func_800E4918+0x2c4>
    3984:	00408825 	move	s1,v0
    3988:	8e780010 	lw	t8,16(s3)
    398c:	3c0100ff 	lui	at,0xff
    3990:	3421ffff 	ori	at,at,0xffff
    3994:	17020009 	bne	t8,v0,39bc <func_800E4918+0x294>
    3998:	00612024 	and	a0,v1,at
    399c:	8e650000 	lw	a1,0(s3)
    39a0:	8e060004 	lw	a2,4(s0)
    39a4:	00023e00 	sll	a3,v0,0x18
    39a8:	00073e03 	sra	a3,a3,0x18
    39ac:	0c000000 	jal	0 <func_800E11F0>
    39b0:	afa00010 	sw	zero,16(sp)
    39b4:	1000000d 	b	39ec <func_800E4918+0x2c4>
    39b8:	00408825 	move	s1,v0
    39bc:	8e790014 	lw	t9,20(s3)
    39c0:	3c0100ff 	lui	at,0xff
    39c4:	3421ffff 	ori	at,at,0xffff
    39c8:	17220008 	bne	t9,v0,39ec <func_800E4918+0x2c4>
    39cc:	00612024 	and	a0,v1,at
    39d0:	8e650004 	lw	a1,4(s3)
    39d4:	8e060004 	lw	a2,4(s0)
    39d8:	00023e00 	sll	a3,v0,0x18
    39dc:	00073e03 	sra	a3,a3,0x18
    39e0:	0c000000 	jal	0 <func_800E11F0>
    39e4:	afa00010 	sw	zero,16(sp)
    39e8:	00408825 	move	s1,v0
    39ec:	16200004 	bnez	s1,3a00 <func_800E4918+0x2d8>
    39f0:	00000000 	nop
    39f4:	8e88176c 	lw	t0,5996(s4)
    39f8:	10000041 	b	3b00 <func_800E4918+0x3d8>
    39fc:	8e851768 	lw	a1,5992(s4)
    3a00:	12a00005 	beqz	s5,3a18 <func_800E4918+0x2f0>
    3a04:	24010001 	li	at,1
    3a08:	12a10023 	beq	s5,at,3a98 <func_800E4918+0x370>
    3a0c:	8e88176c 	lw	t0,5996(s4)
    3a10:	1000003b 	b	3b00 <func_800E4918+0x3d8>
    3a14:	8e851768 	lw	a1,5992(s4)
    3a18:	8e030000 	lw	v1,0(s0)
    3a1c:	24010001 	li	at,1
    3a20:	02202825 	move	a1,s1
    3a24:	00031100 	sll	v0,v1,0x4
    3a28:	00021782 	srl	v0,v0,0x1e
    3a2c:	1441000e 	bne	v0,at,3a68 <func_800E4918+0x340>
    3a30:	00403825 	move	a3,v0
    3a34:	8e8a2838 	lw	t2,10296(s4)
    3a38:	3c0100ff 	lui	at,0xff
    3a3c:	3421ffff 	ori	at,at,0xffff
    3a40:	00613024 	and	a2,v1,at
    3a44:	8e040004 	lw	a0,4(s0)
    3a48:	02202825 	move	a1,s1
    3a4c:	0c000000 	jal	0 <func_800E11F0>
    3a50:	85470002 	lh	a3,2(t2)
    3a54:	920c0000 	lbu	t4,0(s0)
    3a58:	ae110004 	sw	s1,4(s0)
    3a5c:	318bfff3 	andi	t3,t4,0xfff3
    3a60:	1000000a 	b	3a8c <func_800E4918+0x364>
    3a64:	a20b0000 	sb	t3,0(s0)
    3a68:	3c0100ff 	lui	at,0xff
    3a6c:	3421ffff 	ori	at,at,0xffff
    3a70:	00613024 	and	a2,v1,at
    3a74:	0c000000 	jal	0 <func_800E11F0>
    3a78:	8e040004 	lw	a0,4(s0)
    3a7c:	920d0000 	lbu	t5,0(s0)
    3a80:	ae110004 	sw	s1,4(s0)
    3a84:	31aefff3 	andi	t6,t5,0xfff3
    3a88:	a20e0000 	sb	t6,0(s0)
    3a8c:	8e88176c 	lw	t0,5996(s4)
    3a90:	1000001b 	b	3b00 <func_800E4918+0x3d8>
    3a94:	8e851768 	lw	a1,5992(s4)
    3a98:	00087880 	sll	t7,t0,0x2
    3a9c:	01e87821 	addu	t7,t7,t0
    3aa0:	000f7880 	sll	t7,t7,0x2
    3aa4:	028f1021 	addu	v0,s4,t7
    3aa8:	ac500d6c 	sw	s0,3436(v0)
    3aac:	ac510d70 	sw	s1,3440(v0)
    3ab0:	8e98176c 	lw	t8,5996(s4)
    3ab4:	3c0100ff 	lui	at,0xff
    3ab8:	3421ffff 	ori	at,at,0xffff
    3abc:	0018ce00 	sll	t9,t8,0x18
    3ac0:	03215025 	or	t2,t9,at
    3ac4:	ac4a0d74 	sw	t2,3444(v0)
    3ac8:	ac400d78 	sw	zero,3448(v0)
    3acc:	8e030000 	lw	v1,0(s0)
    3ad0:	8e0c0004 	lw	t4,4(s0)
    3ad4:	24420d68 	addiu	v0,v0,3432
    3ad8:	00615824 	and	t3,v1,at
    3adc:	00037100 	sll	t6,v1,0x4
    3ae0:	000e7f82 	srl	t7,t6,0x1e
    3ae4:	018b6821 	addu	t5,t4,t3
    3ae8:	01afc021 	addu	t8,t5,t7
    3aec:	ac580000 	sw	t8,0(v0)
    3af0:	8e99176c 	lw	t9,5996(s4)
    3af4:	8e851768 	lw	a1,5992(s4)
    3af8:	27280001 	addiu	t0,t9,1
    3afc:	ae88176c 	sw	t0,5996(s4)
    3b00:	26520001 	addiu	s2,s2,1
    3b04:	0245082a 	slt	at,s2,a1
    3b08:	5420ff74 	bnezl	at,38dc <func_800E4918+0x1b4>
    3b0c:	24010078 	li	at,120
    3b10:	afb10054 	sw	s1,84(sp)
    3b14:	1100001a 	beqz	t0,3b80 <func_800E4918+0x458>
    3b18:	ae801768 	sw	zero,5992(s4)
    3b1c:	8fac0044 	lw	t4,68(sp)
    3b20:	00085880 	sll	t3,t0,0x2
    3b24:	01685821 	addu	t3,t3,t0
    3b28:	15800015 	bnez	t4,3b80 <func_800E4918+0x458>
    3b2c:	000b5880 	sll	t3,t3,0x2
    3b30:	028b1021 	addu	v0,s4,t3
    3b34:	8c500d58 	lw	s0,3416(v0)
    3b38:	3c0100ff 	lui	at,0xff
    3b3c:	3421ffff 	ori	at,at,0xffff
    3b40:	8e030000 	lw	v1,0(s0)
    3b44:	8c450d5c 	lw	a1,3420(v0)
    3b48:	3c0e0000 	lui	t6,0x0
    3b4c:	00613024 	and	a2,v1,at
    3b50:	00064b02 	srl	t1,a2,0xc
    3b54:	8e040004 	lw	a0,4(s0)
    3b58:	25290001 	addiu	t1,t1,1
    3b5c:	25ce1e78 	addiu	t6,t6,7800
    3b60:	afae0014 	sw	t6,20(sp)
    3b64:	afa90010 	sw	t1,16(sp)
    3b68:	8c4d0d60 	lw	t5,3424(v0)
    3b6c:	00033900 	sll	a3,v1,0x4
    3b70:	24420d54 	addiu	v0,v0,3412
    3b74:	00073f82 	srl	a3,a3,0x1e
    3b78:	0c000000 	jal	0 <func_800E11F0>
    3b7c:	afad0018 	sw	t5,24(sp)
    3b80:	8fbf003c 	lw	ra,60(sp)
    3b84:	8fb00024 	lw	s0,36(sp)
    3b88:	8fb10028 	lw	s1,40(sp)
    3b8c:	8fb2002c 	lw	s2,44(sp)
    3b90:	8fb30030 	lw	s3,48(sp)
    3b94:	8fb40034 	lw	s4,52(sp)
    3b98:	8fb50038 	lw	s5,56(sp)
    3b9c:	03e00008 	jr	ra
    3ba0:	27bd0078 	addiu	sp,sp,120

00003ba4 <func_800E4D94>:
    3ba4:	27bdff88 	addiu	sp,sp,-120
    3ba8:	afbf003c 	sw	ra,60(sp)
    3bac:	afbe0038 	sw	s8,56(sp)
    3bb0:	afb70034 	sw	s7,52(sp)
    3bb4:	afb60030 	sw	s6,48(sp)
    3bb8:	afb5002c 	sw	s5,44(sp)
    3bbc:	afb40028 	sw	s4,40(sp)
    3bc0:	afb30024 	sw	s3,36(sp)
    3bc4:	afb20020 	sw	s2,32(sp)
    3bc8:	afb1001c 	sw	s1,28(sp)
    3bcc:	afb00018 	sw	s0,24(sp)
    3bd0:	0c000000 	jal	0 <func_800E11F0>
    3bd4:	24040002 	li	a0,2
    3bd8:	3c150000 	lui	s5,0x0
    3bdc:	26b50000 	addiu	s5,s5,0
    3be0:	8ea32d5c 	lw	v1,11612(s5)
    3be4:	00409825 	move	s3,v0
    3be8:	00008825 	move	s1,zero
    3bec:	18600031 	blez	v1,3cb4 <func_800E4D94+0x110>
    3bf0:	3c100000 	lui	s0,0x0
    3bf4:	26100000 	addiu	s0,s0,0
    3bf8:	27be004c 	addiu	s8,sp,76
    3bfc:	24170014 	li	s7,20
    3c00:	24160001 	li	s6,1
    3c04:	241400ff 	li	s4,255
    3c08:	860e2d68 	lh	t6,11624(s0)
    3c0c:	02c02025 	move	a0,s6
    3c10:	56ce0025 	bnel	s6,t6,3ca8 <func_800E4D94+0x104>
    3c14:	26310001 	addiu	s1,s1,1
    3c18:	0c000000 	jal	0 <func_800E11F0>
    3c1c:	86052d6a 	lh	a1,11626(s0)
    3c20:	00570019 	multu	v0,s7
    3c24:	8eaf2844 	lw	t7,10308(s5)
    3c28:	00409025 	move	s2,v0
    3c2c:	24040002 	li	a0,2
    3c30:	0000c012 	mflo	t8
    3c34:	01f81821 	addu	v1,t7,t8
    3c38:	90790002 	lbu	t9,2(v1)
    3c3c:	afb9004c 	sw	t9,76(sp)
    3c40:	90680003 	lbu	t0,3(v1)
    3c44:	13340008 	beq	t9,s4,3c68 <func_800E4D94+0xc4>
    3c48:	afa80050 	sw	t0,80(sp)
    3c4c:	0c000000 	jal	0 <func_800E11F0>
    3c50:	03202825 	move	a1,t9
    3c54:	00025100 	sll	t2,v0,0x4
    3c58:	afa2004c 	sw	v0,76(sp)
    3c5c:	026a5821 	addu	t3,s3,t2
    3c60:	816c0018 	lb	t4,24(t3)
    3c64:	afac005c 	sw	t4,92(sp)
    3c68:	8fa50050 	lw	a1,80(sp)
    3c6c:	50b40009 	beql	a1,s4,3c94 <func_800E4D94+0xf0>
    3c70:	02402025 	move	a0,s2
    3c74:	0c000000 	jal	0 <func_800E11F0>
    3c78:	24040002 	li	a0,2
    3c7c:	00026900 	sll	t5,v0,0x4
    3c80:	afa20050 	sw	v0,80(sp)
    3c84:	026d7021 	addu	t6,s3,t5
    3c88:	81cf0018 	lb	t7,24(t6)
    3c8c:	afaf0060 	sw	t7,96(sp)
    3c90:	02402025 	move	a0,s2
    3c94:	00002825 	move	a1,zero
    3c98:	0c000000 	jal	0 <func_800E11F0>
    3c9c:	03c03025 	move	a2,s8
    3ca0:	8ea32d5c 	lw	v1,11612(s5)
    3ca4:	26310001 	addiu	s1,s1,1
    3ca8:	0223082a 	slt	at,s1,v1
    3cac:	1420ffd6 	bnez	at,3c08 <func_800E4D94+0x64>
    3cb0:	2610000c 	addiu	s0,s0,12
    3cb4:	8fbf003c 	lw	ra,60(sp)
    3cb8:	8fb00018 	lw	s0,24(sp)
    3cbc:	8fb1001c 	lw	s1,28(sp)
    3cc0:	8fb20020 	lw	s2,32(sp)
    3cc4:	8fb30024 	lw	s3,36(sp)
    3cc8:	8fb40028 	lw	s4,40(sp)
    3ccc:	8fb5002c 	lw	s5,44(sp)
    3cd0:	8fb60030 	lw	s6,48(sp)
    3cd4:	8fb70034 	lw	s7,52(sp)
    3cd8:	8fbe0038 	lw	s8,56(sp)
    3cdc:	03e00008 	jr	ra
    3ce0:	27bd0078 	addiu	sp,sp,120

00003ce4 <func_800E4ED4>:
    3ce4:	03e00008 	jr	ra
    3ce8:	00000000 	nop

00003cec <func_800E4EDC>:
    3cec:	03e00008 	jr	ra
    3cf0:	00000000 	nop

00003cf4 <func_800E4EE4>:
    3cf4:	03e00008 	jr	ra
    3cf8:	00000000 	nop

00003cfc <func_800E4EEC>:
    3cfc:	3c070000 	lui	a3,0x0
    3d00:	8ce70000 	lw	a3,0(a3)
    3d04:	27bdffe0 	addiu	sp,sp,-32
    3d08:	3c010000 	lui	at,0x0
    3d0c:	00077880 	sll	t7,a3,0x2
    3d10:	002f0821 	addu	at,at,t7
    3d14:	3c180000 	lui	t8,0x0
    3d18:	afbf001c 	sw	ra,28(sp)
    3d1c:	afa60028 	sw	a2,40(sp)
    3d20:	ac260000 	sw	a2,0(at)
    3d24:	27180000 	addiu	t8,t8,0
    3d28:	afb80010 	sw	t8,16(sp)
    3d2c:	0c000000 	jal	0 <func_800E11F0>
    3d30:	00003025 	move	a2,zero
    3d34:	3c070000 	lui	a3,0x0
    3d38:	8ce70000 	lw	a3,0(a3)
    3d3c:	3c010000 	lui	at,0x0
    3d40:	24e70001 	addiu	a3,a3,1
    3d44:	ac270000 	sw	a3,0(at)
    3d48:	24010010 	li	at,16
    3d4c:	14e10002 	bne	a3,at,3d58 <func_800E4EEC+0x5c>
    3d50:	3c010000 	lui	at,0x0
    3d54:	ac200000 	sw	zero,0(at)
    3d58:	8fbf001c 	lw	ra,28(sp)
    3d5c:	27bd0020 	addiu	sp,sp,32
    3d60:	03e00008 	jr	ra
    3d64:	00000000 	nop

00003d68 <func_800E4F58>:
    3d68:	27bdffd8 	addiu	sp,sp,-40
    3d6c:	afbf0014 	sw	ra,20(sp)
    3d70:	3c040000 	lui	a0,0x0
    3d74:	24840000 	addiu	a0,a0,0
    3d78:	27a50020 	addiu	a1,sp,32
    3d7c:	0c000000 	jal	0 <func_800E11F0>
    3d80:	00003025 	move	a2,zero
    3d84:	2401ffff 	li	at,-1
    3d88:	10410009 	beq	v0,at,3db0 <func_800E4F58+0x48>
    3d8c:	8fae0020 	lw	t6,32(sp)
    3d90:	000e7e02 	srl	t7,t6,0x18
    3d94:	000fc080 	sll	t8,t7,0x2
    3d98:	3c020000 	lui	v0,0x0
    3d9c:	00581021 	addu	v0,v0,t8
    3da0:	8c420000 	lw	v0,0(v0)
    3da4:	50400003 	beqzl	v0,3db4 <func_800E4F58+0x4c>
    3da8:	8fbf0014 	lw	ra,20(sp)
    3dac:	a0400000 	sb	zero,0(v0)
    3db0:	8fbf0014 	lw	ra,20(sp)
    3db4:	27bd0028 	addiu	sp,sp,40
    3db8:	03e00008 	jr	ra
    3dbc:	00000000 	nop

00003dc0 <func_800E4FB0>:
    3dc0:	27bdffe8 	addiu	sp,sp,-24
    3dc4:	afbf0014 	sw	ra,20(sp)
    3dc8:	3c040000 	lui	a0,0x0
    3dcc:	3c050000 	lui	a1,0x0
    3dd0:	24a50000 	addiu	a1,a1,0
    3dd4:	24840000 	addiu	a0,a0,0
    3dd8:	0c000000 	jal	0 <func_800E11F0>
    3ddc:	24060010 	li	a2,16
    3de0:	8fbf0014 	lw	ra,20(sp)
    3de4:	27bd0018 	addiu	sp,sp,24
    3de8:	03e00008 	jr	ra
    3dec:	00000000 	nop

00003df0 <func_800E4FE0>:
    3df0:	27bdffe8 	addiu	sp,sp,-24
    3df4:	afbf0014 	sw	ra,20(sp)
    3df8:	0c000000 	jal	0 <func_800E11F0>
    3dfc:	00000000 	nop
    3e00:	8fbf0014 	lw	ra,20(sp)
    3e04:	27bd0018 	addiu	sp,sp,24
    3e08:	03e00008 	jr	ra
    3e0c:	00000000 	nop

00003e10 <func_800E5000>:
    3e10:	27bdff90 	addiu	sp,sp,-112
    3e14:	afb20020 	sw	s2,32(sp)
    3e18:	3c120000 	lui	s2,0x0
    3e1c:	26520000 	addiu	s2,s2,0
    3e20:	8e4e289c 	lw	t6,10396(s2)
    3e24:	86432848 	lh	v1,10312(s2)
    3e28:	afbf0024 	sw	ra,36(sp)
    3e2c:	25cf0001 	addiu	t7,t6,1
    3e30:	01e3001a 	div	zero,t7,v1
    3e34:	01e03825 	move	a3,t7
    3e38:	00002010 	mfhi	a0
    3e3c:	afb1001c 	sw	s1,28(sp)
    3e40:	afb00018 	sw	s0,24(sp)
    3e44:	ae4f289c 	sw	t7,10396(s2)
    3e48:	14600002 	bnez	v1,3e54 <func_800E5000+0x44>
    3e4c:	00000000 	nop
    3e50:	0007000d 	break	0x7
    3e54:	2401ffff 	li	at,-1
    3e58:	14610004 	bne	v1,at,3e6c <func_800E5000+0x5c>
    3e5c:	3c018000 	lui	at,0x8000
    3e60:	14e10002 	bne	a3,at,3e6c <func_800E5000+0x5c>
    3e64:	00000000 	nop
    3e68:	0006000d 	break	0x6
    3e6c:	00e02825 	move	a1,a3
    3e70:	1080001d 	beqz	a0,3ee8 <func_800E5000+0xd8>
    3e74:	00003025 	move	a2,zero
    3e78:	3c020000 	lui	v0,0x0
    3e7c:	8c420000 	lw	v0,0(v0)
    3e80:	50400013 	beqzl	v0,3ed0 <func_800E5000+0xc0>
    3e84:	24990001 	addiu	t9,a0,1
    3e88:	0040f809 	jalr	v0
    3e8c:	00000000 	nop
    3e90:	3c030000 	lui	v1,0x0
    3e94:	3c180000 	lui	t8,0x0
    3e98:	8f18289c 	lw	t8,10396(t8)
    3e9c:	84632848 	lh	v1,10312(v1)
    3ea0:	0303001a 	div	zero,t8,v1
    3ea4:	00002010 	mfhi	a0
    3ea8:	14600002 	bnez	v1,3eb4 <func_800E5000+0xa4>
    3eac:	00000000 	nop
    3eb0:	0007000d 	break	0x7
    3eb4:	2401ffff 	li	at,-1
    3eb8:	14610004 	bne	v1,at,3ecc <func_800E5000+0xbc>
    3ebc:	3c018000 	lui	at,0x8000
    3ec0:	17010002 	bne	t8,at,3ecc <func_800E5000+0xbc>
    3ec4:	00000000 	nop
    3ec8:	0006000d 	break	0x6
    3ecc:	24990001 	addiu	t9,a0,1
    3ed0:	14790003 	bne	v1,t9,3ee0 <func_800E5000+0xd0>
    3ed4:	3c020000 	lui	v0,0x0
    3ed8:	10000128 	b	437c <func_800E5000+0x56c>
    3edc:	8c420000 	lw	v0,0(v0)
    3ee0:	10000126 	b	437c <func_800E5000+0x56c>
    3ee4:	00001025 	move	v0,zero
    3ee8:	0c000000 	jal	0 <func_800E11F0>
    3eec:	8e445be8 	lw	a0,23528(s2)
    3ef0:	24030003 	li	v1,3
    3ef4:	8e4b28a8 	lw	t3,10408(s2)
    3ef8:	8e4928a4 	lw	t1,10404(s2)
    3efc:	256c0001 	addiu	t4,t3,1
    3f00:	0183001a 	div	zero,t4,v1
    3f04:	00007010 	mfhi	t6
    3f08:	25d80001 	addiu	t8,t6,1
    3f0c:	01806825 	move	t5,t4
    3f10:	0303001a 	div	zero,t8,v1
    3f14:	ae4c28a8 	sw	t4,10408(s2)
    3f18:	00008010 	mfhi	s0
    3f1c:	392a0001 	xori	t2,t1,0x1
    3f20:	ae4a28a4 	sw	t2,10404(s2)
    3f24:	14600002 	bnez	v1,3f30 <func_800E5000+0x120>
    3f28:	00000000 	nop
    3f2c:	0007000d 	break	0x7
    3f30:	2401ffff 	li	at,-1
    3f34:	14610004 	bne	v1,at,3f48 <func_800E5000+0x138>
    3f38:	3c018000 	lui	at,0x8000
    3f3c:	15a10002 	bne	t5,at,3f48 <func_800E5000+0x138>
    3f40:	00000000 	nop
    3f44:	0006000d 	break	0x6
    3f48:	ae4e28a8 	sw	t6,10408(s2)
    3f4c:	01c07825 	move	t7,t6
    3f50:	14600002 	bnez	v1,3f5c <func_800E5000+0x14c>
    3f54:	00000000 	nop
    3f58:	0007000d 	break	0x7
    3f5c:	2401ffff 	li	at,-1
    3f60:	14610004 	bne	v1,at,3f74 <func_800E5000+0x164>
    3f64:	3c018000 	lui	at,0x8000
    3f68:	17010002 	bne	t8,at,3f74 <func_800E5000+0x164>
    3f6c:	00000000 	nop
    3f70:	0006000d 	break	0x6
    3f74:	0c000000 	jal	0 <func_800E11F0>
    3f78:	00000000 	nop
    3f7c:	8e492984 	lw	t1,10628(s2)
    3f80:	0002c882 	srl	t9,v0,0x2
    3f84:	afb9006c 	sw	t9,108(sp)
    3f88:	2d210010 	sltiu	at,t1,16
    3f8c:	1020000b 	beqz	at,3fbc <func_800E5000+0x1ac>
    3f90:	00105040 	sll	t2,s0,0x1
    3f94:	024a3021 	addu	a2,s2,t2
    3f98:	84c22974 	lh	v0,10612(a2)
    3f9c:	00105880 	sll	t3,s0,0x2
    3fa0:	024b1821 	addu	v1,s2,t3
    3fa4:	10400005 	beqz	v0,3fbc <func_800E5000+0x1ac>
    3fa8:	00022880 	sll	a1,v0,0x2
    3fac:	8c642968 	lw	a0,10600(v1)
    3fb0:	afa30034 	sw	v1,52(sp)
    3fb4:	0c000000 	jal	0 <func_800E11F0>
    3fb8:	afa6003c 	sw	a2,60(sp)
    3fbc:	3c020000 	lui	v0,0x0
    3fc0:	8c420000 	lw	v0,0(v0)
    3fc4:	50400004 	beqzl	v0,3fd8 <func_800E5000+0x1c8>
    3fc8:	8e4328a0 	lw	v1,10400(s2)
    3fcc:	0040f809 	jalr	v0
    3fd0:	00000000 	nop
    3fd4:	8e4328a0 	lw	v1,10400(s2)
    3fd8:	3c110000 	lui	s1,0x0
    3fdc:	26311ed0 	addiu	s1,s1,7888
    3fe0:	1860000e 	blez	v1,401c <func_800E5000+0x20c>
    3fe4:	00008025 	move	s0,zero
    3fe8:	02202025 	move	a0,s1
    3fec:	00002825 	move	a1,zero
    3ff0:	00003025 	move	a2,zero
    3ff4:	0c000000 	jal	0 <func_800E11F0>
    3ff8:	afa3005c 	sw	v1,92(sp)
    3ffc:	14400002 	bnez	v0,4008 <func_800E5000+0x1f8>
    4000:	8fa3005c 	lw	v1,92(sp)
    4004:	2463ffff 	addiu	v1,v1,-1
    4008:	8e4c28a0 	lw	t4,10400(s2)
    400c:	26100001 	addiu	s0,s0,1
    4010:	020c082a 	slt	at,s0,t4
    4014:	5420fff5 	bnezl	at,3fec <func_800E5000+0x1dc>
    4018:	02202025 	move	a0,s1
    401c:	3c110000 	lui	s1,0x0
    4020:	1060000c 	beqz	v1,4054 <func_800E5000+0x244>
    4024:	26311ed0 	addiu	s1,s1,7888
    4028:	1860000a 	blez	v1,4054 <func_800E5000+0x244>
    402c:	00008025 	move	s0,zero
    4030:	02202025 	move	a0,s1
    4034:	00002825 	move	a1,zero
    4038:	24060001 	li	a2,1
    403c:	0c000000 	jal	0 <func_800E11F0>
    4040:	afa3005c 	sw	v1,92(sp)
    4044:	8fa3005c 	lw	v1,92(sp)
    4048:	26100001 	addiu	s0,s0,1
    404c:	5603fff9 	bnel	s0,v1,4034 <func_800E5000+0x224>
    4050:	02202025 	move	a0,s1
    4054:	8e431ed8 	lw	v1,7896(s2)
    4058:	1060000c 	beqz	v1,408c <func_800E5000+0x27c>
    405c:	00000000 	nop
    4060:	1860000a 	blez	v1,408c <func_800E5000+0x27c>
    4064:	00008025 	move	s0,zero
    4068:	02202025 	move	a0,s1
    406c:	00002825 	move	a1,zero
    4070:	00003025 	move	a2,zero
    4074:	0c000000 	jal	0 <func_800E11F0>
    4078:	afa30048 	sw	v1,72(sp)
    407c:	8fa30048 	lw	v1,72(sp)
    4080:	26100001 	addiu	s0,s0,1
    4084:	5603fff9 	bnel	s0,v1,406c <func_800E5000+0x25c>
    4088:	02202025 	move	a0,s1
    408c:	0c000000 	jal	0 <func_800E11F0>
    4090:	ae4028a0 	sw	zero,10400(s2)
    4094:	0c000000 	jal	0 <func_800E11F0>
    4098:	92443518 	lbu	a0,13592(s2)
    409c:	0c000000 	jal	0 <func_800E11F0>
    40a0:	00000000 	nop
    40a4:	924d3518 	lbu	t5,13592(s2)
    40a8:	51a00011 	beqzl	t5,40f0 <func_800E5000+0x2e0>
    40ac:	8e4f2984 	lw	t7,10628(s2)
    40b0:	0c000000 	jal	0 <func_800E11F0>
    40b4:	00000000 	nop
    40b8:	5440000d 	bnezl	v0,40f0 <func_800E5000+0x2e0>
    40bc:	8e4f2984 	lw	t7,10628(s2)
    40c0:	924e3518 	lbu	t6,13592(s2)
    40c4:	00003025 	move	a2,zero
    40c8:	15c00004 	bnez	t6,40dc <func_800E5000+0x2cc>
    40cc:	00000000 	nop
    40d0:	8e445be4 	lw	a0,23524(s2)
    40d4:	0c000000 	jal	0 <func_800E11F0>
    40d8:	92453519 	lbu	a1,13593(s2)
    40dc:	3c010000 	lui	at,0x0
    40e0:	ac200000 	sw	zero,0(at)
    40e4:	100000a5 	b	437c <func_800E5000+0x56c>
    40e8:	00001025 	move	v0,zero
    40ec:	8e4f2984 	lw	t7,10628(s2)
    40f0:	2de10011 	sltiu	at,t7,17
    40f4:	54200004 	bnezl	at,4108 <func_800E5000+0x2f8>
    40f8:	8e582984 	lw	t8,10628(s2)
    40fc:	1000009f 	b	437c <func_800E5000+0x56c>
    4100:	00001025 	move	v0,zero
    4104:	8e582984 	lw	t8,10628(s2)
    4108:	27b1004c 	addiu	s1,sp,76
    410c:	02202825 	move	a1,s1
    4110:	13000004 	beqz	t8,4124 <func_800E5000+0x314>
    4114:	00003025 	move	a2,zero
    4118:	8e422984 	lw	v0,10628(s2)
    411c:	24590001 	addiu	t9,v0,1
    4120:	ae592984 	sw	t9,10628(s2)
    4124:	8e4328a4 	lw	v1,10404(s2)
    4128:	8e5028a8 	lw	s0,10408(s2)
    412c:	00034880 	sll	t1,v1,0x2
    4130:	01234821 	addu	t1,t1,v1
    4134:	00094900 	sll	t1,t1,0x4
    4138:	02495021 	addu	t2,s2,t1
    413c:	254b28c0 	addiu	t3,t2,10432
    4140:	00036080 	sll	t4,v1,0x2
    4144:	ae4b28b8 	sw	t3,10424(s2)
    4148:	024c6821 	addu	t5,s2,t4
    414c:	8dae28ac 	lw	t6,10412(t5)
    4150:	8fac006c 	lw	t4,108(sp)
    4154:	864b284e 	lh	t3,10318(s2)
    4158:	00107880 	sll	t7,s0,0x2
    415c:	024fc021 	addu	t8,s2,t7
    4160:	ae4e28b4 	sw	t6,10420(s2)
    4164:	016c6823 	subu	t5,t3,t4
    4168:	afb80034 	sw	t8,52(sp)
    416c:	25ae0080 	addiu	t6,t5,128
    4170:	8f092968 	lw	t1,10600(t8)
    4174:	31cffff0 	andi	t7,t6,0xfff0
    4178:	00105040 	sll	t2,s0,0x1
    417c:	024a4021 	addu	t0,s2,t2
    4180:	25f80010 	addiu	t8,t7,16
    4184:	a5182974 	sh	t8,10612(t0)
    4188:	86442852 	lh	a0,10322(s2)
    418c:	85022974 	lh	v0,10612(t0)
    4190:	afa90058 	sw	t1,88(sp)
    4194:	0044082a 	slt	at,v0,a0
    4198:	50200004 	beqzl	at,41ac <func_800E5000+0x39c>
    419c:	86432850 	lh	v1,10320(s2)
    41a0:	a5042974 	sh	a0,10612(t0)
    41a4:	85022974 	lh	v0,10612(t0)
    41a8:	86432850 	lh	v1,10320(s2)
    41ac:	0062082a 	slt	at,v1,v0
    41b0:	50200003 	beqzl	at,41c0 <func_800E5000+0x3b0>
    41b4:	92593518 	lbu	t9,13592(s2)
    41b8:	a5032974 	sh	v1,10612(t0)
    41bc:	92593518 	lbu	t9,13592(s2)
    41c0:	00008025 	move	s0,zero
    41c4:	afa8003c 	sw	t0,60(sp)
    41c8:	57200019 	bnezl	t9,4230 <func_800E5000+0x420>
    41cc:	8fa8003c 	lw	t0,60(sp)
    41d0:	8e445bec 	lw	a0,23532(s2)
    41d4:	0c000000 	jal	0 <func_800E11F0>
    41d8:	afa8003c 	sw	t0,60(sp)
    41dc:	2401ffff 	li	at,-1
    41e0:	1041000b 	beq	v0,at,4210 <func_800E5000+0x400>
    41e4:	00000000 	nop
    41e8:	0c000000 	jal	0 <func_800E11F0>
    41ec:	8fa4004c 	lw	a0,76(sp)
    41f0:	8e445bec 	lw	a0,23532(s2)
    41f4:	02202825 	move	a1,s1
    41f8:	00003025 	move	a2,zero
    41fc:	0c000000 	jal	0 <func_800E11F0>
    4200:	26100001 	addiu	s0,s0,1
    4204:	2401ffff 	li	at,-1
    4208:	1441fff7 	bne	v0,at,41e8 <func_800E5000+0x3d8>
    420c:	00000000 	nop
    4210:	56000007 	bnezl	s0,4230 <func_800E5000+0x420>
    4214:	8fa8003c 	lw	t0,60(sp)
    4218:	92495bda 	lbu	t1,23514(s2)
    421c:	51200004 	beqzl	t1,4230 <func_800E5000+0x420>
    4220:	8fa8003c 	lw	t0,60(sp)
    4224:	0c000000 	jal	0 <func_800E11F0>
    4228:	00000000 	nop
    422c:	8fa8003c 	lw	t0,60(sp)
    4230:	8e4428b4 	lw	a0,10420(s2)
    4234:	27a50068 	addiu	a1,sp,104
    4238:	8fa60058 	lw	a2,88(sp)
    423c:	0c000000 	jal	0 <func_800E11F0>
    4240:	85072974 	lh	a3,10612(t0)
    4244:	0c000000 	jal	0 <func_800E11F0>
    4248:	ae4228b4 	sw	v0,10420(s2)
    424c:	8e47289c 	lw	a3,10396(s2)
    4250:	8e4a297c 	lw	t2,10620(s2)
    4254:	8fad0034 	lw	t5,52(sp)
    4258:	30ef00ff 	andi	t7,a3,0xff
    425c:	01475821 	addu	t3,t2,a3
    4260:	004b0019 	multu	v0,t3
    4264:	000fc040 	sll	t8,t7,0x1
    4268:	3c0f0000 	lui	t7,0x0
    426c:	25ef0000 	addiu	t7,t7,0
    4270:	3c010000 	lui	at,0x0
    4274:	3c060000 	lui	a2,0x0
    4278:	3c0a0000 	lui	t2,0x0
    427c:	24c60000 	addiu	a2,a2,0
    4280:	254a0000 	addiu	t2,t2,0
    4284:	3c040000 	lui	a0,0x0
    4288:	00006012 	mflo	t4
    428c:	ae4c297c 	sw	t4,10620(s2)
    4290:	8dae2968 	lw	t6,10600(t5)
    4294:	24840000 	addiu	a0,a0,0
    4298:	24051000 	li	a1,4096
    429c:	01d8c821 	addu	t9,t6,t8
    42a0:	87290000 	lh	t1,0(t9)
    42a4:	012c5821 	addu	t3,t1,t4
    42a8:	316dfff0 	andi	t5,t3,0xfff0
    42ac:	ae4b297c 	sw	t3,10620(s2)
    42b0:	01af7021 	addu	t6,t5,t7
    42b4:	ac2e0020 	sw	t6,32(at)
    42b8:	8e5828b8 	lw	t8,10424(s2)
    42bc:	8e5028a4 	lw	s0,10404(s2)
    42c0:	01465823 	subu	t3,t2,a2
    42c4:	af000040 	sw	zero,64(t8)
    42c8:	8e5928b8 	lw	t9,10424(s2)
    42cc:	000b60c3 	sra	t4,t3,0x3
    42d0:	000c68c0 	sll	t5,t4,0x3
    42d4:	af200044 	sw	zero,68(t9)
    42d8:	8e4328b8 	lw	v1,10424(s2)
    42dc:	24090002 	li	t1,2
    42e0:	25afffff 	addiu	t7,t5,-1
    42e4:	00107080 	sll	t6,s0,0x2
    42e8:	024ec021 	addu	t8,s2,t6
    42ec:	ac690000 	sw	t1,0(v1)
    42f0:	ac600004 	sw	zero,4(v1)
    42f4:	ac640008 	sw	a0,8(v1)
    42f8:	ac65000c 	sw	a1,12(v1)
    42fc:	ac6f001c 	sw	t7,28(v1)
    4300:	ac640010 	sw	a0,16(v1)
    4304:	ac660018 	sw	a2,24(v1)
    4308:	ac650014 	sw	a1,20(v1)
    430c:	ac600020 	sw	zero,32(v1)
    4310:	ac600024 	sw	zero,36(v1)
    4314:	ac600028 	sw	zero,40(v1)
    4318:	ac60002c 	sw	zero,44(v1)
    431c:	8f1928ac 	lw	t9,10412(t8)
    4320:	3c0b0000 	lui	t3,0x0
    4324:	ac790030 	sw	t9,48(v1)
    4328:	8fa90068 	lw	t1,104(sp)
    432c:	ac600038 	sw	zero,56(v1)
    4330:	ac60003c 	sw	zero,60(v1)
    4334:	000950c0 	sll	t2,t1,0x3
    4338:	ac6a0034 	sw	t2,52(v1)
    433c:	8fac0068 	lw	t4,104(sp)
    4340:	8d6b0000 	lw	t3,0(t3)
    4344:	016c082a 	slt	at,t3,t4
    4348:	10200002 	beqz	at,4354 <func_800E5000+0x544>
    434c:	3c010000 	lui	at,0x0
    4350:	ac2c0000 	sw	t4,0(at)
    4354:	864d2848 	lh	t5,10312(s2)
    4358:	24010001 	li	at,1
    435c:	55a10004 	bnel	t5,at,4370 <func_800E5000+0x560>
    4360:	8e4f28b8 	lw	t7,10424(s2)
    4364:	10000005 	b	437c <func_800E5000+0x56c>
    4368:	8e4228b8 	lw	v0,10424(s2)
    436c:	8e4f28b8 	lw	t7,10424(s2)
    4370:	3c010000 	lui	at,0x0
    4374:	00001025 	move	v0,zero
    4378:	ac2f0000 	sw	t7,0(at)
    437c:	8fbf0024 	lw	ra,36(sp)
    4380:	8fb00018 	lw	s0,24(sp)
    4384:	8fb1001c 	lw	s1,28(sp)
    4388:	8fb20020 	lw	s2,32(sp)
    438c:	03e00008 	jr	ra
    4390:	27bd0070 	addiu	sp,sp,112

00004394 <func_800E5584>:
    4394:	27bdffc8 	addiu	sp,sp,-56
    4398:	afbf001c 	sw	ra,28(sp)
    439c:	afb00018 	sw	s0,24(sp)
    43a0:	90830000 	lbu	v1,0(a0)
    43a4:	00808025 	move	s0,a0
    43a8:	28610091 	slti	at,v1,145
    43ac:	1420000a 	bnez	at,43d8 <func_800E5584+0x44>
    43b0:	00601025 	move	v0,v1
    43b4:	244eff20 	addiu	t6,v0,-224
    43b8:	2dc1001f 	sltiu	at,t6,31
    43bc:	102000e5 	beqz	at,4754 <L800E5944>
    43c0:	000e7080 	sll	t6,t6,0x2
    43c4:	3c010000 	lui	at,0x0
    43c8:	002e0821 	addu	at,at,t6
    43cc:	8c2e0000 	lw	t6,0(at)
    43d0:	01c00008 	jr	t6
    43d4:	00000000 	nop
    43d8:	244fff7f 	addiu	t7,v0,-129
    43dc:	2de10010 	sltiu	at,t7,16
    43e0:	102000dc 	beqz	at,4754 <L800E5944>
    43e4:	000f7880 	sll	t7,t7,0x2
    43e8:	3c010000 	lui	at,0x0
    43ec:	002f0821 	addu	at,at,t7
    43f0:	8c2f0000 	lw	t7,0(at)
    43f4:	01e00008 	jr	t7
    43f8:	00000000 	nop

000043fc <L800E55EC>:
    43fc:	92040002 	lbu	a0,2(s0)
    4400:	0c000000 	jal	0 <func_800E11F0>
    4404:	92050003 	lbu	a1,3(s0)
    4408:	100000d3 	b	4758 <L800E5944+0x4>
    440c:	8fbf001c 	lw	ra,28(sp)

00004410 <L800E5600>:
    4410:	92040001 	lbu	a0,1(s0)
    4414:	92050002 	lbu	a1,2(s0)
    4418:	0c000000 	jal	0 <func_800E11F0>
    441c:	92060003 	lbu	a2,3(s0)
    4420:	92040001 	lbu	a0,1(s0)
    4424:	0c000000 	jal	0 <func_800E11F0>
    4428:	8e050004 	lw	a1,4(s0)
    442c:	100000ca 	b	4758 <L800E5944+0x4>
    4430:	8fbf001c 	lw	ra,28(sp)

00004434 <L800E5624>:
    4434:	92040001 	lbu	a0,1(s0)
    4438:	92050002 	lbu	a1,2(s0)
    443c:	0c000000 	jal	0 <func_800E11F0>
    4440:	8e060004 	lw	a2,4(s0)
    4444:	100000c4 	b	4758 <L800E5944+0x4>
    4448:	8fbf001c 	lw	ra,28(sp)

0000444c <L800E563C>:
    444c:	92020001 	lbu	v0,1(s0)
    4450:	3c070000 	lui	a3,0x0
    4454:	24e70000 	addiu	a3,a3,0
    4458:	0002c080 	sll	t8,v0,0x2
    445c:	0302c023 	subu	t8,t8,v0
    4460:	0018c080 	sll	t8,t8,0x2
    4464:	0302c023 	subu	t8,t8,v0
    4468:	0018c140 	sll	t8,t8,0x5
    446c:	00f81821 	addu	v1,a3,t8
    4470:	8c793530 	lw	t9,13616(v1)
    4474:	001947c2 	srl	t0,t9,0x1f
    4478:	510000b7 	beqzl	t0,4758 <L800E5944+0x4>
    447c:	8fbf001c 	lw	ra,28(sp)
    4480:	8e050004 	lw	a1,4(s0)
    4484:	14a00005 	bnez	a1,449c <L800E563C+0x50>
    4488:	00000000 	nop
    448c:	0c000000 	jal	0 <func_800E11F0>
    4490:	24643530 	addiu	a0,v1,13616
    4494:	100000b0 	b	4758 <L800E5944+0x4>
    4498:	8fbf001c 	lw	ra,28(sp)
    449c:	0c000000 	jal	0 <func_800E11F0>
    44a0:	00402025 	move	a0,v0
    44a4:	100000ac 	b	4758 <L800E5944+0x4>
    44a8:	8fbf001c 	lw	ra,28(sp)

000044ac <L800E569C>:
    44ac:	8e090004 	lw	t1,4(s0)
    44b0:	3c070000 	lui	a3,0x0
    44b4:	24e70000 	addiu	a3,a3,0
    44b8:	100000a6 	b	4754 <L800E5944>
    44bc:	a0e9289a 	sb	t1,10394(a3)

000044c0 <L800E56B0>:
    44c0:	3c070000 	lui	a3,0x0
    44c4:	24e70000 	addiu	a3,a3,0
    44c8:	84ea285c 	lh	t2,10332(a3)
    44cc:	3c100000 	lui	s0,0x0
    44d0:	26100000 	addiu	s0,s0,0
    44d4:	1940009f 	blez	t2,4754 <L800E5944>
    44d8:	00002825 	move	a1,zero
    44dc:	920c3530 	lbu	t4,13616(s0)
    44e0:	24a50001 	addiu	a1,a1,1
    44e4:	26100160 	addiu	s0,s0,352
    44e8:	358f0020 	ori	t7,t4,0x20
    44ec:	a20f33d0 	sb	t7,13264(s0)
    44f0:	35f80004 	ori	t8,t7,0x4
    44f4:	a21833d0 	sb	t8,13264(s0)
    44f8:	84f9285c 	lh	t9,10332(a3)
    44fc:	00b9082a 	slt	at,a1,t9
    4500:	5420fff7 	bnezl	at,44e0 <L800E56B0+0x20>
    4504:	920c3530 	lbu	t4,13616(s0)
    4508:	10000093 	b	4758 <L800E5944+0x4>
    450c:	8fbf001c 	lw	ra,28(sp)

00004510 <L800E5700>:
    4510:	8e080004 	lw	t0,4(s0)
    4514:	24010001 	li	at,1
    4518:	3c070000 	lui	a3,0x0
    451c:	1501001e 	bne	t0,at,4598 <L800E5700+0x88>
    4520:	24e70000 	addiu	a3,a3,0
    4524:	8ce62894 	lw	a2,10388(a3)
    4528:	00002825 	move	a1,zero
    452c:	00002025 	move	a0,zero
    4530:	18c00019 	blez	a2,4598 <L800E5700+0x88>
    4534:	00000000 	nop
    4538:	8ce9352c 	lw	t1,13612(a3)
    453c:	24a50001 	addiu	a1,a1,1
    4540:	00891821 	addu	v1,a0,t1
    4544:	8c6a00c0 	lw	t2,192(v1)
    4548:	000a5fc2 	srl	t3,t2,0x1f
    454c:	51600010 	beqzl	t3,4590 <L800E5700+0x80>
    4550:	00a6082a 	slt	at,a1,a2
    4554:	906c0034 	lbu	t4,52(v1)
    4558:	5580000d 	bnezl	t4,4590 <L800E5700+0x80>
    455c:	00a6082a 	slt	at,a1,a2
    4560:	8c6d0044 	lw	t5,68(v1)
    4564:	246200c0 	addiu	v0,v1,192
    4568:	8dae0050 	lw	t6,80(t5)
    456c:	91cf0003 	lbu	t7,3(t6)
    4570:	31f80008 	andi	t8,t7,0x8
    4574:	53000006 	beqzl	t8,4590 <L800E5700+0x80>
    4578:	00a6082a 	slt	at,a1,a2
    457c:	90480000 	lbu	t0,0(v0)
    4580:	35090020 	ori	t1,t0,0x20
    4584:	a0490000 	sb	t1,0(v0)
    4588:	8ce62894 	lw	a2,10388(a3)
    458c:	00a6082a 	slt	at,a1,a2
    4590:	1420ffe9 	bnez	at,4538 <L800E5700+0x28>
    4594:	248400e0 	addiu	a0,a0,224
    4598:	3c070000 	lui	a3,0x0
    459c:	24e70000 	addiu	a3,a3,0
    45a0:	84ea285c 	lh	t2,10332(a3)
    45a4:	3c100000 	lui	s0,0x0
    45a8:	26100000 	addiu	s0,s0,0
    45ac:	19400069 	blez	t2,4754 <L800E5944>
    45b0:	00002825 	move	a1,zero
    45b4:	920b3530 	lbu	t3,13616(s0)
    45b8:	24a50001 	addiu	a1,a1,1
    45bc:	26100160 	addiu	s0,s0,352
    45c0:	316effdf 	andi	t6,t3,0xffdf
    45c4:	a20e33d0 	sb	t6,13264(s0)
    45c8:	35cf0004 	ori	t7,t6,0x4
    45cc:	a20f33d0 	sb	t7,13264(s0)
    45d0:	84f8285c 	lh	t8,10332(a3)
    45d4:	00b8082a 	slt	at,a1,t8
    45d8:	5420fff7 	bnezl	at,45b8 <L800E5700+0xa8>
    45dc:	920b3530 	lbu	t3,13616(s0)
    45e0:	1000005d 	b	4758 <L800E5944+0x4>
    45e4:	8fbf001c 	lw	ra,28(sp)

000045e8 <L800E57D8>:
    45e8:	92040001 	lbu	a0,1(s0)
    45ec:	92050002 	lbu	a1,2(s0)
    45f0:	0c000000 	jal	0 <func_800E11F0>
    45f4:	92060003 	lbu	a2,3(s0)
    45f8:	10000057 	b	4758 <L800E5944+0x4>
    45fc:	8fbf001c 	lw	ra,28(sp)

00004600 <L800E57F0>:
    4600:	3c070000 	lui	a3,0x0
    4604:	24e71e20 	addiu	a3,a3,7712
    4608:	92040001 	lbu	a0,1(s0)
    460c:	92050002 	lbu	a1,2(s0)
    4610:	0c000000 	jal	0 <func_800E11F0>
    4614:	92060003 	lbu	a2,3(s0)
    4618:	1000004f 	b	4758 <L800E5944+0x4>
    461c:	8fbf001c 	lw	ra,28(sp)

00004620 <L800E5810>:
    4620:	3c070000 	lui	a3,0x0
    4624:	24e71e20 	addiu	a3,a3,7712
    4628:	92040001 	lbu	a0,1(s0)
    462c:	92050002 	lbu	a1,2(s0)
    4630:	0c000000 	jal	0 <func_800E11F0>
    4634:	92060003 	lbu	a2,3(s0)
    4638:	10000047 	b	4758 <L800E5944+0x4>
    463c:	8fbf001c 	lw	ra,28(sp)

00004640 <L800E5830>:
    4640:	3c070000 	lui	a3,0x0
    4644:	24e71e20 	addiu	a3,a3,7712
    4648:	92040001 	lbu	a0,1(s0)
    464c:	92050002 	lbu	a1,2(s0)
    4650:	0c000000 	jal	0 <func_800E11F0>
    4654:	92060003 	lbu	a2,3(s0)
    4658:	1000003f 	b	4758 <L800E5944+0x4>
    465c:	8fbf001c 	lw	ra,28(sp)

00004660 <L800E5850>:
    4660:	0c000000 	jal	0 <func_800E11F0>
    4664:	92040002 	lbu	a0,2(s0)
    4668:	1000003b 	b	4758 <L800E5944+0x4>
    466c:	8fbf001c 	lw	ra,28(sp)

00004670 <L800E5860>:
    4670:	92080001 	lbu	t0,1(s0)
    4674:	3c070000 	lui	a3,0x0
    4678:	96190004 	lhu	t9,4(s0)
    467c:	24e70000 	addiu	a3,a3,0
    4680:	00084840 	sll	t1,t0,0x1
    4684:	00e95021 	addu	t2,a3,t1
    4688:	10000032 	b	4754 <L800E5944>
    468c:	a5595bdc 	sh	t9,23516(t2)

00004690 <L800E5880>:
    4690:	3c070000 	lui	a3,0x0
    4694:	24e70000 	addiu	a3,a3,0
    4698:	240b0005 	li	t3,5
    469c:	a0eb3518 	sb	t3,13592(a3)
    46a0:	8e0c0004 	lw	t4,4(s0)
    46a4:	1000002b 	b	4754 <L800E5944>
    46a8:	a0ec3519 	sb	t4,13593(a3)

000046ac <L800E589C>:
    46ac:	8e0d0004 	lw	t5,4(s0)
    46b0:	3c010000 	lui	at,0x0
    46b4:	10000027 	b	4754 <L800E5944>
    46b8:	ac2d0000 	sw	t5,0(at)

000046bc <L800E58AC>:
    46bc:	2464ff20 	addiu	a0,v1,-224
    46c0:	92050001 	lbu	a1,1(s0)
    46c4:	92060002 	lbu	a2,2(s0)
    46c8:	0c000000 	jal	0 <func_800E11F0>
    46cc:	8e070004 	lw	a3,4(s0)
    46d0:	10000021 	b	4758 <L800E5944+0x4>
    46d4:	8fbf001c 	lw	ra,28(sp)

000046d8 <L800E58C8>:
    46d8:	8e0e0004 	lw	t6,4(s0)
    46dc:	24010001 	li	at,1
    46e0:	3c070000 	lui	a3,0x0
    46e4:	15c10015 	bne	t6,at,473c <L800E58C8+0x64>
    46e8:	afae0024 	sw	t6,36(sp)
    46ec:	24e70000 	addiu	a3,a3,0
    46f0:	84e2285c 	lh	v0,10332(a3)
    46f4:	3c100000 	lui	s0,0x0
    46f8:	26100000 	addiu	s0,s0,0
    46fc:	1840000f 	blez	v0,473c <L800E58C8+0x64>
    4700:	00002825 	move	a1,zero
    4704:	8e183530 	lw	t8,13616(s0)
    4708:	26043530 	addiu	a0,s0,13616
    470c:	001847c2 	srl	t0,t8,0x1f
    4710:	51000007 	beqzl	t0,4730 <L800E58C8+0x58>
    4714:	24a50001 	addiu	a1,a1,1
    4718:	0c000000 	jal	0 <func_800E11F0>
    471c:	afa50034 	sw	a1,52(sp)
    4720:	3c020000 	lui	v0,0x0
    4724:	8442285c 	lh	v0,10332(v0)
    4728:	8fa50034 	lw	a1,52(sp)
    472c:	24a50001 	addiu	a1,a1,1
    4730:	00a2082a 	slt	at,a1,v0
    4734:	1420fff3 	bnez	at,4704 <L800E58C8+0x2c>
    4738:	26100160 	addiu	s0,s0,352
    473c:	0c000000 	jal	0 <func_800E11F0>
    4740:	8fa40024 	lw	a0,36(sp)
    4744:	10000004 	b	4758 <L800E5944+0x4>
    4748:	8fbf001c 	lw	ra,28(sp)

0000474c <L800E593C>:
    474c:	0c000000 	jal	0 <func_800E11F0>
    4750:	8e040004 	lw	a0,4(s0)

00004754 <L800E5944>:
    4754:	8fbf001c 	lw	ra,28(sp)
    4758:	8fb00018 	lw	s0,24(sp)
    475c:	27bd0038 	addiu	sp,sp,56
    4760:	03e00008 	jr	ra
    4764:	00000000 	nop

00004768 <func_800E5958>:
    4768:	14a00002 	bnez	a1,4774 <func_800E5958+0xc>
    476c:	00047080 	sll	t6,a0,0x2
    4770:	24050001 	li	a1,1
    4774:	44853000 	mtc1	a1,$f6
    4778:	01c47023 	subu	t6,t6,a0
    477c:	000e7080 	sll	t6,t6,0x2
    4780:	01c47023 	subu	t6,t6,a0
    4784:	46803220 	cvt.s.w	$f8,$f6
    4788:	000e7140 	sll	t6,t6,0x5
    478c:	3c180000 	lui	t8,0x0
    4790:	27180000 	addiu	t8,t8,0
    4794:	25cf3530 	addiu	t7,t6,13616
    4798:	01f81021 	addu	v0,t7,t8
    479c:	c444001c 	lwc1	$f4,28(v0)
    47a0:	24190002 	li	t9,2
    47a4:	a0590001 	sb	t9,1(v0)
    47a8:	46082283 	div.s	$f10,$f4,$f8
    47ac:	a4450012 	sh	a1,18(v0)
    47b0:	46005407 	neg.s	$f16,$f10
    47b4:	03e00008 	jr	ra
    47b8:	e4500020 	swc1	$f16,32(v0)

000047bc <func_800E59AC>:
    47bc:	10a0000f 	beqz	a1,47fc <func_800E59AC+0x40>
    47c0:	00047080 	sll	t6,a0,0x2
    47c4:	01c47023 	subu	t6,t6,a0
    47c8:	000e7080 	sll	t6,t6,0x2
    47cc:	01c47023 	subu	t6,t6,a0
    47d0:	3c0f0000 	lui	t7,0x0
    47d4:	25ef0000 	addiu	t7,t7,0
    47d8:	000e7140 	sll	t6,t6,0x5
    47dc:	01cf1021 	addu	v0,t6,t7
    47e0:	44800000 	mtc1	zero,$f0
    47e4:	24180001 	li	t8,1
    47e8:	a0583531 	sb	t8,13617(v0)
    47ec:	a4453544 	sh	a1,13636(v0)
    47f0:	a4453542 	sh	a1,13634(v0)
    47f4:	e440354c 	swc1	$f0,13644(v0)
    47f8:	e4403550 	swc1	$f0,13648(v0)
    47fc:	03e00008 	jr	ra
    4800:	00000000 	nop

00004804 <func_800E59F4>:
    4804:	3c020000 	lui	v0,0x0
    4808:	24420000 	addiu	v0,v0,0
    480c:	27bdffe8 	addiu	sp,sp,-24
    4810:	3c0e0000 	lui	t6,0x0
    4814:	3c0f0000 	lui	t7,0x0
    4818:	3c180000 	lui	t8,0x0
    481c:	afbf0014 	sw	ra,20(sp)
    4820:	25c40000 	addiu	a0,t6,0
    4824:	25ef0000 	addiu	t7,t7,0
    4828:	27180000 	addiu	t8,t8,0
    482c:	3c050000 	lui	a1,0x0
    4830:	a0405bd8 	sb	zero,23512(v0)
    4834:	a0405bd9 	sb	zero,23513(v0)
    4838:	a0405bda 	sb	zero,23514(v0)
    483c:	ac445be8 	sw	a0,23528(v0)
    4840:	ac4f5bec 	sw	t7,23532(v0)
    4844:	ac585be4 	sw	t8,23524(v0)
    4848:	24a50000 	addiu	a1,a1,0
    484c:	0c000000 	jal	0 <func_800E11F0>
    4850:	24060001 	li	a2,1
    4854:	3c020000 	lui	v0,0x0
    4858:	24420000 	addiu	v0,v0,0
    485c:	3c050000 	lui	a1,0x0
    4860:	24a50000 	addiu	a1,a1,0
    4864:	8c445bec 	lw	a0,23532(v0)
    4868:	0c000000 	jal	0 <func_800E11F0>
    486c:	24060004 	li	a2,4
    4870:	3c020000 	lui	v0,0x0
    4874:	24420000 	addiu	v0,v0,0
    4878:	3c050000 	lui	a1,0x0
    487c:	24a50000 	addiu	a1,a1,0
    4880:	8c445be4 	lw	a0,23524(v0)
    4884:	0c000000 	jal	0 <func_800E11F0>
    4888:	24060001 	li	a2,1
    488c:	8fbf0014 	lw	ra,20(sp)
    4890:	27bd0018 	addiu	sp,sp,24
    4894:	03e00008 	jr	ra
    4898:	00000000 	nop

0000489c <func_800E5A8C>:
    489c:	3c060000 	lui	a2,0x0
    48a0:	24c60000 	addiu	a2,a2,0
    48a4:	90cf5bd8 	lbu	t7,23512(a2)
    48a8:	000fc0c0 	sll	t8,t7,0x3
    48ac:	00d81021 	addu	v0,a2,t8
    48b0:	ac445c50 	sw	a0,23632(v0)
    48b4:	8cb90000 	lw	t9,0(a1)
    48b8:	24425c50 	addiu	v0,v0,23632
    48bc:	ac590004 	sw	t9,4(v0)
    48c0:	90c85bd8 	lbu	t0,23512(a2)
    48c4:	90ca5bd9 	lbu	t2,23513(a2)
    48c8:	25090001 	addiu	t1,t0,1
    48cc:	312300ff 	andi	v1,t1,0xff
    48d0:	15430003 	bne	t2,v1,48e0 <func_800E5A8C+0x44>
    48d4:	a0c95bd8 	sb	t1,23512(a2)
    48d8:	246bffff 	addiu	t3,v1,-1
    48dc:	a0cb5bd8 	sb	t3,23512(a2)
    48e0:	03e00008 	jr	ra
    48e4:	00000000 	nop

000048e8 <func_800E5AD8>:
    48e8:	27bdffe8 	addiu	sp,sp,-24
    48ec:	afbf0014 	sw	ra,20(sp)
    48f0:	afa5001c 	sw	a1,28(sp)
    48f4:	0c000000 	jal	0 <func_800E11F0>
    48f8:	27a5001c 	addiu	a1,sp,28
    48fc:	8fbf0014 	lw	ra,20(sp)
    4900:	27bd0018 	addiu	sp,sp,24
    4904:	03e00008 	jr	ra
    4908:	00000000 	nop

0000490c <func_800E5AFC>:
    490c:	27bdffe8 	addiu	sp,sp,-24
    4910:	afbf0014 	sw	ra,20(sp)
    4914:	afa5001c 	sw	a1,28(sp)
    4918:	0c000000 	jal	0 <func_800E11F0>
    491c:	27a5001c 	addiu	a1,sp,28
    4920:	8fbf0014 	lw	ra,20(sp)
    4924:	27bd0018 	addiu	sp,sp,24
    4928:	03e00008 	jr	ra
    492c:	00000000 	nop

00004930 <func_800E5B20>:
    4930:	27bdffe0 	addiu	sp,sp,-32
    4934:	00a03025 	move	a2,a1
    4938:	afbf0014 	sw	ra,20(sp)
    493c:	afa50024 	sw	a1,36(sp)
    4940:	00067600 	sll	t6,a2,0x18
    4944:	afae001c 	sw	t6,28(sp)
    4948:	0c000000 	jal	0 <func_800E11F0>
    494c:	27a5001c 	addiu	a1,sp,28
    4950:	8fbf0014 	lw	ra,20(sp)
    4954:	27bd0020 	addiu	sp,sp,32
    4958:	03e00008 	jr	ra
    495c:	00000000 	nop

00004960 <func_800E5B50>:
    4960:	27bdffe0 	addiu	sp,sp,-32
    4964:	00a03025 	move	a2,a1
    4968:	afbf0014 	sw	ra,20(sp)
    496c:	afa50024 	sw	a1,36(sp)
    4970:	00067400 	sll	t6,a2,0x10
    4974:	afae001c 	sw	t6,28(sp)
    4978:	0c000000 	jal	0 <func_800E11F0>
    497c:	27a5001c 	addiu	a1,sp,28
    4980:	8fbf0014 	lw	ra,20(sp)
    4984:	27bd0020 	addiu	sp,sp,32
    4988:	03e00008 	jr	ra
    498c:	00000000 	nop

00004990 <func_800E5B80>:
    4990:	3c030000 	lui	v1,0x0
    4994:	24630000 	addiu	v1,v1,0
    4998:	90625bd8 	lbu	v0,23512(v1)
    499c:	90675bd9 	lbu	a3,23513(v1)
    49a0:	3c0e0000 	lui	t6,0x0
    49a4:	8dce0000 	lw	t6,0(t6)
    49a8:	00472023 	subu	a0,v0,a3
    49ac:	24840100 	addiu	a0,a0,256
    49b0:	308400ff 	andi	a0,a0,0xff
    49b4:	27bdffe8 	addiu	sp,sp,-24
    49b8:	01c4082a 	slt	at,t6,a0
    49bc:	10200003 	beqz	at,49cc <func_800E5B80+0x3c>
    49c0:	afbf0014 	sw	ra,20(sp)
    49c4:	3c010000 	lui	at,0x0
    49c8:	ac240000 	sw	a0,0(at)
    49cc:	30ef00ff 	andi	t7,a3,0xff
    49d0:	000fc200 	sll	t8,t7,0x8
    49d4:	305900ff 	andi	t9,v0,0xff
    49d8:	03192825 	or	a1,t8,t9
    49dc:	8c645bec 	lw	a0,23532(v1)
    49e0:	0c000000 	jal	0 <func_800E11F0>
    49e4:	00003025 	move	a2,zero
    49e8:	3c030000 	lui	v1,0x0
    49ec:	2401ffff 	li	at,-1
    49f0:	10410005 	beq	v0,at,4a08 <func_800E5B80+0x78>
    49f4:	24630000 	addiu	v1,v1,0
    49f8:	90685bd8 	lbu	t0,23512(v1)
    49fc:	00001025 	move	v0,zero
    4a00:	10000003 	b	4a10 <func_800E5B80+0x80>
    4a04:	a0685bd9 	sb	t0,23513(v1)
    4a08:	10000001 	b	4a10 <func_800E5B80+0x80>
    4a0c:	2402ffff 	li	v0,-1
    4a10:	8fbf0014 	lw	ra,20(sp)
    4a14:	27bd0018 	addiu	sp,sp,24
    4a18:	03e00008 	jr	ra
    4a1c:	00000000 	nop

00004a20 <func_800E5C10>:
    4a20:	3c020000 	lui	v0,0x0
    4a24:	24420000 	addiu	v0,v0,0
    4a28:	904e5bd8 	lbu	t6,23512(v0)
    4a2c:	a0405bda 	sb	zero,23514(v0)
    4a30:	03e00008 	jr	ra
    4a34:	a04e5bd9 	sb	t6,23513(v0)

00004a38 <func_800E5C28>:
    4a38:	27bdffd0 	addiu	sp,sp,-48
    4a3c:	afbf002c 	sw	ra,44(sp)
    4a40:	afb40028 	sw	s4,40(sp)
    4a44:	afb30024 	sw	s3,36(sp)
    4a48:	afb20020 	sw	s2,32(sp)
    4a4c:	afb1001c 	sw	s1,28(sp)
    4a50:	afb00018 	sw	s0,24(sp)
    4a54:	90820000 	lbu	v0,0(a0)
    4a58:	240100f0 	li	at,240
    4a5c:	00809825 	move	s3,a0
    4a60:	304e00f0 	andi	t6,v0,0xf0
    4a64:	15c10005 	bne	t6,at,4a7c <func_800E5C28+0x44>
    4a68:	3c050000 	lui	a1,0x0
    4a6c:	0c000000 	jal	0 <func_800E11F0>
    4a70:	00000000 	nop
    4a74:	1000003a 	b	4b60 <func_800E5C28+0x128>
    4a78:	8fbf002c 	lw	ra,44(sp)
    4a7c:	92640001 	lbu	a0,1(s3)
    4a80:	24a50000 	addiu	a1,a1,0
    4a84:	84af285c 	lh	t7,10332(a1)
    4a88:	0004c080 	sll	t8,a0,0x2
    4a8c:	0304c023 	subu	t8,t8,a0
    4a90:	008f082a 	slt	at,a0,t7
    4a94:	10200031 	beqz	at,4b5c <func_800E5C28+0x124>
    4a98:	0018c080 	sll	t8,t8,0x2
    4a9c:	0304c023 	subu	t8,t8,a0
    4aa0:	0018c140 	sll	t8,t8,0x5
    4aa4:	00b8a021 	addu	s4,a1,t8
    4aa8:	30590080 	andi	t9,v0,0x80
    4aac:	13200005 	beqz	t9,4ac4 <func_800E5C28+0x8c>
    4ab0:	26943530 	addiu	s4,s4,13616
    4ab4:	0c000000 	jal	0 <func_800E11F0>
    4ab8:	02602025 	move	a0,s3
    4abc:	10000028 	b	4b60 <func_800E5C28+0x128>
    4ac0:	8fbf002c 	lw	ra,44(sp)
    4ac4:	30480040 	andi	t0,v0,0x40
    4ac8:	51000007 	beqzl	t0,4ae8 <func_800E5C28+0xb0>
    4acc:	92620002 	lbu	v0,2(s3)
    4ad0:	02802025 	move	a0,s4
    4ad4:	0c000000 	jal	0 <func_800E11F0>
    4ad8:	02602825 	move	a1,s3
    4adc:	10000020 	b	4b60 <func_800E5C28+0x128>
    4ae0:	8fbf002c 	lw	ra,44(sp)
    4ae4:	92620002 	lbu	v0,2(s3)
    4ae8:	28410010 	slti	at,v0,16
    4aec:	10200008 	beqz	at,4b10 <func_800E5C28+0xd8>
    4af0:	00401825 	move	v1,v0
    4af4:	00024880 	sll	t1,v0,0x2
    4af8:	02895021 	addu	t2,s4,t1
    4afc:	8d440038 	lw	a0,56(t2)
    4b00:	0c000000 	jal	0 <func_800E11F0>
    4b04:	02602825 	move	a1,s3
    4b08:	10000015 	b	4b60 <func_800E5C28+0x128>
    4b0c:	8fbf002c 	lw	ra,44(sp)
    4b10:	240100ff 	li	at,255
    4b14:	14610011 	bne	v1,at,4b5c <func_800E5C28+0x124>
    4b18:	00045840 	sll	t3,a0,0x1
    4b1c:	00ab6021 	addu	t4,a1,t3
    4b20:	95825bdc 	lhu	v0,23516(t4)
    4b24:	00008025 	move	s0,zero
    4b28:	24120010 	li	s2,16
    4b2c:	304d0001 	andi	t5,v0,0x1
    4b30:	11a00006 	beqz	t5,4b4c <func_800E5C28+0x114>
    4b34:	00408825 	move	s1,v0
    4b38:	00107080 	sll	t6,s0,0x2
    4b3c:	028e7821 	addu	t7,s4,t6
    4b40:	8de40038 	lw	a0,56(t7)
    4b44:	0c000000 	jal	0 <func_800E11F0>
    4b48:	02602825 	move	a1,s3
    4b4c:	26100001 	addiu	s0,s0,1
    4b50:	00111043 	sra	v0,s1,0x1
    4b54:	1612fff5 	bne	s0,s2,4b2c <func_800E5C28+0xf4>
    4b58:	3042ffff 	andi	v0,v0,0xffff
    4b5c:	8fbf002c 	lw	ra,44(sp)
    4b60:	8fb00018 	lw	s0,24(sp)
    4b64:	8fb1001c 	lw	s1,28(sp)
    4b68:	8fb20020 	lw	s2,32(sp)
    4b6c:	8fb30024 	lw	s3,36(sp)
    4b70:	8fb40028 	lw	s4,40(sp)
    4b74:	03e00008 	jr	ra
    4b78:	27bd0030 	addiu	sp,sp,48

00004b7c <func_800E5D6C>:
    4b7c:	27bdffd8 	addiu	sp,sp,-40
    4b80:	afb30020 	sw	s3,32(sp)
    4b84:	3c130000 	lui	s3,0x0
    4b88:	26730000 	addiu	s3,s3,0
    4b8c:	926e5bda 	lbu	t6,23514(s3)
    4b90:	afbf0024 	sw	ra,36(sp)
    4b94:	afb2001c 	sw	s2,28(sp)
    4b98:	afb10018 	sw	s1,24(sp)
    4b9c:	15c00004 	bnez	t6,4bb0 <func_800E5D6C+0x34>
    4ba0:	afb00014 	sw	s0,20(sp)
    4ba4:	00041a02 	srl	v1,a0,0x8
    4ba8:	3c010000 	lui	at,0x0
    4bac:	a0230000 	sb	v1,0(at)
    4bb0:	00808825 	move	s1,a0
    4bb4:	323100ff 	andi	s1,s1,0xff
    4bb8:	241200f8 	li	s2,248
    4bbc:	3c030000 	lui	v1,0x0
    4bc0:	90630000 	lbu	v1,0(v1)
    4bc4:	3c010000 	lui	at,0x0
    4bc8:	16230003 	bne	s1,v1,4bd8 <func_800E5D6C+0x5c>
    4bcc:	00601025 	move	v0,v1
    4bd0:	10000010 	b	4c14 <func_800E5D6C+0x98>
    4bd4:	a2605bda 	sb	zero,23514(s3)
    4bd8:	304f00ff 	andi	t7,v0,0xff
    4bdc:	000fc0c0 	sll	t8,t7,0x3
    4be0:	24630001 	addiu	v1,v1,1
    4be4:	02788021 	addu	s0,s3,t8
    4be8:	a0230000 	sb	v1,0(at)
    4bec:	92195c50 	lbu	t9,23632(s0)
    4bf0:	26105c50 	addiu	s0,s0,23632
    4bf4:	16590003 	bne	s2,t9,4c04 <func_800E5D6C+0x88>
    4bf8:	24080001 	li	t0,1
    4bfc:	10000005 	b	4c14 <func_800E5D6C+0x98>
    4c00:	a2685bda 	sb	t0,23514(s3)
    4c04:	0c000000 	jal	0 <func_800E11F0>
    4c08:	02002025 	move	a0,s0
    4c0c:	1000ffeb 	b	4bbc <func_800E5D6C+0x40>
    4c10:	a2000000 	sb	zero,0(s0)
    4c14:	8fbf0024 	lw	ra,36(sp)
    4c18:	8fb00014 	lw	s0,20(sp)
    4c1c:	8fb10018 	lw	s1,24(sp)
    4c20:	8fb2001c 	lw	s2,28(sp)
    4c24:	8fb30020 	lw	s3,32(sp)
    4c28:	03e00008 	jr	ra
    4c2c:	27bd0028 	addiu	sp,sp,40

00004c30 <func_800E5E20>:
    4c30:	27bdffe0 	addiu	sp,sp,-32
    4c34:	afa40020 	sw	a0,32(sp)
    4c38:	afbf0014 	sw	ra,20(sp)
    4c3c:	3c040000 	lui	a0,0x0
    4c40:	24841e20 	addiu	a0,a0,7712
    4c44:	27a5001c 	addiu	a1,sp,28
    4c48:	0c000000 	jal	0 <func_800E11F0>
    4c4c:	00003025 	move	a2,zero
    4c50:	2401ffff 	li	at,-1
    4c54:	14410004 	bne	v0,at,4c68 <func_800E5E20+0x38>
    4c58:	8fa30020 	lw	v1,32(sp)
    4c5c:	ac600000 	sw	zero,0(v1)
    4c60:	10000008 	b	4c84 <func_800E5E20+0x54>
    4c64:	00001025 	move	v0,zero
    4c68:	8fae001c 	lw	t6,28(sp)
    4c6c:	3c0100ff 	lui	at,0xff
    4c70:	3421ffff 	ori	at,at,0xffff
    4c74:	01c17824 	and	t7,t6,at
    4c78:	ac6f0000 	sw	t7,0(v1)
    4c7c:	8fa2001c 	lw	v0,28(sp)
    4c80:	00021602 	srl	v0,v0,0x18
    4c84:	8fbf0014 	lw	ra,20(sp)
    4c88:	27bd0020 	addiu	sp,sp,32
    4c8c:	03e00008 	jr	ra
    4c90:	00000000 	nop

00004c94 <func_800E5E84>:
    4c94:	27bdffe8 	addiu	sp,sp,-24
    4c98:	afbf0014 	sw	ra,20(sp)
    4c9c:	0c000000 	jal	0 <func_800E11F0>
    4ca0:	00000000 	nop
    4ca4:	8fbf0014 	lw	ra,20(sp)
    4ca8:	27bd0018 	addiu	sp,sp,24
    4cac:	03e00008 	jr	ra
    4cb0:	00000000 	nop

00004cb4 <func_800E5EA4>:
    4cb4:	3c030000 	lui	v1,0x0
    4cb8:	24630000 	addiu	v1,v1,0
    4cbc:	8c6e2844 	lw	t6,10308(v1)
    4cc0:	00041080 	sll	v0,a0,0x2
    4cc4:	00441021 	addu	v0,v0,a0
    4cc8:	00021080 	sll	v0,v0,0x2
    4ccc:	01c27821 	addu	t7,t6,v0
    4cd0:	91f80002 	lbu	t8,2(t7)
    4cd4:	acb80000 	sw	t8,0(a1)
    4cd8:	8c792844 	lw	t9,10308(v1)
    4cdc:	03224021 	addu	t0,t9,v0
    4ce0:	91090003 	lbu	t1,3(t0)
    4ce4:	03e00008 	jr	ra
    4ce8:	acc90000 	sw	t1,0(a2)

00004cec <func_800E5EDC>:
    4cec:	27bdffe0 	addiu	sp,sp,-32
    4cf0:	afbf0014 	sw	ra,20(sp)
    4cf4:	3c040000 	lui	a0,0x0
    4cf8:	8c840000 	lw	a0,0(a0)
    4cfc:	27a50018 	addiu	a1,sp,24
    4d00:	0c000000 	jal	0 <func_800E11F0>
    4d04:	00003025 	move	a2,zero
    4d08:	2401ffff 	li	at,-1
    4d0c:	14410003 	bne	v0,at,4d1c <func_800E5EDC+0x30>
    4d10:	8fbf0014 	lw	ra,20(sp)
    4d14:	10000009 	b	4d3c <func_800E5EDC+0x50>
    4d18:	00001025 	move	v0,zero
    4d1c:	3c0f0000 	lui	t7,0x0
    4d20:	91ef3519 	lbu	t7,13593(t7)
    4d24:	8fae0018 	lw	t6,24(sp)
    4d28:	24020001 	li	v0,1
    4d2c:	11cf0003 	beq	t6,t7,4d3c <func_800E5EDC+0x50>
    4d30:	00000000 	nop
    4d34:	10000001 	b	4d3c <func_800E5EDC+0x50>
    4d38:	2402ffff 	li	v0,-1
    4d3c:	03e00008 	jr	ra
    4d40:	27bd0020 	addiu	sp,sp,32

00004d44 <func_800E5F34>:
    4d44:	27bdffd0 	addiu	sp,sp,-48
    4d48:	afb1001c 	sw	s1,28(sp)
    4d4c:	afb20020 	sw	s2,32(sp)
    4d50:	afb00018 	sw	s0,24(sp)
    4d54:	3c110000 	lui	s1,0x0
    4d58:	afbf0024 	sw	ra,36(sp)
    4d5c:	26310000 	addiu	s1,s1,0
    4d60:	2410ffff 	li	s0,-1
    4d64:	27b20028 	addiu	s2,sp,40
    4d68:	8e245be4 	lw	a0,23524(s1)
    4d6c:	02402825 	move	a1,s2
    4d70:	0c000000 	jal	0 <func_800E11F0>
    4d74:	00003025 	move	a2,zero
    4d78:	5450fffc 	bnel	v0,s0,4d6c <func_800E5F34+0x28>
    4d7c:	8e245be4 	lw	a0,23524(s1)
    4d80:	8fbf0024 	lw	ra,36(sp)
    4d84:	8fb00018 	lw	s0,24(sp)
    4d88:	8fb1001c 	lw	s1,28(sp)
    4d8c:	8fb20020 	lw	s2,32(sp)
    4d90:	03e00008 	jr	ra
    4d94:	27bd0030 	addiu	sp,sp,48

00004d98 <func_800E5F88>:
    4d98:	27bdffd8 	addiu	sp,sp,-40
    4d9c:	afbf0014 	sw	ra,20(sp)
    4da0:	0c000000 	jal	0 <func_800E11F0>
    4da4:	afa40028 	sw	a0,40(sp)
    4da8:	3c030000 	lui	v1,0x0
    4dac:	24630000 	addiu	v1,v1,0
    4db0:	90623518 	lbu	v0,13592(v1)
    4db4:	10400014 	beqz	v0,4e08 <func_800E5F88+0x70>
    4db8:	00000000 	nop
    4dbc:	0c000000 	jal	0 <func_800E11F0>
    4dc0:	afa20024 	sw	v0,36(sp)
    4dc4:	3c030000 	lui	v1,0x0
    4dc8:	24630000 	addiu	v1,v1,0
    4dcc:	8fa70028 	lw	a3,40(sp)
    4dd0:	906e3519 	lbu	t6,13593(v1)
    4dd4:	8fa20024 	lw	v0,36(sp)
    4dd8:	14ee0003 	bne	a3,t6,4de8 <func_800E5F88+0x50>
    4ddc:	28410003 	slti	at,v0,3
    4de0:	10000010 	b	4e24 <func_800E5F88+0x8c>
    4de4:	2402fffe 	li	v0,-2
    4de8:	14200004 	bnez	at,4dfc <func_800E5F88+0x64>
    4dec:	27a50020 	addiu	a1,sp,32
    4df0:	a0673519 	sb	a3,13593(v1)
    4df4:	1000000b 	b	4e24 <func_800E5F88+0x8c>
    4df8:	2402fffd 	li	v0,-3
    4dfc:	8c645be4 	lw	a0,23524(v1)
    4e00:	0c000000 	jal	0 <func_800E11F0>
    4e04:	24060001 	li	a2,1
    4e08:	0c000000 	jal	0 <func_800E11F0>
    4e0c:	00000000 	nop
    4e10:	3c04f900 	lui	a0,0xf900
    4e14:	0c000000 	jal	0 <func_800E11F0>
    4e18:	8fa50028 	lw	a1,40(sp)
    4e1c:	0c000000 	jal	0 <func_800E11F0>
    4e20:	00000000 	nop
    4e24:	8fbf0014 	lw	ra,20(sp)
    4e28:	27bd0028 	addiu	sp,sp,40
    4e2c:	03e00008 	jr	ra
    4e30:	00000000 	nop

00004e34 <func_800E6024>:
    4e34:	27bdffe8 	addiu	sp,sp,-24
    4e38:	3c0f0000 	lui	t7,0x0
    4e3c:	afbf0014 	sw	ra,20(sp)
    4e40:	25ef0000 	addiu	t7,t7,0
    4e44:	240e0001 	li	t6,1
    4e48:	adee2984 	sw	t6,10628(t7)
    4e4c:	3c180000 	lui	t8,0x0
    4e50:	8f180000 	lw	t8,0(t8)
    4e54:	53000007 	beqzl	t8,4e74 <func_800E6024+0x40>
    4e58:	8fbf0014 	lw	ra,20(sp)
    4e5c:	0c000000 	jal	0 <func_800E11F0>
    4e60:	00002025 	move	a0,zero
    4e64:	3c190000 	lui	t9,0x0
    4e68:	27390000 	addiu	t9,t9,0
    4e6c:	a3203518 	sb	zero,13592(t9)
    4e70:	8fbf0014 	lw	ra,20(sp)
    4e74:	27bd0018 	addiu	sp,sp,24
    4e78:	03e00008 	jr	ra
    4e7c:	00000000 	nop

00004e80 <func_800E6070>:
    4e80:	00047080 	sll	t6,a0,0x2
    4e84:	01c47023 	subu	t6,t6,a0
    4e88:	000e7080 	sll	t6,t6,0x2
    4e8c:	01c47023 	subu	t6,t6,a0
    4e90:	3c0f0000 	lui	t7,0x0
    4e94:	25ef0000 	addiu	t7,t7,0
    4e98:	000e7140 	sll	t6,t6,0x5
    4e9c:	01cf1821 	addu	v1,t6,t7
    4ea0:	8c783530 	lw	t8,13616(v1)
    4ea4:	00054080 	sll	t0,a1,0x2
    4ea8:	00684821 	addu	t1,v1,t0
    4eac:	0018cfc2 	srl	t9,t8,0x1f
    4eb0:	53200006 	beqzl	t9,4ecc <func_800E6070+0x4c>
    4eb4:	2402ffff 	li	v0,-1
    4eb8:	8d243568 	lw	a0,13672(t1)
    4ebc:	00865021 	addu	t2,a0,a2
    4ec0:	03e00008 	jr	ra
    4ec4:	814200c4 	lb	v0,196(t2)
    4ec8:	2402ffff 	li	v0,-1
    4ecc:	03e00008 	jr	ra
    4ed0:	00000000 	nop

00004ed4 <func_800E60C4>:
    4ed4:	00047080 	sll	t6,a0,0x2
    4ed8:	01c47023 	subu	t6,t6,a0
    4edc:	000e7080 	sll	t6,t6,0x2
    4ee0:	01c47023 	subu	t6,t6,a0
    4ee4:	000e7140 	sll	t6,t6,0x5
    4ee8:	01c57821 	addu	t7,t6,a1
    4eec:	3c020000 	lui	v0,0x0
    4ef0:	004f1021 	addu	v0,v0,t7
    4ef4:	03e00008 	jr	ra
    4ef8:	80423688 	lb	v0,13960(v0)

00004efc <func_800E60EC>:
    4efc:	27bdffe8 	addiu	sp,sp,-24
    4f00:	00a03025 	move	a2,a1
    4f04:	00802825 	move	a1,a0
    4f08:	afa40018 	sw	a0,24(sp)
    4f0c:	afbf0014 	sw	ra,20(sp)
    4f10:	3c040000 	lui	a0,0x0
    4f14:	0c000000 	jal	0 <func_800E11F0>
    4f18:	248429a0 	addiu	a0,a0,10656
    4f1c:	8fbf0014 	lw	ra,20(sp)
    4f20:	27bd0018 	addiu	sp,sp,24
    4f24:	03e00008 	jr	ra
    4f28:	00000000 	nop

00004f2c <func_800E611C>:
    4f2c:	3c010000 	lui	at,0x0
    4f30:	03e00008 	jr	ra
    4f34:	ac2029a0 	sw	zero,10656(at)

00004f38 <func_800E6128>:
    4f38:	90ae0000 	lbu	t6,0(a1)
    4f3c:	25cfffbf 	addiu	t7,t6,-65
    4f40:	2de1000e 	sltiu	at,t7,14
    4f44:	10200070 	beqz	at,5108 <L800E62F8>
    4f48:	000f7880 	sll	t7,t7,0x2
    4f4c:	3c010000 	lui	at,0x0
    4f50:	002f0821 	addu	at,at,t7
    4f54:	8c2f0000 	lw	t7,0(at)
    4f58:	01e00008 	jr	t7
    4f5c:	00000000 	nop

00004f60 <L800E6150>:
    4f60:	c4a00004 	lwc1	$f0,4(a1)
    4f64:	c484002c 	lwc1	$f4,44(a0)
    4f68:	46040032 	c.eq.s	$f0,$f4
    4f6c:	00000000 	nop
    4f70:	45010065 	bc1t	5108 <L800E62F8>
    4f74:	00000000 	nop
    4f78:	90990000 	lbu	t9,0(a0)
    4f7c:	e480002c 	swc1	$f0,44(a0)
    4f80:	37280004 	ori	t0,t9,0x4
    4f84:	03e00008 	jr	ra
    4f88:	a0880000 	sb	t0,0(a0)

00004f8c <L800E617C>:
    4f8c:	8ca90004 	lw	t1,4(a1)
    4f90:	00095080 	sll	t2,t1,0x2
    4f94:	01495023 	subu	t2,t2,t1
    4f98:	000a5100 	sll	t2,t2,0x4
    4f9c:	03e00008 	jr	ra
    4fa0:	a48a0008 	sh	t2,8(a0)

00004fa4 <L800E6194>:
    4fa4:	8cab0004 	lw	t3,4(a1)
    4fa8:	000b6080 	sll	t4,t3,0x2
    4fac:	018b6023 	subu	t4,t4,t3
    4fb0:	000c6100 	sll	t4,t4,0x4
    4fb4:	03e00008 	jr	ra
    4fb8:	a48c000c 	sh	t4,12(a0)

00004fbc <L800E61AC>:
    4fbc:	8cad0004 	lw	t5,4(a1)
    4fc0:	03e00008 	jr	ra
    4fc4:	a48d000c 	sh	t5,12(a0)

00004fc8 <L800E61B8>:
    4fc8:	80ae0004 	lb	t6,4(a1)
    4fcc:	03e00008 	jr	ra
    4fd0:	a48e000e 	sh	t6,14(a0)

00004fd4 <L800E61C4>:
    4fd4:	90b80003 	lbu	t8,3(a1)
    4fd8:	80af0004 	lb	t7,4(a1)
    4fdc:	0098c821 	addu	t9,a0,t8
    4fe0:	03e00008 	jr	ra
    4fe4:	a32f0158 	sb	t7,344(t9)

00004fe8 <L800E61D8>:
    4fe8:	90a80002 	lbu	t0,2(a1)
    4fec:	3c0142fe 	lui	at,0x42fe
    4ff0:	44815000 	mtc1	at,$f10
    4ff4:	44883000 	mtc1	t0,$f6
    4ff8:	00000000 	nop
    4ffc:	46803220 	cvt.s.w	$f8,$f6
    5000:	1000000a 	b	502c <L800E61F8+0x24>
    5004:	460a4003 	div.s	$f0,$f8,$f10

00005008 <L800E61F8>:
    5008:	90a90002 	lbu	t1,2(a1)
    500c:	3c0142c8 	lui	at,0x42c8
    5010:	44812000 	mtc1	at,$f4
    5014:	44898000 	mtc1	t1,$f16
    5018:	c488001c 	lwc1	$f8,28(a0)
    501c:	468084a0 	cvt.s.w	$f18,$f16
    5020:	46049183 	div.s	$f6,$f18,$f4
    5024:	46083002 	mul.s	$f0,$f6,$f8
    5028:	00000000 	nop
    502c:	908a0001 	lbu	t2,1(a0)
    5030:	24010002 	li	at,2
    5034:	11410034 	beq	t2,at,5108 <L800E62F8>
    5038:	00000000 	nop
    503c:	c482001c 	lwc1	$f2,28(a0)
    5040:	e4820024 	swc1	$f2,36(a0)
    5044:	8ca20004 	lw	v0,4(a1)
    5048:	54400004 	bnezl	v0,505c <L800E61F8+0x54>
    504c:	44828000 	mtc1	v0,$f16
    5050:	03e00008 	jr	ra
    5054:	e480001c 	swc1	$f0,28(a0)
    5058:	44828000 	mtc1	v0,$f16
    505c:	46020281 	sub.s	$f10,$f0,$f2
    5060:	a0800001 	sb	zero,1(a0)
    5064:	a4820012 	sh	v0,18(a0)
    5068:	468084a0 	cvt.s.w	$f18,$f16
    506c:	46125103 	div.s	$f4,$f10,$f18
    5070:	03e00008 	jr	ra
    5074:	e4840020 	swc1	$f4,32(a0)

00005078 <L800E6268>:
    5078:	908b0001 	lbu	t3,1(a0)
    507c:	24010002 	li	at,2
    5080:	11610021 	beq	t3,at,5108 <L800E62F8>
    5084:	00000000 	nop
    5088:	8ca20004 	lw	v0,4(a1)
    508c:	54400005 	bnezl	v0,50a4 <L800E6268+0x2c>
    5090:	44829000 	mtc1	v0,$f18
    5094:	c4860024 	lwc1	$f6,36(a0)
    5098:	03e00008 	jr	ra
    509c:	e486001c 	swc1	$f6,28(a0)
    50a0:	44829000 	mtc1	v0,$f18
    50a4:	c4880024 	lwc1	$f8,36(a0)
    50a8:	c490001c 	lwc1	$f16,28(a0)
    50ac:	46809120 	cvt.s.w	$f4,$f18
    50b0:	a0800001 	sb	zero,1(a0)
    50b4:	a4820012 	sh	v0,18(a0)
    50b8:	46104281 	sub.s	$f10,$f8,$f16
    50bc:	46045183 	div.s	$f6,$f10,$f4
    50c0:	03e00008 	jr	ra
    50c4:	e4860020 	swc1	$f6,32(a0)

000050c8 <L800E62B8>:
    50c8:	c4a80004 	lwc1	$f8,4(a1)
    50cc:	3c013f80 	lui	at,0x3f80
    50d0:	44818000 	mtc1	at,$f16
    50d4:	e4880034 	swc1	$f8,52(a0)
    50d8:	c4920034 	lwc1	$f18,52(a0)
    50dc:	46128032 	c.eq.s	$f16,$f18
    50e0:	00000000 	nop
    50e4:	45020006 	bc1fl	5100 <L800E62B8+0x38>
    50e8:	90980000 	lbu	t8,0(a0)
    50ec:	908c0000 	lbu	t4,0(a0)
    50f0:	318dfffe 	andi	t5,t4,0xfffe
    50f4:	03e00008 	jr	ra
    50f8:	a08d0000 	sb	t5,0(a0)
    50fc:	90980000 	lbu	t8,0(a0)
    5100:	370f0001 	ori	t7,t8,0x1
    5104:	a08f0000 	sb	t7,0(a0)

00005108 <L800E62F8>:
    5108:	03e00008 	jr	ra
    510c:	00000000 	nop

00005110 <func_800E6300>:
    5110:	90ae0000 	lbu	t6,0(a1)
    5114:	25cfffff 	addiu	t7,t6,-1
    5118:	2de1000e 	sltiu	at,t7,14
    511c:	10200066 	beqz	at,52b8 <L800E64A0+0x8>
    5120:	000f7880 	sll	t7,t7,0x2
    5124:	3c010000 	lui	at,0x0
    5128:	002f0821 	addu	at,at,t7
    512c:	8c2f0000 	lw	t7,0(at)
    5130:	01e00008 	jr	t7
    5134:	00000000 	nop

00005138 <L800E6328>:
    5138:	c4a00004 	lwc1	$f0,4(a1)
    513c:	c4840028 	lwc1	$f4,40(a0)
    5140:	46040032 	c.eq.s	$f0,$f4
    5144:	00000000 	nop
    5148:	4501005b 	bc1t	52b8 <L800E64A0+0x8>
    514c:	00000000 	nop
    5150:	90990001 	lbu	t9,1(a0)
    5154:	e4800028 	swc1	$f0,40(a0)
    5158:	37280040 	ori	t0,t9,0x40
    515c:	03e00008 	jr	ra
    5160:	a0880001 	sb	t0,1(a0)

00005164 <L800E6354>:
    5164:	c4a00004 	lwc1	$f0,4(a1)
    5168:	c486002c 	lwc1	$f6,44(a0)
    516c:	46060032 	c.eq.s	$f0,$f6
    5170:	00000000 	nop
    5174:	45010050 	bc1t	52b8 <L800E64A0+0x8>
    5178:	00000000 	nop
    517c:	908a0001 	lbu	t2,1(a0)
    5180:	e480002c 	swc1	$f0,44(a0)
    5184:	354b0040 	ori	t3,t2,0x40
    5188:	03e00008 	jr	ra
    518c:	a08b0001 	sb	t3,1(a0)

00005190 <L800E6380>:
    5190:	80a20004 	lb	v0,4(a1)
    5194:	908c000a 	lbu	t4,10(a0)
    5198:	104c0047 	beq	v0,t4,52b8 <L800E64A0+0x8>
    519c:	00000000 	nop
    51a0:	908e0001 	lbu	t6,1(a0)
    51a4:	a082000a 	sb	v0,10(a0)
    51a8:	35cf0020 	ori	t7,t6,0x20
    51ac:	03e00008 	jr	ra
    51b0:	a08f0001 	sb	t7,1(a0)

000051b4 <L800E63A4>:
    51b4:	80a20004 	lb	v0,4(a1)
    51b8:	9098000a 	lbu	t8,10(a0)
    51bc:	1058003e 	beq	v0,t8,52b8 <L800E64A0+0x8>
    51c0:	00000000 	nop
    51c4:	90880001 	lbu	t0,1(a0)
    51c8:	a082000b 	sb	v0,11(a0)
    51cc:	35090020 	ori	t1,t0,0x20
    51d0:	03e00008 	jr	ra
    51d4:	a0890001 	sb	t1,1(a0)

000051d8 <L800E63C8>:
    51d8:	c4a00004 	lwc1	$f0,4(a1)
    51dc:	c4880038 	lwc1	$f8,56(a0)
    51e0:	46080032 	c.eq.s	$f0,$f8
    51e4:	00000000 	nop
    51e8:	45010033 	bc1t	52b8 <L800E64A0+0x8>
    51ec:	00000000 	nop
    51f0:	908b0001 	lbu	t3,1(a0)
    51f4:	e4800038 	swc1	$f0,56(a0)
    51f8:	356c0080 	ori	t4,t3,0x80
    51fc:	03e00008 	jr	ra
    5200:	a08c0001 	sb	t4,1(a0)

00005204 <L800E63F4>:
    5204:	80a20004 	lb	v0,4(a1)
    5208:	908d0004 	lbu	t5,4(a0)
    520c:	104d002a 	beq	v0,t5,52b8 <L800E64A0+0x8>
    5210:	00000000 	nop
    5214:	03e00008 	jr	ra
    5218:	a0820004 	sb	v0,4(a0)

0000521c <L800E640C>:
    521c:	90a20003 	lbu	v0,3(a1)
    5220:	28410008 	slti	at,v0,8
    5224:	10200024 	beqz	at,52b8 <L800E64A0+0x8>
    5228:	00000000 	nop
    522c:	80ae0004 	lb	t6,4(a1)
    5230:	00827821 	addu	t7,a0,v0
    5234:	03e00008 	jr	ra
    5238:	a1ee00c4 	sb	t6,196(t7)

0000523c <L800E642C>:
    523c:	80b90004 	lb	t9,4(a1)
    5240:	908a0000 	lbu	t2,0(a0)
    5244:	00194100 	sll	t0,t9,0x4
    5248:	31090010 	andi	t1,t0,0x10
    524c:	314bffef 	andi	t3,t2,0xffef
    5250:	012b6025 	or	t4,t1,t3
    5254:	03e00008 	jr	ra
    5258:	a08c0000 	sb	t4,0(a0)

0000525c <L800E644C>:
    525c:	80ad0004 	lb	t5,4(a1)
    5260:	03e00008 	jr	ra
    5264:	a08d0003 	sb	t5,3(a0)

00005268 <L800E6458>:
    5268:	90ae0004 	lbu	t6,4(a1)
    526c:	24180001 	li	t8,1
    5270:	a498001a 	sh	t8,26(a0)
    5274:	000e78c0 	sll	t7,t6,0x3
    5278:	03e00008 	jr	ra
    527c:	a48f0016 	sh	t7,22(a0)

00005280 <L800E6470>:
    5280:	90b90004 	lbu	t9,4(a1)
    5284:	240a0001 	li	t2,1
    5288:	a48a0018 	sh	t2,24(a0)
    528c:	00194140 	sll	t0,t9,0x5
    5290:	03e00008 	jr	ra
    5294:	a4880014 	sh	t0,20(a0)

00005298 <L800E6488>:
    5298:	90a90004 	lbu	t1,4(a1)
    529c:	03e00008 	jr	ra
    52a0:	a089000f 	sb	t1,15(a0)

000052a4 <L800E6494>:
    52a4:	94ab0004 	lhu	t3,4(a1)
    52a8:	03e00008 	jr	ra
    52ac:	a48b0020 	sh	t3,32(a0)

000052b0 <L800E64A0>:
    52b0:	90ac0004 	lbu	t4,4(a1)
    52b4:	a08c00d0 	sb	t4,208(a0)
    52b8:	03e00008 	jr	ra
    52bc:	00000000 	nop

000052c0 <func_800E64B0>:
    52c0:	308e00ff 	andi	t6,a0,0xff
    52c4:	27bdffe8 	addiu	sp,sp,-24
    52c8:	000e7c00 	sll	t7,t6,0x10
    52cc:	3c01fa00 	lui	at,0xfa00
    52d0:	30a800ff 	andi	t0,a1,0xff
    52d4:	00084a00 	sll	t1,t0,0x8
    52d8:	01e1c025 	or	t8,t7,at
    52dc:	afbf0014 	sw	ra,20(sp)
    52e0:	afa5001c 	sw	a1,28(sp)
    52e4:	03095025 	or	t2,t8,t1
    52e8:	30cb00ff 	andi	t3,a2,0xff
    52ec:	014b2025 	or	a0,t2,t3
    52f0:	0c000000 	jal	0 <func_800E11F0>
    52f4:	24050001 	li	a1,1
    52f8:	8fbf0014 	lw	ra,20(sp)
    52fc:	27bd0018 	addiu	sp,sp,24
    5300:	03e00008 	jr	ra
    5304:	00000000 	nop

00005308 <func_800E64F8>:
    5308:	27bdffe8 	addiu	sp,sp,-24
    530c:	afbf0014 	sw	ra,20(sp)
    5310:	3c04fa00 	lui	a0,0xfa00
    5314:	0c000000 	jal	0 <func_800E11F0>
    5318:	00002825 	move	a1,zero
    531c:	8fbf0014 	lw	ra,20(sp)
    5320:	27bd0018 	addiu	sp,sp,24
    5324:	03e00008 	jr	ra
    5328:	00000000 	nop

0000532c <func_800E651C>:
    532c:	27bdffe8 	addiu	sp,sp,-24
    5330:	00a03025 	move	a2,a1
    5334:	00802825 	move	a1,a0
    5338:	afa40018 	sw	a0,24(sp)
    533c:	afbf0014 	sw	ra,20(sp)
    5340:	30c400ff 	andi	a0,a2,0xff
    5344:	3c01fd00 	lui	at,0xfd00
    5348:	0c000000 	jal	0 <func_800E11F0>
    534c:	00812025 	or	a0,a0,at
    5350:	8fbf0014 	lw	ra,20(sp)
    5354:	27bd0018 	addiu	sp,sp,24
    5358:	03e00008 	jr	ra
    535c:	00000000 	nop

00005360 <func_800E6550>:
    5360:	27bdffe8 	addiu	sp,sp,-24
    5364:	afbf0014 	sw	ra,20(sp)
    5368:	3c040000 	lui	a0,0x0
    536c:	8c840000 	lw	a0,0(a0)
    5370:	00002825 	move	a1,zero
    5374:	0c000000 	jal	0 <func_800E11F0>
    5378:	00003025 	move	a2,zero
    537c:	3c040000 	lui	a0,0x0
    5380:	8c840000 	lw	a0,0(a0)
    5384:	00002825 	move	a1,zero
    5388:	0c000000 	jal	0 <func_800E11F0>
    538c:	24060001 	li	a2,1
    5390:	8fbf0014 	lw	ra,20(sp)
    5394:	27bd0018 	addiu	sp,sp,24
    5398:	03e00008 	jr	ra
    539c:	00000000 	nop

000053a0 <func_800E6590>:
    53a0:	00047080 	sll	t6,a0,0x2
    53a4:	01c47023 	subu	t6,t6,a0
    53a8:	000e7080 	sll	t6,t6,0x2
    53ac:	01c47023 	subu	t6,t6,a0
    53b0:	3c0f0000 	lui	t7,0x0
    53b4:	25ef0000 	addiu	t7,t7,0
    53b8:	000e7140 	sll	t6,t6,0x5
    53bc:	01cf1021 	addu	v0,t6,t7
    53c0:	8c583530 	lw	t8,13616(v0)
    53c4:	00054080 	sll	t0,a1,0x2
    53c8:	00484821 	addu	t1,v0,t0
    53cc:	0018cfc2 	srl	t9,t8,0x1f
    53d0:	5320002d 	beqzl	t9,5488 <func_800E6590+0xe8>
    53d4:	00001025 	move	v0,zero
    53d8:	8d233568 	lw	v1,13672(t1)
    53dc:	00066080 	sll	t4,a2,0x2
    53e0:	8c6a0000 	lw	t2,0(v1)
    53e4:	006c6821 	addu	t5,v1,t4
    53e8:	000a5fc2 	srl	t3,t2,0x1f
    53ec:	51600026 	beqzl	t3,5488 <func_800E6590+0xe8>
    53f0:	00001025 	move	v0,zero
    53f4:	8da20050 	lw	v0,80(t5)
    53f8:	54400004 	bnezl	v0,540c <func_800E6590+0x6c>
    53fc:	8c430000 	lw	v1,0(v0)
    5400:	03e00008 	jr	ra
    5404:	00001025 	move	v0,zero
    5408:	8c430000 	lw	v1,0(v0)
    540c:	000377c2 	srl	t6,v1,0x1f
    5410:	51c0001d 	beqzl	t6,5488 <func_800E6590+0xe8>
    5414:	00001025 	move	v0,zero
    5418:	8c44002c 	lw	a0,44(v0)
    541c:	0003c100 	sll	t8,v1,0x4
    5420:	14800003 	bnez	a0,5430 <func_800E6590+0x90>
    5424:	00000000 	nop
    5428:	03e00008 	jr	ra
    542c:	00001025 	move	v0,zero
    5430:	07020004 	bltzl	t8,5444 <func_800E6590+0xa4>
    5434:	8c990044 	lw	t9,68(a0)
    5438:	03e00008 	jr	ra
    543c:	00001025 	move	v0,zero
    5440:	8c990044 	lw	t9,68(a0)
    5444:	00801825 	move	v1,a0
    5448:	1459000c 	bne	v0,t9,547c <func_800E6590+0xdc>
    544c:	00000000 	nop
    5450:	8c8400d0 	lw	a0,208(a0)
    5454:	54800004 	bnezl	a0,5468 <func_800E6590+0xc8>
    5458:	8c880000 	lw	t0,0(a0)
    545c:	03e00008 	jr	ra
    5460:	00001025 	move	v0,zero
    5464:	8c880000 	lw	t0,0(a0)
    5468:	8c660018 	lw	a2,24(v1)
    546c:	8d090008 	lw	t1,8(t0)
    5470:	8d250004 	lw	a1,4(t1)
    5474:	03e00008 	jr	ra
    5478:	00a61023 	subu	v0,a1,a2
    547c:	03e00008 	jr	ra
    5480:	00001025 	move	v0,zero
    5484:	00001025 	move	v0,zero
    5488:	03e00008 	jr	ra
    548c:	00000000 	nop

00005490 <func_800E6680>:
    5490:	27bdffe8 	addiu	sp,sp,-24
    5494:	afbf0014 	sw	ra,20(sp)
    5498:	0c000000 	jal	0 <func_800E11F0>
    549c:	00002025 	move	a0,zero
    54a0:	8fbf0014 	lw	ra,20(sp)
    54a4:	27bd0018 	addiu	sp,sp,24
    54a8:	03e00008 	jr	ra
    54ac:	00000000 	nop

000054b0 <func_800E66A0>:
    54b0:	27bdffe8 	addiu	sp,sp,-24
    54b4:	afbf0014 	sw	ra,20(sp)
    54b8:	0c000000 	jal	0 <func_800E11F0>
    54bc:	24040002 	li	a0,2
    54c0:	8fbf0014 	lw	ra,20(sp)
    54c4:	27bd0018 	addiu	sp,sp,24
    54c8:	03e00008 	jr	ra
    54cc:	00000000 	nop

000054d0 <func_800E66C0>:
    54d0:	3c0a0000 	lui	t2,0x0
    54d4:	254a0000 	addiu	t2,t2,0
    54d8:	8d452894 	lw	a1,10388(t2)
    54dc:	27bdfff8 	addiu	sp,sp,-8
    54e0:	afb00004 	sw	s0,4(sp)
    54e4:	00808025 	move	s0,a0
    54e8:	18a00035 	blez	a1,55c0 <func_800E66C0+0xf0>
    54ec:	00001825 	move	v1,zero
    54f0:	00002025 	move	a0,zero
    54f4:	240b0001 	li	t3,1
    54f8:	8d4e352c 	lw	t6,13612(t2)
    54fc:	008e1021 	addu	v0,a0,t6
    5500:	8c4f00c0 	lw	t7,192(v0)
    5504:	248400e0 	addiu	a0,a0,224
    5508:	24460030 	addiu	a2,v0,48
    550c:	000fc7c2 	srl	t8,t7,0x1f
    5510:	53000026 	beqzl	t8,55ac <func_800E66C0+0xdc>
    5514:	000510c0 	sll	v0,a1,0x3
    5518:	90c90040 	lbu	t1,64(a2)
    551c:	2a010002 	slti	at,s0,2
    5520:	3139000f 	andi	t9,t1,0xf
    5524:	53200021 	beqzl	t9,55ac <func_800E66C0+0xdc>
    5528:	000510c0 	sll	v0,a1,0x3
    552c:	14200016 	bnez	at,5588 <func_800E66C0+0xb8>
    5530:	244700c0 	addiu	a3,v0,192
    5534:	8ce80010 	lw	t0,16(a3)
    5538:	000510c0 	sll	v0,a1,0x3
    553c:	00451023 	subu	v0,v0,a1
    5540:	11000005 	beqz	t0,5558 <func_800E66C0+0x88>
    5544:	00000000 	nop
    5548:	8cec0000 	lw	t4,0(a3)
    554c:	000c7340 	sll	t6,t4,0xd
    5550:	05c30004 	bgezl	t6,5564 <func_800E66C0+0x94>
    5554:	8d0f0000 	lw	t7,0(t0)
    5558:	10000016 	b	55b4 <func_800E66C0+0xe4>
    555c:	00021140 	sll	v0,v0,0x5
    5560:	8d0f0000 	lw	t7,0(t0)
    5564:	000510c0 	sll	v0,a1,0x3
    5568:	00451023 	subu	v0,v0,a1
    556c:	8df80000 	lw	t8,0(t7)
    5570:	0018c900 	sll	t9,t8,0x4
    5574:	00196782 	srl	t4,t9,0x1e
    5578:	55800004 	bnezl	t4,558c <func_800E66C0+0xbc>
    557c:	320d0001 	andi	t5,s0,0x1
    5580:	1000000c 	b	55b4 <func_800E66C0+0xe4>
    5584:	00021140 	sll	v0,v0,0x5
    5588:	320d0001 	andi	t5,s0,0x1
    558c:	156d0006 	bne	t3,t5,55a8 <func_800E66C0+0xd8>
    5590:	24630001 	addiu	v1,v1,1
    5594:	c5442864 	lwc1	$f4,10340(t2)
    5598:	352f0010 	ori	t7,t1,0x10
    559c:	a0cf0040 	sb	t7,64(a2)
    55a0:	e4c4004c 	swc1	$f4,76(a2)
    55a4:	8d452894 	lw	a1,10388(t2)
    55a8:	000510c0 	sll	v0,a1,0x3
    55ac:	00451023 	subu	v0,v0,a1
    55b0:	00021140 	sll	v0,v0,0x5
    55b4:	0082082a 	slt	at,a0,v0
    55b8:	5420ffd0 	bnezl	at,54fc <func_800E66C0+0x2c>
    55bc:	8d4e352c 	lw	t6,13612(t2)
    55c0:	8fb00004 	lw	s0,4(sp)
    55c4:	27bd0008 	addiu	sp,sp,8
    55c8:	03e00008 	jr	ra
    55cc:	00601025 	move	v0,v1

000055d0 <func_800E67C0>:
    55d0:	27bdffe8 	addiu	sp,sp,-24
    55d4:	afbf0014 	sw	ra,20(sp)
    55d8:	0c000000 	jal	0 <func_800E11F0>
    55dc:	00000000 	nop
    55e0:	3c040000 	lui	a0,0x0
    55e4:	24840000 	addiu	a0,a0,0
    55e8:	3c030000 	lui	v1,0x0
    55ec:	8c630000 	lw	v1,0(v1)
    55f0:	8c8f289c 	lw	t7,10396(a0)
    55f4:	3c010123 	lui	at,0x123
    55f8:	34214567 	ori	at,at,0x4567
    55fc:	00417021 	addu	t6,v0,at
    5600:	006fc021 	addu	t8,v1,t7
    5604:	01d80019 	multu	t6,t8
    5608:	8c99297c 	lw	t9,10620(a0)
    560c:	8fbf0014 	lw	ra,20(sp)
    5610:	3c010000 	lui	at,0x0
    5614:	27bd0018 	addiu	sp,sp,24
    5618:	00001812 	mflo	v1
    561c:	00791021 	addu	v0,v1,t9
    5620:	03e00008 	jr	ra
    5624:	ac220000 	sw	v0,0(at)

00005628 <func_800E6818>:
    5628:	27bdffe8 	addiu	sp,sp,-24
    562c:	afbf0014 	sw	ra,20(sp)
    5630:	0c000000 	jal	0 <func_800E11F0>
    5634:	00000000 	nop
    5638:	8fbf0014 	lw	ra,20(sp)
    563c:	27bd0018 	addiu	sp,sp,24
    5640:	03e00008 	jr	ra
    5644:	00000000 	nop
	...
