
build/src/code/audio_playback.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Audio_NoteSetVelPanReverb>:
       0:	27bdffb8 	addiu	sp,sp,-72
       4:	afbf0014 	sw	ra,20(sp)
       8:	afa40048 	sw	a0,72(sp)
       c:	90cf0002 	lbu	t7,2(a2)
      10:	90820035 	lbu	v0,53(a0)
      14:	c4c20008 	lwc1	$f2,8(a2)
      18:	a3af0027 	sb	t7,39(sp)
      1c:	90d80000 	lbu	t8,0(a2)
      20:	27b90024 	addiu	t9,sp,36
      24:	00a03825 	move	a3,a1
      28:	a3b80026 	sb	t8,38(sp)
      2c:	90c90003 	lbu	t1,3(a2)
      30:	00a02025 	move	a0,a1
      34:	a3290000 	sb	t1,0(t9)
      38:	8faa0048 	lw	t2,72(sp)
      3c:	914c00c0 	lbu	t4,192(t2)
      40:	a0ac0000 	sb	t4,0(a1)
      44:	8fad0048 	lw	t5,72(sp)
      48:	91af00c1 	lbu	t7,193(t5)
      4c:	a0af0001 	sb	t7,1(a1)
      50:	8fb80048 	lw	t8,72(sp)
      54:	8f1900d0 	lw	t9,208(t8)
      58:	acb90010 	sw	t9,16(a1)
      5c:	8fa80048 	lw	t0,72(sp)
      60:	910900c6 	lbu	t1,198(t0)
      64:	a0a90006 	sb	t1,6(a1)
      68:	8cc50004 	lw	a1,4(a2)
      6c:	afa7004c 	sw	a3,76(sp)
      70:	afa60050 	sw	a2,80(sp)
      74:	afa20020 	sw	v0,32(sp)
      78:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
      7c:	e7a20028 	swc1	$f2,40(sp)
      80:	93aa0027 	lbu	t2,39(sp)
      84:	8fa7004c 	lw	a3,76(sp)
      88:	8fa20020 	lw	v0,32(sp)
      8c:	314b007f 	andi	t3,t2,0x7f
      90:	a3ab0027 	sb	t3,39(sp)
      94:	90ec0000 	lbu	t4,0(a3)
      98:	8fa60050 	lw	a2,80(sp)
      9c:	c7a20028 	lwc1	$f2,40(sp)
      a0:	318efff7 	andi	t6,t4,0xfff7
      a4:	31cb00fb 	andi	t3,t6,0xfb
      a8:	a0ee0000 	sb	t6,0(a3)
      ac:	a0eb0000 	sb	t3,0(a3)
      b0:	8fb80024 	lw	t8,36(sp)
      b4:	316c00fd 	andi	t4,t3,0xfd
      b8:	44800000 	mtc1	zero,$f0
      bc:	0018c980 	sll	t9,t8,0x6
      c0:	001947c2 	srl	t0,t9,0x1f
      c4:	00084840 	sll	t1,t0,0x1
      c8:	312a0002 	andi	t2,t1,0x2
      cc:	014cc825 	or	t9,t2,t4
      d0:	a0f90000 	sb	t9,0(a3)
      d4:	93af0024 	lbu	t7,36(sp)
      d8:	332800fe 	andi	t0,t9,0xfe
      dc:	3c0b0000 	lui	t3,0x0
      e0:	31f80001 	andi	t8,t7,0x1
      e4:	03084825 	or	t1,t8,t0
      e8:	10400021 	beqz	v0,170 <Audio_NoteSetVelPanReverb+0x170>
      ec:	a0e90000 	sb	t1,0(a3)
      f0:	816b289a 	lb	t3,10394(t3)
      f4:	93a30027 	lbu	v1,39(sp)
      f8:	24010001 	li	at,1
      fc:	1561001c 	bne	t3,at,170 <Audio_NoteSetVelPanReverb+0x170>
     100:	00031843 	sra	v1,v1,0x1
     104:	28610040 	slti	at,v1,64
     108:	14200002 	bnez	at,114 <Audio_NoteSetVelPanReverb+0x114>
     10c:	3c0a0000 	lui	t2,0x0
     110:	2403003f 	li	v1,63
     114:	00031040 	sll	v0,v1,0x1
     118:	01425021 	addu	t2,t2,v0
     11c:	954a0000 	lhu	t2,0(t2)
     120:	00026023 	negu	t4,v0
     124:	3c0d0000 	lui	t5,0x0
     128:	90ef0001 	lbu	t7,1(a3)
     12c:	01ac6821 	addu	t5,t5,t4
     130:	a0ea0004 	sb	t2,4(a3)
     134:	95ad007e 	lhu	t5,126(t5)
     138:	35f90001 	ori	t9,t7,0x1
     13c:	a0f90001 	sb	t9,1(a3)
     140:	a0ed0003 	sb	t5,3(a3)
     144:	93b80027 	lbu	t8,39(sp)
     148:	3c010000 	lui	at,0x0
     14c:	00184080 	sll	t0,t8,0x2
     150:	00280821 	addu	at,at,t0
     154:	c42c0000 	lwc1	$f12,0(at)
     158:	00184880 	sll	t1,t8,0x2
     15c:	00095823 	negu	t3,t1
     160:	3c010000 	lui	at,0x0
     164:	002b0821 	addu	at,at,t3
     168:	1000009a 	b	3d4 <Audio_NoteSetVelPanReverb+0x3d4>
     16c:	c42e01fc 	lwc1	$f14,508(at)
     170:	3c030000 	lui	v1,0x0
     174:	10400071 	beqz	v0,33c <Audio_NoteSetVelPanReverb+0x33c>
     178:	8063289a 	lb	v1,10394(v1)
     17c:	54600070 	bnezl	v1,340 <Audio_NoteSetVelPanReverb+0x340>
     180:	24010003 	li	at,3
     184:	90ea0001 	lbu	t2,1(a3)
     188:	a0e00003 	sb	zero,3(a3)
     18c:	a0e00004 	sb	zero,4(a3)
     190:	314cfffe 	andi	t4,t2,0xfffe
     194:	a0ec0001 	sb	t4,1(a3)
     198:	93ad0027 	lbu	t5,39(sp)
     19c:	3c010000 	lui	at,0x0
     1a0:	00001825 	move	v1,zero
     1a4:	000d7080 	sll	t6,t5,0x2
     1a8:	002e0821 	addu	at,at,t6
     1ac:	c42c0000 	lwc1	$f12,0(at)
     1b0:	000d7880 	sll	t7,t5,0x2
     1b4:	000fc823 	negu	t9,t7
     1b8:	3c010000 	lui	at,0x0
     1bc:	00390821 	addu	at,at,t9
     1c0:	c42e01fc 	lwc1	$f14,508(at)
     1c4:	29a10020 	slti	at,t5,32
     1c8:	10200003 	beqz	at,1d8 <Audio_NoteSetVelPanReverb+0x1d8>
     1cc:	00002025 	move	a0,zero
     1d0:	10000006 	b	1ec <Audio_NoteSetVelPanReverb+0x1ec>
     1d4:	24040001 	li	a0,1
     1d8:	93a80027 	lbu	t0,39(sp)
     1dc:	29010061 	slti	at,t0,97
     1e0:	54200003 	bnezl	at,1f0 <Audio_NoteSetVelPanReverb+0x1f0>
     1e4:	90ea0000 	lbu	t2,0(a3)
     1e8:	24030001 	li	v1,1
     1ec:	90ea0000 	lbu	t2,0(a3)
     1f0:	000348c0 	sll	t1,v1,0x3
     1f4:	312b0008 	andi	t3,t1,0x8
     1f8:	314cfff7 	andi	t4,t2,0xfff7
     1fc:	016c4025 	or	t0,t3,t4
     200:	0004c880 	sll	t9,a0,0x2
     204:	332d0004 	andi	t5,t9,0x4
     208:	311800fb 	andi	t8,t0,0xfb
     20c:	a0e80000 	sb	t0,0(a3)
     210:	01b84825 	or	t1,t5,t8
     214:	a0e90000 	sb	t1,0(a3)
     218:	8fa20024 	lw	v0,36(sp)
     21c:	24010001 	li	at,1
     220:	00021080 	sll	v0,v0,0x2
     224:	00021782 	srl	v0,v0,0x1e
     228:	5040006b 	beqzl	v0,3d8 <Audio_NoteSetVelPanReverb+0x3d8>
     22c:	4600103c 	c.lt.s	$f2,$f0
     230:	10410009 	beq	v0,at,258 <Audio_NoteSetVelPanReverb+0x258>
     234:	8faa0024 	lw	t2,36(sp)
     238:	24010002 	li	at,2
     23c:	10410017 	beq	v0,at,29c <Audio_NoteSetVelPanReverb+0x29c>
     240:	8fa80024 	lw	t0,36(sp)
     244:	24010003 	li	at,3
     248:	10410028 	beq	v0,at,2ec <Audio_NoteSetVelPanReverb+0x2ec>
     24c:	8fa80024 	lw	t0,36(sp)
     250:	10000061 	b	3d8 <Audio_NoteSetVelPanReverb+0x3d8>
     254:	4600103c 	c.lt.s	$f2,$f0
     258:	90f90000 	lbu	t9,0(a3)
     25c:	000a5900 	sll	t3,t2,0x4
     260:	000b67c2 	srl	t4,t3,0x1f
     264:	000c70c0 	sll	t6,t4,0x3
     268:	31cf0008 	andi	t7,t6,0x8
     26c:	3328fff7 	andi	t0,t9,0xfff7
     270:	01e87025 	or	t6,t7,t0
     274:	a0ee0000 	sb	t6,0(a3)
     278:	8fb80024 	lw	t8,36(sp)
     27c:	31d900fb 	andi	t9,t6,0xfb
     280:	00184940 	sll	t1,t8,0x5
     284:	000957c2 	srl	t2,t1,0x1f
     288:	000a5880 	sll	t3,t2,0x2
     28c:	316c0004 	andi	t4,t3,0x4
     290:	01997825 	or	t7,t4,t9
     294:	1000004f 	b	3d4 <Audio_NoteSetVelPanReverb+0x3d4>
     298:	a0ef0000 	sb	t7,0(a3)
     29c:	00086900 	sll	t5,t0,0x4
     2a0:	90ec0000 	lbu	t4,0(a3)
     2a4:	000dc7c2 	srl	t8,t5,0x1f
     2a8:	03035025 	or	t2,t8,v1
     2ac:	000a58c0 	sll	t3,t2,0x3
     2b0:	316e0008 	andi	t6,t3,0x8
     2b4:	3199fff7 	andi	t9,t4,0xfff7
     2b8:	01d97825 	or	t7,t6,t9
     2bc:	a0ef0000 	sb	t7,0(a3)
     2c0:	8fa80024 	lw	t0,36(sp)
     2c4:	01e07025 	move	t6,t7
     2c8:	31d900fb 	andi	t9,t6,0xfb
     2cc:	00086940 	sll	t5,t0,0x5
     2d0:	000dc7c2 	srl	t8,t5,0x1f
     2d4:	03045025 	or	t2,t8,a0
     2d8:	000a5880 	sll	t3,t2,0x2
     2dc:	316c0004 	andi	t4,t3,0x4
     2e0:	01997825 	or	t7,t4,t9
     2e4:	1000003b 	b	3d4 <Audio_NoteSetVelPanReverb+0x3d4>
     2e8:	a0ef0000 	sb	t7,0(a3)
     2ec:	00086900 	sll	t5,t0,0x4
     2f0:	90ec0000 	lbu	t4,0(a3)
     2f4:	000dc7c2 	srl	t8,t5,0x1f
     2f8:	03035026 	xor	t2,t8,v1
     2fc:	000a58c0 	sll	t3,t2,0x3
     300:	316e0008 	andi	t6,t3,0x8
     304:	3199fff7 	andi	t9,t4,0xfff7
     308:	01d97825 	or	t7,t6,t9
     30c:	a0ef0000 	sb	t7,0(a3)
     310:	8fa80024 	lw	t0,36(sp)
     314:	01e07025 	move	t6,t7
     318:	31d900fb 	andi	t9,t6,0xfb
     31c:	00086940 	sll	t5,t0,0x5
     320:	000dc7c2 	srl	t8,t5,0x1f
     324:	03045026 	xor	t2,t8,a0
     328:	000a5880 	sll	t3,t2,0x2
     32c:	316c0004 	andi	t4,t3,0x4
     330:	01997825 	or	t7,t4,t9
     334:	10000027 	b	3d4 <Audio_NoteSetVelPanReverb+0x3d4>
     338:	a0ef0000 	sb	t7,0(a3)
     33c:	24010003 	li	at,3
     340:	1461000a 	bne	v1,at,36c <Audio_NoteSetVelPanReverb+0x36c>
     344:	8faa0024 	lw	t2,36(sp)
     348:	90e80000 	lbu	t0,0(a3)
     34c:	3c010000 	lui	at,0x0
     350:	c42e0000 	lwc1	$f14,0(at)
     354:	3118fffd 	andi	t8,t0,0xfffd
     358:	a0f80000 	sb	t8,0(a3)
     35c:	330900fe 	andi	t1,t8,0xfe
     360:	a0e90000 	sb	t1,0(a3)
     364:	1000001b 	b	3d4 <Audio_NoteSetVelPanReverb+0x3d4>
     368:	46007306 	mov.s	$f12,$f14
     36c:	90ef0000 	lbu	t7,0(a3)
     370:	000a5900 	sll	t3,t2,0x4
     374:	000b77c2 	srl	t6,t3,0x1f
     378:	000e60c0 	sll	t4,t6,0x3
     37c:	31990008 	andi	t9,t4,0x8
     380:	31e8fff7 	andi	t0,t7,0xfff7
     384:	03286025 	or	t4,t9,t0
     388:	a0ec0000 	sb	t4,0(a3)
     38c:	8fb80024 	lw	t8,36(sp)
     390:	318f00fb 	andi	t7,t4,0xfb
     394:	3c010000 	lui	at,0x0
     398:	00184940 	sll	t1,t8,0x5
     39c:	000957c2 	srl	t2,t1,0x1f
     3a0:	000a5880 	sll	t3,t2,0x2
     3a4:	316e0004 	andi	t6,t3,0x4
     3a8:	01cfc825 	or	t9,t6,t7
     3ac:	a0f90000 	sb	t9,0(a3)
     3b0:	93a80027 	lbu	t0,39(sp)
     3b4:	00086880 	sll	t5,t0,0x2
     3b8:	002d0821 	addu	at,at,t5
     3bc:	c42c0000 	lwc1	$f12,0(at)
     3c0:	0008c080 	sll	t8,t0,0x2
     3c4:	00184823 	negu	t1,t8
     3c8:	3c010000 	lui	at,0x0
     3cc:	00290821 	addu	at,at,t1
     3d0:	c42e01fc 	lwc1	$f14,508(at)
     3d4:	4600103c 	c.lt.s	$f2,$f0
     3d8:	3c013f80 	lui	at,0x3f80
     3dc:	45020003 	bc1fl	3ec <Audio_NoteSetVelPanReverb+0x3ec>
     3e0:	44810000 	mtc1	at,$f0
     3e4:	46000086 	mov.s	$f2,$f0
     3e8:	44810000 	mtc1	at,$f0
     3ec:	00000000 	nop
     3f0:	4602003c 	c.lt.s	$f0,$f2
     3f4:	00000000 	nop
     3f8:	45000002 	bc1f	404 <Audio_NoteSetVelPanReverb+0x404>
     3fc:	00000000 	nop
     400:	46000086 	mov.s	$f2,$f0
     404:	460c1102 	mul.s	$f4,$f2,$f12
     408:	3c010000 	lui	at,0x0
     40c:	c4200004 	lwc1	$f0,4(at)
     410:	46002182 	mul.s	$f6,$f4,$f0
     414:	00000000 	nop
     418:	460e1282 	mul.s	$f10,$f2,$f14
     41c:	4600320d 	trunc.w.s	$f8,$f6
     420:	46005402 	mul.s	$f16,$f10,$f0
     424:	440b4000 	mfc1	t3,$f8
     428:	00000000 	nop
     42c:	a4eb0008 	sh	t3,8(a3)
     430:	4600848d 	trunc.w.s	$f18,$f16
     434:	440e9000 	mfc1	t6,$f18
     438:	00000000 	nop
     43c:	a4ee000a 	sh	t6,10(a3)
     440:	90cf0001 	lbu	t7,1(a2)
     444:	a0ef0002 	sb	t7,2(a3)
     448:	8cd90010 	lw	t9,16(a2)
     44c:	acf90014 	sw	t9,20(a3)
     450:	90cd0014 	lbu	t5,20(a2)
     454:	a0ed0007 	sb	t5,7(a3)
     458:	94c80016 	lhu	t0,22(a2)
     45c:	a4e8000e 	sh	t0,14(a3)
     460:	93b80026 	lbu	t8,38(sp)
     464:	a0f80005 	sb	t8,5(a3)
     468:	8fbf0014 	lw	ra,20(sp)
     46c:	27bd0048 	addiu	sp,sp,72
     470:	03e00008 	jr	ra
     474:	00000000 	nop

00000478 <Audio_NoteSetResamplingRate>:
     478:	3c014000 	lui	at,0x4000
     47c:	44856000 	mtc1	a1,$f12
     480:	44812000 	mtc1	at,$f4
     484:	3c010000 	lui	at,0x0
     488:	4604603c 	c.lt.s	$f12,$f4
     48c:	00000000 	nop
     490:	4502000d 	bc1fl	4c8 <Audio_NoteSetResamplingRate+0x50>
     494:	90990001 	lbu	t9,1(a0)
     498:	c4220008 	lwc1	$f2,8(at)
     49c:	908e0001 	lbu	t6,1(a0)
     4a0:	460c103c 	c.lt.s	$f2,$f12
     4a4:	31cffffd 	andi	t7,t6,0xfffd
     4a8:	a08f0001 	sb	t7,1(a0)
     4ac:	45000003 	bc1f	4bc <Audio_NoteSetResamplingRate+0x44>
     4b0:	00000000 	nop
     4b4:	10000014 	b	508 <Audio_NoteSetResamplingRate+0x90>
     4b8:	46001006 	mov.s	$f0,$f2
     4bc:	10000012 	b	508 <Audio_NoteSetResamplingRate+0x90>
     4c0:	46006006 	mov.s	$f0,$f12
     4c4:	90990001 	lbu	t9,1(a0)
     4c8:	3c010000 	lui	at,0x0
     4cc:	37280002 	ori	t0,t9,0x2
     4d0:	a0880001 	sb	t0,1(a0)
     4d4:	c426000c 	lwc1	$f6,12(at)
     4d8:	3c013f00 	lui	at,0x3f00
     4dc:	460c303c 	c.lt.s	$f6,$f12
     4e0:	00000000 	nop
     4e4:	45020005 	bc1fl	4fc <Audio_NoteSetResamplingRate+0x84>
     4e8:	44814000 	mtc1	at,$f8
     4ec:	3c010000 	lui	at,0x0
     4f0:	10000005 	b	508 <Audio_NoteSetResamplingRate+0x90>
     4f4:	c4200010 	lwc1	$f0,16(at)
     4f8:	44814000 	mtc1	at,$f8
     4fc:	00000000 	nop
     500:	46086002 	mul.s	$f0,$f12,$f8
     504:	00000000 	nop
     508:	3c014700 	lui	at,0x4700
     50c:	44815000 	mtc1	at,$f10
     510:	00000000 	nop
     514:	460a0402 	mul.s	$f16,$f0,$f10
     518:	4600848d 	trunc.w.s	$f18,$f16
     51c:	440a9000 	mfc1	t2,$f18
     520:	03e00008 	jr	ra
     524:	a48a000c 	sh	t2,12(a0)

00000528 <Audio_NoteInit>:
     528:	27bdffe8 	addiu	sp,sp,-24
     52c:	afbf0014 	sw	ra,20(sp)
     530:	8c820044 	lw	v0,68(a0)
     534:	00803825 	move	a3,a0
     538:	24e60036 	addiu	a2,a3,54
     53c:	904e0018 	lbu	t6,24(v0)
     540:	55c0000a 	bnezl	t6,56c <Audio_NoteInit+0x44>
     544:	8c45001c 	lw	a1,28(v0)
     548:	8c4f0050 	lw	t7,80(v0)
     54c:	24840070 	addiu	a0,a0,112
     550:	24e60036 	addiu	a2,a3,54
     554:	8de50080 	lw	a1,128(t7)
     558:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     55c:	afa70018 	sw	a3,24(sp)
     560:	10000006 	b	57c <Audio_NoteInit+0x54>
     564:	8fa70018 	lw	a3,24(sp)
     568:	8c45001c 	lw	a1,28(v0)
     56c:	afa70018 	sw	a3,24(sp)
     570:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     574:	24e40070 	addiu	a0,a3,112
     578:	8fa70018 	lw	a3,24(sp)
     57c:	90f80070 	lbu	t8,112(a3)
     580:	3c090000 	lui	t1,0x0
     584:	a0e00034 	sb	zero,52(a3)
     588:	3319fff0 	andi	t9,t8,0xfff0
     58c:	37280001 	ori	t0,t9,0x1
     590:	a0e80070 	sb	t0,112(a3)
     594:	25290000 	addiu	t1,t1,0
     598:	8d2b0000 	lw	t3,0(t1)
     59c:	aceb00c0 	sw	t3,192(a3)
     5a0:	8d2a0004 	lw	t2,4(t1)
     5a4:	acea00c4 	sw	t2,196(a3)
     5a8:	8d2b0008 	lw	t3,8(t1)
     5ac:	aceb00c8 	sw	t3,200(a3)
     5b0:	8d2a000c 	lw	t2,12(t1)
     5b4:	acea00cc 	sw	t2,204(a3)
     5b8:	8d2b0010 	lw	t3,16(t1)
     5bc:	aceb00d0 	sw	t3,208(a3)
     5c0:	8d2a0014 	lw	t2,20(t1)
     5c4:	acea00d4 	sw	t2,212(a3)
     5c8:	8d2b0018 	lw	t3,24(t1)
     5cc:	aceb00d8 	sw	t3,216(a3)
     5d0:	8d2a001c 	lw	t2,28(t1)
     5d4:	acea00dc 	sw	t2,220(a3)
     5d8:	8fbf0014 	lw	ra,20(sp)
     5dc:	27bd0018 	addiu	sp,sp,24
     5e0:	03e00008 	jr	ra
     5e4:	00000000 	nop

000005e8 <Audio_NoteDisable>:
     5e8:	8c8e00c0 	lw	t6,192(a0)
     5ec:	24010001 	li	at,1
     5f0:	44802000 	mtc1	zero,$f4
     5f4:	000e7840 	sll	t7,t6,0x1
     5f8:	000fc7c2 	srl	t8,t7,0x1f
     5fc:	17010004 	bne	t8,at,610 <Audio_NoteDisable+0x28>
     600:	2402ffff 	li	v0,-1
     604:	909900c0 	lbu	t9,192(a0)
     608:	3328ffbf 	andi	t0,t9,0xffbf
     60c:	a08800c0 	sb	t0,192(a0)
     610:	908900c0 	lbu	t1,192(a0)
     614:	908d0070 	lbu	t5,112(a0)
     618:	a0800030 	sb	zero,48(a0)
     61c:	312aff7f 	andi	t2,t1,0xff7f
     620:	a08a00c0 	sb	t2,192(a0)
     624:	908b00c0 	lbu	t3,192(a0)
     628:	31aefff0 	andi	t6,t5,0xfff0
     62c:	a0800034 	sb	zero,52(a0)
     630:	316cffdf 	andi	t4,t3,0xffdf
     634:	a08c00c0 	sb	t4,192(a0)
     638:	ac820044 	sw	v0,68(a0)
     63c:	ac820040 	sw	v0,64(a0)
     640:	a08e0070 	sb	t6,112(a0)
     644:	03e00008 	jr	ra
     648:	e4840080 	swc1	$f4,128(a0)

0000064c <Audio_ProcessNotes>:
     64c:	27bdff60 	addiu	sp,sp,-160
     650:	afb40028 	sw	s4,40(sp)
     654:	3c140000 	lui	s4,0x0
     658:	26940000 	addiu	s4,s4,0
     65c:	8e822894 	lw	v0,10388(s4)
     660:	afb5002c 	sw	s5,44(sp)
     664:	afbf003c 	sw	ra,60(sp)
     668:	afbe0038 	sw	s8,56(sp)
     66c:	afb70034 	sw	s7,52(sp)
     670:	afb60030 	sw	s6,48(sp)
     674:	afb30024 	sw	s3,36(sp)
     678:	afb20020 	sw	s2,32(sp)
     67c:	afb1001c 	sw	s1,28(sp)
     680:	afb00018 	sw	s0,24(sp)
     684:	18400119 	blez	v0,aec <Audio_ProcessNotes+0x4a0>
     688:	0000a825 	move	s5,zero
     68c:	0000b825 	move	s7,zero
     690:	27be006f 	addiu	s8,sp,111
     694:	24160001 	li	s6,1
     698:	2413ffff 	li	s3,-1
     69c:	8e8f5b84 	lw	t7,23428(s4)
     6a0:	8e880014 	lw	t0,20(s4)
     6a4:	8e8e352c 	lw	t6,13612(s4)
     6a8:	01f5c021 	addu	t8,t7,s5
     6ac:	0018c940 	sll	t9,t8,0x5
     6b0:	03284821 	addu	t1,t9,t0
     6b4:	afa90090 	sw	t1,144(sp)
     6b8:	02ee8821 	addu	s1,s7,t6
     6bc:	8e2a0044 	lw	t2,68(s1)
     6c0:	26300030 	addiu	s0,s1,48
     6c4:	526a0043 	beql	s3,t2,7d4 <Audio_ProcessNotes+0x188>
     6c8:	92190004 	lbu	t9,4(s0)
     6cc:	26300030 	addiu	s0,s1,48
     6d0:	8e040014 	lw	a0,20(s0)
     6d4:	3c017fff 	lui	at,0x7fff
     6d8:	3421ffff 	ori	at,at,0xffff
     6dc:	0081082b 	sltu	at,a0,at
     6e0:	542000ff 	bnezl	at,ae0 <Audio_ProcessNotes+0x494>
     6e4:	26b50001 	addiu	s5,s5,1
     6e8:	8c8b002c 	lw	t3,44(a0)
     6ec:	522b000f 	beql	s1,t3,72c <Audio_ProcessNotes+0xe0>
     6f0:	8c990000 	lw	t9,0(a0)
     6f4:	920c0004 	lbu	t4,4(s0)
     6f8:	5580000c 	bnezl	t4,72c <Audio_ProcessNotes+0xe0>
     6fc:	8c990000 	lw	t9,0(a0)
     700:	920e0040 	lbu	t6,64(s0)
     704:	24180002 	li	t8,2
     708:	32c200ff 	andi	v0,s6,0xff
     70c:	35cf0010 	ori	t7,t6,0x10
     710:	a20f0040 	sb	t7,64(s0)
     714:	c6842864 	lwc1	$f4,10340(s4)
     718:	a2160000 	sb	s6,0(s0)
     71c:	a2180004 	sb	t8,4(s0)
     720:	10000032 	b	7ec <Audio_ProcessNotes+0x1a0>
     724:	e604004c 	swc1	$f4,76(s0)
     728:	8c990000 	lw	t9,0(a0)
     72c:	001947c2 	srl	t0,t9,0x1f
     730:	55000008 	bnezl	t0,754 <Audio_ProcessNotes+0x108>
     734:	8c850050 	lw	a1,80(a0)
     738:	92090004 	lbu	t1,4(s0)
     73c:	55200005 	bnezl	t1,754 <Audio_ProcessNotes+0x108>
     740:	8c850050 	lw	a1,80(a0)
     744:	920a0000 	lbu	t2,0(s0)
     748:	1d400015 	bgtz	t2,7a0 <Audio_ProcessNotes+0x154>
     74c:	00000000 	nop
     750:	8c850050 	lw	a1,80(a0)
     754:	8ca2004c 	lw	v0,76(a1)
     758:	54400008 	bnezl	v0,77c <Audio_ProcessNotes+0x130>
     75c:	8c4b0000 	lw	t3,0(v0)
     760:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     764:	00a02025 	move	a0,a1
     768:	a2160000 	sb	s6,0(s0)
     76c:	a2160004 	sb	s6,4(s0)
     770:	100000da 	b	adc <Audio_ProcessNotes+0x490>
     774:	8e822894 	lw	v0,10388(s4)
     778:	8c4b0000 	lw	t3,0(v0)
     77c:	000b6880 	sll	t5,t3,0x2
     780:	05a10005 	bgez	t5,798 <Audio_ProcessNotes+0x14c>
     784:	00000000 	nop
     788:	90ae0003 	lbu	t6,3(a1)
     78c:	31cf0040 	andi	t7,t6,0x40
     790:	15e00003 	bnez	t7,7a0 <Audio_ProcessNotes+0x154>
     794:	00000000 	nop
     798:	10000014 	b	7ec <Audio_ProcessNotes+0x1a0>
     79c:	92020000 	lbu	v0,0(s0)
     7a0:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     7a4:	00000000 	nop
     7a8:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     7ac:	02202025 	move	a0,s1
     7b0:	8e24000c 	lw	a0,12(s1)
     7b4:	02202825 	move	a1,s1
     7b8:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     7bc:	24840010 	addiu	a0,a0,16
     7c0:	24180002 	li	t8,2
     7c4:	a2160000 	sb	s6,0(s0)
     7c8:	10000007 	b	7e8 <Audio_ProcessNotes+0x19c>
     7cc:	a2180004 	sb	t8,4(s0)
     7d0:	92190004 	lbu	t9,4(s0)
     7d4:	57200005 	bnezl	t9,7ec <Audio_ProcessNotes+0x1a0>
     7d8:	92020000 	lbu	v0,0(s0)
     7dc:	92080000 	lbu	t0,0(s0)
     7e0:	5d0000bf 	bgtzl	t0,ae0 <Audio_ProcessNotes+0x494>
     7e4:	26b50001 	addiu	s5,s5,1
     7e8:	92020000 	lbu	v0,0(s0)
     7ec:	504000bb 	beqzl	v0,adc <Audio_ProcessNotes+0x490>
     7f0:	8e822894 	lw	v0,10388(s4)
     7f4:	92020004 	lbu	v0,4(s0)
     7f8:	263200c0 	addiu	s2,s1,192
     7fc:	5c400006 	bgtzl	v0,818 <Audio_ProcessNotes+0x1cc>
     800:	920c0040 	lbu	t4,64(s0)
     804:	8e490000 	lw	t1,0(s2)
     808:	00095880 	sll	t3,t1,0x2
     80c:	0563003b 	bgezl	t3,8fc <Audio_ProcessNotes+0x2b0>
     810:	920c0040 	lbu	t4,64(s0)
     814:	920c0040 	lbu	t4,64(s0)
     818:	263200c0 	addiu	s2,s1,192
     81c:	318d000f 	andi	t5,t4,0xf
     820:	51a00006 	beqzl	t5,83c <Audio_ProcessNotes+0x1f0>
     824:	8e190018 	lw	t9,24(s0)
     828:	8e4e0000 	lw	t6,0(s2)
     82c:	000ec080 	sll	t8,t6,0x2
     830:	07010044 	bgez	t8,944 <Audio_ProcessNotes+0x2f8>
     834:	00000000 	nop
     838:	8e190018 	lw	t9,24(s0)
     83c:	52790020 	beql	s3,t9,8c0 <Audio_ProcessNotes+0x274>
     840:	8e040014 	lw	a0,20(s0)
     844:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     848:	02202025 	move	a0,s1
     84c:	8e050018 	lw	a1,24(s0)
     850:	02202025 	move	a0,s1
     854:	8ca80050 	lw	t0,80(a1)
     858:	1100000f 	beqz	t0,898 <Audio_ProcessNotes+0x24c>
     85c:	00000000 	nop
     860:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     864:	263200c0 	addiu	s2,s1,192
     868:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     86c:	02202025 	move	a0,s1
     870:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     874:	02202025 	move	a0,s1
     878:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     87c:	02202025 	move	a0,s1
     880:	8e24000c 	lw	a0,12(s1)
     884:	02202825 	move	a1,s1
     888:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     88c:	24840030 	addiu	a0,a0,48
     890:	1000002c 	b	944 <Audio_ProcessNotes+0x2f8>
     894:	ae130018 	sw	s3,24(s0)
     898:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     89c:	02202025 	move	a0,s1
     8a0:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     8a4:	02202025 	move	a0,s1
     8a8:	8e24000c 	lw	a0,12(s1)
     8ac:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     8b0:	02202825 	move	a1,s1
     8b4:	10000088 	b	ad8 <Audio_ProcessNotes+0x48c>
     8b8:	ae130018 	sw	s3,24(s0)
     8bc:	8e040014 	lw	a0,20(s0)
     8c0:	12640004 	beq	s3,a0,8d4 <Audio_ProcessNotes+0x288>
     8c4:	00000000 	nop
     8c8:	908a0000 	lbu	t2,0(a0)
     8cc:	354b0002 	ori	t3,t2,0x2
     8d0:	a08b0000 	sb	t3,0(a0)
     8d4:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     8d8:	02202025 	move	a0,s1
     8dc:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     8e0:	02202025 	move	a0,s1
     8e4:	8e24000c 	lw	a0,12(s1)
     8e8:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     8ec:	02202825 	move	a1,s1
     8f0:	1000007a 	b	adc <Audio_ProcessNotes+0x490>
     8f4:	8e822894 	lw	v0,10388(s4)
     8f8:	920c0040 	lbu	t4,64(s0)
     8fc:	318d000f 	andi	t5,t4,0xf
     900:	15a00010 	bnez	t5,944 <Audio_ProcessNotes+0x2f8>
     904:	00000000 	nop
     908:	8e040014 	lw	a0,20(s0)
     90c:	12640004 	beq	s3,a0,920 <Audio_ProcessNotes+0x2d4>
     910:	00000000 	nop
     914:	908f0000 	lbu	t7,0(a0)
     918:	35f80002 	ori	t8,t7,0x2
     91c:	a0980000 	sb	t8,0(a0)
     920:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     924:	02202025 	move	a0,s1
     928:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     92c:	02202025 	move	a0,s1
     930:	8e24000c 	lw	a0,12(s1)
     934:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     938:	02202825 	move	a1,s1
     93c:	10000067 	b	adc <Audio_ProcessNotes+0x490>
     940:	8e822894 	lw	v0,10388(s4)
     944:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     948:	26040040 	addiu	a0,s0,64
     94c:	e7a00064 	swc1	$f0,100(sp)
     950:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     954:	02202025 	move	a0,s1
     958:	92020004 	lbu	v0,4(s0)
     95c:	24010001 	li	at,1
     960:	10410002 	beq	v0,at,96c <Audio_ProcessNotes+0x320>
     964:	24010002 	li	at,2
     968:	14410018 	bne	v0,at,9cc <Audio_ProcessNotes+0x380>
     96c:	2602001c 	addiu	v0,s0,28
     970:	c4460008 	lwc1	$f6,8(v0)
     974:	e7a60070 	swc1	$f6,112(sp)
     978:	c448000c 	lwc1	$f8,12(v0)
     97c:	e7a80074 	swc1	$f8,116(sp)
     980:	90590002 	lbu	t9,2(v0)
     984:	a3b9006e 	sb	t9,110(sp)
     988:	90480000 	lbu	t0,0(v0)
     98c:	a3a8006c 	sb	t0,108(sp)
     990:	904a0003 	lbu	t2,3(v0)
     994:	a3ca0000 	sb	t2,0(s8)
     998:	904b0001 	lbu	t3,1(v0)
     99c:	a3ab006d 	sb	t3,109(sp)
     9a0:	8c4c0010 	lw	t4,16(v0)
     9a4:	afac007c 	sw	t4,124(sp)
     9a8:	904d0004 	lbu	t5,4(v0)
     9ac:	a3ad0080 	sb	t5,128(sp)
     9b0:	944e0006 	lhu	t6,6(v0)
     9b4:	a7ae0082 	sh	t6,130(sp)
     9b8:	8e430000 	lw	v1,0(s2)
     9bc:	00031ac0 	sll	v1,v1,0xb
     9c0:	00031f82 	srl	v1,v1,0x1e
     9c4:	1000002b 	b	a74 <Audio_ProcessNotes+0x428>
     9c8:	306300ff 	andi	v1,v1,0xff
     9cc:	8e030014 	lw	v1,20(s0)
     9d0:	c46a0044 	lwc1	$f10,68(v1)
     9d4:	8c620050 	lw	v0,80(v1)
     9d8:	e7aa0070 	swc1	$f10,112(sp)
     9dc:	c4700040 	lwc1	$f16,64(v1)
     9e0:	e7b00074 	swc1	$f16,116(sp)
     9e4:	906f0007 	lbu	t7,7(v1)
     9e8:	a3af006e 	sb	t7,110(sp)
     9ec:	90780001 	lbu	t8,1(v1)
     9f0:	57000005 	bnezl	t8,a08 <Audio_ProcessNotes+0x3bc>
     9f4:	906a0001 	lbu	t2,1(v1)
     9f8:	904800d0 	lbu	t0,208(v0)
     9fc:	10000003 	b	a0c <Audio_ProcessNotes+0x3c0>
     a00:	a3c80000 	sb	t0,0(s8)
     a04:	906a0001 	lbu	t2,1(v1)
     a08:	a3ca0000 	sb	t2,0(s8)
     a0c:	904b0004 	lbu	t3,4(v0)
     a10:	a3ab006c 	sb	t3,108(sp)
     a14:	904c000c 	lbu	t4,12(v0)
     a18:	a3ac006d 	sb	t4,109(sp)
     a1c:	8c4d00cc 	lw	t5,204(v0)
     a20:	afad007c 	sw	t5,124(sp)
     a24:	904e000f 	lbu	t6,15(v0)
     a28:	a3ae0080 	sb	t6,128(sp)
     a2c:	944f0020 	lhu	t7,32(v0)
     a30:	a7af0082 	sh	t7,130(sp)
     a34:	8c58004c 	lw	t8,76(v0)
     a38:	90430009 	lbu	v1,9(v0)
     a3c:	8f190000 	lw	t9,0(t8)
     a40:	30630007 	andi	v1,v1,0x7
     a44:	306300ff 	andi	v1,v1,0xff
     a48:	00194880 	sll	t1,t9,0x2
     a4c:	0523000a 	bgezl	t1,a78 <Audio_ProcessNotes+0x42c>
     a50:	c606000c 	lwc1	$f6,12(s0)
     a54:	904a0003 	lbu	t2,3(v0)
     a58:	314b0008 	andi	t3,t2,0x8
     a5c:	51600006 	beqzl	t3,a78 <Audio_ProcessNotes+0x42c>
     a60:	c606000c 	lwc1	$f6,12(s0)
     a64:	44809000 	mtc1	zero,$f18
     a68:	44802000 	mtc1	zero,$f4
     a6c:	e7b20070 	swc1	$f18,112(sp)
     a70:	e7a40074 	swc1	$f4,116(sp)
     a74:	c606000c 	lwc1	$f6,12(s0)
     a78:	c6080008 	lwc1	$f8,8(s0)
     a7c:	c7b00070 	lwc1	$f16,112(sp)
     a80:	c6842860 	lwc1	$f4,10336(s4)
     a84:	46083282 	mul.s	$f10,$f6,$f8
     a88:	c7a80074 	lwc1	$f8,116(sp)
     a8c:	a3a3006b 	sb	v1,107(sp)
     a90:	02202025 	move	a0,s1
     a94:	8fa50090 	lw	a1,144(sp)
     a98:	27a6006c 	addiu	a2,sp,108
     a9c:	460a8482 	mul.s	$f18,$f16,$f10
     aa0:	c7b00064 	lwc1	$f16,100(sp)
     aa4:	46049182 	mul.s	$f6,$f18,$f4
     aa8:	e7b20070 	swc1	$f18,112(sp)
     aac:	46104282 	mul.s	$f10,$f8,$f16
     ab0:	e7a60070 	swc1	$f6,112(sp)
     ab4:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     ab8:	e7aa0074 	swc1	$f10,116(sp)
     abc:	93ac006b 	lbu	t4,107(sp)
     ac0:	924f0001 	lbu	t7,1(s2)
     ac4:	000c68c0 	sll	t5,t4,0x3
     ac8:	31ae0018 	andi	t6,t5,0x18
     acc:	31f8ffe7 	andi	t8,t7,0xffe7
     ad0:	01d8c825 	or	t9,t6,t8
     ad4:	a2590001 	sb	t9,1(s2)
     ad8:	8e822894 	lw	v0,10388(s4)
     adc:	26b50001 	addiu	s5,s5,1
     ae0:	02a2082a 	slt	at,s5,v0
     ae4:	1420feed 	bnez	at,69c <Audio_ProcessNotes+0x50>
     ae8:	26f700e0 	addiu	s7,s7,224
     aec:	8fbf003c 	lw	ra,60(sp)
     af0:	8fb00018 	lw	s0,24(sp)
     af4:	8fb1001c 	lw	s1,28(sp)
     af8:	8fb20020 	lw	s2,32(sp)
     afc:	8fb30024 	lw	s3,36(sp)
     b00:	8fb40028 	lw	s4,40(sp)
     b04:	8fb5002c 	lw	s5,44(sp)
     b08:	8fb60030 	lw	s6,48(sp)
     b0c:	8fb70034 	lw	s7,52(sp)
     b10:	8fbe0038 	lw	s8,56(sp)
     b14:	03e00008 	jr	ra
     b18:	27bd00a0 	addiu	sp,sp,160

00000b1c <Audio_InstrumentGetAudioBankSound>:
     b1c:	908e0001 	lbu	t6,1(a0)
     b20:	00ae082a 	slt	at,a1,t6
     b24:	50200004 	beqzl	at,b38 <Audio_InstrumentGetAudioBankSound+0x1c>
     b28:	908f0002 	lbu	t7,2(a0)
     b2c:	03e00008 	jr	ra
     b30:	24820008 	addiu	v0,a0,8
     b34:	908f0002 	lbu	t7,2(a0)
     b38:	24830018 	addiu	v1,a0,24
     b3c:	01e5082a 	slt	at,t7,a1
     b40:	14200003 	bnez	at,b50 <Audio_InstrumentGetAudioBankSound+0x34>
     b44:	00000000 	nop
     b48:	03e00008 	jr	ra
     b4c:	24820010 	addiu	v0,a0,16
     b50:	03e00008 	jr	ra
     b54:	00601025 	move	v0,v1

00000b58 <Audio_GetInstrumentInner>:
     b58:	27bdffe8 	addiu	sp,sp,-24
     b5c:	240100ff 	li	at,255
     b60:	14810003 	bne	a0,at,b70 <Audio_GetInstrumentInner+0x18>
     b64:	afbf0014 	sw	ra,20(sp)
     b68:	1000002c 	b	c1c <Audio_GetInstrumentInner+0xc4>
     b6c:	00001025 	move	v0,zero
     b70:	afa40018 	sw	a0,24(sp)
     b74:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     b78:	afa5001c 	sw	a1,28(sp)
     b7c:	8fa40018 	lw	a0,24(sp)
     b80:	14400008 	bnez	v0,ba4 <Audio_GetInstrumentInner+0x4c>
     b84:	8fa5001c 	lw	a1,28(sp)
     b88:	3c060000 	lui	a2,0x0
     b8c:	3c011000 	lui	at,0x1000
     b90:	24c60000 	addiu	a2,a2,0
     b94:	00817021 	addu	t6,a0,at
     b98:	acce2980 	sw	t6,10624(a2)
     b9c:	1000001f 	b	c1c <Audio_GetInstrumentInner+0xc4>
     ba0:	00001025 	move	v0,zero
     ba4:	3c060000 	lui	a2,0x0
     ba8:	24c60000 	addiu	a2,a2,0
     bac:	8ccf2844 	lw	t7,10308(a2)
     bb0:	0004c080 	sll	t8,a0,0x2
     bb4:	0304c021 	addu	t8,t8,a0
     bb8:	0018c080 	sll	t8,t8,0x2
     bbc:	01f81021 	addu	v0,t7,t8
     bc0:	90590000 	lbu	t9,0(v0)
     bc4:	00044200 	sll	t0,a0,0x8
     bc8:	01054821 	addu	t1,t0,a1
     bcc:	00b9082a 	slt	at,a1,t9
     bd0:	14200005 	bnez	at,be8 <Audio_GetInstrumentInner+0x90>
     bd4:	3c010300 	lui	at,0x300
     bd8:	01215021 	addu	t2,t1,at
     bdc:	acca2980 	sw	t2,10624(a2)
     be0:	1000000e 	b	c1c <Audio_GetInstrumentInner+0xc4>
     be4:	00001025 	move	v0,zero
     be8:	8c4b0008 	lw	t3,8(v0)
     bec:	00056080 	sll	t4,a1,0x2
     bf0:	00047200 	sll	t6,a0,0x8
     bf4:	016c6821 	addu	t5,t3,t4
     bf8:	8da30000 	lw	v1,0(t5)
     bfc:	01c57821 	addu	t7,t6,a1
     c00:	3c010100 	lui	at,0x100
     c04:	14600004 	bnez	v1,c18 <Audio_GetInstrumentInner+0xc0>
     c08:	01e1c021 	addu	t8,t7,at
     c0c:	acd82980 	sw	t8,10624(a2)
     c10:	10000002 	b	c1c <Audio_GetInstrumentInner+0xc4>
     c14:	00601025 	move	v0,v1
     c18:	00601025 	move	v0,v1
     c1c:	8fbf0014 	lw	ra,20(sp)
     c20:	27bd0018 	addiu	sp,sp,24
     c24:	03e00008 	jr	ra
     c28:	00000000 	nop

00000c2c <Audio_GetDrum>:
     c2c:	27bdffe8 	addiu	sp,sp,-24
     c30:	240100ff 	li	at,255
     c34:	afbf0014 	sw	ra,20(sp)
     c38:	14810003 	bne	a0,at,c48 <Audio_GetDrum+0x1c>
     c3c:	00a03025 	move	a2,a1
     c40:	1000002f 	b	d00 <Audio_GetDrum+0xd4>
     c44:	00001025 	move	v0,zero
     c48:	afa40018 	sw	a0,24(sp)
     c4c:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     c50:	afa6001c 	sw	a2,28(sp)
     c54:	8fa40018 	lw	a0,24(sp)
     c58:	14400008 	bnez	v0,c7c <Audio_GetDrum+0x50>
     c5c:	8fa6001c 	lw	a2,28(sp)
     c60:	3c070000 	lui	a3,0x0
     c64:	3c011000 	lui	at,0x1000
     c68:	24e70000 	addiu	a3,a3,0
     c6c:	00817021 	addu	t6,a0,at
     c70:	acee2980 	sw	t6,10624(a3)
     c74:	10000022 	b	d00 <Audio_GetDrum+0xd4>
     c78:	00001025 	move	v0,zero
     c7c:	3c070000 	lui	a3,0x0
     c80:	24e70000 	addiu	a3,a3,0
     c84:	8cef2844 	lw	t7,10308(a3)
     c88:	0004c080 	sll	t8,a0,0x2
     c8c:	0304c021 	addu	t8,t8,a0
     c90:	0018c080 	sll	t8,t8,0x2
     c94:	01f81021 	addu	v0,t7,t8
     c98:	90590001 	lbu	t9,1(v0)
     c9c:	00044200 	sll	t0,a0,0x8
     ca0:	01064821 	addu	t1,t0,a2
     ca4:	00d9082a 	slt	at,a2,t9
     ca8:	14200005 	bnez	at,cc0 <Audio_GetDrum+0x94>
     cac:	3c010400 	lui	at,0x400
     cb0:	01215021 	addu	t2,t1,at
     cb4:	acea2980 	sw	t2,10624(a3)
     cb8:	10000011 	b	d00 <Audio_GetDrum+0xd4>
     cbc:	00001025 	move	v0,zero
     cc0:	8c43000c 	lw	v1,12(v0)
     cc4:	3c018000 	lui	at,0x8000
     cc8:	00065880 	sll	t3,a2,0x2
     ccc:	0061082b 	sltu	at,v1,at
     cd0:	10200003 	beqz	at,ce0 <Audio_GetDrum+0xb4>
     cd4:	006b6021 	addu	t4,v1,t3
     cd8:	10000009 	b	d00 <Audio_GetDrum+0xd4>
     cdc:	00001025 	move	v0,zero
     ce0:	8d850000 	lw	a1,0(t4)
     ce4:	00046a00 	sll	t5,a0,0x8
     ce8:	01a67021 	addu	t6,t5,a2
     cec:	14a00004 	bnez	a1,d00 <Audio_GetDrum+0xd4>
     cf0:	00a01025 	move	v0,a1
     cf4:	3c010500 	lui	at,0x500
     cf8:	01c17821 	addu	t7,t6,at
     cfc:	acef2980 	sw	t7,10624(a3)
     d00:	8fbf0014 	lw	ra,20(sp)
     d04:	27bd0018 	addiu	sp,sp,24
     d08:	03e00008 	jr	ra
     d0c:	00000000 	nop

00000d10 <Audio_GetSfx>:
     d10:	27bdffe8 	addiu	sp,sp,-24
     d14:	240100ff 	li	at,255
     d18:	afbf0014 	sw	ra,20(sp)
     d1c:	14810003 	bne	a0,at,d2c <Audio_GetSfx+0x1c>
     d20:	00a03025 	move	a2,a1
     d24:	10000033 	b	df4 <Audio_GetSfx+0xe4>
     d28:	00001025 	move	v0,zero
     d2c:	afa40018 	sw	a0,24(sp)
     d30:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     d34:	afa6001c 	sw	a2,28(sp)
     d38:	8fa40018 	lw	a0,24(sp)
     d3c:	14400008 	bnez	v0,d60 <Audio_GetSfx+0x50>
     d40:	8fa6001c 	lw	a2,28(sp)
     d44:	3c070000 	lui	a3,0x0
     d48:	3c011000 	lui	at,0x1000
     d4c:	24e70000 	addiu	a3,a3,0
     d50:	00817021 	addu	t6,a0,at
     d54:	acee2980 	sw	t6,10624(a3)
     d58:	10000026 	b	df4 <Audio_GetSfx+0xe4>
     d5c:	00001025 	move	v0,zero
     d60:	3c070000 	lui	a3,0x0
     d64:	24e70000 	addiu	a3,a3,0
     d68:	8cef2844 	lw	t7,10308(a3)
     d6c:	0004c080 	sll	t8,a0,0x2
     d70:	0304c021 	addu	t8,t8,a0
     d74:	0018c080 	sll	t8,t8,0x2
     d78:	01f81021 	addu	v0,t7,t8
     d7c:	94590004 	lhu	t9,4(v0)
     d80:	00044200 	sll	t0,a0,0x8
     d84:	01064821 	addu	t1,t0,a2
     d88:	00d9082a 	slt	at,a2,t9
     d8c:	14200005 	bnez	at,da4 <Audio_GetSfx+0x94>
     d90:	3c010400 	lui	at,0x400
     d94:	01215021 	addu	t2,t1,at
     d98:	acea2980 	sw	t2,10624(a3)
     d9c:	10000015 	b	df4 <Audio_GetSfx+0xe4>
     da0:	00001025 	move	v0,zero
     da4:	8c450010 	lw	a1,16(v0)
     da8:	3c018000 	lui	at,0x8000
     dac:	000658c0 	sll	t3,a2,0x3
     db0:	00a1082b 	sltu	at,a1,at
     db4:	10200003 	beqz	at,dc4 <Audio_GetSfx+0xb4>
     db8:	00ab1821 	addu	v1,a1,t3
     dbc:	1000000d 	b	df4 <Audio_GetSfx+0xe4>
     dc0:	00001025 	move	v0,zero
     dc4:	14600005 	bnez	v1,ddc <Audio_GetSfx+0xcc>
     dc8:	00046200 	sll	t4,a0,0x8
     dcc:	01866821 	addu	t5,t4,a2
     dd0:	3c010500 	lui	at,0x500
     dd4:	01a17021 	addu	t6,t5,at
     dd8:	acee2980 	sw	t6,10624(a3)
     ddc:	8c6f0000 	lw	t7,0(v1)
     de0:	00601025 	move	v0,v1
     de4:	15e00003 	bnez	t7,df4 <Audio_GetSfx+0xe4>
     de8:	00000000 	nop
     dec:	10000001 	b	df4 <Audio_GetSfx+0xe4>
     df0:	00001025 	move	v0,zero
     df4:	8fbf0014 	lw	ra,20(sp)
     df8:	27bd0018 	addiu	sp,sp,24
     dfc:	03e00008 	jr	ra
     e00:	00000000 	nop

00000e04 <func_800E7744>:
     e04:	27bdffe8 	addiu	sp,sp,-24
     e08:	240100ff 	li	at,255
     e0c:	afbf0014 	sw	ra,20(sp)
     e10:	14a10003 	bne	a1,at,e20 <func_800E7744+0x1c>
     e14:	afa40018 	sw	a0,24(sp)
     e18:	10000047 	b	f38 <func_800E7744+0x134>
     e1c:	2402ffff 	li	v0,-1
     e20:	00a02025 	move	a0,a1
     e24:	afa5001c 	sw	a1,28(sp)
     e28:	afa60020 	sw	a2,32(sp)
     e2c:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
     e30:	afa70024 	sw	a3,36(sp)
     e34:	8fa30018 	lw	v1,24(sp)
     e38:	8fa5001c 	lw	a1,28(sp)
     e3c:	8fa60020 	lw	a2,32(sp)
     e40:	14400003 	bnez	v0,e50 <func_800E7744+0x4c>
     e44:	8fa70024 	lw	a3,36(sp)
     e48:	1000003b 	b	f38 <func_800E7744+0x134>
     e4c:	2402fffe 	li	v0,-2
     e50:	10600006 	beqz	v1,e6c <func_800E7744+0x68>
     e54:	3c0e0000 	lui	t6,0x0
     e58:	24010001 	li	at,1
     e5c:	10610013 	beq	v1,at,eac <func_800E7744+0xa8>
     e60:	3c0a0000 	lui	t2,0x0
     e64:	10000024 	b	ef8 <func_800E7744+0xf4>
     e68:	3c080000 	lui	t0,0x0
     e6c:	8dce2844 	lw	t6,10308(t6)
     e70:	00057880 	sll	t7,a1,0x2
     e74:	01e57821 	addu	t7,t7,a1
     e78:	000f7880 	sll	t7,t7,0x2
     e7c:	01cf1021 	addu	v0,t6,t7
     e80:	90580001 	lbu	t8,1(v0)
     e84:	00d8082a 	slt	at,a2,t8
     e88:	54200004 	bnezl	at,e9c <func_800E7744+0x98>
     e8c:	8c59000c 	lw	t9,12(v0)
     e90:	10000029 	b	f38 <func_800E7744+0x134>
     e94:	2402fffd 	li	v0,-3
     e98:	8c59000c 	lw	t9,12(v0)
     e9c:	00064080 	sll	t0,a2,0x2
     ea0:	03284821 	addu	t1,t9,t0
     ea4:	10000023 	b	f34 <func_800E7744+0x130>
     ea8:	ad270000 	sw	a3,0(t1)
     eac:	8d4a2844 	lw	t2,10308(t2)
     eb0:	00055880 	sll	t3,a1,0x2
     eb4:	01655821 	addu	t3,t3,a1
     eb8:	000b5880 	sll	t3,t3,0x2
     ebc:	014b1021 	addu	v0,t2,t3
     ec0:	944c0004 	lhu	t4,4(v0)
     ec4:	00cc082a 	slt	at,a2,t4
     ec8:	54200004 	bnezl	at,edc <func_800E7744+0xd8>
     ecc:	8c4d0010 	lw	t5,16(v0)
     ed0:	10000019 	b	f38 <func_800E7744+0x134>
     ed4:	2402fffd 	li	v0,-3
     ed8:	8c4d0010 	lw	t5,16(v0)
     edc:	8cf90000 	lw	t9,0(a3)
     ee0:	000670c0 	sll	t6,a2,0x3
     ee4:	01ae7821 	addu	t7,t5,t6
     ee8:	adf90000 	sw	t9,0(t7)
     eec:	8cf80004 	lw	t8,4(a3)
     ef0:	10000010 	b	f34 <func_800E7744+0x130>
     ef4:	adf80004 	sw	t8,4(t7)
     ef8:	8d082844 	lw	t0,10308(t0)
     efc:	00054880 	sll	t1,a1,0x2
     f00:	01254821 	addu	t1,t1,a1
     f04:	00094880 	sll	t1,t1,0x2
     f08:	01091021 	addu	v0,t0,t1
     f0c:	904a0000 	lbu	t2,0(v0)
     f10:	00ca082a 	slt	at,a2,t2
     f14:	54200004 	bnezl	at,f28 <func_800E7744+0x124>
     f18:	8c4b0008 	lw	t3,8(v0)
     f1c:	10000006 	b	f38 <func_800E7744+0x134>
     f20:	2402fffd 	li	v0,-3
     f24:	8c4b0008 	lw	t3,8(v0)
     f28:	00066080 	sll	t4,a2,0x2
     f2c:	016c6821 	addu	t5,t3,t4
     f30:	ada70000 	sw	a3,0(t5)
     f34:	00001025 	move	v0,zero
     f38:	8fbf0014 	lw	ra,20(sp)
     f3c:	27bd0018 	addiu	sp,sp,24
     f40:	03e00008 	jr	ra
     f44:	00000000 	nop

00000f48 <Audio_SeqChanLayerDecayRelease>:
     f48:	27bdffd8 	addiu	sp,sp,-40
     f4c:	afb00018 	sw	s0,24(sp)
     f50:	2408ffff 	li	t0,-1
     f54:	00808025 	move	s0,a0
     f58:	afbf001c 	sw	ra,28(sp)
     f5c:	108800ab 	beq	a0,t0,120c <Audio_SeqChanLayerDecayRelease+0x2c4>
     f60:	afa5002c 	sw	a1,44(sp)
     f64:	908e0000 	lbu	t6,0(a0)
     f68:	8c82002c 	lw	v0,44(a0)
     f6c:	31cffff7 	andi	t7,t6,0xfff7
     f70:	104000a6 	beqz	v0,120c <Audio_SeqChanLayerDecayRelease+0x2c4>
     f74:	a08f0000 	sb	t7,0(a0)
     f78:	8c580048 	lw	t8,72(v0)
     f7c:	00403025 	move	a2,v0
     f80:	54980003 	bnel	a0,t8,f90 <Audio_SeqChanLayerDecayRelease+0x48>
     f84:	8cc20044 	lw	v0,68(a2)
     f88:	ac480048 	sw	t0,72(v0)
     f8c:	8cc20044 	lw	v0,68(a2)
     f90:	52020014 	beql	s0,v0,fe4 <Audio_SeqChanLayerDecayRelease+0x9c>
     f94:	90cf0070 	lbu	t7,112(a2)
     f98:	5502009d 	bnel	t0,v0,1210 <Audio_SeqChanLayerDecayRelease+0x2c8>
     f9c:	8fbf001c 	lw	ra,28(sp)
     fa0:	8cd90048 	lw	t9,72(a2)
     fa4:	5519009a 	bnel	t0,t9,1210 <Audio_SeqChanLayerDecayRelease+0x2c8>
     fa8:	8fbf001c 	lw	ra,28(sp)
     fac:	8cca0040 	lw	t2,64(a2)
     fb0:	8fab002c 	lw	t3,44(sp)
     fb4:	160a0095 	bne	s0,t2,120c <Audio_SeqChanLayerDecayRelease+0x2c4>
     fb8:	24090006 	li	t1,6
     fbc:	51690094 	beql	t3,t1,1210 <Audio_SeqChanLayerDecayRelease+0x2c8>
     fc0:	8fbf001c 	lw	ra,28(sp)
     fc4:	90cd0070 	lbu	t5,112(a2)
     fc8:	3c010000 	lui	at,0x0
     fcc:	c4242864 	lwc1	$f4,10340(at)
     fd0:	35ae0010 	ori	t6,t5,0x10
     fd4:	a0ce0070 	sb	t6,112(a2)
     fd8:	1000008c 	b	120c <Audio_SeqChanLayerDecayRelease+0x2c4>
     fdc:	e4c4007c 	swc1	$f4,124(a2)
     fe0:	90cf0070 	lbu	t7,112(a2)
     fe4:	24090006 	li	t1,6
     fe8:	31f8000f 	andi	t8,t7,0xf
     fec:	5138007e 	beql	t1,t8,11e8 <Audio_SeqChanLayerDecayRelease+0x2a0>
     ff0:	8fb9002c 	lw	t9,44(sp)
     ff4:	c6060044 	lwc1	$f6,68(s0)
     ff8:	24c4004c 	addiu	a0,a2,76
     ffc:	e4860008 	swc1	$f6,8(a0)
    1000:	c6080040 	lwc1	$f8,64(s0)
    1004:	e488000c 	swc1	$f8,12(a0)
    1008:	92190007 	lbu	t9,7(s0)
    100c:	a0990002 	sb	t9,2(a0)
    1010:	8e020050 	lw	v0,80(s0)
    1014:	5040003d 	beqzl	v0,110c <Audio_SeqChanLayerDecayRelease+0x1c4>
    1018:	920d0001 	lbu	t5,1(s0)
    101c:	904a0004 	lbu	t2,4(v0)
    1020:	00403825 	move	a3,v0
    1024:	00801825 	move	v1,a0
    1028:	a08a0000 	sb	t2,0(a0)
    102c:	904b000c 	lbu	t3,12(v0)
    1030:	24050010 	li	a1,16
    1034:	a08b0001 	sb	t3,1(a0)
    1038:	8c4c00cc 	lw	t4,204(v0)
    103c:	00001025 	move	v0,zero
    1040:	11800016 	beqz	t4,109c <Audio_SeqChanLayerDecayRelease+0x154>
    1044:	ac8c0010 	sw	t4,16(a0)
    1048:	8c8e0010 	lw	t6,16(a0)
    104c:	24630008 	addiu	v1,v1,8
    1050:	01c27821 	addu	t7,t6,v0
    1054:	85f80000 	lh	t8,0(t7)
    1058:	a478000c 	sh	t8,12(v1)
    105c:	8c990010 	lw	t9,16(a0)
    1060:	03225021 	addu	t2,t9,v0
    1064:	854b0002 	lh	t3,2(t2)
    1068:	a46b000e 	sh	t3,14(v1)
    106c:	8c8c0010 	lw	t4,16(a0)
    1070:	01826821 	addu	t5,t4,v0
    1074:	85ae0004 	lh	t6,4(t5)
    1078:	a46e0010 	sh	t6,16(v1)
    107c:	8c8f0010 	lw	t7,16(a0)
    1080:	01e2c021 	addu	t8,t7,v0
    1084:	87190006 	lh	t9,6(t8)
    1088:	24420008 	addiu	v0,v0,8
    108c:	1445ffee 	bne	v0,a1,1048 <Audio_SeqChanLayerDecayRelease+0x100>
    1090:	a4790012 	sh	t9,18(v1)
    1094:	248a0014 	addiu	t2,a0,20
    1098:	ac8a0010 	sw	t2,16(a0)
    109c:	94eb0020 	lhu	t3,32(a3)
    10a0:	a48b0006 	sh	t3,6(a0)
    10a4:	90ec000f 	lbu	t4,15(a3)
    10a8:	a08c0004 	sb	t4,4(a0)
    10ac:	8ced004c 	lw	t5,76(a3)
    10b0:	8dae0000 	lw	t6,0(t5)
    10b4:	000ec080 	sll	t8,t6,0x2
    10b8:	07030009 	bgezl	t8,10e0 <Audio_SeqChanLayerDecayRelease+0x198>
    10bc:	920e0001 	lbu	t6,1(s0)
    10c0:	90f90003 	lbu	t9,3(a3)
    10c4:	332a0008 	andi	t2,t9,0x8
    10c8:	51400005 	beqzl	t2,10e0 <Audio_SeqChanLayerDecayRelease+0x198>
    10cc:	920e0001 	lbu	t6,1(s0)
    10d0:	90cc00c0 	lbu	t4,192(a2)
    10d4:	358d0020 	ori	t5,t4,0x20
    10d8:	a0cd00c0 	sb	t5,192(a2)
    10dc:	920e0001 	lbu	t6,1(s0)
    10e0:	55c00005 	bnezl	t6,10f8 <Audio_SeqChanLayerDecayRelease+0x1b0>
    10e4:	920a0001 	lbu	t2,1(s0)
    10e8:	90f800d0 	lbu	t8,208(a3)
    10ec:	10000003 	b	10fc <Audio_SeqChanLayerDecayRelease+0x1b4>
    10f0:	a0980003 	sb	t8,3(a0)
    10f4:	920a0001 	lbu	t2,1(s0)
    10f8:	a08a0003 	sb	t2,3(a0)
    10fc:	90eb0006 	lbu	t3,6(a3)
    1100:	10000005 	b	1118 <Audio_SeqChanLayerDecayRelease+0x1d0>
    1104:	a0cb0030 	sb	t3,48(a2)
    1108:	920d0001 	lbu	t5,1(s0)
    110c:	240e0001 	li	t6,1
    1110:	a08d0003 	sb	t5,3(a0)
    1114:	a0ce0030 	sb	t6,48(a2)
    1118:	8ccf0044 	lw	t7,68(a2)
    111c:	acc80044 	sw	t0,68(a2)
    1120:	24010007 	li	at,7
    1124:	accf0040 	sw	t7,64(a2)
    1128:	8fb8002c 	lw	t8,44(sp)
    112c:	240c0002 	li	t4,2
    1130:	5701000a 	bnel	t8,at,115c <Audio_SeqChanLayerDecayRelease+0x214>
    1134:	90cf0070 	lbu	t7,112(a2)
    1138:	90ca0070 	lbu	t2,112(a2)
    113c:	3c010000 	lui	at,0x0
    1140:	c42a2864 	lwc1	$f10,10340(at)
    1144:	354b0010 	ori	t3,t2,0x10
    1148:	a0cb0070 	sb	t3,112(a2)
    114c:	a0cc0034 	sb	t4,52(a2)
    1150:	10000024 	b	11e4 <Audio_SeqChanLayerDecayRelease+0x29c>
    1154:	e4ca007c 	swc1	$f10,124(a2)
    1158:	90cf0070 	lbu	t7,112(a2)
    115c:	240d0001 	li	t5,1
    1160:	a0cd0034 	sb	t5,52(a2)
    1164:	35f80020 	ori	t8,t7,0x20
    1168:	a0d80070 	sb	t8,112(a2)
    116c:	92020018 	lbu	v0,24(s0)
    1170:	3c0e0000 	lui	t6,0x0
    1174:	1440000a 	bnez	v0,11a0 <Audio_SeqChanLayerDecayRelease+0x258>
    1178:	00000000 	nop
    117c:	8e0a0050 	lw	t2,80(s0)
    1180:	3c190000 	lui	t9,0x0
    1184:	8f393520 	lw	t9,13600(t9)
    1188:	914b007c 	lbu	t3,124(t2)
    118c:	000b6080 	sll	t4,t3,0x2
    1190:	032c6821 	addu	t5,t9,t4
    1194:	c5b00000 	lwc1	$f16,0(t5)
    1198:	10000006 	b	11b4 <Audio_SeqChanLayerDecayRelease+0x26c>
    119c:	e4d0007c 	swc1	$f16,124(a2)
    11a0:	8dce3520 	lw	t6,13600(t6)
    11a4:	00027880 	sll	t7,v0,0x2
    11a8:	01cfc021 	addu	t8,t6,t7
    11ac:	c7120000 	lwc1	$f18,0(t8)
    11b0:	e4d2007c 	swc1	$f18,124(a2)
    11b4:	8e0a0050 	lw	t2,80(s0)
    11b8:	c4c80080 	lwc1	$f8,128(a2)
    11bc:	3c013b80 	lui	at,0x3b80
    11c0:	914b007d 	lbu	t3,125(t2)
    11c4:	44818000 	mtc1	at,$f16
    11c8:	448b2000 	mtc1	t3,$f4
    11cc:	00000000 	nop
    11d0:	468021a0 	cvt.s.w	$f6,$f4
    11d4:	46083282 	mul.s	$f10,$f6,$f8
    11d8:	00000000 	nop
    11dc:	46105482 	mul.s	$f18,$f10,$f16
    11e0:	e4d20074 	swc1	$f18,116(a2)
    11e4:	8fb9002c 	lw	t9,44(sp)
    11e8:	00c02025 	move	a0,a2
    11ec:	57290008 	bnel	t9,t1,1210 <Audio_SeqChanLayerDecayRelease+0x2c8>
    11f0:	8fbf001c 	lw	ra,28(sp)
    11f4:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    11f8:	afa60024 	sw	a2,36(sp)
    11fc:	8fa50024 	lw	a1,36(sp)
    1200:	8ca4000c 	lw	a0,12(a1)
    1204:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1208:	24840010 	addiu	a0,a0,16
    120c:	8fbf001c 	lw	ra,28(sp)
    1210:	8fb00018 	lw	s0,24(sp)
    1214:	27bd0028 	addiu	sp,sp,40
    1218:	03e00008 	jr	ra
    121c:	00000000 	nop

00001220 <Audio_SeqChanLayerNoteDecay>:
    1220:	27bdffe8 	addiu	sp,sp,-24
    1224:	afbf0014 	sw	ra,20(sp)
    1228:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    122c:	24050006 	li	a1,6
    1230:	8fbf0014 	lw	ra,20(sp)
    1234:	27bd0018 	addiu	sp,sp,24
    1238:	03e00008 	jr	ra
    123c:	00000000 	nop

00001240 <Audio_SeqChanLayerNoteRelease>:
    1240:	27bdffe8 	addiu	sp,sp,-24
    1244:	afbf0014 	sw	ra,20(sp)
    1248:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    124c:	24050007 	li	a1,7
    1250:	8fbf0014 	lw	ra,20(sp)
    1254:	27bd0018 	addiu	sp,sp,24
    1258:	03e00008 	jr	ra
    125c:	00000000 	nop

00001260 <Audio_BuildSyntheticWave>:
    1260:	28c10080 	slti	at,a2,128
    1264:	10200002 	beqz	at,1270 <Audio_BuildSyntheticWave+0x10>
    1268:	00001825 	move	v1,zero
    126c:	24060080 	li	a2,128
    1270:	90ae0020 	lbu	t6,32(a1)
    1274:	c4a00030 	lwc1	$f0,48(a1)
    1278:	11c0000d 	beqz	t6,12b0 <Audio_BuildSyntheticWave+0x50>
    127c:	46000086 	mov.s	$f2,$f0
    1280:	c4ac0028 	lwc1	$f12,40(a1)
    1284:	44802000 	mtc1	zero,$f4
    1288:	3c013f80 	lui	at,0x3f80
    128c:	460c203c 	c.lt.s	$f4,$f12
    1290:	00000000 	nop
    1294:	45000006 	bc1f	12b0 <Audio_BuildSyntheticWave+0x50>
    1298:	00000000 	nop
    129c:	44813000 	mtc1	at,$f6
    12a0:	00000000 	nop
    12a4:	46066200 	add.s	$f8,$f12,$f6
    12a8:	46081082 	mul.s	$f2,$f2,$f8
    12ac:	00000000 	nop
    12b0:	3c010000 	lui	at,0x0
    12b4:	c42a0014 	lwc1	$f10,20(at)
    12b8:	3c010000 	lui	at,0x0
    12bc:	460a103c 	c.lt.s	$f2,$f10
    12c0:	00000000 	nop
    12c4:	45000004 	bc1f	12d8 <Audio_BuildSyntheticWave+0x78>
    12c8:	00000000 	nop
    12cc:	3c010000 	lui	at,0x0
    12d0:	10000017 	b	1330 <Audio_BuildSyntheticWave+0xd0>
    12d4:	c4220018 	lwc1	$f2,24(at)
    12d8:	c430001c 	lwc1	$f16,28(at)
    12dc:	24030001 	li	v1,1
    12e0:	3c010000 	lui	at,0x0
    12e4:	4610103c 	c.lt.s	$f2,$f16
    12e8:	00000000 	nop
    12ec:	45000004 	bc1f	1300 <Audio_BuildSyntheticWave+0xa0>
    12f0:	00000000 	nop
    12f4:	3c010000 	lui	at,0x0
    12f8:	1000000d 	b	1330 <Audio_BuildSyntheticWave+0xd0>
    12fc:	c4220020 	lwc1	$f2,32(at)
    1300:	c4320024 	lwc1	$f18,36(at)
    1304:	24030003 	li	v1,3
    1308:	3c010000 	lui	at,0x0
    130c:	4612103c 	c.lt.s	$f2,$f18
    1310:	00000000 	nop
    1314:	45000005 	bc1f	132c <Audio_BuildSyntheticWave+0xcc>
    1318:	00000000 	nop
    131c:	3c010000 	lui	at,0x0
    1320:	24030002 	li	v1,2
    1324:	10000002 	b	1330 <Audio_BuildSyntheticWave+0xd0>
    1328:	c4220028 	lwc1	$f2,40(at)
    132c:	c422002c 	lwc1	$f2,44(at)
    1330:	46020102 	mul.s	$f4,$f0,$f2
    1334:	00067880 	sll	t7,a2,0x2
    1338:	3c180000 	lui	t8,0x0
    133c:	030fc021 	addu	t8,t8,t7
    1340:	0003c9c0 	sll	t9,v1,0x7
    1344:	00601025 	move	v0,v1
    1348:	e4a40030 	swc1	$f4,48(a1)
    134c:	a0860031 	sb	a2,49(a0)
    1350:	a0830032 	sb	v1,50(a0)
    1354:	8f18fe00 	lw	t8,-512(t8)
    1358:	03194021 	addu	t0,t8,t9
    135c:	03e00008 	jr	ra
    1360:	ac8800d0 	sw	t0,208(a0)

00001364 <Audio_InitSyntheticWave>:
    1364:	27bdffe0 	addiu	sp,sp,-32
    1368:	afbf0014 	sw	ra,20(sp)
    136c:	90a60002 	lbu	a2,2(a1)
    1370:	240100ff 	li	at,255
    1374:	54c10004 	bnel	a2,at,1388 <Audio_InitSyntheticWave+0x24>
    1378:	90830032 	lbu	v1,50(a0)
    137c:	8cae0050 	lw	t6,80(a1)
    1380:	85c60024 	lh	a2,36(t6)
    1384:	90830032 	lbu	v1,50(a0)
    1388:	afa40020 	sw	a0,32(sp)
    138c:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1390:	afa3001c 	sw	v1,28(sp)
    1394:	8fa3001c 	lw	v1,28(sp)
    1398:	00027880 	sll	t7,v0,0x2
    139c:	8fa40020 	lw	a0,32(sp)
    13a0:	10430002 	beq	v0,v1,13ac <Audio_InitSyntheticWave+0x48>
    13a4:	01e3c021 	addu	t8,t7,v1
    13a8:	a09800c6 	sb	t8,198(a0)
    13ac:	8fbf0014 	lw	ra,20(sp)
    13b0:	27bd0020 	addiu	sp,sp,32
    13b4:	03e00008 	jr	ra
    13b8:	00000000 	nop

000013bc <Audio_InitNoteList>:
    13bc:	ac840000 	sw	a0,0(a0)
    13c0:	ac840004 	sw	a0,4(a0)
    13c4:	03e00008 	jr	ra
    13c8:	ac800008 	sw	zero,8(a0)

000013cc <Audio_InitNoteLists>:
    13cc:	27bdffe0 	addiu	sp,sp,-32
    13d0:	afbf001c 	sw	ra,28(sp)
    13d4:	afb00018 	sw	s0,24(sp)
    13d8:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    13dc:	00808025 	move	s0,a0
    13e0:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    13e4:	26040010 	addiu	a0,s0,16
    13e8:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    13ec:	26040020 	addiu	a0,s0,32
    13f0:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    13f4:	26040030 	addiu	a0,s0,48
    13f8:	ae10000c 	sw	s0,12(s0)
    13fc:	ae10001c 	sw	s0,28(s0)
    1400:	ae10002c 	sw	s0,44(s0)
    1404:	ae10003c 	sw	s0,60(s0)
    1408:	8fbf001c 	lw	ra,28(sp)
    140c:	8fb00018 	lw	s0,24(sp)
    1410:	27bd0020 	addiu	sp,sp,32
    1414:	03e00008 	jr	ra
    1418:	00000000 	nop

0000141c <Audio_InitNoteFreeList>:
    141c:	27bdffd8 	addiu	sp,sp,-40
    1420:	afb30020 	sw	s3,32(sp)
    1424:	3c130000 	lui	s3,0x0
    1428:	26730000 	addiu	s3,s3,0
    142c:	afbf0024 	sw	ra,36(sp)
    1430:	afb2001c 	sw	s2,28(sp)
    1434:	afb10018 	sw	s1,24(sp)
    1438:	afb00014 	sw	s0,20(sp)
    143c:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1440:	02602025 	move	a0,s3
    1444:	3c110000 	lui	s1,0x0
    1448:	26310000 	addiu	s1,s1,0
    144c:	8e2e2894 	lw	t6,10388(s1)
    1450:	00009025 	move	s2,zero
    1454:	00008025 	move	s0,zero
    1458:	59c00013 	blezl	t6,14a8 <Audio_InitNoteFreeList+0x8c>
    145c:	8fbf0024 	lw	ra,36(sp)
    1460:	8e22352c 	lw	v0,13612(s1)
    1464:	02602025 	move	a0,s3
    1468:	02027821 	addu	t7,s0,v0
    146c:	0050c021 	addu	t8,v0,s0
    1470:	af0f0008 	sw	t7,8(t8)
    1474:	8e39352c 	lw	t9,13612(s1)
    1478:	03304021 	addu	t0,t9,s0
    147c:	ad000000 	sw	zero,0(t0)
    1480:	8e29352c 	lw	t1,13612(s1)
    1484:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1488:	02092821 	addu	a1,s0,t1
    148c:	8e2a2894 	lw	t2,10388(s1)
    1490:	26520001 	addiu	s2,s2,1
    1494:	261000e0 	addiu	s0,s0,224
    1498:	024a082a 	slt	at,s2,t2
    149c:	5420fff1 	bnezl	at,1464 <Audio_InitNoteFreeList+0x48>
    14a0:	8e22352c 	lw	v0,13612(s1)
    14a4:	8fbf0024 	lw	ra,36(sp)
    14a8:	8fb00014 	lw	s0,20(sp)
    14ac:	8fb10018 	lw	s1,24(sp)
    14b0:	8fb2001c 	lw	s2,28(sp)
    14b4:	8fb30020 	lw	s3,32(sp)
    14b8:	03e00008 	jr	ra
    14bc:	27bd0028 	addiu	sp,sp,40

000014c0 <Audio_NotePoolClear>:
    14c0:	27bdffb0 	addiu	sp,sp,-80
    14c4:	afbe0038 	sw	s8,56(sp)
    14c8:	afb70034 	sw	s7,52(sp)
    14cc:	afb60030 	sw	s6,48(sp)
    14d0:	afb5002c 	sw	s5,44(sp)
    14d4:	afb40028 	sw	s4,40(sp)
    14d8:	afb30024 	sw	s3,36(sp)
    14dc:	afb20020 	sw	s2,32(sp)
    14e0:	afb1001c 	sw	s1,28(sp)
    14e4:	3c060000 	lui	a2,0x0
    14e8:	3c050000 	lui	a1,0x0
    14ec:	3c030000 	lui	v1,0x0
    14f0:	3c020000 	lui	v0,0x0
    14f4:	0080a025 	move	s4,a0
    14f8:	afbf003c 	sw	ra,60(sp)
    14fc:	afb00018 	sw	s0,24(sp)
    1500:	24420030 	addiu	v0,v0,48
    1504:	24630020 	addiu	v1,v1,32
    1508:	24a50010 	addiu	a1,a1,16
    150c:	24c60000 	addiu	a2,a2,0
    1510:	8fb10048 	lw	s1,72(sp)
    1514:	8fb20040 	lw	s2,64(sp)
    1518:	00009825 	move	s3,zero
    151c:	24150001 	li	s5,1
    1520:	24160002 	li	s6,2
    1524:	24170003 	li	s7,3
    1528:	241e0004 	li	s8,4
    152c:	5260000a 	beqzl	s3,1558 <Audio_NotePoolClear+0x98>
    1530:	02808825 	move	s1,s4
    1534:	5275000c 	beql	s3,s5,1568 <Audio_NotePoolClear+0xa8>
    1538:	26910010 	addiu	s1,s4,16
    153c:	5276000e 	beql	s3,s6,1578 <Audio_NotePoolClear+0xb8>
    1540:	26910020 	addiu	s1,s4,32
    1544:	52770010 	beql	s3,s7,1588 <Audio_NotePoolClear+0xc8>
    1548:	26910030 	addiu	s1,s4,48
    154c:	10000010 	b	1590 <Audio_NotePoolClear+0xd0>
    1550:	8e300004 	lw	s0,4(s1)
    1554:	02808825 	move	s1,s4
    1558:	00c09025 	move	s2,a2
    155c:	1000000c 	b	1590 <Audio_NotePoolClear+0xd0>
    1560:	8e900004 	lw	s0,4(s4)
    1564:	26910010 	addiu	s1,s4,16
    1568:	00a09025 	move	s2,a1
    156c:	10000008 	b	1590 <Audio_NotePoolClear+0xd0>
    1570:	8e300004 	lw	s0,4(s1)
    1574:	26910020 	addiu	s1,s4,32
    1578:	00609025 	move	s2,v1
    157c:	10000004 	b	1590 <Audio_NotePoolClear+0xd0>
    1580:	8e300004 	lw	s0,4(s1)
    1584:	26910030 	addiu	s1,s4,48
    1588:	00409025 	move	s2,v0
    158c:	8e300004 	lw	s0,4(s1)
    1590:	52110013 	beql	s0,s1,15e0 <Audio_NotePoolClear+0x120>
    1594:	26730001 	addiu	s3,s3,1
    1598:	52000011 	beqzl	s0,15e0 <Audio_NotePoolClear+0x120>
    159c:	26730001 	addiu	s3,s3,1
    15a0:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    15a4:	02002025 	move	a0,s0
    15a8:	02402025 	move	a0,s2
    15ac:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    15b0:	02002825 	move	a1,s0
    15b4:	8e300004 	lw	s0,4(s1)
    15b8:	3c060000 	lui	a2,0x0
    15bc:	3c050000 	lui	a1,0x0
    15c0:	3c030000 	lui	v1,0x0
    15c4:	3c020000 	lui	v0,0x0
    15c8:	24420030 	addiu	v0,v0,48
    15cc:	24630020 	addiu	v1,v1,32
    15d0:	24a50010 	addiu	a1,a1,16
    15d4:	1611fff0 	bne	s0,s1,1598 <Audio_NotePoolClear+0xd8>
    15d8:	24c60000 	addiu	a2,a2,0
    15dc:	26730001 	addiu	s3,s3,1
    15e0:	167effd2 	bne	s3,s8,152c <Audio_NotePoolClear+0x6c>
    15e4:	00000000 	nop
    15e8:	8fbf003c 	lw	ra,60(sp)
    15ec:	afb20040 	sw	s2,64(sp)
    15f0:	afb10048 	sw	s1,72(sp)
    15f4:	8fb1001c 	lw	s1,28(sp)
    15f8:	8fb20020 	lw	s2,32(sp)
    15fc:	8fb00018 	lw	s0,24(sp)
    1600:	8fb30024 	lw	s3,36(sp)
    1604:	8fb40028 	lw	s4,40(sp)
    1608:	8fb5002c 	lw	s5,44(sp)
    160c:	8fb60030 	lw	s6,48(sp)
    1610:	8fb70034 	lw	s7,52(sp)
    1614:	8fbe0038 	lw	s8,56(sp)
    1618:	03e00008 	jr	ra
    161c:	27bd0050 	addiu	sp,sp,80

00001620 <Audio_NotePoolFill>:
    1620:	27bdffa8 	addiu	sp,sp,-88
    1624:	afbf003c 	sw	ra,60(sp)
    1628:	afb5002c 	sw	s5,44(sp)
    162c:	afb30024 	sw	s3,36(sp)
    1630:	00a09825 	move	s3,a1
    1634:	0080a825 	move	s5,a0
    1638:	afbe0038 	sw	s8,56(sp)
    163c:	afb70034 	sw	s7,52(sp)
    1640:	afb60030 	sw	s6,48(sp)
    1644:	afb40028 	sw	s4,40(sp)
    1648:	afb20020 	sw	s2,32(sp)
    164c:	afb1001c 	sw	s1,28(sp)
    1650:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1654:	afb00018 	sw	s0,24(sp)
    1658:	0000a025 	move	s4,zero
    165c:	1a600033 	blez	s3,172c <Audio_NotePoolFill+0x10c>
    1660:	00008025 	move	s0,zero
    1664:	241e0002 	li	s8,2
    1668:	24170001 	li	s7,1
    166c:	24160004 	li	s6,4
    1670:	8fb20044 	lw	s2,68(sp)
    1674:	8fb10048 	lw	s1,72(sp)
    1678:	5296002d 	beql	s4,s6,1730 <Audio_NotePoolFill+0x110>
    167c:	8fbf003c 	lw	ra,60(sp)
    1680:	12800009 	beqz	s4,16a8 <Audio_NotePoolFill+0x88>
    1684:	00000000 	nop
    1688:	1297000b 	beq	s4,s7,16b8 <Audio_NotePoolFill+0x98>
    168c:	00000000 	nop
    1690:	129e000d 	beq	s4,s8,16c8 <Audio_NotePoolFill+0xa8>
    1694:	24010003 	li	at,3
    1698:	1281000f 	beq	s4,at,16d8 <Audio_NotePoolFill+0xb8>
    169c:	00000000 	nop
    16a0:	10000011 	b	16e8 <Audio_NotePoolFill+0xc8>
    16a4:	0213082a 	slt	at,s0,s3
    16a8:	3c110000 	lui	s1,0x0
    16ac:	26310000 	addiu	s1,s1,0
    16b0:	1000000c 	b	16e4 <Audio_NotePoolFill+0xc4>
    16b4:	02a09025 	move	s2,s5
    16b8:	3c110000 	lui	s1,0x0
    16bc:	26310010 	addiu	s1,s1,16
    16c0:	10000008 	b	16e4 <Audio_NotePoolFill+0xc4>
    16c4:	26b20010 	addiu	s2,s5,16
    16c8:	3c110000 	lui	s1,0x0
    16cc:	26310020 	addiu	s1,s1,32
    16d0:	10000004 	b	16e4 <Audio_NotePoolFill+0xc4>
    16d4:	26b20020 	addiu	s2,s5,32
    16d8:	3c110000 	lui	s1,0x0
    16dc:	26310030 	addiu	s1,s1,48
    16e0:	26b20030 	addiu	s2,s5,48
    16e4:	0213082a 	slt	at,s0,s3
    16e8:	5020000c 	beqzl	at,171c <Audio_NotePoolFill+0xfc>
    16ec:	0213082a 	slt	at,s0,s3
    16f0:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    16f4:	02202025 	move	a0,s1
    16f8:	10400007 	beqz	v0,1718 <Audio_NotePoolFill+0xf8>
    16fc:	00402825 	move	a1,v0
    1700:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1704:	02402025 	move	a0,s2
    1708:	26100001 	addiu	s0,s0,1
    170c:	0213082a 	slt	at,s0,s3
    1710:	1420fff7 	bnez	at,16f0 <Audio_NotePoolFill+0xd0>
    1714:	00000000 	nop
    1718:	0213082a 	slt	at,s0,s3
    171c:	1420ffd6 	bnez	at,1678 <Audio_NotePoolFill+0x58>
    1720:	26940001 	addiu	s4,s4,1
    1724:	afb20044 	sw	s2,68(sp)
    1728:	afb10048 	sw	s1,72(sp)
    172c:	8fbf003c 	lw	ra,60(sp)
    1730:	8fb00018 	lw	s0,24(sp)
    1734:	8fb1001c 	lw	s1,28(sp)
    1738:	8fb20020 	lw	s2,32(sp)
    173c:	8fb30024 	lw	s3,36(sp)
    1740:	8fb40028 	lw	s4,40(sp)
    1744:	8fb5002c 	lw	s5,44(sp)
    1748:	8fb60030 	lw	s6,48(sp)
    174c:	8fb70034 	lw	s7,52(sp)
    1750:	8fbe0038 	lw	s8,56(sp)
    1754:	03e00008 	jr	ra
    1758:	27bd0058 	addiu	sp,sp,88

0000175c <Audio_AudioListPushFront>:
    175c:	8cae0000 	lw	t6,0(a1)
    1760:	15c0000c 	bnez	t6,1794 <Audio_AudioListPushFront+0x38>
    1764:	00000000 	nop
    1768:	aca40000 	sw	a0,0(a1)
    176c:	8c8f0004 	lw	t7,4(a0)
    1770:	acaf0004 	sw	t7,4(a1)
    1774:	8c980004 	lw	t8,4(a0)
    1778:	af050000 	sw	a1,0(t8)
    177c:	8c990008 	lw	t9,8(a0)
    1780:	8c89000c 	lw	t1,12(a0)
    1784:	ac850004 	sw	a1,4(a0)
    1788:	27280001 	addiu	t0,t9,1
    178c:	ac880008 	sw	t0,8(a0)
    1790:	aca9000c 	sw	t1,12(a1)
    1794:	03e00008 	jr	ra
    1798:	00000000 	nop

0000179c <Audio_AudioListRemove>:
    179c:	8c820000 	lw	v0,0(a0)
    17a0:	10400007 	beqz	v0,17c0 <Audio_AudioListRemove+0x24>
    17a4:	00000000 	nop
    17a8:	8c8e0004 	lw	t6,4(a0)
    17ac:	ac4e0004 	sw	t6,4(v0)
    17b0:	8c8f0000 	lw	t7,0(a0)
    17b4:	8c980004 	lw	t8,4(a0)
    17b8:	af0f0000 	sw	t7,0(t8)
    17bc:	ac800000 	sw	zero,0(a0)
    17c0:	03e00008 	jr	ra
    17c4:	00000000 	nop

000017c8 <Audio_PopNodeWithValueLessEqual>:
    17c8:	8c820004 	lw	v0,4(a0)
    17cc:	14440003 	bne	v0,a0,17dc <Audio_PopNodeWithValueLessEqual+0x14>
    17d0:	00000000 	nop
    17d4:	03e00008 	jr	ra
    17d8:	00001025 	move	v0,zero
    17dc:	1044000c 	beq	v0,a0,1810 <Audio_PopNodeWithValueLessEqual+0x48>
    17e0:	00401825 	move	v1,v0
    17e4:	8c6e0008 	lw	t6,8(v1)
    17e8:	8c580008 	lw	t8,8(v0)
    17ec:	91cf0030 	lbu	t7,48(t6)
    17f0:	93190030 	lbu	t9,48(t8)
    17f4:	01f9082a 	slt	at,t7,t9
    17f8:	54200003 	bnezl	at,1808 <Audio_PopNodeWithValueLessEqual+0x40>
    17fc:	8c420004 	lw	v0,4(v0)
    1800:	00401825 	move	v1,v0
    1804:	8c420004 	lw	v0,4(v0)
    1808:	5444fff7 	bnel	v0,a0,17e8 <Audio_PopNodeWithValueLessEqual+0x20>
    180c:	8c6e0008 	lw	t6,8(v1)
    1810:	54600004 	bnezl	v1,1824 <Audio_PopNodeWithValueLessEqual+0x5c>
    1814:	8c640008 	lw	a0,8(v1)
    1818:	03e00008 	jr	ra
    181c:	00001025 	move	v0,zero
    1820:	8c640008 	lw	a0,8(v1)
    1824:	90880030 	lbu	t0,48(a0)
    1828:	00801025 	move	v0,a0
    182c:	0105082a 	slt	at,t0,a1
    1830:	14200003 	bnez	at,1840 <Audio_PopNodeWithValueLessEqual+0x78>
    1834:	00000000 	nop
    1838:	03e00008 	jr	ra
    183c:	00001025 	move	v0,zero
    1840:	03e00008 	jr	ra
    1844:	00000000 	nop

00001848 <Audio_NoteInitForLayer>:
    1848:	27bdffc8 	addiu	sp,sp,-56
    184c:	afbf0014 	sw	ra,20(sp)
    1850:	240effff 	li	t6,-1
    1854:	ac8e0040 	sw	t6,64(a0)
    1858:	ac850044 	sw	a1,68(a0)
    185c:	8caf0050 	lw	t7,80(a1)
    1860:	44802000 	mtc1	zero,$f4
    1864:	91f80005 	lbu	t8,5(t7)
    1868:	a0980030 	sb	t8,48(a0)
    186c:	90a80000 	lbu	t0,0(a1)
    1870:	8cad0050 	lw	t5,80(a1)
    1874:	aca4002c 	sw	a0,44(a1)
    1878:	350b0001 	ori	t3,t0,0x1
    187c:	a0ab0000 	sb	t3,0(a1)
    1880:	356c0008 	ori	t4,t3,0x8
    1884:	a0ac0000 	sb	t4,0(a1)
    1888:	ada40040 	sw	a0,64(t5)
    188c:	8cae0050 	lw	t6,80(a1)
    1890:	adc50044 	sw	a1,68(t6)
    1894:	e4a40040 	swc1	$f4,64(a1)
    1898:	afa5003c 	sw	a1,60(sp)
    189c:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    18a0:	afa40038 	sw	a0,56(sp)
    18a4:	8fa5003c 	lw	a1,60(sp)
    18a8:	8fa40038 	lw	a0,56(sp)
    18ac:	240100ff 	li	at,255
    18b0:	90a60002 	lbu	a2,2(a1)
    18b4:	248300c0 	addiu	v1,a0,192
    18b8:	54c10004 	bnel	a2,at,18cc <Audio_NoteInitForLayer+0x84>
    18bc:	8cb8004c 	lw	t8,76(a1)
    18c0:	8caf0050 	lw	t7,80(a1)
    18c4:	85e60024 	lh	a2,36(t7)
    18c8:	8cb8004c 	lw	t8,76(a1)
    18cc:	28c10080 	slti	at,a2,128
    18d0:	14200008 	bnez	at,18f4 <Audio_NoteInitForLayer+0xac>
    18d4:	ac780010 	sw	t8,16(v1)
    18d8:	28c100c0 	slti	at,a2,192
    18dc:	50200006 	beqzl	at,18f8 <Audio_NoteInitForLayer+0xb0>
    18e0:	906a0001 	lbu	t2,1(v1)
    18e4:	90680001 	lbu	t0,1(v1)
    18e8:	35090004 	ori	t1,t0,0x4
    18ec:	10000004 	b	1900 <Audio_NoteInitForLayer+0xb8>
    18f0:	a0690001 	sb	t1,1(v1)
    18f4:	906a0001 	lbu	t2,1(v1)
    18f8:	314bfffb 	andi	t3,t2,0xfffb
    18fc:	a06b0001 	sb	t3,1(v1)
    1900:	8c6c0000 	lw	t4,0(v1)
    1904:	000c7340 	sll	t6,t4,0xd
    1908:	05c30009 	bgezl	t6,1930 <Audio_NoteInitForLayer+0xe8>
    190c:	8caf0050 	lw	t7,80(a1)
    1910:	afa3001c 	sw	v1,28(sp)
    1914:	afa40038 	sw	a0,56(sp)
    1918:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    191c:	afa5003c 	sw	a1,60(sp)
    1920:	8fa3001c 	lw	v1,28(sp)
    1924:	8fa40038 	lw	a0,56(sp)
    1928:	8fa5003c 	lw	a1,60(sp)
    192c:	8caf0050 	lw	t7,80(a1)
    1930:	24820030 	addiu	v0,a0,48
    1934:	91f80007 	lbu	t8,7(t7)
    1938:	a0580003 	sb	t8,3(v0)
    193c:	8cb90050 	lw	t9,80(a1)
    1940:	8f280000 	lw	t0,0(t9)
    1944:	00084940 	sll	t1,t0,0x5
    1948:	000957c2 	srl	t2,t1,0x1f
    194c:	a04a0005 	sb	t2,5(v0)
    1950:	8cab0050 	lw	t3,80(a1)
    1954:	90790001 	lbu	t9,1(v1)
    1958:	916c0008 	lbu	t4,8(t3)
    195c:	3328ff1f 	andi	t0,t9,0xff1f
    1960:	318e0003 	andi	t6,t4,0x3
    1964:	000ec140 	sll	t8,t6,0x5
    1968:	03084825 	or	t1,t8,t0
    196c:	a0690001 	sb	t1,1(v1)
    1970:	8fbf0014 	lw	ra,20(sp)
    1974:	27bd0038 	addiu	sp,sp,56
    1978:	03e00008 	jr	ra
    197c:	00000000 	nop

00001980 <func_800E82C0>:
    1980:	27bdffe8 	addiu	sp,sp,-24
    1984:	afbf0014 	sw	ra,20(sp)
    1988:	afa40018 	sw	a0,24(sp)
    198c:	afa5001c 	sw	a1,28(sp)
    1990:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1994:	8c840044 	lw	a0,68(a0)
    1998:	8faf001c 	lw	t7,28(sp)
    199c:	8fb80018 	lw	t8,24(sp)
    19a0:	af0f0048 	sw	t7,72(t8)
    19a4:	8fbf0014 	lw	ra,20(sp)
    19a8:	27bd0018 	addiu	sp,sp,24
    19ac:	03e00008 	jr	ra
    19b0:	00000000 	nop

000019b4 <Audio_NoteReleaseAndTakeOwnership>:
    19b4:	ac850048 	sw	a1,72(a0)
    19b8:	8cae0050 	lw	t6,80(a1)
    19bc:	90990070 	lbu	t9,112(a0)
    19c0:	3c010000 	lui	at,0x0
    19c4:	91cf0005 	lbu	t7,5(t6)
    19c8:	37280010 	ori	t0,t9,0x10
    19cc:	a08f0030 	sb	t7,48(a0)
    19d0:	c4242864 	lwc1	$f4,10340(at)
    19d4:	a0880070 	sb	t0,112(a0)
    19d8:	03e00008 	jr	ra
    19dc:	e484007c 	swc1	$f4,124(a0)

000019e0 <Audio_AllocNoteFromDisabled>:
    19e0:	27bdffe0 	addiu	sp,sp,-32
    19e4:	afbf0014 	sw	ra,20(sp)
    19e8:	afa40020 	sw	a0,32(sp)
    19ec:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    19f0:	afa50024 	sw	a1,36(sp)
    19f4:	10400008 	beqz	v0,1a18 <Audio_AllocNoteFromDisabled+0x38>
    19f8:	afa2001c 	sw	v0,28(sp)
    19fc:	00402025 	move	a0,v0
    1a00:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1a04:	8fa50024 	lw	a1,36(sp)
    1a08:	8fa40020 	lw	a0,32(sp)
    1a0c:	8fa5001c 	lw	a1,28(sp)
    1a10:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1a14:	24840030 	addiu	a0,a0,48
    1a18:	8fbf0014 	lw	ra,20(sp)
    1a1c:	8fa2001c 	lw	v0,28(sp)
    1a20:	27bd0020 	addiu	sp,sp,32
    1a24:	03e00008 	jr	ra
    1a28:	00000000 	nop

00001a2c <Audio_AllocNoteFromDecaying>:
    1a2c:	27bdffe0 	addiu	sp,sp,-32
    1a30:	afbf0014 	sw	ra,20(sp)
    1a34:	afa40020 	sw	a0,32(sp)
    1a38:	afa50024 	sw	a1,36(sp)
    1a3c:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1a40:	24840010 	addiu	a0,a0,16
    1a44:	10400008 	beqz	v0,1a68 <Audio_AllocNoteFromDecaying+0x3c>
    1a48:	afa2001c 	sw	v0,28(sp)
    1a4c:	00402025 	move	a0,v0
    1a50:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1a54:	8fa50024 	lw	a1,36(sp)
    1a58:	8fa40020 	lw	a0,32(sp)
    1a5c:	8fa5001c 	lw	a1,28(sp)
    1a60:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1a64:	24840020 	addiu	a0,a0,32
    1a68:	8fbf0014 	lw	ra,20(sp)
    1a6c:	8fa2001c 	lw	v0,28(sp)
    1a70:	27bd0020 	addiu	sp,sp,32
    1a74:	03e00008 	jr	ra
    1a78:	00000000 	nop

00001a7c <Audio_AllocNoteFromActive>:
    1a7c:	27bdffc8 	addiu	sp,sp,-56
    1a80:	240e0010 	li	t6,16
    1a84:	240f0010 	li	t7,16
    1a88:	afbf001c 	sw	ra,28(sp)
    1a8c:	afb10018 	sw	s1,24(sp)
    1a90:	afb00014 	sw	s0,20(sp)
    1a94:	afaf002c 	sw	t7,44(sp)
    1a98:	afae0028 	sw	t6,40(sp)
    1a9c:	8cb80050 	lw	t8,80(a1)
    1aa0:	00808025 	move	s0,a0
    1aa4:	00a08825 	move	s1,a1
    1aa8:	24840020 	addiu	a0,a0,32
    1aac:	93050005 	lbu	a1,5(t8)
    1ab0:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1ab4:	afa40024 	sw	a0,36(sp)
    1ab8:	10400003 	beqz	v0,1ac8 <Audio_AllocNoteFromActive+0x4c>
    1abc:	00401825 	move	v1,v0
    1ac0:	90590030 	lbu	t9,48(v0)
    1ac4:	afb9002c 	sw	t9,44(sp)
    1ac8:	8e280050 	lw	t0,80(s1)
    1acc:	26040030 	addiu	a0,s0,48
    1ad0:	91050005 	lbu	a1,5(t0)
    1ad4:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1ad8:	afa30034 	sw	v1,52(sp)
    1adc:	8fa30034 	lw	v1,52(sp)
    1ae0:	10400003 	beqz	v0,1af0 <Audio_AllocNoteFromActive+0x74>
    1ae4:	00408025 	move	s0,v0
    1ae8:	90490030 	lbu	t1,48(v0)
    1aec:	afa90028 	sw	t1,40(sp)
    1af0:	14600005 	bnez	v1,1b08 <Audio_AllocNoteFromActive+0x8c>
    1af4:	8faa0028 	lw	t2,40(sp)
    1af8:	54400004 	bnezl	v0,1b0c <Audio_AllocNoteFromActive+0x90>
    1afc:	8fab002c 	lw	t3,44(sp)
    1b00:	10000017 	b	1b60 <Audio_AllocNoteFromActive+0xe4>
    1b04:	00001025 	move	v0,zero
    1b08:	8fab002c 	lw	t3,44(sp)
    1b0c:	014b082a 	slt	at,t2,t3
    1b10:	5020000f 	beqzl	at,1b50 <Audio_AllocNoteFromActive+0xd4>
    1b14:	ac710048 	sw	s1,72(v1)
    1b18:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1b1c:	02002025 	move	a0,s0
    1b20:	02002025 	move	a0,s0
    1b24:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1b28:	02202825 	move	a1,s1
    1b2c:	8fa40024 	lw	a0,36(sp)
    1b30:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1b34:	02002825 	move	a1,s0
    1b38:	8e2c0050 	lw	t4,80(s1)
    1b3c:	02001025 	move	v0,s0
    1b40:	918d0005 	lbu	t5,5(t4)
    1b44:	10000006 	b	1b60 <Audio_AllocNoteFromActive+0xe4>
    1b48:	a20d0030 	sb	t5,48(s0)
    1b4c:	ac710048 	sw	s1,72(v1)
    1b50:	8e2e0050 	lw	t6,80(s1)
    1b54:	00601025 	move	v0,v1
    1b58:	91cf0005 	lbu	t7,5(t6)
    1b5c:	a06f0030 	sb	t7,48(v1)
    1b60:	8fbf001c 	lw	ra,28(sp)
    1b64:	8fb00014 	lw	s0,20(sp)
    1b68:	8fb10018 	lw	s1,24(sp)
    1b6c:	03e00008 	jr	ra
    1b70:	27bd0038 	addiu	sp,sp,56

00001b74 <Audio_AllocNote>:
    1b74:	27bdffd8 	addiu	sp,sp,-40
    1b78:	afbf001c 	sw	ra,28(sp)
    1b7c:	afb00018 	sw	s0,24(sp)
    1b80:	8c830050 	lw	v1,80(a0)
    1b84:	00808025 	move	s0,a0
    1b88:	90620002 	lbu	v0,2(v1)
    1b8c:	304e0001 	andi	t6,v0,0x1
    1b90:	11c00016 	beqz	t6,1bec <Audio_AllocNote+0x78>
    1b94:	30590002 	andi	t9,v0,0x2
    1b98:	8c86002c 	lw	a2,44(a0)
    1b9c:	10c00013 	beqz	a2,1bec <Audio_AllocNote+0x78>
    1ba0:	00000000 	nop
    1ba4:	8ccf0040 	lw	t7,64(a2)
    1ba8:	148f0010 	bne	a0,t7,1bec <Audio_AllocNote+0x78>
    1bac:	00000000 	nop
    1bb0:	8cd80048 	lw	t8,72(a2)
    1bb4:	2401ffff 	li	at,-1
    1bb8:	00c02025 	move	a0,a2
    1bbc:	1701000b 	bne	t8,at,1bec <Audio_AllocNote+0x78>
    1bc0:	02002825 	move	a1,s0
    1bc4:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1bc8:	afa60024 	sw	a2,36(sp)
    1bcc:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1bd0:	8fa40024 	lw	a0,36(sp)
    1bd4:	8fa50024 	lw	a1,36(sp)
    1bd8:	8ca4000c 	lw	a0,12(a1)
    1bdc:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1be0:	24840020 	addiu	a0,a0,32
    1be4:	10000093 	b	1e34 <Audio_AllocNote+0x2c0>
    1be8:	8fa20024 	lw	v0,36(sp)
    1bec:	13200014 	beqz	t9,1c40 <Audio_AllocNote+0xcc>
    1bf0:	30480004 	andi	t0,v0,0x4
    1bf4:	24640084 	addiu	a0,v1,132
    1bf8:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1bfc:	02002825 	move	a1,s0
    1c00:	1440000d 	bnez	v0,1c38 <Audio_AllocNote+0xc4>
    1c04:	00403025 	move	a2,v0
    1c08:	8e040050 	lw	a0,80(s0)
    1c0c:	02002825 	move	a1,s0
    1c10:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1c14:	24840084 	addiu	a0,a0,132
    1c18:	14400007 	bnez	v0,1c38 <Audio_AllocNote+0xc4>
    1c1c:	00403025 	move	a2,v0
    1c20:	8e040050 	lw	a0,80(s0)
    1c24:	02002825 	move	a1,s0
    1c28:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1c2c:	24840084 	addiu	a0,a0,132
    1c30:	1040007c 	beqz	v0,1e24 <Audio_AllocNote+0x2b0>
    1c34:	00403025 	move	a2,v0
    1c38:	1000007e 	b	1e34 <Audio_AllocNote+0x2c0>
    1c3c:	00c01025 	move	v0,a2
    1c40:	11000029 	beqz	t0,1ce8 <Audio_AllocNote+0x174>
    1c44:	304c0008 	andi	t4,v0,0x8
    1c48:	24640084 	addiu	a0,v1,132
    1c4c:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1c50:	02002825 	move	a1,s0
    1c54:	14400022 	bnez	v0,1ce0 <Audio_AllocNote+0x16c>
    1c58:	00403025 	move	a2,v0
    1c5c:	8e090050 	lw	t1,80(s0)
    1c60:	02002825 	move	a1,s0
    1c64:	8d24004c 	lw	a0,76(t1)
    1c68:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1c6c:	2484009c 	addiu	a0,a0,156
    1c70:	1440001b 	bnez	v0,1ce0 <Audio_AllocNote+0x16c>
    1c74:	00403025 	move	a2,v0
    1c78:	8e040050 	lw	a0,80(s0)
    1c7c:	02002825 	move	a1,s0
    1c80:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1c84:	24840084 	addiu	a0,a0,132
    1c88:	14400015 	bnez	v0,1ce0 <Audio_AllocNote+0x16c>
    1c8c:	00403025 	move	a2,v0
    1c90:	8e0a0050 	lw	t2,80(s0)
    1c94:	02002825 	move	a1,s0
    1c98:	8d44004c 	lw	a0,76(t2)
    1c9c:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1ca0:	2484009c 	addiu	a0,a0,156
    1ca4:	1440000e 	bnez	v0,1ce0 <Audio_AllocNote+0x16c>
    1ca8:	00403025 	move	a2,v0
    1cac:	8e040050 	lw	a0,80(s0)
    1cb0:	02002825 	move	a1,s0
    1cb4:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1cb8:	24840084 	addiu	a0,a0,132
    1cbc:	14400008 	bnez	v0,1ce0 <Audio_AllocNote+0x16c>
    1cc0:	00403025 	move	a2,v0
    1cc4:	8e0b0050 	lw	t3,80(s0)
    1cc8:	02002825 	move	a1,s0
    1ccc:	8d64004c 	lw	a0,76(t3)
    1cd0:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1cd4:	2484009c 	addiu	a0,a0,156
    1cd8:	10400052 	beqz	v0,1e24 <Audio_AllocNote+0x2b0>
    1cdc:	00403025 	move	a2,v0
    1ce0:	10000054 	b	1e34 <Audio_AllocNote+0x2c0>
    1ce4:	00c01025 	move	v0,a2
    1ce8:	11800015 	beqz	t4,1d40 <Audio_AllocNote+0x1cc>
    1cec:	24640084 	addiu	a0,v1,132
    1cf0:	3c040000 	lui	a0,0x0
    1cf4:	24840000 	addiu	a0,a0,0
    1cf8:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1cfc:	02002825 	move	a1,s0
    1d00:	1440000d 	bnez	v0,1d38 <Audio_AllocNote+0x1c4>
    1d04:	00403025 	move	a2,v0
    1d08:	3c040000 	lui	a0,0x0
    1d0c:	24840000 	addiu	a0,a0,0
    1d10:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1d14:	02002825 	move	a1,s0
    1d18:	14400007 	bnez	v0,1d38 <Audio_AllocNote+0x1c4>
    1d1c:	00403025 	move	a2,v0
    1d20:	3c040000 	lui	a0,0x0
    1d24:	24840000 	addiu	a0,a0,0
    1d28:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1d2c:	02002825 	move	a1,s0
    1d30:	1040003c 	beqz	v0,1e24 <Audio_AllocNote+0x2b0>
    1d34:	00403025 	move	a2,v0
    1d38:	1000003e 	b	1e34 <Audio_AllocNote+0x2c0>
    1d3c:	00c01025 	move	v0,a2
    1d40:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1d44:	02002825 	move	a1,s0
    1d48:	14400034 	bnez	v0,1e1c <Audio_AllocNote+0x2a8>
    1d4c:	00403025 	move	a2,v0
    1d50:	8e0d0050 	lw	t5,80(s0)
    1d54:	02002825 	move	a1,s0
    1d58:	8da4004c 	lw	a0,76(t5)
    1d5c:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1d60:	2484009c 	addiu	a0,a0,156
    1d64:	1440002d 	bnez	v0,1e1c <Audio_AllocNote+0x2a8>
    1d68:	00403025 	move	a2,v0
    1d6c:	3c040000 	lui	a0,0x0
    1d70:	24840000 	addiu	a0,a0,0
    1d74:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1d78:	02002825 	move	a1,s0
    1d7c:	14400027 	bnez	v0,1e1c <Audio_AllocNote+0x2a8>
    1d80:	00403025 	move	a2,v0
    1d84:	8e040050 	lw	a0,80(s0)
    1d88:	02002825 	move	a1,s0
    1d8c:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1d90:	24840084 	addiu	a0,a0,132
    1d94:	14400021 	bnez	v0,1e1c <Audio_AllocNote+0x2a8>
    1d98:	00403025 	move	a2,v0
    1d9c:	8e0e0050 	lw	t6,80(s0)
    1da0:	02002825 	move	a1,s0
    1da4:	8dc4004c 	lw	a0,76(t6)
    1da8:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1dac:	2484009c 	addiu	a0,a0,156
    1db0:	1440001a 	bnez	v0,1e1c <Audio_AllocNote+0x2a8>
    1db4:	00403025 	move	a2,v0
    1db8:	3c040000 	lui	a0,0x0
    1dbc:	24840000 	addiu	a0,a0,0
    1dc0:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1dc4:	02002825 	move	a1,s0
    1dc8:	14400014 	bnez	v0,1e1c <Audio_AllocNote+0x2a8>
    1dcc:	00403025 	move	a2,v0
    1dd0:	8e040050 	lw	a0,80(s0)
    1dd4:	02002825 	move	a1,s0
    1dd8:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1ddc:	24840084 	addiu	a0,a0,132
    1de0:	1440000e 	bnez	v0,1e1c <Audio_AllocNote+0x2a8>
    1de4:	00403025 	move	a2,v0
    1de8:	8e0f0050 	lw	t7,80(s0)
    1dec:	02002825 	move	a1,s0
    1df0:	8de4004c 	lw	a0,76(t7)
    1df4:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1df8:	2484009c 	addiu	a0,a0,156
    1dfc:	14400007 	bnez	v0,1e1c <Audio_AllocNote+0x2a8>
    1e00:	00403025 	move	a2,v0
    1e04:	3c040000 	lui	a0,0x0
    1e08:	24840000 	addiu	a0,a0,0
    1e0c:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1e10:	02002825 	move	a1,s0
    1e14:	10400003 	beqz	v0,1e24 <Audio_AllocNote+0x2b0>
    1e18:	00403025 	move	a2,v0
    1e1c:	10000005 	b	1e34 <Audio_AllocNote+0x2c0>
    1e20:	00c01025 	move	v0,a2
    1e24:	92190000 	lbu	t9,0(s0)
    1e28:	00001025 	move	v0,zero
    1e2c:	37280008 	ori	t0,t9,0x8
    1e30:	a2080000 	sb	t0,0(s0)
    1e34:	8fbf001c 	lw	ra,28(sp)
    1e38:	8fb00018 	lw	s0,24(sp)
    1e3c:	27bd0028 	addiu	sp,sp,40
    1e40:	03e00008 	jr	ra
    1e44:	00000000 	nop

00001e48 <Audio_NoteInitAll>:
    1e48:	27bdffc0 	addiu	sp,sp,-64
    1e4c:	afb40030 	sw	s4,48(sp)
    1e50:	3c140000 	lui	s4,0x0
    1e54:	26940000 	addiu	s4,s4,0
    1e58:	8e8e2894 	lw	t6,10388(s4)
    1e5c:	afb10024 	sw	s1,36(sp)
    1e60:	afbf003c 	sw	ra,60(sp)
    1e64:	afb60038 	sw	s6,56(sp)
    1e68:	afb50034 	sw	s5,52(sp)
    1e6c:	afb3002c 	sw	s3,44(sp)
    1e70:	afb20028 	sw	s2,40(sp)
    1e74:	afb00020 	sw	s0,32(sp)
    1e78:	f7b40018 	sdc1	$f20,24(sp)
    1e7c:	19c00032 	blez	t6,1f48 <Audio_NoteInitAll+0x100>
    1e80:	00008825 	move	s1,zero
    1e84:	3c160000 	lui	s6,0x0
    1e88:	3c150000 	lui	s5,0x0
    1e8c:	4480a000 	mtc1	zero,$f20
    1e90:	26b50000 	addiu	s5,s5,0
    1e94:	26d629c0 	addiu	s6,s6,10688
    1e98:	00009025 	move	s2,zero
    1e9c:	2413ffff 	li	s3,-1
    1ea0:	8e8f352c 	lw	t7,13612(s4)
    1ea4:	8eb90000 	lw	t9,0(s5)
    1ea8:	02c02025 	move	a0,s6
    1eac:	024f8021 	addu	s0,s2,t7
    1eb0:	ae1900c0 	sw	t9,192(s0)
    1eb4:	8eb80004 	lw	t8,4(s5)
    1eb8:	240501e0 	li	a1,480
    1ebc:	ae1800c4 	sw	t8,196(s0)
    1ec0:	8eb90008 	lw	t9,8(s5)
    1ec4:	ae1900c8 	sw	t9,200(s0)
    1ec8:	8eb8000c 	lw	t8,12(s5)
    1ecc:	ae1800cc 	sw	t8,204(s0)
    1ed0:	8eb90010 	lw	t9,16(s5)
    1ed4:	ae1900d0 	sw	t9,208(s0)
    1ed8:	8eb80014 	lw	t8,20(s5)
    1edc:	ae1800d4 	sw	t8,212(s0)
    1ee0:	8eb90018 	lw	t9,24(s5)
    1ee4:	ae1900d8 	sw	t9,216(s0)
    1ee8:	8eb8001c 	lw	t8,28(s5)
    1eec:	a2000030 	sb	zero,48(s0)
    1ef0:	a2000034 	sb	zero,52(s0)
    1ef4:	ae130044 	sw	s3,68(s0)
    1ef8:	ae130048 	sw	s3,72(s0)
    1efc:	ae130040 	sw	s3,64(s0)
    1f00:	a2000031 	sb	zero,49(s0)
    1f04:	e6140058 	swc1	$f20,88(s0)
    1f08:	a6000036 	sh	zero,54(s0)
    1f0c:	a2000070 	sb	zero,112(s0)
    1f10:	a20000b0 	sb	zero,176(s0)
    1f14:	a6000092 	sh	zero,146(s0)
    1f18:	a6000094 	sh	zero,148(s0)
    1f1c:	a2000035 	sb	zero,53(s0)
    1f20:	ae0000bc 	sw	zero,188(s0)
    1f24:	0c000000 	jal	0 <Audio_NoteSetVelPanReverb>
    1f28:	ae1800dc 	sw	t8,220(s0)
    1f2c:	ae02001c 	sw	v0,28(s0)
    1f30:	8e882894 	lw	t0,10388(s4)
    1f34:	26310001 	addiu	s1,s1,1
    1f38:	265200e0 	addiu	s2,s2,224
    1f3c:	0228082a 	slt	at,s1,t0
    1f40:	5420ffd8 	bnezl	at,1ea4 <Audio_NoteInitAll+0x5c>
    1f44:	8e8f352c 	lw	t7,13612(s4)
    1f48:	8fbf003c 	lw	ra,60(sp)
    1f4c:	d7b40018 	ldc1	$f20,24(sp)
    1f50:	8fb00020 	lw	s0,32(sp)
    1f54:	8fb10024 	lw	s1,36(sp)
    1f58:	8fb20028 	lw	s2,40(sp)
    1f5c:	8fb3002c 	lw	s3,44(sp)
    1f60:	8fb40030 	lw	s4,48(sp)
    1f64:	8fb50034 	lw	s5,52(sp)
    1f68:	8fb60038 	lw	s6,56(sp)
    1f6c:	03e00008 	jr	ra
    1f70:	27bd0040 	addiu	sp,sp,64
	...
