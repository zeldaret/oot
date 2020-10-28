
build/src/code/padmgr.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <PadMgr_LockSerialMesgQueue>:
       0:	3c0e0000 	lui	t6,0x0
       4:	8dce0000 	lw	t6,0(t6)
       8:	27bdffd0 	addiu	sp,sp,-48
       c:	afb00020 	sw	s0,32(sp)
      10:	29c10003 	slti	at,t6,3
      14:	00808025 	move	s0,a0
      18:	afbf0024 	sw	ra,36(sp)
      1c:	1420000d 	bnez	at,54 <PadMgr_LockSerialMesgQueue+0x54>
      20:	afa0002c 	sw	zero,44(sp)
      24:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
      28:	00002025 	move	a0,zero
      2c:	3c040000 	lui	a0,0x0
      30:	8e060030 	lw	a2,48(s0)
      34:	260f0028 	addiu	t7,s0,40
      38:	27b8002c 	addiu	t8,sp,44
      3c:	afb80014 	sw	t8,20(sp)
      40:	afaf0010 	sw	t7,16(sp)
      44:	24840000 	addiu	a0,a0,0
      48:	00402825 	move	a1,v0
      4c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
      50:	02003825 	move	a3,s0
      54:	26040028 	addiu	a0,s0,40
      58:	27a5002c 	addiu	a1,sp,44
      5c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
      60:	24060001 	li	a2,1
      64:	3c190000 	lui	t9,0x0
      68:	8f390000 	lw	t9,0(t9)
      6c:	2b210003 	slti	at,t9,3
      70:	5420000a 	bnezl	at,9c <PadMgr_LockSerialMesgQueue+0x9c>
      74:	8fbf0024 	lw	ra,36(sp)
      78:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
      7c:	00002025 	move	a0,zero
      80:	3c040000 	lui	a0,0x0
      84:	24840040 	addiu	a0,a0,64
      88:	00402825 	move	a1,v0
      8c:	8e060030 	lw	a2,48(s0)
      90:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
      94:	8fa7002c 	lw	a3,44(sp)
      98:	8fbf0024 	lw	ra,36(sp)
      9c:	8fa2002c 	lw	v0,44(sp)
      a0:	8fb00020 	lw	s0,32(sp)
      a4:	03e00008 	jr	ra
      a8:	27bd0030 	addiu	sp,sp,48

000000ac <PadMgr_UnlockSerialMesgQueue>:
      ac:	3c0e0000 	lui	t6,0x0
      b0:	8dce0000 	lw	t6,0(t6)
      b4:	27bdffd0 	addiu	sp,sp,-48
      b8:	afb00020 	sw	s0,32(sp)
      bc:	29c10003 	slti	at,t6,3
      c0:	00808025 	move	s0,a0
      c4:	afbf0024 	sw	ra,36(sp)
      c8:	1420000d 	bnez	at,100 <PadMgr_UnlockSerialMesgQueue+0x54>
      cc:	afa50034 	sw	a1,52(sp)
      d0:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
      d4:	00002025 	move	a0,zero
      d8:	8fb80034 	lw	t8,52(sp)
      dc:	3c040000 	lui	a0,0x0
      e0:	8e060030 	lw	a2,48(s0)
      e4:	260f0028 	addiu	t7,s0,40
      e8:	afaf0010 	sw	t7,16(sp)
      ec:	2484007c 	addiu	a0,a0,124
      f0:	00402825 	move	a1,v0
      f4:	02003825 	move	a3,s0
      f8:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
      fc:	afb80014 	sw	t8,20(sp)
     100:	26040028 	addiu	a0,s0,40
     104:	afa40028 	sw	a0,40(sp)
     108:	8fa50034 	lw	a1,52(sp)
     10c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     110:	24060001 	li	a2,1
     114:	3c190000 	lui	t9,0x0
     118:	8f390000 	lw	t9,0(t9)
     11c:	2b210003 	slti	at,t9,3
     120:	5420000e 	bnezl	at,15c <PadMgr_UnlockSerialMesgQueue+0xb0>
     124:	8fbf0024 	lw	ra,36(sp)
     128:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     12c:	00002025 	move	a0,zero
     130:	8fa80028 	lw	t0,40(sp)
     134:	8fa90034 	lw	t1,52(sp)
     138:	3c040000 	lui	a0,0x0
     13c:	8e060030 	lw	a2,48(s0)
     140:	248400b0 	addiu	a0,a0,176
     144:	00402825 	move	a1,v0
     148:	02003825 	move	a3,s0
     14c:	afa80010 	sw	t0,16(sp)
     150:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     154:	afa90014 	sw	t1,20(sp)
     158:	8fbf0024 	lw	ra,36(sp)
     15c:	8fb00020 	lw	s0,32(sp)
     160:	27bd0030 	addiu	sp,sp,48
     164:	03e00008 	jr	ra
     168:	00000000 	nop

0000016c <PadMgr_LockPadData>:
     16c:	27bdffe8 	addiu	sp,sp,-24
     170:	afbf0014 	sw	ra,20(sp)
     174:	24840040 	addiu	a0,a0,64
     178:	00002825 	move	a1,zero
     17c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     180:	24060001 	li	a2,1
     184:	8fbf0014 	lw	ra,20(sp)
     188:	27bd0018 	addiu	sp,sp,24
     18c:	03e00008 	jr	ra
     190:	00000000 	nop

00000194 <PadMgr_UnlockPadData>:
     194:	27bdffe8 	addiu	sp,sp,-24
     198:	afbf0014 	sw	ra,20(sp)
     19c:	24840040 	addiu	a0,a0,64
     1a0:	00002825 	move	a1,zero
     1a4:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     1a8:	24060001 	li	a2,1
     1ac:	8fbf0014 	lw	ra,20(sp)
     1b0:	27bd0018 	addiu	sp,sp,24
     1b4:	03e00008 	jr	ra
     1b8:	00000000 	nop

000001bc <PadMgr_RumbleControl>:
     1bc:	27bdffb8 	addiu	sp,sp,-72
     1c0:	afbf0034 	sw	ra,52(sp)
     1c4:	afb40028 	sw	s4,40(sp)
     1c8:	0080a025 	move	s4,a0
     1cc:	afb60030 	sw	s6,48(sp)
     1d0:	afb5002c 	sw	s5,44(sp)
     1d4:	afb30024 	sw	s3,36(sp)
     1d8:	afb20020 	sw	s2,32(sp)
     1dc:	afb1001c 	sw	s1,28(sp)
     1e0:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     1e4:	afb00018 	sw	s0,24(sp)
     1e8:	afa2003c 	sw	v0,60(sp)
     1ec:	0000a825 	move	s5,zero
     1f0:	00009825 	move	s3,zero
     1f4:	02808825 	move	s1,s4
     1f8:	24160001 	li	s6,1
     1fc:	922e02aa 	lbu	t6,682(s1)
     200:	00137880 	sll	t7,s3,0x2
     204:	028fc021 	addu	t8,s4,t7
     208:	51c00087 	beqzl	t6,428 <PadMgr_RumbleControl+0x26c>
     20c:	26730001 	addiu	s3,s3,1
     210:	93190002 	lbu	t9,2(t8)
     214:	33280001 	andi	t0,t9,0x1
     218:	51000064 	beqzl	t0,3ac <PadMgr_RumbleControl+0x1f0>
     21c:	922202ae 	lbu	v0,686(s1)
     220:	922902ae 	lbu	t1,686(s1)
     224:	56c90080 	bnel	s6,t1,428 <PadMgr_RumbleControl+0x26c>
     228:	26730001 	addiu	s3,s3,1
     22c:	922a02b2 	lbu	t2,690(s1)
     230:	51400030 	beqzl	t2,2f4 <PadMgr_RumbleControl+0x138>
     234:	922e02b6 	lbu	t6,694(s1)
     238:	922b02b6 	lbu	t3,694(s1)
     23c:	00136080 	sll	t4,s3,0x2
     240:	01936023 	subu	t4,t4,s3
     244:	29610003 	slti	at,t3,3
     248:	10200076 	beqz	at,424 <PadMgr_RumbleControl+0x268>
     24c:	000c6080 	sll	t4,t4,0x2
     250:	01936021 	addu	t4,t4,s3
     254:	000c60c0 	sll	t4,t4,0x3
     258:	028c9021 	addu	s2,s4,t4
     25c:	3c040000 	lui	a0,0x0
     260:	248400e4 	addiu	a0,a0,228
     264:	265202bc 	addiu	s2,s2,700
     268:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     26c:	24150001 	li	s5,1
     270:	3c040000 	lui	a0,0x0
     274:	26700001 	addiu	s0,s3,1
     278:	3c060000 	lui	a2,0x0
     27c:	24c60100 	addiu	a2,a2,256
     280:	02002825 	move	a1,s0
     284:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     288:	248400ec 	addiu	a0,a0,236
     28c:	3c040000 	lui	a0,0x0
     290:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     294:	2484011c 	addiu	a0,a0,284
     298:	02402025 	move	a0,s2
     29c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     2a0:	02c02825 	move	a1,s6
     2a4:	10400010 	beqz	v0,2e8 <PadMgr_RumbleControl+0x12c>
     2a8:	240d0003 	li	t5,3
     2ac:	3c040000 	lui	a0,0x0
     2b0:	a22002ae 	sb	zero,686(s1)
     2b4:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     2b8:	24840120 	addiu	a0,a0,288
     2bc:	3c040000 	lui	a0,0x0
     2c0:	3c060000 	lui	a2,0x0
     2c4:	24c6013c 	addiu	a2,a2,316
     2c8:	24840128 	addiu	a0,a0,296
     2cc:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     2d0:	02002825 	move	a1,s0
     2d4:	3c040000 	lui	a0,0x0
     2d8:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     2dc:	24840164 	addiu	a0,a0,356
     2e0:	10000051 	b	428 <PadMgr_RumbleControl+0x26c>
     2e4:	26730001 	addiu	s3,s3,1
     2e8:	1000004e 	b	424 <PadMgr_RumbleControl+0x268>
     2ec:	a22d02b6 	sb	t5,694(s1)
     2f0:	922e02b6 	lbu	t6,694(s1)
     2f4:	00137880 	sll	t7,s3,0x2
     2f8:	01f37823 	subu	t7,t7,s3
     2fc:	11c00049 	beqz	t6,424 <PadMgr_RumbleControl+0x268>
     300:	000f7880 	sll	t7,t7,0x2
     304:	01f37821 	addu	t7,t7,s3
     308:	000f78c0 	sll	t7,t7,0x3
     30c:	028f9021 	addu	s2,s4,t7
     310:	3c040000 	lui	a0,0x0
     314:	24840168 	addiu	a0,a0,360
     318:	265202bc 	addiu	s2,s2,700
     31c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     320:	24150001 	li	s5,1
     324:	3c040000 	lui	a0,0x0
     328:	26700001 	addiu	s0,s3,1
     32c:	3c060000 	lui	a2,0x0
     330:	24c60184 	addiu	a2,a2,388
     334:	02002825 	move	a1,s0
     338:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     33c:	24840170 	addiu	a0,a0,368
     340:	3c040000 	lui	a0,0x0
     344:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     348:	24840194 	addiu	a0,a0,404
     34c:	02402025 	move	a0,s2
     350:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     354:	00002825 	move	a1,zero
     358:	1040000f 	beqz	v0,398 <PadMgr_RumbleControl+0x1dc>
     35c:	3c040000 	lui	a0,0x0
     360:	a22002ae 	sb	zero,686(s1)
     364:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     368:	24840198 	addiu	a0,a0,408
     36c:	3c040000 	lui	a0,0x0
     370:	3c060000 	lui	a2,0x0
     374:	24c601b4 	addiu	a2,a2,436
     378:	248401a0 	addiu	a0,a0,416
     37c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     380:	02002825 	move	a1,s0
     384:	3c040000 	lui	a0,0x0
     388:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     38c:	248401dc 	addiu	a0,a0,476
     390:	10000025 	b	428 <PadMgr_RumbleControl+0x26c>
     394:	26730001 	addiu	s3,s3,1
     398:	923802b6 	lbu	t8,694(s1)
     39c:	2719ffff 	addiu	t9,t8,-1
     3a0:	10000020 	b	424 <PadMgr_RumbleControl+0x268>
     3a4:	a23902b6 	sb	t9,694(s1)
     3a8:	922202ae 	lbu	v0,686(s1)
     3ac:	5040001e 	beqzl	v0,428 <PadMgr_RumbleControl+0x26c>
     3b0:	26730001 	addiu	s3,s3,1
     3b4:	16c2000f 	bne	s6,v0,3f4 <PadMgr_RumbleControl+0x238>
     3b8:	3c040000 	lui	a0,0x0
     3bc:	3c040000 	lui	a0,0x0
     3c0:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     3c4:	248401e0 	addiu	a0,a0,480
     3c8:	3c040000 	lui	a0,0x0
     3cc:	3c060000 	lui	a2,0x0
     3d0:	24c601fc 	addiu	a2,a2,508
     3d4:	248401e8 	addiu	a0,a0,488
     3d8:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     3dc:	26650001 	addiu	a1,s3,1
     3e0:	3c040000 	lui	a0,0x0
     3e4:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     3e8:	2484021c 	addiu	a0,a0,540
     3ec:	1000000d 	b	424 <PadMgr_RumbleControl+0x268>
     3f0:	a22002ae 	sb	zero,686(s1)
     3f4:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     3f8:	24840220 	addiu	a0,a0,544
     3fc:	3c040000 	lui	a0,0x0
     400:	3c060000 	lui	a2,0x0
     404:	24c6023c 	addiu	a2,a2,572
     408:	24840228 	addiu	a0,a0,552
     40c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     410:	26650001 	addiu	a1,s3,1
     414:	3c040000 	lui	a0,0x0
     418:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     41c:	24840274 	addiu	a0,a0,628
     420:	a22002ae 	sb	zero,686(s1)
     424:	26730001 	addiu	s3,s3,1
     428:	2a610004 	slti	at,s3,4
     42c:	1420ff73 	bnez	at,1fc <PadMgr_RumbleControl+0x40>
     430:	26310001 	addiu	s1,s1,1
     434:	16a00052 	bnez	s5,580 <PadMgr_RumbleControl+0x3c4>
     438:	3c020000 	lui	v0,0x0
     43c:	8c420000 	lw	v0,0(v0)
     440:	30420003 	andi	v0,v0,0x3
     444:	02821821 	addu	v1,s4,v0
     448:	906802aa 	lbu	t0,682(v1)
     44c:	00024880 	sll	t1,v0,0x2
     450:	00409825 	move	s3,v0
     454:	1100004a 	beqz	t0,580 <PadMgr_RumbleControl+0x3c4>
     458:	02895021 	addu	t2,s4,t1
     45c:	914b0002 	lbu	t3,2(t2)
     460:	316c0001 	andi	t4,t3,0x1
     464:	11800046 	beqz	t4,580 <PadMgr_RumbleControl+0x3c4>
     468:	00000000 	nop
     46c:	906d02ae 	lbu	t5,686(v1)
     470:	00027080 	sll	t6,v0,0x2
     474:	01c27023 	subu	t6,t6,v0
     478:	12cd0041 	beq	s6,t5,580 <PadMgr_RumbleControl+0x3c4>
     47c:	8fa4003c 	lw	a0,60(sp)
     480:	000e7080 	sll	t6,t6,0x2
     484:	01c27021 	addu	t6,t6,v0
     488:	000e70c0 	sll	t6,t6,0x3
     48c:	028e9021 	addu	s2,s4,t6
     490:	265202bc 	addiu	s2,s2,700
     494:	02402825 	move	a1,s2
     498:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     49c:	00403025 	move	a2,v0
     4a0:	14400018 	bnez	v0,504 <PadMgr_RumbleControl+0x348>
     4a4:	2401000b 	li	at,11
     4a8:	240f0001 	li	t7,1
     4ac:	0293c021 	addu	t8,s4,s3
     4b0:	a30f02ae 	sb	t7,686(t8)
     4b4:	02402025 	move	a0,s2
     4b8:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     4bc:	24050001 	li	a1,1
     4c0:	02402025 	move	a0,s2
     4c4:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     4c8:	00002825 	move	a1,zero
     4cc:	3c040000 	lui	a0,0x0
     4d0:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     4d4:	24840278 	addiu	a0,a0,632
     4d8:	3c040000 	lui	a0,0x0
     4dc:	3c060000 	lui	a2,0x0
     4e0:	24c60294 	addiu	a2,a2,660
     4e4:	24840280 	addiu	a0,a0,640
     4e8:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     4ec:	26650001 	addiu	a1,s3,1
     4f0:	3c040000 	lui	a0,0x0
     4f4:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     4f8:	248402b0 	addiu	a0,a0,688
     4fc:	10000020 	b	580 <PadMgr_RumbleControl+0x3c4>
     500:	00000000 	nop
     504:	14410004 	bne	v0,at,518 <PadMgr_RumbleControl+0x35c>
     508:	24190002 	li	t9,2
     50c:	02934021 	addu	t0,s4,s3
     510:	1000001b 	b	580 <PadMgr_RumbleControl+0x3c4>
     514:	a11902ae 	sb	t9,686(t0)
     518:	24010004 	li	at,4
     51c:	14410018 	bne	v0,at,580 <PadMgr_RumbleControl+0x3c4>
     520:	3c040000 	lui	a0,0x0
     524:	248402b4 	addiu	a0,a0,692
     528:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     52c:	2405011a 	li	a1,282
     530:	3c050000 	lui	a1,0x0
     534:	8ca50004 	lw	a1,4(a1)
     538:	3c040000 	lui	a0,0x0
     53c:	3c010000 	lui	at,0x0
     540:	24a50001 	addiu	a1,a1,1
     544:	ac250004 	sw	a1,4(at)
     548:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     54c:	248402c0 	addiu	a0,a0,704
     550:	3c040000 	lui	a0,0x0
     554:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     558:	248402d0 	addiu	a0,a0,720
     55c:	3c040000 	lui	a0,0x0
     560:	3c060000 	lui	a2,0x0
     564:	24c602ec 	addiu	a2,a2,748
     568:	248402d8 	addiu	a0,a0,728
     56c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     570:	26650001 	addiu	a1,s3,1
     574:	3c040000 	lui	a0,0x0
     578:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     57c:	2484030c 	addiu	a0,a0,780
     580:	3c090000 	lui	t1,0x0
     584:	8d290000 	lw	t1,0(t1)
     588:	3c010000 	lui	at,0x0
     58c:	02802025 	move	a0,s4
     590:	252a0001 	addiu	t2,t1,1
     594:	ac2a0000 	sw	t2,0(at)
     598:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     59c:	8fa5003c 	lw	a1,60(sp)
     5a0:	8fbf0034 	lw	ra,52(sp)
     5a4:	8fb00018 	lw	s0,24(sp)
     5a8:	8fb1001c 	lw	s1,28(sp)
     5ac:	8fb20020 	lw	s2,32(sp)
     5b0:	8fb30024 	lw	s3,36(sp)
     5b4:	8fb40028 	lw	s4,40(sp)
     5b8:	8fb5002c 	lw	s5,44(sp)
     5bc:	8fb60030 	lw	s6,48(sp)
     5c0:	03e00008 	jr	ra
     5c4:	27bd0048 	addiu	sp,sp,72

000005c8 <PadMgr_RumbleStop>:
     5c8:	27bdffb8 	addiu	sp,sp,-72
     5cc:	afbf003c 	sw	ra,60(sp)
     5d0:	afb20020 	sw	s2,32(sp)
     5d4:	00809025 	move	s2,a0
     5d8:	afbe0038 	sw	s8,56(sp)
     5dc:	afb70034 	sw	s7,52(sp)
     5e0:	afb60030 	sw	s6,48(sp)
     5e4:	afb5002c 	sw	s5,44(sp)
     5e8:	afb40028 	sw	s4,40(sp)
     5ec:	afb30024 	sw	s3,36(sp)
     5f0:	afb1001c 	sw	s1,28(sp)
     5f4:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     5f8:	afb00018 	sw	s0,24(sp)
     5fc:	3c170000 	lui	s7,0x0
     600:	3c160000 	lui	s6,0x0
     604:	3c150000 	lui	s5,0x0
     608:	3c140000 	lui	s4,0x0
     60c:	3c130000 	lui	s3,0x0
     610:	26730000 	addiu	s3,s3,0
     614:	26940310 	addiu	s4,s4,784
     618:	26b50318 	addiu	s5,s5,792
     61c:	26d6032c 	addiu	s6,s6,812
     620:	26f7033c 	addiu	s7,s7,828
     624:	00008025 	move	s0,zero
     628:	265102bc 	addiu	s1,s2,700
     62c:	afa20040 	sw	v0,64(sp)
     630:	241e0004 	li	s8,4
     634:	8fa40040 	lw	a0,64(sp)
     638:	02202825 	move	a1,s1
     63c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     640:	02003025 	move	a2,s0
     644:	54400013 	bnezl	v0,694 <PadMgr_RumbleStop+0xcc>
     648:	26100001 	addiu	s0,s0,1
     64c:	926e07cd 	lbu	t6,1997(s3)
     650:	55c0000d 	bnezl	t6,688 <PadMgr_RumbleStop+0xc0>
     654:	02202025 	move	a0,s1
     658:	924f045d 	lbu	t7,1117(s2)
     65c:	51e0000a 	beqzl	t7,688 <PadMgr_RumbleStop+0xc0>
     660:	02202025 	move	a0,s1
     664:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     668:	02802025 	move	a0,s4
     66c:	02a02025 	move	a0,s5
     670:	26050001 	addiu	a1,s0,1
     674:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     678:	02c03025 	move	a2,s6
     67c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     680:	02e02025 	move	a0,s7
     684:	02202025 	move	a0,s1
     688:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     68c:	00002825 	move	a1,zero
     690:	26100001 	addiu	s0,s0,1
     694:	161effe7 	bne	s0,s8,634 <PadMgr_RumbleStop+0x6c>
     698:	26310068 	addiu	s1,s1,104
     69c:	02402025 	move	a0,s2
     6a0:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     6a4:	8fa50040 	lw	a1,64(sp)
     6a8:	8fbf003c 	lw	ra,60(sp)
     6ac:	8fb00018 	lw	s0,24(sp)
     6b0:	8fb1001c 	lw	s1,28(sp)
     6b4:	8fb20020 	lw	s2,32(sp)
     6b8:	8fb30024 	lw	s3,36(sp)
     6bc:	8fb40028 	lw	s4,40(sp)
     6c0:	8fb5002c 	lw	s5,44(sp)
     6c4:	8fb60030 	lw	s6,48(sp)
     6c8:	8fb70034 	lw	s7,52(sp)
     6cc:	8fbe0038 	lw	s8,56(sp)
     6d0:	03e00008 	jr	ra
     6d4:	27bd0048 	addiu	sp,sp,72

000006d8 <PadMgr_RumbleReset>:
     6d8:	240e0003 	li	t6,3
     6dc:	03e00008 	jr	ra
     6e0:	a08e045c 	sb	t6,1116(a0)

000006e4 <PadMgr_RumbleSetSingle>:
     6e4:	00857021 	addu	t6,a0,a1
     6e8:	a1c602b2 	sb	a2,690(t6)
     6ec:	240f00f0 	li	t7,240
     6f0:	03e00008 	jr	ra
     6f4:	a08f045d 	sb	t7,1117(a0)

000006f8 <PadMgr_RumbleSet>:
     6f8:	90ae0000 	lbu	t6,0(a1)
     6fc:	240800f0 	li	t0,240
     700:	a08e02b2 	sb	t6,690(a0)
     704:	90af0001 	lbu	t7,1(a1)
     708:	a08f02b3 	sb	t7,691(a0)
     70c:	90b80002 	lbu	t8,2(a1)
     710:	a09802b4 	sb	t8,692(a0)
     714:	90b90003 	lbu	t9,3(a1)
     718:	a09902b5 	sb	t9,693(a0)
     71c:	03e00008 	jr	ra
     720:	a088045d 	sb	t0,1117(a0)

00000724 <PadMgr_ProcessInputs>:
     724:	27bdffb0 	addiu	sp,sp,-80
     728:	afbf002c 	sw	ra,44(sp)
     72c:	afb40028 	sw	s4,40(sp)
     730:	0080a025 	move	s4,a0
     734:	afb30024 	sw	s3,36(sp)
     738:	afb20020 	sw	s2,32(sp)
     73c:	afb1001c 	sw	s1,28(sp)
     740:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     744:	afb00018 	sw	s0,24(sp)
     748:	928e02a9 	lbu	t6,681(s4)
     74c:	26900230 	addiu	s0,s4,560
     750:	26930290 	addiu	s3,s4,656
     754:	19c00091 	blez	t6,99c <PadMgr_ProcessInputs+0x278>
     758:	00009025 	move	s2,zero
     75c:	8a180000 	lwl	t8,0(s0)
     760:	9a180003 	lwr	t8,3(s0)
     764:	26030006 	addiu	v1,s0,6
     768:	24010004 	li	at,4
     76c:	a8780000 	swl	t8,0(v1)
     770:	b8780003 	swr	t8,3(v1)
     774:	96180004 	lhu	t8,4(s0)
     778:	a4780004 	sh	t8,4(v1)
     77c:	92620004 	lbu	v0,4(s3)
     780:	50400008 	beqzl	v0,7a4 <PadMgr_ProcessInputs+0x80>
     784:	8a680000 	lwl	t0,0(s3)
     788:	1041001f 	beq	v0,at,808 <PadMgr_ProcessInputs+0xe4>
     78c:	24010008 	li	at,8
     790:	1041003d 	beq	v0,at,888 <PadMgr_ProcessInputs+0x164>
     794:	3c040000 	lui	a0,0x0
     798:	10000056 	b	8f4 <PadMgr_ProcessInputs+0x1d0>
     79c:	24840404 	addiu	a0,a0,1028
     7a0:	8a680000 	lwl	t0,0(s3)
     7a4:	9a680003 	lwr	t0,3(s3)
     7a8:	02921021 	addu	v0,s4,s2
     7ac:	3c040000 	lui	a0,0x0
     7b0:	aa080000 	swl	t0,0(s0)
     7b4:	ba080003 	swr	t0,3(s0)
     7b8:	96680004 	lhu	t0,4(s3)
     7bc:	240a0001 	li	t2,1
     7c0:	24840340 	addiu	a0,a0,832
     7c4:	a6080004 	sh	t0,4(s0)
     7c8:	904902aa 	lbu	t1,682(v0)
     7cc:	1520000c 	bnez	t1,800 <PadMgr_ProcessInputs+0xdc>
     7d0:	00000000 	nop
     7d4:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     7d8:	a04a02aa 	sb	t2,682(v0)
     7dc:	3c040000 	lui	a0,0x0
     7e0:	3c060000 	lui	a2,0x0
     7e4:	24c6035c 	addiu	a2,a2,860
     7e8:	24840348 	addiu	a0,a0,840
     7ec:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     7f0:	26450001 	addiu	a1,s2,1
     7f4:	3c040000 	lui	a0,0x0
     7f8:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     7fc:	2484036c 	addiu	a0,a0,876
     800:	10000047 	b	920 <PadMgr_ProcessInputs+0x1fc>
     804:	26510001 	addiu	s1,s2,1
     808:	886c0000 	lwl	t4,0(v1)
     80c:	986c0003 	lwr	t4,3(v1)
     810:	02921021 	addu	v0,s4,s2
     814:	3c040000 	lui	a0,0x0
     818:	aa0c0000 	swl	t4,0(s0)
     81c:	ba0c0003 	swr	t4,3(s0)
     820:	946c0004 	lhu	t4,4(v1)
     824:	24840370 	addiu	a0,a0,880
     828:	2405017c 	li	a1,380
     82c:	a60c0004 	sh	t4,4(s0)
     830:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     834:	afa20034 	sw	v0,52(sp)
     838:	8fa20034 	lw	v0,52(sp)
     83c:	3c040000 	lui	a0,0x0
     840:	2484037c 	addiu	a0,a0,892
     844:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     848:	904502aa 	lbu	a1,682(v0)
     84c:	3c040000 	lui	a0,0x0
     850:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     854:	24840398 	addiu	a0,a0,920
     858:	3c040000 	lui	a0,0x0
     85c:	26510001 	addiu	s1,s2,1
     860:	3c060000 	lui	a2,0x0
     864:	24c603b4 	addiu	a2,a2,948
     868:	02202825 	move	a1,s1
     86c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     870:	248403a0 	addiu	a0,a0,928
     874:	3c040000 	lui	a0,0x0
     878:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     87c:	248403d0 	addiu	a0,a0,976
     880:	10000028 	b	924 <PadMgr_ProcessInputs+0x200>
     884:	96030006 	lhu	v1,6(s0)
     888:	a6000000 	sh	zero,0(s0)
     88c:	a2000002 	sb	zero,2(s0)
     890:	a2000003 	sb	zero,3(s0)
     894:	926d0004 	lbu	t5,4(s3)
     898:	02921021 	addu	v0,s4,s2
     89c:	3c040000 	lui	a0,0x0
     8a0:	a20d0004 	sb	t5,4(s0)
     8a4:	904e02aa 	lbu	t6,682(v0)
     8a8:	240f00ff 	li	t7,255
     8ac:	248403d4 	addiu	a0,a0,980
     8b0:	11c0000e 	beqz	t6,8ec <PadMgr_ProcessInputs+0x1c8>
     8b4:	00000000 	nop
     8b8:	a04002aa 	sb	zero,682(v0)
     8bc:	a04002ae 	sb	zero,686(v0)
     8c0:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     8c4:	a04f02b6 	sb	t7,694(v0)
     8c8:	3c040000 	lui	a0,0x0
     8cc:	3c060000 	lui	a2,0x0
     8d0:	24c603f0 	addiu	a2,a2,1008
     8d4:	248403dc 	addiu	a0,a0,988
     8d8:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     8dc:	26450001 	addiu	a1,s2,1
     8e0:	3c040000 	lui	a0,0x0
     8e4:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     8e8:	24840400 	addiu	a0,a0,1024
     8ec:	1000000c 	b	920 <PadMgr_ProcessInputs+0x1fc>
     8f0:	26510001 	addiu	s1,s2,1
     8f4:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     8f8:	2405018c 	li	a1,396
     8fc:	3c040000 	lui	a0,0x0
     900:	24840410 	addiu	a0,a0,1040
     904:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     908:	92650004 	lbu	a1,4(s3)
     90c:	3c040000 	lui	a0,0x0
     910:	24840428 	addiu	a0,a0,1064
     914:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     918:	2405018d 	li	a1,397
     91c:	26510001 	addiu	s1,s2,1
     920:	96030006 	lhu	v1,6(s0)
     924:	96050000 	lhu	a1,0(s0)
     928:	9618000c 	lhu	t8,12(s0)
     92c:	960a0012 	lhu	t2,18(s0)
     930:	00651026 	xor	v0,v1,a1
     934:	00436024 	and	t4,v0,v1
     938:	00454024 	and	t0,v0,a1
     93c:	03084825 	or	t1,t8,t0
     940:	014c6825 	or	t5,t2,t4
     944:	a609000c 	sh	t1,12(s0)
     948:	a60d0012 	sh	t5,18(s0)
     94c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     950:	02002025 	move	a0,s0
     954:	820e0002 	lb	t6,2(s0)
     958:	820f0008 	lb	t7,8(s0)
     95c:	820a0003 	lb	t2,3(s0)
     960:	820c0009 	lb	t4,9(s0)
     964:	8209000e 	lb	t1,14(s0)
     968:	8219000f 	lb	t9,15(s0)
     96c:	01cf4023 	subu	t0,t6,t7
     970:	014c7823 	subu	t7,t2,t4
     974:	01285821 	addu	t3,t1,t0
     978:	032fc021 	addu	t8,t9,t7
     97c:	a20b000e 	sb	t3,14(s0)
     980:	a218000f 	sb	t8,15(s0)
     984:	928902a9 	lbu	t1,681(s4)
     988:	02209025 	move	s2,s1
     98c:	26100018 	addiu	s0,s0,24
     990:	0229082a 	slt	at,s1,t1
     994:	1420ff71 	bnez	at,75c <PadMgr_ProcessInputs+0x38>
     998:	26730006 	addiu	s3,s3,6
     99c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     9a0:	02802025 	move	a0,s4
     9a4:	8fbf002c 	lw	ra,44(sp)
     9a8:	8fb00018 	lw	s0,24(sp)
     9ac:	8fb1001c 	lw	s1,28(sp)
     9b0:	8fb20020 	lw	s2,32(sp)
     9b4:	8fb30024 	lw	s3,36(sp)
     9b8:	8fb40028 	lw	s4,40(sp)
     9bc:	03e00008 	jr	ra
     9c0:	27bd0050 	addiu	sp,sp,80

000009c4 <PadMgr_HandleRetraceMsg>:
     9c4:	27bdffd8 	addiu	sp,sp,-40
     9c8:	afbf0024 	sw	ra,36(sp)
     9cc:	afb30020 	sw	s3,32(sp)
     9d0:	00809825 	move	s3,a0
     9d4:	afb2001c 	sw	s2,28(sp)
     9d8:	afb10018 	sw	s1,24(sp)
     9dc:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     9e0:	afb00014 	sw	s0,20(sp)
     9e4:	00408825 	move	s1,v0
     9e8:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     9ec:	00402025 	move	a0,v0
     9f0:	8e630460 	lw	v1,1120(s3)
     9f4:	10600003 	beqz	v1,a04 <PadMgr_HandleRetraceMsg+0x40>
     9f8:	02602025 	move	a0,s3
     9fc:	0060f809 	jalr	v1
     a00:	8e650464 	lw	a1,1124(s3)
     a04:	02202025 	move	a0,s1
     a08:	00002825 	move	a1,zero
     a0c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     a10:	24060001 	li	a2,1
     a14:	26700290 	addiu	s0,s3,656
     a18:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     a1c:	02002025 	move	a0,s0
     a20:	926e045e 	lbu	t6,1118(s3)
     a24:	02002025 	move	a0,s0
     a28:	11c00003 	beqz	t6,a38 <PadMgr_HandleRetraceMsg+0x74>
     a2c:	00000000 	nop
     a30:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     a34:	24050018 	li	a1,24
     a38:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     a3c:	02602025 	move	a0,s3
     a40:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     a44:	02202025 	move	a0,s1
     a48:	02202025 	move	a0,s1
     a4c:	00002825 	move	a1,zero
     a50:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     a54:	24060001 	li	a2,1
     a58:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     a5c:	02602025 	move	a0,s3
     a60:	02602025 	move	a0,s3
     a64:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     a68:	02202825 	move	a1,s1
     a6c:	00009025 	move	s2,zero
     a70:	00008825 	move	s1,zero
     a74:	02608025 	move	s0,s3
     a78:	920f0003 	lbu	t7,3(s0)
     a7c:	55e00014 	bnezl	t7,ad0 <PadMgr_HandleRetraceMsg+0x10c>
     a80:	26310001 	addiu	s1,s1,1
     a84:	96180000 	lhu	t8,0(s0)
     a88:	24010005 	li	at,5
     a8c:	3c040000 	lui	a0,0x0
     a90:	17010005 	bne	t8,at,aa8 <PadMgr_HandleRetraceMsg+0xe4>
     a94:	24840434 	addiu	a0,a0,1076
     a98:	24190001 	li	t9,1
     a9c:	02394004 	sllv	t0,t9,s1
     aa0:	1000000a 	b	acc <PadMgr_HandleRetraceMsg+0x108>
     aa4:	02489025 	or	s2,s2,t0
     aa8:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     aac:	240501ca 	li	a1,458
     ab0:	3c040000 	lui	a0,0x0
     ab4:	24840440 	addiu	a0,a0,1088
     ab8:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     abc:	96050000 	lhu	a1,0(s0)
     ac0:	3c040000 	lui	a0,0x0
     ac4:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     ac8:	24840460 	addiu	a0,a0,1120
     acc:	26310001 	addiu	s1,s1,1
     ad0:	24010004 	li	at,4
     ad4:	1621ffe8 	bne	s1,at,a78 <PadMgr_HandleRetraceMsg+0xb4>
     ad8:	26100004 	addiu	s0,s0,4
     adc:	a27202a8 	sb	s2,680(s3)
     ae0:	3c090000 	lui	t1,0x0
     ae4:	912907cd 	lbu	t1,1997(t1)
     ae8:	51200006 	beqzl	t1,b04 <PadMgr_HandleRetraceMsg+0x140>
     aec:	926a045c 	lbu	t2,1116(s3)
     af0:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     af4:	02602025 	move	a0,s3
     af8:	1000001b 	b	b68 <PadMgr_HandleRetraceMsg+0x1a4>
     afc:	8fbf0024 	lw	ra,36(sp)
     b00:	926a045c 	lbu	t2,1116(s3)
     b04:	59400009 	blezl	t2,b2c <PadMgr_HandleRetraceMsg+0x168>
     b08:	926d045d 	lbu	t5,1117(s3)
     b0c:	926b045c 	lbu	t3,1116(s3)
     b10:	02602025 	move	a0,s3
     b14:	256cffff 	addiu	t4,t3,-1
     b18:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     b1c:	a26c045c 	sb	t4,1116(s3)
     b20:	10000011 	b	b68 <PadMgr_HandleRetraceMsg+0x1a4>
     b24:	8fbf0024 	lw	ra,36(sp)
     b28:	926d045d 	lbu	t5,1117(s3)
     b2c:	55a00006 	bnezl	t5,b48 <PadMgr_HandleRetraceMsg+0x184>
     b30:	926e045e 	lbu	t6,1118(s3)
     b34:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     b38:	02602025 	move	a0,s3
     b3c:	1000000a 	b	b68 <PadMgr_HandleRetraceMsg+0x1a4>
     b40:	8fbf0024 	lw	ra,36(sp)
     b44:	926e045e 	lbu	t6,1118(s3)
     b48:	55c00007 	bnezl	t6,b68 <PadMgr_HandleRetraceMsg+0x1a4>
     b4c:	8fbf0024 	lw	ra,36(sp)
     b50:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     b54:	02602025 	move	a0,s3
     b58:	926f045d 	lbu	t7,1117(s3)
     b5c:	25f8ffff 	addiu	t8,t7,-1
     b60:	a278045d 	sb	t8,1117(s3)
     b64:	8fbf0024 	lw	ra,36(sp)
     b68:	8fb00014 	lw	s0,20(sp)
     b6c:	8fb10018 	lw	s1,24(sp)
     b70:	8fb2001c 	lw	s2,28(sp)
     b74:	8fb30020 	lw	s3,32(sp)
     b78:	03e00008 	jr	ra
     b7c:	27bd0028 	addiu	sp,sp,40

00000b80 <PadMgr_HandlePreNMI>:
     b80:	27bdffe8 	addiu	sp,sp,-24
     b84:	afa40018 	sw	a0,24(sp)
     b88:	afbf0014 	sw	ra,20(sp)
     b8c:	3c040000 	lui	a0,0x0
     b90:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     b94:	24840490 	addiu	a0,a0,1168
     b98:	8fa40018 	lw	a0,24(sp)
     b9c:	240e0001 	li	t6,1
     ba0:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     ba4:	a08e045e 	sb	t6,1118(a0)
     ba8:	8fbf0014 	lw	ra,20(sp)
     bac:	27bd0018 	addiu	sp,sp,24
     bb0:	03e00008 	jr	ra
     bb4:	00000000 	nop

00000bb8 <PadMgr_RequestPadData>:
     bb8:	27bdffd0 	addiu	sp,sp,-48
     bbc:	afbf002c 	sw	ra,44(sp)
     bc0:	afb40028 	sw	s4,40(sp)
     bc4:	afb30024 	sw	s3,36(sp)
     bc8:	00a09825 	move	s3,a1
     bcc:	00c0a025 	move	s4,a2
     bd0:	afb20020 	sw	s2,32(sp)
     bd4:	afb1001c 	sw	s1,28(sp)
     bd8:	afb00018 	sw	s0,24(sp)
     bdc:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     be0:	afa40030 	sw	a0,48(sp)
     be4:	8fb10030 	lw	s1,48(sp)
     be8:	02608025 	move	s0,s3
     bec:	24130004 	li	s3,4
     bf0:	00009025 	move	s2,zero
     bf4:	26310230 	addiu	s1,s1,560
     bf8:	5280001f 	beqzl	s4,c78 <PadMgr_RequestPadData+0xc0>
     bfc:	8a190000 	lwl	t9,0(s0)
     c00:	8a2f0000 	lwl	t7,0(s1)
     c04:	9a2f0003 	lwr	t7,3(s1)
     c08:	aa0f0000 	swl	t7,0(s0)
     c0c:	ba0f0003 	swr	t7,3(s0)
     c10:	8a2e0004 	lwl	t6,4(s1)
     c14:	9a2e0007 	lwr	t6,7(s1)
     c18:	aa0e0004 	swl	t6,4(s0)
     c1c:	ba0e0007 	swr	t6,7(s0)
     c20:	8a2f0008 	lwl	t7,8(s1)
     c24:	9a2f000b 	lwr	t7,11(s1)
     c28:	aa0f0008 	swl	t7,8(s0)
     c2c:	ba0f000b 	swr	t7,11(s0)
     c30:	8a2e000c 	lwl	t6,12(s1)
     c34:	9a2e000f 	lwr	t6,15(s1)
     c38:	aa0e000c 	swl	t6,12(s0)
     c3c:	ba0e000f 	swr	t6,15(s0)
     c40:	8a2f0010 	lwl	t7,16(s1)
     c44:	9a2f0013 	lwr	t7,19(s1)
     c48:	aa0f0010 	swl	t7,16(s0)
     c4c:	ba0f0013 	swr	t7,19(s0)
     c50:	8a2e0014 	lwl	t6,20(s1)
     c54:	9a2e0017 	lwr	t6,23(s1)
     c58:	aa0e0014 	swl	t6,20(s0)
     c5c:	ba0e0017 	swr	t6,23(s0)
     c60:	a620000c 	sh	zero,12(s1)
     c64:	a220000e 	sb	zero,14(s1)
     c68:	a220000f 	sb	zero,15(s1)
     c6c:	10000022 	b	cf8 <PadMgr_RequestPadData+0x140>
     c70:	a6200012 	sh	zero,18(s1)
     c74:	8a190000 	lwl	t9,0(s0)
     c78:	9a190003 	lwr	t9,3(s0)
     c7c:	02002025 	move	a0,s0
     c80:	aa190006 	swl	t9,6(s0)
     c84:	ba190009 	swr	t9,9(s0)
     c88:	96190004 	lhu	t9,4(s0)
     c8c:	96030006 	lhu	v1,6(s0)
     c90:	a619000a 	sh	t9,10(s0)
     c94:	8a290000 	lwl	t1,0(s1)
     c98:	9a290003 	lwr	t1,3(s1)
     c9c:	aa090000 	swl	t1,0(s0)
     ca0:	ba090003 	swr	t1,3(s0)
     ca4:	96050000 	lhu	a1,0(s0)
     ca8:	96290004 	lhu	t1,4(s1)
     cac:	00651026 	xor	v0,v1,a1
     cb0:	00625824 	and	t3,v1,v0
     cb4:	00a25024 	and	t2,a1,v0
     cb8:	a60a000c 	sh	t2,12(s0)
     cbc:	a60b0012 	sh	t3,18(s0)
     cc0:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     cc4:	a6090004 	sh	t1,4(s0)
     cc8:	820c0002 	lb	t4,2(s0)
     ccc:	820d0008 	lb	t5,8(s0)
     cd0:	82090003 	lb	t1,3(s0)
     cd4:	820a0009 	lb	t2,9(s0)
     cd8:	8219000e 	lb	t9,14(s0)
     cdc:	820e000f 	lb	t6,15(s0)
     ce0:	018dc023 	subu	t8,t4,t5
     ce4:	012a6823 	subu	t5,t1,t2
     ce8:	03384021 	addu	t0,t9,t8
     cec:	01cd7821 	addu	t7,t6,t5
     cf0:	a208000e 	sb	t0,14(s0)
     cf4:	a20f000f 	sb	t7,15(s0)
     cf8:	26520001 	addiu	s2,s2,1
     cfc:	26310018 	addiu	s1,s1,24
     d00:	1653ffbd 	bne	s2,s3,bf8 <PadMgr_RequestPadData+0x40>
     d04:	26100018 	addiu	s0,s0,24
     d08:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     d0c:	8fa40030 	lw	a0,48(sp)
     d10:	8fbf002c 	lw	ra,44(sp)
     d14:	8fb00018 	lw	s0,24(sp)
     d18:	8fb1001c 	lw	s1,28(sp)
     d1c:	8fb20020 	lw	s2,32(sp)
     d20:	8fb30024 	lw	s3,36(sp)
     d24:	8fb40028 	lw	s4,40(sp)
     d28:	03e00008 	jr	ra
     d2c:	27bd0030 	addiu	sp,sp,48

00000d30 <PadMgr_ThreadEntry>:
     d30:	27bdffa0 	addiu	sp,sp,-96
     d34:	afb1001c 	sw	s1,28(sp)
     d38:	00808825 	move	s1,a0
     d3c:	afbf0034 	sw	ra,52(sp)
     d40:	3c040000 	lui	a0,0x0
     d44:	afb60030 	sw	s6,48(sp)
     d48:	afb5002c 	sw	s5,44(sp)
     d4c:	afb40028 	sw	s4,40(sp)
     d50:	afb30024 	sw	s3,36(sp)
     d54:	afb20020 	sw	s2,32(sp)
     d58:	afb00018 	sw	s0,24(sp)
     d5c:	afa0005c 	sw	zero,92(sp)
     d60:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     d64:	248404a8 	addiu	a0,a0,1192
     d68:	3c100000 	lui	s0,0x0
     d6c:	00009025 	move	s2,zero
     d70:	26100000 	addiu	s0,s0,0
     d74:	26330058 	addiu	s3,s1,88
     d78:	24160004 	li	s6,4
     d7c:	24150003 	li	s5,3
     d80:	24140001 	li	s4,1
     d84:	8e0e0000 	lw	t6,0(s0)
     d88:	29c10003 	slti	at,t6,3
     d8c:	54200016 	bnezl	at,de8 <PadMgr_ThreadEntry+0xb8>
     d90:	02602025 	move	a0,s3
     d94:	8e2f0060 	lw	t7,96(s1)
     d98:	55e00013 	bnezl	t7,de8 <PadMgr_ThreadEntry+0xb8>
     d9c:	02602025 	move	a0,s3
     da0:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     da4:	00000000 	nop
     da8:	00402025 	move	a0,v0
     dac:	00602825 	move	a1,v1
     db0:	24060000 	li	a2,0
     db4:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     db8:	24070040 	li	a3,64
     dbc:	00402025 	move	a0,v0
     dc0:	00602825 	move	a1,v1
     dc4:	24060000 	li	a2,0
     dc8:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     dcc:	24070bb8 	li	a3,3000
     dd0:	3c040000 	lui	a0,0x0
     dd4:	248404c8 	addiu	a0,a0,1224
     dd8:	00403025 	move	a2,v0
     ddc:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     de0:	00603825 	move	a3,v1
     de4:	02602025 	move	a0,s3
     de8:	27a5005c 	addiu	a1,sp,92
     dec:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     df0:	02803025 	move	a2,s4
     df4:	3c040000 	lui	a0,0x0
     df8:	3c060000 	lui	a2,0x0
     dfc:	24c604f4 	addiu	a2,a2,1268
     e00:	248404f0 	addiu	a0,a0,1264
     e04:	8fa5005c 	lw	a1,92(sp)
     e08:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     e0c:	24070233 	li	a3,563
     e10:	8fb8005c 	lw	t8,92(sp)
     e14:	87020000 	lh	v0,0(t8)
     e18:	50540008 	beql	v0,s4,e3c <PadMgr_ThreadEntry+0x10c>
     e1c:	8e190000 	lw	t9,0(s0)
     e20:	50550038 	beql	v0,s5,f04 <PadMgr_ThreadEntry+0x1d4>
     e24:	02809025 	move	s2,s4
     e28:	10560031 	beq	v0,s6,ef0 <PadMgr_ThreadEntry+0x1c0>
     e2c:	00000000 	nop
     e30:	10000034 	b	f04 <PadMgr_ThreadEntry+0x1d4>
     e34:	00000000 	nop
     e38:	8e190000 	lw	t9,0(s0)
     e3c:	2b210003 	slti	at,t9,3
     e40:	14200012 	bnez	at,e8c <PadMgr_ThreadEntry+0x15c>
     e44:	00000000 	nop
     e48:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     e4c:	00000000 	nop
     e50:	00402025 	move	a0,v0
     e54:	00602825 	move	a1,v1
     e58:	24060000 	li	a2,0
     e5c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     e60:	24070040 	li	a3,64
     e64:	00402025 	move	a0,v0
     e68:	00602825 	move	a1,v1
     e6c:	24060000 	li	a2,0
     e70:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     e74:	24070bb8 	li	a3,3000
     e78:	3c040000 	lui	a0,0x0
     e7c:	24840500 	addiu	a0,a0,1280
     e80:	00403025 	move	a2,v0
     e84:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     e88:	00603825 	move	a3,v1
     e8c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     e90:	02202025 	move	a0,s1
     e94:	8e080000 	lw	t0,0(s0)
     e98:	29010003 	slti	at,t0,3
     e9c:	14200019 	bnez	at,f04 <PadMgr_ThreadEntry+0x1d4>
     ea0:	00000000 	nop
     ea4:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     ea8:	00000000 	nop
     eac:	00402025 	move	a0,v0
     eb0:	00602825 	move	a1,v1
     eb4:	24060000 	li	a2,0
     eb8:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     ebc:	24070040 	li	a3,64
     ec0:	00402025 	move	a0,v0
     ec4:	00602825 	move	a1,v1
     ec8:	24060000 	li	a2,0
     ecc:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     ed0:	24070bb8 	li	a3,3000
     ed4:	3c040000 	lui	a0,0x0
     ed8:	24840524 	addiu	a0,a0,1316
     edc:	00403025 	move	a2,v0
     ee0:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     ee4:	00603825 	move	a3,v1
     ee8:	10000006 	b	f04 <PadMgr_ThreadEntry+0x1d4>
     eec:	00000000 	nop
     ef0:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     ef4:	02202025 	move	a0,s1
     ef8:	10000002 	b	f04 <PadMgr_ThreadEntry+0x1d4>
     efc:	00000000 	nop
     f00:	02809025 	move	s2,s4
     f04:	5240ffa0 	beqzl	s2,d88 <PadMgr_ThreadEntry+0x58>
     f08:	8e0e0000 	lw	t6,0(s0)
     f0c:	8e240078 	lw	a0,120(s1)
     f10:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     f14:	26250070 	addiu	a1,s1,112
     f18:	3c040000 	lui	a0,0x0
     f1c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     f20:	24840548 	addiu	a0,a0,1352
     f24:	8fbf0034 	lw	ra,52(sp)
     f28:	8fb00018 	lw	s0,24(sp)
     f2c:	8fb1001c 	lw	s1,28(sp)
     f30:	8fb20020 	lw	s2,32(sp)
     f34:	8fb30024 	lw	s3,36(sp)
     f38:	8fb40028 	lw	s4,40(sp)
     f3c:	8fb5002c 	lw	s5,44(sp)
     f40:	8fb60030 	lw	s6,48(sp)
     f44:	03e00008 	jr	ra
     f48:	27bd0060 	addiu	sp,sp,96

00000f4c <PadMgr_Init>:
     f4c:	27bdffd0 	addiu	sp,sp,-48
     f50:	afb00020 	sw	s0,32(sp)
     f54:	00808025 	move	s0,a0
     f58:	afbf0024 	sw	ra,36(sp)
     f5c:	3c040000 	lui	a0,0x0
     f60:	afa50034 	sw	a1,52(sp)
     f64:	afa60038 	sw	a2,56(sp)
     f68:	afa7003c 	sw	a3,60(sp)
     f6c:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     f70:	24840568 	addiu	a0,a0,1384
     f74:	02002025 	move	a0,s0
     f78:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     f7c:	24050468 	li	a1,1128
     f80:	8fae0038 	lw	t6,56(sp)
     f84:	26070058 	addiu	a3,s0,88
     f88:	00e02025 	move	a0,a3
     f8c:	ae0e0078 	sw	t6,120(s0)
     f90:	afa7002c 	sw	a3,44(sp)
     f94:	26050018 	addiu	a1,s0,24
     f98:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     f9c:	24060004 	li	a2,4
     fa0:	8fa6002c 	lw	a2,44(sp)
     fa4:	8e040078 	lw	a0,120(s0)
     fa8:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     fac:	26050070 	addiu	a1,s0,112
     fb0:	26040028 	addiu	a0,s0,40
     fb4:	26050010 	addiu	a1,s0,16
     fb8:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     fbc:	24060001 	li	a2,1
     fc0:	02002025 	move	a0,s0
     fc4:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     fc8:	8fa50034 	lw	a1,52(sp)
     fcc:	26040040 	addiu	a0,s0,64
     fd0:	26050014 	addiu	a1,s0,20
     fd4:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     fd8:	24060001 	li	a2,1
     fdc:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     fe0:	02002025 	move	a0,s0
     fe4:	8fa40034 	lw	a0,52(sp)
     fe8:	260502a8 	addiu	a1,s0,680
     fec:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
     ff0:	02003025 	move	a2,s0
     ff4:	240f0004 	li	t7,4
     ff8:	a20f02a9 	sb	t7,681(s0)
     ffc:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
    1000:	31e400ff 	andi	a0,t7,0xff
    1004:	8fb80044 	lw	t8,68(sp)
    1008:	8fb90040 	lw	t9,64(sp)
    100c:	26040080 	addiu	a0,s0,128
    1010:	3c060000 	lui	a2,0x0
    1014:	24c60000 	addiu	a2,a2,0
    1018:	afa4002c 	sw	a0,44(sp)
    101c:	8fa5003c 	lw	a1,60(sp)
    1020:	02003825 	move	a3,s0
    1024:	afb80010 	sw	t8,16(sp)
    1028:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
    102c:	afb90014 	sw	t9,20(sp)
    1030:	0c000000 	jal	0 <PadMgr_LockSerialMesgQueue>
    1034:	8fa4002c 	lw	a0,44(sp)
    1038:	8fbf0024 	lw	ra,36(sp)
    103c:	8fb00020 	lw	s0,32(sp)
    1040:	27bd0030 	addiu	sp,sp,48
    1044:	03e00008 	jr	ra
    1048:	00000000 	nop
    104c:	00000000 	nop
