
build/src/code/z_rcp.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Gfx_SetFog>:
       0:	27bdffe0 	addiu	sp,sp,-32
       4:	afb10018 	sw	s1,24(sp)
       8:	8fb10034 	lw	s1,52(sp)
       c:	8fae0038 	lw	t6,56(sp)
      10:	afb00014 	sw	s0,20(sp)
      14:	00808025 	move	s0,a0
      18:	afbf001c 	sw	ra,28(sp)
      1c:	afa50024 	sw	a1,36(sp)
      20:	afa60028 	sw	a2,40(sp)
      24:	15d10003 	bne	t6,s1,34 <Gfx_SetFog+0x34>
      28:	afa7002c 	sw	a3,44(sp)
      2c:	25cf0001 	addiu	t7,t6,1
      30:	afaf0038 	sw	t7,56(sp)
      34:	8fb80038 	lw	t8,56(sp)
      38:	56380008 	bnel	s1,t8,5c <Gfx_SetFog+0x5c>
      3c:	02001025 	move	v0,s0
      40:	3c040000 	lui	a0,0x0
      44:	3c050000 	lui	a1,0x0
      48:	24a50008 	addiu	a1,a1,8
      4c:	24840000 	addiu	a0,a0,0
      50:	0c000000 	jal	0 <Gfx_SetFog>
      54:	24060483 	li	a2,1155
      58:	02001025 	move	v0,s0
      5c:	3c19f800 	lui	t9,0xf800
      60:	ac590000 	sw	t9,0(v0)
      64:	8fa90024 	lw	t1,36(sp)
      68:	8fab0028 	lw	t3,40(sp)
      6c:	8faf002c 	lw	t7,44(sp)
      70:	00095600 	sll	t2,t1,0x18
      74:	8fa90030 	lw	t1,48(sp)
      78:	316c00ff 	andi	t4,t3,0xff
      7c:	000c6c00 	sll	t5,t4,0x10
      80:	31f800ff 	andi	t8,t7,0xff
      84:	0018ca00 	sll	t9,t8,0x8
      88:	014d7025 	or	t6,t2,t5
      8c:	01d94025 	or	t0,t6,t9
      90:	312b00ff 	andi	t3,t1,0xff
      94:	010b6025 	or	t4,t0,t3
      98:	2a2103e8 	slti	at,s1,1000
      9c:	ac4c0004 	sw	t4,4(v0)
      a0:	14200007 	bnez	at,c0 <Gfx_SetFog+0xc0>
      a4:	26100008 	addiu	s0,s0,8
      a8:	02001025 	move	v0,s0
      ac:	3c0adb08 	lui	t2,0xdb08
      b0:	ac4a0000 	sw	t2,0(v0)
      b4:	ac400004 	sw	zero,4(v0)
      b8:	1000003a 	b	1a4 <Gfx_SetFog+0x1a4>
      bc:	26100008 	addiu	s0,s0,8
      c0:	2a2103e5 	slti	at,s1,997
      c4:	14200008 	bnez	at,e8 <Gfx_SetFog+0xe8>
      c8:	02001025 	move	v0,s0
      cc:	3c0f7fff 	lui	t7,0x7fff
      d0:	35ef8100 	ori	t7,t7,0x8100
      d4:	3c0ddb08 	lui	t5,0xdb08
      d8:	ac4d0000 	sw	t5,0(v0)
      dc:	ac4f0004 	sw	t7,4(v0)
      e0:	10000030 	b	1a4 <Gfx_SetFog+0x1a4>
      e4:	26100008 	addiu	s0,s0,8
      e8:	06210008 	bgez	s1,10c <Gfx_SetFog+0x10c>
      ec:	02001025 	move	v0,s0
      f0:	02001025 	move	v0,s0
      f4:	3c18db08 	lui	t8,0xdb08
      f8:	240e00ff 	li	t6,255
      fc:	ac4e0004 	sw	t6,4(v0)
     100:	ac580000 	sw	t8,0(v0)
     104:	10000027 	b	1a4 <Gfx_SetFog+0x1a4>
     108:	26100008 	addiu	s0,s0,8
     10c:	3c19db08 	lui	t9,0xdb08
     110:	ac590000 	sw	t9,0(v0)
     114:	8fa90038 	lw	t1,56(sp)
     118:	3c080001 	lui	t0,0x1
     11c:	3508f400 	ori	t0,t0,0xf400
     120:	01311823 	subu	v1,t1,s1
     124:	0103001a 	div	zero,t0,v1
     128:	00116823 	negu	t5,s1
     12c:	000d7a00 	sll	t7,t5,0x8
     130:	01e8c021 	addu	t8,t7,t0
     134:	00005812 	mflo	t3
     138:	316cffff 	andi	t4,t3,0xffff
     13c:	000c5400 	sll	t2,t4,0x10
     140:	0303001a 	div	zero,t8,v1
     144:	00007012 	mflo	t6
     148:	31d9ffff 	andi	t9,t6,0xffff
     14c:	01594825 	or	t1,t2,t9
     150:	ac490004 	sw	t1,4(v0)
     154:	26100008 	addiu	s0,s0,8
     158:	14600002 	bnez	v1,164 <Gfx_SetFog+0x164>
     15c:	00000000 	nop
     160:	0007000d 	break	0x7
     164:	2401ffff 	li	at,-1
     168:	14610004 	bne	v1,at,17c <Gfx_SetFog+0x17c>
     16c:	3c018000 	lui	at,0x8000
     170:	15010002 	bne	t0,at,17c <Gfx_SetFog+0x17c>
     174:	00000000 	nop
     178:	0006000d 	break	0x6
     17c:	01000821 	move	at,t0
     180:	14600002 	bnez	v1,18c <Gfx_SetFog+0x18c>
     184:	00000000 	nop
     188:	0007000d 	break	0x7
     18c:	2401ffff 	li	at,-1
     190:	14610004 	bne	v1,at,1a4 <Gfx_SetFog+0x1a4>
     194:	3c018000 	lui	at,0x8000
     198:	17010002 	bne	t8,at,1a4 <Gfx_SetFog+0x1a4>
     19c:	00000000 	nop
     1a0:	0006000d 	break	0x6
     1a4:	8fbf001c 	lw	ra,28(sp)
     1a8:	02001025 	move	v0,s0
     1ac:	8fb00014 	lw	s0,20(sp)
     1b0:	8fb10018 	lw	s1,24(sp)
     1b4:	03e00008 	jr	ra
     1b8:	27bd0020 	addiu	sp,sp,32

000001bc <Gfx_SetFogWithSync>:
     1bc:	27bdffe0 	addiu	sp,sp,-32
     1c0:	8fae0038 	lw	t6,56(sp)
     1c4:	8faf0034 	lw	t7,52(sp)
     1c8:	afb00018 	sw	s0,24(sp)
     1cc:	00808025 	move	s0,a0
     1d0:	afbf001c 	sw	ra,28(sp)
     1d4:	afa50024 	sw	a1,36(sp)
     1d8:	afa60028 	sw	a2,40(sp)
     1dc:	15cf0003 	bne	t6,t7,1ec <Gfx_SetFogWithSync+0x30>
     1e0:	afa7002c 	sw	a3,44(sp)
     1e4:	25d80001 	addiu	t8,t6,1
     1e8:	afb80038 	sw	t8,56(sp)
     1ec:	8fb90034 	lw	t9,52(sp)
     1f0:	8fa80038 	lw	t0,56(sp)
     1f4:	57280008 	bnel	t9,t0,218 <Gfx_SetFogWithSync+0x5c>
     1f8:	02001025 	move	v0,s0
     1fc:	3c040000 	lui	a0,0x0
     200:	3c050000 	lui	a1,0x0
     204:	24a5001c 	addiu	a1,a1,28
     208:	24840014 	addiu	a0,a0,20
     20c:	0c000000 	jal	0 <Gfx_SetFog>
     210:	240604a3 	li	a2,1187
     214:	02001025 	move	v0,s0
     218:	3c09e700 	lui	t1,0xe700
     21c:	ac490000 	sw	t1,0(v0)
     220:	ac400004 	sw	zero,4(v0)
     224:	26100008 	addiu	s0,s0,8
     228:	02001025 	move	v0,s0
     22c:	3c0af800 	lui	t2,0xf800
     230:	ac4a0000 	sw	t2,0(v0)
     234:	8fac0024 	lw	t4,36(sp)
     238:	8faf0028 	lw	t7,40(sp)
     23c:	8fa8002c 	lw	t0,44(sp)
     240:	000c6e00 	sll	t5,t4,0x18
     244:	8fac0030 	lw	t4,48(sp)
     248:	31ee00ff 	andi	t6,t7,0xff
     24c:	000ec400 	sll	t8,t6,0x10
     250:	310900ff 	andi	t1,t0,0xff
     254:	00095200 	sll	t2,t1,0x8
     258:	01b8c825 	or	t9,t5,t8
     25c:	032a5825 	or	t3,t9,t2
     260:	318f00ff 	andi	t7,t4,0xff
     264:	016f7025 	or	t6,t3,t7
     268:	ac4e0004 	sw	t6,4(v0)
     26c:	8fad0034 	lw	t5,52(sp)
     270:	26100008 	addiu	s0,s0,8
     274:	02001025 	move	v0,s0
     278:	29a103e8 	slti	at,t5,1000
     27c:	14200006 	bnez	at,298 <Gfx_SetFogWithSync+0xdc>
     280:	8fa80034 	lw	t0,52(sp)
     284:	3c18db08 	lui	t8,0xdb08
     288:	ac580000 	sw	t8,0(v0)
     28c:	26100008 	addiu	s0,s0,8
     290:	1000003c 	b	384 <Gfx_SetFogWithSync+0x1c8>
     294:	ac400004 	sw	zero,4(v0)
     298:	290103e5 	slti	at,t0,997
     29c:	14200009 	bnez	at,2c4 <Gfx_SetFogWithSync+0x108>
     2a0:	8faa0034 	lw	t2,52(sp)
     2a4:	02001025 	move	v0,s0
     2a8:	3c197fff 	lui	t9,0x7fff
     2ac:	37398100 	ori	t9,t9,0x8100
     2b0:	3c09db08 	lui	t1,0xdb08
     2b4:	ac490000 	sw	t1,0(v0)
     2b8:	ac590004 	sw	t9,4(v0)
     2bc:	10000031 	b	384 <Gfx_SetFogWithSync+0x1c8>
     2c0:	26100008 	addiu	s0,s0,8
     2c4:	05410008 	bgez	t2,2e8 <Gfx_SetFogWithSync+0x12c>
     2c8:	02001025 	move	v0,s0
     2cc:	02001025 	move	v0,s0
     2d0:	3c0cdb08 	lui	t4,0xdb08
     2d4:	240b00ff 	li	t3,255
     2d8:	ac4b0004 	sw	t3,4(v0)
     2dc:	ac4c0000 	sw	t4,0(v0)
     2e0:	10000028 	b	384 <Gfx_SetFogWithSync+0x1c8>
     2e4:	26100008 	addiu	s0,s0,8
     2e8:	3c0fdb08 	lui	t7,0xdb08
     2ec:	ac4f0000 	sw	t7,0(v0)
     2f0:	8fad0034 	lw	t5,52(sp)
     2f4:	8fae0038 	lw	t6,56(sp)
     2f8:	3c180001 	lui	t8,0x1
     2fc:	3718f400 	ori	t8,t8,0xf400
     300:	01cd1823 	subu	v1,t6,t5
     304:	0303001a 	div	zero,t8,v1
     308:	000d5023 	negu	t2,t5
     30c:	000a6200 	sll	t4,t2,0x8
     310:	01985821 	addu	t3,t4,t8
     314:	00004012 	mflo	t0
     318:	3109ffff 	andi	t1,t0,0xffff
     31c:	0009cc00 	sll	t9,t1,0x10
     320:	0163001a 	div	zero,t3,v1
     324:	00007812 	mflo	t7
     328:	31eeffff 	andi	t6,t7,0xffff
     32c:	26100008 	addiu	s0,s0,8
     330:	14600002 	bnez	v1,33c <Gfx_SetFogWithSync+0x180>
     334:	00000000 	nop
     338:	0007000d 	break	0x7
     33c:	2401ffff 	li	at,-1
     340:	14610004 	bne	v1,at,354 <Gfx_SetFogWithSync+0x198>
     344:	3c018000 	lui	at,0x8000
     348:	17010002 	bne	t8,at,354 <Gfx_SetFogWithSync+0x198>
     34c:	00000000 	nop
     350:	0006000d 	break	0x6
     354:	03000821 	move	at,t8
     358:	032ec025 	or	t8,t9,t6
     35c:	ac580004 	sw	t8,4(v0)
     360:	14600002 	bnez	v1,36c <Gfx_SetFogWithSync+0x1b0>
     364:	00000000 	nop
     368:	0007000d 	break	0x7
     36c:	2401ffff 	li	at,-1
     370:	14610004 	bne	v1,at,384 <Gfx_SetFogWithSync+0x1c8>
     374:	3c018000 	lui	at,0x8000
     378:	15610002 	bne	t3,at,384 <Gfx_SetFogWithSync+0x1c8>
     37c:	00000000 	nop
     380:	0006000d 	break	0x6
     384:	8fbf001c 	lw	ra,28(sp)
     388:	02001025 	move	v0,s0
     38c:	8fb00018 	lw	s0,24(sp)
     390:	03e00008 	jr	ra
     394:	27bd0020 	addiu	sp,sp,32

00000398 <Gfx_SetFog2>:
     398:	27bdffd8 	addiu	sp,sp,-40
     39c:	8fae0038 	lw	t6,56(sp)
     3a0:	8faf003c 	lw	t7,60(sp)
     3a4:	8fb80040 	lw	t8,64(sp)
     3a8:	afbf0024 	sw	ra,36(sp)
     3ac:	afae0010 	sw	t6,16(sp)
     3b0:	afaf0014 	sw	t7,20(sp)
     3b4:	0c000000 	jal	0 <Gfx_SetFog>
     3b8:	afb80018 	sw	t8,24(sp)
     3bc:	8fbf0024 	lw	ra,36(sp)
     3c0:	27bd0028 	addiu	sp,sp,40
     3c4:	03e00008 	jr	ra
     3c8:	00000000 	nop

000003cc <Gfx_CallSetupDLImpl>:
     3cc:	00057880 	sll	t7,a1,0x2
     3d0:	01e57823 	subu	t7,t7,a1
     3d4:	000f7840 	sll	t7,t7,0x1
     3d8:	00801025 	move	v0,a0
     3dc:	3c190000 	lui	t9,0x0
     3e0:	27390000 	addiu	t9,t9,0
     3e4:	000fc0c0 	sll	t8,t7,0x3
     3e8:	03194021 	addu	t0,t8,t9
     3ec:	3c0ede00 	lui	t6,0xde00
     3f0:	ac4e0000 	sw	t6,0(v0)
     3f4:	ac480004 	sw	t0,4(v0)
     3f8:	24840008 	addiu	a0,a0,8
     3fc:	03e00008 	jr	ra
     400:	00801025 	move	v0,a0

00000404 <Gfx_CallSetupDL>:
     404:	27bdffe8 	addiu	sp,sp,-24
     408:	afbf0014 	sw	ra,20(sp)
     40c:	0c000000 	jal	0 <Gfx_SetFog>
     410:	00000000 	nop
     414:	8fbf0014 	lw	ra,20(sp)
     418:	27bd0018 	addiu	sp,sp,24
     41c:	03e00008 	jr	ra
     420:	00000000 	nop

00000424 <Gfx_CallSetupDLAtPtr>:
     424:	27bdffe8 	addiu	sp,sp,-24
     428:	afbf0014 	sw	ra,20(sp)
     42c:	afa40018 	sw	a0,24(sp)
     430:	0c000000 	jal	0 <Gfx_SetFog>
     434:	8c840000 	lw	a0,0(a0)
     438:	8faf0018 	lw	t7,24(sp)
     43c:	ade20000 	sw	v0,0(t7)
     440:	8fbf0014 	lw	ra,20(sp)
     444:	27bd0018 	addiu	sp,sp,24
     448:	03e00008 	jr	ra
     44c:	00000000 	nop

00000450 <func_800937C0>:
     450:	00801025 	move	v0,a0
     454:	3c0f0000 	lui	t7,0x0
     458:	25ef0ab0 	addiu	t7,t7,2736
     45c:	3c0ede00 	lui	t6,0xde00
     460:	ac4e0000 	sw	t6,0(v0)
     464:	ac4f0004 	sw	t7,4(v0)
     468:	24840008 	addiu	a0,a0,8
     46c:	03e00008 	jr	ra
     470:	00801025 	move	v0,a0

00000474 <func_800937E4>:
     474:	00801025 	move	v0,a0
     478:	3c0f0000 	lui	t7,0x0
     47c:	25ef0ab0 	addiu	t7,t7,2736
     480:	3c0ede00 	lui	t6,0xde00
     484:	ac4e0000 	sw	t6,0(v0)
     488:	ac4f0004 	sw	t7,4(v0)
     48c:	24840008 	addiu	a0,a0,8
     490:	03e00008 	jr	ra
     494:	00801025 	move	v0,a0

00000498 <func_80093808>:
     498:	00801025 	move	v0,a0
     49c:	3c0f0000 	lui	t7,0x0
     4a0:	25ef09c0 	addiu	t7,t7,2496
     4a4:	3c0ede00 	lui	t6,0xde00
     4a8:	ac4e0000 	sw	t6,0(v0)
     4ac:	ac4f0004 	sw	t7,4(v0)
     4b0:	24840008 	addiu	a0,a0,8
     4b4:	00801025 	move	v0,a0
     4b8:	3c18e300 	lui	t8,0xe300
     4bc:	37181801 	ori	t8,t8,0x1801
     4c0:	241900c0 	li	t9,192
     4c4:	ac590004 	sw	t9,4(v0)
     4c8:	ac580000 	sw	t8,0(v0)
     4cc:	24840008 	addiu	a0,a0,8
     4d0:	03e00008 	jr	ra
     4d4:	00801025 	move	v0,a0

000004d8 <func_80093848>:
     4d8:	27bdffc8 	addiu	sp,sp,-56
     4dc:	afbf0014 	sw	ra,20(sp)
     4e0:	00802825 	move	a1,a0
     4e4:	3c060000 	lui	a2,0x0
     4e8:	24c60028 	addiu	a2,a2,40
     4ec:	afa50038 	sw	a1,56(sp)
     4f0:	27a40024 	addiu	a0,sp,36
     4f4:	0c000000 	jal	0 <Gfx_SetFog>
     4f8:	2407050d 	li	a3,1293
     4fc:	8fa50038 	lw	a1,56(sp)
     500:	3c180000 	lui	t8,0x0
     504:	27180ae0 	addiu	t8,t8,2784
     508:	8ca302c0 	lw	v1,704(a1)
     50c:	3c0fde00 	lui	t7,0xde00
     510:	3c060000 	lui	a2,0x0
     514:	246e0008 	addiu	t6,v1,8
     518:	acae02c0 	sw	t6,704(a1)
     51c:	24c60034 	addiu	a2,a2,52
     520:	27a40024 	addiu	a0,sp,36
     524:	24070511 	li	a3,1297
     528:	ac780004 	sw	t8,4(v1)
     52c:	0c000000 	jal	0 <Gfx_SetFog>
     530:	ac6f0000 	sw	t7,0(v1)
     534:	8fbf0014 	lw	ra,20(sp)
     538:	27bd0038 	addiu	sp,sp,56
     53c:	03e00008 	jr	ra
     540:	00000000 	nop

00000544 <func_800938B4>:
     544:	27bdffc8 	addiu	sp,sp,-56
     548:	afbf0014 	sw	ra,20(sp)
     54c:	00802825 	move	a1,a0
     550:	3c060000 	lui	a2,0x0
     554:	24c60040 	addiu	a2,a2,64
     558:	afa50038 	sw	a1,56(sp)
     55c:	27a40024 	addiu	a0,sp,36
     560:	0c000000 	jal	0 <Gfx_SetFog>
     564:	2407051d 	li	a3,1309
     568:	8fa50038 	lw	a1,56(sp)
     56c:	3c180000 	lui	t8,0x0
     570:	27180ab0 	addiu	t8,t8,2736
     574:	8ca302c0 	lw	v1,704(a1)
     578:	3c0fde00 	lui	t7,0xde00
     57c:	3c060000 	lui	a2,0x0
     580:	246e0008 	addiu	t6,v1,8
     584:	acae02c0 	sw	t6,704(a1)
     588:	24c6004c 	addiu	a2,a2,76
     58c:	27a40024 	addiu	a0,sp,36
     590:	24070521 	li	a3,1313
     594:	ac780004 	sw	t8,4(v1)
     598:	0c000000 	jal	0 <Gfx_SetFog>
     59c:	ac6f0000 	sw	t7,0(v1)
     5a0:	8fbf0014 	lw	ra,20(sp)
     5a4:	27bd0038 	addiu	sp,sp,56
     5a8:	03e00008 	jr	ra
     5ac:	00000000 	nop

000005b0 <func_80093920>:
     5b0:	27bdffc8 	addiu	sp,sp,-56
     5b4:	afbf0014 	sw	ra,20(sp)
     5b8:	00802825 	move	a1,a0
     5bc:	3c060000 	lui	a2,0x0
     5c0:	24c60058 	addiu	a2,a2,88
     5c4:	afa50038 	sw	a1,56(sp)
     5c8:	27a40024 	addiu	a0,sp,36
     5cc:	0c000000 	jal	0 <Gfx_SetFog>
     5d0:	2407052d 	li	a3,1325
     5d4:	8fa50038 	lw	a1,56(sp)
     5d8:	3c180000 	lui	t8,0x0
     5dc:	27180960 	addiu	t8,t8,2400
     5e0:	8ca302c0 	lw	v1,704(a1)
     5e4:	3c0fde00 	lui	t7,0xde00
     5e8:	3c060000 	lui	a2,0x0
     5ec:	246e0008 	addiu	t6,v1,8
     5f0:	acae02c0 	sw	t6,704(a1)
     5f4:	24c60064 	addiu	a2,a2,100
     5f8:	27a40024 	addiu	a0,sp,36
     5fc:	24070531 	li	a3,1329
     600:	ac780004 	sw	t8,4(v1)
     604:	0c000000 	jal	0 <Gfx_SetFog>
     608:	ac6f0000 	sw	t7,0(v1)
     60c:	8fbf0014 	lw	ra,20(sp)
     610:	27bd0038 	addiu	sp,sp,56
     614:	03e00008 	jr	ra
     618:	00000000 	nop

0000061c <func_8009398C>:
     61c:	27bdffc8 	addiu	sp,sp,-56
     620:	afbf0014 	sw	ra,20(sp)
     624:	00802825 	move	a1,a0
     628:	3c060000 	lui	a2,0x0
     62c:	24c60070 	addiu	a2,a2,112
     630:	afa50038 	sw	a1,56(sp)
     634:	27a40024 	addiu	a0,sp,36
     638:	0c000000 	jal	0 <Gfx_SetFog>
     63c:	2407053d 	li	a3,1341
     640:	8fa50038 	lw	a1,56(sp)
     644:	3c180000 	lui	t8,0x0
     648:	27180990 	addiu	t8,t8,2448
     64c:	8ca302c0 	lw	v1,704(a1)
     650:	3c0fde00 	lui	t7,0xde00
     654:	3c060000 	lui	a2,0x0
     658:	246e0008 	addiu	t6,v1,8
     65c:	acae02c0 	sw	t6,704(a1)
     660:	24c6007c 	addiu	a2,a2,124
     664:	27a40024 	addiu	a0,sp,36
     668:	24070541 	li	a3,1345
     66c:	ac780004 	sw	t8,4(v1)
     670:	0c000000 	jal	0 <Gfx_SetFog>
     674:	ac6f0000 	sw	t7,0(v1)
     678:	8fbf0014 	lw	ra,20(sp)
     67c:	27bd0038 	addiu	sp,sp,56
     680:	03e00008 	jr	ra
     684:	00000000 	nop

00000688 <func_800939F8>:
     688:	27bdffc8 	addiu	sp,sp,-56
     68c:	afbf0014 	sw	ra,20(sp)
     690:	00802825 	move	a1,a0
     694:	3c060000 	lui	a2,0x0
     698:	24c60088 	addiu	a2,a2,136
     69c:	afa50038 	sw	a1,56(sp)
     6a0:	27a40024 	addiu	a0,sp,36
     6a4:	0c000000 	jal	0 <Gfx_SetFog>
     6a8:	2407054d 	li	a3,1357
     6ac:	8fa50038 	lw	a1,56(sp)
     6b0:	3c180000 	lui	t8,0x0
     6b4:	271809c0 	addiu	t8,t8,2496
     6b8:	8ca302d0 	lw	v1,720(a1)
     6bc:	3c0fde00 	lui	t7,0xde00
     6c0:	3c060000 	lui	a2,0x0
     6c4:	246e0008 	addiu	t6,v1,8
     6c8:	acae02d0 	sw	t6,720(a1)
     6cc:	24c60094 	addiu	a2,a2,148
     6d0:	27a40024 	addiu	a0,sp,36
     6d4:	24070551 	li	a3,1361
     6d8:	ac780004 	sw	t8,4(v1)
     6dc:	0c000000 	jal	0 <Gfx_SetFog>
     6e0:	ac6f0000 	sw	t7,0(v1)
     6e4:	8fbf0014 	lw	ra,20(sp)
     6e8:	27bd0038 	addiu	sp,sp,56
     6ec:	03e00008 	jr	ra
     6f0:	00000000 	nop

000006f4 <func_80093A64>:
     6f4:	27bdffc8 	addiu	sp,sp,-56
     6f8:	afbf0014 	sw	ra,20(sp)
     6fc:	00802825 	move	a1,a0
     700:	3c060000 	lui	a2,0x0
     704:	24c600a0 	addiu	a2,a2,160
     708:	afa50038 	sw	a1,56(sp)
     70c:	27a40024 	addiu	a0,sp,36
     710:	0c000000 	jal	0 <Gfx_SetFog>
     714:	2407055d 	li	a3,1373
     718:	8fa50038 	lw	a1,56(sp)
     71c:	3c180000 	lui	t8,0x0
     720:	271809f0 	addiu	t8,t8,2544
     724:	8ca302c0 	lw	v1,704(a1)
     728:	3c0fde00 	lui	t7,0xde00
     72c:	3c060000 	lui	a2,0x0
     730:	246e0008 	addiu	t6,v1,8
     734:	acae02c0 	sw	t6,704(a1)
     738:	24c600ac 	addiu	a2,a2,172
     73c:	27a40024 	addiu	a0,sp,36
     740:	24070561 	li	a3,1377
     744:	ac780004 	sw	t8,4(v1)
     748:	0c000000 	jal	0 <Gfx_SetFog>
     74c:	ac6f0000 	sw	t7,0(v1)
     750:	8fbf0014 	lw	ra,20(sp)
     754:	27bd0038 	addiu	sp,sp,56
     758:	03e00008 	jr	ra
     75c:	00000000 	nop

00000760 <func_80093AD0>:
     760:	27bdffc8 	addiu	sp,sp,-56
     764:	afbf0014 	sw	ra,20(sp)
     768:	00802825 	move	a1,a0
     76c:	3c060000 	lui	a2,0x0
     770:	24c600b8 	addiu	a2,a2,184
     774:	afa50038 	sw	a1,56(sp)
     778:	27a40024 	addiu	a0,sp,36
     77c:	0c000000 	jal	0 <Gfx_SetFog>
     780:	2407056d 	li	a3,1389
     784:	8fa50038 	lw	a1,56(sp)
     788:	3c180000 	lui	t8,0x0
     78c:	27180a20 	addiu	t8,t8,2592
     790:	8ca302c0 	lw	v1,704(a1)
     794:	3c0fde00 	lui	t7,0xde00
     798:	3c060000 	lui	a2,0x0
     79c:	246e0008 	addiu	t6,v1,8
     7a0:	acae02c0 	sw	t6,704(a1)
     7a4:	24c600c4 	addiu	a2,a2,196
     7a8:	27a40024 	addiu	a0,sp,36
     7ac:	24070571 	li	a3,1393
     7b0:	ac780004 	sw	t8,4(v1)
     7b4:	0c000000 	jal	0 <Gfx_SetFog>
     7b8:	ac6f0000 	sw	t7,0(v1)
     7bc:	8fbf0014 	lw	ra,20(sp)
     7c0:	27bd0038 	addiu	sp,sp,56
     7c4:	03e00008 	jr	ra
     7c8:	00000000 	nop

000007cc <func_80093B3C>:
     7cc:	27bdffc8 	addiu	sp,sp,-56
     7d0:	afbf0014 	sw	ra,20(sp)
     7d4:	00802825 	move	a1,a0
     7d8:	3c060000 	lui	a2,0x0
     7dc:	24c600d0 	addiu	a2,a2,208
     7e0:	afa50038 	sw	a1,56(sp)
     7e4:	27a40024 	addiu	a0,sp,36
     7e8:	0c000000 	jal	0 <Gfx_SetFog>
     7ec:	2407057d 	li	a3,1405
     7f0:	8fa50038 	lw	a1,56(sp)
     7f4:	3c180000 	lui	t8,0x0
     7f8:	27180a50 	addiu	t8,t8,2640
     7fc:	8ca302d0 	lw	v1,720(a1)
     800:	3c0fde00 	lui	t7,0xde00
     804:	3c060000 	lui	a2,0x0
     808:	246e0008 	addiu	t6,v1,8
     80c:	acae02d0 	sw	t6,720(a1)
     810:	24c600dc 	addiu	a2,a2,220
     814:	27a40024 	addiu	a0,sp,36
     818:	24070581 	li	a3,1409
     81c:	ac780004 	sw	t8,4(v1)
     820:	0c000000 	jal	0 <Gfx_SetFog>
     824:	ac6f0000 	sw	t7,0(v1)
     828:	8fbf0014 	lw	ra,20(sp)
     82c:	27bd0038 	addiu	sp,sp,56
     830:	03e00008 	jr	ra
     834:	00000000 	nop

00000838 <func_80093BA8>:
     838:	27bdffc8 	addiu	sp,sp,-56
     83c:	afbf0014 	sw	ra,20(sp)
     840:	00802825 	move	a1,a0
     844:	3c060000 	lui	a2,0x0
     848:	24c600e8 	addiu	a2,a2,232
     84c:	afa50038 	sw	a1,56(sp)
     850:	27a40024 	addiu	a0,sp,36
     854:	0c000000 	jal	0 <Gfx_SetFog>
     858:	2407058d 	li	a3,1421
     85c:	8fa50038 	lw	a1,56(sp)
     860:	3c180000 	lui	t8,0x0
     864:	271804e0 	addiu	t8,t8,1248
     868:	8ca302c0 	lw	v1,704(a1)
     86c:	3c0fde00 	lui	t7,0xde00
     870:	3c060000 	lui	a2,0x0
     874:	246e0008 	addiu	t6,v1,8
     878:	acae02c0 	sw	t6,704(a1)
     87c:	24c600f4 	addiu	a2,a2,244
     880:	27a40024 	addiu	a0,sp,36
     884:	24070591 	li	a3,1425
     888:	ac780004 	sw	t8,4(v1)
     88c:	0c000000 	jal	0 <Gfx_SetFog>
     890:	ac6f0000 	sw	t7,0(v1)
     894:	8fbf0014 	lw	ra,20(sp)
     898:	27bd0038 	addiu	sp,sp,56
     89c:	03e00008 	jr	ra
     8a0:	00000000 	nop

000008a4 <func_80093C14>:
     8a4:	27bdffc8 	addiu	sp,sp,-56
     8a8:	afbf0014 	sw	ra,20(sp)
     8ac:	00802825 	move	a1,a0
     8b0:	3c060000 	lui	a2,0x0
     8b4:	24c60100 	addiu	a2,a2,256
     8b8:	afa50038 	sw	a1,56(sp)
     8bc:	27a40024 	addiu	a0,sp,36
     8c0:	0c000000 	jal	0 <Gfx_SetFog>
     8c4:	2407059f 	li	a3,1439
     8c8:	8fa50038 	lw	a1,56(sp)
     8cc:	3c180000 	lui	t8,0x0
     8d0:	271804b0 	addiu	t8,t8,1200
     8d4:	8ca302d0 	lw	v1,720(a1)
     8d8:	3c0fde00 	lui	t7,0xde00
     8dc:	3c060000 	lui	a2,0x0
     8e0:	246e0008 	addiu	t6,v1,8
     8e4:	acae02d0 	sw	t6,720(a1)
     8e8:	24c6010c 	addiu	a2,a2,268
     8ec:	27a40024 	addiu	a0,sp,36
     8f0:	240705a3 	li	a3,1443
     8f4:	ac780004 	sw	t8,4(v1)
     8f8:	0c000000 	jal	0 <Gfx_SetFog>
     8fc:	ac6f0000 	sw	t7,0(v1)
     900:	8fbf0014 	lw	ra,20(sp)
     904:	27bd0038 	addiu	sp,sp,56
     908:	03e00008 	jr	ra
     90c:	00000000 	nop

00000910 <func_80093C80>:
     910:	27bdffc8 	addiu	sp,sp,-56
     914:	afbf0014 	sw	ra,20(sp)
     918:	afa40038 	sw	a0,56(sp)
     91c:	8c850000 	lw	a1,0(a0)
     920:	00a02025 	move	a0,a1
     924:	0c000000 	jal	0 <Gfx_SetFog>
     928:	afa50034 	sw	a1,52(sp)
     92c:	8faf0038 	lw	t7,56(sp)
     930:	3c180001 	lui	t8,0x1
     934:	24010003 	li	at,3
     938:	030fc021 	addu	t8,t8,t7
     93c:	93181cbf 	lbu	t8,7359(t8)
     940:	8fa50034 	lw	a1,52(sp)
     944:	27a40020 	addiu	a0,sp,32
     948:	17010013 	bne	t8,at,998 <func_80093C80+0x88>
     94c:	3c060000 	lui	a2,0x0
     950:	24c60118 	addiu	a2,a2,280
     954:	240705b4 	li	a3,1460
     958:	0c000000 	jal	0 <Gfx_SetFog>
     95c:	afa50034 	sw	a1,52(sp)
     960:	8fa50034 	lw	a1,52(sp)
     964:	3c08e300 	lui	t0,0xe300
     968:	35081801 	ori	t0,t0,0x1801
     96c:	8ca302c0 	lw	v1,704(a1)
     970:	240900c0 	li	t1,192
     974:	3c060000 	lui	a2,0x0
     978:	24790008 	addiu	t9,v1,8
     97c:	acb902c0 	sw	t9,704(a1)
     980:	24c60124 	addiu	a2,a2,292
     984:	27a40020 	addiu	a0,sp,32
     988:	240705b6 	li	a3,1462
     98c:	ac690004 	sw	t1,4(v1)
     990:	0c000000 	jal	0 <Gfx_SetFog>
     994:	ac680000 	sw	t0,0(v1)
     998:	8fbf0014 	lw	ra,20(sp)
     99c:	27bd0038 	addiu	sp,sp,56
     9a0:	03e00008 	jr	ra
     9a4:	00000000 	nop

000009a8 <func_80093D18>:
     9a8:	27bdffc8 	addiu	sp,sp,-56
     9ac:	afbf0014 	sw	ra,20(sp)
     9b0:	00802825 	move	a1,a0
     9b4:	3c060000 	lui	a2,0x0
     9b8:	24c60130 	addiu	a2,a2,304
     9bc:	afa50038 	sw	a1,56(sp)
     9c0:	27a40024 	addiu	a0,sp,36
     9c4:	0c000000 	jal	0 <Gfx_SetFog>
     9c8:	240705c3 	li	a3,1475
     9cc:	8fa50038 	lw	a1,56(sp)
     9d0:	3c180000 	lui	t8,0x0
     9d4:	271804b0 	addiu	t8,t8,1200
     9d8:	8ca302c0 	lw	v1,704(a1)
     9dc:	3c0fde00 	lui	t7,0xde00
     9e0:	3c060000 	lui	a2,0x0
     9e4:	246e0008 	addiu	t6,v1,8
     9e8:	acae02c0 	sw	t6,704(a1)
     9ec:	24c6013c 	addiu	a2,a2,316
     9f0:	27a40024 	addiu	a0,sp,36
     9f4:	240705c7 	li	a3,1479
     9f8:	ac780004 	sw	t8,4(v1)
     9fc:	0c000000 	jal	0 <Gfx_SetFog>
     a00:	ac6f0000 	sw	t7,0(v1)
     a04:	8fbf0014 	lw	ra,20(sp)
     a08:	27bd0038 	addiu	sp,sp,56
     a0c:	03e00008 	jr	ra
     a10:	00000000 	nop

00000a14 <func_80093D84>:
     a14:	27bdffc8 	addiu	sp,sp,-56
     a18:	afbf0014 	sw	ra,20(sp)
     a1c:	00802825 	move	a1,a0
     a20:	3c060000 	lui	a2,0x0
     a24:	24c60148 	addiu	a2,a2,328
     a28:	afa50038 	sw	a1,56(sp)
     a2c:	27a40024 	addiu	a0,sp,36
     a30:	0c000000 	jal	0 <Gfx_SetFog>
     a34:	240705d3 	li	a3,1491
     a38:	8fa50038 	lw	a1,56(sp)
     a3c:	3c180000 	lui	t8,0x0
     a40:	271804b0 	addiu	t8,t8,1200
     a44:	8ca302d0 	lw	v1,720(a1)
     a48:	3c0fde00 	lui	t7,0xde00
     a4c:	3c060000 	lui	a2,0x0
     a50:	246e0008 	addiu	t6,v1,8
     a54:	acae02d0 	sw	t6,720(a1)
     a58:	24c60154 	addiu	a2,a2,340
     a5c:	27a40024 	addiu	a0,sp,36
     a60:	240705d7 	li	a3,1495
     a64:	ac780004 	sw	t8,4(v1)
     a68:	0c000000 	jal	0 <Gfx_SetFog>
     a6c:	ac6f0000 	sw	t7,0(v1)
     a70:	8fbf0014 	lw	ra,20(sp)
     a74:	27bd0038 	addiu	sp,sp,56
     a78:	03e00008 	jr	ra
     a7c:	00000000 	nop

00000a80 <func_80093DF0>:
     a80:	27bdffc8 	addiu	sp,sp,-56
     a84:	afbf0014 	sw	ra,20(sp)
     a88:	00802825 	move	a1,a0
     a8c:	3c060000 	lui	a2,0x0
     a90:	24c60160 	addiu	a2,a2,352
     a94:	afa50038 	sw	a1,56(sp)
     a98:	27a40024 	addiu	a0,sp,36
     a9c:	0c000000 	jal	0 <Gfx_SetFog>
     aa0:	240705e3 	li	a3,1507
     aa4:	8fa50038 	lw	a1,56(sp)
     aa8:	3c180000 	lui	t8,0x0
     aac:	271805d0 	addiu	t8,t8,1488
     ab0:	8ca302c0 	lw	v1,704(a1)
     ab4:	3c0fde00 	lui	t7,0xde00
     ab8:	3c060000 	lui	a2,0x0
     abc:	246e0008 	addiu	t6,v1,8
     ac0:	acae02c0 	sw	t6,704(a1)
     ac4:	24c6016c 	addiu	a2,a2,364
     ac8:	27a40024 	addiu	a0,sp,36
     acc:	240705e7 	li	a3,1511
     ad0:	ac780004 	sw	t8,4(v1)
     ad4:	0c000000 	jal	0 <Gfx_SetFog>
     ad8:	ac6f0000 	sw	t7,0(v1)
     adc:	8fbf0014 	lw	ra,20(sp)
     ae0:	27bd0038 	addiu	sp,sp,56
     ae4:	03e00008 	jr	ra
     ae8:	00000000 	nop

00000aec <func_80093E5C>:
     aec:	27bdffc8 	addiu	sp,sp,-56
     af0:	afbf0014 	sw	ra,20(sp)
     af4:	00802825 	move	a1,a0
     af8:	3c060000 	lui	a2,0x0
     afc:	24c60178 	addiu	a2,a2,376
     b00:	afa50038 	sw	a1,56(sp)
     b04:	27a40024 	addiu	a0,sp,36
     b08:	0c000000 	jal	0 <Gfx_SetFog>
     b0c:	240705f3 	li	a3,1523
     b10:	8fa50038 	lw	a1,56(sp)
     b14:	3c180000 	lui	t8,0x0
     b18:	27180600 	addiu	t8,t8,1536
     b1c:	8ca302c0 	lw	v1,704(a1)
     b20:	3c0fde00 	lui	t7,0xde00
     b24:	3c060000 	lui	a2,0x0
     b28:	246e0008 	addiu	t6,v1,8
     b2c:	acae02c0 	sw	t6,704(a1)
     b30:	24c60184 	addiu	a2,a2,388
     b34:	27a40024 	addiu	a0,sp,36
     b38:	240705f7 	li	a3,1527
     b3c:	ac780004 	sw	t8,4(v1)
     b40:	0c000000 	jal	0 <Gfx_SetFog>
     b44:	ac6f0000 	sw	t7,0(v1)
     b48:	8fbf0014 	lw	ra,20(sp)
     b4c:	27bd0038 	addiu	sp,sp,56
     b50:	03e00008 	jr	ra
     b54:	00000000 	nop

00000b58 <func_80093EC8>:
     b58:	27bdffc8 	addiu	sp,sp,-56
     b5c:	afbf0014 	sw	ra,20(sp)
     b60:	00802825 	move	a1,a0
     b64:	3c060000 	lui	a2,0x0
     b68:	24c60190 	addiu	a2,a2,400
     b6c:	afa50038 	sw	a1,56(sp)
     b70:	27a40024 	addiu	a0,sp,36
     b74:	0c000000 	jal	0 <Gfx_SetFog>
     b78:	24070603 	li	a3,1539
     b7c:	8fa50038 	lw	a1,56(sp)
     b80:	3c180000 	lui	t8,0x0
     b84:	27180630 	addiu	t8,t8,1584
     b88:	8ca302c0 	lw	v1,704(a1)
     b8c:	3c0fde00 	lui	t7,0xde00
     b90:	3c060000 	lui	a2,0x0
     b94:	246e0008 	addiu	t6,v1,8
     b98:	acae02c0 	sw	t6,704(a1)
     b9c:	24c6019c 	addiu	a2,a2,412
     ba0:	27a40024 	addiu	a0,sp,36
     ba4:	24070607 	li	a3,1543
     ba8:	ac780004 	sw	t8,4(v1)
     bac:	0c000000 	jal	0 <Gfx_SetFog>
     bb0:	ac6f0000 	sw	t7,0(v1)
     bb4:	8fbf0014 	lw	ra,20(sp)
     bb8:	27bd0038 	addiu	sp,sp,56
     bbc:	03e00008 	jr	ra
     bc0:	00000000 	nop

00000bc4 <func_80093F34>:
     bc4:	00801025 	move	v0,a0
     bc8:	3c0f0000 	lui	t7,0x0
     bcc:	25ef0c00 	addiu	t7,t7,3072
     bd0:	3c0ede00 	lui	t6,0xde00
     bd4:	ac4e0000 	sw	t6,0(v0)
     bd8:	ac4f0004 	sw	t7,4(v0)
     bdc:	24840008 	addiu	a0,a0,8
     be0:	03e00008 	jr	ra
     be4:	00801025 	move	v0,a0

00000be8 <func_80093F58>:
     be8:	00801025 	move	v0,a0
     bec:	3c0f0000 	lui	t7,0x0
     bf0:	25ef0660 	addiu	t7,t7,1632
     bf4:	3c0ede00 	lui	t6,0xde00
     bf8:	ac4e0000 	sw	t6,0(v0)
     bfc:	ac4f0004 	sw	t7,4(v0)
     c00:	24840008 	addiu	a0,a0,8
     c04:	03e00008 	jr	ra
     c08:	00801025 	move	v0,a0

00000c0c <func_80093F7C>:
     c0c:	27bdffd0 	addiu	sp,sp,-48
     c10:	afbf0014 	sw	ra,20(sp)
     c14:	afa40030 	sw	a0,48(sp)
     c18:	3c060000 	lui	a2,0x0
     c1c:	24c601a8 	addiu	a2,a2,424
     c20:	8fa50030 	lw	a1,48(sp)
     c24:	27a4001c 	addiu	a0,sp,28
     c28:	0c000000 	jal	0 <Gfx_SetFog>
     c2c:	24070621 	li	a3,1569
     c30:	8fae0030 	lw	t6,48(sp)
     c34:	0c000000 	jal	0 <Gfx_SetFog>
     c38:	8dc402c0 	lw	a0,704(t6)
     c3c:	8fa50030 	lw	a1,48(sp)
     c40:	3c060000 	lui	a2,0x0
     c44:	24c601b4 	addiu	a2,a2,436
     c48:	27a4001c 	addiu	a0,sp,28
     c4c:	24070625 	li	a3,1573
     c50:	0c000000 	jal	0 <Gfx_SetFog>
     c54:	aca202c0 	sw	v0,704(a1)
     c58:	8fbf0014 	lw	ra,20(sp)
     c5c:	27bd0030 	addiu	sp,sp,48
     c60:	03e00008 	jr	ra
     c64:	00000000 	nop

00000c68 <func_80093FD8>:
     c68:	27bdffc8 	addiu	sp,sp,-56
     c6c:	afbf0014 	sw	ra,20(sp)
     c70:	00802825 	move	a1,a0
     c74:	3c060000 	lui	a2,0x0
     c78:	24c601c0 	addiu	a2,a2,448
     c7c:	afa50038 	sw	a1,56(sp)
     c80:	27a40024 	addiu	a0,sp,36
     c84:	0c000000 	jal	0 <Gfx_SetFog>
     c88:	24070631 	li	a3,1585
     c8c:	8fa50038 	lw	a1,56(sp)
     c90:	3c180000 	lui	t8,0x0
     c94:	27180690 	addiu	t8,t8,1680
     c98:	8ca302c0 	lw	v1,704(a1)
     c9c:	3c0fde00 	lui	t7,0xde00
     ca0:	3c060000 	lui	a2,0x0
     ca4:	246e0008 	addiu	t6,v1,8
     ca8:	acae02c0 	sw	t6,704(a1)
     cac:	24c601cc 	addiu	a2,a2,460
     cb0:	27a40024 	addiu	a0,sp,36
     cb4:	24070635 	li	a3,1589
     cb8:	ac780004 	sw	t8,4(v1)
     cbc:	0c000000 	jal	0 <Gfx_SetFog>
     cc0:	ac6f0000 	sw	t7,0(v1)
     cc4:	8fbf0014 	lw	ra,20(sp)
     cc8:	27bd0038 	addiu	sp,sp,56
     ccc:	03e00008 	jr	ra
     cd0:	00000000 	nop

00000cd4 <func_80094044>:
     cd4:	27bdffc8 	addiu	sp,sp,-56
     cd8:	afbf0014 	sw	ra,20(sp)
     cdc:	00802825 	move	a1,a0
     ce0:	3c060000 	lui	a2,0x0
     ce4:	24c601d8 	addiu	a2,a2,472
     ce8:	afa50038 	sw	a1,56(sp)
     cec:	27a40024 	addiu	a0,sp,36
     cf0:	0c000000 	jal	0 <Gfx_SetFog>
     cf4:	24070641 	li	a3,1601
     cf8:	8fa50038 	lw	a1,56(sp)
     cfc:	3c180000 	lui	t8,0x0
     d00:	27180840 	addiu	t8,t8,2112
     d04:	8ca302d0 	lw	v1,720(a1)
     d08:	3c0fde00 	lui	t7,0xde00
     d0c:	3c060000 	lui	a2,0x0
     d10:	246e0008 	addiu	t6,v1,8
     d14:	acae02d0 	sw	t6,720(a1)
     d18:	24c601e4 	addiu	a2,a2,484
     d1c:	27a40024 	addiu	a0,sp,36
     d20:	24070645 	li	a3,1605
     d24:	ac780004 	sw	t8,4(v1)
     d28:	0c000000 	jal	0 <Gfx_SetFog>
     d2c:	ac6f0000 	sw	t7,0(v1)
     d30:	8fbf0014 	lw	ra,20(sp)
     d34:	27bd0038 	addiu	sp,sp,56
     d38:	03e00008 	jr	ra
     d3c:	00000000 	nop

00000d40 <func_800940B0>:
     d40:	27bdffc8 	addiu	sp,sp,-56
     d44:	afbf0014 	sw	ra,20(sp)
     d48:	00802825 	move	a1,a0
     d4c:	3c060000 	lui	a2,0x0
     d50:	24c601f0 	addiu	a2,a2,496
     d54:	afa50038 	sw	a1,56(sp)
     d58:	27a40024 	addiu	a0,sp,36
     d5c:	0c000000 	jal	0 <Gfx_SetFog>
     d60:	24070651 	li	a3,1617
     d64:	8fa50038 	lw	a1,56(sp)
     d68:	3c180000 	lui	t8,0x0
     d6c:	271806c0 	addiu	t8,t8,1728
     d70:	8ca302c0 	lw	v1,704(a1)
     d74:	3c0fde00 	lui	t7,0xde00
     d78:	3c060000 	lui	a2,0x0
     d7c:	246e0008 	addiu	t6,v1,8
     d80:	acae02c0 	sw	t6,704(a1)
     d84:	24c601fc 	addiu	a2,a2,508
     d88:	27a40024 	addiu	a0,sp,36
     d8c:	24070655 	li	a3,1621
     d90:	ac780004 	sw	t8,4(v1)
     d94:	0c000000 	jal	0 <Gfx_SetFog>
     d98:	ac6f0000 	sw	t7,0(v1)
     d9c:	8fbf0014 	lw	ra,20(sp)
     da0:	27bd0038 	addiu	sp,sp,56
     da4:	03e00008 	jr	ra
     da8:	00000000 	nop

00000dac <func_8009411C>:
     dac:	00801025 	move	v0,a0
     db0:	3c0f0000 	lui	t7,0x0
     db4:	25ef0540 	addiu	t7,t7,1344
     db8:	3c0ede00 	lui	t6,0xde00
     dbc:	ac4e0000 	sw	t6,0(v0)
     dc0:	ac4f0004 	sw	t7,4(v0)
     dc4:	24840008 	addiu	a0,a0,8
     dc8:	03e00008 	jr	ra
     dcc:	00801025 	move	v0,a0

00000dd0 <func_80094140>:
     dd0:	27bdffc8 	addiu	sp,sp,-56
     dd4:	afbf0014 	sw	ra,20(sp)
     dd8:	00802825 	move	a1,a0
     ddc:	3c060000 	lui	a2,0x0
     de0:	24c60208 	addiu	a2,a2,520
     de4:	afa50038 	sw	a1,56(sp)
     de8:	27a40024 	addiu	a0,sp,36
     dec:	0c000000 	jal	0 <Gfx_SetFog>
     df0:	24070668 	li	a3,1640
     df4:	8fa50038 	lw	a1,56(sp)
     df8:	3c180000 	lui	t8,0x0
     dfc:	27180540 	addiu	t8,t8,1344
     e00:	8ca302c0 	lw	v1,704(a1)
     e04:	3c0fde00 	lui	t7,0xde00
     e08:	3c060000 	lui	a2,0x0
     e0c:	246e0008 	addiu	t6,v1,8
     e10:	acae02c0 	sw	t6,704(a1)
     e14:	24c60214 	addiu	a2,a2,532
     e18:	27a40024 	addiu	a0,sp,36
     e1c:	2407066c 	li	a3,1644
     e20:	ac780004 	sw	t8,4(v1)
     e24:	0c000000 	jal	0 <Gfx_SetFog>
     e28:	ac6f0000 	sw	t7,0(v1)
     e2c:	8fbf0014 	lw	ra,20(sp)
     e30:	27bd0038 	addiu	sp,sp,56
     e34:	03e00008 	jr	ra
     e38:	00000000 	nop

00000e3c <func_800941AC>:
     e3c:	27bdffc8 	addiu	sp,sp,-56
     e40:	afbf0014 	sw	ra,20(sp)
     e44:	00802825 	move	a1,a0
     e48:	3c060000 	lui	a2,0x0
     e4c:	24c60220 	addiu	a2,a2,544
     e50:	afa50038 	sw	a1,56(sp)
     e54:	27a40024 	addiu	a0,sp,36
     e58:	0c000000 	jal	0 <Gfx_SetFog>
     e5c:	24070673 	li	a3,1651
     e60:	8fa50038 	lw	a1,56(sp)
     e64:	3c180000 	lui	t8,0x0
     e68:	27180810 	addiu	t8,t8,2064
     e6c:	8ca302c0 	lw	v1,704(a1)
     e70:	3c0fde00 	lui	t7,0xde00
     e74:	3c060000 	lui	a2,0x0
     e78:	246e0008 	addiu	t6,v1,8
     e7c:	acae02c0 	sw	t6,704(a1)
     e80:	24c6022c 	addiu	a2,a2,556
     e84:	27a40024 	addiu	a0,sp,36
     e88:	24070677 	li	a3,1655
     e8c:	ac780004 	sw	t8,4(v1)
     e90:	0c000000 	jal	0 <Gfx_SetFog>
     e94:	ac6f0000 	sw	t7,0(v1)
     e98:	8fbf0014 	lw	ra,20(sp)
     e9c:	27bd0038 	addiu	sp,sp,56
     ea0:	03e00008 	jr	ra
     ea4:	00000000 	nop

00000ea8 <func_80094218>:
     ea8:	27bdffc8 	addiu	sp,sp,-56
     eac:	afbf0014 	sw	ra,20(sp)
     eb0:	00802825 	move	a1,a0
     eb4:	3c060000 	lui	a2,0x0
     eb8:	24c60238 	addiu	a2,a2,568
     ebc:	afa50038 	sw	a1,56(sp)
     ec0:	27a40024 	addiu	a0,sp,36
     ec4:	0c000000 	jal	0 <Gfx_SetFog>
     ec8:	24070686 	li	a3,1670
     ecc:	8fa50038 	lw	a1,56(sp)
     ed0:	3c180000 	lui	t8,0x0
     ed4:	27180870 	addiu	t8,t8,2160
     ed8:	8ca302c0 	lw	v1,704(a1)
     edc:	3c0fde00 	lui	t7,0xde00
     ee0:	3c060000 	lui	a2,0x0
     ee4:	246e0008 	addiu	t6,v1,8
     ee8:	acae02c0 	sw	t6,704(a1)
     eec:	24c60244 	addiu	a2,a2,580
     ef0:	27a40024 	addiu	a0,sp,36
     ef4:	2407068a 	li	a3,1674
     ef8:	ac780004 	sw	t8,4(v1)
     efc:	0c000000 	jal	0 <Gfx_SetFog>
     f00:	ac6f0000 	sw	t7,0(v1)
     f04:	8fbf0014 	lw	ra,20(sp)
     f08:	27bd0038 	addiu	sp,sp,56
     f0c:	03e00008 	jr	ra
     f10:	00000000 	nop

00000f14 <func_80094284>:
     f14:	27bdffc8 	addiu	sp,sp,-56
     f18:	afbf0014 	sw	ra,20(sp)
     f1c:	00802825 	move	a1,a0
     f20:	3c060000 	lui	a2,0x0
     f24:	24c60250 	addiu	a2,a2,592
     f28:	afa50038 	sw	a1,56(sp)
     f2c:	27a40024 	addiu	a0,sp,36
     f30:	0c000000 	jal	0 <Gfx_SetFog>
     f34:	24070691 	li	a3,1681
     f38:	8fa50038 	lw	a1,56(sp)
     f3c:	3c180000 	lui	t8,0x0
     f40:	271808a0 	addiu	t8,t8,2208
     f44:	8ca302b0 	lw	v1,688(a1)
     f48:	3c0fde00 	lui	t7,0xde00
     f4c:	3c060000 	lui	a2,0x0
     f50:	246e0008 	addiu	t6,v1,8
     f54:	acae02b0 	sw	t6,688(a1)
     f58:	24c6025c 	addiu	a2,a2,604
     f5c:	27a40024 	addiu	a0,sp,36
     f60:	24070695 	li	a3,1685
     f64:	ac780004 	sw	t8,4(v1)
     f68:	0c000000 	jal	0 <Gfx_SetFog>
     f6c:	ac6f0000 	sw	t7,0(v1)
     f70:	8fbf0014 	lw	ra,20(sp)
     f74:	27bd0038 	addiu	sp,sp,56
     f78:	03e00008 	jr	ra
     f7c:	00000000 	nop

00000f80 <func_800942F0>:
     f80:	27bdffc8 	addiu	sp,sp,-56
     f84:	afbf0014 	sw	ra,20(sp)
     f88:	00802825 	move	a1,a0
     f8c:	3c060000 	lui	a2,0x0
     f90:	24c60268 	addiu	a2,a2,616
     f94:	afa50038 	sw	a1,56(sp)
     f98:	27a40024 	addiu	a0,sp,36
     f9c:	0c000000 	jal	0 <Gfx_SetFog>
     fa0:	240706a4 	li	a3,1700
     fa4:	8fa50038 	lw	a1,56(sp)
     fa8:	3c180000 	lui	t8,0x0
     fac:	27180720 	addiu	t8,t8,1824
     fb0:	8ca302d0 	lw	v1,720(a1)
     fb4:	3c0fde00 	lui	t7,0xde00
     fb8:	3c060000 	lui	a2,0x0
     fbc:	246e0008 	addiu	t6,v1,8
     fc0:	acae02d0 	sw	t6,720(a1)
     fc4:	24c60274 	addiu	a2,a2,628
     fc8:	27a40024 	addiu	a0,sp,36
     fcc:	240706a8 	li	a3,1704
     fd0:	ac780004 	sw	t8,4(v1)
     fd4:	0c000000 	jal	0 <Gfx_SetFog>
     fd8:	ac6f0000 	sw	t7,0(v1)
     fdc:	8fbf0014 	lw	ra,20(sp)
     fe0:	27bd0038 	addiu	sp,sp,56
     fe4:	03e00008 	jr	ra
     fe8:	00000000 	nop

00000fec <func_8009435C>:
     fec:	27bdffc8 	addiu	sp,sp,-56
     ff0:	afbf0014 	sw	ra,20(sp)
     ff4:	00802825 	move	a1,a0
     ff8:	3c060000 	lui	a2,0x0
     ffc:	24c60280 	addiu	a2,a2,640
    1000:	afa50038 	sw	a1,56(sp)
    1004:	27a40024 	addiu	a0,sp,36
    1008:	0c000000 	jal	0 <Gfx_SetFog>
    100c:	240706ba 	li	a3,1722
    1010:	8fa50038 	lw	a1,56(sp)
    1014:	3c180000 	lui	t8,0x0
    1018:	271800c0 	addiu	t8,t8,192
    101c:	8ca302d0 	lw	v1,720(a1)
    1020:	3c0fde00 	lui	t7,0xde00
    1024:	3c060000 	lui	a2,0x0
    1028:	246e0008 	addiu	t6,v1,8
    102c:	acae02d0 	sw	t6,720(a1)
    1030:	24c6028c 	addiu	a2,a2,652
    1034:	27a40024 	addiu	a0,sp,36
    1038:	240706be 	li	a3,1726
    103c:	ac780004 	sw	t8,4(v1)
    1040:	0c000000 	jal	0 <Gfx_SetFog>
    1044:	ac6f0000 	sw	t7,0(v1)
    1048:	8fbf0014 	lw	ra,20(sp)
    104c:	27bd0038 	addiu	sp,sp,56
    1050:	03e00008 	jr	ra
    1054:	00000000 	nop

00001058 <func_800943C8>:
    1058:	27bdffc8 	addiu	sp,sp,-56
    105c:	afbf0014 	sw	ra,20(sp)
    1060:	00802825 	move	a1,a0
    1064:	3c060000 	lui	a2,0x0
    1068:	24c60298 	addiu	a2,a2,664
    106c:	afa50038 	sw	a1,56(sp)
    1070:	27a40024 	addiu	a0,sp,36
    1074:	0c000000 	jal	0 <Gfx_SetFog>
    1078:	240706de 	li	a3,1758
    107c:	8fa50038 	lw	a1,56(sp)
    1080:	3c180000 	lui	t8,0x0
    1084:	271806f0 	addiu	t8,t8,1776
    1088:	8ca302c0 	lw	v1,704(a1)
    108c:	3c0fde00 	lui	t7,0xde00
    1090:	3c060000 	lui	a2,0x0
    1094:	246e0008 	addiu	t6,v1,8
    1098:	acae02c0 	sw	t6,704(a1)
    109c:	24c602a4 	addiu	a2,a2,676
    10a0:	27a40024 	addiu	a0,sp,36
    10a4:	240706e2 	li	a3,1762
    10a8:	ac780004 	sw	t8,4(v1)
    10ac:	0c000000 	jal	0 <Gfx_SetFog>
    10b0:	ac6f0000 	sw	t7,0(v1)
    10b4:	8fbf0014 	lw	ra,20(sp)
    10b8:	27bd0038 	addiu	sp,sp,56
    10bc:	03e00008 	jr	ra
    10c0:	00000000 	nop

000010c4 <func_80094434>:
    10c4:	27bdffc8 	addiu	sp,sp,-56
    10c8:	afbf0014 	sw	ra,20(sp)
    10cc:	00802825 	move	a1,a0
    10d0:	3c060000 	lui	a2,0x0
    10d4:	24c602b0 	addiu	a2,a2,688
    10d8:	afa50038 	sw	a1,56(sp)
    10dc:	27a40024 	addiu	a0,sp,36
    10e0:	0c000000 	jal	0 <Gfx_SetFog>
    10e4:	240706ef 	li	a3,1775
    10e8:	8fa50038 	lw	a1,56(sp)
    10ec:	3c180000 	lui	t8,0x0
    10f0:	27180060 	addiu	t8,t8,96
    10f4:	8ca302c0 	lw	v1,704(a1)
    10f8:	3c0fde00 	lui	t7,0xde00
    10fc:	3c060000 	lui	a2,0x0
    1100:	246e0008 	addiu	t6,v1,8
    1104:	acae02c0 	sw	t6,704(a1)
    1108:	24c602bc 	addiu	a2,a2,700
    110c:	27a40024 	addiu	a0,sp,36
    1110:	240706f3 	li	a3,1779
    1114:	ac780004 	sw	t8,4(v1)
    1118:	0c000000 	jal	0 <Gfx_SetFog>
    111c:	ac6f0000 	sw	t7,0(v1)
    1120:	8fbf0014 	lw	ra,20(sp)
    1124:	27bd0038 	addiu	sp,sp,56
    1128:	03e00008 	jr	ra
    112c:	00000000 	nop

00001130 <func_800944A0>:
    1130:	00801025 	move	v0,a0
    1134:	3c0f0000 	lui	t7,0x0
    1138:	25ef0750 	addiu	t7,t7,1872
    113c:	3c0ede00 	lui	t6,0xde00
    1140:	ac4e0000 	sw	t6,0(v0)
    1144:	ac4f0004 	sw	t7,4(v0)
    1148:	24840008 	addiu	a0,a0,8
    114c:	03e00008 	jr	ra
    1150:	00801025 	move	v0,a0

00001154 <func_800944C4>:
    1154:	27bdffd0 	addiu	sp,sp,-48
    1158:	afbf0014 	sw	ra,20(sp)
    115c:	afa40030 	sw	a0,48(sp)
    1160:	3c060000 	lui	a2,0x0
    1164:	24c602c8 	addiu	a2,a2,712
    1168:	8fa50030 	lw	a1,48(sp)
    116c:	27a4001c 	addiu	a0,sp,28
    1170:	0c000000 	jal	0 <Gfx_SetFog>
    1174:	24070707 	li	a3,1799
    1178:	8fae0030 	lw	t6,48(sp)
    117c:	0c000000 	jal	0 <Gfx_SetFog>
    1180:	8dc402c0 	lw	a0,704(t6)
    1184:	8fa50030 	lw	a1,48(sp)
    1188:	3c060000 	lui	a2,0x0
    118c:	24c602d4 	addiu	a2,a2,724
    1190:	27a4001c 	addiu	a0,sp,28
    1194:	24070709 	li	a3,1801
    1198:	0c000000 	jal	0 <Gfx_SetFog>
    119c:	aca202c0 	sw	v0,704(a1)
    11a0:	8fbf0014 	lw	ra,20(sp)
    11a4:	27bd0030 	addiu	sp,sp,48
    11a8:	03e00008 	jr	ra
    11ac:	00000000 	nop

000011b0 <func_80094520>:
    11b0:	27bdffd0 	addiu	sp,sp,-48
    11b4:	afbf0014 	sw	ra,20(sp)
    11b8:	afa40030 	sw	a0,48(sp)
    11bc:	3c060000 	lui	a2,0x0
    11c0:	24c602e0 	addiu	a2,a2,736
    11c4:	8fa50030 	lw	a1,48(sp)
    11c8:	27a4001c 	addiu	a0,sp,28
    11cc:	0c000000 	jal	0 <Gfx_SetFog>
    11d0:	24070711 	li	a3,1809
    11d4:	8fae0030 	lw	t6,48(sp)
    11d8:	0c000000 	jal	0 <Gfx_SetFog>
    11dc:	8dc402b0 	lw	a0,688(t6)
    11e0:	8fa50030 	lw	a1,48(sp)
    11e4:	3c060000 	lui	a2,0x0
    11e8:	24c602ec 	addiu	a2,a2,748
    11ec:	27a4001c 	addiu	a0,sp,28
    11f0:	24070713 	li	a3,1811
    11f4:	0c000000 	jal	0 <Gfx_SetFog>
    11f8:	aca202b0 	sw	v0,688(a1)
    11fc:	8fbf0014 	lw	ra,20(sp)
    1200:	27bd0030 	addiu	sp,sp,48
    1204:	03e00008 	jr	ra
    1208:	00000000 	nop

0000120c <func_8009457C>:
    120c:	8c830000 	lw	v1,0(a0)
    1210:	3c0f0000 	lui	t7,0x0
    1214:	25ef0750 	addiu	t7,t7,1872
    1218:	3c0ede00 	lui	t6,0xde00
    121c:	ac6e0000 	sw	t6,0(v1)
    1220:	ac6f0004 	sw	t7,4(v1)
    1224:	24620008 	addiu	v0,v1,8
    1228:	03e00008 	jr	ra
    122c:	ac820000 	sw	v0,0(a0)

00001230 <func_800945A0>:
    1230:	27bdffc8 	addiu	sp,sp,-56
    1234:	afbf0014 	sw	ra,20(sp)
    1238:	00802825 	move	a1,a0
    123c:	3c060000 	lui	a2,0x0
    1240:	24c602f8 	addiu	a2,a2,760
    1244:	afa50038 	sw	a1,56(sp)
    1248:	27a40024 	addiu	a0,sp,36
    124c:	0c000000 	jal	0 <Gfx_SetFog>
    1250:	2407072d 	li	a3,1837
    1254:	8fa50038 	lw	a1,56(sp)
    1258:	3c180000 	lui	t8,0x0
    125c:	27180780 	addiu	t8,t8,1920
    1260:	8ca302c0 	lw	v1,704(a1)
    1264:	3c0fde00 	lui	t7,0xde00
    1268:	3c060000 	lui	a2,0x0
    126c:	246e0008 	addiu	t6,v1,8
    1270:	acae02c0 	sw	t6,704(a1)
    1274:	24c60304 	addiu	a2,a2,772
    1278:	27a40024 	addiu	a0,sp,36
    127c:	24070731 	li	a3,1841
    1280:	ac780004 	sw	t8,4(v1)
    1284:	0c000000 	jal	0 <Gfx_SetFog>
    1288:	ac6f0000 	sw	t7,0(v1)
    128c:	8fbf0014 	lw	ra,20(sp)
    1290:	27bd0038 	addiu	sp,sp,56
    1294:	03e00008 	jr	ra
    1298:	00000000 	nop

0000129c <func_8009460C>:
    129c:	27bdffc8 	addiu	sp,sp,-56
    12a0:	afbf0014 	sw	ra,20(sp)
    12a4:	00802825 	move	a1,a0
    12a8:	3c060000 	lui	a2,0x0
    12ac:	24c60310 	addiu	a2,a2,784
    12b0:	afa50038 	sw	a1,56(sp)
    12b4:	27a40024 	addiu	a0,sp,36
    12b8:	0c000000 	jal	0 <Gfx_SetFog>
    12bc:	2407073d 	li	a3,1853
    12c0:	8fa50038 	lw	a1,56(sp)
    12c4:	3c180000 	lui	t8,0x0
    12c8:	271807b0 	addiu	t8,t8,1968
    12cc:	8ca302c0 	lw	v1,704(a1)
    12d0:	3c0fde00 	lui	t7,0xde00
    12d4:	3c060000 	lui	a2,0x0
    12d8:	246e0008 	addiu	t6,v1,8
    12dc:	acae02c0 	sw	t6,704(a1)
    12e0:	24c6031c 	addiu	a2,a2,796
    12e4:	27a40024 	addiu	a0,sp,36
    12e8:	24070741 	li	a3,1857
    12ec:	ac780004 	sw	t8,4(v1)
    12f0:	0c000000 	jal	0 <Gfx_SetFog>
    12f4:	ac6f0000 	sw	t7,0(v1)
    12f8:	8fbf0014 	lw	ra,20(sp)
    12fc:	27bd0038 	addiu	sp,sp,56
    1300:	03e00008 	jr	ra
    1304:	00000000 	nop

00001308 <func_80094678>:
    1308:	27bdffc8 	addiu	sp,sp,-56
    130c:	afbf0014 	sw	ra,20(sp)
    1310:	00802825 	move	a1,a0
    1314:	3c060000 	lui	a2,0x0
    1318:	24c60328 	addiu	a2,a2,808
    131c:	afa50038 	sw	a1,56(sp)
    1320:	27a40024 	addiu	a0,sp,36
    1324:	0c000000 	jal	0 <Gfx_SetFog>
    1328:	2407074d 	li	a3,1869
    132c:	8fa50038 	lw	a1,56(sp)
    1330:	3c180000 	lui	t8,0x0
    1334:	271808d0 	addiu	t8,t8,2256
    1338:	8ca302d0 	lw	v1,720(a1)
    133c:	3c0fde00 	lui	t7,0xde00
    1340:	3c060000 	lui	a2,0x0
    1344:	246e0008 	addiu	t6,v1,8
    1348:	acae02d0 	sw	t6,720(a1)
    134c:	24c60334 	addiu	a2,a2,820
    1350:	27a40024 	addiu	a0,sp,36
    1354:	24070751 	li	a3,1873
    1358:	ac780004 	sw	t8,4(v1)
    135c:	0c000000 	jal	0 <Gfx_SetFog>
    1360:	ac6f0000 	sw	t7,0(v1)
    1364:	8fbf0014 	lw	ra,20(sp)
    1368:	27bd0038 	addiu	sp,sp,56
    136c:	03e00008 	jr	ra
    1370:	00000000 	nop

00001374 <func_800946E4>:
    1374:	00801025 	move	v0,a0
    1378:	3c0f0000 	lui	t7,0x0
    137c:	25ef0c60 	addiu	t7,t7,3168
    1380:	3c0ede00 	lui	t6,0xde00
    1384:	ac4e0000 	sw	t6,0(v0)
    1388:	ac4f0004 	sw	t7,4(v0)
    138c:	24840008 	addiu	a0,a0,8
    1390:	03e00008 	jr	ra
    1394:	00801025 	move	v0,a0

00001398 <func_80094708>:
    1398:	00801025 	move	v0,a0
    139c:	3c0f0000 	lui	t7,0x0
    13a0:	25ef0c90 	addiu	t7,t7,3216
    13a4:	3c0ede00 	lui	t6,0xde00
    13a8:	ac4e0000 	sw	t6,0(v0)
    13ac:	ac4f0004 	sw	t7,4(v0)
    13b0:	24840008 	addiu	a0,a0,8
    13b4:	03e00008 	jr	ra
    13b8:	00801025 	move	v0,a0

000013bc <func_8009472C>:
    13bc:	00801025 	move	v0,a0
    13c0:	3c0f0000 	lui	t7,0x0
    13c4:	25ef0cc0 	addiu	t7,t7,3264
    13c8:	3c0ede00 	lui	t6,0xde00
    13cc:	ac4e0000 	sw	t6,0(v0)
    13d0:	ac4f0004 	sw	t7,4(v0)
    13d4:	24840008 	addiu	a0,a0,8
    13d8:	00801025 	move	v0,a0
    13dc:	3c18e300 	lui	t8,0xe300
    13e0:	37181801 	ori	t8,t8,0x1801
    13e4:	241900c0 	li	t9,192
    13e8:	ac590004 	sw	t9,4(v0)
    13ec:	ac580000 	sw	t8,0(v0)
    13f0:	24840008 	addiu	a0,a0,8
    13f4:	03e00008 	jr	ra
    13f8:	00801025 	move	v0,a0

000013fc <func_8009476C>:
    13fc:	00801025 	move	v0,a0
    1400:	3c0f0000 	lui	t7,0x0
    1404:	25ef0cf0 	addiu	t7,t7,3312
    1408:	3c0ede00 	lui	t6,0xde00
    140c:	ac4e0000 	sw	t6,0(v0)
    1410:	ac4f0004 	sw	t7,4(v0)
    1414:	24840008 	addiu	a0,a0,8
    1418:	00801025 	move	v0,a0
    141c:	3c18e300 	lui	t8,0xe300
    1420:	37181801 	ori	t8,t8,0x1801
    1424:	241900c0 	li	t9,192
    1428:	ac590004 	sw	t9,4(v0)
    142c:	ac580000 	sw	t8,0(v0)
    1430:	24840008 	addiu	a0,a0,8
    1434:	03e00008 	jr	ra
    1438:	00801025 	move	v0,a0

0000143c <func_800947AC>:
    143c:	00801025 	move	v0,a0
    1440:	3c0f0000 	lui	t7,0x0
    1444:	25ef0c30 	addiu	t7,t7,3120
    1448:	3c0ede00 	lui	t6,0xde00
    144c:	ac4e0000 	sw	t6,0(v0)
    1450:	ac4f0004 	sw	t7,4(v0)
    1454:	24840008 	addiu	a0,a0,8
    1458:	00801825 	move	v1,a0
    145c:	3c02e300 	lui	v0,0xe300
    1460:	34421801 	ori	v0,v0,0x1801
    1464:	240600c0 	li	a2,192
    1468:	ac660004 	sw	a2,4(v1)
    146c:	ac620000 	sw	v0,0(v1)
    1470:	3c050000 	lui	a1,0x0
    1474:	8ca50000 	lw	a1,0(a1)
    1478:	24070001 	li	a3,1
    147c:	3c18e300 	lui	t8,0xe300
    1480:	84a30ffe 	lh	v1,4094(a1)
    1484:	24840008 	addiu	a0,a0,8
    1488:	37181a01 	ori	t8,t8,0x1a01
    148c:	1067000c 	beq	v1,a3,14c0 <func_800947AC+0x84>
    1490:	24190030 	li	t9,48
    1494:	24010002 	li	at,2
    1498:	10610010 	beq	v1,at,14dc <func_800947AC+0xa0>
    149c:	3c08e300 	lui	t0,0xe300
    14a0:	24010003 	li	at,3
    14a4:	10610015 	beq	v1,at,14fc <func_800947AC+0xc0>
    14a8:	3c09e300 	lui	t1,0xe300
    14ac:	24010004 	li	at,4
    14b0:	1061001b 	beq	v1,at,1520 <func_800947AC+0xe4>
    14b4:	3c0be300 	lui	t3,0xe300
    14b8:	10000022 	b	1544 <func_800947AC+0x108>
    14bc:	84a31000 	lh	v1,4096(a1)
    14c0:	00801825 	move	v1,a0
    14c4:	ac780000 	sw	t8,0(v1)
    14c8:	ac790004 	sw	t9,4(v1)
    14cc:	3c050000 	lui	a1,0x0
    14d0:	8ca50000 	lw	a1,0(a1)
    14d4:	1000001a 	b	1540 <func_800947AC+0x104>
    14d8:	24840008 	addiu	a0,a0,8
    14dc:	00801825 	move	v1,a0
    14e0:	35081a01 	ori	t0,t0,0x1a01
    14e4:	ac680000 	sw	t0,0(v1)
    14e8:	ac600004 	sw	zero,4(v1)
    14ec:	3c050000 	lui	a1,0x0
    14f0:	8ca50000 	lw	a1,0(a1)
    14f4:	10000012 	b	1540 <func_800947AC+0x104>
    14f8:	24840008 	addiu	a0,a0,8
    14fc:	00801825 	move	v1,a0
    1500:	35291a01 	ori	t1,t1,0x1a01
    1504:	240a0010 	li	t2,16
    1508:	ac6a0004 	sw	t2,4(v1)
    150c:	ac690000 	sw	t1,0(v1)
    1510:	3c050000 	lui	a1,0x0
    1514:	8ca50000 	lw	a1,0(a1)
    1518:	10000009 	b	1540 <func_800947AC+0x104>
    151c:	24840008 	addiu	a0,a0,8
    1520:	00801825 	move	v1,a0
    1524:	356b1a01 	ori	t3,t3,0x1a01
    1528:	240c0020 	li	t4,32
    152c:	ac6c0004 	sw	t4,4(v1)
    1530:	ac6b0000 	sw	t3,0(v1)
    1534:	3c050000 	lui	a1,0x0
    1538:	8ca50000 	lw	a1,0(a1)
    153c:	24840008 	addiu	a0,a0,8
    1540:	84a31000 	lh	v1,4096(a1)
    1544:	24010002 	li	at,2
    1548:	5067000b 	beql	v1,a3,1578 <func_800947AC+0x13c>
    154c:	00801825 	move	v1,a0
    1550:	1061000e 	beq	v1,at,158c <func_800947AC+0x150>
    1554:	24010003 	li	at,3
    1558:	10610012 	beq	v1,at,15a4 <func_800947AC+0x168>
    155c:	240d0040 	li	t5,64
    1560:	24010004 	li	at,4
    1564:	10610015 	beq	v1,at,15bc <func_800947AC+0x180>
    1568:	240e0080 	li	t6,128
    156c:	03e00008 	jr	ra
    1570:	00801025 	move	v0,a0
    1574:	00801825 	move	v1,a0
    1578:	ac620000 	sw	v0,0(v1)
    157c:	24840008 	addiu	a0,a0,8
    1580:	ac660004 	sw	a2,4(v1)
    1584:	03e00008 	jr	ra
    1588:	00801025 	move	v0,a0
    158c:	00801825 	move	v1,a0
    1590:	ac620000 	sw	v0,0(v1)
    1594:	24840008 	addiu	a0,a0,8
    1598:	ac600004 	sw	zero,4(v1)
    159c:	03e00008 	jr	ra
    15a0:	00801025 	move	v0,a0
    15a4:	00801825 	move	v1,a0
    15a8:	ac620000 	sw	v0,0(v1)
    15ac:	24840008 	addiu	a0,a0,8
    15b0:	ac6d0004 	sw	t5,4(v1)
    15b4:	03e00008 	jr	ra
    15b8:	00801025 	move	v0,a0
    15bc:	00801825 	move	v1,a0
    15c0:	ac620000 	sw	v0,0(v1)
    15c4:	ac6e0004 	sw	t6,4(v1)
    15c8:	24840008 	addiu	a0,a0,8
    15cc:	03e00008 	jr	ra
    15d0:	00801025 	move	v0,a0

000015d4 <func_80094944>:
    15d4:	00801025 	move	v0,a0
    15d8:	3c0f0000 	lui	t7,0x0
    15dc:	25ef0d20 	addiu	t7,t7,3360
    15e0:	3c0ede00 	lui	t6,0xde00
    15e4:	ac4e0000 	sw	t6,0(v0)
    15e8:	ac4f0004 	sw	t7,4(v0)
    15ec:	24840008 	addiu	a0,a0,8
    15f0:	03e00008 	jr	ra
    15f4:	00801025 	move	v0,a0

000015f8 <func_80094968>:
    15f8:	00801025 	move	v0,a0
    15fc:	3c0f0000 	lui	t7,0x0
    1600:	25ef03c0 	addiu	t7,t7,960
    1604:	3c0ede00 	lui	t6,0xde00
    1608:	ac4e0000 	sw	t6,0(v0)
    160c:	ac4f0004 	sw	t7,4(v0)
    1610:	24840008 	addiu	a0,a0,8
    1614:	00801025 	move	v0,a0
    1618:	3c18e300 	lui	t8,0xe300
    161c:	37181801 	ori	t8,t8,0x1801
    1620:	241900c0 	li	t9,192
    1624:	ac590004 	sw	t9,4(v0)
    1628:	ac580000 	sw	t8,0(v0)
    162c:	24840008 	addiu	a0,a0,8
    1630:	03e00008 	jr	ra
    1634:	00801025 	move	v0,a0

00001638 <func_800949A8>:
    1638:	27bdffc8 	addiu	sp,sp,-56
    163c:	afbf0014 	sw	ra,20(sp)
    1640:	00802825 	move	a1,a0
    1644:	3c060000 	lui	a2,0x0
    1648:	24c60340 	addiu	a2,a2,832
    164c:	afa50038 	sw	a1,56(sp)
    1650:	27a40024 	addiu	a0,sp,36
    1654:	0c000000 	jal	0 <Gfx_SetFog>
    1658:	240707a1 	li	a3,1953
    165c:	8fa50038 	lw	a1,56(sp)
    1660:	3c180000 	lui	t8,0x0
    1664:	271807e0 	addiu	t8,t8,2016
    1668:	8ca302c0 	lw	v1,704(a1)
    166c:	3c0fde00 	lui	t7,0xde00
    1670:	3c060000 	lui	a2,0x0
    1674:	246e0008 	addiu	t6,v1,8
    1678:	acae02c0 	sw	t6,704(a1)
    167c:	24c6034c 	addiu	a2,a2,844
    1680:	27a40024 	addiu	a0,sp,36
    1684:	240707a5 	li	a3,1957
    1688:	ac780004 	sw	t8,4(v1)
    168c:	0c000000 	jal	0 <Gfx_SetFog>
    1690:	ac6f0000 	sw	t7,0(v1)
    1694:	8fbf0014 	lw	ra,20(sp)
    1698:	27bd0038 	addiu	sp,sp,56
    169c:	03e00008 	jr	ra
    16a0:	00000000 	nop

000016a4 <func_80094A14>:
    16a4:	27bdffc8 	addiu	sp,sp,-56
    16a8:	afbf0014 	sw	ra,20(sp)
    16ac:	00802825 	move	a1,a0
    16b0:	3c060000 	lui	a2,0x0
    16b4:	24c60358 	addiu	a2,a2,856
    16b8:	afa50038 	sw	a1,56(sp)
    16bc:	27a40024 	addiu	a0,sp,36
    16c0:	0c000000 	jal	0 <Gfx_SetFog>
    16c4:	240707ac 	li	a3,1964
    16c8:	8fa50038 	lw	a1,56(sp)
    16cc:	3c180000 	lui	t8,0x0
    16d0:	271807e0 	addiu	t8,t8,2016
    16d4:	8ca302b0 	lw	v1,688(a1)
    16d8:	3c0fde00 	lui	t7,0xde00
    16dc:	3c060000 	lui	a2,0x0
    16e0:	246e0008 	addiu	t6,v1,8
    16e4:	acae02b0 	sw	t6,688(a1)
    16e8:	24c60364 	addiu	a2,a2,868
    16ec:	27a40024 	addiu	a0,sp,36
    16f0:	240707b0 	li	a3,1968
    16f4:	ac780004 	sw	t8,4(v1)
    16f8:	0c000000 	jal	0 <Gfx_SetFog>
    16fc:	ac6f0000 	sw	t7,0(v1)
    1700:	8fbf0014 	lw	ra,20(sp)
    1704:	27bd0038 	addiu	sp,sp,56
    1708:	03e00008 	jr	ra
    170c:	00000000 	nop

00001710 <func_80094A80>:
    1710:	27bdffc8 	addiu	sp,sp,-56
    1714:	afbf0014 	sw	ra,20(sp)
    1718:	00802825 	move	a1,a0
    171c:	3c060000 	lui	a2,0x0
    1720:	24c60370 	addiu	a2,a2,880
    1724:	afa50038 	sw	a1,56(sp)
    1728:	27a40024 	addiu	a0,sp,36
    172c:	0c000000 	jal	0 <Gfx_SetFog>
    1730:	240707c8 	li	a3,1992
    1734:	8fa50038 	lw	a1,56(sp)
    1738:	3c180000 	lui	t8,0x0
    173c:	27180900 	addiu	t8,t8,2304
    1740:	8ca302c0 	lw	v1,704(a1)
    1744:	3c0fde00 	lui	t7,0xde00
    1748:	3c060000 	lui	a2,0x0
    174c:	246e0008 	addiu	t6,v1,8
    1750:	acae02c0 	sw	t6,704(a1)
    1754:	24c6037c 	addiu	a2,a2,892
    1758:	27a40024 	addiu	a0,sp,36
    175c:	240707cc 	li	a3,1996
    1760:	ac780004 	sw	t8,4(v1)
    1764:	0c000000 	jal	0 <Gfx_SetFog>
    1768:	ac6f0000 	sw	t7,0(v1)
    176c:	8fbf0014 	lw	ra,20(sp)
    1770:	27bd0038 	addiu	sp,sp,56
    1774:	03e00008 	jr	ra
    1778:	00000000 	nop

0000177c <func_80094AEC>:
    177c:	27bdffc8 	addiu	sp,sp,-56
    1780:	afbf0014 	sw	ra,20(sp)
    1784:	00802825 	move	a1,a0
    1788:	3c060000 	lui	a2,0x0
    178c:	24c60388 	addiu	a2,a2,904
    1790:	afa50038 	sw	a1,56(sp)
    1794:	27a40024 	addiu	a0,sp,36
    1798:	0c000000 	jal	0 <Gfx_SetFog>
    179c:	240707d8 	li	a3,2008
    17a0:	8fa50038 	lw	a1,56(sp)
    17a4:	3c180000 	lui	t8,0x0
    17a8:	27180930 	addiu	t8,t8,2352
    17ac:	8ca302d0 	lw	v1,720(a1)
    17b0:	3c0fde00 	lui	t7,0xde00
    17b4:	3c060000 	lui	a2,0x0
    17b8:	246e0008 	addiu	t6,v1,8
    17bc:	acae02d0 	sw	t6,720(a1)
    17c0:	24c60394 	addiu	a2,a2,916
    17c4:	27a40024 	addiu	a0,sp,36
    17c8:	240707dc 	li	a3,2012
    17cc:	ac780004 	sw	t8,4(v1)
    17d0:	0c000000 	jal	0 <Gfx_SetFog>
    17d4:	ac6f0000 	sw	t7,0(v1)
    17d8:	8fbf0014 	lw	ra,20(sp)
    17dc:	27bd0038 	addiu	sp,sp,56
    17e0:	03e00008 	jr	ra
    17e4:	00000000 	nop

000017e8 <func_80094B58>:
    17e8:	27bdffc8 	addiu	sp,sp,-56
    17ec:	afbf0014 	sw	ra,20(sp)
    17f0:	00802825 	move	a1,a0
    17f4:	3c060000 	lui	a2,0x0
    17f8:	24c603a0 	addiu	a2,a2,928
    17fc:	afa50038 	sw	a1,56(sp)
    1800:	27a40024 	addiu	a0,sp,36
    1804:	0c000000 	jal	0 <Gfx_SetFog>
    1808:	240707e8 	li	a3,2024
    180c:	8fa50038 	lw	a1,56(sp)
    1810:	3c180000 	lui	t8,0x0
    1814:	27180510 	addiu	t8,t8,1296
    1818:	8ca302d0 	lw	v1,720(a1)
    181c:	3c0fde00 	lui	t7,0xde00
    1820:	3c060000 	lui	a2,0x0
    1824:	246e0008 	addiu	t6,v1,8
    1828:	acae02d0 	sw	t6,720(a1)
    182c:	24c603ac 	addiu	a2,a2,940
    1830:	27a40024 	addiu	a0,sp,36
    1834:	240707ec 	li	a3,2028
    1838:	ac780004 	sw	t8,4(v1)
    183c:	0c000000 	jal	0 <Gfx_SetFog>
    1840:	ac6f0000 	sw	t7,0(v1)
    1844:	8fbf0014 	lw	ra,20(sp)
    1848:	27bd0038 	addiu	sp,sp,56
    184c:	03e00008 	jr	ra
    1850:	00000000 	nop

00001854 <func_80094BC4>:
    1854:	27bdffc8 	addiu	sp,sp,-56
    1858:	afbf0014 	sw	ra,20(sp)
    185c:	00802825 	move	a1,a0
    1860:	3c060000 	lui	a2,0x0
    1864:	24c603b8 	addiu	a2,a2,952
    1868:	afa50038 	sw	a1,56(sp)
    186c:	27a40024 	addiu	a0,sp,36
    1870:	0c000000 	jal	0 <Gfx_SetFog>
    1874:	240707f8 	li	a3,2040
    1878:	8fa50038 	lw	a1,56(sp)
    187c:	3c180000 	lui	t8,0x0
    1880:	27180b40 	addiu	t8,t8,2880
    1884:	8ca302d0 	lw	v1,720(a1)
    1888:	3c0fde00 	lui	t7,0xde00
    188c:	3c08e300 	lui	t0,0xe300
    1890:	246e0008 	addiu	t6,v1,8
    1894:	acae02d0 	sw	t6,720(a1)
    1898:	ac780004 	sw	t8,4(v1)
    189c:	ac6f0000 	sw	t7,0(v1)
    18a0:	8ca302d0 	lw	v1,720(a1)
    18a4:	35081801 	ori	t0,t0,0x1801
    18a8:	240900c0 	li	t1,192
    18ac:	24790008 	addiu	t9,v1,8
    18b0:	3c060000 	lui	a2,0x0
    18b4:	acb902d0 	sw	t9,720(a1)
    18b8:	24c603c4 	addiu	a2,a2,964
    18bc:	27a40024 	addiu	a0,sp,36
    18c0:	240707fb 	li	a3,2043
    18c4:	ac690004 	sw	t1,4(v1)
    18c8:	0c000000 	jal	0 <Gfx_SetFog>
    18cc:	ac680000 	sw	t0,0(v1)
    18d0:	8fbf0014 	lw	ra,20(sp)
    18d4:	27bd0038 	addiu	sp,sp,56
    18d8:	03e00008 	jr	ra
    18dc:	00000000 	nop

000018e0 <func_80094C50>:
    18e0:	27bdffc8 	addiu	sp,sp,-56
    18e4:	afbf0014 	sw	ra,20(sp)
    18e8:	00802825 	move	a1,a0
    18ec:	3c060000 	lui	a2,0x0
    18f0:	24c603d0 	addiu	a2,a2,976
    18f4:	afa50038 	sw	a1,56(sp)
    18f8:	27a40024 	addiu	a0,sp,36
    18fc:	0c000000 	jal	0 <Gfx_SetFog>
    1900:	24070808 	li	a3,2056
    1904:	8fa50038 	lw	a1,56(sp)
    1908:	3c180000 	lui	t8,0x0
    190c:	27180b70 	addiu	t8,t8,2928
    1910:	8ca302d0 	lw	v1,720(a1)
    1914:	3c0fde00 	lui	t7,0xde00
    1918:	3c060000 	lui	a2,0x0
    191c:	246e0008 	addiu	t6,v1,8
    1920:	acae02d0 	sw	t6,720(a1)
    1924:	24c603dc 	addiu	a2,a2,988
    1928:	27a40024 	addiu	a0,sp,36
    192c:	2407080a 	li	a3,2058
    1930:	ac780004 	sw	t8,4(v1)
    1934:	0c000000 	jal	0 <Gfx_SetFog>
    1938:	ac6f0000 	sw	t7,0(v1)
    193c:	8fbf0014 	lw	ra,20(sp)
    1940:	27bd0038 	addiu	sp,sp,56
    1944:	03e00008 	jr	ra
    1948:	00000000 	nop

0000194c <func_80094CBC>:
    194c:	27bdffc8 	addiu	sp,sp,-56
    1950:	afbf0014 	sw	ra,20(sp)
    1954:	00802825 	move	a1,a0
    1958:	3c060000 	lui	a2,0x0
    195c:	24c603e8 	addiu	a2,a2,1000
    1960:	afa50038 	sw	a1,56(sp)
    1964:	27a40024 	addiu	a0,sp,36
    1968:	0c000000 	jal	0 <Gfx_SetFog>
    196c:	24070826 	li	a3,2086
    1970:	8fa50038 	lw	a1,56(sp)
    1974:	3c180000 	lui	t8,0x0
    1978:	27180a80 	addiu	t8,t8,2688
    197c:	8ca302c0 	lw	v1,704(a1)
    1980:	3c0fde00 	lui	t7,0xde00
    1984:	3c060000 	lui	a2,0x0
    1988:	246e0008 	addiu	t6,v1,8
    198c:	acae02c0 	sw	t6,704(a1)
    1990:	24c603f4 	addiu	a2,a2,1012
    1994:	27a40024 	addiu	a0,sp,36
    1998:	2407082a 	li	a3,2090
    199c:	ac780004 	sw	t8,4(v1)
    19a0:	0c000000 	jal	0 <Gfx_SetFog>
    19a4:	ac6f0000 	sw	t7,0(v1)
    19a8:	8fbf0014 	lw	ra,20(sp)
    19ac:	27bd0038 	addiu	sp,sp,56
    19b0:	03e00008 	jr	ra
    19b4:	00000000 	nop

000019b8 <func_80094D28>:
    19b8:	8c830000 	lw	v1,0(a0)
    19bc:	3c0f0000 	lui	t7,0x0
    19c0:	25ef0a80 	addiu	t7,t7,2688
    19c4:	3c0ede00 	lui	t6,0xde00
    19c8:	ac6e0000 	sw	t6,0(v1)
    19cc:	ac6f0004 	sw	t7,4(v1)
    19d0:	24620008 	addiu	v0,v1,8
    19d4:	03e00008 	jr	ra
    19d8:	ac820000 	sw	v0,0(a0)

000019dc <func_80094D4C>:
    19dc:	27bdffc8 	addiu	sp,sp,-56
    19e0:	afbf0014 	sw	ra,20(sp)
    19e4:	00802825 	move	a1,a0
    19e8:	3c060000 	lui	a2,0x0
    19ec:	24c60400 	addiu	a2,a2,1024
    19f0:	afa50038 	sw	a1,56(sp)
    19f4:	27a40024 	addiu	a0,sp,36
    19f8:	0c000000 	jal	0 <Gfx_SetFog>
    19fc:	24070840 	li	a3,2112
    1a00:	8fa50038 	lw	a1,56(sp)
    1a04:	3c180000 	lui	t8,0x0
    1a08:	27180b10 	addiu	t8,t8,2832
    1a0c:	8ca302c0 	lw	v1,704(a1)
    1a10:	3c0fde00 	lui	t7,0xde00
    1a14:	3c060000 	lui	a2,0x0
    1a18:	246e0008 	addiu	t6,v1,8
    1a1c:	acae02c0 	sw	t6,704(a1)
    1a20:	24c6040c 	addiu	a2,a2,1036
    1a24:	27a40024 	addiu	a0,sp,36
    1a28:	24070844 	li	a3,2116
    1a2c:	ac780004 	sw	t8,4(v1)
    1a30:	0c000000 	jal	0 <Gfx_SetFog>
    1a34:	ac6f0000 	sw	t7,0(v1)
    1a38:	8fbf0014 	lw	ra,20(sp)
    1a3c:	27bd0038 	addiu	sp,sp,56
    1a40:	03e00008 	jr	ra
    1a44:	00000000 	nop

00001a48 <Gfx_BranchTexScroll>:
    1a48:	27bdffe8 	addiu	sp,sp,-24
    1a4c:	afbf0014 	sw	ra,20(sp)
    1a50:	afa5001c 	sw	a1,28(sp)
    1a54:	afa60020 	sw	a2,32(sp)
    1a58:	afa70024 	sw	a3,36(sp)
    1a5c:	0c000000 	jal	0 <Gfx_SetFog>
    1a60:	24050018 	li	a1,24
    1a64:	8fa4001c 	lw	a0,28(sp)
    1a68:	8fa50020 	lw	a1,32(sp)
    1a6c:	3c01f200 	lui	at,0xf200
    1a70:	308f0fff 	andi	t7,a0,0xfff
    1a74:	000fc300 	sll	t8,t7,0xc
    1a78:	0301c825 	or	t9,t8,at
    1a7c:	30a80fff 	andi	t0,a1,0xfff
    1a80:	3c0ee800 	lui	t6,0xe800
    1a84:	03284825 	or	t1,t9,t0
    1a88:	ac4e0000 	sw	t6,0(v0)
    1a8c:	ac400004 	sw	zero,4(v0)
    1a90:	ac490008 	sw	t1,8(v0)
    1a94:	8faa0024 	lw	t2,36(sp)
    1a98:	8fb80028 	lw	t8,40(sp)
    1a9c:	ac400014 	sw	zero,20(v0)
    1aa0:	254bffff 	addiu	t3,t2,-1
    1aa4:	000b6080 	sll	t4,t3,0x2
    1aa8:	2719ffff 	addiu	t9,t8,-1
    1aac:	00194080 	sll	t0,t9,0x2
    1ab0:	01846821 	addu	t5,t4,a0
    1ab4:	31ae0fff 	andi	t6,t5,0xfff
    1ab8:	00a84821 	addu	t1,a1,t0
    1abc:	312a0fff 	andi	t2,t1,0xfff
    1ac0:	000e7b00 	sll	t7,t6,0xc
    1ac4:	01ea5825 	or	t3,t7,t2
    1ac8:	3c0cdf00 	lui	t4,0xdf00
    1acc:	ac4b000c 	sw	t3,12(v0)
    1ad0:	ac4c0010 	sw	t4,16(v0)
    1ad4:	8fbf0014 	lw	ra,20(sp)
    1ad8:	27bd0018 	addiu	sp,sp,24
    1adc:	03e00008 	jr	ra
    1ae0:	00000000 	nop

00001ae4 <func_80094E54>:
    1ae4:	27bdffe0 	addiu	sp,sp,-32
    1ae8:	afbf001c 	sw	ra,28(sp)
    1aec:	afa00010 	sw	zero,16(sp)
    1af0:	0c000000 	jal	0 <Gfx_SetFog>
    1af4:	00003825 	move	a3,zero
    1af8:	8fbf001c 	lw	ra,28(sp)
    1afc:	27bd0020 	addiu	sp,sp,32
    1b00:	03e00008 	jr	ra
    1b04:	00000000 	nop

00001b08 <func_80094E78>:
    1b08:	27bdffe0 	addiu	sp,sp,-32
    1b0c:	afbf001c 	sw	ra,28(sp)
    1b10:	afa00010 	sw	zero,16(sp)
    1b14:	0c000000 	jal	0 <Gfx_SetFog>
    1b18:	00003825 	move	a3,zero
    1b1c:	8fbf001c 	lw	ra,28(sp)
    1b20:	27bd0020 	addiu	sp,sp,32
    1b24:	03e00008 	jr	ra
    1b28:	00000000 	nop

00001b2c <Gfx_TexScroll>:
    1b2c:	27bdffe8 	addiu	sp,sp,-24
    1b30:	afbf0014 	sw	ra,20(sp)
    1b34:	afa5001c 	sw	a1,28(sp)
    1b38:	afa70024 	sw	a3,36(sp)
    1b3c:	24050018 	li	a1,24
    1b40:	0c000000 	jal	0 <Gfx_SetFog>
    1b44:	afa60020 	sw	a2,32(sp)
    1b48:	8fa3001c 	lw	v1,28(sp)
    1b4c:	8fa60020 	lw	a2,32(sp)
    1b50:	3c01f200 	lui	at,0xf200
    1b54:	306307ff 	andi	v1,v1,0x7ff
    1b58:	306f0fff 	andi	t7,v1,0xfff
    1b5c:	000fc300 	sll	t8,t7,0xc
    1b60:	30c607ff 	andi	a2,a2,0x7ff
    1b64:	30c80fff 	andi	t0,a2,0xfff
    1b68:	0301c825 	or	t9,t8,at
    1b6c:	3c0ee800 	lui	t6,0xe800
    1b70:	03284825 	or	t1,t9,t0
    1b74:	ac4e0000 	sw	t6,0(v0)
    1b78:	ac400004 	sw	zero,4(v0)
    1b7c:	ac490008 	sw	t1,8(v0)
    1b80:	8faa0024 	lw	t2,36(sp)
    1b84:	8fb80028 	lw	t8,40(sp)
    1b88:	ac400014 	sw	zero,20(v0)
    1b8c:	254bffff 	addiu	t3,t2,-1
    1b90:	000b6080 	sll	t4,t3,0x2
    1b94:	2719ffff 	addiu	t9,t8,-1
    1b98:	00194080 	sll	t0,t9,0x2
    1b9c:	01836821 	addu	t5,t4,v1
    1ba0:	31ae0fff 	andi	t6,t5,0xfff
    1ba4:	00c84821 	addu	t1,a2,t0
    1ba8:	312a0fff 	andi	t2,t1,0xfff
    1bac:	000e7b00 	sll	t7,t6,0xc
    1bb0:	01ea5825 	or	t3,t7,t2
    1bb4:	3c0cdf00 	lui	t4,0xdf00
    1bb8:	ac4b000c 	sw	t3,12(v0)
    1bbc:	ac4c0010 	sw	t4,16(v0)
    1bc0:	8fbf0014 	lw	ra,20(sp)
    1bc4:	27bd0018 	addiu	sp,sp,24
    1bc8:	03e00008 	jr	ra
    1bcc:	00000000 	nop

00001bd0 <Gfx_TwoTexScroll>:
    1bd0:	27bdffe8 	addiu	sp,sp,-24
    1bd4:	afbf0014 	sw	ra,20(sp)
    1bd8:	afa5001c 	sw	a1,28(sp)
    1bdc:	24050028 	li	a1,40
    1be0:	afa60020 	sw	a2,32(sp)
    1be4:	0c000000 	jal	0 <Gfx_SetFog>
    1be8:	afa70024 	sw	a3,36(sp)
    1bec:	8fa60020 	lw	a2,32(sp)
    1bf0:	8fa70024 	lw	a3,36(sp)
    1bf4:	8fa30034 	lw	v1,52(sp)
    1bf8:	30c607ff 	andi	a2,a2,0x7ff
    1bfc:	30ce0fff 	andi	t6,a2,0xfff
    1c00:	8fa40038 	lw	a0,56(sp)
    1c04:	000e7b00 	sll	t7,t6,0xc
    1c08:	3c09f200 	lui	t1,0xf200
    1c0c:	30e707ff 	andi	a3,a3,0x7ff
    1c10:	30f90fff 	andi	t9,a3,0xfff
    1c14:	01e9c025 	or	t8,t7,t1
    1c18:	3c08e800 	lui	t0,0xe800
    1c1c:	03195025 	or	t2,t8,t9
    1c20:	ac480000 	sw	t0,0(v0)
    1c24:	ac400004 	sw	zero,4(v0)
    1c28:	ac4a0008 	sw	t2,8(v0)
    1c2c:	8fae0028 	lw	t6,40(sp)
    1c30:	8fab001c 	lw	t3,28(sp)
    1c34:	306307ff 	andi	v1,v1,0x7ff
    1c38:	25cfffff 	addiu	t7,t6,-1
    1c3c:	8fae002c 	lw	t6,44(sp)
    1c40:	000fc080 	sll	t8,t7,0x2
    1c44:	00d8c821 	addu	t9,a2,t8
    1c48:	316c0007 	andi	t4,t3,0x7
    1c4c:	332a0fff 	andi	t2,t9,0xfff
    1c50:	000a5b00 	sll	t3,t2,0xc
    1c54:	000c6e00 	sll	t5,t4,0x18
    1c58:	25cfffff 	addiu	t7,t6,-1
    1c5c:	000fc080 	sll	t8,t7,0x2
    1c60:	01ab6025 	or	t4,t5,t3
    1c64:	00f8c821 	addu	t9,a3,t8
    1c68:	306b0fff 	andi	t3,v1,0xfff
    1c6c:	332a0fff 	andi	t2,t9,0xfff
    1c70:	000b7300 	sll	t6,t3,0xc
    1c74:	308407ff 	andi	a0,a0,0x7ff
    1c78:	30980fff 	andi	t8,a0,0xfff
    1c7c:	01c97825 	or	t7,t6,t1
    1c80:	018a6825 	or	t5,t4,t2
    1c84:	01f8c825 	or	t9,t7,t8
    1c88:	ac4d000c 	sw	t5,12(v0)
    1c8c:	ac400014 	sw	zero,20(v0)
    1c90:	ac480010 	sw	t0,16(v0)
    1c94:	ac590018 	sw	t9,24(v0)
    1c98:	8fab003c 	lw	t3,60(sp)
    1c9c:	8fac0030 	lw	t4,48(sp)
    1ca0:	256effff 	addiu	t6,t3,-1
    1ca4:	8fab0040 	lw	t3,64(sp)
    1ca8:	000e7880 	sll	t7,t6,0x2
    1cac:	006fc021 	addu	t8,v1,t7
    1cb0:	318a0007 	andi	t2,t4,0x7
    1cb4:	33190fff 	andi	t9,t8,0xfff
    1cb8:	256effff 	addiu	t6,t3,-1
    1cbc:	000e7880 	sll	t7,t6,0x2
    1cc0:	00196300 	sll	t4,t9,0xc
    1cc4:	000a6e00 	sll	t5,t2,0x18
    1cc8:	01ac5025 	or	t2,t5,t4
    1ccc:	008fc021 	addu	t8,a0,t7
    1cd0:	33190fff 	andi	t9,t8,0xfff
    1cd4:	01596825 	or	t5,t2,t9
    1cd8:	3c0cdf00 	lui	t4,0xdf00
    1cdc:	ac4d001c 	sw	t5,28(v0)
    1ce0:	ac4c0020 	sw	t4,32(v0)
    1ce4:	ac400024 	sw	zero,36(v0)
    1ce8:	8fbf0014 	lw	ra,20(sp)
    1cec:	27bd0018 	addiu	sp,sp,24
    1cf0:	03e00008 	jr	ra
    1cf4:	00000000 	nop

00001cf8 <Gfx_TwoTexScrollEnvColor>:
    1cf8:	27bdffe8 	addiu	sp,sp,-24
    1cfc:	afbf0014 	sw	ra,20(sp)
    1d00:	afa5001c 	sw	a1,28(sp)
    1d04:	24050030 	li	a1,48
    1d08:	afa60020 	sw	a2,32(sp)
    1d0c:	0c000000 	jal	0 <Gfx_SetFog>
    1d10:	afa70024 	sw	a3,36(sp)
    1d14:	8fa60020 	lw	a2,32(sp)
    1d18:	8fa70024 	lw	a3,36(sp)
    1d1c:	8fa30034 	lw	v1,52(sp)
    1d20:	30c607ff 	andi	a2,a2,0x7ff
    1d24:	30ce0fff 	andi	t6,a2,0xfff
    1d28:	8fa40038 	lw	a0,56(sp)
    1d2c:	000e7b00 	sll	t7,t6,0xc
    1d30:	3c09f200 	lui	t1,0xf200
    1d34:	30e707ff 	andi	a3,a3,0x7ff
    1d38:	30f90fff 	andi	t9,a3,0xfff
    1d3c:	01e9c025 	or	t8,t7,t1
    1d40:	3c08e800 	lui	t0,0xe800
    1d44:	03195025 	or	t2,t8,t9
    1d48:	ac480000 	sw	t0,0(v0)
    1d4c:	ac400004 	sw	zero,4(v0)
    1d50:	ac4a0008 	sw	t2,8(v0)
    1d54:	8fae0028 	lw	t6,40(sp)
    1d58:	8fab001c 	lw	t3,28(sp)
    1d5c:	306307ff 	andi	v1,v1,0x7ff
    1d60:	25cfffff 	addiu	t7,t6,-1
    1d64:	8fae002c 	lw	t6,44(sp)
    1d68:	000fc080 	sll	t8,t7,0x2
    1d6c:	00d8c821 	addu	t9,a2,t8
    1d70:	316c0007 	andi	t4,t3,0x7
    1d74:	332a0fff 	andi	t2,t9,0xfff
    1d78:	000a5b00 	sll	t3,t2,0xc
    1d7c:	000c6e00 	sll	t5,t4,0x18
    1d80:	25cfffff 	addiu	t7,t6,-1
    1d84:	000fc080 	sll	t8,t7,0x2
    1d88:	01ab6025 	or	t4,t5,t3
    1d8c:	00f8c821 	addu	t9,a3,t8
    1d90:	306b0fff 	andi	t3,v1,0xfff
    1d94:	332a0fff 	andi	t2,t9,0xfff
    1d98:	000b7300 	sll	t6,t3,0xc
    1d9c:	308407ff 	andi	a0,a0,0x7ff
    1da0:	30980fff 	andi	t8,a0,0xfff
    1da4:	01c97825 	or	t7,t6,t1
    1da8:	018a6825 	or	t5,t4,t2
    1dac:	01f8c825 	or	t9,t7,t8
    1db0:	ac4d000c 	sw	t5,12(v0)
    1db4:	ac400014 	sw	zero,20(v0)
    1db8:	ac480010 	sw	t0,16(v0)
    1dbc:	ac590018 	sw	t9,24(v0)
    1dc0:	8fab003c 	lw	t3,60(sp)
    1dc4:	8fac0030 	lw	t4,48(sp)
    1dc8:	256effff 	addiu	t6,t3,-1
    1dcc:	8fab0040 	lw	t3,64(sp)
    1dd0:	000e7880 	sll	t7,t6,0x2
    1dd4:	006fc021 	addu	t8,v1,t7
    1dd8:	318a0007 	andi	t2,t4,0x7
    1ddc:	33190fff 	andi	t9,t8,0xfff
    1de0:	256effff 	addiu	t6,t3,-1
    1de4:	000e7880 	sll	t7,t6,0x2
    1de8:	00196300 	sll	t4,t9,0xc
    1dec:	000a6e00 	sll	t5,t2,0x18
    1df0:	01ac5025 	or	t2,t5,t4
    1df4:	008fc021 	addu	t8,a0,t7
    1df8:	33190fff 	andi	t9,t8,0xfff
    1dfc:	01596825 	or	t5,t2,t9
    1e00:	3c0cfb00 	lui	t4,0xfb00
    1e04:	ac4d001c 	sw	t5,28(v0)
    1e08:	ac4c0020 	sw	t4,32(v0)
    1e0c:	8fb80048 	lw	t8,72(sp)
    1e10:	8fae0044 	lw	t6,68(sp)
    1e14:	8fac004c 	lw	t4,76(sp)
    1e18:	330a00ff 	andi	t2,t8,0xff
    1e1c:	000acc00 	sll	t9,t2,0x10
    1e20:	8faa0050 	lw	t2,80(sp)
    1e24:	000e7e00 	sll	t7,t6,0x18
    1e28:	01f96825 	or	t5,t7,t9
    1e2c:	318b00ff 	andi	t3,t4,0xff
    1e30:	000b7200 	sll	t6,t3,0x8
    1e34:	01aec025 	or	t8,t5,t6
    1e38:	314f00ff 	andi	t7,t2,0xff
    1e3c:	030fc825 	or	t9,t8,t7
    1e40:	3c0cdf00 	lui	t4,0xdf00
    1e44:	ac590024 	sw	t9,36(v0)
    1e48:	ac4c0028 	sw	t4,40(v0)
    1e4c:	ac40002c 	sw	zero,44(v0)
    1e50:	8fbf0014 	lw	ra,20(sp)
    1e54:	27bd0018 	addiu	sp,sp,24
    1e58:	03e00008 	jr	ra
    1e5c:	00000000 	nop

00001e60 <Gfx_EnvColor>:
    1e60:	27bdffe8 	addiu	sp,sp,-24
    1e64:	afbf0014 	sw	ra,20(sp)
    1e68:	afa5001c 	sw	a1,28(sp)
    1e6c:	afa60020 	sw	a2,32(sp)
    1e70:	afa70024 	sw	a3,36(sp)
    1e74:	0c000000 	jal	0 <Gfx_SetFog>
    1e78:	24050010 	li	a1,16
    1e7c:	3c0efb00 	lui	t6,0xfb00
    1e80:	ac4e0000 	sw	t6,0(v0)
    1e84:	8fb8001c 	lw	t8,28(sp)
    1e88:	8fa80020 	lw	t0,32(sp)
    1e8c:	8fac0024 	lw	t4,36(sp)
    1e90:	0018ce00 	sll	t9,t8,0x18
    1e94:	8fb80028 	lw	t8,40(sp)
    1e98:	310900ff 	andi	t1,t0,0xff
    1e9c:	00095400 	sll	t2,t1,0x10
    1ea0:	318d00ff 	andi	t5,t4,0xff
    1ea4:	000d7200 	sll	t6,t5,0x8
    1ea8:	032a5825 	or	t3,t9,t2
    1eac:	016e7825 	or	t7,t3,t6
    1eb0:	330800ff 	andi	t0,t8,0xff
    1eb4:	01e84825 	or	t1,t7,t0
    1eb8:	3c19df00 	lui	t9,0xdf00
    1ebc:	ac490004 	sw	t1,4(v0)
    1ec0:	ac590008 	sw	t9,8(v0)
    1ec4:	ac40000c 	sw	zero,12(v0)
    1ec8:	8fbf0014 	lw	ra,20(sp)
    1ecc:	27bd0018 	addiu	sp,sp,24
    1ed0:	03e00008 	jr	ra
    1ed4:	00000000 	nop

00001ed8 <func_80095248>:
    1ed8:	27bdff38 	addiu	sp,sp,-200
    1edc:	afa500cc 	sw	a1,204(sp)
    1ee0:	afa600d0 	sw	a2,208(sp)
    1ee4:	00802825 	move	a1,a0
    1ee8:	afbf0014 	sw	ra,20(sp)
    1eec:	afa400c8 	sw	a0,200(sp)
    1ef0:	afa700d4 	sw	a3,212(sp)
    1ef4:	3c060000 	lui	a2,0x0
    1ef8:	24c60418 	addiu	a2,a2,1048
    1efc:	24070952 	li	a3,2386
    1f00:	afa500c8 	sw	a1,200(sp)
    1f04:	0c000000 	jal	0 <Gfx_SetFog>
    1f08:	27a400b4 	addiu	a0,sp,180
    1f0c:	8fa500c8 	lw	a1,200(sp)
    1f10:	93ac00cf 	lbu	t4,207(sp)
    1f14:	3c040000 	lui	a0,0x0
    1f18:	8ca202c0 	lw	v0,704(a1)
    1f1c:	24840000 	addiu	a0,a0,0
    1f20:	3c06de00 	lui	a2,0xde00
    1f24:	244e0008 	addiu	t6,v0,8
    1f28:	acae02c0 	sw	t6,704(a1)
    1f2c:	ac440004 	sw	a0,4(v0)
    1f30:	ac460000 	sw	a2,0(v0)
    1f34:	8ca202d0 	lw	v0,720(a1)
    1f38:	3c090000 	lui	t1,0x0
    1f3c:	25290000 	addiu	t1,t1,0
    1f40:	244f0008 	addiu	t7,v0,8
    1f44:	acaf02d0 	sw	t7,720(a1)
    1f48:	ac440004 	sw	a0,4(v0)
    1f4c:	ac460000 	sw	a2,0(v0)
    1f50:	8ca202b0 	lw	v0,688(a1)
    1f54:	3c014080 	lui	at,0x4080
    1f58:	44810000 	mtc1	at,$f0
    1f5c:	24580008 	addiu	t8,v0,8
    1f60:	acb802b0 	sw	t8,688(a1)
    1f64:	ac440004 	sw	a0,4(v0)
    1f68:	ac460000 	sw	a2,0(v0)
    1f6c:	8ca202c0 	lw	v0,704(a1)
    1f70:	3c04ed00 	lui	a0,0xed00
    1f74:	3c060000 	lui	a2,0x0
    1f78:	24590008 	addiu	t9,v0,8
    1f7c:	acb902c0 	sw	t9,704(a1)
    1f80:	ac440000 	sw	a0,0(v0)
    1f84:	8d2e0000 	lw	t6,0(t1)
    1f88:	24c60000 	addiu	a2,a2,0
    1f8c:	8ccf0000 	lw	t7,0(a2)
    1f90:	448e2000 	mtc1	t6,$f4
    1f94:	3c0bff10 	lui	t3,0xff10
    1f98:	448f8000 	mtc1	t7,$f16
    1f9c:	468021a0 	cvt.s.w	$f6,$f4
    1fa0:	3c080000 	lui	t0,0x0
    1fa4:	25080000 	addiu	t0,t0,0
    1fa8:	3c030000 	lui	v1,0x0
    1fac:	24630000 	addiu	v1,v1,0
    1fb0:	468084a0 	cvt.s.w	$f18,$f16
    1fb4:	46003202 	mul.s	$f8,$f6,$f0
    1fb8:	4600428d 	trunc.w.s	$f10,$f8
    1fbc:	46009102 	mul.s	$f4,$f18,$f0
    1fc0:	44185000 	mfc1	t8,$f10
    1fc4:	00000000 	nop
    1fc8:	33190fff 	andi	t9,t8,0xfff
    1fcc:	4600218d 	trunc.w.s	$f6,$f4
    1fd0:	00197300 	sll	t6,t9,0xc
    1fd4:	44193000 	mfc1	t9,$f6
    1fd8:	00000000 	nop
    1fdc:	332f0fff 	andi	t7,t9,0xfff
    1fe0:	01cfc025 	or	t8,t6,t7
    1fe4:	ac580004 	sw	t8,4(v0)
    1fe8:	8ca202d0 	lw	v0,720(a1)
    1fec:	24590008 	addiu	t9,v0,8
    1ff0:	acb902d0 	sw	t9,720(a1)
    1ff4:	ac440000 	sw	a0,0(v0)
    1ff8:	8d2e0000 	lw	t6,0(t1)
    1ffc:	8ccf0000 	lw	t7,0(a2)
    2000:	448e4000 	mtc1	t6,$f8
    2004:	448f2000 	mtc1	t7,$f4
    2008:	468042a0 	cvt.s.w	$f10,$f8
    200c:	468021a0 	cvt.s.w	$f6,$f4
    2010:	46005402 	mul.s	$f16,$f10,$f0
    2014:	4600848d 	trunc.w.s	$f18,$f16
    2018:	46003202 	mul.s	$f8,$f6,$f0
    201c:	44189000 	mfc1	t8,$f18
    2020:	00000000 	nop
    2024:	33190fff 	andi	t9,t8,0xfff
    2028:	4600428d 	trunc.w.s	$f10,$f8
    202c:	00197300 	sll	t6,t9,0xc
    2030:	44195000 	mfc1	t9,$f10
    2034:	00000000 	nop
    2038:	332f0fff 	andi	t7,t9,0xfff
    203c:	01cfc025 	or	t8,t6,t7
    2040:	ac580004 	sw	t8,4(v0)
    2044:	8ca202b0 	lw	v0,688(a1)
    2048:	24590008 	addiu	t9,v0,8
    204c:	acb902b0 	sw	t9,688(a1)
    2050:	ac440000 	sw	a0,0(v0)
    2054:	8d2e0000 	lw	t6,0(t1)
    2058:	8ccf0000 	lw	t7,0(a2)
    205c:	3c04fe00 	lui	a0,0xfe00
    2060:	448e8000 	mtc1	t6,$f16
    2064:	448f4000 	mtc1	t7,$f8
    2068:	468084a0 	cvt.s.w	$f18,$f16
    206c:	468042a0 	cvt.s.w	$f10,$f8
    2070:	46009102 	mul.s	$f4,$f18,$f0
    2074:	4600218d 	trunc.w.s	$f6,$f4
    2078:	46005402 	mul.s	$f16,$f10,$f0
    207c:	44183000 	mfc1	t8,$f6
    2080:	00000000 	nop
    2084:	33190fff 	andi	t9,t8,0xfff
    2088:	4600848d 	trunc.w.s	$f18,$f16
    208c:	00197300 	sll	t6,t9,0xc
    2090:	44199000 	mfc1	t9,$f18
    2094:	00000000 	nop
    2098:	332f0fff 	andi	t7,t9,0xfff
    209c:	01cfc025 	or	t8,t6,t7
    20a0:	ac580004 	sw	t8,4(v0)
    20a4:	8ca202c0 	lw	v0,704(a1)
    20a8:	24590008 	addiu	t9,v0,8
    20ac:	acb902c0 	sw	t9,704(a1)
    20b0:	8d2e0000 	lw	t6,0(t1)
    20b4:	25cfffff 	addiu	t7,t6,-1
    20b8:	31f80fff 	andi	t8,t7,0xfff
    20bc:	030bc825 	or	t9,t8,t3
    20c0:	ac590000 	sw	t9,0(v0)
    20c4:	8cae02dc 	lw	t6,732(a1)
    20c8:	ac4e0004 	sw	t6,4(v0)
    20cc:	8ca202c0 	lw	v0,704(a1)
    20d0:	244f0008 	addiu	t7,v0,8
    20d4:	acaf02c0 	sw	t7,704(a1)
    20d8:	8d380000 	lw	t8,0(t1)
    20dc:	2719ffff 	addiu	t9,t8,-1
    20e0:	332e0fff 	andi	t6,t9,0xfff
    20e4:	01cb7825 	or	t7,t6,t3
    20e8:	ac4f0000 	sw	t7,0(v0)
    20ec:	8cb802dc 	lw	t8,732(a1)
    20f0:	ac580004 	sw	t8,4(v0)
    20f4:	8ca202d0 	lw	v0,720(a1)
    20f8:	24590008 	addiu	t9,v0,8
    20fc:	acb902d0 	sw	t9,720(a1)
    2100:	8d2e0000 	lw	t6,0(t1)
    2104:	25cfffff 	addiu	t7,t6,-1
    2108:	31f80fff 	andi	t8,t7,0xfff
    210c:	030bc825 	or	t9,t8,t3
    2110:	ac590000 	sw	t9,0(v0)
    2114:	8cae02dc 	lw	t6,732(a1)
    2118:	ac4e0004 	sw	t6,4(v0)
    211c:	8ca202b0 	lw	v0,688(a1)
    2120:	244f0008 	addiu	t7,v0,8
    2124:	acaf02b0 	sw	t7,688(a1)
    2128:	8d380000 	lw	t8,0(t1)
    212c:	2719ffff 	addiu	t9,t8,-1
    2130:	332e0fff 	andi	t6,t9,0xfff
    2134:	01cb7825 	or	t7,t6,t3
    2138:	ac4f0000 	sw	t7,0(v0)
    213c:	8cb802dc 	lw	t8,732(a1)
    2140:	ac580004 	sw	t8,4(v0)
    2144:	8ca202c0 	lw	v0,704(a1)
    2148:	24590008 	addiu	t9,v0,8
    214c:	acb902c0 	sw	t9,704(a1)
    2150:	ac480004 	sw	t0,4(v0)
    2154:	ac440000 	sw	a0,0(v0)
    2158:	8ca202d0 	lw	v0,720(a1)
    215c:	244e0008 	addiu	t6,v0,8
    2160:	acae02d0 	sw	t6,720(a1)
    2164:	ac480004 	sw	t0,4(v0)
    2168:	ac440000 	sw	a0,0(v0)
    216c:	8ca202b0 	lw	v0,688(a1)
    2170:	3c0e0000 	lui	t6,0x0
    2174:	244f0008 	addiu	t7,v0,8
    2178:	acaf02b0 	sw	t7,688(a1)
    217c:	ac480004 	sw	t0,4(v0)
    2180:	ac440000 	sw	a0,0(v0)
    2184:	8c780000 	lw	t8,0(v1)
    2188:	87190190 	lh	t9,400(t8)
    218c:	2b210002 	slti	at,t9,2
    2190:	10200113 	beqz	at,25e0 <func_80095248+0x708>
    2194:	00000000 	nop
    2198:	8dce0000 	lw	t6,0(t6)
    219c:	29c10002 	slti	at,t6,2
    21a0:	1020010f 	beqz	at,25e0 <func_80095248+0x708>
    21a4:	00000000 	nop
    21a8:	afa500c8 	sw	a1,200(sp)
    21ac:	afa8002c 	sw	t0,44(sp)
    21b0:	0c000000 	jal	0 <Gfx_SetFog>
    21b4:	a3ac00cf 	sb	t4,207(sp)
    21b8:	3c030000 	lui	v1,0x0
    21bc:	24630000 	addiu	v1,v1,0
    21c0:	8c640000 	lw	a0,0(v1)
    21c4:	24060010 	li	a2,16
    21c8:	3c090000 	lui	t1,0x0
    21cc:	848f1074 	lh	t7,4212(a0)
    21d0:	25290000 	addiu	t1,t1,0
    21d4:	8fa500c8 	lw	a1,200(sp)
    21d8:	8fa8002c 	lw	t0,44(sp)
    21dc:	3c0bff10 	lui	t3,0xff10
    21e0:	93ac00cf 	lbu	t4,207(sp)
    21e4:	14cf0041 	bne	a2,t7,22ec <func_80095248+0x414>
    21e8:	00405025 	move	t2,v0
    21ec:	84981092 	lh	t8,4242(a0)
    21f0:	24070003 	li	a3,3
    21f4:	50d80020 	beql	a2,t8,2278 <func_80095248+0x3a0>
    21f8:	84861076 	lh	a2,4214(a0)
    21fc:	a4871076 	sh	a3,4214(a0)
    2200:	8c790000 	lw	t9,0(v1)
    2204:	a7271078 	sh	a3,4216(t9)
    2208:	8c6e0000 	lw	t6,0(v1)
    220c:	a5c0107a 	sh	zero,4218(t6)
    2210:	8c6f0000 	lw	t7,0(v1)
    2214:	a5e0107c 	sh	zero,4220(t7)
    2218:	8c780000 	lw	t8,0(v1)
    221c:	a700107e 	sh	zero,4222(t8)
    2220:	8c790000 	lw	t9,0(v1)
    2224:	a7201080 	sh	zero,4224(t9)
    2228:	8c6e0000 	lw	t6,0(v1)
    222c:	a5c01082 	sh	zero,4226(t6)
    2230:	8c6f0000 	lw	t7,0(v1)
    2234:	a5e01084 	sh	zero,4228(t7)
    2238:	8c780000 	lw	t8,0(v1)
    223c:	a7001086 	sh	zero,4230(t8)
    2240:	8c790000 	lw	t9,0(v1)
    2244:	a7201088 	sh	zero,4232(t9)
    2248:	8c6e0000 	lw	t6,0(v1)
    224c:	a5c0108a 	sh	zero,4234(t6)
    2250:	8c6f0000 	lw	t7,0(v1)
    2254:	a5e0108c 	sh	zero,4236(t7)
    2258:	8c780000 	lw	t8,0(v1)
    225c:	a700108e 	sh	zero,4238(t8)
    2260:	8c790000 	lw	t9,0(v1)
    2264:	a7201090 	sh	zero,4240(t9)
    2268:	8c6e0000 	lw	t6,0(v1)
    226c:	a5c61092 	sh	a2,4242(t6)
    2270:	8c640000 	lw	a0,0(v1)
    2274:	84861076 	lh	a2,4214(a0)
    2278:	30cf0001 	andi	t7,a2,0x1
    227c:	51e00005 	beqzl	t7,2294 <func_80095248+0x3bc>
    2280:	30d80002 	andi	t8,a2,0x2
    2284:	a482107a 	sh	v0,4218(a0)
    2288:	8c640000 	lw	a0,0(v1)
    228c:	84861076 	lh	a2,4214(a0)
    2290:	30d80002 	andi	t8,a2,0x2
    2294:	5300000a 	beqzl	t8,22c0 <func_80095248+0x3e8>
    2298:	84821078 	lh	v0,4216(a0)
    229c:	a48c107c 	sh	t4,4220(a0)
    22a0:	8c6e0000 	lw	t6,0(v1)
    22a4:	93b900d3 	lbu	t9,211(sp)
    22a8:	a5d9107e 	sh	t9,4222(t6)
    22ac:	8c780000 	lw	t8,0(v1)
    22b0:	93af00d7 	lbu	t7,215(sp)
    22b4:	a70f1080 	sh	t7,4224(t8)
    22b8:	8c640000 	lw	a0,0(v1)
    22bc:	84821078 	lh	v0,4216(a0)
    22c0:	30590001 	andi	t9,v0,0x1
    22c4:	13200002 	beqz	t9,22d0 <func_80095248+0x3f8>
    22c8:	304e0002 	andi	t6,v0,0x2
    22cc:	848a107a 	lh	t2,4218(a0)
    22d0:	51c00007 	beqzl	t6,22f0 <func_80095248+0x418>
    22d4:	93b900d7 	lbu	t9,215(sp)
    22d8:	848f107e 	lh	t7,4222(a0)
    22dc:	908c107d 	lbu	t4,4221(a0)
    22e0:	a3af00d3 	sb	t7,211(sp)
    22e4:	84981080 	lh	t8,4224(a0)
    22e8:	a3b800d7 	sb	t8,215(sp)
    22ec:	93b900d7 	lbu	t9,215(sp)
    22f0:	93bf00d3 	lbu	ra,211(sp)
    22f4:	3c04e300 	lui	a0,0xe300
    22f8:	afb90020 	sw	t9,32(sp)
    22fc:	8ca202c0 	lw	v0,704(a1)
    2300:	34840a01 	ori	a0,a0,0xa01
    2304:	3c070030 	lui	a3,0x30
    2308:	244e0008 	addiu	t6,v0,8
    230c:	acae02c0 	sw	t6,704(a1)
    2310:	8d2f0000 	lw	t7,0(t1)
    2314:	ac480004 	sw	t0,4(v0)
    2318:	3c08f600 	lui	t0,0xf600
    231c:	25f8ffff 	addiu	t8,t7,-1
    2320:	33190fff 	andi	t9,t8,0xfff
    2324:	032b7025 	or	t6,t9,t3
    2328:	ac4e0000 	sw	t6,0(v0)
    232c:	8ca202c0 	lw	v0,704(a1)
    2330:	3c19e200 	lui	t9,0xe200
    2334:	3739001c 	ori	t9,t9,0x1c
    2338:	244f0008 	addiu	t7,v0,8
    233c:	acaf02c0 	sw	t7,704(a1)
    2340:	ac470004 	sw	a3,4(v0)
    2344:	ac440000 	sw	a0,0(v0)
    2348:	8ca202c0 	lw	v0,704(a1)
    234c:	3c0ff700 	lui	t7,0xf700
    2350:	314603ff 	andi	a2,t2,0x3ff
    2354:	24580008 	addiu	t8,v0,8
    2358:	acb802c0 	sw	t8,704(a1)
    235c:	ac400004 	sw	zero,4(v0)
    2360:	ac590000 	sw	t9,0(v0)
    2364:	8ca202c0 	lw	v0,704(a1)
    2368:	3c18fffc 	lui	t8,0xfffc
    236c:	3718fffc 	ori	t8,t8,0xfffc
    2370:	244e0008 	addiu	t6,v0,8
    2374:	acae02c0 	sw	t6,704(a1)
    2378:	ac580004 	sw	t8,4(v0)
    237c:	ac4f0000 	sw	t7,0(v0)
    2380:	8ca202c0 	lw	v0,704(a1)
    2384:	00063080 	sll	a2,a2,0x2
    2388:	01806825 	move	t5,t4
    238c:	24590008 	addiu	t9,v0,8
    2390:	acb902c0 	sw	t9,704(a1)
    2394:	8d2e0000 	lw	t6,0(t1)
    2398:	3c0ce700 	lui	t4,0xe700
    239c:	25cfffff 	addiu	t7,t6,-1
    23a0:	31f803ff 	andi	t8,t7,0x3ff
    23a4:	3c0f0000 	lui	t7,0x0
    23a8:	8def0000 	lw	t7,0(t7)
    23ac:	0018cb80 	sll	t9,t8,0xe
    23b0:	03287025 	or	t6,t9,t0
    23b4:	01eac023 	subu	t8,t7,t2
    23b8:	2719ffff 	addiu	t9,t8,-1
    23bc:	332f03ff 	andi	t7,t9,0x3ff
    23c0:	000fc080 	sll	t8,t7,0x2
    23c4:	01d8c825 	or	t9,t6,t8
    23c8:	ac590000 	sw	t9,0(v0)
    23cc:	ac460004 	sw	a2,4(v0)
    23d0:	8ca202c0 	lw	v0,704(a1)
    23d4:	244f0008 	addiu	t7,v0,8
    23d8:	acaf02c0 	sw	t7,704(a1)
    23dc:	ac400004 	sw	zero,4(v0)
    23e0:	ac4c0000 	sw	t4,0(v0)
    23e4:	8ca202c0 	lw	v0,704(a1)
    23e8:	244e0008 	addiu	t6,v0,8
    23ec:	acae02c0 	sw	t6,704(a1)
    23f0:	8d380000 	lw	t8,0(t1)
    23f4:	2719ffff 	addiu	t9,t8,-1
    23f8:	332f0fff 	andi	t7,t9,0xfff
    23fc:	01eb7025 	or	t6,t7,t3
    2400:	ac4e0000 	sw	t6,0(v0)
    2404:	8cb802dc 	lw	t8,732(a1)
    2408:	3c0ee200 	lui	t6,0xe200
    240c:	35ce001c 	ori	t6,t6,0x1c
    2410:	ac580004 	sw	t8,4(v0)
    2414:	8ca202c0 	lw	v0,704(a1)
    2418:	3c0bf700 	lui	t3,0xf700
    241c:	24590008 	addiu	t9,v0,8
    2420:	acb902c0 	sw	t9,704(a1)
    2424:	ac470004 	sw	a3,4(v0)
    2428:	ac440000 	sw	a0,0(v0)
    242c:	8ca202c0 	lw	v0,704(a1)
    2430:	000dca00 	sll	t9,t5,0x8
    2434:	244f0008 	addiu	t7,v0,8
    2438:	acaf02c0 	sw	t7,704(a1)
    243c:	ac400004 	sw	zero,4(v0)
    2440:	ac4e0000 	sw	t6,0(v0)
    2444:	8ca202c0 	lw	v0,704(a1)
    2448:	001f70c0 	sll	t6,ra,0x3
    244c:	332ff800 	andi	t7,t9,0xf800
    2450:	24580008 	addiu	t8,v0,8
    2454:	acb802c0 	sw	t8,704(a1)
    2458:	31d807c0 	andi	t8,t6,0x7c0
    245c:	ac4b0000 	sw	t3,0(v0)
    2460:	8fae0020 	lw	t6,32(sp)
    2464:	01f8c825 	or	t9,t7,t8
    2468:	000e7883 	sra	t7,t6,0x2
    246c:	31f8003e 	andi	t8,t7,0x3e
    2470:	03382025 	or	a0,t9,t8
    2474:	34840001 	ori	a0,a0,0x1
    2478:	00047400 	sll	t6,a0,0x10
    247c:	01c43825 	or	a3,t6,a0
    2480:	ac470004 	sw	a3,4(v0)
    2484:	8ca202c0 	lw	v0,704(a1)
    2488:	3c040000 	lui	a0,0x0
    248c:	24840000 	addiu	a0,a0,0
    2490:	244f0008 	addiu	t7,v0,8
    2494:	acaf02c0 	sw	t7,704(a1)
    2498:	8d390000 	lw	t9,0(t1)
    249c:	2738ffff 	addiu	t8,t9,-1
    24a0:	330e03ff 	andi	t6,t8,0x3ff
    24a4:	8c980000 	lw	t8,0(a0)
    24a8:	000e7b80 	sll	t7,t6,0xe
    24ac:	01e8c825 	or	t9,t7,t0
    24b0:	030a7023 	subu	t6,t8,t2
    24b4:	25cfffff 	addiu	t7,t6,-1
    24b8:	31f803ff 	andi	t8,t7,0x3ff
    24bc:	00187080 	sll	t6,t8,0x2
    24c0:	032e7825 	or	t7,t9,t6
    24c4:	ac4f0000 	sw	t7,0(v0)
    24c8:	ac460004 	sw	a2,4(v0)
    24cc:	8ca202c0 	lw	v0,704(a1)
    24d0:	24580008 	addiu	t8,v0,8
    24d4:	acb802c0 	sw	t8,704(a1)
    24d8:	ac400004 	sw	zero,4(v0)
    24dc:	19400040 	blez	t2,25e0 <func_80095248+0x708>
    24e0:	ac4c0000 	sw	t4,0(v0)
    24e4:	8ca202b0 	lw	v0,688(a1)
    24e8:	3c0fe300 	lui	t7,0xe300
    24ec:	35ef0a01 	ori	t7,t7,0xa01
    24f0:	24590008 	addiu	t9,v0,8
    24f4:	acb902b0 	sw	t9,688(a1)
    24f8:	ac400004 	sw	zero,4(v0)
    24fc:	ac4c0000 	sw	t4,0(v0)
    2500:	8ca202b0 	lw	v0,688(a1)
    2504:	3c180030 	lui	t8,0x30
    2508:	244e0008 	addiu	t6,v0,8
    250c:	acae02b0 	sw	t6,688(a1)
    2510:	ac580004 	sw	t8,4(v0)
    2514:	ac4f0000 	sw	t7,0(v0)
    2518:	8ca202b0 	lw	v0,688(a1)
    251c:	3c0ee200 	lui	t6,0xe200
    2520:	35ce001c 	ori	t6,t6,0x1c
    2524:	24590008 	addiu	t9,v0,8
    2528:	acb902b0 	sw	t9,688(a1)
    252c:	ac400004 	sw	zero,4(v0)
    2530:	ac4e0000 	sw	t6,0(v0)
    2534:	8ca202b0 	lw	v0,688(a1)
    2538:	244f0008 	addiu	t7,v0,8
    253c:	acaf02b0 	sw	t7,688(a1)
    2540:	ac470004 	sw	a3,4(v0)
    2544:	ac4b0000 	sw	t3,0(v0)
    2548:	8ca202b0 	lw	v0,688(a1)
    254c:	24580008 	addiu	t8,v0,8
    2550:	acb802b0 	sw	t8,688(a1)
    2554:	8d390000 	lw	t9,0(t1)
    2558:	ac400004 	sw	zero,4(v0)
    255c:	272effff 	addiu	t6,t9,-1
    2560:	31cf03ff 	andi	t7,t6,0x3ff
    2564:	000fc380 	sll	t8,t7,0xe
    2568:	254effff 	addiu	t6,t2,-1
    256c:	31cf03ff 	andi	t7,t6,0x3ff
    2570:	0308c825 	or	t9,t8,t0
    2574:	000fc080 	sll	t8,t7,0x2
    2578:	03387025 	or	t6,t9,t8
    257c:	ac4e0000 	sw	t6,0(v0)
    2580:	8ca202b0 	lw	v0,688(a1)
    2584:	244f0008 	addiu	t7,v0,8
    2588:	acaf02b0 	sw	t7,688(a1)
    258c:	8d390000 	lw	t9,0(t1)
    2590:	2738ffff 	addiu	t8,t9,-1
    2594:	330e03ff 	andi	t6,t8,0x3ff
    2598:	8c980000 	lw	t8,0(a0)
    259c:	000e7b80 	sll	t7,t6,0xe
    25a0:	01e8c825 	or	t9,t7,t0
    25a4:	270effff 	addiu	t6,t8,-1
    25a8:	31cf03ff 	andi	t7,t6,0x3ff
    25ac:	000fc080 	sll	t8,t7,0x2
    25b0:	03387025 	or	t6,t9,t8
    25b4:	ac4e0000 	sw	t6,0(v0)
    25b8:	8c8f0000 	lw	t7,0(a0)
    25bc:	01eac823 	subu	t9,t7,t2
    25c0:	333803ff 	andi	t8,t9,0x3ff
    25c4:	00187080 	sll	t6,t8,0x2
    25c8:	ac4e0004 	sw	t6,4(v0)
    25cc:	8ca202b0 	lw	v0,688(a1)
    25d0:	244f0008 	addiu	t7,v0,8
    25d4:	acaf02b0 	sw	t7,688(a1)
    25d8:	ac400004 	sw	zero,4(v0)
    25dc:	ac4c0000 	sw	t4,0(v0)
    25e0:	3c060000 	lui	a2,0x0
    25e4:	24c60424 	addiu	a2,a2,1060
    25e8:	27a400b4 	addiu	a0,sp,180
    25ec:	0c000000 	jal	0 <Gfx_SetFog>
    25f0:	240709c1 	li	a3,2497
    25f4:	8fbf0014 	lw	ra,20(sp)
    25f8:	27bd00c8 	addiu	sp,sp,200
    25fc:	03e00008 	jr	ra
    2600:	00000000 	nop

00002604 <func_80095974>:
    2604:	27bdffc0 	addiu	sp,sp,-64
    2608:	afbf0014 	sw	ra,20(sp)
    260c:	00802825 	move	a1,a0
    2610:	3c060000 	lui	a2,0x0
    2614:	24c60430 	addiu	a2,a2,1072
    2618:	afa50040 	sw	a1,64(sp)
    261c:	27a4002c 	addiu	a0,sp,44
    2620:	0c000000 	jal	0 <Gfx_SetFog>
    2624:	240709c7 	li	a3,2503
    2628:	8fa50040 	lw	a1,64(sp)
    262c:	3c180000 	lui	t8,0x0
    2630:	27180000 	addiu	t8,t8,0
    2634:	8ca202c0 	lw	v0,704(a1)
    2638:	3c0fde00 	lui	t7,0xde00
    263c:	3c040000 	lui	a0,0x0
    2640:	244e0008 	addiu	t6,v0,8
    2644:	acae02c0 	sw	t6,704(a1)
    2648:	ac580004 	sw	t8,4(v0)
    264c:	ac4f0000 	sw	t7,0(v0)
    2650:	8ca202c0 	lw	v0,704(a1)
    2654:	3c08ed00 	lui	t0,0xed00
    2658:	24840000 	addiu	a0,a0,0
    265c:	24590008 	addiu	t9,v0,8
    2660:	acb902c0 	sw	t9,704(a1)
    2664:	ac480000 	sw	t0,0(v0)
    2668:	8c890000 	lw	t1,0(a0)
    266c:	3c0e0000 	lui	t6,0x0
    2670:	8dce0000 	lw	t6,0(t6)
    2674:	44892000 	mtc1	t1,$f4
    2678:	3c014080 	lui	at,0x4080
    267c:	448e8000 	mtc1	t6,$f16
    2680:	468021a0 	cvt.s.w	$f6,$f4
    2684:	44810000 	mtc1	at,$f0
    2688:	3c0afe00 	lui	t2,0xfe00
    268c:	3c01ff10 	lui	at,0xff10
    2690:	3c060000 	lui	a2,0x0
    2694:	468084a0 	cvt.s.w	$f18,$f16
    2698:	46003202 	mul.s	$f8,$f6,$f0
    269c:	24c6043c 	addiu	a2,a2,1084
    26a0:	240709d1 	li	a3,2513
    26a4:	46009102 	mul.s	$f4,$f18,$f0
    26a8:	4600428d 	trunc.w.s	$f10,$f8
    26ac:	4600218d 	trunc.w.s	$f6,$f4
    26b0:	440b5000 	mfc1	t3,$f10
    26b4:	44183000 	mfc1	t8,$f6
    26b8:	316c0fff 	andi	t4,t3,0xfff
    26bc:	000c6b00 	sll	t5,t4,0xc
    26c0:	33190fff 	andi	t9,t8,0xfff
    26c4:	01b94025 	or	t0,t5,t9
    26c8:	ac480004 	sw	t0,4(v0)
    26cc:	8ca202c0 	lw	v0,704(a1)
    26d0:	3c0b0000 	lui	t3,0x0
    26d4:	256b0000 	addiu	t3,t3,0
    26d8:	24490008 	addiu	t1,v0,8
    26dc:	aca902c0 	sw	t1,704(a1)
    26e0:	ac4b0004 	sw	t3,4(v0)
    26e4:	ac4a0000 	sw	t2,0(v0)
    26e8:	8ca202c0 	lw	v0,704(a1)
    26ec:	244c0008 	addiu	t4,v0,8
    26f0:	acac02c0 	sw	t4,704(a1)
    26f4:	8c8e0000 	lw	t6,0(a0)
    26f8:	27a4002c 	addiu	a0,sp,44
    26fc:	25cfffff 	addiu	t7,t6,-1
    2700:	31f80fff 	andi	t8,t7,0xfff
    2704:	03016825 	or	t5,t8,at
    2708:	ac4d0000 	sw	t5,0(v0)
    270c:	8cb902dc 	lw	t9,732(a1)
    2710:	0c000000 	jal	0 <Gfx_SetFog>
    2714:	ac590004 	sw	t9,4(v0)
    2718:	8fbf0014 	lw	ra,20(sp)
    271c:	27bd0040 	addiu	sp,sp,64
    2720:	03e00008 	jr	ra
    2724:	00000000 	nop
	...
