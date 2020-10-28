
build/src/overlays/actors/ovl_En_Ice_Hono/z_en_ice_hono.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnIceHono_SquareDist>:
       0:	c4840000 	lwc1	$f4,0(a0)
       4:	c4a60000 	lwc1	$f6,0(a1)
       8:	c4880008 	lwc1	$f8,8(a0)
       c:	c4aa0008 	lwc1	$f10,8(a1)
      10:	46062081 	sub.s	$f2,$f4,$f6
      14:	460a4301 	sub.s	$f12,$f8,$f10
      18:	46021402 	mul.s	$f16,$f2,$f2
      1c:	00000000 	nop
      20:	460c6482 	mul.s	$f18,$f12,$f12
      24:	03e00008 	jr	ra
      28:	46128000 	add.s	$f0,$f16,$f18

0000002c <EnIceHono_InitCapturableFlame>:
      2c:	27bdffd8 	addiu	sp,sp,-40
      30:	afa5002c 	sw	a1,44(sp)
      34:	afbf001c 	sw	ra,28(sp)
      38:	afb00018 	sw	s0,24(sp)
      3c:	3c050000 	lui	a1,0x0
      40:	00808025 	move	s0,a0
      44:	0c000000 	jal	0 <EnIceHono_SquareDist>
      48:	24a50078 	addiu	a1,a1,120
      4c:	3c053bf2 	lui	a1,0x3bf2
      50:	34a57bb3 	ori	a1,a1,0x7bb3
      54:	0c000000 	jal	0 <EnIceHono_SquareDist>
      58:	02002025 	move	a0,s0
      5c:	8e0e0004 	lw	t6,4(s0)
      60:	02002025 	move	a0,s0
      64:	3c054120 	lui	a1,0x4120
      68:	35cf0001 	ori	t7,t6,0x1
      6c:	0c000000 	jal	0 <EnIceHono_SquareDist>
      70:	ae0f0004 	sw	t7,4(s0)
      74:	2605015c 	addiu	a1,s0,348
      78:	afa50020 	sw	a1,32(sp)
      7c:	0c000000 	jal	0 <EnIceHono_SquareDist>
      80:	8fa4002c 	lw	a0,44(sp)
      84:	3c070000 	lui	a3,0x0
      88:	24e70020 	addiu	a3,a3,32
      8c:	8fa4002c 	lw	a0,44(sp)
      90:	8fa50020 	lw	a1,32(sp)
      94:	0c000000 	jal	0 <EnIceHono_SquareDist>
      98:	02003025 	move	a2,s0
      9c:	02002025 	move	a0,s0
      a0:	0c000000 	jal	0 <EnIceHono_SquareDist>
      a4:	8fa50020 	lw	a1,32(sp)
      a8:	241800ff 	li	t8,255
      ac:	a21800ae 	sb	t8,174(s0)
      b0:	0c000000 	jal	0 <EnIceHono_SquareDist>
      b4:	02002025 	move	a0,s0
      b8:	8fbf001c 	lw	ra,28(sp)
      bc:	8fb00018 	lw	s0,24(sp)
      c0:	27bd0028 	addiu	sp,sp,40
      c4:	03e00008 	jr	ra
      c8:	00000000 	nop

000000cc <EnIceHono_InitDroppedFlame>:
      cc:	27bdffc8 	addiu	sp,sp,-56
      d0:	afa5003c 	sw	a1,60(sp)
      d4:	afbf001c 	sw	ra,28(sp)
      d8:	afb00018 	sw	s0,24(sp)
      dc:	3c050000 	lui	a1,0x0
      e0:	00808025 	move	s0,a0
      e4:	0c000000 	jal	0 <EnIceHono_SquareDist>
      e8:	24a5008c 	addiu	a1,a1,140
      ec:	3c010000 	lui	at,0x0
      f0:	c4200074 	lwc1	$f0,116(at)
      f4:	3c010000 	lui	at,0x0
      f8:	44804000 	mtc1	zero,$f8
      fc:	e6000054 	swc1	$f0,84(s0)
     100:	e6000058 	swc1	$f0,88(s0)
     104:	e6000050 	swc1	$f0,80(s0)
     108:	c4240078 	lwc1	$f4,120(at)
     10c:	a6000034 	sh	zero,52(s0)
     110:	86020034 	lh	v0,52(s0)
     114:	3c01c080 	lui	at,0xc080
     118:	44813000 	mtc1	at,$f6
     11c:	2605015c 	addiu	a1,s0,348
     120:	e60800bc 	swc1	$f8,188(s0)
     124:	e604006c 	swc1	$f4,108(s0)
     128:	a6020032 	sh	v0,50(s0)
     12c:	a6020030 	sh	v0,48(s0)
     130:	a60200b8 	sh	v0,184(s0)
     134:	a60200b6 	sh	v0,182(s0)
     138:	a60200b4 	sh	v0,180(s0)
     13c:	e6060070 	swc1	$f6,112(s0)
     140:	afa50024 	sw	a1,36(sp)
     144:	0c000000 	jal	0 <EnIceHono_SquareDist>
     148:	8fa4003c 	lw	a0,60(sp)
     14c:	3c070000 	lui	a3,0x0
     150:	24e7004c 	addiu	a3,a3,76
     154:	8fa4003c 	lw	a0,60(sp)
     158:	8fa50024 	lw	a1,36(sp)
     15c:	0c000000 	jal	0 <EnIceHono_SquareDist>
     160:	02003025 	move	a2,s0
     164:	02002025 	move	a0,s0
     168:	0c000000 	jal	0 <EnIceHono_SquareDist>
     16c:	8fa50024 	lw	a1,36(sp)
     170:	3c010000 	lui	at,0x0
     174:	c430007c 	lwc1	$f16,124(at)
     178:	c60a0050 	lwc1	$f10,80(s0)
     17c:	3c010000 	lui	at,0x0
     180:	c6060054 	lwc1	$f6,84(s0)
     184:	46105482 	mul.s	$f18,$f10,$f16
     188:	240800fd 	li	t0,253
     18c:	02002025 	move	a0,s0
     190:	4600910d 	trunc.w.s	$f4,$f18
     194:	440f2000 	mfc1	t7,$f4
     198:	00000000 	nop
     19c:	a60f019c 	sh	t7,412(s0)
     1a0:	c4280080 	lwc1	$f8,128(at)
     1a4:	a20800ae 	sb	t0,174(s0)
     1a8:	46083282 	mul.s	$f10,$f6,$f8
     1ac:	4600540d 	trunc.w.s	$f16,$f10
     1b0:	44198000 	mfc1	t9,$f16
     1b4:	0c000000 	jal	0 <EnIceHono_SquareDist>
     1b8:	a619019e 	sh	t9,414(s0)
     1bc:	8fbf001c 	lw	ra,28(sp)
     1c0:	8fb00018 	lw	s0,24(sp)
     1c4:	27bd0038 	addiu	sp,sp,56
     1c8:	03e00008 	jr	ra
     1cc:	00000000 	nop

000001d0 <EnIceHono_InitSmallFlame>:
     1d0:	27bdffe8 	addiu	sp,sp,-24
     1d4:	afa5001c 	sw	a1,28(sp)
     1d8:	afbf0014 	sw	ra,20(sp)
     1dc:	3c050000 	lui	a1,0x0
     1e0:	24a50098 	addiu	a1,a1,152
     1e4:	0c000000 	jal	0 <EnIceHono_SquareDist>
     1e8:	afa40018 	sw	a0,24(sp)
     1ec:	3c010000 	lui	at,0x0
     1f0:	c4200084 	lwc1	$f0,132(at)
     1f4:	8fa40018 	lw	a0,24(sp)
     1f8:	3c010000 	lui	at,0x0
     1fc:	44804000 	mtc1	zero,$f8
     200:	e4800054 	swc1	$f0,84(a0)
     204:	e4800058 	swc1	$f0,88(a0)
     208:	e4800050 	swc1	$f0,80(a0)
     20c:	c4240088 	lwc1	$f4,136(at)
     210:	3c01c080 	lui	at,0xc080
     214:	44813000 	mtc1	at,$f6
     218:	e48800bc 	swc1	$f8,188(a0)
     21c:	e484006c 	swc1	$f4,108(a0)
     220:	0c000000 	jal	0 <EnIceHono_SquareDist>
     224:	e4860070 	swc1	$f6,112(a0)
     228:	8fbf0014 	lw	ra,20(sp)
     22c:	27bd0018 	addiu	sp,sp,24
     230:	03e00008 	jr	ra
     234:	00000000 	nop

00000238 <EnIceHono_Init>:
     238:	27bdffc0 	addiu	sp,sp,-64
     23c:	afbf002c 	sw	ra,44(sp)
     240:	afb00028 	sw	s0,40(sp)
     244:	afa50044 	sw	a1,68(sp)
     248:	8482001c 	lh	v0,28(a0)
     24c:	00808025 	move	s0,a0
     250:	2401ffff 	li	at,-1
     254:	1041000b 	beq	v0,at,284 <EnIceHono_Init+0x4c>
     258:	02002025 	move	a0,s0
     25c:	1040000d 	beqz	v0,294 <EnIceHono_Init+0x5c>
     260:	02002025 	move	a0,s0
     264:	24010001 	li	at,1
     268:	1041000e 	beq	v0,at,2a4 <EnIceHono_Init+0x6c>
     26c:	02002025 	move	a0,s0
     270:	24010002 	li	at,2
     274:	1041000b 	beq	v0,at,2a4 <EnIceHono_Init+0x6c>
     278:	00000000 	nop
     27c:	1000000d 	b	2b4 <EnIceHono_Init+0x7c>
     280:	2401ffff 	li	at,-1
     284:	0c000000 	jal	0 <EnIceHono_SquareDist>
     288:	8fa50044 	lw	a1,68(sp)
     28c:	10000008 	b	2b0 <EnIceHono_Init+0x78>
     290:	8602001c 	lh	v0,28(s0)
     294:	0c000000 	jal	0 <EnIceHono_SquareDist>
     298:	8fa50044 	lw	a1,68(sp)
     29c:	10000004 	b	2b0 <EnIceHono_Init+0x78>
     2a0:	8602001c 	lh	v0,28(s0)
     2a4:	0c000000 	jal	0 <EnIceHono_SquareDist>
     2a8:	8fa50044 	lw	a1,68(sp)
     2ac:	8602001c 	lh	v0,28(s0)
     2b0:	2401ffff 	li	at,-1
     2b4:	10410003 	beq	v0,at,2c4 <EnIceHono_Init+0x8c>
     2b8:	260401ac 	addiu	a0,s0,428
     2bc:	54400034 	bnezl	v0,390 <EnIceHono_Init+0x158>
     2c0:	8fbf002c 	lw	ra,44(sp)
     2c4:	c6080028 	lwc1	$f8,40(s0)
     2c8:	c6040024 	lwc1	$f4,36(s0)
     2cc:	c610002c 	lwc1	$f16,44(s0)
     2d0:	4600428d 	trunc.w.s	$f10,$f8
     2d4:	2419009b 	li	t9,155
     2d8:	240800d2 	li	t0,210
     2dc:	4600218d 	trunc.w.s	$f6,$f4
     2e0:	44065000 	mfc1	a2,$f10
     2e4:	240900ff 	li	t1,255
     2e8:	4600848d 	trunc.w.s	$f18,$f16
     2ec:	44053000 	mfc1	a1,$f6
     2f0:	00063400 	sll	a2,a2,0x10
     2f4:	00063403 	sra	a2,a2,0x10
     2f8:	44079000 	mfc1	a3,$f18
     2fc:	24c6000a 	addiu	a2,a2,10
     300:	00063400 	sll	a2,a2,0x10
     304:	00052c00 	sll	a1,a1,0x10
     308:	00073c00 	sll	a3,a3,0x10
     30c:	00073c03 	sra	a3,a3,0x10
     310:	00052c03 	sra	a1,a1,0x10
     314:	00063403 	sra	a2,a2,0x10
     318:	afa90018 	sw	t1,24(sp)
     31c:	afa80014 	sw	t0,20(sp)
     320:	afb90010 	sw	t9,16(sp)
     324:	afa40030 	sw	a0,48(sp)
     328:	0c000000 	jal	0 <EnIceHono_SquareDist>
     32c:	afa0001c 	sw	zero,28(sp)
     330:	8fa40044 	lw	a0,68(sp)
     334:	8fa60030 	lw	a2,48(sp)
     338:	0c000000 	jal	0 <EnIceHono_SquareDist>
     33c:	248507a8 	addiu	a1,a0,1960
     340:	0c000000 	jal	0 <EnIceHono_SquareDist>
     344:	ae0201a8 	sw	v0,424(s0)
     348:	3c010000 	lui	at,0x0
     34c:	c424008c 	lwc1	$f4,140(at)
     350:	46040182 	mul.s	$f6,$f0,$f4
     354:	4600320d 	trunc.w.s	$f8,$f6
     358:	440c4000 	mfc1	t4,$f8
     35c:	0c000000 	jal	0 <EnIceHono_SquareDist>
     360:	a60c0154 	sh	t4,340(s0)
     364:	3c010000 	lui	at,0x0
     368:	c42a0090 	lwc1	$f10,144(at)
     36c:	3c040000 	lui	a0,0x0
     370:	24840000 	addiu	a0,a0,0
     374:	460a0402 	mul.s	$f16,$f0,$f10
     378:	8605001c 	lh	a1,28(s0)
     37c:	4600848d 	trunc.w.s	$f18,$f16
     380:	440e9000 	mfc1	t6,$f18
     384:	0c000000 	jal	0 <EnIceHono_SquareDist>
     388:	a60e0156 	sh	t6,342(s0)
     38c:	8fbf002c 	lw	ra,44(sp)
     390:	8fb00028 	lw	s0,40(sp)
     394:	27bd0040 	addiu	sp,sp,64
     398:	03e00008 	jr	ra
     39c:	00000000 	nop

000003a0 <EnIceHono_Destroy>:
     3a0:	27bdffe8 	addiu	sp,sp,-24
     3a4:	afbf0014 	sw	ra,20(sp)
     3a8:	afa5001c 	sw	a1,28(sp)
     3ac:	8482001c 	lh	v0,28(a0)
     3b0:	00803825 	move	a3,a0
     3b4:	2401ffff 	li	at,-1
     3b8:	10410003 	beq	v0,at,3c8 <EnIceHono_Destroy+0x28>
     3bc:	8fa4001c 	lw	a0,28(sp)
     3c0:	5440000a 	bnezl	v0,3ec <EnIceHono_Destroy+0x4c>
     3c4:	8fbf0014 	lw	ra,20(sp)
     3c8:	8ce601a8 	lw	a2,424(a3)
     3cc:	afa70018 	sw	a3,24(sp)
     3d0:	0c000000 	jal	0 <EnIceHono_SquareDist>
     3d4:	248507a8 	addiu	a1,a0,1960
     3d8:	8fa70018 	lw	a3,24(sp)
     3dc:	8fa4001c 	lw	a0,28(sp)
     3e0:	0c000000 	jal	0 <EnIceHono_SquareDist>
     3e4:	24e5015c 	addiu	a1,a3,348
     3e8:	8fbf0014 	lw	ra,20(sp)
     3ec:	27bd0018 	addiu	sp,sp,24
     3f0:	03e00008 	jr	ra
     3f4:	00000000 	nop

000003f8 <EnIceHono_LinkCloseAndFacing>:
     3f8:	27bdffd8 	addiu	sp,sp,-40
     3fc:	afbf0014 	sw	ra,20(sp)
     400:	3c014270 	lui	at,0x4270
     404:	44813000 	mtc1	at,$f6
     408:	c4840090 	lwc1	$f4,144(a0)
     40c:	00803025 	move	a2,a0
     410:	8ca21c44 	lw	v0,7236(a1)
     414:	4606203c 	c.lt.s	$f4,$f6
     418:	34018000 	li	at,0x8000
     41c:	4502002d 	bc1fl	4d4 <EnIceHono_LinkCloseAndFacing+0xdc>
     420:	00001025 	move	v0,zero
     424:	8484008a 	lh	a0,138(a0)
     428:	afa60028 	sw	a2,40(sp)
     42c:	afa20024 	sw	v0,36(sp)
     430:	00812021 	addu	a0,a0,at
     434:	00042400 	sll	a0,a0,0x10
     438:	0c000000 	jal	0 <EnIceHono_SquareDist>
     43c:	00042403 	sra	a0,a0,0x10
     440:	3c014220 	lui	at,0x4220
     444:	44814000 	mtc1	at,$f8
     448:	8fa20024 	lw	v0,36(sp)
     44c:	8fae0028 	lw	t6,40(sp)
     450:	46080282 	mul.s	$f10,$f0,$f8
     454:	c4500024 	lwc1	$f16,36(v0)
     458:	34018000 	li	at,0x8000
     45c:	46105480 	add.s	$f18,$f10,$f16
     460:	e7b20018 	swc1	$f18,24(sp)
     464:	c4440028 	lwc1	$f4,40(v0)
     468:	e7a4001c 	swc1	$f4,28(sp)
     46c:	85c4008a 	lh	a0,138(t6)
     470:	00812021 	addu	a0,a0,at
     474:	00042400 	sll	a0,a0,0x10
     478:	0c000000 	jal	0 <EnIceHono_SquareDist>
     47c:	00042403 	sra	a0,a0,0x10
     480:	3c014220 	lui	at,0x4220
     484:	44813000 	mtc1	at,$f6
     488:	8fa20024 	lw	v0,36(sp)
     48c:	8fa50028 	lw	a1,40(sp)
     490:	46060202 	mul.s	$f8,$f0,$f6
     494:	c44a002c 	lwc1	$f10,44(v0)
     498:	27a40018 	addiu	a0,sp,24
     49c:	24a50024 	addiu	a1,a1,36
     4a0:	460a4400 	add.s	$f16,$f8,$f10
     4a4:	0c000000 	jal	0 <EnIceHono_SquareDist>
     4a8:	e7b00020 	swc1	$f16,32(sp)
     4ac:	3c0144c8 	lui	at,0x44c8
     4b0:	44819000 	mtc1	at,$f18
     4b4:	00000000 	nop
     4b8:	4612003e 	c.le.s	$f0,$f18
     4bc:	00000000 	nop
     4c0:	45020004 	bc1fl	4d4 <EnIceHono_LinkCloseAndFacing+0xdc>
     4c4:	00001025 	move	v0,zero
     4c8:	10000002 	b	4d4 <EnIceHono_LinkCloseAndFacing+0xdc>
     4cc:	24020001 	li	v0,1
     4d0:	00001025 	move	v0,zero
     4d4:	8fbf0014 	lw	ra,20(sp)
     4d8:	27bd0028 	addiu	sp,sp,40
     4dc:	03e00008 	jr	ra
     4e0:	00000000 	nop

000004e4 <EnIceHono_SetupActionCapturableFlame>:
     4e4:	3c01c47a 	lui	at,0xc47a
     4e8:	44812000 	mtc1	at,$f4
     4ec:	3c0e0000 	lui	t6,0x0
     4f0:	25ce0000 	addiu	t6,t6,0
     4f4:	240f00ff 	li	t7,255
     4f8:	ac8e014c 	sw	t6,332(a0)
     4fc:	a48f0150 	sh	t7,336(a0)
     500:	03e00008 	jr	ra
     504:	e48400bc 	swc1	$f4,188(a0)

00000508 <EnIceHono_CapturableFlame>:
     508:	27bdffd8 	addiu	sp,sp,-40
     50c:	afbf0024 	sw	ra,36(sp)
     510:	afb10020 	sw	s1,32(sp)
     514:	afb0001c 	sw	s0,28(sp)
     518:	00808025 	move	s0,a0
     51c:	0c000000 	jal	0 <EnIceHono_SquareDist>
     520:	00a08825 	move	s1,a1
     524:	10400003 	beqz	v0,534 <EnIceHono_CapturableFlame+0x2c>
     528:	02002025 	move	a0,s0
     52c:	1000000c 	b	560 <EnIceHono_CapturableFlame+0x58>
     530:	ae000118 	sw	zero,280(s0)
     534:	0c000000 	jal	0 <EnIceHono_SquareDist>
     538:	02202825 	move	a1,s1
     53c:	10400008 	beqz	v0,560 <EnIceHono_CapturableFlame+0x58>
     540:	02002025 	move	a0,s0
     544:	3c0142c8 	lui	at,0x42c8
     548:	44812000 	mtc1	at,$f4
     54c:	02202825 	move	a1,s1
     550:	2406007e 	li	a2,126
     554:	3c074270 	lui	a3,0x4270
     558:	0c000000 	jal	0 <EnIceHono_SquareDist>
     55c:	e7a40010 	swc1	$f4,16(sp)
     560:	3c014348 	lui	at,0x4348
     564:	44814000 	mtc1	at,$f8
     568:	c6060090 	lwc1	$f6,144(s0)
     56c:	3c010001 	lui	at,0x1
     570:	34211e60 	ori	at,at,0x1e60
     574:	4608303c 	c.lt.s	$f6,$f8
     578:	02212821 	addu	a1,s1,at
     57c:	02202025 	move	a0,s1
     580:	45020004 	bc1fl	594 <EnIceHono_CapturableFlame+0x8c>
     584:	02002025 	move	a0,s0
     588:	0c000000 	jal	0 <EnIceHono_SquareDist>
     58c:	2606015c 	addiu	a2,s0,348
     590:	02002025 	move	a0,s0
     594:	0c000000 	jal	0 <EnIceHono_SquareDist>
     598:	240520a3 	li	a1,8355
     59c:	8fbf0024 	lw	ra,36(sp)
     5a0:	8fb0001c 	lw	s0,28(sp)
     5a4:	8fb10020 	lw	s1,32(sp)
     5a8:	03e00008 	jr	ra
     5ac:	27bd0028 	addiu	sp,sp,40

000005b0 <EnIceHono_SetupActionDroppedFlame>:
     5b0:	3c0e0000 	lui	t6,0x0
     5b4:	25ce0000 	addiu	t6,t6,0
     5b8:	240f00c8 	li	t7,200
     5bc:	241800ff 	li	t8,255
     5c0:	ac8e014c 	sw	t6,332(a0)
     5c4:	a48f0152 	sh	t7,338(a0)
     5c8:	03e00008 	jr	ra
     5cc:	a4980150 	sh	t8,336(a0)

000005d0 <EnIceHono_DropFlame>:
     5d0:	27bdffb0 	addiu	sp,sp,-80
     5d4:	f7b40030 	sdc1	$f20,48(sp)
     5d8:	3c010000 	lui	at,0x0
     5dc:	c4340094 	lwc1	$f20,148(at)
     5e0:	afb40048 	sw	s4,72(sp)
     5e4:	afbf004c 	sw	ra,76(sp)
     5e8:	afb30044 	sw	s3,68(sp)
     5ec:	afb20040 	sw	s2,64(sp)
     5f0:	afb1003c 	sw	s1,60(sp)
     5f4:	afb00038 	sw	s0,56(sp)
     5f8:	94900088 	lhu	s0,136(a0)
     5fc:	00a0a025 	move	s4,a1
     600:	00808825 	move	s1,a0
     604:	3c0638a7 	lui	a2,0x38a7
     608:	4405a000 	mfc1	a1,$f20
     60c:	34c6c5ac 	ori	a2,a2,0xc5ac
     610:	24840050 	addiu	a0,a0,80
     614:	0c000000 	jal	0 <EnIceHono_SquareDist>
     618:	32100001 	andi	s0,s0,0x1
     61c:	c6240050 	lwc1	$f4,80(s1)
     620:	4405a000 	mfc1	a1,$f20
     624:	3c0638a7 	lui	a2,0x38a7
     628:	34c6c5ac 	ori	a2,a2,0xc5ac
     62c:	26240054 	addiu	a0,s1,84
     630:	0c000000 	jal	0 <EnIceHono_SquareDist>
     634:	e6240058 	swc1	$f4,88(s1)
     638:	1200001f 	beqz	s0,6b8 <EnIceHono_DropFlame+0xe8>
     63c:	26921c24 	addiu	s2,s4,7204
     640:	3c01447a 	lui	at,0x447a
     644:	4481a000 	mtc1	at,$f20
     648:	00008025 	move	s0,zero
     64c:	3c130001 	lui	s3,0x1
     650:	0c000000 	jal	0 <EnIceHono_SquareDist>
     654:	00000000 	nop
     658:	46140282 	mul.s	$f10,$f0,$f20
     65c:	c6260028 	lwc1	$f6,40(s1)
     660:	8e270024 	lw	a3,36(s1)
     664:	24080001 	li	t0,1
     668:	e7a60010 	swc1	$f6,16(sp)
     66c:	c628002c 	lwc1	$f8,44(s1)
     670:	afa80024 	sw	t0,36(sp)
     674:	4600540d 	trunc.w.s	$f16,$f10
     678:	afa00020 	sw	zero,32(sp)
     67c:	afa00018 	sw	zero,24(sp)
     680:	02402025 	move	a0,s2
     684:	440f8000 	mfc1	t7,$f16
     688:	02802825 	move	a1,s4
     68c:	240600f0 	li	a2,240
     690:	01f0c021 	addu	t8,t7,s0
     694:	2719fe0c 	addiu	t9,t8,-500
     698:	afb9001c 	sw	t9,28(sp)
     69c:	0c000000 	jal	0 <EnIceHono_SquareDist>
     6a0:	e7a80014 	swc1	$f8,20(sp)
     6a4:	26102000 	addiu	s0,s0,8192
     6a8:	1613ffe9 	bne	s0,s3,650 <EnIceHono_DropFlame+0x80>
     6ac:	00000000 	nop
     6b0:	0c000000 	jal	0 <EnIceHono_SquareDist>
     6b4:	02202025 	move	a0,s1
     6b8:	0c000000 	jal	0 <EnIceHono_SquareDist>
     6bc:	02202025 	move	a0,s1
     6c0:	3c010000 	lui	at,0x0
     6c4:	c4240098 	lwc1	$f4,152(at)
     6c8:	c6320050 	lwc1	$f18,80(s1)
     6cc:	44804000 	mtc1	zero,$f8
     6d0:	24090005 	li	t1,5
     6d4:	46049182 	mul.s	$f6,$f18,$f4
     6d8:	afa90014 	sw	t1,20(sp)
     6dc:	02802025 	move	a0,s4
     6e0:	02202825 	move	a1,s1
     6e4:	3c064120 	lui	a2,0x4120
     6e8:	e7a80010 	swc1	$f8,16(sp)
     6ec:	44073000 	mfc1	a3,$f6
     6f0:	0c000000 	jal	0 <EnIceHono_SquareDist>
     6f4:	00000000 	nop
     6f8:	2630015c 	addiu	s0,s1,348
     6fc:	02002825 	move	a1,s0
     700:	0c000000 	jal	0 <EnIceHono_SquareDist>
     704:	02202025 	move	a0,s1
     708:	3c01457a 	lui	at,0x457a
     70c:	44818000 	mtc1	at,$f16
     710:	c62a0050 	lwc1	$f10,80(s1)
     714:	3c0145fa 	lui	at,0x45fa
     718:	44814000 	mtc1	at,$f8
     71c:	46105482 	mul.s	$f18,$f10,$f16
     720:	c6260054 	lwc1	$f6,84(s1)
     724:	3c010001 	lui	at,0x1
     728:	34211e60 	ori	at,at,0x1e60
     72c:	46083282 	mul.s	$f10,$f6,$f8
     730:	02812821 	addu	a1,s4,at
     734:	02802025 	move	a0,s4
     738:	02003025 	move	a2,s0
     73c:	4600910d 	trunc.w.s	$f4,$f18
     740:	4600540d 	trunc.w.s	$f16,$f10
     744:	440b2000 	mfc1	t3,$f4
     748:	440d8000 	mfc1	t5,$f16
     74c:	a62b019c 	sh	t3,412(s1)
     750:	0c000000 	jal	0 <EnIceHono_SquareDist>
     754:	a62d019e 	sh	t5,414(s1)
     758:	862e0152 	lh	t6,338(s1)
     75c:	5dc00004 	bgtzl	t6,770 <EnIceHono_DropFlame+0x1a0>
     760:	8fbf004c 	lw	ra,76(sp)
     764:	0c000000 	jal	0 <EnIceHono_SquareDist>
     768:	02202025 	move	a0,s1
     76c:	8fbf004c 	lw	ra,76(sp)
     770:	d7b40030 	ldc1	$f20,48(sp)
     774:	8fb00038 	lw	s0,56(sp)
     778:	8fb1003c 	lw	s1,60(sp)
     77c:	8fb20040 	lw	s2,64(sp)
     780:	8fb30044 	lw	s3,68(sp)
     784:	8fb40048 	lw	s4,72(sp)
     788:	03e00008 	jr	ra
     78c:	27bd0050 	addiu	sp,sp,80

00000790 <EnIceHono_SetupActionSpreadFlames>:
     790:	3c0e0000 	lui	t6,0x0
     794:	25ce0000 	addiu	t6,t6,0
     798:	240f003c 	li	t7,60
     79c:	241800ff 	li	t8,255
     7a0:	ac8e014c 	sw	t6,332(a0)
     7a4:	a48f0152 	sh	t7,338(a0)
     7a8:	03e00008 	jr	ra
     7ac:	a4980150 	sh	t8,336(a0)

000007b0 <EnIceHono_SpreadFlames>:
     7b0:	27bdffb0 	addiu	sp,sp,-80
     7b4:	afbf004c 	sw	ra,76(sp)
     7b8:	afb40048 	sw	s4,72(sp)
     7bc:	afb30044 	sw	s3,68(sp)
     7c0:	afb20040 	sw	s2,64(sp)
     7c4:	afb1003c 	sw	s1,60(sp)
     7c8:	afb00038 	sw	s0,56(sp)
     7cc:	f7b40030 	sdc1	$f20,48(sp)
     7d0:	848e0152 	lh	t6,338(a0)
     7d4:	00808825 	move	s1,a0
     7d8:	00a0a025 	move	s4,a1
     7dc:	29c10015 	slti	at,t6,21
     7e0:	1420000e 	bnez	at,81c <EnIceHono_SpreadFlames+0x6c>
     7e4:	24840050 	addiu	a0,a0,80
     7e8:	3c053c34 	lui	a1,0x3c34
     7ec:	3c063912 	lui	a2,0x3912
     7f0:	34c6ccf7 	ori	a2,a2,0xccf7
     7f4:	0c000000 	jal	0 <EnIceHono_SquareDist>
     7f8:	34a53958 	ori	a1,a1,0x3958
     7fc:	3c053bc4 	lui	a1,0x3bc4
     800:	3c0638fb 	lui	a2,0x38fb
     804:	34c6a882 	ori	a2,a2,0xa882
     808:	34a59ba6 	ori	a1,a1,0x9ba6
     80c:	0c000000 	jal	0 <EnIceHono_SquareDist>
     810:	26240054 	addiu	a0,s1,84
     814:	1000000e 	b	850 <EnIceHono_SpreadFlames+0xa0>
     818:	c6240050 	lwc1	$f4,80(s1)
     81c:	3c010000 	lui	at,0x0
     820:	c434009c 	lwc1	$f20,156(at)
     824:	3c06391d 	lui	a2,0x391d
     828:	34c64952 	ori	a2,a2,0x4952
     82c:	4405a000 	mfc1	a1,$f20
     830:	0c000000 	jal	0 <EnIceHono_SquareDist>
     834:	26240050 	addiu	a0,s1,80
     838:	4405a000 	mfc1	a1,$f20
     83c:	3c06391d 	lui	a2,0x391d
     840:	34c64952 	ori	a2,a2,0x4952
     844:	0c000000 	jal	0 <EnIceHono_SquareDist>
     848:	26240054 	addiu	a0,s1,84
     84c:	c6240050 	lwc1	$f4,80(s1)
     850:	02202025 	move	a0,s1
     854:	0c000000 	jal	0 <EnIceHono_SquareDist>
     858:	e6240058 	swc1	$f4,88(s1)
     85c:	3c010000 	lui	at,0x0
     860:	c42800a0 	lwc1	$f8,160(at)
     864:	c6260050 	lwc1	$f6,80(s1)
     868:	44808000 	mtc1	zero,$f16
     86c:	240f0004 	li	t7,4
     870:	46083282 	mul.s	$f10,$f6,$f8
     874:	afaf0014 	sw	t7,20(sp)
     878:	02802025 	move	a0,s4
     87c:	02202825 	move	a1,s1
     880:	3c064120 	lui	a2,0x4120
     884:	e7b00010 	swc1	$f16,16(sp)
     888:	44075000 	mfc1	a3,$f10
     88c:	0c000000 	jal	0 <EnIceHono_SquareDist>
     890:	00000000 	nop
     894:	86220152 	lh	v0,338(s1)
     898:	28410019 	slti	at,v0,25
     89c:	50200011 	beqzl	at,8e4 <EnIceHono_SpreadFlames+0x134>
     8a0:	86280150 	lh	t0,336(s1)
     8a4:	86380150 	lh	t8,336(s1)
     8a8:	2719fff6 	addiu	t9,t8,-10
     8ac:	a6390150 	sh	t9,336(s1)
     8b0:	86220150 	lh	v0,336(s1)
     8b4:	04410004 	bgez	v0,8c8 <EnIceHono_SpreadFlames+0x118>
     8b8:	28410100 	slti	at,v0,256
     8bc:	a6200150 	sh	zero,336(s1)
     8c0:	10000007 	b	8e0 <EnIceHono_SpreadFlames+0x130>
     8c4:	86220152 	lh	v0,338(s1)
     8c8:	14200003 	bnez	at,8d8 <EnIceHono_SpreadFlames+0x128>
     8cc:	00401825 	move	v1,v0
     8d0:	10000001 	b	8d8 <EnIceHono_SpreadFlames+0x128>
     8d4:	240300ff 	li	v1,255
     8d8:	a6230150 	sh	v1,336(s1)
     8dc:	86220152 	lh	v0,338(s1)
     8e0:	86280150 	lh	t0,336(s1)
     8e4:	29010065 	slti	at,t0,101
     8e8:	1420001b 	bnez	at,958 <EnIceHono_SpreadFlames+0x1a8>
     8ec:	28410028 	slti	at,v0,40
     8f0:	10200019 	beqz	at,958 <EnIceHono_SpreadFlames+0x1a8>
     8f4:	02202025 	move	a0,s1
     8f8:	2630015c 	addiu	s0,s1,348
     8fc:	0c000000 	jal	0 <EnIceHono_SquareDist>
     900:	02002825 	move	a1,s0
     904:	3c010000 	lui	at,0x0
     908:	c42400a4 	lwc1	$f4,164(at)
     90c:	c6320050 	lwc1	$f18,80(s1)
     910:	3c0145fa 	lui	at,0x45fa
     914:	44818000 	mtc1	at,$f16
     918:	46049182 	mul.s	$f6,$f18,$f4
     91c:	c62a0054 	lwc1	$f10,84(s1)
     920:	3c010001 	lui	at,0x1
     924:	34211e60 	ori	at,at,0x1e60
     928:	46105482 	mul.s	$f18,$f10,$f16
     92c:	02812821 	addu	a1,s4,at
     930:	02802025 	move	a0,s4
     934:	02003025 	move	a2,s0
     938:	4600320d 	trunc.w.s	$f8,$f6
     93c:	4600910d 	trunc.w.s	$f4,$f18
     940:	440a4000 	mfc1	t2,$f8
     944:	440c2000 	mfc1	t4,$f4
     948:	a62a019c 	sh	t2,412(s1)
     94c:	0c000000 	jal	0 <EnIceHono_SquareDist>
     950:	a62c019e 	sh	t4,414(s1)
     954:	86220152 	lh	v0,338(s1)
     958:	2401002e 	li	at,46
     95c:	1441001e 	bne	v0,at,9d8 <EnIceHono_SpreadFlames+0x228>
     960:	00008025 	move	s0,zero
     964:	3c01447a 	lui	at,0x447a
     968:	4481a000 	mtc1	at,$f20
     96c:	26921c24 	addiu	s2,s4,7204
     970:	3413fffa 	li	s3,0xfffa
     974:	0c000000 	jal	0 <EnIceHono_SquareDist>
     978:	00000000 	nop
     97c:	46140282 	mul.s	$f10,$f0,$f20
     980:	c6260028 	lwc1	$f6,40(s1)
     984:	8e270024 	lw	a3,36(s1)
     988:	24190002 	li	t9,2
     98c:	e7a60010 	swc1	$f6,16(sp)
     990:	c628002c 	lwc1	$f8,44(s1)
     994:	afb90024 	sw	t9,36(sp)
     998:	4600540d 	trunc.w.s	$f16,$f10
     99c:	afa00020 	sw	zero,32(sp)
     9a0:	afa00018 	sw	zero,24(sp)
     9a4:	02402025 	move	a0,s2
     9a8:	440e8000 	mfc1	t6,$f16
     9ac:	02802825 	move	a1,s4
     9b0:	240600f0 	li	a2,240
     9b4:	01d07821 	addu	t7,t6,s0
     9b8:	25f8fe0c 	addiu	t8,t7,-500
     9bc:	afb8001c 	sw	t8,28(sp)
     9c0:	0c000000 	jal	0 <EnIceHono_SquareDist>
     9c4:	e7a80014 	swc1	$f8,20(sp)
     9c8:	26101999 	addiu	s0,s0,6553
     9cc:	1613ffe9 	bne	s0,s3,974 <EnIceHono_SpreadFlames+0x1c4>
     9d0:	00000000 	nop
     9d4:	86220152 	lh	v0,338(s1)
     9d8:	5c400004 	bgtzl	v0,9ec <EnIceHono_SpreadFlames+0x23c>
     9dc:	8fbf004c 	lw	ra,76(sp)
     9e0:	0c000000 	jal	0 <EnIceHono_SquareDist>
     9e4:	02202025 	move	a0,s1
     9e8:	8fbf004c 	lw	ra,76(sp)
     9ec:	d7b40030 	ldc1	$f20,48(sp)
     9f0:	8fb00038 	lw	s0,56(sp)
     9f4:	8fb1003c 	lw	s1,60(sp)
     9f8:	8fb20040 	lw	s2,64(sp)
     9fc:	8fb30044 	lw	s3,68(sp)
     a00:	8fb40048 	lw	s4,72(sp)
     a04:	03e00008 	jr	ra
     a08:	27bd0050 	addiu	sp,sp,80

00000a0c <EnIceHono_SetupActionSmallFlame>:
     a0c:	27bdffe0 	addiu	sp,sp,-32
     a10:	afbf001c 	sw	ra,28(sp)
     a14:	afb00018 	sw	s0,24(sp)
     a18:	8499001c 	lh	t9,28(a0)
     a1c:	3c0e0000 	lui	t6,0x0
     a20:	25ce0000 	addiu	t6,t6,0
     a24:	240f002c 	li	t7,44
     a28:	241800ff 	li	t8,255
     a2c:	24010001 	li	at,1
     a30:	00808025 	move	s0,a0
     a34:	ac8e014c 	sw	t6,332(a0)
     a38:	a48f0152 	sh	t7,338(a0)
     a3c:	17210013 	bne	t9,at,a8c <EnIceHono_SetupActionSmallFlame+0x80>
     a40:	a4980150 	sh	t8,336(a0)
     a44:	0c000000 	jal	0 <EnIceHono_SquareDist>
     a48:	00000000 	nop
     a4c:	3c010000 	lui	at,0x0
     a50:	c42400a8 	lwc1	$f4,168(at)
     a54:	3c010000 	lui	at,0x0
     a58:	c42800ac 	lwc1	$f8,172(at)
     a5c:	46040182 	mul.s	$f6,$f0,$f4
     a60:	46083280 	add.s	$f10,$f6,$f8
     a64:	0c000000 	jal	0 <EnIceHono_SquareDist>
     a68:	e60a0158 	swc1	$f10,344(s0)
     a6c:	3c010000 	lui	at,0x0
     a70:	c43000b0 	lwc1	$f16,176(at)
     a74:	3c013f00 	lui	at,0x3f00
     a78:	44812000 	mtc1	at,$f4
     a7c:	46100482 	mul.s	$f18,$f0,$f16
     a80:	46049180 	add.s	$f6,$f18,$f4
     a84:	10000011 	b	acc <EnIceHono_SetupActionSmallFlame+0xc0>
     a88:	e6060068 	swc1	$f6,104(s0)
     a8c:	0c000000 	jal	0 <EnIceHono_SquareDist>
     a90:	00000000 	nop
     a94:	3c010000 	lui	at,0x0
     a98:	c42800b4 	lwc1	$f8,180(at)
     a9c:	3c010000 	lui	at,0x0
     aa0:	c43000b8 	lwc1	$f16,184(at)
     aa4:	46080282 	mul.s	$f10,$f0,$f8
     aa8:	46105480 	add.s	$f18,$f10,$f16
     aac:	0c000000 	jal	0 <EnIceHono_SquareDist>
     ab0:	e6120158 	swc1	$f18,344(s0)
     ab4:	46000100 	add.s	$f4,$f0,$f0
     ab8:	3c013f00 	lui	at,0x3f00
     abc:	44813000 	mtc1	at,$f6
     ac0:	00000000 	nop
     ac4:	46062200 	add.s	$f8,$f4,$f6
     ac8:	e6080068 	swc1	$f8,104(s0)
     acc:	8fbf001c 	lw	ra,28(sp)
     ad0:	8fb00018 	lw	s0,24(sp)
     ad4:	27bd0020 	addiu	sp,sp,32
     ad8:	03e00008 	jr	ra
     adc:	00000000 	nop

00000ae0 <EnIceHono_SmallFlameMove>:
     ae0:	27bdffd8 	addiu	sp,sp,-40
     ae4:	afbf0024 	sw	ra,36(sp)
     ae8:	afb00020 	sw	s0,32(sp)
     aec:	afa5002c 	sw	a1,44(sp)
     af0:	848e0152 	lh	t6,338(a0)
     af4:	3c0538d1 	lui	a1,0x38d1
     af8:	00808025 	move	s0,a0
     afc:	29c10015 	slti	at,t6,21
     b00:	14200013 	bnez	at,b50 <EnIceHono_SmallFlameMove+0x70>
     b04:	34a5b717 	ori	a1,a1,0xb717
     b08:	3c053bc4 	lui	a1,0x3bc4
     b0c:	3c063927 	lui	a2,0x3927
     b10:	34c6c5ac 	ori	a2,a2,0xc5ac
     b14:	34a59ba6 	ori	a1,a1,0x9ba6
     b18:	0c000000 	jal	0 <EnIceHono_SquareDist>
     b1c:	24840050 	addiu	a0,a0,80
     b20:	3c010000 	lui	at,0x0
     b24:	c42600bc 	lwc1	$f6,188(at)
     b28:	c6040158 	lwc1	$f4,344(s0)
     b2c:	3c063912 	lui	a2,0x3912
     b30:	34c6ccf7 	ori	a2,a2,0xccf7
     b34:	46062202 	mul.s	$f8,$f4,$f6
     b38:	26040054 	addiu	a0,s0,84
     b3c:	44054000 	mfc1	a1,$f8
     b40:	0c000000 	jal	0 <EnIceHono_SquareDist>
     b44:	00000000 	nop
     b48:	1000000c 	b	b7c <EnIceHono_SmallFlameMove+0x9c>
     b4c:	c60a0050 	lwc1	$f10,80(s0)
     b50:	3c06391d 	lui	a2,0x391d
     b54:	34c64952 	ori	a2,a2,0x4952
     b58:	0c000000 	jal	0 <EnIceHono_SquareDist>
     b5c:	26040050 	addiu	a0,s0,80
     b60:	3c0538d1 	lui	a1,0x38d1
     b64:	3c06391d 	lui	a2,0x391d
     b68:	34c64952 	ori	a2,a2,0x4952
     b6c:	34a5b717 	ori	a1,a1,0xb717
     b70:	0c000000 	jal	0 <EnIceHono_SquareDist>
     b74:	26040054 	addiu	a0,s0,84
     b78:	c60a0050 	lwc1	$f10,80(s0)
     b7c:	3c063d75 	lui	a2,0x3d75
     b80:	34c6c28f 	ori	a2,a2,0xc28f
     b84:	26040068 	addiu	a0,s0,104
     b88:	24050000 	li	a1,0
     b8c:	0c000000 	jal	0 <EnIceHono_SquareDist>
     b90:	e60a0058 	swc1	$f10,88(s0)
     b94:	0c000000 	jal	0 <EnIceHono_SquareDist>
     b98:	02002025 	move	a0,s0
     b9c:	3c014120 	lui	at,0x4120
     ba0:	44810000 	mtc1	at,$f0
     ba4:	44808000 	mtc1	zero,$f16
     ba8:	240f0005 	li	t7,5
     bac:	44060000 	mfc1	a2,$f0
     bb0:	44070000 	mfc1	a3,$f0
     bb4:	afaf0014 	sw	t7,20(sp)
     bb8:	8fa4002c 	lw	a0,44(sp)
     bbc:	02002825 	move	a1,s0
     bc0:	0c000000 	jal	0 <EnIceHono_SquareDist>
     bc4:	e7b00010 	swc1	$f16,16(sp)
     bc8:	86020152 	lh	v0,338(s0)
     bcc:	28410019 	slti	at,v0,25
     bd0:	10200010 	beqz	at,c14 <EnIceHono_SmallFlameMove+0x134>
     bd4:	00000000 	nop
     bd8:	86180150 	lh	t8,336(s0)
     bdc:	2719fff6 	addiu	t9,t8,-10
     be0:	a6190150 	sh	t9,336(s0)
     be4:	86020150 	lh	v0,336(s0)
     be8:	04410004 	bgez	v0,bfc <EnIceHono_SmallFlameMove+0x11c>
     bec:	28410100 	slti	at,v0,256
     bf0:	a6000150 	sh	zero,336(s0)
     bf4:	10000007 	b	c14 <EnIceHono_SmallFlameMove+0x134>
     bf8:	86020152 	lh	v0,338(s0)
     bfc:	14200003 	bnez	at,c0c <EnIceHono_SmallFlameMove+0x12c>
     c00:	00401825 	move	v1,v0
     c04:	10000001 	b	c0c <EnIceHono_SmallFlameMove+0x12c>
     c08:	240300ff 	li	v1,255
     c0c:	a6030150 	sh	v1,336(s0)
     c10:	86020152 	lh	v0,338(s0)
     c14:	5c400004 	bgtzl	v0,c28 <EnIceHono_SmallFlameMove+0x148>
     c18:	8fbf0024 	lw	ra,36(sp)
     c1c:	0c000000 	jal	0 <EnIceHono_SquareDist>
     c20:	02002025 	move	a0,s0
     c24:	8fbf0024 	lw	ra,36(sp)
     c28:	8fb00020 	lw	s0,32(sp)
     c2c:	27bd0028 	addiu	sp,sp,40
     c30:	03e00008 	jr	ra
     c34:	00000000 	nop

00000c38 <EnIceHono_Update>:
     c38:	27bdffb8 	addiu	sp,sp,-72
     c3c:	afbf002c 	sw	ra,44(sp)
     c40:	afb00028 	sw	s0,40(sp)
     c44:	afa5004c 	sw	a1,76(sp)
     c48:	84820152 	lh	v0,338(a0)
     c4c:	00808025 	move	s0,a0
     c50:	24051048 	li	a1,4168
     c54:	18400002 	blez	v0,c60 <EnIceHono_Update+0x28>
     c58:	244effff 	addiu	t6,v0,-1
     c5c:	a48e0152 	sh	t6,338(a0)
     c60:	8602001c 	lh	v0,28(s0)
     c64:	54400005 	bnezl	v0,c7c <EnIceHono_Update+0x44>
     c68:	2401ffff 	li	at,-1
     c6c:	0c000000 	jal	0 <EnIceHono_SquareDist>
     c70:	02002025 	move	a0,s0
     c74:	8602001c 	lh	v0,28(s0)
     c78:	2401ffff 	li	at,-1
     c7c:	50410004 	beql	v0,at,c90 <EnIceHono_Update+0x58>
     c80:	86190156 	lh	t9,342(s0)
     c84:	5440005b 	bnezl	v0,df4 <EnIceHono_Update+0x1bc>
     c88:	8e02014c 	lw	v0,332(s0)
     c8c:	86190156 	lh	t9,342(s0)
     c90:	860f0154 	lh	t7,340(s0)
     c94:	27284000 	addiu	t0,t9,16384
     c98:	a6080156 	sh	t0,342(s0)
     c9c:	25f81111 	addiu	t8,t7,4369
     ca0:	a6180154 	sh	t8,340(s0)
     ca4:	0c000000 	jal	0 <EnIceHono_SquareDist>
     ca8:	86040156 	lh	a0,342(s0)
     cac:	e7a00030 	swc1	$f0,48(sp)
     cb0:	0c000000 	jal	0 <EnIceHono_SquareDist>
     cb4:	86040154 	lh	a0,340(s0)
     cb8:	0c000000 	jal	0 <EnIceHono_SquareDist>
     cbc:	e7a00034 	swc1	$f0,52(sp)
     cc0:	3c013e00 	lui	at,0x3e00
     cc4:	44813000 	mtc1	at,$f6
     cc8:	c7a40034 	lwc1	$f4,52(sp)
     ccc:	3c010000 	lui	at,0x0
     cd0:	c43000c0 	lwc1	$f16,192(at)
     cd4:	46062202 	mul.s	$f8,$f4,$f6
     cd8:	c7aa0030 	lwc1	$f10,48(sp)
     cdc:	3c010000 	lui	at,0x0
     ce0:	c42600c4 	lwc1	$f6,196(at)
     ce4:	46105482 	mul.s	$f18,$f10,$f16
     ce8:	3c010000 	lui	at,0x0
     cec:	3c040000 	lui	a0,0x0
     cf0:	46060282 	mul.s	$f10,$f0,$f6
     cf4:	46124100 	add.s	$f4,$f8,$f18
     cf8:	c42800c8 	lwc1	$f8,200(at)
     cfc:	3c010000 	lui	at,0x0
     d00:	c43200cc 	lwc1	$f18,204(at)
     d04:	46045400 	add.s	$f16,$f10,$f4
     d08:	3c010000 	lui	at,0x0
     d0c:	46088080 	add.s	$f2,$f16,$f8
     d10:	4602903c 	c.lt.s	$f18,$f2
     d14:	46001306 	mov.s	$f12,$f2
     d18:	45030007 	bc1tl	d38 <EnIceHono_Update+0x100>
     d1c:	460062a1 	cvt.d.s	$f10,$f12
     d20:	c42600d0 	lwc1	$f6,208(at)
     d24:	4606103c 	c.lt.s	$f2,$f6
     d28:	00000000 	nop
     d2c:	45020009 	bc1fl	d54 <EnIceHono_Update+0x11c>
     d30:	c6040024 	lwc1	$f4,36(s0)
     d34:	460062a1 	cvt.d.s	$f10,$f12
     d38:	2484001c 	addiu	a0,a0,28
     d3c:	44075000 	mfc1	a3,$f10
     d40:	44065800 	mfc1	a2,$f11
     d44:	0c000000 	jal	0 <EnIceHono_SquareDist>
     d48:	e7ac003c 	swc1	$f12,60(sp)
     d4c:	c7ac003c 	lwc1	$f12,60(sp)
     d50:	c6040024 	lwc1	$f4,36(s0)
     d54:	c6080028 	lwc1	$f8,40(s0)
     d58:	3c01431b 	lui	at,0x431b
     d5c:	4600240d 	trunc.w.s	$f16,$f4
     d60:	44812000 	mtc1	at,$f4
     d64:	c606002c 	lwc1	$f6,44(s0)
     d68:	4600448d 	trunc.w.s	$f18,$f8
     d6c:	44058000 	mfc1	a1,$f16
     d70:	460c2402 	mul.s	$f16,$f4,$f12
     d74:	3c014352 	lui	at,0x4352
     d78:	44069000 	mfc1	a2,$f18
     d7c:	44819000 	mtc1	at,$f18
     d80:	3c01437f 	lui	at,0x437f
     d84:	44812000 	mtc1	at,$f4
     d88:	4600328d 	trunc.w.s	$f10,$f6
     d8c:	460c9182 	mul.s	$f6,$f18,$f12
     d90:	00063400 	sll	a2,a2,0x10
     d94:	00063403 	sra	a2,a2,0x10
     d98:	44075000 	mfc1	a3,$f10
     d9c:	24c6000a 	addiu	a2,a2,10
     da0:	00063400 	sll	a2,a2,0x10
     da4:	4600820d 	trunc.w.s	$f8,$f16
     da8:	460c2402 	mul.s	$f16,$f4,$f12
     dac:	24080578 	li	t0,1400
     db0:	00052c00 	sll	a1,a1,0x10
     db4:	440d4000 	mfc1	t5,$f8
     db8:	00073c00 	sll	a3,a3,0x10
     dbc:	00073c03 	sra	a3,a3,0x10
     dc0:	4600328d 	trunc.w.s	$f10,$f6
     dc4:	00052c03 	sra	a1,a1,0x10
     dc8:	afa8001c 	sw	t0,28(sp)
     dcc:	4600820d 	trunc.w.s	$f8,$f16
     dd0:	440f5000 	mfc1	t7,$f10
     dd4:	00063403 	sra	a2,a2,0x10
     dd8:	260401ac 	addiu	a0,s0,428
     ddc:	44194000 	mfc1	t9,$f8
     de0:	afad0010 	sw	t5,16(sp)
     de4:	afaf0014 	sw	t7,20(sp)
     de8:	0c000000 	jal	0 <EnIceHono_SquareDist>
     dec:	afb90018 	sw	t9,24(sp)
     df0:	8e02014c 	lw	v0,332(s0)
     df4:	02002025 	move	a0,s0
     df8:	50400004 	beqzl	v0,e0c <EnIceHono_Update+0x1d4>
     dfc:	8fbf002c 	lw	ra,44(sp)
     e00:	0040f809 	jalr	v0
     e04:	8fa5004c 	lw	a1,76(sp)
     e08:	8fbf002c 	lw	ra,44(sp)
     e0c:	8fb00028 	lw	s0,40(sp)
     e10:	27bd0048 	addiu	sp,sp,72
     e14:	03e00008 	jr	ra
     e18:	00000000 	nop

00000e1c <EnIceHono_Draw>:
     e1c:	27bdff88 	addiu	sp,sp,-120
     e20:	afb10038 	sw	s1,56(sp)
     e24:	00a08825 	move	s1,a1
     e28:	afbf003c 	sw	ra,60(sp)
     e2c:	afb00034 	sw	s0,52(sp)
     e30:	afa40078 	sw	a0,120(sp)
     e34:	8ca50000 	lw	a1,0(a1)
     e38:	3c060000 	lui	a2,0x0
     e3c:	24c60038 	addiu	a2,a2,56
     e40:	27a4005c 	addiu	a0,sp,92
     e44:	240702b7 	li	a3,695
     e48:	0c000000 	jal	0 <EnIceHono_SquareDist>
     e4c:	00a08025 	move	s0,a1
     e50:	0c000000 	jal	0 <EnIceHono_SquareDist>
     e54:	8e240000 	lw	a0,0(s1)
     e58:	8e0202d0 	lw	v0,720(s0)
     e5c:	3c0fdb06 	lui	t7,0xdb06
     e60:	35ef0020 	ori	t7,t7,0x20
     e64:	244e0008 	addiu	t6,v0,8
     e68:	ae0e02d0 	sw	t6,720(s0)
     e6c:	ac4f0000 	sw	t7,0(v0)
     e70:	8e240000 	lw	a0,0(s1)
     e74:	24180020 	li	t8,32
     e78:	24190040 	li	t9,64
     e7c:	24080001 	li	t0,1
     e80:	afa80018 	sw	t0,24(sp)
     e84:	afb90014 	sw	t9,20(sp)
     e88:	afb80010 	sw	t8,16(sp)
     e8c:	afa0001c 	sw	zero,28(sp)
     e90:	8e29009c 	lw	t1,156(s1)
     e94:	240c0020 	li	t4,32
     e98:	240d0080 	li	t5,128
     e9c:	00090823 	negu	at,t1
     ea0:	00015080 	sll	t2,at,0x2
     ea4:	01415021 	addu	t2,t2,at
     ea8:	000a5080 	sll	t2,t2,0x2
     eac:	314b01ff 	andi	t3,t2,0x1ff
     eb0:	afab0020 	sw	t3,32(sp)
     eb4:	afad0028 	sw	t5,40(sp)
     eb8:	afac0024 	sw	t4,36(sp)
     ebc:	00002825 	move	a1,zero
     ec0:	00003025 	move	a2,zero
     ec4:	00003825 	move	a3,zero
     ec8:	0c000000 	jal	0 <EnIceHono_SquareDist>
     ecc:	afa20058 	sw	v0,88(sp)
     ed0:	8fa30058 	lw	v1,88(sp)
     ed4:	3c0ffa00 	lui	t7,0xfa00
     ed8:	35ef8080 	ori	t7,t7,0x8080
     edc:	ac620004 	sw	v0,4(v1)
     ee0:	8e0202d0 	lw	v0,720(s0)
     ee4:	3c01aaff 	lui	at,0xaaff
     ee8:	3421ff00 	ori	at,at,0xff00
     eec:	244e0008 	addiu	t6,v0,8
     ef0:	ae0e02d0 	sw	t6,720(s0)
     ef4:	ac4f0000 	sw	t7,0(v0)
     ef8:	8fb80078 	lw	t8,120(sp)
     efc:	3c0c0096 	lui	t4,0x96
     f00:	358cff00 	ori	t4,t4,0xff00
     f04:	87190150 	lh	t9,336(t8)
     f08:	3c0bfb00 	lui	t3,0xfb00
     f0c:	332800ff 	andi	t0,t9,0xff
     f10:	01014825 	or	t1,t0,at
     f14:	ac490004 	sw	t1,4(v0)
     f18:	8e0202d0 	lw	v0,720(s0)
     f1c:	244a0008 	addiu	t2,v0,8
     f20:	ae0a02d0 	sw	t2,720(s0)
     f24:	ac4c0004 	sw	t4,4(v0)
     f28:	ac4b0000 	sw	t3,0(v0)
     f2c:	862d07a0 	lh	t5,1952(s1)
     f30:	000d7080 	sll	t6,t5,0x2
     f34:	022e7821 	addu	t7,s1,t6
     f38:	0c000000 	jal	0 <EnIceHono_SquareDist>
     f3c:	8de40790 	lw	a0,1936(t7)
     f40:	8fb80078 	lw	t8,120(sp)
     f44:	34018000 	li	at,0x8000
     f48:	24050001 	li	a1,1
     f4c:	871900b6 	lh	t9,182(t8)
     f50:	00594023 	subu	t0,v0,t9
     f54:	01014821 	addu	t1,t0,at
     f58:	00095400 	sll	t2,t1,0x10
     f5c:	000a5c03 	sra	t3,t2,0x10
     f60:	448b2000 	mtc1	t3,$f4
     f64:	3c010000 	lui	at,0x0
     f68:	c42800d4 	lwc1	$f8,212(at)
     f6c:	468021a0 	cvt.s.w	$f6,$f4
     f70:	46083302 	mul.s	$f12,$f6,$f8
     f74:	0c000000 	jal	0 <EnIceHono_SquareDist>
     f78:	00000000 	nop
     f7c:	8e0202d0 	lw	v0,720(s0)
     f80:	3c0dda38 	lui	t5,0xda38
     f84:	35ad0003 	ori	t5,t5,0x3
     f88:	244c0008 	addiu	t4,v0,8
     f8c:	ae0c02d0 	sw	t4,720(s0)
     f90:	ac4d0000 	sw	t5,0(v0)
     f94:	8e240000 	lw	a0,0(s1)
     f98:	3c050000 	lui	a1,0x0
     f9c:	24a5004c 	addiu	a1,a1,76
     fa0:	240602ce 	li	a2,718
     fa4:	0c000000 	jal	0 <EnIceHono_SquareDist>
     fa8:	afa2004c 	sw	v0,76(sp)
     fac:	8fa3004c 	lw	v1,76(sp)
     fb0:	3c180000 	lui	t8,0x0
     fb4:	27180000 	addiu	t8,t8,0
     fb8:	ac620004 	sw	v0,4(v1)
     fbc:	8e0202d0 	lw	v0,720(s0)
     fc0:	3c0fde00 	lui	t7,0xde00
     fc4:	3c060000 	lui	a2,0x0
     fc8:	244e0008 	addiu	t6,v0,8
     fcc:	ae0e02d0 	sw	t6,720(s0)
     fd0:	ac580004 	sw	t8,4(v0)
     fd4:	ac4f0000 	sw	t7,0(v0)
     fd8:	8e250000 	lw	a1,0(s1)
     fdc:	24c60060 	addiu	a2,a2,96
     fe0:	27a4005c 	addiu	a0,sp,92
     fe4:	0c000000 	jal	0 <EnIceHono_SquareDist>
     fe8:	240702d2 	li	a3,722
     fec:	8fbf003c 	lw	ra,60(sp)
     ff0:	8fb00034 	lw	s0,52(sp)
     ff4:	8fb10038 	lw	s1,56(sp)
     ff8:	03e00008 	jr	ra
     ffc:	27bd0078 	addiu	sp,sp,120
