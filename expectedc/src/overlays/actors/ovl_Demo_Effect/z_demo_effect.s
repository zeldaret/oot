
build/src/overlays/actors/ovl_Demo_Effect/z_demo_effect.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80970F50>:
       0:	03e00008 	jr	ra
       4:	ac85019c 	sw	a1,412(a0)

00000008 <func_80970F58>:
       8:	27bdffe8 	addiu	sp,sp,-24
       c:	00057880 	sll	t7,a1,0x2
      10:	afbf0014 	sw	ra,20(sp)
      14:	afa5001c 	sw	a1,28(sp)
      18:	008fc021 	addu	t8,a0,t7
      1c:	8f021d8c 	lw	v0,7564(t8)
      20:	00803825 	move	a3,a0
      24:	94e61d74 	lhu	a2,7540(a3)
      28:	94440004 	lhu	a0,4(v0)
      2c:	0c000000 	jal	0 <func_80970F50>
      30:	94450002 	lhu	a1,2(v0)
      34:	3c013f80 	lui	at,0x3f80
      38:	44816000 	mtc1	at,$f12
      3c:	46000086 	mov.s	$f2,$f0
      40:	8fbf0014 	lw	ra,20(sp)
      44:	4600603c 	c.lt.s	$f12,$f0
      48:	00000000 	nop
      4c:	45020003 	bc1fl	5c <func_80970F58+0x54>
      50:	46001006 	mov.s	$f0,$f2
      54:	46006086 	mov.s	$f2,$f12
      58:	46001006 	mov.s	$f0,$f2
      5c:	03e00008 	jr	ra
      60:	27bd0018 	addiu	sp,sp,24

00000064 <func_80970FB4>:
      64:	27bdffe0 	addiu	sp,sp,-32
      68:	3c0e0000 	lui	t6,0x0
      6c:	afbf001c 	sw	ra,28(sp)
      70:	afb00018 	sw	s0,24(sp)
      74:	25ce0000 	addiu	t6,t6,0
      78:	acae0198 	sw	t6,408(a1)
      7c:	3c0f0000 	lui	t7,0x0
      80:	8def0004 	lw	t7,4(t7)
      84:	3c190000 	lui	t9,0x0
      88:	00a08025 	move	s0,a1
      8c:	11e00005 	beqz	t7,a4 <func_80970FB4+0x40>
      90:	27390000 	addiu	t9,t9,0
      94:	3c180000 	lui	t8,0x0
      98:	27180000 	addiu	t8,t8,0
      9c:	10000002 	b	a8 <func_80970FB4+0x44>
      a0:	acb80194 	sw	t8,404(a1)
      a4:	ae190194 	sw	t9,404(s0)
      a8:	848800a4 	lh	t0,164(a0)
      ac:	24010043 	li	at,67
      b0:	02002025 	move	a0,s0
      b4:	15010007 	bne	t0,at,d4 <func_80970FB4+0x70>
      b8:	3c053dcc 	lui	a1,0x3dcc
      bc:	3c053eb3 	lui	a1,0x3eb3
      c0:	34a53333 	ori	a1,a1,0x3333
      c4:	0c000000 	jal	0 <func_80970F50>
      c8:	02002025 	move	a0,s0
      cc:	10000004 	b	e0 <func_80970FB4+0x7c>
      d0:	24090001 	li	t1,1
      d4:	0c000000 	jal	0 <func_80970F50>
      d8:	34a5cccd 	ori	a1,a1,0xcccd
      dc:	24090001 	li	t1,1
      e0:	240a4000 	li	t2,16384
      e4:	a609018c 	sh	t1,396(s0)
      e8:	a60a00b4 	sh	t2,180(s0)
      ec:	0c000000 	jal	0 <func_80970F50>
      f0:	02002025 	move	a0,s0
      f4:	a6000192 	sh	zero,402(s0)
      f8:	86020192 	lh	v0,402(s0)
      fc:	a2000186 	sb	zero,390(s0)
     100:	3c010000 	lui	at,0x0
     104:	a6020190 	sh	v0,400(s0)
     108:	a602018e 	sh	v0,398(s0)
     10c:	8fbf001c 	lw	ra,28(sp)
     110:	8fb00018 	lw	s0,24(sp)
     114:	a4200000 	sh	zero,0(at)
     118:	03e00008 	jr	ra
     11c:	27bd0020 	addiu	sp,sp,32

00000120 <func_80971070>:
     120:	27bdffe8 	addiu	sp,sp,-24
     124:	afbf0014 	sw	ra,20(sp)
     128:	3c0e0000 	lui	t6,0x0
     12c:	3c0f0000 	lui	t7,0x0
     130:	25ce0000 	addiu	t6,t6,0
     134:	25ef0000 	addiu	t7,t7,0
     138:	a0800184 	sb	zero,388(a0)
     13c:	a0800185 	sb	zero,389(a0)
     140:	ac8e0198 	sw	t6,408(a0)
     144:	ac8f0194 	sw	t7,404(a0)
     148:	afa40018 	sw	a0,24(sp)
     14c:	0c000000 	jal	0 <func_80970F50>
     150:	3c053e80 	lui	a1,0x3e80
     154:	8fa40018 	lw	a0,24(sp)
     158:	24180006 	li	t8,6
     15c:	a498018c 	sh	t8,396(a0)
     160:	8fbf0014 	lw	ra,20(sp)
     164:	27bd0018 	addiu	sp,sp,24
     168:	03e00008 	jr	ra
     16c:	00000000 	nop

00000170 <DemoEffect_Init>:
     170:	27bdffa0 	addiu	sp,sp,-96
     174:	afbf003c 	sw	ra,60(sp)
     178:	afb00038 	sw	s0,56(sp)
     17c:	afa50064 	sw	a1,100(sp)
     180:	8482001c 	lh	v0,28(a0)
     184:	00808025 	move	s0,a0
     188:	3c040000 	lui	a0,0x0
     18c:	304ef000 	andi	t6,v0,0xf000
     190:	000e7b03 	sra	t7,t6,0xc
     194:	304500ff 	andi	a1,v0,0xff
     198:	afaf0050 	sw	t7,80(sp)
     19c:	afa50054 	sw	a1,84(sp)
     1a0:	0c000000 	jal	0 <func_80970F50>
     1a4:	24840000 	addiu	a0,a0,0
     1a8:	8fb80054 	lw	t8,84(sp)
     1ac:	3c050000 	lui	a1,0x0
     1b0:	24010001 	li	at,1
     1b4:	0018c840 	sll	t9,t8,0x1
     1b8:	00b92821 	addu	a1,a1,t9
     1bc:	84a50000 	lh	a1,0(a1)
     1c0:	8fa40064 	lw	a0,100(sp)
     1c4:	54a10004 	bnel	a1,at,1d8 <DemoEffect_Init+0x68>
     1c8:	3c010001 	lui	at,0x1
     1cc:	10000006 	b	1e8 <DemoEffect_Init+0x78>
     1d0:	00002825 	move	a1,zero
     1d4:	3c010001 	lui	at,0x1
     1d8:	342117a4 	ori	at,at,0x17a4
     1dc:	0c000000 	jal	0 <func_80970F50>
     1e0:	00812021 	addu	a0,a0,at
     1e4:	00402825 	move	a1,v0
     1e8:	3c040000 	lui	a0,0x0
     1ec:	24840000 	addiu	a0,a0,0
     1f0:	0c000000 	jal	0 <func_80970F50>
     1f4:	afa5004c 	sw	a1,76(sp)
     1f8:	8fa5004c 	lw	a1,76(sp)
     1fc:	3c040000 	lui	a0,0x0
     200:	24840000 	addiu	a0,a0,0
     204:	04a10006 	bgez	a1,220 <DemoEffect_Init+0xb0>
     208:	240602d3 	li	a2,723
     20c:	3c050000 	lui	a1,0x0
     210:	0c000000 	jal	0 <func_80970F50>
     214:	24a50000 	addiu	a1,a1,0
     218:	10000003 	b	228 <DemoEffect_Init+0xb8>
     21c:	3c053e4c 	lui	a1,0x3e4c
     220:	a205016c 	sb	a1,364(s0)
     224:	3c053e4c 	lui	a1,0x3e4c
     228:	a600018a 	sh	zero,394(s0)
     22c:	34a5cccd 	ori	a1,a1,0xcccd
     230:	0c000000 	jal	0 <func_80970F50>
     234:	02002025 	move	a0,s0
     238:	8fa80054 	lw	t0,84(sp)
     23c:	2d01001a 	sltiu	at,t0,26
     240:	102001ca 	beqz	at,96c <L8097189C+0x20>
     244:	00084080 	sll	t0,t0,0x2
     248:	3c010000 	lui	at,0x0
     24c:	00280821 	addu	at,at,t0
     250:	8c280000 	lw	t0,0(at)
     254:	01000008 	jr	t0
     258:	00000000 	nop

0000025c <L809711AC>:
     25c:	3c090000 	lui	t1,0x0
     260:	3c0a0000 	lui	t2,0x0
     264:	25290000 	addiu	t1,t1,0
     268:	254a0000 	addiu	t2,t2,0
     26c:	ae090198 	sw	t1,408(s0)
     270:	100001c4 	b	984 <L8097189C+0x38>
     274:	ae0a0194 	sw	t2,404(s0)

00000278 <L809711C8>:
     278:	3c0b0000 	lui	t3,0x0
     27c:	3c0c0000 	lui	t4,0x0
     280:	256b0000 	addiu	t3,t3,0
     284:	258c0000 	addiu	t4,t4,0
     288:	3c053dcc 	lui	a1,0x3dcc
     28c:	ae0b0198 	sw	t3,408(s0)
     290:	ae0c0194 	sw	t4,404(s0)
     294:	34a5cccd 	ori	a1,a1,0xcccd
     298:	0c000000 	jal	0 <func_80970F50>
     29c:	02002025 	move	a0,s0
     2a0:	100001b9 	b	988 <L8097189C+0x3c>
     2a4:	44800000 	mtc1	zero,$f0

000002a8 <L809711F8>:
     2a8:	3c0d0000 	lui	t5,0x0
     2ac:	3c0e0000 	lui	t6,0x0
     2b0:	240200ff 	li	v0,255
     2b4:	25ad0000 	addiu	t5,t5,0
     2b8:	25ce0000 	addiu	t6,t6,0
     2bc:	240f0005 	li	t7,5
     2c0:	3c053d4c 	lui	a1,0x3d4c
     2c4:	ae0d0198 	sw	t5,408(s0)
     2c8:	ae0e0194 	sw	t6,404(s0)
     2cc:	a2020184 	sb	v0,388(s0)
     2d0:	a20f0185 	sb	t7,389(s0)
     2d4:	a6000188 	sh	zero,392(s0)
     2d8:	34a5cccd 	ori	a1,a1,0xcccd
     2dc:	0c000000 	jal	0 <func_80970F50>
     2e0:	02002025 	move	a0,s0
     2e4:	240200ff 	li	v0,255
     2e8:	241800bc 	li	t8,188
     2ec:	24190064 	li	t9,100
     2f0:	a2180178 	sb	t8,376(s0)
     2f4:	a2020179 	sb	v0,377(s0)
     2f8:	a202017a 	sb	v0,378(s0)
     2fc:	a219017c 	sb	t9,380(s0)
     300:	a202017d 	sb	v0,381(s0)
     304:	1000019f 	b	984 <L8097189C+0x38>
     308:	a200017b 	sb	zero,379(s0)

0000030c <L8097125C>:
     30c:	3c080000 	lui	t0,0x0
     310:	3c090000 	lui	t1,0x0
     314:	240200ff 	li	v0,255
     318:	25080000 	addiu	t0,t0,0
     31c:	25290000 	addiu	t1,t1,0
     320:	ae080198 	sw	t0,408(s0)
     324:	ae090194 	sw	t1,404(s0)
     328:	a2020184 	sb	v0,388(s0)
     32c:	a2000185 	sb	zero,389(s0)
     330:	a2000186 	sb	zero,390(s0)
     334:	a6000188 	sh	zero,392(s0)
     338:	8faa0050 	lw	t2,80(sp)
     33c:	2d410007 	sltiu	at,t2,7
     340:	1020003e 	beqz	at,43c <L80971370+0x1c>
     344:	000a5080 	sll	t2,t2,0x2
     348:	3c010000 	lui	at,0x0
     34c:	002a0821 	addu	at,at,t2
     350:	8c2a0000 	lw	t2,0(at)
     354:	01400008 	jr	t2
     358:	00000000 	nop

0000035c <L809712AC>:
     35c:	240b0032 	li	t3,50
     360:	a2020178 	sb	v0,376(s0)
     364:	a2020179 	sb	v0,377(s0)
     368:	a202017a 	sb	v0,378(s0)
     36c:	a20b017c 	sb	t3,380(s0)
     370:	a202017b 	sb	v0,379(s0)
     374:	10000031 	b	43c <L80971370+0x1c>
     378:	a200017d 	sb	zero,381(s0)

0000037c <L809712CC>:
     37c:	240c0096 	li	t4,150
     380:	a2020178 	sb	v0,376(s0)
     384:	a2020179 	sb	v0,377(s0)
     388:	a202017a 	sb	v0,378(s0)
     38c:	a20c017c 	sb	t4,380(s0)
     390:	a200017b 	sb	zero,379(s0)
     394:	10000029 	b	43c <L80971370+0x1c>
     398:	a202017d 	sb	v0,381(s0)

0000039c <L809712EC>:
     39c:	240d00c8 	li	t5,200
     3a0:	a2020178 	sb	v0,376(s0)
     3a4:	a2020179 	sb	v0,377(s0)
     3a8:	a202017a 	sb	v0,378(s0)
     3ac:	a20d017c 	sb	t5,380(s0)
     3b0:	a200017b 	sb	zero,379(s0)
     3b4:	10000021 	b	43c <L80971370+0x1c>
     3b8:	a200017d 	sb	zero,381(s0)

000003bc <L8097130C>:
     3bc:	240e0096 	li	t6,150
     3c0:	a2020178 	sb	v0,376(s0)
     3c4:	a2020179 	sb	v0,377(s0)
     3c8:	a202017a 	sb	v0,378(s0)
     3cc:	a20e017c 	sb	t6,380(s0)
     3d0:	a202017b 	sb	v0,379(s0)
     3d4:	10000019 	b	43c <L80971370+0x1c>
     3d8:	a200017d 	sb	zero,381(s0)

000003dc <L8097132C>:
     3dc:	240f00c8 	li	t7,200
     3e0:	a2020178 	sb	v0,376(s0)
     3e4:	a2020179 	sb	v0,377(s0)
     3e8:	a202017a 	sb	v0,378(s0)
     3ec:	a20f017b 	sb	t7,379(s0)
     3f0:	a202017c 	sb	v0,380(s0)
     3f4:	10000011 	b	43c <L80971370+0x1c>
     3f8:	a200017d 	sb	zero,381(s0)

000003fc <L8097134C>:
     3fc:	241800c8 	li	t8,200
     400:	24190032 	li	t9,50
     404:	a2020178 	sb	v0,376(s0)
     408:	a2020179 	sb	v0,377(s0)
     40c:	a202017a 	sb	v0,378(s0)
     410:	a219017c 	sb	t9,380(s0)
     414:	a218017b 	sb	t8,379(s0)
     418:	10000008 	b	43c <L80971370+0x1c>
     41c:	a202017d 	sb	v0,381(s0)

00000420 <L80971370>:
     420:	240800c8 	li	t0,200
     424:	a2020178 	sb	v0,376(s0)
     428:	a2020179 	sb	v0,377(s0)
     42c:	a202017a 	sb	v0,378(s0)
     430:	a208017c 	sb	t0,380(s0)
     434:	a200017b 	sb	zero,379(s0)
     438:	a200017d 	sb	zero,381(s0)
     43c:	24090007 	li	t1,7
     440:	a609018c 	sh	t1,396(s0)
     444:	02002025 	move	a0,s0
     448:	0c000000 	jal	0 <func_80970F50>
     44c:	24050000 	li	a1,0
     450:	1000014d 	b	988 <L8097189C+0x3c>
     454:	44800000 	mtc1	zero,$f0

00000458 <L809713A8>:
     458:	3c0a0000 	lui	t2,0x0
     45c:	3c0b0000 	lui	t3,0x0
     460:	240200ff 	li	v0,255
     464:	254a0000 	addiu	t2,t2,0
     468:	256b0000 	addiu	t3,t3,0
     46c:	a2020184 	sb	v0,388(s0)
     470:	ae0a0198 	sw	t2,408(s0)
     474:	10000143 	b	984 <L8097189C+0x38>
     478:	ae0b0194 	sw	t3,404(s0)

0000047c <L809713CC>:
     47c:	3c053dcc 	lui	a1,0x3dcc
     480:	34a5cccd 	ori	a1,a1,0xcccd
     484:	0c000000 	jal	0 <func_80970F50>
     488:	02002025 	move	a0,s0
     48c:	240200ff 	li	v0,255
     490:	3c0c0000 	lui	t4,0x0
     494:	3c0d0000 	lui	t5,0x0
     498:	240300aa 	li	v1,170
     49c:	258c0000 	addiu	t4,t4,0
     4a0:	25ad0000 	addiu	t5,t5,0
     4a4:	ae0c0198 	sw	t4,408(s0)
     4a8:	a2030179 	sb	v1,377(s0)
     4ac:	a2020178 	sb	v0,376(s0)
     4b0:	a202017a 	sb	v0,378(s0)
     4b4:	a202017b 	sb	v0,379(s0)
     4b8:	a202017d 	sb	v0,381(s0)
     4bc:	a200017c 	sb	zero,380(s0)
     4c0:	a2000184 	sb	zero,388(s0)
     4c4:	a2000186 	sb	zero,390(s0)
     4c8:	ae0d0194 	sw	t5,404(s0)
     4cc:	1000012d 	b	984 <L8097189C+0x38>
     4d0:	a600018c 	sh	zero,396(s0)

000004d4 <L80971424>:
     4d4:	3c0e0000 	lui	t6,0x0
     4d8:	8dce0000 	lw	t6,0(t6)
     4dc:	2401013d 	li	at,317
     4e0:	02002025 	move	a0,s0
     4e4:	15c10006 	bne	t6,at,500 <L80971424+0x2c>
     4e8:	3c053dcc 	lui	a1,0x3dcc
     4ec:	02002025 	move	a0,s0
     4f0:	0c000000 	jal	0 <func_80970F50>
     4f4:	3c053f80 	lui	a1,0x3f80
     4f8:	10000004 	b	50c <L80971424+0x38>
     4fc:	240200ff 	li	v0,255
     500:	0c000000 	jal	0 <func_80970F50>
     504:	34a5cccd 	ori	a1,a1,0xcccd
     508:	240200ff 	li	v0,255
     50c:	3c0f0000 	lui	t7,0x0
     510:	3c090000 	lui	t1,0x0
     514:	240300aa 	li	v1,170
     518:	25ef0000 	addiu	t7,t7,0
     51c:	24180028 	li	t8,40
     520:	24190001 	li	t9,1
     524:	24080004 	li	t0,4
     528:	25290000 	addiu	t1,t1,0
     52c:	240a0001 	li	t2,1
     530:	ae0f0198 	sw	t7,408(s0)
     534:	a2030178 	sb	v1,376(s0)
     538:	a2020179 	sb	v0,377(s0)
     53c:	a202017a 	sb	v0,378(s0)
     540:	a218017c 	sb	t8,380(s0)
     544:	a202017d 	sb	v0,381(s0)
     548:	a200017b 	sb	zero,379(s0)
     54c:	a2190184 	sb	t9,388(s0)
     550:	a2080185 	sb	t0,389(s0)
     554:	a2000186 	sb	zero,390(s0)
     558:	a6000188 	sh	zero,392(s0)
     55c:	ae090194 	sw	t1,404(s0)
     560:	10000108 	b	984 <L8097189C+0x38>
     564:	a60a018c 	sh	t2,396(s0)

00000568 <L809714B8>:
     568:	3c0b0000 	lui	t3,0x0
     56c:	8d6b0000 	lw	t3,0(t3)
     570:	240100ee 	li	at,238
     574:	02002025 	move	a0,s0
     578:	15610007 	bne	t3,at,598 <L809714B8+0x30>
     57c:	3c053dcc 	lui	a1,0x3dcc
     580:	3c054019 	lui	a1,0x4019
     584:	34a5999a 	ori	a1,a1,0x999a
     588:	0c000000 	jal	0 <func_80970F50>
     58c:	02002025 	move	a0,s0
     590:	10000003 	b	5a0 <L809714B8+0x38>
     594:	00000000 	nop
     598:	0c000000 	jal	0 <func_80970F50>
     59c:	34a5cccd 	ori	a1,a1,0xcccd
     5a0:	3c0c0000 	lui	t4,0x0
     5a4:	3c0f0000 	lui	t7,0x0
     5a8:	240200ff 	li	v0,255
     5ac:	240300aa 	li	v1,170
     5b0:	258c0000 	addiu	t4,t4,0
     5b4:	240d00c8 	li	t5,200
     5b8:	240e0002 	li	t6,2
     5bc:	25ef0000 	addiu	t7,t7,0
     5c0:	24180002 	li	t8,2
     5c4:	ae0c0198 	sw	t4,408(s0)
     5c8:	a2030178 	sb	v1,376(s0)
     5cc:	a203017a 	sb	v1,378(s0)
     5d0:	a2020179 	sb	v0,377(s0)
     5d4:	a20d017c 	sb	t5,380(s0)
     5d8:	a200017b 	sb	zero,379(s0)
     5dc:	a200017d 	sb	zero,381(s0)
     5e0:	a20e0184 	sb	t6,388(s0)
     5e4:	a2000186 	sb	zero,390(s0)
     5e8:	ae0f0194 	sw	t7,404(s0)
     5ec:	100000e5 	b	984 <L8097189C+0x38>
     5f0:	a618018c 	sh	t8,396(s0)

000005f4 <L80971544>:
     5f4:	3c190000 	lui	t9,0x0
     5f8:	3c080000 	lui	t0,0x0
     5fc:	240200ff 	li	v0,255
     600:	27390000 	addiu	t9,t9,0
     604:	25080000 	addiu	t0,t0,0
     608:	24090014 	li	t1,20
     60c:	240a0004 	li	t2,4
     610:	ae190198 	sw	t9,408(s0)
     614:	ae080194 	sw	t0,404(s0)
     618:	a6090188 	sh	t1,392(s0)
     61c:	a20a0184 	sb	t2,388(s0)
     620:	100000d8 	b	984 <L8097189C+0x38>
     624:	a2020185 	sb	v0,389(s0)

00000628 <L80971578>:
     628:	3c0b0000 	lui	t3,0x0
     62c:	3c0c0000 	lui	t4,0x0
     630:	256b0000 	addiu	t3,t3,0
     634:	258c0000 	addiu	t4,t4,0
     638:	240d0014 	li	t5,20
     63c:	240e0004 	li	t6,4
     640:	240f0004 	li	t7,4
     644:	ae0b0198 	sw	t3,408(s0)
     648:	ae0c0194 	sw	t4,404(s0)
     64c:	a60d0188 	sh	t5,392(s0)
     650:	a20e0184 	sb	t6,388(s0)
     654:	a2000185 	sb	zero,389(s0)
     658:	100000ca 	b	984 <L8097189C+0x38>
     65c:	a60f018c 	sh	t7,396(s0)

00000660 <L809715B0>:
     660:	3c180000 	lui	t8,0x0
     664:	3c190000 	lui	t9,0x0
     668:	27180000 	addiu	t8,t8,0
     66c:	27390000 	addiu	t9,t9,0
     670:	2408015f 	li	t0,351
     674:	24090002 	li	t1,2
     678:	ae180198 	sw	t8,408(s0)
     67c:	ae190194 	sw	t9,404(s0)
     680:	a6080188 	sh	t0,392(s0)
     684:	a2090184 	sb	t1,388(s0)
     688:	100000be 	b	984 <L8097189C+0x38>
     68c:	a2000185 	sb	zero,389(s0)

00000690 <L809715E0>:
     690:	3c0a0000 	lui	t2,0x0
     694:	3c0b0000 	lui	t3,0x0
     698:	254a0000 	addiu	t2,t2,0
     69c:	256b0000 	addiu	t3,t3,0
     6a0:	240c0003 	li	t4,3
     6a4:	3c053ca3 	lui	a1,0x3ca3
     6a8:	ae0a0198 	sw	t2,408(s0)
     6ac:	ae0b0194 	sw	t3,404(s0)
     6b0:	a2000186 	sb	zero,390(s0)
     6b4:	a2000185 	sb	zero,389(s0)
     6b8:	a2000184 	sb	zero,388(s0)
     6bc:	a6000188 	sh	zero,392(s0)
     6c0:	a2000178 	sb	zero,376(s0)
     6c4:	a60c018c 	sh	t4,396(s0)
     6c8:	34a5d70a 	ori	a1,a1,0xd70a
     6cc:	0c000000 	jal	0 <func_80970F50>
     6d0:	02002025 	move	a0,s0
     6d4:	c6040024 	lwc1	$f4,36(s0)
     6d8:	8fa60064 	lw	a2,100(sp)
     6dc:	02002825 	move	a1,s0
     6e0:	e7a40010 	swc1	$f4,16(sp)
     6e4:	c6060028 	lwc1	$f6,40(s0)
     6e8:	24c41c24 	addiu	a0,a2,7204
     6ec:	2407008b 	li	a3,139
     6f0:	e7a60014 	swc1	$f6,20(sp)
     6f4:	c608002c 	lwc1	$f8,44(s0)
     6f8:	afa40040 	sw	a0,64(sp)
     6fc:	afa00028 	sw	zero,40(sp)
     700:	afa00024 	sw	zero,36(sp)
     704:	afa00020 	sw	zero,32(sp)
     708:	afa0001c 	sw	zero,28(sp)
     70c:	0c000000 	jal	0 <func_80970F50>
     710:	e7a80018 	swc1	$f8,24(sp)
     714:	10400005 	beqz	v0,72c <L809715E0+0x9c>
     718:	afa20048 	sw	v0,72(sp)
     71c:	3c053f19 	lui	a1,0x3f19
     720:	34a5999a 	ori	a1,a1,0x999a
     724:	0c000000 	jal	0 <func_80970F50>
     728:	00402025 	move	a0,v0
     72c:	c60a0024 	lwc1	$f10,36(s0)
     730:	240d0011 	li	t5,17
     734:	8fa60064 	lw	a2,100(sp)
     738:	e7aa0010 	swc1	$f10,16(sp)
     73c:	c6100028 	lwc1	$f16,40(s0)
     740:	8fa40040 	lw	a0,64(sp)
     744:	8fa50048 	lw	a1,72(sp)
     748:	e7b00014 	swc1	$f16,20(sp)
     74c:	c612002c 	lwc1	$f18,44(s0)
     750:	afad0028 	sw	t5,40(sp)
     754:	afa00024 	sw	zero,36(sp)
     758:	afa00020 	sw	zero,32(sp)
     75c:	afa0001c 	sw	zero,28(sp)
     760:	2407008b 	li	a3,139
     764:	0c000000 	jal	0 <func_80970F50>
     768:	e7b20018 	swc1	$f18,24(sp)
     76c:	10400085 	beqz	v0,984 <L8097189C+0x38>
     770:	00402025 	move	a0,v0
     774:	3c053ecc 	lui	a1,0x3ecc
     778:	0c000000 	jal	0 <func_80970F50>
     77c:	34a5cccd 	ori	a1,a1,0xcccd
     780:	10000081 	b	988 <L8097189C+0x3c>
     784:	44800000 	mtc1	zero,$f0

00000788 <L809716D8>:
     788:	0c000000 	jal	0 <func_80970F50>
     78c:	02002025 	move	a0,s0
     790:	240e000c 	li	t6,12
     794:	1000007b 	b	984 <L8097189C+0x38>
     798:	a20e0186 	sb	t6,390(s0)

0000079c <L809716EC>:
     79c:	0c000000 	jal	0 <func_80970F50>
     7a0:	02002025 	move	a0,s0
     7a4:	240f000d 	li	t7,13
     7a8:	10000076 	b	984 <L8097189C+0x38>
     7ac:	a20f0186 	sb	t7,390(s0)

000007b0 <L80971700>:
     7b0:	0c000000 	jal	0 <func_80970F50>
     7b4:	02002025 	move	a0,s0
     7b8:	2418000b 	li	t8,11
     7bc:	10000071 	b	984 <L8097189C+0x38>
     7c0:	a2180186 	sb	t8,390(s0)

000007c4 <L80971714>:
     7c4:	0c000000 	jal	0 <func_80970F50>
     7c8:	02002025 	move	a0,s0
     7cc:	2419000e 	li	t9,14
     7d0:	1000006c 	b	984 <L8097189C+0x38>
     7d4:	a2190186 	sb	t9,390(s0)

000007d8 <L80971728>:
     7d8:	0c000000 	jal	0 <func_80970F50>
     7dc:	02002025 	move	a0,s0
     7e0:	2408000f 	li	t0,15
     7e4:	10000067 	b	984 <L8097189C+0x38>
     7e8:	a2080186 	sb	t0,390(s0)

000007ec <L8097173C>:
     7ec:	0c000000 	jal	0 <func_80970F50>
     7f0:	02002025 	move	a0,s0
     7f4:	24090010 	li	t1,16
     7f8:	10000062 	b	984 <L8097189C+0x38>
     7fc:	a2090186 	sb	t1,390(s0)

00000800 <L80971750>:
     800:	0c000000 	jal	0 <func_80970F50>
     804:	02002025 	move	a0,s0
     808:	240a0061 	li	t2,97
     80c:	1000005d 	b	984 <L8097189C+0x38>
     810:	a20a0186 	sb	t2,390(s0)

00000814 <L80971764>:
     814:	8e0b0004 	lw	t3,4(s0)
     818:	3c010200 	lui	at,0x200
     81c:	01616025 	or	t4,t3,at
     820:	ae0c0004 	sw	t4,4(s0)

00000824 <L80971774>:
     824:	3c0d0000 	lui	t5,0x0
     828:	3c0e0000 	lui	t6,0x0
     82c:	240200ff 	li	v0,255
     830:	25ad0000 	addiu	t5,t5,0
     834:	25ce0000 	addiu	t6,t6,0
     838:	240f0064 	li	t7,100
     83c:	ae0d0198 	sw	t5,408(s0)
     840:	ae0e0194 	sw	t6,404(s0)
     844:	a200017b 	sb	zero,379(s0)
     848:	a20f017c 	sb	t7,380(s0)
     84c:	a202017d 	sb	v0,381(s0)
     850:	0c000000 	jal	0 <func_80970F50>
     854:	2604014c 	addiu	a0,s0,332
     858:	1000004a 	b	984 <L8097189C+0x38>
     85c:	a6000188 	sh	zero,392(s0)

00000860 <L809717B0>:
     860:	3c180600 	lui	t8,0x600
     864:	3c190600 	lui	t9,0x600
     868:	27181240 	addiu	t8,t8,4672
     86c:	273910e0 	addiu	t9,t9,4320
     870:	24080013 	li	t0,19
     874:	ae180170 	sw	t8,368(s0)
     878:	ae190174 	sw	t9,372(s0)
     87c:	a2080184 	sb	t0,388(s0)
     880:	a2000185 	sb	zero,389(s0)
     884:	8fa40064 	lw	a0,100(sp)
     888:	0c000000 	jal	0 <func_80970F50>
     88c:	02002825 	move	a1,s0
     890:	1000003d 	b	988 <L8097189C+0x3c>
     894:	44800000 	mtc1	zero,$f0

00000898 <L809717E8>:
     898:	3c090600 	lui	t1,0x600
     89c:	3c0a0600 	lui	t2,0x600
     8a0:	252920a0 	addiu	t1,t1,8352
     8a4:	254a1fb0 	addiu	t2,t2,8112
     8a8:	240b0014 	li	t3,20
     8ac:	ae090170 	sw	t1,368(s0)
     8b0:	ae0a0174 	sw	t2,372(s0)
     8b4:	a20b0184 	sb	t3,388(s0)
     8b8:	a2000185 	sb	zero,389(s0)
     8bc:	8fa40064 	lw	a0,100(sp)
     8c0:	0c000000 	jal	0 <func_80970F50>
     8c4:	02002825 	move	a1,s0
     8c8:	1000002f 	b	988 <L8097189C+0x3c>
     8cc:	44800000 	mtc1	zero,$f0

000008d0 <L80971820>:
     8d0:	3c0c0600 	lui	t4,0x600
     8d4:	3c0d0600 	lui	t5,0x600
     8d8:	258c3530 	addiu	t4,t4,13616
     8dc:	25ad3370 	addiu	t5,t5,13168
     8e0:	240e0015 	li	t6,21
     8e4:	ae0c0170 	sw	t4,368(s0)
     8e8:	ae0d0174 	sw	t5,372(s0)
     8ec:	a20e0184 	sb	t6,388(s0)
     8f0:	a2000185 	sb	zero,389(s0)
     8f4:	8fa40064 	lw	a0,100(sp)
     8f8:	0c000000 	jal	0 <func_80970F50>
     8fc:	02002825 	move	a1,s0
     900:	8fa40064 	lw	a0,100(sp)
     904:	02003025 	move	a2,s0
     908:	24070009 	li	a3,9
     90c:	0c000000 	jal	0 <func_80970F50>
     910:	24851c24 	addiu	a1,a0,7204
     914:	8faf0064 	lw	t7,100(sp)
     918:	24010002 	li	at,2
     91c:	3c190000 	lui	t9,0x0
     920:	85f800a4 	lh	t8,164(t7)
     924:	57010018 	bnel	t8,at,988 <L8097189C+0x3c>
     928:	44800000 	mtc1	zero,$f0
     92c:	97390f20 	lhu	t9,3872(t9)
     930:	33280020 	andi	t0,t9,0x20
     934:	51000014 	beqzl	t0,988 <L8097189C+0x3c>
     938:	44800000 	mtc1	zero,$f0
     93c:	0c000000 	jal	0 <func_80970F50>
     940:	02002025 	move	a0,s0
     944:	1000001b 	b	9b4 <L8097189C+0x68>
     948:	8fbf003c 	lw	ra,60(sp)

0000094c <L8097189C>:
     94c:	3c090000 	lui	t1,0x0
     950:	25290000 	addiu	t1,t1,0
     954:	240a0002 	li	t2,2
     958:	ae000198 	sw	zero,408(s0)
     95c:	ae090194 	sw	t1,404(s0)
     960:	a2000184 	sb	zero,388(s0)
     964:	10000007 	b	984 <L8097189C+0x38>
     968:	a60a018c 	sh	t2,396(s0)
     96c:	3c040000 	lui	a0,0x0
     970:	3c050000 	lui	a1,0x0
     974:	24a50000 	addiu	a1,a1,0
     978:	24840000 	addiu	a0,a0,0
     97c:	0c000000 	jal	0 <func_80970F50>
     980:	24060426 	li	a2,1062
     984:	44800000 	mtc1	zero,$f0
     988:	260400b4 	addiu	a0,s0,180
     98c:	00003025 	move	a2,zero
     990:	44050000 	mfc1	a1,$f0
     994:	44070000 	mfc1	a3,$f0
     998:	0c000000 	jal	0 <func_80970F50>
     99c:	00000000 	nop
     9a0:	3c050000 	lui	a1,0x0
     9a4:	24a50000 	addiu	a1,a1,0
     9a8:	0c000000 	jal	0 <func_80970F50>
     9ac:	02002025 	move	a0,s0
     9b0:	8fbf003c 	lw	ra,60(sp)
     9b4:	8fb00038 	lw	s0,56(sp)
     9b8:	27bd0060 	addiu	sp,sp,96
     9bc:	03e00008 	jr	ra
     9c0:	00000000 	nop

000009c4 <DemoEffect_Destroy>:
     9c4:	27bdffe8 	addiu	sp,sp,-24
     9c8:	afbf0014 	sw	ra,20(sp)
     9cc:	8482001c 	lh	v0,28(a0)
     9d0:	2401000f 	li	at,15
     9d4:	00803025 	move	a2,a0
     9d8:	304200ff 	andi	v0,v0,0xff
     9dc:	10410005 	beq	v0,at,9f4 <DemoEffect_Destroy+0x30>
     9e0:	00a03825 	move	a3,a1
     9e4:	24010018 	li	at,24
     9e8:	10410002 	beq	v0,at,9f4 <DemoEffect_Destroy+0x30>
     9ec:	24010019 	li	at,25
     9f0:	14410003 	bne	v0,at,a00 <DemoEffect_Destroy+0x3c>
     9f4:	00e02025 	move	a0,a3
     9f8:	0c000000 	jal	0 <func_80970F50>
     9fc:	24c5014c 	addiu	a1,a2,332
     a00:	8fbf0014 	lw	ra,20(sp)
     a04:	27bd0018 	addiu	sp,sp,24
     a08:	03e00008 	jr	ra
     a0c:	00000000 	nop

00000a10 <func_80971960>:
     a10:	3c010001 	lui	at,0x1
     a14:	27bdffe8 	addiu	sp,sp,-24
     a18:	00803025 	move	a2,a0
     a1c:	342117a4 	ori	at,at,0x17a4
     a20:	afbf0014 	sw	ra,20(sp)
     a24:	00a12021 	addu	a0,a1,at
     a28:	90c5016c 	lbu	a1,364(a2)
     a2c:	0c000000 	jal	0 <func_80970F50>
     a30:	afa60018 	sw	a2,24(sp)
     a34:	1040000a 	beqz	v0,a60 <func_80971960+0x50>
     a38:	8fa60018 	lw	a2,24(sp)
     a3c:	90ce016c 	lbu	t6,364(a2)
     a40:	8ccf0198 	lw	t7,408(a2)
     a44:	8cd80194 	lw	t8,404(a2)
     a48:	3c040000 	lui	a0,0x0
     a4c:	24840000 	addiu	a0,a0,0
     a50:	a0ce001e 	sb	t6,30(a2)
     a54:	accf0134 	sw	t7,308(a2)
     a58:	0c000000 	jal	0 <func_80970F50>
     a5c:	acd8019c 	sw	t8,412(a2)
     a60:	8fbf0014 	lw	ra,20(sp)
     a64:	27bd0018 	addiu	sp,sp,24
     a68:	03e00008 	jr	ra
     a6c:	00000000 	nop

00000a70 <func_809719C0>:
     a70:	afa50004 	sw	a1,4(sp)
     a74:	8c820118 	lw	v0,280(a0)
     a78:	10400007 	beqz	v0,a98 <func_809719C0+0x28>
     a7c:	00000000 	nop
     a80:	c4440024 	lwc1	$f4,36(v0)
     a84:	e4840024 	swc1	$f4,36(a0)
     a88:	c4460028 	lwc1	$f6,40(v0)
     a8c:	e4860028 	swc1	$f6,40(a0)
     a90:	c448002c 	lwc1	$f8,44(v0)
     a94:	e488002c 	swc1	$f8,44(a0)
     a98:	03e00008 	jr	ra
     a9c:	00000000 	nop

00000aa0 <func_809719F0>:
     aa0:	27bdffe8 	addiu	sp,sp,-24
     aa4:	afbf0014 	sw	ra,20(sp)
     aa8:	0c000000 	jal	0 <func_80970F50>
     aac:	afa40018 	sw	a0,24(sp)
     ab0:	8fa40018 	lw	a0,24(sp)
     ab4:	3c014160 	lui	at,0x4160
     ab8:	44813000 	mtc1	at,$f6
     abc:	c4840028 	lwc1	$f4,40(a0)
     ac0:	46062200 	add.s	$f8,$f4,$f6
     ac4:	e4880028 	swc1	$f8,40(a0)
     ac8:	8fbf0014 	lw	ra,20(sp)
     acc:	27bd0018 	addiu	sp,sp,24
     ad0:	03e00008 	jr	ra
     ad4:	00000000 	nop

00000ad8 <func_80971A28>:
     ad8:	27bdffa8 	addiu	sp,sp,-88
     adc:	24010001 	li	at,1
     ae0:	afbf0024 	sw	ra,36(sp)
     ae4:	afa40058 	sw	a0,88(sp)
     ae8:	14c10007 	bne	a2,at,b08 <func_80971A28+0x30>
     aec:	afa5005c 	sw	a1,92(sp)
     af0:	3c0f0001 	lui	t7,0x1
     af4:	01e57821 	addu	t7,t7,a1
     af8:	8def1de4 	lw	t7,7652(t7)
     afc:	31f80001 	andi	t8,t7,0x1
     b00:	57000057 	bnezl	t8,c60 <func_80971A28+0x188>
     b04:	8fbf0024 	lw	ra,36(sp)
     b08:	44800000 	mtc1	zero,$f0
     b0c:	3c010000 	lui	at,0x0
     b10:	c4240000 	lwc1	$f4,0(at)
     b14:	241900ff 	li	t9,255
     b18:	240800ff 	li	t0,255
     b1c:	240900ff 	li	t1,255
     b20:	240a00ff 	li	t2,255
     b24:	240b00ff 	li	t3,255
     b28:	240c0064 	li	t4,100
     b2c:	a3b90030 	sb	t9,48(sp)
     b30:	a3a80031 	sb	t0,49(sp)
     b34:	a3a90032 	sb	t1,50(sp)
     b38:	a3aa002c 	sb	t2,44(sp)
     b3c:	a3ab002d 	sb	t3,45(sp)
     b40:	a3ac002e 	sb	t4,46(sp)
     b44:	a3a00033 	sb	zero,51(sp)
     b48:	e7a00050 	swc1	$f0,80(sp)
     b4c:	e7a00040 	swc1	$f0,64(sp)
     b50:	e7a00048 	swc1	$f0,72(sp)
     b54:	10c0000f 	beqz	a2,b94 <func_80971A28+0xbc>
     b58:	e7a40044 	swc1	$f4,68(sp)
     b5c:	0c000000 	jal	0 <func_80970F50>
     b60:	00000000 	nop
     b64:	3c013f00 	lui	at,0x3f00
     b68:	44813000 	mtc1	at,$f6
     b6c:	00000000 	nop
     b70:	46060201 	sub.s	$f8,$f0,$f6
     b74:	0c000000 	jal	0 <func_80970F50>
     b78:	e7a8004c 	swc1	$f8,76(sp)
     b7c:	3c013f00 	lui	at,0x3f00
     b80:	44815000 	mtc1	at,$f10
     b84:	00000000 	nop
     b88:	460a0401 	sub.s	$f16,$f0,$f10
     b8c:	10000010 	b	bd0 <func_80971A28+0xf8>
     b90:	e7b00054 	swc1	$f16,84(sp)
     b94:	0c000000 	jal	0 <func_80970F50>
     b98:	00000000 	nop
     b9c:	3c013f00 	lui	at,0x3f00
     ba0:	44819000 	mtc1	at,$f18
     ba4:	00000000 	nop
     ba8:	46120081 	sub.s	$f2,$f0,$f18
     bac:	46021100 	add.s	$f4,$f2,$f2
     bb0:	0c000000 	jal	0 <func_80970F50>
     bb4:	e7a4004c 	swc1	$f4,76(sp)
     bb8:	3c013f00 	lui	at,0x3f00
     bbc:	44813000 	mtc1	at,$f6
     bc0:	00000000 	nop
     bc4:	46060081 	sub.s	$f2,$f0,$f6
     bc8:	46021200 	add.s	$f8,$f2,$f2
     bcc:	e7a80054 	swc1	$f8,84(sp)
     bd0:	3c014120 	lui	at,0x4120
     bd4:	44816000 	mtc1	at,$f12
     bd8:	0c000000 	jal	0 <func_80970F50>
     bdc:	00000000 	nop
     be0:	8fad0058 	lw	t5,88(sp)
     be4:	3c014120 	lui	at,0x4120
     be8:	44816000 	mtc1	at,$f12
     bec:	c5aa0024 	lwc1	$f10,36(t5)
     bf0:	460a0400 	add.s	$f16,$f0,$f10
     bf4:	0c000000 	jal	0 <func_80970F50>
     bf8:	e7b00034 	swc1	$f16,52(sp)
     bfc:	8fae0058 	lw	t6,88(sp)
     c00:	3c014120 	lui	at,0x4120
     c04:	44816000 	mtc1	at,$f12
     c08:	c5d20028 	lwc1	$f18,40(t6)
     c0c:	46120100 	add.s	$f4,$f0,$f18
     c10:	0c000000 	jal	0 <func_80970F50>
     c14:	e7a40038 	swc1	$f4,56(sp)
     c18:	8faf0058 	lw	t7,88(sp)
     c1c:	27b80030 	addiu	t8,sp,48
     c20:	27b9002c 	addiu	t9,sp,44
     c24:	c5e6002c 	lwc1	$f6,44(t7)
     c28:	240803e8 	li	t0,1000
     c2c:	24090010 	li	t1,16
     c30:	46060200 	add.s	$f8,$f0,$f6
     c34:	afa9001c 	sw	t1,28(sp)
     c38:	afa80018 	sw	t0,24(sp)
     c3c:	afb90014 	sw	t9,20(sp)
     c40:	e7a8003c 	swc1	$f8,60(sp)
     c44:	afb80010 	sw	t8,16(sp)
     c48:	8fa4005c 	lw	a0,92(sp)
     c4c:	27a50034 	addiu	a1,sp,52
     c50:	27a6004c 	addiu	a2,sp,76
     c54:	0c000000 	jal	0 <func_80970F50>
     c58:	27a70040 	addiu	a3,sp,64
     c5c:	8fbf0024 	lw	ra,36(sp)
     c60:	27bd0058 	addiu	sp,sp,88
     c64:	03e00008 	jr	ra
     c68:	00000000 	nop

00000c6c <func_80971BBC>:
     c6c:	27bdffe0 	addiu	sp,sp,-32
     c70:	afbf001c 	sw	ra,28(sp)
     c74:	afb00018 	sw	s0,24(sp)
     c78:	90ae1d6c 	lbu	t6,7532(a1)
     c7c:	00808025 	move	s0,a0
     c80:	51c00086 	beqzl	t6,e9c <func_80971BBC+0x230>
     c84:	8fbf001c 	lw	ra,28(sp)
     c88:	8486018c 	lh	a2,396(a0)
     c8c:	00067880 	sll	t7,a2,0x2
     c90:	00afc021 	addu	t8,a1,t7
     c94:	8f191d8c 	lw	t9,7564(t8)
     c98:	53200080 	beqzl	t9,e9c <func_80971BBC+0x230>
     c9c:	8fbf001c 	lw	ra,28(sp)
     ca0:	90880184 	lbu	t0,388(a0)
     ca4:	3c073dcc 	lui	a3,0x3dcc
     ca8:	34e7cccd 	ori	a3,a3,0xcccd
     cac:	51000006 	beqzl	t0,cc8 <func_80971BBC+0x5c>
     cb0:	02002025 	move	a0,s0
     cb4:	0c000000 	jal	0 <func_80970F50>
     cb8:	afa50024 	sw	a1,36(sp)
     cbc:	10000007 	b	cdc <func_80971BBC+0x70>
     cc0:	920a0186 	lbu	t2,390(s0)
     cc4:	02002025 	move	a0,s0
     cc8:	0c000000 	jal	0 <func_80970F50>
     ccc:	afa50024 	sw	a1,36(sp)
     cd0:	24090001 	li	t1,1
     cd4:	a2090184 	sb	t1,388(s0)
     cd8:	920a0186 	lbu	t2,390(s0)
     cdc:	24010061 	li	at,97
     ce0:	02002025 	move	a0,s0
     ce4:	11410004 	beq	t2,at,cf8 <func_80971BBC+0x8c>
     ce8:	3c053e4c 	lui	a1,0x3e4c
     cec:	240be0c0 	li	t3,-8000
     cf0:	10000004 	b	d04 <func_80971BBC+0x98>
     cf4:	a60b00b4 	sh	t3,180(s0)
     cf8:	860c00b6 	lh	t4,182(s0)
     cfc:	258d0400 	addiu	t5,t4,1024
     d00:	a60d00b6 	sh	t5,182(s0)
     d04:	0c000000 	jal	0 <func_80970F50>
     d08:	34a5cccd 	ori	a1,a1,0xcccd
     d0c:	3c070000 	lui	a3,0x0
     d10:	24e70000 	addiu	a3,a3,0
     d14:	8cee0000 	lw	t6,0(a3)
     d18:	24030053 	li	v1,83
     d1c:	546e001b 	bnel	v1,t6,d8c <func_80971BBC+0x120>
     d20:	8609018c 	lh	t1,396(s0)
     d24:	860f018c 	lh	t7,396(s0)
     d28:	8fa50024 	lw	a1,36(sp)
     d2c:	24010002 	li	at,2
     d30:	000fc080 	sll	t8,t7,0x2
     d34:	00b8c821 	addu	t9,a1,t8
     d38:	8f281d8c 	lw	t0,7564(t9)
     d3c:	02002025 	move	a0,s0
     d40:	95020000 	lhu	v0,0(t0)
     d44:	10410005 	beq	v0,at,d5c <func_80971BBC+0xf0>
     d48:	24010003 	li	at,3
     d4c:	10410009 	beq	v0,at,d74 <func_80971BBC+0x108>
     d50:	02002025 	move	a0,s0
     d54:	1000000d 	b	d8c <func_80971BBC+0x120>
     d58:	8609018c 	lh	t1,396(s0)
     d5c:	0c000000 	jal	0 <func_80970F50>
     d60:	00003025 	move	a2,zero
     d64:	3c070000 	lui	a3,0x0
     d68:	24e70000 	addiu	a3,a3,0
     d6c:	10000006 	b	d88 <func_80971BBC+0x11c>
     d70:	24030053 	li	v1,83
     d74:	0c000000 	jal	0 <func_80970F50>
     d78:	24060001 	li	a2,1
     d7c:	3c070000 	lui	a3,0x0
     d80:	24e70000 	addiu	a3,a3,0
     d84:	24030053 	li	v1,83
     d88:	8609018c 	lh	t1,396(s0)
     d8c:	8fa50024 	lw	a1,36(sp)
     d90:	24010002 	li	at,2
     d94:	00095080 	sll	t2,t1,0x2
     d98:	00aa5821 	addu	t3,a1,t2
     d9c:	8d6c1d8c 	lw	t4,7564(t3)
     da0:	95820000 	lhu	v0,0(t4)
     da4:	10410007 	beq	v0,at,dc4 <func_80971BBC+0x158>
     da8:	24010003 	li	at,3
     dac:	10410019 	beq	v0,at,e14 <func_80971BBC+0x1a8>
     db0:	24010004 	li	at,4
     db4:	10410036 	beq	v0,at,e90 <func_80971BBC+0x224>
     db8:	02002025 	move	a0,s0
     dbc:	10000037 	b	e9c <func_80971BBC+0x230>
     dc0:	8fbf001c 	lw	ra,28(sp)
     dc4:	8ced0000 	lw	t5,0(a3)
     dc8:	02002025 	move	a0,s0
     dcc:	146d0005 	bne	v1,t5,de4 <func_80971BBC+0x178>
     dd0:	00000000 	nop
     dd4:	0c000000 	jal	0 <func_80970F50>
     dd8:	24052097 	li	a1,8343
     ddc:	10000004 	b	df0 <func_80971BBC+0x184>
     de0:	920e0186 	lbu	t6,390(s0)
     de4:	0c000000 	jal	0 <func_80970F50>
     de8:	24042095 	li	a0,8341
     dec:	920e0186 	lbu	t6,390(s0)
     df0:	24010061 	li	at,97
     df4:	24193e80 	li	t9,16000
     df8:	11c10004 	beq	t6,at,e0c <func_80971BBC+0x1a0>
     dfc:	00000000 	nop
     e00:	860f00b6 	lh	t7,182(s0)
     e04:	25f83e80 	addiu	t8,t7,16000
     e08:	a61800b6 	sh	t8,182(s0)
     e0c:	10000022 	b	e98 <func_80971BBC+0x22c>
     e10:	a6190188 	sh	t9,392(s0)
     e14:	86020188 	lh	v0,392(s0)
     e18:	3c010000 	lui	at,0x0
     e1c:	c4280000 	lwc1	$f8,0(at)
     e20:	2448fc18 	addiu	t0,v0,-1000
     e24:	44882000 	mtc1	t0,$f4
     e28:	920e0186 	lbu	t6,390(s0)
     e2c:	24010061 	li	at,97
     e30:	468021a0 	cvt.s.w	$f6,$f4
     e34:	02002025 	move	a0,s0
     e38:	46083282 	mul.s	$f10,$f6,$f8
     e3c:	4600540d 	trunc.w.s	$f16,$f10
     e40:	440c8000 	mfc1	t4,$f16
     e44:	00000000 	nop
     e48:	004c6823 	subu	t5,v0,t4
     e4c:	11c10005 	beq	t6,at,e64 <func_80971BBC+0x1f8>
     e50:	a60d0188 	sh	t5,392(s0)
     e54:	860f00b6 	lh	t7,182(s0)
     e58:	86180188 	lh	t8,392(s0)
     e5c:	01f8c821 	addu	t9,t7,t8
     e60:	a61900b6 	sh	t9,182(s0)
     e64:	8ce80000 	lw	t0,0(a3)
     e68:	14680005 	bne	v1,t0,e80 <func_80971BBC+0x214>
     e6c:	00000000 	nop
     e70:	0c000000 	jal	0 <func_80970F50>
     e74:	24052097 	li	a1,8343
     e78:	10000008 	b	e9c <func_80971BBC+0x230>
     e7c:	8fbf001c 	lw	ra,28(sp)
     e80:	0c000000 	jal	0 <func_80970F50>
     e84:	24042095 	li	a0,8341
     e88:	10000004 	b	e9c <func_80971BBC+0x230>
     e8c:	8fbf001c 	lw	ra,28(sp)
     e90:	0c000000 	jal	0 <func_80970F50>
     e94:	24052095 	li	a1,8341
     e98:	8fbf001c 	lw	ra,28(sp)
     e9c:	8fb00018 	lw	s0,24(sp)
     ea0:	27bd0020 	addiu	sp,sp,32
     ea4:	03e00008 	jr	ra
     ea8:	00000000 	nop

00000eac <func_80971DFC>:
     eac:	27bdffd0 	addiu	sp,sp,-48
     eb0:	afbf0024 	sw	ra,36(sp)
     eb4:	afb00020 	sw	s0,32(sp)
     eb8:	afa40030 	sw	a0,48(sp)
     ebc:	afa50034 	sw	a1,52(sp)
     ec0:	848f001c 	lh	t7,28(a0)
     ec4:	00807025 	move	t6,a0
     ec8:	25d0014c 	addiu	s0,t6,332
     ecc:	00a02025 	move	a0,a1
     ed0:	3c060600 	lui	a2,0x600
     ed4:	3c070600 	lui	a3,0x600
     ed8:	31f800ff 	andi	t8,t7,0xff
     edc:	afb8002c 	sw	t8,44(sp)
     ee0:	24e70050 	addiu	a3,a3,80
     ee4:	24c612e8 	addiu	a2,a2,4840
     ee8:	0c000000 	jal	0 <func_80970F50>
     eec:	02002825 	move	a1,s0
     ef0:	14400006 	bnez	v0,f0c <func_80971DFC+0x60>
     ef4:	3c040000 	lui	a0,0x0
     ef8:	3c050000 	lui	a1,0x0
     efc:	24a50000 	addiu	a1,a1,0
     f00:	24840000 	addiu	a0,a0,0
     f04:	0c000000 	jal	0 <func_80970F50>
     f08:	24060503 	li	a2,1283
     f0c:	8fa2002c 	lw	v0,44(sp)
     f10:	24010018 	li	at,24
     f14:	02002025 	move	a0,s0
     f18:	10410004 	beq	v0,at,f2c <func_80971DFC+0x80>
     f1c:	3c050600 	lui	a1,0x600
     f20:	24010019 	li	at,25
     f24:	14410022 	bne	v0,at,fb0 <func_80971DFC+0x104>
     f28:	3c030000 	lui	v1,0x0
     f2c:	3c013f80 	lui	at,0x3f80
     f30:	44810000 	mtc1	at,$f0
     f34:	3c01426c 	lui	at,0x426c
     f38:	44811000 	mtc1	at,$f2
     f3c:	3c010000 	lui	at,0x0
     f40:	c4240000 	lwc1	$f4,0(at)
     f44:	44060000 	mfc1	a2,$f0
     f48:	44071000 	mfc1	a3,$f2
     f4c:	24a50050 	addiu	a1,a1,80
     f50:	e7a00010 	swc1	$f0,16(sp)
     f54:	0c000000 	jal	0 <func_80970F50>
     f58:	e7a40014 	swc1	$f4,20(sp)
     f5c:	8fa40034 	lw	a0,52(sp)
     f60:	0c000000 	jal	0 <func_80970F50>
     f64:	02002825 	move	a1,s0
     f68:	8fa40030 	lw	a0,48(sp)
     f6c:	3c190000 	lui	t9,0x0
     f70:	27390000 	addiu	t9,t9,0
     f74:	ac99019c 	sw	t9,412(a0)
     f78:	8fa8002c 	lw	t0,44(sp)
     f7c:	24010018 	li	at,24
     f80:	3c053dac 	lui	a1,0x3dac
     f84:	15010006 	bne	t0,at,fa0 <func_80971DFC+0xf4>
     f88:	00000000 	nop
     f8c:	3c053e0f 	lui	a1,0x3e0f
     f90:	0c000000 	jal	0 <func_80970F50>
     f94:	34a55c29 	ori	a1,a1,0x5c29
     f98:	10000043 	b	10a8 <func_80971DFC+0x1fc>
     f9c:	8fbf0024 	lw	ra,36(sp)
     fa0:	0c000000 	jal	0 <func_80970F50>
     fa4:	34a50832 	ori	a1,a1,0x832
     fa8:	1000003f 	b	10a8 <func_80971DFC+0x1fc>
     fac:	8fbf0024 	lw	ra,36(sp)
     fb0:	24630000 	addiu	v1,v1,0
     fb4:	8c621360 	lw	v0,4960(v1)
     fb8:	24010005 	li	at,5
     fbc:	02002025 	move	a0,s0
     fc0:	1041000b 	beq	v0,at,ff0 <func_80971DFC+0x144>
     fc4:	3c050600 	lui	a1,0x600
     fc8:	24010004 	li	at,4
     fcc:	50410009 	beql	v0,at,ff4 <func_80971DFC+0x148>
     fd0:	3c013f80 	lui	at,0x3f80
     fd4:	8c690000 	lw	t1,0(v1)
     fd8:	24010324 	li	at,804
     fdc:	5521001c 	bnel	t1,at,1050 <func_80971DFC+0x1a4>
     fe0:	3c013f80 	lui	at,0x3f80
     fe4:	946a0eec 	lhu	t2,3820(v1)
     fe8:	314b0200 	andi	t3,t2,0x200
     fec:	15600017 	bnez	t3,104c <func_80971DFC+0x1a0>
     ff0:	3c013f80 	lui	at,0x3f80
     ff4:	44810000 	mtc1	at,$f0
     ff8:	3c01426c 	lui	at,0x426c
     ffc:	44811000 	mtc1	at,$f2
    1000:	44803000 	mtc1	zero,$f6
    1004:	44060000 	mfc1	a2,$f0
    1008:	44071000 	mfc1	a3,$f2
    100c:	24a50050 	addiu	a1,a1,80
    1010:	e7a20010 	swc1	$f2,16(sp)
    1014:	0c000000 	jal	0 <func_80970F50>
    1018:	e7a60014 	swc1	$f6,20(sp)
    101c:	8fa40034 	lw	a0,52(sp)
    1020:	0c000000 	jal	0 <func_80970F50>
    1024:	02002825 	move	a1,s0
    1028:	8fad0030 	lw	t5,48(sp)
    102c:	3c0c0000 	lui	t4,0x0
    1030:	258c0000 	addiu	t4,t4,0
    1034:	3c040000 	lui	a0,0x0
    1038:	24840000 	addiu	a0,a0,0
    103c:	0c000000 	jal	0 <func_80970F50>
    1040:	adac019c 	sw	t4,412(t5)
    1044:	10000018 	b	10a8 <func_80971DFC+0x1fc>
    1048:	8fbf0024 	lw	ra,36(sp)
    104c:	3c013f80 	lui	at,0x3f80
    1050:	44810000 	mtc1	at,$f0
    1054:	3c01426c 	lui	at,0x426c
    1058:	44811000 	mtc1	at,$f2
    105c:	3c050600 	lui	a1,0x600
    1060:	44060000 	mfc1	a2,$f0
    1064:	44071000 	mfc1	a3,$f2
    1068:	24a50050 	addiu	a1,a1,80
    106c:	02002025 	move	a0,s0
    1070:	e7a00010 	swc1	$f0,16(sp)
    1074:	0c000000 	jal	0 <func_80970F50>
    1078:	e7a00014 	swc1	$f0,20(sp)
    107c:	8fa40034 	lw	a0,52(sp)
    1080:	0c000000 	jal	0 <func_80970F50>
    1084:	02002825 	move	a1,s0
    1088:	8fb80030 	lw	t8,48(sp)
    108c:	3c0f0000 	lui	t7,0x0
    1090:	25ef0000 	addiu	t7,t7,0
    1094:	3c040000 	lui	a0,0x0
    1098:	24840000 	addiu	a0,a0,0
    109c:	0c000000 	jal	0 <func_80970F50>
    10a0:	af0f019c 	sw	t7,412(t8)
    10a4:	8fbf0024 	lw	ra,36(sp)
    10a8:	8fb00020 	lw	s0,32(sp)
    10ac:	27bd0030 	addiu	sp,sp,48
    10b0:	03e00008 	jr	ra
    10b4:	00000000 	nop

000010b8 <func_80972008>:
    10b8:	27bdffd8 	addiu	sp,sp,-40
    10bc:	00803025 	move	a2,a0
    10c0:	afbf001c 	sw	ra,28(sp)
    10c4:	afa5002c 	sw	a1,44(sp)
    10c8:	00a02025 	move	a0,a1
    10cc:	24050001 	li	a1,1
    10d0:	0c000000 	jal	0 <func_80970F50>
    10d4:	afa60028 	sw	a2,40(sp)
    10d8:	1040001c 	beqz	v0,114c <func_80972008+0x94>
    10dc:	8fa60028 	lw	a2,40(sp)
    10e0:	84ce018a 	lh	t6,394(a2)
    10e4:	00002025 	move	a0,zero
    10e8:	31cf0002 	andi	t7,t6,0x2
    10ec:	55e00008 	bnezl	t7,1110 <func_80972008+0x58>
    10f0:	24c5014c 	addiu	a1,a2,332
    10f4:	0c000000 	jal	0 <func_80970F50>
    10f8:	afa60028 	sw	a2,40(sp)
    10fc:	8fa60028 	lw	a2,40(sp)
    1100:	84d8018a 	lh	t8,394(a2)
    1104:	37190002 	ori	t9,t8,0x2
    1108:	a4d9018a 	sh	t9,394(a2)
    110c:	24c5014c 	addiu	a1,a2,332
    1110:	afa50024 	sw	a1,36(sp)
    1114:	0c000000 	jal	0 <func_80970F50>
    1118:	8fa4002c 	lw	a0,44(sp)
    111c:	1040000b 	beqz	v0,114c <func_80972008+0x94>
    1120:	8fa40024 	lw	a0,36(sp)
    1124:	3c01426c 	lui	at,0x426c
    1128:	44812000 	mtc1	at,$f4
    112c:	44803000 	mtc1	zero,$f6
    1130:	3c050600 	lui	a1,0x600
    1134:	24a50050 	addiu	a1,a1,80
    1138:	3c063f80 	lui	a2,0x3f80
    113c:	3c074270 	lui	a3,0x4270
    1140:	e7a40010 	swc1	$f4,16(sp)
    1144:	0c000000 	jal	0 <func_80970F50>
    1148:	e7a60014 	swc1	$f6,20(sp)
    114c:	8fbf001c 	lw	ra,28(sp)
    1150:	27bd0028 	addiu	sp,sp,40
    1154:	03e00008 	jr	ra
    1158:	00000000 	nop

0000115c <func_809720AC>:
    115c:	3c030600 	lui	v1,0x600
    1160:	24630060 	addiu	v1,v1,96
    1164:	00037100 	sll	t6,v1,0x4
    1168:	000e7f02 	srl	t7,t6,0x1c
    116c:	000fc080 	sll	t8,t7,0x2
    1170:	3c190000 	lui	t9,0x0
    1174:	0338c821 	addu	t9,t9,t8
    1178:	3c0100ff 	lui	at,0xff
    117c:	8f390000 	lw	t9,0(t9)
    1180:	3421ffff 	ori	at,at,0xffff
    1184:	00614024 	and	t0,v1,at
    1188:	3c018000 	lui	at,0x8000
    118c:	03281021 	addu	v0,t9,t0
    1190:	00411021 	addu	v0,v0,at
    1194:	3c01434a 	lui	at,0x434a
    1198:	44812000 	mtc1	at,$f4
    119c:	3c01437f 	lui	at,0x437f
    11a0:	44815000 	mtc1	at,$f10
    11a4:	460c2182 	mul.s	$f6,$f4,$f12
    11a8:	3c0d0000 	lui	t5,0x0
    11ac:	91ad0000 	lbu	t5,0(t5)
    11b0:	460c5402 	mul.s	$f16,$f10,$f12
    11b4:	27bdffe8 	addiu	sp,sp,-24
    11b8:	27a6000c 	addiu	a2,sp,12
    11bc:	3c040000 	lui	a0,0x0
    11c0:	a3a0000c 	sb	zero,12(sp)
    11c4:	24840000 	addiu	a0,a0,0
    11c8:	4600320d 	trunc.w.s	$f8,$f6
    11cc:	24030001 	li	v1,1
    11d0:	24070015 	li	a3,21
    11d4:	4600848d 	trunc.w.s	$f18,$f16
    11d8:	440a4000 	mfc1	t2,$f8
    11dc:	00cd7021 	addu	t6,a2,t5
    11e0:	440c9000 	mfc1	t4,$f18
    11e4:	a3aa000d 	sb	t2,13(sp)
    11e8:	11a00003 	beqz	t5,11f8 <func_809720AC+0x9c>
    11ec:	a3ac000e 	sb	t4,14(sp)
    11f0:	91cf0000 	lbu	t7,0(t6)
    11f4:	a04f000f 	sb	t7,15(v0)
    11f8:	27a6000c 	addiu	a2,sp,12
    11fc:	90850000 	lbu	a1,0(a0)
    1200:	10a00005 	beqz	a1,1218 <func_809720AC+0xbc>
    1204:	00c5c021 	addu	t8,a2,a1
    1208:	93190000 	lbu	t9,0(t8)
    120c:	00034100 	sll	t0,v1,0x4
    1210:	00484821 	addu	t1,v0,t0
    1214:	a139000f 	sb	t9,15(t1)
    1218:	90850001 	lbu	a1,1(a0)
    121c:	10a00005 	beqz	a1,1234 <func_809720AC+0xd8>
    1220:	00c55021 	addu	t2,a2,a1
    1224:	914b0000 	lbu	t3,0(t2)
    1228:	00036100 	sll	t4,v1,0x4
    122c:	004c6821 	addu	t5,v0,t4
    1230:	a1ab001f 	sb	t3,31(t5)
    1234:	90850002 	lbu	a1,2(a0)
    1238:	10a00005 	beqz	a1,1250 <func_809720AC+0xf4>
    123c:	00c57021 	addu	t6,a2,a1
    1240:	91cf0000 	lbu	t7,0(t6)
    1244:	0003c100 	sll	t8,v1,0x4
    1248:	00584021 	addu	t0,v0,t8
    124c:	a10f002f 	sb	t7,47(t0)
    1250:	90850003 	lbu	a1,3(a0)
    1254:	10a00005 	beqz	a1,126c <func_809720AC+0x110>
    1258:	00c5c821 	addu	t9,a2,a1
    125c:	93290000 	lbu	t1,0(t9)
    1260:	00035100 	sll	t2,v1,0x4
    1264:	004a6021 	addu	t4,v0,t2
    1268:	a189003f 	sb	t1,63(t4)
    126c:	24630004 	addiu	v1,v1,4
    1270:	1467ffe2 	bne	v1,a3,11fc <func_809720AC+0xa0>
    1274:	24840004 	addiu	a0,a0,4
    1278:	03e00008 	jr	ra
    127c:	27bd0018 	addiu	sp,sp,24

00001280 <func_809721D0>:
    1280:	27bdffe8 	addiu	sp,sp,-24
    1284:	afbf0014 	sw	ra,20(sp)
    1288:	afa5001c 	sw	a1,28(sp)
    128c:	848e0188 	lh	t6,392(a0)
    1290:	25cf0001 	addiu	t7,t6,1
    1294:	a48f0188 	sh	t7,392(a0)
    1298:	84820188 	lh	v0,392(a0)
    129c:	284100fb 	slti	at,v0,251
    12a0:	5420000f 	bnezl	at,12e0 <func_809721D0+0x60>
    12a4:	28410065 	slti	at,v0,101
    12a8:	3c020000 	lui	v0,0x0
    12ac:	24420000 	addiu	v0,v0,0
    12b0:	8c580000 	lw	t8,0(v0)
    12b4:	24010324 	li	at,804
    12b8:	17010004 	bne	t8,at,12cc <func_809721D0+0x4c>
    12bc:	00000000 	nop
    12c0:	94590eec 	lhu	t9,3820(v0)
    12c4:	37280200 	ori	t0,t9,0x200
    12c8:	a4480eec 	sh	t0,3820(v0)
    12cc:	0c000000 	jal	0 <func_80970F50>
    12d0:	00000000 	nop
    12d4:	10000015 	b	132c <func_809721D0+0xac>
    12d8:	8fbf0014 	lw	ra,20(sp)
    12dc:	28410065 	slti	at,v0,101
    12e0:	1420000f 	bnez	at,1320 <func_809721D0+0xa0>
    12e4:	240900fa 	li	t1,250
    12e8:	01225023 	subu	t2,t1,v0
    12ec:	448a2000 	mtc1	t2,$f4
    12f0:	3c010000 	lui	at,0x0
    12f4:	c4280000 	lwc1	$f8,0(at)
    12f8:	468021a0 	cvt.s.w	$f6,$f4
    12fc:	3c0140a0 	lui	at,0x40a0
    1300:	44815000 	mtc1	at,$f10
    1304:	46083002 	mul.s	$f0,$f6,$f8
    1308:	e4800050 	swc1	$f0,80(a0)
    130c:	e4800058 	swc1	$f0,88(a0)
    1310:	460a0302 	mul.s	$f12,$f0,$f10
    1314:	0c000000 	jal	0 <func_80970F50>
    1318:	afa40018 	sw	a0,24(sp)
    131c:	8fa40018 	lw	a0,24(sp)
    1320:	0c000000 	jal	0 <func_80970F50>
    1324:	2405209d 	li	a1,8349
    1328:	8fbf0014 	lw	ra,20(sp)
    132c:	27bd0018 	addiu	sp,sp,24
    1330:	03e00008 	jr	ra
    1334:	00000000 	nop

00001338 <func_80972288>:
    1338:	27bdffe8 	addiu	sp,sp,-24
    133c:	afbf0014 	sw	ra,20(sp)
    1340:	afa5001c 	sw	a1,28(sp)
    1344:	848e0188 	lh	t6,392(a0)
    1348:	24180064 	li	t8,100
    134c:	25cf0001 	addiu	t7,t6,1
    1350:	a48f0188 	sh	t7,392(a0)
    1354:	84820188 	lh	v0,392(a0)
    1358:	28410065 	slti	at,v0,101
    135c:	1020001b 	beqz	at,13cc <func_80972288+0x94>
    1360:	0302c823 	subu	t9,t8,v0
    1364:	44992000 	mtc1	t9,$f4
    1368:	3c010000 	lui	at,0x0
    136c:	c4280000 	lwc1	$f8,0(at)
    1370:	468021a0 	cvt.s.w	$f6,$f4
    1374:	3c010000 	lui	at,0x0
    1378:	c42a0000 	lwc1	$f10,0(at)
    137c:	8488001c 	lh	t0,28(a0)
    1380:	24010019 	li	at,25
    1384:	46083302 	mul.s	$f12,$f6,$f8
    1388:	310900ff 	andi	t1,t0,0xff
    138c:	460a6082 	mul.s	$f2,$f12,$f10
    1390:	15210005 	bne	t1,at,13a8 <func_80972288+0x70>
    1394:	46001006 	mov.s	$f0,$f2
    1398:	3c010000 	lui	at,0x0
    139c:	c4300000 	lwc1	$f16,0(at)
    13a0:	46101002 	mul.s	$f0,$f2,$f16
    13a4:	00000000 	nop
    13a8:	e4800050 	swc1	$f0,80(a0)
    13ac:	e4800058 	swc1	$f0,88(a0)
    13b0:	0c000000 	jal	0 <func_80970F50>
    13b4:	afa40018 	sw	a0,24(sp)
    13b8:	8fa40018 	lw	a0,24(sp)
    13bc:	0c000000 	jal	0 <func_80970F50>
    13c0:	2405209d 	li	a1,8349
    13c4:	10000008 	b	13e8 <func_80972288+0xb0>
    13c8:	8fbf0014 	lw	ra,20(sp)
    13cc:	3c013f80 	lui	at,0x3f80
    13d0:	44816000 	mtc1	at,$f12
    13d4:	0c000000 	jal	0 <func_80970F50>
    13d8:	afa40018 	sw	a0,24(sp)
    13dc:	0c000000 	jal	0 <func_80970F50>
    13e0:	8fa40018 	lw	a0,24(sp)
    13e4:	8fbf0014 	lw	ra,20(sp)
    13e8:	27bd0018 	addiu	sp,sp,24
    13ec:	03e00008 	jr	ra
    13f0:	00000000 	nop

000013f4 <func_80972344>:
    13f4:	27bdffd8 	addiu	sp,sp,-40
    13f8:	afbf001c 	sw	ra,28(sp)
    13fc:	afa5002c 	sw	a1,44(sp)
    1400:	afa40028 	sw	a0,40(sp)
    1404:	0c000000 	jal	0 <func_80970F50>
    1408:	2405209d 	li	a1,8349
    140c:	8fa50028 	lw	a1,40(sp)
    1410:	8fa4002c 	lw	a0,44(sp)
    1414:	24a5014c 	addiu	a1,a1,332
    1418:	0c000000 	jal	0 <func_80970F50>
    141c:	afa50024 	sw	a1,36(sp)
    1420:	10400010 	beqz	v0,1464 <func_80972344+0x70>
    1424:	8fa40024 	lw	a0,36(sp)
    1428:	3c01426c 	lui	at,0x426c
    142c:	44812000 	mtc1	at,$f4
    1430:	44803000 	mtc1	zero,$f6
    1434:	3c050600 	lui	a1,0x600
    1438:	24a50050 	addiu	a1,a1,80
    143c:	3c063f80 	lui	a2,0x3f80
    1440:	3c074270 	lui	a3,0x4270
    1444:	e7a40010 	swc1	$f4,16(sp)
    1448:	0c000000 	jal	0 <func_80970F50>
    144c:	e7a60014 	swc1	$f6,20(sp)
    1450:	8fa20028 	lw	v0,40(sp)
    1454:	3c0e0000 	lui	t6,0x0
    1458:	25ce0000 	addiu	t6,t6,0
    145c:	ac4e019c 	sw	t6,412(v0)
    1460:	a4400188 	sh	zero,392(v0)
    1464:	8fbf001c 	lw	ra,28(sp)
    1468:	27bd0028 	addiu	sp,sp,40
    146c:	03e00008 	jr	ra
    1470:	00000000 	nop

00001474 <func_809723C4>:
    1474:	27bdffe8 	addiu	sp,sp,-24
    1478:	afbf0014 	sw	ra,20(sp)
    147c:	848e0188 	lh	t6,392(a0)
    1480:	25cf03e8 	addiu	t7,t6,1000
    1484:	a48f0188 	sh	t7,392(a0)
    1488:	90b81d6c 	lbu	t8,7532(a1)
    148c:	530000b0 	beqzl	t8,1750 <func_809723C4+0x2dc>
    1490:	8fbf0014 	lw	ra,20(sp)
    1494:	8486018c 	lh	a2,396(a0)
    1498:	00003825 	move	a3,zero
    149c:	0006c880 	sll	t9,a2,0x2
    14a0:	00b94021 	addu	t0,a1,t9
    14a4:	8d091d8c 	lw	t1,7564(t0)
    14a8:	512000a9 	beqzl	t1,1750 <func_809723C4+0x2dc>
    14ac:	8fbf0014 	lw	ra,20(sp)
    14b0:	afa40018 	sw	a0,24(sp)
    14b4:	0c000000 	jal	0 <func_80970F50>
    14b8:	afa5001c 	sw	a1,28(sp)
    14bc:	8fa40018 	lw	a0,24(sp)
    14c0:	8fa5001c 	lw	a1,28(sp)
    14c4:	24010002 	li	at,2
    14c8:	848a018c 	lh	t2,396(a0)
    14cc:	000a5880 	sll	t3,t2,0x2
    14d0:	00ab6021 	addu	t4,a1,t3
    14d4:	8d8d1d8c 	lw	t5,7564(t4)
    14d8:	95ae0000 	lhu	t6,0(t5)
    14dc:	15c1008b 	bne	t6,at,170c <func_809723C4+0x298>
    14e0:	00000000 	nop
    14e4:	90830178 	lbu	v1,376(a0)
    14e8:	2861008c 	slti	at,v1,140
    14ec:	10200004 	beqz	at,1500 <func_809723C4+0x8c>
    14f0:	00601025 	move	v0,v1
    14f4:	246f0001 	addiu	t7,v1,1
    14f8:	a08f0178 	sb	t7,376(a0)
    14fc:	31e200ff 	andi	v0,t7,0xff
    1500:	2841001e 	slti	at,v0,30
    1504:	10200029 	beqz	at,15ac <func_809723C4+0x138>
    1508:	240300ff 	li	v1,255
    150c:	44822000 	mtc1	v0,$f4
    1510:	3c014108 	lui	at,0x4108
    1514:	44814000 	mtc1	at,$f8
    1518:	468021a0 	cvt.s.w	$f6,$f4
    151c:	24190001 	li	t9,1
    1520:	3c014f00 	lui	at,0x4f00
    1524:	46083282 	mul.s	$f10,$f6,$f8
    1528:	4458f800 	cfc1	t8,$31
    152c:	44d9f800 	ctc1	t9,$31
    1530:	00000000 	nop
    1534:	46005424 	cvt.w.s	$f16,$f10
    1538:	4459f800 	cfc1	t9,$31
    153c:	00000000 	nop
    1540:	33390078 	andi	t9,t9,0x78
    1544:	53200013 	beqzl	t9,1594 <func_809723C4+0x120>
    1548:	44198000 	mfc1	t9,$f16
    154c:	44818000 	mtc1	at,$f16
    1550:	24190001 	li	t9,1
    1554:	46105401 	sub.s	$f16,$f10,$f16
    1558:	44d9f800 	ctc1	t9,$31
    155c:	00000000 	nop
    1560:	46008424 	cvt.w.s	$f16,$f16
    1564:	4459f800 	cfc1	t9,$31
    1568:	00000000 	nop
    156c:	33390078 	andi	t9,t9,0x78
    1570:	17200005 	bnez	t9,1588 <func_809723C4+0x114>
    1574:	00000000 	nop
    1578:	44198000 	mfc1	t9,$f16
    157c:	3c018000 	lui	at,0x8000
    1580:	10000007 	b	15a0 <func_809723C4+0x12c>
    1584:	0321c825 	or	t9,t9,at
    1588:	10000005 	b	15a0 <func_809723C4+0x12c>
    158c:	2419ffff 	li	t9,-1
    1590:	44198000 	mfc1	t9,$f16
    1594:	00000000 	nop
    1598:	0720fffb 	bltz	t9,1588 <func_809723C4+0x114>
    159c:	00000000 	nop
    15a0:	44d8f800 	ctc1	t8,$31
    15a4:	10000059 	b	170c <func_809723C4+0x298>
    15a8:	a0990184 	sb	t9,388(a0)
    15ac:	2841003c 	slti	at,v0,60
    15b0:	1020002a 	beqz	at,165c <func_809723C4+0x1e8>
    15b4:	a0830184 	sb	v1,388(a0)
    15b8:	2448ffe2 	addiu	t0,v0,-30
    15bc:	44889000 	mtc1	t0,$f18
    15c0:	3c014108 	lui	at,0x4108
    15c4:	44813000 	mtc1	at,$f6
    15c8:	46809120 	cvt.s.w	$f4,$f18
    15cc:	240a0001 	li	t2,1
    15d0:	3c014f00 	lui	at,0x4f00
    15d4:	46062202 	mul.s	$f8,$f4,$f6
    15d8:	4449f800 	cfc1	t1,$31
    15dc:	44caf800 	ctc1	t2,$31
    15e0:	00000000 	nop
    15e4:	460042a4 	cvt.w.s	$f10,$f8
    15e8:	444af800 	cfc1	t2,$31
    15ec:	00000000 	nop
    15f0:	314a0078 	andi	t2,t2,0x78
    15f4:	51400013 	beqzl	t2,1644 <func_809723C4+0x1d0>
    15f8:	440a5000 	mfc1	t2,$f10
    15fc:	44815000 	mtc1	at,$f10
    1600:	240a0001 	li	t2,1
    1604:	460a4281 	sub.s	$f10,$f8,$f10
    1608:	44caf800 	ctc1	t2,$31
    160c:	00000000 	nop
    1610:	460052a4 	cvt.w.s	$f10,$f10
    1614:	444af800 	cfc1	t2,$31
    1618:	00000000 	nop
    161c:	314a0078 	andi	t2,t2,0x78
    1620:	15400005 	bnez	t2,1638 <func_809723C4+0x1c4>
    1624:	00000000 	nop
    1628:	440a5000 	mfc1	t2,$f10
    162c:	3c018000 	lui	at,0x8000
    1630:	10000007 	b	1650 <func_809723C4+0x1dc>
    1634:	01415025 	or	t2,t2,at
    1638:	10000005 	b	1650 <func_809723C4+0x1dc>
    163c:	240affff 	li	t2,-1
    1640:	440a5000 	mfc1	t2,$f10
    1644:	00000000 	nop
    1648:	0540fffb 	bltz	t2,1638 <func_809723C4+0x1c4>
    164c:	00000000 	nop
    1650:	44c9f800 	ctc1	t1,$31
    1654:	1000002d 	b	170c <func_809723C4+0x298>
    1658:	a08a0185 	sb	t2,389(a0)
    165c:	2841008d 	slti	at,v0,141
    1660:	1020002a 	beqz	at,170c <func_809723C4+0x298>
    1664:	244bffc4 	addiu	t3,v0,-60
    1668:	448b8000 	mtc1	t3,$f16
    166c:	3c01404c 	lui	at,0x404c
    1670:	44812000 	mtc1	at,$f4
    1674:	468084a0 	cvt.s.w	$f18,$f16
    1678:	240d0001 	li	t5,1
    167c:	a0830185 	sb	v1,389(a0)
    1680:	3c014f00 	lui	at,0x4f00
    1684:	46049182 	mul.s	$f6,$f18,$f4
    1688:	444cf800 	cfc1	t4,$31
    168c:	44cdf800 	ctc1	t5,$31
    1690:	00000000 	nop
    1694:	46003224 	cvt.w.s	$f8,$f6
    1698:	444df800 	cfc1	t5,$31
    169c:	00000000 	nop
    16a0:	31ad0078 	andi	t5,t5,0x78
    16a4:	51a00013 	beqzl	t5,16f4 <func_809723C4+0x280>
    16a8:	440d4000 	mfc1	t5,$f8
    16ac:	44814000 	mtc1	at,$f8
    16b0:	240d0001 	li	t5,1
    16b4:	46083201 	sub.s	$f8,$f6,$f8
    16b8:	44cdf800 	ctc1	t5,$31
    16bc:	00000000 	nop
    16c0:	46004224 	cvt.w.s	$f8,$f8
    16c4:	444df800 	cfc1	t5,$31
    16c8:	00000000 	nop
    16cc:	31ad0078 	andi	t5,t5,0x78
    16d0:	15a00005 	bnez	t5,16e8 <func_809723C4+0x274>
    16d4:	00000000 	nop
    16d8:	440d4000 	mfc1	t5,$f8
    16dc:	3c018000 	lui	at,0x8000
    16e0:	10000007 	b	1700 <func_809723C4+0x28c>
    16e4:	01a16825 	or	t5,t5,at
    16e8:	10000005 	b	1700 <func_809723C4+0x28c>
    16ec:	240dffff 	li	t5,-1
    16f0:	440d4000 	mfc1	t5,$f8
    16f4:	00000000 	nop
    16f8:	05a0fffb 	bltz	t5,16e8 <func_809723C4+0x274>
    16fc:	00000000 	nop
    1700:	44ccf800 	ctc1	t4,$31
    1704:	a08d0186 	sb	t5,390(a0)
    1708:	00000000 	nop
    170c:	3c020000 	lui	v0,0x0
    1710:	24420000 	addiu	v0,v0,0
    1714:	8c4e0000 	lw	t6,0(v0)
    1718:	240100a0 	li	at,160
    171c:	55c1000c 	bnel	t6,at,1750 <func_809723C4+0x2dc>
    1720:	8fbf0014 	lw	ra,20(sp)
    1724:	8c4f1360 	lw	t7,4960(v0)
    1728:	24010006 	li	at,6
    172c:	55e10008 	bnel	t7,at,1750 <func_809723C4+0x2dc>
    1730:	8fbf0014 	lw	ra,20(sp)
    1734:	94b81d74 	lhu	t8,7540(a1)
    1738:	2401008f 	li	at,143
    173c:	57010004 	bnel	t8,at,1750 <func_809723C4+0x2dc>
    1740:	8fbf0014 	lw	ra,20(sp)
    1744:	0c000000 	jal	0 <func_80970F50>
    1748:	24051842 	li	a1,6210
    174c:	8fbf0014 	lw	ra,20(sp)
    1750:	27bd0018 	addiu	sp,sp,24
    1754:	03e00008 	jr	ra
    1758:	00000000 	nop

0000175c <func_809726AC>:
    175c:	27bdffe8 	addiu	sp,sp,-24
    1760:	afbf0014 	sw	ra,20(sp)
    1764:	afa5001c 	sw	a1,28(sp)
    1768:	90830184 	lbu	v1,388(a0)
    176c:	84820188 	lh	v0,392(a0)
    1770:	0043082a 	slt	at,v0,v1
    1774:	10200006 	beqz	at,1790 <func_809726AC+0x34>
    1778:	00437023 	subu	t6,v0,v1
    177c:	0c000000 	jal	0 <func_80970F50>
    1780:	afa40018 	sw	a0,24(sp)
    1784:	8fa40018 	lw	a0,24(sp)
    1788:	10000002 	b	1794 <func_809726AC+0x38>
    178c:	a4800188 	sh	zero,392(a0)
    1790:	a48e0188 	sh	t6,392(a0)
    1794:	84820188 	lh	v0,392(a0)
    1798:	28410100 	slti	at,v0,256
    179c:	1020000a 	beqz	at,17c8 <func_809726AC+0x6c>
    17a0:	284100e1 	slti	at,v0,225
    17a4:	14200006 	bnez	at,17c0 <func_809726AC+0x64>
    17a8:	240800ff 	li	t0,255
    17ac:	00027823 	negu	t7,v0
    17b0:	000fc0c0 	sll	t8,t7,0x3
    17b4:	27190800 	addiu	t9,t8,2048
    17b8:	10000003 	b	17c8 <func_809726AC+0x6c>
    17bc:	a0990185 	sb	t9,389(a0)
    17c0:	a0880185 	sb	t0,389(a0)
    17c4:	84820188 	lh	v0,392(a0)
    17c8:	240100ff 	li	at,255
    17cc:	54410004 	bnel	v0,at,17e0 <func_809726AC+0x84>
    17d0:	8fbf0014 	lw	ra,20(sp)
    17d4:	0c000000 	jal	0 <func_80970F50>
    17d8:	24040005 	li	a0,5
    17dc:	8fbf0014 	lw	ra,20(sp)
    17e0:	27bd0018 	addiu	sp,sp,24
    17e4:	03e00008 	jr	ra
    17e8:	00000000 	nop

000017ec <func_8097273C>:
    17ec:	27bdffe8 	addiu	sp,sp,-24
    17f0:	afbf0014 	sw	ra,20(sp)
    17f4:	0c000000 	jal	0 <func_80970F50>
    17f8:	afa40018 	sw	a0,24(sp)
    17fc:	8fa40018 	lw	a0,24(sp)
    1800:	240a00ff 	li	t2,255
    1804:	848e0188 	lh	t6,392(a0)
    1808:	908f0184 	lbu	t7,388(a0)
    180c:	01cfc021 	addu	t8,t6,t7
    1810:	a4980188 	sh	t8,392(a0)
    1814:	84820188 	lh	v0,392(a0)
    1818:	284100e1 	slti	at,v0,225
    181c:	14200004 	bnez	at,1830 <func_8097273C+0x44>
    1820:	0002c823 	negu	t9,v0
    1824:	001940c0 	sll	t0,t9,0x3
    1828:	25090800 	addiu	t1,t0,2048
    182c:	a0890185 	sb	t1,389(a0)
    1830:	28410100 	slti	at,v0,256
    1834:	54200007 	bnezl	at,1854 <func_8097273C+0x68>
    1838:	8fbf0014 	lw	ra,20(sp)
    183c:	a48a0188 	sh	t2,392(a0)
    1840:	0c000000 	jal	0 <func_80970F50>
    1844:	afa40018 	sw	a0,24(sp)
    1848:	8fa40018 	lw	a0,24(sp)
    184c:	a4800188 	sh	zero,392(a0)
    1850:	8fbf0014 	lw	ra,20(sp)
    1854:	27bd0018 	addiu	sp,sp,24
    1858:	03e00008 	jr	ra
    185c:	00000000 	nop

00001860 <func_809727B0>:
    1860:	27bdffc8 	addiu	sp,sp,-56
    1864:	afbf0034 	sw	ra,52(sp)
    1868:	afb00030 	sw	s0,48(sp)
    186c:	00808025 	move	s0,a0
    1870:	0c000000 	jal	0 <func_80970F50>
    1874:	afa5003c 	sw	a1,60(sp)
    1878:	8fa5003c 	lw	a1,60(sp)
    187c:	90ae1d6c 	lbu	t6,7532(a1)
    1880:	51c00021 	beqzl	t6,1908 <func_809727B0+0xa8>
    1884:	8fbf0034 	lw	ra,52(sp)
    1888:	860f018c 	lh	t7,396(s0)
    188c:	000fc080 	sll	t8,t7,0x2
    1890:	00b8c821 	addu	t9,a1,t8
    1894:	8f221d8c 	lw	v0,7564(t9)
    1898:	5040001b 	beqzl	v0,1908 <func_809727B0+0xa8>
    189c:	8fbf0034 	lw	ra,52(sp)
    18a0:	94480000 	lhu	t0,0(v0)
    18a4:	24010002 	li	at,2
    18a8:	24a41c24 	addiu	a0,a1,7204
    18ac:	15010015 	bne	t0,at,1904 <func_809727B0+0xa4>
    18b0:	2406008b 	li	a2,139
    18b4:	c6040028 	lwc1	$f4,40(s0)
    18b8:	8e070024 	lw	a3,36(s0)
    18bc:	24090002 	li	t1,2
    18c0:	e7a40010 	swc1	$f4,16(sp)
    18c4:	c606002c 	lwc1	$f6,44(s0)
    18c8:	afa90024 	sw	t1,36(sp)
    18cc:	afa00020 	sw	zero,32(sp)
    18d0:	afa0001c 	sw	zero,28(sp)
    18d4:	afa00018 	sw	zero,24(sp)
    18d8:	0c000000 	jal	0 <func_80970F50>
    18dc:	e7a60014 	swc1	$f6,20(sp)
    18e0:	10400003 	beqz	v0,18f0 <func_809727B0+0x90>
    18e4:	00402025 	move	a0,v0
    18e8:	0c000000 	jal	0 <func_80970F50>
    18ec:	24050000 	li	a1,0
    18f0:	3c0a0000 	lui	t2,0x0
    18f4:	254a0000 	addiu	t2,t2,0
    18f8:	240b00ff 	li	t3,255
    18fc:	ae0a019c 	sw	t2,412(s0)
    1900:	a20b0185 	sb	t3,389(s0)
    1904:	8fbf0034 	lw	ra,52(sp)
    1908:	8fb00030 	lw	s0,48(sp)
    190c:	27bd0038 	addiu	sp,sp,56
    1910:	03e00008 	jr	ra
    1914:	00000000 	nop

00001918 <func_80972868>:
    1918:	27bdffc0 	addiu	sp,sp,-64
    191c:	afbf0034 	sw	ra,52(sp)
    1920:	afb00030 	sw	s0,48(sp)
    1924:	00808025 	move	s0,a0
    1928:	0c000000 	jal	0 <func_80970F50>
    192c:	afa50044 	sw	a1,68(sp)
    1930:	3c013f00 	lui	at,0x3f00
    1934:	44813000 	mtc1	at,$f6
    1938:	c604006c 	lwc1	$f4,108(s0)
    193c:	c60a0068 	lwc1	$f10,104(s0)
    1940:	92020184 	lbu	v0,388(s0)
    1944:	46062202 	mul.s	$f8,$f4,$f6
    1948:	2406008b 	li	a2,139
    194c:	240f0002 	li	t7,2
    1950:	244effff 	addiu	t6,v0,-1
    1954:	46085400 	add.s	$f16,$f10,$f8
    1958:	10400003 	beqz	v0,1968 <func_80972868+0x50>
    195c:	e6100068 	swc1	$f16,104(s0)
    1960:	1000003c 	b	1a54 <func_80972868+0x13c>
    1964:	a20e0184 	sb	t6,388(s0)
    1968:	c6120028 	lwc1	$f18,40(s0)
    196c:	8e070024 	lw	a3,36(s0)
    1970:	8fa50044 	lw	a1,68(sp)
    1974:	e7b20010 	swc1	$f18,16(sp)
    1978:	c604002c 	lwc1	$f4,44(s0)
    197c:	24a41c24 	addiu	a0,a1,7204
    1980:	afa40038 	sw	a0,56(sp)
    1984:	afaf0024 	sw	t7,36(sp)
    1988:	afa00020 	sw	zero,32(sp)
    198c:	afa0001c 	sw	zero,28(sp)
    1990:	afa00018 	sw	zero,24(sp)
    1994:	0c000000 	jal	0 <func_80970F50>
    1998:	e7a40014 	swc1	$f4,20(sp)
    199c:	10400003 	beqz	v0,19ac <func_80972868+0x94>
    19a0:	00402025 	move	a0,v0
    19a4:	0c000000 	jal	0 <func_80970F50>
    19a8:	24050000 	li	a1,0
    19ac:	c6060028 	lwc1	$f6,40(s0)
    19b0:	8e070024 	lw	a3,36(s0)
    19b4:	24180007 	li	t8,7
    19b8:	e7a60010 	swc1	$f6,16(sp)
    19bc:	c60a002c 	lwc1	$f10,44(s0)
    19c0:	afb80024 	sw	t8,36(sp)
    19c4:	afa00020 	sw	zero,32(sp)
    19c8:	afa0001c 	sw	zero,28(sp)
    19cc:	afa00018 	sw	zero,24(sp)
    19d0:	8fa40038 	lw	a0,56(sp)
    19d4:	8fa50044 	lw	a1,68(sp)
    19d8:	2406008b 	li	a2,139
    19dc:	0c000000 	jal	0 <func_80970F50>
    19e0:	e7aa0014 	swc1	$f10,20(sp)
    19e4:	10400004 	beqz	v0,19f8 <func_80972868+0xe0>
    19e8:	00402025 	move	a0,v0
    19ec:	3c053dcc 	lui	a1,0x3dcc
    19f0:	0c000000 	jal	0 <func_80970F50>
    19f4:	34a5cccd 	ori	a1,a1,0xcccd
    19f8:	c6080028 	lwc1	$f8,40(s0)
    19fc:	8e070024 	lw	a3,36(s0)
    1a00:	24190010 	li	t9,16
    1a04:	e7a80010 	swc1	$f8,16(sp)
    1a08:	c610002c 	lwc1	$f16,44(s0)
    1a0c:	afb90024 	sw	t9,36(sp)
    1a10:	afa00020 	sw	zero,32(sp)
    1a14:	afa0001c 	sw	zero,28(sp)
    1a18:	afa00018 	sw	zero,24(sp)
    1a1c:	8fa40038 	lw	a0,56(sp)
    1a20:	8fa50044 	lw	a1,68(sp)
    1a24:	2406008b 	li	a2,139
    1a28:	0c000000 	jal	0 <func_80970F50>
    1a2c:	e7b00014 	swc1	$f16,20(sp)
    1a30:	10400004 	beqz	v0,1a44 <func_80972868+0x12c>
    1a34:	00402025 	move	a0,v0
    1a38:	3c053e4c 	lui	a1,0x3e4c
    1a3c:	0c000000 	jal	0 <func_80970F50>
    1a40:	34a5cccd 	ori	a1,a1,0xcccd
    1a44:	0c000000 	jal	0 <func_80970F50>
    1a48:	24041842 	li	a0,6210
    1a4c:	0c000000 	jal	0 <func_80970F50>
    1a50:	02002025 	move	a0,s0
    1a54:	8fbf0034 	lw	ra,52(sp)
    1a58:	8fb00030 	lw	s0,48(sp)
    1a5c:	27bd0040 	addiu	sp,sp,64
    1a60:	03e00008 	jr	ra
    1a64:	00000000 	nop

00001a68 <func_809729B8>:
    1a68:	afa50004 	sw	a1,4(sp)
    1a6c:	8c820118 	lw	v0,280(a0)
    1a70:	3c013fc0 	lui	at,0x3fc0
    1a74:	44812000 	mtc1	at,$f4
    1a78:	844e00b6 	lh	t6,182(v0)
    1a7c:	3c01bfc0 	lui	at,0xbfc0
    1a80:	44813000 	mtc1	at,$f6
    1a84:	240f0032 	li	t7,50
    1a88:	a08f0184 	sb	t7,388(a0)
    1a8c:	3c010000 	lui	at,0x0
    1a90:	a48e0032 	sh	t6,50(a0)
    1a94:	e4840068 	swc1	$f4,104(a0)
    1a98:	e4860070 	swc1	$f6,112(a0)
    1a9c:	c4280000 	lwc1	$f8,0(at)
    1aa0:	3c180000 	lui	t8,0x0
    1aa4:	27180000 	addiu	t8,t8,0
    1aa8:	ac98019c 	sw	t8,412(a0)
    1aac:	03e00008 	jr	ra
    1ab0:	e488006c 	swc1	$f8,108(a0)

00001ab4 <func_80972A04>:
    1ab4:	27bdffe8 	addiu	sp,sp,-24
    1ab8:	afbf0014 	sw	ra,20(sp)
    1abc:	afa5001c 	sw	a1,28(sp)
    1ac0:	90820185 	lbu	v0,389(a0)
    1ac4:	3c010000 	lui	at,0x0
    1ac8:	c4840050 	lwc1	$f4,80(a0)
    1acc:	00027100 	sll	t6,v0,0x4
    1ad0:	244fffff 	addiu	t7,v0,-1
    1ad4:	a08e0184 	sb	t6,388(a0)
    1ad8:	a08f0185 	sb	t7,389(a0)
    1adc:	c4260000 	lwc1	$f6,0(at)
    1ae0:	afa40018 	sw	a0,24(sp)
    1ae4:	46062202 	mul.s	$f8,$f4,$f6
    1ae8:	44054000 	mfc1	a1,$f8
    1aec:	0c000000 	jal	0 <func_80970F50>
    1af0:	00000000 	nop
    1af4:	8fa40018 	lw	a0,24(sp)
    1af8:	90980185 	lbu	t8,389(a0)
    1afc:	57000004 	bnezl	t8,1b10 <func_80972A04+0x5c>
    1b00:	8fbf0014 	lw	ra,20(sp)
    1b04:	0c000000 	jal	0 <func_80970F50>
    1b08:	00000000 	nop
    1b0c:	8fbf0014 	lw	ra,20(sp)
    1b10:	27bd0018 	addiu	sp,sp,24
    1b14:	03e00008 	jr	ra
    1b18:	00000000 	nop

00001b1c <func_80972A6C>:
    1b1c:	27bdffe8 	addiu	sp,sp,-24
    1b20:	afbf0014 	sw	ra,20(sp)
    1b24:	afa5001c 	sw	a1,28(sp)
    1b28:	8c820118 	lw	v0,280(a0)
    1b2c:	50400018 	beqzl	v0,1b90 <func_80972A6C+0x74>
    1b30:	908f0185 	lbu	t7,389(a0)
    1b34:	908e0185 	lbu	t6,389(a0)
    1b38:	3c0140a0 	lui	at,0x40a0
    1b3c:	44812000 	mtc1	at,$f4
    1b40:	448e3000 	mtc1	t6,$f6
    1b44:	3c010000 	lui	at,0x0
    1b48:	c4300000 	lwc1	$f16,0(at)
    1b4c:	46803220 	cvt.s.w	$f8,$f6
    1b50:	3c014120 	lui	at,0x4120
    1b54:	44813000 	mtc1	at,$f6
    1b58:	46082281 	sub.s	$f10,$f4,$f8
    1b5c:	c4480050 	lwc1	$f8,80(v0)
    1b60:	afa40018 	sw	a0,24(sp)
    1b64:	46105482 	mul.s	$f18,$f10,$f16
    1b68:	00000000 	nop
    1b6c:	46069102 	mul.s	$f4,$f18,$f6
    1b70:	00000000 	nop
    1b74:	46082282 	mul.s	$f10,$f4,$f8
    1b78:	44055000 	mfc1	a1,$f10
    1b7c:	0c000000 	jal	0 <func_80970F50>
    1b80:	00000000 	nop
    1b84:	1000000f 	b	1bc4 <func_80972A6C+0xa8>
    1b88:	8fa40018 	lw	a0,24(sp)
    1b8c:	908f0185 	lbu	t7,389(a0)
    1b90:	3c0140a0 	lui	at,0x40a0
    1b94:	44818000 	mtc1	at,$f16
    1b98:	448f9000 	mtc1	t7,$f18
    1b9c:	3c010000 	lui	at,0x0
    1ba0:	c4280000 	lwc1	$f8,0(at)
    1ba4:	468091a0 	cvt.s.w	$f6,$f18
    1ba8:	afa40018 	sw	a0,24(sp)
    1bac:	46068101 	sub.s	$f4,$f16,$f6
    1bb0:	46082282 	mul.s	$f10,$f4,$f8
    1bb4:	44055000 	mfc1	a1,$f10
    1bb8:	0c000000 	jal	0 <func_80970F50>
    1bbc:	00000000 	nop
    1bc0:	8fa40018 	lw	a0,24(sp)
    1bc4:	90820185 	lbu	v0,389(a0)
    1bc8:	3c080000 	lui	t0,0x0
    1bcc:	2419000f 	li	t9,15
    1bd0:	10400004 	beqz	v0,1be4 <func_80972A6C+0xc8>
    1bd4:	25080000 	addiu	t0,t0,0
    1bd8:	2458ffff 	addiu	t8,v0,-1
    1bdc:	10000003 	b	1bec <func_80972A6C+0xd0>
    1be0:	a0980185 	sb	t8,389(a0)
    1be4:	a0990185 	sb	t9,389(a0)
    1be8:	ac88019c 	sw	t0,412(a0)
    1bec:	8fbf0014 	lw	ra,20(sp)
    1bf0:	27bd0018 	addiu	sp,sp,24
    1bf4:	03e00008 	jr	ra
    1bf8:	00000000 	nop

00001bfc <func_80972B4C>:
    1bfc:	27bdffd0 	addiu	sp,sp,-48
    1c00:	afbf0024 	sw	ra,36(sp)
    1c04:	afb10020 	sw	s1,32(sp)
    1c08:	afb0001c 	sw	s0,28(sp)
    1c0c:	8483001c 	lh	v1,28(a0)
    1c10:	90ae1d6c 	lbu	t6,7532(a1)
    1c14:	00808025 	move	s0,a0
    1c18:	30630f00 	andi	v1,v1,0xf00
    1c1c:	00a08825 	move	s1,a1
    1c20:	11c000ad 	beqz	t6,1ed8 <func_80972B4C+0x2dc>
    1c24:	00031a03 	sra	v1,v1,0x8
    1c28:	8486018c 	lh	a2,396(a0)
    1c2c:	00003825 	move	a3,zero
    1c30:	00067880 	sll	t7,a2,0x2
    1c34:	00afc021 	addu	t8,a1,t7
    1c38:	8f191d8c 	lw	t9,7564(t8)
    1c3c:	532000a7 	beqzl	t9,1edc <func_80972B4C+0x2e0>
    1c40:	8fbf0024 	lw	ra,36(sp)
    1c44:	0c000000 	jal	0 <func_80970F50>
    1c48:	afa30028 	sw	v1,40(sp)
    1c4c:	8608018c 	lh	t0,396(s0)
    1c50:	24010002 	li	at,2
    1c54:	8fa30028 	lw	v1,40(sp)
    1c58:	00084880 	sll	t1,t0,0x2
    1c5c:	02295021 	addu	t2,s1,t1
    1c60:	8d4b1d8c 	lw	t3,7564(t2)
    1c64:	95620000 	lhu	v0,0(t3)
    1c68:	10410005 	beq	v0,at,1c80 <func_80972B4C+0x84>
    1c6c:	24010003 	li	at,3
    1c70:	1041002d 	beq	v0,at,1d28 <func_80972B4C+0x12c>
    1c74:	26040050 	addiu	a0,s0,80
    1c78:	10000038 	b	1d5c <func_80972B4C+0x160>
    1c7c:	862200a4 	lh	v0,164(s1)
    1c80:	86020188 	lh	v0,392(s0)
    1c84:	284100f0 	slti	at,v0,240
    1c88:	50200022 	beqzl	at,1d14 <func_80972B4C+0x118>
    1c8c:	920d0185 	lbu	t5,389(s0)
    1c90:	14600011 	bnez	v1,1cd8 <func_80972B4C+0xdc>
    1c94:	3c010000 	lui	at,0x0
    1c98:	3c010000 	lui	at,0x0
    1c9c:	c4240000 	lwc1	$f4,0(at)
    1ca0:	c6000050 	lwc1	$f0,80(s0)
    1ca4:	3c010000 	lui	at,0x0
    1ca8:	4604003c 	c.lt.s	$f0,$f4
    1cac:	00000000 	nop
    1cb0:	45020018 	bc1fl	1d14 <func_80972B4C+0x118>
    1cb4:	920d0185 	lbu	t5,389(s0)
    1cb8:	c4260000 	lwc1	$f6,0(at)
    1cbc:	02002025 	move	a0,s0
    1cc0:	46060200 	add.s	$f8,$f0,$f6
    1cc4:	e6080050 	swc1	$f8,80(s0)
    1cc8:	0c000000 	jal	0 <func_80970F50>
    1ccc:	8e050050 	lw	a1,80(s0)
    1cd0:	1000000f 	b	1d10 <func_80972B4C+0x114>
    1cd4:	86020188 	lh	v0,392(s0)
    1cd8:	c6000050 	lwc1	$f0,80(s0)
    1cdc:	c42a0000 	lwc1	$f10,0(at)
    1ce0:	3c010000 	lui	at,0x0
    1ce4:	460a003c 	c.lt.s	$f0,$f10
    1ce8:	00000000 	nop
    1cec:	45020009 	bc1fl	1d14 <func_80972B4C+0x118>
    1cf0:	920d0185 	lbu	t5,389(s0)
    1cf4:	c4300000 	lwc1	$f16,0(at)
    1cf8:	02002025 	move	a0,s0
    1cfc:	46100480 	add.s	$f18,$f0,$f16
    1d00:	e6120050 	swc1	$f18,80(s0)
    1d04:	0c000000 	jal	0 <func_80970F50>
    1d08:	8e050050 	lw	a1,80(s0)
    1d0c:	86020188 	lh	v0,392(s0)
    1d10:	920d0185 	lbu	t5,389(s0)
    1d14:	244c0006 	addiu	t4,v0,6
    1d18:	a60c0188 	sh	t4,392(s0)
    1d1c:	25ae0001 	addiu	t6,t5,1
    1d20:	1000000d 	b	1d58 <func_80972B4C+0x15c>
    1d24:	a20e0185 	sb	t6,389(s0)
    1d28:	3c010000 	lui	at,0x0
    1d2c:	c4200000 	lwc1	$f0,0(at)
    1d30:	3c010000 	lui	at,0x0
    1d34:	c4240000 	lwc1	$f4,0(at)
    1d38:	44060000 	mfc1	a2,$f0
    1d3c:	44070000 	mfc1	a3,$f0
    1d40:	24050000 	li	a1,0
    1d44:	0c000000 	jal	0 <func_80970F50>
    1d48:	e7a40010 	swc1	$f4,16(sp)
    1d4c:	02002025 	move	a0,s0
    1d50:	0c000000 	jal	0 <func_80970F50>
    1d54:	8e050050 	lw	a1,80(s0)
    1d58:	862200a4 	lh	v0,164(s1)
    1d5c:	24010055 	li	at,85
    1d60:	3c0f0000 	lui	t7,0x0
    1d64:	5441000e 	bnel	v0,at,1da0 <func_80972B4C+0x1a4>
    1d68:	24010060 	li	at,96
    1d6c:	8def1360 	lw	t7,4960(t7)
    1d70:	24010006 	li	at,6
    1d74:	55e1000a 	bnel	t7,at,1da0 <func_80972B4C+0x1a4>
    1d78:	24010060 	li	at,96
    1d7c:	96381d74 	lhu	t8,7540(s1)
    1d80:	240100c5 	li	at,197
    1d84:	02002025 	move	a0,s0
    1d88:	57010005 	bnel	t8,at,1da0 <func_80972B4C+0x1a4>
    1d8c:	24010060 	li	at,96
    1d90:	0c000000 	jal	0 <func_80970F50>
    1d94:	24052846 	li	a1,10310
    1d98:	862200a4 	lh	v0,164(s1)
    1d9c:	24010060 	li	at,96
    1da0:	14410014 	bne	v0,at,1df4 <func_80972B4C+0x1f8>
    1da4:	3c190000 	lui	t9,0x0
    1da8:	8f391360 	lw	t9,4960(t9)
    1dac:	24010005 	li	at,5
    1db0:	02002025 	move	a0,s0
    1db4:	1721000f 	bne	t9,at,1df4 <func_80972B4C+0x1f8>
    1db8:	02202825 	move	a1,s1
    1dbc:	0c000000 	jal	0 <func_80970F50>
    1dc0:	24060001 	li	a2,1
    1dc4:	14400003 	bnez	v0,1dd4 <func_80972B4C+0x1d8>
    1dc8:	02002025 	move	a0,s0
    1dcc:	0c000000 	jal	0 <func_80970F50>
    1dd0:	24052047 	li	a1,8263
    1dd4:	96281d74 	lhu	t0,7540(s1)
    1dd8:	24010280 	li	at,640
    1ddc:	02002025 	move	a0,s0
    1de0:	55010004 	bnel	t0,at,1df4 <func_80972B4C+0x1f8>
    1de4:	862200a4 	lh	v0,164(s1)
    1de8:	0c000000 	jal	0 <func_80970F50>
    1dec:	24052846 	li	a1,10310
    1df0:	862200a4 	lh	v0,164(s1)
    1df4:	24010059 	li	at,89
    1df8:	14410014 	bne	v0,at,1e4c <func_80972B4C+0x250>
    1dfc:	3c090000 	lui	t1,0x0
    1e00:	8d291360 	lw	t1,4960(t1)
    1e04:	24010004 	li	at,4
    1e08:	02002025 	move	a0,s0
    1e0c:	1521000f 	bne	t1,at,1e4c <func_80972B4C+0x250>
    1e10:	02202825 	move	a1,s1
    1e14:	0c000000 	jal	0 <func_80970F50>
    1e18:	24060001 	li	a2,1
    1e1c:	14400003 	bnez	v0,1e2c <func_80972B4C+0x230>
    1e20:	02002025 	move	a0,s0
    1e24:	0c000000 	jal	0 <func_80970F50>
    1e28:	24052047 	li	a1,8263
    1e2c:	962a1d74 	lhu	t2,7540(s1)
    1e30:	24010288 	li	at,648
    1e34:	02002025 	move	a0,s0
    1e38:	55410004 	bnel	t2,at,1e4c <func_80972B4C+0x250>
    1e3c:	862200a4 	lh	v0,164(s1)
    1e40:	0c000000 	jal	0 <func_80970F50>
    1e44:	24052846 	li	a1,10310
    1e48:	862200a4 	lh	v0,164(s1)
    1e4c:	24010043 	li	at,67
    1e50:	14410011 	bne	v0,at,1e98 <func_80972B4C+0x29c>
    1e54:	3c0b0000 	lui	t3,0x0
    1e58:	8d6b1360 	lw	t3,4960(t3)
    1e5c:	2401000e 	li	at,14
    1e60:	5561000e 	bnel	t3,at,1e9c <func_80972B4C+0x2a0>
    1e64:	2401003b 	li	at,59
    1e68:	860c018c 	lh	t4,396(s0)
    1e6c:	24010002 	li	at,2
    1e70:	02002025 	move	a0,s0
    1e74:	000c6880 	sll	t5,t4,0x2
    1e78:	022d7021 	addu	t6,s1,t5
    1e7c:	8dcf1d8c 	lw	t7,7564(t6)
    1e80:	95e30000 	lhu	v1,0(t7)
    1e84:	54610005 	bnel	v1,at,1e9c <func_80972B4C+0x2a0>
    1e88:	2401003b 	li	at,59
    1e8c:	0c000000 	jal	0 <func_80970F50>
    1e90:	24052047 	li	a1,8263
    1e94:	862200a4 	lh	v0,164(s1)
    1e98:	2401003b 	li	at,59
    1e9c:	10410003 	beq	v0,at,1eac <func_80972B4C+0x2b0>
    1ea0:	2401003d 	li	at,61
    1ea4:	5441000d 	bnel	v0,at,1edc <func_80972B4C+0x2e0>
    1ea8:	8fbf0024 	lw	ra,36(sp)
    1eac:	8618018c 	lh	t8,396(s0)
    1eb0:	24010002 	li	at,2
    1eb4:	02002025 	move	a0,s0
    1eb8:	0018c880 	sll	t9,t8,0x2
    1ebc:	02394021 	addu	t0,s1,t9
    1ec0:	8d091d8c 	lw	t1,7564(t0)
    1ec4:	952a0000 	lhu	t2,0(t1)
    1ec8:	55410004 	bnel	t2,at,1edc <func_80972B4C+0x2e0>
    1ecc:	8fbf0024 	lw	ra,36(sp)
    1ed0:	0c000000 	jal	0 <func_80970F50>
    1ed4:	24052047 	li	a1,8263
    1ed8:	8fbf0024 	lw	ra,36(sp)
    1edc:	8fb0001c 	lw	s0,28(sp)
    1ee0:	8fb10020 	lw	s1,32(sp)
    1ee4:	03e00008 	jr	ra
    1ee8:	27bd0030 	addiu	sp,sp,48

00001eec <func_80972E3C>:
    1eec:	27bdffe8 	addiu	sp,sp,-24
    1ef0:	afbf0014 	sw	ra,20(sp)
    1ef4:	afa5001c 	sw	a1,28(sp)
    1ef8:	90820184 	lbu	v0,388(a0)
    1efc:	28410004 	slti	at,v0,4
    1f00:	1420000f 	bnez	at,1f40 <func_80972E3C+0x54>
    1f04:	3c010000 	lui	at,0x0
    1f08:	c4200000 	lwc1	$f0,0(at)
    1f0c:	c4840050 	lwc1	$f4,80(a0)
    1f10:	c4880054 	lwc1	$f8,84(a0)
    1f14:	c4900058 	lwc1	$f16,88(a0)
    1f18:	46002182 	mul.s	$f6,$f4,$f0
    1f1c:	244efffd 	addiu	t6,v0,-3
    1f20:	a08e0184 	sb	t6,388(a0)
    1f24:	46004282 	mul.s	$f10,$f8,$f0
    1f28:	00000000 	nop
    1f2c:	46008482 	mul.s	$f18,$f16,$f0
    1f30:	e4860050 	swc1	$f6,80(a0)
    1f34:	e48a0054 	swc1	$f10,84(a0)
    1f38:	10000003 	b	1f48 <func_80972E3C+0x5c>
    1f3c:	e4920058 	swc1	$f18,88(a0)
    1f40:	0c000000 	jal	0 <func_80970F50>
    1f44:	00000000 	nop
    1f48:	8fbf0014 	lw	ra,20(sp)
    1f4c:	27bd0018 	addiu	sp,sp,24
    1f50:	03e00008 	jr	ra
    1f54:	00000000 	nop

00001f58 <func_80972EA8>:
    1f58:	27bdffc0 	addiu	sp,sp,-64
    1f5c:	afbf003c 	sw	ra,60(sp)
    1f60:	afb10038 	sw	s1,56(sp)
    1f64:	afb00034 	sw	s0,52(sp)
    1f68:	90ae1d6c 	lbu	t6,7532(a1)
    1f6c:	00a08025 	move	s0,a1
    1f70:	00808825 	move	s1,a0
    1f74:	51c00059 	beqzl	t6,20dc <func_80972EA8+0x184>
    1f78:	8fbf003c 	lw	ra,60(sp)
    1f7c:	8486018c 	lh	a2,396(a0)
    1f80:	00067880 	sll	t7,a2,0x2
    1f84:	00afc021 	addu	t8,a1,t7
    1f88:	8f191d8c 	lw	t9,7564(t8)
    1f8c:	53200053 	beqzl	t9,20dc <func_80972EA8+0x184>
    1f90:	8fbf003c 	lw	ra,60(sp)
    1f94:	0c000000 	jal	0 <func_80970F50>
    1f98:	24070001 	li	a3,1
    1f9c:	8628018c 	lh	t0,396(s1)
    1fa0:	24010003 	li	at,3
    1fa4:	26041c24 	addiu	a0,s0,7204
    1fa8:	00084880 	sll	t1,t0,0x2
    1fac:	02095021 	addu	t2,s0,t1
    1fb0:	8d4b1d8c 	lw	t3,7564(t2)
    1fb4:	956c0000 	lhu	t4,0(t3)
    1fb8:	15810018 	bne	t4,at,201c <func_80972EA8+0xc4>
    1fbc:	00000000 	nop
    1fc0:	c6240024 	lwc1	$f4,36(s1)
    1fc4:	240d0001 	li	t5,1
    1fc8:	02202825 	move	a1,s1
    1fcc:	e7a40010 	swc1	$f4,16(sp)
    1fd0:	c6260028 	lwc1	$f6,40(s1)
    1fd4:	02003025 	move	a2,s0
    1fd8:	2407008b 	li	a3,139
    1fdc:	e7a60014 	swc1	$f6,20(sp)
    1fe0:	c628002c 	lwc1	$f8,44(s1)
    1fe4:	afad0028 	sw	t5,40(sp)
    1fe8:	afa00024 	sw	zero,36(sp)
    1fec:	afa00020 	sw	zero,32(sp)
    1ff0:	afa0001c 	sw	zero,28(sp)
    1ff4:	0c000000 	jal	0 <func_80970F50>
    1ff8:	e7a80018 	swc1	$f8,24(sp)
    1ffc:	10400007 	beqz	v0,201c <func_80972EA8+0xc4>
    2000:	00402025 	move	a0,v0
    2004:	3c0e0000 	lui	t6,0x0
    2008:	25ce0000 	addiu	t6,t6,0
    200c:	3c053ca3 	lui	a1,0x3ca3
    2010:	ac4e0194 	sw	t6,404(v0)
    2014:	0c000000 	jal	0 <func_80970F50>
    2018:	34a5d70a 	ori	a1,a1,0xd70a
    201c:	3c030000 	lui	v1,0x0
    2020:	24630000 	addiu	v1,v1,0
    2024:	8c6f0000 	lw	t7,0(v1)
    2028:	240100a0 	li	at,160
    202c:	55e1002b 	bnel	t7,at,20dc <func_80972EA8+0x184>
    2030:	8fbf003c 	lw	ra,60(sp)
    2034:	8c621360 	lw	v0,4960(v1)
    2038:	24010004 	li	at,4
    203c:	10410007 	beq	v0,at,205c <func_80972EA8+0x104>
    2040:	24010006 	li	at,6
    2044:	10410014 	beq	v0,at,2098 <func_80972EA8+0x140>
    2048:	2401000b 	li	at,11
    204c:	5041001c 	beql	v0,at,20c0 <func_80972EA8+0x168>
    2050:	96191d74 	lhu	t9,7540(s0)
    2054:	10000021 	b	20dc <func_80972EA8+0x184>
    2058:	8fbf003c 	lw	ra,60(sp)
    205c:	96021d74 	lhu	v0,7540(s0)
    2060:	24010120 	li	at,288
    2064:	02202025 	move	a0,s1
    2068:	54410005 	bnel	v0,at,2080 <func_80972EA8+0x128>
    206c:	2401027b 	li	at,635
    2070:	0c000000 	jal	0 <func_80970F50>
    2074:	24051840 	li	a1,6208
    2078:	96021d74 	lhu	v0,7540(s0)
    207c:	2401027b 	li	at,635
    2080:	14410015 	bne	v0,at,20d8 <func_80972EA8+0x180>
    2084:	02202025 	move	a0,s1
    2088:	0c000000 	jal	0 <func_80970F50>
    208c:	24051840 	li	a1,6208
    2090:	10000012 	b	20dc <func_80972EA8+0x184>
    2094:	8fbf003c 	lw	ra,60(sp)
    2098:	96181d74 	lhu	t8,7540(s0)
    209c:	24010037 	li	at,55
    20a0:	02202025 	move	a0,s1
    20a4:	5701000d 	bnel	t8,at,20dc <func_80972EA8+0x184>
    20a8:	8fbf003c 	lw	ra,60(sp)
    20ac:	0c000000 	jal	0 <func_80970F50>
    20b0:	24051841 	li	a1,6209
    20b4:	10000009 	b	20dc <func_80972EA8+0x184>
    20b8:	8fbf003c 	lw	ra,60(sp)
    20bc:	96191d74 	lhu	t9,7540(s0)
    20c0:	2401015e 	li	at,350
    20c4:	02202025 	move	a0,s1
    20c8:	57210004 	bnel	t9,at,20dc <func_80972EA8+0x184>
    20cc:	8fbf003c 	lw	ra,60(sp)
    20d0:	0c000000 	jal	0 <func_80970F50>
    20d4:	24051841 	li	a1,6209
    20d8:	8fbf003c 	lw	ra,60(sp)
    20dc:	8fb00034 	lw	s0,52(sp)
    20e0:	8fb10038 	lw	s1,56(sp)
    20e4:	03e00008 	jr	ra
    20e8:	27bd0040 	addiu	sp,sp,64

000020ec <func_8097303C>:
    20ec:	27bdffc8 	addiu	sp,sp,-56
    20f0:	afbf0034 	sw	ra,52(sp)
    20f4:	afb10030 	sw	s1,48(sp)
    20f8:	afb0002c 	sw	s0,44(sp)
    20fc:	90ae1d6c 	lbu	t6,7532(a1)
    2100:	00808025 	move	s0,a0
    2104:	00a08825 	move	s1,a1
    2108:	51c00070 	beqzl	t6,22cc <func_8097303C+0x1e0>
    210c:	8fbf0034 	lw	ra,52(sp)
    2110:	8486018c 	lh	a2,396(a0)
    2114:	00067880 	sll	t7,a2,0x2
    2118:	00afc021 	addu	t8,a1,t7
    211c:	8f191d8c 	lw	t9,7564(t8)
    2120:	5320006a 	beqzl	t9,22cc <func_8097303C+0x1e0>
    2124:	8fbf0034 	lw	ra,52(sp)
    2128:	0c000000 	jal	0 <func_80970F50>
    212c:	24070001 	li	a3,1
    2130:	8608018c 	lh	t0,396(s0)
    2134:	24010003 	li	at,3
    2138:	00084880 	sll	t1,t0,0x2
    213c:	02295021 	addu	t2,s1,t1
    2140:	8d4b1d8c 	lw	t3,7564(t2)
    2144:	956c0000 	lhu	t4,0(t3)
    2148:	1581001e 	bne	t4,at,21c4 <func_8097303C+0xd8>
    214c:	00000000 	nop
    2150:	86020188 	lh	v0,392(s0)
    2154:	10400003 	beqz	v0,2164 <func_8097303C+0x78>
    2158:	244dffff 	addiu	t5,v0,-1
    215c:	10000019 	b	21c4 <func_8097303C+0xd8>
    2160:	a60d0188 	sh	t5,392(s0)
    2164:	920e0185 	lbu	t6,389(s0)
    2168:	c6040028 	lwc1	$f4,40(s0)
    216c:	8e070024 	lw	a3,36(s0)
    2170:	a60e0188 	sh	t6,392(s0)
    2174:	e7a40010 	swc1	$f4,16(sp)
    2178:	c606002c 	lwc1	$f6,44(s0)
    217c:	24090007 	li	t1,7
    2180:	26241c24 	addiu	a0,s1,7204
    2184:	e7a60014 	swc1	$f6,20(sp)
    2188:	860f0030 	lh	t7,48(s0)
    218c:	02202825 	move	a1,s1
    2190:	2406008b 	li	a2,139
    2194:	25f84000 	addiu	t8,t7,16384
    2198:	afb80018 	sw	t8,24(sp)
    219c:	86190032 	lh	t9,50(s0)
    21a0:	afb9001c 	sw	t9,28(sp)
    21a4:	86080034 	lh	t0,52(s0)
    21a8:	afa90024 	sw	t1,36(sp)
    21ac:	0c000000 	jal	0 <func_80970F50>
    21b0:	afa80020 	sw	t0,32(sp)
    21b4:	10400003 	beqz	v0,21c4 <func_8097303C+0xd8>
    21b8:	00402025 	move	a0,v0
    21bc:	0c000000 	jal	0 <func_80970F50>
    21c0:	3c053f80 	lui	a1,0x3f80
    21c4:	3c030000 	lui	v1,0x0
    21c8:	8c630000 	lw	v1,0(v1)
    21cc:	240100a0 	li	at,160
    21d0:	3c020000 	lui	v0,0x0
    21d4:	54610029 	bnel	v1,at,227c <func_8097303C+0x190>
    21d8:	2401013d 	li	at,317
    21dc:	8c421360 	lw	v0,4960(v0)
    21e0:	24010004 	li	at,4
    21e4:	10410007 	beq	v0,at,2204 <func_8097303C+0x118>
    21e8:	24010006 	li	at,6
    21ec:	1041000f 	beq	v0,at,222c <func_8097303C+0x140>
    21f0:	2401000b 	li	at,11
    21f4:	50410018 	beql	v0,at,2258 <func_8097303C+0x16c>
    21f8:	962c1d74 	lhu	t4,7540(s1)
    21fc:	1000001f 	b	227c <func_8097303C+0x190>
    2200:	2401013d 	li	at,317
    2204:	962a1d74 	lhu	t2,7540(s1)
    2208:	2401012a 	li	at,298
    220c:	02002025 	move	a0,s0
    2210:	5541001a 	bnel	t2,at,227c <func_8097303C+0x190>
    2214:	2401013d 	li	at,317
    2218:	0c000000 	jal	0 <func_80970F50>
    221c:	24051840 	li	a1,6208
    2220:	3c030000 	lui	v1,0x0
    2224:	10000014 	b	2278 <func_8097303C+0x18c>
    2228:	8c630000 	lw	v1,0(v1)
    222c:	962b1d74 	lhu	t3,7540(s1)
    2230:	24010069 	li	at,105
    2234:	02002025 	move	a0,s0
    2238:	55610010 	bnel	t3,at,227c <func_8097303C+0x190>
    223c:	2401013d 	li	at,317
    2240:	0c000000 	jal	0 <func_80970F50>
    2244:	24051841 	li	a1,6209
    2248:	3c030000 	lui	v1,0x0
    224c:	1000000a 	b	2278 <func_8097303C+0x18c>
    2250:	8c630000 	lw	v1,0(v1)
    2254:	962c1d74 	lhu	t4,7540(s1)
    2258:	24010168 	li	at,360
    225c:	02002025 	move	a0,s0
    2260:	55810006 	bnel	t4,at,227c <func_8097303C+0x190>
    2264:	2401013d 	li	at,317
    2268:	0c000000 	jal	0 <func_80970F50>
    226c:	24051841 	li	a1,6209
    2270:	3c030000 	lui	v1,0x0
    2274:	8c630000 	lw	v1,0(v1)
    2278:	2401013d 	li	at,317
    227c:	14610012 	bne	v1,at,22c8 <func_8097303C+0x1dc>
    2280:	3c0d0000 	lui	t5,0x0
    2284:	8dad1360 	lw	t5,4960(t5)
    2288:	24010004 	li	at,4
    228c:	55a1000f 	bnel	t5,at,22cc <func_8097303C+0x1e0>
    2290:	8fbf0034 	lw	ra,52(sp)
    2294:	96221d74 	lhu	v0,7540(s1)
    2298:	24010048 	li	at,72
    229c:	02002025 	move	a0,s0
    22a0:	54410005 	bnel	v0,at,22b8 <func_8097303C+0x1cc>
    22a4:	24010050 	li	at,80
    22a8:	0c000000 	jal	0 <func_80970F50>
    22ac:	24051841 	li	a1,6209
    22b0:	96221d74 	lhu	v0,7540(s1)
    22b4:	24010050 	li	at,80
    22b8:	54410004 	bnel	v0,at,22cc <func_8097303C+0x1e0>
    22bc:	8fbf0034 	lw	ra,52(sp)
    22c0:	0c000000 	jal	0 <func_80970F50>
    22c4:	24040004 	li	a0,4
    22c8:	8fbf0034 	lw	ra,52(sp)
    22cc:	8fb0002c 	lw	s0,44(sp)
    22d0:	8fb10030 	lw	s1,48(sp)
    22d4:	03e00008 	jr	ra
    22d8:	27bd0038 	addiu	sp,sp,56

000022dc <func_8097322C>:
    22dc:	27bdffc0 	addiu	sp,sp,-64
    22e0:	afbf003c 	sw	ra,60(sp)
    22e4:	afb10038 	sw	s1,56(sp)
    22e8:	afb00034 	sw	s0,52(sp)
    22ec:	90ae1d6c 	lbu	t6,7532(a1)
    22f0:	00808025 	move	s0,a0
    22f4:	00a08825 	move	s1,a1
    22f8:	51c0005b 	beqzl	t6,2468 <func_8097322C+0x18c>
    22fc:	8fbf003c 	lw	ra,60(sp)
    2300:	8486018c 	lh	a2,396(a0)
    2304:	00067880 	sll	t7,a2,0x2
    2308:	00afc021 	addu	t8,a1,t7
    230c:	8f191d8c 	lw	t9,7564(t8)
    2310:	53200055 	beqzl	t9,2468 <func_8097322C+0x18c>
    2314:	8fbf003c 	lw	ra,60(sp)
    2318:	0c000000 	jal	0 <func_80970F50>
    231c:	24070001 	li	a3,1
    2320:	8608018c 	lh	t0,396(s0)
    2324:	24010003 	li	at,3
    2328:	00084880 	sll	t1,t0,0x2
    232c:	02295021 	addu	t2,s1,t1
    2330:	8d4b1d8c 	lw	t3,7564(t2)
    2334:	956c0000 	lhu	t4,0(t3)
    2338:	15810021 	bne	t4,at,23c0 <func_8097322C+0xe4>
    233c:	00000000 	nop
    2340:	c6040024 	lwc1	$f4,36(s0)
    2344:	3c014316 	lui	at,0x4316
    2348:	44814000 	mtc1	at,$f8
    234c:	e7a40010 	swc1	$f4,16(sp)
    2350:	c6060028 	lwc1	$f6,40(s0)
    2354:	240d0003 	li	t5,3
    2358:	26241c24 	addiu	a0,s1,7204
    235c:	46083281 	sub.s	$f10,$f6,$f8
    2360:	02002825 	move	a1,s0
    2364:	02203025 	move	a2,s1
    2368:	2407008b 	li	a3,139
    236c:	e7aa0014 	swc1	$f10,20(sp)
    2370:	c610002c 	lwc1	$f16,44(s0)
    2374:	afad0028 	sw	t5,40(sp)
    2378:	afa00024 	sw	zero,36(sp)
    237c:	afa00020 	sw	zero,32(sp)
    2380:	afa0001c 	sw	zero,28(sp)
    2384:	0c000000 	jal	0 <func_80970F50>
    2388:	e7b00018 	swc1	$f16,24(sp)
    238c:	10400008 	beqz	v0,23b0 <func_8097322C+0xd4>
    2390:	02002025 	move	a0,s0
    2394:	3c010000 	lui	at,0x0
    2398:	c4200000 	lwc1	$f0,0(at)
    239c:	3c010000 	lui	at,0x0
    23a0:	e4400050 	swc1	$f0,80(v0)
    23a4:	c4320000 	lwc1	$f18,0(at)
    23a8:	e4400058 	swc1	$f0,88(v0)
    23ac:	e4520054 	swc1	$f18,84(v0)
    23b0:	0c000000 	jal	0 <func_80970F50>
    23b4:	24051841 	li	a1,6209
    23b8:	0c000000 	jal	0 <func_80970F50>
    23bc:	24040003 	li	a0,3
    23c0:	3c030000 	lui	v1,0x0
    23c4:	24630000 	addiu	v1,v1,0
    23c8:	8c6e0000 	lw	t6,0(v1)
    23cc:	240100a0 	li	at,160
    23d0:	55c10025 	bnel	t6,at,2468 <func_8097322C+0x18c>
    23d4:	8fbf003c 	lw	ra,60(sp)
    23d8:	8c621360 	lw	v0,4960(v1)
    23dc:	24010004 	li	at,4
    23e0:	10410007 	beq	v0,at,2400 <func_8097322C+0x124>
    23e4:	24010006 	li	at,6
    23e8:	1041000e 	beq	v0,at,2424 <func_8097322C+0x148>
    23ec:	2401000b 	li	at,11
    23f0:	50410016 	beql	v0,at,244c <func_8097322C+0x170>
    23f4:	96391d74 	lhu	t9,7540(s1)
    23f8:	1000001b 	b	2468 <func_8097322C+0x18c>
    23fc:	8fbf003c 	lw	ra,60(sp)
    2400:	962f1d74 	lhu	t7,7540(s1)
    2404:	2401013b 	li	at,315
    2408:	02002025 	move	a0,s0
    240c:	55e10016 	bnel	t7,at,2468 <func_8097322C+0x18c>
    2410:	8fbf003c 	lw	ra,60(sp)
    2414:	0c000000 	jal	0 <func_80970F50>
    2418:	24051840 	li	a1,6208
    241c:	10000012 	b	2468 <func_8097322C+0x18c>
    2420:	8fbf003c 	lw	ra,60(sp)
    2424:	96381d74 	lhu	t8,7540(s1)
    2428:	24010050 	li	at,80
    242c:	02002025 	move	a0,s0
    2430:	5701000d 	bnel	t8,at,2468 <func_8097322C+0x18c>
    2434:	8fbf003c 	lw	ra,60(sp)
    2438:	0c000000 	jal	0 <func_80970F50>
    243c:	24051841 	li	a1,6209
    2440:	10000009 	b	2468 <func_8097322C+0x18c>
    2444:	8fbf003c 	lw	ra,60(sp)
    2448:	96391d74 	lhu	t9,7540(s1)
    244c:	24010172 	li	at,370
    2450:	02002025 	move	a0,s0
    2454:	57210004 	bnel	t9,at,2468 <func_8097322C+0x18c>
    2458:	8fbf003c 	lw	ra,60(sp)
    245c:	0c000000 	jal	0 <func_80970F50>
    2460:	24051841 	li	a1,6209
    2464:	8fbf003c 	lw	ra,60(sp)
    2468:	8fb00034 	lw	s0,52(sp)
    246c:	8fb10038 	lw	s1,56(sp)
    2470:	03e00008 	jr	ra
    2474:	27bd0040 	addiu	sp,sp,64

00002478 <func_809733C8>:
    2478:	afa40000 	sw	a0,0(sp)
    247c:	afa50004 	sw	a1,4(sp)
    2480:	afa60008 	sw	a2,8(sp)
    2484:	c4e00024 	lwc1	$f0,36(a3)
    2488:	c7a40000 	lwc1	$f4,0(sp)
    248c:	c7ac0010 	lwc1	$f12,16(sp)
    2490:	c4e20028 	lwc1	$f2,40(a3)
    2494:	46002181 	sub.s	$f6,$f4,$f0
    2498:	c4ee002c 	lwc1	$f14,44(a3)
    249c:	460c3202 	mul.s	$f8,$f6,$f12
    24a0:	46080280 	add.s	$f10,$f0,$f8
    24a4:	e4ea0024 	swc1	$f10,36(a3)
    24a8:	c7b00004 	lwc1	$f16,4(sp)
    24ac:	46028481 	sub.s	$f18,$f16,$f2
    24b0:	460c9102 	mul.s	$f4,$f18,$f12
    24b4:	46041180 	add.s	$f6,$f2,$f4
    24b8:	e4e60028 	swc1	$f6,40(a3)
    24bc:	c7a80008 	lwc1	$f8,8(sp)
    24c0:	460e4281 	sub.s	$f10,$f8,$f14
    24c4:	460c5402 	mul.s	$f16,$f10,$f12
    24c8:	46107480 	add.s	$f18,$f14,$f16
    24cc:	03e00008 	jr	ra
    24d0:	e4f2002c 	swc1	$f18,44(a3)

000024d4 <func_80973424>:
    24d4:	90820184 	lbu	v0,388(a0)
    24d8:	24010013 	li	at,19
    24dc:	240300ff 	li	v1,255
    24e0:	10410009 	beq	v0,at,2508 <func_80973424+0x34>
    24e4:	24050096 	li	a1,150
    24e8:	24010014 	li	at,20
    24ec:	10410016 	beq	v0,at,2548 <func_80973424+0x74>
    24f0:	240300ff 	li	v1,255
    24f4:	24010015 	li	at,21
    24f8:	10410024 	beq	v0,at,258c <func_80973424+0xb8>
    24fc:	240300ff 	li	v1,255
    2500:	03e00008 	jr	ra
    2504:	00000000 	nop
    2508:	240600aa 	li	a2,170
    250c:	240e00a0 	li	t6,160
    2510:	240f0078 	li	t7,120
    2514:	a08e017a 	sb	t6,378(a0)
    2518:	a0830178 	sb	v1,376(a0)
    251c:	a0830179 	sb	v1,377(a0)
    2520:	a080017b 	sb	zero,379(a0)
    2524:	a083017c 	sb	v1,380(a0)
    2528:	a080017d 	sb	zero,381(a0)
    252c:	a0860180 	sb	a2,384(a0)
    2530:	a083017e 	sb	v1,382(a0)
    2534:	a083017f 	sb	v1,383(a0)
    2538:	a08f0182 	sb	t7,386(a0)
    253c:	a0850181 	sb	a1,385(a0)
    2540:	03e00008 	jr	ra
    2544:	a0800183 	sb	zero,387(a0)
    2548:	24050096 	li	a1,150
    254c:	240600aa 	li	a2,170
    2550:	24180064 	li	t8,100
    2554:	24190078 	li	t9,120
    2558:	a0860179 	sb	a2,377(a0)
    255c:	a0830178 	sb	v1,376(a0)
    2560:	a083017a 	sb	v1,378(a0)
    2564:	a098017d 	sb	t8,381(a0)
    2568:	a083017b 	sb	v1,379(a0)
    256c:	a080017c 	sb	zero,380(a0)
    2570:	a0860180 	sb	a2,384(a0)
    2574:	a083017e 	sb	v1,382(a0)
    2578:	a083017f 	sb	v1,383(a0)
    257c:	a0990182 	sb	t9,386(a0)
    2580:	a0850181 	sb	a1,385(a0)
    2584:	03e00008 	jr	ra
    2588:	a0800183 	sb	zero,387(a0)
    258c:	24020032 	li	v0,50
    2590:	24050096 	li	a1,150
    2594:	240600aa 	li	a2,170
    2598:	24080078 	li	t0,120
    259c:	a0820178 	sb	v0,376(a0)
    25a0:	a0830179 	sb	v1,377(a0)
    25a4:	a083017a 	sb	v1,378(a0)
    25a8:	a085017d 	sb	a1,381(a0)
    25ac:	a082017b 	sb	v0,379(a0)
    25b0:	a080017c 	sb	zero,380(a0)
    25b4:	a0860180 	sb	a2,384(a0)
    25b8:	a083017e 	sb	v1,382(a0)
    25bc:	a083017f 	sb	v1,383(a0)
    25c0:	a0880182 	sb	t0,386(a0)
    25c4:	a0850181 	sb	a1,385(a0)
    25c8:	a0800183 	sb	zero,387(a0)
    25cc:	03e00008 	jr	ra
    25d0:	00000000 	nop

000025d4 <func_80973524>:
    25d4:	44856000 	mtc1	a1,$f12
    25d8:	27bdffe8 	addiu	sp,sp,-24
    25dc:	afbf0014 	sw	ra,20(sp)
    25e0:	afa40018 	sw	a0,24(sp)
    25e4:	0c000000 	jal	0 <func_80970F50>
    25e8:	e7ac001c 	swc1	$f12,28(sp)
    25ec:	8fa40018 	lw	a0,24(sp)
    25f0:	3c01437f 	lui	at,0x437f
    25f4:	44812000 	mtc1	at,$f4
    25f8:	908e0178 	lbu	t6,376(a0)
    25fc:	3c013f80 	lui	at,0x3f80
    2600:	c7ac001c 	lwc1	$f12,28(sp)
    2604:	44813000 	mtc1	at,$f6
    2608:	448e5000 	mtc1	t6,$f10
    260c:	24180001 	li	t8,1
    2610:	460c3201 	sub.s	$f8,$f6,$f12
    2614:	46805420 	cvt.s.w	$f16,$f10
    2618:	46082002 	mul.s	$f0,$f4,$f8
    261c:	00000000 	nop
    2620:	460c8482 	mul.s	$f18,$f16,$f12
    2624:	46009180 	add.s	$f6,$f18,$f0
    2628:	444ff800 	cfc1	t7,$31
    262c:	44d8f800 	ctc1	t8,$31
    2630:	00000000 	nop
    2634:	46003124 	cvt.w.s	$f4,$f6
    2638:	4458f800 	cfc1	t8,$31
    263c:	00000000 	nop
    2640:	33180078 	andi	t8,t8,0x78
    2644:	13000013 	beqz	t8,2694 <func_80973524+0xc0>
    2648:	00000000 	nop
    264c:	3c014f00 	lui	at,0x4f00
    2650:	44812000 	mtc1	at,$f4
    2654:	24180001 	li	t8,1
    2658:	46043101 	sub.s	$f4,$f6,$f4
    265c:	44d8f800 	ctc1	t8,$31
    2660:	00000000 	nop
    2664:	46002124 	cvt.w.s	$f4,$f4
    2668:	4458f800 	cfc1	t8,$31
    266c:	00000000 	nop
    2670:	33180078 	andi	t8,t8,0x78
    2674:	17000005 	bnez	t8,268c <func_80973524+0xb8>
    2678:	00000000 	nop
    267c:	44182000 	mfc1	t8,$f4
    2680:	3c018000 	lui	at,0x8000
    2684:	10000007 	b	26a4 <func_80973524+0xd0>
    2688:	0301c025 	or	t8,t8,at
    268c:	10000005 	b	26a4 <func_80973524+0xd0>
    2690:	2418ffff 	li	t8,-1
    2694:	44182000 	mfc1	t8,$f4
    2698:	00000000 	nop
    269c:	0700fffb 	bltz	t8,268c <func_80973524+0xb8>
    26a0:	00000000 	nop
    26a4:	90990179 	lbu	t9,377(a0)
    26a8:	44cff800 	ctc1	t7,$31
    26ac:	24090001 	li	t1,1
    26b0:	44994000 	mtc1	t9,$f8
    26b4:	a0980178 	sb	t8,376(a0)
    26b8:	468042a0 	cvt.s.w	$f10,$f8
    26bc:	460c5402 	mul.s	$f16,$f10,$f12
    26c0:	46008480 	add.s	$f18,$f16,$f0
    26c4:	4448f800 	cfc1	t0,$31
    26c8:	44c9f800 	ctc1	t1,$31
    26cc:	00000000 	nop
    26d0:	460091a4 	cvt.w.s	$f6,$f18
    26d4:	4449f800 	cfc1	t1,$31
    26d8:	00000000 	nop
    26dc:	31290078 	andi	t1,t1,0x78
    26e0:	11200012 	beqz	t1,272c <func_80973524+0x158>
    26e4:	3c014f00 	lui	at,0x4f00
    26e8:	44813000 	mtc1	at,$f6
    26ec:	24090001 	li	t1,1
    26f0:	46069181 	sub.s	$f6,$f18,$f6
    26f4:	44c9f800 	ctc1	t1,$31
    26f8:	00000000 	nop
    26fc:	460031a4 	cvt.w.s	$f6,$f6
    2700:	4449f800 	cfc1	t1,$31
    2704:	00000000 	nop
    2708:	31290078 	andi	t1,t1,0x78
    270c:	15200005 	bnez	t1,2724 <func_80973524+0x150>
    2710:	00000000 	nop
    2714:	44093000 	mfc1	t1,$f6
    2718:	3c018000 	lui	at,0x8000
    271c:	10000007 	b	273c <func_80973524+0x168>
    2720:	01214825 	or	t1,t1,at
    2724:	10000005 	b	273c <func_80973524+0x168>
    2728:	2409ffff 	li	t1,-1
    272c:	44093000 	mfc1	t1,$f6
    2730:	00000000 	nop
    2734:	0520fffb 	bltz	t1,2724 <func_80973524+0x150>
    2738:	00000000 	nop
    273c:	908a017a 	lbu	t2,378(a0)
    2740:	44c8f800 	ctc1	t0,$31
    2744:	240c0001 	li	t4,1
    2748:	448a2000 	mtc1	t2,$f4
    274c:	a0890179 	sb	t1,377(a0)
    2750:	46802220 	cvt.s.w	$f8,$f4
    2754:	460c4282 	mul.s	$f10,$f8,$f12
    2758:	46005400 	add.s	$f16,$f10,$f0
    275c:	444bf800 	cfc1	t3,$31
    2760:	44ccf800 	ctc1	t4,$31
    2764:	00000000 	nop
    2768:	460084a4 	cvt.w.s	$f18,$f16
    276c:	444cf800 	cfc1	t4,$31
    2770:	00000000 	nop
    2774:	318c0078 	andi	t4,t4,0x78
    2778:	11800012 	beqz	t4,27c4 <func_80973524+0x1f0>
    277c:	3c014f00 	lui	at,0x4f00
    2780:	44819000 	mtc1	at,$f18
    2784:	240c0001 	li	t4,1
    2788:	46128481 	sub.s	$f18,$f16,$f18
    278c:	44ccf800 	ctc1	t4,$31
    2790:	00000000 	nop
    2794:	460094a4 	cvt.w.s	$f18,$f18
    2798:	444cf800 	cfc1	t4,$31
    279c:	00000000 	nop
    27a0:	318c0078 	andi	t4,t4,0x78
    27a4:	15800005 	bnez	t4,27bc <func_80973524+0x1e8>
    27a8:	00000000 	nop
    27ac:	440c9000 	mfc1	t4,$f18
    27b0:	3c018000 	lui	at,0x8000
    27b4:	10000007 	b	27d4 <func_80973524+0x200>
    27b8:	01816025 	or	t4,t4,at
    27bc:	10000005 	b	27d4 <func_80973524+0x200>
    27c0:	240cffff 	li	t4,-1
    27c4:	440c9000 	mfc1	t4,$f18
    27c8:	00000000 	nop
    27cc:	0580fffb 	bltz	t4,27bc <func_80973524+0x1e8>
    27d0:	00000000 	nop
    27d4:	908d017e 	lbu	t5,382(a0)
    27d8:	44cbf800 	ctc1	t3,$31
    27dc:	240f0001 	li	t7,1
    27e0:	448d3000 	mtc1	t5,$f6
    27e4:	a08c017a 	sb	t4,378(a0)
    27e8:	3c014f00 	lui	at,0x4f00
    27ec:	46803120 	cvt.s.w	$f4,$f6
    27f0:	460c2202 	mul.s	$f8,$f4,$f12
    27f4:	46004280 	add.s	$f10,$f8,$f0
    27f8:	444ef800 	cfc1	t6,$31
    27fc:	44cff800 	ctc1	t7,$31
    2800:	00000000 	nop
    2804:	46005424 	cvt.w.s	$f16,$f10
    2808:	444ff800 	cfc1	t7,$31
    280c:	00000000 	nop
    2810:	31ef0078 	andi	t7,t7,0x78
    2814:	51e00013 	beqzl	t7,2864 <func_80973524+0x290>
    2818:	440f8000 	mfc1	t7,$f16
    281c:	44818000 	mtc1	at,$f16
    2820:	240f0001 	li	t7,1
    2824:	46105401 	sub.s	$f16,$f10,$f16
    2828:	44cff800 	ctc1	t7,$31
    282c:	00000000 	nop
    2830:	46008424 	cvt.w.s	$f16,$f16
    2834:	444ff800 	cfc1	t7,$31
    2838:	00000000 	nop
    283c:	31ef0078 	andi	t7,t7,0x78
    2840:	15e00005 	bnez	t7,2858 <func_80973524+0x284>
    2844:	00000000 	nop
    2848:	440f8000 	mfc1	t7,$f16
    284c:	3c018000 	lui	at,0x8000
    2850:	10000007 	b	2870 <func_80973524+0x29c>
    2854:	01e17825 	or	t7,t7,at
    2858:	10000005 	b	2870 <func_80973524+0x29c>
    285c:	240fffff 	li	t7,-1
    2860:	440f8000 	mfc1	t7,$f16
    2864:	00000000 	nop
    2868:	05e0fffb 	bltz	t7,2858 <func_80973524+0x284>
    286c:	00000000 	nop
    2870:	9098017f 	lbu	t8,383(a0)
    2874:	44cef800 	ctc1	t6,$31
    2878:	24080001 	li	t0,1
    287c:	44989000 	mtc1	t8,$f18
    2880:	a08f017e 	sb	t7,382(a0)
    2884:	3c014f00 	lui	at,0x4f00
    2888:	468091a0 	cvt.s.w	$f6,$f18
    288c:	460c3102 	mul.s	$f4,$f6,$f12
    2890:	46002200 	add.s	$f8,$f4,$f0
    2894:	4459f800 	cfc1	t9,$31
    2898:	44c8f800 	ctc1	t0,$31
    289c:	00000000 	nop
    28a0:	460042a4 	cvt.w.s	$f10,$f8
    28a4:	4448f800 	cfc1	t0,$31
    28a8:	00000000 	nop
    28ac:	31080078 	andi	t0,t0,0x78
    28b0:	51000013 	beqzl	t0,2900 <func_80973524+0x32c>
    28b4:	44085000 	mfc1	t0,$f10
    28b8:	44815000 	mtc1	at,$f10
    28bc:	24080001 	li	t0,1
    28c0:	460a4281 	sub.s	$f10,$f8,$f10
    28c4:	44c8f800 	ctc1	t0,$31
    28c8:	00000000 	nop
    28cc:	460052a4 	cvt.w.s	$f10,$f10
    28d0:	4448f800 	cfc1	t0,$31
    28d4:	00000000 	nop
    28d8:	31080078 	andi	t0,t0,0x78
    28dc:	15000005 	bnez	t0,28f4 <func_80973524+0x320>
    28e0:	00000000 	nop
    28e4:	44085000 	mfc1	t0,$f10
    28e8:	3c018000 	lui	at,0x8000
    28ec:	10000007 	b	290c <func_80973524+0x338>
    28f0:	01014025 	or	t0,t0,at
    28f4:	10000005 	b	290c <func_80973524+0x338>
    28f8:	2408ffff 	li	t0,-1
    28fc:	44085000 	mfc1	t0,$f10
    2900:	00000000 	nop
    2904:	0500fffb 	bltz	t0,28f4 <func_80973524+0x320>
    2908:	00000000 	nop
    290c:	90890180 	lbu	t1,384(a0)
    2910:	44d9f800 	ctc1	t9,$31
    2914:	240b0001 	li	t3,1
    2918:	44898000 	mtc1	t1,$f16
    291c:	a088017f 	sb	t0,383(a0)
    2920:	3c014f00 	lui	at,0x4f00
    2924:	468084a0 	cvt.s.w	$f18,$f16
    2928:	460c9182 	mul.s	$f6,$f18,$f12
    292c:	46003100 	add.s	$f4,$f6,$f0
    2930:	444af800 	cfc1	t2,$31
    2934:	44cbf800 	ctc1	t3,$31
    2938:	00000000 	nop
    293c:	46002224 	cvt.w.s	$f8,$f4
    2940:	444bf800 	cfc1	t3,$31
    2944:	00000000 	nop
    2948:	316b0078 	andi	t3,t3,0x78
    294c:	51600013 	beqzl	t3,299c <func_80973524+0x3c8>
    2950:	440b4000 	mfc1	t3,$f8
    2954:	44814000 	mtc1	at,$f8
    2958:	240b0001 	li	t3,1
    295c:	46082201 	sub.s	$f8,$f4,$f8
    2960:	44cbf800 	ctc1	t3,$31
    2964:	00000000 	nop
    2968:	46004224 	cvt.w.s	$f8,$f8
    296c:	444bf800 	cfc1	t3,$31
    2970:	00000000 	nop
    2974:	316b0078 	andi	t3,t3,0x78
    2978:	15600005 	bnez	t3,2990 <func_80973524+0x3bc>
    297c:	00000000 	nop
    2980:	440b4000 	mfc1	t3,$f8
    2984:	3c018000 	lui	at,0x8000
    2988:	10000007 	b	29a8 <func_80973524+0x3d4>
    298c:	01615825 	or	t3,t3,at
    2990:	10000005 	b	29a8 <func_80973524+0x3d4>
    2994:	240bffff 	li	t3,-1
    2998:	440b4000 	mfc1	t3,$f8
    299c:	00000000 	nop
    29a0:	0560fffb 	bltz	t3,2990 <func_80973524+0x3bc>
    29a4:	00000000 	nop
    29a8:	908c017b 	lbu	t4,379(a0)
    29ac:	44caf800 	ctc1	t2,$31
    29b0:	240e0001 	li	t6,1
    29b4:	448c5000 	mtc1	t4,$f10
    29b8:	a08b0180 	sb	t3,384(a0)
    29bc:	3c014f00 	lui	at,0x4f00
    29c0:	46805420 	cvt.s.w	$f16,$f10
    29c4:	460c8482 	mul.s	$f18,$f16,$f12
    29c8:	444df800 	cfc1	t5,$31
    29cc:	44cef800 	ctc1	t6,$31
    29d0:	00000000 	nop
    29d4:	460091a4 	cvt.w.s	$f6,$f18
    29d8:	444ef800 	cfc1	t6,$31
    29dc:	00000000 	nop
    29e0:	31ce0078 	andi	t6,t6,0x78
    29e4:	51c00013 	beqzl	t6,2a34 <func_80973524+0x460>
    29e8:	440e3000 	mfc1	t6,$f6
    29ec:	44813000 	mtc1	at,$f6
    29f0:	240e0001 	li	t6,1
    29f4:	46069181 	sub.s	$f6,$f18,$f6
    29f8:	44cef800 	ctc1	t6,$31
    29fc:	00000000 	nop
    2a00:	460031a4 	cvt.w.s	$f6,$f6
    2a04:	444ef800 	cfc1	t6,$31
    2a08:	00000000 	nop
    2a0c:	31ce0078 	andi	t6,t6,0x78
    2a10:	15c00005 	bnez	t6,2a28 <func_80973524+0x454>
    2a14:	00000000 	nop
    2a18:	440e3000 	mfc1	t6,$f6
    2a1c:	3c018000 	lui	at,0x8000
    2a20:	10000007 	b	2a40 <func_80973524+0x46c>
    2a24:	01c17025 	or	t6,t6,at
    2a28:	10000005 	b	2a40 <func_80973524+0x46c>
    2a2c:	240effff 	li	t6,-1
    2a30:	440e3000 	mfc1	t6,$f6
    2a34:	00000000 	nop
    2a38:	05c0fffb 	bltz	t6,2a28 <func_80973524+0x454>
    2a3c:	00000000 	nop
    2a40:	908f017c 	lbu	t7,380(a0)
    2a44:	44cdf800 	ctc1	t5,$31
    2a48:	24190001 	li	t9,1
    2a4c:	448f2000 	mtc1	t7,$f4
    2a50:	a08e017b 	sb	t6,379(a0)
    2a54:	3c014f00 	lui	at,0x4f00
    2a58:	46802220 	cvt.s.w	$f8,$f4
    2a5c:	460c4282 	mul.s	$f10,$f8,$f12
    2a60:	4458f800 	cfc1	t8,$31
    2a64:	44d9f800 	ctc1	t9,$31
    2a68:	00000000 	nop
    2a6c:	46005424 	cvt.w.s	$f16,$f10
    2a70:	4459f800 	cfc1	t9,$31
    2a74:	00000000 	nop
    2a78:	33390078 	andi	t9,t9,0x78
    2a7c:	53200013 	beqzl	t9,2acc <func_80973524+0x4f8>
    2a80:	44198000 	mfc1	t9,$f16
    2a84:	44818000 	mtc1	at,$f16
    2a88:	24190001 	li	t9,1
    2a8c:	46105401 	sub.s	$f16,$f10,$f16
    2a90:	44d9f800 	ctc1	t9,$31
    2a94:	00000000 	nop
    2a98:	46008424 	cvt.w.s	$f16,$f16
    2a9c:	4459f800 	cfc1	t9,$31
    2aa0:	00000000 	nop
    2aa4:	33390078 	andi	t9,t9,0x78
    2aa8:	17200005 	bnez	t9,2ac0 <func_80973524+0x4ec>
    2aac:	00000000 	nop
    2ab0:	44198000 	mfc1	t9,$f16
    2ab4:	3c018000 	lui	at,0x8000
    2ab8:	10000007 	b	2ad8 <func_80973524+0x504>
    2abc:	0321c825 	or	t9,t9,at
    2ac0:	10000005 	b	2ad8 <func_80973524+0x504>
    2ac4:	2419ffff 	li	t9,-1
    2ac8:	44198000 	mfc1	t9,$f16
    2acc:	00000000 	nop
    2ad0:	0720fffb 	bltz	t9,2ac0 <func_80973524+0x4ec>
    2ad4:	00000000 	nop
    2ad8:	9088017d 	lbu	t0,381(a0)
    2adc:	44d8f800 	ctc1	t8,$31
    2ae0:	240a0001 	li	t2,1
    2ae4:	44889000 	mtc1	t0,$f18
    2ae8:	a099017c 	sb	t9,380(a0)
    2aec:	3c014f00 	lui	at,0x4f00
    2af0:	468091a0 	cvt.s.w	$f6,$f18
    2af4:	460c3102 	mul.s	$f4,$f6,$f12
    2af8:	4449f800 	cfc1	t1,$31
    2afc:	44caf800 	ctc1	t2,$31
    2b00:	00000000 	nop
    2b04:	46002224 	cvt.w.s	$f8,$f4
    2b08:	444af800 	cfc1	t2,$31
    2b0c:	00000000 	nop
    2b10:	314a0078 	andi	t2,t2,0x78
    2b14:	51400013 	beqzl	t2,2b64 <func_80973524+0x590>
    2b18:	440a4000 	mfc1	t2,$f8
    2b1c:	44814000 	mtc1	at,$f8
    2b20:	240a0001 	li	t2,1
    2b24:	46082201 	sub.s	$f8,$f4,$f8
    2b28:	44caf800 	ctc1	t2,$31
    2b2c:	00000000 	nop
    2b30:	46004224 	cvt.w.s	$f8,$f8
    2b34:	444af800 	cfc1	t2,$31
    2b38:	00000000 	nop
    2b3c:	314a0078 	andi	t2,t2,0x78
    2b40:	15400005 	bnez	t2,2b58 <func_80973524+0x584>
    2b44:	00000000 	nop
    2b48:	440a4000 	mfc1	t2,$f8
    2b4c:	3c018000 	lui	at,0x8000
    2b50:	10000007 	b	2b70 <func_80973524+0x59c>
    2b54:	01415025 	or	t2,t2,at
    2b58:	10000005 	b	2b70 <func_80973524+0x59c>
    2b5c:	240affff 	li	t2,-1
    2b60:	440a4000 	mfc1	t2,$f8
    2b64:	00000000 	nop
    2b68:	0540fffb 	bltz	t2,2b58 <func_80973524+0x584>
    2b6c:	00000000 	nop
    2b70:	908b0181 	lbu	t3,385(a0)
    2b74:	44c9f800 	ctc1	t1,$31
    2b78:	240d0001 	li	t5,1
    2b7c:	448b5000 	mtc1	t3,$f10
    2b80:	a08a017d 	sb	t2,381(a0)
    2b84:	3c014f00 	lui	at,0x4f00
    2b88:	46805420 	cvt.s.w	$f16,$f10
    2b8c:	460c8482 	mul.s	$f18,$f16,$f12
    2b90:	444cf800 	cfc1	t4,$31
    2b94:	44cdf800 	ctc1	t5,$31
    2b98:	00000000 	nop
    2b9c:	460091a4 	cvt.w.s	$f6,$f18
    2ba0:	444df800 	cfc1	t5,$31
    2ba4:	00000000 	nop
    2ba8:	31ad0078 	andi	t5,t5,0x78
    2bac:	51a00013 	beqzl	t5,2bfc <func_80973524+0x628>
    2bb0:	440d3000 	mfc1	t5,$f6
    2bb4:	44813000 	mtc1	at,$f6
    2bb8:	240d0001 	li	t5,1
    2bbc:	46069181 	sub.s	$f6,$f18,$f6
    2bc0:	44cdf800 	ctc1	t5,$31
    2bc4:	00000000 	nop
    2bc8:	460031a4 	cvt.w.s	$f6,$f6
    2bcc:	444df800 	cfc1	t5,$31
    2bd0:	00000000 	nop
    2bd4:	31ad0078 	andi	t5,t5,0x78
    2bd8:	15a00005 	bnez	t5,2bf0 <func_80973524+0x61c>
    2bdc:	00000000 	nop
    2be0:	440d3000 	mfc1	t5,$f6
    2be4:	3c018000 	lui	at,0x8000
    2be8:	10000007 	b	2c08 <func_80973524+0x634>
    2bec:	01a16825 	or	t5,t5,at
    2bf0:	10000005 	b	2c08 <func_80973524+0x634>
    2bf4:	240dffff 	li	t5,-1
    2bf8:	440d3000 	mfc1	t5,$f6
    2bfc:	00000000 	nop
    2c00:	05a0fffb 	bltz	t5,2bf0 <func_80973524+0x61c>
    2c04:	00000000 	nop
    2c08:	908e0182 	lbu	t6,386(a0)
    2c0c:	44ccf800 	ctc1	t4,$31
    2c10:	24180001 	li	t8,1
    2c14:	448e2000 	mtc1	t6,$f4
    2c18:	a08d0181 	sb	t5,385(a0)
    2c1c:	3c014f00 	lui	at,0x4f00
    2c20:	46802220 	cvt.s.w	$f8,$f4
    2c24:	460c4282 	mul.s	$f10,$f8,$f12
    2c28:	444ff800 	cfc1	t7,$31
    2c2c:	44d8f800 	ctc1	t8,$31
    2c30:	00000000 	nop
    2c34:	46005424 	cvt.w.s	$f16,$f10
    2c38:	4458f800 	cfc1	t8,$31
    2c3c:	00000000 	nop
    2c40:	33180078 	andi	t8,t8,0x78
    2c44:	53000013 	beqzl	t8,2c94 <func_80973524+0x6c0>
    2c48:	44188000 	mfc1	t8,$f16
    2c4c:	44818000 	mtc1	at,$f16
    2c50:	24180001 	li	t8,1
    2c54:	46105401 	sub.s	$f16,$f10,$f16
    2c58:	44d8f800 	ctc1	t8,$31
    2c5c:	00000000 	nop
    2c60:	46008424 	cvt.w.s	$f16,$f16
    2c64:	4458f800 	cfc1	t8,$31
    2c68:	00000000 	nop
    2c6c:	33180078 	andi	t8,t8,0x78
    2c70:	17000005 	bnez	t8,2c88 <func_80973524+0x6b4>
    2c74:	00000000 	nop
    2c78:	44188000 	mfc1	t8,$f16
    2c7c:	3c018000 	lui	at,0x8000
    2c80:	10000007 	b	2ca0 <func_80973524+0x6cc>
    2c84:	0301c025 	or	t8,t8,at
    2c88:	10000005 	b	2ca0 <func_80973524+0x6cc>
    2c8c:	2418ffff 	li	t8,-1
    2c90:	44188000 	mfc1	t8,$f16
    2c94:	00000000 	nop
    2c98:	0700fffb 	bltz	t8,2c88 <func_80973524+0x6b4>
    2c9c:	00000000 	nop
    2ca0:	90990183 	lbu	t9,387(a0)
    2ca4:	44cff800 	ctc1	t7,$31
    2ca8:	24090001 	li	t1,1
    2cac:	44999000 	mtc1	t9,$f18
    2cb0:	a0980182 	sb	t8,386(a0)
    2cb4:	3c014f00 	lui	at,0x4f00
    2cb8:	468091a0 	cvt.s.w	$f6,$f18
    2cbc:	460c3102 	mul.s	$f4,$f6,$f12
    2cc0:	4448f800 	cfc1	t0,$31
    2cc4:	44c9f800 	ctc1	t1,$31
    2cc8:	00000000 	nop
    2ccc:	46002224 	cvt.w.s	$f8,$f4
    2cd0:	4449f800 	cfc1	t1,$31
    2cd4:	00000000 	nop
    2cd8:	31290078 	andi	t1,t1,0x78
    2cdc:	51200013 	beqzl	t1,2d2c <func_80973524+0x758>
    2ce0:	44094000 	mfc1	t1,$f8
    2ce4:	44814000 	mtc1	at,$f8
    2ce8:	24090001 	li	t1,1
    2cec:	46082201 	sub.s	$f8,$f4,$f8
    2cf0:	44c9f800 	ctc1	t1,$31
    2cf4:	00000000 	nop
    2cf8:	46004224 	cvt.w.s	$f8,$f8
    2cfc:	4449f800 	cfc1	t1,$31
    2d00:	00000000 	nop
    2d04:	31290078 	andi	t1,t1,0x78
    2d08:	15200005 	bnez	t1,2d20 <func_80973524+0x74c>
    2d0c:	00000000 	nop
    2d10:	44094000 	mfc1	t1,$f8
    2d14:	3c018000 	lui	at,0x8000
    2d18:	10000007 	b	2d38 <func_80973524+0x764>
    2d1c:	01214825 	or	t1,t1,at
    2d20:	10000005 	b	2d38 <func_80973524+0x764>
    2d24:	2409ffff 	li	t1,-1
    2d28:	44094000 	mfc1	t1,$f8
    2d2c:	00000000 	nop
    2d30:	0520fffb 	bltz	t1,2d20 <func_80973524+0x74c>
    2d34:	00000000 	nop
    2d38:	a0890183 	sb	t1,387(a0)
    2d3c:	8fbf0014 	lw	ra,20(sp)
    2d40:	44c8f800 	ctc1	t0,$31
    2d44:	27bd0018 	addiu	sp,sp,24
    2d48:	03e00008 	jr	ra
    2d4c:	00000000 	nop

00002d50 <func_80973CA0>:
    2d50:	90a20184 	lbu	v0,388(a1)
    2d54:	24010013 	li	at,19
    2d58:	10410007 	beq	v0,at,2d78 <func_80973CA0+0x28>
    2d5c:	24010014 	li	at,20
    2d60:	10410010 	beq	v0,at,2da4 <func_80973CA0+0x54>
    2d64:	24010015 	li	at,21
    2d68:	5041000a 	beql	v0,at,2d94 <func_80973CA0+0x44>
    2d6c:	3c014220 	lui	at,0x4220
    2d70:	03e00008 	jr	ra
    2d74:	00000000 	nop
    2d78:	3c014220 	lui	at,0x4220
    2d7c:	44813000 	mtc1	at,$f6
    2d80:	c4840000 	lwc1	$f4,0(a0)
    2d84:	46062201 	sub.s	$f8,$f4,$f6
    2d88:	03e00008 	jr	ra
    2d8c:	e4880000 	swc1	$f8,0(a0)
    2d90:	3c014220 	lui	at,0x4220
    2d94:	44818000 	mtc1	at,$f16
    2d98:	c48a0000 	lwc1	$f10,0(a0)
    2d9c:	46105480 	add.s	$f18,$f10,$f16
    2da0:	e4920000 	swc1	$f18,0(a0)
    2da4:	03e00008 	jr	ra
    2da8:	00000000 	nop

00002dac <func_80973CFC>:
    2dac:	27bdffb8 	addiu	sp,sp,-72
    2db0:	afa60050 	sw	a2,80(sp)
    2db4:	c7a60050 	lwc1	$f6,80(sp)
    2db8:	c7a4005c 	lwc1	$f4,92(sp)
    2dbc:	afa70054 	sw	a3,84(sp)
    2dc0:	c7aa0054 	lwc1	$f10,84(sp)
    2dc4:	c7a80060 	lwc1	$f8,96(sp)
    2dc8:	46062081 	sub.s	$f2,$f4,$f6
    2dcc:	c7a60058 	lwc1	$f6,88(sp)
    2dd0:	c7a40064 	lwc1	$f4,100(sp)
    2dd4:	460a4401 	sub.s	$f16,$f8,$f10
    2dd8:	46021202 	mul.s	$f8,$f2,$f2
    2ddc:	f7b60020 	sdc1	$f22,32(sp)
    2de0:	46062481 	sub.s	$f18,$f4,$f6
    2de4:	46108282 	mul.s	$f10,$f16,$f16
    2de8:	e7ac0048 	swc1	$f12,72(sp)
    2dec:	3c010000 	lui	at,0x0
    2df0:	46129182 	mul.s	$f6,$f18,$f18
    2df4:	f7b40018 	sdc1	$f20,24(sp)
    2df8:	afbf002c 	sw	ra,44(sp)
    2dfc:	afb00028 	sw	s0,40(sp)
    2e00:	460a4100 	add.s	$f4,$f8,$f10
    2e04:	c42a0000 	lwc1	$f10,0(at)
    2e08:	c7a80048 	lwc1	$f8,72(sp)
    2e0c:	46062000 	add.s	$f0,$f4,$f6
    2e10:	46000004 	sqrt.s	$f0,$f0
    2e14:	460e0582 	mul.s	$f22,$f0,$f14
    2e18:	00000000 	nop
    2e1c:	460a4502 	mul.s	$f20,$f8,$f10
    2e20:	0c000000 	jal	0 <func_80970F50>
    2e24:	4600a306 	mov.s	$f12,$f20
    2e28:	c7a40068 	lwc1	$f4,104(sp)
    2e2c:	8fb00074 	lw	s0,116(sp)
    2e30:	4600a306 	mov.s	$f12,$f20
    2e34:	46040182 	mul.s	$f6,$f0,$f4
    2e38:	e6160028 	swc1	$f22,40(s0)
    2e3c:	0c000000 	jal	0 <func_80970F50>
    2e40:	e6060024 	swc1	$f6,36(s0)
    2e44:	c7a80068 	lwc1	$f8,104(sp)
    2e48:	3c010000 	lui	at,0x0
    2e4c:	c6040024 	lwc1	$f4,36(s0)
    2e50:	46080282 	mul.s	$f10,$f0,$f8
    2e54:	e60a002c 	swc1	$f10,44(s0)
    2e58:	87ae006c 	lh	t6,108(sp)
    2e5c:	c42a0000 	lwc1	$f10,0(at)
    2e60:	e7a40038 	swc1	$f4,56(sp)
    2e64:	448e3000 	mtc1	t6,$f6
    2e68:	00000000 	nop
    2e6c:	46803220 	cvt.s.w	$f8,$f6
    2e70:	460a4582 	mul.s	$f22,$f8,$f10
    2e74:	0c000000 	jal	0 <func_80970F50>
    2e78:	4600b306 	mov.s	$f12,$f22
    2e7c:	46000506 	mov.s	$f20,$f0
    2e80:	0c000000 	jal	0 <func_80970F50>
    2e84:	4600b306 	mov.s	$f12,$f22
    2e88:	c6040028 	lwc1	$f4,40(s0)
    2e8c:	c608002c 	lwc1	$f8,44(s0)
    2e90:	4600b306 	mov.s	$f12,$f22
    2e94:	46142182 	mul.s	$f6,$f4,$f20
    2e98:	00000000 	nop
    2e9c:	46080282 	mul.s	$f10,$f0,$f8
    2ea0:	460a3101 	sub.s	$f4,$f6,$f10
    2ea4:	0c000000 	jal	0 <func_80970F50>
    2ea8:	e7a40034 	swc1	$f4,52(sp)
    2eac:	46000506 	mov.s	$f20,$f0
    2eb0:	0c000000 	jal	0 <func_80970F50>
    2eb4:	4600b306 	mov.s	$f12,$f22
    2eb8:	c6080028 	lwc1	$f8,40(s0)
    2ebc:	c60a002c 	lwc1	$f10,44(s0)
    2ec0:	87af006e 	lh	t7,110(sp)
    2ec4:	46080182 	mul.s	$f6,$f0,$f8
    2ec8:	3c010000 	lui	at,0x0
    2ecc:	46145102 	mul.s	$f4,$f10,$f20
    2ed0:	448f5000 	mtc1	t7,$f10
    2ed4:	46043200 	add.s	$f8,$f6,$f4
    2ed8:	c4240000 	lwc1	$f4,0(at)
    2edc:	468051a0 	cvt.s.w	$f6,$f10
    2ee0:	e7a80030 	swc1	$f8,48(sp)
    2ee4:	46043582 	mul.s	$f22,$f6,$f4
    2ee8:	0c000000 	jal	0 <func_80970F50>
    2eec:	4600b306 	mov.s	$f12,$f22
    2ef0:	46000506 	mov.s	$f20,$f0
    2ef4:	0c000000 	jal	0 <func_80970F50>
    2ef8:	4600b306 	mov.s	$f12,$f22
    2efc:	c7a80038 	lwc1	$f8,56(sp)
    2f00:	c7a60030 	lwc1	$f6,48(sp)
    2f04:	4600b306 	mov.s	$f12,$f22
    2f08:	46144282 	mul.s	$f10,$f8,$f20
    2f0c:	00000000 	nop
    2f10:	46060102 	mul.s	$f4,$f0,$f6
    2f14:	46045201 	sub.s	$f8,$f10,$f4
    2f18:	e6080024 	swc1	$f8,36(s0)
    2f1c:	c7a60034 	lwc1	$f6,52(sp)
    2f20:	0c000000 	jal	0 <func_80970F50>
    2f24:	e6060028 	swc1	$f6,40(s0)
    2f28:	46000506 	mov.s	$f20,$f0
    2f2c:	0c000000 	jal	0 <func_80970F50>
    2f30:	4600b306 	mov.s	$f12,$f22
    2f34:	c60a0024 	lwc1	$f10,36(s0)
    2f38:	c7a40050 	lwc1	$f4,80(sp)
    2f3c:	c6060028 	lwc1	$f6,40(s0)
    2f40:	46045200 	add.s	$f8,$f10,$f4
    2f44:	e6080024 	swc1	$f8,36(s0)
    2f48:	c7aa0054 	lwc1	$f10,84(sp)
    2f4c:	460a3100 	add.s	$f4,$f6,$f10
    2f50:	e6040028 	swc1	$f4,40(s0)
    2f54:	c7a80038 	lwc1	$f8,56(sp)
    2f58:	c7aa0030 	lwc1	$f10,48(sp)
    2f5c:	46080182 	mul.s	$f6,$f0,$f8
    2f60:	00000000 	nop
    2f64:	46145102 	mul.s	$f4,$f10,$f20
    2f68:	c7aa0058 	lwc1	$f10,88(sp)
    2f6c:	46043200 	add.s	$f8,$f6,$f4
    2f70:	460a4180 	add.s	$f6,$f8,$f10
    2f74:	e606002c 	swc1	$f6,44(s0)
    2f78:	8fbf002c 	lw	ra,44(sp)
    2f7c:	8fb00028 	lw	s0,40(sp)
    2f80:	d7b60020 	ldc1	$f22,32(sp)
    2f84:	d7b40018 	ldc1	$f20,24(sp)
    2f88:	03e00008 	jr	ra
    2f8c:	27bd0048 	addiu	sp,sp,72

00002f90 <func_80973EE0>:
    2f90:	27bdff90 	addiu	sp,sp,-112
    2f94:	afbf003c 	sw	ra,60(sp)
    2f98:	afb00038 	sw	s0,56(sp)
    2f9c:	00a03025 	move	a2,a1
    2fa0:	8485018c 	lh	a1,396(a0)
    2fa4:	00808025 	move	s0,a0
    2fa8:	00c02025 	move	a0,a2
    2fac:	00057080 	sll	t6,a1,0x2
    2fb0:	00ce1021 	addu	v0,a2,t6
    2fb4:	8c4f1d8c 	lw	t7,7564(v0)
    2fb8:	8df8000c 	lw	t8,12(t7)
    2fbc:	44982000 	mtc1	t8,$f4
    2fc0:	00000000 	nop
    2fc4:	468021a0 	cvt.s.w	$f6,$f4
    2fc8:	e7a60064 	swc1	$f6,100(sp)
    2fcc:	8c591d8c 	lw	t9,7564(v0)
    2fd0:	8f280010 	lw	t0,16(t9)
    2fd4:	44884000 	mtc1	t0,$f8
    2fd8:	00000000 	nop
    2fdc:	468042a0 	cvt.s.w	$f10,$f8
    2fe0:	e7aa0068 	swc1	$f10,104(sp)
    2fe4:	8c491d8c 	lw	t1,7564(v0)
    2fe8:	8d2a0014 	lw	t2,20(t1)
    2fec:	448a9000 	mtc1	t2,$f18
    2ff0:	00000000 	nop
    2ff4:	46809120 	cvt.s.w	$f4,$f18
    2ff8:	e7a4006c 	swc1	$f4,108(sp)
    2ffc:	8c4b1d8c 	lw	t3,7564(v0)
    3000:	8d6c0018 	lw	t4,24(t3)
    3004:	448c3000 	mtc1	t4,$f6
    3008:	00000000 	nop
    300c:	46803220 	cvt.s.w	$f8,$f6
    3010:	e7a80058 	swc1	$f8,88(sp)
    3014:	8c4d1d8c 	lw	t5,7564(v0)
    3018:	8dae001c 	lw	t6,28(t5)
    301c:	448e5000 	mtc1	t6,$f10
    3020:	00000000 	nop
    3024:	468054a0 	cvt.s.w	$f18,$f10
    3028:	e7b2005c 	swc1	$f18,92(sp)
    302c:	8c4f1d8c 	lw	t7,7564(v0)
    3030:	8df80020 	lw	t8,32(t7)
    3034:	44982000 	mtc1	t8,$f4
    3038:	00000000 	nop
    303c:	468021a0 	cvt.s.w	$f6,$f4
    3040:	0c000000 	jal	0 <func_80970F50>
    3044:	e7a60060 	swc1	$f6,96(sp)
    3048:	e7a00054 	swc1	$f0,84(sp)
    304c:	92020184 	lbu	v0,388(s0)
    3050:	24010013 	li	at,19
    3054:	10410007 	beq	v0,at,3074 <func_80973EE0+0xe4>
    3058:	24010014 	li	at,20
    305c:	10410008 	beq	v0,at,3080 <func_80973EE0+0xf0>
    3060:	24010015 	li	at,21
    3064:	5041000b 	beql	v0,at,3094 <func_80973EE0+0x104>
    3068:	3c014370 	lui	at,0x4370
    306c:	1000000d 	b	30a4 <func_80973EE0+0x114>
    3070:	3c0141f0 	lui	at,0x41f0
    3074:	44804000 	mtc1	zero,$f8
    3078:	10000009 	b	30a0 <func_80973EE0+0x110>
    307c:	e7a80050 	swc1	$f8,80(sp)
    3080:	3c0142f0 	lui	at,0x42f0
    3084:	44815000 	mtc1	at,$f10
    3088:	10000005 	b	30a0 <func_80973EE0+0x110>
    308c:	e7aa0050 	swc1	$f10,80(sp)
    3090:	3c014370 	lui	at,0x4370
    3094:	44819000 	mtc1	at,$f18
    3098:	00000000 	nop
    309c:	e7b20050 	swc1	$f18,80(sp)
    30a0:	3c0141f0 	lui	at,0x41f0
    30a4:	44816000 	mtc1	at,$f12
    30a8:	3c014248 	lui	at,0x4248
    30ac:	44812000 	mtc1	at,$f4
    30b0:	c7a20058 	lwc1	$f2,88(sp)
    30b4:	c7a60068 	lwc1	$f6,104(sp)
    30b8:	46002402 	mul.s	$f16,$f4,$f0
    30bc:	c7a00064 	lwc1	$f0,100(sp)
    30c0:	c7a8005c 	lwc1	$f8,92(sp)
    30c4:	4610603c 	c.lt.s	$f12,$f16
    30c8:	00000000 	nop
    30cc:	45020003 	bc1fl	30dc <func_80973EE0+0x14c>
    30d0:	46020032 	c.eq.s	$f0,$f2
    30d4:	46006406 	mov.s	$f16,$f12
    30d8:	46020032 	c.eq.s	$f0,$f2
    30dc:	00000000 	nop
    30e0:	4502000b 	bc1fl	3110 <func_80973EE0+0x180>
    30e4:	46001381 	sub.s	$f14,$f2,$f0
    30e8:	46083032 	c.eq.s	$f6,$f8
    30ec:	c7aa006c 	lwc1	$f10,108(sp)
    30f0:	c7b20060 	lwc1	$f18,96(sp)
    30f4:	45020006 	bc1fl	3110 <func_80973EE0+0x180>
    30f8:	46001381 	sub.s	$f14,$f2,$f0
    30fc:	46125032 	c.eq.s	$f10,$f18
    3100:	00000000 	nop
    3104:	45030014 	bc1tl	3158 <func_80973EE0+0x1c8>
    3108:	86090192 	lh	t1,402(s0)
    310c:	46001381 	sub.s	$f14,$f2,$f0
    3110:	c7a40060 	lwc1	$f4,96(sp)
    3114:	c7a6006c 	lwc1	$f6,108(sp)
    3118:	e7b0004c 	swc1	$f16,76(sp)
    311c:	46007387 	neg.s	$f14,$f14
    3120:	0c000000 	jal	0 <func_80970F50>
    3124:	46062301 	sub.s	$f12,$f4,$f6
    3128:	3c010000 	lui	at,0x0
    312c:	c4280000 	lwc1	$f8,0(at)
    3130:	27a40064 	addiu	a0,sp,100
    3134:	27a50058 	addiu	a1,sp,88
    3138:	46080282 	mul.s	$f10,$f0,$f8
    313c:	4600548d 	trunc.w.s	$f18,$f10
    3140:	44089000 	mfc1	t0,$f18
    3144:	0c000000 	jal	0 <func_80970F50>
    3148:	a608018e 	sh	t0,398(s0)
    314c:	c7b0004c 	lwc1	$f16,76(sp)
    3150:	a6020190 	sh	v0,400(s0)
    3154:	86090192 	lh	t1,402(s0)
    3158:	3c013bb4 	lui	at,0x3bb4
    315c:	44814000 	mtc1	at,$f8
    3160:	252a0400 	addiu	t2,t1,1024
    3164:	a60a0192 	sh	t2,402(s0)
    3168:	860b0192 	lh	t3,402(s0)
    316c:	c7b20050 	lwc1	$f18,80(sp)
    3170:	27ac0064 	addiu	t4,sp,100
    3174:	448b2000 	mtc1	t3,$f4
    3178:	27af0058 	addiu	t7,sp,88
    317c:	c7ae0054 	lwc1	$f14,84(sp)
    3180:	468021a0 	cvt.s.w	$f6,$f4
    3184:	46083282 	mul.s	$f10,$f6,$f8
    3188:	460a9300 	add.s	$f12,$f18,$f10
    318c:	e7ac0050 	swc1	$f12,80(sp)
    3190:	8d8e0000 	lw	t6,0(t4)
    3194:	afae0008 	sw	t6,8(sp)
    3198:	8d870004 	lw	a3,4(t4)
    319c:	8fa60008 	lw	a2,8(sp)
    31a0:	afa7000c 	sw	a3,12(sp)
    31a4:	8d8e0008 	lw	t6,8(t4)
    31a8:	afae0010 	sw	t6,16(sp)
    31ac:	8df90000 	lw	t9,0(t7)
    31b0:	afb90014 	sw	t9,20(sp)
    31b4:	8df80004 	lw	t8,4(t7)
    31b8:	afb80018 	sw	t8,24(sp)
    31bc:	8df90008 	lw	t9,8(t7)
    31c0:	e7b00020 	swc1	$f16,32(sp)
    31c4:	afb9001c 	sw	t9,28(sp)
    31c8:	8a09018e 	lwl	t1,398(s0)
    31cc:	9a090191 	lwr	t1,401(s0)
    31d0:	aba90024 	swl	t1,36(sp)
    31d4:	bba90027 	swr	t1,39(sp)
    31d8:	96090192 	lhu	t1,402(s0)
    31dc:	afb0002c 	sw	s0,44(sp)
    31e0:	0c000000 	jal	0 <func_80970F50>
    31e4:	a7a90028 	sh	t1,40(sp)
    31e8:	8fbf003c 	lw	ra,60(sp)
    31ec:	8fb00038 	lw	s0,56(sp)
    31f0:	27bd0070 	addiu	sp,sp,112
    31f4:	03e00008 	jr	ra
    31f8:	00000000 	nop

000031fc <func_8097414C>:
    31fc:	27bdff78 	addiu	sp,sp,-136
    3200:	44800000 	mtc1	zero,$f0
    3204:	3c010000 	lui	at,0x0
    3208:	c4240000 	lwc1	$f4,0(at)
    320c:	afbf0054 	sw	ra,84(sp)
    3210:	afb70050 	sw	s7,80(sp)
    3214:	afb6004c 	sw	s6,76(sp)
    3218:	afb50048 	sw	s5,72(sp)
    321c:	afb40044 	sw	s4,68(sp)
    3220:	afb30040 	sw	s3,64(sp)
    3224:	afb2003c 	sw	s2,60(sp)
    3228:	afb10038 	sw	s1,56(sp)
    322c:	afb00034 	sw	s0,52(sp)
    3230:	f7b60028 	sdc1	$f22,40(sp)
    3234:	f7b40020 	sdc1	$f20,32(sp)
    3238:	e7a00080 	swc1	$f0,128(sp)
    323c:	e7a00070 	swc1	$f0,112(sp)
    3240:	e7a00078 	swc1	$f0,120(sp)
    3244:	e7a40074 	swc1	$f4,116(sp)
    3248:	908e0184 	lbu	t6,388(a0)
    324c:	3c190000 	lui	t9,0x0
    3250:	27390000 	addiu	t9,t9,0
    3254:	000e7880 	sll	t7,t6,0x2
    3258:	01ee7823 	subu	t7,t7,t6
    325c:	000f7840 	sll	t7,t7,0x1
    3260:	25f8ff8e 	addiu	t8,t7,-114
    3264:	03191021 	addu	v0,t8,t9
    3268:	90480000 	lbu	t0,0(v0)
    326c:	00c0b025 	move	s6,a2
    3270:	00a0b825 	move	s7,a1
    3274:	a3a8006c 	sb	t0,108(sp)
    3278:	90490001 	lbu	t1,1(v0)
    327c:	00008025 	move	s0,zero
    3280:	24910024 	addiu	s1,a0,36
    3284:	a3a9006d 	sb	t1,109(sp)
    3288:	904a0002 	lbu	t2,2(v0)
    328c:	27b30070 	addiu	s3,sp,112
    3290:	27b4006c 	addiu	s4,sp,108
    3294:	a3aa006e 	sb	t2,110(sp)
    3298:	904b0003 	lbu	t3,3(v0)
    329c:	27b50068 	addiu	s5,sp,104
    32a0:	3c013fc0 	lui	at,0x3fc0
    32a4:	a3ab0068 	sb	t3,104(sp)
    32a8:	904c0004 	lbu	t4,4(v0)
    32ac:	a3ac0069 	sb	t4,105(sp)
    32b0:	904d0005 	lbu	t5,5(v0)
    32b4:	a3a0006f 	sb	zero,111(sp)
    32b8:	18c0001c 	blez	a2,332c <func_8097414C+0x130>
    32bc:	a3ad006a 	sb	t5,106(sp)
    32c0:	4481b000 	mtc1	at,$f22
    32c4:	3c013f00 	lui	at,0x3f00
    32c8:	4481a000 	mtc1	at,$f20
    32cc:	27b2007c 	addiu	s2,sp,124
    32d0:	0c000000 	jal	0 <func_80970F50>
    32d4:	00000000 	nop
    32d8:	46140181 	sub.s	$f6,$f0,$f20
    32dc:	46163202 	mul.s	$f8,$f6,$f22
    32e0:	0c000000 	jal	0 <func_80970F50>
    32e4:	e7a8007c 	swc1	$f8,124(sp)
    32e8:	46140281 	sub.s	$f10,$f0,$f20
    32ec:	240e0bb8 	li	t6,3000
    32f0:	240f0010 	li	t7,16
    32f4:	afaf001c 	sw	t7,28(sp)
    32f8:	46165402 	mul.s	$f16,$f10,$f22
    32fc:	afae0018 	sw	t6,24(sp)
    3300:	02e02025 	move	a0,s7
    3304:	02202825 	move	a1,s1
    3308:	02403025 	move	a2,s2
    330c:	02603825 	move	a3,s3
    3310:	afb40010 	sw	s4,16(sp)
    3314:	e7b00084 	swc1	$f16,132(sp)
    3318:	0c000000 	jal	0 <func_80970F50>
    331c:	afb50014 	sw	s5,20(sp)
    3320:	26100001 	addiu	s0,s0,1
    3324:	1616ffea 	bne	s0,s6,32d0 <func_8097414C+0xd4>
    3328:	00000000 	nop
    332c:	8fbf0054 	lw	ra,84(sp)
    3330:	d7b40020 	ldc1	$f20,32(sp)
    3334:	d7b60028 	ldc1	$f22,40(sp)
    3338:	8fb00034 	lw	s0,52(sp)
    333c:	8fb10038 	lw	s1,56(sp)
    3340:	8fb2003c 	lw	s2,60(sp)
    3344:	8fb30040 	lw	s3,64(sp)
    3348:	8fb40044 	lw	s4,68(sp)
    334c:	8fb50048 	lw	s5,72(sp)
    3350:	8fb6004c 	lw	s6,76(sp)
    3354:	8fb70050 	lw	s7,80(sp)
    3358:	03e00008 	jr	ra
    335c:	27bd0088 	addiu	sp,sp,136

00003360 <func_809742B0>:
    3360:	27bdffe8 	addiu	sp,sp,-24
    3364:	afbf0014 	sw	ra,20(sp)
    3368:	afa40018 	sw	a0,24(sp)
    336c:	0c000000 	jal	0 <func_80970F50>
    3370:	24060001 	li	a2,1
    3374:	1440000f 	bnez	v0,33b4 <func_809742B0+0x54>
    3378:	8fa40018 	lw	a0,24(sp)
    337c:	3c060000 	lui	a2,0x0
    3380:	24c60000 	addiu	a2,a2,0
    3384:	84c30000 	lh	v1,0(a2)
    3388:	8482001c 	lh	v0,28(a0)
    338c:	14430005 	bne	v0,v1,33a4 <func_809742B0+0x44>
    3390:	00000000 	nop
    3394:	0c000000 	jal	0 <func_80970F50>
    3398:	2405206e 	li	a1,8302
    339c:	10000006 	b	33b8 <func_809742B0+0x58>
    33a0:	8fbf0014 	lw	ra,20(sp)
    33a4:	14600003 	bnez	v1,33b4 <func_809742B0+0x54>
    33a8:	2405206e 	li	a1,8302
    33ac:	0c000000 	jal	0 <func_80970F50>
    33b0:	a4c20000 	sh	v0,0(a2)
    33b4:	8fbf0014 	lw	ra,20(sp)
    33b8:	27bd0018 	addiu	sp,sp,24
    33bc:	03e00008 	jr	ra
    33c0:	00000000 	nop

000033c4 <func_80974314>:
    33c4:	27bdffe8 	addiu	sp,sp,-24
    33c8:	afbf0014 	sw	ra,20(sp)
    33cc:	848e0188 	lh	t6,392(a0)
    33d0:	849800b6 	lh	t8,182(a0)
    33d4:	25cf0001 	addiu	t7,t6,1
    33d8:	27190400 	addiu	t9,t8,1024
    33dc:	a48f0188 	sh	t7,392(a0)
    33e0:	a49900b6 	sh	t9,182(a0)
    33e4:	0c000000 	jal	0 <func_80970F50>
    33e8:	afa40018 	sw	a0,24(sp)
    33ec:	8fa40018 	lw	a0,24(sp)
    33f0:	0c000000 	jal	0 <func_80970F50>
    33f4:	3c053f80 	lui	a1,0x3f80
    33f8:	8fbf0014 	lw	ra,20(sp)
    33fc:	27bd0018 	addiu	sp,sp,24
    3400:	03e00008 	jr	ra
    3404:	00000000 	nop

00003408 <func_80974358>:
    3408:	27bdffe0 	addiu	sp,sp,-32
    340c:	afbf001c 	sw	ra,28(sp)
    3410:	afb10018 	sw	s1,24(sp)
    3414:	afb00014 	sw	s0,20(sp)
    3418:	848e0188 	lh	t6,392(a0)
    341c:	00808025 	move	s0,a0
    3420:	00a08825 	move	s1,a1
    3424:	25cf0001 	addiu	t7,t6,1
    3428:	a48f0188 	sh	t7,392(a0)
    342c:	90b81d6c 	lbu	t8,7532(a1)
    3430:	13000053 	beqz	t8,3580 <func_80974358+0x178>
    3434:	00000000 	nop
    3438:	8486018c 	lh	a2,396(a0)
    343c:	0006c880 	sll	t9,a2,0x2
    3440:	00b94021 	addu	t0,a1,t9
    3444:	8d031d8c 	lw	v1,7564(t0)
    3448:	1060004d 	beqz	v1,3580 <func_80974358+0x178>
    344c:	00000000 	nop
    3450:	94620000 	lhu	v0,0(v1)
    3454:	24010003 	li	at,3
    3458:	02002025 	move	a0,s0
    345c:	10410007 	beq	v0,at,347c <func_80974358+0x74>
    3460:	24010004 	li	at,4
    3464:	1041001a 	beq	v0,at,34d0 <func_80974358+0xc8>
    3468:	24010006 	li	at,6
    346c:	10410036 	beq	v0,at,3548 <func_80974358+0x140>
    3470:	02002025 	move	a0,s0
    3474:	10000038 	b	3558 <func_80974358+0x150>
    3478:	02202825 	move	a1,s1
    347c:	3c020000 	lui	v0,0x0
    3480:	94420edc 	lhu	v0,3804(v0)
    3484:	3c010000 	lui	at,0x0
    3488:	30490800 	andi	t1,v0,0x800
    348c:	11200002 	beqz	t1,3498 <func_80974358+0x90>
    3490:	344a0800 	ori	t2,v0,0x800
    3494:	a42a0edc 	sh	t2,3804(at)
    3498:	0c000000 	jal	0 <func_80970F50>
    349c:	02202825 	move	a1,s1
    34a0:	3c0b0001 	lui	t3,0x1
    34a4:	01715821 	addu	t3,t3,s1
    34a8:	8d6b1de4 	lw	t3,7652(t3)
    34ac:	02002025 	move	a0,s0
    34b0:	02202825 	move	a1,s1
    34b4:	316c0001 	andi	t4,t3,0x1
    34b8:	15800031 	bnez	t4,3580 <func_80974358+0x178>
    34bc:	00000000 	nop
    34c0:	0c000000 	jal	0 <func_80970F50>
    34c4:	24060001 	li	a2,1
    34c8:	1000002d 	b	3580 <func_80974358+0x178>
    34cc:	00000000 	nop
    34d0:	920d0185 	lbu	t5,389(s0)
    34d4:	02202825 	move	a1,s1
    34d8:	00003825 	move	a3,zero
    34dc:	11a00012 	beqz	t5,3528 <func_80974358+0x120>
    34e0:	02002025 	move	a0,s0
    34e4:	0c000000 	jal	0 <func_80970F50>
    34e8:	02002025 	move	a0,s0
    34ec:	26040024 	addiu	a0,s0,36
    34f0:	0c000000 	jal	0 <func_80970F50>
    34f4:	02002825 	move	a1,s0
    34f8:	3c0e0001 	lui	t6,0x1
    34fc:	01d17021 	addu	t6,t6,s1
    3500:	8dce1de4 	lw	t6,7652(t6)
    3504:	02002025 	move	a0,s0
    3508:	02202825 	move	a1,s1
    350c:	31cf0001 	andi	t7,t6,0x1
    3510:	15e0001b 	bnez	t7,3580 <func_80974358+0x178>
    3514:	00000000 	nop
    3518:	0c000000 	jal	0 <func_80970F50>
    351c:	24060001 	li	a2,1
    3520:	10000017 	b	3580 <func_80974358+0x178>
    3524:	00000000 	nop
    3528:	0c000000 	jal	0 <func_80970F50>
    352c:	02202825 	move	a1,s1
    3530:	26040024 	addiu	a0,s0,36
    3534:	0c000000 	jal	0 <func_80970F50>
    3538:	02002825 	move	a1,s0
    353c:	24180001 	li	t8,1
    3540:	1000000f 	b	3580 <func_80974358+0x178>
    3544:	a2180185 	sb	t8,389(s0)
    3548:	0c000000 	jal	0 <func_80970F50>
    354c:	02002025 	move	a0,s0
    3550:	1000002e 	b	360c <func_80974358+0x204>
    3554:	8fbf001c 	lw	ra,28(sp)
    3558:	0c000000 	jal	0 <func_80970F50>
    355c:	00003825 	move	a3,zero
    3560:	3c190000 	lui	t9,0x0
    3564:	8f390000 	lw	t9,0(t9)
    3568:	24010053 	li	at,83
    356c:	26040024 	addiu	a0,s0,36
    3570:	17210003 	bne	t9,at,3580 <func_80974358+0x178>
    3574:	00000000 	nop
    3578:	0c000000 	jal	0 <func_80970F50>
    357c:	02002825 	move	a1,s0
    3580:	3c080000 	lui	t0,0x0
    3584:	8d080000 	lw	t0,0(t0)
    3588:	24010053 	li	at,83
    358c:	3c090000 	lui	t1,0x0
    3590:	55010015 	bnel	t0,at,35e8 <func_80974358+0x1e0>
    3594:	861800b6 	lh	t8,182(s0)
    3598:	95290edc 	lhu	t1,3804(t1)
    359c:	312a0800 	andi	t2,t1,0x800
    35a0:	55400011 	bnezl	t2,35e8 <func_80974358+0x1e0>
    35a4:	861800b6 	lh	t8,182(s0)
    35a8:	92221d6c 	lbu	v0,7532(s1)
    35ac:	0002102b 	sltu	v0,zero,v0
    35b0:	10400006 	beqz	v0,35cc <func_80974358+0x1c4>
    35b4:	00000000 	nop
    35b8:	860b018c 	lh	t3,396(s0)
    35bc:	000b6080 	sll	t4,t3,0x2
    35c0:	022c6821 	addu	t5,s1,t4
    35c4:	8da21d8c 	lw	v0,7564(t5)
    35c8:	0002102b 	sltu	v0,zero,v0
    35cc:	54400006 	bnezl	v0,35e8 <func_80974358+0x1e0>
    35d0:	861800b6 	lh	t8,182(s0)
    35d4:	860e018a 	lh	t6,394(s0)
    35d8:	35cf0001 	ori	t7,t6,0x1
    35dc:	1000000a 	b	3608 <func_80974358+0x200>
    35e0:	a60f018a 	sh	t7,394(s0)
    35e4:	861800b6 	lh	t8,182(s0)
    35e8:	02002025 	move	a0,s0
    35ec:	02202825 	move	a1,s1
    35f0:	27190400 	addiu	t9,t8,1024
    35f4:	0c000000 	jal	0 <func_80970F50>
    35f8:	a61900b6 	sh	t9,182(s0)
    35fc:	8608018a 	lh	t0,394(s0)
    3600:	3109fffe 	andi	t1,t0,0xfffe
    3604:	a609018a 	sh	t1,394(s0)
    3608:	8fbf001c 	lw	ra,28(sp)
    360c:	8fb00014 	lw	s0,20(sp)
    3610:	8fb10018 	lw	s1,24(sp)
    3614:	03e00008 	jr	ra
    3618:	27bd0020 	addiu	sp,sp,32

0000361c <func_8097456C>:
    361c:	27bdffa8 	addiu	sp,sp,-88
    3620:	afbf0024 	sw	ra,36(sp)
    3624:	90ae1d6c 	lbu	t6,7532(a1)
    3628:	51c00042 	beqzl	t6,3734 <func_8097456C+0x118>
    362c:	8fbf0024 	lw	ra,36(sp)
    3630:	848f018c 	lh	t7,396(a0)
    3634:	000fc080 	sll	t8,t7,0x2
    3638:	00b8c821 	addu	t9,a1,t8
    363c:	8f221d8c 	lw	v0,7564(t9)
    3640:	5040003c 	beqzl	v0,3734 <func_8097456C+0x118>
    3644:	8fbf0024 	lw	ra,36(sp)
    3648:	94480000 	lhu	t0,0(v0)
    364c:	24010002 	li	at,2
    3650:	55010038 	bnel	t0,at,3734 <func_8097456C+0x118>
    3654:	8fbf0024 	lw	ra,36(sp)
    3658:	8c8b0024 	lw	t3,36(a0)
    365c:	27a9004c 	addiu	t1,sp,76
    3660:	3c014416 	lui	at,0x4416
    3664:	ad2b0000 	sw	t3,0(t1)
    3668:	8c8a0028 	lw	t2,40(a0)
    366c:	44813000 	mtc1	at,$f6
    3670:	3c014396 	lui	at,0x4396
    3674:	ad2a0004 	sw	t2,4(t1)
    3678:	8c8b002c 	lw	t3,44(a0)
    367c:	44816000 	mtc1	at,$f12
    3680:	ad2b0008 	sw	t3,8(t1)
    3684:	c7a40050 	lwc1	$f4,80(sp)
    3688:	afa5005c 	sw	a1,92(sp)
    368c:	afa40058 	sw	a0,88(sp)
    3690:	46062200 	add.s	$f8,$f4,$f6
    3694:	0c000000 	jal	0 <func_80970F50>
    3698:	e7a80050 	swc1	$f8,80(sp)
    369c:	c7aa004c 	lwc1	$f10,76(sp)
    36a0:	3c014396 	lui	at,0x4396
    36a4:	44816000 	mtc1	at,$f12
    36a8:	46005400 	add.s	$f16,$f10,$f0
    36ac:	0c000000 	jal	0 <func_80970F50>
    36b0:	e7b0004c 	swc1	$f16,76(sp)
    36b4:	3c014348 	lui	at,0x4348
    36b8:	44812000 	mtc1	at,$f4
    36bc:	c7b20054 	lwc1	$f18,84(sp)
    36c0:	44801000 	mtc1	zero,$f2
    36c4:	46002180 	add.s	$f6,$f4,$f0
    36c8:	3c01c1a0 	lui	at,0xc1a0
    36cc:	44815000 	mtc1	at,$f10
    36d0:	3c010000 	lui	at,0x0
    36d4:	46069200 	add.s	$f8,$f18,$f6
    36d8:	c4300000 	lwc1	$f16,0(at)
    36dc:	240c012c 	li	t4,300
    36e0:	240d001e 	li	t5,30
    36e4:	e7a80054 	swc1	$f8,84(sp)
    36e8:	afad0018 	sw	t5,24(sp)
    36ec:	afac0010 	sw	t4,16(sp)
    36f0:	8fa4005c 	lw	a0,92(sp)
    36f4:	27a5004c 	addiu	a1,sp,76
    36f8:	27a60040 	addiu	a2,sp,64
    36fc:	27a70034 	addiu	a3,sp,52
    3700:	afa00014 	sw	zero,20(sp)
    3704:	e7a20048 	swc1	$f2,72(sp)
    3708:	e7a20040 	swc1	$f2,64(sp)
    370c:	e7a2003c 	swc1	$f2,60(sp)
    3710:	e7a20034 	swc1	$f2,52(sp)
    3714:	e7aa0044 	swc1	$f10,68(sp)
    3718:	0c000000 	jal	0 <func_80970F50>
    371c:	e7b00038 	swc1	$f16,56(sp)
    3720:	8fa20058 	lw	v0,88(sp)
    3724:	904e0184 	lbu	t6,388(v0)
    3728:	25cf0001 	addiu	t7,t6,1
    372c:	a04f0184 	sb	t7,388(v0)
    3730:	8fbf0024 	lw	ra,36(sp)
    3734:	27bd0058 	addiu	sp,sp,88
    3738:	03e00008 	jr	ra
    373c:	00000000 	nop

00003740 <DemoEffect_Update>:
    3740:	27bdffe8 	addiu	sp,sp,-24
    3744:	afbf0014 	sw	ra,20(sp)
    3748:	8c99019c 	lw	t9,412(a0)
    374c:	0320f809 	jalr	t9
    3750:	00000000 	nop
    3754:	8fbf0014 	lw	ra,20(sp)
    3758:	27bd0018 	addiu	sp,sp,24
    375c:	03e00008 	jr	ra
    3760:	00000000 	nop

00003764 <func_809746B4>:
    3764:	90ae1d6c 	lbu	t6,7532(a1)
    3768:	51c0000d 	beqzl	t6,37a0 <func_809746B4+0x3c>
    376c:	00001025 	move	v0,zero
    3770:	848f018c 	lh	t7,396(a0)
    3774:	000fc080 	sll	t8,t7,0x2
    3778:	00b8c821 	addu	t9,a1,t8
    377c:	8f221d8c 	lw	v0,7564(t9)
    3780:	50400007 	beqzl	v0,37a0 <func_809746B4+0x3c>
    3784:	00001025 	move	v0,zero
    3788:	94480000 	lhu	t0,0(v0)
    378c:	54c80004 	bnel	a2,t0,37a0 <func_809746B4+0x3c>
    3790:	00001025 	move	v0,zero
    3794:	03e00008 	jr	ra
    3798:	24020001 	li	v0,1
    379c:	00001025 	move	v0,zero
    37a0:	03e00008 	jr	ra
    37a4:	00000000 	nop

000037a8 <func_809746F8>:
    37a8:	27bdff68 	addiu	sp,sp,-152
    37ac:	afbf003c 	sw	ra,60(sp)
    37b0:	afb10038 	sw	s1,56(sp)
    37b4:	afb00034 	sw	s0,52(sp)
    37b8:	afa5009c 	sw	a1,156(sp)
    37bc:	84880188 	lh	t0,392(a0)
    37c0:	8ca50000 	lw	a1,0(a1)
    37c4:	00808825 	move	s1,a0
    37c8:	3c060000 	lui	a2,0x0
    37cc:	24c60000 	addiu	a2,a2,0
    37d0:	27a40078 	addiu	a0,sp,120
    37d4:	240709ef 	li	a3,2543
    37d8:	afa8008c 	sw	t0,140(sp)
    37dc:	0c000000 	jal	0 <func_80970F50>
    37e0:	00a08025 	move	s0,a1
    37e4:	02202025 	move	a0,s1
    37e8:	8fa5009c 	lw	a1,156(sp)
    37ec:	0c000000 	jal	0 <func_80970F50>
    37f0:	24060001 	li	a2,1
    37f4:	14400102 	bnez	v0,3c00 <func_809746F8+0x458>
    37f8:	8fa8008c 	lw	t0,140(sp)
    37fc:	862f018a 	lh	t7,394(s1)
    3800:	31f80001 	andi	t8,t7,0x1
    3804:	570000ff 	bnezl	t8,3c04 <func_809746F8+0x45c>
    3808:	8fae009c 	lw	t6,156(sp)
    380c:	92220184 	lbu	v0,388(s1)
    3810:	24010013 	li	at,19
    3814:	240a00ff 	li	t2,255
    3818:	10410009 	beq	v0,at,3840 <func_809746F8+0x98>
    381c:	3c0bdb06 	lui	t3,0xdb06
    3820:	24010014 	li	at,20
    3824:	10410028 	beq	v0,at,38c8 <func_809746F8+0x120>
    3828:	240a00ff 	li	t2,255
    382c:	24010015 	li	at,21
    3830:	10410048 	beq	v0,at,3954 <func_809746F8+0x1ac>
    3834:	240a00ff 	li	t2,255
    3838:	10000069 	b	39e0 <func_809746F8+0x238>
    383c:	8e0202c0 	lw	v0,704(s0)
    3840:	8e0202d0 	lw	v0,720(s0)
    3844:	356b0024 	ori	t3,t3,0x24
    3848:	00081840 	sll	v1,t0,0x1
    384c:	24590008 	addiu	t9,v0,8
    3850:	ae1902d0 	sw	t9,720(s0)
    3854:	ac4b0000 	sw	t3,0(v0)
    3858:	8fac009c 	lw	t4,156(sp)
    385c:	311800ff 	andi	t8,t0,0xff
    3860:	0158c823 	subu	t9,t2,t8
    3864:	8d840000 	lw	a0,0(t4)
    3868:	240c0010 	li	t4,16
    386c:	240b0010 	li	t3,16
    3870:	306300ff 	andi	v1,v1,0xff
    3874:	00083080 	sll	a2,t0,0x2
    3878:	240d0040 	li	t5,64
    387c:	240e0040 	li	t6,64
    3880:	240f0001 	li	t7,1
    3884:	afaf0018 	sw	t7,24(sp)
    3888:	afae0014 	sw	t6,20(sp)
    388c:	afad0010 	sw	t5,16(sp)
    3890:	30c600ff 	andi	a2,a2,0xff
    3894:	01433823 	subu	a3,t2,v1
    3898:	afa3001c 	sw	v1,28(sp)
    389c:	afab0024 	sw	t3,36(sp)
    38a0:	afac0028 	sw	t4,40(sp)
    38a4:	afa8008c 	sw	t0,140(sp)
    38a8:	afb90020 	sw	t9,32(sp)
    38ac:	00002825 	move	a1,zero
    38b0:	0c000000 	jal	0 <func_80970F50>
    38b4:	afa20074 	sw	v0,116(sp)
    38b8:	8fa90074 	lw	t1,116(sp)
    38bc:	8fa8008c 	lw	t0,140(sp)
    38c0:	10000046 	b	39dc <func_809746F8+0x234>
    38c4:	ad220004 	sw	v0,4(t1)
    38c8:	8e0202d0 	lw	v0,720(s0)
    38cc:	3c0edb06 	lui	t6,0xdb06
    38d0:	35ce0024 	ori	t6,t6,0x24
    38d4:	244d0008 	addiu	t5,v0,8
    38d8:	ae0d02d0 	sw	t5,720(s0)
    38dc:	ac4e0000 	sw	t6,0(v0)
    38e0:	8faf009c 	lw	t7,156(sp)
    38e4:	00081840 	sll	v1,t0,0x1
    38e8:	310c00ff 	andi	t4,t0,0xff
    38ec:	8de40000 	lw	a0,0(t7)
    38f0:	240f0008 	li	t7,8
    38f4:	014c6823 	subu	t5,t2,t4
    38f8:	306300ff 	andi	v1,v1,0xff
    38fc:	240e0010 	li	t6,16
    3900:	00083080 	sll	a2,t0,0x2
    3904:	24180020 	li	t8,32
    3908:	24190040 	li	t9,64
    390c:	240b0001 	li	t3,1
    3910:	afab0018 	sw	t3,24(sp)
    3914:	afb90014 	sw	t9,20(sp)
    3918:	afb80010 	sw	t8,16(sp)
    391c:	30c6007f 	andi	a2,a2,0x7f
    3920:	afae0024 	sw	t6,36(sp)
    3924:	01433823 	subu	a3,t2,v1
    3928:	afa3001c 	sw	v1,28(sp)
    392c:	afad0020 	sw	t5,32(sp)
    3930:	afaf0028 	sw	t7,40(sp)
    3934:	afa8008c 	sw	t0,140(sp)
    3938:	00002825 	move	a1,zero
    393c:	0c000000 	jal	0 <func_80970F50>
    3940:	afa20070 	sw	v0,112(sp)
    3944:	8fa90070 	lw	t1,112(sp)
    3948:	8fa8008c 	lw	t0,140(sp)
    394c:	10000023 	b	39dc <func_809746F8+0x234>
    3950:	ad220004 	sw	v0,4(t1)
    3954:	8e0202d0 	lw	v0,720(s0)
    3958:	3c19db06 	lui	t9,0xdb06
    395c:	37390024 	ori	t9,t9,0x24
    3960:	24580008 	addiu	t8,v0,8
    3964:	ae1802d0 	sw	t8,720(s0)
    3968:	ac590000 	sw	t9,0(v0)
    396c:	8fab009c 	lw	t3,156(sp)
    3970:	00081840 	sll	v1,t0,0x1
    3974:	310f00ff 	andi	t7,t0,0xff
    3978:	8d640000 	lw	a0,0(t3)
    397c:	240b0010 	li	t3,16
    3980:	014fc023 	subu	t8,t2,t7
    3984:	306300ff 	andi	v1,v1,0xff
    3988:	24190010 	li	t9,16
    398c:	00083080 	sll	a2,t0,0x2
    3990:	240c0020 	li	t4,32
    3994:	240d0020 	li	t5,32
    3998:	240e0001 	li	t6,1
    399c:	afae0018 	sw	t6,24(sp)
    39a0:	afad0014 	sw	t5,20(sp)
    39a4:	afac0010 	sw	t4,16(sp)
    39a8:	30c600ff 	andi	a2,a2,0xff
    39ac:	afb90024 	sw	t9,36(sp)
    39b0:	01433823 	subu	a3,t2,v1
    39b4:	afa3001c 	sw	v1,28(sp)
    39b8:	afb80020 	sw	t8,32(sp)
    39bc:	afab0028 	sw	t3,40(sp)
    39c0:	afa8008c 	sw	t0,140(sp)
    39c4:	00002825 	move	a1,zero
    39c8:	0c000000 	jal	0 <func_80970F50>
    39cc:	afa2006c 	sw	v0,108(sp)
    39d0:	8fa9006c 	lw	t1,108(sp)
    39d4:	8fa8008c 	lw	t0,140(sp)
    39d8:	ad220004 	sw	v0,4(t1)
    39dc:	8e0202c0 	lw	v0,704(s0)
    39e0:	3c0ddb06 	lui	t5,0xdb06
    39e4:	35ad0020 	ori	t5,t5,0x20
    39e8:	244c0008 	addiu	t4,v0,8
    39ec:	ae0c02c0 	sw	t4,704(s0)
    39f0:	ac4d0000 	sw	t5,0(v0)
    39f4:	8fae009c 	lw	t6,156(sp)
    39f8:	310500ff 	andi	a1,t0,0xff
    39fc:	240f0010 	li	t7,16
    3a00:	8dc40000 	lw	a0,0(t6)
    3a04:	afaf0010 	sw	t7,16(sp)
    3a08:	00a03025 	move	a2,a1
    3a0c:	24070010 	li	a3,16
    3a10:	0c000000 	jal	0 <func_80970F50>
    3a14:	afa20068 	sw	v0,104(sp)
    3a18:	8fa30068 	lw	v1,104(sp)
    3a1c:	3c19da38 	lui	t9,0xda38
    3a20:	37390003 	ori	t9,t9,0x3
    3a24:	ac620004 	sw	v0,4(v1)
    3a28:	8e0202d0 	lw	v0,720(s0)
    3a2c:	3c050000 	lui	a1,0x0
    3a30:	24a50000 	addiu	a1,a1,0
    3a34:	24580008 	addiu	t8,v0,8
    3a38:	ae1802d0 	sw	t8,720(s0)
    3a3c:	ac590000 	sw	t9,0(v0)
    3a40:	8fab009c 	lw	t3,156(sp)
    3a44:	24060a25 	li	a2,2597
    3a48:	8d640000 	lw	a0,0(t3)
    3a4c:	0c000000 	jal	0 <func_80970F50>
    3a50:	afa20064 	sw	v0,100(sp)
    3a54:	8fa30064 	lw	v1,100(sp)
    3a58:	3c0dda38 	lui	t5,0xda38
    3a5c:	35ad0003 	ori	t5,t5,0x3
    3a60:	ac620004 	sw	v0,4(v1)
    3a64:	8e0202c0 	lw	v0,704(s0)
    3a68:	3c050000 	lui	a1,0x0
    3a6c:	24a50000 	addiu	a1,a1,0
    3a70:	244c0008 	addiu	t4,v0,8
    3a74:	ae0c02c0 	sw	t4,704(s0)
    3a78:	ac4d0000 	sw	t5,0(v0)
    3a7c:	8fae009c 	lw	t6,156(sp)
    3a80:	24060a27 	li	a2,2599
    3a84:	8dc40000 	lw	a0,0(t6)
    3a88:	0c000000 	jal	0 <func_80970F50>
    3a8c:	afa20060 	sw	v0,96(sp)
    3a90:	8fa30060 	lw	v1,96(sp)
    3a94:	ac620004 	sw	v0,4(v1)
    3a98:	8faf009c 	lw	t7,156(sp)
    3a9c:	0c000000 	jal	0 <func_80970F50>
    3aa0:	8de40000 	lw	a0,0(t7)
    3aa4:	02202025 	move	a0,s1
    3aa8:	8fa5009c 	lw	a1,156(sp)
    3aac:	0c000000 	jal	0 <func_80970F50>
    3ab0:	00003025 	move	a2,zero
    3ab4:	8e0202d0 	lw	v0,720(s0)
    3ab8:	3c19fa00 	lui	t9,0xfa00
    3abc:	37390080 	ori	t9,t9,0x80
    3ac0:	24580008 	addiu	t8,v0,8
    3ac4:	ae1802d0 	sw	t8,720(s0)
    3ac8:	ac590000 	sw	t9,0(v0)
    3acc:	922c017a 	lbu	t4,378(s1)
    3ad0:	922f0178 	lbu	t7,376(s1)
    3ad4:	3c0bfb00 	lui	t3,0xfb00
    3ad8:	000c6a00 	sll	t5,t4,0x8
    3adc:	922c0179 	lbu	t4,377(s1)
    3ae0:	000fc600 	sll	t8,t7,0x18
    3ae4:	01b8c825 	or	t9,t5,t8
    3ae8:	000c7400 	sll	t6,t4,0x10
    3aec:	032e7825 	or	t7,t9,t6
    3af0:	35ed00ff 	ori	t5,t7,0xff
    3af4:	ac4d0004 	sw	t5,4(v0)
    3af8:	8e0202d0 	lw	v0,720(s0)
    3afc:	3c0cde00 	lui	t4,0xde00
    3b00:	24580008 	addiu	t8,v0,8
    3b04:	ae1802d0 	sw	t8,720(s0)
    3b08:	ac4b0000 	sw	t3,0(v0)
    3b0c:	9239017d 	lbu	t9,381(s1)
    3b10:	922d017b 	lbu	t5,379(s1)
    3b14:	00197200 	sll	t6,t9,0x8
    3b18:	9239017c 	lbu	t9,380(s1)
    3b1c:	000dc600 	sll	t8,t5,0x18
    3b20:	01d85825 	or	t3,t6,t8
    3b24:	00197c00 	sll	t7,t9,0x10
    3b28:	016f6825 	or	t5,t3,t7
    3b2c:	35ae00ff 	ori	t6,t5,0xff
    3b30:	ac4e0004 	sw	t6,4(v0)
    3b34:	8e0202d0 	lw	v0,720(s0)
    3b38:	24580008 	addiu	t8,v0,8
    3b3c:	ae1802d0 	sw	t8,720(s0)
    3b40:	ac4c0000 	sw	t4,0(v0)
    3b44:	8e390170 	lw	t9,368(s1)
    3b48:	ac590004 	sw	t9,4(v0)
    3b4c:	8fab009c 	lw	t3,156(sp)
    3b50:	0c000000 	jal	0 <func_80970F50>
    3b54:	8d640000 	lw	a0,0(t3)
    3b58:	02202025 	move	a0,s1
    3b5c:	8fa5009c 	lw	a1,156(sp)
    3b60:	0c000000 	jal	0 <func_80970F50>
    3b64:	00003025 	move	a2,zero
    3b68:	8e0202c0 	lw	v0,704(s0)
    3b6c:	3c0dfa00 	lui	t5,0xfa00
    3b70:	35ad0080 	ori	t5,t5,0x80
    3b74:	244f0008 	addiu	t7,v0,8
    3b78:	ae0f02c0 	sw	t7,704(s0)
    3b7c:	ac4d0000 	sw	t5,0(v0)
    3b80:	92380180 	lbu	t8,384(s1)
    3b84:	922b017e 	lbu	t3,382(s1)
    3b88:	3c0efb00 	lui	t6,0xfb00
    3b8c:	00186200 	sll	t4,t8,0x8
    3b90:	9238017f 	lbu	t8,383(s1)
    3b94:	000b7e00 	sll	t7,t3,0x18
    3b98:	018f6825 	or	t5,t4,t7
    3b9c:	0018cc00 	sll	t9,t8,0x10
    3ba0:	01b95825 	or	t3,t5,t9
    3ba4:	356c00ff 	ori	t4,t3,0xff
    3ba8:	ac4c0004 	sw	t4,4(v0)
    3bac:	8e0202c0 	lw	v0,704(s0)
    3bb0:	3c18de00 	lui	t8,0xde00
    3bb4:	244f0008 	addiu	t7,v0,8
    3bb8:	ae0f02c0 	sw	t7,704(s0)
    3bbc:	ac4e0000 	sw	t6,0(v0)
    3bc0:	922d0183 	lbu	t5,387(s1)
    3bc4:	922c0181 	lbu	t4,385(s1)
    3bc8:	000dca00 	sll	t9,t5,0x8
    3bcc:	922d0182 	lbu	t5,386(s1)
    3bd0:	000c7e00 	sll	t7,t4,0x18
    3bd4:	032f7025 	or	t6,t9,t7
    3bd8:	000d5c00 	sll	t3,t5,0x10
    3bdc:	01cb6025 	or	t4,t6,t3
    3be0:	359900ff 	ori	t9,t4,0xff
    3be4:	ac590004 	sw	t9,4(v0)
    3be8:	8e0202c0 	lw	v0,704(s0)
    3bec:	244f0008 	addiu	t7,v0,8
    3bf0:	ae0f02c0 	sw	t7,704(s0)
    3bf4:	ac580000 	sw	t8,0(v0)
    3bf8:	8e2d0174 	lw	t5,372(s1)
    3bfc:	ac4d0004 	sw	t5,4(v0)
    3c00:	8fae009c 	lw	t6,156(sp)
    3c04:	3c060000 	lui	a2,0x0
    3c08:	24c60000 	addiu	a2,a2,0
    3c0c:	27a40078 	addiu	a0,sp,120
    3c10:	24070a3c 	li	a3,2620
    3c14:	0c000000 	jal	0 <func_80970F50>
    3c18:	8dc50000 	lw	a1,0(t6)
    3c1c:	8fbf003c 	lw	ra,60(sp)
    3c20:	8fb00034 	lw	s0,52(sp)
    3c24:	8fb10038 	lw	s1,56(sp)
    3c28:	03e00008 	jr	ra
    3c2c:	27bd0098 	addiu	sp,sp,152

00003c30 <func_80974B80>:
    3c30:	27bdff70 	addiu	sp,sp,-144
    3c34:	3c180001 	lui	t8,0x1
    3c38:	afbf003c 	sw	ra,60(sp)
    3c3c:	afb00038 	sw	s0,56(sp)
    3c40:	afa40090 	sw	a0,144(sp)
    3c44:	afa50094 	sw	a1,148(sp)
    3c48:	0305c021 	addu	t8,t8,a1
    3c4c:	8f181de4 	lw	t8,7652(t8)
    3c50:	8c880118 	lw	t0,280(a0)
    3c54:	3c060000 	lui	a2,0x0
    3c58:	3319ffff 	andi	t9,t8,0xffff
    3c5c:	afb90084 	sw	t9,132(sp)
    3c60:	8ca50000 	lw	a1,0(a1)
    3c64:	24c60000 	addiu	a2,a2,0
    3c68:	27a40070 	addiu	a0,sp,112
    3c6c:	24070a4a 	li	a3,2634
    3c70:	afa80088 	sw	t0,136(sp)
    3c74:	0c000000 	jal	0 <func_80970F50>
    3c78:	00a08025 	move	s0,a1
    3c7c:	8fa80088 	lw	t0,136(sp)
    3c80:	5100000d 	beqzl	t0,3cb8 <func_80974B80+0x88>
    3c84:	8e0202d0 	lw	v0,720(s0)
    3c88:	8e0202d0 	lw	v0,720(s0)
    3c8c:	3c0bfa00 	lui	t3,0xfa00
    3c90:	356b8080 	ori	t3,t3,0x8080
    3c94:	244a0008 	addiu	t2,v0,8
    3c98:	ae0a02d0 	sw	t2,720(s0)
    3c9c:	ac4b0000 	sw	t3,0(v0)
    3ca0:	910d0186 	lbu	t5,390(t0)
    3ca4:	2401aa00 	li	at,-22016
    3ca8:	01a17025 	or	t6,t5,at
    3cac:	10000009 	b	3cd4 <func_80974B80+0xa4>
    3cb0:	ac4e0004 	sw	t6,4(v0)
    3cb4:	8e0202d0 	lw	v0,720(s0)
    3cb8:	3c19fa00 	lui	t9,0xfa00
    3cbc:	37398080 	ori	t9,t9,0x8080
    3cc0:	24580008 	addiu	t8,v0,8
    3cc4:	ae1802d0 	sw	t8,720(s0)
    3cc8:	240faaff 	li	t7,-21761
    3ccc:	ac4f0004 	sw	t7,4(v0)
    3cd0:	ac590000 	sw	t9,0(v0)
    3cd4:	8faa0094 	lw	t2,148(sp)
    3cd8:	0c000000 	jal	0 <func_80970F50>
    3cdc:	8d440000 	lw	a0,0(t2)
    3ce0:	8e0202d0 	lw	v0,720(s0)
    3ce4:	8fa90084 	lw	t1,132(sp)
    3ce8:	3c0cdb06 	lui	t4,0xdb06
    3cec:	244b0008 	addiu	t3,v0,8
    3cf0:	ae0b02d0 	sw	t3,720(s0)
    3cf4:	358c0020 	ori	t4,t4,0x20
    3cf8:	ac4c0000 	sw	t4,0(v0)
    3cfc:	8fad0094 	lw	t5,148(sp)
    3d00:	00093040 	sll	a2,t1,0x1
    3d04:	30c601ff 	andi	a2,a2,0x1ff
    3d08:	8da40000 	lw	a0,0(t5)
    3d0c:	240801ff 	li	t0,511
    3d10:	01065023 	subu	t2,t0,a2
    3d14:	240c0040 	li	t4,64
    3d18:	240b0040 	li	t3,64
    3d1c:	24180080 	li	t8,128
    3d20:	24190080 	li	t9,128
    3d24:	240f0001 	li	t7,1
    3d28:	312e01ff 	andi	t6,t1,0x1ff
    3d2c:	010e3823 	subu	a3,t0,t6
    3d30:	afaf0018 	sw	t7,24(sp)
    3d34:	afb90014 	sw	t9,20(sp)
    3d38:	afb80010 	sw	t8,16(sp)
    3d3c:	afab0024 	sw	t3,36(sp)
    3d40:	afac0028 	sw	t4,40(sp)
    3d44:	afaa001c 	sw	t2,28(sp)
    3d48:	afa00020 	sw	zero,32(sp)
    3d4c:	00002825 	move	a1,zero
    3d50:	0c000000 	jal	0 <func_80970F50>
    3d54:	afa20064 	sw	v0,100(sp)
    3d58:	8fa30064 	lw	v1,100(sp)
    3d5c:	0c000000 	jal	0 <func_80970F50>
    3d60:	ac620004 	sw	v0,4(v1)
    3d64:	44806000 	mtc1	zero,$f12
    3d68:	0c000000 	jal	0 <func_80970F50>
    3d6c:	24050001 	li	a1,1
    3d70:	3c010000 	lui	at,0x0
    3d74:	c42c0000 	lwc1	$f12,0(at)
    3d78:	0c000000 	jal	0 <func_80970F50>
    3d7c:	24050001 	li	a1,1
    3d80:	44806000 	mtc1	zero,$f12
    3d84:	3c014316 	lui	at,0x4316
    3d88:	44817000 	mtc1	at,$f14
    3d8c:	44066000 	mfc1	a2,$f12
    3d90:	0c000000 	jal	0 <func_80970F50>
    3d94:	24070001 	li	a3,1
    3d98:	8e0202d0 	lw	v0,720(s0)
    3d9c:	3c0eda38 	lui	t6,0xda38
    3da0:	35ce0003 	ori	t6,t6,0x3
    3da4:	244d0008 	addiu	t5,v0,8
    3da8:	ae0d02d0 	sw	t5,720(s0)
    3dac:	ac4e0000 	sw	t6,0(v0)
    3db0:	8fb80094 	lw	t8,148(sp)
    3db4:	3c050000 	lui	a1,0x0
    3db8:	24a50000 	addiu	a1,a1,0
    3dbc:	8f040000 	lw	a0,0(t8)
    3dc0:	24060a65 	li	a2,2661
    3dc4:	0c000000 	jal	0 <func_80970F50>
    3dc8:	afa20060 	sw	v0,96(sp)
    3dcc:	8fa30060 	lw	v1,96(sp)
    3dd0:	3c040600 	lui	a0,0x600
    3dd4:	24840980 	addiu	a0,a0,2432
    3dd8:	ac620004 	sw	v0,4(v1)
    3ddc:	8e0202d0 	lw	v0,720(s0)
    3de0:	3c0fde00 	lui	t7,0xde00
    3de4:	24590008 	addiu	t9,v0,8
    3de8:	ae1902d0 	sw	t9,720(s0)
    3dec:	ac440004 	sw	a0,4(v0)
    3df0:	ac4f0000 	sw	t7,0(v0)
    3df4:	0c000000 	jal	0 <func_80970F50>
    3df8:	afa40048 	sw	a0,72(sp)
    3dfc:	0c000000 	jal	0 <func_80970F50>
    3e00:	00000000 	nop
    3e04:	3c010000 	lui	at,0x0
    3e08:	c42c0000 	lwc1	$f12,0(at)
    3e0c:	0c000000 	jal	0 <func_80970F50>
    3e10:	24050001 	li	a1,1
    3e14:	3c010000 	lui	at,0x0
    3e18:	c42c0000 	lwc1	$f12,0(at)
    3e1c:	0c000000 	jal	0 <func_80970F50>
    3e20:	24050001 	li	a1,1
    3e24:	44806000 	mtc1	zero,$f12
    3e28:	3c014316 	lui	at,0x4316
    3e2c:	44817000 	mtc1	at,$f14
    3e30:	44066000 	mfc1	a2,$f12
    3e34:	0c000000 	jal	0 <func_80970F50>
    3e38:	24070001 	li	a3,1
    3e3c:	8e0202d0 	lw	v0,720(s0)
    3e40:	3c0bda38 	lui	t3,0xda38
    3e44:	356b0003 	ori	t3,t3,0x3
    3e48:	244a0008 	addiu	t2,v0,8
    3e4c:	ae0a02d0 	sw	t2,720(s0)
    3e50:	ac4b0000 	sw	t3,0(v0)
    3e54:	8fac0094 	lw	t4,148(sp)
    3e58:	3c050000 	lui	a1,0x0
    3e5c:	24a50000 	addiu	a1,a1,0
    3e60:	8d840000 	lw	a0,0(t4)
    3e64:	24060a70 	li	a2,2672
    3e68:	0c000000 	jal	0 <func_80970F50>
    3e6c:	afa20058 	sw	v0,88(sp)
    3e70:	8fa30058 	lw	v1,88(sp)
    3e74:	3c0ede00 	lui	t6,0xde00
    3e78:	ac620004 	sw	v0,4(v1)
    3e7c:	8e0202d0 	lw	v0,720(s0)
    3e80:	244d0008 	addiu	t5,v0,8
    3e84:	ae0d02d0 	sw	t5,720(s0)
    3e88:	ac4e0000 	sw	t6,0(v0)
    3e8c:	8fb80048 	lw	t8,72(sp)
    3e90:	0c000000 	jal	0 <func_80970F50>
    3e94:	ac580004 	sw	t8,4(v0)
    3e98:	0c000000 	jal	0 <func_80970F50>
    3e9c:	00000000 	nop
    3ea0:	3c010000 	lui	at,0x0
    3ea4:	c42c0000 	lwc1	$f12,0(at)
    3ea8:	0c000000 	jal	0 <func_80970F50>
    3eac:	24050001 	li	a1,1
    3eb0:	3c010000 	lui	at,0x0
    3eb4:	c42c0000 	lwc1	$f12,0(at)
    3eb8:	0c000000 	jal	0 <func_80970F50>
    3ebc:	24050001 	li	a1,1
    3ec0:	3c014316 	lui	at,0x4316
    3ec4:	44817000 	mtc1	at,$f14
    3ec8:	44806000 	mtc1	zero,$f12
    3ecc:	24060000 	li	a2,0
    3ed0:	0c000000 	jal	0 <func_80970F50>
    3ed4:	24070001 	li	a3,1
    3ed8:	8e0202d0 	lw	v0,720(s0)
    3edc:	3c0fda38 	lui	t7,0xda38
    3ee0:	35ef0003 	ori	t7,t7,0x3
    3ee4:	24590008 	addiu	t9,v0,8
    3ee8:	ae1902d0 	sw	t9,720(s0)
    3eec:	ac4f0000 	sw	t7,0(v0)
    3ef0:	8faa0094 	lw	t2,148(sp)
    3ef4:	3c050000 	lui	a1,0x0
    3ef8:	24a50000 	addiu	a1,a1,0
    3efc:	8d440000 	lw	a0,0(t2)
    3f00:	24060a7b 	li	a2,2683
    3f04:	0c000000 	jal	0 <func_80970F50>
    3f08:	afa20050 	sw	v0,80(sp)
    3f0c:	8fa30050 	lw	v1,80(sp)
    3f10:	3c0cde00 	lui	t4,0xde00
    3f14:	ac620004 	sw	v0,4(v1)
    3f18:	8e0202d0 	lw	v0,720(s0)
    3f1c:	244b0008 	addiu	t3,v0,8
    3f20:	ae0b02d0 	sw	t3,720(s0)
    3f24:	ac4c0000 	sw	t4,0(v0)
    3f28:	8fad0048 	lw	t5,72(sp)
    3f2c:	0c000000 	jal	0 <func_80970F50>
    3f30:	ac4d0004 	sw	t5,4(v0)
    3f34:	8fae0094 	lw	t6,148(sp)
    3f38:	3c060000 	lui	a2,0x0
    3f3c:	24c60000 	addiu	a2,a2,0
    3f40:	27a40070 	addiu	a0,sp,112
    3f44:	24070a80 	li	a3,2688
    3f48:	0c000000 	jal	0 <func_80970F50>
    3f4c:	8dc50000 	lw	a1,0(t6)
    3f50:	8fbf003c 	lw	ra,60(sp)
    3f54:	8fb00038 	lw	s0,56(sp)
    3f58:	27bd0090 	addiu	sp,sp,144
    3f5c:	03e00008 	jr	ra
    3f60:	00000000 	nop

00003f64 <func_80974EB4>:
    3f64:	27bdff80 	addiu	sp,sp,-128
    3f68:	3c010001 	lui	at,0x1
    3f6c:	afbf003c 	sw	ra,60(sp)
    3f70:	afb10038 	sw	s1,56(sp)
    3f74:	afb00034 	sw	s0,52(sp)
    3f78:	afa40080 	sw	a0,128(sp)
    3f7c:	00a11021 	addu	v0,a1,at
    3f80:	8c4e1de4 	lw	t6,7652(v0)
    3f84:	00a08825 	move	s1,a1
    3f88:	3c060000 	lui	a2,0x0
    3f8c:	afae0078 	sw	t6,120(sp)
    3f90:	8ca50000 	lw	a1,0(a1)
    3f94:	afa20048 	sw	v0,72(sp)
    3f98:	24c60000 	addiu	a2,a2,0
    3f9c:	27a40064 	addiu	a0,sp,100
    3fa0:	24070a8d 	li	a3,2701
    3fa4:	0c000000 	jal	0 <func_80970F50>
    3fa8:	00a08025 	move	s0,a1
    3fac:	8e0202d0 	lw	v0,720(s0)
    3fb0:	3c18fa00 	lui	t8,0xfa00
    3fb4:	3c19ffc8 	lui	t9,0xffc8
    3fb8:	244f0008 	addiu	t7,v0,8
    3fbc:	ae0f02d0 	sw	t7,720(s0)
    3fc0:	373900ff 	ori	t9,t9,0xff
    3fc4:	37184040 	ori	t8,t8,0x4040
    3fc8:	ac580000 	sw	t8,0(v0)
    3fcc:	ac590004 	sw	t9,4(v0)
    3fd0:	8e0202d0 	lw	v0,720(s0)
    3fd4:	3c0aff00 	lui	t2,0xff00
    3fd8:	354a00ff 	ori	t2,t2,0xff
    3fdc:	24480008 	addiu	t0,v0,8
    3fe0:	ae0802d0 	sw	t0,720(s0)
    3fe4:	3c09fb00 	lui	t1,0xfb00
    3fe8:	ac490000 	sw	t1,0(v0)
    3fec:	ac4a0004 	sw	t2,4(v0)
    3ff0:	0c000000 	jal	0 <func_80970F50>
    3ff4:	8e240000 	lw	a0,0(s1)
    3ff8:	8e0202d0 	lw	v0,720(s0)
    3ffc:	3c0cda38 	lui	t4,0xda38
    4000:	358c0003 	ori	t4,t4,0x3
    4004:	244b0008 	addiu	t3,v0,8
    4008:	ae0b02d0 	sw	t3,720(s0)
    400c:	ac4c0000 	sw	t4,0(v0)
    4010:	8e240000 	lw	a0,0(s1)
    4014:	3c050000 	lui	a1,0x0
    4018:	24a50000 	addiu	a1,a1,0
    401c:	24060a95 	li	a2,2709
    4020:	0c000000 	jal	0 <func_80970F50>
    4024:	afa20058 	sw	v0,88(sp)
    4028:	8fa30058 	lw	v1,88(sp)
    402c:	3c0eda38 	lui	t6,0xda38
    4030:	35ce0001 	ori	t6,t6,0x1
    4034:	ac620004 	sw	v0,4(v1)
    4038:	8e0202d0 	lw	v0,720(s0)
    403c:	3c08db06 	lui	t0,0xdb06
    4040:	35080020 	ori	t0,t0,0x20
    4044:	244d0008 	addiu	t5,v0,8
    4048:	ae0d02d0 	sw	t5,720(s0)
    404c:	ac4e0000 	sw	t6,0(v0)
    4050:	8faf0048 	lw	t7,72(sp)
    4054:	24090020 	li	t1,32
    4058:	240a0020 	li	t2,32
    405c:	8df81de0 	lw	t8,7648(t7)
    4060:	240f007f 	li	t7,127
    4064:	240b0001 	li	t3,1
    4068:	ac580004 	sw	t8,4(v0)
    406c:	8e0202d0 	lw	v0,720(s0)
    4070:	00002825 	move	a1,zero
    4074:	00003025 	move	a2,zero
    4078:	24590008 	addiu	t9,v0,8
    407c:	ae1902d0 	sw	t9,720(s0)
    4080:	ac480000 	sw	t0,0(v0)
    4084:	8fac0078 	lw	t4,120(sp)
    4088:	8e240000 	lw	a0,0(s1)
    408c:	24080020 	li	t0,32
    4090:	000c6880 	sll	t5,t4,0x2
    4094:	01ac6821 	addu	t5,t5,t4
    4098:	000d6880 	sll	t5,t5,0x2
    409c:	31ae007f 	andi	t6,t5,0x7f
    40a0:	01eec023 	subu	t8,t7,t6
    40a4:	24190020 	li	t9,32
    40a8:	afb90024 	sw	t9,36(sp)
    40ac:	afb80020 	sw	t8,32(sp)
    40b0:	afa80028 	sw	t0,40(sp)
    40b4:	afa0001c 	sw	zero,28(sp)
    40b8:	afab0018 	sw	t3,24(sp)
    40bc:	afaa0014 	sw	t2,20(sp)
    40c0:	afa90010 	sw	t1,16(sp)
    40c4:	00003825 	move	a3,zero
    40c8:	0c000000 	jal	0 <func_80970F50>
    40cc:	afa20050 	sw	v0,80(sp)
    40d0:	8fa30050 	lw	v1,80(sp)
    40d4:	3c0b0600 	lui	t3,0x600
    40d8:	256b0040 	addiu	t3,t3,64
    40dc:	ac620004 	sw	v0,4(v1)
    40e0:	8e0202d0 	lw	v0,720(s0)
    40e4:	3c0ade00 	lui	t2,0xde00
    40e8:	3c060000 	lui	a2,0x0
    40ec:	24490008 	addiu	t1,v0,8
    40f0:	ae0902d0 	sw	t1,720(s0)
    40f4:	ac4b0004 	sw	t3,4(v0)
    40f8:	ac4a0000 	sw	t2,0(v0)
    40fc:	8e250000 	lw	a1,0(s1)
    4100:	24c60000 	addiu	a2,a2,0
    4104:	27a40064 	addiu	a0,sp,100
    4108:	0c000000 	jal	0 <func_80970F50>
    410c:	24070aa3 	li	a3,2723
    4110:	8fbf003c 	lw	ra,60(sp)
    4114:	8fb00034 	lw	s0,52(sp)
    4118:	8fb10038 	lw	s1,56(sp)
    411c:	03e00008 	jr	ra
    4120:	27bd0080 	addiu	sp,sp,128

00004124 <func_80975074>:
    4124:	27bdff78 	addiu	sp,sp,-136
    4128:	3c0f0001 	lui	t7,0x1
    412c:	afbf003c 	sw	ra,60(sp)
    4130:	afb10038 	sw	s1,56(sp)
    4134:	afb00034 	sw	s0,52(sp)
    4138:	afa5008c 	sw	a1,140(sp)
    413c:	01e57821 	addu	t7,t7,a1
    4140:	8def1de4 	lw	t7,7652(t7)
    4144:	00808025 	move	s0,a0
    4148:	3c060000 	lui	a2,0x0
    414c:	afaf007c 	sw	t7,124(sp)
    4150:	8ca50000 	lw	a1,0(a1)
    4154:	24c60000 	addiu	a2,a2,0
    4158:	27a40068 	addiu	a0,sp,104
    415c:	24070ab1 	li	a3,2737
    4160:	0c000000 	jal	0 <func_80970F50>
    4164:	00a08825 	move	s1,a1
    4168:	02002025 	move	a0,s0
    416c:	8fa5008c 	lw	a1,140(sp)
    4170:	0c000000 	jal	0 <func_80970F50>
    4174:	24060002 	li	a2,2
    4178:	144000e6 	bnez	v0,4514 <func_80975074+0x3f0>
    417c:	3c020000 	lui	v0,0x0
    4180:	24420000 	addiu	v0,v0,0
    4184:	8c580000 	lw	t8,0(v0)
    4188:	240100a0 	li	at,160
    418c:	57010014 	bnel	t8,at,41e0 <func_80975074+0xbc>
    4190:	260400e4 	addiu	a0,s0,228
    4194:	8c591360 	lw	t9,4960(v0)
    4198:	24010004 	li	at,4
    419c:	8fa9008c 	lw	t1,140(sp)
    41a0:	1721000a 	bne	t9,at,41cc <func_80975074+0xa8>
    41a4:	260400e4 	addiu	a0,s0,228
    41a8:	952a1d74 	lhu	t2,7540(t1)
    41ac:	260400e4 	addiu	a0,s0,228
    41b0:	294102a9 	slti	at,t2,681
    41b4:	5020000d 	beqzl	at,41ec <func_80975074+0xc8>
    41b8:	8e2202d0 	lw	v0,720(s1)
    41bc:	0c000000 	jal	0 <func_80970F50>
    41c0:	2405208b 	li	a1,8331
    41c4:	10000009 	b	41ec <func_80975074+0xc8>
    41c8:	8e2202d0 	lw	v0,720(s1)
    41cc:	0c000000 	jal	0 <func_80970F50>
    41d0:	2405208b 	li	a1,8331
    41d4:	10000005 	b	41ec <func_80975074+0xc8>
    41d8:	8e2202d0 	lw	v0,720(s1)
    41dc:	260400e4 	addiu	a0,s0,228
    41e0:	0c000000 	jal	0 <func_80970F50>
    41e4:	2405208b 	li	a1,8331
    41e8:	8e2202d0 	lw	v0,720(s1)
    41ec:	8fa8007c 	lw	t0,124(sp)
    41f0:	3c0cdb06 	lui	t4,0xdb06
    41f4:	244b0008 	addiu	t3,v0,8
    41f8:	ae2b02d0 	sw	t3,720(s1)
    41fc:	358c0020 	ori	t4,t4,0x20
    4200:	ac4c0000 	sw	t4,0(v0)
    4204:	8fad008c 	lw	t5,140(sp)
    4208:	000850c0 	sll	t2,t0,0x3
    420c:	01485021 	addu	t2,t2,t0
    4210:	8da40000 	lw	a0,0(t5)
    4214:	000a5080 	sll	t2,t2,0x2
    4218:	01485023 	subu	t2,t2,t0
    421c:	000a5040 	sll	t2,t2,0x1
    4220:	240f0080 	li	t7,128
    4224:	240e0040 	li	t6,64
    4228:	afae0014 	sw	t6,20(sp)
    422c:	afaf0010 	sw	t7,16(sp)
    4230:	314b01ff 	andi	t3,t2,0x1ff
    4234:	240c01ff 	li	t4,511
    4238:	0008c840 	sll	t9,t0,0x1
    423c:	332900ff 	andi	t1,t9,0xff
    4240:	018b6823 	subu	t5,t4,t3
    4244:	240f0040 	li	t7,64
    4248:	240e0020 	li	t6,32
    424c:	24180001 	li	t8,1
    4250:	00083080 	sll	a2,t0,0x2
    4254:	30c601ff 	andi	a2,a2,0x1ff
    4258:	afb80018 	sw	t8,24(sp)
    425c:	afae0028 	sw	t6,40(sp)
    4260:	afaf0024 	sw	t7,36(sp)
    4264:	afad0020 	sw	t5,32(sp)
    4268:	afa9001c 	sw	t1,28(sp)
    426c:	00002825 	move	a1,zero
    4270:	00003825 	move	a3,zero
    4274:	0c000000 	jal	0 <func_80970F50>
    4278:	afa20064 	sw	v0,100(sp)
    427c:	8fa30064 	lw	v1,100(sp)
    4280:	3c19db06 	lui	t9,0xdb06
    4284:	37390024 	ori	t9,t9,0x24
    4288:	ac620004 	sw	v0,4(v1)
    428c:	8e2202d0 	lw	v0,720(s1)
    4290:	240a0010 	li	t2,16
    4294:	240c0060 	li	t4,96
    4298:	24580008 	addiu	t8,v0,8
    429c:	ae3802d0 	sw	t8,720(s1)
    42a0:	ac590000 	sw	t9,0(v0)
    42a4:	8fa9008c 	lw	t1,140(sp)
    42a8:	8fad007c 	lw	t5,124(sp)
    42ac:	240b0001 	li	t3,1
    42b0:	8d240000 	lw	a0,0(t1)
    42b4:	000dc100 	sll	t8,t5,0x4
    42b8:	030dc023 	subu	t8,t8,t5
    42bc:	000d7880 	sll	t7,t5,0x2
    42c0:	0018c040 	sll	t8,t8,0x1
    42c4:	01ed7821 	addu	t7,t7,t5
    42c8:	000f7840 	sll	t7,t7,0x1
    42cc:	331901ff 	andi	t9,t8,0x1ff
    42d0:	afab0018 	sw	t3,24(sp)
    42d4:	afac0014 	sw	t4,20(sp)
    42d8:	afaa0010 	sw	t2,16(sp)
    42dc:	240900ff 	li	t1,255
    42e0:	01395023 	subu	t2,t1,t9
    42e4:	240c0008 	li	t4,8
    42e8:	240b0020 	li	t3,32
    42ec:	31ee00ff 	andi	t6,t7,0xff
    42f0:	afae001c 	sw	t6,28(sp)
    42f4:	afab0028 	sw	t3,40(sp)
    42f8:	afac0024 	sw	t4,36(sp)
    42fc:	afaa0020 	sw	t2,32(sp)
    4300:	00002825 	move	a1,zero
    4304:	00003025 	move	a2,zero
    4308:	00003825 	move	a3,zero
    430c:	0c000000 	jal	0 <func_80970F50>
    4310:	afa20060 	sw	v0,96(sp)
    4314:	8fa30060 	lw	v1,96(sp)
    4318:	3c0efa00 	lui	t6,0xfa00
    431c:	35ce8080 	ori	t6,t6,0x8080
    4320:	ac620004 	sw	v0,4(v1)
    4324:	8e2202d0 	lw	v0,720(s1)
    4328:	244f0008 	addiu	t7,v0,8
    432c:	ae2f02d0 	sw	t7,720(s1)
    4330:	ac4e0000 	sw	t6,0(v0)
    4334:	920a0178 	lbu	t2,376(s0)
    4338:	9218017a 	lbu	t8,378(s0)
    433c:	920e0179 	lbu	t6,377(s0)
    4340:	000a6600 	sll	t4,t2,0x18
    4344:	00184a00 	sll	t1,t8,0x8
    4348:	012c5825 	or	t3,t1,t4
    434c:	000e6c00 	sll	t5,t6,0x10
    4350:	016dc025 	or	t8,t3,t5
    4354:	371900ff 	ori	t9,t8,0xff
    4358:	ac590004 	sw	t9,4(v0)
    435c:	8e2202d0 	lw	v0,720(s1)
    4360:	3c09fb00 	lui	t1,0xfb00
    4364:	244a0008 	addiu	t2,v0,8
    4368:	ae2a02d0 	sw	t2,720(s1)
    436c:	ac490000 	sw	t1,0(v0)
    4370:	920d017b 	lbu	t5,379(s0)
    4374:	920f017d 	lbu	t7,381(s0)
    4378:	9209017c 	lbu	t1,380(s0)
    437c:	000dc600 	sll	t8,t5,0x18
    4380:	000f7200 	sll	t6,t7,0x8
    4384:	01d8c825 	or	t9,t6,t8
    4388:	00096400 	sll	t4,t1,0x10
    438c:	032c7825 	or	t7,t9,t4
    4390:	35eb00ff 	ori	t3,t7,0xff
    4394:	ac4b0004 	sw	t3,4(v0)
    4398:	8fad008c 	lw	t5,140(sp)
    439c:	0c000000 	jal	0 <func_80970F50>
    43a0:	8da40000 	lw	a0,0(t5)
    43a4:	0c000000 	jal	0 <func_80970F50>
    43a8:	00000000 	nop
    43ac:	8e2202d0 	lw	v0,720(s1)
    43b0:	3c18da38 	lui	t8,0xda38
    43b4:	37180003 	ori	t8,t8,0x3
    43b8:	244e0008 	addiu	t6,v0,8
    43bc:	ae2e02d0 	sw	t6,720(s1)
    43c0:	ac580000 	sw	t8,0(v0)
    43c4:	8faa008c 	lw	t2,140(sp)
    43c8:	3c050000 	lui	a1,0x0
    43cc:	24a50000 	addiu	a1,a1,0
    43d0:	8d440000 	lw	a0,0(t2)
    43d4:	24060af1 	li	a2,2801
    43d8:	0c000000 	jal	0 <func_80970F50>
    43dc:	afa20054 	sw	v0,84(sp)
    43e0:	8fa30054 	lw	v1,84(sp)
    43e4:	3c0c0600 	lui	t4,0x600
    43e8:	258c0330 	addiu	t4,t4,816
    43ec:	ac620004 	sw	v0,4(v1)
    43f0:	8e2202d0 	lw	v0,720(s1)
    43f4:	3c19de00 	lui	t9,0xde00
    43f8:	24490008 	addiu	t1,v0,8
    43fc:	ae2902d0 	sw	t1,720(s1)
    4400:	ac4c0004 	sw	t4,4(v0)
    4404:	ac590000 	sw	t9,0(v0)
    4408:	8faf008c 	lw	t7,140(sp)
    440c:	0c000000 	jal	0 <func_80970F50>
    4410:	8de40000 	lw	a0,0(t7)
    4414:	02002025 	move	a0,s0
    4418:	8fa5008c 	lw	a1,140(sp)
    441c:	0c000000 	jal	0 <func_80970F50>
    4420:	00003025 	move	a2,zero
    4424:	0c000000 	jal	0 <func_80970F50>
    4428:	00000000 	nop
    442c:	920b0186 	lbu	t3,390(s0)
    4430:	256d0001 	addiu	t5,t3,1
    4434:	31a200ff 	andi	v0,t5,0xff
    4438:	28410079 	slti	at,v0,121
    443c:	14200003 	bnez	at,444c <func_80975074+0x328>
    4440:	a20d0186 	sb	t5,390(s0)
    4444:	a2000186 	sb	zero,390(s0)
    4448:	300200ff 	andi	v0,zero,0xff
    444c:	44822000 	mtc1	v0,$f4
    4450:	3c014040 	lui	at,0x4040
    4454:	44814000 	mtc1	at,$f8
    4458:	468021a0 	cvt.s.w	$f6,$f4
    445c:	3c010000 	lui	at,0x0
    4460:	c4300000 	lwc1	$f16,0(at)
    4464:	24050001 	li	a1,1
    4468:	46083282 	mul.s	$f10,$f6,$f8
    446c:	00000000 	nop
    4470:	46105302 	mul.s	$f12,$f10,$f16
    4474:	0c000000 	jal	0 <func_80970F50>
    4478:	00000000 	nop
    447c:	3c010000 	lui	at,0x0
    4480:	c42c0000 	lwc1	$f12,0(at)
    4484:	0c000000 	jal	0 <func_80970F50>
    4488:	24050001 	li	a1,1
    448c:	44806000 	mtc1	zero,$f12
    4490:	3c01c30c 	lui	at,0xc30c
    4494:	44817000 	mtc1	at,$f14
    4498:	44066000 	mfc1	a2,$f12
    449c:	0c000000 	jal	0 <func_80970F50>
    44a0:	24070001 	li	a3,1
    44a4:	3c010000 	lui	at,0x0
    44a8:	c42c0000 	lwc1	$f12,0(at)
    44ac:	24070001 	li	a3,1
    44b0:	44066000 	mfc1	a2,$f12
    44b4:	0c000000 	jal	0 <func_80970F50>
    44b8:	46006386 	mov.s	$f14,$f12
    44bc:	8e2202c0 	lw	v0,704(s1)
    44c0:	3c18da38 	lui	t8,0xda38
    44c4:	37180003 	ori	t8,t8,0x3
    44c8:	244e0008 	addiu	t6,v0,8
    44cc:	ae2e02c0 	sw	t6,704(s1)
    44d0:	ac580000 	sw	t8,0(v0)
    44d4:	8faa008c 	lw	t2,140(sp)
    44d8:	3c050000 	lui	a1,0x0
    44dc:	24a50000 	addiu	a1,a1,0
    44e0:	24060b08 	li	a2,2824
    44e4:	00408025 	move	s0,v0
    44e8:	0c000000 	jal	0 <func_80970F50>
    44ec:	8d440000 	lw	a0,0(t2)
    44f0:	ae020004 	sw	v0,4(s0)
    44f4:	8e2202c0 	lw	v0,704(s1)
    44f8:	3c0c0600 	lui	t4,0x600
    44fc:	258c3c50 	addiu	t4,t4,15440
    4500:	24490008 	addiu	t1,v0,8
    4504:	ae2902c0 	sw	t1,704(s1)
    4508:	3c19de00 	lui	t9,0xde00
    450c:	ac590000 	sw	t9,0(v0)
    4510:	ac4c0004 	sw	t4,4(v0)
    4514:	8faf008c 	lw	t7,140(sp)
    4518:	3c060000 	lui	a2,0x0
    451c:	24c60000 	addiu	a2,a2,0
    4520:	27a40068 	addiu	a0,sp,104
    4524:	24070b0d 	li	a3,2829
    4528:	0c000000 	jal	0 <func_80970F50>
    452c:	8de50000 	lw	a1,0(t7)
    4530:	8fbf003c 	lw	ra,60(sp)
    4534:	8fb00034 	lw	s0,52(sp)
    4538:	8fb10038 	lw	s1,56(sp)
    453c:	03e00008 	jr	ra
    4540:	27bd0088 	addiu	sp,sp,136

00004544 <func_80975494>:
    4544:	27bdff98 	addiu	sp,sp,-104
    4548:	afbf001c 	sw	ra,28(sp)
    454c:	afb10018 	sw	s1,24(sp)
    4550:	afb00014 	sw	s0,20(sp)
    4554:	afa5006c 	sw	a1,108(sp)
    4558:	8ca50000 	lw	a1,0(a1)
    455c:	00808025 	move	s0,a0
    4560:	3c060000 	lui	a2,0x0
    4564:	24c60000 	addiu	a2,a2,0
    4568:	27a40048 	addiu	a0,sp,72
    456c:	24070b1a 	li	a3,2842
    4570:	0c000000 	jal	0 <func_80970F50>
    4574:	00a08825 	move	s1,a1
    4578:	02002025 	move	a0,s0
    457c:	8fa5006c 	lw	a1,108(sp)
    4580:	0c000000 	jal	0 <func_80970F50>
    4584:	24060001 	li	a2,1
    4588:	54400085 	bnezl	v0,47a0 <func_80975494+0x25c>
    458c:	8fae006c 	lw	t6,108(sp)
    4590:	920f0186 	lbu	t7,390(s0)
    4594:	8fb9006c 	lw	t9,108(sp)
    4598:	15e00003 	bnez	t7,45a8 <func_80975494+0x64>
    459c:	24180001 	li	t8,1
    45a0:	1000007e 	b	479c <func_80975494+0x258>
    45a4:	a2180186 	sb	t8,390(s0)
    45a8:	0c000000 	jal	0 <func_80970F50>
    45ac:	8f240000 	lw	a0,0(t9)
    45b0:	8e2202d0 	lw	v0,720(s1)
    45b4:	3c09fa00 	lui	t1,0xfa00
    45b8:	35290080 	ori	t1,t1,0x80
    45bc:	24480008 	addiu	t0,v0,8
    45c0:	ae2802d0 	sw	t0,720(s1)
    45c4:	ac490000 	sw	t1,0(v0)
    45c8:	920d0178 	lbu	t5,376(s0)
    45cc:	92190179 	lbu	t9,377(s0)
    45d0:	920b0184 	lbu	t3,388(s0)
    45d4:	920c017a 	lbu	t4,378(s0)
    45d8:	000d7600 	sll	t6,t5,0x18
    45dc:	00194400 	sll	t0,t9,0x10
    45e0:	016e7825 	or	t7,t3,t6
    45e4:	01e84825 	or	t1,t7,t0
    45e8:	000c6a00 	sll	t5,t4,0x8
    45ec:	012d5825 	or	t3,t1,t5
    45f0:	ac4b0004 	sw	t3,4(v0)
    45f4:	8e2202d0 	lw	v0,720(s1)
    45f8:	3c18fb00 	lui	t8,0xfb00
    45fc:	3c010000 	lui	at,0x0
    4600:	244e0008 	addiu	t6,v0,8
    4604:	ae2e02d0 	sw	t6,720(s1)
    4608:	ac580000 	sw	t8,0(v0)
    460c:	920c017b 	lbu	t4,379(s0)
    4610:	920f017d 	lbu	t7,381(s0)
    4614:	920e017c 	lbu	t6,380(s0)
    4618:	000c4e00 	sll	t1,t4,0x18
    461c:	000f4200 	sll	t0,t7,0x8
    4620:	01096825 	or	t5,t0,t1
    4624:	000ec400 	sll	t8,t6,0x10
    4628:	01b8c825 	or	t9,t5,t8
    462c:	372f00ff 	ori	t7,t9,0xff
    4630:	ac4f0004 	sw	t7,4(v0)
    4634:	920a0185 	lbu	t2,389(s0)
    4638:	c4280000 	lwc1	$f8,0(at)
    463c:	3c013f80 	lui	at,0x3f80
    4640:	314c0001 	andi	t4,t2,0x1
    4644:	448c2000 	mtc1	t4,$f4
    4648:	44818000 	mtc1	at,$f16
    464c:	24070001 	li	a3,1
    4650:	468021a0 	cvt.s.w	$f6,$f4
    4654:	46083282 	mul.s	$f10,$f6,$f8
    4658:	46105300 	add.s	$f12,$f10,$f16
    465c:	44066000 	mfc1	a2,$f12
    4660:	0c000000 	jal	0 <func_80970F50>
    4664:	46006386 	mov.s	$f14,$f12
    4668:	0c000000 	jal	0 <func_80970F50>
    466c:	00000000 	nop
    4670:	8fa4006c 	lw	a0,108(sp)
    4674:	3c010001 	lui	at,0x1
    4678:	34211da0 	ori	at,at,0x1da0
    467c:	00812021 	addu	a0,a0,at
    4680:	afa40028 	sw	a0,40(sp)
    4684:	0c000000 	jal	0 <func_80970F50>
    4688:	24050001 	li	a1,1
    468c:	86080188 	lh	t0,392(s0)
    4690:	3c010000 	lui	at,0x0
    4694:	c4260000 	lwc1	$f6,0(at)
    4698:	44889000 	mtc1	t0,$f18
    469c:	24050001 	li	a1,1
    46a0:	46809120 	cvt.s.w	$f4,$f18
    46a4:	46062302 	mul.s	$f12,$f4,$f6
    46a8:	0c000000 	jal	0 <func_80970F50>
    46ac:	00000000 	nop
    46b0:	8e2202d0 	lw	v0,720(s1)
    46b4:	3c0bda38 	lui	t3,0xda38
    46b8:	356b0003 	ori	t3,t3,0x3
    46bc:	24490008 	addiu	t1,v0,8
    46c0:	ae2902d0 	sw	t1,720(s1)
    46c4:	ac4b0000 	sw	t3,0(v0)
    46c8:	8fae006c 	lw	t6,108(sp)
    46cc:	3c050000 	lui	a1,0x0
    46d0:	24a50000 	addiu	a1,a1,0
    46d4:	8dc40000 	lw	a0,0(t6)
    46d8:	24060b32 	li	a2,2866
    46dc:	0c000000 	jal	0 <func_80970F50>
    46e0:	afa2003c 	sw	v0,60(sp)
    46e4:	8fa3003c 	lw	v1,60(sp)
    46e8:	3c040401 	lui	a0,0x401
    46ec:	24840130 	addiu	a0,a0,304
    46f0:	ac620004 	sw	v0,4(v1)
    46f4:	8e2202d0 	lw	v0,720(s1)
    46f8:	3c18de00 	lui	t8,0xde00
    46fc:	244d0008 	addiu	t5,v0,8
    4700:	ae2d02d0 	sw	t5,720(s1)
    4704:	ac440004 	sw	a0,4(v0)
    4708:	ac580000 	sw	t8,0(v0)
    470c:	0c000000 	jal	0 <func_80970F50>
    4710:	afa4002c 	sw	a0,44(sp)
    4714:	8fa40028 	lw	a0,40(sp)
    4718:	0c000000 	jal	0 <func_80970F50>
    471c:	24050001 	li	a1,1
    4720:	86190188 	lh	t9,392(s0)
    4724:	3c010000 	lui	at,0x0
    4728:	c4320000 	lwc1	$f18,0(at)
    472c:	44994000 	mtc1	t9,$f8
    4730:	24050001 	li	a1,1
    4734:	468042a0 	cvt.s.w	$f10,$f8
    4738:	46005407 	neg.s	$f16,$f10
    473c:	46128302 	mul.s	$f12,$f16,$f18
    4740:	0c000000 	jal	0 <func_80970F50>
    4744:	00000000 	nop
    4748:	8e2202d0 	lw	v0,720(s1)
    474c:	3c0ada38 	lui	t2,0xda38
    4750:	354a0003 	ori	t2,t2,0x3
    4754:	244f0008 	addiu	t7,v0,8
    4758:	ae2f02d0 	sw	t7,720(s1)
    475c:	ac4a0000 	sw	t2,0(v0)
    4760:	8fac006c 	lw	t4,108(sp)
    4764:	3c050000 	lui	a1,0x0
    4768:	24a50000 	addiu	a1,a1,0
    476c:	24060b3a 	li	a2,2874
    4770:	00408025 	move	s0,v0
    4774:	0c000000 	jal	0 <func_80970F50>
    4778:	8d840000 	lw	a0,0(t4)
    477c:	ae020004 	sw	v0,4(s0)
    4780:	8e2202d0 	lw	v0,720(s1)
    4784:	3c09de00 	lui	t1,0xde00
    4788:	24480008 	addiu	t0,v0,8
    478c:	ae2802d0 	sw	t0,720(s1)
    4790:	ac490000 	sw	t1,0(v0)
    4794:	8fab002c 	lw	t3,44(sp)
    4798:	ac4b0004 	sw	t3,4(v0)
    479c:	8fae006c 	lw	t6,108(sp)
    47a0:	3c060000 	lui	a2,0x0
    47a4:	24c60000 	addiu	a2,a2,0
    47a8:	27a40048 	addiu	a0,sp,72
    47ac:	24070b41 	li	a3,2881
    47b0:	0c000000 	jal	0 <func_80970F50>
    47b4:	8dc50000 	lw	a1,0(t6)
    47b8:	8fbf001c 	lw	ra,28(sp)
    47bc:	8fb00014 	lw	s0,20(sp)
    47c0:	8fb10018 	lw	s1,24(sp)
    47c4:	03e00008 	jr	ra
    47c8:	27bd0068 	addiu	sp,sp,104

000047cc <func_8097571C>:
    47cc:	27bdffb0 	addiu	sp,sp,-80
    47d0:	afb10018 	sw	s1,24(sp)
    47d4:	00a08825 	move	s1,a1
    47d8:	afbf001c 	sw	ra,28(sp)
    47dc:	afb00014 	sw	s0,20(sp)
    47e0:	afa40050 	sw	a0,80(sp)
    47e4:	8ca50000 	lw	a1,0(a1)
    47e8:	3c060000 	lui	a2,0x0
    47ec:	24c60000 	addiu	a2,a2,0
    47f0:	27a40034 	addiu	a0,sp,52
    47f4:	24070b4c 	li	a3,2892
    47f8:	0c000000 	jal	0 <func_80970F50>
    47fc:	00a08025 	move	s0,a1
    4800:	8e0202d0 	lw	v0,720(s0)
    4804:	3c0ffa00 	lui	t7,0xfa00
    4808:	35ef8080 	ori	t7,t7,0x8080
    480c:	244e0008 	addiu	t6,v0,8
    4810:	ae0e02d0 	sw	t6,720(s0)
    4814:	ac4f0000 	sw	t7,0(v0)
    4818:	8fb80050 	lw	t8,80(sp)
    481c:	3c01bcff 	lui	at,0xbcff
    4820:	3421ff00 	ori	at,at,0xff00
    4824:	93080184 	lbu	t0,388(t8)
    4828:	3c0c0064 	lui	t4,0x64
    482c:	358cffff 	ori	t4,t4,0xffff
    4830:	01014825 	or	t1,t0,at
    4834:	ac490004 	sw	t1,4(v0)
    4838:	8e0202d0 	lw	v0,720(s0)
    483c:	3c0bfb00 	lui	t3,0xfb00
    4840:	244a0008 	addiu	t2,v0,8
    4844:	ae0a02d0 	sw	t2,720(s0)
    4848:	ac4c0004 	sw	t4,4(v0)
    484c:	ac4b0000 	sw	t3,0(v0)
    4850:	0c000000 	jal	0 <func_80970F50>
    4854:	8e240000 	lw	a0,0(s1)
    4858:	3c010001 	lui	at,0x1
    485c:	34211da0 	ori	at,at,0x1da0
    4860:	02212021 	addu	a0,s1,at
    4864:	0c000000 	jal	0 <func_80970F50>
    4868:	24050001 	li	a1,1
    486c:	8fad0050 	lw	t5,80(sp)
    4870:	3c010000 	lui	at,0x0
    4874:	c4280000 	lwc1	$f8,0(at)
    4878:	85ae0188 	lh	t6,392(t5)
    487c:	24050001 	li	a1,1
    4880:	448e2000 	mtc1	t6,$f4
    4884:	00000000 	nop
    4888:	468021a0 	cvt.s.w	$f6,$f4
    488c:	46083302 	mul.s	$f12,$f6,$f8
    4890:	0c000000 	jal	0 <func_80970F50>
    4894:	00000000 	nop
    4898:	8e0202d0 	lw	v0,720(s0)
    489c:	3c18da38 	lui	t8,0xda38
    48a0:	37180003 	ori	t8,t8,0x3
    48a4:	244f0008 	addiu	t7,v0,8
    48a8:	ae0f02d0 	sw	t7,720(s0)
    48ac:	ac580000 	sw	t8,0(v0)
    48b0:	8e240000 	lw	a0,0(s1)
    48b4:	3c050000 	lui	a1,0x0
    48b8:	24a50000 	addiu	a1,a1,0
    48bc:	24060b55 	li	a2,2901
    48c0:	0c000000 	jal	0 <func_80970F50>
    48c4:	afa20028 	sw	v0,40(sp)
    48c8:	8fa30028 	lw	v1,40(sp)
    48cc:	3c0c0401 	lui	t4,0x401
    48d0:	258c0130 	addiu	t4,t4,304
    48d4:	ac620004 	sw	v0,4(v1)
    48d8:	8fb90050 	lw	t9,80(sp)
    48dc:	3c0bde00 	lui	t3,0xde00
    48e0:	3c060000 	lui	a2,0x0
    48e4:	87280188 	lh	t0,392(t9)
    48e8:	24c60000 	addiu	a2,a2,0
    48ec:	27a40034 	addiu	a0,sp,52
    48f0:	250901f4 	addiu	t1,t0,500
    48f4:	a7290188 	sh	t1,392(t9)
    48f8:	8e0202d0 	lw	v0,720(s0)
    48fc:	24070b5b 	li	a3,2907
    4900:	244a0008 	addiu	t2,v0,8
    4904:	ae0a02d0 	sw	t2,720(s0)
    4908:	ac4c0004 	sw	t4,4(v0)
    490c:	ac4b0000 	sw	t3,0(v0)
    4910:	0c000000 	jal	0 <func_80970F50>
    4914:	8e250000 	lw	a1,0(s1)
    4918:	8fbf001c 	lw	ra,28(sp)
    491c:	8fb00014 	lw	s0,20(sp)
    4920:	8fb10018 	lw	s1,24(sp)
    4924:	03e00008 	jr	ra
    4928:	27bd0050 	addiu	sp,sp,80

0000492c <func_8097587C>:
    492c:	27bdff88 	addiu	sp,sp,-120
    4930:	3c0e0001 	lui	t6,0x1
    4934:	afbf003c 	sw	ra,60(sp)
    4938:	afb10038 	sw	s1,56(sp)
    493c:	afb00034 	sw	s0,52(sp)
    4940:	afa40078 	sw	a0,120(sp)
    4944:	01c57021 	addu	t6,t6,a1
    4948:	8dce1de4 	lw	t6,7652(t6)
    494c:	00a08825 	move	s1,a1
    4950:	3c060000 	lui	a2,0x0
    4954:	afae006c 	sw	t6,108(sp)
    4958:	8ca50000 	lw	a1,0(a1)
    495c:	24c60000 	addiu	a2,a2,0
    4960:	27a40058 	addiu	a0,sp,88
    4964:	24070b69 	li	a3,2921
    4968:	0c000000 	jal	0 <func_80970F50>
    496c:	00a08025 	move	s0,a1
    4970:	8e0202d0 	lw	v0,720(s0)
    4974:	3c18fa00 	lui	t8,0xfa00
    4978:	37184040 	ori	t8,t8,0x4040
    497c:	244f0008 	addiu	t7,v0,8
    4980:	ae0f02d0 	sw	t7,720(s0)
    4984:	ac580000 	sw	t8,0(v0)
    4988:	8fb90078 	lw	t9,120(sp)
    498c:	2401a000 	li	at,-24576
    4990:	3c0e32c8 	lui	t6,0x32c8
    4994:	932a0184 	lbu	t2,388(t9)
    4998:	35ce00ff 	ori	t6,t6,0xff
    499c:	3c0dfb00 	lui	t5,0xfb00
    49a0:	01415825 	or	t3,t2,at
    49a4:	ac4b0004 	sw	t3,4(v0)
    49a8:	8e0202d0 	lw	v0,720(s0)
    49ac:	244c0008 	addiu	t4,v0,8
    49b0:	ae0c02d0 	sw	t4,720(s0)
    49b4:	ac4e0004 	sw	t6,4(v0)
    49b8:	ac4d0000 	sw	t5,0(v0)
    49bc:	0c000000 	jal	0 <func_80970F50>
    49c0:	8e240000 	lw	a0,0(s1)
    49c4:	8e0202d0 	lw	v0,720(s0)
    49c8:	3c18da38 	lui	t8,0xda38
    49cc:	37180003 	ori	t8,t8,0x3
    49d0:	244f0008 	addiu	t7,v0,8
    49d4:	ae0f02d0 	sw	t7,720(s0)
    49d8:	ac580000 	sw	t8,0(v0)
    49dc:	8e240000 	lw	a0,0(s1)
    49e0:	3c050000 	lui	a1,0x0
    49e4:	24a50000 	addiu	a1,a1,0
    49e8:	24060b6f 	li	a2,2927
    49ec:	0c000000 	jal	0 <func_80970F50>
    49f0:	afa2004c 	sw	v0,76(sp)
    49f4:	8fa3004c 	lw	v1,76(sp)
    49f8:	3c09db06 	lui	t1,0xdb06
    49fc:	35290020 	ori	t1,t1,0x20
    4a00:	ac620004 	sw	v0,4(v1)
    4a04:	8e0202d0 	lw	v0,720(s0)
    4a08:	8fa8006c 	lw	t0,108(sp)
    4a0c:	240a0100 	li	t2,256
    4a10:	24590008 	addiu	t9,v0,8
    4a14:	ae1902d0 	sw	t9,720(s0)
    4a18:	ac490000 	sw	t1,0(v0)
    4a1c:	8e240000 	lw	a0,0(s1)
    4a20:	00087880 	sll	t7,t0,0x2
    4a24:	01e87823 	subu	t7,t7,t0
    4a28:	000f78c0 	sll	t7,t7,0x3
    4a2c:	01e87821 	addu	t7,t7,t0
    4a30:	00086880 	sll	t5,t0,0x2
    4a34:	000f7840 	sll	t7,t7,0x1
    4a38:	240b0040 	li	t3,64
    4a3c:	01a86821 	addu	t5,t5,t0
    4a40:	000d6840 	sll	t5,t5,0x1
    4a44:	afab0014 	sw	t3,20(sp)
    4a48:	31f801ff 	andi	t8,t7,0x1ff
    4a4c:	afaa0010 	sw	t2,16(sp)
    4a50:	24190200 	li	t9,512
    4a54:	00083080 	sll	a2,t0,0x2
    4a58:	03384823 	subu	t1,t9,t8
    4a5c:	240a0020 	li	t2,32
    4a60:	240b0010 	li	t3,16
    4a64:	31ae007f 	andi	t6,t5,0x7f
    4a68:	240c0001 	li	t4,1
    4a6c:	00c83021 	addu	a2,a2,t0
    4a70:	30c603ff 	andi	a2,a2,0x3ff
    4a74:	afac0018 	sw	t4,24(sp)
    4a78:	afae001c 	sw	t6,28(sp)
    4a7c:	afab0028 	sw	t3,40(sp)
    4a80:	afaa0024 	sw	t2,36(sp)
    4a84:	afa90020 	sw	t1,32(sp)
    4a88:	00002825 	move	a1,zero
    4a8c:	00003825 	move	a3,zero
    4a90:	0c000000 	jal	0 <func_80970F50>
    4a94:	afa20048 	sw	v0,72(sp)
    4a98:	8fa30048 	lw	v1,72(sp)
    4a9c:	3c0e0600 	lui	t6,0x600
    4aa0:	25ce11d0 	addiu	t6,t6,4560
    4aa4:	ac620004 	sw	v0,4(v1)
    4aa8:	8e0202d0 	lw	v0,720(s0)
    4aac:	3c0dde00 	lui	t5,0xde00
    4ab0:	3c060000 	lui	a2,0x0
    4ab4:	244c0008 	addiu	t4,v0,8
    4ab8:	ae0c02d0 	sw	t4,720(s0)
    4abc:	ac4e0004 	sw	t6,4(v0)
    4ac0:	ac4d0000 	sw	t5,0(v0)
    4ac4:	8e250000 	lw	a1,0(s1)
    4ac8:	24c60000 	addiu	a2,a2,0
    4acc:	27a40058 	addiu	a0,sp,88
    4ad0:	0c000000 	jal	0 <func_80970F50>
    4ad4:	24070b7e 	li	a3,2942
    4ad8:	8fbf003c 	lw	ra,60(sp)
    4adc:	8fb00034 	lw	s0,52(sp)
    4ae0:	8fb10038 	lw	s1,56(sp)
    4ae4:	03e00008 	jr	ra
    4ae8:	27bd0078 	addiu	sp,sp,120

00004aec <func_80975A3C>:
    4aec:	27bdff88 	addiu	sp,sp,-120
    4af0:	afbf003c 	sw	ra,60(sp)
    4af4:	afb10038 	sw	s1,56(sp)
    4af8:	afb00034 	sw	s0,52(sp)
    4afc:	afa40078 	sw	a0,120(sp)
    4b00:	848f0188 	lh	t7,392(a0)
    4b04:	00a08825 	move	s1,a1
    4b08:	3c060000 	lui	a2,0x0
    4b0c:	afaf006c 	sw	t7,108(sp)
    4b10:	8ca50000 	lw	a1,0(a1)
    4b14:	24c60000 	addiu	a2,a2,0
    4b18:	27a40058 	addiu	a0,sp,88
    4b1c:	24070b8c 	li	a3,2956
    4b20:	0c000000 	jal	0 <func_80970F50>
    4b24:	00a08025 	move	s0,a1
    4b28:	0c000000 	jal	0 <func_80970F50>
    4b2c:	8e240000 	lw	a0,0(s1)
    4b30:	8e0202d0 	lw	v0,720(s0)
    4b34:	3c19fa00 	lui	t9,0xfa00
    4b38:	37398080 	ori	t9,t9,0x8080
    4b3c:	24580008 	addiu	t8,v0,8
    4b40:	ae1802d0 	sw	t8,720(s0)
    4b44:	ac590000 	sw	t9,0(v0)
    4b48:	8fa90078 	lw	t1,120(sp)
    4b4c:	3c01aaff 	lui	at,0xaaff
    4b50:	3421ff00 	ori	at,at,0xff00
    4b54:	912b0185 	lbu	t3,389(t1)
    4b58:	3c0f0064 	lui	t7,0x64
    4b5c:	35efffff 	ori	t7,t7,0xffff
    4b60:	01616025 	or	t4,t3,at
    4b64:	ac4c0004 	sw	t4,4(v0)
    4b68:	8e0202d0 	lw	v0,720(s0)
    4b6c:	3c0efb00 	lui	t6,0xfb00
    4b70:	3c19da38 	lui	t9,0xda38
    4b74:	244d0008 	addiu	t5,v0,8
    4b78:	ae0d02d0 	sw	t5,720(s0)
    4b7c:	ac4e0000 	sw	t6,0(v0)
    4b80:	ac4f0004 	sw	t7,4(v0)
    4b84:	8e0202d0 	lw	v0,720(s0)
    4b88:	37390003 	ori	t9,t9,0x3
    4b8c:	3c050000 	lui	a1,0x0
    4b90:	24580008 	addiu	t8,v0,8
    4b94:	ae1802d0 	sw	t8,720(s0)
    4b98:	ac590000 	sw	t9,0(v0)
    4b9c:	8e240000 	lw	a0,0(s1)
    4ba0:	24a50000 	addiu	a1,a1,0
    4ba4:	24060b93 	li	a2,2963
    4ba8:	0c000000 	jal	0 <func_80970F50>
    4bac:	afa2004c 	sw	v0,76(sp)
    4bb0:	8fa3004c 	lw	v1,76(sp)
    4bb4:	3c0adb06 	lui	t2,0xdb06
    4bb8:	354a0020 	ori	t2,t2,0x20
    4bbc:	ac620004 	sw	v0,4(v1)
    4bc0:	8e0202d0 	lw	v0,720(s0)
    4bc4:	8fa8006c 	lw	t0,108(sp)
    4bc8:	240d01ff 	li	t5,511
    4bcc:	24490008 	addiu	t1,v0,8
    4bd0:	ae0902d0 	sw	t1,720(s0)
    4bd4:	ac4a0000 	sw	t2,0(v0)
    4bd8:	8e240000 	lw	a0,0(s1)
    4bdc:	00083080 	sll	a2,t0,0x2
    4be0:	00085840 	sll	t3,t0,0x1
    4be4:	316c01ff 	andi	t4,t3,0x1ff
    4be8:	24090400 	li	t1,1024
    4bec:	240e0010 	li	t6,16
    4bf0:	240f0080 	li	t7,128
    4bf4:	24180001 	li	t8,1
    4bf8:	24190008 	li	t9,8
    4bfc:	00c83021 	addu	a2,a2,t0
    4c00:	30c6003f 	andi	a2,a2,0x3f
    4c04:	afb90024 	sw	t9,36(sp)
    4c08:	afb80018 	sw	t8,24(sp)
    4c0c:	afaf0014 	sw	t7,20(sp)
    4c10:	afae0010 	sw	t6,16(sp)
    4c14:	afa90028 	sw	t1,40(sp)
    4c18:	01ac3823 	subu	a3,t5,t4
    4c1c:	afa00020 	sw	zero,32(sp)
    4c20:	afa0001c 	sw	zero,28(sp)
    4c24:	00002825 	move	a1,zero
    4c28:	0c000000 	jal	0 <func_80970F50>
    4c2c:	afa20048 	sw	v0,72(sp)
    4c30:	8fa30048 	lw	v1,72(sp)
    4c34:	3c0d0600 	lui	t5,0x600
    4c38:	25ad0190 	addiu	t5,t5,400
    4c3c:	ac620004 	sw	v0,4(v1)
    4c40:	8e0202d0 	lw	v0,720(s0)
    4c44:	3c0bde00 	lui	t3,0xde00
    4c48:	3c060000 	lui	a2,0x0
    4c4c:	244a0008 	addiu	t2,v0,8
    4c50:	ae0a02d0 	sw	t2,720(s0)
    4c54:	ac4d0004 	sw	t5,4(v0)
    4c58:	ac4b0000 	sw	t3,0(v0)
    4c5c:	8e250000 	lw	a1,0(s1)
    4c60:	24c60000 	addiu	a2,a2,0
    4c64:	27a40058 	addiu	a0,sp,88
    4c68:	0c000000 	jal	0 <func_80970F50>
    4c6c:	24070ba2 	li	a3,2978
    4c70:	8fbf003c 	lw	ra,60(sp)
    4c74:	8fb00034 	lw	s0,52(sp)
    4c78:	8fb10038 	lw	s1,56(sp)
    4c7c:	03e00008 	jr	ra
    4c80:	27bd0078 	addiu	sp,sp,120

00004c84 <func_80975BD4>:
    4c84:	27bdff48 	addiu	sp,sp,-184
    4c88:	3c020600 	lui	v0,0x600
    4c8c:	24420000 	addiu	v0,v0,0
    4c90:	00027100 	sll	t6,v0,0x4
    4c94:	000e7f02 	srl	t7,t6,0x1c
    4c98:	3c0d0001 	lui	t5,0x1
    4c9c:	afbf003c 	sw	ra,60(sp)
    4ca0:	afb00038 	sw	s0,56(sp)
    4ca4:	afa400b8 	sw	a0,184(sp)
    4ca8:	afa500bc 	sw	a1,188(sp)
    4cac:	000fc080 	sll	t8,t7,0x2
    4cb0:	3c190000 	lui	t9,0x0
    4cb4:	01a56821 	addu	t5,t5,a1
    4cb8:	8dad1de4 	lw	t5,7652(t5)
    4cbc:	0338c821 	addu	t9,t9,t8
    4cc0:	3c0100ff 	lui	at,0xff
    4cc4:	8f390000 	lw	t9,0(t9)
    4cc8:	3421ffff 	ori	at,at,0xffff
    4ccc:	00415824 	and	t3,v0,at
    4cd0:	afad00a8 	sw	t5,168(sp)
    4cd4:	8ca50000 	lw	a1,0(a1)
    4cd8:	3c018000 	lui	at,0x8000
    4cdc:	032b1821 	addu	v1,t9,t3
    4ce0:	00611821 	addu	v1,v1,at
    4ce4:	3c060000 	lui	a2,0x0
    4ce8:	24c60000 	addiu	a2,a2,0
    4cec:	afa300ac 	sw	v1,172(sp)
    4cf0:	27a40094 	addiu	a0,sp,148
    4cf4:	24070bb2 	li	a3,2994
    4cf8:	0c000000 	jal	0 <func_80970F50>
    4cfc:	00a08025 	move	s0,a1
    4d00:	3c0e0000 	lui	t6,0x0
    4d04:	8dce0000 	lw	t6,0(t6)
    4d08:	24010400 	li	at,1024
    4d0c:	8fa300ac 	lw	v1,172(sp)
    4d10:	15c10005 	bne	t6,at,4d28 <func_80975BD4+0xa4>
    4d14:	8faf00bc 	lw	t7,188(sp)
    4d18:	95f81d74 	lhu	t8,7540(t7)
    4d1c:	2b010375 	slti	at,t8,885
    4d20:	50200149 	beqzl	at,5248 <func_80975BD4+0x5c4>
    4d24:	8faf00bc 	lw	t7,188(sp)
    4d28:	8fb900bc 	lw	t9,188(sp)
    4d2c:	8f240000 	lw	a0,0(t9)
    4d30:	0c000000 	jal	0 <func_80970F50>
    4d34:	afa300ac 	sw	v1,172(sp)
    4d38:	8fa400b8 	lw	a0,184(sp)
    4d3c:	8fa300ac 	lw	v1,172(sp)
    4d40:	2405208d 	li	a1,8333
    4d44:	908b0185 	lbu	t3,389(a0)
    4d48:	5960006a 	blezl	t3,4ef4 <func_80975BD4+0x270>
    4d4c:	908b0184 	lbu	t3,388(a0)
    4d50:	0c000000 	jal	0 <func_80970F50>
    4d54:	afa300ac 	sw	v1,172(sp)
    4d58:	0c000000 	jal	0 <func_80970F50>
    4d5c:	00000000 	nop
    4d60:	3c013f80 	lui	at,0x3f80
    4d64:	44816000 	mtc1	at,$f12
    4d68:	3c010000 	lui	at,0x0
    4d6c:	c42e0000 	lwc1	$f14,0(at)
    4d70:	44066000 	mfc1	a2,$f12
    4d74:	0c000000 	jal	0 <func_80970F50>
    4d78:	24070001 	li	a3,1
    4d7c:	8e0202d0 	lw	v0,720(s0)
    4d80:	8fa300ac 	lw	v1,172(sp)
    4d84:	3c0cda38 	lui	t4,0xda38
    4d88:	244d0008 	addiu	t5,v0,8
    4d8c:	ae0d02d0 	sw	t5,720(s0)
    4d90:	358c0003 	ori	t4,t4,0x3
    4d94:	ac4c0000 	sw	t4,0(v0)
    4d98:	8fae00bc 	lw	t6,188(sp)
    4d9c:	3c050000 	lui	a1,0x0
    4da0:	24a50000 	addiu	a1,a1,0
    4da4:	8dc40000 	lw	a0,0(t6)
    4da8:	24060bc3 	li	a2,3011
    4dac:	afa20090 	sw	v0,144(sp)
    4db0:	0c000000 	jal	0 <func_80970F50>
    4db4:	afa300ac 	sw	v1,172(sp)
    4db8:	8fa70090 	lw	a3,144(sp)
    4dbc:	8fa300ac 	lw	v1,172(sp)
    4dc0:	3c18db06 	lui	t8,0xdb06
    4dc4:	ace20004 	sw	v0,4(a3)
    4dc8:	8e0202d0 	lw	v0,720(s0)
    4dcc:	8faa00a8 	lw	t2,168(sp)
    4dd0:	37180024 	ori	t8,t8,0x24
    4dd4:	244f0008 	addiu	t7,v0,8
    4dd8:	ae0f02d0 	sw	t7,720(s0)
    4ddc:	ac580000 	sw	t8,0(v0)
    4de0:	8fb900bc 	lw	t9,188(sp)
    4de4:	000a5880 	sll	t3,t2,0x2
    4de8:	316d00ff 	andi	t5,t3,0xff
    4dec:	8f240000 	lw	a0,0(t9)
    4df0:	240900ff 	li	t1,255
    4df4:	240c0040 	li	t4,64
    4df8:	000ac040 	sll	t8,t2,0x1
    4dfc:	331900ff 	andi	t9,t8,0xff
    4e00:	afac0010 	sw	t4,16(sp)
    4e04:	012d3823 	subu	a3,t1,t5
    4e08:	240d0040 	li	t5,64
    4e0c:	240c0020 	li	t4,32
    4e10:	01395823 	subu	t3,t1,t9
    4e14:	240f0001 	li	t7,1
    4e18:	240e0040 	li	t6,64
    4e1c:	afae0014 	sw	t6,20(sp)
    4e20:	afaf0018 	sw	t7,24(sp)
    4e24:	afab0020 	sw	t3,32(sp)
    4e28:	afac0028 	sw	t4,40(sp)
    4e2c:	afad0024 	sw	t5,36(sp)
    4e30:	afa0001c 	sw	zero,28(sp)
    4e34:	00002825 	move	a1,zero
    4e38:	00003025 	move	a2,zero
    4e3c:	afa300ac 	sw	v1,172(sp)
    4e40:	0c000000 	jal	0 <func_80970F50>
    4e44:	afa2008c 	sw	v0,140(sp)
    4e48:	8fa8008c 	lw	t0,140(sp)
    4e4c:	8fa300ac 	lw	v1,172(sp)
    4e50:	3c0ffa00 	lui	t7,0xfa00
    4e54:	ad020004 	sw	v0,4(t0)
    4e58:	8fa400b8 	lw	a0,184(sp)
    4e5c:	35ef8080 	ori	t7,t7,0x8080
    4e60:	3c01b4ff 	lui	at,0xb4ff
    4e64:	90820185 	lbu	v0,389(a0)
    4e68:	3421ff00 	ori	at,at,0xff00
    4e6c:	3c0cfb00 	lui	t4,0xfb00
    4e70:	a06205ff 	sb	v0,1535(v1)
    4e74:	a06205ef 	sb	v0,1519(v1)
    4e78:	a06205df 	sb	v0,1503(v1)
    4e7c:	a06205cf 	sb	v0,1487(v1)
    4e80:	a062059f 	sb	v0,1439(v1)
    4e84:	a062058f 	sb	v0,1423(v1)
    4e88:	a062057f 	sb	v0,1407(v1)
    4e8c:	a062056f 	sb	v0,1391(v1)
    4e90:	8e0202d0 	lw	v0,720(s0)
    4e94:	3c18de00 	lui	t8,0xde00
    4e98:	244e0008 	addiu	t6,v0,8
    4e9c:	ae0e02d0 	sw	t6,720(s0)
    4ea0:	ac4f0000 	sw	t7,0(v0)
    4ea4:	90990185 	lbu	t9,389(a0)
    4ea8:	3c0e00ff 	lui	t6,0xff
    4eac:	35ce96ff 	ori	t6,t6,0x96ff
    4eb0:	03215825 	or	t3,t9,at
    4eb4:	ac4b0004 	sw	t3,4(v0)
    4eb8:	8e0202d0 	lw	v0,720(s0)
    4ebc:	3c190600 	lui	t9,0x600
    4ec0:	27390840 	addiu	t9,t9,2112
    4ec4:	244d0008 	addiu	t5,v0,8
    4ec8:	ae0d02d0 	sw	t5,720(s0)
    4ecc:	ac4e0004 	sw	t6,4(v0)
    4ed0:	ac4c0000 	sw	t4,0(v0)
    4ed4:	8e0202d0 	lw	v0,720(s0)
    4ed8:	244f0008 	addiu	t7,v0,8
    4edc:	ae0f02d0 	sw	t7,720(s0)
    4ee0:	ac590004 	sw	t9,4(v0)
    4ee4:	0c000000 	jal	0 <func_80970F50>
    4ee8:	ac580000 	sw	t8,0(v0)
    4eec:	8fa400b8 	lw	a0,184(sp)
    4ef0:	908b0184 	lbu	t3,388(a0)
    4ef4:	516000d4 	beqzl	t3,5248 <func_80975BD4+0x5c4>
    4ef8:	8faf00bc 	lw	t7,188(sp)
    4efc:	0c000000 	jal	0 <func_80970F50>
    4f00:	2405208c 	li	a1,8332
    4f04:	8e0202d0 	lw	v0,720(s0)
    4f08:	3c0cda38 	lui	t4,0xda38
    4f0c:	358c0003 	ori	t4,t4,0x3
    4f10:	244d0008 	addiu	t5,v0,8
    4f14:	ae0d02d0 	sw	t5,720(s0)
    4f18:	ac4c0000 	sw	t4,0(v0)
    4f1c:	8fae00bc 	lw	t6,188(sp)
    4f20:	3c050000 	lui	a1,0x0
    4f24:	24a50000 	addiu	a1,a1,0
    4f28:	8dc40000 	lw	a0,0(t6)
    4f2c:	24060be2 	li	a2,3042
    4f30:	0c000000 	jal	0 <func_80970F50>
    4f34:	afa2007c 	sw	v0,124(sp)
    4f38:	8fa3007c 	lw	v1,124(sp)
    4f3c:	00003025 	move	a2,zero
    4f40:	ac620004 	sw	v0,4(v1)
    4f44:	8fa400b8 	lw	a0,184(sp)
    4f48:	8fa500bc 	lw	a1,188(sp)
    4f4c:	908f0184 	lbu	t7,388(a0)
    4f50:	29e100fa 	slti	at,t7,250
    4f54:	10200060 	beqz	at,50d8 <func_80975BD4+0x454>
    4f58:	00000000 	nop
    4f5c:	0c000000 	jal	0 <func_80970F50>
    4f60:	8fa500bc 	lw	a1,188(sp)
    4f64:	8fb800bc 	lw	t8,188(sp)
    4f68:	0c000000 	jal	0 <func_80970F50>
    4f6c:	8f040000 	lw	a0,0(t8)
    4f70:	8e0202d0 	lw	v0,720(s0)
    4f74:	3c0be200 	lui	t3,0xe200
    4f78:	3c0d0c18 	lui	t5,0xc18
    4f7c:	24590008 	addiu	t9,v0,8
    4f80:	ae1902d0 	sw	t9,720(s0)
    4f84:	35ad49d8 	ori	t5,t5,0x49d8
    4f88:	356b001c 	ori	t3,t3,0x1c
    4f8c:	ac4b0000 	sw	t3,0(v0)
    4f90:	ac4d0004 	sw	t5,4(v0)
    4f94:	8fac00b8 	lw	t4,184(sp)
    4f98:	3c010000 	lui	at,0x0
    4f9c:	c4280000 	lwc1	$f8,0(at)
    4fa0:	858e0188 	lh	t6,392(t4)
    4fa4:	24050001 	li	a1,1
    4fa8:	448e2000 	mtc1	t6,$f4
    4fac:	00000000 	nop
    4fb0:	468021a0 	cvt.s.w	$f6,$f4
    4fb4:	46083302 	mul.s	$f12,$f6,$f8
    4fb8:	0c000000 	jal	0 <func_80970F50>
    4fbc:	00000000 	nop
    4fc0:	8e0202d0 	lw	v0,720(s0)
    4fc4:	3c18da38 	lui	t8,0xda38
    4fc8:	37180003 	ori	t8,t8,0x3
    4fcc:	244f0008 	addiu	t7,v0,8
    4fd0:	ae0f02d0 	sw	t7,720(s0)
    4fd4:	ac580000 	sw	t8,0(v0)
    4fd8:	8fb900bc 	lw	t9,188(sp)
    4fdc:	3c050000 	lui	a1,0x0
    4fe0:	24a50000 	addiu	a1,a1,0
    4fe4:	8f240000 	lw	a0,0(t9)
    4fe8:	24060bed 	li	a2,3053
    4fec:	0c000000 	jal	0 <func_80970F50>
    4ff0:	afa20074 	sw	v0,116(sp)
    4ff4:	8fa30074 	lw	v1,116(sp)
    4ff8:	3c0ddb06 	lui	t5,0xdb06
    4ffc:	35ad0020 	ori	t5,t5,0x20
    5000:	ac620004 	sw	v0,4(v1)
    5004:	8e0202d0 	lw	v0,720(s0)
    5008:	240e0020 	li	t6,32
    500c:	240f0010 	li	t7,16
    5010:	244b0008 	addiu	t3,v0,8
    5014:	ae0b02d0 	sw	t3,720(s0)
    5018:	ac4d0000 	sw	t5,0(v0)
    501c:	8fac00bc 	lw	t4,188(sp)
    5020:	240b0008 	li	t3,8
    5024:	24180001 	li	t8,1
    5028:	8d840000 	lw	a0,0(t4)
    502c:	24190010 	li	t9,16
    5030:	afb90024 	sw	t9,36(sp)
    5034:	afab0028 	sw	t3,40(sp)
    5038:	afa00020 	sw	zero,32(sp)
    503c:	afa0001c 	sw	zero,28(sp)
    5040:	afb80018 	sw	t8,24(sp)
    5044:	afaf0014 	sw	t7,20(sp)
    5048:	afae0010 	sw	t6,16(sp)
    504c:	00002825 	move	a1,zero
    5050:	00003025 	move	a2,zero
    5054:	00003825 	move	a3,zero
    5058:	0c000000 	jal	0 <func_80970F50>
    505c:	afa20070 	sw	v0,112(sp)
    5060:	8fa30070 	lw	v1,112(sp)
    5064:	3c0cfa00 	lui	t4,0xfa00
    5068:	358c8080 	ori	t4,t4,0x8080
    506c:	ac620004 	sw	v0,4(v1)
    5070:	8e0202d0 	lw	v0,720(s0)
    5074:	2401a000 	li	at,-24576
    5078:	3c0fde00 	lui	t7,0xde00
    507c:	244d0008 	addiu	t5,v0,8
    5080:	ae0d02d0 	sw	t5,720(s0)
    5084:	ac4c0000 	sw	t4,0(v0)
    5088:	8fae00b8 	lw	t6,184(sp)
    508c:	3c0caa8c 	lui	t4,0xaa8c
    5090:	358c00ff 	ori	t4,t4,0xff
    5094:	91d80184 	lbu	t8,388(t6)
    5098:	3c0dfb00 	lui	t5,0xfb00
    509c:	0301c825 	or	t9,t8,at
    50a0:	ac590004 	sw	t9,4(v0)
    50a4:	8e0202d0 	lw	v0,720(s0)
    50a8:	3c180600 	lui	t8,0x600
    50ac:	27180600 	addiu	t8,t8,1536
    50b0:	244b0008 	addiu	t3,v0,8
    50b4:	ae0b02d0 	sw	t3,720(s0)
    50b8:	ac4c0004 	sw	t4,4(v0)
    50bc:	ac4d0000 	sw	t5,0(v0)
    50c0:	8e0202d0 	lw	v0,720(s0)
    50c4:	244e0008 	addiu	t6,v0,8
    50c8:	ae0e02d0 	sw	t6,720(s0)
    50cc:	ac580004 	sw	t8,4(v0)
    50d0:	1000005c 	b	5244 <func_80975BD4+0x5c0>
    50d4:	ac4f0000 	sw	t7,0(v0)
    50d8:	0c000000 	jal	0 <func_80970F50>
    50dc:	00003025 	move	a2,zero
    50e0:	8fb900bc 	lw	t9,188(sp)
    50e4:	0c000000 	jal	0 <func_80970F50>
    50e8:	8f240000 	lw	a0,0(t9)
    50ec:	8e0202c0 	lw	v0,704(s0)
    50f0:	3c0de200 	lui	t5,0xe200
    50f4:	3c0c0c19 	lui	t4,0xc19
    50f8:	244b0008 	addiu	t3,v0,8
    50fc:	ae0b02c0 	sw	t3,704(s0)
    5100:	358c2078 	ori	t4,t4,0x2078
    5104:	35ad001c 	ori	t5,t5,0x1c
    5108:	ac4d0000 	sw	t5,0(v0)
    510c:	ac4c0004 	sw	t4,4(v0)
    5110:	8fae00b8 	lw	t6,184(sp)
    5114:	3c010000 	lui	at,0x0
    5118:	c4320000 	lwc1	$f18,0(at)
    511c:	85cf0188 	lh	t7,392(t6)
    5120:	24050001 	li	a1,1
    5124:	448f5000 	mtc1	t7,$f10
    5128:	00000000 	nop
    512c:	46805420 	cvt.s.w	$f16,$f10
    5130:	46128302 	mul.s	$f12,$f16,$f18
    5134:	0c000000 	jal	0 <func_80970F50>
    5138:	00000000 	nop
    513c:	8e0202c0 	lw	v0,704(s0)
    5140:	3c19da38 	lui	t9,0xda38
    5144:	37390003 	ori	t9,t9,0x3
    5148:	24580008 	addiu	t8,v0,8
    514c:	ae1802c0 	sw	t8,704(s0)
    5150:	ac590000 	sw	t9,0(v0)
    5154:	8fab00bc 	lw	t3,188(sp)
    5158:	3c050000 	lui	a1,0x0
    515c:	24a50000 	addiu	a1,a1,0
    5160:	8d640000 	lw	a0,0(t3)
    5164:	24060c0d 	li	a2,3085
    5168:	0c000000 	jal	0 <func_80970F50>
    516c:	afa2005c 	sw	v0,92(sp)
    5170:	8fa3005c 	lw	v1,92(sp)
    5174:	3c0cdb06 	lui	t4,0xdb06
    5178:	358c0020 	ori	t4,t4,0x20
    517c:	ac620004 	sw	v0,4(v1)
    5180:	8e0202c0 	lw	v0,704(s0)
    5184:	240f0020 	li	t7,32
    5188:	24180010 	li	t8,16
    518c:	244d0008 	addiu	t5,v0,8
    5190:	ae0d02c0 	sw	t5,704(s0)
    5194:	ac4c0000 	sw	t4,0(v0)
    5198:	8fae00bc 	lw	t6,188(sp)
    519c:	240d0008 	li	t5,8
    51a0:	24190001 	li	t9,1
    51a4:	8dc40000 	lw	a0,0(t6)
    51a8:	240b0010 	li	t3,16
    51ac:	afab0024 	sw	t3,36(sp)
    51b0:	afad0028 	sw	t5,40(sp)
    51b4:	afa00020 	sw	zero,32(sp)
    51b8:	afa0001c 	sw	zero,28(sp)
    51bc:	afb90018 	sw	t9,24(sp)
    51c0:	afb80014 	sw	t8,20(sp)
    51c4:	afaf0010 	sw	t7,16(sp)
    51c8:	00002825 	move	a1,zero
    51cc:	00003025 	move	a2,zero
    51d0:	00003825 	move	a3,zero
    51d4:	0c000000 	jal	0 <func_80970F50>
    51d8:	afa20058 	sw	v0,88(sp)
    51dc:	8fa30058 	lw	v1,88(sp)
    51e0:	3c0efa00 	lui	t6,0xfa00
    51e4:	35ce8080 	ori	t6,t6,0x8080
    51e8:	ac620004 	sw	v0,4(v1)
    51ec:	8e0202c0 	lw	v0,704(s0)
    51f0:	240fa0ff 	li	t7,-24321
    51f4:	3c0baa8c 	lui	t3,0xaa8c
    51f8:	244c0008 	addiu	t4,v0,8
    51fc:	ae0c02c0 	sw	t4,704(s0)
    5200:	ac4f0004 	sw	t7,4(v0)
    5204:	ac4e0000 	sw	t6,0(v0)
    5208:	8e0202c0 	lw	v0,704(s0)
    520c:	356b00ff 	ori	t3,t3,0xff
    5210:	3c19fb00 	lui	t9,0xfb00
    5214:	24580008 	addiu	t8,v0,8
    5218:	ae1802c0 	sw	t8,704(s0)
    521c:	ac4b0004 	sw	t3,4(v0)
    5220:	ac590000 	sw	t9,0(v0)
    5224:	8e0202c0 	lw	v0,704(s0)
    5228:	3c0e0600 	lui	t6,0x600
    522c:	25ce0600 	addiu	t6,t6,1536
    5230:	244d0008 	addiu	t5,v0,8
    5234:	ae0d02c0 	sw	t5,704(s0)
    5238:	3c0cde00 	lui	t4,0xde00
    523c:	ac4c0000 	sw	t4,0(v0)
    5240:	ac4e0004 	sw	t6,4(v0)
    5244:	8faf00bc 	lw	t7,188(sp)
    5248:	3c060000 	lui	a2,0x0
    524c:	24c60000 	addiu	a2,a2,0
    5250:	27a40094 	addiu	a0,sp,148
    5254:	24070c28 	li	a3,3112
    5258:	0c000000 	jal	0 <func_80970F50>
    525c:	8de50000 	lw	a1,0(t7)
    5260:	8fbf003c 	lw	ra,60(sp)
    5264:	8fb00038 	lw	s0,56(sp)
    5268:	27bd00b8 	addiu	sp,sp,184
    526c:	03e00008 	jr	ra
    5270:	00000000 	nop

00005274 <func_809761C4>:
    5274:	27bdffe0 	addiu	sp,sp,-32
    5278:	afbf001c 	sw	ra,28(sp)
    527c:	afb10018 	sw	s1,24(sp)
    5280:	afb00014 	sw	s0,20(sp)
    5284:	00808025 	move	s0,a0
    5288:	00a08825 	move	s1,a1
    528c:	0c000000 	jal	0 <func_80970F50>
    5290:	24060001 	li	a2,1
    5294:	14400016 	bnez	v0,52f0 <func_809761C4+0x7c>
    5298:	02002025 	move	a0,s0
    529c:	02202825 	move	a1,s1
    52a0:	0c000000 	jal	0 <func_80970F50>
    52a4:	24060004 	li	a2,4
    52a8:	54400012 	bnezl	v0,52f4 <func_809761C4+0x80>
    52ac:	8fbf001c 	lw	ra,28(sp)
    52b0:	920e0185 	lbu	t6,389(s0)
    52b4:	240f0001 	li	t7,1
    52b8:	02002025 	move	a0,s0
    52bc:	15c00003 	bnez	t6,52cc <func_809761C4+0x58>
    52c0:	02202825 	move	a1,s1
    52c4:	1000000a 	b	52f0 <func_809761C4+0x7c>
    52c8:	a20f0185 	sb	t7,389(s0)
    52cc:	0c000000 	jal	0 <func_80970F50>
    52d0:	00003025 	move	a2,zero
    52d4:	02002025 	move	a0,s0
    52d8:	02202825 	move	a1,s1
    52dc:	0c000000 	jal	0 <func_80970F50>
    52e0:	00003025 	move	a2,zero
    52e4:	02202025 	move	a0,s1
    52e8:	0c000000 	jal	0 <func_80970F50>
    52ec:	92050186 	lbu	a1,390(s0)
    52f0:	8fbf001c 	lw	ra,28(sp)
    52f4:	8fb00014 	lw	s0,20(sp)
    52f8:	8fb10018 	lw	s1,24(sp)
    52fc:	03e00008 	jr	ra
    5300:	27bd0020 	addiu	sp,sp,32

00005304 <func_80976254>:
    5304:	27bdff88 	addiu	sp,sp,-120
    5308:	afbf003c 	sw	ra,60(sp)
    530c:	afb00038 	sw	s0,56(sp)
    5310:	afa5007c 	sw	a1,124(sp)
    5314:	afa60080 	sw	a2,128(sp)
    5318:	afa70084 	sw	a3,132(sp)
    531c:	3c090001 	lui	t1,0x1
    5320:	01244821 	addu	t1,t1,a0
    5324:	8d291de4 	lw	t1,7652(t1)
    5328:	8c850000 	lw	a1,0(a0)
    532c:	00808025 	move	s0,a0
    5330:	3c060000 	lui	a2,0x0
    5334:	24c60000 	addiu	a2,a2,0
    5338:	27a40058 	addiu	a0,sp,88
    533c:	24070c52 	li	a3,3154
    5340:	afa9006c 	sw	t1,108(sp)
    5344:	0c000000 	jal	0 <func_80970F50>
    5348:	afa50068 	sw	a1,104(sp)
    534c:	0c000000 	jal	0 <func_80970F50>
    5350:	8e040000 	lw	a0,0(s0)
    5354:	8fa80068 	lw	t0,104(sp)
    5358:	8fa9006c 	lw	t1,108(sp)
    535c:	3c0ffa00 	lui	t7,0xfa00
    5360:	8d0202d0 	lw	v0,720(t0)
    5364:	3c18aaff 	lui	t8,0xaaff
    5368:	3718ffff 	ori	t8,t8,0xffff
    536c:	244e0008 	addiu	t6,v0,8
    5370:	ad0e02d0 	sw	t6,720(t0)
    5374:	35ef0080 	ori	t7,t7,0x80
    5378:	ac4f0000 	sw	t7,0(v0)
    537c:	ac580004 	sw	t8,4(v0)
    5380:	8d0202d0 	lw	v0,720(t0)
    5384:	8fa40084 	lw	a0,132(sp)
    5388:	3c0afb00 	lui	t2,0xfb00
    538c:	24590008 	addiu	t9,v0,8
    5390:	ad1902d0 	sw	t9,720(t0)
    5394:	ac4a0000 	sw	t2,0(v0)
    5398:	908c017d 	lbu	t4,381(a0)
    539c:	908f017b 	lbu	t7,379(a0)
    53a0:	908b017c 	lbu	t3,380(a0)
    53a4:	000c6a00 	sll	t5,t4,0x8
    53a8:	000fc600 	sll	t8,t7,0x18
    53ac:	01b8c825 	or	t9,t5,t8
    53b0:	000b6400 	sll	t4,t3,0x10
    53b4:	032c7025 	or	t6,t9,t4
    53b8:	35cf00ff 	ori	t7,t6,0xff
    53bc:	ac4f0004 	sw	t7,4(v0)
    53c0:	8d0202d0 	lw	v0,720(t0)
    53c4:	3c18db06 	lui	t8,0xdb06
    53c8:	37180020 	ori	t8,t8,0x20
    53cc:	244d0008 	addiu	t5,v0,8
    53d0:	ad0d02d0 	sw	t5,720(t0)
    53d4:	ac580000 	sw	t8,0(v0)
    53d8:	8e040000 	lw	a0,0(s0)
    53dc:	00095100 	sll	t2,t1,0x4
    53e0:	314b00ff 	andi	t3,t2,0xff
    53e4:	241900ff 	li	t9,255
    53e8:	00095080 	sll	t2,t1,0x2
    53ec:	032b3823 	subu	a3,t9,t3
    53f0:	01495023 	subu	t2,t2,t1
    53f4:	000a5080 	sll	t2,t2,0x2
    53f8:	240f0001 	li	t7,1
    53fc:	240e0040 	li	t6,64
    5400:	240c0100 	li	t4,256
    5404:	00093080 	sll	a2,t1,0x2
    5408:	afac0010 	sw	t4,16(sp)
    540c:	afae0014 	sw	t6,20(sp)
    5410:	afaf0018 	sw	t7,24(sp)
    5414:	3159007f 	andi	t9,t2,0x7f
    5418:	240b007f 	li	t3,127
    541c:	00c93023 	subu	a2,a2,t1
    5420:	00096880 	sll	t5,t1,0x2
    5424:	31b801ff 	andi	t8,t5,0x1ff
    5428:	00063040 	sll	a2,a2,0x1
    542c:	01796023 	subu	t4,t3,t9
    5430:	240f0020 	li	t7,32
    5434:	240e0080 	li	t6,128
    5438:	afae0024 	sw	t6,36(sp)
    543c:	afaf0028 	sw	t7,40(sp)
    5440:	afac0020 	sw	t4,32(sp)
    5444:	30c603ff 	andi	a2,a2,0x3ff
    5448:	afb8001c 	sw	t8,28(sp)
    544c:	00002825 	move	a1,zero
    5450:	0c000000 	jal	0 <func_80970F50>
    5454:	afa2004c 	sw	v0,76(sp)
    5458:	8fa3004c 	lw	v1,76(sp)
    545c:	3c060000 	lui	a2,0x0
    5460:	24c60000 	addiu	a2,a2,0
    5464:	ac620004 	sw	v0,4(v1)
    5468:	8e050000 	lw	a1,0(s0)
    546c:	27a40058 	addiu	a0,sp,88
    5470:	0c000000 	jal	0 <func_80970F50>
    5474:	24070c64 	li	a3,3172
    5478:	8fad0080 	lw	t5,128(sp)
    547c:	8fb8007c 	lw	t8,124(sp)
    5480:	55a00008 	bnezl	t5,54a4 <func_80976254+0x1a0>
    5484:	8fbf003c 	lw	ra,60(sp)
    5488:	8f02001c 	lw	v0,28(t8)
    548c:	24030400 	li	v1,1024
    5490:	a4430000 	sh	v1,0(v0)
    5494:	844a0000 	lh	t2,0(v0)
    5498:	a4430002 	sh	v1,2(v0)
    549c:	a44a0004 	sh	t2,4(v0)
    54a0:	8fbf003c 	lw	ra,60(sp)
    54a4:	8fb00038 	lw	s0,56(sp)
    54a8:	27bd0078 	addiu	sp,sp,120
    54ac:	03e00008 	jr	ra
    54b0:	24020001 	li	v0,1

000054b4 <func_80976404>:
    54b4:	27bdffa8 	addiu	sp,sp,-88
    54b8:	afbf002c 	sw	ra,44(sp)
    54bc:	afb00028 	sw	s0,40(sp)
    54c0:	afa40058 	sw	a0,88(sp)
    54c4:	afa5005c 	sw	a1,92(sp)
    54c8:	8482001c 	lh	v0,28(a0)
    54cc:	24010018 	li	at,24
    54d0:	8cb00000 	lw	s0,0(a1)
    54d4:	304200ff 	andi	v0,v0,0xff
    54d8:	1041000f 	beq	v0,at,5518 <func_80976404+0x64>
    54dc:	24010019 	li	at,25
    54e0:	1041000d 	beq	v0,at,5518 <func_80976404+0x64>
    54e4:	00a02025 	move	a0,a1
    54e8:	0c000000 	jal	0 <func_80970F50>
    54ec:	24050001 	li	a1,1
    54f0:	14400009 	bnez	v0,5518 <func_80976404+0x64>
    54f4:	3c020000 	lui	v0,0x0
    54f8:	24420000 	addiu	v0,v0,0
    54fc:	8c581360 	lw	t8,4960(v0)
    5500:	2b010004 	slti	at,t8,4
    5504:	10200004 	beqz	at,5518 <func_80976404+0x64>
    5508:	00000000 	nop
    550c:	8c590000 	lw	t9,0(v0)
    5510:	24010324 	li	at,804
    5514:	17210020 	bne	t9,at,5598 <func_80976404+0xe4>
    5518:	3c060000 	lui	a2,0x0
    551c:	24c60000 	addiu	a2,a2,0
    5520:	27a40038 	addiu	a0,sp,56
    5524:	02002825 	move	a1,s0
    5528:	0c000000 	jal	0 <func_80970F50>
    552c:	24070c81 	li	a3,3201
    5530:	8e0402d0 	lw	a0,720(s0)
    5534:	0c000000 	jal	0 <func_80970F50>
    5538:	24050019 	li	a1,25
    553c:	3c014000 	lui	at,0x4000
    5540:	44816000 	mtc1	at,$f12
    5544:	ae0202d0 	sw	v0,720(s0)
    5548:	24070001 	li	a3,1
    554c:	44066000 	mfc1	a2,$f12
    5550:	0c000000 	jal	0 <func_80970F50>
    5554:	46006386 	mov.s	$f14,$f12
    5558:	8fa40058 	lw	a0,88(sp)
    555c:	3c070000 	lui	a3,0x0
    5560:	24080001 	li	t0,1
    5564:	afa80014 	sw	t0,20(sp)
    5568:	24e70000 	addiu	a3,a3,0
    556c:	8fa5005c 	lw	a1,92(sp)
    5570:	afa00010 	sw	zero,16(sp)
    5574:	2486014c 	addiu	a2,a0,332
    5578:	0c000000 	jal	0 <func_80970F50>
    557c:	afa40018 	sw	a0,24(sp)
    5580:	3c060000 	lui	a2,0x0
    5584:	24c60000 	addiu	a2,a2,0
    5588:	27a40038 	addiu	a0,sp,56
    558c:	02002825 	move	a1,s0
    5590:	0c000000 	jal	0 <func_80970F50>
    5594:	24070c90 	li	a3,3216
    5598:	8fbf002c 	lw	ra,44(sp)
    559c:	8fb00028 	lw	s0,40(sp)
    55a0:	27bd0058 	addiu	sp,sp,88
    55a4:	03e00008 	jr	ra
    55a8:	00000000 	nop

000055ac <func_809764FC>:
    55ac:	27bdffd8 	addiu	sp,sp,-40
    55b0:	afa5002c 	sw	a1,44(sp)
    55b4:	c7a6002c 	lwc1	$f6,44(sp)
    55b8:	c7a40038 	lwc1	$f4,56(sp)
    55bc:	afa70034 	sw	a3,52(sp)
    55c0:	c7aa0034 	lwc1	$f10,52(sp)
    55c4:	46062301 	sub.s	$f12,$f4,$f6
    55c8:	c7a80040 	lwc1	$f8,64(sp)
    55cc:	afbf0014 	sw	ra,20(sp)
    55d0:	afa40028 	sw	a0,40(sp)
    55d4:	460a4381 	sub.s	$f14,$f8,$f10
    55d8:	460c6402 	mul.s	$f16,$f12,$f12
    55dc:	afa60030 	sw	a2,48(sp)
    55e0:	460e7482 	mul.s	$f18,$f14,$f14
    55e4:	46128000 	add.s	$f0,$f16,$f18
    55e8:	46000004 	sqrt.s	$f0,$f0
    55ec:	0c000000 	jal	0 <func_80970F50>
    55f0:	e7a00018 	swc1	$f0,24(sp)
    55f4:	3c010000 	lui	at,0x0
    55f8:	c4240000 	lwc1	$f4,0(at)
    55fc:	8fb80028 	lw	t8,40(sp)
    5600:	46040182 	mul.s	$f6,$f0,$f4
    5604:	4600320d 	trunc.w.s	$f8,$f6
    5608:	440f4000 	mfc1	t7,$f8
    560c:	00000000 	nop
    5610:	a70f00b6 	sh	t7,182(t8)
    5614:	c7b00030 	lwc1	$f16,48(sp)
    5618:	c7aa003c 	lwc1	$f10,60(sp)
    561c:	c7ae0018 	lwc1	$f14,24(sp)
    5620:	46105301 	sub.s	$f12,$f10,$f16
    5624:	0c000000 	jal	0 <func_80970F50>
    5628:	46006307 	neg.s	$f12,$f12
    562c:	3c010000 	lui	at,0x0
    5630:	c4320000 	lwc1	$f18,0(at)
    5634:	8fa90028 	lw	t1,40(sp)
    5638:	46120102 	mul.s	$f4,$f0,$f18
    563c:	4600218d 	trunc.w.s	$f6,$f4
    5640:	44083000 	mfc1	t0,$f6
    5644:	00000000 	nop
    5648:	a52800b4 	sh	t0,180(t1)
    564c:	8fbf0014 	lw	ra,20(sp)
    5650:	27bd0028 	addiu	sp,sp,40
    5654:	03e00008 	jr	ra
    5658:	00000000 	nop

0000565c <func_809765AC>:
    565c:	27bdffb8 	addiu	sp,sp,-72
    5660:	00067880 	sll	t7,a2,0x2
    5664:	afbf0024 	sw	ra,36(sp)
    5668:	afa40048 	sw	a0,72(sp)
    566c:	afa5004c 	sw	a1,76(sp)
    5670:	afa70054 	sw	a3,84(sp)
    5674:	00af1021 	addu	v0,a1,t7
    5678:	8c581d8c 	lw	t8,7564(v0)
    567c:	00a02025 	move	a0,a1
    5680:	00c02825 	move	a1,a2
    5684:	8f19000c 	lw	t9,12(t8)
    5688:	44992000 	mtc1	t9,$f4
    568c:	00000000 	nop
    5690:	468021a0 	cvt.s.w	$f6,$f4
    5694:	e7a6003c 	swc1	$f6,60(sp)
    5698:	8c481d8c 	lw	t0,7564(v0)
    569c:	8d090010 	lw	t1,16(t0)
    56a0:	44894000 	mtc1	t1,$f8
    56a4:	00000000 	nop
    56a8:	468042a0 	cvt.s.w	$f10,$f8
    56ac:	e7aa0040 	swc1	$f10,64(sp)
    56b0:	8c4a1d8c 	lw	t2,7564(v0)
    56b4:	8d4b0014 	lw	t3,20(t2)
    56b8:	448b8000 	mtc1	t3,$f16
    56bc:	00000000 	nop
    56c0:	468084a0 	cvt.s.w	$f18,$f16
    56c4:	e7b20044 	swc1	$f18,68(sp)
    56c8:	8c4c1d8c 	lw	t4,7564(v0)
    56cc:	8d8d0018 	lw	t5,24(t4)
    56d0:	448d2000 	mtc1	t5,$f4
    56d4:	00000000 	nop
    56d8:	468021a0 	cvt.s.w	$f6,$f4
    56dc:	e7a60030 	swc1	$f6,48(sp)
    56e0:	8c4f1d8c 	lw	t7,7564(v0)
    56e4:	8df8001c 	lw	t8,28(t7)
    56e8:	44984000 	mtc1	t8,$f8
    56ec:	00000000 	nop
    56f0:	468042a0 	cvt.s.w	$f10,$f8
    56f4:	e7aa0034 	swc1	$f10,52(sp)
    56f8:	8c591d8c 	lw	t9,7564(v0)
    56fc:	8f280020 	lw	t0,32(t9)
    5700:	44888000 	mtc1	t0,$f16
    5704:	00000000 	nop
    5708:	468084a0 	cvt.s.w	$f18,$f16
    570c:	0c000000 	jal	0 <func_80970F50>
    5710:	e7b20038 	swc1	$f18,56(sp)
    5714:	c7a40030 	lwc1	$f4,48(sp)
    5718:	c7a6003c 	lwc1	$f6,60(sp)
    571c:	8fa40048 	lw	a0,72(sp)
    5720:	27aa003c 	addiu	t2,sp,60
    5724:	46062201 	sub.s	$f8,$f4,$f6
    5728:	46004282 	mul.s	$f10,$f8,$f0
    572c:	46065400 	add.s	$f16,$f10,$f6
    5730:	e4900024 	swc1	$f16,36(a0)
    5734:	c7a40040 	lwc1	$f4,64(sp)
    5738:	c7b20034 	lwc1	$f18,52(sp)
    573c:	46049201 	sub.s	$f8,$f18,$f4
    5740:	46004282 	mul.s	$f10,$f8,$f0
    5744:	46045180 	add.s	$f6,$f10,$f4
    5748:	e4860028 	swc1	$f6,40(a0)
    574c:	c7b20044 	lwc1	$f18,68(sp)
    5750:	c7b00038 	lwc1	$f16,56(sp)
    5754:	46128201 	sub.s	$f8,$f16,$f18
    5758:	46004282 	mul.s	$f10,$f8,$f0
    575c:	46125100 	add.s	$f4,$f10,$f18
    5760:	e484002c 	swc1	$f4,44(a0)
    5764:	8fa90054 	lw	t1,84(sp)
    5768:	51200011 	beqzl	t1,57b0 <func_809765AC+0x154>
    576c:	8fbf0024 	lw	ra,36(sp)
    5770:	8d4c0000 	lw	t4,0(t2)
    5774:	27ad0030 	addiu	t5,sp,48
    5778:	afac0004 	sw	t4,4(sp)
    577c:	8d460004 	lw	a2,4(t2)
    5780:	8fa50004 	lw	a1,4(sp)
    5784:	afa60008 	sw	a2,8(sp)
    5788:	8d470008 	lw	a3,8(t2)
    578c:	afa7000c 	sw	a3,12(sp)
    5790:	8db80000 	lw	t8,0(t5)
    5794:	afb80010 	sw	t8,16(sp)
    5798:	8daf0004 	lw	t7,4(t5)
    579c:	afaf0014 	sw	t7,20(sp)
    57a0:	8db80008 	lw	t8,8(t5)
    57a4:	0c000000 	jal	0 <func_80970F50>
    57a8:	afb80018 	sw	t8,24(sp)
    57ac:	8fbf0024 	lw	ra,36(sp)
    57b0:	27bd0048 	addiu	sp,sp,72
    57b4:	03e00008 	jr	ra
    57b8:	00000000 	nop

000057bc <func_8097670C>:
    57bc:	27bdffd0 	addiu	sp,sp,-48
    57c0:	0006c080 	sll	t8,a2,0x2
    57c4:	afbf001c 	sw	ra,28(sp)
    57c8:	afa40030 	sw	a0,48(sp)
    57cc:	afa50034 	sw	a1,52(sp)
    57d0:	afa60038 	sw	a2,56(sp)
    57d4:	00b81021 	addu	v0,a1,t8
    57d8:	8c591d8c 	lw	t9,7564(v0)
    57dc:	27ad0024 	addiu	t5,sp,36
    57e0:	44876000 	mtc1	a3,$f12
    57e4:	8f280018 	lw	t0,24(t9)
    57e8:	00803825 	move	a3,a0
    57ec:	44882000 	mtc1	t0,$f4
    57f0:	00000000 	nop
    57f4:	468021a0 	cvt.s.w	$f6,$f4
    57f8:	e7a60024 	swc1	$f6,36(sp)
    57fc:	8c491d8c 	lw	t1,7564(v0)
    5800:	8d2a001c 	lw	t2,28(t1)
    5804:	448a4000 	mtc1	t2,$f8
    5808:	00000000 	nop
    580c:	468042a0 	cvt.s.w	$f10,$f8
    5810:	e7aa0028 	swc1	$f10,40(sp)
    5814:	8c4b1d8c 	lw	t3,7564(v0)
    5818:	8d6c0020 	lw	t4,32(t3)
    581c:	448c8000 	mtc1	t4,$f16
    5820:	00000000 	nop
    5824:	468084a0 	cvt.s.w	$f18,$f16
    5828:	e7b2002c 	swc1	$f18,44(sp)
    582c:	8dae0000 	lw	t6,0(t5)
    5830:	afae0000 	sw	t6,0(sp)
    5834:	8da50004 	lw	a1,4(t5)
    5838:	8fa40000 	lw	a0,0(sp)
    583c:	afa50004 	sw	a1,4(sp)
    5840:	8da60008 	lw	a2,8(t5)
    5844:	e7ac0010 	swc1	$f12,16(sp)
    5848:	0c000000 	jal	0 <func_80970F50>
    584c:	afa60008 	sw	a2,8(sp)
    5850:	8fbf001c 	lw	ra,28(sp)
    5854:	27bd0030 	addiu	sp,sp,48
    5858:	03e00008 	jr	ra
    585c:	00000000 	nop

00005860 <func_809767B0>:
    5860:	00067080 	sll	t6,a2,0x2
    5864:	00ae7821 	addu	t7,a1,t6
    5868:	8de21d8c 	lw	v0,7564(t7)
    586c:	8c58000c 	lw	t8,12(v0)
    5870:	8c590010 	lw	t9,16(v0)
    5874:	8c480014 	lw	t0,20(v0)
    5878:	44982000 	mtc1	t8,$f4
    587c:	44993000 	mtc1	t9,$f6
    5880:	44884000 	mtc1	t0,$f8
    5884:	46802020 	cvt.s.w	$f0,$f4
    5888:	468030a0 	cvt.s.w	$f2,$f6
    588c:	e4800024 	swc1	$f0,36(a0)
    5890:	46804320 	cvt.s.w	$f12,$f8
    5894:	e4820028 	swc1	$f2,40(a0)
    5898:	03e00008 	jr	ra
    589c:	e48c002c 	swc1	$f12,44(a0)
