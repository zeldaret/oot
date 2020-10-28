
build/src/code/z_room.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80095AA0>:
       0:	afa40000 	sw	a0,0(sp)
       4:	afa50004 	sw	a1,4(sp)
       8:	afa60008 	sw	a2,8(sp)
       c:	03e00008 	jr	ra
      10:	afa7000c 	sw	a3,12(sp)

00000014 <func_80095AB4>:
      14:	27bdffa0 	addiu	sp,sp,-96
      18:	afbf0014 	sw	ra,20(sp)
      1c:	afa40060 	sw	a0,96(sp)
      20:	afa50064 	sw	a1,100(sp)
      24:	afa60068 	sw	a2,104(sp)
      28:	8c850000 	lw	a1,0(a0)
      2c:	3c060000 	lui	a2,0x0
      30:	24c60000 	addiu	a2,a2,0
      34:	27a40040 	addiu	a0,sp,64
      38:	240700c1 	li	a3,193
      3c:	0c000000 	jal	0 <func_80095AA0>
      40:	afa50050 	sw	a1,80(sp)
      44:	8faa0068 	lw	t2,104(sp)
      48:	3c040000 	lui	a0,0x0
      4c:	8fa80050 	lw	t0,80(sp)
      50:	314a0001 	andi	t2,t2,0x1
      54:	1140001f 	beqz	t2,d4 <func_80095AB4+0xc0>
      58:	24840000 	addiu	a0,a0,0
      5c:	8fa50060 	lw	a1,96(sp)
      60:	afa80050 	sw	t0,80(sp)
      64:	0c000000 	jal	0 <func_80095AA0>
      68:	afaa0024 	sw	t2,36(sp)
      6c:	8fa80050 	lw	t0,80(sp)
      70:	8faa0024 	lw	t2,36(sp)
      74:	3c18db06 	lui	t8,0xdb06
      78:	8d0302c0 	lw	v1,704(t0)
      7c:	3718000c 	ori	t8,t8,0xc
      80:	246f0008 	addiu	t7,v1,8
      84:	ad0f02c0 	sw	t7,704(t0)
      88:	ac780000 	sw	t8,0(v1)
      8c:	8fb90064 	lw	t9,100(sp)
      90:	8f2b000c 	lw	t3,12(t9)
      94:	ac6b0004 	sw	t3,4(v1)
      98:	8fa40060 	lw	a0,96(sp)
      9c:	afa80050 	sw	t0,80(sp)
      a0:	0c000000 	jal	0 <func_80095AA0>
      a4:	afaa0024 	sw	t2,36(sp)
      a8:	8fa80050 	lw	t0,80(sp)
      ac:	8faa0024 	lw	t2,36(sp)
      b0:	3c0dda38 	lui	t5,0xda38
      b4:	8d0302c0 	lw	v1,704(t0)
      b8:	3c0e0000 	lui	t6,0x0
      bc:	25ce0000 	addiu	t6,t6,0
      c0:	246c0008 	addiu	t4,v1,8
      c4:	ad0c02c0 	sw	t4,704(t0)
      c8:	35ad0003 	ori	t5,t5,0x3
      cc:	ac6d0000 	sw	t5,0(v1)
      d0:	ac6e0004 	sw	t6,4(v1)
      d4:	8fa90068 	lw	t1,104(sp)
      d8:	3c040000 	lui	a0,0x0
      dc:	24840000 	addiu	a0,a0,0
      e0:	31290002 	andi	t1,t1,0x2
      e4:	11200025 	beqz	t1,17c <func_80095AB4+0x168>
      e8:	8fa50060 	lw	a1,96(sp)
      ec:	3c0f0000 	lui	t7,0x0
      f0:	25ef0000 	addiu	t7,t7,0
      f4:	afaf0020 	sw	t7,32(sp)
      f8:	afa80050 	sw	t0,80(sp)
      fc:	afa9001c 	sw	t1,28(sp)
     100:	0c000000 	jal	0 <func_80095AA0>
     104:	afaa0024 	sw	t2,36(sp)
     108:	8fa80050 	lw	t0,80(sp)
     10c:	8fa9001c 	lw	t1,28(sp)
     110:	8faa0024 	lw	t2,36(sp)
     114:	8d0302d0 	lw	v1,720(t0)
     118:	3c19db06 	lui	t9,0xdb06
     11c:	3739000c 	ori	t9,t9,0xc
     120:	24780008 	addiu	t8,v1,8
     124:	ad1802d0 	sw	t8,720(t0)
     128:	ac790000 	sw	t9,0(v1)
     12c:	8fab0064 	lw	t3,100(sp)
     130:	8d6c000c 	lw	t4,12(t3)
     134:	ac6c0004 	sw	t4,4(v1)
     138:	8fad0060 	lw	t5,96(sp)
     13c:	8da40000 	lw	a0,0(t5)
     140:	afa80050 	sw	t0,80(sp)
     144:	afa9001c 	sw	t1,28(sp)
     148:	0c000000 	jal	0 <func_80095AA0>
     14c:	afaa0024 	sw	t2,36(sp)
     150:	8fa80050 	lw	t0,80(sp)
     154:	8fa9001c 	lw	t1,28(sp)
     158:	8faa0024 	lw	t2,36(sp)
     15c:	8d0302d0 	lw	v1,720(t0)
     160:	3c0fda38 	lui	t7,0xda38
     164:	35ef0003 	ori	t7,t7,0x3
     168:	246e0008 	addiu	t6,v1,8
     16c:	ad0e02d0 	sw	t6,720(t0)
     170:	ac6f0000 	sw	t7,0(v1)
     174:	8fb80020 	lw	t8,32(sp)
     178:	ac780004 	sw	t8,4(v1)
     17c:	8fb90064 	lw	t9,100(sp)
     180:	3c0e0000 	lui	t6,0x0
     184:	3c0100ff 	lui	at,0xff
     188:	8f270008 	lw	a3,8(t9)
     18c:	3421ffff 	ori	at,at,0xffff
     190:	00002825 	move	a1,zero
     194:	8ce20004 	lw	v0,4(a3)
     198:	90f80001 	lbu	t8,1(a3)
     19c:	3c06de00 	lui	a2,0xde00
     1a0:	00025900 	sll	t3,v0,0x4
     1a4:	000b6702 	srl	t4,t3,0x1c
     1a8:	000c6880 	sll	t5,t4,0x2
     1ac:	01cd7021 	addu	t6,t6,t5
     1b0:	8dce0000 	lw	t6,0(t6)
     1b4:	00417824 	and	t7,v0,at
     1b8:	3c018000 	lui	at,0x8000
     1bc:	01cf2021 	addu	a0,t6,t7
     1c0:	1b00001d 	blez	t8,238 <func_80095AB4+0x224>
     1c4:	00812021 	addu	a0,a0,at
     1c8:	1140000a 	beqz	t2,1f4 <func_80095AB4+0x1e0>
     1cc:	00000000 	nop
     1d0:	8c990000 	lw	t9,0(a0)
     1d4:	13200007 	beqz	t9,1f4 <func_80095AB4+0x1e0>
     1d8:	00000000 	nop
     1dc:	8d0302c0 	lw	v1,704(t0)
     1e0:	246b0008 	addiu	t3,v1,8
     1e4:	ad0b02c0 	sw	t3,704(t0)
     1e8:	ac660000 	sw	a2,0(v1)
     1ec:	8c8c0000 	lw	t4,0(a0)
     1f0:	ac6c0004 	sw	t4,4(v1)
     1f4:	5120000b 	beqzl	t1,224 <func_80095AB4+0x210>
     1f8:	90f80001 	lbu	t8,1(a3)
     1fc:	8c8d0004 	lw	t5,4(a0)
     200:	51a00008 	beqzl	t5,224 <func_80095AB4+0x210>
     204:	90f80001 	lbu	t8,1(a3)
     208:	8d0302d0 	lw	v1,720(t0)
     20c:	246e0008 	addiu	t6,v1,8
     210:	ad0e02d0 	sw	t6,720(t0)
     214:	ac660000 	sw	a2,0(v1)
     218:	8c8f0004 	lw	t7,4(a0)
     21c:	ac6f0004 	sw	t7,4(v1)
     220:	90f80001 	lbu	t8,1(a3)
     224:	24a50001 	addiu	a1,a1,1
     228:	24840008 	addiu	a0,a0,8
     22c:	00b8082a 	slt	at,a1,t8
     230:	1420ffe5 	bnez	at,1c8 <func_80095AB4+0x1b4>
     234:	00000000 	nop
     238:	8fb90060 	lw	t9,96(sp)
     23c:	3c060000 	lui	a2,0x0
     240:	24c6000c 	addiu	a2,a2,12
     244:	27a40040 	addiu	a0,sp,64
     248:	240700ef 	li	a3,239
     24c:	0c000000 	jal	0 <func_80095AA0>
     250:	8f250000 	lw	a1,0(t9)
     254:	8fbf0014 	lw	ra,20(sp)
     258:	27bd0060 	addiu	sp,sp,96
     25c:	03e00008 	jr	ra
     260:	00000000 	nop

00000264 <func_80095D04>:
     264:	27bdfb40 	addiu	sp,sp,-1216
     268:	afbf001c 	sw	ra,28(sp)
     26c:	afb10018 	sw	s1,24(sp)
     270:	afb00014 	sw	s0,20(sp)
     274:	afa404c0 	sw	a0,1216(sp)
     278:	afa504c4 	sw	a1,1220(sp)
     27c:	8c850000 	lw	a1,0(a0)
     280:	00c08025 	move	s0,a2
     284:	3c060000 	lui	a2,0x0
     288:	24c60000 	addiu	a2,a2,0
     28c:	afa000b0 	sw	zero,176(sp)
     290:	afa000b4 	sw	zero,180(sp)
     294:	27a4005c 	addiu	a0,sp,92
     298:	2407011f 	li	a3,287
     29c:	0c000000 	jal	0 <func_80095AA0>
     2a0:	afa5006c 	sw	a1,108(sp)
     2a4:	32110001 	andi	s1,s0,0x1
     2a8:	8fa9006c 	lw	t1,108(sp)
     2ac:	8faa00b4 	lw	t2,180(sp)
     2b0:	12200025 	beqz	s1,348 <func_80095D04+0xe4>
     2b4:	8fab00b0 	lw	t3,176(sp)
     2b8:	3c040000 	lui	a0,0x0
     2bc:	24840000 	addiu	a0,a0,0
     2c0:	8fa504c0 	lw	a1,1216(sp)
     2c4:	afa9006c 	sw	t1,108(sp)
     2c8:	afaa00b4 	sw	t2,180(sp)
     2cc:	0c000000 	jal	0 <func_80095AA0>
     2d0:	afab00b0 	sw	t3,176(sp)
     2d4:	8fa9006c 	lw	t1,108(sp)
     2d8:	8faa00b4 	lw	t2,180(sp)
     2dc:	8fab00b0 	lw	t3,176(sp)
     2e0:	8d2202c0 	lw	v0,704(t1)
     2e4:	3c18db06 	lui	t8,0xdb06
     2e8:	3718000c 	ori	t8,t8,0xc
     2ec:	244f0008 	addiu	t7,v0,8
     2f0:	ad2f02c0 	sw	t7,704(t1)
     2f4:	ac580000 	sw	t8,0(v0)
     2f8:	8fb904c4 	lw	t9,1220(sp)
     2fc:	8f2e000c 	lw	t6,12(t9)
     300:	ac4e0004 	sw	t6,4(v0)
     304:	8fa404c0 	lw	a0,1216(sp)
     308:	afa9006c 	sw	t1,108(sp)
     30c:	afaa00b4 	sw	t2,180(sp)
     310:	0c000000 	jal	0 <func_80095AA0>
     314:	afab00b0 	sw	t3,176(sp)
     318:	8fa9006c 	lw	t1,108(sp)
     31c:	8faa00b4 	lw	t2,180(sp)
     320:	8fab00b0 	lw	t3,176(sp)
     324:	8d2202c0 	lw	v0,704(t1)
     328:	3c18da38 	lui	t8,0xda38
     32c:	3c190000 	lui	t9,0x0
     330:	244f0008 	addiu	t7,v0,8
     334:	ad2f02c0 	sw	t7,704(t1)
     338:	27390000 	addiu	t9,t9,0
     33c:	37180003 	ori	t8,t8,0x3
     340:	ac580000 	sw	t8,0(v0)
     344:	ac590004 	sw	t9,4(v0)
     348:	320d0002 	andi	t5,s0,0x2
     34c:	11a00029 	beqz	t5,3f4 <func_80095D04+0x190>
     350:	3c040000 	lui	a0,0x0
     354:	3c100000 	lui	s0,0x0
     358:	26100000 	addiu	s0,s0,0
     35c:	24840000 	addiu	a0,a0,0
     360:	8fa504c0 	lw	a1,1216(sp)
     364:	afa9006c 	sw	t1,108(sp)
     368:	afaa00b4 	sw	t2,180(sp)
     36c:	afab00b0 	sw	t3,176(sp)
     370:	0c000000 	jal	0 <func_80095AA0>
     374:	afad002c 	sw	t5,44(sp)
     378:	8fa9006c 	lw	t1,108(sp)
     37c:	8faa00b4 	lw	t2,180(sp)
     380:	8fab00b0 	lw	t3,176(sp)
     384:	8d2202d0 	lw	v0,720(t1)
     388:	8fad002c 	lw	t5,44(sp)
     38c:	3c0fdb06 	lui	t7,0xdb06
     390:	244e0008 	addiu	t6,v0,8
     394:	35ef000c 	ori	t7,t7,0xc
     398:	ad2e02d0 	sw	t6,720(t1)
     39c:	ac4f0000 	sw	t7,0(v0)
     3a0:	8fb804c4 	lw	t8,1220(sp)
     3a4:	8f19000c 	lw	t9,12(t8)
     3a8:	ac590004 	sw	t9,4(v0)
     3ac:	8fae04c0 	lw	t6,1216(sp)
     3b0:	8dc40000 	lw	a0,0(t6)
     3b4:	afa9006c 	sw	t1,108(sp)
     3b8:	afaa00b4 	sw	t2,180(sp)
     3bc:	afab00b0 	sw	t3,176(sp)
     3c0:	0c000000 	jal	0 <func_80095AA0>
     3c4:	afad002c 	sw	t5,44(sp)
     3c8:	8fa9006c 	lw	t1,108(sp)
     3cc:	8faa00b4 	lw	t2,180(sp)
     3d0:	8fab00b0 	lw	t3,176(sp)
     3d4:	8d2202d0 	lw	v0,720(t1)
     3d8:	8fad002c 	lw	t5,44(sp)
     3dc:	3c18da38 	lui	t8,0xda38
     3e0:	244f0008 	addiu	t7,v0,8
     3e4:	ad2f02d0 	sw	t7,720(t1)
     3e8:	37180003 	ori	t8,t8,0x3
     3ec:	ac580000 	sw	t8,0(v0)
     3f0:	ac500004 	sw	s0,4(v0)
     3f4:	8fb904c4 	lw	t9,1220(sp)
     3f8:	3c0100ff 	lui	at,0xff
     3fc:	3421ffff 	ori	at,at,0xffff
     400:	8f2c0008 	lw	t4,8(t9)
     404:	3c190000 	lui	t9,0x0
     408:	3c050000 	lui	a1,0x0
     40c:	8d820004 	lw	v0,4(t4)
     410:	91840001 	lbu	a0,1(t4)
     414:	27a300b8 	addiu	v1,sp,184
     418:	00027100 	sll	t6,v0,0x4
     41c:	000e7f02 	srl	t7,t6,0x1c
     420:	000fc080 	sll	t8,t7,0x2
     424:	0338c821 	addu	t9,t9,t8
     428:	8f390000 	lw	t9,0(t9)
     42c:	00417024 	and	t6,v0,at
     430:	3c018000 	lui	at,0x8000
     434:	032e8021 	addu	s0,t9,t6
     438:	02018021 	addu	s0,s0,at
     43c:	28810041 	slti	at,a0,65
     440:	14200012 	bnez	at,48c <func_80095D04+0x228>
     444:	24a50000 	addiu	a1,a1,0
     448:	3c040000 	lui	a0,0x0
     44c:	24840000 	addiu	a0,a0,0
     450:	2406013d 	li	a2,317
     454:	afa300a4 	sw	v1,164(sp)
     458:	afa9006c 	sw	t1,108(sp)
     45c:	afaa00b4 	sw	t2,180(sp)
     460:	afab00b0 	sw	t3,176(sp)
     464:	afac04bc 	sw	t4,1212(sp)
     468:	0c000000 	jal	0 <func_80095AA0>
     46c:	afad002c 	sw	t5,44(sp)
     470:	8fac04bc 	lw	t4,1212(sp)
     474:	8fa300a4 	lw	v1,164(sp)
     478:	8fa9006c 	lw	t1,108(sp)
     47c:	8faa00b4 	lw	t2,180(sp)
     480:	8fab00b0 	lw	t3,176(sp)
     484:	8fad002c 	lw	t5,44(sp)
     488:	91840001 	lbu	a0,1(t4)
     48c:	afb00078 	sw	s0,120(sp)
     490:	18800061 	blez	a0,618 <func_80095D04+0x3b4>
     494:	00004025 	move	t0,zero
     498:	8fa404c0 	lw	a0,1216(sp)
     49c:	3c010001 	lui	at,0x1
     4a0:	34211d60 	ori	at,at,0x1d60
     4a4:	00812021 	addu	a0,a0,at
     4a8:	afa40028 	sw	a0,40(sp)
     4ac:	860f0000 	lh	t7,0(s0)
     4b0:	8fa40028 	lw	a0,40(sp)
     4b4:	27a50090 	addiu	a1,sp,144
     4b8:	448f2000 	mtc1	t7,$f4
     4bc:	27a60084 	addiu	a2,sp,132
     4c0:	27a70080 	addiu	a3,sp,128
     4c4:	468021a0 	cvt.s.w	$f6,$f4
     4c8:	e7a60090 	swc1	$f6,144(sp)
     4cc:	86180002 	lh	t8,2(s0)
     4d0:	44984000 	mtc1	t8,$f8
     4d4:	00000000 	nop
     4d8:	468042a0 	cvt.s.w	$f10,$f8
     4dc:	e7aa0094 	swc1	$f10,148(sp)
     4e0:	86190004 	lh	t9,4(s0)
     4e4:	afad002c 	sw	t5,44(sp)
     4e8:	afac04bc 	sw	t4,1212(sp)
     4ec:	44998000 	mtc1	t9,$f16
     4f0:	afab00b0 	sw	t3,176(sp)
     4f4:	afaa00b4 	sw	t2,180(sp)
     4f8:	468084a0 	cvt.s.w	$f18,$f16
     4fc:	afa9006c 	sw	t1,108(sp)
     500:	afa8009c 	sw	t0,156(sp)
     504:	afa300a4 	sw	v1,164(sp)
     508:	0c000000 	jal	0 <func_80095AA0>
     50c:	e7b20098 	swc1	$f18,152(sp)
     510:	860e0006 	lh	t6,6(s0)
     514:	c7a8008c 	lwc1	$f8,140(sp)
     518:	8fa300a4 	lw	v1,164(sp)
     51c:	448e2000 	mtc1	t6,$f4
     520:	8fa8009c 	lw	t0,156(sp)
     524:	8fa9006c 	lw	t1,108(sp)
     528:	46802020 	cvt.s.w	$f0,$f4
     52c:	8faa00b4 	lw	t2,180(sp)
     530:	8fab00b0 	lw	t3,176(sp)
     534:	8fac04bc 	lw	t4,1212(sp)
     538:	8fad002c 	lw	t5,44(sp)
     53c:	8faf04c0 	lw	t7,1216(sp)
     540:	46000187 	neg.s	$f6,$f0
     544:	4608303c 	c.lt.s	$f6,$f8
     548:	00000000 	nop
     54c:	4502002d 	bc1fl	604 <func_80095D04+0x3a0>
     550:	91840001 	lbu	a0,1(t4)
     554:	85f807b4 	lh	t8,1972(t7)
     558:	46004081 	sub.s	$f2,$f8,$f0
     55c:	01401025 	move	v0,t2
     560:	44985000 	mtc1	t8,$f10
     564:	00000000 	nop
     568:	46805420 	cvt.s.w	$f16,$f10
     56c:	4610103c 	c.lt.s	$f2,$f16
     570:	00000000 	nop
     574:	45020023 	bc1fl	604 <func_80095D04+0x3a0>
     578:	91840001 	lbu	a0,1(t4)
     57c:	ac700000 	sw	s0,0(v1)
     580:	15400006 	bnez	t2,59c <func_80095D04+0x338>
     584:	e4620004 	swc1	$f2,4(v1)
     588:	00605825 	move	t3,v1
     58c:	00605025 	move	t2,v1
     590:	ac60000c 	sw	zero,12(v1)
     594:	10000019 	b	5fc <func_80095D04+0x398>
     598:	ac600008 	sw	zero,8(v1)
     59c:	c4600004 	lwc1	$f0,4(v1)
     5a0:	c4520004 	lwc1	$f18,4(v0)
     5a4:	4612003c 	c.lt.s	$f0,$f18
     5a8:	00000000 	nop
     5ac:	45010004 	bc1t	5c0 <func_80095D04+0x35c>
     5b0:	00000000 	nop
     5b4:	8c42000c 	lw	v0,12(v0)
     5b8:	5440fffa 	bnezl	v0,5a4 <func_80095D04+0x340>
     5bc:	c4520004 	lwc1	$f18,4(v0)
     5c0:	54400007 	bnezl	v0,5e0 <func_80095D04+0x37c>
     5c4:	8c440008 	lw	a0,8(v0)
     5c8:	ac6b0008 	sw	t3,8(v1)
     5cc:	ac60000c 	sw	zero,12(v1)
     5d0:	ad63000c 	sw	v1,12(t3)
     5d4:	10000009 	b	5fc <func_80095D04+0x398>
     5d8:	00605825 	move	t3,v1
     5dc:	8c440008 	lw	a0,8(v0)
     5e0:	14800003 	bnez	a0,5f0 <func_80095D04+0x38c>
     5e4:	ac640008 	sw	a0,8(v1)
     5e8:	10000002 	b	5f4 <func_80095D04+0x390>
     5ec:	00605025 	move	t2,v1
     5f0:	ac83000c 	sw	v1,12(a0)
     5f4:	ac430008 	sw	v1,8(v0)
     5f8:	ac62000c 	sw	v0,12(v1)
     5fc:	24630010 	addiu	v1,v1,16
     600:	91840001 	lbu	a0,1(t4)
     604:	25080001 	addiu	t0,t0,1
     608:	26100010 	addiu	s0,s0,16
     60c:	0104082a 	slt	at,t0,a0
     610:	5420ffa7 	bnezl	at,4b0 <func_80095D04+0x24c>
     614:	860f0000 	lh	t7,0(s0)
     618:	3c190000 	lui	t9,0x0
     61c:	8f390000 	lw	t9,0(t9)
     620:	24080001 	li	t0,1
     624:	1140004c 	beqz	t2,758 <func_80095D04+0x4f4>
     628:	a7240d82 	sh	a0,3458(t9)
     62c:	241f0002 	li	ra,2
     630:	240b0001 	li	t3,1
     634:	3c07de00 	lui	a3,0xde00
     638:	3c050000 	lui	a1,0x0
     63c:	8ca50000 	lw	a1,0(a1)
     640:	8d500000 	lw	s0,0(t2)
     644:	84a60d80 	lh	a2,3456(a1)
     648:	10c0002b 	beqz	a2,6f8 <func_80095D04+0x494>
     64c:	00000000 	nop
     650:	91840001 	lbu	a0,1(t4)
     654:	8fa20078 	lw	v0,120(sp)
     658:	00001825 	move	v1,zero
     65c:	18800006 	blez	a0,678 <func_80095D04+0x414>
     660:	00000000 	nop
     664:	12020004 	beq	s0,v0,678 <func_80095D04+0x414>
     668:	24630001 	addiu	v1,v1,1
     66c:	0064082a 	slt	at,v1,a0
     670:	1420fffc 	bnez	at,664 <func_80095D04+0x400>
     674:	24420010 	addiu	v0,v0,16
     678:	15660005 	bne	t3,a2,690 <func_80095D04+0x42c>
     67c:	00000000 	nop
     680:	84ae0d86 	lh	t6,3462(a1)
     684:	01c8082a 	slt	at,t6,t0
     688:	10200006 	beqz	at,6a4 <func_80095D04+0x440>
     68c:	00000000 	nop
     690:	57e6002e 	bnel	ra,a2,74c <func_80095D04+0x4e8>
     694:	8d4a000c 	lw	t2,12(t2)
     698:	84af0d86 	lh	t7,3462(a1)
     69c:	550f002b 	bnel	t0,t7,74c <func_80095D04+0x4e8>
     6a0:	8d4a000c 	lw	t2,12(t2)
     6a4:	12200009 	beqz	s1,6cc <func_80095D04+0x468>
     6a8:	00000000 	nop
     6ac:	8e030008 	lw	v1,8(s0)
     6b0:	10600006 	beqz	v1,6cc <func_80095D04+0x468>
     6b4:	00000000 	nop
     6b8:	8d2202c0 	lw	v0,704(t1)
     6bc:	24580008 	addiu	t8,v0,8
     6c0:	ad3802c0 	sw	t8,704(t1)
     6c4:	ac430004 	sw	v1,4(v0)
     6c8:	ac470000 	sw	a3,0(v0)
     6cc:	51a0001f 	beqzl	t5,74c <func_80095D04+0x4e8>
     6d0:	8d4a000c 	lw	t2,12(t2)
     6d4:	8e03000c 	lw	v1,12(s0)
     6d8:	5060001c 	beqzl	v1,74c <func_80095D04+0x4e8>
     6dc:	8d4a000c 	lw	t2,12(t2)
     6e0:	8d2202d0 	lw	v0,720(t1)
     6e4:	24590008 	addiu	t9,v0,8
     6e8:	ad3902d0 	sw	t9,720(t1)
     6ec:	ac430004 	sw	v1,4(v0)
     6f0:	10000015 	b	748 <func_80095D04+0x4e4>
     6f4:	ac470000 	sw	a3,0(v0)
     6f8:	12200009 	beqz	s1,720 <func_80095D04+0x4bc>
     6fc:	00000000 	nop
     700:	8e030008 	lw	v1,8(s0)
     704:	10600006 	beqz	v1,720 <func_80095D04+0x4bc>
     708:	00000000 	nop
     70c:	8d2202c0 	lw	v0,704(t1)
     710:	244e0008 	addiu	t6,v0,8
     714:	ad2e02c0 	sw	t6,704(t1)
     718:	ac430004 	sw	v1,4(v0)
     71c:	ac470000 	sw	a3,0(v0)
     720:	51a0000a 	beqzl	t5,74c <func_80095D04+0x4e8>
     724:	8d4a000c 	lw	t2,12(t2)
     728:	8e03000c 	lw	v1,12(s0)
     72c:	50600007 	beqzl	v1,74c <func_80095D04+0x4e8>
     730:	8d4a000c 	lw	t2,12(t2)
     734:	8d2202d0 	lw	v0,720(t1)
     738:	244f0008 	addiu	t7,v0,8
     73c:	ad2f02d0 	sw	t7,720(t1)
     740:	ac430004 	sw	v1,4(v0)
     744:	ac470000 	sw	a3,0(v0)
     748:	8d4a000c 	lw	t2,12(t2)
     74c:	25080001 	addiu	t0,t0,1
     750:	1540ffb9 	bnez	t2,638 <func_80095D04+0x3d4>
     754:	00000000 	nop
     758:	3c190000 	lui	t9,0x0
     75c:	8f390000 	lw	t9,0(t9)
     760:	2518ffff 	addiu	t8,t0,-1
     764:	3c060000 	lui	a2,0x0
     768:	a7380d84 	sh	t8,3460(t9)
     76c:	8fae04c0 	lw	t6,1216(sp)
     770:	24c60000 	addiu	a2,a2,0
     774:	27a4005c 	addiu	a0,sp,92
     778:	240701ae 	li	a3,430
     77c:	0c000000 	jal	0 <func_80095AA0>
     780:	8dc50000 	lw	a1,0(t6)
     784:	8fbf001c 	lw	ra,28(sp)
     788:	8fb00014 	lw	s0,20(sp)
     78c:	8fb10018 	lw	s1,24(sp)
     790:	03e00008 	jr	ra
     794:	27bd04c0 	addiu	sp,sp,1216

00000798 <func_80096238>:
     798:	27bdffe0 	addiu	sp,sp,-32
     79c:	afbf0014 	sw	ra,20(sp)
     7a0:	afa40020 	sw	a0,32(sp)
     7a4:	8c8f0000 	lw	t7,0(a0)
     7a8:	3c01ffd8 	lui	at,0xffd8
     7ac:	3421ffe0 	ori	at,at,0xffe0
     7b0:	15e10049 	bne	t7,at,8d8 <func_80096238+0x140>
     7b4:	3c040000 	lui	a0,0x0
     7b8:	0c000000 	jal	0 <func_80095AA0>
     7bc:	2484005c 	addiu	a0,a0,92
     7c0:	3c040000 	lui	a0,0x0
     7c4:	24840074 	addiu	a0,a0,116
     7c8:	0c000000 	jal	0 <func_80095AA0>
     7cc:	8fa50020 	lw	a1,32(sp)
     7d0:	3c040000 	lui	a0,0x0
     7d4:	3c050000 	lui	a1,0x0
     7d8:	24a50000 	addiu	a1,a1,0
     7dc:	0c000000 	jal	0 <func_80095AA0>
     7e0:	24840090 	addiu	a0,a0,144
     7e4:	0c000000 	jal	0 <func_80095AA0>
     7e8:	00000000 	nop
     7ec:	3c050000 	lui	a1,0x0
     7f0:	3c060000 	lui	a2,0x0
     7f4:	3c070001 	lui	a3,0x1
     7f8:	afa20018 	sw	v0,24(sp)
     7fc:	afa3001c 	sw	v1,28(sp)
     800:	34e78000 	ori	a3,a3,0x8000
     804:	24c60000 	addiu	a2,a2,0
     808:	24a50000 	addiu	a1,a1,0
     80c:	0c000000 	jal	0 <func_80095AA0>
     810:	8fa40020 	lw	a0,32(sp)
     814:	1440002e 	bnez	v0,8d0 <func_80096238+0x138>
     818:	3c040000 	lui	a0,0x0
     81c:	0c000000 	jal	0 <func_80095AA0>
     820:	00000000 	nop
     824:	8fb80018 	lw	t8,24(sp)
     828:	8fb9001c 	lw	t9,28(sp)
     82c:	24060000 	li	a2,0
     830:	00584023 	subu	t0,v0,t8
     834:	0079082b 	sltu	at,v1,t9
     838:	01012023 	subu	a0,t0,at
     83c:	00792823 	subu	a1,v1,t9
     840:	afa5001c 	sw	a1,28(sp)
     844:	afa40018 	sw	a0,24(sp)
     848:	0c000000 	jal	0 <func_80095AA0>
     84c:	24070040 	li	a3,64
     850:	00402025 	move	a0,v0
     854:	00602825 	move	a1,v1
     858:	24060000 	li	a2,0
     85c:	0c000000 	jal	0 <func_80095AA0>
     860:	24070bb8 	li	a3,3000
     864:	00402025 	move	a0,v0
     868:	0c000000 	jal	0 <func_80095AA0>
     86c:	00602825 	move	a1,v1
     870:	3c01447a 	lui	at,0x447a
     874:	44812000 	mtc1	at,$f4
     878:	3c040000 	lui	a0,0x0
     87c:	248400bc 	addiu	a0,a0,188
     880:	46040183 	div.s	$f6,$f0,$f4
     884:	46003221 	cvt.d.s	$f8,$f6
     888:	44074000 	mfc1	a3,$f8
     88c:	44064800 	mfc1	a2,$f9
     890:	0c000000 	jal	0 <func_80095AA0>
     894:	00000000 	nop
     898:	3c040000 	lui	a0,0x0
     89c:	0c000000 	jal	0 <func_80095AA0>
     8a0:	248400e0 	addiu	a0,a0,224
     8a4:	3c040000 	lui	a0,0x0
     8a8:	0c000000 	jal	0 <func_80095AA0>
     8ac:	24840110 	addiu	a0,a0,272
     8b0:	3c040000 	lui	a0,0x0
     8b4:	3c060002 	lui	a2,0x2
     8b8:	34c65800 	ori	a2,a2,0x5800
     8bc:	24840000 	addiu	a0,a0,0
     8c0:	0c000000 	jal	0 <func_80095AA0>
     8c4:	8fa50020 	lw	a1,32(sp)
     8c8:	10000004 	b	8dc <func_80096238+0x144>
     8cc:	8fbf0014 	lw	ra,20(sp)
     8d0:	0c000000 	jal	0 <func_80095AA0>
     8d4:	24840150 	addiu	a0,a0,336
     8d8:	8fbf0014 	lw	ra,20(sp)
     8dc:	27bd0020 	addiu	sp,sp,32
     8e0:	00001025 	move	v0,zero
     8e4:	03e00008 	jr	ra
     8e8:	00000000 	nop

000008ec <func_8009638C>:
     8ec:	27bdffe0 	addiu	sp,sp,-32
     8f0:	00057900 	sll	t7,a1,0x4
     8f4:	000fc702 	srl	t8,t7,0x1c
     8f8:	0018c880 	sll	t9,t8,0x2
     8fc:	3c090000 	lui	t1,0x0
     900:	01394821 	addu	t1,t1,t9
     904:	3c0100ff 	lui	at,0xff
     908:	8d290000 	lw	t1,0(t1)
     90c:	afbf0014 	sw	ra,20(sp)
     910:	afa40020 	sw	a0,32(sp)
     914:	afa60028 	sw	a2,40(sp)
     918:	afa7002c 	sw	a3,44(sp)
     91c:	3421ffff 	ori	at,at,0xffff
     920:	8c820000 	lw	v0,0(a0)
     924:	00a15024 	and	t2,a1,at
     928:	3c018000 	lui	at,0x8000
     92c:	012a2021 	addu	a0,t1,t2
     930:	00812021 	addu	a0,a0,at
     934:	afa50024 	sw	a1,36(sp)
     938:	0c000000 	jal	0 <func_80095AA0>
     93c:	afa2001c 	sw	v0,28(sp)
     940:	8fa2001c 	lw	v0,28(sp)
     944:	3c0bde01 	lui	t3,0xde01
     948:	3c014080 	lui	at,0x4080
     94c:	24430008 	addiu	v1,v0,8
     950:	246c0028 	addiu	t4,v1,40
     954:	ac4c0004 	sw	t4,4(v0)
     958:	ac4b0000 	sw	t3,0(v0)
     95c:	93a80037 	lbu	t0,55(sp)
     960:	a4600000 	sh	zero,0(v1)
     964:	97a6002e 	lhu	a2,46(sp)
     968:	44810000 	mtc1	at,$f0
     96c:	3409fff4 	li	t1,0xfff4
     970:	00063080 	sll	a2,a2,0x2
     974:	a4660002 	sh	a2,2(v1)
     978:	c7a40044 	lwc1	$f4,68(sp)
     97c:	a4600008 	sh	zero,8(v1)
     980:	00602825 	move	a1,v1
     984:	46002182 	mul.s	$f6,$f4,$f0
     988:	24010002 	li	at,2
     98c:	24630028 	addiu	v1,v1,40
     990:	24620008 	addiu	v0,v1,8
     994:	3c0bfd10 	lui	t3,0xfd10
     998:	3c0de800 	lui	t5,0xe800
     99c:	3c040700 	lui	a0,0x700
     9a0:	4600320d 	trunc.w.s	$f8,$f6
     9a4:	3c0fe600 	lui	t7,0xe600
     9a8:	440e4000 	mfc1	t6,$f8
     9ac:	00000000 	nop
     9b0:	a46effdc 	sh	t6,-36(v1)
     9b4:	97a70032 	lhu	a3,50(sp)
     9b8:	3c0ee700 	lui	t6,0xe700
     9bc:	00073880 	sll	a3,a3,0x2
     9c0:	a467ffe2 	sh	a3,-30(v1)
     9c4:	c7aa0048 	lwc1	$f10,72(sp)
     9c8:	46005402 	mul.s	$f16,$f10,$f0
     9cc:	4600848d 	trunc.w.s	$f18,$f16
     9d0:	44189000 	mfc1	t8,$f18
     9d4:	00000000 	nop
     9d8:	a478ffe4 	sh	t8,-28(v1)
     9dc:	8fb90024 	lw	t9,36(sp)
     9e0:	a469ffec 	sh	t1,-20(v1)
     9e4:	a068ffee 	sb	t0,-18(v1)
     9e8:	ac79ffe8 	sw	t9,-24(v1)
     9ec:	93aa003b 	lbu	t2,59(sp)
     9f0:	a460fff0 	sh	zero,-16(v1)
     9f4:	a460fff2 	sh	zero,-14(v1)
     9f8:	15010022 	bne	t0,at,a84 <func_8009638C+0x198>
     9fc:	a06affef 	sb	t2,-17(v1)
     a00:	ac6b0000 	sw	t3,0(v1)
     a04:	8fac0028 	lw	t4,40(sp)
     a08:	3c0ef500 	lui	t6,0xf500
     a0c:	35ce0100 	ori	t6,t6,0x100
     a10:	ac6c0004 	sw	t4,4(v1)
     a14:	00401825 	move	v1,v0
     a18:	ac6d0000 	sw	t5,0(v1)
     a1c:	ac600004 	sw	zero,4(v1)
     a20:	24420008 	addiu	v0,v0,8
     a24:	00401825 	move	v1,v0
     a28:	ac6e0000 	sw	t6,0(v1)
     a2c:	ac640004 	sw	a0,4(v1)
     a30:	24420008 	addiu	v0,v0,8
     a34:	00401825 	move	v1,v0
     a38:	ac6f0000 	sw	t7,0(v1)
     a3c:	ac600004 	sw	zero,4(v1)
     a40:	24420008 	addiu	v0,v0,8
     a44:	00401825 	move	v1,v0
     a48:	3c18f000 	lui	t8,0xf000
     a4c:	ac780000 	sw	t8,0(v1)
     a50:	97b90042 	lhu	t9,66(sp)
     a54:	24420008 	addiu	v0,v0,8
     a58:	3c0de700 	lui	t5,0xe700
     a5c:	2729ffff 	addiu	t1,t9,-1
     a60:	312a03ff 	andi	t2,t1,0x3ff
     a64:	000a5b80 	sll	t3,t2,0xe
     a68:	01646025 	or	t4,t3,a0
     a6c:	ac6c0004 	sw	t4,4(v1)
     a70:	00401825 	move	v1,v0
     a74:	ac6d0000 	sw	t5,0(v1)
     a78:	ac600004 	sw	zero,4(v1)
     a7c:	10000005 	b	a94 <func_8009638C+0x1a8>
     a80:	24420008 	addiu	v0,v0,8
     a84:	24a30028 	addiu	v1,a1,40
     a88:	24620008 	addiu	v0,v1,8
     a8c:	ac6e0000 	sw	t6,0(v1)
     a90:	ac600004 	sw	zero,4(v1)
     a94:	15000020 	bnez	t0,b18 <func_8009638C+0x22c>
     a98:	3c0f0000 	lui	t7,0x0
     a9c:	8def0000 	lw	t7,0(t7)
     aa0:	00a02025 	move	a0,a1
     aa4:	85f80108 	lh	t8,264(t7)
     aa8:	5700001c 	bnezl	t8,b1c <func_8009638C+0x230>
     aac:	94ae0008 	lhu	t6,8(a1)
     ab0:	a4a60006 	sh	a2,6(a1)
     ab4:	a4a7000e 	sh	a3,14(a1)
     ab8:	afa50018 	sw	a1,24(sp)
     abc:	0c000000 	jal	0 <func_80095AA0>
     ac0:	afa2001c 	sw	v0,28(sp)
     ac4:	97b9003e 	lhu	t9,62(sp)
     ac8:	3c010020 	lui	at,0x20
     acc:	8fa2001c 	lw	v0,28(sp)
     ad0:	03214825 	or	t1,t9,at
     ad4:	3c0100ff 	lui	at,0xff
     ad8:	3421ffff 	ori	at,at,0xffff
     adc:	01215024 	and	t2,t1,at
     ae0:	00401825 	move	v1,v0
     ae4:	8fa50018 	lw	a1,24(sp)
     ae8:	3c01ef00 	lui	at,0xef00
     aec:	01415825 	or	t3,t2,at
     af0:	240c0001 	li	t4,1
     af4:	ac6c0004 	sw	t4,4(v1)
     af8:	ac6b0000 	sw	t3,0(v1)
     afc:	24420008 	addiu	v0,v0,8
     b00:	00401825 	move	v1,v0
     b04:	3c0d0a00 	lui	t5,0xa00
     b08:	ac6d0000 	sw	t5,0(v1)
     b0c:	24420008 	addiu	v0,v0,8
     b10:	10000028 	b	bb4 <func_8009638C+0x2c8>
     b14:	ac650004 	sw	a1,4(v1)
     b18:	94ae0008 	lhu	t6,8(a1)
     b1c:	24030400 	li	v1,1024
     b20:	a4a60006 	sh	a2,6(a1)
     b24:	a4a7000e 	sh	a3,14(a1)
     b28:	a4a3001c 	sh	v1,28(a1)
     b2c:	a4a3001e 	sh	v1,30(a1)
     b30:	acae0020 	sw	t6,32(a1)
     b34:	97b9003e 	lhu	t9,62(sp)
     b38:	3c0100ff 	lui	at,0xff
     b3c:	3421ffff 	ori	at,at,0xffff
     b40:	37290cf0 	ori	t1,t9,0xcf0
     b44:	01215024 	and	t2,t1,at
     b48:	00401825 	move	v1,v0
     b4c:	3c01ef00 	lui	at,0xef00
     b50:	3c0c00a0 	lui	t4,0xa0
     b54:	358c3009 	ori	t4,t4,0x3009
     b58:	01415825 	or	t3,t2,at
     b5c:	ac6b0000 	sw	t3,0(v1)
     b60:	ac6c0004 	sw	t4,4(v1)
     b64:	24420008 	addiu	v0,v0,8
     b68:	00401825 	move	v1,v0
     b6c:	3c0efffc 	lui	t6,0xfffc
     b70:	3c0dfcff 	lui	t5,0xfcff
     b74:	35adffff 	ori	t5,t5,0xffff
     b78:	35cefc7e 	ori	t6,t6,0xfc7e
     b7c:	ac6e0004 	sw	t6,4(v1)
     b80:	ac6d0000 	sw	t5,0(v1)
     b84:	24420008 	addiu	v0,v0,8
     b88:	00401825 	move	v1,v0
     b8c:	3c0f0b00 	lui	t7,0xb00
     b90:	2418000c 	li	t8,12
     b94:	ac780004 	sw	t8,4(v1)
     b98:	ac6f0000 	sw	t7,0(v1)
     b9c:	24420008 	addiu	v0,v0,8
     ba0:	00401825 	move	v1,v0
     ba4:	3c190900 	lui	t9,0x900
     ba8:	ac790000 	sw	t9,0(v1)
     bac:	ac650004 	sw	a1,4(v1)
     bb0:	24420008 	addiu	v0,v0,8
     bb4:	00401825 	move	v1,v0
     bb8:	3c09e700 	lui	t1,0xe700
     bbc:	ac690000 	sw	t1,0(v1)
     bc0:	ac600004 	sw	zero,4(v1)
     bc4:	8faa0020 	lw	t2,32(sp)
     bc8:	24420008 	addiu	v0,v0,8
     bcc:	ad420000 	sw	v0,0(t2)
     bd0:	8fbf0014 	lw	ra,20(sp)
     bd4:	27bd0020 	addiu	sp,sp,32
     bd8:	03e00008 	jr	ra
     bdc:	00000000 	nop

00000be0 <func_80096680>:
     be0:	27bdff50 	addiu	sp,sp,-176
     be4:	afbf003c 	sw	ra,60(sp)
     be8:	afb00038 	sw	s0,56(sp)
     bec:	afa400b0 	sw	a0,176(sp)
     bf0:	afa500b4 	sw	a1,180(sp)
     bf4:	afa600b8 	sw	a2,184(sp)
     bf8:	8c850000 	lw	a1,0(a0)
     bfc:	3c060000 	lui	a2,0x0
     c00:	24c60160 	addiu	a2,a2,352
     c04:	27a4007c 	addiu	a0,sp,124
     c08:	24070274 	li	a3,628
     c0c:	0c000000 	jal	0 <func_80095AA0>
     c10:	00a08025 	move	s0,a1
     c14:	8fac00b4 	lw	t4,180(sp)
     c18:	8fab00b0 	lw	t3,176(sp)
     c1c:	3c0100ff 	lui	at,0xff
     c20:	8d890008 	lw	t1,8(t4)
     c24:	856f07a0 	lh	t7,1952(t3)
     c28:	8faa00b8 	lw	t2,184(sp)
     c2c:	8d220004 	lw	v0,4(t1)
     c30:	000fc080 	sll	t8,t7,0x2
     c34:	0178c821 	addu	t9,t3,t8
     c38:	00026900 	sll	t5,v0,0x4
     c3c:	000d7702 	srl	t6,t5,0x1c
     c40:	8f260790 	lw	a2,1936(t9)
     c44:	000e7880 	sll	t7,t6,0x2
     c48:	3c180000 	lui	t8,0x0
     c4c:	030fc021 	addu	t8,t8,t7
     c50:	8f180000 	lw	t8,0(t8)
     c54:	3421ffff 	ori	at,at,0xffff
     c58:	84c40142 	lh	a0,322(a2)
     c5c:	0041c824 	and	t9,v0,at
     c60:	3c018000 	lui	at,0x8000
     c64:	31430001 	andi	v1,t2,0x1
     c68:	03196021 	addu	t4,t8,t9
     c6c:	01816821 	addu	t5,t4,at
     c70:	0003182b 	sltu	v1,zero,v1
     c74:	38840019 	xori	a0,a0,0x19
     c78:	2c840001 	sltiu	a0,a0,1
     c7c:	afad00a0 	sw	t5,160(sp)
     c80:	1060000e 	beqz	v1,cbc <func_80096680+0xdc>
     c84:	00604025 	move	t0,v1
     c88:	0004402b 	sltu	t0,zero,a0
     c8c:	1100000b 	beqz	t0,cbc <func_80096680+0xdc>
     c90:	00000000 	nop
     c94:	8d280008 	lw	t0,8(t1)
     c98:	3c070000 	lui	a3,0x0
     c9c:	24e70000 	addiu	a3,a3,0
     ca0:	0008402b 	sltu	t0,zero,t0
     ca4:	11000005 	beqz	t0,cbc <func_80096680+0xdc>
     ca8:	00000000 	nop
     cac:	8cee0000 	lw	t6,0(a3)
     cb0:	85c80106 	lh	t0,262(t6)
     cb4:	31080001 	andi	t0,t0,0x1
     cb8:	2d080001 	sltiu	t0,t0,1
     cbc:	3c070000 	lui	a3,0x0
     cc0:	01002825 	move	a1,t0
     cc4:	24e70000 	addiu	a3,a3,0
     cc8:	1060000a 	beqz	v1,cf4 <func_80096680+0x114>
     ccc:	00604025 	move	t0,v1
     cd0:	8faf00a0 	lw	t7,160(sp)
     cd4:	8de80000 	lw	t0,0(t7)
     cd8:	0008402b 	sltu	t0,zero,t0
     cdc:	51000006 	beqzl	t0,cf8 <func_80096680+0x118>
     ce0:	01002025 	move	a0,t0
     ce4:	8cf80000 	lw	t8,0(a3)
     ce8:	87080106 	lh	t0,262(t8)
     cec:	31080002 	andi	t0,t0,0x2
     cf0:	2d080001 	sltiu	t0,t0,1
     cf4:	01002025 	move	a0,t0
     cf8:	31420002 	andi	v0,t2,0x2
     cfc:	0002402b 	sltu	t0,zero,v0
     d00:	11000009 	beqz	t0,d28 <func_80096680+0x148>
     d04:	8fb900a0 	lw	t9,160(sp)
     d08:	8f280004 	lw	t0,4(t9)
     d0c:	0008402b 	sltu	t0,zero,t0
     d10:	11000005 	beqz	t0,d28 <func_80096680+0x148>
     d14:	00000000 	nop
     d18:	8cec0000 	lw	t4,0(a3)
     d1c:	85880106 	lh	t0,262(t4)
     d20:	31080004 	andi	t0,t0,0x4
     d24:	2d080001 	sltiu	t0,t0,1
     d28:	54800004 	bnezl	a0,d3c <func_80096680+0x15c>
     d2c:	8e0302c0 	lw	v1,704(s0)
     d30:	10a0007c 	beqz	a1,f24 <func_80096680+0x344>
     d34:	00000000 	nop
     d38:	8e0302c0 	lw	v1,704(s0)
     d3c:	3c0edb06 	lui	t6,0xdb06
     d40:	35ce000c 	ori	t6,t6,0xc
     d44:	246d0008 	addiu	t5,v1,8
     d48:	ae0d02c0 	sw	t5,704(s0)
     d4c:	ac6e0000 	sw	t6,0(v1)
     d50:	8faf00b4 	lw	t7,180(sp)
     d54:	8df8000c 	lw	t8,12(t7)
     d58:	1080001d 	beqz	a0,dd0 <func_80096680+0x1f0>
     d5c:	ac780004 	sw	t8,4(v1)
     d60:	8d640000 	lw	a0,0(t3)
     d64:	afa900a4 	sw	t1,164(sp)
     d68:	afa8004c 	sw	t0,76(sp)
     d6c:	afa600ac 	sw	a2,172(sp)
     d70:	0c000000 	jal	0 <func_80095AA0>
     d74:	afa50098 	sw	a1,152(sp)
     d78:	8e0302c0 	lw	v1,704(s0)
     d7c:	8fa50098 	lw	a1,152(sp)
     d80:	8fa600ac 	lw	a2,172(sp)
     d84:	8fa8004c 	lw	t0,76(sp)
     d88:	8fa900a4 	lw	t1,164(sp)
     d8c:	24790008 	addiu	t9,v1,8
     d90:	ae1902c0 	sw	t9,704(s0)
     d94:	3c0cda38 	lui	t4,0xda38
     d98:	3c0d0000 	lui	t5,0x0
     d9c:	25ad0000 	addiu	t5,t5,0
     da0:	358c0003 	ori	t4,t4,0x3
     da4:	ac6c0000 	sw	t4,0(v1)
     da8:	ac6d0004 	sw	t5,4(v1)
     dac:	8e0302c0 	lw	v1,704(s0)
     db0:	3c0fde00 	lui	t7,0xde00
     db4:	246e0008 	addiu	t6,v1,8
     db8:	ae0e02c0 	sw	t6,704(s0)
     dbc:	ac6f0000 	sw	t7,0(v1)
     dc0:	8fb800a0 	lw	t8,160(sp)
     dc4:	8f190000 	lw	t9,0(t8)
     dc8:	ac790004 	sw	t9,4(v1)
     dcc:	8fab00b0 	lw	t3,176(sp)
     dd0:	10a00054 	beqz	a1,f24 <func_80096680+0x344>
     dd4:	3c0de100 	lui	t5,0xe100
     dd8:	8e0302c0 	lw	v1,704(s0)
     ddc:	3c0e8000 	lui	t6,0x8000
     de0:	25ce0000 	addiu	t6,t6,0
     de4:	246c0008 	addiu	t4,v1,8
     de8:	ae0c02c0 	sw	t4,704(s0)
     dec:	ac6e0004 	sw	t6,4(v1)
     df0:	ac6d0000 	sw	t5,0(v1)
     df4:	8e0302c0 	lw	v1,704(s0)
     df8:	3c18dd00 	lui	t8,0xdd00
     dfc:	3c198000 	lui	t9,0x8000
     e00:	246f0008 	addiu	t7,v1,8
     e04:	ae0f02c0 	sw	t7,704(s0)
     e08:	27390000 	addiu	t9,t9,0
     e0c:	371807ff 	ori	t8,t8,0x7ff
     e10:	ac780000 	sw	t8,0(v1)
     e14:	ac790004 	sw	t9,4(v1)
     e18:	8e0c02c0 	lw	t4,704(s0)
     e1c:	afa900a4 	sw	t1,164(sp)
     e20:	afa8004c 	sw	t0,76(sp)
     e24:	27a40060 	addiu	a0,sp,96
     e28:	00c02825 	move	a1,a2
     e2c:	0c000000 	jal	0 <func_80095AA0>
     e30:	afac00a8 	sw	t4,168(sp)
     e34:	c7a40060 	lwc1	$f4,96(sp)
     e38:	c7a60068 	lwc1	$f6,104(sp)
     e3c:	3c010000 	lui	at,0x0
     e40:	c42a036c 	lwc1	$f10,876(at)
     e44:	c7a80064 	lwc1	$f8,100(sp)
     e48:	46062000 	add.s	$f0,$f4,$f6
     e4c:	8fa900a4 	lw	t1,164(sp)
     e50:	3c010000 	lui	at,0x0
     e54:	460a4402 	mul.s	$f16,$f8,$f10
     e58:	c4320370 	lwc1	$f18,880(at)
     e5c:	952d0016 	lhu	t5,22(t1)
     e60:	8d250008 	lw	a1,8(t1)
     e64:	46120102 	mul.s	$f4,$f0,$f18
     e68:	8d260010 	lw	a2,16(t1)
     e6c:	95270014 	lhu	a3,20(t1)
     e70:	afad0010 	sw	t5,16(sp)
     e74:	912e0018 	lbu	t6,24(t1)
     e78:	3c010000 	lui	at,0x0
     e7c:	c42a0374 	lwc1	$f10,884(at)
     e80:	46102180 	add.s	$f6,$f4,$f16
     e84:	3c010000 	lui	at,0x0
     e88:	afae0014 	sw	t6,20(sp)
     e8c:	460a4482 	mul.s	$f18,$f8,$f10
     e90:	c4240378 	lwc1	$f4,888(at)
     e94:	912f0019 	lbu	t7,25(t1)
     e98:	27a400a8 	addiu	a0,sp,168
     e9c:	46040402 	mul.s	$f16,$f0,$f4
     ea0:	afaf0018 	sw	t7,24(sp)
     ea4:	9538001a 	lhu	t8,26(t1)
     ea8:	afb8001c 	sw	t8,28(sp)
     eac:	9539001c 	lhu	t9,28(t1)
     eb0:	e7a60024 	swc1	$f6,36(sp)
     eb4:	46109180 	add.s	$f6,$f18,$f16
     eb8:	afb90020 	sw	t9,32(sp)
     ebc:	0c000000 	jal	0 <func_80095AA0>
     ec0:	e7a60028 	swc1	$f6,40(sp)
     ec4:	8fac00a8 	lw	t4,168(sp)
     ec8:	8fa8004c 	lw	t0,76(sp)
     ecc:	3c0ee100 	lui	t6,0xe100
     ed0:	ae0c02c0 	sw	t4,704(s0)
     ed4:	258d0008 	addiu	t5,t4,8
     ed8:	ae0d02c0 	sw	t5,704(s0)
     edc:	ad8e0000 	sw	t6,0(t4)
     ee0:	afac005c 	sw	t4,92(sp)
     ee4:	0c000000 	jal	0 <func_80095AA0>
     ee8:	afa8004c 	sw	t0,76(sp)
     eec:	8fa4005c 	lw	a0,92(sp)
     ef0:	3c18dd00 	lui	t8,0xdd00
     ef4:	371807ff 	ori	t8,t8,0x7ff
     ef8:	ac820004 	sw	v0,4(a0)
     efc:	8e0302c0 	lw	v1,704(s0)
     f00:	246f0008 	addiu	t7,v1,8
     f04:	ae0f02c0 	sw	t7,704(s0)
     f08:	ac780000 	sw	t8,0(v1)
     f0c:	0c000000 	jal	0 <func_80095AA0>
     f10:	afa3005c 	sw	v1,92(sp)
     f14:	8fa4005c 	lw	a0,92(sp)
     f18:	8fa8004c 	lw	t0,76(sp)
     f1c:	ac820004 	sw	v0,4(a0)
     f20:	8fab00b0 	lw	t3,176(sp)
     f24:	11000020 	beqz	t0,fa8 <func_80096680+0x3c8>
     f28:	00000000 	nop
     f2c:	8e0202d0 	lw	v0,720(s0)
     f30:	3c0cdb06 	lui	t4,0xdb06
     f34:	358c000c 	ori	t4,t4,0xc
     f38:	24590008 	addiu	t9,v0,8
     f3c:	ae1902d0 	sw	t9,720(s0)
     f40:	ac4c0000 	sw	t4,0(v0)
     f44:	8fad00b4 	lw	t5,180(sp)
     f48:	3c050000 	lui	a1,0x0
     f4c:	24a50000 	addiu	a1,a1,0
     f50:	8dae000c 	lw	t6,12(t5)
     f54:	ac4e0004 	sw	t6,4(v0)
     f58:	8d640000 	lw	a0,0(t3)
     f5c:	0c000000 	jal	0 <func_80095AA0>
     f60:	afa50048 	sw	a1,72(sp)
     f64:	8e0202d0 	lw	v0,720(s0)
     f68:	8fa50048 	lw	a1,72(sp)
     f6c:	3c18da38 	lui	t8,0xda38
     f70:	244f0008 	addiu	t7,v0,8
     f74:	ae0f02d0 	sw	t7,720(s0)
     f78:	37180003 	ori	t8,t8,0x3
     f7c:	ac580000 	sw	t8,0(v0)
     f80:	ac450004 	sw	a1,4(v0)
     f84:	8e0202d0 	lw	v0,720(s0)
     f88:	3c0cde00 	lui	t4,0xde00
     f8c:	24590008 	addiu	t9,v0,8
     f90:	ae1902d0 	sw	t9,720(s0)
     f94:	ac4c0000 	sw	t4,0(v0)
     f98:	8fad00a0 	lw	t5,160(sp)
     f9c:	8dae0004 	lw	t6,4(t5)
     fa0:	ac4e0004 	sw	t6,4(v0)
     fa4:	8fab00b0 	lw	t3,176(sp)
     fa8:	3c060000 	lui	a2,0x0
     fac:	24c6016c 	addiu	a2,a2,364
     fb0:	27a4007c 	addiu	a0,sp,124
     fb4:	8d650000 	lw	a1,0(t3)
     fb8:	0c000000 	jal	0 <func_80095AA0>
     fbc:	240702b3 	li	a3,691
     fc0:	8fbf003c 	lw	ra,60(sp)
     fc4:	8fb00038 	lw	s0,56(sp)
     fc8:	27bd00b0 	addiu	sp,sp,176
     fcc:	03e00008 	jr	ra
     fd0:	00000000 	nop

00000fd4 <func_80096A74>:
     fd4:	27bdffe0 	addiu	sp,sp,-32
     fd8:	afbf0014 	sw	ra,20(sp)
     fdc:	afa40020 	sw	a0,32(sp)
     fe0:	84ae07a0 	lh	t6,1952(a1)
     fe4:	00a03825 	move	a3,a1
     fe8:	24e407c0 	addiu	a0,a3,1984
     fec:	000e7880 	sll	t7,t6,0x2
     ff0:	00afc021 	addu	t8,a1,t7
     ff4:	8f020790 	lw	v0,1936(t8)
     ff8:	24060032 	li	a2,50
     ffc:	84450148 	lh	a1,328(v0)
    1000:	afa70024 	sw	a3,36(sp)
    1004:	0c000000 	jal	0 <func_80095AA0>
    1008:	afa50018 	sw	a1,24(sp)
    100c:	8443000e 	lh	v1,14(v0)
    1010:	8fa50018 	lw	a1,24(sp)
    1014:	8fa80020 	lw	t0,32(sp)
    1018:	04600002 	bltz	v1,1024 <func_80096A74+0x50>
    101c:	8fb90024 	lw	t9,36(sp)
    1020:	00602825 	move	a1,v1
    1024:	8f261c44 	lw	a2,7236(t9)
    1028:	3c0f0000 	lui	t7,0x0
    102c:	3c0100ff 	lui	at,0xff
    1030:	84c9001c 	lh	t1,28(a2)
    1034:	3421ffff 	ori	at,at,0xffff
    1038:	00001025 	move	v0,zero
    103c:	312aff00 	andi	t2,t1,0xff00
    1040:	01455825 	or	t3,t2,a1
    1044:	a4cb001c 	sh	t3,28(a2)
    1048:	8d07000c 	lw	a3,12(t0)
    104c:	91040008 	lbu	a0,8(t0)
    1050:	00076100 	sll	t4,a3,0x4
    1054:	000c6f02 	srl	t5,t4,0x1c
    1058:	000d7080 	sll	t6,t5,0x2
    105c:	01ee7821 	addu	t7,t7,t6
    1060:	8def0000 	lw	t7,0(t7)
    1064:	00e1c024 	and	t8,a3,at
    1068:	3c018000 	lui	at,0x8000
    106c:	01f81821 	addu	v1,t7,t8
    1070:	1880000a 	blez	a0,109c <func_80096A74+0xc8>
    1074:	00611821 	addu	v1,v1,at
    1078:	90790002 	lbu	t9,2(v1)
    107c:	24420001 	addiu	v0,v0,1
    1080:	0044082a 	slt	at,v0,a0
    1084:	14b90003 	bne	a1,t9,1094 <func_80096A74+0xc0>
    1088:	00000000 	nop
    108c:	1000000b 	b	10bc <func_80096A74+0xe8>
    1090:	00601025 	move	v0,v1
    1094:	1420fff8 	bnez	at,1078 <func_80096A74+0xa4>
    1098:	2463001c 	addiu	v1,v1,28
    109c:	3c040000 	lui	a0,0x0
    10a0:	0c000000 	jal	0 <func_80095AA0>
    10a4:	24840178 	addiu	a0,a0,376
    10a8:	3c040000 	lui	a0,0x0
    10ac:	248401c0 	addiu	a0,a0,448
    10b0:	0c000000 	jal	0 <func_80095AA0>
    10b4:	240502d6 	li	a1,726
    10b8:	00001025 	move	v0,zero
    10bc:	8fbf0014 	lw	ra,20(sp)
    10c0:	27bd0020 	addiu	sp,sp,32
    10c4:	03e00008 	jr	ra
    10c8:	00000000 	nop

000010cc <func_80096B6C>:
    10cc:	27bdff50 	addiu	sp,sp,-176
    10d0:	afbf003c 	sw	ra,60(sp)
    10d4:	afb00038 	sw	s0,56(sp)
    10d8:	afa400b0 	sw	a0,176(sp)
    10dc:	afa500b4 	sw	a1,180(sp)
    10e0:	afa600b8 	sw	a2,184(sp)
    10e4:	8c850000 	lw	a1,0(a0)
    10e8:	3c060000 	lui	a2,0x0
    10ec:	24c601cc 	addiu	a2,a2,460
    10f0:	27a40078 	addiu	a0,sp,120
    10f4:	240702f0 	li	a3,752
    10f8:	0c000000 	jal	0 <func_80095AA0>
    10fc:	00a08025 	move	s0,a1
    1100:	8fa500b0 	lw	a1,176(sp)
    1104:	8fac00b4 	lw	t4,180(sp)
    1108:	3c0100ff 	lui	at,0xff
    110c:	84af07a0 	lh	t7,1952(a1)
    1110:	3421ffff 	ori	at,at,0xffff
    1114:	000fc080 	sll	t8,t7,0x2
    1118:	00b8c821 	addu	t9,a1,t8
    111c:	8f230790 	lw	v1,1936(t9)
    1120:	3c180000 	lui	t8,0x0
    1124:	846a0142 	lh	t2,322(v1)
    1128:	394b0019 	xori	t3,t2,0x19
    112c:	2d6b0001 	sltiu	t3,t3,1
    1130:	afab0098 	sw	t3,152(sp)
    1134:	8d840008 	lw	a0,8(t4)
    1138:	8c820004 	lw	v0,4(a0)
    113c:	afa300ac 	sw	v1,172(sp)
    1140:	00026900 	sll	t5,v0,0x4
    1144:	000d7702 	srl	t6,t5,0x1c
    1148:	000e7880 	sll	t7,t6,0x2
    114c:	030fc021 	addu	t8,t8,t7
    1150:	8f180000 	lw	t8,0(t8)
    1154:	0041c824 	and	t9,v0,at
    1158:	3c018000 	lui	at,0x8000
    115c:	03195021 	addu	t2,t8,t9
    1160:	01415821 	addu	t3,t2,at
    1164:	0c000000 	jal	0 <func_80095AA0>
    1168:	afab009c 	sw	t3,156(sp)
    116c:	8fa600b8 	lw	a2,184(sp)
    1170:	00404825 	move	t1,v0
    1174:	8fa30098 	lw	v1,152(sp)
    1178:	30c40001 	andi	a0,a2,0x1
    117c:	0004202b 	sltu	a0,zero,a0
    1180:	1080000e 	beqz	a0,11bc <func_80096B6C+0xf0>
    1184:	00804025 	move	t0,a0
    1188:	0003402b 	sltu	t0,zero,v1
    118c:	1100000b 	beqz	t0,11bc <func_80096B6C+0xf0>
    1190:	00000000 	nop
    1194:	8c480004 	lw	t0,4(v0)
    1198:	3c030000 	lui	v1,0x0
    119c:	24630000 	addiu	v1,v1,0
    11a0:	0008402b 	sltu	t0,zero,t0
    11a4:	11000005 	beqz	t0,11bc <func_80096B6C+0xf0>
    11a8:	00000000 	nop
    11ac:	8c6c0000 	lw	t4,0(v1)
    11b0:	85880106 	lh	t0,262(t4)
    11b4:	31080001 	andi	t0,t0,0x1
    11b8:	2d080001 	sltiu	t0,t0,1
    11bc:	3c030000 	lui	v1,0x0
    11c0:	01002825 	move	a1,t0
    11c4:	24630000 	addiu	v1,v1,0
    11c8:	1080000a 	beqz	a0,11f4 <func_80096B6C+0x128>
    11cc:	00804025 	move	t0,a0
    11d0:	8fad009c 	lw	t5,156(sp)
    11d4:	8da80000 	lw	t0,0(t5)
    11d8:	0008402b 	sltu	t0,zero,t0
    11dc:	51000006 	beqzl	t0,11f8 <func_80096B6C+0x12c>
    11e0:	01002025 	move	a0,t0
    11e4:	8c6e0000 	lw	t6,0(v1)
    11e8:	85c80106 	lh	t0,262(t6)
    11ec:	31080002 	andi	t0,t0,0x2
    11f0:	2d080001 	sltiu	t0,t0,1
    11f4:	01002025 	move	a0,t0
    11f8:	30c20002 	andi	v0,a2,0x2
    11fc:	0002402b 	sltu	t0,zero,v0
    1200:	11000009 	beqz	t0,1228 <func_80096B6C+0x15c>
    1204:	8faf009c 	lw	t7,156(sp)
    1208:	8de80004 	lw	t0,4(t7)
    120c:	0008402b 	sltu	t0,zero,t0
    1210:	11000005 	beqz	t0,1228 <func_80096B6C+0x15c>
    1214:	00000000 	nop
    1218:	8c780000 	lw	t8,0(v1)
    121c:	87080106 	lh	t0,262(t8)
    1220:	31080004 	andi	t0,t0,0x4
    1224:	2d080001 	sltiu	t0,t0,1
    1228:	54800004 	bnezl	a0,123c <func_80096B6C+0x170>
    122c:	8e0302c0 	lw	v1,704(s0)
    1230:	10a00079 	beqz	a1,1418 <func_80096B6C+0x34c>
    1234:	00000000 	nop
    1238:	8e0302c0 	lw	v1,704(s0)
    123c:	3c0adb06 	lui	t2,0xdb06
    1240:	354a000c 	ori	t2,t2,0xc
    1244:	24790008 	addiu	t9,v1,8
    1248:	ae1902c0 	sw	t9,704(s0)
    124c:	ac6a0000 	sw	t2,0(v1)
    1250:	8fab00b4 	lw	t3,180(sp)
    1254:	8d6c000c 	lw	t4,12(t3)
    1258:	1080001b 	beqz	a0,12c8 <func_80096B6C+0x1fc>
    125c:	ac6c0004 	sw	t4,4(v1)
    1260:	8fad00b0 	lw	t5,176(sp)
    1264:	8da40000 	lw	a0,0(t5)
    1268:	afa900a0 	sw	t1,160(sp)
    126c:	afa80048 	sw	t0,72(sp)
    1270:	0c000000 	jal	0 <func_80095AA0>
    1274:	afa50094 	sw	a1,148(sp)
    1278:	8e0302c0 	lw	v1,704(s0)
    127c:	8fa50094 	lw	a1,148(sp)
    1280:	8fa80048 	lw	t0,72(sp)
    1284:	8fa900a0 	lw	t1,160(sp)
    1288:	246e0008 	addiu	t6,v1,8
    128c:	ae0e02c0 	sw	t6,704(s0)
    1290:	3c0fda38 	lui	t7,0xda38
    1294:	3c180000 	lui	t8,0x0
    1298:	27180000 	addiu	t8,t8,0
    129c:	35ef0003 	ori	t7,t7,0x3
    12a0:	ac6f0000 	sw	t7,0(v1)
    12a4:	ac780004 	sw	t8,4(v1)
    12a8:	8e0302c0 	lw	v1,704(s0)
    12ac:	3c0ade00 	lui	t2,0xde00
    12b0:	24790008 	addiu	t9,v1,8
    12b4:	ae1902c0 	sw	t9,704(s0)
    12b8:	ac6a0000 	sw	t2,0(v1)
    12bc:	8fab009c 	lw	t3,156(sp)
    12c0:	8d6c0000 	lw	t4,0(t3)
    12c4:	ac6c0004 	sw	t4,4(v1)
    12c8:	10a00053 	beqz	a1,1418 <func_80096B6C+0x34c>
    12cc:	3c0ee100 	lui	t6,0xe100
    12d0:	8e0302c0 	lw	v1,704(s0)
    12d4:	3c0f8000 	lui	t7,0x8000
    12d8:	25ef0000 	addiu	t7,t7,0
    12dc:	246d0008 	addiu	t5,v1,8
    12e0:	ae0d02c0 	sw	t5,704(s0)
    12e4:	ac6f0004 	sw	t7,4(v1)
    12e8:	ac6e0000 	sw	t6,0(v1)
    12ec:	8e0302c0 	lw	v1,704(s0)
    12f0:	3c19dd00 	lui	t9,0xdd00
    12f4:	3c0a8000 	lui	t2,0x8000
    12f8:	24780008 	addiu	t8,v1,8
    12fc:	ae1802c0 	sw	t8,704(s0)
    1300:	254a0000 	addiu	t2,t2,0
    1304:	373907ff 	ori	t9,t9,0x7ff
    1308:	ac790000 	sw	t9,0(v1)
    130c:	ac6a0004 	sw	t2,4(v1)
    1310:	8e0b02c0 	lw	t3,704(s0)
    1314:	afa900a0 	sw	t1,160(sp)
    1318:	afa80048 	sw	t0,72(sp)
    131c:	8fa500ac 	lw	a1,172(sp)
    1320:	27a4005c 	addiu	a0,sp,92
    1324:	0c000000 	jal	0 <func_80095AA0>
    1328:	afab00a8 	sw	t3,168(sp)
    132c:	c7a4005c 	lwc1	$f4,92(sp)
    1330:	c7a60064 	lwc1	$f6,100(sp)
    1334:	3c010000 	lui	at,0x0
    1338:	c42a037c 	lwc1	$f10,892(at)
    133c:	c7a80060 	lwc1	$f8,96(sp)
    1340:	46062000 	add.s	$f0,$f4,$f6
    1344:	8fa900a0 	lw	t1,160(sp)
    1348:	3c010000 	lui	at,0x0
    134c:	460a4402 	mul.s	$f16,$f8,$f10
    1350:	c4320380 	lwc1	$f18,896(at)
    1354:	952c0012 	lhu	t4,18(t1)
    1358:	8d250004 	lw	a1,4(t1)
    135c:	46120102 	mul.s	$f4,$f0,$f18
    1360:	8d26000c 	lw	a2,12(t1)
    1364:	95270010 	lhu	a3,16(t1)
    1368:	afac0010 	sw	t4,16(sp)
    136c:	912d0014 	lbu	t5,20(t1)
    1370:	3c010000 	lui	at,0x0
    1374:	c42a0384 	lwc1	$f10,900(at)
    1378:	46102180 	add.s	$f6,$f4,$f16
    137c:	3c010000 	lui	at,0x0
    1380:	afad0014 	sw	t5,20(sp)
    1384:	460a4482 	mul.s	$f18,$f8,$f10
    1388:	c4240388 	lwc1	$f4,904(at)
    138c:	912e0015 	lbu	t6,21(t1)
    1390:	27a400a8 	addiu	a0,sp,168
    1394:	46040402 	mul.s	$f16,$f0,$f4
    1398:	afae0018 	sw	t6,24(sp)
    139c:	952f0016 	lhu	t7,22(t1)
    13a0:	afaf001c 	sw	t7,28(sp)
    13a4:	95380018 	lhu	t8,24(t1)
    13a8:	e7a60024 	swc1	$f6,36(sp)
    13ac:	46109180 	add.s	$f6,$f18,$f16
    13b0:	afb80020 	sw	t8,32(sp)
    13b4:	0c000000 	jal	0 <func_80095AA0>
    13b8:	e7a60028 	swc1	$f6,40(sp)
    13bc:	8fb900a8 	lw	t9,168(sp)
    13c0:	8fa80048 	lw	t0,72(sp)
    13c4:	3c0be100 	lui	t3,0xe100
    13c8:	ae1902c0 	sw	t9,704(s0)
    13cc:	272a0008 	addiu	t2,t9,8
    13d0:	ae0a02c0 	sw	t2,704(s0)
    13d4:	af2b0000 	sw	t3,0(t9)
    13d8:	afb90058 	sw	t9,88(sp)
    13dc:	0c000000 	jal	0 <func_80095AA0>
    13e0:	afa80048 	sw	t0,72(sp)
    13e4:	8fa40058 	lw	a0,88(sp)
    13e8:	3c0ddd00 	lui	t5,0xdd00
    13ec:	35ad07ff 	ori	t5,t5,0x7ff
    13f0:	ac820004 	sw	v0,4(a0)
    13f4:	8e0302c0 	lw	v1,704(s0)
    13f8:	246c0008 	addiu	t4,v1,8
    13fc:	ae0c02c0 	sw	t4,704(s0)
    1400:	ac6d0000 	sw	t5,0(v1)
    1404:	0c000000 	jal	0 <func_80095AA0>
    1408:	afa30058 	sw	v1,88(sp)
    140c:	8fa40058 	lw	a0,88(sp)
    1410:	8fa80048 	lw	t0,72(sp)
    1414:	ac820004 	sw	v0,4(a0)
    1418:	51000021 	beqzl	t0,14a0 <func_80096B6C+0x3d4>
    141c:	8fb900b0 	lw	t9,176(sp)
    1420:	8e0202d0 	lw	v0,720(s0)
    1424:	3c0fdb06 	lui	t7,0xdb06
    1428:	35ef000c 	ori	t7,t7,0xc
    142c:	244e0008 	addiu	t6,v0,8
    1430:	ae0e02d0 	sw	t6,720(s0)
    1434:	ac4f0000 	sw	t7,0(v0)
    1438:	8fb800b4 	lw	t8,180(sp)
    143c:	3c050000 	lui	a1,0x0
    1440:	24a50000 	addiu	a1,a1,0
    1444:	8f19000c 	lw	t9,12(t8)
    1448:	ac590004 	sw	t9,4(v0)
    144c:	8faa00b0 	lw	t2,176(sp)
    1450:	8d440000 	lw	a0,0(t2)
    1454:	0c000000 	jal	0 <func_80095AA0>
    1458:	afa50044 	sw	a1,68(sp)
    145c:	8e0202d0 	lw	v0,720(s0)
    1460:	8fa50044 	lw	a1,68(sp)
    1464:	3c0cda38 	lui	t4,0xda38
    1468:	244b0008 	addiu	t3,v0,8
    146c:	ae0b02d0 	sw	t3,720(s0)
    1470:	358c0003 	ori	t4,t4,0x3
    1474:	ac4c0000 	sw	t4,0(v0)
    1478:	ac450004 	sw	a1,4(v0)
    147c:	8e0202d0 	lw	v0,720(s0)
    1480:	3c0ede00 	lui	t6,0xde00
    1484:	244d0008 	addiu	t5,v0,8
    1488:	ae0d02d0 	sw	t5,720(s0)
    148c:	ac4e0000 	sw	t6,0(v0)
    1490:	8faf009c 	lw	t7,156(sp)
    1494:	8df80004 	lw	t8,4(t7)
    1498:	ac580004 	sw	t8,4(v0)
    149c:	8fb900b0 	lw	t9,176(sp)
    14a0:	3c060000 	lui	a2,0x0
    14a4:	24c601d8 	addiu	a2,a2,472
    14a8:	27a40078 	addiu	a0,sp,120
    14ac:	24070333 	li	a3,819
    14b0:	0c000000 	jal	0 <func_80095AA0>
    14b4:	8f250000 	lw	a1,0(t9)
    14b8:	8fbf003c 	lw	ra,60(sp)
    14bc:	8fb00038 	lw	s0,56(sp)
    14c0:	27bd00b0 	addiu	sp,sp,176
    14c4:	03e00008 	jr	ra
    14c8:	00000000 	nop

000014cc <func_80096F6C>:
    14cc:	27bdffe8 	addiu	sp,sp,-24
    14d0:	afbf0014 	sw	ra,20(sp)
    14d4:	8ca20008 	lw	v0,8(a1)
    14d8:	24010001 	li	at,1
    14dc:	90430001 	lbu	v1,1(v0)
    14e0:	54610006 	bnel	v1,at,14fc <func_80096F6C+0x30>
    14e4:	24010002 	li	at,2
    14e8:	0c000000 	jal	0 <func_80095AA0>
    14ec:	00000000 	nop
    14f0:	1000000d 	b	1528 <func_80096F6C+0x5c>
    14f4:	8fbf0014 	lw	ra,20(sp)
    14f8:	24010002 	li	at,2
    14fc:	14610005 	bne	v1,at,1514 <func_80096F6C+0x48>
    1500:	00000000 	nop
    1504:	0c000000 	jal	0 <func_80095AA0>
    1508:	00000000 	nop
    150c:	10000006 	b	1528 <func_80096F6C+0x5c>
    1510:	8fbf0014 	lw	ra,20(sp)
    1514:	3c040000 	lui	a0,0x0
    1518:	248401e4 	addiu	a0,a0,484
    151c:	0c000000 	jal	0 <func_80095AA0>
    1520:	24050349 	li	a1,841
    1524:	8fbf0014 	lw	ra,20(sp)
    1528:	27bd0018 	addiu	sp,sp,24
    152c:	03e00008 	jr	ra
    1530:	00000000 	nop

00001534 <func_80096FD4>:
    1534:	afa40000 	sw	a0,0(sp)
    1538:	240effff 	li	t6,-1
    153c:	a0ae0000 	sb	t6,0(a1)
    1540:	03e00008 	jr	ra
    1544:	aca0000c 	sw	zero,12(a1)

00001548 <func_80096FE8>:
    1548:	27bdffc0 	addiu	sp,sp,-64
    154c:	afb50038 	sw	s5,56(sp)
    1550:	3c010001 	lui	at,0x1
    1554:	afbf003c 	sw	ra,60(sp)
    1558:	afb40034 	sw	s4,52(sp)
    155c:	afb30030 	sw	s3,48(sp)
    1560:	afb2002c 	sw	s2,44(sp)
    1564:	afb10028 	sw	s1,40(sp)
    1568:	afb00024 	sw	s0,36(sp)
    156c:	afa40040 	sw	a0,64(sp)
    1570:	afa50044 	sw	a1,68(sp)
    1574:	0081a821 	addu	s5,a0,at
    1578:	92ae1dec 	lbu	t6,7660(s5)
    157c:	00009825 	move	s3,zero
    1580:	8ea21df0 	lw	v0,7664(s5)
    1584:	19c00014 	blez	t6,15d8 <func_80096FE8+0x90>
    1588:	00009025 	move	s2,zero
    158c:	00408025 	move	s0,v0
    1590:	8e0f0004 	lw	t7,4(s0)
    1594:	8e180000 	lw	t8,0(s0)
    1598:	3c040000 	lui	a0,0x0
    159c:	24840000 	addiu	a0,a0,0
    15a0:	01f88823 	subu	s1,t7,t8
    15a4:	02203025 	move	a2,s1
    15a8:	0c000000 	jal	0 <func_80095AA0>
    15ac:	02402825 	move	a1,s2
    15b0:	0271082b 	sltu	at,s3,s1
    15b4:	50200003 	beqzl	at,15c4 <func_80096FE8+0x7c>
    15b8:	92b91dec 	lbu	t9,7660(s5)
    15bc:	02209825 	move	s3,s1
    15c0:	92b91dec 	lbu	t9,7660(s5)
    15c4:	26520001 	addiu	s2,s2,1
    15c8:	26100008 	addiu	s0,s0,8
    15cc:	0259082a 	slt	at,s2,t9
    15d0:	5420fff0 	bnezl	at,1594 <func_80096FE8+0x4c>
    15d4:	8e0f0004 	lw	t7,4(s0)
    15d8:	92aa1d34 	lbu	t2,7476(s5)
    15dc:	3c040000 	lui	a0,0x0
    15e0:	24840000 	addiu	a0,a0,0
    15e4:	11400034 	beqz	t2,16b8 <func_80096FE8+0x170>
    15e8:	24050390 	li	a1,912
    15ec:	8eb41df0 	lw	s4,7664(s5)
    15f0:	0c000000 	jal	0 <func_80095AA0>
    15f4:	8eb21d38 	lw	s2,7480(s5)
    15f8:	3c040000 	lui	a0,0x0
    15fc:	24840000 	addiu	a0,a0,0
    1600:	0c000000 	jal	0 <func_80095AA0>
    1604:	92a51dec 	lbu	a1,7660(s5)
    1608:	92ab1d34 	lbu	t3,7476(s5)
    160c:	00008825 	move	s1,zero
    1610:	19600029 	blez	t3,16b8 <func_80096FE8+0x170>
    1614:	00000000 	nop
    1618:	82470000 	lb	a3,0(s2)
    161c:	3c040000 	lui	a0,0x0
    1620:	82490002 	lb	t1,2(s2)
    1624:	04e10003 	bgez	a3,1634 <func_80096FE8+0xec>
    1628:	24840000 	addiu	a0,a0,0
    162c:	10000006 	b	1648 <func_80096FE8+0x100>
    1630:	00001825 	move	v1,zero
    1634:	000760c0 	sll	t4,a3,0x3
    1638:	028c1021 	addu	v0,s4,t4
    163c:	8c4d0004 	lw	t5,4(v0)
    1640:	8c4e0000 	lw	t6,0(v0)
    1644:	01ae1823 	subu	v1,t5,t6
    1648:	05210003 	bgez	t1,1658 <func_80096FE8+0x110>
    164c:	02202825 	move	a1,s1
    1650:	10000006 	b	166c <func_80096FE8+0x124>
    1654:	00004025 	move	t0,zero
    1658:	000978c0 	sll	t7,t1,0x3
    165c:	028f1021 	addu	v0,s4,t7
    1660:	8c580004 	lw	t8,4(v0)
    1664:	8c590000 	lw	t9,0(v0)
    1668:	03194023 	subu	t0,t8,t9
    166c:	10e90003 	beq	a3,t1,167c <func_80096FE8+0x134>
    1670:	00608025 	move	s0,v1
    1674:	10000001 	b	167c <func_80096FE8+0x134>
    1678:	00688021 	addu	s0,v1,t0
    167c:	02003025 	move	a2,s0
    1680:	afa30010 	sw	v1,16(sp)
    1684:	afa90014 	sw	t1,20(sp)
    1688:	0c000000 	jal	0 <func_80095AA0>
    168c:	afa80018 	sw	t0,24(sp)
    1690:	0270082b 	sltu	at,s3,s0
    1694:	50200003 	beqzl	at,16a4 <func_80096FE8+0x15c>
    1698:	92aa1d34 	lbu	t2,7476(s5)
    169c:	02009825 	move	s3,s0
    16a0:	92aa1d34 	lbu	t2,7476(s5)
    16a4:	26310001 	addiu	s1,s1,1
    16a8:	26520010 	addiu	s2,s2,16
    16ac:	022a082a 	slt	at,s1,t2
    16b0:	5420ffda 	bnezl	at,161c <func_80096FE8+0xd4>
    16b4:	82470000 	lb	a3,0(s2)
    16b8:	3c040000 	lui	a0,0x0
    16bc:	0c000000 	jal	0 <func_80095AA0>
    16c0:	24840000 	addiu	a0,a0,0
    16c4:	44932000 	mtc1	s3,$f4
    16c8:	3c040000 	lui	a0,0x0
    16cc:	24840000 	addiu	a0,a0,0
    16d0:	02602825 	move	a1,s3
    16d4:	06610005 	bgez	s3,16ec <func_80096FE8+0x1a4>
    16d8:	468021a0 	cvt.s.w	$f6,$f4
    16dc:	3c014f80 	lui	at,0x4f80
    16e0:	44814000 	mtc1	at,$f8
    16e4:	00000000 	nop
    16e8:	46083180 	add.s	$f6,$f6,$f8
    16ec:	3c013a80 	lui	at,0x3a80
    16f0:	44815000 	mtc1	at,$f10
    16f4:	00000000 	nop
    16f8:	460a3402 	mul.s	$f16,$f6,$f10
    16fc:	460084a1 	cvt.d.s	$f18,$f16
    1700:	44079000 	mfc1	a3,$f18
    1704:	44069800 	mfc1	a2,$f19
    1708:	0c000000 	jal	0 <func_80095AA0>
    170c:	00000000 	nop
    1710:	3c060000 	lui	a2,0x0
    1714:	24c60000 	addiu	a2,a2,0
    1718:	8fa40040 	lw	a0,64(sp)
    171c:	02602825 	move	a1,s3
    1720:	0c000000 	jal	0 <func_80095AA0>
    1724:	240703b2 	li	a3,946
    1728:	8fab0044 	lw	t3,68(sp)
    172c:	3c040000 	lui	a0,0x0
    1730:	24840000 	addiu	a0,a0,0
    1734:	00402825 	move	a1,v0
    1738:	0c000000 	jal	0 <func_80095AA0>
    173c:	ad620028 	sw	v0,40(t3)
    1740:	8fac0044 	lw	t4,68(sp)
    1744:	3c040000 	lui	a0,0x0
    1748:	24840000 	addiu	a0,a0,0
    174c:	8d8d0028 	lw	t5,40(t4)
    1750:	01b32821 	addu	a1,t5,s3
    1754:	0c000000 	jal	0 <func_80095AA0>
    1758:	ad85002c 	sw	a1,44(t4)
    175c:	3c040000 	lui	a0,0x0
    1760:	0c000000 	jal	0 <func_80095AA0>
    1764:	24840000 	addiu	a0,a0,0
    1768:	8fae0044 	lw	t6,68(sp)
    176c:	3c030000 	lui	v1,0x0
    1770:	24630000 	addiu	v1,v1,0
    1774:	a1c00030 	sb	zero,48(t6)
    1778:	8faf0044 	lw	t7,68(sp)
    177c:	a1e00031 	sb	zero,49(t7)
    1780:	8c621364 	lw	v0,4964(v1)
    1784:	18400006 	blez	v0,17a0 <func_80096FE8+0x258>
    1788:	0002c0c0 	sll	t8,v0,0x3
    178c:	0302c023 	subu	t8,t8,v0
    1790:	0018c080 	sll	t8,t8,0x2
    1794:	0078c821 	addu	t9,v1,t8
    1798:	10000006 	b	17b4 <func_80096FE8+0x26c>
    179c:	9327135e 	lbu	a3,4958(t9)
    17a0:	92ab1dea 	lbu	t3,7658(s5)
    17a4:	8eaa1e00 	lw	t2,7680(s5)
    17a8:	000b6840 	sll	t5,t3,0x1
    17ac:	014d6021 	addu	t4,t2,t5
    17b0:	91870001 	lbu	a3,1(t4)
    17b4:	8fa40040 	lw	a0,64(sp)
    17b8:	8fa50044 	lw	a1,68(sp)
    17bc:	0c000000 	jal	0 <func_80095AA0>
    17c0:	00e03025 	move	a2,a3
    17c4:	8fbf003c 	lw	ra,60(sp)
    17c8:	02601025 	move	v0,s3
    17cc:	8fb30030 	lw	s3,48(sp)
    17d0:	8fb00024 	lw	s0,36(sp)
    17d4:	8fb10028 	lw	s1,40(sp)
    17d8:	8fb2002c 	lw	s2,44(sp)
    17dc:	8fb40034 	lw	s4,52(sp)
    17e0:	8fb50038 	lw	s5,56(sp)
    17e4:	03e00008 	jr	ra
    17e8:	27bd0040 	addiu	sp,sp,64

000017ec <func_8009728C>:
    17ec:	27bdffb8 	addiu	sp,sp,-72
    17f0:	afbf0034 	sw	ra,52(sp)
    17f4:	afb00030 	sw	s0,48(sp)
    17f8:	afa60050 	sw	a2,80(sp)
    17fc:	80ae0031 	lb	t6,49(a1)
    1800:	00a08025 	move	s0,a1
    1804:	240a0001 	li	t2,1
    1808:	15c0004f 	bnez	t6,1948 <func_8009728C+0x15c>
    180c:	00001025 	move	v0,zero
    1810:	8cb80000 	lw	t8,0(a1)
    1814:	8caf0004 	lw	t7,4(a1)
    1818:	3c010001 	lui	at,0x1
    181c:	acb80014 	sw	t8,20(a1)
    1820:	8cb80008 	lw	t8,8(a1)
    1824:	acaf0018 	sw	t7,24(a1)
    1828:	8caf000c 	lw	t7,12(a1)
    182c:	acb8001c 	sw	t8,28(a1)
    1830:	8cb80010 	lw	t8,16(a1)
    1834:	acaf0020 	sw	t7,32(a1)
    1838:	00814821 	addu	t1,a0,at
    183c:	acb80024 	sw	t8,36(a1)
    1840:	8fb90050 	lw	t9,80(sp)
    1844:	aca0000c 	sw	zero,12(a1)
    1848:	a0aa0031 	sb	t2,49(a1)
    184c:	a0b90000 	sb	t9,0(a1)
    1850:	912c1dec 	lbu	t4,7660(t1)
    1854:	8fab0050 	lw	t3,80(sp)
    1858:	3c040000 	lui	a0,0x0
    185c:	248402dc 	addiu	a0,a0,732
    1860:	016c082a 	slt	at,t3,t4
    1864:	14200006 	bnez	at,1880 <func_8009728C+0x94>
    1868:	3c050000 	lui	a1,0x0
    186c:	24a5030c 	addiu	a1,a1,780
    1870:	240603f1 	li	a2,1009
    1874:	0c000000 	jal	0 <func_80095AA0>
    1878:	afa90040 	sw	t1,64(sp)
    187c:	8fa90040 	lw	t1,64(sp)
    1880:	8fa80050 	lw	t0,80(sp)
    1884:	8d2d1df0 	lw	t5,7664(t1)
    1888:	92030030 	lbu	v1,48(s0)
    188c:	000840c0 	sll	t0,t0,0x3
    1890:	01a81021 	addu	v0,t5,t0
    1894:	8c4e0004 	lw	t6,4(v0)
    1898:	8c4f0000 	lw	t7,0(v0)
    189c:	0003c080 	sll	t8,v1,0x2
    18a0:	0218c821 	addu	t9,s0,t8
    18a4:	01cf3823 	subu	a3,t6,t7
    18a8:	24eb0008 	addiu	t3,a3,8
    18ac:	01630019 	multu	t3,v1
    18b0:	8f2a0028 	lw	t2,40(t9)
    18b4:	2401fff0 	li	at,-16
    18b8:	26040058 	addiu	a0,s0,88
    18bc:	26050070 	addiu	a1,s0,112
    18c0:	24060001 	li	a2,1
    18c4:	00006012 	mflo	t4
    18c8:	014c6823 	subu	t5,t2,t4
    18cc:	25ae0008 	addiu	t6,t5,8
    18d0:	01c17824 	and	t7,t6,at
    18d4:	ae0f0034 	sw	t7,52(s0)
    18d8:	afa90040 	sw	t1,64(sp)
    18dc:	afa8003c 	sw	t0,60(sp)
    18e0:	afa70044 	sw	a3,68(sp)
    18e4:	0c000000 	jal	0 <func_80095AA0>
    18e8:	afa40038 	sw	a0,56(sp)
    18ec:	8fa90040 	lw	t1,64(sp)
    18f0:	8fa8003c 	lw	t0,60(sp)
    18f4:	8e050034 	lw	a1,52(s0)
    18f8:	8d381df0 	lw	t8,7664(t1)
    18fc:	8fab0038 	lw	t3,56(sp)
    1900:	3c0a0000 	lui	t2,0x0
    1904:	0308c821 	addu	t9,t8,t0
    1908:	8f260000 	lw	a2,0(t9)
    190c:	254a0318 	addiu	t2,t2,792
    1910:	240c040c 	li	t4,1036
    1914:	8fa70044 	lw	a3,68(sp)
    1918:	afac0020 	sw	t4,32(sp)
    191c:	afaa001c 	sw	t2,28(sp)
    1920:	afa00018 	sw	zero,24(sp)
    1924:	afa00010 	sw	zero,16(sp)
    1928:	26040038 	addiu	a0,s0,56
    192c:	0c000000 	jal	0 <func_80095AA0>
    1930:	afab0014 	sw	t3,20(sp)
    1934:	920d0030 	lbu	t5,48(s0)
    1938:	24020001 	li	v0,1
    193c:	39ae0001 	xori	t6,t5,0x1
    1940:	10000001 	b	1948 <func_8009728C+0x15c>
    1944:	a20e0030 	sb	t6,48(s0)
    1948:	8fbf0034 	lw	ra,52(sp)
    194c:	8fb00030 	lw	s0,48(sp)
    1950:	27bd0048 	addiu	sp,sp,72
    1954:	03e00008 	jr	ra
    1958:	00000000 	nop

0000195c <func_800973FC>:
    195c:	27bdffe0 	addiu	sp,sp,-32
    1960:	afbf001c 	sw	ra,28(sp)
    1964:	afb00018 	sw	s0,24(sp)
    1968:	80ae0031 	lb	t6,49(a1)
    196c:	24010001 	li	at,1
    1970:	00808025 	move	s0,a0
    1974:	15c1001c 	bne	t6,at,19e8 <func_800973FC+0x8c>
    1978:	00a03825 	move	a3,a1
    197c:	24a40058 	addiu	a0,a1,88
    1980:	00002825 	move	a1,zero
    1984:	00003025 	move	a2,zero
    1988:	0c000000 	jal	0 <func_80095AA0>
    198c:	afa70024 	sw	a3,36(sp)
    1990:	14400013 	bnez	v0,19e0 <func_800973FC+0x84>
    1994:	8fa70024 	lw	a3,36(sp)
    1998:	8ce20034 	lw	v0,52(a3)
    199c:	3c018000 	lui	at,0x8000
    19a0:	a0e00031 	sb	zero,49(a3)
    19a4:	00417821 	addu	t7,v0,at
    19a8:	3c010000 	lui	at,0x0
    19ac:	ace2000c 	sw	v0,12(a3)
    19b0:	ac2f000c 	sw	t7,12(at)
    19b4:	8ce5000c 	lw	a1,12(a3)
    19b8:	0c000000 	jal	0 <func_80095AA0>
    19bc:	02002025 	move	a0,s0
    19c0:	02002025 	move	a0,s0
    19c4:	0c000000 	jal	0 <func_80095AA0>
    19c8:	8e051c44 	lw	a1,7236(s0)
    19cc:	02002025 	move	a0,s0
    19d0:	0c000000 	jal	0 <func_80095AA0>
    19d4:	26051c24 	addiu	a1,s0,7204
    19d8:	10000004 	b	19ec <func_800973FC+0x90>
    19dc:	24020001 	li	v0,1
    19e0:	10000002 	b	19ec <func_800973FC+0x90>
    19e4:	00001025 	move	v0,zero
    19e8:	24020001 	li	v0,1
    19ec:	8fbf001c 	lw	ra,28(sp)
    19f0:	8fb00018 	lw	s0,24(sp)
    19f4:	27bd0020 	addiu	sp,sp,32
    19f8:	03e00008 	jr	ra
    19fc:	00000000 	nop

00001a00 <Room_Draw>:
    1a00:	27bdffe8 	addiu	sp,sp,-24
    1a04:	afbf0014 	sw	ra,20(sp)
    1a08:	afa40018 	sw	a0,24(sp)
    1a0c:	afa60020 	sw	a2,32(sp)
    1a10:	8ca3000c 	lw	v1,12(a1)
    1a14:	3c018000 	lui	at,0x8000
    1a18:	00a03825 	move	a3,a1
    1a1c:	10600019 	beqz	v1,1a84 <Room_Draw+0x84>
    1a20:	00617021 	addu	t6,v1,at
    1a24:	3c010000 	lui	at,0x0
    1a28:	ac2e000c 	sw	t6,12(at)
    1a2c:	8caf0008 	lw	t7,8(a1)
    1a30:	3c050000 	lui	a1,0x0
    1a34:	3c040000 	lui	a0,0x0
    1a38:	91e20000 	lbu	v0,0(t7)
    1a3c:	24840324 	addiu	a0,a0,804
    1a40:	24a50360 	addiu	a1,a1,864
    1a44:	2c410003 	sltiu	at,v0,3
    1a48:	14200006 	bnez	at,1a64 <Room_Draw+0x64>
    1a4c:	24060465 	li	a2,1125
    1a50:	0c000000 	jal	0 <func_80095AA0>
    1a54:	afa7001c 	sw	a3,28(sp)
    1a58:	8fa7001c 	lw	a3,28(sp)
    1a5c:	8cf80008 	lw	t8,8(a3)
    1a60:	93020000 	lbu	v0,0(t8)
    1a64:	0002c880 	sll	t9,v0,0x2
    1a68:	3c010000 	lui	at,0x0
    1a6c:	00390821 	addu	at,at,t9
    1a70:	8c390000 	lw	t9,0(at)
    1a74:	8fa40018 	lw	a0,24(sp)
    1a78:	00e02825 	move	a1,a3
    1a7c:	0320f809 	jalr	t9
    1a80:	8fa60020 	lw	a2,32(sp)
    1a84:	8fbf0014 	lw	ra,20(sp)
    1a88:	27bd0018 	addiu	sp,sp,24
    1a8c:	03e00008 	jr	ra
    1a90:	00000000 	nop

00001a94 <func_80097534>:
    1a94:	27bdffd8 	addiu	sp,sp,-40
    1a98:	afb00018 	sw	s0,24(sp)
    1a9c:	afbf001c 	sw	ra,28(sp)
    1aa0:	240effff 	li	t6,-1
    1aa4:	00808025 	move	s0,a0
    1aa8:	00a03025 	move	a2,a1
    1aac:	a0ae0014 	sb	t6,20(a1)
    1ab0:	aca00020 	sw	zero,32(a1)
    1ab4:	26051c24 	addiu	a1,s0,7204
    1ab8:	afa50024 	sw	a1,36(sp)
    1abc:	0c000000 	jal	0 <func_80095AA0>
    1ac0:	afa6002c 	sw	a2,44(sp)
    1ac4:	8fa50024 	lw	a1,36(sp)
    1ac8:	0c000000 	jal	0 <func_80095AA0>
    1acc:	02002025 	move	a0,s0
    1ad0:	8faf002c 	lw	t7,44(sp)
    1ad4:	02002025 	move	a0,s0
    1ad8:	0c000000 	jal	0 <func_80095AA0>
    1adc:	81e50000 	lb	a1,0(t7)
    1ae0:	860200a4 	lh	v0,164(s0)
    1ae4:	28410051 	slti	at,v0,81
    1ae8:	14200003 	bnez	at,1af8 <func_80097534+0x64>
    1aec:	28410064 	slti	at,v0,100
    1af0:	54200004 	bnezl	at,1b04 <func_80097534+0x70>
    1af4:	3c040001 	lui	a0,0x1
    1af8:	0c000000 	jal	0 <func_80095AA0>
    1afc:	02002025 	move	a0,s0
    1b00:	3c040001 	lui	a0,0x1
    1b04:	00902021 	addu	a0,a0,s0
    1b08:	0c000000 	jal	0 <func_80095AA0>
    1b0c:	80841cc0 	lb	a0,7360(a0)
    1b10:	8fbf001c 	lw	ra,28(sp)
    1b14:	8fb00018 	lw	s0,24(sp)
    1b18:	27bd0028 	addiu	sp,sp,40
    1b1c:	03e00008 	jr	ra
    1b20:	00000000 	nop
	...
