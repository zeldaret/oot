
build/src/code/sched.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Sched_SwapFrameBuffer>:
       0:	27bdffd8 	addiu	sp,sp,-40
       4:	afa40028 	sw	a0,40(sp)
       8:	8fae0028 	lw	t6,40(sp)
       c:	afbf0014 	sw	ra,20(sp)
      10:	3c040000 	lui	a0,0x0
      14:	3c060000 	lui	a2,0x0
      18:	24c60014 	addiu	a2,a2,20
      1c:	24840000 	addiu	a0,a0,0
      20:	24070154 	li	a3,340
      24:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
      28:	8dc50004 	lw	a1,4(t6)
      2c:	8faf0028 	lw	t7,40(sp)
      30:	8de40004 	lw	a0,4(t7)
      34:	5080007e 	beqzl	a0,230 <Sched_SwapFrameBuffer+0x230>
      38:	8fad0028 	lw	t5,40(sp)
      3c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
      40:	00000000 	nop
      44:	8fa30028 	lw	v1,40(sp)
      48:	3c190000 	lui	t9,0x0
      4c:	27390000 	addiu	t9,t9,0
      50:	80780011 	lb	t8,17(v1)
      54:	a0780012 	sb	t8,18(v1)
      58:	8f280000 	lw	t0,0(t9)
      5c:	51000011 	beqzl	t0,a4 <Sched_SwapFrameBuffer+0xa4>
      60:	8c620008 	lw	v0,8(v1)
      64:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
      68:	00000000 	nop
      6c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
      70:	afa20018 	sw	v0,24(sp)
      74:	8fa90028 	lw	t1,40(sp)
      78:	3c040000 	lui	a0,0x0
      7c:	24840020 	addiu	a0,a0,32
      80:	11200003 	beqz	t1,90 <Sched_SwapFrameBuffer+0x90>
      84:	00403025 	move	a2,v0
      88:	10000002 	b	94 <Sched_SwapFrameBuffer+0x94>
      8c:	8d270004 	lw	a3,4(t1)
      90:	00003825 	move	a3,zero
      94:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
      98:	8fa50018 	lw	a1,24(sp)
      9c:	8fa30028 	lw	v1,40(sp)
      a0:	8c620008 	lw	v0,8(v1)
      a4:	3c050000 	lui	a1,0x0
      a8:	24060010 	li	a2,16
      ac:	10400003 	beqz	v0,bc <Sched_SwapFrameBuffer+0xbc>
      b0:	00000000 	nop
      b4:	10000002 	b	c0 <Sched_SwapFrameBuffer+0xc0>
      b8:	9445000a 	lhu	a1,10(v0)
      bc:	94a50002 	lhu	a1,2(a1)
      c0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
      c4:	8c640004 	lw	a0,4(v1)
      c8:	3c020000 	lui	v0,0x0
      cc:	24420000 	addiu	v0,v0,0
      d0:	8c430000 	lw	v1,0(v0)
      d4:	2405000d 	li	a1,13
      d8:	84641074 	lh	a0,4212(v1)
      dc:	14a40024 	bne	a1,a0,170 <Sched_SwapFrameBuffer+0x170>
      e0:	00000000 	nop
      e4:	846a1092 	lh	t2,4242(v1)
      e8:	10aa0021 	beq	a1,t2,170 <Sched_SwapFrameBuffer+0x170>
      ec:	00000000 	nop
      f0:	a4601076 	sh	zero,4214(v1)
      f4:	8c4b0000 	lw	t3,0(v0)
      f8:	24060001 	li	a2,1
      fc:	a5601078 	sh	zero,4216(t3)
     100:	8c4c0000 	lw	t4,0(v0)
     104:	a586107a 	sh	a2,4218(t4)
     108:	8c4d0000 	lw	t5,0(v0)
     10c:	a5a0107c 	sh	zero,4220(t5)
     110:	8c4e0000 	lw	t6,0(v0)
     114:	a5c6107e 	sh	a2,4222(t6)
     118:	8c4f0000 	lw	t7,0(v0)
     11c:	a5e01080 	sh	zero,4224(t7)
     120:	8c580000 	lw	t8,0(v0)
     124:	a7001082 	sh	zero,4226(t8)
     128:	8c590000 	lw	t9,0(v0)
     12c:	a7201084 	sh	zero,4228(t9)
     130:	8c480000 	lw	t0,0(v0)
     134:	a5001086 	sh	zero,4230(t0)
     138:	8c490000 	lw	t1,0(v0)
     13c:	a5201088 	sh	zero,4232(t1)
     140:	8c4a0000 	lw	t2,0(v0)
     144:	a540108a 	sh	zero,4234(t2)
     148:	8c4b0000 	lw	t3,0(v0)
     14c:	a560108c 	sh	zero,4236(t3)
     150:	8c4c0000 	lw	t4,0(v0)
     154:	a580108e 	sh	zero,4238(t4)
     158:	8c4d0000 	lw	t5,0(v0)
     15c:	a5a01090 	sh	zero,4240(t5)
     160:	8c4e0000 	lw	t6,0(v0)
     164:	a5c51092 	sh	a1,4242(t6)
     168:	8c430000 	lw	v1,0(v0)
     16c:	84641074 	lh	a0,4212(v1)
     170:	54a4002f 	bnel	a1,a0,230 <Sched_SwapFrameBuffer+0x230>
     174:	8fad0028 	lw	t5,40(sp)
     178:	846f1076 	lh	t7,4214(v1)
     17c:	24010002 	li	at,2
     180:	55e1002b 	bnel	t7,at,230 <Sched_SwapFrameBuffer+0x230>
     184:	8fad0028 	lw	t5,40(sp)
     188:	84781078 	lh	t8,4216(v1)
     18c:	24070002 	li	a3,2
     190:	13000003 	beqz	t8,1a0 <Sched_SwapFrameBuffer+0x1a0>
     194:	00000000 	nop
     198:	10000001 	b	1a0 <Sched_SwapFrameBuffer+0x1a0>
     19c:	24070001 	li	a3,1
     1a0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     1a4:	00e02025 	move	a0,a3
     1a8:	3c020000 	lui	v0,0x0
     1ac:	24420000 	addiu	v0,v0,0
     1b0:	8c590000 	lw	t9,0(v0)
     1b4:	24070080 	li	a3,128
     1b8:	8728107a 	lh	t0,4218(t9)
     1bc:	11000003 	beqz	t0,1cc <Sched_SwapFrameBuffer+0x1cc>
     1c0:	00000000 	nop
     1c4:	10000001 	b	1cc <Sched_SwapFrameBuffer+0x1cc>
     1c8:	24070040 	li	a3,64
     1cc:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     1d0:	00e02025 	move	a0,a3
     1d4:	3c020000 	lui	v0,0x0
     1d8:	24420000 	addiu	v0,v0,0
     1dc:	8c490000 	lw	t1,0(v0)
     1e0:	24070008 	li	a3,8
     1e4:	852a107c 	lh	t2,4220(t1)
     1e8:	11400003 	beqz	t2,1f8 <Sched_SwapFrameBuffer+0x1f8>
     1ec:	00000000 	nop
     1f0:	10000001 	b	1f8 <Sched_SwapFrameBuffer+0x1f8>
     1f4:	24070004 	li	a3,4
     1f8:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     1fc:	00e02025 	move	a0,a3
     200:	3c020000 	lui	v0,0x0
     204:	24420000 	addiu	v0,v0,0
     208:	8c4b0000 	lw	t3,0(v0)
     20c:	24070020 	li	a3,32
     210:	856c107e 	lh	t4,4222(t3)
     214:	11800003 	beqz	t4,224 <Sched_SwapFrameBuffer+0x224>
     218:	00000000 	nop
     21c:	10000001 	b	224 <Sched_SwapFrameBuffer+0x224>
     220:	24070010 	li	a3,16
     224:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     228:	00e02025 	move	a0,a3
     22c:	8fad0028 	lw	t5,40(sp)
     230:	a1a00010 	sb	zero,16(t5)
     234:	8fbf0014 	lw	ra,20(sp)
     238:	27bd0028 	addiu	sp,sp,40
     23c:	03e00008 	jr	ra
     240:	00000000 	nop

00000244 <func_800C84E4>:
     244:	27bdffe8 	addiu	sp,sp,-24
     248:	afbf0014 	sw	ra,20(sp)
     24c:	afa5001c 	sw	a1,28(sp)
     250:	8c8e024c 	lw	t6,588(a0)
     254:	3c0f0000 	lui	t7,0x0
     258:	25ef0000 	addiu	t7,t7,0
     25c:	11c00007 	beqz	t6,27c <func_800C84E4+0x38>
     260:	00000000 	nop
     264:	ac80024c 	sw	zero,588(a0)
     268:	8df80000 	lw	t8,0(t7)
     26c:	17000003 	bnez	t8,27c <func_800C84E4+0x38>
     270:	00000000 	nop
     274:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     278:	00002025 	move	a0,zero
     27c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     280:	8fa4001c 	lw	a0,28(sp)
     284:	8fbf0014 	lw	ra,20(sp)
     288:	27bd0018 	addiu	sp,sp,24
     28c:	03e00008 	jr	ra
     290:	00000000 	nop

00000294 <Sched_HandleReset>:
     294:	27bdffe0 	addiu	sp,sp,-32
     298:	afbf0014 	sw	ra,20(sp)
     29c:	afa40020 	sw	a0,32(sp)
     2a0:	8c8f0230 	lw	t7,560(a0)
     2a4:	51e0009e 	beqzl	t7,520 <Sched_HandleReset+0x28c>
     2a8:	8fbf0014 	lw	ra,20(sp)
     2ac:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     2b0:	00000000 	nop
     2b4:	8fb80020 	lw	t8,32(sp)
     2b8:	afa20018 	sw	v0,24(sp)
     2bc:	afa3001c 	sw	v1,28(sp)
     2c0:	8f190230 	lw	t9,560(t8)
     2c4:	3c180000 	lui	t8,0x0
     2c8:	8faf001c 	lw	t7,28(sp)
     2cc:	8f28000c 	lw	t0,12(t9)
     2d0:	3c190000 	lui	t9,0x0
     2d4:	8fae0018 	lw	t6,24(sp)
     2d8:	1500001e 	bnez	t0,354 <Sched_HandleReset+0xc0>
     2dc:	24060000 	li	a2,0
     2e0:	3c040000 	lui	a0,0x0
     2e4:	24840040 	addiu	a0,a0,64
     2e8:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     2ec:	240501a5 	li	a1,421
     2f0:	3c0c0000 	lui	t4,0x0
     2f4:	3c0d0000 	lui	t5,0x0
     2f8:	8dad0004 	lw	t5,4(t5)
     2fc:	8d8c0000 	lw	t4,0(t4)
     300:	8faa0018 	lw	t2,24(sp)
     304:	8fab001c 	lw	t3,28(sp)
     308:	24060000 	li	a2,0
     30c:	014c2023 	subu	a0,t2,t4
     310:	016d082b 	sltu	at,t3,t5
     314:	00812023 	subu	a0,a0,at
     318:	24070040 	li	a3,64
     31c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     320:	016d2823 	subu	a1,t3,t5
     324:	00402025 	move	a0,v0
     328:	00602825 	move	a1,v1
     32c:	24060000 	li	a2,0
     330:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     334:	24070bb8 	li	a3,3000
     338:	3c040000 	lui	a0,0x0
     33c:	2484004c 	addiu	a0,a0,76
     340:	00403025 	move	a2,v0
     344:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     348:	00603825 	move	a3,v1
     34c:	10000074 	b	520 <Sched_HandleReset+0x28c>
     350:	8fbf0014 	lw	ra,20(sp)
     354:	8f180000 	lw	t8,0(t8)
     358:	8f390004 	lw	t9,4(t9)
     35c:	24070040 	li	a3,64
     360:	01d82023 	subu	a0,t6,t8
     364:	01f9082b 	sltu	at,t7,t9
     368:	00812023 	subu	a0,a0,at
     36c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     370:	01f92823 	subu	a1,t7,t9
     374:	00402025 	move	a0,v0
     378:	00602825 	move	a1,v1
     37c:	24060000 	li	a2,0
     380:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     384:	24070bb8 	li	a3,3000
     388:	1440001c 	bnez	v0,3fc <Sched_HandleReset+0x168>
     38c:	3c01000f 	lui	at,0xf
     390:	34214241 	ori	at,at,0x4241
     394:	0061082b 	sltu	at,v1,at
     398:	10200018 	beqz	at,3fc <Sched_HandleReset+0x168>
     39c:	8fa80018 	lw	t0,24(sp)
     3a0:	3c0a0000 	lui	t2,0x0
     3a4:	3c0b0000 	lui	t3,0x0
     3a8:	8d6b0004 	lw	t3,4(t3)
     3ac:	8d4a0000 	lw	t2,0(t2)
     3b0:	8fa9001c 	lw	t1,28(sp)
     3b4:	24060000 	li	a2,0
     3b8:	010a2023 	subu	a0,t0,t2
     3bc:	012b082b 	sltu	at,t1,t3
     3c0:	00812023 	subu	a0,a0,at
     3c4:	24070040 	li	a3,64
     3c8:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     3cc:	012b2823 	subu	a1,t1,t3
     3d0:	00402025 	move	a0,v0
     3d4:	00602825 	move	a1,v1
     3d8:	24060000 	li	a2,0
     3dc:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     3e0:	24070bb8 	li	a3,3000
     3e4:	14400005 	bnez	v0,3fc <Sched_HandleReset+0x168>
     3e8:	3c01000f 	lui	at,0xf
     3ec:	34214241 	ori	at,at,0x4241
     3f0:	0061082b 	sltu	at,v1,at
     3f4:	5420004a 	bnezl	at,520 <Sched_HandleReset+0x28c>
     3f8:	8fbf0014 	lw	ra,20(sp)
     3fc:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     400:	00000000 	nop
     404:	8fac0020 	lw	t4,32(sp)
     408:	3c040000 	lui	a0,0x0
     40c:	248400ac 	addiu	a0,a0,172
     410:	8d8d0230 	lw	t5,560(t4)
     414:	51a0001f 	beqzl	t5,494 <Sched_HandleReset+0x200>
     418:	8fa80020 	lw	t0,32(sp)
     41c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     420:	240501ab 	li	a1,427
     424:	3c180000 	lui	t8,0x0
     428:	3c190000 	lui	t9,0x0
     42c:	8f390004 	lw	t9,4(t9)
     430:	8f180000 	lw	t8,0(t8)
     434:	8fae0018 	lw	t6,24(sp)
     438:	8faf001c 	lw	t7,28(sp)
     43c:	24060000 	li	a2,0
     440:	01d82023 	subu	a0,t6,t8
     444:	01f9082b 	sltu	at,t7,t9
     448:	00812023 	subu	a0,a0,at
     44c:	24070040 	li	a3,64
     450:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     454:	01f92823 	subu	a1,t7,t9
     458:	00402025 	move	a0,v0
     45c:	00602825 	move	a1,v1
     460:	24060000 	li	a2,0
     464:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     468:	24070bb8 	li	a3,3000
     46c:	3c040000 	lui	a0,0x0
     470:	248400b8 	addiu	a0,a0,184
     474:	00403025 	move	a2,v0
     478:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     47c:	00603825 	move	a3,v1
     480:	8fa40020 	lw	a0,32(sp)
     484:	2405029b 	li	a1,667
     488:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     48c:	00003025 	move	a2,zero
     490:	8fa80020 	lw	t0,32(sp)
     494:	3c040000 	lui	a0,0x0
     498:	24840118 	addiu	a0,a0,280
     49c:	8d090234 	lw	t1,564(t0)
     4a0:	5120001f 	beqzl	t1,520 <Sched_HandleReset+0x28c>
     4a4:	8fbf0014 	lw	ra,20(sp)
     4a8:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     4ac:	240501af 	li	a1,431
     4b0:	3c0c0000 	lui	t4,0x0
     4b4:	3c0d0000 	lui	t5,0x0
     4b8:	8dad0004 	lw	t5,4(t5)
     4bc:	8d8c0000 	lw	t4,0(t4)
     4c0:	8faa0018 	lw	t2,24(sp)
     4c4:	8fab001c 	lw	t3,28(sp)
     4c8:	24060000 	li	a2,0
     4cc:	014c2023 	subu	a0,t2,t4
     4d0:	016d082b 	sltu	at,t3,t5
     4d4:	00812023 	subu	a0,a0,at
     4d8:	24070040 	li	a3,64
     4dc:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     4e0:	016d2823 	subu	a1,t3,t5
     4e4:	00402025 	move	a0,v0
     4e8:	00602825 	move	a1,v1
     4ec:	24060000 	li	a2,0
     4f0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     4f4:	24070bb8 	li	a3,3000
     4f8:	3c040000 	lui	a0,0x0
     4fc:	24840124 	addiu	a0,a0,292
     500:	00403025 	move	a2,v0
     504:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     508:	00603825 	move	a3,v1
     50c:	8fa40020 	lw	a0,32(sp)
     510:	2405029c 	li	a1,668
     514:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     518:	00003025 	move	a2,zero
     51c:	8fbf0014 	lw	ra,20(sp)
     520:	27bd0020 	addiu	sp,sp,32
     524:	03e00008 	jr	ra
     528:	00000000 	nop

0000052c <Sched_HandleStart>:
     52c:	27bdffe8 	addiu	sp,sp,-24
     530:	afbf0014 	sw	ra,20(sp)
     534:	afa40018 	sw	a0,24(sp)
     538:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     53c:	24040001 	li	a0,1
     540:	8fbf0014 	lw	ra,20(sp)
     544:	27bd0018 	addiu	sp,sp,24
     548:	03e00008 	jr	ra
     54c:	00000000 	nop

00000550 <Sched_QueueTask>:
     550:	27bdffd8 	addiu	sp,sp,-40
     554:	afbf001c 	sw	ra,28(sp)
     558:	afb00018 	sw	s0,24(sp)
     55c:	8ca20010 	lw	v0,16(a1)
     560:	24010002 	li	at,2
     564:	00808025 	move	s0,a0
     568:	10410011 	beq	v0,at,5b0 <Sched_QueueTask+0x60>
     56c:	00a03825 	move	a3,a1
     570:	24010001 	li	at,1
     574:	1041000e 	beq	v0,at,5b0 <Sched_QueueTask+0x60>
     578:	24010004 	li	at,4
     57c:	5041000d 	beql	v0,at,5b4 <Sched_QueueTask+0x64>
     580:	24010002 	li	at,2
     584:	1040000a 	beqz	v0,5b0 <Sched_QueueTask+0x60>
     588:	3c040000 	lui	a0,0x0
     58c:	3c050000 	lui	a1,0x0
     590:	24a501d8 	addiu	a1,a1,472
     594:	2484017c 	addiu	a0,a0,380
     598:	240601cf 	li	a2,463
     59c:	afa20024 	sw	v0,36(sp)
     5a0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     5a4:	afa7002c 	sw	a3,44(sp)
     5a8:	8fa20024 	lw	v0,36(sp)
     5ac:	8fa7002c 	lw	a3,44(sp)
     5b0:	24010002 	li	at,2
     5b4:	14410015 	bne	v0,at,60c <Sched_QueueTask+0xbc>
     5b8:	3c190000 	lui	t9,0x0
     5bc:	3c0e0000 	lui	t6,0x0
     5c0:	25ce0000 	addiu	t6,t6,0
     5c4:	8dcf0000 	lw	t7,0(t6)
     5c8:	3c040000 	lui	a0,0x0
     5cc:	248401e4 	addiu	a0,a0,484
     5d0:	51e00005 	beqzl	t7,5e8 <Sched_QueueTask+0x98>
     5d4:	8e020228 	lw	v0,552(s0)
     5d8:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     5dc:	afa7002c 	sw	a3,44(sp)
     5e0:	8fa7002c 	lw	a3,44(sp)
     5e4:	8e020228 	lw	v0,552(s0)
     5e8:	24180001 	li	t8,1
     5ec:	50400004 	beqzl	v0,600 <Sched_QueueTask+0xb0>
     5f0:	ae070220 	sw	a3,544(s0)
     5f4:	10000002 	b	600 <Sched_QueueTask+0xb0>
     5f8:	ac470000 	sw	a3,0(v0)
     5fc:	ae070220 	sw	a3,544(s0)
     600:	ae070228 	sw	a3,552(s0)
     604:	10000011 	b	64c <Sched_QueueTask+0xfc>
     608:	ae18023c 	sw	t8,572(s0)
     60c:	27390000 	addiu	t9,t9,0
     610:	8f280000 	lw	t0,0(t9)
     614:	3c040000 	lui	a0,0x0
     618:	24840208 	addiu	a0,a0,520
     61c:	51000005 	beqzl	t0,634 <Sched_QueueTask+0xe4>
     620:	8e02022c 	lw	v0,556(s0)
     624:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     628:	afa7002c 	sw	a3,44(sp)
     62c:	8fa7002c 	lw	a3,44(sp)
     630:	8e02022c 	lw	v0,556(s0)
     634:	50400004 	beqzl	v0,648 <Sched_QueueTask+0xf8>
     638:	ae070224 	sw	a3,548(s0)
     63c:	10000002 	b	648 <Sched_QueueTask+0xf8>
     640:	ac470000 	sw	a3,0(v0)
     644:	ae070224 	sw	a3,548(s0)
     648:	ae07022c 	sw	a3,556(s0)
     64c:	8ce90008 	lw	t1,8(a3)
     650:	ace00000 	sw	zero,0(a3)
     654:	312a0003 	andi	t2,t1,0x3
     658:	acea0004 	sw	t2,4(a3)
     65c:	8fbf001c 	lw	ra,28(sp)
     660:	8fb00018 	lw	s0,24(sp)
     664:	27bd0028 	addiu	sp,sp,40
     668:	03e00008 	jr	ra
     66c:	00000000 	nop

00000670 <Sched_Yield>:
     670:	27bdffe8 	addiu	sp,sp,-24
     674:	afbf0014 	sw	ra,20(sp)
     678:	8c820230 	lw	v0,560(a0)
     67c:	00803825 	move	a3,a0
     680:	8c430004 	lw	v1,4(v0)
     684:	306e0010 	andi	t6,v1,0x10
     688:	55c00027 	bnezl	t6,728 <Sched_Yield+0xb8>
     68c:	8fbf0014 	lw	ra,20(sp)
     690:	8c4f0010 	lw	t7,16(v0)
     694:	24010002 	li	at,2
     698:	3c040000 	lui	a0,0x0
     69c:	15e10009 	bne	t7,at,6c4 <Sched_Yield+0x54>
     6a0:	24840228 	addiu	a0,a0,552
     6a4:	3c050000 	lui	a1,0x0
     6a8:	24a50254 	addiu	a1,a1,596
     6ac:	240601f0 	li	a2,496
     6b0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     6b4:	afa70018 	sw	a3,24(sp)
     6b8:	8fa70018 	lw	a3,24(sp)
     6bc:	8ce20230 	lw	v0,560(a3)
     6c0:	8c430004 	lw	v1,4(v0)
     6c4:	34780010 	ori	t8,v1,0x10
     6c8:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     6cc:	ac580004 	sw	t8,4(v0)
     6d0:	3c190000 	lui	t9,0x0
     6d4:	27390000 	addiu	t9,t9,0
     6d8:	8f280000 	lw	t0,0(t9)
     6dc:	51000012 	beqzl	t0,728 <Sched_Yield+0xb8>
     6e0:	8fbf0014 	lw	ra,20(sp)
     6e4:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     6e8:	00000000 	nop
     6ec:	00402025 	move	a0,v0
     6f0:	00602825 	move	a1,v1
     6f4:	24060000 	li	a2,0
     6f8:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     6fc:	24070040 	li	a3,64
     700:	00402025 	move	a0,v0
     704:	00602825 	move	a1,v1
     708:	24060000 	li	a2,0
     70c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     710:	24070bb8 	li	a3,3000
     714:	3c040000 	lui	a0,0x0
     718:	24840260 	addiu	a0,a0,608
     71c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     720:	00602825 	move	a1,v1
     724:	8fbf0014 	lw	ra,20(sp)
     728:	27bd0018 	addiu	sp,sp,24
     72c:	03e00008 	jr	ra
     730:	00000000 	nop

00000734 <func_800C89D4>:
     734:	27bdffe8 	addiu	sp,sp,-24
     738:	afbf0014 	sw	ra,20(sp)
     73c:	14a00003 	bnez	a1,74c <func_800C89D4+0x18>
     740:	00803025 	move	a2,a0
     744:	10000027 	b	7e4 <func_800C89D4+0xb0>
     748:	00001025 	move	v0,zero
     74c:	8cc40244 	lw	a0,580(a2)
     750:	50800004 	beqzl	a0,764 <func_800C89D4+0x30>
     754:	8cc20248 	lw	v0,584(a2)
     758:	10000022 	b	7e4 <func_800C89D4+0xb0>
     75c:	00001025 	move	v0,zero
     760:	8cc20248 	lw	v0,584(a2)
     764:	10400003 	beqz	v0,774 <func_800C89D4+0x40>
     768:	00000000 	nop
     76c:	1000001d 	b	7e4 <func_800C89D4+0xb0>
     770:	00001025 	move	v0,zero
     774:	10400003 	beqz	v0,784 <func_800C89D4+0x50>
     778:	00001825 	move	v1,zero
     77c:	10000001 	b	784 <func_800C89D4+0x50>
     780:	8c430004 	lw	v1,4(v0)
     784:	8cae000c 	lw	t6,12(a1)
     788:	8dc20000 	lw	v0,0(t6)
     78c:	14620003 	bne	v1,v0,79c <func_800C89D4+0x68>
     790:	00000000 	nop
     794:	10000013 	b	7e4 <func_800C89D4+0xb0>
     798:	00001025 	move	v0,zero
     79c:	10800003 	beqz	a0,7ac <func_800C89D4+0x78>
     7a0:	00001825 	move	v1,zero
     7a4:	10000001 	b	7ac <func_800C89D4+0x78>
     7a8:	8c830004 	lw	v1,4(a0)
     7ac:	14620003 	bne	v1,v0,7bc <func_800C89D4+0x88>
     7b0:	00000000 	nop
     7b4:	1000000b 	b	7e4 <func_800C89D4+0xb0>
     7b8:	00001025 	move	v0,zero
     7bc:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     7c0:	afa5001c 	sw	a1,28(sp)
     7c4:	8fa5001c 	lw	a1,28(sp)
     7c8:	8caf000c 	lw	t7,12(a1)
     7cc:	8df80000 	lw	t8,0(t7)
     7d0:	54580004 	bnel	v0,t8,7e4 <func_800C89D4+0xb0>
     7d4:	00a01025 	move	v0,a1
     7d8:	10000002 	b	7e4 <func_800C89D4+0xb0>
     7dc:	00001025 	move	v0,zero
     7e0:	00a01025 	move	v0,a1
     7e4:	8fbf0014 	lw	ra,20(sp)
     7e8:	27bd0018 	addiu	sp,sp,24
     7ec:	03e00008 	jr	ra
     7f0:	00000000 	nop

000007f4 <Sched_Schedule>:
     7f4:	27bdffd8 	addiu	sp,sp,-40
     7f8:	afbf001c 	sw	ra,28(sp)
     7fc:	afb00018 	sw	s0,24(sp)
     800:	afa5002c 	sw	a1,44(sp)
     804:	afa60030 	sw	a2,48(sp)
     808:	8c8e023c 	lw	t6,572(a0)
     80c:	00e01825 	move	v1,a3
     810:	8c900224 	lw	s0,548(a0)
     814:	11c0000e 	beqz	t6,850 <Sched_Schedule+0x5c>
     818:	8c820220 	lw	v0,544(a0)
     81c:	30ef0002 	andi	t7,a3,0x2
     820:	11e0000b 	beqz	t7,850 <Sched_Schedule+0x5c>
     824:	00000000 	nop
     828:	aca20000 	sw	v0,0(a1)
     82c:	8c990220 	lw	t9,544(a0)
     830:	ac80023c 	sw	zero,572(a0)
     834:	2401fffd 	li	at,-3
     838:	8f280000 	lw	t0,0(t9)
     83c:	00e11824 	and	v1,a3,at
     840:	15000033 	bnez	t0,910 <Sched_Schedule+0x11c>
     844:	ac880220 	sw	t0,544(a0)
     848:	10000031 	b	910 <Sched_Schedule+0x11c>
     84c:	ac800228 	sw	zero,552(a0)
     850:	52000030 	beqzl	s0,914 <Sched_Schedule+0x120>
     854:	8fbf001c 	lw	ra,28(sp)
     858:	8e0a0004 	lw	t2,4(s0)
     85c:	30ee0002 	andi	t6,a3,0x2
     860:	314b0020 	andi	t3,t2,0x20
     864:	15600006 	bnez	t3,880 <Sched_Schedule+0x8c>
     868:	00000000 	nop
     86c:	8e0c0008 	lw	t4,8(s0)
     870:	24010003 	li	at,3
     874:	318d0001 	andi	t5,t4,0x1
     878:	15a0000c 	bnez	t5,8ac <Sched_Schedule+0xb8>
     87c:	00000000 	nop
     880:	11c00023 	beqz	t6,910 <Sched_Schedule+0x11c>
     884:	8faf002c 	lw	t7,44(sp)
     888:	adf00000 	sw	s0,0(t7)
     88c:	8c980224 	lw	t8,548(a0)
     890:	2401fffd 	li	at,-3
     894:	00e11824 	and	v1,a3,at
     898:	8f190000 	lw	t9,0(t8)
     89c:	1720001c 	bnez	t9,910 <Sched_Schedule+0x11c>
     8a0:	ac990224 	sw	t9,548(a0)
     8a4:	1000001a 	b	910 <Sched_Schedule+0x11c>
     8a8:	ac80022c 	sw	zero,556(a0)
     8ac:	54e10019 	bnel	a3,at,914 <Sched_Schedule+0x120>
     8b0:	8fbf001c 	lw	ra,28(sp)
     8b4:	8e09000c 	lw	t1,12(s0)
     8b8:	02002825 	move	a1,s0
     8bc:	5120000a 	beqzl	t1,8e8 <Sched_Schedule+0xf4>
     8c0:	8faa0030 	lw	t2,48(sp)
     8c4:	afa30024 	sw	v1,36(sp)
     8c8:	afa40028 	sw	a0,40(sp)
     8cc:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     8d0:	afa70034 	sw	a3,52(sp)
     8d4:	8fa30024 	lw	v1,36(sp)
     8d8:	8fa40028 	lw	a0,40(sp)
     8dc:	1040000c 	beqz	v0,910 <Sched_Schedule+0x11c>
     8e0:	8fa70034 	lw	a3,52(sp)
     8e4:	8faa0030 	lw	t2,48(sp)
     8e8:	2401fffc 	li	at,-4
     8ec:	00e11824 	and	v1,a3,at
     8f0:	ad500000 	sw	s0,0(t2)
     8f4:	8fab002c 	lw	t3,44(sp)
     8f8:	ad700000 	sw	s0,0(t3)
     8fc:	8c8c0224 	lw	t4,548(a0)
     900:	8d8d0000 	lw	t5,0(t4)
     904:	15a00002 	bnez	t5,910 <Sched_Schedule+0x11c>
     908:	ac8d0224 	sw	t5,548(a0)
     90c:	ac80022c 	sw	zero,556(a0)
     910:	8fbf001c 	lw	ra,28(sp)
     914:	8fb00018 	lw	s0,24(sp)
     918:	27bd0028 	addiu	sp,sp,40
     91c:	03e00008 	jr	ra
     920:	00601025 	move	v0,v1

00000924 <func_800C8BC4>:
     924:	27bdffe0 	addiu	sp,sp,-32
     928:	afbf001c 	sw	ra,28(sp)
     92c:	afb00018 	sw	s0,24(sp)
     930:	afa50024 	sw	a1,36(sp)
     934:	8c8e0244 	lw	t6,580(a0)
     938:	00808025 	move	s0,a0
     93c:	3c060000 	lui	a2,0x0
     940:	55c00013 	bnezl	t6,990 <func_800C8BC4+0x6c>
     944:	8fbf001c 	lw	ra,28(sp)
     948:	8cb8000c 	lw	t8,12(a1)
     94c:	24c602d4 	addiu	a2,a2,724
     950:	2407026a 	li	a3,618
     954:	ac980244 	sw	t8,580(a0)
     958:	3c040000 	lui	a0,0x0
     95c:	248402bc 	addiu	a0,a0,700
     960:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     964:	8e050244 	lw	a1,580(s0)
     968:	8e020240 	lw	v0,576(s0)
     96c:	8fa80024 	lw	t0,36(sp)
     970:	50400004 	beqzl	v0,984 <func_800C8BC4+0x60>
     974:	02002025 	move	a0,s0
     978:	80590012 	lb	t9,18(v0)
     97c:	1f200003 	bgtz	t9,98c <func_800C8BC4+0x68>
     980:	02002025 	move	a0,s0
     984:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     988:	8d05000c 	lw	a1,12(t0)
     98c:	8fbf001c 	lw	ra,28(sp)
     990:	8fb00018 	lw	s0,24(sp)
     994:	27bd0020 	addiu	sp,sp,32
     998:	03e00008 	jr	ra
     99c:	00000000 	nop

000009a0 <Sched_IsComplete>:
     9a0:	27bdffe8 	addiu	sp,sp,-24
     9a4:	afbf0014 	sw	ra,20(sp)
     9a8:	afa40018 	sw	a0,24(sp)
     9ac:	8cae0004 	lw	t6,4(a1)
     9b0:	00a03825 	move	a3,a1
     9b4:	00001025 	move	v0,zero
     9b8:	31cf0003 	andi	t7,t6,0x3
     9bc:	15e00012 	bnez	t7,a08 <Sched_IsComplete+0x68>
     9c0:	00000000 	nop
     9c4:	8ca40050 	lw	a0,80(a1)
     9c8:	24060001 	li	a2,1
     9cc:	50800006 	beqzl	a0,9e8 <Sched_IsComplete+0x48>
     9d0:	8cf80008 	lw	t8,8(a3)
     9d4:	8ca50054 	lw	a1,84(a1)
     9d8:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     9dc:	afa7001c 	sw	a3,28(sp)
     9e0:	8fa7001c 	lw	a3,28(sp)
     9e4:	8cf80008 	lw	t8,8(a3)
     9e8:	8fa40018 	lw	a0,24(sp)
     9ec:	33190040 	andi	t9,t8,0x40
     9f0:	13200003 	beqz	t9,a00 <Sched_IsComplete+0x60>
     9f4:	00000000 	nop
     9f8:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     9fc:	00e02825 	move	a1,a3
     a00:	10000001 	b	a08 <Sched_IsComplete+0x68>
     a04:	24020001 	li	v0,1
     a08:	8fbf0014 	lw	ra,20(sp)
     a0c:	27bd0018 	addiu	sp,sp,24
     a10:	03e00008 	jr	ra
     a14:	00000000 	nop

00000a18 <Sched_RunTask>:
     a18:	27bdffb8 	addiu	sp,sp,-72
     a1c:	afbf001c 	sw	ra,28(sp)
     a20:	afb00018 	sw	s0,24(sp)
     a24:	afa40048 	sw	a0,72(sp)
     a28:	afa60050 	sw	a2,80(sp)
     a2c:	8c8f0230 	lw	t7,560(a0)
     a30:	3c040000 	lui	a0,0x0
     a34:	00a08025 	move	s0,a1
     a38:	11e00005 	beqz	t7,a50 <Sched_RunTask+0x38>
     a3c:	248402e0 	addiu	a0,a0,736
     a40:	3c050000 	lui	a1,0x0
     a44:	24a502f8 	addiu	a1,a1,760
     a48:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     a4c:	24060297 	li	a2,663
     a50:	52000076 	beqzl	s0,c2c <Sched_RunTask+0x214>
     a54:	8fbf001c 	lw	ra,28(sp)
     a58:	8e180010 	lw	t8,16(s0)
     a5c:	02002825 	move	a1,s0
     a60:	5700001a 	bnezl	t8,acc <Sched_RunTask+0xb4>
     a64:	8e0f0004 	lw	t7,4(s0)
     a68:	8e020008 	lw	v0,8(s0)
     a6c:	30590002 	andi	t9,v0,0x2
     a70:	53200009 	beqzl	t9,a98 <Sched_RunTask+0x80>
     a74:	304b0001 	andi	t3,v0,0x1
     a78:	8e080004 	lw	t0,4(s0)
     a7c:	2401fffd 	li	at,-3
     a80:	01014824 	and	t1,t0,at
     a84:	ae090004 	sw	t1,4(s0)
     a88:	8faa0048 	lw	t2,72(sp)
     a8c:	ad400230 	sw	zero,560(t2)
     a90:	8e020008 	lw	v0,8(s0)
     a94:	304b0001 	andi	t3,v0,0x1
     a98:	11600007 	beqz	t3,ab8 <Sched_RunTask+0xa0>
     a9c:	00000000 	nop
     aa0:	8e0c0004 	lw	t4,4(s0)
     aa4:	2401fffe 	li	at,-2
     aa8:	01816824 	and	t5,t4,at
     aac:	ae0d0004 	sw	t5,4(s0)
     ab0:	8fae0048 	lw	t6,72(sp)
     ab4:	adc00234 	sw	zero,564(t6)
     ab8:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     abc:	8fa40048 	lw	a0,72(sp)
     ac0:	1000005a 	b	c2c <Sched_RunTask+0x214>
     ac4:	8fbf001c 	lw	ra,28(sp)
     ac8:	8e0f0004 	lw	t7,4(s0)
     acc:	2401ffcf 	li	at,-49
     ad0:	01e1c024 	and	t8,t7,at
     ad4:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     ad8:	ae180004 	sw	t8,4(s0)
     adc:	26040010 	addiu	a0,s0,16
     ae0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     ae4:	afa40020 	sw	a0,32(sp)
     ae8:	8e040010 	lw	a0,16(s0)
     aec:	24010002 	li	at,2
     af0:	54810008 	bnel	a0,at,b14 <Sched_RunTask+0xfc>
     af4:	24010001 	li	at,1
     af8:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     afc:	00000000 	nop
     b00:	3c010000 	lui	at,0x0
     b04:	ac220000 	sw	v0,0(at)
     b08:	1000000f 	b	b48 <Sched_RunTask+0x130>
     b0c:	ac230004 	sw	v1,4(at)
     b10:	24010001 	li	at,1
     b14:	14810007 	bne	a0,at,b34 <Sched_RunTask+0x11c>
     b18:	00000000 	nop
     b1c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     b20:	00000000 	nop
     b24:	3c010000 	lui	at,0x0
     b28:	ac220000 	sw	v0,0(at)
     b2c:	10000006 	b	b48 <Sched_RunTask+0x130>
     b30:	ac230004 	sw	v1,4(at)
     b34:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     b38:	00000000 	nop
     b3c:	3c010000 	lui	at,0x0
     b40:	ac220000 	sw	v0,0(at)
     b44:	ac230004 	sw	v1,4(at)
     b48:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     b4c:	8fa40020 	lw	a0,32(sp)
     b50:	3c190000 	lui	t9,0x0
     b54:	27390000 	addiu	t9,t9,0
     b58:	8f280000 	lw	t0,0(t9)
     b5c:	51000023 	beqzl	t0,bec <Sched_RunTask+0x1d4>
     b60:	8fa20048 	lw	v0,72(sp)
     b64:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     b68:	00000000 	nop
     b6c:	00402025 	move	a0,v0
     b70:	00602825 	move	a1,v1
     b74:	24060000 	li	a2,0
     b78:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     b7c:	24070040 	li	a3,64
     b80:	00402025 	move	a0,v0
     b84:	00602825 	move	a1,v1
     b88:	24060000 	li	a2,0
     b8c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     b90:	24070bb8 	li	a3,3000
     b94:	afa20038 	sw	v0,56(sp)
     b98:	afa3003c 	sw	v1,60(sp)
     b9c:	8e040010 	lw	a0,16(s0)
     ba0:	24010002 	li	at,2
     ba4:	8fa5003c 	lw	a1,60(sp)
     ba8:	14810004 	bne	a0,at,bbc <Sched_RunTask+0x1a4>
     bac:	8fa60020 	lw	a2,32(sp)
     bb0:	3c070000 	lui	a3,0x0
     bb4:	10000009 	b	bdc <Sched_RunTask+0x1c4>
     bb8:	24e70324 	addiu	a3,a3,804
     bbc:	24010001 	li	at,1
     bc0:	14810004 	bne	a0,at,bd4 <Sched_RunTask+0x1bc>
     bc4:	3c020000 	lui	v0,0x0
     bc8:	3c020000 	lui	v0,0x0
     bcc:	10000002 	b	bd8 <Sched_RunTask+0x1c0>
     bd0:	2442032c 	addiu	v0,v0,812
     bd4:	24420334 	addiu	v0,v0,820
     bd8:	00403825 	move	a3,v0
     bdc:	3c040000 	lui	a0,0x0
     be0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     be4:	24840304 	addiu	a0,a0,772
     be8:	8fa20048 	lw	v0,72(sp)
     bec:	ac500230 	sw	s0,560(v0)
     bf0:	8fa90050 	lw	t1,80(sp)
     bf4:	5609000d 	bnel	s0,t1,c2c <Sched_RunTask+0x214>
     bf8:	8fbf001c 	lw	ra,28(sp)
     bfc:	8c4c0234 	lw	t4,564(v0)
     c00:	3c0e0000 	lui	t6,0x0
     c04:	3c0f0000 	lui	t7,0x0
     c08:	55800008 	bnezl	t4,c2c <Sched_RunTask+0x214>
     c0c:	8fbf001c 	lw	ra,28(sp)
     c10:	ac490234 	sw	t1,564(v0)
     c14:	8def0004 	lw	t7,4(t7)
     c18:	8dce0000 	lw	t6,0(t6)
     c1c:	3c010000 	lui	at,0x0
     c20:	ac2f0004 	sw	t7,4(at)
     c24:	ac2e0000 	sw	t6,0(at)
     c28:	8fbf001c 	lw	ra,28(sp)
     c2c:	8fb00018 	lw	s0,24(sp)
     c30:	27bd0048 	addiu	sp,sp,72
     c34:	03e00008 	jr	ra
     c38:	00000000 	nop

00000c3c <Sched_HandleEntry>:
     c3c:	27bdffb8 	addiu	sp,sp,-72
     c40:	afb30028 	sw	s3,40(sp)
     c44:	afb20024 	sw	s2,36(sp)
     c48:	afb10020 	sw	s1,32(sp)
     c4c:	27b20038 	addiu	s2,sp,56
     c50:	00809825 	move	s3,a0
     c54:	afbf002c 	sw	ra,44(sp)
     c58:	24910038 	addiu	s1,a0,56
     c5c:	afb0001c 	sw	s0,28(sp)
     c60:	afa00044 	sw	zero,68(sp)
     c64:	afa00040 	sw	zero,64(sp)
     c68:	afa00038 	sw	zero,56(sp)
     c6c:	02202025 	move	a0,s1
     c70:	02402825 	move	a1,s2
     c74:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     c78:	00003025 	move	a2,zero
     c7c:	2410ffff 	li	s0,-1
     c80:	10500009 	beq	v0,s0,ca8 <Sched_HandleEntry+0x6c>
     c84:	02602025 	move	a0,s3
     c88:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     c8c:	8fa50038 	lw	a1,56(sp)
     c90:	02202025 	move	a0,s1
     c94:	02402825 	move	a1,s2
     c98:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     c9c:	00003025 	move	a2,zero
     ca0:	5450fff9 	bnel	v0,s0,c88 <Sched_HandleEntry+0x4c>
     ca4:	02602025 	move	a0,s3
     ca8:	8e6e023c 	lw	t6,572(s3)
     cac:	02602025 	move	a0,s3
     cb0:	27a50044 	addiu	a1,sp,68
     cb4:	51c00011 	beqzl	t6,cfc <Sched_HandleEntry+0xc0>
     cb8:	8e680230 	lw	t0,560(s3)
     cbc:	8e6f0230 	lw	t7,560(s3)
     cc0:	3c180000 	lui	t8,0x0
     cc4:	27180000 	addiu	t8,t8,0
     cc8:	51e0000c 	beqzl	t7,cfc <Sched_HandleEntry+0xc0>
     ccc:	8e680230 	lw	t0,560(s3)
     cd0:	8f190000 	lw	t9,0(t8)
     cd4:	3c040000 	lui	a0,0x0
     cd8:	13200003 	beqz	t9,ce8 <Sched_HandleEntry+0xac>
     cdc:	00000000 	nop
     ce0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     ce4:	2484033c 	addiu	a0,a0,828
     ce8:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     cec:	02602025 	move	a0,s3
     cf0:	1000001b 	b	d60 <Sched_HandleEntry+0x124>
     cf4:	8fbf002c 	lw	ra,44(sp)
     cf8:	8e680230 	lw	t0,560(s3)
     cfc:	8e6b0234 	lw	t3,564(s3)
     d00:	27a60040 	addiu	a2,sp,64
     d04:	2d090001 	sltiu	t1,t0,1
     d08:	00095040 	sll	t2,t1,0x1
     d0c:	2d6c0001 	sltiu	t4,t3,1
     d10:	014c8025 	or	s0,t2,t4
     d14:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     d18:	02003825 	move	a3,s0
     d1c:	10500004 	beq	v0,s0,d30 <Sched_HandleEntry+0xf4>
     d20:	02602025 	move	a0,s3
     d24:	8fa50044 	lw	a1,68(sp)
     d28:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     d2c:	8fa60040 	lw	a2,64(sp)
     d30:	3c0d0000 	lui	t5,0x0
     d34:	25ad0000 	addiu	t5,t5,0
     d38:	8dae0000 	lw	t6,0(t5)
     d3c:	3c040000 	lui	a0,0x0
     d40:	24840348 	addiu	a0,a0,840
     d44:	11c00005 	beqz	t6,d5c <Sched_HandleEntry+0x120>
     d48:	02602825 	move	a1,s3
     d4c:	8fa60044 	lw	a2,68(sp)
     d50:	8fa70040 	lw	a3,64(sp)
     d54:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     d58:	afb00010 	sw	s0,16(sp)
     d5c:	8fbf002c 	lw	ra,44(sp)
     d60:	8fb0001c 	lw	s0,28(sp)
     d64:	8fb10020 	lw	s1,32(sp)
     d68:	8fb20024 	lw	s2,36(sp)
     d6c:	8fb30028 	lw	s3,40(sp)
     d70:	03e00008 	jr	ra
     d74:	27bd0048 	addiu	sp,sp,72

00000d78 <Sched_HandleRetrace>:
     d78:	27bdffa8 	addiu	sp,sp,-88
     d7c:	3c0e0000 	lui	t6,0x0
     d80:	afbf0024 	sw	ra,36(sp)
     d84:	afb00020 	sw	s0,32(sp)
     d88:	25ce0000 	addiu	t6,t6,0
     d8c:	8dcf0000 	lw	t7,0(t6)
     d90:	00808025 	move	s0,a0
     d94:	11e00015 	beqz	t7,dec <Sched_HandleRetrace+0x74>
     d98:	00000000 	nop
     d9c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     da0:	00000000 	nop
     da4:	00402025 	move	a0,v0
     da8:	00602825 	move	a1,v1
     dac:	24060000 	li	a2,0
     db0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     db4:	24070040 	li	a3,64
     db8:	00402025 	move	a0,v0
     dbc:	00602825 	move	a1,v1
     dc0:	24060000 	li	a2,0
     dc4:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     dc8:	24070bb8 	li	a3,3000
     dcc:	afa20048 	sw	v0,72(sp)
     dd0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     dd4:	afa3004c 	sw	v1,76(sp)
     dd8:	3c040000 	lui	a0,0x0
     ddc:	24840370 	addiu	a0,a0,880
     de0:	8fa5004c 	lw	a1,76(sp)
     de4:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     de8:	00403025 	move	a2,v0
     dec:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     df0:	00000000 	nop
     df4:	8e090238 	lw	t1,568(s0)
     df8:	252a0001 	addiu	t2,t1,1
     dfc:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     e00:	ae0a0238 	sw	t2,568(s0)
     e04:	8e050244 	lw	a1,580(s0)
     e08:	00004025 	move	t0,zero
     e0c:	10a00003 	beqz	a1,e1c <Sched_HandleRetrace+0xa4>
     e10:	00000000 	nop
     e14:	10000001 	b	e1c <Sched_HandleRetrace+0xa4>
     e18:	8ca80004 	lw	t0,4(a1)
     e1c:	5502000f 	bnel	t0,v0,e5c <Sched_HandleRetrace+0xe4>
     e20:	8e020240 	lw	v0,576(s0)
     e24:	8e020240 	lw	v0,576(s0)
     e28:	10400003 	beqz	v0,e38 <Sched_HandleRetrace+0xc0>
     e2c:	00000000 	nop
     e30:	a0400010 	sb	zero,16(v0)
     e34:	8e050244 	lw	a1,580(s0)
     e38:	50a00004 	beqzl	a1,e4c <Sched_HandleRetrace+0xd4>
     e3c:	8e0b0248 	lw	t3,584(s0)
     e40:	a0a00010 	sb	zero,16(a1)
     e44:	8e050244 	lw	a1,580(s0)
     e48:	8e0b0248 	lw	t3,584(s0)
     e4c:	ae050240 	sw	a1,576(s0)
     e50:	ae000248 	sw	zero,584(s0)
     e54:	ae0b0244 	sw	t3,580(s0)
     e58:	8e020240 	lw	v0,576(s0)
     e5c:	1040000e 	beqz	v0,e98 <Sched_HandleRetrace+0x120>
     e60:	00000000 	nop
     e64:	80430012 	lb	v1,18(v0)
     e68:	18600004 	blez	v1,e7c <Sched_HandleRetrace+0x104>
     e6c:	246cffff 	addiu	t4,v1,-1
     e70:	a04c0012 	sb	t4,18(v0)
     e74:	8e0d0240 	lw	t5,576(s0)
     e78:	81a30012 	lb	v1,18(t5)
     e7c:	1c600006 	bgtz	v1,e98 <Sched_HandleRetrace+0x120>
     e80:	00000000 	nop
     e84:	8e050244 	lw	a1,580(s0)
     e88:	10a00003 	beqz	a1,e98 <Sched_HandleRetrace+0x120>
     e8c:	00000000 	nop
     e90:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     e94:	02002025 	move	a0,s0
     e98:	3c0e0000 	lui	t6,0x0
     e9c:	25ce0000 	addiu	t6,t6,0
     ea0:	8dcf0000 	lw	t7,0(t6)
     ea4:	11e00016 	beqz	t7,f00 <Sched_HandleRetrace+0x188>
     ea8:	00000000 	nop
     eac:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     eb0:	00000000 	nop
     eb4:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     eb8:	afa2002c 	sw	v0,44(sp)
     ebc:	8e050244 	lw	a1,580(s0)
     ec0:	3c040000 	lui	a0,0x0
     ec4:	2484038c 	addiu	a0,a0,908
     ec8:	10a00003 	beqz	a1,ed8 <Sched_HandleRetrace+0x160>
     ecc:	00403025 	move	a2,v0
     ed0:	10000002 	b	edc <Sched_HandleRetrace+0x164>
     ed4:	8ca70004 	lw	a3,4(a1)
     ed8:	00003825 	move	a3,zero
     edc:	8e020240 	lw	v0,576(s0)
     ee0:	8fa5002c 	lw	a1,44(sp)
     ee4:	00004025 	move	t0,zero
     ee8:	10400003 	beqz	v0,ef8 <Sched_HandleRetrace+0x180>
     eec:	00000000 	nop
     ef0:	10000001 	b	ef8 <Sched_HandleRetrace+0x180>
     ef4:	80480012 	lb	t0,18(v0)
     ef8:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     efc:	afa80010 	sw	t0,16(sp)
     f00:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     f04:	02002025 	move	a0,s0
     f08:	8fbf0024 	lw	ra,36(sp)
     f0c:	8fb00020 	lw	s0,32(sp)
     f10:	27bd0058 	addiu	sp,sp,88
     f14:	03e00008 	jr	ra
     f18:	00000000 	nop

00000f1c <Sched_HandleRSPDone>:
     f1c:	27bdffb0 	addiu	sp,sp,-80
     f20:	afbf0024 	sw	ra,36(sp)
     f24:	afb00020 	sw	s0,32(sp)
     f28:	afa00048 	sw	zero,72(sp)
     f2c:	afa00044 	sw	zero,68(sp)
     f30:	8c820230 	lw	v0,560(a0)
     f34:	00808025 	move	s0,a0
     f38:	3c040000 	lui	a0,0x0
     f3c:	14400006 	bnez	v0,f58 <Sched_HandleRSPDone+0x3c>
     f40:	248403a0 	addiu	a0,a0,928
     f44:	3c050000 	lui	a1,0x0
     f48:	24a503b0 	addiu	a1,a1,944
     f4c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     f50:	24060333 	li	a2,819
     f54:	8e020230 	lw	v0,560(s0)
     f58:	8c430010 	lw	v1,16(v0)
     f5c:	24010002 	li	at,2
     f60:	54610019 	bnel	v1,at,fc8 <Sched_HandleRSPDone+0xac>
     f64:	24010001 	li	at,1
     f68:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     f6c:	00000000 	nop
     f70:	3c0f0000 	lui	t7,0x0
     f74:	3c080000 	lui	t0,0x0
     f78:	8def0004 	lw	t7,4(t7)
     f7c:	25080000 	addiu	t0,t0,0
     f80:	3c0e0000 	lui	t6,0x0
     f84:	8dce0000 	lw	t6,0(t6)
     f88:	8d0a0000 	lw	t2,0(t0)
     f8c:	8d0b0004 	lw	t3,4(t0)
     f90:	006f082b 	sltu	at,v1,t7
     f94:	006fc823 	subu	t9,v1,t7
     f98:	004ec023 	subu	t8,v0,t6
     f9c:	0301c023 	subu	t8,t8,at
     fa0:	032b6821 	addu	t5,t9,t3
     fa4:	01ab082b 	sltu	at,t5,t3
     fa8:	00386021 	addu	t4,at,t8
     fac:	3c010000 	lui	at,0x0
     fb0:	018a6021 	addu	t4,t4,t2
     fb4:	ac2c0000 	sw	t4,0(at)
     fb8:	3c010000 	lui	at,0x0
     fbc:	10000031 	b	1084 <Sched_HandleRSPDone+0x168>
     fc0:	ac2d0004 	sw	t5,4(at)
     fc4:	24010001 	li	at,1
     fc8:	14610018 	bne	v1,at,102c <Sched_HandleRSPDone+0x110>
     fcc:	00000000 	nop
     fd0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
     fd4:	00000000 	nop
     fd8:	3c0f0000 	lui	t7,0x0
     fdc:	3c180000 	lui	t8,0x0
     fe0:	8def0004 	lw	t7,4(t7)
     fe4:	27180000 	addiu	t8,t8,0
     fe8:	3c0e0000 	lui	t6,0x0
     fec:	8dce0000 	lw	t6,0(t6)
     ff0:	8f0a0000 	lw	t2,0(t8)
     ff4:	8f0b0004 	lw	t3,4(t8)
     ff8:	006f082b 	sltu	at,v1,t7
     ffc:	006f4823 	subu	t1,v1,t7
    1000:	004e4023 	subu	t0,v0,t6
    1004:	01014023 	subu	t0,t0,at
    1008:	012b6821 	addu	t5,t1,t3
    100c:	01ab082b 	sltu	at,t5,t3
    1010:	00286021 	addu	t4,at,t0
    1014:	3c010000 	lui	at,0x0
    1018:	018a6021 	addu	t4,t4,t2
    101c:	ac2c0000 	sw	t4,0(at)
    1020:	3c010000 	lui	at,0x0
    1024:	10000017 	b	1084 <Sched_HandleRSPDone+0x168>
    1028:	ac2d0004 	sw	t5,4(at)
    102c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1030:	00000000 	nop
    1034:	3c0f0000 	lui	t7,0x0
    1038:	3c080000 	lui	t0,0x0
    103c:	8def0004 	lw	t7,4(t7)
    1040:	25080000 	addiu	t0,t0,0
    1044:	3c0e0000 	lui	t6,0x0
    1048:	8dce0000 	lw	t6,0(t6)
    104c:	8d0a0000 	lw	t2,0(t0)
    1050:	8d0b0004 	lw	t3,4(t0)
    1054:	006f082b 	sltu	at,v1,t7
    1058:	006fc823 	subu	t9,v1,t7
    105c:	004ec023 	subu	t8,v0,t6
    1060:	0301c023 	subu	t8,t8,at
    1064:	032b6821 	addu	t5,t9,t3
    1068:	01ab082b 	sltu	at,t5,t3
    106c:	00386021 	addu	t4,at,t8
    1070:	3c010000 	lui	at,0x0
    1074:	018a6021 	addu	t4,t4,t2
    1078:	ac2c0000 	sw	t4,0(at)
    107c:	3c010000 	lui	at,0x0
    1080:	ac2d0004 	sw	t5,4(at)
    1084:	8e070230 	lw	a3,560(s0)
    1088:	3c090000 	lui	t1,0x0
    108c:	ae000230 	sw	zero,560(s0)
    1090:	25290000 	addiu	t1,t1,0
    1094:	8d2e0000 	lw	t6,0(t1)
    1098:	24e40010 	addiu	a0,a3,16
    109c:	51c0000c 	beqzl	t6,10d0 <Sched_HandleRSPDone+0x1b4>
    10a0:	8cef0004 	lw	t7,4(a3)
    10a4:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    10a8:	afa7004c 	sw	a3,76(sp)
    10ac:	8fa7004c 	lw	a3,76(sp)
    10b0:	3c040000 	lui	a0,0x0
    10b4:	248403bc 	addiu	a0,a0,956
    10b8:	8ce50004 	lw	a1,4(a3)
    10bc:	00403025 	move	a2,v0
    10c0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    10c4:	30a50010 	andi	a1,a1,0x10
    10c8:	8fa7004c 	lw	a3,76(sp)
    10cc:	8cef0004 	lw	t7,4(a3)
    10d0:	24e40010 	addiu	a0,a3,16
    10d4:	31e80010 	andi	t0,t7,0x10
    10d8:	1100001a 	beqz	t0,1144 <Sched_HandleRSPDone+0x228>
    10dc:	00000000 	nop
    10e0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    10e4:	afa7004c 	sw	a3,76(sp)
    10e8:	10400016 	beqz	v0,1144 <Sched_HandleRSPDone+0x228>
    10ec:	8fa7004c 	lw	a3,76(sp)
    10f0:	3c180000 	lui	t8,0x0
    10f4:	27180000 	addiu	t8,t8,0
    10f8:	8f190000 	lw	t9,0(t8)
    10fc:	3c040000 	lui	a0,0x0
    1100:	248403cc 	addiu	a0,a0,972
    1104:	53200005 	beqzl	t9,111c <Sched_HandleRSPDone+0x200>
    1108:	8cea0004 	lw	t2,4(a3)
    110c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1110:	afa7004c 	sw	a3,76(sp)
    1114:	8fa7004c 	lw	a3,76(sp)
    1118:	8cea0004 	lw	t2,4(a3)
    111c:	354b0020 	ori	t3,t2,0x20
    1120:	aceb0004 	sw	t3,4(a3)
    1124:	8e0c0224 	lw	t4,548(s0)
    1128:	acec0000 	sw	t4,0(a3)
    112c:	8e0d022c 	lw	t5,556(s0)
    1130:	ae070224 	sw	a3,548(s0)
    1134:	55a00015 	bnezl	t5,118c <Sched_HandleRSPDone+0x270>
    1138:	8e180230 	lw	t8,560(s0)
    113c:	10000012 	b	1188 <Sched_HandleRSPDone+0x26c>
    1140:	ae07022c 	sw	a3,556(s0)
    1144:	3c090000 	lui	t1,0x0
    1148:	25290000 	addiu	t1,t1,0
    114c:	8d2e0000 	lw	t6,0(t1)
    1150:	3c040000 	lui	a0,0x0
    1154:	248403d8 	addiu	a0,a0,984
    1158:	51c00005 	beqzl	t6,1170 <Sched_HandleRSPDone+0x254>
    115c:	8cef0004 	lw	t7,4(a3)
    1160:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1164:	afa7004c 	sw	a3,76(sp)
    1168:	8fa7004c 	lw	a3,76(sp)
    116c:	8cef0004 	lw	t7,4(a3)
    1170:	2401fffd 	li	at,-3
    1174:	02002025 	move	a0,s0
    1178:	01e14024 	and	t0,t7,at
    117c:	ace80004 	sw	t0,4(a3)
    1180:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1184:	00e02825 	move	a1,a3
    1188:	8e180230 	lw	t8,560(s0)
    118c:	8e0b0234 	lw	t3,564(s0)
    1190:	02002025 	move	a0,s0
    1194:	2f190001 	sltiu	t9,t8,1
    1198:	00195040 	sll	t2,t9,0x1
    119c:	2d6c0001 	sltiu	t4,t3,1
    11a0:	014c3825 	or	a3,t2,t4
    11a4:	afa70040 	sw	a3,64(sp)
    11a8:	27a50048 	addiu	a1,sp,72
    11ac:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    11b0:	27a60044 	addiu	a2,sp,68
    11b4:	8fad0040 	lw	t5,64(sp)
    11b8:	02002025 	move	a0,s0
    11bc:	8fa50048 	lw	a1,72(sp)
    11c0:	104d0003 	beq	v0,t5,11d0 <Sched_HandleRSPDone+0x2b4>
    11c4:	00000000 	nop
    11c8:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    11cc:	8fa60044 	lw	a2,68(sp)
    11d0:	3c090000 	lui	t1,0x0
    11d4:	25290000 	addiu	t1,t1,0
    11d8:	8d2e0000 	lw	t6,0(t1)
    11dc:	3c040000 	lui	a0,0x0
    11e0:	248403e8 	addiu	a0,a0,1000
    11e4:	11c00006 	beqz	t6,1200 <Sched_HandleRSPDone+0x2e4>
    11e8:	02002825 	move	a1,s0
    11ec:	8faf0040 	lw	t7,64(sp)
    11f0:	8fa60048 	lw	a2,72(sp)
    11f4:	8fa70044 	lw	a3,68(sp)
    11f8:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    11fc:	afaf0010 	sw	t7,16(sp)
    1200:	8fbf0024 	lw	ra,36(sp)
    1204:	8fb00020 	lw	s0,32(sp)
    1208:	27bd0050 	addiu	sp,sp,80
    120c:	03e00008 	jr	ra
    1210:	00000000 	nop

00001214 <Sched_HandleRDPDone>:
    1214:	27bdffc0 	addiu	sp,sp,-64
    1218:	afbf0024 	sw	ra,36(sp)
    121c:	afb00020 	sw	s0,32(sp)
    1220:	00808025 	move	s0,a0
    1224:	afa00038 	sw	zero,56(sp)
    1228:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    122c:	afa00034 	sw	zero,52(sp)
    1230:	3c0e0000 	lui	t6,0x0
    1234:	3c0f0000 	lui	t7,0x0
    1238:	8def0004 	lw	t7,4(t7)
    123c:	8dce0000 	lw	t6,0(t6)
    1240:	3c080000 	lui	t0,0x0
    1244:	006f082b 	sltu	at,v1,t7
    1248:	004ec023 	subu	t8,v0,t6
    124c:	0301c023 	subu	t8,t8,at
    1250:	25080000 	addiu	t0,t0,0
    1254:	ad180000 	sw	t8,0(t0)
    1258:	006fc823 	subu	t9,v1,t7
    125c:	ad190004 	sw	t9,4(t0)
    1260:	8e060234 	lw	a2,564(s0)
    1264:	3c040000 	lui	a0,0x0
    1268:	24840410 	addiu	a0,a0,1040
    126c:	14c00005 	bnez	a2,1284 <Sched_HandleRDPDone+0x70>
    1270:	3c050000 	lui	a1,0x0
    1274:	24a50420 	addiu	a1,a1,1056
    1278:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    127c:	2406036e 	li	a2,878
    1280:	8e060234 	lw	a2,564(s0)
    1284:	8cc90010 	lw	t1,16(a2)
    1288:	24010001 	li	at,1
    128c:	3c040000 	lui	a0,0x0
    1290:	11210006 	beq	t1,at,12ac <Sched_HandleRDPDone+0x98>
    1294:	2484042c 	addiu	a0,a0,1068
    1298:	3c050000 	lui	a1,0x0
    129c:	24a50458 	addiu	a1,a1,1112
    12a0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    12a4:	2406036f 	li	a2,879
    12a8:	8e060234 	lw	a2,564(s0)
    12ac:	ae000234 	sw	zero,564(s0)
    12b0:	8cca0004 	lw	t2,4(a2)
    12b4:	2401fffe 	li	at,-2
    12b8:	00c02825 	move	a1,a2
    12bc:	01415824 	and	t3,t2,at
    12c0:	accb0004 	sw	t3,4(a2)
    12c4:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    12c8:	02002025 	move	a0,s0
    12cc:	8e0c0230 	lw	t4,560(s0)
    12d0:	8e0f0234 	lw	t7,564(s0)
    12d4:	02002025 	move	a0,s0
    12d8:	2d8d0001 	sltiu	t5,t4,1
    12dc:	000d7040 	sll	t6,t5,0x1
    12e0:	2df80001 	sltiu	t8,t7,1
    12e4:	01d83825 	or	a3,t6,t8
    12e8:	afa70030 	sw	a3,48(sp)
    12ec:	27a50038 	addiu	a1,sp,56
    12f0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    12f4:	27a60034 	addiu	a2,sp,52
    12f8:	8fb90030 	lw	t9,48(sp)
    12fc:	02002025 	move	a0,s0
    1300:	8fa50038 	lw	a1,56(sp)
    1304:	10590003 	beq	v0,t9,1314 <Sched_HandleRDPDone+0x100>
    1308:	00000000 	nop
    130c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1310:	8fa60034 	lw	a2,52(sp)
    1314:	3c080000 	lui	t0,0x0
    1318:	25080000 	addiu	t0,t0,0
    131c:	8d090000 	lw	t1,0(t0)
    1320:	3c040000 	lui	a0,0x0
    1324:	24840464 	addiu	a0,a0,1124
    1328:	11200006 	beqz	t1,1344 <Sched_HandleRDPDone+0x130>
    132c:	02002825 	move	a1,s0
    1330:	8faa0030 	lw	t2,48(sp)
    1334:	8fa60038 	lw	a2,56(sp)
    1338:	8fa70034 	lw	a3,52(sp)
    133c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1340:	afaa0010 	sw	t2,16(sp)
    1344:	8fbf0024 	lw	ra,36(sp)
    1348:	8fb00020 	lw	s0,32(sp)
    134c:	27bd0040 	addiu	sp,sp,64
    1350:	03e00008 	jr	ra
    1354:	00000000 	nop

00001358 <Sched_SendEntryMsg>:
    1358:	27bdffe8 	addiu	sp,sp,-24
    135c:	3c0e0000 	lui	t6,0x0
    1360:	afbf0014 	sw	ra,20(sp)
    1364:	afa40018 	sw	a0,24(sp)
    1368:	25ce0000 	addiu	t6,t6,0
    136c:	8dcf0000 	lw	t7,0(t6)
    1370:	3c040000 	lui	a0,0x0
    1374:	51e00004 	beqzl	t7,1388 <Sched_SendEntryMsg+0x30>
    1378:	8fa40018 	lw	a0,24(sp)
    137c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1380:	2484048c 	addiu	a0,a0,1164
    1384:	8fa40018 	lw	a0,24(sp)
    1388:	2405029e 	li	a1,670
    138c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1390:	24060001 	li	a2,1
    1394:	8fbf0014 	lw	ra,20(sp)
    1398:	27bd0018 	addiu	sp,sp,24
    139c:	03e00008 	jr	ra
    13a0:	00000000 	nop

000013a4 <Sched_ThreadEntry>:
    13a4:	27bdffb8 	addiu	sp,sp,-72
    13a8:	afb10018 	sw	s1,24(sp)
    13ac:	afb00014 	sw	s0,20(sp)
    13b0:	3c110000 	lui	s1,0x0
    13b4:	00808025 	move	s0,a0
    13b8:	afbf001c 	sw	ra,28(sp)
    13bc:	afa00044 	sw	zero,68(sp)
    13c0:	26310000 	addiu	s1,s1,0
    13c4:	8e2e0000 	lw	t6,0(s1)
    13c8:	51c00012 	beqzl	t6,1414 <Sched_ThreadEntry+0x70>
    13cc:	02002025 	move	a0,s0
    13d0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    13d4:	00000000 	nop
    13d8:	00402025 	move	a0,v0
    13dc:	00602825 	move	a1,v1
    13e0:	24060000 	li	a2,0
    13e4:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    13e8:	24070040 	li	a3,64
    13ec:	00402025 	move	a0,v0
    13f0:	00602825 	move	a1,v1
    13f4:	24060000 	li	a2,0
    13f8:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    13fc:	24070bb8 	li	a3,3000
    1400:	3c040000 	lui	a0,0x0
    1404:	248404a0 	addiu	a0,a0,1184
    1408:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    140c:	00602825 	move	a1,v1
    1410:	02002025 	move	a0,s0
    1414:	27a50044 	addiu	a1,sp,68
    1418:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    141c:	24060001 	li	a2,1
    1420:	8faf0044 	lw	t7,68(sp)
    1424:	2401029b 	li	at,667
    1428:	11e1001c 	beq	t7,at,149c <Sched_ThreadEntry+0xf8>
    142c:	2401029c 	li	at,668
    1430:	11e10031 	beq	t7,at,14f8 <Sched_ThreadEntry+0x154>
    1434:	2401029e 	li	at,670
    1438:	15e10046 	bne	t7,at,1554 <Sched_ThreadEntry+0x1b0>
    143c:	8fa90044 	lw	t1,68(sp)
    1440:	8e380000 	lw	t8,0(s1)
    1444:	13000011 	beqz	t8,148c <Sched_ThreadEntry+0xe8>
    1448:	00000000 	nop
    144c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1450:	00000000 	nop
    1454:	00402025 	move	a0,v0
    1458:	00602825 	move	a1,v1
    145c:	24060000 	li	a2,0
    1460:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1464:	24070040 	li	a3,64
    1468:	00402025 	move	a0,v0
    146c:	00602825 	move	a1,v1
    1470:	24060000 	li	a2,0
    1474:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1478:	24070bb8 	li	a3,3000
    147c:	3c040000 	lui	a0,0x0
    1480:	248404b0 	addiu	a0,a0,1200
    1484:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1488:	00602825 	move	a1,v1
    148c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1490:	02002025 	move	a0,s0
    1494:	1000ffcc 	b	13c8 <Sched_ThreadEntry+0x24>
    1498:	8e2e0000 	lw	t6,0(s1)
    149c:	8e390000 	lw	t9,0(s1)
    14a0:	13200011 	beqz	t9,14e8 <Sched_ThreadEntry+0x144>
    14a4:	00000000 	nop
    14a8:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    14ac:	00000000 	nop
    14b0:	00402025 	move	a0,v0
    14b4:	00602825 	move	a1,v1
    14b8:	24060000 	li	a2,0
    14bc:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    14c0:	24070040 	li	a3,64
    14c4:	00402025 	move	a0,v0
    14c8:	00602825 	move	a1,v1
    14cc:	24060000 	li	a2,0
    14d0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    14d4:	24070bb8 	li	a3,3000
    14d8:	3c040000 	lui	a0,0x0
    14dc:	248404c0 	addiu	a0,a0,1216
    14e0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    14e4:	00602825 	move	a1,v1
    14e8:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    14ec:	02002025 	move	a0,s0
    14f0:	1000ffb5 	b	13c8 <Sched_ThreadEntry+0x24>
    14f4:	8e2e0000 	lw	t6,0(s1)
    14f8:	8e280000 	lw	t0,0(s1)
    14fc:	11000011 	beqz	t0,1544 <Sched_ThreadEntry+0x1a0>
    1500:	00000000 	nop
    1504:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1508:	00000000 	nop
    150c:	00402025 	move	a0,v0
    1510:	00602825 	move	a1,v1
    1514:	24060000 	li	a2,0
    1518:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    151c:	24070040 	li	a3,64
    1520:	00402025 	move	a0,v0
    1524:	00602825 	move	a1,v1
    1528:	24060000 	li	a2,0
    152c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1530:	24070bb8 	li	a3,3000
    1534:	3c040000 	lui	a0,0x0
    1538:	248404d4 	addiu	a0,a0,1236
    153c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1540:	00602825 	move	a1,v1
    1544:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1548:	02002025 	move	a0,s0
    154c:	1000ff9e 	b	13c8 <Sched_ThreadEntry+0x24>
    1550:	8e2e0000 	lw	t6,0(s1)
    1554:	85220000 	lh	v0,0(t1)
    1558:	24010001 	li	at,1
    155c:	10410007 	beq	v0,at,157c <Sched_ThreadEntry+0x1d8>
    1560:	24010003 	li	at,3
    1564:	1041000d 	beq	v0,at,159c <Sched_ThreadEntry+0x1f8>
    1568:	24010004 	li	at,4
    156c:	10410007 	beq	v0,at,158c <Sched_ThreadEntry+0x1e8>
    1570:	00000000 	nop
    1574:	1000ff94 	b	13c8 <Sched_ThreadEntry+0x24>
    1578:	8e2e0000 	lw	t6,0(s1)
    157c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1580:	02002025 	move	a0,s0
    1584:	1000ff90 	b	13c8 <Sched_ThreadEntry+0x24>
    1588:	8e2e0000 	lw	t6,0(s1)
    158c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1590:	02002025 	move	a0,s0
    1594:	1000ff8c 	b	13c8 <Sched_ThreadEntry+0x24>
    1598:	8e2e0000 	lw	t6,0(s1)
    159c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    15a0:	02002025 	move	a0,s0
    15a4:	1000ff88 	b	13c8 <Sched_ThreadEntry+0x24>
    15a8:	8e2e0000 	lw	t6,0(s1)
	...
    15c0:	8fbf001c 	lw	ra,28(sp)
    15c4:	8fb00014 	lw	s0,20(sp)
    15c8:	8fb10018 	lw	s1,24(sp)
    15cc:	03e00008 	jr	ra
    15d0:	27bd0048 	addiu	sp,sp,72

000015d4 <Sched_Init>:
    15d4:	27bdffd0 	addiu	sp,sp,-48
    15d8:	afbf0024 	sw	ra,36(sp)
    15dc:	afb00020 	sw	s0,32(sp)
    15e0:	afa50034 	sw	a1,52(sp)
    15e4:	00808025 	move	s0,a0
    15e8:	afa60038 	sw	a2,56(sp)
    15ec:	afa7003c 	sw	a3,60(sp)
    15f0:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    15f4:	24050258 	li	a1,600
    15f8:	240e0001 	li	t6,1
    15fc:	ae0e024c 	sw	t6,588(s0)
    1600:	02002025 	move	a0,s0
    1604:	26050018 	addiu	a1,s0,24
    1608:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    160c:	24060008 	li	a2,8
    1610:	26040038 	addiu	a0,s0,56
    1614:	26050050 	addiu	a1,s0,80
    1618:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    161c:	24060008 	li	a2,8
    1620:	24040004 	li	a0,4
    1624:	02002825 	move	a1,s0
    1628:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    162c:	2406029b 	li	a2,667
    1630:	24040009 	li	a0,9
    1634:	02002825 	move	a1,s0
    1638:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    163c:	2406029c 	li	a2,668
    1640:	8fa40044 	lw	a0,68(sp)
    1644:	26050250 	addiu	a1,s0,592
    1648:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    164c:	02003025 	move	a2,s0
    1650:	8faf0034 	lw	t7,52(sp)
    1654:	8fb80038 	lw	t8,56(sp)
    1658:	26040070 	addiu	a0,s0,112
    165c:	3c060000 	lui	a2,0x0
    1660:	24c60000 	addiu	a2,a2,0
    1664:	afa4002c 	sw	a0,44(sp)
    1668:	24050005 	li	a1,5
    166c:	02003825 	move	a3,s0
    1670:	afaf0010 	sw	t7,16(sp)
    1674:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1678:	afb80014 	sw	t8,20(sp)
    167c:	0c000000 	jal	0 <Sched_SwapFrameBuffer>
    1680:	8fa4002c 	lw	a0,44(sp)
    1684:	8fbf0024 	lw	ra,36(sp)
    1688:	8fb00020 	lw	s0,32(sp)
    168c:	27bd0030 	addiu	sp,sp,48
    1690:	03e00008 	jr	ra
    1694:	00000000 	nop
	...
