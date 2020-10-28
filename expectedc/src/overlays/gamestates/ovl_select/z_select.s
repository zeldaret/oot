
build/src/overlays/gamestates/ovl_select/z_select.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Select_LoadTitle>:
       0:	3c0e0000 	lui	t6,0x0
       4:	25ce0000 	addiu	t6,t6,0
       8:	240f01e8 	li	t7,488
       c:	ac800098 	sw	zero,152(a0)
      10:	ac8f0010 	sw	t7,16(a0)
      14:	03e00008 	jr	ra
      18:	ac8e000c 	sw	t6,12(a0)

0000001c <Select_LoadGame>:
      1c:	27bdffe0 	addiu	sp,sp,-32
      20:	afa40020 	sw	a0,32(sp)
      24:	afbf001c 	sw	ra,28(sp)
      28:	3c040000 	lui	a0,0x0
      2c:	afb00018 	sw	s0,24(sp)
      30:	afa50024 	sw	a1,36(sp)
      34:	0c000000 	jal	0 <Select_LoadTitle>
      38:	24840000 	addiu	a0,a0,0
      3c:	3c100000 	lui	s0,0x0
      40:	26100000 	addiu	s0,s0,0
      44:	3c040000 	lui	a0,0x0
      48:	24840008 	addiu	a0,a0,8
      4c:	0c000000 	jal	0 <Select_LoadTitle>
      50:	8e051354 	lw	a1,4948(s0)
      54:	3c040000 	lui	a0,0x0
      58:	0c000000 	jal	0 <Select_LoadTitle>
      5c:	24840024 	addiu	a0,a0,36
      60:	8e0e1354 	lw	t6,4948(s0)
      64:	240100ff 	li	at,255
      68:	55c1000a 	bnel	t6,at,94 <Select_LoadGame+0x78>
      6c:	3c041000 	lui	a0,0x1000
      70:	0c000000 	jal	0 <Select_LoadTitle>
      74:	00000000 	nop
      78:	820f0033 	lb	t7,51(s0)
      7c:	a2000033 	sb	zero,51(s0)
      80:	82180033 	lb	t8,51(s0)
      84:	a60013f4 	sh	zero,5108(s0)
      88:	a60f13f6 	sh	t7,5110(s0)
      8c:	a2180032 	sb	t8,50(s0)
      90:	3c041000 	lui	a0,0x1000
      94:	a20013e6 	sb	zero,5094(s0)
      98:	a20013e5 	sb	zero,5093(s0)
      9c:	a20013e4 	sb	zero,5092(s0)
      a0:	a20013e3 	sb	zero,5091(s0)
      a4:	a20013e2 	sb	zero,5090(s0)
      a8:	a60013ec 	sh	zero,5100(s0)
      ac:	a60013ea 	sh	zero,5098(s0)
      b0:	a60013e8 	sh	zero,5096(s0)
      b4:	a20013e7 	sb	zero,5095(s0)
      b8:	0c000000 	jal	0 <Select_LoadTitle>
      bc:	348400ff 	ori	a0,a0,0xff
      c0:	8faa0024 	lw	t2,36(sp)
      c4:	240200ff 	li	v0,255
      c8:	8fa30020 	lw	v1,32(sp)
      cc:	240bffff 	li	t3,-1
      d0:	240c0001 	li	t4,1
      d4:	ae001364 	sw	zero,4964(s0)
      d8:	a60b1378 	sh	t3,4984(s0)
      dc:	a20213e0 	sb	v0,5088(s0)
      e0:	a20213e1 	sb	v0,5089(s0)
      e4:	a20c13c7 	sb	t4,5063(s0)
      e8:	3c010000 	lui	at,0x0
      ec:	ae0a0000 	sw	t2,0(s0)
      f0:	a0200000 	sb	zero,0(at)
      f4:	3c0d0000 	lui	t5,0x0
      f8:	3c0e0001 	lui	t6,0x1
      fc:	35ce2518 	ori	t6,t6,0x2518
     100:	25ad0000 	addiu	t5,t5,0
     104:	ac600098 	sw	zero,152(v1)
     108:	ac6d000c 	sw	t5,12(v1)
     10c:	ac6e0010 	sw	t6,16(v1)
     110:	8fbf001c 	lw	ra,28(sp)
     114:	8fb00018 	lw	s0,24(sp)
     118:	27bd0020 	addiu	sp,sp,32
     11c:	03e00008 	jr	ra
     120:	00000000 	nop

00000124 <Select_UpdateMenu>:
     124:	27bdffc0 	addiu	sp,sp,-64
     128:	afbf0024 	sw	ra,36(sp)
     12c:	afb00020 	sw	s0,32(sp)
     130:	8c8e021c 	lw	t6,540(a0)
     134:	00808025 	move	s0,a0
     138:	55c0017d 	bnezl	t6,730 <Select_UpdateMenu+0x60c>
     13c:	96180020 	lhu	t8,32(s0)
     140:	26090014 	addiu	t1,s0,20
     144:	9522000c 	lhu	v0,12(t1)
     148:	3c01ffff 	lui	at,0xffff
     14c:	34217fff 	ori	at,at,0x7fff
     150:	00417827 	nor	t7,v0,at
     154:	11e00004 	beqz	t7,168 <Select_UpdateMenu+0x44>
     158:	2401efff 	li	at,-4097
     15c:	0041c027 	nor	t8,v0,at
     160:	57000011 	bnezl	t8,1a8 <Select_UpdateMenu+0x84>
     164:	2401bfff 	li	at,-16385
     168:	8e0b01d8 	lw	t3,472(s0)
     16c:	8e1901d4 	lw	t9,468(s0)
     170:	000b6080 	sll	t4,t3,0x2
     174:	018b6023 	subu	t4,t4,t3
     178:	000c6080 	sll	t4,t4,0x2
     17c:	032c1821 	addu	v1,t9,t4
     180:	8c660004 	lw	a2,4(v1)
     184:	50c00008 	beqzl	a2,1a8 <Select_UpdateMenu+0x84>
     188:	2401bfff 	li	at,-16385
     18c:	8c650008 	lw	a1,8(v1)
     190:	afa9002c 	sw	t1,44(sp)
     194:	00c0f809 	jalr	a2
     198:	02002025 	move	a0,s0
     19c:	8fa9002c 	lw	t1,44(sp)
     1a0:	9522000c 	lhu	v0,12(t1)
     1a4:	2401bfff 	li	at,-16385
     1a8:	00416827 	nor	t5,v0,at
     1ac:	15a00010 	bnez	t5,1f0 <Select_UpdateMenu+0xcc>
     1b0:	3c030000 	lui	v1,0x0
     1b4:	24630000 	addiu	v1,v1,0
     1b8:	8c6e0004 	lw	t6,4(v1)
     1bc:	24010011 	li	at,17
     1c0:	24020011 	li	v0,17
     1c4:	11c00003 	beqz	t6,1d4 <Select_UpdateMenu+0xb0>
     1c8:	240a0001 	li	t2,1
     1cc:	10000001 	b	1d4 <Select_UpdateMenu+0xb0>
     1d0:	24020005 	li	v0,5
     1d4:	54410005 	bnel	v0,at,1ec <Select_UpdateMenu+0xc8>
     1d8:	ac600004 	sw	zero,4(v1)
     1dc:	ac6a0004 	sw	t2,4(v1)
     1e0:	10000003 	b	1f0 <Select_UpdateMenu+0xcc>
     1e4:	9522000c 	lhu	v0,12(t1)
     1e8:	ac600004 	sw	zero,4(v1)
     1ec:	9522000c 	lhu	v0,12(t1)
     1f0:	2401dfff 	li	at,-8193
     1f4:	3c030000 	lui	v1,0x0
     1f8:	00417827 	nor	t7,v0,at
     1fc:	24630000 	addiu	v1,v1,0
     200:	15e00042 	bnez	t7,30c <Select_UpdateMenu+0x1e8>
     204:	240a0001 	li	t2,1
     208:	8c620008 	lw	v0,8(v1)
     20c:	34068000 	li	a2,0x8000
     210:	14c20003 	bne	a2,v0,220 <Select_UpdateMenu+0xfc>
     214:	00000000 	nop
     218:	10000080 	b	41c <Select_UpdateMenu+0x2f8>
     21c:	ac600008 	sw	zero,8(v1)
     220:	14400004 	bnez	v0,234 <Select_UpdateMenu+0x110>
     224:	3404fff0 	li	a0,0xfff0
     228:	3404fff0 	li	a0,0xfff0
     22c:	1000007b 	b	41c <Select_UpdateMenu+0x2f8>
     230:	ac640008 	sw	a0,8(v1)
     234:	14820004 	bne	a0,v0,248 <Select_UpdateMenu+0x124>
     238:	3405fff1 	li	a1,0xfff1
     23c:	3405fff1 	li	a1,0xfff1
     240:	10000076 	b	41c <Select_UpdateMenu+0x2f8>
     244:	ac650008 	sw	a1,8(v1)
     248:	14a20004 	bne	a1,v0,25c <Select_UpdateMenu+0x138>
     24c:	3404fff2 	li	a0,0xfff2
     250:	3404fff2 	li	a0,0xfff2
     254:	10000071 	b	41c <Select_UpdateMenu+0x2f8>
     258:	ac640008 	sw	a0,8(v1)
     25c:	14820004 	bne	a0,v0,270 <Select_UpdateMenu+0x14c>
     260:	3405fff3 	li	a1,0xfff3
     264:	3405fff3 	li	a1,0xfff3
     268:	1000006c 	b	41c <Select_UpdateMenu+0x2f8>
     26c:	ac650008 	sw	a1,8(v1)
     270:	14a20004 	bne	a1,v0,284 <Select_UpdateMenu+0x160>
     274:	3404fff4 	li	a0,0xfff4
     278:	3404fff4 	li	a0,0xfff4
     27c:	10000067 	b	41c <Select_UpdateMenu+0x2f8>
     280:	ac640008 	sw	a0,8(v1)
     284:	14820004 	bne	a0,v0,298 <Select_UpdateMenu+0x174>
     288:	3405fff5 	li	a1,0xfff5
     28c:	3405fff5 	li	a1,0xfff5
     290:	10000062 	b	41c <Select_UpdateMenu+0x2f8>
     294:	ac650008 	sw	a1,8(v1)
     298:	14a20004 	bne	a1,v0,2ac <Select_UpdateMenu+0x188>
     29c:	3404fff6 	li	a0,0xfff6
     2a0:	3404fff6 	li	a0,0xfff6
     2a4:	1000005d 	b	41c <Select_UpdateMenu+0x2f8>
     2a8:	ac640008 	sw	a0,8(v1)
     2ac:	14820004 	bne	a0,v0,2c0 <Select_UpdateMenu+0x19c>
     2b0:	3405fff7 	li	a1,0xfff7
     2b4:	3405fff7 	li	a1,0xfff7
     2b8:	10000058 	b	41c <Select_UpdateMenu+0x2f8>
     2bc:	ac650008 	sw	a1,8(v1)
     2c0:	14a20004 	bne	a1,v0,2d4 <Select_UpdateMenu+0x1b0>
     2c4:	3404fff8 	li	a0,0xfff8
     2c8:	3404fff8 	li	a0,0xfff8
     2cc:	10000053 	b	41c <Select_UpdateMenu+0x2f8>
     2d0:	ac640008 	sw	a0,8(v1)
     2d4:	14820004 	bne	a0,v0,2e8 <Select_UpdateMenu+0x1c4>
     2d8:	3405fff9 	li	a1,0xfff9
     2dc:	3405fff9 	li	a1,0xfff9
     2e0:	1000004e 	b	41c <Select_UpdateMenu+0x2f8>
     2e4:	ac650008 	sw	a1,8(v1)
     2e8:	14a20004 	bne	a1,v0,2fc <Select_UpdateMenu+0x1d8>
     2ec:	3401fffa 	li	at,0xfffa
     2f0:	3418fffa 	li	t8,0xfffa
     2f4:	10000049 	b	41c <Select_UpdateMenu+0x2f8>
     2f8:	ac780008 	sw	t8,8(v1)
     2fc:	54410048 	bnel	v0,at,420 <Select_UpdateMenu+0x2fc>
     300:	8c6c0008 	lw	t4,8(v1)
     304:	10000045 	b	41c <Select_UpdateMenu+0x2f8>
     308:	ac660008 	sw	a2,8(v1)
     30c:	2401ffef 	li	at,-17
     310:	00415827 	nor	t3,v0,at
     314:	55600042 	bnezl	t3,420 <Select_UpdateMenu+0x2fc>
     318:	8c6c0008 	lw	t4,8(v1)
     31c:	8c620008 	lw	v0,8(v1)
     320:	34068000 	li	a2,0x8000
     324:	14c20004 	bne	a2,v0,338 <Select_UpdateMenu+0x214>
     328:	00000000 	nop
     32c:	3419fffa 	li	t9,0xfffa
     330:	1000003a 	b	41c <Select_UpdateMenu+0x2f8>
     334:	ac790008 	sw	t9,8(v1)
     338:	54400004 	bnezl	v0,34c <Select_UpdateMenu+0x228>
     33c:	3404fff0 	li	a0,0xfff0
     340:	10000036 	b	41c <Select_UpdateMenu+0x2f8>
     344:	ac660008 	sw	a2,8(v1)
     348:	3404fff0 	li	a0,0xfff0
     34c:	54820004 	bnel	a0,v0,360 <Select_UpdateMenu+0x23c>
     350:	3405fff1 	li	a1,0xfff1
     354:	10000031 	b	41c <Select_UpdateMenu+0x2f8>
     358:	ac600008 	sw	zero,8(v1)
     35c:	3405fff1 	li	a1,0xfff1
     360:	54a20004 	bnel	a1,v0,374 <Select_UpdateMenu+0x250>
     364:	3404fff2 	li	a0,0xfff2
     368:	1000002c 	b	41c <Select_UpdateMenu+0x2f8>
     36c:	ac640008 	sw	a0,8(v1)
     370:	3404fff2 	li	a0,0xfff2
     374:	54820004 	bnel	a0,v0,388 <Select_UpdateMenu+0x264>
     378:	3405fff3 	li	a1,0xfff3
     37c:	10000027 	b	41c <Select_UpdateMenu+0x2f8>
     380:	ac650008 	sw	a1,8(v1)
     384:	3405fff3 	li	a1,0xfff3
     388:	54a20004 	bnel	a1,v0,39c <Select_UpdateMenu+0x278>
     38c:	3404fff4 	li	a0,0xfff4
     390:	10000022 	b	41c <Select_UpdateMenu+0x2f8>
     394:	ac640008 	sw	a0,8(v1)
     398:	3404fff4 	li	a0,0xfff4
     39c:	54820004 	bnel	a0,v0,3b0 <Select_UpdateMenu+0x28c>
     3a0:	3405fff5 	li	a1,0xfff5
     3a4:	1000001d 	b	41c <Select_UpdateMenu+0x2f8>
     3a8:	ac650008 	sw	a1,8(v1)
     3ac:	3405fff5 	li	a1,0xfff5
     3b0:	54a20004 	bnel	a1,v0,3c4 <Select_UpdateMenu+0x2a0>
     3b4:	3404fff6 	li	a0,0xfff6
     3b8:	10000018 	b	41c <Select_UpdateMenu+0x2f8>
     3bc:	ac640008 	sw	a0,8(v1)
     3c0:	3404fff6 	li	a0,0xfff6
     3c4:	54820004 	bnel	a0,v0,3d8 <Select_UpdateMenu+0x2b4>
     3c8:	3405fff7 	li	a1,0xfff7
     3cc:	10000013 	b	41c <Select_UpdateMenu+0x2f8>
     3d0:	ac650008 	sw	a1,8(v1)
     3d4:	3405fff7 	li	a1,0xfff7
     3d8:	54a20004 	bnel	a1,v0,3ec <Select_UpdateMenu+0x2c8>
     3dc:	3404fff8 	li	a0,0xfff8
     3e0:	1000000e 	b	41c <Select_UpdateMenu+0x2f8>
     3e4:	ac640008 	sw	a0,8(v1)
     3e8:	3404fff8 	li	a0,0xfff8
     3ec:	54820004 	bnel	a0,v0,400 <Select_UpdateMenu+0x2dc>
     3f0:	3405fff9 	li	a1,0xfff9
     3f4:	10000009 	b	41c <Select_UpdateMenu+0x2f8>
     3f8:	ac650008 	sw	a1,8(v1)
     3fc:	3405fff9 	li	a1,0xfff9
     400:	14a20003 	bne	a1,v0,410 <Select_UpdateMenu+0x2ec>
     404:	3401fffa 	li	at,0xfffa
     408:	10000004 	b	41c <Select_UpdateMenu+0x2f8>
     40c:	ac640008 	sw	a0,8(v1)
     410:	54410003 	bnel	v0,at,420 <Select_UpdateMenu+0x2fc>
     414:	8c6c0008 	lw	t4,8(v1)
     418:	ac650008 	sw	a1,8(v1)
     41c:	8c6c0008 	lw	t4,8(v1)
     420:	ac600010 	sw	zero,16(v1)
     424:	55800003 	bnezl	t4,434 <Select_UpdateMenu+0x310>
     428:	9522000c 	lhu	v0,12(t1)
     42c:	ac6a0010 	sw	t2,16(v1)
     430:	9522000c 	lhu	v0,12(t1)
     434:	2401fff7 	li	at,-9
     438:	00416827 	nor	t5,v0,at
     43c:	15a00005 	bnez	t5,454 <Select_UpdateMenu+0x330>
     440:	2401fffb 	li	at,-5
     444:	8e0e0208 	lw	t6,520(s0)
     448:	25cfffff 	addiu	t7,t6,-1
     44c:	ae0f0208 	sw	t7,520(s0)
     450:	9522000c 	lhu	v0,12(t1)
     454:	0041c027 	nor	t8,v0,at
     458:	17000005 	bnez	t8,470 <Select_UpdateMenu+0x34c>
     45c:	2401f7ff 	li	at,-2049
     460:	8e0b0208 	lw	t3,520(s0)
     464:	25790001 	addiu	t9,t3,1
     468:	ae190208 	sw	t9,520(s0)
     46c:	9522000c 	lhu	v0,12(t1)
     470:	00416027 	nor	t4,v0,at
     474:	5580001e 	bnezl	t4,4f0 <Select_UpdateMenu+0x3cc>
     478:	952c0000 	lhu	t4,0(t1)
     47c:	8e0d022c 	lw	t5,556(s0)
     480:	3c180000 	lui	t8,0x0
     484:	240f0014 	li	t7,20
     488:	154d0002 	bne	t2,t5,494 <Select_UpdateMenu+0x370>
     48c:	27180000 	addiu	t8,t8,0
     490:	ae000224 	sw	zero,548(s0)
     494:	8e0e0224 	lw	t6,548(s0)
     498:	55c00015 	bnezl	t6,4f0 <Select_UpdateMenu+0x3cc>
     49c:	952c0000 	lhu	t4,0(t1)
     4a0:	3c070000 	lui	a3,0x0
     4a4:	ae0f0224 	sw	t7,548(s0)
     4a8:	ae0a022c 	sw	t2,556(s0)
     4ac:	24e70000 	addiu	a3,a3,0
     4b0:	3c050000 	lui	a1,0x0
     4b4:	24a50000 	addiu	a1,a1,0
     4b8:	afa70010 	sw	a3,16(sp)
     4bc:	afa9002c 	sw	t1,44(sp)
     4c0:	afb80014 	sw	t8,20(sp)
     4c4:	24041800 	li	a0,6144
     4c8:	0c000000 	jal	0 <Select_LoadTitle>
     4cc:	24060004 	li	a2,4
     4d0:	3c080000 	lui	t0,0x0
     4d4:	25080000 	addiu	t0,t0,0
     4d8:	8d0b0000 	lw	t3,0(t0)
     4dc:	8fa9002c 	lw	t1,44(sp)
     4e0:	240a0001 	li	t2,1
     4e4:	85790110 	lh	t9,272(t3)
     4e8:	ae190220 	sw	t9,544(s0)
     4ec:	952c0000 	lhu	t4,0(t1)
     4f0:	2401f7ff 	li	at,-2049
     4f4:	01816827 	nor	t5,t4,at
     4f8:	55a0001a 	bnezl	t5,564 <Select_UpdateMenu+0x440>
     4fc:	952c000c 	lhu	t4,12(t1)
     500:	8e0e0224 	lw	t6,548(s0)
     504:	3c0f0000 	lui	t7,0x0
     508:	25ef0000 	addiu	t7,t7,0
     50c:	55c00015 	bnezl	t6,564 <Select_UpdateMenu+0x440>
     510:	952c000c 	lhu	t4,12(t1)
     514:	3c070000 	lui	a3,0x0
     518:	24e70000 	addiu	a3,a3,0
     51c:	3c050000 	lui	a1,0x0
     520:	24a50000 	addiu	a1,a1,0
     524:	afa70010 	sw	a3,16(sp)
     528:	24041800 	li	a0,6144
     52c:	24060004 	li	a2,4
     530:	afaf0014 	sw	t7,20(sp)
     534:	0c000000 	jal	0 <Select_LoadTitle>
     538:	afa9002c 	sw	t1,44(sp)
     53c:	3c080000 	lui	t0,0x0
     540:	25080000 	addiu	t0,t0,0
     544:	8d180000 	lw	t8,0(t0)
     548:	8fa9002c 	lw	t1,44(sp)
     54c:	240a0001 	li	t2,1
     550:	870b0110 	lh	t3,272(t8)
     554:	000bc880 	sll	t9,t3,0x2
     558:	032bc823 	subu	t9,t9,t3
     55c:	ae190220 	sw	t9,544(s0)
     560:	952c000c 	lhu	t4,12(t1)
     564:	2401fbff 	li	at,-1025
     568:	01816827 	nor	t5,t4,at
     56c:	55a0001e 	bnezl	t5,5e8 <Select_UpdateMenu+0x4c4>
     570:	952e0000 	lhu	t6,0(t1)
     574:	8e0e0230 	lw	t6,560(s0)
     578:	3c0b0000 	lui	t3,0x0
     57c:	24180014 	li	t8,20
     580:	154e0002 	bne	t2,t6,58c <Select_UpdateMenu+0x468>
     584:	256b0000 	addiu	t3,t3,0
     588:	ae000228 	sw	zero,552(s0)
     58c:	8e0f0228 	lw	t7,552(s0)
     590:	55e00015 	bnezl	t7,5e8 <Select_UpdateMenu+0x4c4>
     594:	952e0000 	lhu	t6,0(t1)
     598:	3c070000 	lui	a3,0x0
     59c:	ae180228 	sw	t8,552(s0)
     5a0:	ae0a0230 	sw	t2,560(s0)
     5a4:	24e70000 	addiu	a3,a3,0
     5a8:	3c050000 	lui	a1,0x0
     5ac:	24a50000 	addiu	a1,a1,0
     5b0:	afa70010 	sw	a3,16(sp)
     5b4:	afa9002c 	sw	t1,44(sp)
     5b8:	afab0014 	sw	t3,20(sp)
     5bc:	24041800 	li	a0,6144
     5c0:	0c000000 	jal	0 <Select_LoadTitle>
     5c4:	24060004 	li	a2,4
     5c8:	3c080000 	lui	t0,0x0
     5cc:	25080000 	addiu	t0,t0,0
     5d0:	8d190000 	lw	t9,0(t0)
     5d4:	8fa9002c 	lw	t1,44(sp)
     5d8:	872c0110 	lh	t4,272(t9)
     5dc:	000c6823 	negu	t5,t4
     5e0:	ae0d0220 	sw	t5,544(s0)
     5e4:	952e0000 	lhu	t6,0(t1)
     5e8:	2401fbff 	li	at,-1025
     5ec:	01c17827 	nor	t7,t6,at
     5f0:	55e0001a 	bnezl	t7,65c <Select_UpdateMenu+0x538>
     5f4:	9522000c 	lhu	v0,12(t1)
     5f8:	8e180228 	lw	t8,552(s0)
     5fc:	3c0b0000 	lui	t3,0x0
     600:	256b0000 	addiu	t3,t3,0
     604:	57000015 	bnezl	t8,65c <Select_UpdateMenu+0x538>
     608:	9522000c 	lhu	v0,12(t1)
     60c:	3c070000 	lui	a3,0x0
     610:	24e70000 	addiu	a3,a3,0
     614:	3c050000 	lui	a1,0x0
     618:	24a50000 	addiu	a1,a1,0
     61c:	afa70010 	sw	a3,16(sp)
     620:	24041800 	li	a0,6144
     624:	24060004 	li	a2,4
     628:	afab0014 	sw	t3,20(sp)
     62c:	0c000000 	jal	0 <Select_LoadTitle>
     630:	afa9002c 	sw	t1,44(sp)
     634:	3c080000 	lui	t0,0x0
     638:	25080000 	addiu	t0,t0,0
     63c:	8d190000 	lw	t9,0(t0)
     640:	8fa9002c 	lw	t1,44(sp)
     644:	872c0110 	lh	t4,272(t9)
     648:	000c6823 	negu	t5,t4
     64c:	000d7080 	sll	t6,t5,0x2
     650:	01cd7023 	subu	t6,t6,t5
     654:	ae0e0220 	sw	t6,544(s0)
     658:	9522000c 	lhu	v0,12(t1)
     65c:	2403fdff 	li	v1,-513
     660:	3c0c0000 	lui	t4,0x0
     664:	00437827 	nor	t7,v0,v1
     668:	11e00005 	beqz	t7,680 <Select_UpdateMenu+0x55c>
     66c:	258c0000 	addiu	t4,t4,0
     670:	95380000 	lhu	t8,0(t1)
     674:	03035827 	nor	t3,t8,v1
     678:	55600014 	bnezl	t3,6cc <Select_UpdateMenu+0x5a8>
     67c:	2403feff 	li	v1,-257
     680:	3c190000 	lui	t9,0x0
     684:	27390000 	addiu	t9,t9,0
     688:	3c050000 	lui	a1,0x0
     68c:	24a50000 	addiu	a1,a1,0
     690:	03203825 	move	a3,t9
     694:	afb90010 	sw	t9,16(sp)
     698:	24041800 	li	a0,6144
     69c:	24060004 	li	a2,4
     6a0:	afac0014 	sw	t4,20(sp)
     6a4:	0c000000 	jal	0 <Select_LoadTitle>
     6a8:	afa9002c 	sw	t1,44(sp)
     6ac:	3c080000 	lui	t0,0x0
     6b0:	25080000 	addiu	t0,t0,0
     6b4:	8d0d0000 	lw	t5,0(t0)
     6b8:	8fa9002c 	lw	t1,44(sp)
     6bc:	85ae0110 	lh	t6,272(t5)
     6c0:	ae0e0220 	sw	t6,544(s0)
     6c4:	9522000c 	lhu	v0,12(t1)
     6c8:	2403feff 	li	v1,-257
     6cc:	00437827 	nor	t7,v0,v1
     6d0:	11e00005 	beqz	t7,6e8 <Select_UpdateMenu+0x5c4>
     6d4:	3c0c0000 	lui	t4,0x0
     6d8:	95380000 	lhu	t8,0(t1)
     6dc:	03035827 	nor	t3,t8,v1
     6e0:	55600013 	bnezl	t3,730 <Select_UpdateMenu+0x60c>
     6e4:	96180020 	lhu	t8,32(s0)
     6e8:	3c190000 	lui	t9,0x0
     6ec:	27390000 	addiu	t9,t9,0
     6f0:	3c050000 	lui	a1,0x0
     6f4:	258c0000 	addiu	t4,t4,0
     6f8:	afac0014 	sw	t4,20(sp)
     6fc:	24a50000 	addiu	a1,a1,0
     700:	03203825 	move	a3,t9
     704:	afb90010 	sw	t9,16(sp)
     708:	24041800 	li	a0,6144
     70c:	0c000000 	jal	0 <Select_LoadTitle>
     710:	24060004 	li	a2,4
     714:	3c080000 	lui	t0,0x0
     718:	25080000 	addiu	t0,t0,0
     71c:	8d0d0000 	lw	t5,0(t0)
     720:	85ae0110 	lh	t6,272(t5)
     724:	000e7823 	negu	t7,t6
     728:	ae0f0220 	sw	t7,544(s0)
     72c:	96180020 	lhu	t8,32(s0)
     730:	2401ffdf 	li	at,-33
     734:	3c080000 	lui	t0,0x0
     738:	03015827 	nor	t3,t8,at
     73c:	1560000e 	bnez	t3,778 <Select_UpdateMenu+0x654>
     740:	25080000 	addiu	t0,t0,0
     744:	8e1901dc 	lw	t9,476(s0)
     748:	24010007 	li	at,7
     74c:	272c0001 	addiu	t4,t9,1
     750:	258e0007 	addiu	t6,t4,7
     754:	01c1001a 	div	zero,t6,at
     758:	0000c010 	mfhi	t8
     75c:	ae0c01dc 	sw	t4,476(s0)
     760:	00185880 	sll	t3,t8,0x2
     764:	ae1801dc 	sw	t8,476(s0)
     768:	020bc821 	addu	t9,s0,t3
     76c:	8f2201e0 	lw	v0,480(t9)
     770:	ae02020c 	sw	v0,524(s0)
     774:	ae0201d8 	sw	v0,472(s0)
     778:	8e0c021c 	lw	t4,540(s0)
     77c:	8e0d0220 	lw	t5,544(s0)
     780:	018d7021 	addu	t6,t4,t5
     784:	29c1fff9 	slti	at,t6,-7
     788:	ae0e021c 	sw	t6,540(s0)
     78c:	10200036 	beqz	at,868 <Select_UpdateMenu+0x744>
     790:	01c07825 	move	t7,t6
     794:	8e0201d0 	lw	v0,464(s0)
     798:	8e1801d8 	lw	t8,472(s0)
     79c:	8e03020c 	lw	v1,524(s0)
     7a0:	ae000220 	sw	zero,544(s0)
     7a4:	270b0001 	addiu	t3,t8,1
     7a8:	01626021 	addu	t4,t3,v0
     7ac:	0182001a 	div	zero,t4,v0
     7b0:	00627021 	addu	t6,v1,v0
     7b4:	25cf0013 	addiu	t7,t6,19
     7b8:	00006810 	mfhi	t5
     7bc:	ae0b01d8 	sw	t3,472(s0)
     7c0:	ae0d01d8 	sw	t5,472(s0)
     7c4:	01e2001a 	div	zero,t7,v0
     7c8:	0160c825 	move	t9,t3
     7cc:	8e0b01d8 	lw	t3,472(s0)
     7d0:	0000c010 	mfhi	t8
     7d4:	ae00021c 	sw	zero,540(s0)
     7d8:	14400002 	bnez	v0,7e4 <Select_UpdateMenu+0x6c0>
     7dc:	00000000 	nop
     7e0:	0007000d 	break	0x7
     7e4:	2401ffff 	li	at,-1
     7e8:	14410004 	bne	v0,at,7fc <Select_UpdateMenu+0x6d8>
     7ec:	3c018000 	lui	at,0x8000
     7f0:	15810002 	bne	t4,at,7fc <Select_UpdateMenu+0x6d8>
     7f4:	00000000 	nop
     7f8:	0006000d 	break	0x6
     7fc:	14400002 	bnez	v0,808 <Select_UpdateMenu+0x6e4>
     800:	00000000 	nop
     804:	0007000d 	break	0x7
     808:	2401ffff 	li	at,-1
     80c:	14410004 	bne	v0,at,820 <Select_UpdateMenu+0x6fc>
     810:	3c018000 	lui	at,0x8000
     814:	15e10002 	bne	t7,at,820 <Select_UpdateMenu+0x6fc>
     818:	00000000 	nop
     81c:	0006000d 	break	0x6
     820:	570b0012 	bnel	t8,t3,86c <Select_UpdateMenu+0x748>
     824:	8e0f021c 	lw	t7,540(s0)
     828:	24790001 	addiu	t9,v1,1
     82c:	03226821 	addu	t5,t9,v0
     830:	01a2001a 	div	zero,t5,v0
     834:	00007010 	mfhi	t6
     838:	ae19020c 	sw	t9,524(s0)
     83c:	ae0e020c 	sw	t6,524(s0)
     840:	03206025 	move	t4,t9
     844:	14400002 	bnez	v0,850 <Select_UpdateMenu+0x72c>
     848:	00000000 	nop
     84c:	0007000d 	break	0x7
     850:	2401ffff 	li	at,-1
     854:	14410004 	bne	v0,at,868 <Select_UpdateMenu+0x744>
     858:	3c018000 	lui	at,0x8000
     85c:	15a10002 	bne	t5,at,868 <Select_UpdateMenu+0x744>
     860:	00000000 	nop
     864:	0006000d 	break	0x6
     868:	8e0f021c 	lw	t7,540(s0)
     86c:	8e0401d8 	lw	a0,472(s0)
     870:	8e03020c 	lw	v1,524(s0)
     874:	29e10008 	slti	at,t7,8
     878:	5420004a 	bnezl	at,9a4 <Select_UpdateMenu+0x880>
     87c:	8e0201d0 	lw	v0,464(s0)
     880:	ae000220 	sw	zero,544(s0)
     884:	14640014 	bne	v1,a0,8d8 <Select_UpdateMenu+0x7b4>
     888:	ae00021c 	sw	zero,540(s0)
     88c:	8e0201d0 	lw	v0,464(s0)
     890:	2478fffe 	addiu	t8,v1,-2
     894:	ae18020c 	sw	t8,524(s0)
     898:	0302c821 	addu	t9,t8,v0
     89c:	0322001a 	div	zero,t9,v0
     8a0:	00006010 	mfhi	t4
     8a4:	ae0c020c 	sw	t4,524(s0)
     8a8:	01801825 	move	v1,t4
     8ac:	03005825 	move	t3,t8
     8b0:	8e0401d8 	lw	a0,472(s0)
     8b4:	14400002 	bnez	v0,8c0 <Select_UpdateMenu+0x79c>
     8b8:	00000000 	nop
     8bc:	0007000d 	break	0x7
     8c0:	2401ffff 	li	at,-1
     8c4:	14410004 	bne	v0,at,8d8 <Select_UpdateMenu+0x7b4>
     8c8:	3c018000 	lui	at,0x8000
     8cc:	17210002 	bne	t9,at,8d8 <Select_UpdateMenu+0x7b4>
     8d0:	00000000 	nop
     8d4:	0006000d 	break	0x6
     8d8:	8e0201d0 	lw	v0,464(s0)
     8dc:	248dffff 	addiu	t5,a0,-1
     8e0:	ae0d01d8 	sw	t5,472(s0)
     8e4:	01a27821 	addu	t7,t5,v0
     8e8:	01e2001a 	div	zero,t7,v0
     8ec:	00625821 	addu	t3,v1,v0
     8f0:	0000c010 	mfhi	t8
     8f4:	03002025 	move	a0,t8
     8f8:	ae1801d8 	sw	t8,472(s0)
     8fc:	0162001a 	div	zero,t3,v0
     900:	0000c810 	mfhi	t9
     904:	01a07025 	move	t6,t5
     908:	14400002 	bnez	v0,914 <Select_UpdateMenu+0x7f0>
     90c:	00000000 	nop
     910:	0007000d 	break	0x7
     914:	2401ffff 	li	at,-1
     918:	14410004 	bne	v0,at,92c <Select_UpdateMenu+0x808>
     91c:	3c018000 	lui	at,0x8000
     920:	15e10002 	bne	t7,at,92c <Select_UpdateMenu+0x808>
     924:	00000000 	nop
     928:	0006000d 	break	0x6
     92c:	14400002 	bnez	v0,938 <Select_UpdateMenu+0x814>
     930:	00000000 	nop
     934:	0007000d 	break	0x7
     938:	2401ffff 	li	at,-1
     93c:	14410004 	bne	v0,at,950 <Select_UpdateMenu+0x82c>
     940:	3c018000 	lui	at,0x8000
     944:	15610002 	bne	t3,at,950 <Select_UpdateMenu+0x82c>
     948:	00000000 	nop
     94c:	0006000d 	break	0x6
     950:	57240014 	bnel	t9,a0,9a4 <Select_UpdateMenu+0x880>
     954:	8e0201d0 	lw	v0,464(s0)
     958:	246cffff 	addiu	t4,v1,-1
     95c:	01827021 	addu	t6,t4,v0
     960:	01c2001a 	div	zero,t6,v0
     964:	00007810 	mfhi	t7
     968:	ae0c020c 	sw	t4,524(s0)
     96c:	ae0f020c 	sw	t7,524(s0)
     970:	01e01825 	move	v1,t7
     974:	01806825 	move	t5,t4
     978:	14400002 	bnez	v0,984 <Select_UpdateMenu+0x860>
     97c:	00000000 	nop
     980:	0007000d 	break	0x7
     984:	2401ffff 	li	at,-1
     988:	14410004 	bne	v0,at,99c <Select_UpdateMenu+0x878>
     98c:	3c018000 	lui	at,0x8000
     990:	15c10002 	bne	t6,at,99c <Select_UpdateMenu+0x878>
     994:	00000000 	nop
     998:	0006000d 	break	0x6
     99c:	8e0401d8 	lw	a0,472(s0)
     9a0:	8e0201d0 	lw	v0,464(s0)
     9a4:	0082c021 	addu	t8,a0,v0
     9a8:	0302001a 	div	zero,t8,v0
     9ac:	00005810 	mfhi	t3
     9b0:	0062c821 	addu	t9,v1,v0
     9b4:	ae0b01d8 	sw	t3,472(s0)
     9b8:	0322001a 	div	zero,t9,v0
     9bc:	00006010 	mfhi	t4
     9c0:	ae0c020c 	sw	t4,524(s0)
     9c4:	8d0e0000 	lw	t6,0(t0)
     9c8:	8e0d01d8 	lw	t5,472(s0)
     9cc:	14400002 	bnez	v0,9d8 <Select_UpdateMenu+0x8b4>
     9d0:	00000000 	nop
     9d4:	0007000d 	break	0x7
     9d8:	2401ffff 	li	at,-1
     9dc:	14410004 	bne	v0,at,9f0 <Select_UpdateMenu+0x8cc>
     9e0:	3c018000 	lui	at,0x8000
     9e4:	17010002 	bne	t8,at,9f0 <Select_UpdateMenu+0x8cc>
     9e8:	00000000 	nop
     9ec:	0006000d 	break	0x6
     9f0:	a5cd1434 	sh	t5,5172(t6)
     9f4:	8d180000 	lw	t8,0(t0)
     9f8:	8e0f020c 	lw	t7,524(s0)
     9fc:	14400002 	bnez	v0,a08 <Select_UpdateMenu+0x8e4>
     a00:	00000000 	nop
     a04:	0007000d 	break	0x7
     a08:	2401ffff 	li	at,-1
     a0c:	14410004 	bne	v0,at,a20 <Select_UpdateMenu+0x8fc>
     a10:	3c018000 	lui	at,0x8000
     a14:	17210002 	bne	t9,at,a20 <Select_UpdateMenu+0x8fc>
     a18:	00000000 	nop
     a1c:	0006000d 	break	0x6
     a20:	a70f1436 	sh	t7,5174(t8)
     a24:	8d190000 	lw	t9,0(t0)
     a28:	8e0b01dc 	lw	t3,476(s0)
     a2c:	a72b1438 	sh	t3,5176(t9)
     a30:	8e050224 	lw	a1,548(s0)
     a34:	10a00003 	beqz	a1,a44 <Select_UpdateMenu+0x920>
     a38:	24acffff 	addiu	t4,a1,-1
     a3c:	ae0c0224 	sw	t4,548(s0)
     a40:	01802825 	move	a1,t4
     a44:	54a00003 	bnezl	a1,a54 <Select_UpdateMenu+0x930>
     a48:	8e020228 	lw	v0,552(s0)
     a4c:	ae00022c 	sw	zero,556(s0)
     a50:	8e020228 	lw	v0,552(s0)
     a54:	10400003 	beqz	v0,a64 <Select_UpdateMenu+0x940>
     a58:	244dffff 	addiu	t5,v0,-1
     a5c:	ae0d0228 	sw	t5,552(s0)
     a60:	01a01025 	move	v0,t5
     a64:	54400003 	bnezl	v0,a74 <Select_UpdateMenu+0x950>
     a68:	8fbf0024 	lw	ra,36(sp)
     a6c:	ae000230 	sw	zero,560(s0)
     a70:	8fbf0024 	lw	ra,36(sp)
     a74:	8fb00020 	lw	s0,32(sp)
     a78:	27bd0040 	addiu	sp,sp,64
     a7c:	03e00008 	jr	ra
     a80:	00000000 	nop

00000a84 <Select_PrintMenu>:
     a84:	27bdffc0 	addiu	sp,sp,-64
     a88:	afb30028 	sw	s3,40(sp)
     a8c:	00809825 	move	s3,a0
     a90:	afb20024 	sw	s2,36(sp)
     a94:	00a09025 	move	s2,a1
     a98:	afbf003c 	sw	ra,60(sp)
     a9c:	00a02025 	move	a0,a1
     aa0:	240e00ff 	li	t6,255
     aa4:	afb70038 	sw	s7,56(sp)
     aa8:	afb60034 	sw	s6,52(sp)
     aac:	afb50030 	sw	s5,48(sp)
     ab0:	afb4002c 	sw	s4,44(sp)
     ab4:	afb10020 	sw	s1,32(sp)
     ab8:	afb0001c 	sw	s0,28(sp)
     abc:	afae0010 	sw	t6,16(sp)
     ac0:	240500ff 	li	a1,255
     ac4:	2406009b 	li	a2,155
     ac8:	0c000000 	jal	0 <Select_LoadTitle>
     acc:	24070096 	li	a3,150
     ad0:	02402025 	move	a0,s2
     ad4:	2405000c 	li	a1,12
     ad8:	0c000000 	jal	0 <Select_LoadTitle>
     adc:	24060002 	li	a2,2
     ae0:	3c050000 	lui	a1,0x0
     ae4:	24a50cf8 	addiu	a1,a1,3320
     ae8:	0c000000 	jal	0 <Select_LoadTitle>
     aec:	02402025 	move	a0,s2
     af0:	240f00ff 	li	t7,255
     af4:	afaf0010 	sw	t7,16(sp)
     af8:	02402025 	move	a0,s2
     afc:	240500ff 	li	a1,255
     b00:	240600ff 	li	a2,255
     b04:	0c000000 	jal	0 <Select_LoadTitle>
     b08:	240700ff 	li	a3,255
     b0c:	3c160000 	lui	s6,0x0
     b10:	3c150000 	lui	s5,0x0
     b14:	26b50d0c 	addiu	s5,s5,3340
     b18:	26d60d18 	addiu	s6,s6,3352
     b1c:	00008025 	move	s0,zero
     b20:	24170014 	li	s7,20
     b24:	2414000c 	li	s4,12
     b28:	02402025 	move	a0,s2
     b2c:	24050009 	li	a1,9
     b30:	0c000000 	jal	0 <Select_LoadTitle>
     b34:	26060004 	addiu	a2,s0,4
     b38:	8e78020c 	lw	t8,524(s3)
     b3c:	8e6201d0 	lw	v0,464(s3)
     b40:	8e6901d8 	lw	t1,472(s3)
     b44:	0310c821 	addu	t9,t8,s0
     b48:	03224021 	addu	t0,t9,v0
     b4c:	0102001a 	div	zero,t0,v0
     b50:	00008810 	mfhi	s1
     b54:	02402025 	move	a0,s2
     b58:	14400002 	bnez	v0,b64 <Select_PrintMenu+0xe0>
     b5c:	00000000 	nop
     b60:	0007000d 	break	0x7
     b64:	2401ffff 	li	at,-1
     b68:	14410004 	bne	v0,at,b7c <Select_PrintMenu+0xf8>
     b6c:	3c018000 	lui	at,0x8000
     b70:	15010002 	bne	t0,at,b7c <Select_PrintMenu+0xf8>
     b74:	00000000 	nop
     b78:	0006000d 	break	0x6
     b7c:	240500c8 	li	a1,200
     b80:	1629000a 	bne	s1,t1,bac <Select_PrintMenu+0x128>
     b84:	240600c8 	li	a2,200
     b88:	240a00ff 	li	t2,255
     b8c:	afaa0010 	sw	t2,16(sp)
     b90:	02402025 	move	a0,s2
     b94:	240500ff 	li	a1,255
     b98:	24060014 	li	a2,20
     b9c:	0c000000 	jal	0 <Select_LoadTitle>
     ba0:	24070014 	li	a3,20
     ba4:	10000005 	b	bbc <Select_PrintMenu+0x138>
     ba8:	00000000 	nop
     bac:	240b00ff 	li	t3,255
     bb0:	afab0010 	sw	t3,16(sp)
     bb4:	0c000000 	jal	0 <Select_LoadTitle>
     bb8:	24070037 	li	a3,55
     bbc:	02340019 	multu	s1,s4
     bc0:	8e6c01d4 	lw	t4,468(s3)
     bc4:	02402025 	move	a0,s2
     bc8:	00006812 	mflo	t5
     bcc:	018d7021 	addu	t6,t4,t5
     bd0:	8dc60000 	lw	a2,0(t6)
     bd4:	14c00002 	bnez	a2,be0 <Select_PrintMenu+0x15c>
     bd8:	00000000 	nop
     bdc:	02a03025 	move	a2,s5
     be0:	0c000000 	jal	0 <Select_LoadTitle>
     be4:	02c02825 	move	a1,s6
     be8:	26100001 	addiu	s0,s0,1
     bec:	5617ffcf 	bnel	s0,s7,b2c <Select_PrintMenu+0xa8>
     bf0:	02402025 	move	a0,s2
     bf4:	240f00ff 	li	t7,255
     bf8:	afaf0010 	sw	t7,16(sp)
     bfc:	02402025 	move	a0,s2
     c00:	2405009b 	li	a1,155
     c04:	24060037 	li	a2,55
     c08:	0c000000 	jal	0 <Select_LoadTitle>
     c0c:	24070096 	li	a3,150
     c10:	02402025 	move	a0,s2
     c14:	24050014 	li	a1,20
     c18:	0c000000 	jal	0 <Select_LoadTitle>
     c1c:	2406001a 	li	a2,26
     c20:	3c050000 	lui	a1,0x0
     c24:	24a50d1c 	addiu	a1,a1,3356
     c28:	02402025 	move	a0,s2
     c2c:	0c000000 	jal	0 <Select_LoadTitle>
     c30:	8e660208 	lw	a2,520(s3)
     c34:	8fbf003c 	lw	ra,60(sp)
     c38:	8fb0001c 	lw	s0,28(sp)
     c3c:	8fb10020 	lw	s1,32(sp)
     c40:	8fb20024 	lw	s2,36(sp)
     c44:	8fb30028 	lw	s3,40(sp)
     c48:	8fb4002c 	lw	s4,44(sp)
     c4c:	8fb50030 	lw	s5,48(sp)
     c50:	8fb60034 	lw	s6,52(sp)
     c54:	8fb70038 	lw	s7,56(sp)
     c58:	03e00008 	jr	ra
     c5c:	27bd0040 	addiu	sp,sp,64

00000c60 <Select_PrintLoadingMessage>:
     c60:	27bdffe0 	addiu	sp,sp,-32
     c64:	afa40020 	sw	a0,32(sp)
     c68:	afbf001c 	sw	ra,28(sp)
     c6c:	afa50024 	sw	a1,36(sp)
     c70:	00a02025 	move	a0,a1
     c74:	2405000a 	li	a1,10
     c78:	0c000000 	jal	0 <Select_LoadTitle>
     c7c:	2406000f 	li	a2,15
     c80:	240e00ff 	li	t6,255
     c84:	afae0010 	sw	t6,16(sp)
     c88:	8fa40024 	lw	a0,36(sp)
     c8c:	240500ff 	li	a1,255
     c90:	240600ff 	li	a2,255
     c94:	0c000000 	jal	0 <Select_LoadTitle>
     c98:	240700ff 	li	a3,255
     c9c:	0c000000 	jal	0 <Select_LoadTitle>
     ca0:	00000000 	nop
     ca4:	3c014140 	lui	at,0x4140
     ca8:	44812000 	mtc1	at,$f4
     cac:	3c060000 	lui	a2,0x0
     cb0:	3c050000 	lui	a1,0x0
     cb4:	46040182 	mul.s	$f6,$f0,$f4
     cb8:	24a50e6c 	addiu	a1,a1,3692
     cbc:	8fa40024 	lw	a0,36(sp)
     cc0:	4600320d 	trunc.w.s	$f8,$f6
     cc4:	44184000 	mfc1	t8,$f8
     cc8:	00000000 	nop
     ccc:	0018c880 	sll	t9,t8,0x2
     cd0:	00d93021 	addu	a2,a2,t9
     cd4:	0c000000 	jal	0 <Select_LoadTitle>
     cd8:	8cc605e8 	lw	a2,1512(a2)
     cdc:	8fbf001c 	lw	ra,28(sp)
     ce0:	27bd0020 	addiu	sp,sp,32
     ce4:	03e00008 	jr	ra
     ce8:	00000000 	nop

00000cec <Select_PrintAgeSetting>:
     cec:	27bdffe0 	addiu	sp,sp,-32
     cf0:	afa40020 	sw	a0,32(sp)
     cf4:	afbf001c 	sw	ra,28(sp)
     cf8:	afa50024 	sw	a1,36(sp)
     cfc:	afa60028 	sw	a2,40(sp)
     d00:	00a02025 	move	a0,a1
     d04:	24050004 	li	a1,4
     d08:	0c000000 	jal	0 <Select_LoadTitle>
     d0c:	2406001a 	li	a2,26
     d10:	240e00ff 	li	t6,255
     d14:	afae0010 	sw	t6,16(sp)
     d18:	8fa40024 	lw	a0,36(sp)
     d1c:	240500ff 	li	a1,255
     d20:	240600ff 	li	a2,255
     d24:	0c000000 	jal	0 <Select_LoadTitle>
     d28:	24070037 	li	a3,55
     d2c:	8faf0028 	lw	t7,40(sp)
     d30:	3c060000 	lui	a2,0x0
     d34:	3c050000 	lui	a1,0x0
     d38:	000fc080 	sll	t8,t7,0x2
     d3c:	00d83021 	addu	a2,a2,t8
     d40:	8cc60618 	lw	a2,1560(a2)
     d44:	24a50e90 	addiu	a1,a1,3728
     d48:	0c000000 	jal	0 <Select_LoadTitle>
     d4c:	8fa40024 	lw	a0,36(sp)
     d50:	8fbf001c 	lw	ra,28(sp)
     d54:	27bd0020 	addiu	sp,sp,32
     d58:	03e00008 	jr	ra
     d5c:	00000000 	nop

00000d60 <Select_PrintCutsceneSetting>:
     d60:	27bdffd8 	addiu	sp,sp,-40
     d64:	afa40028 	sw	a0,40(sp)
     d68:	afbf001c 	sw	ra,28(sp)
     d6c:	afa5002c 	sw	a1,44(sp)
     d70:	afa60030 	sw	a2,48(sp)
     d74:	00a02025 	move	a0,a1
     d78:	24050004 	li	a1,4
     d7c:	0c000000 	jal	0 <Select_LoadTitle>
     d80:	24060019 	li	a2,25
     d84:	240e00ff 	li	t6,255
     d88:	afae0010 	sw	t6,16(sp)
     d8c:	8fa4002c 	lw	a0,44(sp)
     d90:	240500ff 	li	a1,255
     d94:	240600ff 	li	a2,255
     d98:	0c000000 	jal	0 <Select_LoadTitle>
     d9c:	24070037 	li	a3,55
     da0:	97a20032 	lhu	v0,50(sp)
     da4:	34018001 	li	at,0x8001
     da8:	0041082a 	slt	at,v0,at
     dac:	1420000b 	bnez	at,ddc <Select_PrintCutsceneSetting+0x7c>
     db0:	3c01ffff 	lui	at,0xffff
     db4:	34210010 	ori	at,at,0x10
     db8:	00417821 	addu	t7,v0,at
     dbc:	2de1000b 	sltiu	at,t7,11
     dc0:	10200049 	beqz	at,ee8 <Select_PrintCutsceneSetting+0x188>
     dc4:	000f7880 	sll	t7,t7,0x2
     dc8:	3c010000 	lui	at,0x0
     dcc:	002f0821 	addu	at,at,t7
     dd0:	8c2f100c 	lw	t7,4108(at)
     dd4:	01e00008 	jr	t7
     dd8:	00000000 	nop
     ddc:	10400006 	beqz	v0,df8 <Select_PrintCutsceneSetting+0x98>
     de0:	3c180000 	lui	t8,0x0
     de4:	34018000 	li	at,0x8000
     de8:	10410009 	beq	v0,at,e10 <Select_PrintCutsceneSetting+0xb0>
     dec:	34198000 	li	t9,0x8000
     df0:	1000003d 	b	ee8 <Select_PrintCutsceneSetting+0x188>
     df4:	00000000 	nop
     df8:	3c020000 	lui	v0,0x0
     dfc:	24420000 	addiu	v0,v0,0
     e00:	27180e98 	addiu	t8,t8,3736
     e04:	afb80024 	sw	t8,36(sp)
     e08:	10000037 	b	ee8 <Select_PrintCutsceneSetting+0x188>
     e0c:	a440000c 	sh	zero,12(v0)
     e10:	3c020000 	lui	v0,0x0
     e14:	3c080000 	lui	t0,0x0
     e18:	24420000 	addiu	v0,v0,0
     e1c:	25080eac 	addiu	t0,t0,3756
     e20:	afa80024 	sw	t0,36(sp)
     e24:	10000030 	b	ee8 <Select_PrintCutsceneSetting+0x188>
     e28:	a459000c 	sh	t9,12(v0)
     e2c:	3c020000 	lui	v0,0x0
     e30:	3c0a0000 	lui	t2,0x0
     e34:	24420000 	addiu	v0,v0,0
     e38:	254a0ec0 	addiu	t2,t2,3776
     e3c:	34098000 	li	t1,0x8000
     e40:	a449000c 	sh	t1,12(v0)
     e44:	10000028 	b	ee8 <Select_PrintCutsceneSetting+0x188>
     e48:	afaa0024 	sw	t2,36(sp)
     e4c:	3c0b0000 	lui	t3,0x0
     e50:	256b0ecc 	addiu	t3,t3,3788
     e54:	10000024 	b	ee8 <Select_PrintCutsceneSetting+0x188>
     e58:	afab0024 	sw	t3,36(sp)
     e5c:	3c0c0000 	lui	t4,0x0
     e60:	258c0ed8 	addiu	t4,t4,3800
     e64:	10000020 	b	ee8 <Select_PrintCutsceneSetting+0x188>
     e68:	afac0024 	sw	t4,36(sp)
     e6c:	3c0d0000 	lui	t5,0x0
     e70:	25ad0ee4 	addiu	t5,t5,3812
     e74:	1000001c 	b	ee8 <Select_PrintCutsceneSetting+0x188>
     e78:	afad0024 	sw	t5,36(sp)
     e7c:	3c0e0000 	lui	t6,0x0
     e80:	25ce0ef0 	addiu	t6,t6,3824
     e84:	10000018 	b	ee8 <Select_PrintCutsceneSetting+0x188>
     e88:	afae0024 	sw	t6,36(sp)
     e8c:	3c0f0000 	lui	t7,0x0
     e90:	25ef0efc 	addiu	t7,t7,3836
     e94:	10000014 	b	ee8 <Select_PrintCutsceneSetting+0x188>
     e98:	afaf0024 	sw	t7,36(sp)
     e9c:	3c180000 	lui	t8,0x0
     ea0:	27180f08 	addiu	t8,t8,3848
     ea4:	10000010 	b	ee8 <Select_PrintCutsceneSetting+0x188>
     ea8:	afb80024 	sw	t8,36(sp)
     eac:	3c190000 	lui	t9,0x0
     eb0:	27390f14 	addiu	t9,t9,3860
     eb4:	1000000c 	b	ee8 <Select_PrintCutsceneSetting+0x188>
     eb8:	afb90024 	sw	t9,36(sp)
     ebc:	3c080000 	lui	t0,0x0
     ec0:	25080f20 	addiu	t0,t0,3872
     ec4:	10000008 	b	ee8 <Select_PrintCutsceneSetting+0x188>
     ec8:	afa80024 	sw	t0,36(sp)
     ecc:	3c090000 	lui	t1,0x0
     ed0:	25290f2c 	addiu	t1,t1,3884
     ed4:	10000004 	b	ee8 <Select_PrintCutsceneSetting+0x188>
     ed8:	afa90024 	sw	t1,36(sp)
     edc:	3c0a0000 	lui	t2,0x0
     ee0:	254a0f38 	addiu	t2,t2,3896
     ee4:	afaa0024 	sw	t2,36(sp)
     ee8:	3c020000 	lui	v0,0x0
     eec:	24420000 	addiu	v0,v0,0
     ef0:	944b000c 	lhu	t3,12(v0)
     ef4:	3c050000 	lui	a1,0x0
     ef8:	24a50f44 	addiu	a1,a1,3908
     efc:	8fa4002c 	lw	a0,44(sp)
     f00:	8fa60024 	lw	a2,36(sp)
     f04:	0c000000 	jal	0 <Select_LoadTitle>
     f08:	a44b141a 	sh	t3,5146(v0)
     f0c:	8fbf001c 	lw	ra,28(sp)
     f10:	27bd0028 	addiu	sp,sp,40
     f14:	03e00008 	jr	ra
     f18:	00000000 	nop

00000f1c <Select_DrawMenu>:
     f1c:	27bdff90 	addiu	sp,sp,-112
     f20:	afbf0034 	sw	ra,52(sp)
     f24:	afbe0030 	sw	s8,48(sp)
     f28:	afb2002c 	sw	s2,44(sp)
     f2c:	afb10028 	sw	s1,40(sp)
     f30:	afb00024 	sw	s0,36(sp)
     f34:	8c910000 	lw	s1,0(a0)
     f38:	00809025 	move	s2,a0
     f3c:	3c060000 	lui	a2,0x0
     f40:	03a0f025 	move	s8,sp
     f44:	24c60f50 	addiu	a2,a2,3920
     f48:	27a40054 	addiu	a0,sp,84
     f4c:	240703a2 	li	a3,930
     f50:	0c000000 	jal	0 <Select_LoadTitle>
     f54:	02202825 	move	a1,s1
     f58:	8e2302c0 	lw	v1,704(s1)
     f5c:	3c0fdb06 	lui	t7,0xdb06
     f60:	02202025 	move	a0,s1
     f64:	246e0008 	addiu	t6,v1,8
     f68:	ae2e02c0 	sw	t6,704(s1)
     f6c:	00002825 	move	a1,zero
     f70:	00003025 	move	a2,zero
     f74:	00003825 	move	a3,zero
     f78:	ac600004 	sw	zero,4(v1)
     f7c:	0c000000 	jal	0 <Select_LoadTitle>
     f80:	ac6f0000 	sw	t7,0(v1)
     f84:	241800f0 	li	t8,240
     f88:	24190140 	li	t9,320
     f8c:	265000a8 	addiu	s0,s2,168
     f90:	02002025 	move	a0,s0
     f94:	afd9004c 	sw	t9,76(s8)
     f98:	afd80044 	sw	t8,68(s8)
     f9c:	afc00040 	sw	zero,64(s8)
     fa0:	afc00048 	sw	zero,72(s8)
     fa4:	0c000000 	jal	0 <Select_LoadTitle>
     fa8:	27c50040 	addiu	a1,s8,64
     fac:	02002025 	move	a0,s0
     fb0:	0c000000 	jal	0 <Select_LoadTitle>
     fb4:	2405000f 	li	a1,15
     fb8:	0c000000 	jal	0 <Select_LoadTitle>
     fbc:	02202025 	move	a0,s1
     fc0:	27bdffd0 	addiu	sp,sp,-48
     fc4:	27b00010 	addiu	s0,sp,16
     fc8:	0c000000 	jal	0 <Select_LoadTitle>
     fcc:	02002025 	move	a0,s0
     fd0:	02002025 	move	a0,s0
     fd4:	0c000000 	jal	0 <Select_LoadTitle>
     fd8:	8e2502c0 	lw	a1,704(s1)
     fdc:	02402025 	move	a0,s2
     fe0:	0c000000 	jal	0 <Select_LoadTitle>
     fe4:	02002825 	move	a1,s0
     fe8:	3c070000 	lui	a3,0x0
     fec:	8ce60004 	lw	a2,4(a3)
     ff0:	02402025 	move	a0,s2
     ff4:	0c000000 	jal	0 <Select_LoadTitle>
     ff8:	02002825 	move	a1,s0
     ffc:	3c070000 	lui	a3,0x0
    1000:	8ce70008 	lw	a3,8(a3)
    1004:	02402025 	move	a0,s2
    1008:	02002825 	move	a1,s0
    100c:	0c000000 	jal	0 <Select_LoadTitle>
    1010:	30e6ffff 	andi	a2,a3,0xffff
    1014:	0c000000 	jal	0 <Select_LoadTitle>
    1018:	02002025 	move	a0,s0
    101c:	ae2202c0 	sw	v0,704(s1)
    1020:	0c000000 	jal	0 <Select_LoadTitle>
    1024:	02002025 	move	a0,s0
    1028:	3c060000 	lui	a2,0x0
    102c:	24c60f60 	addiu	a2,a2,3936
    1030:	27c40054 	addiu	a0,s8,84
    1034:	02202825 	move	a1,s1
    1038:	0c000000 	jal	0 <Select_LoadTitle>
    103c:	240703c6 	li	a3,966
    1040:	8fdf0034 	lw	ra,52(s8)
    1044:	03c0e825 	move	sp,s8
    1048:	8fd00024 	lw	s0,36(s8)
    104c:	8fd10028 	lw	s1,40(s8)
    1050:	8fd2002c 	lw	s2,44(s8)
    1054:	8fde0030 	lw	s8,48(s8)
    1058:	03e00008 	jr	ra
    105c:	27bd0070 	addiu	sp,sp,112

00001060 <Select_DrawLoadingScreen>:
    1060:	27bdff90 	addiu	sp,sp,-112
    1064:	afbf0034 	sw	ra,52(sp)
    1068:	afbe0030 	sw	s8,48(sp)
    106c:	afb1002c 	sw	s1,44(sp)
    1070:	afb00028 	sw	s0,40(sp)
    1074:	afa40070 	sw	a0,112(sp)
    1078:	8c910000 	lw	s1,0(a0)
    107c:	3c060000 	lui	a2,0x0
    1080:	03a0f025 	move	s8,sp
    1084:	24c60f70 	addiu	a2,a2,3952
    1088:	27a40054 	addiu	a0,sp,84
    108c:	240703d1 	li	a3,977
    1090:	0c000000 	jal	0 <Select_LoadTitle>
    1094:	02202825 	move	a1,s1
    1098:	8e2302c0 	lw	v1,704(s1)
    109c:	3c18db06 	lui	t8,0xdb06
    10a0:	02202025 	move	a0,s1
    10a4:	246f0008 	addiu	t7,v1,8
    10a8:	ae2f02c0 	sw	t7,704(s1)
    10ac:	00002825 	move	a1,zero
    10b0:	00003025 	move	a2,zero
    10b4:	00003825 	move	a3,zero
    10b8:	ac600004 	sw	zero,4(v1)
    10bc:	0c000000 	jal	0 <Select_LoadTitle>
    10c0:	ac780000 	sw	t8,0(v1)
    10c4:	8fd00070 	lw	s0,112(s8)
    10c8:	241900f0 	li	t9,240
    10cc:	24080140 	li	t0,320
    10d0:	261000a8 	addiu	s0,s0,168
    10d4:	02002025 	move	a0,s0
    10d8:	afc8004c 	sw	t0,76(s8)
    10dc:	afd90044 	sw	t9,68(s8)
    10e0:	afc00040 	sw	zero,64(s8)
    10e4:	afc00048 	sw	zero,72(s8)
    10e8:	0c000000 	jal	0 <Select_LoadTitle>
    10ec:	27c50040 	addiu	a1,s8,64
    10f0:	02002025 	move	a0,s0
    10f4:	0c000000 	jal	0 <Select_LoadTitle>
    10f8:	2405000f 	li	a1,15
    10fc:	0c000000 	jal	0 <Select_LoadTitle>
    1100:	02202025 	move	a0,s1
    1104:	27bdffd0 	addiu	sp,sp,-48
    1108:	27b00010 	addiu	s0,sp,16
    110c:	0c000000 	jal	0 <Select_LoadTitle>
    1110:	02002025 	move	a0,s0
    1114:	02002025 	move	a0,s0
    1118:	0c000000 	jal	0 <Select_LoadTitle>
    111c:	8e2502c0 	lw	a1,704(s1)
    1120:	8fc40070 	lw	a0,112(s8)
    1124:	0c000000 	jal	0 <Select_LoadTitle>
    1128:	02002825 	move	a1,s0
    112c:	0c000000 	jal	0 <Select_LoadTitle>
    1130:	02002025 	move	a0,s0
    1134:	ae2202c0 	sw	v0,704(s1)
    1138:	0c000000 	jal	0 <Select_LoadTitle>
    113c:	02002025 	move	a0,s0
    1140:	3c060000 	lui	a2,0x0
    1144:	24c60f80 	addiu	a2,a2,3968
    1148:	27c40054 	addiu	a0,s8,84
    114c:	02202825 	move	a1,s1
    1150:	0c000000 	jal	0 <Select_LoadTitle>
    1154:	240703ee 	li	a3,1006
    1158:	8fdf0034 	lw	ra,52(s8)
    115c:	03c0e825 	move	sp,s8
    1160:	8fd00028 	lw	s0,40(s8)
    1164:	8fd1002c 	lw	s1,44(s8)
    1168:	8fde0030 	lw	s8,48(s8)
    116c:	03e00008 	jr	ra
    1170:	27bd0070 	addiu	sp,sp,112

00001174 <Select_Draw>:
    1174:	27bdffb0 	addiu	sp,sp,-80
    1178:	afbf001c 	sw	ra,28(sp)
    117c:	afb10018 	sw	s1,24(sp)
    1180:	afb00014 	sw	s0,20(sp)
    1184:	8c910000 	lw	s1,0(a0)
    1188:	00808025 	move	s0,a0
    118c:	3c060000 	lui	a2,0x0
    1190:	24c60f90 	addiu	a2,a2,3984
    1194:	27a40038 	addiu	a0,sp,56
    1198:	240703f5 	li	a3,1013
    119c:	0c000000 	jal	0 <Select_LoadTitle>
    11a0:	02202825 	move	a1,s1
    11a4:	8e2302c0 	lw	v1,704(s1)
    11a8:	3c0fdb06 	lui	t7,0xdb06
    11ac:	02202025 	move	a0,s1
    11b0:	246e0008 	addiu	t6,v1,8
    11b4:	ae2e02c0 	sw	t6,704(s1)
    11b8:	00002825 	move	a1,zero
    11bc:	00003025 	move	a2,zero
    11c0:	00003825 	move	a3,zero
    11c4:	ac600004 	sw	zero,4(v1)
    11c8:	0c000000 	jal	0 <Select_LoadTitle>
    11cc:	ac6f0000 	sw	t7,0(v1)
    11d0:	241800f0 	li	t8,240
    11d4:	24190140 	li	t9,320
    11d8:	260400a8 	addiu	a0,s0,168
    11dc:	afa40020 	sw	a0,32(sp)
    11e0:	afb90030 	sw	t9,48(sp)
    11e4:	afb80028 	sw	t8,40(sp)
    11e8:	afa00024 	sw	zero,36(sp)
    11ec:	afa0002c 	sw	zero,44(sp)
    11f0:	0c000000 	jal	0 <Select_LoadTitle>
    11f4:	27a50024 	addiu	a1,sp,36
    11f8:	8fa40020 	lw	a0,32(sp)
    11fc:	0c000000 	jal	0 <Select_LoadTitle>
    1200:	2405000f 	li	a1,15
    1204:	8e080098 	lw	t0,152(s0)
    1208:	15000005 	bnez	t0,1220 <Select_Draw+0xac>
    120c:	00000000 	nop
    1210:	0c000000 	jal	0 <Select_LoadTitle>
    1214:	02002025 	move	a0,s0
    1218:	10000003 	b	1228 <Select_Draw+0xb4>
    121c:	00000000 	nop
    1220:	0c000000 	jal	0 <Select_LoadTitle>
    1224:	02002025 	move	a0,s0
    1228:	3c060000 	lui	a2,0x0
    122c:	24c60fa0 	addiu	a2,a2,4000
    1230:	27a40038 	addiu	a0,sp,56
    1234:	02202825 	move	a1,s1
    1238:	0c000000 	jal	0 <Select_LoadTitle>
    123c:	2407040d 	li	a3,1037
    1240:	8fbf001c 	lw	ra,28(sp)
    1244:	8fb00014 	lw	s0,20(sp)
    1248:	8fb10018 	lw	s1,24(sp)
    124c:	03e00008 	jr	ra
    1250:	27bd0050 	addiu	sp,sp,80

00001254 <Select_Main>:
    1254:	27bdffe8 	addiu	sp,sp,-24
    1258:	afbf0014 	sw	ra,20(sp)
    125c:	0c000000 	jal	0 <Select_LoadTitle>
    1260:	afa40018 	sw	a0,24(sp)
    1264:	0c000000 	jal	0 <Select_LoadTitle>
    1268:	8fa40018 	lw	a0,24(sp)
    126c:	8fbf0014 	lw	ra,20(sp)
    1270:	27bd0018 	addiu	sp,sp,24
    1274:	03e00008 	jr	ra
    1278:	00000000 	nop

0000127c <Select_Destroy>:
    127c:	27bdffe8 	addiu	sp,sp,-24
    1280:	afa40018 	sw	a0,24(sp)
    1284:	afbf0014 	sw	ra,20(sp)
    1288:	3c040000 	lui	a0,0x0
    128c:	24840fb0 	addiu	a0,a0,4016
    1290:	0c000000 	jal	0 <Select_LoadTitle>
    1294:	24050007 	li	a1,7
    1298:	3c040000 	lui	a0,0x0
    129c:	0c000000 	jal	0 <Select_LoadTitle>
    12a0:	24840fb4 	addiu	a0,a0,4020
    12a4:	8fbf0014 	lw	ra,20(sp)
    12a8:	27bd0018 	addiu	sp,sp,24
    12ac:	03e00008 	jr	ra
    12b0:	00000000 	nop

000012b4 <Select_Init>:
    12b4:	27bdffc0 	addiu	sp,sp,-64
    12b8:	afb00020 	sw	s0,32(sp)
    12bc:	afbf0024 	sw	ra,36(sp)
    12c0:	3c0e0000 	lui	t6,0x0
    12c4:	3c0f0000 	lui	t7,0x0
    12c8:	3c180000 	lui	t8,0x0
    12cc:	25ce0000 	addiu	t6,t6,0
    12d0:	25ef0000 	addiu	t7,t7,0
    12d4:	27180000 	addiu	t8,t8,0
    12d8:	24190013 	li	t9,19
    12dc:	24080025 	li	t0,37
    12e0:	24090033 	li	t1,51
    12e4:	240a003b 	li	t2,59
    12e8:	240b0049 	li	t3,73
    12ec:	240c005b 	li	t4,91
    12f0:	240d007e 	li	t5,126
    12f4:	00808025 	move	s0,a0
    12f8:	ac8e0004 	sw	t6,4(a0)
    12fc:	ac8f0008 	sw	t7,8(a0)
    1300:	ac9801d4 	sw	t8,468(a0)
    1304:	ac80020c 	sw	zero,524(a0)
    1308:	ac8001d8 	sw	zero,472(a0)
    130c:	ac8001e0 	sw	zero,480(a0)
    1310:	ac9901e4 	sw	t9,484(a0)
    1314:	ac8801e8 	sw	t0,488(a0)
    1318:	ac8901ec 	sw	t1,492(a0)
    131c:	ac8a01f0 	sw	t2,496(a0)
    1320:	ac8b01f4 	sw	t3,500(a0)
    1324:	ac8c01f8 	sw	t4,504(a0)
    1328:	ac8001dc 	sw	zero,476(a0)
    132c:	ac800208 	sw	zero,520(a0)
    1330:	ac8d01d0 	sw	t5,464(a0)
    1334:	8e050000 	lw	a1,0(s0)
    1338:	0c000000 	jal	0 <Select_LoadTitle>
    133c:	248400a8 	addiu	a0,a0,168
    1340:	3c040000 	lui	a0,0x0
    1344:	240e000a 	li	t6,10
    1348:	24840000 	addiu	a0,a0,0
    134c:	ae0e01c8 	sw	t6,456(s0)
    1350:	ae00021c 	sw	zero,540(s0)
    1354:	ae000220 	sw	zero,544(s0)
    1358:	ae000224 	sw	zero,548(s0)
    135c:	ae000228 	sw	zero,552(s0)
    1360:	ae00022c 	sw	zero,556(s0)
    1364:	ae000230 	sw	zero,560(s0)
    1368:	ae000234 	sw	zero,564(s0)
    136c:	8c820000 	lw	v0,0(a0)
    1370:	3c0b0000 	lui	t3,0x0
    1374:	3c060000 	lui	a2,0x0
    1378:	84431434 	lh	v1,5172(v0)
    137c:	240a0001 	li	t2,1
    1380:	24c60fec 	addiu	a2,a2,4076
    1384:	0460000d 	bltz	v1,13bc <Select_Init+0x108>
    1388:	256b0000 	addiu	t3,t3,0
    138c:	8e0f01d0 	lw	t7,464(s0)
    1390:	006f082a 	slt	at,v1,t7
    1394:	10200009 	beqz	at,13bc <Select_Init+0x108>
    1398:	00000000 	nop
    139c:	ae0301d8 	sw	v1,472(s0)
    13a0:	8c980000 	lw	t8,0(a0)
    13a4:	87191436 	lh	t9,5174(t8)
    13a8:	ae19020c 	sw	t9,524(s0)
    13ac:	8c880000 	lw	t0,0(a0)
    13b0:	85091438 	lh	t1,5176(t0)
    13b4:	ae0901dc 	sw	t1,476(s0)
    13b8:	8c820000 	lw	v0,0(a0)
    13bc:	3c030000 	lui	v1,0x0
    13c0:	24630000 	addiu	v1,v1,0
    13c4:	a44a0110 	sh	t2,272(v0)
    13c8:	01632823 	subu	a1,t3,v1
    13cc:	afa5002c 	sw	a1,44(sp)
    13d0:	afa30030 	sw	v1,48(sp)
    13d4:	02002025 	move	a0,s0
    13d8:	0c000000 	jal	0 <Select_LoadTitle>
    13dc:	2407045a 	li	a3,1114
    13e0:	ae020238 	sw	v0,568(s0)
    13e4:	3c070000 	lui	a3,0x0
    13e8:	240c045b 	li	t4,1115
    13ec:	afac0010 	sw	t4,16(sp)
    13f0:	24e70ffc 	addiu	a3,a3,4092
    13f4:	8fa6002c 	lw	a2,44(sp)
    13f8:	8fa50030 	lw	a1,48(sp)
    13fc:	0c000000 	jal	0 <Select_LoadTitle>
    1400:	00402025 	move	a0,v0
    1404:	8fbf0024 	lw	ra,36(sp)
    1408:	3c030000 	lui	v1,0x0
    140c:	24630000 	addiu	v1,v1,0
    1410:	340d8000 	li	t5,0x8000
    1414:	240e0001 	li	t6,1
    1418:	8fb00020 	lw	s0,32(sp)
    141c:	ac6d0008 	sw	t5,8(v1)
    1420:	ac6e0004 	sw	t6,4(v1)
    1424:	03e00008 	jr	ra
    1428:	27bd0040 	addiu	sp,sp,64
    142c:	00000000 	nop
