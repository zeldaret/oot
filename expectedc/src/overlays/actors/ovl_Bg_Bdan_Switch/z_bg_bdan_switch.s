
build/src/overlays/actors/ovl_Bg_Bdan_Switch/z_bg_bdan_switch.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8086D010>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afbf0024 	sw	ra,36(sp)
       8:	afb00020 	sw	s0,32(sp)
       c:	afa5003c 	sw	a1,60(sp)
      10:	00808025 	move	s0,a0
      14:	afa60040 	sw	a2,64(sp)
      18:	afa00030 	sw	zero,48(sp)
      1c:	0c000000 	jal	0 <func_8086D010>
      20:	00e02825 	move	a1,a3
      24:	8fa40040 	lw	a0,64(sp)
      28:	0c000000 	jal	0 <func_8086D010>
      2c:	27a50030 	addiu	a1,sp,48
      30:	8fa4003c 	lw	a0,60(sp)
      34:	02003025 	move	a2,s0
      38:	8fa70030 	lw	a3,48(sp)
      3c:	0c000000 	jal	0 <func_8086D010>
      40:	24850810 	addiu	a1,a0,2064
      44:	24010032 	li	at,50
      48:	1441000a 	bne	v0,at,74 <func_8086D010+0x74>
      4c:	ae02014c 	sw	v0,332(s0)
      50:	860e001c 	lh	t6,28(s0)
      54:	3c040000 	lui	a0,0x0
      58:	3c050000 	lui	a1,0x0
      5c:	86070000 	lh	a3,0(s0)
      60:	24a50040 	addiu	a1,a1,64
      64:	24840000 	addiu	a0,a0,0
      68:	24060145 	li	a2,325
      6c:	0c000000 	jal	0 <func_8086D010>
      70:	afae0010 	sw	t6,16(sp)
      74:	8fbf0024 	lw	ra,36(sp)
      78:	8fb00020 	lw	s0,32(sp)
      7c:	27bd0038 	addiu	sp,sp,56
      80:	03e00008 	jr	ra
      84:	00000000 	nop

00000088 <func_8086D098>:
      88:	27bdffd8 	addiu	sp,sp,-40
      8c:	00803025 	move	a2,a0
      90:	afa5002c 	sw	a1,44(sp)
      94:	00a02025 	move	a0,a1
      98:	afbf001c 	sw	ra,28(sp)
      9c:	24c50168 	addiu	a1,a2,360
      a0:	afa50020 	sw	a1,32(sp)
      a4:	0c000000 	jal	0 <func_8086D010>
      a8:	afa60028 	sw	a2,40(sp)
      ac:	8fa60028 	lw	a2,40(sp)
      b0:	3c070000 	lui	a3,0x0
      b4:	8fa50020 	lw	a1,32(sp)
      b8:	24ce0188 	addiu	t6,a2,392
      bc:	afae0010 	sw	t6,16(sp)
      c0:	24e70044 	addiu	a3,a3,68
      c4:	0c000000 	jal	0 <func_8086D010>
      c8:	8fa4002c 	lw	a0,44(sp)
      cc:	8fbf001c 	lw	ra,28(sp)
      d0:	27bd0028 	addiu	sp,sp,40
      d4:	03e00008 	jr	ra
      d8:	00000000 	nop

000000dc <func_8086D0EC>:
      dc:	27bdffe0 	addiu	sp,sp,-32
      e0:	afbf001c 	sw	ra,28(sp)
      e4:	afb00018 	sw	s0,24(sp)
      e8:	848201cc 	lh	v0,460(a0)
      ec:	00808025 	move	s0,a0
      f0:	18400004 	blez	v0,104 <func_8086D0EC+0x28>
      f4:	244f0fa0 	addiu	t7,v0,4000
      f8:	244e05dc 	addiu	t6,v0,1500
      fc:	10000002 	b	108 <func_8086D0EC+0x2c>
     100:	a48e01cc 	sh	t6,460(a0)
     104:	a60f01cc 	sh	t7,460(s0)
     108:	8618001c 	lh	t8,28(s0)
     10c:	331900ff 	andi	t9,t8,0xff
     110:	2f210005 	sltiu	at,t9,5
     114:	10200043 	beqz	at,224 <func_8086D0EC+0x148>
     118:	0019c880 	sll	t9,t9,0x2
     11c:	3c010000 	lui	at,0x0
     120:	00390821 	addu	at,at,t9
     124:	8c3900d0 	lw	t9,208(at)
     128:	03200008 	jr	t9
     12c:	00000000 	nop
     130:	0c000000 	jal	0 <func_8086D010>
     134:	860401cc 	lh	a0,460(s0)
     138:	3c013f00 	lui	at,0x3f00
     13c:	44812000 	mtc1	at,$f4
     140:	3c010000 	lui	at,0x0
     144:	c42800e4 	lwc1	$f8,228(at)
     148:	46040182 	mul.s	$f6,$f0,$f4
     14c:	3c010000 	lui	at,0x0
     150:	c43000e8 	lwc1	$f16,232(at)
     154:	860401cc 	lh	a0,460(s0)
     158:	46083280 	add.s	$f10,$f6,$f8
     15c:	46105482 	mul.s	$f18,$f10,$f16
     160:	0c000000 	jal	0 <func_8086D010>
     164:	e61201d4 	swc1	$f18,468(s0)
     168:	3c013f00 	lui	at,0x3f00
     16c:	44812000 	mtc1	at,$f4
     170:	3c0141a4 	lui	at,0x41a4
     174:	44814000 	mtc1	at,$f8
     178:	46040182 	mul.s	$f6,$f0,$f4
     17c:	3c010000 	lui	at,0x0
     180:	c43000ec 	lwc1	$f16,236(at)
     184:	c60201c8 	lwc1	$f2,456(s0)
     188:	3c010000 	lui	at,0x0
     18c:	46101482 	mul.s	$f18,$f2,$f16
     190:	46083280 	add.s	$f10,$f6,$f8
     194:	46125102 	mul.s	$f4,$f10,$f18
     198:	e60401d0 	swc1	$f4,464(s0)
     19c:	c42600f0 	lwc1	$f6,240(at)
     1a0:	46061202 	mul.s	$f8,$f2,$f6
     1a4:	1000001f 	b	224 <func_8086D0EC+0x148>
     1a8:	e6080054 	swc1	$f8,84(s0)
     1ac:	0c000000 	jal	0 <func_8086D010>
     1b0:	860401cc 	lh	a0,460(s0)
     1b4:	3c013f00 	lui	at,0x3f00
     1b8:	44818000 	mtc1	at,$f16
     1bc:	3c010000 	lui	at,0x0
     1c0:	c43200f4 	lwc1	$f18,244(at)
     1c4:	46100282 	mul.s	$f10,$f0,$f16
     1c8:	3c010000 	lui	at,0x0
     1cc:	c42600f8 	lwc1	$f6,248(at)
     1d0:	860401cc 	lh	a0,460(s0)
     1d4:	46125100 	add.s	$f4,$f10,$f18
     1d8:	46062202 	mul.s	$f8,$f4,$f6
     1dc:	0c000000 	jal	0 <func_8086D010>
     1e0:	e60801d4 	swc1	$f8,468(s0)
     1e4:	3c013f00 	lui	at,0x3f00
     1e8:	44818000 	mtc1	at,$f16
     1ec:	3c0141a4 	lui	at,0x41a4
     1f0:	44819000 	mtc1	at,$f18
     1f4:	46100282 	mul.s	$f10,$f0,$f16
     1f8:	3c010000 	lui	at,0x0
     1fc:	c42600fc 	lwc1	$f6,252(at)
     200:	c60201c8 	lwc1	$f2,456(s0)
     204:	3c010000 	lui	at,0x0
     208:	46061202 	mul.s	$f8,$f2,$f6
     20c:	46125100 	add.s	$f4,$f10,$f18
     210:	46082402 	mul.s	$f16,$f4,$f8
     214:	e61001d0 	swc1	$f16,464(s0)
     218:	c42a0100 	lwc1	$f10,256(at)
     21c:	460a1482 	mul.s	$f18,$f2,$f10
     220:	e6120054 	swc1	$f18,84(s0)
     224:	3c010000 	lui	at,0x0
     228:	c4260104 	lwc1	$f6,260(at)
     22c:	c60401d0 	lwc1	$f4,464(s0)
     230:	46043203 	div.s	$f8,$f6,$f4
     234:	e60800bc 	swc1	$f8,188(s0)
     238:	8fbf001c 	lw	ra,28(sp)
     23c:	8fb00018 	lw	s0,24(sp)
     240:	27bd0020 	addiu	sp,sp,32
     244:	03e00008 	jr	ra
     248:	00000000 	nop

0000024c <BgBdanSwitch_Init>:
     24c:	27bdffc8 	addiu	sp,sp,-56
     250:	afbf001c 	sw	ra,28(sp)
     254:	afb00018 	sw	s0,24(sp)
     258:	afa5003c 	sw	a1,60(sp)
     25c:	8482001c 	lh	v0,28(a0)
     260:	3c050000 	lui	a1,0x0
     264:	00808025 	move	s0,a0
     268:	304200ff 	andi	v0,v0,0xff
     26c:	00021400 	sll	v0,v0,0x10
     270:	00021403 	sra	v0,v0,0x10
     274:	a7a2002e 	sh	v0,46(sp)
     278:	0c000000 	jal	0 <func_8086D010>
     27c:	24a50054 	addiu	a1,a1,84
     280:	87a2002e 	lh	v0,46(sp)
     284:	24010003 	li	at,3
     288:	44802000 	mtc1	zero,$f4
     28c:	10410003 	beq	v0,at,29c <BgBdanSwitch_Init+0x50>
     290:	02002025 	move	a0,s0
     294:	24010004 	li	at,4
     298:	14410005 	bne	v0,at,2b0 <BgBdanSwitch_Init+0x64>
     29c:	3c010000 	lui	at,0x0
     2a0:	c4200108 	lwc1	$f0,264(at)
     2a4:	e6000058 	swc1	$f0,88(s0)
     2a8:	10000005 	b	2c0 <BgBdanSwitch_Init+0x74>
     2ac:	e6000050 	swc1	$f0,80(s0)
     2b0:	3c010000 	lui	at,0x0
     2b4:	c420010c 	lwc1	$f0,268(at)
     2b8:	e6000058 	swc1	$f0,88(s0)
     2bc:	e6000050 	swc1	$f0,80(s0)
     2c0:	e6040054 	swc1	$f4,84(s0)
     2c4:	a7a2002e 	sh	v0,46(sp)
     2c8:	0c000000 	jal	0 <func_8086D010>
     2cc:	3c054120 	lui	a1,0x4120
     2d0:	87a2002e 	lh	v0,46(sp)
     2d4:	2c410005 	sltiu	at,v0,5
     2d8:	10200017 	beqz	at,338 <BgBdanSwitch_Init+0xec>
     2dc:	afa20024 	sw	v0,36(sp)
     2e0:	00027080 	sll	t6,v0,0x2
     2e4:	3c010000 	lui	at,0x0
     2e8:	002e0821 	addu	at,at,t6
     2ec:	8c2e0110 	lw	t6,272(at)
     2f0:	01c00008 	jr	t6
     2f4:	00000000 	nop
     2f8:	3c060000 	lui	a2,0x0
     2fc:	24c60000 	addiu	a2,a2,0
     300:	02002025 	move	a0,s0
     304:	8fa5003c 	lw	a1,60(sp)
     308:	0c000000 	jal	0 <func_8086D010>
     30c:	24070001 	li	a3,1
     310:	1000000a 	b	33c <BgBdanSwitch_Init+0xf0>
     314:	8605001c 	lh	a1,28(s0)
     318:	02002025 	move	a0,s0
     31c:	0c000000 	jal	0 <func_8086D010>
     320:	8fa5003c 	lw	a1,60(sp)
     324:	8e0f0004 	lw	t7,4(s0)
     328:	24190004 	li	t9,4
     32c:	a219001f 	sb	t9,31(s0)
     330:	35f80001 	ori	t8,t7,0x1
     334:	ae180004 	sw	t8,4(s0)
     338:	8605001c 	lh	a1,28(s0)
     33c:	8fa4003c 	lw	a0,60(sp)
     340:	00052a03 	sra	a1,a1,0x8
     344:	0c000000 	jal	0 <func_8086D010>
     348:	30a5003f 	andi	a1,a1,0x3f
     34c:	8fa80024 	lw	t0,36(sp)
     350:	2d010005 	sltiu	at,t0,5
     354:	10200024 	beqz	at,3e8 <BgBdanSwitch_Init+0x19c>
     358:	00084080 	sll	t0,t0,0x2
     35c:	3c010000 	lui	at,0x0
     360:	00280821 	addu	at,at,t0
     364:	8c280124 	lw	t0,292(at)
     368:	01000008 	jr	t0
     36c:	00000000 	nop
     370:	10400005 	beqz	v0,388 <BgBdanSwitch_Init+0x13c>
     374:	00000000 	nop
     378:	0c000000 	jal	0 <func_8086D010>
     37c:	02002025 	move	a0,s0
     380:	10000024 	b	414 <BgBdanSwitch_Init+0x1c8>
     384:	00000000 	nop
     388:	0c000000 	jal	0 <func_8086D010>
     38c:	02002025 	move	a0,s0
     390:	10000020 	b	414 <BgBdanSwitch_Init+0x1c8>
     394:	00000000 	nop
     398:	10400005 	beqz	v0,3b0 <BgBdanSwitch_Init+0x164>
     39c:	00000000 	nop
     3a0:	0c000000 	jal	0 <func_8086D010>
     3a4:	02002025 	move	a0,s0
     3a8:	1000001a 	b	414 <BgBdanSwitch_Init+0x1c8>
     3ac:	00000000 	nop
     3b0:	0c000000 	jal	0 <func_8086D010>
     3b4:	02002025 	move	a0,s0
     3b8:	10000016 	b	414 <BgBdanSwitch_Init+0x1c8>
     3bc:	00000000 	nop
     3c0:	10400005 	beqz	v0,3d8 <BgBdanSwitch_Init+0x18c>
     3c4:	00000000 	nop
     3c8:	0c000000 	jal	0 <func_8086D010>
     3cc:	02002025 	move	a0,s0
     3d0:	10000010 	b	414 <BgBdanSwitch_Init+0x1c8>
     3d4:	00000000 	nop
     3d8:	0c000000 	jal	0 <func_8086D010>
     3dc:	02002025 	move	a0,s0
     3e0:	1000000c 	b	414 <BgBdanSwitch_Init+0x1c8>
     3e4:	00000000 	nop
     3e8:	3c040000 	lui	a0,0x0
     3ec:	3c060000 	lui	a2,0x0
     3f0:	24c60084 	addiu	a2,a2,132
     3f4:	24840058 	addiu	a0,a0,88
     3f8:	8605001c 	lh	a1,28(s0)
     3fc:	0c000000 	jal	0 <func_8086D010>
     400:	240701c6 	li	a3,454
     404:	0c000000 	jal	0 <func_8086D010>
     408:	02002025 	move	a0,s0
     40c:	10000006 	b	428 <BgBdanSwitch_Init+0x1dc>
     410:	8fbf001c 	lw	ra,28(sp)
     414:	3c040000 	lui	a0,0x0
     418:	2484009c 	addiu	a0,a0,156
     41c:	0c000000 	jal	0 <func_8086D010>
     420:	8605001c 	lh	a1,28(s0)
     424:	8fbf001c 	lw	ra,28(sp)
     428:	8fb00018 	lw	s0,24(sp)
     42c:	27bd0038 	addiu	sp,sp,56
     430:	03e00008 	jr	ra
     434:	00000000 	nop

00000438 <BgBdanSwitch_Destroy>:
     438:	27bdffe8 	addiu	sp,sp,-24
     43c:	afbf0014 	sw	ra,20(sp)
     440:	afa5001c 	sw	a1,28(sp)
     444:	848e001c 	lh	t6,28(a0)
     448:	00803825 	move	a3,a0
     44c:	31cf00ff 	andi	t7,t6,0xff
     450:	2de10005 	sltiu	at,t7,5
     454:	1020000f 	beqz	at,494 <BgBdanSwitch_Destroy+0x5c>
     458:	000f7880 	sll	t7,t7,0x2
     45c:	3c010000 	lui	at,0x0
     460:	002f0821 	addu	at,at,t7
     464:	8c2f0138 	lw	t7,312(at)
     468:	01e00008 	jr	t7
     46c:	00000000 	nop
     470:	8fa4001c 	lw	a0,28(sp)
     474:	8ce6014c 	lw	a2,332(a3)
     478:	0c000000 	jal	0 <func_8086D010>
     47c:	24850810 	addiu	a1,a0,2064
     480:	10000005 	b	498 <BgBdanSwitch_Destroy+0x60>
     484:	8fbf0014 	lw	ra,20(sp)
     488:	8fa4001c 	lw	a0,28(sp)
     48c:	0c000000 	jal	0 <func_8086D010>
     490:	24e50168 	addiu	a1,a3,360
     494:	8fbf0014 	lw	ra,20(sp)
     498:	27bd0018 	addiu	sp,sp,24
     49c:	03e00008 	jr	ra
     4a0:	00000000 	nop

000004a4 <func_8086D4B4>:
     4a4:	27bdffe0 	addiu	sp,sp,-32
     4a8:	afa40020 	sw	a0,32(sp)
     4ac:	8fae0020 	lw	t6,32(sp)
     4b0:	afbf0014 	sw	ra,20(sp)
     4b4:	afa50024 	sw	a1,36(sp)
     4b8:	00a02025 	move	a0,a1
     4bc:	85c5001c 	lh	a1,28(t6)
     4c0:	00052a03 	sra	a1,a1,0x8
     4c4:	0c000000 	jal	0 <func_8086D010>
     4c8:	30a5003f 	andi	a1,a1,0x3f
     4cc:	14400016 	bnez	v0,528 <func_8086D4B4+0x84>
     4d0:	8faf0020 	lw	t7,32(sp)
     4d4:	85e2001c 	lh	v0,28(t7)
     4d8:	8fa40024 	lw	a0,36(sp)
     4dc:	304300ff 	andi	v1,v0,0xff
     4e0:	00022a03 	sra	a1,v0,0x8
     4e4:	30a5003f 	andi	a1,a1,0x3f
     4e8:	0c000000 	jal	0 <func_8086D010>
     4ec:	afa30018 	sw	v1,24(sp)
     4f0:	8fa30018 	lw	v1,24(sp)
     4f4:	24010004 	li	at,4
     4f8:	8fa40024 	lw	a0,36(sp)
     4fc:	10600003 	beqz	v1,50c <func_8086D4B4+0x68>
     500:	8fa50020 	lw	a1,32(sp)
     504:	14610005 	bne	v1,at,51c <func_8086D4B4+0x78>
     508:	24064802 	li	a2,18434
     50c:	0c000000 	jal	0 <func_8086D010>
     510:	24064807 	li	a2,18439
     514:	10000005 	b	52c <func_8086D4B4+0x88>
     518:	8fbf0014 	lw	ra,20(sp)
     51c:	8fa40024 	lw	a0,36(sp)
     520:	0c000000 	jal	0 <func_8086D010>
     524:	8fa50020 	lw	a1,32(sp)
     528:	8fbf0014 	lw	ra,20(sp)
     52c:	27bd0020 	addiu	sp,sp,32
     530:	03e00008 	jr	ra
     534:	00000000 	nop

00000538 <func_8086D548>:
     538:	27bdffe8 	addiu	sp,sp,-24
     53c:	afa40018 	sw	a0,24(sp)
     540:	8fae0018 	lw	t6,24(sp)
     544:	afbf0014 	sw	ra,20(sp)
     548:	afa5001c 	sw	a1,28(sp)
     54c:	00a02025 	move	a0,a1
     550:	85c5001c 	lh	a1,28(t6)
     554:	00052a03 	sra	a1,a1,0x8
     558:	0c000000 	jal	0 <func_8086D010>
     55c:	30a5003f 	andi	a1,a1,0x3f
     560:	10400010 	beqz	v0,5a4 <func_8086D548+0x6c>
     564:	8faf0018 	lw	t7,24(sp)
     568:	85e5001c 	lh	a1,28(t7)
     56c:	8fa4001c 	lw	a0,28(sp)
     570:	00052a03 	sra	a1,a1,0x8
     574:	0c000000 	jal	0 <func_8086D010>
     578:	30a5003f 	andi	a1,a1,0x3f
     57c:	8fb80018 	lw	t8,24(sp)
     580:	24010004 	li	at,4
     584:	8fa4001c 	lw	a0,28(sp)
     588:	8719001c 	lh	t9,28(t8)
     58c:	03002825 	move	a1,t8
     590:	332800ff 	andi	t0,t9,0xff
     594:	55010004 	bnel	t0,at,5a8 <func_8086D548+0x70>
     598:	8fbf0014 	lw	ra,20(sp)
     59c:	0c000000 	jal	0 <func_8086D010>
     5a0:	24064807 	li	a2,18439
     5a4:	8fbf0014 	lw	ra,20(sp)
     5a8:	27bd0018 	addiu	sp,sp,24
     5ac:	03e00008 	jr	ra
     5b0:	00000000 	nop

000005b4 <func_8086D5C4>:
     5b4:	3c013f80 	lui	at,0x3f80
     5b8:	44812000 	mtc1	at,$f4
     5bc:	3c0e0000 	lui	t6,0x0
     5c0:	25ce0000 	addiu	t6,t6,0
     5c4:	ac8e0164 	sw	t6,356(a0)
     5c8:	03e00008 	jr	ra
     5cc:	e48401c8 	swc1	$f4,456(a0)

000005d0 <func_8086D5E0>:
     5d0:	27bdffe0 	addiu	sp,sp,-32
     5d4:	afbf001c 	sw	ra,28(sp)
     5d8:	afb00018 	sw	s0,24(sp)
     5dc:	afa50024 	sw	a1,36(sp)
     5e0:	8482001c 	lh	v0,28(a0)
     5e4:	00808025 	move	s0,a0
     5e8:	24010002 	li	at,2
     5ec:	304200ff 	andi	v0,v0,0xff
     5f0:	10400005 	beqz	v0,608 <func_8086D5E0+0x38>
     5f4:	00000000 	nop
     5f8:	1041000e 	beq	v0,at,634 <func_8086D5E0+0x64>
     5fc:	00000000 	nop
     600:	10000016 	b	65c <func_8086D5E0+0x8c>
     604:	8fbf001c 	lw	ra,28(sp)
     608:	0c000000 	jal	0 <func_8086D010>
     60c:	02002025 	move	a0,s0
     610:	50400012 	beqzl	v0,65c <func_8086D5E0+0x8c>
     614:	8fbf001c 	lw	ra,28(sp)
     618:	0c000000 	jal	0 <func_8086D010>
     61c:	02002025 	move	a0,s0
     620:	02002025 	move	a0,s0
     624:	0c000000 	jal	0 <func_8086D010>
     628:	8fa50024 	lw	a1,36(sp)
     62c:	1000000b 	b	65c <func_8086D5E0+0x8c>
     630:	8fbf001c 	lw	ra,28(sp)
     634:	0c000000 	jal	0 <func_8086D010>
     638:	02002025 	move	a0,s0
     63c:	50400007 	beqzl	v0,65c <func_8086D5E0+0x8c>
     640:	8fbf001c 	lw	ra,28(sp)
     644:	0c000000 	jal	0 <func_8086D010>
     648:	02002025 	move	a0,s0
     64c:	02002025 	move	a0,s0
     650:	0c000000 	jal	0 <func_8086D010>
     654:	8fa50024 	lw	a1,36(sp)
     658:	8fbf001c 	lw	ra,28(sp)
     65c:	8fb00018 	lw	s0,24(sp)
     660:	27bd0020 	addiu	sp,sp,32
     664:	03e00008 	jr	ra
     668:	00000000 	nop

0000066c <func_8086D67C>:
     66c:	3c0e0000 	lui	t6,0x0
     670:	25ce0000 	addiu	t6,t6,0
     674:	240f0064 	li	t7,100
     678:	ac8e0164 	sw	t6,356(a0)
     67c:	03e00008 	jr	ra
     680:	a48f01da 	sh	t7,474(a0)

00000684 <func_8086D694>:
     684:	27bdffe0 	addiu	sp,sp,-32
     688:	afbf001c 	sw	ra,28(sp)
     68c:	afb00018 	sw	s0,24(sp)
     690:	00808025 	move	s0,a0
     694:	0c000000 	jal	0 <func_8086D010>
     698:	afa50024 	sw	a1,36(sp)
     69c:	920e0002 	lbu	t6,2(s0)
     6a0:	3c010000 	lui	at,0x0
     6a4:	504e0005 	beql	v0,t6,6bc <func_8086D694+0x38>
     6a8:	c60401c8 	lwc1	$f4,456(s0)
     6ac:	860f01da 	lh	t7,474(s0)
     6b0:	5de00017 	bgtzl	t7,710 <func_8086D694+0x8c>
     6b4:	8fbf001c 	lw	ra,28(sp)
     6b8:	c60401c8 	lwc1	$f4,456(s0)
     6bc:	c426014c 	lwc1	$f6,332(at)
     6c0:	3c010000 	lui	at,0x0
     6c4:	46062201 	sub.s	$f8,$f4,$f6
     6c8:	e60801c8 	swc1	$f8,456(s0)
     6cc:	c61001c8 	lwc1	$f16,456(s0)
     6d0:	c42a0150 	lwc1	$f10,336(at)
     6d4:	460a803e 	c.le.s	$f16,$f10
     6d8:	00000000 	nop
     6dc:	4502000c 	bc1fl	710 <func_8086D694+0x8c>
     6e0:	8fbf001c 	lw	ra,28(sp)
     6e4:	0c000000 	jal	0 <func_8086D010>
     6e8:	02002025 	move	a0,s0
     6ec:	02002025 	move	a0,s0
     6f0:	0c000000 	jal	0 <func_8086D010>
     6f4:	24052815 	li	a1,10261
     6f8:	c60c008c 	lwc1	$f12,140(s0)
     6fc:	24050078 	li	a1,120
     700:	24060014 	li	a2,20
     704:	0c000000 	jal	0 <func_8086D010>
     708:	2407000a 	li	a3,10
     70c:	8fbf001c 	lw	ra,28(sp)
     710:	8fb00018 	lw	s0,24(sp)
     714:	27bd0020 	addiu	sp,sp,32
     718:	03e00008 	jr	ra
     71c:	00000000 	nop

00000720 <func_8086D730>:
     720:	3c010000 	lui	at,0x0
     724:	c4240154 	lwc1	$f4,340(at)
     728:	3c0e0000 	lui	t6,0x0
     72c:	25ce0000 	addiu	t6,t6,0
     730:	240f0006 	li	t7,6
     734:	ac8e0164 	sw	t6,356(a0)
     738:	a48f01d8 	sh	t7,472(a0)
     73c:	03e00008 	jr	ra
     740:	e48401c8 	swc1	$f4,456(a0)

00000744 <func_8086D754>:
     744:	27bdffe0 	addiu	sp,sp,-32
     748:	afbf001c 	sw	ra,28(sp)
     74c:	afb00018 	sw	s0,24(sp)
     750:	afa50024 	sw	a1,36(sp)
     754:	8483001c 	lh	v1,28(a0)
     758:	00808025 	move	s0,a0
     75c:	24010002 	li	at,2
     760:	306200ff 	andi	v0,v1,0xff
     764:	10400005 	beqz	v0,77c <func_8086D754+0x38>
     768:	00000000 	nop
     76c:	10410013 	beq	v0,at,7bc <func_8086D754+0x78>
     770:	8fa40024 	lw	a0,36(sp)
     774:	10000019 	b	7dc <func_8086D754+0x98>
     778:	8fbf001c 	lw	ra,28(sp)
     77c:	0c000000 	jal	0 <func_8086D010>
     780:	02002025 	move	a0,s0
     784:	1440000b 	bnez	v0,7b4 <func_8086D754+0x70>
     788:	240f0006 	li	t7,6
     78c:	860e01d8 	lh	t6,472(s0)
     790:	5dc00012 	bgtzl	t6,7dc <func_8086D754+0x98>
     794:	8fbf001c 	lw	ra,28(sp)
     798:	0c000000 	jal	0 <func_8086D010>
     79c:	02002025 	move	a0,s0
     7a0:	02002025 	move	a0,s0
     7a4:	0c000000 	jal	0 <func_8086D010>
     7a8:	8fa50024 	lw	a1,36(sp)
     7ac:	1000000b 	b	7dc <func_8086D754+0x98>
     7b0:	8fbf001c 	lw	ra,28(sp)
     7b4:	10000008 	b	7d8 <func_8086D754+0x94>
     7b8:	a60f01d8 	sh	t7,472(s0)
     7bc:	00032a03 	sra	a1,v1,0x8
     7c0:	0c000000 	jal	0 <func_8086D010>
     7c4:	30a5003f 	andi	a1,a1,0x3f
     7c8:	54400004 	bnezl	v0,7dc <func_8086D754+0x98>
     7cc:	8fbf001c 	lw	ra,28(sp)
     7d0:	0c000000 	jal	0 <func_8086D010>
     7d4:	02002025 	move	a0,s0
     7d8:	8fbf001c 	lw	ra,28(sp)
     7dc:	8fb00018 	lw	s0,24(sp)
     7e0:	27bd0020 	addiu	sp,sp,32
     7e4:	03e00008 	jr	ra
     7e8:	00000000 	nop

000007ec <func_8086D7FC>:
     7ec:	3c0e0000 	lui	t6,0x0
     7f0:	25ce0000 	addiu	t6,t6,0
     7f4:	03e00008 	jr	ra
     7f8:	ac8e0164 	sw	t6,356(a0)

000007fc <func_8086D80C>:
     7fc:	27bdffe8 	addiu	sp,sp,-24
     800:	afbf0014 	sw	ra,20(sp)
     804:	afa5001c 	sw	a1,28(sp)
     808:	3c010000 	lui	at,0x0
     80c:	c4260158 	lwc1	$f6,344(at)
     810:	c48401c8 	lwc1	$f4,456(a0)
     814:	3c013f80 	lui	at,0x3f80
     818:	44818000 	mtc1	at,$f16
     81c:	46062200 	add.s	$f8,$f4,$f6
     820:	e48801c8 	swc1	$f8,456(a0)
     824:	c48a01c8 	lwc1	$f10,456(a0)
     828:	460a803e 	c.le.s	$f16,$f10
     82c:	00000000 	nop
     830:	45020007 	bc1fl	850 <func_8086D80C+0x54>
     834:	8fbf0014 	lw	ra,20(sp)
     838:	0c000000 	jal	0 <func_8086D010>
     83c:	afa40018 	sw	a0,24(sp)
     840:	8fa40018 	lw	a0,24(sp)
     844:	0c000000 	jal	0 <func_8086D010>
     848:	24052815 	li	a1,10261
     84c:	8fbf0014 	lw	ra,20(sp)
     850:	27bd0018 	addiu	sp,sp,24
     854:	03e00008 	jr	ra
     858:	00000000 	nop

0000085c <func_8086D86C>:
     85c:	3c013f80 	lui	at,0x3f80
     860:	44812000 	mtc1	at,$f4
     864:	3c0e0000 	lui	t6,0x0
     868:	25ce0000 	addiu	t6,t6,0
     86c:	ac8e0164 	sw	t6,356(a0)
     870:	03e00008 	jr	ra
     874:	e48401c8 	swc1	$f4,456(a0)

00000878 <func_8086D888>:
     878:	27bdffe8 	addiu	sp,sp,-24
     87c:	afbf0014 	sw	ra,20(sp)
     880:	afa40018 	sw	a0,24(sp)
     884:	0c000000 	jal	0 <func_8086D010>
     888:	afa5001c 	sw	a1,28(sp)
     88c:	50400004 	beqzl	v0,8a0 <func_8086D888+0x28>
     890:	8fbf0014 	lw	ra,20(sp)
     894:	0c000000 	jal	0 <func_8086D010>
     898:	8fa40018 	lw	a0,24(sp)
     89c:	8fbf0014 	lw	ra,20(sp)
     8a0:	27bd0018 	addiu	sp,sp,24
     8a4:	03e00008 	jr	ra
     8a8:	00000000 	nop

000008ac <func_8086D8BC>:
     8ac:	3c0e0000 	lui	t6,0x0
     8b0:	25ce0000 	addiu	t6,t6,0
     8b4:	03e00008 	jr	ra
     8b8:	ac8e0164 	sw	t6,356(a0)

000008bc <func_8086D8CC>:
     8bc:	27bdffe8 	addiu	sp,sp,-24
     8c0:	afbf0014 	sw	ra,20(sp)
     8c4:	afa5001c 	sw	a1,28(sp)
     8c8:	3c010000 	lui	at,0x0
     8cc:	c426015c 	lwc1	$f6,348(at)
     8d0:	c48401c8 	lwc1	$f4,456(a0)
     8d4:	3c010000 	lui	at,0x0
     8d8:	46062201 	sub.s	$f8,$f4,$f6
     8dc:	e48801c8 	swc1	$f8,456(a0)
     8e0:	c49001c8 	lwc1	$f16,456(a0)
     8e4:	c42a0160 	lwc1	$f10,352(at)
     8e8:	460a803e 	c.le.s	$f16,$f10
     8ec:	00000000 	nop
     8f0:	4502000d 	bc1fl	928 <func_8086D8CC+0x6c>
     8f4:	8fbf0014 	lw	ra,20(sp)
     8f8:	0c000000 	jal	0 <func_8086D010>
     8fc:	afa40018 	sw	a0,24(sp)
     900:	8fa40018 	lw	a0,24(sp)
     904:	0c000000 	jal	0 <func_8086D010>
     908:	24052815 	li	a1,10261
     90c:	8fa40018 	lw	a0,24(sp)
     910:	24050078 	li	a1,120
     914:	24060014 	li	a2,20
     918:	2407000a 	li	a3,10
     91c:	0c000000 	jal	0 <func_8086D010>
     920:	c48c008c 	lwc1	$f12,140(a0)
     924:	8fbf0014 	lw	ra,20(sp)
     928:	27bd0018 	addiu	sp,sp,24
     92c:	03e00008 	jr	ra
     930:	00000000 	nop

00000934 <func_8086D944>:
     934:	3c0e0000 	lui	t6,0x0
     938:	25ce0000 	addiu	t6,t6,0
     93c:	240f0064 	li	t7,100
     940:	ac8e0164 	sw	t6,356(a0)
     944:	03e00008 	jr	ra
     948:	a48f01da 	sh	t7,474(a0)

0000094c <func_8086D95C>:
     94c:	27bdffe0 	addiu	sp,sp,-32
     950:	afbf001c 	sw	ra,28(sp)
     954:	afb00018 	sw	s0,24(sp)
     958:	00808025 	move	s0,a0
     95c:	0c000000 	jal	0 <func_8086D010>
     960:	afa50024 	sw	a1,36(sp)
     964:	920e0002 	lbu	t6,2(s0)
     968:	3c010000 	lui	at,0x0
     96c:	504e0005 	beql	v0,t6,984 <func_8086D95C+0x38>
     970:	c60401c8 	lwc1	$f4,456(s0)
     974:	860f01da 	lh	t7,474(s0)
     978:	5de00017 	bgtzl	t7,9d8 <func_8086D95C+0x8c>
     97c:	8fbf001c 	lw	ra,28(sp)
     980:	c60401c8 	lwc1	$f4,456(s0)
     984:	c4260164 	lwc1	$f6,356(at)
     988:	3c010000 	lui	at,0x0
     98c:	46062201 	sub.s	$f8,$f4,$f6
     990:	e60801c8 	swc1	$f8,456(s0)
     994:	c61001c8 	lwc1	$f16,456(s0)
     998:	c42a0168 	lwc1	$f10,360(at)
     99c:	460a803e 	c.le.s	$f16,$f10
     9a0:	00000000 	nop
     9a4:	4502000c 	bc1fl	9d8 <func_8086D95C+0x8c>
     9a8:	8fbf001c 	lw	ra,28(sp)
     9ac:	0c000000 	jal	0 <func_8086D010>
     9b0:	02002025 	move	a0,s0
     9b4:	02002025 	move	a0,s0
     9b8:	0c000000 	jal	0 <func_8086D010>
     9bc:	24052815 	li	a1,10261
     9c0:	c60c008c 	lwc1	$f12,140(s0)
     9c4:	24050078 	li	a1,120
     9c8:	24060014 	li	a2,20
     9cc:	0c000000 	jal	0 <func_8086D010>
     9d0:	2407000a 	li	a3,10
     9d4:	8fbf001c 	lw	ra,28(sp)
     9d8:	8fb00018 	lw	s0,24(sp)
     9dc:	27bd0020 	addiu	sp,sp,32
     9e0:	03e00008 	jr	ra
     9e4:	00000000 	nop

000009e8 <func_8086D9F8>:
     9e8:	3c010000 	lui	at,0x0
     9ec:	c424016c 	lwc1	$f4,364(at)
     9f0:	3c0e0000 	lui	t6,0x0
     9f4:	25ce0000 	addiu	t6,t6,0
     9f8:	240f0006 	li	t7,6
     9fc:	ac8e0164 	sw	t6,356(a0)
     a00:	a48f01d8 	sh	t7,472(a0)
     a04:	03e00008 	jr	ra
     a08:	e48401c8 	swc1	$f4,456(a0)

00000a0c <func_8086DA1C>:
     a0c:	27bdffe0 	addiu	sp,sp,-32
     a10:	afbf0014 	sw	ra,20(sp)
     a14:	afa50024 	sw	a1,36(sp)
     a18:	8caf1c44 	lw	t7,7236(a1)
     a1c:	8de303ac 	lw	v1,940(t7)
     a20:	afa40020 	sw	a0,32(sp)
     a24:	0c000000 	jal	0 <func_8086D010>
     a28:	afa3001c 	sw	v1,28(sp)
     a2c:	8fa3001c 	lw	v1,28(sp)
     a30:	10400013 	beqz	v0,a80 <func_8086DA1C+0x74>
     a34:	8fa40020 	lw	a0,32(sp)
     a38:	1060000f 	beqz	v1,a78 <func_8086DA1C+0x6c>
     a3c:	24080006 	li	t0,6
     a40:	84780000 	lh	t8,0(v1)
     a44:	240100a1 	li	at,161
     a48:	1701000b 	bne	t8,at,a78 <func_8086DA1C+0x6c>
     a4c:	00000000 	nop
     a50:	849901d8 	lh	t9,472(a0)
     a54:	5f200010 	bgtzl	t9,a98 <func_8086DA1C+0x8c>
     a58:	8fbf0014 	lw	ra,20(sp)
     a5c:	0c000000 	jal	0 <func_8086D010>
     a60:	afa40020 	sw	a0,32(sp)
     a64:	8fa40020 	lw	a0,32(sp)
     a68:	0c000000 	jal	0 <func_8086D010>
     a6c:	8fa50024 	lw	a1,36(sp)
     a70:	10000009 	b	a98 <func_8086DA1C+0x8c>
     a74:	8fbf0014 	lw	ra,20(sp)
     a78:	10000006 	b	a94 <func_8086DA1C+0x88>
     a7c:	a48801d8 	sh	t0,472(a0)
     a80:	848901d8 	lh	t1,472(a0)
     a84:	5d200004 	bgtzl	t1,a98 <func_8086DA1C+0x8c>
     a88:	8fbf0014 	lw	ra,20(sp)
     a8c:	0c000000 	jal	0 <func_8086D010>
     a90:	00000000 	nop
     a94:	8fbf0014 	lw	ra,20(sp)
     a98:	27bd0020 	addiu	sp,sp,32
     a9c:	03e00008 	jr	ra
     aa0:	00000000 	nop

00000aa4 <func_8086DAB4>:
     aa4:	3c0e0000 	lui	t6,0x0
     aa8:	25ce0000 	addiu	t6,t6,0
     aac:	03e00008 	jr	ra
     ab0:	ac8e0164 	sw	t6,356(a0)

00000ab4 <func_8086DAC4>:
     ab4:	27bdffe8 	addiu	sp,sp,-24
     ab8:	afbf0014 	sw	ra,20(sp)
     abc:	afa5001c 	sw	a1,28(sp)
     ac0:	3c010000 	lui	at,0x0
     ac4:	c4260170 	lwc1	$f6,368(at)
     ac8:	c48401c8 	lwc1	$f4,456(a0)
     acc:	3c013f80 	lui	at,0x3f80
     ad0:	44818000 	mtc1	at,$f16
     ad4:	46062200 	add.s	$f8,$f4,$f6
     ad8:	e48801c8 	swc1	$f8,456(a0)
     adc:	c48a01c8 	lwc1	$f10,456(a0)
     ae0:	460a803e 	c.le.s	$f16,$f10
     ae4:	00000000 	nop
     ae8:	45020007 	bc1fl	b08 <func_8086DAC4+0x54>
     aec:	8fbf0014 	lw	ra,20(sp)
     af0:	0c000000 	jal	0 <func_8086D010>
     af4:	afa40018 	sw	a0,24(sp)
     af8:	8fa40018 	lw	a0,24(sp)
     afc:	0c000000 	jal	0 <func_8086D010>
     b00:	24052815 	li	a1,10261
     b04:	8fbf0014 	lw	ra,20(sp)
     b08:	27bd0018 	addiu	sp,sp,24
     b0c:	03e00008 	jr	ra
     b10:	00000000 	nop

00000b14 <func_8086DB24>:
     b14:	3c010000 	lui	at,0x0
     b18:	c4240174 	lwc1	$f4,372(at)
     b1c:	3c0e0000 	lui	t6,0x0
     b20:	25ce0000 	addiu	t6,t6,0
     b24:	ac8e0164 	sw	t6,356(a0)
     b28:	03e00008 	jr	ra
     b2c:	e48401c8 	swc1	$f4,456(a0)

00000b30 <func_8086DB40>:
     b30:	afa40000 	sw	a0,0(sp)
     b34:	03e00008 	jr	ra
     b38:	afa50004 	sw	a1,4(sp)

00000b3c <func_8086DB4C>:
     b3c:	3c014000 	lui	at,0x4000
     b40:	44812000 	mtc1	at,$f4
     b44:	3c0e0000 	lui	t6,0x0
     b48:	25ce0000 	addiu	t6,t6,0
     b4c:	ac8e0164 	sw	t6,356(a0)
     b50:	03e00008 	jr	ra
     b54:	e48401c8 	swc1	$f4,456(a0)

00000b58 <func_8086DB68>:
     b58:	27bdffe8 	addiu	sp,sp,-24
     b5c:	afbf0014 	sw	ra,20(sp)
     b60:	afa5001c 	sw	a1,28(sp)
     b64:	8482001c 	lh	v0,28(a0)
     b68:	24010003 	li	at,3
     b6c:	304200ff 	andi	v0,v0,0xff
     b70:	10410005 	beq	v0,at,b88 <func_8086DB68+0x30>
     b74:	24010004 	li	at,4
     b78:	50410014 	beql	v0,at,bcc <func_8086DB68+0x74>
     b7c:	90880179 	lbu	t0,377(a0)
     b80:	10000024 	b	c14 <func_8086DB68+0xbc>
     b84:	8fbf0014 	lw	ra,20(sp)
     b88:	908e0179 	lbu	t6,377(a0)
     b8c:	31cf0002 	andi	t7,t6,0x2
     b90:	51e00020 	beqzl	t7,c14 <func_8086DB68+0xbc>
     b94:	8fbf0014 	lw	ra,20(sp)
     b98:	849801d8 	lh	t8,472(a0)
     b9c:	2419000a 	li	t9,10
     ba0:	5f00001c 	bgtzl	t8,c14 <func_8086DB68+0xbc>
     ba4:	8fbf0014 	lw	ra,20(sp)
     ba8:	a49901d8 	sh	t9,472(a0)
     bac:	0c000000 	jal	0 <func_8086D010>
     bb0:	afa40018 	sw	a0,24(sp)
     bb4:	8fa40018 	lw	a0,24(sp)
     bb8:	0c000000 	jal	0 <func_8086D010>
     bbc:	8fa5001c 	lw	a1,28(sp)
     bc0:	10000014 	b	c14 <func_8086DB68+0xbc>
     bc4:	8fbf0014 	lw	ra,20(sp)
     bc8:	90880179 	lbu	t0,377(a0)
     bcc:	31090002 	andi	t1,t0,0x2
     bd0:	51200010 	beqzl	t1,c14 <func_8086DB68+0xbc>
     bd4:	8fbf0014 	lw	ra,20(sp)
     bd8:	908a01dc 	lbu	t2,476(a0)
     bdc:	314b0002 	andi	t3,t2,0x2
     be0:	5560000c 	bnezl	t3,c14 <func_8086DB68+0xbc>
     be4:	8fbf0014 	lw	ra,20(sp)
     be8:	848c01d8 	lh	t4,472(a0)
     bec:	240d000a 	li	t5,10
     bf0:	5d800008 	bgtzl	t4,c14 <func_8086DB68+0xbc>
     bf4:	8fbf0014 	lw	ra,20(sp)
     bf8:	a48d01d8 	sh	t5,472(a0)
     bfc:	0c000000 	jal	0 <func_8086D010>
     c00:	afa40018 	sw	a0,24(sp)
     c04:	8fa40018 	lw	a0,24(sp)
     c08:	0c000000 	jal	0 <func_8086D010>
     c0c:	8fa5001c 	lw	a1,28(sp)
     c10:	8fbf0014 	lw	ra,20(sp)
     c14:	27bd0018 	addiu	sp,sp,24
     c18:	03e00008 	jr	ra
     c1c:	00000000 	nop

00000c20 <func_8086DC30>:
     c20:	3c0e0000 	lui	t6,0x0
     c24:	25ce0000 	addiu	t6,t6,0
     c28:	240f0064 	li	t7,100
     c2c:	ac8e0164 	sw	t6,356(a0)
     c30:	03e00008 	jr	ra
     c34:	a48f01da 	sh	t7,474(a0)

00000c38 <func_8086DC48>:
     c38:	27bdffe8 	addiu	sp,sp,-24
     c3c:	afbf0014 	sw	ra,20(sp)
     c40:	afa5001c 	sw	a1,28(sp)
     c44:	0c000000 	jal	0 <func_8086D010>
     c48:	afa40018 	sw	a0,24(sp)
     c4c:	8fa40018 	lw	a0,24(sp)
     c50:	3c010000 	lui	at,0x0
     c54:	908e0002 	lbu	t6,2(a0)
     c58:	504e0005 	beql	v0,t6,c70 <func_8086DC48+0x38>
     c5c:	c48401c8 	lwc1	$f4,456(a0)
     c60:	848f01da 	lh	t7,474(a0)
     c64:	5de00012 	bgtzl	t7,cb0 <func_8086DC48+0x78>
     c68:	8fbf0014 	lw	ra,20(sp)
     c6c:	c48401c8 	lwc1	$f4,456(a0)
     c70:	c4260178 	lwc1	$f6,376(at)
     c74:	3c013f80 	lui	at,0x3f80
     c78:	44815000 	mtc1	at,$f10
     c7c:	46062201 	sub.s	$f8,$f4,$f6
     c80:	e48801c8 	swc1	$f8,456(a0)
     c84:	c49001c8 	lwc1	$f16,456(a0)
     c88:	460a803e 	c.le.s	$f16,$f10
     c8c:	00000000 	nop
     c90:	45020007 	bc1fl	cb0 <func_8086DC48+0x78>
     c94:	8fbf0014 	lw	ra,20(sp)
     c98:	0c000000 	jal	0 <func_8086D010>
     c9c:	afa40018 	sw	a0,24(sp)
     ca0:	8fa40018 	lw	a0,24(sp)
     ca4:	0c000000 	jal	0 <func_8086D010>
     ca8:	24052815 	li	a1,10261
     cac:	8fbf0014 	lw	ra,20(sp)
     cb0:	27bd0018 	addiu	sp,sp,24
     cb4:	03e00008 	jr	ra
     cb8:	00000000 	nop

00000cbc <func_8086DCCC>:
     cbc:	3c013f80 	lui	at,0x3f80
     cc0:	44812000 	mtc1	at,$f4
     cc4:	3c0e0000 	lui	t6,0x0
     cc8:	25ce0000 	addiu	t6,t6,0
     ccc:	ac8e0164 	sw	t6,356(a0)
     cd0:	03e00008 	jr	ra
     cd4:	e48401c8 	swc1	$f4,456(a0)

00000cd8 <func_8086DCE8>:
     cd8:	27bdffe8 	addiu	sp,sp,-24
     cdc:	afbf0014 	sw	ra,20(sp)
     ce0:	8483001c 	lh	v1,28(a0)
     ce4:	24010003 	li	at,3
     ce8:	00803025 	move	a2,a0
     cec:	306200ff 	andi	v0,v1,0xff
     cf0:	10410006 	beq	v0,at,d0c <func_8086DCE8+0x34>
     cf4:	00a03825 	move	a3,a1
     cf8:	24010004 	li	at,4
     cfc:	5041000f 	beql	v0,at,d3c <func_8086DCE8+0x64>
     d00:	90ce0179 	lbu	t6,377(a2)
     d04:	10000021 	b	d8c <func_8086DCE8+0xb4>
     d08:	8fbf0014 	lw	ra,20(sp)
     d0c:	00032a03 	sra	a1,v1,0x8
     d10:	30a5003f 	andi	a1,a1,0x3f
     d14:	00e02025 	move	a0,a3
     d18:	0c000000 	jal	0 <func_8086D010>
     d1c:	afa60018 	sw	a2,24(sp)
     d20:	14400019 	bnez	v0,d88 <func_8086DCE8+0xb0>
     d24:	8fa60018 	lw	a2,24(sp)
     d28:	0c000000 	jal	0 <func_8086D010>
     d2c:	00c02025 	move	a0,a2
     d30:	10000016 	b	d8c <func_8086DCE8+0xb4>
     d34:	8fbf0014 	lw	ra,20(sp)
     d38:	90ce0179 	lbu	t6,377(a2)
     d3c:	31cf0002 	andi	t7,t6,0x2
     d40:	51e00012 	beqzl	t7,d8c <func_8086DCE8+0xb4>
     d44:	8fbf0014 	lw	ra,20(sp)
     d48:	90d801dc 	lbu	t8,476(a2)
     d4c:	33190002 	andi	t9,t8,0x2
     d50:	5720000e 	bnezl	t9,d8c <func_8086DCE8+0xb4>
     d54:	8fbf0014 	lw	ra,20(sp)
     d58:	84c801d8 	lh	t0,472(a2)
     d5c:	2409000a 	li	t1,10
     d60:	00c02025 	move	a0,a2
     d64:	5d000009 	bgtzl	t0,d8c <func_8086DCE8+0xb4>
     d68:	8fbf0014 	lw	ra,20(sp)
     d6c:	a4c901d8 	sh	t1,472(a2)
     d70:	afa7001c 	sw	a3,28(sp)
     d74:	0c000000 	jal	0 <func_8086D010>
     d78:	afa60018 	sw	a2,24(sp)
     d7c:	8fa40018 	lw	a0,24(sp)
     d80:	0c000000 	jal	0 <func_8086D010>
     d84:	8fa5001c 	lw	a1,28(sp)
     d88:	8fbf0014 	lw	ra,20(sp)
     d8c:	27bd0018 	addiu	sp,sp,24
     d90:	03e00008 	jr	ra
     d94:	00000000 	nop

00000d98 <func_8086DDA8>:
     d98:	3c0e0000 	lui	t6,0x0
     d9c:	25ce0000 	addiu	t6,t6,0
     da0:	240f0064 	li	t7,100
     da4:	ac8e0164 	sw	t6,356(a0)
     da8:	03e00008 	jr	ra
     dac:	a48f01da 	sh	t7,474(a0)

00000db0 <func_8086DDC0>:
     db0:	27bdffe8 	addiu	sp,sp,-24
     db4:	afbf0014 	sw	ra,20(sp)
     db8:	afa5001c 	sw	a1,28(sp)
     dbc:	848e001c 	lh	t6,28(a0)
     dc0:	24010004 	li	at,4
     dc4:	31cf00ff 	andi	t7,t6,0xff
     dc8:	15e10009 	bne	t7,at,df0 <func_8086DDC0+0x40>
     dcc:	00000000 	nop
     dd0:	0c000000 	jal	0 <func_8086D010>
     dd4:	afa40018 	sw	a0,24(sp)
     dd8:	8fa40018 	lw	a0,24(sp)
     ddc:	90980002 	lbu	t8,2(a0)
     de0:	10580003 	beq	v0,t8,df0 <func_8086DDC0+0x40>
     de4:	00000000 	nop
     de8:	849901da 	lh	t9,474(a0)
     dec:	1f200011 	bgtz	t9,e34 <func_8086DDC0+0x84>
     df0:	3c010000 	lui	at,0x0
     df4:	c426017c 	lwc1	$f6,380(at)
     df8:	c48401c8 	lwc1	$f4,456(a0)
     dfc:	3c014000 	lui	at,0x4000
     e00:	44818000 	mtc1	at,$f16
     e04:	46062200 	add.s	$f8,$f4,$f6
     e08:	e48801c8 	swc1	$f8,456(a0)
     e0c:	c48a01c8 	lwc1	$f10,456(a0)
     e10:	460a803e 	c.le.s	$f16,$f10
     e14:	00000000 	nop
     e18:	45020007 	bc1fl	e38 <func_8086DDC0+0x88>
     e1c:	8fbf0014 	lw	ra,20(sp)
     e20:	0c000000 	jal	0 <func_8086D010>
     e24:	afa40018 	sw	a0,24(sp)
     e28:	8fa40018 	lw	a0,24(sp)
     e2c:	0c000000 	jal	0 <func_8086D010>
     e30:	24052815 	li	a1,10261
     e34:	8fbf0014 	lw	ra,20(sp)
     e38:	27bd0018 	addiu	sp,sp,24
     e3c:	03e00008 	jr	ra
     e40:	00000000 	nop

00000e44 <BgBdanSwitch_Update>:
     e44:	27bdffc8 	addiu	sp,sp,-56
     e48:	afbf001c 	sw	ra,28(sp)
     e4c:	afb10018 	sw	s1,24(sp)
     e50:	afb00014 	sw	s0,20(sp)
     e54:	848201da 	lh	v0,474(a0)
     e58:	00808025 	move	s0,a0
     e5c:	00a08825 	move	s1,a1
     e60:	18400002 	blez	v0,e6c <BgBdanSwitch_Update+0x28>
     e64:	244effff 	addiu	t6,v0,-1
     e68:	a48e01da 	sh	t6,474(a0)
     e6c:	8e190164 	lw	t9,356(s0)
     e70:	02002025 	move	a0,s0
     e74:	02202825 	move	a1,s1
     e78:	0320f809 	jalr	t9
     e7c:	00000000 	nop
     e80:	0c000000 	jal	0 <func_8086D010>
     e84:	02002025 	move	a0,s0
     e88:	8602001c 	lh	v0,28(s0)
     e8c:	24010003 	li	at,3
     e90:	304200ff 	andi	v0,v0,0xff
     e94:	10410007 	beq	v0,at,eb4 <BgBdanSwitch_Update+0x70>
     e98:	24010004 	li	at,4
     e9c:	10410005 	beq	v0,at,eb4 <BgBdanSwitch_Update+0x70>
     ea0:	00000000 	nop
     ea4:	860f01d8 	lh	t7,472(s0)
     ea8:	25f8ffff 	addiu	t8,t7,-1
     eac:	10000021 	b	f34 <BgBdanSwitch_Update+0xf0>
     eb0:	a61801d8 	sh	t8,472(s0)
     eb4:	0c000000 	jal	0 <func_8086D010>
     eb8:	02202025 	move	a0,s1
     ebc:	14400005 	bnez	v0,ed4 <BgBdanSwitch_Update+0x90>
     ec0:	3c0143b9 	lui	at,0x43b9
     ec4:	860201d8 	lh	v0,472(s0)
     ec8:	18400002 	blez	v0,ed4 <BgBdanSwitch_Update+0x90>
     ecc:	2448ffff 	addiu	t0,v0,-1
     ed0:	a60801d8 	sh	t0,472(s0)
     ed4:	c60401d4 	lwc1	$f4,468(s0)
     ed8:	44813000 	mtc1	at,$f6
     edc:	92020179 	lbu	v0,377(s0)
     ee0:	8e0c0184 	lw	t4,388(s0)
     ee4:	46062202 	mul.s	$f8,$f4,$f6
     ee8:	3c010001 	lui	at,0x1
     eec:	3049fffd 	andi	t1,v0,0xfffd
     ef0:	a2090179 	sb	t1,377(s0)
     ef4:	34211e60 	ori	at,at,0x1e60
     ef8:	a20201dc 	sb	v0,476(s0)
     efc:	02212821 	addu	a1,s1,at
     f00:	4600428d 	trunc.w.s	$f10,$f8
     f04:	26060168 	addiu	a2,s0,360
     f08:	02202025 	move	a0,s1
     f0c:	440b5000 	mfc1	t3,$f10
     f10:	00000000 	nop
     f14:	a58b002e 	sh	t3,46(t4)
     f18:	afa60024 	sw	a2,36(sp)
     f1c:	0c000000 	jal	0 <func_8086D010>
     f20:	afa50028 	sw	a1,40(sp)
     f24:	8fa50028 	lw	a1,40(sp)
     f28:	8fa60024 	lw	a2,36(sp)
     f2c:	0c000000 	jal	0 <func_8086D010>
     f30:	02202025 	move	a0,s1
     f34:	8fbf001c 	lw	ra,28(sp)
     f38:	8fb00014 	lw	s0,20(sp)
     f3c:	8fb10018 	lw	s1,24(sp)
     f40:	03e00008 	jr	ra
     f44:	27bd0038 	addiu	sp,sp,56

00000f48 <func_8086DF58>:
     f48:	27bdffe8 	addiu	sp,sp,-24
     f4c:	afbf0014 	sw	ra,20(sp)
     f50:	afa5001c 	sw	a1,28(sp)
     f54:	afa60020 	sw	a2,32(sp)
     f58:	c48601d0 	lwc1	$f6,464(a0)
     f5c:	c48400bc 	lwc1	$f4,188(a0)
     f60:	c48a0028 	lwc1	$f10,40(a0)
     f64:	8c86002c 	lw	a2,44(a0)
     f68:	46062202 	mul.s	$f8,$f4,$f6
     f6c:	c48c0024 	lwc1	$f12,36(a0)
     f70:	afa40018 	sw	a0,24(sp)
     f74:	248700b4 	addiu	a3,a0,180
     f78:	0c000000 	jal	0 <func_8086D010>
     f7c:	46085380 	add.s	$f14,$f10,$f8
     f80:	8fa40018 	lw	a0,24(sp)
     f84:	24070001 	li	a3,1
     f88:	c48c01d4 	lwc1	$f12,468(a0)
     f8c:	c48e01d0 	lwc1	$f14,464(a0)
     f90:	44066000 	mfc1	a2,$f12
     f94:	0c000000 	jal	0 <func_8086D010>
     f98:	00000000 	nop
     f9c:	8fa4001c 	lw	a0,28(sp)
     fa0:	0c000000 	jal	0 <func_8086D010>
     fa4:	8fa50020 	lw	a1,32(sp)
     fa8:	8fbf0014 	lw	ra,20(sp)
     fac:	27bd0018 	addiu	sp,sp,24
     fb0:	03e00008 	jr	ra
     fb4:	00000000 	nop

00000fb8 <BgBdanSwitch_Draw>:
     fb8:	27bdffe8 	addiu	sp,sp,-24
     fbc:	afbf0014 	sw	ra,20(sp)
     fc0:	848e001c 	lh	t6,28(a0)
     fc4:	00803825 	move	a3,a0
     fc8:	31cf00ff 	andi	t7,t6,0xff
     fcc:	2de10005 	sltiu	at,t7,5
     fd0:	10200020 	beqz	at,1054 <BgBdanSwitch_Draw+0x9c>
     fd4:	000f7880 	sll	t7,t7,0x2
     fd8:	3c010000 	lui	at,0x0
     fdc:	002f0821 	addu	at,at,t7
     fe0:	8c2f0180 	lw	t7,384(at)
     fe4:	01e00008 	jr	t7
     fe8:	00000000 	nop
     fec:	3c060000 	lui	a2,0x0
     ff0:	24c60000 	addiu	a2,a2,0
     ff4:	0c000000 	jal	0 <func_8086D010>
     ff8:	00e02025 	move	a0,a3
     ffc:	10000016 	b	1058 <BgBdanSwitch_Draw+0xa0>
    1000:	8fbf0014 	lw	ra,20(sp)
    1004:	3c060000 	lui	a2,0x0
    1008:	24c60000 	addiu	a2,a2,0
    100c:	00e02025 	move	a0,a3
    1010:	0c000000 	jal	0 <func_8086D010>
    1014:	afa70018 	sw	a3,24(sp)
    1018:	8fa70018 	lw	a3,24(sp)
    101c:	00002025 	move	a0,zero
    1020:	0c000000 	jal	0 <func_8086D010>
    1024:	24e50168 	addiu	a1,a3,360
    1028:	8fa70018 	lw	a3,24(sp)
    102c:	3c040000 	lui	a0,0x0
    1030:	24840060 	addiu	a0,a0,96
    1034:	0c000000 	jal	0 <func_8086D010>
    1038:	24e50038 	addiu	a1,a3,56
    103c:	10000006 	b	1058 <BgBdanSwitch_Draw+0xa0>
    1040:	8fbf0014 	lw	ra,20(sp)
    1044:	3c060000 	lui	a2,0x0
    1048:	24c60000 	addiu	a2,a2,0
    104c:	0c000000 	jal	0 <func_8086D010>
    1050:	00e02025 	move	a0,a3
    1054:	8fbf0014 	lw	ra,20(sp)
    1058:	27bd0018 	addiu	sp,sp,24
    105c:	03e00008 	jr	ra
    1060:	00000000 	nop
	...
