
build/src/overlays/actors/ovl_En_Ossan/z_en_ossan.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80AC2CA0>:
       0:	03e00008 	jr	ra
       4:	ac850190 	sw	a1,400(a0)

00000008 <func_80AC2CA8>:
       8:	afa40000 	sw	a0,0(sp)
       c:	00042400 	sll	a0,a0,0x10
      10:	03e00008 	jr	ra
      14:	00041403 	sra	v0,a0,0x10

00000018 <func_80AC2CB8>:
      18:	3c0e0000 	lui	t6,0x0
      1c:	95ce0ef6 	lhu	t6,3830(t6)
      20:	afa40000 	sw	a0,0(sp)
      24:	00042400 	sll	a0,a0,0x10
      28:	31cf0200 	andi	t7,t6,0x200
      2c:	11e00003 	beqz	t7,3c <func_80AC2CB8+0x24>
      30:	00042403 	sra	a0,a0,0x10
      34:	03e00008 	jr	ra
      38:	00801025 	move	v0,a0
      3c:	2402ffff 	li	v0,-1
      40:	03e00008 	jr	ra
      44:	00000000 	nop

00000048 <func_80AC2CE8>:
      48:	3c0e0000 	lui	t6,0x0
      4c:	95ce0ef6 	lhu	t6,3830(t6)
      50:	afa40000 	sw	a0,0(sp)
      54:	00042400 	sll	a0,a0,0x10
      58:	31cf0100 	andi	t7,t6,0x100
      5c:	11e00003 	beqz	t7,6c <func_80AC2CE8+0x24>
      60:	00042403 	sra	a0,a0,0x10
      64:	03e00008 	jr	ra
      68:	00801025 	move	v0,a0
      6c:	2402ffff 	li	v0,-1
      70:	03e00008 	jr	ra
      74:	00000000 	nop

00000078 <func_80AC2D18>:
      78:	3c0e0000 	lui	t6,0x0
      7c:	95ce0ef6 	lhu	t6,3830(t6)
      80:	afa40000 	sw	a0,0(sp)
      84:	00042400 	sll	a0,a0,0x10
      88:	31cf0400 	andi	t7,t6,0x400
      8c:	11e00003 	beqz	t7,9c <func_80AC2D18+0x24>
      90:	00042403 	sra	a0,a0,0x10
      94:	03e00008 	jr	ra
      98:	00801025 	move	v0,a0
      9c:	2402ffff 	li	v0,-1
      a0:	03e00008 	jr	ra
      a4:	00000000 	nop

000000a8 <func_80AC2D48>:
      a8:	3c0e0000 	lui	t6,0x0
      ac:	95ce0ef6 	lhu	t6,3830(t6)
      b0:	afa40000 	sw	a0,0(sp)
      b4:	00042400 	sll	a0,a0,0x10
      b8:	31cf8000 	andi	t7,t6,0x8000
      bc:	11e00003 	beqz	t7,cc <func_80AC2D48+0x24>
      c0:	00042403 	sra	a0,a0,0x10
      c4:	03e00008 	jr	ra
      c8:	00801025 	move	v0,a0
      cc:	2402ffff 	li	v0,-1
      d0:	03e00008 	jr	ra
      d4:	00000000 	nop

000000d8 <func_80AC2D78>:
      d8:	3c0e0000 	lui	t6,0x0
      dc:	95ce0ef6 	lhu	t6,3830(t6)
      e0:	afa40000 	sw	a0,0(sp)
      e4:	00042400 	sll	a0,a0,0x10
      e8:	31cf8000 	andi	t7,t6,0x8000
      ec:	11e00003 	beqz	t7,fc <func_80AC2D78+0x24>
      f0:	00042403 	sra	a0,a0,0x10
      f4:	03e00008 	jr	ra
      f8:	00801025 	move	v0,a0
      fc:	2402ffff 	li	v0,-1
     100:	03e00008 	jr	ra
     104:	00000000 	nop

00000108 <func_80AC2DA8>:
     108:	3c0e0000 	lui	t6,0x0
     10c:	95ce0ef6 	lhu	t6,3830(t6)
     110:	afa40000 	sw	a0,0(sp)
     114:	00042400 	sll	a0,a0,0x10
     118:	31cf8000 	andi	t7,t6,0x8000
     11c:	11e00003 	beqz	t7,12c <func_80AC2DA8+0x24>
     120:	00042403 	sra	a0,a0,0x10
     124:	03e00008 	jr	ra
     128:	00801025 	move	v0,a0
     12c:	2402ffff 	li	v0,-1
     130:	03e00008 	jr	ra
     134:	00000000 	nop

00000138 <func_80AC2DD8>:
     138:	27bdffb0 	addiu	sp,sp,-80
     13c:	afb70048 	sw	s7,72(sp)
     140:	afb60044 	sw	s6,68(sp)
     144:	afb50040 	sw	s5,64(sp)
     148:	afb4003c 	sw	s4,60(sp)
     14c:	afb30038 	sw	s3,56(sp)
     150:	afb20034 	sw	s2,52(sp)
     154:	afb10030 	sw	s1,48(sp)
     158:	afb0002c 	sw	s0,44(sp)
     15c:	3c160000 	lui	s6,0x0
     160:	3c170000 	lui	s7,0x0
     164:	00c08025 	move	s0,a2
     168:	00a09825 	move	s3,a1
     16c:	0080a025 	move	s4,a0
     170:	afbf004c 	sw	ra,76(sp)
     174:	26f70000 	addiu	s7,s7,0
     178:	26d60000 	addiu	s6,s6,0
     17c:	00808825 	move	s1,a0
     180:	00009025 	move	s2,zero
     184:	24150008 	li	s5,8
     188:	86040000 	lh	a0,0(s0)
     18c:	04810003 	bgez	a0,19c <func_80AC2DD8+0x64>
     190:	00047080 	sll	t6,a0,0x2
     194:	1000002e 	b	250 <func_80AC2DD8+0x118>
     198:	ae200200 	sw	zero,512(s1)
     19c:	02ce7821 	addu	t7,s6,t6
     1a0:	8df90000 	lw	t9,0(t7)
     1a4:	0320f809 	jalr	t9
     1a8:	00000000 	nop
     1ac:	00021c00 	sll	v1,v0,0x10
     1b0:	04410003 	bgez	v0,1c0 <func_80AC2DD8+0x88>
     1b4:	00031c03 	sra	v1,v1,0x10
     1b8:	10000025 	b	250 <func_80AC2DD8+0x118>
     1bc:	ae200200 	sw	zero,512(s1)
     1c0:	86180002 	lh	t8,2(s0)
     1c4:	86080004 	lh	t0,4(s0)
     1c8:	8e820220 	lw	v0,544(s4)
     1cc:	44983000 	mtc1	t8,$f6
     1d0:	44889000 	mtc1	t0,$f18
     1d4:	c4440024 	lwc1	$f4,36(v0)
     1d8:	46803220 	cvt.s.w	$f8,$f6
     1dc:	c4500028 	lwc1	$f16,40(v0)
     1e0:	00125840 	sll	t3,s2,0x1
     1e4:	02eb6021 	addu	t4,s7,t3
     1e8:	858d0000 	lh	t5,0(t4)
     1ec:	468091a0 	cvt.s.w	$f6,$f18
     1f0:	26641c24 	addiu	a0,s3,7204
     1f4:	02602825 	move	a1,s3
     1f8:	24060004 	li	a2,4
     1fc:	46082280 	add.s	$f10,$f4,$f8
     200:	46068100 	add.s	$f4,$f16,$f6
     204:	44075000 	mfc1	a3,$f10
     208:	e7a40010 	swc1	$f4,16(sp)
     20c:	86090006 	lh	t1,6(s0)
     210:	c448002c 	lwc1	$f8,44(v0)
     214:	44895000 	mtc1	t1,$f10
     218:	00000000 	nop
     21c:	468054a0 	cvt.s.w	$f18,$f10
     220:	46124400 	add.s	$f16,$f8,$f18
     224:	e7b00014 	swc1	$f16,20(sp)
     228:	844a00b4 	lh	t2,180(v0)
     22c:	afaa0018 	sw	t2,24(sp)
     230:	844e00b6 	lh	t6,182(v0)
     234:	01ae7821 	addu	t7,t5,t6
     238:	afaf001c 	sw	t7,28(sp)
     23c:	845900b8 	lh	t9,184(v0)
     240:	afa30024 	sw	v1,36(sp)
     244:	0c000000 	jal	0 <func_80AC2CA0>
     248:	afb90020 	sw	t9,32(sp)
     24c:	ae220200 	sw	v0,512(s1)
     250:	26520001 	addiu	s2,s2,1
     254:	26310004 	addiu	s1,s1,4
     258:	1655ffcb 	bne	s2,s5,188 <func_80AC2DD8+0x50>
     25c:	26100008 	addiu	s0,s0,8
     260:	8fbf004c 	lw	ra,76(sp)
     264:	8fb0002c 	lw	s0,44(sp)
     268:	8fb10030 	lw	s1,48(sp)
     26c:	8fb20034 	lw	s2,52(sp)
     270:	8fb30038 	lw	s3,56(sp)
     274:	8fb4003c 	lw	s4,60(sp)
     278:	8fb50040 	lw	s5,64(sp)
     27c:	8fb60044 	lw	s6,68(sp)
     280:	8fb70048 	lw	s7,72(sp)
     284:	03e00008 	jr	ra
     288:	27bd0050 	addiu	sp,sp,80

0000028c <func_80AC2F2C>:
     28c:	27bdffb0 	addiu	sp,sp,-80
     290:	afbf004c 	sw	ra,76(sp)
     294:	afb70048 	sw	s7,72(sp)
     298:	afb60044 	sw	s6,68(sp)
     29c:	afb50040 	sw	s5,64(sp)
     2a0:	afb4003c 	sw	s4,60(sp)
     2a4:	afb30038 	sw	s3,56(sp)
     2a8:	afb20034 	sw	s2,52(sp)
     2ac:	afb10030 	sw	s1,48(sp)
     2b0:	afb0002c 	sw	s0,44(sp)
     2b4:	8482001c 	lh	v0,28(a0)
     2b8:	2401000a 	li	at,10
     2bc:	00809825 	move	s3,a0
     2c0:	14410042 	bne	v0,at,3cc <func_80AC2F2C+0x140>
     2c4:	00a0a025 	move	s4,a1
     2c8:	3c0f0000 	lui	t7,0x0
     2cc:	25ef0000 	addiu	t7,t7,0
     2d0:	00027180 	sll	t6,v0,0x6
     2d4:	3c160000 	lui	s6,0x0
     2d8:	3c150000 	lui	s5,0x0
     2dc:	01cf8021 	addu	s0,t6,t7
     2e0:	26b50000 	addiu	s5,s5,0
     2e4:	26d60000 	addiu	s6,s6,0
     2e8:	00008825 	move	s1,zero
     2ec:	24170008 	li	s7,8
     2f0:	86040000 	lh	a0,0(s0)
     2f4:	0011c080 	sll	t8,s1,0x2
     2f8:	02789021 	addu	s2,s3,t8
     2fc:	04820031 	bltzl	a0,3c4 <func_80AC2F2C+0x138>
     300:	26310001 	addiu	s1,s1,1
     304:	8e590200 	lw	t9,512(s2)
     308:	00044080 	sll	t0,a0,0x2
     30c:	02a84821 	addu	t1,s5,t0
     310:	5720002c 	bnezl	t9,3c4 <func_80AC2F2C+0x138>
     314:	26310001 	addiu	s1,s1,1
     318:	8d390000 	lw	t9,0(t1)
     31c:	0320f809 	jalr	t9
     320:	00000000 	nop
     324:	00021c00 	sll	v1,v0,0x10
     328:	04400025 	bltz	v0,3c0 <func_80AC2F2C+0x134>
     32c:	00031c03 	sra	v1,v1,0x10
     330:	860a0002 	lh	t2,2(s0)
     334:	860b0004 	lh	t3,4(s0)
     338:	8e620220 	lw	v0,544(s3)
     33c:	448a3000 	mtc1	t2,$f6
     340:	448b9000 	mtc1	t3,$f18
     344:	c4440024 	lwc1	$f4,36(v0)
     348:	46803220 	cvt.s.w	$f8,$f6
     34c:	c4500028 	lwc1	$f16,40(v0)
     350:	00117040 	sll	t6,s1,0x1
     354:	02ce7821 	addu	t7,s6,t6
     358:	85f80000 	lh	t8,0(t7)
     35c:	468091a0 	cvt.s.w	$f6,$f18
     360:	26841c24 	addiu	a0,s4,7204
     364:	02802825 	move	a1,s4
     368:	24060004 	li	a2,4
     36c:	46082280 	add.s	$f10,$f4,$f8
     370:	46068100 	add.s	$f4,$f16,$f6
     374:	44075000 	mfc1	a3,$f10
     378:	e7a40010 	swc1	$f4,16(sp)
     37c:	860c0006 	lh	t4,6(s0)
     380:	c448002c 	lwc1	$f8,44(v0)
     384:	448c5000 	mtc1	t4,$f10
     388:	00000000 	nop
     38c:	468054a0 	cvt.s.w	$f18,$f10
     390:	46124400 	add.s	$f16,$f8,$f18
     394:	e7b00014 	swc1	$f16,20(sp)
     398:	844d00b4 	lh	t5,180(v0)
     39c:	afad0018 	sw	t5,24(sp)
     3a0:	844800b6 	lh	t0,182(v0)
     3a4:	03084821 	addu	t1,t8,t0
     3a8:	afa9001c 	sw	t1,28(sp)
     3ac:	845900b8 	lh	t9,184(v0)
     3b0:	afa30024 	sw	v1,36(sp)
     3b4:	0c000000 	jal	0 <func_80AC2CA0>
     3b8:	afb90020 	sw	t9,32(sp)
     3bc:	ae420200 	sw	v0,512(s2)
     3c0:	26310001 	addiu	s1,s1,1
     3c4:	1637ffca 	bne	s1,s7,2f0 <func_80AC2F2C+0x64>
     3c8:	26100008 	addiu	s0,s0,8
     3cc:	8fbf004c 	lw	ra,76(sp)
     3d0:	8fb0002c 	lw	s0,44(sp)
     3d4:	8fb10030 	lw	s1,48(sp)
     3d8:	8fb20034 	lw	s2,52(sp)
     3dc:	8fb30038 	lw	s3,56(sp)
     3e0:	8fb4003c 	lw	s4,60(sp)
     3e4:	8fb50040 	lw	s5,64(sp)
     3e8:	8fb60044 	lw	s6,68(sp)
     3ec:	8fb70048 	lw	s7,72(sp)
     3f0:	03e00008 	jr	ra
     3f4:	27bd0050 	addiu	sp,sp,80

000003f8 <func_80AC3098>:
     3f8:	27bdffe8 	addiu	sp,sp,-24
     3fc:	afbf0014 	sw	ra,20(sp)
     400:	0c000000 	jal	0 <func_80AC2CA0>
     404:	2405009e 	li	a1,158
     408:	8fbf0014 	lw	ra,20(sp)
     40c:	27bd0018 	addiu	sp,sp,24
     410:	03e00008 	jr	ra
     414:	00000000 	nop

00000418 <func_80AC30B8>:
     418:	27bdffe8 	addiu	sp,sp,-24
     41c:	3c0e0001 	lui	t6,0x1
     420:	afbf0014 	sw	ra,20(sp)
     424:	01c47021 	addu	t6,t6,a0
     428:	91ce1dea 	lbu	t6,7658(t6)
     42c:	15c00005 	bnez	t6,444 <func_80AC30B8+0x2c>
     430:	00000000 	nop
     434:	0c000000 	jal	0 <func_80AC2CA0>
     438:	24055046 	li	a1,20550
     43c:	10000004 	b	450 <func_80AC30B8+0x38>
     440:	8fbf0014 	lw	ra,20(sp)
     444:	0c000000 	jal	0 <func_80AC2CA0>
     448:	2405504e 	li	a1,20558
     44c:	8fbf0014 	lw	ra,20(sp)
     450:	27bd0018 	addiu	sp,sp,24
     454:	03e00008 	jr	ra
     458:	00000000 	nop

0000045c <func_80AC30FC>:
     45c:	27bdffe8 	addiu	sp,sp,-24
     460:	afbf0014 	sw	ra,20(sp)
     464:	0c000000 	jal	0 <func_80AC2CA0>
     468:	2405504e 	li	a1,20558
     46c:	8fbf0014 	lw	ra,20(sp)
     470:	27bd0018 	addiu	sp,sp,24
     474:	03e00008 	jr	ra
     478:	00000000 	nop

0000047c <func_80AC311C>:
     47c:	27bdffe8 	addiu	sp,sp,-24
     480:	afbf0014 	sw	ra,20(sp)
     484:	0c000000 	jal	0 <func_80AC2CA0>
     488:	240510ba 	li	a1,4282
     48c:	8fbf0014 	lw	ra,20(sp)
     490:	27bd0018 	addiu	sp,sp,24
     494:	03e00008 	jr	ra
     498:	00000000 	nop

0000049c <func_80AC313C>:
     49c:	27bdffe8 	addiu	sp,sp,-24
     4a0:	3c0e0001 	lui	t6,0x1
     4a4:	afbf0014 	sw	ra,20(sp)
     4a8:	01c47021 	addu	t6,t6,a0
     4ac:	91ce1dea 	lbu	t6,7658(t6)
     4b0:	15c00005 	bnez	t6,4c8 <func_80AC313C+0x2c>
     4b4:	00000000 	nop
     4b8:	0c000000 	jal	0 <func_80AC2CA0>
     4bc:	2405009d 	li	a1,157
     4c0:	10000004 	b	4d4 <func_80AC313C+0x38>
     4c4:	8fbf0014 	lw	ra,20(sp)
     4c8:	0c000000 	jal	0 <func_80AC2CA0>
     4cc:	2405009c 	li	a1,156
     4d0:	8fbf0014 	lw	ra,20(sp)
     4d4:	27bd0018 	addiu	sp,sp,24
     4d8:	03e00008 	jr	ra
     4dc:	00000000 	nop

000004e0 <func_80AC3180>:
     4e0:	27bdffe8 	addiu	sp,sp,-24
     4e4:	afbf0014 	sw	ra,20(sp)
     4e8:	0c000000 	jal	0 <func_80AC2CA0>
     4ec:	24057076 	li	a1,28790
     4f0:	8fbf0014 	lw	ra,20(sp)
     4f4:	27bd0018 	addiu	sp,sp,24
     4f8:	03e00008 	jr	ra
     4fc:	00000000 	nop

00000500 <func_80AC31A0>:
     500:	3c0e0000 	lui	t6,0x0
     504:	8dce0004 	lw	t6,4(t6)
     508:	27bdffe8 	addiu	sp,sp,-24
     50c:	afbf0014 	sw	ra,20(sp)
     510:	11c00003 	beqz	t6,520 <func_80AC31A0+0x20>
     514:	24010005 	li	at,5
     518:	10000002 	b	524 <func_80AC31A0+0x24>
     51c:	24020005 	li	v0,5
     520:	24020011 	li	v0,17
     524:	14410005 	bne	v0,at,53c <func_80AC31A0+0x3c>
     528:	00000000 	nop
     52c:	0c000000 	jal	0 <func_80AC2CA0>
     530:	2405403a 	li	a1,16442
     534:	10000004 	b	548 <func_80AC31A0+0x48>
     538:	8fbf0014 	lw	ra,20(sp)
     53c:	0c000000 	jal	0 <func_80AC2CA0>
     540:	2405403b 	li	a1,16443
     544:	8fbf0014 	lw	ra,20(sp)
     548:	27bd0018 	addiu	sp,sp,24
     54c:	03e00008 	jr	ra
     550:	00000000 	nop

00000554 <func_80AC31F4>:
     554:	3c030000 	lui	v1,0x0
     558:	24630000 	addiu	v1,v1,0
     55c:	8c6e0004 	lw	t6,4(v1)
     560:	27bdffe8 	addiu	sp,sp,-24
     564:	afbf0014 	sw	ra,20(sp)
     568:	11c00003 	beqz	t6,578 <func_80AC31F4+0x24>
     56c:	24010005 	li	at,5
     570:	10000002 	b	57c <func_80AC31F4+0x28>
     574:	24020005 	li	v0,5
     578:	24020011 	li	v0,17
     57c:	1441001a 	bne	v0,at,5e8 <func_80AC31F4+0x94>
     580:	3c0c0000 	lui	t4,0x0
     584:	946f0ed8 	lhu	t7,3800(v1)
     588:	3c080000 	lui	t0,0x0
     58c:	3c0a0000 	lui	t2,0x0
     590:	31f80020 	andi	t8,t7,0x20
     594:	53000006 	beqzl	t8,5b0 <func_80AC31F4+0x5c>
     598:	8c7900a0 	lw	t9,160(v1)
     59c:	0c000000 	jal	0 <func_80AC2CA0>
     5a0:	24053028 	li	a1,12328
     5a4:	1000001c 	b	618 <func_80AC31F4+0xc4>
     5a8:	8fbf0014 	lw	ra,20(sp)
     5ac:	8c7900a0 	lw	t9,160(v1)
     5b0:	8d080008 	lw	t0,8(t0)
     5b4:	914a0002 	lbu	t2,2(t2)
     5b8:	03284824 	and	t1,t9,t0
     5bc:	01495807 	srav	t3,t1,t2
     5c0:	11600005 	beqz	t3,5d8 <func_80AC31F4+0x84>
     5c4:	00000000 	nop
     5c8:	0c000000 	jal	0 <func_80AC2CA0>
     5cc:	2405302d 	li	a1,12333
     5d0:	10000011 	b	618 <func_80AC31F4+0xc4>
     5d4:	8fbf0014 	lw	ra,20(sp)
     5d8:	0c000000 	jal	0 <func_80AC2CA0>
     5dc:	2405300f 	li	a1,12303
     5e0:	1000000d 	b	618 <func_80AC31F4+0xc4>
     5e4:	8fbf0014 	lw	ra,20(sp)
     5e8:	8d8c0004 	lw	t4,4(t4)
     5ec:	8c6d00a4 	lw	t5,164(v1)
     5f0:	018d7024 	and	t6,t4,t5
     5f4:	15c00005 	bnez	t6,60c <func_80AC31F4+0xb8>
     5f8:	00000000 	nop
     5fc:	0c000000 	jal	0 <func_80AC2CA0>
     600:	24053057 	li	a1,12375
     604:	10000004 	b	618 <func_80AC31F4+0xc4>
     608:	8fbf0014 	lw	ra,20(sp)
     60c:	0c000000 	jal	0 <func_80AC2CA0>
     610:	2405305b 	li	a1,12379
     614:	8fbf0014 	lw	ra,20(sp)
     618:	27bd0018 	addiu	sp,sp,24
     61c:	03e00008 	jr	ra
     620:	00000000 	nop

00000624 <func_80AC32C4>:
     624:	3c020000 	lui	v0,0x0
     628:	94420ef6 	lhu	v0,3830(v0)
     62c:	27bdffe8 	addiu	sp,sp,-24
     630:	afbf0014 	sw	ra,20(sp)
     634:	304e0100 	andi	t6,v0,0x100
     638:	11c0000b 	beqz	t6,668 <func_80AC32C4+0x44>
     63c:	304f0200 	andi	t7,v0,0x200
     640:	11e00009 	beqz	t7,668 <func_80AC32C4+0x44>
     644:	30580400 	andi	t8,v0,0x400
     648:	13000007 	beqz	t8,668 <func_80AC32C4+0x44>
     64c:	30590800 	andi	t9,v0,0x800
     650:	53200006 	beqzl	t9,66c <func_80AC32C4+0x48>
     654:	3c020001 	lui	v0,0x1
     658:	0c000000 	jal	0 <func_80AC2CA0>
     65c:	240570ae 	li	a1,28846
     660:	10000010 	b	6a4 <func_80AC32C4+0x80>
     664:	8fbf0014 	lw	ra,20(sp)
     668:	3c020001 	lui	v0,0x1
     66c:	00441021 	addu	v0,v0,a0
     670:	904204bd 	lbu	v0,1213(v0)
     674:	24010001 	li	at,1
     678:	10400007 	beqz	v0,698 <func_80AC32C4+0x74>
     67c:	00000000 	nop
     680:	54410008 	bnel	v0,at,6a4 <func_80AC32C4+0x80>
     684:	8fbf0014 	lw	ra,20(sp)
     688:	0c000000 	jal	0 <func_80AC2CA0>
     68c:	240570a4 	li	a1,28836
     690:	10000004 	b	6a4 <func_80AC32C4+0x80>
     694:	8fbf0014 	lw	ra,20(sp)
     698:	0c000000 	jal	0 <func_80AC2CA0>
     69c:	240570a3 	li	a1,28835
     6a0:	8fbf0014 	lw	ra,20(sp)
     6a4:	27bd0018 	addiu	sp,sp,24
     6a8:	03e00008 	jr	ra
     6ac:	00000000 	nop

000006b0 <func_80AC3350>:
     6b0:	27bdffd8 	addiu	sp,sp,-40
     6b4:	44866000 	mtc1	a2,$f12
     6b8:	afbf0024 	sw	ra,36(sp)
     6bc:	afa40028 	sw	a0,40(sp)
     6c0:	afa5002c 	sw	a1,44(sp)
     6c4:	e48c02d4 	swc1	$f12,724(a0)
     6c8:	8faf002c 	lw	t7,44(sp)
     6cc:	4600610d 	trunc.w.s	$f4,$f12
     6d0:	2405000c 	li	a1,12
     6d4:	85f807a0 	lh	t8,1952(t7)
     6d8:	00003025 	move	a2,zero
     6dc:	440a2000 	mfc1	t2,$f4
     6e0:	0018c880 	sll	t9,t8,0x2
     6e4:	01f94021 	addu	t0,t7,t9
     6e8:	8d040790 	lw	a0,1936(t0)
     6ec:	afa00018 	sw	zero,24(sp)
     6f0:	afa00014 	sw	zero,20(sp)
     6f4:	00003825 	move	a3,zero
     6f8:	0c000000 	jal	0 <func_80AC2CA0>
     6fc:	afaa0010 	sw	t2,16(sp)
     700:	8fbf0024 	lw	ra,36(sp)
     704:	27bd0028 	addiu	sp,sp,40
     708:	03e00008 	jr	ra
     70c:	00000000 	nop

00000710 <func_80AC33B0>:
     710:	27bdffe0 	addiu	sp,sp,-32
     714:	afbf0014 	sw	ra,20(sp)
     718:	afa50024 	sw	a1,36(sp)
     71c:	84ce0002 	lh	t6,2(a2)
     720:	24010192 	li	at,402
     724:	00803825 	move	a3,a0
     728:	11c10010 	beq	t6,at,76c <func_80AC33B0+0x5c>
     72c:	afae001c 	sw	t6,28(sp)
     730:	3c010001 	lui	at,0x1
     734:	342117a4 	ori	at,at,0x17a4
     738:	00a12021 	addu	a0,a1,at
     73c:	87a5001e 	lh	a1,30(sp)
     740:	afa60028 	sw	a2,40(sp)
     744:	0c000000 	jal	0 <func_80AC2CA0>
     748:	afa70020 	sw	a3,32(sp)
     74c:	8fa70020 	lw	a3,32(sp)
     750:	8fa60028 	lw	a2,40(sp)
     754:	a0e201e9 	sb	v0,489(a3)
     758:	80f801e9 	lb	t8,489(a3)
     75c:	07030006 	bgezl	t8,778 <func_80AC33B0+0x68>
     760:	84c50004 	lh	a1,4(a2)
     764:	10000016 	b	7c0 <func_80AC33B0+0xb0>
     768:	00001025 	move	v0,zero
     76c:	2419ffff 	li	t9,-1
     770:	a0f901e9 	sb	t9,489(a3)
     774:	84c50004 	lh	a1,4(a2)
     778:	24010192 	li	at,402
     77c:	8fa40024 	lw	a0,36(sp)
     780:	10a1000d 	beq	a1,at,7b8 <func_80AC33B0+0xa8>
     784:	2409ffff 	li	t1,-1
     788:	3c010001 	lui	at,0x1
     78c:	342117a4 	ori	at,at,0x17a4
     790:	00812021 	addu	a0,a0,at
     794:	0c000000 	jal	0 <func_80AC2CA0>
     798:	afa70020 	sw	a3,32(sp)
     79c:	8fa70020 	lw	a3,32(sp)
     7a0:	a0e201ea 	sb	v0,490(a3)
     7a4:	80e801ea 	lb	t0,490(a3)
     7a8:	05030005 	bgezl	t0,7c0 <func_80AC33B0+0xb0>
     7ac:	24020001 	li	v0,1
     7b0:	10000003 	b	7c0 <func_80AC33B0+0xb0>
     7b4:	00001025 	move	v0,zero
     7b8:	a0e901ea 	sb	t1,490(a3)
     7bc:	24020001 	li	v0,1
     7c0:	8fbf0014 	lw	ra,20(sp)
     7c4:	27bd0020 	addiu	sp,sp,32
     7c8:	03e00008 	jr	ra
     7cc:	00000000 	nop

000007d0 <EnOssan_Init>:
     7d0:	27bdffd0 	addiu	sp,sp,-48
     7d4:	afbf001c 	sw	ra,28(sp)
     7d8:	afb00018 	sw	s0,24(sp)
     7dc:	afa50034 	sw	a1,52(sp)
     7e0:	8483001c 	lh	v1,28(a0)
     7e4:	00808025 	move	s0,a0
     7e8:	24070006 	li	a3,6
     7ec:	14e3000d 	bne	a3,v1,824 <EnOssan_Init+0x54>
     7f0:	3c040000 	lui	a0,0x0
     7f4:	24840000 	addiu	a0,a0,0
     7f8:	8c8e0004 	lw	t6,4(a0)
     7fc:	24010005 	li	at,5
     800:	24020011 	li	v0,17
     804:	11c00003 	beqz	t6,814 <EnOssan_Init+0x44>
     808:	240f0009 	li	t7,9
     80c:	10000001 	b	814 <EnOssan_Init+0x44>
     810:	24020005 	li	v0,5
     814:	10410003 	beq	v0,at,824 <EnOssan_Init+0x54>
     818:	00000000 	nop
     81c:	a60f001c 	sh	t7,28(s0)
     820:	8603001c 	lh	v1,28(s0)
     824:	3c040000 	lui	a0,0x0
     828:	2861000b 	slti	at,v1,11
     82c:	14200017 	bnez	at,88c <EnOssan_Init+0xbc>
     830:	24840000 	addiu	a0,a0,0
     834:	04630016 	bgezl	v1,890 <EnOssan_Init+0xc0>
     838:	2401000a 	li	at,10
     83c:	0c000000 	jal	0 <func_80AC2CA0>
     840:	02002025 	move	a0,s0
     844:	3c040000 	lui	a0,0x0
     848:	0c000000 	jal	0 <func_80AC2CA0>
     84c:	24840000 	addiu	a0,a0,0
     850:	3c040000 	lui	a0,0x0
     854:	24840000 	addiu	a0,a0,0
     858:	0c000000 	jal	0 <func_80AC2CA0>
     85c:	8605001c 	lh	a1,28(s0)
     860:	3c040000 	lui	a0,0x0
     864:	0c000000 	jal	0 <func_80AC2CA0>
     868:	24840000 	addiu	a0,a0,0
     86c:	3c040000 	lui	a0,0x0
     870:	3c050000 	lui	a1,0x0
     874:	24a50000 	addiu	a1,a1,0
     878:	24840000 	addiu	a0,a0,0
     87c:	0c000000 	jal	0 <func_80AC2CA0>
     880:	240604de 	li	a2,1246
     884:	10000075 	b	a5c <EnOssan_Init+0x28c>
     888:	8fbf001c 	lw	ra,28(sp)
     88c:	2401000a 	li	at,10
     890:	5461000a 	bnel	v1,at,8bc <EnOssan_Init+0xec>
     894:	24010001 	li	at,1
     898:	94980f06 	lhu	t8,3846(a0)
     89c:	33190040 	andi	t9,t8,0x40
     8a0:	57200006 	bnezl	t9,8bc <EnOssan_Init+0xec>
     8a4:	24010001 	li	at,1
     8a8:	0c000000 	jal	0 <func_80AC2CA0>
     8ac:	02002025 	move	a0,s0
     8b0:	1000006a 	b	a5c <EnOssan_Init+0x28c>
     8b4:	8fbf001c 	lw	ra,28(sp)
     8b8:	24010001 	li	at,1
     8bc:	5461000f 	bnel	v1,at,8fc <EnOssan_Init+0x12c>
     8c0:	24010002 	li	at,2
     8c4:	8c880004 	lw	t0,4(a0)
     8c8:	24010005 	li	at,5
     8cc:	24020011 	li	v0,17
     8d0:	11000003 	beqz	t0,8e0 <EnOssan_Init+0x110>
     8d4:	00000000 	nop
     8d8:	10000001 	b	8e0 <EnOssan_Init+0x110>
     8dc:	24020005 	li	v0,5
     8e0:	54410006 	bnel	v0,at,8fc <EnOssan_Init+0x12c>
     8e4:	24010002 	li	at,2
     8e8:	0c000000 	jal	0 <func_80AC2CA0>
     8ec:	02002025 	move	a0,s0
     8f0:	1000005a 	b	a5c <EnOssan_Init+0x28c>
     8f4:	8fbf001c 	lw	ra,28(sp)
     8f8:	24010002 	li	at,2
     8fc:	14610009 	bne	v1,at,924 <EnOssan_Init+0x154>
     900:	00000000 	nop
     904:	94890ed8 	lhu	t1,3800(a0)
     908:	312a0020 	andi	t2,t1,0x20
     90c:	15400005 	bnez	t2,924 <EnOssan_Init+0x154>
     910:	00000000 	nop
     914:	0c000000 	jal	0 <func_80AC2CA0>
     918:	02002025 	move	a0,s0
     91c:	1000004f 	b	a5c <EnOssan_Init+0x28c>
     920:	8fbf001c 	lw	ra,28(sp)
     924:	00670019 	multu	v1,a3
     928:	3c0c0000 	lui	t4,0x0
     92c:	258c0000 	addiu	t4,t4,0
     930:	8fa40034 	lw	a0,52(sp)
     934:	3c010001 	lui	at,0x1
     938:	342117a4 	ori	at,at,0x17a4
     93c:	00812021 	addu	a0,a0,at
     940:	00005812 	mflo	t3
     944:	016c3021 	addu	a2,t3,t4
     948:	84c50000 	lh	a1,0(a2)
     94c:	0c000000 	jal	0 <func_80AC2CA0>
     950:	afa60024 	sw	a2,36(sp)
     954:	8fa60024 	lw	a2,36(sp)
     958:	a20201e8 	sb	v0,488(s0)
     95c:	820d01e8 	lb	t5,488(s0)
     960:	02002025 	move	a0,s0
     964:	05a10019 	bgez	t5,9cc <EnOssan_Init+0x1fc>
     968:	00000000 	nop
     96c:	0c000000 	jal	0 <func_80AC2CA0>
     970:	02002025 	move	a0,s0
     974:	3c040000 	lui	a0,0x0
     978:	0c000000 	jal	0 <func_80AC2CA0>
     97c:	24840000 	addiu	a0,a0,0
     980:	860e001c 	lh	t6,28(s0)
     984:	3c050000 	lui	a1,0x0
     988:	3c040000 	lui	a0,0x0
     98c:	000e7880 	sll	t7,t6,0x2
     990:	00af2821 	addu	a1,a1,t7
     994:	8ca50000 	lw	a1,0(a1)
     998:	0c000000 	jal	0 <func_80AC2CA0>
     99c:	24840000 	addiu	a0,a0,0
     9a0:	3c040000 	lui	a0,0x0
     9a4:	0c000000 	jal	0 <func_80AC2CA0>
     9a8:	24840000 	addiu	a0,a0,0
     9ac:	3c040000 	lui	a0,0x0
     9b0:	3c050000 	lui	a1,0x0
     9b4:	24a50000 	addiu	a1,a1,0
     9b8:	24840000 	addiu	a0,a0,0
     9bc:	0c000000 	jal	0 <func_80AC2CA0>
     9c0:	24060504 	li	a2,1284
     9c4:	10000025 	b	a5c <EnOssan_Init+0x28c>
     9c8:	8fbf001c 	lw	ra,28(sp)
     9cc:	0c000000 	jal	0 <func_80AC2CA0>
     9d0:	8fa50034 	lw	a1,52(sp)
     9d4:	14400019 	bnez	v0,a3c <EnOssan_Init+0x26c>
     9d8:	02002025 	move	a0,s0
     9dc:	0c000000 	jal	0 <func_80AC2CA0>
     9e0:	02002025 	move	a0,s0
     9e4:	3c040000 	lui	a0,0x0
     9e8:	0c000000 	jal	0 <func_80AC2CA0>
     9ec:	24840000 	addiu	a0,a0,0
     9f0:	8618001c 	lh	t8,28(s0)
     9f4:	3c050000 	lui	a1,0x0
     9f8:	3c040000 	lui	a0,0x0
     9fc:	0018c880 	sll	t9,t8,0x2
     a00:	00b92821 	addu	a1,a1,t9
     a04:	8ca50000 	lw	a1,0(a1)
     a08:	0c000000 	jal	0 <func_80AC2CA0>
     a0c:	24840000 	addiu	a0,a0,0
     a10:	3c040000 	lui	a0,0x0
     a14:	0c000000 	jal	0 <func_80AC2CA0>
     a18:	24840000 	addiu	a0,a0,0
     a1c:	3c040000 	lui	a0,0x0
     a20:	3c050000 	lui	a1,0x0
     a24:	24a50000 	addiu	a1,a1,0
     a28:	24840000 	addiu	a0,a0,0
     a2c:	0c000000 	jal	0 <func_80AC2CA0>
     a30:	2406050f 	li	a2,1295
     a34:	10000009 	b	a5c <EnOssan_Init+0x28c>
     a38:	8fbf001c 	lw	ra,28(sp)
     a3c:	3c050000 	lui	a1,0x0
     a40:	0c000000 	jal	0 <func_80AC2CA0>
     a44:	24a50000 	addiu	a1,a1,0
     a48:	3c050000 	lui	a1,0x0
     a4c:	24a50000 	addiu	a1,a1,0
     a50:	0c000000 	jal	0 <func_80AC2CA0>
     a54:	02002025 	move	a0,s0
     a58:	8fbf001c 	lw	ra,28(sp)
     a5c:	8fb00018 	lw	s0,24(sp)
     a60:	27bd0030 	addiu	sp,sp,48
     a64:	03e00008 	jr	ra
     a68:	00000000 	nop

00000a6c <EnOssan_Destroy>:
     a6c:	27bdffe8 	addiu	sp,sp,-24
     a70:	afbf0014 	sw	ra,20(sp)
     a74:	afa40018 	sw	a0,24(sp)
     a78:	afa5001c 	sw	a1,28(sp)
     a7c:	0c000000 	jal	0 <func_80AC2CA0>
     a80:	2484014c 	addiu	a0,a0,332
     a84:	8fa50018 	lw	a1,24(sp)
     a88:	8fa4001c 	lw	a0,28(sp)
     a8c:	0c000000 	jal	0 <func_80AC2CA0>
     a90:	24a50198 	addiu	a1,a1,408
     a94:	8fbf0014 	lw	ra,20(sp)
     a98:	27bd0018 	addiu	sp,sp,24
     a9c:	03e00008 	jr	ra
     aa0:	00000000 	nop

00000aa4 <func_80AC3744>:
     aa4:	27bdffe0 	addiu	sp,sp,-32
     aa8:	afbf0014 	sw	ra,20(sp)
     aac:	afa50024 	sw	a1,36(sp)
     ab0:	90af0252 	lbu	t7,594(a1)
     ab4:	27a6001e 	addiu	a2,sp,30
     ab8:	27a7001c 	addiu	a3,sp,28
     abc:	000fc080 	sll	t8,t7,0x2
     ac0:	00b8c821 	addu	t9,a1,t8
     ac4:	0c000000 	jal	0 <func_80AC2CA0>
     ac8:	8f250200 	lw	a1,512(t9)
     acc:	87a8001e 	lh	t0,30(sp)
     ad0:	8fa20024 	lw	v0,36(sp)
     ad4:	44882000 	mtc1	t0,$f4
     ad8:	00000000 	nop
     adc:	468021a0 	cvt.s.w	$f6,$f4
     ae0:	e4460230 	swc1	$f6,560(v0)
     ae4:	87a9001c 	lh	t1,28(sp)
     ae8:	44894000 	mtc1	t1,$f8
     aec:	00000000 	nop
     af0:	468042a0 	cvt.s.w	$f10,$f8
     af4:	e44a0234 	swc1	$f10,564(v0)
     af8:	8fbf0014 	lw	ra,20(sp)
     afc:	27bd0020 	addiu	sp,sp,32
     b00:	03e00008 	jr	ra
     b04:	00000000 	nop

00000b08 <func_80AC37A8>:
     b08:	27bdffd8 	addiu	sp,sp,-40
     b0c:	afbf001c 	sw	ra,28(sp)
     b10:	afb10018 	sw	s1,24(sp)
     b14:	afb00014 	sw	s0,20(sp)
     b18:	8c8e1c44 	lw	t6,7236(a0)
     b1c:	00808025 	move	s0,a0
     b20:	00a08825 	move	s1,a1
     b24:	3c050000 	lui	a1,0x0
     b28:	3c040000 	lui	a0,0x0
     b2c:	24840000 	addiu	a0,a0,0
     b30:	24a50000 	addiu	a1,a1,0
     b34:	24060539 	li	a2,1337
     b38:	0c000000 	jal	0 <func_80AC2CA0>
     b3c:	afae0024 	sw	t6,36(sp)
     b40:	3c0f0000 	lui	t7,0x0
     b44:	8def0000 	lw	t7,0(t7)
     b48:	02202025 	move	a0,s1
     b4c:	02002825 	move	a1,s0
     b50:	0c000000 	jal	0 <func_80AC2CA0>
     b54:	a5e004d2 	sh	zero,1234(t7)
     b58:	3c010001 	lui	at,0x1
     b5c:	8fa30024 	lw	v1,36(sp)
     b60:	00300821 	addu	at,at,s0
     b64:	24180036 	li	t8,54
     b68:	a03803dc 	sb	t8,988(at)
     b6c:	3c010001 	lui	at,0x1
     b70:	00300821 	addu	at,at,s0
     b74:	24190004 	li	t9,4
     b78:	a03904bf 	sb	t9,1215(at)
     b7c:	8c680680 	lw	t0,1664(v1)
     b80:	3c01dfff 	lui	at,0xdfff
     b84:	3421ffff 	ori	at,at,0xffff
     b88:	01014824 	and	t1,t0,at
     b8c:	02002025 	move	a0,s0
     b90:	24050001 	li	a1,1
     b94:	0c000000 	jal	0 <func_80AC2CA0>
     b98:	ac690680 	sw	t1,1664(v1)
     b9c:	0c000000 	jal	0 <func_80AC2CA0>
     ba0:	24040032 	li	a0,50
     ba4:	a2200251 	sb	zero,593(s1)
     ba8:	ae200288 	sw	zero,648(s1)
     bac:	ae2002c0 	sw	zero,704(s1)
     bb0:	02202025 	move	a0,s1
     bb4:	02002825 	move	a1,s0
     bb8:	0c000000 	jal	0 <func_80AC2CA0>
     bbc:	24060000 	li	a2,0
     bc0:	0c000000 	jal	0 <func_80AC2CA0>
     bc4:	02202025 	move	a0,s1
     bc8:	a622010e 	sh	v0,270(s1)
     bcc:	a62001fc 	sh	zero,508(s1)
     bd0:	8fbf001c 	lw	ra,28(sp)
     bd4:	8fb10018 	lw	s1,24(sp)
     bd8:	8fb00014 	lw	s0,20(sp)
     bdc:	03e00008 	jr	ra
     be0:	27bd0028 	addiu	sp,sp,40

00000be4 <func_80AC3884>:
     be4:	27bdffe8 	addiu	sp,sp,-24
     be8:	afbf0014 	sw	ra,20(sp)
     bec:	afa40018 	sw	a0,24(sp)
     bf0:	94ce000c 	lhu	t6,12(a2)
     bf4:	2401bfff 	li	at,-16385
     bf8:	00a02025 	move	a0,a1
     bfc:	01c17827 	nor	t7,t6,at
     c00:	15e00005 	bnez	t7,c18 <func_80AC3884+0x34>
     c04:	00001025 	move	v0,zero
     c08:	0c000000 	jal	0 <func_80AC2CA0>
     c0c:	8fa50018 	lw	a1,24(sp)
     c10:	10000001 	b	c18 <func_80AC3884+0x34>
     c14:	24020001 	li	v0,1
     c18:	8fbf0014 	lw	ra,20(sp)
     c1c:	27bd0018 	addiu	sp,sp,24
     c20:	03e00008 	jr	ra
     c24:	00000000 	nop

00000c28 <func_80AC38C8>:
     c28:	27bdffe8 	addiu	sp,sp,-24
     c2c:	afbf0014 	sw	ra,20(sp)
     c30:	afa5001c 	sw	a1,28(sp)
     c34:	94ce000c 	lhu	t6,12(a2)
     c38:	2401bfff 	li	at,-16385
     c3c:	00803825 	move	a3,a0
     c40:	01c17827 	nor	t7,t6,at
     c44:	15e0000c 	bnez	t7,c78 <func_80AC38C8+0x50>
     c48:	00001025 	move	v0,zero
     c4c:	849801fe 	lh	t8,510(a0)
     c50:	a49801fc 	sh	t8,508(a0)
     c54:	90f90252 	lbu	t9,594(a3)
     c58:	8fa4001c 	lw	a0,28(sp)
     c5c:	00194080 	sll	t0,t9,0x2
     c60:	00e84821 	addu	t1,a3,t0
     c64:	8d2a0200 	lw	t2,512(t1)
     c68:	0c000000 	jal	0 <func_80AC2CA0>
     c6c:	9545010e 	lhu	a1,270(t2)
     c70:	10000001 	b	c78 <func_80AC38C8+0x50>
     c74:	24020001 	li	v0,1
     c78:	8fbf0014 	lw	ra,20(sp)
     c7c:	27bd0018 	addiu	sp,sp,24
     c80:	03e00008 	jr	ra
     c84:	00000000 	nop

00000c88 <func_80AC3928>:
     c88:	27bdffe8 	addiu	sp,sp,-24
     c8c:	3c0f0000 	lui	t7,0x0
     c90:	8def0000 	lw	t7,0(t7)
     c94:	afbf0014 	sw	ra,20(sp)
     c98:	afa40018 	sw	a0,24(sp)
     c9c:	afa60020 	sw	a2,32(sp)
     ca0:	240e0001 	li	t6,1
     ca4:	a5ee04d2 	sh	t6,1234(t7)
     ca8:	a4a001f0 	sh	zero,496(a1)
     cac:	84b801f0 	lh	t8,496(a1)
     cb0:	00a03825 	move	a3,a1
     cb4:	a4b801ee 	sh	t8,494(a1)
     cb8:	afa7001c 	sw	a3,28(sp)
     cbc:	8fa40018 	lw	a0,24(sp)
     cc0:	0c000000 	jal	0 <func_80AC2CA0>
     cc4:	24050010 	li	a1,16
     cc8:	8fa4001c 	lw	a0,28(sp)
     ccc:	8fa50018 	lw	a1,24(sp)
     cd0:	0c000000 	jal	0 <func_80AC2CA0>
     cd4:	24060000 	li	a2,0
     cd8:	93b90023 	lbu	t9,35(sp)
     cdc:	8fa7001c 	lw	a3,28(sp)
     ce0:	24080001 	li	t0,1
     ce4:	17200003 	bnez	t9,cf4 <func_80AC3928+0x6c>
     ce8:	8fa40018 	lw	a0,24(sp)
     cec:	10000003 	b	cfc <func_80AC3928+0x74>
     cf0:	a4e801fc 	sh	t0,508(a3)
     cf4:	0c000000 	jal	0 <func_80AC2CA0>
     cf8:	00e02825 	move	a1,a3
     cfc:	8fbf0014 	lw	ra,20(sp)
     d00:	27bd0018 	addiu	sp,sp,24
     d04:	03e00008 	jr	ra
     d08:	00000000 	nop

00000d0c <func_80AC39AC>:
     d0c:	27bdffe0 	addiu	sp,sp,-32
     d10:	afbf001c 	sw	ra,28(sp)
     d14:	afb00018 	sw	s0,24(sp)
     d18:	84af001c 	lh	t7,28(a1)
     d1c:	240e0002 	li	t6,2
     d20:	2401000a 	li	at,10
     d24:	00808025 	move	s0,a0
     d28:	00a03825 	move	a3,a1
     d2c:	15e10017 	bne	t7,at,d8c <func_80AC39AC+0x80>
     d30:	a4ae01fc 	sh	t6,508(a1)
     d34:	3c020000 	lui	v0,0x0
     d38:	94420ef6 	lhu	v0,3830(v0)
     d3c:	240570a2 	li	a1,28834
     d40:	30580100 	andi	t8,v0,0x100
     d44:	1300000c 	beqz	t8,d78 <func_80AC39AC+0x6c>
     d48:	30590200 	andi	t9,v0,0x200
     d4c:	1320000a 	beqz	t9,d78 <func_80AC39AC+0x6c>
     d50:	30480400 	andi	t0,v0,0x400
     d54:	11000008 	beqz	t0,d78 <func_80AC39AC+0x6c>
     d58:	30490800 	andi	t1,v0,0x800
     d5c:	51200007 	beqzl	t1,d7c <func_80AC39AC+0x70>
     d60:	02002025 	move	a0,s0
     d64:	240570ad 	li	a1,28845
     d68:	0c000000 	jal	0 <func_80AC2CA0>
     d6c:	afa70024 	sw	a3,36(sp)
     d70:	1000000b 	b	da0 <func_80AC39AC+0x94>
     d74:	8fa70024 	lw	a3,36(sp)
     d78:	02002025 	move	a0,s0
     d7c:	0c000000 	jal	0 <func_80AC2CA0>
     d80:	afa70024 	sw	a3,36(sp)
     d84:	10000006 	b	da0 <func_80AC39AC+0x94>
     d88:	8fa70024 	lw	a3,36(sp)
     d8c:	02002025 	move	a0,s0
     d90:	24050083 	li	a1,131
     d94:	0c000000 	jal	0 <func_80AC2CA0>
     d98:	afa70024 	sw	a3,36(sp)
     d9c:	8fa70024 	lw	a3,36(sp)
     da0:	02002025 	move	a0,s0
     da4:	24050006 	li	a1,6
     da8:	0c000000 	jal	0 <func_80AC2CA0>
     dac:	afa70024 	sw	a3,36(sp)
     db0:	8fa40024 	lw	a0,36(sp)
     db4:	24020001 	li	v0,1
     db8:	02002825 	move	a1,s0
     dbc:	24060000 	li	a2,0
     dc0:	ac8202c0 	sw	v0,704(a0)
     dc4:	0c000000 	jal	0 <func_80AC2CA0>
     dc8:	ac820288 	sw	v0,648(a0)
     dcc:	8fbf001c 	lw	ra,28(sp)
     dd0:	8fb00018 	lw	s0,24(sp)
     dd4:	27bd0020 	addiu	sp,sp,32
     dd8:	03e00008 	jr	ra
     ddc:	00000000 	nop

00000de0 <func_80AC3A80>:
     de0:	27bdffe8 	addiu	sp,sp,-24
     de4:	afbf0014 	sw	ra,20(sp)
     de8:	afa40018 	sw	a0,24(sp)
     dec:	240e0003 	li	t6,3
     df0:	a4ae01fc 	sh	t6,508(a1)
     df4:	afa5001c 	sw	a1,28(sp)
     df8:	84af001c 	lh	t7,28(a1)
     dfc:	3c190000 	lui	t9,0x0
     e00:	8fa40018 	lw	a0,24(sp)
     e04:	000fc080 	sll	t8,t7,0x2
     e08:	0338c821 	addu	t9,t9,t8
     e0c:	8f390000 	lw	t9,0(t9)
     e10:	0320f809 	jalr	t9
     e14:	00000000 	nop
     e18:	8fa40018 	lw	a0,24(sp)
     e1c:	0c000000 	jal	0 <func_80AC2CA0>
     e20:	24050006 	li	a1,6
     e24:	8fa6001c 	lw	a2,28(sp)
     e28:	acc00288 	sw	zero,648(a2)
     e2c:	acc002c0 	sw	zero,704(a2)
     e30:	8fbf0014 	lw	ra,20(sp)
     e34:	27bd0018 	addiu	sp,sp,24
     e38:	03e00008 	jr	ra
     e3c:	00000000 	nop

00000e40 <func_80AC3AE0>:
     e40:	27bdffe8 	addiu	sp,sp,-24
     e44:	afbf0014 	sw	ra,20(sp)
     e48:	afa40018 	sw	a0,24(sp)
     e4c:	afa5001c 	sw	a1,28(sp)
     e50:	0c000000 	jal	0 <func_80AC2CA0>
     e54:	24044809 	li	a0,18441
     e58:	8fa2001c 	lw	v0,28(sp)
     e5c:	240e0008 	li	t6,8
     e60:	a0400251 	sb	zero,593(v0)
     e64:	a44e01fc 	sh	t6,508(v0)
     e68:	8fbf0014 	lw	ra,20(sp)
     e6c:	27bd0018 	addiu	sp,sp,24
     e70:	03e00008 	jr	ra
     e74:	00000000 	nop

00000e78 <func_80AC3B18>:
     e78:	27bdffe8 	addiu	sp,sp,-24
     e7c:	afbf0014 	sw	ra,20(sp)
     e80:	afa5001c 	sw	a1,28(sp)
     e84:	afa60020 	sw	a2,32(sp)
     e88:	848f00b6 	lh	t7,182(a0)
     e8c:	848e008a 	lh	t6,138(a0)
     e90:	01cfc023 	subu	t8,t6,t7
     e94:	a49801f0 	sh	t8,496(a0)
     e98:	afa40018 	sw	a0,24(sp)
     e9c:	0c000000 	jal	0 <func_80AC2CA0>
     ea0:	8fa5001c 	lw	a1,28(sp)
     ea4:	10400012 	beqz	v0,ef0 <func_80AC3B18+0x78>
     ea8:	8fa70018 	lw	a3,24(sp)
     eac:	3c040000 	lui	a0,0x0
     eb0:	24840000 	addiu	a0,a0,0
     eb4:	0c000000 	jal	0 <func_80AC2CA0>
     eb8:	afa70018 	sw	a3,24(sp)
     ebc:	8fa20020 	lw	v0,32(sp)
     ec0:	3c012000 	lui	at,0x2000
     ec4:	8c590680 	lw	t9,1664(v0)
     ec8:	03214025 	or	t0,t9,at
     ecc:	ac480680 	sw	t0,1664(v0)
     ed0:	0c000000 	jal	0 <func_80AC2CA0>
     ed4:	8fa4001c 	lw	a0,28(sp)
     ed8:	8fa50018 	lw	a1,24(sp)
     edc:	8fa4001c 	lw	a0,28(sp)
     ee0:	0c000000 	jal	0 <func_80AC2CA0>
     ee4:	00003025 	move	a2,zero
     ee8:	1000000d 	b	f20 <func_80AC3B18+0xa8>
     eec:	8fbf0014 	lw	ra,20(sp)
     ef0:	3c0142c8 	lui	at,0x42c8
     ef4:	44813000 	mtc1	at,$f6
     ef8:	c4e40090 	lwc1	$f4,144(a3)
     efc:	00e02025 	move	a0,a3
     f00:	8fa5001c 	lw	a1,28(sp)
     f04:	4606203c 	c.lt.s	$f4,$f6
     f08:	00000000 	nop
     f0c:	45020004 	bc1fl	f20 <func_80AC3B18+0xa8>
     f10:	8fbf0014 	lw	ra,20(sp)
     f14:	0c000000 	jal	0 <func_80AC2CA0>
     f18:	3c0642c8 	lui	a2,0x42c8
     f1c:	8fbf0014 	lw	ra,20(sp)
     f20:	27bd0018 	addiu	sp,sp,24
     f24:	03e00008 	jr	ra
     f28:	00000000 	nop

00000f2c <func_80AC3BCC>:
     f2c:	8ca60224 	lw	a2,548(a1)
     f30:	80820028 	lb	v0,40(a0)
     f34:	80830029 	lb	v1,41(a0)
     f38:	a0a0022c 	sb	zero,556(a1)
     f3c:	14c0000a 	bnez	a2,f68 <func_80AC3BCC+0x3c>
     f40:	a0a0022d 	sb	zero,557(a1)
     f44:	2841001f 	slti	at,v0,31
     f48:	10200004 	beqz	at,f5c <func_80AC3BCC+0x30>
     f4c:	240f0001 	li	t7,1
     f50:	2841ffe2 	slti	at,v0,-30
     f54:	50200020 	beqzl	at,fd8 <func_80AC3BCC+0xac>
     f58:	8ca20228 	lw	v0,552(a1)
     f5c:	aca20224 	sw	v0,548(a1)
     f60:	1000001c 	b	fd4 <func_80AC3BCC+0xa8>
     f64:	a0af022c 	sb	t7,556(a1)
     f68:	2841001f 	slti	at,v0,31
     f6c:	10200005 	beqz	at,f84 <func_80AC3BCC+0x58>
     f70:	2841ffe2 	slti	at,v0,-30
     f74:	14200003 	bnez	at,f84 <func_80AC3BCC+0x58>
     f78:	00000000 	nop
     f7c:	10000015 	b	fd4 <func_80AC3BCC+0xa8>
     f80:	aca00224 	sw	zero,548(a1)
     f84:	00c20019 	multu	a2,v0
     f88:	00c24021 	addu	t0,a2,v0
     f8c:	24190001 	li	t9,1
     f90:	01003025 	move	a2,t0
     f94:	290107d1 	slti	at,t0,2001
     f98:	0000c012 	mflo	t8
     f9c:	07010004 	bgez	t8,fb0 <func_80AC3BCC+0x84>
     fa0:	00000000 	nop
     fa4:	aca20224 	sw	v0,548(a1)
     fa8:	1000000a 	b	fd4 <func_80AC3BCC+0xa8>
     fac:	a0b9022c 	sb	t9,556(a1)
     fb0:	14200004 	bnez	at,fc4 <func_80AC3BCC+0x98>
     fb4:	aca80224 	sw	t0,548(a1)
     fb8:	240907d0 	li	t1,2000
     fbc:	10000005 	b	fd4 <func_80AC3BCC+0xa8>
     fc0:	aca90224 	sw	t1,548(a1)
     fc4:	28c1f830 	slti	at,a2,-2000
     fc8:	10200002 	beqz	at,fd4 <func_80AC3BCC+0xa8>
     fcc:	240af830 	li	t2,-2000
     fd0:	acaa0224 	sw	t2,548(a1)
     fd4:	8ca20228 	lw	v0,552(a1)
     fd8:	2861001f 	slti	at,v1,31
     fdc:	1440000a 	bnez	v0,1008 <func_80AC3BCC+0xdc>
     fe0:	00000000 	nop
     fe4:	2861001f 	slti	at,v1,31
     fe8:	10200004 	beqz	at,ffc <func_80AC3BCC+0xd0>
     fec:	240b0001 	li	t3,1
     ff0:	2861ffe2 	slti	at,v1,-30
     ff4:	1020001e 	beqz	at,1070 <func_80AC3BCC+0x144>
     ff8:	00000000 	nop
     ffc:	aca30228 	sw	v1,552(a1)
    1000:	03e00008 	jr	ra
    1004:	a0ab022d 	sb	t3,557(a1)
    1008:	10200005 	beqz	at,1020 <func_80AC3BCC+0xf4>
    100c:	2861ffe2 	slti	at,v1,-30
    1010:	14200003 	bnez	at,1020 <func_80AC3BCC+0xf4>
    1014:	00000000 	nop
    1018:	03e00008 	jr	ra
    101c:	aca00228 	sw	zero,552(a1)
    1020:	00430019 	multu	v0,v1
    1024:	00437021 	addu	t6,v0,v1
    1028:	240d0001 	li	t5,1
    102c:	01c01025 	move	v0,t6
    1030:	29c107d1 	slti	at,t6,2001
    1034:	00006012 	mflo	t4
    1038:	05810004 	bgez	t4,104c <func_80AC3BCC+0x120>
    103c:	00000000 	nop
    1040:	aca30228 	sw	v1,552(a1)
    1044:	03e00008 	jr	ra
    1048:	a0ad022d 	sb	t5,557(a1)
    104c:	14200004 	bnez	at,1060 <func_80AC3BCC+0x134>
    1050:	acae0228 	sw	t6,552(a1)
    1054:	240f07d0 	li	t7,2000
    1058:	03e00008 	jr	ra
    105c:	acaf0228 	sw	t7,552(a1)
    1060:	2841f830 	slti	at,v0,-2000
    1064:	10200002 	beqz	at,1070 <func_80AC3BCC+0x144>
    1068:	2418f830 	li	t8,-2000
    106c:	acb80228 	sw	t8,552(a1)
    1070:	03e00008 	jr	ra
    1074:	00000000 	nop

00001078 <func_80AC3D18>:
    1078:	afa50004 	sw	a1,4(sp)
    107c:	908e0252 	lbu	t6,594(a0)
    1080:	30a500ff 	andi	a1,a1,0xff
    1084:	30a300ff 	andi	v1,a1,0xff
    1088:	31cf0001 	andi	t7,t6,0x1
    108c:	11e00025 	beqz	t7,1124 <func_80AC3D18+0xac>
    1090:	24a70004 	addiu	a3,a1,4
    1094:	24a60001 	addiu	a2,a1,1
    1098:	30d800ff 	andi	t8,a2,0xff
    109c:	24a70004 	addiu	a3,a1,4
    10a0:	0307082a 	slt	at,t8,a3
    10a4:	30c300ff 	andi	v1,a2,0xff
    10a8:	1020000d 	beqz	at,10e0 <func_80AC3D18+0x68>
    10ac:	00a01025 	move	v0,a1
    10b0:	0003c880 	sll	t9,v1,0x2
    10b4:	00994021 	addu	t0,a0,t9
    10b8:	8d090200 	lw	t1,512(t0)
    10bc:	51200004 	beqzl	t1,10d0 <func_80AC3D18+0x58>
    10c0:	24630002 	addiu	v1,v1,2
    10c4:	03e00008 	jr	ra
    10c8:	00601025 	move	v0,v1
    10cc:	24630002 	addiu	v1,v1,2
    10d0:	306300ff 	andi	v1,v1,0xff
    10d4:	0067082a 	slt	at,v1,a3
    10d8:	5420fff6 	bnezl	at,10b4 <func_80AC3D18+0x3c>
    10dc:	0003c880 	sll	t9,v1,0x2
    10e0:	0047082a 	slt	at,v0,a3
    10e4:	1020002f 	beqz	at,11a4 <func_80AC3D18+0x12c>
    10e8:	30a300ff 	andi	v1,a1,0xff
    10ec:	00035080 	sll	t2,v1,0x2
    10f0:	008a5821 	addu	t3,a0,t2
    10f4:	8d6c0200 	lw	t4,512(t3)
    10f8:	51800004 	beqzl	t4,110c <func_80AC3D18+0x94>
    10fc:	24630002 	addiu	v1,v1,2
    1100:	03e00008 	jr	ra
    1104:	00601025 	move	v0,v1
    1108:	24630002 	addiu	v1,v1,2
    110c:	306300ff 	andi	v1,v1,0xff
    1110:	0067082a 	slt	at,v1,a3
    1114:	5420fff6 	bnezl	at,10f0 <func_80AC3D18+0x78>
    1118:	00035080 	sll	t2,v1,0x2
    111c:	10000022 	b	11a8 <func_80AC3D18+0x130>
    1120:	240200ff 	li	v0,255
    1124:	00a7082a 	slt	at,a1,a3
    1128:	1020000d 	beqz	at,1160 <func_80AC3D18+0xe8>
    112c:	00a01025 	move	v0,a1
    1130:	00036880 	sll	t5,v1,0x2
    1134:	008d7021 	addu	t6,a0,t5
    1138:	8dcf0200 	lw	t7,512(t6)
    113c:	51e00004 	beqzl	t7,1150 <func_80AC3D18+0xd8>
    1140:	24630002 	addiu	v1,v1,2
    1144:	03e00008 	jr	ra
    1148:	00601025 	move	v0,v1
    114c:	24630002 	addiu	v1,v1,2
    1150:	306300ff 	andi	v1,v1,0xff
    1154:	0067082a 	slt	at,v1,a3
    1158:	5420fff6 	bnezl	at,1134 <func_80AC3D18+0xbc>
    115c:	00036880 	sll	t5,v1,0x2
    1160:	24460001 	addiu	a2,v0,1
    1164:	30d800ff 	andi	t8,a2,0xff
    1168:	0307082a 	slt	at,t8,a3
    116c:	1020000d 	beqz	at,11a4 <func_80AC3D18+0x12c>
    1170:	30c300ff 	andi	v1,a2,0xff
    1174:	0003c880 	sll	t9,v1,0x2
    1178:	00994021 	addu	t0,a0,t9
    117c:	8d090200 	lw	t1,512(t0)
    1180:	51200004 	beqzl	t1,1194 <func_80AC3D18+0x11c>
    1184:	24630002 	addiu	v1,v1,2
    1188:	03e00008 	jr	ra
    118c:	00601025 	move	v0,v1
    1190:	24630002 	addiu	v1,v1,2
    1194:	306300ff 	andi	v1,v1,0xff
    1198:	0067082a 	slt	at,v1,a3
    119c:	5420fff6 	bnezl	at,1178 <func_80AC3D18+0x100>
    11a0:	0003c880 	sll	t9,v1,0x2
    11a4:	240200ff 	li	v0,255
    11a8:	03e00008 	jr	ra
    11ac:	00000000 	nop

000011b0 <func_80AC3E50>:
    11b0:	afa50004 	sw	a1,4(sp)
    11b4:	30c300ff 	andi	v1,a2,0xff
    11b8:	30a500ff 	andi	a1,a1,0xff
    11bc:	24670004 	addiu	a3,v1,4
    11c0:	00a3082a 	slt	at,a1,v1
    11c4:	afa60008 	sw	a2,8(sp)
    11c8:	30e200ff 	andi	v0,a3,0xff
    11cc:	14200017 	bnez	at,122c <func_80AC3E50+0x7c>
    11d0:	00a04025 	move	t0,a1
    11d4:	30e600ff 	andi	a2,a3,0xff
    11d8:	00a6082a 	slt	at,a1,a2
    11dc:	10200013 	beqz	at,122c <func_80AC3E50+0x7c>
    11e0:	2505fffe 	addiu	a1,t0,-2
    11e4:	30a500ff 	andi	a1,a1,0xff
    11e8:	00a3082a 	slt	at,a1,v1
    11ec:	1420000a 	bnez	at,1218 <func_80AC3E50+0x68>
    11f0:	00a04025 	move	t0,a1
    11f4:	00a6082a 	slt	at,a1,a2
    11f8:	10200007 	beqz	at,1218 <func_80AC3E50+0x68>
    11fc:	00057080 	sll	t6,a1,0x2
    1200:	008e7821 	addu	t7,a0,t6
    1204:	8df80200 	lw	t8,512(t7)
    1208:	53000004 	beqzl	t8,121c <func_80AC3E50+0x6c>
    120c:	0103082a 	slt	at,t0,v1
    1210:	03e00008 	jr	ra
    1214:	00a01025 	move	v0,a1
    1218:	0103082a 	slt	at,t0,v1
    121c:	14200003 	bnez	at,122c <func_80AC3E50+0x7c>
    1220:	0102082a 	slt	at,t0,v0
    1224:	5420ffef 	bnezl	at,11e4 <func_80AC3E50+0x34>
    1228:	2505fffe 	addiu	a1,t0,-2
    122c:	240200ff 	li	v0,255
    1230:	03e00008 	jr	ra
    1234:	00000000 	nop

00001238 <func_80AC3ED8>:
    1238:	30a200ff 	andi	v0,a1,0xff
    123c:	30c300ff 	andi	v1,a2,0xff
    1240:	0043082a 	slt	at,v0,v1
    1244:	afa50004 	sw	a1,4(sp)
    1248:	10200010 	beqz	at,128c <func_80AC3ED8+0x54>
    124c:	afa60008 	sw	a2,8(sp)
    1250:	24450002 	addiu	a1,v0,2
    1254:	30a500ff 	andi	a1,a1,0xff
    1258:	00a3082a 	slt	at,a1,v1
    125c:	10200008 	beqz	at,1280 <func_80AC3ED8+0x48>
    1260:	00a01025 	move	v0,a1
    1264:	00057080 	sll	t6,a1,0x2
    1268:	008e7821 	addu	t7,a0,t6
    126c:	8df80200 	lw	t8,512(t7)
    1270:	53000004 	beqzl	t8,1284 <func_80AC3ED8+0x4c>
    1274:	0043082a 	slt	at,v0,v1
    1278:	03e00008 	jr	ra
    127c:	00a01025 	move	v0,a1
    1280:	0043082a 	slt	at,v0,v1
    1284:	5420fff3 	bnezl	at,1254 <func_80AC3ED8+0x1c>
    1288:	24450002 	addiu	a1,v0,2
    128c:	240200ff 	li	v0,255
    1290:	03e00008 	jr	ra
    1294:	00000000 	nop

00001298 <func_80AC3F38>:
    1298:	27bdffe8 	addiu	sp,sp,-24
    129c:	afbf0014 	sw	ra,20(sp)
    12a0:	908e01eb 	lbu	t6,491(a0)
    12a4:	3c030000 	lui	v1,0x0
    12a8:	3c020000 	lui	v0,0x0
    12ac:	000e7840 	sll	t7,t6,0x1
    12b0:	24630000 	addiu	v1,v1,0
    12b4:	004f1021 	addu	v0,v0,t7
    12b8:	84420000 	lh	v0,0(v0)
    12bc:	84780034 	lh	t8,52(v1)
    12c0:	00803025 	move	a2,a0
    12c4:	00a03825 	move	a3,a1
    12c8:	0302082a 	slt	at,t8,v0
    12cc:	1020000b 	beqz	at,12fc <func_80AC3F38+0x64>
    12d0:	00022023 	negu	a0,v0
    12d4:	00a02025 	move	a0,a1
    12d8:	240570a8 	li	a1,28840
    12dc:	0c000000 	jal	0 <func_80AC2CA0>
    12e0:	afa60018 	sw	a2,24(sp)
    12e4:	8fa60018 	lw	a2,24(sp)
    12e8:	24190001 	li	t9,1
    12ec:	24080005 	li	t0,5
    12f0:	a0d901ec 	sb	t9,492(a2)
    12f4:	10000031 	b	13bc <func_80AC3F38+0x124>
    12f8:	a0c801eb 	sb	t0,491(a2)
    12fc:	00042400 	sll	a0,a0,0x10
    1300:	00042403 	sra	a0,a0,0x10
    1304:	afa60018 	sw	a2,24(sp)
    1308:	0c000000 	jal	0 <func_80AC2CA0>
    130c:	afa7001c 	sw	a3,28(sp)
    1310:	8fa60018 	lw	a2,24(sp)
    1314:	8fa7001c 	lw	a3,28(sp)
    1318:	3c030000 	lui	v1,0x0
    131c:	90c201eb 	lbu	v0,491(a2)
    1320:	24010003 	li	at,3
    1324:	24630000 	addiu	v1,v1,0
    1328:	1441000c 	bne	v0,at,135c <func_80AC3F38+0xc4>
    132c:	00e02025 	move	a0,a3
    1330:	94690ee4 	lhu	t1,3812(v1)
    1334:	00e02025 	move	a0,a3
    1338:	240570a9 	li	a1,28841
    133c:	352a8000 	ori	t2,t1,0x8000
    1340:	a46a0ee4 	sh	t2,3812(v1)
    1344:	0c000000 	jal	0 <func_80AC2CA0>
    1348:	afa60018 	sw	a2,24(sp)
    134c:	8fa60018 	lw	a2,24(sp)
    1350:	240b0006 	li	t3,6
    1354:	1000001b 	b	13c4 <func_80AC3F38+0x12c>
    1358:	a0cb01eb 	sb	t3,491(a2)
    135c:	14400005 	bnez	v0,1374 <func_80AC3F38+0xdc>
    1360:	240570a7 	li	a1,28839
    1364:	946c0ee4 	lhu	t4,3812(v1)
    1368:	358d1000 	ori	t5,t4,0x1000
    136c:	1000000e 	b	13a8 <func_80AC3F38+0x110>
    1370:	a46d0ee4 	sh	t5,3812(v1)
    1374:	24010001 	li	at,1
    1378:	54410006 	bnel	v0,at,1394 <func_80AC3F38+0xfc>
    137c:	24010002 	li	at,2
    1380:	946e0ee4 	lhu	t6,3812(v1)
    1384:	35cf4000 	ori	t7,t6,0x4000
    1388:	10000007 	b	13a8 <func_80AC3F38+0x110>
    138c:	a46f0ee4 	sh	t7,3812(v1)
    1390:	24010002 	li	at,2
    1394:	14410004 	bne	v0,at,13a8 <func_80AC3F38+0x110>
    1398:	00000000 	nop
    139c:	94780ee4 	lhu	t8,3812(v1)
    13a0:	37192000 	ori	t9,t8,0x2000
    13a4:	a4790ee4 	sh	t9,3812(v1)
    13a8:	0c000000 	jal	0 <func_80AC2CA0>
    13ac:	afa60018 	sw	a2,24(sp)
    13b0:	8fa60018 	lw	a2,24(sp)
    13b4:	24080008 	li	t0,8
    13b8:	a0c801eb 	sb	t0,491(a2)
    13bc:	24090001 	li	t1,1
    13c0:	a4c901fc 	sh	t1,508(a2)
    13c4:	8fbf0014 	lw	ra,20(sp)
    13c8:	27bd0018 	addiu	sp,sp,24
    13cc:	03e00008 	jr	ra
    13d0:	00000000 	nop

000013d4 <func_80AC4074>:
    13d4:	27bdffe0 	addiu	sp,sp,-32
    13d8:	afbf001c 	sw	ra,28(sp)
    13dc:	afb00018 	sw	s0,24(sp)
    13e0:	afa40020 	sw	a0,32(sp)
    13e4:	00a08025 	move	s0,a1
    13e8:	afa60028 	sw	a2,40(sp)
    13ec:	0c000000 	jal	0 <func_80AC2CA0>
    13f0:	24a420d8 	addiu	a0,a1,8408
    13f4:	8fa70020 	lw	a3,32(sp)
    13f8:	2401000a 	li	at,10
    13fc:	84ee001c 	lh	t6,28(a3)
    1400:	15c1001e 	bne	t6,at,147c <func_80AC4074+0xa8>
    1404:	24010004 	li	at,4
    1408:	1441001c 	bne	v0,at,147c <func_80AC4074+0xa8>
    140c:	00e02025 	move	a0,a3
    1410:	02002825 	move	a1,s0
    1414:	0c000000 	jal	0 <func_80AC2CA0>
    1418:	26060014 	addiu	a2,s0,20
    141c:	54400054 	bnezl	v0,1570 <L80AC41AC+0x64>
    1420:	8fbf001c 	lw	ra,28(sp)
    1424:	0c000000 	jal	0 <func_80AC2CA0>
    1428:	02002025 	move	a0,s0
    142c:	1040004f 	beqz	v0,156c <L80AC41AC+0x60>
    1430:	3c020001 	lui	v0,0x1
    1434:	00501021 	addu	v0,v0,s0
    1438:	904204bd 	lbu	v0,1213(v0)
    143c:	24010001 	li	at,1
    1440:	02002025 	move	a0,s0
    1444:	10400005 	beqz	v0,145c <func_80AC4074+0x88>
    1448:	00000000 	nop
    144c:	10410007 	beq	v0,at,146c <func_80AC4074+0x98>
    1450:	02002025 	move	a0,s0
    1454:	10000046 	b	1570 <L80AC41AC+0x64>
    1458:	8fbf001c 	lw	ra,28(sp)
    145c:	0c000000 	jal	0 <func_80AC2CA0>
    1460:	8fa50020 	lw	a1,32(sp)
    1464:	10000042 	b	1570 <L80AC41AC+0x64>
    1468:	8fbf001c 	lw	ra,28(sp)
    146c:	0c000000 	jal	0 <func_80AC2CA0>
    1470:	8fa50020 	lw	a1,32(sp)
    1474:	1000003e 	b	1570 <L80AC41AC+0x64>
    1478:	8fbf001c 	lw	ra,28(sp)
    147c:	24010005 	li	at,5
    1480:	5441003b 	bnel	v0,at,1570 <L80AC41AC+0x64>
    1484:	8fbf001c 	lw	ra,28(sp)
    1488:	0c000000 	jal	0 <func_80AC2CA0>
    148c:	02002025 	move	a0,s0
    1490:	50400037 	beqzl	v0,1570 <L80AC41AC+0x64>
    1494:	8fbf001c 	lw	ra,28(sp)
    1498:	0c000000 	jal	0 <func_80AC2CA0>
    149c:	24044818 	li	a0,18456
    14a0:	8fa70020 	lw	a3,32(sp)
    14a4:	90ef01eb 	lbu	t7,491(a3)
    14a8:	2de10007 	sltiu	at,t7,7
    14ac:	10200024 	beqz	at,1540 <L80AC41AC+0x34>
    14b0:	000f7880 	sll	t7,t7,0x2
    14b4:	3c010000 	lui	at,0x0
    14b8:	002f0821 	addu	at,at,t7
    14bc:	8c2f0000 	lw	t7,0(at)
    14c0:	01e00008 	jr	t7
    14c4:	00000000 	nop

000014c8 <L80AC4168>:
    14c8:	02002025 	move	a0,s0
    14cc:	0c000000 	jal	0 <func_80AC2CA0>
    14d0:	240570aa 	li	a1,28842
    14d4:	8fb90020 	lw	t9,32(sp)
    14d8:	24180019 	li	t8,25
    14dc:	10000023 	b	156c <L80AC41AC+0x60>
    14e0:	a73801fc 	sh	t8,508(t9)

000014e4 <L80AC4184>:
    14e4:	02002025 	move	a0,s0
    14e8:	0c000000 	jal	0 <func_80AC2CA0>
    14ec:	00e02825 	move	a1,a3
    14f0:	1000001f 	b	1570 <L80AC41AC+0x64>
    14f4:	8fbf001c 	lw	ra,28(sp)

000014f8 <L80AC4198>:
    14f8:	00e02025 	move	a0,a3
    14fc:	0c000000 	jal	0 <func_80AC2CA0>
    1500:	02002825 	move	a1,s0
    1504:	1000001a 	b	1570 <L80AC41AC+0x64>
    1508:	8fbf001c 	lw	ra,28(sp)

0000150c <L80AC41AC>:
    150c:	3c010001 	lui	at,0x1
    1510:	00300821 	addu	at,at,s0
    1514:	240801d1 	li	t0,465
    1518:	a4281e1a 	sh	t0,7706(at)
    151c:	3c010001 	lui	at,0x1
    1520:	00300821 	addu	at,at,s0
    1524:	24090014 	li	t1,20
    1528:	a0291e15 	sb	t1,7701(at)
    152c:	3c010001 	lui	at,0x1
    1530:	00300821 	addu	at,at,s0
    1534:	240a002e 	li	t2,46
    1538:	1000000c 	b	156c <L80AC41AC+0x60>
    153c:	a02a1e5e 	sb	t2,7774(at)
    1540:	00e02025 	move	a0,a3
    1544:	02002825 	move	a1,s0
    1548:	0c000000 	jal	0 <func_80AC2CA0>
    154c:	26060014 	addiu	a2,s0,20
    1550:	14400006 	bnez	v0,156c <L80AC41AC+0x60>
    1554:	3c040000 	lui	a0,0x0
    1558:	0c000000 	jal	0 <func_80AC2CA0>
    155c:	24840000 	addiu	a0,a0,0
    1560:	02002025 	move	a0,s0
    1564:	0c000000 	jal	0 <func_80AC2CA0>
    1568:	8fa50020 	lw	a1,32(sp)
    156c:	8fbf001c 	lw	ra,28(sp)
    1570:	8fb00018 	lw	s0,24(sp)
    1574:	27bd0020 	addiu	sp,sp,32
    1578:	03e00008 	jr	ra
    157c:	00000000 	nop

00001580 <func_80AC4220>:
    1580:	27bdffe8 	addiu	sp,sp,-24
    1584:	3c020001 	lui	v0,0x1
    1588:	afbf0014 	sw	ra,20(sp)
    158c:	00451021 	addu	v0,v0,a1
    1590:	904204bd 	lbu	v0,1213(v0)
    1594:	00803825 	move	a3,a0
    1598:	00a03025 	move	a2,a1
    159c:	10400006 	beqz	v0,15b8 <func_80AC4220+0x38>
    15a0:	00c02025 	move	a0,a2
    15a4:	24010001 	li	at,1
    15a8:	10410007 	beq	v0,at,15c8 <func_80AC4220+0x48>
    15ac:	00c02025 	move	a0,a2
    15b0:	10000009 	b	15d8 <func_80AC4220+0x58>
    15b4:	00001025 	move	v0,zero
    15b8:	0c000000 	jal	0 <func_80AC2CA0>
    15bc:	00e02825 	move	a1,a3
    15c0:	10000005 	b	15d8 <func_80AC4220+0x58>
    15c4:	24020001 	li	v0,1
    15c8:	0c000000 	jal	0 <func_80AC2CA0>
    15cc:	00e02825 	move	a1,a3
    15d0:	10000001 	b	15d8 <func_80AC4220+0x58>
    15d4:	24020001 	li	v0,1
    15d8:	8fbf0014 	lw	ra,20(sp)
    15dc:	27bd0018 	addiu	sp,sp,24
    15e0:	03e00008 	jr	ra
    15e4:	00000000 	nop

000015e8 <func_80AC4288>:
    15e8:	27bdffe0 	addiu	sp,sp,-32
    15ec:	afb00014 	sw	s0,20(sp)
    15f0:	00808025 	move	s0,a0
    15f4:	afbf001c 	sw	ra,28(sp)
    15f8:	afb10018 	sw	s1,24(sp)
    15fc:	00a08825 	move	s1,a1
    1600:	afa60028 	sw	a2,40(sp)
    1604:	0c000000 	jal	0 <func_80AC2CA0>
    1608:	24a420d8 	addiu	a0,a1,8408
    160c:	24010004 	li	at,4
    1610:	14410036 	bne	v0,at,16ec <func_80AC4288+0x104>
    1614:	02002025 	move	a0,s0
    1618:	02202825 	move	a1,s1
    161c:	0c000000 	jal	0 <func_80AC2CA0>
    1620:	26260014 	addiu	a2,s1,20
    1624:	54400032 	bnezl	v0,16f0 <func_80AC4288+0x108>
    1628:	8fbf001c 	lw	ra,28(sp)
    162c:	0c000000 	jal	0 <func_80AC2CA0>
    1630:	02202025 	move	a0,s1
    1634:	10400009 	beqz	v0,165c <func_80AC4288+0x74>
    1638:	02002025 	move	a0,s0
    163c:	0c000000 	jal	0 <func_80AC2CA0>
    1640:	02202825 	move	a1,s1
    1644:	50400006 	beqzl	v0,1660 <func_80AC4288+0x78>
    1648:	8e020224 	lw	v0,548(s0)
    164c:	0c000000 	jal	0 <func_80AC2CA0>
    1650:	24044808 	li	a0,18440
    1654:	10000026 	b	16f0 <func_80AC4288+0x108>
    1658:	8fbf001c 	lw	ra,28(sp)
    165c:	8e020224 	lw	v0,548(s0)
    1660:	02002025 	move	a0,s0
    1664:	04410011 	bgez	v0,16ac <func_80AC4288+0xc4>
    1668:	00000000 	nop
    166c:	0c000000 	jal	0 <func_80AC2CA0>
    1670:	24050004 	li	a1,4
    1674:	240100ff 	li	at,255
    1678:	1041001c 	beq	v0,at,16ec <func_80AC4288+0x104>
    167c:	304300ff 	andi	v1,v0,0xff
    1680:	240e0004 	li	t6,4
    1684:	a2030252 	sb	v1,594(s0)
    1688:	a60e01fc 	sh	t6,508(s0)
    168c:	02202025 	move	a0,s1
    1690:	0c000000 	jal	0 <func_80AC2CA0>
    1694:	24050006 	li	a1,6
    1698:	ae000288 	sw	zero,648(s0)
    169c:	0c000000 	jal	0 <func_80AC2CA0>
    16a0:	24044809 	li	a0,18441
    16a4:	10000012 	b	16f0 <func_80AC4288+0x108>
    16a8:	8fbf001c 	lw	ra,28(sp)
    16ac:	1840000f 	blez	v0,16ec <func_80AC4288+0x104>
    16b0:	02002025 	move	a0,s0
    16b4:	0c000000 	jal	0 <func_80AC2CA0>
    16b8:	00002825 	move	a1,zero
    16bc:	240100ff 	li	at,255
    16c0:	1041000a 	beq	v0,at,16ec <func_80AC4288+0x104>
    16c4:	304300ff 	andi	v1,v0,0xff
    16c8:	240f0005 	li	t7,5
    16cc:	a2030252 	sb	v1,594(s0)
    16d0:	a60f01fc 	sh	t7,508(s0)
    16d4:	02202025 	move	a0,s1
    16d8:	0c000000 	jal	0 <func_80AC2CA0>
    16dc:	24050006 	li	a1,6
    16e0:	ae0002c0 	sw	zero,704(s0)
    16e4:	0c000000 	jal	0 <func_80AC2CA0>
    16e8:	24044809 	li	a0,18441
    16ec:	8fbf001c 	lw	ra,28(sp)
    16f0:	8fb00014 	lw	s0,20(sp)
    16f4:	8fb10018 	lw	s1,24(sp)
    16f8:	03e00008 	jr	ra
    16fc:	27bd0020 	addiu	sp,sp,32

00001700 <func_80AC43A0>:
    1700:	27bdffe8 	addiu	sp,sp,-24
    1704:	afbf0014 	sw	ra,20(sp)
    1708:	afa40018 	sw	a0,24(sp)
    170c:	afa5001c 	sw	a1,28(sp)
    1710:	afa60020 	sw	a2,32(sp)
    1714:	0c000000 	jal	0 <func_80AC2CA0>
    1718:	24a420d8 	addiu	a0,a1,8408
    171c:	24010005 	li	at,5
    1720:	54410008 	bnel	v0,at,1744 <func_80AC43A0+0x44>
    1724:	8fbf0014 	lw	ra,20(sp)
    1728:	0c000000 	jal	0 <func_80AC2CA0>
    172c:	8fa4001c 	lw	a0,28(sp)
    1730:	10400003 	beqz	v0,1740 <func_80AC43A0+0x40>
    1734:	8fa4001c 	lw	a0,28(sp)
    1738:	0c000000 	jal	0 <func_80AC2CA0>
    173c:	8fa50018 	lw	a1,24(sp)
    1740:	8fbf0014 	lw	ra,20(sp)
    1744:	27bd0018 	addiu	sp,sp,24
    1748:	03e00008 	jr	ra
    174c:	00000000 	nop

00001750 <func_80AC43F0>:
    1750:	27bdffe0 	addiu	sp,sp,-32
    1754:	afb10018 	sw	s1,24(sp)
    1758:	afb00014 	sw	s0,20(sp)
    175c:	00808025 	move	s0,a0
    1760:	00a08825 	move	s1,a1
    1764:	afbf001c 	sw	ra,28(sp)
    1768:	afa60028 	sw	a2,40(sp)
    176c:	3c063f00 	lui	a2,0x3f00
    1770:	3c0541f0 	lui	a1,0x41f0
    1774:	248402d4 	addiu	a0,a0,724
    1778:	0c000000 	jal	0 <func_80AC2CA0>
    177c:	3c074120 	lui	a3,0x4120
    1780:	3c0141ec 	lui	at,0x41ec
    1784:	44812000 	mtc1	at,$f4
    1788:	c60002d4 	lwc1	$f0,724(s0)
    178c:	02002025 	move	a0,s0
    1790:	02202825 	move	a1,s1
    1794:	4600203c 	c.lt.s	$f4,$f0
    1798:	00000000 	nop
    179c:	45020005 	bc1fl	17b4 <func_80AC43F0+0x64>
    17a0:	44060000 	mfc1	a2,$f0
    17a4:	0c000000 	jal	0 <func_80AC2CA0>
    17a8:	3c0641f0 	lui	a2,0x41f0
    17ac:	c60002d4 	lwc1	$f0,724(s0)
    17b0:	44060000 	mfc1	a2,$f0
    17b4:	02002025 	move	a0,s0
    17b8:	0c000000 	jal	0 <func_80AC2CA0>
    17bc:	02202825 	move	a1,s1
    17c0:	3c0141f0 	lui	at,0x41f0
    17c4:	44814000 	mtc1	at,$f8
    17c8:	c60602d4 	lwc1	$f6,724(s0)
    17cc:	02002025 	move	a0,s0
    17d0:	02202825 	move	a1,s1
    17d4:	4606403e 	c.le.s	$f8,$f6
    17d8:	00000000 	nop
    17dc:	45020012 	bc1fl	1828 <func_80AC43F0+0xd8>
    17e0:	ae000224 	sw	zero,548(s0)
    17e4:	0c000000 	jal	0 <func_80AC2CA0>
    17e8:	3c0641f0 	lui	a2,0x41f0
    17ec:	02202025 	move	a0,s1
    17f0:	0c000000 	jal	0 <func_80AC2CA0>
    17f4:	02002825 	move	a1,s0
    17f8:	920f0252 	lbu	t7,594(s0)
    17fc:	240e0006 	li	t6,6
    1800:	a60e01fc 	sh	t6,508(s0)
    1804:	000fc080 	sll	t8,t7,0x2
    1808:	0218c821 	addu	t9,s0,t8
    180c:	8f280200 	lw	t0,512(t9)
    1810:	02202025 	move	a0,s1
    1814:	0c000000 	jal	0 <func_80AC2CA0>
    1818:	9505010e 	lhu	a1,270(t0)
    181c:	10000003 	b	182c <func_80AC43F0+0xdc>
    1820:	8fbf001c 	lw	ra,28(sp)
    1824:	ae000224 	sw	zero,548(s0)
    1828:	8fbf001c 	lw	ra,28(sp)
    182c:	8fb00014 	lw	s0,20(sp)
    1830:	8fb10018 	lw	s1,24(sp)
    1834:	03e00008 	jr	ra
    1838:	27bd0020 	addiu	sp,sp,32

0000183c <func_80AC44DC>:
    183c:	27bdffe0 	addiu	sp,sp,-32
    1840:	afb10018 	sw	s1,24(sp)
    1844:	afb00014 	sw	s0,20(sp)
    1848:	00808025 	move	s0,a0
    184c:	00a08825 	move	s1,a1
    1850:	afbf001c 	sw	ra,28(sp)
    1854:	afa60028 	sw	a2,40(sp)
    1858:	3c063f00 	lui	a2,0x3f00
    185c:	3c05c1f0 	lui	a1,0xc1f0
    1860:	248402d4 	addiu	a0,a0,724
    1864:	0c000000 	jal	0 <func_80AC2CA0>
    1868:	3c074120 	lui	a3,0x4120
    186c:	3c01c1ec 	lui	at,0xc1ec
    1870:	44812000 	mtc1	at,$f4
    1874:	c60002d4 	lwc1	$f0,724(s0)
    1878:	02002025 	move	a0,s0
    187c:	02202825 	move	a1,s1
    1880:	4604003c 	c.lt.s	$f0,$f4
    1884:	00000000 	nop
    1888:	45020005 	bc1fl	18a0 <func_80AC44DC+0x64>
    188c:	44060000 	mfc1	a2,$f0
    1890:	0c000000 	jal	0 <func_80AC2CA0>
    1894:	3c06c1f0 	lui	a2,0xc1f0
    1898:	c60002d4 	lwc1	$f0,724(s0)
    189c:	44060000 	mfc1	a2,$f0
    18a0:	02002025 	move	a0,s0
    18a4:	0c000000 	jal	0 <func_80AC2CA0>
    18a8:	02202825 	move	a1,s1
    18ac:	3c01c1f0 	lui	at,0xc1f0
    18b0:	44813000 	mtc1	at,$f6
    18b4:	c60802d4 	lwc1	$f8,724(s0)
    18b8:	02002025 	move	a0,s0
    18bc:	02202825 	move	a1,s1
    18c0:	4606403e 	c.le.s	$f8,$f6
    18c4:	00000000 	nop
    18c8:	45020012 	bc1fl	1914 <func_80AC44DC+0xd8>
    18cc:	ae000224 	sw	zero,548(s0)
    18d0:	0c000000 	jal	0 <func_80AC2CA0>
    18d4:	3c06c1f0 	lui	a2,0xc1f0
    18d8:	02202025 	move	a0,s1
    18dc:	0c000000 	jal	0 <func_80AC2CA0>
    18e0:	02002825 	move	a1,s0
    18e4:	920f0252 	lbu	t7,594(s0)
    18e8:	240e0007 	li	t6,7
    18ec:	a60e01fc 	sh	t6,508(s0)
    18f0:	000fc080 	sll	t8,t7,0x2
    18f4:	0218c821 	addu	t9,s0,t8
    18f8:	8f280200 	lw	t0,512(t9)
    18fc:	02202025 	move	a0,s1
    1900:	0c000000 	jal	0 <func_80AC2CA0>
    1904:	9505010e 	lhu	a1,270(t0)
    1908:	10000003 	b	1918 <func_80AC44DC+0xdc>
    190c:	8fbf001c 	lw	ra,28(sp)
    1910:	ae000224 	sw	zero,548(s0)
    1914:	8fbf001c 	lw	ra,28(sp)
    1918:	8fb00014 	lw	s0,20(sp)
    191c:	8fb10018 	lw	s1,24(sp)
    1920:	03e00008 	jr	ra
    1924:	27bd0020 	addiu	sp,sp,32

00001928 <func_80AC45C8>:
    1928:	8c830228 	lw	v1,552(a0)
    192c:	90820252 	lbu	v0,594(a0)
    1930:	04610041 	bgez	v1,1a38 <func_80AC45C8+0x110>
    1934:	00000000 	nop
    1938:	304200fe 	andi	v0,v0,0xfe
    193c:	304200ff 	andi	v0,v0,0xff
    1940:	00027080 	sll	t6,v0,0x2
    1944:	008e7821 	addu	t7,a0,t6
    1948:	8df80200 	lw	t8,512(t7)
    194c:	28410004 	slti	at,v0,4
    1950:	13000003 	beqz	t8,1960 <func_80AC45C8+0x38>
    1954:	00000000 	nop
    1958:	03e00008 	jr	ra
    195c:	a0820252 	sb	v0,594(a0)
    1960:	1020001b 	beqz	at,19d0 <func_80AC45C8+0xa8>
    1964:	00401825 	move	v1,v0
    1968:	24450002 	addiu	a1,v0,2
    196c:	30b900ff 	andi	t9,a1,0xff
    1970:	2b210004 	slti	at,t9,4
    1974:	14200002 	bnez	at,1980 <func_80AC45C8+0x58>
    1978:	30a200ff 	andi	v0,a1,0xff
    197c:	00001025 	move	v0,zero
    1980:	1062006c 	beq	v1,v0,1b34 <func_80AC45C8+0x20c>
    1984:	00402825 	move	a1,v0
    1988:	00024080 	sll	t0,v0,0x2
    198c:	00884821 	addu	t1,a0,t0
    1990:	8d2a0200 	lw	t2,512(t1)
    1994:	51400004 	beqzl	t2,19a8 <func_80AC45C8+0x80>
    1998:	24a20002 	addiu	v0,a1,2
    199c:	03e00008 	jr	ra
    19a0:	a0820252 	sb	v0,594(a0)
    19a4:	24a20002 	addiu	v0,a1,2
    19a8:	304200ff 	andi	v0,v0,0xff
    19ac:	28410004 	slti	at,v0,4
    19b0:	14200003 	bnez	at,19c0 <func_80AC45C8+0x98>
    19b4:	00402825 	move	a1,v0
    19b8:	00001025 	move	v0,zero
    19bc:	00002825 	move	a1,zero
    19c0:	5465fff2 	bnel	v1,a1,198c <func_80AC45C8+0x64>
    19c4:	00024080 	sll	t0,v0,0x2
    19c8:	03e00008 	jr	ra
    19cc:	00000000 	nop
    19d0:	24650002 	addiu	a1,v1,2
    19d4:	30ab00ff 	andi	t3,a1,0xff
    19d8:	29610008 	slti	at,t3,8
    19dc:	14200002 	bnez	at,19e8 <func_80AC45C8+0xc0>
    19e0:	30a200ff 	andi	v0,a1,0xff
    19e4:	24020004 	li	v0,4
    19e8:	10620052 	beq	v1,v0,1b34 <func_80AC45C8+0x20c>
    19ec:	00402825 	move	a1,v0
    19f0:	00026080 	sll	t4,v0,0x2
    19f4:	008c6821 	addu	t5,a0,t4
    19f8:	8dae0200 	lw	t6,512(t5)
    19fc:	51c00004 	beqzl	t6,1a10 <func_80AC45C8+0xe8>
    1a00:	24a20002 	addiu	v0,a1,2
    1a04:	03e00008 	jr	ra
    1a08:	a0820252 	sb	v0,594(a0)
    1a0c:	24a20002 	addiu	v0,a1,2
    1a10:	304200ff 	andi	v0,v0,0xff
    1a14:	28410008 	slti	at,v0,8
    1a18:	14200003 	bnez	at,1a28 <func_80AC45C8+0x100>
    1a1c:	00402825 	move	a1,v0
    1a20:	24020004 	li	v0,4
    1a24:	24050004 	li	a1,4
    1a28:	5465fff2 	bnel	v1,a1,19f4 <func_80AC45C8+0xcc>
    1a2c:	00026080 	sll	t4,v0,0x2
    1a30:	03e00008 	jr	ra
    1a34:	00000000 	nop
    1a38:	1860003e 	blez	v1,1b34 <func_80AC45C8+0x20c>
    1a3c:	34420001 	ori	v0,v0,0x1
    1a40:	304200ff 	andi	v0,v0,0xff
    1a44:	00027880 	sll	t7,v0,0x2
    1a48:	008fc021 	addu	t8,a0,t7
    1a4c:	8f190200 	lw	t9,512(t8)
    1a50:	28410004 	slti	at,v0,4
    1a54:	13200003 	beqz	t9,1a64 <func_80AC45C8+0x13c>
    1a58:	00000000 	nop
    1a5c:	03e00008 	jr	ra
    1a60:	a0820252 	sb	v0,594(a0)
    1a64:	1020001b 	beqz	at,1ad4 <func_80AC45C8+0x1ac>
    1a68:	00401825 	move	v1,v0
    1a6c:	24450002 	addiu	a1,v0,2
    1a70:	30a800ff 	andi	t0,a1,0xff
    1a74:	29010004 	slti	at,t0,4
    1a78:	14200002 	bnez	at,1a84 <func_80AC45C8+0x15c>
    1a7c:	30a200ff 	andi	v0,a1,0xff
    1a80:	24020001 	li	v0,1
    1a84:	1062002b 	beq	v1,v0,1b34 <func_80AC45C8+0x20c>
    1a88:	00402825 	move	a1,v0
    1a8c:	00024880 	sll	t1,v0,0x2
    1a90:	00895021 	addu	t2,a0,t1
    1a94:	8d4b0200 	lw	t3,512(t2)
    1a98:	51600004 	beqzl	t3,1aac <func_80AC45C8+0x184>
    1a9c:	24a20002 	addiu	v0,a1,2
    1aa0:	03e00008 	jr	ra
    1aa4:	a0820252 	sb	v0,594(a0)
    1aa8:	24a20002 	addiu	v0,a1,2
    1aac:	304200ff 	andi	v0,v0,0xff
    1ab0:	28410004 	slti	at,v0,4
    1ab4:	14200003 	bnez	at,1ac4 <func_80AC45C8+0x19c>
    1ab8:	00402825 	move	a1,v0
    1abc:	24020001 	li	v0,1
    1ac0:	24050001 	li	a1,1
    1ac4:	5465fff2 	bnel	v1,a1,1a90 <func_80AC45C8+0x168>
    1ac8:	00024880 	sll	t1,v0,0x2
    1acc:	03e00008 	jr	ra
    1ad0:	00000000 	nop
    1ad4:	24650002 	addiu	a1,v1,2
    1ad8:	30ac00ff 	andi	t4,a1,0xff
    1adc:	29810008 	slti	at,t4,8
    1ae0:	14200002 	bnez	at,1aec <func_80AC45C8+0x1c4>
    1ae4:	30a200ff 	andi	v0,a1,0xff
    1ae8:	24020005 	li	v0,5
    1aec:	10620011 	beq	v1,v0,1b34 <func_80AC45C8+0x20c>
    1af0:	00402825 	move	a1,v0
    1af4:	00026880 	sll	t5,v0,0x2
    1af8:	008d7021 	addu	t6,a0,t5
    1afc:	8dcf0200 	lw	t7,512(t6)
    1b00:	51e00004 	beqzl	t7,1b14 <func_80AC45C8+0x1ec>
    1b04:	24a20002 	addiu	v0,a1,2
    1b08:	03e00008 	jr	ra
    1b0c:	a0820252 	sb	v0,594(a0)
    1b10:	24a20002 	addiu	v0,a1,2
    1b14:	304200ff 	andi	v0,v0,0xff
    1b18:	28410008 	slti	at,v0,8
    1b1c:	14200003 	bnez	at,1b2c <func_80AC45C8+0x204>
    1b20:	00402825 	move	a1,v0
    1b24:	24020005 	li	v0,5
    1b28:	24050005 	li	a1,5
    1b2c:	5465fff2 	bnel	v1,a1,1af8 <func_80AC45C8+0x1d0>
    1b30:	00026880 	sll	t5,v0,0x2
    1b34:	03e00008 	jr	ra
    1b38:	00000000 	nop

00001b3c <func_80AC47DC>:
    1b3c:	27bdffd8 	addiu	sp,sp,-40
    1b40:	afbf001c 	sw	ra,28(sp)
    1b44:	afb00018 	sw	s0,24(sp)
    1b48:	afa40028 	sw	a0,40(sp)
    1b4c:	90ae0252 	lbu	t6,594(a1)
    1b50:	00a08025 	move	s0,a1
    1b54:	00a02025 	move	a0,a1
    1b58:	000e7880 	sll	t7,t6,0x2
    1b5c:	00afc021 	addu	t8,a1,t7
    1b60:	8f190200 	lw	t9,512(t8)
    1b64:	8fa50028 	lw	a1,40(sp)
    1b68:	0c000000 	jal	0 <func_80AC2CA0>
    1b6c:	afb90024 	sw	t9,36(sp)
    1b70:	10400003 	beqz	v0,1b80 <func_80AC47DC+0x44>
    1b74:	00000000 	nop
    1b78:	10000052 	b	1cc4 <L80AC4934+0x30>
    1b7c:	24020001 	li	v0,1
    1b80:	0c000000 	jal	0 <func_80AC2CA0>
    1b84:	8fa40028 	lw	a0,40(sp)
    1b88:	5040004e 	beqzl	v0,1cc4 <L80AC4934+0x30>
    1b8c:	00001025 	move	v0,zero
    1b90:	8fa20024 	lw	v0,36(sp)
    1b94:	24010026 	li	at,38
    1b98:	8448001c 	lh	t0,28(v0)
    1b9c:	11010044 	beq	t0,at,1cb0 <L80AC4934+0x1c>
    1ba0:	00000000 	nop
    1ba4:	844901a8 	lh	t1,424(v0)
    1ba8:	15200041 	bnez	t1,1cb0 <L80AC4934+0x1c>
    1bac:	00000000 	nop
    1bb0:	920b0252 	lbu	t3,594(s0)
    1bb4:	860a01fc 	lh	t2,508(s0)
    1bb8:	000b6080 	sll	t4,t3,0x2
    1bbc:	020c6821 	addu	t5,s0,t4
    1bc0:	a60a01fe 	sh	t2,510(s0)
    1bc4:	8dae0200 	lw	t6,512(t5)
    1bc8:	8fa40028 	lw	a0,40(sp)
    1bcc:	0c000000 	jal	0 <func_80AC2CA0>
    1bd0:	95c501a0 	lhu	a1,416(t6)
    1bd4:	ae000288 	sw	zero,648(s0)
    1bd8:	ae0002c0 	sw	zero,704(s0)
    1bdc:	8faf0024 	lw	t7,36(sp)
    1be0:	85f8001c 	lh	t8,28(t7)
    1be4:	2719fffd 	addiu	t9,t8,-3
    1be8:	2f21002d 	sltiu	at,t9,45
    1bec:	10200029 	beqz	at,1c94 <L80AC4934>
    1bf0:	0019c880 	sll	t9,t9,0x2
    1bf4:	3c010000 	lui	at,0x0
    1bf8:	00390821 	addu	at,at,t9
    1bfc:	8c390000 	lw	t9,0(at)
    1c00:	03200008 	jr	t9
    1c04:	00000000 	nop

00001c08 <L80AC48A8>:
    1c08:	0c000000 	jal	0 <func_80AC2CA0>
    1c0c:	24044808 	li	a0,18440
    1c10:	24080018 	li	t0,24
    1c14:	a2000251 	sb	zero,593(s0)
    1c18:	a60801fc 	sh	t0,508(s0)
    1c1c:	10000029 	b	1cc4 <L80AC4934+0x30>
    1c20:	24020001 	li	v0,1

00001c24 <L80AC48C4>:
    1c24:	0c000000 	jal	0 <func_80AC2CA0>
    1c28:	24044808 	li	a0,18440
    1c2c:	2409000a 	li	t1,10
    1c30:	a2000251 	sb	zero,593(s0)
    1c34:	a60901fc 	sh	t1,508(s0)
    1c38:	10000022 	b	1cc4 <L80AC4934+0x30>
    1c3c:	24020001 	li	v0,1

00001c40 <L80AC48E0>:
    1c40:	0c000000 	jal	0 <func_80AC2CA0>
    1c44:	24044808 	li	a0,18440
    1c48:	240a000b 	li	t2,11
    1c4c:	a2000251 	sb	zero,593(s0)
    1c50:	a60a01fc 	sh	t2,508(s0)
    1c54:	1000001b 	b	1cc4 <L80AC4934+0x30>
    1c58:	24020001 	li	v0,1

00001c5c <L80AC48FC>:
    1c5c:	0c000000 	jal	0 <func_80AC2CA0>
    1c60:	24044806 	li	a0,18438
    1c64:	240b000c 	li	t3,12
    1c68:	a2000251 	sb	zero,593(s0)
    1c6c:	a60b01fc 	sh	t3,508(s0)
    1c70:	10000014 	b	1cc4 <L80AC4934+0x30>
    1c74:	24020001 	li	v0,1

00001c78 <L80AC4918>:
    1c78:	0c000000 	jal	0 <func_80AC2CA0>
    1c7c:	24044808 	li	a0,18440
    1c80:	240c000d 	li	t4,13
    1c84:	a2000251 	sb	zero,593(s0)
    1c88:	a60c01fc 	sh	t4,508(s0)
    1c8c:	1000000d 	b	1cc4 <L80AC4934+0x30>
    1c90:	24020001 	li	v0,1

00001c94 <L80AC4934>:
    1c94:	0c000000 	jal	0 <func_80AC2CA0>
    1c98:	24044808 	li	a0,18440
    1c9c:	240d0009 	li	t5,9
    1ca0:	a2000251 	sb	zero,593(s0)
    1ca4:	a60d01fc 	sh	t5,508(s0)
    1ca8:	10000006 	b	1cc4 <L80AC4934+0x30>
    1cac:	24020001 	li	v0,1
    1cb0:	0c000000 	jal	0 <func_80AC2CA0>
    1cb4:	24044806 	li	a0,18438
    1cb8:	10000002 	b	1cc4 <L80AC4934+0x30>
    1cbc:	24020001 	li	v0,1
    1cc0:	00001025 	move	v0,zero
    1cc4:	8fbf001c 	lw	ra,28(sp)
    1cc8:	8fb00018 	lw	s0,24(sp)
    1ccc:	27bd0028 	addiu	sp,sp,40
    1cd0:	03e00008 	jr	ra
    1cd4:	00000000 	nop

00001cd8 <func_80AC4978>:
    1cd8:	27bdffd0 	addiu	sp,sp,-48
    1cdc:	afbf001c 	sw	ra,28(sp)
    1ce0:	afb00018 	sw	s0,24(sp)
    1ce4:	afa50034 	sw	a1,52(sp)
    1ce8:	afa60038 	sw	a2,56(sp)
    1cec:	908e0252 	lbu	t6,594(a0)
    1cf0:	00808025 	move	s0,a0
    1cf4:	0c000000 	jal	0 <func_80AC2CA0>
    1cf8:	a3ae0027 	sb	t6,39(sp)
    1cfc:	14400009 	bnez	v0,1d24 <func_80AC4978+0x4c>
    1d00:	3c040000 	lui	a0,0x0
    1d04:	3c050000 	lui	a1,0x0
    1d08:	24a50000 	addiu	a1,a1,0
    1d0c:	24840000 	addiu	a0,a0,0
    1d10:	0c000000 	jal	0 <func_80AC2CA0>
    1d14:	24060868 	li	a2,2152
    1d18:	240f0003 	li	t7,3
    1d1c:	1000005e 	b	1e98 <func_80AC4978+0x1c0>
    1d20:	a60f01e6 	sh	t7,486(s0)
    1d24:	860201e6 	lh	v0,486(s0)
    1d28:	241900ff 	li	t9,255
    1d2c:	24080001 	li	t0,1
    1d30:	10400004 	beqz	v0,1d44 <func_80AC4978+0x6c>
    1d34:	02002825 	move	a1,s0
    1d38:	2458ffff 	addiu	t8,v0,-1
    1d3c:	10000056 	b	1e98 <func_80AC4978+0x1c0>
    1d40:	a61801e6 	sh	t8,486(s0)
    1d44:	a2190251 	sb	t9,593(s0)
    1d48:	ae0802c0 	sw	t0,704(s0)
    1d4c:	0c000000 	jal	0 <func_80AC2CA0>
    1d50:	8fa40034 	lw	a0,52(sp)
    1d54:	8fa40034 	lw	a0,52(sp)
    1d58:	0c000000 	jal	0 <func_80AC2CA0>
    1d5c:	248420d8 	addiu	a0,a0,8408
    1d60:	24010005 	li	at,5
    1d64:	1441004c 	bne	v0,at,1e98 <func_80AC4978+0x1c0>
    1d68:	8fa40034 	lw	a0,52(sp)
    1d6c:	02002825 	move	a1,s0
    1d70:	0c000000 	jal	0 <func_80AC2CA0>
    1d74:	24860014 	addiu	a2,a0,20
    1d78:	54400048 	bnezl	v0,1e9c <func_80AC4978+0x1c4>
    1d7c:	8fbf001c 	lw	ra,28(sp)
    1d80:	9209022c 	lbu	t1,556(s0)
    1d84:	5120001c 	beqzl	t1,1df8 <func_80AC4978+0x120>
    1d88:	8e020224 	lw	v0,548(s0)
    1d8c:	8e020224 	lw	v0,548(s0)
    1d90:	02002025 	move	a0,s0
    1d94:	24060004 	li	a2,4
    1d98:	1840000c 	blez	v0,1dcc <func_80AC4978+0xf4>
    1d9c:	00000000 	nop
    1da0:	0c000000 	jal	0 <func_80AC2CA0>
    1da4:	92050252 	lbu	a1,594(s0)
    1da8:	240100ff 	li	at,255
    1dac:	10410003 	beq	v0,at,1dbc <func_80AC4978+0xe4>
    1db0:	8fa40034 	lw	a0,52(sp)
    1db4:	1000002b 	b	1e64 <func_80AC4978+0x18c>
    1db8:	a2020252 	sb	v0,594(s0)
    1dbc:	0c000000 	jal	0 <func_80AC2CA0>
    1dc0:	02002825 	move	a1,s0
    1dc4:	10000035 	b	1e9c <func_80AC4978+0x1c4>
    1dc8:	8fbf001c 	lw	ra,28(sp)
    1dcc:	04410025 	bgez	v0,1e64 <func_80AC4978+0x18c>
    1dd0:	02002025 	move	a0,s0
    1dd4:	92050252 	lbu	a1,594(s0)
    1dd8:	0c000000 	jal	0 <func_80AC2CA0>
    1ddc:	24060008 	li	a2,8
    1de0:	240100ff 	li	at,255
    1de4:	1041001f 	beq	v0,at,1e64 <func_80AC4978+0x18c>
    1de8:	00000000 	nop
    1dec:	1000001d 	b	1e64 <func_80AC4978+0x18c>
    1df0:	a2020252 	sb	v0,594(s0)
    1df4:	8e020224 	lw	v0,548(s0)
    1df8:	1840000f 	blez	v0,1e38 <func_80AC4978+0x160>
    1dfc:	284101f5 	slti	at,v0,501
    1e00:	1420000d 	bnez	at,1e38 <func_80AC4978+0x160>
    1e04:	02002025 	move	a0,s0
    1e08:	92050252 	lbu	a1,594(s0)
    1e0c:	0c000000 	jal	0 <func_80AC2CA0>
    1e10:	24060004 	li	a2,4
    1e14:	240100ff 	li	at,255
    1e18:	10410003 	beq	v0,at,1e28 <func_80AC4978+0x150>
    1e1c:	8fa40034 	lw	a0,52(sp)
    1e20:	10000010 	b	1e64 <func_80AC4978+0x18c>
    1e24:	a2020252 	sb	v0,594(s0)
    1e28:	0c000000 	jal	0 <func_80AC2CA0>
    1e2c:	02002825 	move	a1,s0
    1e30:	1000001a 	b	1e9c <func_80AC4978+0x1c4>
    1e34:	8fbf001c 	lw	ra,28(sp)
    1e38:	0441000a 	bgez	v0,1e64 <func_80AC4978+0x18c>
    1e3c:	2841fe0c 	slti	at,v0,-500
    1e40:	10200008 	beqz	at,1e64 <func_80AC4978+0x18c>
    1e44:	02002025 	move	a0,s0
    1e48:	92050252 	lbu	a1,594(s0)
    1e4c:	0c000000 	jal	0 <func_80AC2CA0>
    1e50:	24060008 	li	a2,8
    1e54:	240100ff 	li	at,255
    1e58:	10410002 	beq	v0,at,1e64 <func_80AC4978+0x18c>
    1e5c:	00000000 	nop
    1e60:	a2020252 	sb	v0,594(s0)
    1e64:	0c000000 	jal	0 <func_80AC2CA0>
    1e68:	02002025 	move	a0,s0
    1e6c:	92020252 	lbu	v0,594(s0)
    1e70:	93aa0027 	lbu	t2,39(sp)
    1e74:	00025880 	sll	t3,v0,0x2
    1e78:	11420007 	beq	t2,v0,1e98 <func_80AC4978+0x1c0>
    1e7c:	020b6021 	addu	t4,s0,t3
    1e80:	8d8d0200 	lw	t5,512(t4)
    1e84:	8fa40034 	lw	a0,52(sp)
    1e88:	0c000000 	jal	0 <func_80AC2CA0>
    1e8c:	95a5010e 	lhu	a1,270(t5)
    1e90:	0c000000 	jal	0 <func_80AC2CA0>
    1e94:	24044809 	li	a0,18441
    1e98:	8fbf001c 	lw	ra,28(sp)
    1e9c:	8fb00018 	lw	s0,24(sp)
    1ea0:	27bd0030 	addiu	sp,sp,48
    1ea4:	03e00008 	jr	ra
    1ea8:	00000000 	nop

00001eac <func_80AC4B4C>:
    1eac:	27bdffd0 	addiu	sp,sp,-48
    1eb0:	afbf001c 	sw	ra,28(sp)
    1eb4:	afb00018 	sw	s0,24(sp)
    1eb8:	afa50034 	sw	a1,52(sp)
    1ebc:	afa60038 	sw	a2,56(sp)
    1ec0:	908e0252 	lbu	t6,594(a0)
    1ec4:	00808025 	move	s0,a0
    1ec8:	0c000000 	jal	0 <func_80AC2CA0>
    1ecc:	a3ae0027 	sb	t6,39(sp)
    1ed0:	14400009 	bnez	v0,1ef8 <func_80AC4B4C+0x4c>
    1ed4:	3c040000 	lui	a0,0x0
    1ed8:	3c050000 	lui	a1,0x0
    1edc:	24a50000 	addiu	a1,a1,0
    1ee0:	24840000 	addiu	a0,a0,0
    1ee4:	0c000000 	jal	0 <func_80AC2CA0>
    1ee8:	240608c4 	li	a2,2244
    1eec:	240f0003 	li	t7,3
    1ef0:	1000005e 	b	206c <func_80AC4B4C+0x1c0>
    1ef4:	a60f01e6 	sh	t7,486(s0)
    1ef8:	860201e6 	lh	v0,486(s0)
    1efc:	241900ff 	li	t9,255
    1f00:	24080001 	li	t0,1
    1f04:	10400004 	beqz	v0,1f18 <func_80AC4B4C+0x6c>
    1f08:	02002825 	move	a1,s0
    1f0c:	2458ffff 	addiu	t8,v0,-1
    1f10:	10000056 	b	206c <func_80AC4B4C+0x1c0>
    1f14:	a61801e6 	sh	t8,486(s0)
    1f18:	a2190251 	sb	t9,593(s0)
    1f1c:	ae080288 	sw	t0,648(s0)
    1f20:	0c000000 	jal	0 <func_80AC2CA0>
    1f24:	8fa40034 	lw	a0,52(sp)
    1f28:	8fa40034 	lw	a0,52(sp)
    1f2c:	0c000000 	jal	0 <func_80AC2CA0>
    1f30:	248420d8 	addiu	a0,a0,8408
    1f34:	24010005 	li	at,5
    1f38:	1441004c 	bne	v0,at,206c <func_80AC4B4C+0x1c0>
    1f3c:	8fa40034 	lw	a0,52(sp)
    1f40:	02002825 	move	a1,s0
    1f44:	0c000000 	jal	0 <func_80AC2CA0>
    1f48:	24860014 	addiu	a2,a0,20
    1f4c:	54400048 	bnezl	v0,2070 <func_80AC4B4C+0x1c4>
    1f50:	8fbf001c 	lw	ra,28(sp)
    1f54:	9209022c 	lbu	t1,556(s0)
    1f58:	5120001c 	beqzl	t1,1fcc <func_80AC4B4C+0x120>
    1f5c:	8e020224 	lw	v0,548(s0)
    1f60:	8e020224 	lw	v0,548(s0)
    1f64:	02002025 	move	a0,s0
    1f68:	00003025 	move	a2,zero
    1f6c:	0441000c 	bgez	v0,1fa0 <func_80AC4B4C+0xf4>
    1f70:	00000000 	nop
    1f74:	0c000000 	jal	0 <func_80AC2CA0>
    1f78:	92050252 	lbu	a1,594(s0)
    1f7c:	240100ff 	li	at,255
    1f80:	10410003 	beq	v0,at,1f90 <func_80AC4B4C+0xe4>
    1f84:	8fa40034 	lw	a0,52(sp)
    1f88:	1000002b 	b	2038 <func_80AC4B4C+0x18c>
    1f8c:	a2020252 	sb	v0,594(s0)
    1f90:	0c000000 	jal	0 <func_80AC2CA0>
    1f94:	02002825 	move	a1,s0
    1f98:	10000035 	b	2070 <func_80AC4B4C+0x1c4>
    1f9c:	8fbf001c 	lw	ra,28(sp)
    1fa0:	18400025 	blez	v0,2038 <func_80AC4B4C+0x18c>
    1fa4:	02002025 	move	a0,s0
    1fa8:	92050252 	lbu	a1,594(s0)
    1fac:	0c000000 	jal	0 <func_80AC2CA0>
    1fb0:	24060004 	li	a2,4
    1fb4:	240100ff 	li	at,255
    1fb8:	1041001f 	beq	v0,at,2038 <func_80AC4B4C+0x18c>
    1fbc:	00000000 	nop
    1fc0:	1000001d 	b	2038 <func_80AC4B4C+0x18c>
    1fc4:	a2020252 	sb	v0,594(s0)
    1fc8:	8e020224 	lw	v0,548(s0)
    1fcc:	0441000f 	bgez	v0,200c <func_80AC4B4C+0x160>
    1fd0:	2841fe0c 	slti	at,v0,-500
    1fd4:	1020000d 	beqz	at,200c <func_80AC4B4C+0x160>
    1fd8:	02002025 	move	a0,s0
    1fdc:	92050252 	lbu	a1,594(s0)
    1fe0:	0c000000 	jal	0 <func_80AC2CA0>
    1fe4:	00003025 	move	a2,zero
    1fe8:	240100ff 	li	at,255
    1fec:	10410003 	beq	v0,at,1ffc <func_80AC4B4C+0x150>
    1ff0:	8fa40034 	lw	a0,52(sp)
    1ff4:	10000010 	b	2038 <func_80AC4B4C+0x18c>
    1ff8:	a2020252 	sb	v0,594(s0)
    1ffc:	0c000000 	jal	0 <func_80AC2CA0>
    2000:	02002825 	move	a1,s0
    2004:	1000001a 	b	2070 <func_80AC4B4C+0x1c4>
    2008:	8fbf001c 	lw	ra,28(sp)
    200c:	1840000a 	blez	v0,2038 <func_80AC4B4C+0x18c>
    2010:	284101f5 	slti	at,v0,501
    2014:	14200008 	bnez	at,2038 <func_80AC4B4C+0x18c>
    2018:	02002025 	move	a0,s0
    201c:	92050252 	lbu	a1,594(s0)
    2020:	0c000000 	jal	0 <func_80AC2CA0>
    2024:	24060004 	li	a2,4
    2028:	240100ff 	li	at,255
    202c:	10410002 	beq	v0,at,2038 <func_80AC4B4C+0x18c>
    2030:	00000000 	nop
    2034:	a2020252 	sb	v0,594(s0)
    2038:	0c000000 	jal	0 <func_80AC2CA0>
    203c:	02002025 	move	a0,s0
    2040:	92020252 	lbu	v0,594(s0)
    2044:	93aa0027 	lbu	t2,39(sp)
    2048:	00025880 	sll	t3,v0,0x2
    204c:	11420007 	beq	t2,v0,206c <func_80AC4B4C+0x1c0>
    2050:	020b6021 	addu	t4,s0,t3
    2054:	8d8d0200 	lw	t5,512(t4)
    2058:	8fa40034 	lw	a0,52(sp)
    205c:	0c000000 	jal	0 <func_80AC2CA0>
    2060:	95a5010e 	lhu	a1,270(t5)
    2064:	0c000000 	jal	0 <func_80AC2CA0>
    2068:	24044809 	li	a0,18441
    206c:	8fbf001c 	lw	ra,28(sp)
    2070:	8fb00018 	lw	s0,24(sp)
    2074:	27bd0030 	addiu	sp,sp,48
    2078:	03e00008 	jr	ra
    207c:	00000000 	nop

00002080 <func_80AC4D20>:
    2080:	27bdffe0 	addiu	sp,sp,-32
    2084:	afb00018 	sw	s0,24(sp)
    2088:	00808025 	move	s0,a0
    208c:	afbf001c 	sw	ra,28(sp)
    2090:	afa50024 	sw	a1,36(sp)
    2094:	afa60028 	sw	a2,40(sp)
    2098:	3c063f00 	lui	a2,0x3f00
    209c:	24050000 	li	a1,0
    20a0:	248402d4 	addiu	a0,a0,724
    20a4:	0c000000 	jal	0 <func_80AC2CA0>
    20a8:	3c074120 	lui	a3,0x4120
    20ac:	3c013f00 	lui	at,0x3f00
    20b0:	44812000 	mtc1	at,$f4
    20b4:	c60002d4 	lwc1	$f0,724(s0)
    20b8:	3c01bf00 	lui	at,0xbf00
    20bc:	4604003c 	c.lt.s	$f0,$f4
    20c0:	00000000 	nop
    20c4:	4502000c 	bc1fl	20f8 <func_80AC4D20+0x78>
    20c8:	44060000 	mfc1	a2,$f0
    20cc:	44813000 	mtc1	at,$f6
    20d0:	02002025 	move	a0,s0
    20d4:	8fa50024 	lw	a1,36(sp)
    20d8:	4600303c 	c.lt.s	$f6,$f0
    20dc:	00000000 	nop
    20e0:	45020005 	bc1fl	20f8 <func_80AC4D20+0x78>
    20e4:	44060000 	mfc1	a2,$f0
    20e8:	0c000000 	jal	0 <func_80AC2CA0>
    20ec:	24060000 	li	a2,0
    20f0:	c60002d4 	lwc1	$f0,724(s0)
    20f4:	44060000 	mfc1	a2,$f0
    20f8:	02002025 	move	a0,s0
    20fc:	0c000000 	jal	0 <func_80AC2CA0>
    2100:	8fa50024 	lw	a1,36(sp)
    2104:	44804000 	mtc1	zero,$f8
    2108:	c60a02d4 	lwc1	$f10,724(s0)
    210c:	8fa40024 	lw	a0,36(sp)
    2110:	460a4032 	c.eq.s	$f8,$f10
    2114:	00000000 	nop
    2118:	45020004 	bc1fl	212c <func_80AC4D20+0xac>
    211c:	8fbf001c 	lw	ra,28(sp)
    2120:	0c000000 	jal	0 <func_80AC2CA0>
    2124:	02002825 	move	a1,s0
    2128:	8fbf001c 	lw	ra,28(sp)
    212c:	8fb00018 	lw	s0,24(sp)
    2130:	27bd0020 	addiu	sp,sp,32
    2134:	03e00008 	jr	ra
    2138:	00000000 	nop

0000213c <func_80AC4DDC>:
    213c:	27bdffe0 	addiu	sp,sp,-32
    2140:	afbf001c 	sw	ra,28(sp)
    2144:	afb00018 	sw	s0,24(sp)
    2148:	00808025 	move	s0,a0
    214c:	afa50024 	sw	a1,36(sp)
    2150:	0c000000 	jal	0 <func_80AC2CA0>
    2154:	afa60028 	sw	a2,40(sp)
    2158:	14400009 	bnez	v0,2180 <func_80AC4DDC+0x44>
    215c:	260402d4 	addiu	a0,s0,724
    2160:	3c040000 	lui	a0,0x0
    2164:	3c050000 	lui	a1,0x0
    2168:	24a50000 	addiu	a1,a1,0
    216c:	24840000 	addiu	a0,a0,0
    2170:	0c000000 	jal	0 <func_80AC2CA0>
    2174:	24060933 	li	a2,2355
    2178:	10000027 	b	2218 <func_80AC4DDC+0xdc>
    217c:	8fbf001c 	lw	ra,28(sp)
    2180:	24050000 	li	a1,0
    2184:	3c063f00 	lui	a2,0x3f00
    2188:	0c000000 	jal	0 <func_80AC2CA0>
    218c:	3c074120 	lui	a3,0x4120
    2190:	3c013f00 	lui	at,0x3f00
    2194:	44812000 	mtc1	at,$f4
    2198:	c60002d4 	lwc1	$f0,724(s0)
    219c:	3c01bf00 	lui	at,0xbf00
    21a0:	4604003c 	c.lt.s	$f0,$f4
    21a4:	00000000 	nop
    21a8:	4502000c 	bc1fl	21dc <func_80AC4DDC+0xa0>
    21ac:	44060000 	mfc1	a2,$f0
    21b0:	44813000 	mtc1	at,$f6
    21b4:	02002025 	move	a0,s0
    21b8:	8fa50024 	lw	a1,36(sp)
    21bc:	4600303c 	c.lt.s	$f6,$f0
    21c0:	00000000 	nop
    21c4:	45020005 	bc1fl	21dc <func_80AC4DDC+0xa0>
    21c8:	44060000 	mfc1	a2,$f0
    21cc:	0c000000 	jal	0 <func_80AC2CA0>
    21d0:	24060000 	li	a2,0
    21d4:	c60002d4 	lwc1	$f0,724(s0)
    21d8:	44060000 	mfc1	a2,$f0
    21dc:	02002025 	move	a0,s0
    21e0:	0c000000 	jal	0 <func_80AC2CA0>
    21e4:	8fa50024 	lw	a1,36(sp)
    21e8:	44804000 	mtc1	zero,$f8
    21ec:	c60a02d4 	lwc1	$f10,724(s0)
    21f0:	8fa40024 	lw	a0,36(sp)
    21f4:	460a4032 	c.eq.s	$f8,$f10
    21f8:	00000000 	nop
    21fc:	45020006 	bc1fl	2218 <func_80AC4DDC+0xdc>
    2200:	8fbf001c 	lw	ra,28(sp)
    2204:	0c000000 	jal	0 <func_80AC2CA0>
    2208:	24053010 	li	a1,12304
    220c:	240e0014 	li	t6,20
    2210:	a60e01fc 	sh	t6,508(s0)
    2214:	8fbf001c 	lw	ra,28(sp)
    2218:	8fb00018 	lw	s0,24(sp)
    221c:	27bd0020 	addiu	sp,sp,32
    2220:	03e00008 	jr	ra
    2224:	00000000 	nop

00002228 <func_80AC4EC8>:
    2228:	27bdffd0 	addiu	sp,sp,-48
    222c:	afbf0024 	sw	ra,36(sp)
    2230:	afb10020 	sw	s1,32(sp)
    2234:	afb0001c 	sw	s0,28(sp)
    2238:	8c8e1c44 	lw	t6,7236(a0)
    223c:	00808025 	move	s0,a0
    2240:	3c040000 	lui	a0,0x0
    2244:	00a08825 	move	s1,a1
    2248:	24840000 	addiu	a0,a0,0
    224c:	0c000000 	jal	0 <func_80AC2CA0>
    2250:	afae002c 	sw	t6,44(sp)
    2254:	922f0252 	lbu	t7,594(s1)
    2258:	3c0142f0 	lui	at,0x42f0
    225c:	44810000 	mtc1	at,$f0
    2260:	000fc080 	sll	t8,t7,0x2
    2264:	0238c821 	addu	t9,s1,t8
    2268:	8f280200 	lw	t0,512(t9)
    226c:	44070000 	mfc1	a3,$f0
    2270:	02202025 	move	a0,s1
    2274:	8d0601a4 	lw	a2,420(t0)
    2278:	02002825 	move	a1,s0
    227c:	0c000000 	jal	0 <func_80AC2CA0>
    2280:	e7a00010 	swc1	$f0,16(sp)
    2284:	3c010001 	lui	at,0x1
    2288:	8fa2002c 	lw	v0,44(sp)
    228c:	00300821 	addu	at,at,s0
    2290:	24090036 	li	t1,54
    2294:	a02903dc 	sb	t1,988(at)
    2298:	3c010001 	lui	at,0x1
    229c:	00300821 	addu	at,at,s0
    22a0:	240a0004 	li	t2,4
    22a4:	a02a04bf 	sb	t2,1215(at)
    22a8:	8c4b0680 	lw	t3,1664(v0)
    22ac:	3c01dfff 	lui	at,0xdfff
    22b0:	3421ffff 	ori	at,at,0xffff
    22b4:	01616024 	and	t4,t3,at
    22b8:	02002025 	move	a0,s0
    22bc:	24050001 	li	a1,1
    22c0:	0c000000 	jal	0 <func_80AC2CA0>
    22c4:	ac4c0680 	sw	t4,1664(v0)
    22c8:	0c000000 	jal	0 <func_80AC2CA0>
    22cc:	24040032 	li	a0,50
    22d0:	a2200251 	sb	zero,593(s1)
    22d4:	02202025 	move	a0,s1
    22d8:	02002825 	move	a1,s0
    22dc:	0c000000 	jal	0 <func_80AC2CA0>
    22e0:	24060000 	li	a2,0
    22e4:	240d000f 	li	t5,15
    22e8:	3c040000 	lui	a0,0x0
    22ec:	a62d01fc 	sh	t5,508(s1)
    22f0:	0c000000 	jal	0 <func_80AC2CA0>
    22f4:	24840000 	addiu	a0,a0,0
    22f8:	8fbf0024 	lw	ra,36(sp)
    22fc:	8fb0001c 	lw	s0,28(sp)
    2300:	8fb10020 	lw	s1,32(sp)
    2304:	03e00008 	jr	ra
    2308:	27bd0030 	addiu	sp,sp,48

0000230c <func_80AC4FAC>:
    230c:	27bdffe8 	addiu	sp,sp,-24
    2310:	afbf0014 	sw	ra,20(sp)
    2314:	afa5001c 	sw	a1,28(sp)
    2318:	afa60020 	sw	a2,32(sp)
    231c:	0c000000 	jal	0 <func_80AC2CA0>
    2320:	30c5ffff 	andi	a1,a2,0xffff
    2324:	8faf001c 	lw	t7,28(sp)
    2328:	240e000e 	li	t6,14
    232c:	a5ee01fc 	sh	t6,508(t7)
    2330:	8fbf0014 	lw	ra,20(sp)
    2334:	27bd0018 	addiu	sp,sp,24
    2338:	03e00008 	jr	ra
    233c:	00000000 	nop

00002340 <func_80AC4FE0>:
    2340:	27bdffe8 	addiu	sp,sp,-24
    2344:	afbf0014 	sw	ra,20(sp)
    2348:	afa5001c 	sw	a1,28(sp)
    234c:	afa60020 	sw	a2,32(sp)
    2350:	0c000000 	jal	0 <func_80AC2CA0>
    2354:	30c5ffff 	andi	a1,a2,0xffff
    2358:	8faf001c 	lw	t7,28(sp)
    235c:	240e0017 	li	t6,23
    2360:	a5ee01fc 	sh	t6,508(t7)
    2364:	8fbf0014 	lw	ra,20(sp)
    2368:	27bd0018 	addiu	sp,sp,24
    236c:	03e00008 	jr	ra
    2370:	00000000 	nop

00002374 <func_80AC5014>:
    2374:	27bdffd8 	addiu	sp,sp,-40
    2378:	afbf001c 	sw	ra,28(sp)
    237c:	afb10018 	sw	s1,24(sp)
    2380:	afb00014 	sw	s0,20(sp)
    2384:	90ae0252 	lbu	t6,594(a1)
    2388:	00a08025 	move	s0,a1
    238c:	00808825 	move	s1,a0
    2390:	000e7880 	sll	t7,t6,0x2
    2394:	00afc021 	addu	t8,a1,t7
    2398:	8f050200 	lw	a1,512(t8)
    239c:	afa50024 	sw	a1,36(sp)
    23a0:	8cb901bc 	lw	t9,444(a1)
    23a4:	0320f809 	jalr	t9
    23a8:	00000000 	nop
    23ac:	2c410006 	sltiu	at,v0,6
    23b0:	10200054 	beqz	at,2504 <L80AC518C+0x18>
    23b4:	8fa70024 	lw	a3,36(sp)
    23b8:	00024080 	sll	t0,v0,0x2
    23bc:	3c010000 	lui	at,0x0
    23c0:	00280821 	addu	at,at,t0
    23c4:	8c280000 	lw	t0,0(at)
    23c8:	01000008 	jr	t0
    23cc:	00000000 	nop

000023d0 <L80AC5070>:
    23d0:	84e9001c 	lh	t1,28(a3)
    23d4:	2401000c 	li	at,12
    23d8:	3c0a0000 	lui	t2,0x0
    23dc:	1521000a 	bne	t1,at,2408 <L80AC5070+0x38>
    23e0:	02202025 	move	a0,s1
    23e4:	954a0f06 	lhu	t2,3846(t2)
    23e8:	02002825 	move	a1,s0
    23ec:	314b0040 	andi	t3,t2,0x40
    23f0:	51600006 	beqzl	t3,240c <L80AC5070+0x3c>
    23f4:	02002825 	move	a1,s0
    23f8:	0c000000 	jal	0 <func_80AC2CA0>
    23fc:	02202025 	move	a0,s1
    2400:	10000041 	b	2508 <L80AC518C+0x1c>
    2404:	8fbf001c 	lw	ra,28(sp)
    2408:	02002825 	move	a1,s0
    240c:	0c000000 	jal	0 <func_80AC2CA0>
    2410:	afa70024 	sw	a3,36(sp)
    2414:	8fa50024 	lw	a1,36(sp)
    2418:	44802000 	mtc1	zero,$f4
    241c:	a2000251 	sb	zero,593(s0)
    2420:	02202025 	move	a0,s1
    2424:	e60402d0 	swc1	$f4,720(s0)
    2428:	8cb901ac 	lw	t9,428(a1)
    242c:	0320f809 	jalr	t9
    2430:	00000000 	nop
    2434:	10000034 	b	2508 <L80AC518C+0x1c>
    2438:	8fbf001c 	lw	ra,28(sp)

0000243c <L80AC50DC>:
    243c:	afa70024 	sw	a3,36(sp)
    2440:	8cf901c0 	lw	t9,448(a3)
    2444:	02202025 	move	a0,s1
    2448:	00e02825 	move	a1,a3
    244c:	0320f809 	jalr	t9
    2450:	00000000 	nop
    2454:	02202025 	move	a0,s1
    2458:	02002825 	move	a1,s0
    245c:	0c000000 	jal	0 <func_80AC2CA0>
    2460:	24060084 	li	a2,132
    2464:	8fa50024 	lw	a1,36(sp)
    2468:	44803000 	mtc1	zero,$f6
    246c:	a2000251 	sb	zero,593(s0)
    2470:	02202025 	move	a0,s1
    2474:	e60602d0 	swc1	$f6,720(s0)
    2478:	8cb901ac 	lw	t9,428(a1)
    247c:	0320f809 	jalr	t9
    2480:	00000000 	nop
    2484:	10000020 	b	2508 <L80AC518C+0x1c>
    2488:	8fbf001c 	lw	ra,28(sp)

0000248c <L80AC512C>:
    248c:	0c000000 	jal	0 <func_80AC2CA0>
    2490:	24044806 	li	a0,18438
    2494:	02202025 	move	a0,s1
    2498:	02002825 	move	a1,s0
    249c:	0c000000 	jal	0 <func_80AC2CA0>
    24a0:	24060086 	li	a2,134
    24a4:	10000018 	b	2508 <L80AC518C+0x1c>
    24a8:	8fbf001c 	lw	ra,28(sp)

000024ac <L80AC514C>:
    24ac:	0c000000 	jal	0 <func_80AC2CA0>
    24b0:	24044806 	li	a0,18438
    24b4:	02202025 	move	a0,s1
    24b8:	02002825 	move	a1,s0
    24bc:	0c000000 	jal	0 <func_80AC2CA0>
    24c0:	24060096 	li	a2,150
    24c4:	10000010 	b	2508 <L80AC518C+0x1c>
    24c8:	8fbf001c 	lw	ra,28(sp)

000024cc <L80AC516C>:
    24cc:	0c000000 	jal	0 <func_80AC2CA0>
    24d0:	24044806 	li	a0,18438
    24d4:	02202025 	move	a0,s1
    24d8:	02002825 	move	a1,s0
    24dc:	0c000000 	jal	0 <func_80AC2CA0>
    24e0:	24060085 	li	a2,133
    24e4:	10000008 	b	2508 <L80AC518C+0x1c>
    24e8:	8fbf001c 	lw	ra,28(sp)

000024ec <L80AC518C>:
    24ec:	0c000000 	jal	0 <func_80AC2CA0>
    24f0:	24044806 	li	a0,18438
    24f4:	02202025 	move	a0,s1
    24f8:	02002825 	move	a1,s0
    24fc:	0c000000 	jal	0 <func_80AC2CA0>
    2500:	24060086 	li	a2,134
    2504:	8fbf001c 	lw	ra,28(sp)
    2508:	8fb00014 	lw	s0,20(sp)
    250c:	8fb10018 	lw	s1,24(sp)
    2510:	03e00008 	jr	ra
    2514:	27bd0028 	addiu	sp,sp,40

00002518 <func_80AC51B8>:
    2518:	27bdffd8 	addiu	sp,sp,-40
    251c:	afbf0024 	sw	ra,36(sp)
    2520:	afb20020 	sw	s2,32(sp)
    2524:	afb1001c 	sw	s1,28(sp)
    2528:	afb00018 	sw	s0,24(sp)
    252c:	90ae0252 	lbu	t6,594(a1)
    2530:	00a08825 	move	s1,a1
    2534:	00809025 	move	s2,a0
    2538:	000e7880 	sll	t7,t6,0x2
    253c:	00afc021 	addu	t8,a1,t7
    2540:	8f100200 	lw	s0,512(t8)
    2544:	8e1901bc 	lw	t9,444(s0)
    2548:	02002825 	move	a1,s0
    254c:	0320f809 	jalr	t9
    2550:	00000000 	nop
    2554:	1040000b 	beqz	v0,2584 <func_80AC51B8+0x6c>
    2558:	02402025 	move	a0,s2
    255c:	24010001 	li	at,1
    2560:	1041000e 	beq	v0,at,259c <func_80AC51B8+0x84>
    2564:	24010003 	li	at,3
    2568:	1041001f 	beq	v0,at,25e8 <func_80AC51B8+0xd0>
    256c:	02402025 	move	a0,s2
    2570:	24010004 	li	at,4
    2574:	10410021 	beq	v0,at,25fc <func_80AC51B8+0xe4>
    2578:	02402025 	move	a0,s2
    257c:	10000023 	b	260c <func_80AC51B8+0xf4>
    2580:	8fbf0024 	lw	ra,36(sp)
    2584:	0c000000 	jal	0 <func_80AC2CA0>
    2588:	2405009c 	li	a1,156
    258c:	24080012 	li	t0,18
    2590:	a62801fc 	sh	t0,508(s1)
    2594:	1000001c 	b	2608 <func_80AC51B8+0xf0>
    2598:	a2200251 	sb	zero,593(s1)
    259c:	8e1901c0 	lw	t9,448(s0)
    25a0:	02402025 	move	a0,s2
    25a4:	02002825 	move	a1,s0
    25a8:	0320f809 	jalr	t9
    25ac:	00000000 	nop
    25b0:	02402025 	move	a0,s2
    25b4:	02202825 	move	a1,s1
    25b8:	0c000000 	jal	0 <func_80AC2CA0>
    25bc:	24060098 	li	a2,152
    25c0:	44802000 	mtc1	zero,$f4
    25c4:	a2200251 	sb	zero,593(s1)
    25c8:	02402025 	move	a0,s2
    25cc:	e62402d0 	swc1	$f4,720(s1)
    25d0:	8e1901ac 	lw	t9,428(s0)
    25d4:	02002825 	move	a1,s0
    25d8:	0320f809 	jalr	t9
    25dc:	00000000 	nop
    25e0:	1000000a 	b	260c <func_80AC51B8+0xf4>
    25e4:	8fbf0024 	lw	ra,36(sp)
    25e8:	02202825 	move	a1,s1
    25ec:	0c000000 	jal	0 <func_80AC2CA0>
    25f0:	24060096 	li	a2,150
    25f4:	10000005 	b	260c <func_80AC51B8+0xf4>
    25f8:	8fbf0024 	lw	ra,36(sp)
    25fc:	02202825 	move	a1,s1
    2600:	0c000000 	jal	0 <func_80AC2CA0>
    2604:	24060085 	li	a2,133
    2608:	8fbf0024 	lw	ra,36(sp)
    260c:	8fb00018 	lw	s0,24(sp)
    2610:	8fb1001c 	lw	s1,28(sp)
    2614:	8fb20020 	lw	s2,32(sp)
    2618:	03e00008 	jr	ra
    261c:	27bd0028 	addiu	sp,sp,40

00002620 <func_80AC52C0>:
    2620:	27bdffd8 	addiu	sp,sp,-40
    2624:	afbf0024 	sw	ra,36(sp)
    2628:	afb20020 	sw	s2,32(sp)
    262c:	afb1001c 	sw	s1,28(sp)
    2630:	afb00018 	sw	s0,24(sp)
    2634:	90ae0252 	lbu	t6,594(a1)
    2638:	00a08825 	move	s1,a1
    263c:	00809025 	move	s2,a0
    2640:	000e7880 	sll	t7,t6,0x2
    2644:	00afc021 	addu	t8,a1,t7
    2648:	8f100200 	lw	s0,512(t8)
    264c:	8e1901bc 	lw	t9,444(s0)
    2650:	02002825 	move	a1,s0
    2654:	0320f809 	jalr	t9
    2658:	00000000 	nop
    265c:	1040000a 	beqz	v0,2688 <func_80AC52C0+0x68>
    2660:	02402025 	move	a0,s2
    2664:	24010001 	li	at,1
    2668:	10410013 	beq	v0,at,26b8 <func_80AC52C0+0x98>
    266c:	24010002 	li	at,2
    2670:	10410024 	beq	v0,at,2704 <func_80AC52C0+0xe4>
    2674:	24010004 	li	at,4
    2678:	1041002a 	beq	v0,at,2724 <func_80AC52C0+0x104>
    267c:	00000000 	nop
    2680:	1000002f 	b	2740 <func_80AC52C0+0x120>
    2684:	8fbf0024 	lw	ra,36(sp)
    2688:	0c000000 	jal	0 <func_80AC2CA0>
    268c:	02202825 	move	a1,s1
    2690:	44802000 	mtc1	zero,$f4
    2694:	a2200251 	sb	zero,593(s1)
    2698:	02402025 	move	a0,s2
    269c:	e62402d0 	swc1	$f4,720(s1)
    26a0:	8e1901ac 	lw	t9,428(s0)
    26a4:	02002825 	move	a1,s0
    26a8:	0320f809 	jalr	t9
    26ac:	00000000 	nop
    26b0:	10000023 	b	2740 <func_80AC52C0+0x120>
    26b4:	8fbf0024 	lw	ra,36(sp)
    26b8:	8e1901c0 	lw	t9,448(s0)
    26bc:	02402025 	move	a0,s2
    26c0:	02002825 	move	a1,s0
    26c4:	0320f809 	jalr	t9
    26c8:	00000000 	nop
    26cc:	02402025 	move	a0,s2
    26d0:	02202825 	move	a1,s1
    26d4:	0c000000 	jal	0 <func_80AC2CA0>
    26d8:	2406009a 	li	a2,154
    26dc:	44803000 	mtc1	zero,$f6
    26e0:	a2200251 	sb	zero,593(s1)
    26e4:	02402025 	move	a0,s2
    26e8:	e62602d0 	swc1	$f6,720(s1)
    26ec:	8e1901ac 	lw	t9,428(s0)
    26f0:	02002825 	move	a1,s0
    26f4:	0320f809 	jalr	t9
    26f8:	00000000 	nop
    26fc:	10000010 	b	2740 <func_80AC52C0+0x120>
    2700:	8fbf0024 	lw	ra,36(sp)
    2704:	0c000000 	jal	0 <func_80AC2CA0>
    2708:	24044806 	li	a0,18438
    270c:	02402025 	move	a0,s2
    2710:	02202825 	move	a1,s1
    2714:	0c000000 	jal	0 <func_80AC2CA0>
    2718:	2406009d 	li	a2,157
    271c:	10000008 	b	2740 <func_80AC52C0+0x120>
    2720:	8fbf0024 	lw	ra,36(sp)
    2724:	0c000000 	jal	0 <func_80AC2CA0>
    2728:	24044806 	li	a0,18438
    272c:	02402025 	move	a0,s2
    2730:	02202825 	move	a1,s1
    2734:	0c000000 	jal	0 <func_80AC2CA0>
    2738:	24060085 	li	a2,133
    273c:	8fbf0024 	lw	ra,36(sp)
    2740:	8fb00018 	lw	s0,24(sp)
    2744:	8fb1001c 	lw	s1,28(sp)
    2748:	8fb20020 	lw	s2,32(sp)
    274c:	03e00008 	jr	ra
    2750:	27bd0028 	addiu	sp,sp,40

00002754 <func_80AC53F4>:
    2754:	27bdffd8 	addiu	sp,sp,-40
    2758:	afbf0024 	sw	ra,36(sp)
    275c:	afb20020 	sw	s2,32(sp)
    2760:	afb1001c 	sw	s1,28(sp)
    2764:	afb00018 	sw	s0,24(sp)
    2768:	90ae0252 	lbu	t6,594(a1)
    276c:	00a08825 	move	s1,a1
    2770:	00809025 	move	s2,a0
    2774:	000e7880 	sll	t7,t6,0x2
    2778:	00afc021 	addu	t8,a1,t7
    277c:	8f100200 	lw	s0,512(t8)
    2780:	8e1901bc 	lw	t9,444(s0)
    2784:	02002825 	move	a1,s0
    2788:	0320f809 	jalr	t9
    278c:	00000000 	nop
    2790:	10400009 	beqz	v0,27b8 <func_80AC53F4+0x64>
    2794:	24010001 	li	at,1
    2798:	10410007 	beq	v0,at,27b8 <func_80AC53F4+0x64>
    279c:	24010002 	li	at,2
    27a0:	10410018 	beq	v0,at,2804 <func_80AC53F4+0xb0>
    27a4:	24010004 	li	at,4
    27a8:	1041001e 	beq	v0,at,2824 <func_80AC53F4+0xd0>
    27ac:	00000000 	nop
    27b0:	10000023 	b	2840 <func_80AC53F4+0xec>
    27b4:	8fbf0024 	lw	ra,36(sp)
    27b8:	8e1901c0 	lw	t9,448(s0)
    27bc:	02402025 	move	a0,s2
    27c0:	02002825 	move	a1,s0
    27c4:	0320f809 	jalr	t9
    27c8:	00000000 	nop
    27cc:	02402025 	move	a0,s2
    27d0:	02202825 	move	a1,s1
    27d4:	0c000000 	jal	0 <func_80AC2CA0>
    27d8:	24060084 	li	a2,132
    27dc:	44802000 	mtc1	zero,$f4
    27e0:	a2200251 	sb	zero,593(s1)
    27e4:	02402025 	move	a0,s2
    27e8:	e62402d0 	swc1	$f4,720(s1)
    27ec:	8e1901ac 	lw	t9,428(s0)
    27f0:	02002825 	move	a1,s0
    27f4:	0320f809 	jalr	t9
    27f8:	00000000 	nop
    27fc:	10000010 	b	2840 <func_80AC53F4+0xec>
    2800:	8fbf0024 	lw	ra,36(sp)
    2804:	0c000000 	jal	0 <func_80AC2CA0>
    2808:	24044806 	li	a0,18438
    280c:	02402025 	move	a0,s2
    2810:	02202825 	move	a1,s1
    2814:	0c000000 	jal	0 <func_80AC2CA0>
    2818:	24060086 	li	a2,134
    281c:	10000008 	b	2840 <func_80AC53F4+0xec>
    2820:	8fbf0024 	lw	ra,36(sp)
    2824:	0c000000 	jal	0 <func_80AC2CA0>
    2828:	24044806 	li	a0,18438
    282c:	02402025 	move	a0,s2
    2830:	02202825 	move	a1,s1
    2834:	0c000000 	jal	0 <func_80AC2CA0>
    2838:	24060085 	li	a2,133
    283c:	8fbf0024 	lw	ra,36(sp)
    2840:	8fb00018 	lw	s0,24(sp)
    2844:	8fb1001c 	lw	s1,28(sp)
    2848:	8fb20020 	lw	s2,32(sp)
    284c:	03e00008 	jr	ra
    2850:	27bd0028 	addiu	sp,sp,40

00002854 <func_80AC54F4>:
    2854:	3c030000 	lui	v1,0x0
    2858:	24630000 	addiu	v1,v1,0
    285c:	8c6e0004 	lw	t6,4(v1)
    2860:	27bdffe8 	addiu	sp,sp,-24
    2864:	afbf0014 	sw	ra,20(sp)
    2868:	11c00003 	beqz	t6,2878 <func_80AC54F4+0x24>
    286c:	24010005 	li	at,5
    2870:	10000002 	b	287c <func_80AC54F4+0x28>
    2874:	24020005 	li	v0,5
    2878:	24020011 	li	v0,17
    287c:	14410017 	bne	v0,at,28dc <func_80AC54F4+0x88>
    2880:	00000000 	nop
    2884:	946f0ed8 	lhu	t7,3800(v1)
    2888:	31f80020 	andi	t8,t7,0x20
    288c:	1700000f 	bnez	t8,28cc <func_80AC54F4+0x78>
    2890:	00000000 	nop
    2894:	94790f16 	lhu	t9,3862(v1)
    2898:	24090013 	li	t1,19
    289c:	33281000 	andi	t0,t9,0x1000
    28a0:	51000006 	beqzl	t0,28bc <func_80AC54F4+0x68>
    28a4:	aca00288 	sw	zero,648(a1)
    28a8:	0c000000 	jal	0 <func_80AC2CA0>
    28ac:	2406302e 	li	a2,12334
    28b0:	1000000d 	b	28e8 <func_80AC54F4+0x94>
    28b4:	8fbf0014 	lw	ra,20(sp)
    28b8:	aca00288 	sw	zero,648(a1)
    28bc:	aca002c0 	sw	zero,704(a1)
    28c0:	a0a00251 	sb	zero,593(a1)
    28c4:	10000007 	b	28e4 <func_80AC54F4+0x90>
    28c8:	a4a901fc 	sh	t1,508(a1)
    28cc:	0c000000 	jal	0 <func_80AC2CA0>
    28d0:	00000000 	nop
    28d4:	10000004 	b	28e8 <func_80AC54F4+0x94>
    28d8:	8fbf0014 	lw	ra,20(sp)
    28dc:	0c000000 	jal	0 <func_80AC2CA0>
    28e0:	00000000 	nop
    28e4:	8fbf0014 	lw	ra,20(sp)
    28e8:	27bd0018 	addiu	sp,sp,24
    28ec:	03e00008 	jr	ra
    28f0:	00000000 	nop

000028f4 <func_80AC5594>:
    28f4:	27bdffe0 	addiu	sp,sp,-32
    28f8:	afbf001c 	sw	ra,28(sp)
    28fc:	afb10018 	sw	s1,24(sp)
    2900:	afb00014 	sw	s0,20(sp)
    2904:	00a08025 	move	s0,a1
    2908:	00808825 	move	s1,a0
    290c:	0c000000 	jal	0 <func_80AC2CA0>
    2910:	afa60028 	sw	a2,40(sp)
    2914:	14400008 	bnez	v0,2938 <func_80AC5594+0x44>
    2918:	3c040000 	lui	a0,0x0
    291c:	3c050000 	lui	a1,0x0
    2920:	24a50000 	addiu	a1,a1,0
    2924:	24840000 	addiu	a0,a0,0
    2928:	0c000000 	jal	0 <func_80AC2CA0>
    292c:	24060a5e 	li	a2,2654
    2930:	10000027 	b	29d0 <func_80AC5594+0xdc>
    2934:	8fbf001c 	lw	ra,28(sp)
    2938:	0c000000 	jal	0 <func_80AC2CA0>
    293c:	260420d8 	addiu	a0,s0,8408
    2940:	24010004 	li	at,4
    2944:	14410021 	bne	v0,at,29cc <func_80AC5594+0xd8>
    2948:	02202025 	move	a0,s1
    294c:	02002825 	move	a1,s0
    2950:	0c000000 	jal	0 <func_80AC2CA0>
    2954:	26060014 	addiu	a2,s0,20
    2958:	5440001d 	bnezl	v0,29d0 <func_80AC5594+0xdc>
    295c:	8fbf001c 	lw	ra,28(sp)
    2960:	0c000000 	jal	0 <func_80AC2CA0>
    2964:	02002025 	move	a0,s0
    2968:	10400018 	beqz	v0,29cc <func_80AC5594+0xd8>
    296c:	3c020001 	lui	v0,0x1
    2970:	00501021 	addu	v0,v0,s0
    2974:	904204bd 	lbu	v0,1213(v0)
    2978:	24010001 	li	at,1
    297c:	02002025 	move	a0,s0
    2980:	10400005 	beqz	v0,2998 <func_80AC5594+0xa4>
    2984:	00000000 	nop
    2988:	50410008 	beql	v0,at,29ac <func_80AC5594+0xb8>
    298c:	922f0252 	lbu	t7,594(s1)
    2990:	1000000f 	b	29d0 <func_80AC5594+0xdc>
    2994:	8fbf001c 	lw	ra,28(sp)
    2998:	0c000000 	jal	0 <func_80AC2CA0>
    299c:	02202825 	move	a1,s1
    29a0:	1000000b 	b	29d0 <func_80AC5594+0xdc>
    29a4:	8fbf001c 	lw	ra,28(sp)
    29a8:	922f0252 	lbu	t7,594(s1)
    29ac:	862e01fe 	lh	t6,510(s1)
    29b0:	02002025 	move	a0,s0
    29b4:	000fc080 	sll	t8,t7,0x2
    29b8:	0238c821 	addu	t9,s1,t8
    29bc:	a62e01fc 	sh	t6,508(s1)
    29c0:	8f280200 	lw	t0,512(t9)
    29c4:	0c000000 	jal	0 <func_80AC2CA0>
    29c8:	9505010e 	lhu	a1,270(t0)
    29cc:	8fbf001c 	lw	ra,28(sp)
    29d0:	8fb00014 	lw	s0,20(sp)
    29d4:	8fb10018 	lw	s1,24(sp)
    29d8:	03e00008 	jr	ra
    29dc:	27bd0020 	addiu	sp,sp,32

000029e0 <func_80AC5680>:
    29e0:	27bdffe0 	addiu	sp,sp,-32
    29e4:	afbf001c 	sw	ra,28(sp)
    29e8:	afb10018 	sw	s1,24(sp)
    29ec:	afb00014 	sw	s0,20(sp)
    29f0:	00a08025 	move	s0,a1
    29f4:	00808825 	move	s1,a0
    29f8:	0c000000 	jal	0 <func_80AC2CA0>
    29fc:	afa60028 	sw	a2,40(sp)
    2a00:	14400008 	bnez	v0,2a24 <func_80AC5680+0x44>
    2a04:	3c040000 	lui	a0,0x0
    2a08:	3c050000 	lui	a1,0x0
    2a0c:	24a50000 	addiu	a1,a1,0
    2a10:	24840000 	addiu	a0,a0,0
    2a14:	0c000000 	jal	0 <func_80AC2CA0>
    2a18:	24060a85 	li	a2,2693
    2a1c:	10000027 	b	2abc <func_80AC5680+0xdc>
    2a20:	8fbf001c 	lw	ra,28(sp)
    2a24:	0c000000 	jal	0 <func_80AC2CA0>
    2a28:	260420d8 	addiu	a0,s0,8408
    2a2c:	24010004 	li	at,4
    2a30:	14410021 	bne	v0,at,2ab8 <func_80AC5680+0xd8>
    2a34:	02202025 	move	a0,s1
    2a38:	02002825 	move	a1,s0
    2a3c:	0c000000 	jal	0 <func_80AC2CA0>
    2a40:	26060014 	addiu	a2,s0,20
    2a44:	5440001d 	bnezl	v0,2abc <func_80AC5680+0xdc>
    2a48:	8fbf001c 	lw	ra,28(sp)
    2a4c:	0c000000 	jal	0 <func_80AC2CA0>
    2a50:	02002025 	move	a0,s0
    2a54:	10400018 	beqz	v0,2ab8 <func_80AC5680+0xd8>
    2a58:	3c020001 	lui	v0,0x1
    2a5c:	00501021 	addu	v0,v0,s0
    2a60:	904204bd 	lbu	v0,1213(v0)
    2a64:	24010001 	li	at,1
    2a68:	02002025 	move	a0,s0
    2a6c:	10400005 	beqz	v0,2a84 <func_80AC5680+0xa4>
    2a70:	00000000 	nop
    2a74:	50410008 	beql	v0,at,2a98 <func_80AC5680+0xb8>
    2a78:	922f0252 	lbu	t7,594(s1)
    2a7c:	1000000f 	b	2abc <func_80AC5680+0xdc>
    2a80:	8fbf001c 	lw	ra,28(sp)
    2a84:	0c000000 	jal	0 <func_80AC2CA0>
    2a88:	02202825 	move	a1,s1
    2a8c:	1000000b 	b	2abc <func_80AC5680+0xdc>
    2a90:	8fbf001c 	lw	ra,28(sp)
    2a94:	922f0252 	lbu	t7,594(s1)
    2a98:	862e01fe 	lh	t6,510(s1)
    2a9c:	02002025 	move	a0,s0
    2aa0:	000fc080 	sll	t8,t7,0x2
    2aa4:	0238c821 	addu	t9,s1,t8
    2aa8:	a62e01fc 	sh	t6,508(s1)
    2aac:	8f280200 	lw	t0,512(t9)
    2ab0:	0c000000 	jal	0 <func_80AC2CA0>
    2ab4:	9505010e 	lhu	a1,270(t0)
    2ab8:	8fbf001c 	lw	ra,28(sp)
    2abc:	8fb00014 	lw	s0,20(sp)
    2ac0:	8fb10018 	lw	s1,24(sp)
    2ac4:	03e00008 	jr	ra
    2ac8:	27bd0020 	addiu	sp,sp,32

00002acc <func_80AC576C>:
    2acc:	27bdffe0 	addiu	sp,sp,-32
    2ad0:	afbf001c 	sw	ra,28(sp)
    2ad4:	afb10018 	sw	s1,24(sp)
    2ad8:	afb00014 	sw	s0,20(sp)
    2adc:	00a08025 	move	s0,a1
    2ae0:	00808825 	move	s1,a0
    2ae4:	0c000000 	jal	0 <func_80AC2CA0>
    2ae8:	afa60028 	sw	a2,40(sp)
    2aec:	14400008 	bnez	v0,2b10 <func_80AC576C+0x44>
    2af0:	3c040000 	lui	a0,0x0
    2af4:	3c050000 	lui	a1,0x0
    2af8:	24a50000 	addiu	a1,a1,0
    2afc:	24840000 	addiu	a0,a0,0
    2b00:	0c000000 	jal	0 <func_80AC2CA0>
    2b04:	24060aac 	li	a2,2732
    2b08:	10000027 	b	2ba8 <func_80AC576C+0xdc>
    2b0c:	8fbf001c 	lw	ra,28(sp)
    2b10:	0c000000 	jal	0 <func_80AC2CA0>
    2b14:	260420d8 	addiu	a0,s0,8408
    2b18:	24010004 	li	at,4
    2b1c:	14410021 	bne	v0,at,2ba4 <func_80AC576C+0xd8>
    2b20:	02202025 	move	a0,s1
    2b24:	02002825 	move	a1,s0
    2b28:	0c000000 	jal	0 <func_80AC2CA0>
    2b2c:	26060014 	addiu	a2,s0,20
    2b30:	5440001d 	bnezl	v0,2ba8 <func_80AC576C+0xdc>
    2b34:	8fbf001c 	lw	ra,28(sp)
    2b38:	0c000000 	jal	0 <func_80AC2CA0>
    2b3c:	02002025 	move	a0,s0
    2b40:	10400018 	beqz	v0,2ba4 <func_80AC576C+0xd8>
    2b44:	3c020001 	lui	v0,0x1
    2b48:	00501021 	addu	v0,v0,s0
    2b4c:	904204bd 	lbu	v0,1213(v0)
    2b50:	24010001 	li	at,1
    2b54:	02002025 	move	a0,s0
    2b58:	10400005 	beqz	v0,2b70 <func_80AC576C+0xa4>
    2b5c:	00000000 	nop
    2b60:	50410008 	beql	v0,at,2b84 <func_80AC576C+0xb8>
    2b64:	922f0252 	lbu	t7,594(s1)
    2b68:	1000000f 	b	2ba8 <func_80AC576C+0xdc>
    2b6c:	8fbf001c 	lw	ra,28(sp)
    2b70:	0c000000 	jal	0 <func_80AC2CA0>
    2b74:	02202825 	move	a1,s1
    2b78:	1000000b 	b	2ba8 <func_80AC576C+0xdc>
    2b7c:	8fbf001c 	lw	ra,28(sp)
    2b80:	922f0252 	lbu	t7,594(s1)
    2b84:	862e01fe 	lh	t6,510(s1)
    2b88:	02002025 	move	a0,s0
    2b8c:	000fc080 	sll	t8,t7,0x2
    2b90:	0238c821 	addu	t9,s1,t8
    2b94:	a62e01fc 	sh	t6,508(s1)
    2b98:	8f280200 	lw	t0,512(t9)
    2b9c:	0c000000 	jal	0 <func_80AC2CA0>
    2ba0:	9505010e 	lhu	a1,270(t0)
    2ba4:	8fbf001c 	lw	ra,28(sp)
    2ba8:	8fb00014 	lw	s0,20(sp)
    2bac:	8fb10018 	lw	s1,24(sp)
    2bb0:	03e00008 	jr	ra
    2bb4:	27bd0020 	addiu	sp,sp,32

00002bb8 <func_80AC5858>:
    2bb8:	27bdffe8 	addiu	sp,sp,-24
    2bbc:	afbf0014 	sw	ra,20(sp)
    2bc0:	afa40018 	sw	a0,24(sp)
    2bc4:	afa5001c 	sw	a1,28(sp)
    2bc8:	afa60020 	sw	a2,32(sp)
    2bcc:	0c000000 	jal	0 <func_80AC2CA0>
    2bd0:	afa40018 	sw	a0,24(sp)
    2bd4:	14400009 	bnez	v0,2bfc <func_80AC5858+0x44>
    2bd8:	8fa60018 	lw	a2,24(sp)
    2bdc:	3c040000 	lui	a0,0x0
    2be0:	3c050000 	lui	a1,0x0
    2be4:	24a50000 	addiu	a1,a1,0
    2be8:	24840000 	addiu	a0,a0,0
    2bec:	0c000000 	jal	0 <func_80AC2CA0>
    2bf0:	24060ad3 	li	a2,2771
    2bf4:	10000017 	b	2c54 <func_80AC5858+0x9c>
    2bf8:	8fbf0014 	lw	ra,20(sp)
    2bfc:	8fa4001c 	lw	a0,28(sp)
    2c00:	afa60018 	sw	a2,24(sp)
    2c04:	0c000000 	jal	0 <func_80AC2CA0>
    2c08:	248420d8 	addiu	a0,a0,8408
    2c0c:	24010005 	li	at,5
    2c10:	1441000f 	bne	v0,at,2c50 <func_80AC5858+0x98>
    2c14:	8fa60018 	lw	a2,24(sp)
    2c18:	8fa4001c 	lw	a0,28(sp)
    2c1c:	0c000000 	jal	0 <func_80AC2CA0>
    2c20:	afa60018 	sw	a2,24(sp)
    2c24:	1040000a 	beqz	v0,2c50 <func_80AC5858+0x98>
    2c28:	8fa60018 	lw	a2,24(sp)
    2c2c:	90cf0252 	lbu	t7,594(a2)
    2c30:	84ce01fe 	lh	t6,510(a2)
    2c34:	000fc080 	sll	t8,t7,0x2
    2c38:	00d8c821 	addu	t9,a2,t8
    2c3c:	a4ce01fc 	sh	t6,508(a2)
    2c40:	8f280200 	lw	t0,512(t9)
    2c44:	8fa4001c 	lw	a0,28(sp)
    2c48:	0c000000 	jal	0 <func_80AC2CA0>
    2c4c:	9505010e 	lhu	a1,270(t0)
    2c50:	8fbf0014 	lw	ra,20(sp)
    2c54:	27bd0018 	addiu	sp,sp,24
    2c58:	03e00008 	jr	ra
    2c5c:	00000000 	nop

00002c60 <func_80AC5900>:
    2c60:	27bdffe0 	addiu	sp,sp,-32
    2c64:	afbf001c 	sw	ra,28(sp)
    2c68:	afb10018 	sw	s1,24(sp)
    2c6c:	afb00014 	sw	s0,20(sp)
    2c70:	00808025 	move	s0,a0
    2c74:	00a08825 	move	s1,a1
    2c78:	0c000000 	jal	0 <func_80AC2CA0>
    2c7c:	afa60028 	sw	a2,40(sp)
    2c80:	14400009 	bnez	v0,2ca8 <func_80AC5900+0x48>
    2c84:	3c040000 	lui	a0,0x0
    2c88:	3c040000 	lui	a0,0x0
    2c8c:	3c050000 	lui	a1,0x0
    2c90:	24a50000 	addiu	a1,a1,0
    2c94:	24840000 	addiu	a0,a0,0
    2c98:	0c000000 	jal	0 <func_80AC2CA0>
    2c9c:	24060aee 	li	a2,2798
    2ca0:	10000035 	b	2d78 <func_80AC5900+0x118>
    2ca4:	8fbf001c 	lw	ra,28(sp)
    2ca8:	3c050000 	lui	a1,0x0
    2cac:	94a50f16 	lhu	a1,3862(a1)
    2cb0:	24840000 	addiu	a0,a0,0
    2cb4:	0c000000 	jal	0 <func_80AC2CA0>
    2cb8:	30a51000 	andi	a1,a1,0x1000
    2cbc:	860e001c 	lh	t6,28(s0)
    2cc0:	24010008 	li	at,8
    2cc4:	02002025 	move	a0,s0
    2cc8:	11c10005 	beq	t6,at,2ce0 <func_80AC5900+0x80>
    2ccc:	02202825 	move	a1,s1
    2cd0:	0c000000 	jal	0 <func_80AC2CA0>
    2cd4:	8fa60028 	lw	a2,40(sp)
    2cd8:	10000027 	b	2d78 <func_80AC5900+0x118>
    2cdc:	8fbf001c 	lw	ra,28(sp)
    2ce0:	0c000000 	jal	0 <func_80AC2CA0>
    2ce4:	262420d8 	addiu	a0,s1,8408
    2ce8:	24010004 	li	at,4
    2cec:	14410021 	bne	v0,at,2d74 <func_80AC5900+0x114>
    2cf0:	02002025 	move	a0,s0
    2cf4:	02202825 	move	a1,s1
    2cf8:	0c000000 	jal	0 <func_80AC2CA0>
    2cfc:	26260014 	addiu	a2,s1,20
    2d00:	5440001d 	bnezl	v0,2d78 <func_80AC5900+0x118>
    2d04:	8fbf001c 	lw	ra,28(sp)
    2d08:	0c000000 	jal	0 <func_80AC2CA0>
    2d0c:	02202025 	move	a0,s1
    2d10:	10400018 	beqz	v0,2d74 <func_80AC5900+0x114>
    2d14:	3c020001 	lui	v0,0x1
    2d18:	00511021 	addu	v0,v0,s1
    2d1c:	904204bd 	lbu	v0,1213(v0)
    2d20:	24010001 	li	at,1
    2d24:	02202025 	move	a0,s1
    2d28:	10400005 	beqz	v0,2d40 <func_80AC5900+0xe0>
    2d2c:	00000000 	nop
    2d30:	50410008 	beql	v0,at,2d54 <func_80AC5900+0xf4>
    2d34:	92180252 	lbu	t8,594(s0)
    2d38:	1000000f 	b	2d78 <func_80AC5900+0x118>
    2d3c:	8fbf001c 	lw	ra,28(sp)
    2d40:	0c000000 	jal	0 <func_80AC2CA0>
    2d44:	02002825 	move	a1,s0
    2d48:	1000000b 	b	2d78 <func_80AC5900+0x118>
    2d4c:	8fbf001c 	lw	ra,28(sp)
    2d50:	92180252 	lbu	t8,594(s0)
    2d54:	860f01fe 	lh	t7,510(s0)
    2d58:	02202025 	move	a0,s1
    2d5c:	0018c880 	sll	t9,t8,0x2
    2d60:	02194021 	addu	t0,s0,t9
    2d64:	a60f01fc 	sh	t7,508(s0)
    2d68:	8d090200 	lw	t1,512(t0)
    2d6c:	0c000000 	jal	0 <func_80AC2CA0>
    2d70:	9525010e 	lhu	a1,270(t1)
    2d74:	8fbf001c 	lw	ra,28(sp)
    2d78:	8fb00014 	lw	s0,20(sp)
    2d7c:	8fb10018 	lw	s1,24(sp)
    2d80:	03e00008 	jr	ra
    2d84:	27bd0020 	addiu	sp,sp,32

00002d88 <func_80AC5A28>:
    2d88:	27bdffd8 	addiu	sp,sp,-40
    2d8c:	afb00014 	sw	s0,20(sp)
    2d90:	00808025 	move	s0,a0
    2d94:	afbf001c 	sw	ra,28(sp)
    2d98:	afb10018 	sw	s1,24(sp)
    2d9c:	00a08825 	move	s1,a1
    2da0:	afa60030 	sw	a2,48(sp)
    2da4:	0c000000 	jal	0 <func_80AC2CA0>
    2da8:	24a420d8 	addiu	a0,a1,8408
    2dac:	a3a20027 	sb	v0,39(sp)
    2db0:	920e0252 	lbu	t6,594(s0)
    2db4:	02002025 	move	a0,s0
    2db8:	000e7880 	sll	t7,t6,0x2
    2dbc:	020fc021 	addu	t8,s0,t7
    2dc0:	8f190200 	lw	t9,512(t8)
    2dc4:	0c000000 	jal	0 <func_80AC2CA0>
    2dc8:	afb90020 	sw	t9,32(sp)
    2dcc:	14400009 	bnez	v0,2df4 <func_80AC5A28+0x6c>
    2dd0:	02002025 	move	a0,s0
    2dd4:	3c040000 	lui	a0,0x0
    2dd8:	3c050000 	lui	a1,0x0
    2ddc:	24a50000 	addiu	a1,a1,0
    2de0:	24840000 	addiu	a0,a0,0
    2de4:	0c000000 	jal	0 <func_80AC2CA0>
    2de8:	24060b1d 	li	a2,2845
    2dec:	10000061 	b	2f74 <L80AC5BB8+0x5c>
    2df0:	8fbf001c 	lw	ra,28(sp)
    2df4:	93a20027 	lbu	v0,39(sp)
    2df8:	24010005 	li	at,5
    2dfc:	02202825 	move	a1,s1
    2e00:	54410011 	bnel	v0,at,2e48 <func_80AC5A28+0xc0>
    2e04:	24010004 	li	at,4
    2e08:	0c000000 	jal	0 <func_80AC2CA0>
    2e0c:	02202025 	move	a0,s1
    2e10:	50400058 	beqzl	v0,2f74 <L80AC5BB8+0x5c>
    2e14:	8fbf001c 	lw	ra,28(sp)
    2e18:	92090252 	lbu	t1,594(s0)
    2e1c:	860801fe 	lh	t0,510(s0)
    2e20:	02202025 	move	a0,s1
    2e24:	00095080 	sll	t2,t1,0x2
    2e28:	020a5821 	addu	t3,s0,t2
    2e2c:	a60801fc 	sh	t0,508(s0)
    2e30:	8d6c0200 	lw	t4,512(t3)
    2e34:	0c000000 	jal	0 <func_80AC2CA0>
    2e38:	9585010e 	lhu	a1,270(t4)
    2e3c:	1000004d 	b	2f74 <L80AC5BB8+0x5c>
    2e40:	8fbf001c 	lw	ra,28(sp)
    2e44:	24010004 	li	at,4
    2e48:	5441004a 	bnel	v0,at,2f74 <L80AC5BB8+0x5c>
    2e4c:	8fbf001c 	lw	ra,28(sp)
    2e50:	0c000000 	jal	0 <func_80AC2CA0>
    2e54:	26260014 	addiu	a2,s1,20
    2e58:	54400046 	bnezl	v0,2f74 <L80AC5BB8+0x5c>
    2e5c:	8fbf001c 	lw	ra,28(sp)
    2e60:	0c000000 	jal	0 <func_80AC2CA0>
    2e64:	02202025 	move	a0,s1
    2e68:	10400041 	beqz	v0,2f70 <L80AC5BB8+0x58>
    2e6c:	8fad0020 	lw	t5,32(sp)
    2e70:	3c020001 	lui	v0,0x1
    2e74:	00511021 	addu	v0,v0,s1
    2e78:	904204bd 	lbu	v0,1213(v0)
    2e7c:	10400005 	beqz	v0,2e94 <func_80AC5A28+0x10c>
    2e80:	24010001 	li	at,1
    2e84:	50410032 	beql	v0,at,2f50 <L80AC5BB8+0x38>
    2e88:	92180252 	lbu	t8,594(s0)
    2e8c:	10000039 	b	2f74 <L80AC5BB8+0x5c>
    2e90:	8fbf001c 	lw	ra,28(sp)
    2e94:	85ae001c 	lh	t6,28(t5)
    2e98:	25cfffe2 	addiu	t7,t6,-30
    2e9c:	2de10008 	sltiu	at,t7,8
    2ea0:	1020001d 	beqz	at,2f18 <L80AC5BB8>
    2ea4:	000f7880 	sll	t7,t7,0x2
    2ea8:	3c010000 	lui	at,0x0
    2eac:	002f0821 	addu	at,at,t7
    2eb0:	8c2f0000 	lw	t7,0(at)
    2eb4:	01e00008 	jr	t7
    2eb8:	00000000 	nop

00002ebc <L80AC5B5C>:
    2ebc:	3c020000 	lui	v0,0x0
    2ec0:	24420000 	addiu	v0,v0,0
    2ec4:	94580ef4 	lhu	t8,3828(v0)
    2ec8:	37190008 	ori	t9,t8,0x8
    2ecc:	10000012 	b	2f18 <L80AC5BB8>
    2ed0:	a4590ef4 	sh	t9,3828(v0)

00002ed4 <L80AC5B74>:
    2ed4:	3c020000 	lui	v0,0x0
    2ed8:	24420000 	addiu	v0,v0,0
    2edc:	94480ef4 	lhu	t0,3828(v0)
    2ee0:	35090020 	ori	t1,t0,0x20
    2ee4:	1000000c 	b	2f18 <L80AC5BB8>
    2ee8:	a4490ef4 	sh	t1,3828(v0)

00002eec <L80AC5B8C>:
    2eec:	3c020000 	lui	v0,0x0
    2ef0:	24420000 	addiu	v0,v0,0
    2ef4:	944a0ef4 	lhu	t2,3828(v0)
    2ef8:	354b0010 	ori	t3,t2,0x10
    2efc:	10000006 	b	2f18 <L80AC5BB8>
    2f00:	a44b0ef4 	sh	t3,3828(v0)

00002f04 <L80AC5BA4>:
    2f04:	3c020000 	lui	v0,0x0
    2f08:	24420000 	addiu	v0,v0,0
    2f0c:	944c0ef4 	lhu	t4,3828(v0)
    2f10:	358d0040 	ori	t5,t4,0x40
    2f14:	a44d0ef4 	sh	t5,3828(v0)

00002f18 <L80AC5BB8>:
    2f18:	02202025 	move	a0,s1
    2f1c:	0c000000 	jal	0 <func_80AC2CA0>
    2f20:	02002825 	move	a1,s0
    2f24:	44802000 	mtc1	zero,$f4
    2f28:	a2000251 	sb	zero,593(s0)
    2f2c:	02202025 	move	a0,s1
    2f30:	e60402d0 	swc1	$f4,720(s0)
    2f34:	8fa50020 	lw	a1,32(sp)
    2f38:	8cb901ac 	lw	t9,428(a1)
    2f3c:	0320f809 	jalr	t9
    2f40:	00000000 	nop
    2f44:	1000000b 	b	2f74 <L80AC5BB8+0x5c>
    2f48:	8fbf001c 	lw	ra,28(sp)
    2f4c:	92180252 	lbu	t8,594(s0)
    2f50:	860f01fe 	lh	t7,510(s0)
    2f54:	02202025 	move	a0,s1
    2f58:	00184080 	sll	t0,t8,0x2
    2f5c:	02084821 	addu	t1,s0,t0
    2f60:	a60f01fc 	sh	t7,508(s0)
    2f64:	8d2a0200 	lw	t2,512(t1)
    2f68:	0c000000 	jal	0 <func_80AC2CA0>
    2f6c:	9545010e 	lhu	a1,270(t2)
    2f70:	8fbf001c 	lw	ra,28(sp)
    2f74:	8fb00014 	lw	s0,20(sp)
    2f78:	8fb10018 	lw	s1,24(sp)
    2f7c:	03e00008 	jr	ra
    2f80:	27bd0028 	addiu	sp,sp,40

00002f84 <func_80AC5C24>:
    2f84:	27bdffe8 	addiu	sp,sp,-24
    2f88:	afa60020 	sw	a2,32(sp)
    2f8c:	00803025 	move	a2,a0
    2f90:	afbf0014 	sw	ra,20(sp)
    2f94:	afa40018 	sw	a0,24(sp)
    2f98:	afa5001c 	sw	a1,28(sp)
    2f9c:	afa60018 	sw	a2,24(sp)
    2fa0:	0c000000 	jal	0 <func_80AC2CA0>
    2fa4:	24a420d8 	addiu	a0,a1,8408
    2fa8:	24010005 	li	at,5
    2fac:	1441000f 	bne	v0,at,2fec <func_80AC5C24+0x68>
    2fb0:	8fa60018 	lw	a2,24(sp)
    2fb4:	8fa4001c 	lw	a0,28(sp)
    2fb8:	0c000000 	jal	0 <func_80AC2CA0>
    2fbc:	afa60018 	sw	a2,24(sp)
    2fc0:	1040000a 	beqz	v0,2fec <func_80AC5C24+0x68>
    2fc4:	8fa60018 	lw	a2,24(sp)
    2fc8:	90cf0252 	lbu	t7,594(a2)
    2fcc:	84ce01fe 	lh	t6,510(a2)
    2fd0:	000fc080 	sll	t8,t7,0x2
    2fd4:	00d8c821 	addu	t9,a2,t8
    2fd8:	a4ce01fc 	sh	t6,508(a2)
    2fdc:	8f280200 	lw	t0,512(t9)
    2fe0:	8fa4001c 	lw	a0,28(sp)
    2fe4:	0c000000 	jal	0 <func_80AC2CA0>
    2fe8:	9505010e 	lhu	a1,270(t0)
    2fec:	8fbf0014 	lw	ra,20(sp)
    2ff0:	27bd0018 	addiu	sp,sp,24
    2ff4:	03e00008 	jr	ra
    2ff8:	00000000 	nop

00002ffc <func_80AC5C9C>:
    2ffc:	27bdffe0 	addiu	sp,sp,-32
    3000:	afb00018 	sw	s0,24(sp)
    3004:	00808025 	move	s0,a0
    3008:	afbf001c 	sw	ra,28(sp)
    300c:	afa50024 	sw	a1,36(sp)
    3010:	afa60028 	sw	a2,40(sp)
    3014:	0c000000 	jal	0 <func_80AC2CA0>
    3018:	24a420d8 	addiu	a0,a1,8408
    301c:	24010005 	li	at,5
    3020:	5441001b 	bnel	v0,at,3090 <func_80AC5C9C+0x94>
    3024:	8fbf001c 	lw	ra,28(sp)
    3028:	0c000000 	jal	0 <func_80AC2CA0>
    302c:	8fa40024 	lw	a0,36(sp)
    3030:	50400017 	beqzl	v0,3090 <func_80AC5C9C+0x94>
    3034:	8fbf001c 	lw	ra,28(sp)
    3038:	44802000 	mtc1	zero,$f4
    303c:	02002025 	move	a0,s0
    3040:	0c000000 	jal	0 <func_80AC2CA0>
    3044:	e60402d0 	swc1	$f4,720(s0)
    3048:	920e0252 	lbu	t6,594(s0)
    304c:	8fa40024 	lw	a0,36(sp)
    3050:	000e7880 	sll	t7,t6,0x2
    3054:	020fc021 	addu	t8,s0,t7
    3058:	8f050200 	lw	a1,512(t8)
    305c:	8cb901b0 	lw	t9,432(a1)
    3060:	0320f809 	jalr	t9
    3064:	00000000 	nop
    3068:	92090252 	lbu	t1,594(s0)
    306c:	860801fe 	lh	t0,510(s0)
    3070:	00095080 	sll	t2,t1,0x2
    3074:	020a5821 	addu	t3,s0,t2
    3078:	a60801fc 	sh	t0,508(s0)
    307c:	8d6c0200 	lw	t4,512(t3)
    3080:	8fa40024 	lw	a0,36(sp)
    3084:	0c000000 	jal	0 <func_80AC2CA0>
    3088:	9585010e 	lhu	a1,270(t4)
    308c:	8fbf001c 	lw	ra,28(sp)
    3090:	8fb00018 	lw	s0,24(sp)
    3094:	27bd0020 	addiu	sp,sp,32
    3098:	03e00008 	jr	ra
    309c:	00000000 	nop

000030a0 <func_80AC5D40>:
    30a0:	27bdffe0 	addiu	sp,sp,-32
    30a4:	afbf001c 	sw	ra,28(sp)
    30a8:	afa50024 	sw	a1,36(sp)
    30ac:	afa60028 	sw	a2,40(sp)
    30b0:	0c000000 	jal	0 <func_80AC2CA0>
    30b4:	afa40020 	sw	a0,32(sp)
    30b8:	10400005 	beqz	v0,30d0 <func_80AC5D40+0x30>
    30bc:	8fa40020 	lw	a0,32(sp)
    30c0:	240e0010 	li	t6,16
    30c4:	ac800118 	sw	zero,280(a0)
    30c8:	1000000c 	b	30fc <func_80AC5D40+0x5c>
    30cc:	a48e01fc 	sh	t6,508(a0)
    30d0:	908f0252 	lbu	t7,594(a0)
    30d4:	3c0142f0 	lui	at,0x42f0
    30d8:	44810000 	mtc1	at,$f0
    30dc:	000fc080 	sll	t8,t7,0x2
    30e0:	0098c821 	addu	t9,a0,t8
    30e4:	8f280200 	lw	t0,512(t9)
    30e8:	44070000 	mfc1	a3,$f0
    30ec:	8fa50024 	lw	a1,36(sp)
    30f0:	8d0601a4 	lw	a2,420(t0)
    30f4:	0c000000 	jal	0 <func_80AC2CA0>
    30f8:	e7a00010 	swc1	$f0,16(sp)
    30fc:	8fbf001c 	lw	ra,28(sp)
    3100:	27bd0020 	addiu	sp,sp,32
    3104:	03e00008 	jr	ra
    3108:	00000000 	nop

0000310c <func_80AC5DAC>:
    310c:	27bdffd8 	addiu	sp,sp,-40
    3110:	afb00014 	sw	s0,20(sp)
    3114:	00808025 	move	s0,a0
    3118:	afbf001c 	sw	ra,28(sp)
    311c:	afb10018 	sw	s1,24(sp)
    3120:	00a08825 	move	s1,a1
    3124:	afa60030 	sw	a2,48(sp)
    3128:	0c000000 	jal	0 <func_80AC2CA0>
    312c:	24a420d8 	addiu	a0,a1,8408
    3130:	24010006 	li	at,6
    3134:	54410042 	bnel	v0,at,3240 <func_80AC5DAC+0x134>
    3138:	8fbf001c 	lw	ra,28(sp)
    313c:	0c000000 	jal	0 <func_80AC2CA0>
    3140:	02202025 	move	a0,s1
    3144:	5040003e 	beqzl	v0,3240 <func_80AC5DAC+0x134>
    3148:	8fbf001c 	lw	ra,28(sp)
    314c:	860e001c 	lh	t6,28(s0)
    3150:	2401000a 	li	at,10
    3154:	55c1002d 	bnel	t6,at,320c <func_80AC5DAC+0x100>
    3158:	92090252 	lbu	t1,594(s0)
    315c:	920f0252 	lbu	t7,594(s0)
    3160:	02002025 	move	a0,s0
    3164:	000fc080 	sll	t8,t7,0x2
    3168:	0218c821 	addu	t9,s0,t8
    316c:	8f280200 	lw	t0,512(t9)
    3170:	0c000000 	jal	0 <func_80AC2CA0>
    3174:	afa80020 	sw	t0,32(sp)
    3178:	92090252 	lbu	t1,594(s0)
    317c:	02202025 	move	a0,s1
    3180:	00095080 	sll	t2,t1,0x2
    3184:	020a5821 	addu	t3,s0,t2
    3188:	8d650200 	lw	a1,512(t3)
    318c:	8cb901b0 	lw	t9,432(a1)
    3190:	0320f809 	jalr	t9
    3194:	00000000 	nop
    3198:	8fac0020 	lw	t4,32(sp)
    319c:	24010022 	li	at,34
    31a0:	3c030000 	lui	v1,0x0
    31a4:	858d001c 	lh	t5,28(t4)
    31a8:	24630000 	addiu	v1,v1,0
    31ac:	02202025 	move	a0,s1
    31b0:	15a10011 	bne	t5,at,31f8 <func_80AC5DAC+0xec>
    31b4:	00000000 	nop
    31b8:	94620ef6 	lhu	v0,3830(v1)
    31bc:	240570ab 	li	a1,28843
    31c0:	304e8000 	andi	t6,v0,0x8000
    31c4:	15c0000c 	bnez	t6,31f8 <func_80AC5DAC+0xec>
    31c8:	344f8000 	ori	t7,v0,0x8000
    31cc:	a46f0ef6 	sh	t7,3830(v1)
    31d0:	0c000000 	jal	0 <func_80AC2CA0>
    31d4:	02202025 	move	a0,s1
    31d8:	24180004 	li	t8,4
    31dc:	a21801eb 	sb	t8,491(s0)
    31e0:	02002025 	move	a0,s0
    31e4:	0c000000 	jal	0 <func_80AC2CA0>
    31e8:	02202825 	move	a1,s1
    31ec:	24080001 	li	t0,1
    31f0:	10000012 	b	323c <func_80AC5DAC+0x130>
    31f4:	a60801fc 	sh	t0,508(s0)
    31f8:	0c000000 	jal	0 <func_80AC2CA0>
    31fc:	02002825 	move	a1,s0
    3200:	1000000f 	b	3240 <func_80AC5DAC+0x134>
    3204:	8fbf001c 	lw	ra,28(sp)
    3208:	92090252 	lbu	t1,594(s0)
    320c:	02202025 	move	a0,s1
    3210:	00095080 	sll	t2,t1,0x2
    3214:	020a5821 	addu	t3,s0,t2
    3218:	8d650200 	lw	a1,512(t3)
    321c:	8cb901c4 	lw	t9,452(a1)
    3220:	0320f809 	jalr	t9
    3224:	00000000 	nop
    3228:	240c0011 	li	t4,17
    322c:	a60c01fc 	sh	t4,508(s0)
    3230:	02202025 	move	a0,s1
    3234:	0c000000 	jal	0 <func_80AC2CA0>
    3238:	2405006b 	li	a1,107
    323c:	8fbf001c 	lw	ra,28(sp)
    3240:	8fb00014 	lw	s0,20(sp)
    3244:	8fb10018 	lw	s1,24(sp)
    3248:	03e00008 	jr	ra
    324c:	27bd0028 	addiu	sp,sp,40

00003250 <func_80AC5EF0>:
    3250:	27bdffe0 	addiu	sp,sp,-32
    3254:	afb10018 	sw	s1,24(sp)
    3258:	00808825 	move	s1,a0
    325c:	afbf001c 	sw	ra,28(sp)
    3260:	afb00014 	sw	s0,20(sp)
    3264:	00a08025 	move	s0,a1
    3268:	afa60028 	sw	a2,40(sp)
    326c:	0c000000 	jal	0 <func_80AC2CA0>
    3270:	24a420d8 	addiu	a0,a1,8408
    3274:	24010004 	li	at,4
    3278:	14410043 	bne	v0,at,3388 <func_80AC5EF0+0x138>
    327c:	00401825 	move	v1,v0
    3280:	0c000000 	jal	0 <func_80AC2CA0>
    3284:	02002025 	move	a0,s0
    3288:	5040006a 	beqzl	v0,3434 <func_80AC5EF0+0x1e4>
    328c:	8fbf001c 	lw	ra,28(sp)
    3290:	0c000000 	jal	0 <func_80AC2CA0>
    3294:	02202025 	move	a0,s1
    3298:	922e0252 	lbu	t6,594(s1)
    329c:	02002025 	move	a0,s0
    32a0:	000e7880 	sll	t7,t6,0x2
    32a4:	022fc021 	addu	t8,s1,t7
    32a8:	8f050200 	lw	a1,512(t8)
    32ac:	8cb901b0 	lw	t9,432(a1)
    32b0:	0320f809 	jalr	t9
    32b4:	00000000 	nop
    32b8:	02202025 	move	a0,s1
    32bc:	02002825 	move	a1,s0
    32c0:	0c000000 	jal	0 <func_80AC2CA0>
    32c4:	26060014 	addiu	a2,s0,20
    32c8:	14400059 	bnez	v0,3430 <func_80AC5EF0+0x1e0>
    32cc:	3c020001 	lui	v0,0x1
    32d0:	00501021 	addu	v0,v0,s0
    32d4:	904204bd 	lbu	v0,1213(v0)
    32d8:	24010001 	li	at,1
    32dc:	3c040000 	lui	a0,0x0
    32e0:	10400005 	beqz	v0,32f8 <func_80AC5EF0+0xa8>
    32e4:	00000000 	nop
    32e8:	10410020 	beq	v0,at,336c <func_80AC5EF0+0x11c>
    32ec:	3c040000 	lui	a0,0x0
    32f0:	1000001e 	b	336c <func_80AC5EF0+0x11c>
    32f4:	00000000 	nop
    32f8:	0c000000 	jal	0 <func_80AC2CA0>
    32fc:	24840000 	addiu	a0,a0,0
    3300:	8fa20028 	lw	v0,40(sp)
    3304:	34018000 	li	at,0x8000
    3308:	02002025 	move	a0,s0
    330c:	844800b6 	lh	t0,182(v0)
    3310:	8c4a0680 	lw	t2,1664(v0)
    3314:	24050002 	li	a1,2
    3318:	01014821 	addu	t1,t0,at
    331c:	3c012000 	lui	at,0x2000
    3320:	01415825 	or	t3,t2,at
    3324:	a44900b6 	sh	t1,182(v0)
    3328:	0c000000 	jal	0 <func_80AC2CA0>
    332c:	ac4b0680 	sw	t3,1664(v0)
    3330:	02002025 	move	a0,s0
    3334:	9625010e 	lhu	a1,270(s1)
    3338:	0c000000 	jal	0 <func_80AC2CA0>
    333c:	02203025 	move	a2,s1
    3340:	02002025 	move	a0,s0
    3344:	02202825 	move	a1,s1
    3348:	0c000000 	jal	0 <func_80AC2CA0>
    334c:	24060001 	li	a2,1
    3350:	02202025 	move	a0,s1
    3354:	02002825 	move	a1,s0
    3358:	3c0642c8 	lui	a2,0x42c8
    335c:	0c000000 	jal	0 <func_80AC2CA0>
    3360:	2407ffff 	li	a3,-1
    3364:	10000033 	b	3434 <func_80AC5EF0+0x1e4>
    3368:	8fbf001c 	lw	ra,28(sp)
    336c:	0c000000 	jal	0 <func_80AC2CA0>
    3370:	24840000 	addiu	a0,a0,0
    3374:	02002025 	move	a0,s0
    3378:	0c000000 	jal	0 <func_80AC2CA0>
    337c:	02202825 	move	a1,s1
    3380:	1000002c 	b	3434 <func_80AC5EF0+0x1e4>
    3384:	8fbf001c 	lw	ra,28(sp)
    3388:	24010005 	li	at,5
    338c:	54610029 	bnel	v1,at,3434 <func_80AC5EF0+0x1e4>
    3390:	8fbf001c 	lw	ra,28(sp)
    3394:	0c000000 	jal	0 <func_80AC2CA0>
    3398:	02002025 	move	a0,s0
    339c:	50400025 	beqzl	v0,3434 <func_80AC5EF0+0x1e4>
    33a0:	8fbf001c 	lw	ra,28(sp)
    33a4:	0c000000 	jal	0 <func_80AC2CA0>
    33a8:	02202025 	move	a0,s1
    33ac:	922c0252 	lbu	t4,594(s1)
    33b0:	02002025 	move	a0,s0
    33b4:	000c6880 	sll	t5,t4,0x2
    33b8:	022d7021 	addu	t6,s1,t5
    33bc:	8dc50200 	lw	a1,512(t6)
    33c0:	8cb901b0 	lw	t9,432(a1)
    33c4:	0320f809 	jalr	t9
    33c8:	00000000 	nop
    33cc:	8fa20028 	lw	v0,40(sp)
    33d0:	34018000 	li	at,0x8000
    33d4:	02002025 	move	a0,s0
    33d8:	844f00b6 	lh	t7,182(v0)
    33dc:	8c480680 	lw	t0,1664(v0)
    33e0:	24050002 	li	a1,2
    33e4:	01e1c021 	addu	t8,t7,at
    33e8:	3c012000 	lui	at,0x2000
    33ec:	01014825 	or	t1,t0,at
    33f0:	a45800b6 	sh	t8,182(v0)
    33f4:	0c000000 	jal	0 <func_80AC2CA0>
    33f8:	ac490680 	sw	t1,1664(v0)
    33fc:	02002025 	move	a0,s0
    3400:	9625010e 	lhu	a1,270(s1)
    3404:	0c000000 	jal	0 <func_80AC2CA0>
    3408:	02203025 	move	a2,s1
    340c:	02002025 	move	a0,s0
    3410:	02202825 	move	a1,s1
    3414:	0c000000 	jal	0 <func_80AC2CA0>
    3418:	24060001 	li	a2,1
    341c:	02202025 	move	a0,s1
    3420:	02002825 	move	a1,s0
    3424:	3c0642c8 	lui	a2,0x42c8
    3428:	0c000000 	jal	0 <func_80AC2CA0>
    342c:	2407ffff 	li	a3,-1
    3430:	8fbf001c 	lw	ra,28(sp)
    3434:	8fb00014 	lw	s0,20(sp)
    3438:	8fb10018 	lw	s1,24(sp)
    343c:	03e00008 	jr	ra
    3440:	27bd0020 	addiu	sp,sp,32

00003444 <func_80AC60E4>:
    3444:	27bdffe8 	addiu	sp,sp,-24
    3448:	afbf0014 	sw	ra,20(sp)
    344c:	afa40018 	sw	a0,24(sp)
    3450:	afa5001c 	sw	a1,28(sp)
    3454:	afa60020 	sw	a2,32(sp)
    3458:	0c000000 	jal	0 <func_80AC2CA0>
    345c:	24a420d8 	addiu	a0,a1,8408
    3460:	24010005 	li	at,5
    3464:	5441000d 	bnel	v0,at,349c <func_80AC60E4+0x58>
    3468:	8fbf0014 	lw	ra,20(sp)
    346c:	0c000000 	jal	0 <func_80AC2CA0>
    3470:	8fa4001c 	lw	a0,28(sp)
    3474:	10400008 	beqz	v0,3498 <func_80AC60E4+0x54>
    3478:	3c020000 	lui	v0,0x0
    347c:	24420000 	addiu	v0,v0,0
    3480:	944e0f16 	lhu	t6,3862(v0)
    3484:	8fa4001c 	lw	a0,28(sp)
    3488:	8fa50018 	lw	a1,24(sp)
    348c:	35cf1000 	ori	t7,t6,0x1000
    3490:	0c000000 	jal	0 <func_80AC2CA0>
    3494:	a44f0f16 	sh	t7,3862(v0)
    3498:	8fbf0014 	lw	ra,20(sp)
    349c:	27bd0018 	addiu	sp,sp,24
    34a0:	03e00008 	jr	ra
    34a4:	00000000 	nop

000034a8 <func_80AC6148>:
    34a8:	27bdffe8 	addiu	sp,sp,-24
    34ac:	afbf0014 	sw	ra,20(sp)
    34b0:	afa40018 	sw	a0,24(sp)
    34b4:	afa5001c 	sw	a1,28(sp)
    34b8:	afa60020 	sw	a2,32(sp)
    34bc:	0c000000 	jal	0 <func_80AC2CA0>
    34c0:	24a420d8 	addiu	a0,a1,8408
    34c4:	24010001 	li	at,1
    34c8:	54410010 	bnel	v0,at,350c <func_80AC6148+0x64>
    34cc:	8fbf0014 	lw	ra,20(sp)
    34d0:	0c000000 	jal	0 <func_80AC2CA0>
    34d4:	8fa4001c 	lw	a0,28(sp)
    34d8:	1040000b 	beqz	v0,3508 <func_80AC6148+0x60>
    34dc:	8faf0018 	lw	t7,24(sp)
    34e0:	240e0016 	li	t6,22
    34e4:	a5ee01fc 	sh	t6,508(t7)
    34e8:	8fa4001c 	lw	a0,28(sp)
    34ec:	0c000000 	jal	0 <func_80AC2CA0>
    34f0:	24053012 	li	a1,12306
    34f4:	3c020000 	lui	v0,0x0
    34f8:	24420000 	addiu	v0,v0,0
    34fc:	94580f16 	lhu	t8,3862(v0)
    3500:	37191000 	ori	t9,t8,0x1000
    3504:	a4590f16 	sh	t9,3862(v0)
    3508:	8fbf0014 	lw	ra,20(sp)
    350c:	27bd0018 	addiu	sp,sp,24
    3510:	03e00008 	jr	ra
    3514:	00000000 	nop

00003518 <func_80AC61B8>:
    3518:	27bdffe8 	addiu	sp,sp,-24
    351c:	afbf0014 	sw	ra,20(sp)
    3520:	afa40018 	sw	a0,24(sp)
    3524:	afa5001c 	sw	a1,28(sp)
    3528:	afa60020 	sw	a2,32(sp)
    352c:	0c000000 	jal	0 <func_80AC2CA0>
    3530:	24a420d8 	addiu	a0,a1,8408
    3534:	24010005 	li	at,5
    3538:	54410008 	bnel	v0,at,355c <func_80AC61B8+0x44>
    353c:	8fbf0014 	lw	ra,20(sp)
    3540:	0c000000 	jal	0 <func_80AC2CA0>
    3544:	8fa4001c 	lw	a0,28(sp)
    3548:	10400003 	beqz	v0,3558 <func_80AC61B8+0x40>
    354c:	8fa4001c 	lw	a0,28(sp)
    3550:	0c000000 	jal	0 <func_80AC2CA0>
    3554:	8fa50018 	lw	a1,24(sp)
    3558:	8fbf0014 	lw	ra,20(sp)
    355c:	27bd0018 	addiu	sp,sp,24
    3560:	03e00008 	jr	ra
    3564:	00000000 	nop

00003568 <func_80AC6208>:
    3568:	27bdffe8 	addiu	sp,sp,-24
    356c:	afbf0014 	sw	ra,20(sp)
    3570:	afa40018 	sw	a0,24(sp)
    3574:	afa5001c 	sw	a1,28(sp)
    3578:	afa60020 	sw	a2,32(sp)
    357c:	0c000000 	jal	0 <func_80AC2CA0>
    3580:	24a420d8 	addiu	a0,a1,8408
    3584:	24010005 	li	at,5
    3588:	54410008 	bnel	v0,at,35ac <func_80AC6208+0x44>
    358c:	8fbf0014 	lw	ra,20(sp)
    3590:	0c000000 	jal	0 <func_80AC2CA0>
    3594:	8fa4001c 	lw	a0,28(sp)
    3598:	10400003 	beqz	v0,35a8 <func_80AC6208+0x40>
    359c:	8fa4001c 	lw	a0,28(sp)
    35a0:	0c000000 	jal	0 <func_80AC2CA0>
    35a4:	8fa50018 	lw	a1,24(sp)
    35a8:	8fbf0014 	lw	ra,20(sp)
    35ac:	27bd0018 	addiu	sp,sp,24
    35b0:	03e00008 	jr	ra
    35b4:	00000000 	nop

000035b8 <func_80AC6258>:
    35b8:	27bdffe8 	addiu	sp,sp,-24
    35bc:	afbf0014 	sw	ra,20(sp)
    35c0:	afa40018 	sw	a0,24(sp)
    35c4:	afa5001c 	sw	a1,28(sp)
    35c8:	afa60020 	sw	a2,32(sp)
    35cc:	0c000000 	jal	0 <func_80AC2CA0>
    35d0:	24a420d8 	addiu	a0,a1,8408
    35d4:	24010005 	li	at,5
    35d8:	5441000f 	bnel	v0,at,3618 <func_80AC6258+0x60>
    35dc:	8fbf0014 	lw	ra,20(sp)
    35e0:	0c000000 	jal	0 <func_80AC2CA0>
    35e4:	8fa4001c 	lw	a0,28(sp)
    35e8:	1040000a 	beqz	v0,3614 <func_80AC6258+0x5c>
    35ec:	3c020000 	lui	v0,0x0
    35f0:	24420000 	addiu	v0,v0,0
    35f4:	944e0ef4 	lhu	t6,3828(v0)
    35f8:	8fa50018 	lw	a1,24(sp)
    35fc:	24180002 	li	t8,2
    3600:	35cf0400 	ori	t7,t6,0x400
    3604:	a44f0ef4 	sh	t7,3828(v0)
    3608:	a0b80252 	sb	t8,594(a1)
    360c:	0c000000 	jal	0 <func_80AC2CA0>
    3610:	8fa4001c 	lw	a0,28(sp)
    3614:	8fbf0014 	lw	ra,20(sp)
    3618:	27bd0018 	addiu	sp,sp,24
    361c:	03e00008 	jr	ra
    3620:	00000000 	nop

00003624 <func_80AC62C4>:
    3624:	27bdffe8 	addiu	sp,sp,-24
    3628:	afbf0014 	sw	ra,20(sp)
    362c:	afa5001c 	sw	a1,28(sp)
    3630:	0c000000 	jal	0 <func_80AC2CA0>
    3634:	240571b2 	li	a1,29106
    3638:	8faf001c 	lw	t7,28(sp)
    363c:	240e001a 	li	t6,26
    3640:	a5ee01fc 	sh	t6,508(t7)
    3644:	8fbf0014 	lw	ra,20(sp)
    3648:	27bd0018 	addiu	sp,sp,24
    364c:	03e00008 	jr	ra
    3650:	00000000 	nop

00003654 <func_80AC62F4>:
    3654:	27bdffd8 	addiu	sp,sp,-40
    3658:	afb00018 	sw	s0,24(sp)
    365c:	00808025 	move	s0,a0
    3660:	afbf001c 	sw	ra,28(sp)
    3664:	afa5002c 	sw	a1,44(sp)
    3668:	afa60030 	sw	a2,48(sp)
    366c:	0c000000 	jal	0 <func_80AC2CA0>
    3670:	24a420d8 	addiu	a0,a1,8408
    3674:	24010006 	li	at,6
    3678:	54410016 	bnel	v0,at,36d4 <func_80AC62F4+0x80>
    367c:	8fbf001c 	lw	ra,28(sp)
    3680:	0c000000 	jal	0 <func_80AC2CA0>
    3684:	8fa4002c 	lw	a0,44(sp)
    3688:	50400012 	beqzl	v0,36d4 <func_80AC62F4+0x80>
    368c:	8fbf001c 	lw	ra,28(sp)
    3690:	920e0252 	lbu	t6,594(s0)
    3694:	8fa4002c 	lw	a0,44(sp)
    3698:	02002825 	move	a1,s0
    369c:	000e7880 	sll	t7,t6,0x2
    36a0:	020fc021 	addu	t8,s0,t7
    36a4:	8f060200 	lw	a2,512(t8)
    36a8:	0c000000 	jal	0 <func_80AC2CA0>
    36ac:	afa60024 	sw	a2,36(sp)
    36b0:	8fa50024 	lw	a1,36(sp)
    36b4:	44802000 	mtc1	zero,$f4
    36b8:	a2000251 	sb	zero,593(s0)
    36bc:	e60402d0 	swc1	$f4,720(s0)
    36c0:	8cb901ac 	lw	t9,428(a1)
    36c4:	8fa4002c 	lw	a0,44(sp)
    36c8:	0320f809 	jalr	t9
    36cc:	00000000 	nop
    36d0:	8fbf001c 	lw	ra,28(sp)
    36d4:	8fb00018 	lw	s0,24(sp)
    36d8:	27bd0028 	addiu	sp,sp,40
    36dc:	03e00008 	jr	ra
    36e0:	00000000 	nop

000036e4 <func_80AC6384>:
    36e4:	90820252 	lbu	v0,594(a0)
    36e8:	848e001c 	lh	t6,28(a0)
    36ec:	3c080000 	lui	t0,0x0
    36f0:	0002c0c0 	sll	t8,v0,0x3
    36f4:	000e7980 	sll	t7,t6,0x6
    36f8:	01f8c821 	addu	t9,t7,t8
    36fc:	25080000 	addiu	t0,t0,0
    3700:	03281821 	addu	v1,t9,t0
    3704:	846f0002 	lh	t7,2(v1)
    3708:	00025883 	sra	t3,v0,0x2
    370c:	316c00ff 	andi	t4,t3,0xff
    3710:	448f2000 	mtc1	t7,$f4
    3714:	000c6880 	sll	t5,t4,0x2
    3718:	01ac6823 	subu	t5,t5,t4
    371c:	468020a0 	cvt.s.w	$f2,$f4
    3720:	3c0e0000 	lui	t6,0x0
    3724:	25ce0000 	addiu	t6,t6,0
    3728:	000d6880 	sll	t5,t5,0x2
    372c:	84780004 	lh	t8,4(v1)
    3730:	01ae3021 	addu	a2,t5,t6
    3734:	c4c60000 	lwc1	$f6,0(a2)
    3738:	44982000 	mtc1	t8,$f4
    373c:	c48c02d0 	lwc1	$f12,720(a0)
    3740:	46023201 	sub.s	$f8,$f6,$f2
    3744:	c4c60004 	lwc1	$f6,4(a2)
    3748:	84790006 	lh	t9,6(v1)
    374c:	46802420 	cvt.s.w	$f16,$f4
    3750:	460c4282 	mul.s	$f10,$f8,$f12
    3754:	44992000 	mtc1	t9,$f4
    3758:	00024880 	sll	t1,v0,0x2
    375c:	00895021 	addu	t2,a0,t1
    3760:	8d450200 	lw	a1,512(t2)
    3764:	46103201 	sub.s	$f8,$f6,$f16
    3768:	27bdffe0 	addiu	sp,sp,-32
    376c:	46025000 	add.s	$f0,$f10,$f2
    3770:	460c4282 	mul.s	$f10,$f8,$f12
    3774:	c4c80008 	lwc1	$f8,8(a2)
    3778:	468021a0 	cvt.s.w	$f6,$f4
    377c:	46105380 	add.s	$f14,$f10,$f16
    3780:	e7a60000 	swc1	$f6,0(sp)
    3784:	c7aa0000 	lwc1	$f10,0(sp)
    3788:	8c880220 	lw	t0,544(a0)
    378c:	460a4101 	sub.s	$f4,$f8,$f10
    3790:	c5080024 	lwc1	$f8,36(t0)
    3794:	460c2182 	mul.s	$f6,$f4,$f12
    3798:	46004100 	add.s	$f4,$f8,$f0
    379c:	e4a40024 	swc1	$f4,36(a1)
    37a0:	8c890220 	lw	t1,544(a0)
    37a4:	460a3480 	add.s	$f18,$f6,$f10
    37a8:	c5260028 	lwc1	$f6,40(t1)
    37ac:	460e3280 	add.s	$f10,$f6,$f14
    37b0:	e4aa0028 	swc1	$f10,40(a1)
    37b4:	8c8a0220 	lw	t2,544(a0)
    37b8:	c548002c 	lwc1	$f8,44(t2)
    37bc:	27bd0020 	addiu	sp,sp,32
    37c0:	46124100 	add.s	$f4,$f8,$f18
    37c4:	03e00008 	jr	ra
    37c8:	e4a4002c 	swc1	$f4,44(a1)

000037cc <func_80AC646C>:
    37cc:	44802000 	mtc1	zero,$f4
    37d0:	27bdffe8 	addiu	sp,sp,-24
    37d4:	afbf0014 	sw	ra,20(sp)
    37d8:	0c000000 	jal	0 <func_80AC2CA0>
    37dc:	e48402d0 	swc1	$f4,720(a0)
    37e0:	8fbf0014 	lw	ra,20(sp)
    37e4:	27bd0018 	addiu	sp,sp,24
    37e8:	03e00008 	jr	ra
    37ec:	00000000 	nop

000037f0 <func_80AC6490>:
    37f0:	3c013f80 	lui	at,0x3f80
    37f4:	44810000 	mtc1	at,$f0
    37f8:	27bdffe0 	addiu	sp,sp,-32
    37fc:	afb00018 	sw	s0,24(sp)
    3800:	00808025 	move	s0,a0
    3804:	afbf001c 	sw	ra,28(sp)
    3808:	3c073e19 	lui	a3,0x3e19
    380c:	44050000 	mfc1	a1,$f0
    3810:	44060000 	mfc1	a2,$f0
    3814:	34e7999a 	ori	a3,a3,0x999a
    3818:	0c000000 	jal	0 <func_80AC2CA0>
    381c:	248402d0 	addiu	a0,a0,720
    3820:	3c010000 	lui	at,0x0
    3824:	c4260000 	lwc1	$f6,0(at)
    3828:	c60402d0 	lwc1	$f4,720(s0)
    382c:	3c013f80 	lui	at,0x3f80
    3830:	4604303e 	c.le.s	$f6,$f4
    3834:	00000000 	nop
    3838:	45000004 	bc1f	384c <func_80AC6490+0x5c>
    383c:	00000000 	nop
    3840:	44814000 	mtc1	at,$f8
    3844:	00000000 	nop
    3848:	e60802d0 	swc1	$f8,720(s0)
    384c:	0c000000 	jal	0 <func_80AC2CA0>
    3850:	02002025 	move	a0,s0
    3854:	3c013f80 	lui	at,0x3f80
    3858:	44815000 	mtc1	at,$f10
    385c:	c61002d0 	lwc1	$f16,720(s0)
    3860:	8fbf001c 	lw	ra,28(sp)
    3864:	00001025 	move	v0,zero
    3868:	46105032 	c.eq.s	$f10,$f16
    386c:	00000000 	nop
    3870:	45000003 	bc1f	3880 <func_80AC6490+0x90>
    3874:	00000000 	nop
    3878:	10000001 	b	3880 <func_80AC6490+0x90>
    387c:	24020001 	li	v0,1
    3880:	8fb00018 	lw	s0,24(sp)
    3884:	03e00008 	jr	ra
    3888:	27bd0020 	addiu	sp,sp,32

0000388c <func_80AC652C>:
    388c:	27bdffe0 	addiu	sp,sp,-32
    3890:	afb00018 	sw	s0,24(sp)
    3894:	00808025 	move	s0,a0
    3898:	afbf001c 	sw	ra,28(sp)
    389c:	3c073e19 	lui	a3,0x3e19
    38a0:	34e7999a 	ori	a3,a3,0x999a
    38a4:	248402d0 	addiu	a0,a0,720
    38a8:	24050000 	li	a1,0
    38ac:	0c000000 	jal	0 <func_80AC2CA0>
    38b0:	3c063f80 	lui	a2,0x3f80
    38b4:	3c010000 	lui	at,0x0
    38b8:	c4240000 	lwc1	$f4,0(at)
    38bc:	c60602d0 	lwc1	$f6,720(s0)
    38c0:	4604303e 	c.le.s	$f6,$f4
    38c4:	00000000 	nop
    38c8:	45000004 	bc1f	38dc <func_80AC652C+0x50>
    38cc:	00000000 	nop
    38d0:	44804000 	mtc1	zero,$f8
    38d4:	00000000 	nop
    38d8:	e60802d0 	swc1	$f8,720(s0)
    38dc:	0c000000 	jal	0 <func_80AC2CA0>
    38e0:	02002025 	move	a0,s0
    38e4:	44805000 	mtc1	zero,$f10
    38e8:	c61002d0 	lwc1	$f16,720(s0)
    38ec:	8fbf001c 	lw	ra,28(sp)
    38f0:	00001025 	move	v0,zero
    38f4:	46105032 	c.eq.s	$f10,$f16
    38f8:	00000000 	nop
    38fc:	45000003 	bc1f	390c <func_80AC652C+0x80>
    3900:	00000000 	nop
    3904:	10000001 	b	390c <func_80AC652C+0x80>
    3908:	24020001 	li	v0,1
    390c:	8fb00018 	lw	s0,24(sp)
    3910:	03e00008 	jr	ra
    3914:	27bd0020 	addiu	sp,sp,32

00003918 <func_80AC65B8>:
    3918:	27bdfff8 	addiu	sp,sp,-8
    391c:	afb00004 	sw	s0,4(sp)
    3920:	24820200 	addiu	v0,a0,512
    3924:	24100001 	li	s0,1
    3928:	00001825 	move	v1,zero
    392c:	240d000e 	li	t5,14
    3930:	240c0018 	li	t4,24
    3934:	240b000d 	li	t3,13
    3938:	240a000c 	li	t2,12
    393c:	2409000b 	li	t1,11
    3940:	2408000a 	li	t0,10
    3944:	24070009 	li	a3,9
    3948:	8c450000 	lw	a1,0(v0)
    394c:	24010008 	li	at,8
    3950:	50a0001c 	beqzl	a1,39c4 <func_80AC65B8+0xac>
    3954:	8c450004 	lw	a1,4(v0)
    3958:	848601fc 	lh	a2,508(a0)
    395c:	50e60013 	beql	a3,a2,39ac <func_80AC65B8+0x94>
    3960:	908f0252 	lbu	t7,594(a0)
    3964:	51060011 	beql	t0,a2,39ac <func_80AC65B8+0x94>
    3968:	908f0252 	lbu	t7,594(a0)
    396c:	5126000f 	beql	t1,a2,39ac <func_80AC65B8+0x94>
    3970:	908f0252 	lbu	t7,594(a0)
    3974:	5146000d 	beql	t2,a2,39ac <func_80AC65B8+0x94>
    3978:	908f0252 	lbu	t7,594(a0)
    397c:	5166000b 	beql	t3,a2,39ac <func_80AC65B8+0x94>
    3980:	908f0252 	lbu	t7,594(a0)
    3984:	51860009 	beql	t4,a2,39ac <func_80AC65B8+0x94>
    3988:	908f0252 	lbu	t7,594(a0)
    398c:	51a60007 	beql	t5,a2,39ac <func_80AC65B8+0x94>
    3990:	908f0252 	lbu	t7,594(a0)
    3994:	908e0251 	lbu	t6,593(a0)
    3998:	55c00004 	bnezl	t6,39ac <func_80AC65B8+0x94>
    399c:	908f0252 	lbu	t7,594(a0)
    39a0:	10000007 	b	39c0 <func_80AC65B8+0xa8>
    39a4:	a4a001b4 	sh	zero,436(a1)
    39a8:	908f0252 	lbu	t7,594(a0)
    39ac:	546f0004 	bnel	v1,t7,39c0 <func_80AC65B8+0xa8>
    39b0:	a4a001b4 	sh	zero,436(a1)
    39b4:	10000002 	b	39c0 <func_80AC65B8+0xa8>
    39b8:	a4b001b4 	sh	s0,436(a1)
    39bc:	a4a001b4 	sh	zero,436(a1)
    39c0:	8c450004 	lw	a1,4(v0)
    39c4:	24420004 	addiu	v0,v0,4
    39c8:	50a0001d 	beqzl	a1,3a40 <func_80AC65B8+0x128>
    39cc:	24630002 	addiu	v1,v1,2
    39d0:	848601fc 	lh	a2,508(a0)
    39d4:	50e60013 	beql	a3,a2,3a24 <func_80AC65B8+0x10c>
    39d8:	908e0252 	lbu	t6,594(a0)
    39dc:	51060011 	beql	t0,a2,3a24 <func_80AC65B8+0x10c>
    39e0:	908e0252 	lbu	t6,594(a0)
    39e4:	5126000f 	beql	t1,a2,3a24 <func_80AC65B8+0x10c>
    39e8:	908e0252 	lbu	t6,594(a0)
    39ec:	5146000d 	beql	t2,a2,3a24 <func_80AC65B8+0x10c>
    39f0:	908e0252 	lbu	t6,594(a0)
    39f4:	5166000b 	beql	t3,a2,3a24 <func_80AC65B8+0x10c>
    39f8:	908e0252 	lbu	t6,594(a0)
    39fc:	51860009 	beql	t4,a2,3a24 <func_80AC65B8+0x10c>
    3a00:	908e0252 	lbu	t6,594(a0)
    3a04:	51a60007 	beql	t5,a2,3a24 <func_80AC65B8+0x10c>
    3a08:	908e0252 	lbu	t6,594(a0)
    3a0c:	90980251 	lbu	t8,593(a0)
    3a10:	57000004 	bnezl	t8,3a24 <func_80AC65B8+0x10c>
    3a14:	908e0252 	lbu	t6,594(a0)
    3a18:	10000008 	b	3a3c <func_80AC65B8+0x124>
    3a1c:	a4a001b4 	sh	zero,436(a1)
    3a20:	908e0252 	lbu	t6,594(a0)
    3a24:	24790001 	addiu	t9,v1,1
    3a28:	572e0004 	bnel	t9,t6,3a3c <func_80AC65B8+0x124>
    3a2c:	a4a001b4 	sh	zero,436(a1)
    3a30:	10000002 	b	3a3c <func_80AC65B8+0x124>
    3a34:	a4b001b4 	sh	s0,436(a1)
    3a38:	a4a001b4 	sh	zero,436(a1)
    3a3c:	24630002 	addiu	v1,v1,2
    3a40:	1461ffc1 	bne	v1,at,3948 <func_80AC65B8+0x30>
    3a44:	24420004 	addiu	v0,v0,4
    3a48:	8fb00004 	lw	s0,4(sp)
    3a4c:	03e00008 	jr	ra
    3a50:	27bd0008 	addiu	sp,sp,8

00003a54 <func_80AC66F4>:
    3a54:	908e0250 	lbu	t6,592(a0)
    3a58:	c480024c 	lwc1	$f0,588(a0)
    3a5c:	3c010000 	lui	at,0x0
    3a60:	15c00010 	bnez	t6,3aa4 <func_80AC66F4+0x50>
    3a64:	00000000 	nop
    3a68:	3c013f80 	lui	at,0x3f80
    3a6c:	44811000 	mtc1	at,$f2
    3a70:	3c010000 	lui	at,0x0
    3a74:	c4240000 	lwc1	$f4,0(at)
    3a78:	240f0001 	li	t7,1
    3a7c:	46040000 	add.s	$f0,$f0,$f4
    3a80:	4600103e 	c.le.s	$f2,$f0
    3a84:	00000000 	nop
    3a88:	45020004 	bc1fl	3a9c <func_80AC66F4+0x48>
    3a8c:	44801000 	mtc1	zero,$f2
    3a90:	46001006 	mov.s	$f0,$f2
    3a94:	a08f0250 	sb	t7,592(a0)
    3a98:	44801000 	mtc1	zero,$f2
    3a9c:	1000000b 	b	3acc <func_80AC66F4+0x78>
    3aa0:	3c0142a0 	lui	at,0x42a0
    3aa4:	c4260000 	lwc1	$f6,0(at)
    3aa8:	44801000 	mtc1	zero,$f2
    3aac:	46060001 	sub.s	$f0,$f0,$f6
    3ab0:	4602003e 	c.le.s	$f0,$f2
    3ab4:	00000000 	nop
    3ab8:	45020004 	bc1fl	3acc <func_80AC66F4+0x78>
    3abc:	3c0142a0 	lui	at,0x42a0
    3ac0:	46001006 	mov.s	$f0,$f2
    3ac4:	a0800250 	sb	zero,592(a0)
    3ac8:	3c0142a0 	lui	at,0x42a0
    3acc:	44815000 	mtc1	at,$f10
    3ad0:	4600120d 	trunc.w.s	$f8,$f2
    3ad4:	240300ff 	li	v1,255
    3ad8:	46005402 	mul.s	$f16,$f10,$f0
    3adc:	240d0050 	li	t5,80
    3ae0:	44024000 	mfc1	v0,$f8
    3ae4:	e480024c 	swc1	$f0,588(a0)
    3ae8:	0002c823 	negu	t9,v0
    3aec:	332800ff 	andi	t0,t9,0xff
    3af0:	4600848d 	trunc.w.s	$f18,$f16
    3af4:	01a27023 	subu	t6,t5,v0
    3af8:	0062c023 	subu	t8,v1,v0
    3afc:	31cf00ff 	andi	t7,t6,0xff
    3b00:	440a9000 	mfc1	t2,$f18
    3b04:	331900ff 	andi	t9,t8,0xff
    3b08:	ac88023c 	sw	t0,572(a0)
    3b0c:	006a5823 	subu	t3,v1,t2
    3b10:	316c00ff 	andi	t4,t3,0xff
    3b14:	ac8c0240 	sw	t4,576(a0)
    3b18:	ac8f0244 	sw	t7,580(a0)
    3b1c:	03e00008 	jr	ra
    3b20:	ac990248 	sw	t9,584(a0)

00003b24 <func_80AC67C4>:
    3b24:	908e02cc 	lbu	t6,716(a0)
    3b28:	c48202c4 	lwc1	$f2,708(a0)
    3b2c:	c48002c8 	lwc1	$f0,712(a0)
    3b30:	15c00010 	bnez	t6,3b74 <func_80AC67C4+0x50>
    3b34:	240700ff 	li	a3,255
    3b38:	3c013f80 	lui	at,0x3f80
    3b3c:	44816000 	mtc1	at,$f12
    3b40:	3c010000 	lui	at,0x0
    3b44:	c4240000 	lwc1	$f4,0(at)
    3b48:	44807000 	mtc1	zero,$f14
    3b4c:	240f0001 	li	t7,1
    3b50:	46041080 	add.s	$f2,$f2,$f4
    3b54:	4602603c 	c.lt.s	$f12,$f2
    3b58:	00000000 	nop
    3b5c:	45000003 	bc1f	3b6c <func_80AC67C4+0x48>
    3b60:	00000000 	nop
    3b64:	46006086 	mov.s	$f2,$f12
    3b68:	a08f02cc 	sb	t7,716(a0)
    3b6c:	1000000c 	b	3ba0 <func_80AC67C4+0x7c>
    3b70:	909802cd 	lbu	t8,717(a0)
    3b74:	3c010000 	lui	at,0x0
    3b78:	c4260000 	lwc1	$f6,0(at)
    3b7c:	44807000 	mtc1	zero,$f14
    3b80:	46061081 	sub.s	$f2,$f2,$f6
    3b84:	460e103c 	c.lt.s	$f2,$f14
    3b88:	00000000 	nop
    3b8c:	45020004 	bc1fl	3ba0 <func_80AC67C4+0x7c>
    3b90:	909802cd 	lbu	t8,717(a0)
    3b94:	46007086 	mov.s	$f2,$f14
    3b98:	a08002cc 	sb	zero,716(a0)
    3b9c:	909802cd 	lbu	t8,717(a0)
    3ba0:	3c013f80 	lui	at,0x3f80
    3ba4:	44816000 	mtc1	at,$f12
    3ba8:	1700000c 	bnez	t8,3bdc <func_80AC67C4+0xb8>
    3bac:	e48202c4 	swc1	$f2,708(a0)
    3bb0:	3c010000 	lui	at,0x0
    3bb4:	c4280000 	lwc1	$f8,0(at)
    3bb8:	24190001 	li	t9,1
    3bbc:	46080000 	add.s	$f0,$f0,$f8
    3bc0:	4600603c 	c.lt.s	$f12,$f0
    3bc4:	00000000 	nop
    3bc8:	45020007 	bc1fl	3be8 <func_80AC67C4+0xc4>
    3bcc:	3c01431b 	lui	at,0x431b
    3bd0:	46006006 	mov.s	$f0,$f12
    3bd4:	10000003 	b	3be4 <func_80AC67C4+0xc0>
    3bd8:	a09902cd 	sb	t9,717(a0)
    3bdc:	46007006 	mov.s	$f0,$f14
    3be0:	a08002cd 	sb	zero,717(a0)
    3be4:	3c01431b 	lui	at,0x431b
    3be8:	44815000 	mtc1	at,$f10
    3bec:	3c01c2c8 	lui	at,0xc2c8
    3bf0:	44812000 	mtc1	at,$f4
    3bf4:	46025402 	mul.s	$f16,$f10,$f2
    3bf8:	3c014248 	lui	at,0x4248
    3bfc:	44815000 	mtc1	at,$f10
    3c00:	46022182 	mul.s	$f6,$f4,$f2
    3c04:	3c014391 	lui	at,0x4391
    3c08:	44812000 	mtc1	at,$f4
    3c0c:	3c0142b6 	lui	at,0x42b6
    3c10:	44816000 	mtc1	at,$f12
    3c14:	3c0142be 	lui	at,0x42be
    3c18:	4600848d 	trunc.w.s	$f18,$f16
    3c1c:	46025402 	mul.s	$f16,$f10,$f2
    3c20:	44817000 	mtc1	at,$f14
    3c24:	3c014204 	lui	at,0x4204
    3c28:	44029000 	mfc1	v0,$f18
    3c2c:	e48402b4 	swc1	$f4,692(a0)
    3c30:	240c00c8 	li	t4,200
    3c34:	4600320d 	trunc.w.s	$f8,$f6
    3c38:	44813000 	mtc1	at,$f6
    3c3c:	3c014100 	lui	at,0x4100
    3c40:	4600848d 	trunc.w.s	$f18,$f16
    3c44:	44054000 	mfc1	a1,$f8
    3c48:	44814000 	mtc1	at,$f8
    3c4c:	3c014389 	lui	at,0x4389
    3c50:	44815000 	mtc1	at,$f10
    3c54:	46004082 	mul.s	$f2,$f8,$f0
    3c58:	440b9000 	mfc1	t3,$f18
    3c5c:	3c014244 	lui	at,0x4244
    3c60:	44819000 	mtc1	at,$f18
    3c64:	00e21823 	subu	v1,a3,v0
    3c68:	306300ff 	andi	v1,v1,0xff
    3c6c:	ac83026c 	sw	v1,620(a0)
    3c70:	46025400 	add.s	$f16,$f10,$f2
    3c74:	00e21823 	subu	v1,a3,v0
    3c78:	306300ff 	andi	v1,v1,0xff
    3c7c:	46029101 	sub.s	$f4,$f18,$f2
    3c80:	00052823 	negu	a1,a1
    3c84:	018b3023 	subu	a2,t4,t3
    3c88:	30a500ff 	andi	a1,a1,0xff
    3c8c:	30c600ff 	andi	a2,a2,0xff
    3c90:	e48002c8 	swc1	$f0,712(a0)
    3c94:	ac830270 	sw	v1,624(a0)
    3c98:	ac850274 	sw	a1,628(a0)
    3c9c:	ac860278 	sw	a2,632(a0)
    3ca0:	ac8302a4 	sw	v1,676(a0)
    3ca4:	ac8302a8 	sw	v1,680(a0)
    3ca8:	ac8502ac 	sw	a1,684(a0)
    3cac:	ac8602b0 	sw	a2,688(a0)
    3cb0:	e490029c 	swc1	$f16,668(a0)
    3cb4:	e4840264 	swc1	$f4,612(a0)
    3cb8:	e48c02b8 	swc1	$f12,696(a0)
    3cbc:	e48c0280 	swc1	$f12,640(a0)
    3cc0:	e48e02a0 	swc1	$f14,672(a0)
    3cc4:	e48e0268 	swc1	$f14,616(a0)
    3cc8:	03e00008 	jr	ra
    3ccc:	e486027c 	swc1	$f6,636(a0)

00003cd0 <func_80AC6970>:
    3cd0:	848201f4 	lh	v0,500(a0)
    3cd4:	3c0e0000 	lui	t6,0x0
    3cd8:	25ce0000 	addiu	t6,t6,0
    3cdc:	2442ffff 	addiu	v0,v0,-1
    3ce0:	00021400 	sll	v0,v0,0x10
    3ce4:	00021403 	sra	v0,v0,0x10
    3ce8:	50400004 	beqzl	v0,3cfc <func_80AC6970+0x2c>
    3cec:	ac8e01f8 	sw	t6,504(a0)
    3cf0:	03e00008 	jr	ra
    3cf4:	a48201f4 	sh	v0,500(a0)
    3cf8:	ac8e01f8 	sw	t6,504(a0)
    3cfc:	03e00008 	jr	ra
    3d00:	00000000 	nop

00003d04 <func_80AC69A4>:
    3d04:	27bdffe8 	addiu	sp,sp,-24
    3d08:	afbf0014 	sw	ra,20(sp)
    3d0c:	848201f4 	lh	v0,500(a0)
    3d10:	2442ffff 	addiu	v0,v0,-1
    3d14:	00021400 	sll	v0,v0,0x10
    3d18:	00021403 	sra	v0,v0,0x10
    3d1c:	50400004 	beqzl	v0,3d30 <func_80AC69A4+0x2c>
    3d20:	848201f2 	lh	v0,498(a0)
    3d24:	1000001b 	b	3d94 <func_80AC69A4+0x90>
    3d28:	a48201f4 	sh	v0,500(a0)
    3d2c:	848201f2 	lh	v0,498(a0)
    3d30:	24080001 	li	t0,1
    3d34:	24420001 	addiu	v0,v0,1
    3d38:	00021400 	sll	v0,v0,0x10
    3d3c:	00021403 	sra	v0,v0,0x10
    3d40:	28410003 	slti	at,v0,3
    3d44:	54200012 	bnezl	at,3d90 <func_80AC69A4+0x8c>
    3d48:	a48201f2 	sh	v0,498(a0)
    3d4c:	a48001f2 	sh	zero,498(a0)
    3d50:	0c000000 	jal	0 <func_80AC2CA0>
    3d54:	afa40018 	sw	a0,24(sp)
    3d58:	3c014270 	lui	at,0x4270
    3d5c:	44812000 	mtc1	at,$f4
    3d60:	8fa40018 	lw	a0,24(sp)
    3d64:	3c190000 	lui	t9,0x0
    3d68:	46040182 	mul.s	$f6,$f0,$f4
    3d6c:	27390000 	addiu	t9,t9,0
    3d70:	ac9901f8 	sw	t9,504(a0)
    3d74:	4600320d 	trunc.w.s	$f8,$f6
    3d78:	440f4000 	mfc1	t7,$f8
    3d7c:	00000000 	nop
    3d80:	25f80014 	addiu	t8,t7,20
    3d84:	10000003 	b	3d94 <func_80AC69A4+0x90>
    3d88:	a49801f4 	sh	t8,500(a0)
    3d8c:	a48201f2 	sh	v0,498(a0)
    3d90:	a48801f4 	sh	t0,500(a0)
    3d94:	8fbf0014 	lw	ra,20(sp)
    3d98:	27bd0018 	addiu	sp,sp,24
    3d9c:	03e00008 	jr	ra
    3da0:	00000000 	nop

00003da4 <func_80AC6A44>:
    3da4:	27bdffe0 	addiu	sp,sp,-32
    3da8:	afa40020 	sw	a0,32(sp)
    3dac:	8fae0020 	lw	t6,32(sp)
    3db0:	3c010001 	lui	at,0x1
    3db4:	342117a4 	ori	at,at,0x17a4
    3db8:	afbf0014 	sw	ra,20(sp)
    3dbc:	00a12021 	addu	a0,a1,at
    3dc0:	81c501e8 	lb	a1,488(t6)
    3dc4:	0c000000 	jal	0 <func_80AC2CA0>
    3dc8:	afa4001c 	sw	a0,28(sp)
    3dcc:	10400016 	beqz	v0,3e28 <func_80AC6A44+0x84>
    3dd0:	8faf0020 	lw	t7,32(sp)
    3dd4:	81e501e9 	lb	a1,489(t7)
    3dd8:	04a20008 	bltzl	a1,3dfc <func_80AC6A44+0x58>
    3ddc:	8fb80020 	lw	t8,32(sp)
    3de0:	0c000000 	jal	0 <func_80AC2CA0>
    3de4:	8fa4001c 	lw	a0,28(sp)
    3de8:	54400004 	bnezl	v0,3dfc <func_80AC6A44+0x58>
    3dec:	8fb80020 	lw	t8,32(sp)
    3df0:	1000000e 	b	3e2c <func_80AC6A44+0x88>
    3df4:	00001025 	move	v0,zero
    3df8:	8fb80020 	lw	t8,32(sp)
    3dfc:	830501ea 	lb	a1,490(t8)
    3e00:	04a00007 	bltz	a1,3e20 <func_80AC6A44+0x7c>
    3e04:	00000000 	nop
    3e08:	0c000000 	jal	0 <func_80AC2CA0>
    3e0c:	8fa4001c 	lw	a0,28(sp)
    3e10:	14400003 	bnez	v0,3e20 <func_80AC6A44+0x7c>
    3e14:	00000000 	nop
    3e18:	10000004 	b	3e2c <func_80AC6A44+0x88>
    3e1c:	00001025 	move	v0,zero
    3e20:	10000002 	b	3e2c <func_80AC6A44+0x88>
    3e24:	24020001 	li	v0,1
    3e28:	00001025 	move	v0,zero
    3e2c:	8fbf0014 	lw	ra,20(sp)
    3e30:	27bd0020 	addiu	sp,sp,32
    3e34:	03e00008 	jr	ra
    3e38:	00000000 	nop

00003e3c <func_80AC6ADC>:
    3e3c:	27bdffd8 	addiu	sp,sp,-40
    3e40:	afa40028 	sw	a0,40(sp)
    3e44:	afa5002c 	sw	a1,44(sp)
    3e48:	00a02025 	move	a0,a1
    3e4c:	8fa50028 	lw	a1,40(sp)
    3e50:	afbf0024 	sw	ra,36(sp)
    3e54:	3c060601 	lui	a2,0x601
    3e58:	3c070600 	lui	a3,0x600
    3e5c:	24e70338 	addiu	a3,a3,824
    3e60:	24c69b38 	addiu	a2,a2,-25800
    3e64:	afa00010 	sw	zero,16(sp)
    3e68:	afa00014 	sw	zero,20(sp)
    3e6c:	afa00018 	sw	zero,24(sp)
    3e70:	0c000000 	jal	0 <func_80AC2CA0>
    3e74:	24a5014c 	addiu	a1,a1,332
    3e78:	8fa20028 	lw	v0,40(sp)
    3e7c:	3c0e0000 	lui	t6,0x0
    3e80:	25ce0000 	addiu	t6,t6,0
    3e84:	ac4e0134 	sw	t6,308(v0)
    3e88:	ac400194 	sw	zero,404(v0)
    3e8c:	8fbf0024 	lw	ra,36(sp)
    3e90:	27bd0028 	addiu	sp,sp,40
    3e94:	03e00008 	jr	ra
    3e98:	00000000 	nop

00003e9c <func_80AC6B3C>:
    3e9c:	27bdffb8 	addiu	sp,sp,-72
    3ea0:	afb00038 	sw	s0,56(sp)
    3ea4:	00808025 	move	s0,a0
    3ea8:	afa5004c 	sw	a1,76(sp)
    3eac:	00a02025 	move	a0,a1
    3eb0:	afbf003c 	sw	ra,60(sp)
    3eb4:	2605014c 	addiu	a1,s0,332
    3eb8:	3c060600 	lui	a2,0x600
    3ebc:	24c600f0 	addiu	a2,a2,240
    3ec0:	afa50040 	sw	a1,64(sp)
    3ec4:	afa00010 	sw	zero,16(sp)
    3ec8:	afa00014 	sw	zero,20(sp)
    3ecc:	afa00018 	sw	zero,24(sp)
    3ed0:	0c000000 	jal	0 <func_80AC2CA0>
    3ed4:	00003825 	move	a3,zero
    3ed8:	820f01ea 	lb	t7,490(s0)
    3edc:	8fae004c 	lw	t6,76(sp)
    3ee0:	3c080001 	lui	t0,0x1
    3ee4:	000fc100 	sll	t8,t7,0x4
    3ee8:	030fc021 	addu	t8,t8,t7
    3eec:	0018c080 	sll	t8,t8,0x2
    3ef0:	01d8c821 	addu	t9,t6,t8
    3ef4:	01194021 	addu	t0,t0,t9
    3ef8:	8d0817b4 	lw	t0,6068(t0)
    3efc:	3c018000 	lui	at,0x8000
    3f00:	3c040600 	lui	a0,0x600
    3f04:	01014821 	addu	t1,t0,at
    3f08:	3c010000 	lui	at,0x0
    3f0c:	ac290018 	sw	t1,24(at)
    3f10:	0c000000 	jal	0 <func_80AC2CA0>
    3f14:	248404a8 	addiu	a0,a0,1192
    3f18:	44822000 	mtc1	v0,$f4
    3f1c:	44800000 	mtc1	zero,$f0
    3f20:	3c050600 	lui	a1,0x600
    3f24:	468021a0 	cvt.s.w	$f6,$f4
    3f28:	44070000 	mfc1	a3,$f0
    3f2c:	24a504a8 	addiu	a1,a1,1192
    3f30:	8fa40040 	lw	a0,64(sp)
    3f34:	3c063f80 	lui	a2,0x3f80
    3f38:	afa00014 	sw	zero,20(sp)
    3f3c:	e7a60010 	swc1	$f6,16(sp)
    3f40:	0c000000 	jal	0 <func_80AC2CA0>
    3f44:	e7a00018 	swc1	$f0,24(sp)
    3f48:	8fa6004c 	lw	a2,76(sp)
    3f4c:	c6080024 	lwc1	$f8,36(s0)
    3f50:	3c0a0000 	lui	t2,0x0
    3f54:	3c0b0000 	lui	t3,0x0
    3f58:	254a0000 	addiu	t2,t2,0
    3f5c:	256b0000 	addiu	t3,t3,0
    3f60:	ae0a0134 	sw	t2,308(s0)
    3f64:	ae0b0194 	sw	t3,404(s0)
    3f68:	e7a80010 	swc1	$f8,16(sp)
    3f6c:	c60a0028 	lwc1	$f10,40(s0)
    3f70:	240c0003 	li	t4,3
    3f74:	02002825 	move	a1,s0
    3f78:	e7aa0014 	swc1	$f10,20(sp)
    3f7c:	c610002c 	lwc1	$f16,44(s0)
    3f80:	afac0028 	sw	t4,40(sp)
    3f84:	afa00024 	sw	zero,36(sp)
    3f88:	afa00020 	sw	zero,32(sp)
    3f8c:	afa0001c 	sw	zero,28(sp)
    3f90:	24070018 	li	a3,24
    3f94:	24c41c24 	addiu	a0,a2,7204
    3f98:	0c000000 	jal	0 <func_80AC2CA0>
    3f9c:	e7b00018 	swc1	$f16,24(sp)
    3fa0:	8fbf003c 	lw	ra,60(sp)
    3fa4:	8fb00038 	lw	s0,56(sp)
    3fa8:	27bd0048 	addiu	sp,sp,72
    3fac:	03e00008 	jr	ra
    3fb0:	00000000 	nop

00003fb4 <func_80AC6C54>:
    3fb4:	27bdffd0 	addiu	sp,sp,-48
    3fb8:	afa40030 	sw	a0,48(sp)
    3fbc:	afa50034 	sw	a1,52(sp)
    3fc0:	00a02025 	move	a0,a1
    3fc4:	8fa50030 	lw	a1,48(sp)
    3fc8:	afbf0024 	sw	ra,36(sp)
    3fcc:	3c060601 	lui	a2,0x601
    3fd0:	24a5014c 	addiu	a1,a1,332
    3fd4:	afa50028 	sw	a1,40(sp)
    3fd8:	24c6fef0 	addiu	a2,a2,-272
    3fdc:	afa00010 	sw	zero,16(sp)
    3fe0:	afa00014 	sw	zero,20(sp)
    3fe4:	afa00018 	sw	zero,24(sp)
    3fe8:	0c000000 	jal	0 <func_80AC2CA0>
    3fec:	00003825 	move	a3,zero
    3ff0:	8faf0030 	lw	t7,48(sp)
    3ff4:	8fae0034 	lw	t6,52(sp)
    3ff8:	3c090001 	lui	t1,0x1
    3ffc:	81f801ea 	lb	t8,490(t7)
    4000:	3c018000 	lui	at,0x8000
    4004:	3c040600 	lui	a0,0x600
    4008:	0018c900 	sll	t9,t8,0x4
    400c:	0338c821 	addu	t9,t9,t8
    4010:	0019c880 	sll	t9,t9,0x2
    4014:	01d94021 	addu	t0,t6,t9
    4018:	01284821 	addu	t1,t1,t0
    401c:	8d2917b4 	lw	t1,6068(t1)
    4020:	248400fc 	addiu	a0,a0,252
    4024:	01215021 	addu	t2,t1,at
    4028:	3c010000 	lui	at,0x0
    402c:	0c000000 	jal	0 <func_80AC2CA0>
    4030:	ac2a0018 	sw	t2,24(at)
    4034:	44822000 	mtc1	v0,$f4
    4038:	44800000 	mtc1	zero,$f0
    403c:	3c050600 	lui	a1,0x600
    4040:	468021a0 	cvt.s.w	$f6,$f4
    4044:	44070000 	mfc1	a3,$f0
    4048:	24a500fc 	addiu	a1,a1,252
    404c:	8fa40028 	lw	a0,40(sp)
    4050:	3c063f80 	lui	a2,0x3f80
    4054:	afa00014 	sw	zero,20(sp)
    4058:	e7a60010 	swc1	$f6,16(sp)
    405c:	0c000000 	jal	0 <func_80AC2CA0>
    4060:	e7a00018 	swc1	$f0,24(sp)
    4064:	8fa20030 	lw	v0,48(sp)
    4068:	3c0b0000 	lui	t3,0x0
    406c:	3c0c0000 	lui	t4,0x0
    4070:	256b0000 	addiu	t3,t3,0
    4074:	258c0000 	addiu	t4,t4,0
    4078:	ac4b0134 	sw	t3,308(v0)
    407c:	ac4c0194 	sw	t4,404(v0)
    4080:	8fbf0024 	lw	ra,36(sp)
    4084:	27bd0030 	addiu	sp,sp,48
    4088:	03e00008 	jr	ra
    408c:	00000000 	nop

00004090 <func_80AC6D30>:
    4090:	27bdffd0 	addiu	sp,sp,-48
    4094:	afa40030 	sw	a0,48(sp)
    4098:	afa50034 	sw	a1,52(sp)
    409c:	00a02025 	move	a0,a1
    40a0:	8fa50030 	lw	a1,48(sp)
    40a4:	afbf0024 	sw	ra,36(sp)
    40a8:	3c060601 	lui	a2,0x601
    40ac:	24a5014c 	addiu	a1,a1,332
    40b0:	afa50028 	sw	a1,40(sp)
    40b4:	24c6bfa8 	addiu	a2,a2,-16472
    40b8:	afa00010 	sw	zero,16(sp)
    40bc:	afa00014 	sw	zero,20(sp)
    40c0:	afa00018 	sw	zero,24(sp)
    40c4:	0c000000 	jal	0 <func_80AC2CA0>
    40c8:	00003825 	move	a3,zero
    40cc:	8faf0030 	lw	t7,48(sp)
    40d0:	8fae0034 	lw	t6,52(sp)
    40d4:	3c090001 	lui	t1,0x1
    40d8:	81f801ea 	lb	t8,490(t7)
    40dc:	3c018000 	lui	at,0x8000
    40e0:	3c040600 	lui	a0,0x600
    40e4:	0018c900 	sll	t9,t8,0x4
    40e8:	0338c821 	addu	t9,t9,t8
    40ec:	0019c880 	sll	t9,t9,0x2
    40f0:	01d94021 	addu	t0,t6,t9
    40f4:	01284821 	addu	t1,t1,t0
    40f8:	8d2917b4 	lw	t1,6068(t1)
    40fc:	2484078c 	addiu	a0,a0,1932
    4100:	01215021 	addu	t2,t1,at
    4104:	3c010000 	lui	at,0x0
    4108:	0c000000 	jal	0 <func_80AC2CA0>
    410c:	ac2a0018 	sw	t2,24(at)
    4110:	44822000 	mtc1	v0,$f4
    4114:	44800000 	mtc1	zero,$f0
    4118:	3c050600 	lui	a1,0x600
    411c:	468021a0 	cvt.s.w	$f6,$f4
    4120:	44070000 	mfc1	a3,$f0
    4124:	24a5078c 	addiu	a1,a1,1932
    4128:	8fa40028 	lw	a0,40(sp)
    412c:	3c063f80 	lui	a2,0x3f80
    4130:	afa00014 	sw	zero,20(sp)
    4134:	e7a60010 	swc1	$f6,16(sp)
    4138:	0c000000 	jal	0 <func_80AC2CA0>
    413c:	e7a00018 	swc1	$f0,24(sp)
    4140:	8fa20030 	lw	v0,48(sp)
    4144:	3c0b0000 	lui	t3,0x0
    4148:	3c0c0000 	lui	t4,0x0
    414c:	256b0000 	addiu	t3,t3,0
    4150:	258c0000 	addiu	t4,t4,0
    4154:	ac4b0134 	sw	t3,308(v0)
    4158:	ac4c0194 	sw	t4,404(v0)
    415c:	8fbf0024 	lw	ra,36(sp)
    4160:	27bd0030 	addiu	sp,sp,48
    4164:	03e00008 	jr	ra
    4168:	00000000 	nop

0000416c <func_80AC6E0C>:
    416c:	27bdffd8 	addiu	sp,sp,-40
    4170:	afa40028 	sw	a0,40(sp)
    4174:	afa5002c 	sw	a1,44(sp)
    4178:	00a02025 	move	a0,a1
    417c:	8fa50028 	lw	a1,40(sp)
    4180:	afbf0024 	sw	ra,36(sp)
    4184:	3c060600 	lui	a2,0x600
    4188:	3c070600 	lui	a3,0x600
    418c:	24e702e4 	addiu	a3,a3,740
    4190:	24c64258 	addiu	a2,a2,16984
    4194:	afa00010 	sw	zero,16(sp)
    4198:	afa00014 	sw	zero,20(sp)
    419c:	afa00018 	sw	zero,24(sp)
    41a0:	0c000000 	jal	0 <func_80AC2CA0>
    41a4:	24a5014c 	addiu	a1,a1,332
    41a8:	8fa20028 	lw	v0,40(sp)
    41ac:	3c0e0000 	lui	t6,0x0
    41b0:	25ce0000 	addiu	t6,t6,0
    41b4:	ac4e0134 	sw	t6,308(v0)
    41b8:	ac400194 	sw	zero,404(v0)
    41bc:	8fbf0024 	lw	ra,36(sp)
    41c0:	27bd0028 	addiu	sp,sp,40
    41c4:	03e00008 	jr	ra
    41c8:	00000000 	nop

000041cc <func_80AC6E6C>:
    41cc:	27bdffd8 	addiu	sp,sp,-40
    41d0:	afa40028 	sw	a0,40(sp)
    41d4:	afa5002c 	sw	a1,44(sp)
    41d8:	00a02025 	move	a0,a1
    41dc:	8fa50028 	lw	a1,40(sp)
    41e0:	afbf0024 	sw	ra,36(sp)
    41e4:	3c060600 	lui	a2,0x600
    41e8:	3c070600 	lui	a3,0x600
    41ec:	24e702e4 	addiu	a3,a3,740
    41f0:	24c64658 	addiu	a2,a2,18008
    41f4:	afa00010 	sw	zero,16(sp)
    41f8:	afa00014 	sw	zero,20(sp)
    41fc:	afa00018 	sw	zero,24(sp)
    4200:	0c000000 	jal	0 <func_80AC2CA0>
    4204:	24a5014c 	addiu	a1,a1,332
    4208:	8fa20028 	lw	v0,40(sp)
    420c:	3c0e0000 	lui	t6,0x0
    4210:	25ce0000 	addiu	t6,t6,0
    4214:	ac4e0134 	sw	t6,308(v0)
    4218:	ac400194 	sw	zero,404(v0)
    421c:	8fbf0024 	lw	ra,36(sp)
    4220:	27bd0028 	addiu	sp,sp,40
    4224:	03e00008 	jr	ra
    4228:	00000000 	nop

0000422c <func_80AC6ECC>:
    422c:	27bdffd8 	addiu	sp,sp,-40
    4230:	afa40028 	sw	a0,40(sp)
    4234:	afa5002c 	sw	a1,44(sp)
    4238:	00a02025 	move	a0,a1
    423c:	8fa50028 	lw	a1,40(sp)
    4240:	afbf0024 	sw	ra,36(sp)
    4244:	3c060600 	lui	a2,0x600
    4248:	3c070600 	lui	a3,0x600
    424c:	24e7065c 	addiu	a3,a3,1628
    4250:	24c64868 	addiu	a2,a2,18536
    4254:	afa00010 	sw	zero,16(sp)
    4258:	afa00014 	sw	zero,20(sp)
    425c:	afa00018 	sw	zero,24(sp)
    4260:	0c000000 	jal	0 <func_80AC2CA0>
    4264:	24a5014c 	addiu	a1,a1,332
    4268:	8fa20028 	lw	v0,40(sp)
    426c:	3c0e0000 	lui	t6,0x0
    4270:	25ce0000 	addiu	t6,t6,0
    4274:	ac4e0134 	sw	t6,308(v0)
    4278:	ac400194 	sw	zero,404(v0)
    427c:	8fbf0024 	lw	ra,36(sp)
    4280:	27bd0028 	addiu	sp,sp,40
    4284:	03e00008 	jr	ra
    4288:	00000000 	nop

0000428c <func_80AC6F2C>:
    428c:	848f001c 	lh	t7,28(a0)
    4290:	240e0008 	li	t6,8
    4294:	2401000a 	li	at,10
    4298:	15e10053 	bne	t7,at,43e8 <func_80AC6F2C+0x15c>
    429c:	a08e01eb 	sb	t6,491(a0)
    42a0:	3c180000 	lui	t8,0x0
    42a4:	93180021 	lbu	t8,33(t8)
    42a8:	3c050000 	lui	a1,0x0
    42ac:	24a50000 	addiu	a1,a1,0
    42b0:	00b8c821 	addu	t9,a1,t8
    42b4:	93280074 	lbu	t0,116(t9)
    42b8:	2401002c 	li	at,44
    42bc:	55010033 	bnel	t0,at,438c <func_80AC6F2C+0x100>
    42c0:	94a20ef6 	lhu	v0,3830(a1)
    42c4:	94a20ef6 	lhu	v0,3830(a1)
    42c8:	30490800 	andi	t1,v0,0x800
    42cc:	1120000b 	beqz	t1,42fc <func_80AC6F2C+0x70>
    42d0:	304d0400 	andi	t5,v0,0x400
    42d4:	94aa0ee4 	lhu	t2,3812(a1)
    42d8:	240c0003 	li	t4,3
    42dc:	240270c6 	li	v0,28870
    42e0:	314b8000 	andi	t3,t2,0x8000
    42e4:	15600003 	bnez	t3,42f4 <func_80AC6F2C+0x68>
    42e8:	00000000 	nop
    42ec:	03e00008 	jr	ra
    42f0:	a08c01eb 	sb	t4,491(a0)
    42f4:	03e00008 	jr	ra
    42f8:	240270ac 	li	v0,28844
    42fc:	11a0000b 	beqz	t5,432c <func_80AC6F2C+0xa0>
    4300:	30590200 	andi	t9,v0,0x200
    4304:	94ae0ee4 	lhu	t6,3812(a1)
    4308:	24180001 	li	t8,1
    430c:	240270c5 	li	v0,28869
    4310:	31cf4000 	andi	t7,t6,0x4000
    4314:	15e00003 	bnez	t7,4324 <func_80AC6F2C+0x98>
    4318:	00000000 	nop
    431c:	03e00008 	jr	ra
    4320:	a09801eb 	sb	t8,491(a0)
    4324:	03e00008 	jr	ra
    4328:	240270ac 	li	v0,28844
    432c:	1320000b 	beqz	t9,435c <func_80AC6F2C+0xd0>
    4330:	304b0100 	andi	t3,v0,0x100
    4334:	94a80ee4 	lhu	t0,3812(a1)
    4338:	240a0002 	li	t2,2
    433c:	240270c4 	li	v0,28868
    4340:	31092000 	andi	t1,t0,0x2000
    4344:	15200003 	bnez	t1,4354 <func_80AC6F2C+0xc8>
    4348:	00000000 	nop
    434c:	03e00008 	jr	ra
    4350:	a08a01eb 	sb	t2,491(a0)
    4354:	03e00008 	jr	ra
    4358:	240270ac 	li	v0,28844
    435c:	51600023 	beqzl	t3,43ec <func_80AC6F2C+0x160>
    4360:	2402009e 	li	v0,158
    4364:	94ac0ee4 	lhu	t4,3812(a1)
    4368:	240270a5 	li	v0,28837
    436c:	318d1000 	andi	t5,t4,0x1000
    4370:	15a00003 	bnez	t5,4380 <func_80AC6F2C+0xf4>
    4374:	00000000 	nop
    4378:	03e00008 	jr	ra
    437c:	a08001eb 	sb	zero,491(a0)
    4380:	03e00008 	jr	ra
    4384:	240270ac 	li	v0,28844
    4388:	94a20ef6 	lhu	v0,3830(a1)
    438c:	304e0800 	andi	t6,v0,0x800
    4390:	11c00003 	beqz	t6,43a0 <func_80AC6F2C+0x114>
    4394:	304f0400 	andi	t7,v0,0x400
    4398:	03e00008 	jr	ra
    439c:	240270ac 	li	v0,28844
    43a0:	15e0000f 	bnez	t7,43e0 <func_80AC6F2C+0x154>
    43a4:	00000000 	nop
    43a8:	94a30ef4 	lhu	v1,3828(a1)
    43ac:	30590100 	andi	t9,v0,0x100
    43b0:	30780010 	andi	t8,v1,0x10
    43b4:	1700000a 	bnez	t8,43e0 <func_80AC6F2C+0x154>
    43b8:	00000000 	nop
    43bc:	17200008 	bnez	t9,43e0 <func_80AC6F2C+0x154>
    43c0:	30680008 	andi	t0,v1,0x8
    43c4:	15000003 	bnez	t0,43d4 <func_80AC6F2C+0x148>
    43c8:	24090004 	li	t1,4
    43cc:	03e00008 	jr	ra
    43d0:	240270a1 	li	v0,28833
    43d4:	a08901eb 	sb	t1,491(a0)
    43d8:	03e00008 	jr	ra
    43dc:	240270a6 	li	v0,28838
    43e0:	03e00008 	jr	ra
    43e4:	240270c7 	li	v0,28871
    43e8:	2402009e 	li	v0,158
    43ec:	03e00008 	jr	ra
    43f0:	00000000 	nop

000043f4 <func_80AC7094>:
    43f4:	27bdffd8 	addiu	sp,sp,-40
    43f8:	afbf001c 	sw	ra,28(sp)
    43fc:	afb00018 	sw	s0,24(sp)
    4400:	00808025 	move	s0,a0
    4404:	0c000000 	jal	0 <func_80AC2CA0>
    4408:	afa5002c 	sw	a1,44(sp)
    440c:	104000af 	beqz	v0,46cc <func_80AC7094+0x2d8>
    4410:	2401ffef 	li	at,-17
    4414:	8e0e0004 	lw	t6,4(s0)
    4418:	821801e8 	lb	t8,488(s0)
    441c:	02002825 	move	a1,s0
    4420:	01c17824 	and	t7,t6,at
    4424:	ae0f0004 	sw	t7,4(s0)
    4428:	a218001e 	sb	t8,30(s0)
    442c:	0c000000 	jal	0 <func_80AC2CA0>
    4430:	8fa4002c 	lw	a0,44(sp)
    4434:	8fa4002c 	lw	a0,44(sp)
    4438:	240500c2 	li	a1,194
    443c:	24060006 	li	a2,6
    4440:	0c000000 	jal	0 <func_80AC2CA0>
    4444:	24841c24 	addiu	a0,a0,7204
    4448:	1440000c 	bnez	v0,447c <func_80AC7094+0x88>
    444c:	ae020220 	sw	v0,544(s0)
    4450:	3c040000 	lui	a0,0x0
    4454:	0c000000 	jal	0 <func_80AC2CA0>
    4458:	24840000 	addiu	a0,a0,0
    445c:	3c040000 	lui	a0,0x0
    4460:	0c000000 	jal	0 <func_80AC2CA0>
    4464:	24840000 	addiu	a0,a0,0
    4468:	3c040000 	lui	a0,0x0
    446c:	0c000000 	jal	0 <func_80AC2CA0>
    4470:	24840000 	addiu	a0,a0,0
    4474:	10000096 	b	46d0 <func_80AC7094+0x2dc>
    4478:	8fbf001c 	lw	ra,28(sp)
    447c:	3c040000 	lui	a0,0x0
    4480:	24840000 	addiu	a0,a0,0
    4484:	0c000000 	jal	0 <func_80AC2CA0>
    4488:	8605001c 	lh	a1,28(s0)
    448c:	8603001c 	lh	v1,28(s0)
    4490:	3c080000 	lui	t0,0x0
    4494:	25080000 	addiu	t0,t0,0
    4498:	0003c880 	sll	t9,v1,0x2
    449c:	0323c823 	subu	t9,t9,v1
    44a0:	0019c880 	sll	t9,t9,0x2
    44a4:	03281021 	addu	v0,t9,t0
    44a8:	c4460000 	lwc1	$f6,0(v0)
    44ac:	c6040024 	lwc1	$f4,36(s0)
    44b0:	c60a0028 	lwc1	$f10,40(s0)
    44b4:	3c0a0000 	lui	t2,0x0
    44b8:	46062200 	add.s	$f8,$f4,$f6
    44bc:	c604002c 	lwc1	$f4,44(s0)
    44c0:	254a0000 	addiu	t2,t2,0
    44c4:	00034980 	sll	t1,v1,0x6
    44c8:	e6080024 	swc1	$f8,36(s0)
    44cc:	c4500004 	lwc1	$f16,4(v0)
    44d0:	012a5821 	addu	t3,t1,t2
    44d4:	3c060000 	lui	a2,0x0
    44d8:	46105480 	add.s	$f18,$f10,$f16
    44dc:	24c60000 	addiu	a2,a2,0
    44e0:	260400b4 	addiu	a0,s0,180
    44e4:	24050000 	li	a1,0
    44e8:	e6120028 	swc1	$f18,40(s0)
    44ec:	c4460008 	lwc1	$f6,8(v0)
    44f0:	3c0741a0 	lui	a3,0x41a0
    44f4:	46062200 	add.s	$f8,$f4,$f6
    44f8:	e608002c 	swc1	$f8,44(s0)
    44fc:	0c000000 	jal	0 <func_80AC2CA0>
    4500:	afab0024 	sw	t3,36(sp)
    4504:	860c001c 	lh	t4,28(s0)
    4508:	3c190000 	lui	t9,0x0
    450c:	02002025 	move	a0,s0
    4510:	000c6880 	sll	t5,t4,0x2
    4514:	032dc821 	addu	t9,t9,t5
    4518:	8f390000 	lw	t9,0(t9)
    451c:	8fa5002c 	lw	a1,44(sp)
    4520:	0320f809 	jalr	t9
    4524:	00000000 	nop
    4528:	0c000000 	jal	0 <func_80AC2CA0>
    452c:	02002025 	move	a0,s0
    4530:	3c0142c8 	lui	at,0x42c8
    4534:	44811000 	mtc1	at,$f2
    4538:	3c013fc0 	lui	at,0x3fc0
    453c:	44815000 	mtc1	at,$f10
    4540:	3c0142be 	lui	at,0x42be
    4544:	e6020230 	swc1	$f2,560(s0)
    4548:	e6020234 	swc1	$f2,564(s0)
    454c:	44811000 	mtc1	at,$f2
    4550:	3c0142b6 	lui	at,0x42b6
    4554:	44816000 	mtc1	at,$f12
    4558:	3c013f80 	lui	at,0x3f80
    455c:	44817000 	mtc1	at,$f14
    4560:	3c014244 	lui	at,0x4244
    4564:	44818000 	mtc1	at,$f16
    4568:	a602010e 	sh	v0,270(s0)
    456c:	240200c8 	li	v0,200
    4570:	3c014204 	lui	at,0x4204
    4574:	44819000 	mtc1	at,$f18
    4578:	240300ff 	li	v1,255
    457c:	44800000 	mtc1	zero,$f0
    4580:	3c014389 	lui	at,0x4389
    4584:	44812000 	mtc1	at,$f4
    4588:	8618001c 	lh	t8,28(s0)
    458c:	3c014391 	lui	at,0x4391
    4590:	44813000 	mtc1	at,$f6
    4594:	240400b4 	li	a0,180
    4598:	240e0032 	li	t6,50
    459c:	240f0050 	li	t7,80
    45a0:	3c050000 	lui	a1,0x0
    45a4:	00184080 	sll	t0,t8,0x2
    45a8:	a20300ae 	sb	v1,174(s0)
    45ac:	a60e00a8 	sh	t6,168(s0)
    45b0:	a60001fc 	sh	zero,508(s0)
    45b4:	ae000228 	sw	zero,552(s0)
    45b8:	ae000224 	sw	zero,548(s0)
    45bc:	a2000252 	sb	zero,594(s0)
    45c0:	ae00023c 	sw	zero,572(s0)
    45c4:	ae030240 	sw	v1,576(s0)
    45c8:	ae0f0244 	sw	t7,580(s0)
    45cc:	ae030248 	sw	v1,584(s0)
    45d0:	a2000250 	sb	zero,592(s0)
    45d4:	a2000251 	sb	zero,593(s0)
    45d8:	a20001ec 	sb	zero,492(s0)
    45dc:	ae020254 	sw	v0,596(s0)
    45e0:	ae020258 	sw	v0,600(s0)
    45e4:	ae02025c 	sw	v0,604(s0)
    45e8:	ae040260 	sw	a0,608(s0)
    45ec:	ae03026c 	sw	v1,620(s0)
    45f0:	ae030270 	sw	v1,624(s0)
    45f4:	ae000274 	sw	zero,628(s0)
    45f8:	ae020278 	sw	v0,632(s0)
    45fc:	ae000288 	sw	zero,648(s0)
    4600:	ae02028c 	sw	v0,652(s0)
    4604:	ae020290 	sw	v0,656(s0)
    4608:	ae020294 	sw	v0,660(s0)
    460c:	ae040298 	sw	a0,664(s0)
    4610:	ae0302a4 	sw	v1,676(s0)
    4614:	ae0302a8 	sw	v1,680(s0)
    4618:	ae0002ac 	sw	zero,684(s0)
    461c:	ae0202b0 	sw	v0,688(s0)
    4620:	ae0002c0 	sw	zero,704(s0)
    4624:	a20002cc 	sb	zero,716(s0)
    4628:	a20002cd 	sb	zero,717(s0)
    462c:	00a82821 	addu	a1,a1,t0
    4630:	e60a0238 	swc1	$f10,568(s0)
    4634:	e6020268 	swc1	$f2,616(s0)
    4638:	e60202a0 	swc1	$f2,672(s0)
    463c:	e60c0280 	swc1	$f12,640(s0)
    4640:	e60c02b8 	swc1	$f12,696(s0)
    4644:	e60e0284 	swc1	$f14,644(s0)
    4648:	e60e02bc 	swc1	$f14,700(s0)
    464c:	e6100264 	swc1	$f16,612(s0)
    4650:	e612027c 	swc1	$f18,636(s0)
    4654:	e600024c 	swc1	$f0,588(s0)
    4658:	e60002c4 	swc1	$f0,708(s0)
    465c:	e60002c8 	swc1	$f0,712(s0)
    4660:	e60002d0 	swc1	$f0,720(s0)
    4664:	e604029c 	swc1	$f4,668(s0)
    4668:	e60602b4 	swc1	$f6,692(s0)
    466c:	8ca50000 	lw	a1,0(a1)
    4670:	0c000000 	jal	0 <func_80AC2CA0>
    4674:	02002025 	move	a0,s0
    4678:	02002025 	move	a0,s0
    467c:	8fa5002c 	lw	a1,44(sp)
    4680:	0c000000 	jal	0 <func_80AC2CA0>
    4684:	8fa60024 	lw	a2,36(sp)
    4688:	8e0c0004 	lw	t4,4(s0)
    468c:	a60001f0 	sh	zero,496(s0)
    4690:	860901f0 	lh	t1,496(s0)
    4694:	3c0b0000 	lui	t3,0x0
    4698:	2401fffe 	li	at,-2
    469c:	240a0014 	li	t2,20
    46a0:	256b0000 	addiu	t3,t3,0
    46a4:	3c050000 	lui	a1,0x0
    46a8:	01816824 	and	t5,t4,at
    46ac:	a60a01f4 	sh	t2,500(s0)
    46b0:	a60001f2 	sh	zero,498(s0)
    46b4:	ae0b01f8 	sw	t3,504(s0)
    46b8:	ae0d0004 	sw	t5,4(s0)
    46bc:	24a50000 	addiu	a1,a1,0
    46c0:	02002025 	move	a0,s0
    46c4:	0c000000 	jal	0 <func_80AC2CA0>
    46c8:	a60901ee 	sh	t1,494(s0)
    46cc:	8fbf001c 	lw	ra,28(sp)
    46d0:	8fb00018 	lw	s0,24(sp)
    46d4:	27bd0028 	addiu	sp,sp,40
    46d8:	03e00008 	jr	ra
    46dc:	00000000 	nop

000046e0 <func_80AC7380>:
    46e0:	808e01ea 	lb	t6,490(a0)
    46e4:	3c190001 	lui	t9,0x1
    46e8:	3c018000 	lui	at,0x8000
    46ec:	000e7900 	sll	t7,t6,0x4
    46f0:	01ee7821 	addu	t7,t7,t6
    46f4:	000f7880 	sll	t7,t7,0x2
    46f8:	00afc021 	addu	t8,a1,t7
    46fc:	0338c821 	addu	t9,t9,t8
    4700:	8f3917b4 	lw	t9,6068(t9)
    4704:	03214021 	addu	t0,t9,at
    4708:	3c010000 	lui	at,0x0
    470c:	03e00008 	jr	ra
    4710:	ac280018 	sw	t0,24(at)

00004714 <func_80AC73B4>:
    4714:	27bdffd0 	addiu	sp,sp,-48
    4718:	afbf0024 	sw	ra,36(sp)
    471c:	afb00020 	sw	s0,32(sp)
    4720:	afa50034 	sw	a1,52(sp)
    4724:	8caf1c44 	lw	t7,7236(a1)
    4728:	00808025 	move	s0,a0
    472c:	afaf002c 	sw	t7,44(sp)
    4730:	8e1901f8 	lw	t9,504(s0)
    4734:	0320f809 	jalr	t9
    4738:	00000000 	nop
    473c:	8fa40034 	lw	a0,52(sp)
    4740:	0c000000 	jal	0 <func_80AC2CA0>
    4744:	02002825 	move	a1,s0
    4748:	0c000000 	jal	0 <func_80AC2CA0>
    474c:	02002025 	move	a0,s0
    4750:	0c000000 	jal	0 <func_80AC2CA0>
    4754:	02002025 	move	a0,s0
    4758:	0c000000 	jal	0 <func_80AC2CA0>
    475c:	02002025 	move	a0,s0
    4760:	260401ee 	addiu	a0,s0,494
    4764:	860501f0 	lh	a1,496(s0)
    4768:	0c000000 	jal	0 <func_80AC2CA0>
    476c:	24060190 	li	a2,400
    4770:	8fa6002c 	lw	a2,44(sp)
    4774:	10c0000a 	beqz	a2,47a0 <func_80AC73B4+0x8c>
    4778:	00000000 	nop
    477c:	861801fc 	lh	t8,508(s0)
    4780:	3c190000 	lui	t9,0x0
    4784:	02002025 	move	a0,s0
    4788:	00184080 	sll	t0,t8,0x2
    478c:	0328c821 	addu	t9,t9,t0
    4790:	8f390000 	lw	t9,0(t9)
    4794:	8fa50034 	lw	a1,52(sp)
    4798:	0320f809 	jalr	t9
    479c:	00000000 	nop
    47a0:	0c000000 	jal	0 <func_80AC2CA0>
    47a4:	02002025 	move	a0,s0
    47a8:	44802000 	mtc1	zero,$f4
    47ac:	24090005 	li	t1,5
    47b0:	afa90014 	sw	t1,20(sp)
    47b4:	8fa40034 	lw	a0,52(sp)
    47b8:	02002825 	move	a1,s0
    47bc:	3c0641d0 	lui	a2,0x41d0
    47c0:	3c074120 	lui	a3,0x4120
    47c4:	0c000000 	jal	0 <func_80AC2CA0>
    47c8:	e7a40010 	swc1	$f4,16(sp)
    47cc:	02002025 	move	a0,s0
    47d0:	0c000000 	jal	0 <func_80AC2CA0>
    47d4:	3c0542b4 	lui	a1,0x42b4
    47d8:	860a001c 	lh	t2,28(s0)
    47dc:	3c050000 	lui	a1,0x0
    47e0:	02002025 	move	a0,s0
    47e4:	000a5880 	sll	t3,t2,0x2
    47e8:	00ab2821 	addu	a1,a1,t3
    47ec:	0c000000 	jal	0 <func_80AC2CA0>
    47f0:	8ca50000 	lw	a1,0(a1)
    47f4:	8e020194 	lw	v0,404(s0)
    47f8:	02002025 	move	a0,s0
    47fc:	10400003 	beqz	v0,480c <func_80AC73B4+0xf8>
    4800:	00000000 	nop
    4804:	0040f809 	jalr	v0
    4808:	8fa50034 	lw	a1,52(sp)
    480c:	0c000000 	jal	0 <func_80AC2CA0>
    4810:	2604014c 	addiu	a0,s0,332
    4814:	8fbf0024 	lw	ra,36(sp)
    4818:	8fb00020 	lw	s0,32(sp)
    481c:	27bd0030 	addiu	sp,sp,48
    4820:	03e00008 	jr	ra
    4824:	00000000 	nop

00004828 <EnOssan_Update>:
    4828:	27bdffe8 	addiu	sp,sp,-24
    482c:	afbf0014 	sw	ra,20(sp)
    4830:	848e01e4 	lh	t6,484(a0)
    4834:	8c990190 	lw	t9,400(a0)
    4838:	25cf0001 	addiu	t7,t6,1
    483c:	0320f809 	jalr	t9
    4840:	a48f01e4 	sh	t7,484(a0)
    4844:	8fbf0014 	lw	ra,20(sp)
    4848:	27bd0018 	addiu	sp,sp,24
    484c:	03e00008 	jr	ra
    4850:	00000000 	nop

00004854 <func_80AC74F4>:
    4854:	24010008 	li	at,8
    4858:	afa40000 	sw	a0,0(sp)
    485c:	afa60008 	sw	a2,8(sp)
    4860:	14a10007 	bne	a1,at,4880 <func_80AC74F4+0x2c>
    4864:	afa7000c 	sw	a3,12(sp)
    4868:	8fa20010 	lw	v0,16(sp)
    486c:	8faf0014 	lw	t7,20(sp)
    4870:	844e0000 	lh	t6,0(v0)
    4874:	85f801ee 	lh	t8,494(t7)
    4878:	01d8c821 	addu	t9,t6,t8
    487c:	a4590000 	sh	t9,0(v0)
    4880:	03e00008 	jr	ra
    4884:	00001025 	move	v0,zero

00004888 <func_80AC7528>:
    4888:	27bdff88 	addiu	sp,sp,-120
    488c:	afbf0014 	sw	ra,20(sp)
    4890:	afa40078 	sw	a0,120(sp)
    4894:	afa5007c 	sw	a1,124(sp)
    4898:	afa60080 	sw	a2,128(sp)
    489c:	afa70084 	sw	a3,132(sp)
    48a0:	8c850000 	lw	a1,0(a0)
    48a4:	3c060000 	lui	a2,0x0
    48a8:	24c60000 	addiu	a2,a2,0
    48ac:	27a4004c 	addiu	a0,sp,76
    48b0:	24071060 	li	a3,4192
    48b4:	0c000000 	jal	0 <func_80AC2CA0>
    48b8:	afa5005c 	sw	a1,92(sp)
    48bc:	93af008f 	lbu	t7,143(sp)
    48c0:	8fa8005c 	lw	t0,92(sp)
    48c4:	8fb80078 	lw	t8,120(sp)
    48c8:	51e0008e 	beqzl	t7,4b04 <func_80AC7528+0x27c>
    48cc:	8fab0078 	lw	t3,120(sp)
    48d0:	8f040000 	lw	a0,0(t8)
    48d4:	0c000000 	jal	0 <func_80AC2CA0>
    48d8:	afa8005c 	sw	t0,92(sp)
    48dc:	8fa8005c 	lw	t0,92(sp)
    48e0:	8fa5007c 	lw	a1,124(sp)
    48e4:	3c09fa00 	lui	t1,0xfa00
    48e8:	8d0202b0 	lw	v0,688(t0)
    48ec:	3c014080 	lui	at,0x4080
    48f0:	44811000 	mtc1	at,$f2
    48f4:	24590008 	addiu	t9,v0,8
    48f8:	ad1902b0 	sw	t9,688(t0)
    48fc:	ac490000 	sw	t1,0(v0)
    4900:	8cad0240 	lw	t5,576(a1)
    4904:	8cb90244 	lw	t9,580(a1)
    4908:	8cab023c 	lw	t3,572(a1)
    490c:	31ae00ff 	andi	t6,t5,0xff
    4910:	8cad0248 	lw	t5,584(a1)
    4914:	000e7c00 	sll	t7,t6,0x10
    4918:	332900ff 	andi	t1,t9,0xff
    491c:	000b6600 	sll	t4,t3,0x18
    4920:	018fc025 	or	t8,t4,t7
    4924:	00095200 	sll	t2,t1,0x8
    4928:	030a5825 	or	t3,t8,t2
    492c:	31ae00ff 	andi	t6,t5,0xff
    4930:	016e6025 	or	t4,t3,t6
    4934:	ac4c0004 	sw	t4,4(v0)
    4938:	8d0202b0 	lw	v0,688(t0)
    493c:	3c090401 	lui	t1,0x401
    4940:	2529cdc0 	addiu	t1,t1,-12864
    4944:	244f0008 	addiu	t7,v0,8
    4948:	ad0f02b0 	sw	t7,688(t0)
    494c:	3c19fd70 	lui	t9,0xfd70
    4950:	ac590000 	sw	t9,0(v0)
    4954:	ac490004 	sw	t1,4(v0)
    4958:	8d0202b0 	lw	v0,688(t0)
    495c:	3c0d0705 	lui	t5,0x705
    4960:	35ad0140 	ori	t5,t5,0x140
    4964:	24580008 	addiu	t8,v0,8
    4968:	ad1802b0 	sw	t8,688(t0)
    496c:	3c0af570 	lui	t2,0xf570
    4970:	ac4a0000 	sw	t2,0(v0)
    4974:	ac4d0004 	sw	t5,4(v0)
    4978:	8d0202b0 	lw	v0,688(t0)
    497c:	3c0ee600 	lui	t6,0xe600
    4980:	3c190703 	lui	t9,0x703
    4984:	244b0008 	addiu	t3,v0,8
    4988:	ad0b02b0 	sw	t3,688(t0)
    498c:	ac400004 	sw	zero,4(v0)
    4990:	ac4e0000 	sw	t6,0(v0)
    4994:	8d0202b0 	lw	v0,688(t0)
    4998:	3739f800 	ori	t9,t9,0xf800
    499c:	3c0ff300 	lui	t7,0xf300
    49a0:	244c0008 	addiu	t4,v0,8
    49a4:	ad0c02b0 	sw	t4,688(t0)
    49a8:	ac590004 	sw	t9,4(v0)
    49ac:	ac4f0000 	sw	t7,0(v0)
    49b0:	8d0202b0 	lw	v0,688(t0)
    49b4:	3c18e700 	lui	t8,0xe700
    49b8:	3c0b0005 	lui	t3,0x5
    49bc:	24490008 	addiu	t1,v0,8
    49c0:	ad0902b0 	sw	t1,688(t0)
    49c4:	ac400004 	sw	zero,4(v0)
    49c8:	ac580000 	sw	t8,0(v0)
    49cc:	8d0202b0 	lw	v0,688(t0)
    49d0:	3c0df560 	lui	t5,0xf560
    49d4:	35ad0200 	ori	t5,t5,0x200
    49d8:	244a0008 	addiu	t2,v0,8
    49dc:	ad0a02b0 	sw	t2,688(t0)
    49e0:	356b0140 	ori	t3,t3,0x140
    49e4:	ac4b0004 	sw	t3,4(v0)
    49e8:	ac4d0000 	sw	t5,0(v0)
    49ec:	8d0202b0 	lw	v0,688(t0)
    49f0:	3c0f0003 	lui	t7,0x3
    49f4:	35efc03c 	ori	t7,t7,0xc03c
    49f8:	244e0008 	addiu	t6,v0,8
    49fc:	ad0e02b0 	sw	t6,688(t0)
    4a00:	3c0cf200 	lui	t4,0xf200
    4a04:	3c014180 	lui	at,0x4180
    4a08:	ac4c0000 	sw	t4,0(v0)
    4a0c:	ac4f0004 	sw	t7,4(v0)
    4a10:	c7ac0088 	lwc1	$f12,136(sp)
    4a14:	44812000 	mtc1	at,$f4
    4a18:	c7ae0080 	lwc1	$f14,128(sp)
    4a1c:	c7b00084 	lwc1	$f16,132(sp)
    4a20:	460c2002 	mul.s	$f0,$f4,$f12
    4a24:	3c01e400 	lui	at,0xe400
    4a28:	8d0202b0 	lw	v0,688(t0)
    4a2c:	3c09e100 	lui	t1,0xe100
    4a30:	24590008 	addiu	t9,v0,8
    4a34:	ad1902b0 	sw	t9,688(t0)
    4a38:	46007180 	add.s	$f6,$f14,$f0
    4a3c:	46008480 	add.s	$f18,$f16,$f0
    4a40:	46023202 	mul.s	$f8,$f6,$f2
    4a44:	4600428d 	trunc.w.s	$f10,$f8
    4a48:	46029102 	mul.s	$f4,$f18,$f2
    4a4c:	46007201 	sub.s	$f8,$f14,$f0
    4a50:	44185000 	mfc1	t8,$f10
    4a54:	46024282 	mul.s	$f10,$f8,$f2
    4a58:	330a0fff 	andi	t2,t8,0xfff
    4a5c:	000a6b00 	sll	t5,t2,0xc
    4a60:	01a15825 	or	t3,t5,at
    4a64:	3c013f80 	lui	at,0x3f80
    4a68:	4600218d 	trunc.w.s	$f6,$f4
    4a6c:	4600548d 	trunc.w.s	$f18,$f10
    4a70:	44815000 	mtc1	at,$f10
    4a74:	440c3000 	mfc1	t4,$f6
    4a78:	46008101 	sub.s	$f4,$f16,$f0
    4a7c:	44189000 	mfc1	t8,$f18
    4a80:	3c014480 	lui	at,0x4480
    4a84:	460c5483 	div.s	$f18,$f10,$f12
    4a88:	318f0fff 	andi	t7,t4,0xfff
    4a8c:	016fc825 	or	t9,t3,t7
    4a90:	330a0fff 	andi	t2,t8,0xfff
    4a94:	46022182 	mul.s	$f6,$f4,$f2
    4a98:	44812000 	mtc1	at,$f4
    4a9c:	000a6b00 	sll	t5,t2,0xc
    4aa0:	ac590000 	sw	t9,0(v0)
    4aa4:	3c0af100 	lui	t2,0xf100
    4aa8:	4600320d 	trunc.w.s	$f8,$f6
    4aac:	46049182 	mul.s	$f6,$f18,$f4
    4ab0:	440c4000 	mfc1	t4,$f8
    4ab4:	00000000 	nop
    4ab8:	318b0fff 	andi	t3,t4,0xfff
    4abc:	01ab7825 	or	t7,t5,t3
    4ac0:	ac4f0004 	sw	t7,4(v0)
    4ac4:	8d0202b0 	lw	v0,688(t0)
    4ac8:	4600320d 	trunc.w.s	$f8,$f6
    4acc:	24590008 	addiu	t9,v0,8
    4ad0:	ad1902b0 	sw	t9,688(t0)
    4ad4:	ac400004 	sw	zero,4(v0)
    4ad8:	ac490000 	sw	t1,0(v0)
    4adc:	44044000 	mfc1	a0,$f8
    4ae0:	8d0202b0 	lw	v0,688(t0)
    4ae4:	3084ffff 	andi	a0,a0,0xffff
    4ae8:	24580008 	addiu	t8,v0,8
    4aec:	00046400 	sll	t4,a0,0x10
    4af0:	ad1802b0 	sw	t8,688(t0)
    4af4:	01846825 	or	t5,t4,a0
    4af8:	ac4d0004 	sw	t5,4(v0)
    4afc:	ac4a0000 	sw	t2,0(v0)
    4b00:	8fab0078 	lw	t3,120(sp)
    4b04:	3c060000 	lui	a2,0x0
    4b08:	24c60000 	addiu	a2,a2,0
    4b0c:	27a4004c 	addiu	a0,sp,76
    4b10:	24071077 	li	a3,4215
    4b14:	0c000000 	jal	0 <func_80AC2CA0>
    4b18:	8d650000 	lw	a1,0(t3)
    4b1c:	8fbf0014 	lw	ra,20(sp)
    4b20:	27bd0078 	addiu	sp,sp,120
    4b24:	03e00008 	jr	ra
    4b28:	00000000 	nop

00004b2c <func_80AC77CC>:
    4b2c:	27bdff90 	addiu	sp,sp,-112
    4b30:	afbf0014 	sw	ra,20(sp)
    4b34:	afa40070 	sw	a0,112(sp)
    4b38:	afa50074 	sw	a1,116(sp)
    4b3c:	afa60078 	sw	a2,120(sp)
    4b40:	afa7007c 	sw	a3,124(sp)
    4b44:	8c850000 	lw	a1,0(a0)
    4b48:	3c060000 	lui	a2,0x0
    4b4c:	24c60000 	addiu	a2,a2,0
    4b50:	27a40038 	addiu	a0,sp,56
    4b54:	24071084 	li	a3,4228
    4b58:	0c000000 	jal	0 <func_80AC2CA0>
    4b5c:	afa50048 	sw	a1,72(sp)
    4b60:	8fa80048 	lw	t0,72(sp)
    4b64:	3c18e700 	lui	t8,0xe700
    4b68:	3c09fa00 	lui	t1,0xfa00
    4b6c:	8d0202b0 	lw	v0,688(t0)
    4b70:	3c014080 	lui	at,0x4080
    4b74:	44816000 	mtc1	at,$f12
    4b78:	244f0008 	addiu	t7,v0,8
    4b7c:	ad0f02b0 	sw	t7,688(t0)
    4b80:	ac400004 	sw	zero,4(v0)
    4b84:	ac580000 	sw	t8,0(v0)
    4b88:	8d0202b0 	lw	v0,688(t0)
    4b8c:	3c014100 	lui	at,0x4100
    4b90:	44812000 	mtc1	at,$f4
    4b94:	24590008 	addiu	t9,v0,8
    4b98:	ad1902b0 	sw	t9,688(t0)
    4b9c:	ac490000 	sw	t1,0(v0)
    4ba0:	8fad0078 	lw	t5,120(sp)
    4ba4:	8fb9007c 	lw	t9,124(sp)
    4ba8:	8fab0074 	lw	t3,116(sp)
    4bac:	31ae00ff 	andi	t6,t5,0xff
    4bb0:	8fad0080 	lw	t5,128(sp)
    4bb4:	000e7c00 	sll	t7,t6,0x10
    4bb8:	332900ff 	andi	t1,t9,0xff
    4bbc:	000b6600 	sll	t4,t3,0x18
    4bc0:	018fc025 	or	t8,t4,t7
    4bc4:	00095200 	sll	t2,t1,0x8
    4bc8:	030a5825 	or	t3,t8,t2
    4bcc:	31ae00ff 	andi	t6,t5,0xff
    4bd0:	016e6025 	or	t4,t3,t6
    4bd4:	ac4c0004 	sw	t4,4(v0)
    4bd8:	c7ae008c 	lwc1	$f14,140(sp)
    4bdc:	3c014140 	lui	at,0x4140
    4be0:	44813000 	mtc1	at,$f6
    4be4:	460e2002 	mul.s	$f0,$f4,$f14
    4be8:	c7b00084 	lwc1	$f16,132(sp)
    4bec:	c7b20088 	lwc1	$f18,136(sp)
    4bf0:	460e3082 	mul.s	$f2,$f6,$f14
    4bf4:	3c01e400 	lui	at,0xe400
    4bf8:	8d0202b0 	lw	v0,688(t0)
    4bfc:	3c19e100 	lui	t9,0xe100
    4c00:	3c060000 	lui	a2,0x0
    4c04:	46008200 	add.s	$f8,$f16,$f0
    4c08:	244f0008 	addiu	t7,v0,8
    4c0c:	ad0f02b0 	sw	t7,688(t0)
    4c10:	46029180 	add.s	$f6,$f18,$f2
    4c14:	460c4282 	mul.s	$f10,$f8,$f12
    4c18:	24c60000 	addiu	a2,a2,0
    4c1c:	27a40038 	addiu	a0,sp,56
    4c20:	460c3202 	mul.s	$f8,$f6,$f12
    4c24:	24071092 	li	a3,4242
    4c28:	4600510d 	trunc.w.s	$f4,$f10
    4c2c:	4600428d 	trunc.w.s	$f10,$f8
    4c30:	44092000 	mfc1	t1,$f4
    4c34:	46008101 	sub.s	$f4,$f16,$f0
    4c38:	440e5000 	mfc1	t6,$f10
    4c3c:	31380fff 	andi	t8,t1,0xfff
    4c40:	46029281 	sub.s	$f10,$f18,$f2
    4c44:	460c2182 	mul.s	$f6,$f4,$f12
    4c48:	00185300 	sll	t2,t8,0xc
    4c4c:	01416825 	or	t5,t2,at
    4c50:	460c5102 	mul.s	$f4,$f10,$f12
    4c54:	3c013f80 	lui	at,0x3f80
    4c58:	31cc0fff 	andi	t4,t6,0xfff
    4c5c:	01ac7825 	or	t7,t5,t4
    4c60:	ac4f0000 	sw	t7,0(v0)
    4c64:	4600320d 	trunc.w.s	$f8,$f6
    4c68:	4600218d 	trunc.w.s	$f6,$f4
    4c6c:	44094000 	mfc1	t1,$f8
    4c70:	44814000 	mtc1	at,$f8
    4c74:	3c014480 	lui	at,0x4480
    4c78:	440e3000 	mfc1	t6,$f6
    4c7c:	460e4283 	div.s	$f10,$f8,$f14
    4c80:	31380fff 	andi	t8,t1,0xfff
    4c84:	00185300 	sll	t2,t8,0xc
    4c88:	31cd0fff 	andi	t5,t6,0xfff
    4c8c:	014d6025 	or	t4,t2,t5
    4c90:	ac4c0004 	sw	t4,4(v0)
    4c94:	8d0202b0 	lw	v0,688(t0)
    4c98:	44812000 	mtc1	at,$f4
    4c9c:	244f0008 	addiu	t7,v0,8
    4ca0:	ad0f02b0 	sw	t7,688(t0)
    4ca4:	ac590000 	sw	t9,0(v0)
    4ca8:	8fae0094 	lw	t6,148(sp)
    4cac:	8fb80090 	lw	t8,144(sp)
    4cb0:	3c0ff100 	lui	t7,0xf100
    4cb4:	31caffff 	andi	t2,t6,0xffff
    4cb8:	00185c00 	sll	t3,t8,0x10
    4cbc:	016a6825 	or	t5,t3,t2
    4cc0:	ac4d0004 	sw	t5,4(v0)
    4cc4:	8d0202b0 	lw	v0,688(t0)
    4cc8:	244c0008 	addiu	t4,v0,8
    4ccc:	46045002 	mul.s	$f0,$f10,$f4
    4cd0:	ad0c02b0 	sw	t4,688(t0)
    4cd4:	ac4f0000 	sw	t7,0(v0)
    4cd8:	c7a60098 	lwc1	$f6,152(sp)
    4cdc:	c7a4009c 	lwc1	$f4,156(sp)
    4ce0:	46060202 	mul.s	$f8,$f0,$f6
    4ce4:	00000000 	nop
    4ce8:	46002182 	mul.s	$f6,$f4,$f0
    4cec:	4600428d 	trunc.w.s	$f10,$f8
    4cf0:	4600320d 	trunc.w.s	$f8,$f6
    4cf4:	44185000 	mfc1	t8,$f10
    4cf8:	440a4000 	mfc1	t2,$f8
    4cfc:	00187400 	sll	t6,t8,0x10
    4d00:	314dffff 	andi	t5,t2,0xffff
    4d04:	01cd6025 	or	t4,t6,t5
    4d08:	ac4c0004 	sw	t4,4(v0)
    4d0c:	8faf0070 	lw	t7,112(sp)
    4d10:	0c000000 	jal	0 <func_80AC2CA0>
    4d14:	8de50000 	lw	a1,0(t7)
    4d18:	8fbf0014 	lw	ra,20(sp)
    4d1c:	27bd0070 	addiu	sp,sp,112
    4d20:	03e00008 	jr	ra
    4d24:	00000000 	nop

00004d28 <func_80AC79C8>:
    4d28:	27bdff60 	addiu	sp,sp,-160
    4d2c:	afbf003c 	sw	ra,60(sp)
    4d30:	afb00038 	sw	s0,56(sp)
    4d34:	afa400a0 	sw	a0,160(sp)
    4d38:	8cae0288 	lw	t6,648(a1)
    4d3c:	00a08025 	move	s0,a1
    4d40:	3c060000 	lui	a2,0x0
    4d44:	afae009c 	sw	t6,156(sp)
    4d48:	8caf02c0 	lw	t7,704(a1)
    4d4c:	24c60000 	addiu	a2,a2,0
    4d50:	2407109c 	li	a3,4252
    4d54:	afaf0098 	sw	t7,152(sp)
    4d58:	8c850000 	lw	a1,0(a0)
    4d5c:	27a40084 	addiu	a0,sp,132
    4d60:	0c000000 	jal	0 <func_80AC2CA0>
    4d64:	afa50094 	sw	a1,148(sp)
    4d68:	8fb9009c 	lw	t9,156(sp)
    4d6c:	8fa80094 	lw	t0,148(sp)
    4d70:	8fa90098 	lw	t1,152(sp)
    4d74:	17200003 	bnez	t9,4d84 <func_80AC79C8+0x5c>
    4d78:	8faa00a0 	lw	t2,160(sp)
    4d7c:	512000d8 	beqzl	t1,50e0 <func_80AC79C8+0x3b8>
    4d80:	8faf00a0 	lw	t7,160(sp)
    4d84:	8d440000 	lw	a0,0(t2)
    4d88:	0c000000 	jal	0 <func_80AC2CA0>
    4d8c:	afa80094 	sw	t0,148(sp)
    4d90:	8fa80094 	lw	t0,148(sp)
    4d94:	3c0cfc11 	lui	t4,0xfc11
    4d98:	3c0dff2f 	lui	t5,0xff2f
    4d9c:	8d0202b0 	lw	v0,688(t0)
    4da0:	35adffff 	ori	t5,t5,0xffff
    4da4:	358c9623 	ori	t4,t4,0x9623
    4da8:	244b0008 	addiu	t3,v0,8
    4dac:	ad0b02b0 	sw	t3,688(t0)
    4db0:	ac4d0004 	sw	t5,4(v0)
    4db4:	ac4c0000 	sw	t4,0(v0)
    4db8:	8d0202b0 	lw	v0,688(t0)
    4dbc:	3c180401 	lui	t8,0x401
    4dc0:	2718cf40 	addiu	t8,t8,-12480
    4dc4:	244e0008 	addiu	t6,v0,8
    4dc8:	ad0e02b0 	sw	t6,688(t0)
    4dcc:	3c0ffd70 	lui	t7,0xfd70
    4dd0:	ac4f0000 	sw	t7,0(v0)
    4dd4:	ac580004 	sw	t8,4(v0)
    4dd8:	8d0202b0 	lw	v0,688(t0)
    4ddc:	3c0a0700 	lui	t2,0x700
    4de0:	354a0040 	ori	t2,t2,0x40
    4de4:	24590008 	addiu	t9,v0,8
    4de8:	ad1902b0 	sw	t9,688(t0)
    4dec:	3c09f570 	lui	t1,0xf570
    4df0:	ac490000 	sw	t1,0(v0)
    4df4:	ac4a0004 	sw	t2,4(v0)
    4df8:	8d0202b0 	lw	v0,688(t0)
    4dfc:	3c0ce600 	lui	t4,0xe600
    4e00:	3c0f070b 	lui	t7,0x70b
    4e04:	244b0008 	addiu	t3,v0,8
    4e08:	ad0b02b0 	sw	t3,688(t0)
    4e0c:	ac400004 	sw	zero,4(v0)
    4e10:	ac4c0000 	sw	t4,0(v0)
    4e14:	8d0202b0 	lw	v0,688(t0)
    4e18:	35eff400 	ori	t7,t7,0xf400
    4e1c:	3c0ef300 	lui	t6,0xf300
    4e20:	244d0008 	addiu	t5,v0,8
    4e24:	ad0d02b0 	sw	t5,688(t0)
    4e28:	ac4f0004 	sw	t7,4(v0)
    4e2c:	ac4e0000 	sw	t6,0(v0)
    4e30:	8d0202b0 	lw	v0,688(t0)
    4e34:	3c19e700 	lui	t9,0xe700
    4e38:	3c0af568 	lui	t2,0xf568
    4e3c:	24580008 	addiu	t8,v0,8
    4e40:	ad1802b0 	sw	t8,688(t0)
    4e44:	ac400004 	sw	zero,4(v0)
    4e48:	ac590000 	sw	t9,0(v0)
    4e4c:	8d0202b0 	lw	v0,688(t0)
    4e50:	354a0400 	ori	t2,t2,0x400
    4e54:	240b0040 	li	t3,64
    4e58:	24490008 	addiu	t1,v0,8
    4e5c:	ad0902b0 	sw	t1,688(t0)
    4e60:	ac4b0004 	sw	t3,4(v0)
    4e64:	ac4a0000 	sw	t2,0(v0)
    4e68:	8d0202b0 	lw	v0,688(t0)
    4e6c:	3c0e0003 	lui	t6,0x3
    4e70:	35cec05c 	ori	t6,t6,0xc05c
    4e74:	244c0008 	addiu	t4,v0,8
    4e78:	ad0c02b0 	sw	t4,688(t0)
    4e7c:	3c0df200 	lui	t5,0xf200
    4e80:	ac4d0000 	sw	t5,0(v0)
    4e84:	ac4e0004 	sw	t6,4(v0)
    4e88:	8faf009c 	lw	t7,156(sp)
    4e8c:	8fa400a0 	lw	a0,160(sp)
    4e90:	51e00018 	beqzl	t7,4ef4 <func_80AC79C8+0x1cc>
    4e94:	8fb90098 	lw	t9,152(sp)
    4e98:	8e180278 	lw	t8,632(s0)
    4e9c:	8e05026c 	lw	a1,620(s0)
    4ea0:	8e060270 	lw	a2,624(s0)
    4ea4:	8e070274 	lw	a3,628(s0)
    4ea8:	afb80010 	sw	t8,16(sp)
    4eac:	c604027c 	lwc1	$f4,636(s0)
    4eb0:	3c01bf80 	lui	at,0xbf80
    4eb4:	44815000 	mtc1	at,$f10
    4eb8:	e7a40014 	swc1	$f4,20(sp)
    4ebc:	c6060280 	lwc1	$f6,640(s0)
    4ec0:	3c013f80 	lui	at,0x3f80
    4ec4:	44818000 	mtc1	at,$f16
    4ec8:	e7a60018 	swc1	$f6,24(sp)
    4ecc:	c6080284 	lwc1	$f8,644(s0)
    4ed0:	afa80094 	sw	t0,148(sp)
    4ed4:	afa00024 	sw	zero,36(sp)
    4ed8:	afa00020 	sw	zero,32(sp)
    4edc:	e7aa0028 	swc1	$f10,40(sp)
    4ee0:	e7b0002c 	swc1	$f16,44(sp)
    4ee4:	0c000000 	jal	0 <func_80AC2CA0>
    4ee8:	e7a8001c 	swc1	$f8,28(sp)
    4eec:	8fa80094 	lw	t0,148(sp)
    4ef0:	8fb90098 	lw	t9,152(sp)
    4ef4:	53200017 	beqzl	t9,4f54 <func_80AC79C8+0x22c>
    4ef8:	8d0202b0 	lw	v0,688(t0)
    4efc:	8e0902b0 	lw	t1,688(s0)
    4f00:	8e0502a4 	lw	a1,676(s0)
    4f04:	8e0602a8 	lw	a2,680(s0)
    4f08:	8e0702ac 	lw	a3,684(s0)
    4f0c:	afa90010 	sw	t1,16(sp)
    4f10:	c61202b4 	lwc1	$f18,692(s0)
    4f14:	3c013f80 	lui	at,0x3f80
    4f18:	44810000 	mtc1	at,$f0
    4f1c:	e7b20014 	swc1	$f18,20(sp)
    4f20:	c60402b8 	lwc1	$f4,696(s0)
    4f24:	8fa400a0 	lw	a0,160(sp)
    4f28:	e7a40018 	swc1	$f4,24(sp)
    4f2c:	c60602bc 	lwc1	$f6,700(s0)
    4f30:	afa80094 	sw	t0,148(sp)
    4f34:	afa00024 	sw	zero,36(sp)
    4f38:	afa00020 	sw	zero,32(sp)
    4f3c:	e7a0002c 	swc1	$f0,44(sp)
    4f40:	e7a00028 	swc1	$f0,40(sp)
    4f44:	0c000000 	jal	0 <func_80AC2CA0>
    4f48:	e7a6001c 	swc1	$f6,28(sp)
    4f4c:	8fa80094 	lw	t0,148(sp)
    4f50:	8d0202b0 	lw	v0,688(t0)
    4f54:	3c0c0401 	lui	t4,0x401
    4f58:	258cce40 	addiu	t4,t4,-12736
    4f5c:	244a0008 	addiu	t2,v0,8
    4f60:	ad0a02b0 	sw	t2,688(t0)
    4f64:	3c0bfd70 	lui	t3,0xfd70
    4f68:	ac4b0000 	sw	t3,0(v0)
    4f6c:	ac4c0004 	sw	t4,4(v0)
    4f70:	8d0202b0 	lw	v0,688(t0)
    4f74:	3c0f0700 	lui	t7,0x700
    4f78:	35ef0040 	ori	t7,t7,0x40
    4f7c:	244d0008 	addiu	t5,v0,8
    4f80:	ad0d02b0 	sw	t5,688(t0)
    4f84:	3c0ef570 	lui	t6,0xf570
    4f88:	ac4e0000 	sw	t6,0(v0)
    4f8c:	ac4f0004 	sw	t7,4(v0)
    4f90:	8d0202b0 	lw	v0,688(t0)
    4f94:	3c19e600 	lui	t9,0xe600
    4f98:	3c0b0707 	lui	t3,0x707
    4f9c:	24580008 	addiu	t8,v0,8
    4fa0:	ad1802b0 	sw	t8,688(t0)
    4fa4:	ac400004 	sw	zero,4(v0)
    4fa8:	ac590000 	sw	t9,0(v0)
    4fac:	8d0202b0 	lw	v0,688(t0)
    4fb0:	356bf400 	ori	t3,t3,0xf400
    4fb4:	3c0af300 	lui	t2,0xf300
    4fb8:	24490008 	addiu	t1,v0,8
    4fbc:	ad0902b0 	sw	t1,688(t0)
    4fc0:	ac4b0004 	sw	t3,4(v0)
    4fc4:	ac4a0000 	sw	t2,0(v0)
    4fc8:	8d0202b0 	lw	v0,688(t0)
    4fcc:	3c0de700 	lui	t5,0xe700
    4fd0:	3c0ff568 	lui	t7,0xf568
    4fd4:	244c0008 	addiu	t4,v0,8
    4fd8:	ad0c02b0 	sw	t4,688(t0)
    4fdc:	ac400004 	sw	zero,4(v0)
    4fe0:	ac4d0000 	sw	t5,0(v0)
    4fe4:	8d0202b0 	lw	v0,688(t0)
    4fe8:	35ef0400 	ori	t7,t7,0x400
    4fec:	24180040 	li	t8,64
    4ff0:	244e0008 	addiu	t6,v0,8
    4ff4:	ad0e02b0 	sw	t6,688(t0)
    4ff8:	ac580004 	sw	t8,4(v0)
    4ffc:	ac4f0000 	sw	t7,0(v0)
    5000:	8d0202b0 	lw	v0,688(t0)
    5004:	3c0a0003 	lui	t2,0x3
    5008:	354ac03c 	ori	t2,t2,0xc03c
    500c:	24590008 	addiu	t9,v0,8
    5010:	ad1902b0 	sw	t9,688(t0)
    5014:	3c09f200 	lui	t1,0xf200
    5018:	ac490000 	sw	t1,0(v0)
    501c:	ac4a0004 	sw	t2,4(v0)
    5020:	8fab009c 	lw	t3,156(sp)
    5024:	8fa400a0 	lw	a0,160(sp)
    5028:	51600016 	beqzl	t3,5084 <func_80AC79C8+0x35c>
    502c:	8fad0098 	lw	t5,152(sp)
    5030:	8e0c0260 	lw	t4,608(s0)
    5034:	8e050254 	lw	a1,596(s0)
    5038:	8e060258 	lw	a2,600(s0)
    503c:	8e07025c 	lw	a3,604(s0)
    5040:	afac0010 	sw	t4,16(sp)
    5044:	c6080264 	lwc1	$f8,612(s0)
    5048:	3c01bf80 	lui	at,0xbf80
    504c:	44819000 	mtc1	at,$f18
    5050:	e7a80014 	swc1	$f8,20(sp)
    5054:	c60a0268 	lwc1	$f10,616(s0)
    5058:	3c013f80 	lui	at,0x3f80
    505c:	44812000 	mtc1	at,$f4
    5060:	e7aa0018 	swc1	$f10,24(sp)
    5064:	c6100284 	lwc1	$f16,644(s0)
    5068:	afa00024 	sw	zero,36(sp)
    506c:	afa00020 	sw	zero,32(sp)
    5070:	e7b20028 	swc1	$f18,40(sp)
    5074:	e7a4002c 	swc1	$f4,44(sp)
    5078:	0c000000 	jal	0 <func_80AC2CA0>
    507c:	e7b0001c 	swc1	$f16,28(sp)
    5080:	8fad0098 	lw	t5,152(sp)
    5084:	51a00016 	beqzl	t5,50e0 <func_80AC79C8+0x3b8>
    5088:	8faf00a0 	lw	t7,160(sp)
    508c:	8e0e0298 	lw	t6,664(s0)
    5090:	8e05028c 	lw	a1,652(s0)
    5094:	8e060290 	lw	a2,656(s0)
    5098:	8e070294 	lw	a3,660(s0)
    509c:	afae0010 	sw	t6,16(sp)
    50a0:	c606029c 	lwc1	$f6,668(s0)
    50a4:	3c013f80 	lui	at,0x3f80
    50a8:	44818000 	mtc1	at,$f16
    50ac:	e7a60014 	swc1	$f6,20(sp)
    50b0:	c60802a0 	lwc1	$f8,672(s0)
    50b4:	44819000 	mtc1	at,$f18
    50b8:	8fa400a0 	lw	a0,160(sp)
    50bc:	e7a80018 	swc1	$f8,24(sp)
    50c0:	c60a02bc 	lwc1	$f10,700(s0)
    50c4:	afa00024 	sw	zero,36(sp)
    50c8:	afa00020 	sw	zero,32(sp)
    50cc:	e7b00028 	swc1	$f16,40(sp)
    50d0:	e7b2002c 	swc1	$f18,44(sp)
    50d4:	0c000000 	jal	0 <func_80AC2CA0>
    50d8:	e7aa001c 	swc1	$f10,28(sp)
    50dc:	8faf00a0 	lw	t7,160(sp)
    50e0:	3c060000 	lui	a2,0x0
    50e4:	24c60000 	addiu	a2,a2,0
    50e8:	27a40084 	addiu	a0,sp,132
    50ec:	240710cc 	li	a3,4300
    50f0:	0c000000 	jal	0 <func_80AC2CA0>
    50f4:	8de50000 	lw	a1,0(t7)
    50f8:	8fbf003c 	lw	ra,60(sp)
    50fc:	8fb00038 	lw	s0,56(sp)
    5100:	27bd00a0 	addiu	sp,sp,160
    5104:	03e00008 	jr	ra
    5108:	00000000 	nop

0000510c <func_80AC7DAC>:
    510c:	27bdffa8 	addiu	sp,sp,-88
    5110:	afb10028 	sw	s1,40(sp)
    5114:	00a08825 	move	s1,a1
    5118:	afbf002c 	sw	ra,44(sp)
    511c:	afb00024 	sw	s0,36(sp)
    5120:	8ca50000 	lw	a1,0(a1)
    5124:	00808025 	move	s0,a0
    5128:	3c060000 	lui	a2,0x0
    512c:	24c60000 	addiu	a2,a2,0
    5130:	27a4003c 	addiu	a0,sp,60
    5134:	240710e0 	li	a3,4320
    5138:	0c000000 	jal	0 <func_80AC2CA0>
    513c:	afa5004c 	sw	a1,76(sp)
    5140:	0c000000 	jal	0 <func_80AC2CA0>
    5144:	8e240000 	lw	a0,0(s1)
    5148:	8fa5004c 	lw	a1,76(sp)
    514c:	3c0fdb06 	lui	t7,0xdb06
    5150:	35ef0020 	ori	t7,t7,0x20
    5154:	8ca302c0 	lw	v1,704(a1)
    5158:	3c040000 	lui	a0,0x0
    515c:	3c0c0000 	lui	t4,0x0
    5160:	246e0008 	addiu	t6,v1,8
    5164:	acae02c0 	sw	t6,704(a1)
    5168:	ac6f0000 	sw	t7,0(v1)
    516c:	861801f2 	lh	t8,498(s0)
    5170:	3c0100ff 	lui	at,0xff
    5174:	3421ffff 	ori	at,at,0xffff
    5178:	0018c880 	sll	t9,t8,0x2
    517c:	00992021 	addu	a0,a0,t9
    5180:	8c840000 	lw	a0,0(a0)
    5184:	3c0f0000 	lui	t7,0x0
    5188:	25ef0000 	addiu	t7,t7,0
    518c:	00044900 	sll	t1,a0,0x4
    5190:	00095702 	srl	t2,t1,0x1c
    5194:	000a5880 	sll	t3,t2,0x2
    5198:	018b6021 	addu	t4,t4,t3
    519c:	8d8c0000 	lw	t4,0(t4)
    51a0:	00814024 	and	t0,a0,at
    51a4:	3c018000 	lui	at,0x8000
    51a8:	010c6821 	addu	t5,t0,t4
    51ac:	01a17021 	addu	t6,t5,at
    51b0:	ac6e0004 	sw	t6,4(v1)
    51b4:	9207014e 	lbu	a3,334(s0)
    51b8:	8e06016c 	lw	a2,364(s0)
    51bc:	8e050150 	lw	a1,336(s0)
    51c0:	afb00018 	sw	s0,24(sp)
    51c4:	afa00014 	sw	zero,20(sp)
    51c8:	afaf0010 	sw	t7,16(sp)
    51cc:	0c000000 	jal	0 <func_80AC2CA0>
    51d0:	02202025 	move	a0,s1
    51d4:	c6040238 	lwc1	$f4,568(s0)
    51d8:	8e060230 	lw	a2,560(s0)
    51dc:	8e070234 	lw	a3,564(s0)
    51e0:	e7a40010 	swc1	$f4,16(sp)
    51e4:	92180251 	lbu	t8,593(s0)
    51e8:	02202025 	move	a0,s1
    51ec:	02002825 	move	a1,s0
    51f0:	0c000000 	jal	0 <func_80AC2CA0>
    51f4:	afb80014 	sw	t8,20(sp)
    51f8:	02202025 	move	a0,s1
    51fc:	0c000000 	jal	0 <func_80AC2CA0>
    5200:	02002825 	move	a1,s0
    5204:	3c060000 	lui	a2,0x0
    5208:	24c60000 	addiu	a2,a2,0
    520c:	27a4003c 	addiu	a0,sp,60
    5210:	8e250000 	lw	a1,0(s1)
    5214:	0c000000 	jal	0 <func_80AC2CA0>
    5218:	240710f4 	li	a3,4340
    521c:	8fbf002c 	lw	ra,44(sp)
    5220:	8fb00024 	lw	s0,36(sp)
    5224:	8fb10028 	lw	s1,40(sp)
    5228:	03e00008 	jr	ra
    522c:	27bd0058 	addiu	sp,sp,88

00005230 <func_80AC7ED0>:
    5230:	27bdffc0 	addiu	sp,sp,-64
    5234:	afbf0014 	sw	ra,20(sp)
    5238:	afa40040 	sw	a0,64(sp)
    523c:	afa50044 	sw	a1,68(sp)
    5240:	afa60048 	sw	a2,72(sp)
    5244:	afa7004c 	sw	a3,76(sp)
    5248:	8c850000 	lw	a1,0(a0)
    524c:	3c060000 	lui	a2,0x0
    5250:	24c60000 	addiu	a2,a2,0
    5254:	27a40024 	addiu	a0,sp,36
    5258:	24071102 	li	a3,4354
    525c:	0c000000 	jal	0 <func_80AC2CA0>
    5260:	afa50034 	sw	a1,52(sp)
    5264:	8faf0044 	lw	t7,68(sp)
    5268:	2401000f 	li	at,15
    526c:	8fa80034 	lw	t0,52(sp)
    5270:	15e10037 	bne	t7,at,5350 <func_80AC7ED0+0x120>
    5274:	8fa90040 	lw	t1,64(sp)
    5278:	8d0302c0 	lw	v1,704(t0)
    527c:	8fa50054 	lw	a1,84(sp)
    5280:	3c19db06 	lui	t9,0xdb06
    5284:	24780008 	addiu	t8,v1,8
    5288:	ad1802c0 	sw	t8,704(t0)
    528c:	37390018 	ori	t9,t9,0x18
    5290:	ac790000 	sw	t9,0(v1)
    5294:	80aa01e9 	lb	t2,489(a1)
    5298:	24040044 	li	a0,68
    529c:	3c060001 	lui	a2,0x1
    52a0:	01440019 	multu	t2,a0
    52a4:	3c018000 	lui	at,0x8000
    52a8:	00005812 	mflo	t3
    52ac:	012b6021 	addu	t4,t1,t3
    52b0:	01866821 	addu	t5,t4,a2
    52b4:	8dae17b4 	lw	t6,6068(t5)
    52b8:	3c0d0600 	lui	t5,0x600
    52bc:	25ad2820 	addiu	t5,t5,10272
    52c0:	ac6e0004 	sw	t6,4(v1)
    52c4:	80af01e9 	lb	t7,489(a1)
    52c8:	8fae0048 	lw	t6,72(sp)
    52cc:	01e40019 	multu	t7,a0
    52d0:	3c040000 	lui	a0,0x0
    52d4:	0000c012 	mflo	t8
    52d8:	0138c821 	addu	t9,t1,t8
    52dc:	03265021 	addu	t2,t9,a2
    52e0:	8d4b17b4 	lw	t3,6068(t2)
    52e4:	3c18db06 	lui	t8,0xdb06
    52e8:	37180028 	ori	t8,t8,0x28
    52ec:	01616021 	addu	t4,t3,at
    52f0:	3c010000 	lui	at,0x0
    52f4:	ac2c0018 	sw	t4,24(at)
    52f8:	adcd0000 	sw	t5,0(t6)
    52fc:	8d0302c0 	lw	v1,704(t0)
    5300:	3c0100ff 	lui	at,0xff
    5304:	3421ffff 	ori	at,at,0xffff
    5308:	246f0008 	addiu	t7,v1,8
    530c:	ad0f02c0 	sw	t7,704(t0)
    5310:	ac780000 	sw	t8,0(v1)
    5314:	84b901f2 	lh	t9,498(a1)
    5318:	3c0f0000 	lui	t7,0x0
    531c:	00195080 	sll	t2,t9,0x2
    5320:	008a2021 	addu	a0,a0,t2
    5324:	8c840000 	lw	a0,0(a0)
    5328:	00046100 	sll	t4,a0,0x4
    532c:	000c6f02 	srl	t5,t4,0x1c
    5330:	000d7080 	sll	t6,t5,0x2
    5334:	01ee7821 	addu	t7,t7,t6
    5338:	8def0000 	lw	t7,0(t7)
    533c:	00815824 	and	t3,a0,at
    5340:	3c018000 	lui	at,0x8000
    5344:	016fc021 	addu	t8,t3,t7
    5348:	0301c821 	addu	t9,t8,at
    534c:	ac790004 	sw	t9,4(v1)
    5350:	3c060000 	lui	a2,0x0
    5354:	24c60000 	addiu	a2,a2,0
    5358:	27a40024 	addiu	a0,sp,36
    535c:	8d250000 	lw	a1,0(t1)
    5360:	0c000000 	jal	0 <func_80AC2CA0>
    5364:	24071116 	li	a3,4374
    5368:	8fbf0014 	lw	ra,20(sp)
    536c:	27bd0040 	addiu	sp,sp,64
    5370:	00001025 	move	v0,zero
    5374:	03e00008 	jr	ra
    5378:	00000000 	nop

0000537c <func_80AC801C>:
    537c:	27bdffe8 	addiu	sp,sp,-24
    5380:	afbf0014 	sw	ra,20(sp)
    5384:	0c000000 	jal	0 <func_80AC2CA0>
    5388:	24050008 	li	a1,8
    538c:	3c0edf00 	lui	t6,0xdf00
    5390:	ac4e0000 	sw	t6,0(v0)
    5394:	ac400004 	sw	zero,4(v0)
    5398:	8fbf0014 	lw	ra,20(sp)
    539c:	27bd0018 	addiu	sp,sp,24
    53a0:	03e00008 	jr	ra
    53a4:	00000000 	nop

000053a8 <func_80AC8048>:
    53a8:	27bdffe8 	addiu	sp,sp,-24
    53ac:	afbf0014 	sw	ra,20(sp)
    53b0:	afa5001c 	sw	a1,28(sp)
    53b4:	afa60020 	sw	a2,32(sp)
    53b8:	afa70024 	sw	a3,36(sp)
    53bc:	0c000000 	jal	0 <func_80AC2CA0>
    53c0:	24050010 	li	a1,16
    53c4:	3c0efb00 	lui	t6,0xfb00
    53c8:	ac4e0000 	sw	t6,0(v0)
    53cc:	93a90023 	lbu	t1,35(sp)
    53d0:	93b8001f 	lbu	t8,31(sp)
    53d4:	93ad0027 	lbu	t5,39(sp)
    53d8:	93a8002b 	lbu	t0,43(sp)
    53dc:	00095400 	sll	t2,t1,0x10
    53e0:	0018ce00 	sll	t9,t8,0x18
    53e4:	032a5825 	or	t3,t9,t2
    53e8:	000d7200 	sll	t6,t5,0x8
    53ec:	016e7825 	or	t7,t3,t6
    53f0:	3c19df00 	lui	t9,0xdf00
    53f4:	01e84825 	or	t1,t7,t0
    53f8:	ac490004 	sw	t1,4(v0)
    53fc:	ac590008 	sw	t9,8(v0)
    5400:	ac40000c 	sw	zero,12(v0)
    5404:	8fbf0014 	lw	ra,20(sp)
    5408:	27bd0018 	addiu	sp,sp,24
    540c:	03e00008 	jr	ra
    5410:	00000000 	nop

00005414 <func_80AC80B4>:
    5414:	27bdff98 	addiu	sp,sp,-104
    5418:	afb20030 	sw	s2,48(sp)
    541c:	00a09025 	move	s2,a1
    5420:	afbf0034 	sw	ra,52(sp)
    5424:	afb1002c 	sw	s1,44(sp)
    5428:	afb00028 	sw	s0,40(sp)
    542c:	8ca50000 	lw	a1,0(a1)
    5430:	00808825 	move	s1,a0
    5434:	3c060000 	lui	a2,0x0
    5438:	24c60000 	addiu	a2,a2,0
    543c:	27a4004c 	addiu	a0,sp,76
    5440:	24071139 	li	a3,4409
    5444:	0c000000 	jal	0 <func_80AC2CA0>
    5448:	00a08025 	move	s0,a1
    544c:	0c000000 	jal	0 <func_80AC2CA0>
    5450:	8e440000 	lw	a0,0(s2)
    5454:	8e0202c0 	lw	v0,704(s0)
    5458:	3c0ffb00 	lui	t7,0xfb00
    545c:	241800ff 	li	t8,255
    5460:	244e0008 	addiu	t6,v0,8
    5464:	ae0e02c0 	sw	t6,704(s0)
    5468:	ac4f0000 	sw	t7,0(v0)
    546c:	ac580004 	sw	t8,4(v0)
    5470:	8e0202c0 	lw	v0,704(s0)
    5474:	3c08db06 	lui	t0,0xdb06
    5478:	35080020 	ori	t0,t0,0x20
    547c:	24590008 	addiu	t9,v0,8
    5480:	ae1902c0 	sw	t9,704(s0)
    5484:	ac480000 	sw	t0,0(v0)
    5488:	8e440000 	lw	a0,0(s2)
    548c:	240900ff 	li	t1,255
    5490:	afa90010 	sw	t1,16(sp)
    5494:	00002825 	move	a1,zero
    5498:	24060082 	li	a2,130
    549c:	24070046 	li	a3,70
    54a0:	0c000000 	jal	0 <func_80AC2CA0>
    54a4:	afa20044 	sw	v0,68(sp)
    54a8:	8fa30044 	lw	v1,68(sp)
    54ac:	3c0bdb06 	lui	t3,0xdb06
    54b0:	356b0024 	ori	t3,t3,0x24
    54b4:	ac620004 	sw	v0,4(v1)
    54b8:	8e0202c0 	lw	v0,704(s0)
    54bc:	240c00ff 	li	t4,255
    54c0:	2405006e 	li	a1,110
    54c4:	244a0008 	addiu	t2,v0,8
    54c8:	ae0a02c0 	sw	t2,704(s0)
    54cc:	ac4b0000 	sw	t3,0(v0)
    54d0:	8e440000 	lw	a0,0(s2)
    54d4:	afac0010 	sw	t4,16(sp)
    54d8:	240600aa 	li	a2,170
    54dc:	24070014 	li	a3,20
    54e0:	0c000000 	jal	0 <func_80AC2CA0>
    54e4:	afa20040 	sw	v0,64(sp)
    54e8:	8fa30040 	lw	v1,64(sp)
    54ec:	3c0edb06 	lui	t6,0xdb06
    54f0:	35ce0030 	ori	t6,t6,0x30
    54f4:	ac620004 	sw	v0,4(v1)
    54f8:	8e0202c0 	lw	v0,704(s0)
    54fc:	244d0008 	addiu	t5,v0,8
    5500:	ae0d02c0 	sw	t5,704(s0)
    5504:	ac4e0000 	sw	t6,0(v0)
    5508:	8e440000 	lw	a0,0(s2)
    550c:	0c000000 	jal	0 <func_80AC2CA0>
    5510:	afa2003c 	sw	v0,60(sp)
    5514:	8fa3003c 	lw	v1,60(sp)
    5518:	3c0f0000 	lui	t7,0x0
    551c:	25ef0000 	addiu	t7,t7,0
    5520:	ac620004 	sw	v0,4(v1)
    5524:	9227014e 	lbu	a3,334(s1)
    5528:	8e26016c 	lw	a2,364(s1)
    552c:	8e250150 	lw	a1,336(s1)
    5530:	afb10018 	sw	s1,24(sp)
    5534:	afa00014 	sw	zero,20(sp)
    5538:	afaf0010 	sw	t7,16(sp)
    553c:	0c000000 	jal	0 <func_80AC2CA0>
    5540:	02402025 	move	a0,s2
    5544:	c6240238 	lwc1	$f4,568(s1)
    5548:	8e260230 	lw	a2,560(s1)
    554c:	8e270234 	lw	a3,564(s1)
    5550:	e7a40010 	swc1	$f4,16(sp)
    5554:	92380251 	lbu	t8,593(s1)
    5558:	02402025 	move	a0,s2
    555c:	02202825 	move	a1,s1
    5560:	0c000000 	jal	0 <func_80AC2CA0>
    5564:	afb80014 	sw	t8,20(sp)
    5568:	02402025 	move	a0,s2
    556c:	0c000000 	jal	0 <func_80AC2CA0>
    5570:	02202825 	move	a1,s1
    5574:	3c060000 	lui	a2,0x0
    5578:	24c60000 	addiu	a2,a2,0
    557c:	27a4004c 	addiu	a0,sp,76
    5580:	8e450000 	lw	a1,0(s2)
    5584:	0c000000 	jal	0 <func_80AC2CA0>
    5588:	24071152 	li	a3,4434
    558c:	8fbf0034 	lw	ra,52(sp)
    5590:	8fb00028 	lw	s0,40(sp)
    5594:	8fb1002c 	lw	s1,44(sp)
    5598:	8fb20030 	lw	s2,48(sp)
    559c:	03e00008 	jr	ra
    55a0:	27bd0068 	addiu	sp,sp,104

000055a4 <func_80AC8244>:
    55a4:	27bdffa8 	addiu	sp,sp,-88
    55a8:	afb10028 	sw	s1,40(sp)
    55ac:	00a08825 	move	s1,a1
    55b0:	afbf002c 	sw	ra,44(sp)
    55b4:	afb00024 	sw	s0,36(sp)
    55b8:	8ca50000 	lw	a1,0(a1)
    55bc:	00808025 	move	s0,a0
    55c0:	3c060000 	lui	a2,0x0
    55c4:	24c60000 	addiu	a2,a2,0
    55c8:	27a4003c 	addiu	a0,sp,60
    55cc:	24071167 	li	a3,4455
    55d0:	0c000000 	jal	0 <func_80AC2CA0>
    55d4:	afa5004c 	sw	a1,76(sp)
    55d8:	0c000000 	jal	0 <func_80AC2CA0>
    55dc:	8e240000 	lw	a0,0(s1)
    55e0:	8fa8004c 	lw	t0,76(sp)
    55e4:	3c0fdb06 	lui	t7,0xdb06
    55e8:	35ef0020 	ori	t7,t7,0x20
    55ec:	8d0302c0 	lw	v1,704(t0)
    55f0:	3c040000 	lui	a0,0x0
    55f4:	3c060000 	lui	a2,0x0
    55f8:	246e0008 	addiu	t6,v1,8
    55fc:	ad0e02c0 	sw	t6,704(t0)
    5600:	ac6f0000 	sw	t7,0(v1)
    5604:	861801f2 	lh	t8,498(s0)
    5608:	24c60000 	addiu	a2,a2,0
    560c:	3c0500ff 	lui	a1,0xff
    5610:	0018c880 	sll	t9,t8,0x2
    5614:	00992021 	addu	a0,a0,t9
    5618:	8c840000 	lw	a0,0(a0)
    561c:	34a5ffff 	ori	a1,a1,0xffff
    5620:	3c078000 	lui	a3,0x8000
    5624:	00045100 	sll	t2,a0,0x4
    5628:	000a5f02 	srl	t3,t2,0x1c
    562c:	000b6080 	sll	t4,t3,0x2
    5630:	00cc6821 	addu	t5,a2,t4
    5634:	8dae0000 	lw	t6,0(t5)
    5638:	00854824 	and	t1,a0,a1
    563c:	3c040601 	lui	a0,0x601
    5640:	012e7821 	addu	t7,t1,t6
    5644:	01e7c021 	addu	t8,t7,a3
    5648:	ac780004 	sw	t8,4(v1)
    564c:	8d0302c0 	lw	v1,704(t0)
    5650:	2484de80 	addiu	a0,a0,-8576
    5654:	00045900 	sll	t3,a0,0x4
    5658:	000b6702 	srl	t4,t3,0x1c
    565c:	3c0adb06 	lui	t2,0xdb06
    5660:	24790008 	addiu	t9,v1,8
    5664:	354a0024 	ori	t2,t2,0x24
    5668:	000c6880 	sll	t5,t4,0x2
    566c:	ad1902c0 	sw	t9,704(t0)
    5670:	00cd4821 	addu	t1,a2,t5
    5674:	ac6a0000 	sw	t2,0(v1)
    5678:	8d2e0000 	lw	t6,0(t1)
    567c:	00857824 	and	t7,a0,a1
    5680:	02202025 	move	a0,s1
    5684:	01cfc021 	addu	t8,t6,t7
    5688:	0307c821 	addu	t9,t8,a3
    568c:	ac790004 	sw	t9,4(v1)
    5690:	9207014e 	lbu	a3,334(s0)
    5694:	8e06016c 	lw	a2,364(s0)
    5698:	8e050150 	lw	a1,336(s0)
    569c:	afb00018 	sw	s0,24(sp)
    56a0:	afa00014 	sw	zero,20(sp)
    56a4:	0c000000 	jal	0 <func_80AC2CA0>
    56a8:	afa00010 	sw	zero,16(sp)
    56ac:	c6040238 	lwc1	$f4,568(s0)
    56b0:	8e060230 	lw	a2,560(s0)
    56b4:	8e070234 	lw	a3,564(s0)
    56b8:	e7a40010 	swc1	$f4,16(sp)
    56bc:	920a0251 	lbu	t2,593(s0)
    56c0:	02202025 	move	a0,s1
    56c4:	02002825 	move	a1,s0
    56c8:	0c000000 	jal	0 <func_80AC2CA0>
    56cc:	afaa0014 	sw	t2,20(sp)
    56d0:	02202025 	move	a0,s1
    56d4:	0c000000 	jal	0 <func_80AC2CA0>
    56d8:	02002825 	move	a1,s0
    56dc:	3c060000 	lui	a2,0x0
    56e0:	24c60000 	addiu	a2,a2,0
    56e4:	27a4003c 	addiu	a0,sp,60
    56e8:	8e250000 	lw	a1,0(s1)
    56ec:	0c000000 	jal	0 <func_80AC2CA0>
    56f0:	2407117c 	li	a3,4476
    56f4:	8fbf002c 	lw	ra,44(sp)
    56f8:	8fb00024 	lw	s0,36(sp)
    56fc:	8fb10028 	lw	s1,40(sp)
    5700:	03e00008 	jr	ra
    5704:	27bd0058 	addiu	sp,sp,88

00005708 <func_80AC83A8>:
    5708:	2401000f 	li	at,15
    570c:	afa40000 	sw	a0,0(sp)
    5710:	afa60008 	sw	a2,8(sp)
    5714:	14a10007 	bne	a1,at,5734 <func_80AC83A8+0x2c>
    5718:	afa7000c 	sw	a3,12(sp)
    571c:	8fa20010 	lw	v0,16(sp)
    5720:	8faf0014 	lw	t7,20(sp)
    5724:	844e0000 	lh	t6,0(v0)
    5728:	85f801ee 	lh	t8,494(t7)
    572c:	01d8c821 	addu	t9,t6,t8
    5730:	a4590000 	sh	t9,0(v0)
    5734:	03e00008 	jr	ra
    5738:	00001025 	move	v0,zero

0000573c <func_80AC83DC>:
    573c:	27bdff98 	addiu	sp,sp,-104
    5740:	afb20030 	sw	s2,48(sp)
    5744:	00a09025 	move	s2,a1
    5748:	afbf0034 	sw	ra,52(sp)
    574c:	afb1002c 	sw	s1,44(sp)
    5750:	afb00028 	sw	s0,40(sp)
    5754:	8ca50000 	lw	a1,0(a1)
    5758:	00808025 	move	s0,a0
    575c:	3c060000 	lui	a2,0x0
    5760:	24c60000 	addiu	a2,a2,0
    5764:	27a4004c 	addiu	a0,sp,76
    5768:	2407119a 	li	a3,4506
    576c:	0c000000 	jal	0 <func_80AC2CA0>
    5770:	00a08825 	move	s1,a1
    5774:	0c000000 	jal	0 <func_80AC2CA0>
    5778:	8e440000 	lw	a0,0(s2)
    577c:	8e2202c0 	lw	v0,704(s1)
    5780:	3c0ffb00 	lui	t7,0xfb00
    5784:	241800ff 	li	t8,255
    5788:	244e0008 	addiu	t6,v0,8
    578c:	ae2e02c0 	sw	t6,704(s1)
    5790:	ac4f0000 	sw	t7,0(v0)
    5794:	ac580004 	sw	t8,4(v0)
    5798:	8e2202c0 	lw	v0,704(s1)
    579c:	3c08db06 	lui	t0,0xdb06
    57a0:	35080030 	ori	t0,t0,0x30
    57a4:	24590008 	addiu	t9,v0,8
    57a8:	ae3902c0 	sw	t9,704(s1)
    57ac:	ac480000 	sw	t0,0(v0)
    57b0:	8e440000 	lw	a0,0(s2)
    57b4:	0c000000 	jal	0 <func_80AC2CA0>
    57b8:	afa20044 	sw	v0,68(sp)
    57bc:	8fa30044 	lw	v1,68(sp)
    57c0:	3c0adb06 	lui	t2,0xdb06
    57c4:	354a0020 	ori	t2,t2,0x20
    57c8:	ac620004 	sw	v0,4(v1)
    57cc:	8e2202c0 	lw	v0,704(s1)
    57d0:	3c040000 	lui	a0,0x0
    57d4:	3c190000 	lui	t9,0x0
    57d8:	24490008 	addiu	t1,v0,8
    57dc:	ae2902c0 	sw	t1,704(s1)
    57e0:	ac4a0000 	sw	t2,0(v0)
    57e4:	860b01f2 	lh	t3,498(s0)
    57e8:	3c0100ff 	lui	at,0xff
    57ec:	3421ffff 	ori	at,at,0xffff
    57f0:	000b6080 	sll	t4,t3,0x2
    57f4:	008c2021 	addu	a0,a0,t4
    57f8:	8c840000 	lw	a0,0(a0)
    57fc:	3c0a0000 	lui	t2,0x0
    5800:	254a0000 	addiu	t2,t2,0
    5804:	00047100 	sll	t6,a0,0x4
    5808:	000e7f02 	srl	t7,t6,0x1c
    580c:	000fc080 	sll	t8,t7,0x2
    5810:	0338c821 	addu	t9,t9,t8
    5814:	8f390000 	lw	t9,0(t9)
    5818:	00816824 	and	t5,a0,at
    581c:	3c018000 	lui	at,0x8000
    5820:	01b94021 	addu	t0,t5,t9
    5824:	01014821 	addu	t1,t0,at
    5828:	ac490004 	sw	t1,4(v0)
    582c:	9207014e 	lbu	a3,334(s0)
    5830:	8e06016c 	lw	a2,364(s0)
    5834:	8e050150 	lw	a1,336(s0)
    5838:	afb00018 	sw	s0,24(sp)
    583c:	afa00014 	sw	zero,20(sp)
    5840:	afaa0010 	sw	t2,16(sp)
    5844:	0c000000 	jal	0 <func_80AC2CA0>
    5848:	02402025 	move	a0,s2
    584c:	c6040238 	lwc1	$f4,568(s0)
    5850:	8e060230 	lw	a2,560(s0)
    5854:	8e070234 	lw	a3,564(s0)
    5858:	e7a40010 	swc1	$f4,16(sp)
    585c:	920b0251 	lbu	t3,593(s0)
    5860:	02402025 	move	a0,s2
    5864:	02002825 	move	a1,s0
    5868:	0c000000 	jal	0 <func_80AC2CA0>
    586c:	afab0014 	sw	t3,20(sp)
    5870:	02402025 	move	a0,s2
    5874:	0c000000 	jal	0 <func_80AC2CA0>
    5878:	02002825 	move	a1,s0
    587c:	3c060000 	lui	a2,0x0
    5880:	24c60000 	addiu	a2,a2,0
    5884:	27a4004c 	addiu	a0,sp,76
    5888:	8e450000 	lw	a1,0(s2)
    588c:	0c000000 	jal	0 <func_80AC2CA0>
    5890:	240711b3 	li	a3,4531
    5894:	8fbf0034 	lw	ra,52(sp)
    5898:	8fb00028 	lw	s0,40(sp)
    589c:	8fb1002c 	lw	s1,44(sp)
    58a0:	8fb20030 	lw	s2,48(sp)
    58a4:	03e00008 	jr	ra
    58a8:	27bd0068 	addiu	sp,sp,104

000058ac <func_80AC854C>:
    58ac:	27bdffa8 	addiu	sp,sp,-88
    58b0:	afb10028 	sw	s1,40(sp)
    58b4:	00a08825 	move	s1,a1
    58b8:	afbf002c 	sw	ra,44(sp)
    58bc:	afb00024 	sw	s0,36(sp)
    58c0:	8ca50000 	lw	a1,0(a1)
    58c4:	00808025 	move	s0,a0
    58c8:	3c060000 	lui	a2,0x0
    58cc:	24c60000 	addiu	a2,a2,0
    58d0:	27a4003c 	addiu	a0,sp,60
    58d4:	240711c0 	li	a3,4544
    58d8:	0c000000 	jal	0 <func_80AC2CA0>
    58dc:	afa5004c 	sw	a1,76(sp)
    58e0:	0c000000 	jal	0 <func_80AC2CA0>
    58e4:	8e240000 	lw	a0,0(s1)
    58e8:	8fa5004c 	lw	a1,76(sp)
    58ec:	3c0fdb06 	lui	t7,0xdb06
    58f0:	35ef0020 	ori	t7,t7,0x20
    58f4:	8ca302c0 	lw	v1,704(a1)
    58f8:	3c040000 	lui	a0,0x0
    58fc:	3c0c0000 	lui	t4,0x0
    5900:	246e0008 	addiu	t6,v1,8
    5904:	acae02c0 	sw	t6,704(a1)
    5908:	ac6f0000 	sw	t7,0(v1)
    590c:	861801f2 	lh	t8,498(s0)
    5910:	3c0100ff 	lui	at,0xff
    5914:	3421ffff 	ori	at,at,0xffff
    5918:	0018c880 	sll	t9,t8,0x2
    591c:	00992021 	addu	a0,a0,t9
    5920:	8c840000 	lw	a0,0(a0)
    5924:	00044900 	sll	t1,a0,0x4
    5928:	00095702 	srl	t2,t1,0x1c
    592c:	000a5880 	sll	t3,t2,0x2
    5930:	018b6021 	addu	t4,t4,t3
    5934:	8d8c0000 	lw	t4,0(t4)
    5938:	00814024 	and	t0,a0,at
    593c:	3c018000 	lui	at,0x8000
    5940:	010c6821 	addu	t5,t0,t4
    5944:	01a17021 	addu	t6,t5,at
    5948:	ac6e0004 	sw	t6,4(v1)
    594c:	9207014e 	lbu	a3,334(s0)
    5950:	8e06016c 	lw	a2,364(s0)
    5954:	8e050150 	lw	a1,336(s0)
    5958:	afb00018 	sw	s0,24(sp)
    595c:	afa00014 	sw	zero,20(sp)
    5960:	afa00010 	sw	zero,16(sp)
    5964:	0c000000 	jal	0 <func_80AC2CA0>
    5968:	02202025 	move	a0,s1
    596c:	c6040238 	lwc1	$f4,568(s0)
    5970:	8e060230 	lw	a2,560(s0)
    5974:	8e070234 	lw	a3,564(s0)
    5978:	e7a40010 	swc1	$f4,16(sp)
    597c:	920f0251 	lbu	t7,593(s0)
    5980:	02202025 	move	a0,s1
    5984:	02002825 	move	a1,s0
    5988:	0c000000 	jal	0 <func_80AC2CA0>
    598c:	afaf0014 	sw	t7,20(sp)
    5990:	02202025 	move	a0,s1
    5994:	0c000000 	jal	0 <func_80AC2CA0>
    5998:	02002825 	move	a1,s0
    599c:	3c060000 	lui	a2,0x0
    59a0:	24c60000 	addiu	a2,a2,0
    59a4:	27a4003c 	addiu	a0,sp,60
    59a8:	8e250000 	lw	a1,0(s1)
    59ac:	0c000000 	jal	0 <func_80AC2CA0>
    59b0:	240711d4 	li	a3,4564
    59b4:	8fbf002c 	lw	ra,44(sp)
    59b8:	8fb00024 	lw	s0,36(sp)
    59bc:	8fb10028 	lw	s1,40(sp)
    59c0:	03e00008 	jr	ra
    59c4:	27bd0058 	addiu	sp,sp,88

000059c8 <func_80AC8668>:
    59c8:	27bdffa8 	addiu	sp,sp,-88
    59cc:	afb10028 	sw	s1,40(sp)
    59d0:	00a08825 	move	s1,a1
    59d4:	afbf002c 	sw	ra,44(sp)
    59d8:	afb00024 	sw	s0,36(sp)
    59dc:	8ca50000 	lw	a1,0(a1)
    59e0:	00808025 	move	s0,a0
    59e4:	3c060000 	lui	a2,0x0
    59e8:	24c60000 	addiu	a2,a2,0
    59ec:	27a4003c 	addiu	a0,sp,60
    59f0:	240711e2 	li	a3,4578
    59f4:	0c000000 	jal	0 <func_80AC2CA0>
    59f8:	afa5004c 	sw	a1,76(sp)
    59fc:	0c000000 	jal	0 <func_80AC2CA0>
    5a00:	8e240000 	lw	a0,0(s1)
    5a04:	8fa5004c 	lw	a1,76(sp)
    5a08:	3c0fdb06 	lui	t7,0xdb06
    5a0c:	35ef0020 	ori	t7,t7,0x20
    5a10:	8ca302c0 	lw	v1,704(a1)
    5a14:	3c040000 	lui	a0,0x0
    5a18:	3c0c0000 	lui	t4,0x0
    5a1c:	246e0008 	addiu	t6,v1,8
    5a20:	acae02c0 	sw	t6,704(a1)
    5a24:	ac6f0000 	sw	t7,0(v1)
    5a28:	921801ec 	lbu	t8,492(s0)
    5a2c:	3c0100ff 	lui	at,0xff
    5a30:	3421ffff 	ori	at,at,0xffff
    5a34:	0018c880 	sll	t9,t8,0x2
    5a38:	00992021 	addu	a0,a0,t9
    5a3c:	8c840000 	lw	a0,0(a0)
    5a40:	00044900 	sll	t1,a0,0x4
    5a44:	00095702 	srl	t2,t1,0x1c
    5a48:	000a5880 	sll	t3,t2,0x2
    5a4c:	018b6021 	addu	t4,t4,t3
    5a50:	8d8c0000 	lw	t4,0(t4)
    5a54:	00814024 	and	t0,a0,at
    5a58:	3c018000 	lui	at,0x8000
    5a5c:	010c6821 	addu	t5,t0,t4
    5a60:	01a17021 	addu	t6,t5,at
    5a64:	ac6e0004 	sw	t6,4(v1)
    5a68:	9207014e 	lbu	a3,334(s0)
    5a6c:	8e06016c 	lw	a2,364(s0)
    5a70:	8e050150 	lw	a1,336(s0)
    5a74:	afb00018 	sw	s0,24(sp)
    5a78:	afa00014 	sw	zero,20(sp)
    5a7c:	afa00010 	sw	zero,16(sp)
    5a80:	0c000000 	jal	0 <func_80AC2CA0>
    5a84:	02202025 	move	a0,s1
    5a88:	c6040238 	lwc1	$f4,568(s0)
    5a8c:	8e060230 	lw	a2,560(s0)
    5a90:	8e070234 	lw	a3,564(s0)
    5a94:	e7a40010 	swc1	$f4,16(sp)
    5a98:	920f0251 	lbu	t7,593(s0)
    5a9c:	02202025 	move	a0,s1
    5aa0:	02002825 	move	a1,s0
    5aa4:	0c000000 	jal	0 <func_80AC2CA0>
    5aa8:	afaf0014 	sw	t7,20(sp)
    5aac:	02202025 	move	a0,s1
    5ab0:	0c000000 	jal	0 <func_80AC2CA0>
    5ab4:	02002825 	move	a1,s0
    5ab8:	3c060000 	lui	a2,0x0
    5abc:	24c60000 	addiu	a2,a2,0
    5ac0:	27a4003c 	addiu	a0,sp,60
    5ac4:	8e250000 	lw	a1,0(s1)
    5ac8:	0c000000 	jal	0 <func_80AC2CA0>
    5acc:	240711f6 	li	a3,4598
    5ad0:	8fbf002c 	lw	ra,44(sp)
    5ad4:	8fb00024 	lw	s0,36(sp)
    5ad8:	8fb10028 	lw	s1,40(sp)
    5adc:	03e00008 	jr	ra
    5ae0:	27bd0058 	addiu	sp,sp,88

00005ae4 <func_80AC8784>:
    5ae4:	27bdffa8 	addiu	sp,sp,-88
    5ae8:	afb10028 	sw	s1,40(sp)
    5aec:	00a08825 	move	s1,a1
    5af0:	afbf002c 	sw	ra,44(sp)
    5af4:	afb00024 	sw	s0,36(sp)
    5af8:	8ca50000 	lw	a1,0(a1)
    5afc:	00808025 	move	s0,a0
    5b00:	3c060000 	lui	a2,0x0
    5b04:	24c60000 	addiu	a2,a2,0
    5b08:	27a4003c 	addiu	a0,sp,60
    5b0c:	24071203 	li	a3,4611
    5b10:	0c000000 	jal	0 <func_80AC2CA0>
    5b14:	afa5004c 	sw	a1,76(sp)
    5b18:	0c000000 	jal	0 <func_80AC2CA0>
    5b1c:	8e240000 	lw	a0,0(s1)
    5b20:	8fa5004c 	lw	a1,76(sp)
    5b24:	3c0fdb06 	lui	t7,0xdb06
    5b28:	35ef0020 	ori	t7,t7,0x20
    5b2c:	8ca302c0 	lw	v1,704(a1)
    5b30:	3c040000 	lui	a0,0x0
    5b34:	3c0c0000 	lui	t4,0x0
    5b38:	246e0008 	addiu	t6,v1,8
    5b3c:	acae02c0 	sw	t6,704(a1)
    5b40:	ac6f0000 	sw	t7,0(v1)
    5b44:	861801f2 	lh	t8,498(s0)
    5b48:	3c0100ff 	lui	at,0xff
    5b4c:	3421ffff 	ori	at,at,0xffff
    5b50:	0018c880 	sll	t9,t8,0x2
    5b54:	00992021 	addu	a0,a0,t9
    5b58:	8c840000 	lw	a0,0(a0)
    5b5c:	00044900 	sll	t1,a0,0x4
    5b60:	00095702 	srl	t2,t1,0x1c
    5b64:	000a5880 	sll	t3,t2,0x2
    5b68:	018b6021 	addu	t4,t4,t3
    5b6c:	8d8c0000 	lw	t4,0(t4)
    5b70:	00814024 	and	t0,a0,at
    5b74:	3c018000 	lui	at,0x8000
    5b78:	010c6821 	addu	t5,t0,t4
    5b7c:	01a17021 	addu	t6,t5,at
    5b80:	ac6e0004 	sw	t6,4(v1)
    5b84:	9207014e 	lbu	a3,334(s0)
    5b88:	8e06016c 	lw	a2,364(s0)
    5b8c:	8e050150 	lw	a1,336(s0)
    5b90:	afb00018 	sw	s0,24(sp)
    5b94:	afa00014 	sw	zero,20(sp)
    5b98:	afa00010 	sw	zero,16(sp)
    5b9c:	0c000000 	jal	0 <func_80AC2CA0>
    5ba0:	02202025 	move	a0,s1
    5ba4:	c6040238 	lwc1	$f4,568(s0)
    5ba8:	8e060230 	lw	a2,560(s0)
    5bac:	8e070234 	lw	a3,564(s0)
    5bb0:	e7a40010 	swc1	$f4,16(sp)
    5bb4:	920f0251 	lbu	t7,593(s0)
    5bb8:	02202025 	move	a0,s1
    5bbc:	02002825 	move	a1,s0
    5bc0:	0c000000 	jal	0 <func_80AC2CA0>
    5bc4:	afaf0014 	sw	t7,20(sp)
    5bc8:	02202025 	move	a0,s1
    5bcc:	0c000000 	jal	0 <func_80AC2CA0>
    5bd0:	02002825 	move	a1,s0
    5bd4:	3c060000 	lui	a2,0x0
    5bd8:	24c60000 	addiu	a2,a2,0
    5bdc:	27a4003c 	addiu	a0,sp,60
    5be0:	8e250000 	lw	a1,0(s1)
    5be4:	0c000000 	jal	0 <func_80AC2CA0>
    5be8:	24071217 	li	a3,4631
    5bec:	8fbf002c 	lw	ra,44(sp)
    5bf0:	8fb00024 	lw	s0,36(sp)
    5bf4:	8fb10028 	lw	s1,40(sp)
    5bf8:	03e00008 	jr	ra
    5bfc:	27bd0058 	addiu	sp,sp,88
