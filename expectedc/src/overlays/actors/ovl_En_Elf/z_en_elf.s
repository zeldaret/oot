
build/src/overlays/actors/ovl_En_Elf/z_en_elf.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A01C30>:
       0:	03e00008 	jr	ra
       4:	ac8502cc 	sw	a1,716(a0)

00000008 <func_80A01C38>:
       8:	30aeffff 	andi	t6,a1,0xffff
       c:	2dc1000d 	sltiu	at,t6,13
      10:	102000d1 	beqz	at,358 <L80A01F48+0x40>
      14:	a48502a8 	sh	a1,680(a0)
      18:	000e7080 	sll	t6,t6,0x2
      1c:	3c010000 	lui	at,0x0
      20:	002e0821 	addu	at,at,t6
      24:	8c2e0000 	lw	t6,0(at)
      28:	01c00008 	jr	t6
      2c:	00000000 	nop

00000030 <L80A01C60>:
      30:	3c013f80 	lui	at,0x3f80
      34:	44810000 	mtc1	at,$f0
      38:	3c0140a0 	lui	at,0x40a0
      3c:	44812000 	mtc1	at,$f4
      40:	3c0141a0 	lui	at,0x41a0
      44:	44813000 	mtc1	at,$f6
      48:	3c190000 	lui	t9,0x0
      4c:	240f0400 	li	t7,1024
      50:	24180200 	li	t8,512
      54:	27390000 	addiu	t9,t9,0
      58:	24080064 	li	t0,100
      5c:	a48f02ae 	sh	t7,686(a0)
      60:	a49802b0 	sh	t8,688(a0)
      64:	ac9902c8 	sw	t9,712(a0)
      68:	a48802c0 	sh	t0,704(a0)
      6c:	e4800168 	swc1	$f0,360(a0)
      70:	e48402b4 	swc1	$f4,692(a0)
      74:	03e00008 	jr	ra
      78:	e48602b8 	swc1	$f6,696(a0)

0000007c <L80A01CAC>:
      7c:	3c013f80 	lui	at,0x3f80
      80:	44810000 	mtc1	at,$f0
      84:	3c0140a0 	lui	at,0x40a0
      88:	44814000 	mtc1	at,$f8
      8c:	3c0b0000 	lui	t3,0x0
      90:	24090400 	li	t1,1024
      94:	240a0200 	li	t2,512
      98:	256b0000 	addiu	t3,t3,0
      9c:	240c0064 	li	t4,100
      a0:	a48902ae 	sh	t1,686(a0)
      a4:	a48a02b0 	sh	t2,688(a0)
      a8:	ac8b02c8 	sw	t3,712(a0)
      ac:	a48c02c0 	sh	t4,704(a0)
      b0:	e48002b4 	swc1	$f0,692(a0)
      b4:	e4800168 	swc1	$f0,360(a0)
      b8:	03e00008 	jr	ra
      bc:	e48802b8 	swc1	$f8,696(a0)

000000c0 <L80A01CF0>:
      c0:	3c013f80 	lui	at,0x3f80
      c4:	44810000 	mtc1	at,$f0
      c8:	3c0140a0 	lui	at,0x40a0
      cc:	44801000 	mtc1	zero,$f2
      d0:	44815000 	mtc1	at,$f10
      d4:	3c0e0000 	lui	t6,0x0
      d8:	240d0400 	li	t5,1024
      dc:	25ce0000 	addiu	t6,t6,0
      e0:	a48d02ae 	sh	t5,686(a0)
      e4:	a48002b0 	sh	zero,688(a0)
      e8:	ac8e02c8 	sw	t6,712(a0)
      ec:	e4800168 	swc1	$f0,360(a0)
      f0:	e48202b8 	swc1	$f2,696(a0)
      f4:	03e00008 	jr	ra
      f8:	e48a02b4 	swc1	$f10,692(a0)

000000fc <L80A01D2C>:
      fc:	3c013f80 	lui	at,0x3f80
     100:	44810000 	mtc1	at,$f0
     104:	3c014120 	lui	at,0x4120
     108:	44811000 	mtc1	at,$f2
     10c:	3c014040 	lui	at,0x4040
     110:	44818000 	mtc1	at,$f16
     114:	3c190000 	lui	t9,0x0
     118:	240f1000 	li	t7,4096
     11c:	24180200 	li	t8,512
     120:	27390000 	addiu	t9,t9,0
     124:	a48f02ae 	sh	t7,686(a0)
     128:	a49802b0 	sh	t8,688(a0)
     12c:	ac9902c8 	sw	t9,712(a0)
     130:	e4800168 	swc1	$f0,360(a0)
     134:	e48202b8 	swc1	$f2,696(a0)
     138:	03e00008 	jr	ra
     13c:	e49002b4 	swc1	$f16,692(a0)

00000140 <L80A01D70>:
     140:	44801000 	mtc1	zero,$f2
     144:	3c013f80 	lui	at,0x3f80
     148:	44810000 	mtc1	at,$f0
     14c:	3c080000 	lui	t0,0x0
     150:	25080000 	addiu	t0,t0,0
     154:	2409001e 	li	t1,30
     158:	240a0001 	li	t2,1
     15c:	ac8802c8 	sw	t0,712(a0)
     160:	a48902ae 	sh	t1,686(a0)
     164:	a48a02c0 	sh	t2,704(a0)
     168:	e48202b4 	swc1	$f2,692(a0)
     16c:	e48202b8 	swc1	$f2,696(a0)
     170:	03e00008 	jr	ra
     174:	e4800168 	swc1	$f0,360(a0)

00000178 <L80A01DA8>:
     178:	44801000 	mtc1	zero,$f2
     17c:	3c013f80 	lui	at,0x3f80
     180:	44810000 	mtc1	at,$f0
     184:	3c0d0000 	lui	t5,0x0
     188:	240b1000 	li	t3,4096
     18c:	240c0200 	li	t4,512
     190:	25ad0000 	addiu	t5,t5,0
     194:	a48b02ae 	sh	t3,686(a0)
     198:	a48c02b0 	sh	t4,688(a0)
     19c:	ac8d02c8 	sw	t5,712(a0)
     1a0:	e48202b4 	swc1	$f2,692(a0)
     1a4:	e48202b8 	swc1	$f2,696(a0)
     1a8:	03e00008 	jr	ra
     1ac:	e4800168 	swc1	$f0,360(a0)

000001b0 <L80A01DE0>:
     1b0:	3c0140a0 	lui	at,0x40a0
     1b4:	44819000 	mtc1	at,$f18
     1b8:	3c0140f0 	lui	at,0x40f0
     1bc:	44812000 	mtc1	at,$f4
     1c0:	3c014000 	lui	at,0x4000
     1c4:	44813000 	mtc1	at,$f6
     1c8:	3c180000 	lui	t8,0x0
     1cc:	240e1000 	li	t6,4096
     1d0:	240f0800 	li	t7,2048
     1d4:	27180000 	addiu	t8,t8,0
     1d8:	a48e02ae 	sh	t6,686(a0)
     1dc:	a48f02b0 	sh	t7,688(a0)
     1e0:	ac9802c8 	sw	t8,712(a0)
     1e4:	e49202b4 	swc1	$f18,692(a0)
     1e8:	e48402b8 	swc1	$f4,696(a0)
     1ec:	03e00008 	jr	ra
     1f0:	e4860168 	swc1	$f6,360(a0)

000001f4 <L80A01E24>:
     1f4:	3c013f80 	lui	at,0x3f80
     1f8:	44810000 	mtc1	at,$f0
     1fc:	3c014120 	lui	at,0x4120
     200:	44811000 	mtc1	at,$f2
     204:	3c0141a0 	lui	at,0x41a0
     208:	44814000 	mtc1	at,$f8
     20c:	3c090000 	lui	t1,0x0
     210:	24190400 	li	t9,1024
     214:	24081000 	li	t0,4096
     218:	25290000 	addiu	t1,t1,0
     21c:	a49902ae 	sh	t9,686(a0)
     220:	a48802b0 	sh	t0,688(a0)
     224:	ac8902c8 	sw	t1,712(a0)
     228:	e4800168 	swc1	$f0,360(a0)
     22c:	e48202b4 	swc1	$f2,692(a0)
     230:	03e00008 	jr	ra
     234:	e48802b8 	swc1	$f8,696(a0)

00000238 <L80A01E68>:
     238:	3c013f80 	lui	at,0x3f80
     23c:	44810000 	mtc1	at,$f0
     240:	3c0b0000 	lui	t3,0x0
     244:	240a0600 	li	t2,1536
     248:	256b0000 	addiu	t3,t3,0
     24c:	a48a02b0 	sh	t2,688(a0)
     250:	ac8b02c8 	sw	t3,712(a0)
     254:	e48002b8 	swc1	$f0,696(a0)
     258:	e48002b4 	swc1	$f0,692(a0)
     25c:	03e00008 	jr	ra
     260:	e4800168 	swc1	$f0,360(a0)

00000264 <L80A01E94>:
     264:	3c0141a0 	lui	at,0x41a0
     268:	44815000 	mtc1	at,$f10
     26c:	3c014120 	lui	at,0x4120
     270:	44818000 	mtc1	at,$f16
     274:	3c014000 	lui	at,0x4000
     278:	44819000 	mtc1	at,$f18
     27c:	3c0d0000 	lui	t5,0x0
     280:	240c0800 	li	t4,2048
     284:	25ad0000 	addiu	t5,t5,0
     288:	a48c02b0 	sh	t4,688(a0)
     28c:	ac8d02c8 	sw	t5,712(a0)
     290:	e48a02b4 	swc1	$f10,692(a0)
     294:	e49002b8 	swc1	$f16,696(a0)
     298:	03e00008 	jr	ra
     29c:	e4920168 	swc1	$f18,360(a0)

000002a0 <L80A01ED0>:
     2a0:	3c014120 	lui	at,0x4120
     2a4:	44811000 	mtc1	at,$f2
     2a8:	3c013f00 	lui	at,0x3f00
     2ac:	44812000 	mtc1	at,$f4
     2b0:	3c0f0000 	lui	t7,0x0
     2b4:	240e0200 	li	t6,512
     2b8:	25ef0000 	addiu	t7,t7,0
     2bc:	a48e02b0 	sh	t6,688(a0)
     2c0:	ac8f02c8 	sw	t7,712(a0)
     2c4:	e48202b4 	swc1	$f2,692(a0)
     2c8:	e48202b8 	swc1	$f2,696(a0)
     2cc:	03e00008 	jr	ra
     2d0:	e4840168 	swc1	$f4,360(a0)

000002d4 <L80A01F04>:
     2d4:	3c014270 	lui	at,0x4270
     2d8:	44813000 	mtc1	at,$f6
     2dc:	3c0141a0 	lui	at,0x41a0
     2e0:	44814000 	mtc1	at,$f8
     2e4:	3c014000 	lui	at,0x4000
     2e8:	44815000 	mtc1	at,$f10
     2ec:	3c080000 	lui	t0,0x0
     2f0:	24181000 	li	t8,4096
     2f4:	24190800 	li	t9,2048
     2f8:	25080000 	addiu	t0,t0,0
     2fc:	a49802ae 	sh	t8,686(a0)
     300:	a49902b0 	sh	t9,688(a0)
     304:	ac8802c8 	sw	t0,712(a0)
     308:	e48602b4 	swc1	$f6,692(a0)
     30c:	e48802b8 	swc1	$f8,696(a0)
     310:	03e00008 	jr	ra
     314:	e48a0168 	swc1	$f10,360(a0)

00000318 <L80A01F48>:
     318:	3c013f80 	lui	at,0x3f80
     31c:	44810000 	mtc1	at,$f0
     320:	3c0140a0 	lui	at,0x40a0
     324:	44818000 	mtc1	at,$f16
     328:	3c0b0000 	lui	t3,0x0
     32c:	24090400 	li	t1,1024
     330:	240a2000 	li	t2,8192
     334:	256b0000 	addiu	t3,t3,0
     338:	240c002a 	li	t4,42
     33c:	a48902ae 	sh	t1,686(a0)
     340:	a48a02b0 	sh	t2,688(a0)
     344:	ac8b02c8 	sw	t3,712(a0)
     348:	a48c02c0 	sh	t4,704(a0)
     34c:	e48002b8 	swc1	$f0,696(a0)
     350:	e4800168 	swc1	$f0,360(a0)
     354:	e49002b4 	swc1	$f16,692(a0)
     358:	03e00008 	jr	ra
     35c:	00000000 	nop

00000360 <func_80A01F90>:
     360:	c4a40000 	lwc1	$f4,0(a1)
     364:	c4860000 	lwc1	$f6,0(a0)
     368:	c4a80008 	lwc1	$f8,8(a1)
     36c:	c48a0008 	lwc1	$f10,8(a0)
     370:	46062001 	sub.s	$f0,$f4,$f6
     374:	44866000 	mtc1	a2,$f12
     378:	00001025 	move	v0,zero
     37c:	460a4081 	sub.s	$f2,$f8,$f10
     380:	46000402 	mul.s	$f16,$f0,$f0
     384:	00000000 	nop
     388:	46021482 	mul.s	$f18,$f2,$f2
     38c:	46128100 	add.s	$f4,$f16,$f18
     390:	460c6182 	mul.s	$f6,$f12,$f12
     394:	4604303c 	c.lt.s	$f6,$f4
     398:	00000000 	nop
     39c:	45000002 	bc1f	3a8 <func_80A01F90+0x48>
     3a0:	00000000 	nop
     3a4:	24020001 	li	v0,1
     3a8:	03e00008 	jr	ra
     3ac:	00000000 	nop

000003b0 <func_80A01FE0>:
     3b0:	27bdffe0 	addiu	sp,sp,-32
     3b4:	afbf001c 	sw	ra,28(sp)
     3b8:	afb00018 	sw	s0,24(sp)
     3bc:	8ca21c44 	lw	v0,7236(a1)
     3c0:	00808025 	move	s0,a0
     3c4:	24840024 	addiu	a0,a0,36
     3c8:	3c0641f0 	lui	a2,0x41f0
     3cc:	0c000000 	jal	0 <func_80A01C30>
     3d0:	24450024 	addiu	a1,v0,36
     3d4:	14400005 	bnez	v0,3ec <func_80A01FE0+0x3c>
     3d8:	3c014000 	lui	at,0x4000
     3dc:	3c013f00 	lui	at,0x3f00
     3e0:	44812000 	mtc1	at,$f4
     3e4:	10000004 	b	3f8 <func_80A01FE0+0x48>
     3e8:	e60402b8 	swc1	$f4,696(s0)
     3ec:	44813000 	mtc1	at,$f6
     3f0:	00000000 	nop
     3f4:	e60602b8 	swc1	$f6,696(s0)
     3f8:	860202c0 	lh	v0,704(s0)
     3fc:	240f0001 	li	t7,1
     400:	24180080 	li	t8,128
     404:	18400004 	blez	v0,418 <func_80A01FE0+0x68>
     408:	3c013f80 	lui	at,0x3f80
     40c:	244effff 	addiu	t6,v0,-1
     410:	10000013 	b	460 <func_80A01FE0+0xb0>
     414:	a60e02c0 	sh	t6,704(s0)
     418:	44816000 	mtc1	at,$f12
     41c:	a60f02a8 	sh	t7,680(s0)
     420:	0c000000 	jal	0 <func_80A01C30>
     424:	a61802ac 	sh	t8,684(s0)
     428:	3c013f00 	lui	at,0x3f00
     42c:	44814000 	mtc1	at,$f8
     430:	3c010000 	lui	at,0x0
     434:	46080280 	add.s	$f10,$f0,$f8
     438:	e60a02b8 	swc1	$f10,696(s0)
     43c:	0c000000 	jal	0 <func_80A01C30>
     440:	c42c0000 	lwc1	$f12,0(at)
     444:	4600040d 	trunc.w.s	$f16,$f0
     448:	3c090000 	lui	t1,0x0
     44c:	25290000 	addiu	t1,t1,0
     450:	ae0902c8 	sw	t1,712(s0)
     454:	44088000 	mfc1	t0,$f16
     458:	00000000 	nop
     45c:	a60802b0 	sh	t0,688(s0)
     460:	8fbf001c 	lw	ra,28(sp)
     464:	8fb00018 	lw	s0,24(sp)
     468:	27bd0020 	addiu	sp,sp,32
     46c:	03e00008 	jr	ra
     470:	00000000 	nop

00000474 <func_80A020A4>:
     474:	27bdffe0 	addiu	sp,sp,-32
     478:	afbf001c 	sw	ra,28(sp)
     47c:	afb00018 	sw	s0,24(sp)
     480:	8ca21c44 	lw	v0,7236(a1)
     484:	00808025 	move	s0,a0
     488:	24840024 	addiu	a0,a0,36
     48c:	3c064248 	lui	a2,0x4248
     490:	0c000000 	jal	0 <func_80A01C30>
     494:	24450024 	addiu	a1,v0,36
     498:	5040001c 	beqzl	v0,50c <func_80A020A4+0x98>
     49c:	8fbf001c 	lw	ra,28(sp)
     4a0:	860202c0 	lh	v0,704(s0)
     4a4:	240f0001 	li	t7,1
     4a8:	24180080 	li	t8,128
     4ac:	18400004 	blez	v0,4c0 <func_80A020A4+0x4c>
     4b0:	3c013f80 	lui	at,0x3f80
     4b4:	244effff 	addiu	t6,v0,-1
     4b8:	10000013 	b	508 <func_80A020A4+0x94>
     4bc:	a60e02c0 	sh	t6,704(s0)
     4c0:	44816000 	mtc1	at,$f12
     4c4:	a60f02a8 	sh	t7,680(s0)
     4c8:	0c000000 	jal	0 <func_80A01C30>
     4cc:	a61802ac 	sh	t8,684(s0)
     4d0:	3c013f00 	lui	at,0x3f00
     4d4:	44812000 	mtc1	at,$f4
     4d8:	3c010000 	lui	at,0x0
     4dc:	46040180 	add.s	$f6,$f0,$f4
     4e0:	e60602b8 	swc1	$f6,696(s0)
     4e4:	0c000000 	jal	0 <func_80A01C30>
     4e8:	c42c0000 	lwc1	$f12,0(at)
     4ec:	4600020d 	trunc.w.s	$f8,$f0
     4f0:	3c090000 	lui	t1,0x0
     4f4:	25290000 	addiu	t1,t1,0
     4f8:	ae0902c8 	sw	t1,712(s0)
     4fc:	44084000 	mfc1	t0,$f8
     500:	00000000 	nop
     504:	a60802b0 	sh	t0,688(s0)
     508:	8fbf001c 	lw	ra,28(sp)
     50c:	8fb00018 	lw	s0,24(sp)
     510:	27bd0020 	addiu	sp,sp,32
     514:	03e00008 	jr	ra
     518:	00000000 	nop

0000051c <func_80A0214C>:
     51c:	27bdffd8 	addiu	sp,sp,-40
     520:	afbf001c 	sw	ra,28(sp)
     524:	afb00018 	sw	s0,24(sp)
     528:	afa5002c 	sw	a1,44(sp)
     52c:	848202c0 	lh	v0,704(a0)
     530:	00808025 	move	s0,a0
     534:	3c014248 	lui	at,0x4248
     538:	18400003 	blez	v0,548 <func_80A0214C+0x2c>
     53c:	244effff 	addiu	t6,v0,-1
     540:	10000050 	b	684 <func_80A0214C+0x168>
     544:	a48e02c0 	sh	t6,704(a0)
     548:	44810000 	mtc1	at,$f0
     54c:	c6020090 	lwc1	$f2,144(s0)
     550:	3c014316 	lui	at,0x4316
     554:	4600103c 	c.lt.s	$f2,$f0
     558:	00000000 	nop
     55c:	45020021 	bc1fl	5e4 <func_80A0214C+0xc8>
     560:	44816000 	mtc1	at,$f12
     564:	0c000000 	jal	0 <func_80A01C30>
     568:	00000000 	nop
     56c:	3c010000 	lui	at,0x0
     570:	c4240000 	lwc1	$f4,0(at)
     574:	3c190000 	lui	t9,0x0
     578:	240f0002 	li	t7,2
     57c:	4604003c 	c.lt.s	$f0,$f4
     580:	24180400 	li	t8,1024
     584:	3c014000 	lui	at,0x4000
     588:	27390000 	addiu	t9,t9,0
     58c:	45000012 	bc1f	5d8 <func_80A0214C+0xbc>
     590:	240d000a 	li	t5,10
     594:	44813000 	mtc1	at,$f6
     598:	3c013fc0 	lui	at,0x3fc0
     59c:	44814000 	mtc1	at,$f8
     5a0:	3c014100 	lui	at,0x4100
     5a4:	44816000 	mtc1	at,$f12
     5a8:	a60f02a8 	sh	t7,680(s0)
     5ac:	a61802ac 	sh	t8,684(s0)
     5b0:	ae1902c8 	sw	t9,712(s0)
     5b4:	e60602b8 	swc1	$f6,696(s0)
     5b8:	0c000000 	jal	0 <func_80A01C30>
     5bc:	e6080068 	swc1	$f8,104(s0)
     5c0:	4600028d 	trunc.w.s	$f10,$f0
     5c4:	440b5000 	mfc1	t3,$f10
     5c8:	00000000 	nop
     5cc:	256c0004 	addiu	t4,t3,4
     5d0:	1000002c 	b	684 <func_80A0214C+0x168>
     5d4:	a60c02c0 	sh	t4,704(s0)
     5d8:	1000002a 	b	684 <func_80A0214C+0x168>
     5dc:	a60d02c0 	sh	t5,704(s0)
     5e0:	44816000 	mtc1	at,$f12
     5e4:	3c010000 	lui	at,0x0
     5e8:	4602603c 	c.lt.s	$f12,$f2
     5ec:	00000000 	nop
     5f0:	45020003 	bc1fl	600 <func_80A0214C+0xe4>
     5f4:	46001401 	sub.s	$f16,$f2,$f0
     5f8:	46006086 	mov.s	$f2,$f12
     5fc:	46001401 	sub.s	$f16,$f2,$f0
     600:	c4320000 	lwc1	$f18,0(at)
     604:	3c010000 	lui	at,0x0
     608:	c4260000 	lwc1	$f6,0(at)
     60c:	46128102 	mul.s	$f4,$f16,$f18
     610:	46062080 	add.s	$f2,$f4,$f6
     614:	0c000000 	jal	0 <func_80A01C30>
     618:	e7a20024 	swc1	$f2,36(sp)
     61c:	c7a20024 	lwc1	$f2,36(sp)
     620:	3c180000 	lui	t8,0x0
     624:	240e0003 	li	t6,3
     628:	4602003c 	c.lt.s	$f0,$f2
     62c:	240f0200 	li	t7,512
     630:	3c013f80 	lui	at,0x3f80
     634:	27180000 	addiu	t8,t8,0
     638:	45000011 	bc1f	680 <func_80A0214C+0x164>
     63c:	240c000a 	li	t4,10
     640:	46021200 	add.s	$f8,$f2,$f2
     644:	44815000 	mtc1	at,$f10
     648:	3c014180 	lui	at,0x4180
     64c:	44816000 	mtc1	at,$f12
     650:	460a4400 	add.s	$f16,$f8,$f10
     654:	a60e02a8 	sh	t6,680(s0)
     658:	a60f02ac 	sh	t7,684(s0)
     65c:	ae1802c8 	sw	t8,712(s0)
     660:	0c000000 	jal	0 <func_80A01C30>
     664:	e61002b8 	swc1	$f16,696(s0)
     668:	4600048d 	trunc.w.s	$f18,$f0
     66c:	440a9000 	mfc1	t2,$f18
     670:	00000000 	nop
     674:	254b0010 	addiu	t3,t2,16
     678:	10000002 	b	684 <func_80A0214C+0x168>
     67c:	a60b02c0 	sh	t3,704(s0)
     680:	a60c02c0 	sh	t4,704(s0)
     684:	0c000000 	jal	0 <func_80A01C30>
     688:	00000000 	nop
     68c:	3c010000 	lui	at,0x0
     690:	c4240000 	lwc1	$f4,0(at)
     694:	240d0001 	li	t5,1
     698:	240e0080 	li	t6,128
     69c:	4604003c 	c.lt.s	$f0,$f4
     6a0:	3c013f00 	lui	at,0x3f00
     6a4:	45020011 	bc1fl	6ec <func_80A0214C+0x1d0>
     6a8:	8fbf001c 	lw	ra,28(sp)
     6ac:	44816000 	mtc1	at,$f12
     6b0:	a60d02a8 	sh	t5,680(s0)
     6b4:	0c000000 	jal	0 <func_80A01C30>
     6b8:	a60e02ac 	sh	t6,684(s0)
     6bc:	3c013f00 	lui	at,0x3f00
     6c0:	44813000 	mtc1	at,$f6
     6c4:	3c010000 	lui	at,0x0
     6c8:	46060200 	add.s	$f8,$f0,$f6
     6cc:	e60802b8 	swc1	$f8,696(s0)
     6d0:	0c000000 	jal	0 <func_80A01C30>
     6d4:	c42c0000 	lwc1	$f12,0(at)
     6d8:	4600028d 	trunc.w.s	$f10,$f0
     6dc:	44185000 	mfc1	t8,$f10
     6e0:	00000000 	nop
     6e4:	a61802b0 	sh	t8,688(s0)
     6e8:	8fbf001c 	lw	ra,28(sp)
     6ec:	8fb00018 	lw	s0,24(sp)
     6f0:	27bd0028 	addiu	sp,sp,40
     6f4:	03e00008 	jr	ra
     6f8:	00000000 	nop

000006fc <func_80A0232C>:
     6fc:	27bdffe8 	addiu	sp,sp,-24
     700:	00803825 	move	a3,a0
     704:	afbf0014 	sw	ra,20(sp)
     708:	afa5001c 	sw	a1,28(sp)
     70c:	24e50024 	addiu	a1,a3,36
     710:	afa70018 	sw	a3,24(sp)
     714:	2484028c 	addiu	a0,a0,652
     718:	0c000000 	jal	0 <func_80A01C30>
     71c:	3c0642c8 	lui	a2,0x42c8
     720:	1040000b 	beqz	v0,750 <func_80A0232C+0x54>
     724:	8fa70018 	lw	a3,24(sp)
     728:	3c013fc0 	lui	at,0x3fc0
     72c:	44812000 	mtc1	at,$f4
     730:	3c0f0000 	lui	t7,0x0
     734:	240e0200 	li	t6,512
     738:	25ef0000 	addiu	t7,t7,0
     73c:	a4e002a8 	sh	zero,680(a3)
     740:	a4ee02ac 	sh	t6,684(a3)
     744:	acef02c8 	sw	t7,712(a3)
     748:	10000006 	b	764 <func_80A0232C+0x68>
     74c:	e4e402b8 	swc1	$f4,696(a3)
     750:	8cf902c8 	lw	t9,712(a3)
     754:	00e02025 	move	a0,a3
     758:	8fa5001c 	lw	a1,28(sp)
     75c:	0320f809 	jalr	t9
     760:	00000000 	nop
     764:	8fbf0014 	lw	ra,20(sp)
     768:	27bd0018 	addiu	sp,sp,24
     76c:	03e00008 	jr	ra
     770:	00000000 	nop

00000774 <func_80A023A4>:
     774:	27bdffe8 	addiu	sp,sp,-24
     778:	24010001 	li	at,1
     77c:	10810007 	beq	a0,at,79c <func_80A023A4+0x28>
     780:	afbf0014 	sw	ra,20(sp)
     784:	24010002 	li	at,2
     788:	5081000d 	beql	a0,at,7c0 <func_80A023A4+0x4c>
     78c:	3c01437f 	lui	at,0x437f
     790:	44800000 	mtc1	zero,$f0
     794:	1000000f 	b	7d4 <func_80A023A4+0x60>
     798:	00000000 	nop
     79c:	3c01425c 	lui	at,0x425c
     7a0:	44816000 	mtc1	at,$f12
     7a4:	0c000000 	jal	0 <func_80A01C30>
     7a8:	00000000 	nop
     7ac:	3c014348 	lui	at,0x4348
     7b0:	44812000 	mtc1	at,$f4
     7b4:	10000007 	b	7d4 <func_80A023A4+0x60>
     7b8:	46040000 	add.s	$f0,$f0,$f4
     7bc:	3c01437f 	lui	at,0x437f
     7c0:	44816000 	mtc1	at,$f12
     7c4:	0c000000 	jal	0 <func_80A01C30>
     7c8:	00000000 	nop
     7cc:	10000002 	b	7d8 <func_80A023A4+0x64>
     7d0:	8fbf0014 	lw	ra,20(sp)
     7d4:	8fbf0014 	lw	ra,20(sp)
     7d8:	27bd0018 	addiu	sp,sp,24
     7dc:	03e00008 	jr	ra
     7e0:	00000000 	nop

000007e4 <EnElf_Init>:
     7e4:	27bdffa8 	addiu	sp,sp,-88
     7e8:	afbf0034 	sw	ra,52(sp)
     7ec:	afb10030 	sw	s1,48(sp)
     7f0:	afb0002c 	sw	s0,44(sp)
     7f4:	8cae1c44 	lw	t6,7236(a1)
     7f8:	00a08825 	move	s1,a1
     7fc:	3c050000 	lui	a1,0x0
     800:	00808025 	move	s0,a0
     804:	24a50000 	addiu	a1,a1,0
     808:	0c000000 	jal	0 <func_80A01C30>
     80c:	afae004c 	sw	t6,76(sp)
     810:	3c060401 	lui	a2,0x401
     814:	3c070401 	lui	a3,0x401
     818:	260f0190 	addiu	t7,s0,400
     81c:	261801ea 	addiu	t8,s0,490
     820:	2419000f 	li	t9,15
     824:	afb90018 	sw	t9,24(sp)
     828:	afb80014 	sw	t8,20(sp)
     82c:	afaf0010 	sw	t7,16(sp)
     830:	24e74ba4 	addiu	a3,a3,19364
     834:	24c66a48 	addiu	a2,a2,27208
     838:	02202025 	move	a0,s1
     83c:	0c000000 	jal	0 <func_80A01C30>
     840:	2605014c 	addiu	a1,s0,332
     844:	260400b4 	addiu	a0,s0,180
     848:	24050000 	li	a1,0
     84c:	00003025 	move	a2,zero
     850:	0c000000 	jal	0 <func_80A01C30>
     854:	3c074170 	lui	a3,0x4170
     858:	c6040024 	lwc1	$f4,36(s0)
     85c:	c6080028 	lwc1	$f8,40(s0)
     860:	c610002c 	lwc1	$f16,44(s0)
     864:	4600218d 	trunc.w.s	$f6,$f4
     868:	240800ff 	li	t0,255
     86c:	a20800c8 	sb	t0,200(s0)
     870:	4600428d 	trunc.w.s	$f10,$f8
     874:	44053000 	mfc1	a1,$f6
     878:	26040264 	addiu	a0,s0,612
     87c:	4600848d 	trunc.w.s	$f18,$f16
     880:	44065000 	mfc1	a2,$f10
     884:	240c00ff 	li	t4,255
     888:	240d00ff 	li	t5,255
     88c:	44079000 	mfc1	a3,$f18
     890:	240e00ff 	li	t6,255
     894:	00052c00 	sll	a1,a1,0x10
     898:	00063400 	sll	a2,a2,0x10
     89c:	00073c00 	sll	a3,a3,0x10
     8a0:	00073c03 	sra	a3,a3,0x10
     8a4:	00063403 	sra	a2,a2,0x10
     8a8:	00052c03 	sra	a1,a1,0x10
     8ac:	afae0018 	sw	t6,24(sp)
     8b0:	afad0014 	sw	t5,20(sp)
     8b4:	afac0010 	sw	t4,16(sp)
     8b8:	afa4003c 	sw	a0,60(sp)
     8bc:	0c000000 	jal	0 <func_80A01C30>
     8c0:	afa0001c 	sw	zero,28(sp)
     8c4:	262507a8 	addiu	a1,s1,1960
     8c8:	afa50040 	sw	a1,64(sp)
     8cc:	02202025 	move	a0,s1
     8d0:	0c000000 	jal	0 <func_80A01C30>
     8d4:	8fa6003c 	lw	a2,60(sp)
     8d8:	c6040024 	lwc1	$f4,36(s0)
     8dc:	c6080028 	lwc1	$f8,40(s0)
     8e0:	c610002c 	lwc1	$f16,44(s0)
     8e4:	4600218d 	trunc.w.s	$f6,$f4
     8e8:	ae020274 	sw	v0,628(s0)
     8ec:	26040278 	addiu	a0,s0,632
     8f0:	4600428d 	trunc.w.s	$f10,$f8
     8f4:	44053000 	mfc1	a1,$f6
     8f8:	240800ff 	li	t0,255
     8fc:	4600848d 	trunc.w.s	$f18,$f16
     900:	44065000 	mfc1	a2,$f10
     904:	240900ff 	li	t1,255
     908:	240a00ff 	li	t2,255
     90c:	44079000 	mfc1	a3,$f18
     910:	00052c00 	sll	a1,a1,0x10
     914:	00063400 	sll	a2,a2,0x10
     918:	00073c00 	sll	a3,a3,0x10
     91c:	00073c03 	sra	a3,a3,0x10
     920:	00063403 	sra	a2,a2,0x10
     924:	00052c03 	sra	a1,a1,0x10
     928:	afaa0018 	sw	t2,24(sp)
     92c:	afa90014 	sw	t1,20(sp)
     930:	afa80010 	sw	t0,16(sp)
     934:	afa4003c 	sw	a0,60(sp)
     938:	0c000000 	jal	0 <func_80A01C30>
     93c:	afa0001c 	sw	zero,28(sp)
     940:	02202025 	move	a0,s1
     944:	8fa50040 	lw	a1,64(sp)
     948:	0c000000 	jal	0 <func_80A01C30>
     94c:	8fa6003c 	lw	a2,60(sp)
     950:	44802000 	mtc1	zero,$f4
     954:	240b0258 	li	t3,600
     958:	ae020288 	sw	v0,648(s0)
     95c:	a60002c4 	sh	zero,708(s0)
     960:	a60b02c2 	sh	t3,706(s0)
     964:	e60402a4 	swc1	$f4,676(s0)
     968:	afa00048 	sw	zero,72(sp)
     96c:	960c001c 	lhu	t4,28(s0)
     970:	2d810008 	sltiu	at,t4,8
     974:	102000ba 	beqz	at,c60 <L80A02804+0x8c>
     978:	000c6080 	sll	t4,t4,0x2
     97c:	3c010000 	lui	at,0x0
     980:	002c0821 	addu	at,at,t4
     984:	8c2c0000 	lw	t4,0(at)
     988:	01800008 	jr	t4
     98c:	00000000 	nop

00000990 <L80A025C0>:
     990:	240dffff 	li	t5,-1
     994:	3c050000 	lui	a1,0x0
     998:	a20d0003 	sb	t5,3(s0)
     99c:	24a50000 	addiu	a1,a1,0
     9a0:	0c000000 	jal	0 <func_80A01C30>
     9a4:	02002025 	move	a0,s0
     9a8:	02002025 	move	a0,s0
     9ac:	0c000000 	jal	0 <func_80A01C30>
     9b0:	00002825 	move	a1,zero
     9b4:	960e02c4 	lhu	t6,708(s0)
     9b8:	3c180000 	lui	t8,0x0
     9bc:	3c030000 	lui	v1,0x0
     9c0:	27180000 	addiu	t8,t8,0
     9c4:	24190014 	li	t9,20
     9c8:	35cf0004 	ori	t7,t6,0x4
     9cc:	24630000 	addiu	v1,v1,0
     9d0:	a60f02c4 	sh	t7,708(s0)
     9d4:	ae180130 	sw	t8,304(s0)
     9d8:	ae000298 	sw	zero,664(s0)
     9dc:	a21902c7 	sb	t9,711(s0)
     9e0:	94620038 	lhu	v0,56(v1)
     9e4:	284164c8 	slti	at,v0,25800
     9e8:	10200003 	beqz	at,9f8 <L80A025C0+0x68>
     9ec:	28410bb8 	slti	at,v0,3000
     9f0:	502000a2 	beqzl	at,c7c <L80A02804+0xa8>
     9f4:	3c014040 	lui	at,0x4040
     9f8:	1000009f 	b	c78 <L80A02804+0xa4>
     9fc:	a4600038 	sh	zero,56(v1)

00000a00 <L80A02630>:
     a00:	2408ffff 	li	t0,-1
     a04:	3c050000 	lui	a1,0x0
     a08:	afa80048 	sw	t0,72(sp)
     a0c:	24a50000 	addiu	a1,a1,0
     a10:	0c000000 	jal	0 <func_80A01C30>
     a14:	02002025 	move	a0,s0
     a18:	8fa5004c 	lw	a1,76(sp)
     a1c:	26040024 	addiu	a0,s0,36
     a20:	0c000000 	jal	0 <func_80A01C30>
     a24:	24a50024 	addiu	a1,a1,36
     a28:	e60002b8 	swc1	$f0,696(s0)
     a2c:	8fa9004c 	lw	t1,76(sp)
     a30:	240bf000 	li	t3,-4096
     a34:	c6060028 	lwc1	$f6,40(s0)
     a38:	852a00b6 	lh	t2,182(t1)
     a3c:	a60b02b0 	sh	t3,688(s0)
     a40:	44808000 	mtc1	zero,$f16
     a44:	a60a02ac 	sh	t2,684(s0)
     a48:	8fac004c 	lw	t4,76(sp)
     a4c:	c5880028 	lwc1	$f8,40(t4)
     a50:	a60002aa 	sh	zero,682(s0)
     a54:	e61002b4 	swc1	$f16,692(s0)
     a58:	46083281 	sub.s	$f10,$f6,$f8
     a5c:	10000086 	b	c78 <L80A02804+0xa4>
     a60:	e60a0290 	swc1	$f10,656(s0)

00000a64 <L80A02694>:
     a64:	240dffff 	li	t5,-1
     a68:	3c050000 	lui	a1,0x0
     a6c:	afad0048 	sw	t5,72(sp)
     a70:	24a50000 	addiu	a1,a1,0
     a74:	0c000000 	jal	0 <func_80A01C30>
     a78:	02002025 	move	a0,s0
     a7c:	44809000 	mtc1	zero,$f18
     a80:	8fa2004c 	lw	v0,76(sp)
     a84:	c6040028 	lwc1	$f4,40(s0)
     a88:	e61202b8 	swc1	$f18,696(s0)
     a8c:	844e00b6 	lh	t6,182(v0)
     a90:	a60002b0 	sh	zero,688(s0)
     a94:	3c0140e0 	lui	at,0x40e0
     a98:	a60e02ac 	sh	t6,684(s0)
     a9c:	c4460028 	lwc1	$f6,40(v0)
     aa0:	44815000 	mtc1	at,$f10
     aa4:	a60002aa 	sh	zero,682(s0)
     aa8:	46062201 	sub.s	$f8,$f4,$f6
     aac:	e60a02b4 	swc1	$f10,692(s0)
     ab0:	10000071 	b	c78 <L80A02804+0xa4>
     ab4:	e6080290 	swc1	$f8,656(s0)

00000ab8 <L80A026E8>:
     ab8:	960f02c4 	lhu	t7,708(s0)
     abc:	3c190000 	lui	t9,0x0
     ac0:	27390000 	addiu	t9,t9,0
     ac4:	35f80200 	ori	t8,t7,0x200
     ac8:	a61802c4 	sh	t8,708(s0)
     acc:	ae1900c0 	sw	t9,192(s0)

00000ad0 <L80A02700>:
     ad0:	960802c4 	lhu	t0,708(s0)
     ad4:	35090100 	ori	t1,t0,0x100
     ad8:	a60902c4 	sh	t1,708(s0)

00000adc <L80A0270C>:
     adc:	240affff 	li	t2,-1
     ae0:	3c050000 	lui	a1,0x0
     ae4:	afaa0048 	sw	t2,72(sp)
     ae8:	24a50000 	addiu	a1,a1,0
     aec:	0c000000 	jal	0 <func_80A01C30>
     af0:	02002025 	move	a0,s0
     af4:	3c014120 	lui	at,0x4120
     af8:	44816000 	mtc1	at,$f12
     afc:	0c000000 	jal	0 <func_80A01C30>
     b00:	00000000 	nop
     b04:	3c014120 	lui	at,0x4120
     b08:	44818000 	mtc1	at,$f16
     b0c:	3c014483 	lui	at,0x4483
     b10:	44816000 	mtc1	at,$f12
     b14:	46100480 	add.s	$f18,$f0,$f16
     b18:	a60002aa 	sh	zero,682(s0)
     b1c:	0c000000 	jal	0 <func_80A01C30>
     b20:	e61202b4 	swc1	$f18,692(s0)
     b24:	4600010d 	trunc.w.s	$f4,$f0
     b28:	8e190024 	lw	t9,36(s0)
     b2c:	8e180028 	lw	t8,40(s0)
     b30:	3c010000 	lui	at,0x0
     b34:	440e2000 	mfc1	t6,$f4
     b38:	ae19028c 	sw	t9,652(s0)
     b3c:	8e19002c 	lw	t9,44(s0)
     b40:	25cf0200 	addiu	t7,t6,512
     b44:	a60f02ae 	sh	t7,686(s0)
     b48:	ae180290 	sw	t8,656(s0)
     b4c:	ae190294 	sw	t9,660(s0)
     b50:	0c000000 	jal	0 <func_80A01C30>
     b54:	c42c0000 	lwc1	$f12,0(at)
     b58:	4600018d 	trunc.w.s	$f6,$f0
     b5c:	3c0a0000 	lui	t2,0x0
     b60:	254a0000 	addiu	t2,t2,0
     b64:	ae0a02c8 	sw	t2,712(s0)
     b68:	44093000 	mfc1	t1,$f6
     b6c:	02002025 	move	a0,s0
     b70:	02202825 	move	a1,s1
     b74:	0c000000 	jal	0 <func_80A01C30>
     b78:	a60902bc 	sh	t1,700(s0)
     b7c:	240b00f0 	li	t3,240
     b80:	a60002c0 	sh	zero,704(s0)
     b84:	1000003c 	b	c78 <L80A02804+0xa4>
     b88:	a60b02c2 	sh	t3,706(s0)

00000b8c <L80A027BC>:
     b8c:	3c010000 	lui	at,0x0
     b90:	0c000000 	jal	0 <func_80A01C30>
     b94:	c42c0000 	lwc1	$f12,0(at)
     b98:	3c013f80 	lui	at,0x3f80
     b9c:	44814000 	mtc1	at,$f8
     ba0:	3c050000 	lui	a1,0x0
     ba4:	24a50000 	addiu	a1,a1,0
     ba8:	46080280 	add.s	$f10,$f0,$f8
     bac:	02002025 	move	a0,s0
     bb0:	4600540d 	trunc.w.s	$f16,$f10
     bb4:	440d8000 	mfc1	t5,$f16
     bb8:	0c000000 	jal	0 <func_80A01C30>
     bbc:	afad0048 	sw	t5,72(sp)
     bc0:	02002025 	move	a0,s0
     bc4:	0c000000 	jal	0 <func_80A01C30>
     bc8:	00002825 	move	a1,zero
     bcc:	1000002b 	b	c7c <L80A02804+0xa8>
     bd0:	3c014040 	lui	at,0x4040

00000bd4 <L80A02804>:
     bd4:	3c050000 	lui	a1,0x0
     bd8:	24a50000 	addiu	a1,a1,0
     bdc:	0c000000 	jal	0 <func_80A01C30>
     be0:	02002025 	move	a0,s0
     be4:	02002025 	move	a0,s0
     be8:	0c000000 	jal	0 <func_80A01C30>
     bec:	24050008 	li	a1,8
     bf0:	26241c24 	addiu	a0,s1,7204
     bf4:	afa40040 	sw	a0,64(sp)
     bf8:	00001825 	move	v1,zero
     bfc:	3c0141f0 	lui	at,0x41f0
     c00:	44812000 	mtc1	at,$f4
     c04:	c6120028 	lwc1	$f18,40(s0)
     c08:	8e070024 	lw	a3,36(s0)
     c0c:	240e0006 	li	t6,6
     c10:	46049181 	sub.s	$f6,$f18,$f4
     c14:	8fa40040 	lw	a0,64(sp)
     c18:	02202825 	move	a1,s1
     c1c:	24060018 	li	a2,24
     c20:	e7a60010 	swc1	$f6,16(sp)
     c24:	c608002c 	lwc1	$f8,44(s0)
     c28:	afa30044 	sw	v1,68(sp)
     c2c:	afae0024 	sw	t6,36(sp)
     c30:	afa00020 	sw	zero,32(sp)
     c34:	afa0001c 	sw	zero,28(sp)
     c38:	afa00018 	sw	zero,24(sp)
     c3c:	0c000000 	jal	0 <func_80A01C30>
     c40:	e7a80014 	swc1	$f8,20(sp)
     c44:	8fa30044 	lw	v1,68(sp)
     c48:	24010008 	li	at,8
     c4c:	24630001 	addiu	v1,v1,1
     c50:	5461ffeb 	bnel	v1,at,c00 <L80A02804+0x2c>
     c54:	3c0141f0 	lui	at,0x41f0
     c58:	10000008 	b	c7c <L80A02804+0xa8>
     c5c:	3c014040 	lui	at,0x4040
     c60:	3c040000 	lui	a0,0x0
     c64:	3c050000 	lui	a1,0x0
     c68:	24a50000 	addiu	a1,a1,0
     c6c:	24840000 	addiu	a0,a0,0
     c70:	0c000000 	jal	0 <func_80A01C30>
     c74:	2406044f 	li	a2,1103
     c78:	3c014040 	lui	at,0x4040
     c7c:	44815000 	mtc1	at,$f10
     c80:	3c040000 	lui	a0,0x0
     c84:	24840000 	addiu	a0,a0,0
     c88:	e60a02a0 	swc1	$f10,672(s0)
     c8c:	8c980000 	lw	t8,0(a0)
     c90:	26030244 	addiu	v1,s0,580
     c94:	3c090000 	lui	t1,0x0
     c98:	ac780000 	sw	t8,0(v1)
     c9c:	8c8f0004 	lw	t7,4(a0)
     ca0:	25290000 	addiu	t1,t1,0
     ca4:	ac6f0004 	sw	t7,4(v1)
     ca8:	8c980008 	lw	t8,8(a0)
     cac:	ac780008 	sw	t8,8(v1)
     cb0:	8c8f000c 	lw	t7,12(a0)
     cb4:	ac6f000c 	sw	t7,12(v1)
     cb8:	8fb90048 	lw	t9,72(sp)
     cbc:	8fa20048 	lw	v0,72(sp)
     cc0:	1b200010 	blez	t9,d04 <L80A02804+0x130>
     cc4:	00021023 	negu	v0,v0
     cc8:	00194080 	sll	t0,t9,0x2
     ccc:	01194023 	subu	t0,t0,t9
     cd0:	01098821 	addu	s1,t0,t1
     cd4:	0c000000 	jal	0 <func_80A01C30>
     cd8:	92240000 	lbu	a0,0(s1)
     cdc:	e6000254 	swc1	$f0,596(s0)
     ce0:	0c000000 	jal	0 <func_80A01C30>
     ce4:	92240001 	lbu	a0,1(s1)
     ce8:	e6000258 	swc1	$f0,600(s0)
     cec:	0c000000 	jal	0 <func_80A01C30>
     cf0:	92240002 	lbu	a0,2(s1)
     cf4:	44808000 	mtc1	zero,$f16
     cf8:	e600025c 	swc1	$f0,604(s0)
     cfc:	10000016 	b	d58 <L80A02804+0x184>
     d00:	e6100260 	swc1	$f16,608(s0)
     d04:	00021100 	sll	v0,v0,0x4
     d08:	00825021 	addu	t2,a0,v0
     d0c:	8d4c0000 	lw	t4,0(t2)
     d10:	3c0d0000 	lui	t5,0x0
     d14:	25ad0000 	addiu	t5,t5,0
     d18:	ac6c0000 	sw	t4,0(v1)
     d1c:	8d4b0004 	lw	t3,4(t2)
     d20:	004d7021 	addu	t6,v0,t5
     d24:	ac6b0004 	sw	t3,4(v1)
     d28:	8d4c0008 	lw	t4,8(t2)
     d2c:	ac6c0008 	sw	t4,8(v1)
     d30:	8d4b000c 	lw	t3,12(t2)
     d34:	ac6b000c 	sw	t3,12(v1)
     d38:	8dd80000 	lw	t8,0(t6)
     d3c:	ae180254 	sw	t8,596(s0)
     d40:	8dcf0004 	lw	t7,4(t6)
     d44:	ae0f0258 	sw	t7,600(s0)
     d48:	8dd80008 	lw	t8,8(t6)
     d4c:	ae18025c 	sw	t8,604(s0)
     d50:	8dcf000c 	lw	t7,12(t6)
     d54:	ae0f0260 	sw	t7,608(s0)
     d58:	8fbf0034 	lw	ra,52(sp)
     d5c:	8fb0002c 	lw	s0,44(sp)
     d60:	8fb10030 	lw	s1,48(sp)
     d64:	03e00008 	jr	ra
     d68:	27bd0058 	addiu	sp,sp,88

00000d6c <func_80A0299C>:
     d6c:	afa40000 	sw	a0,0(sp)
     d70:	03e00008 	jr	ra
     d74:	afa50004 	sw	a1,4(sp)

00000d78 <func_80A029A8>:
     d78:	afa50004 	sw	a1,4(sp)
     d7c:	848202c2 	lh	v0,706(a0)
     d80:	00052c00 	sll	a1,a1,0x10
     d84:	00052c03 	sra	a1,a1,0x10
     d88:	28410258 	slti	at,v0,600
     d8c:	10200002 	beqz	at,d98 <func_80A029A8+0x20>
     d90:	00457021 	addu	t6,v0,a1
     d94:	a48e02c2 	sh	t6,706(a0)
     d98:	03e00008 	jr	ra
     d9c:	00000000 	nop

00000da0 <EnElf_Destroy>:
     da0:	27bdffd8 	addiu	sp,sp,-40
     da4:	afa40028 	sw	a0,40(sp)
     da8:	8fae0028 	lw	t6,40(sp)
     dac:	afbf0014 	sw	ra,20(sp)
     db0:	00a03825 	move	a3,a1
     db4:	00a02025 	move	a0,a1
     db8:	24a507a8 	addiu	a1,a1,1960
     dbc:	8dc60274 	lw	a2,628(t6)
     dc0:	afa7002c 	sw	a3,44(sp)
     dc4:	0c000000 	jal	0 <func_80A01C30>
     dc8:	afa5001c 	sw	a1,28(sp)
     dcc:	8faf0028 	lw	t7,40(sp)
     dd0:	8fa5001c 	lw	a1,28(sp)
     dd4:	8fa4002c 	lw	a0,44(sp)
     dd8:	0c000000 	jal	0 <func_80A01C30>
     ddc:	8de60288 	lw	a2,648(t7)
     de0:	8fbf0014 	lw	ra,20(sp)
     de4:	27bd0028 	addiu	sp,sp,40
     de8:	03e00008 	jr	ra
     dec:	00000000 	nop

00000df0 <func_80A02A20>:
     df0:	27bdffe0 	addiu	sp,sp,-32
     df4:	afb00018 	sw	s0,24(sp)
     df8:	00808025 	move	s0,a0
     dfc:	afbf001c 	sw	ra,28(sp)
     e00:	afa50024 	sw	a1,36(sp)
     e04:	0c000000 	jal	0 <func_80A01C30>
     e08:	848402ac 	lh	a0,684(a0)
     e0c:	c60402b8 	lwc1	$f4,696(s0)
     e10:	860402aa 	lh	a0,682(s0)
     e14:	46040182 	mul.s	$f6,$f0,$f4
     e18:	0c000000 	jal	0 <func_80A01C30>
     e1c:	e606028c 	swc1	$f6,652(s0)
     e20:	c60802b4 	lwc1	$f8,692(s0)
     e24:	860402ac 	lh	a0,684(s0)
     e28:	46080282 	mul.s	$f10,$f0,$f8
     e2c:	0c000000 	jal	0 <func_80A01C30>
     e30:	e60a0290 	swc1	$f10,656(s0)
     e34:	c61002b8 	lwc1	$f16,696(s0)
     e38:	860e02ac 	lh	t6,684(s0)
     e3c:	860f02b0 	lh	t7,688(s0)
     e40:	46100482 	mul.s	$f18,$f0,$f16
     e44:	861902aa 	lh	t9,682(s0)
     e48:	860802ae 	lh	t0,686(s0)
     e4c:	01cfc021 	addu	t8,t6,t7
     e50:	a61802ac 	sh	t8,684(s0)
     e54:	03284821 	addu	t1,t9,t0
     e58:	a60902aa 	sh	t1,682(s0)
     e5c:	e6120294 	swc1	$f18,660(s0)
     e60:	8fbf001c 	lw	ra,28(sp)
     e64:	8fb00018 	lw	s0,24(sp)
     e68:	27bd0020 	addiu	sp,sp,32
     e6c:	03e00008 	jr	ra
     e70:	00000000 	nop

00000e74 <func_80A02AA4>:
     e74:	27bdffd8 	addiu	sp,sp,-40
     e78:	afb00018 	sw	s0,24(sp)
     e7c:	00808025 	move	s0,a0
     e80:	afbf001c 	sw	ra,28(sp)
     e84:	afa5002c 	sw	a1,44(sp)
     e88:	0c000000 	jal	0 <func_80A01C30>
     e8c:	848402aa 	lh	a0,682(a0)
     e90:	c60402b4 	lwc1	$f4,692(s0)
     e94:	c60802b8 	lwc1	$f8,696(s0)
     e98:	46040182 	mul.s	$f6,$f0,$f4
     e9c:	46083280 	add.s	$f10,$f6,$f8
     ea0:	e7aa0024 	swc1	$f10,36(sp)
     ea4:	0c000000 	jal	0 <func_80A01C30>
     ea8:	860402ac 	lh	a0,684(s0)
     eac:	c7b00024 	lwc1	$f16,36(sp)
     eb0:	44802000 	mtc1	zero,$f4
     eb4:	860402ac 	lh	a0,684(s0)
     eb8:	46100482 	mul.s	$f18,$f0,$f16
     ebc:	e6040290 	swc1	$f4,656(s0)
     ec0:	0c000000 	jal	0 <func_80A01C30>
     ec4:	e612028c 	swc1	$f18,652(s0)
     ec8:	c7a60024 	lwc1	$f6,36(sp)
     ecc:	860e02ac 	lh	t6,684(s0)
     ed0:	860f02b0 	lh	t7,688(s0)
     ed4:	46060202 	mul.s	$f8,$f0,$f6
     ed8:	861902aa 	lh	t9,682(s0)
     edc:	860802ae 	lh	t0,686(s0)
     ee0:	01cfc021 	addu	t8,t6,t7
     ee4:	a61802ac 	sh	t8,684(s0)
     ee8:	03284821 	addu	t1,t9,t0
     eec:	a60902aa 	sh	t1,682(s0)
     ef0:	e6080294 	swc1	$f8,660(s0)
     ef4:	8fbf001c 	lw	ra,28(sp)
     ef8:	8fb00018 	lw	s0,24(sp)
     efc:	27bd0028 	addiu	sp,sp,40
     f00:	03e00008 	jr	ra
     f04:	00000000 	nop

00000f08 <func_80A02B38>:
     f08:	27bdffd8 	addiu	sp,sp,-40
     f0c:	afbf001c 	sw	ra,28(sp)
     f10:	afb00018 	sw	s0,24(sp)
     f14:	8cae1c44 	lw	t6,7236(a1)
     f18:	00808025 	move	s0,a0
     f1c:	afae0024 	sw	t6,36(sp)
     f20:	848402ac 	lh	a0,684(a0)
     f24:	0004c040 	sll	t8,a0,0x1
     f28:	0c000000 	jal	0 <func_80A01C30>
     f2c:	a61802aa 	sh	t8,682(s0)
     f30:	c60402b8 	lwc1	$f4,696(s0)
     f34:	860402aa 	lh	a0,682(s0)
     f38:	46040182 	mul.s	$f6,$f0,$f4
     f3c:	0c000000 	jal	0 <func_80A01C30>
     f40:	e606028c 	swc1	$f6,652(s0)
     f44:	c60802b4 	lwc1	$f8,692(s0)
     f48:	46080282 	mul.s	$f10,$f0,$f8
     f4c:	e60a0290 	swc1	$f10,656(s0)
     f50:	8fb90024 	lw	t9,36(sp)
     f54:	0c000000 	jal	0 <func_80A01C30>
     f58:	872400b6 	lh	a0,182(t9)
     f5c:	c612028c 	lwc1	$f18,652(s0)
     f60:	46000407 	neg.s	$f16,$f0
     f64:	46128102 	mul.s	$f4,$f16,$f18
     f68:	e6040294 	swc1	$f4,660(s0)
     f6c:	8fa80024 	lw	t0,36(sp)
     f70:	0c000000 	jal	0 <func_80A01C30>
     f74:	850400b6 	lh	a0,182(t0)
     f78:	c606028c 	lwc1	$f6,652(s0)
     f7c:	860902ac 	lh	t1,684(s0)
     f80:	860a02b0 	lh	t2,688(s0)
     f84:	46060202 	mul.s	$f8,$f0,$f6
     f88:	012a5821 	addu	t3,t1,t2
     f8c:	a60b02ac 	sh	t3,684(s0)
     f90:	e608028c 	swc1	$f8,652(s0)
     f94:	8fbf001c 	lw	ra,28(sp)
     f98:	8fb00018 	lw	s0,24(sp)
     f9c:	27bd0028 	addiu	sp,sp,40
     fa0:	03e00008 	jr	ra
     fa4:	00000000 	nop

00000fa8 <func_80A02BD8>:
     fa8:	27bdffe8 	addiu	sp,sp,-24
     fac:	afbf0014 	sw	ra,20(sp)
     fb0:	c4860290 	lwc1	$f6,656(a0)
     fb4:	c4a40004 	lwc1	$f4,4(a1)
     fb8:	c48a0028 	lwc1	$f10,40(a0)
     fbc:	44866000 	mtc1	a2,$f12
     fc0:	46062200 	add.s	$f8,$f4,$f6
     fc4:	44807000 	mtc1	zero,$f14
     fc8:	00803825 	move	a3,a0
     fcc:	3c01bf80 	lui	at,0xbf80
     fd0:	460a4401 	sub.s	$f16,$f8,$f10
     fd4:	460c8082 	mul.s	$f2,$f16,$f12
     fd8:	4602703e 	c.le.s	$f14,$f2
     fdc:	46001005 	abs.s	$f0,$f2
     fe0:	45020006 	bc1fl	ffc <func_80A02BD8+0x54>
     fe4:	44816000 	mtc1	at,$f12
     fe8:	3c013f80 	lui	at,0x3f80
     fec:	44816000 	mtc1	at,$f12
     ff0:	10000004 	b	1004 <func_80A02BD8+0x5c>
     ff4:	460e003c 	c.lt.s	$f0,$f14
     ff8:	44816000 	mtc1	at,$f12
     ffc:	00000000 	nop
    1000:	460e003c 	c.lt.s	$f0,$f14
    1004:	3c0141a0 	lui	at,0x41a0
    1008:	45020004 	bc1fl	101c <func_80A02BD8+0x74>
    100c:	44817000 	mtc1	at,$f14
    1010:	1000000b 	b	1040 <func_80A02BD8+0x98>
    1014:	46007006 	mov.s	$f0,$f14
    1018:	44817000 	mtc1	at,$f14
    101c:	00000000 	nop
    1020:	4600703c 	c.lt.s	$f14,$f0
    1024:	00000000 	nop
    1028:	45020004 	bc1fl	103c <func_80A02BD8+0x94>
    102c:	46000086 	mov.s	$f2,$f0
    1030:	10000002 	b	103c <func_80A02BD8+0x94>
    1034:	46007086 	mov.s	$f2,$f14
    1038:	46000086 	mov.s	$f2,$f0
    103c:	46001006 	mov.s	$f0,$f2
    1040:	460c0482 	mul.s	$f18,$f0,$f12
    1044:	24e40060 	addiu	a0,a3,96
    1048:	3c064200 	lui	a2,0x4200
    104c:	44059000 	mfc1	a1,$f18
    1050:	0c000000 	jal	0 <func_80A01C30>
    1054:	00000000 	nop
    1058:	8fbf0014 	lw	ra,20(sp)
    105c:	27bd0018 	addiu	sp,sp,24
    1060:	03e00008 	jr	ra
    1064:	00000000 	nop

00001068 <func_80A02C98>:
    1068:	27bdffc8 	addiu	sp,sp,-56
    106c:	afbf001c 	sw	ra,28(sp)
    1070:	afb00018 	sw	s0,24(sp)
    1074:	afa60040 	sw	a2,64(sp)
    1078:	c486028c 	lwc1	$f6,652(a0)
    107c:	c4a40000 	lwc1	$f4,0(a1)
    1080:	c48a0024 	lwc1	$f10,36(a0)
    1084:	44808000 	mtc1	zero,$f16
    1088:	46062200 	add.s	$f8,$f4,$f6
    108c:	c7a60040 	lwc1	$f6,64(sp)
    1090:	00808025 	move	s0,a0
    1094:	3c01bf80 	lui	at,0xbf80
    1098:	460a4101 	sub.s	$f4,$f8,$f10
    109c:	c48a0294 	lwc1	$f10,660(a0)
    10a0:	c4a80008 	lwc1	$f8,8(a1)
    10a4:	46062382 	mul.s	$f14,$f4,$f6
    10a8:	460a4100 	add.s	$f4,$f8,$f10
    10ac:	c488002c 	lwc1	$f8,44(a0)
    10b0:	02002025 	move	a0,s0
    10b4:	46082281 	sub.s	$f10,$f4,$f8
    10b8:	460e803e 	c.le.s	$f16,$f14
    10bc:	46065082 	mul.s	$f2,$f10,$f6
    10c0:	46007005 	abs.s	$f0,$f14
    10c4:	45000005 	bc1f	10dc <func_80A02C98+0x74>
    10c8:	46000386 	mov.s	$f14,$f0
    10cc:	3c013f80 	lui	at,0x3f80
    10d0:	44819000 	mtc1	at,$f18
    10d4:	10000004 	b	10e8 <func_80A02C98+0x80>
    10d8:	4602803e 	c.le.s	$f16,$f2
    10dc:	44819000 	mtc1	at,$f18
    10e0:	00000000 	nop
    10e4:	4602803e 	c.le.s	$f16,$f2
    10e8:	3c01bf80 	lui	at,0xbf80
    10ec:	45020006 	bc1fl	1108 <func_80A02C98+0xa0>
    10f0:	44814000 	mtc1	at,$f8
    10f4:	3c013f80 	lui	at,0x3f80
    10f8:	44812000 	mtc1	at,$f4
    10fc:	10000004 	b	1110 <func_80A02C98+0xa8>
    1100:	e7a40028 	swc1	$f4,40(sp)
    1104:	44814000 	mtc1	at,$f8
    1108:	00000000 	nop
    110c:	e7a80028 	swc1	$f8,40(sp)
    1110:	4610703c 	c.lt.s	$f14,$f16
    1114:	3c0141a0 	lui	at,0x41a0
    1118:	46001005 	abs.s	$f0,$f2
    111c:	8fa60040 	lw	a2,64(sp)
    1120:	45020004 	bc1fl	1134 <func_80A02C98+0xcc>
    1124:	44815000 	mtc1	at,$f10
    1128:	1000000c 	b	115c <func_80A02C98+0xf4>
    112c:	46008086 	mov.s	$f2,$f16
    1130:	44815000 	mtc1	at,$f10
    1134:	3c0141a0 	lui	at,0x41a0
    1138:	460e503c 	c.lt.s	$f10,$f14
    113c:	00000000 	nop
    1140:	45020005 	bc1fl	1158 <func_80A02C98+0xf0>
    1144:	46007306 	mov.s	$f12,$f14
    1148:	44816000 	mtc1	at,$f12
    114c:	10000003 	b	115c <func_80A02C98+0xf4>
    1150:	46006086 	mov.s	$f2,$f12
    1154:	46007306 	mov.s	$f12,$f14
    1158:	46006086 	mov.s	$f2,$f12
    115c:	4610003c 	c.lt.s	$f0,$f16
    1160:	46121382 	mul.s	$f14,$f2,$f18
    1164:	3c0141a0 	lui	at,0x41a0
    1168:	45020004 	bc1fl	117c <func_80A02C98+0x114>
    116c:	44811000 	mtc1	at,$f2
    1170:	1000000b 	b	11a0 <func_80A02C98+0x138>
    1174:	46008086 	mov.s	$f2,$f16
    1178:	44811000 	mtc1	at,$f2
    117c:	00000000 	nop
    1180:	4600103c 	c.lt.s	$f2,$f0
    1184:	00000000 	nop
    1188:	45020004 	bc1fl	119c <func_80A02C98+0x134>
    118c:	46000306 	mov.s	$f12,$f0
    1190:	10000002 	b	119c <func_80A02C98+0x134>
    1194:	46001306 	mov.s	$f12,$f2
    1198:	46000306 	mov.s	$f12,$f0
    119c:	46006086 	mov.s	$f2,$f12
    11a0:	e7a20024 	swc1	$f2,36(sp)
    11a4:	0c000000 	jal	0 <func_80A01C30>
    11a8:	e7ae0034 	swc1	$f14,52(sp)
    11ac:	c7ae0034 	lwc1	$f14,52(sp)
    11b0:	2604005c 	addiu	a0,s0,92
    11b4:	3c063fc0 	lui	a2,0x3fc0
    11b8:	44057000 	mfc1	a1,$f14
    11bc:	0c000000 	jal	0 <func_80A01C30>
    11c0:	00000000 	nop
    11c4:	c7a20024 	lwc1	$f2,36(sp)
    11c8:	c7a60028 	lwc1	$f6,40(sp)
    11cc:	26040064 	addiu	a0,s0,100
    11d0:	3c063fc0 	lui	a2,0x3fc0
    11d4:	46061102 	mul.s	$f4,$f2,$f6
    11d8:	44052000 	mfc1	a1,$f4
    11dc:	0c000000 	jal	0 <func_80A01C30>
    11e0:	00000000 	nop
    11e4:	0c000000 	jal	0 <func_80A01C30>
    11e8:	02002025 	move	a0,s0
    11ec:	8fbf001c 	lw	ra,28(sp)
    11f0:	8fb00018 	lw	s0,24(sp)
    11f4:	27bd0038 	addiu	sp,sp,56
    11f8:	03e00008 	jr	ra
    11fc:	00000000 	nop

00001200 <func_80A02E30>:
    1200:	27bdffe8 	addiu	sp,sp,-24
    1204:	afbf0014 	sw	ra,20(sp)
    1208:	3c063e4c 	lui	a2,0x3e4c
    120c:	34c6cccd 	ori	a2,a2,0xcccd
    1210:	afa40018 	sw	a0,24(sp)
    1214:	0c000000 	jal	0 <func_80A01C30>
    1218:	afa5001c 	sw	a1,28(sp)
    121c:	8fa40018 	lw	a0,24(sp)
    1220:	8fa5001c 	lw	a1,28(sp)
    1224:	c486028c 	lwc1	$f6,652(a0)
    1228:	c4a40000 	lwc1	$f4,0(a1)
    122c:	c48a0024 	lwc1	$f10,36(a0)
    1230:	46062200 	add.s	$f8,$f4,$f6
    1234:	c4840294 	lwc1	$f4,660(a0)
    1238:	460a4401 	sub.s	$f16,$f8,$f10
    123c:	c488002c 	lwc1	$f8,44(a0)
    1240:	e490005c 	swc1	$f16,92(a0)
    1244:	c4b20008 	lwc1	$f18,8(a1)
    1248:	46049180 	add.s	$f6,$f18,$f4
    124c:	46083281 	sub.s	$f10,$f6,$f8
    1250:	0c000000 	jal	0 <func_80A01C30>
    1254:	e48a0064 	swc1	$f10,100(a0)
    1258:	8fa40018 	lw	a0,24(sp)
    125c:	8fa5001c 	lw	a1,28(sp)
    1260:	c492028c 	lwc1	$f18,652(a0)
    1264:	c4b00000 	lwc1	$f16,0(a1)
    1268:	c4880294 	lwc1	$f8,660(a0)
    126c:	46128100 	add.s	$f4,$f16,$f18
    1270:	e4840024 	swc1	$f4,36(a0)
    1274:	c4a60008 	lwc1	$f6,8(a1)
    1278:	46083280 	add.s	$f10,$f6,$f8
    127c:	e48a002c 	swc1	$f10,44(a0)
    1280:	8fbf0014 	lw	ra,20(sp)
    1284:	27bd0018 	addiu	sp,sp,24
    1288:	03e00008 	jr	ra
    128c:	00000000 	nop

00001290 <func_80A02EC0>:
    1290:	27bdffe8 	addiu	sp,sp,-24
    1294:	afbf0014 	sw	ra,20(sp)
    1298:	3c063e4c 	lui	a2,0x3e4c
    129c:	afa5001c 	sw	a1,28(sp)
    12a0:	34c6cccd 	ori	a2,a2,0xcccd
    12a4:	0c000000 	jal	0 <func_80A01C30>
    12a8:	afa40018 	sw	a0,24(sp)
    12ac:	8fa40018 	lw	a0,24(sp)
    12b0:	44800000 	mtc1	zero,$f0
    12b4:	00000000 	nop
    12b8:	e4800064 	swc1	$f0,100(a0)
    12bc:	0c000000 	jal	0 <func_80A01C30>
    12c0:	e480005c 	swc1	$f0,92(a0)
    12c4:	8fa2001c 	lw	v0,28(sp)
    12c8:	8fa40018 	lw	a0,24(sp)
    12cc:	c4440000 	lwc1	$f4,0(v0)
    12d0:	c486028c 	lwc1	$f6,652(a0)
    12d4:	c4900294 	lwc1	$f16,660(a0)
    12d8:	46062200 	add.s	$f8,$f4,$f6
    12dc:	e4880024 	swc1	$f8,36(a0)
    12e0:	c44a0008 	lwc1	$f10,8(v0)
    12e4:	46105480 	add.s	$f18,$f10,$f16
    12e8:	e492002c 	swc1	$f18,44(a0)
    12ec:	8fbf0014 	lw	ra,20(sp)
    12f0:	27bd0018 	addiu	sp,sp,24
    12f4:	03e00008 	jr	ra
    12f8:	00000000 	nop

000012fc <func_80A02F2C>:
    12fc:	27bdffe8 	addiu	sp,sp,-24
    1300:	afbf0014 	sw	ra,20(sp)
    1304:	afa5001c 	sw	a1,28(sp)
    1308:	00803825 	move	a3,a0
    130c:	848402aa 	lh	a0,682(a0)
    1310:	0c000000 	jal	0 <func_80A01C30>
    1314:	afa70018 	sw	a3,24(sp)
    1318:	8fa70018 	lw	a3,24(sp)
    131c:	8fae001c 	lw	t6,28(sp)
    1320:	3c010000 	lui	at,0x0
    1324:	c4e402b4 	lwc1	$f4,692(a3)
    1328:	c5c80004 	lwc1	$f8,4(t6)
    132c:	c4f00028 	lwc1	$f16,40(a3)
    1330:	46040182 	mul.s	$f6,$f0,$f4
    1334:	c4240000 	lwc1	$f4,0(at)
    1338:	44807000 	mtc1	zero,$f14
    133c:	3c01bf80 	lui	at,0xbf80
    1340:	46083280 	add.s	$f10,$f6,$f8
    1344:	46105481 	sub.s	$f18,$f10,$f16
    1348:	46049082 	mul.s	$f2,$f18,$f4
    134c:	4602703e 	c.le.s	$f14,$f2
    1350:	46001005 	abs.s	$f0,$f2
    1354:	45020006 	bc1fl	1370 <func_80A02F2C+0x74>
    1358:	44816000 	mtc1	at,$f12
    135c:	3c013f80 	lui	at,0x3f80
    1360:	44816000 	mtc1	at,$f12
    1364:	10000004 	b	1378 <func_80A02F2C+0x7c>
    1368:	460e003c 	c.lt.s	$f0,$f14
    136c:	44816000 	mtc1	at,$f12
    1370:	00000000 	nop
    1374:	460e003c 	c.lt.s	$f0,$f14
    1378:	84ef02aa 	lh	t7,682(a3)
    137c:	84f802ae 	lh	t8,686(a3)
    1380:	3c0141a0 	lui	at,0x41a0
    1384:	01f8c821 	addu	t9,t7,t8
    1388:	45000003 	bc1f	1398 <func_80A02F2C+0x9c>
    138c:	a4f902aa 	sh	t9,682(a3)
    1390:	1000000b 	b	13c0 <func_80A02F2C+0xc4>
    1394:	46007006 	mov.s	$f0,$f14
    1398:	44817000 	mtc1	at,$f14
    139c:	00000000 	nop
    13a0:	4600703c 	c.lt.s	$f14,$f0
    13a4:	00000000 	nop
    13a8:	45020004 	bc1fl	13bc <func_80A02F2C+0xc0>
    13ac:	46000086 	mov.s	$f2,$f0
    13b0:	10000002 	b	13bc <func_80A02F2C+0xc0>
    13b4:	46007086 	mov.s	$f2,$f14
    13b8:	46000086 	mov.s	$f2,$f0
    13bc:	46001006 	mov.s	$f0,$f2
    13c0:	460c0182 	mul.s	$f6,$f0,$f12
    13c4:	24e40060 	addiu	a0,a3,96
    13c8:	3c063fc0 	lui	a2,0x3fc0
    13cc:	44053000 	mfc1	a1,$f6
    13d0:	0c000000 	jal	0 <func_80A01C30>
    13d4:	00000000 	nop
    13d8:	8fbf0014 	lw	ra,20(sp)
    13dc:	27bd0018 	addiu	sp,sp,24
    13e0:	03e00008 	jr	ra
    13e4:	00000000 	nop

000013e8 <func_80A03018>:
    13e8:	27bdffc8 	addiu	sp,sp,-56
    13ec:	afbf0024 	sw	ra,36(sp)
    13f0:	afb00020 	sw	s0,32(sp)
    13f4:	afa5003c 	sw	a1,60(sp)
    13f8:	8ca31c44 	lw	v1,7236(a1)
    13fc:	3c010000 	lui	at,0x0
    1400:	c4240000 	lwc1	$f4,0(at)
    1404:	00808025 	move	s0,a0
    1408:	8e0502b8 	lw	a1,696(s0)
    140c:	3c063e4c 	lui	a2,0x3e4c
    1410:	34c6cccd 	ori	a2,a2,0xcccd
    1414:	24840068 	addiu	a0,a0,104
    1418:	3c073f00 	lui	a3,0x3f00
    141c:	afa3002c 	sw	v1,44(sp)
    1420:	0c000000 	jal	0 <func_80A01C30>
    1424:	e7a40010 	swc1	$f4,16(sp)
    1428:	860202a8 	lh	v0,680(s0)
    142c:	8fa3002c 	lw	v1,44(sp)
    1430:	24010002 	li	at,2
    1434:	50400008 	beqzl	v0,1458 <func_80A03018+0x70>
    1438:	2602028c 	addiu	v0,s0,652
    143c:	1041001e 	beq	v0,at,14b8 <func_80A03018+0xd0>
    1440:	24010003 	li	at,3
    1444:	50410011 	beql	v0,at,148c <func_80A03018+0xa4>
    1448:	c612002c 	lwc1	$f18,44(s0)
    144c:	10000023 	b	14dc <func_80A03018+0xf4>
    1450:	860502b0 	lh	a1,688(s0)
    1454:	2602028c 	addiu	v0,s0,652
    1458:	c4480008 	lwc1	$f8,8(v0)
    145c:	c4500000 	lwc1	$f16,0(v0)
    1460:	c606002c 	lwc1	$f6,44(s0)
    1464:	c60a0024 	lwc1	$f10,36(s0)
    1468:	46083301 	sub.s	$f12,$f6,$f8
    146c:	46105381 	sub.s	$f14,$f10,$f16
    1470:	46006307 	neg.s	$f12,$f12
    1474:	0c000000 	jal	0 <func_80A01C30>
    1478:	46007387 	neg.s	$f14,$f14
    147c:	00022c00 	sll	a1,v0,0x10
    1480:	10000016 	b	14dc <func_80A03018+0xf4>
    1484:	00052c03 	sra	a1,a1,0x10
    1488:	c612002c 	lwc1	$f18,44(s0)
    148c:	c464002c 	lwc1	$f4,44(v1)
    1490:	c6060024 	lwc1	$f6,36(s0)
    1494:	c4680024 	lwc1	$f8,36(v1)
    1498:	46049301 	sub.s	$f12,$f18,$f4
    149c:	46083381 	sub.s	$f14,$f6,$f8
    14a0:	46006307 	neg.s	$f12,$f12
    14a4:	0c000000 	jal	0 <func_80A01C30>
    14a8:	46007387 	neg.s	$f14,$f14
    14ac:	00022c00 	sll	a1,v0,0x10
    14b0:	1000000a 	b	14dc <func_80A03018+0xf4>
    14b4:	00052c03 	sra	a1,a1,0x10
    14b8:	c60a002c 	lwc1	$f10,44(s0)
    14bc:	c470002c 	lwc1	$f16,44(v1)
    14c0:	c6120024 	lwc1	$f18,36(s0)
    14c4:	c4640024 	lwc1	$f4,36(v1)
    14c8:	46105301 	sub.s	$f12,$f10,$f16
    14cc:	0c000000 	jal	0 <func_80A01C30>
    14d0:	46049381 	sub.s	$f14,$f18,$f4
    14d4:	00022c00 	sll	a1,v0,0x10
    14d8:	00052c03 	sra	a1,a1,0x10
    14dc:	860702ac 	lh	a3,684(s0)
    14e0:	240f0020 	li	t7,32
    14e4:	afaf0010 	sw	t7,16(sp)
    14e8:	260402bc 	addiu	a0,s0,700
    14ec:	0c000000 	jal	0 <func_80A01C30>
    14f0:	2406000a 	li	a2,10
    14f4:	861802bc 	lh	t8,700(s0)
    14f8:	02002025 	move	a0,s0
    14fc:	0c000000 	jal	0 <func_80A01C30>
    1500:	a6180032 	sh	t8,50(s0)
    1504:	8fbf0024 	lw	ra,36(sp)
    1508:	8fb00020 	lw	s0,32(sp)
    150c:	27bd0038 	addiu	sp,sp,56
    1510:	03e00008 	jr	ra
    1514:	00000000 	nop

00001518 <func_80A03148>:
    1518:	27bdffd8 	addiu	sp,sp,-40
    151c:	afbf001c 	sw	ra,28(sp)
    1520:	afb00018 	sw	s0,24(sp)
    1524:	afa60030 	sw	a2,48(sp)
    1528:	c486028c 	lwc1	$f6,652(a0)
    152c:	c4a40000 	lwc1	$f4,0(a1)
    1530:	c48a0024 	lwc1	$f10,36(a0)
    1534:	c7ac0038 	lwc1	$f12,56(sp)
    1538:	46062200 	add.s	$f8,$f4,$f6
    153c:	c4a60008 	lwc1	$f6,8(a1)
    1540:	3c010000 	lui	at,0x0
    1544:	44877000 	mtc1	a3,$f14
    1548:	460a4101 	sub.s	$f4,$f8,$f10
    154c:	c4880294 	lwc1	$f8,660(a0)
    1550:	00808025 	move	s0,a0
    1554:	460c2402 	mul.s	$f16,$f4,$f12
    1558:	46083280 	add.s	$f10,$f6,$f8
    155c:	c484002c 	lwc1	$f4,44(a0)
    1560:	c4280000 	lwc1	$f8,0(at)
    1564:	3c0141f0 	lui	at,0x41f0
    1568:	46045181 	sub.s	$f6,$f10,$f4
    156c:	44815000 	mtc1	at,$f10
    1570:	e7b00024 	swc1	$f16,36(sp)
    1574:	460c3482 	mul.s	$f18,$f6,$f12
    1578:	46086300 	add.s	$f12,$f12,$f8
    157c:	460a7380 	add.s	$f14,$f14,$f10
    1580:	44066000 	mfc1	a2,$f12
    1584:	e7b20020 	swc1	$f18,32(sp)
    1588:	0c000000 	jal	0 <func_80A01C30>
    158c:	e7ae0034 	swc1	$f14,52(sp)
    1590:	c7b00024 	lwc1	$f16,36(sp)
    1594:	c7b20020 	lwc1	$f18,32(sp)
    1598:	c7a80030 	lwc1	$f8,48(sp)
    159c:	46108102 	mul.s	$f4,$f16,$f16
    15a0:	c7ae0034 	lwc1	$f14,52(sp)
    15a4:	2604005c 	addiu	a0,s0,92
    15a8:	46129182 	mul.s	$f6,$f18,$f18
    15ac:	3c0640a0 	lui	a2,0x40a0
    15b0:	46062000 	add.s	$f0,$f4,$f6
    15b4:	46000004 	sqrt.s	$f0,$f0
    15b8:	4608003c 	c.lt.s	$f0,$f8
    15bc:	00000000 	nop
    15c0:	45020004 	bc1fl	15d4 <func_80A03148+0xbc>
    15c4:	4600703c 	c.lt.s	$f14,$f0
    15c8:	10000009 	b	15f0 <func_80A03148+0xd8>
    15cc:	46004086 	mov.s	$f2,$f8
    15d0:	4600703c 	c.lt.s	$f14,$f0
    15d4:	00000000 	nop
    15d8:	45020004 	bc1fl	15ec <func_80A03148+0xd4>
    15dc:	46000306 	mov.s	$f12,$f0
    15e0:	10000002 	b	15ec <func_80A03148+0xd4>
    15e4:	46007306 	mov.s	$f12,$f14
    15e8:	46000306 	mov.s	$f12,$f0
    15ec:	46006086 	mov.s	$f2,$f12
    15f0:	46020032 	c.eq.s	$f0,$f2
    15f4:	e6020068 	swc1	$f2,104(s0)
    15f8:	4503000d 	bc1tl	1630 <func_80A03148+0x118>
    15fc:	44058000 	mfc1	a1,$f16
    1600:	44805000 	mtc1	zero,$f10
    1604:	00000000 	nop
    1608:	460a0032 	c.eq.s	$f0,$f10
    160c:	00000000 	nop
    1610:	45030007 	bc1tl	1630 <func_80A03148+0x118>
    1614:	44058000 	mfc1	a1,$f16
    1618:	46001303 	div.s	$f12,$f2,$f0
    161c:	460c8402 	mul.s	$f16,$f16,$f12
    1620:	00000000 	nop
    1624:	460c9482 	mul.s	$f18,$f18,$f12
    1628:	00000000 	nop
    162c:	44058000 	mfc1	a1,$f16
    1630:	0c000000 	jal	0 <func_80A01C30>
    1634:	e7b20020 	swc1	$f18,32(sp)
    1638:	c7b20020 	lwc1	$f18,32(sp)
    163c:	26040064 	addiu	a0,s0,100
    1640:	3c0640a0 	lui	a2,0x40a0
    1644:	44059000 	mfc1	a1,$f18
    1648:	0c000000 	jal	0 <func_80A01C30>
    164c:	00000000 	nop
    1650:	0c000000 	jal	0 <func_80A01C30>
    1654:	02002025 	move	a0,s0
    1658:	8fbf001c 	lw	ra,28(sp)
    165c:	8fb00018 	lw	s0,24(sp)
    1660:	27bd0028 	addiu	sp,sp,40
    1664:	03e00008 	jr	ra
    1668:	00000000 	nop

0000166c <func_80A0329C>:
    166c:	27bdffc8 	addiu	sp,sp,-56
    1670:	afbf0024 	sw	ra,36(sp)
    1674:	afb00020 	sw	s0,32(sp)
    1678:	afa5003c 	sw	a1,60(sp)
    167c:	8ca21c44 	lw	v0,7236(a1)
    1680:	00808025 	move	s0,a0
    1684:	2484014c 	addiu	a0,a0,332
    1688:	afa20034 	sw	v0,52(sp)
    168c:	0c000000 	jal	0 <func_80A01C30>
    1690:	afa2002c 	sw	v0,44(sp)
    1694:	0c000000 	jal	0 <func_80A01C30>
    1698:	00000000 	nop
    169c:	3c010000 	lui	at,0x0
    16a0:	c4240000 	lwc1	$f4,0(at)
    16a4:	3c014120 	lui	at,0x4120
    16a8:	4604003c 	c.lt.s	$f0,$f4
    16ac:	00000000 	nop
    16b0:	45020011 	bc1fl	16f8 <func_80A0329C+0x8c>
    16b4:	02002025 	move	a0,s0
    16b8:	44816000 	mtc1	at,$f12
    16bc:	0c000000 	jal	0 <func_80A01C30>
    16c0:	00000000 	nop
    16c4:	3c014120 	lui	at,0x4120
    16c8:	44813000 	mtc1	at,$f6
    16cc:	3c014480 	lui	at,0x4480
    16d0:	44816000 	mtc1	at,$f12
    16d4:	46060200 	add.s	$f8,$f0,$f6
    16d8:	0c000000 	jal	0 <func_80A01C30>
    16dc:	e60802b4 	swc1	$f8,692(s0)
    16e0:	4600028d 	trunc.w.s	$f10,$f0
    16e4:	44085000 	mfc1	t0,$f10
    16e8:	00000000 	nop
    16ec:	25090200 	addiu	t1,t0,512
    16f0:	a60902ae 	sh	t1,686(s0)
    16f4:	02002025 	move	a0,s0
    16f8:	0c000000 	jal	0 <func_80A01C30>
    16fc:	8fa5003c 	lw	a1,60(sp)
    1700:	8faa002c 	lw	t2,44(sp)
    1704:	02002025 	move	a0,s0
    1708:	2605028c 	addiu	a1,s0,652
    170c:	c550090c 	lwc1	$f16,2316(t2)
    1710:	0c000000 	jal	0 <func_80A01C30>
    1714:	e6100290 	swc1	$f16,656(s0)
    1718:	02002025 	move	a0,s0
    171c:	0c000000 	jal	0 <func_80A01C30>
    1720:	8fa5003c 	lw	a1,60(sp)
    1724:	860202a8 	lh	v0,680(s0)
    1728:	24010002 	li	at,2
    172c:	02002025 	move	a0,s0
    1730:	10410004 	beq	v0,at,1744 <func_80A0329C+0xd8>
    1734:	8fa5003c 	lw	a1,60(sp)
    1738:	24010003 	li	at,3
    173c:	54410004 	bnel	v0,at,1750 <func_80A0329C+0xe4>
    1740:	02002025 	move	a0,s0
    1744:	0c000000 	jal	0 <func_80A01C30>
    1748:	24060010 	li	a2,16
    174c:	02002025 	move	a0,s0
    1750:	0c000000 	jal	0 <func_80A01C30>
    1754:	8fa5003c 	lw	a1,60(sp)
    1758:	10400005 	beqz	v0,1770 <func_80A0329C+0x104>
    175c:	00000000 	nop
    1760:	0c000000 	jal	0 <func_80A01C30>
    1764:	02002025 	move	a0,s0
    1768:	10000064 	b	18fc <func_80A0329C+0x290>
    176c:	8fbf0024 	lw	ra,36(sp)
    1770:	0c000000 	jal	0 <func_80A01C30>
    1774:	8fa4003c 	lw	a0,60(sp)
    1778:	54400060 	bnezl	v0,18fc <func_80A0329C+0x290>
    177c:	8fbf0024 	lw	ra,36(sp)
    1780:	8fa20034 	lw	v0,52(sp)
    1784:	c6120028 	lwc1	$f18,40(s0)
    1788:	44803000 	mtc1	zero,$f6
    178c:	c4440028 	lwc1	$f4,40(v0)
    1790:	3c014270 	lui	at,0x4270
    1794:	46049001 	sub.s	$f0,$f18,$f4
    1798:	4600303c 	c.lt.s	$f6,$f0
    179c:	00000000 	nop
    17a0:	45020029 	bc1fl	1848 <func_80A0329C+0x1dc>
    17a4:	960302c4 	lhu	v1,708(s0)
    17a8:	44814000 	mtc1	at,$f8
    17ac:	26040024 	addiu	a0,s0,36
    17b0:	24450024 	addiu	a1,v0,36
    17b4:	4608003c 	c.lt.s	$f0,$f8
    17b8:	00000000 	nop
    17bc:	45020022 	bc1fl	1848 <func_80A0329C+0x1dc>
    17c0:	960302c4 	lhu	v1,708(s0)
    17c4:	0c000000 	jal	0 <func_80A01C30>
    17c8:	3c064120 	lui	a2,0x4120
    17cc:	1440001d 	bnez	v0,1844 <func_80A0329C+0x1d8>
    17d0:	8fa4003c 	lw	a0,60(sp)
    17d4:	0c000000 	jal	0 <func_80A01C30>
    17d8:	24050080 	li	a1,128
    17dc:	960b02c4 	lhu	t3,708(s0)
    17e0:	316c0200 	andi	t4,t3,0x200
    17e4:	51800004 	beqzl	t4,17f8 <func_80A0329C+0x18c>
    17e8:	3c014248 	lui	at,0x4248
    17ec:	0c000000 	jal	0 <func_80A01C30>
    17f0:	8fa4003c 	lw	a0,60(sp)
    17f4:	3c014248 	lui	at,0x4248
    17f8:	44815000 	mtc1	at,$f10
    17fc:	3c0141f0 	lui	at,0x41f0
    1800:	44818000 	mtc1	at,$f16
    1804:	e60a02b8 	swc1	$f10,696(s0)
    1808:	8fad0034 	lw	t5,52(sp)
    180c:	44809000 	mtc1	zero,$f18
    1810:	240ff000 	li	t7,-4096
    1814:	85ae00b6 	lh	t6,182(t5)
    1818:	3c050000 	lui	a1,0x0
    181c:	a60f02b0 	sh	t7,688(s0)
    1820:	a60002aa 	sh	zero,682(s0)
    1824:	24a50000 	addiu	a1,a1,0
    1828:	02002025 	move	a0,s0
    182c:	e6100290 	swc1	$f16,656(s0)
    1830:	e61202b4 	swc1	$f18,692(s0)
    1834:	0c000000 	jal	0 <func_80A01C30>
    1838:	a60e02ac 	sh	t6,684(s0)
    183c:	1000002f 	b	18fc <func_80A0329C+0x290>
    1840:	8fbf0024 	lw	ra,36(sp)
    1844:	960302c4 	lhu	v1,708(s0)
    1848:	30780100 	andi	t8,v1,0x100
    184c:	53000021 	beqzl	t8,18d4 <func_80A0329C+0x268>
    1850:	306a0200 	andi	t2,v1,0x200
    1854:	860202c2 	lh	v0,706(s0)
    1858:	18400005 	blez	v0,1870 <func_80A0329C+0x204>
    185c:	2448ffff 	addiu	t0,v0,-1
    1860:	2459ffff 	addiu	t9,v0,-1
    1864:	a61902c2 	sh	t9,706(s0)
    1868:	10000019 	b	18d0 <func_80A0329C+0x264>
    186c:	960302c4 	lhu	v1,708(s0)
    1870:	a60802c2 	sh	t0,706(s0)
    1874:	860202c2 	lh	v0,706(s0)
    1878:	2841fff7 	slti	at,v0,-9
    187c:	14200010 	bnez	at,18c0 <func_80A0329C+0x254>
    1880:	2449000a 	addiu	t1,v0,10
    1884:	44892000 	mtc1	t1,$f4
    1888:	3c010000 	lui	at,0x0
    188c:	c4280000 	lwc1	$f8,0(at)
    1890:	468021a0 	cvt.s.w	$f6,$f4
    1894:	3c010000 	lui	at,0x0
    1898:	c4300000 	lwc1	$f16,0(at)
    189c:	02002025 	move	a0,s0
    18a0:	46083282 	mul.s	$f10,$f6,$f8
    18a4:	00000000 	nop
    18a8:	46105482 	mul.s	$f18,$f10,$f16
    18ac:	44059000 	mfc1	a1,$f18
    18b0:	0c000000 	jal	0 <func_80A01C30>
    18b4:	00000000 	nop
    18b8:	10000005 	b	18d0 <func_80A0329C+0x264>
    18bc:	960302c4 	lhu	v1,708(s0)
    18c0:	0c000000 	jal	0 <func_80A01C30>
    18c4:	02002025 	move	a0,s0
    18c8:	1000000c 	b	18fc <func_80A0329C+0x290>
    18cc:	8fbf0024 	lw	ra,36(sp)
    18d0:	306a0200 	andi	t2,v1,0x200
    18d4:	15400008 	bnez	t2,18f8 <func_80A0329C+0x28c>
    18d8:	02002025 	move	a0,s0
    18dc:	3c014270 	lui	at,0x4270
    18e0:	44812000 	mtc1	at,$f4
    18e4:	8fa5003c 	lw	a1,60(sp)
    18e8:	2406007e 	li	a2,126
    18ec:	3c0742a0 	lui	a3,0x42a0
    18f0:	0c000000 	jal	0 <func_80A01C30>
    18f4:	e7a40010 	swc1	$f4,16(sp)
    18f8:	8fbf0024 	lw	ra,36(sp)
    18fc:	8fb00020 	lw	s0,32(sp)
    1900:	27bd0038 	addiu	sp,sp,56
    1904:	03e00008 	jr	ra
    1908:	00000000 	nop

0000190c <func_80A0353C>:
    190c:	27bdffc8 	addiu	sp,sp,-56
    1910:	afb00018 	sw	s0,24(sp)
    1914:	00808025 	move	s0,a0
    1918:	afbf001c 	sw	ra,28(sp)
    191c:	afa5003c 	sw	a1,60(sp)
    1920:	0c000000 	jal	0 <func_80A01C30>
    1924:	2484014c 	addiu	a0,a0,332
    1928:	02002025 	move	a0,s0
    192c:	0c000000 	jal	0 <func_80A01C30>
    1930:	8fa5003c 	lw	a1,60(sp)
    1934:	8e030118 	lw	v1,280(s0)
    1938:	1060001b 	beqz	v1,19a8 <func_80A0353C+0x9c>
    193c:	00000000 	nop
    1940:	8c6e0130 	lw	t6,304(v1)
    1944:	11c00018 	beqz	t6,19a8 <func_80A0353C+0x9c>
    1948:	00000000 	nop
    194c:	8c780024 	lw	t8,36(v1)
    1950:	27a5002c 	addiu	a1,sp,44
    1954:	3c010000 	lui	at,0x0
    1958:	acb80000 	sw	t8,0(a1)
    195c:	8c6f0028 	lw	t7,40(v1)
    1960:	3c063e4c 	lui	a2,0x3e4c
    1964:	34c6cccd 	ori	a2,a2,0xcccd
    1968:	acaf0004 	sw	t7,4(a1)
    196c:	8c78002c 	lw	t8,44(v1)
    1970:	02002025 	move	a0,s0
    1974:	acb80008 	sw	t8,8(a1)
    1978:	c6060054 	lwc1	$f6,84(s0)
    197c:	c4240000 	lwc1	$f4,0(at)
    1980:	3c014220 	lui	at,0x4220
    1984:	44815000 	mtc1	at,$f10
    1988:	46062202 	mul.s	$f8,$f4,$f6
    198c:	c7b20030 	lwc1	$f18,48(sp)
    1990:	460a4400 	add.s	$f16,$f8,$f10
    1994:	46109100 	add.s	$f4,$f18,$f16
    1998:	0c000000 	jal	0 <func_80A01C30>
    199c:	e7a40030 	swc1	$f4,48(sp)
    19a0:	10000004 	b	19b4 <func_80A0353C+0xa8>
    19a4:	c60c0064 	lwc1	$f12,100(s0)
    19a8:	0c000000 	jal	0 <func_80A01C30>
    19ac:	02002025 	move	a0,s0
    19b0:	c60c0064 	lwc1	$f12,100(s0)
    19b4:	0c000000 	jal	0 <func_80A01C30>
    19b8:	c60e005c 	lwc1	$f14,92(s0)
    19bc:	a60202bc 	sh	v0,700(s0)
    19c0:	8fbf001c 	lw	ra,28(sp)
    19c4:	8fb00018 	lw	s0,24(sp)
    19c8:	27bd0038 	addiu	sp,sp,56
    19cc:	03e00008 	jr	ra
    19d0:	00000000 	nop

000019d4 <func_80A03604>:
    19d4:	afa40000 	sw	a0,0(sp)
    19d8:	03e00008 	jr	ra
    19dc:	afa50004 	sw	a1,4(sp)

000019e0 <func_80A03610>:
    19e0:	27bdffd0 	addiu	sp,sp,-48
    19e4:	afbf0024 	sw	ra,36(sp)
    19e8:	afb00020 	sw	s0,32(sp)
    19ec:	afa50034 	sw	a1,52(sp)
    19f0:	8caf1c44 	lw	t7,7236(a1)
    19f4:	00808025 	move	s0,a0
    19f8:	2484014c 	addiu	a0,a0,332
    19fc:	0c000000 	jal	0 <func_80A01C30>
    1a00:	afaf002c 	sw	t7,44(sp)
    1a04:	3c013f80 	lui	at,0x3f80
    1a08:	44812000 	mtc1	at,$f4
    1a0c:	3c063dcc 	lui	a2,0x3dcc
    1a10:	34c6cccd 	ori	a2,a2,0xcccd
    1a14:	260402b8 	addiu	a0,s0,696
    1a18:	3c0541f0 	lui	a1,0x41f0
    1a1c:	3c074080 	lui	a3,0x4080
    1a20:	0c000000 	jal	0 <func_80A01C30>
    1a24:	e7a40010 	swc1	$f4,16(sp)
    1a28:	0c000000 	jal	0 <func_80A01C30>
    1a2c:	860402ac 	lh	a0,684(s0)
    1a30:	c60602b8 	lwc1	$f6,696(s0)
    1a34:	c60202b4 	lwc1	$f2,692(s0)
    1a38:	c60a0290 	lwc1	$f10,656(s0)
    1a3c:	46060202 	mul.s	$f8,$f0,$f6
    1a40:	860302aa 	lh	v1,682(s0)
    1a44:	46025400 	add.s	$f16,$f10,$f2
    1a48:	3c014000 	lui	at,0x4000
    1a4c:	00601025 	move	v0,v1
    1a50:	e6100290 	swc1	$f16,656(s0)
    1a54:	10600006 	beqz	v1,1a70 <func_80A03610+0x90>
    1a58:	e608028c 	swc1	$f8,652(s0)
    1a5c:	24010001 	li	at,1
    1a60:	50410011 	beql	v0,at,1aa8 <func_80A03610+0xc8>
    1a64:	3c01bf80 	lui	at,0xbf80
    1a68:	10000018 	b	1acc <func_80A03610+0xec>
    1a6c:	00000000 	nop
    1a70:	44819000 	mtc1	at,$f18
    1a74:	3c010000 	lui	at,0x0
    1a78:	24780001 	addiu	t8,v1,1
    1a7c:	4612103c 	c.lt.s	$f2,$f18
    1a80:	00000000 	nop
    1a84:	45000005 	bc1f	1a9c <func_80A03610+0xbc>
    1a88:	00000000 	nop
    1a8c:	c4240000 	lwc1	$f4,0(at)
    1a90:	46041180 	add.s	$f6,$f2,$f4
    1a94:	1000000d 	b	1acc <func_80A03610+0xec>
    1a98:	e60602b4 	swc1	$f6,692(s0)
    1a9c:	1000000b 	b	1acc <func_80A03610+0xec>
    1aa0:	a61802aa 	sh	t8,682(s0)
    1aa4:	3c01bf80 	lui	at,0xbf80
    1aa8:	44814000 	mtc1	at,$f8
    1aac:	3c010000 	lui	at,0x0
    1ab0:	4602403c 	c.lt.s	$f8,$f2
    1ab4:	00000000 	nop
    1ab8:	45000004 	bc1f	1acc <func_80A03610+0xec>
    1abc:	00000000 	nop
    1ac0:	c42a0000 	lwc1	$f10,0(at)
    1ac4:	460a1401 	sub.s	$f16,$f2,$f10
    1ac8:	e61002b4 	swc1	$f16,692(s0)
    1acc:	0c000000 	jal	0 <func_80A01C30>
    1ad0:	860402ac 	lh	a0,684(s0)
    1ad4:	c61202b8 	lwc1	$f18,696(s0)
    1ad8:	861902ac 	lh	t9,684(s0)
    1adc:	860802b0 	lh	t0,688(s0)
    1ae0:	46009107 	neg.s	$f4,$f18
    1ae4:	3c063e4c 	lui	a2,0x3e4c
    1ae8:	46040182 	mul.s	$f6,$f0,$f4
    1aec:	03284821 	addu	t1,t9,t0
    1af0:	a60902ac 	sh	t1,684(s0)
    1af4:	34c6cccd 	ori	a2,a2,0xcccd
    1af8:	02002025 	move	a0,s0
    1afc:	e6060294 	swc1	$f6,660(s0)
    1b00:	8fa5002c 	lw	a1,44(sp)
    1b04:	0c000000 	jal	0 <func_80A01C30>
    1b08:	24a50024 	addiu	a1,a1,36
    1b0c:	44801000 	mtc1	zero,$f2
    1b10:	c60802b4 	lwc1	$f8,692(s0)
    1b14:	3c0141a0 	lui	at,0x41a0
    1b18:	4602403c 	c.lt.s	$f8,$f2
    1b1c:	00000000 	nop
    1b20:	45020016 	bc1fl	1b7c <func_80A03610+0x19c>
    1b24:	3c01c120 	lui	at,0xc120
    1b28:	c6000290 	lwc1	$f0,656(s0)
    1b2c:	44815000 	mtc1	at,$f10
    1b30:	00000000 	nop
    1b34:	460a003c 	c.lt.s	$f0,$f10
    1b38:	00000000 	nop
    1b3c:	4502000f 	bc1fl	1b7c <func_80A03610+0x19c>
    1b40:	3c01c120 	lui	at,0xc120
    1b44:	4600103c 	c.lt.s	$f2,$f0
    1b48:	3c010000 	lui	at,0x0
    1b4c:	4502000b 	bc1fl	1b7c <func_80A03610+0x19c>
    1b50:	3c01c120 	lui	at,0xc120
    1b54:	c4300000 	lwc1	$f16,0(at)
    1b58:	3c010000 	lui	at,0x0
    1b5c:	c4240000 	lwc1	$f4,0(at)
    1b60:	46100482 	mul.s	$f18,$f0,$f16
    1b64:	02002025 	move	a0,s0
    1b68:	46049182 	mul.s	$f6,$f18,$f4
    1b6c:	44053000 	mfc1	a1,$f6
    1b70:	0c000000 	jal	0 <func_80A01C30>
    1b74:	00000000 	nop
    1b78:	3c01c120 	lui	at,0xc120
    1b7c:	44815000 	mtc1	at,$f10
    1b80:	c6080290 	lwc1	$f8,656(s0)
    1b84:	460a403c 	c.lt.s	$f8,$f10
    1b88:	00000000 	nop
    1b8c:	45020006 	bc1fl	1ba8 <func_80A03610+0x1c8>
    1b90:	c60c0064 	lwc1	$f12,100(s0)
    1b94:	0c000000 	jal	0 <func_80A01C30>
    1b98:	02002025 	move	a0,s0
    1b9c:	1000000d 	b	1bd4 <func_80A03610+0x1f4>
    1ba0:	8fbf0024 	lw	ra,36(sp)
    1ba4:	c60c0064 	lwc1	$f12,100(s0)
    1ba8:	0c000000 	jal	0 <func_80A01C30>
    1bac:	c60e005c 	lwc1	$f14,92(s0)
    1bb0:	a60202bc 	sh	v0,700(s0)
    1bb4:	8fa50034 	lw	a1,52(sp)
    1bb8:	02002025 	move	a0,s0
    1bbc:	0c000000 	jal	0 <func_80A01C30>
    1bc0:	24060020 	li	a2,32
    1bc4:	02002025 	move	a0,s0
    1bc8:	0c000000 	jal	0 <func_80A01C30>
    1bcc:	240520a8 	li	a1,8360
    1bd0:	8fbf0024 	lw	ra,36(sp)
    1bd4:	8fb00020 	lw	s0,32(sp)
    1bd8:	27bd0030 	addiu	sp,sp,48
    1bdc:	03e00008 	jr	ra
    1be0:	00000000 	nop

00001be4 <func_80A03814>:
    1be4:	27bdffd8 	addiu	sp,sp,-40
    1be8:	afbf001c 	sw	ra,28(sp)
    1bec:	afb00018 	sw	s0,24(sp)
    1bf0:	afa5002c 	sw	a1,44(sp)
    1bf4:	8caf1c44 	lw	t7,7236(a1)
    1bf8:	00808025 	move	s0,a0
    1bfc:	2484014c 	addiu	a0,a0,332
    1c00:	0c000000 	jal	0 <func_80A01C30>
    1c04:	afaf0024 	sw	t7,36(sp)
    1c08:	3c014348 	lui	at,0x4348
    1c0c:	44812000 	mtc1	at,$f4
    1c10:	c6000290 	lwc1	$f0,656(s0)
    1c14:	4600203c 	c.lt.s	$f4,$f0
    1c18:	00000000 	nop
    1c1c:	45020006 	bc1fl	1c38 <func_80A03814+0x54>
    1c20:	860202ae 	lh	v0,686(s0)
    1c24:	0c000000 	jal	0 <func_80A01C30>
    1c28:	02002025 	move	a0,s0
    1c2c:	10000048 	b	1d50 <func_80A03814+0x16c>
    1c30:	8fbf001c 	lw	ra,28(sp)
    1c34:	860202ae 	lh	v0,686(s0)
    1c38:	2841007e 	slti	at,v0,126
    1c3c:	1420000e 	bnez	at,1c78 <func_80A03814+0x94>
    1c40:	3c010000 	lui	at,0x0
    1c44:	c4280000 	lwc1	$f8,0(at)
    1c48:	3c013f00 	lui	at,0x3f00
    1c4c:	44819000 	mtc1	at,$f18
    1c50:	c61002b4 	lwc1	$f16,692(s0)
    1c54:	c60602b8 	lwc1	$f6,696(s0)
    1c58:	46128100 	add.s	$f4,$f16,$f18
    1c5c:	46083280 	add.s	$f10,$f6,$f8
    1c60:	e60402b4 	swc1	$f4,692(s0)
    1c64:	c60602b4 	lwc1	$f6,692(s0)
    1c68:	e60a02b8 	swc1	$f10,696(s0)
    1c6c:	46060200 	add.s	$f8,$f0,$f6
    1c70:	10000018 	b	1cd4 <func_80A03814+0xf0>
    1c74:	e6080290 	swc1	$f8,656(s0)
    1c78:	3c0141f0 	lui	at,0x41f0
    1c7c:	44815000 	mtc1	at,$f10
    1c80:	c60002b8 	lwc1	$f0,696(s0)
    1c84:	24580001 	addiu	t8,v0,1
    1c88:	44802000 	mtc1	zero,$f4
    1c8c:	460a003c 	c.lt.s	$f0,$f10
    1c90:	a61802ae 	sh	t8,686(s0)
    1c94:	3c013f00 	lui	at,0x3f00
    1c98:	45020006 	bc1fl	1cb4 <func_80A03814+0xd0>
    1c9c:	c6000290 	lwc1	$f0,656(s0)
    1ca0:	44818000 	mtc1	at,$f16
    1ca4:	00000000 	nop
    1ca8:	46100480 	add.s	$f18,$f0,$f16
    1cac:	e61202b8 	swc1	$f18,696(s0)
    1cb0:	c6000290 	lwc1	$f0,656(s0)
    1cb4:	3c010000 	lui	at,0x0
    1cb8:	4600203c 	c.lt.s	$f4,$f0
    1cbc:	00000000 	nop
    1cc0:	45000004 	bc1f	1cd4 <func_80A03814+0xf0>
    1cc4:	00000000 	nop
    1cc8:	c4260000 	lwc1	$f6,0(at)
    1ccc:	46060201 	sub.s	$f8,$f0,$f6
    1cd0:	e6080290 	swc1	$f8,656(s0)
    1cd4:	0c000000 	jal	0 <func_80A01C30>
    1cd8:	860402ac 	lh	a0,684(s0)
    1cdc:	c60a02b8 	lwc1	$f10,696(s0)
    1ce0:	860402ac 	lh	a0,684(s0)
    1ce4:	460a0402 	mul.s	$f16,$f0,$f10
    1ce8:	0c000000 	jal	0 <func_80A01C30>
    1cec:	e610028c 	swc1	$f16,652(s0)
    1cf0:	c61202b8 	lwc1	$f18,696(s0)
    1cf4:	861902ac 	lh	t9,684(s0)
    1cf8:	860802b0 	lh	t0,688(s0)
    1cfc:	46009107 	neg.s	$f4,$f18
    1d00:	02002025 	move	a0,s0
    1d04:	46040182 	mul.s	$f6,$f0,$f4
    1d08:	03284821 	addu	t1,t9,t0
    1d0c:	a60902ac 	sh	t1,684(s0)
    1d10:	e6060294 	swc1	$f6,660(s0)
    1d14:	8fa50024 	lw	a1,36(sp)
    1d18:	0c000000 	jal	0 <func_80A01C30>
    1d1c:	24a50908 	addiu	a1,a1,2312
    1d20:	c60c0064 	lwc1	$f12,100(s0)
    1d24:	0c000000 	jal	0 <func_80A01C30>
    1d28:	c60e005c 	lwc1	$f14,92(s0)
    1d2c:	a60202bc 	sh	v0,700(s0)
    1d30:	8fa5002c 	lw	a1,44(sp)
    1d34:	02002025 	move	a0,s0
    1d38:	0c000000 	jal	0 <func_80A01C30>
    1d3c:	24060020 	li	a2,32
    1d40:	02002025 	move	a0,s0
    1d44:	0c000000 	jal	0 <func_80A01C30>
    1d48:	240520a8 	li	a1,8360
    1d4c:	8fbf001c 	lw	ra,28(sp)
    1d50:	8fb00018 	lw	s0,24(sp)
    1d54:	27bd0028 	addiu	sp,sp,40
    1d58:	03e00008 	jr	ra
    1d5c:	00000000 	nop

00001d60 <func_80A03990>:
    1d60:	27bdffd8 	addiu	sp,sp,-40
    1d64:	afbf001c 	sw	ra,28(sp)
    1d68:	afb00018 	sw	s0,24(sp)
    1d6c:	afa5002c 	sw	a1,44(sp)
    1d70:	8caf1c44 	lw	t7,7236(a1)
    1d74:	00808025 	move	s0,a0
    1d78:	2484014c 	addiu	a0,a0,332
    1d7c:	0c000000 	jal	0 <func_80A01C30>
    1d80:	afaf0024 	sw	t7,36(sp)
    1d84:	c60002b4 	lwc1	$f0,692(s0)
    1d88:	c6040290 	lwc1	$f4,656(s0)
    1d8c:	44801000 	mtc1	zero,$f2
    1d90:	3c010000 	lui	at,0x0
    1d94:	46002180 	add.s	$f6,$f4,$f0
    1d98:	e6020294 	swc1	$f2,660(s0)
    1d9c:	e602028c 	swc1	$f2,652(s0)
    1da0:	02002025 	move	a0,s0
    1da4:	e6060290 	swc1	$f6,656(s0)
    1da8:	c4280000 	lwc1	$f8,0(at)
    1dac:	3c050000 	lui	a1,0x0
    1db0:	46080281 	sub.s	$f10,$f0,$f8
    1db4:	e60a02b4 	swc1	$f10,692(s0)
    1db8:	c61002b4 	lwc1	$f16,692(s0)
    1dbc:	4602803e 	c.le.s	$f16,$f2
    1dc0:	00000000 	nop
    1dc4:	4502000c 	bc1fl	1df8 <func_80A03990+0x98>
    1dc8:	8fa50024 	lw	a1,36(sp)
    1dcc:	0c000000 	jal	0 <func_80A01C30>
    1dd0:	24a50000 	addiu	a1,a1,0
    1dd4:	3c013f80 	lui	at,0x3f80
    1dd8:	44801000 	mtc1	zero,$f2
    1ddc:	44819000 	mtc1	at,$f18
    1de0:	24180800 	li	t8,2048
    1de4:	a61802b0 	sh	t8,688(s0)
    1de8:	a60002ae 	sh	zero,686(s0)
    1dec:	e60202b4 	swc1	$f2,692(s0)
    1df0:	e61202b8 	swc1	$f18,696(s0)
    1df4:	8fa50024 	lw	a1,36(sp)
    1df8:	02002025 	move	a0,s0
    1dfc:	0c000000 	jal	0 <func_80A01C30>
    1e00:	24a50908 	addiu	a1,a1,2312
    1e04:	c60002b4 	lwc1	$f0,692(s0)
    1e08:	3c010000 	lui	at,0x0
    1e0c:	c4260000 	lwc1	$f6,0(at)
    1e10:	46000102 	mul.s	$f4,$f0,$f0
    1e14:	3c013f80 	lui	at,0x3f80
    1e18:	44815000 	mtc1	at,$f10
    1e1c:	3c010000 	lui	at,0x0
    1e20:	c4320000 	lwc1	$f18,0(at)
    1e24:	02002025 	move	a0,s0
    1e28:	46062202 	mul.s	$f8,$f4,$f6
    1e2c:	46085401 	sub.s	$f16,$f10,$f8
    1e30:	46128102 	mul.s	$f4,$f16,$f18
    1e34:	44052000 	mfc1	a1,$f4
    1e38:	0c000000 	jal	0 <func_80A01C30>
    1e3c:	00000000 	nop
    1e40:	c60c0064 	lwc1	$f12,100(s0)
    1e44:	0c000000 	jal	0 <func_80A01C30>
    1e48:	c60e005c 	lwc1	$f14,92(s0)
    1e4c:	a60202bc 	sh	v0,700(s0)
    1e50:	8fa5002c 	lw	a1,44(sp)
    1e54:	02002025 	move	a0,s0
    1e58:	0c000000 	jal	0 <func_80A01C30>
    1e5c:	24060020 	li	a2,32
    1e60:	02002025 	move	a0,s0
    1e64:	0c000000 	jal	0 <func_80A01C30>
    1e68:	240520a8 	li	a1,8360
    1e6c:	8fbf001c 	lw	ra,28(sp)
    1e70:	8fb00018 	lw	s0,24(sp)
    1e74:	27bd0028 	addiu	sp,sp,40
    1e78:	03e00008 	jr	ra
    1e7c:	00000000 	nop

00001e80 <func_80A03AB0>:
    1e80:	27bdffe0 	addiu	sp,sp,-32
    1e84:	afbf001c 	sw	ra,28(sp)
    1e88:	afb00018 	sw	s0,24(sp)
    1e8c:	afa50024 	sw	a1,36(sp)
    1e90:	948e02c4 	lhu	t6,708(a0)
    1e94:	00808025 	move	s0,a0
    1e98:	31cf0004 	andi	t7,t6,0x4
    1e9c:	11e00003 	beqz	t7,1eac <func_80A03AB0+0x2c>
    1ea0:	00000000 	nop
    1ea4:	0c000000 	jal	0 <func_80A01C30>
    1ea8:	00000000 	nop
    1eac:	0c000000 	jal	0 <func_80A01C30>
    1eb0:	2604014c 	addiu	a0,s0,332
    1eb4:	8e0202c8 	lw	v0,712(s0)
    1eb8:	3c040000 	lui	a0,0x0
    1ebc:	24840000 	addiu	a0,a0,0
    1ec0:	14400005 	bnez	v0,1ed8 <func_80A03AB0+0x58>
    1ec4:	3c050000 	lui	a1,0x0
    1ec8:	24a50000 	addiu	a1,a1,0
    1ecc:	0c000000 	jal	0 <func_80A01C30>
    1ed0:	240606bd 	li	a2,1725
    1ed4:	8e0202c8 	lw	v0,712(s0)
    1ed8:	02002025 	move	a0,s0
    1edc:	0040f809 	jalr	v0
    1ee0:	8fa50024 	lw	a1,36(sp)
    1ee4:	8fbf001c 	lw	ra,28(sp)
    1ee8:	8fb00018 	lw	s0,24(sp)
    1eec:	27bd0020 	addiu	sp,sp,32
    1ef0:	03e00008 	jr	ra
    1ef4:	00000000 	nop

00001ef8 <func_80A03B28>:
    1ef8:	27bdffc8 	addiu	sp,sp,-56
    1efc:	afbf002c 	sw	ra,44(sp)
    1f00:	afb00028 	sw	s0,40(sp)
    1f04:	afa5003c 	sw	a1,60(sp)
    1f08:	848e02a8 	lh	t6,680(a0)
    1f0c:	24010008 	li	at,8
    1f10:	00808025 	move	s0,a0
    1f14:	15c10002 	bne	t6,at,1f20 <func_80A03B28+0x28>
    1f18:	24030064 	li	v1,100
    1f1c:	00001825 	move	v1,zero
    1f20:	960f02c4 	lhu	t7,708(s0)
    1f24:	26040278 	addiu	a0,s0,632
    1f28:	240c00ff 	li	t4,255
    1f2c:	31f80020 	andi	t8,t7,0x20
    1f30:	13000029 	beqz	t8,1fd8 <func_80A03B28+0xe0>
    1f34:	240d00ff 	li	t5,255
    1f38:	8fb9003c 	lw	t9,60(sp)
    1f3c:	3c014270 	lui	at,0x4270
    1f40:	240f00ff 	li	t7,255
    1f44:	8f221c44 	lw	v0,7236(t9)
    1f48:	241900ff 	li	t9,255
    1f4c:	241800ff 	li	t8,255
    1f50:	c4480028 	lwc1	$f8,40(v0)
    1f54:	c4440024 	lwc1	$f4,36(v0)
    1f58:	240800c8 	li	t0,200
    1f5c:	4600428d 	trunc.w.s	$f10,$f8
    1f60:	26040278 	addiu	a0,s0,632
    1f64:	4600218d 	trunc.w.s	$f6,$f4
    1f68:	440a5000 	mfc1	t2,$f10
    1f6c:	44812000 	mtc1	at,$f4
    1f70:	c44a002c 	lwc1	$f10,44(v0)
    1f74:	000a5c00 	sll	t3,t2,0x10
    1f78:	000b6403 	sra	t4,t3,0x10
    1f7c:	448c8000 	mtc1	t4,$f16
    1f80:	44053000 	mfc1	a1,$f6
    1f84:	a7a30036 	sh	v1,54(sp)
    1f88:	468084a0 	cvt.s.w	$f18,$f16
    1f8c:	00052c00 	sll	a1,a1,0x10
    1f90:	00052c03 	sra	a1,a1,0x10
    1f94:	afa8001c 	sw	t0,28(sp)
    1f98:	afb90018 	sw	t9,24(sp)
    1f9c:	4600540d 	trunc.w.s	$f16,$f10
    1fa0:	afb80014 	sw	t8,20(sp)
    1fa4:	afaf0010 	sw	t7,16(sp)
    1fa8:	46049180 	add.s	$f6,$f18,$f4
    1fac:	44078000 	mfc1	a3,$f16
    1fb0:	4600320d 	trunc.w.s	$f8,$f6
    1fb4:	00073c00 	sll	a3,a3,0x10
    1fb8:	00073c03 	sra	a3,a3,0x10
    1fbc:	44064000 	mfc1	a2,$f8
    1fc0:	00000000 	nop
    1fc4:	00063400 	sll	a2,a2,0x10
    1fc8:	0c000000 	jal	0 <func_80A01C30>
    1fcc:	00063403 	sra	a2,a2,0x10
    1fd0:	10000019 	b	2038 <func_80A03B28+0x140>
    1fd4:	87a30036 	lh	v1,54(sp)
    1fd8:	c6120024 	lwc1	$f18,36(s0)
    1fdc:	c6060028 	lwc1	$f6,40(s0)
    1fe0:	c60a002c 	lwc1	$f10,44(s0)
    1fe4:	4600910d 	trunc.w.s	$f4,$f18
    1fe8:	240e00ff 	li	t6,255
    1fec:	240fffff 	li	t7,-1
    1ff0:	4600320d 	trunc.w.s	$f8,$f6
    1ff4:	44052000 	mfc1	a1,$f4
    1ff8:	afaf001c 	sw	t7,28(sp)
    1ffc:	4600540d 	trunc.w.s	$f16,$f10
    2000:	44064000 	mfc1	a2,$f8
    2004:	00052c00 	sll	a1,a1,0x10
    2008:	00052c03 	sra	a1,a1,0x10
    200c:	44078000 	mfc1	a3,$f16
    2010:	00063400 	sll	a2,a2,0x10
    2014:	00063403 	sra	a2,a2,0x10
    2018:	00073c00 	sll	a3,a3,0x10
    201c:	00073c03 	sra	a3,a3,0x10
    2020:	afae0018 	sw	t6,24(sp)
    2024:	a7a30036 	sh	v1,54(sp)
    2028:	afad0014 	sw	t5,20(sp)
    202c:	0c000000 	jal	0 <func_80A01C30>
    2030:	afac0010 	sw	t4,16(sp)
    2034:	87a30036 	lh	v1,54(sp)
    2038:	c6120024 	lwc1	$f18,36(s0)
    203c:	c6060028 	lwc1	$f6,40(s0)
    2040:	c60a002c 	lwc1	$f10,44(s0)
    2044:	4600910d 	trunc.w.s	$f4,$f18
    2048:	240900ff 	li	t1,255
    204c:	240a00ff 	li	t2,255
    2050:	4600320d 	trunc.w.s	$f8,$f6
    2054:	44052000 	mfc1	a1,$f4
    2058:	240b00ff 	li	t3,255
    205c:	4600540d 	trunc.w.s	$f16,$f10
    2060:	44064000 	mfc1	a2,$f8
    2064:	00052c00 	sll	a1,a1,0x10
    2068:	00052c03 	sra	a1,a1,0x10
    206c:	44078000 	mfc1	a3,$f16
    2070:	00063400 	sll	a2,a2,0x10
    2074:	00063403 	sra	a2,a2,0x10
    2078:	00073c00 	sll	a3,a3,0x10
    207c:	00073c03 	sra	a3,a3,0x10
    2080:	afab0018 	sw	t3,24(sp)
    2084:	afaa0014 	sw	t2,20(sp)
    2088:	afa90010 	sw	t1,16(sp)
    208c:	afa3001c 	sw	v1,28(sp)
    2090:	0c000000 	jal	0 <func_80A01C30>
    2094:	26040264 	addiu	a0,s0,612
    2098:	c60c0064 	lwc1	$f12,100(s0)
    209c:	0c000000 	jal	0 <func_80A01C30>
    20a0:	c60e005c 	lwc1	$f14,92(s0)
    20a4:	a60202bc 	sh	v0,700(s0)
    20a8:	02002025 	move	a0,s0
    20ac:	0c000000 	jal	0 <func_80A01C30>
    20b0:	8e050050 	lw	a1,80(s0)
    20b4:	8fbf002c 	lw	ra,44(sp)
    20b8:	8fb00028 	lw	s0,40(sp)
    20bc:	27bd0038 	addiu	sp,sp,56
    20c0:	03e00008 	jr	ra
    20c4:	00000000 	nop

000020c8 <func_80A03CF8>:
    20c8:	27bdffa0 	addiu	sp,sp,-96
    20cc:	afbf0024 	sw	ra,36(sp)
    20d0:	afb00020 	sw	s0,32(sp)
    20d4:	8cae1c44 	lw	t6,7236(a1)
    20d8:	00808025 	move	s0,a0
    20dc:	afa50064 	sw	a1,100(sp)
    20e0:	0c000000 	jal	0 <func_80A01C30>
    20e4:	afae0044 	sw	t6,68(sp)
    20e8:	02002025 	move	a0,s0
    20ec:	0c000000 	jal	0 <func_80A01C30>
    20f0:	8fa50064 	lw	a1,100(sp)
    20f4:	44802000 	mtc1	zero,$f4
    20f8:	8faf0064 	lw	t7,100(sp)
    20fc:	8fa70044 	lw	a3,68(sp)
    2100:	e7a4003c 	swc1	$f4,60(sp)
    2104:	91f81d6c 	lbu	t8,7532(t7)
    2108:	24e70968 	addiu	a3,a3,2408
    210c:	00e02025 	move	a0,a3
    2110:	13000056 	beqz	t8,226c <func_80A03CF8+0x1a4>
    2114:	26050024 	addiu	a1,s0,36
    2118:	8df91dac 	lw	t9,7596(t7)
    211c:	24060008 	li	a2,8
    2120:	53200053 	beqzl	t9,2270 <func_80A03CF8+0x1a8>
    2124:	afa50030 	sw	a1,48(sp)
    2128:	27a40054 	addiu	a0,sp,84
    212c:	0c000000 	jal	0 <func_80A01C30>
    2130:	01e02825 	move	a1,t7
    2134:	8fa80064 	lw	t0,100(sp)
    2138:	24010005 	li	at,5
    213c:	02002025 	move	a0,s0
    2140:	8d091dac 	lw	t1,7596(t0)
    2144:	8fa50064 	lw	a1,100(sp)
    2148:	952a0000 	lhu	t2,0(t1)
    214c:	55410004 	bnel	t2,at,2160 <func_80A03CF8+0x98>
    2150:	8e0d0024 	lw	t5,36(s0)
    2154:	0c000000 	jal	0 <func_80A01C30>
    2158:	24060010 	li	a2,16
    215c:	8e0d0024 	lw	t5,36(s0)
    2160:	27ab0048 	addiu	t3,sp,72
    2164:	2401000a 	li	at,10
    2168:	ad6d0000 	sw	t5,0(t3)
    216c:	8e0c0028 	lw	t4,40(s0)
    2170:	02002025 	move	a0,s0
    2174:	27a50054 	addiu	a1,sp,84
    2178:	ad6c0004 	sw	t4,4(t3)
    217c:	8e0d002c 	lw	t5,44(s0)
    2180:	3c063e4c 	lui	a2,0x3e4c
    2184:	ad6d0008 	sw	t5,8(t3)
    2188:	860e02a8 	lh	t6,680(s0)
    218c:	15c10006 	bne	t6,at,21a8 <func_80A03CF8+0xe0>
    2190:	00000000 	nop
    2194:	02002025 	move	a0,s0
    2198:	0c000000 	jal	0 <func_80A01C30>
    219c:	27a50054 	addiu	a1,sp,84
    21a0:	10000004 	b	21b4 <func_80A03CF8+0xec>
    21a4:	8fb80064 	lw	t8,100(sp)
    21a8:	0c000000 	jal	0 <func_80A01C30>
    21ac:	34c6cccd 	ori	a2,a2,0xcccd
    21b0:	8fb80064 	lw	t8,100(sp)
    21b4:	24010034 	li	at,52
    21b8:	3c0f0000 	lui	t7,0x0
    21bc:	871900a4 	lh	t9,164(t8)
    21c0:	17210028 	bne	t9,at,2264 <func_80A03CF8+0x19c>
    21c4:	00000000 	nop
    21c8:	8def1360 	lw	t7,4960(t7)
    21cc:	24010004 	li	at,4
    21d0:	8fa80064 	lw	t0,100(sp)
    21d4:	15e10023 	bne	t7,at,2264 <func_80A03CF8+0x19c>
    21d8:	00000000 	nop
    21dc:	95091d74 	lhu	t1,7540(t0)
    21e0:	24010037 	li	at,55
    21e4:	02002025 	move	a0,s0
    21e8:	55210004 	bnel	t1,at,21fc <func_80A03CF8+0x134>
    21ec:	860a02a8 	lh	t2,680(s0)
    21f0:	0c000000 	jal	0 <func_80A01C30>
    21f4:	2405281b 	li	a1,10267
    21f8:	860a02a8 	lh	t2,680(s0)
    21fc:	24010006 	li	at,6
    2200:	15410018 	bne	t2,at,2264 <func_80A03CF8+0x19c>
    2204:	00000000 	nop
    2208:	960202c4 	lhu	v0,708(s0)
    220c:	c7a6004c 	lwc1	$f6,76(sp)
    2210:	c7b0004c 	lwc1	$f16,76(sp)
    2214:	304b0040 	andi	t3,v0,0x40
    2218:	5160000a 	beqzl	t3,2244 <func_80A03CF8+0x17c>
    221c:	c60a0028 	lwc1	$f10,40(s0)
    2220:	c6080028 	lwc1	$f8,40(s0)
    2224:	304cffbf 	andi	t4,v0,0xffbf
    2228:	4608303c 	c.lt.s	$f6,$f8
    222c:	00000000 	nop
    2230:	4500000c 	bc1f	2264 <func_80A03CF8+0x19c>
    2234:	00000000 	nop
    2238:	1000000a 	b	2264 <func_80A03CF8+0x19c>
    223c:	a60c02c4 	sh	t4,708(s0)
    2240:	c60a0028 	lwc1	$f10,40(s0)
    2244:	344d0040 	ori	t5,v0,0x40
    2248:	02002025 	move	a0,s0
    224c:	4610503c 	c.lt.s	$f10,$f16
    2250:	2405281b 	li	a1,10267
    2254:	45000003 	bc1f	2264 <func_80A03CF8+0x19c>
    2258:	00000000 	nop
    225c:	0c000000 	jal	0 <func_80A01C30>
    2260:	a60d02c4 	sh	t5,708(s0)
    2264:	10000120 	b	26e8 <func_80A03CF8+0x620>
    2268:	860202a8 	lh	v0,680(s0)
    226c:	afa50030 	sw	a1,48(sp)
    2270:	0c000000 	jal	0 <func_80A01C30>
    2274:	afa7002c 	sw	a3,44(sp)
    2278:	860202a8 	lh	v0,680(s0)
    227c:	24010007 	li	at,7
    2280:	8fa7002c 	lw	a3,44(sp)
    2284:	1041000b 	beq	v0,at,22b4 <func_80A03CF8+0x1ec>
    2288:	46000086 	mov.s	$f2,$f0
    228c:	24010008 	li	at,8
    2290:	10410044 	beq	v0,at,23a4 <func_80A03CF8+0x2dc>
    2294:	02002025 	move	a0,s0
    2298:	2401000b 	li	at,11
    229c:	10410053 	beq	v0,at,23ec <func_80A03CF8+0x324>
    22a0:	2401000c 	li	at,12
    22a4:	1041008a 	beq	v0,at,24d0 <func_80A03CF8+0x408>
    22a8:	8fae0064 	lw	t6,100(sp)
    22ac:	100000a4 	b	2540 <func_80A03CF8+0x478>
    22b0:	02002025 	move	a0,s0
    22b4:	860e02ae 	lh	t6,686(s0)
    22b8:	3c010000 	lui	at,0x0
    22bc:	c4260000 	lwc1	$f6,0(at)
    22c0:	448e9000 	mtc1	t6,$f18
    22c4:	3c013f80 	lui	at,0x3f80
    22c8:	44815000 	mtc1	at,$f10
    22cc:	46809120 	cvt.s.w	$f4,$f18
    22d0:	e7a20038 	swc1	$f2,56(sp)
    22d4:	afa7002c 	sw	a3,44(sp)
    22d8:	02002025 	move	a0,s0
    22dc:	00e02825 	move	a1,a3
    22e0:	46062202 	mul.s	$f8,$f4,$f6
    22e4:	46085401 	sub.s	$f16,$f10,$f8
    22e8:	44068000 	mfc1	a2,$f16
    22ec:	0c000000 	jal	0 <func_80A01C30>
    22f0:	00000000 	nop
    22f4:	8fa4002c 	lw	a0,44(sp)
    22f8:	0c000000 	jal	0 <func_80A01C30>
    22fc:	8fa50030 	lw	a1,48(sp)
    2300:	3c0140e0 	lui	at,0x40e0
    2304:	c7a20038 	lwc1	$f2,56(sp)
    2308:	44819000 	mtc1	at,$f18
    230c:	3c0141c8 	lui	at,0x41c8
    2310:	02002025 	move	a0,s0
    2314:	4612103c 	c.lt.s	$f2,$f18
    2318:	24060010 	li	a2,16
    231c:	45020006 	bc1fl	2338 <func_80A03CF8+0x270>
    2320:	44813000 	mtc1	at,$f6
    2324:	44802000 	mtc1	zero,$f4
    2328:	a60002c0 	sh	zero,704(s0)
    232c:	10000019 	b	2394 <func_80A03CF8+0x2cc>
    2330:	e7a4003c 	swc1	$f4,60(sp)
    2334:	44813000 	mtc1	at,$f6
    2338:	3c010000 	lui	at,0x0
    233c:	4606103c 	c.lt.s	$f2,$f6
    2340:	00000000 	nop
    2344:	45000011 	bc1f	238c <func_80A03CF8+0x2c4>
    2348:	00000000 	nop
    234c:	3c013f80 	lui	at,0x3f80
    2350:	44811000 	mtc1	at,$f2
    2354:	3c0140a0 	lui	at,0x40a0
    2358:	44815000 	mtc1	at,$f10
    235c:	3c010000 	lui	at,0x0
    2360:	c4300000 	lwc1	$f16,0(at)
    2364:	460a0201 	sub.s	$f8,$f0,$f10
    2368:	3c010000 	lui	at,0x0
    236c:	c4260000 	lwc1	$f6,0(at)
    2370:	46104302 	mul.s	$f12,$f8,$f16
    2374:	460c1301 	sub.s	$f12,$f2,$f12
    2378:	460c6482 	mul.s	$f18,$f12,$f12
    237c:	46121101 	sub.s	$f4,$f2,$f18
    2380:	46062302 	mul.s	$f12,$f4,$f6
    2384:	10000003 	b	2394 <func_80A03CF8+0x2cc>
    2388:	e7ac003c 	swc1	$f12,60(sp)
    238c:	c42a0000 	lwc1	$f10,0(at)
    2390:	e7aa003c 	swc1	$f10,60(sp)
    2394:	0c000000 	jal	0 <func_80A01C30>
    2398:	8fa50064 	lw	a1,100(sp)
    239c:	100000d2 	b	26e8 <func_80A03CF8+0x620>
    23a0:	860202a8 	lh	v0,680(s0)
    23a4:	3c063e4c 	lui	a2,0x3e4c
    23a8:	34c6cccd 	ori	a2,a2,0xcccd
    23ac:	00e02825 	move	a1,a3
    23b0:	0c000000 	jal	0 <func_80A01C30>
    23b4:	afa7002c 	sw	a3,44(sp)
    23b8:	8fa7002c 	lw	a3,44(sp)
    23bc:	8fb80030 	lw	t8,48(sp)
    23c0:	02002025 	move	a0,s0
    23c4:	8cef0000 	lw	t7,0(a3)
    23c8:	24050001 	li	a1,1
    23cc:	af0f0000 	sw	t7,0(t8)
    23d0:	8cf90004 	lw	t9,4(a3)
    23d4:	af190004 	sw	t9,4(t8)
    23d8:	8cef0008 	lw	t7,8(a3)
    23dc:	0c000000 	jal	0 <func_80A01C30>
    23e0:	af0f0008 	sw	t7,8(t8)
    23e4:	100000c0 	b	26e8 <func_80A03CF8+0x620>
    23e8:	860202a8 	lh	v0,680(s0)
    23ec:	8cea0000 	lw	t2,0(a3)
    23f0:	27a80054 	addiu	t0,sp,84
    23f4:	3c010000 	lui	at,0x0
    23f8:	ad0a0000 	sw	t2,0(t0)
    23fc:	8ce90004 	lw	t1,4(a3)
    2400:	02002025 	move	a0,s0
    2404:	27a50054 	addiu	a1,sp,84
    2408:	ad090004 	sw	t1,4(t0)
    240c:	8cea0008 	lw	t2,8(a3)
    2410:	ad0a0008 	sw	t2,8(t0)
    2414:	c6100054 	lwc1	$f16,84(s0)
    2418:	c4280000 	lwc1	$f8,0(at)
    241c:	c7a40058 	lwc1	$f4,88(sp)
    2420:	46104482 	mul.s	$f18,$f8,$f16
    2424:	46122180 	add.s	$f6,$f4,$f18
    2428:	0c000000 	jal	0 <func_80A01C30>
    242c:	e7a60058 	swc1	$f6,88(sp)
    2430:	02002025 	move	a0,s0
    2434:	8fa50064 	lw	a1,100(sp)
    2438:	0c000000 	jal	0 <func_80A01C30>
    243c:	24060010 	li	a2,16
    2440:	3c014198 	lui	at,0x4198
    2444:	44815000 	mtc1	at,$f10
    2448:	c60002b8 	lwc1	$f0,696(s0)
    244c:	3c013f80 	lui	at,0x3f80
    2450:	02002025 	move	a0,s0
    2454:	460a003e 	c.le.s	$f0,$f10
    2458:	24050001 	li	a1,1
    245c:	45020007 	bc1fl	247c <func_80A03CF8+0x3b4>
    2460:	3c0141a8 	lui	at,0x41a8
    2464:	44814000 	mtc1	at,$f8
    2468:	00000000 	nop
    246c:	46080400 	add.s	$f16,$f0,$f8
    2470:	e61002b8 	swc1	$f16,696(s0)
    2474:	c60002b8 	lwc1	$f0,696(s0)
    2478:	3c0141a8 	lui	at,0x41a8
    247c:	44812000 	mtc1	at,$f4
    2480:	3c013f80 	lui	at,0x3f80
    2484:	4600203e 	c.le.s	$f4,$f0
    2488:	00000000 	nop
    248c:	45020006 	bc1fl	24a8 <func_80A03CF8+0x3e0>
    2490:	860202c0 	lh	v0,704(s0)
    2494:	44819000 	mtc1	at,$f18
    2498:	00000000 	nop
    249c:	46120181 	sub.s	$f6,$f0,$f18
    24a0:	e60602b8 	swc1	$f6,696(s0)
    24a4:	860202c0 	lh	v0,704(s0)
    24a8:	28410020 	slti	at,v0,32
    24ac:	10200006 	beqz	at,24c8 <func_80A03CF8+0x400>
    24b0:	00025900 	sll	t3,v0,0x4
    24b4:	01625823 	subu	t3,t3,v0
    24b8:	000b5900 	sll	t3,t3,0x4
    24bc:	256c0200 	addiu	t4,t3,512
    24c0:	0c000000 	jal	0 <func_80A01C30>
    24c4:	a60c02b0 	sh	t4,688(s0)
    24c8:	10000087 	b	26e8 <func_80A03CF8+0x620>
    24cc:	860202a8 	lh	v0,680(s0)
    24d0:	85d807a0 	lh	t8,1952(t6)
    24d4:	27ad0054 	addiu	t5,sp,84
    24d8:	3c01c4fa 	lui	at,0xc4fa
    24dc:	0018c880 	sll	t9,t8,0x2
    24e0:	01d97821 	addu	t7,t6,t9
    24e4:	8de80790 	lw	t0,1936(t7)
    24e8:	44815000 	mtc1	at,$f10
    24ec:	3c010000 	lui	at,0x0
    24f0:	8d0a005c 	lw	t2,92(t0)
    24f4:	02002025 	move	a0,s0
    24f8:	27a50054 	addiu	a1,sp,84
    24fc:	adaa0000 	sw	t2,0(t5)
    2500:	8d090060 	lw	t1,96(t0)
    2504:	24060000 	li	a2,0
    2508:	3c0741a0 	lui	a3,0x41a0
    250c:	ada90004 	sw	t1,4(t5)
    2510:	8d0a0064 	lw	t2,100(t0)
    2514:	adaa0008 	sw	t2,8(t5)
    2518:	c6080054 	lwc1	$f8,84(s0)
    251c:	c7a40058 	lwc1	$f4,88(sp)
    2520:	c4260000 	lwc1	$f6,0(at)
    2524:	46085402 	mul.s	$f16,$f10,$f8
    2528:	e7a60010 	swc1	$f6,16(sp)
    252c:	46102480 	add.s	$f18,$f4,$f16
    2530:	0c000000 	jal	0 <func_80A01C30>
    2534:	e7b20058 	swc1	$f18,88(sp)
    2538:	1000006b 	b	26e8 <func_80A03CF8+0x620>
    253c:	860202a8 	lh	v0,680(s0)
    2540:	24050001 	li	a1,1
    2544:	0c000000 	jal	0 <func_80A01C30>
    2548:	e7a20038 	swc1	$f2,56(sp)
    254c:	8fac0064 	lw	t4,100(sp)
    2550:	c7a20038 	lwc1	$f2,56(sp)
    2554:	27ab0054 	addiu	t3,sp,84
    2558:	8d8e1c90 	lw	t6,7312(t4)
    255c:	3c010000 	lui	at,0x0
    2560:	02002025 	move	a0,s0
    2564:	ad6e0000 	sw	t6,0(t3)
    2568:	8d981c94 	lw	t8,7316(t4)
    256c:	27a50054 	addiu	a1,sp,84
    2570:	24060000 	li	a2,0
    2574:	ad780004 	sw	t8,4(t3)
    2578:	8d8e1c98 	lw	t6,7320(t4)
    257c:	ad6e0008 	sw	t6,8(t3)
    2580:	c6080054 	lwc1	$f8,84(s0)
    2584:	c42a0000 	lwc1	$f10,0(at)
    2588:	c7b00058 	lwc1	$f16,88(sp)
    258c:	8fb90064 	lw	t9,100(sp)
    2590:	46085102 	mul.s	$f4,$f10,$f8
    2594:	3c010000 	lui	at,0x0
    2598:	46048480 	add.s	$f18,$f16,$f4
    259c:	e7b20058 	swc1	$f18,88(sp)
    25a0:	8f221cc8 	lw	v0,7368(t9)
    25a4:	50400013 	beqzl	v0,25f4 <func_80A03CF8+0x52c>
    25a8:	960f02be 	lhu	t7,702(s0)
    25ac:	c4260000 	lwc1	$f6,0(at)
    25b0:	3c0741a0 	lui	a3,0x41a0
    25b4:	0c000000 	jal	0 <func_80A01C30>
    25b8:	e7a60010 	swc1	$f6,16(sp)
    25bc:	3c0140a0 	lui	at,0x40a0
    25c0:	44814000 	mtc1	at,$f8
    25c4:	c60a0068 	lwc1	$f10,104(s0)
    25c8:	02002025 	move	a0,s0
    25cc:	8fa50064 	lw	a1,100(sp)
    25d0:	460a403e 	c.le.s	$f8,$f10
    25d4:	00000000 	nop
    25d8:	45020043 	bc1fl	26e8 <func_80A03CF8+0x620>
    25dc:	860202a8 	lh	v0,680(s0)
    25e0:	0c000000 	jal	0 <func_80A01C30>
    25e4:	24060010 	li	a2,16
    25e8:	1000003f 	b	26e8 <func_80A03CF8+0x620>
    25ec:	860202a8 	lh	v0,680(s0)
    25f0:	960f02be 	lhu	t7,702(s0)
    25f4:	3c0140e0 	lui	at,0x40e0
    25f8:	31ed001f 	andi	t5,t7,0x1f
    25fc:	55a0000a 	bnezl	t5,2628 <func_80A03CF8+0x560>
    2600:	960202c4 	lhu	v0,708(s0)
    2604:	44816000 	mtc1	at,$f12
    2608:	0c000000 	jal	0 <func_80A01C30>
    260c:	e7a20038 	swc1	$f2,56(sp)
    2610:	3c014040 	lui	at,0x4040
    2614:	44818000 	mtc1	at,$f16
    2618:	c7a20038 	lwc1	$f2,56(sp)
    261c:	46100100 	add.s	$f4,$f0,$f16
    2620:	e60402a0 	swc1	$f4,672(s0)
    2624:	960202c4 	lhu	v0,708(s0)
    2628:	02002025 	move	a0,s0
    262c:	27a50054 	addiu	a1,sp,84
    2630:	30480002 	andi	t0,v0,0x2
    2634:	11000014 	beqz	t0,2688 <func_80A03CF8+0x5c0>
    2638:	3c0142c8 	lui	at,0x42c8
    263c:	3c0141f0 	lui	at,0x41f0
    2640:	44819000 	mtc1	at,$f18
    2644:	38490002 	xori	t1,v0,0x2
    2648:	3c010000 	lui	at,0x0
    264c:	4612103c 	c.lt.s	$f2,$f18
    2650:	24060000 	li	a2,0
    2654:	45000002 	bc1f	2660 <func_80A03CF8+0x598>
    2658:	00000000 	nop
    265c:	a60902c4 	sh	t1,708(s0)
    2660:	c4260000 	lwc1	$f6,0(at)
    2664:	3c0741a0 	lui	a3,0x41a0
    2668:	0c000000 	jal	0 <func_80A01C30>
    266c:	e7a60010 	swc1	$f6,16(sp)
    2670:	02002025 	move	a0,s0
    2674:	8fa50064 	lw	a1,100(sp)
    2678:	0c000000 	jal	0 <func_80A01C30>
    267c:	24060010 	li	a2,16
    2680:	10000019 	b	26e8 <func_80A03CF8+0x620>
    2684:	860202a8 	lh	v0,680(s0)
    2688:	44815000 	mtc1	at,$f10
    268c:	00000000 	nop
    2690:	4602503c 	c.lt.s	$f10,$f2
    2694:	00000000 	nop
    2698:	4500000a 	bc1f	26c4 <func_80A03CF8+0x5fc>
    269c:	00000000 	nop
    26a0:	920b02c7 	lbu	t3,711(s0)
    26a4:	344a0002 	ori	t2,v0,0x2
    26a8:	a60a02c4 	sh	t2,708(s0)
    26ac:	15600003 	bnez	t3,26bc <func_80A03CF8+0x5f4>
    26b0:	02002025 	move	a0,s0
    26b4:	0c000000 	jal	0 <func_80A01C30>
    26b8:	2405281b 	li	a1,10267
    26bc:	240c0064 	li	t4,100
    26c0:	a60c02c0 	sh	t4,704(s0)
    26c4:	3c010000 	lui	at,0x0
    26c8:	c4280000 	lwc1	$f8,0(at)
    26cc:	8e0702a0 	lw	a3,672(s0)
    26d0:	02002025 	move	a0,s0
    26d4:	27a50054 	addiu	a1,sp,84
    26d8:	24060000 	li	a2,0
    26dc:	0c000000 	jal	0 <func_80A01C30>
    26e0:	e7a80010 	swc1	$f8,16(sp)
    26e4:	860202a8 	lh	v0,680(s0)
    26e8:	24010007 	li	at,7
    26ec:	14410003 	bne	v0,at,26fc <func_80A03CF8+0x634>
    26f0:	c7b0003c 	lwc1	$f16,60(sp)
    26f4:	10000011 	b	273c <func_80A03CF8+0x674>
    26f8:	e6100050 	swc1	$f16,80(s0)
    26fc:	24010008 	li	at,8
    2700:	14410004 	bne	v0,at,2714 <func_80A03CF8+0x64c>
    2704:	26040050 	addiu	a0,s0,80
    2708:	44802000 	mtc1	zero,$f4
    270c:	1000000b 	b	273c <func_80A03CF8+0x674>
    2710:	e6040050 	swc1	$f4,80(s0)
    2714:	3c010000 	lui	at,0x0
    2718:	c4320000 	lwc1	$f18,0(at)
    271c:	3c053c03 	lui	a1,0x3c03
    2720:	3c063e99 	lui	a2,0x3e99
    2724:	3c073a51 	lui	a3,0x3a51
    2728:	34e7b718 	ori	a3,a3,0xb718
    272c:	34c6999a 	ori	a2,a2,0x999a
    2730:	34a5126f 	ori	a1,a1,0x126f
    2734:	0c000000 	jal	0 <func_80A01C30>
    2738:	e7b20010 	swc1	$f18,16(sp)
    273c:	02002025 	move	a0,s0
    2740:	0c000000 	jal	0 <func_80A01C30>
    2744:	8fa50064 	lw	a1,100(sp)
    2748:	8fbf0024 	lw	ra,36(sp)
    274c:	8fb00020 	lw	s0,32(sp)
    2750:	27bd0060 	addiu	sp,sp,96
    2754:	03e00008 	jr	ra
    2758:	00000000 	nop

0000275c <func_80A0438C>:
    275c:	afa7000c 	sw	a3,12(sp)
    2760:	c4c60000 	lwc1	$f6,0(a2)
    2764:	c4a40000 	lwc1	$f4,0(a1)
    2768:	c4ca0004 	lwc1	$f10,4(a2)
    276c:	c4a80004 	lwc1	$f8,4(a1)
    2770:	46062001 	sub.s	$f0,$f4,$f6
    2774:	c4d20008 	lwc1	$f18,8(a2)
    2778:	c4b00008 	lwc1	$f16,8(a1)
    277c:	460a4081 	sub.s	$f2,$f8,$f10
    2780:	c7aa000c 	lwc1	$f10,12(sp)
    2784:	c4880000 	lwc1	$f8,0(a0)
    2788:	46128301 	sub.s	$f12,$f16,$f18
    278c:	460a0402 	mul.s	$f16,$f0,$f10
    2790:	c4c6000c 	lwc1	$f6,12(a2)
    2794:	c4a4000c 	lwc1	$f4,12(a1)
    2798:	46062381 	sub.s	$f14,$f4,$f6
    279c:	c4840004 	lwc1	$f4,4(a0)
    27a0:	46104480 	add.s	$f18,$f8,$f16
    27a4:	c4900008 	lwc1	$f16,8(a0)
    27a8:	e4920000 	swc1	$f18,0(a0)
    27ac:	c7a6000c 	lwc1	$f6,12(sp)
    27b0:	46061282 	mul.s	$f10,$f2,$f6
    27b4:	460a2200 	add.s	$f8,$f4,$f10
    27b8:	c48a000c 	lwc1	$f10,12(a0)
    27bc:	e4880004 	swc1	$f8,4(a0)
    27c0:	c7b2000c 	lwc1	$f18,12(sp)
    27c4:	46126182 	mul.s	$f6,$f12,$f18
    27c8:	46068100 	add.s	$f4,$f16,$f6
    27cc:	e4840008 	swc1	$f4,8(a0)
    27d0:	c7a8000c 	lwc1	$f8,12(sp)
    27d4:	46087482 	mul.s	$f18,$f14,$f8
    27d8:	46125400 	add.s	$f16,$f10,$f18
    27dc:	03e00008 	jr	ra
    27e0:	e490000c 	swc1	$f16,12(a0)

000027e4 <func_80A04414>:
    27e4:	27bdffd0 	addiu	sp,sp,-48
    27e8:	afbf001c 	sw	ra,28(sp)
    27ec:	afb00018 	sw	s0,24(sp)
    27f0:	8cae1cc8 	lw	t6,7368(a1)
    27f4:	44800000 	mtc1	zero,$f0
    27f8:	00808025 	move	s0,a0
    27fc:	afae002c 	sw	t6,44(sp)
    2800:	8caf1c44 	lw	t7,7236(a1)
    2804:	00a03825 	move	a3,a1
    2808:	3c013f80 	lui	at,0x3f80
    280c:	afaf0028 	sw	t7,40(sp)
    2810:	c4a41cd0 	lwc1	$f4,7376(a1)
    2814:	46040032 	c.eq.s	$f0,$f4
    2818:	00000000 	nop
    281c:	4503000b 	bc1tl	284c <func_80A04414+0x68>
    2820:	921902c6 	lbu	t9,710(s0)
    2824:	909802c7 	lbu	t8,711(a0)
    2828:	44813000 	mtc1	at,$f6
    282c:	a08002c6 	sb	zero,710(a0)
    2830:	17000044 	bnez	t8,2944 <func_80A04414+0x160>
    2834:	e486029c 	swc1	$f6,668(a0)
    2838:	0c000000 	jal	0 <func_80A01C30>
    283c:	2405281b 	li	a1,10267
    2840:	10000041 	b	2948 <func_80A04414+0x164>
    2844:	960302c4 	lhu	v1,708(s0)
    2848:	921902c6 	lbu	t9,710(s0)
    284c:	8fa8002c 	lw	t0,44(sp)
    2850:	5720000f 	bnezl	t9,2890 <func_80A04414+0xac>
    2854:	c60a029c 	lwc1	$f10,668(s0)
    2858:	11000009 	beqz	t0,2880 <func_80A04414+0x9c>
    285c:	26040024 	addiu	a0,s0,36
    2860:	0c000000 	jal	0 <func_80A01C30>
    2864:	24e51c90 	addiu	a1,a3,7312
    2868:	3c014248 	lui	at,0x4248
    286c:	44814000 	mtc1	at,$f8
    2870:	00000000 	nop
    2874:	4608003c 	c.lt.s	$f0,$f8
    2878:	00000000 	nop
    287c:	45000031 	bc1f	2944 <func_80A04414+0x160>
    2880:	24090001 	li	t1,1
    2884:	1000002f 	b	2944 <func_80A04414+0x160>
    2888:	a20902c6 	sb	t1,710(s0)
    288c:	c60a029c 	lwc1	$f10,668(s0)
    2890:	2604029c 	addiu	a0,s0,668
    2894:	3c063e80 	lui	a2,0x3e80
    2898:	460a0032 	c.eq.s	$f0,$f10
    289c:	00000000 	nop
    28a0:	45030029 	bc1tl	2948 <func_80A04414+0x164>
    28a4:	960302c4 	lhu	v1,708(s0)
    28a8:	44050000 	mfc1	a1,$f0
    28ac:	0c000000 	jal	0 <func_80A01C30>
    28b0:	afa70034 	sw	a3,52(sp)
    28b4:	10400012 	beqz	v0,2900 <func_80A04414+0x11c>
    28b8:	8fa30034 	lw	v1,52(sp)
    28bc:	8c6b1ca8 	lw	t3,7336(v1)
    28c0:	ae0b0244 	sw	t3,580(s0)
    28c4:	8c6a1cac 	lw	t2,7340(v1)
    28c8:	ae0a0248 	sw	t2,584(s0)
    28cc:	8c6b1cb0 	lw	t3,7344(v1)
    28d0:	ae0b024c 	sw	t3,588(s0)
    28d4:	8c6a1cb4 	lw	t2,7348(v1)
    28d8:	ae0a0250 	sw	t2,592(s0)
    28dc:	8c6d1cb8 	lw	t5,7352(v1)
    28e0:	ae0d0254 	sw	t5,596(s0)
    28e4:	8c6c1cbc 	lw	t4,7356(v1)
    28e8:	ae0c0258 	sw	t4,600(s0)
    28ec:	8c6d1cc0 	lw	t5,7360(v1)
    28f0:	ae0d025c 	sw	t5,604(s0)
    28f4:	8c6c1cc4 	lw	t4,7364(v1)
    28f8:	10000012 	b	2944 <func_80A04414+0x160>
    28fc:	ae0c0260 	sw	t4,608(s0)
    2900:	3c013e80 	lui	at,0x3e80
    2904:	44818000 	mtc1	at,$f16
    2908:	c612029c 	lwc1	$f18,668(s0)
    290c:	26040244 	addiu	a0,s0,580
    2910:	00803025 	move	a2,a0
    2914:	46128003 	div.s	$f0,$f16,$f18
    2918:	24651ca8 	addiu	a1,v1,7336
    291c:	44070000 	mfc1	a3,$f0
    2920:	0c000000 	jal	0 <func_80A01C30>
    2924:	e7a00024 	swc1	$f0,36(sp)
    2928:	c7a00024 	lwc1	$f0,36(sp)
    292c:	8fa30034 	lw	v1,52(sp)
    2930:	26040254 	addiu	a0,s0,596
    2934:	44070000 	mfc1	a3,$f0
    2938:	00803025 	move	a2,a0
    293c:	0c000000 	jal	0 <func_80A01C30>
    2940:	24651cb8 	addiu	a1,v1,7352
    2944:	960302c4 	lhu	v1,708(s0)
    2948:	8faf002c 	lw	t7,44(sp)
    294c:	8fa9002c 	lw	t1,44(sp)
    2950:	306e0001 	andi	t6,v1,0x1
    2954:	11c00008 	beqz	t6,2978 <func_80A04414+0x194>
    2958:	00000000 	nop
    295c:	11e00003 	beqz	t7,296c <func_80A04414+0x188>
    2960:	8fb80028 	lw	t8,40(sp)
    2964:	8f190664 	lw	t9,1636(t8)
    2968:	1720001b 	bnez	t9,29d8 <func_80A04414+0x1f4>
    296c:	38680001 	xori	t0,v1,0x1
    2970:	10000019 	b	29d8 <func_80A04414+0x1f4>
    2974:	a60802c4 	sh	t0,708(s0)
    2978:	11200017 	beqz	t1,29d8 <func_80A04414+0x1f4>
    297c:	8faa0028 	lw	t2,40(sp)
    2980:	8d4b0664 	lw	t3,1636(t2)
    2984:	51600015 	beqzl	t3,29dc <func_80A04414+0x1f8>
    2988:	8fbf001c 	lw	ra,28(sp)
    298c:	91220002 	lbu	v0,2(t1)
    2990:	24010004 	li	at,4
    2994:	920402c7 	lbu	a0,711(s0)
    2998:	54410004 	bnel	v0,at,29ac <func_80A04414+0x1c8>
    299c:	24010005 	li	at,5
    29a0:	10000006 	b	29bc <func_80A04414+0x1d8>
    29a4:	24056841 	li	a1,26689
    29a8:	24010005 	li	at,5
    29ac:	14410003 	bne	v0,at,29bc <func_80A04414+0x1d8>
    29b0:	24056842 	li	a1,26690
    29b4:	10000001 	b	29bc <func_80A04414+0x1d8>
    29b8:	24056840 	li	a1,26688
    29bc:	54800005 	bnezl	a0,29d4 <func_80A04414+0x1f0>
    29c0:	346c0001 	ori	t4,v1,0x1
    29c4:	0c000000 	jal	0 <func_80A01C30>
    29c8:	02002025 	move	a0,s0
    29cc:	960302c4 	lhu	v1,708(s0)
    29d0:	346c0001 	ori	t4,v1,0x1
    29d4:	a60c02c4 	sh	t4,708(s0)
    29d8:	8fbf001c 	lw	ra,28(sp)
    29dc:	8fb00018 	lw	s0,24(sp)
    29e0:	27bd0030 	addiu	sp,sp,48
    29e4:	03e00008 	jr	ra
    29e8:	00000000 	nop

000029ec <func_80A0461C>:
    29ec:	27bdffd0 	addiu	sp,sp,-48
    29f0:	afbf0014 	sw	ra,20(sp)
    29f4:	90ae1d6c 	lbu	t6,7532(a1)
    29f8:	00803825 	move	a3,a0
    29fc:	00a03025 	move	a2,a1
    2a00:	11c00019 	beqz	t6,2a68 <func_80A0461C+0x7c>
    2a04:	8ca81c44 	lw	t0,7236(a1)
    2a08:	8ca31dac 	lw	v1,7596(a1)
    2a0c:	00003025 	move	a2,zero
    2a10:	240f0064 	li	t7,100
    2a14:	50600012 	beqzl	v1,2a60 <func_80A0461C+0x74>
    2a18:	a4ef02c0 	sh	t7,704(a3)
    2a1c:	94620000 	lhu	v0,0(v1)
    2a20:	24010001 	li	at,1
    2a24:	1041000b 	beq	v0,at,2a54 <func_80A0461C+0x68>
    2a28:	24010003 	li	at,3
    2a2c:	10410007 	beq	v0,at,2a4c <func_80A0461C+0x60>
    2a30:	24010004 	li	at,4
    2a34:	10410003 	beq	v0,at,2a44 <func_80A0461C+0x58>
    2a38:	00000000 	nop
    2a3c:	10000008 	b	2a60 <func_80A0461C+0x74>
    2a40:	00003025 	move	a2,zero
    2a44:	10000006 	b	2a60 <func_80A0461C+0x74>
    2a48:	24060009 	li	a2,9
    2a4c:	10000004 	b	2a60 <func_80A0461C+0x74>
    2a50:	24060006 	li	a2,6
    2a54:	10000002 	b	2a60 <func_80A0461C+0x74>
    2a58:	2406000a 	li	a2,10
    2a5c:	a4ef02c0 	sh	t7,704(a3)
    2a60:	100000aa 	b	2d0c <func_80A0461C+0x320>
    2a64:	84e302a8 	lh	v1,680(a3)
    2a68:	8d18067c 	lw	t8,1660(t0)
    2a6c:	8cc31cc8 	lw	v1,7368(a2)
    2a70:	3c090000 	lui	t1,0x0
    2a74:	33190400 	andi	t9,t8,0x400
    2a78:	57200011 	bnezl	t9,2ac0 <func_80A0461C+0xd4>
    2a7c:	240c0064 	li	t4,100
    2a80:	8d290000 	lw	t1,0(t1)
    2a84:	00c02025 	move	a0,a2
    2a88:	24050002 	li	a1,2
    2a8c:	852a04b2 	lh	t2,1202(t1)
    2a90:	314b0010 	andi	t3,t2,0x10
    2a94:	1160000d 	beqz	t3,2acc <func_80A0461C+0xe0>
    2a98:	00000000 	nop
    2a9c:	afa30028 	sw	v1,40(sp)
    2aa0:	afa70030 	sw	a3,48(sp)
    2aa4:	0c000000 	jal	0 <func_80A01C30>
    2aa8:	afa80024 	sw	t0,36(sp)
    2aac:	8fa30028 	lw	v1,40(sp)
    2ab0:	8fa70030 	lw	a3,48(sp)
    2ab4:	10400005 	beqz	v0,2acc <func_80A0461C+0xe0>
    2ab8:	8fa80024 	lw	t0,36(sp)
    2abc:	240c0064 	li	t4,100
    2ac0:	2406000c 	li	a2,12
    2ac4:	10000052 	b	2c10 <func_80A0461C+0x224>
    2ac8:	a4ec02c0 	sh	t4,704(a3)
    2acc:	10600006 	beqz	v1,2ae8 <func_80A0461C+0xfc>
    2ad0:	00000000 	nop
    2ad4:	906d0002 	lbu	t5,2(v1)
    2ad8:	24010004 	li	at,4
    2adc:	24060001 	li	a2,1
    2ae0:	15a1004b 	bne	t5,at,2c10 <func_80A0461C+0x224>
    2ae4:	00000000 	nop
    2ae8:	10600008 	beqz	v1,2b0c <func_80A0461C+0x120>
    2aec:	240e0064 	li	t6,100
    2af0:	a4ee02c0 	sh	t6,704(a3)
    2af4:	8d0f0680 	lw	t7,1664(t0)
    2af8:	3c010010 	lui	at,0x10
    2afc:	00003025 	move	a2,zero
    2b00:	01e1c025 	or	t8,t7,at
    2b04:	10000042 	b	2c10 <func_80A0461C+0x224>
    2b08:	ad180680 	sw	t8,1664(t0)
    2b0c:	84e302a8 	lh	v1,680(a3)
    2b10:	24010007 	li	at,7
    2b14:	5060000a 	beqzl	v1,2b40 <func_80A0461C+0x154>
    2b18:	84e202c0 	lh	v0,704(a3)
    2b1c:	10610019 	beq	v1,at,2b84 <func_80A0461C+0x198>
    2b20:	24010008 	li	at,8
    2b24:	10610030 	beq	v1,at,2be8 <func_80A0461C+0x1fc>
    2b28:	2401000b 	li	at,11
    2b2c:	50610031 	beql	v1,at,2bf4 <func_80A0461C+0x208>
    2b30:	84e202c0 	lh	v0,704(a3)
    2b34:	10000036 	b	2c10 <func_80A0461C+0x224>
    2b38:	00003025 	move	a2,zero
    2b3c:	84e202c0 	lh	v0,704(a3)
    2b40:	00003025 	move	a2,zero
    2b44:	10400003 	beqz	v0,2b54 <func_80A0461C+0x168>
    2b48:	2459ffff 	addiu	t9,v0,-1
    2b4c:	10000030 	b	2c10 <func_80A0461C+0x224>
    2b50:	a4f902c0 	sh	t9,704(a3)
    2b54:	90e902c7 	lbu	t1,711(a3)
    2b58:	00e02025 	move	a0,a3
    2b5c:	2405285f 	li	a1,10335
    2b60:	15200006 	bnez	t1,2b7c <func_80A0461C+0x190>
    2b64:	00000000 	nop
    2b68:	afa70030 	sw	a3,48(sp)
    2b6c:	0c000000 	jal	0 <func_80A01C30>
    2b70:	afa80024 	sw	t0,36(sp)
    2b74:	8fa70030 	lw	a3,48(sp)
    2b78:	8fa80024 	lw	t0,36(sp)
    2b7c:	10000024 	b	2c10 <func_80A0461C+0x224>
    2b80:	24060007 	li	a2,7
    2b84:	84ea02c0 	lh	t2,704(a3)
    2b88:	24060008 	li	a2,8
    2b8c:	00e02025 	move	a0,a3
    2b90:	1140000d 	beqz	t2,2bc8 <func_80A0461C+0x1dc>
    2b94:	2405000a 	li	a1,10
    2b98:	84e202ae 	lh	v0,686(a3)
    2b9c:	24060007 	li	a2,7
    2ba0:	18400003 	blez	v0,2bb0 <func_80A0461C+0x1c4>
    2ba4:	244bffff 	addiu	t3,v0,-1
    2ba8:	10000019 	b	2c10 <func_80A0461C+0x224>
    2bac:	a4eb02ae 	sh	t3,686(a3)
    2bb0:	8d0c0680 	lw	t4,1664(t0)
    2bb4:	3c010010 	lui	at,0x10
    2bb8:	00003025 	move	a2,zero
    2bbc:	01816825 	or	t5,t4,at
    2bc0:	10000013 	b	2c10 <func_80A0461C+0x224>
    2bc4:	ad0d0680 	sw	t5,1664(t0)
    2bc8:	afa6002c 	sw	a2,44(sp)
    2bcc:	afa70030 	sw	a3,48(sp)
    2bd0:	0c000000 	jal	0 <func_80A01C30>
    2bd4:	afa80024 	sw	t0,36(sp)
    2bd8:	8fa6002c 	lw	a2,44(sp)
    2bdc:	8fa70030 	lw	a3,48(sp)
    2be0:	1000000b 	b	2c10 <func_80A0461C+0x224>
    2be4:	8fa80024 	lw	t0,36(sp)
    2be8:	10000009 	b	2c10 <func_80A0461C+0x224>
    2bec:	24060008 	li	a2,8
    2bf0:	84e202c0 	lh	v0,704(a3)
    2bf4:	00603025 	move	a2,v1
    2bf8:	18400003 	blez	v0,2c08 <func_80A0461C+0x21c>
    2bfc:	244effff 	addiu	t6,v0,-1
    2c00:	10000003 	b	2c10 <func_80A0461C+0x224>
    2c04:	a4ee02c0 	sh	t6,704(a3)
    2c08:	10000001 	b	2c10 <func_80A0461C+0x224>
    2c0c:	00003025 	move	a2,zero
    2c10:	10c0000b 	beqz	a2,2c40 <func_80A0461C+0x254>
    2c14:	24010007 	li	at,7
    2c18:	10c10036 	beq	a2,at,2cf4 <func_80A0461C+0x308>
    2c1c:	24010008 	li	at,8
    2c20:	50c1001a 	beql	a2,at,2c8c <func_80A0461C+0x2a0>
    2c24:	8d0b0680 	lw	t3,1664(t0)
    2c28:	8d0f0680 	lw	t7,1664(t0)
    2c2c:	3c010010 	lui	at,0x10
    2c30:	01e1c025 	or	t8,t7,at
    2c34:	ad180680 	sw	t8,1664(t0)
    2c38:	10000034 	b	2d0c <func_80A0461C+0x320>
    2c3c:	84e302a8 	lh	v1,680(a3)
    2c40:	8d190680 	lw	t9,1664(t0)
    2c44:	00194ac0 	sll	t1,t9,0xb
    2c48:	0520000d 	bltz	t1,2c80 <func_80A0461C+0x294>
    2c4c:	00000000 	nop
    2c50:	90ea02c7 	lbu	t2,711(a3)
    2c54:	24060007 	li	a2,7
    2c58:	00e02025 	move	a0,a3
    2c5c:	15400008 	bnez	t2,2c80 <func_80A0461C+0x294>
    2c60:	2405285f 	li	a1,10335
    2c64:	afa6002c 	sw	a2,44(sp)
    2c68:	afa70030 	sw	a3,48(sp)
    2c6c:	0c000000 	jal	0 <func_80A01C30>
    2c70:	afa80024 	sw	t0,36(sp)
    2c74:	8fa6002c 	lw	a2,44(sp)
    2c78:	8fa70030 	lw	a3,48(sp)
    2c7c:	8fa80024 	lw	t0,36(sp)
    2c80:	10000022 	b	2d0c <func_80A0461C+0x320>
    2c84:	84e302a8 	lh	v1,680(a3)
    2c88:	8d0b0680 	lw	t3,1664(t0)
    2c8c:	00e02025 	move	a0,a3
    2c90:	24050032 	li	a1,50
    2c94:	000b62c0 	sll	t4,t3,0xb
    2c98:	05810014 	bgez	t4,2cec <func_80A0461C+0x300>
    2c9c:	00000000 	nop
    2ca0:	afa70030 	sw	a3,48(sp)
    2ca4:	0c000000 	jal	0 <func_80A01C30>
    2ca8:	afa80024 	sw	t0,36(sp)
    2cac:	8fa70030 	lw	a3,48(sp)
    2cb0:	8fa80024 	lw	t0,36(sp)
    2cb4:	240d002a 	li	t5,42
    2cb8:	90ee02c7 	lbu	t6,711(a3)
    2cbc:	2406000b 	li	a2,11
    2cc0:	a4ed02c0 	sh	t5,704(a3)
    2cc4:	15c00009 	bnez	t6,2cec <func_80A0461C+0x300>
    2cc8:	00e02025 	move	a0,a3
    2ccc:	2405281b 	li	a1,10267
    2cd0:	afa6002c 	sw	a2,44(sp)
    2cd4:	afa70030 	sw	a3,48(sp)
    2cd8:	0c000000 	jal	0 <func_80A01C30>
    2cdc:	afa80024 	sw	t0,36(sp)
    2ce0:	8fa6002c 	lw	a2,44(sp)
    2ce4:	8fa70030 	lw	a3,48(sp)
    2ce8:	8fa80024 	lw	t0,36(sp)
    2cec:	10000007 	b	2d0c <func_80A0461C+0x320>
    2cf0:	84e302a8 	lh	v1,680(a3)
    2cf4:	8d0f0680 	lw	t7,1664(t0)
    2cf8:	3c01ffef 	lui	at,0xffef
    2cfc:	3421ffff 	ori	at,at,0xffff
    2d00:	01e1c024 	and	t8,t7,at
    2d04:	ad180680 	sw	t8,1664(t0)
    2d08:	84e302a8 	lh	v1,680(a3)
    2d0c:	10c30019 	beq	a2,v1,2d74 <func_80A0461C+0x388>
    2d10:	00e02025 	move	a0,a3
    2d14:	00c02825 	move	a1,a2
    2d18:	afa6002c 	sw	a2,44(sp)
    2d1c:	afa70030 	sw	a3,48(sp)
    2d20:	0c000000 	jal	0 <func_80A01C30>
    2d24:	afa80024 	sw	t0,36(sp)
    2d28:	8fa6002c 	lw	a2,44(sp)
    2d2c:	2401000b 	li	at,11
    2d30:	8fa70030 	lw	a3,48(sp)
    2d34:	14c1000f 	bne	a2,at,2d74 <func_80A0461C+0x388>
    2d38:	8fa80024 	lw	t0,36(sp)
    2d3c:	25060968 	addiu	a2,t0,2408
    2d40:	24e50024 	addiu	a1,a3,36
    2d44:	afa50018 	sw	a1,24(sp)
    2d48:	00c02025 	move	a0,a2
    2d4c:	afa6001c 	sw	a2,28(sp)
    2d50:	0c000000 	jal	0 <func_80A01C30>
    2d54:	afa70030 	sw	a3,48(sp)
    2d58:	8fa70030 	lw	a3,48(sp)
    2d5c:	8fa5001c 	lw	a1,28(sp)
    2d60:	e4e002b8 	swc1	$f0,696(a3)
    2d64:	0c000000 	jal	0 <func_80A01C30>
    2d68:	8fa40018 	lw	a0,24(sp)
    2d6c:	8fa70030 	lw	a3,48(sp)
    2d70:	a4e202ac 	sh	v0,684(a3)
    2d74:	8fbf0014 	lw	ra,20(sp)
    2d78:	27bd0030 	addiu	sp,sp,48
    2d7c:	03e00008 	jr	ra
    2d80:	00000000 	nop

00002d84 <func_80A049B4>:
    2d84:	27bdffb8 	addiu	sp,sp,-72
    2d88:	3c0140c0 	lui	at,0x40c0
    2d8c:	afbf002c 	sw	ra,44(sp)
    2d90:	afb00028 	sw	s0,40(sp)
    2d94:	44816000 	mtc1	at,$f12
    2d98:	00808025 	move	s0,a0
    2d9c:	afa5004c 	sw	a1,76(sp)
    2da0:	0c000000 	jal	0 <func_80A01C30>
    2da4:	afa60050 	sw	a2,80(sp)
    2da8:	c6040024 	lwc1	$f4,36(s0)
    2dac:	46040180 	add.s	$f6,$f0,$f4
    2db0:	0c000000 	jal	0 <func_80A01C30>
    2db4:	e7a60038 	swc1	$f6,56(sp)
    2db8:	3c0140c0 	lui	at,0x40c0
    2dbc:	44816000 	mtc1	at,$f12
    2dc0:	c60a0028 	lwc1	$f10,40(s0)
    2dc4:	460c0202 	mul.s	$f8,$f0,$f12
    2dc8:	460a4400 	add.s	$f16,$f8,$f10
    2dcc:	0c000000 	jal	0 <func_80A01C30>
    2dd0:	e7b0003c 	swc1	$f16,60(sp)
    2dd4:	c612002c 	lwc1	$f18,44(s0)
    2dd8:	240f0001 	li	t7,1
    2ddc:	3c060000 	lui	a2,0x0
    2de0:	46120100 	add.s	$f4,$f0,$f18
    2de4:	3c070000 	lui	a3,0x0
    2de8:	3c014f00 	lui	at,0x4f00
    2dec:	24e70000 	addiu	a3,a3,0
    2df0:	e7a40040 	swc1	$f4,64(sp)
    2df4:	444ef800 	cfc1	t6,$31
    2df8:	44cff800 	ctc1	t7,$31
    2dfc:	c6060244 	lwc1	$f6,580(s0)
    2e00:	24c60000 	addiu	a2,a2,0
    2e04:	27a50038 	addiu	a1,sp,56
    2e08:	46003224 	cvt.w.s	$f8,$f6
    2e0c:	444ff800 	cfc1	t7,$31
    2e10:	00000000 	nop
    2e14:	31ef0078 	andi	t7,t7,0x78
    2e18:	51e00013 	beqzl	t7,2e68 <func_80A049B4+0xe4>
    2e1c:	440f4000 	mfc1	t7,$f8
    2e20:	44814000 	mtc1	at,$f8
    2e24:	240f0001 	li	t7,1
    2e28:	46083201 	sub.s	$f8,$f6,$f8
    2e2c:	44cff800 	ctc1	t7,$31
    2e30:	00000000 	nop
    2e34:	46004224 	cvt.w.s	$f8,$f8
    2e38:	444ff800 	cfc1	t7,$31
    2e3c:	00000000 	nop
    2e40:	31ef0078 	andi	t7,t7,0x78
    2e44:	15e00005 	bnez	t7,2e5c <func_80A049B4+0xd8>
    2e48:	00000000 	nop
    2e4c:	440f4000 	mfc1	t7,$f8
    2e50:	3c018000 	lui	at,0x8000
    2e54:	10000007 	b	2e74 <func_80A049B4+0xf0>
    2e58:	01e17825 	or	t7,t7,at
    2e5c:	10000005 	b	2e74 <func_80A049B4+0xf0>
    2e60:	240fffff 	li	t7,-1
    2e64:	440f4000 	mfc1	t7,$f8
    2e68:	00000000 	nop
    2e6c:	05e0fffb 	bltz	t7,2e5c <func_80A049B4+0xd8>
    2e70:	00000000 	nop
    2e74:	44cef800 	ctc1	t6,$31
    2e78:	a3af0034 	sb	t7,52(sp)
    2e7c:	24190001 	li	t9,1
    2e80:	c60a0248 	lwc1	$f10,584(s0)
    2e84:	4458f800 	cfc1	t8,$31
    2e88:	44d9f800 	ctc1	t9,$31
    2e8c:	3c014f00 	lui	at,0x4f00
    2e90:	46005424 	cvt.w.s	$f16,$f10
    2e94:	4459f800 	cfc1	t9,$31
    2e98:	00000000 	nop
    2e9c:	33390078 	andi	t9,t9,0x78
    2ea0:	53200013 	beqzl	t9,2ef0 <func_80A049B4+0x16c>
    2ea4:	44198000 	mfc1	t9,$f16
    2ea8:	44818000 	mtc1	at,$f16
    2eac:	24190001 	li	t9,1
    2eb0:	46105401 	sub.s	$f16,$f10,$f16
    2eb4:	44d9f800 	ctc1	t9,$31
    2eb8:	00000000 	nop
    2ebc:	46008424 	cvt.w.s	$f16,$f16
    2ec0:	4459f800 	cfc1	t9,$31
    2ec4:	00000000 	nop
    2ec8:	33390078 	andi	t9,t9,0x78
    2ecc:	17200005 	bnez	t9,2ee4 <func_80A049B4+0x160>
    2ed0:	00000000 	nop
    2ed4:	44198000 	mfc1	t9,$f16
    2ed8:	3c018000 	lui	at,0x8000
    2edc:	10000007 	b	2efc <func_80A049B4+0x178>
    2ee0:	0321c825 	or	t9,t9,at
    2ee4:	10000005 	b	2efc <func_80A049B4+0x178>
    2ee8:	2419ffff 	li	t9,-1
    2eec:	44198000 	mfc1	t9,$f16
    2ef0:	00000000 	nop
    2ef4:	0720fffb 	bltz	t9,2ee4 <func_80A049B4+0x160>
    2ef8:	00000000 	nop
    2efc:	44d8f800 	ctc1	t8,$31
    2f00:	a3b90035 	sb	t9,53(sp)
    2f04:	24090001 	li	t1,1
    2f08:	c612024c 	lwc1	$f18,588(s0)
    2f0c:	4448f800 	cfc1	t0,$31
    2f10:	44c9f800 	ctc1	t1,$31
    2f14:	3c014f00 	lui	at,0x4f00
    2f18:	27b90030 	addiu	t9,sp,48
    2f1c:	46009124 	cvt.w.s	$f4,$f18
    2f20:	27b80034 	addiu	t8,sp,52
    2f24:	4449f800 	cfc1	t1,$31
    2f28:	00000000 	nop
    2f2c:	31290078 	andi	t1,t1,0x78
    2f30:	51200013 	beqzl	t1,2f80 <func_80A049B4+0x1fc>
    2f34:	44092000 	mfc1	t1,$f4
    2f38:	44812000 	mtc1	at,$f4
    2f3c:	24090001 	li	t1,1
    2f40:	46049101 	sub.s	$f4,$f18,$f4
    2f44:	44c9f800 	ctc1	t1,$31
    2f48:	00000000 	nop
    2f4c:	46002124 	cvt.w.s	$f4,$f4
    2f50:	4449f800 	cfc1	t1,$31
    2f54:	00000000 	nop
    2f58:	31290078 	andi	t1,t1,0x78
    2f5c:	15200005 	bnez	t1,2f74 <func_80A049B4+0x1f0>
    2f60:	00000000 	nop
    2f64:	44092000 	mfc1	t1,$f4
    2f68:	3c018000 	lui	at,0x8000
    2f6c:	10000007 	b	2f8c <func_80A049B4+0x208>
    2f70:	01214825 	or	t1,t1,at
    2f74:	10000005 	b	2f8c <func_80A049B4+0x208>
    2f78:	2409ffff 	li	t1,-1
    2f7c:	44092000 	mfc1	t1,$f4
    2f80:	00000000 	nop
    2f84:	0520fffb 	bltz	t1,2f74 <func_80A049B4+0x1f0>
    2f88:	00000000 	nop
    2f8c:	44c8f800 	ctc1	t0,$31
    2f90:	a3a90036 	sb	t1,54(sp)
    2f94:	240b0001 	li	t3,1
    2f98:	c6060254 	lwc1	$f6,596(s0)
    2f9c:	444af800 	cfc1	t2,$31
    2fa0:	44cbf800 	ctc1	t3,$31
    2fa4:	3c014f00 	lui	at,0x4f00
    2fa8:	240803e8 	li	t0,1000
    2fac:	46003224 	cvt.w.s	$f8,$f6
    2fb0:	444bf800 	cfc1	t3,$31
    2fb4:	00000000 	nop
    2fb8:	316b0078 	andi	t3,t3,0x78
    2fbc:	51600013 	beqzl	t3,300c <func_80A049B4+0x288>
    2fc0:	440b4000 	mfc1	t3,$f8
    2fc4:	44814000 	mtc1	at,$f8
    2fc8:	240b0001 	li	t3,1
    2fcc:	46083201 	sub.s	$f8,$f6,$f8
    2fd0:	44cbf800 	ctc1	t3,$31
    2fd4:	00000000 	nop
    2fd8:	46004224 	cvt.w.s	$f8,$f8
    2fdc:	444bf800 	cfc1	t3,$31
    2fe0:	00000000 	nop
    2fe4:	316b0078 	andi	t3,t3,0x78
    2fe8:	15600005 	bnez	t3,3000 <func_80A049B4+0x27c>
    2fec:	00000000 	nop
    2ff0:	440b4000 	mfc1	t3,$f8
    2ff4:	3c018000 	lui	at,0x8000
    2ff8:	10000007 	b	3018 <func_80A049B4+0x294>
    2ffc:	01615825 	or	t3,t3,at
    3000:	10000005 	b	3018 <func_80A049B4+0x294>
    3004:	240bffff 	li	t3,-1
    3008:	440b4000 	mfc1	t3,$f8
    300c:	00000000 	nop
    3010:	0560fffb 	bltz	t3,3000 <func_80A049B4+0x27c>
    3014:	00000000 	nop
    3018:	44caf800 	ctc1	t2,$31
    301c:	a3ab0030 	sb	t3,48(sp)
    3020:	240d0001 	li	t5,1
    3024:	c60a0258 	lwc1	$f10,600(s0)
    3028:	444cf800 	cfc1	t4,$31
    302c:	44cdf800 	ctc1	t5,$31
    3030:	3c014f00 	lui	at,0x4f00
    3034:	46005424 	cvt.w.s	$f16,$f10
    3038:	444df800 	cfc1	t5,$31
    303c:	00000000 	nop
    3040:	31ad0078 	andi	t5,t5,0x78
    3044:	51a00013 	beqzl	t5,3094 <func_80A049B4+0x310>
    3048:	440d8000 	mfc1	t5,$f16
    304c:	44818000 	mtc1	at,$f16
    3050:	240d0001 	li	t5,1
    3054:	46105401 	sub.s	$f16,$f10,$f16
    3058:	44cdf800 	ctc1	t5,$31
    305c:	00000000 	nop
    3060:	46008424 	cvt.w.s	$f16,$f16
    3064:	444df800 	cfc1	t5,$31
    3068:	00000000 	nop
    306c:	31ad0078 	andi	t5,t5,0x78
    3070:	15a00005 	bnez	t5,3088 <func_80A049B4+0x304>
    3074:	00000000 	nop
    3078:	440d8000 	mfc1	t5,$f16
    307c:	3c018000 	lui	at,0x8000
    3080:	10000007 	b	30a0 <func_80A049B4+0x31c>
    3084:	01a16825 	or	t5,t5,at
    3088:	10000005 	b	30a0 <func_80A049B4+0x31c>
    308c:	240dffff 	li	t5,-1
    3090:	440d8000 	mfc1	t5,$f16
    3094:	00000000 	nop
    3098:	05a0fffb 	bltz	t5,3088 <func_80A049B4+0x304>
    309c:	00000000 	nop
    30a0:	44ccf800 	ctc1	t4,$31
    30a4:	a3ad0031 	sb	t5,49(sp)
    30a8:	240f0001 	li	t7,1
    30ac:	c612025c 	lwc1	$f18,604(s0)
    30b0:	444ef800 	cfc1	t6,$31
    30b4:	44cff800 	ctc1	t7,$31
    30b8:	3c014f00 	lui	at,0x4f00
    30bc:	46009124 	cvt.w.s	$f4,$f18
    30c0:	444ff800 	cfc1	t7,$31
    30c4:	00000000 	nop
    30c8:	31ef0078 	andi	t7,t7,0x78
    30cc:	51e00013 	beqzl	t7,311c <func_80A049B4+0x398>
    30d0:	440f2000 	mfc1	t7,$f4
    30d4:	44812000 	mtc1	at,$f4
    30d8:	240f0001 	li	t7,1
    30dc:	46049101 	sub.s	$f4,$f18,$f4
    30e0:	44cff800 	ctc1	t7,$31
    30e4:	00000000 	nop
    30e8:	46002124 	cvt.w.s	$f4,$f4
    30ec:	444ff800 	cfc1	t7,$31
    30f0:	00000000 	nop
    30f4:	31ef0078 	andi	t7,t7,0x78
    30f8:	15e00005 	bnez	t7,3110 <func_80A049B4+0x38c>
    30fc:	00000000 	nop
    3100:	440f2000 	mfc1	t7,$f4
    3104:	3c018000 	lui	at,0x8000
    3108:	10000007 	b	3128 <func_80A049B4+0x3a4>
    310c:	01e17825 	or	t7,t7,at
    3110:	10000005 	b	3128 <func_80A049B4+0x3a4>
    3114:	240fffff 	li	t7,-1
    3118:	440f2000 	mfc1	t7,$f4
    311c:	00000000 	nop
    3120:	05e0fffb 	bltz	t7,3110 <func_80A049B4+0x38c>
    3124:	00000000 	nop
    3128:	8fa90050 	lw	t1,80(sp)
    312c:	44cef800 	ctc1	t6,$31
    3130:	a3af0032 	sb	t7,50(sp)
    3134:	8fa4004c 	lw	a0,76(sp)
    3138:	afb80010 	sw	t8,16(sp)
    313c:	afb90014 	sw	t9,20(sp)
    3140:	afa80018 	sw	t0,24(sp)
    3144:	0c000000 	jal	0 <func_80A01C30>
    3148:	afa9001c 	sw	t1,28(sp)
    314c:	8fbf002c 	lw	ra,44(sp)
    3150:	8fb00028 	lw	s0,40(sp)
    3154:	27bd0048 	addiu	sp,sp,72
    3158:	03e00008 	jr	ra
    315c:	00000000 	nop

00003160 <func_80A04D90>:
    3160:	27bdffd0 	addiu	sp,sp,-48
    3164:	afb00020 	sw	s0,32(sp)
    3168:	00808025 	move	s0,a0
    316c:	afbf0024 	sw	ra,36(sp)
    3170:	afa50034 	sw	a1,52(sp)
    3174:	260f0024 	addiu	t7,s0,36
    3178:	00a02025 	move	a0,a1
    317c:	24a507c0 	addiu	a1,a1,1984
    3180:	afaf0014 	sw	t7,20(sp)
    3184:	26060078 	addiu	a2,s0,120
    3188:	afb00010 	sw	s0,16(sp)
    318c:	0c000000 	jal	0 <func_80A01C30>
    3190:	27a70028 	addiu	a3,sp,40
    3194:	24180032 	li	t8,50
    3198:	e6000080 	swc1	$f0,128(s0)
    319c:	a21800c8 	sb	t8,200(s0)
    31a0:	8fbf0024 	lw	ra,36(sp)
    31a4:	8fb00020 	lw	s0,32(sp)
    31a8:	27bd0030 	addiu	sp,sp,48
    31ac:	03e00008 	jr	ra
    31b0:	00000000 	nop

000031b4 <func_80A04DE4>:
    31b4:	27bdffb8 	addiu	sp,sp,-72
    31b8:	afbf0024 	sw	ra,36(sp)
    31bc:	afb10020 	sw	s1,32(sp)
    31c0:	afb0001c 	sw	s0,28(sp)
    31c4:	948e02c4 	lhu	t6,708(a0)
    31c8:	00808025 	move	s0,a0
    31cc:	00a08825 	move	s1,a1
    31d0:	31cf0010 	andi	t7,t6,0x10
    31d4:	11e00031 	beqz	t7,329c <func_80A04DE4+0xe8>
    31d8:	8ca21c44 	lw	v0,7236(a1)
    31dc:	8ca81c90 	lw	t0,7312(a1)
    31e0:	27b8002c 	addiu	t8,sp,44
    31e4:	af080000 	sw	t0,0(t8)
    31e8:	8cb91c94 	lw	t9,7316(a1)
    31ec:	af190004 	sw	t9,4(t8)
    31f0:	8ca81c98 	lw	t0,7320(a1)
    31f4:	af080008 	sw	t0,8(t8)
    31f8:	8c430664 	lw	v1,1636(v0)
    31fc:	50600006 	beqzl	v1,3218 <func_80A04DE4+0x64>
    3200:	844400b6 	lh	a0,182(v0)
    3204:	50430004 	beql	v0,v1,3218 <func_80A04DE4+0x64>
    3208:	844400b6 	lh	a0,182(v0)
    320c:	5483001a 	bnel	a0,v1,3278 <func_80A04DE4+0xc4>
    3210:	27a9002c 	addiu	t1,sp,44
    3214:	844400b6 	lh	a0,182(v0)
    3218:	0c000000 	jal	0 <func_80A01C30>
    321c:	afa20038 	sw	v0,56(sp)
    3220:	3c0141a0 	lui	at,0x41a0
    3224:	44812000 	mtc1	at,$f4
    3228:	8fa20038 	lw	v0,56(sp)
    322c:	3c0140a0 	lui	at,0x40a0
    3230:	46040182 	mul.s	$f6,$f0,$f4
    3234:	c448095c 	lwc1	$f8,2396(v0)
    3238:	44819000 	mtc1	at,$f18
    323c:	46083280 	add.s	$f10,$f6,$f8
    3240:	e7aa002c 	swc1	$f10,44(sp)
    3244:	c4500960 	lwc1	$f16,2400(v0)
    3248:	46128100 	add.s	$f4,$f16,$f18
    324c:	e7a40030 	swc1	$f4,48(sp)
    3250:	0c000000 	jal	0 <func_80A01C30>
    3254:	844400b6 	lh	a0,182(v0)
    3258:	3c0141a0 	lui	at,0x41a0
    325c:	44813000 	mtc1	at,$f6
    3260:	8fa20038 	lw	v0,56(sp)
    3264:	46060202 	mul.s	$f8,$f0,$f6
    3268:	c44a0964 	lwc1	$f10,2404(v0)
    326c:	460a4400 	add.s	$f16,$f8,$f10
    3270:	e7b00034 	swc1	$f16,52(sp)
    3274:	27a9002c 	addiu	t1,sp,44
    3278:	8d2b0000 	lw	t3,0(t1)
    327c:	960c02c4 	lhu	t4,708(s0)
    3280:	ae0b0038 	sw	t3,56(s0)
    3284:	8d2a0004 	lw	t2,4(t1)
    3288:	318dffef 	andi	t5,t4,0xffef
    328c:	ae0a003c 	sw	t2,60(s0)
    3290:	8d2b0008 	lw	t3,8(t1)
    3294:	a60d02c4 	sh	t5,708(s0)
    3298:	ae0b0040 	sw	t3,64(s0)
    329c:	260e0038 	addiu	t6,s0,56
    32a0:	afae0028 	sw	t6,40(sp)
    32a4:	02002025 	move	a0,s0
    32a8:	0c000000 	jal	0 <func_80A01C30>
    32ac:	02202825 	move	a1,s1
    32b0:	8faf0028 	lw	t7,40(sp)
    32b4:	27a5003c 	addiu	a1,sp,60
    32b8:	3c010000 	lui	at,0x0
    32bc:	8df90000 	lw	t9,0(t7)
    32c0:	02002025 	move	a0,s0
    32c4:	24060000 	li	a2,0
    32c8:	acb90000 	sw	t9,0(a1)
    32cc:	8df80004 	lw	t8,4(t7)
    32d0:	3c0741a0 	lui	a3,0x41a0
    32d4:	acb80004 	sw	t8,4(a1)
    32d8:	8df90008 	lw	t9,8(t7)
    32dc:	acb90008 	sw	t9,8(a1)
    32e0:	c4320000 	lwc1	$f18,0(at)
    32e4:	0c000000 	jal	0 <func_80A01C30>
    32e8:	e7b20010 	swc1	$f18,16(sp)
    32ec:	3c0140a0 	lui	at,0x40a0
    32f0:	44813000 	mtc1	at,$f6
    32f4:	c6040068 	lwc1	$f4,104(s0)
    32f8:	02002025 	move	a0,s0
    32fc:	02202825 	move	a1,s1
    3300:	4604303e 	c.le.s	$f6,$f4
    3304:	00000000 	nop
    3308:	45000003 	bc1f	3318 <func_80A04DE4+0x164>
    330c:	00000000 	nop
    3310:	0c000000 	jal	0 <func_80A01C30>
    3314:	24060010 	li	a2,16
    3318:	3c010000 	lui	at,0x0
    331c:	c4280000 	lwc1	$f8,0(at)
    3320:	3c053c03 	lui	a1,0x3c03
    3324:	3c063e99 	lui	a2,0x3e99
    3328:	3c073a51 	lui	a3,0x3a51
    332c:	34e7b718 	ori	a3,a3,0xb718
    3330:	34c6999a 	ori	a2,a2,0x999a
    3334:	34a5126f 	ori	a1,a1,0x126f
    3338:	26040050 	addiu	a0,s0,80
    333c:	0c000000 	jal	0 <func_80A01C30>
    3340:	e7a80010 	swc1	$f8,16(sp)
    3344:	02002025 	move	a0,s0
    3348:	0c000000 	jal	0 <func_80A01C30>
    334c:	02202825 	move	a1,s1
    3350:	8fbf0024 	lw	ra,36(sp)
    3354:	8fb0001c 	lw	s0,28(sp)
    3358:	8fb10020 	lw	s1,32(sp)
    335c:	03e00008 	jr	ra
    3360:	27bd0048 	addiu	sp,sp,72

00003364 <func_80A04F94>:
    3364:	27bdffd0 	addiu	sp,sp,-48
    3368:	afbf0024 	sw	ra,36(sp)
    336c:	afb00020 	sw	s0,32(sp)
    3370:	afa50034 	sw	a1,52(sp)
    3374:	8caf1c44 	lw	t7,7236(a1)
    3378:	00808025 	move	s0,a0
    337c:	24180400 	li	t8,1024
    3380:	afaf002c 	sw	t7,44(sp)
    3384:	860502bc 	lh	a1,700(s0)
    3388:	afb80010 	sw	t8,16(sp)
    338c:	248400b6 	addiu	a0,a0,182
    3390:	24060005 	li	a2,5
    3394:	0c000000 	jal	0 <func_80A01C30>
    3398:	24071000 	li	a3,4096
    339c:	961902be 	lhu	t9,702(s0)
    33a0:	3c063d4c 	lui	a2,0x3d4c
    33a4:	34c6cccd 	ori	a2,a2,0xcccd
    33a8:	27280001 	addiu	t0,t9,1
    33ac:	a60802be 	sh	t0,702(s0)
    33b0:	260402a4 	addiu	a0,s0,676
    33b4:	0c000000 	jal	0 <func_80A01C30>
    33b8:	3c053f80 	lui	a1,0x3f80
    33bc:	c60002a4 	lwc1	$f0,676(s0)
    33c0:	8fa9002c 	lw	t1,44(sp)
    33c4:	3c014443 	lui	at,0x4443
    33c8:	46000102 	mul.s	$f4,$f0,$f0
    33cc:	44814000 	mtc1	at,$f8
    33d0:	c52600ec 	lwc1	$f6,236(t1)
    33d4:	3c013f00 	lui	at,0x3f00
    33d8:	44818000 	mtc1	at,$f16
    33dc:	46083280 	add.s	$f10,$f6,$f8
    33e0:	3c073e4c 	lui	a3,0x3e4c
    33e4:	44052000 	mfc1	a1,$f4
    33e8:	34e7cccd 	ori	a3,a3,0xcccd
    33ec:	44065000 	mfc1	a2,$f10
    33f0:	8fa40034 	lw	a0,52(sp)
    33f4:	0c000000 	jal	0 <func_80A01C30>
    33f8:	e7b00010 	swc1	$f16,16(sp)
    33fc:	8fbf0024 	lw	ra,36(sp)
    3400:	8fb00020 	lw	s0,32(sp)
    3404:	27bd0030 	addiu	sp,sp,48
    3408:	03e00008 	jr	ra
    340c:	00000000 	nop

00003410 <func_80A05040>:
    3410:	27bdffe0 	addiu	sp,sp,-32
    3414:	afbf001c 	sw	ra,28(sp)
    3418:	afb10018 	sw	s1,24(sp)
    341c:	afb00014 	sw	s0,20(sp)
    3420:	00a08025 	move	s0,a1
    3424:	0c000000 	jal	0 <func_80A01C30>
    3428:	00808825 	move	s1,a0
    342c:	0c000000 	jal	0 <func_80A01C30>
    3430:	260420d8 	addiu	a0,s0,8408
    3434:	24010004 	li	at,4
    3438:	54410023 	bnel	v0,at,34c8 <func_80A05040+0xb8>
    343c:	02202025 	move	a0,s1
    3440:	0c000000 	jal	0 <func_80A01C30>
    3444:	02002025 	move	a0,s0
    3448:	1040001e 	beqz	v0,34c4 <func_80A05040+0xb4>
    344c:	3c020001 	lui	v0,0x1
    3450:	00501021 	addu	v0,v0,s0
    3454:	904204bd 	lbu	v0,1213(v0)
    3458:	24010001 	li	at,1
    345c:	10400005 	beqz	v0,3474 <func_80A05040+0x64>
    3460:	00000000 	nop
    3464:	1041000c 	beq	v0,at,3498 <func_80A05040+0x88>
    3468:	00000000 	nop
    346c:	10000016 	b	34c8 <func_80A05040+0xb8>
    3470:	02202025 	move	a0,s1
    3474:	0c000000 	jal	0 <func_80A01C30>
    3478:	02002025 	move	a0,s0
    347c:	02002025 	move	a0,s0
    3480:	0c000000 	jal	0 <func_80A01C30>
    3484:	3045ffff 	andi	a1,v0,0xffff
    3488:	3c0e0000 	lui	t6,0x0
    348c:	25ce0000 	addiu	t6,t6,0
    3490:	1000000c 	b	34c4 <func_80A05040+0xb4>
    3494:	ae2e0130 	sw	t6,304(s1)
    3498:	0c000000 	jal	0 <func_80A01C30>
    349c:	02002025 	move	a0,s0
    34a0:	3c0f0000 	lui	t7,0x0
    34a4:	25ef0000 	addiu	t7,t7,0
    34a8:	ae2f0130 	sw	t7,304(s1)
    34ac:	02202025 	move	a0,s1
    34b0:	0c000000 	jal	0 <func_80A01C30>
    34b4:	00002825 	move	a1,zero
    34b8:	963802c4 	lhu	t8,708(s1)
    34bc:	3319ffdf 	andi	t9,t8,0xffdf
    34c0:	a63902c4 	sh	t9,708(s1)
    34c4:	02202025 	move	a0,s1
    34c8:	0c000000 	jal	0 <func_80A01C30>
    34cc:	02002825 	move	a1,s0
    34d0:	8fbf001c 	lw	ra,28(sp)
    34d4:	8fb00014 	lw	s0,20(sp)
    34d8:	8fb10018 	lw	s1,24(sp)
    34dc:	03e00008 	jr	ra
    34e0:	27bd0020 	addiu	sp,sp,32

000034e4 <func_80A05114>:
    34e4:	27bdffe0 	addiu	sp,sp,-32
    34e8:	afbf001c 	sw	ra,28(sp)
    34ec:	afb00018 	sw	s0,24(sp)
    34f0:	00a08025 	move	s0,a1
    34f4:	0c000000 	jal	0 <func_80A01C30>
    34f8:	afa40020 	sw	a0,32(sp)
    34fc:	0c000000 	jal	0 <func_80A01C30>
    3500:	260420d8 	addiu	a0,s0,8408
    3504:	24010005 	li	at,5
    3508:	5441000c 	bnel	v0,at,353c <func_80A05114+0x58>
    350c:	8fa40020 	lw	a0,32(sp)
    3510:	0c000000 	jal	0 <func_80A01C30>
    3514:	02002025 	move	a0,s0
    3518:	10400007 	beqz	v0,3538 <func_80A05114+0x54>
    351c:	02002025 	move	a0,s0
    3520:	0c000000 	jal	0 <func_80A01C30>
    3524:	240500e3 	li	a1,227
    3528:	8faf0020 	lw	t7,32(sp)
    352c:	3c0e0000 	lui	t6,0x0
    3530:	25ce0000 	addiu	t6,t6,0
    3534:	adee0130 	sw	t6,304(t7)
    3538:	8fa40020 	lw	a0,32(sp)
    353c:	0c000000 	jal	0 <func_80A01C30>
    3540:	02002825 	move	a1,s0
    3544:	8fbf001c 	lw	ra,28(sp)
    3548:	8fb00018 	lw	s0,24(sp)
    354c:	27bd0020 	addiu	sp,sp,32
    3550:	03e00008 	jr	ra
    3554:	00000000 	nop

00003558 <func_80A05188>:
    3558:	27bdffe0 	addiu	sp,sp,-32
    355c:	afbf001c 	sw	ra,28(sp)
    3560:	afb00018 	sw	s0,24(sp)
    3564:	00a08025 	move	s0,a1
    3568:	0c000000 	jal	0 <func_80A01C30>
    356c:	afa40020 	sw	a0,32(sp)
    3570:	0c000000 	jal	0 <func_80A01C30>
    3574:	260420d8 	addiu	a0,s0,8408
    3578:	24010005 	li	at,5
    357c:	5441000f 	bnel	v0,at,35bc <func_80A05188+0x64>
    3580:	8fa40020 	lw	a0,32(sp)
    3584:	0c000000 	jal	0 <func_80A01C30>
    3588:	02002025 	move	a0,s0
    358c:	5040000b 	beqzl	v0,35bc <func_80A05188+0x64>
    3590:	8fa40020 	lw	a0,32(sp)
    3594:	0c000000 	jal	0 <func_80A01C30>
    3598:	02002025 	move	a0,s0
    359c:	02002025 	move	a0,s0
    35a0:	0c000000 	jal	0 <func_80A01C30>
    35a4:	3045ffff 	andi	a1,v0,0xffff
    35a8:	8faf0020 	lw	t7,32(sp)
    35ac:	3c0e0000 	lui	t6,0x0
    35b0:	25ce0000 	addiu	t6,t6,0
    35b4:	adee0130 	sw	t6,304(t7)
    35b8:	8fa40020 	lw	a0,32(sp)
    35bc:	0c000000 	jal	0 <func_80A01C30>
    35c0:	02002825 	move	a1,s0
    35c4:	8fbf001c 	lw	ra,28(sp)
    35c8:	8fb00018 	lw	s0,24(sp)
    35cc:	27bd0020 	addiu	sp,sp,32
    35d0:	03e00008 	jr	ra
    35d4:	00000000 	nop

000035d8 <func_80A05208>:
    35d8:	27bdffe0 	addiu	sp,sp,-32
    35dc:	afbf001c 	sw	ra,28(sp)
    35e0:	afb10018 	sw	s1,24(sp)
    35e4:	afb00014 	sw	s0,20(sp)
    35e8:	00a08025 	move	s0,a1
    35ec:	0c000000 	jal	0 <func_80A01C30>
    35f0:	00808825 	move	s1,a0
    35f4:	0c000000 	jal	0 <func_80A01C30>
    35f8:	260420d8 	addiu	a0,s0,8408
    35fc:	24010004 	li	at,4
    3600:	54410029 	bnel	v0,at,36a8 <func_80A05208+0xd0>
    3604:	02202025 	move	a0,s1
    3608:	0c000000 	jal	0 <func_80A01C30>
    360c:	02002025 	move	a0,s0
    3610:	10400024 	beqz	v0,36a4 <func_80A05208+0xcc>
    3614:	3c020001 	lui	v0,0x1
    3618:	00501021 	addu	v0,v0,s0
    361c:	904204bd 	lbu	v0,1213(v0)
    3620:	24010001 	li	at,1
    3624:	10400005 	beqz	v0,363c <func_80A05208+0x64>
    3628:	00000000 	nop
    362c:	10410012 	beq	v0,at,3678 <func_80A05208+0xa0>
    3630:	00000000 	nop
    3634:	1000001c 	b	36a8 <func_80A05208+0xd0>
    3638:	02202025 	move	a0,s1
    363c:	0c000000 	jal	0 <func_80A01C30>
    3640:	02002025 	move	a0,s0
    3644:	10400006 	beqz	v0,3660 <func_80A05208+0x88>
    3648:	02002025 	move	a0,s0
    364c:	02002025 	move	a0,s0
    3650:	0c000000 	jal	0 <func_80A01C30>
    3654:	3045ffff 	andi	a1,v0,0xffff
    3658:	10000003 	b	3668 <func_80A05208+0x90>
    365c:	00000000 	nop
    3660:	0c000000 	jal	0 <func_80A01C30>
    3664:	2405015f 	li	a1,351
    3668:	3c0e0000 	lui	t6,0x0
    366c:	25ce0000 	addiu	t6,t6,0
    3670:	1000000c 	b	36a4 <func_80A05208+0xcc>
    3674:	ae2e0130 	sw	t6,304(s1)
    3678:	0c000000 	jal	0 <func_80A01C30>
    367c:	02002025 	move	a0,s0
    3680:	3c0f0000 	lui	t7,0x0
    3684:	25ef0000 	addiu	t7,t7,0
    3688:	ae2f0130 	sw	t7,304(s1)
    368c:	02202025 	move	a0,s1
    3690:	0c000000 	jal	0 <func_80A01C30>
    3694:	00002825 	move	a1,zero
    3698:	963802c4 	lhu	t8,708(s1)
    369c:	3319ffdf 	andi	t9,t8,0xffdf
    36a0:	a63902c4 	sh	t9,708(s1)
    36a4:	02202025 	move	a0,s1
    36a8:	0c000000 	jal	0 <func_80A01C30>
    36ac:	02002825 	move	a1,s0
    36b0:	8fbf001c 	lw	ra,28(sp)
    36b4:	8fb00014 	lw	s0,20(sp)
    36b8:	8fb10018 	lw	s1,24(sp)
    36bc:	03e00008 	jr	ra
    36c0:	27bd0020 	addiu	sp,sp,32

000036c4 <func_80A052F4>:
    36c4:	27bdffe0 	addiu	sp,sp,-32
    36c8:	afbf001c 	sw	ra,28(sp)
    36cc:	afb10018 	sw	s1,24(sp)
    36d0:	afb00014 	sw	s0,20(sp)
    36d4:	00808025 	move	s0,a0
    36d8:	0c000000 	jal	0 <func_80A01C30>
    36dc:	00a08825 	move	s1,a1
    36e0:	0c000000 	jal	0 <func_80A01C30>
    36e4:	262420d8 	addiu	a0,s1,8408
    36e8:	24010004 	li	at,4
    36ec:	14410020 	bne	v0,at,3770 <func_80A052F4+0xac>
    36f0:	02002025 	move	a0,s0
    36f4:	0c000000 	jal	0 <func_80A01C30>
    36f8:	02202025 	move	a0,s1
    36fc:	10400028 	beqz	v0,37a0 <func_80A052F4+0xdc>
    3700:	240e00ff 	li	t6,255
    3704:	3c010001 	lui	at,0x1
    3708:	00310821 	addu	at,at,s1
    370c:	3c020001 	lui	v0,0x1
    3710:	a42e04ca 	sh	t6,1226(at)
    3714:	00511021 	addu	v0,v0,s1
    3718:	904204bd 	lbu	v0,1213(v0)
    371c:	3c0f0000 	lui	t7,0x0
    3720:	25ef0000 	addiu	t7,t7,0
    3724:	10400006 	beqz	v0,3740 <func_80A052F4+0x7c>
    3728:	02202025 	move	a0,s1
    372c:	24010001 	li	at,1
    3730:	10410008 	beq	v0,at,3754 <func_80A052F4+0x90>
    3734:	3c180000 	lui	t8,0x0
    3738:	1000001a 	b	37a4 <func_80A052F4+0xe0>
    373c:	02002025 	move	a0,s0
    3740:	ae0f0130 	sw	t7,304(s0)
    3744:	0c000000 	jal	0 <func_80A01C30>
    3748:	240500e2 	li	a1,226
    374c:	10000015 	b	37a4 <func_80A052F4+0xe0>
    3750:	02002025 	move	a0,s0
    3754:	27180000 	addiu	t8,t8,0
    3758:	ae180130 	sw	t8,304(s0)
    375c:	02202025 	move	a0,s1
    3760:	0c000000 	jal	0 <func_80A01C30>
    3764:	240500e1 	li	a1,225
    3768:	1000000e 	b	37a4 <func_80A052F4+0xe0>
    376c:	02002025 	move	a0,s0
    3770:	0c000000 	jal	0 <func_80A01C30>
    3774:	02202825 	move	a1,s1
    3778:	10400009 	beqz	v0,37a0 <func_80A052F4+0xdc>
    377c:	3c190000 	lui	t9,0x0
    3780:	27390000 	addiu	t9,t9,0
    3784:	ae190130 	sw	t9,304(s0)
    3788:	02002025 	move	a0,s0
    378c:	0c000000 	jal	0 <func_80A01C30>
    3790:	00002825 	move	a1,zero
    3794:	960802c4 	lhu	t0,708(s0)
    3798:	3109ffdf 	andi	t1,t0,0xffdf
    379c:	a60902c4 	sh	t1,708(s0)
    37a0:	02002025 	move	a0,s0
    37a4:	0c000000 	jal	0 <func_80A01C30>
    37a8:	02202825 	move	a1,s1
    37ac:	8fbf001c 	lw	ra,28(sp)
    37b0:	8fb00014 	lw	s0,20(sp)
    37b4:	8fb10018 	lw	s1,24(sp)
    37b8:	03e00008 	jr	ra
    37bc:	27bd0020 	addiu	sp,sp,32

000037c0 <func_80A053F0>:
    37c0:	27bdffc8 	addiu	sp,sp,-56
    37c4:	afbf0024 	sw	ra,36(sp)
    37c8:	afb00020 	sw	s0,32(sp)
    37cc:	afa5003c 	sw	a1,60(sp)
    37d0:	8caf1c44 	lw	t7,7236(a1)
    37d4:	00808025 	move	s0,a0
    37d8:	afaf002c 	sw	t7,44(sp)
    37dc:	85e20690 	lh	v0,1680(t7)
    37e0:	1440001a 	bnez	v0,384c <func_80A053F0+0x8c>
    37e4:	00000000 	nop
    37e8:	8df80664 	lw	t8,1636(t7)
    37ec:	3c020000 	lui	v0,0x0
    37f0:	5700001d 	bnezl	t8,3868 <func_80A053F0+0xa8>
    37f4:	02002025 	move	a0,s0
    37f8:	94420038 	lhu	v0,56(v0)
    37fc:	3c190000 	lui	t9,0x0
    3800:	28410258 	slti	at,v0,600
    3804:	14200003 	bnez	at,3814 <func_80A053F0+0x54>
    3808:	28410bb9 	slti	at,v0,3001
    380c:	14200005 	bnez	at,3824 <func_80A053F0+0x64>
    3810:	00000000 	nop
    3814:	8f390000 	lw	t9,0(t9)
    3818:	872812c6 	lh	t0,4806(t9)
    381c:	51000012 	beqzl	t0,3868 <func_80A053F0+0xa8>
    3820:	02002025 	move	a0,s0
    3824:	0c000000 	jal	0 <func_80A01C30>
    3828:	8fa4003c 	lw	a0,60(sp)
    382c:	8fa3002c 	lw	v1,44(sp)
    3830:	2401015f 	li	at,351
    3834:	a4620690 	sh	v0,1680(v1)
    3838:	84690690 	lh	t1,1680(v1)
    383c:	5521000a 	bnel	t1,at,3868 <func_80A053F0+0xa8>
    3840:	02002025 	move	a0,s0
    3844:	10000007 	b	3864 <func_80A053F0+0xa4>
    3848:	a4600690 	sh	zero,1680(v1)
    384c:	04430006 	bgezl	v0,3868 <func_80A053F0+0xa8>
    3850:	02002025 	move	a0,s0
    3854:	8e0a0004 	lw	t2,4(s0)
    3858:	3c010001 	lui	at,0x1
    385c:	01415825 	or	t3,t2,at
    3860:	ae0b0004 	sw	t3,4(s0)
    3864:	02002025 	move	a0,s0
    3868:	0c000000 	jal	0 <func_80A01C30>
    386c:	8fa5003c 	lw	a1,60(sp)
    3870:	1040002c 	beqz	v0,3924 <func_80A053F0+0x164>
    3874:	3c040000 	lui	a0,0x0
    3878:	24840000 	addiu	a0,a0,0
    387c:	24056873 	li	a1,26739
    3880:	0c000000 	jal	0 <func_80A01C30>
    3884:	24060020 	li	a2,32
    3888:	8e0d0024 	lw	t5,36(s0)
    388c:	8e0c0028 	lw	t4,40(s0)
    3890:	ae0d0038 	sw	t5,56(s0)
    3894:	8e0d002c 	lw	t5,44(s0)
    3898:	ae0c003c 	sw	t4,60(s0)
    389c:	ae0d0040 	sw	t5,64(s0)
    38a0:	0c000000 	jal	0 <func_80A01C30>
    38a4:	8fa4003c 	lw	a0,60(sp)
    38a8:	960e010e 	lhu	t6,270(s0)
    38ac:	3c0c0000 	lui	t4,0x0
    38b0:	258c0000 	addiu	t4,t4,0
    38b4:	15c20007 	bne	t6,v0,38d4 <func_80A053F0+0x114>
    38b8:	02002025 	move	a0,s0
    38bc:	960f02c4 	lhu	t7,708(s0)
    38c0:	24190bb9 	li	t9,3001
    38c4:	3c010000 	lui	at,0x0
    38c8:	35f80080 	ori	t8,t7,0x80
    38cc:	a61802c4 	sh	t8,708(s0)
    38d0:	a4390038 	sh	t9,56(at)
    38d4:	960802c4 	lhu	t0,708(s0)
    38d8:	ae0c0130 	sw	t4,304(s0)
    38dc:	24050003 	li	a1,3
    38e0:	350a0010 	ori	t2,t0,0x10
    38e4:	a60a02c4 	sh	t2,708(s0)
    38e8:	354b0020 	ori	t3,t2,0x20
    38ec:	0c000000 	jal	0 <func_80A01C30>
    38f0:	a60b02c4 	sh	t3,708(s0)
    38f4:	8e020298 	lw	v0,664(s0)
    38f8:	50400005 	beqzl	v0,3910 <func_80A053F0+0x150>
    38fc:	8e0f0004 	lw	t7,4(s0)
    3900:	8c4d0004 	lw	t5,4(v0)
    3904:	35ae0100 	ori	t6,t5,0x100
    3908:	ac4e0004 	sw	t6,4(v0)
    390c:	8e0f0004 	lw	t7,4(s0)
    3910:	3c01fffe 	lui	at,0xfffe
    3914:	3421ffff 	ori	at,at,0xffff
    3918:	01e1c024 	and	t8,t7,at
    391c:	10000030 	b	39e0 <func_80A053F0+0x220>
    3920:	ae180004 	sw	t8,4(s0)
    3924:	8e1902cc 	lw	t9,716(s0)
    3928:	02002025 	move	a0,s0
    392c:	8fa5003c 	lw	a1,60(sp)
    3930:	0320f809 	jalr	t9
    3934:	00000000 	nop
    3938:	860802bc 	lh	t0,700(s0)
    393c:	3c090000 	lui	t1,0x0
    3940:	3c0a0000 	lui	t2,0x0
    3944:	a60800b6 	sh	t0,182(s0)
    3948:	8d4a0000 	lw	t2,0(t2)
    394c:	8d290eb8 	lw	t1,3768(t1)
    3950:	3c0b0000 	lui	t3,0x0
    3954:	3c0d0000 	lui	t5,0x0
    3958:	a54912b4 	sh	t1,4788(t2)
    395c:	8d6b0000 	lw	t3,0(t3)
    3960:	856c12b6 	lh	t4,4790(t3)
    3964:	1180000d 	beqz	t4,399c <func_80A053F0+0x1dc>
    3968:	00000000 	nop
    396c:	8dad0eb8 	lw	t5,3768(t5)
    3970:	3c040000 	lui	a0,0x0
    3974:	24840000 	addiu	a0,a0,0
    3978:	11a00008 	beqz	t5,399c <func_80A053F0+0x1dc>
    397c:	00000000 	nop
    3980:	0c000000 	jal	0 <func_80A01C30>
    3984:	24050a23 	li	a1,2595
    3988:	3c040000 	lui	a0,0x0
    398c:	3c050000 	lui	a1,0x0
    3990:	8ca50eb8 	lw	a1,3768(a1)
    3994:	0c000000 	jal	0 <func_80A01C30>
    3998:	24840000 	addiu	a0,a0,0
    399c:	0c000000 	jal	0 <func_80A01C30>
    39a0:	8fa4003c 	lw	a0,60(sp)
    39a4:	1440000e 	bnez	v0,39e0 <func_80A053F0+0x220>
    39a8:	3c020000 	lui	v0,0x0
    39ac:	94420038 	lhu	v0,56(v0)
    39b0:	284164c8 	slti	at,v0,25800
    39b4:	10200004 	beqz	at,39c8 <func_80A053F0+0x208>
    39b8:	244e0001 	addiu	t6,v0,1
    39bc:	3c010000 	lui	at,0x0
    39c0:	10000007 	b	39e0 <func_80A053F0+0x220>
    39c4:	a42e0038 	sh	t6,56(at)
    39c8:	960f02c4 	lhu	t7,708(s0)
    39cc:	3c010000 	lui	at,0x0
    39d0:	31f80080 	andi	t8,t7,0x80
    39d4:	57000003 	bnezl	t8,39e4 <func_80A053F0+0x224>
    39d8:	44800000 	mtc1	zero,$f0
    39dc:	a4200038 	sh	zero,56(at)
    39e0:	44800000 	mtc1	zero,$f0
    39e4:	c60402a4 	lwc1	$f4,676(s0)
    39e8:	961902be 	lhu	t9,702(s0)
    39ec:	ae000298 	sw	zero,664(s0)
    39f0:	4604003c 	c.lt.s	$f0,$f4
    39f4:	27280001 	addiu	t0,t9,1
    39f8:	a60802be 	sh	t0,702(s0)
    39fc:	260402a4 	addiu	a0,s0,676
    3a00:	45000016 	bc1f	3a5c <func_80A053F0+0x29c>
    3a04:	3c063d4c 	lui	a2,0x3d4c
    3a08:	44050000 	mfc1	a1,$f0
    3a0c:	0c000000 	jal	0 <func_80A01C30>
    3a10:	34c6cccd 	ori	a2,a2,0xcccd
    3a14:	c60002a4 	lwc1	$f0,676(s0)
    3a18:	8fa9002c 	lw	t1,44(sp)
    3a1c:	3c014443 	lui	at,0x4443
    3a20:	46000182 	mul.s	$f6,$f0,$f0
    3a24:	44818000 	mtc1	at,$f16
    3a28:	c52a00ec 	lwc1	$f10,236(t1)
    3a2c:	3c013f00 	lui	at,0x3f00
    3a30:	44812000 	mtc1	at,$f4
    3a34:	46105480 	add.s	$f18,$f10,$f16
    3a38:	3c073e4c 	lui	a3,0x3e4c
    3a3c:	46003202 	mul.s	$f8,$f6,$f0
    3a40:	34e7cccd 	ori	a3,a3,0xcccd
    3a44:	44069000 	mfc1	a2,$f18
    3a48:	8fa4003c 	lw	a0,60(sp)
    3a4c:	e7a40010 	swc1	$f4,16(sp)
    3a50:	44054000 	mfc1	a1,$f8
    3a54:	0c000000 	jal	0 <func_80A01C30>
    3a58:	00000000 	nop
    3a5c:	920202c7 	lbu	v0,711(s0)
    3a60:	02002025 	move	a0,s0
    3a64:	18400003 	blez	v0,3a74 <func_80A053F0+0x2b4>
    3a68:	244affff 	addiu	t2,v0,-1
    3a6c:	a20a02c7 	sb	t2,711(s0)
    3a70:	314200ff 	andi	v0,t2,0xff
    3a74:	14400006 	bnez	v0,3a90 <func_80A053F0+0x2d0>
    3a78:	8fab003c 	lw	t3,60(sp)
    3a7c:	916c1d6c 	lbu	t4,7532(t3)
    3a80:	240d0001 	li	t5,1
    3a84:	11800002 	beqz	t4,3a90 <func_80A053F0+0x2d0>
    3a88:	00000000 	nop
    3a8c:	a20d02c7 	sb	t5,711(s0)
    3a90:	0c000000 	jal	0 <func_80A01C30>
    3a94:	8fa5003c 	lw	a1,60(sp)
    3a98:	8fbf0024 	lw	ra,36(sp)
    3a9c:	8fb00020 	lw	s0,32(sp)
    3aa0:	27bd0038 	addiu	sp,sp,56
    3aa4:	03e00008 	jr	ra
    3aa8:	00000000 	nop

00003aac <EnElf_Update>:
    3aac:	27bdffe8 	addiu	sp,sp,-24
    3ab0:	afbf0014 	sw	ra,20(sp)
    3ab4:	afa5001c 	sw	a1,28(sp)
    3ab8:	afa40018 	sw	a0,24(sp)
    3abc:	8c9902cc 	lw	t9,716(a0)
    3ac0:	0320f809 	jalr	t9
    3ac4:	00000000 	nop
    3ac8:	8fa40018 	lw	a0,24(sp)
    3acc:	948f02be 	lhu	t7,702(a0)
    3ad0:	948802c4 	lhu	t0,708(a0)
    3ad4:	848e02bc 	lh	t6,700(a0)
    3ad8:	25f80001 	addiu	t8,t7,1
    3adc:	31090200 	andi	t1,t0,0x200
    3ae0:	a49802be 	sh	t8,702(a0)
    3ae4:	11200003 	beqz	t1,3af4 <EnElf_Update+0x48>
    3ae8:	a48e00b6 	sh	t6,182(a0)
    3aec:	0c000000 	jal	0 <func_80A01C30>
    3af0:	8fa5001c 	lw	a1,28(sp)
    3af4:	8fbf0014 	lw	ra,20(sp)
    3af8:	27bd0018 	addiu	sp,sp,24
    3afc:	03e00008 	jr	ra
    3b00:	00000000 	nop

00003b04 <func_80A05734>:
    3b04:	27bdffb8 	addiu	sp,sp,-72
    3b08:	afb00020 	sw	s0,32(sp)
    3b0c:	24010008 	li	at,8
    3b10:	00a08025 	move	s0,a1
    3b14:	afbf0024 	sw	ra,36(sp)
    3b18:	f7b40018 	sdc1	$f20,24(sp)
    3b1c:	afa40048 	sw	a0,72(sp)
    3b20:	afa60050 	sw	a2,80(sp)
    3b24:	14a1002a 	bne	a1,at,3bd0 <func_80A05734+0xcc>
    3b28:	afa70054 	sw	a3,84(sp)
    3b2c:	8fae005c 	lw	t6,92(sp)
    3b30:	95c402be 	lhu	a0,702(t6)
    3b34:	00042300 	sll	a0,a0,0xc
    3b38:	00042400 	sll	a0,a0,0x10
    3b3c:	0c000000 	jal	0 <func_80A01C30>
    3b40:	00042403 	sra	a0,a0,0x10
    3b44:	3c010000 	lui	at,0x0
    3b48:	c4240000 	lwc1	$f4,0(at)
    3b4c:	3c013f80 	lui	at,0x3f80
    3b50:	44814000 	mtc1	at,$f8
    3b54:	46040182 	mul.s	$f6,$f0,$f4
    3b58:	3c010000 	lui	at,0x0
    3b5c:	c4300000 	lwc1	$f16,0(at)
    3b60:	8fa2005c 	lw	v0,92(sp)
    3b64:	3c010000 	lui	at,0x0
    3b68:	944f02c4 	lhu	t7,708(v0)
    3b6c:	46083280 	add.s	$f10,$f6,$f8
    3b70:	31f80200 	andi	t8,t7,0x200
    3b74:	46105082 	mul.s	$f2,$f10,$f16
    3b78:	13000002 	beqz	t8,3b84 <func_80A05734+0x80>
    3b7c:	46001506 	mov.s	$f20,$f2
    3b80:	46021500 	add.s	$f20,$f2,$f2
    3b84:	c4520050 	lwc1	$f18,80(v0)
    3b88:	c4240000 	lwc1	$f4,0(at)
    3b8c:	3c040000 	lui	a0,0x0
    3b90:	24840000 	addiu	a0,a0,0
    3b94:	46049182 	mul.s	$f6,$f18,$f4
    3b98:	27a50034 	addiu	a1,sp,52
    3b9c:	4606a502 	mul.s	$f20,$f20,$f6
    3ba0:	0c000000 	jal	0 <func_80A01C30>
    3ba4:	00000000 	nop
    3ba8:	c7ac0034 	lwc1	$f12,52(sp)
    3bac:	c7ae0038 	lwc1	$f14,56(sp)
    3bb0:	8fa6003c 	lw	a2,60(sp)
    3bb4:	0c000000 	jal	0 <func_80A01C30>
    3bb8:	00003825 	move	a3,zero
    3bbc:	4406a000 	mfc1	a2,$f20
    3bc0:	4600a306 	mov.s	$f12,$f20
    3bc4:	4600a386 	mov.s	$f14,$f20
    3bc8:	0c000000 	jal	0 <func_80A01C30>
    3bcc:	24070001 	li	a3,1
    3bd0:	8fb9005c 	lw	t9,92(sp)
    3bd4:	24010004 	li	at,4
    3bd8:	00001025 	move	v0,zero
    3bdc:	972802c4 	lhu	t0,708(t9)
    3be0:	31090200 	andi	t1,t0,0x200
    3be4:	5120000c 	beqzl	t1,3c18 <func_80A05734+0x114>
    3be8:	8fbf0024 	lw	ra,36(sp)
    3bec:	12010008 	beq	s0,at,3c10 <func_80A05734+0x10c>
    3bf0:	8faa0050 	lw	t2,80(sp)
    3bf4:	24010007 	li	at,7
    3bf8:	12010005 	beq	s0,at,3c10 <func_80A05734+0x10c>
    3bfc:	2401000b 	li	at,11
    3c00:	12010003 	beq	s0,at,3c10 <func_80A05734+0x10c>
    3c04:	2401000e 	li	at,14
    3c08:	56010003 	bnel	s0,at,3c18 <func_80A05734+0x114>
    3c0c:	8fbf0024 	lw	ra,36(sp)
    3c10:	ad400000 	sw	zero,0(t2)
    3c14:	8fbf0024 	lw	ra,36(sp)
    3c18:	d7b40018 	ldc1	$f20,24(sp)
    3c1c:	8fb00020 	lw	s0,32(sp)
    3c20:	03e00008 	jr	ra
    3c24:	27bd0048 	addiu	sp,sp,72

00003c28 <EnElf_Draw>:
    3c28:	27bdff80 	addiu	sp,sp,-128
    3c2c:	afbf002c 	sw	ra,44(sp)
    3c30:	afb00028 	sw	s0,40(sp)
    3c34:	848e02a8 	lh	t6,680(a0)
    3c38:	24010008 	li	at,8
    3c3c:	00808025 	move	s0,a0
    3c40:	00a03025 	move	a2,a1
    3c44:	11c101a1 	beq	t6,at,42cc <EnElf_Draw+0x6a4>
    3c48:	8ca21c44 	lw	v0,7236(a1)
    3c4c:	948f02c4 	lhu	t7,708(a0)
    3c50:	31f80008 	andi	t8,t7,0x8
    3c54:	5700019e 	bnezl	t8,42d0 <EnElf_Draw+0x6a8>
    3c58:	8fbf002c 	lw	ra,44(sp)
    3c5c:	8c59067c 	lw	t9,1660(v0)
    3c60:	3c0b0000 	lui	t3,0x0
    3c64:	24050020 	li	a1,32
    3c68:	001952c0 	sll	t2,t9,0xb
    3c6c:	0543000c 	bgezl	t2,3ca0 <EnElf_Draw+0x78>
    3c70:	8cc40000 	lw	a0,0(a2)
    3c74:	8d6b0000 	lw	t3,0(t3)
    3c78:	c48800ec 	lwc1	$f8,236(a0)
    3c7c:	856c1508 	lh	t4,5384(t3)
    3c80:	448c2000 	mtc1	t4,$f4
    3c84:	00000000 	nop
    3c88:	468021a0 	cvt.s.w	$f6,$f4
    3c8c:	4608303c 	c.lt.s	$f6,$f8
    3c90:	00000000 	nop
    3c94:	4502018e 	bc1fl	42d0 <EnElf_Draw+0x6a8>
    3c98:	8fbf002c 	lw	ra,44(sp)
    3c9c:	8cc40000 	lw	a0,0(a2)
    3ca0:	0c000000 	jal	0 <func_80A01C30>
    3ca4:	afa60084 	sw	a2,132(sp)
    3ca8:	8fad0084 	lw	t5,132(sp)
    3cac:	3c060000 	lui	a2,0x0
    3cb0:	24c60000 	addiu	a2,a2,0
    3cb4:	8da50000 	lw	a1,0(t5)
    3cb8:	afa20068 	sw	v0,104(sp)
    3cbc:	27a40050 	addiu	a0,sp,80
    3cc0:	24070aaa 	li	a3,2730
    3cc4:	0c000000 	jal	0 <func_80A01C30>
    3cc8:	afa50060 	sw	a1,96(sp)
    3ccc:	8fae0084 	lw	t6,132(sp)
    3cd0:	0c000000 	jal	0 <func_80A01C30>
    3cd4:	8dc40000 	lw	a0,0(t6)
    3cd8:	960402be 	lhu	a0,702(s0)
    3cdc:	8fa80068 	lw	t0,104(sp)
    3ce0:	8fa90060 	lw	t1,96(sp)
    3ce4:	00800821 	move	at,a0
    3ce8:	00042080 	sll	a0,a0,0x2
    3cec:	00812023 	subu	a0,a0,at
    3cf0:	000420c0 	sll	a0,a0,0x3
    3cf4:	00812021 	addu	a0,a0,at
    3cf8:	00042040 	sll	a0,a0,0x1
    3cfc:	308401ff 	andi	a0,a0,0x1ff
    3d00:	28810100 	slti	at,a0,256
    3d04:	14200003 	bnez	at,3d14 <EnElf_Draw+0xec>
    3d08:	3c19db06 	lui	t9,0xdb06
    3d0c:	240f01ff 	li	t7,511
    3d10:	01e42023 	subu	a0,t7,a0
    3d14:	860202c2 	lh	v0,706(s0)
    3d18:	37390020 	ori	t9,t9,0x20
    3d1c:	3c0ae700 	lui	t2,0xe700
    3d20:	0441000a 	bgez	v0,3d4c <EnElf_Draw+0x124>
    3d24:	3c0bfa00 	lui	t3,0xfa00
    3d28:	44825000 	mtc1	v0,$f10
    3d2c:	3c010000 	lui	at,0x0
    3d30:	c4320000 	lwc1	$f18,0(at)
    3d34:	46805420 	cvt.s.w	$f16,$f10
    3d38:	3c013f80 	lui	at,0x3f80
    3d3c:	44813000 	mtc1	at,$f6
    3d40:	46128102 	mul.s	$f4,$f16,$f18
    3d44:	10000004 	b	3d58 <EnElf_Draw+0x130>
    3d48:	46062000 	add.s	$f0,$f4,$f6
    3d4c:	3c013f80 	lui	at,0x3f80
    3d50:	44810000 	mtc1	at,$f0
    3d54:	00000000 	nop
    3d58:	8d2302d0 	lw	v1,720(t1)
    3d5c:	01001025 	move	v0,t0
    3d60:	356b0001 	ori	t3,t3,0x1
    3d64:	24780008 	addiu	t8,v1,8
    3d68:	ad3802d0 	sw	t8,720(t1)
    3d6c:	ac680004 	sw	t0,4(v1)
    3d70:	ac790000 	sw	t9,0(v1)
    3d74:	ac4a0000 	sw	t2,0(v0)
    3d78:	ac400004 	sw	zero,4(v0)
    3d7c:	25080008 	addiu	t0,t0,8
    3d80:	01001025 	move	v0,t0
    3d84:	ac4b0000 	sw	t3,0(v0)
    3d88:	444cf800 	cfc1	t4,$31
    3d8c:	240d0001 	li	t5,1
    3d90:	44cdf800 	ctc1	t5,$31
    3d94:	c6080244 	lwc1	$f8,580(s0)
    3d98:	3c070000 	lui	a3,0x0
    3d9c:	25080008 	addiu	t0,t0,8
    3da0:	460042a4 	cvt.w.s	$f10,$f8
    3da4:	24e70000 	addiu	a3,a3,0
    3da8:	444df800 	cfc1	t5,$31
    3dac:	00000000 	nop
    3db0:	31ad0078 	andi	t5,t5,0x78
    3db4:	11a00012 	beqz	t5,3e00 <EnElf_Draw+0x1d8>
    3db8:	3c014f00 	lui	at,0x4f00
    3dbc:	44815000 	mtc1	at,$f10
    3dc0:	240d0001 	li	t5,1
    3dc4:	460a4281 	sub.s	$f10,$f8,$f10
    3dc8:	44cdf800 	ctc1	t5,$31
    3dcc:	00000000 	nop
    3dd0:	460052a4 	cvt.w.s	$f10,$f10
    3dd4:	444df800 	cfc1	t5,$31
    3dd8:	00000000 	nop
    3ddc:	31ad0078 	andi	t5,t5,0x78
    3de0:	15a00005 	bnez	t5,3df8 <EnElf_Draw+0x1d0>
    3de4:	00000000 	nop
    3de8:	440d5000 	mfc1	t5,$f10
    3dec:	3c018000 	lui	at,0x8000
    3df0:	10000007 	b	3e10 <EnElf_Draw+0x1e8>
    3df4:	01a16825 	or	t5,t5,at
    3df8:	10000005 	b	3e10 <EnElf_Draw+0x1e8>
    3dfc:	240dffff 	li	t5,-1
    3e00:	440d5000 	mfc1	t5,$f10
    3e04:	00000000 	nop
    3e08:	05a0fffb 	bltz	t5,3df8 <EnElf_Draw+0x1d0>
    3e0c:	00000000 	nop
    3e10:	44ccf800 	ctc1	t4,$31
    3e14:	240a0001 	li	t2,1
    3e18:	c6100248 	lwc1	$f16,584(s0)
    3e1c:	000dc600 	sll	t8,t5,0x18
    3e20:	4459f800 	cfc1	t9,$31
    3e24:	44caf800 	ctc1	t2,$31
    3e28:	3c014f00 	lui	at,0x4f00
    3e2c:	460084a4 	cvt.w.s	$f18,$f16
    3e30:	444af800 	cfc1	t2,$31
    3e34:	00000000 	nop
    3e38:	314a0078 	andi	t2,t2,0x78
    3e3c:	51400013 	beqzl	t2,3e8c <EnElf_Draw+0x264>
    3e40:	440a9000 	mfc1	t2,$f18
    3e44:	44819000 	mtc1	at,$f18
    3e48:	240a0001 	li	t2,1
    3e4c:	46128481 	sub.s	$f18,$f16,$f18
    3e50:	44caf800 	ctc1	t2,$31
    3e54:	00000000 	nop
    3e58:	460094a4 	cvt.w.s	$f18,$f18
    3e5c:	444af800 	cfc1	t2,$31
    3e60:	00000000 	nop
    3e64:	314a0078 	andi	t2,t2,0x78
    3e68:	15400005 	bnez	t2,3e80 <EnElf_Draw+0x258>
    3e6c:	00000000 	nop
    3e70:	440a9000 	mfc1	t2,$f18
    3e74:	3c018000 	lui	at,0x8000
    3e78:	10000007 	b	3e98 <EnElf_Draw+0x270>
    3e7c:	01415025 	or	t2,t2,at
    3e80:	10000005 	b	3e98 <EnElf_Draw+0x270>
    3e84:	240affff 	li	t2,-1
    3e88:	440a9000 	mfc1	t2,$f18
    3e8c:	00000000 	nop
    3e90:	0540fffb 	bltz	t2,3e80 <EnElf_Draw+0x258>
    3e94:	00000000 	nop
    3e98:	44d9f800 	ctc1	t9,$31
    3e9c:	24190001 	li	t9,1
    3ea0:	c604024c 	lwc1	$f4,588(s0)
    3ea4:	314c00ff 	andi	t4,t2,0xff
    3ea8:	444ff800 	cfc1	t7,$31
    3eac:	44d9f800 	ctc1	t9,$31
    3eb0:	000c6c00 	sll	t5,t4,0x10
    3eb4:	030d7025 	or	t6,t8,t5
    3eb8:	460021a4 	cvt.w.s	$f6,$f4
    3ebc:	3c014f00 	lui	at,0x4f00
    3ec0:	4459f800 	cfc1	t9,$31
    3ec4:	00000000 	nop
    3ec8:	33390078 	andi	t9,t9,0x78
    3ecc:	53200013 	beqzl	t9,3f1c <EnElf_Draw+0x2f4>
    3ed0:	44193000 	mfc1	t9,$f6
    3ed4:	44813000 	mtc1	at,$f6
    3ed8:	24190001 	li	t9,1
    3edc:	46062181 	sub.s	$f6,$f4,$f6
    3ee0:	44d9f800 	ctc1	t9,$31
    3ee4:	00000000 	nop
    3ee8:	460031a4 	cvt.w.s	$f6,$f6
    3eec:	4459f800 	cfc1	t9,$31
    3ef0:	00000000 	nop
    3ef4:	33390078 	andi	t9,t9,0x78
    3ef8:	17200005 	bnez	t9,3f10 <EnElf_Draw+0x2e8>
    3efc:	00000000 	nop
    3f00:	44193000 	mfc1	t9,$f6
    3f04:	3c018000 	lui	at,0x8000
    3f08:	10000007 	b	3f28 <EnElf_Draw+0x300>
    3f0c:	0321c825 	or	t9,t9,at
    3f10:	10000005 	b	3f28 <EnElf_Draw+0x300>
    3f14:	2419ffff 	li	t9,-1
    3f18:	44193000 	mfc1	t9,$f6
    3f1c:	00000000 	nop
    3f20:	0720fffb 	bltz	t9,3f10 <EnElf_Draw+0x2e8>
    3f24:	00000000 	nop
    3f28:	44cff800 	ctc1	t7,$31
    3f2c:	c6080250 	lwc1	$f8,592(s0)
    3f30:	240f0001 	li	t7,1
    3f34:	332b00ff 	andi	t3,t9,0xff
    3f38:	46004282 	mul.s	$f10,$f8,$f0
    3f3c:	000b6200 	sll	t4,t3,0x8
    3f40:	3c19e200 	lui	t9,0xe200
    3f44:	01ccc025 	or	t8,t6,t4
    3f48:	3c014f00 	lui	at,0x4f00
    3f4c:	3739001c 	ori	t9,t9,0x1c
    3f50:	444df800 	cfc1	t5,$31
    3f54:	44cff800 	ctc1	t7,$31
    3f58:	00000000 	nop
    3f5c:	46005424 	cvt.w.s	$f16,$f10
    3f60:	444ff800 	cfc1	t7,$31
    3f64:	00000000 	nop
    3f68:	31ef0078 	andi	t7,t7,0x78
    3f6c:	51e00013 	beqzl	t7,3fbc <EnElf_Draw+0x394>
    3f70:	440f8000 	mfc1	t7,$f16
    3f74:	44818000 	mtc1	at,$f16
    3f78:	240f0001 	li	t7,1
    3f7c:	46105401 	sub.s	$f16,$f10,$f16
    3f80:	44cff800 	ctc1	t7,$31
    3f84:	00000000 	nop
    3f88:	46008424 	cvt.w.s	$f16,$f16
    3f8c:	444ff800 	cfc1	t7,$31
    3f90:	00000000 	nop
    3f94:	31ef0078 	andi	t7,t7,0x78
    3f98:	15e00005 	bnez	t7,3fb0 <EnElf_Draw+0x388>
    3f9c:	00000000 	nop
    3fa0:	440f8000 	mfc1	t7,$f16
    3fa4:	3c018000 	lui	at,0x8000
    3fa8:	10000007 	b	3fc8 <EnElf_Draw+0x3a0>
    3fac:	01e17825 	or	t7,t7,at
    3fb0:	10000005 	b	3fc8 <EnElf_Draw+0x3a0>
    3fb4:	240fffff 	li	t7,-1
    3fb8:	440f8000 	mfc1	t7,$f16
    3fbc:	00000000 	nop
    3fc0:	05e0fffb 	bltz	t7,3fb0 <EnElf_Draw+0x388>
    3fc4:	00000000 	nop
    3fc8:	31ea00ff 	andi	t2,t7,0xff
    3fcc:	030a5825 	or	t3,t8,t2
    3fd0:	ac4b0004 	sw	t3,4(v0)
    3fd4:	960e02c4 	lhu	t6,708(s0)
    3fd8:	44cdf800 	ctc1	t5,$31
    3fdc:	3c0adf00 	lui	t2,0xdf00
    3fe0:	31cc0004 	andi	t4,t6,0x4
    3fe4:	1180000a 	beqz	t4,4010 <EnElf_Draw+0x3e8>
    3fe8:	3c0efb00 	lui	t6,0xfb00
    3fec:	01001025 	move	v0,t0
    3ff0:	3c0de200 	lui	t5,0xe200
    3ff4:	3c0f0c18 	lui	t7,0xc18
    3ff8:	35ef4340 	ori	t7,t7,0x4340
    3ffc:	35ad001c 	ori	t5,t5,0x1c
    4000:	ac4d0000 	sw	t5,0(v0)
    4004:	ac4f0004 	sw	t7,4(v0)
    4008:	10000007 	b	4028 <EnElf_Draw+0x400>
    400c:	25080008 	addiu	t0,t0,8
    4010:	01001025 	move	v0,t0
    4014:	3c180c18 	lui	t8,0xc18
    4018:	37184b50 	ori	t8,t8,0x4b50
    401c:	ac580004 	sw	t8,4(v0)
    4020:	ac590000 	sw	t9,0(v0)
    4024:	25080008 	addiu	t0,t0,8
    4028:	ad0a0000 	sw	t2,0(t0)
    402c:	ad000004 	sw	zero,4(t0)
    4030:	8d2202d0 	lw	v0,720(t1)
    4034:	444cf800 	cfc1	t4,$31
    4038:	240d0001 	li	t5,1
    403c:	244b0008 	addiu	t3,v0,8
    4040:	ad2b02d0 	sw	t3,720(t1)
    4044:	ac4e0000 	sw	t6,0(v0)
    4048:	44cdf800 	ctc1	t5,$31
    404c:	c6120254 	lwc1	$f18,596(s0)
    4050:	3c014f00 	lui	at,0x4f00
    4054:	46009124 	cvt.w.s	$f4,$f18
    4058:	444df800 	cfc1	t5,$31
    405c:	00000000 	nop
    4060:	31ad0078 	andi	t5,t5,0x78
    4064:	51a00013 	beqzl	t5,40b4 <EnElf_Draw+0x48c>
    4068:	440d2000 	mfc1	t5,$f4
    406c:	44812000 	mtc1	at,$f4
    4070:	240d0001 	li	t5,1
    4074:	46049101 	sub.s	$f4,$f18,$f4
    4078:	44cdf800 	ctc1	t5,$31
    407c:	00000000 	nop
    4080:	46002124 	cvt.w.s	$f4,$f4
    4084:	444df800 	cfc1	t5,$31
    4088:	00000000 	nop
    408c:	31ad0078 	andi	t5,t5,0x78
    4090:	15a00005 	bnez	t5,40a8 <EnElf_Draw+0x480>
    4094:	00000000 	nop
    4098:	440d2000 	mfc1	t5,$f4
    409c:	3c018000 	lui	at,0x8000
    40a0:	10000007 	b	40c0 <EnElf_Draw+0x498>
    40a4:	01a16825 	or	t5,t5,at
    40a8:	10000005 	b	40c0 <EnElf_Draw+0x498>
    40ac:	240dffff 	li	t5,-1
    40b0:	440d2000 	mfc1	t5,$f4
    40b4:	00000000 	nop
    40b8:	05a0fffb 	bltz	t5,40a8 <EnElf_Draw+0x480>
    40bc:	00000000 	nop
    40c0:	44ccf800 	ctc1	t4,$31
    40c4:	240b0001 	li	t3,1
    40c8:	c6060258 	lwc1	$f6,600(s0)
    40cc:	000dc600 	sll	t8,t5,0x18
    40d0:	444af800 	cfc1	t2,$31
    40d4:	44cbf800 	ctc1	t3,$31
    40d8:	3c014f00 	lui	at,0x4f00
    40dc:	46003224 	cvt.w.s	$f8,$f6
    40e0:	444bf800 	cfc1	t3,$31
    40e4:	00000000 	nop
    40e8:	316b0078 	andi	t3,t3,0x78
    40ec:	51600013 	beqzl	t3,413c <EnElf_Draw+0x514>
    40f0:	440b4000 	mfc1	t3,$f8
    40f4:	44814000 	mtc1	at,$f8
    40f8:	240b0001 	li	t3,1
    40fc:	46083201 	sub.s	$f8,$f6,$f8
    4100:	44cbf800 	ctc1	t3,$31
    4104:	00000000 	nop
    4108:	46004224 	cvt.w.s	$f8,$f8
    410c:	444bf800 	cfc1	t3,$31
    4110:	00000000 	nop
    4114:	316b0078 	andi	t3,t3,0x78
    4118:	15600005 	bnez	t3,4130 <EnElf_Draw+0x508>
    411c:	00000000 	nop
    4120:	440b4000 	mfc1	t3,$f8
    4124:	3c018000 	lui	at,0x8000
    4128:	10000007 	b	4148 <EnElf_Draw+0x520>
    412c:	01615825 	or	t3,t3,at
    4130:	10000005 	b	4148 <EnElf_Draw+0x520>
    4134:	240bffff 	li	t3,-1
    4138:	440b4000 	mfc1	t3,$f8
    413c:	00000000 	nop
    4140:	0560fffb 	bltz	t3,4130 <EnElf_Draw+0x508>
    4144:	00000000 	nop
    4148:	44caf800 	ctc1	t2,$31
    414c:	240a0001 	li	t2,1
    4150:	c60a025c 	lwc1	$f10,604(s0)
    4154:	316c00ff 	andi	t4,t3,0xff
    4158:	4459f800 	cfc1	t9,$31
    415c:	44caf800 	ctc1	t2,$31
    4160:	000c6c00 	sll	t5,t4,0x10
    4164:	030d7825 	or	t7,t8,t5
    4168:	46005424 	cvt.w.s	$f16,$f10
    416c:	3c014f00 	lui	at,0x4f00
    4170:	444af800 	cfc1	t2,$31
    4174:	00000000 	nop
    4178:	314a0078 	andi	t2,t2,0x78
    417c:	51400013 	beqzl	t2,41cc <EnElf_Draw+0x5a4>
    4180:	440a8000 	mfc1	t2,$f16
    4184:	44818000 	mtc1	at,$f16
    4188:	240a0001 	li	t2,1
    418c:	46105401 	sub.s	$f16,$f10,$f16
    4190:	44caf800 	ctc1	t2,$31
    4194:	00000000 	nop
    4198:	46008424 	cvt.w.s	$f16,$f16
    419c:	444af800 	cfc1	t2,$31
    41a0:	00000000 	nop
    41a4:	314a0078 	andi	t2,t2,0x78
    41a8:	15400005 	bnez	t2,41c0 <EnElf_Draw+0x598>
    41ac:	00000000 	nop
    41b0:	440a8000 	mfc1	t2,$f16
    41b4:	3c018000 	lui	at,0x8000
    41b8:	10000007 	b	41d8 <EnElf_Draw+0x5b0>
    41bc:	01415025 	or	t2,t2,at
    41c0:	10000005 	b	41d8 <EnElf_Draw+0x5b0>
    41c4:	240affff 	li	t2,-1
    41c8:	440a8000 	mfc1	t2,$f16
    41cc:	00000000 	nop
    41d0:	0540fffb 	bltz	t2,41c0 <EnElf_Draw+0x598>
    41d4:	00000000 	nop
    41d8:	44d9f800 	ctc1	t9,$31
    41dc:	44849000 	mtc1	a0,$f18
    41e0:	24190001 	li	t9,1
    41e4:	314e00ff 	andi	t6,t2,0xff
    41e8:	46809120 	cvt.s.w	$f4,$f18
    41ec:	000e6200 	sll	t4,t6,0x8
    41f0:	01ecc025 	or	t8,t7,t4
    41f4:	3c014f00 	lui	at,0x4f00
    41f8:	46002182 	mul.s	$f6,$f4,$f0
    41fc:	444df800 	cfc1	t5,$31
    4200:	44d9f800 	ctc1	t9,$31
    4204:	00000000 	nop
    4208:	46003224 	cvt.w.s	$f8,$f6
    420c:	4459f800 	cfc1	t9,$31
    4210:	00000000 	nop
    4214:	33390078 	andi	t9,t9,0x78
    4218:	53200013 	beqzl	t9,4268 <EnElf_Draw+0x640>
    421c:	44194000 	mfc1	t9,$f8
    4220:	44814000 	mtc1	at,$f8
    4224:	24190001 	li	t9,1
    4228:	46083201 	sub.s	$f8,$f6,$f8
    422c:	44d9f800 	ctc1	t9,$31
    4230:	00000000 	nop
    4234:	46004224 	cvt.w.s	$f8,$f8
    4238:	4459f800 	cfc1	t9,$31
    423c:	00000000 	nop
    4240:	33390078 	andi	t9,t9,0x78
    4244:	17200005 	bnez	t9,425c <EnElf_Draw+0x634>
    4248:	00000000 	nop
    424c:	44194000 	mfc1	t9,$f8
    4250:	3c018000 	lui	at,0x8000
    4254:	10000007 	b	4274 <EnElf_Draw+0x64c>
    4258:	0321c825 	or	t9,t9,at
    425c:	10000005 	b	4274 <EnElf_Draw+0x64c>
    4260:	2419ffff 	li	t9,-1
    4264:	44194000 	mfc1	t9,$f8
    4268:	00000000 	nop
    426c:	0720fffb 	bltz	t9,425c <EnElf_Draw+0x634>
    4270:	00000000 	nop
    4274:	332b00ff 	andi	t3,t9,0xff
    4278:	030b7025 	or	t6,t8,t3
    427c:	ac4e0004 	sw	t6,4(v0)
    4280:	8e06016c 	lw	a2,364(s0)
    4284:	8e050150 	lw	a1,336(s0)
    4288:	afb00014 	sw	s0,20(sp)
    428c:	afa00010 	sw	zero,16(sp)
    4290:	8d2f02d0 	lw	t7,720(t1)
    4294:	44cdf800 	ctc1	t5,$31
    4298:	afa90060 	sw	t1,96(sp)
    429c:	8fa40084 	lw	a0,132(sp)
    42a0:	0c000000 	jal	0 <func_80A01C30>
    42a4:	afaf0018 	sw	t7,24(sp)
    42a8:	8fa90060 	lw	t1,96(sp)
    42ac:	3c060000 	lui	a2,0x0
    42b0:	24c60000 	addiu	a2,a2,0
    42b4:	ad2202d0 	sw	v0,720(t1)
    42b8:	8fac0084 	lw	t4,132(sp)
    42bc:	27a40050 	addiu	a0,sp,80
    42c0:	24070ae9 	li	a3,2793
    42c4:	0c000000 	jal	0 <func_80A01C30>
    42c8:	8d850000 	lw	a1,0(t4)
    42cc:	8fbf002c 	lw	ra,44(sp)
    42d0:	8fb00028 	lw	s0,40(sp)
    42d4:	27bd0080 	addiu	sp,sp,128
    42d8:	03e00008 	jr	ra
    42dc:	00000000 	nop

000042e0 <func_80A05F10>:
    42e0:	27bdffd0 	addiu	sp,sp,-48
    42e4:	00067880 	sll	t7,a2,0x2
    42e8:	afbf0014 	sw	ra,20(sp)
    42ec:	afa40030 	sw	a0,48(sp)
    42f0:	afa60038 	sw	a2,56(sp)
    42f4:	00afc021 	addu	t8,a1,t7
    42f8:	8f021d8c 	lw	v0,7564(t8)
    42fc:	00a03825 	move	a3,a1
    4300:	8c4a0018 	lw	t2,24(v0)
    4304:	8c59000c 	lw	t9,12(v0)
    4308:	8c480010 	lw	t0,16(v0)
    430c:	448a5000 	mtc1	t2,$f10
    4310:	8c490014 	lw	t1,20(v0)
    4314:	44992000 	mtc1	t9,$f4
    4318:	46805420 	cvt.s.w	$f16,$f10
    431c:	44883000 	mtc1	t0,$f6
    4320:	44894000 	mtc1	t1,$f8
    4324:	468020a0 	cvt.s.w	$f2,$f4
    4328:	e7b00018 	swc1	$f16,24(sp)
    432c:	8c4b001c 	lw	t3,28(v0)
    4330:	448b9000 	mtc1	t3,$f18
    4334:	46803320 	cvt.s.w	$f12,$f6
    4338:	46809120 	cvt.s.w	$f4,$f18
    433c:	468043a0 	cvt.s.w	$f14,$f8
    4340:	e7a4001c 	swc1	$f4,28(sp)
    4344:	8c4c0020 	lw	t4,32(v0)
    4348:	448c3000 	mtc1	t4,$f6
    434c:	00000000 	nop
    4350:	46803220 	cvt.s.w	$f8,$f6
    4354:	e7a80020 	swc1	$f8,32(sp)
    4358:	94e61d74 	lhu	a2,7540(a3)
    435c:	94450002 	lhu	a1,2(v0)
    4360:	94440004 	lhu	a0,4(v0)
    4364:	e7ae002c 	swc1	$f14,44(sp)
    4368:	e7ac0028 	swc1	$f12,40(sp)
    436c:	0c000000 	jal	0 <func_80A01C30>
    4370:	e7a20024 	swc1	$f2,36(sp)
    4374:	c7a20024 	lwc1	$f2,36(sp)
    4378:	c7aa0018 	lwc1	$f10,24(sp)
    437c:	8fa20030 	lw	v0,48(sp)
    4380:	c7ac0028 	lwc1	$f12,40(sp)
    4384:	46025401 	sub.s	$f16,$f10,$f2
    4388:	c7ae002c 	lwc1	$f14,44(sp)
    438c:	46008482 	mul.s	$f18,$f16,$f0
    4390:	46029100 	add.s	$f4,$f18,$f2
    4394:	e4440000 	swc1	$f4,0(v0)
    4398:	c7a6001c 	lwc1	$f6,28(sp)
    439c:	460c3201 	sub.s	$f8,$f6,$f12
    43a0:	46004282 	mul.s	$f10,$f8,$f0
    43a4:	460c5400 	add.s	$f16,$f10,$f12
    43a8:	e4500004 	swc1	$f16,4(v0)
    43ac:	c7b20020 	lwc1	$f18,32(sp)
    43b0:	460e9101 	sub.s	$f4,$f18,$f14
    43b4:	46002182 	mul.s	$f6,$f4,$f0
    43b8:	460e3200 	add.s	$f8,$f6,$f14
    43bc:	e4480008 	swc1	$f8,8(v0)
    43c0:	8fbf0014 	lw	ra,20(sp)
    43c4:	27bd0030 	addiu	sp,sp,48
    43c8:	03e00008 	jr	ra
    43cc:	00000000 	nop
