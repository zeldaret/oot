
build/src/overlays/actors/ovl_En_Go/z_en_go.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A3E570>:
       0:	03e00008 	jr	ra
       4:	ac850190 	sw	a1,400(a0)

00000008 <func_80A3E578>:
       8:	27bdffe8 	addiu	sp,sp,-24
       c:	afbf0014 	sw	ra,20(sp)
      10:	84a3001c 	lh	v1,28(a1)
      14:	8c861c44 	lw	a2,7236(a0)
      18:	306200f0 	andi	v0,v1,0xf0
      1c:	28410071 	slti	at,v0,113
      20:	14200005 	bnez	at,38 <func_80A3E578+0x30>
      24:	24010090 	li	at,144
      28:	1041000b 	beq	v0,at,58 <func_80A3E578+0x50>
      2c:	3c030000 	lui	v1,0x0
      30:	100000d5 	b	388 <L80A3E8F4+0x4>
      34:	00001025 	move	v0,zero
      38:	2c410071 	sltiu	at,v0,113
      3c:	102000d1 	beqz	at,384 <L80A3E8F4>
      40:	00027080 	sll	t6,v0,0x2
      44:	3c010000 	lui	at,0x0
      48:	002e0821 	addu	at,at,t6
      4c:	8c2e0000 	lw	t6,0(at)
      50:	01c00008 	jr	t6
      54:	00000000 	nop
      58:	24630000 	addiu	v1,v1,0
      5c:	906f003e 	lbu	t7,62(v1)
      60:	3c180000 	lui	t8,0x0
      64:	11e00003 	beqz	t7,74 <func_80A3E578+0x6c>
      68:	00000000 	nop
      6c:	100000c6 	b	388 <L80A3E8F4+0x4>
      70:	2402305e 	li	v0,12382
      74:	9318002d 	lbu	t8,45(t8)
      78:	0078c821 	addu	t9,v1,t8
      7c:	93220074 	lbu	v0,116(t9)
      80:	28410037 	slti	at,v0,55
      84:	5420000b 	bnezl	at,b4 <func_80A3E578+0xac>
      88:	28410036 	slti	at,v0,54
      8c:	0c000000 	jal	0 <func_80A3E570>
      90:	00000000 	nop
      94:	28410003 	slti	at,v0,3
      98:	14200003 	bnez	at,a8 <func_80A3E578+0xa0>
      9c:	00000000 	nop
      a0:	100000b9 	b	388 <L80A3E8F4+0x4>
      a4:	2402305e 	li	v0,12382
      a8:	100000b7 	b	388 <L80A3E8F4+0x4>
      ac:	2402305d 	li	v0,12381
      b0:	28410036 	slti	at,v0,54
      b4:	14200004 	bnez	at,c8 <func_80A3E578+0xc0>
      b8:	2408000e 	li	t0,14
      bc:	a0c80693 	sb	t0,1683(a2)
      c0:	100000b1 	b	388 <L80A3E8F4+0x4>
      c4:	24023059 	li	v0,12377
      c8:	28410034 	slti	at,v0,52
      cc:	14200003 	bnez	at,dc <func_80A3E578+0xd4>
      d0:	2409000b 	li	t1,11
      d4:	100000ac 	b	388 <L80A3E8F4+0x4>
      d8:	24023058 	li	v0,12376
      dc:	a0c90693 	sb	t1,1683(a2)
      e0:	100000a9 	b	388 <L80A3E8F4+0x4>
      e4:	24023053 	li	v0,12371

000000e8 <L80A3E658>:
      e8:	3c030000 	lui	v1,0x0
      ec:	24630000 	addiu	v1,v1,0
      f0:	3c020000 	lui	v0,0x0
      f4:	8c420004 	lw	v0,4(v0)
      f8:	8c6a00a4 	lw	t2,164(v1)
      fc:	3c0e0000 	lui	t6,0x0
     100:	004a5824 	and	t3,v0,t2
     104:	11600009 	beqz	t3,12c <L80A3E658+0x44>
     108:	00000000 	nop
     10c:	946c0f18 	lhu	t4,3864(v1)
     110:	318d8000 	andi	t5,t4,0x8000
     114:	11a00003 	beqz	t5,124 <L80A3E658+0x3c>
     118:	00000000 	nop
     11c:	1000009a 	b	388 <L80A3E8F4+0x4>
     120:	24023042 	li	v0,12354
     124:	10000098 	b	388 <L80A3E8F4+0x4>
     128:	24023041 	li	v0,12353
     12c:	91ce0002 	lbu	t6,2(t6)
     130:	9478009c 	lhu	t8,156(v1)
     134:	01c27804 	sllv	t7,v0,t6
     138:	01f8c824 	and	t9,t7,t8
     13c:	57200006 	bnezl	t9,158 <L80A3E658+0x70>
     140:	94690f18 	lhu	t1,3864(v1)
     144:	94620f18 	lhu	v0,3864(v1)
     148:	30482000 	andi	t0,v0,0x2000
     14c:	11000009 	beqz	t0,174 <L80A3E658+0x8c>
     150:	304b0200 	andi	t3,v0,0x200
     154:	94690f18 	lhu	t1,3864(v1)
     158:	312a4000 	andi	t2,t1,0x4000
     15c:	11400003 	beqz	t2,16c <L80A3E658+0x84>
     160:	00000000 	nop
     164:	10000088 	b	388 <L80A3E8F4+0x4>
     168:	24023038 	li	v0,12344
     16c:	10000086 	b	388 <L80A3E8F4+0x4>
     170:	24023037 	li	v0,12343
     174:	11600007 	beqz	t3,194 <L80A3E658+0xac>
     178:	304c0400 	andi	t4,v0,0x400
     17c:	11800003 	beqz	t4,18c <L80A3E658+0xa4>
     180:	00000000 	nop
     184:	10000080 	b	388 <L80A3E8F4+0x4>
     188:	24023033 	li	v0,12339
     18c:	1000007e 	b	388 <L80A3E8F4+0x4>
     190:	24023032 	li	v0,12338
     194:	1000007c 	b	388 <L80A3E8F4+0x4>
     198:	24023030 	li	v0,12336

0000019c <L80A3E70C>:
     19c:	0c000000 	jal	0 <func_80A3E570>
     1a0:	00032a03 	sra	a1,v1,0x8
     1a4:	10400003 	beqz	v0,1b4 <L80A3E70C+0x18>
     1a8:	00000000 	nop
     1ac:	10000076 	b	388 <L80A3E8F4+0x4>
     1b0:	24023052 	li	v0,12370
     1b4:	10000074 	b	388 <L80A3E8F4+0x4>
     1b8:	24023051 	li	v0,12369

000001bc <L80A3E72C>:
     1bc:	3c030000 	lui	v1,0x0
     1c0:	24630000 	addiu	v1,v1,0
     1c4:	3c0d0000 	lui	t5,0x0
     1c8:	8dad004c 	lw	t5,76(t5)
     1cc:	8c6e00a4 	lw	t6,164(v1)
     1d0:	01ae7824 	and	t7,t5,t6
     1d4:	51e00004 	beqzl	t7,1e8 <L80A3E72C+0x2c>
     1d8:	94780ed8 	lhu	t8,3800(v1)
     1dc:	1000006a 	b	388 <L80A3E8F4+0x4>
     1e0:	24023027 	li	v0,12327
     1e4:	94780ed8 	lhu	t8,3800(v1)
     1e8:	33190008 	andi	t9,t8,0x8
     1ec:	53200004 	beqzl	t9,200 <L80A3E72C+0x44>
     1f0:	94680f14 	lhu	t0,3860(v1)
     1f4:	10000064 	b	388 <L80A3E8F4+0x4>
     1f8:	24023021 	li	v0,12321
     1fc:	94680f14 	lhu	t0,3860(v1)
     200:	31090001 	andi	t1,t0,0x1
     204:	11200003 	beqz	t1,214 <L80A3E72C+0x58>
     208:	00000000 	nop
     20c:	1000005e 	b	388 <L80A3E8F4+0x4>
     210:	2402302a 	li	v0,12330
     214:	1000005c 	b	388 <L80A3E8F4+0x4>
     218:	24023008 	li	v0,12296

0000021c <L80A3E78C>:
     21c:	3c030000 	lui	v1,0x0
     220:	24630000 	addiu	v1,v1,0
     224:	3c0a0000 	lui	t2,0x0
     228:	8d4a004c 	lw	t2,76(t2)
     22c:	8c6b00a4 	lw	t3,164(v1)
     230:	014b6024 	and	t4,t2,t3
     234:	51800004 	beqzl	t4,248 <L80A3E78C+0x2c>
     238:	946d0ed8 	lhu	t5,3800(v1)
     23c:	10000052 	b	388 <L80A3E8F4+0x4>
     240:	24023027 	li	v0,12327
     244:	946d0ed8 	lhu	t5,3800(v1)
     248:	31ae0008 	andi	t6,t5,0x8
     24c:	11c00003 	beqz	t6,25c <L80A3E78C+0x40>
     250:	00000000 	nop
     254:	1000004c 	b	388 <L80A3E8F4+0x4>
     258:	24023026 	li	v0,12326
     25c:	1000004a 	b	388 <L80A3E8F4+0x4>
     260:	24023009 	li	v0,12297

00000264 <L80A3E7D4>:
     264:	3c030000 	lui	v1,0x0
     268:	24630000 	addiu	v1,v1,0
     26c:	3c0f0000 	lui	t7,0x0
     270:	8def004c 	lw	t7,76(t7)
     274:	8c7800a4 	lw	t8,164(v1)
     278:	01f8c824 	and	t9,t7,t8
     27c:	53200004 	beqzl	t9,290 <L80A3E7D4+0x2c>
     280:	94680ed8 	lhu	t0,3800(v1)
     284:	10000040 	b	388 <L80A3E8F4+0x4>
     288:	24023027 	li	v0,12327
     28c:	94680ed8 	lhu	t0,3800(v1)
     290:	31090008 	andi	t1,t0,0x8
     294:	11200003 	beqz	t1,2a4 <L80A3E7D4+0x40>
     298:	00000000 	nop
     29c:	1000003a 	b	388 <L80A3E8F4+0x4>
     2a0:	24023026 	li	v0,12326
     2a4:	10000038 	b	388 <L80A3E8F4+0x4>
     2a8:	2402300a 	li	v0,12298

000002ac <L80A3E81C>:
     2ac:	3c030000 	lui	v1,0x0
     2b0:	24630000 	addiu	v1,v1,0
     2b4:	3c0a0000 	lui	t2,0x0
     2b8:	8d4a004c 	lw	t2,76(t2)
     2bc:	8c6b00a4 	lw	t3,164(v1)
     2c0:	014b6024 	and	t4,t2,t3
     2c4:	51800004 	beqzl	t4,2d8 <L80A3E81C+0x2c>
     2c8:	946d0f16 	lhu	t5,3862(v1)
     2cc:	1000002e 	b	388 <L80A3E8F4+0x4>
     2d0:	24023027 	li	v0,12327
     2d4:	946d0f16 	lhu	t5,3862(v1)
     2d8:	31ae0001 	andi	t6,t5,0x1
     2dc:	11c00003 	beqz	t6,2ec <L80A3E81C+0x40>
     2e0:	00000000 	nop
     2e4:	10000028 	b	388 <L80A3E8F4+0x4>
     2e8:	24023015 	li	v0,12309
     2ec:	10000026 	b	388 <L80A3E8F4+0x4>
     2f0:	24023014 	li	v0,12308

000002f4 <L80A3E864>:
     2f4:	3c030000 	lui	v1,0x0
     2f8:	24630000 	addiu	v1,v1,0
     2fc:	3c0f0000 	lui	t7,0x0
     300:	8def004c 	lw	t7,76(t7)
     304:	8c7800a4 	lw	t8,164(v1)
     308:	01f8c824 	and	t9,t7,t8
     30c:	53200004 	beqzl	t9,320 <L80A3E864+0x2c>
     310:	94680f16 	lhu	t0,3862(v1)
     314:	1000001c 	b	388 <L80A3E8F4+0x4>
     318:	24023027 	li	v0,12327
     31c:	94680f16 	lhu	t0,3862(v1)
     320:	31090010 	andi	t1,t0,0x10
     324:	11200003 	beqz	t1,334 <L80A3E864+0x40>
     328:	00000000 	nop
     32c:	10000016 	b	388 <L80A3E8F4+0x4>
     330:	24023017 	li	v0,12311
     334:	10000014 	b	388 <L80A3E8F4+0x4>
     338:	24023016 	li	v0,12310

0000033c <L80A3E8AC>:
     33c:	3c030000 	lui	v1,0x0
     340:	24630000 	addiu	v1,v1,0
     344:	3c0a0000 	lui	t2,0x0
     348:	8d4a004c 	lw	t2,76(t2)
     34c:	8c6b00a4 	lw	t3,164(v1)
     350:	014b6024 	and	t4,t2,t3
     354:	51800004 	beqzl	t4,368 <L80A3E8AC+0x2c>
     358:	946d0f16 	lhu	t5,3862(v1)
     35c:	1000000a 	b	388 <L80A3E8F4+0x4>
     360:	24023027 	li	v0,12327
     364:	946d0f16 	lhu	t5,3862(v1)
     368:	31ae0100 	andi	t6,t5,0x100
     36c:	11c00003 	beqz	t6,37c <L80A3E8AC+0x40>
     370:	00000000 	nop
     374:	10000004 	b	388 <L80A3E8F4+0x4>
     378:	24023019 	li	v0,12313
     37c:	10000002 	b	388 <L80A3E8F4+0x4>
     380:	24023018 	li	v0,12312

00000384 <L80A3E8F4>:
     384:	00001025 	move	v0,zero
     388:	8fbf0014 	lw	ra,20(sp)
     38c:	27bd0018 	addiu	sp,sp,24
     390:	03e00008 	jr	ra
     394:	00000000 	nop

00000398 <func_80A3E908>:
     398:	27bdffd0 	addiu	sp,sp,-48
     39c:	afbf001c 	sw	ra,28(sp)
     3a0:	afa40030 	sw	a0,48(sp)
     3a4:	c4a00094 	lwc1	$f0,148(a1)
     3a8:	3c013f80 	lui	at,0x3f80
     3ac:	44811000 	mtc1	at,$f2
     3b0:	46000005 	abs.s	$f0,$f0
     3b4:	24070001 	li	a3,1
     3b8:	46020100 	add.s	$f4,$f0,$f2
     3bc:	248420d8 	addiu	a0,a0,8408
     3c0:	e7a40024 	swc1	$f4,36(sp)
     3c4:	c4a60090 	lwc1	$f6,144(a1)
     3c8:	a7a7002e 	sh	a3,46(sp)
     3cc:	afa50034 	sw	a1,52(sp)
     3d0:	46023200 	add.s	$f8,$f6,$f2
     3d4:	0c000000 	jal	0 <func_80A3E570>
     3d8:	e7a80028 	swc1	$f8,40(sp)
     3dc:	2c41000a 	sltiu	at,v0,10
     3e0:	102000ef 	beqz	at,7a0 <L80A3ED10>
     3e4:	87a7002e 	lh	a3,46(sp)
     3e8:	00027080 	sll	t6,v0,0x2
     3ec:	3c010000 	lui	at,0x0
     3f0:	002e0821 	addu	at,at,t6
     3f4:	8c2e0000 	lw	t6,0(at)
     3f8:	01c00008 	jr	t6
     3fc:	00000000 	nop

00000400 <L80A3E970>:
     400:	8fa40034 	lw	a0,52(sp)
     404:	9482010e 	lhu	v0,270(a0)
     408:	28413019 	slti	at,v0,12313
     40c:	1420000a 	bnez	at,438 <L80A3E970+0x38>
     410:	2458cff8 	addiu	t8,v0,-12296
     414:	244fcfca 	addiu	t7,v0,-12342
     418:	2de10029 	sltiu	at,t7,41
     41c:	10200052 	beqz	at,568 <L80A3EAD8>
     420:	000f7880 	sll	t7,t7,0x2
     424:	3c010000 	lui	at,0x0
     428:	002f0821 	addu	at,at,t7
     42c:	8c2f0000 	lw	t7,0(at)
     430:	01e00008 	jr	t7
     434:	00000000 	nop
     438:	2f010011 	sltiu	at,t8,17
     43c:	1020004a 	beqz	at,568 <L80A3EAD8>
     440:	0018c080 	sll	t8,t8,0x2
     444:	3c010000 	lui	at,0x0
     448:	00380821 	addu	at,at,t8
     44c:	8c380000 	lw	t8,0(at)
     450:	03000008 	jr	t8
     454:	00000000 	nop

00000458 <L80A3E9C8>:
     458:	3c030000 	lui	v1,0x0
     45c:	24630000 	addiu	v1,v1,0
     460:	94790f14 	lhu	t9,3860(v1)
     464:	00003825 	move	a3,zero
     468:	37280001 	ori	t0,t9,0x1
     46c:	100000cc 	b	7a0 <L80A3ED10>
     470:	a4680f14 	sh	t0,3860(v1)

00000474 <L80A3E9E4>:
     474:	3c030000 	lui	v1,0x0
     478:	24630000 	addiu	v1,v1,0
     47c:	94690f14 	lhu	t1,3860(v1)
     480:	00003825 	move	a3,zero
     484:	352a0800 	ori	t2,t1,0x800
     488:	100000c5 	b	7a0 <L80A3ED10>
     48c:	a46a0f14 	sh	t2,3860(v1)

00000490 <L80A3EA00>:
     490:	3c030000 	lui	v1,0x0
     494:	24630000 	addiu	v1,v1,0
     498:	946b0f16 	lhu	t3,3862(v1)
     49c:	00003825 	move	a3,zero
     4a0:	356c0001 	ori	t4,t3,0x1
     4a4:	100000be 	b	7a0 <L80A3ED10>
     4a8:	a46c0f16 	sh	t4,3862(v1)

000004ac <L80A3EA1C>:
     4ac:	3c030000 	lui	v1,0x0
     4b0:	24630000 	addiu	v1,v1,0
     4b4:	946d0f16 	lhu	t5,3862(v1)
     4b8:	00003825 	move	a3,zero
     4bc:	35ae0010 	ori	t6,t5,0x10
     4c0:	100000b7 	b	7a0 <L80A3ED10>
     4c4:	a46e0f16 	sh	t6,3862(v1)

000004c8 <L80A3EA38>:
     4c8:	3c030000 	lui	v1,0x0
     4cc:	24630000 	addiu	v1,v1,0
     4d0:	946f0f16 	lhu	t7,3862(v1)
     4d4:	00003825 	move	a3,zero
     4d8:	35f80100 	ori	t8,t7,0x100
     4dc:	100000b0 	b	7a0 <L80A3ED10>
     4e0:	a4780f16 	sh	t8,3862(v1)

000004e4 <L80A3EA54>:
     4e4:	c7aa0024 	lwc1	$f10,36(sp)
     4e8:	8fa50030 	lw	a1,48(sp)
     4ec:	2406002c 	li	a2,44
     4f0:	8fa70028 	lw	a3,40(sp)
     4f4:	0c000000 	jal	0 <func_80A3E570>
     4f8:	e7aa0010 	swc1	$f10,16(sp)
     4fc:	3c030000 	lui	v1,0x0
     500:	24630000 	addiu	v1,v1,0
     504:	94790f18 	lhu	t9,3864(v1)
     508:	24070002 	li	a3,2
     50c:	37282000 	ori	t0,t9,0x2000
     510:	100000a3 	b	7a0 <L80A3ED10>
     514:	a4680f18 	sh	t0,3864(v1)

00000518 <L80A3EA88>:
     518:	3c030000 	lui	v1,0x0
     51c:	24630000 	addiu	v1,v1,0
     520:	94690f18 	lhu	t1,3864(v1)
     524:	00003825 	move	a3,zero
     528:	352a4000 	ori	t2,t1,0x4000
     52c:	1000009c 	b	7a0 <L80A3ED10>
     530:	a46a0f18 	sh	t2,3864(v1)

00000534 <L80A3EAA4>:
     534:	3c030000 	lui	v1,0x0
     538:	24630000 	addiu	v1,v1,0
     53c:	946b0f18 	lhu	t3,3864(v1)
     540:	00003825 	move	a3,zero
     544:	356c8000 	ori	t4,t3,0x8000
     548:	10000095 	b	7a0 <L80A3ED10>
     54c:	a46c0f18 	sh	t4,3864(v1)

00000550 <L80A3EAC0>:
     550:	10000093 	b	7a0 <L80A3ED10>
     554:	24070002 	li	a3,2

00000558 <L80A3EAC8>:
     558:	10000091 	b	7a0 <L80A3ED10>
     55c:	24070002 	li	a3,2

00000560 <L80A3EAD0>:
     560:	1000008f 	b	7a0 <L80A3ED10>
     564:	24070002 	li	a3,2

00000568 <L80A3EAD8>:
     568:	1000008d 	b	7a0 <L80A3ED10>
     56c:	00003825 	move	a3,zero

00000570 <L80A3EAE0>:
     570:	8fa40030 	lw	a0,48(sp)
     574:	0c000000 	jal	0 <func_80A3E570>
     578:	a7a7002e 	sh	a3,46(sp)
     57c:	10400088 	beqz	v0,7a0 <L80A3ED10>
     580:	87a7002e 	lh	a3,46(sp)
     584:	8fa60034 	lw	a2,52(sp)
     588:	8fad0030 	lw	t5,48(sp)
     58c:	2401300a 	li	at,12298
     590:	94c2010e 	lhu	v0,270(a2)
     594:	3c0e0001 	lui	t6,0x1
     598:	01cd7021 	addu	t6,t6,t5
     59c:	1041000b 	beq	v0,at,5cc <L80A3EAE0+0x5c>
     5a0:	24013034 	li	at,12340
     5a4:	10410028 	beq	v0,at,648 <L80A3EAE0+0xd8>
     5a8:	8fa40030 	lw	a0,48(sp)
     5ac:	24013054 	li	at,12372
     5b0:	10410046 	beq	v0,at,6cc <L80A3EAE0+0x15c>
     5b4:	8fa40030 	lw	a0,48(sp)
     5b8:	24013055 	li	at,12373
     5bc:	50410044 	beql	v0,at,6d0 <L80A3EAE0+0x160>
     5c0:	3c0e0001 	lui	t6,0x1
     5c4:	10000077 	b	7a4 <L80A3ED10+0x4>
     5c8:	8fbf001c 	lw	ra,28(sp)
     5cc:	91ce04bd 	lbu	t6,1213(t6)
     5d0:	3c030000 	lui	v1,0x0
     5d4:	24630000 	addiu	v1,v1,0
     5d8:	15c00013 	bnez	t6,628 <L80A3EAE0+0xb8>
     5dc:	3c180000 	lui	t8,0x0
     5e0:	8c6f00a0 	lw	t7,160(v1)
     5e4:	8f180008 	lw	t8,8(t8)
     5e8:	3c080000 	lui	t0,0x0
     5ec:	91080002 	lbu	t0,2(t0)
     5f0:	01f8c824 	and	t9,t7,t8
     5f4:	240c300b 	li	t4,12299
     5f8:	01194807 	srav	t1,t9,t0
     5fc:	15200006 	bnez	t1,618 <L80A3EAE0+0xa8>
     600:	00000000 	nop
     604:	946a0f14 	lhu	t2,3860(v1)
     608:	240d300c 	li	t5,12300
     60c:	314b0800 	andi	t3,t2,0x800
     610:	11600003 	beqz	t3,620 <L80A3EAE0+0xb0>
     614:	00000000 	nop
     618:	10000005 	b	630 <L80A3EAE0+0xc0>
     61c:	a4cc010e 	sh	t4,270(a2)
     620:	10000003 	b	630 <L80A3EAE0+0xc0>
     624:	a4cd010e 	sh	t5,270(a2)
     628:	240e300d 	li	t6,12301
     62c:	a4ce010e 	sh	t6,270(a2)
     630:	94c5010e 	lhu	a1,270(a2)
     634:	a7a7002e 	sh	a3,46(sp)
     638:	0c000000 	jal	0 <func_80A3E570>
     63c:	8fa40030 	lw	a0,48(sp)
     640:	10000057 	b	7a0 <L80A3ED10>
     644:	87a7002e 	lh	a3,46(sp)
     648:	3c0f0001 	lui	t7,0x1
     64c:	01e47821 	addu	t7,t7,a0
     650:	91ef04bd 	lbu	t7,1213(t7)
     654:	3c030000 	lui	v1,0x0
     658:	24630000 	addiu	v1,v1,0
     65c:	55e0000e 	bnezl	t7,698 <L80A3EAE0+0x128>
     660:	946a0f18 	lhu	t2,3864(v1)
     664:	3c030000 	lui	v1,0x0
     668:	24630000 	addiu	v1,v1,0
     66c:	94780f18 	lhu	t8,3864(v1)
     670:	24083033 	li	t0,12339
     674:	24093035 	li	t1,12341
     678:	33190800 	andi	t9,t8,0x800
     67c:	13200003 	beqz	t9,68c <L80A3EAE0+0x11c>
     680:	00000000 	nop
     684:	1000000c 	b	6b8 <L80A3EAE0+0x148>
     688:	a4c8010e 	sh	t0,270(a2)
     68c:	1000000a 	b	6b8 <L80A3EAE0+0x148>
     690:	a4c9010e 	sh	t1,270(a2)
     694:	946a0f18 	lhu	t2,3864(v1)
     698:	240c3036 	li	t4,12342
     69c:	240d3033 	li	t5,12339
     6a0:	314b0800 	andi	t3,t2,0x800
     6a4:	51600004 	beqzl	t3,6b8 <L80A3EAE0+0x148>
     6a8:	a4cd010e 	sh	t5,270(a2)
     6ac:	10000002 	b	6b8 <L80A3EAE0+0x148>
     6b0:	a4cc010e 	sh	t4,270(a2)
     6b4:	a4cd010e 	sh	t5,270(a2)
     6b8:	94c5010e 	lhu	a1,270(a2)
     6bc:	0c000000 	jal	0 <func_80A3E570>
     6c0:	a7a7002e 	sh	a3,46(sp)
     6c4:	10000036 	b	7a0 <L80A3ED10>
     6c8:	87a7002e 	lh	a3,46(sp)
     6cc:	3c0e0001 	lui	t6,0x1
     6d0:	01c47021 	addu	t6,t6,a0
     6d4:	91ce04bd 	lbu	t6,1213(t6)
     6d8:	240f3056 	li	t7,12374
     6dc:	31e5ffff 	andi	a1,t7,0xffff
     6e0:	55c00004 	bnezl	t6,6f4 <L80A3EAE0+0x184>
     6e4:	a4cf010e 	sh	t7,270(a2)
     6e8:	10000005 	b	700 <L80A3EAE0+0x190>
     6ec:	24070002 	li	a3,2
     6f0:	a4cf010e 	sh	t7,270(a2)
     6f4:	0c000000 	jal	0 <func_80A3E570>
     6f8:	a7a7002e 	sh	a3,46(sp)
     6fc:	87a7002e 	lh	a3,46(sp)
     700:	3c030000 	lui	v1,0x0
     704:	24630000 	addiu	v1,v1,0
     708:	94780f0e 	lhu	t8,3854(v1)
     70c:	37190010 	ori	t9,t8,0x10
     710:	10000023 	b	7a0 <L80A3ED10>
     714:	a4790f0e 	sh	t9,3854(v1)

00000718 <L80A3EC88>:
     718:	8fa40030 	lw	a0,48(sp)
     71c:	0c000000 	jal	0 <func_80A3E570>
     720:	a7a7002e 	sh	a3,46(sp)
     724:	1040001e 	beqz	v0,7a0 <L80A3ED10>
     728:	87a7002e 	lh	a3,46(sp)
     72c:	8fa60034 	lw	a2,52(sp)
     730:	24013032 	li	at,12338
     734:	240a3034 	li	t2,12340
     738:	94c2010e 	lhu	v0,270(a2)
     73c:	3145ffff 	andi	a1,t2,0xffff
     740:	1041000b 	beq	v0,at,770 <L80A3EC88+0x58>
     744:	24013033 	li	at,12339
     748:	10410009 	beq	v0,at,770 <L80A3EC88+0x58>
     74c:	24013035 	li	at,12341
     750:	10410003 	beq	v0,at,760 <L80A3EC88+0x48>
     754:	3c030000 	lui	v1,0x0
     758:	10000011 	b	7a0 <L80A3ED10>
     75c:	24070002 	li	a3,2
     760:	24630000 	addiu	v1,v1,0
     764:	94680f18 	lhu	t0,3864(v1)
     768:	35090800 	ori	t1,t0,0x800
     76c:	a4690f18 	sh	t1,3864(v1)
     770:	a4ca010e 	sh	t2,270(a2)
     774:	a7a7002e 	sh	a3,46(sp)
     778:	0c000000 	jal	0 <func_80A3E570>
     77c:	8fa40030 	lw	a0,48(sp)
     780:	10000007 	b	7a0 <L80A3ED10>
     784:	87a7002e 	lh	a3,46(sp)

00000788 <L80A3ECF8>:
     788:	8fa40030 	lw	a0,48(sp)
     78c:	0c000000 	jal	0 <func_80A3E570>
     790:	a7a7002e 	sh	a3,46(sp)
     794:	10400002 	beqz	v0,7a0 <L80A3ED10>
     798:	87a7002e 	lh	a3,46(sp)
     79c:	24070003 	li	a3,3

000007a0 <L80A3ED10>:
     7a0:	8fbf001c 	lw	ra,28(sp)
     7a4:	27bd0030 	addiu	sp,sp,48
     7a8:	00e01025 	move	v0,a3
     7ac:	03e00008 	jr	ra
     7b0:	00000000 	nop

000007b4 <func_80A3ED24>:
     7b4:	27bdffe0 	addiu	sp,sp,-32
     7b8:	afbf001c 	sw	ra,28(sp)
     7bc:	afb00018 	sw	s0,24(sp)
     7c0:	afa40020 	sw	a0,32(sp)
     7c4:	afa7002c 	sw	a3,44(sp)
     7c8:	84ce0000 	lh	t6,0(a2)
     7cc:	00803825 	move	a3,a0
     7d0:	00a08025 	move	s0,a1
     7d4:	51c0000a 	beqzl	t6,800 <func_80A3ED24+0x4c>
     7d8:	02002025 	move	a0,s0
     7dc:	8fb90034 	lw	t9,52(sp)
     7e0:	afa60028 	sw	a2,40(sp)
     7e4:	0320f809 	jalr	t9
     7e8:	00000000 	nop
     7ec:	8fa60028 	lw	a2,40(sp)
     7f0:	a4c20000 	sh	v0,0(a2)
     7f4:	10000019 	b	85c <func_80A3ED24+0xa8>
     7f8:	00001025 	move	v0,zero
     7fc:	02002025 	move	a0,s0
     800:	00e02825 	move	a1,a3
     804:	afa60028 	sw	a2,40(sp)
     808:	0c000000 	jal	0 <func_80A3E570>
     80c:	afa70020 	sw	a3,32(sp)
     810:	10400005 	beqz	v0,828 <func_80A3ED24+0x74>
     814:	8fa60028 	lw	a2,40(sp)
     818:	240f0001 	li	t7,1
     81c:	a4cf0000 	sh	t7,0(a2)
     820:	1000000e 	b	85c <func_80A3ED24+0xa8>
     824:	24020001 	li	v0,1
     828:	02002025 	move	a0,s0
     82c:	8fa50020 	lw	a1,32(sp)
     830:	0c000000 	jal	0 <func_80A3E570>
     834:	8fa6002c 	lw	a2,44(sp)
     838:	14400003 	bnez	v0,848 <func_80A3ED24+0x94>
     83c:	8fb90030 	lw	t9,48(sp)
     840:	10000006 	b	85c <func_80A3ED24+0xa8>
     844:	00001025 	move	v0,zero
     848:	8fa40020 	lw	a0,32(sp)
     84c:	0320f809 	jalr	t9
     850:	02002825 	move	a1,s0
     854:	a602010e 	sh	v0,270(s0)
     858:	00001025 	move	v0,zero
     85c:	8fbf001c 	lw	ra,28(sp)
     860:	8fb00018 	lw	s0,24(sp)
     864:	27bd0020 	addiu	sp,sp,32
     868:	03e00008 	jr	ra
     86c:	00000000 	nop

00000870 <func_80A3EDE0>:
     870:	27bdffc8 	addiu	sp,sp,-56
     874:	afbf0024 	sw	ra,36(sp)
     878:	afa40038 	sw	a0,56(sp)
     87c:	848f001c 	lh	t7,28(a0)
     880:	24010090 	li	at,144
     884:	0005c900 	sll	t9,a1,0x4
     888:	31f800f0 	andi	t8,t7,0xf0
     88c:	17010005 	bne	t8,at,8a4 <func_80A3EDE0+0x34>
     890:	3c080000 	lui	t0,0x0
     894:	3c013f00 	lui	at,0x3f00
     898:	44810000 	mtc1	at,$f0
     89c:	10000004 	b	8b0 <func_80A3EDE0+0x40>
     8a0:	00000000 	nop
     8a4:	3c013f80 	lui	at,0x3f80
     8a8:	44810000 	mtc1	at,$f0
     8ac:	00000000 	nop
     8b0:	25080000 	addiu	t0,t0,0
     8b4:	03281821 	addu	v1,t9,t0
     8b8:	8c640000 	lw	a0,0(v1)
     8bc:	afa3002c 	sw	v1,44(sp)
     8c0:	0c000000 	jal	0 <func_80A3E570>
     8c4:	e7a00030 	swc1	$f0,48(sp)
     8c8:	8fa3002c 	lw	v1,44(sp)
     8cc:	c7a00030 	lwc1	$f0,48(sp)
     8d0:	44824000 	mtc1	v0,$f8
     8d4:	c4640004 	lwc1	$f4,4(v1)
     8d8:	8fa40038 	lw	a0,56(sp)
     8dc:	468042a0 	cvt.s.w	$f10,$f8
     8e0:	46040182 	mul.s	$f6,$f0,$f4
     8e4:	90690008 	lbu	t1,8(v1)
     8e8:	c470000c 	lwc1	$f16,12(v1)
     8ec:	24070000 	li	a3,0
     8f0:	8c650000 	lw	a1,0(v1)
     8f4:	e7aa0010 	swc1	$f10,16(sp)
     8f8:	2484014c 	addiu	a0,a0,332
     8fc:	44063000 	mfc1	a2,$f6
     900:	afa90014 	sw	t1,20(sp)
     904:	0c000000 	jal	0 <func_80A3E570>
     908:	e7b00018 	swc1	$f16,24(sp)
     90c:	8fbf0024 	lw	ra,36(sp)
     910:	27bd0038 	addiu	sp,sp,56
     914:	03e00008 	jr	ra
     918:	00000000 	nop

0000091c <func_80A3EE8C>:
     91c:	27bdffe8 	addiu	sp,sp,-24
     920:	afbf0014 	sw	ra,20(sp)
     924:	8482001c 	lh	v0,28(a0)
     928:	24010090 	li	at,144
     92c:	00803025 	move	a2,a0
     930:	304e00f0 	andi	t6,v0,0xf0
     934:	15c10003 	bne	t6,at,944 <func_80A3EE8C+0x28>
     938:	00a03825 	move	a3,a1
     93c:	1000004a 	b	a68 <func_80A3EE8C+0x14c>
     940:	24020001 	li	v0,1
     944:	84ef00a4 	lh	t7,164(a3)
     948:	24010004 	li	at,4
     94c:	00e02025 	move	a0,a3
     950:	15e10013 	bne	t7,at,9a0 <func_80A3EE8C+0x84>
     954:	00022a03 	sra	a1,v0,0x8
     958:	afa60018 	sw	a2,24(sp)
     95c:	0c000000 	jal	0 <func_80A3E570>
     960:	afa7001c 	sw	a3,28(sp)
     964:	8fa60018 	lw	a2,24(sp)
     968:	1440000d 	bnez	v0,9a0 <func_80A3EE8C+0x84>
     96c:	8fa7001c 	lw	a3,28(sp)
     970:	3c040000 	lui	a0,0x0
     974:	24840000 	addiu	a0,a0,0
     978:	8c980004 	lw	t8,4(a0)
     97c:	57000009 	bnezl	t8,9a4 <func_80A3EE8C+0x88>
     980:	84e300a4 	lh	v1,164(a3)
     984:	84d9001c 	lh	t9,28(a2)
     988:	24010010 	li	at,16
     98c:	332800f0 	andi	t0,t9,0xf0
     990:	55010004 	bnel	t0,at,9a4 <func_80A3EE8C+0x88>
     994:	84e300a4 	lh	v1,164(a3)
     998:	10000033 	b	a68 <func_80A3EE8C+0x14c>
     99c:	24020001 	li	v0,1
     9a0:	84e300a4 	lh	v1,164(a3)
     9a4:	3c040000 	lui	a0,0x0
     9a8:	24050062 	li	a1,98
     9ac:	14a3000a 	bne	a1,v1,9d8 <func_80A3EE8C+0xbc>
     9b0:	24840000 	addiu	a0,a0,0
     9b4:	8c890004 	lw	t1,4(a0)
     9b8:	55200008 	bnezl	t1,9dc <func_80A3EE8C+0xc0>
     9bc:	24070060 	li	a3,96
     9c0:	84ca001c 	lh	t2,28(a2)
     9c4:	314b00f0 	andi	t3,t2,0xf0
     9c8:	55600004 	bnezl	t3,9dc <func_80A3EE8C+0xc0>
     9cc:	24070060 	li	a3,96
     9d0:	10000025 	b	a68 <func_80A3EE8C+0x14c>
     9d4:	24020001 	li	v0,1
     9d8:	24070060 	li	a3,96
     9dc:	14e30010 	bne	a3,v1,a20 <func_80A3EE8C+0x104>
     9e0:	00000000 	nop
     9e4:	8c8c0004 	lw	t4,4(a0)
     9e8:	24010001 	li	at,1
     9ec:	1581000c 	bne	t4,at,a20 <func_80A3EE8C+0x104>
     9f0:	00000000 	nop
     9f4:	84c2001c 	lh	v0,28(a2)
     9f8:	24010020 	li	at,32
     9fc:	304200f0 	andi	v0,v0,0xf0
     a00:	10410005 	beq	v0,at,a18 <func_80A3EE8C+0xfc>
     a04:	24010030 	li	at,48
     a08:	10410003 	beq	v0,at,a18 <func_80A3EE8C+0xfc>
     a0c:	24010040 	li	at,64
     a10:	14410003 	bne	v0,at,a20 <func_80A3EE8C+0x104>
     a14:	00000000 	nop
     a18:	10000013 	b	a68 <func_80A3EE8C+0x14c>
     a1c:	24020001 	li	v0,1
     a20:	54a30011 	bnel	a1,v1,a68 <func_80A3EE8C+0x14c>
     a24:	00001025 	move	v0,zero
     a28:	8c8d0004 	lw	t5,4(a0)
     a2c:	24010001 	li	at,1
     a30:	55a1000d 	bnel	t5,at,a68 <func_80A3EE8C+0x14c>
     a34:	00001025 	move	v0,zero
     a38:	84c2001c 	lh	v0,28(a2)
     a3c:	24010050 	li	at,80
     a40:	304200f0 	andi	v0,v0,0xf0
     a44:	10410005 	beq	v0,at,a5c <func_80A3EE8C+0x140>
     a48:	00000000 	nop
     a4c:	10e20003 	beq	a3,v0,a5c <func_80A3EE8C+0x140>
     a50:	24010070 	li	at,112
     a54:	54410004 	bnel	v0,at,a68 <func_80A3EE8C+0x14c>
     a58:	00001025 	move	v0,zero
     a5c:	10000002 	b	a68 <func_80A3EE8C+0x14c>
     a60:	24020001 	li	v0,1
     a64:	00001025 	move	v0,zero
     a68:	8fbf0014 	lw	ra,20(sp)
     a6c:	27bd0018 	addiu	sp,sp,24
     a70:	03e00008 	jr	ra
     a74:	00000000 	nop

00000a78 <func_80A3EFE8>:
     a78:	8482001c 	lh	v0,28(a0)
     a7c:	304200f0 	andi	v0,v0,0xf0
     a80:	18400009 	blez	v0,aa8 <func_80A3EFE8+0x30>
     a84:	244effe0 	addiu	t6,v0,-32
     a88:	2dc10051 	sltiu	at,t6,81
     a8c:	10200013 	beqz	at,adc <L80A3F04C>
     a90:	000e7080 	sll	t6,t6,0x2
     a94:	3c010000 	lui	at,0x0
     a98:	002e0821 	addu	at,at,t6
     a9c:	8c2e0000 	lw	t6,0(at)
     aa0:	01c00008 	jr	t6
     aa4:	00000000 	nop
     aa8:	1440000c 	bnez	v0,adc <L80A3F04C>
     aac:	3c014120 	lui	at,0x4120
     ab0:	44810000 	mtc1	at,$f0
     ab4:	03e00008 	jr	ra
     ab8:	00000000 	nop

00000abc <L80A3F02C>:
     abc:	3c0141a0 	lui	at,0x41a0
     ac0:	44810000 	mtc1	at,$f0
     ac4:	03e00008 	jr	ra
     ac8:	00000000 	nop

00000acc <L80A3F03C>:
     acc:	3c014270 	lui	at,0x4270
     ad0:	44810000 	mtc1	at,$f0
     ad4:	03e00008 	jr	ra
     ad8:	00000000 	nop

00000adc <L80A3F04C>:
     adc:	3c0141a0 	lui	at,0x41a0
     ae0:	44810000 	mtc1	at,$f0
     ae4:	00000000 	nop
     ae8:	03e00008 	jr	ra
     aec:	00000000 	nop

00000af0 <func_80A3F060>:
     af0:	27bdffe0 	addiu	sp,sp,-32
     af4:	afbf0014 	sw	ra,20(sp)
     af8:	8c820190 	lw	v0,400(a0)
     afc:	3c0e0000 	lui	t6,0x0
     b00:	25ce0000 	addiu	t6,t6,0
     b04:	11c20009 	beq	t6,v0,b2c <func_80A3F060+0x3c>
     b08:	8ca31c44 	lw	v1,7236(a1)
     b0c:	3c0f0000 	lui	t7,0x0
     b10:	25ef0000 	addiu	t7,t7,0
     b14:	11e20005 	beq	t7,v0,b2c <func_80A3F060+0x3c>
     b18:	3c180000 	lui	t8,0x0
     b1c:	27180000 	addiu	t8,t8,0
     b20:	13020002 	beq	t8,v0,b2c <func_80A3F060+0x3c>
     b24:	24190001 	li	t9,1
     b28:	a7b9001a 	sh	t9,26(sp)
     b2c:	8c690024 	lw	t1,36(v1)
     b30:	ac8901f8 	sw	t1,504(a0)
     b34:	8c680028 	lw	t0,40(v1)
     b38:	ac8801fc 	sw	t0,508(a0)
     b3c:	8c69002c 	lw	t1,44(v1)
     b40:	ac890200 	sw	t1,512(a0)
     b44:	0c000000 	jal	0 <func_80A3E570>
     b48:	afa40020 	sw	a0,32(sp)
     b4c:	8fa40020 	lw	a0,32(sp)
     b50:	24060004 	li	a2,4
     b54:	e48001f4 	swc1	$f0,500(a0)
     b58:	87a7001a 	lh	a3,26(sp)
     b5c:	0c000000 	jal	0 <func_80A3E570>
     b60:	248501e0 	addiu	a1,a0,480
     b64:	8fbf0014 	lw	ra,20(sp)
     b68:	27bd0020 	addiu	sp,sp,32
     b6c:	03e00008 	jr	ra
     b70:	00000000 	nop

00000b74 <func_80A3F0E4>:
     b74:	27bdffe8 	addiu	sp,sp,-24
     b78:	afbf0014 	sw	ra,20(sp)
     b7c:	84820214 	lh	v0,532(a0)
     b80:	00803025 	move	a2,a0
     b84:	14400003 	bnez	v0,b94 <func_80A3F0E4+0x20>
     b88:	244effff 	addiu	t6,v0,-1
     b8c:	10000003 	b	b9c <func_80A3F0E4+0x28>
     b90:	00001825 	move	v1,zero
     b94:	a4ce0214 	sh	t6,532(a2)
     b98:	84c30214 	lh	v1,532(a2)
     b9c:	54600010 	bnezl	v1,be0 <func_80A3F0E4+0x6c>
     ba0:	8fbf0014 	lw	ra,20(sp)
     ba4:	84cf0216 	lh	t7,534(a2)
     ba8:	2404001e 	li	a0,30
     bac:	2405001e 	li	a1,30
     bb0:	25f80001 	addiu	t8,t7,1
     bb4:	a4d80216 	sh	t8,534(a2)
     bb8:	84d90216 	lh	t9,534(a2)
     bbc:	2b210003 	slti	at,t9,3
     bc0:	54200007 	bnezl	at,be0 <func_80A3F0E4+0x6c>
     bc4:	8fbf0014 	lw	ra,20(sp)
     bc8:	0c000000 	jal	0 <func_80A3E570>
     bcc:	afa60018 	sw	a2,24(sp)
     bd0:	8fa60018 	lw	a2,24(sp)
     bd4:	a4c20214 	sh	v0,532(a2)
     bd8:	a4c00216 	sh	zero,534(a2)
     bdc:	8fbf0014 	lw	ra,20(sp)
     be0:	27bd0018 	addiu	sp,sp,24
     be4:	03e00008 	jr	ra
     be8:	00000000 	nop

00000bec <func_80A3F15C>:
     bec:	27bdffd8 	addiu	sp,sp,-40
     bf0:	afbf0014 	sw	ra,20(sp)
     bf4:	848f00b6 	lh	t7,182(a0)
     bf8:	848e008a 	lh	t6,138(a0)
     bfc:	3c010000 	lui	at,0x0
     c00:	c4260000 	lwc1	$f6,0(at)
     c04:	01cf1023 	subu	v0,t6,t7
     c08:	00021400 	sll	v0,v0,0x10
     c0c:	00021403 	sra	v0,v0,0x10
     c10:	44822000 	mtc1	v0,$f4
     c14:	00803025 	move	a2,a0
     c18:	8ca70790 	lw	a3,1936(a1)
     c1c:	46802020 	cvt.s.w	$f0,$f4
     c20:	3c010000 	lui	at,0x0
     c24:	46000005 	abs.s	$f0,$f0
     c28:	4600303c 	c.lt.s	$f6,$f0
     c2c:	00000000 	nop
     c30:	45020004 	bc1fl	c44 <func_80A3F15C+0x58>
     c34:	c4c80050 	lwc1	$f8,80(a2)
     c38:	10000029 	b	ce0 <func_80A3F15C+0xf4>
     c3c:	00001025 	move	v0,zero
     c40:	c4c80050 	lwc1	$f8,80(a2)
     c44:	c42a0000 	lwc1	$f10,0(at)
     c48:	3c010000 	lui	at,0x0
     c4c:	c4320000 	lwc1	$f18,0(at)
     c50:	460a4403 	div.s	$f16,$f8,$f10
     c54:	84d8001c 	lh	t8,28(a2)
     c58:	24010090 	li	at,144
     c5c:	00e02025 	move	a0,a3
     c60:	331900f0 	andi	t9,t8,0xf0
     c64:	2405003f 	li	a1,63
     c68:	46128082 	mul.s	$f2,$f16,$f18
     c6c:	5721000d 	bnel	t9,at,ca4 <func_80A3F15C+0xb8>
     c70:	c4c0008c 	lwc1	$f0,140(a2)
     c74:	afa60028 	sw	a2,40(sp)
     c78:	afa7001c 	sw	a3,28(sp)
     c7c:	0c000000 	jal	0 <func_80A3E570>
     c80:	e7a20024 	swc1	$f2,36(sp)
     c84:	3c010000 	lui	at,0x0
     c88:	c7a20024 	lwc1	$f2,36(sp)
     c8c:	c4240000 	lwc1	$f4,0(at)
     c90:	8fa60028 	lw	a2,40(sp)
     c94:	8fa7001c 	lw	a3,28(sp)
     c98:	46041082 	mul.s	$f2,$f2,$f4
     c9c:	00000000 	nop
     ca0:	c4c0008c 	lwc1	$f0,140(a2)
     ca4:	24020001 	li	v0,1
     ca8:	46000005 	abs.s	$f0,$f0
     cac:	4600103c 	c.lt.s	$f2,$f0
     cb0:	00000000 	nop
     cb4:	4500000a 	bc1f	ce0 <func_80A3F15C+0xf4>
     cb8:	00000000 	nop
     cbc:	84e80142 	lh	t0,322(a3)
     cc0:	2401003f 	li	at,63
     cc4:	00e02025 	move	a0,a3
     cc8:	15010003 	bne	t0,at,cd8 <func_80A3F15C+0xec>
     ccc:	00000000 	nop
     cd0:	0c000000 	jal	0 <func_80A3E570>
     cd4:	24050001 	li	a1,1
     cd8:	10000001 	b	ce0 <func_80A3F15C+0xf4>
     cdc:	00001025 	move	v0,zero
     ce0:	8fbf0014 	lw	ra,20(sp)
     ce4:	27bd0028 	addiu	sp,sp,40
     ce8:	03e00008 	jr	ra
     cec:	00000000 	nop

00000cf0 <func_80A3F260>:
     cf0:	c4800158 	lwc1	$f0,344(a0)
     cf4:	c484015c 	lwc1	$f4,348(a0)
     cf8:	e480015c 	swc1	$f0,348(a0)
     cfc:	03e00008 	jr	ra
     d00:	e4840158 	swc1	$f4,344(a0)

00000d04 <func_80A3F274>:
     d04:	27bdffd0 	addiu	sp,sp,-48
     d08:	afbf001c 	sw	ra,28(sp)
     d0c:	afa40030 	sw	a0,48(sp)
     d10:	8c820154 	lw	v0,340(a0)
     d14:	3c030600 	lui	v1,0x600
     d18:	24634930 	addiu	v1,v1,18736
     d1c:	14620008 	bne	v1,v0,d40 <func_80A3F274+0x3c>
     d20:	c4800164 	lwc1	$f0,356(a0)
     d24:	3c014200 	lui	at,0x4200
     d28:	44812000 	mtc1	at,$f4
     d2c:	00000000 	nop
     d30:	4600203c 	c.lt.s	$f4,$f0
     d34:	00000000 	nop
     d38:	45010003 	bc1t	d48 <func_80A3F274+0x44>
     d3c:	00000000 	nop
     d40:	10620003 	beq	v1,v0,d50 <func_80A3F274+0x4c>
     d44:	00002825 	move	a1,zero
     d48:	10000001 	b	d50 <func_80A3F274+0x4c>
     d4c:	240500ff 	li	a1,255
     d50:	8faf0030 	lw	t7,48(sp)
     d54:	24190001 	li	t9,1
     d58:	27a4002e 	addiu	a0,sp,46
     d5c:	91f800c8 	lbu	t8,200(t7)
     d60:	afb90010 	sw	t9,16(sp)
     d64:	2406000a 	li	a2,10
     d68:	2407003c 	li	a3,60
     d6c:	0c000000 	jal	0 <func_80A3E570>
     d70:	a7b8002e 	sh	t8,46(sp)
     d74:	87a8002e 	lh	t0,46(sp)
     d78:	8fa90030 	lw	t1,48(sp)
     d7c:	a12800c8 	sb	t0,200(t1)
     d80:	8fbf001c 	lw	ra,28(sp)
     d84:	27bd0030 	addiu	sp,sp,48
     d88:	03e00008 	jr	ra
     d8c:	00000000 	nop

00000d90 <func_80A3F300>:
     d90:	27bdffc8 	addiu	sp,sp,-56
     d94:	afbf0024 	sw	ra,36(sp)
     d98:	afb00020 	sw	s0,32(sp)
     d9c:	afa5003c 	sw	a1,60(sp)
     da0:	8486001c 	lh	a2,28(a0)
     da4:	2401000f 	li	at,15
     da8:	00808025 	move	s0,a0
     dac:	30c6000f 	andi	a2,a2,0xf
     db0:	14c10003 	bne	a2,at,dc0 <func_80A3F300+0x30>
     db4:	8fae003c 	lw	t6,60(sp)
     db8:	1000005f 	b	f38 <func_80A3F300+0x1a8>
     dbc:	00001025 	move	v0,zero
     dc0:	3c0f0001 	lui	t7,0x1
     dc4:	01ee7821 	addu	t7,t7,t6
     dc8:	8def1e08 	lw	t7,7688(t7)
     dcc:	0006c0c0 	sll	t8,a2,0x3
     dd0:	3c0a0000 	lui	t2,0x0
     dd4:	01f82021 	addu	a0,t7,t8
     dd8:	8c830004 	lw	v1,4(a0)
     ddc:	860c0218 	lh	t4,536(s0)
     de0:	3c0100ff 	lui	at,0xff
     de4:	0003c900 	sll	t9,v1,0x4
     de8:	00194702 	srl	t0,t9,0x1c
     dec:	00084880 	sll	t1,t0,0x2
     df0:	01495021 	addu	t2,t2,t1
     df4:	8d4a0000 	lw	t2,0(t2)
     df8:	3421ffff 	ori	at,at,0xffff
     dfc:	00615824 	and	t3,v1,at
     e00:	000c6880 	sll	t5,t4,0x2
     e04:	3c018000 	lui	at,0x8000
     e08:	01ac6823 	subu	t5,t5,t4
     e0c:	014b1021 	addu	v0,t2,t3
     e10:	00411021 	addu	v0,v0,at
     e14:	000d6840 	sll	t5,t5,0x1
     e18:	004d1021 	addu	v0,v0,t5
     e1c:	844e0000 	lh	t6,0(v0)
     e20:	844f0004 	lh	t7,4(v0)
     e24:	c6080024 	lwc1	$f8,36(s0)
     e28:	448e2000 	mtc1	t6,$f4
     e2c:	448f5000 	mtc1	t7,$f10
     e30:	c612002c 	lwc1	$f18,44(s0)
     e34:	468021a0 	cvt.s.w	$f6,$f4
     e38:	afa40034 	sw	a0,52(sp)
     e3c:	46805420 	cvt.s.w	$f16,$f10
     e40:	46083301 	sub.s	$f12,$f6,$f8
     e44:	46128381 	sub.s	$f14,$f16,$f18
     e48:	e7ac002c 	swc1	$f12,44(sp)
     e4c:	0c000000 	jal	0 <func_80A3E570>
     e50:	e7ae0028 	swc1	$f14,40(sp)
     e54:	3c010000 	lui	at,0x0
     e58:	c4240000 	lwc1	$f4,0(at)
     e5c:	24190001 	li	t9,1
     e60:	afb90010 	sw	t9,16(sp)
     e64:	46040182 	mul.s	$f6,$f0,$f4
     e68:	26040032 	addiu	a0,s0,50
     e6c:	2406000a 	li	a2,10
     e70:	240703e8 	li	a3,1000
     e74:	4600320d 	trunc.w.s	$f8,$f6
     e78:	44054000 	mfc1	a1,$f8
     e7c:	00000000 	nop
     e80:	00052c00 	sll	a1,a1,0x10
     e84:	0c000000 	jal	0 <func_80A3E570>
     e88:	00052c03 	sra	a1,a1,0x10
     e8c:	c7ac002c 	lwc1	$f12,44(sp)
     e90:	c7ae0028 	lwc1	$f14,40(sp)
     e94:	3c014416 	lui	at,0x4416
     e98:	460c6282 	mul.s	$f10,$f12,$f12
     e9c:	44812000 	mtc1	at,$f4
     ea0:	00001025 	move	v0,zero
     ea4:	460e7402 	mul.s	$f16,$f14,$f14
     ea8:	46105480 	add.s	$f18,$f10,$f16
     eac:	4604903c 	c.lt.s	$f18,$f4
     eb0:	00000000 	nop
     eb4:	45000020 	bc1f	f38 <func_80A3F300+0x1a8>
     eb8:	00000000 	nop
     ebc:	86080218 	lh	t0,536(s0)
     ec0:	25090001 	addiu	t1,t0,1
     ec4:	a6090218 	sh	t1,536(s0)
     ec8:	8fab0034 	lw	t3,52(sp)
     ecc:	860a0218 	lh	t2,536(s0)
     ed0:	916c0000 	lbu	t4,0(t3)
     ed4:	014c082a 	slt	at,t2,t4
     ed8:	54200003 	bnezl	at,ee8 <func_80A3F300+0x158>
     edc:	8602001c 	lh	v0,28(s0)
     ee0:	a6000218 	sh	zero,536(s0)
     ee4:	8602001c 	lh	v0,28(s0)
     ee8:	8fa4003c 	lw	a0,60(sp)
     eec:	304d00f0 	andi	t5,v0,0xf0
     ef0:	11a00003 	beqz	t5,f00 <func_80A3F300+0x170>
     ef4:	00000000 	nop
     ef8:	1000000f 	b	f38 <func_80A3F300+0x1a8>
     efc:	24020001 	li	v0,1
     f00:	0c000000 	jal	0 <func_80A3E570>
     f04:	00022a03 	sra	a1,v0,0x8
     f08:	50400004 	beqzl	v0,f1c <func_80A3F300+0x18c>
     f0c:	860e0218 	lh	t6,536(s0)
     f10:	10000009 	b	f38 <func_80A3F300+0x1a8>
     f14:	24020001 	li	v0,1
     f18:	860e0218 	lh	t6,536(s0)
     f1c:	860f00b8 	lh	t7,184(s0)
     f20:	01cf082a 	slt	at,t6,t7
     f24:	14200002 	bnez	at,f30 <func_80A3F300+0x1a0>
     f28:	00000000 	nop
     f2c:	a6000218 	sh	zero,536(s0)
     f30:	10000001 	b	f38 <func_80A3F300+0x1a8>
     f34:	24020001 	li	v0,1
     f38:	8fbf0024 	lw	ra,36(sp)
     f3c:	8fb00020 	lw	s0,32(sp)
     f40:	27bd0038 	addiu	sp,sp,56
     f44:	03e00008 	jr	ra
     f48:	00000000 	nop

00000f4c <func_80A3F4BC>:
     f4c:	8483001c 	lh	v1,28(a0)
     f50:	2401000f 	li	at,15
     f54:	00a03025 	move	a2,a1
     f58:	3063000f 	andi	v1,v1,0xf
     f5c:	14610003 	bne	v1,at,f6c <func_80A3F4BC+0x20>
     f60:	3c0e0001 	lui	t6,0x1
     f64:	03e00008 	jr	ra
     f68:	00001025 	move	v0,zero
     f6c:	01c67021 	addu	t6,t6,a2
     f70:	8dce1e08 	lw	t6,7688(t6)
     f74:	000378c0 	sll	t7,v1,0x3
     f78:	3c0a0000 	lui	t2,0x0
     f7c:	01cf2821 	addu	a1,t6,t7
     f80:	8ca80004 	lw	t0,4(a1)
     f84:	90ac0000 	lbu	t4,0(a1)
     f88:	3c0100ff 	lui	at,0xff
     f8c:	0008c100 	sll	t8,t0,0x4
     f90:	0018cf02 	srl	t9,t8,0x1c
     f94:	00194880 	sll	t1,t9,0x2
     f98:	01495021 	addu	t2,t2,t1
     f9c:	8d4a0000 	lw	t2,0(t2)
     fa0:	3421ffff 	ori	at,at,0xffff
     fa4:	01015824 	and	t3,t0,at
     fa8:	000c6880 	sll	t5,t4,0x2
     fac:	3c018000 	lui	at,0x8000
     fb0:	01ac6823 	subu	t5,t5,t4
     fb4:	014b3821 	addu	a3,t2,t3
     fb8:	00e13821 	addu	a3,a3,at
     fbc:	000d6840 	sll	t5,t5,0x1
     fc0:	00ed3821 	addu	a3,a3,t5
     fc4:	84eefffa 	lh	t6,-6(a3)
     fc8:	24e7fffa 	addiu	a3,a3,-6
     fcc:	24020001 	li	v0,1
     fd0:	448e2000 	mtc1	t6,$f4
     fd4:	00000000 	nop
     fd8:	468021a0 	cvt.s.w	$f6,$f4
     fdc:	e4860024 	swc1	$f6,36(a0)
     fe0:	84ef0002 	lh	t7,2(a3)
     fe4:	8c890024 	lw	t1,36(a0)
     fe8:	448f4000 	mtc1	t7,$f8
     fec:	00000000 	nop
     ff0:	468042a0 	cvt.s.w	$f10,$f8
     ff4:	e48a0028 	swc1	$f10,40(a0)
     ff8:	84f80004 	lh	t8,4(a3)
     ffc:	ac890008 	sw	t1,8(a0)
    1000:	8c990028 	lw	t9,40(a0)
    1004:	44988000 	mtc1	t8,$f16
    1008:	ac99000c 	sw	t9,12(a0)
    100c:	468084a0 	cvt.s.w	$f18,$f16
    1010:	e492002c 	swc1	$f18,44(a0)
    1014:	8c89002c 	lw	t1,44(a0)
    1018:	ac890010 	sw	t1,16(a0)
    101c:	03e00008 	jr	ra
    1020:	00000000 	nop

00001024 <func_80A3F594>:
    1024:	27bdff60 	addiu	sp,sp,-160
    1028:	3c0e0000 	lui	t6,0x0
    102c:	afbf006c 	sw	ra,108(sp)
    1030:	afb70068 	sw	s7,104(sp)
    1034:	afb60064 	sw	s6,100(sp)
    1038:	afb50060 	sw	s5,96(sp)
    103c:	afb4005c 	sw	s4,92(sp)
    1040:	afb30058 	sw	s3,88(sp)
    1044:	afb20054 	sw	s2,84(sp)
    1048:	afb10050 	sw	s1,80(sp)
    104c:	afb0004c 	sw	s0,76(sp)
    1050:	f7bc0040 	sdc1	$f28,64(sp)
    1054:	f7ba0038 	sdc1	$f26,56(sp)
    1058:	f7b80030 	sdc1	$f24,48(sp)
    105c:	f7b60028 	sdc1	$f22,40(sp)
    1060:	f7b40020 	sdc1	$f20,32(sp)
    1064:	afa500a4 	sw	a1,164(sp)
    1068:	25ce0000 	addiu	t6,t6,0
    106c:	8dd80000 	lw	t8,0(t6)
    1070:	27b40094 	addiu	s4,sp,148
    1074:	3c190000 	lui	t9,0x0
    1078:	ae980000 	sw	t8,0(s4)
    107c:	8dcf0004 	lw	t7,4(t6)
    1080:	27390000 	addiu	t9,t9,0
    1084:	27b60088 	addiu	s6,sp,136
    1088:	ae8f0004 	sw	t7,4(s4)
    108c:	8dd80008 	lw	t8,8(t6)
    1090:	3c0a0000 	lui	t2,0x0
    1094:	254a0000 	addiu	t2,t2,0
    1098:	ae980008 	sw	t8,8(s4)
    109c:	8f290000 	lw	t1,0(t9)
    10a0:	27b7007c 	addiu	s7,sp,124
    10a4:	4486d000 	mtc1	a2,$f26
    10a8:	aec90000 	sw	t1,0(s6)
    10ac:	8f280004 	lw	t0,4(t9)
    10b0:	4487e000 	mtc1	a3,$f28
    10b4:	00808825 	move	s1,a0
    10b8:	aec80004 	sw	t0,4(s6)
    10bc:	8f290008 	lw	t1,8(t9)
    10c0:	30b500ff 	andi	s5,a1,0xff
    10c4:	aec90008 	sw	t1,8(s6)
    10c8:	8d4c0000 	lw	t4,0(t2)
    10cc:	aeec0000 	sw	t4,0(s7)
    10d0:	8d4b0004 	lw	t3,4(t2)
    10d4:	aeeb0004 	sw	t3,4(s7)
    10d8:	8d4c0008 	lw	t4,8(t2)
    10dc:	aeec0008 	sw	t4,8(s7)
    10e0:	8c8e0024 	lw	t6,36(a0)
    10e4:	ae8e0000 	sw	t6,0(s4)
    10e8:	8c8d0028 	lw	t5,40(a0)
    10ec:	ae8d0004 	sw	t5,4(s4)
    10f0:	8c8e002c 	lw	t6,44(a0)
    10f4:	ae8e0008 	sw	t6,8(s4)
    10f8:	c4840080 	lwc1	$f4,128(a0)
    10fc:	0c000000 	jal	0 <func_80A3E570>
    1100:	e7a40098 	swc1	$f4,152(sp)
    1104:	3c013f00 	lui	at,0x3f00
    1108:	4481c000 	mtc1	at,$f24
    110c:	3c014780 	lui	at,0x4780
    1110:	44814000 	mtc1	at,$f8
    1114:	46180181 	sub.s	$f6,$f0,$f24
    1118:	8fa200b0 	lw	v0,176(sp)
    111c:	3c180001 	lui	t8,0x1
    1120:	c7b600b4 	lwc1	$f22,180(sp)
    1124:	46083282 	mul.s	$f10,$f6,$f8
    1128:	c7b400b8 	lwc1	$f20,184(sp)
    112c:	00409025 	move	s2,v0
    1130:	4600540d 	trunc.w.s	$f16,$f10
    1134:	44108000 	mfc1	s0,$f16
    1138:	00000000 	nop
    113c:	00108400 	sll	s0,s0,0x10
    1140:	04400032 	bltz	v0,120c <func_80A3F594+0x1e8>
    1144:	00108403 	sra	s0,s0,0x10
    1148:	0302001a 	div	zero,t8,v0
    114c:	00009812 	mflo	s3
    1150:	00139c00 	sll	s3,s3,0x10
    1154:	00139c03 	sra	s3,s3,0x10
    1158:	14400002 	bnez	v0,1164 <func_80A3F594+0x140>
    115c:	00000000 	nop
    1160:	0007000d 	break	0x7
    1164:	2401ffff 	li	at,-1
    1168:	14410004 	bne	v0,at,117c <func_80A3F594+0x158>
    116c:	3c018000 	lui	at,0x8000
    1170:	17010002 	bne	t8,at,117c <func_80A3F594+0x158>
    1174:	00000000 	nop
    1178:	0006000d 	break	0x6
    117c:	0c000000 	jal	0 <func_80A3E570>
    1180:	00000000 	nop
    1184:	46180481 	sub.s	$f18,$f0,$f24
    1188:	46149102 	mul.s	$f4,$f18,$f20
    118c:	0c000000 	jal	0 <func_80A3E570>
    1190:	e7a4007c 	swc1	$f4,124(sp)
    1194:	46180181 	sub.s	$f6,$f0,$f24
    1198:	00102400 	sll	a0,s0,0x10
    119c:	00042403 	sra	a0,a0,0x10
    11a0:	46143202 	mul.s	$f8,$f6,$f20
    11a4:	0c000000 	jal	0 <func_80A3E570>
    11a8:	e7a80084 	swc1	$f8,132(sp)
    11ac:	46160282 	mul.s	$f10,$f0,$f22
    11b0:	c6300024 	lwc1	$f16,36(s1)
    11b4:	00102400 	sll	a0,s0,0x10
    11b8:	00042403 	sra	a0,a0,0x10
    11bc:	46105480 	add.s	$f18,$f10,$f16
    11c0:	0c000000 	jal	0 <func_80A3E570>
    11c4:	e7b20094 	swc1	$f18,148(sp)
    11c8:	46160102 	mul.s	$f4,$f0,$f22
    11cc:	c626002c 	lwc1	$f6,44(s1)
    11d0:	e7bc0018 	swc1	$f28,24(sp)
    11d4:	e7ba0014 	swc1	$f26,20(sp)
    11d8:	afb50010 	sw	s5,16(sp)
    11dc:	02202025 	move	a0,s1
    11e0:	02802825 	move	a1,s4
    11e4:	46062200 	add.s	$f8,$f4,$f6
    11e8:	02c03025 	move	a2,s6
    11ec:	02e03825 	move	a3,s7
    11f0:	0c000000 	jal	0 <func_80A3E570>
    11f4:	e7a8009c 	swc1	$f8,156(sp)
    11f8:	02138021 	addu	s0,s0,s3
    11fc:	00108400 	sll	s0,s0,0x10
    1200:	2652ffff 	addiu	s2,s2,-1
    1204:	0641ffdd 	bgez	s2,117c <func_80A3F594+0x158>
    1208:	00108403 	sra	s0,s0,0x10
    120c:	8fbf006c 	lw	ra,108(sp)
    1210:	d7b40020 	ldc1	$f20,32(sp)
    1214:	d7b60028 	ldc1	$f22,40(sp)
    1218:	d7b80030 	ldc1	$f24,48(sp)
    121c:	d7ba0038 	ldc1	$f26,56(sp)
    1220:	d7bc0040 	ldc1	$f28,64(sp)
    1224:	8fb0004c 	lw	s0,76(sp)
    1228:	8fb10050 	lw	s1,80(sp)
    122c:	8fb20054 	lw	s2,84(sp)
    1230:	8fb30058 	lw	s3,88(sp)
    1234:	8fb4005c 	lw	s4,92(sp)
    1238:	8fb50060 	lw	s5,96(sp)
    123c:	8fb60064 	lw	s6,100(sp)
    1240:	8fb70068 	lw	s7,104(sp)
    1244:	27bd00a0 	addiu	sp,sp,160
    1248:	03e00008 	jr	ra
    124c:	00001025 	move	v0,zero

00001250 <func_80A3F7C0>:
    1250:	27bdffe8 	addiu	sp,sp,-24
    1254:	afbf0014 	sw	ra,20(sp)
    1258:	afa40018 	sw	a0,24(sp)
    125c:	afa5001c 	sw	a1,28(sp)
    1260:	948e0088 	lhu	t6,136(a0)
    1264:	00052c00 	sll	a1,a1,0x10
    1268:	44866000 	mtc1	a2,$f12
    126c:	31cf0001 	andi	t7,t6,0x1
    1270:	00803025 	move	a2,a0
    1274:	11e00007 	beqz	t7,1294 <func_80A3F7C0+0x44>
    1278:	00052c03 	sra	a1,a1,0x10
    127c:	44802000 	mtc1	zero,$f4
    1280:	c4860060 	lwc1	$f6,96(a0)
    1284:	4606203c 	c.lt.s	$f4,$f6
    1288:	00000000 	nop
    128c:	45020004 	bc1fl	12a0 <func_80A3F7C0+0x50>
    1290:	84d801e0 	lh	t8,480(a2)
    1294:	1000003c 	b	1388 <func_80A3F7C0+0x138>
    1298:	00001025 	move	v0,zero
    129c:	84d801e0 	lh	t8,480(a2)
    12a0:	53000004 	beqzl	t8,12b4 <func_80A3F7C0+0x64>
    12a4:	84c2021c 	lh	v0,540(a2)
    12a8:	10000037 	b	1388 <func_80A3F7C0+0x138>
    12ac:	24020001 	li	v0,1
    12b0:	84c2021c 	lh	v0,540(a2)
    12b4:	14400003 	bnez	v0,12c4 <func_80A3F7C0+0x74>
    12b8:	2459ffff 	addiu	t9,v0,-1
    12bc:	10000004 	b	12d0 <func_80A3F7C0+0x80>
    12c0:	00001825 	move	v1,zero
    12c4:	a4d9021c 	sh	t9,540(a2)
    12c8:	84c2021c 	lh	v0,540(a2)
    12cc:	00401825 	move	v1,v0
    12d0:	10600011 	beqz	v1,1318 <func_80A3F7C0+0xc8>
    12d4:	30480001 	andi	t0,v0,0x1
    12d8:	11000008 	beqz	t0,12fc <func_80A3F7C0+0xac>
    12dc:	3c013fc0 	lui	at,0x3fc0
    12e0:	3c013fc0 	lui	at,0x3fc0
    12e4:	44815000 	mtc1	at,$f10
    12e8:	c4c80028 	lwc1	$f8,40(a2)
    12ec:	24020001 	li	v0,1
    12f0:	460a4400 	add.s	$f16,$f8,$f10
    12f4:	10000024 	b	1388 <func_80A3F7C0+0x138>
    12f8:	e4d00028 	swc1	$f16,40(a2)
    12fc:	c4d20028 	lwc1	$f18,40(a2)
    1300:	44812000 	mtc1	at,$f4
    1304:	00000000 	nop
    1308:	46049181 	sub.s	$f6,$f18,$f4
    130c:	e4c60028 	swc1	$f6,40(a2)
    1310:	1000001d 	b	1388 <func_80A3F7C0+0x138>
    1314:	24020001 	li	v0,1
    1318:	84c9021a 	lh	t1,538(a2)
    131c:	252affff 	addiu	t2,t1,-1
    1320:	a4ca021a 	sh	t2,538(a2)
    1324:	84c3021a 	lh	v1,538(a2)
    1328:	5c600010 	bgtzl	v1,136c <func_80A3F7C0+0x11c>
    132c:	44835000 	mtc1	v1,$f10
    1330:	1460000b 	bnez	v1,1360 <func_80A3F7C0+0x110>
    1334:	2404003c 	li	a0,60
    1338:	2405001e 	li	a1,30
    133c:	0c000000 	jal	0 <func_80A3E570>
    1340:	afa60018 	sw	a2,24(sp)
    1344:	8fa60018 	lw	a2,24(sp)
    1348:	44804000 	mtc1	zero,$f8
    134c:	a4c2021c 	sh	v0,540(a2)
    1350:	24020001 	li	v0,1
    1354:	a4c0021a 	sh	zero,538(a2)
    1358:	1000000b 	b	1388 <func_80A3F7C0+0x138>
    135c:	e4c80060 	swc1	$f8,96(a2)
    1360:	a4c5021a 	sh	a1,538(a2)
    1364:	84c3021a 	lh	v1,538(a2)
    1368:	44835000 	mtc1	v1,$f10
    136c:	44859000 	mtc1	a1,$f18
    1370:	24020001 	li	v0,1
    1374:	46805420 	cvt.s.w	$f16,$f10
    1378:	46809120 	cvt.s.w	$f4,$f18
    137c:	46048183 	div.s	$f6,$f16,$f4
    1380:	460c3202 	mul.s	$f8,$f6,$f12
    1384:	e4c80060 	swc1	$f8,96(a2)
    1388:	8fbf0014 	lw	ra,20(sp)
    138c:	27bd0018 	addiu	sp,sp,24
    1390:	03e00008 	jr	ra
    1394:	00000000 	nop

00001398 <func_80A3F908>:
    1398:	27bdffd0 	addiu	sp,sp,-48
    139c:	afbf0024 	sw	ra,36(sp)
    13a0:	afb00020 	sw	s0,32(sp)
    13a4:	afa50034 	sw	a1,52(sp)
    13a8:	8caf1c44 	lw	t7,7236(a1)
    13ac:	3c180000 	lui	t8,0x0
    13b0:	27180000 	addiu	t8,t8,0
    13b4:	afaf002c 	sw	t7,44(sp)
    13b8:	8c820190 	lw	v0,400(a0)
    13bc:	3c190000 	lui	t9,0x0
    13c0:	00808025 	move	s0,a0
    13c4:	13020014 	beq	t8,v0,1418 <func_80A3F908+0x80>
    13c8:	27390000 	addiu	t9,t9,0
    13cc:	13220012 	beq	t9,v0,1418 <func_80A3F908+0x80>
    13d0:	3c080000 	lui	t0,0x0
    13d4:	25080000 	addiu	t0,t0,0
    13d8:	1102000f 	beq	t0,v0,1418 <func_80A3F908+0x80>
    13dc:	3c090000 	lui	t1,0x0
    13e0:	25290000 	addiu	t1,t1,0
    13e4:	1122000c 	beq	t1,v0,1418 <func_80A3F908+0x80>
    13e8:	3c0a0000 	lui	t2,0x0
    13ec:	254a0000 	addiu	t2,t2,0
    13f0:	11420009 	beq	t2,v0,1418 <func_80A3F908+0x80>
    13f4:	3c0b0000 	lui	t3,0x0
    13f8:	256b0000 	addiu	t3,t3,0
    13fc:	11620006 	beq	t3,v0,1418 <func_80A3F908+0x80>
    1400:	3c0c0000 	lui	t4,0x0
    1404:	258c0000 	addiu	t4,t4,0
    1408:	11820003 	beq	t4,v0,1418 <func_80A3F908+0x80>
    140c:	3c0d0000 	lui	t5,0x0
    1410:	25ad0000 	addiu	t5,t5,0
    1414:	15a20064 	bne	t5,v0,15a8 <func_80A3F908+0x210>
    1418:	3c0141f0 	lui	at,0x41f0
    141c:	44814000 	mtc1	at,$f8
    1420:	3c010000 	lui	at,0x0
    1424:	c4300000 	lwc1	$f16,0(at)
    1428:	c60a0050 	lwc1	$f10,80(s0)
    142c:	860e01d4 	lh	t6,468(s0)
    1430:	8602001c 	lh	v0,28(s0)
    1434:	46105483 	div.s	$f18,$f10,$f16
    1438:	448e2000 	mtc1	t6,$f4
    143c:	24030090 	li	v1,144
    1440:	3c0f0000 	lui	t7,0x0
    1444:	468021a0 	cvt.s.w	$f6,$f4
    1448:	3c180000 	lui	t8,0x0
    144c:	3c190000 	lui	t9,0x0
    1450:	3c080000 	lui	t0,0x0
    1454:	304200f0 	andi	v0,v0,0xf0
    1458:	3c010000 	lui	at,0x0
    145c:	27180000 	addiu	t8,t8,0
    1460:	25ef0000 	addiu	t7,t7,0
    1464:	25080000 	addiu	t0,t0,0
    1468:	27390000 	addiu	t9,t9,0
    146c:	8fa40034 	lw	a0,52(sp)
    1470:	02002825 	move	a1,s0
    1474:	260601e0 	addiu	a2,s0,480
    1478:	46083000 	add.s	$f0,$f6,$f8
    147c:	46120002 	mul.s	$f0,$f0,$f18
    1480:	14620004 	bne	v1,v0,1494 <func_80A3F908+0xfc>
    1484:	00000000 	nop
    1488:	c4240000 	lwc1	$f4,0(at)
    148c:	46040002 	mul.s	$f0,$f0,$f4
    1490:	00000000 	nop
    1494:	5462000b 	bnel	v1,v0,14c4 <func_80A3F908+0x12c>
    1498:	44070000 	mfc1	a3,$f0
    149c:	44070000 	mfc1	a3,$f0
    14a0:	8fa40034 	lw	a0,52(sp)
    14a4:	02002825 	move	a1,s0
    14a8:	260601e0 	addiu	a2,s0,480
    14ac:	afaf0010 	sw	t7,16(sp)
    14b0:	0c000000 	jal	0 <func_80A3E570>
    14b4:	afb80014 	sw	t8,20(sp)
    14b8:	10000006 	b	14d4 <func_80A3F908+0x13c>
    14bc:	8609001c 	lh	t1,28(s0)
    14c0:	44070000 	mfc1	a3,$f0
    14c4:	afb90010 	sw	t9,16(sp)
    14c8:	0c000000 	jal	0 <func_80A3E570>
    14cc:	afa80014 	sw	t0,20(sp)
    14d0:	8609001c 	lh	t1,28(s0)
    14d4:	24010090 	li	at,144
    14d8:	312a00f0 	andi	t2,t1,0xf0
    14dc:	15410032 	bne	t2,at,15a8 <func_80A3F908+0x210>
    14e0:	24010001 	li	at,1
    14e4:	14410030 	bne	v0,at,15a8 <func_80A3F908+0x210>
    14e8:	3c0b0000 	lui	t3,0x0
    14ec:	916b002d 	lbu	t3,45(t3)
    14f0:	3c020000 	lui	v0,0x0
    14f4:	24010033 	li	at,51
    14f8:	004b1021 	addu	v0,v0,t3
    14fc:	90420074 	lbu	v0,116(v0)
    1500:	5441001b 	bnel	v0,at,1570 <func_80A3F908+0x1d8>
    1504:	24010036 	li	at,54
    1508:	0c000000 	jal	0 <func_80A3E570>
    150c:	8fa40034 	lw	a0,52(sp)
    1510:	2401000b 	li	at,11
    1514:	1441000c 	bne	v0,at,1548 <func_80A3F908+0x1b0>
    1518:	24183053 	li	t8,12371
    151c:	3c0c0000 	lui	t4,0x0
    1520:	958c0f0e 	lhu	t4,3854(t4)
    1524:	240e3055 	li	t6,12373
    1528:	240f3054 	li	t7,12372
    152c:	318d0010 	andi	t5,t4,0x10
    1530:	11a00003 	beqz	t5,1540 <func_80A3F908+0x1a8>
    1534:	00000000 	nop
    1538:	10000004 	b	154c <func_80A3F908+0x1b4>
    153c:	a60e010e 	sh	t6,270(s0)
    1540:	10000002 	b	154c <func_80A3F908+0x1b4>
    1544:	a60f010e 	sh	t7,270(s0)
    1548:	a618010e 	sh	t8,270(s0)
    154c:	9619010e 	lhu	t9,270(s0)
    1550:	8fa8002c 	lw	t0,44(sp)
    1554:	3c090000 	lui	t1,0x0
    1558:	3c020000 	lui	v0,0x0
    155c:	a519010e 	sh	t9,270(t0)
    1560:	9129002d 	lbu	t1,45(t1)
    1564:	00491021 	addu	v0,v0,t1
    1568:	90420074 	lbu	v0,116(v0)
    156c:	24010036 	li	at,54
    1570:	5441000e 	bnel	v0,at,15ac <func_80A3F908+0x214>
    1574:	8fbf0024 	lw	ra,36(sp)
    1578:	0c000000 	jal	0 <func_80A3E570>
    157c:	8fa40034 	lw	a0,52(sp)
    1580:	2401000e 	li	at,14
    1584:	14410004 	bne	v0,at,1598 <func_80A3F908+0x200>
    1588:	240b3058 	li	t3,12376
    158c:	240a3059 	li	t2,12377
    1590:	10000002 	b	159c <func_80A3F908+0x204>
    1594:	a60a010e 	sh	t2,270(s0)
    1598:	a60b010e 	sh	t3,270(s0)
    159c:	960c010e 	lhu	t4,270(s0)
    15a0:	8fad002c 	lw	t5,44(sp)
    15a4:	a5ac010e 	sh	t4,270(t5)
    15a8:	8fbf0024 	lw	ra,36(sp)
    15ac:	8fb00020 	lw	s0,32(sp)
    15b0:	27bd0030 	addiu	sp,sp,48
    15b4:	03e00008 	jr	ra
    15b8:	00000000 	nop

000015bc <EnGo_Init>:
    15bc:	27bdffa8 	addiu	sp,sp,-88
    15c0:	3c0f0000 	lui	t7,0x0
    15c4:	afbf002c 	sw	ra,44(sp)
    15c8:	afb00028 	sw	s0,40(sp)
    15cc:	afa5005c 	sw	a1,92(sp)
    15d0:	25ef0000 	addiu	t7,t7,0
    15d4:	8df90000 	lw	t9,0(t7)
    15d8:	27ae0044 	addiu	t6,sp,68
    15dc:	8df80004 	lw	t8,4(t7)
    15e0:	add90000 	sw	t9,0(t6)
    15e4:	8df90008 	lw	t9,8(t7)
    15e8:	3c090000 	lui	t1,0x0
    15ec:	25290000 	addiu	t1,t1,0
    15f0:	add80004 	sw	t8,4(t6)
    15f4:	add90008 	sw	t9,8(t6)
    15f8:	8d2b0000 	lw	t3,0(t1)
    15fc:	27a80038 	addiu	t0,sp,56
    1600:	8d2a0004 	lw	t2,4(t1)
    1604:	ad0b0000 	sw	t3,0(t0)
    1608:	8d2b0008 	lw	t3,8(t1)
    160c:	00808025 	move	s0,a0
    1610:	3c060000 	lui	a2,0x0
    1614:	24c60000 	addiu	a2,a2,0
    1618:	248400b4 	addiu	a0,a0,180
    161c:	24050000 	li	a1,0
    1620:	3c0741f0 	lui	a3,0x41f0
    1624:	ad0a0004 	sw	t2,4(t0)
    1628:	0c000000 	jal	0 <func_80A3E570>
    162c:	ad0b0008 	sw	t3,8(t0)
    1630:	3c060601 	lui	a2,0x601
    1634:	24c6fef0 	addiu	a2,a2,-272
    1638:	8fa4005c 	lw	a0,92(sp)
    163c:	2605014c 	addiu	a1,s0,332
    1640:	00003825 	move	a3,zero
    1644:	afa00010 	sw	zero,16(sp)
    1648:	afa00014 	sw	zero,20(sp)
    164c:	0c000000 	jal	0 <func_80A3E570>
    1650:	afa00018 	sw	zero,24(sp)
    1654:	26050194 	addiu	a1,s0,404
    1658:	afa50030 	sw	a1,48(sp)
    165c:	0c000000 	jal	0 <func_80A3E570>
    1660:	8fa4005c 	lw	a0,92(sp)
    1664:	3c070000 	lui	a3,0x0
    1668:	8fa50030 	lw	a1,48(sp)
    166c:	24e70000 	addiu	a3,a3,0
    1670:	8fa4005c 	lw	a0,92(sp)
    1674:	0c000000 	jal	0 <func_80A3E570>
    1678:	02003025 	move	a2,s0
    167c:	0c000000 	jal	0 <func_80A3E570>
    1680:	24040016 	li	a0,22
    1684:	3c060000 	lui	a2,0x0
    1688:	24c60000 	addiu	a2,a2,0
    168c:	26040098 	addiu	a0,s0,152
    1690:	0c000000 	jal	0 <func_80A3E570>
    1694:	00402825 	move	a1,v0
    1698:	02002025 	move	a0,s0
    169c:	0c000000 	jal	0 <func_80A3E570>
    16a0:	8fa5005c 	lw	a1,92(sp)
    16a4:	14400005 	bnez	v0,16bc <EnGo_Init+0x100>
    16a8:	02002025 	move	a0,s0
    16ac:	0c000000 	jal	0 <func_80A3E570>
    16b0:	02002025 	move	a0,s0
    16b4:	10000091 	b	18fc <L80A3FE60+0xc>
    16b8:	8fbf002c 	lw	ra,44(sp)
    16bc:	8602001c 	lh	v0,28(s0)
    16c0:	24010090 	li	at,144
    16c4:	304200f0 	andi	v0,v0,0xf0
    16c8:	1040000a 	beqz	v0,16f4 <EnGo_Init+0x138>
    16cc:	00000000 	nop
    16d0:	10410008 	beq	v0,at,16f4 <EnGo_Init+0x138>
    16d4:	00000000 	nop
    16d8:	8e0c0004 	lw	t4,4(s0)
    16dc:	2401ffef 	li	at,-17
    16e0:	01816824 	and	t5,t4,at
    16e4:	2401ffdf 	li	at,-33
    16e8:	ae0d0004 	sw	t5,4(s0)
    16ec:	01a17824 	and	t7,t5,at
    16f0:	ae0f0004 	sw	t7,4(s0)
    16f4:	0c000000 	jal	0 <func_80A3E570>
    16f8:	00002825 	move	a1,zero
    16fc:	8602001c 	lh	v0,28(s0)
    1700:	3c01bf80 	lui	at,0xbf80
    1704:	44812000 	mtc1	at,$f4
    1708:	304200f0 	andi	v0,v0,0xf0
    170c:	24180006 	li	t8,6
    1710:	28410071 	slti	at,v0,113
    1714:	a218001f 	sb	t8,31(s0)
    1718:	a60001e0 	sh	zero,480(s0)
    171c:	14200006 	bnez	at,1738 <EnGo_Init+0x17c>
    1720:	e604006c 	swc1	$f4,108(s0)
    1724:	24010090 	li	at,144
    1728:	1041005c 	beq	v0,at,189c <L80A3FDD8+0x34>
    172c:	240f0005 	li	t7,5
    1730:	1000006f 	b	18f0 <L80A3FE60>
    1734:	00000000 	nop
    1738:	2c410071 	sltiu	at,v0,113
    173c:	1020006c 	beqz	at,18f0 <L80A3FE60>
    1740:	0002c880 	sll	t9,v0,0x2
    1744:	3c010000 	lui	at,0x0
    1748:	00390821 	addu	at,at,t9
    174c:	8c390000 	lw	t9,0(at)
    1750:	03200008 	jr	t9
    1754:	00000000 	nop

00001758 <L80A3FCC8>:
    1758:	3c053c03 	lui	a1,0x3c03
    175c:	34a5126f 	ori	a1,a1,0x126f
    1760:	0c000000 	jal	0 <func_80A3E570>
    1764:	02002025 	move	a0,s0
    1768:	3c080000 	lui	t0,0x0
    176c:	3c090000 	lui	t1,0x0
    1770:	91290002 	lbu	t1,2(t1)
    1774:	8d080004 	lw	t0,4(t0)
    1778:	3c0b0000 	lui	t3,0x0
    177c:	956b009c 	lhu	t3,156(t3)
    1780:	01285004 	sllv	t2,t0,t1
    1784:	3c0144af 	lui	at,0x44af
    1788:	014b6024 	and	t4,t2,t3
    178c:	1180000a 	beqz	t4,17b8 <L80A3FCC8+0x60>
    1790:	02002025 	move	a0,s0
    1794:	02002025 	move	a0,s0
    1798:	0c000000 	jal	0 <func_80A3E570>
    179c:	8fa5005c 	lw	a1,92(sp)
    17a0:	3c050000 	lui	a1,0x0
    17a4:	24a50000 	addiu	a1,a1,0
    17a8:	0c000000 	jal	0 <func_80A3E570>
    17ac:	02002025 	move	a0,s0
    17b0:	10000052 	b	18fc <L80A3FE60+0xc>
    17b4:	8fbf002c 	lw	ra,44(sp)
    17b8:	44813000 	mtc1	at,$f6
    17bc:	3c014040 	lui	at,0x4040
    17c0:	44814000 	mtc1	at,$f8
    17c4:	3c050000 	lui	a1,0x0
    17c8:	24a50000 	addiu	a1,a1,0
    17cc:	e60600bc 	swc1	$f6,188(s0)
    17d0:	0c000000 	jal	0 <func_80A3E570>
    17d4:	e6080068 	swc1	$f8,104(s0)
    17d8:	10000048 	b	18fc <L80A3FE60+0xc>
    17dc:	8fbf002c 	lw	ra,44(sp)

000017e0 <L80A3FD50>:
    17e0:	3c040600 	lui	a0,0x600
    17e4:	0c000000 	jal	0 <func_80A3E570>
    17e8:	24844930 	addiu	a0,a0,18736
    17ec:	44825000 	mtc1	v0,$f10
    17f0:	3c053c23 	lui	a1,0x3c23
    17f4:	34a5d70a 	ori	a1,a1,0xd70a
    17f8:	46805420 	cvt.s.w	$f16,$f10
    17fc:	02002025 	move	a0,s0
    1800:	0c000000 	jal	0 <func_80A3E570>
    1804:	e6100164 	swc1	$f16,356(s0)
    1808:	3c050000 	lui	a1,0x0
    180c:	24a50000 	addiu	a1,a1,0
    1810:	0c000000 	jal	0 <func_80A3E570>
    1814:	02002025 	move	a0,s0
    1818:	10000038 	b	18fc <L80A3FE60+0xc>
    181c:	8fbf002c 	lw	ra,44(sp)

00001820 <L80A3FD90>:
    1820:	3c0d0000 	lui	t5,0x0
    1824:	95ad0f14 	lhu	t5,3860(t5)
    1828:	02002025 	move	a0,s0
    182c:	31ae0800 	andi	t6,t5,0x800
    1830:	51c00004 	beqzl	t6,1844 <L80A3FD90+0x24>
    1834:	3c053c75 	lui	a1,0x3c75
    1838:	0c000000 	jal	0 <func_80A3E570>
    183c:	8fa5005c 	lw	a1,92(sp)
    1840:	3c053c75 	lui	a1,0x3c75
    1844:	34a5c28f 	ori	a1,a1,0xc28f
    1848:	0c000000 	jal	0 <func_80A3E570>
    184c:	02002025 	move	a0,s0
    1850:	3c050000 	lui	a1,0x0
    1854:	24a50000 	addiu	a1,a1,0
    1858:	0c000000 	jal	0 <func_80A3E570>
    185c:	02002025 	move	a0,s0
    1860:	10000026 	b	18fc <L80A3FE60+0xc>
    1864:	8fbf002c 	lw	ra,44(sp)

00001868 <L80A3FDD8>:
    1868:	3c0144af 	lui	at,0x44af
    186c:	44819000 	mtc1	at,$f18
    1870:	3c053c23 	lui	a1,0x3c23
    1874:	34a5d70a 	ori	a1,a1,0xd70a
    1878:	02002025 	move	a0,s0
    187c:	0c000000 	jal	0 <func_80A3E570>
    1880:	e61200bc 	swc1	$f18,188(s0)
    1884:	3c050000 	lui	a1,0x0
    1888:	24a50000 	addiu	a1,a1,0
    188c:	0c000000 	jal	0 <func_80A3E570>
    1890:	02002025 	move	a0,s0
    1894:	10000019 	b	18fc <L80A3FE60+0xc>
    1898:	8fbf002c 	lw	ra,44(sp)
    189c:	3c053e23 	lui	a1,0x3e23
    18a0:	a20f001f 	sb	t7,31(s0)
    18a4:	34a5d70a 	ori	a1,a1,0xd70a
    18a8:	0c000000 	jal	0 <func_80A3E570>
    18ac:	02002025 	move	a0,s0
    18b0:	3c050000 	lui	a1,0x0
    18b4:	24a50000 	addiu	a1,a1,0
    18b8:	0c000000 	jal	0 <func_80A3E570>
    18bc:	02002025 	move	a0,s0
    18c0:	1000000e 	b	18fc <L80A3FE60+0xc>
    18c4:	8fbf002c 	lw	ra,44(sp)

000018c8 <L80A3FE38>:
    18c8:	3c053c23 	lui	a1,0x3c23
    18cc:	34a5d70a 	ori	a1,a1,0xd70a
    18d0:	0c000000 	jal	0 <func_80A3E570>
    18d4:	02002025 	move	a0,s0
    18d8:	3c050000 	lui	a1,0x0
    18dc:	24a50000 	addiu	a1,a1,0
    18e0:	0c000000 	jal	0 <func_80A3E570>
    18e4:	02002025 	move	a0,s0
    18e8:	10000004 	b	18fc <L80A3FE60+0xc>
    18ec:	8fbf002c 	lw	ra,44(sp)

000018f0 <L80A3FE60>:
    18f0:	0c000000 	jal	0 <func_80A3E570>
    18f4:	02002025 	move	a0,s0
    18f8:	8fbf002c 	lw	ra,44(sp)
    18fc:	8fb00028 	lw	s0,40(sp)
    1900:	27bd0058 	addiu	sp,sp,88
    1904:	03e00008 	jr	ra
    1908:	00000000 	nop

0000190c <EnGo_Destroy>:
    190c:	27bdffe8 	addiu	sp,sp,-24
    1910:	afbf0014 	sw	ra,20(sp)
    1914:	afa40018 	sw	a0,24(sp)
    1918:	afa5001c 	sw	a1,28(sp)
    191c:	0c000000 	jal	0 <func_80A3E570>
    1920:	2484014c 	addiu	a0,a0,332
    1924:	8fa50018 	lw	a1,24(sp)
    1928:	8fa4001c 	lw	a0,28(sp)
    192c:	0c000000 	jal	0 <func_80A3E570>
    1930:	24a50194 	addiu	a1,a1,404
    1934:	8fbf0014 	lw	ra,20(sp)
    1938:	27bd0018 	addiu	sp,sp,24
    193c:	03e00008 	jr	ra
    1940:	00000000 	nop

00001944 <func_80A3FEB4>:
    1944:	27bdffe8 	addiu	sp,sp,-24
    1948:	afbf0014 	sw	ra,20(sp)
    194c:	afa5001c 	sw	a1,28(sp)
    1950:	3c010000 	lui	at,0x0
    1954:	c4240000 	lwc1	$f4,0(at)
    1958:	c486008c 	lwc1	$f6,140(a0)
    195c:	3c050000 	lui	a1,0x0
    1960:	4606203c 	c.lt.s	$f4,$f6
    1964:	00000000 	nop
    1968:	45030004 	bc1tl	197c <func_80A3FEB4+0x38>
    196c:	8fbf0014 	lw	ra,20(sp)
    1970:	0c000000 	jal	0 <func_80A3E570>
    1974:	24a50000 	addiu	a1,a1,0
    1978:	8fbf0014 	lw	ra,20(sp)
    197c:	27bd0018 	addiu	sp,sp,24
    1980:	03e00008 	jr	ra
    1984:	00000000 	nop

00001988 <func_80A3FEF8>:
    1988:	27bdffc8 	addiu	sp,sp,-56
    198c:	afbf0034 	sw	ra,52(sp)
    1990:	afb10030 	sw	s1,48(sp)
    1994:	afb0002c 	sw	s0,44(sp)
    1998:	8482020e 	lh	v0,526(a0)
    199c:	00808025 	move	s0,a0
    19a0:	00a08825 	move	s1,a1
    19a4:	14400003 	bnez	v0,19b4 <func_80A3FEF8+0x2c>
    19a8:	244effff 	addiu	t6,v0,-1
    19ac:	10000003 	b	19bc <func_80A3FEF8+0x34>
    19b0:	00001825 	move	v1,zero
    19b4:	a60e020e 	sh	t6,526(s0)
    19b8:	8603020e 	lh	v1,526(s0)
    19bc:	54600018 	bnezl	v1,1a20 <func_80A3FEF8+0x98>
    19c0:	3c014040 	lui	at,0x4040
    19c4:	920201a7 	lbu	v0,423(s0)
    19c8:	3c190001 	lui	t9,0x1
    19cc:	0331c821 	addu	t9,t9,s1
    19d0:	304f0001 	andi	t7,v0,0x1
    19d4:	11e00011 	beqz	t7,1a1c <func_80A3FEF8+0x94>
    19d8:	3058fffe 	andi	t8,v0,0xfffe
    19dc:	a21801a7 	sb	t8,423(s0)
    19e0:	8f391d58 	lw	t9,7512(t9)
    19e4:	02202025 	move	a0,s1
    19e8:	2405fffc 	li	a1,-4
    19ec:	0320f809 	jalr	t9
    19f0:	00000000 	nop
    19f4:	3c0140c0 	lui	at,0x40c0
    19f8:	44812000 	mtc1	at,$f4
    19fc:	8607008a 	lh	a3,138(s0)
    1a00:	02202025 	move	a0,s1
    1a04:	02002825 	move	a1,s0
    1a08:	3c064080 	lui	a2,0x4080
    1a0c:	0c000000 	jal	0 <func_80A3E570>
    1a10:	e7a40010 	swc1	$f4,16(sp)
    1a14:	24080010 	li	t0,16
    1a18:	a608020e 	sh	t0,526(s0)
    1a1c:	3c014040 	lui	at,0x4040
    1a20:	44813000 	mtc1	at,$f6
    1a24:	02002025 	move	a0,s0
    1a28:	02202825 	move	a1,s1
    1a2c:	0c000000 	jal	0 <func_80A3E570>
    1a30:	e6060068 	swc1	$f6,104(s0)
    1a34:	24010001 	li	at,1
    1a38:	5441001a 	bnel	v0,at,1aa4 <func_80A3FEF8+0x11c>
    1a3c:	8a0b0030 	lwl	t3,48(s0)
    1a40:	86090218 	lh	t1,536(s0)
    1a44:	26241c24 	addiu	a0,s1,7204
    1a48:	02202825 	move	a1,s1
    1a4c:	55200015 	bnezl	t1,1aa4 <func_80A3FEF8+0x11c>
    1a50:	8a0b0030 	lwl	t3,48(s0)
    1a54:	c6080028 	lwc1	$f8,40(s0)
    1a58:	8e070024 	lw	a3,36(s0)
    1a5c:	24060010 	li	a2,16
    1a60:	e7a80010 	swc1	$f8,16(sp)
    1a64:	c60a002c 	lwc1	$f10,44(s0)
    1a68:	afa00024 	sw	zero,36(sp)
    1a6c:	afa00020 	sw	zero,32(sp)
    1a70:	afa0001c 	sw	zero,28(sp)
    1a74:	afa00018 	sw	zero,24(sp)
    1a78:	0c000000 	jal	0 <func_80A3E570>
    1a7c:	e7aa0014 	swc1	$f10,20(sp)
    1a80:	10400002 	beqz	v0,1a8c <func_80A3FEF8+0x104>
    1a84:	02002025 	move	a0,s0
    1a88:	a44001f8 	sh	zero,504(v0)
    1a8c:	44808000 	mtc1	zero,$f16
    1a90:	3c050000 	lui	a1,0x0
    1a94:	24a50000 	addiu	a1,a1,0
    1a98:	0c000000 	jal	0 <func_80A3E570>
    1a9c:	e6100068 	swc1	$f16,104(s0)
    1aa0:	8a0b0030 	lwl	t3,48(s0)
    1aa4:	9a0b0033 	lwr	t3,51(s0)
    1aa8:	02002025 	move	a0,s0
    1aac:	24050003 	li	a1,3
    1ab0:	aa0b00b4 	swl	t3,180(s0)
    1ab4:	ba0b00b7 	swr	t3,183(s0)
    1ab8:	960b0034 	lhu	t3,52(s0)
    1abc:	3c0640c0 	lui	a2,0x40c0
    1ac0:	0c000000 	jal	0 <func_80A3E570>
    1ac4:	a60b00b8 	sh	t3,184(s0)
    1ac8:	1040000f 	beqz	v0,1b08 <func_80A3FEF8+0x180>
    1acc:	02002025 	move	a0,s0
    1ad0:	3c014120 	lui	at,0x4120
    1ad4:	44819000 	mtc1	at,$f18
    1ad8:	3c0141a0 	lui	at,0x41a0
    1adc:	44812000 	mtc1	at,$f4
    1ae0:	3c063e23 	lui	a2,0x3e23
    1ae4:	3c073dcc 	lui	a3,0x3dcc
    1ae8:	240c0001 	li	t4,1
    1aec:	afac0010 	sw	t4,16(sp)
    1af0:	34e7cccd 	ori	a3,a3,0xcccd
    1af4:	34c6d70a 	ori	a2,a2,0xd70a
    1af8:	2405000c 	li	a1,12
    1afc:	e7b20014 	swc1	$f18,20(sp)
    1b00:	0c000000 	jal	0 <func_80A3E570>
    1b04:	e7a40018 	swc1	$f4,24(sp)
    1b08:	8fbf0034 	lw	ra,52(sp)
    1b0c:	8fb0002c 	lw	s0,44(sp)
    1b10:	8fb10030 	lw	s1,48(sp)
    1b14:	03e00008 	jr	ra
    1b18:	27bd0038 	addiu	sp,sp,56

00001b1c <func_80A4008C>:
    1b1c:	27bdffd8 	addiu	sp,sp,-40
    1b20:	afbf0024 	sw	ra,36(sp)
    1b24:	afa5002c 	sw	a1,44(sp)
    1b28:	24050003 	li	a1,3
    1b2c:	afa40028 	sw	a0,40(sp)
    1b30:	0c000000 	jal	0 <func_80A3E570>
    1b34:	3c0640c0 	lui	a2,0x40c0
    1b38:	10400018 	beqz	v0,1b9c <func_80A4008C+0x80>
    1b3c:	8fa40028 	lw	a0,40(sp)
    1b40:	848e021a 	lh	t6,538(a0)
    1b44:	3c063e23 	lui	a2,0x3e23
    1b48:	34c6d70a 	ori	a2,a2,0xd70a
    1b4c:	15c00008 	bnez	t6,1b70 <func_80A4008C+0x54>
    1b50:	2405000c 	li	a1,12
    1b54:	44802000 	mtc1	zero,$f4
    1b58:	3c050000 	lui	a1,0x0
    1b5c:	24a50000 	addiu	a1,a1,0
    1b60:	0c000000 	jal	0 <func_80A3E570>
    1b64:	e48400bc 	swc1	$f4,188(a0)
    1b68:	1000000d 	b	1ba0 <func_80A4008C+0x84>
    1b6c:	8fbf0024 	lw	ra,36(sp)
    1b70:	3c014120 	lui	at,0x4120
    1b74:	44813000 	mtc1	at,$f6
    1b78:	3c0141a0 	lui	at,0x41a0
    1b7c:	44814000 	mtc1	at,$f8
    1b80:	3c073dcc 	lui	a3,0x3dcc
    1b84:	240f0001 	li	t7,1
    1b88:	afaf0010 	sw	t7,16(sp)
    1b8c:	34e7cccd 	ori	a3,a3,0xcccd
    1b90:	e7a60014 	swc1	$f6,20(sp)
    1b94:	0c000000 	jal	0 <func_80A3E570>
    1b98:	e7a80018 	swc1	$f8,24(sp)
    1b9c:	8fbf0024 	lw	ra,36(sp)
    1ba0:	27bd0028 	addiu	sp,sp,40
    1ba4:	03e00008 	jr	ra
    1ba8:	00000000 	nop

00001bac <func_80A4011C>:
    1bac:	27bdffd0 	addiu	sp,sp,-48
    1bb0:	afbf002c 	sw	ra,44(sp)
    1bb4:	afb00028 	sw	s0,40(sp)
    1bb8:	00808025 	move	s0,a0
    1bbc:	0c000000 	jal	0 <func_80A3E570>
    1bc0:	afa50034 	sw	a1,52(sp)
    1bc4:	24010001 	li	at,1
    1bc8:	54410016 	bnel	v0,at,1c24 <func_80A4011C+0x78>
    1bcc:	8a080030 	lwl	t0,48(s0)
    1bd0:	8605001c 	lh	a1,28(s0)
    1bd4:	8fa40034 	lw	a0,52(sp)
    1bd8:	0c000000 	jal	0 <func_80A3E570>
    1bdc:	00052a03 	sra	a1,a1,0x8
    1be0:	50400010 	beqzl	v0,1c24 <func_80A4011C+0x78>
    1be4:	8a080030 	lwl	t0,48(s0)
    1be8:	860e0218 	lh	t6,536(s0)
    1bec:	02002025 	move	a0,s0
    1bf0:	3c050000 	lui	a1,0x0
    1bf4:	55c0000b 	bnezl	t6,1c24 <func_80A4011C+0x78>
    1bf8:	8a080030 	lwl	t0,48(s0)
    1bfc:	44802000 	mtc1	zero,$f4
    1c00:	24a50000 	addiu	a1,a1,0
    1c04:	0c000000 	jal	0 <func_80A3E570>
    1c08:	e6040068 	swc1	$f4,104(s0)
    1c0c:	3c020000 	lui	v0,0x0
    1c10:	24420000 	addiu	v0,v0,0
    1c14:	944f0f18 	lhu	t7,3864(v0)
    1c18:	35f80200 	ori	t8,t7,0x200
    1c1c:	a4580f18 	sh	t8,3864(v0)
    1c20:	8a080030 	lwl	t0,48(s0)
    1c24:	9a080033 	lwr	t0,51(s0)
    1c28:	02002025 	move	a0,s0
    1c2c:	24050003 	li	a1,3
    1c30:	aa0800b4 	swl	t0,180(s0)
    1c34:	ba0800b7 	swr	t0,183(s0)
    1c38:	96080034 	lhu	t0,52(s0)
    1c3c:	3c0640c0 	lui	a2,0x40c0
    1c40:	0c000000 	jal	0 <func_80A3E570>
    1c44:	a60800b8 	sh	t0,184(s0)
    1c48:	1040000f 	beqz	v0,1c88 <func_80A4011C+0xdc>
    1c4c:	02002025 	move	a0,s0
    1c50:	3c014150 	lui	at,0x4150
    1c54:	44813000 	mtc1	at,$f6
    1c58:	3c0141a0 	lui	at,0x41a0
    1c5c:	44814000 	mtc1	at,$f8
    1c60:	3c063e38 	lui	a2,0x3e38
    1c64:	3c073e4c 	lui	a3,0x3e4c
    1c68:	24090002 	li	t1,2
    1c6c:	afa90010 	sw	t1,16(sp)
    1c70:	34e7cccd 	ori	a3,a3,0xcccd
    1c74:	34c651ec 	ori	a2,a2,0x51ec
    1c78:	2405000c 	li	a1,12
    1c7c:	e7a60014 	swc1	$f6,20(sp)
    1c80:	0c000000 	jal	0 <func_80A3E570>
    1c84:	e7a80018 	swc1	$f8,24(sp)
    1c88:	8fbf002c 	lw	ra,44(sp)
    1c8c:	8fb00028 	lw	s0,40(sp)
    1c90:	27bd0030 	addiu	sp,sp,48
    1c94:	03e00008 	jr	ra
    1c98:	00000000 	nop

00001c9c <func_80A4020C>:
    1c9c:	afa40000 	sw	a0,0(sp)
    1ca0:	03e00008 	jr	ra
    1ca4:	afa50004 	sw	a1,4(sp)

00001ca8 <func_80A40218>:
    1ca8:	27bdffd8 	addiu	sp,sp,-40
    1cac:	afbf0024 	sw	ra,36(sp)
    1cb0:	afb00020 	sw	s0,32(sp)
    1cb4:	afa5002c 	sw	a1,44(sp)
    1cb8:	84820210 	lh	v0,528(a0)
    1cbc:	00808025 	move	s0,a0
    1cc0:	02002025 	move	a0,s0
    1cc4:	14400003 	bnez	v0,1cd4 <func_80A40218+0x2c>
    1cc8:	244effff 	addiu	t6,v0,-1
    1ccc:	10000003 	b	1cdc <func_80A40218+0x34>
    1cd0:	00001825 	move	v1,zero
    1cd4:	a60e0210 	sh	t6,528(s0)
    1cd8:	86030210 	lh	v1,528(s0)
    1cdc:	5460002e 	bnezl	v1,1d98 <func_80A40218+0xf0>
    1ce0:	8fbf0024 	lw	ra,36(sp)
    1ce4:	0c000000 	jal	0 <func_80A3E570>
    1ce8:	8fa5002c 	lw	a1,44(sp)
    1cec:	10400029 	beqz	v0,1d94 <func_80A40218+0xec>
    1cf0:	3c070000 	lui	a3,0x0
    1cf4:	3c0f0000 	lui	t7,0x0
    1cf8:	24e70000 	addiu	a3,a3,0
    1cfc:	25ef0000 	addiu	t7,t7,0
    1d00:	afaf0014 	sw	t7,20(sp)
    1d04:	afa70010 	sw	a3,16(sp)
    1d08:	240438fc 	li	a0,14588
    1d0c:	260500e4 	addiu	a1,s0,228
    1d10:	0c000000 	jal	0 <func_80A3E570>
    1d14:	24060004 	li	a2,4
    1d18:	8618001c 	lh	t8,28(s0)
    1d1c:	3c010000 	lui	at,0x0
    1d20:	c4240000 	lwc1	$f4,0(at)
    1d24:	24010090 	li	at,144
    1d28:	331900f0 	andi	t9,t8,0xf0
    1d2c:	17210005 	bne	t9,at,1d44 <func_80A40218+0x9c>
    1d30:	e6040168 	swc1	$f4,360(s0)
    1d34:	3c013f00 	lui	at,0x3f00
    1d38:	44810000 	mtc1	at,$f0
    1d3c:	10000005 	b	1d54 <func_80A40218+0xac>
    1d40:	c6060168 	lwc1	$f6,360(s0)
    1d44:	3c013f80 	lui	at,0x3f80
    1d48:	44810000 	mtc1	at,$f0
    1d4c:	00000000 	nop
    1d50:	c6060168 	lwc1	$f6,360(s0)
    1d54:	3c050000 	lui	a1,0x0
    1d58:	24a50000 	addiu	a1,a1,0
    1d5c:	46003202 	mul.s	$f8,$f6,$f0
    1d60:	02002025 	move	a0,s0
    1d64:	0c000000 	jal	0 <func_80A3E570>
    1d68:	e6080168 	swc1	$f8,360(s0)
    1d6c:	8608001c 	lh	t0,28(s0)
    1d70:	24010090 	li	at,144
    1d74:	8fa4002c 	lw	a0,44(sp)
    1d78:	310900f0 	andi	t1,t0,0xf0
    1d7c:	15210005 	bne	t1,at,1d94 <func_80A40218+0xec>
    1d80:	24051068 	li	a1,4200
    1d84:	2406ff9d 	li	a2,-99
    1d88:	02003825 	move	a3,s0
    1d8c:	0c000000 	jal	0 <func_80A3E570>
    1d90:	afa00010 	sw	zero,16(sp)
    1d94:	8fbf0024 	lw	ra,36(sp)
    1d98:	8fb00020 	lw	s0,32(sp)
    1d9c:	27bd0028 	addiu	sp,sp,40
    1da0:	03e00008 	jr	ra
    1da4:	00000000 	nop

00001da8 <func_80A40318>:
    1da8:	27bdffd8 	addiu	sp,sp,-40
    1dac:	afbf0024 	sw	ra,36(sp)
    1db0:	afb00020 	sw	s0,32(sp)
    1db4:	afa5002c 	sw	a1,44(sp)
    1db8:	c4860168 	lwc1	$f6,360(a0)
    1dbc:	44802000 	mtc1	zero,$f4
    1dc0:	00808025 	move	s0,a0
    1dc4:	46062032 	c.eq.s	$f4,$f6
    1dc8:	00000000 	nop
    1dcc:	4503002c 	bc1tl	1e80 <func_80A40318+0xd8>
    1dd0:	86020212 	lh	v0,530(s0)
    1dd4:	848e001c 	lh	t6,28(a0)
    1dd8:	24010090 	li	at,144
    1ddc:	31cf00f0 	andi	t7,t6,0xf0
    1de0:	15e10004 	bne	t7,at,1df4 <func_80A40318+0x4c>
    1de4:	3c013f00 	lui	at,0x3f00
    1de8:	44810000 	mtc1	at,$f0
    1dec:	10000004 	b	1e00 <func_80A40318+0x58>
    1df0:	00000000 	nop
    1df4:	3c013f80 	lui	at,0x3f80
    1df8:	44810000 	mtc1	at,$f0
    1dfc:	00000000 	nop
    1e00:	3c010000 	lui	at,0x0
    1e04:	c4220000 	lwc1	$f2,0(at)
    1e08:	3c013f00 	lui	at,0x3f00
    1e0c:	44814000 	mtc1	at,$f8
    1e10:	44061000 	mfc1	a2,$f2
    1e14:	26040168 	addiu	a0,s0,360
    1e18:	46080282 	mul.s	$f10,$f0,$f8
    1e1c:	3c07447a 	lui	a3,0x447a
    1e20:	e7a20010 	swc1	$f2,16(sp)
    1e24:	44055000 	mfc1	a1,$f10
    1e28:	0c000000 	jal	0 <func_80A3E570>
    1e2c:	00000000 	nop
    1e30:	c6000164 	lwc1	$f0,356(s0)
    1e34:	c6100168 	lwc1	$f16,360(s0)
    1e38:	3c014140 	lui	at,0x4140
    1e3c:	44811000 	mtc1	at,$f2
    1e40:	46100000 	add.s	$f0,$f0,$f16
    1e44:	24010090 	li	at,144
    1e48:	4602003e 	c.le.s	$f0,$f2
    1e4c:	00000000 	nop
    1e50:	45030030 	bc1tl	1f14 <func_80A40318+0x16c>
    1e54:	8fbf0024 	lw	ra,36(sp)
    1e58:	8618001c 	lh	t8,28(s0)
    1e5c:	44809000 	mtc1	zero,$f18
    1e60:	e6020164 	swc1	$f2,356(s0)
    1e64:	331900f0 	andi	t9,t8,0xf0
    1e68:	13210004 	beq	t9,at,1e7c <func_80A40318+0xd4>
    1e6c:	e6120168 	swc1	$f18,360(s0)
    1e70:	2408001e 	li	t0,30
    1e74:	10000026 	b	1f10 <func_80A40318+0x168>
    1e78:	a6080212 	sh	t0,530(s0)
    1e7c:	86020212 	lh	v0,530(s0)
    1e80:	3c070000 	lui	a3,0x0
    1e84:	02002025 	move	a0,s0
    1e88:	14400003 	bnez	v0,1e98 <func_80A40318+0xf0>
    1e8c:	2449ffff 	addiu	t1,v0,-1
    1e90:	10000003 	b	1ea0 <func_80A40318+0xf8>
    1e94:	00001825 	move	v1,zero
    1e98:	a6090212 	sh	t1,530(s0)
    1e9c:	86030212 	lh	v1,530(s0)
    1ea0:	1460000f 	bnez	v1,1ee0 <func_80A40318+0x138>
    1ea4:	24e70000 	addiu	a3,a3,0
    1ea8:	3c0a0000 	lui	t2,0x0
    1eac:	254a0000 	addiu	t2,t2,0
    1eb0:	afaa0014 	sw	t2,20(sp)
    1eb4:	240438fd 	li	a0,14589
    1eb8:	260500e4 	addiu	a1,s0,228
    1ebc:	24060004 	li	a2,4
    1ec0:	0c000000 	jal	0 <func_80A3E570>
    1ec4:	afa70010 	sw	a3,16(sp)
    1ec8:	3c050000 	lui	a1,0x0
    1ecc:	24a50000 	addiu	a1,a1,0
    1ed0:	0c000000 	jal	0 <func_80A3E570>
    1ed4:	02002025 	move	a0,s0
    1ed8:	1000000e 	b	1f14 <func_80A40318+0x16c>
    1edc:	8fbf0024 	lw	ra,36(sp)
    1ee0:	0c000000 	jal	0 <func_80A3E570>
    1ee4:	8fa5002c 	lw	a1,44(sp)
    1ee8:	5440000a 	bnezl	v0,1f14 <func_80A40318+0x16c>
    1eec:	8fbf0024 	lw	ra,36(sp)
    1ef0:	0c000000 	jal	0 <func_80A3E570>
    1ef4:	02002025 	move	a0,s0
    1ef8:	44802000 	mtc1	zero,$f4
    1efc:	3c050000 	lui	a1,0x0
    1f00:	24a50000 	addiu	a1,a1,0
    1f04:	02002025 	move	a0,s0
    1f08:	0c000000 	jal	0 <func_80A3E570>
    1f0c:	e6040168 	swc1	$f4,360(s0)
    1f10:	8fbf0024 	lw	ra,36(sp)
    1f14:	8fb00020 	lw	s0,32(sp)
    1f18:	27bd0028 	addiu	sp,sp,40
    1f1c:	03e00008 	jr	ra
    1f20:	00000000 	nop

00001f24 <func_80A40494>:
    1f24:	27bdffd0 	addiu	sp,sp,-48
    1f28:	afbf002c 	sw	ra,44(sp)
    1f2c:	afb00028 	sw	s0,40(sp)
    1f30:	afa50034 	sw	a1,52(sp)
    1f34:	848e001c 	lh	t6,28(a0)
    1f38:	24010090 	li	at,144
    1f3c:	00808025 	move	s0,a0
    1f40:	31cf00f0 	andi	t7,t6,0xf0
    1f44:	15e10004 	bne	t7,at,1f58 <func_80A40494+0x34>
    1f48:	3c013f00 	lui	at,0x3f00
    1f4c:	44810000 	mtc1	at,$f0
    1f50:	10000004 	b	1f64 <func_80A40494+0x40>
    1f54:	00000000 	nop
    1f58:	3c013f80 	lui	at,0x3f80
    1f5c:	44810000 	mtc1	at,$f0
    1f60:	00000000 	nop
    1f64:	3c010000 	lui	at,0x0
    1f68:	c4220000 	lwc1	$f2,0(at)
    1f6c:	3c01bf00 	lui	at,0xbf00
    1f70:	44812000 	mtc1	at,$f4
    1f74:	44061000 	mfc1	a2,$f2
    1f78:	26040168 	addiu	a0,s0,360
    1f7c:	46040182 	mul.s	$f6,$f0,$f4
    1f80:	3c07447a 	lui	a3,0x447a
    1f84:	e7a20010 	swc1	$f2,16(sp)
    1f88:	44053000 	mfc1	a1,$f6
    1f8c:	0c000000 	jal	0 <func_80A3E570>
    1f90:	00000000 	nop
    1f94:	c6000164 	lwc1	$f0,356(s0)
    1f98:	c6080168 	lwc1	$f8,360(s0)
    1f9c:	44805000 	mtc1	zero,$f10
    1fa0:	3c070000 	lui	a3,0x0
    1fa4:	46080000 	add.s	$f0,$f0,$f8
    1fa8:	3c180000 	lui	t8,0x0
    1fac:	24e70000 	addiu	a3,a3,0
    1fb0:	27180000 	addiu	t8,t8,0
    1fb4:	4600503e 	c.le.s	$f10,$f0
    1fb8:	2404387b 	li	a0,14459
    1fbc:	260500e4 	addiu	a1,s0,228
    1fc0:	24060004 	li	a2,4
    1fc4:	45030021 	bc1tl	204c <func_80A40494+0x128>
    1fc8:	8fbf002c 	lw	ra,44(sp)
    1fcc:	afa70010 	sw	a3,16(sp)
    1fd0:	0c000000 	jal	0 <func_80A3E570>
    1fd4:	afb80014 	sw	t8,20(sp)
    1fd8:	3c0141d0 	lui	at,0x41d0
    1fdc:	44818000 	mtc1	at,$f16
    1fe0:	3c014000 	lui	at,0x4000
    1fe4:	44819000 	mtc1	at,$f18
    1fe8:	3c063ecc 	lui	a2,0x3ecc
    1fec:	3c073dcc 	lui	a3,0x3dcc
    1ff0:	24190010 	li	t9,16
    1ff4:	afb90010 	sw	t9,16(sp)
    1ff8:	34e7cccd 	ori	a3,a3,0xcccd
    1ffc:	34c6cccd 	ori	a2,a2,0xcccd
    2000:	02002025 	move	a0,s0
    2004:	2405000a 	li	a1,10
    2008:	e7b00014 	swc1	$f16,20(sp)
    200c:	0c000000 	jal	0 <func_80A3E570>
    2010:	e7b20018 	swc1	$f18,24(sp)
    2014:	0c000000 	jal	0 <func_80A3E570>
    2018:	02002025 	move	a0,s0
    201c:	44800000 	mtc1	zero,$f0
    2020:	2404001e 	li	a0,30
    2024:	2405001e 	li	a1,30
    2028:	e6000168 	swc1	$f0,360(s0)
    202c:	0c000000 	jal	0 <func_80A3E570>
    2030:	e6000164 	swc1	$f0,356(s0)
    2034:	3c050000 	lui	a1,0x0
    2038:	a6020210 	sh	v0,528(s0)
    203c:	24a50000 	addiu	a1,a1,0
    2040:	0c000000 	jal	0 <func_80A3E570>
    2044:	02002025 	move	a0,s0
    2048:	8fbf002c 	lw	ra,44(sp)
    204c:	8fb00028 	lw	s0,40(sp)
    2050:	27bd0030 	addiu	sp,sp,48
    2054:	03e00008 	jr	ra
    2058:	00000000 	nop

0000205c <func_80A405CC>:
    205c:	27bdffd0 	addiu	sp,sp,-48
    2060:	afb00020 	sw	s0,32(sp)
    2064:	00808025 	move	s0,a0
    2068:	afbf0024 	sw	ra,36(sp)
    206c:	3c040600 	lui	a0,0x600
    2070:	afa50034 	sw	a1,52(sp)
    2074:	0c000000 	jal	0 <func_80A3E570>
    2078:	24844930 	addiu	a0,a0,18736
    207c:	860e001c 	lh	t6,28(s0)
    2080:	44822000 	mtc1	v0,$f4
    2084:	24010090 	li	at,144
    2088:	31cf00f0 	andi	t7,t6,0xf0
    208c:	15e10005 	bne	t7,at,20a4 <func_80A405CC+0x48>
    2090:	468020a0 	cvt.s.w	$f2,$f4
    2094:	3c013f00 	lui	at,0x3f00
    2098:	44810000 	mtc1	at,$f0
    209c:	10000004 	b	20b0 <func_80A405CC+0x54>
    20a0:	00000000 	nop
    20a4:	3c013f80 	lui	at,0x3f80
    20a8:	44810000 	mtc1	at,$f0
    20ac:	00000000 	nop
    20b0:	3c010000 	lui	at,0x0
    20b4:	c42c0000 	lwc1	$f12,0(at)
    20b8:	44050000 	mfc1	a1,$f0
    20bc:	26040168 	addiu	a0,s0,360
    20c0:	44066000 	mfc1	a2,$f12
    20c4:	3c07447a 	lui	a3,0x447a
    20c8:	e7a2002c 	swc1	$f2,44(sp)
    20cc:	0c000000 	jal	0 <func_80A3E570>
    20d0:	e7ac0010 	swc1	$f12,16(sp)
    20d4:	c6000164 	lwc1	$f0,356(s0)
    20d8:	c6060168 	lwc1	$f6,360(s0)
    20dc:	c7a2002c 	lwc1	$f2,44(sp)
    20e0:	2404001e 	li	a0,30
    20e4:	46060000 	add.s	$f0,$f0,$f6
    20e8:	2405001e 	li	a1,30
    20ec:	4602003c 	c.lt.s	$f0,$f2
    20f0:	00000000 	nop
    20f4:	4503001a 	bc1tl	2160 <func_80A405CC+0x104>
    20f8:	8fbf0024 	lw	ra,36(sp)
    20fc:	44804000 	mtc1	zero,$f8
    2100:	e6020164 	swc1	$f2,356(s0)
    2104:	0c000000 	jal	0 <func_80A3E570>
    2108:	e6080168 	swc1	$f8,360(s0)
    210c:	8618001c 	lh	t8,28(s0)
    2110:	24010040 	li	at,64
    2114:	a6020212 	sh	v0,530(s0)
    2118:	331900f0 	andi	t9,t8,0xf0
    211c:	1721000b 	bne	t9,at,214c <func_80A405CC+0xf0>
    2120:	3c080000 	lui	t0,0x0
    2124:	95080f14 	lhu	t0,3860(t0)
    2128:	02002025 	move	a0,s0
    212c:	3c050000 	lui	a1,0x0
    2130:	31090800 	andi	t1,t0,0x800
    2134:	15200005 	bnez	t1,214c <func_80A405CC+0xf0>
    2138:	00000000 	nop
    213c:	0c000000 	jal	0 <func_80A3E570>
    2140:	24a50000 	addiu	a1,a1,0
    2144:	10000006 	b	2160 <func_80A405CC+0x104>
    2148:	8fbf0024 	lw	ra,36(sp)
    214c:	3c050000 	lui	a1,0x0
    2150:	24a50000 	addiu	a1,a1,0
    2154:	0c000000 	jal	0 <func_80A3E570>
    2158:	02002025 	move	a0,s0
    215c:	8fbf0024 	lw	ra,36(sp)
    2160:	8fb00020 	lw	s0,32(sp)
    2164:	27bd0030 	addiu	sp,sp,48
    2168:	03e00008 	jr	ra
    216c:	00000000 	nop

00002170 <func_80A406E0>:
    2170:	27bdffd8 	addiu	sp,sp,-40
    2174:	afbf0024 	sw	ra,36(sp)
    2178:	afb00020 	sw	s0,32(sp)
    217c:	afa5002c 	sw	a1,44(sp)
    2180:	8482001c 	lh	v0,28(a0)
    2184:	24010090 	li	at,144
    2188:	00808025 	move	s0,a0
    218c:	304200f0 	andi	v0,v0,0xf0
    2190:	14410037 	bne	v0,at,2270 <func_80A406E0+0x100>
    2194:	00000000 	nop
    2198:	848e01e0 	lh	t6,480(a0)
    219c:	24010002 	li	at,2
    21a0:	15c10033 	bne	t6,at,2270 <func_80A406E0+0x100>
    21a4:	00000000 	nop
    21a8:	3c020000 	lui	v0,0x0
    21ac:	24420000 	addiu	v0,v0,0
    21b0:	904f003e 	lbu	t7,62(v0)
    21b4:	3c180000 	lui	t8,0x0
    21b8:	11e00003 	beqz	t7,21c8 <func_80A406E0+0x58>
    21bc:	00000000 	nop
    21c0:	10000064 	b	2354 <func_80A406E0+0x1e4>
    21c4:	a48001e0 	sh	zero,480(a0)
    21c8:	9318002d 	lbu	t8,45(t8)
    21cc:	24010036 	li	at,54
    21d0:	3c050000 	lui	a1,0x0
    21d4:	0058c821 	addu	t9,v0,t8
    21d8:	93280074 	lbu	t0,116(t9)
    21dc:	24a50000 	addiu	a1,a1,0
    21e0:	02002025 	move	a0,s0
    21e4:	15010019 	bne	t0,at,224c <func_80A406E0+0xdc>
    21e8:	00000000 	nop
    21ec:	02002025 	move	a0,s0
    21f0:	0c000000 	jal	0 <func_80A3E570>
    21f4:	24050002 	li	a1,2
    21f8:	24090064 	li	t1,100
    21fc:	3c050000 	lui	a1,0x0
    2200:	a609021e 	sh	t1,542(s0)
    2204:	a60001e0 	sh	zero,480(s0)
    2208:	24a50000 	addiu	a1,a1,0
    220c:	0c000000 	jal	0 <func_80A3E570>
    2210:	02002025 	move	a0,s0
    2214:	8fa4002c 	lw	a0,44(sp)
    2218:	3c010001 	lui	at,0x1
    221c:	240a0037 	li	t2,55
    2220:	00240821 	addu	at,at,a0
    2224:	a02a03dc 	sb	t2,988(at)
    2228:	3c010000 	lui	at,0x0
    222c:	a42013d2 	sh	zero,5074(at)
    2230:	afa00010 	sw	zero,16(sp)
    2234:	2405105e 	li	a1,4190
    2238:	2406ff9d 	li	a2,-99
    223c:	0c000000 	jal	0 <func_80A3E570>
    2240:	02003825 	move	a3,s0
    2244:	10000044 	b	2358 <func_80A406E0+0x1e8>
    2248:	8fbf0024 	lw	ra,36(sp)
    224c:	0c000000 	jal	0 <func_80A3E570>
    2250:	a60001e0 	sh	zero,480(s0)
    2254:	0c000000 	jal	0 <func_80A3E570>
    2258:	8fa4002c 	lw	a0,44(sp)
    225c:	02002025 	move	a0,s0
    2260:	0c000000 	jal	0 <func_80A3E570>
    2264:	8fa5002c 	lw	a1,44(sp)
    2268:	1000003b 	b	2358 <func_80A406E0+0x1e8>
    226c:	8fbf0024 	lw	ra,36(sp)
    2270:	54400014 	bnezl	v0,22c4 <func_80A406E0+0x154>
    2274:	86020212 	lh	v0,530(s0)
    2278:	860b01e0 	lh	t3,480(s0)
    227c:	24010002 	li	at,2
    2280:	02002025 	move	a0,s0
    2284:	1561000e 	bne	t3,at,22c0 <func_80A406E0+0x150>
    2288:	3c050000 	lui	a1,0x0
    228c:	0c000000 	jal	0 <func_80A3E570>
    2290:	24a50000 	addiu	a1,a1,0
    2294:	8fad002c 	lw	t5,44(sp)
    2298:	3c010001 	lui	at,0x1
    229c:	240c0004 	li	t4,4
    22a0:	002d0821 	addu	at,at,t5
    22a4:	a02c04bf 	sb	t4,1215(at)
    22a8:	8faf002c 	lw	t7,44(sp)
    22ac:	3c010001 	lui	at,0x1
    22b0:	240e0036 	li	t6,54
    22b4:	002f0821 	addu	at,at,t7
    22b8:	10000026 	b	2354 <func_80A406E0+0x1e4>
    22bc:	a02e03dc 	sb	t6,988(at)
    22c0:	86020212 	lh	v0,530(s0)
    22c4:	02002025 	move	a0,s0
    22c8:	14400003 	bnez	v0,22d8 <func_80A406E0+0x168>
    22cc:	2458ffff 	addiu	t8,v0,-1
    22d0:	10000003 	b	22e0 <func_80A406E0+0x170>
    22d4:	00001825 	move	v1,zero
    22d8:	a6180212 	sh	t8,530(s0)
    22dc:	86030212 	lh	v1,530(s0)
    22e0:	5460001d 	bnezl	v1,2358 <func_80A406E0+0x1e8>
    22e4:	8fbf0024 	lw	ra,36(sp)
    22e8:	0c000000 	jal	0 <func_80A3E570>
    22ec:	8fa5002c 	lw	a1,44(sp)
    22f0:	54400019 	bnezl	v0,2358 <func_80A406E0+0x1e8>
    22f4:	8fbf0024 	lw	ra,36(sp)
    22f8:	0c000000 	jal	0 <func_80A3E570>
    22fc:	02002025 	move	a0,s0
    2300:	8619001c 	lh	t9,28(s0)
    2304:	3c010000 	lui	at,0x0
    2308:	c4240000 	lwc1	$f4,0(at)
    230c:	24010090 	li	at,144
    2310:	332800f0 	andi	t0,t9,0xf0
    2314:	15010005 	bne	t0,at,232c <func_80A406E0+0x1bc>
    2318:	e6040168 	swc1	$f4,360(s0)
    231c:	3c013f00 	lui	at,0x3f00
    2320:	44810000 	mtc1	at,$f0
    2324:	10000005 	b	233c <func_80A406E0+0x1cc>
    2328:	c6060168 	lwc1	$f6,360(s0)
    232c:	3c013f80 	lui	at,0x3f80
    2330:	44810000 	mtc1	at,$f0
    2334:	00000000 	nop
    2338:	c6060168 	lwc1	$f6,360(s0)
    233c:	3c050000 	lui	a1,0x0
    2340:	24a50000 	addiu	a1,a1,0
    2344:	46003202 	mul.s	$f8,$f6,$f0
    2348:	02002025 	move	a0,s0
    234c:	0c000000 	jal	0 <func_80A3E570>
    2350:	e6080168 	swc1	$f8,360(s0)
    2354:	8fbf0024 	lw	ra,36(sp)
    2358:	8fb00020 	lw	s0,32(sp)
    235c:	27bd0028 	addiu	sp,sp,40
    2360:	03e00008 	jr	ra
    2364:	00000000 	nop

00002368 <func_80A408D8>:
    2368:	27bdffd8 	addiu	sp,sp,-40
    236c:	afbf0024 	sw	ra,36(sp)
    2370:	afb00020 	sw	s0,32(sp)
    2374:	afa5002c 	sw	a1,44(sp)
    2378:	c4860168 	lwc1	$f6,360(a0)
    237c:	44802000 	mtc1	zero,$f4
    2380:	00808025 	move	s0,a0
    2384:	46062032 	c.eq.s	$f4,$f6
    2388:	00000000 	nop
    238c:	4503002c 	bc1tl	2440 <func_80A408D8+0xd8>
    2390:	86020212 	lh	v0,530(s0)
    2394:	848e001c 	lh	t6,28(a0)
    2398:	24010090 	li	at,144
    239c:	31cf00f0 	andi	t7,t6,0xf0
    23a0:	15e10004 	bne	t7,at,23b4 <func_80A408D8+0x4c>
    23a4:	3c013f00 	lui	at,0x3f00
    23a8:	44810000 	mtc1	at,$f0
    23ac:	10000004 	b	23c0 <func_80A408D8+0x58>
    23b0:	00000000 	nop
    23b4:	3c013f80 	lui	at,0x3f80
    23b8:	44810000 	mtc1	at,$f0
    23bc:	00000000 	nop
    23c0:	3c010000 	lui	at,0x0
    23c4:	c4220000 	lwc1	$f2,0(at)
    23c8:	3c01bf80 	lui	at,0xbf80
    23cc:	44814000 	mtc1	at,$f8
    23d0:	44061000 	mfc1	a2,$f2
    23d4:	26040168 	addiu	a0,s0,360
    23d8:	46080282 	mul.s	$f10,$f0,$f8
    23dc:	3c07447a 	lui	a3,0x447a
    23e0:	e7a20010 	swc1	$f2,16(sp)
    23e4:	44055000 	mfc1	a1,$f10
    23e8:	0c000000 	jal	0 <func_80A3E570>
    23ec:	00000000 	nop
    23f0:	c6000164 	lwc1	$f0,356(s0)
    23f4:	c6100168 	lwc1	$f16,360(s0)
    23f8:	3c014140 	lui	at,0x4140
    23fc:	44811000 	mtc1	at,$f2
    2400:	46100000 	add.s	$f0,$f0,$f16
    2404:	24010090 	li	at,144
    2408:	4600103e 	c.le.s	$f2,$f0
    240c:	00000000 	nop
    2410:	45030030 	bc1tl	24d4 <func_80A408D8+0x16c>
    2414:	8fbf0024 	lw	ra,36(sp)
    2418:	8618001c 	lh	t8,28(s0)
    241c:	44809000 	mtc1	zero,$f18
    2420:	e6020164 	swc1	$f2,356(s0)
    2424:	331900f0 	andi	t9,t8,0xf0
    2428:	13210004 	beq	t9,at,243c <func_80A408D8+0xd4>
    242c:	e6120168 	swc1	$f18,360(s0)
    2430:	2408001e 	li	t0,30
    2434:	10000026 	b	24d0 <func_80A408D8+0x168>
    2438:	a6080212 	sh	t0,530(s0)
    243c:	86020212 	lh	v0,530(s0)
    2440:	3c050000 	lui	a1,0x0
    2444:	02002025 	move	a0,s0
    2448:	14400003 	bnez	v0,2458 <func_80A408D8+0xf0>
    244c:	2449ffff 	addiu	t1,v0,-1
    2450:	10000003 	b	2460 <func_80A408D8+0xf8>
    2454:	00001825 	move	v1,zero
    2458:	a6090212 	sh	t1,530(s0)
    245c:	86030212 	lh	v1,530(s0)
    2460:	14600005 	bnez	v1,2478 <func_80A408D8+0x110>
    2464:	24a50000 	addiu	a1,a1,0
    2468:	0c000000 	jal	0 <func_80A3E570>
    246c:	02002025 	move	a0,s0
    2470:	10000018 	b	24d4 <func_80A408D8+0x16c>
    2474:	8fbf0024 	lw	ra,36(sp)
    2478:	0c000000 	jal	0 <func_80A3E570>
    247c:	8fa5002c 	lw	a1,44(sp)
    2480:	50400014 	beqzl	v0,24d4 <func_80A408D8+0x16c>
    2484:	8fbf0024 	lw	ra,36(sp)
    2488:	0c000000 	jal	0 <func_80A3E570>
    248c:	02002025 	move	a0,s0
    2490:	3c070000 	lui	a3,0x0
    2494:	3c0a0000 	lui	t2,0x0
    2498:	24e70000 	addiu	a3,a3,0
    249c:	254a0000 	addiu	t2,t2,0
    24a0:	afaa0014 	sw	t2,20(sp)
    24a4:	afa70010 	sw	a3,16(sp)
    24a8:	240438fd 	li	a0,14589
    24ac:	260500e4 	addiu	a1,s0,228
    24b0:	0c000000 	jal	0 <func_80A3E570>
    24b4:	24060004 	li	a2,4
    24b8:	44802000 	mtc1	zero,$f4
    24bc:	3c050000 	lui	a1,0x0
    24c0:	24a50000 	addiu	a1,a1,0
    24c4:	02002025 	move	a0,s0
    24c8:	0c000000 	jal	0 <func_80A3E570>
    24cc:	e6040168 	swc1	$f4,360(s0)
    24d0:	8fbf0024 	lw	ra,36(sp)
    24d4:	8fb00020 	lw	s0,32(sp)
    24d8:	27bd0028 	addiu	sp,sp,40
    24dc:	03e00008 	jr	ra
    24e0:	00000000 	nop

000024e4 <func_80A40A54>:
    24e4:	27bdffe0 	addiu	sp,sp,-32
    24e8:	afb00018 	sw	s0,24(sp)
    24ec:	00808025 	move	s0,a0
    24f0:	afbf001c 	sw	ra,28(sp)
    24f4:	3c040601 	lui	a0,0x601
    24f8:	afa50024 	sw	a1,36(sp)
    24fc:	0c000000 	jal	0 <func_80A3E570>
    2500:	24840590 	addiu	a0,a0,1424
    2504:	44823000 	mtc1	v0,$f6
    2508:	3c014700 	lui	at,0x4700
    250c:	44812000 	mtc1	at,$f4
    2510:	46803220 	cvt.s.w	$f8,$f6
    2514:	c6100164 	lwc1	$f16,356(s0)
    2518:	46082283 	div.s	$f10,$f4,$f8
    251c:	460a8002 	mul.s	$f0,$f16,$f10
    2520:	4600048d 	trunc.w.s	$f18,$f0
    2524:	44049000 	mfc1	a0,$f18
    2528:	00000000 	nop
    252c:	00042400 	sll	a0,a0,0x10
    2530:	0c000000 	jal	0 <func_80A3E570>
    2534:	00042403 	sra	a0,a0,0x10
    2538:	e6000068 	swc1	$f0,104(s0)
    253c:	8fa50024 	lw	a1,36(sp)
    2540:	0c000000 	jal	0 <func_80A3E570>
    2544:	02002025 	move	a0,s0
    2548:	50400014 	beqzl	v0,259c <func_80A40A54+0xb8>
    254c:	8fbf001c 	lw	ra,28(sp)
    2550:	860f0218 	lh	t7,536(s0)
    2554:	02002025 	move	a0,s0
    2558:	55e00010 	bnezl	t7,259c <func_80A40A54+0xb8>
    255c:	8fbf001c 	lw	ra,28(sp)
    2560:	0c000000 	jal	0 <func_80A3E570>
    2564:	24050001 	li	a1,1
    2568:	3c040600 	lui	a0,0x600
    256c:	0c000000 	jal	0 <func_80A3E570>
    2570:	24844930 	addiu	a0,a0,18736
    2574:	44823000 	mtc1	v0,$f6
    2578:	44804000 	mtc1	zero,$f8
    257c:	3c050000 	lui	a1,0x0
    2580:	46803120 	cvt.s.w	$f4,$f6
    2584:	24a50000 	addiu	a1,a1,0
    2588:	02002025 	move	a0,s0
    258c:	e6080068 	swc1	$f8,104(s0)
    2590:	0c000000 	jal	0 <func_80A3E570>
    2594:	e6040164 	swc1	$f4,356(s0)
    2598:	8fbf001c 	lw	ra,28(sp)
    259c:	8fb00018 	lw	s0,24(sp)
    25a0:	27bd0020 	addiu	sp,sp,32
    25a4:	03e00008 	jr	ra
    25a8:	00000000 	nop

000025ac <func_80A40B1C>:
    25ac:	3c0e0000 	lui	t6,0x0
    25b0:	95ce0f14 	lhu	t6,3860(t6)
    25b4:	27bdffe8 	addiu	sp,sp,-24
    25b8:	afbf0014 	sw	ra,20(sp)
    25bc:	31cf0800 	andi	t7,t6,0x800
    25c0:	11e0000a 	beqz	t7,25ec <func_80A40B1C+0x40>
    25c4:	00000000 	nop
    25c8:	24050003 	li	a1,3
    25cc:	0c000000 	jal	0 <func_80A3E570>
    25d0:	afa40018 	sw	a0,24(sp)
    25d4:	3c050000 	lui	a1,0x0
    25d8:	8fa40018 	lw	a0,24(sp)
    25dc:	0c000000 	jal	0 <func_80A3E570>
    25e0:	24a50000 	addiu	a1,a1,0
    25e4:	10000004 	b	25f8 <func_80A40B1C+0x4c>
    25e8:	8fbf0014 	lw	ra,20(sp)
    25ec:	0c000000 	jal	0 <func_80A3E570>
    25f0:	00000000 	nop
    25f4:	8fbf0014 	lw	ra,20(sp)
    25f8:	27bd0018 	addiu	sp,sp,24
    25fc:	03e00008 	jr	ra
    2600:	00000000 	nop

00002604 <func_80A40B74>:
    2604:	27bdffd0 	addiu	sp,sp,-48
    2608:	afbf001c 	sw	ra,28(sp)
    260c:	afa50034 	sw	a1,52(sp)
    2610:	0c000000 	jal	0 <func_80A3E570>
    2614:	afa40030 	sw	a0,48(sp)
    2618:	10400009 	beqz	v0,2640 <func_80A40B74+0x3c>
    261c:	8fa40030 	lw	a0,48(sp)
    2620:	240e0002 	li	t6,2
    2624:	3c050000 	lui	a1,0x0
    2628:	a48e01e0 	sh	t6,480(a0)
    262c:	ac800118 	sw	zero,280(a0)
    2630:	0c000000 	jal	0 <func_80A3E570>
    2634:	24a50000 	addiu	a1,a1,0
    2638:	10000030 	b	26fc <func_80A40B74+0xf8>
    263c:	8fbf001c 	lw	ra,28(sp)
    2640:	8483001c 	lh	v1,28(a0)
    2644:	24010090 	li	at,144
    2648:	a480020c 	sh	zero,524(a0)
    264c:	306300f0 	andi	v1,v1,0xf0
    2650:	1461001a 	bne	v1,at,26bc <func_80A40B74+0xb8>
    2654:	3c0f0000 	lui	t7,0x0
    2658:	91ef002d 	lbu	t7,45(t7)
    265c:	3c020000 	lui	v0,0x0
    2660:	24010037 	li	at,55
    2664:	004f1021 	addu	v0,v0,t7
    2668:	90420074 	lbu	v0,116(v0)
    266c:	24180057 	li	t8,87
    2670:	24190001 	li	t9,1
    2674:	14410009 	bne	v0,at,269c <func_80A40B74+0x98>
    2678:	3c080000 	lui	t0,0x0
    267c:	afb80024 	sw	t8,36(sp)
    2680:	a499020c 	sh	t9,524(a0)
    2684:	9108002d 	lbu	t0,45(t0)
    2688:	8483001c 	lh	v1,28(a0)
    268c:	3c020000 	lui	v0,0x0
    2690:	00481021 	addu	v0,v0,t0
    2694:	90420074 	lbu	v0,116(v0)
    2698:	306300f0 	andi	v1,v1,0xf0
    269c:	24010036 	li	at,54
    26a0:	14410002 	bne	v0,at,26ac <func_80A40B74+0xa8>
    26a4:	24090026 	li	t1,38
    26a8:	afa90024 	sw	t1,36(sp)
    26ac:	24010033 	li	at,51
    26b0:	14410002 	bne	v0,at,26bc <func_80A40B74+0xb8>
    26b4:	240a0023 	li	t2,35
    26b8:	afaa0024 	sw	t2,36(sp)
    26bc:	14600003 	bnez	v1,26cc <func_80A40B74+0xc8>
    26c0:	3c013f80 	lui	at,0x3f80
    26c4:	240b002c 	li	t3,44
    26c8:	afab0024 	sw	t3,36(sp)
    26cc:	44816000 	mtc1	at,$f12
    26d0:	c4800094 	lwc1	$f0,148(a0)
    26d4:	c4840090 	lwc1	$f4,144(a0)
    26d8:	8fa50034 	lw	a1,52(sp)
    26dc:	46000005 	abs.s	$f0,$f0
    26e0:	460c2080 	add.s	$f2,$f4,$f12
    26e4:	8fa60024 	lw	a2,36(sp)
    26e8:	460c0180 	add.s	$f6,$f0,$f12
    26ec:	44071000 	mfc1	a3,$f2
    26f0:	0c000000 	jal	0 <func_80A3E570>
    26f4:	e7a60010 	swc1	$f6,16(sp)
    26f8:	8fbf001c 	lw	ra,28(sp)
    26fc:	27bd0030 	addiu	sp,sp,48
    2700:	03e00008 	jr	ra
    2704:	00000000 	nop

00002708 <func_80A40C78>:
    2708:	27bdffe0 	addiu	sp,sp,-32
    270c:	afbf001c 	sw	ra,28(sp)
    2710:	afb00018 	sw	s0,24(sp)
    2714:	848e01e0 	lh	t6,480(a0)
    2718:	24010003 	li	at,3
    271c:	00808025 	move	s0,a0
    2720:	15c1002d 	bne	t6,at,27d8 <func_80A40C78+0xd0>
    2724:	00a03025 	move	a2,a1
    2728:	3c050000 	lui	a1,0x0
    272c:	24a50000 	addiu	a1,a1,0
    2730:	0c000000 	jal	0 <func_80A3E570>
    2734:	afa60024 	sw	a2,36(sp)
    2738:	860f001c 	lh	t7,28(s0)
    273c:	24010090 	li	at,144
    2740:	8fa60024 	lw	a2,36(sp)
    2744:	31f800f0 	andi	t8,t7,0xf0
    2748:	53010004 	beql	t8,at,275c <func_80A40C78+0x54>
    274c:	8619020c 	lh	t9,524(s0)
    2750:	10000021 	b	27d8 <func_80A40C78+0xd0>
    2754:	a60001e0 	sh	zero,480(s0)
    2758:	8619020c 	lh	t9,524(s0)
    275c:	24080001 	li	t0,1
    2760:	3c010000 	lui	at,0x0
    2764:	13200004 	beqz	t9,2778 <func_80A40C78+0x70>
    2768:	3c090000 	lui	t1,0x0
    276c:	a60001e0 	sh	zero,480(s0)
    2770:	10000019 	b	27d8 <func_80A40C78+0xd0>
    2774:	a028003e 	sb	t0,62(at)
    2778:	9129002d 	lbu	t1,45(t1)
    277c:	3c020000 	lui	v0,0x0
    2780:	24010034 	li	at,52
    2784:	00491021 	addu	v0,v0,t1
    2788:	90420074 	lbu	v0,116(v0)
    278c:	240a3058 	li	t2,12376
    2790:	3145ffff 	andi	a1,t2,0xffff
    2794:	14410006 	bne	v0,at,27b0 <func_80A40C78+0xa8>
    2798:	00c02025 	move	a0,a2
    279c:	0c000000 	jal	0 <func_80A3E570>
    27a0:	a60a010e 	sh	t2,270(s0)
    27a4:	240b0001 	li	t3,1
    27a8:	1000000b 	b	27d8 <func_80A40C78+0xd0>
    27ac:	a60b01e0 	sh	t3,480(s0)
    27b0:	24010037 	li	at,55
    27b4:	14410008 	bne	v0,at,27d8 <func_80A40C78+0xd0>
    27b8:	240c305c 	li	t4,12380
    27bc:	a60c010e 	sh	t4,270(s0)
    27c0:	00c02025 	move	a0,a2
    27c4:	0c000000 	jal	0 <func_80A3E570>
    27c8:	3185ffff 	andi	a1,t4,0xffff
    27cc:	240d0001 	li	t5,1
    27d0:	0c000000 	jal	0 <func_80A3E570>
    27d4:	a60d01e0 	sh	t5,480(s0)
    27d8:	8fbf001c 	lw	ra,28(sp)
    27dc:	8fb00018 	lw	s0,24(sp)
    27e0:	27bd0020 	addiu	sp,sp,32
    27e4:	03e00008 	jr	ra
    27e8:	00000000 	nop

000027ec <func_80A40D5C>:
    27ec:	27bdffe8 	addiu	sp,sp,-24
    27f0:	afbf0014 	sw	ra,20(sp)
    27f4:	8482021e 	lh	v0,542(a0)
    27f8:	00803025 	move	a2,a0
    27fc:	00a03825 	move	a3,a1
    2800:	14400003 	bnez	v0,2810 <func_80A40D5C+0x24>
    2804:	244effff 	addiu	t6,v0,-1
    2808:	10000003 	b	2818 <func_80A40D5C+0x2c>
    280c:	00001825 	move	v1,zero
    2810:	a4ce021e 	sh	t6,542(a2)
    2814:	84c3021e 	lh	v1,542(a2)
    2818:	1460000c 	bnez	v1,284c <func_80A40D5C+0x60>
    281c:	240f305a 	li	t7,12378
    2820:	a4cf010e 	sh	t7,270(a2)
    2824:	afa60018 	sw	a2,24(sp)
    2828:	00e02025 	move	a0,a3
    282c:	0c000000 	jal	0 <func_80A3E570>
    2830:	31e5ffff 	andi	a1,t7,0xffff
    2834:	8fa40018 	lw	a0,24(sp)
    2838:	24180001 	li	t8,1
    283c:	3c050000 	lui	a1,0x0
    2840:	24a50000 	addiu	a1,a1,0
    2844:	0c000000 	jal	0 <func_80A3E570>
    2848:	a49801e0 	sh	t8,480(a0)
    284c:	8fbf0014 	lw	ra,20(sp)
    2850:	27bd0018 	addiu	sp,sp,24
    2854:	03e00008 	jr	ra
    2858:	00000000 	nop

0000285c <func_80A40DCC>:
    285c:	27bdffe0 	addiu	sp,sp,-32
    2860:	afbf001c 	sw	ra,28(sp)
    2864:	afb00018 	sw	s0,24(sp)
    2868:	afa50024 	sw	a1,36(sp)
    286c:	848e01e0 	lh	t6,480(a0)
    2870:	24010002 	li	at,2
    2874:	00808025 	move	s0,a0
    2878:	55c10014 	bnel	t6,at,28cc <func_80A40DCC+0x70>
    287c:	8fbf001c 	lw	ra,28(sp)
    2880:	0c000000 	jal	0 <func_80A3E570>
    2884:	24050001 	li	a1,1
    2888:	3c040600 	lui	a0,0x600
    288c:	0c000000 	jal	0 <func_80A3E570>
    2890:	24844930 	addiu	a0,a0,18736
    2894:	44822000 	mtc1	v0,$f4
    2898:	00000000 	nop
    289c:	468021a0 	cvt.s.w	$f6,$f4
    28a0:	e6060164 	swc1	$f6,356(s0)
    28a4:	0c000000 	jal	0 <func_80A3E570>
    28a8:	8fa40024 	lw	a0,36(sp)
    28ac:	3c050000 	lui	a1,0x0
    28b0:	24a50000 	addiu	a1,a1,0
    28b4:	0c000000 	jal	0 <func_80A3E570>
    28b8:	02002025 	move	a0,s0
    28bc:	02002025 	move	a0,s0
    28c0:	0c000000 	jal	0 <func_80A3E570>
    28c4:	8fa50024 	lw	a1,36(sp)
    28c8:	8fbf001c 	lw	ra,28(sp)
    28cc:	8fb00018 	lw	s0,24(sp)
    28d0:	27bd0020 	addiu	sp,sp,32
    28d4:	03e00008 	jr	ra
    28d8:	00000000 	nop

000028dc <EnGo_Update>:
    28dc:	27bdffc8 	addiu	sp,sp,-56
    28e0:	afb0001c 	sw	s0,28(sp)
    28e4:	00808025 	move	s0,a0
    28e8:	afb10020 	sw	s1,32(sp)
    28ec:	00a08825 	move	s1,a1
    28f0:	afbf0024 	sw	ra,36(sp)
    28f4:	26060194 	addiu	a2,s0,404
    28f8:	00c02825 	move	a1,a2
    28fc:	0c000000 	jal	0 <func_80A3E570>
    2900:	afa6002c 	sw	a2,44(sp)
    2904:	3c010001 	lui	at,0x1
    2908:	34211e60 	ori	at,at,0x1e60
    290c:	8fa6002c 	lw	a2,44(sp)
    2910:	02212821 	addu	a1,s1,at
    2914:	0c000000 	jal	0 <func_80A3E570>
    2918:	02202025 	move	a0,s1
    291c:	0c000000 	jal	0 <func_80A3E570>
    2920:	2604014c 	addiu	a0,s0,332
    2924:	8e020190 	lw	v0,400(s0)
    2928:	3c0e0000 	lui	t6,0x0
    292c:	25ce0000 	addiu	t6,t6,0
    2930:	11c20006 	beq	t6,v0,294c <EnGo_Update+0x70>
    2934:	3c0f0000 	lui	t7,0x0
    2938:	25ef0000 	addiu	t7,t7,0
    293c:	11e20003 	beq	t7,v0,294c <EnGo_Update+0x70>
    2940:	3c180000 	lui	t8,0x0
    2944:	27180000 	addiu	t8,t8,0
    2948:	17020005 	bne	t8,v0,2960 <EnGo_Update+0x84>
    294c:	02202025 	move	a0,s1
    2950:	26050220 	addiu	a1,s0,544
    2954:	26060244 	addiu	a2,s0,580
    2958:	0c000000 	jal	0 <func_80A3E570>
    295c:	24070012 	li	a3,18
    2960:	0c000000 	jal	0 <func_80A3E570>
    2964:	02002025 	move	a0,s0
    2968:	861901e0 	lh	t9,480(s0)
    296c:	57200004 	bnezl	t9,2980 <EnGo_Update+0xa4>
    2970:	44800000 	mtc1	zero,$f0
    2974:	0c000000 	jal	0 <func_80A3E570>
    2978:	02002025 	move	a0,s0
    297c:	44800000 	mtc1	zero,$f0
    2980:	24080004 	li	t0,4
    2984:	afa80014 	sw	t0,20(sp)
    2988:	44060000 	mfc1	a2,$f0
    298c:	44070000 	mfc1	a3,$f0
    2990:	02202025 	move	a0,s1
    2994:	02002825 	move	a1,s0
    2998:	0c000000 	jal	0 <func_80A3E570>
    299c:	e7a00010 	swc1	$f0,16(sp)
    29a0:	0c000000 	jal	0 <func_80A3E570>
    29a4:	02002025 	move	a0,s0
    29a8:	02002025 	move	a0,s0
    29ac:	0c000000 	jal	0 <func_80A3E570>
    29b0:	02202825 	move	a1,s1
    29b4:	8e190190 	lw	t9,400(s0)
    29b8:	02002025 	move	a0,s0
    29bc:	02202825 	move	a1,s1
    29c0:	0320f809 	jalr	t9
    29c4:	00000000 	nop
    29c8:	02002025 	move	a0,s0
    29cc:	0c000000 	jal	0 <func_80A3E570>
    29d0:	02202825 	move	a1,s1
    29d4:	8fbf0024 	lw	ra,36(sp)
    29d8:	8fb0001c 	lw	s0,28(sp)
    29dc:	8fb10020 	lw	s1,32(sp)
    29e0:	03e00008 	jr	ra
    29e4:	27bd0038 	addiu	sp,sp,56

000029e8 <func_80A40F58>:
    29e8:	27bdffb0 	addiu	sp,sp,-80
    29ec:	3c0f0000 	lui	t7,0x0
    29f0:	afbf001c 	sw	ra,28(sp)
    29f4:	afb00018 	sw	s0,24(sp)
    29f8:	afa40050 	sw	a0,80(sp)
    29fc:	afa50054 	sw	a1,84(sp)
    2a00:	25ef0000 	addiu	t7,t7,0
    2a04:	8df90000 	lw	t9,0(t7)
    2a08:	27ae0044 	addiu	t6,sp,68
    2a0c:	8df80004 	lw	t8,4(t7)
    2a10:	add90000 	sw	t9,0(t6)
    2a14:	8df90008 	lw	t9,8(t7)
    2a18:	add80004 	sw	t8,4(t6)
    2a1c:	3c060000 	lui	a2,0x0
    2a20:	add90008 	sw	t9,8(t6)
    2a24:	8fa80054 	lw	t0,84(sp)
    2a28:	24c60000 	addiu	a2,a2,0
    2a2c:	27a40030 	addiu	a0,sp,48
    2a30:	8d050000 	lw	a1,0(t0)
    2a34:	24070910 	li	a3,2320
    2a38:	0c000000 	jal	0 <func_80A3E570>
    2a3c:	00a08025 	move	s0,a1
    2a40:	0c000000 	jal	0 <func_80A3E570>
    2a44:	00000000 	nop
    2a48:	8fa90054 	lw	t1,84(sp)
    2a4c:	0c000000 	jal	0 <func_80A3E570>
    2a50:	8d240000 	lw	a0,0(t1)
    2a54:	8e0202c0 	lw	v0,704(s0)
    2a58:	3c0bda38 	lui	t3,0xda38
    2a5c:	356b0003 	ori	t3,t3,0x3
    2a60:	244a0008 	addiu	t2,v0,8
    2a64:	ae0a02c0 	sw	t2,704(s0)
    2a68:	ac4b0000 	sw	t3,0(v0)
    2a6c:	8fac0054 	lw	t4,84(sp)
    2a70:	3c050000 	lui	a1,0x0
    2a74:	24a50000 	addiu	a1,a1,0
    2a78:	8d840000 	lw	a0,0(t4)
    2a7c:	24060916 	li	a2,2326
    2a80:	0c000000 	jal	0 <func_80A3E570>
    2a84:	afa2002c 	sw	v0,44(sp)
    2a88:	8fa3002c 	lw	v1,44(sp)
    2a8c:	3c0f0601 	lui	t7,0x601
    2a90:	25efbd80 	addiu	t7,t7,-17024
    2a94:	ac620004 	sw	v0,4(v1)
    2a98:	8e0202c0 	lw	v0,704(s0)
    2a9c:	3c0ede00 	lui	t6,0xde00
    2aa0:	27a40044 	addiu	a0,sp,68
    2aa4:	244d0008 	addiu	t5,v0,8
    2aa8:	ae0d02c0 	sw	t5,704(s0)
    2aac:	ac4f0004 	sw	t7,4(v0)
    2ab0:	ac4e0000 	sw	t6,0(v0)
    2ab4:	8fa50050 	lw	a1,80(sp)
    2ab8:	0c000000 	jal	0 <func_80A3E570>
    2abc:	24a50038 	addiu	a1,a1,56
    2ac0:	0c000000 	jal	0 <func_80A3E570>
    2ac4:	00000000 	nop
    2ac8:	8fb80054 	lw	t8,84(sp)
    2acc:	3c060000 	lui	a2,0x0
    2ad0:	24c60000 	addiu	a2,a2,0
    2ad4:	27a40030 	addiu	a0,sp,48
    2ad8:	24070925 	li	a3,2341
    2adc:	0c000000 	jal	0 <func_80A3E570>
    2ae0:	8f050000 	lw	a1,0(t8)
    2ae4:	8fbf001c 	lw	ra,28(sp)
    2ae8:	8fb00018 	lw	s0,24(sp)
    2aec:	27bd0050 	addiu	sp,sp,80
    2af0:	03e00008 	jr	ra
    2af4:	00000000 	nop

00002af8 <func_80A41068>:
    2af8:	27bdffb0 	addiu	sp,sp,-80
    2afc:	3c0f0000 	lui	t7,0x0
    2b00:	afbf001c 	sw	ra,28(sp)
    2b04:	afb10018 	sw	s1,24(sp)
    2b08:	afb00014 	sw	s0,20(sp)
    2b0c:	afa40050 	sw	a0,80(sp)
    2b10:	25ef0000 	addiu	t7,t7,0
    2b14:	8df90000 	lw	t9,0(t7)
    2b18:	27ae0044 	addiu	t6,sp,68
    2b1c:	8df80004 	lw	t8,4(t7)
    2b20:	add90000 	sw	t9,0(t6)
    2b24:	8df90008 	lw	t9,8(t7)
    2b28:	00a08825 	move	s1,a1
    2b2c:	add80004 	sw	t8,4(t6)
    2b30:	add90008 	sw	t9,8(t6)
    2b34:	8ca50000 	lw	a1,0(a1)
    2b38:	3c060000 	lui	a2,0x0
    2b3c:	24c60000 	addiu	a2,a2,0
    2b40:	27a40030 	addiu	a0,sp,48
    2b44:	24070933 	li	a3,2355
    2b48:	0c000000 	jal	0 <func_80A3E570>
    2b4c:	00a08025 	move	s0,a1
    2b50:	0c000000 	jal	0 <func_80A3E570>
    2b54:	00000000 	nop
    2b58:	0c000000 	jal	0 <func_80A3E570>
    2b5c:	8e240000 	lw	a0,0(s1)
    2b60:	8fa20050 	lw	v0,80(sp)
    2b64:	8e28009c 	lw	t0,156(s1)
    2b68:	00002825 	move	a1,zero
    2b6c:	c4440068 	lwc1	$f4,104(v0)
    2b70:	24070001 	li	a3,1
    2b74:	844600b8 	lh	a2,184(v0)
    2b78:	4600218d 	trunc.w.s	$f6,$f4
    2b7c:	440a3000 	mfc1	t2,$f6
    2b80:	00000000 	nop
    2b84:	000a5c00 	sll	t3,t2,0x10
    2b88:	000b6403 	sra	t4,t3,0x10
    2b8c:	000c6880 	sll	t5,t4,0x2
    2b90:	01ac6823 	subu	t5,t5,t4
    2b94:	000d6880 	sll	t5,t5,0x2
    2b98:	01ac6823 	subu	t5,t5,t4
    2b9c:	000d6900 	sll	t5,t5,0x4
    2ba0:	01ac6823 	subu	t5,t5,t4
    2ba4:	000d68c0 	sll	t5,t5,0x3
    2ba8:	010d0019 	multu	t0,t5
    2bac:	00002012 	mflo	a0
    2bb0:	00042400 	sll	a0,a0,0x10
    2bb4:	0c000000 	jal	0 <func_80A3E570>
    2bb8:	00042403 	sra	a0,a0,0x10
    2bbc:	8e0202c0 	lw	v0,704(s0)
    2bc0:	3c0fda38 	lui	t7,0xda38
    2bc4:	35ef0003 	ori	t7,t7,0x3
    2bc8:	244e0008 	addiu	t6,v0,8
    2bcc:	ae0e02c0 	sw	t6,704(s0)
    2bd0:	ac4f0000 	sw	t7,0(v0)
    2bd4:	8e240000 	lw	a0,0(s1)
    2bd8:	3c050000 	lui	a1,0x0
    2bdc:	24a50000 	addiu	a1,a1,0
    2be0:	24060940 	li	a2,2368
    2be4:	0c000000 	jal	0 <func_80A3E570>
    2be8:	afa2002c 	sw	v0,44(sp)
    2bec:	8fa3002c 	lw	v1,44(sp)
    2bf0:	3c090601 	lui	t1,0x601
    2bf4:	2529c140 	addiu	t1,t1,-16064
    2bf8:	ac620004 	sw	v0,4(v1)
    2bfc:	8e0202c0 	lw	v0,704(s0)
    2c00:	3c19de00 	lui	t9,0xde00
    2c04:	27a40044 	addiu	a0,sp,68
    2c08:	24580008 	addiu	t8,v0,8
    2c0c:	ae1802c0 	sw	t8,704(s0)
    2c10:	ac490004 	sw	t1,4(v0)
    2c14:	ac590000 	sw	t9,0(v0)
    2c18:	8fa50050 	lw	a1,80(sp)
    2c1c:	0c000000 	jal	0 <func_80A3E570>
    2c20:	24a50038 	addiu	a1,a1,56
    2c24:	0c000000 	jal	0 <func_80A3E570>
    2c28:	00000000 	nop
    2c2c:	3c060000 	lui	a2,0x0
    2c30:	24c60000 	addiu	a2,a2,0
    2c34:	27a40030 	addiu	a0,sp,48
    2c38:	8e250000 	lw	a1,0(s1)
    2c3c:	0c000000 	jal	0 <func_80A3E570>
    2c40:	2407094f 	li	a3,2383
    2c44:	8fbf001c 	lw	ra,28(sp)
    2c48:	8fb00014 	lw	s0,20(sp)
    2c4c:	8fb10018 	lw	s1,24(sp)
    2c50:	03e00008 	jr	ra
    2c54:	27bd0050 	addiu	sp,sp,80

00002c58 <func_80A411C8>:
    2c58:	27bdffc8 	addiu	sp,sp,-56
    2c5c:	afb00018 	sw	s0,24(sp)
    2c60:	24010011 	li	at,17
    2c64:	00a08025 	move	s0,a1
    2c68:	afbf001c 	sw	ra,28(sp)
    2c6c:	afa40038 	sw	a0,56(sp)
    2c70:	afa60040 	sw	a2,64(sp)
    2c74:	14a1002d 	bne	a1,at,2d2c <func_80A411C8+0xd4>
    2c78:	afa70044 	sw	a3,68(sp)
    2c7c:	44807000 	mtc1	zero,$f14
    2c80:	3c01452f 	lui	at,0x452f
    2c84:	44816000 	mtc1	at,$f12
    2c88:	44067000 	mfc1	a2,$f14
    2c8c:	0c000000 	jal	0 <func_80A3E570>
    2c90:	24070001 	li	a3,1
    2c94:	8faf004c 	lw	t7,76(sp)
    2c98:	27ae002c 	addiu	t6,sp,44
    2c9c:	3c014700 	lui	at,0x4700
    2ca0:	89f901e8 	lwl	t9,488(t7)
    2ca4:	99f901eb 	lwr	t9,491(t7)
    2ca8:	44814000 	mtc1	at,$f8
    2cac:	3c010000 	lui	at,0x0
    2cb0:	add90000 	sw	t9,0(t6)
    2cb4:	95f901ec 	lhu	t9,492(t7)
    2cb8:	24050001 	li	a1,1
    2cbc:	a5d90004 	sh	t9,4(t6)
    2cc0:	87a8002e 	lh	t0,46(sp)
    2cc4:	c4300000 	lwc1	$f16,0(at)
    2cc8:	44882000 	mtc1	t0,$f4
    2ccc:	00000000 	nop
    2cd0:	468021a0 	cvt.s.w	$f6,$f4
    2cd4:	46083283 	div.s	$f10,$f6,$f8
    2cd8:	46105302 	mul.s	$f12,$f10,$f16
    2cdc:	0c000000 	jal	0 <func_80A3E570>
    2ce0:	00000000 	nop
    2ce4:	87a9002c 	lh	t1,44(sp)
    2ce8:	3c014700 	lui	at,0x4700
    2cec:	44813000 	mtc1	at,$f6
    2cf0:	44899000 	mtc1	t1,$f18
    2cf4:	3c010000 	lui	at,0x0
    2cf8:	c42a0000 	lwc1	$f10,0(at)
    2cfc:	46809120 	cvt.s.w	$f4,$f18
    2d00:	24050001 	li	a1,1
    2d04:	46062203 	div.s	$f8,$f4,$f6
    2d08:	460a4302 	mul.s	$f12,$f8,$f10
    2d0c:	0c000000 	jal	0 <func_80A3E570>
    2d10:	00000000 	nop
    2d14:	44807000 	mtc1	zero,$f14
    2d18:	3c01c52f 	lui	at,0xc52f
    2d1c:	44816000 	mtc1	at,$f12
    2d20:	44067000 	mfc1	a2,$f14
    2d24:	0c000000 	jal	0 <func_80A3E570>
    2d28:	24070001 	li	a3,1
    2d2c:	2401000a 	li	at,10
    2d30:	16010020 	bne	s0,at,2db4 <func_80A411C8+0x15c>
    2d34:	8fab004c 	lw	t3,76(sp)
    2d38:	896d01ee 	lwl	t5,494(t3)
    2d3c:	996d01f1 	lwr	t5,497(t3)
    2d40:	27aa002c 	addiu	t2,sp,44
    2d44:	3c014700 	lui	at,0x4700
    2d48:	ad4d0000 	sw	t5,0(t2)
    2d4c:	956d01f2 	lhu	t5,498(t3)
    2d50:	44812000 	mtc1	at,$f4
    2d54:	3c010000 	lui	at,0x0
    2d58:	a54d0004 	sh	t5,4(t2)
    2d5c:	87ae002e 	lh	t6,46(sp)
    2d60:	c4280000 	lwc1	$f8,0(at)
    2d64:	24050001 	li	a1,1
    2d68:	448e8000 	mtc1	t6,$f16
    2d6c:	00000000 	nop
    2d70:	468084a0 	cvt.s.w	$f18,$f16
    2d74:	46049183 	div.s	$f6,$f18,$f4
    2d78:	46083302 	mul.s	$f12,$f6,$f8
    2d7c:	0c000000 	jal	0 <func_80A3E570>
    2d80:	00000000 	nop
    2d84:	87af002c 	lh	t7,44(sp)
    2d88:	3c014700 	lui	at,0x4700
    2d8c:	44819000 	mtc1	at,$f18
    2d90:	448f5000 	mtc1	t7,$f10
    2d94:	3c010000 	lui	at,0x0
    2d98:	c4260000 	lwc1	$f6,0(at)
    2d9c:	46805420 	cvt.s.w	$f16,$f10
    2da0:	24050001 	li	a1,1
    2da4:	46128103 	div.s	$f4,$f16,$f18
    2da8:	46062302 	mul.s	$f12,$f4,$f6
    2dac:	0c000000 	jal	0 <func_80A3E570>
    2db0:	00000000 	nop
    2db4:	2401000a 	li	at,10
    2db8:	12010005 	beq	s0,at,2dd0 <func_80A411C8+0x178>
    2dbc:	8fb8004c 	lw	t8,76(sp)
    2dc0:	2401000b 	li	at,11
    2dc4:	12010002 	beq	s0,at,2dd0 <func_80A411C8+0x178>
    2dc8:	2401000e 	li	at,14
    2dcc:	16010022 	bne	s0,at,2e58 <func_80A411C8+0x200>
    2dd0:	0010c840 	sll	t9,s0,0x1
    2dd4:	03191821 	addu	v1,t8,t9
    2dd8:	84640220 	lh	a0,544(v1)
    2ddc:	0c000000 	jal	0 <func_80A3E570>
    2de0:	afa30024 	sw	v1,36(sp)
    2de4:	8fa20048 	lw	v0,72(sp)
    2de8:	3c014348 	lui	at,0x4348
    2dec:	44818000 	mtc1	at,$f16
    2df0:	84480002 	lh	t0,2(v0)
    2df4:	8fa30024 	lw	v1,36(sp)
    2df8:	46100482 	mul.s	$f18,$f0,$f16
    2dfc:	44884000 	mtc1	t0,$f8
    2e00:	00000000 	nop
    2e04:	468042a0 	cvt.s.w	$f10,$f8
    2e08:	46125100 	add.s	$f4,$f10,$f18
    2e0c:	4600218d 	trunc.w.s	$f6,$f4
    2e10:	440a3000 	mfc1	t2,$f6
    2e14:	00000000 	nop
    2e18:	a44a0002 	sh	t2,2(v0)
    2e1c:	0c000000 	jal	0 <func_80A3E570>
    2e20:	84640244 	lh	a0,580(v1)
    2e24:	8fa20048 	lw	v0,72(sp)
    2e28:	3c014348 	lui	at,0x4348
    2e2c:	44815000 	mtc1	at,$f10
    2e30:	844b0004 	lh	t3,4(v0)
    2e34:	460a0482 	mul.s	$f18,$f0,$f10
    2e38:	448b4000 	mtc1	t3,$f8
    2e3c:	00000000 	nop
    2e40:	46804420 	cvt.s.w	$f16,$f8
    2e44:	46128100 	add.s	$f4,$f16,$f18
    2e48:	4600218d 	trunc.w.s	$f6,$f4
    2e4c:	440d3000 	mfc1	t5,$f6
    2e50:	00000000 	nop
    2e54:	a44d0004 	sh	t5,4(v0)
    2e58:	8fbf001c 	lw	ra,28(sp)
    2e5c:	8fb00018 	lw	s0,24(sp)
    2e60:	27bd0038 	addiu	sp,sp,56
    2e64:	03e00008 	jr	ra
    2e68:	00001025 	move	v0,zero

00002e6c <func_80A413DC>:
    2e6c:	27bdffd8 	addiu	sp,sp,-40
    2e70:	3c0e0000 	lui	t6,0x0
    2e74:	afbf0014 	sw	ra,20(sp)
    2e78:	afa40028 	sw	a0,40(sp)
    2e7c:	afa60030 	sw	a2,48(sp)
    2e80:	afa70034 	sw	a3,52(sp)
    2e84:	25ce0000 	addiu	t6,t6,0
    2e88:	8dd80000 	lw	t8,0(t6)
    2e8c:	27a40018 	addiu	a0,sp,24
    2e90:	24010011 	li	at,17
    2e94:	ac980000 	sw	t8,0(a0)
    2e98:	8dcf0004 	lw	t7,4(t6)
    2e9c:	ac8f0004 	sw	t7,4(a0)
    2ea0:	8dd80008 	lw	t8,8(t6)
    2ea4:	14a10004 	bne	a1,at,2eb8 <func_80A413DC+0x4c>
    2ea8:	ac980008 	sw	t8,8(a0)
    2eac:	8fa50038 	lw	a1,56(sp)
    2eb0:	0c000000 	jal	0 <func_80A3E570>
    2eb4:	24a50038 	addiu	a1,a1,56
    2eb8:	8fbf0014 	lw	ra,20(sp)
    2ebc:	27bd0028 	addiu	sp,sp,40
    2ec0:	03e00008 	jr	ra
    2ec4:	00000000 	nop

00002ec8 <EnGo_Draw>:
    2ec8:	27bdffa8 	addiu	sp,sp,-88
    2ecc:	afb10028 	sw	s1,40(sp)
    2ed0:	00a08825 	move	s1,a1
    2ed4:	afbf002c 	sw	ra,44(sp)
    2ed8:	afb00024 	sw	s0,36(sp)
    2edc:	8ca50000 	lw	a1,0(a1)
    2ee0:	00808025 	move	s0,a0
    2ee4:	3c060000 	lui	a2,0x0
    2ee8:	24c60000 	addiu	a2,a2,0
    2eec:	27a40040 	addiu	a0,sp,64
    2ef0:	240709af 	li	a3,2479
    2ef4:	0c000000 	jal	0 <func_80A3E570>
    2ef8:	afa50050 	sw	a1,80(sp)
    2efc:	0c000000 	jal	0 <func_80A3E570>
    2f00:	02002025 	move	a0,s0
    2f04:	0c000000 	jal	0 <func_80A3E570>
    2f08:	00000000 	nop
    2f0c:	02002025 	move	a0,s0
    2f10:	0c000000 	jal	0 <func_80A3E570>
    2f14:	02202825 	move	a1,s1
    2f18:	0c000000 	jal	0 <func_80A3E570>
    2f1c:	00000000 	nop
    2f20:	8e020190 	lw	v0,400(s0)
    2f24:	3c0e0000 	lui	t6,0x0
    2f28:	25ce0000 	addiu	t6,t6,0
    2f2c:	15c20006 	bne	t6,v0,2f48 <EnGo_Draw+0x80>
    2f30:	3c0f0000 	lui	t7,0x0
    2f34:	02002025 	move	a0,s0
    2f38:	0c000000 	jal	0 <func_80A3E570>
    2f3c:	02202825 	move	a1,s1
    2f40:	10000050 	b	3084 <EnGo_Draw+0x1bc>
    2f44:	8fbf002c 	lw	ra,44(sp)
    2f48:	25ef0000 	addiu	t7,t7,0
    2f4c:	11e20008 	beq	t7,v0,2f70 <EnGo_Draw+0xa8>
    2f50:	3c030000 	lui	v1,0x0
    2f54:	24630000 	addiu	v1,v1,0
    2f58:	10620005 	beq	v1,v0,2f70 <EnGo_Draw+0xa8>
    2f5c:	3c180000 	lui	t8,0x0
    2f60:	27180000 	addiu	t8,t8,0
    2f64:	53020003 	beql	t8,v0,2f74 <EnGo_Draw+0xac>
    2f68:	02002025 	move	a0,s0
    2f6c:	14620005 	bne	v1,v0,2f84 <EnGo_Draw+0xbc>
    2f70:	02002025 	move	a0,s0
    2f74:	0c000000 	jal	0 <func_80A3E570>
    2f78:	02202825 	move	a1,s1
    2f7c:	10000041 	b	3084 <EnGo_Draw+0x1bc>
    2f80:	8fbf002c 	lw	ra,44(sp)
    2f84:	0c000000 	jal	0 <func_80A3E570>
    2f88:	8e240000 	lw	a0,0(s1)
    2f8c:	8fa50050 	lw	a1,80(sp)
    2f90:	3c040601 	lui	a0,0x601
    2f94:	2484ce80 	addiu	a0,a0,-12672
    2f98:	8ca302c0 	lw	v1,704(a1)
    2f9c:	00045100 	sll	t2,a0,0x4
    2fa0:	000a5f02 	srl	t3,t2,0x1c
    2fa4:	3c060000 	lui	a2,0x0
    2fa8:	3c09db06 	lui	t1,0xdb06
    2fac:	24790008 	addiu	t9,v1,8
    2fb0:	35290020 	ori	t1,t1,0x20
    2fb4:	24c60000 	addiu	a2,a2,0
    2fb8:	000b6080 	sll	t4,t3,0x2
    2fbc:	acb902c0 	sw	t9,704(a1)
    2fc0:	00cc6821 	addu	t5,a2,t4
    2fc4:	ac690000 	sw	t1,0(v1)
    2fc8:	8dae0000 	lw	t6,0(t5)
    2fcc:	3c0700ff 	lui	a3,0xff
    2fd0:	34e7ffff 	ori	a3,a3,0xffff
    2fd4:	00877824 	and	t7,a0,a3
    2fd8:	3c088000 	lui	t0,0x8000
    2fdc:	01cfc021 	addu	t8,t6,t7
    2fe0:	0308c821 	addu	t9,t8,t0
    2fe4:	ac790004 	sw	t9,4(v1)
    2fe8:	8ca302c0 	lw	v1,704(a1)
    2fec:	3c040601 	lui	a0,0x601
    2ff0:	2484de80 	addiu	a0,a0,-8576
    2ff4:	00045900 	sll	t3,a0,0x4
    2ff8:	000b6702 	srl	t4,t3,0x1c
    2ffc:	3c0adb06 	lui	t2,0xdb06
    3000:	24690008 	addiu	t1,v1,8
    3004:	354a0024 	ori	t2,t2,0x24
    3008:	000c6880 	sll	t5,t4,0x2
    300c:	aca902c0 	sw	t1,704(a1)
    3010:	00cd7021 	addu	t6,a2,t5
    3014:	ac6a0000 	sw	t2,0(v1)
    3018:	8dcf0000 	lw	t7,0(t6)
    301c:	0087c024 	and	t8,a0,a3
    3020:	3c0a0000 	lui	t2,0x0
    3024:	01f8c821 	addu	t9,t7,t8
    3028:	03284821 	addu	t1,t9,t0
    302c:	ac690004 	sw	t1,4(v1)
    3030:	9207014e 	lbu	a3,334(s0)
    3034:	8e06016c 	lw	a2,364(s0)
    3038:	8e050150 	lw	a1,336(s0)
    303c:	3c0b0000 	lui	t3,0x0
    3040:	256b0000 	addiu	t3,t3,0
    3044:	254a0000 	addiu	t2,t2,0
    3048:	afaa0010 	sw	t2,16(sp)
    304c:	afab0014 	sw	t3,20(sp)
    3050:	afb00018 	sw	s0,24(sp)
    3054:	0c000000 	jal	0 <func_80A3E570>
    3058:	02202025 	move	a0,s1
    305c:	3c060000 	lui	a2,0x0
    3060:	24c60000 	addiu	a2,a2,0
    3064:	27a40040 	addiu	a0,sp,64
    3068:	8e250000 	lw	a1,0(s1)
    306c:	0c000000 	jal	0 <func_80A3E570>
    3070:	240709dd 	li	a3,2525
    3074:	02002025 	move	a0,s0
    3078:	0c000000 	jal	0 <func_80A3E570>
    307c:	02202825 	move	a1,s1
    3080:	8fbf002c 	lw	ra,44(sp)
    3084:	8fb00024 	lw	s0,36(sp)
    3088:	8fb10028 	lw	s1,40(sp)
    308c:	03e00008 	jr	ra
    3090:	27bd0058 	addiu	sp,sp,88

00003094 <func_80A41604>:
    3094:	24820268 	addiu	v0,a0,616
    3098:	24040001 	li	a0,1
    309c:	00001825 	move	v1,zero
    30a0:	904e0000 	lbu	t6,0(v0)
    30a4:	24630001 	addiu	v1,v1,1
    30a8:	00031c00 	sll	v1,v1,0x10
    30ac:	108e001d 	beq	a0,t6,3124 <func_80A41604+0x90>
    30b0:	00031c03 	sra	v1,v1,0x10
    30b4:	c7a40014 	lwc1	$f4,20(sp)
    30b8:	24190001 	li	t9,1
    30bc:	e4440004 	swc1	$f4,4(v0)
    30c0:	c7a60018 	lwc1	$f6,24(sp)
    30c4:	e4460008 	swc1	$f6,8(v0)
    30c8:	93b80013 	lbu	t8,19(sp)
    30cc:	a0590000 	sb	t9,0(v0)
    30d0:	a0580001 	sb	t8,1(v0)
    30d4:	a0580002 	sb	t8,2(v0)
    30d8:	8ca90000 	lw	t1,0(a1)
    30dc:	ac490014 	sw	t1,20(v0)
    30e0:	8ca80004 	lw	t0,4(a1)
    30e4:	ac480018 	sw	t0,24(v0)
    30e8:	8ca90008 	lw	t1,8(a1)
    30ec:	ac49001c 	sw	t1,28(v0)
    30f0:	8ceb0000 	lw	t3,0(a3)
    30f4:	ac4b002c 	sw	t3,44(v0)
    30f8:	8cea0004 	lw	t2,4(a3)
    30fc:	ac4a0030 	sw	t2,48(v0)
    3100:	8ceb0008 	lw	t3,8(a3)
    3104:	ac4b0034 	sw	t3,52(v0)
    3108:	8ccd0000 	lw	t5,0(a2)
    310c:	ac4d0020 	sw	t5,32(v0)
    3110:	8ccc0004 	lw	t4,4(a2)
    3114:	ac4c0024 	sw	t4,36(v0)
    3118:	8ccd0008 	lw	t5,8(a2)
    311c:	03e00008 	jr	ra
    3120:	ac4d0028 	sw	t5,40(v0)
    3124:	28610014 	slti	at,v1,20
    3128:	1420ffdd 	bnez	at,30a0 <func_80A41604+0xc>
    312c:	24420038 	addiu	v0,v0,56
    3130:	03e00008 	jr	ra
    3134:	00000000 	nop

00003138 <func_80A416A8>:
    3138:	27bdffd0 	addiu	sp,sp,-48
    313c:	f7b60018 	sdc1	$f22,24(sp)
    3140:	3c010000 	lui	at,0x0
    3144:	c4360000 	lwc1	$f22,0(at)
    3148:	afb10028 	sw	s1,40(sp)
    314c:	afb00024 	sw	s0,36(sp)
    3150:	f7b40010 	sdc1	$f20,16(sp)
    3154:	3c010000 	lui	at,0x0
    3158:	afbf002c 	sw	ra,44(sp)
    315c:	24900268 	addiu	s0,a0,616
    3160:	c4340000 	lwc1	$f20,0(at)
    3164:	00008825 	move	s1,zero
    3168:	920e0000 	lbu	t6,0(s0)
    316c:	51c00029 	beqzl	t6,3214 <func_80A416A8+0xdc>
    3170:	26310001 	addiu	s1,s1,1
    3174:	920f0001 	lbu	t7,1(s0)
    3178:	25f8ffff 	addiu	t8,t7,-1
    317c:	331900ff 	andi	t9,t8,0xff
    3180:	17200002 	bnez	t9,318c <func_80A416A8+0x54>
    3184:	a2180001 	sb	t8,1(s0)
    3188:	a2000000 	sb	zero,0(s0)
    318c:	0c000000 	jal	0 <func_80A3E570>
    3190:	00000000 	nop
    3194:	46140102 	mul.s	$f4,$f0,$f20
    3198:	46162181 	sub.s	$f6,$f4,$f22
    319c:	0c000000 	jal	0 <func_80A3E570>
    31a0:	e606002c 	swc1	$f6,44(s0)
    31a4:	c60c0020 	lwc1	$f12,32(s0)
    31a8:	c60a0014 	lwc1	$f10,20(s0)
    31ac:	46140202 	mul.s	$f8,$f0,$f20
    31b0:	c60e0024 	lwc1	$f14,36(s0)
    31b4:	460c5480 	add.s	$f18,$f10,$f12
    31b8:	c6040018 	lwc1	$f4,24(s0)
    31bc:	c6100028 	lwc1	$f16,40(s0)
    31c0:	e6120014 	swc1	$f18,20(s0)
    31c4:	c612002c 	lwc1	$f18,44(s0)
    31c8:	460e2180 	add.s	$f6,$f4,$f14
    31cc:	46164081 	sub.s	$f2,$f8,$f22
    31d0:	c608001c 	lwc1	$f8,28(s0)
    31d4:	e6060018 	swc1	$f6,24(s0)
    31d8:	46126100 	add.s	$f4,$f12,$f18
    31dc:	c6060030 	lwc1	$f6,48(s0)
    31e0:	c6120004 	lwc1	$f18,4(s0)
    31e4:	46104280 	add.s	$f10,$f8,$f16
    31e8:	e6040020 	swc1	$f4,32(s0)
    31ec:	c6040008 	lwc1	$f4,8(s0)
    31f0:	46067200 	add.s	$f8,$f14,$f6
    31f4:	e60a001c 	swc1	$f10,28(s0)
    31f8:	e6020034 	swc1	$f2,52(s0)
    31fc:	46028280 	add.s	$f10,$f16,$f2
    3200:	e6080024 	swc1	$f8,36(s0)
    3204:	46049180 	add.s	$f6,$f18,$f4
    3208:	e60a0028 	swc1	$f10,40(s0)
    320c:	e6060004 	swc1	$f6,4(s0)
    3210:	26310001 	addiu	s1,s1,1
    3214:	00118c00 	sll	s1,s1,0x10
    3218:	00118c03 	sra	s1,s1,0x10
    321c:	2a210014 	slti	at,s1,20
    3220:	1420ffd1 	bnez	at,3168 <func_80A416A8+0x30>
    3224:	26100038 	addiu	s0,s0,56
    3228:	8fbf002c 	lw	ra,44(sp)
    322c:	d7b40010 	ldc1	$f20,16(sp)
    3230:	d7b60018 	ldc1	$f22,24(sp)
    3234:	8fb00024 	lw	s0,36(sp)
    3238:	8fb10028 	lw	s1,40(sp)
    323c:	03e00008 	jr	ra
    3240:	27bd0030 	addiu	sp,sp,48

00003244 <func_80A417B4>:
    3244:	27bdff58 	addiu	sp,sp,-168
    3248:	afbe0050 	sw	s8,80(sp)
    324c:	00a0f025 	move	s8,a1
    3250:	afbf0054 	sw	ra,84(sp)
    3254:	afb7004c 	sw	s7,76(sp)
    3258:	afb60048 	sw	s6,72(sp)
    325c:	afb50044 	sw	s5,68(sp)
    3260:	afb40040 	sw	s4,64(sp)
    3264:	afb3003c 	sw	s3,60(sp)
    3268:	afb20038 	sw	s2,56(sp)
    326c:	afb10034 	sw	s1,52(sp)
    3270:	afb00030 	sw	s0,48(sp)
    3274:	f7b80028 	sdc1	$f24,40(sp)
    3278:	f7b60020 	sdc1	$f22,32(sp)
    327c:	f7b40018 	sdc1	$f20,24(sp)
    3280:	8ca50000 	lw	a1,0(a1)
    3284:	24920268 	addiu	s2,a0,616
    3288:	3c060000 	lui	a2,0x0
    328c:	24c60000 	addiu	a2,a2,0
    3290:	27a40088 	addiu	a0,sp,136
    3294:	24070a42 	li	a3,2626
    3298:	0c000000 	jal	0 <func_80A3E570>
    329c:	00a08025 	move	s0,a1
    32a0:	0000b825 	move	s7,zero
    32a4:	0c000000 	jal	0 <func_80A3E570>
    32a8:	8fc40000 	lw	a0,0(s8)
    32ac:	3c014100 	lui	at,0x4100
    32b0:	4481c000 	mtc1	at,$f24
    32b4:	3c013f80 	lui	at,0x3f80
    32b8:	4481b000 	mtc1	at,$f22
    32bc:	3c01437f 	lui	at,0x437f
    32c0:	4481a000 	mtc1	at,$f20
    32c4:	0000a025 	move	s4,zero
    32c8:	3c16de00 	lui	s6,0xde00
    32cc:	924e0000 	lbu	t6,0(s2)
    32d0:	3c010001 	lui	at,0x1
    32d4:	34211da0 	ori	at,at,0x1da0
    32d8:	11c0008a 	beqz	t6,3504 <func_80A417B4+0x2c0>
    32dc:	03c19821 	addu	s3,s8,at
    32e0:	3c150601 	lui	s5,0x601
    32e4:	16e00014 	bnez	s7,3338 <func_80A417B4+0xf4>
    32e8:	26b5fd50 	addiu	s5,s5,-688
    32ec:	3c110601 	lui	s1,0x601
    32f0:	2631fd40 	addiu	s1,s1,-704
    32f4:	8e0402d0 	lw	a0,720(s0)
    32f8:	00002825 	move	a1,zero
    32fc:	0c000000 	jal	0 <func_80A3E570>
    3300:	24170001 	li	s7,1
    3304:	ae0202d0 	sw	v0,720(s0)
    3308:	244f0008 	addiu	t7,v0,8
    330c:	ae0f02d0 	sw	t7,720(s0)
    3310:	ac510004 	sw	s1,4(v0)
    3314:	ac560000 	sw	s6,0(v0)
    3318:	8e0202d0 	lw	v0,720(s0)
    331c:	3c08643c 	lui	t0,0x643c
    3320:	35081400 	ori	t0,t0,0x1400
    3324:	24580008 	addiu	t8,v0,8
    3328:	ae1802d0 	sw	t8,720(s0)
    332c:	3c19fb00 	lui	t9,0xfb00
    3330:	ac590000 	sw	t9,0(v0)
    3334:	ac480004 	sw	t0,4(v0)
    3338:	92490001 	lbu	t1,1(s2)
    333c:	3c014f80 	lui	at,0x4f80
    3340:	44892000 	mtc1	t1,$f4
    3344:	05210004 	bgez	t1,3358 <func_80A417B4+0x114>
    3348:	468021a0 	cvt.s.w	$f6,$f4
    334c:	44814000 	mtc1	at,$f8
    3350:	00000000 	nop
    3354:	46083180 	add.s	$f6,$f6,$f8
    3358:	924a0002 	lbu	t2,2(s2)
    335c:	3c014f80 	lui	at,0x4f80
    3360:	448a5000 	mtc1	t2,$f10
    3364:	05410004 	bgez	t2,3378 <func_80A417B4+0x134>
    3368:	46805420 	cvt.s.w	$f16,$f10
    336c:	44819000 	mtc1	at,$f18
    3370:	00000000 	nop
    3374:	46128400 	add.s	$f16,$f16,$f18
    3378:	4610a103 	div.s	$f4,$f20,$f16
    337c:	8e0202d0 	lw	v0,720(s0)
    3380:	3c01aa82 	lui	at,0xaa82
    3384:	34215a00 	ori	at,at,0x5a00
    3388:	244c0008 	addiu	t4,v0,8
    338c:	ae0c02d0 	sw	t4,720(s0)
    3390:	3c0dfa00 	lui	t5,0xfa00
    3394:	ac4d0000 	sw	t5,0(v0)
    3398:	3c19e700 	lui	t9,0xe700
    339c:	00003825 	move	a3,zero
    33a0:	46043202 	mul.s	$f8,$f6,$f4
    33a4:	4600428d 	trunc.w.s	$f10,$f8
    33a8:	44045000 	mfc1	a0,$f10
    33ac:	00000000 	nop
    33b0:	00042400 	sll	a0,a0,0x10
    33b4:	00042403 	sra	a0,a0,0x10
    33b8:	308e00ff 	andi	t6,a0,0xff
    33bc:	01c17825 	or	t7,t6,at
    33c0:	ac4f0004 	sw	t7,4(v0)
    33c4:	8e0202d0 	lw	v0,720(s0)
    33c8:	24580008 	addiu	t8,v0,8
    33cc:	ae1802d0 	sw	t8,720(s0)
    33d0:	ac400004 	sw	zero,4(v0)
    33d4:	ac590000 	sw	t9,0(v0)
    33d8:	8e46001c 	lw	a2,28(s2)
    33dc:	c64e0018 	lwc1	$f14,24(s2)
    33e0:	0c000000 	jal	0 <func_80A3E570>
    33e4:	c64c0014 	lwc1	$f12,20(s2)
    33e8:	0c000000 	jal	0 <func_80A3E570>
    33ec:	02602025 	move	a0,s3
    33f0:	c64c0004 	lwc1	$f12,4(s2)
    33f4:	4406b000 	mfc1	a2,$f22
    33f8:	24070001 	li	a3,1
    33fc:	0c000000 	jal	0 <func_80A3E570>
    3400:	46006386 	mov.s	$f14,$f12
    3404:	8e0202d0 	lw	v0,720(s0)
    3408:	3c09da38 	lui	t1,0xda38
    340c:	35290003 	ori	t1,t1,0x3
    3410:	24480008 	addiu	t0,v0,8
    3414:	ae0802d0 	sw	t0,720(s0)
    3418:	3c050000 	lui	a1,0x0
    341c:	ac490000 	sw	t1,0(v0)
    3420:	8fc40000 	lw	a0,0(s8)
    3424:	24a50000 	addiu	a1,a1,0
    3428:	24060a68 	li	a2,2664
    342c:	0c000000 	jal	0 <func_80A3E570>
    3430:	00408825 	move	s1,v0
    3434:	ae220004 	sw	v0,4(s1)
    3438:	924a0001 	lbu	t2,1(s2)
    343c:	3c014f80 	lui	at,0x4f80
    3440:	448a9000 	mtc1	t2,$f18
    3444:	05410004 	bgez	t2,3458 <func_80A417B4+0x214>
    3448:	46809420 	cvt.s.w	$f16,$f18
    344c:	44813000 	mtc1	at,$f6
    3450:	00000000 	nop
    3454:	46068400 	add.s	$f16,$f16,$f6
    3458:	924b0002 	lbu	t3,2(s2)
    345c:	3c014f80 	lui	at,0x4f80
    3460:	448b2000 	mtc1	t3,$f4
    3464:	05610004 	bgez	t3,3478 <func_80A417B4+0x234>
    3468:	46802220 	cvt.s.w	$f8,$f4
    346c:	44815000 	mtc1	at,$f10
    3470:	00000000 	nop
    3474:	460a4200 	add.s	$f8,$f8,$f10
    3478:	4608c483 	div.s	$f18,$f24,$f8
    347c:	8e0202d0 	lw	v0,720(s0)
    3480:	3c0edb06 	lui	t6,0xdb06
    3484:	35ce0020 	ori	t6,t6,0x20
    3488:	244d0008 	addiu	t5,v0,8
    348c:	ae0d02d0 	sw	t5,720(s0)
    3490:	3c040000 	lui	a0,0x0
    3494:	ac4e0000 	sw	t6,0(v0)
    3498:	3c0a0000 	lui	t2,0x0
    349c:	3c0100ff 	lui	at,0xff
    34a0:	3421ffff 	ori	at,at,0xffff
    34a4:	46128182 	mul.s	$f6,$f16,$f18
    34a8:	4600310d 	trunc.w.s	$f4,$f6
    34ac:	44052000 	mfc1	a1,$f4
    34b0:	00000000 	nop
    34b4:	00052c00 	sll	a1,a1,0x10
    34b8:	00052c03 	sra	a1,a1,0x10
    34bc:	00057880 	sll	t7,a1,0x2
    34c0:	008f2021 	addu	a0,a0,t7
    34c4:	8c840000 	lw	a0,0(a0)
    34c8:	0004c900 	sll	t9,a0,0x4
    34cc:	00194702 	srl	t0,t9,0x1c
    34d0:	00084880 	sll	t1,t0,0x2
    34d4:	01495021 	addu	t2,t2,t1
    34d8:	8d4a0000 	lw	t2,0(t2)
    34dc:	0081c024 	and	t8,a0,at
    34e0:	3c018000 	lui	at,0x8000
    34e4:	030a5821 	addu	t3,t8,t2
    34e8:	01616021 	addu	t4,t3,at
    34ec:	ac4c0004 	sw	t4,4(v0)
    34f0:	8e0202d0 	lw	v0,720(s0)
    34f4:	244d0008 	addiu	t5,v0,8
    34f8:	ae0d02d0 	sw	t5,720(s0)
    34fc:	ac550004 	sw	s5,4(v0)
    3500:	ac560000 	sw	s6,0(v0)
    3504:	26940001 	addiu	s4,s4,1
    3508:	0014a400 	sll	s4,s4,0x10
    350c:	0014a403 	sra	s4,s4,0x10
    3510:	2a810014 	slti	at,s4,20
    3514:	1420ff6d 	bnez	at,32cc <func_80A417B4+0x88>
    3518:	26520038 	addiu	s2,s2,56
    351c:	3c060000 	lui	a2,0x0
    3520:	24c60000 	addiu	a2,a2,0
    3524:	27a40088 	addiu	a0,sp,136
    3528:	8fc50000 	lw	a1,0(s8)
    352c:	0c000000 	jal	0 <func_80A3E570>
    3530:	24070a76 	li	a3,2678
    3534:	8fbf0054 	lw	ra,84(sp)
    3538:	d7b40018 	ldc1	$f20,24(sp)
    353c:	d7b60020 	ldc1	$f22,32(sp)
    3540:	d7b80028 	ldc1	$f24,40(sp)
    3544:	8fb00030 	lw	s0,48(sp)
    3548:	8fb10034 	lw	s1,52(sp)
    354c:	8fb20038 	lw	s2,56(sp)
    3550:	8fb3003c 	lw	s3,60(sp)
    3554:	8fb40040 	lw	s4,64(sp)
    3558:	8fb50044 	lw	s5,68(sp)
    355c:	8fb60048 	lw	s6,72(sp)
    3560:	8fb7004c 	lw	s7,76(sp)
    3564:	8fbe0050 	lw	s8,80(sp)
    3568:	03e00008 	jr	ra
    356c:	27bd00a8 	addiu	sp,sp,168
