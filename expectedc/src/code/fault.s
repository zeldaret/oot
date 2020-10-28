
build/src/code/fault.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Fault_SleepImpl>:
       0:	3c0ffffa 	lui	t7,0xfffa
       4:	03a0c025 	move	t8,sp
       8:	27bdffe8 	addiu	sp,sp,-24
       c:	35ef5a5a 	ori	t7,t7,0x5a5a
      10:	2718fff8 	addiu	t8,t8,-8
      14:	af0f0000 	sw	t7,0(t8)
      18:	171dfffd 	bne	t8,sp,10 <Fault_SleepImpl+0x10>
      1c:	af0f0004 	sw	t7,4(t8)
      20:	afbf0014 	sw	ra,20(sp)
      24:	afa40018 	sw	a0,24(sp)
      28:	3c0702cb 	lui	a3,0x2cb
      2c:	34e74178 	ori	a3,a3,0x4178
      30:	8fa50018 	lw	a1,24(sp)
      34:	24040000 	li	a0,0
      38:	0c000000 	jal	0 <Fault_SleepImpl>
      3c:	24060000 	li	a2,0
      40:	00402025 	move	a0,v0
      44:	00602825 	move	a1,v1
      48:	24060000 	li	a2,0
      4c:	0c000000 	jal	0 <Fault_SleepImpl>
      50:	240703e8 	li	a3,1000
      54:	00402025 	move	a0,v0
      58:	0c000000 	jal	0 <Fault_SleepImpl>
      5c:	00602825 	move	a1,v1
      60:	8fbf0014 	lw	ra,20(sp)
      64:	27bd0018 	addiu	sp,sp,24
      68:	03e00008 	jr	ra
      6c:	00000000 	nop

00000070 <Fault_ClientProcessThread>:
      70:	3c0efffa 	lui	t6,0xfffa
      74:	03a07825 	move	t7,sp
      78:	27bdffe8 	addiu	sp,sp,-24
      7c:	35ce5a5a 	ori	t6,t6,0x5a5a
      80:	25effff8 	addiu	t7,t7,-8
      84:	adee0000 	sw	t6,0(t7)
      88:	15fdfffd 	bne	t7,sp,80 <Fault_ClientProcessThread+0x10>
      8c:	adee0004 	sw	t6,4(t7)
      90:	afbf0014 	sw	ra,20(sp)
      94:	00803825 	move	a3,a0
      98:	8ce20000 	lw	v0,0(a3)
      9c:	50400008 	beqzl	v0,c0 <Fault_ClientProcessThread+0x50>
      a0:	8ce40010 	lw	a0,16(a3)
      a4:	8ce40004 	lw	a0,4(a3)
      a8:	8ce50008 	lw	a1,8(a3)
      ac:	0040f809 	jalr	v0
      b0:	afa70018 	sw	a3,24(sp)
      b4:	8fa70018 	lw	a3,24(sp)
      b8:	ace2000c 	sw	v0,12(a3)
      bc:	8ce40010 	lw	a0,16(a3)
      c0:	24060001 	li	a2,1
      c4:	50800004 	beqzl	a0,d8 <Fault_ClientProcessThread+0x68>
      c8:	8fbf0014 	lw	ra,20(sp)
      cc:	0c000000 	jal	0 <Fault_SleepImpl>
      d0:	8ce50014 	lw	a1,20(a3)
      d4:	8fbf0014 	lw	ra,20(sp)
      d8:	27bd0018 	addiu	sp,sp,24
      dc:	03e00008 	jr	ra
      e0:	00000000 	nop

000000e4 <Fault_ProcessClientContext>:
      e4:	3c0dfffa 	lui	t5,0xfffa
      e8:	03a07025 	move	t6,sp
      ec:	27bdff58 	addiu	sp,sp,-168
      f0:	35ad5a5a 	ori	t5,t5,0x5a5a
      f4:	25cefff8 	addiu	t6,t6,-8
      f8:	adcd0000 	sw	t5,0(t6)
      fc:	15ddfffd 	bne	t6,sp,f4 <Fault_ProcessClientContext+0x10>
     100:	adcd0004 	sw	t5,4(t6)
     104:	afbe0050 	sw	s8,80(sp)
     108:	afb00038 	sw	s0,56(sp)
     10c:	27b00090 	addiu	s0,sp,144
     110:	03a0f025 	move	s8,sp
     114:	afbf0054 	sw	ra,84(sp)
     118:	afb5004c 	sw	s5,76(sp)
     11c:	afb40048 	sw	s4,72(sp)
     120:	afb30044 	sw	s3,68(sp)
     124:	afb20040 	sw	s2,64(sp)
     128:	afb1003c 	sw	s1,60(sp)
     12c:	afa400a8 	sw	a0,168(sp)
     130:	0000a825 	move	s5,zero
     134:	02002025 	move	a0,s0
     138:	27c5008c 	addiu	a1,s8,140
     13c:	0c000000 	jal	0 <Fault_SleepImpl>
     140:	24060001 	li	a2,1
     144:	8fc700a8 	lw	a3,168(s8)
     148:	3c0e0000 	lui	t6,0x0
     14c:	3c060000 	lui	a2,0x0
     150:	acf00010 	sw	s0,16(a3)
     154:	ace00014 	sw	zero,20(a3)
     158:	8dce0000 	lw	t6,0(t6)
     15c:	24c60000 	addiu	a2,a2,0
     160:	24050002 	li	a1,2
     164:	8dc20848 	lw	v0,2120(t6)
     168:	240f007e 	li	t7,126
     16c:	1040000b 	beqz	v0,19c <Fault_ProcessClientContext+0xb8>
     170:	00000000 	nop
     174:	27bdfe50 	addiu	sp,sp,-432
     178:	27b50020 	addiu	s5,sp,32
     17c:	02a02025 	move	a0,s5
     180:	afa20010 	sw	v0,16(sp)
     184:	0c000000 	jal	0 <Fault_SleepImpl>
     188:	afaf0014 	sw	t7,20(sp)
     18c:	0c000000 	jal	0 <Fault_SleepImpl>
     190:	02a02025 	move	a0,s5
     194:	10000003 	b	1a4 <Fault_ProcessClientContext+0xc0>
     198:	00000000 	nop
     19c:	0c000000 	jal	0 <Fault_SleepImpl>
     1a0:	00e02025 	move	a0,a3
     1a4:	3c130000 	lui	s3,0x0
     1a8:	26730000 	addiu	s3,s3,0
     1ac:	27d40060 	addiu	s4,s8,96
     1b0:	2412029a 	li	s2,666
     1b4:	27d10088 	addiu	s1,s8,136
     1b8:	3c0702cb 	lui	a3,0x2cb
     1bc:	24180000 	li	t8,0
     1c0:	24190000 	li	t9,0
     1c4:	2408029a 	li	t0,666
     1c8:	afa8001c 	sw	t0,28(sp)
     1cc:	afb90014 	sw	t9,20(sp)
     1d0:	afb80010 	sw	t8,16(sp)
     1d4:	34e74178 	ori	a3,a3,0x4178
     1d8:	02802025 	move	a0,s4
     1dc:	24060000 	li	a2,0
     1e0:	0c000000 	jal	0 <Fault_SleepImpl>
     1e4:	afb00018 	sw	s0,24(sp)
     1e8:	02002025 	move	a0,s0
     1ec:	02202825 	move	a1,s1
     1f0:	0c000000 	jal	0 <Fault_SleepImpl>
     1f4:	24060001 	li	a2,1
     1f8:	8fc90088 	lw	t1,136(s8)
     1fc:	15320007 	bne	t1,s2,21c <Fault_ProcessClientContext+0x138>
     200:	00000000 	nop
     204:	926a0000 	lbu	t2,0(s3)
     208:	5540ffec 	bnezl	t2,1bc <Fault_ProcessClientContext+0xd8>
     20c:	3c0702cb 	lui	a3,0x2cb
     210:	8fcc00a8 	lw	t4,168(s8)
     214:	240bffff 	li	t3,-1
     218:	ad8b000c 	sw	t3,12(t4)
     21c:	0c000000 	jal	0 <Fault_SleepImpl>
     220:	02802025 	move	a0,s4
     224:	52a00006 	beqzl	s5,240 <Fault_ProcessClientContext+0x15c>
     228:	8fdf0054 	lw	ra,84(s8)
     22c:	0c000000 	jal	0 <Fault_SleepImpl>
     230:	02a02025 	move	a0,s5
     234:	0c000000 	jal	0 <Fault_SleepImpl>
     238:	02a02025 	move	a0,s5
     23c:	8fdf0054 	lw	ra,84(s8)
     240:	03c0e825 	move	sp,s8
     244:	8fd00038 	lw	s0,56(s8)
     248:	8fd1003c 	lw	s1,60(s8)
     24c:	8fd20040 	lw	s2,64(s8)
     250:	8fd30044 	lw	s3,68(s8)
     254:	8fd40048 	lw	s4,72(s8)
     258:	8fd5004c 	lw	s5,76(s8)
     25c:	8fde0050 	lw	s8,80(s8)
     260:	03e00008 	jr	ra
     264:	27bd00a8 	addiu	sp,sp,168

00000268 <Fault_ProcessClient>:
     268:	3c0efffa 	lui	t6,0xfffa
     26c:	03a07825 	move	t7,sp
     270:	27bdffd0 	addiu	sp,sp,-48
     274:	35ce5a5a 	ori	t6,t6,0x5a5a
     278:	25effff8 	addiu	t7,t7,-8
     27c:	adee0000 	sw	t6,0(t7)
     280:	15fdfffd 	bne	t7,sp,278 <Fault_ProcessClient+0x10>
     284:	adee0004 	sw	t6,4(t7)
     288:	afbf0014 	sw	ra,20(sp)
     28c:	00803825 	move	a3,a0
     290:	afa70018 	sw	a3,24(sp)
     294:	afa5001c 	sw	a1,28(sp)
     298:	afa60020 	sw	a2,32(sp)
     29c:	afa00024 	sw	zero,36(sp)
     2a0:	0c000000 	jal	0 <Fault_SleepImpl>
     2a4:	27a40018 	addiu	a0,sp,24
     2a8:	8fa20024 	lw	v0,36(sp)
     2ac:	8fbf0014 	lw	ra,20(sp)
     2b0:	27bd0030 	addiu	sp,sp,48
     2b4:	03e00008 	jr	ra
     2b8:	00000000 	nop

000002bc <Fault_AddClient>:
     2bc:	3c0dfffa 	lui	t5,0xfffa
     2c0:	03a07025 	move	t6,sp
     2c4:	27bdffd8 	addiu	sp,sp,-40
     2c8:	35ad5a5a 	ori	t5,t5,0x5a5a
     2cc:	25cefff8 	addiu	t6,t6,-8
     2d0:	adcd0000 	sw	t5,0(t6)
     2d4:	15ddfffd 	bne	t6,sp,2cc <Fault_AddClient+0x10>
     2d8:	adcd0004 	sw	t5,4(t6)
     2dc:	afb00018 	sw	s0,24(sp)
     2e0:	00808025 	move	s0,a0
     2e4:	afbf001c 	sw	ra,28(sp)
     2e8:	afa5002c 	sw	a1,44(sp)
     2ec:	afa60030 	sw	a2,48(sp)
     2f0:	afa70034 	sw	a3,52(sp)
     2f4:	afa00020 	sw	zero,32(sp)
     2f8:	0c000000 	jal	0 <Fault_SleepImpl>
     2fc:	24040001 	li	a0,1
     300:	3c050000 	lui	a1,0x0
     304:	24a50000 	addiu	a1,a1,0
     308:	00402025 	move	a0,v0
     30c:	8cae0000 	lw	t6,0(a1)
     310:	240f0001 	li	t7,1
     314:	8fb8002c 	lw	t8,44(sp)
     318:	8dc307d8 	lw	v1,2008(t6)
     31c:	50600009 	beqzl	v1,344 <Fault_AddClient+0x88>
     320:	ae180004 	sw	t8,4(s0)
     324:	54700004 	bnel	v1,s0,338 <Fault_AddClient+0x7c>
     328:	8c630000 	lw	v1,0(v1)
     32c:	1000000e 	b	368 <Fault_AddClient+0xac>
     330:	afaf0020 	sw	t7,32(sp)
     334:	8c630000 	lw	v1,0(v1)
     338:	1460fffa 	bnez	v1,324 <Fault_AddClient+0x68>
     33c:	00000000 	nop
     340:	ae180004 	sw	t8,4(s0)
     344:	8fb90030 	lw	t9,48(sp)
     348:	ae190008 	sw	t9,8(s0)
     34c:	8fa80034 	lw	t0,52(sp)
     350:	ae08000c 	sw	t0,12(s0)
     354:	8ca90000 	lw	t1,0(a1)
     358:	8d2a07d8 	lw	t2,2008(t1)
     35c:	ae0a0000 	sw	t2,0(s0)
     360:	8cab0000 	lw	t3,0(a1)
     364:	ad7007d8 	sw	s0,2008(t3)
     368:	0c000000 	jal	0 <Fault_SleepImpl>
     36c:	00000000 	nop
     370:	8fac0020 	lw	t4,32(sp)
     374:	3c040000 	lui	a0,0x0
     378:	24840204 	addiu	a0,a0,516
     37c:	51800004 	beqzl	t4,390 <Fault_AddClient+0xd4>
     380:	8fbf001c 	lw	ra,28(sp)
     384:	0c000000 	jal	0 <Fault_SleepImpl>
     388:	02002825 	move	a1,s0
     38c:	8fbf001c 	lw	ra,28(sp)
     390:	8fb00018 	lw	s0,24(sp)
     394:	27bd0028 	addiu	sp,sp,40
     398:	03e00008 	jr	ra
     39c:	00000000 	nop

000003a0 <Fault_RemoveClient>:
     3a0:	3c0bfffa 	lui	t3,0xfffa
     3a4:	03a06025 	move	t4,sp
     3a8:	27bdffd8 	addiu	sp,sp,-40
     3ac:	356b5a5a 	ori	t3,t3,0x5a5a
     3b0:	258cfff8 	addiu	t4,t4,-8
     3b4:	ad8b0000 	sw	t3,0(t4)
     3b8:	159dfffd 	bne	t4,sp,3b0 <Fault_RemoveClient+0x10>
     3bc:	ad8b0004 	sw	t3,4(t4)
     3c0:	afbf0014 	sw	ra,20(sp)
     3c4:	00803025 	move	a2,a0
     3c8:	3c0e0000 	lui	t6,0x0
     3cc:	8dce0000 	lw	t6,0(t6)
     3d0:	24040001 	li	a0,1
     3d4:	8dc307d8 	lw	v1,2008(t6)
     3d8:	afa00018 	sw	zero,24(sp)
     3dc:	afa60028 	sw	a2,40(sp)
     3e0:	afa00020 	sw	zero,32(sp)
     3e4:	0c000000 	jal	0 <Fault_SleepImpl>
     3e8:	afa30024 	sw	v1,36(sp)
     3ec:	8fa30024 	lw	v1,36(sp)
     3f0:	3c070000 	lui	a3,0x0
     3f4:	24e70000 	addiu	a3,a3,0
     3f8:	8fa50020 	lw	a1,32(sp)
     3fc:	8fa60028 	lw	a2,40(sp)
     400:	10600018 	beqz	v1,464 <Fault_RemoveClient+0xc4>
     404:	00402025 	move	a0,v0
     408:	54660013 	bnel	v1,a2,458 <Fault_RemoveClient+0xb8>
     40c:	00602825 	move	a1,v1
     410:	50a00005 	beqzl	a1,428 <Fault_RemoveClient+0x88>
     414:	8cf80000 	lw	t8,0(a3)
     418:	8ccf0000 	lw	t7,0(a2)
     41c:	10000011 	b	464 <Fault_RemoveClient+0xc4>
     420:	acaf0000 	sw	t7,0(a1)
     424:	8cf80000 	lw	t8,0(a3)
     428:	24090001 	li	t1,1
     42c:	af0607d8 	sw	a2,2008(t8)
     430:	8ce20000 	lw	v0,0(a3)
     434:	8c5907d8 	lw	t9,2008(v0)
     438:	13200004 	beqz	t9,44c <Fault_RemoveClient+0xac>
     43c:	00000000 	nop
     440:	8cc80000 	lw	t0,0(a2)
     444:	10000007 	b	464 <Fault_RemoveClient+0xc4>
     448:	ac4807d8 	sw	t0,2008(v0)
     44c:	10000005 	b	464 <Fault_RemoveClient+0xc4>
     450:	afa90018 	sw	t1,24(sp)
     454:	00602825 	move	a1,v1
     458:	8c630000 	lw	v1,0(v1)
     45c:	1460ffea 	bnez	v1,408 <Fault_RemoveClient+0x68>
     460:	00000000 	nop
     464:	0c000000 	jal	0 <Fault_SleepImpl>
     468:	afa60028 	sw	a2,40(sp)
     46c:	8faa0018 	lw	t2,24(sp)
     470:	3c040000 	lui	a0,0x0
     474:	8fa60028 	lw	a2,40(sp)
     478:	11400003 	beqz	t2,488 <Fault_RemoveClient+0xe8>
     47c:	2484023c 	addiu	a0,a0,572
     480:	0c000000 	jal	0 <Fault_SleepImpl>
     484:	00c02825 	move	a1,a2
     488:	8fbf0014 	lw	ra,20(sp)
     48c:	27bd0028 	addiu	sp,sp,40
     490:	03e00008 	jr	ra
     494:	00000000 	nop

00000498 <Fault_AddAddrConvClient>:
     498:	3c0cfffa 	lui	t4,0xfffa
     49c:	03a06825 	move	t5,sp
     4a0:	27bdffe0 	addiu	sp,sp,-32
     4a4:	358c5a5a 	ori	t4,t4,0x5a5a
     4a8:	25adfff8 	addiu	t5,t5,-8
     4ac:	adac0000 	sw	t4,0(t5)
     4b0:	15bdfffd 	bne	t5,sp,4a8 <Fault_AddAddrConvClient+0x10>
     4b4:	adac0004 	sw	t4,4(t5)
     4b8:	afbf0014 	sw	ra,20(sp)
     4bc:	00803825 	move	a3,a0
     4c0:	afa50024 	sw	a1,36(sp)
     4c4:	afa60028 	sw	a2,40(sp)
     4c8:	afa00018 	sw	zero,24(sp)
     4cc:	24040001 	li	a0,1
     4d0:	0c000000 	jal	0 <Fault_SleepImpl>
     4d4:	afa70020 	sw	a3,32(sp)
     4d8:	3c050000 	lui	a1,0x0
     4dc:	24a50000 	addiu	a1,a1,0
     4e0:	8fa70020 	lw	a3,32(sp)
     4e4:	00402025 	move	a0,v0
     4e8:	8cae0000 	lw	t6,0(a1)
     4ec:	240f0001 	li	t7,1
     4f0:	8fb80024 	lw	t8,36(sp)
     4f4:	8dc307dc 	lw	v1,2012(t6)
     4f8:	50600009 	beqzl	v1,520 <Fault_AddAddrConvClient+0x88>
     4fc:	acf80004 	sw	t8,4(a3)
     500:	54670004 	bnel	v1,a3,514 <Fault_AddAddrConvClient+0x7c>
     504:	8c630000 	lw	v1,0(v1)
     508:	1000000c 	b	53c <Fault_AddAddrConvClient+0xa4>
     50c:	afaf0018 	sw	t7,24(sp)
     510:	8c630000 	lw	v1,0(v1)
     514:	1460fffa 	bnez	v1,500 <Fault_AddAddrConvClient+0x68>
     518:	00000000 	nop
     51c:	acf80004 	sw	t8,4(a3)
     520:	8fb90028 	lw	t9,40(sp)
     524:	acf90008 	sw	t9,8(a3)
     528:	8ca80000 	lw	t0,0(a1)
     52c:	8d0907dc 	lw	t1,2012(t0)
     530:	ace90000 	sw	t1,0(a3)
     534:	8caa0000 	lw	t2,0(a1)
     538:	ad4707dc 	sw	a3,2012(t2)
     53c:	0c000000 	jal	0 <Fault_SleepImpl>
     540:	afa70020 	sw	a3,32(sp)
     544:	8fab0018 	lw	t3,24(sp)
     548:	3c040000 	lui	a0,0x0
     54c:	8fa70020 	lw	a3,32(sp)
     550:	11600003 	beqz	t3,560 <Fault_AddAddrConvClient+0xc8>
     554:	24840274 	addiu	a0,a0,628
     558:	0c000000 	jal	0 <Fault_SleepImpl>
     55c:	00e02825 	move	a1,a3
     560:	8fbf0014 	lw	ra,20(sp)
     564:	27bd0020 	addiu	sp,sp,32
     568:	03e00008 	jr	ra
     56c:	00000000 	nop

00000570 <Fault_RemoveAddrConvClient>:
     570:	3c0bfffa 	lui	t3,0xfffa
     574:	03a06025 	move	t4,sp
     578:	27bdffd8 	addiu	sp,sp,-40
     57c:	356b5a5a 	ori	t3,t3,0x5a5a
     580:	258cfff8 	addiu	t4,t4,-8
     584:	ad8b0000 	sw	t3,0(t4)
     588:	159dfffd 	bne	t4,sp,580 <Fault_RemoveAddrConvClient+0x10>
     58c:	ad8b0004 	sw	t3,4(t4)
     590:	afbf0014 	sw	ra,20(sp)
     594:	00803025 	move	a2,a0
     598:	3c0e0000 	lui	t6,0x0
     59c:	8dce0000 	lw	t6,0(t6)
     5a0:	24040001 	li	a0,1
     5a4:	8dc307dc 	lw	v1,2012(t6)
     5a8:	afa00018 	sw	zero,24(sp)
     5ac:	afa60028 	sw	a2,40(sp)
     5b0:	afa00020 	sw	zero,32(sp)
     5b4:	0c000000 	jal	0 <Fault_SleepImpl>
     5b8:	afa30024 	sw	v1,36(sp)
     5bc:	8fa30024 	lw	v1,36(sp)
     5c0:	3c070000 	lui	a3,0x0
     5c4:	24e70000 	addiu	a3,a3,0
     5c8:	8fa50020 	lw	a1,32(sp)
     5cc:	8fa60028 	lw	a2,40(sp)
     5d0:	10600018 	beqz	v1,634 <Fault_RemoveAddrConvClient+0xc4>
     5d4:	00402025 	move	a0,v0
     5d8:	54660013 	bnel	v1,a2,628 <Fault_RemoveAddrConvClient+0xb8>
     5dc:	00602825 	move	a1,v1
     5e0:	50a00005 	beqzl	a1,5f8 <Fault_RemoveAddrConvClient+0x88>
     5e4:	8cf80000 	lw	t8,0(a3)
     5e8:	8ccf0000 	lw	t7,0(a2)
     5ec:	10000011 	b	634 <Fault_RemoveAddrConvClient+0xc4>
     5f0:	acaf0000 	sw	t7,0(a1)
     5f4:	8cf80000 	lw	t8,0(a3)
     5f8:	24090001 	li	t1,1
     5fc:	af0607dc 	sw	a2,2012(t8)
     600:	8ce20000 	lw	v0,0(a3)
     604:	8c5907dc 	lw	t9,2012(v0)
     608:	13200004 	beqz	t9,61c <Fault_RemoveAddrConvClient+0xac>
     60c:	00000000 	nop
     610:	8cc80000 	lw	t0,0(a2)
     614:	10000007 	b	634 <Fault_RemoveAddrConvClient+0xc4>
     618:	ac4807dc 	sw	t0,2012(v0)
     61c:	10000005 	b	634 <Fault_RemoveAddrConvClient+0xc4>
     620:	afa90018 	sw	t1,24(sp)
     624:	00602825 	move	a1,v1
     628:	8c630000 	lw	v1,0(v1)
     62c:	1460ffea 	bnez	v1,5d8 <Fault_RemoveAddrConvClient+0x68>
     630:	00000000 	nop
     634:	0c000000 	jal	0 <Fault_SleepImpl>
     638:	afa60028 	sw	a2,40(sp)
     63c:	8faa0018 	lw	t2,24(sp)
     640:	3c040000 	lui	a0,0x0
     644:	8fa60028 	lw	a2,40(sp)
     648:	11400003 	beqz	t2,658 <Fault_RemoveAddrConvClient+0xe8>
     64c:	248402bc 	addiu	a0,a0,700
     650:	0c000000 	jal	0 <Fault_SleepImpl>
     654:	00c02825 	move	a1,a2
     658:	8fbf0014 	lw	ra,20(sp)
     65c:	27bd0028 	addiu	sp,sp,40
     660:	03e00008 	jr	ra
     664:	00000000 	nop

00000668 <Fault_ConvertAddress>:
     668:	3c0ffffa 	lui	t7,0xfffa
     66c:	03a0c025 	move	t8,sp
     670:	27bdffd8 	addiu	sp,sp,-40
     674:	35ef5a5a 	ori	t7,t7,0x5a5a
     678:	2718fff8 	addiu	t8,t8,-8
     67c:	af0f0000 	sw	t7,0(t8)
     680:	171dfffd 	bne	t8,sp,678 <Fault_ConvertAddress+0x10>
     684:	af0f0004 	sw	t7,4(t8)
     688:	afb1001c 	sw	s1,28(sp)
     68c:	00808825 	move	s1,a0
     690:	afbf0024 	sw	ra,36(sp)
     694:	afb20020 	sw	s2,32(sp)
     698:	afb00018 	sw	s0,24(sp)
     69c:	3c0e0000 	lui	t6,0x0
     6a0:	8dce0000 	lw	t6,0(t6)
     6a4:	2412ffff 	li	s2,-1
     6a8:	8dd007dc 	lw	s0,2012(t6)
     6ac:	52000015 	beqzl	s0,704 <Fault_ConvertAddress+0x9c>
     6b0:	00001025 	move	v0,zero
     6b4:	8e040004 	lw	a0,4(s0)
     6b8:	02202825 	move	a1,s1
     6bc:	5080000e 	beqzl	a0,6f8 <Fault_ConvertAddress+0x90>
     6c0:	8e100000 	lw	s0,0(s0)
     6c4:	0c000000 	jal	0 <Fault_SleepImpl>
     6c8:	8e060008 	lw	a2,8(s0)
     6cc:	14520005 	bne	v0,s2,6e4 <Fault_ConvertAddress+0x7c>
     6d0:	00401825 	move	v1,v0
     6d4:	0c000000 	jal	0 <Fault_SleepImpl>
     6d8:	02002025 	move	a0,s0
     6dc:	10000006 	b	6f8 <Fault_ConvertAddress+0x90>
     6e0:	8e100000 	lw	s0,0(s0)
     6e4:	50400004 	beqzl	v0,6f8 <Fault_ConvertAddress+0x90>
     6e8:	8e100000 	lw	s0,0(s0)
     6ec:	10000005 	b	704 <Fault_ConvertAddress+0x9c>
     6f0:	00601025 	move	v0,v1
     6f4:	8e100000 	lw	s0,0(s0)
     6f8:	5600ffef 	bnezl	s0,6b8 <Fault_ConvertAddress+0x50>
     6fc:	8e040004 	lw	a0,4(s0)
     700:	00001025 	move	v0,zero
     704:	8fbf0024 	lw	ra,36(sp)
     708:	8fb00018 	lw	s0,24(sp)
     70c:	8fb1001c 	lw	s1,28(sp)
     710:	8fb20020 	lw	s2,32(sp)
     714:	03e00008 	jr	ra
     718:	27bd0028 	addiu	sp,sp,40

0000071c <Fault_Sleep>:
     71c:	3c0efffa 	lui	t6,0xfffa
     720:	03a07825 	move	t7,sp
     724:	27bdffe8 	addiu	sp,sp,-24
     728:	35ce5a5a 	ori	t6,t6,0x5a5a
     72c:	25effff8 	addiu	t7,t7,-8
     730:	adee0000 	sw	t6,0(t7)
     734:	15fdfffd 	bne	t7,sp,72c <Fault_Sleep+0x10>
     738:	adee0004 	sw	t6,4(t7)
     73c:	afbf0014 	sw	ra,20(sp)
     740:	0c000000 	jal	0 <Fault_SleepImpl>
     744:	00000000 	nop
     748:	8fbf0014 	lw	ra,20(sp)
     74c:	27bd0018 	addiu	sp,sp,24
     750:	03e00008 	jr	ra
     754:	00000000 	nop

00000758 <Fault_PadCallback>:
     758:	3c0efffa 	lui	t6,0xfffa
     75c:	03a07825 	move	t7,sp
     760:	27bdffe8 	addiu	sp,sp,-24
     764:	35ce5a5a 	ori	t6,t6,0x5a5a
     768:	25effff8 	addiu	t7,t7,-8
     76c:	adee0000 	sw	t6,0(t7)
     770:	15fdfffd 	bne	t7,sp,768 <Fault_PadCallback+0x10>
     774:	adee0004 	sw	t6,4(t7)
     778:	afbf0014 	sw	ra,20(sp)
     77c:	0c000000 	jal	0 <Fault_SleepImpl>
     780:	00002825 	move	a1,zero
     784:	8fbf0014 	lw	ra,20(sp)
     788:	27bd0018 	addiu	sp,sp,24
     78c:	03e00008 	jr	ra
     790:	00000000 	nop

00000794 <Fault_UpdatePadImpl>:
     794:	3c0efffa 	lui	t6,0xfffa
     798:	03a07825 	move	t7,sp
     79c:	27bdffe8 	addiu	sp,sp,-24
     7a0:	35ce5a5a 	ori	t6,t6,0x5a5a
     7a4:	25effff8 	addiu	t7,t7,-8
     7a8:	adee0000 	sw	t6,0(t7)
     7ac:	15fdfffd 	bne	t7,sp,7a4 <Fault_UpdatePadImpl+0x10>
     7b0:	adee0004 	sw	t6,4(t7)
     7b4:	afbf0014 	sw	ra,20(sp)
     7b8:	3c020000 	lui	v0,0x0
     7bc:	8c420000 	lw	v0,0(v0)
     7c0:	8c5907d4 	lw	t9,2004(v0)
     7c4:	244407e4 	addiu	a0,v0,2020
     7c8:	0320f809 	jalr	t9
     7cc:	00000000 	nop
     7d0:	8fbf0014 	lw	ra,20(sp)
     7d4:	27bd0018 	addiu	sp,sp,24
     7d8:	03e00008 	jr	ra
     7dc:	00000000 	nop

000007e0 <Fault_WaitForInputImpl>:
     7e0:	3c09fffa 	lui	t1,0xfffa
     7e4:	03a05025 	move	t2,sp
     7e8:	27bdffb8 	addiu	sp,sp,-72
     7ec:	35295a5a 	ori	t1,t1,0x5a5a
     7f0:	254afff8 	addiu	t2,t2,-8
     7f4:	ad490000 	sw	t1,0(t2)
     7f8:	155dfffd 	bne	t2,sp,7f0 <Fault_WaitForInputImpl+0x10>
     7fc:	ad490004 	sw	t1,4(t2)
     800:	afb20020 	sw	s2,32(sp)
     804:	3c120000 	lui	s2,0x0
     808:	26520000 	addiu	s2,s2,0
     80c:	afbf003c 	sw	ra,60(sp)
     810:	afbe0038 	sw	s8,56(sp)
     814:	afb70034 	sw	s7,52(sp)
     818:	afb60030 	sw	s6,48(sp)
     81c:	afb5002c 	sw	s5,44(sp)
     820:	afb40028 	sw	s4,40(sp)
     824:	afb30024 	sw	s3,36(sp)
     828:	afb1001c 	sw	s1,28(sp)
     82c:	afb00018 	sw	s0,24(sp)
     830:	8e4e0000 	lw	t6,0(s2)
     834:	24110258 	li	s1,600
     838:	241e0400 	li	s8,1024
     83c:	25cf07e4 	addiu	t7,t6,2020
     840:	afaf0044 	sw	t7,68(sp)
     844:	24170800 	li	s7,2048
     848:	24160200 	li	s6,512
     84c:	24150100 	li	s5,256
     850:	34148000 	li	s4,0x8000
     854:	24130020 	li	s3,32
     858:	0c000000 	jal	0 <Fault_SleepImpl>
     85c:	24040010 	li	a0,16
     860:	0c000000 	jal	0 <Fault_SleepImpl>
     864:	00000000 	nop
     868:	8fb80044 	lw	t8,68(sp)
     86c:	9710000c 	lhu	s0,12(t8)
     870:	56130006 	bnel	s0,s3,88c <Fault_WaitForInputImpl+0xac>
     874:	8e590000 	lw	t9,0(s2)
     878:	8e420000 	lw	v0,0(s2)
     87c:	904307cf 	lbu	v1,1999(v0)
     880:	2c630001 	sltiu	v1,v1,1
     884:	a04307cf 	sb	v1,1999(v0)
     888:	8e590000 	lw	t9,0(s2)
     88c:	2a230001 	slti	v1,s1,1
     890:	932807cf 	lbu	t0,1999(t9)
     894:	11000005 	beqz	t0,8ac <Fault_WaitForInputImpl+0xcc>
     898:	00000000 	nop
     89c:	1060ffee 	beqz	v1,858 <Fault_WaitForInputImpl+0x78>
     8a0:	2631ffff 	addiu	s1,s1,-1
     8a4:	10000015 	b	8fc <Fault_WaitForInputImpl+0x11c>
     8a8:	00001025 	move	v0,zero
     8ac:	12140003 	beq	s0,s4,8bc <Fault_WaitForInputImpl+0xdc>
     8b0:	00000000 	nop
     8b4:	16150003 	bne	s0,s5,8c4 <Fault_WaitForInputImpl+0xe4>
     8b8:	00000000 	nop
     8bc:	1000000f 	b	8fc <Fault_WaitForInputImpl+0x11c>
     8c0:	00001025 	move	v0,zero
     8c4:	16160003 	bne	s0,s6,8d4 <Fault_WaitForInputImpl+0xf4>
     8c8:	00000000 	nop
     8cc:	1000000b 	b	8fc <Fault_WaitForInputImpl+0x11c>
     8d0:	24020001 	li	v0,1
     8d4:	16170003 	bne	s0,s7,8e4 <Fault_WaitForInputImpl+0x104>
     8d8:	00000000 	nop
     8dc:	0c000000 	jal	0 <Fault_SleepImpl>
     8e0:	24040001 	li	a0,1
     8e4:	161effdc 	bne	s0,s8,858 <Fault_WaitForInputImpl+0x78>
     8e8:	00000000 	nop
     8ec:	0c000000 	jal	0 <Fault_SleepImpl>
     8f0:	00002025 	move	a0,zero
     8f4:	1000ffd8 	b	858 <Fault_WaitForInputImpl+0x78>
     8f8:	00000000 	nop
     8fc:	8fbf003c 	lw	ra,60(sp)
     900:	8fb00018 	lw	s0,24(sp)
     904:	8fb1001c 	lw	s1,28(sp)
     908:	8fb20020 	lw	s2,32(sp)
     90c:	8fb30024 	lw	s3,36(sp)
     910:	8fb40028 	lw	s4,40(sp)
     914:	8fb5002c 	lw	s5,44(sp)
     918:	8fb60030 	lw	s6,48(sp)
     91c:	8fb70034 	lw	s7,52(sp)
     920:	8fbe0038 	lw	s8,56(sp)
     924:	03e00008 	jr	ra
     928:	27bd0048 	addiu	sp,sp,72

0000092c <Fault_WaitForInput>:
     92c:	3c0ffffa 	lui	t7,0xfffa
     930:	03a0c025 	move	t8,sp
     934:	27bdffe8 	addiu	sp,sp,-24
     938:	35ef5a5a 	ori	t7,t7,0x5a5a
     93c:	2718fff8 	addiu	t8,t8,-8
     940:	af0f0000 	sw	t7,0(t8)
     944:	171dfffd 	bne	t8,sp,93c <Fault_WaitForInput+0x10>
     948:	af0f0004 	sw	t7,4(t8)
     94c:	afbf0014 	sw	ra,20(sp)
     950:	240e0001 	li	t6,1
     954:	3c010000 	lui	at,0x0
     958:	0c000000 	jal	0 <Fault_SleepImpl>
     95c:	a02e0000 	sb	t6,0(at)
     960:	3c010000 	lui	at,0x0
     964:	a0200000 	sb	zero,0(at)
     968:	8fbf0014 	lw	ra,20(sp)
     96c:	27bd0018 	addiu	sp,sp,24
     970:	03e00008 	jr	ra
     974:	00000000 	nop

00000978 <Fault_DrawRec>:
     978:	3c19fffa 	lui	t9,0xfffa
     97c:	03a04025 	move	t0,sp
     980:	27bdffe0 	addiu	sp,sp,-32
     984:	37395a5a 	ori	t9,t9,0x5a5a
     988:	2508fff8 	addiu	t0,t0,-8
     98c:	ad190000 	sw	t9,0(t0)
     990:	151dfffd 	bne	t0,sp,988 <Fault_DrawRec+0x10>
     994:	ad190004 	sw	t9,4(t0)
     998:	afbf001c 	sw	ra,28(sp)
     99c:	afa60028 	sw	a2,40(sp)
     9a0:	afa7002c 	sw	a3,44(sp)
     9a4:	8fae0028 	lw	t6,40(sp)
     9a8:	8faf002c 	lw	t7,44(sp)
     9ac:	97b80032 	lhu	t8,50(sp)
     9b0:	008e3021 	addu	a2,a0,t6
     9b4:	00af3821 	addu	a3,a1,t7
     9b8:	24e7ffff 	addiu	a3,a3,-1
     9bc:	24c6ffff 	addiu	a2,a2,-1
     9c0:	0c000000 	jal	0 <Fault_SleepImpl>
     9c4:	afb80010 	sw	t8,16(sp)
     9c8:	8fbf001c 	lw	ra,28(sp)
     9cc:	27bd0020 	addiu	sp,sp,32
     9d0:	03e00008 	jr	ra
     9d4:	00000000 	nop

000009d8 <Fault_FillScreenBlack>:
     9d8:	3c0efffa 	lui	t6,0xfffa
     9dc:	03a07825 	move	t7,sp
     9e0:	27bdffe8 	addiu	sp,sp,-24
     9e4:	35ce5a5a 	ori	t6,t6,0x5a5a
     9e8:	25effff8 	addiu	t7,t7,-8
     9ec:	adee0000 	sw	t6,0(t7)
     9f0:	15fdfffd 	bne	t7,sp,9e8 <Fault_FillScreenBlack+0x10>
     9f4:	adee0004 	sw	t6,4(t7)
     9f8:	afbf0014 	sw	ra,20(sp)
     9fc:	0c000000 	jal	0 <Fault_SleepImpl>
     a00:	3404ffff 	li	a0,0xffff
     a04:	0c000000 	jal	0 <Fault_SleepImpl>
     a08:	24040001 	li	a0,1
     a0c:	0c000000 	jal	0 <Fault_SleepImpl>
     a10:	00000000 	nop
     a14:	0c000000 	jal	0 <Fault_SleepImpl>
     a18:	00002025 	move	a0,zero
     a1c:	8fbf0014 	lw	ra,20(sp)
     a20:	27bd0018 	addiu	sp,sp,24
     a24:	03e00008 	jr	ra
     a28:	00000000 	nop

00000a2c <Fault_FillScreenRed>:
     a2c:	3c0efffa 	lui	t6,0xfffa
     a30:	03a07825 	move	t7,sp
     a34:	27bdffe8 	addiu	sp,sp,-24
     a38:	35ce5a5a 	ori	t6,t6,0x5a5a
     a3c:	25effff8 	addiu	t7,t7,-8
     a40:	adee0000 	sw	t6,0(t7)
     a44:	15fdfffd 	bne	t7,sp,a3c <Fault_FillScreenRed+0x10>
     a48:	adee0004 	sw	t6,4(t7)
     a4c:	afbf0014 	sw	ra,20(sp)
     a50:	0c000000 	jal	0 <Fault_SleepImpl>
     a54:	3404ffff 	li	a0,0xffff
     a58:	0c000000 	jal	0 <Fault_SleepImpl>
     a5c:	3404f001 	li	a0,0xf001
     a60:	0c000000 	jal	0 <Fault_SleepImpl>
     a64:	00000000 	nop
     a68:	0c000000 	jal	0 <Fault_SleepImpl>
     a6c:	00002025 	move	a0,zero
     a70:	8fbf0014 	lw	ra,20(sp)
     a74:	27bd0018 	addiu	sp,sp,24
     a78:	03e00008 	jr	ra
     a7c:	00000000 	nop

00000a80 <Fault_DrawCornerRec>:
     a80:	3c0ffffa 	lui	t7,0xfffa
     a84:	03a0c025 	move	t8,sp
     a88:	27bdffe0 	addiu	sp,sp,-32
     a8c:	35ef5a5a 	ori	t7,t7,0x5a5a
     a90:	2718fff8 	addiu	t8,t8,-8
     a94:	af0f0000 	sw	t7,0(t8)
     a98:	171dfffd 	bne	t8,sp,a90 <Fault_DrawCornerRec+0x10>
     a9c:	af0f0004 	sw	t7,4(t8)
     aa0:	afbf001c 	sw	ra,28(sp)
     aa4:	afa40020 	sw	a0,32(sp)
     aa8:	97ae0022 	lhu	t6,34(sp)
     aac:	24040016 	li	a0,22
     ab0:	24050010 	li	a1,16
     ab4:	24060008 	li	a2,8
     ab8:	24070001 	li	a3,1
     abc:	0c000000 	jal	0 <Fault_SleepImpl>
     ac0:	afae0010 	sw	t6,16(sp)
     ac4:	8fbf001c 	lw	ra,28(sp)
     ac8:	27bd0020 	addiu	sp,sp,32
     acc:	03e00008 	jr	ra
     ad0:	00000000 	nop

00000ad4 <Fault_PrintFReg>:
     ad4:	3c18fffa 	lui	t8,0xfffa
     ad8:	03a0c825 	move	t9,sp
     adc:	27bdffe8 	addiu	sp,sp,-24
     ae0:	37185a5a 	ori	t8,t8,0x5a5a
     ae4:	2739fff8 	addiu	t9,t9,-8
     ae8:	af380000 	sw	t8,0(t9)
     aec:	173dfffd 	bne	t9,sp,ae4 <Fault_PrintFReg+0x10>
     af0:	af380004 	sw	t8,4(t9)
     af4:	afbf0014 	sw	ra,20(sp)
     af8:	afa40018 	sw	a0,24(sp)
     afc:	afa5001c 	sw	a1,28(sp)
     b00:	8fae001c 	lw	t6,28(sp)
     b04:	3c017f80 	lui	at,0x7f80
     b08:	8dc60000 	lw	a2,0(t6)
     b0c:	00c11024 	and	v0,a2,at
     b10:	000215c2 	srl	v0,v0,0x17
     b14:	2442ff81 	addiu	v0,v0,-127
     b18:	2841ff82 	slti	at,v0,-126
     b1c:	14200003 	bnez	at,b2c <Fault_PrintFReg+0x58>
     b20:	28410080 	slti	at,v0,128
     b24:	54200004 	bnezl	at,b38 <Fault_PrintFReg+0x64>
     b28:	8faf001c 	lw	t7,28(sp)
     b2c:	14c0000d 	bnez	a2,b64 <Fault_PrintFReg+0x90>
     b30:	3c040000 	lui	a0,0x0
     b34:	8faf001c 	lw	t7,28(sp)
     b38:	3c040000 	lui	a0,0x0
     b3c:	24840308 	addiu	a0,a0,776
     b40:	c5e40000 	lwc1	$f4,0(t7)
     b44:	8fa50018 	lw	a1,24(sp)
     b48:	460021a1 	cvt.d.s	$f6,$f4
     b4c:	44073000 	mfc1	a3,$f6
     b50:	44063800 	mfc1	a2,$f7
     b54:	0c000000 	jal	0 <Fault_SleepImpl>
     b58:	00000000 	nop
     b5c:	10000005 	b	b74 <Fault_PrintFReg+0xa0>
     b60:	8fbf0014 	lw	ra,20(sp)
     b64:	24840318 	addiu	a0,a0,792
     b68:	0c000000 	jal	0 <Fault_SleepImpl>
     b6c:	8fa50018 	lw	a1,24(sp)
     b70:	8fbf0014 	lw	ra,20(sp)
     b74:	27bd0018 	addiu	sp,sp,24
     b78:	03e00008 	jr	ra
     b7c:	00000000 	nop

00000b80 <Fault_LogFReg>:
     b80:	3c18fffa 	lui	t8,0xfffa
     b84:	03a0c825 	move	t9,sp
     b88:	27bdffe8 	addiu	sp,sp,-24
     b8c:	37185a5a 	ori	t8,t8,0x5a5a
     b90:	2739fff8 	addiu	t9,t9,-8
     b94:	af380000 	sw	t8,0(t9)
     b98:	173dfffd 	bne	t9,sp,b90 <Fault_LogFReg+0x10>
     b9c:	af380004 	sw	t8,4(t9)
     ba0:	afbf0014 	sw	ra,20(sp)
     ba4:	afa40018 	sw	a0,24(sp)
     ba8:	afa5001c 	sw	a1,28(sp)
     bac:	8fae001c 	lw	t6,28(sp)
     bb0:	3c017f80 	lui	at,0x7f80
     bb4:	8dc60000 	lw	a2,0(t6)
     bb8:	00c11824 	and	v1,a2,at
     bbc:	00031dc2 	srl	v1,v1,0x17
     bc0:	2463ff81 	addiu	v1,v1,-127
     bc4:	2861ff82 	slti	at,v1,-126
     bc8:	14200004 	bnez	at,bdc <Fault_LogFReg+0x5c>
     bcc:	00c01025 	move	v0,a2
     bd0:	28610080 	slti	at,v1,128
     bd4:	54200004 	bnezl	at,be8 <Fault_LogFReg+0x68>
     bd8:	8faf001c 	lw	t7,28(sp)
     bdc:	1440000d 	bnez	v0,c14 <Fault_LogFReg+0x94>
     be0:	3c040000 	lui	a0,0x0
     be4:	8faf001c 	lw	t7,28(sp)
     be8:	3c040000 	lui	a0,0x0
     bec:	2484032c 	addiu	a0,a0,812
     bf0:	c5e40000 	lwc1	$f4,0(t7)
     bf4:	8fa50018 	lw	a1,24(sp)
     bf8:	460021a1 	cvt.d.s	$f6,$f4
     bfc:	44073000 	mfc1	a3,$f6
     c00:	44063800 	mfc1	a2,$f7
     c04:	0c000000 	jal	0 <Fault_SleepImpl>
     c08:	00000000 	nop
     c0c:	10000005 	b	c24 <Fault_LogFReg+0xa4>
     c10:	8fbf0014 	lw	ra,20(sp)
     c14:	2484033c 	addiu	a0,a0,828
     c18:	0c000000 	jal	0 <Fault_SleepImpl>
     c1c:	8fa50018 	lw	a1,24(sp)
     c20:	8fbf0014 	lw	ra,20(sp)
     c24:	27bd0018 	addiu	sp,sp,24
     c28:	03e00008 	jr	ra
     c2c:	00000000 	nop

00000c30 <Fault_PrintFPCR>:
     c30:	3c18fffa 	lui	t8,0xfffa
     c34:	03a0c825 	move	t9,sp
     c38:	27bdffe0 	addiu	sp,sp,-32
     c3c:	37185a5a 	ori	t8,t8,0x5a5a
     c40:	2739fff8 	addiu	t9,t9,-8
     c44:	af380000 	sw	t8,0(t9)
     c48:	173dfffd 	bne	t9,sp,c40 <Fault_PrintFPCR+0x10>
     c4c:	af380004 	sw	t8,4(t9)
     c50:	afbf0014 	sw	ra,20(sp)
     c54:	00802825 	move	a1,a0
     c58:	3c030002 	lui	v1,0x2
     c5c:	3c040000 	lui	a0,0x0
     c60:	24840350 	addiu	a0,a0,848
     c64:	afa30018 	sw	v1,24(sp)
     c68:	0c000000 	jal	0 <Fault_SleepImpl>
     c6c:	afa50020 	sw	a1,32(sp)
     c70:	8fa30018 	lw	v1,24(sp)
     c74:	8fa50020 	lw	a1,32(sp)
     c78:	00001025 	move	v0,zero
     c7c:	24040006 	li	a0,6
     c80:	00a37024 	and	t6,a1,v1
     c84:	11c00009 	beqz	t6,cac <Fault_PrintFPCR+0x7c>
     c88:	00027880 	sll	t7,v0,0x2
     c8c:	3c050000 	lui	a1,0x0
     c90:	00af2821 	addu	a1,a1,t7
     c94:	3c040000 	lui	a0,0x0
     c98:	24840360 	addiu	a0,a0,864
     c9c:	0c000000 	jal	0 <Fault_SleepImpl>
     ca0:	8ca50048 	lw	a1,72(a1)
     ca4:	10000004 	b	cb8 <Fault_PrintFPCR+0x88>
     ca8:	00000000 	nop
     cac:	24420001 	addiu	v0,v0,1
     cb0:	1444fff3 	bne	v0,a0,c80 <Fault_PrintFPCR+0x50>
     cb4:	00031842 	srl	v1,v1,0x1
     cb8:	3c040000 	lui	a0,0x0
     cbc:	0c000000 	jal	0 <Fault_SleepImpl>
     cc0:	24840368 	addiu	a0,a0,872
     cc4:	8fbf0014 	lw	ra,20(sp)
     cc8:	27bd0020 	addiu	sp,sp,32
     ccc:	03e00008 	jr	ra
     cd0:	00000000 	nop

00000cd4 <Fault_LogFPCR>:
     cd4:	3c18fffa 	lui	t8,0xfffa
     cd8:	03a0c825 	move	t9,sp
     cdc:	27bdffe0 	addiu	sp,sp,-32
     ce0:	37185a5a 	ori	t8,t8,0x5a5a
     ce4:	2739fff8 	addiu	t9,t9,-8
     ce8:	af380000 	sw	t8,0(t9)
     cec:	173dfffd 	bne	t9,sp,ce4 <Fault_LogFPCR+0x10>
     cf0:	af380004 	sw	t8,4(t9)
     cf4:	afbf0014 	sw	ra,20(sp)
     cf8:	00802825 	move	a1,a0
     cfc:	3c030002 	lui	v1,0x2
     d00:	3c040000 	lui	a0,0x0
     d04:	2484036c 	addiu	a0,a0,876
     d08:	afa30018 	sw	v1,24(sp)
     d0c:	0c000000 	jal	0 <Fault_SleepImpl>
     d10:	afa50020 	sw	a1,32(sp)
     d14:	8fa30018 	lw	v1,24(sp)
     d18:	8fa50020 	lw	a1,32(sp)
     d1c:	00001025 	move	v0,zero
     d20:	24040006 	li	a0,6
     d24:	00a37024 	and	t6,a1,v1
     d28:	11c00009 	beqz	t6,d50 <Fault_LogFPCR+0x7c>
     d2c:	00027880 	sll	t7,v0,0x2
     d30:	3c050000 	lui	a1,0x0
     d34:	00af2821 	addu	a1,a1,t7
     d38:	3c040000 	lui	a0,0x0
     d3c:	2484037c 	addiu	a0,a0,892
     d40:	0c000000 	jal	0 <Fault_SleepImpl>
     d44:	8ca50048 	lw	a1,72(a1)
     d48:	10000005 	b	d60 <Fault_LogFPCR+0x8c>
     d4c:	8fbf0014 	lw	ra,20(sp)
     d50:	24420001 	addiu	v0,v0,1
     d54:	1444fff3 	bne	v0,a0,d24 <Fault_LogFPCR+0x50>
     d58:	00031842 	srl	v1,v1,0x1
     d5c:	8fbf0014 	lw	ra,20(sp)
     d60:	27bd0020 	addiu	sp,sp,32
     d64:	03e00008 	jr	ra
     d68:	00000000 	nop

00000d6c <Fault_PrintThreadContext>:
     d6c:	3c08fffa 	lui	t0,0xfffa
     d70:	03a04825 	move	t1,sp
     d74:	27bdffe0 	addiu	sp,sp,-32
     d78:	35085a5a 	ori	t0,t0,0x5a5a
     d7c:	2529fff8 	addiu	t1,t1,-8
     d80:	ad280000 	sw	t0,0(t1)
     d84:	153dfffd 	bne	t1,sp,d7c <Fault_PrintThreadContext+0x10>
     d88:	ad280004 	sw	t0,4(t1)
     d8c:	afbf001c 	sw	ra,28(sp)
     d90:	afb00018 	sw	s0,24(sp)
     d94:	afa40020 	sw	a0,32(sp)
     d98:	8fae0020 	lw	t6,32(sp)
     d9c:	24010017 	li	at,23
     da0:	8dd00120 	lw	s0,288(t6)
     da4:	00108082 	srl	s0,s0,0x2
     da8:	3210001f 	andi	s0,s0,0x1f
     dac:	00108400 	sll	s0,s0,0x10
     db0:	00108403 	sra	s0,s0,0x10
     db4:	56010003 	bnel	s0,at,dc4 <Fault_PrintThreadContext+0x58>
     db8:	2401001f 	li	at,31
     dbc:	24100010 	li	s0,16
     dc0:	2401001f 	li	at,31
     dc4:	16010002 	bne	s0,at,dd0 <Fault_PrintThreadContext+0x64>
     dc8:	00000000 	nop
     dcc:	24100011 	li	s0,17
     dd0:	0c000000 	jal	0 <Fault_SleepImpl>
     dd4:	00000000 	nop
     dd8:	2404fffe 	li	a0,-2
     ddc:	0c000000 	jal	0 <Fault_SleepImpl>
     de0:	24050004 	li	a1,4
     de4:	24040016 	li	a0,22
     de8:	0c000000 	jal	0 <Fault_SleepImpl>
     dec:	24050014 	li	a1,20
     df0:	8faf0020 	lw	t7,32(sp)
     df4:	0010c080 	sll	t8,s0,0x2
     df8:	3c070000 	lui	a3,0x0
     dfc:	00f83821 	addu	a3,a3,t8
     e00:	3c040000 	lui	a0,0x0
     e04:	24840384 	addiu	a0,a0,900
     e08:	8ce70000 	lw	a3,0(a3)
     e0c:	02003025 	move	a2,s0
     e10:	0c000000 	jal	0 <Fault_SleepImpl>
     e14:	8de50014 	lw	a1,20(t7)
     e18:	2404ffff 	li	a0,-1
     e1c:	0c000000 	jal	0 <Fault_SleepImpl>
     e20:	00002825 	move	a1,zero
     e24:	8fb00020 	lw	s0,32(sp)
     e28:	3c040000 	lui	a0,0x0
     e2c:	24840398 	addiu	a0,a0,920
     e30:	26100020 	addiu	s0,s0,32
     e34:	8e070104 	lw	a3,260(s0)
     e38:	8e0600f8 	lw	a2,248(s0)
     e3c:	0c000000 	jal	0 <Fault_SleepImpl>
     e40:	8e0500fc 	lw	a1,252(s0)
     e44:	3c040000 	lui	a0,0x0
     e48:	248403b4 	addiu	a0,a0,948
     e4c:	8e050004 	lw	a1,4(s0)
     e50:	8e06000c 	lw	a2,12(s0)
     e54:	0c000000 	jal	0 <Fault_SleepImpl>
     e58:	8e070014 	lw	a3,20(s0)
     e5c:	3c040000 	lui	a0,0x0
     e60:	248403d0 	addiu	a0,a0,976
     e64:	8e05001c 	lw	a1,28(s0)
     e68:	8e060024 	lw	a2,36(s0)
     e6c:	0c000000 	jal	0 <Fault_SleepImpl>
     e70:	8e07002c 	lw	a3,44(s0)
     e74:	3c040000 	lui	a0,0x0
     e78:	248403ec 	addiu	a0,a0,1004
     e7c:	8e050034 	lw	a1,52(s0)
     e80:	8e06003c 	lw	a2,60(s0)
     e84:	0c000000 	jal	0 <Fault_SleepImpl>
     e88:	8e070044 	lw	a3,68(s0)
     e8c:	3c040000 	lui	a0,0x0
     e90:	24840408 	addiu	a0,a0,1032
     e94:	8e05004c 	lw	a1,76(s0)
     e98:	8e060054 	lw	a2,84(s0)
     e9c:	0c000000 	jal	0 <Fault_SleepImpl>
     ea0:	8e07005c 	lw	a3,92(s0)
     ea4:	3c040000 	lui	a0,0x0
     ea8:	24840424 	addiu	a0,a0,1060
     eac:	8e050064 	lw	a1,100(s0)
     eb0:	8e06006c 	lw	a2,108(s0)
     eb4:	0c000000 	jal	0 <Fault_SleepImpl>
     eb8:	8e070074 	lw	a3,116(s0)
     ebc:	3c040000 	lui	a0,0x0
     ec0:	24840440 	addiu	a0,a0,1088
     ec4:	8e05007c 	lw	a1,124(s0)
     ec8:	8e060084 	lw	a2,132(s0)
     ecc:	0c000000 	jal	0 <Fault_SleepImpl>
     ed0:	8e07008c 	lw	a3,140(s0)
     ed4:	3c040000 	lui	a0,0x0
     ed8:	2484045c 	addiu	a0,a0,1116
     edc:	8e050094 	lw	a1,148(s0)
     ee0:	8e06009c 	lw	a2,156(s0)
     ee4:	0c000000 	jal	0 <Fault_SleepImpl>
     ee8:	8e0700a4 	lw	a3,164(s0)
     eec:	3c040000 	lui	a0,0x0
     ef0:	24840478 	addiu	a0,a0,1144
     ef4:	8e0500ac 	lw	a1,172(s0)
     ef8:	8e0600b4 	lw	a2,180(s0)
     efc:	0c000000 	jal	0 <Fault_SleepImpl>
     f00:	8e0700bc 	lw	a3,188(s0)
     f04:	3c040000 	lui	a0,0x0
     f08:	24840494 	addiu	a0,a0,1172
     f0c:	8e0500c4 	lw	a1,196(s0)
     f10:	8e0600cc 	lw	a2,204(s0)
     f14:	0c000000 	jal	0 <Fault_SleepImpl>
     f18:	8e0700d4 	lw	a3,212(s0)
     f1c:	3c040000 	lui	a0,0x0
     f20:	248404b0 	addiu	a0,a0,1200
     f24:	8e0500dc 	lw	a1,220(s0)
     f28:	8e0600e4 	lw	a2,228(s0)
     f2c:	0c000000 	jal	0 <Fault_SleepImpl>
     f30:	8e0700ec 	lw	a3,236(s0)
     f34:	0c000000 	jal	0 <Fault_SleepImpl>
     f38:	8e04010c 	lw	a0,268(s0)
     f3c:	3c040000 	lui	a0,0x0
     f40:	0c000000 	jal	0 <Fault_SleepImpl>
     f44:	248404d0 	addiu	a0,a0,1232
     f48:	00002025 	move	a0,zero
     f4c:	0c000000 	jal	0 <Fault_SleepImpl>
     f50:	26050114 	addiu	a1,s0,276
     f54:	24040002 	li	a0,2
     f58:	0c000000 	jal	0 <Fault_SleepImpl>
     f5c:	2605011c 	addiu	a1,s0,284
     f60:	3c040000 	lui	a0,0x0
     f64:	0c000000 	jal	0 <Fault_SleepImpl>
     f68:	248404d4 	addiu	a0,a0,1236
     f6c:	24040004 	li	a0,4
     f70:	0c000000 	jal	0 <Fault_SleepImpl>
     f74:	26050124 	addiu	a1,s0,292
     f78:	24040006 	li	a0,6
     f7c:	0c000000 	jal	0 <Fault_SleepImpl>
     f80:	2605012c 	addiu	a1,s0,300
     f84:	3c040000 	lui	a0,0x0
     f88:	0c000000 	jal	0 <Fault_SleepImpl>
     f8c:	248404d8 	addiu	a0,a0,1240
     f90:	24040008 	li	a0,8
     f94:	0c000000 	jal	0 <Fault_SleepImpl>
     f98:	26050134 	addiu	a1,s0,308
     f9c:	2404000a 	li	a0,10
     fa0:	0c000000 	jal	0 <Fault_SleepImpl>
     fa4:	2605013c 	addiu	a1,s0,316
     fa8:	3c040000 	lui	a0,0x0
     fac:	0c000000 	jal	0 <Fault_SleepImpl>
     fb0:	248404dc 	addiu	a0,a0,1244
     fb4:	2404000c 	li	a0,12
     fb8:	0c000000 	jal	0 <Fault_SleepImpl>
     fbc:	26050144 	addiu	a1,s0,324
     fc0:	2404000e 	li	a0,14
     fc4:	0c000000 	jal	0 <Fault_SleepImpl>
     fc8:	2605014c 	addiu	a1,s0,332
     fcc:	3c040000 	lui	a0,0x0
     fd0:	0c000000 	jal	0 <Fault_SleepImpl>
     fd4:	248404e0 	addiu	a0,a0,1248
     fd8:	24040010 	li	a0,16
     fdc:	0c000000 	jal	0 <Fault_SleepImpl>
     fe0:	26050154 	addiu	a1,s0,340
     fe4:	24040012 	li	a0,18
     fe8:	0c000000 	jal	0 <Fault_SleepImpl>
     fec:	2605015c 	addiu	a1,s0,348
     ff0:	3c040000 	lui	a0,0x0
     ff4:	0c000000 	jal	0 <Fault_SleepImpl>
     ff8:	248404e4 	addiu	a0,a0,1252
     ffc:	24040014 	li	a0,20
    1000:	0c000000 	jal	0 <Fault_SleepImpl>
    1004:	26050164 	addiu	a1,s0,356
    1008:	24040016 	li	a0,22
    100c:	0c000000 	jal	0 <Fault_SleepImpl>
    1010:	2605016c 	addiu	a1,s0,364
    1014:	3c040000 	lui	a0,0x0
    1018:	0c000000 	jal	0 <Fault_SleepImpl>
    101c:	248404e8 	addiu	a0,a0,1256
    1020:	24040018 	li	a0,24
    1024:	0c000000 	jal	0 <Fault_SleepImpl>
    1028:	26050174 	addiu	a1,s0,372
    102c:	2404001a 	li	a0,26
    1030:	0c000000 	jal	0 <Fault_SleepImpl>
    1034:	2605017c 	addiu	a1,s0,380
    1038:	3c040000 	lui	a0,0x0
    103c:	0c000000 	jal	0 <Fault_SleepImpl>
    1040:	248404ec 	addiu	a0,a0,1260
    1044:	2404001c 	li	a0,28
    1048:	0c000000 	jal	0 <Fault_SleepImpl>
    104c:	26050184 	addiu	a1,s0,388
    1050:	2404001e 	li	a0,30
    1054:	0c000000 	jal	0 <Fault_SleepImpl>
    1058:	2605018c 	addiu	a1,s0,396
    105c:	3c040000 	lui	a0,0x0
    1060:	0c000000 	jal	0 <Fault_SleepImpl>
    1064:	248404f0 	addiu	a0,a0,1264
    1068:	00002025 	move	a0,zero
    106c:	0c000000 	jal	0 <Fault_SleepImpl>
    1070:	00002825 	move	a1,zero
    1074:	8fbf001c 	lw	ra,28(sp)
    1078:	8fb00018 	lw	s0,24(sp)
    107c:	27bd0020 	addiu	sp,sp,32
    1080:	03e00008 	jr	ra
    1084:	00000000 	nop

00001088 <Fault_LogThreadContext>:
    1088:	3c08fffa 	lui	t0,0xfffa
    108c:	03a04825 	move	t1,sp
    1090:	27bdffe0 	addiu	sp,sp,-32
    1094:	35085a5a 	ori	t0,t0,0x5a5a
    1098:	2529fff8 	addiu	t1,t1,-8
    109c:	ad280000 	sw	t0,0(t1)
    10a0:	153dfffd 	bne	t1,sp,1098 <Fault_LogThreadContext+0x10>
    10a4:	ad280004 	sw	t0,4(t1)
    10a8:	afbf001c 	sw	ra,28(sp)
    10ac:	afb00018 	sw	s0,24(sp)
    10b0:	afa40020 	sw	a0,32(sp)
    10b4:	8fae0020 	lw	t6,32(sp)
    10b8:	24010017 	li	at,23
    10bc:	3c040000 	lui	a0,0x0
    10c0:	8dd00120 	lw	s0,288(t6)
    10c4:	00108082 	srl	s0,s0,0x2
    10c8:	3210001f 	andi	s0,s0,0x1f
    10cc:	00108400 	sll	s0,s0,0x10
    10d0:	00108403 	sra	s0,s0,0x10
    10d4:	56010003 	bnel	s0,at,10e4 <Fault_LogThreadContext+0x5c>
    10d8:	2401001f 	li	at,31
    10dc:	24100010 	li	s0,16
    10e0:	2401001f 	li	at,31
    10e4:	16010002 	bne	s0,at,10f0 <Fault_LogThreadContext+0x68>
    10e8:	00000000 	nop
    10ec:	24100011 	li	s0,17
    10f0:	0c000000 	jal	0 <Fault_SleepImpl>
    10f4:	248404f4 	addiu	a0,a0,1268
    10f8:	8faf0020 	lw	t7,32(sp)
    10fc:	0010c080 	sll	t8,s0,0x2
    1100:	3c070000 	lui	a3,0x0
    1104:	00f83821 	addu	a3,a3,t8
    1108:	3c040000 	lui	a0,0x0
    110c:	248404f8 	addiu	a0,a0,1272
    1110:	8ce70000 	lw	a3,0(a3)
    1114:	02003025 	move	a2,s0
    1118:	0c000000 	jal	0 <Fault_SleepImpl>
    111c:	8de50014 	lw	a1,20(t7)
    1120:	8fb00020 	lw	s0,32(sp)
    1124:	3c040000 	lui	a0,0x0
    1128:	24840510 	addiu	a0,a0,1296
    112c:	26100020 	addiu	s0,s0,32
    1130:	8e070104 	lw	a3,260(s0)
    1134:	8e0600f8 	lw	a2,248(s0)
    1138:	0c000000 	jal	0 <Fault_SleepImpl>
    113c:	8e0500fc 	lw	a1,252(s0)
    1140:	3c040000 	lui	a0,0x0
    1144:	24840530 	addiu	a0,a0,1328
    1148:	8e050004 	lw	a1,4(s0)
    114c:	8e06000c 	lw	a2,12(s0)
    1150:	0c000000 	jal	0 <Fault_SleepImpl>
    1154:	8e070014 	lw	a3,20(s0)
    1158:	3c040000 	lui	a0,0x0
    115c:	24840550 	addiu	a0,a0,1360
    1160:	8e05001c 	lw	a1,28(s0)
    1164:	8e060024 	lw	a2,36(s0)
    1168:	0c000000 	jal	0 <Fault_SleepImpl>
    116c:	8e07002c 	lw	a3,44(s0)
    1170:	3c040000 	lui	a0,0x0
    1174:	24840570 	addiu	a0,a0,1392
    1178:	8e050034 	lw	a1,52(s0)
    117c:	8e06003c 	lw	a2,60(s0)
    1180:	0c000000 	jal	0 <Fault_SleepImpl>
    1184:	8e070044 	lw	a3,68(s0)
    1188:	3c040000 	lui	a0,0x0
    118c:	24840590 	addiu	a0,a0,1424
    1190:	8e05004c 	lw	a1,76(s0)
    1194:	8e060054 	lw	a2,84(s0)
    1198:	0c000000 	jal	0 <Fault_SleepImpl>
    119c:	8e07005c 	lw	a3,92(s0)
    11a0:	3c040000 	lui	a0,0x0
    11a4:	248405b0 	addiu	a0,a0,1456
    11a8:	8e050064 	lw	a1,100(s0)
    11ac:	8e06006c 	lw	a2,108(s0)
    11b0:	0c000000 	jal	0 <Fault_SleepImpl>
    11b4:	8e070074 	lw	a3,116(s0)
    11b8:	3c040000 	lui	a0,0x0
    11bc:	248405d0 	addiu	a0,a0,1488
    11c0:	8e05007c 	lw	a1,124(s0)
    11c4:	8e060084 	lw	a2,132(s0)
    11c8:	0c000000 	jal	0 <Fault_SleepImpl>
    11cc:	8e07008c 	lw	a3,140(s0)
    11d0:	3c040000 	lui	a0,0x0
    11d4:	248405f0 	addiu	a0,a0,1520
    11d8:	8e050094 	lw	a1,148(s0)
    11dc:	8e06009c 	lw	a2,156(s0)
    11e0:	0c000000 	jal	0 <Fault_SleepImpl>
    11e4:	8e0700a4 	lw	a3,164(s0)
    11e8:	3c040000 	lui	a0,0x0
    11ec:	24840610 	addiu	a0,a0,1552
    11f0:	8e0500ac 	lw	a1,172(s0)
    11f4:	8e0600b4 	lw	a2,180(s0)
    11f8:	0c000000 	jal	0 <Fault_SleepImpl>
    11fc:	8e0700bc 	lw	a3,188(s0)
    1200:	3c040000 	lui	a0,0x0
    1204:	24840630 	addiu	a0,a0,1584
    1208:	8e0500c4 	lw	a1,196(s0)
    120c:	8e0600cc 	lw	a2,204(s0)
    1210:	0c000000 	jal	0 <Fault_SleepImpl>
    1214:	8e0700d4 	lw	a3,212(s0)
    1218:	3c040000 	lui	a0,0x0
    121c:	24840650 	addiu	a0,a0,1616
    1220:	8e0500dc 	lw	a1,220(s0)
    1224:	8e0600e4 	lw	a2,228(s0)
    1228:	0c000000 	jal	0 <Fault_SleepImpl>
    122c:	8e0700ec 	lw	a3,236(s0)
    1230:	3c040000 	lui	a0,0x0
    1234:	0c000000 	jal	0 <Fault_SleepImpl>
    1238:	24840670 	addiu	a0,a0,1648
    123c:	0c000000 	jal	0 <Fault_SleepImpl>
    1240:	8e04010c 	lw	a0,268(s0)
    1244:	3c040000 	lui	a0,0x0
    1248:	0c000000 	jal	0 <Fault_SleepImpl>
    124c:	24840674 	addiu	a0,a0,1652
    1250:	00002025 	move	a0,zero
    1254:	0c000000 	jal	0 <Fault_SleepImpl>
    1258:	26050114 	addiu	a1,s0,276
    125c:	24040002 	li	a0,2
    1260:	0c000000 	jal	0 <Fault_SleepImpl>
    1264:	2605011c 	addiu	a1,s0,284
    1268:	3c040000 	lui	a0,0x0
    126c:	0c000000 	jal	0 <Fault_SleepImpl>
    1270:	24840678 	addiu	a0,a0,1656
    1274:	24040004 	li	a0,4
    1278:	0c000000 	jal	0 <Fault_SleepImpl>
    127c:	26050124 	addiu	a1,s0,292
    1280:	24040006 	li	a0,6
    1284:	0c000000 	jal	0 <Fault_SleepImpl>
    1288:	2605012c 	addiu	a1,s0,300
    128c:	3c040000 	lui	a0,0x0
    1290:	0c000000 	jal	0 <Fault_SleepImpl>
    1294:	2484067c 	addiu	a0,a0,1660
    1298:	24040008 	li	a0,8
    129c:	0c000000 	jal	0 <Fault_SleepImpl>
    12a0:	26050134 	addiu	a1,s0,308
    12a4:	2404000a 	li	a0,10
    12a8:	0c000000 	jal	0 <Fault_SleepImpl>
    12ac:	2605013c 	addiu	a1,s0,316
    12b0:	3c040000 	lui	a0,0x0
    12b4:	0c000000 	jal	0 <Fault_SleepImpl>
    12b8:	24840680 	addiu	a0,a0,1664
    12bc:	2404000c 	li	a0,12
    12c0:	0c000000 	jal	0 <Fault_SleepImpl>
    12c4:	26050144 	addiu	a1,s0,324
    12c8:	2404000e 	li	a0,14
    12cc:	0c000000 	jal	0 <Fault_SleepImpl>
    12d0:	2605014c 	addiu	a1,s0,332
    12d4:	3c040000 	lui	a0,0x0
    12d8:	0c000000 	jal	0 <Fault_SleepImpl>
    12dc:	24840684 	addiu	a0,a0,1668
    12e0:	24040010 	li	a0,16
    12e4:	0c000000 	jal	0 <Fault_SleepImpl>
    12e8:	26050154 	addiu	a1,s0,340
    12ec:	24040012 	li	a0,18
    12f0:	0c000000 	jal	0 <Fault_SleepImpl>
    12f4:	2605015c 	addiu	a1,s0,348
    12f8:	3c040000 	lui	a0,0x0
    12fc:	0c000000 	jal	0 <Fault_SleepImpl>
    1300:	24840688 	addiu	a0,a0,1672
    1304:	24040014 	li	a0,20
    1308:	0c000000 	jal	0 <Fault_SleepImpl>
    130c:	26050164 	addiu	a1,s0,356
    1310:	24040016 	li	a0,22
    1314:	0c000000 	jal	0 <Fault_SleepImpl>
    1318:	2605016c 	addiu	a1,s0,364
    131c:	3c040000 	lui	a0,0x0
    1320:	0c000000 	jal	0 <Fault_SleepImpl>
    1324:	2484068c 	addiu	a0,a0,1676
    1328:	24040018 	li	a0,24
    132c:	0c000000 	jal	0 <Fault_SleepImpl>
    1330:	26050174 	addiu	a1,s0,372
    1334:	2404001a 	li	a0,26
    1338:	0c000000 	jal	0 <Fault_SleepImpl>
    133c:	2605017c 	addiu	a1,s0,380
    1340:	3c040000 	lui	a0,0x0
    1344:	0c000000 	jal	0 <Fault_SleepImpl>
    1348:	24840690 	addiu	a0,a0,1680
    134c:	2404001c 	li	a0,28
    1350:	0c000000 	jal	0 <Fault_SleepImpl>
    1354:	26050184 	addiu	a1,s0,388
    1358:	2404001e 	li	a0,30
    135c:	0c000000 	jal	0 <Fault_SleepImpl>
    1360:	2605018c 	addiu	a1,s0,396
    1364:	3c040000 	lui	a0,0x0
    1368:	0c000000 	jal	0 <Fault_SleepImpl>
    136c:	24840694 	addiu	a0,a0,1684
    1370:	8fbf001c 	lw	ra,28(sp)
    1374:	8fb00018 	lw	s0,24(sp)
    1378:	27bd0020 	addiu	sp,sp,32
    137c:	03e00008 	jr	ra
    1380:	00000000 	nop

00001384 <Fault_FindFaultedThread>:
    1384:	3c19fffa 	lui	t9,0xfffa
    1388:	03a04025 	move	t0,sp
    138c:	27bdffe8 	addiu	sp,sp,-24
    1390:	37395a5a 	ori	t9,t9,0x5a5a
    1394:	2508fff8 	addiu	t0,t0,-8
    1398:	ad190000 	sw	t9,0(t0)
    139c:	151dfffd 	bne	t0,sp,1394 <Fault_FindFaultedThread+0x10>
    13a0:	ad190004 	sw	t9,4(t0)
    13a4:	afbf0014 	sw	ra,20(sp)
    13a8:	0c000000 	jal	0 <Fault_SleepImpl>
    13ac:	00000000 	nop
    13b0:	8c4e0004 	lw	t6,4(v0)
    13b4:	2404ffff 	li	a0,-1
    13b8:	00401825 	move	v1,v0
    13bc:	108e0010 	beq	a0,t6,1400 <Fault_FindFaultedThread+0x7c>
    13c0:	8fbf0014 	lw	ra,20(sp)
    13c4:	8c420004 	lw	v0,4(v0)
    13c8:	18400009 	blez	v0,13f0 <Fault_FindFaultedThread+0x6c>
    13cc:	2841007f 	slti	at,v0,127
    13d0:	50200008 	beqzl	at,13f4 <Fault_FindFaultedThread+0x70>
    13d4:	8c63000c 	lw	v1,12(v1)
    13d8:	946f0012 	lhu	t7,18(v1)
    13dc:	31f80003 	andi	t8,t7,0x3
    13e0:	53000004 	beqzl	t8,13f4 <Fault_FindFaultedThread+0x70>
    13e4:	8c63000c 	lw	v1,12(v1)
    13e8:	10000006 	b	1404 <Fault_FindFaultedThread+0x80>
    13ec:	00601025 	move	v0,v1
    13f0:	8c63000c 	lw	v1,12(v1)
    13f4:	8c620004 	lw	v0,4(v1)
    13f8:	1482fff3 	bne	a0,v0,13c8 <Fault_FindFaultedThread+0x44>
    13fc:	00000000 	nop
    1400:	00001025 	move	v0,zero
    1404:	03e00008 	jr	ra
    1408:	27bd0018 	addiu	sp,sp,24

0000140c <Fault_Wait5Seconds>:
    140c:	3c0afffa 	lui	t2,0xfffa
    1410:	03a05825 	move	t3,sp
    1414:	27bdffd8 	addiu	sp,sp,-40
    1418:	354a5a5a 	ori	t2,t2,0x5a5a
    141c:	256bfff8 	addiu	t3,t3,-8
    1420:	ad6a0000 	sw	t2,0(t3)
    1424:	157dfffd 	bne	t3,sp,141c <Fault_Wait5Seconds+0x10>
    1428:	ad6a0004 	sw	t2,4(t3)
    142c:	afbf0014 	sw	ra,20(sp)
    1430:	0c000000 	jal	0 <Fault_SleepImpl>
    1434:	00000000 	nop
    1438:	afa20018 	sw	v0,24(sp)
    143c:	afa3001c 	sw	v1,28(sp)
    1440:	0c000000 	jal	0 <Fault_SleepImpl>
    1444:	24040010 	li	a0,16
    1448:	0c000000 	jal	0 <Fault_SleepImpl>
    144c:	00000000 	nop
    1450:	8fae0018 	lw	t6,24(sp)
    1454:	8faf001c 	lw	t7,28(sp)
    1458:	004ec023 	subu	t8,v0,t6
    145c:	006f082b 	sltu	at,v1,t7
    1460:	0301c023 	subu	t8,t8,at
    1464:	006fc823 	subu	t9,v1,t7
    1468:	17000005 	bnez	t8,1480 <Fault_Wait5Seconds+0x74>
    146c:	3c010df8 	lui	at,0xdf8
    1470:	34214759 	ori	at,at,0x4759
    1474:	0321082b 	sltu	at,t9,at
    1478:	1420fff1 	bnez	at,1440 <Fault_Wait5Seconds+0x34>
    147c:	00000000 	nop
    1480:	3c090000 	lui	t1,0x0
    1484:	8d290000 	lw	t1,0(t1)
    1488:	24080001 	li	t0,1
    148c:	a12807cf 	sb	t0,1999(t1)
    1490:	8fbf0014 	lw	ra,20(sp)
    1494:	03e00008 	jr	ra
    1498:	27bd0028 	addiu	sp,sp,40

0000149c <Fault_WaitForButtonCombo>:
    149c:	3c19fffa 	lui	t9,0xfffa
    14a0:	03a04025 	move	t0,sp
    14a4:	27bdffd0 	addiu	sp,sp,-48
    14a8:	37395a5a 	ori	t9,t9,0x5a5a
    14ac:	2508fff8 	addiu	t0,t0,-8
    14b0:	ad190000 	sw	t9,0(t0)
    14b4:	151dfffd 	bne	t0,sp,14ac <Fault_WaitForButtonCombo+0x10>
    14b8:	ad190004 	sw	t9,4(t0)
    14bc:	afbf0024 	sw	ra,36(sp)
    14c0:	afb20020 	sw	s2,32(sp)
    14c4:	afb1001c 	sw	s1,28(sp)
    14c8:	afb00018 	sw	s0,24(sp)
    14cc:	3c0e0000 	lui	t6,0x0
    14d0:	8dce0000 	lw	t6,0(t6)
    14d4:	3c040000 	lui	a0,0x0
    14d8:	24840698 	addiu	a0,a0,1688
    14dc:	25cf07e4 	addiu	t7,t6,2020
    14e0:	0c000000 	jal	0 <Fault_SleepImpl>
    14e4:	afaf002c 	sw	t7,44(sp)
    14e8:	3c040000 	lui	a0,0x0
    14ec:	0c000000 	jal	0 <Fault_SleepImpl>
    14f0:	24840710 	addiu	a0,a0,1808
    14f4:	0c000000 	jal	0 <Fault_SleepImpl>
    14f8:	3404ffff 	li	a0,0xffff
    14fc:	0c000000 	jal	0 <Fault_SleepImpl>
    1500:	24040001 	li	a0,1
    1504:	00008025 	move	s0,zero
    1508:	00008825 	move	s1,zero
    150c:	24120001 	li	s2,1
    1510:	0c000000 	jal	0 <Fault_SleepImpl>
    1514:	24040010 	li	a0,16
    1518:	0c000000 	jal	0 <Fault_SleepImpl>
    151c:	00000000 	nop
    1520:	8fa4002c 	lw	a0,44(sp)
    1524:	94830000 	lhu	v1,0(a0)
    1528:	9482000c 	lhu	v0,12(a0)
    152c:	14600005 	bnez	v1,1544 <Fault_WaitForButtonCombo+0xa8>
    1530:	00000000 	nop
    1534:	16320003 	bne	s1,s2,1544 <Fault_WaitForButtonCombo+0xa8>
    1538:	00000000 	nop
    153c:	1000007f 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    1540:	00008825 	move	s1,zero
    1544:	1040007d 	beqz	v0,173c <Fault_WaitForButtonCombo+0x2a0>
    1548:	00000000 	nop
    154c:	56320003 	bnel	s1,s2,155c <Fault_WaitForButtonCombo+0xc0>
    1550:	2a01005c 	slti	at,s0,92
    1554:	00008025 	move	s0,zero
    1558:	2a01005c 	slti	at,s0,92
    155c:	14200005 	bnez	at,1574 <Fault_WaitForButtonCombo+0xd8>
    1560:	2401005c 	li	at,92
    1564:	5201006a 	beql	s0,at,1710 <Fault_WaitForButtonCombo+0x274>
    1568:	34018000 	li	at,0x8000
    156c:	10000073 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    1570:	00000000 	nop
    1574:	2a01000b 	slti	at,s0,11
    1578:	14200005 	bnez	at,1590 <Fault_WaitForButtonCombo+0xf4>
    157c:	2401005b 	li	at,91
    1580:	5201005c 	beql	s0,at,16f4 <Fault_WaitForButtonCombo+0x258>
    1584:	24014000 	li	at,16384
    1588:	1000006c 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    158c:	00000000 	nop
    1590:	2e01000b 	sltiu	at,s0,11
    1594:	10200069 	beqz	at,173c <Fault_WaitForButtonCombo+0x2a0>
    1598:	0010c080 	sll	t8,s0,0x2
    159c:	3c010000 	lui	at,0x0
    15a0:	00380821 	addu	at,at,t8
    15a4:	8c3809dc 	lw	t8,2524(at)
    15a8:	03000008 	jr	t8
    15ac:	00000000 	nop
    15b0:	24012030 	li	at,8240
    15b4:	14610061 	bne	v1,at,173c <Fault_WaitForButtonCombo+0x2a0>
    15b8:	24012000 	li	at,8192
    15bc:	1441005f 	bne	v0,at,173c <Fault_WaitForButtonCombo+0x2a0>
    15c0:	00000000 	nop
    15c4:	02408025 	move	s0,s2
    15c8:	1000005c 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    15cc:	02408825 	move	s1,s2
    15d0:	24010800 	li	at,2048
    15d4:	14410003 	bne	v0,at,15e4 <Fault_WaitForButtonCombo+0x148>
    15d8:	00000000 	nop
    15dc:	10000057 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    15e0:	24100002 	li	s0,2
    15e4:	10000055 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    15e8:	00008025 	move	s0,zero
    15ec:	24010004 	li	at,4
    15f0:	14410003 	bne	v0,at,1600 <Fault_WaitForButtonCombo+0x164>
    15f4:	24100003 	li	s0,3
    15f8:	10000050 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    15fc:	02408825 	move	s1,s2
    1600:	1000004e 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    1604:	00008025 	move	s0,zero
    1608:	24010008 	li	at,8
    160c:	14410003 	bne	v0,at,161c <Fault_WaitForButtonCombo+0x180>
    1610:	00000000 	nop
    1614:	10000049 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    1618:	24100004 	li	s0,4
    161c:	10000047 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    1620:	00008025 	move	s0,zero
    1624:	24010400 	li	at,1024
    1628:	14410003 	bne	v0,at,1638 <Fault_WaitForButtonCombo+0x19c>
    162c:	24100005 	li	s0,5
    1630:	10000042 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    1634:	02408825 	move	s1,s2
    1638:	10000040 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    163c:	00008025 	move	s0,zero
    1640:	24010200 	li	at,512
    1644:	14410003 	bne	v0,at,1654 <Fault_WaitForButtonCombo+0x1b8>
    1648:	00000000 	nop
    164c:	1000003b 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    1650:	24100006 	li	s0,6
    1654:	10000039 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    1658:	00008025 	move	s0,zero
    165c:	24010002 	li	at,2
    1660:	14410003 	bne	v0,at,1670 <Fault_WaitForButtonCombo+0x1d4>
    1664:	24100007 	li	s0,7
    1668:	10000034 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    166c:	02408825 	move	s1,s2
    1670:	10000032 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    1674:	00008025 	move	s0,zero
    1678:	14520003 	bne	v0,s2,1688 <Fault_WaitForButtonCombo+0x1ec>
    167c:	00000000 	nop
    1680:	1000002e 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    1684:	24100008 	li	s0,8
    1688:	1000002c 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    168c:	00008025 	move	s0,zero
    1690:	24010100 	li	at,256
    1694:	14410003 	bne	v0,at,16a4 <Fault_WaitForButtonCombo+0x208>
    1698:	24100009 	li	s0,9
    169c:	10000027 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    16a0:	02408825 	move	s1,s2
    16a4:	10000025 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    16a8:	00008025 	move	s0,zero
    16ac:	3401c000 	li	at,0xc000
    16b0:	54410004 	bnel	v0,at,16c4 <Fault_WaitForButtonCombo+0x228>
    16b4:	34018000 	li	at,0x8000
    16b8:	10000020 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    16bc:	2410000a 	li	s0,10
    16c0:	34018000 	li	at,0x8000
    16c4:	54410004 	bnel	v0,at,16d8 <Fault_WaitForButtonCombo+0x23c>
    16c8:	24014000 	li	at,16384
    16cc:	1000001b 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    16d0:	2410005b 	li	s0,91
    16d4:	24014000 	li	at,16384
    16d8:	14410003 	bne	v0,at,16e8 <Fault_WaitForButtonCombo+0x24c>
    16dc:	00000000 	nop
    16e0:	10000016 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    16e4:	2410005c 	li	s0,92
    16e8:	10000014 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    16ec:	00008025 	move	s0,zero
    16f0:	24014000 	li	at,16384
    16f4:	14410003 	bne	v0,at,1704 <Fault_WaitForButtonCombo+0x268>
    16f8:	00000000 	nop
    16fc:	1000000f 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    1700:	2410000a 	li	s0,10
    1704:	1000000d 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    1708:	00008025 	move	s0,zero
    170c:	34018000 	li	at,0x8000
    1710:	14410003 	bne	v0,at,1720 <Fault_WaitForButtonCombo+0x284>
    1714:	00000000 	nop
    1718:	10000008 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    171c:	2410000a 	li	s0,10
    1720:	10000006 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    1724:	00008025 	move	s0,zero
    1728:	24011000 	li	at,4096
    172c:	14410003 	bne	v0,at,173c <Fault_WaitForButtonCombo+0x2a0>
    1730:	00008025 	move	s0,zero
    1734:	10000001 	b	173c <Fault_WaitForButtonCombo+0x2a0>
    1738:	2410000b 	li	s0,11
    173c:	0c000000 	jal	0 <Fault_SleepImpl>
    1740:	00000000 	nop
    1744:	2401000b 	li	at,11
    1748:	1601ff71 	bne	s0,at,1510 <Fault_WaitForButtonCombo+0x74>
    174c:	00000000 	nop
    1750:	8fbf0024 	lw	ra,36(sp)
    1754:	8fb00018 	lw	s0,24(sp)
    1758:	8fb1001c 	lw	s1,28(sp)
    175c:	8fb20020 	lw	s2,32(sp)
    1760:	03e00008 	jr	ra
    1764:	27bd0030 	addiu	sp,sp,48

00001768 <Fault_DrawMemDumpPage>:
    1768:	3c0efffa 	lui	t6,0xfffa
    176c:	03a07825 	move	t7,sp
    1770:	27bdffc0 	addiu	sp,sp,-64
    1774:	35ce5a5a 	ori	t6,t6,0x5a5a
    1778:	25effff8 	addiu	t7,t7,-8
    177c:	adee0000 	sw	t6,0(t7)
    1780:	15fdfffd 	bne	t7,sp,1778 <Fault_DrawMemDumpPage+0x10>
    1784:	adee0004 	sw	t6,4(t7)
    1788:	afb3002c 	sw	s3,44(sp)
    178c:	afb20028 	sw	s2,40(sp)
    1790:	00809025 	move	s2,a0
    1794:	3c138000 	lui	s3,0x8000
    1798:	afbf003c 	sw	ra,60(sp)
    179c:	afb60038 	sw	s6,56(sp)
    17a0:	afb50034 	sw	s5,52(sp)
    17a4:	afb40030 	sw	s4,48(sp)
    17a8:	afb10024 	sw	s1,36(sp)
    17ac:	afb00020 	sw	s0,32(sp)
    17b0:	afa60048 	sw	a2,72(sp)
    17b4:	00b3082b 	sltu	at,a1,s3
    17b8:	10200002 	beqz	at,17c4 <Fault_DrawMemDumpPage+0x5c>
    17bc:	00a08025 	move	s0,a1
    17c0:	02608025 	move	s0,s3
    17c4:	3c01807f 	lui	at,0x807f
    17c8:	3421ff01 	ori	at,at,0xff01
    17cc:	0201082b 	sltu	at,s0,at
    17d0:	54200004 	bnezl	at,17e4 <Fault_DrawMemDumpPage+0x7c>
    17d4:	2401fffc 	li	at,-4
    17d8:	3c10807f 	lui	s0,0x807f
    17dc:	3610ff00 	ori	s0,s0,0xff00
    17e0:	2401fffc 	li	at,-4
    17e4:	02018024 	and	s0,s0,at
    17e8:	0c000000 	jal	0 <Fault_SleepImpl>
    17ec:	02008825 	move	s1,s0
    17f0:	2404fffe 	li	a0,-2
    17f4:	0c000000 	jal	0 <Fault_SleepImpl>
    17f8:	00002825 	move	a1,zero
    17fc:	12400003 	beqz	s2,180c <Fault_DrawMemDumpPage+0xa4>
    1800:	24040024 	li	a0,36
    1804:	10000003 	b	1814 <Fault_DrawMemDumpPage+0xac>
    1808:	02403825 	move	a3,s2
    180c:	3c070000 	lui	a3,0x0
    1810:	24e7074c 	addiu	a3,a3,1868
    1814:	3c060000 	lui	a2,0x0
    1818:	24c60744 	addiu	a2,a2,1860
    181c:	24050012 	li	a1,18
    1820:	0c000000 	jal	0 <Fault_SleepImpl>
    1824:	afb00010 	sw	s0,16(sp)
    1828:	0213082b 	sltu	at,s0,s3
    182c:	1420001c 	bnez	at,18a0 <Fault_DrawMemDumpPage+0x138>
    1830:	3c01c000 	lui	at,0xc000
    1834:	0201082b 	sltu	at,s0,at
    1838:	10200019 	beqz	at,18a0 <Fault_DrawMemDumpPage+0x138>
    183c:	2412001c 	li	s2,28
    1840:	3c150000 	lui	s5,0x0
    1844:	3c130000 	lui	s3,0x0
    1848:	26730760 	addiu	s3,s3,1888
    184c:	26b50758 	addiu	s5,s5,1880
    1850:	241600e2 	li	s6,226
    1854:	24140122 	li	s4,290
    1858:	24040018 	li	a0,24
    185c:	02402825 	move	a1,s2
    1860:	02a03025 	move	a2,s5
    1864:	0c000000 	jal	0 <Fault_SleepImpl>
    1868:	02203825 	move	a3,s1
    186c:	24100052 	li	s0,82
    1870:	02002025 	move	a0,s0
    1874:	02402825 	move	a1,s2
    1878:	02603025 	move	a2,s3
    187c:	8e270000 	lw	a3,0(s1)
    1880:	0c000000 	jal	0 <Fault_SleepImpl>
    1884:	26310004 	addiu	s1,s1,4
    1888:	26100034 	addiu	s0,s0,52
    188c:	5614fff9 	bnel	s0,s4,1874 <Fault_DrawMemDumpPage+0x10c>
    1890:	02002025 	move	a0,s0
    1894:	26520009 	addiu	s2,s2,9
    1898:	5656fff0 	bnel	s2,s6,185c <Fault_DrawMemDumpPage+0xf4>
    189c:	24040018 	li	a0,24
    18a0:	00002025 	move	a0,zero
    18a4:	0c000000 	jal	0 <Fault_SleepImpl>
    18a8:	00002825 	move	a1,zero
    18ac:	8fbf003c 	lw	ra,60(sp)
    18b0:	8fb00020 	lw	s0,32(sp)
    18b4:	8fb10024 	lw	s1,36(sp)
    18b8:	8fb20028 	lw	s2,40(sp)
    18bc:	8fb3002c 	lw	s3,44(sp)
    18c0:	8fb40030 	lw	s4,48(sp)
    18c4:	8fb50034 	lw	s5,52(sp)
    18c8:	8fb60038 	lw	s6,56(sp)
    18cc:	03e00008 	jr	ra
    18d0:	27bd0040 	addiu	sp,sp,64

000018d4 <Fault_DrawMemDump>:
    18d4:	3c0efffa 	lui	t6,0xfffa
    18d8:	03a07825 	move	t7,sp
    18dc:	27bdffc8 	addiu	sp,sp,-56
    18e0:	35ce5a5a 	ori	t6,t6,0x5a5a
    18e4:	25effff8 	addiu	t7,t7,-8
    18e8:	adee0000 	sw	t6,0(t7)
    18ec:	15fdfffd 	bne	t7,sp,18e4 <Fault_DrawMemDump+0x10>
    18f0:	adee0004 	sw	t6,4(t7)
    18f4:	afb20020 	sw	s2,32(sp)
    18f8:	3c120000 	lui	s2,0x0
    18fc:	afb60030 	sw	s6,48(sp)
    1900:	0080b025 	move	s6,a0
    1904:	26520000 	addiu	s2,s2,0
    1908:	afbf0034 	sw	ra,52(sp)
    190c:	afb5002c 	sw	s5,44(sp)
    1910:	afb40028 	sw	s4,40(sp)
    1914:	afb30024 	sw	s3,36(sp)
    1918:	afb1001c 	sw	s1,28(sp)
    191c:	afb00018 	sw	s0,24(sp)
    1920:	afa5003c 	sw	a1,60(sp)
    1924:	afa60040 	sw	a2,64(sp)
    1928:	afa70044 	sw	a3,68(sp)
    192c:	8e510000 	lw	s1,0(s2)
    1930:	02c09825 	move	s3,s6
    1934:	3c158000 	lui	s5,0x8000
    1938:	2414ffdf 	li	s4,-33
    193c:	263107e4 	addiu	s1,s1,2020
    1940:	0275082b 	sltu	at,s3,s5
    1944:	10200002 	beqz	at,1950 <Fault_DrawMemDump+0x7c>
    1948:	3c040000 	lui	a0,0x0
    194c:	02a09825 	move	s3,s5
    1950:	3c01807f 	lui	at,0x807f
    1954:	3421ff01 	ori	at,at,0xff01
    1958:	0261082b 	sltu	at,s3,at
    195c:	14200003 	bnez	at,196c <Fault_DrawMemDump+0x98>
    1960:	24840768 	addiu	a0,a0,1896
    1964:	3c13807f 	lui	s3,0x807f
    1968:	3673ff00 	ori	s3,s3,0xff00
    196c:	2401fff0 	li	at,-16
    1970:	02619824 	and	s3,s3,at
    1974:	02602825 	move	a1,s3
    1978:	0c000000 	jal	0 <Fault_SleepImpl>
    197c:	00003025 	move	a2,zero
    1980:	8e4e0000 	lw	t6,0(s2)
    1984:	24100258 	li	s0,600
    1988:	91cf07cf 	lbu	t7,1999(t6)
    198c:	11e00011 	beqz	t7,19d4 <Fault_DrawMemDump+0x100>
    1990:	00000000 	nop
    1994:	12000046 	beqz	s0,1ab0 <Fault_DrawMemDump+0x1dc>
    1998:	24040010 	li	a0,16
    199c:	0c000000 	jal	0 <Fault_SleepImpl>
    19a0:	2610ffff 	addiu	s0,s0,-1
    19a4:	0c000000 	jal	0 <Fault_SleepImpl>
    19a8:	00000000 	nop
    19ac:	9638000c 	lhu	t8,12(s1)
    19b0:	0314c827 	nor	t9,t8,s4
    19b4:	57200004 	bnezl	t9,19c8 <Fault_DrawMemDump+0xf4>
    19b8:	8e490000 	lw	t1,0(s2)
    19bc:	8e480000 	lw	t0,0(s2)
    19c0:	a10007cf 	sb	zero,1999(t0)
    19c4:	8e490000 	lw	t1,0(s2)
    19c8:	912a07cf 	lbu	t2,1999(t1)
    19cc:	1540fff1 	bnez	t2,1994 <Fault_DrawMemDump+0xc0>
    19d0:	00000000 	nop
    19d4:	0c000000 	jal	0 <Fault_SleepImpl>
    19d8:	24040010 	li	a0,16
    19dc:	0c000000 	jal	0 <Fault_SleepImpl>
    19e0:	00000000 	nop
    19e4:	9622000c 	lhu	v0,12(s1)
    19e8:	1040fffa 	beqz	v0,19d4 <Fault_DrawMemDump+0x100>
    19ec:	00000000 	nop
    19f0:	2401efff 	li	at,-4097
    19f4:	00415827 	nor	t3,v0,at
    19f8:	5160002e 	beqzl	t3,1ab4 <Fault_DrawMemDump+0x1e0>
    19fc:	8fbf0034 	lw	ra,52(sp)
    1a00:	96230000 	lhu	v1,0(s1)
    1a04:	3c01ffff 	lui	at,0xffff
    1a08:	34217fff 	ori	at,at,0x7fff
    1a0c:	00616027 	nor	t4,v1,at
    1a10:	11800027 	beqz	t4,1ab0 <Fault_DrawMemDump+0x1dc>
    1a14:	2401dfff 	li	at,-8193
    1a18:	00616827 	nor	t5,v1,at
    1a1c:	15a00002 	bnez	t5,1a28 <Fault_DrawMemDump+0x154>
    1a20:	24040010 	li	a0,16
    1a24:	24040100 	li	a0,256
    1a28:	2401bfff 	li	at,-16385
    1a2c:	00617027 	nor	t6,v1,at
    1a30:	15c00002 	bnez	t6,1a3c <Fault_DrawMemDump+0x168>
    1a34:	2401f7ff 	li	at,-2049
    1a38:	00042200 	sll	a0,a0,0x8
    1a3c:	00417827 	nor	t7,v0,at
    1a40:	15e00002 	bnez	t7,1a4c <Fault_DrawMemDump+0x178>
    1a44:	2401fbff 	li	at,-1025
    1a48:	02649823 	subu	s3,s3,a0
    1a4c:	0041c027 	nor	t8,v0,at
    1a50:	17000002 	bnez	t8,1a5c <Fault_DrawMemDump+0x188>
    1a54:	2401fff7 	li	at,-9
    1a58:	02649821 	addu	s3,s3,a0
    1a5c:	0041c827 	nor	t9,v0,at
    1a60:	17200002 	bnez	t9,1a6c <Fault_DrawMemDump+0x198>
    1a64:	2401fffb 	li	at,-5
    1a68:	02c09825 	move	s3,s6
    1a6c:	00414027 	nor	t0,v0,at
    1a70:	15000002 	bnez	t0,1a7c <Fault_DrawMemDump+0x1a8>
    1a74:	2401fffd 	li	at,-3
    1a78:	8fb3003c 	lw	s3,60(sp)
    1a7c:	00414827 	nor	t1,v0,at
    1a80:	15200002 	bnez	t1,1a8c <Fault_DrawMemDump+0x1b8>
    1a84:	2401fffe 	li	at,-2
    1a88:	8fb30040 	lw	s3,64(sp)
    1a8c:	00415027 	nor	t2,v0,at
    1a90:	15400002 	bnez	t2,1a9c <Fault_DrawMemDump+0x1c8>
    1a94:	00545827 	nor	t3,v0,s4
    1a98:	8fb30044 	lw	s3,68(sp)
    1a9c:	5560ffa9 	bnezl	t3,1944 <Fault_DrawMemDump+0x70>
    1aa0:	0275082b 	sltu	at,s3,s5
    1aa4:	8e4d0000 	lw	t5,0(s2)
    1aa8:	240c0001 	li	t4,1
    1aac:	a1ac07cf 	sb	t4,1999(t5)
    1ab0:	8fbf0034 	lw	ra,52(sp)
    1ab4:	8fb00018 	lw	s0,24(sp)
    1ab8:	8fb1001c 	lw	s1,28(sp)
    1abc:	8fb20020 	lw	s2,32(sp)
    1ac0:	8fb30024 	lw	s3,36(sp)
    1ac4:	8fb40028 	lw	s4,40(sp)
    1ac8:	8fb5002c 	lw	s5,44(sp)
    1acc:	8fb60030 	lw	s6,48(sp)
    1ad0:	03e00008 	jr	ra
    1ad4:	27bd0038 	addiu	sp,sp,56

00001ad8 <Fault_WalkStack>:
    1ad8:	3c0ffffa 	lui	t7,0xfffa
    1adc:	03a0c825 	move	t9,sp
    1ae0:	27bdffe8 	addiu	sp,sp,-24
    1ae4:	35ef5a5a 	ori	t7,t7,0x5a5a
    1ae8:	2739fff8 	addiu	t9,t9,-8
    1aec:	af2f0000 	sw	t7,0(t9)
    1af0:	173dfffd 	bne	t9,sp,1ae8 <Fault_WalkStack+0x10>
    1af4:	af2f0004 	sw	t7,4(t9)
    1af8:	afb30014 	sw	s3,20(sp)
    1afc:	afb20010 	sw	s2,16(sp)
    1b00:	afb1000c 	sw	s1,12(sp)
    1b04:	afb00008 	sw	s0,8(sp)
    1b08:	8c820000 	lw	v0,0(a0)
    1b0c:	8ca30000 	lw	v1,0(a1)
    1b10:	8cc70000 	lw	a3,0(a2)
    1b14:	304e0003 	andi	t6,v0,0x3
    1b18:	15c0000e 	bnez	t6,1b54 <Fault_WalkStack+0x7c>
    1b1c:	3c080001 	lui	t0,0x1
    1b20:	3c098000 	lui	t1,0x8000
    1b24:	0049082b 	sltu	at,v0,t1
    1b28:	1420000a 	bnez	at,1b54 <Fault_WalkStack+0x7c>
    1b2c:	3c0ca000 	lui	t4,0xa000
    1b30:	004c082b 	sltu	at,v0,t4
    1b34:	10200007 	beqz	at,1b54 <Fault_WalkStack+0x7c>
    1b38:	30ef0003 	andi	t7,a3,0x3
    1b3c:	15e00005 	bnez	t7,1b54 <Fault_WalkStack+0x7c>
    1b40:	00e9082b 	sltu	at,a3,t1
    1b44:	14200003 	bnez	at,1b54 <Fault_WalkStack+0x7c>
    1b48:	00ec082b 	sltu	at,a3,t4
    1b4c:	14200005 	bnez	at,1b64 <Fault_WalkStack+0x8c>
    1b50:	30780003 	andi	t8,v1,0x3
    1b54:	ac800000 	sw	zero,0(a0)
    1b58:	aca00000 	sw	zero,0(a1)
    1b5c:	1000003c 	b	1c50 <Fault_WalkStack+0x178>
    1b60:	acc00000 	sw	zero,0(a2)
    1b64:	17000005 	bnez	t8,1b7c <Fault_WalkStack+0xa4>
    1b68:	0069082b 	sltu	at,v1,t1
    1b6c:	14200003 	bnez	at,1b7c <Fault_WalkStack+0xa4>
    1b70:	006c082b 	sltu	at,v1,t4
    1b74:	14200003 	bnez	at,1b84 <Fault_WalkStack+0xac>
    1b78:	00004825 	move	t1,zero
    1b7c:	10000034 	b	1c50 <Fault_WalkStack+0x178>
    1b80:	aca70000 	sw	a3,0(a1)
    1b84:	3c134200 	lui	s3,0x4200
    1b88:	3c1003e0 	lui	s0,0x3e0
    1b8c:	36100008 	ori	s0,s0,0x8
    1b90:	36730018 	ori	s3,s3,0x18
    1b94:	241227bd 	li	s2,10173
    1b98:	24110002 	li	s1,2
    1b9c:	340d8fbf 	li	t5,0x8fbf
    1ba0:	006cc825 	or	t9,v1,t4
    1ba4:	8f2a0000 	lw	t2,0(t9)
    1ba8:	000a5c02 	srl	t3,t2,0x10
    1bac:	316bffff 	andi	t3,t3,0xffff
    1bb0:	15ab0006 	bne	t5,t3,1bcc <Fault_WalkStack+0xf4>
    1bb4:	000a7c00 	sll	t7,t2,0x10
    1bb8:	000fc403 	sra	t8,t7,0x10
    1bbc:	0058c821 	addu	t9,v0,t8
    1bc0:	032c7025 	or	t6,t9,t4
    1bc4:	1000000c 	b	1bf8 <Fault_WalkStack+0x120>
    1bc8:	8dc70000 	lw	a3,0(t6)
    1bcc:	164b0004 	bne	s2,t3,1be0 <Fault_WalkStack+0x108>
    1bd0:	000ac400 	sll	t8,t2,0x10
    1bd4:	0018cc03 	sra	t9,t8,0x10
    1bd8:	10000007 	b	1bf8 <Fault_WalkStack+0x120>
    1bdc:	00591021 	addu	v0,v0,t9
    1be0:	15530005 	bne	t2,s3,1bf8 <Fault_WalkStack+0x120>
    1be4:	00000000 	nop
    1be8:	00001025 	move	v0,zero
    1bec:	00001825 	move	v1,zero
    1bf0:	10000014 	b	1c44 <Fault_WalkStack+0x16c>
    1bf4:	00003825 	move	a3,zero
    1bf8:	15300003 	bne	t1,s0,1c08 <Fault_WalkStack+0x130>
    1bfc:	00097682 	srl	t6,t1,0x1a
    1c00:	10000010 	b	1c44 <Fault_WalkStack+0x16c>
    1c04:	00e01825 	move	v1,a3
    1c08:	162e0006 	bne	s1,t6,1c24 <Fault_WalkStack+0x14c>
    1c0c:	00037f02 	srl	t7,v1,0x1c
    1c10:	0009c980 	sll	t9,t1,0x6
    1c14:	00197102 	srl	t6,t9,0x4
    1c18:	000fc700 	sll	t8,t7,0x1c
    1c1c:	10000009 	b	1c44 <Fault_WalkStack+0x16c>
    1c20:	030e1825 	or	v1,t8,t6
    1c24:	01404825 	move	t1,t2
    1c28:	11000003 	beqz	t0,1c38 <Fault_WalkStack+0x160>
    1c2c:	24630004 	addiu	v1,v1,4
    1c30:	1000ffdb 	b	1ba0 <Fault_WalkStack+0xc8>
    1c34:	2508ffff 	addiu	t0,t0,-1
    1c38:	00001025 	move	v0,zero
    1c3c:	00001825 	move	v1,zero
    1c40:	00003825 	move	a3,zero
    1c44:	ac820000 	sw	v0,0(a0)
    1c48:	aca30000 	sw	v1,0(a1)
    1c4c:	acc70000 	sw	a3,0(a2)
    1c50:	8fb00008 	lw	s0,8(sp)
    1c54:	8fb1000c 	lw	s1,12(sp)
    1c58:	8fb20010 	lw	s2,16(sp)
    1c5c:	8fb30014 	lw	s3,20(sp)
    1c60:	03e00008 	jr	ra
    1c64:	27bd0018 	addiu	sp,sp,24

00001c68 <Fault_DrawStackTrace>:
    1c68:	3c0ffffa 	lui	t7,0xfffa
    1c6c:	03a0c025 	move	t8,sp
    1c70:	27bdff90 	addiu	sp,sp,-112
    1c74:	35ef5a5a 	ori	t7,t7,0x5a5a
    1c78:	2718fff8 	addiu	t8,t8,-8
    1c7c:	af0f0000 	sw	t7,0(t8)
    1c80:	171dfffd 	bne	t8,sp,1c78 <Fault_DrawStackTrace+0x10>
    1c84:	af0f0004 	sw	t7,4(t8)
    1c88:	afb50034 	sw	s5,52(sp)
    1c8c:	afb00020 	sw	s0,32(sp)
    1c90:	00808025 	move	s0,a0
    1c94:	00c0a825 	move	s5,a2
    1c98:	afbf0044 	sw	ra,68(sp)
    1c9c:	afbe0040 	sw	s8,64(sp)
    1ca0:	afb7003c 	sw	s7,60(sp)
    1ca4:	afb60038 	sw	s6,56(sp)
    1ca8:	afb40030 	sw	s4,48(sp)
    1cac:	afb3002c 	sw	s3,44(sp)
    1cb0:	afb20028 	sw	s2,40(sp)
    1cb4:	afb10024 	sw	s1,36(sp)
    1cb8:	afa50074 	sw	a1,116(sp)
    1cbc:	afa7007c 	sw	a3,124(sp)
    1cc0:	8e0f00f4 	lw	t7,244(s0)
    1cc4:	3c060000 	lui	a2,0x0
    1cc8:	24c60770 	addiu	a2,a2,1904
    1ccc:	afaf0068 	sw	t7,104(sp)
    1cd0:	8e090104 	lw	t1,260(s0)
    1cd4:	8fa40074 	lw	a0,116(sp)
    1cd8:	02a02825 	move	a1,s5
    1cdc:	afa90064 	sw	t1,100(sp)
    1ce0:	8e0a011c 	lw	t2,284(s0)
    1ce4:	0c000000 	jal	0 <Fault_SleepImpl>
    1ce8:	afaa0060 	sw	t2,96(sp)
    1cec:	8fbe007c 	lw	s8,124(sp)
    1cf0:	24020001 	li	v0,1
    1cf4:	8fab0064 	lw	t3,100(sp)
    1cf8:	2bc10002 	slti	at,s8,2
    1cfc:	5420002f 	bnezl	at,1dbc <Fault_DrawStackTrace+0x154>
    1d00:	8fbf0044 	lw	ra,68(sp)
    1d04:	15600003 	bnez	t3,1d14 <Fault_DrawStackTrace+0xac>
    1d08:	8fac0068 	lw	t4,104(sp)
    1d0c:	5180002b 	beqzl	t4,1dbc <Fault_DrawStackTrace+0x154>
    1d10:	8fbf0044 	lw	ra,68(sp)
    1d14:	8fb20060 	lw	s2,96(sp)
    1d18:	3c130000 	lui	s3,0x0
    1d1c:	26730000 	addiu	s3,s3,0
    1d20:	12530025 	beq	s2,s3,1db8 <Fault_DrawStackTrace+0x150>
    1d24:	000280c0 	sll	s0,v0,0x3
    1d28:	02158821 	addu	s1,s0,s5
    1d2c:	3c150000 	lui	s5,0x0
    1d30:	3c160000 	lui	s6,0x0
    1d34:	26d60794 	addiu	s6,s6,1940
    1d38:	26b50788 	addiu	s5,s5,1928
    1d3c:	001ea0c0 	sll	s4,s8,0x3
    1d40:	27b70068 	addiu	s7,sp,104
    1d44:	8fa40074 	lw	a0,116(sp)
    1d48:	02202825 	move	a1,s1
    1d4c:	02a03025 	move	a2,s5
    1d50:	8fa70068 	lw	a3,104(sp)
    1d54:	0c000000 	jal	0 <Fault_SleepImpl>
    1d58:	afb20010 	sw	s2,16(sp)
    1d5c:	0c000000 	jal	0 <Fault_SleepImpl>
    1d60:	8fa40060 	lw	a0,96(sp)
    1d64:	10400003 	beqz	v0,1d74 <Fault_DrawStackTrace+0x10c>
    1d68:	00402825 	move	a1,v0
    1d6c:	0c000000 	jal	0 <Fault_SleepImpl>
    1d70:	02c02025 	move	a0,s6
    1d74:	02e02025 	move	a0,s7
    1d78:	27a50060 	addiu	a1,sp,96
    1d7c:	0c000000 	jal	0 <Fault_SleepImpl>
    1d80:	27a60064 	addiu	a2,sp,100
    1d84:	26100008 	addiu	s0,s0,8
    1d88:	0214082a 	slt	at,s0,s4
    1d8c:	1020000a 	beqz	at,1db8 <Fault_DrawStackTrace+0x150>
    1d90:	26310008 	addiu	s1,s1,8
    1d94:	8fad0064 	lw	t5,100(sp)
    1d98:	8fae0068 	lw	t6,104(sp)
    1d9c:	8fb20060 	lw	s2,96(sp)
    1da0:	15a00003 	bnez	t5,1db0 <Fault_DrawStackTrace+0x148>
    1da4:	00000000 	nop
    1da8:	51c00004 	beqzl	t6,1dbc <Fault_DrawStackTrace+0x154>
    1dac:	8fbf0044 	lw	ra,68(sp)
    1db0:	5653ffe5 	bnel	s2,s3,1d48 <Fault_DrawStackTrace+0xe0>
    1db4:	8fa40074 	lw	a0,116(sp)
    1db8:	8fbf0044 	lw	ra,68(sp)
    1dbc:	8fb00020 	lw	s0,32(sp)
    1dc0:	8fb10024 	lw	s1,36(sp)
    1dc4:	8fb20028 	lw	s2,40(sp)
    1dc8:	8fb3002c 	lw	s3,44(sp)
    1dcc:	8fb40030 	lw	s4,48(sp)
    1dd0:	8fb50034 	lw	s5,52(sp)
    1dd4:	8fb60038 	lw	s6,56(sp)
    1dd8:	8fb7003c 	lw	s7,60(sp)
    1ddc:	8fbe0040 	lw	s8,64(sp)
    1de0:	03e00008 	jr	ra
    1de4:	27bd0070 	addiu	sp,sp,112

00001de8 <Fault_LogStackTrace>:
    1de8:	3c08fffa 	lui	t0,0xfffa
    1dec:	03a04825 	move	t1,sp
    1df0:	27bdffa0 	addiu	sp,sp,-96
    1df4:	35085a5a 	ori	t0,t0,0x5a5a
    1df8:	2529fff8 	addiu	t1,t1,-8
    1dfc:	ad280000 	sw	t0,0(t1)
    1e00:	153dfffd 	bne	t1,sp,1df8 <Fault_LogStackTrace+0x10>
    1e04:	ad280004 	sw	t0,4(t1)
    1e08:	afbf003c 	sw	ra,60(sp)
    1e0c:	afbe0038 	sw	s8,56(sp)
    1e10:	afb70034 	sw	s7,52(sp)
    1e14:	afb60030 	sw	s6,48(sp)
    1e18:	afb5002c 	sw	s5,44(sp)
    1e1c:	afb40028 	sw	s4,40(sp)
    1e20:	afb30024 	sw	s3,36(sp)
    1e24:	afb20020 	sw	s2,32(sp)
    1e28:	afb1001c 	sw	s1,28(sp)
    1e2c:	afb00018 	sw	s0,24(sp)
    1e30:	00803025 	move	a2,a0
    1e34:	afa50064 	sw	a1,100(sp)
    1e38:	8ccf00f4 	lw	t7,244(a2)
    1e3c:	3c040000 	lui	a0,0x0
    1e40:	248407a0 	addiu	a0,a0,1952
    1e44:	afaf0058 	sw	t7,88(sp)
    1e48:	8cc90104 	lw	t1,260(a2)
    1e4c:	afa90054 	sw	t1,84(sp)
    1e50:	8cca011c 	lw	t2,284(a2)
    1e54:	0c000000 	jal	0 <Fault_SleepImpl>
    1e58:	afaa0050 	sw	t2,80(sp)
    1e5c:	8fab0064 	lw	t3,100(sp)
    1e60:	24100001 	li	s0,1
    1e64:	8fac0054 	lw	t4,84(sp)
    1e68:	29610002 	slti	at,t3,2
    1e6c:	5420002f 	bnezl	at,1f2c <Fault_LogStackTrace+0x144>
    1e70:	8fbf003c 	lw	ra,60(sp)
    1e74:	15800003 	bnez	t4,1e84 <Fault_LogStackTrace+0x9c>
    1e78:	8fad0058 	lw	t5,88(sp)
    1e7c:	51a0002b 	beqzl	t5,1f2c <Fault_LogStackTrace+0x144>
    1e80:	8fbf003c 	lw	ra,60(sp)
    1e84:	8fb10050 	lw	s1,80(sp)
    1e88:	3c1e0000 	lui	s8,0x0
    1e8c:	27de0000 	addiu	s8,s8,0
    1e90:	123e0025 	beq	s1,s8,1f28 <Fault_LogStackTrace+0x140>
    1e94:	27b70054 	addiu	s7,sp,84
    1e98:	3c140000 	lui	s4,0x0
    1e9c:	3c130000 	lui	s3,0x0
    1ea0:	3c120000 	lui	s2,0x0
    1ea4:	265207c8 	addiu	s2,s2,1992
    1ea8:	267307d4 	addiu	s3,s3,2004
    1eac:	269407e0 	addiu	s4,s4,2016
    1eb0:	27b60050 	addiu	s6,sp,80
    1eb4:	27b50058 	addiu	s5,sp,88
    1eb8:	02402025 	move	a0,s2
    1ebc:	8fa50058 	lw	a1,88(sp)
    1ec0:	0c000000 	jal	0 <Fault_SleepImpl>
    1ec4:	02203025 	move	a2,s1
    1ec8:	0c000000 	jal	0 <Fault_SleepImpl>
    1ecc:	8fa40050 	lw	a0,80(sp)
    1ed0:	10400003 	beqz	v0,1ee0 <Fault_LogStackTrace+0xf8>
    1ed4:	00402825 	move	a1,v0
    1ed8:	0c000000 	jal	0 <Fault_SleepImpl>
    1edc:	02602025 	move	a0,s3
    1ee0:	0c000000 	jal	0 <Fault_SleepImpl>
    1ee4:	02802025 	move	a0,s4
    1ee8:	02a02025 	move	a0,s5
    1eec:	02c02825 	move	a1,s6
    1ef0:	0c000000 	jal	0 <Fault_SleepImpl>
    1ef4:	02e03025 	move	a2,s7
    1ef8:	8fae0064 	lw	t6,100(sp)
    1efc:	26100001 	addiu	s0,s0,1
    1f00:	8faf0054 	lw	t7,84(sp)
    1f04:	020e082a 	slt	at,s0,t6
    1f08:	10200007 	beqz	at,1f28 <Fault_LogStackTrace+0x140>
    1f0c:	8fb80058 	lw	t8,88(sp)
    1f10:	15e00003 	bnez	t7,1f20 <Fault_LogStackTrace+0x138>
    1f14:	8fb10050 	lw	s1,80(sp)
    1f18:	53000004 	beqzl	t8,1f2c <Fault_LogStackTrace+0x144>
    1f1c:	8fbf003c 	lw	ra,60(sp)
    1f20:	563effe6 	bnel	s1,s8,1ebc <Fault_LogStackTrace+0xd4>
    1f24:	02402025 	move	a0,s2
    1f28:	8fbf003c 	lw	ra,60(sp)
    1f2c:	8fb00018 	lw	s0,24(sp)
    1f30:	8fb1001c 	lw	s1,28(sp)
    1f34:	8fb20020 	lw	s2,32(sp)
    1f38:	8fb30024 	lw	s3,36(sp)
    1f3c:	8fb40028 	lw	s4,40(sp)
    1f40:	8fb5002c 	lw	s5,44(sp)
    1f44:	8fb60030 	lw	s6,48(sp)
    1f48:	8fb70034 	lw	s7,52(sp)
    1f4c:	8fbe0038 	lw	s8,56(sp)
    1f50:	03e00008 	jr	ra
    1f54:	27bd0060 	addiu	sp,sp,96

00001f58 <Fault_ResumeThread>:
    1f58:	3c08fffa 	lui	t0,0xfffa
    1f5c:	03a04825 	move	t1,sp
    1f60:	27bdffe8 	addiu	sp,sp,-24
    1f64:	35085a5a 	ori	t0,t0,0x5a5a
    1f68:	2529fff8 	addiu	t1,t1,-8
    1f6c:	ad280000 	sw	t0,0(t1)
    1f70:	153dfffd 	bne	t1,sp,1f68 <Fault_ResumeThread+0x10>
    1f74:	ad280004 	sw	t0,4(t1)
    1f78:	afbf0014 	sw	ra,20(sp)
    1f7c:	00803025 	move	a2,a0
    1f80:	8cce011c 	lw	t6,284(a2)
    1f84:	acc00120 	sw	zero,288(a2)
    1f88:	acc0012c 	sw	zero,300(a2)
    1f8c:	25cf0004 	addiu	t7,t6,4
    1f90:	accf011c 	sw	t7,284(a2)
    1f94:	2418000d 	li	t8,13
    1f98:	adf80000 	sw	t8,0(t7)
    1f9c:	8cc4011c 	lw	a0,284(a2)
    1fa0:	afa60018 	sw	a2,24(sp)
    1fa4:	0c000000 	jal	0 <Fault_SleepImpl>
    1fa8:	24050004 	li	a1,4
    1fac:	8fa60018 	lw	a2,24(sp)
    1fb0:	24050004 	li	a1,4
    1fb4:	0c000000 	jal	0 <Fault_SleepImpl>
    1fb8:	8cc4011c 	lw	a0,284(a2)
    1fbc:	0c000000 	jal	0 <Fault_SleepImpl>
    1fc0:	8fa40018 	lw	a0,24(sp)
    1fc4:	8fbf0014 	lw	ra,20(sp)
    1fc8:	27bd0018 	addiu	sp,sp,24
    1fcc:	03e00008 	jr	ra
    1fd0:	00000000 	nop

00001fd4 <Fault_CommitFB>:
    1fd4:	3c18fffa 	lui	t8,0xfffa
    1fd8:	03a0c825 	move	t9,sp
    1fdc:	27bdffe0 	addiu	sp,sp,-32
    1fe0:	37185a5a 	ori	t8,t8,0x5a5a
    1fe4:	2739fff8 	addiu	t9,t9,-8
    1fe8:	af380000 	sw	t8,0(t9)
    1fec:	173dfffd 	bne	t9,sp,1fe4 <Fault_CommitFB+0x10>
    1ff0:	af380004 	sw	t8,4(t9)
    1ff4:	afbf0014 	sw	ra,20(sp)
    1ff8:	3c013f80 	lui	at,0x3f80
    1ffc:	44816000 	mtc1	at,$f12
    2000:	0c000000 	jal	0 <Fault_SleepImpl>
    2004:	00000000 	nop
    2008:	3c040000 	lui	a0,0x0
    200c:	0c000000 	jal	0 <Fault_SleepImpl>
    2010:	24840000 	addiu	a0,a0,0
    2014:	0c000000 	jal	0 <Fault_SleepImpl>
    2018:	24040042 	li	a0,66
    201c:	0c000000 	jal	0 <Fault_SleepImpl>
    2020:	00002025 	move	a0,zero
    2024:	3c0e0000 	lui	t6,0x0
    2028:	8dce0000 	lw	t6,0(t6)
    202c:	8dc20844 	lw	v0,2116(t6)
    2030:	10400003 	beqz	v0,2040 <Fault_CommitFB+0x6c>
    2034:	00000000 	nop
    2038:	1000000c 	b	206c <Fault_CommitFB+0x98>
    203c:	00402025 	move	a0,v0
    2040:	0c000000 	jal	0 <Fault_SleepImpl>
    2044:	00000000 	nop
    2048:	3c038000 	lui	v1,0x8000
    204c:	14430007 	bne	v0,v1,206c <Fault_CommitFB+0x98>
    2050:	00402025 	move	a0,v0
    2054:	3c0f0000 	lui	t7,0x0
    2058:	8def0000 	lw	t7,0(t7)
    205c:	3c01fffd 	lui	at,0xfffd
    2060:	3421a800 	ori	at,at,0xa800
    2064:	01e32025 	or	a0,t7,v1
    2068:	00812021 	addu	a0,a0,at
    206c:	0c000000 	jal	0 <Fault_SleepImpl>
    2070:	afa4001c 	sw	a0,28(sp)
    2074:	8fa4001c 	lw	a0,28(sp)
    2078:	24050140 	li	a1,320
    207c:	0c000000 	jal	0 <Fault_SleepImpl>
    2080:	240600f0 	li	a2,240
    2084:	8fbf0014 	lw	ra,20(sp)
    2088:	27bd0020 	addiu	sp,sp,32
    208c:	03e00008 	jr	ra
    2090:	00000000 	nop

00002094 <Fault_ProcessClients>:
    2094:	3c19fffa 	lui	t9,0xfffa
    2098:	03a04025 	move	t0,sp
    209c:	27bdffd0 	addiu	sp,sp,-48
    20a0:	37395a5a 	ori	t9,t9,0x5a5a
    20a4:	2508fff8 	addiu	t0,t0,-8
    20a8:	ad190000 	sw	t9,0(t0)
    20ac:	151dfffd 	bne	t0,sp,20a4 <Fault_ProcessClients+0x10>
    20b0:	ad190004 	sw	t9,4(t0)
    20b4:	afbf002c 	sw	ra,44(sp)
    20b8:	afb20028 	sw	s2,40(sp)
    20bc:	afb10024 	sw	s1,36(sp)
    20c0:	afb00020 	sw	s0,32(sp)
    20c4:	3c0e0000 	lui	t6,0x0
    20c8:	8dce0000 	lw	t6,0(t6)
    20cc:	3c120000 	lui	s2,0x0
    20d0:	00008825 	move	s1,zero
    20d4:	8dd007d8 	lw	s0,2008(t6)
    20d8:	265207e4 	addiu	s2,s2,2020
    20dc:	52000020 	beqzl	s0,2160 <Fault_ProcessClients+0xcc>
    20e0:	8fbf002c 	lw	ra,44(sp)
    20e4:	8e0f0004 	lw	t7,4(s0)
    20e8:	51e0001a 	beqzl	t7,2154 <Fault_ProcessClients+0xc0>
    20ec:	8e100000 	lw	s0,0(s0)
    20f0:	0c000000 	jal	0 <Fault_SleepImpl>
    20f4:	00000000 	nop
    20f8:	2404fffe 	li	a0,-2
    20fc:	0c000000 	jal	0 <Fault_SleepImpl>
    2100:	00002825 	move	a1,zero
    2104:	8e18000c 	lw	t8,12(s0)
    2108:	02202825 	move	a1,s1
    210c:	8e070008 	lw	a3,8(s0)
    2110:	26310001 	addiu	s1,s1,1
    2114:	02402025 	move	a0,s2
    2118:	02003025 	move	a2,s0
    211c:	0c000000 	jal	0 <Fault_SleepImpl>
    2120:	afb80010 	sw	t8,16(sp)
    2124:	00002025 	move	a0,zero
    2128:	0c000000 	jal	0 <Fault_SleepImpl>
    212c:	00002825 	move	a1,zero
    2130:	8e040004 	lw	a0,4(s0)
    2134:	8e050008 	lw	a1,8(s0)
    2138:	0c000000 	jal	0 <Fault_SleepImpl>
    213c:	8e06000c 	lw	a2,12(s0)
    2140:	0c000000 	jal	0 <Fault_SleepImpl>
    2144:	00000000 	nop
    2148:	0c000000 	jal	0 <Fault_SleepImpl>
    214c:	00000000 	nop
    2150:	8e100000 	lw	s0,0(s0)
    2154:	5600ffe4 	bnezl	s0,20e8 <Fault_ProcessClients+0x54>
    2158:	8e0f0004 	lw	t7,4(s0)
    215c:	8fbf002c 	lw	ra,44(sp)
    2160:	8fb00020 	lw	s0,32(sp)
    2164:	8fb10024 	lw	s1,36(sp)
    2168:	8fb20028 	lw	s2,40(sp)
    216c:	03e00008 	jr	ra
    2170:	27bd0030 	addiu	sp,sp,48

00002174 <Fault_UpdatePad>:
    2174:	3c0efffa 	lui	t6,0xfffa
    2178:	03a07825 	move	t7,sp
    217c:	27bdffe8 	addiu	sp,sp,-24
    2180:	35ce5a5a 	ori	t6,t6,0x5a5a
    2184:	25effff8 	addiu	t7,t7,-8
    2188:	adee0000 	sw	t6,0(t7)
    218c:	15fdfffd 	bne	t7,sp,2184 <Fault_UpdatePad+0x10>
    2190:	adee0004 	sw	t6,4(t7)
    2194:	afbf0014 	sw	ra,20(sp)
    2198:	0c000000 	jal	0 <Fault_SleepImpl>
    219c:	00000000 	nop
    21a0:	8fbf0014 	lw	ra,20(sp)
    21a4:	27bd0018 	addiu	sp,sp,24
    21a8:	03e00008 	jr	ra
    21ac:	00000000 	nop

000021b0 <Fault_ThreadEntry>:
    21b0:	3c0afffa 	lui	t2,0xfffa
    21b4:	03a05825 	move	t3,sp
    21b8:	27bdffa8 	addiu	sp,sp,-88
    21bc:	354a5a5a 	ori	t2,t2,0x5a5a
    21c0:	256bfff8 	addiu	t3,t3,-8
    21c4:	ad6a0000 	sw	t2,0(t3)
    21c8:	157dfffd 	bne	t3,sp,21c0 <Fault_ThreadEntry+0x10>
    21cc:	ad6a0004 	sw	t2,4(t3)
    21d0:	afb1001c 	sw	s1,28(sp)
    21d4:	3c110000 	lui	s1,0x0
    21d8:	26310000 	addiu	s1,s1,0
    21dc:	afbf003c 	sw	ra,60(sp)
    21e0:	afbe0038 	sw	s8,56(sp)
    21e4:	afb70034 	sw	s7,52(sp)
    21e8:	afb60030 	sw	s6,48(sp)
    21ec:	afb5002c 	sw	s5,44(sp)
    21f0:	afb40028 	sw	s4,40(sp)
    21f4:	afb30024 	sw	s3,36(sp)
    21f8:	afb20020 	sw	s2,32(sp)
    21fc:	afb00018 	sw	s0,24(sp)
    2200:	afa40058 	sw	a0,88(sp)
    2204:	8e250000 	lw	a1,0(s1)
    2208:	2404000a 	li	a0,10
    220c:	24060001 	li	a2,1
    2210:	0c000000 	jal	0 <Fault_SleepImpl>
    2214:	24a507b0 	addiu	a1,a1,1968
    2218:	8e250000 	lw	a1,0(s1)
    221c:	2404000c 	li	a0,12
    2220:	24060002 	li	a2,2
    2224:	0c000000 	jal	0 <Fault_SleepImpl>
    2228:	24a507b0 	addiu	a1,a1,1968
    222c:	3c170000 	lui	s7,0x0
    2230:	3c160000 	lui	s6,0x0
    2234:	3c150000 	lui	s5,0x0
    2238:	26b50808 	addiu	s5,s5,2056
    223c:	26d608a8 	addiu	s6,s6,2216
    2240:	26f708cc 	addiu	s7,s7,2252
    2244:	241e0002 	li	s8,2
    2248:	24140001 	li	s4,1
    224c:	27b30054 	addiu	s3,sp,84
    2250:	24120001 	li	s2,1
    2254:	8e240000 	lw	a0,0(s1)
    2258:	02602825 	move	a1,s3
    225c:	24060001 	li	a2,1
    2260:	0c000000 	jal	0 <Fault_SleepImpl>
    2264:	248407b0 	addiu	a0,a0,1968
    2268:	8fa30054 	lw	v1,84(sp)
    226c:	14740007 	bne	v1,s4,228c <Fault_ThreadEntry+0xdc>
    2270:	00000000 	nop
    2274:	8e2e0000 	lw	t6,0(s1)
    2278:	02a02025 	move	a0,s5
    227c:	0c000000 	jal	0 <Fault_SleepImpl>
    2280:	a1d207cd 	sb	s2,1997(t6)
    2284:	10000016 	b	22e0 <Fault_ThreadEntry+0x130>
    2288:	00000000 	nop
    228c:	147e0009 	bne	v1,s8,22b4 <Fault_ThreadEntry+0x104>
    2290:	24010003 	li	at,3
    2294:	8e380000 	lw	t8,0(s1)
    2298:	240f0002 	li	t7,2
    229c:	3c040000 	lui	a0,0x0
    22a0:	24840840 	addiu	a0,a0,2112
    22a4:	0c000000 	jal	0 <Fault_SleepImpl>
    22a8:	a30f07cd 	sb	t7,1997(t8)
    22ac:	1000000c 	b	22e0 <Fault_ThreadEntry+0x130>
    22b0:	00000000 	nop
    22b4:	14610005 	bne	v1,at,22cc <Fault_ThreadEntry+0x11c>
    22b8:	24190003 	li	t9,3
    22bc:	0c000000 	jal	0 <Fault_SleepImpl>
    22c0:	00008025 	move	s0,zero
    22c4:	10000014 	b	2318 <Fault_ThreadEntry+0x168>
    22c8:	00000000 	nop
    22cc:	8e280000 	lw	t0,0(s1)
    22d0:	3c040000 	lui	a0,0x0
    22d4:	24840874 	addiu	a0,a0,2164
    22d8:	0c000000 	jal	0 <Fault_SleepImpl>
    22dc:	a11907cd 	sb	t9,1997(t0)
    22e0:	0c000000 	jal	0 <Fault_SleepImpl>
    22e4:	00000000 	nop
    22e8:	00408025 	move	s0,v0
    22ec:	02c02025 	move	a0,s6
    22f0:	0c000000 	jal	0 <Fault_SleepImpl>
    22f4:	00402825 	move	a1,v0
    22f8:	16000007 	bnez	s0,2318 <Fault_ThreadEntry+0x168>
    22fc:	00000000 	nop
    2300:	0c000000 	jal	0 <Fault_SleepImpl>
    2304:	00000000 	nop
    2308:	00408025 	move	s0,v0
    230c:	02e02025 	move	a0,s7
    2310:	0c000000 	jal	0 <Fault_SleepImpl>
    2314:	00402825 	move	a1,v0
    2318:	5200ffcf 	beqzl	s0,2258 <Fault_ThreadEntry+0xa8>
    231c:	8e240000 	lw	a0,0(s1)
    2320:	0c000000 	jal	0 <Fault_SleepImpl>
    2324:	00000000 	nop
    2328:	2401f07f 	li	at,-3969
    232c:	0c000000 	jal	0 <Fault_SleepImpl>
    2330:	00412024 	and	a0,v0,at
    2334:	8e290000 	lw	t1,0(s1)
    2338:	ad3007d0 	sw	s0,2000(t1)
    233c:	8e2a0000 	lw	t2,0(s1)
    2340:	914b07ce 	lbu	t3,1998(t2)
    2344:	15600007 	bnez	t3,2364 <Fault_ThreadEntry+0x1b4>
    2348:	00000000 	nop
    234c:	0c000000 	jal	0 <Fault_SleepImpl>
    2350:	240403e8 	li	a0,1000
    2354:	8e2c0000 	lw	t4,0(s1)
    2358:	918d07ce 	lbu	t5,1998(t4)
    235c:	11a0fffb 	beqz	t5,234c <Fault_ThreadEntry+0x19c>
    2360:	00000000 	nop
    2364:	0c000000 	jal	0 <Fault_SleepImpl>
    2368:	240401f4 	li	a0,500
    236c:	0c000000 	jal	0 <Fault_SleepImpl>
    2370:	00000000 	nop
    2374:	8e2e0000 	lw	t6,0(s1)
    2378:	91cf07cf 	lbu	t7,1999(t6)
    237c:	11e00005 	beqz	t7,2394 <Fault_ThreadEntry+0x1e4>
    2380:	00000000 	nop
    2384:	0c000000 	jal	0 <Fault_SleepImpl>
    2388:	00000000 	nop
    238c:	10000006 	b	23a8 <Fault_ThreadEntry+0x1f8>
    2390:	8e380000 	lw	t8,0(s1)
    2394:	0c000000 	jal	0 <Fault_SleepImpl>
    2398:	3404f801 	li	a0,0xf801
    239c:	0c000000 	jal	0 <Fault_SleepImpl>
    23a0:	00000000 	nop
    23a4:	8e380000 	lw	t8,0(s1)
    23a8:	3404ffff 	li	a0,0xffff
    23ac:	0c000000 	jal	0 <Fault_SleepImpl>
    23b0:	a31207cf 	sb	s2,1999(t8)
    23b4:	0c000000 	jal	0 <Fault_SleepImpl>
    23b8:	00002025 	move	a0,zero
    23bc:	0c000000 	jal	0 <Fault_SleepImpl>
    23c0:	02002025 	move	a0,s0
    23c4:	0c000000 	jal	0 <Fault_SleepImpl>
    23c8:	02002025 	move	a0,s0
    23cc:	0c000000 	jal	0 <Fault_SleepImpl>
    23d0:	00000000 	nop
    23d4:	0c000000 	jal	0 <Fault_SleepImpl>
    23d8:	00000000 	nop
    23dc:	3c060000 	lui	a2,0x0
    23e0:	24c608e8 	addiu	a2,a2,2280
    23e4:	24040078 	li	a0,120
    23e8:	0c000000 	jal	0 <Fault_SleepImpl>
    23ec:	24050010 	li	a1,16
    23f0:	02002025 	move	a0,s0
    23f4:	24050024 	li	a1,36
    23f8:	24060018 	li	a2,24
    23fc:	0c000000 	jal	0 <Fault_SleepImpl>
    2400:	24070016 	li	a3,22
    2404:	02002025 	move	a0,s0
    2408:	0c000000 	jal	0 <Fault_SleepImpl>
    240c:	24050032 	li	a1,50
    2410:	0c000000 	jal	0 <Fault_SleepImpl>
    2414:	00000000 	nop
    2418:	0c000000 	jal	0 <Fault_SleepImpl>
    241c:	00000000 	nop
    2420:	8e04011c 	lw	a0,284(s0)
    2424:	8e0500f4 	lw	a1,244(s0)
    2428:	00003025 	move	a2,zero
    242c:	00003825 	move	a3,zero
    2430:	0c000000 	jal	0 <Fault_SleepImpl>
    2434:	2484ff00 	addiu	a0,a0,-256
    2438:	0c000000 	jal	0 <Fault_SleepImpl>
    243c:	00000000 	nop
    2440:	3c060000 	lui	a2,0x0
    2444:	24c608f4 	addiu	a2,a2,2292
    2448:	24040040 	li	a0,64
    244c:	0c000000 	jal	0 <Fault_SleepImpl>
    2450:	24050050 	li	a1,80
    2454:	3c060000 	lui	a2,0x0
    2458:	24c60910 	addiu	a2,a2,2320
    245c:	24040040 	li	a0,64
    2460:	0c000000 	jal	0 <Fault_SleepImpl>
    2464:	2405005a 	li	a1,90
    2468:	3c060000 	lui	a2,0x0
    246c:	24c6092c 	addiu	a2,a2,2348
    2470:	24040040 	li	a0,64
    2474:	0c000000 	jal	0 <Fault_SleepImpl>
    2478:	24050064 	li	a1,100
    247c:	3c060000 	lui	a2,0x0
    2480:	24c60948 	addiu	a2,a2,2376
    2484:	24040040 	li	a0,64
    2488:	0c000000 	jal	0 <Fault_SleepImpl>
    248c:	2405006e 	li	a1,110
    2490:	0c000000 	jal	0 <Fault_SleepImpl>
    2494:	00000000 	nop
    2498:	8e390000 	lw	t9,0(s1)
    249c:	932207cc 	lbu	v0,1996(t9)
    24a0:	1040ffc6 	beqz	v0,23bc <Fault_ThreadEntry+0x20c>
    24a4:	00000000 	nop
    24a8:	14400003 	bnez	v0,24b8 <Fault_ThreadEntry+0x308>
    24ac:	00000000 	nop
    24b0:	1040ffff 	beqz	v0,24b0 <Fault_ThreadEntry+0x300>
    24b4:	00000000 	nop
    24b8:	0c000000 	jal	0 <Fault_SleepImpl>
    24bc:	02002025 	move	a0,s0
    24c0:	1000ff65 	b	2258 <Fault_ThreadEntry+0xa8>
    24c4:	8e240000 	lw	a0,0(s1)
	...
    24e0:	8fbf003c 	lw	ra,60(sp)
    24e4:	8fb00018 	lw	s0,24(sp)
    24e8:	8fb1001c 	lw	s1,28(sp)
    24ec:	8fb20020 	lw	s2,32(sp)
    24f0:	8fb30024 	lw	s3,36(sp)
    24f4:	8fb40028 	lw	s4,40(sp)
    24f8:	8fb5002c 	lw	s5,44(sp)
    24fc:	8fb60030 	lw	s6,48(sp)
    2500:	8fb70034 	lw	s7,52(sp)
    2504:	8fbe0038 	lw	s8,56(sp)
    2508:	03e00008 	jr	ra
    250c:	27bd0058 	addiu	sp,sp,88

00002510 <Fault_SetFB>:
    2510:	3c0ffffa 	lui	t7,0xfffa
    2514:	03a0c025 	move	t8,sp
    2518:	27bdffe8 	addiu	sp,sp,-24
    251c:	35ef5a5a 	ori	t7,t7,0x5a5a
    2520:	2718fff8 	addiu	t8,t8,-8
    2524:	af0f0000 	sw	t7,0(t8)
    2528:	171dfffd 	bne	t8,sp,2520 <Fault_SetFB+0x10>
    252c:	af0f0004 	sw	t7,4(t8)
    2530:	afa5001c 	sw	a1,28(sp)
    2534:	afa60020 	sw	a2,32(sp)
    2538:	30c6ffff 	andi	a2,a2,0xffff
    253c:	30a5ffff 	andi	a1,a1,0xffff
    2540:	afbf0014 	sw	ra,20(sp)
    2544:	3c0e0000 	lui	t6,0x0
    2548:	8dce0000 	lw	t6,0(t6)
    254c:	0c000000 	jal	0 <Fault_SleepImpl>
    2550:	adc40844 	sw	a0,2116(t6)
    2554:	8fbf0014 	lw	ra,20(sp)
    2558:	27bd0018 	addiu	sp,sp,24
    255c:	03e00008 	jr	ra
    2560:	00000000 	nop

00002564 <Fault_Init>:
    2564:	3c08fffa 	lui	t0,0xfffa
    2568:	03a04825 	move	t1,sp
    256c:	27bdffd8 	addiu	sp,sp,-40
    2570:	35085a5a 	ori	t0,t0,0x5a5a
    2574:	2529fff8 	addiu	t1,t1,-8
    2578:	ad280000 	sw	t0,0(t1)
    257c:	153dfffd 	bne	t1,sp,2574 <Fault_Init+0x10>
    2580:	ad280004 	sw	t0,4(t1)
    2584:	afb00020 	sw	s0,32(sp)
    2588:	3c100000 	lui	s0,0x0
    258c:	26100000 	addiu	s0,s0,0
    2590:	afbf0024 	sw	ra,36(sp)
    2594:	3c0e0000 	lui	t6,0x0
    2598:	25c40000 	addiu	a0,t6,0
    259c:	ae040000 	sw	a0,0(s0)
    25a0:	0c000000 	jal	0 <Fault_SleepImpl>
    25a4:	24050850 	li	a1,2128
    25a8:	0c000000 	jal	0 <Fault_SleepImpl>
    25ac:	00000000 	nop
    25b0:	3c040000 	lui	a0,0x0
    25b4:	0c000000 	jal	0 <Fault_SleepImpl>
    25b8:	24840000 	addiu	a0,a0,0
    25bc:	8e0f0000 	lw	t7,0(s0)
    25c0:	3c090000 	lui	t1,0x0
    25c4:	25290000 	addiu	t1,t1,0
    25c8:	a1e007cc 	sb	zero,1996(t7)
    25cc:	8e180000 	lw	t8,0(s0)
    25d0:	240d0001 	li	t5,1
    25d4:	3c010000 	lui	at,0x0
    25d8:	a30007cd 	sb	zero,1997(t8)
    25dc:	8e190000 	lw	t9,0(s0)
    25e0:	24060001 	li	a2,1
    25e4:	a32007ce 	sb	zero,1998(t9)
    25e8:	8e080000 	lw	t0,0(s0)
    25ec:	ad0007d0 	sw	zero,2000(t0)
    25f0:	8e0a0000 	lw	t2,0(s0)
    25f4:	ad4907d4 	sw	t1,2004(t2)
    25f8:	8e0b0000 	lw	t3,0(s0)
    25fc:	ad6007d8 	sw	zero,2008(t3)
    2600:	8e0c0000 	lw	t4,0(s0)
    2604:	a18007cf 	sb	zero,1999(t4)
    2608:	a02d07ce 	sb	t5,1998(at)
    260c:	8e020000 	lw	v0,0(s0)
    2610:	244407b0 	addiu	a0,v0,1968
    2614:	0c000000 	jal	0 <Fault_SleepImpl>
    2618:	244507c8 	addiu	a1,v0,1992
    261c:	3c0f0000 	lui	t7,0x0
    2620:	25ef0964 	addiu	t7,t7,2404
    2624:	3c040000 	lui	a0,0x0
    2628:	3c050000 	lui	a1,0x0
    262c:	3c060000 	lui	a2,0x0
    2630:	240e0100 	li	t6,256
    2634:	afae0010 	sw	t6,16(sp)
    2638:	24c60600 	addiu	a2,a2,1536
    263c:	24a50000 	addiu	a1,a1,0
    2640:	24840000 	addiu	a0,a0,0
    2644:	afaf0014 	sw	t7,20(sp)
    2648:	0c000000 	jal	0 <Fault_SleepImpl>
    264c:	00003825 	move	a3,zero
    2650:	3c180000 	lui	t8,0x0
    2654:	27180600 	addiu	t8,t8,1536
    2658:	3c060000 	lui	a2,0x0
    265c:	2419007f 	li	t9,127
    2660:	afb90014 	sw	t9,20(sp)
    2664:	24c60000 	addiu	a2,a2,0
    2668:	afb80010 	sw	t8,16(sp)
    266c:	8e040000 	lw	a0,0(s0)
    2670:	24050002 	li	a1,2
    2674:	0c000000 	jal	0 <Fault_SleepImpl>
    2678:	00003825 	move	a3,zero
    267c:	0c000000 	jal	0 <Fault_SleepImpl>
    2680:	8e040000 	lw	a0,0(s0)
    2684:	8fbf0024 	lw	ra,36(sp)
    2688:	8fb00020 	lw	s0,32(sp)
    268c:	27bd0028 	addiu	sp,sp,40
    2690:	03e00008 	jr	ra
    2694:	00000000 	nop

00002698 <Fault_HangupFaultClient>:
    2698:	3c18fffa 	lui	t8,0xfffa
    269c:	03a0c825 	move	t9,sp
    26a0:	27bdffe8 	addiu	sp,sp,-24
    26a4:	37185a5a 	ori	t8,t8,0x5a5a
    26a8:	2739fff8 	addiu	t9,t9,-8
    26ac:	af380000 	sw	t8,0(t9)
    26b0:	173dfffd 	bne	t9,sp,26a8 <Fault_HangupFaultClient+0x10>
    26b4:	af380004 	sw	t8,4(t9)
    26b8:	afbf0014 	sw	ra,20(sp)
    26bc:	afa40018 	sw	a0,24(sp)
    26c0:	afa5001c 	sw	a1,28(sp)
    26c4:	0c000000 	jal	0 <Fault_SleepImpl>
    26c8:	00002025 	move	a0,zero
    26cc:	3c040000 	lui	a0,0x0
    26d0:	2484096c 	addiu	a0,a0,2412
    26d4:	0c000000 	jal	0 <Fault_SleepImpl>
    26d8:	00402825 	move	a1,v0
    26dc:	8fa20018 	lw	v0,24(sp)
    26e0:	3c050000 	lui	a1,0x0
    26e4:	24a50988 	addiu	a1,a1,2440
    26e8:	10400003 	beqz	v0,26f8 <Fault_HangupFaultClient+0x60>
    26ec:	3c040000 	lui	a0,0x0
    26f0:	10000001 	b	26f8 <Fault_HangupFaultClient+0x60>
    26f4:	00402825 	move	a1,v0
    26f8:	0c000000 	jal	0 <Fault_SleepImpl>
    26fc:	24840984 	addiu	a0,a0,2436
    2700:	8fa2001c 	lw	v0,28(sp)
    2704:	3c050000 	lui	a1,0x0
    2708:	24a50994 	addiu	a1,a1,2452
    270c:	10400003 	beqz	v0,271c <Fault_HangupFaultClient+0x84>
    2710:	3c040000 	lui	a0,0x0
    2714:	10000001 	b	271c <Fault_HangupFaultClient+0x84>
    2718:	00402825 	move	a1,v0
    271c:	0c000000 	jal	0 <Fault_SleepImpl>
    2720:	24840990 	addiu	a0,a0,2448
    2724:	0c000000 	jal	0 <Fault_SleepImpl>
    2728:	00002025 	move	a0,zero
    272c:	3c040000 	lui	a0,0x0
    2730:	2484099c 	addiu	a0,a0,2460
    2734:	0c000000 	jal	0 <Fault_SleepImpl>
    2738:	00402825 	move	a1,v0
    273c:	8fae0018 	lw	t6,24(sp)
    2740:	3c050000 	lui	a1,0x0
    2744:	24a509b8 	addiu	a1,a1,2488
    2748:	11c00003 	beqz	t6,2758 <Fault_HangupFaultClient+0xc0>
    274c:	3c040000 	lui	a0,0x0
    2750:	10000001 	b	2758 <Fault_HangupFaultClient+0xc0>
    2754:	01c02825 	move	a1,t6
    2758:	0c000000 	jal	0 <Fault_SleepImpl>
    275c:	248409b4 	addiu	a0,a0,2484
    2760:	8faf001c 	lw	t7,28(sp)
    2764:	3c050000 	lui	a1,0x0
    2768:	24a509c4 	addiu	a1,a1,2500
    276c:	11e00003 	beqz	t7,277c <Fault_HangupFaultClient+0xe4>
    2770:	3c040000 	lui	a0,0x0
    2774:	10000001 	b	277c <Fault_HangupFaultClient+0xe4>
    2778:	01e02825 	move	a1,t7
    277c:	0c000000 	jal	0 <Fault_SleepImpl>
    2780:	248409c0 	addiu	a0,a0,2496
    2784:	8fbf0014 	lw	ra,20(sp)
    2788:	27bd0018 	addiu	sp,sp,24
    278c:	03e00008 	jr	ra
    2790:	00000000 	nop

00002794 <Fault_AddHungupAndCrashImpl>:
    2794:	3c0ffffa 	lui	t7,0xfffa
    2798:	03a0c025 	move	t8,sp
    279c:	27bdffd0 	addiu	sp,sp,-48
    27a0:	35ef5a5a 	ori	t7,t7,0x5a5a
    27a4:	2718fff8 	addiu	t8,t8,-8
    27a8:	af0f0000 	sw	t7,0(t8)
    27ac:	171dfffd 	bne	t8,sp,27a4 <Fault_AddHungupAndCrashImpl+0x10>
    27b0:	af0f0004 	sw	t7,4(t8)
    27b4:	afbf0014 	sw	ra,20(sp)
    27b8:	00803025 	move	a2,a0
    27bc:	00a03825 	move	a3,a1
    27c0:	3c050000 	lui	a1,0x0
    27c4:	24a50000 	addiu	a1,a1,0
    27c8:	0c000000 	jal	0 <Fault_SleepImpl>
    27cc:	27a40020 	addiu	a0,sp,32
    27d0:	3c0e1111 	lui	t6,0x1111
    27d4:	a9c01111 	swl	zero,4369(t6)
    27d8:	b9c01114 	swr	zero,4372(t6)
    27dc:	8fbf0014 	lw	ra,20(sp)
    27e0:	27bd0030 	addiu	sp,sp,48
    27e4:	03e00008 	jr	ra
    27e8:	00000000 	nop

000027ec <Fault_AddHungupAndCrash>:
    27ec:	3c0efffa 	lui	t6,0xfffa
    27f0:	03a07825 	move	t7,sp
    27f4:	27bdfee8 	addiu	sp,sp,-280
    27f8:	35ce5a5a 	ori	t6,t6,0x5a5a
    27fc:	25effff8 	addiu	t7,t7,-8
    2800:	adee0000 	sw	t6,0(t7)
    2804:	15fdfffd 	bne	t7,sp,27fc <Fault_AddHungupAndCrash+0x10>
    2808:	adee0004 	sw	t6,4(t7)
    280c:	afbf0014 	sw	ra,20(sp)
    2810:	00803025 	move	a2,a0
    2814:	00a03825 	move	a3,a1
    2818:	3c050000 	lui	a1,0x0
    281c:	24a509cc 	addiu	a1,a1,2508
    2820:	0c000000 	jal	0 <Fault_SleepImpl>
    2824:	27a40018 	addiu	a0,sp,24
    2828:	27a40018 	addiu	a0,sp,24
    282c:	0c000000 	jal	0 <Fault_SleepImpl>
    2830:	00002825 	move	a1,zero
    2834:	8fbf0014 	lw	ra,20(sp)
    2838:	27bd0118 	addiu	sp,sp,280
    283c:	03e00008 	jr	ra
    2840:	00000000 	nop
	...
