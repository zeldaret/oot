
build/src/overlays/actors/ovl_En_In/z_en_in.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A78FB0>:
       0:	3c020000 	lui	v0,0x0
       4:	24420000 	addiu	v0,v0,0
       8:	944e0ed6 	lhu	t6,3798(v0)
       c:	afa40000 	sw	a0,0(sp)
      10:	31cf0010 	andi	t7,t6,0x10
      14:	51e0000a 	beqzl	t7,40 <func_80A78FB0+0x40>
      18:	94480f0a 	lhu	t0,3850(v0)
      1c:	94580f0a 	lhu	t8,3850(v0)
      20:	33190080 	andi	t9,t8,0x80
      24:	13200003 	beqz	t9,34 <func_80A78FB0+0x34>
      28:	00000000 	nop
      2c:	03e00008 	jr	ra
      30:	24022046 	li	v0,8262
      34:	03e00008 	jr	ra
      38:	24022045 	li	v0,8261
      3c:	94480f0a 	lhu	t0,3850(v0)
      40:	2402203f 	li	v0,8255
      44:	31090010 	andi	t1,t0,0x10
      48:	11200003 	beqz	t1,58 <func_80A78FB0+0x58>
      4c:	00000000 	nop
      50:	03e00008 	jr	ra
      54:	24022040 	li	v0,8256
      58:	03e00008 	jr	ra
      5c:	00000000 	nop

00000060 <func_80A79010>:
      60:	27bdffe0 	addiu	sp,sp,-32
      64:	afbf0014 	sw	ra,20(sp)
      68:	8c8e1c44 	lw	t6,7236(a0)
      6c:	24050019 	li	a1,25
      70:	0c000000 	jal	0 <func_80A78FB0>
      74:	afae001c 	sw	t6,28(sp)
      78:	10400003 	beqz	v0,88 <func_80A79010+0x28>
      7c:	3043ffff 	andi	v1,v0,0xffff
      80:	10000049 	b	1a8 <L80A7913C+0x1c>
      84:	00601025 	move	v0,v1
      88:	3c030000 	lui	v1,0x0
      8c:	24630000 	addiu	v1,v1,0
      90:	94640ed6 	lhu	a0,3798(v1)
      94:	308f0100 	andi	t7,a0,0x100
      98:	51e00009 	beqzl	t7,c0 <func_80A79010+0x60>
      9c:	8c790010 	lw	t9,16(v1)
      a0:	8c780010 	lw	t8,16(v1)
      a4:	17000003 	bnez	t8,b4 <func_80A79010+0x54>
      a8:	00000000 	nop
      ac:	1000003e 	b	1a8 <L80A7913C+0x1c>
      b0:	2402205f 	li	v0,8287
      b4:	1000003c 	b	1a8 <L80A7913C+0x1c>
      b8:	24022057 	li	v0,8279
      bc:	8c790010 	lw	t9,16(v1)
      c0:	24010001 	li	at,1
      c4:	57210004 	bnel	t9,at,d8 <func_80A79010+0x78>
      c8:	946213fa 	lhu	v0,5114(v1)
      cc:	10000036 	b	1a8 <L80A7913C+0x1c>
      d0:	2402204e 	li	v0,8270
      d4:	946213fa 	lhu	v0,5114(v1)
      d8:	3048000f 	andi	t0,v0,0xf
      dc:	2509ffff 	addiu	t1,t0,-1
      e0:	2d210007 	sltiu	at,t1,7
      e4:	10200029 	beqz	at,18c <L80A7913C>
      e8:	00094880 	sll	t1,t1,0x2
      ec:	3c010000 	lui	at,0x0
      f0:	00290821 	addu	at,at,t1
      f4:	8c290000 	lw	t1,0(at)
      f8:	01200008 	jr	t1
      fc:	00000000 	nop

00000100 <L80A790B0>:
     100:	8faa001c 	lw	t2,28(sp)
     104:	308d0800 	andi	t5,a0,0x800
     108:	8d4b067c 	lw	t3,1660(t2)
     10c:	000b6200 	sll	t4,t3,0x8
     110:	05800003 	bltz	t4,120 <L80A790B0+0x20>
     114:	00000000 	nop
     118:	10000023 	b	1a8 <L80A7913C+0x1c>
     11c:	24022036 	li	v0,8246
     120:	11a00009 	beqz	t5,148 <L80A790B0+0x48>
     124:	00000000 	nop
     128:	946e0f0c 	lhu	t6,3852(v1)
     12c:	31cf0004 	andi	t7,t6,0x4
     130:	11e00003 	beqz	t7,140 <L80A790B0+0x40>
     134:	00000000 	nop
     138:	1000001b 	b	1a8 <L80A7913C+0x1c>
     13c:	24022036 	li	v0,8246
     140:	10000019 	b	1a8 <L80A7913C+0x1c>
     144:	24022038 	li	v0,8248
     148:	10000017 	b	1a8 <L80A7913C+0x1c>
     14c:	24022037 	li	v0,8247

00000150 <L80A79100>:
     150:	30580040 	andi	t8,v0,0x40
     154:	17000003 	bnez	t8,164 <L80A79100+0x14>
     158:	30590020 	andi	t9,v0,0x20
     15c:	13200003 	beqz	t9,16c <L80A79100+0x1c>
     160:	00000000 	nop
     164:	10000010 	b	1a8 <L80A7913C+0x1c>
     168:	2402203e 	li	v0,8254
     16c:	1000000e 	b	1a8 <L80A7913C+0x1c>
     170:	2402203d 	li	v0,8253

00000174 <L80A79124>:
     174:	1000000c 	b	1a8 <L80A7913C+0x1c>
     178:	2402203a 	li	v0,8250

0000017c <L80A7912C>:
     17c:	1000000a 	b	1a8 <L80A7913C+0x1c>
     180:	2402203c 	li	v0,8252

00000184 <L80A79134>:
     184:	10000008 	b	1a8 <L80A7913C+0x1c>
     188:	2402205b 	li	v0,8283

0000018c <L80A7913C>:
     18c:	94680f0a 	lhu	t0,3850(v1)
     190:	24022030 	li	v0,8240
     194:	31090400 	andi	t1,t0,0x400
     198:	11200003 	beqz	t1,1a8 <L80A7913C+0x1c>
     19c:	00000000 	nop
     1a0:	10000001 	b	1a8 <L80A7913C+0x1c>
     1a4:	24022031 	li	v0,8241
     1a8:	8fbf0014 	lw	ra,20(sp)
     1ac:	27bd0020 	addiu	sp,sp,32
     1b0:	03e00008 	jr	ra
     1b4:	00000000 	nop

000001b8 <func_80A79168>:
     1b8:	27bdffe8 	addiu	sp,sp,-24
     1bc:	afbf0014 	sw	ra,20(sp)
     1c0:	afa5001c 	sw	a1,28(sp)
     1c4:	24050019 	li	a1,25
     1c8:	0c000000 	jal	0 <func_80A78FB0>
     1cc:	afa40018 	sw	a0,24(sp)
     1d0:	8fa40018 	lw	a0,24(sp)
     1d4:	10400003 	beqz	v0,1e4 <func_80A79168+0x2c>
     1d8:	3043ffff 	andi	v1,v0,0xffff
     1dc:	1000000b 	b	20c <func_80A79168+0x54>
     1e0:	00601025 	move	v0,v1
     1e4:	3c0e0000 	lui	t6,0x0
     1e8:	8dce0004 	lw	t6,4(t6)
     1ec:	11c00005 	beqz	t6,204 <func_80A79168+0x4c>
     1f0:	00000000 	nop
     1f4:	0c000000 	jal	0 <func_80A78FB0>
     1f8:	00000000 	nop
     1fc:	10000004 	b	210 <func_80A79168+0x58>
     200:	8fbf0014 	lw	ra,20(sp)
     204:	0c000000 	jal	0 <func_80A78FB0>
     208:	00000000 	nop
     20c:	8fbf0014 	lw	ra,20(sp)
     210:	27bd0018 	addiu	sp,sp,24
     214:	03e00008 	jr	ra
     218:	00000000 	nop

0000021c <func_80A791CC>:
     21c:	afa40000 	sw	a0,0(sp)
     220:	94a2010e 	lhu	v0,270(a1)
     224:	2401203e 	li	at,8254
     228:	00001825 	move	v1,zero
     22c:	1041000c 	beq	v0,at,260 <func_80A791CC+0x44>
     230:	2401203f 	li	at,8255
     234:	1041000e 	beq	v0,at,270 <func_80A791CC+0x54>
     238:	24012045 	li	at,8261
     23c:	14410014 	bne	v0,at,290 <func_80A791CC+0x74>
     240:	3c020000 	lui	v0,0x0
     244:	24420000 	addiu	v0,v0,0
     248:	944e0f0a 	lhu	t6,3850(v0)
     24c:	35cf0080 	ori	t7,t6,0x80
     250:	a44f0f0a 	sh	t7,3850(v0)
     254:	00001400 	sll	v0,zero,0x10
     258:	03e00008 	jr	ra
     25c:	00021403 	sra	v0,v0,0x10
     260:	24030002 	li	v1,2
     264:	00031400 	sll	v0,v1,0x10
     268:	03e00008 	jr	ra
     26c:	00021403 	sra	v0,v0,0x10
     270:	3c020000 	lui	v0,0x0
     274:	24420000 	addiu	v0,v0,0
     278:	94580ed6 	lhu	t8,3798(v0)
     27c:	94480f0a 	lhu	t0,3850(v0)
     280:	37190002 	ori	t9,t8,0x2
     284:	35090010 	ori	t1,t0,0x10
     288:	a4590ed6 	sh	t9,3798(v0)
     28c:	a4490f0a 	sh	t1,3850(v0)
     290:	00031400 	sll	v0,v1,0x10
     294:	03e00008 	jr	ra
     298:	00021403 	sra	v0,v0,0x10

0000029c <func_80A7924C>:
     29c:	27bdffe0 	addiu	sp,sp,-32
     2a0:	240e0001 	li	t6,1
     2a4:	afbf0014 	sw	ra,20(sp)
     2a8:	afae0018 	sw	t6,24(sp)
     2ac:	94a2010e 	lhu	v0,270(a1)
     2b0:	00803825 	move	a3,a0
     2b4:	00a03025 	move	a2,a1
     2b8:	28412039 	slti	at,v0,8249
     2bc:	14200006 	bnez	at,2d8 <func_80A7924C+0x3c>
     2c0:	244fdfd0 	addiu	t7,v0,-8240
     2c4:	2401205b 	li	at,8283
     2c8:	50410064 	beql	v0,at,45c <L80A793A8+0x64>
     2cc:	3c0f0001 	lui	t7,0x1
     2d0:	10000082 	b	4dc <L80A79488+0x4>
     2d4:	8fbf0014 	lw	ra,20(sp)
     2d8:	2de10009 	sltiu	at,t7,9
     2dc:	1020007e 	beqz	at,4d8 <L80A79488>
     2e0:	000f7880 	sll	t7,t7,0x2
     2e4:	3c010000 	lui	at,0x0
     2e8:	002f0821 	addu	at,at,t7
     2ec:	8c2f0000 	lw	t7,0(at)
     2f0:	01e00008 	jr	t7
     2f4:	00000000 	nop

000002f8 <L80A792A8>:
     2f8:	3c180001 	lui	t8,0x1
     2fc:	0307c021 	addu	t8,t8,a3
     300:	931804bd 	lbu	t8,1213(t8)
     304:	24010001 	li	at,1
     308:	3c020000 	lui	v0,0x0
     30c:	17010004 	bne	t8,at,320 <L80A792A8+0x28>
     310:	00e02025 	move	a0,a3
     314:	24192032 	li	t9,8242
     318:	1000000b 	b	348 <L80A792A8+0x50>
     31c:	a4d9010e 	sh	t9,270(a2)
     320:	24420000 	addiu	v0,v0,0
     324:	84480034 	lh	t0,52(v0)
     328:	24092033 	li	t1,8243
     32c:	240a2034 	li	t2,8244
     330:	2901000a 	slti	at,t0,10
     334:	50200004 	beqzl	at,348 <L80A792A8+0x50>
     338:	a4ca010e 	sh	t2,270(a2)
     33c:	10000002 	b	348 <L80A792A8+0x50>
     340:	a4c9010e 	sh	t1,270(a2)
     344:	a4ca010e 	sh	t2,270(a2)
     348:	0c000000 	jal	0 <func_80A78FB0>
     34c:	94c5010e 	lhu	a1,270(a2)
     350:	3c020000 	lui	v0,0x0
     354:	24420000 	addiu	v0,v0,0
     358:	944b0f0a 	lhu	t3,3850(v0)
     35c:	356c0400 	ori	t4,t3,0x400
     360:	1000005d 	b	4d8 <L80A79488>
     364:	a44c0f0a 	sh	t4,3850(v0)

00000368 <L80A79318>:
     368:	3c0d0001 	lui	t5,0x1
     36c:	01a76821 	addu	t5,t5,a3
     370:	91ad04bd 	lbu	t5,1213(t5)
     374:	24010001 	li	at,1
     378:	15a10009 	bne	t5,at,3a0 <L80A79318+0x38>
     37c:	2404fff6 	li	a0,-10
     380:	afa60024 	sw	a2,36(sp)
     384:	0c000000 	jal	0 <func_80A78FB0>
     388:	afa70020 	sw	a3,32(sp)
     38c:	8fa60024 	lw	a2,36(sp)
     390:	8fa70020 	lw	a3,32(sp)
     394:	240e205c 	li	t6,8284
     398:	10000003 	b	3a8 <L80A79318+0x40>
     39c:	a4ce010e 	sh	t6,270(a2)
     3a0:	240f2035 	li	t7,8245
     3a4:	a4cf010e 	sh	t7,270(a2)
     3a8:	00e02025 	move	a0,a3
     3ac:	0c000000 	jal	0 <func_80A78FB0>
     3b0:	94c5010e 	lhu	a1,270(a2)
     3b4:	10000049 	b	4dc <L80A79488+0x4>
     3b8:	8fbf0014 	lw	ra,20(sp)

000003bc <L80A7936C>:
     3bc:	3c180001 	lui	t8,0x1
     3c0:	0307c021 	addu	t8,t8,a3
     3c4:	931804bd 	lbu	t8,1213(t8)
     3c8:	24010001 	li	at,1
     3cc:	2408201f 	li	t0,8223
     3d0:	17010004 	bne	t8,at,3e4 <L80A7936C+0x28>
     3d4:	00e02025 	move	a0,a3
     3d8:	24190002 	li	t9,2
     3dc:	1000003e 	b	4d8 <L80A79488>
     3e0:	afb90018 	sw	t9,24(sp)
     3e4:	a4c8010e 	sh	t0,270(a2)
     3e8:	0c000000 	jal	0 <func_80A78FB0>
     3ec:	3105ffff 	andi	a1,t0,0xffff
     3f0:	1000003a 	b	4dc <L80A79488+0x4>
     3f4:	8fbf0014 	lw	ra,20(sp)

000003f8 <L80A793A8>:
     3f8:	3c090001 	lui	t1,0x1
     3fc:	01274821 	addu	t1,t1,a3
     400:	912904bd 	lbu	t1,1213(t1)
     404:	3c020000 	lui	v0,0x0
     408:	24420000 	addiu	v0,v0,0
     40c:	15200008 	bnez	t1,430 <L80A793A8+0x38>
     410:	240c2039 	li	t4,8249
     414:	844a0034 	lh	t2,52(v0)
     418:	240b0002 	li	t3,2
     41c:	29410032 	slti	at,t2,50
     420:	54200004 	bnezl	at,434 <L80A793A8+0x3c>
     424:	a4cc010e 	sh	t4,270(a2)
     428:	1000002b 	b	4d8 <L80A79488>
     42c:	afab0018 	sw	t3,24(sp)
     430:	a4cc010e 	sh	t4,270(a2)
     434:	00e02025 	move	a0,a3
     438:	0c000000 	jal	0 <func_80A78FB0>
     43c:	3185ffff 	andi	a1,t4,0xffff
     440:	3c020000 	lui	v0,0x0
     444:	24420000 	addiu	v0,v0,0
     448:	944d0f0c 	lhu	t5,3852(v0)
     44c:	35ae0004 	ori	t6,t5,0x4
     450:	10000021 	b	4d8 <L80A79488>
     454:	a44e0f0c 	sh	t6,3852(v0)
     458:	3c0f0001 	lui	t7,0x1
     45c:	01e77821 	addu	t7,t7,a3
     460:	91ef04bd 	lbu	t7,1213(t7)
     464:	15e00009 	bnez	t7,48c <L80A793A8+0x94>
     468:	3c020000 	lui	v0,0x0
     46c:	24420000 	addiu	v0,v0,0
     470:	84580034 	lh	t8,52(v0)
     474:	24190002 	li	t9,2
     478:	2b010032 	slti	at,t8,50
     47c:	54200004 	bnezl	at,490 <L80A793A8+0x98>
     480:	24082039 	li	t0,8249
     484:	10000014 	b	4d8 <L80A79488>
     488:	afb90018 	sw	t9,24(sp)
     48c:	24082039 	li	t0,8249
     490:	a4c8010e 	sh	t0,270(a2)
     494:	afa60024 	sw	a2,36(sp)
     498:	3105ffff 	andi	a1,t0,0xffff
     49c:	0c000000 	jal	0 <func_80A78FB0>
     4a0:	00e02025 	move	a0,a3
     4a4:	3c020000 	lui	v0,0x0
     4a8:	24420000 	addiu	v0,v0,0
     4ac:	944913fa 	lhu	t1,5114(v0)
     4b0:	8fa60024 	lw	a2,36(sp)
     4b4:	3c0f0000 	lui	t7,0x0
     4b8:	312bfff0 	andi	t3,t1,0xfff0
     4bc:	316dffdf 	andi	t5,t3,0xffdf
     4c0:	a44b13fa 	sh	t3,5114(v0)
     4c4:	a44d13fa 	sh	t5,5114(v0)
     4c8:	31aeffbf 	andi	t6,t5,0xffbf
     4cc:	a44e13fa 	sh	t6,5114(v0)
     4d0:	25ef0000 	addiu	t7,t7,0
     4d4:	accf0190 	sw	t7,400(a2)

000004d8 <L80A79488>:
     4d8:	8fbf0014 	lw	ra,20(sp)
     4dc:	87a2001a 	lh	v0,26(sp)
     4e0:	27bd0020 	addiu	sp,sp,32
     4e4:	03e00008 	jr	ra
     4e8:	00000000 	nop

000004ec <func_80A7949C>:
     4ec:	27bdffe0 	addiu	sp,sp,-32
     4f0:	afbf0014 	sw	ra,20(sp)
     4f4:	afa40020 	sw	a0,32(sp)
     4f8:	94ae010e 	lhu	t6,270(a1)
     4fc:	24012035 	li	at,8245
     500:	24030001 	li	v1,1
     504:	15c1000c 	bne	t6,at,538 <func_80A7949C+0x4c>
     508:	2404fff6 	li	a0,-10
     50c:	afa3001c 	sw	v1,28(sp)
     510:	0c000000 	jal	0 <func_80A78FB0>
     514:	afa50024 	sw	a1,36(sp)
     518:	8fa60024 	lw	a2,36(sp)
     51c:	240f205c 	li	t7,8284
     520:	31e5ffff 	andi	a1,t7,0xffff
     524:	a4cf010e 	sh	t7,270(a2)
     528:	0c000000 	jal	0 <func_80A78FB0>
     52c:	8fa40020 	lw	a0,32(sp)
     530:	10000002 	b	53c <func_80A7949C+0x50>
     534:	8fa3001c 	lw	v1,28(sp)
     538:	24030002 	li	v1,2
     53c:	8fbf0014 	lw	ra,20(sp)
     540:	00031400 	sll	v0,v1,0x10
     544:	00021403 	sra	v0,v0,0x10
     548:	03e00008 	jr	ra
     54c:	27bd0020 	addiu	sp,sp,32

00000550 <func_80A79500>:
     550:	27bdffe0 	addiu	sp,sp,-32
     554:	afa40020 	sw	a0,32(sp)
     558:	afbf0014 	sw	ra,20(sp)
     55c:	240e0001 	li	t6,1
     560:	248420d8 	addiu	a0,a0,8408
     564:	afa50024 	sw	a1,36(sp)
     568:	a7ae001e 	sh	t6,30(sp)
     56c:	0c000000 	jal	0 <func_80A78FB0>
     570:	afa40018 	sw	a0,24(sp)
     574:	8faf0024 	lw	t7,36(sp)
     578:	3c040000 	lui	a0,0x0
     57c:	24840000 	addiu	a0,a0,0
     580:	00402825 	move	a1,v0
     584:	0c000000 	jal	0 <func_80A78FB0>
     588:	95e6010e 	lhu	a2,270(t7)
     58c:	0c000000 	jal	0 <func_80A78FB0>
     590:	8fa40018 	lw	a0,24(sp)
     594:	2c41000a 	sltiu	at,v0,10
     598:	1020001a 	beqz	at,604 <L80A795B4>
     59c:	0002c080 	sll	t8,v0,0x2
     5a0:	3c010000 	lui	at,0x0
     5a4:	00380821 	addu	at,at,t8
     5a8:	8c380000 	lw	t8,0(at)
     5ac:	03000008 	jr	t8
     5b0:	00000000 	nop

000005b4 <L80A79564>:
     5b4:	8fa40020 	lw	a0,32(sp)
     5b8:	0c000000 	jal	0 <func_80A78FB0>
     5bc:	8fa50024 	lw	a1,36(sp)
     5c0:	10000010 	b	604 <L80A795B4>
     5c4:	a7a2001e 	sh	v0,30(sp)

000005c8 <L80A79578>:
     5c8:	0c000000 	jal	0 <func_80A78FB0>
     5cc:	8fa40020 	lw	a0,32(sp)
     5d0:	1040000c 	beqz	v0,604 <L80A795B4>
     5d4:	8fa40020 	lw	a0,32(sp)
     5d8:	0c000000 	jal	0 <func_80A78FB0>
     5dc:	8fa50024 	lw	a1,36(sp)
     5e0:	10000008 	b	604 <L80A795B4>
     5e4:	a7a2001e 	sh	v0,30(sp)

000005e8 <L80A79598>:
     5e8:	0c000000 	jal	0 <func_80A78FB0>
     5ec:	8fa40020 	lw	a0,32(sp)
     5f0:	10400004 	beqz	v0,604 <L80A795B4>
     5f4:	8fa40020 	lw	a0,32(sp)
     5f8:	0c000000 	jal	0 <func_80A78FB0>
     5fc:	8fa50024 	lw	a1,36(sp)
     600:	a7a2001e 	sh	v0,30(sp)

00000604 <L80A795B4>:
     604:	8fbf0014 	lw	ra,20(sp)
     608:	87a2001e 	lh	v0,30(sp)
     60c:	27bd0020 	addiu	sp,sp,32
     610:	03e00008 	jr	ra
     614:	00000000 	nop

00000618 <func_80A795C8>:
     618:	27bdffe8 	addiu	sp,sp,-24
     61c:	afbf0014 	sw	ra,20(sp)
     620:	8c820154 	lw	v0,340(a0)
     624:	3c0e0600 	lui	t6,0x600
     628:	25ce03b4 	addiu	t6,t6,948
     62c:	11c20008 	beq	t6,v0,650 <func_80A795C8+0x38>
     630:	8ca31c44 	lw	v1,7236(a1)
     634:	3c0f0600 	lui	t7,0x600
     638:	25ef1be0 	addiu	t7,t7,7136
     63c:	11e20004 	beq	t7,v0,650 <func_80A795C8+0x38>
     640:	3c180601 	lui	t8,0x601
     644:	27183d60 	addiu	t8,t8,15712
     648:	17020003 	bne	t8,v0,658 <func_80A795C8+0x40>
     64c:	00003825 	move	a3,zero
     650:	10000001 	b	658 <func_80A795C8+0x40>
     654:	24070001 	li	a3,1
     658:	8c820190 	lw	v0,400(a0)
     65c:	3c190000 	lui	t9,0x0
     660:	27390000 	addiu	t9,t9,0
     664:	17220002 	bne	t9,v0,670 <func_80A795C8+0x58>
     668:	3c080000 	lui	t0,0x0
     66c:	24070004 	li	a3,4
     670:	25080000 	addiu	t0,t0,0
     674:	1502000b 	bne	t0,v0,6a4 <func_80A795C8+0x8c>
     678:	24060001 	li	a2,1
     67c:	8caa00e0 	lw	t2,224(a1)
     680:	3c014270 	lui	at,0x4270
     684:	44812000 	mtc1	at,$f4
     688:	ac8a0320 	sw	t2,800(a0)
     68c:	8ca900e4 	lw	t1,228(a1)
     690:	ac890324 	sw	t1,804(a0)
     694:	8caa00e8 	lw	t2,232(a1)
     698:	e484031c 	swc1	$f4,796(a0)
     69c:	1000000a 	b	6c8 <func_80A795C8+0xb0>
     6a0:	ac8a0328 	sw	t2,808(a0)
     6a4:	8c6c0024 	lw	t4,36(v1)
     6a8:	3c014180 	lui	at,0x4180
     6ac:	44813000 	mtc1	at,$f6
     6b0:	ac8c0320 	sw	t4,800(a0)
     6b4:	8c6b0028 	lw	t3,40(v1)
     6b8:	ac8b0324 	sw	t3,804(a0)
     6bc:	8c6c002c 	lw	t4,44(v1)
     6c0:	e486031c 	swc1	$f6,796(a0)
     6c4:	ac8c0328 	sw	t4,808(a0)
     6c8:	0c000000 	jal	0 <func_80A78FB0>
     6cc:	24850308 	addiu	a1,a0,776
     6d0:	8fbf0014 	lw	ra,20(sp)
     6d4:	27bd0018 	addiu	sp,sp,24
     6d8:	03e00008 	jr	ra
     6dc:	00000000 	nop

000006e0 <func_80A79690>:
     6e0:	27bdffe0 	addiu	sp,sp,-32
     6e4:	afbf001c 	sw	ra,28(sp)
     6e8:	afb00018 	sw	s0,24(sp)
     6ec:	afa60028 	sw	a2,40(sp)
     6f0:	8c8f0020 	lw	t7,32(a0)
     6f4:	848e0040 	lh	t6,64(a0)
     6f8:	00808025 	move	s0,a0
     6fc:	85f80002 	lh	t8,2(t7)
     700:	01d8082a 	slt	at,t6,t8
     704:	50200009 	beqzl	at,72c <func_80A79690+0x4c>
     708:	8fbf001c 	lw	ra,28(sp)
     70c:	90990035 	lbu	t9,53(a0)
     710:	02003025 	move	a2,s0
     714:	3c073f80 	lui	a3,0x3f80
     718:	37280003 	ori	t0,t9,0x3
     71c:	a0880035 	sb	t0,53(a0)
     720:	0c000000 	jal	0 <func_80A78FB0>
     724:	8fa40028 	lw	a0,40(sp)
     728:	8fbf001c 	lw	ra,28(sp)
     72c:	8fb00018 	lw	s0,24(sp)
     730:	27bd0020 	addiu	sp,sp,32
     734:	03e00008 	jr	ra
     738:	00000000 	nop

0000073c <func_80A796EC>:
     73c:	27bdffd0 	addiu	sp,sp,-48
     740:	3c0f0000 	lui	t7,0x0
     744:	25ef0000 	addiu	t7,t7,0
     748:	00057100 	sll	t6,a1,0x4
     74c:	afbf0024 	sw	ra,36(sp)
     750:	afa40030 	sw	a0,48(sp)
     754:	01cf1821 	addu	v1,t6,t7
     758:	8c640000 	lw	a0,0(v1)
     75c:	0c000000 	jal	0 <func_80A78FB0>
     760:	afa30028 	sw	v1,40(sp)
     764:	44822000 	mtc1	v0,$f4
     768:	8fa30028 	lw	v1,40(sp)
     76c:	8fa40030 	lw	a0,48(sp)
     770:	468021a0 	cvt.s.w	$f6,$f4
     774:	90780008 	lbu	t8,8(v1)
     778:	c468000c 	lwc1	$f8,12(v1)
     77c:	3c063f80 	lui	a2,0x3f80
     780:	24070000 	li	a3,0
     784:	8c650000 	lw	a1,0(v1)
     788:	e7a60010 	swc1	$f6,16(sp)
     78c:	2484014c 	addiu	a0,a0,332
     790:	afb80014 	sw	t8,20(sp)
     794:	0c000000 	jal	0 <func_80A78FB0>
     798:	e7a80018 	swc1	$f8,24(sp)
     79c:	8fbf0024 	lw	ra,36(sp)
     7a0:	27bd0030 	addiu	sp,sp,48
     7a4:	03e00008 	jr	ra
     7a8:	00000000 	nop

000007ac <func_80A7975C>:
     7ac:	27bdffd0 	addiu	sp,sp,-48
     7b0:	afbf002c 	sw	ra,44(sp)
     7b4:	afb00028 	sw	s0,40(sp)
     7b8:	afa50034 	sw	a1,52(sp)
     7bc:	848e001c 	lh	t6,28(a0)
     7c0:	24020001 	li	v0,1
     7c4:	00808025 	move	s0,a0
     7c8:	144e0008 	bne	v0,t6,7ec <func_80A7975C+0x40>
     7cc:	00000000 	nop
     7d0:	848f00b8 	lh	t7,184(a0)
     7d4:	3c180000 	lui	t8,0x0
     7d8:	144f0004 	bne	v0,t7,7ec <func_80A7975C+0x40>
     7dc:	00000000 	nop
     7e0:	8f180004 	lw	t8,4(t8)
     7e4:	53000004 	beqzl	t8,7f8 <func_80A7975C+0x4c>
     7e8:	a60201e6 	sh	v0,486(s0)
     7ec:	1000001f 	b	86c <func_80A7975C+0xc0>
     7f0:	00001025 	move	v0,zero
     7f4:	a60201e6 	sh	v0,486(s0)
     7f8:	921901a6 	lbu	t9,422(s0)
     7fc:	860901e6 	lh	t1,486(s0)
     800:	3c040000 	lui	a0,0x0
     804:	3328fffe 	andi	t0,t9,0xfffe
     808:	00095080 	sll	t2,t1,0x2
     80c:	a20801a6 	sb	t0,422(s0)
     810:	008a2021 	addu	a0,a0,t2
     814:	0c000000 	jal	0 <func_80A78FB0>
     818:	8c840000 	lw	a0,0(a0)
     81c:	44822000 	mtc1	v0,$f4
     820:	860b01e6 	lh	t3,486(s0)
     824:	44800000 	mtc1	zero,$f0
     828:	468021a0 	cvt.s.w	$f6,$f4
     82c:	3c050000 	lui	a1,0x0
     830:	000b6080 	sll	t4,t3,0x2
     834:	00ac2821 	addu	a1,a1,t4
     838:	240d0002 	li	t5,2
     83c:	44070000 	mfc1	a3,$f0
     840:	afad0014 	sw	t5,20(sp)
     844:	8ca50000 	lw	a1,0(a1)
     848:	e7a60010 	swc1	$f6,16(sp)
     84c:	2604014c 	addiu	a0,s0,332
     850:	3c063f80 	lui	a2,0x3f80
     854:	0c000000 	jal	0 <func_80A78FB0>
     858:	e7a00018 	swc1	$f0,24(sp)
     85c:	3c0e0000 	lui	t6,0x0
     860:	25ce0000 	addiu	t6,t6,0
     864:	ae0e0190 	sw	t6,400(s0)
     868:	24020001 	li	v0,1
     86c:	8fbf002c 	lw	ra,44(sp)
     870:	8fb00028 	lw	s0,40(sp)
     874:	27bd0030 	addiu	sp,sp,48
     878:	03e00008 	jr	ra
     87c:	00000000 	nop

00000880 <func_80A79830>:
     880:	84a200a4 	lh	v0,164(a1)
     884:	24060063 	li	a2,99
     888:	3c070000 	lui	a3,0x0
     88c:	14c20011 	bne	a2,v0,8d4 <func_80A79830+0x54>
     890:	24e70000 	addiu	a3,a3,0
     894:	8cee0004 	lw	t6,4(a3)
     898:	24050001 	li	a1,1
     89c:	54ae000e 	bnel	a1,t6,8d8 <func_80A79830+0x58>
     8a0:	24030036 	li	v1,54
     8a4:	8cef0010 	lw	t7,16(a3)
     8a8:	55e0000b 	bnezl	t7,8d8 <func_80A79830+0x58>
     8ac:	24030036 	li	v1,54
     8b0:	849800b8 	lh	t8,184(a0)
     8b4:	54b80008 	bnel	a1,t8,8d8 <func_80A79830+0x58>
     8b8:	24030036 	li	v1,54
     8bc:	94f90ed6 	lhu	t9,3798(a3)
     8c0:	33280010 	andi	t0,t9,0x10
     8c4:	55000004 	bnezl	t0,8d8 <func_80A79830+0x58>
     8c8:	24030036 	li	v1,54
     8cc:	03e00008 	jr	ra
     8d0:	24020001 	li	v0,1
     8d4:	24030036 	li	v1,54
     8d8:	3c070000 	lui	a3,0x0
     8dc:	24e70000 	addiu	a3,a3,0
     8e0:	14620011 	bne	v1,v0,928 <func_80A79830+0xa8>
     8e4:	24050001 	li	a1,1
     8e8:	8ce90004 	lw	t1,4(a3)
     8ec:	14a9000e 	bne	a1,t1,928 <func_80A79830+0xa8>
     8f0:	00000000 	nop
     8f4:	8cea0010 	lw	t2,16(a3)
     8f8:	1540000b 	bnez	t2,928 <func_80A79830+0xa8>
     8fc:	00000000 	nop
     900:	848b00b8 	lh	t3,184(a0)
     904:	24010003 	li	at,3
     908:	15610007 	bne	t3,at,928 <func_80A79830+0xa8>
     90c:	00000000 	nop
     910:	94ec0ed6 	lhu	t4,3798(a3)
     914:	318d0010 	andi	t5,t4,0x10
     918:	11a00003 	beqz	t5,928 <func_80A79830+0xa8>
     91c:	00000000 	nop
     920:	03e00008 	jr	ra
     924:	24020001 	li	v0,1
     928:	1462001a 	bne	v1,v0,994 <func_80A79830+0x114>
     92c:	00000000 	nop
     930:	8cee0004 	lw	t6,4(a3)
     934:	14ae0017 	bne	a1,t6,994 <func_80A79830+0x114>
     938:	00000000 	nop
     93c:	8cef0010 	lw	t7,16(a3)
     940:	14af0014 	bne	a1,t7,994 <func_80A79830+0x114>
     944:	00000000 	nop
     948:	848300b8 	lh	v1,184(a0)
     94c:	24010002 	li	at,2
     950:	54610008 	bnel	v1,at,974 <func_80A79830+0xf4>
     954:	24010004 	li	at,4
     958:	94f80ed6 	lhu	t8,3798(a3)
     95c:	33190010 	andi	t9,t8,0x10
     960:	57200004 	bnezl	t9,974 <func_80A79830+0xf4>
     964:	24010004 	li	at,4
     968:	03e00008 	jr	ra
     96c:	24020001 	li	v0,1
     970:	24010004 	li	at,4
     974:	14610007 	bne	v1,at,994 <func_80A79830+0x114>
     978:	00000000 	nop
     97c:	94e80ed6 	lhu	t0,3798(a3)
     980:	31090010 	andi	t1,t0,0x10
     984:	11200003 	beqz	t1,994 <func_80A79830+0x114>
     988:	00000000 	nop
     98c:	03e00008 	jr	ra
     990:	24020001 	li	v0,1
     994:	54c2001b 	bnel	a2,v0,a04 <func_80A79830+0x184>
     998:	2401004c 	li	at,76
     99c:	8cea0004 	lw	t2,4(a3)
     9a0:	55400018 	bnezl	t2,a04 <func_80A79830+0x184>
     9a4:	2401004c 	li	at,76
     9a8:	8ceb0010 	lw	t3,16(a3)
     9ac:	55600015 	bnezl	t3,a04 <func_80A79830+0x184>
     9b0:	2401004c 	li	at,76
     9b4:	848300b8 	lh	v1,184(a0)
     9b8:	24010005 	li	at,5
     9bc:	54610008 	bnel	v1,at,9e0 <func_80A79830+0x160>
     9c0:	24010007 	li	at,7
     9c4:	94ec0ed6 	lhu	t4,3798(a3)
     9c8:	318d0100 	andi	t5,t4,0x100
     9cc:	55a00004 	bnezl	t5,9e0 <func_80A79830+0x160>
     9d0:	24010007 	li	at,7
     9d4:	03e00008 	jr	ra
     9d8:	24020002 	li	v0,2
     9dc:	24010007 	li	at,7
     9e0:	54610008 	bnel	v1,at,a04 <func_80A79830+0x184>
     9e4:	2401004c 	li	at,76
     9e8:	94ee0ed6 	lhu	t6,3798(a3)
     9ec:	31cf0100 	andi	t7,t6,0x100
     9f0:	51e00004 	beqzl	t7,a04 <func_80A79830+0x184>
     9f4:	2401004c 	li	at,76
     9f8:	03e00008 	jr	ra
     9fc:	24020004 	li	v0,4
     a00:	2401004c 	li	at,76
     a04:	5441001b 	bnel	v0,at,a74 <func_80A79830+0x1f4>
     a08:	00001025 	move	v0,zero
     a0c:	8cf80004 	lw	t8,4(a3)
     a10:	57000018 	bnezl	t8,a74 <func_80A79830+0x1f4>
     a14:	00001025 	move	v0,zero
     a18:	8cf90010 	lw	t9,16(a3)
     a1c:	54b90015 	bnel	a1,t9,a74 <func_80A79830+0x1f4>
     a20:	00001025 	move	v0,zero
     a24:	848300b8 	lh	v1,184(a0)
     a28:	24010006 	li	at,6
     a2c:	54610008 	bnel	v1,at,a50 <func_80A79830+0x1d0>
     a30:	24010008 	li	at,8
     a34:	94e80ed6 	lhu	t0,3798(a3)
     a38:	31090100 	andi	t1,t0,0x100
     a3c:	55200004 	bnezl	t1,a50 <func_80A79830+0x1d0>
     a40:	24010008 	li	at,8
     a44:	03e00008 	jr	ra
     a48:	24020003 	li	v0,3
     a4c:	24010008 	li	at,8
     a50:	54610008 	bnel	v1,at,a74 <func_80A79830+0x1f4>
     a54:	00001025 	move	v0,zero
     a58:	94ea0ed6 	lhu	t2,3798(a3)
     a5c:	314b0100 	andi	t3,t2,0x100
     a60:	51600004 	beqzl	t3,a74 <func_80A79830+0x1f4>
     a64:	00001025 	move	v0,zero
     a68:	03e00008 	jr	ra
     a6c:	24020003 	li	v0,3
     a70:	00001025 	move	v0,zero
     a74:	03e00008 	jr	ra
     a78:	00000000 	nop

00000a7c <func_80A79A2C>:
     a7c:	27bdffe8 	addiu	sp,sp,-24
     a80:	afbf0014 	sw	ra,20(sp)
     a84:	848e01ee 	lh	t6,494(a0)
     a88:	24010003 	li	at,3
     a8c:	00803025 	move	a2,a0
     a90:	51c10019 	beql	t6,at,af8 <func_80A79A2C+0x7c>
     a94:	8fbf0014 	lw	ra,20(sp)
     a98:	848201ea 	lh	v0,490(a0)
     a9c:	14400003 	bnez	v0,aac <func_80A79A2C+0x30>
     aa0:	244fffff 	addiu	t7,v0,-1
     aa4:	10000003 	b	ab4 <func_80A79A2C+0x38>
     aa8:	00001825 	move	v1,zero
     aac:	a4cf01ea 	sh	t7,490(a2)
     ab0:	84c301ea 	lh	v1,490(a2)
     ab4:	54600010 	bnezl	v1,af8 <func_80A79A2C+0x7c>
     ab8:	8fbf0014 	lw	ra,20(sp)
     abc:	84d801ee 	lh	t8,494(a2)
     ac0:	2404001e 	li	a0,30
     ac4:	2405001e 	li	a1,30
     ac8:	27190001 	addiu	t9,t8,1
     acc:	a4d901ee 	sh	t9,494(a2)
     ad0:	84c801ee 	lh	t0,494(a2)
     ad4:	29010003 	slti	at,t0,3
     ad8:	54200007 	bnezl	at,af8 <func_80A79A2C+0x7c>
     adc:	8fbf0014 	lw	ra,20(sp)
     ae0:	0c000000 	jal	0 <func_80A78FB0>
     ae4:	afa60018 	sw	a2,24(sp)
     ae8:	8fa60018 	lw	a2,24(sp)
     aec:	a4c201ea 	sh	v0,490(a2)
     af0:	a4c001ee 	sh	zero,494(a2)
     af4:	8fbf0014 	lw	ra,20(sp)
     af8:	27bd0018 	addiu	sp,sp,24
     afc:	03e00008 	jr	ra
     b00:	00000000 	nop

00000b04 <func_80A79AB4>:
     b04:	8c8f0154 	lw	t7,340(a0)
     b08:	3c0e0601 	lui	t6,0x601
     b0c:	25ce4ca8 	addiu	t6,t6,19624
     b10:	11cf0004 	beq	t6,t7,b24 <func_80A79AB4+0x20>
     b14:	00001025 	move	v0,zero
     b18:	3c020001 	lui	v0,0x1
     b1c:	00451021 	addu	v0,v0,a1
     b20:	8c421de4 	lw	v0,7652(v0)
     b24:	00802825 	move	a1,a0
     b28:	24060814 	li	a2,2068
     b2c:	24070940 	li	a3,2368
     b30:	24080846 	li	t0,2118
     b34:	24090972 	li	t1,2418
     b38:	240a0878 	li	t2,2168
     b3c:	240b09a4 	li	t3,2468
     b40:	240c08aa 	li	t4,2218
     b44:	240d09d6 	li	t5,2518
     b48:	24030dbe 	li	v1,3518
     b4c:	00c20019 	multu	a2,v0
     b50:	24c600c8 	addiu	a2,a2,200
     b54:	24a50018 	addiu	a1,a1,24
     b58:	0000c012 	mflo	t8
     b5c:	a4b8031a 	sh	t8,794(a1)
     b60:	00000000 	nop
     b64:	00e20019 	multu	a3,v0
     b68:	24e700c8 	addiu	a3,a3,200
     b6c:	0000c812 	mflo	t9
     b70:	a4b9031c 	sh	t9,796(a1)
     b74:	00000000 	nop
     b78:	01020019 	multu	t0,v0
     b7c:	250800c8 	addiu	t0,t0,200
     b80:	00007012 	mflo	t6
     b84:	a4ae0320 	sh	t6,800(a1)
     b88:	00000000 	nop
     b8c:	01220019 	multu	t1,v0
     b90:	252900c8 	addiu	t1,t1,200
     b94:	00007812 	mflo	t7
     b98:	a4af0322 	sh	t7,802(a1)
     b9c:	00000000 	nop
     ba0:	01420019 	multu	t2,v0
     ba4:	254a00c8 	addiu	t2,t2,200
     ba8:	0000c012 	mflo	t8
     bac:	a4b80326 	sh	t8,806(a1)
     bb0:	00000000 	nop
     bb4:	01620019 	multu	t3,v0
     bb8:	256b00c8 	addiu	t3,t3,200
     bbc:	0000c812 	mflo	t9
     bc0:	a4b90328 	sh	t9,808(a1)
     bc4:	00000000 	nop
     bc8:	01820019 	multu	t4,v0
     bcc:	258c00c8 	addiu	t4,t4,200
     bd0:	00007012 	mflo	t6
     bd4:	a4ae032c 	sh	t6,812(a1)
     bd8:	00000000 	nop
     bdc:	01a20019 	multu	t5,v0
     be0:	25ad00c8 	addiu	t5,t5,200
     be4:	00007812 	mflo	t7
     be8:	a4af032e 	sh	t7,814(a1)
     bec:	15a3ffd7 	bne	t5,v1,b4c <func_80A79AB4+0x48>
     bf0:	00000000 	nop
     bf4:	03e00008 	jr	ra
     bf8:	00000000 	nop

00000bfc <func_80A79BAC>:
     bfc:	27bdffd8 	addiu	sp,sp,-40
     c00:	3c0e0000 	lui	t6,0x0
     c04:	afbf0014 	sw	ra,20(sp)
     c08:	afa40028 	sw	a0,40(sp)
     c0c:	afa5002c 	sw	a1,44(sp)
     c10:	25ce0000 	addiu	t6,t6,0
     c14:	8dd80000 	lw	t8,0(t6)
     c18:	27a30020 	addiu	v1,sp,32
     c1c:	0006c840 	sll	t9,a2,0x1
     c20:	ac780000 	sw	t8,0(v1)
     c24:	95d80004 	lhu	t8,4(t6)
     c28:	00791021 	addu	v0,v1,t9
     c2c:	3c010001 	lui	at,0x1
     c30:	a4780004 	sh	t8,4(v1)
     c34:	8fa9002c 	lw	t1,44(sp)
     c38:	84480000 	lh	t0,0(v0)
     c3c:	340afff0 	li	t2,0xfff0
     c40:	00290821 	addu	at,at,t1
     c44:	a4281e1a 	sh	t0,7706(at)
     c48:	24010002 	li	at,2
     c4c:	14c10002 	bne	a2,at,c58 <func_80A79BAC+0x5c>
     c50:	3c010000 	lui	at,0x0
     c54:	a42a1412 	sh	t2,5138(at)
     c58:	8fab002c 	lw	t3,44(sp)
     c5c:	3c010001 	lui	at,0x1
     c60:	240c0014 	li	t4,20
     c64:	002b0821 	addu	at,at,t3
     c68:	a0271e5e 	sb	a3,7774(at)
     c6c:	8fad002c 	lw	t5,44(sp)
     c70:	3c010001 	lui	at,0x1
     c74:	24060008 	li	a2,8
     c78:	002d0821 	addu	at,at,t5
     c7c:	a02c1e15 	sb	t4,7701(at)
     c80:	afa2001c 	sw	v0,28(sp)
     c84:	8fa50028 	lw	a1,40(sp)
     c88:	0c000000 	jal	0 <func_80A78FB0>
     c8c:	8fa4002c 	lw	a0,44(sp)
     c90:	0c000000 	jal	0 <func_80A78FB0>
     c94:	24040001 	li	a0,1
     c98:	8fa2001c 	lw	v0,28(sp)
     c9c:	27ae0020 	addiu	t6,sp,32
     ca0:	3c0f0000 	lui	t7,0x0
     ca4:	544e0004 	bnel	v0,t6,cb8 <func_80A79BAC+0xbc>
     ca8:	8fbf0014 	lw	ra,20(sp)
     cac:	8def0000 	lw	t7,0(t7)
     cb0:	a5e00e60 	sh	zero,3680(t7)
     cb4:	8fbf0014 	lw	ra,20(sp)
     cb8:	3c010000 	lui	at,0x0
     cbc:	a42013ce 	sh	zero,5070(at)
     cc0:	03e00008 	jr	ra
     cc4:	27bd0028 	addiu	sp,sp,40

00000cc8 <func_80A79C78>:
     cc8:	27bdffa8 	addiu	sp,sp,-88
     ccc:	3c0f0000 	lui	t7,0x0
     cd0:	afbf0024 	sw	ra,36(sp)
     cd4:	afb20020 	sw	s2,32(sp)
     cd8:	afb1001c 	sw	s1,28(sp)
     cdc:	afb00018 	sw	s0,24(sp)
     ce0:	25ef0000 	addiu	t7,t7,0
     ce4:	8df90000 	lw	t9,0(t7)
     ce8:	8cb11c44 	lw	s1,7236(a1)
     cec:	27ae0034 	addiu	t6,sp,52
     cf0:	add90000 	sw	t9,0(t6)
     cf4:	95f90004 	lhu	t9,4(t7)
     cf8:	00808025 	move	s0,a0
     cfc:	00a09025 	move	s2,a1
     d00:	00a02025 	move	a0,a1
     d04:	0c000000 	jal	0 <func_80A78FB0>
     d08:	a5d90004 	sh	t9,4(t6)
     d0c:	a60201f0 	sh	v0,496(s0)
     d10:	02402025 	move	a0,s2
     d14:	00002825 	move	a1,zero
     d18:	0c000000 	jal	0 <func_80A78FB0>
     d1c:	24060001 	li	a2,1
     d20:	02402025 	move	a0,s2
     d24:	860501f0 	lh	a1,496(s0)
     d28:	0c000000 	jal	0 <func_80A78FB0>
     d2c:	24060007 	li	a2,7
     d30:	c6040024 	lwc1	$f4,36(s0)
     d34:	3c014270 	lui	at,0x4270
     d38:	44814000 	mtc1	at,$f8
     d3c:	e7a40048 	swc1	$f4,72(sp)
     d40:	c6060028 	lwc1	$f6,40(s0)
     d44:	3c0141b0 	lui	at,0x41b0
     d48:	c7b20048 	lwc1	$f18,72(sp)
     d4c:	46083280 	add.s	$f10,$f6,$f8
     d50:	44813000 	mtc1	at,$f6
     d54:	3c014220 	lui	at,0x4220
     d58:	02402025 	move	a0,s2
     d5c:	e7aa004c 	swc1	$f10,76(sp)
     d60:	c610002c 	lwc1	$f16,44(s0)
     d64:	c7a4004c 	lwc1	$f4,76(sp)
     d68:	e7b2003c 	swc1	$f18,60(sp)
     d6c:	e7b00050 	swc1	$f16,80(sp)
     d70:	c7aa0050 	lwc1	$f10,80(sp)
     d74:	44818000 	mtc1	at,$f16
     d78:	46062201 	sub.s	$f8,$f4,$f6
     d7c:	27a60048 	addiu	a2,sp,72
     d80:	27a7003c 	addiu	a3,sp,60
     d84:	46105480 	add.s	$f18,$f10,$f16
     d88:	e7a80040 	swc1	$f8,64(sp)
     d8c:	e7b20044 	swc1	$f18,68(sp)
     d90:	0c000000 	jal	0 <func_80A78FB0>
     d94:	860501f0 	lh	a1,496(s0)
     d98:	26040024 	addiu	a0,s0,36
     d9c:	afa4002c 	sw	a0,44(sp)
     da0:	0c000000 	jal	0 <func_80A78FB0>
     da4:	27a5003c 	addiu	a1,sp,60
     da8:	27a30034 	addiu	v1,sp,52
     dac:	a60200b6 	sh	v0,182(s0)
     db0:	8c690000 	lw	t1,0(v1)
     db4:	02402025 	move	a0,s2
     db8:	24052025 	li	a1,8229
     dbc:	aa090310 	swl	t1,784(s0)
     dc0:	ba090313 	swr	t1,787(s0)
     dc4:	94690004 	lhu	t1,4(v1)
     dc8:	00003025 	move	a2,zero
     dcc:	a6090314 	sh	t1,788(s0)
     dd0:	8c6b0000 	lw	t3,0(v1)
     dd4:	aa0b0316 	swl	t3,790(s0)
     dd8:	ba0b0319 	swr	t3,793(s0)
     ddc:	946b0004 	lhu	t3,4(v1)
     de0:	0c000000 	jal	0 <func_80A78FB0>
     de4:	a60b031a 	sh	t3,794(s0)
     de8:	240c0001 	li	t4,1
     dec:	a60c0308 	sh	t4,776(s0)
     df0:	8fad002c 	lw	t5,44(sp)
     df4:	26320024 	addiu	s2,s1,36
     df8:	8daf0000 	lw	t7,0(t5)
     dfc:	ae4f0000 	sw	t7,0(s2)
     e00:	8dae0004 	lw	t6,4(t5)
     e04:	ae4e0004 	sw	t6,4(s2)
     e08:	8daf0008 	lw	t7,8(t5)
     e0c:	ae4f0008 	sw	t7,8(s2)
     e10:	0c000000 	jal	0 <func_80A78FB0>
     e14:	860400b6 	lh	a0,182(s0)
     e18:	3c0142c8 	lui	at,0x42c8
     e1c:	44813000 	mtc1	at,$f6
     e20:	c6240024 	lwc1	$f4,36(s1)
     e24:	46003202 	mul.s	$f8,$f6,$f0
     e28:	46082280 	add.s	$f10,$f4,$f8
     e2c:	e62a0024 	swc1	$f10,36(s1)
     e30:	0c000000 	jal	0 <func_80A78FB0>
     e34:	860400b6 	lh	a0,182(s0)
     e38:	3c0142c8 	lui	at,0x42c8
     e3c:	44819000 	mtc1	at,$f18
     e40:	c630002c 	lwc1	$f16,44(s1)
     e44:	8e220440 	lw	v0,1088(s1)
     e48:	46009182 	mul.s	$f6,$f18,$f0
     e4c:	240a000a 	li	t2,10
     e50:	46068100 	add.s	$f4,$f16,$f6
     e54:	1040000a 	beqz	v0,e80 <func_80A79C78+0x1b8>
     e58:	e624002c 	swc1	$f4,44(s1)
     e5c:	8e590000 	lw	t9,0(s2)
     e60:	2408000a 	li	t0,10
     e64:	ac590024 	sw	t9,36(v0)
     e68:	8e580004 	lw	t8,4(s2)
     e6c:	ac580028 	sw	t8,40(v0)
     e70:	8e590008 	lw	t9,8(s2)
     e74:	ac59002c 	sw	t9,44(v0)
     e78:	8e290440 	lw	t1,1088(s1)
     e7c:	a5280110 	sh	t0,272(t1)
     e80:	a62a0110 	sh	t2,272(s1)
     e84:	8e0b0004 	lw	t3,4(s0)
     e88:	2401fffe 	li	at,-2
     e8c:	24040020 	li	a0,32
     e90:	01616024 	and	t4,t3,at
     e94:	0c000000 	jal	0 <func_80A78FB0>
     e98:	ae0c0004 	sw	t4,4(s0)
     e9c:	0c000000 	jal	0 <func_80A78FB0>
     ea0:	24040002 	li	a0,2
     ea4:	8fbf0024 	lw	ra,36(sp)
     ea8:	8fb00018 	lw	s0,24(sp)
     eac:	8fb1001c 	lw	s1,28(sp)
     eb0:	8fb20020 	lw	s2,32(sp)
     eb4:	03e00008 	jr	ra
     eb8:	27bd0058 	addiu	sp,sp,88

00000ebc <EnIn_Init>:
     ebc:	3c010001 	lui	at,0x1
     ec0:	27bdffd0 	addiu	sp,sp,-48
     ec4:	00803025 	move	a2,a0
     ec8:	342117a4 	ori	at,at,0x17a4
     ecc:	afbf0014 	sw	ra,20(sp)
     ed0:	00a12021 	addu	a0,a1,at
     ed4:	240500c0 	li	a1,192
     ed8:	0c000000 	jal	0 <func_80A78FB0>
     edc:	afa60030 	sw	a2,48(sp)
     ee0:	8fa60030 	lw	a2,48(sp)
     ee4:	3c190000 	lui	t9,0x0
     ee8:	3c0c0000 	lui	t4,0x0
     eec:	a0c201e4 	sb	v0,484(a2)
     ef0:	80ce01e4 	lb	t6,484(a2)
     ef4:	3c020000 	lui	v0,0x0
     ef8:	27391368 	addiu	t9,t9,4968
     efc:	05c10009 	bgez	t6,f24 <EnIn_Init+0x68>
     f00:	258c0000 	addiu	t4,t4,0
     f04:	84cf001c 	lh	t7,28(a2)
     f08:	00c02025 	move	a0,a2
     f0c:	59e00006 	blezl	t7,f28 <EnIn_Init+0x6c>
     f10:	8f290000 	lw	t1,0(t9)
     f14:	0c000000 	jal	0 <func_80A78FB0>
     f18:	acc00190 	sw	zero,400(a2)
     f1c:	10000026 	b	fb8 <EnIn_Init+0xfc>
     f20:	8fbf0014 	lw	ra,20(sp)
     f24:	8f290000 	lw	t1,0(t9)
     f28:	27b8001c 	addiu	t8,sp,28
     f2c:	8f280004 	lw	t0,4(t9)
     f30:	af090000 	sw	t1,0(t8)
     f34:	8f290008 	lw	t1,8(t9)
     f38:	24420000 	addiu	v0,v0,0
     f3c:	af080004 	sw	t0,4(t8)
     f40:	af090008 	sw	t1,8(t8)
     f44:	8c4a0000 	lw	t2,0(v0)
     f48:	c7a4001c 	lwc1	$f4,28(sp)
     f4c:	3c010000 	lui	at,0x0
     f50:	55400018 	bnezl	t2,fb4 <EnIn_Init+0xf8>
     f54:	accc0190 	sw	t4,400(a2)
     f58:	c4260000 	lwc1	$f6,0(at)
     f5c:	c7a80020 	lwc1	$f8,32(sp)
     f60:	46062032 	c.eq.s	$f4,$f6
     f64:	00000000 	nop
     f68:	45020012 	bc1fl	fb4 <EnIn_Init+0xf8>
     f6c:	accc0190 	sw	t4,400(a2)
     f70:	44805000 	mtc1	zero,$f10
     f74:	c7b00024 	lwc1	$f16,36(sp)
     f78:	3c010000 	lui	at,0x0
     f7c:	460a4032 	c.eq.s	$f8,$f10
     f80:	00000000 	nop
     f84:	4502000b 	bc1fl	fb4 <EnIn_Init+0xf8>
     f88:	accc0190 	sw	t4,400(a2)
     f8c:	c4320000 	lwc1	$f18,0(at)
     f90:	3c010000 	lui	at,0x0
     f94:	240b0001 	li	t3,1
     f98:	46128032 	c.eq.s	$f16,$f18
     f9c:	00000000 	nop
     fa0:	45020004 	bc1fl	fb4 <EnIn_Init+0xf8>
     fa4:	accc0190 	sw	t4,400(a2)
     fa8:	a42013fa 	sh	zero,5114(at)
     fac:	ac4b0000 	sw	t3,0(v0)
     fb0:	accc0190 	sw	t4,400(a2)
     fb4:	8fbf0014 	lw	ra,20(sp)
     fb8:	27bd0030 	addiu	sp,sp,48
     fbc:	03e00008 	jr	ra
     fc0:	00000000 	nop

00000fc4 <EnIn_Destroy>:
     fc4:	27bdffe8 	addiu	sp,sp,-24
     fc8:	afbf0014 	sw	ra,20(sp)
     fcc:	8c820190 	lw	v0,400(a0)
     fd0:	3c0e0000 	lui	t6,0x0
     fd4:	00803025 	move	a2,a0
     fd8:	10400005 	beqz	v0,ff0 <EnIn_Destroy+0x2c>
     fdc:	25ce0000 	addiu	t6,t6,0
     fe0:	11c20003 	beq	t6,v0,ff0 <EnIn_Destroy+0x2c>
     fe4:	00a02025 	move	a0,a1
     fe8:	0c000000 	jal	0 <func_80A78FB0>
     fec:	24c50194 	addiu	a1,a2,404
     ff0:	8fbf0014 	lw	ra,20(sp)
     ff4:	27bd0018 	addiu	sp,sp,24
     ff8:	03e00008 	jr	ra
     ffc:	00000000 	nop

00001000 <func_80A79FB0>:
    1000:	27bdffc0 	addiu	sp,sp,-64
    1004:	afb00028 	sw	s0,40(sp)
    1008:	3c010001 	lui	at,0x1
    100c:	00808025 	move	s0,a0
    1010:	342117a4 	ori	at,at,0x17a4
    1014:	afbf002c 	sw	ra,44(sp)
    1018:	afa50044 	sw	a1,68(sp)
    101c:	afa0003c 	sw	zero,60(sp)
    1020:	00a12021 	addu	a0,a1,at
    1024:	0c000000 	jal	0 <func_80A78FB0>
    1028:	820501e4 	lb	a1,484(s0)
    102c:	14400003 	bnez	v0,103c <func_80A79FB0+0x3c>
    1030:	00000000 	nop
    1034:	860e001c 	lh	t6,28(s0)
    1038:	1dc000c1 	bgtz	t6,1340 <L80A7A2D8+0x18>
    103c:	3c060000 	lui	a2,0x0
    1040:	24c60000 	addiu	a2,a2,0
    1044:	260400b4 	addiu	a0,s0,180
    1048:	24050000 	li	a1,0
    104c:	0c000000 	jal	0 <func_80A78FB0>
    1050:	3c074210 	lui	a3,0x4210
    1054:	3c060601 	lui	a2,0x601
    1058:	260f01fe 	addiu	t7,s0,510
    105c:	26180276 	addiu	t8,s0,630
    1060:	24190014 	li	t9,20
    1064:	afb90018 	sw	t9,24(sp)
    1068:	afb80014 	sw	t8,20(sp)
    106c:	afaf0010 	sw	t7,16(sp)
    1070:	24c63b88 	addiu	a2,a2,15240
    1074:	8fa40044 	lw	a0,68(sp)
    1078:	2605014c 	addiu	a1,s0,332
    107c:	0c000000 	jal	0 <func_80A78FB0>
    1080:	00003825 	move	a3,zero
    1084:	26050194 	addiu	a1,s0,404
    1088:	afa50034 	sw	a1,52(sp)
    108c:	0c000000 	jal	0 <func_80A78FB0>
    1090:	8fa40044 	lw	a0,68(sp)
    1094:	3c070000 	lui	a3,0x0
    1098:	8fa50034 	lw	a1,52(sp)
    109c:	24e70000 	addiu	a3,a3,0
    10a0:	8fa40044 	lw	a0,68(sp)
    10a4:	0c000000 	jal	0 <func_80A78FB0>
    10a8:	02003025 	move	a2,s0
    10ac:	3c060000 	lui	a2,0x0
    10b0:	24c60000 	addiu	a2,a2,0
    10b4:	26040098 	addiu	a0,s0,152
    10b8:	0c000000 	jal	0 <func_80A78FB0>
    10bc:	00002825 	move	a1,zero
    10c0:	02002025 	move	a0,s0
    10c4:	0c000000 	jal	0 <func_80A78FB0>
    10c8:	8fa50044 	lw	a1,68(sp)
    10cc:	10400008 	beqz	v0,10f0 <func_80A79FB0+0xf0>
    10d0:	3c060000 	lui	a2,0x0
    10d4:	24c60000 	addiu	a2,a2,0
    10d8:	94c813fa 	lhu	t0,5114(a2)
    10dc:	3c01ffff 	lui	at,0xffff
    10e0:	34217fff 	ori	at,at,0x7fff
    10e4:	01014824 	and	t1,t0,at
    10e8:	10000095 	b	1340 <L80A7A2D8+0x18>
    10ec:	a4c913fa 	sh	t1,5114(a2)
    10f0:	3c053c23 	lui	a1,0x3c23
    10f4:	34a5d70a 	ori	a1,a1,0xd70a
    10f8:	0c000000 	jal	0 <func_80A78FB0>
    10fc:	02002025 	move	a0,s0
    1100:	3c020000 	lui	v0,0x0
    1104:	240a0006 	li	t2,6
    1108:	24420000 	addiu	v0,v0,0
    110c:	a20a001f 	sb	t2,31(s0)
    1110:	a6000308 	sh	zero,776(s0)
    1114:	ae020190 	sw	v0,400(s0)
    1118:	afa20034 	sw	v0,52(sp)
    111c:	8fa50044 	lw	a1,68(sp)
    1120:	0c000000 	jal	0 <func_80A78FB0>
    1124:	02002025 	move	a0,s0
    1128:	1040002e 	beqz	v0,11e4 <func_80A79FB0+0x1e4>
    112c:	24050001 	li	a1,1
    1130:	10450011 	beq	v0,a1,1178 <func_80A79FB0+0x178>
    1134:	24030003 	li	v1,3
    1138:	10430015 	beq	v0,v1,1190 <func_80A79FB0+0x190>
    113c:	02002025 	move	a0,s0
    1140:	24040004 	li	a0,4
    1144:	1044001f 	beq	v0,a0,11c4 <func_80A79FB0+0x1c4>
    1148:	3c060000 	lui	a2,0x0
    114c:	24c60000 	addiu	a2,a2,0
    1150:	94c213fa 	lhu	v0,5114(a2)
    1154:	3042000f 	andi	v0,v0,0xf
    1158:	2c410008 	sltiu	at,v0,8
    115c:	10200034 	beqz	at,1230 <L80A7A1D0+0x10>
    1160:	00025880 	sll	t3,v0,0x2
    1164:	3c010000 	lui	at,0x0
    1168:	002b0821 	addu	at,at,t3
    116c:	8c2b0000 	lw	t3,0(at)
    1170:	01600008 	jr	t3
    1174:	00000000 	nop
    1178:	02002025 	move	a0,s0
    117c:	0c000000 	jal	0 <func_80A78FB0>
    1180:	24050009 	li	a1,9
    1184:	8fac0034 	lw	t4,52(sp)
    1188:	1000006d 	b	1340 <L80A7A2D8+0x18>
    118c:	ae0c0190 	sw	t4,400(s0)
    1190:	0c000000 	jal	0 <func_80A78FB0>
    1194:	24050007 	li	a1,7
    1198:	8fad0034 	lw	t5,52(sp)
    119c:	3c060000 	lui	a2,0x0
    11a0:	24c60000 	addiu	a2,a2,0
    11a4:	ae0d0190 	sw	t5,400(s0)
    11a8:	94ce0ed6 	lhu	t6,3798(a2)
    11ac:	24180005 	li	t8,5
    11b0:	31cf0100 	andi	t7,t6,0x100
    11b4:	55e00063 	bnezl	t7,1344 <L80A7A2D8+0x1c>
    11b8:	8fbf002c 	lw	ra,44(sp)
    11bc:	10000060 	b	1340 <L80A7A2D8+0x18>
    11c0:	a618001c 	sh	t8,28(s0)
    11c4:	02002025 	move	a0,s0
    11c8:	0c000000 	jal	0 <func_80A78FB0>
    11cc:	24050008 	li	a1,8
    11d0:	24030003 	li	v1,3
    11d4:	a60301ee 	sh	v1,494(s0)
    11d8:	8fb90034 	lw	t9,52(sp)
    11dc:	10000058 	b	1340 <L80A7A2D8+0x18>
    11e0:	ae190190 	sw	t9,400(s0)
    11e4:	0c000000 	jal	0 <func_80A78FB0>
    11e8:	02002025 	move	a0,s0
    11ec:	10000055 	b	1344 <L80A7A2D8+0x1c>
    11f0:	8fbf002c 	lw	ra,44(sp)

000011f4 <L80A7A1A4>:
    11f4:	8608001c 	lh	t0,28(s0)
    11f8:	24010002 	li	at,2
    11fc:	5501000d 	bnel	t0,at,1234 <L80A7A1D0+0x14>
    1200:	8fab003c 	lw	t3,60(sp)
    1204:	1000000a 	b	1230 <L80A7A1D0+0x10>
    1208:	afa5003c 	sw	a1,60(sp)

0000120c <L80A7A1BC>:
    120c:	8609001c 	lh	t1,28(s0)
    1210:	54690008 	bnel	v1,t1,1234 <L80A7A1D0+0x14>
    1214:	8fab003c 	lw	t3,60(sp)
    1218:	10000005 	b	1230 <L80A7A1D0+0x10>
    121c:	afa5003c 	sw	a1,60(sp)

00001220 <L80A7A1D0>:
    1220:	860a001c 	lh	t2,28(s0)
    1224:	548a0003 	bnel	a0,t2,1234 <L80A7A1D0+0x14>
    1228:	8fab003c 	lw	t3,60(sp)
    122c:	afa5003c 	sw	a1,60(sp)
    1230:	8fab003c 	lw	t3,60(sp)
    1234:	2c410008 	sltiu	at,v0,8
    1238:	11650005 	beq	t3,a1,1250 <L80A7A1D0+0x30>
    123c:	00000000 	nop
    1240:	0c000000 	jal	0 <func_80A78FB0>
    1244:	02002025 	move	a0,s0
    1248:	1000003e 	b	1344 <L80A7A2D8+0x1c>
    124c:	8fbf002c 	lw	ra,44(sp)
    1250:	1020003b 	beqz	at,1340 <L80A7A2D8+0x18>
    1254:	00026080 	sll	t4,v0,0x2
    1258:	3c010000 	lui	at,0x0
    125c:	002c0821 	addu	at,at,t4
    1260:	8c2c0000 	lw	t4,0(at)
    1264:	01800008 	jr	t4
    1268:	00000000 	nop

0000126c <L80A7A21C>:
    126c:	02002025 	move	a0,s0
    1270:	0c000000 	jal	0 <func_80A78FB0>
    1274:	24050002 	li	a1,2
    1278:	3c0d0000 	lui	t5,0x0
    127c:	3c060000 	lui	a2,0x0
    1280:	25ad0000 	addiu	t5,t5,0
    1284:	24c60000 	addiu	a2,a2,0
    1288:	ae0d0190 	sw	t5,400(s0)
    128c:	1000002c 	b	1340 <L80A7A2D8+0x18>
    1290:	a4c013fa 	sh	zero,5114(a2)

00001294 <L80A7A244>:
    1294:	a203001f 	sb	v1,31(s0)
    1298:	02002025 	move	a0,s0
    129c:	0c000000 	jal	0 <func_80A78FB0>
    12a0:	24050002 	li	a1,2
    12a4:	3c0e0000 	lui	t6,0x0
    12a8:	25ce0000 	addiu	t6,t6,0
    12ac:	ae0e0190 	sw	t6,400(s0)
    12b0:	0c000000 	jal	0 <func_80A78FB0>
    12b4:	2404003c 	li	a0,60
    12b8:	10000022 	b	1344 <L80A7A2D8+0x1c>
    12bc:	8fbf002c 	lw	ra,44(sp)

000012c0 <L80A7A270>:
    12c0:	02002025 	move	a0,s0
    12c4:	0c000000 	jal	0 <func_80A78FB0>
    12c8:	24050004 	li	a1,4
    12cc:	3c0f0000 	lui	t7,0x0
    12d0:	25ef0000 	addiu	t7,t7,0
    12d4:	1000001a 	b	1340 <L80A7A2D8+0x18>
    12d8:	ae0f0190 	sw	t7,400(s0)

000012dc <L80A7A28C>:
    12dc:	02002025 	move	a0,s0
    12e0:	0c000000 	jal	0 <func_80A78FB0>
    12e4:	24050006 	li	a1,6
    12e8:	3c190000 	lui	t9,0x0
    12ec:	24180008 	li	t8,8
    12f0:	27390000 	addiu	t9,t9,0
    12f4:	a61801ec 	sh	t8,492(s0)
    12f8:	10000011 	b	1340 <L80A7A2D8+0x18>
    12fc:	ae190190 	sw	t9,400(s0)

00001300 <L80A7A2B0>:
    1300:	a203001f 	sb	v1,31(s0)
    1304:	02002025 	move	a0,s0
    1308:	0c000000 	jal	0 <func_80A78FB0>
    130c:	24050006 	li	a1,6
    1310:	3c090000 	lui	t1,0x0
    1314:	24080008 	li	t0,8
    1318:	25290000 	addiu	t1,t1,0
    131c:	a60801ec 	sh	t0,492(s0)
    1320:	10000007 	b	1340 <L80A7A2D8+0x18>
    1324:	ae090190 	sw	t1,400(s0)

00001328 <L80A7A2D8>:
    1328:	02002025 	move	a0,s0
    132c:	0c000000 	jal	0 <func_80A78FB0>
    1330:	24050002 	li	a1,2
    1334:	3c0a0000 	lui	t2,0x0
    1338:	254a0000 	addiu	t2,t2,0
    133c:	ae0a0190 	sw	t2,400(s0)
    1340:	8fbf002c 	lw	ra,44(sp)
    1344:	8fb00028 	lw	s0,40(sp)
    1348:	27bd0040 	addiu	sp,sp,64
    134c:	03e00008 	jr	ra
    1350:	00000000 	nop

00001354 <func_80A7A304>:
    1354:	27bdffc0 	addiu	sp,sp,-64
    1358:	afbf002c 	sw	ra,44(sp)
    135c:	afb00028 	sw	s0,40(sp)
    1360:	afa50044 	sw	a1,68(sp)
    1364:	8c820154 	lw	v0,340(a0)
    1368:	3c0e0601 	lui	t6,0x601
    136c:	25ce5814 	addiu	t6,t6,22548
    1370:	11c20004 	beq	t6,v0,1384 <func_80A7A304+0x30>
    1374:	00808025 	move	s0,a0
    1378:	3c0f0601 	lui	t7,0x601
    137c:	25ef646c 	addiu	t7,t7,25708
    1380:	15e2000c 	bne	t7,v0,13b4 <func_80A7A304+0x60>
    1384:	3c014100 	lui	at,0x4100
    1388:	44812000 	mtc1	at,$f4
    138c:	c6060164 	lwc1	$f6,356(s0)
    1390:	260400e4 	addiu	a0,s0,228
    1394:	24056856 	li	a1,26710
    1398:	46062032 	c.eq.s	$f4,$f6
    139c:	00000000 	nop
    13a0:	45000004 	bc1f	13b4 <func_80A7A304+0x60>
    13a4:	00000000 	nop
    13a8:	0c000000 	jal	0 <func_80A78FB0>
    13ac:	24060002 	li	a2,2
    13b0:	8e020154 	lw	v0,340(s0)
    13b4:	3c180602 	lui	t8,0x602
    13b8:	27188c38 	addiu	t8,t8,-29640
    13bc:	1702000a 	bne	t8,v0,13e8 <func_80A7A304+0x94>
    13c0:	3c0141a0 	lui	at,0x41a0
    13c4:	44814000 	mtc1	at,$f8
    13c8:	c60a0164 	lwc1	$f10,356(s0)
    13cc:	02002025 	move	a0,s0
    13d0:	460a4032 	c.eq.s	$f8,$f10
    13d4:	00000000 	nop
    13d8:	45020004 	bc1fl	13ec <func_80A7A304+0x98>
    13dc:	2604014c 	addiu	a0,s0,332
    13e0:	0c000000 	jal	0 <func_80A78FB0>
    13e4:	24056854 	li	a1,26708
    13e8:	2604014c 	addiu	a0,s0,332
    13ec:	0c000000 	jal	0 <func_80A78FB0>
    13f0:	afa40034 	sw	a0,52(sp)
    13f4:	50400041 	beqzl	v0,14fc <func_80A7A304+0x1a8>
    13f8:	8fbf002c 	lw	ra,44(sp)
    13fc:	861901e6 	lh	t9,486(s0)
    1400:	24010003 	li	at,3
    1404:	3c070000 	lui	a3,0x0
    1408:	07210004 	bgez	t9,141c <func_80A7A304+0xc8>
    140c:	33280007 	andi	t0,t9,0x7
    1410:	11000002 	beqz	t0,141c <func_80A7A304+0xc8>
    1414:	00000000 	nop
    1418:	2508fff8 	addiu	t0,t0,-8
    141c:	a60801e6 	sh	t0,486(s0)
    1420:	860201e6 	lh	v0,486(s0)
    1424:	24e70000 	addiu	a3,a3,0
    1428:	2404181e 	li	a0,6174
    142c:	10410003 	beq	v0,at,143c <func_80A7A304+0xe8>
    1430:	a60201e8 	sh	v0,488(s0)
    1434:	24010004 	li	at,4
    1438:	14410018 	bne	v0,at,149c <func_80A7A304+0x148>
    143c:	3c090000 	lui	t1,0x0
    1440:	25290000 	addiu	t1,t1,0
    1444:	260500e4 	addiu	a1,s0,228
    1448:	afa50038 	sw	a1,56(sp)
    144c:	afa90014 	sw	t1,20(sp)
    1450:	24060004 	li	a2,4
    1454:	0c000000 	jal	0 <func_80A78FB0>
    1458:	afa70010 	sw	a3,16(sp)
    145c:	0c000000 	jal	0 <func_80A78FB0>
    1460:	00000000 	nop
    1464:	3c010000 	lui	at,0x0
    1468:	c4300000 	lwc1	$f16,0(at)
    146c:	3c070000 	lui	a3,0x0
    1470:	24e70000 	addiu	a3,a3,0
    1474:	4610003c 	c.lt.s	$f0,$f16
    1478:	24041844 	li	a0,6212
    147c:	8fa50038 	lw	a1,56(sp)
    1480:	24060004 	li	a2,4
    1484:	45000005 	bc1f	149c <func_80A7A304+0x148>
    1488:	3c0a0000 	lui	t2,0x0
    148c:	254a0000 	addiu	t2,t2,0
    1490:	afaa0014 	sw	t2,20(sp)
    1494:	0c000000 	jal	0 <func_80A78FB0>
    1498:	afa70010 	sw	a3,16(sp)
    149c:	860b01e6 	lh	t3,486(s0)
    14a0:	3c040000 	lui	a0,0x0
    14a4:	000b6080 	sll	t4,t3,0x2
    14a8:	008c2021 	addu	a0,a0,t4
    14ac:	0c000000 	jal	0 <func_80A78FB0>
    14b0:	8c840000 	lw	a0,0(a0)
    14b4:	44829000 	mtc1	v0,$f18
    14b8:	860d01e6 	lh	t5,486(s0)
    14bc:	3c01c120 	lui	at,0xc120
    14c0:	46809120 	cvt.s.w	$f4,$f18
    14c4:	44813000 	mtc1	at,$f6
    14c8:	3c050000 	lui	a1,0x0
    14cc:	000d7080 	sll	t6,t5,0x2
    14d0:	00ae2821 	addu	a1,a1,t6
    14d4:	240f0002 	li	t7,2
    14d8:	afaf0014 	sw	t7,20(sp)
    14dc:	8ca50000 	lw	a1,0(a1)
    14e0:	e7a40010 	swc1	$f4,16(sp)
    14e4:	8fa40034 	lw	a0,52(sp)
    14e8:	3c063f80 	lui	a2,0x3f80
    14ec:	24070000 	li	a3,0
    14f0:	0c000000 	jal	0 <func_80A78FB0>
    14f4:	e7a60018 	swc1	$f6,24(sp)
    14f8:	8fbf002c 	lw	ra,44(sp)
    14fc:	8fb00028 	lw	s0,40(sp)
    1500:	27bd0040 	addiu	sp,sp,64
    1504:	03e00008 	jr	ra
    1508:	00000000 	nop

0000150c <func_80A7A4BC>:
    150c:	afa40000 	sw	a0,0(sp)
    1510:	03e00008 	jr	ra
    1514:	afa50004 	sw	a1,4(sp)

00001518 <func_80A7A4C8>:
    1518:	27bdffe8 	addiu	sp,sp,-24
    151c:	afbf0014 	sw	ra,20(sp)
    1520:	afa5001c 	sw	a1,28(sp)
    1524:	848e0308 	lh	t6,776(a0)
    1528:	24010002 	li	at,2
    152c:	24060001 	li	a2,1
    1530:	15c1001d 	bne	t6,at,15a8 <func_80A7A4C8+0x90>
    1534:	24070020 	li	a3,32
    1538:	0c000000 	jal	0 <func_80A78FB0>
    153c:	afa40018 	sw	a0,24(sp)
    1540:	3c020000 	lui	v0,0x0
    1544:	24420000 	addiu	v0,v0,0
    1548:	944f13fa 	lhu	t7,5114(v0)
    154c:	944b0f0c 	lhu	t3,3852(v0)
    1550:	3c01ffff 	lui	at,0xffff
    1554:	31f8fff0 	andi	t8,t7,0xfff0
    1558:	37080001 	ori	t0,t8,0x1
    155c:	34217fff 	ori	at,at,0x7fff
    1560:	01014824 	and	t1,t0,at
    1564:	a44813fa 	sh	t0,5114(v0)
    1568:	352a8000 	ori	t2,t1,0x8000
    156c:	316cfffb 	andi	t4,t3,0xfffb
    1570:	a44a13fa 	sh	t2,5114(v0)
    1574:	a44c0f0c 	sh	t4,3852(v0)
    1578:	0c000000 	jal	0 <func_80A78FB0>
    157c:	24040040 	li	a0,64
    1580:	8fa2001c 	lw	v0,28(sp)
    1584:	3c010001 	lui	at,0x1
    1588:	240d0036 	li	t5,54
    158c:	00220821 	addu	at,at,v0
    1590:	a02004bf 	sb	zero,1215(at)
    1594:	3c010001 	lui	at,0x1
    1598:	00220821 	addu	at,at,v0
    159c:	a02d03dc 	sb	t5,988(at)
    15a0:	8fae0018 	lw	t6,24(sp)
    15a4:	a5c00308 	sh	zero,776(t6)
    15a8:	8fbf0014 	lw	ra,20(sp)
    15ac:	27bd0018 	addiu	sp,sp,24
    15b0:	03e00008 	jr	ra
    15b4:	00000000 	nop

000015b8 <func_80A7A568>:
    15b8:	3c020000 	lui	v0,0x0
    15bc:	24420000 	addiu	v0,v0,0
    15c0:	944e0ed6 	lhu	t6,3798(v0)
    15c4:	27bdffd8 	addiu	sp,sp,-40
    15c8:	afbf0024 	sw	ra,36(sp)
    15cc:	afb10020 	sw	s1,32(sp)
    15d0:	afb0001c 	sw	s0,28(sp)
    15d4:	31cf0800 	andi	t7,t6,0x800
    15d8:	00a08025 	move	s0,a1
    15dc:	00808825 	move	s1,a0
    15e0:	15e00008 	bnez	t7,1604 <func_80A7A568+0x4c>
    15e4:	8ca31c44 	lw	v1,7236(a1)
    15e8:	8c78067c 	lw	t8,1660(v1)
    15ec:	0018ca00 	sll	t9,t8,0x8
    15f0:	07230005 	bgezl	t9,1608 <func_80A7A568+0x50>
    15f4:	844a13ce 	lh	t2,5070(v0)
    15f8:	94480f0c 	lhu	t0,3852(v0)
    15fc:	35090800 	ori	t1,t0,0x800
    1600:	a4490f0c 	sh	t1,3852(v0)
    1604:	844a13ce 	lh	t2,5070(v0)
    1608:	2401000a 	li	at,10
    160c:	3c070000 	lui	a3,0x0
    1610:	15410014 	bne	t2,at,1664 <func_80A7A568+0xac>
    1614:	24e70000 	addiu	a3,a3,0
    1618:	3c0b0000 	lui	t3,0x0
    161c:	256b0000 	addiu	t3,t3,0
    1620:	3c050000 	lui	a1,0x0
    1624:	24a50000 	addiu	a1,a1,0
    1628:	afab0014 	sw	t3,20(sp)
    162c:	2404482c 	li	a0,18476
    1630:	24060004 	li	a2,4
    1634:	0c000000 	jal	0 <func_80A78FB0>
    1638:	afa70010 	sw	a3,16(sp)
    163c:	02202025 	move	a0,s1
    1640:	0c000000 	jal	0 <func_80A78FB0>
    1644:	02002825 	move	a1,s0
    1648:	3c0c0000 	lui	t4,0x0
    164c:	3c020000 	lui	v0,0x0
    1650:	258c0000 	addiu	t4,t4,0
    1654:	24420000 	addiu	v0,v0,0
    1658:	ae2c0190 	sw	t4,400(s1)
    165c:	10000053 	b	17ac <func_80A7A568+0x1f4>
    1660:	a44013ce 	sh	zero,5070(v0)
    1664:	862d0308 	lh	t5,776(s1)
    1668:	24010002 	li	at,2
    166c:	3c0e0001 	lui	t6,0x1
    1670:	15a1004e 	bne	t5,at,17ac <func_80A7A568+0x1f4>
    1674:	01d07021 	addu	t6,t6,s0
    1678:	91ce04bd 	lbu	t6,1213(t6)
    167c:	3c070000 	lui	a3,0x0
    1680:	24e70000 	addiu	a3,a3,0
    1684:	15c0001c 	bnez	t6,16f8 <func_80A7A568+0x140>
    1688:	2404482c 	li	a0,18476
    168c:	844f0034 	lh	t7,52(v0)
    1690:	24180004 	li	t8,4
    1694:	24190036 	li	t9,54
    1698:	29e10032 	slti	at,t7,50
    169c:	10200008 	beqz	at,16c0 <func_80A7A568+0x108>
    16a0:	3c010001 	lui	at,0x1
    16a4:	00300821 	addu	at,at,s0
    16a8:	a03804bf 	sb	t8,1215(at)
    16ac:	3c010001 	lui	at,0x1
    16b0:	00300821 	addu	at,at,s0
    16b4:	a03903dc 	sb	t9,988(at)
    16b8:	1000003c 	b	17ac <func_80A7A568+0x1f4>
    16bc:	a6200308 	sh	zero,776(s1)
    16c0:	8e081c44 	lw	t0,7236(s0)
    16c4:	944c13fa 	lhu	t4,5114(v0)
    16c8:	24060002 	li	a2,2
    16cc:	8d090440 	lw	t1,1088(t0)
    16d0:	318dffef 	andi	t5,t4,0xffef
    16d4:	24070002 	li	a3,2
    16d8:	8d2a0158 	lw	t2,344(t1)
    16dc:	000a5900 	sll	t3,t2,0x4
    16e0:	016d7825 	or	t7,t3,t5
    16e4:	31f8fff0 	andi	t8,t7,0xfff0
    16e8:	a44f13fa 	sh	t7,5114(v0)
    16ec:	37190002 	ori	t9,t8,0x2
    16f0:	1000001b 	b	1760 <func_80A7A568+0x1a8>
    16f4:	a45913fa 	sh	t9,5114(v0)
    16f8:	3c080000 	lui	t0,0x0
    16fc:	25080000 	addiu	t0,t0,0
    1700:	3c050000 	lui	a1,0x0
    1704:	24a50000 	addiu	a1,a1,0
    1708:	afa80014 	sw	t0,20(sp)
    170c:	24060004 	li	a2,4
    1710:	0c000000 	jal	0 <func_80A78FB0>
    1714:	afa70010 	sw	a3,16(sp)
    1718:	3c020000 	lui	v0,0x0
    171c:	24420000 	addiu	v0,v0,0
    1720:	94430ed6 	lhu	v1,3798(v0)
    1724:	30690800 	andi	t1,v1,0x800
    1728:	55200009 	bnezl	t1,1750 <func_80A7A568+0x198>
    172c:	944d13fa 	lhu	t5,5114(v0)
    1730:	94440f0c 	lhu	a0,3852(v0)
    1734:	346c0800 	ori	t4,v1,0x800
    1738:	308a0800 	andi	t2,a0,0x800
    173c:	11400003 	beqz	t2,174c <func_80A7A568+0x194>
    1740:	348b0800 	ori	t3,a0,0x800
    1744:	a44c0ed6 	sh	t4,3798(v0)
    1748:	a44b0f0c 	sh	t3,3852(v0)
    174c:	944d13fa 	lhu	t5,5114(v0)
    1750:	00003025 	move	a2,zero
    1754:	24070020 	li	a3,32
    1758:	31aefff0 	andi	t6,t5,0xfff0
    175c:	a44e13fa 	sh	t6,5114(v0)
    1760:	02202025 	move	a0,s1
    1764:	0c000000 	jal	0 <func_80A78FB0>
    1768:	02002825 	move	a1,s0
    176c:	3c010001 	lui	at,0x1
    1770:	3c020000 	lui	v0,0x0
    1774:	00300821 	addu	at,at,s0
    1778:	24420000 	addiu	v0,v0,0
    177c:	a02004bf 	sb	zero,1215(at)
    1780:	944f13fa 	lhu	t7,5114(v0)
    1784:	3c01ffff 	lui	at,0xffff
    1788:	34217fff 	ori	at,at,0x7fff
    178c:	01e1c024 	and	t8,t7,at
    1790:	37198000 	ori	t9,t8,0x8000
    1794:	3c010001 	lui	at,0x1
    1798:	a45913fa 	sh	t9,5114(v0)
    179c:	00300821 	addu	at,at,s0
    17a0:	24080036 	li	t0,54
    17a4:	a02803dc 	sb	t0,988(at)
    17a8:	a6200308 	sh	zero,776(s1)
    17ac:	8fbf0024 	lw	ra,36(sp)
    17b0:	8fb0001c 	lw	s0,28(sp)
    17b4:	8fb10020 	lw	s1,32(sp)
    17b8:	03e00008 	jr	ra
    17bc:	27bd0028 	addiu	sp,sp,40

000017c0 <func_80A7A770>:
    17c0:	27bdffe8 	addiu	sp,sp,-24
    17c4:	afbf0014 	sw	ra,20(sp)
    17c8:	afa5001c 	sw	a1,28(sp)
    17cc:	84820308 	lh	v0,776(a0)
    17d0:	00803025 	move	a2,a0
    17d4:	24010002 	li	at,2
    17d8:	14400006 	bnez	v0,17f4 <func_80A7A770+0x34>
    17dc:	00000000 	nop
    17e0:	8c8e0004 	lw	t6,4(a0)
    17e4:	3c010001 	lui	at,0x1
    17e8:	01c17825 	or	t7,t6,at
    17ec:	10000026 	b	1888 <func_80A7A770+0xc8>
    17f0:	ac8f0004 	sw	t7,4(a0)
    17f4:	14410024 	bne	v0,at,1888 <func_80A7A770+0xc8>
    17f8:	2404ffce 	li	a0,-50
    17fc:	0c000000 	jal	0 <func_80A78FB0>
    1800:	afa60018 	sw	a2,24(sp)
    1804:	8fa40018 	lw	a0,24(sp)
    1808:	3c01fffe 	lui	at,0xfffe
    180c:	3421ffff 	ori	at,at,0xffff
    1810:	8c980004 	lw	t8,4(a0)
    1814:	24050003 	li	a1,3
    1818:	0301c824 	and	t9,t8,at
    181c:	0c000000 	jal	0 <func_80A78FB0>
    1820:	ac990004 	sw	t9,4(a0)
    1824:	8fa60018 	lw	a2,24(sp)
    1828:	3c080000 	lui	t0,0x0
    182c:	3c020000 	lui	v0,0x0
    1830:	25080000 	addiu	t0,t0,0
    1834:	24420000 	addiu	v0,v0,0
    1838:	acc80190 	sw	t0,400(a2)
    183c:	944913fa 	lhu	t1,5114(v0)
    1840:	24190004 	li	t9,4
    1844:	312afff0 	andi	t2,t1,0xfff0
    1848:	354b0007 	ori	t3,t2,0x7
    184c:	a44b13fa 	sh	t3,5114(v0)
    1850:	a4c00308 	sh	zero,776(a2)
    1854:	944d13fa 	lhu	t5,5114(v0)
    1858:	35af0020 	ori	t7,t5,0x20
    185c:	31f80040 	andi	t8,t7,0x40
    1860:	17000009 	bnez	t8,1888 <func_80A7A770+0xc8>
    1864:	a44f13fa 	sh	t7,5114(v0)
    1868:	8fa2001c 	lw	v0,28(sp)
    186c:	3c010001 	lui	at,0x1
    1870:	24080036 	li	t0,54
    1874:	00220821 	addu	at,at,v0
    1878:	a03904bf 	sb	t9,1215(at)
    187c:	3c010001 	lui	at,0x1
    1880:	00220821 	addu	at,at,v0
    1884:	a02803dc 	sb	t0,988(at)
    1888:	8fbf0014 	lw	ra,20(sp)
    188c:	27bd0018 	addiu	sp,sp,24
    1890:	03e00008 	jr	ra
    1894:	00000000 	nop

00001898 <func_80A7A848>:
    1898:	27bdffe8 	addiu	sp,sp,-24
    189c:	afbf0014 	sw	ra,20(sp)
    18a0:	848e0308 	lh	t6,776(a0)
    18a4:	24010002 	li	at,2
    18a8:	3c030001 	lui	v1,0x1
    18ac:	15c10034 	bne	t6,at,1980 <func_80A7A848+0xe8>
    18b0:	00651821 	addu	v1,v1,a1
    18b4:	906304bd 	lbu	v1,1213(v1)
    18b8:	3c020000 	lui	v0,0x0
    18bc:	24420000 	addiu	v0,v0,0
    18c0:	14600005 	bnez	v1,18d8 <func_80A7A848+0x40>
    18c4:	00000000 	nop
    18c8:	844f0034 	lh	t7,52(v0)
    18cc:	29e10032 	slti	at,t7,50
    18d0:	54200006 	bnezl	at,18ec <func_80A7A848+0x54>
    18d4:	945813fa 	lhu	t8,5114(v0)
    18d8:	3c020000 	lui	v0,0x0
    18dc:	24010001 	li	at,1
    18e0:	14610008 	bne	v1,at,1904 <func_80A7A848+0x6c>
    18e4:	24420000 	addiu	v0,v0,0
    18e8:	945813fa 	lhu	t8,5114(v0)
    18ec:	3c080000 	lui	t0,0x0
    18f0:	25080000 	addiu	t0,t0,0
    18f4:	3319fff0 	andi	t9,t8,0xfff0
    18f8:	a45913fa 	sh	t9,5114(v0)
    18fc:	1000001a 	b	1968 <func_80A7A848+0xd0>
    1900:	ac880190 	sw	t0,400(a0)
    1904:	24060002 	li	a2,2
    1908:	24070026 	li	a3,38
    190c:	afa40018 	sw	a0,24(sp)
    1910:	0c000000 	jal	0 <func_80A78FB0>
    1914:	afa5001c 	sw	a1,28(sp)
    1918:	3c020000 	lui	v0,0x0
    191c:	24420000 	addiu	v0,v0,0
    1920:	944913fa 	lhu	t1,5114(v0)
    1924:	3c01ffff 	lui	at,0xffff
    1928:	34217fff 	ori	at,at,0x7fff
    192c:	312afff0 	andi	t2,t1,0xfff0
    1930:	354c0002 	ori	t4,t2,0x2
    1934:	8fa5001c 	lw	a1,28(sp)
    1938:	01816824 	and	t5,t4,at
    193c:	a44c13fa 	sh	t4,5114(v0)
    1940:	35ae8000 	ori	t6,t5,0x8000
    1944:	3c010001 	lui	at,0x1
    1948:	8fa40018 	lw	a0,24(sp)
    194c:	a44e13fa 	sh	t6,5114(v0)
    1950:	00250821 	addu	at,at,a1
    1954:	a02004bf 	sb	zero,1215(at)
    1958:	3c010001 	lui	at,0x1
    195c:	240f0036 	li	t7,54
    1960:	00250821 	addu	at,at,a1
    1964:	a02f03dc 	sb	t7,988(at)
    1968:	a4800308 	sh	zero,776(a0)
    196c:	945813fa 	lhu	t8,5114(v0)
    1970:	3308ffdf 	andi	t0,t8,0xffdf
    1974:	a44813fa 	sh	t0,5114(v0)
    1978:	3109ffbf 	andi	t1,t0,0xffbf
    197c:	a44913fa 	sh	t1,5114(v0)
    1980:	8fbf0014 	lw	ra,20(sp)
    1984:	27bd0018 	addiu	sp,sp,24
    1988:	03e00008 	jr	ra
    198c:	00000000 	nop

00001990 <func_80A7A940>:
    1990:	27bdffe8 	addiu	sp,sp,-24
    1994:	afbf0014 	sw	ra,20(sp)
    1998:	afa5001c 	sw	a1,28(sp)
    199c:	848e0308 	lh	t6,776(a0)
    19a0:	55c00007 	bnezl	t6,19c0 <func_80A7A940+0x30>
    19a4:	848201ec 	lh	v0,492(a0)
    19a8:	8c8f0004 	lw	t7,4(a0)
    19ac:	3c010001 	lui	at,0x1
    19b0:	01e1c025 	or	t8,t7,at
    19b4:	10000032 	b	1a80 <func_80A7A940+0xf0>
    19b8:	ac980004 	sw	t8,4(a0)
    19bc:	848201ec 	lh	v0,492(a0)
    19c0:	10400009 	beqz	v0,19e8 <func_80A7A940+0x58>
    19c4:	2459ffff 	addiu	t9,v0,-1
    19c8:	a49901ec 	sh	t9,492(a0)
    19cc:	848801ec 	lh	t0,492(a0)
    19d0:	24056855 	li	a1,26709
    19d4:	55000005 	bnezl	t0,19ec <func_80A7A940+0x5c>
    19d8:	84890308 	lh	t1,776(a0)
    19dc:	0c000000 	jal	0 <func_80A78FB0>
    19e0:	afa40018 	sw	a0,24(sp)
    19e4:	8fa40018 	lw	a0,24(sp)
    19e8:	84890308 	lh	t1,776(a0)
    19ec:	24010002 	li	at,2
    19f0:	24060002 	li	a2,2
    19f4:	15210022 	bne	t1,at,1a80 <func_80A7A940+0xf0>
    19f8:	24070026 	li	a3,38
    19fc:	8c8a0004 	lw	t2,4(a0)
    1a00:	3c01fffe 	lui	at,0xfffe
    1a04:	3421ffff 	ori	at,at,0xffff
    1a08:	01415824 	and	t3,t2,at
    1a0c:	ac8b0004 	sw	t3,4(a0)
    1a10:	afa40018 	sw	a0,24(sp)
    1a14:	0c000000 	jal	0 <func_80A78FB0>
    1a18:	8fa5001c 	lw	a1,28(sp)
    1a1c:	3c020000 	lui	v0,0x0
    1a20:	24420000 	addiu	v0,v0,0
    1a24:	944c13fa 	lhu	t4,5114(v0)
    1a28:	3c01ffff 	lui	at,0xffff
    1a2c:	34217fff 	ori	at,at,0x7fff
    1a30:	318dfff0 	andi	t5,t4,0xfff0
    1a34:	35af0002 	ori	t7,t5,0x2
    1a38:	8fa8001c 	lw	t0,28(sp)
    1a3c:	01e1c024 	and	t8,t7,at
    1a40:	a44f13fa 	sh	t7,5114(v0)
    1a44:	37198000 	ori	t9,t8,0x8000
    1a48:	3c010001 	lui	at,0x1
    1a4c:	8fa40018 	lw	a0,24(sp)
    1a50:	a45913fa 	sh	t9,5114(v0)
    1a54:	00280821 	addu	at,at,t0
    1a58:	a02004bf 	sb	zero,1215(at)
    1a5c:	8faa001c 	lw	t2,28(sp)
    1a60:	3c010001 	lui	at,0x1
    1a64:	24090036 	li	t1,54
    1a68:	002a0821 	addu	at,at,t2
    1a6c:	a02903dc 	sb	t1,988(at)
    1a70:	a4800308 	sh	zero,776(a0)
    1a74:	944c13fa 	lhu	t4,5114(v0)
    1a78:	358d0040 	ori	t5,t4,0x40
    1a7c:	a44d13fa 	sh	t5,5114(v0)
    1a80:	8fbf0014 	lw	ra,20(sp)
    1a84:	27bd0018 	addiu	sp,sp,24
    1a88:	03e00008 	jr	ra
    1a8c:	00000000 	nop

00001a90 <func_80A7AA40>:
    1a90:	27bdffb8 	addiu	sp,sp,-72
    1a94:	3c0f0000 	lui	t7,0x0
    1a98:	afbf001c 	sw	ra,28(sp)
    1a9c:	afb10018 	sw	s1,24(sp)
    1aa0:	afb00014 	sw	s0,20(sp)
    1aa4:	25ef0000 	addiu	t7,t7,0
    1aa8:	8df90000 	lw	t9,0(t7)
    1aac:	27ae003c 	addiu	t6,sp,60
    1ab0:	8df80004 	lw	t8,4(t7)
    1ab4:	add90000 	sw	t9,0(t6)
    1ab8:	8df90008 	lw	t9,8(t7)
    1abc:	00808025 	move	s0,a0
    1ac0:	00a08825 	move	s1,a1
    1ac4:	00a02025 	move	a0,a1
    1ac8:	add80004 	sw	t8,4(t6)
    1acc:	0c000000 	jal	0 <func_80A78FB0>
    1ad0:	add90008 	sw	t9,8(t6)
    1ad4:	a60201f0 	sh	v0,496(s0)
    1ad8:	862807a0 	lh	t0,1952(s1)
    1adc:	02202025 	move	a0,s1
    1ae0:	24060001 	li	a2,1
    1ae4:	a60801f2 	sh	t0,498(s0)
    1ae8:	0c000000 	jal	0 <func_80A78FB0>
    1aec:	860501f2 	lh	a1,498(s0)
    1af0:	02202025 	move	a0,s1
    1af4:	860501f0 	lh	a1,496(s0)
    1af8:	0c000000 	jal	0 <func_80A78FB0>
    1afc:	24060007 	li	a2,7
    1b00:	3c014248 	lui	at,0x4248
    1b04:	44811000 	mtc1	at,$f2
    1b08:	44800000 	mtc1	zero,$f0
    1b0c:	26030024 	addiu	v1,s0,36
    1b10:	e60202f4 	swc1	$f2,756(s0)
    1b14:	e6020300 	swc1	$f2,768(s0)
    1b18:	e6020304 	swc1	$f2,772(s0)
    1b1c:	e60002f0 	swc1	$f0,752(s0)
    1b20:	e60002f8 	swc1	$f0,760(s0)
    1b24:	e60002fc 	swc1	$f0,764(s0)
    1b28:	8c6a0000 	lw	t2,0(v1)
    1b2c:	27a60030 	addiu	a2,sp,48
    1b30:	27a70024 	addiu	a3,sp,36
    1b34:	acca0000 	sw	t2,0(a2)
    1b38:	8c690004 	lw	t1,4(v1)
    1b3c:	02202025 	move	a0,s1
    1b40:	acc90004 	sw	t1,4(a2)
    1b44:	8c6a0008 	lw	t2,8(v1)
    1b48:	acca0008 	sw	t2,8(a2)
    1b4c:	8c6c0000 	lw	t4,0(v1)
    1b50:	acec0000 	sw	t4,0(a3)
    1b54:	8c6b0004 	lw	t3,4(v1)
    1b58:	aceb0004 	sw	t3,4(a3)
    1b5c:	8c6c0008 	lw	t4,8(v1)
    1b60:	acec0008 	sw	t4,8(a3)
    1b64:	c7a40030 	lwc1	$f4,48(sp)
    1b68:	c60602f0 	lwc1	$f6,752(s0)
    1b6c:	c7aa0034 	lwc1	$f10,52(sp)
    1b70:	46062200 	add.s	$f8,$f4,$f6
    1b74:	c7a40038 	lwc1	$f4,56(sp)
    1b78:	e7a80030 	swc1	$f8,48(sp)
    1b7c:	c61002f4 	lwc1	$f16,756(s0)
    1b80:	46105480 	add.s	$f18,$f10,$f16
    1b84:	c7aa0024 	lwc1	$f10,36(sp)
    1b88:	e7b20034 	swc1	$f18,52(sp)
    1b8c:	c60602f8 	lwc1	$f6,760(s0)
    1b90:	46062200 	add.s	$f8,$f4,$f6
    1b94:	c7a40028 	lwc1	$f4,40(sp)
    1b98:	e7a80038 	swc1	$f8,56(sp)
    1b9c:	c61002fc 	lwc1	$f16,764(s0)
    1ba0:	46105480 	add.s	$f18,$f10,$f16
    1ba4:	c7aa002c 	lwc1	$f10,44(sp)
    1ba8:	e7b20024 	swc1	$f18,36(sp)
    1bac:	c6060300 	lwc1	$f6,768(s0)
    1bb0:	46062200 	add.s	$f8,$f4,$f6
    1bb4:	e7a80028 	swc1	$f8,40(sp)
    1bb8:	c6100304 	lwc1	$f16,772(s0)
    1bbc:	46105480 	add.s	$f18,$f10,$f16
    1bc0:	e7b2002c 	swc1	$f18,44(sp)
    1bc4:	0c000000 	jal	0 <func_80A78FB0>
    1bc8:	860501f0 	lh	a1,496(s0)
    1bcc:	240d203b 	li	t5,8251
    1bd0:	a60d010e 	sh	t5,270(s0)
    1bd4:	31a5ffff 	andi	a1,t5,0xffff
    1bd8:	02202025 	move	a0,s1
    1bdc:	0c000000 	jal	0 <func_80A78FB0>
    1be0:	00003025 	move	a2,zero
    1be4:	240e0001 	li	t6,1
    1be8:	a60e0308 	sh	t6,776(s0)
    1bec:	a60001fc 	sh	zero,508(s0)
    1bf0:	a6201d74 	sh	zero,7540(s1)
    1bf4:	0c000000 	jal	0 <func_80A78FB0>
    1bf8:	24040020 	li	a0,32
    1bfc:	0c000000 	jal	0 <func_80A78FB0>
    1c00:	24040002 	li	a0,2
    1c04:	3c0f0000 	lui	t7,0x0
    1c08:	25ef0000 	addiu	t7,t7,0
    1c0c:	ae0f0190 	sw	t7,400(s0)
    1c10:	8fbf001c 	lw	ra,28(sp)
    1c14:	8fb10018 	lw	s1,24(sp)
    1c18:	8fb00014 	lw	s0,20(sp)
    1c1c:	03e00008 	jr	ra
    1c20:	27bd0048 	addiu	sp,sp,72

00001c24 <func_80A7ABD4>:
    1c24:	27bdffa8 	addiu	sp,sp,-88
    1c28:	afbf002c 	sw	ra,44(sp)
    1c2c:	afb00028 	sw	s0,40(sp)
    1c30:	f7b40020 	sdc1	$f20,32(sp)
    1c34:	afa5005c 	sw	a1,92(sp)
    1c38:	8ca21c44 	lw	v0,7236(a1)
    1c3c:	00808025 	move	s0,a0
    1c40:	240f000a 	li	t7,10
    1c44:	8c430440 	lw	v1,1088(v0)
    1c48:	2418000a 	li	t8,10
    1c4c:	50600003 	beqzl	v1,1c5c <func_80A7ABD4+0x38>
    1c50:	a4580110 	sh	t8,272(v0)
    1c54:	a46f0110 	sh	t7,272(v1)
    1c58:	a4580110 	sh	t8,272(v0)
    1c5c:	9619010e 	lhu	t9,270(s0)
    1c60:	2401203b 	li	at,8251
    1c64:	5721000c 	bnel	t9,at,1c98 <func_80A7ABD4+0x74>
    1c68:	86020308 	lh	v0,776(s0)
    1c6c:	860201ec 	lh	v0,492(s0)
    1c70:	10400008 	beqz	v0,1c94 <func_80A7ABD4+0x70>
    1c74:	2448ffff 	addiu	t0,v0,-1
    1c78:	a60801ec 	sh	t0,492(s0)
    1c7c:	860901ec 	lh	t1,492(s0)
    1c80:	02002025 	move	a0,s0
    1c84:	55200004 	bnezl	t1,1c98 <func_80A7ABD4+0x74>
    1c88:	86020308 	lh	v0,776(s0)
    1c8c:	0c000000 	jal	0 <func_80A78FB0>
    1c90:	24056855 	li	a1,26709
    1c94:	86020308 	lh	v0,776(s0)
    1c98:	24010002 	li	at,2
    1c9c:	8faf005c 	lw	t7,92(sp)
    1ca0:	5040001b 	beqzl	v0,1d10 <func_80A7ABD4+0xec>
    1ca4:	95e21d74 	lhu	v0,7540(t7)
    1ca8:	54410086 	bnel	v0,at,1ec4 <func_80A7ABD4+0x2a0>
    1cac:	8fbf002c 	lw	ra,44(sp)
    1cb0:	960a010e 	lhu	t2,270(s0)
    1cb4:	2401203b 	li	at,8251
    1cb8:	240b203c 	li	t3,8252
    1cbc:	1541000d 	bne	t2,at,1cf4 <func_80A7ABD4+0xd0>
    1cc0:	8fae005c 	lw	t6,92(sp)
    1cc4:	a60b010e 	sh	t3,270(s0)
    1cc8:	8fa4005c 	lw	a0,92(sp)
    1ccc:	3165ffff 	andi	a1,t3,0xffff
    1cd0:	0c000000 	jal	0 <func_80A78FB0>
    1cd4:	00003025 	move	a2,zero
    1cd8:	240c0001 	li	t4,1
    1cdc:	a60c0308 	sh	t4,776(s0)
    1ce0:	02002025 	move	a0,s0
    1ce4:	0c000000 	jal	0 <func_80A78FB0>
    1ce8:	24050003 	li	a1,3
    1cec:	10000075 	b	1ec4 <func_80A7ABD4+0x2a0>
    1cf0:	8fbf002c 	lw	ra,44(sp)
    1cf4:	3c010001 	lui	at,0x1
    1cf8:	002e0821 	addu	at,at,t6
    1cfc:	240d0036 	li	t5,54
    1d00:	a02d03dc 	sb	t5,988(at)
    1d04:	1000006e 	b	1ec0 <func_80A7ABD4+0x29c>
    1d08:	a6000308 	sh	zero,776(s0)
    1d0c:	95e21d74 	lhu	v0,7540(t7)
    1d10:	3c190000 	lui	t9,0x0
    1d14:	27390000 	addiu	t9,t9,0
    1d18:	28430032 	slti	v1,v0,50
    1d1c:	38630001 	xori	v1,v1,0x1
    1d20:	24580001 	addiu	t8,v0,1
    1d24:	10600003 	beqz	v1,1d34 <func_80A7ABD4+0x110>
    1d28:	a5f81d74 	sh	t8,7540(t7)
    1d2c:	10000064 	b	1ec0 <func_80A7ABD4+0x29c>
    1d30:	ae190190 	sw	t9,400(s0)
    1d34:	8fa8005c 	lw	t0,92(sp)
    1d38:	2401002c 	li	at,44
    1d3c:	02002025 	move	a0,s0
    1d40:	95091d74 	lhu	t1,7540(t0)
    1d44:	55210004 	bnel	t1,at,1d58 <func_80A7ABD4+0x134>
    1d48:	4480a000 	mtc1	zero,$f20
    1d4c:	0c000000 	jal	0 <func_80A78FB0>
    1d50:	240528e6 	li	a1,10470
    1d54:	4480a000 	mtc1	zero,$f20
    1d58:	3c063d75 	lui	a2,0x3d75
    1d5c:	3c07461c 	lui	a3,0x461c
    1d60:	4405a000 	mfc1	a1,$f20
    1d64:	34e74000 	ori	a3,a3,0x4000
    1d68:	34c6c28f 	ori	a2,a2,0xc28f
    1d6c:	260402f0 	addiu	a0,s0,752
    1d70:	0c000000 	jal	0 <func_80A78FB0>
    1d74:	e7b40010 	swc1	$f20,16(sp)
    1d78:	3c063d75 	lui	a2,0x3d75
    1d7c:	3c07461c 	lui	a3,0x461c
    1d80:	34e74000 	ori	a3,a3,0x4000
    1d84:	34c6c28f 	ori	a2,a2,0xc28f
    1d88:	260402f4 	addiu	a0,s0,756
    1d8c:	3c054248 	lui	a1,0x4248
    1d90:	0c000000 	jal	0 <func_80A78FB0>
    1d94:	e7b40010 	swc1	$f20,16(sp)
    1d98:	4405a000 	mfc1	a1,$f20
    1d9c:	3c063d75 	lui	a2,0x3d75
    1da0:	3c07461c 	lui	a3,0x461c
    1da4:	34e74000 	ori	a3,a3,0x4000
    1da8:	34c6c28f 	ori	a2,a2,0xc28f
    1dac:	260402f8 	addiu	a0,s0,760
    1db0:	0c000000 	jal	0 <func_80A78FB0>
    1db4:	e7b40010 	swc1	$f20,16(sp)
    1db8:	4405a000 	mfc1	a1,$f20
    1dbc:	3c063d75 	lui	a2,0x3d75
    1dc0:	3c07461c 	lui	a3,0x461c
    1dc4:	34e74000 	ori	a3,a3,0x4000
    1dc8:	34c6c28f 	ori	a2,a2,0xc28f
    1dcc:	260402fc 	addiu	a0,s0,764
    1dd0:	0c000000 	jal	0 <func_80A78FB0>
    1dd4:	e7b40010 	swc1	$f20,16(sp)
    1dd8:	3c063d75 	lui	a2,0x3d75
    1ddc:	3c07461c 	lui	a3,0x461c
    1de0:	34e74000 	ori	a3,a3,0x4000
    1de4:	34c6c28f 	ori	a2,a2,0xc28f
    1de8:	26040300 	addiu	a0,s0,768
    1dec:	3c054316 	lui	a1,0x4316
    1df0:	0c000000 	jal	0 <func_80A78FB0>
    1df4:	e7b40010 	swc1	$f20,16(sp)
    1df8:	3c063d75 	lui	a2,0x3d75
    1dfc:	3c07461c 	lui	a3,0x461c
    1e00:	34e74000 	ori	a3,a3,0x4000
    1e04:	34c6c28f 	ori	a2,a2,0xc28f
    1e08:	26040304 	addiu	a0,s0,772
    1e0c:	3c054396 	lui	a1,0x4396
    1e10:	0c000000 	jal	0 <func_80A78FB0>
    1e14:	e7b40010 	swc1	$f20,16(sp)
    1e18:	26020024 	addiu	v0,s0,36
    1e1c:	8c4b0000 	lw	t3,0(v0)
    1e20:	27a60048 	addiu	a2,sp,72
    1e24:	27a7003c 	addiu	a3,sp,60
    1e28:	accb0000 	sw	t3,0(a2)
    1e2c:	8c4a0004 	lw	t2,4(v0)
    1e30:	acca0004 	sw	t2,4(a2)
    1e34:	8c4b0008 	lw	t3,8(v0)
    1e38:	accb0008 	sw	t3,8(a2)
    1e3c:	8c4d0000 	lw	t5,0(v0)
    1e40:	aced0000 	sw	t5,0(a3)
    1e44:	8c4c0004 	lw	t4,4(v0)
    1e48:	acec0004 	sw	t4,4(a3)
    1e4c:	8c4d0008 	lw	t5,8(v0)
    1e50:	aced0008 	sw	t5,8(a3)
    1e54:	c7a40048 	lwc1	$f4,72(sp)
    1e58:	c60602f0 	lwc1	$f6,752(s0)
    1e5c:	c7aa004c 	lwc1	$f10,76(sp)
    1e60:	8fa4005c 	lw	a0,92(sp)
    1e64:	46062200 	add.s	$f8,$f4,$f6
    1e68:	c7a40050 	lwc1	$f4,80(sp)
    1e6c:	e7a80048 	swc1	$f8,72(sp)
    1e70:	c61002f4 	lwc1	$f16,756(s0)
    1e74:	46105480 	add.s	$f18,$f10,$f16
    1e78:	c7aa003c 	lwc1	$f10,60(sp)
    1e7c:	e7b2004c 	swc1	$f18,76(sp)
    1e80:	c60602f8 	lwc1	$f6,760(s0)
    1e84:	46062200 	add.s	$f8,$f4,$f6
    1e88:	c7a40040 	lwc1	$f4,64(sp)
    1e8c:	e7a80050 	swc1	$f8,80(sp)
    1e90:	c61002fc 	lwc1	$f16,764(s0)
    1e94:	46105480 	add.s	$f18,$f10,$f16
    1e98:	c7aa0044 	lwc1	$f10,68(sp)
    1e9c:	e7b2003c 	swc1	$f18,60(sp)
    1ea0:	c6060300 	lwc1	$f6,768(s0)
    1ea4:	46062200 	add.s	$f8,$f4,$f6
    1ea8:	e7a80040 	swc1	$f8,64(sp)
    1eac:	c6100304 	lwc1	$f16,772(s0)
    1eb0:	46105480 	add.s	$f18,$f10,$f16
    1eb4:	e7b20044 	swc1	$f18,68(sp)
    1eb8:	0c000000 	jal	0 <func_80A78FB0>
    1ebc:	860501f0 	lh	a1,496(s0)
    1ec0:	8fbf002c 	lw	ra,44(sp)
    1ec4:	d7b40020 	ldc1	$f20,32(sp)
    1ec8:	8fb00028 	lw	s0,40(sp)
    1ecc:	03e00008 	jr	ra
    1ed0:	27bd0058 	addiu	sp,sp,88

00001ed4 <func_80A7AE84>:
    1ed4:	27bdffe8 	addiu	sp,sp,-24
    1ed8:	afa40018 	sw	a0,24(sp)
    1edc:	8fae0018 	lw	t6,24(sp)
    1ee0:	afbf0014 	sw	ra,20(sp)
    1ee4:	afa5001c 	sw	a1,28(sp)
    1ee8:	00a02025 	move	a0,a1
    1eec:	24060007 	li	a2,7
    1ef0:	0c000000 	jal	0 <func_80A78FB0>
    1ef4:	85c501f2 	lh	a1,498(t6)
    1ef8:	8faf0018 	lw	t7,24(sp)
    1efc:	8fa4001c 	lw	a0,28(sp)
    1f00:	0c000000 	jal	0 <func_80A78FB0>
    1f04:	85e501f0 	lh	a1,496(t7)
    1f08:	8fa4001c 	lw	a0,28(sp)
    1f0c:	8fa50018 	lw	a1,24(sp)
    1f10:	0c000000 	jal	0 <func_80A78FB0>
    1f14:	24060007 	li	a2,7
    1f18:	0c000000 	jal	0 <func_80A78FB0>
    1f1c:	24040032 	li	a0,50
    1f20:	8fb90018 	lw	t9,24(sp)
    1f24:	3c180000 	lui	t8,0x0
    1f28:	27180000 	addiu	t8,t8,0
    1f2c:	af380190 	sw	t8,400(t9)
    1f30:	8fbf0014 	lw	ra,20(sp)
    1f34:	27bd0018 	addiu	sp,sp,24
    1f38:	03e00008 	jr	ra
    1f3c:	00000000 	nop

00001f40 <func_80A7AEF0>:
    1f40:	27bdffc0 	addiu	sp,sp,-64
    1f44:	afbf001c 	sw	ra,28(sp)
    1f48:	afb00018 	sw	s0,24(sp)
    1f4c:	8cae1c44 	lw	t6,7236(a1)
    1f50:	27af002c 	addiu	t7,sp,44
    1f54:	00808025 	move	s0,a0
    1f58:	afae003c 	sw	t6,60(sp)
    1f5c:	8c990024 	lw	t9,36(a0)
    1f60:	adf90000 	sw	t9,0(t7)
    1f64:	8c980028 	lw	t8,40(a0)
    1f68:	adf80004 	sw	t8,4(t7)
    1f6c:	8c99002c 	lw	t9,44(a0)
    1f70:	adf90008 	sw	t9,8(t7)
    1f74:	848400b6 	lh	a0,182(a0)
    1f78:	0c000000 	jal	0 <func_80A78FB0>
    1f7c:	afa50044 	sw	a1,68(sp)
    1f80:	3c0142b4 	lui	at,0x42b4
    1f84:	44813000 	mtc1	at,$f6
    1f88:	c7a4002c 	lwc1	$f4,44(sp)
    1f8c:	46003202 	mul.s	$f8,$f6,$f0
    1f90:	46082280 	add.s	$f10,$f4,$f8
    1f94:	e7aa002c 	swc1	$f10,44(sp)
    1f98:	0c000000 	jal	0 <func_80A78FB0>
    1f9c:	860400b6 	lh	a0,182(s0)
    1fa0:	3c0142b4 	lui	at,0x42b4
    1fa4:	44819000 	mtc1	at,$f18
    1fa8:	c7b00034 	lwc1	$f16,52(sp)
    1fac:	8fa5003c 	lw	a1,60(sp)
    1fb0:	46009182 	mul.s	$f6,$f18,$f0
    1fb4:	27a4002c 	addiu	a0,sp,44
    1fb8:	24a50024 	addiu	a1,a1,36
    1fbc:	46068100 	add.s	$f4,$f16,$f6
    1fc0:	0c000000 	jal	0 <func_80A78FB0>
    1fc4:	e7a40034 	swc1	$f4,52(sp)
    1fc8:	04400003 	bltz	v0,1fd8 <func_80A7AEF0+0x98>
    1fcc:	8fa60044 	lw	a2,68(sp)
    1fd0:	10000002 	b	1fdc <func_80A7AEF0+0x9c>
    1fd4:	00401825 	move	v1,v0
    1fd8:	00021823 	negu	v1,v0
    1fdc:	28614001 	slti	at,v1,16385
    1fe0:	14200010 	bnez	at,2024 <func_80A7AEF0+0xe4>
    1fe4:	24080476 	li	t0,1142
    1fe8:	3c010001 	lui	at,0x1
    1fec:	00260821 	addu	at,at,a2
    1ff0:	a4281e1a 	sh	t0,7706(at)
    1ff4:	3c010001 	lui	at,0x1
    1ff8:	00260821 	addu	at,at,a2
    1ffc:	24090014 	li	t1,20
    2000:	a0291e15 	sb	t1,7701(at)
    2004:	3c010001 	lui	at,0x1
    2008:	00260821 	addu	at,at,a2
    200c:	240a0005 	li	t2,5
    2010:	3c0b0000 	lui	t3,0x0
    2014:	a02a1e5e 	sb	t2,7774(at)
    2018:	256b0000 	addiu	t3,t3,0
    201c:	1000000d 	b	2054 <func_80A7AEF0+0x114>
    2020:	ae0b0190 	sw	t3,400(s0)
    2024:	860c0308 	lh	t4,776(s0)
    2028:	24010002 	li	at,2
    202c:	240d0004 	li	t5,4
    2030:	15810008 	bne	t4,at,2054 <func_80A7AEF0+0x114>
    2034:	240e0036 	li	t6,54
    2038:	3c010001 	lui	at,0x1
    203c:	00260821 	addu	at,at,a2
    2040:	a02d04bf 	sb	t5,1215(at)
    2044:	3c010001 	lui	at,0x1
    2048:	00260821 	addu	at,at,a2
    204c:	a02e03dc 	sb	t6,988(at)
    2050:	a6000308 	sh	zero,776(s0)
    2054:	8fbf001c 	lw	ra,28(sp)
    2058:	8fb00018 	lw	s0,24(sp)
    205c:	27bd0040 	addiu	sp,sp,64
    2060:	03e00008 	jr	ra
    2064:	00000000 	nop

00002068 <func_80A7B018>:
    2068:	afa40000 	sw	a0,0(sp)
    206c:	03e00008 	jr	ra
    2070:	afa50004 	sw	a1,4(sp)

00002074 <func_80A7B024>:
    2074:	27bdffe8 	addiu	sp,sp,-24
    2078:	afbf0014 	sw	ra,20(sp)
    207c:	afa40018 	sw	a0,24(sp)
    2080:	8ca21c44 	lw	v0,7236(a1)
    2084:	240e000a 	li	t6,10
    2088:	240f000a 	li	t7,10
    208c:	8c430440 	lw	v1,1088(v0)
    2090:	00003025 	move	a2,zero
    2094:	24070026 	li	a3,38
    2098:	50600003 	beqzl	v1,20a8 <func_80A7B024+0x34>
    209c:	a44f0110 	sh	t7,272(v0)
    20a0:	a46e0110 	sh	t6,272(v1)
    20a4:	a44f0110 	sh	t7,272(v0)
    20a8:	8fb80018 	lw	t8,24(sp)
    20ac:	24010002 	li	at,2
    20b0:	3c020000 	lui	v0,0x0
    20b4:	87190308 	lh	t9,776(t8)
    20b8:	24420000 	addiu	v0,v0,0
    20bc:	57210025 	bnel	t9,at,2154 <func_80A7B024+0xe0>
    20c0:	8fbf0014 	lw	ra,20(sp)
    20c4:	94430ed6 	lhu	v1,3798(v0)
    20c8:	30680800 	andi	t0,v1,0x800
    20cc:	55000009 	bnezl	t0,20f4 <func_80A7B024+0x80>
    20d0:	8fa40018 	lw	a0,24(sp)
    20d4:	94440f0c 	lhu	a0,3852(v0)
    20d8:	346a0800 	ori	t2,v1,0x800
    20dc:	30890800 	andi	t1,a0,0x800
    20e0:	11200003 	beqz	t1,20f0 <func_80A7B024+0x7c>
    20e4:	348b0800 	ori	t3,a0,0x800
    20e8:	a44a0ed6 	sh	t2,3798(v0)
    20ec:	a44b0f0c 	sh	t3,3852(v0)
    20f0:	8fa40018 	lw	a0,24(sp)
    20f4:	0c000000 	jal	0 <func_80A78FB0>
    20f8:	afa5001c 	sw	a1,28(sp)
    20fc:	3c020000 	lui	v0,0x0
    2100:	24420000 	addiu	v0,v0,0
    2104:	944c13fa 	lhu	t4,5114(v0)
    2108:	3c01ffff 	lui	at,0xffff
    210c:	34217fff 	ori	at,at,0x7fff
    2110:	318efff0 	andi	t6,t4,0xfff0
    2114:	8fa5001c 	lw	a1,28(sp)
    2118:	01c17824 	and	t7,t6,at
    211c:	a44e13fa 	sh	t6,5114(v0)
    2120:	35f88000 	ori	t8,t7,0x8000
    2124:	3c010001 	lui	at,0x1
    2128:	a45813fa 	sh	t8,5114(v0)
    212c:	24190004 	li	t9,4
    2130:	00250821 	addu	at,at,a1
    2134:	a03904bf 	sb	t9,1215(at)
    2138:	3c010001 	lui	at,0x1
    213c:	24080036 	li	t0,54
    2140:	00250821 	addu	at,at,a1
    2144:	a02803dc 	sb	t0,988(at)
    2148:	8fa90018 	lw	t1,24(sp)
    214c:	a5200308 	sh	zero,776(t1)
    2150:	8fbf0014 	lw	ra,20(sp)
    2154:	27bd0018 	addiu	sp,sp,24
    2158:	03e00008 	jr	ra
    215c:	00000000 	nop

00002160 <EnIn_Update>:
    2160:	27bdffc0 	addiu	sp,sp,-64
    2164:	afbf0024 	sw	ra,36(sp)
    2168:	afb10020 	sw	s1,32(sp)
    216c:	afb0001c 	sw	s0,28(sp)
    2170:	8c820190 	lw	v0,400(a0)
    2174:	3c0e0000 	lui	t6,0x0
    2178:	25ce0000 	addiu	t6,t6,0
    217c:	00808025 	move	s0,a0
    2180:	15c20005 	bne	t6,v0,2198 <EnIn_Update+0x38>
    2184:	00a08825 	move	s1,a1
    2188:	0040f809 	jalr	v0
    218c:	00000000 	nop
    2190:	10000073 	b	2360 <EnIn_Update+0x200>
    2194:	8fbf0024 	lw	ra,36(sp)
    2198:	26060194 	addiu	a2,s0,404
    219c:	00c02825 	move	a1,a2
    21a0:	afa60030 	sw	a2,48(sp)
    21a4:	0c000000 	jal	0 <func_80A78FB0>
    21a8:	02002025 	move	a0,s0
    21ac:	3c010001 	lui	at,0x1
    21b0:	34211e60 	ori	at,at,0x1e60
    21b4:	8fa60030 	lw	a2,48(sp)
    21b8:	02212821 	addu	a1,s1,at
    21bc:	0c000000 	jal	0 <func_80A78FB0>
    21c0:	02202025 	move	a0,s1
    21c4:	3c0f0000 	lui	t7,0x0
    21c8:	25ef0000 	addiu	t7,t7,0
    21cc:	afaf0030 	sw	t7,48(sp)
    21d0:	8e180190 	lw	t8,400(s0)
    21d4:	2604014c 	addiu	a0,s0,332
    21d8:	11f8001a 	beq	t7,t8,2244 <EnIn_Update+0xe4>
    21dc:	00000000 	nop
    21e0:	0c000000 	jal	0 <func_80A78FB0>
    21e4:	afa4002c 	sw	a0,44(sp)
    21e8:	8e080154 	lw	t0,340(s0)
    21ec:	3c190600 	lui	t9,0x600
    21f0:	27391be0 	addiu	t9,t9,7136
    21f4:	1728000a 	bne	t9,t0,2220 <EnIn_Update+0xc0>
    21f8:	8fa4002c 	lw	a0,44(sp)
    21fc:	3c090000 	lui	t1,0x0
    2200:	952913fa 	lhu	t1,5114(t1)
    2204:	24010006 	li	at,6
    2208:	02002825 	move	a1,s0
    220c:	312a000f 	andi	t2,t1,0xf
    2210:	51410004 	beql	t2,at,2224 <EnIn_Update+0xc4>
    2214:	44800000 	mtc1	zero,$f0
    2218:	0c000000 	jal	0 <func_80A78FB0>
    221c:	02203025 	move	a2,s1
    2220:	44800000 	mtc1	zero,$f0
    2224:	240b0004 	li	t3,4
    2228:	afab0014 	sw	t3,20(sp)
    222c:	44060000 	mfc1	a2,$f0
    2230:	44070000 	mfc1	a3,$f0
    2234:	02202025 	move	a0,s1
    2238:	02002825 	move	a1,s0
    223c:	0c000000 	jal	0 <func_80A78FB0>
    2240:	e7a00010 	swc1	$f0,16(sp)
    2244:	0c000000 	jal	0 <func_80A78FB0>
    2248:	02002025 	move	a0,s0
    224c:	8e190190 	lw	t9,400(s0)
    2250:	02002025 	move	a0,s0
    2254:	02202825 	move	a1,s1
    2258:	0320f809 	jalr	t9
    225c:	00000000 	nop
    2260:	8fac0030 	lw	t4,48(sp)
    2264:	8e0d0190 	lw	t5,400(s0)
    2268:	02002025 	move	a0,s0
    226c:	518d003c 	beql	t4,t5,2360 <EnIn_Update+0x200>
    2270:	8fbf0024 	lw	ra,36(sp)
    2274:	0c000000 	jal	0 <func_80A78FB0>
    2278:	02202825 	move	a1,s1
    227c:	3c0e0000 	lui	t6,0x0
    2280:	85ce13d4 	lh	t6,5076(t6)
    2284:	3c0f0000 	lui	t7,0x0
    2288:	29c10006 	slti	at,t6,6
    228c:	5020000f 	beqzl	at,22cc <EnIn_Update+0x16c>
    2290:	8208001f 	lb	t0,31(s0)
    2294:	85ef13d2 	lh	t7,5074(t7)
    2298:	51e0000c 	beqzl	t7,22cc <EnIn_Update+0x16c>
    229c:	8208001f 	lb	t0,31(s0)
    22a0:	86180308 	lh	t8,776(s0)
    22a4:	02002025 	move	a0,s0
    22a8:	57000008 	bnezl	t8,22cc <EnIn_Update+0x16c>
    22ac:	8208001f 	lb	t0,31(s0)
    22b0:	0c000000 	jal	0 <func_80A78FB0>
    22b4:	02202825 	move	a1,s1
    22b8:	50400026 	beqzl	v0,2354 <EnIn_Update+0x1f4>
    22bc:	02002025 	move	a0,s0
    22c0:	10000024 	b	2354 <EnIn_Update+0x1f4>
    22c4:	02002025 	move	a0,s0
    22c8:	8208001f 	lb	t0,31(s0)
    22cc:	24010006 	li	at,6
    22d0:	15010004 	bne	t0,at,22e4 <EnIn_Update+0x184>
    22d4:	3c0142a0 	lui	at,0x42a0
    22d8:	44810000 	mtc1	at,$f0
    22dc:	10000005 	b	22f4 <EnIn_Update+0x194>
    22e0:	860901d4 	lh	t1,468(s0)
    22e4:	3c0143a0 	lui	at,0x43a0
    22e8:	44810000 	mtc1	at,$f0
    22ec:	00000000 	nop
    22f0:	860901d4 	lh	t1,468(s0)
    22f4:	3c0a0000 	lui	t2,0x0
    22f8:	3c0b0000 	lui	t3,0x0
    22fc:	44892000 	mtc1	t1,$f4
    2300:	256b0000 	addiu	t3,t3,0
    2304:	254a0000 	addiu	t2,t2,0
    2308:	468021a0 	cvt.s.w	$f6,$f4
    230c:	afaa0010 	sw	t2,16(sp)
    2310:	afab0014 	sw	t3,20(sp)
    2314:	02202025 	move	a0,s1
    2318:	02002825 	move	a1,s0
    231c:	26060308 	addiu	a2,s0,776
    2320:	46060200 	add.s	$f8,$f0,$f6
    2324:	44074000 	mfc1	a3,$f8
    2328:	0c000000 	jal	0 <func_80A78FB0>
    232c:	00000000 	nop
    2330:	86190308 	lh	t9,776(s0)
    2334:	53200007 	beqzl	t9,2354 <EnIn_Update+0x1f4>
    2338:	02002025 	move	a0,s0
    233c:	860c01f8 	lh	t4,504(s0)
    2340:	262420d8 	addiu	a0,s1,8408
    2344:	0c000000 	jal	0 <func_80A78FB0>
    2348:	a60c01fa 	sh	t4,506(s0)
    234c:	a60201f8 	sh	v0,504(s0)
    2350:	02002025 	move	a0,s0
    2354:	0c000000 	jal	0 <func_80A78FB0>
    2358:	02202825 	move	a1,s1
    235c:	8fbf0024 	lw	ra,36(sp)
    2360:	8fb0001c 	lw	s0,28(sp)
    2364:	8fb10020 	lw	s1,32(sp)
    2368:	03e00008 	jr	ra
    236c:	27bd0040 	addiu	sp,sp,64

00002370 <func_80A7B320>:
    2370:	27bdffc8 	addiu	sp,sp,-56
    2374:	8fae004c 	lw	t6,76(sp)
    2378:	afbf001c 	sw	ra,28(sp)
    237c:	afb00018 	sw	s0,24(sp)
    2380:	afa40038 	sw	a0,56(sp)
    2384:	afa70044 	sw	a3,68(sp)
    2388:	85cf001c 	lh	t7,28(t6)
    238c:	00a08025 	move	s0,a1
    2390:	24010010 	li	at,16
    2394:	59e0000a 	blezl	t7,23c0 <func_80A7B320+0x50>
    2398:	24010010 	li	at,16
    239c:	10a10007 	beq	a1,at,23bc <func_80A7B320+0x4c>
    23a0:	0005c080 	sll	t8,a1,0x2
    23a4:	3c020000 	lui	v0,0x0
    23a8:	00581021 	addu	v0,v0,t8
    23ac:	8c420000 	lw	v0,0(v0)
    23b0:	50400003 	beqzl	v0,23c0 <func_80A7B320+0x50>
    23b4:	24010010 	li	at,16
    23b8:	acc20000 	sw	v0,0(a2)
    23bc:	24010010 	li	at,16
    23c0:	5601002e 	bnel	s0,at,247c <func_80A7B320+0x10c>
    23c4:	24010009 	li	at,9
    23c8:	44807000 	mtc1	zero,$f14
    23cc:	3c010000 	lui	at,0x0
    23d0:	c42c0000 	lwc1	$f12,0(at)
    23d4:	44067000 	mfc1	a2,$f14
    23d8:	0c000000 	jal	0 <func_80A78FB0>
    23dc:	24070001 	li	a3,1
    23e0:	8fa8004c 	lw	t0,76(sp)
    23e4:	27b9002c 	addiu	t9,sp,44
    23e8:	3c014700 	lui	at,0x4700
    23ec:	890a0310 	lwl	t2,784(t0)
    23f0:	990a0313 	lwr	t2,787(t0)
    23f4:	44814000 	mtc1	at,$f8
    23f8:	3c010000 	lui	at,0x0
    23fc:	af2a0000 	sw	t2,0(t9)
    2400:	950a0314 	lhu	t2,788(t0)
    2404:	24050001 	li	a1,1
    2408:	a72a0004 	sh	t2,4(t9)
    240c:	87ab002c 	lh	t3,44(sp)
    2410:	c4300000 	lwc1	$f16,0(at)
    2414:	448b2000 	mtc1	t3,$f4
    2418:	00000000 	nop
    241c:	468021a0 	cvt.s.w	$f6,$f4
    2420:	46083283 	div.s	$f10,$f6,$f8
    2424:	46105302 	mul.s	$f12,$f10,$f16
    2428:	0c000000 	jal	0 <func_80A78FB0>
    242c:	00000000 	nop
    2430:	87ac002e 	lh	t4,46(sp)
    2434:	3c014700 	lui	at,0x4700
    2438:	44813000 	mtc1	at,$f6
    243c:	448c9000 	mtc1	t4,$f18
    2440:	3c010000 	lui	at,0x0
    2444:	c42a0000 	lwc1	$f10,0(at)
    2448:	46809120 	cvt.s.w	$f4,$f18
    244c:	24050001 	li	a1,1
    2450:	46062203 	div.s	$f8,$f4,$f6
    2454:	460a4302 	mul.s	$f12,$f8,$f10
    2458:	0c000000 	jal	0 <func_80A78FB0>
    245c:	00000000 	nop
    2460:	44807000 	mtc1	zero,$f14
    2464:	3c010000 	lui	at,0x0
    2468:	c42c0000 	lwc1	$f12,0(at)
    246c:	44067000 	mfc1	a2,$f14
    2470:	0c000000 	jal	0 <func_80A78FB0>
    2474:	24070001 	li	a3,1
    2478:	24010009 	li	at,9
    247c:	16010020 	bne	s0,at,2500 <func_80A7B320+0x190>
    2480:	8fae004c 	lw	t6,76(sp)
    2484:	89d80316 	lwl	t8,790(t6)
    2488:	99d80319 	lwr	t8,793(t6)
    248c:	27ad002c 	addiu	t5,sp,44
    2490:	3c014700 	lui	at,0x4700
    2494:	adb80000 	sw	t8,0(t5)
    2498:	95d8031a 	lhu	t8,794(t6)
    249c:	44812000 	mtc1	at,$f4
    24a0:	3c010000 	lui	at,0x0
    24a4:	a5b80004 	sh	t8,4(t5)
    24a8:	87b9002c 	lh	t9,44(sp)
    24ac:	c4280000 	lwc1	$f8,0(at)
    24b0:	24050001 	li	a1,1
    24b4:	44998000 	mtc1	t9,$f16
    24b8:	00000000 	nop
    24bc:	468084a0 	cvt.s.w	$f18,$f16
    24c0:	46049183 	div.s	$f6,$f18,$f4
    24c4:	46083302 	mul.s	$f12,$f6,$f8
    24c8:	0c000000 	jal	0 <func_80A78FB0>
    24cc:	00000000 	nop
    24d0:	87a8002e 	lh	t0,46(sp)
    24d4:	3c014700 	lui	at,0x4700
    24d8:	44819000 	mtc1	at,$f18
    24dc:	44885000 	mtc1	t0,$f10
    24e0:	3c010000 	lui	at,0x0
    24e4:	c4260000 	lwc1	$f6,0(at)
    24e8:	46805420 	cvt.s.w	$f16,$f10
    24ec:	24050001 	li	a1,1
    24f0:	46128103 	div.s	$f4,$f16,$f18
    24f4:	46062302 	mul.s	$f12,$f4,$f6
    24f8:	0c000000 	jal	0 <func_80A78FB0>
    24fc:	00000000 	nop
    2500:	24010009 	li	at,9
    2504:	12010005 	beq	s0,at,251c <func_80A7B320+0x1ac>
    2508:	8fa9004c 	lw	t1,76(sp)
    250c:	2401000a 	li	at,10
    2510:	12010002 	beq	s0,at,251c <func_80A7B320+0x1ac>
    2514:	2401000d 	li	at,13
    2518:	16010024 	bne	s0,at,25ac <func_80A7B320+0x23c>
    251c:	00105080 	sll	t2,s0,0x2
    2520:	01505023 	subu	t2,t2,s0
    2524:	000a5040 	sll	t2,t2,0x1
    2528:	012a1821 	addu	v1,t1,t2
    252c:	84640332 	lh	a0,818(v1)
    2530:	0c000000 	jal	0 <func_80A78FB0>
    2534:	afa30024 	sw	v1,36(sp)
    2538:	8fa20048 	lw	v0,72(sp)
    253c:	3c014348 	lui	at,0x4348
    2540:	44818000 	mtc1	at,$f16
    2544:	844b0002 	lh	t3,2(v0)
    2548:	8fa30024 	lw	v1,36(sp)
    254c:	46100482 	mul.s	$f18,$f0,$f16
    2550:	448b4000 	mtc1	t3,$f8
    2554:	00000000 	nop
    2558:	468042a0 	cvt.s.w	$f10,$f8
    255c:	46125100 	add.s	$f4,$f10,$f18
    2560:	4600218d 	trunc.w.s	$f6,$f4
    2564:	440d3000 	mfc1	t5,$f6
    2568:	00000000 	nop
    256c:	a44d0002 	sh	t5,2(v0)
    2570:	0c000000 	jal	0 <func_80A78FB0>
    2574:	84640334 	lh	a0,820(v1)
    2578:	8fa20048 	lw	v0,72(sp)
    257c:	3c014348 	lui	at,0x4348
    2580:	44815000 	mtc1	at,$f10
    2584:	844e0004 	lh	t6,4(v0)
    2588:	460a0482 	mul.s	$f18,$f0,$f10
    258c:	448e4000 	mtc1	t6,$f8
    2590:	00000000 	nop
    2594:	46804420 	cvt.s.w	$f16,$f8
    2598:	46128100 	add.s	$f4,$f16,$f18
    259c:	4600218d 	trunc.w.s	$f6,$f4
    25a0:	44183000 	mfc1	t8,$f6
    25a4:	00000000 	nop
    25a8:	a4580004 	sh	t8,4(v0)
    25ac:	8fbf001c 	lw	ra,28(sp)
    25b0:	8fb00018 	lw	s0,24(sp)
    25b4:	27bd0038 	addiu	sp,sp,56
    25b8:	03e00008 	jr	ra
    25bc:	00001025 	move	v0,zero

000025c0 <func_80A7B570>:
    25c0:	27bdffb8 	addiu	sp,sp,-72
    25c4:	3c0f0000 	lui	t7,0x0
    25c8:	afbf0014 	sw	ra,20(sp)
    25cc:	afa40048 	sw	a0,72(sp)
    25d0:	afa5004c 	sw	a1,76(sp)
    25d4:	afa60050 	sw	a2,80(sp)
    25d8:	afa70054 	sw	a3,84(sp)
    25dc:	25ef0000 	addiu	t7,t7,0
    25e0:	8df90000 	lw	t9,0(t7)
    25e4:	27ae0038 	addiu	t6,sp,56
    25e8:	8df80004 	lw	t8,4(t7)
    25ec:	add90000 	sw	t9,0(t6)
    25f0:	8df90008 	lw	t9,8(t7)
    25f4:	add80004 	sw	t8,4(t6)
    25f8:	3c060000 	lui	a2,0x0
    25fc:	add90008 	sw	t9,8(t6)
    2600:	8fa90048 	lw	t1,72(sp)
    2604:	24c60000 	addiu	a2,a2,0
    2608:	2407091f 	li	a3,2335
    260c:	8d250000 	lw	a1,0(t1)
    2610:	27a40024 	addiu	a0,sp,36
    2614:	0c000000 	jal	0 <func_80A78FB0>
    2618:	afa50034 	sw	a1,52(sp)
    261c:	8fa7004c 	lw	a3,76(sp)
    2620:	24010010 	li	at,16
    2624:	8fa80034 	lw	t0,52(sp)
    2628:	14e1000e 	bne	a3,at,2664 <func_80A7B570+0xa4>
    262c:	8fa60058 	lw	a2,88(sp)
    2630:	27a40038 	addiu	a0,sp,56
    2634:	24c50038 	addiu	a1,a2,56
    2638:	0c000000 	jal	0 <func_80A78FB0>
    263c:	afa80034 	sw	t0,52(sp)
    2640:	8fa60058 	lw	a2,88(sp)
    2644:	8fa7004c 	lw	a3,76(sp)
    2648:	8fa80034 	lw	t0,52(sp)
    264c:	88cb0030 	lwl	t3,48(a2)
    2650:	98cb0033 	lwr	t3,51(a2)
    2654:	a8cb0044 	swl	t3,68(a2)
    2658:	b8cb0047 	swr	t3,71(a2)
    265c:	94cb0034 	lhu	t3,52(a2)
    2660:	a4cb0048 	sh	t3,72(a2)
    2664:	2401000c 	li	at,12
    2668:	14e1000d 	bne	a3,at,26a0 <func_80A7B570+0xe0>
    266c:	8fa60058 	lw	a2,88(sp)
    2670:	8ccd0154 	lw	t5,340(a2)
    2674:	3c0c0601 	lui	t4,0x601
    2678:	258c4ca8 	addiu	t4,t4,19624
    267c:	158d0008 	bne	t4,t5,26a0 <func_80A7B570+0xe0>
    2680:	3c0fde00 	lui	t7,0xde00
    2684:	8d0302c0 	lw	v1,704(t0)
    2688:	3c180600 	lui	t8,0x600
    268c:	27187a20 	addiu	t8,t8,31264
    2690:	246e0008 	addiu	t6,v1,8
    2694:	ad0e02c0 	sw	t6,704(t0)
    2698:	ac780004 	sw	t8,4(v1)
    269c:	ac6f0000 	sw	t7,0(v1)
    26a0:	2401000f 	li	at,15
    26a4:	14e1000d 	bne	a3,at,26dc <func_80A7B570+0x11c>
    26a8:	27a40024 	addiu	a0,sp,36
    26ac:	8cc90154 	lw	t1,340(a2)
    26b0:	3c190601 	lui	t9,0x601
    26b4:	27394ca8 	addiu	t9,t9,19624
    26b8:	17290008 	bne	t9,t1,26dc <func_80A7B570+0x11c>
    26bc:	3c0bde00 	lui	t3,0xde00
    26c0:	8d0302c0 	lw	v1,704(t0)
    26c4:	3c0c0600 	lui	t4,0x600
    26c8:	258c7bf8 	addiu	t4,t4,31736
    26cc:	246a0008 	addiu	t2,v1,8
    26d0:	ad0a02c0 	sw	t2,704(t0)
    26d4:	ac6c0004 	sw	t4,4(v1)
    26d8:	ac6b0000 	sw	t3,0(v1)
    26dc:	8fad0048 	lw	t5,72(sp)
    26e0:	3c060000 	lui	a2,0x0
    26e4:	24c60000 	addiu	a2,a2,0
    26e8:	2407093d 	li	a3,2365
    26ec:	0c000000 	jal	0 <func_80A78FB0>
    26f0:	8da50000 	lw	a1,0(t5)
    26f4:	8fbf0014 	lw	ra,20(sp)
    26f8:	27bd0048 	addiu	sp,sp,72
    26fc:	03e00008 	jr	ra
    2700:	00000000 	nop

00002704 <EnIn_Draw>:
    2704:	27bdffa8 	addiu	sp,sp,-88
    2708:	afbf002c 	sw	ra,44(sp)
    270c:	afb00028 	sw	s0,40(sp)
    2710:	afa5005c 	sw	a1,92(sp)
    2714:	8ca50000 	lw	a1,0(a1)
    2718:	00808025 	move	s0,a0
    271c:	3c060000 	lui	a2,0x0
    2720:	24c60000 	addiu	a2,a2,0
    2724:	27a40040 	addiu	a0,sp,64
    2728:	24070950 	li	a3,2384
    272c:	0c000000 	jal	0 <func_80A78FB0>
    2730:	afa50050 	sw	a1,80(sp)
    2734:	8e180190 	lw	t8,400(s0)
    2738:	3c0f0000 	lui	t7,0x0
    273c:	25ef0000 	addiu	t7,t7,0
    2740:	11f8003c 	beq	t7,t8,2834 <EnIn_Draw+0x130>
    2744:	8fa80050 	lw	t0,80(sp)
    2748:	8fb9005c 	lw	t9,92(sp)
    274c:	8f240000 	lw	a0,0(t9)
    2750:	0c000000 	jal	0 <func_80A78FB0>
    2754:	afa80050 	sw	t0,80(sp)
    2758:	8fa80050 	lw	t0,80(sp)
    275c:	3c0adb06 	lui	t2,0xdb06
    2760:	354a0020 	ori	t2,t2,0x20
    2764:	8d0302c0 	lw	v1,704(t0)
    2768:	3c040000 	lui	a0,0x0
    276c:	3c060000 	lui	a2,0x0
    2770:	24690008 	addiu	t1,v1,8
    2774:	ad0902c0 	sw	t1,704(t0)
    2778:	ac6a0000 	sw	t2,0(v1)
    277c:	860b01ee 	lh	t3,494(s0)
    2780:	24c60000 	addiu	a2,a2,0
    2784:	3c0500ff 	lui	a1,0xff
    2788:	000b6080 	sll	t4,t3,0x2
    278c:	008c2021 	addu	a0,a0,t4
    2790:	8c840000 	lw	a0,0(a0)
    2794:	34a5ffff 	ori	a1,a1,0xffff
    2798:	3c078000 	lui	a3,0x8000
    279c:	00047100 	sll	t6,a0,0x4
    27a0:	000e7f02 	srl	t7,t6,0x1c
    27a4:	000fc080 	sll	t8,t7,0x2
    27a8:	00d8c821 	addu	t9,a2,t8
    27ac:	8f290000 	lw	t1,0(t9)
    27b0:	00856824 	and	t5,a0,a1
    27b4:	3c040600 	lui	a0,0x600
    27b8:	01a95021 	addu	t2,t5,t1
    27bc:	01475821 	addu	t3,t2,a3
    27c0:	ac6b0004 	sw	t3,4(v1)
    27c4:	8d0302c0 	lw	v1,704(t0)
    27c8:	248434d0 	addiu	a0,a0,13520
    27cc:	00047900 	sll	t7,a0,0x4
    27d0:	000fc702 	srl	t8,t7,0x1c
    27d4:	3c0edb06 	lui	t6,0xdb06
    27d8:	246c0008 	addiu	t4,v1,8
    27dc:	35ce0024 	ori	t6,t6,0x24
    27e0:	0018c880 	sll	t9,t8,0x2
    27e4:	ad0c02c0 	sw	t4,704(t0)
    27e8:	00d96821 	addu	t5,a2,t9
    27ec:	ac6e0000 	sw	t6,0(v1)
    27f0:	8da90000 	lw	t1,0(t5)
    27f4:	00855024 	and	t2,a0,a1
    27f8:	3c0e0000 	lui	t6,0x0
    27fc:	012a5821 	addu	t3,t1,t2
    2800:	01676021 	addu	t4,t3,a3
    2804:	ac6c0004 	sw	t4,4(v1)
    2808:	9207014e 	lbu	a3,334(s0)
    280c:	8e06016c 	lw	a2,364(s0)
    2810:	8e050150 	lw	a1,336(s0)
    2814:	3c0f0000 	lui	t7,0x0
    2818:	25ef0000 	addiu	t7,t7,0
    281c:	25ce0000 	addiu	t6,t6,0
    2820:	afae0010 	sw	t6,16(sp)
    2824:	afaf0014 	sw	t7,20(sp)
    2828:	afb00018 	sw	s0,24(sp)
    282c:	0c000000 	jal	0 <func_80A78FB0>
    2830:	8fa4005c 	lw	a0,92(sp)
    2834:	8fb8005c 	lw	t8,92(sp)
    2838:	3c060000 	lui	a2,0x0
    283c:	24c60000 	addiu	a2,a2,0
    2840:	27a40040 	addiu	a0,sp,64
    2844:	24070970 	li	a3,2416
    2848:	0c000000 	jal	0 <func_80A78FB0>
    284c:	8f050000 	lw	a1,0(t8)
    2850:	8fbf002c 	lw	ra,44(sp)
    2854:	8fb00028 	lw	s0,40(sp)
    2858:	27bd0058 	addiu	sp,sp,88
    285c:	03e00008 	jr	ra
    2860:	00000000 	nop
	...
