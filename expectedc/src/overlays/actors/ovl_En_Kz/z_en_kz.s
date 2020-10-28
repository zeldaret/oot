
build/src/overlays/actors/ovl_En_Kz/z_en_kz.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnKz_GetTextNoMaskChild>:
       0:	3c020000 	lui	v0,0x0
       4:	24420000 	addiu	v0,v0,0
       8:	3c0e0000 	lui	t6,0x0
       c:	8dce0050 	lw	t6,80(t6)
      10:	8c4f00a4 	lw	t7,164(v0)
      14:	afa50004 	sw	a1,4(sp)
      18:	8c831c44 	lw	v1,7236(a0)
      1c:	01cfc024 	and	t8,t6,t7
      20:	53000004 	beqzl	t8,34 <EnKz_GetTextNoMaskChild+0x34>
      24:	94590eda 	lhu	t9,3802(v0)
      28:	03e00008 	jr	ra
      2c:	2402402b 	li	v0,16427
      30:	94590eda 	lhu	t9,3802(v0)
      34:	2409001d 	li	t1,29
      38:	2402401a 	li	v0,16410
      3c:	33280008 	andi	t0,t9,0x8
      40:	51000004 	beqzl	t0,54 <EnKz_GetTextNoMaskChild+0x54>
      44:	a0690693 	sb	t1,1683(v1)
      48:	03e00008 	jr	ra
      4c:	2402401c 	li	v0,16412
      50:	a0690693 	sb	t1,1683(v1)
      54:	03e00008 	jr	ra
      58:	00000000 	nop

0000005c <EnKz_GetTextNoMaskAdult>:
      5c:	3c0e0000 	lui	t6,0x0
      60:	91ce002d 	lbu	t6,45(t6)
      64:	3c020000 	lui	v0,0x0
      68:	24420000 	addiu	v0,v0,0
      6c:	004e7821 	addu	t7,v0,t6
      70:	91f80074 	lbu	t8,116(t7)
      74:	afa50004 	sw	a1,4(sp)
      78:	8c831c44 	lw	v1,7236(a0)
      7c:	2b010035 	slti	at,t8,53
      80:	1420001d 	bnez	at,f8 <EnKz_GetTextNoMaskAdult+0x9c>
      84:	2419000c 	li	t9,12
      88:	94590f1e 	lhu	t9,3870(v0)
      8c:	3c090000 	lui	t1,0x0
      90:	3c0a0000 	lui	t2,0x0
      94:	33280200 	andi	t0,t9,0x200
      98:	1500000c 	bnez	t0,cc <EnKz_GetTextNoMaskAdult+0x70>
      9c:	3c0e0000 	lui	t6,0x0
      a0:	8d290008 	lw	t1,8(t1)
      a4:	914a0002 	lbu	t2,2(t2)
      a8:	944c009c 	lhu	t4,156(v0)
      ac:	01495804 	sllv	t3,t1,t2
      b0:	016c6824 	and	t5,t3,t4
      b4:	11a00003 	beqz	t5,c4 <EnKz_GetTextNoMaskAdult+0x68>
      b8:	00000000 	nop
      bc:	03e00008 	jr	ra
      c0:	2402401f 	li	v0,16415
      c4:	03e00008 	jr	ra
      c8:	24024012 	li	v0,16402
      cc:	8dce0020 	lw	t6,32(t6)
      d0:	8c4f00a4 	lw	t7,164(v0)
      d4:	2403401a 	li	v1,16410
      d8:	01cfc024 	and	t8,t6,t7
      dc:	13000004 	beqz	t8,f0 <EnKz_GetTextNoMaskAdult+0x94>
      e0:	00000000 	nop
      e4:	24034045 	li	v1,16453
      e8:	03e00008 	jr	ra
      ec:	3062ffff 	andi	v0,v1,0xffff
      f0:	03e00008 	jr	ra
      f4:	3062ffff 	andi	v0,v1,0xffff
      f8:	a0790693 	sb	t9,1683(v1)
      fc:	24024012 	li	v0,16402
     100:	03e00008 	jr	ra
     104:	00000000 	nop

00000108 <EnKz_GetText>:
     108:	27bdffe8 	addiu	sp,sp,-24
     10c:	afbf0014 	sw	ra,20(sp)
     110:	afa5001c 	sw	a1,28(sp)
     114:	2405001e 	li	a1,30
     118:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     11c:	afa40018 	sw	a0,24(sp)
     120:	8fa40018 	lw	a0,24(sp)
     124:	8fa5001c 	lw	a1,28(sp)
     128:	10400003 	beqz	v0,138 <EnKz_GetText+0x30>
     12c:	3043ffff 	andi	v1,v0,0xffff
     130:	1000000b 	b	160 <EnKz_GetText+0x58>
     134:	00601025 	move	v0,v1
     138:	3c0e0000 	lui	t6,0x0
     13c:	8dce0004 	lw	t6,4(t6)
     140:	15c00005 	bnez	t6,158 <EnKz_GetText+0x50>
     144:	00000000 	nop
     148:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     14c:	00000000 	nop
     150:	10000004 	b	164 <EnKz_GetText+0x5c>
     154:	8fbf0014 	lw	ra,20(sp)
     158:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     15c:	00000000 	nop
     160:	8fbf0014 	lw	ra,20(sp)
     164:	27bd0018 	addiu	sp,sp,24
     168:	03e00008 	jr	ra
     16c:	00000000 	nop

00000170 <func_80A9C6C0>:
     170:	27bdffd8 	addiu	sp,sp,-40
     174:	afbf001c 	sw	ra,28(sp)
     178:	00803025 	move	a2,a0
     17c:	24080001 	li	t0,1
     180:	afa5002c 	sw	a1,44(sp)
     184:	a7a80022 	sh	t0,34(sp)
     188:	afa60028 	sw	a2,40(sp)
     18c:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     190:	248420d8 	addiu	a0,a0,8408
     194:	2c41000a 	sltiu	at,v0,10
     198:	8fa3002c 	lw	v1,44(sp)
     19c:	8fa60028 	lw	a2,40(sp)
     1a0:	10200077 	beqz	at,380 <func_80A9C6C0+0x210>
     1a4:	87a80022 	lh	t0,34(sp)
     1a8:	00027080 	sll	t6,v0,0x2
     1ac:	3c010000 	lui	at,0x0
     1b0:	002e0821 	addu	at,at,t6
     1b4:	8c2e0020 	lw	t6,32(at)
     1b8:	01c00008 	jr	t6
     1bc:	00000000 	nop
     1c0:	8faf002c 	lw	t7,44(sp)
     1c4:	24014012 	li	at,16402
     1c8:	00004025 	move	t0,zero
     1cc:	95e2010e 	lhu	v0,270(t7)
     1d0:	10410007 	beq	v0,at,1f0 <func_80A9C6C0+0x80>
     1d4:	2401401b 	li	at,16411
     1d8:	1041000c 	beq	v0,at,20c <func_80A9C6C0+0x9c>
     1dc:	2401401f 	li	at,16415
     1e0:	10410012 	beq	v0,at,22c <func_80A9C6C0+0xbc>
     1e4:	00000000 	nop
     1e8:	10000066 	b	384 <func_80A9C6C0+0x214>
     1ec:	8fbf001c 	lw	ra,28(sp)
     1f0:	3c020000 	lui	v0,0x0
     1f4:	24420000 	addiu	v0,v0,0
     1f8:	94580f1e 	lhu	t8,3870(v0)
     1fc:	24080002 	li	t0,2
     200:	37190200 	ori	t9,t8,0x200
     204:	1000005e 	b	380 <func_80A9C6C0+0x210>
     208:	a4590f1e 	sh	t9,3870(v0)
     20c:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     210:	00c02025 	move	a0,a2
     214:	14400003 	bnez	v0,224 <func_80A9C6C0+0xb4>
     218:	00000000 	nop
     21c:	10000058 	b	380 <func_80A9C6C0+0x210>
     220:	24080001 	li	t0,1
     224:	10000056 	b	380 <func_80A9C6C0+0x210>
     228:	24080002 	li	t0,2
     22c:	3c020000 	lui	v0,0x0
     230:	24420000 	addiu	v0,v0,0
     234:	94490f1e 	lhu	t1,3870(v0)
     238:	352a0200 	ori	t2,t1,0x200
     23c:	10000050 	b	380 <func_80A9C6C0+0x210>
     240:	a44a0f1e 	sh	t2,3870(v0)
     244:	9462010e 	lhu	v0,270(v1)
     248:	24014014 	li	at,16404
     24c:	10410016 	beq	v0,at,2a8 <func_80A9C6C0+0x138>
     250:	2401401b 	li	at,16411
     254:	5441004b 	bnel	v0,at,384 <func_80A9C6C0+0x214>
     258:	8fbf001c 	lw	ra,28(sp)
     25c:	906b0208 	lbu	t3,520(v1)
     260:	3c070000 	lui	a3,0x0
     264:	24e70000 	addiu	a3,a3,0
     268:	15600045 	bnez	t3,380 <func_80A9C6C0+0x210>
     26c:	24044802 	li	a0,18434
     270:	3c0c0000 	lui	t4,0x0
     274:	258c0000 	addiu	t4,t4,0
     278:	3c050000 	lui	a1,0x0
     27c:	24a50000 	addiu	a1,a1,0
     280:	afac0014 	sw	t4,20(sp)
     284:	24060004 	li	a2,4
     288:	afa70010 	sw	a3,16(sp)
     28c:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     290:	a7a80022 	sh	t0,34(sp)
     294:	8fa3002c 	lw	v1,44(sp)
     298:	87a80022 	lh	t0,34(sp)
     29c:	240d0001 	li	t5,1
     2a0:	10000037 	b	380 <func_80A9C6C0+0x210>
     2a4:	a06d0208 	sb	t5,520(v1)
     2a8:	906e0208 	lbu	t6,520(v1)
     2ac:	3c070000 	lui	a3,0x0
     2b0:	24e70000 	addiu	a3,a3,0
     2b4:	15c00032 	bnez	t6,380 <func_80A9C6C0+0x210>
     2b8:	24044807 	li	a0,18439
     2bc:	3c0f0000 	lui	t7,0x0
     2c0:	25ef0000 	addiu	t7,t7,0
     2c4:	3c050000 	lui	a1,0x0
     2c8:	24a50000 	addiu	a1,a1,0
     2cc:	afaf0014 	sw	t7,20(sp)
     2d0:	24060004 	li	a2,4
     2d4:	afa70010 	sw	a3,16(sp)
     2d8:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     2dc:	a7a80022 	sh	t0,34(sp)
     2e0:	8fa3002c 	lw	v1,44(sp)
     2e4:	87a80022 	lh	t0,34(sp)
     2e8:	24180001 	li	t8,1
     2ec:	10000024 	b	380 <func_80A9C6C0+0x210>
     2f0:	a0780208 	sb	t8,520(v1)
     2f4:	00c02025 	move	a0,a2
     2f8:	afa60028 	sw	a2,40(sp)
     2fc:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     300:	a7a80022 	sh	t0,34(sp)
     304:	8fa60028 	lw	a2,40(sp)
     308:	1040001d 	beqz	v0,380 <func_80A9C6C0+0x210>
     30c:	87a80022 	lh	t0,34(sp)
     310:	8fa7002c 	lw	a3,44(sp)
     314:	24014014 	li	at,16404
     318:	3c090001 	lui	t1,0x1
     31c:	94f9010e 	lhu	t9,270(a3)
     320:	01264821 	addu	t1,t1,a2
     324:	57210017 	bnel	t9,at,384 <func_80A9C6C0+0x214>
     328:	8fbf001c 	lw	ra,28(sp)
     32c:	912904bd 	lbu	t1,1213(t1)
     330:	240a4016 	li	t2,16406
     334:	3145ffff 	andi	a1,t2,0xffff
     338:	15200006 	bnez	t1,354 <func_80A9C6C0+0x1e4>
     33c:	00c02025 	move	a0,a2
     340:	00e02025 	move	a0,a3
     344:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     348:	00c02825 	move	a1,a2
     34c:	1000000c 	b	380 <func_80A9C6C0+0x210>
     350:	24080002 	li	t0,2
     354:	a4ea010e 	sh	t2,270(a3)
     358:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     35c:	a7a80022 	sh	t0,34(sp)
     360:	10000007 	b	380 <func_80A9C6C0+0x210>
     364:	87a80022 	lh	t0,34(sp)
     368:	00c02025 	move	a0,a2
     36c:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     370:	a7a80022 	sh	t0,34(sp)
     374:	10400002 	beqz	v0,380 <func_80A9C6C0+0x210>
     378:	87a80022 	lh	t0,34(sp)
     37c:	24080002 	li	t0,2
     380:	8fbf001c 	lw	ra,28(sp)
     384:	27bd0028 	addiu	sp,sp,40
     388:	01001025 	move	v0,t0
     38c:	03e00008 	jr	ra
     390:	00000000 	nop

00000394 <EnKz_UpdateEyes>:
     394:	27bdffe8 	addiu	sp,sp,-24
     398:	afbf0014 	sw	ra,20(sp)
     39c:	8482020c 	lh	v0,524(a0)
     3a0:	00803025 	move	a2,a0
     3a4:	14400003 	bnez	v0,3b4 <EnKz_UpdateEyes+0x20>
     3a8:	244effff 	addiu	t6,v0,-1
     3ac:	10000003 	b	3bc <EnKz_UpdateEyes+0x28>
     3b0:	00001825 	move	v1,zero
     3b4:	a4ce020c 	sh	t6,524(a2)
     3b8:	84c3020c 	lh	v1,524(a2)
     3bc:	54600010 	bnezl	v1,400 <EnKz_UpdateEyes+0x6c>
     3c0:	8fbf0014 	lw	ra,20(sp)
     3c4:	84cf0210 	lh	t7,528(a2)
     3c8:	2404001e 	li	a0,30
     3cc:	2405001e 	li	a1,30
     3d0:	25f80001 	addiu	t8,t7,1
     3d4:	a4d80210 	sh	t8,528(a2)
     3d8:	84d90210 	lh	t9,528(a2)
     3dc:	2b210003 	slti	at,t9,3
     3e0:	54200007 	bnezl	at,400 <EnKz_UpdateEyes+0x6c>
     3e4:	8fbf0014 	lw	ra,20(sp)
     3e8:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     3ec:	afa60018 	sw	a2,24(sp)
     3f0:	8fa60018 	lw	a2,24(sp)
     3f4:	a4c2020c 	sh	v0,524(a2)
     3f8:	a4c00210 	sh	zero,528(a2)
     3fc:	8fbf0014 	lw	ra,20(sp)
     400:	27bd0018 	addiu	sp,sp,24
     404:	03e00008 	jr	ra
     408:	00000000 	nop

0000040c <func_80A9C95C>:
     40c:	27bdffc8 	addiu	sp,sp,-56
     410:	afb00018 	sw	s0,24(sp)
     414:	afbf001c 	sw	ra,28(sp)
     418:	afa40038 	sw	a0,56(sp)
     41c:	afa60040 	sw	a2,64(sp)
     420:	afa70044 	sw	a3,68(sp)
     424:	8c8e1c44 	lw	t6,7236(a0)
     428:	00a08025 	move	s0,a1
     42c:	00802825 	move	a1,a0
     430:	afa50038 	sw	a1,56(sp)
     434:	02002025 	move	a0,s0
     438:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     43c:	afae0034 	sw	t6,52(sp)
     440:	10400005 	beqz	v0,458 <func_80A9C95C+0x4c>
     444:	8fa30040 	lw	v1,64(sp)
     448:	240f0001 	li	t7,1
     44c:	a46f0000 	sh	t7,0(v1)
     450:	10000058 	b	5b4 <func_80A9C95C+0x1a8>
     454:	24020001 	li	v0,1
     458:	84780000 	lh	t8,0(v1)
     45c:	8fa50034 	lw	a1,52(sp)
     460:	8fb9004c 	lw	t9,76(sp)
     464:	13000008 	beqz	t8,488 <func_80A9C95C+0x7c>
     468:	24a50024 	addiu	a1,a1,36
     46c:	8fa40038 	lw	a0,56(sp)
     470:	0320f809 	jalr	t9
     474:	02002825 	move	a1,s0
     478:	8fa30040 	lw	v1,64(sp)
     47c:	a4620000 	sh	v0,0(v1)
     480:	1000004c 	b	5b4 <func_80A9C95C+0x1a8>
     484:	00001025 	move	v0,zero
     488:	26040008 	addiu	a0,s0,8
     48c:	afa40024 	sw	a0,36(sp)
     490:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     494:	afa50020 	sw	a1,32(sp)
     498:	860800b6 	lh	t0,182(s0)
     49c:	44822000 	mtc1	v0,$f4
     4a0:	3c010000 	lui	at,0x0
     4a4:	44884000 	mtc1	t0,$f8
     4a8:	468021a0 	cvt.s.w	$f6,$f4
     4ac:	c4300048 	lwc1	$f16,72(at)
     4b0:	3c010000 	lui	at,0x0
     4b4:	468042a0 	cvt.s.w	$f10,$f8
     4b8:	460a3081 	sub.s	$f2,$f6,$f10
     4bc:	46001005 	abs.s	$f0,$f2
     4c0:	4600803c 	c.lt.s	$f16,$f0
     4c4:	00000000 	nop
     4c8:	45030009 	bc1tl	4f0 <func_80A9C95C+0xe4>
     4cc:	8e090004 	lw	t1,4(s0)
     4d0:	c6120090 	lwc1	$f18,144(s0)
     4d4:	c424004c 	lwc1	$f4,76(at)
     4d8:	02002825 	move	a1,s0
     4dc:	4604903c 	c.lt.s	$f18,$f4
     4e0:	00000000 	nop
     4e4:	45020008 	bc1fl	508 <func_80A9C95C+0xfc>
     4e8:	8e0b0004 	lw	t3,4(s0)
     4ec:	8e090004 	lw	t1,4(s0)
     4f0:	2401fffe 	li	at,-2
     4f4:	00001025 	move	v0,zero
     4f8:	01215024 	and	t2,t1,at
     4fc:	1000002d 	b	5b4 <func_80A9C95C+0x1a8>
     500:	ae0a0004 	sw	t2,4(s0)
     504:	8e0b0004 	lw	t3,4(s0)
     508:	27a60032 	addiu	a2,sp,50
     50c:	27a70030 	addiu	a3,sp,48
     510:	356c0001 	ori	t4,t3,0x1
     514:	ae0c0004 	sw	t4,4(s0)
     518:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     51c:	8fa40038 	lw	a0,56(sp)
     520:	87a20032 	lh	v0,50(sp)
     524:	2841ffe2 	slti	at,v0,-30
     528:	14200008 	bnez	at,54c <func_80A9C95C+0x140>
     52c:	28410169 	slti	at,v0,361
     530:	10200006 	beqz	at,54c <func_80A9C95C+0x140>
     534:	87a20030 	lh	v0,48(sp)
     538:	2841fff6 	slti	at,v0,-10
     53c:	14200003 	bnez	at,54c <func_80A9C95C+0x140>
     540:	284100f1 	slti	at,v0,241
     544:	54200004 	bnezl	at,558 <func_80A9C95C+0x14c>
     548:	c6080090 	lwc1	$f8,144(s0)
     54c:	10000019 	b	5b4 <func_80A9C95C+0x1a8>
     550:	00001025 	move	v0,zero
     554:	c6080090 	lwc1	$f8,144(s0)
     558:	8fa40024 	lw	a0,36(sp)
     55c:	8fa50020 	lw	a1,32(sp)
     560:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     564:	e7a8002c 	swc1	$f8,44(sp)
     568:	e6000090 	swc1	$f0,144(s0)
     56c:	8fa60044 	lw	a2,68(sp)
     570:	8fa50038 	lw	a1,56(sp)
     574:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     578:	02002025 	move	a0,s0
     57c:	14400005 	bnez	v0,594 <func_80A9C95C+0x188>
     580:	c7aa002c 	lwc1	$f10,44(sp)
     584:	c7a6002c 	lwc1	$f6,44(sp)
     588:	00001025 	move	v0,zero
     58c:	10000009 	b	5b4 <func_80A9C95C+0x1a8>
     590:	e6060090 	swc1	$f6,144(s0)
     594:	e60a0090 	swc1	$f10,144(s0)
     598:	8fb90048 	lw	t9,72(sp)
     59c:	8fa40038 	lw	a0,56(sp)
     5a0:	02002825 	move	a1,s0
     5a4:	0320f809 	jalr	t9
     5a8:	00000000 	nop
     5ac:	a602010e 	sh	v0,270(s0)
     5b0:	00001025 	move	v0,zero
     5b4:	8fbf001c 	lw	ra,28(sp)
     5b8:	8fb00018 	lw	s0,24(sp)
     5bc:	27bd0038 	addiu	sp,sp,56
     5c0:	03e00008 	jr	ra
     5c4:	00000000 	nop

000005c8 <func_80A9CB18>:
     5c8:	27bdffd8 	addiu	sp,sp,-40
     5cc:	afa5002c 	sw	a1,44(sp)
     5d0:	00802825 	move	a1,a0
     5d4:	afa40028 	sw	a0,40(sp)
     5d8:	8fa4002c 	lw	a0,44(sp)
     5dc:	afbf001c 	sw	ra,28(sp)
     5e0:	3c0f0000 	lui	t7,0x0
     5e4:	8c881c44 	lw	t0,7236(a0)
     5e8:	3c180000 	lui	t8,0x0
     5ec:	27180000 	addiu	t8,t8,0
     5f0:	25ef0000 	addiu	t7,t7,0
     5f4:	afaf0010 	sw	t7,16(sp)
     5f8:	afb80014 	sw	t8,20(sp)
     5fc:	afa50028 	sw	a1,40(sp)
     600:	24a601e0 	addiu	a2,a1,480
     604:	3c0743aa 	lui	a3,0x43aa
     608:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     60c:	afa80024 	sw	t0,36(sp)
     610:	8fa4002c 	lw	a0,44(sp)
     614:	8fa50028 	lw	a1,40(sp)
     618:	10400057 	beqz	v0,778 <func_80A9CB18+0x1b0>
     61c:	8fa80024 	lw	t0,36(sp)
     620:	94b9010e 	lhu	t9,270(a1)
     624:	2401401a 	li	at,16410
     628:	3c030000 	lui	v1,0x0
     62c:	17210015 	bne	t9,at,684 <func_80A9CB18+0xbc>
     630:	24630000 	addiu	v1,v1,0
     634:	94690eda 	lhu	t1,3802(v1)
     638:	312a0008 	andi	t2,t1,0x8
     63c:	15400011 	bnez	t2,684 <func_80A9CB18+0xbc>
     640:	00000000 	nop
     644:	afa50028 	sw	a1,40(sp)
     648:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     64c:	afa80024 	sw	t0,36(sp)
     650:	2401001d 	li	at,29
     654:	8fa50028 	lw	a1,40(sp)
     658:	14410005 	bne	v0,at,670 <func_80A9CB18+0xa8>
     65c:	8fa80024 	lw	t0,36(sp)
     660:	240b401b 	li	t3,16411
     664:	a4ab010e 	sh	t3,270(a1)
     668:	10000003 	b	678 <func_80A9CB18+0xb0>
     66c:	a0a00208 	sb	zero,520(a1)
     670:	240c401a 	li	t4,16410
     674:	a4ac010e 	sh	t4,270(a1)
     678:	94ad010e 	lhu	t5,270(a1)
     67c:	1000003e 	b	778 <func_80A9CB18+0x1b0>
     680:	a50d010e 	sh	t5,270(t0)
     684:	3c030000 	lui	v1,0x0
     688:	24630000 	addiu	v1,v1,0
     68c:	8c6e0004 	lw	t6,4(v1)
     690:	3c0f0000 	lui	t7,0x0
     694:	55c00039 	bnezl	t6,77c <func_80A9CB18+0x1b4>
     698:	8fbf001c 	lw	ra,28(sp)
     69c:	91ef002d 	lbu	t7,45(t7)
     6a0:	24010034 	li	at,52
     6a4:	006fc021 	addu	t8,v1,t7
     6a8:	93190074 	lbu	t9,116(t8)
     6ac:	57210012 	bnel	t9,at,6f8 <func_80A9CB18+0x130>
     6b0:	a0a00209 	sb	zero,521(a1)
     6b4:	afa50028 	sw	a1,40(sp)
     6b8:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     6bc:	afa80024 	sw	t0,36(sp)
     6c0:	3c030000 	lui	v1,0x0
     6c4:	2401000c 	li	at,12
     6c8:	24630000 	addiu	v1,v1,0
     6cc:	8fa50028 	lw	a1,40(sp)
     6d0:	14410008 	bne	v0,at,6f4 <func_80A9CB18+0x12c>
     6d4:	8fa80024 	lw	t0,36(sp)
     6d8:	240a4014 	li	t2,16404
     6dc:	a4aa010e 	sh	t2,270(a1)
     6e0:	a0a00208 	sb	zero,520(a1)
     6e4:	a50a010e 	sh	t2,270(t0)
     6e8:	240b0001 	li	t3,1
     6ec:	10000022 	b	778 <func_80A9CB18+0x1b0>
     6f0:	a0ab0209 	sb	t3,521(a1)
     6f4:	a0a00209 	sb	zero,521(a1)
     6f8:	946c0f1e 	lhu	t4,3870(v1)
     6fc:	3c0e0000 	lui	t6,0x0
     700:	3c0b0000 	lui	t3,0x0
     704:	318d0200 	andi	t5,t4,0x200
     708:	11a0000e 	beqz	t5,744 <func_80A9CB18+0x17c>
     70c:	3c0c0000 	lui	t4,0x0
     710:	8dce0020 	lw	t6,32(t6)
     714:	8c6f00a4 	lw	t7,164(v1)
     718:	2409401a 	li	t1,16410
     71c:	24194045 	li	t9,16453
     720:	01cfc024 	and	t8,t6,t7
     724:	53000004 	beqzl	t8,738 <func_80A9CB18+0x170>
     728:	a4a9010e 	sh	t1,270(a1)
     72c:	10000002 	b	738 <func_80A9CB18+0x170>
     730:	a4b9010e 	sh	t9,270(a1)
     734:	a4a9010e 	sh	t1,270(a1)
     738:	94aa010e 	lhu	t2,270(a1)
     73c:	1000000e 	b	778 <func_80A9CB18+0x1b0>
     740:	a50a010e 	sh	t2,270(t0)
     744:	8d6b0008 	lw	t3,8(t3)
     748:	918c0002 	lbu	t4,2(t4)
     74c:	946e009c 	lhu	t6,156(v1)
     750:	24194012 	li	t9,16402
     754:	018b6804 	sllv	t5,t3,t4
     758:	01ae7824 	and	t7,t5,t6
     75c:	11e00003 	beqz	t7,76c <func_80A9CB18+0x1a4>
     760:	2418401f 	li	t8,16415
     764:	10000002 	b	770 <func_80A9CB18+0x1a8>
     768:	a4b8010e 	sh	t8,270(a1)
     76c:	a4b9010e 	sh	t9,270(a1)
     770:	94a9010e 	lhu	t1,270(a1)
     774:	a509010e 	sh	t1,270(t0)
     778:	8fbf001c 	lw	ra,28(sp)
     77c:	27bd0028 	addiu	sp,sp,40
     780:	03e00008 	jr	ra
     784:	00000000 	nop

00000788 <EnKz_FollowPath>:
     788:	27bdffc8 	addiu	sp,sp,-56
     78c:	afbf0024 	sw	ra,36(sp)
     790:	afb00020 	sw	s0,32(sp)
     794:	8486001c 	lh	a2,28(a0)
     798:	3401ff00 	li	at,0xff00
     79c:	00808025 	move	s0,a0
     7a0:	30c6ff00 	andi	a2,a2,0xff00
     7a4:	14c10003 	bne	a2,at,7b4 <EnKz_FollowPath+0x2c>
     7a8:	3c0e0001 	lui	t6,0x1
     7ac:	1000004c 	b	8e0 <EnKz_FollowPath+0x158>
     7b0:	00001025 	move	v0,zero
     7b4:	01c57021 	addu	t6,t6,a1
     7b8:	8dce1e08 	lw	t6,7688(t6)
     7bc:	00067a03 	sra	t7,a2,0x8
     7c0:	000fc0c0 	sll	t8,t7,0x3
     7c4:	01d82021 	addu	a0,t6,t8
     7c8:	8c830004 	lw	v1,4(a0)
     7cc:	3c0a0000 	lui	t2,0x0
     7d0:	860c020a 	lh	t4,522(s0)
     7d4:	0003c900 	sll	t9,v1,0x4
     7d8:	00194702 	srl	t0,t9,0x1c
     7dc:	00084880 	sll	t1,t0,0x2
     7e0:	01495021 	addu	t2,t2,t1
     7e4:	3c0100ff 	lui	at,0xff
     7e8:	8d4a0000 	lw	t2,0(t2)
     7ec:	3421ffff 	ori	at,at,0xffff
     7f0:	00615824 	and	t3,v1,at
     7f4:	000c6880 	sll	t5,t4,0x2
     7f8:	3c018000 	lui	at,0x8000
     7fc:	01ac6823 	subu	t5,t5,t4
     800:	014b1021 	addu	v0,t2,t3
     804:	00411021 	addu	v0,v0,at
     808:	000d6840 	sll	t5,t5,0x1
     80c:	004d1021 	addu	v0,v0,t5
     810:	844f0000 	lh	t7,0(v0)
     814:	844e0004 	lh	t6,4(v0)
     818:	c6080024 	lwc1	$f8,36(s0)
     81c:	448f2000 	mtc1	t7,$f4
     820:	448e5000 	mtc1	t6,$f10
     824:	c612002c 	lwc1	$f18,44(s0)
     828:	468021a0 	cvt.s.w	$f6,$f4
     82c:	afa40034 	sw	a0,52(sp)
     830:	46805420 	cvt.s.w	$f16,$f10
     834:	46083301 	sub.s	$f12,$f6,$f8
     838:	46128381 	sub.s	$f14,$f16,$f18
     83c:	e7ac002c 	swc1	$f12,44(sp)
     840:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     844:	e7ae0028 	swc1	$f14,40(sp)
     848:	3c010000 	lui	at,0x0
     84c:	c4240050 	lwc1	$f4,80(at)
     850:	24190001 	li	t9,1
     854:	afb90010 	sw	t9,16(sp)
     858:	46040182 	mul.s	$f6,$f0,$f4
     85c:	26040032 	addiu	a0,s0,50
     860:	2406000a 	li	a2,10
     864:	240703e8 	li	a3,1000
     868:	4600320d 	trunc.w.s	$f8,$f6
     86c:	44054000 	mfc1	a1,$f8
     870:	00000000 	nop
     874:	00052c00 	sll	a1,a1,0x10
     878:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     87c:	00052c03 	sra	a1,a1,0x10
     880:	c7ac002c 	lwc1	$f12,44(sp)
     884:	c7ae0028 	lwc1	$f14,40(sp)
     888:	3c014120 	lui	at,0x4120
     88c:	460c6282 	mul.s	$f10,$f12,$f12
     890:	44812000 	mtc1	at,$f4
     894:	00001025 	move	v0,zero
     898:	460e7402 	mul.s	$f16,$f14,$f14
     89c:	46105480 	add.s	$f18,$f10,$f16
     8a0:	4604903c 	c.lt.s	$f18,$f4
     8a4:	00000000 	nop
     8a8:	4500000d 	bc1f	8e0 <EnKz_FollowPath+0x158>
     8ac:	00000000 	nop
     8b0:	8608020a 	lh	t0,522(s0)
     8b4:	25090001 	addiu	t1,t0,1
     8b8:	a609020a 	sh	t1,522(s0)
     8bc:	8fab0034 	lw	t3,52(sp)
     8c0:	860a020a 	lh	t2,522(s0)
     8c4:	916c0000 	lbu	t4,0(t3)
     8c8:	014c082a 	slt	at,t2,t4
     8cc:	14200002 	bnez	at,8d8 <EnKz_FollowPath+0x150>
     8d0:	00000000 	nop
     8d4:	a600020a 	sh	zero,522(s0)
     8d8:	10000001 	b	8e0 <EnKz_FollowPath+0x158>
     8dc:	24020001 	li	v0,1
     8e0:	8fbf0024 	lw	ra,36(sp)
     8e4:	8fb00020 	lw	s0,32(sp)
     8e8:	27bd0038 	addiu	sp,sp,56
     8ec:	03e00008 	jr	ra
     8f0:	00000000 	nop

000008f4 <EnKz_SetMovedPos>:
     8f4:	8483001c 	lh	v1,28(a0)
     8f8:	3401ff00 	li	at,0xff00
     8fc:	00a03025 	move	a2,a1
     900:	3063ff00 	andi	v1,v1,0xff00
     904:	14610003 	bne	v1,at,914 <EnKz_SetMovedPos+0x20>
     908:	3c0e0001 	lui	t6,0x1
     90c:	03e00008 	jr	ra
     910:	00001025 	move	v0,zero
     914:	01c67021 	addu	t6,t6,a2
     918:	8dce1e08 	lw	t6,7688(t6)
     91c:	00037a03 	sra	t7,v1,0x8
     920:	000fc0c0 	sll	t8,t7,0x3
     924:	01d82821 	addu	a1,t6,t8
     928:	8ca80004 	lw	t0,4(a1)
     92c:	3c0b0000 	lui	t3,0x0
     930:	90ad0000 	lbu	t5,0(a1)
     934:	0008c900 	sll	t9,t0,0x4
     938:	00194f02 	srl	t1,t9,0x1c
     93c:	00095080 	sll	t2,t1,0x2
     940:	016a5821 	addu	t3,t3,t2
     944:	3c0100ff 	lui	at,0xff
     948:	8d6b0000 	lw	t3,0(t3)
     94c:	3421ffff 	ori	at,at,0xffff
     950:	01016024 	and	t4,t0,at
     954:	000d7880 	sll	t7,t5,0x2
     958:	3c018000 	lui	at,0x8000
     95c:	01ed7823 	subu	t7,t7,t5
     960:	016c3821 	addu	a3,t3,t4
     964:	00e13821 	addu	a3,a3,at
     968:	000f7840 	sll	t7,t7,0x1
     96c:	00ef3821 	addu	a3,a3,t7
     970:	84eefffa 	lh	t6,-6(a3)
     974:	24e7fffa 	addiu	a3,a3,-6
     978:	24020001 	li	v0,1
     97c:	448e2000 	mtc1	t6,$f4
     980:	00000000 	nop
     984:	468021a0 	cvt.s.w	$f6,$f4
     988:	e4860024 	swc1	$f6,36(a0)
     98c:	84f80002 	lh	t8,2(a3)
     990:	44984000 	mtc1	t8,$f8
     994:	00000000 	nop
     998:	468042a0 	cvt.s.w	$f10,$f8
     99c:	e48a0028 	swc1	$f10,40(a0)
     9a0:	84f90004 	lh	t9,4(a3)
     9a4:	44998000 	mtc1	t9,$f16
     9a8:	00000000 	nop
     9ac:	468084a0 	cvt.s.w	$f18,$f16
     9b0:	e492002c 	swc1	$f18,44(a0)
     9b4:	03e00008 	jr	ra
     9b8:	00000000 	nop

000009bc <EnKz_Init>:
     9bc:	27bdffb0 	addiu	sp,sp,-80
     9c0:	afb00034 	sw	s0,52(sp)
     9c4:	00808025 	move	s0,a0
     9c8:	afb10038 	sw	s1,56(sp)
     9cc:	00a08825 	move	s1,a1
     9d0:	00a02025 	move	a0,a1
     9d4:	afbf003c 	sw	ra,60(sp)
     9d8:	2605014c 	addiu	a1,s0,332
     9dc:	260e0216 	addiu	t6,s0,534
     9e0:	260f025e 	addiu	t7,s0,606
     9e4:	3c060000 	lui	a2,0x0
     9e8:	2418000c 	li	t8,12
     9ec:	afb80018 	sw	t8,24(sp)
     9f0:	24c60000 	addiu	a2,a2,0
     9f4:	afaf0014 	sw	t7,20(sp)
     9f8:	afae0010 	sw	t6,16(sp)
     9fc:	afa50044 	sw	a1,68(sp)
     a00:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     a04:	00003825 	move	a3,zero
     a08:	44800000 	mtc1	zero,$f0
     a0c:	260400b4 	addiu	a0,s0,180
     a10:	00003025 	move	a2,zero
     a14:	44050000 	mfc1	a1,$f0
     a18:	44070000 	mfc1	a3,$f0
     a1c:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     a20:	00000000 	nop
     a24:	26050194 	addiu	a1,s0,404
     a28:	afa50040 	sw	a1,64(sp)
     a2c:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     a30:	02202025 	move	a0,s1
     a34:	3c070000 	lui	a3,0x0
     a38:	8fa50040 	lw	a1,64(sp)
     a3c:	24e70020 	addiu	a3,a3,32
     a40:	02202025 	move	a0,s1
     a44:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     a48:	02003025 	move	a2,s0
     a4c:	3c060000 	lui	a2,0x0
     a50:	24c6004c 	addiu	a2,a2,76
     a54:	26040098 	addiu	a0,s0,152
     a58:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     a5c:	00002825 	move	a1,zero
     a60:	3c053c23 	lui	a1,0x3c23
     a64:	34a5d70a 	ori	a1,a1,0xd70a
     a68:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     a6c:	02002025 	move	a0,s0
     a70:	24190003 	li	t9,3
     a74:	a219001f 	sb	t9,31(s0)
     a78:	a60001e0 	sh	zero,480(s0)
     a7c:	3c050000 	lui	a1,0x0
     a80:	24a50058 	addiu	a1,a1,88
     a84:	8fa40044 	lw	a0,68(sp)
     a88:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     a8c:	00003025 	move	a2,zero
     a90:	3c020000 	lui	v0,0x0
     a94:	24420000 	addiu	v0,v0,0
     a98:	94480eda 	lhu	t0,3802(v0)
     a9c:	02002025 	move	a0,s0
     aa0:	31090008 	andi	t1,t0,0x8
     aa4:	51200006 	beqzl	t1,ac0 <EnKz_Init+0x104>
     aa8:	8c4a0004 	lw	t2,4(v0)
     aac:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     ab0:	02202825 	move	a1,s1
     ab4:	3c020000 	lui	v0,0x0
     ab8:	24420000 	addiu	v0,v0,0
     abc:	8c4a0004 	lw	t2,4(v0)
     ac0:	3c0f0000 	lui	t7,0x0
     ac4:	25ef0000 	addiu	t7,t7,0
     ac8:	5540001a 	bnezl	t2,b34 <EnKz_Init+0x178>
     acc:	ae0f0190 	sw	t7,400(s0)
     ad0:	944b0f1e 	lhu	t3,3870(v0)
     ad4:	26241c24 	addiu	a0,s1,7204
     ad8:	316c0100 	andi	t4,t3,0x100
     adc:	15800010 	bnez	t4,b20 <EnKz_Init+0x164>
     ae0:	00000000 	nop
     ae4:	c6040024 	lwc1	$f4,36(s0)
     ae8:	240d04ff 	li	t5,1279
     aec:	02002825 	move	a1,s0
     af0:	e7a40010 	swc1	$f4,16(sp)
     af4:	c6060028 	lwc1	$f6,40(s0)
     af8:	02203025 	move	a2,s1
     afc:	240700ef 	li	a3,239
     b00:	e7a60014 	swc1	$f6,20(sp)
     b04:	c608002c 	lwc1	$f8,44(s0)
     b08:	afad0028 	sw	t5,40(sp)
     b0c:	afa00024 	sw	zero,36(sp)
     b10:	afa00020 	sw	zero,32(sp)
     b14:	afa0001c 	sw	zero,28(sp)
     b18:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     b1c:	e7a80018 	swc1	$f8,24(sp)
     b20:	3c0e0000 	lui	t6,0x0
     b24:	25ce0000 	addiu	t6,t6,0
     b28:	10000002 	b	b34 <EnKz_Init+0x178>
     b2c:	ae0e0190 	sw	t6,400(s0)
     b30:	ae0f0190 	sw	t7,400(s0)
     b34:	8fbf003c 	lw	ra,60(sp)
     b38:	8fb00034 	lw	s0,52(sp)
     b3c:	8fb10038 	lw	s1,56(sp)
     b40:	03e00008 	jr	ra
     b44:	27bd0050 	addiu	sp,sp,80

00000b48 <EnKz_Destroy>:
     b48:	27bdffe8 	addiu	sp,sp,-24
     b4c:	00803025 	move	a2,a0
     b50:	afbf0014 	sw	ra,20(sp)
     b54:	00a02025 	move	a0,a1
     b58:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     b5c:	24c50194 	addiu	a1,a2,404
     b60:	8fbf0014 	lw	ra,20(sp)
     b64:	27bd0018 	addiu	sp,sp,24
     b68:	03e00008 	jr	ra
     b6c:	00000000 	nop

00000b70 <EnKz_PreMweepWait>:
     b70:	27bdffe0 	addiu	sp,sp,-32
     b74:	afbf001c 	sw	ra,28(sp)
     b78:	afb00018 	sw	s0,24(sp)
     b7c:	afa50024 	sw	a1,36(sp)
     b80:	848e01e0 	lh	t6,480(a0)
     b84:	00808025 	move	s0,a0
     b88:	24010002 	li	at,2
     b8c:	15c1000b 	bne	t6,at,bbc <EnKz_PreMweepWait+0x4c>
     b90:	260502a6 	addiu	a1,s0,678
     b94:	3c050000 	lui	a1,0x0
     b98:	24a50058 	addiu	a1,a1,88
     b9c:	2484014c 	addiu	a0,a0,332
     ba0:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     ba4:	24060002 	li	a2,2
     ba8:	3c0f0000 	lui	t7,0x0
     bac:	25ef0000 	addiu	t7,t7,0
     bb0:	a60001e0 	sh	zero,480(s0)
     bb4:	10000005 	b	bcc <EnKz_PreMweepWait+0x5c>
     bb8:	ae0f0190 	sw	t7,400(s0)
     bbc:	8fa40024 	lw	a0,36(sp)
     bc0:	260602be 	addiu	a2,s0,702
     bc4:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     bc8:	2407000c 	li	a3,12
     bcc:	8fbf001c 	lw	ra,28(sp)
     bd0:	8fb00018 	lw	s0,24(sp)
     bd4:	27bd0020 	addiu	sp,sp,32
     bd8:	03e00008 	jr	ra
     bdc:	00000000 	nop

00000be0 <EnKz_SetupMweep>:
     be0:	27bdffb8 	addiu	sp,sp,-72
     be4:	3c0f0000 	lui	t7,0x0
     be8:	afbf001c 	sw	ra,28(sp)
     bec:	afb10018 	sw	s1,24(sp)
     bf0:	afb00014 	sw	s0,20(sp)
     bf4:	25ef00a0 	addiu	t7,t7,160
     bf8:	8df90000 	lw	t9,0(t7)
     bfc:	27ae003c 	addiu	t6,sp,60
     c00:	8df80004 	lw	t8,4(t7)
     c04:	add90000 	sw	t9,0(t6)
     c08:	8df90008 	lw	t9,8(t7)
     c0c:	00808025 	move	s0,a0
     c10:	00a08825 	move	s1,a1
     c14:	00a02025 	move	a0,a1
     c18:	add80004 	sw	t8,4(t6)
     c1c:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     c20:	add90008 	sw	t9,8(t6)
     c24:	a6020212 	sh	v0,530(s0)
     c28:	862807a0 	lh	t0,1952(s1)
     c2c:	02202025 	move	a0,s1
     c30:	24060001 	li	a2,1
     c34:	a6080214 	sh	t0,532(s0)
     c38:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     c3c:	86050214 	lh	a1,532(s0)
     c40:	02202025 	move	a0,s1
     c44:	86050212 	lh	a1,530(s0)
     c48:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     c4c:	24060007 	li	a2,7
     c50:	8e0a0024 	lw	t2,36(s0)
     c54:	27a60030 	addiu	a2,sp,48
     c58:	27a70024 	addiu	a3,sp,36
     c5c:	acca0000 	sw	t2,0(a2)
     c60:	8e090028 	lw	t1,40(s0)
     c64:	3c014270 	lui	at,0x4270
     c68:	44813000 	mtc1	at,$f6
     c6c:	acc90004 	sw	t1,4(a2)
     c70:	8e0a002c 	lw	t2,44(s0)
     c74:	3c01c2c8 	lui	at,0xc2c8
     c78:	44818000 	mtc1	at,$f16
     c7c:	acca0008 	sw	t2,8(a2)
     c80:	8e0c0008 	lw	t4,8(s0)
     c84:	3c014382 	lui	at,0x4382
     c88:	02202025 	move	a0,s1
     c8c:	acec0000 	sw	t4,0(a3)
     c90:	8e0b000c 	lw	t3,12(s0)
     c94:	aceb0004 	sw	t3,4(a3)
     c98:	8e0c0010 	lw	t4,16(s0)
     c9c:	acec0008 	sw	t4,8(a3)
     ca0:	c7a40034 	lwc1	$f4,52(sp)
     ca4:	c7aa0028 	lwc1	$f10,40(sp)
     ca8:	46062200 	add.s	$f8,$f4,$f6
     cac:	44813000 	mtc1	at,$f6
     cb0:	c7a4002c 	lwc1	$f4,44(sp)
     cb4:	46105480 	add.s	$f18,$f10,$f16
     cb8:	e7a80034 	swc1	$f8,52(sp)
     cbc:	46062200 	add.s	$f8,$f4,$f6
     cc0:	e7b20028 	swc1	$f18,40(sp)
     cc4:	e7a8002c 	swc1	$f8,44(sp)
     cc8:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     ccc:	86050212 	lh	a1,530(s0)
     cd0:	02202025 	move	a0,s1
     cd4:	02002825 	move	a1,s0
     cd8:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     cdc:	24060008 	li	a2,8
     ce0:	3c010000 	lui	at,0x0
     ce4:	c42a0054 	lwc1	$f10,84(at)
     ce8:	3c0d0000 	lui	t5,0x0
     cec:	25ad0000 	addiu	t5,t5,0
     cf0:	ae0d0190 	sw	t5,400(s0)
     cf4:	e60a0068 	swc1	$f10,104(s0)
     cf8:	8fbf001c 	lw	ra,28(sp)
     cfc:	8fb10018 	lw	s1,24(sp)
     d00:	8fb00014 	lw	s0,20(sp)
     d04:	03e00008 	jr	ra
     d08:	27bd0048 	addiu	sp,sp,72

00000d0c <EnKz_Mweep>:
     d0c:	27bdffb8 	addiu	sp,sp,-72
     d10:	3c0f0000 	lui	t7,0x0
     d14:	afbf001c 	sw	ra,28(sp)
     d18:	afb00018 	sw	s0,24(sp)
     d1c:	afa5004c 	sw	a1,76(sp)
     d20:	25ef00ac 	addiu	t7,t7,172
     d24:	8df90000 	lw	t9,0(t7)
     d28:	27ae003c 	addiu	t6,sp,60
     d2c:	8df80004 	lw	t8,4(t7)
     d30:	add90000 	sw	t9,0(t6)
     d34:	8df90008 	lw	t9,8(t7)
     d38:	add80004 	sw	t8,4(t6)
     d3c:	27a60030 	addiu	a2,sp,48
     d40:	add90008 	sw	t9,8(t6)
     d44:	8c890024 	lw	t1,36(a0)
     d48:	27a70024 	addiu	a3,sp,36
     d4c:	3c014270 	lui	at,0x4270
     d50:	acc90000 	sw	t1,0(a2)
     d54:	8c880028 	lw	t0,40(a0)
     d58:	44813000 	mtc1	at,$f6
     d5c:	3c01c2c8 	lui	at,0xc2c8
     d60:	acc80004 	sw	t0,4(a2)
     d64:	8c89002c 	lw	t1,44(a0)
     d68:	44818000 	mtc1	at,$f16
     d6c:	3c014382 	lui	at,0x4382
     d70:	acc90008 	sw	t1,8(a2)
     d74:	8c8b0008 	lw	t3,8(a0)
     d78:	00808025 	move	s0,a0
     d7c:	aceb0000 	sw	t3,0(a3)
     d80:	8c8a000c 	lw	t2,12(a0)
     d84:	acea0004 	sw	t2,4(a3)
     d88:	8c8b0010 	lw	t3,16(a0)
     d8c:	aceb0008 	sw	t3,8(a3)
     d90:	c7a40034 	lwc1	$f4,52(sp)
     d94:	c7aa0028 	lwc1	$f10,40(sp)
     d98:	8fa4004c 	lw	a0,76(sp)
     d9c:	46062200 	add.s	$f8,$f4,$f6
     da0:	44813000 	mtc1	at,$f6
     da4:	c7a4002c 	lwc1	$f4,44(sp)
     da8:	46105480 	add.s	$f18,$f10,$f16
     dac:	e7a80034 	swc1	$f8,52(sp)
     db0:	46062200 	add.s	$f8,$f4,$f6
     db4:	e7b20028 	swc1	$f18,40(sp)
     db8:	e7a8002c 	swc1	$f8,44(sp)
     dbc:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     dc0:	86050212 	lh	a1,530(s0)
     dc4:	02002025 	move	a0,s0
     dc8:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     dcc:	8fa5004c 	lw	a1,76(sp)
     dd0:	24010001 	li	at,1
     dd4:	5441001a 	bnel	v0,at,e40 <EnKz_Mweep+0x134>
     dd8:	3c014150 	lui	at,0x4150
     ddc:	860c020a 	lh	t4,522(s0)
     de0:	3c050000 	lui	a1,0x0
     de4:	24a50058 	addiu	a1,a1,88
     de8:	15800014 	bnez	t4,e3c <EnKz_Mweep+0x130>
     dec:	2604014c 	addiu	a0,s0,332
     df0:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     df4:	24060001 	li	a2,1
     df8:	8fa4004c 	lw	a0,76(sp)
     dfc:	2405001b 	li	a1,27
     e00:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     e04:	24060014 	li	a2,20
     e08:	02002025 	move	a0,s0
     e0c:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     e10:	8fa5004c 	lw	a1,76(sp)
     e14:	3c030000 	lui	v1,0x0
     e18:	24630000 	addiu	v1,v1,0
     e1c:	946d0eda 	lhu	t5,3802(v1)
     e20:	44805000 	mtc1	zero,$f10
     e24:	3c0f0000 	lui	t7,0x0
     e28:	35ae0008 	ori	t6,t5,0x8
     e2c:	a46e0eda 	sh	t6,3802(v1)
     e30:	25ef0000 	addiu	t7,t7,0
     e34:	ae0f0190 	sw	t7,400(s0)
     e38:	e60a0068 	swc1	$f10,104(s0)
     e3c:	3c014150 	lui	at,0x4150
     e40:	44818000 	mtc1	at,$f16
     e44:	c6120164 	lwc1	$f18,356(s0)
     e48:	02002025 	move	a0,s0
     e4c:	46128032 	c.eq.s	$f16,$f18
     e50:	00000000 	nop
     e54:	45020004 	bc1fl	e68 <EnKz_Mweep+0x15c>
     e58:	8fbf001c 	lw	ra,28(sp)
     e5c:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     e60:	2405687a 	li	a1,26746
     e64:	8fbf001c 	lw	ra,28(sp)
     e68:	8fb00018 	lw	s0,24(sp)
     e6c:	27bd0048 	addiu	sp,sp,72
     e70:	03e00008 	jr	ra
     e74:	00000000 	nop

00000e78 <EnKz_StopMweep>:
     e78:	27bdffe8 	addiu	sp,sp,-24
     e7c:	afa40018 	sw	a0,24(sp)
     e80:	8fae0018 	lw	t6,24(sp)
     e84:	afbf0014 	sw	ra,20(sp)
     e88:	afa5001c 	sw	a1,28(sp)
     e8c:	00a02025 	move	a0,a1
     e90:	24060007 	li	a2,7
     e94:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     e98:	85c50214 	lh	a1,532(t6)
     e9c:	8faf0018 	lw	t7,24(sp)
     ea0:	8fa4001c 	lw	a0,28(sp)
     ea4:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     ea8:	85e50212 	lh	a1,530(t7)
     eac:	8fa4001c 	lw	a0,28(sp)
     eb0:	8fa50018 	lw	a1,24(sp)
     eb4:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     eb8:	24060007 	li	a2,7
     ebc:	8fb90018 	lw	t9,24(sp)
     ec0:	3c180000 	lui	t8,0x0
     ec4:	27180000 	addiu	t8,t8,0
     ec8:	af380190 	sw	t8,400(t9)
     ecc:	8fbf0014 	lw	ra,20(sp)
     ed0:	27bd0018 	addiu	sp,sp,24
     ed4:	03e00008 	jr	ra
     ed8:	00000000 	nop

00000edc <EnKz_Wait>:
     edc:	27bdffe0 	addiu	sp,sp,-32
     ee0:	afbf001c 	sw	ra,28(sp)
     ee4:	afb00018 	sw	s0,24(sp)
     ee8:	afa50024 	sw	a1,36(sp)
     eec:	848e01e0 	lh	t6,480(a0)
     ef0:	00808025 	move	s0,a0
     ef4:	24010002 	li	at,2
     ef8:	15c10008 	bne	t6,at,f1c <EnKz_Wait+0x40>
     efc:	260502a6 	addiu	a1,s0,678
     f00:	3c0f0000 	lui	t7,0x0
     f04:	25ef0000 	addiu	t7,t7,0
     f08:	ac8f0190 	sw	t7,400(a0)
     f0c:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     f10:	8fa50024 	lw	a1,36(sp)
     f14:	10000006 	b	f30 <EnKz_Wait+0x54>
     f18:	8fbf001c 	lw	ra,28(sp)
     f1c:	8fa40024 	lw	a0,36(sp)
     f20:	260602be 	addiu	a2,s0,702
     f24:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     f28:	2407000c 	li	a3,12
     f2c:	8fbf001c 	lw	ra,28(sp)
     f30:	8fb00018 	lw	s0,24(sp)
     f34:	27bd0020 	addiu	sp,sp,32
     f38:	03e00008 	jr	ra
     f3c:	00000000 	nop

00000f40 <EnKz_SetupGetItem>:
     f40:	27bdffe0 	addiu	sp,sp,-32
     f44:	afbf001c 	sw	ra,28(sp)
     f48:	afa50024 	sw	a1,36(sp)
     f4c:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     f50:	afa40020 	sw	a0,32(sp)
     f54:	10400008 	beqz	v0,f78 <EnKz_SetupGetItem+0x38>
     f58:	8fa40020 	lw	a0,32(sp)
     f5c:	3c0f0000 	lui	t7,0x0
     f60:	240e0001 	li	t6,1
     f64:	25ef0000 	addiu	t7,t7,0
     f68:	ac800118 	sw	zero,280(a0)
     f6c:	a48e01e0 	sh	t6,480(a0)
     f70:	10000013 	b	fc0 <EnKz_SetupGetItem+0x80>
     f74:	ac8f0190 	sw	t7,400(a0)
     f78:	90980209 	lbu	t8,521(a0)
     f7c:	24010001 	li	at,1
     f80:	2406002d 	li	a2,45
     f84:	17010003 	bne	t8,at,f94 <EnKz_SetupGetItem+0x54>
     f88:	00000000 	nop
     f8c:	10000001 	b	f94 <EnKz_SetupGetItem+0x54>
     f90:	24060024 	li	a2,36
     f94:	3c013f80 	lui	at,0x3f80
     f98:	44816000 	mtc1	at,$f12
     f9c:	c4800094 	lwc1	$f0,148(a0)
     fa0:	c4840090 	lwc1	$f4,144(a0)
     fa4:	8fa50024 	lw	a1,36(sp)
     fa8:	46000005 	abs.s	$f0,$f0
     fac:	460c2080 	add.s	$f2,$f4,$f12
     fb0:	460c0180 	add.s	$f6,$f0,$f12
     fb4:	44071000 	mfc1	a3,$f2
     fb8:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     fbc:	e7a60010 	swc1	$f6,16(sp)
     fc0:	8fbf001c 	lw	ra,28(sp)
     fc4:	27bd0020 	addiu	sp,sp,32
     fc8:	03e00008 	jr	ra
     fcc:	00000000 	nop

00000fd0 <EnKz_StartTimer>:
     fd0:	27bdffe8 	addiu	sp,sp,-24
     fd4:	afbf0014 	sw	ra,20(sp)
     fd8:	afa40018 	sw	a0,24(sp)
     fdc:	afa5001c 	sw	a1,28(sp)
     fe0:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     fe4:	24a420d8 	addiu	a0,a1,8408
     fe8:	24010006 	li	at,6
     fec:	5441001a 	bnel	v0,at,1058 <EnKz_StartTimer+0x88>
     ff0:	8fbf0014 	lw	ra,20(sp)
     ff4:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
     ff8:	8fa4001c 	lw	a0,28(sp)
     ffc:	10400015 	beqz	v0,1054 <EnKz_StartTimer+0x84>
    1000:	3c0e0000 	lui	t6,0x0
    1004:	91ce002d 	lbu	t6,45(t6)
    1008:	3c020000 	lui	v0,0x0
    100c:	24420000 	addiu	v0,v0,0
    1010:	004e7821 	addu	t7,v0,t6
    1014:	91f80074 	lbu	t8,116(t7)
    1018:	24010035 	li	at,53
    101c:	57010009 	bnel	t8,at,1044 <EnKz_StartTimer+0x74>
    1020:	8fa20018 	lw	v0,24(sp)
    1024:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
    1028:	240400b4 	li	a0,180
    102c:	3c020000 	lui	v0,0x0
    1030:	24420000 	addiu	v0,v0,0
    1034:	945913fc 	lhu	t9,5116(v0)
    1038:	3328fffe 	andi	t0,t9,0xfffe
    103c:	a44813fc 	sh	t0,5116(v0)
    1040:	8fa20018 	lw	v0,24(sp)
    1044:	3c090000 	lui	t1,0x0
    1048:	25290000 	addiu	t1,t1,0
    104c:	a44001e0 	sh	zero,480(v0)
    1050:	ac490190 	sw	t1,400(v0)
    1054:	8fbf0014 	lw	ra,20(sp)
    1058:	27bd0018 	addiu	sp,sp,24
    105c:	03e00008 	jr	ra
    1060:	00000000 	nop

00001064 <EnKz_Update>:
    1064:	3c030000 	lui	v1,0x0
    1068:	24630000 	addiu	v1,v1,0
    106c:	8c6e0004 	lw	t6,4(v1)
    1070:	27bdffd0 	addiu	sp,sp,-48
    1074:	afb00018 	sw	s0,24(sp)
    1078:	00808025 	move	s0,a0
    107c:	afbf001c 	sw	ra,28(sp)
    1080:	15c00006 	bnez	t6,109c <EnKz_Update+0x38>
    1084:	afa50034 	sw	a1,52(sp)
    1088:	94620f1e 	lhu	v0,3870(v1)
    108c:	304f0100 	andi	t7,v0,0x100
    1090:	15e00002 	bnez	t7,109c <EnKz_Update+0x38>
    1094:	34580100 	ori	t8,v0,0x100
    1098:	a4780f1e 	sh	t8,3870(v1)
    109c:	26060194 	addiu	a2,s0,404
    10a0:	00c02825 	move	a1,a2
    10a4:	afa60024 	sw	a2,36(sp)
    10a8:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
    10ac:	02002025 	move	a0,s0
    10b0:	8fa40034 	lw	a0,52(sp)
    10b4:	3c010001 	lui	at,0x1
    10b8:	34211e60 	ori	at,at,0x1e60
    10bc:	8fa60024 	lw	a2,36(sp)
    10c0:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
    10c4:	00812821 	addu	a1,a0,at
    10c8:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
    10cc:	2604014c 	addiu	a0,s0,332
    10d0:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
    10d4:	02002025 	move	a0,s0
    10d8:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
    10dc:	02002025 	move	a0,s0
    10e0:	8e020190 	lw	v0,400(s0)
    10e4:	3c190000 	lui	t9,0x0
    10e8:	27390000 	addiu	t9,t9,0
    10ec:	13220004 	beq	t9,v0,1100 <EnKz_Update+0x9c>
    10f0:	02002025 	move	a0,s0
    10f4:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
    10f8:	8fa50034 	lw	a1,52(sp)
    10fc:	8e020190 	lw	v0,400(s0)
    1100:	02002025 	move	a0,s0
    1104:	0040f809 	jalr	v0
    1108:	8fa50034 	lw	a1,52(sp)
    110c:	8fbf001c 	lw	ra,28(sp)
    1110:	8fb00018 	lw	s0,24(sp)
    1114:	27bd0030 	addiu	sp,sp,48
    1118:	03e00008 	jr	ra
    111c:	00000000 	nop

00001120 <EnKz_OverrideLimbDraw>:
    1120:	27bdffd8 	addiu	sp,sp,-40
    1124:	24010008 	li	at,8
    1128:	afbf0014 	sw	ra,20(sp)
    112c:	afa40028 	sw	a0,40(sp)
    1130:	afa60030 	sw	a2,48(sp)
    1134:	10a10006 	beq	a1,at,1150 <EnKz_OverrideLimbDraw+0x30>
    1138:	afa70034 	sw	a3,52(sp)
    113c:	24010009 	li	at,9
    1140:	10a10003 	beq	a1,at,1150 <EnKz_OverrideLimbDraw+0x30>
    1144:	2401000a 	li	at,10
    1148:	54a10026 	bnel	a1,at,11e4 <EnKz_OverrideLimbDraw+0xc4>
    114c:	8fbf0014 	lw	ra,20(sp)
    1150:	8fae003c 	lw	t6,60(sp)
    1154:	00057840 	sll	t7,a1,0x1
    1158:	01cf1821 	addu	v1,t6,t7
    115c:	846402a6 	lh	a0,678(v1)
    1160:	afa5002c 	sw	a1,44(sp)
    1164:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
    1168:	afa3001c 	sw	v1,28(sp)
    116c:	8fa20038 	lw	v0,56(sp)
    1170:	3c014348 	lui	at,0x4348
    1174:	44814000 	mtc1	at,$f8
    1178:	84580002 	lh	t8,2(v0)
    117c:	8fa3001c 	lw	v1,28(sp)
    1180:	46080282 	mul.s	$f10,$f0,$f8
    1184:	44982000 	mtc1	t8,$f4
    1188:	00000000 	nop
    118c:	468021a0 	cvt.s.w	$f6,$f4
    1190:	460a3400 	add.s	$f16,$f6,$f10
    1194:	4600848d 	trunc.w.s	$f18,$f16
    1198:	44089000 	mfc1	t0,$f18
    119c:	00000000 	nop
    11a0:	a4480002 	sh	t0,2(v0)
    11a4:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
    11a8:	846402be 	lh	a0,702(v1)
    11ac:	8fa20038 	lw	v0,56(sp)
    11b0:	3c014348 	lui	at,0x4348
    11b4:	44813000 	mtc1	at,$f6
    11b8:	84490004 	lh	t1,4(v0)
    11bc:	46060282 	mul.s	$f10,$f0,$f6
    11c0:	44892000 	mtc1	t1,$f4
    11c4:	00000000 	nop
    11c8:	46802220 	cvt.s.w	$f8,$f4
    11cc:	460a4400 	add.s	$f16,$f8,$f10
    11d0:	4600848d 	trunc.w.s	$f18,$f16
    11d4:	440b9000 	mfc1	t3,$f18
    11d8:	00000000 	nop
    11dc:	a44b0004 	sh	t3,4(v0)
    11e0:	8fbf0014 	lw	ra,20(sp)
    11e4:	27bd0028 	addiu	sp,sp,40
    11e8:	00001025 	move	v0,zero
    11ec:	03e00008 	jr	ra
    11f0:	00000000 	nop

000011f4 <EnKz_PostLimbDraw>:
    11f4:	27bdffd8 	addiu	sp,sp,-40
    11f8:	3c0e0000 	lui	t6,0x0
    11fc:	afbf0014 	sw	ra,20(sp)
    1200:	afa40028 	sw	a0,40(sp)
    1204:	afa60030 	sw	a2,48(sp)
    1208:	afa70034 	sw	a3,52(sp)
    120c:	25ce00b8 	addiu	t6,t6,184
    1210:	8dd80000 	lw	t8,0(t6)
    1214:	27a40018 	addiu	a0,sp,24
    1218:	2401000b 	li	at,11
    121c:	ac980000 	sw	t8,0(a0)
    1220:	8dcf0004 	lw	t7,4(t6)
    1224:	ac8f0004 	sw	t7,4(a0)
    1228:	8dd80008 	lw	t8,8(t6)
    122c:	14a10004 	bne	a1,at,1240 <EnKz_PostLimbDraw+0x4c>
    1230:	ac980008 	sw	t8,8(a0)
    1234:	8fa50038 	lw	a1,56(sp)
    1238:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
    123c:	24a50038 	addiu	a1,a1,56
    1240:	8fbf0014 	lw	ra,20(sp)
    1244:	27bd0028 	addiu	sp,sp,40
    1248:	03e00008 	jr	ra
    124c:	00000000 	nop

00001250 <EnKz_Draw>:
    1250:	27bdffb0 	addiu	sp,sp,-80
    1254:	afbf002c 	sw	ra,44(sp)
    1258:	afb00028 	sw	s0,40(sp)
    125c:	afa50054 	sw	a1,84(sp)
    1260:	8ca50000 	lw	a1,0(a1)
    1264:	00808025 	move	s0,a0
    1268:	3c060000 	lui	a2,0x0
    126c:	24c60000 	addiu	a2,a2,0
    1270:	27a40038 	addiu	a0,sp,56
    1274:	240704eb 	li	a3,1259
    1278:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
    127c:	afa50048 	sw	a1,72(sp)
    1280:	8fa80048 	lw	t0,72(sp)
    1284:	3c18db06 	lui	t8,0xdb06
    1288:	37180020 	ori	t8,t8,0x20
    128c:	8d0302c0 	lw	v1,704(t0)
    1290:	3c040000 	lui	a0,0x0
    1294:	3c0e0000 	lui	t6,0x0
    1298:	246f0008 	addiu	t7,v1,8
    129c:	ad0f02c0 	sw	t7,704(t0)
    12a0:	ac780000 	sw	t8,0(v1)
    12a4:	86190210 	lh	t9,528(s0)
    12a8:	3c0100ff 	lui	at,0xff
    12ac:	3421ffff 	ori	at,at,0xffff
    12b0:	00194880 	sll	t1,t9,0x2
    12b4:	00892021 	addu	a0,a0,t1
    12b8:	8c8400c4 	lw	a0,196(a0)
    12bc:	00045900 	sll	t3,a0,0x4
    12c0:	000b6702 	srl	t4,t3,0x1c
    12c4:	000c6880 	sll	t5,t4,0x2
    12c8:	01cd7021 	addu	t6,t6,t5
    12cc:	8dce0000 	lw	t6,0(t6)
    12d0:	00815024 	and	t2,a0,at
    12d4:	3c018000 	lui	at,0x8000
    12d8:	014e7821 	addu	t7,t2,t6
    12dc:	01e1c021 	addu	t8,t7,at
    12e0:	ac780004 	sw	t8,4(v1)
    12e4:	8fb90054 	lw	t9,84(sp)
    12e8:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
    12ec:	8f240000 	lw	a0,0(t9)
    12f0:	8e050150 	lw	a1,336(s0)
    12f4:	8e06016c 	lw	a2,364(s0)
    12f8:	9207014e 	lbu	a3,334(s0)
    12fc:	3c090000 	lui	t1,0x0
    1300:	3c0b0000 	lui	t3,0x0
    1304:	256b0000 	addiu	t3,t3,0
    1308:	25290000 	addiu	t1,t1,0
    130c:	afa90010 	sw	t1,16(sp)
    1310:	afab0014 	sw	t3,20(sp)
    1314:	afb00018 	sw	s0,24(sp)
    1318:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
    131c:	8fa40054 	lw	a0,84(sp)
    1320:	8fac0054 	lw	t4,84(sp)
    1324:	3c060000 	lui	a2,0x0
    1328:	24c60010 	addiu	a2,a2,16
    132c:	27a40038 	addiu	a0,sp,56
    1330:	24070501 	li	a3,1281
    1334:	0c000000 	jal	0 <EnKz_GetTextNoMaskChild>
    1338:	8d850000 	lw	a1,0(t4)
    133c:	8fbf002c 	lw	ra,44(sp)
    1340:	8fb00028 	lw	s0,40(sp)
    1344:	27bd0050 	addiu	sp,sp,80
    1348:	03e00008 	jr	ra
    134c:	00000000 	nop
