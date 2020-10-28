
build/src/code/ucode_disas.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <UCodeDisas_TranslateAddr>:
       0:	00057100 	sll	t6,a1,0x4
       4:	000e7f02 	srl	t7,t6,0x1c
       8:	000fc080 	sll	t8,t7,0x2
       c:	0098c821 	addu	t9,a0,t8
      10:	3c0100ff 	lui	at,0xff
      14:	8f280000 	lw	t0,0(t9)
      18:	3421ffff 	ori	at,at,0xffff
      1c:	00a14824 	and	t1,a1,at
      20:	3c018000 	lui	at,0x8000
      24:	01091821 	addu	v1,t0,t1
      28:	00611021 	addu	v0,v1,at
      2c:	03e00008 	jr	ra
      30:	00000000 	nop

00000034 <UCodeDisas_ParseCombineColor>:
      34:	2c810008 	sltiu	at,a0,8
      38:	1020003b 	beqz	at,128 <UCodeDisas_ParseCombineColor+0xf4>
      3c:	00801025 	move	v0,a0
      40:	00047080 	sll	t6,a0,0x2
      44:	3c010000 	lui	at,0x0
      48:	002e0821 	addu	at,at,t6
      4c:	8c2e187c 	lw	t6,6268(at)
      50:	01c00008 	jr	t6
      54:	00000000 	nop
      58:	3c030000 	lui	v1,0x0
      5c:	1000005a 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
      60:	246300f8 	addiu	v1,v1,248
      64:	3c030000 	lui	v1,0x0
      68:	10000057 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
      6c:	24630104 	addiu	v1,v1,260
      70:	3c030000 	lui	v1,0x0
      74:	10000054 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
      78:	2463010c 	addiu	v1,v1,268
      7c:	3c030000 	lui	v1,0x0
      80:	10000051 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
      84:	24630114 	addiu	v1,v1,276
      88:	3c030000 	lui	v1,0x0
      8c:	1000004e 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
      90:	24630120 	addiu	v1,v1,288
      94:	3c030000 	lui	v1,0x0
      98:	1000004b 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
      9c:	24630128 	addiu	v1,v1,296
      a0:	24010002 	li	at,2
      a4:	14a10003 	bne	a1,at,b4 <UCodeDisas_ParseCombineColor+0x80>
      a8:	3c030000 	lui	v1,0x0
      ac:	10000046 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
      b0:	24630134 	addiu	v1,v1,308
      b4:	24010003 	li	at,3
      b8:	14a10004 	bne	a1,at,cc <UCodeDisas_ParseCombineColor+0x98>
      bc:	3c020000 	lui	v0,0x0
      c0:	3c020000 	lui	v0,0x0
      c4:	10000040 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
      c8:	2443013c 	addiu	v1,v0,316
      cc:	24420144 	addiu	v0,v0,324
      d0:	1000003d 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
      d4:	00401825 	move	v1,v0
      d8:	24010001 	li	at,1
      dc:	14a10003 	bne	a1,at,ec <UCodeDisas_ParseCombineColor+0xb8>
      e0:	3c030000 	lui	v1,0x0
      e4:	10000038 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
      e8:	24630148 	addiu	v1,v1,328
      ec:	24010002 	li	at,2
      f0:	14a10003 	bne	a1,at,100 <UCodeDisas_ParseCombineColor+0xcc>
      f4:	3c020000 	lui	v0,0x0
      f8:	10000033 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
      fc:	24430150 	addiu	v1,v0,336
     100:	24010003 	li	at,3
     104:	14a10004 	bne	a1,at,118 <UCodeDisas_ParseCombineColor+0xe4>
     108:	3c030000 	lui	v1,0x0
     10c:	3c030000 	lui	v1,0x0
     110:	10000002 	b	11c <UCodeDisas_ParseCombineColor+0xe8>
     114:	24630154 	addiu	v1,v1,340
     118:	24630164 	addiu	v1,v1,356
     11c:	00601025 	move	v0,v1
     120:	10000029 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
     124:	00401825 	move	v1,v0
     128:	24010003 	li	at,3
     12c:	14a10025 	bne	a1,at,1c4 <UCodeDisas_ParseCombineColor+0x190>
     130:	3c030000 	lui	v1,0x0
     134:	244ffff8 	addiu	t7,v0,-8
     138:	2de10008 	sltiu	at,t7,8
     13c:	1020001f 	beqz	at,1bc <UCodeDisas_ParseCombineColor+0x188>
     140:	3c030000 	lui	v1,0x0
     144:	000f7880 	sll	t7,t7,0x2
     148:	3c010000 	lui	at,0x0
     14c:	002f0821 	addu	at,at,t7
     150:	8c2f189c 	lw	t7,6300(at)
     154:	01e00008 	jr	t7
     158:	00000000 	nop
     15c:	3c030000 	lui	v1,0x0
     160:	10000019 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
     164:	24630168 	addiu	v1,v1,360
     168:	3c030000 	lui	v1,0x0
     16c:	10000016 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
     170:	24630178 	addiu	v1,v1,376
     174:	3c030000 	lui	v1,0x0
     178:	10000013 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
     17c:	24630188 	addiu	v1,v1,392
     180:	3c030000 	lui	v1,0x0
     184:	10000010 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
     188:	24630198 	addiu	v1,v1,408
     18c:	3c030000 	lui	v1,0x0
     190:	1000000d 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
     194:	246301a4 	addiu	v1,v1,420
     198:	3c030000 	lui	v1,0x0
     19c:	1000000a 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
     1a0:	246301b0 	addiu	v1,v1,432
     1a4:	3c030000 	lui	v1,0x0
     1a8:	10000007 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
     1ac:	246301c0 	addiu	v1,v1,448
     1b0:	3c030000 	lui	v1,0x0
     1b4:	10000004 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
     1b8:	246301d0 	addiu	v1,v1,464
     1bc:	10000002 	b	1c8 <UCodeDisas_ParseCombineColor+0x194>
     1c0:	246301d4 	addiu	v1,v1,468
     1c4:	246301d8 	addiu	v1,v1,472
     1c8:	00601025 	move	v0,v1
     1cc:	03e00008 	jr	ra
     1d0:	00000000 	nop

000001d4 <UCodeDisas_ParseCombineAlpha>:
     1d4:	3c030000 	lui	v1,0x0
     1d8:	2c810008 	sltiu	at,a0,8
     1dc:	10200028 	beqz	at,280 <UCodeDisas_ParseCombineAlpha+0xac>
     1e0:	246301dc 	addiu	v1,v1,476
     1e4:	00047080 	sll	t6,a0,0x2
     1e8:	3c010000 	lui	at,0x0
     1ec:	002e0821 	addu	at,at,t6
     1f0:	8c2e18bc 	lw	t6,6332(at)
     1f4:	01c00008 	jr	t6
     1f8:	00000000 	nop
     1fc:	24010003 	li	at,3
     200:	14a10004 	bne	a1,at,214 <UCodeDisas_ParseCombineAlpha+0x40>
     204:	3c030000 	lui	v1,0x0
     208:	3c030000 	lui	v1,0x0
     20c:	1000001c 	b	280 <UCodeDisas_ParseCombineAlpha+0xac>
     210:	246301e0 	addiu	v1,v1,480
     214:	1000001a 	b	280 <UCodeDisas_ParseCombineAlpha+0xac>
     218:	246301f0 	addiu	v1,v1,496
     21c:	3c030000 	lui	v1,0x0
     220:	10000017 	b	280 <UCodeDisas_ParseCombineAlpha+0xac>
     224:	246301fc 	addiu	v1,v1,508
     228:	3c030000 	lui	v1,0x0
     22c:	10000014 	b	280 <UCodeDisas_ParseCombineAlpha+0xac>
     230:	24630204 	addiu	v1,v1,516
     234:	3c030000 	lui	v1,0x0
     238:	10000011 	b	280 <UCodeDisas_ParseCombineAlpha+0xac>
     23c:	2463020c 	addiu	v1,v1,524
     240:	3c030000 	lui	v1,0x0
     244:	1000000e 	b	280 <UCodeDisas_ParseCombineAlpha+0xac>
     248:	24630218 	addiu	v1,v1,536
     24c:	3c030000 	lui	v1,0x0
     250:	1000000b 	b	280 <UCodeDisas_ParseCombineAlpha+0xac>
     254:	24630220 	addiu	v1,v1,544
     258:	24010003 	li	at,3
     25c:	14a10004 	bne	a1,at,270 <UCodeDisas_ParseCombineAlpha+0x9c>
     260:	3c030000 	lui	v1,0x0
     264:	3c030000 	lui	v1,0x0
     268:	10000005 	b	280 <UCodeDisas_ParseCombineAlpha+0xac>
     26c:	2463022c 	addiu	v1,v1,556
     270:	10000003 	b	280 <UCodeDisas_ParseCombineAlpha+0xac>
     274:	2463023c 	addiu	v1,v1,572
     278:	3c030000 	lui	v1,0x0
     27c:	24630240 	addiu	v1,v1,576
     280:	00601025 	move	v0,v1
     284:	03e00008 	jr	ra
     288:	00000000 	nop

0000028c <UCodeDisas_Init>:
     28c:	27bdffe8 	addiu	sp,sp,-24
     290:	afbf0014 	sw	ra,20(sp)
     294:	afa40018 	sw	a0,24(sp)
     298:	8fa40018 	lw	a0,24(sp)
     29c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     2a0:	240500d8 	li	a1,216
     2a4:	3c020000 	lui	v0,0x0
     2a8:	3c040000 	lui	a0,0x0
     2ac:	24840040 	addiu	a0,a0,64
     2b0:	24420000 	addiu	v0,v0,0
     2b4:	8fa30018 	lw	v1,24(sp)
     2b8:	8c4e0000 	lw	t6,0(v0)
     2bc:	24420010 	addiu	v0,v0,16
     2c0:	24630010 	addiu	v1,v1,16
     2c4:	ac6efff0 	sw	t6,-16(v1)
     2c8:	8c4ffff4 	lw	t7,-12(v0)
     2cc:	ac6ffff4 	sw	t7,-12(v1)
     2d0:	8c58fff8 	lw	t8,-8(v0)
     2d4:	ac78fff8 	sw	t8,-8(v1)
     2d8:	8c59fffc 	lw	t9,-4(v0)
     2dc:	1444fff6 	bne	v0,a0,2b8 <UCodeDisas_Init+0x2c>
     2e0:	ac79fffc 	sw	t9,-4(v1)
     2e4:	8fbf0014 	lw	ra,20(sp)
     2e8:	27bd0018 	addiu	sp,sp,24
     2ec:	03e00008 	jr	ra
     2f0:	00000000 	nop

000002f4 <UCodeDisas_Destroy>:
     2f4:	afa40000 	sw	a0,0(sp)
     2f8:	03e00008 	jr	ra
     2fc:	00000000 	nop

00000300 <UCodeDisas_SetCurUCodeImpl>:
     300:	27bdffe8 	addiu	sp,sp,-24
     304:	afbf0014 	sw	ra,20(sp)
     308:	00803825 	move	a3,a0
     30c:	8ce600c4 	lw	a2,196(a3)
     310:	00001825 	move	v1,zero
     314:	58c0000e 	blezl	a2,350 <UCodeDisas_SetCurUCodeImpl+0x50>
     318:	0066082a 	slt	at,v1,a2
     31c:	8ce200c8 	lw	v0,200(a3)
     320:	8c4e0004 	lw	t6,4(v0)
     324:	54ae0006 	bnel	a1,t6,340 <UCodeDisas_SetCurUCodeImpl+0x40>
     328:	24630001 	addiu	v1,v1,1
     32c:	8c4f0000 	lw	t7,0(v0)
     330:	8ce600c4 	lw	a2,196(a3)
     334:	10000005 	b	34c <UCodeDisas_SetCurUCodeImpl+0x4c>
     338:	acef00c0 	sw	t7,192(a3)
     33c:	24630001 	addiu	v1,v1,1
     340:	0066082a 	slt	at,v1,a2
     344:	1420fff6 	bnez	at,320 <UCodeDisas_SetCurUCodeImpl+0x20>
     348:	24420008 	addiu	v0,v0,8
     34c:	0066082a 	slt	at,v1,a2
     350:	5420000b 	bnezl	at,380 <UCodeDisas_SetCurUCodeImpl+0x80>
     354:	8fbf0014 	lw	ra,20(sp)
     358:	8cf800bc 	lw	t8,188(a3)
     35c:	3c040000 	lui	a0,0x0
     360:	24840244 	addiu	a0,a0,580
     364:	53000005 	beqzl	t8,37c <UCodeDisas_SetCurUCodeImpl+0x7c>
     368:	ace000c0 	sw	zero,192(a3)
     36c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     370:	afa70018 	sw	a3,24(sp)
     374:	8fa70018 	lw	a3,24(sp)
     378:	ace000c0 	sw	zero,192(a3)
     37c:	8fbf0014 	lw	ra,20(sp)
     380:	27bd0018 	addiu	sp,sp,24
     384:	03e00008 	jr	ra
     388:	00000000 	nop

0000038c <UCodeDisas_ParseGeometryMode>:
     38c:	27bdffc8 	addiu	sp,sp,-56
     390:	afb30024 	sw	s3,36(sp)
     394:	afb20020 	sw	s2,32(sp)
     398:	00809025 	move	s2,a0
     39c:	00a09825 	move	s3,a1
     3a0:	afbf0034 	sw	ra,52(sp)
     3a4:	afb60030 	sw	s6,48(sp)
     3a8:	afb5002c 	sw	s5,44(sp)
     3ac:	afb40028 	sw	s4,40(sp)
     3b0:	afb1001c 	sw	s1,28(sp)
     3b4:	afb00018 	sw	s0,24(sp)
     3b8:	3c100000 	lui	s0,0x0
     3bc:	3c160000 	lui	s6,0x0
     3c0:	3c150000 	lui	s5,0x0
     3c4:	3c140000 	lui	s4,0x0
     3c8:	24110001 	li	s1,1
     3cc:	26940058 	addiu	s4,s4,88
     3d0:	26b50268 	addiu	s5,s5,616
     3d4:	26d60264 	addiu	s6,s6,612
     3d8:	26100000 	addiu	s0,s0,0
     3dc:	8e0e0000 	lw	t6,0(s0)
     3e0:	0011102b 	sltu	v0,zero,s1
     3e4:	01d37824 	and	t7,t6,s3
     3e8:	51e0000e 	beqzl	t7,424 <UCodeDisas_ParseGeometryMode+0x98>
     3ec:	26100008 	addiu	s0,s0,8
     3f0:	8e4300bc 	lw	v1,188(s2)
     3f4:	14400006 	bnez	v0,410 <UCodeDisas_ParseGeometryMode+0x84>
     3f8:	00008825 	move	s1,zero
     3fc:	10600004 	beqz	v1,410 <UCodeDisas_ParseGeometryMode+0x84>
     400:	00000000 	nop
     404:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     408:	02c02025 	move	a0,s6
     40c:	8e4300bc 	lw	v1,188(s2)
     410:	10600003 	beqz	v1,420 <UCodeDisas_ParseGeometryMode+0x94>
     414:	02a02025 	move	a0,s5
     418:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     41c:	8e050004 	lw	a1,4(s0)
     420:	26100008 	addiu	s0,s0,8
     424:	5614ffee 	bnel	s0,s4,3e0 <UCodeDisas_ParseGeometryMode+0x54>
     428:	8e0e0000 	lw	t6,0(s0)
     42c:	8fbf0034 	lw	ra,52(sp)
     430:	8fb00018 	lw	s0,24(sp)
     434:	8fb1001c 	lw	s1,28(sp)
     438:	8fb20020 	lw	s2,32(sp)
     43c:	8fb30024 	lw	s3,36(sp)
     440:	8fb40028 	lw	s4,40(sp)
     444:	8fb5002c 	lw	s5,44(sp)
     448:	8fb60030 	lw	s6,48(sp)
     44c:	03e00008 	jr	ra
     450:	27bd0038 	addiu	sp,sp,56

00000454 <UCodeDisas_ParseRenderMode>:
     454:	27bdffc8 	addiu	sp,sp,-56
     458:	afb40030 	sw	s4,48(sp)
     45c:	afb3002c 	sw	s3,44(sp)
     460:	00809825 	move	s3,a0
     464:	00a0a025 	move	s4,a1
     468:	afbf0034 	sw	ra,52(sp)
     46c:	afb20028 	sw	s2,40(sp)
     470:	afb10024 	sw	s1,36(sp)
     474:	afb00020 	sw	s0,32(sp)
     478:	3c100000 	lui	s0,0x0
     47c:	3c120000 	lui	s2,0x0
     480:	3c110000 	lui	s1,0x0
     484:	2631013c 	addiu	s1,s1,316
     488:	265203f8 	addiu	s2,s2,1016
     48c:	2610007c 	addiu	s0,s0,124
     490:	8e6200bc 	lw	v0,188(s3)
     494:	8e0e0008 	lw	t6,8(s0)
     498:	8e180004 	lw	t8,4(s0)
     49c:	028e7824 	and	t7,s4,t6
     4a0:	55f80007 	bnel	t7,t8,4c0 <UCodeDisas_ParseRenderMode+0x6c>
     4a4:	2610000c 	addiu	s0,s0,12
     4a8:	10400004 	beqz	v0,4bc <UCodeDisas_ParseRenderMode+0x68>
     4ac:	02402025 	move	a0,s2
     4b0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     4b4:	8e050000 	lw	a1,0(s0)
     4b8:	8e6200bc 	lw	v0,188(s3)
     4bc:	2610000c 	addiu	s0,s0,12
     4c0:	5611fff5 	bnel	s0,s1,498 <UCodeDisas_ParseRenderMode+0x44>
     4c4:	8e0e0008 	lw	t6,8(s0)
     4c8:	14400004 	bnez	v0,4dc <UCodeDisas_ParseRenderMode+0x88>
     4cc:	3c100000 	lui	s0,0x0
     4d0:	3c100000 	lui	s0,0x0
     4d4:	1000001c 	b	548 <UCodeDisas_ParseRenderMode+0xf4>
     4d8:	2610013c 	addiu	s0,s0,316
     4dc:	00141482 	srl	v0,s4,0x12
     4e0:	30423333 	andi	v0,v0,0x3333
     4e4:	0002cb03 	sra	t9,v0,0xc
     4e8:	33280003 	andi	t0,t9,0x3
     4ec:	00084880 	sll	t1,t0,0x2
     4f0:	2610013c 	addiu	s0,s0,316
     4f4:	02095021 	addu	t2,s0,t1
     4f8:	00025a03 	sra	t3,v0,0x8
     4fc:	316c0003 	andi	t4,t3,0x3
     500:	8d450000 	lw	a1,0(t2)
     504:	30490003 	andi	t1,v0,0x3
     508:	00027903 	sra	t7,v0,0x4
     50c:	31f80003 	andi	t8,t7,0x3
     510:	00095080 	sll	t2,t1,0x2
     514:	000c6880 	sll	t5,t4,0x2
     518:	020a5821 	addu	t3,s0,t2
     51c:	0018c880 	sll	t9,t8,0x2
     520:	8d6c0030 	lw	t4,48(t3)
     524:	02194021 	addu	t0,s0,t9
     528:	020d7021 	addu	t6,s0,t5
     52c:	8dc60010 	lw	a2,16(t6)
     530:	8d070020 	lw	a3,32(t0)
     534:	3c040000 	lui	a0,0x0
     538:	248403fc 	addiu	a0,a0,1020
     53c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     540:	afac0010 	sw	t4,16(sp)
     544:	8e6200bc 	lw	v0,188(s3)
     548:	10400019 	beqz	v0,5b0 <UCodeDisas_ParseRenderMode+0x15c>
     54c:	3c040000 	lui	a0,0x0
     550:	00141402 	srl	v0,s4,0x10
     554:	30423333 	andi	v0,v0,0x3333
     558:	00026b03 	sra	t5,v0,0xc
     55c:	31ae0003 	andi	t6,t5,0x3
     560:	000e7880 	sll	t7,t6,0x2
     564:	020fc021 	addu	t8,s0,t7
     568:	0002ca03 	sra	t9,v0,0x8
     56c:	33280003 	andi	t0,t9,0x3
     570:	8f050000 	lw	a1,0(t8)
     574:	304f0003 	andi	t7,v0,0x3
     578:	00025903 	sra	t3,v0,0x4
     57c:	316c0003 	andi	t4,t3,0x3
     580:	000fc080 	sll	t8,t7,0x2
     584:	00084880 	sll	t1,t0,0x2
     588:	0218c821 	addu	t9,s0,t8
     58c:	000c6880 	sll	t5,t4,0x2
     590:	8f280030 	lw	t0,48(t9)
     594:	020d7021 	addu	t6,s0,t5
     598:	02095021 	addu	t2,s0,t1
     59c:	8d460010 	lw	a2,16(t2)
     5a0:	8dc70020 	lw	a3,32(t6)
     5a4:	24840418 	addiu	a0,a0,1048
     5a8:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     5ac:	afa80010 	sw	t0,16(sp)
     5b0:	8fbf0034 	lw	ra,52(sp)
     5b4:	8fb00020 	lw	s0,32(sp)
     5b8:	8fb10024 	lw	s1,36(sp)
     5bc:	8fb20028 	lw	s2,40(sp)
     5c0:	8fb3002c 	lw	s3,44(sp)
     5c4:	8fb40030 	lw	s4,48(sp)
     5c8:	03e00008 	jr	ra
     5cc:	27bd0038 	addiu	sp,sp,56

000005d0 <UCodeDisas_PrintVertices>:
     5d0:	27bdffa8 	addiu	sp,sp,-88
     5d4:	afb40044 	sw	s4,68(sp)
     5d8:	afb30040 	sw	s3,64(sp)
     5dc:	afb2003c 	sw	s2,60(sp)
     5e0:	afb00034 	sw	s0,52(sp)
     5e4:	00a08025 	move	s0,a1
     5e8:	00809025 	move	s2,a0
     5ec:	00e09825 	move	s3,a3
     5f0:	00c0a025 	move	s4,a2
     5f4:	afbf0054 	sw	ra,84(sp)
     5f8:	afb70050 	sw	s7,80(sp)
     5fc:	afb6004c 	sw	s6,76(sp)
     600:	afb50048 	sw	s5,72(sp)
     604:	afb10038 	sw	s1,56(sp)
     608:	1a80003e 	blez	s4,704 <UCodeDisas_PrintVertices+0x134>
     60c:	00008825 	move	s1,zero
     610:	3c170000 	lui	s7,0x0
     614:	3c160000 	lui	s6,0x0
     618:	26d60430 	addiu	s6,s6,1072
     61c:	26f70474 	addiu	s7,s7,1140
     620:	3c150002 	lui	s5,0x2
     624:	8e4e00d4 	lw	t6,212(s2)
     628:	8e4200bc 	lw	v0,188(s2)
     62c:	01d57824 	and	t7,t6,s5
     630:	11e0001a 	beqz	t7,69c <UCodeDisas_PrintVertices+0xcc>
     634:	00000000 	nop
     638:	50400030 	beqzl	v0,6fc <UCodeDisas_PrintVertices+0x12c>
     63c:	26310001 	addiu	s1,s1,1
     640:	96180006 	lhu	t8,6(s0)
     644:	86050000 	lh	a1,0(s0)
     648:	86060002 	lh	a2,2(s0)
     64c:	86070004 	lh	a3,4(s0)
     650:	afb80010 	sw	t8,16(sp)
     654:	86190008 	lh	t9,8(s0)
     658:	02716821 	addu	t5,s3,s1
     65c:	02c02025 	move	a0,s6
     660:	afb90014 	sw	t9,20(sp)
     664:	8608000a 	lh	t0,10(s0)
     668:	afa80018 	sw	t0,24(sp)
     66c:	8209000c 	lb	t1,12(s0)
     670:	afa9001c 	sw	t1,28(sp)
     674:	820a000d 	lb	t2,13(s0)
     678:	afaa0020 	sw	t2,32(sp)
     67c:	820b000e 	lb	t3,14(s0)
     680:	afab0024 	sw	t3,36(sp)
     684:	920c000f 	lbu	t4,15(s0)
     688:	afad002c 	sw	t5,44(sp)
     68c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     690:	afac0028 	sw	t4,40(sp)
     694:	10000019 	b	6fc <UCodeDisas_PrintVertices+0x12c>
     698:	26310001 	addiu	s1,s1,1
     69c:	50400017 	beqzl	v0,6fc <UCodeDisas_PrintVertices+0x12c>
     6a0:	26310001 	addiu	s1,s1,1
     6a4:	960e0006 	lhu	t6,6(s0)
     6a8:	86050000 	lh	a1,0(s0)
     6ac:	86060002 	lh	a2,2(s0)
     6b0:	86070004 	lh	a3,4(s0)
     6b4:	afae0010 	sw	t6,16(sp)
     6b8:	860f0008 	lh	t7,8(s0)
     6bc:	02715821 	addu	t3,s3,s1
     6c0:	02e02025 	move	a0,s7
     6c4:	afaf0014 	sw	t7,20(sp)
     6c8:	8618000a 	lh	t8,10(s0)
     6cc:	afb80018 	sw	t8,24(sp)
     6d0:	9219000c 	lbu	t9,12(s0)
     6d4:	afb9001c 	sw	t9,28(sp)
     6d8:	9208000d 	lbu	t0,13(s0)
     6dc:	afa80020 	sw	t0,32(sp)
     6e0:	9209000e 	lbu	t1,14(s0)
     6e4:	afa90024 	sw	t1,36(sp)
     6e8:	920a000f 	lbu	t2,15(s0)
     6ec:	afab002c 	sw	t3,44(sp)
     6f0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     6f4:	afaa0028 	sw	t2,40(sp)
     6f8:	26310001 	addiu	s1,s1,1
     6fc:	1634ffc9 	bne	s1,s4,624 <UCodeDisas_PrintVertices+0x54>
     700:	26100010 	addiu	s0,s0,16
     704:	8fbf0054 	lw	ra,84(sp)
     708:	8fb00034 	lw	s0,52(sp)
     70c:	8fb10038 	lw	s1,56(sp)
     710:	8fb2003c 	lw	s2,60(sp)
     714:	8fb30040 	lw	s3,64(sp)
     718:	8fb40044 	lw	s4,68(sp)
     71c:	8fb50048 	lw	s5,72(sp)
     720:	8fb6004c 	lw	s6,76(sp)
     724:	8fb70050 	lw	s7,80(sp)
     728:	03e00008 	jr	ra
     72c:	27bd0058 	addiu	sp,sp,88

00000730 <UCodeDisas_Disassemble>:
     730:	27bdfc70 	addiu	sp,sp,-912
     734:	afb3011c 	sw	s3,284(sp)
     738:	00809825 	move	s3,a0
     73c:	afbf0134 	sw	ra,308(sp)
     740:	afbe0130 	sw	s8,304(sp)
     744:	afb7012c 	sw	s7,300(sp)
     748:	afb60128 	sw	s6,296(sp)
     74c:	afb50124 	sw	s5,292(sp)
     750:	afb40120 	sw	s4,288(sp)
     754:	afb20118 	sw	s2,280(sp)
     758:	afb10114 	sw	s1,276(sp)
     75c:	afb00110 	sw	s0,272(sp)
     760:	afa50394 	sw	a1,916(sp)
     764:	afa00378 	sw	zero,888(sp)
     768:	27be0370 	addiu	s8,sp,880
     76c:	24170020 	li	s7,32
     770:	24160020 	li	s6,32
     774:	8e6e008c 	lw	t6,140(s3)
     778:	02602025 	move	a0,s3
     77c:	00008025 	move	s0,zero
     780:	25cf0001 	addiu	t7,t6,1
     784:	ae6f008c 	sw	t7,140(s3)
     788:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     78c:	8fa50394 	lw	a1,916(sp)
     790:	afa20394 	sw	v0,916(sp)
     794:	8e7800bc 	lw	t8,188(s3)
     798:	13000004 	beqz	t8,7ac <UCodeDisas_Disassemble+0x7c>
     79c:	3c040000 	lui	a0,0x0
     7a0:	24840000 	addiu	a0,a0,0
     7a4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     7a8:	00402825 	move	a1,v0
     7ac:	8fb90394 	lw	t9,916(sp)
     7b0:	02602025 	move	a0,s3
     7b4:	8f2b0000 	lw	t3,0(t9)
     7b8:	afcb0000 	sw	t3,0(s8)
     7bc:	8f2a0004 	lw	t2,4(t9)
     7c0:	afca0004 	sw	t2,4(s8)
     7c4:	93b10370 	lbu	s1,880(sp)
     7c8:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     7cc:	8fa50374 	lw	a1,884(sp)
     7d0:	8e6c00bc 	lw	t4,188(s3)
     7d4:	0040a025 	move	s4,v0
     7d8:	11800005 	beqz	t4,7f0 <UCodeDisas_Disassemble+0xc0>
     7dc:	3c040000 	lui	a0,0x0
     7e0:	24840000 	addiu	a0,a0,0
     7e4:	8fc50000 	lw	a1,0(s8)
     7e8:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     7ec:	8fa60374 	lw	a2,884(sp)
     7f0:	8e620088 	lw	v0,136(s3)
     7f4:	1840000b 	blez	v0,824 <UCodeDisas_Disassemble+0xf4>
     7f8:	00000000 	nop
     7fc:	8e6d00bc 	lw	t5,188(s3)
     800:	11a00004 	beqz	t5,814 <UCodeDisas_Disassemble+0xe4>
     804:	3c040000 	lui	a0,0x0
     808:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     80c:	24840000 	addiu	a0,a0,0
     810:	8e620088 	lw	v0,136(s3)
     814:	26100001 	addiu	s0,s0,1
     818:	0202082a 	slt	at,s0,v0
     81c:	5420fff8 	bnezl	at,800 <UCodeDisas_Disassemble+0xd0>
     820:	8e6d00bc 	lw	t5,188(s3)
     824:	1a20000a 	blez	s1,850 <UCodeDisas_Disassemble+0x120>
     828:	02201825 	move	v1,s1
     82c:	262eff23 	addiu	t6,s1,-221
     830:	2dc10023 	sltiu	at,t6,35
     834:	102004e2 	beqz	at,1bc0 <L800D9890>
     838:	000e7080 	sll	t6,t6,0x2
     83c:	3c010000 	lui	at,0x0
     840:	002e0821 	addu	at,at,t6
     844:	8c2e0000 	lw	t6,0(at)
     848:	01c00008 	jr	t6
     84c:	00000000 	nop
     850:	50600466 	beqzl	v1,19ec <L800D9698+0x24>
     854:	93c50001 	lbu	a1,1(s8)
     858:	100004da 	b	1bc4 <L800D9890+0x4>
     85c:	8e7100c0 	lw	s1,192(s3)

00000860 <L800D8530>:
     860:	8e6800bc 	lw	t0,188(s3)
     864:	110009bd 	beqz	t0,2f5c <L800DAC14+0x18>
     868:	3c040000 	lui	a0,0x0
     86c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     870:	24840000 	addiu	a0,a0,0
     874:	100009b9 	b	2f5c <L800DAC14+0x18>
     878:	8e6800bc 	lw	t0,188(s3)

0000087c <L800D854C>:
     87c:	8fb80394 	lw	t8,916(sp)
     880:	27af0368 	addiu	t7,sp,872
     884:	8f0a0000 	lw	t2,0(t8)
     888:	adea0000 	sw	t2,0(t7)
     88c:	8f190004 	lw	t9,4(t8)
     890:	adf90004 	sw	t9,4(t7)
     894:	93ab0369 	lbu	t3,873(sp)
     898:	11600005 	beqz	t3,8b0 <L800D854C+0x34>
     89c:	24010001 	li	at,1
     8a0:	51610017 	beql	t3,at,900 <L800D854C+0x84>
     8a4:	8e6800bc 	lw	t0,188(s3)
     8a8:	100009ac 	b	2f5c <L800DAC14+0x18>
     8ac:	8e6800bc 	lw	t0,188(s3)
     8b0:	8e6c00bc 	lw	t4,188(s3)
     8b4:	11800004 	beqz	t4,8c8 <L800D854C+0x4c>
     8b8:	3c040000 	lui	a0,0x0
     8bc:	24840000 	addiu	a0,a0,0
     8c0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     8c4:	8fa5036c 	lw	a1,876(sp)
     8c8:	8e6f0088 	lw	t7,136(s3)
     8cc:	8fad0394 	lw	t5,916(sp)
     8d0:	268cfff8 	addiu	t4,s4,-8
     8d4:	000fc080 	sll	t8,t7,0x2
     8d8:	0278c821 	addu	t9,s3,t8
     8dc:	25ae0008 	addiu	t6,t5,8
     8e0:	af2e0040 	sw	t6,64(t9)
     8e4:	8e6a0088 	lw	t2,136(s3)
     8e8:	254b0001 	addiu	t3,t2,1
     8ec:	ae6b0088 	sw	t3,136(s3)
     8f0:	afac0394 	sw	t4,916(sp)
     8f4:	10000999 	b	2f5c <L800DAC14+0x18>
     8f8:	8e6800bc 	lw	t0,188(s3)
     8fc:	8e6800bc 	lw	t0,188(s3)
     900:	11000005 	beqz	t0,918 <L800D854C+0x9c>
     904:	3c040000 	lui	a0,0x0
     908:	24840000 	addiu	a0,a0,0
     90c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     910:	8fa5036c 	lw	a1,876(sp)
     914:	8e6800bc 	lw	t0,188(s3)
     918:	268dfff8 	addiu	t5,s4,-8
     91c:	afad0394 	sw	t5,916(sp)
     920:	1000098e 	b	2f5c <L800DAC14+0x18>
     924:	00000000 	nop

00000928 <L800D85F8>:
     928:	8e6800bc 	lw	t0,188(s3)
     92c:	11000005 	beqz	t0,944 <L800D85F8+0x1c>
     930:	3c040000 	lui	a0,0x0
     934:	24840000 	addiu	a0,a0,0
     938:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     93c:	8fa50374 	lw	a1,884(sp)
     940:	8e6800bc 	lw	t0,188(s3)
     944:	8faf0374 	lw	t7,884(sp)
     948:	10000984 	b	2f5c <L800DAC14+0x18>
     94c:	afaf0384 	sw	t7,900(sp)

00000950 <L800D8620>:
     950:	8fae0394 	lw	t6,916(sp)
     954:	27b80358 	addiu	t8,sp,856
     958:	8dca0000 	lw	t2,0(t6)
     95c:	af0a0000 	sw	t2,0(t8)
     960:	8dd90004 	lw	t9,4(t6)
     964:	af190004 	sw	t9,4(t8)
     968:	8dca0008 	lw	t2,8(t6)
     96c:	af0a0008 	sw	t2,8(t8)
     970:	8dd9000c 	lw	t9,12(t6)
     974:	af19000c 	sw	t9,12(t8)
     978:	8e6b00bc 	lw	t3,188(s3)
     97c:	5160001c 	beqzl	t3,9f0 <L800D8620+0xa0>
     980:	8faf0394 	lw	t7,916(sp)
     984:	8fad035c 	lw	t5,860(sp)
     988:	93b8035c 	lbu	t8,860(sp)
     98c:	8fb90394 	lw	t9,916(sp)
     990:	31af0fff 	andi	t7,t5,0xfff
     994:	330e0007 	andi	t6,t8,0x7
     998:	afae0014 	sw	t6,20(sp)
     99c:	afaf0010 	sw	t7,16(sp)
     9a0:	8f22000c 	lw	v0,12(t9)
     9a4:	8fac0358 	lw	t4,856(sp)
     9a8:	000d3a00 	sll	a3,t5,0x8
     9ac:	00025402 	srl	t2,v0,0x10
     9b0:	304bffff 	andi	t3,v0,0xffff
     9b4:	afab001c 	sw	t3,28(sp)
     9b8:	afaa0018 	sw	t2,24(sp)
     9bc:	8f230014 	lw	v1,20(t9)
     9c0:	000c2a00 	sll	a1,t4,0x8
     9c4:	31860fff 	andi	a2,t4,0xfff
     9c8:	3c040000 	lui	a0,0x0
     9cc:	00036402 	srl	t4,v1,0x10
     9d0:	306dffff 	andi	t5,v1,0xffff
     9d4:	afad0024 	sw	t5,36(sp)
     9d8:	afac0020 	sw	t4,32(sp)
     9dc:	24840000 	addiu	a0,a0,0
     9e0:	00052d02 	srl	a1,a1,0x14
     9e4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     9e8:	00073d02 	srl	a3,a3,0x14
     9ec:	8faf0394 	lw	t7,916(sp)
     9f0:	240e0001 	li	t6,1
     9f4:	25f80010 	addiu	t8,t7,16
     9f8:	afb80394 	sw	t8,916(sp)
     9fc:	ae6e00ac 	sw	t6,172(s3)
     a00:	10000956 	b	2f5c <L800DAC14+0x18>
     a04:	8e6800bc 	lw	t0,188(s3)

00000a08 <L800D86D8>:
     a08:	97c20002 	lhu	v0,2(s8)
     a0c:	240107ff 	li	at,2047
     a10:	8e6800bc 	lw	t0,188(s3)
     a14:	14410009 	bne	v0,at,a3c <L800D86D8+0x34>
     a18:	00000000 	nop
     a1c:	1100000e 	beqz	t0,a58 <L800D86D8+0x50>
     a20:	3c040000 	lui	a0,0x0
     a24:	24840000 	addiu	a0,a0,0
     a28:	8fa50374 	lw	a1,884(sp)
     a2c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     a30:	8fa60384 	lw	a2,900(sp)
     a34:	10000009 	b	a5c <L800D86D8+0x54>
     a38:	02602025 	move	a0,s3
     a3c:	11000006 	beqz	t0,a58 <L800D86D8+0x50>
     a40:	3c040000 	lui	a0,0x0
     a44:	24840000 	addiu	a0,a0,0
     a48:	8fa50374 	lw	a1,884(sp)
     a4c:	8fa60384 	lw	a2,900(sp)
     a50:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     a54:	24470001 	addiu	a3,v0,1
     a58:	02602025 	move	a0,s3
     a5c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     a60:	8fa50374 	lw	a1,884(sp)
     a64:	02602025 	move	a0,s3
     a68:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     a6c:	00402825 	move	a1,v0
     a70:	8e6a00a8 	lw	t2,168(s3)
     a74:	8e6800bc 	lw	t0,188(s3)
     a78:	254b0001 	addiu	t3,t2,1
     a7c:	10000937 	b	2f5c <L800DAC14+0x18>
     a80:	ae6b00a8 	sw	t3,168(s3)

00000a84 <L800D8754>:
     a84:	8e7900bc 	lw	t9,188(s3)
     a88:	13200004 	beqz	t9,a9c <L800D8754+0x18>
     a8c:	3c040000 	lui	a0,0x0
     a90:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     a94:	24840000 	addiu	a0,a0,0
     a98:	8e620088 	lw	v0,136(s3)
     a9c:	1c400004 	bgtz	v0,ab0 <L800D8754+0x2c>
     aa0:	240c0001 	li	t4,1
     aa4:	afac0378 	sw	t4,888(sp)
     aa8:	1000092c 	b	2f5c <L800DAC14+0x18>
     aac:	8e6800bc 	lw	t0,188(s3)
     ab0:	2451ffff 	addiu	s1,v0,-1
     ab4:	00116880 	sll	t5,s1,0x2
     ab8:	026d7821 	addu	t7,s3,t5
     abc:	ae710088 	sw	s1,136(s3)
     ac0:	8df80040 	lw	t8,64(t7)
     ac4:	270efff8 	addiu	t6,t8,-8
     ac8:	afae0394 	sw	t6,916(sp)
     acc:	10000923 	b	2f5c <L800DAC14+0x18>
     ad0:	8e6800bc 	lw	t0,188(s3)

00000ad4 <L800D87A4>:
     ad4:	8fab0394 	lw	t3,916(sp)
     ad8:	27aa0350 	addiu	t2,sp,848
     adc:	8d6c0000 	lw	t4,0(t3)
     ae0:	ad4c0000 	sw	t4,0(t2)
     ae4:	8d790004 	lw	t9,4(t3)
     ae8:	ad590004 	sw	t9,4(t2)
     aec:	8e6800bc 	lw	t0,188(s3)
     af0:	5100002f 	beqzl	t0,bb0 <L800D87A4+0xdc>
     af4:	8e6b00b0 	lw	t3,176(s3)
     af8:	8fad0350 	lw	t5,848(sp)
     afc:	93b80354 	lbu	t8,852(sp)
     b00:	8fb90354 	lw	t9,852(sp)
     b04:	93aa0355 	lbu	t2,853(sp)
     b08:	31af01ff 	andi	t7,t5,0x1ff
     b0c:	000d32c0 	sll	a2,t5,0xb
     b10:	000d3b80 	sll	a3,t5,0xe
     b14:	330e0007 	andi	t6,t8,0x7
     b18:	00196300 	sll	t4,t9,0xc
     b1c:	000c6fc2 	srl	t5,t4,0x1f
     b20:	afaf0010 	sw	t7,16(sp)
     b24:	000a5902 	srl	t3,t2,0x4
     b28:	000d7840 	sll	t7,t5,0x1
     b2c:	afae0014 	sw	t6,20(sp)
     b30:	0019c340 	sll	t8,t9,0xd
     b34:	001877c2 	srl	t6,t8,0x1f
     b38:	afab0018 	sw	t3,24(sp)
     b3c:	01ee5021 	addu	t2,t7,t6
     b40:	00195b80 	sll	t3,t9,0xe
     b44:	00196c80 	sll	t5,t9,0x12
     b48:	000dc702 	srl	t8,t5,0x1c
     b4c:	000b6702 	srl	t4,t3,0x1c
     b50:	93ab0356 	lbu	t3,854(sp)
     b54:	afb80024 	sw	t8,36(sp)
     b58:	00197d80 	sll	t7,t9,0x16
     b5c:	93b80357 	lbu	t8,855(sp)
     b60:	000f77c2 	srl	t6,t7,0x1f
     b64:	afaa001c 	sw	t2,28(sp)
     b68:	000e5040 	sll	t2,t6,0x1
     b6c:	afac0020 	sw	t4,32(sp)
     b70:	93a50351 	lbu	a1,849(sp)
     b74:	316c0001 	andi	t4,t3,0x1
     b78:	014c6821 	addu	t5,t2,t4
     b7c:	3c040000 	lui	a0,0x0
     b80:	332e000f 	andi	t6,t9,0xf
     b84:	00187902 	srl	t7,t8,0x4
     b88:	afaf002c 	sw	t7,44(sp)
     b8c:	afae0030 	sw	t6,48(sp)
     b90:	24840000 	addiu	a0,a0,0
     b94:	afad0028 	sw	t5,40(sp)
     b98:	00073dc2 	srl	a3,a3,0x17
     b9c:	00063782 	srl	a2,a2,0x1e
     ba0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     ba4:	00052942 	srl	a1,a1,0x5
     ba8:	8e6800bc 	lw	t0,188(s3)
     bac:	8e6b00b0 	lw	t3,176(s3)
     bb0:	116008ea 	beqz	t3,2f5c <L800DAC14+0x18>
     bb4:	00000000 	nop
     bb8:	11000003 	beqz	t0,bc8 <L800D87A4+0xf4>
     bbc:	3c040000 	lui	a0,0x0
     bc0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     bc4:	24840000 	addiu	a0,a0,0
     bc8:	8e6a00b8 	lw	t2,184(s3)
     bcc:	8e6800bc 	lw	t0,188(s3)
     bd0:	254c0001 	addiu	t4,t2,1
     bd4:	ae6c00b8 	sw	t4,184(s3)
     bd8:	100008e0 	b	2f5c <L800DAC14+0x18>
     bdc:	00000000 	nop

00000be0 <L800D88B0>:
     be0:	8fb80394 	lw	t8,916(sp)
     be4:	27ad0348 	addiu	t5,sp,840
     be8:	8f190000 	lw	t9,0(t8)
     bec:	adb90000 	sw	t9,0(t5)
     bf0:	8f0f0004 	lw	t7,4(t8)
     bf4:	adaf0004 	sw	t7,4(t5)
     bf8:	8e6800bc 	lw	t0,188(s3)
     bfc:	110008d7 	beqz	t0,2f5c <L800DAC14+0x18>
     c00:	00000000 	nop
     c04:	8fae034c 	lw	t6,844(sp)
     c08:	8fa20348 	lw	v0,840(sp)
     c0c:	93a5034c 	lbu	a1,844(sp)
     c10:	000e5a00 	sll	t3,t6,0x8
     c14:	000b5502 	srl	t2,t3,0x14
     c18:	3c040000 	lui	a0,0x0
     c1c:	31cc0fff 	andi	t4,t6,0xfff
     c20:	00023200 	sll	a2,v0,0x8
     c24:	00063502 	srl	a2,a2,0x14
     c28:	afac0014 	sw	t4,20(sp)
     c2c:	24840000 	addiu	a0,a0,0
     c30:	afaa0010 	sw	t2,16(sp)
     c34:	30470fff 	andi	a3,v0,0xfff
     c38:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     c3c:	30a50007 	andi	a1,a1,0x7
     c40:	8e6800bc 	lw	t0,188(s3)
     c44:	100008c5 	b	2f5c <L800DAC14+0x18>
     c48:	00000000 	nop

00000c4c <L800D891C>:
     c4c:	8fb80394 	lw	t8,916(sp)
     c50:	27ad0340 	addiu	t5,sp,832
     c54:	8f190000 	lw	t9,0(t8)
     c58:	adb90000 	sw	t9,0(t5)
     c5c:	8f0f0004 	lw	t7,4(t8)
     c60:	adaf0004 	sw	t7,4(t5)
     c64:	8e6b00bc 	lw	t3,188(s3)
     c68:	51600011 	beqzl	t3,cb0 <L800D891C+0x64>
     c6c:	8e7800b4 	lw	t8,180(s3)
     c70:	8faa0344 	lw	t2,836(sp)
     c74:	8fa20340 	lw	v0,832(sp)
     c78:	93a50344 	lbu	a1,836(sp)
     c7c:	000a7200 	sll	t6,t2,0x8
     c80:	000e6502 	srl	t4,t6,0x14
     c84:	3c040000 	lui	a0,0x0
     c88:	314d0fff 	andi	t5,t2,0xfff
     c8c:	00023200 	sll	a2,v0,0x8
     c90:	00063502 	srl	a2,a2,0x14
     c94:	afad0014 	sw	t5,20(sp)
     c98:	24840000 	addiu	a0,a0,0
     c9c:	afac0010 	sw	t4,16(sp)
     ca0:	30470fff 	andi	a3,v0,0xfff
     ca4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     ca8:	30a50007 	andi	a1,a1,0x7
     cac:	8e7800b4 	lw	t8,180(s3)
     cb0:	5300000a 	beqzl	t8,cdc <L800D891C+0x90>
     cb4:	240e0001 	li	t6,1
     cb8:	8e6f00bc 	lw	t7,188(s3)
     cbc:	11e00003 	beqz	t7,ccc <L800D891C+0x80>
     cc0:	3c040000 	lui	a0,0x0
     cc4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     cc8:	24840000 	addiu	a0,a0,0
     ccc:	8e7900b8 	lw	t9,184(s3)
     cd0:	272b0001 	addiu	t3,t9,1
     cd4:	ae6b00b8 	sw	t3,184(s3)
     cd8:	240e0001 	li	t6,1
     cdc:	ae6e00ac 	sw	t6,172(s3)
     ce0:	1000089e 	b	2f5c <L800DAC14+0x18>
     ce4:	8e6800bc 	lw	t0,188(s3)

00000ce8 <L800D89B8>:
     ce8:	8faa0394 	lw	t2,916(sp)
     cec:	27ac0338 	addiu	t4,sp,824
     cf0:	8d580000 	lw	t8,0(t2)
     cf4:	ad980000 	sw	t8,0(t4)
     cf8:	8d4d0004 	lw	t5,4(t2)
     cfc:	ad8d0004 	sw	t5,4(t4)
     d00:	8e6800bc 	lw	t0,188(s3)
     d04:	11000895 	beqz	t0,2f5c <L800DAC14+0x18>
     d08:	00000000 	nop
     d0c:	8faf033c 	lw	t7,828(sp)
     d10:	8fa20338 	lw	v0,824(sp)
     d14:	93a5033c 	lbu	a1,828(sp)
     d18:	000fca00 	sll	t9,t7,0x8
     d1c:	00195d02 	srl	t3,t9,0x14
     d20:	3c040000 	lui	a0,0x0
     d24:	31ee0fff 	andi	t6,t7,0xfff
     d28:	00023200 	sll	a2,v0,0x8
     d2c:	00063502 	srl	a2,a2,0x14
     d30:	afae0014 	sw	t6,20(sp)
     d34:	24840000 	addiu	a0,a0,0
     d38:	afab0010 	sw	t3,16(sp)
     d3c:	30470fff 	andi	a3,v0,0xfff
     d40:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     d44:	30a50007 	andi	a1,a1,0x7
     d48:	8e6800bc 	lw	t0,188(s3)
     d4c:	10000883 	b	2f5c <L800DAC14+0x18>
     d50:	00000000 	nop

00000d54 <L800D8A24>:
     d54:	8faa0394 	lw	t2,916(sp)
     d58:	27ac0330 	addiu	t4,sp,816
     d5c:	8d580000 	lw	t8,0(t2)
     d60:	ad980000 	sw	t8,0(t4)
     d64:	8d4d0004 	lw	t5,4(t2)
     d68:	ad8d0004 	sw	t5,4(t4)
     d6c:	8e6800bc 	lw	t0,188(s3)
     d70:	1100087a 	beqz	t0,2f5c <L800DAC14+0x18>
     d74:	00000000 	nop
     d78:	8fa60334 	lw	a2,820(sp)
     d7c:	93a50334 	lbu	a1,820(sp)
     d80:	3c040000 	lui	a0,0x0
     d84:	00063200 	sll	a2,a2,0x8
     d88:	00063502 	srl	a2,a2,0x14
     d8c:	00063082 	srl	a2,a2,0x2
     d90:	24840000 	addiu	a0,a0,0
     d94:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     d98:	30a50007 	andi	a1,a1,0x7
     d9c:	8e6800bc 	lw	t0,188(s3)
     da0:	1000086e 	b	2f5c <L800DAC14+0x18>
     da4:	00000000 	nop

00000da8 <L800D8A78>:
     da8:	8fab0394 	lw	t3,916(sp)
     dac:	27b90328 	addiu	t9,sp,808
     db0:	8d6e0000 	lw	t6,0(t3)
     db4:	af2e0000 	sw	t6,0(t9)
     db8:	8d6f0004 	lw	t7,4(t3)
     dbc:	af2f0004 	sw	t7,4(t9)
     dc0:	8e6800bc 	lw	t0,188(s3)
     dc4:	51000076 	beqzl	t0,fa0 <L800D8A78+0x1f8>
     dc8:	8e6b00ac 	lw	t3,172(s3)
     dcc:	93a40329 	lbu	a0,809(sp)
     dd0:	24050001 	li	a1,1
     dd4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     dd8:	00042102 	srl	a0,a0,0x4
     ddc:	8fa4032c 	lw	a0,812(sp)
     de0:	afa2014c 	sw	v0,332(sp)
     de4:	24050002 	li	a1,2
     de8:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     dec:	00042702 	srl	a0,a0,0x1c
     df0:	8fa40328 	lw	a0,808(sp)
     df4:	afa20150 	sw	v0,336(sp)
     df8:	24050003 	li	a1,3
     dfc:	00042300 	sll	a0,a0,0xc
     e00:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     e04:	000426c2 	srl	a0,a0,0x1b
     e08:	8fa4032c 	lw	a0,812(sp)
     e0c:	afa20154 	sw	v0,340(sp)
     e10:	24050004 	li	a1,4
     e14:	00042380 	sll	a0,a0,0xe
     e18:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     e1c:	00042742 	srl	a0,a0,0x1d
     e20:	8fa40328 	lw	a0,808(sp)
     e24:	afa20158 	sw	v0,344(sp)
     e28:	24050001 	li	a1,1
     e2c:	00042440 	sll	a0,a0,0x11
     e30:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     e34:	00042742 	srl	a0,a0,0x1d
     e38:	8fa4032c 	lw	a0,812(sp)
     e3c:	afa2015c 	sw	v0,348(sp)
     e40:	24050002 	li	a1,2
     e44:	00042440 	sll	a0,a0,0x11
     e48:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     e4c:	00042742 	srl	a0,a0,0x1d
     e50:	8fa40328 	lw	a0,808(sp)
     e54:	afa20160 	sw	v0,352(sp)
     e58:	24050003 	li	a1,3
     e5c:	00042500 	sll	a0,a0,0x14
     e60:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     e64:	00042742 	srl	a0,a0,0x1d
     e68:	8fa4032c 	lw	a0,812(sp)
     e6c:	afa20164 	sw	v0,356(sp)
     e70:	24050004 	li	a1,4
     e74:	00042500 	sll	a0,a0,0x14
     e78:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     e7c:	00042742 	srl	a0,a0,0x1d
     e80:	8fa40328 	lw	a0,808(sp)
     e84:	0040a025 	move	s4,v0
     e88:	24050001 	li	a1,1
     e8c:	000425c0 	sll	a0,a0,0x17
     e90:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     e94:	00042702 	srl	a0,a0,0x1c
     e98:	93a4032c 	lbu	a0,812(sp)
     e9c:	afa2016c 	sw	v0,364(sp)
     ea0:	24050002 	li	a1,2
     ea4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     ea8:	3084000f 	andi	a0,a0,0xf
     eac:	8fa40328 	lw	a0,808(sp)
     eb0:	00409025 	move	s2,v0
     eb4:	24050003 	li	a1,3
     eb8:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     ebc:	3084001f 	andi	a0,a0,0x1f
     ec0:	8fa4032c 	lw	a0,812(sp)
     ec4:	24050004 	li	a1,4
     ec8:	afa20174 	sw	v0,372(sp)
     ecc:	000425c0 	sll	a0,a0,0x17
     ed0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     ed4:	00042742 	srl	a0,a0,0x1d
     ed8:	93a4032d 	lbu	a0,813(sp)
     edc:	24050001 	li	a1,1
     ee0:	afa20178 	sw	v0,376(sp)
     ee4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     ee8:	00042142 	srl	a0,a0,0x5
     eec:	8fa4032c 	lw	a0,812(sp)
     ef0:	0040a825 	move	s5,v0
     ef4:	24050002 	li	a1,2
     ef8:	00042680 	sll	a0,a0,0x1a
     efc:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     f00:	00042742 	srl	a0,a0,0x1d
     f04:	8fa4032c 	lw	a0,812(sp)
     f08:	00408825 	move	s1,v0
     f0c:	24050003 	li	a1,3
     f10:	000422c0 	sll	a0,a0,0xb
     f14:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     f18:	00042742 	srl	a0,a0,0x1d
     f1c:	8fa4032c 	lw	a0,812(sp)
     f20:	00408025 	move	s0,v0
     f24:	24050004 	li	a1,4
     f28:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     f2c:	30840007 	andi	a0,a0,0x7
     f30:	8fa30174 	lw	v1,372(sp)
     f34:	8fa80178 	lw	t0,376(sp)
     f38:	8fac0158 	lw	t4,344(sp)
     f3c:	8faa015c 	lw	t2,348(sp)
     f40:	8fad0160 	lw	t5,352(sp)
     f44:	8fb80164 	lw	t8,356(sp)
     f48:	8fb9016c 	lw	t9,364(sp)
     f4c:	3c040000 	lui	a0,0x0
     f50:	24840000 	addiu	a0,a0,0
     f54:	8fa5014c 	lw	a1,332(sp)
     f58:	8fa60150 	lw	a2,336(sp)
     f5c:	8fa70154 	lw	a3,340(sp)
     f60:	afb40020 	sw	s4,32(sp)
     f64:	afb20028 	sw	s2,40(sp)
     f68:	afb50034 	sw	s5,52(sp)
     f6c:	afb10038 	sw	s1,56(sp)
     f70:	afb0003c 	sw	s0,60(sp)
     f74:	afa20040 	sw	v0,64(sp)
     f78:	afa3002c 	sw	v1,44(sp)
     f7c:	afa80030 	sw	t0,48(sp)
     f80:	afac0010 	sw	t4,16(sp)
     f84:	afaa0014 	sw	t2,20(sp)
     f88:	afad0018 	sw	t5,24(sp)
     f8c:	afb8001c 	sw	t8,28(sp)
     f90:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     f94:	afb90024 	sw	t9,36(sp)
     f98:	8e6800bc 	lw	t0,188(s3)
     f9c:	8e6b00ac 	lw	t3,172(s3)
     fa0:	116007ee 	beqz	t3,2f5c <L800DAC14+0x18>
     fa4:	00000000 	nop
     fa8:	11000003 	beqz	t0,fb8 <L800D8A78+0x210>
     fac:	3c040000 	lui	a0,0x0
     fb0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
     fb4:	24840000 	addiu	a0,a0,0
     fb8:	8e6f00b8 	lw	t7,184(s3)
     fbc:	8e6800bc 	lw	t0,188(s3)
     fc0:	25ee0001 	addiu	t6,t7,1
     fc4:	ae6e00b8 	sw	t6,184(s3)
     fc8:	100007e4 	b	2f5c <L800DAC14+0x18>
     fcc:	00000000 	nop

00000fd0 <L800D8CA0>:
     fd0:	93d10003 	lbu	s1,3(s8)
     fd4:	93cc0002 	lbu	t4,2(s8)
     fd8:	8fa40374 	lw	a0,884(sp)
     fdc:	26310001 	addiu	s1,s1,1
     fe0:	000c5023 	negu	t2,t4
     fe4:	01518023 	subu	s0,t2,s1
     fe8:	3c070000 	lui	a3,0x0
     fec:	26100020 	addiu	s0,s0,32
     ff0:	24e70000 	addiu	a3,a3,0
     ff4:	00002825 	move	a1,zero
     ff8:	8e6800bc 	lw	t0,188(s3)
     ffc:	00809025 	move	s2,a0
    1000:	8ced0004 	lw	t5,4(a3)
    1004:	160d0018 	bne	s0,t5,1068 <L800D8CA0+0x98>
    1008:	0005c080 	sll	t8,a1,0x2
    100c:	0305c023 	subu	t8,t8,a1
    1010:	0018c080 	sll	t8,t8,0x2
    1014:	0305c023 	subu	t8,t8,a1
    1018:	3c190000 	lui	t9,0x0
    101c:	27390000 	addiu	t9,t9,0
    1020:	0018c080 	sll	t8,t8,0x2
    1024:	03191821 	addu	v1,t8,t9
    1028:	00001025 	move	v0,zero
    102c:	8c6b0010 	lw	t3,16(v1)
    1030:	548b000b 	bnel	a0,t3,1060 <L800D8CA0+0x90>
    1034:	24420008 	addiu	v0,v0,8
    1038:	11000016 	beqz	t0,1094 <L800D8CA0+0xc4>
    103c:	3c040000 	lui	a0,0x0
    1040:	00e27821 	addu	t7,a3,v0
    1044:	8de6000c 	lw	a2,12(t7)
    1048:	24840000 	addiu	a0,a0,0
    104c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1050:	8ce50000 	lw	a1,0(a3)
    1054:	10000010 	b	1098 <L800D8CA0+0xc8>
    1058:	240c0001 	li	t4,1
    105c:	24420008 	addiu	v0,v0,8
    1060:	1456fff2 	bne	v0,s6,102c <L800D8CA0+0x5c>
    1064:	24630008 	addiu	v1,v1,8
    1068:	24a50001 	addiu	a1,a1,1
    106c:	2ca1000c 	sltiu	at,a1,12
    1070:	1420ffe3 	bnez	at,1000 <L800D8CA0+0x30>
    1074:	24e7002c 	addiu	a3,a3,44
    1078:	11000006 	beqz	t0,1094 <L800D8CA0+0xc4>
    107c:	3c040000 	lui	a0,0x0
    1080:	24840000 	addiu	a0,a0,0
    1084:	02002825 	move	a1,s0
    1088:	02203025 	move	a2,s1
    108c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1090:	02403825 	move	a3,s2
    1094:	240c0001 	li	t4,1
    1098:	022c5004 	sllv	t2,t4,s1
    109c:	240d0001 	li	t5,1
    10a0:	8e6e00cc 	lw	t6,204(s3)
    10a4:	01aac023 	subu	t8,t5,t2
    10a8:	0218c804 	sllv	t9,t8,s0
    10ac:	272bffff 	addiu	t3,t9,-1
    10b0:	8e6a00ac 	lw	t2,172(s3)
    10b4:	01cb7824 	and	t7,t6,t3
    10b8:	ae6f00cc 	sw	t7,204(s3)
    10bc:	01f26825 	or	t5,t7,s2
    10c0:	11400009 	beqz	t2,10e8 <L800D8CA0+0x118>
    10c4:	ae6d00cc 	sw	t5,204(s3)
    10c8:	8e7800bc 	lw	t8,188(s3)
    10cc:	13000003 	beqz	t8,10dc <L800D8CA0+0x10c>
    10d0:	3c040000 	lui	a0,0x0
    10d4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    10d8:	24840000 	addiu	a0,a0,0
    10dc:	8e7900b8 	lw	t9,184(s3)
    10e0:	272e0001 	addiu	t6,t9,1
    10e4:	ae6e00b8 	sw	t6,184(s3)
    10e8:	1000079c 	b	2f5c <L800DAC14+0x18>
    10ec:	8e6800bc 	lw	t0,188(s3)

000010f0 <L800D8DC0>:
    10f0:	93d10003 	lbu	s1,3(s8)
    10f4:	93cb0002 	lbu	t3,2(s8)
    10f8:	8fa40374 	lw	a0,884(sp)
    10fc:	26310001 	addiu	s1,s1,1
    1100:	000b7823 	negu	t7,t3
    1104:	01f18023 	subu	s0,t7,s1
    1108:	26100020 	addiu	s0,s0,32
    110c:	24010003 	li	at,3
    1110:	8e6800bc 	lw	t0,188(s3)
    1114:	1601000f 	bne	s0,at,1154 <L800D8DC0+0x64>
    1118:	00809025 	move	s2,a0
    111c:	11000003 	beqz	t0,112c <L800D8DC0+0x3c>
    1120:	3c040000 	lui	a0,0x0
    1124:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1128:	24840000 	addiu	a0,a0,0
    112c:	02602025 	move	a0,s3
    1130:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1134:	02402825 	move	a1,s2
    1138:	8e6c00bc 	lw	t4,188(s3)
    113c:	1180002d 	beqz	t4,11f4 <L800D8DC0+0x104>
    1140:	3c040000 	lui	a0,0x0
    1144:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1148:	24840000 	addiu	a0,a0,0
    114c:	1000002a 	b	11f8 <L800D8DC0+0x108>
    1150:	240f0001 	li	t7,1
    1154:	3c070000 	lui	a3,0x0
    1158:	24e70000 	addiu	a3,a3,0
    115c:	00002825 	move	a1,zero
    1160:	8ced0004 	lw	t5,4(a3)
    1164:	160d0018 	bne	s0,t5,11c8 <L800D8DC0+0xd8>
    1168:	00055080 	sll	t2,a1,0x2
    116c:	01455023 	subu	t2,t2,a1
    1170:	000a5080 	sll	t2,t2,0x2
    1174:	01455023 	subu	t2,t2,a1
    1178:	3c180000 	lui	t8,0x0
    117c:	27180000 	addiu	t8,t8,0
    1180:	000a5080 	sll	t2,t2,0x2
    1184:	01581821 	addu	v1,t2,t8
    1188:	00001025 	move	v0,zero
    118c:	8c790010 	lw	t9,16(v1)
    1190:	5499000b 	bnel	a0,t9,11c0 <L800D8DC0+0xd0>
    1194:	24420008 	addiu	v0,v0,8
    1198:	11000016 	beqz	t0,11f4 <L800D8DC0+0x104>
    119c:	3c040000 	lui	a0,0x0
    11a0:	00e27021 	addu	t6,a3,v0
    11a4:	8dc6000c 	lw	a2,12(t6)
    11a8:	24840000 	addiu	a0,a0,0
    11ac:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    11b0:	8ce50000 	lw	a1,0(a3)
    11b4:	10000010 	b	11f8 <L800D8DC0+0x108>
    11b8:	240f0001 	li	t7,1
    11bc:	24420008 	addiu	v0,v0,8
    11c0:	1457fff2 	bne	v0,s7,118c <L800D8DC0+0x9c>
    11c4:	24630008 	addiu	v1,v1,8
    11c8:	24a50001 	addiu	a1,a1,1
    11cc:	2ca10002 	sltiu	at,a1,2
    11d0:	1420ffe3 	bnez	at,1160 <L800D8DC0+0x70>
    11d4:	24e7002c 	addiu	a3,a3,44
    11d8:	11000006 	beqz	t0,11f4 <L800D8DC0+0x104>
    11dc:	3c040000 	lui	a0,0x0
    11e0:	24840000 	addiu	a0,a0,0
    11e4:	02002825 	move	a1,s0
    11e8:	02203025 	move	a2,s1
    11ec:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    11f0:	02403825 	move	a3,s2
    11f4:	240f0001 	li	t7,1
    11f8:	022f6004 	sllv	t4,t7,s1
    11fc:	240d0001 	li	t5,1
    1200:	8e6b00d0 	lw	t3,208(s3)
    1204:	01ac5023 	subu	t2,t5,t4
    1208:	020ac004 	sllv	t8,t2,s0
    120c:	2719ffff 	addiu	t9,t8,-1
    1210:	8e6c00ac 	lw	t4,172(s3)
    1214:	01797024 	and	t6,t3,t9
    1218:	ae6e00d0 	sw	t6,208(s3)
    121c:	01d26825 	or	t5,t6,s2
    1220:	11800009 	beqz	t4,1248 <L800D8DC0+0x158>
    1224:	ae6d00d0 	sw	t5,208(s3)
    1228:	8e6a00bc 	lw	t2,188(s3)
    122c:	11400003 	beqz	t2,123c <L800D8DC0+0x14c>
    1230:	3c040000 	lui	a0,0x0
    1234:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1238:	24840000 	addiu	a0,a0,0
    123c:	8e7800b8 	lw	t8,184(s3)
    1240:	270b0001 	addiu	t3,t8,1
    1244:	ae6b00b8 	sw	t3,184(s3)
    1248:	10000744 	b	2f5c <L800DAC14+0x18>
    124c:	8e6800bc 	lw	t0,188(s3)

00001250 <L800D8F20>:
    1250:	8e7900bc 	lw	t9,188(s3)
    1254:	5320000a 	beqzl	t9,1280 <L800D8F20+0x30>
    1258:	8fce0000 	lw	t6,0(s8)
    125c:	8fc50000 	lw	a1,0(s8)
    1260:	3c0100ff 	lui	at,0xff
    1264:	3421ffff 	ori	at,at,0xffff
    1268:	3c040000 	lui	a0,0x0
    126c:	24840000 	addiu	a0,a0,0
    1270:	8fa60374 	lw	a2,884(sp)
    1274:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1278:	00a12824 	and	a1,a1,at
    127c:	8fce0000 	lw	t6,0(s8)
    1280:	8e6c00ac 	lw	t4,172(s3)
    1284:	31cf0fff 	andi	t7,t6,0xfff
    1288:	ae6f00cc 	sw	t7,204(s3)
    128c:	8fad0374 	lw	t5,884(sp)
    1290:	11800009 	beqz	t4,12b8 <L800D8F20+0x68>
    1294:	ae6d00d0 	sw	t5,208(s3)
    1298:	8e6a00bc 	lw	t2,188(s3)
    129c:	11400003 	beqz	t2,12ac <L800D8F20+0x5c>
    12a0:	3c040000 	lui	a0,0x0
    12a4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    12a8:	24840000 	addiu	a0,a0,0
    12ac:	8e7800b8 	lw	t8,184(s3)
    12b0:	270b0001 	addiu	t3,t8,1
    12b4:	ae6b00b8 	sw	t3,184(s3)
    12b8:	10000728 	b	2f5c <L800DAC14+0x18>
    12bc:	8e6800bc 	lw	t0,188(s3)

000012c0 <L800D8F90>:
    12c0:	8fae0394 	lw	t6,916(sp)
    12c4:	27b902f8 	addiu	t9,sp,760
    12c8:	8dcd0000 	lw	t5,0(t6)
    12cc:	af2d0000 	sw	t5,0(t9)
    12d0:	8dcf0004 	lw	t7,4(t6)
    12d4:	af2f0004 	sw	t7,4(t9)
    12d8:	93ac02fc 	lbu	t4,764(sp)
    12dc:	15800003 	bnez	t4,12ec <L800D8F90+0x2c>
    12e0:	3c050000 	lui	a1,0x0
    12e4:	10000011 	b	132c <L800D8F90+0x6c>
    12e8:	24a50000 	addiu	a1,a1,0
    12ec:	93aa02fc 	lbu	t2,764(sp)
    12f0:	24010003 	li	at,3
    12f4:	15410003 	bne	t2,at,1304 <L800D8F90+0x44>
    12f8:	3c110000 	lui	s1,0x0
    12fc:	1000000a 	b	1328 <L800D8F90+0x68>
    1300:	26310000 	addiu	s1,s1,0
    1304:	93b802fc 	lbu	t8,764(sp)
    1308:	24010002 	li	at,2
    130c:	17010003 	bne	t8,at,131c <L800D8F90+0x5c>
    1310:	3c100000 	lui	s0,0x0
    1314:	10000003 	b	1324 <L800D8F90+0x64>
    1318:	26100000 	addiu	s0,s0,0
    131c:	3c100000 	lui	s0,0x0
    1320:	26100000 	addiu	s0,s0,0
    1324:	02008825 	move	s1,s0
    1328:	02202825 	move	a1,s1
    132c:	8fa202f8 	lw	v0,760(sp)
    1330:	8fb902fc 	lw	t9,764(sp)
    1334:	00021c80 	sll	v1,v0,0x12
    1338:	00024f80 	sll	t1,v0,0x1e
    133c:	00094f83 	sra	t1,t1,0x1e
    1340:	00031f83 	sra	v1,v1,0x1e
    1344:	00197480 	sll	t6,t9,0x12
    1348:	000e7f83 	sra	t7,t6,0x1e
    134c:	00695825 	or	t3,v1,t1
    1350:	00196780 	sll	t4,t9,0x1e
    1354:	000c5783 	sra	t2,t4,0x1e
    1358:	016f6825 	or	t5,t3,t7
    135c:	01aac025 	or	t8,t5,t2
    1360:	53000021 	beqzl	t8,13e8 <L800D8F90+0x128>
    1364:	8e6800bc 	lw	t0,188(s3)
    1368:	8e6800bc 	lw	t0,188(s3)
    136c:	110006fb 	beqz	t0,2f5c <L800DAC14+0x18>
    1370:	00000000 	nop
    1374:	8faa02fc 	lw	t2,764(sp)
    1378:	00027200 	sll	t6,v0,0x8
    137c:	000e5d83 	sra	t3,t6,0x16
    1380:	000b7880 	sll	t7,t3,0x2
    1384:	0002cd00 	sll	t9,v0,0x14
    1388:	00196583 	sra	t4,t9,0x16
    138c:	01e33021 	addu	a2,t7,v1
    1390:	000ac200 	sll	t8,t2,0x8
    1394:	00187583 	sra	t6,t8,0x16
    1398:	000c6880 	sll	t5,t4,0x2
    139c:	000a7c80 	sll	t7,t2,0x12
    13a0:	000fcf83 	sra	t9,t7,0x1e
    13a4:	01a93821 	addu	a3,t5,t1
    13a8:	000e5880 	sll	t3,t6,0x2
    13ac:	000a6d00 	sll	t5,t2,0x14
    13b0:	000dc583 	sra	t8,t5,0x16
    13b4:	01796021 	addu	t4,t3,t9
    13b8:	000a7f80 	sll	t7,t2,0x1e
    13bc:	000f5f83 	sra	t3,t7,0x1e
    13c0:	00187080 	sll	t6,t8,0x2
    13c4:	01cbc821 	addu	t9,t6,t3
    13c8:	3c040000 	lui	a0,0x0
    13cc:	24840000 	addiu	a0,a0,0
    13d0:	afb90014 	sw	t9,20(sp)
    13d4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    13d8:	afac0010 	sw	t4,16(sp)
    13dc:	100006df 	b	2f5c <L800DAC14+0x18>
    13e0:	8e6800bc 	lw	t0,188(s3)
    13e4:	8e6800bc 	lw	t0,188(s3)
    13e8:	110006dc 	beqz	t0,2f5c <L800DAC14+0x18>
    13ec:	00000000 	nop
    13f0:	8fac02fc 	lw	t4,764(sp)
    13f4:	8fa202f8 	lw	v0,760(sp)
    13f8:	3c040000 	lui	a0,0x0
    13fc:	000c6a00 	sll	t5,t4,0x8
    1400:	000c5500 	sll	t2,t4,0x14
    1404:	000a7d83 	sra	t7,t2,0x16
    1408:	000dc583 	sra	t8,t5,0x16
    140c:	00023200 	sll	a2,v0,0x8
    1410:	00023d00 	sll	a3,v0,0x14
    1414:	00073d83 	sra	a3,a3,0x16
    1418:	00063583 	sra	a2,a2,0x16
    141c:	afb80010 	sw	t8,16(sp)
    1420:	afaf0014 	sw	t7,20(sp)
    1424:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1428:	24840000 	addiu	a0,a0,0
    142c:	8e6800bc 	lw	t0,188(s3)
    1430:	100006ca 	b	2f5c <L800DAC14+0x18>
    1434:	00000000 	nop

00001438 <L800D9108>:
    1438:	8fab0394 	lw	t3,916(sp)
    143c:	27ae02ec 	addiu	t6,sp,748
    1440:	8d6d0000 	lw	t5,0(t3)
    1444:	adcd0000 	sw	t5,0(t6)
    1448:	8d790004 	lw	t9,4(t3)
    144c:	add90004 	sw	t9,4(t6)
    1450:	8e7800bc 	lw	t8,188(s3)
    1454:	53000010 	beqzl	t8,1498 <L800D9108+0x60>
    1458:	240f0001 	li	t7,1
    145c:	8fa202f0 	lw	v0,752(sp)
    1460:	8fa302ec 	lw	v1,748(sp)
    1464:	3c040000 	lui	a0,0x0
    1468:	00022a00 	sll	a1,v0,0x8
    146c:	00036500 	sll	t4,v1,0x14
    1470:	000c5583 	sra	t2,t4,0x16
    1474:	00023500 	sll	a2,v0,0x14
    1478:	00033a00 	sll	a3,v1,0x8
    147c:	00073d83 	sra	a3,a3,0x16
    1480:	00063583 	sra	a2,a2,0x16
    1484:	afaa0010 	sw	t2,16(sp)
    1488:	00052d83 	sra	a1,a1,0x16
    148c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1490:	24840000 	addiu	a0,a0,0
    1494:	240f0001 	li	t7,1
    1498:	ae6f00ac 	sw	t7,172(s3)
    149c:	100006af 	b	2f5c <L800DAC14+0x18>
    14a0:	8e6800bc 	lw	t0,188(s3)

000014a4 <L800D9174>:
    14a4:	8fc20000 	lw	v0,0(s8)
    14a8:	3c0100e0 	lui	at,0xe0
    14ac:	8e6800bc 	lw	t0,188(s3)
    14b0:	00411824 	and	v1,v0,at
    14b4:	3c010018 	lui	at,0x18
    14b8:	00412024 	and	a0,v0,at
    14bc:	00031d42 	srl	v1,v1,0x15
    14c0:	000424c2 	srl	a0,a0,0x13
    14c4:	306300ff 	andi	v1,v1,0xff
    14c8:	11000038 	beqz	t0,15ac <L800D9174+0x108>
    14cc:	308400ff 	andi	a0,a0,0xff
    14d0:	14600003 	bnez	v1,14e0 <L800D9174+0x3c>
    14d4:	3c150000 	lui	s5,0x0
    14d8:	10000016 	b	1534 <L800D9174+0x90>
    14dc:	26b50000 	addiu	s5,s5,0
    14e0:	24010001 	li	at,1
    14e4:	14610003 	bne	v1,at,14f4 <L800D9174+0x50>
    14e8:	3c080000 	lui	t0,0x0
    14ec:	10000010 	b	1530 <L800D9174+0x8c>
    14f0:	25080000 	addiu	t0,t0,0
    14f4:	24010002 	li	at,2
    14f8:	54610005 	bnel	v1,at,1510 <L800D9174+0x6c>
    14fc:	24010003 	li	at,3
    1500:	3c030000 	lui	v1,0x0
    1504:	10000009 	b	152c <L800D9174+0x88>
    1508:	24630000 	addiu	v1,v1,0
    150c:	24010003 	li	at,3
    1510:	14610003 	bne	v1,at,1520 <L800D9174+0x7c>
    1514:	3c120000 	lui	s2,0x0
    1518:	10000003 	b	1528 <L800D9174+0x84>
    151c:	26520000 	addiu	s2,s2,0
    1520:	3c120000 	lui	s2,0x0
    1524:	26520000 	addiu	s2,s2,0
    1528:	02401825 	move	v1,s2
    152c:	00604025 	move	t0,v1
    1530:	0100a825 	move	s5,t0
    1534:	14800003 	bnez	a0,1544 <L800D9174+0xa0>
    1538:	3c110000 	lui	s1,0x0
    153c:	1000000f 	b	157c <L800D9174+0xd8>
    1540:	26310000 	addiu	s1,s1,0
    1544:	24010001 	li	at,1
    1548:	14810003 	bne	a0,at,1558 <L800D9174+0xb4>
    154c:	3c100000 	lui	s0,0x0
    1550:	10000009 	b	1578 <L800D9174+0xd4>
    1554:	26100000 	addiu	s0,s0,0
    1558:	24010002 	li	at,2
    155c:	14810003 	bne	a0,at,156c <L800D9174+0xc8>
    1560:	3c110000 	lui	s1,0x0
    1564:	10000003 	b	1574 <L800D9174+0xd0>
    1568:	26310000 	addiu	s1,s1,0
    156c:	3c110000 	lui	s1,0x0
    1570:	26310000 	addiu	s1,s1,0
    1574:	02208025 	move	s0,s1
    1578:	02008825 	move	s1,s0
    157c:	97c70002 	lhu	a3,2(s8)
    1580:	8fae0374 	lw	t6,884(sp)
    1584:	3c040000 	lui	a0,0x0
    1588:	30e70fff 	andi	a3,a3,0xfff
    158c:	24e70001 	addiu	a3,a3,1
    1590:	24840000 	addiu	a0,a0,0
    1594:	afb40014 	sw	s4,20(sp)
    1598:	02a02825 	move	a1,s5
    159c:	02203025 	move	a2,s1
    15a0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    15a4:	afae0010 	sw	t6,16(sp)
    15a8:	8e6800bc 	lw	t0,188(s3)
    15ac:	8e6b00ac 	lw	t3,172(s3)
    15b0:	1160066a 	beqz	t3,2f5c <L800DAC14+0x18>
    15b4:	00000000 	nop
    15b8:	11000003 	beqz	t0,15c8 <L800D9174+0x124>
    15bc:	3c040000 	lui	a0,0x0
    15c0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    15c4:	24840000 	addiu	a0,a0,0
    15c8:	8e7900b8 	lw	t9,184(s3)
    15cc:	8e6800bc 	lw	t0,188(s3)
    15d0:	272d0001 	addiu	t5,t9,1
    15d4:	ae6d00b8 	sw	t5,184(s3)
    15d8:	10000660 	b	2f5c <L800DAC14+0x18>
    15dc:	00000000 	nop

000015e0 <L800D92B0>:
    15e0:	8e6800bc 	lw	t0,188(s3)
    15e4:	11000006 	beqz	t0,1600 <L800D92B0+0x20>
    15e8:	3c040000 	lui	a0,0x0
    15ec:	24840000 	addiu	a0,a0,0
    15f0:	8fa50374 	lw	a1,884(sp)
    15f4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    15f8:	02803025 	move	a2,s4
    15fc:	8e6800bc 	lw	t0,188(s3)
    1600:	8e7800ac 	lw	t8,172(s3)
    1604:	13000655 	beqz	t8,2f5c <L800DAC14+0x18>
    1608:	00000000 	nop
    160c:	11000003 	beqz	t0,161c <L800D92B0+0x3c>
    1610:	3c040000 	lui	a0,0x0
    1614:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1618:	24840000 	addiu	a0,a0,0
    161c:	8e6c00b8 	lw	t4,184(s3)
    1620:	8e6800bc 	lw	t0,188(s3)
    1624:	258a0001 	addiu	t2,t4,1
    1628:	1000064c 	b	2f5c <L800DAC14+0x18>
    162c:	ae6a00b8 	sw	t2,184(s3)

00001630 <L800D9300>:
    1630:	8fc20000 	lw	v0,0(s8)
    1634:	3c0100e0 	lui	at,0xe0
    1638:	8e6800bc 	lw	t0,188(s3)
    163c:	00411824 	and	v1,v0,at
    1640:	3c010018 	lui	at,0x18
    1644:	00412024 	and	a0,v0,at
    1648:	00031d42 	srl	v1,v1,0x15
    164c:	000424c2 	srl	a0,a0,0x13
    1650:	306300ff 	andi	v1,v1,0xff
    1654:	11000641 	beqz	t0,2f5c <L800DAC14+0x18>
    1658:	308400ff 	andi	a0,a0,0xff
    165c:	14600003 	bnez	v1,166c <L800D9300+0x3c>
    1660:	3c150000 	lui	s5,0x0
    1664:	10000016 	b	16c0 <L800D9300+0x90>
    1668:	26b50000 	addiu	s5,s5,0
    166c:	24010001 	li	at,1
    1670:	14610003 	bne	v1,at,1680 <L800D9300+0x50>
    1674:	3c080000 	lui	t0,0x0
    1678:	10000010 	b	16bc <L800D9300+0x8c>
    167c:	25080000 	addiu	t0,t0,0
    1680:	24010002 	li	at,2
    1684:	54610005 	bnel	v1,at,169c <L800D9300+0x6c>
    1688:	24010003 	li	at,3
    168c:	3c030000 	lui	v1,0x0
    1690:	10000009 	b	16b8 <L800D9300+0x88>
    1694:	24630000 	addiu	v1,v1,0
    1698:	24010003 	li	at,3
    169c:	14610003 	bne	v1,at,16ac <L800D9300+0x7c>
    16a0:	3c120000 	lui	s2,0x0
    16a4:	10000003 	b	16b4 <L800D9300+0x84>
    16a8:	26520000 	addiu	s2,s2,0
    16ac:	3c120000 	lui	s2,0x0
    16b0:	26520000 	addiu	s2,s2,0
    16b4:	02401825 	move	v1,s2
    16b8:	00604025 	move	t0,v1
    16bc:	0100a825 	move	s5,t0
    16c0:	14800003 	bnez	a0,16d0 <L800D9300+0xa0>
    16c4:	3c110000 	lui	s1,0x0
    16c8:	1000000f 	b	1708 <L800D9300+0xd8>
    16cc:	26310000 	addiu	s1,s1,0
    16d0:	24010001 	li	at,1
    16d4:	14810003 	bne	a0,at,16e4 <L800D9300+0xb4>
    16d8:	3c100000 	lui	s0,0x0
    16dc:	10000009 	b	1704 <L800D9300+0xd4>
    16e0:	26100000 	addiu	s0,s0,0
    16e4:	24010002 	li	at,2
    16e8:	14810003 	bne	a0,at,16f8 <L800D9300+0xc8>
    16ec:	3c110000 	lui	s1,0x0
    16f0:	10000003 	b	1700 <L800D9300+0xd0>
    16f4:	26310000 	addiu	s1,s1,0
    16f8:	3c110000 	lui	s1,0x0
    16fc:	26310000 	addiu	s1,s1,0
    1700:	02208025 	move	s0,s1
    1704:	02008825 	move	s1,s0
    1708:	97c70002 	lhu	a3,2(s8)
    170c:	8faf0374 	lw	t7,884(sp)
    1710:	3c040000 	lui	a0,0x0
    1714:	30e70fff 	andi	a3,a3,0xfff
    1718:	24e70001 	addiu	a3,a3,1
    171c:	24840000 	addiu	a0,a0,0
    1720:	afb40014 	sw	s4,20(sp)
    1724:	02a02825 	move	a1,s5
    1728:	02203025 	move	a2,s1
    172c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1730:	afaf0010 	sw	t7,16(sp)
    1734:	8e6800bc 	lw	t0,188(s3)
    1738:	10000608 	b	2f5c <L800DAC14+0x18>
    173c:	00000000 	nop

00001740 <L800D9410>:
    1740:	8e6800bc 	lw	t0,188(s3)
    1744:	5100000b 	beqzl	t0,1774 <L800D9410+0x34>
    1748:	8e6b00ac 	lw	t3,172(s3)
    174c:	93ce0007 	lbu	t6,7(s8)
    1750:	3c040000 	lui	a0,0x0
    1754:	93c50004 	lbu	a1,4(s8)
    1758:	93c60005 	lbu	a2,5(s8)
    175c:	93c70006 	lbu	a3,6(s8)
    1760:	24840000 	addiu	a0,a0,0
    1764:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1768:	afae0010 	sw	t6,16(sp)
    176c:	8e6800bc 	lw	t0,188(s3)
    1770:	8e6b00ac 	lw	t3,172(s3)
    1774:	116005f9 	beqz	t3,2f5c <L800DAC14+0x18>
    1778:	00000000 	nop
    177c:	11000003 	beqz	t0,178c <L800D9410+0x4c>
    1780:	3c040000 	lui	a0,0x0
    1784:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1788:	24840000 	addiu	a0,a0,0
    178c:	8e7900b8 	lw	t9,184(s3)
    1790:	8e6800bc 	lw	t0,188(s3)
    1794:	272d0001 	addiu	t5,t9,1
    1798:	100005f0 	b	2f5c <L800DAC14+0x18>
    179c:	ae6d00b8 	sw	t5,184(s3)

000017a0 <L800D9470>:
    17a0:	8e6800bc 	lw	t0,188(s3)
    17a4:	5100000b 	beqzl	t0,17d4 <L800D9470+0x34>
    17a8:	8e6c00ac 	lw	t4,172(s3)
    17ac:	93d80007 	lbu	t8,7(s8)
    17b0:	3c040000 	lui	a0,0x0
    17b4:	93c50004 	lbu	a1,4(s8)
    17b8:	93c60005 	lbu	a2,5(s8)
    17bc:	93c70006 	lbu	a3,6(s8)
    17c0:	24840000 	addiu	a0,a0,0
    17c4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    17c8:	afb80010 	sw	t8,16(sp)
    17cc:	8e6800bc 	lw	t0,188(s3)
    17d0:	8e6c00ac 	lw	t4,172(s3)
    17d4:	118005e1 	beqz	t4,2f5c <L800DAC14+0x18>
    17d8:	00000000 	nop
    17dc:	11000003 	beqz	t0,17ec <L800D9470+0x4c>
    17e0:	3c040000 	lui	a0,0x0
    17e4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    17e8:	24840000 	addiu	a0,a0,0
    17ec:	8e6a00b8 	lw	t2,184(s3)
    17f0:	8e6800bc 	lw	t0,188(s3)
    17f4:	254f0001 	addiu	t7,t2,1
    17f8:	100005d8 	b	2f5c <L800DAC14+0x18>
    17fc:	ae6f00b8 	sw	t7,184(s3)

00001800 <L800D94D0>:
    1800:	8e6800bc 	lw	t0,188(s3)
    1804:	5100000b 	beqzl	t0,1834 <L800D94D0+0x34>
    1808:	8e6b00ac 	lw	t3,172(s3)
    180c:	93ce0007 	lbu	t6,7(s8)
    1810:	3c040000 	lui	a0,0x0
    1814:	93c50004 	lbu	a1,4(s8)
    1818:	93c60005 	lbu	a2,5(s8)
    181c:	93c70006 	lbu	a3,6(s8)
    1820:	24840000 	addiu	a0,a0,0
    1824:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1828:	afae0010 	sw	t6,16(sp)
    182c:	8e6800bc 	lw	t0,188(s3)
    1830:	8e6b00ac 	lw	t3,172(s3)
    1834:	116005c9 	beqz	t3,2f5c <L800DAC14+0x18>
    1838:	00000000 	nop
    183c:	11000003 	beqz	t0,184c <L800D94D0+0x4c>
    1840:	3c040000 	lui	a0,0x0
    1844:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1848:	24840000 	addiu	a0,a0,0
    184c:	8e7900b8 	lw	t9,184(s3)
    1850:	8e6800bc 	lw	t0,188(s3)
    1854:	272d0001 	addiu	t5,t9,1
    1858:	100005c0 	b	2f5c <L800DAC14+0x18>
    185c:	ae6d00b8 	sw	t5,184(s3)

00001860 <L800D9530>:
    1860:	8e6800bc 	lw	t0,188(s3)
    1864:	11000005 	beqz	t0,187c <L800D9530+0x1c>
    1868:	3c040000 	lui	a0,0x0
    186c:	24840000 	addiu	a0,a0,0
    1870:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1874:	8fc50004 	lw	a1,4(s8)
    1878:	8e6800bc 	lw	t0,188(s3)
    187c:	8e7800ac 	lw	t8,172(s3)
    1880:	130005b6 	beqz	t8,2f5c <L800DAC14+0x18>
    1884:	00000000 	nop
    1888:	11000003 	beqz	t0,1898 <L800D9530+0x38>
    188c:	3c040000 	lui	a0,0x0
    1890:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1894:	24840000 	addiu	a0,a0,0
    1898:	8e6c00b8 	lw	t4,184(s3)
    189c:	8e6800bc 	lw	t0,188(s3)
    18a0:	258a0001 	addiu	t2,t4,1
    18a4:	100005ad 	b	2f5c <L800DAC14+0x18>
    18a8:	ae6a00b8 	sw	t2,184(s3)

000018ac <L800D957C>:
    18ac:	8e6800bc 	lw	t0,188(s3)
    18b0:	11000006 	beqz	t0,18cc <L800D957C+0x20>
    18b4:	3c040000 	lui	a0,0x0
    18b8:	24840000 	addiu	a0,a0,0
    18bc:	97c50004 	lhu	a1,4(s8)
    18c0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    18c4:	97c60006 	lhu	a2,6(s8)
    18c8:	8e6800bc 	lw	t0,188(s3)
    18cc:	8e6f00ac 	lw	t7,172(s3)
    18d0:	11e005a2 	beqz	t7,2f5c <L800DAC14+0x18>
    18d4:	00000000 	nop
    18d8:	11000003 	beqz	t0,18e8 <L800D957C+0x3c>
    18dc:	3c040000 	lui	a0,0x0
    18e0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    18e4:	24840000 	addiu	a0,a0,0
    18e8:	8e6e00b8 	lw	t6,184(s3)
    18ec:	8e6800bc 	lw	t0,188(s3)
    18f0:	25cb0001 	addiu	t3,t6,1
    18f4:	10000599 	b	2f5c <L800DAC14+0x18>
    18f8:	ae6b00b8 	sw	t3,184(s3)

000018fc <L800D95CC>:
    18fc:	8e6800bc 	lw	t0,188(s3)
    1900:	11000596 	beqz	t0,2f5c <L800DAC14+0x18>
    1904:	00000000 	nop
    1908:	93d90005 	lbu	t9,5(s8)
    190c:	93c50002 	lbu	a1,2(s8)
    1910:	93c60003 	lbu	a2,3(s8)
    1914:	93c70004 	lbu	a3,4(s8)
    1918:	afb90010 	sw	t9,16(sp)
    191c:	93cd0006 	lbu	t5,6(s8)
    1920:	3c040000 	lui	a0,0x0
    1924:	24840000 	addiu	a0,a0,0
    1928:	afad0014 	sw	t5,20(sp)
    192c:	93d80007 	lbu	t8,7(s8)
    1930:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1934:	afb80018 	sw	t8,24(sp)
    1938:	10000588 	b	2f5c <L800DAC14+0x18>
    193c:	8e6800bc 	lw	t0,188(s3)

00001940 <L800D9610>:
    1940:	8e6800bc 	lw	t0,188(s3)
    1944:	11000004 	beqz	t0,1958 <L800D9610+0x18>
    1948:	3c040000 	lui	a0,0x0
    194c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1950:	24840000 	addiu	a0,a0,0
    1954:	8e6800bc 	lw	t0,188(s3)
    1958:	8e6c00ac 	lw	t4,172(s3)
    195c:	1180057f 	beqz	t4,2f5c <L800DAC14+0x18>
    1960:	00000000 	nop
    1964:	11000003 	beqz	t0,1974 <L800D9610+0x34>
    1968:	3c040000 	lui	a0,0x0
    196c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1970:	24840000 	addiu	a0,a0,0
    1974:	8e6a00b8 	lw	t2,184(s3)
    1978:	8e6800bc 	lw	t0,188(s3)
    197c:	254f0001 	addiu	t7,t2,1
    1980:	10000576 	b	2f5c <L800DAC14+0x18>
    1984:	ae6f00b8 	sw	t7,184(s3)

00001988 <L800D9658>:
    1988:	8e6e00bc 	lw	t6,188(s3)
    198c:	11c00003 	beqz	t6,199c <L800D9658+0x14>
    1990:	3c040000 	lui	a0,0x0
    1994:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1998:	24840000 	addiu	a0,a0,0
    199c:	ae6000b0 	sw	zero,176(s3)
    19a0:	1000056e 	b	2f5c <L800DAC14+0x18>
    19a4:	8e6800bc 	lw	t0,188(s3)

000019a8 <L800D9678>:
    19a8:	8e6b00bc 	lw	t3,188(s3)
    19ac:	11600003 	beqz	t3,19bc <L800D9678+0x14>
    19b0:	3c040000 	lui	a0,0x0
    19b4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    19b8:	24840000 	addiu	a0,a0,0
    19bc:	ae6000ac 	sw	zero,172(s3)
    19c0:	10000566 	b	2f5c <L800DAC14+0x18>
    19c4:	8e6800bc 	lw	t0,188(s3)

000019c8 <L800D9698>:
    19c8:	8e7900bc 	lw	t9,188(s3)
    19cc:	13200003 	beqz	t9,19dc <L800D9698+0x14>
    19d0:	3c040000 	lui	a0,0x0
    19d4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    19d8:	24840000 	addiu	a0,a0,0
    19dc:	ae6000b4 	sw	zero,180(s3)
    19e0:	1000055e 	b	2f5c <L800DAC14+0x18>
    19e4:	8e6800bc 	lw	t0,188(s3)
    19e8:	93c50001 	lbu	a1,1(s8)
    19ec:	8e6800bc 	lw	t0,188(s3)
    19f0:	2ca10009 	sltiu	at,a1,9
    19f4:	1020006a 	beqz	at,1ba0 <L800D9844+0x2c>
    19f8:	00056880 	sll	t5,a1,0x2
    19fc:	3c010000 	lui	at,0x0
    1a00:	002d0821 	addu	at,at,t5
    1a04:	8c2d0000 	lw	t5,0(at)
    1a08:	01a00008 	jr	t5
    1a0c:	00000000 	nop

00001a10 <L800D96E0>:
    1a10:	8fc50004 	lw	a1,4(s8)
    1a14:	14a00007 	bnez	a1,1a34 <L800D96E0+0x24>
    1a18:	00000000 	nop
    1a1c:	1100054f 	beqz	t0,2f5c <L800DAC14+0x18>
    1a20:	3c040000 	lui	a0,0x0
    1a24:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1a28:	24840000 	addiu	a0,a0,0
    1a2c:	1000054b 	b	2f5c <L800DAC14+0x18>
    1a30:	8e6800bc 	lw	t0,188(s3)
    1a34:	11000549 	beqz	t0,2f5c <L800DAC14+0x18>
    1a38:	3c040000 	lui	a0,0x0
    1a3c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1a40:	24840000 	addiu	a0,a0,0
    1a44:	10000545 	b	2f5c <L800DAC14+0x18>
    1a48:	8e6800bc 	lw	t0,188(s3)

00001a4c <L800D971C>:
    1a4c:	11000543 	beqz	t0,2f5c <L800DAC14+0x18>
    1a50:	3c040000 	lui	a0,0x0
    1a54:	24840000 	addiu	a0,a0,0
    1a58:	8fc50004 	lw	a1,4(s8)
    1a5c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1a60:	97c60002 	lhu	a2,2(s8)
    1a64:	1000053d 	b	2f5c <L800DAC14+0x18>
    1a68:	8e6800bc 	lw	t0,188(s3)

00001a6c <L800D973C>:
    1a6c:	1100053b 	beqz	t0,2f5c <L800DAC14+0x18>
    1a70:	3c040000 	lui	a0,0x0
    1a74:	24840000 	addiu	a0,a0,0
    1a78:	8fc50004 	lw	a1,4(s8)
    1a7c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1a80:	97c60002 	lhu	a2,2(s8)
    1a84:	10000535 	b	2f5c <L800DAC14+0x18>
    1a88:	8e6800bc 	lw	t0,188(s3)

00001a8c <L800D975C>:
    1a8c:	11000533 	beqz	t0,2f5c <L800DAC14+0x18>
    1a90:	3c040000 	lui	a0,0x0
    1a94:	24840000 	addiu	a0,a0,0
    1a98:	8fc50004 	lw	a1,4(s8)
    1a9c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1aa0:	97c60002 	lhu	a2,2(s8)
    1aa4:	1000052d 	b	2f5c <L800DAC14+0x18>
    1aa8:	8e6800bc 	lw	t0,188(s3)

00001aac <L800D977C>:
    1aac:	1100052b 	beqz	t0,2f5c <L800DAC14+0x18>
    1ab0:	00000000 	nop
    1ab4:	97d80002 	lhu	t8,2(s8)
    1ab8:	3c040000 	lui	a0,0x0
    1abc:	8fc60004 	lw	a2,4(s8)
    1ac0:	24840000 	addiu	a0,a0,0
    1ac4:	24050022 	li	a1,34
    1ac8:	24070022 	li	a3,34
    1acc:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1ad0:	afb80010 	sw	t8,16(sp)
    1ad4:	10000521 	b	2f5c <L800DAC14+0x18>
    1ad8:	8e6800bc 	lw	t0,188(s3)

00001adc <L800D97AC>:
    1adc:	1100051f 	beqz	t0,2f5c <L800DAC14+0x18>
    1ae0:	3c040000 	lui	a0,0x0
    1ae4:	24840000 	addiu	a0,a0,0
    1ae8:	8fc50004 	lw	a1,4(s8)
    1aec:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1af0:	97c60002 	lhu	a2,2(s8)
    1af4:	10000519 	b	2f5c <L800DAC14+0x18>
    1af8:	8e6800bc 	lw	t0,188(s3)

00001afc <L800D97CC>:
    1afc:	11000517 	beqz	t0,2f5c <L800DAC14+0x18>
    1b00:	00000000 	nop
    1b04:	c7c40004 	lwc1	$f4,4(s8)
    1b08:	97cc0002 	lhu	t4,2(s8)
    1b0c:	3c040000 	lui	a0,0x0
    1b10:	460021a1 	cvt.d.s	$f6,$f4
    1b14:	24840000 	addiu	a0,a0,0
    1b18:	44073000 	mfc1	a3,$f6
    1b1c:	44063800 	mfc1	a2,$f7
    1b20:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1b24:	afac0010 	sw	t4,16(sp)
    1b28:	1000050c 	b	2f5c <L800DAC14+0x18>
    1b2c:	8e6800bc 	lw	t0,188(s3)

00001b30 <L800D9800>:
    1b30:	97c20002 	lhu	v0,2(s8)
    1b34:	14400007 	bnez	v0,1b54 <L800D9800+0x24>
    1b38:	00000000 	nop
    1b3c:	1100000a 	beqz	t0,1b68 <L800D9800+0x38>
    1b40:	3c040000 	lui	a0,0x0
    1b44:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1b48:	24840000 	addiu	a0,a0,0
    1b4c:	10000006 	b	1b68 <L800D9800+0x38>
    1b50:	97c20002 	lhu	v0,2(s8)
    1b54:	11000004 	beqz	t0,1b68 <L800D9800+0x38>
    1b58:	3c040000 	lui	a0,0x0
    1b5c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1b60:	24840000 	addiu	a0,a0,0
    1b64:	97c20002 	lhu	v0,2(s8)
    1b68:	ae6200bc 	sw	v0,188(s3)
    1b6c:	100004fb 	b	2f5c <L800DAC14+0x18>
    1b70:	00404025 	move	t0,v0

00001b74 <L800D9844>:
    1b74:	11000003 	beqz	t0,1b84 <L800D9844+0x10>
    1b78:	3c040000 	lui	a0,0x0
    1b7c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1b80:	24840000 	addiu	a0,a0,0
    1b84:	8fd90004 	lw	t9,4(s8)
    1b88:	02602025 	move	a0,s3
    1b8c:	97c50002 	lhu	a1,2(s8)
    1b90:	0320f809 	jalr	t9
    1b94:	00000000 	nop
    1b98:	100004f0 	b	2f5c <L800DAC14+0x18>
    1b9c:	8e6800bc 	lw	t0,188(s3)
    1ba0:	110004ee 	beqz	t0,2f5c <L800DAC14+0x18>
    1ba4:	3c040000 	lui	a0,0x0
    1ba8:	24840000 	addiu	a0,a0,0
    1bac:	8fc60004 	lw	a2,4(s8)
    1bb0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1bb4:	97c70002 	lhu	a3,2(s8)
    1bb8:	100004e8 	b	2f5c <L800DAC14+0x18>
    1bbc:	8e6800bc 	lw	t0,188(s3)

00001bc0 <L800D9890>:
    1bc0:	8e7100c0 	lw	s1,192(s3)
    1bc4:	24010001 	li	at,1
    1bc8:	12210007 	beq	s1,at,1be8 <L800D9890+0x28>
    1bcc:	24010002 	li	at,2
    1bd0:	12210005 	beq	s1,at,1be8 <L800D9890+0x28>
    1bd4:	24010003 	li	at,3
    1bd8:	52210388 	beql	s1,at,29fc <L800DA4E8+0x1e4>
    1bdc:	286100dc 	slti	at,v1,220
    1be0:	100004de 	b	2f5c <L800DAC14+0x18>
    1be4:	8e6800bc 	lw	t0,188(s3)
    1be8:	28610009 	slti	at,v1,9
    1bec:	1420000a 	bnez	at,1c18 <L800D9890+0x58>
    1bf0:	00601025 	move	v0,v1
    1bf4:	244aff29 	addiu	t2,v0,-215
    1bf8:	2d410006 	sltiu	at,t2,6
    1bfc:	10200376 	beqz	at,29d8 <L800DA4E8+0x1c0>
    1c00:	000a5080 	sll	t2,t2,0x2
    1c04:	3c010000 	lui	at,0x0
    1c08:	002a0821 	addu	at,at,t2
    1c0c:	8c2a0000 	lw	t2,0(at)
    1c10:	01400008 	jr	t2
    1c14:	00000000 	nop
    1c18:	244fffff 	addiu	t7,v0,-1
    1c1c:	2de10008 	sltiu	at,t7,8
    1c20:	1020036d 	beqz	at,29d8 <L800DA4E8+0x1c0>
    1c24:	000f7880 	sll	t7,t7,0x2
    1c28:	3c010000 	lui	at,0x0
    1c2c:	002f0821 	addu	at,at,t7
    1c30:	8c2f0000 	lw	t7,0(at)
    1c34:	01e00008 	jr	t7
    1c38:	00000000 	nop

00001c3c <L800D990C>:
    1c3c:	8fab0394 	lw	t3,916(sp)
    1c40:	27ae02d4 	addiu	t6,sp,724
    1c44:	00008025 	move	s0,zero
    1c48:	8d780000 	lw	t8,0(t3)
    1c4c:	add80000 	sw	t8,0(t6)
    1c50:	8d6d0004 	lw	t5,4(t3)
    1c54:	adcd0004 	sw	t5,4(t6)
    1c58:	8e6800bc 	lw	t0,188(s3)
    1c5c:	11000006 	beqz	t0,1c78 <L800D990C+0x3c>
    1c60:	3c040000 	lui	a0,0x0
    1c64:	24840000 	addiu	a0,a0,0
    1c68:	8fa502d8 	lw	a1,728(sp)
    1c6c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1c70:	02803025 	move	a2,s4
    1c74:	8e6800bc 	lw	t0,188(s3)
    1c78:	93b202d7 	lbu	s2,727(sp)
    1c7c:	3a520001 	xori	s2,s2,0x1
    1c80:	11000012 	beqz	t0,1ccc <L800D990C+0x90>
    1c84:	00106080 	sll	t4,s0,0x2
    1c88:	01906023 	subu	t4,t4,s0
    1c8c:	3c190000 	lui	t9,0x0
    1c90:	27390000 	addiu	t9,t9,0
    1c94:	000c6080 	sll	t4,t4,0x2
    1c98:	01991021 	addu	v0,t4,t9
    1c9c:	8c4a0000 	lw	t2,0(v0)
    1ca0:	01527824 	and	t7,t2,s2
    1ca4:	51e00004 	beqzl	t7,1cb8 <L800D990C+0x7c>
    1ca8:	8c510008 	lw	s1,8(v0)
    1cac:	10000002 	b	1cb8 <L800D990C+0x7c>
    1cb0:	8c510004 	lw	s1,4(v0)
    1cb4:	8c510008 	lw	s1,8(v0)
    1cb8:	3c040000 	lui	a0,0x0
    1cbc:	24840000 	addiu	a0,a0,0
    1cc0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1cc4:	02202825 	move	a1,s1
    1cc8:	8e6800bc 	lw	t0,188(s3)
    1ccc:	26100001 	addiu	s0,s0,1
    1cd0:	24010003 	li	at,3
    1cd4:	1601ffea 	bne	s0,at,1c80 <L800D990C+0x44>
    1cd8:	00000000 	nop
    1cdc:	11000005 	beqz	t0,1cf4 <L800D990C+0xb8>
    1ce0:	3c040000 	lui	a0,0x0
    1ce4:	24840000 	addiu	a0,a0,0
    1ce8:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1cec:	8fa502d8 	lw	a1,728(sp)
    1cf0:	8e6800bc 	lw	t0,188(s3)
    1cf4:	29010002 	slti	at,t0,2
    1cf8:	14200498 	bnez	at,2f5c <L800DAC14+0x18>
    1cfc:	27a40290 	addiu	a0,sp,656
    1d00:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1d04:	02802825 	move	a1,s4
    1d08:	8e6800bc 	lw	t0,188(s3)
    1d0c:	11000004 	beqz	t0,1d20 <L800D990C+0xe4>
    1d10:	3c040000 	lui	a0,0x0
    1d14:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1d18:	24840000 	addiu	a0,a0,0
    1d1c:	8e6800bc 	lw	t0,188(s3)
    1d20:	1100048e 	beqz	t0,2f5c <L800DAC14+0x18>
    1d24:	00000000 	nop
    1d28:	968e0028 	lhu	t6,40(s4)
    1d2c:	96850000 	lhu	a1,0(s4)
    1d30:	96860020 	lhu	a2,32(s4)
    1d34:	96870008 	lhu	a3,8(s4)
    1d38:	afae0010 	sw	t6,16(sp)
    1d3c:	968b0010 	lhu	t3,16(s4)
    1d40:	c7a80290 	lwc1	$f8,656(sp)
    1d44:	c7b002a0 	lwc1	$f16,672(sp)
    1d48:	afab0014 	sw	t3,20(sp)
    1d4c:	968d0030 	lhu	t5,48(s4)
    1d50:	460042a1 	cvt.d.s	$f10,$f8
    1d54:	c7a802c0 	lwc1	$f8,704(sp)
    1d58:	afad0018 	sw	t5,24(sp)
    1d5c:	96980018 	lhu	t8,24(s4)
    1d60:	c7a402b0 	lwc1	$f4,688(sp)
    1d64:	460084a1 	cvt.d.s	$f18,$f16
    1d68:	afb8001c 	sw	t8,28(sp)
    1d6c:	968c0038 	lhu	t4,56(s4)
    1d70:	f7aa0028 	sdc1	$f10,40(sp)
    1d74:	460042a1 	cvt.d.s	$f10,$f8
    1d78:	460021a1 	cvt.d.s	$f6,$f4
    1d7c:	f7aa0040 	sdc1	$f10,64(sp)
    1d80:	f7a60038 	sdc1	$f6,56(sp)
    1d84:	f7b20030 	sdc1	$f18,48(sp)
    1d88:	afac0020 	sw	t4,32(sp)
    1d8c:	96990002 	lhu	t9,2(s4)
    1d90:	c7b00294 	lwc1	$f16,660(sp)
    1d94:	c7a402a4 	lwc1	$f4,676(sp)
    1d98:	afb90048 	sw	t9,72(sp)
    1d9c:	968a0022 	lhu	t2,34(s4)
    1da0:	460084a1 	cvt.d.s	$f18,$f16
    1da4:	c7b002c4 	lwc1	$f16,708(sp)
    1da8:	afaa004c 	sw	t2,76(sp)
    1dac:	968f000a 	lhu	t7,10(s4)
    1db0:	c7a802b4 	lwc1	$f8,692(sp)
    1db4:	460021a1 	cvt.d.s	$f6,$f4
    1db8:	afaf0050 	sw	t7,80(sp)
    1dbc:	968e002a 	lhu	t6,42(s4)
    1dc0:	460042a1 	cvt.d.s	$f10,$f8
    1dc4:	c7a40298 	lwc1	$f4,664(sp)
    1dc8:	afae0054 	sw	t6,84(sp)
    1dcc:	968b0012 	lhu	t3,18(s4)
    1dd0:	c7a802a8 	lwc1	$f8,680(sp)
    1dd4:	3c040000 	lui	a0,0x0
    1dd8:	afab0058 	sw	t3,88(sp)
    1ddc:	968d0032 	lhu	t5,50(s4)
    1de0:	24840000 	addiu	a0,a0,0
    1de4:	afad005c 	sw	t5,92(sp)
    1de8:	9698001a 	lhu	t8,26(s4)
    1dec:	afb80060 	sw	t8,96(sp)
    1df0:	968c003a 	lhu	t4,58(s4)
    1df4:	f7b20068 	sdc1	$f18,104(sp)
    1df8:	460084a1 	cvt.d.s	$f18,$f16
    1dfc:	f7aa0078 	sdc1	$f10,120(sp)
    1e00:	f7b20080 	sdc1	$f18,128(sp)
    1e04:	f7a60070 	sdc1	$f6,112(sp)
    1e08:	afac0064 	sw	t4,100(sp)
    1e0c:	96990004 	lhu	t9,4(s4)
    1e10:	460021a1 	cvt.d.s	$f6,$f4
    1e14:	c7a402c8 	lwc1	$f4,712(sp)
    1e18:	afb90088 	sw	t9,136(sp)
    1e1c:	968a0024 	lhu	t2,36(s4)
    1e20:	c7b002b8 	lwc1	$f16,696(sp)
    1e24:	460042a1 	cvt.d.s	$f10,$f8
    1e28:	afaa008c 	sw	t2,140(sp)
    1e2c:	968f000c 	lhu	t7,12(s4)
    1e30:	460084a1 	cvt.d.s	$f18,$f16
    1e34:	c7a8029c 	lwc1	$f8,668(sp)
    1e38:	afaf0090 	sw	t7,144(sp)
    1e3c:	968e002c 	lhu	t6,44(s4)
    1e40:	c7b002ac 	lwc1	$f16,684(sp)
    1e44:	afae0094 	sw	t6,148(sp)
    1e48:	968b0014 	lhu	t3,20(s4)
    1e4c:	afab0098 	sw	t3,152(sp)
    1e50:	968d0034 	lhu	t5,52(s4)
    1e54:	afad009c 	sw	t5,156(sp)
    1e58:	9698001c 	lhu	t8,28(s4)
    1e5c:	afb800a0 	sw	t8,160(sp)
    1e60:	968c003c 	lhu	t4,60(s4)
    1e64:	f7a600a8 	sdc1	$f6,168(sp)
    1e68:	460021a1 	cvt.d.s	$f6,$f4
    1e6c:	f7b200b8 	sdc1	$f18,184(sp)
    1e70:	f7a600c0 	sdc1	$f6,192(sp)
    1e74:	f7aa00b0 	sdc1	$f10,176(sp)
    1e78:	afac00a4 	sw	t4,164(sp)
    1e7c:	96990006 	lhu	t9,6(s4)
    1e80:	460042a1 	cvt.d.s	$f10,$f8
    1e84:	c7a802cc 	lwc1	$f8,716(sp)
    1e88:	afb900c8 	sw	t9,200(sp)
    1e8c:	968a0026 	lhu	t2,38(s4)
    1e90:	c7a402bc 	lwc1	$f4,700(sp)
    1e94:	460084a1 	cvt.d.s	$f18,$f16
    1e98:	afaa00cc 	sw	t2,204(sp)
    1e9c:	968f000e 	lhu	t7,14(s4)
    1ea0:	460021a1 	cvt.d.s	$f6,$f4
    1ea4:	afaf00d0 	sw	t7,208(sp)
    1ea8:	968e002e 	lhu	t6,46(s4)
    1eac:	afae00d4 	sw	t6,212(sp)
    1eb0:	968b0016 	lhu	t3,22(s4)
    1eb4:	afab00d8 	sw	t3,216(sp)
    1eb8:	968d0036 	lhu	t5,54(s4)
    1ebc:	afad00dc 	sw	t5,220(sp)
    1ec0:	9698001e 	lhu	t8,30(s4)
    1ec4:	afb800e0 	sw	t8,224(sp)
    1ec8:	968c003e 	lhu	t4,62(s4)
    1ecc:	f7aa00e8 	sdc1	$f10,232(sp)
    1ed0:	460042a1 	cvt.d.s	$f10,$f8
    1ed4:	f7a600f8 	sdc1	$f6,248(sp)
    1ed8:	f7aa0100 	sdc1	$f10,256(sp)
    1edc:	f7b200f0 	sdc1	$f18,240(sp)
    1ee0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1ee4:	afac00e4 	sw	t4,228(sp)
    1ee8:	8e6800bc 	lw	t0,188(s3)
    1eec:	1000041b 	b	2f5c <L800DAC14+0x18>
    1ef0:	00000000 	nop

00001ef4 <L800D9BC4>:
    1ef4:	8fd00000 	lw	s0,0(s8)
    1ef8:	93d90003 	lbu	t9,3(s8)
    1efc:	8e6800bc 	lw	t0,188(s3)
    1f00:	00108302 	srl	s0,s0,0xc
    1f04:	321000ff 	andi	s0,s0,0xff
    1f08:	00195043 	sra	t2,t9,0x1
    1f0c:	11000009 	beqz	t0,1f34 <L800D9BC4+0x40>
    1f10:	01508823 	subu	s1,t2,s0
    1f14:	3c040000 	lui	a0,0x0
    1f18:	8fc50004 	lw	a1,4(s8)
    1f1c:	afb10010 	sw	s1,16(sp)
    1f20:	24840000 	addiu	a0,a0,0
    1f24:	02803025 	move	a2,s4
    1f28:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1f2c:	02003825 	move	a3,s0
    1f30:	8e6800bc 	lw	t0,188(s3)
    1f34:	8e6f0090 	lw	t7,144(s3)
    1f38:	8e6b0094 	lw	t3,148(s3)
    1f3c:	29010002 	slti	at,t0,2
    1f40:	01f07021 	addu	t6,t7,s0
    1f44:	256d0001 	addiu	t5,t3,1
    1f48:	ae6e0090 	sw	t6,144(s3)
    1f4c:	14200403 	bnez	at,2f5c <L800DAC14+0x18>
    1f50:	ae6d0094 	sw	t5,148(s3)
    1f54:	02602025 	move	a0,s3
    1f58:	02802825 	move	a1,s4
    1f5c:	02003025 	move	a2,s0
    1f60:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1f64:	02203825 	move	a3,s1
    1f68:	8e6800bc 	lw	t0,188(s3)
    1f6c:	100003fb 	b	2f5c <L800DAC14+0x18>
    1f70:	00000000 	nop

00001f74 <L800D9C44>:
    1f74:	8e7800bc 	lw	t8,188(s3)
    1f78:	53000022 	beqzl	t8,2004 <L800D9C44+0x90>
    1f7c:	8e6c0090 	lw	t4,144(s3)
    1f80:	97c20002 	lhu	v0,2(s8)
    1f84:	24010010 	li	at,16
    1f88:	14410003 	bne	v0,at,1f98 <L800D9C44+0x24>
    1f8c:	3c110000 	lui	s1,0x0
    1f90:	10000015 	b	1fe8 <L800D9C44+0x74>
    1f94:	26310000 	addiu	s1,s1,0
    1f98:	24010014 	li	at,20
    1f9c:	14410003 	bne	v0,at,1fac <L800D9C44+0x38>
    1fa0:	3c100000 	lui	s0,0x0
    1fa4:	1000000f 	b	1fe4 <L800D9C44+0x70>
    1fa8:	26100000 	addiu	s0,s0,0
    1fac:	24010018 	li	at,24
    1fb0:	14410003 	bne	v0,at,1fc0 <L800D9C44+0x4c>
    1fb4:	3c110000 	lui	s1,0x0
    1fb8:	10000009 	b	1fe0 <L800D9C44+0x6c>
    1fbc:	26310000 	addiu	s1,s1,0
    1fc0:	2401001c 	li	at,28
    1fc4:	14410003 	bne	v0,at,1fd4 <L800D9C44+0x60>
    1fc8:	3c150000 	lui	s5,0x0
    1fcc:	10000003 	b	1fdc <L800D9C44+0x68>
    1fd0:	26b50000 	addiu	s5,s5,0
    1fd4:	3c150000 	lui	s5,0x0
    1fd8:	26b50000 	addiu	s5,s5,0
    1fdc:	02a08825 	move	s1,s5
    1fe0:	02208025 	move	s0,s1
    1fe4:	02008825 	move	s1,s0
    1fe8:	3c040000 	lui	a0,0x0
    1fec:	24840000 	addiu	a0,a0,0
    1ff0:	93c50001 	lbu	a1,1(s8)
    1ff4:	02203025 	move	a2,s1
    1ff8:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    1ffc:	8fc70004 	lw	a3,4(s8)
    2000:	8e6c0090 	lw	t4,144(s3)
    2004:	93d90001 	lbu	t9,1(s8)
    2008:	8e6f0094 	lw	t7,148(s3)
    200c:	8e6800bc 	lw	t0,188(s3)
    2010:	01995021 	addu	t2,t4,t9
    2014:	25ee0001 	addiu	t6,t7,1
    2018:	ae6a0090 	sw	t2,144(s3)
    201c:	100003cf 	b	2f5c <L800DAC14+0x18>
    2020:	ae6e0094 	sw	t6,148(s3)

00002024 <L800D9CF4>:
    2024:	8fad0394 	lw	t5,916(sp)
    2028:	27ab027c 	addiu	t3,sp,636
    202c:	8dac0000 	lw	t4,0(t5)
    2030:	ad6c0000 	sw	t4,0(t3)
    2034:	8db80004 	lw	t8,4(t5)
    2038:	ad780004 	sw	t8,4(t3)
    203c:	8bb90280 	lwl	t9,640(sp)
    2040:	9bb90283 	lwr	t9,643(sp)
    2044:	afb90278 	sw	t9,632(sp)
    2048:	8e6a00bc 	lw	t2,188(s3)
    204c:	51400015 	beqzl	t2,20a4 <L800D9CF4+0x80>
    2050:	8e6f0098 	lw	t7,152(s3)
    2054:	93a50279 	lbu	a1,633(sp)
    2058:	93a6027a 	lbu	a2,634(sp)
    205c:	93a7027b 	lbu	a3,635(sp)
    2060:	3c040000 	lui	a0,0x0
    2064:	24840000 	addiu	a0,a0,0
    2068:	04a10002 	bgez	a1,2074 <L800D9CF4+0x50>
    206c:	00a00821 	move	at,a1
    2070:	24a10001 	addiu	at,a1,1
    2074:	00012843 	sra	a1,at,0x1
    2078:	04c10002 	bgez	a2,2084 <L800D9CF4+0x60>
    207c:	00c00821 	move	at,a2
    2080:	24c10001 	addiu	at,a2,1
    2084:	00013043 	sra	a2,at,0x1
    2088:	04e10002 	bgez	a3,2094 <L800D9CF4+0x70>
    208c:	00e00821 	move	at,a3
    2090:	24e10001 	addiu	at,a3,1
    2094:	00013843 	sra	a3,at,0x1
    2098:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    209c:	00000000 	nop
    20a0:	8e6f0098 	lw	t7,152(s3)
    20a4:	240b0001 	li	t3,1
    20a8:	ae6b00ac 	sw	t3,172(s3)
    20ac:	25ee0001 	addiu	t6,t7,1
    20b0:	ae6e0098 	sw	t6,152(s3)
    20b4:	100003a9 	b	2f5c <L800DAC14+0x18>
    20b8:	8e6800bc 	lw	t0,188(s3)

000020bc <L800D9D8C>:
    20bc:	93c70003 	lbu	a3,3(s8)
    20c0:	8e6800bc 	lw	t0,188(s3)
    20c4:	14e00009 	bnez	a3,20ec <L800D9D8C+0x30>
    20c8:	00000000 	nop
    20cc:	1100000d 	beqz	t0,2104 <L800D9D8C+0x48>
    20d0:	3c040000 	lui	a0,0x0
    20d4:	24840000 	addiu	a0,a0,0
    20d8:	93c50001 	lbu	a1,1(s8)
    20dc:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    20e0:	93c60002 	lbu	a2,2(s8)
    20e4:	10000008 	b	2108 <L800D9D8C+0x4c>
    20e8:	8e6d00a4 	lw	t5,164(s3)
    20ec:	11000005 	beqz	t0,2104 <L800D9D8C+0x48>
    20f0:	3c040000 	lui	a0,0x0
    20f4:	24840000 	addiu	a0,a0,0
    20f8:	93c50001 	lbu	a1,1(s8)
    20fc:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2100:	93c60002 	lbu	a2,2(s8)
    2104:	8e6d00a4 	lw	t5,164(s3)
    2108:	240c0001 	li	t4,1
    210c:	ae6c00ac 	sw	t4,172(s3)
    2110:	25b80001 	addiu	t8,t5,1
    2114:	ae7800a4 	sw	t8,164(s3)
    2118:	10000390 	b	2f5c <L800DAC14+0x18>
    211c:	8e6800bc 	lw	t0,188(s3)

00002120 <L800D9DF0>:
    2120:	8faa0394 	lw	t2,916(sp)
    2124:	27b90270 	addiu	t9,sp,624
    2128:	894e0000 	lwl	t6,0(t2)
    212c:	994e0003 	lwr	t6,3(t2)
    2130:	af2e0000 	sw	t6,0(t9)
    2134:	894f0004 	lwl	t7,4(t2)
    2138:	994f0007 	lwr	t7,7(t2)
    213c:	af2f0004 	sw	t7,4(t9)
    2140:	93a50271 	lbu	a1,625(sp)
    2144:	93a60272 	lbu	a2,626(sp)
    2148:	93a70273 	lbu	a3,627(sp)
    214c:	04a10002 	bgez	a1,2158 <L800D9DF0+0x38>
    2150:	00a00821 	move	at,a1
    2154:	24a10001 	addiu	at,a1,1
    2158:	00012843 	sra	a1,at,0x1
    215c:	04c10002 	bgez	a2,2168 <L800D9DF0+0x48>
    2160:	00c00821 	move	at,a2
    2164:	24c10001 	addiu	at,a2,1
    2168:	00013043 	sra	a2,at,0x1
    216c:	93a20275 	lbu	v0,629(sp)
    2170:	04e10002 	bgez	a3,217c <L800D9DF0+0x5c>
    2174:	00e00821 	move	at,a3
    2178:	24e10001 	addiu	at,a3,1
    217c:	00013843 	sra	a3,at,0x1
    2180:	93a30276 	lbu	v1,630(sp)
    2184:	04410002 	bgez	v0,2190 <L800D9DF0+0x70>
    2188:	00400821 	move	at,v0
    218c:	24410001 	addiu	at,v0,1
    2190:	00011043 	sra	v0,at,0x1
    2194:	04610002 	bgez	v1,21a0 <L800D9DF0+0x80>
    2198:	00600821 	move	at,v1
    219c:	24610001 	addiu	at,v1,1
    21a0:	00011843 	sra	v1,at,0x1
    21a4:	93a80277 	lbu	t0,631(sp)
    21a8:	8e6b00bc 	lw	t3,188(s3)
    21ac:	05010002 	bgez	t0,21b8 <L800D9DF0+0x98>
    21b0:	01000821 	move	at,t0
    21b4:	25010001 	addiu	at,t0,1
    21b8:	00014043 	sra	t0,at,0x1
    21bc:	11600006 	beqz	t3,21d8 <L800D9DF0+0xb8>
    21c0:	3c040000 	lui	a0,0x0
    21c4:	24840000 	addiu	a0,a0,0
    21c8:	afa20010 	sw	v0,16(sp)
    21cc:	afa30014 	sw	v1,20(sp)
    21d0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    21d4:	afa80018 	sw	t0,24(sp)
    21d8:	8e6d009c 	lw	t5,156(s3)
    21dc:	240c0001 	li	t4,1
    21e0:	ae6c00ac 	sw	t4,172(s3)
    21e4:	25b80001 	addiu	t8,t5,1
    21e8:	ae78009c 	sw	t8,156(s3)
    21ec:	1000035b 	b	2f5c <L800DAC14+0x18>
    21f0:	8e6800bc 	lw	t0,188(s3)

000021f4 <L800D9EC4>:
    21f4:	8faa0394 	lw	t2,916(sp)
    21f8:	27b90250 	addiu	t9,sp,592
    21fc:	894e0000 	lwl	t6,0(t2)
    2200:	994e0003 	lwr	t6,3(t2)
    2204:	af2e0000 	sw	t6,0(t9)
    2208:	894f0004 	lwl	t7,4(t2)
    220c:	994f0007 	lwr	t7,7(t2)
    2210:	af2f0004 	sw	t7,4(t9)
    2214:	93a50251 	lbu	a1,593(sp)
    2218:	93a60252 	lbu	a2,594(sp)
    221c:	93a70253 	lbu	a3,595(sp)
    2220:	04a10002 	bgez	a1,222c <L800D9EC4+0x38>
    2224:	00a00821 	move	at,a1
    2228:	24a10001 	addiu	at,a1,1
    222c:	00012843 	sra	a1,at,0x1
    2230:	04c10002 	bgez	a2,223c <L800D9EC4+0x48>
    2234:	00c00821 	move	at,a2
    2238:	24c10001 	addiu	at,a2,1
    223c:	00013043 	sra	a2,at,0x1
    2240:	04e10002 	bgez	a3,224c <L800D9EC4+0x58>
    2244:	00e00821 	move	at,a3
    2248:	24e10001 	addiu	at,a3,1
    224c:	00013843 	sra	a3,at,0x1
    2250:	93a20257 	lbu	v0,599(sp)
    2254:	8e6b00bc 	lw	t3,188(s3)
    2258:	04410002 	bgez	v0,2264 <L800D9EC4+0x70>
    225c:	00400821 	move	at,v0
    2260:	24410001 	addiu	at,v0,1
    2264:	00011043 	sra	v0,at,0x1
    2268:	11600004 	beqz	t3,227c <L800D9EC4+0x88>
    226c:	3c040000 	lui	a0,0x0
    2270:	24840000 	addiu	a0,a0,0
    2274:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2278:	afa20010 	sw	v0,16(sp)
    227c:	8e6d00a0 	lw	t5,160(s3)
    2280:	240c0001 	li	t4,1
    2284:	ae6c00ac 	sw	t4,172(s3)
    2288:	25b80001 	addiu	t8,t5,1
    228c:	ae7800a0 	sw	t8,160(s3)
    2290:	10000332 	b	2f5c <L800DAC14+0x18>
    2294:	8e6800bc 	lw	t0,188(s3)

00002298 <L800D9F68>:
    2298:	8e6800bc 	lw	t0,188(s3)
    229c:	1100032f 	beqz	t0,2f5c <L800DAC14+0x18>
    22a0:	00000000 	nop
    22a4:	97c50002 	lhu	a1,2(s8)
    22a8:	97c60006 	lhu	a2,6(s8)
    22ac:	3c040000 	lui	a0,0x0
    22b0:	24840000 	addiu	a0,a0,0
    22b4:	04a10002 	bgez	a1,22c0 <L800D9F68+0x28>
    22b8:	00a00821 	move	at,a1
    22bc:	24a10001 	addiu	at,a1,1
    22c0:	00012843 	sra	a1,at,0x1
    22c4:	04c10002 	bgez	a2,22d0 <L800D9F68+0x38>
    22c8:	00c00821 	move	at,a2
    22cc:	24c10001 	addiu	at,a2,1
    22d0:	00013043 	sra	a2,at,0x1
    22d4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    22d8:	00000000 	nop
    22dc:	1000031f 	b	2f5c <L800DAC14+0x18>
    22e0:	8e6800bc 	lw	t0,188(s3)

000022e4 <L800D9FB4>:
    22e4:	02602025 	move	a0,s3
    22e8:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    22ec:	8fa50384 	lw	a1,900(sp)
    22f0:	8e6800bc 	lw	t0,188(s3)
    22f4:	0040a025 	move	s4,v0
    22f8:	5100000d 	beqzl	t0,2330 <L800D9FB4+0x4c>
    22fc:	268afff8 	addiu	t2,s4,-8
    2300:	8fc70000 	lw	a3,0(s8)
    2304:	8fd90004 	lw	t9,4(s8)
    2308:	3c040000 	lui	a0,0x0
    230c:	30e70fff 	andi	a3,a3,0xfff
    2310:	00073842 	srl	a3,a3,0x1
    2314:	24840000 	addiu	a0,a0,0
    2318:	8fa50384 	lw	a1,900(sp)
    231c:	00403025 	move	a2,v0
    2320:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2324:	afb90010 	sw	t9,16(sp)
    2328:	8e6800bc 	lw	t0,188(s3)
    232c:	268afff8 	addiu	t2,s4,-8
    2330:	1000030a 	b	2f5c <L800DAC14+0x18>
    2334:	afaa0394 	sw	t2,916(sp)

00002338 <L800DA008>:
    2338:	8fae0394 	lw	t6,916(sp)
    233c:	27af0238 	addiu	t7,sp,568
    2340:	89cd0000 	lwl	t5,0(t6)
    2344:	99cd0003 	lwr	t5,3(t6)
    2348:	aded0000 	sw	t5,0(t7)
    234c:	89cb0004 	lwl	t3,4(t6)
    2350:	99cb0007 	lwr	t3,7(t6)
    2354:	adeb0004 	sw	t3,4(t7)
    2358:	93b80239 	lbu	t8,569(sp)
    235c:	5700001a 	bnezl	t8,23c8 <L800DA008+0x90>
    2360:	8e6800bc 	lw	t0,188(s3)
    2364:	8e6800bc 	lw	t0,188(s3)
    2368:	110002fc 	beqz	t0,2f5c <L800DAC14+0x18>
    236c:	00000000 	nop
    2370:	93ac023b 	lbu	t4,571(sp)
    2374:	11800003 	beqz	t4,2384 <L800DA008+0x4c>
    2378:	3c110000 	lui	s1,0x0
    237c:	10000003 	b	238c <L800DA008+0x54>
    2380:	26310000 	addiu	s1,s1,0
    2384:	3c110000 	lui	s1,0x0
    2388:	26310000 	addiu	s1,s1,0
    238c:	8fa70238 	lw	a3,568(sp)
    2390:	93b9023a 	lbu	t9,570(sp)
    2394:	3c040000 	lui	a0,0x0
    2398:	00073c80 	sll	a3,a3,0x12
    239c:	332a0007 	andi	t2,t9,0x7
    23a0:	afaa0010 	sw	t2,16(sp)
    23a4:	00073f42 	srl	a3,a3,0x1d
    23a8:	24840000 	addiu	a0,a0,0
    23ac:	97a5023c 	lhu	a1,572(sp)
    23b0:	97a6023e 	lhu	a2,574(sp)
    23b4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    23b8:	afb10014 	sw	s1,20(sp)
    23bc:	100002e7 	b	2f5c <L800DAC14+0x18>
    23c0:	8e6800bc 	lw	t0,188(s3)
    23c4:	8e6800bc 	lw	t0,188(s3)
    23c8:	110002e4 	beqz	t0,2f5c <L800DAC14+0x18>
    23cc:	00000000 	nop
    23d0:	93af023b 	lbu	t7,571(sp)
    23d4:	11e00003 	beqz	t7,23e4 <L800DA008+0xac>
    23d8:	3c110000 	lui	s1,0x0
    23dc:	10000003 	b	23ec <L800DA008+0xb4>
    23e0:	26310000 	addiu	s1,s1,0
    23e4:	3c110000 	lui	s1,0x0
    23e8:	26310000 	addiu	s1,s1,0
    23ec:	8fa70238 	lw	a3,568(sp)
    23f0:	93ab023a 	lbu	t3,570(sp)
    23f4:	93ae0239 	lbu	t6,569(sp)
    23f8:	3c040000 	lui	a0,0x0
    23fc:	00073c80 	sll	a3,a3,0x12
    2400:	316d0007 	andi	t5,t3,0x7
    2404:	afad0014 	sw	t5,20(sp)
    2408:	00073f42 	srl	a3,a3,0x1d
    240c:	24840000 	addiu	a0,a0,0
    2410:	97a5023c 	lhu	a1,572(sp)
    2414:	97a6023e 	lhu	a2,574(sp)
    2418:	afb10018 	sw	s1,24(sp)
    241c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2420:	afae0010 	sw	t6,16(sp)
    2424:	8e6800bc 	lw	t0,188(s3)
    2428:	100002cc 	b	2f5c <L800DAC14+0x18>
    242c:	00000000 	nop

00002430 <L800DA100>:
    2430:	8fac0394 	lw	t4,916(sp)
    2434:	27b80230 	addiu	t8,sp,560
    2438:	24010001 	li	at,1
    243c:	8d8a0000 	lw	t2,0(t4)
    2440:	af0a0000 	sw	t2,0(t8)
    2444:	8d990004 	lw	t9,4(t4)
    2448:	af190004 	sw	t9,4(t8)
    244c:	8fa50234 	lw	a1,564(sp)
    2450:	00052982 	srl	a1,a1,0x6
    2454:	54a10009 	bnel	a1,at,247c <L800DA100+0x4c>
    2458:	8e6800bc 	lw	t0,188(s3)
    245c:	8e6800bc 	lw	t0,188(s3)
    2460:	110002be 	beqz	t0,2f5c <L800DAC14+0x18>
    2464:	3c040000 	lui	a0,0x0
    2468:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    246c:	24840000 	addiu	a0,a0,0
    2470:	100002ba 	b	2f5c <L800DAC14+0x18>
    2474:	8e6800bc 	lw	t0,188(s3)
    2478:	8e6800bc 	lw	t0,188(s3)
    247c:	110002b7 	beqz	t0,2f5c <L800DAC14+0x18>
    2480:	3c040000 	lui	a0,0x0
    2484:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2488:	24840000 	addiu	a0,a0,0
    248c:	8e6800bc 	lw	t0,188(s3)
    2490:	100002b2 	b	2f5c <L800DAC14+0x18>
    2494:	00000000 	nop

00002498 <L800DA168>:
    2498:	3c0200ff 	lui	v0,0xff
    249c:	3442ffff 	ori	v0,v0,0xffff
    24a0:	8fcf0000 	lw	t7,0(s8)
    24a4:	8fce0004 	lw	t6,4(s8)
    24a8:	8e6800bc 	lw	t0,188(s3)
    24ac:	01e28024 	and	s0,t7,v0
    24b0:	1600000f 	bnez	s0,24f0 <L800DA168+0x58>
    24b4:	01c28824 	and	s1,t6,v0
    24b8:	11000003 	beqz	t0,24c8 <L800DA168+0x30>
    24bc:	3c040000 	lui	a0,0x0
    24c0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    24c4:	24840000 	addiu	a0,a0,0
    24c8:	02602025 	move	a0,s3
    24cc:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    24d0:	02202825 	move	a1,s1
    24d4:	8e6b00bc 	lw	t3,188(s3)
    24d8:	1160003b 	beqz	t3,25c8 <L800DA168+0x130>
    24dc:	3c040000 	lui	a0,0x0
    24e0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    24e4:	24840000 	addiu	a0,a0,0
    24e8:	10000038 	b	25cc <L800DA168+0x134>
    24ec:	8e6a00d4 	lw	t2,212(s3)
    24f0:	56200010 	bnezl	s1,2534 <L800DA168+0x9c>
    24f4:	3c0100ff 	lui	at,0xff
    24f8:	11000003 	beqz	t0,2508 <L800DA168+0x70>
    24fc:	3c040000 	lui	a0,0x0
    2500:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2504:	24840000 	addiu	a0,a0,0
    2508:	02602025 	move	a0,s3
    250c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2510:	02002827 	nor	a1,s0,zero
    2514:	8e6d00bc 	lw	t5,188(s3)
    2518:	11a0002b 	beqz	t5,25c8 <L800DA168+0x130>
    251c:	3c040000 	lui	a0,0x0
    2520:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2524:	24840000 	addiu	a0,a0,0
    2528:	10000028 	b	25cc <L800DA168+0x134>
    252c:	8e6a00d4 	lw	t2,212(s3)
    2530:	3c0100ff 	lui	at,0xff
    2534:	3421ffff 	ori	at,at,0xffff
    2538:	1601000f 	bne	s0,at,2578 <L800DA168+0xe0>
    253c:	00000000 	nop
    2540:	11000003 	beqz	t0,2550 <L800DA168+0xb8>
    2544:	3c040000 	lui	a0,0x0
    2548:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    254c:	24840000 	addiu	a0,a0,0
    2550:	02602025 	move	a0,s3
    2554:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2558:	02202825 	move	a1,s1
    255c:	8e7800bc 	lw	t8,188(s3)
    2560:	13000019 	beqz	t8,25c8 <L800DA168+0x130>
    2564:	3c040000 	lui	a0,0x0
    2568:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    256c:	24840000 	addiu	a0,a0,0
    2570:	10000016 	b	25cc <L800DA168+0x134>
    2574:	8e6a00d4 	lw	t2,212(s3)
    2578:	11000003 	beqz	t0,2588 <L800DA168+0xf0>
    257c:	3c040000 	lui	a0,0x0
    2580:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2584:	24840000 	addiu	a0,a0,0
    2588:	02602025 	move	a0,s3
    258c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2590:	02002827 	nor	a1,s0,zero
    2594:	8e6c00bc 	lw	t4,188(s3)
    2598:	11800003 	beqz	t4,25a8 <L800DA168+0x110>
    259c:	3c040000 	lui	a0,0x0
    25a0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    25a4:	24840000 	addiu	a0,a0,0
    25a8:	02602025 	move	a0,s3
    25ac:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    25b0:	02202825 	move	a1,s1
    25b4:	8e7900bc 	lw	t9,188(s3)
    25b8:	13200003 	beqz	t9,25c8 <L800DA168+0x130>
    25bc:	3c040000 	lui	a0,0x0
    25c0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    25c4:	24840000 	addiu	a0,a0,0
    25c8:	8e6a00d4 	lw	t2,212(s3)
    25cc:	8e6800bc 	lw	t0,188(s3)
    25d0:	01507824 	and	t7,t2,s0
    25d4:	ae6f00d4 	sw	t7,212(s3)
    25d8:	01f15825 	or	t3,t7,s1
    25dc:	1000025f 	b	2f5c <L800DAC14+0x18>
    25e0:	ae6b00d4 	sw	t3,212(s3)

000025e4 <L800DA2B4>:
    25e4:	8fb80394 	lw	t8,916(sp)
    25e8:	27ad021c 	addiu	t5,sp,540
    25ec:	27aa0214 	addiu	t2,sp,532
    25f0:	8f190000 	lw	t9,0(t8)
    25f4:	adb90000 	sw	t9,0(t5)
    25f8:	8f0c0004 	lw	t4,4(t8)
    25fc:	adac0004 	sw	t4,4(t5)
    2600:	8faf0394 	lw	t7,916(sp)
    2604:	8deb0000 	lw	t3,0(t7)
    2608:	ad4b0000 	sw	t3,0(t2)
    260c:	8dee0004 	lw	t6,4(t7)
    2610:	ad4e0004 	sw	t6,4(t2)
    2614:	93ad021d 	lbu	t5,541(sp)
    2618:	97b8021e 	lhu	t8,542(sp)
    261c:	a3ad0217 	sb	t5,535(sp)
    2620:	8fac0214 	lw	t4,532(sp)
    2624:	8fad0220 	lw	t5,544(sp)
    2628:	000cca02 	srl	t9,t4,0x8
    262c:	03195026 	xor	t2,t8,t9
    2630:	000a7c00 	sll	t7,t2,0x10
    2634:	000f7202 	srl	t6,t7,0x8
    2638:	01cc5826 	xor	t3,t6,t4
    263c:	afab0214 	sw	t3,532(sp)
    2640:	93b80217 	lbu	t8,535(sp)
    2644:	afad0218 	sw	t5,536(sp)
    2648:	2719fffe 	addiu	t9,t8,-2
    264c:	2f21000d 	sltiu	at,t9,13
    2650:	10200063 	beqz	at,27e0 <L800DA4B0>
    2654:	0019c880 	sll	t9,t9,0x2
    2658:	3c010000 	lui	at,0x0
    265c:	00390821 	addu	at,at,t9
    2660:	8c390000 	lw	t9,0(at)
    2664:	03200008 	jr	t9
    2668:	00000000 	nop

0000266c <L800DA33C>:
    266c:	8e6a00bc 	lw	t2,188(s3)
    2670:	5140000a 	beqzl	t2,269c <L800DA33C+0x30>
    2674:	8bac0215 	lwl	t4,533(sp)
    2678:	8ba50215 	lwl	a1,533(sp)
    267c:	9ba50218 	lwr	a1,536(sp)
    2680:	3c040000 	lui	a0,0x0
    2684:	24840000 	addiu	a0,a0,0
    2688:	00052c02 	srl	a1,a1,0x10
    268c:	00052882 	srl	a1,a1,0x2
    2690:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2694:	8fa60218 	lw	a2,536(sp)
    2698:	8bac0215 	lwl	t4,533(sp)
    269c:	9bac0218 	lwr	t4,536(sp)
    26a0:	8faf0218 	lw	t7,536(sp)
    26a4:	3c0100ff 	lui	at,0xff
    26a8:	000c5c02 	srl	t3,t4,0x10
    26ac:	000b6882 	srl	t5,t3,0x2
    26b0:	000dc080 	sll	t8,t5,0x2
    26b4:	3421ffff 	ori	at,at,0xffff
    26b8:	0278c821 	addu	t9,s3,t8
    26bc:	01e17024 	and	t6,t7,at
    26c0:	af2e0000 	sw	t6,0(t9)
    26c4:	10000225 	b	2f5c <L800DAC14+0x18>
    26c8:	8e6800bc 	lw	t0,188(s3)

000026cc <L800DA39C>:
    26cc:	8e6800bc 	lw	t0,188(s3)
    26d0:	5100000e 	beqzl	t0,270c <L800DA39C+0x40>
    26d4:	8faf0394 	lw	t7,916(sp)
    26d8:	8faa0218 	lw	t2,536(sp)
    26dc:	51400004 	beqzl	t2,26f0 <L800DA39C+0x24>
    26e0:	8fb10218 	lw	s1,536(sp)
    26e4:	10000003 	b	26f4 <L800DA39C+0x28>
    26e8:	01408825 	move	s1,t2
    26ec:	8fb10218 	lw	s1,536(sp)
    26f0:	00118823 	negu	s1,s1
    26f4:	3c040000 	lui	a0,0x0
    26f8:	24840000 	addiu	a0,a0,0
    26fc:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2700:	02202825 	move	a1,s1
    2704:	8e6800bc 	lw	t0,188(s3)
    2708:	8faf0394 	lw	t7,916(sp)
    270c:	25ec0018 	addiu	t4,t7,24
    2710:	10000212 	b	2f5c <L800DAC14+0x18>
    2714:	afac0394 	sw	t4,916(sp)

00002718 <L800DA3E8>:
    2718:	8e6800bc 	lw	t0,188(s3)
    271c:	1100020f 	beqz	t0,2f5c <L800DAC14+0x18>
    2720:	00000000 	nop
    2724:	8fa50218 	lw	a1,536(sp)
    2728:	24010018 	li	at,24
    272c:	3c040000 	lui	a0,0x0
    2730:	00a1001b 	divu	zero,a1,at
    2734:	00002812 	mflo	a1
    2738:	24840000 	addiu	a0,a0,0
    273c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2740:	00000000 	nop
    2744:	10000205 	b	2f5c <L800DAC14+0x18>
    2748:	8e6800bc 	lw	t0,188(s3)

0000274c <L800DA41C>:
    274c:	8e6800bc 	lw	t0,188(s3)
    2750:	5100000d 	beqzl	t0,2788 <L800DA41C+0x3c>
    2754:	8fab0394 	lw	t3,916(sp)
    2758:	8ba50215 	lwl	a1,533(sp)
    275c:	9ba50218 	lwr	a1,536(sp)
    2760:	3c040000 	lui	a0,0x0
    2764:	24840000 	addiu	a0,a0,0
    2768:	00052c02 	srl	a1,a1,0x10
    276c:	30a500f0 	andi	a1,a1,0xf0
    2770:	00052942 	srl	a1,a1,0x5
    2774:	24a50001 	addiu	a1,a1,1
    2778:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    277c:	8fa60218 	lw	a2,536(sp)
    2780:	8e6800bc 	lw	t0,188(s3)
    2784:	8fab0394 	lw	t3,916(sp)
    2788:	256d0008 	addiu	t5,t3,8
    278c:	100001f3 	b	2f5c <L800DAC14+0x18>
    2790:	afad0394 	sw	t5,916(sp)

00002794 <L800DA464>:
    2794:	8e6800bc 	lw	t0,188(s3)
    2798:	110001f0 	beqz	t0,2f5c <L800DAC14+0x18>
    279c:	00000000 	nop
    27a0:	8fb80218 	lw	t8,536(sp)
    27a4:	3c040000 	lui	a0,0x0
    27a8:	24840000 	addiu	a0,a0,0
    27ac:	00182c02 	srl	a1,t8,0x10
    27b0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    27b4:	3306ffff 	andi	a2,t8,0xffff
    27b8:	100001e8 	b	2f5c <L800DAC14+0x18>
    27bc:	8e6800bc 	lw	t0,188(s3)

000027c0 <L800DA490>:
    27c0:	8e6800bc 	lw	t0,188(s3)
    27c4:	110001e5 	beqz	t0,2f5c <L800DAC14+0x18>
    27c8:	3c040000 	lui	a0,0x0
    27cc:	24840000 	addiu	a0,a0,0
    27d0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    27d4:	8fa50218 	lw	a1,536(sp)
    27d8:	100001e0 	b	2f5c <L800DAC14+0x18>
    27dc:	8e6800bc 	lw	t0,188(s3)

000027e0 <L800DA4B0>:
    27e0:	8e6800bc 	lw	t0,188(s3)
    27e4:	110001dd 	beqz	t0,2f5c <L800DAC14+0x18>
    27e8:	00000000 	nop
    27ec:	8ba60215 	lwl	a2,533(sp)
    27f0:	9ba60218 	lwr	a2,536(sp)
    27f4:	3c040000 	lui	a0,0x0
    27f8:	24840000 	addiu	a0,a0,0
    27fc:	93a50217 	lbu	a1,535(sp)
    2800:	8fa70218 	lw	a3,536(sp)
    2804:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2808:	00063402 	srl	a2,a2,0x10
    280c:	8e6800bc 	lw	t0,188(s3)
    2810:	100001d2 	b	2f5c <L800DAC14+0x18>
    2814:	00000000 	nop

00002818 <L800DA4E8>:
    2818:	8fb90394 	lw	t9,916(sp)
    281c:	27ae020c 	addiu	t6,sp,524
    2820:	24010008 	li	at,8
    2824:	8f2f0000 	lw	t7,0(t9)
    2828:	adcf0000 	sw	t7,0(t6)
    282c:	8f2a0004 	lw	t2,4(t9)
    2830:	adca0004 	sw	t2,4(t6)
    2834:	93ac020f 	lbu	t4,527(sp)
    2838:	11810007 	beq	t4,at,2858 <L800DA4E8+0x40>
    283c:	2401000a 	li	at,10
    2840:	1181002f 	beq	t4,at,2900 <L800DA4E8+0xe8>
    2844:	2401000e 	li	at,14
    2848:	51810023 	beql	t4,at,28d8 <L800DA4E8+0xc0>
    284c:	8e6800bc 	lw	t0,188(s3)
    2850:	10000050 	b	2994 <L800DA4E8+0x17c>
    2854:	8e6800bc 	lw	t0,188(s3)
    2858:	8e6800bc 	lw	t0,188(s3)
    285c:	11000006 	beqz	t0,2878 <L800DA4E8+0x60>
    2860:	3c040000 	lui	a0,0x0
    2864:	24840000 	addiu	a0,a0,0
    2868:	8fa50210 	lw	a1,528(sp)
    286c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2870:	02803025 	move	a2,s4
    2874:	8e6800bc 	lw	t0,188(s3)
    2878:	1100000a 	beqz	t0,28a4 <L800DA4E8+0x8c>
    287c:	00000000 	nop
    2880:	868b0006 	lh	t3,6(s4)
    2884:	3c040000 	lui	a0,0x0
    2888:	86850000 	lh	a1,0(s4)
    288c:	86860002 	lh	a2,2(s4)
    2890:	86870004 	lh	a3,4(s4)
    2894:	24840000 	addiu	a0,a0,0
    2898:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    289c:	afab0010 	sw	t3,16(sp)
    28a0:	8e6800bc 	lw	t0,188(s3)
    28a4:	110001ad 	beqz	t0,2f5c <L800DAC14+0x18>
    28a8:	00000000 	nop
    28ac:	868d000e 	lh	t5,14(s4)
    28b0:	3c040000 	lui	a0,0x0
    28b4:	86850008 	lh	a1,8(s4)
    28b8:	8686000a 	lh	a2,10(s4)
    28bc:	8687000c 	lh	a3,12(s4)
    28c0:	24840000 	addiu	a0,a0,0
    28c4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    28c8:	afad0010 	sw	t5,16(sp)
    28cc:	100001a3 	b	2f5c <L800DAC14+0x18>
    28d0:	8e6800bc 	lw	t0,188(s3)
    28d4:	8e6800bc 	lw	t0,188(s3)
    28d8:	11000005 	beqz	t0,28f0 <L800DA4E8+0xd8>
    28dc:	3c040000 	lui	a0,0x0
    28e0:	24840000 	addiu	a0,a0,0
    28e4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    28e8:	8fa50210 	lw	a1,528(sp)
    28ec:	8e6800bc 	lw	t0,188(s3)
    28f0:	8fb80394 	lw	t8,916(sp)
    28f4:	270e0008 	addiu	t6,t8,8
    28f8:	10000198 	b	2f5c <L800DAC14+0x18>
    28fc:	afae0394 	sw	t6,916(sp)
    2900:	93a2020e 	lbu	v0,526(sp)
    2904:	000210c0 	sll	v0,v0,0x3
    2908:	10400005 	beqz	v0,2920 <L800DA4E8+0x108>
    290c:	24010018 	li	at,24
    2910:	5041000c 	beql	v0,at,2944 <L800DA4E8+0x12c>
    2914:	8e6800bc 	lw	t0,188(s3)
    2918:	10000012 	b	2964 <L800DA4E8+0x14c>
    291c:	8e6800bc 	lw	t0,188(s3)
    2920:	8e6800bc 	lw	t0,188(s3)
    2924:	1100018d 	beqz	t0,2f5c <L800DAC14+0x18>
    2928:	3c040000 	lui	a0,0x0
    292c:	24840000 	addiu	a0,a0,0
    2930:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2934:	8fa50210 	lw	a1,528(sp)
    2938:	10000188 	b	2f5c <L800DAC14+0x18>
    293c:	8e6800bc 	lw	t0,188(s3)
    2940:	8e6800bc 	lw	t0,188(s3)
    2944:	11000185 	beqz	t0,2f5c <L800DAC14+0x18>
    2948:	3c040000 	lui	a0,0x0
    294c:	24840000 	addiu	a0,a0,0
    2950:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2954:	8fa50210 	lw	a1,528(sp)
    2958:	10000180 	b	2f5c <L800DAC14+0x18>
    295c:	8e6800bc 	lw	t0,188(s3)
    2960:	8e6800bc 	lw	t0,188(s3)
    2964:	1100017d 	beqz	t0,2f5c <L800DAC14+0x18>
    2968:	2446ffe8 	addiu	a2,v0,-24
    296c:	24010018 	li	at,24
    2970:	00c1001b 	divu	zero,a2,at
    2974:	00003012 	mflo	a2
    2978:	3c040000 	lui	a0,0x0
    297c:	24840000 	addiu	a0,a0,0
    2980:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2984:	8fa50210 	lw	a1,528(sp)
    2988:	10000174 	b	2f5c <L800DAC14+0x18>
    298c:	8e6800bc 	lw	t0,188(s3)
    2990:	8e6800bc 	lw	t0,188(s3)
    2994:	11000171 	beqz	t0,2f5c <L800DAC14+0x18>
    2998:	00000000 	nop
    299c:	93a6020d 	lbu	a2,525(sp)
    29a0:	93b9020e 	lbu	t9,526(sp)
    29a4:	3c040000 	lui	a0,0x0
    29a8:	000630c2 	srl	a2,a2,0x3
    29ac:	000630c0 	sll	a2,a2,0x3
    29b0:	001950c0 	sll	t2,t9,0x3
    29b4:	afaa0010 	sw	t2,16(sp)
    29b8:	24c60008 	addiu	a2,a2,8
    29bc:	24840000 	addiu	a0,a0,0
    29c0:	93a7020f 	lbu	a3,527(sp)
    29c4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    29c8:	8fa50210 	lw	a1,528(sp)
    29cc:	8e6800bc 	lw	t0,188(s3)
    29d0:	10000162 	b	2f5c <L800DAC14+0x18>
    29d4:	00000000 	nop
    29d8:	8e6800bc 	lw	t0,188(s3)
    29dc:	1100015f 	beqz	t0,2f5c <L800DAC14+0x18>
    29e0:	3c040000 	lui	a0,0x0
    29e4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    29e8:	24840000 	addiu	a0,a0,0
    29ec:	8e6800bc 	lw	t0,188(s3)
    29f0:	1000015a 	b	2f5c <L800DAC14+0x18>
    29f4:	00000000 	nop
    29f8:	286100dc 	slti	at,v1,220
    29fc:	14200007 	bnez	at,2a1c <L800DA4E8+0x204>
    2a00:	240100dc 	li	at,220
    2a04:	10610081 	beq	v1,at,2c0c <L800DA814+0xc8>
    2a08:	240100e4 	li	at,228
    2a0c:	50610070 	beql	v1,at,2bd0 <L800DA814+0x8c>
    2a10:	8e6800bc 	lw	t0,188(s3)
    2a14:	1000014c 	b	2f48 <L800DAC14+0x4>
    2a18:	8e6800bc 	lw	t0,188(s3)
    2a1c:	286100db 	slti	at,v1,219
    2a20:	14200005 	bnez	at,2a38 <L800DA4E8+0x220>
    2a24:	240100db 	li	at,219
    2a28:	506100fc 	beql	v1,at,2e1c <L800DAA50+0x9c>
    2a2c:	8faf0394 	lw	t7,916(sp)
    2a30:	10000145 	b	2f48 <L800DAC14+0x4>
    2a34:	8e6800bc 	lw	t0,188(s3)
    2a38:	2861000c 	slti	at,v1,12
    2a3c:	14200005 	bnez	at,2a54 <L800DA4E8+0x23c>
    2a40:	240100da 	li	at,218
    2a44:	50610051 	beql	v1,at,2b8c <L800DA814+0x48>
    2a48:	8fab0394 	lw	t3,916(sp)
    2a4c:	1000013e 	b	2f48 <L800DAC14+0x4>
    2a50:	8e6800bc 	lw	t0,188(s3)
    2a54:	246fffff 	addiu	t7,v1,-1
    2a58:	2de1000b 	sltiu	at,t7,11
    2a5c:	10200139 	beqz	at,2f44 <L800DAC14>
    2a60:	000f7880 	sll	t7,t7,0x2
    2a64:	3c010000 	lui	at,0x0
    2a68:	002f0821 	addu	at,at,t7
    2a6c:	8c2f0000 	lw	t7,0(at)
    2a70:	01e00008 	jr	t7
    2a74:	00000000 	nop

00002a78 <L800DA748>:
    2a78:	8fab0394 	lw	t3,916(sp)
    2a7c:	27ac0200 	addiu	t4,sp,512
    2a80:	8d780000 	lw	t8,0(t3)
    2a84:	ad980000 	sw	t8,0(t4)
    2a88:	8d6d0004 	lw	t5,4(t3)
    2a8c:	ad8d0004 	sw	t5,4(t4)
    2a90:	8e6e00bc 	lw	t6,188(s3)
    2a94:	11c00005 	beqz	t6,2aac <L800DA748+0x34>
    2a98:	3c040000 	lui	a0,0x0
    2a9c:	24840000 	addiu	a0,a0,0
    2aa0:	8fa50204 	lw	a1,516(sp)
    2aa4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2aa8:	02803025 	move	a2,s4
    2aac:	24190001 	li	t9,1
    2ab0:	ae7900ac 	sw	t9,172(s3)
    2ab4:	10000129 	b	2f5c <L800DAC14+0x18>
    2ab8:	8e6800bc 	lw	t0,188(s3)

00002abc <L800DA78C>:
    2abc:	8faf0394 	lw	t7,916(sp)
    2ac0:	27aa01f8 	addiu	t2,sp,504
    2ac4:	8deb0000 	lw	t3,0(t7)
    2ac8:	ad4b0000 	sw	t3,0(t2)
    2acc:	8dec0004 	lw	t4,4(t7)
    2ad0:	ad4c0004 	sw	t4,4(t2)
    2ad4:	8e6d00bc 	lw	t5,188(s3)
    2ad8:	11a00005 	beqz	t5,2af0 <L800DA78C+0x34>
    2adc:	3c040000 	lui	a0,0x0
    2ae0:	24840000 	addiu	a0,a0,0
    2ae4:	8fa501fc 	lw	a1,508(sp)
    2ae8:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2aec:	02803025 	move	a2,s4
    2af0:	24180001 	li	t8,1
    2af4:	ae7800ac 	sw	t8,172(s3)
    2af8:	10000118 	b	2f5c <L800DAC14+0x18>
    2afc:	8e6800bc 	lw	t0,188(s3)

00002b00 <L800DA7D0>:
    2b00:	8fb90394 	lw	t9,916(sp)
    2b04:	27ae01f0 	addiu	t6,sp,496
    2b08:	8f2f0000 	lw	t7,0(t9)
    2b0c:	adcf0000 	sw	t7,0(t6)
    2b10:	8f2a0004 	lw	t2,4(t9)
    2b14:	adca0004 	sw	t2,4(t6)
    2b18:	8e6c00bc 	lw	t4,188(s3)
    2b1c:	11800005 	beqz	t4,2b34 <L800DA7D0+0x34>
    2b20:	3c040000 	lui	a0,0x0
    2b24:	24840000 	addiu	a0,a0,0
    2b28:	8fa501f4 	lw	a1,500(sp)
    2b2c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2b30:	02803025 	move	a2,s4
    2b34:	240b0001 	li	t3,1
    2b38:	ae6b00ac 	sw	t3,172(s3)
    2b3c:	10000107 	b	2f5c <L800DAC14+0x18>
    2b40:	8e6800bc 	lw	t0,188(s3)

00002b44 <L800DA814>:
    2b44:	8fb80394 	lw	t8,916(sp)
    2b48:	27ad01e8 	addiu	t5,sp,488
    2b4c:	8f190000 	lw	t9,0(t8)
    2b50:	adb90000 	sw	t9,0(t5)
    2b54:	8f0e0004 	lw	t6,4(t8)
    2b58:	adae0004 	sw	t6,4(t5)
    2b5c:	8e6a00bc 	lw	t2,188(s3)
    2b60:	11400005 	beqz	t2,2b78 <L800DA814+0x34>
    2b64:	3c040000 	lui	a0,0x0
    2b68:	24840000 	addiu	a0,a0,0
    2b6c:	8fa501ec 	lw	a1,492(sp)
    2b70:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2b74:	02803025 	move	a2,s4
    2b78:	240f0001 	li	t7,1
    2b7c:	ae6f00ac 	sw	t7,172(s3)
    2b80:	100000f6 	b	2f5c <L800DAC14+0x18>
    2b84:	8e6800bc 	lw	t0,188(s3)
    2b88:	8fab0394 	lw	t3,916(sp)
    2b8c:	27ac01e0 	addiu	t4,sp,480
    2b90:	8d780000 	lw	t8,0(t3)
    2b94:	ad980000 	sw	t8,0(t4)
    2b98:	8d6d0004 	lw	t5,4(t3)
    2b9c:	ad8d0004 	sw	t5,4(t4)
    2ba0:	8e6e00bc 	lw	t6,188(s3)
    2ba4:	11c00005 	beqz	t6,2bbc <L800DA814+0x78>
    2ba8:	3c040000 	lui	a0,0x0
    2bac:	24840000 	addiu	a0,a0,0
    2bb0:	8fa501e4 	lw	a1,484(sp)
    2bb4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2bb8:	02803025 	move	a2,s4
    2bbc:	24190001 	li	t9,1
    2bc0:	ae7900ac 	sw	t9,172(s3)
    2bc4:	100000e5 	b	2f5c <L800DAC14+0x18>
    2bc8:	8e6800bc 	lw	t0,188(s3)
    2bcc:	8e6800bc 	lw	t0,188(s3)
    2bd0:	11000007 	beqz	t0,2bf0 <L800DA814+0xac>
    2bd4:	3c040000 	lui	a0,0x0
    2bd8:	24840000 	addiu	a0,a0,0
    2bdc:	93c50001 	lbu	a1,1(s8)
    2be0:	8fc60004 	lw	a2,4(s8)
    2be4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2be8:	97c70002 	lhu	a3,2(s8)
    2bec:	8e6800bc 	lw	t0,188(s3)
    2bf0:	93ca0001 	lbu	t2,1(s8)
    2bf4:	a3aa0381 	sb	t2,897(sp)
    2bf8:	8fcf0004 	lw	t7,4(s8)
    2bfc:	afaf0384 	sw	t7,900(sp)
    2c00:	97cc0002 	lhu	t4,2(s8)
    2c04:	100000d5 	b	2f5c <L800DAC14+0x18>
    2c08:	a7ac0382 	sh	t4,898(sp)
    2c0c:	8fad0394 	lw	t5,916(sp)
    2c10:	27ab01d8 	addiu	t3,sp,472
    2c14:	24010017 	li	at,23
    2c18:	8dae0000 	lw	t6,0(t5)
    2c1c:	ad6e0000 	sw	t6,0(t3)
    2c20:	8db80004 	lw	t8,4(t5)
    2c24:	ad780004 	sw	t8,4(t3)
    2c28:	93b901d9 	lbu	t9,473(sp)
    2c2c:	5721000b 	bnel	t9,at,2c5c <L800DA814+0x118>
    2c30:	8e6800bc 	lw	t0,188(s3)
    2c34:	8e6800bc 	lw	t0,188(s3)
    2c38:	110000c8 	beqz	t0,2f5c <L800DAC14+0x18>
    2c3c:	3c040000 	lui	a0,0x0
    2c40:	24840000 	addiu	a0,a0,0
    2c44:	8fa501dc 	lw	a1,476(sp)
    2c48:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2c4c:	02803025 	move	a2,s4
    2c50:	100000c2 	b	2f5c <L800DAC14+0x18>
    2c54:	8e6800bc 	lw	t0,188(s3)
    2c58:	8e6800bc 	lw	t0,188(s3)
    2c5c:	110000bf 	beqz	t0,2f5c <L800DAC14+0x18>
    2c60:	3c040000 	lui	a0,0x0
    2c64:	24840000 	addiu	a0,a0,0
    2c68:	8fa501dc 	lw	a1,476(sp)
    2c6c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2c70:	02803025 	move	a2,s4
    2c74:	8e6800bc 	lw	t0,188(s3)
    2c78:	100000b8 	b	2f5c <L800DAC14+0x18>
    2c7c:	00000000 	nop

00002c80 <L800DA950>:
    2c80:	8faf0394 	lw	t7,916(sp)
    2c84:	27aa01d0 	addiu	t2,sp,464
    2c88:	8deb0000 	lw	t3,0(t7)
    2c8c:	ad4b0000 	sw	t3,0(t2)
    2c90:	8dec0004 	lw	t4,4(t7)
    2c94:	ad4c0004 	sw	t4,4(t2)
    2c98:	8e6800bc 	lw	t0,188(s3)
    2c9c:	110000af 	beqz	t0,2f5c <L800DAC14+0x18>
    2ca0:	3c040000 	lui	a0,0x0
    2ca4:	24840000 	addiu	a0,a0,0
    2ca8:	8fa501d4 	lw	a1,468(sp)
    2cac:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2cb0:	02803025 	move	a2,s4
    2cb4:	8e6800bc 	lw	t0,188(s3)
    2cb8:	100000a8 	b	2f5c <L800DAC14+0x18>
    2cbc:	00000000 	nop

00002cc0 <L800DA990>:
    2cc0:	8fb80394 	lw	t8,916(sp)
    2cc4:	27ad01c8 	addiu	t5,sp,456
    2cc8:	8f190000 	lw	t9,0(t8)
    2ccc:	adb90000 	sw	t9,0(t5)
    2cd0:	8f0e0004 	lw	t6,4(t8)
    2cd4:	adae0004 	sw	t6,4(t5)
    2cd8:	8e6800bc 	lw	t0,188(s3)
    2cdc:	1100009f 	beqz	t0,2f5c <L800DAC14+0x18>
    2ce0:	3c040000 	lui	a0,0x0
    2ce4:	24840000 	addiu	a0,a0,0
    2ce8:	8fa501cc 	lw	a1,460(sp)
    2cec:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2cf0:	02803025 	move	a2,s4
    2cf4:	8e6800bc 	lw	t0,188(s3)
    2cf8:	10000098 	b	2f5c <L800DAC14+0x18>
    2cfc:	00000000 	nop

00002d00 <L800DA9D0>:
    2d00:	8faf0394 	lw	t7,916(sp)
    2d04:	27aa01c0 	addiu	t2,sp,448
    2d08:	8deb0000 	lw	t3,0(t7)
    2d0c:	ad4b0000 	sw	t3,0(t2)
    2d10:	8dec0004 	lw	t4,4(t7)
    2d14:	ad4c0004 	sw	t4,4(t2)
    2d18:	8e6800bc 	lw	t0,188(s3)
    2d1c:	1100008f 	beqz	t0,2f5c <L800DAC14+0x18>
    2d20:	3c040000 	lui	a0,0x0
    2d24:	24840000 	addiu	a0,a0,0
    2d28:	8fa501c4 	lw	a1,452(sp)
    2d2c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2d30:	02803025 	move	a2,s4
    2d34:	8e6800bc 	lw	t0,188(s3)
    2d38:	10000088 	b	2f5c <L800DAC14+0x18>
    2d3c:	00000000 	nop

00002d40 <L800DAA10>:
    2d40:	8fb80394 	lw	t8,916(sp)
    2d44:	27ad01b8 	addiu	t5,sp,440
    2d48:	8f190000 	lw	t9,0(t8)
    2d4c:	adb90000 	sw	t9,0(t5)
    2d50:	8f0e0004 	lw	t6,4(t8)
    2d54:	adae0004 	sw	t6,4(t5)
    2d58:	8e6800bc 	lw	t0,188(s3)
    2d5c:	1100007f 	beqz	t0,2f5c <L800DAC14+0x18>
    2d60:	3c040000 	lui	a0,0x0
    2d64:	24840000 	addiu	a0,a0,0
    2d68:	8fa501bc 	lw	a1,444(sp)
    2d6c:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2d70:	02803025 	move	a2,s4
    2d74:	8e6800bc 	lw	t0,188(s3)
    2d78:	10000078 	b	2f5c <L800DAC14+0x18>
    2d7c:	00000000 	nop

00002d80 <L800DAA50>:
    2d80:	8faf0394 	lw	t7,916(sp)
    2d84:	27aa01b0 	addiu	t2,sp,432
    2d88:	02602025 	move	a0,s3
    2d8c:	8deb0000 	lw	t3,0(t7)
    2d90:	ad4b0000 	sw	t3,0(t2)
    2d94:	8dec0004 	lw	t4,4(t7)
    2d98:	ad4c0004 	sw	t4,4(t2)
    2d9c:	97ad01b2 	lhu	t5,434(sp)
    2da0:	97ae0382 	lhu	t6,898(sp)
    2da4:	000dc400 	sll	t8,t5,0x10
    2da8:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2dac:	030e2825 	or	a1,t8,t6
    2db0:	93b901b1 	lbu	t9,433(sp)
    2db4:	00402825 	move	a1,v0
    2db8:	8fa301b4 	lw	v1,436(sp)
    2dbc:	5720000c 	bnezl	t9,2df0 <L800DAA50+0x70>
    2dc0:	8e6800bc 	lw	t0,188(s3)
    2dc4:	8e6800bc 	lw	t0,188(s3)
    2dc8:	11000064 	beqz	t0,2f5c <L800DAC14+0x18>
    2dcc:	3c040000 	lui	a0,0x0
    2dd0:	24840000 	addiu	a0,a0,0
    2dd4:	93a60381 	lbu	a2,897(sp)
    2dd8:	8fa70384 	lw	a3,900(sp)
    2ddc:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2de0:	afa30010 	sw	v1,16(sp)
    2de4:	1000005d 	b	2f5c <L800DAC14+0x18>
    2de8:	8e6800bc 	lw	t0,188(s3)
    2dec:	8e6800bc 	lw	t0,188(s3)
    2df0:	1100005a 	beqz	t0,2f5c <L800DAC14+0x18>
    2df4:	3c040000 	lui	a0,0x0
    2df8:	24840000 	addiu	a0,a0,0
    2dfc:	93a60381 	lbu	a2,897(sp)
    2e00:	8fa70384 	lw	a3,900(sp)
    2e04:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2e08:	afa30010 	sw	v1,16(sp)
    2e0c:	8e6800bc 	lw	t0,188(s3)
    2e10:	10000052 	b	2f5c <L800DAC14+0x18>
    2e14:	00000000 	nop
    2e18:	8faf0394 	lw	t7,916(sp)
    2e1c:	27aa0198 	addiu	t2,sp,408
    2e20:	24010006 	li	at,6
    2e24:	8deb0000 	lw	t3,0(t7)
    2e28:	ad4b0000 	sw	t3,0(t2)
    2e2c:	8dec0004 	lw	t4,4(t7)
    2e30:	ad4c0004 	sw	t4,4(t2)
    2e34:	93b1019b 	lbu	s1,411(sp)
    2e38:	12210005 	beq	s1,at,2e50 <L800DAA50+0xd0>
    2e3c:	24010008 	li	at,8
    2e40:	52210018 	beql	s1,at,2ea4 <L800DAA50+0x124>
    2e44:	8e6800bc 	lw	t0,188(s3)
    2e48:	10000022 	b	2ed4 <L800DAA50+0x154>
    2e4c:	8e6800bc 	lw	t0,188(s3)
    2e50:	8bb00199 	lwl	s0,409(sp)
    2e54:	9bb0019c 	lwr	s0,412(sp)
    2e58:	8e6d00bc 	lw	t5,188(s3)
    2e5c:	00108402 	srl	s0,s0,0x10
    2e60:	11a00006 	beqz	t5,2e7c <L800DAA50+0xfc>
    2e64:	00108082 	srl	s0,s0,0x2
    2e68:	3c040000 	lui	a0,0x0
    2e6c:	24840000 	addiu	a0,a0,0
    2e70:	02002825 	move	a1,s0
    2e74:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2e78:	8fa6019c 	lw	a2,412(sp)
    2e7c:	8fb8019c 	lw	t8,412(sp)
    2e80:	3c0100ff 	lui	at,0xff
    2e84:	3421ffff 	ori	at,at,0xffff
    2e88:	0010c880 	sll	t9,s0,0x2
    2e8c:	02795021 	addu	t2,s3,t9
    2e90:	03017024 	and	t6,t8,at
    2e94:	ad4e0000 	sw	t6,0(t2)
    2e98:	10000030 	b	2f5c <L800DAC14+0x18>
    2e9c:	8e6800bc 	lw	t0,188(s3)
    2ea0:	8e6800bc 	lw	t0,188(s3)
    2ea4:	1100002d 	beqz	t0,2f5c <L800DAC14+0x18>
    2ea8:	00000000 	nop
    2eac:	8ba50199 	lwl	a1,409(sp)
    2eb0:	9ba5019c 	lwr	a1,412(sp)
    2eb4:	3c040000 	lui	a0,0x0
    2eb8:	24840000 	addiu	a0,a0,0
    2ebc:	8fa6019c 	lw	a2,412(sp)
    2ec0:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2ec4:	00052c02 	srl	a1,a1,0x10
    2ec8:	10000024 	b	2f5c <L800DAC14+0x18>
    2ecc:	8e6800bc 	lw	t0,188(s3)
    2ed0:	8e6800bc 	lw	t0,188(s3)
    2ed4:	11000021 	beqz	t0,2f5c <L800DAC14+0x18>
    2ed8:	00000000 	nop
    2edc:	8ba60199 	lwl	a2,409(sp)
    2ee0:	9ba6019c 	lwr	a2,412(sp)
    2ee4:	3c040000 	lui	a0,0x0
    2ee8:	24840000 	addiu	a0,a0,0
    2eec:	93a5019b 	lbu	a1,411(sp)
    2ef0:	8fa7019c 	lw	a3,412(sp)
    2ef4:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2ef8:	00063402 	srl	a2,a2,0x10
    2efc:	8e6800bc 	lw	t0,188(s3)
    2f00:	10000016 	b	2f5c <L800DAC14+0x18>
    2f04:	00000000 	nop

00002f08 <L800DABD8>:
    2f08:	8fac0394 	lw	t4,916(sp)
    2f0c:	27af018c 	addiu	t7,sp,396
    2f10:	8d8d0000 	lw	t5,0(t4)
    2f14:	aded0000 	sw	t5,0(t7)
    2f18:	8d8b0004 	lw	t3,4(t4)
    2f1c:	adeb0004 	sw	t3,4(t7)
    2f20:	8e6800bc 	lw	t0,188(s3)
    2f24:	1100000d 	beqz	t0,2f5c <L800DAC14+0x18>
    2f28:	3c040000 	lui	a0,0x0
    2f2c:	24840000 	addiu	a0,a0,0
    2f30:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2f34:	8fa50190 	lw	a1,400(sp)
    2f38:	8e6800bc 	lw	t0,188(s3)
    2f3c:	10000007 	b	2f5c <L800DAC14+0x18>
    2f40:	00000000 	nop

00002f44 <L800DAC14>:
    2f44:	8e6800bc 	lw	t0,188(s3)
    2f48:	11000004 	beqz	t0,2f5c <L800DAC14+0x18>
    2f4c:	3c040000 	lui	a0,0x0
    2f50:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2f54:	24840000 	addiu	a0,a0,0
    2f58:	8e6800bc 	lw	t0,188(s3)
    2f5c:	11000003 	beqz	t0,2f6c <L800DAC14+0x28>
    2f60:	3c040000 	lui	a0,0x0
    2f64:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2f68:	24840000 	addiu	a0,a0,0
    2f6c:	8fb80394 	lw	t8,916(sp)
    2f70:	8fae0378 	lw	t6,888(sp)
    2f74:	27190008 	addiu	t9,t8,8
    2f78:	11c0f5fe 	beqz	t6,774 <UCodeDisas_Disassemble+0x44>
    2f7c:	afb90394 	sw	t9,916(sp)
    2f80:	8fbf0134 	lw	ra,308(sp)
    2f84:	8fb00110 	lw	s0,272(sp)
    2f88:	8fb10114 	lw	s1,276(sp)
    2f8c:	8fb20118 	lw	s2,280(sp)
    2f90:	8fb3011c 	lw	s3,284(sp)
    2f94:	8fb40120 	lw	s4,288(sp)
    2f98:	8fb50124 	lw	s5,292(sp)
    2f9c:	8fb60128 	lw	s6,296(sp)
    2fa0:	8fb7012c 	lw	s7,300(sp)
    2fa4:	8fbe0130 	lw	s8,304(sp)
    2fa8:	03e00008 	jr	ra
    2fac:	27bd0390 	addiu	sp,sp,912

00002fb0 <UCodeDisas_RegisterUCode>:
    2fb0:	ac8500c4 	sw	a1,196(a0)
    2fb4:	ac8600c8 	sw	a2,200(a0)
    2fb8:	03e00008 	jr	ra
    2fbc:	00000000 	nop

00002fc0 <UCodeDisas_SetCurUCode>:
    2fc0:	27bdffe8 	addiu	sp,sp,-24
    2fc4:	afbf0014 	sw	ra,20(sp)
    2fc8:	0c000000 	jal	0 <UCodeDisas_TranslateAddr>
    2fcc:	00000000 	nop
    2fd0:	8fbf0014 	lw	ra,20(sp)
    2fd4:	27bd0018 	addiu	sp,sp,24
    2fd8:	03e00008 	jr	ra
    2fdc:	00000000 	nop
