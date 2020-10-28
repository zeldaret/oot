
build/src/code/z_parameter.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Interface_ChangeAlpha>:
       0:	3c020000 	lui	v0,0x0
       4:	24420000 	addiu	v0,v0,0
       8:	944e13ea 	lhu	t6,5098(v0)
       c:	27bdffe8 	addiu	sp,sp,-24
      10:	3087ffff 	andi	a3,a0,0xffff
      14:	afbf0014 	sw	ra,20(sp)
      18:	afa40018 	sw	a0,24(sp)
      1c:	11c7000d 	beq	t6,a3,54 <Interface_ChangeAlpha+0x54>
      20:	00e02825 	move	a1,a3
      24:	3c040000 	lui	a0,0x0
      28:	24840000 	addiu	a0,a0,0
      2c:	944613ee 	lhu	a2,5102(v0)
      30:	0c000000 	jal	0 <Interface_ChangeAlpha>
      34:	a7a7001a 	sh	a3,26(sp)
      38:	97af001a 	lhu	t7,26(sp)
      3c:	3c020000 	lui	v0,0x0
      40:	24420000 	addiu	v0,v0,0
      44:	24180001 	li	t8,1
      48:	a45813ec 	sh	t8,5100(v0)
      4c:	a44f13e8 	sh	t7,5096(v0)
      50:	a44f13ea 	sh	t7,5098(v0)
      54:	8fbf0014 	lw	ra,20(sp)
      58:	27bd0018 	addiu	sp,sp,24
      5c:	03e00008 	jr	ra
      60:	00000000 	nop

00000064 <func_80082644>:
      64:	3c060000 	lui	a2,0x0
      68:	24c60000 	addiu	a2,a2,0
      6c:	90ce13e2 	lbu	t6,5090(a2)
      70:	afa50004 	sw	a1,4(sp)
      74:	00052c00 	sll	a1,a1,0x10
      78:	240300ff 	li	v1,255
      7c:	146e000c 	bne	v1,t6,b0 <func_80082644+0x4c>
      80:	00052c03 	sra	a1,a1,0x10
      84:	3c010001 	lui	at,0x1
      88:	342104f0 	ori	at,at,0x4f0
      8c:	00811021 	addu	v0,a0,at
      90:	944f0248 	lhu	t7,584(v0)
      94:	24070046 	li	a3,70
      98:	24040046 	li	a0,70
      9c:	10ef0002 	beq	a3,t7,a8 <func_80082644+0x44>
      a0:	00000000 	nop
      a4:	a4440248 	sh	a0,584(v0)
      a8:	10000009 	b	d0 <func_80082644+0x6c>
      ac:	90d913e3 	lbu	t9,5091(a2)
      b0:	3c010001 	lui	at,0x1
      b4:	342104f0 	ori	at,at,0x4f0
      b8:	00811021 	addu	v0,a0,at
      bc:	94580248 	lhu	t8,584(v0)
      c0:	50780003 	beql	v1,t8,d0 <func_80082644+0x6c>
      c4:	90d913e3 	lbu	t9,5091(a2)
      c8:	a4450248 	sh	a1,584(v0)
      cc:	90d913e3 	lbu	t9,5091(a2)
      d0:	24040046 	li	a0,70
      d4:	24070046 	li	a3,70
      d8:	54790007 	bnel	v1,t9,f8 <func_80082644+0x94>
      dc:	9449024a 	lhu	t1,586(v0)
      e0:	9448024a 	lhu	t0,586(v0)
      e4:	50e80008 	beql	a3,t0,108 <func_80082644+0xa4>
      e8:	90ca13e4 	lbu	t2,5092(a2)
      ec:	10000005 	b	104 <func_80082644+0xa0>
      f0:	a444024a 	sh	a0,586(v0)
      f4:	9449024a 	lhu	t1,586(v0)
      f8:	50690003 	beql	v1,t1,108 <func_80082644+0xa4>
      fc:	90ca13e4 	lbu	t2,5092(a2)
     100:	a445024a 	sh	a1,586(v0)
     104:	90ca13e4 	lbu	t2,5092(a2)
     108:	546a0007 	bnel	v1,t2,128 <func_80082644+0xc4>
     10c:	944c024c 	lhu	t4,588(v0)
     110:	944b024c 	lhu	t3,588(v0)
     114:	50eb0008 	beql	a3,t3,138 <func_80082644+0xd4>
     118:	90cd13e5 	lbu	t5,5093(a2)
     11c:	10000005 	b	134 <func_80082644+0xd0>
     120:	a444024c 	sh	a0,588(v0)
     124:	944c024c 	lhu	t4,588(v0)
     128:	506c0003 	beql	v1,t4,138 <func_80082644+0xd4>
     12c:	90cd13e5 	lbu	t5,5093(a2)
     130:	a445024c 	sh	a1,588(v0)
     134:	90cd13e5 	lbu	t5,5093(a2)
     138:	546d0007 	bnel	v1,t5,158 <func_80082644+0xf4>
     13c:	944f024e 	lhu	t7,590(v0)
     140:	944e024e 	lhu	t6,590(v0)
     144:	50ee0008 	beql	a3,t6,168 <func_80082644+0x104>
     148:	90d813e6 	lbu	t8,5094(a2)
     14c:	10000005 	b	164 <func_80082644+0x100>
     150:	a444024e 	sh	a0,590(v0)
     154:	944f024e 	lhu	t7,590(v0)
     158:	506f0003 	beql	v1,t7,168 <func_80082644+0x104>
     15c:	90d813e6 	lbu	t8,5094(a2)
     160:	a445024e 	sh	a1,590(v0)
     164:	90d813e6 	lbu	t8,5094(a2)
     168:	54780007 	bnel	v1,t8,188 <func_80082644+0x124>
     16c:	94480246 	lhu	t0,582(v0)
     170:	94590246 	lhu	t9,582(v0)
     174:	10f90007 	beq	a3,t9,194 <func_80082644+0x130>
     178:	00000000 	nop
     17c:	03e00008 	jr	ra
     180:	a4440246 	sh	a0,582(v0)
     184:	94480246 	lhu	t0,582(v0)
     188:	10680002 	beq	v1,t0,194 <func_80082644+0x130>
     18c:	00000000 	nop
     190:	a4450246 	sh	a1,582(v0)
     194:	03e00008 	jr	ra
     198:	00000000 	nop

0000019c <func_8008277C>:
     19c:	27bdffe8 	addiu	sp,sp,-24
     1a0:	3c0e0000 	lui	t6,0x0
     1a4:	91ce13e7 	lbu	t6,5095(t6)
     1a8:	afa5001c 	sw	a1,28(sp)
     1ac:	afa60020 	sw	a2,32(sp)
     1b0:	00063400 	sll	a2,a2,0x10
     1b4:	00052c00 	sll	a1,a1,0x10
     1b8:	00052c03 	sra	a1,a1,0x10
     1bc:	00063403 	sra	a2,a2,0x10
     1c0:	11c00006 	beqz	t6,1dc <func_8008277C+0x40>
     1c4:	afbf0014 	sw	ra,20(sp)
     1c8:	00062c00 	sll	a1,a2,0x10
     1cc:	0c000000 	jal	0 <Interface_ChangeAlpha>
     1d0:	00052c03 	sra	a1,a1,0x10
     1d4:	10000023 	b	264 <func_8008277C+0xc8>
     1d8:	8fbf0014 	lw	ra,20(sp)
     1dc:	3c010001 	lui	at,0x1
     1e0:	342104f0 	ori	at,at,0x4f0
     1e4:	00811021 	addu	v0,a0,at
     1e8:	94430248 	lhu	v1,584(v0)
     1ec:	10600004 	beqz	v1,200 <func_8008277C+0x64>
     1f0:	00a3082a 	slt	at,a1,v1
     1f4:	50200003 	beqzl	at,204 <func_8008277C+0x68>
     1f8:	94430246 	lhu	v1,582(v0)
     1fc:	a4450248 	sh	a1,584(v0)
     200:	94430246 	lhu	v1,582(v0)
     204:	10600004 	beqz	v1,218 <func_8008277C+0x7c>
     208:	00a3082a 	slt	at,a1,v1
     20c:	50200003 	beqzl	at,21c <func_8008277C+0x80>
     210:	9443024a 	lhu	v1,586(v0)
     214:	a4450246 	sh	a1,582(v0)
     218:	9443024a 	lhu	v1,586(v0)
     21c:	10600004 	beqz	v1,230 <func_8008277C+0x94>
     220:	00a3082a 	slt	at,a1,v1
     224:	50200003 	beqzl	at,234 <func_8008277C+0x98>
     228:	9443024c 	lhu	v1,588(v0)
     22c:	a445024a 	sh	a1,586(v0)
     230:	9443024c 	lhu	v1,588(v0)
     234:	10600004 	beqz	v1,248 <func_8008277C+0xac>
     238:	00a3082a 	slt	at,a1,v1
     23c:	50200003 	beqzl	at,24c <func_8008277C+0xb0>
     240:	9443024e 	lhu	v1,590(v0)
     244:	a445024c 	sh	a1,588(v0)
     248:	9443024e 	lhu	v1,590(v0)
     24c:	10600004 	beqz	v1,260 <func_8008277C+0xc4>
     250:	00a3082a 	slt	at,a1,v1
     254:	50200003 	beqzl	at,264 <func_8008277C+0xc8>
     258:	8fbf0014 	lw	ra,20(sp)
     25c:	a445024e 	sh	a1,590(v0)
     260:	8fbf0014 	lw	ra,20(sp)
     264:	27bd0018 	addiu	sp,sp,24
     268:	03e00008 	jr	ra
     26c:	00000000 	nop

00000270 <func_80082850>:
     270:	3c0f0000 	lui	t7,0x0
     274:	95ef13e8 	lhu	t7,5096(t7)
     278:	27bdffd8 	addiu	sp,sp,-40
     27c:	00053c00 	sll	a3,a1,0x10
     280:	00073c03 	sra	a3,a3,0x10
     284:	240800ff 	li	t0,255
     288:	25f8ffff 	addiu	t8,t7,-1
     28c:	01077023 	subu	t6,t0,a3
     290:	2f01000d 	sltiu	at,t8,13
     294:	afbf0014 	sw	ra,20(sp)
     298:	afa40028 	sw	a0,40(sp)
     29c:	afa5002c 	sw	a1,44(sp)
     2a0:	1020020e 	beqz	at,adc <func_80082850+0x86c>
     2a4:	a7ae0022 	sh	t6,34(sp)
     2a8:	0018c080 	sll	t8,t8,0x2
     2ac:	3c010000 	lui	at,0x0
     2b0:	00380821 	addu	at,at,t8
     2b4:	8c380864 	lw	t8,2148(at)
     2b8:	03000008 	jr	t8
     2bc:	00000000 	nop
     2c0:	8fa30028 	lw	v1,40(sp)
     2c4:	3c010001 	lui	at,0x1
     2c8:	342104f0 	ori	at,at,0x4f0
     2cc:	00611821 	addu	v1,v1,at
     2d0:	94650246 	lhu	a1,582(v1)
     2d4:	9466024a 	lhu	a2,586(v1)
     2d8:	3c040000 	lui	a0,0x0
     2dc:	24840030 	addiu	a0,a0,48
     2e0:	a7a7002e 	sh	a3,46(sp)
     2e4:	0c000000 	jal	0 <Interface_ChangeAlpha>
     2e8:	afa3001c 	sw	v1,28(sp)
     2ec:	3c190000 	lui	t9,0x0
     2f0:	973913e8 	lhu	t9,5096(t9)
     2f4:	24010008 	li	at,8
     2f8:	8fa3001c 	lw	v1,28(sp)
     2fc:	87a40022 	lh	a0,34(sp)
     300:	87a7002e 	lh	a3,46(sp)
     304:	17210006 	bne	t9,at,320 <func_80082850+0xb0>
     308:	240800ff 	li	t0,255
     30c:	94690248 	lhu	t1,584(v1)
     310:	5109000a 	beql	t0,t1,33c <func_80082850+0xcc>
     314:	94620246 	lhu	v0,582(v1)
     318:	10000007 	b	338 <func_80082850+0xc8>
     31c:	a4640248 	sh	a0,584(v1)
     320:	94620248 	lhu	v0,584(v1)
     324:	10400004 	beqz	v0,338 <func_80082850+0xc8>
     328:	00e2082a 	slt	at,a3,v0
     32c:	50200003 	beqzl	at,33c <func_80082850+0xcc>
     330:	94620246 	lhu	v0,582(v1)
     334:	a4670248 	sh	a3,584(v1)
     338:	94620246 	lhu	v0,582(v1)
     33c:	3c040000 	lui	a0,0x0
     340:	24840050 	addiu	a0,a0,80
     344:	10400004 	beqz	v0,358 <func_80082850+0xe8>
     348:	00e2082a 	slt	at,a3,v0
     34c:	50200003 	beqzl	at,35c <func_80082850+0xec>
     350:	9462024a 	lhu	v0,586(v1)
     354:	a4670246 	sh	a3,582(v1)
     358:	9462024a 	lhu	v0,586(v1)
     35c:	10400004 	beqz	v0,370 <func_80082850+0x100>
     360:	00e2082a 	slt	at,a3,v0
     364:	50200003 	beqzl	at,374 <func_80082850+0x104>
     368:	9462024c 	lhu	v0,588(v1)
     36c:	a467024a 	sh	a3,586(v1)
     370:	9462024c 	lhu	v0,588(v1)
     374:	10400004 	beqz	v0,388 <func_80082850+0x118>
     378:	00e2082a 	slt	at,a3,v0
     37c:	50200003 	beqzl	at,38c <func_80082850+0x11c>
     380:	9462024e 	lhu	v0,590(v1)
     384:	a467024c 	sh	a3,588(v1)
     388:	9462024e 	lhu	v0,590(v1)
     38c:	10400004 	beqz	v0,3a0 <func_80082850+0x130>
     390:	00e2082a 	slt	at,a3,v0
     394:	50200003 	beqzl	at,3a4 <func_80082850+0x134>
     398:	94620250 	lhu	v0,592(v1)
     39c:	a467024e 	sh	a3,590(v1)
     3a0:	94620250 	lhu	v0,592(v1)
     3a4:	10400004 	beqz	v0,3b8 <func_80082850+0x148>
     3a8:	00e2082a 	slt	at,a3,v0
     3ac:	50200003 	beqzl	at,3bc <func_80082850+0x14c>
     3b0:	94620252 	lhu	v0,594(v1)
     3b4:	a4670250 	sh	a3,592(v1)
     3b8:	94620252 	lhu	v0,594(v1)
     3bc:	10400004 	beqz	v0,3d0 <func_80082850+0x160>
     3c0:	00e2082a 	slt	at,a3,v0
     3c4:	50200003 	beqzl	at,3d4 <func_80082850+0x164>
     3c8:	94620254 	lhu	v0,596(v1)
     3cc:	a4670252 	sh	a3,594(v1)
     3d0:	94620254 	lhu	v0,596(v1)
     3d4:	10400004 	beqz	v0,3e8 <func_80082850+0x178>
     3d8:	00e2082a 	slt	at,a3,v0
     3dc:	50200003 	beqzl	at,3ec <func_80082850+0x17c>
     3e0:	94650246 	lhu	a1,582(v1)
     3e4:	a4670254 	sh	a3,596(v1)
     3e8:	94650246 	lhu	a1,582(v1)
     3ec:	0c000000 	jal	0 <Interface_ChangeAlpha>
     3f0:	9466024a 	lhu	a2,586(v1)
     3f4:	100001ba 	b	ae0 <func_80082850+0x870>
     3f8:	8fb80028 	lw	t8,40(sp)
     3fc:	8fa30028 	lw	v1,40(sp)
     400:	3c010001 	lui	at,0x1
     404:	342104f0 	ori	at,at,0x4f0
     408:	00611821 	addu	v1,v1,at
     40c:	94620246 	lhu	v0,582(v1)
     410:	00072c00 	sll	a1,a3,0x10
     414:	00052c03 	sra	a1,a1,0x10
     418:	10400004 	beqz	v0,42c <func_80082850+0x1bc>
     41c:	00e2082a 	slt	at,a3,v0
     420:	50200003 	beqzl	at,430 <func_80082850+0x1c0>
     424:	8fa40028 	lw	a0,40(sp)
     428:	a4670246 	sh	a3,582(v1)
     42c:	8fa40028 	lw	a0,40(sp)
     430:	87a60022 	lh	a2,34(sp)
     434:	afa3001c 	sw	v1,28(sp)
     438:	0c000000 	jal	0 <Interface_ChangeAlpha>
     43c:	a7a7002e 	sh	a3,46(sp)
     440:	8fa3001c 	lw	v1,28(sp)
     444:	87a7002e 	lh	a3,46(sp)
     448:	87a40022 	lh	a0,34(sp)
     44c:	94620252 	lhu	v0,594(v1)
     450:	240800ff 	li	t0,255
     454:	10400004 	beqz	v0,468 <func_80082850+0x1f8>
     458:	00e2082a 	slt	at,a3,v0
     45c:	50200003 	beqzl	at,46c <func_80082850+0x1fc>
     460:	94620254 	lhu	v0,596(v1)
     464:	a4670252 	sh	a3,594(v1)
     468:	94620254 	lhu	v0,596(v1)
     46c:	10400004 	beqz	v0,480 <func_80082850+0x210>
     470:	00e2082a 	slt	at,a3,v0
     474:	50200003 	beqzl	at,484 <func_80082850+0x214>
     478:	946a0250 	lhu	t2,592(v1)
     47c:	a4670254 	sh	a3,596(v1)
     480:	946a0250 	lhu	t2,592(v1)
     484:	510a0196 	beql	t0,t2,ae0 <func_80082850+0x870>
     488:	8fb80028 	lw	t8,40(sp)
     48c:	10000193 	b	adc <func_80082850+0x86c>
     490:	a4640250 	sh	a0,592(v1)
     494:	8fa30028 	lw	v1,40(sp)
     498:	3c010001 	lui	at,0x1
     49c:	342104f0 	ori	at,at,0x4f0
     4a0:	00611821 	addu	v1,v1,at
     4a4:	94620248 	lhu	v0,584(v1)
     4a8:	10400004 	beqz	v0,4bc <func_80082850+0x24c>
     4ac:	00e2082a 	slt	at,a3,v0
     4b0:	50200003 	beqzl	at,4c0 <func_80082850+0x250>
     4b4:	94620246 	lhu	v0,582(v1)
     4b8:	a4670248 	sh	a3,584(v1)
     4bc:	94620246 	lhu	v0,582(v1)
     4c0:	10400004 	beqz	v0,4d4 <func_80082850+0x264>
     4c4:	00e2082a 	slt	at,a3,v0
     4c8:	50200003 	beqzl	at,4d8 <func_80082850+0x268>
     4cc:	9462024a 	lhu	v0,586(v1)
     4d0:	a4670246 	sh	a3,582(v1)
     4d4:	9462024a 	lhu	v0,586(v1)
     4d8:	10400004 	beqz	v0,4ec <func_80082850+0x27c>
     4dc:	00e2082a 	slt	at,a3,v0
     4e0:	50200003 	beqzl	at,4f0 <func_80082850+0x280>
     4e4:	9462024c 	lhu	v0,588(v1)
     4e8:	a467024a 	sh	a3,586(v1)
     4ec:	9462024c 	lhu	v0,588(v1)
     4f0:	10400004 	beqz	v0,504 <func_80082850+0x294>
     4f4:	00e2082a 	slt	at,a3,v0
     4f8:	50200003 	beqzl	at,508 <func_80082850+0x298>
     4fc:	9462024e 	lhu	v0,590(v1)
     500:	a467024c 	sh	a3,588(v1)
     504:	9462024e 	lhu	v0,590(v1)
     508:	10400004 	beqz	v0,51c <func_80082850+0x2ac>
     50c:	00e2082a 	slt	at,a3,v0
     510:	50200003 	beqzl	at,520 <func_80082850+0x2b0>
     514:	94620250 	lhu	v0,592(v1)
     518:	a467024e 	sh	a3,590(v1)
     51c:	94620250 	lhu	v0,592(v1)
     520:	10400004 	beqz	v0,534 <func_80082850+0x2c4>
     524:	00e2082a 	slt	at,a3,v0
     528:	50200003 	beqzl	at,538 <func_80082850+0x2c8>
     52c:	94620252 	lhu	v0,594(v1)
     530:	a4670250 	sh	a3,592(v1)
     534:	94620252 	lhu	v0,594(v1)
     538:	10400004 	beqz	v0,54c <func_80082850+0x2dc>
     53c:	00e2082a 	slt	at,a3,v0
     540:	50200003 	beqzl	at,550 <func_80082850+0x2e0>
     544:	94620254 	lhu	v0,596(v1)
     548:	a4670252 	sh	a3,594(v1)
     54c:	94620254 	lhu	v0,596(v1)
     550:	10400004 	beqz	v0,564 <func_80082850+0x2f4>
     554:	00e2082a 	slt	at,a3,v0
     558:	50200003 	beqzl	at,568 <func_80082850+0x2f8>
     55c:	946b0246 	lhu	t3,582(v1)
     560:	a4670254 	sh	a3,596(v1)
     564:	946b0246 	lhu	t3,582(v1)
     568:	87ac0022 	lh	t4,34(sp)
     56c:	510b015c 	beql	t0,t3,ae0 <func_80082850+0x870>
     570:	8fb80028 	lw	t8,40(sp)
     574:	10000159 	b	adc <func_80082850+0x86c>
     578:	a46c0246 	sh	t4,582(v1)
     57c:	00072c00 	sll	a1,a3,0x10
     580:	00052c03 	sra	a1,a1,0x10
     584:	8fa40028 	lw	a0,40(sp)
     588:	87a60022 	lh	a2,34(sp)
     58c:	0c000000 	jal	0 <Interface_ChangeAlpha>
     590:	a7a7002e 	sh	a3,46(sp)
     594:	8fa30028 	lw	v1,40(sp)
     598:	3c010001 	lui	at,0x1
     59c:	342104f0 	ori	at,at,0x4f0
     5a0:	00611821 	addu	v1,v1,at
     5a4:	94620254 	lhu	v0,596(v1)
     5a8:	87a40022 	lh	a0,34(sp)
     5ac:	87a7002e 	lh	a3,46(sp)
     5b0:	10400005 	beqz	v0,5c8 <func_80082850+0x358>
     5b4:	240800ff 	li	t0,255
     5b8:	00e2082a 	slt	at,a3,v0
     5bc:	50200003 	beqzl	at,5cc <func_80082850+0x35c>
     5c0:	946d0246 	lhu	t5,582(v1)
     5c4:	a4670254 	sh	a3,596(v1)
     5c8:	946d0246 	lhu	t5,582(v1)
     5cc:	510d0003 	beql	t0,t5,5dc <func_80082850+0x36c>
     5d0:	946e0250 	lhu	t6,592(v1)
     5d4:	a4640246 	sh	a0,582(v1)
     5d8:	946e0250 	lhu	t6,592(v1)
     5dc:	510e0003 	beql	t0,t6,5ec <func_80082850+0x37c>
     5e0:	946f0252 	lhu	t7,594(v1)
     5e4:	a4640250 	sh	a0,592(v1)
     5e8:	946f0252 	lhu	t7,594(v1)
     5ec:	510f013c 	beql	t0,t7,ae0 <func_80082850+0x870>
     5f0:	8fb80028 	lw	t8,40(sp)
     5f4:	10000139 	b	adc <func_80082850+0x86c>
     5f8:	a4640252 	sh	a0,594(v1)
     5fc:	00072c00 	sll	a1,a3,0x10
     600:	00052c03 	sra	a1,a1,0x10
     604:	8fa40028 	lw	a0,40(sp)
     608:	0c000000 	jal	0 <Interface_ChangeAlpha>
     60c:	87a60022 	lh	a2,34(sp)
     610:	8fa30028 	lw	v1,40(sp)
     614:	3c010001 	lui	at,0x1
     618:	342104f0 	ori	at,at,0x4f0
     61c:	00611821 	addu	v1,v1,at
     620:	94780246 	lhu	t8,582(v1)
     624:	240800ff 	li	t0,255
     628:	87a40022 	lh	a0,34(sp)
     62c:	51180003 	beql	t0,t8,63c <func_80082850+0x3cc>
     630:	94790250 	lhu	t9,592(v1)
     634:	a4640246 	sh	a0,582(v1)
     638:	94790250 	lhu	t9,592(v1)
     63c:	51190003 	beql	t0,t9,64c <func_80082850+0x3dc>
     640:	94690252 	lhu	t1,594(v1)
     644:	a4640250 	sh	a0,592(v1)
     648:	94690252 	lhu	t1,594(v1)
     64c:	51090003 	beql	t0,t1,65c <func_80082850+0x3ec>
     650:	8faa0028 	lw	t2,40(sp)
     654:	a4640252 	sh	a0,594(v1)
     658:	8faa0028 	lw	t2,40(sp)
     65c:	854b00a4 	lh	t3,164(t2)
     660:	256cffaf 	addiu	t4,t3,-81
     664:	2d810014 	sltiu	at,t4,20
     668:	1020000f 	beqz	at,6a8 <func_80082850+0x438>
     66c:	000c6080 	sll	t4,t4,0x2
     670:	3c010000 	lui	at,0x0
     674:	002c0821 	addu	at,at,t4
     678:	8c2c0898 	lw	t4,2200(at)
     67c:	01800008 	jr	t4
     680:	00000000 	nop
     684:	946d0254 	lhu	t5,596(v1)
     688:	240e00aa 	li	t6,170
     68c:	29a100aa 	slti	at,t5,170
     690:	10200003 	beqz	at,6a0 <func_80082850+0x430>
     694:	00000000 	nop
     698:	10000110 	b	adc <func_80082850+0x86c>
     69c:	a4640254 	sh	a0,596(v1)
     6a0:	1000010e 	b	adc <func_80082850+0x86c>
     6a4:	a46e0254 	sh	t6,596(v1)
     6a8:	946f0254 	lhu	t7,596(v1)
     6ac:	510f010c 	beql	t0,t7,ae0 <func_80082850+0x870>
     6b0:	8fb80028 	lw	t8,40(sp)
     6b4:	10000109 	b	adc <func_80082850+0x86c>
     6b8:	a4640254 	sh	a0,596(v1)
     6bc:	8fa30028 	lw	v1,40(sp)
     6c0:	3c010001 	lui	at,0x1
     6c4:	342104f0 	ori	at,at,0x4f0
     6c8:	00611821 	addu	v1,v1,at
     6cc:	94620254 	lhu	v0,596(v1)
     6d0:	10400004 	beqz	v0,6e4 <func_80082850+0x474>
     6d4:	00e2082a 	slt	at,a3,v0
     6d8:	50200003 	beqzl	at,6e8 <func_80082850+0x478>
     6dc:	8fa40028 	lw	a0,40(sp)
     6e0:	a4670254 	sh	a3,596(v1)
     6e4:	8fa40028 	lw	a0,40(sp)
     6e8:	87a50022 	lh	a1,34(sp)
     6ec:	0c000000 	jal	0 <Interface_ChangeAlpha>
     6f0:	afa3001c 	sw	v1,28(sp)
     6f4:	8fa3001c 	lw	v1,28(sp)
     6f8:	240800ff 	li	t0,255
     6fc:	87a40022 	lh	a0,34(sp)
     700:	94780250 	lhu	t8,592(v1)
     704:	51180003 	beql	t0,t8,714 <func_80082850+0x4a4>
     708:	94790252 	lhu	t9,594(v1)
     70c:	a4640250 	sh	a0,592(v1)
     710:	94790252 	lhu	t9,594(v1)
     714:	511900f2 	beql	t0,t9,ae0 <func_80082850+0x870>
     718:	8fb80028 	lw	t8,40(sp)
     71c:	100000ef 	b	adc <func_80082850+0x86c>
     720:	a4640252 	sh	a0,594(v1)
     724:	8fa30028 	lw	v1,40(sp)
     728:	3c010001 	lui	at,0x1
     72c:	342104f0 	ori	at,at,0x4f0
     730:	00611821 	addu	v1,v1,at
     734:	94620248 	lhu	v0,584(v1)
     738:	10400004 	beqz	v0,74c <func_80082850+0x4dc>
     73c:	00e2082a 	slt	at,a3,v0
     740:	50200003 	beqzl	at,750 <func_80082850+0x4e0>
     744:	94620246 	lhu	v0,582(v1)
     748:	a4670248 	sh	a3,584(v1)
     74c:	94620246 	lhu	v0,582(v1)
     750:	10400004 	beqz	v0,764 <func_80082850+0x4f4>
     754:	00e2082a 	slt	at,a3,v0
     758:	50200003 	beqzl	at,768 <func_80082850+0x4f8>
     75c:	9462024a 	lhu	v0,586(v1)
     760:	a4670246 	sh	a3,582(v1)
     764:	9462024a 	lhu	v0,586(v1)
     768:	10400004 	beqz	v0,77c <func_80082850+0x50c>
     76c:	00e2082a 	slt	at,a3,v0
     770:	50200003 	beqzl	at,780 <func_80082850+0x510>
     774:	9462024c 	lhu	v0,588(v1)
     778:	a467024a 	sh	a3,586(v1)
     77c:	9462024c 	lhu	v0,588(v1)
     780:	10400004 	beqz	v0,794 <func_80082850+0x524>
     784:	00e2082a 	slt	at,a3,v0
     788:	50200003 	beqzl	at,798 <func_80082850+0x528>
     78c:	9462024e 	lhu	v0,590(v1)
     790:	a467024c 	sh	a3,588(v1)
     794:	9462024e 	lhu	v0,590(v1)
     798:	10400004 	beqz	v0,7ac <func_80082850+0x53c>
     79c:	00e2082a 	slt	at,a3,v0
     7a0:	50200003 	beqzl	at,7b0 <func_80082850+0x540>
     7a4:	94620254 	lhu	v0,596(v1)
     7a8:	a467024e 	sh	a3,590(v1)
     7ac:	94620254 	lhu	v0,596(v1)
     7b0:	10400004 	beqz	v0,7c4 <func_80082850+0x554>
     7b4:	00e2082a 	slt	at,a3,v0
     7b8:	50200003 	beqzl	at,7c8 <func_80082850+0x558>
     7bc:	94690250 	lhu	t1,592(v1)
     7c0:	a4670254 	sh	a3,596(v1)
     7c4:	94690250 	lhu	t1,592(v1)
     7c8:	87aa0022 	lh	t2,34(sp)
     7cc:	51090003 	beql	t0,t1,7dc <func_80082850+0x56c>
     7d0:	946b0252 	lhu	t3,594(v1)
     7d4:	a46a0250 	sh	t2,592(v1)
     7d8:	946b0252 	lhu	t3,594(v1)
     7dc:	87ac0022 	lh	t4,34(sp)
     7e0:	510b00bf 	beql	t0,t3,ae0 <func_80082850+0x870>
     7e4:	8fb80028 	lw	t8,40(sp)
     7e8:	100000bc 	b	adc <func_80082850+0x86c>
     7ec:	a46c0252 	sh	t4,594(v1)
     7f0:	8fa30028 	lw	v1,40(sp)
     7f4:	3c010001 	lui	at,0x1
     7f8:	342104f0 	ori	at,at,0x4f0
     7fc:	00611821 	addu	v1,v1,at
     800:	94620246 	lhu	v0,582(v1)
     804:	10400004 	beqz	v0,818 <func_80082850+0x5a8>
     808:	00e2082a 	slt	at,a3,v0
     80c:	50200003 	beqzl	at,81c <func_80082850+0x5ac>
     810:	9462024a 	lhu	v0,586(v1)
     814:	a4670246 	sh	a3,582(v1)
     818:	9462024a 	lhu	v0,586(v1)
     81c:	10400004 	beqz	v0,830 <func_80082850+0x5c0>
     820:	00e2082a 	slt	at,a3,v0
     824:	50200003 	beqzl	at,834 <func_80082850+0x5c4>
     828:	9462024c 	lhu	v0,588(v1)
     82c:	a467024a 	sh	a3,586(v1)
     830:	9462024c 	lhu	v0,588(v1)
     834:	10400004 	beqz	v0,848 <func_80082850+0x5d8>
     838:	00e2082a 	slt	at,a3,v0
     83c:	50200003 	beqzl	at,84c <func_80082850+0x5dc>
     840:	9462024e 	lhu	v0,590(v1)
     844:	a467024c 	sh	a3,588(v1)
     848:	9462024e 	lhu	v0,590(v1)
     84c:	10400004 	beqz	v0,860 <func_80082850+0x5f0>
     850:	00e2082a 	slt	at,a3,v0
     854:	50200003 	beqzl	at,864 <func_80082850+0x5f4>
     858:	94620250 	lhu	v0,592(v1)
     85c:	a467024e 	sh	a3,590(v1)
     860:	94620250 	lhu	v0,592(v1)
     864:	10400004 	beqz	v0,878 <func_80082850+0x608>
     868:	00e2082a 	slt	at,a3,v0
     86c:	50200003 	beqzl	at,87c <func_80082850+0x60c>
     870:	94620252 	lhu	v0,594(v1)
     874:	a4670250 	sh	a3,592(v1)
     878:	94620252 	lhu	v0,594(v1)
     87c:	10400004 	beqz	v0,890 <func_80082850+0x620>
     880:	00e2082a 	slt	at,a3,v0
     884:	50200003 	beqzl	at,894 <func_80082850+0x624>
     888:	94620254 	lhu	v0,596(v1)
     88c:	a4670252 	sh	a3,594(v1)
     890:	94620254 	lhu	v0,596(v1)
     894:	10400004 	beqz	v0,8a8 <func_80082850+0x638>
     898:	00e2082a 	slt	at,a3,v0
     89c:	50200003 	beqzl	at,8ac <func_80082850+0x63c>
     8a0:	946d0248 	lhu	t5,584(v1)
     8a4:	a4670254 	sh	a3,596(v1)
     8a8:	946d0248 	lhu	t5,584(v1)
     8ac:	87ae0022 	lh	t6,34(sp)
     8b0:	510d008b 	beql	t0,t5,ae0 <func_80082850+0x870>
     8b4:	8fb80028 	lw	t8,40(sp)
     8b8:	10000088 	b	adc <func_80082850+0x86c>
     8bc:	a46e0248 	sh	t6,584(v1)
     8c0:	8fa30028 	lw	v1,40(sp)
     8c4:	3c010001 	lui	at,0x1
     8c8:	342104f0 	ori	at,at,0x4f0
     8cc:	00611821 	addu	v1,v1,at
     8d0:	94620248 	lhu	v0,584(v1)
     8d4:	10400004 	beqz	v0,8e8 <func_80082850+0x678>
     8d8:	00e2082a 	slt	at,a3,v0
     8dc:	50200003 	beqzl	at,8ec <func_80082850+0x67c>
     8e0:	94620246 	lhu	v0,582(v1)
     8e4:	a4670248 	sh	a3,584(v1)
     8e8:	94620246 	lhu	v0,582(v1)
     8ec:	10400004 	beqz	v0,900 <func_80082850+0x690>
     8f0:	00e2082a 	slt	at,a3,v0
     8f4:	50200003 	beqzl	at,904 <func_80082850+0x694>
     8f8:	9462024a 	lhu	v0,586(v1)
     8fc:	a4670246 	sh	a3,582(v1)
     900:	9462024a 	lhu	v0,586(v1)
     904:	10400004 	beqz	v0,918 <func_80082850+0x6a8>
     908:	00e2082a 	slt	at,a3,v0
     90c:	50200003 	beqzl	at,91c <func_80082850+0x6ac>
     910:	9462024c 	lhu	v0,588(v1)
     914:	a467024a 	sh	a3,586(v1)
     918:	9462024c 	lhu	v0,588(v1)
     91c:	10400004 	beqz	v0,930 <func_80082850+0x6c0>
     920:	00e2082a 	slt	at,a3,v0
     924:	50200003 	beqzl	at,934 <func_80082850+0x6c4>
     928:	9462024e 	lhu	v0,590(v1)
     92c:	a467024c 	sh	a3,588(v1)
     930:	9462024e 	lhu	v0,590(v1)
     934:	10400004 	beqz	v0,948 <func_80082850+0x6d8>
     938:	00e2082a 	slt	at,a3,v0
     93c:	50200003 	beqzl	at,94c <func_80082850+0x6dc>
     940:	94620254 	lhu	v0,596(v1)
     944:	a467024e 	sh	a3,590(v1)
     948:	94620254 	lhu	v0,596(v1)
     94c:	10400004 	beqz	v0,960 <func_80082850+0x6f0>
     950:	00e2082a 	slt	at,a3,v0
     954:	50200003 	beqzl	at,964 <func_80082850+0x6f4>
     958:	94620252 	lhu	v0,594(v1)
     95c:	a4670254 	sh	a3,596(v1)
     960:	94620252 	lhu	v0,594(v1)
     964:	10400004 	beqz	v0,978 <func_80082850+0x708>
     968:	00e2082a 	slt	at,a3,v0
     96c:	50200003 	beqzl	at,97c <func_80082850+0x70c>
     970:	946f0250 	lhu	t7,592(v1)
     974:	a4670252 	sh	a3,594(v1)
     978:	946f0250 	lhu	t7,592(v1)
     97c:	87b80022 	lh	t8,34(sp)
     980:	510f0057 	beql	t0,t7,ae0 <func_80082850+0x870>
     984:	8fb80028 	lw	t8,40(sp)
     988:	10000054 	b	adc <func_80082850+0x86c>
     98c:	a4780250 	sh	t8,592(v1)
     990:	8fa30028 	lw	v1,40(sp)
     994:	3c010001 	lui	at,0x1
     998:	342104f0 	ori	at,at,0x4f0
     99c:	00611821 	addu	v1,v1,at
     9a0:	94790246 	lhu	t9,582(v1)
     9a4:	87a90022 	lh	t1,34(sp)
     9a8:	51190003 	beql	t0,t9,9b8 <func_80082850+0x748>
     9ac:	946a0248 	lhu	t2,584(v1)
     9b0:	a4690246 	sh	t1,582(v1)
     9b4:	946a0248 	lhu	t2,584(v1)
     9b8:	87ab0022 	lh	t3,34(sp)
     9bc:	510a0003 	beql	t0,t2,9cc <func_80082850+0x75c>
     9c0:	946c0254 	lhu	t4,596(v1)
     9c4:	a46b0248 	sh	t3,584(v1)
     9c8:	946c0254 	lhu	t4,596(v1)
     9cc:	87ad0022 	lh	t5,34(sp)
     9d0:	510c0003 	beql	t0,t4,9e0 <func_80082850+0x770>
     9d4:	9462024a 	lhu	v0,586(v1)
     9d8:	a46d0254 	sh	t5,596(v1)
     9dc:	9462024a 	lhu	v0,586(v1)
     9e0:	10400004 	beqz	v0,9f4 <func_80082850+0x784>
     9e4:	00e2082a 	slt	at,a3,v0
     9e8:	50200003 	beqzl	at,9f8 <func_80082850+0x788>
     9ec:	9462024c 	lhu	v0,588(v1)
     9f0:	a467024a 	sh	a3,586(v1)
     9f4:	9462024c 	lhu	v0,588(v1)
     9f8:	10400004 	beqz	v0,a0c <func_80082850+0x79c>
     9fc:	00e2082a 	slt	at,a3,v0
     a00:	50200003 	beqzl	at,a10 <func_80082850+0x7a0>
     a04:	9462024e 	lhu	v0,590(v1)
     a08:	a467024c 	sh	a3,588(v1)
     a0c:	9462024e 	lhu	v0,590(v1)
     a10:	10400004 	beqz	v0,a24 <func_80082850+0x7b4>
     a14:	00e2082a 	slt	at,a3,v0
     a18:	50200003 	beqzl	at,a28 <func_80082850+0x7b8>
     a1c:	94620252 	lhu	v0,594(v1)
     a20:	a467024e 	sh	a3,590(v1)
     a24:	94620252 	lhu	v0,594(v1)
     a28:	10400004 	beqz	v0,a3c <func_80082850+0x7cc>
     a2c:	00e2082a 	slt	at,a3,v0
     a30:	50200003 	beqzl	at,a40 <func_80082850+0x7d0>
     a34:	94620250 	lhu	v0,592(v1)
     a38:	a4670252 	sh	a3,594(v1)
     a3c:	94620250 	lhu	v0,592(v1)
     a40:	10400026 	beqz	v0,adc <func_80082850+0x86c>
     a44:	00e2082a 	slt	at,a3,v0
     a48:	50200025 	beqzl	at,ae0 <func_80082850+0x870>
     a4c:	8fb80028 	lw	t8,40(sp)
     a50:	10000022 	b	adc <func_80082850+0x86c>
     a54:	a4670250 	sh	a3,592(v1)
     a58:	00072c00 	sll	a1,a3,0x10
     a5c:	00052c03 	sra	a1,a1,0x10
     a60:	8fa40028 	lw	a0,40(sp)
     a64:	87a60022 	lh	a2,34(sp)
     a68:	0c000000 	jal	0 <Interface_ChangeAlpha>
     a6c:	a7a7002e 	sh	a3,46(sp)
     a70:	8fa30028 	lw	v1,40(sp)
     a74:	3c010001 	lui	at,0x1
     a78:	342104f0 	ori	at,at,0x4f0
     a7c:	00611821 	addu	v1,v1,at
     a80:	94620254 	lhu	v0,596(v1)
     a84:	87a40022 	lh	a0,34(sp)
     a88:	87a7002e 	lh	a3,46(sp)
     a8c:	10400005 	beqz	v0,aa4 <func_80082850+0x834>
     a90:	240800ff 	li	t0,255
     a94:	00e2082a 	slt	at,a3,v0
     a98:	50200003 	beqzl	at,aa8 <func_80082850+0x838>
     a9c:	94620246 	lhu	v0,582(v1)
     aa0:	a4670254 	sh	a3,596(v1)
     aa4:	94620246 	lhu	v0,582(v1)
     aa8:	10400004 	beqz	v0,abc <func_80082850+0x84c>
     aac:	00e2082a 	slt	at,a3,v0
     ab0:	50200003 	beqzl	at,ac0 <func_80082850+0x850>
     ab4:	946e0250 	lhu	t6,592(v1)
     ab8:	a4670246 	sh	a3,582(v1)
     abc:	946e0250 	lhu	t6,592(v1)
     ac0:	510e0003 	beql	t0,t6,ad0 <func_80082850+0x860>
     ac4:	946f0252 	lhu	t7,594(v1)
     ac8:	a4640250 	sh	a0,592(v1)
     acc:	946f0252 	lhu	t7,594(v1)
     ad0:	510f0003 	beql	t0,t7,ae0 <func_80082850+0x870>
     ad4:	8fb80028 	lw	t8,40(sp)
     ad8:	a4640252 	sh	a0,594(v1)
     adc:	8fb80028 	lw	t8,40(sp)
     ae0:	3c190001 	lui	t9,0x1
     ae4:	24010001 	li	at,1
     ae8:	0338c821 	addu	t9,t9,t8
     aec:	93391cbf 	lbu	t9,7359(t9)
     af0:	17210009 	bne	t9,at,b18 <func_80082850+0x8a8>
     af4:	3c010001 	lui	at,0x1
     af8:	342104f0 	ori	at,at,0x4f0
     afc:	03011821 	addu	v1,t8,at
     b00:	94690254 	lhu	t1,596(v1)
     b04:	240a00ff 	li	t2,255
     b08:	292100ff 	slti	at,t1,255
     b0c:	54200003 	bnezl	at,b1c <func_80082850+0x8ac>
     b10:	8fbf0014 	lw	ra,20(sp)
     b14:	a46a0254 	sh	t2,596(v1)
     b18:	8fbf0014 	lw	ra,20(sp)
     b1c:	27bd0028 	addiu	sp,sp,40
     b20:	03e00008 	jr	ra
     b24:	00000000 	nop

00000b28 <func_80083108>:
     b28:	3c060000 	lui	a2,0x0
     b2c:	24c60000 	addiu	a2,a2,0
     b30:	27bdffc8 	addiu	sp,sp,-56
     b34:	8cc20008 	lw	v0,8(a2)
     b38:	afbf0014 	sw	ra,20(sp)
     b3c:	afa40038 	sw	a0,56(sp)
     b40:	8c8f1c44 	lw	t7,7236(a0)
     b44:	3403fff0 	li	v1,0xfff0
     b48:	0043082a 	slt	at,v0,v1
     b4c:	00004025 	move	t0,zero
     b50:	14200007 	bnez	at,b70 <func_80083108+0x48>
     b54:	afaf0030 	sw	t7,48(sp)
     b58:	849800a4 	lh	t8,164(a0)
     b5c:	24010063 	li	at,99
     b60:	170103b4 	bne	t8,at,1a34 <func_80083108+0xf0c>
     b64:	00000000 	nop
     b68:	146203b2 	bne	v1,v0,1a34 <func_80083108+0xf0c>
     b6c:	00000000 	nop
     b70:	8fb90030 	lw	t9,48(sp)
     b74:	a0c013e7 	sb	zero,5095(a2)
     b78:	8fb80038 	lw	t8,56(sp)
     b7c:	8f2f067c 	lw	t7,1660(t9)
     b80:	3c010001 	lui	at,0x1
     b84:	03015021 	addu	t2,t8,at
     b88:	000f7200 	sll	t6,t7,0x8
     b8c:	05c20013 	bltzl	t6,bdc <func_80083108+0xb4>
     b90:	90ce0068 	lbu	t6,104(a2)
     b94:	81591e5c 	lb	t9,7772(t2)
     b98:	2b210002 	slti	at,t9,2
     b9c:	5020000f 	beqzl	at,bdc <func_80083108+0xb4>
     ba0:	90ce0068 	lbu	t6,104(a2)
     ba4:	870f00a4 	lh	t7,164(t8)
     ba8:	2401004b 	li	at,75
     bac:	03002025 	move	a0,t8
     bb0:	15e100c0 	bne	t7,at,eb4 <func_80083108+0x38c>
     bb4:	24050038 	li	a1,56
     bb8:	a7a80028 	sh	t0,40(sp)
     bbc:	0c000000 	jal	0 <Interface_ChangeAlpha>
     bc0:	afaa0018 	sw	t2,24(sp)
     bc4:	3c060000 	lui	a2,0x0
     bc8:	24c60000 	addiu	a2,a2,0
     bcc:	87a80028 	lh	t0,40(sp)
     bd0:	104000b8 	beqz	v0,eb4 <func_80083108+0x38c>
     bd4:	8faa0018 	lw	t2,24(sp)
     bd8:	90ce0068 	lbu	t6,104(a2)
     bdc:	240d00ff 	li	t5,255
     be0:	24190001 	li	t9,1
     be4:	11ae00a8 	beq	t5,t6,e88 <func_80083108+0x360>
     be8:	8faf0030 	lw	t7,48(sp)
     bec:	90cf13e2 	lbu	t7,5090(a2)
     bf0:	8faa0038 	lw	t2,56(sp)
     bf4:	3c010001 	lui	at,0x1
     bf8:	a0d913e7 	sb	t9,5095(a2)
     bfc:	15af0005 	bne	t5,t7,c14 <func_80083108+0xec>
     c00:	01415021 	addu	t2,t2,at
     c04:	a0c013e5 	sb	zero,5093(a2)
     c08:	a0c013e4 	sb	zero,5092(a2)
     c0c:	a0c013e3 	sb	zero,5091(a2)
     c10:	a0c013e2 	sb	zero,5090(a2)
     c14:	90c30068 	lbu	v1,104(a2)
     c18:	24010006 	li	at,6
     c1c:	1061005b 	beq	v1,at,d8c <func_80083108+0x264>
     c20:	24010003 	li	at,3
     c24:	10610059 	beq	v1,at,d8c <func_80083108+0x264>
     c28:	24010009 	li	at,9
     c2c:	50610058 	beql	v1,at,d90 <func_80083108+0x268>
     c30:	914e241b 	lbu	t6,9243(t2)
     c34:	51a30056 	beql	t5,v1,d90 <func_80083108+0x268>
     c38:	914e241b 	lbu	t6,9243(t2)
     c3c:	8fb80038 	lw	t8,56(sp)
     c40:	a0c313e2 	sb	v1,5090(a2)
     c44:	2401004b 	li	at,75
     c48:	870e00a4 	lh	t6,164(t8)
     c4c:	24050038 	li	a1,56
     c50:	03002025 	move	a0,t8
     c54:	55c10018 	bnel	t6,at,cb8 <func_80083108+0x190>
     c58:	240f0003 	li	t7,3
     c5c:	a7a80028 	sh	t0,40(sp)
     c60:	0c000000 	jal	0 <Interface_ChangeAlpha>
     c64:	afaa0018 	sw	t2,24(sp)
     c68:	3c060000 	lui	a2,0x0
     c6c:	24c60000 	addiu	a2,a2,0
     c70:	87a80028 	lh	t0,40(sp)
     c74:	8faa0018 	lw	t2,24(sp)
     c78:	1040000e 	beqz	v0,cb4 <func_80083108+0x18c>
     c7c:	240d00ff 	li	t5,255
     c80:	24190009 	li	t9,9
     c84:	a0d90068 	sb	t9,104(a2)
     c88:	8fa40038 	lw	a0,56(sp)
     c8c:	00002825 	move	a1,zero
     c90:	a7a80028 	sh	t0,40(sp)
     c94:	0c000000 	jal	0 <Interface_ChangeAlpha>
     c98:	afaa0018 	sw	t2,24(sp)
     c9c:	3c060000 	lui	a2,0x0
     ca0:	24c60000 	addiu	a2,a2,0
     ca4:	87a80028 	lh	t0,40(sp)
     ca8:	8faa0018 	lw	t2,24(sp)
     cac:	1000002c 	b	d60 <func_80083108+0x238>
     cb0:	240900ff 	li	t1,255
     cb4:	240f0003 	li	t7,3
     cb8:	a0cf0068 	sb	t7,104(a2)
     cbc:	814e1e5c 	lb	t6,7772(t2)
     cc0:	24070005 	li	a3,5
     cc4:	00002825 	move	a1,zero
     cc8:	29c10002 	slti	at,t6,2
     ccc:	54200016 	bnezl	at,d28 <func_80083108+0x200>
     cd0:	90cf0077 	lbu	t7,119(a2)
     cd4:	8cd80004 	lw	t8,4(a2)
     cd8:	24020011 	li	v0,17
     cdc:	24190006 	li	t9,6
     ce0:	13000003 	beqz	t8,cf0 <func_80083108+0x1c8>
     ce4:	00000000 	nop
     ce8:	10000001 	b	cf0 <func_80083108+0x1c8>
     cec:	24020005 	li	v0,5
     cf0:	54470003 	bnel	v0,a3,d00 <func_80083108+0x1d8>
     cf4:	8fa40038 	lw	a0,56(sp)
     cf8:	a0d90068 	sb	t9,104(a2)
     cfc:	8fa40038 	lw	a0,56(sp)
     d00:	a7a80028 	sh	t0,40(sp)
     d04:	0c000000 	jal	0 <Interface_ChangeAlpha>
     d08:	afaa0018 	sw	t2,24(sp)
     d0c:	3c060000 	lui	a2,0x0
     d10:	24c60000 	addiu	a2,a2,0
     d14:	87a80028 	lh	t0,40(sp)
     d18:	8faa0018 	lw	t2,24(sp)
     d1c:	10000010 	b	d60 <func_80083108+0x238>
     d20:	240900ff 	li	t1,255
     d24:	90cf0077 	lbu	t7,119(a2)
     d28:	240900ff 	li	t1,255
     d2c:	8fa40038 	lw	a0,56(sp)
     d30:	15af0003 	bne	t5,t7,d40 <func_80083108+0x218>
     d34:	00002825 	move	a1,zero
     d38:	10000009 	b	d60 <func_80083108+0x238>
     d3c:	a0c90068 	sb	t1,104(a2)
     d40:	a7a80028 	sh	t0,40(sp)
     d44:	0c000000 	jal	0 <Interface_ChangeAlpha>
     d48:	afaa0018 	sw	t2,24(sp)
     d4c:	3c060000 	lui	a2,0x0
     d50:	24c60000 	addiu	a2,a2,0
     d54:	87a80028 	lh	t0,40(sp)
     d58:	8faa0018 	lw	t2,24(sp)
     d5c:	240900ff 	li	t1,255
     d60:	a0c913e5 	sb	t1,5093(a2)
     d64:	a0c913e4 	sb	t1,5092(a2)
     d68:	a0c913e3 	sb	t1,5091(a2)
     d6c:	24040006 	li	a0,6
     d70:	a7a80028 	sh	t0,40(sp)
     d74:	0c000000 	jal	0 <Interface_ChangeAlpha>
     d78:	afaa0018 	sw	t2,24(sp)
     d7c:	3c060000 	lui	a2,0x0
     d80:	24c60000 	addiu	a2,a2,0
     d84:	87a80028 	lh	t0,40(sp)
     d88:	8faa0018 	lw	t2,24(sp)
     d8c:	914e241b 	lbu	t6,9243(t2)
     d90:	24040001 	li	a0,1
     d94:	51c00008 	beqzl	t6,db8 <func_80083108+0x290>
     d98:	94d81404 	lhu	t8,5124(a2)
     d9c:	0c000000 	jal	0 <Interface_ChangeAlpha>
     da0:	a7a80028 	sh	t0,40(sp)
     da4:	3c060000 	lui	a2,0x0
     da8:	24c60000 	addiu	a2,a2,0
     dac:	10000321 	b	1a34 <func_80083108+0xf0c>
     db0:	87a80028 	lh	t0,40(sp)
     db4:	94d81404 	lhu	t8,5124(a2)
     db8:	24030001 	li	v1,1
     dbc:	24040008 	li	a0,8
     dc0:	54780008 	bnel	v1,t8,de4 <func_80083108+0x2bc>
     dc4:	81591e5c 	lb	t9,7772(t2)
     dc8:	0c000000 	jal	0 <Interface_ChangeAlpha>
     dcc:	a7a80028 	sh	t0,40(sp)
     dd0:	3c060000 	lui	a2,0x0
     dd4:	24c60000 	addiu	a2,a2,0
     dd8:	10000316 	b	1a34 <func_80083108+0xf0c>
     ddc:	87a80028 	lh	t0,40(sp)
     de0:	81591e5c 	lb	t9,7772(t2)
     de4:	24040008 	li	a0,8
     de8:	8faf0038 	lw	t7,56(sp)
     dec:	2b210002 	slti	at,t9,2
     df0:	54200008 	bnezl	at,e14 <func_80083108+0x2ec>
     df4:	85ee00a4 	lh	t6,164(t7)
     df8:	0c000000 	jal	0 <Interface_ChangeAlpha>
     dfc:	a7a80028 	sh	t0,40(sp)
     e00:	3c060000 	lui	a2,0x0
     e04:	24c60000 	addiu	a2,a2,0
     e08:	1000030a 	b	1a34 <func_80083108+0xf0c>
     e0c:	87a80028 	lh	t0,40(sp)
     e10:	85ee00a4 	lh	t6,164(t7)
     e14:	2401004b 	li	at,75
     e18:	01e02025 	move	a0,t7
     e1c:	15c1000e 	bne	t6,at,e58 <func_80083108+0x330>
     e20:	24050038 	li	a1,56
     e24:	0c000000 	jal	0 <Interface_ChangeAlpha>
     e28:	a7a80028 	sh	t0,40(sp)
     e2c:	3c060000 	lui	a2,0x0
     e30:	24c60000 	addiu	a2,a2,0
     e34:	10400008 	beqz	v0,e58 <func_80083108+0x330>
     e38:	87a80028 	lh	t0,40(sp)
     e3c:	24040008 	li	a0,8
     e40:	0c000000 	jal	0 <Interface_ChangeAlpha>
     e44:	a7a80028 	sh	t0,40(sp)
     e48:	3c060000 	lui	a2,0x0
     e4c:	24c60000 	addiu	a2,a2,0
     e50:	100002f8 	b	1a34 <func_80083108+0xf0c>
     e54:	87a80028 	lh	t0,40(sp)
     e58:	8fb80030 	lw	t8,48(sp)
     e5c:	2404000c 	li	a0,12
     e60:	8f19067c 	lw	t9,1660(t8)
     e64:	00197200 	sll	t6,t9,0x8
     e68:	05c102f2 	bgez	t6,1a34 <func_80083108+0xf0c>
     e6c:	00000000 	nop
     e70:	0c000000 	jal	0 <Interface_ChangeAlpha>
     e74:	a7a80028 	sh	t0,40(sp)
     e78:	3c060000 	lui	a2,0x0
     e7c:	24c60000 	addiu	a2,a2,0
     e80:	100002ec 	b	1a34 <func_80083108+0xf0c>
     e84:	87a80028 	lh	t0,40(sp)
     e88:	8df8067c 	lw	t8,1660(t7)
     e8c:	2404000c 	li	a0,12
     e90:	0018ca00 	sll	t9,t8,0x8
     e94:	072102e7 	bgez	t9,1a34 <func_80083108+0xf0c>
     e98:	00000000 	nop
     e9c:	0c000000 	jal	0 <Interface_ChangeAlpha>
     ea0:	a7a80028 	sh	t0,40(sp)
     ea4:	3c060000 	lui	a2,0x0
     ea8:	24c60000 	addiu	a2,a2,0
     eac:	100002e1 	b	1a34 <func_80083108+0xf0c>
     eb0:	87a80028 	lh	t0,40(sp)
     eb4:	8fae0038 	lw	t6,56(sp)
     eb8:	24010044 	li	at,68
     ebc:	24040001 	li	a0,1
     ec0:	85c200a4 	lh	v0,164(t6)
     ec4:	54410008 	bnel	v0,at,ee8 <func_80083108+0x3c0>
     ec8:	24010049 	li	at,73
     ecc:	0c000000 	jal	0 <Interface_ChangeAlpha>
     ed0:	a7a80028 	sh	t0,40(sp)
     ed4:	3c060000 	lui	a2,0x0
     ed8:	24c60000 	addiu	a2,a2,0
     edc:	100002d5 	b	1a34 <func_80083108+0xf0c>
     ee0:	87a80028 	lh	t0,40(sp)
     ee4:	24010049 	li	at,73
     ee8:	1441004d 	bne	v0,at,1020 <func_80083108+0x4f8>
     eec:	8faf0038 	lw	t7,56(sp)
     ef0:	240f0002 	li	t7,2
     ef4:	a0cf13e7 	sb	t7,5095(a2)
     ef8:	91580750 	lbu	t8,1872(t2)
     efc:	5300001d 	beqzl	t8,f74 <func_80083108+0x44c>
     f00:	90cf0068 	lbu	t7,104(a2)
     f04:	90c30068 	lbu	v1,104(a2)
     f08:	24010059 	li	at,89
     f0c:	24190059 	li	t9,89
     f10:	1061000c 	beq	v1,at,f44 <func_80083108+0x41c>
     f14:	00002825 	move	a1,zero
     f18:	a0c313e2 	sb	v1,5090(a2)
     f1c:	a0d90068 	sb	t9,104(a2)
     f20:	a4c013ea 	sh	zero,5098(a2)
     f24:	8fa40038 	lw	a0,56(sp)
     f28:	0c000000 	jal	0 <Interface_ChangeAlpha>
     f2c:	a7a80028 	sh	t0,40(sp)
     f30:	0c000000 	jal	0 <Interface_ChangeAlpha>
     f34:	2404000c 	li	a0,12
     f38:	3c060000 	lui	a2,0x0
     f3c:	24c60000 	addiu	a2,a2,0
     f40:	87a80028 	lh	t0,40(sp)
     f44:	94ce13ea 	lhu	t6,5098(a2)
     f48:	2401000c 	li	at,12
     f4c:	2404000c 	li	a0,12
     f50:	11c102b8 	beq	t6,at,1a34 <func_80083108+0xf0c>
     f54:	00000000 	nop
     f58:	0c000000 	jal	0 <Interface_ChangeAlpha>
     f5c:	a7a80028 	sh	t0,40(sp)
     f60:	3c060000 	lui	a2,0x0
     f64:	24c60000 	addiu	a2,a2,0
     f68:	100002b2 	b	1a34 <func_80083108+0xf0c>
     f6c:	87a80028 	lh	t0,40(sp)
     f70:	90cf0068 	lbu	t7,104(a2)
     f74:	24010059 	li	at,89
     f78:	240200ff 	li	v0,255
     f7c:	15e1001a 	bne	t7,at,fe8 <func_80083108+0x4c0>
     f80:	24040032 	li	a0,50
     f84:	90d813e2 	lbu	t8,5090(a2)
     f88:	240d00ff 	li	t5,255
     f8c:	a4c013ea 	sh	zero,5098(a2)
     f90:	331900ff 	andi	t9,t8,0xff
     f94:	11b90008 	beq	t5,t9,fb8 <func_80083108+0x490>
     f98:	a0d80068 	sb	t8,104(a2)
     f9c:	8fa40038 	lw	a0,56(sp)
     fa0:	00002825 	move	a1,zero
     fa4:	0c000000 	jal	0 <Interface_ChangeAlpha>
     fa8:	a7a80028 	sh	t0,40(sp)
     fac:	3c060000 	lui	a2,0x0
     fb0:	24c60000 	addiu	a2,a2,0
     fb4:	87a80028 	lh	t0,40(sp)
     fb8:	240200ff 	li	v0,255
     fbc:	a0c213e5 	sb	v0,5093(a2)
     fc0:	a0c213e4 	sb	v0,5092(a2)
     fc4:	a0c213e3 	sb	v0,5091(a2)
     fc8:	a0c213e2 	sb	v0,5090(a2)
     fcc:	24040032 	li	a0,50
     fd0:	0c000000 	jal	0 <Interface_ChangeAlpha>
     fd4:	a7a80028 	sh	t0,40(sp)
     fd8:	3c060000 	lui	a2,0x0
     fdc:	24c60000 	addiu	a2,a2,0
     fe0:	10000294 	b	1a34 <func_80083108+0xf0c>
     fe4:	87a80028 	lh	t0,40(sp)
     fe8:	90ce13e2 	lbu	t6,5090(a2)
     fec:	55c00003 	bnezl	t6,ffc <func_80083108+0x4d4>
     ff0:	a0c213e5 	sb	v0,5093(a2)
     ff4:	a4c013ea 	sh	zero,5098(a2)
     ff8:	a0c213e5 	sb	v0,5093(a2)
     ffc:	a0c213e4 	sb	v0,5092(a2)
    1000:	a0c213e3 	sb	v0,5091(a2)
    1004:	a0c213e2 	sb	v0,5090(a2)
    1008:	0c000000 	jal	0 <Interface_ChangeAlpha>
    100c:	a7a80028 	sh	t0,40(sp)
    1010:	3c060000 	lui	a2,0x0
    1014:	24c60000 	addiu	a2,a2,0
    1018:	10000286 	b	1a34 <func_80083108+0xf0c>
    101c:	87a80028 	lh	t0,40(sp)
    1020:	3c180001 	lui	t8,0x1
    1024:	030fc021 	addu	t8,t8,t7
    1028:	931803dc 	lbu	t8,988(t8)
    102c:	01e02025 	move	a0,t7
    1030:	17000280 	bnez	t8,1a34 <func_80083108+0xf0c>
    1034:	00000000 	nop
    1038:	0c000000 	jal	0 <Interface_ChangeAlpha>
    103c:	a7a80028 	sh	t0,40(sp)
    1040:	3c060000 	lui	a2,0x0
    1044:	28410002 	slti	at,v0,2
    1048:	24c60000 	addiu	a2,a2,0
    104c:	14200045 	bnez	at,1164 <func_80083108+0x63c>
    1050:	87a80028 	lh	t0,40(sp)
    1054:	8fa40038 	lw	a0,56(sp)
    1058:	0c000000 	jal	0 <Interface_ChangeAlpha>
    105c:	a7a80028 	sh	t0,40(sp)
    1060:	3c060000 	lui	a2,0x0
    1064:	28410005 	slti	at,v0,5
    1068:	24c60000 	addiu	a2,a2,0
    106c:	1020003d 	beqz	at,1164 <func_80083108+0x63c>
    1070:	87a80028 	lh	t0,40(sp)
    1074:	90d913e2 	lbu	t9,5090(a2)
    1078:	240d00ff 	li	t5,255
    107c:	240900ff 	li	t1,255
    1080:	11b90002 	beq	t5,t9,108c <func_80083108+0x564>
    1084:	24050001 	li	a1,1
    1088:	24080001 	li	t0,1
    108c:	a0c913e2 	sb	t1,5090(a2)
    1090:	8fa40038 	lw	a0,56(sp)
    1094:	a7a5002a 	sh	a1,42(sp)
    1098:	0c000000 	jal	0 <Interface_ChangeAlpha>
    109c:	a7a80028 	sh	t0,40(sp)
    10a0:	3c060000 	lui	a2,0x0
    10a4:	24010002 	li	at,2
    10a8:	24c60000 	addiu	a2,a2,0
    10ac:	87a5002a 	lh	a1,42(sp)
    10b0:	87a80028 	lh	t0,40(sp)
    10b4:	240900ff 	li	t1,255
    10b8:	240d00ff 	li	t5,255
    10bc:	14410014 	bne	v0,at,1110 <func_80083108+0x5e8>
    10c0:	241f000a 	li	ra,10
    10c4:	00c51821 	addu	v1,a2,a1
    10c8:	90620068 	lbu	v0,104(v1)
    10cc:	2401000b 	li	at,11
    10d0:	53e2000a 	beql	ra,v0,10fc <func_80083108+0x5d4>
    10d4:	907813e2 	lbu	t8,5090(v1)
    10d8:	50410008 	beql	v0,at,10fc <func_80083108+0x5d4>
    10dc:	907813e2 	lbu	t8,5090(v1)
    10e0:	906e13e2 	lbu	t6,5090(v1)
    10e4:	15c00002 	bnez	t6,10f0 <func_80083108+0x5c8>
    10e8:	00000000 	nop
    10ec:	24080001 	li	t0,1
    10f0:	1000000d 	b	1128 <func_80083108+0x600>
    10f4:	a06913e2 	sb	t1,5090(v1)
    10f8:	907813e2 	lbu	t8,5090(v1)
    10fc:	15b80002 	bne	t5,t8,1108 <func_80083108+0x5e0>
    1100:	00000000 	nop
    1104:	24080001 	li	t0,1
    1108:	10000007 	b	1128 <func_80083108+0x600>
    110c:	a06013e2 	sb	zero,5090(v1)
    1110:	00c51821 	addu	v1,a2,a1
    1114:	906f13e2 	lbu	t7,5090(v1)
    1118:	55e00003 	bnezl	t7,1128 <func_80083108+0x600>
    111c:	a06913e2 	sb	t1,5090(v1)
    1120:	24080001 	li	t0,1
    1124:	a06913e2 	sb	t1,5090(v1)
    1128:	24a50001 	addiu	a1,a1,1
    112c:	00052c00 	sll	a1,a1,0x10
    1130:	00052c03 	sra	a1,a1,0x10
    1134:	28a10004 	slti	at,a1,4
    1138:	5420ffd6 	bnezl	at,1094 <func_80083108+0x56c>
    113c:	8fa40038 	lw	a0,56(sp)
    1140:	11000002 	beqz	t0,114c <func_80083108+0x624>
    1144:	24040032 	li	a0,50
    1148:	a4c013ea 	sh	zero,5098(a2)
    114c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    1150:	a7a80028 	sh	t0,40(sp)
    1154:	3c060000 	lui	a2,0x0
    1158:	24c60000 	addiu	a2,a2,0
    115c:	10000235 	b	1a34 <func_80083108+0xf0c>
    1160:	87a80028 	lh	t0,40(sp)
    1164:	8fb90030 	lw	t9,48(sp)
    1168:	8f22067c 	lw	v0,1660(t9)
    116c:	00027280 	sll	t6,v0,0xa
    1170:	05c20006 	bltzl	t6,118c <func_80083108+0x664>
    1174:	90ce13e2 	lbu	t6,5090(a2)
    1178:	8f380680 	lw	t8,1664(t9)
    117c:	00187b40 	sll	t7,t8,0xd
    1180:	05e30012 	bgezl	t7,11cc <func_80083108+0x6a4>
    1184:	94d913fa 	lhu	t9,5114(a2)
    1188:	90ce13e2 	lbu	t6,5090(a2)
    118c:	240d00ff 	li	t5,255
    1190:	240900ff 	li	t1,255
    1194:	11ae0227 	beq	t5,t6,1a34 <func_80083108+0xf0c>
    1198:	24040032 	li	a0,50
    119c:	a0c913e2 	sb	t1,5090(a2)
    11a0:	a0c913e3 	sb	t1,5091(a2)
    11a4:	a0c913e4 	sb	t1,5092(a2)
    11a8:	a0c913e5 	sb	t1,5093(a2)
    11ac:	a4c013ea 	sh	zero,5098(a2)
    11b0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    11b4:	a7a80028 	sh	t0,40(sp)
    11b8:	3c060000 	lui	a2,0x0
    11bc:	24c60000 	addiu	a2,a2,0
    11c0:	1000021c 	b	1a34 <func_80083108+0xf0c>
    11c4:	87a80028 	lh	t0,40(sp)
    11c8:	94d913fa 	lhu	t9,5114(a2)
    11cc:	24030001 	li	v1,1
    11d0:	3c010001 	lui	at,0x1
    11d4:	3338000f 	andi	t8,t9,0xf
    11d8:	14780057 	bne	v1,t8,1338 <func_80083108+0x810>
    11dc:	8fb90038 	lw	t9,56(sp)
    11e0:	00027a00 	sll	t7,v0,0x8
    11e4:	05e10013 	bgez	t7,1234 <func_80083108+0x70c>
    11e8:	240900ff 	li	t1,255
    11ec:	90c20068 	lbu	v0,104(a2)
    11f0:	240d00ff 	li	t5,255
    11f4:	24010003 	li	at,3
    11f8:	11a2000c 	beq	t5,v0,122c <func_80083108+0x704>
    11fc:	00000000 	nop
    1200:	1041000a 	beq	v0,at,122c <func_80083108+0x704>
    1204:	00000000 	nop
    1208:	90ce0077 	lbu	t6,119(a2)
    120c:	240900ff 	li	t1,255
    1210:	24190003 	li	t9,3
    1214:	55ae0004 	bnel	t5,t6,1228 <func_80083108+0x700>
    1218:	a0d90068 	sb	t9,104(a2)
    121c:	10000019 	b	1284 <func_80083108+0x75c>
    1220:	a0c90068 	sb	t1,104(a2)
    1224:	a0d90068 	sb	t9,104(a2)
    1228:	24080001 	li	t0,1
    122c:	10000015 	b	1284 <func_80083108+0x75c>
    1230:	240900ff 	li	t1,255
    1234:	90c30068 	lbu	v1,104(a2)
    1238:	240d00ff 	li	t5,255
    123c:	24080001 	li	t0,1
    1240:	11a30003 	beq	t5,v1,1250 <func_80083108+0x728>
    1244:	00601025 	move	v0,v1
    1248:	24010003 	li	at,3
    124c:	1441000d 	bne	v0,at,1284 <func_80083108+0x75c>
    1250:	2401003b 	li	at,59
    1254:	1041000a 	beq	v0,at,1280 <func_80083108+0x758>
    1258:	2401003c 	li	at,60
    125c:	10410008 	beq	v0,at,1280 <func_80083108+0x758>
    1260:	2401003d 	li	at,61
    1264:	10410006 	beq	v0,at,1280 <func_80083108+0x758>
    1268:	24010055 	li	at,85
    126c:	50410005 	beql	v0,at,1284 <func_80083108+0x75c>
    1270:	a0c313e2 	sb	v1,5090(a2)
    1274:	90d813e2 	lbu	t8,5090(a2)
    1278:	10000002 	b	1284 <func_80083108+0x75c>
    127c:	a0d80068 	sb	t8,104(a2)
    1280:	a0c313e2 	sb	v1,5090(a2)
    1284:	1100000a 	beqz	t0,12b0 <func_80083108+0x788>
    1288:	8fa40038 	lw	a0,56(sp)
    128c:	00002825 	move	a1,zero
    1290:	00004025 	move	t0,zero
    1294:	0c000000 	jal	0 <Interface_ChangeAlpha>
    1298:	a7a00028 	sh	zero,40(sp)
    129c:	3c060000 	lui	a2,0x0
    12a0:	24c60000 	addiu	a2,a2,0
    12a4:	87a80028 	lh	t0,40(sp)
    12a8:	240900ff 	li	t1,255
    12ac:	240d00ff 	li	t5,255
    12b0:	24050001 	li	a1,1
    12b4:	240c0008 	li	t4,8
    12b8:	240b0007 	li	t3,7
    12bc:	00c51821 	addu	v1,a2,a1
    12c0:	90620068 	lbu	v0,104(v1)
    12c4:	24a50001 	addiu	a1,a1,1
    12c8:	00052c00 	sll	a1,a1,0x10
    12cc:	11620009 	beq	t3,v0,12f4 <func_80083108+0x7cc>
    12d0:	00052c03 	sra	a1,a1,0x10
    12d4:	51820008 	beql	t4,v0,12f8 <func_80083108+0x7d0>
    12d8:	906e13e2 	lbu	t6,5090(v1)
    12dc:	906f13e2 	lbu	t7,5090(v1)
    12e0:	15e00002 	bnez	t7,12ec <func_80083108+0x7c4>
    12e4:	00000000 	nop
    12e8:	24080001 	li	t0,1
    12ec:	10000006 	b	1308 <func_80083108+0x7e0>
    12f0:	a06913e2 	sb	t1,5090(v1)
    12f4:	906e13e2 	lbu	t6,5090(v1)
    12f8:	55ae0003 	bnel	t5,t6,1308 <func_80083108+0x7e0>
    12fc:	a06013e2 	sb	zero,5090(v1)
    1300:	24080001 	li	t0,1
    1304:	a06013e2 	sb	zero,5090(v1)
    1308:	28a10004 	slti	at,a1,4
    130c:	5420ffec 	bnezl	at,12c0 <func_80083108+0x798>
    1310:	00c51821 	addu	v1,a2,a1
    1314:	11000002 	beqz	t0,1320 <func_80083108+0x7f8>
    1318:	24040032 	li	a0,50
    131c:	a4c013ea 	sh	zero,5098(a2)
    1320:	0c000000 	jal	0 <Interface_ChangeAlpha>
    1324:	a7a80028 	sh	t0,40(sp)
    1328:	3c060000 	lui	a2,0x0
    132c:	24c60000 	addiu	a2,a2,0
    1330:	100001c0 	b	1a34 <func_80083108+0xf0c>
    1334:	87a80028 	lh	t0,40(sp)
    1338:	342104f0 	ori	at,at,0x4f0
    133c:	0321c021 	addu	t8,t9,at
    1340:	3c020001 	lui	v0,0x1
    1344:	00591021 	addu	v0,v0,t9
    1348:	afb8001c 	sw	t8,28(sp)
    134c:	90420753 	lbu	v0,1875(v0)
    1350:	14400029 	bnez	v0,13f8 <func_80083108+0x8d0>
    1354:	00000000 	nop
    1358:	90c20068 	lbu	v0,104(a2)
    135c:	24010006 	li	at,6
    1360:	10410007 	beq	v0,at,1380 <func_80083108+0x858>
    1364:	24010003 	li	at,3
    1368:	10410005 	beq	v0,at,1380 <func_80083108+0x858>
    136c:	24010009 	li	at,9
    1370:	10410003 	beq	v0,at,1380 <func_80083108+0x858>
    1374:	240d00ff 	li	t5,255
    1378:	55a20015 	bnel	t5,v0,13d0 <func_80083108+0x8a8>
    137c:	90c213e2 	lbu	v0,5090(a2)
    1380:	240d00ff 	li	t5,255
    1384:	55a20005 	bnel	t5,v0,139c <func_80083108+0x874>
    1388:	90ce13e2 	lbu	t6,5090(a2)
    138c:	94cf0f32 	lhu	t7,3890(a2)
    1390:	55e0003e 	bnezl	t7,148c <func_80083108+0x964>
    1394:	8fb9001c 	lw	t9,28(sp)
    1398:	90ce13e2 	lbu	t6,5090(a2)
    139c:	24080001 	li	t0,1
    13a0:	00002825 	move	a1,zero
    13a4:	31d800ff 	andi	t8,t6,0xff
    13a8:	11b80037 	beq	t5,t8,1488 <func_80083108+0x960>
    13ac:	a0ce0068 	sb	t6,104(a2)
    13b0:	8fa40038 	lw	a0,56(sp)
    13b4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    13b8:	a7a80028 	sh	t0,40(sp)
    13bc:	3c060000 	lui	a2,0x0
    13c0:	24c60000 	addiu	a2,a2,0
    13c4:	10000030 	b	1488 <func_80083108+0x960>
    13c8:	87a80028 	lh	t0,40(sp)
    13cc:	90c213e2 	lbu	v0,5090(a2)
    13d0:	55a2002e 	bnel	t5,v0,148c <func_80083108+0x964>
    13d4:	8fb9001c 	lw	t9,28(sp)
    13d8:	11a20003 	beq	t5,v0,13e8 <func_80083108+0x8c0>
    13dc:	24080001 	li	t0,1
    13e0:	14400003 	bnez	v0,13f0 <func_80083108+0x8c8>
    13e4:	00000000 	nop
    13e8:	10000027 	b	1488 <func_80083108+0x960>
    13ec:	a0c013e2 	sb	zero,5090(a2)
    13f0:	10000025 	b	1488 <func_80083108+0x960>
    13f4:	a0c20068 	sb	v0,104(a2)
    13f8:	54620024 	bnel	v1,v0,148c <func_80083108+0x964>
    13fc:	8fb9001c 	lw	t9,28(sp)
    1400:	90c20068 	lbu	v0,104(a2)
    1404:	24010006 	li	at,6
    1408:	10410007 	beq	v0,at,1428 <func_80083108+0x900>
    140c:	24010003 	li	at,3
    1410:	10410005 	beq	v0,at,1428 <func_80083108+0x900>
    1414:	24010009 	li	at,9
    1418:	10410003 	beq	v0,at,1428 <func_80083108+0x900>
    141c:	240d00ff 	li	t5,255
    1420:	15a20014 	bne	t5,v0,1474 <func_80083108+0x94c>
    1424:	240900ff 	li	t1,255
    1428:	240d00ff 	li	t5,255
    142c:	55a20005 	bnel	t5,v0,1444 <func_80083108+0x91c>
    1430:	90cf13e2 	lbu	t7,5090(a2)
    1434:	94d90f32 	lhu	t9,3890(a2)
    1438:	57200014 	bnezl	t9,148c <func_80083108+0x964>
    143c:	8fb9001c 	lw	t9,28(sp)
    1440:	90cf13e2 	lbu	t7,5090(a2)
    1444:	24080001 	li	t0,1
    1448:	00002825 	move	a1,zero
    144c:	31ee00ff 	andi	t6,t7,0xff
    1450:	11ae000d 	beq	t5,t6,1488 <func_80083108+0x960>
    1454:	a0cf0068 	sb	t7,104(a2)
    1458:	8fa40038 	lw	a0,56(sp)
    145c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    1460:	a7a80028 	sh	t0,40(sp)
    1464:	3c060000 	lui	a2,0x0
    1468:	24c60000 	addiu	a2,a2,0
    146c:	10000006 	b	1488 <func_80083108+0x960>
    1470:	87a80028 	lh	t0,40(sp)
    1474:	90d813e2 	lbu	t8,5090(a2)
    1478:	57000003 	bnezl	t8,1488 <func_80083108+0x960>
    147c:	a0c913e2 	sb	t1,5090(a2)
    1480:	24080001 	li	t0,1
    1484:	a0c913e2 	sb	t1,5090(a2)
    1488:	8fb9001c 	lw	t9,28(sp)
    148c:	240900ff 	li	t1,255
    1490:	240d00ff 	li	t5,255
    1494:	93220265 	lbu	v0,613(t9)
    1498:	24050001 	li	a1,1
    149c:	10400014 	beqz	v0,14f0 <func_80083108+0x9c8>
    14a0:	00c51821 	addu	v1,a2,a1
    14a4:	90620068 	lbu	v0,104(v1)
    14a8:	24a50001 	addiu	a1,a1,1
    14ac:	00052c00 	sll	a1,a1,0x10
    14b0:	28410014 	slti	at,v0,20
    14b4:	14200009 	bnez	at,14dc <func_80083108+0x9b4>
    14b8:	00052c03 	sra	a1,a1,0x10
    14bc:	28410021 	slti	at,v0,33
    14c0:	50200007 	beqzl	at,14e0 <func_80083108+0x9b8>
    14c4:	28a10004 	slti	at,a1,4
    14c8:	906f13e2 	lbu	t7,5090(v1)
    14cc:	55e00003 	bnezl	t7,14dc <func_80083108+0x9b4>
    14d0:	a06913e2 	sb	t1,5090(v1)
    14d4:	24080001 	li	t0,1
    14d8:	a06913e2 	sb	t1,5090(v1)
    14dc:	28a10004 	slti	at,a1,4
    14e0:	5420fff0 	bnezl	at,14a4 <func_80083108+0x97c>
    14e4:	00c51821 	addu	v1,a2,a1
    14e8:	10000016 	b	1544 <func_80083108+0xa1c>
    14ec:	8fb8001c 	lw	t8,28(sp)
    14f0:	14400013 	bnez	v0,1540 <func_80083108+0xa18>
    14f4:	24050001 	li	a1,1
    14f8:	00c51821 	addu	v1,a2,a1
    14fc:	90620068 	lbu	v0,104(v1)
    1500:	24a50001 	addiu	a1,a1,1
    1504:	00052c00 	sll	a1,a1,0x10
    1508:	28410014 	slti	at,v0,20
    150c:	14200009 	bnez	at,1534 <func_80083108+0xa0c>
    1510:	00052c03 	sra	a1,a1,0x10
    1514:	28410021 	slti	at,v0,33
    1518:	50200007 	beqzl	at,1538 <func_80083108+0xa10>
    151c:	28a10004 	slti	at,a1,4
    1520:	906e13e2 	lbu	t6,5090(v1)
    1524:	55ae0003 	bnel	t5,t6,1534 <func_80083108+0xa0c>
    1528:	a06013e2 	sb	zero,5090(v1)
    152c:	24080001 	li	t0,1
    1530:	a06013e2 	sb	zero,5090(v1)
    1534:	28a10004 	slti	at,a1,4
    1538:	5420fff0 	bnezl	at,14fc <func_80083108+0x9d4>
    153c:	00c51821 	addu	v1,a2,a1
    1540:	8fb8001c 	lw	t8,28(sp)
    1544:	24050001 	li	a1,1
    1548:	241f000a 	li	ra,10
    154c:	93020266 	lbu	v0,614(t8)
    1550:	10400014 	beqz	v0,15a4 <func_80083108+0xa7c>
    1554:	00c51821 	addu	v1,a2,a1
    1558:	90620068 	lbu	v0,104(v1)
    155c:	24a50001 	addiu	a1,a1,1
    1560:	00052c00 	sll	a1,a1,0x10
    1564:	28410021 	slti	at,v0,33
    1568:	14200009 	bnez	at,1590 <func_80083108+0xa68>
    156c:	00052c03 	sra	a1,a1,0x10
    1570:	28410038 	slti	at,v0,56
    1574:	50200007 	beqzl	at,1594 <func_80083108+0xa6c>
    1578:	28a10004 	slti	at,a1,4
    157c:	907913e2 	lbu	t9,5090(v1)
    1580:	57200003 	bnezl	t9,1590 <func_80083108+0xa68>
    1584:	a06913e2 	sb	t1,5090(v1)
    1588:	24080001 	li	t0,1
    158c:	a06913e2 	sb	t1,5090(v1)
    1590:	28a10004 	slti	at,a1,4
    1594:	5420fff0 	bnezl	at,1558 <func_80083108+0xa30>
    1598:	00c51821 	addu	v1,a2,a1
    159c:	10000016 	b	15f8 <func_80083108+0xad0>
    15a0:	8fae001c 	lw	t6,28(sp)
    15a4:	14400013 	bnez	v0,15f4 <func_80083108+0xacc>
    15a8:	24050001 	li	a1,1
    15ac:	00c51821 	addu	v1,a2,a1
    15b0:	90620068 	lbu	v0,104(v1)
    15b4:	24a50001 	addiu	a1,a1,1
    15b8:	00052c00 	sll	a1,a1,0x10
    15bc:	28410021 	slti	at,v0,33
    15c0:	14200009 	bnez	at,15e8 <func_80083108+0xac0>
    15c4:	00052c03 	sra	a1,a1,0x10
    15c8:	28410038 	slti	at,v0,56
    15cc:	50200007 	beqzl	at,15ec <func_80083108+0xac4>
    15d0:	28a10004 	slti	at,a1,4
    15d4:	906f13e2 	lbu	t7,5090(v1)
    15d8:	55af0003 	bnel	t5,t7,15e8 <func_80083108+0xac0>
    15dc:	a06013e2 	sb	zero,5090(v1)
    15e0:	24080001 	li	t0,1
    15e4:	a06013e2 	sb	zero,5090(v1)
    15e8:	28a10004 	slti	at,a1,4
    15ec:	5420fff0 	bnezl	at,15b0 <func_80083108+0xa88>
    15f0:	00c51821 	addu	v1,a2,a1
    15f4:	8fae001c 	lw	t6,28(sp)
    15f8:	24050001 	li	a1,1
    15fc:	240c0008 	li	t4,8
    1600:	91c20267 	lbu	v0,615(t6)
    1604:	240b0007 	li	t3,7
    1608:	10400013 	beqz	v0,1658 <func_80083108+0xb30>
    160c:	00c51821 	addu	v1,a2,a1
    1610:	90620068 	lbu	v0,104(v1)
    1614:	24a50001 	addiu	a1,a1,1
    1618:	00052c00 	sll	a1,a1,0x10
    161c:	13e20004 	beq	ra,v0,1630 <func_80083108+0xb08>
    1620:	00052c03 	sra	a1,a1,0x10
    1624:	2401000b 	li	at,11
    1628:	54410007 	bnel	v0,at,1648 <func_80083108+0xb20>
    162c:	28a10004 	slti	at,a1,4
    1630:	907813e2 	lbu	t8,5090(v1)
    1634:	57000003 	bnezl	t8,1644 <func_80083108+0xb1c>
    1638:	a06913e2 	sb	t1,5090(v1)
    163c:	24080001 	li	t0,1
    1640:	a06913e2 	sb	t1,5090(v1)
    1644:	28a10004 	slti	at,a1,4
    1648:	5420fff1 	bnezl	at,1610 <func_80083108+0xae8>
    164c:	00c51821 	addu	v1,a2,a1
    1650:	10000016 	b	16ac <func_80083108+0xb84>
    1654:	8faf001c 	lw	t7,28(sp)
    1658:	14400013 	bnez	v0,16a8 <func_80083108+0xb80>
    165c:	24050001 	li	a1,1
    1660:	241f000a 	li	ra,10
    1664:	00c51821 	addu	v1,a2,a1
    1668:	90620068 	lbu	v0,104(v1)
    166c:	24a50001 	addiu	a1,a1,1
    1670:	00052c00 	sll	a1,a1,0x10
    1674:	13e20004 	beq	ra,v0,1688 <func_80083108+0xb60>
    1678:	00052c03 	sra	a1,a1,0x10
    167c:	2401000b 	li	at,11
    1680:	54410007 	bnel	v0,at,16a0 <func_80083108+0xb78>
    1684:	28a10004 	slti	at,a1,4
    1688:	907913e2 	lbu	t9,5090(v1)
    168c:	55b90003 	bnel	t5,t9,169c <func_80083108+0xb74>
    1690:	a06013e2 	sb	zero,5090(v1)
    1694:	24080001 	li	t0,1
    1698:	a06013e2 	sb	zero,5090(v1)
    169c:	28a10004 	slti	at,a1,4
    16a0:	5420fff1 	bnezl	at,1668 <func_80083108+0xb40>
    16a4:	00c51821 	addu	v1,a2,a1
    16a8:	8faf001c 	lw	t7,28(sp)
    16ac:	241f000a 	li	ra,10
    16b0:	24050001 	li	a1,1
    16b4:	91e20268 	lbu	v0,616(t7)
    16b8:	240a000d 	li	t2,13
    16bc:	10400012 	beqz	v0,1708 <func_80083108+0xbe0>
    16c0:	00c51821 	addu	v1,a2,a1
    16c4:	90620068 	lbu	v0,104(v1)
    16c8:	24a50001 	addiu	a1,a1,1
    16cc:	00052c00 	sll	a1,a1,0x10
    16d0:	11620003 	beq	t3,v0,16e0 <func_80083108+0xbb8>
    16d4:	00052c03 	sra	a1,a1,0x10
    16d8:	55820007 	bnel	t4,v0,16f8 <func_80083108+0xbd0>
    16dc:	28a10004 	slti	at,a1,4
    16e0:	906e13e2 	lbu	t6,5090(v1)
    16e4:	55c00003 	bnezl	t6,16f4 <func_80083108+0xbcc>
    16e8:	a06913e2 	sb	t1,5090(v1)
    16ec:	24080001 	li	t0,1
    16f0:	a06913e2 	sb	t1,5090(v1)
    16f4:	28a10004 	slti	at,a1,4
    16f8:	5420fff2 	bnezl	at,16c4 <func_80083108+0xb9c>
    16fc:	00c51821 	addu	v1,a2,a1
    1700:	10000016 	b	175c <func_80083108+0xc34>
    1704:	8fb9001c 	lw	t9,28(sp)
    1708:	14400013 	bnez	v0,1758 <func_80083108+0xc30>
    170c:	24050001 	li	a1,1
    1710:	240c0008 	li	t4,8
    1714:	240b0007 	li	t3,7
    1718:	00c51821 	addu	v1,a2,a1
    171c:	90620068 	lbu	v0,104(v1)
    1720:	24a50001 	addiu	a1,a1,1
    1724:	00052c00 	sll	a1,a1,0x10
    1728:	11620003 	beq	t3,v0,1738 <func_80083108+0xc10>
    172c:	00052c03 	sra	a1,a1,0x10
    1730:	55820007 	bnel	t4,v0,1750 <func_80083108+0xc28>
    1734:	28a10004 	slti	at,a1,4
    1738:	907813e2 	lbu	t8,5090(v1)
    173c:	55b80003 	bnel	t5,t8,174c <func_80083108+0xc24>
    1740:	a06013e2 	sb	zero,5090(v1)
    1744:	24080001 	li	t0,1
    1748:	a06013e2 	sb	zero,5090(v1)
    174c:	28a10004 	slti	at,a1,4
    1750:	5420fff2 	bnezl	at,171c <func_80083108+0xbf4>
    1754:	00c51821 	addu	v1,a2,a1
    1758:	8fb9001c 	lw	t9,28(sp)
    175c:	240b0007 	li	t3,7
    1760:	240c0008 	li	t4,8
    1764:	9322026b 	lbu	v0,619(t9)
    1768:	24050001 	li	a1,1
    176c:	10400020 	beqz	v0,17f0 <func_80083108+0xcc8>
    1770:	00c51821 	addu	v1,a2,a1
    1774:	906f0068 	lbu	t7,104(v1)
    1778:	3c040000 	lui	a0,0x0
    177c:	24840068 	addiu	a0,a0,104
    1780:	554f0014 	bnel	t2,t7,17d4 <func_80083108+0xcac>
    1784:	24a50001 	addiu	a1,a1,1
    1788:	906e13e2 	lbu	t6,5090(v1)
    178c:	55c00003 	bnezl	t6,179c <func_80083108+0xc74>
    1790:	a06913e2 	sb	t1,5090(v1)
    1794:	24080001 	li	t0,1
    1798:	a06913e2 	sb	t1,5090(v1)
    179c:	a7a5002a 	sh	a1,42(sp)
    17a0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    17a4:	a7a80028 	sh	t0,40(sp)
    17a8:	3c060000 	lui	a2,0x0
    17ac:	24c60000 	addiu	a2,a2,0
    17b0:	87a5002a 	lh	a1,42(sp)
    17b4:	87a80028 	lh	t0,40(sp)
    17b8:	240900ff 	li	t1,255
    17bc:	240a000d 	li	t2,13
    17c0:	240b0007 	li	t3,7
    17c4:	240c0008 	li	t4,8
    17c8:	240d00ff 	li	t5,255
    17cc:	241f000a 	li	ra,10
    17d0:	24a50001 	addiu	a1,a1,1
    17d4:	00052c00 	sll	a1,a1,0x10
    17d8:	00052c03 	sra	a1,a1,0x10
    17dc:	28a10004 	slti	at,a1,4
    17e0:	5420ffe4 	bnezl	at,1774 <func_80083108+0xc4c>
    17e4:	00c51821 	addu	v1,a2,a1
    17e8:	10000013 	b	1838 <func_80083108+0xd10>
    17ec:	8faf001c 	lw	t7,28(sp)
    17f0:	14400010 	bnez	v0,1834 <func_80083108+0xd0c>
    17f4:	24050001 	li	a1,1
    17f8:	240a000d 	li	t2,13
    17fc:	00c51821 	addu	v1,a2,a1
    1800:	90780068 	lbu	t8,104(v1)
    1804:	24a50001 	addiu	a1,a1,1
    1808:	00052c00 	sll	a1,a1,0x10
    180c:	15580006 	bne	t2,t8,1828 <func_80083108+0xd00>
    1810:	00052c03 	sra	a1,a1,0x10
    1814:	907913e2 	lbu	t9,5090(v1)
    1818:	55b90003 	bnel	t5,t9,1828 <func_80083108+0xd00>
    181c:	a06013e2 	sb	zero,5090(v1)
    1820:	24080001 	li	t0,1
    1824:	a06013e2 	sb	zero,5090(v1)
    1828:	28a10004 	slti	at,a1,4
    182c:	5420fff4 	bnezl	at,1800 <func_80083108+0xcd8>
    1830:	00c51821 	addu	v1,a2,a1
    1834:	8faf001c 	lw	t7,28(sp)
    1838:	240a000d 	li	t2,13
    183c:	24050001 	li	a1,1
    1840:	91e2026c 	lbu	v0,620(t7)
    1844:	24070005 	li	a3,5
    1848:	24040013 	li	a0,19
    184c:	10400012 	beqz	v0,1898 <func_80083108+0xd70>
    1850:	00c51821 	addu	v1,a2,a1
    1854:	90620068 	lbu	v0,104(v1)
    1858:	24a50001 	addiu	a1,a1,1
    185c:	00052c00 	sll	a1,a1,0x10
    1860:	10e20003 	beq	a3,v0,1870 <func_80083108+0xd48>
    1864:	00052c03 	sra	a1,a1,0x10
    1868:	54820007 	bnel	a0,v0,1888 <func_80083108+0xd60>
    186c:	28a10004 	slti	at,a1,4
    1870:	906e13e2 	lbu	t6,5090(v1)
    1874:	55c00003 	bnezl	t6,1884 <func_80083108+0xd5c>
    1878:	a06913e2 	sb	t1,5090(v1)
    187c:	24080001 	li	t0,1
    1880:	a06913e2 	sb	t1,5090(v1)
    1884:	28a10004 	slti	at,a1,4
    1888:	5420fff2 	bnezl	at,1854 <func_80083108+0xd2c>
    188c:	00c51821 	addu	v1,a2,a1
    1890:	10000016 	b	18ec <func_80083108+0xdc4>
    1894:	8fb9001c 	lw	t9,28(sp)
    1898:	14400013 	bnez	v0,18e8 <func_80083108+0xdc0>
    189c:	24050001 	li	a1,1
    18a0:	24070005 	li	a3,5
    18a4:	24040013 	li	a0,19
    18a8:	00c51821 	addu	v1,a2,a1
    18ac:	90620068 	lbu	v0,104(v1)
    18b0:	24a50001 	addiu	a1,a1,1
    18b4:	00052c00 	sll	a1,a1,0x10
    18b8:	10e20003 	beq	a3,v0,18c8 <func_80083108+0xda0>
    18bc:	00052c03 	sra	a1,a1,0x10
    18c0:	54820007 	bnel	a0,v0,18e0 <func_80083108+0xdb8>
    18c4:	28a10004 	slti	at,a1,4
    18c8:	907813e2 	lbu	t8,5090(v1)
    18cc:	55b80003 	bnel	t5,t8,18dc <func_80083108+0xdb4>
    18d0:	a06013e2 	sb	zero,5090(v1)
    18d4:	24080001 	li	t0,1
    18d8:	a06013e2 	sb	zero,5090(v1)
    18dc:	28a10004 	slti	at,a1,4
    18e0:	5420fff2 	bnezl	at,18ac <func_80083108+0xd84>
    18e4:	00c51821 	addu	v1,a2,a1
    18e8:	8fb9001c 	lw	t9,28(sp)
    18ec:	24040013 	li	a0,19
    18f0:	24070005 	li	a3,5
    18f4:	9322026d 	lbu	v0,621(t9)
    18f8:	24050001 	li	a1,1
    18fc:	10400029 	beqz	v0,19a4 <func_80083108+0xe7c>
    1900:	00000000 	nop
    1904:	2407000f 	li	a3,15
    1908:	24040010 	li	a0,16
    190c:	00c51821 	addu	v1,a2,a1
    1910:	90620068 	lbu	v0,104(v1)
    1914:	24a50001 	addiu	a1,a1,1
    1918:	00052c00 	sll	a1,a1,0x10
    191c:	1162001c 	beq	t3,v0,1990 <func_80083108+0xe68>
    1920:	00052c03 	sra	a1,a1,0x10
    1924:	1182001a 	beq	t4,v0,1990 <func_80083108+0xe68>
    1928:	28410014 	slti	at,v0,20
    192c:	14200002 	bnez	at,1938 <func_80083108+0xe10>
    1930:	28410021 	slti	at,v0,33
    1934:	14200016 	bnez	at,1990 <func_80083108+0xe68>
    1938:	28410021 	slti	at,v0,33
    193c:	14200004 	bnez	at,1950 <func_80083108+0xe28>
    1940:	8faf0038 	lw	t7,56(sp)
    1944:	28410038 	slti	at,v0,56
    1948:	54200012 	bnezl	at,1994 <func_80083108+0xe6c>
    194c:	28a10004 	slti	at,a1,4
    1950:	85ee00a4 	lh	t6,164(t7)
    1954:	548e0004 	bnel	a0,t6,1968 <func_80083108+0xe40>
    1958:	907813e2 	lbu	t8,5090(v1)
    195c:	50e20008 	beql	a3,v0,1980 <func_80083108+0xe58>
    1960:	907913e2 	lbu	t9,5090(v1)
    1964:	907813e2 	lbu	t8,5090(v1)
    1968:	17000002 	bnez	t8,1974 <func_80083108+0xe4c>
    196c:	00000000 	nop
    1970:	24080001 	li	t0,1
    1974:	10000006 	b	1990 <func_80083108+0xe68>
    1978:	a06913e2 	sb	t1,5090(v1)
    197c:	907913e2 	lbu	t9,5090(v1)
    1980:	55b90003 	bnel	t5,t9,1990 <func_80083108+0xe68>
    1984:	a06013e2 	sb	zero,5090(v1)
    1988:	24080001 	li	t0,1
    198c:	a06013e2 	sb	zero,5090(v1)
    1990:	28a10004 	slti	at,a1,4
    1994:	5420ffde 	bnezl	at,1910 <func_80083108+0xde8>
    1998:	00c51821 	addu	v1,a2,a1
    199c:	10000025 	b	1a34 <func_80083108+0xf0c>
    19a0:	00000000 	nop
    19a4:	14400023 	bnez	v0,1a34 <func_80083108+0xf0c>
    19a8:	24050001 	li	a1,1
    19ac:	00c51821 	addu	v1,a2,a1
    19b0:	90620068 	lbu	v0,104(v1)
    19b4:	24a50001 	addiu	a1,a1,1
    19b8:	00052c00 	sll	a1,a1,0x10
    19bc:	10e2001a 	beq	a3,v0,1a28 <func_80083108+0xf00>
    19c0:	00052c03 	sra	a1,a1,0x10
    19c4:	13e20018 	beq	ra,v0,1a28 <func_80083108+0xf00>
    19c8:	2401000b 	li	at,11
    19cc:	50410017 	beql	v0,at,1a2c <func_80083108+0xf04>
    19d0:	28a10004 	slti	at,a1,4
    19d4:	51420015 	beql	t2,v0,1a2c <func_80083108+0xf04>
    19d8:	28a10004 	slti	at,a1,4
    19dc:	50820013 	beql	a0,v0,1a2c <func_80083108+0xf04>
    19e0:	28a10004 	slti	at,a1,4
    19e4:	51620011 	beql	t3,v0,1a2c <func_80083108+0xf04>
    19e8:	28a10004 	slti	at,a1,4
    19ec:	1182000e 	beq	t4,v0,1a28 <func_80083108+0xf00>
    19f0:	28410014 	slti	at,v0,20
    19f4:	14200002 	bnez	at,1a00 <func_80083108+0xed8>
    19f8:	28410021 	slti	at,v0,33
    19fc:	1420000a 	bnez	at,1a28 <func_80083108+0xf00>
    1a00:	28410021 	slti	at,v0,33
    1a04:	14200003 	bnez	at,1a14 <func_80083108+0xeec>
    1a08:	28410038 	slti	at,v0,56
    1a0c:	54200007 	bnezl	at,1a2c <func_80083108+0xf04>
    1a10:	28a10004 	slti	at,a1,4
    1a14:	906f13e2 	lbu	t7,5090(v1)
    1a18:	55af0003 	bnel	t5,t7,1a28 <func_80083108+0xf00>
    1a1c:	a06013e2 	sb	zero,5090(v1)
    1a20:	24080001 	li	t0,1
    1a24:	a06013e2 	sb	zero,5090(v1)
    1a28:	28a10004 	slti	at,a1,4
    1a2c:	5420ffe0 	bnezl	at,19b0 <func_80083108+0xe88>
    1a30:	00c51821 	addu	v1,a2,a1
    1a34:	51000016 	beqzl	t0,1a90 <func_80083108+0xf68>
    1a38:	8fbf0014 	lw	ra,20(sp)
    1a3c:	8faa0038 	lw	t2,56(sp)
    1a40:	3c010001 	lui	at,0x1
    1a44:	a4c013ea 	sh	zero,5098(a2)
    1a48:	01415021 	addu	t2,t2,at
    1a4c:	814e1e15 	lb	t6,7701(t2)
    1a50:	3c040000 	lui	a0,0x0
    1a54:	15c0000b 	bnez	t6,1a84 <func_80083108+0xf5c>
    1a58:	00000000 	nop
    1a5c:	9158241b 	lbu	t8,9243(t2)
    1a60:	17000008 	bnez	t8,1a84 <func_80083108+0xf5c>
    1a64:	00000000 	nop
    1a68:	0c000000 	jal	0 <Interface_ChangeAlpha>
    1a6c:	24040032 	li	a0,50
    1a70:	3c040000 	lui	a0,0x0
    1a74:	0c000000 	jal	0 <Interface_ChangeAlpha>
    1a78:	24840078 	addiu	a0,a0,120
    1a7c:	10000004 	b	1a90 <func_80083108+0xf68>
    1a80:	8fbf0014 	lw	ra,20(sp)
    1a84:	0c000000 	jal	0 <Interface_ChangeAlpha>
    1a88:	248400a0 	addiu	a0,a0,160
    1a8c:	8fbf0014 	lw	ra,20(sp)
    1a90:	27bd0038 	addiu	sp,sp,56
    1a94:	03e00008 	jr	ra
    1a98:	00000000 	nop

00001a9c <Interface_SetSceneRestrictions>:
    1a9c:	27bdffb8 	addiu	sp,sp,-72
    1aa0:	3c010001 	lui	at,0x1
    1aa4:	afbf0024 	sw	ra,36(sp)
    1aa8:	afb00020 	sw	s0,32(sp)
    1aac:	00811821 	addu	v1,a0,at
    1ab0:	00803825 	move	a3,a0
    1ab4:	a060075d 	sb	zero,1885(v1)
    1ab8:	a060075c 	sb	zero,1884(v1)
    1abc:	a060075b 	sb	zero,1883(v1)
    1ac0:	a060075a 	sb	zero,1882(v1)
    1ac4:	a0600759 	sb	zero,1881(v1)
    1ac8:	a0600758 	sb	zero,1880(v1)
    1acc:	a0600757 	sb	zero,1879(v1)
    1ad0:	a0600756 	sb	zero,1878(v1)
    1ad4:	a0600755 	sb	zero,1877(v1)
    1ad8:	a0600754 	sb	zero,1876(v1)
    1adc:	a0600753 	sb	zero,1875(v1)
    1ae0:	a0600752 	sb	zero,1874(v1)
    1ae4:	84e500a4 	lh	a1,164(a3)
    1ae8:	3c040000 	lui	a0,0x0
    1aec:	248400dc 	addiu	a0,a0,220
    1af0:	afa70048 	sw	a3,72(sp)
    1af4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    1af8:	a7a00042 	sh	zero,66(sp)
    1afc:	8fa70048 	lw	a3,72(sp)
    1b00:	3c0e0000 	lui	t6,0x0
    1b04:	25c80000 	addiu	t0,t6,0
    1b08:	3c060000 	lui	a2,0x0
    1b0c:	87a20042 	lh	v0,66(sp)
    1b10:	24c60000 	addiu	a2,a2,0
    1b14:	91030000 	lbu	v1,0(t0)
    1b18:	240500ff 	li	a1,255
    1b1c:	90e400a5 	lbu	a0,165(a3)
    1b20:	14830059 	bne	a0,v1,1c88 <Interface_SetSceneRestrictions+0x1ec>
    1b24:	24420001 	addiu	v0,v0,1
    1b28:	910f0001 	lbu	t7,1(t0)
    1b2c:	3c010001 	lui	at,0x1
    1b30:	342104f0 	ori	at,at,0x4f0
    1b34:	31f800c0 	andi	t8,t7,0xc0
    1b38:	0018c983 	sra	t9,t8,0x6
    1b3c:	00e18021 	addu	s0,a3,at
    1b40:	a2190262 	sb	t9,610(s0)
    1b44:	91090001 	lbu	t1,1(t0)
    1b48:	3c040000 	lui	a0,0x0
    1b4c:	24840108 	addiu	a0,a0,264
    1b50:	312a0030 	andi	t2,t1,0x30
    1b54:	000a5903 	sra	t3,t2,0x4
    1b58:	a20b0263 	sb	t3,611(s0)
    1b5c:	910c0001 	lbu	t4,1(t0)
    1b60:	318d000c 	andi	t5,t4,0xc
    1b64:	000d7083 	sra	t6,t5,0x2
    1b68:	a20e0264 	sb	t6,612(s0)
    1b6c:	910f0001 	lbu	t7,1(t0)
    1b70:	31f80003 	andi	t8,t7,0x3
    1b74:	a2180265 	sb	t8,613(s0)
    1b78:	91190002 	lbu	t9,2(t0)
    1b7c:	332900c0 	andi	t1,t9,0xc0
    1b80:	00095183 	sra	t2,t1,0x6
    1b84:	a20a0266 	sb	t2,614(s0)
    1b88:	910b0002 	lbu	t3,2(t0)
    1b8c:	316c0030 	andi	t4,t3,0x30
    1b90:	000c6903 	sra	t5,t4,0x4
    1b94:	a20d0267 	sb	t5,615(s0)
    1b98:	910e0002 	lbu	t6,2(t0)
    1b9c:	31cf000c 	andi	t7,t6,0xc
    1ba0:	000fc083 	sra	t8,t7,0x2
    1ba4:	a2180268 	sb	t8,616(s0)
    1ba8:	91190002 	lbu	t9,2(t0)
    1bac:	33290003 	andi	t1,t9,0x3
    1bb0:	a2090269 	sb	t1,617(s0)
    1bb4:	910a0003 	lbu	t2,3(t0)
    1bb8:	314b00c0 	andi	t3,t2,0xc0
    1bbc:	000b6183 	sra	t4,t3,0x6
    1bc0:	a20c026a 	sb	t4,618(s0)
    1bc4:	910d0003 	lbu	t5,3(t0)
    1bc8:	31ae0030 	andi	t6,t5,0x30
    1bcc:	000e7903 	sra	t7,t6,0x4
    1bd0:	a20f026b 	sb	t7,619(s0)
    1bd4:	91180003 	lbu	t8,3(t0)
    1bd8:	3319000c 	andi	t9,t8,0xc
    1bdc:	00194883 	sra	t1,t9,0x2
    1be0:	a209026c 	sb	t1,620(s0)
    1be4:	910a0003 	lbu	t2,3(t0)
    1be8:	314b0003 	andi	t3,t2,0x3
    1bec:	a20b026d 	sb	t3,621(s0)
    1bf0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    1bf4:	afa8002c 	sw	t0,44(sp)
    1bf8:	8fa8002c 	lw	t0,44(sp)
    1bfc:	3c040000 	lui	a0,0x0
    1c00:	24840110 	addiu	a0,a0,272
    1c04:	91050001 	lbu	a1,1(t0)
    1c08:	91060002 	lbu	a2,2(t0)
    1c0c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    1c10:	91070003 	lbu	a3,3(t0)
    1c14:	920c0265 	lbu	t4,613(s0)
    1c18:	3c040000 	lui	a0,0x0
    1c1c:	92050262 	lbu	a1,610(s0)
    1c20:	92060263 	lbu	a2,611(s0)
    1c24:	92070264 	lbu	a3,612(s0)
    1c28:	24840138 	addiu	a0,a0,312
    1c2c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    1c30:	afac0010 	sw	t4,16(sp)
    1c34:	920d0269 	lbu	t5,617(s0)
    1c38:	3c040000 	lui	a0,0x0
    1c3c:	92050266 	lbu	a1,614(s0)
    1c40:	92060267 	lbu	a2,615(s0)
    1c44:	92070268 	lbu	a3,616(s0)
    1c48:	2484016c 	addiu	a0,a0,364
    1c4c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    1c50:	afad0010 	sw	t5,16(sp)
    1c54:	920e026d 	lbu	t6,621(s0)
    1c58:	3c040000 	lui	a0,0x0
    1c5c:	9205026a 	lbu	a1,618(s0)
    1c60:	9206026b 	lbu	a2,619(s0)
    1c64:	9207026c 	lbu	a3,620(s0)
    1c68:	248401a0 	addiu	a0,a0,416
    1c6c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    1c70:	afae0010 	sw	t6,16(sp)
    1c74:	3c040000 	lui	a0,0x0
    1c78:	0c000000 	jal	0 <Interface_ChangeAlpha>
    1c7c:	248401d4 	addiu	a0,a0,468
    1c80:	10000009 	b	1ca8 <Interface_SetSceneRestrictions+0x20c>
    1c84:	8fbf0024 	lw	ra,36(sp)
    1c88:	00021400 	sll	v0,v0,0x10
    1c8c:	00021403 	sra	v0,v0,0x10
    1c90:	00027880 	sll	t7,v0,0x2
    1c94:	00cf4021 	addu	t0,a2,t7
    1c98:	91030000 	lbu	v1,0(t0)
    1c9c:	14a3ffa0 	bne	a1,v1,1b20 <Interface_SetSceneRestrictions+0x84>
    1ca0:	00000000 	nop
    1ca4:	8fbf0024 	lw	ra,36(sp)
    1ca8:	8fb00020 	lw	s0,32(sp)
    1cac:	27bd0048 	addiu	sp,sp,72
    1cb0:	03e00008 	jr	ra
    1cb4:	00000000 	nop

00001cb8 <Gfx_TextureIA8>:
    1cb8:	afa60008 	sw	a2,8(sp)
    1cbc:	afa7000c 	sw	a3,12(sp)
    1cc0:	00073c00 	sll	a3,a3,0x10
    1cc4:	00063400 	sll	a2,a2,0x10
    1cc8:	00063403 	sra	a2,a2,0x10
    1ccc:	00073c03 	sra	a3,a3,0x10
    1cd0:	00c70019 	multu	a2,a3
    1cd4:	00801025 	move	v0,a0
    1cd8:	3c0efd70 	lui	t6,0xfd70
    1cdc:	ac4e0000 	sw	t6,0(v0)
    1ce0:	ac450004 	sw	a1,4(v0)
    1ce4:	24840008 	addiu	a0,a0,8
    1ce8:	00801025 	move	v0,a0
    1cec:	3c0b0700 	lui	t3,0x700
    1cf0:	3c0ff570 	lui	t7,0xf570
    1cf4:	ac4f0000 	sw	t7,0(v0)
    1cf8:	ac4b0004 	sw	t3,4(v0)
    1cfc:	24840008 	addiu	a0,a0,8
    1d00:	00801025 	move	v0,a0
    1d04:	00001812 	mflo	v1
    1d08:	24630001 	addiu	v1,v1,1
    1d0c:	00031843 	sra	v1,v1,0x1
    1d10:	3c18e600 	lui	t8,0xe600
    1d14:	ac580000 	sw	t8,0(v0)
    1d18:	2463ffff 	addiu	v1,v1,-1
    1d1c:	ac400004 	sw	zero,4(v0)
    1d20:	24840008 	addiu	a0,a0,8
    1d24:	00801025 	move	v0,a0
    1d28:	286107ff 	slti	at,v1,2047
    1d2c:	3c19f300 	lui	t9,0xf300
    1d30:	ac590000 	sw	t9,0(v0)
    1d34:	10200003 	beqz	at,1d44 <Gfx_TextureIA8+0x8c>
    1d38:	24840008 	addiu	a0,a0,8
    1d3c:	10000002 	b	1d48 <Gfx_TextureIA8+0x90>
    1d40:	00602825 	move	a1,v1
    1d44:	240507ff 	li	a1,2047
    1d48:	00c01825 	move	v1,a2
    1d4c:	04610003 	bgez	v1,1d5c <Gfx_TextureIA8+0xa4>
    1d50:	000340c3 	sra	t0,v1,0x3
    1d54:	24610007 	addiu	at,v1,7
    1d58:	000140c3 	sra	t0,at,0x3
    1d5c:	1d000003 	bgtz	t0,1d6c <Gfx_TextureIA8+0xb4>
    1d60:	30b80fff 	andi	t8,a1,0xfff
    1d64:	10000002 	b	1d70 <Gfx_TextureIA8+0xb8>
    1d68:	24090001 	li	t1,1
    1d6c:	01004825 	move	t1,t0
    1d70:	1d000003 	bgtz	t0,1d80 <Gfx_TextureIA8+0xc8>
    1d74:	252c07ff 	addiu	t4,t1,2047
    1d78:	10000002 	b	1d84 <Gfx_TextureIA8+0xcc>
    1d7c:	240a0001 	li	t2,1
    1d80:	01005025 	move	t2,t0
    1d84:	018a001a 	div	zero,t4,t2
    1d88:	00006812 	mflo	t5
    1d8c:	31ae0fff 	andi	t6,t5,0xfff
    1d90:	15400002 	bnez	t2,1d9c <Gfx_TextureIA8+0xe4>
    1d94:	00000000 	nop
    1d98:	0007000d 	break	0x7
    1d9c:	2401ffff 	li	at,-1
    1da0:	15410004 	bne	t2,at,1db4 <Gfx_TextureIA8+0xfc>
    1da4:	3c018000 	lui	at,0x8000
    1da8:	15810002 	bne	t4,at,1db4 <Gfx_TextureIA8+0xfc>
    1dac:	00000000 	nop
    1db0:	0006000d 	break	0x6
    1db4:	01cb7825 	or	t7,t6,t3
    1db8:	0018cb00 	sll	t9,t8,0xc
    1dbc:	01f96025 	or	t4,t7,t9
    1dc0:	ac4c0004 	sw	t4,4(v0)
    1dc4:	00801025 	move	v0,a0
    1dc8:	246e0007 	addiu	t6,v1,7
    1dcc:	000ec0c3 	sra	t8,t6,0x3
    1dd0:	3c0de700 	lui	t5,0xe700
    1dd4:	ac4d0000 	sw	t5,0(v0)
    1dd8:	330f01ff 	andi	t7,t8,0x1ff
    1ddc:	ac400004 	sw	zero,4(v0)
    1de0:	24840008 	addiu	a0,a0,8
    1de4:	00801025 	move	v0,a0
    1de8:	000fca40 	sll	t9,t7,0x9
    1dec:	3c01f568 	lui	at,0xf568
    1df0:	03216025 	or	t4,t9,at
    1df4:	ac4c0000 	sw	t4,0(v0)
    1df8:	ac400004 	sw	zero,4(v0)
    1dfc:	24840008 	addiu	a0,a0,8
    1e00:	00801025 	move	v0,a0
    1e04:	3c0df200 	lui	t5,0xf200
    1e08:	24ceffff 	addiu	t6,a2,-1
    1e0c:	000ec080 	sll	t8,t6,0x2
    1e10:	ac4d0000 	sw	t5,0(v0)
    1e14:	24ecffff 	addiu	t4,a3,-1
    1e18:	000c6880 	sll	t5,t4,0x2
    1e1c:	330f0fff 	andi	t7,t8,0xfff
    1e20:	000fcb00 	sll	t9,t7,0xc
    1e24:	31ae0fff 	andi	t6,t5,0xfff
    1e28:	032ec025 	or	t8,t9,t6
    1e2c:	ac580004 	sw	t8,4(v0)
    1e30:	87af001a 	lh	t7,26(sp)
    1e34:	87a30012 	lh	v1,18(sp)
    1e38:	87a50016 	lh	a1,22(sp)
    1e3c:	3c01e400 	lui	at,0xe400
    1e40:	006f6021 	addu	t4,v1,t7
    1e44:	87af001e 	lh	t7,30(sp)
    1e48:	000c6880 	sll	t5,t4,0x2
    1e4c:	31b90fff 	andi	t9,t5,0xfff
    1e50:	00197300 	sll	t6,t9,0xc
    1e54:	00af6021 	addu	t4,a1,t7
    1e58:	000c6880 	sll	t5,t4,0x2
    1e5c:	31b90fff 	andi	t9,t5,0xfff
    1e60:	01c1c025 	or	t8,t6,at
    1e64:	03197025 	or	t6,t8,t9
    1e68:	24840008 	addiu	a0,a0,8
    1e6c:	00037880 	sll	t7,v1,0x2
    1e70:	31ec0fff 	andi	t4,t7,0xfff
    1e74:	00801025 	move	v0,a0
    1e78:	0005c080 	sll	t8,a1,0x2
    1e7c:	33190fff 	andi	t9,t8,0xfff
    1e80:	ac4e0000 	sw	t6,0(v0)
    1e84:	000c6b00 	sll	t5,t4,0xc
    1e88:	01b97025 	or	t6,t5,t9
    1e8c:	ac4e0004 	sw	t6,4(v0)
    1e90:	24840008 	addiu	a0,a0,8
    1e94:	00801025 	move	v0,a0
    1e98:	3c0fe100 	lui	t7,0xe100
    1e9c:	ac4f0000 	sw	t7,0(v0)
    1ea0:	ac400004 	sw	zero,4(v0)
    1ea4:	24840008 	addiu	a0,a0,8
    1ea8:	00801025 	move	v0,a0
    1eac:	3c0cf100 	lui	t4,0xf100
    1eb0:	ac4c0000 	sw	t4,0(v0)
    1eb4:	97b80022 	lhu	t8,34(sp)
    1eb8:	97ae0026 	lhu	t6,38(sp)
    1ebc:	24840008 	addiu	a0,a0,8
    1ec0:	03006825 	move	t5,t8
    1ec4:	000dcc00 	sll	t9,t5,0x10
    1ec8:	01c07825 	move	t7,t6
    1ecc:	032f6025 	or	t4,t9,t7
    1ed0:	ac4c0004 	sw	t4,4(v0)
    1ed4:	03e00008 	jr	ra
    1ed8:	00801025 	move	v0,a0

00001edc <Gfx_TextureI8>:
    1edc:	afa60008 	sw	a2,8(sp)
    1ee0:	afa7000c 	sw	a3,12(sp)
    1ee4:	00073c00 	sll	a3,a3,0x10
    1ee8:	00063400 	sll	a2,a2,0x10
    1eec:	00063403 	sra	a2,a2,0x10
    1ef0:	00073c03 	sra	a3,a3,0x10
    1ef4:	00c70019 	multu	a2,a3
    1ef8:	00801025 	move	v0,a0
    1efc:	3c0efd90 	lui	t6,0xfd90
    1f00:	ac4e0000 	sw	t6,0(v0)
    1f04:	ac450004 	sw	a1,4(v0)
    1f08:	24840008 	addiu	a0,a0,8
    1f0c:	00801025 	move	v0,a0
    1f10:	3c0b0700 	lui	t3,0x700
    1f14:	3c0ff590 	lui	t7,0xf590
    1f18:	ac4f0000 	sw	t7,0(v0)
    1f1c:	ac4b0004 	sw	t3,4(v0)
    1f20:	24840008 	addiu	a0,a0,8
    1f24:	00801025 	move	v0,a0
    1f28:	00001812 	mflo	v1
    1f2c:	24630001 	addiu	v1,v1,1
    1f30:	00031843 	sra	v1,v1,0x1
    1f34:	3c18e600 	lui	t8,0xe600
    1f38:	ac580000 	sw	t8,0(v0)
    1f3c:	2463ffff 	addiu	v1,v1,-1
    1f40:	ac400004 	sw	zero,4(v0)
    1f44:	24840008 	addiu	a0,a0,8
    1f48:	00801025 	move	v0,a0
    1f4c:	286107ff 	slti	at,v1,2047
    1f50:	3c19f300 	lui	t9,0xf300
    1f54:	ac590000 	sw	t9,0(v0)
    1f58:	10200003 	beqz	at,1f68 <Gfx_TextureI8+0x8c>
    1f5c:	24840008 	addiu	a0,a0,8
    1f60:	10000002 	b	1f6c <Gfx_TextureI8+0x90>
    1f64:	00602825 	move	a1,v1
    1f68:	240507ff 	li	a1,2047
    1f6c:	00c01825 	move	v1,a2
    1f70:	04610003 	bgez	v1,1f80 <Gfx_TextureI8+0xa4>
    1f74:	000340c3 	sra	t0,v1,0x3
    1f78:	24610007 	addiu	at,v1,7
    1f7c:	000140c3 	sra	t0,at,0x3
    1f80:	1d000003 	bgtz	t0,1f90 <Gfx_TextureI8+0xb4>
    1f84:	30b80fff 	andi	t8,a1,0xfff
    1f88:	10000002 	b	1f94 <Gfx_TextureI8+0xb8>
    1f8c:	24090001 	li	t1,1
    1f90:	01004825 	move	t1,t0
    1f94:	1d000003 	bgtz	t0,1fa4 <Gfx_TextureI8+0xc8>
    1f98:	252c07ff 	addiu	t4,t1,2047
    1f9c:	10000002 	b	1fa8 <Gfx_TextureI8+0xcc>
    1fa0:	240a0001 	li	t2,1
    1fa4:	01005025 	move	t2,t0
    1fa8:	018a001a 	div	zero,t4,t2
    1fac:	00006812 	mflo	t5
    1fb0:	31ae0fff 	andi	t6,t5,0xfff
    1fb4:	15400002 	bnez	t2,1fc0 <Gfx_TextureI8+0xe4>
    1fb8:	00000000 	nop
    1fbc:	0007000d 	break	0x7
    1fc0:	2401ffff 	li	at,-1
    1fc4:	15410004 	bne	t2,at,1fd8 <Gfx_TextureI8+0xfc>
    1fc8:	3c018000 	lui	at,0x8000
    1fcc:	15810002 	bne	t4,at,1fd8 <Gfx_TextureI8+0xfc>
    1fd0:	00000000 	nop
    1fd4:	0006000d 	break	0x6
    1fd8:	01cb7825 	or	t7,t6,t3
    1fdc:	0018cb00 	sll	t9,t8,0xc
    1fe0:	01f96025 	or	t4,t7,t9
    1fe4:	ac4c0004 	sw	t4,4(v0)
    1fe8:	00801025 	move	v0,a0
    1fec:	246e0007 	addiu	t6,v1,7
    1ff0:	000ec0c3 	sra	t8,t6,0x3
    1ff4:	3c0de700 	lui	t5,0xe700
    1ff8:	ac4d0000 	sw	t5,0(v0)
    1ffc:	330f01ff 	andi	t7,t8,0x1ff
    2000:	ac400004 	sw	zero,4(v0)
    2004:	24840008 	addiu	a0,a0,8
    2008:	00801025 	move	v0,a0
    200c:	000fca40 	sll	t9,t7,0x9
    2010:	3c01f588 	lui	at,0xf588
    2014:	03216025 	or	t4,t9,at
    2018:	ac4c0000 	sw	t4,0(v0)
    201c:	ac400004 	sw	zero,4(v0)
    2020:	24840008 	addiu	a0,a0,8
    2024:	00801025 	move	v0,a0
    2028:	3c0df200 	lui	t5,0xf200
    202c:	24ceffff 	addiu	t6,a2,-1
    2030:	000ec080 	sll	t8,t6,0x2
    2034:	ac4d0000 	sw	t5,0(v0)
    2038:	24ecffff 	addiu	t4,a3,-1
    203c:	000c6880 	sll	t5,t4,0x2
    2040:	330f0fff 	andi	t7,t8,0xfff
    2044:	000fcb00 	sll	t9,t7,0xc
    2048:	31ae0fff 	andi	t6,t5,0xfff
    204c:	032ec025 	or	t8,t9,t6
    2050:	ac580004 	sw	t8,4(v0)
    2054:	87af001a 	lh	t7,26(sp)
    2058:	87a30012 	lh	v1,18(sp)
    205c:	87a50016 	lh	a1,22(sp)
    2060:	3c01e400 	lui	at,0xe400
    2064:	006f6021 	addu	t4,v1,t7
    2068:	87af001e 	lh	t7,30(sp)
    206c:	000c6880 	sll	t5,t4,0x2
    2070:	31b90fff 	andi	t9,t5,0xfff
    2074:	00197300 	sll	t6,t9,0xc
    2078:	00af6021 	addu	t4,a1,t7
    207c:	000c6880 	sll	t5,t4,0x2
    2080:	31b90fff 	andi	t9,t5,0xfff
    2084:	01c1c025 	or	t8,t6,at
    2088:	03197025 	or	t6,t8,t9
    208c:	24840008 	addiu	a0,a0,8
    2090:	00037880 	sll	t7,v1,0x2
    2094:	31ec0fff 	andi	t4,t7,0xfff
    2098:	00801025 	move	v0,a0
    209c:	0005c080 	sll	t8,a1,0x2
    20a0:	33190fff 	andi	t9,t8,0xfff
    20a4:	ac4e0000 	sw	t6,0(v0)
    20a8:	000c6b00 	sll	t5,t4,0xc
    20ac:	01b97025 	or	t6,t5,t9
    20b0:	ac4e0004 	sw	t6,4(v0)
    20b4:	24840008 	addiu	a0,a0,8
    20b8:	00801025 	move	v0,a0
    20bc:	3c0fe100 	lui	t7,0xe100
    20c0:	ac4f0000 	sw	t7,0(v0)
    20c4:	ac400004 	sw	zero,4(v0)
    20c8:	24840008 	addiu	a0,a0,8
    20cc:	00801025 	move	v0,a0
    20d0:	3c0cf100 	lui	t4,0xf100
    20d4:	ac4c0000 	sw	t4,0(v0)
    20d8:	97b80022 	lhu	t8,34(sp)
    20dc:	97ae0026 	lhu	t6,38(sp)
    20e0:	24840008 	addiu	a0,a0,8
    20e4:	03006825 	move	t5,t8
    20e8:	000dcc00 	sll	t9,t5,0x10
    20ec:	01c07825 	move	t7,t6
    20f0:	032f6025 	or	t4,t9,t7
    20f4:	ac4c0004 	sw	t4,4(v0)
    20f8:	03e00008 	jr	ra
    20fc:	00801025 	move	v0,a0

00002100 <Inventory_SwapAgeEquipment>:
    2100:	27bdffd8 	addiu	sp,sp,-40
    2104:	afb20020 	sw	s2,32(sp)
    2108:	3c120000 	lui	s2,0x0
    210c:	26520000 	addiu	s2,s2,0
    2110:	8e4e0004 	lw	t6,4(s2)
    2114:	afbf0024 	sw	ra,36(sp)
    2118:	afb1001c 	sw	s1,28(sp)
    211c:	11c00003 	beqz	t6,212c <Inventory_SwapAgeEquipment+0x2c>
    2120:	afb00018 	sw	s0,24(sp)
    2124:	10000002 	b	2130 <Inventory_SwapAgeEquipment+0x30>
    2128:	24020005 	li	v0,5
    212c:	24020011 	li	v0,17
    2130:	24010005 	li	at,5
    2134:	14410051 	bne	v0,at,227c <Inventory_SwapAgeEquipment+0x17c>
    2138:	00008825 	move	s1,zero
    213c:	00008825 	move	s1,zero
    2140:	2402003b 	li	v0,59
    2144:	12200005 	beqz	s1,215c <Inventory_SwapAgeEquipment+0x5c>
    2148:	02518021 	addu	s0,s2,s1
    214c:	02518021 	addu	s0,s2,s1
    2150:	920f0068 	lbu	t7,104(s0)
    2154:	10000002 	b	2160 <Inventory_SwapAgeEquipment+0x60>
    2158:	a20f0040 	sb	t7,64(s0)
    215c:	a2020040 	sb	v0,64(s0)
    2160:	52200004 	beqzl	s1,2174 <Inventory_SwapAgeEquipment+0x74>
    2164:	26310001 	addiu	s1,s1,1
    2168:	9218006b 	lbu	t8,107(s0)
    216c:	a2180043 	sb	t8,67(s0)
    2170:	26310001 	addiu	s1,s1,1
    2174:	00118c00 	sll	s1,s1,0x10
    2178:	00118c03 	sra	s1,s1,0x10
    217c:	2a210004 	slti	at,s1,4
    2180:	1420fff0 	bnez	at,2144 <Inventory_SwapAgeEquipment+0x44>
    2184:	00000000 	nop
    2188:	9248004a 	lbu	t0,74(s2)
    218c:	96590070 	lhu	t9,112(s2)
    2190:	240300ff 	li	v1,255
    2194:	14680016 	bne	v1,t0,21f0 <Inventory_SwapAgeEquipment+0xf0>
    2198:	a6590048 	sh	t9,72(s2)
    219c:	924a0075 	lbu	t2,117(s2)
    21a0:	2409003c 	li	t1,60
    21a4:	a2490068 	sb	t1,104(s2)
    21a8:	106a0005 	beq	v1,t2,21c0 <Inventory_SwapAgeEquipment+0xc0>
    21ac:	240e0007 	li	t6,7
    21b0:	24020001 	li	v0,1
    21b4:	a2420069 	sb	v0,105(s2)
    21b8:	10000004 	b	21cc <Inventory_SwapAgeEquipment+0xcc>
    21bc:	a242006c 	sb	v0,108(s2)
    21c0:	240c00ff 	li	t4,255
    21c4:	a24c006c 	sb	t4,108(s2)
    21c8:	a24c0069 	sb	t4,105(s2)
    21cc:	924d007b 	lbu	t5,123(s2)
    21d0:	24020002 	li	v0,2
    21d4:	240f1122 	li	t7,4386
    21d8:	a242006a 	sb	v0,106(s2)
    21dc:	a242006d 	sb	v0,109(s2)
    21e0:	a24e006e 	sb	t6,110(s2)
    21e4:	a64f0070 	sh	t7,112(s2)
    21e8:	10000022 	b	2274 <Inventory_SwapAgeEquipment+0x174>
    21ec:	a24d006b 	sb	t5,107(s2)
    21f0:	00008825 	move	s1,zero
    21f4:	02518021 	addu	s0,s2,s1
    21f8:	9218004a 	lbu	t8,74(s0)
    21fc:	12200003 	beqz	s1,220c <Inventory_SwapAgeEquipment+0x10c>
    2200:	a2180068 	sb	t8,104(s0)
    2204:	9219004d 	lbu	t9,77(s0)
    2208:	a219006b 	sb	t9,107(s0)
    220c:	92020068 	lbu	v0,104(s0)
    2210:	28410014 	slti	at,v0,20
    2214:	14200002 	bnez	at,2220 <Inventory_SwapAgeEquipment+0x120>
    2218:	28410021 	slti	at,v0,33
    221c:	14200004 	bnez	at,2230 <Inventory_SwapAgeEquipment+0x130>
    2220:	28410021 	slti	at,v0,33
    2224:	1420000b 	bnez	at,2254 <Inventory_SwapAgeEquipment+0x154>
    2228:	28410038 	slti	at,v0,56
    222c:	10200009 	beqz	at,2254 <Inventory_SwapAgeEquipment+0x154>
    2230:	3c040000 	lui	a0,0x0
    2234:	248401d8 	addiu	a0,a0,472
    2238:	02202825 	move	a1,s1
    223c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2240:	9206006b 	lbu	a2,107(s0)
    2244:	9208006b 	lbu	t0,107(s0)
    2248:	02484821 	addu	t1,s2,t0
    224c:	912a0074 	lbu	t2,116(t1)
    2250:	a20a0068 	sb	t2,104(s0)
    2254:	26310001 	addiu	s1,s1,1
    2258:	00118c00 	sll	s1,s1,0x10
    225c:	00118c03 	sra	s1,s1,0x10
    2260:	2a210004 	slti	at,s1,4
    2264:	5420ffe4 	bnezl	at,21f8 <Inventory_SwapAgeEquipment+0xf8>
    2268:	02518021 	addu	s0,s2,s1
    226c:	964b0052 	lhu	t3,82(s2)
    2270:	a64b0070 	sh	t3,112(s2)
    2274:	10000038 	b	2358 <Inventory_SwapAgeEquipment+0x258>
    2278:	96420070 	lhu	v0,112(s2)
    227c:	02518021 	addu	s0,s2,s1
    2280:	920c0068 	lbu	t4,104(s0)
    2284:	12200003 	beqz	s1,2294 <Inventory_SwapAgeEquipment+0x194>
    2288:	a20c004a 	sb	t4,74(s0)
    228c:	920d006b 	lbu	t5,107(s0)
    2290:	a20d004d 	sb	t5,77(s0)
    2294:	26310001 	addiu	s1,s1,1
    2298:	00118c00 	sll	s1,s1,0x10
    229c:	00118c03 	sra	s1,s1,0x10
    22a0:	2a210004 	slti	at,s1,4
    22a4:	5420fff6 	bnezl	at,2280 <Inventory_SwapAgeEquipment+0x180>
    22a8:	02518021 	addu	s0,s2,s1
    22ac:	924e0040 	lbu	t6,64(s2)
    22b0:	96420070 	lhu	v0,112(s2)
    22b4:	240300ff 	li	v1,255
    22b8:	106e0027 	beq	v1,t6,2358 <Inventory_SwapAgeEquipment+0x258>
    22bc:	a6420052 	sh	v0,82(s2)
    22c0:	00008825 	move	s1,zero
    22c4:	02518021 	addu	s0,s2,s1
    22c8:	920f0040 	lbu	t7,64(s0)
    22cc:	12200003 	beqz	s1,22dc <Inventory_SwapAgeEquipment+0x1dc>
    22d0:	a20f0068 	sb	t7,104(s0)
    22d4:	92180043 	lbu	t8,67(s0)
    22d8:	a218006b 	sb	t8,107(s0)
    22dc:	92020068 	lbu	v0,104(s0)
    22e0:	28410014 	slti	at,v0,20
    22e4:	14200002 	bnez	at,22f0 <Inventory_SwapAgeEquipment+0x1f0>
    22e8:	28410021 	slti	at,v0,33
    22ec:	14200004 	bnez	at,2300 <Inventory_SwapAgeEquipment+0x200>
    22f0:	28410021 	slti	at,v0,33
    22f4:	1420000b 	bnez	at,2324 <Inventory_SwapAgeEquipment+0x224>
    22f8:	28410038 	slti	at,v0,56
    22fc:	10200009 	beqz	at,2324 <Inventory_SwapAgeEquipment+0x224>
    2300:	3c040000 	lui	a0,0x0
    2304:	248401f4 	addiu	a0,a0,500
    2308:	02202825 	move	a1,s1
    230c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2310:	9206006b 	lbu	a2,107(s0)
    2314:	9219006b 	lbu	t9,107(s0)
    2318:	02594021 	addu	t0,s2,t9
    231c:	91090074 	lbu	t1,116(t0)
    2320:	a2090068 	sb	t1,104(s0)
    2324:	26310001 	addiu	s1,s1,1
    2328:	00118c00 	sll	s1,s1,0x10
    232c:	00118c03 	sra	s1,s1,0x10
    2330:	2a210004 	slti	at,s1,4
    2334:	5420ffe4 	bnezl	at,22c8 <Inventory_SwapAgeEquipment+0x1c8>
    2338:	02518021 	addu	s0,s2,s1
    233c:	964b0048 	lhu	t3,72(s2)
    2340:	316dfff0 	andi	t5,t3,0xfff0
    2344:	35ae0001 	ori	t6,t5,0x1
    2348:	a64b0070 	sh	t3,112(s2)
    234c:	a64d0070 	sh	t5,112(s2)
    2350:	a64e0070 	sh	t6,112(s2)
    2354:	31c2ffff 	andi	v0,t6,0xffff
    2358:	3c0f0000 	lui	t7,0x0
    235c:	95ef0002 	lhu	t7,2(t7)
    2360:	3c180000 	lui	t8,0x0
    2364:	01e21824 	and	v1,t7,v0
    2368:	3063ffff 	andi	v1,v1,0xffff
    236c:	50600011 	beqzl	v1,23b4 <Inventory_SwapAgeEquipment+0x2b4>
    2370:	8fbf0024 	lw	ra,36(sp)
    2374:	93180001 	lbu	t8,1(t8)
    2378:	3c080000 	lui	t0,0x0
    237c:	9649009c 	lhu	t1,156(s2)
    2380:	03031806 	srlv	v1,v1,t8
    2384:	3063ffff 	andi	v1,v1,0xffff
    2388:	0003c880 	sll	t9,v1,0x2
    238c:	01194021 	addu	t0,t0,t9
    2390:	8d08000c 	lw	t0,12(t0)
    2394:	3c0b0000 	lui	t3,0x0
    2398:	01095024 	and	t2,t0,t1
    239c:	55400005 	bnezl	t2,23b4 <Inventory_SwapAgeEquipment+0x2b4>
    23a0:	8fbf0024 	lw	ra,36(sp)
    23a4:	956b0002 	lhu	t3,2(t3)
    23a8:	004b6024 	and	t4,v0,t3
    23ac:	a64c0070 	sh	t4,112(s2)
    23b0:	8fbf0024 	lw	ra,36(sp)
    23b4:	8fb00018 	lw	s0,24(sp)
    23b8:	8fb1001c 	lw	s1,28(sp)
    23bc:	8fb20020 	lw	s2,32(sp)
    23c0:	03e00008 	jr	ra
    23c4:	27bd0028 	addiu	sp,sp,40

000023c8 <Interface_InitHorsebackArchery>:
    23c8:	3c050000 	lui	a1,0x0
    23cc:	24a50000 	addiu	a1,a1,0
    23d0:	240e0001 	li	t6,1
    23d4:	3c010001 	lui	at,0x1
    23d8:	a4ae1404 	sh	t6,5124(a1)
    23dc:	00811021 	addu	v0,a0,at
    23e0:	3c060000 	lui	a2,0x0
    23e4:	24c60000 	addiu	a2,a2,0
    23e8:	a4400732 	sh	zero,1842(v0)
    23ec:	a4400730 	sh	zero,1840(v0)
    23f0:	a440072c 	sh	zero,1836(v0)
    23f4:	a4c00000 	sh	zero,0(a2)
    23f8:	84cf0000 	lh	t7,0(a2)
    23fc:	24180014 	li	t8,20
    2400:	a4af1406 	sh	t7,5126(a1)
    2404:	03e00008 	jr	ra
    2408:	a458072e 	sh	t8,1838(v0)

0000240c <func_800849EC>:
    240c:	3c050000 	lui	a1,0x0
    2410:	24a50000 	addiu	a1,a1,0
    2414:	3c030000 	lui	v1,0x0
    2418:	3c020000 	lui	v0,0x0
    241c:	90420000 	lbu	v0,0(v0)
    2420:	8caf0008 	lw	t7,8(a1)
    2424:	24630000 	addiu	v1,v1,0
    2428:	946e009c 	lhu	t6,156(v1)
    242c:	24090008 	li	t1,8
    2430:	004fc004 	sllv	t8,t7,v0
    2434:	8cac000c 	lw	t4,12(a1)
    2438:	00495004 	sllv	t2,t1,v0
    243c:	01d84025 	or	t0,t6,t8
    2440:	010a5826 	xor	t3,t0,t2
    2444:	316dffff 	andi	t5,t3,0xffff
    2448:	27bdffe8 	addiu	sp,sp,-24
    244c:	a468009c 	sh	t0,156(v1)
    2450:	018d7824 	and	t7,t4,t5
    2454:	afbf0014 	sw	ra,20(sp)
    2458:	11e00004 	beqz	t7,246c <func_800849EC+0x60>
    245c:	a46b009c 	sh	t3,156(v1)
    2460:	240e0055 	li	t6,85
    2464:	10000003 	b	2474 <func_800849EC+0x68>
    2468:	a06e0068 	sb	t6,104(v1)
    246c:	2418003d 	li	t8,61
    2470:	a0780068 	sb	t8,104(v1)
    2474:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2478:	00002825 	move	a1,zero
    247c:	8fbf0014 	lw	ra,20(sp)
    2480:	27bd0018 	addiu	sp,sp,24
    2484:	03e00008 	jr	ra
    2488:	00000000 	nop

0000248c <Interface_LoadItemIcon1>:
    248c:	3c010001 	lui	at,0x1
    2490:	00803825 	move	a3,a0
    2494:	342106b0 	ori	at,at,0x6b0
    2498:	27bdffc8 	addiu	sp,sp,-56
    249c:	00812021 	addu	a0,a0,at
    24a0:	3c010001 	lui	at,0x1
    24a4:	afbf002c 	sw	ra,44(sp)
    24a8:	afa5003c 	sw	a1,60(sp)
    24ac:	342106c8 	ori	at,at,0x6c8
    24b0:	00e12821 	addu	a1,a3,at
    24b4:	afa70038 	sw	a3,56(sp)
    24b8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    24bc:	24060001 	li	a2,1
    24c0:	8fa20038 	lw	v0,56(sp)
    24c4:	3c010001 	lui	at,0x1
    24c8:	97a8003e 	lhu	t0,62(sp)
    24cc:	342104f0 	ori	at,at,0x4f0
    24d0:	00411021 	addu	v0,v0,at
    24d4:	8c4e0138 	lw	t6,312(v0)
    24d8:	3c180000 	lui	t8,0x0
    24dc:	0308c021 	addu	t8,t8,t0
    24e0:	93180068 	lbu	t8,104(t8)
    24e4:	3c090000 	lui	t1,0x0
    24e8:	3c0a0000 	lui	t2,0x0
    24ec:	254a0210 	addiu	t2,t2,528
    24f0:	25290000 	addiu	t1,t1,0
    24f4:	244301c0 	addiu	v1,v0,448
    24f8:	240b0493 	li	t3,1171
    24fc:	00087b00 	sll	t7,t0,0xc
    2500:	0018cb00 	sll	t9,t8,0xc
    2504:	03293021 	addu	a2,t9,t1
    2508:	afab0020 	sw	t3,32(sp)
    250c:	afa30014 	sw	v1,20(sp)
    2510:	afa30030 	sw	v1,48(sp)
    2514:	afaa001c 	sw	t2,28(sp)
    2518:	afa00018 	sw	zero,24(sp)
    251c:	afa00010 	sw	zero,16(sp)
    2520:	24440160 	addiu	a0,v0,352
    2524:	24071000 	li	a3,4096
    2528:	0c000000 	jal	0 <Interface_ChangeAlpha>
    252c:	01cf2821 	addu	a1,t6,t7
    2530:	8fa40030 	lw	a0,48(sp)
    2534:	00002825 	move	a1,zero
    2538:	0c000000 	jal	0 <Interface_ChangeAlpha>
    253c:	24060001 	li	a2,1
    2540:	8fbf002c 	lw	ra,44(sp)
    2544:	27bd0038 	addiu	sp,sp,56
    2548:	03e00008 	jr	ra
    254c:	00000000 	nop

00002550 <Interface_LoadItemIcon2>:
    2550:	3c010001 	lui	at,0x1
    2554:	00803825 	move	a3,a0
    2558:	342106b0 	ori	at,at,0x6b0
    255c:	27bdffc8 	addiu	sp,sp,-56
    2560:	00812021 	addu	a0,a0,at
    2564:	3c010001 	lui	at,0x1
    2568:	afbf002c 	sw	ra,44(sp)
    256c:	afa5003c 	sw	a1,60(sp)
    2570:	342106c8 	ori	at,at,0x6c8
    2574:	00e12821 	addu	a1,a3,at
    2578:	afa70038 	sw	a3,56(sp)
    257c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2580:	24060001 	li	a2,1
    2584:	8fa20038 	lw	v0,56(sp)
    2588:	3c010001 	lui	at,0x1
    258c:	97a8003e 	lhu	t0,62(sp)
    2590:	342104f0 	ori	at,at,0x4f0
    2594:	00411021 	addu	v0,v0,at
    2598:	8c4e0138 	lw	t6,312(v0)
    259c:	3c180000 	lui	t8,0x0
    25a0:	0308c021 	addu	t8,t8,t0
    25a4:	93180068 	lbu	t8,104(t8)
    25a8:	3c090000 	lui	t1,0x0
    25ac:	3c0a0000 	lui	t2,0x0
    25b0:	254a0224 	addiu	t2,t2,548
    25b4:	25290000 	addiu	t1,t1,0
    25b8:	244301c0 	addiu	v1,v0,448
    25bc:	240b04a9 	li	t3,1193
    25c0:	00087b00 	sll	t7,t0,0xc
    25c4:	0018cb00 	sll	t9,t8,0xc
    25c8:	03293021 	addu	a2,t9,t1
    25cc:	afab0020 	sw	t3,32(sp)
    25d0:	afa30014 	sw	v1,20(sp)
    25d4:	afa30030 	sw	v1,48(sp)
    25d8:	afaa001c 	sw	t2,28(sp)
    25dc:	afa00018 	sw	zero,24(sp)
    25e0:	afa00010 	sw	zero,16(sp)
    25e4:	24440180 	addiu	a0,v0,384
    25e8:	24071000 	li	a3,4096
    25ec:	0c000000 	jal	0 <Interface_ChangeAlpha>
    25f0:	01cf2821 	addu	a1,t6,t7
    25f4:	8fa40030 	lw	a0,48(sp)
    25f8:	00002825 	move	a1,zero
    25fc:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2600:	24060001 	li	a2,1
    2604:	8fbf002c 	lw	ra,44(sp)
    2608:	27bd0038 	addiu	sp,sp,56
    260c:	03e00008 	jr	ra
    2610:	00000000 	nop

00002614 <func_80084BF4>:
    2614:	27bdffe8 	addiu	sp,sp,-24
    2618:	afa5001c 	sw	a1,28(sp)
    261c:	30a5ffff 	andi	a1,a1,0xffff
    2620:	afbf0014 	sw	ra,20(sp)
    2624:	10a00036 	beqz	a1,2700 <func_80084BF4+0xec>
    2628:	00803825 	move	a3,a0
    262c:	3c030000 	lui	v1,0x0
    2630:	24630000 	addiu	v1,v1,0
    2634:	90620068 	lbu	v0,104(v1)
    2638:	24050006 	li	a1,6
    263c:	24010003 	li	at,3
    2640:	10a2000b 	beq	a1,v0,2670 <func_80084BF4+0x5c>
    2644:	00000000 	nop
    2648:	10410009 	beq	v0,at,2670 <func_80084BF4+0x5c>
    264c:	24010009 	li	at,9
    2650:	10410007 	beq	v0,at,2670 <func_80084BF4+0x5c>
    2654:	24010059 	li	at,89
    2658:	10410005 	beq	v0,at,2670 <func_80084BF4+0x5c>
    265c:	00000000 	nop
    2660:	906613e2 	lbu	a2,5090(v1)
    2664:	240400ff 	li	a0,255
    2668:	14860011 	bne	a0,a2,26b0 <func_80084BF4+0x9c>
    266c:	00000000 	nop
    2670:	10a20007 	beq	a1,v0,2690 <func_80084BF4+0x7c>
    2674:	24010003 	li	at,3
    2678:	10410005 	beq	v0,at,2690 <func_80084BF4+0x7c>
    267c:	24010009 	li	at,9
    2680:	10410003 	beq	v0,at,2690 <func_80084BF4+0x7c>
    2684:	24010059 	li	at,89
    2688:	54410016 	bnel	v0,at,26e4 <func_80084BF4+0xd0>
    268c:	a06013e5 	sb	zero,5093(v1)
    2690:	906e13e2 	lbu	t6,5090(v1)
    2694:	00e02025 	move	a0,a3
    2698:	00002825 	move	a1,zero
    269c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    26a0:	a06e0068 	sb	t6,104(v1)
    26a4:	3c030000 	lui	v1,0x0
    26a8:	1000000d 	b	26e0 <func_80084BF4+0xcc>
    26ac:	24630000 	addiu	v1,v1,0
    26b0:	5482000c 	bnel	a0,v0,26e4 <func_80084BF4+0xd0>
    26b4:	a06013e5 	sb	zero,5093(v1)
    26b8:	14820004 	bne	a0,v0,26cc <func_80084BF4+0xb8>
    26bc:	00002825 	move	a1,zero
    26c0:	946f0f32 	lhu	t7,3890(v1)
    26c4:	55e00007 	bnezl	t7,26e4 <func_80084BF4+0xd0>
    26c8:	a06013e5 	sb	zero,5093(v1)
    26cc:	a0660068 	sb	a2,104(v1)
    26d0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    26d4:	00e02025 	move	a0,a3
    26d8:	3c030000 	lui	v1,0x0
    26dc:	24630000 	addiu	v1,v1,0
    26e0:	a06013e5 	sb	zero,5093(v1)
    26e4:	a06013e4 	sb	zero,5092(v1)
    26e8:	a06013e3 	sb	zero,5091(v1)
    26ec:	a06013e2 	sb	zero,5090(v1)
    26f0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    26f4:	24040007 	li	a0,7
    26f8:	1000000a 	b	2724 <func_80084BF4+0x110>
    26fc:	8fbf0014 	lw	ra,20(sp)
    2700:	3c030000 	lui	v1,0x0
    2704:	24630000 	addiu	v1,v1,0
    2708:	a06013e5 	sb	zero,5093(v1)
    270c:	a06013e4 	sb	zero,5092(v1)
    2710:	a06013e3 	sb	zero,5091(v1)
    2714:	a06013e2 	sb	zero,5090(v1)
    2718:	0c000000 	jal	0 <Interface_ChangeAlpha>
    271c:	00e02025 	move	a0,a3
    2720:	8fbf0014 	lw	ra,20(sp)
    2724:	27bd0018 	addiu	sp,sp,24
    2728:	03e00008 	jr	ra
    272c:	00000000 	nop

00002730 <Item_Give>:
    2730:	27bdffb8 	addiu	sp,sp,-72
    2734:	afa5004c 	sw	a1,76(sp)
    2738:	30a500ff 	andi	a1,a1,0xff
    273c:	3c090000 	lui	t1,0x0
    2740:	25290000 	addiu	t1,t1,0
    2744:	afb0001c 	sw	s0,28(sp)
    2748:	01255821 	addu	t3,t1,a1
    274c:	28a1008a 	slti	at,a1,138
    2750:	afbf0024 	sw	ra,36(sp)
    2754:	afb10020 	sw	s1,32(sp)
    2758:	afa40048 	sw	a0,72(sp)
    275c:	91620000 	lbu	v0,0(t3)
    2760:	14200007 	bnez	at,2780 <Item_Give+0x50>
    2764:	00a08025 	move	s0,a1
    2768:	00107040 	sll	t6,s0,0x1
    276c:	3c0f0000 	lui	t7,0x0
    2770:	01ee7821 	addu	t7,t7,t6
    2774:	85effeec 	lh	t7,-276(t7)
    2778:	012fc021 	addu	t8,t1,t7
    277c:	93020000 	lbu	v0,0(t8)
    2780:	3c040000 	lui	a0,0x0
    2784:	24840000 	addiu	a0,a0,0
    2788:	a7a20044 	sh	v0,68(sp)
    278c:	a3a5004f 	sb	a1,79(sp)
    2790:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2794:	afab003c 	sw	t3,60(sp)
    2798:	87a60044 	lh	a2,68(sp)
    279c:	3c110000 	lui	s1,0x0
    27a0:	26310000 	addiu	s1,s1,0
    27a4:	3c040000 	lui	a0,0x0
    27a8:	02265021 	addu	t2,s1,a2
    27ac:	91470074 	lbu	a3,116(t2)
    27b0:	afaa0034 	sw	t2,52(sp)
    27b4:	24840000 	addiu	a0,a0,0
    27b8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    27bc:	02002825 	move	a1,s0
    27c0:	3c040000 	lui	a0,0x0
    27c4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    27c8:	24840000 	addiu	a0,a0,0
    27cc:	3c090000 	lui	t1,0x0
    27d0:	2a010066 	slti	at,s0,102
    27d4:	25290000 	addiu	t1,t1,0
    27d8:	8faa0034 	lw	t2,52(sp)
    27dc:	1420001b 	bnez	at,284c <Item_Give+0x11c>
    27e0:	8fab003c 	lw	t3,60(sp)
    27e4:	2a01006c 	slti	at,s0,108
    27e8:	10200018 	beqz	at,284c <Item_Give+0x11c>
    27ec:	00106080 	sll	t4,s0,0x2
    27f0:	3c0d0000 	lui	t5,0x0
    27f4:	01ac6821 	addu	t5,t5,t4
    27f8:	8dadfe68 	lw	t5,-408(t5)
    27fc:	8e3900a4 	lw	t9,164(s1)
    2800:	3c040000 	lui	a0,0x0
    2804:	24840000 	addiu	a0,a0,0
    2808:	032d7025 	or	t6,t9,t5
    280c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2810:	ae2e00a4 	sw	t6,164(s1)
    2814:	3c040000 	lui	a0,0x0
    2818:	24840000 	addiu	a0,a0,0
    281c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2820:	8e2500a4 	lw	a1,164(s1)
    2824:	3c040000 	lui	a0,0x0
    2828:	0c000000 	jal	0 <Interface_ChangeAlpha>
    282c:	24840000 	addiu	a0,a0,0
    2830:	24010068 	li	at,104
    2834:	16010003 	bne	s0,at,2844 <Item_Give+0x114>
    2838:	00000000 	nop
    283c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2840:	8fa40048 	lw	a0,72(sp)
    2844:	10000553 	b	3d94 <Item_Give+0x1664>
    2848:	240200ff 	li	v0,255
    284c:	2a01005a 	slti	at,s0,90
    2850:	1420001e 	bnez	at,28cc <Item_Give+0x19c>
    2854:	2a010066 	slti	at,s0,102
    2858:	1020001c 	beqz	at,28cc <Item_Give+0x19c>
    285c:	00107880 	sll	t7,s0,0x2
    2860:	3c180000 	lui	t8,0x0
    2864:	27180000 	addiu	t8,t8,0
    2868:	01f81021 	addu	v0,t7,t8
    286c:	8c59feb0 	lw	t9,-336(v0)
    2870:	8e2c00a4 	lw	t4,164(s1)
    2874:	3c040000 	lui	a0,0x0
    2878:	24840000 	addiu	a0,a0,0
    287c:	01996825 	or	t5,t4,t9
    2880:	ae2d00a4 	sw	t5,164(s1)
    2884:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2888:	afa2003c 	sw	v0,60(sp)
    288c:	3c040000 	lui	a0,0x0
    2890:	24840000 	addiu	a0,a0,0
    2894:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2898:	8e2500a4 	lw	a1,164(s1)
    289c:	8fa2003c 	lw	v0,60(sp)
    28a0:	3c040000 	lui	a0,0x0
    28a4:	24840000 	addiu	a0,a0,0
    28a8:	8e2500a4 	lw	a1,164(s1)
    28ac:	8c46feb0 	lw	a2,-336(v0)
    28b0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    28b4:	8c47fe98 	lw	a3,-360(v0)
    28b8:	3c040000 	lui	a0,0x0
    28bc:	0c000000 	jal	0 <Interface_ChangeAlpha>
    28c0:	24840000 	addiu	a0,a0,0
    28c4:	10000533 	b	3d94 <Item_Give+0x1664>
    28c8:	240200ff 	li	v0,255
    28cc:	2a01006c 	slti	at,s0,108
    28d0:	14200015 	bnez	at,2928 <Item_Give+0x1f8>
    28d4:	2a01006f 	slti	at,s0,111
    28d8:	10200013 	beqz	at,2928 <Item_Give+0x1f8>
    28dc:	00107880 	sll	t7,s0,0x2
    28e0:	3c180000 	lui	t8,0x0
    28e4:	030fc021 	addu	t8,t8,t7
    28e8:	8f18fe98 	lw	t8,-360(t8)
    28ec:	8e2e00a4 	lw	t6,164(s1)
    28f0:	3c040000 	lui	a0,0x0
    28f4:	24840000 	addiu	a0,a0,0
    28f8:	01d86025 	or	t4,t6,t8
    28fc:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2900:	ae2c00a4 	sw	t4,164(s1)
    2904:	3c040000 	lui	a0,0x0
    2908:	24840000 	addiu	a0,a0,0
    290c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2910:	8e2500a4 	lw	a1,164(s1)
    2914:	3c040000 	lui	a0,0x0
    2918:	0c000000 	jal	0 <Interface_ChangeAlpha>
    291c:	24840000 	addiu	a0,a0,0
    2920:	1000051c 	b	3d94 <Item_Give+0x1664>
    2924:	240200ff 	li	v0,255
    2928:	2401006f 	li	at,111
    292c:	12010003 	beq	s0,at,293c <Item_Give+0x20c>
    2930:	00106880 	sll	t5,s0,0x2
    2934:	24010070 	li	at,112
    2938:	16010012 	bne	s0,at,2984 <Item_Give+0x254>
    293c:	3c0f0000 	lui	t7,0x0
    2940:	01ed7821 	addu	t7,t7,t5
    2944:	8deffe98 	lw	t7,-360(t7)
    2948:	8e3900a4 	lw	t9,164(s1)
    294c:	3c040000 	lui	a0,0x0
    2950:	24840000 	addiu	a0,a0,0
    2954:	032f7025 	or	t6,t9,t7
    2958:	0c000000 	jal	0 <Interface_ChangeAlpha>
    295c:	ae2e00a4 	sw	t6,164(s1)
    2960:	3c040000 	lui	a0,0x0
    2964:	24840000 	addiu	a0,a0,0
    2968:	0c000000 	jal	0 <Interface_ChangeAlpha>
    296c:	8e2500a4 	lw	a1,164(s1)
    2970:	3c040000 	lui	a0,0x0
    2974:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2978:	24840000 	addiu	a0,a0,0
    297c:	10000505 	b	3d94 <Item_Give+0x1664>
    2980:	240200ff 	li	v0,255
    2984:	24010071 	li	at,113
    2988:	16010017 	bne	s0,at,29e8 <Item_Give+0x2b8>
    298c:	00106080 	sll	t4,s0,0x2
    2990:	3c0d0000 	lui	t5,0x0
    2994:	01ac6821 	addu	t5,t5,t4
    2998:	8dadfe98 	lw	t5,-360(t5)
    299c:	8e3800a4 	lw	t8,164(s1)
    29a0:	862f00d0 	lh	t7,208(s1)
    29a4:	3c040000 	lui	a0,0x0
    29a8:	030dc825 	or	t9,t8,t5
    29ac:	25ee0001 	addiu	t6,t7,1
    29b0:	ae3900a4 	sw	t9,164(s1)
    29b4:	a62e00d0 	sh	t6,208(s1)
    29b8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    29bc:	24840000 	addiu	a0,a0,0
    29c0:	3c040000 	lui	a0,0x0
    29c4:	24840000 	addiu	a0,a0,0
    29c8:	8e2500a4 	lw	a1,164(s1)
    29cc:	0c000000 	jal	0 <Interface_ChangeAlpha>
    29d0:	862600d0 	lh	a2,208(s1)
    29d4:	3c040000 	lui	a0,0x0
    29d8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    29dc:	24840000 	addiu	a0,a0,0
    29e0:	100004ec 	b	3d94 <Item_Give+0x1664>
    29e4:	240200ff 	li	v0,255
    29e8:	2a01003b 	slti	at,s0,59
    29ec:	14200033 	bnez	at,2abc <Item_Give+0x38c>
    29f0:	2a01003e 	slti	at,s0,62
    29f4:	10200031 	beqz	at,2abc <Item_Give+0x38c>
    29f8:	3c020000 	lui	v0,0x0
    29fc:	0010c080 	sll	t8,s0,0x2
    2a00:	3c0d0000 	lui	t5,0x0
    2a04:	01b86821 	addu	t5,t5,t8
    2a08:	8dadff14 	lw	t5,-236(t5)
    2a0c:	90420000 	lbu	v0,0(v0)
    2a10:	962c009c 	lhu	t4,156(s1)
    2a14:	2401003d 	li	at,61
    2a18:	004dc804 	sllv	t9,t5,v0
    2a1c:	01997825 	or	t7,t4,t9
    2a20:	16010018 	bne	s0,at,2a84 <Item_Give+0x354>
    2a24:	a62f009c 	sh	t7,156(s1)
    2a28:	240e0008 	li	t6,8
    2a2c:	a62e0036 	sh	t6,54(s1)
    2a30:	3c180000 	lui	t8,0x0
    2a34:	97180000 	lhu	t8,0(t8)
    2a38:	31e3ffff 	andi	v1,t7,0xffff
    2a3c:	2401000f 	li	at,15
    2a40:	00786824 	and	t5,v1,t8
    2a44:	004d6007 	srav	t4,t5,v0
    2a48:	1581001a 	bne	t4,at,2ab4 <Item_Give+0x384>
    2a4c:	24190008 	li	t9,8
    2a50:	92380068 	lbu	t8,104(s1)
    2a54:	00597804 	sllv	t7,t9,v0
    2a58:	006f7026 	xor	t6,v1,t7
    2a5c:	24010055 	li	at,85
    2a60:	17010014 	bne	t8,at,2ab4 <Item_Give+0x384>
    2a64:	a62e009c 	sh	t6,156(s1)
    2a68:	240d003d 	li	t5,61
    2a6c:	a22d0068 	sb	t5,104(s1)
    2a70:	8fa40048 	lw	a0,72(sp)
    2a74:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2a78:	00002825 	move	a1,zero
    2a7c:	100004c5 	b	3d94 <Item_Give+0x1664>
    2a80:	240200ff 	li	v0,255
    2a84:	2401003c 	li	at,60
    2a88:	1601000a 	bne	s0,at,2ab4 <Item_Give+0x384>
    2a8c:	240c003c 	li	t4,60
    2a90:	96390070 	lhu	t9,112(s1)
    2a94:	a22c0068 	sb	t4,104(s1)
    2a98:	8fa40048 	lw	a0,72(sp)
    2a9c:	332efff0 	andi	t6,t9,0xfff0
    2aa0:	a62e0070 	sh	t6,112(s1)
    2aa4:	35d80002 	ori	t8,t6,0x2
    2aa8:	a6380070 	sh	t8,112(s1)
    2aac:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2ab0:	00002825 	move	a1,zero
    2ab4:	100004b7 	b	3d94 <Item_Give+0x1664>
    2ab8:	240200ff 	li	v0,255
    2abc:	2a01003e 	slti	at,s0,62
    2ac0:	1420000e 	bnez	at,2afc <Item_Give+0x3cc>
    2ac4:	2a010041 	slti	at,s0,65
    2ac8:	1020000c 	beqz	at,2afc <Item_Give+0x3cc>
    2acc:	00106880 	sll	t5,s0,0x2
    2ad0:	3c0c0000 	lui	t4,0x0
    2ad4:	018d6021 	addu	t4,t4,t5
    2ad8:	3c190000 	lui	t9,0x0
    2adc:	93390001 	lbu	t9,1(t9)
    2ae0:	8d8cff08 	lw	t4,-248(t4)
    2ae4:	962e009c 	lhu	t6,156(s1)
    2ae8:	240200ff 	li	v0,255
    2aec:	032c7804 	sllv	t7,t4,t9
    2af0:	01cfc025 	or	t8,t6,t7
    2af4:	100004a7 	b	3d94 <Item_Give+0x1664>
    2af8:	a638009c 	sh	t8,156(s1)
    2afc:	2a010041 	slti	at,s0,65
    2b00:	1420000e 	bnez	at,2b3c <Item_Give+0x40c>
    2b04:	2a010044 	slti	at,s0,68
    2b08:	1020000c 	beqz	at,2b3c <Item_Give+0x40c>
    2b0c:	00106880 	sll	t5,s0,0x2
    2b10:	3c0c0000 	lui	t4,0x0
    2b14:	018d6021 	addu	t4,t4,t5
    2b18:	3c190000 	lui	t9,0x0
    2b1c:	93390002 	lbu	t9,2(t9)
    2b20:	8d8cfefc 	lw	t4,-260(t4)
    2b24:	962f009c 	lhu	t7,156(s1)
    2b28:	240200ff 	li	v0,255
    2b2c:	032c7004 	sllv	t6,t4,t9
    2b30:	01eec025 	or	t8,t7,t6
    2b34:	10000497 	b	3d94 <Item_Give+0x1664>
    2b38:	a638009c 	sh	t8,156(s1)
    2b3c:	2a010044 	slti	at,s0,68
    2b40:	1420000e 	bnez	at,2b7c <Item_Give+0x44c>
    2b44:	2a010047 	slti	at,s0,71
    2b48:	1020000c 	beqz	at,2b7c <Item_Give+0x44c>
    2b4c:	00106880 	sll	t5,s0,0x2
    2b50:	3c0c0000 	lui	t4,0x0
    2b54:	018d6021 	addu	t4,t4,t5
    2b58:	3c190000 	lui	t9,0x0
    2b5c:	93390003 	lbu	t9,3(t9)
    2b60:	8d8cfef0 	lw	t4,-272(t4)
    2b64:	962e009c 	lhu	t6,156(s1)
    2b68:	240200ff 	li	v0,255
    2b6c:	032c7804 	sllv	t7,t4,t9
    2b70:	01cfc025 	or	t8,t6,t7
    2b74:	10000487 	b	3d94 <Item_Give+0x1664>
    2b78:	a638009c 	sh	t8,156(s1)
    2b7c:	24010074 	li	at,116
    2b80:	12010006 	beq	s0,at,2b9c <Item_Give+0x46c>
    2b84:	0010c880 	sll	t9,s0,0x2
    2b88:	24010075 	li	at,117
    2b8c:	12010003 	beq	s0,at,2b9c <Item_Give+0x46c>
    2b90:	24010076 	li	at,118
    2b94:	5601000c 	bnel	s0,at,2bc8 <Item_Give+0x498>
    2b98:	24010077 	li	at,119
    2b9c:	962d1402 	lhu	t5,5122(s1)
    2ba0:	3c0e0000 	lui	t6,0x0
    2ba4:	01d97021 	addu	t6,t6,t9
    2ba8:	022d1821 	addu	v1,s1,t5
    2bac:	906c00a8 	lbu	t4,168(v1)
    2bb0:	8dcefe30 	lw	t6,-464(t6)
    2bb4:	240200ff 	li	v0,255
    2bb8:	018e7825 	or	t7,t4,t6
    2bbc:	10000475 	b	3d94 <Item_Give+0x1664>
    2bc0:	a06f00a8 	sb	t7,168(v1)
    2bc4:	24010077 	li	at,119
    2bc8:	5601000e 	bnel	s0,at,2c04 <Item_Give+0x4d4>
    2bcc:	2401004a 	li	at,74
    2bd0:	96381402 	lhu	t8,5122(s1)
    2bd4:	24060001 	li	a2,1
    2bd8:	240200ff 	li	v0,255
    2bdc:	02381821 	addu	v1,s1,t8
    2be0:	806400bc 	lb	a0,188(v1)
    2be4:	04810004 	bgez	a0,2bf8 <Item_Give+0x4c8>
    2be8:	248d0001 	addiu	t5,a0,1
    2bec:	a06600bc 	sb	a2,188(v1)
    2bf0:	10000468 	b	3d94 <Item_Give+0x1664>
    2bf4:	240200ff 	li	v0,255
    2bf8:	10000466 	b	3d94 <Item_Give+0x1664>
    2bfc:	a06d00bc 	sb	t5,188(v1)
    2c00:	2401004a 	li	at,74
    2c04:	12010002 	beq	s0,at,2c10 <Item_Give+0x4e0>
    2c08:	24010003 	li	at,3
    2c0c:	16010029 	bne	s0,at,2cb4 <Item_Give+0x584>
    2c10:	3c020000 	lui	v0,0x0
    2c14:	8c420000 	lw	v0,0(v0)
    2c18:	8e3900a0 	lw	t9,160(s1)
    2c1c:	3c040000 	lui	a0,0x0
    2c20:	90840000 	lbu	a0,0(a0)
    2c24:	03226024 	and	t4,t9,v0
    2c28:	24050001 	li	a1,1
    2c2c:	008c7007 	srav	t6,t4,a0
    2c30:	55c0000f 	bnezl	t6,2c70 <Item_Give+0x540>
    2c34:	91390003 	lbu	t9,3(t1)
    2c38:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2c3c:	00002025 	move	a0,zero
    2c40:	3c090000 	lui	t1,0x0
    2c44:	25290000 	addiu	t1,t1,0
    2c48:	912f0003 	lbu	t7,3(t1)
    2c4c:	24180003 	li	t8,3
    2c50:	3c0d0000 	lui	t5,0x0
    2c54:	022f1821 	addu	v1,s1,t7
    2c58:	a0780074 	sb	t8,116(v1)
    2c5c:	95ad0002 	lhu	t5,2(t5)
    2c60:	240200ff 	li	v0,255
    2c64:	1000044b 	b	3d94 <Item_Give+0x1664>
    2c68:	a06d008c 	sb	t5,140(v1)
    2c6c:	91390003 	lbu	t9,3(t1)
    2c70:	3c060000 	lui	a2,0x0
    2c74:	02391821 	addu	v1,s1,t9
    2c78:	806c008c 	lb	t4,140(v1)
    2c7c:	258e0001 	addiu	t6,t4,1
    2c80:	a06e008c 	sb	t6,140(v1)
    2c84:	8e2f00a0 	lw	t7,160(s1)
    2c88:	806c008c 	lb	t4,140(v1)
    2c8c:	01e2c024 	and	t8,t7,v0
    2c90:	00986807 	srav	t5,t8,a0
    2c94:	000dc840 	sll	t9,t5,0x1
    2c98:	00d93021 	addu	a2,a2,t9
    2c9c:	94c60000 	lhu	a2,0(a2)
    2ca0:	00cc082a 	slt	at,a2,t4
    2ca4:	5020042d 	beqzl	at,3d5c <Item_Give+0x162c>
    2ca8:	91470074 	lbu	a3,116(t2)
    2cac:	1000042a 	b	3d58 <Item_Give+0x1628>
    2cb0:	a066008c 	sb	a2,140(v1)
    2cb4:	2401004b 	li	at,75
    2cb8:	1601000c 	bne	s0,at,2cec <Item_Give+0x5bc>
    2cbc:	00002025 	move	a0,zero
    2cc0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2cc4:	24050002 	li	a1,2
    2cc8:	3c090000 	lui	t1,0x0
    2ccc:	25290000 	addiu	t1,t1,0
    2cd0:	912f0003 	lbu	t7,3(t1)
    2cd4:	3c0e0000 	lui	t6,0x0
    2cd8:	95ce0004 	lhu	t6,4(t6)
    2cdc:	022fc021 	addu	t8,s1,t7
    2ce0:	240200ff 	li	v0,255
    2ce4:	1000042b 	b	3d94 <Item_Give+0x1664>
    2ce8:	a30e008c 	sb	t6,140(t8)
    2cec:	2401004c 	li	at,76
    2cf0:	1601000c 	bne	s0,at,2d24 <Item_Give+0x5f4>
    2cf4:	00002025 	move	a0,zero
    2cf8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2cfc:	24050003 	li	a1,3
    2d00:	3c090000 	lui	t1,0x0
    2d04:	25290000 	addiu	t1,t1,0
    2d08:	91390003 	lbu	t9,3(t1)
    2d0c:	3c0d0000 	lui	t5,0x0
    2d10:	95ad0006 	lhu	t5,6(t5)
    2d14:	02396021 	addu	t4,s1,t9
    2d18:	240200ff 	li	v0,255
    2d1c:	1000041d 	b	3d94 <Item_Give+0x1664>
    2d20:	a18d008c 	sb	t5,140(t4)
    2d24:	24010048 	li	at,72
    2d28:	1601000c 	bne	s0,at,2d5c <Item_Give+0x62c>
    2d2c:	24040005 	li	a0,5
    2d30:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2d34:	24050002 	li	a1,2
    2d38:	3c090000 	lui	t1,0x0
    2d3c:	25290000 	addiu	t1,t1,0
    2d40:	912e0006 	lbu	t6,6(t1)
    2d44:	3c0f0000 	lui	t7,0x0
    2d48:	95ef002c 	lhu	t7,44(t7)
    2d4c:	022ec021 	addu	t8,s1,t6
    2d50:	240200ff 	li	v0,255
    2d54:	1000040f 	b	3d94 <Item_Give+0x1664>
    2d58:	a30f008c 	sb	t7,140(t8)
    2d5c:	24010049 	li	at,73
    2d60:	1601000c 	bne	s0,at,2d94 <Item_Give+0x664>
    2d64:	24040005 	li	a0,5
    2d68:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2d6c:	24050003 	li	a1,3
    2d70:	3c090000 	lui	t1,0x0
    2d74:	25290000 	addiu	t1,t1,0
    2d78:	912d0006 	lbu	t5,6(t1)
    2d7c:	3c190000 	lui	t9,0x0
    2d80:	9739002e 	lhu	t9,46(t9)
    2d84:	022d6021 	addu	t4,s1,t5
    2d88:	240200ff 	li	v0,255
    2d8c:	10000401 	b	3d94 <Item_Give+0x1664>
    2d90:	a199008c 	sb	t9,140(t4)
    2d94:	2401004d 	li	at,77
    2d98:	16010029 	bne	s0,at,2e40 <Item_Give+0x710>
    2d9c:	3c040000 	lui	a0,0x0
    2da0:	8c840004 	lw	a0,4(a0)
    2da4:	8e2e00a0 	lw	t6,160(s1)
    2da8:	3c050000 	lui	a1,0x0
    2dac:	90a50001 	lbu	a1,1(a1)
    2db0:	01c47824 	and	t7,t6,a0
    2db4:	00afc007 	srav	t8,t7,a1
    2db8:	57000010 	bnezl	t8,2dfc <Item_Give+0x6cc>
    2dbc:	912e0002 	lbu	t6,2(t1)
    2dc0:	24040001 	li	a0,1
    2dc4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2dc8:	24050001 	li	a1,1
    2dcc:	3c090000 	lui	t1,0x0
    2dd0:	25290000 	addiu	t1,t1,0
    2dd4:	912d0002 	lbu	t5,2(t1)
    2dd8:	24190002 	li	t9,2
    2ddc:	3c0c0000 	lui	t4,0x0
    2de0:	022d1821 	addu	v1,s1,t5
    2de4:	a0790074 	sb	t9,116(v1)
    2de8:	958c000a 	lhu	t4,10(t4)
    2dec:	240200ff 	li	v0,255
    2df0:	100003e8 	b	3d94 <Item_Give+0x1664>
    2df4:	a06c008c 	sb	t4,140(v1)
    2df8:	912e0002 	lbu	t6,2(t1)
    2dfc:	3c020000 	lui	v0,0x0
    2e00:	022e1821 	addu	v1,s1,t6
    2e04:	806f008c 	lb	t7,140(v1)
    2e08:	25f80001 	addiu	t8,t7,1
    2e0c:	a078008c 	sb	t8,140(v1)
    2e10:	8e2d00a0 	lw	t5,160(s1)
    2e14:	806f008c 	lb	t7,140(v1)
    2e18:	01a4c824 	and	t9,t5,a0
    2e1c:	00b96007 	srav	t4,t9,a1
    2e20:	000c7040 	sll	t6,t4,0x1
    2e24:	004e1021 	addu	v0,v0,t6
    2e28:	94420008 	lhu	v0,8(v0)
    2e2c:	004f082a 	slt	at,v0,t7
    2e30:	502003ca 	beqzl	at,3d5c <Item_Give+0x162c>
    2e34:	91470074 	lbu	a3,116(t2)
    2e38:	100003c7 	b	3d58 <Item_Give+0x1628>
    2e3c:	a062008c 	sb	v0,140(v1)
    2e40:	2401004e 	li	at,78
    2e44:	1601000c 	bne	s0,at,2e78 <Item_Give+0x748>
    2e48:	24040001 	li	a0,1
    2e4c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2e50:	24050002 	li	a1,2
    2e54:	3c090000 	lui	t1,0x0
    2e58:	25290000 	addiu	t1,t1,0
    2e5c:	912d0002 	lbu	t5,2(t1)
    2e60:	3c180000 	lui	t8,0x0
    2e64:	9718000c 	lhu	t8,12(t8)
    2e68:	022dc821 	addu	t9,s1,t5
    2e6c:	240200ff 	li	v0,255
    2e70:	100003c8 	b	3d94 <Item_Give+0x1664>
    2e74:	a338008c 	sb	t8,140(t9)
    2e78:	2401004f 	li	at,79
    2e7c:	1601000c 	bne	s0,at,2eb0 <Item_Give+0x780>
    2e80:	24040001 	li	a0,1
    2e84:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2e88:	24050003 	li	a1,3
    2e8c:	3c090000 	lui	t1,0x0
    2e90:	25290000 	addiu	t1,t1,0
    2e94:	912e0002 	lbu	t6,2(t1)
    2e98:	3c0c0000 	lui	t4,0x0
    2e9c:	958c000e 	lhu	t4,14(t4)
    2ea0:	022e7821 	addu	t7,s1,t6
    2ea4:	240200ff 	li	v0,255
    2ea8:	100003ba 	b	3d94 <Item_Give+0x1664>
    2eac:	a1ec008c 	sb	t4,140(t7)
    2eb0:	24010050 	li	at,80
    2eb4:	16010005 	bne	s0,at,2ecc <Item_Give+0x79c>
    2eb8:	24040002 	li	a0,2
    2ebc:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2ec0:	24050001 	li	a1,1
    2ec4:	100003b3 	b	3d94 <Item_Give+0x1664>
    2ec8:	240200ff 	li	v0,255
    2ecc:	24010051 	li	at,81
    2ed0:	16010005 	bne	s0,at,2ee8 <Item_Give+0x7b8>
    2ed4:	24040002 	li	a0,2
    2ed8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2edc:	24050002 	li	a1,2
    2ee0:	100003ac 	b	3d94 <Item_Give+0x1664>
    2ee4:	240200ff 	li	v0,255
    2ee8:	24010052 	li	at,82
    2eec:	16010005 	bne	s0,at,2f04 <Item_Give+0x7d4>
    2ef0:	24040002 	li	a0,2
    2ef4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2ef8:	24050003 	li	a1,3
    2efc:	100003a5 	b	3d94 <Item_Give+0x1664>
    2f00:	240200ff 	li	v0,255
    2f04:	24010053 	li	at,83
    2f08:	16010005 	bne	s0,at,2f20 <Item_Give+0x7f0>
    2f0c:	24040003 	li	a0,3
    2f10:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2f14:	24050001 	li	a1,1
    2f18:	1000039e 	b	3d94 <Item_Give+0x1664>
    2f1c:	240200ff 	li	v0,255
    2f20:	24010054 	li	at,84
    2f24:	16010005 	bne	s0,at,2f3c <Item_Give+0x80c>
    2f28:	24040003 	li	a0,3
    2f2c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2f30:	24050002 	li	a1,2
    2f34:	10000397 	b	3d94 <Item_Give+0x1664>
    2f38:	240200ff 	li	v0,255
    2f3c:	24010056 	li	at,86
    2f40:	16010005 	bne	s0,at,2f58 <Item_Give+0x828>
    2f44:	24040004 	li	a0,4
    2f48:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2f4c:	24050001 	li	a1,1
    2f50:	10000390 	b	3d94 <Item_Give+0x1664>
    2f54:	240200ff 	li	v0,255
    2f58:	24010057 	li	at,87
    2f5c:	16010005 	bne	s0,at,2f74 <Item_Give+0x844>
    2f60:	24040004 	li	a0,4
    2f64:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2f68:	24050002 	li	a1,2
    2f6c:	10000389 	b	3d94 <Item_Give+0x1664>
    2f70:	240200ff 	li	v0,255
    2f74:	24010098 	li	at,152
    2f78:	16010013 	bne	s0,at,2fc8 <Item_Give+0x898>
    2f7c:	24040006 	li	a0,6
    2f80:	914d0074 	lbu	t5,116(t2)
    2f84:	240500ff 	li	a1,255
    2f88:	14ad0004 	bne	a1,t5,2f9c <Item_Give+0x86c>
    2f8c:	00000000 	nop
    2f90:	91380000 	lbu	t8,0(t1)
    2f94:	0238c821 	addu	t9,s1,t8
    2f98:	a3200074 	sb	zero,116(t9)
    2f9c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2fa0:	24050002 	li	a1,2
    2fa4:	3c090000 	lui	t1,0x0
    2fa8:	25290000 	addiu	t1,t1,0
    2fac:	912c0000 	lbu	t4,0(t1)
    2fb0:	3c0e0000 	lui	t6,0x0
    2fb4:	95ce0034 	lhu	t6,52(t6)
    2fb8:	022c7821 	addu	t7,s1,t4
    2fbc:	240200ff 	li	v0,255
    2fc0:	10000374 	b	3d94 <Item_Give+0x1664>
    2fc4:	a1ee008c 	sb	t6,140(t7)
    2fc8:	24010099 	li	at,153
    2fcc:	16010013 	bne	s0,at,301c <Item_Give+0x8ec>
    2fd0:	24040006 	li	a0,6
    2fd4:	914d0074 	lbu	t5,116(t2)
    2fd8:	240500ff 	li	a1,255
    2fdc:	14ad0004 	bne	a1,t5,2ff0 <Item_Give+0x8c0>
    2fe0:	00000000 	nop
    2fe4:	91380000 	lbu	t8,0(t1)
    2fe8:	0238c821 	addu	t9,s1,t8
    2fec:	a3200074 	sb	zero,116(t9)
    2ff0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    2ff4:	24050003 	li	a1,3
    2ff8:	3c090000 	lui	t1,0x0
    2ffc:	25290000 	addiu	t1,t1,0
    3000:	912e0000 	lbu	t6,0(t1)
    3004:	3c0c0000 	lui	t4,0x0
    3008:	958c0036 	lhu	t4,54(t4)
    300c:	022e7821 	addu	t7,s1,t6
    3010:	240200ff 	li	v0,255
    3014:	1000035f 	b	3d94 <Item_Give+0x1664>
    3018:	a1ec008c 	sb	t4,140(t7)
    301c:	2401009a 	li	at,154
    3020:	16010014 	bne	s0,at,3074 <Item_Give+0x944>
    3024:	24040007 	li	a0,7
    3028:	914d0074 	lbu	t5,116(t2)
    302c:	240500ff 	li	a1,255
    3030:	14ad0005 	bne	a1,t5,3048 <Item_Give+0x918>
    3034:	00000000 	nop
    3038:	91390001 	lbu	t9,1(t1)
    303c:	24180001 	li	t8,1
    3040:	02397021 	addu	t6,s1,t9
    3044:	a1d80074 	sb	t8,116(t6)
    3048:	0c000000 	jal	0 <Interface_ChangeAlpha>
    304c:	24050002 	li	a1,2
    3050:	3c090000 	lui	t1,0x0
    3054:	25290000 	addiu	t1,t1,0
    3058:	912f0001 	lbu	t7,1(t1)
    305c:	3c0c0000 	lui	t4,0x0
    3060:	958c003c 	lhu	t4,60(t4)
    3064:	022f6821 	addu	t5,s1,t7
    3068:	240200ff 	li	v0,255
    306c:	10000349 	b	3d94 <Item_Give+0x1664>
    3070:	a1ac008c 	sb	t4,140(t5)
    3074:	2401009b 	li	at,155
    3078:	16010014 	bne	s0,at,30cc <Item_Give+0x99c>
    307c:	24040007 	li	a0,7
    3080:	91590074 	lbu	t9,116(t2)
    3084:	240500ff 	li	a1,255
    3088:	14b90005 	bne	a1,t9,30a0 <Item_Give+0x970>
    308c:	00000000 	nop
    3090:	912e0001 	lbu	t6,1(t1)
    3094:	24180001 	li	t8,1
    3098:	022e7821 	addu	t7,s1,t6
    309c:	a1f80074 	sb	t8,116(t7)
    30a0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    30a4:	24050003 	li	a1,3
    30a8:	3c090000 	lui	t1,0x0
    30ac:	25290000 	addiu	t1,t1,0
    30b0:	912d0001 	lbu	t5,1(t1)
    30b4:	3c0c0000 	lui	t4,0x0
    30b8:	958c003e 	lhu	t4,62(t4)
    30bc:	022dc821 	addu	t9,s1,t5
    30c0:	240200ff 	li	v0,255
    30c4:	10000333 	b	3d94 <Item_Give+0x1664>
    30c8:	a32c008c 	sb	t4,140(t9)
    30cc:	2401000b 	li	at,11
    30d0:	16010019 	bne	s0,at,3138 <Item_Give+0xa08>
    30d4:	00000000 	nop
    30d8:	91780000 	lbu	t8,0(t3)
    30dc:	93ae004f 	lbu	t6,79(sp)
    30e0:	24020001 	li	v0,1
    30e4:	02387821 	addu	t7,s1,t8
    30e8:	a1ee0074 	sb	t6,116(t7)
    30ec:	02221821 	addu	v1,s1,v0
    30f0:	906d0068 	lbu	t5,104(v1)
    30f4:	2401000a 	li	at,10
    30f8:	240c000b 	li	t4,11
    30fc:	15a10006 	bne	t5,at,3118 <Item_Give+0x9e8>
    3100:	3045ffff 	andi	a1,v0,0xffff
    3104:	a06c0068 	sb	t4,104(v1)
    3108:	8fa40048 	lw	a0,72(sp)
    310c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    3110:	a7a20046 	sh	v0,70(sp)
    3114:	87a20046 	lh	v0,70(sp)
    3118:	24420001 	addiu	v0,v0,1
    311c:	00021400 	sll	v0,v0,0x10
    3120:	00021403 	sra	v0,v0,0x10
    3124:	28410004 	slti	at,v0,4
    3128:	5420fff1 	bnezl	at,30f0 <Item_Give+0x9c0>
    312c:	02221821 	addu	v1,s1,v0
    3130:	10000318 	b	3d94 <Item_Give+0x1664>
    3134:	240200ff 	li	v0,255
    3138:	16000028 	bnez	s0,31dc <Item_Give+0xaac>
    313c:	2401008a 	li	at,138
    3140:	91590074 	lbu	t9,116(t2)
    3144:	240500ff 	li	a1,255
    3148:	24040006 	li	a0,6
    314c:	14b9000d 	bne	a1,t9,3184 <Item_Give+0xa54>
    3150:	24050001 	li	a1,1
    3154:	afaa0034 	sw	t2,52(sp)
    3158:	0c000000 	jal	0 <Interface_ChangeAlpha>
    315c:	afab003c 	sw	t3,60(sp)
    3160:	3c090000 	lui	t1,0x0
    3164:	25290000 	addiu	t1,t1,0
    3168:	91380000 	lbu	t8,0(t1)
    316c:	24060001 	li	a2,1
    3170:	8faa0034 	lw	t2,52(sp)
    3174:	02387021 	addu	t6,s1,t8
    3178:	8fab003c 	lw	t3,60(sp)
    317c:	100002f6 	b	3d58 <Item_Give+0x1628>
    3180:	a1c6008c 	sb	a2,140(t6)
    3184:	912f0000 	lbu	t7,0(t1)
    3188:	3c180000 	lui	t8,0x0
    318c:	3c030000 	lui	v1,0x0
    3190:	022f1021 	addu	v0,s1,t7
    3194:	804d008c 	lb	t5,140(v0)
    3198:	3c0f0000 	lui	t7,0x0
    319c:	25ac0001 	addiu	t4,t5,1
    31a0:	a04c008c 	sb	t4,140(v0)
    31a4:	8f180018 	lw	t8,24(t8)
    31a8:	8e3900a0 	lw	t9,160(s1)
    31ac:	91ef0006 	lbu	t7,6(t7)
    31b0:	03387024 	and	t6,t9,t8
    31b4:	01ee6807 	srav	t5,t6,t7
    31b8:	000d6040 	sll	t4,t5,0x1
    31bc:	006c1821 	addu	v1,v1,t4
    31c0:	94630030 	lhu	v1,48(v1)
    31c4:	8059008c 	lb	t9,140(v0)
    31c8:	0079082a 	slt	at,v1,t9
    31cc:	502002e3 	beqzl	at,3d5c <Item_Give+0x162c>
    31d0:	91470074 	lbu	a3,116(t2)
    31d4:	100002e0 	b	3d58 <Item_Give+0x1628>
    31d8:	a043008c 	sb	v1,140(v0)
    31dc:	12010003 	beq	s0,at,31ec <Item_Give+0xabc>
    31e0:	2401008b 	li	at,139
    31e4:	16010032 	bne	s0,at,32b0 <Item_Give+0xb80>
    31e8:	24060001 	li	a2,1
    31ec:	91580074 	lbu	t8,116(t2)
    31f0:	240500ff 	li	a1,255
    31f4:	00104040 	sll	t0,s0,0x1
    31f8:	14b80010 	bne	a1,t8,323c <Item_Give+0xb0c>
    31fc:	24040006 	li	a0,6
    3200:	24050001 	li	a1,1
    3204:	afa8003c 	sw	t0,60(sp)
    3208:	0c000000 	jal	0 <Interface_ChangeAlpha>
    320c:	afaa0034 	sw	t2,52(sp)
    3210:	8fa8003c 	lw	t0,60(sp)
    3214:	3c090000 	lui	t1,0x0
    3218:	25290000 	addiu	t1,t1,0
    321c:	912f0000 	lbu	t7,0(t1)
    3220:	3c0e0000 	lui	t6,0x0
    3224:	01c87021 	addu	t6,t6,t0
    3228:	85cefeec 	lh	t6,-276(t6)
    322c:	022f6821 	addu	t5,s1,t7
    3230:	8faa0034 	lw	t2,52(sp)
    3234:	10000019 	b	329c <Item_Give+0xb6c>
    3238:	a1ae008c 	sb	t6,140(t5)
    323c:	912c0000 	lbu	t4,0(t1)
    3240:	3c180000 	lui	t8,0x0
    3244:	0308c021 	addu	t8,t8,t0
    3248:	022c1021 	addu	v0,s1,t4
    324c:	8059008c 	lb	t9,140(v0)
    3250:	8718feec 	lh	t8,-276(t8)
    3254:	3c0d0000 	lui	t5,0x0
    3258:	3c030000 	lui	v1,0x0
    325c:	03387821 	addu	t7,t9,t8
    3260:	a04f008c 	sb	t7,140(v0)
    3264:	8dad0018 	lw	t5,24(t5)
    3268:	8e2e00a0 	lw	t6,160(s1)
    326c:	3c190000 	lui	t9,0x0
    3270:	93390006 	lbu	t9,6(t9)
    3274:	01cd6024 	and	t4,t6,t5
    3278:	804e008c 	lb	t6,140(v0)
    327c:	032cc007 	srav	t8,t4,t9
    3280:	00187840 	sll	t7,t8,0x1
    3284:	006f1821 	addu	v1,v1,t7
    3288:	94630030 	lhu	v1,48(v1)
    328c:	006e082a 	slt	at,v1,t6
    3290:	10200002 	beqz	at,329c <Item_Give+0xb6c>
    3294:	00000000 	nop
    3298:	a043008c 	sb	v1,140(v0)
    329c:	3c0b0000 	lui	t3,0x0
    32a0:	256b0000 	addiu	t3,t3,0
    32a4:	a3a0004f 	sb	zero,79(sp)
    32a8:	100002ab 	b	3d58 <Item_Give+0x1628>
    32ac:	00008025 	move	s0,zero
    32b0:	14d00029 	bne	a2,s0,3358 <Item_Give+0xc28>
    32b4:	2401008c 	li	at,140
    32b8:	914d0074 	lbu	t5,116(t2)
    32bc:	240500ff 	li	a1,255
    32c0:	24040007 	li	a0,7
    32c4:	14ad000e 	bne	a1,t5,3300 <Item_Give+0xbd0>
    32c8:	00062c00 	sll	a1,a2,0x10
    32cc:	00052c03 	sra	a1,a1,0x10
    32d0:	afaa0034 	sw	t2,52(sp)
    32d4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    32d8:	afab003c 	sw	t3,60(sp)
    32dc:	3c090000 	lui	t1,0x0
    32e0:	25290000 	addiu	t1,t1,0
    32e4:	912c0001 	lbu	t4,1(t1)
    32e8:	24060001 	li	a2,1
    32ec:	8faa0034 	lw	t2,52(sp)
    32f0:	022cc821 	addu	t9,s1,t4
    32f4:	8fab003c 	lw	t3,60(sp)
    32f8:	10000297 	b	3d58 <Item_Give+0x1628>
    32fc:	a326008c 	sb	a2,140(t9)
    3300:	91380001 	lbu	t8,1(t1)
    3304:	3c0c0000 	lui	t4,0x0
    3308:	3c030000 	lui	v1,0x0
    330c:	02381021 	addu	v0,s1,t8
    3310:	804f008c 	lb	t7,140(v0)
    3314:	3c180000 	lui	t8,0x0
    3318:	25ee0001 	addiu	t6,t7,1
    331c:	a04e008c 	sb	t6,140(v0)
    3320:	8d8c001c 	lw	t4,28(t4)
    3324:	8e2d00a0 	lw	t5,160(s1)
    3328:	93180007 	lbu	t8,7(t8)
    332c:	01acc824 	and	t9,t5,t4
    3330:	03197807 	srav	t7,t9,t8
    3334:	000f7040 	sll	t6,t7,0x1
    3338:	006e1821 	addu	v1,v1,t6
    333c:	94630038 	lhu	v1,56(v1)
    3340:	804d008c 	lb	t5,140(v0)
    3344:	006d082a 	slt	at,v1,t5
    3348:	50200284 	beqzl	at,3d5c <Item_Give+0x162c>
    334c:	91470074 	lbu	a3,116(t2)
    3350:	10000281 	b	3d58 <Item_Give+0x1628>
    3354:	a043008c 	sb	v1,140(v0)
    3358:	12010003 	beq	s0,at,3368 <Item_Give+0xc38>
    335c:	2401008d 	li	at,141
    3360:	5601003d 	bnel	s0,at,3458 <Item_Give+0xd28>
    3364:	24010002 	li	at,2
    3368:	914c0074 	lbu	t4,116(t2)
    336c:	240500ff 	li	a1,255
    3370:	00104040 	sll	t0,s0,0x1
    3374:	14ac0019 	bne	a1,t4,33dc <Item_Give+0xcac>
    3378:	24040007 	li	a0,7
    337c:	24050001 	li	a1,1
    3380:	afa8003c 	sw	t0,60(sp)
    3384:	0c000000 	jal	0 <Interface_ChangeAlpha>
    3388:	afaa0034 	sw	t2,52(sp)
    338c:	3c090000 	lui	t1,0x0
    3390:	25290000 	addiu	t1,t1,0
    3394:	8fa8003c 	lw	t0,60(sp)
    3398:	91390001 	lbu	t9,1(t1)
    339c:	3c030000 	lui	v1,0x0
    33a0:	00681821 	addu	v1,v1,t0
    33a4:	02391021 	addu	v0,s1,t9
    33a8:	8058008c 	lb	t8,140(v0)
    33ac:	8463fee8 	lh	v1,-280(v1)
    33b0:	3c040000 	lui	a0,0x0
    33b4:	24840000 	addiu	a0,a0,0
    33b8:	03037821 	addu	t7,t8,v1
    33bc:	a04f008c 	sb	t7,140(v0)
    33c0:	02002825 	move	a1,s0
    33c4:	2406008c 	li	a2,140
    33c8:	2607ff74 	addiu	a3,s0,-140
    33cc:	0c000000 	jal	0 <Interface_ChangeAlpha>
    33d0:	afa30010 	sw	v1,16(sp)
    33d4:	10000019 	b	343c <Item_Give+0xd0c>
    33d8:	8faa0034 	lw	t2,52(sp)
    33dc:	912e0001 	lbu	t6,1(t1)
    33e0:	3c0c0000 	lui	t4,0x0
    33e4:	01886021 	addu	t4,t4,t0
    33e8:	022e1021 	addu	v0,s1,t6
    33ec:	804d008c 	lb	t5,140(v0)
    33f0:	858cfee8 	lh	t4,-280(t4)
    33f4:	3c0f0000 	lui	t7,0x0
    33f8:	3c030000 	lui	v1,0x0
    33fc:	01acc821 	addu	t9,t5,t4
    3400:	a059008c 	sb	t9,140(v0)
    3404:	8def001c 	lw	t7,28(t7)
    3408:	8e3800a0 	lw	t8,160(s1)
    340c:	3c0d0000 	lui	t5,0x0
    3410:	91ad0007 	lbu	t5,7(t5)
    3414:	030f7024 	and	t6,t8,t7
    3418:	8058008c 	lb	t8,140(v0)
    341c:	01ae6007 	srav	t4,t6,t5
    3420:	000cc840 	sll	t9,t4,0x1
    3424:	00791821 	addu	v1,v1,t9
    3428:	94630038 	lhu	v1,56(v1)
    342c:	0078082a 	slt	at,v1,t8
    3430:	50200003 	beqzl	at,3440 <Item_Give+0xd10>
    3434:	240f0001 	li	t7,1
    3438:	a043008c 	sb	v1,140(v0)
    343c:	240f0001 	li	t7,1
    3440:	3c0b0000 	lui	t3,0x0
    3444:	256b0001 	addiu	t3,t3,1
    3448:	a3af004f 	sb	t7,79(sp)
    344c:	10000242 	b	3d58 <Item_Give+0x1628>
    3450:	24100001 	li	s0,1
    3454:	24010002 	li	at,2
    3458:	1601001d 	bne	s0,at,34d0 <Item_Give+0xda0>
    345c:	3c040000 	lui	a0,0x0
    3460:	0c000000 	jal	0 <Interface_ChangeAlpha>
    3464:	24840000 	addiu	a0,a0,0
    3468:	3c090000 	lui	t1,0x0
    346c:	25290000 	addiu	t1,t1,0
    3470:	912e0002 	lbu	t6,2(t1)
    3474:	3c0c0000 	lui	t4,0x0
    3478:	3c180000 	lui	t8,0x0
    347c:	022e1821 	addu	v1,s1,t6
    3480:	8064008c 	lb	a0,140(v1)
    3484:	3c020000 	lui	v0,0x0
    3488:	24840001 	addiu	a0,a0,1
    348c:	00042600 	sll	a0,a0,0x18
    3490:	00042603 	sra	a0,a0,0x18
    3494:	a064008c 	sb	a0,140(v1)
    3498:	8d8c0004 	lw	t4,4(t4)
    349c:	8e2d00a0 	lw	t5,160(s1)
    34a0:	93180001 	lbu	t8,1(t8)
    34a4:	01acc824 	and	t9,t5,t4
    34a8:	03197807 	srav	t7,t9,t8
    34ac:	000f7040 	sll	t6,t7,0x1
    34b0:	004e1021 	addu	v0,v0,t6
    34b4:	94420008 	lhu	v0,8(v0)
    34b8:	0044082a 	slt	at,v0,a0
    34bc:	10200002 	beqz	at,34c8 <Item_Give+0xd98>
    34c0:	00000000 	nop
    34c4:	a062008c 	sb	v0,140(v1)
    34c8:	10000232 	b	3d94 <Item_Give+0x1664>
    34cc:	240200ff 	li	v0,255
    34d0:	2a01008e 	slti	at,s0,142
    34d4:	1420001e 	bnez	at,3550 <Item_Give+0xe20>
    34d8:	2a010092 	slti	at,s0,146
    34dc:	1020001c 	beqz	at,3550 <Item_Give+0xe20>
    34e0:	0010c840 	sll	t9,s0,0x1
    34e4:	912d0002 	lbu	t5,2(t1)
    34e8:	3c180000 	lui	t8,0x0
    34ec:	0319c021 	addu	t8,t8,t9
    34f0:	022d1821 	addu	v1,s1,t5
    34f4:	806c008c 	lb	t4,140(v1)
    34f8:	8718fee4 	lh	t8,-284(t8)
    34fc:	3c0e0000 	lui	t6,0x0
    3500:	3c190000 	lui	t9,0x0
    3504:	01982021 	addu	a0,t4,t8
    3508:	00042600 	sll	a0,a0,0x18
    350c:	00042603 	sra	a0,a0,0x18
    3510:	a064008c 	sb	a0,140(v1)
    3514:	8dce0004 	lw	t6,4(t6)
    3518:	8e2f00a0 	lw	t7,160(s1)
    351c:	93390001 	lbu	t9,1(t9)
    3520:	3c020000 	lui	v0,0x0
    3524:	01ee6824 	and	t5,t7,t6
    3528:	032d6007 	srav	t4,t5,t9
    352c:	000cc040 	sll	t8,t4,0x1
    3530:	00581021 	addu	v0,v0,t8
    3534:	94420008 	lhu	v0,8(v0)
    3538:	0044082a 	slt	at,v0,a0
    353c:	10200002 	beqz	at,3548 <Item_Give+0xe18>
    3540:	00000000 	nop
    3544:	a062008c 	sb	v0,140(v1)
    3548:	10000212 	b	3d94 <Item_Give+0x1664>
    354c:	240200ff 	li	v0,255
    3550:	24010009 	li	at,9
    3554:	5601001b 	bnel	s0,at,35c4 <Item_Give+0xe94>
    3558:	24010096 	li	at,150
    355c:	914f0074 	lbu	t7,116(t2)
    3560:	240500ff 	li	a1,255
    3564:	240d0009 	li	t5,9
    3568:	54af0009 	bnel	a1,t7,3590 <Item_Give+0xe60>
    356c:	912c0009 	lbu	t4,9(t1)
    3570:	912e0009 	lbu	t6,9(t1)
    3574:	2419000a 	li	t9,10
    3578:	240200ff 	li	v0,255
    357c:	022e1821 	addu	v1,s1,t6
    3580:	a06d0074 	sb	t5,116(v1)
    3584:	10000203 	b	3d94 <Item_Give+0x1664>
    3588:	a079008c 	sb	t9,140(v1)
    358c:	912c0009 	lbu	t4,9(t1)
    3590:	240d0032 	li	t5,50
    3594:	022c1821 	addu	v1,s1,t4
    3598:	8078008c 	lb	t8,140(v1)
    359c:	270f000a 	addiu	t7,t8,10
    35a0:	a06f008c 	sb	t7,140(v1)
    35a4:	806e008c 	lb	t6,140(v1)
    35a8:	29c10033 	slti	at,t6,51
    35ac:	14200002 	bnez	at,35b8 <Item_Give+0xe88>
    35b0:	00000000 	nop
    35b4:	a06d008c 	sb	t5,140(v1)
    35b8:	100001f6 	b	3d94 <Item_Give+0x1664>
    35bc:	240200ff 	li	v0,255
    35c0:	24010096 	li	at,150
    35c4:	12010003 	beq	s0,at,35d4 <Item_Give+0xea4>
    35c8:	24010097 	li	at,151
    35cc:	56010022 	bnel	s0,at,3658 <Item_Give+0xf28>
    35d0:	2a010092 	slti	at,s0,146
    35d4:	91590074 	lbu	t9,116(t2)
    35d8:	240500ff 	li	a1,255
    35dc:	00104040 	sll	t0,s0,0x1
    35e0:	14b9000d 	bne	a1,t9,3618 <Item_Give+0xee8>
    35e4:	3c180000 	lui	t8,0x0
    35e8:	912c0009 	lbu	t4,9(t1)
    35ec:	24180009 	li	t8,9
    35f0:	3c0e0000 	lui	t6,0x0
    35f4:	022c1821 	addu	v1,s1,t4
    35f8:	a0780074 	sb	t8,116(v1)
    35fc:	01c87021 	addu	t6,t6,t0
    3600:	85cefee4 	lh	t6,-284(t6)
    3604:	806f008c 	lb	t7,140(v1)
    3608:	240200ff 	li	v0,255
    360c:	01ee6821 	addu	t5,t7,t6
    3610:	100001e0 	b	3d94 <Item_Give+0x1664>
    3614:	a06d008c 	sb	t5,140(v1)
    3618:	91390009 	lbu	t9,9(t1)
    361c:	0308c021 	addu	t8,t8,t0
    3620:	8718fee4 	lh	t8,-284(t8)
    3624:	02391821 	addu	v1,s1,t9
    3628:	806c008c 	lb	t4,140(v1)
    362c:	240d0032 	li	t5,50
    3630:	01987821 	addu	t7,t4,t8
    3634:	a06f008c 	sb	t7,140(v1)
    3638:	806e008c 	lb	t6,140(v1)
    363c:	29c10033 	slti	at,t6,51
    3640:	14200002 	bnez	at,364c <Item_Give+0xf1c>
    3644:	00000000 	nop
    3648:	a06d008c 	sb	t5,140(v1)
    364c:	100001d1 	b	3d94 <Item_Give+0x1664>
    3650:	240200ff 	li	v0,255
    3654:	2a010092 	slti	at,s0,146
    3658:	1420002b 	bnez	at,3708 <Item_Give+0xfd8>
    365c:	2a010095 	slti	at,s0,149
    3660:	10200029 	beqz	at,3708 <Item_Give+0xfd8>
    3664:	0010c040 	sll	t8,s0,0x1
    3668:	91390003 	lbu	t9,3(t1)
    366c:	3c0f0000 	lui	t7,0x0
    3670:	01f87821 	addu	t7,t7,t8
    3674:	02391821 	addu	v1,s1,t9
    3678:	806c008c 	lb	t4,140(v1)
    367c:	85effee4 	lh	t7,-284(t7)
    3680:	3c020000 	lui	v0,0x0
    3684:	3c040000 	lui	a0,0x0
    3688:	018f7021 	addu	t6,t4,t7
    368c:	a06e008c 	sb	t6,140(v1)
    3690:	8e2d00a0 	lw	t5,160(s1)
    3694:	8c420000 	lw	v0,0(v0)
    3698:	90840000 	lbu	a0,0(a0)
    369c:	3c060000 	lui	a2,0x0
    36a0:	01a2c824 	and	t9,t5,v0
    36a4:	0099c007 	srav	t8,t9,a0
    36a8:	00186040 	sll	t4,t8,0x1
    36ac:	00cc3021 	addu	a2,a2,t4
    36b0:	94c60000 	lhu	a2,0(a2)
    36b4:	8065008c 	lb	a1,140(v1)
    36b8:	3c0f0000 	lui	t7,0x0
    36bc:	00a6082a 	slt	at,a1,a2
    36c0:	50200004 	beqzl	at,36d4 <Item_Give+0xfa4>
    36c4:	a066008c 	sb	a2,140(v1)
    36c8:	04a1000a 	bgez	a1,36f4 <Item_Give+0xfc4>
    36cc:	00000000 	nop
    36d0:	a066008c 	sb	a2,140(v1)
    36d4:	8def00a0 	lw	t7,160(t7)
    36d8:	3c060000 	lui	a2,0x0
    36dc:	8065008c 	lb	a1,140(v1)
    36e0:	01e27024 	and	t6,t7,v0
    36e4:	008e6807 	srav	t5,t6,a0
    36e8:	000dc840 	sll	t9,t5,0x1
    36ec:	00d93021 	addu	a2,a2,t9
    36f0:	94c60000 	lhu	a2,0(a2)
    36f4:	3c040000 	lui	a0,0x0
    36f8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    36fc:	24840000 	addiu	a0,a0,0
    3700:	100001a4 	b	3d94 <Item_Give+0x1664>
    3704:	24020003 	li	v0,3
    3708:	24010006 	li	at,6
    370c:	1601000d 	bne	s0,at,3744 <Item_Give+0x1014>
    3710:	24040005 	li	a0,5
    3714:	0c000000 	jal	0 <Interface_ChangeAlpha>
    3718:	24050001 	li	a1,1
    371c:	3c090000 	lui	t1,0x0
    3720:	25290000 	addiu	t1,t1,0
    3724:	91380006 	lbu	t8,6(t1)
    3728:	240c0006 	li	t4,6
    372c:	240f001e 	li	t7,30
    3730:	02381821 	addu	v1,s1,t8
    3734:	a06c0074 	sb	t4,116(v1)
    3738:	a06f008c 	sb	t7,140(v1)
    373c:	10000195 	b	3d94 <Item_Give+0x1664>
    3740:	240200ff 	li	v0,255
    3744:	24010058 	li	at,88
    3748:	56010020 	bnel	s0,at,37cc <Item_Give+0x109c>
    374c:	24010095 	li	at,149
    3750:	912e0006 	lbu	t6,6(t1)
    3754:	3c0c0000 	lui	t4,0x0
    3758:	3c020000 	lui	v0,0x0
    375c:	022e1821 	addu	v1,s1,t6
    3760:	806d008c 	lb	t5,140(v1)
    3764:	3c0e0000 	lui	t6,0x0
    3768:	25b90005 	addiu	t9,t5,5
    376c:	a079008c 	sb	t9,140(v1)
    3770:	8d8c0014 	lw	t4,20(t4)
    3774:	8e3800a0 	lw	t8,160(s1)
    3778:	91ce0005 	lbu	t6,5(t6)
    377c:	030c7824 	and	t7,t8,t4
    3780:	01cf6807 	srav	t5,t7,t6
    3784:	000dc840 	sll	t9,t5,0x1
    3788:	00591021 	addu	v0,v0,t9
    378c:	94420028 	lhu	v0,40(v0)
    3790:	8078008c 	lb	t8,140(v1)
    3794:	0302082a 	slt	at,t8,v0
    3798:	54200003 	bnezl	at,37a8 <Item_Give+0x1078>
    379c:	96230ef2 	lhu	v1,3826(s1)
    37a0:	a062008c 	sb	v0,140(v1)
    37a4:	96230ef2 	lhu	v1,3826(s1)
    37a8:	240200ff 	li	v0,255
    37ac:	306c0008 	andi	t4,v1,0x8
    37b0:	15800003 	bnez	t4,37c0 <Item_Give+0x1090>
    37b4:	346f0008 	ori	t7,v1,0x8
    37b8:	10000176 	b	3d94 <Item_Give+0x1664>
    37bc:	a62f0ef2 	sh	t7,3826(s1)
    37c0:	10000174 	b	3d94 <Item_Give+0x1664>
    37c4:	24020058 	li	v0,88
    37c8:	24010095 	li	at,149
    37cc:	56010020 	bnel	s0,at,3850 <Item_Give+0x1120>
    37d0:	24010007 	li	at,7
    37d4:	912e0006 	lbu	t6,6(t1)
    37d8:	3c0c0000 	lui	t4,0x0
    37dc:	3c020000 	lui	v0,0x0
    37e0:	022e1821 	addu	v1,s1,t6
    37e4:	806d008c 	lb	t5,140(v1)
    37e8:	3c0e0000 	lui	t6,0x0
    37ec:	25b9001e 	addiu	t9,t5,30
    37f0:	a079008c 	sb	t9,140(v1)
    37f4:	8d8c0014 	lw	t4,20(t4)
    37f8:	8e3800a0 	lw	t8,160(s1)
    37fc:	91ce0005 	lbu	t6,5(t6)
    3800:	030c7824 	and	t7,t8,t4
    3804:	01cf6807 	srav	t5,t7,t6
    3808:	000dc840 	sll	t9,t5,0x1
    380c:	00591021 	addu	v0,v0,t9
    3810:	94420028 	lhu	v0,40(v0)
    3814:	8078008c 	lb	t8,140(v1)
    3818:	0302082a 	slt	at,t8,v0
    381c:	54200003 	bnezl	at,382c <Item_Give+0x10fc>
    3820:	96230ef2 	lhu	v1,3826(s1)
    3824:	a062008c 	sb	v0,140(v1)
    3828:	96230ef2 	lhu	v1,3826(s1)
    382c:	240200ff 	li	v0,255
    3830:	306c0008 	andi	t4,v1,0x8
    3834:	15800003 	bnez	t4,3844 <Item_Give+0x1114>
    3838:	346f0008 	ori	t7,v1,0x8
    383c:	10000155 	b	3d94 <Item_Give+0x1664>
    3840:	a62f0ef2 	sh	t7,3826(s1)
    3844:	10000153 	b	3d94 <Item_Give+0x1664>
    3848:	24020058 	li	v0,88
    384c:	24010007 	li	at,7
    3850:	56010008 	bnel	s0,at,3874 <Item_Give+0x1144>
    3854:	24010008 	li	at,8
    3858:	912d0007 	lbu	t5,7(t1)
    385c:	240e0007 	li	t6,7
    3860:	240200ff 	li	v0,255
    3864:	022dc821 	addu	t9,s1,t5
    3868:	1000014a 	b	3d94 <Item_Give+0x1664>
    386c:	a32e0074 	sb	t6,116(t9)
    3870:	24010008 	li	at,8
    3874:	5601001a 	bnel	s0,at,38e0 <Item_Give+0x11b0>
    3878:	24010010 	li	at,16
    387c:	912c0008 	lbu	t4,8(t1)
    3880:	24180008 	li	t8,8
    3884:	24020001 	li	v0,1
    3888:	022c7821 	addu	t7,s1,t4
    388c:	a1f80074 	sb	t8,116(t7)
    3890:	02221821 	addu	v1,s1,v0
    3894:	906d0068 	lbu	t5,104(v1)
    3898:	24010007 	li	at,7
    389c:	240e0008 	li	t6,8
    38a0:	15a10006 	bne	t5,at,38bc <Item_Give+0x118c>
    38a4:	3045ffff 	andi	a1,v0,0xffff
    38a8:	a06e0068 	sb	t6,104(v1)
    38ac:	8fa40048 	lw	a0,72(sp)
    38b0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    38b4:	a7a20046 	sh	v0,70(sp)
    38b8:	87a20046 	lh	v0,70(sp)
    38bc:	24420001 	addiu	v0,v0,1
    38c0:	00021400 	sll	v0,v0,0x10
    38c4:	00021403 	sra	v0,v0,0x10
    38c8:	28410004 	slti	at,v0,4
    38cc:	5420fff1 	bnezl	at,3894 <Item_Give+0x1164>
    38d0:	02221821 	addu	v1,s1,v0
    38d4:	1000012f 	b	3d94 <Item_Give+0x1664>
    38d8:	240200ff 	li	v0,255
    38dc:	24010010 	li	at,16
    38e0:	5601001e 	bnel	s0,at,395c <Item_Give+0x122c>
    38e4:	2401007a 	li	at,122
    38e8:	91590074 	lbu	t9,116(t2)
    38ec:	240500ff 	li	a1,255
    38f0:	54b9000e 	bnel	a1,t9,392c <Item_Give+0x11fc>
    38f4:	912c0010 	lbu	t4,16(t1)
    38f8:	91780000 	lbu	t8,0(t3)
    38fc:	93ac004f 	lbu	t4,79(sp)
    3900:	240200ff 	li	v0,255
    3904:	02387821 	addu	t7,s1,t8
    3908:	a1ec0074 	sb	t4,116(t7)
    390c:	912d0010 	lbu	t5,16(t1)
    3910:	022d7021 	addu	t6,s1,t5
    3914:	a1c6008c 	sb	a2,140(t6)
    3918:	91390011 	lbu	t9,17(t1)
    391c:	0239c021 	addu	t8,s1,t9
    3920:	1000011c 	b	3d94 <Item_Give+0x1664>
    3924:	a306008c 	sb	a2,140(t8)
    3928:	912c0010 	lbu	t4,16(t1)
    392c:	912e0011 	lbu	t6,17(t1)
    3930:	022c1021 	addu	v0,s1,t4
    3934:	804f008c 	lb	t7,140(v0)
    3938:	022e1821 	addu	v1,s1,t6
    393c:	25ed0001 	addiu	t5,t7,1
    3940:	a04d008c 	sb	t5,140(v0)
    3944:	8079008c 	lb	t9,140(v1)
    3948:	27380001 	addiu	t8,t9,1
    394c:	a078008c 	sb	t8,140(v1)
    3950:	10000110 	b	3d94 <Item_Give+0x1664>
    3954:	240200ff 	li	v0,255
    3958:	2401007a 	li	at,122
    395c:	12010003 	beq	s0,at,396c <Item_Give+0x123c>
    3960:	24010073 	li	at,115
    3964:	56010008 	bnel	s0,at,3988 <Item_Give+0x1258>
    3968:	24010072 	li	at,114
    396c:	8e2c00a4 	lw	t4,164(s1)
    3970:	3c011000 	lui	at,0x1000
    3974:	240200ff 	li	v0,255
    3978:	01817821 	addu	t7,t4,at
    397c:	10000105 	b	3d94 <Item_Give+0x1664>
    3980:	ae2f00a4 	sw	t7,164(s1)
    3984:	24010072 	li	at,114
    3988:	5601000a 	bnel	s0,at,39b4 <Item_Give+0x1284>
    398c:	24010083 	li	at,131
    3990:	862d002e 	lh	t5,46(s1)
    3994:	86390030 	lh	t9,48(s1)
    3998:	240200ff 	li	v0,255
    399c:	25ae0010 	addiu	t6,t5,16
    39a0:	27380010 	addiu	t8,t9,16
    39a4:	a62e002e 	sh	t6,46(s1)
    39a8:	100000fa 	b	3d94 <Item_Give+0x1664>
    39ac:	a6380030 	sh	t8,48(s1)
    39b0:	24010083 	li	at,131
    39b4:	16010008 	bne	s0,at,39d8 <Item_Give+0x12a8>
    39b8:	3c040000 	lui	a0,0x0
    39bc:	0c000000 	jal	0 <Interface_ChangeAlpha>
    39c0:	24840000 	addiu	a0,a0,0
    39c4:	8fa40048 	lw	a0,72(sp)
    39c8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    39cc:	24050010 	li	a1,16
    39d0:	100000f0 	b	3d94 <Item_Give+0x1664>
    39d4:	93a2004f 	lbu	v0,79(sp)
    39d8:	24010078 	li	at,120
    39dc:	56010015 	bnel	s0,at,3a34 <Item_Give+0x1304>
    39e0:	24010079 	li	at,121
    39e4:	862c13f0 	lh	t4,5104(s1)
    39e8:	2401000a 	li	at,10
    39ec:	51810004 	beql	t4,at,3a00 <Item_Give+0x12d0>
    39f0:	8fa40048 	lw	a0,72(sp)
    39f4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    39f8:	8fa40048 	lw	a0,72(sp)
    39fc:	8fa40048 	lw	a0,72(sp)
    3a00:	2405000c 	li	a1,12
    3a04:	0c000000 	jal	0 <Interface_ChangeAlpha>
    3a08:	24060005 	li	a2,5
    3a0c:	96230f2a 	lhu	v1,3882(s1)
    3a10:	240200ff 	li	v0,255
    3a14:	306f0100 	andi	t7,v1,0x100
    3a18:	15e00003 	bnez	t7,3a28 <Item_Give+0x12f8>
    3a1c:	346d0100 	ori	t5,v1,0x100
    3a20:	100000dc 	b	3d94 <Item_Give+0x1664>
    3a24:	a62d0f2a 	sh	t5,3882(s1)
    3a28:	100000da 	b	3d94 <Item_Give+0x1664>
    3a2c:	93a2004f 	lbu	v0,79(sp)
    3a30:	24010079 	li	at,121
    3a34:	56010015 	bnel	s0,at,3a8c <Item_Give+0x135c>
    3a38:	2a010084 	slti	at,s0,132
    3a3c:	862e13f0 	lh	t6,5104(s1)
    3a40:	2401000a 	li	at,10
    3a44:	51c10004 	beql	t6,at,3a58 <Item_Give+0x1328>
    3a48:	8fa40048 	lw	a0,72(sp)
    3a4c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    3a50:	8fa40048 	lw	a0,72(sp)
    3a54:	8fa40048 	lw	a0,72(sp)
    3a58:	24050018 	li	a1,24
    3a5c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    3a60:	24060005 	li	a2,5
    3a64:	96230f2a 	lhu	v1,3882(s1)
    3a68:	240200ff 	li	v0,255
    3a6c:	30790100 	andi	t9,v1,0x100
    3a70:	17200003 	bnez	t9,3a80 <Item_Give+0x1350>
    3a74:	34780100 	ori	t8,v1,0x100
    3a78:	100000c6 	b	3d94 <Item_Give+0x1664>
    3a7c:	a6380f2a 	sh	t8,3882(s1)
    3a80:	100000c4 	b	3d94 <Item_Give+0x1664>
    3a84:	93a2004f 	lbu	v0,79(sp)
    3a88:	2a010084 	slti	at,s0,132
    3a8c:	1420000a 	bnez	at,3ab8 <Item_Give+0x1388>
    3a90:	24050014 	li	a1,20
    3a94:	2a01008a 	slti	at,s0,138
    3a98:	10200007 	beqz	at,3ab8 <Item_Give+0x1388>
    3a9c:	00106040 	sll	t4,s0,0x1
    3aa0:	3c040000 	lui	a0,0x0
    3aa4:	008c2021 	addu	a0,a0,t4
    3aa8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    3aac:	8484ff0c 	lh	a0,-244(a0)
    3ab0:	100000b8 	b	3d94 <Item_Give+0x1664>
    3ab4:	240200ff 	li	v0,255
    3ab8:	14b00015 	bne	a1,s0,3b10 <Item_Give+0x13e0>
    3abc:	2a010015 	slti	at,s0,21
    3ac0:	91680000 	lbu	t0,0(t3)
    3ac4:	00001025 	move	v0,zero
    3ac8:	240500ff 	li	a1,255
    3acc:	02282021 	addu	a0,s1,t0
    3ad0:	00821821 	addu	v1,a0,v0
    3ad4:	906f0074 	lbu	t7,116(v1)
    3ad8:	93ad004f 	lbu	t5,79(sp)
    3adc:	54af0005 	bnel	a1,t7,3af4 <Item_Give+0x13c4>
    3ae0:	24420001 	addiu	v0,v0,1
    3ae4:	a06d0074 	sb	t5,116(v1)
    3ae8:	100000aa 	b	3d94 <Item_Give+0x1664>
    3aec:	240200ff 	li	v0,255
    3af0:	24420001 	addiu	v0,v0,1
    3af4:	00021400 	sll	v0,v0,0x10
    3af8:	00021403 	sra	v0,v0,0x10
    3afc:	28410004 	slti	at,v0,4
    3b00:	5420fff4 	bnezl	at,3ad4 <Item_Give+0x13a4>
    3b04:	00821821 	addu	v1,a0,v0
    3b08:	10000094 	b	3d5c <Item_Give+0x162c>
    3b0c:	91470074 	lbu	a3,116(t2)
    3b10:	14200002 	bnez	at,3b1c <Item_Give+0x13ec>
    3b14:	2a010021 	slti	at,s0,33
    3b18:	14200002 	bnez	at,3b24 <Item_Give+0x13f4>
    3b1c:	24010082 	li	at,130
    3b20:	16010063 	bne	s0,at,3cb0 <Item_Give+0x1580>
    3b24:	2401001a 	li	at,26
    3b28:	1201004e 	beq	s0,at,3c64 <Item_Give+0x1534>
    3b2c:	91680000 	lbu	t0,0(t3)
    3b30:	2401001b 	li	at,27
    3b34:	1201004b 	beq	s0,at,3c64 <Item_Give+0x1534>
    3b38:	00001025 	move	v0,zero
    3b3c:	24010082 	li	at,130
    3b40:	16010005 	bne	s0,at,3b58 <Item_Give+0x1428>
    3b44:	240e001a 	li	t6,26
    3b48:	3c080000 	lui	t0,0x0
    3b4c:	a3ae004f 	sb	t6,79(sp)
    3b50:	9108001a 	lbu	t0,26(t0)
    3b54:	2410001a 	li	s0,26
    3b58:	02282021 	addu	a0,s1,t0
    3b5c:	00821821 	addu	v1,a0,v0
    3b60:	90790074 	lbu	t9,116(v1)
    3b64:	01024821 	addu	t1,t0,v0
    3b68:	54b90034 	bnel	a1,t9,3c3c <Item_Give+0x150c>
    3b6c:	24420001 	addiu	v0,v0,1
    3b70:	3c040000 	lui	a0,0x0
    3b74:	24840000 	addiu	a0,a0,0
    3b78:	9225006c 	lbu	a1,108(s1)
    3b7c:	9226006d 	lbu	a2,109(s1)
    3b80:	9227006e 	lbu	a3,110(s1)
    3b84:	afa90010 	sw	t1,16(sp)
    3b88:	afb00014 	sw	s0,20(sp)
    3b8c:	afa3002c 	sw	v1,44(sp)
    3b90:	0c000000 	jal	0 <Interface_ChangeAlpha>
    3b94:	afa9003c 	sw	t1,60(sp)
    3b98:	8fa9003c 	lw	t1,60(sp)
    3b9c:	9238006c 	lbu	t8,108(s1)
    3ba0:	8fa3002c 	lw	v1,44(sp)
    3ba4:	93ac004f 	lbu	t4,79(sp)
    3ba8:	15380008 	bne	t1,t8,3bcc <Item_Give+0x149c>
    3bac:	24050001 	li	a1,1
    3bb0:	a22c0069 	sb	t4,105(s1)
    3bb4:	8fa40048 	lw	a0,72(sp)
    3bb8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    3bbc:	afa3002c 	sw	v1,44(sp)
    3bc0:	8fa3002c 	lw	v1,44(sp)
    3bc4:	10000018 	b	3c28 <Item_Give+0x14f8>
    3bc8:	a22013e3 	sb	zero,5091(s1)
    3bcc:	922f006d 	lbu	t7,109(s1)
    3bd0:	93ad004f 	lbu	t5,79(sp)
    3bd4:	24050002 	li	a1,2
    3bd8:	552f0009 	bnel	t1,t7,3c00 <Item_Give+0x14d0>
    3bdc:	922e006e 	lbu	t6,110(s1)
    3be0:	a22d006a 	sb	t5,106(s1)
    3be4:	8fa40048 	lw	a0,72(sp)
    3be8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    3bec:	afa3002c 	sw	v1,44(sp)
    3bf0:	8fa3002c 	lw	v1,44(sp)
    3bf4:	1000000c 	b	3c28 <Item_Give+0x14f8>
    3bf8:	a22013e4 	sb	zero,5092(s1)
    3bfc:	922e006e 	lbu	t6,110(s1)
    3c00:	93b9004f 	lbu	t9,79(sp)
    3c04:	24050003 	li	a1,3
    3c08:	552e0008 	bnel	t1,t6,3c2c <Item_Give+0x14fc>
    3c0c:	93b8004f 	lbu	t8,79(sp)
    3c10:	a239006b 	sb	t9,107(s1)
    3c14:	8fa40048 	lw	a0,72(sp)
    3c18:	0c000000 	jal	0 <Interface_ChangeAlpha>
    3c1c:	afa3002c 	sw	v1,44(sp)
    3c20:	8fa3002c 	lw	v1,44(sp)
    3c24:	a22013e5 	sb	zero,5093(s1)
    3c28:	93b8004f 	lbu	t8,79(sp)
    3c2c:	240200ff 	li	v0,255
    3c30:	10000058 	b	3d94 <Item_Give+0x1664>
    3c34:	a0780074 	sb	t8,116(v1)
    3c38:	24420001 	addiu	v0,v0,1
    3c3c:	00021400 	sll	v0,v0,0x10
    3c40:	00021403 	sra	v0,v0,0x10
    3c44:	28410004 	slti	at,v0,4
    3c48:	5420ffc5 	bnezl	at,3b60 <Item_Give+0x1430>
    3c4c:	00821821 	addu	v1,a0,v0
    3c50:	93ac004f 	lbu	t4,79(sp)
    3c54:	3c0f0000 	lui	t7,0x0
    3c58:	25ef0000 	addiu	t7,t7,0
    3c5c:	1000003e 	b	3d58 <Item_Give+0x1628>
    3c60:	018f5821 	addu	t3,t4,t7
    3c64:	00001025 	move	v0,zero
    3c68:	02282021 	addu	a0,s1,t0
    3c6c:	240500ff 	li	a1,255
    3c70:	00821821 	addu	v1,a0,v0
    3c74:	906d0074 	lbu	t5,116(v1)
    3c78:	93ae004f 	lbu	t6,79(sp)
    3c7c:	54ad0005 	bnel	a1,t5,3c94 <Item_Give+0x1564>
    3c80:	24420001 	addiu	v0,v0,1
    3c84:	a06e0074 	sb	t6,116(v1)
    3c88:	10000042 	b	3d94 <Item_Give+0x1664>
    3c8c:	240200ff 	li	v0,255
    3c90:	24420001 	addiu	v0,v0,1
    3c94:	00021400 	sll	v0,v0,0x10
    3c98:	00021403 	sra	v0,v0,0x10
    3c9c:	28410004 	slti	at,v0,4
    3ca0:	5420fff4 	bnezl	at,3c74 <Item_Give+0x1544>
    3ca4:	00821821 	addu	v1,a0,v0
    3ca8:	1000002c 	b	3d5c <Item_Give+0x162c>
    3cac:	91470074 	lbu	a3,116(t2)
    3cb0:	2a010021 	slti	at,s0,33
    3cb4:	14200028 	bnez	at,3d58 <Item_Give+0x1628>
    3cb8:	2a010038 	slti	at,s0,56
    3cbc:	10200026 	beqz	at,3d58 <Item_Give+0x1628>
    3cc0:	24010032 	li	at,50
    3cc4:	56010005 	bnel	s0,at,3cdc <Item_Give+0x15ac>
    3cc8:	916c0000 	lbu	t4,0(t3)
    3ccc:	96390ef2 	lhu	t9,3826(s1)
    3cd0:	37388000 	ori	t8,t9,0x8000
    3cd4:	a6380ef2 	sh	t8,3826(s1)
    3cd8:	916c0000 	lbu	t4,0(t3)
    3cdc:	93af004f 	lbu	t7,79(sp)
    3ce0:	240500ff 	li	a1,255
    3ce4:	022c1021 	addu	v0,s1,t4
    3ce8:	90480074 	lbu	t0,116(v0)
    3cec:	a04f0074 	sb	t7,116(v0)
    3cf0:	24020001 	li	v0,1
    3cf4:	11050016 	beq	t0,a1,3d50 <Item_Give+0x1620>
    3cf8:	02221821 	addu	v1,s1,v0
    3cfc:	906d0068 	lbu	t5,104(v1)
    3d00:	150d000d 	bne	t0,t5,3d38 <Item_Give+0x1608>
    3d04:	2401002c 	li	at,44
    3d08:	12010008 	beq	s0,at,3d2c <Item_Give+0x15fc>
    3d0c:	241900ff 	li	t9,255
    3d10:	93ae004f 	lbu	t6,79(sp)
    3d14:	8fa40048 	lw	a0,72(sp)
    3d18:	3045ffff 	andi	a1,v0,0xffff
    3d1c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    3d20:	a06e0068 	sb	t6,104(v1)
    3d24:	1000001b 	b	3d94 <Item_Give+0x1664>
    3d28:	240200ff 	li	v0,255
    3d2c:	a0790068 	sb	t9,104(v1)
    3d30:	10000018 	b	3d94 <Item_Give+0x1664>
    3d34:	240200ff 	li	v0,255
    3d38:	24420001 	addiu	v0,v0,1
    3d3c:	00021400 	sll	v0,v0,0x10
    3d40:	00021403 	sra	v0,v0,0x10
    3d44:	28410004 	slti	at,v0,4
    3d48:	5420ffec 	bnezl	at,3cfc <Item_Give+0x15cc>
    3d4c:	02221821 	addu	v1,s1,v0
    3d50:	10000010 	b	3d94 <Item_Give+0x1664>
    3d54:	240200ff 	li	v0,255
    3d58:	91470074 	lbu	a3,116(t2)
    3d5c:	3c040000 	lui	a0,0x0
    3d60:	24840000 	addiu	a0,a0,0
    3d64:	87a50044 	lh	a1,68(sp)
    3d68:	02003025 	move	a2,s0
    3d6c:	afab003c 	sw	t3,60(sp)
    3d70:	0c000000 	jal	0 <Interface_ChangeAlpha>
    3d74:	a7a70042 	sh	a3,66(sp)
    3d78:	8fab003c 	lw	t3,60(sp)
    3d7c:	87a80042 	lh	t0,66(sp)
    3d80:	93b8004f 	lbu	t8,79(sp)
    3d84:	916c0000 	lbu	t4,0(t3)
    3d88:	310200ff 	andi	v0,t0,0xff
    3d8c:	022c7821 	addu	t7,s1,t4
    3d90:	a1f80074 	sb	t8,116(t7)
    3d94:	8fbf0024 	lw	ra,36(sp)
    3d98:	8fb0001c 	lw	s0,28(sp)
    3d9c:	8fb10020 	lw	s1,32(sp)
    3da0:	03e00008 	jr	ra
    3da4:	27bd0048 	addiu	sp,sp,72

00003da8 <Item_CheckObtainability>:
    3da8:	308700ff 	andi	a3,a0,0xff
    3dac:	3c020000 	lui	v0,0x0
    3db0:	24420000 	addiu	v0,v0,0
    3db4:	27bdffd0 	addiu	sp,sp,-48
    3db8:	00471821 	addu	v1,v0,a3
    3dbc:	28e1008a 	slti	at,a3,138
    3dc0:	afbf0014 	sw	ra,20(sp)
    3dc4:	afa40030 	sw	a0,48(sp)
    3dc8:	90660000 	lbu	a2,0(v1)
    3dcc:	14200007 	bnez	at,3dec <Item_CheckObtainability+0x44>
    3dd0:	00e02825 	move	a1,a3
    3dd4:	00057040 	sll	t6,a1,0x1
    3dd8:	3c0f0000 	lui	t7,0x0
    3ddc:	01ee7821 	addu	t7,t7,t6
    3de0:	85effeec 	lh	t7,-276(t7)
    3de4:	004fc021 	addu	t8,v0,t7
    3de8:	93060000 	lbu	a2,0(t8)
    3dec:	3c040000 	lui	a0,0x0
    3df0:	248403ec 	addiu	a0,a0,1004
    3df4:	afa30024 	sw	v1,36(sp)
    3df8:	afa50020 	sw	a1,32(sp)
    3dfc:	a7a6002c 	sh	a2,44(sp)
    3e00:	0c000000 	jal	0 <Interface_ChangeAlpha>
    3e04:	a3a70033 	sb	a3,51(sp)
    3e08:	87a6002c 	lh	a2,44(sp)
    3e0c:	3c020000 	lui	v0,0x0
    3e10:	24420000 	addiu	v0,v0,0
    3e14:	3c040000 	lui	a0,0x0
    3e18:	00461821 	addu	v1,v0,a2
    3e1c:	8fa50020 	lw	a1,32(sp)
    3e20:	90670074 	lbu	a3,116(v1)
    3e24:	afa3001c 	sw	v1,28(sp)
    3e28:	0c000000 	jal	0 <Interface_ChangeAlpha>
    3e2c:	248403f4 	addiu	a0,a0,1012
    3e30:	3c040000 	lui	a0,0x0
    3e34:	0c000000 	jal	0 <Interface_ChangeAlpha>
    3e38:	2484041c 	addiu	a0,a0,1052
    3e3c:	8fa50020 	lw	a1,32(sp)
    3e40:	3c020000 	lui	v0,0x0
    3e44:	24420000 	addiu	v0,v0,0
    3e48:	28a10066 	slti	at,a1,102
    3e4c:	14200005 	bnez	at,3e64 <Item_CheckObtainability+0xbc>
    3e50:	28a1006c 	slti	at,a1,108
    3e54:	50200004 	beqzl	at,3e68 <Item_CheckObtainability+0xc0>
    3e58:	28a1006c 	slti	at,a1,108
    3e5c:	10000138 	b	4340 <Item_CheckObtainability+0x598>
    3e60:	240200ff 	li	v0,255
    3e64:	28a1006c 	slti	at,a1,108
    3e68:	14200005 	bnez	at,3e80 <Item_CheckObtainability+0xd8>
    3e6c:	28a10072 	slti	at,a1,114
    3e70:	50200004 	beqzl	at,3e84 <Item_CheckObtainability+0xdc>
    3e74:	28a1003b 	slti	at,a1,59
    3e78:	10000131 	b	4340 <Item_CheckObtainability+0x598>
    3e7c:	240200ff 	li	v0,255
    3e80:	28a1003b 	slti	at,a1,59
    3e84:	14200015 	bnez	at,3edc <Item_CheckObtainability+0x134>
    3e88:	28a1003e 	slti	at,a1,62
    3e8c:	10200013 	beqz	at,3edc <Item_CheckObtainability+0x134>
    3e90:	2401003d 	li	at,61
    3e94:	14a10003 	bne	a1,at,3ea4 <Item_CheckObtainability+0xfc>
    3e98:	0005c880 	sll	t9,a1,0x2
    3e9c:	10000128 	b	4340 <Item_CheckObtainability+0x598>
    3ea0:	240200ff 	li	v0,255
    3ea4:	3c080000 	lui	t0,0x0
    3ea8:	01194021 	addu	t0,t0,t9
    3eac:	3c090000 	lui	t1,0x0
    3eb0:	91290000 	lbu	t1,0(t1)
    3eb4:	8d08ff14 	lw	t0,-236(t0)
    3eb8:	944b009c 	lhu	t3,156(v0)
    3ebc:	01285004 	sllv	t2,t0,t1
    3ec0:	014b6024 	and	t4,t2,t3
    3ec4:	11800003 	beqz	t4,3ed4 <Item_CheckObtainability+0x12c>
    3ec8:	00000000 	nop
    3ecc:	1000011c 	b	4340 <Item_CheckObtainability+0x598>
    3ed0:	93a20033 	lbu	v0,51(sp)
    3ed4:	1000011a 	b	4340 <Item_CheckObtainability+0x598>
    3ed8:	240200ff 	li	v0,255
    3edc:	28a1003e 	slti	at,a1,62
    3ee0:	14200011 	bnez	at,3f28 <Item_CheckObtainability+0x180>
    3ee4:	28a10041 	slti	at,a1,65
    3ee8:	1020000f 	beqz	at,3f28 <Item_CheckObtainability+0x180>
    3eec:	00056880 	sll	t5,a1,0x2
    3ef0:	3c0e0000 	lui	t6,0x0
    3ef4:	01cd7021 	addu	t6,t6,t5
    3ef8:	3c0f0000 	lui	t7,0x0
    3efc:	91ef0001 	lbu	t7,1(t7)
    3f00:	8dceff08 	lw	t6,-248(t6)
    3f04:	9459009c 	lhu	t9,156(v0)
    3f08:	01eec004 	sllv	t8,t6,t7
    3f0c:	03194024 	and	t0,t8,t9
    3f10:	11000003 	beqz	t0,3f20 <Item_CheckObtainability+0x178>
    3f14:	00000000 	nop
    3f18:	10000109 	b	4340 <Item_CheckObtainability+0x598>
    3f1c:	93a20033 	lbu	v0,51(sp)
    3f20:	10000107 	b	4340 <Item_CheckObtainability+0x598>
    3f24:	240200ff 	li	v0,255
    3f28:	28a10041 	slti	at,a1,65
    3f2c:	14200011 	bnez	at,3f74 <Item_CheckObtainability+0x1cc>
    3f30:	28a10044 	slti	at,a1,68
    3f34:	1020000f 	beqz	at,3f74 <Item_CheckObtainability+0x1cc>
    3f38:	00054880 	sll	t1,a1,0x2
    3f3c:	3c0a0000 	lui	t2,0x0
    3f40:	01495021 	addu	t2,t2,t1
    3f44:	3c0b0000 	lui	t3,0x0
    3f48:	916b0002 	lbu	t3,2(t3)
    3f4c:	8d4afefc 	lw	t2,-260(t2)
    3f50:	944d009c 	lhu	t5,156(v0)
    3f54:	016a6004 	sllv	t4,t2,t3
    3f58:	018d7024 	and	t6,t4,t5
    3f5c:	11c00003 	beqz	t6,3f6c <Item_CheckObtainability+0x1c4>
    3f60:	00000000 	nop
    3f64:	100000f6 	b	4340 <Item_CheckObtainability+0x598>
    3f68:	93a20033 	lbu	v0,51(sp)
    3f6c:	100000f4 	b	4340 <Item_CheckObtainability+0x598>
    3f70:	240200ff 	li	v0,255
    3f74:	28a10044 	slti	at,a1,68
    3f78:	14200011 	bnez	at,3fc0 <Item_CheckObtainability+0x218>
    3f7c:	28a10047 	slti	at,a1,71
    3f80:	1020000f 	beqz	at,3fc0 <Item_CheckObtainability+0x218>
    3f84:	00057880 	sll	t7,a1,0x2
    3f88:	3c180000 	lui	t8,0x0
    3f8c:	030fc021 	addu	t8,t8,t7
    3f90:	3c190000 	lui	t9,0x0
    3f94:	93390003 	lbu	t9,3(t9)
    3f98:	8f18fef0 	lw	t8,-272(t8)
    3f9c:	9449009c 	lhu	t1,156(v0)
    3fa0:	03384004 	sllv	t0,t8,t9
    3fa4:	01095024 	and	t2,t0,t1
    3fa8:	11400003 	beqz	t2,3fb8 <Item_CheckObtainability+0x210>
    3fac:	00000000 	nop
    3fb0:	100000e3 	b	4340 <Item_CheckObtainability+0x598>
    3fb4:	93a20033 	lbu	v0,51(sp)
    3fb8:	100000e1 	b	4340 <Item_CheckObtainability+0x598>
    3fbc:	240200ff 	li	v0,255
    3fc0:	24010074 	li	at,116
    3fc4:	10a10005 	beq	a1,at,3fdc <Item_CheckObtainability+0x234>
    3fc8:	24010075 	li	at,117
    3fcc:	10a10003 	beq	a1,at,3fdc <Item_CheckObtainability+0x234>
    3fd0:	24010076 	li	at,118
    3fd4:	54a10004 	bnel	a1,at,3fe8 <Item_CheckObtainability+0x240>
    3fd8:	24010077 	li	at,119
    3fdc:	100000d8 	b	4340 <Item_CheckObtainability+0x598>
    3fe0:	240200ff 	li	v0,255
    3fe4:	24010077 	li	at,119
    3fe8:	54a10004 	bnel	a1,at,3ffc <Item_CheckObtainability+0x254>
    3fec:	28a10006 	slti	at,a1,6
    3ff0:	100000d3 	b	4340 <Item_CheckObtainability+0x598>
    3ff4:	240200ff 	li	v0,255
    3ff8:	28a10006 	slti	at,a1,6
    3ffc:	14200005 	bnez	at,4014 <Item_CheckObtainability+0x26c>
    4000:	28a1000a 	slti	at,a1,10
    4004:	50200004 	beqzl	at,4018 <Item_CheckObtainability+0x270>
    4008:	24010096 	li	at,150
    400c:	100000cc 	b	4340 <Item_CheckObtainability+0x598>
    4010:	240200ff 	li	v0,255
    4014:	24010096 	li	at,150
    4018:	10a10003 	beq	a1,at,4028 <Item_CheckObtainability+0x280>
    401c:	24010097 	li	at,151
    4020:	54a10004 	bnel	a1,at,4034 <Item_CheckObtainability+0x28c>
    4024:	2401004a 	li	at,74
    4028:	100000c5 	b	4340 <Item_CheckObtainability+0x598>
    402c:	240200ff 	li	v0,255
    4030:	2401004a 	li	at,74
    4034:	10a10004 	beq	a1,at,4048 <Item_CheckObtainability+0x2a0>
    4038:	3c0c0000 	lui	t4,0x0
    403c:	24010003 	li	at,3
    4040:	54a1000e 	bnel	a1,at,407c <Item_CheckObtainability+0x2d4>
    4044:	2401004b 	li	at,75
    4048:	8c4b00a0 	lw	t3,160(v0)
    404c:	8d8c0000 	lw	t4,0(t4)
    4050:	3c0e0000 	lui	t6,0x0
    4054:	91ce0000 	lbu	t6,0(t6)
    4058:	016c6824 	and	t5,t3,t4
    405c:	01cd7807 	srav	t7,t5,t6
    4060:	15e00003 	bnez	t7,4070 <Item_CheckObtainability+0x2c8>
    4064:	00000000 	nop
    4068:	100000b5 	b	4340 <Item_CheckObtainability+0x598>
    406c:	240200ff 	li	v0,255
    4070:	100000b3 	b	4340 <Item_CheckObtainability+0x598>
    4074:	00001025 	move	v0,zero
    4078:	2401004b 	li	at,75
    407c:	10a10003 	beq	a1,at,408c <Item_CheckObtainability+0x2e4>
    4080:	2401004c 	li	at,76
    4084:	54a10004 	bnel	a1,at,4098 <Item_CheckObtainability+0x2f0>
    4088:	24010048 	li	at,72
    408c:	100000ac 	b	4340 <Item_CheckObtainability+0x598>
    4090:	240200ff 	li	v0,255
    4094:	24010048 	li	at,72
    4098:	10a10003 	beq	a1,at,40a8 <Item_CheckObtainability+0x300>
    409c:	24010049 	li	at,73
    40a0:	54a10004 	bnel	a1,at,40b4 <Item_CheckObtainability+0x30c>
    40a4:	2401004d 	li	at,77
    40a8:	100000a5 	b	4340 <Item_CheckObtainability+0x598>
    40ac:	240200ff 	li	v0,255
    40b0:	2401004d 	li	at,77
    40b4:	10a10004 	beq	a1,at,40c8 <Item_CheckObtainability+0x320>
    40b8:	3c190000 	lui	t9,0x0
    40bc:	24010002 	li	at,2
    40c0:	54a1000e 	bnel	a1,at,40fc <Item_CheckObtainability+0x354>
    40c4:	28a10098 	slti	at,a1,152
    40c8:	8c5800a0 	lw	t8,160(v0)
    40cc:	8f390004 	lw	t9,4(t9)
    40d0:	3c090000 	lui	t1,0x0
    40d4:	91290001 	lbu	t1,1(t1)
    40d8:	03194024 	and	t0,t8,t9
    40dc:	01285007 	srav	t2,t0,t1
    40e0:	15400003 	bnez	t2,40f0 <Item_CheckObtainability+0x348>
    40e4:	00000000 	nop
    40e8:	10000095 	b	4340 <Item_CheckObtainability+0x598>
    40ec:	240200ff 	li	v0,255
    40f0:	10000093 	b	4340 <Item_CheckObtainability+0x598>
    40f4:	00001025 	move	v0,zero
    40f8:	28a10098 	slti	at,a1,152
    40fc:	14200005 	bnez	at,4114 <Item_CheckObtainability+0x36c>
    4100:	28a1009c 	slti	at,a1,156
    4104:	50200004 	beqzl	at,4118 <Item_CheckObtainability+0x370>
    4108:	28a1004e 	slti	at,a1,78
    410c:	1000008c 	b	4340 <Item_CheckObtainability+0x598>
    4110:	240200ff 	li	v0,255
    4114:	28a1004e 	slti	at,a1,78
    4118:	14200005 	bnez	at,4130 <Item_CheckObtainability+0x388>
    411c:	28a10058 	slti	at,a1,88
    4120:	50200004 	beqzl	at,4134 <Item_CheckObtainability+0x38c>
    4124:	2401000b 	li	at,11
    4128:	10000085 	b	4340 <Item_CheckObtainability+0x598>
    412c:	240200ff 	li	v0,255
    4130:	2401000b 	li	at,11
    4134:	54a10004 	bnel	a1,at,4148 <Item_CheckObtainability+0x3a0>
    4138:	24010058 	li	at,88
    413c:	10000080 	b	4340 <Item_CheckObtainability+0x598>
    4140:	240200ff 	li	v0,255
    4144:	24010058 	li	at,88
    4148:	10a10003 	beq	a1,at,4158 <Item_CheckObtainability+0x3b0>
    414c:	24010095 	li	at,149
    4150:	54a1000a 	bnel	a1,at,417c <Item_CheckObtainability+0x3d4>
    4154:	24010010 	li	at,16
    4158:	944b0ef2 	lhu	t3,3826(v0)
    415c:	316c0008 	andi	t4,t3,0x8
    4160:	15800003 	bnez	t4,4170 <Item_CheckObtainability+0x3c8>
    4164:	00000000 	nop
    4168:	10000075 	b	4340 <Item_CheckObtainability+0x598>
    416c:	240200ff 	li	v0,255
    4170:	10000073 	b	4340 <Item_CheckObtainability+0x598>
    4174:	24020058 	li	v0,88
    4178:	24010010 	li	at,16
    417c:	54a10004 	bnel	a1,at,4190 <Item_CheckObtainability+0x3e8>
    4180:	2401007a 	li	at,122
    4184:	1000006e 	b	4340 <Item_CheckObtainability+0x598>
    4188:	240200ff 	li	v0,255
    418c:	2401007a 	li	at,122
    4190:	10a10003 	beq	a1,at,41a0 <Item_CheckObtainability+0x3f8>
    4194:	24010073 	li	at,115
    4198:	54a10004 	bnel	a1,at,41ac <Item_CheckObtainability+0x404>
    419c:	24010072 	li	at,114
    41a0:	10000067 	b	4340 <Item_CheckObtainability+0x598>
    41a4:	240200ff 	li	v0,255
    41a8:	24010072 	li	at,114
    41ac:	54a10004 	bnel	a1,at,41c0 <Item_CheckObtainability+0x418>
    41b0:	24010083 	li	at,131
    41b4:	10000062 	b	4340 <Item_CheckObtainability+0x598>
    41b8:	240200ff 	li	v0,255
    41bc:	24010083 	li	at,131
    41c0:	54a10004 	bnel	a1,at,41d4 <Item_CheckObtainability+0x42c>
    41c4:	24010078 	li	at,120
    41c8:	1000005d 	b	4340 <Item_CheckObtainability+0x598>
    41cc:	24020083 	li	v0,131
    41d0:	24010078 	li	at,120
    41d4:	10a10004 	beq	a1,at,41e8 <Item_CheckObtainability+0x440>
    41d8:	3c040000 	lui	a0,0x0
    41dc:	24010079 	li	at,121
    41e0:	54a10010 	bnel	a1,at,4224 <Item_CheckObtainability+0x47c>
    41e4:	28a10084 	slti	at,a1,132
    41e8:	94450f2a 	lhu	a1,3882(v0)
    41ec:	24840420 	addiu	a0,a0,1056
    41f0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    41f4:	30a50100 	andi	a1,a1,0x100
    41f8:	3c020000 	lui	v0,0x0
    41fc:	24420000 	addiu	v0,v0,0
    4200:	944d0f2a 	lhu	t5,3882(v0)
    4204:	31ae0100 	andi	t6,t5,0x100
    4208:	15c00003 	bnez	t6,4218 <Item_CheckObtainability+0x470>
    420c:	00000000 	nop
    4210:	1000004b 	b	4340 <Item_CheckObtainability+0x598>
    4214:	240200ff 	li	v0,255
    4218:	10000049 	b	4340 <Item_CheckObtainability+0x598>
    421c:	93a20033 	lbu	v0,51(sp)
    4220:	28a10084 	slti	at,a1,132
    4224:	14200006 	bnez	at,4240 <Item_CheckObtainability+0x498>
    4228:	24040014 	li	a0,20
    422c:	28a1008a 	slti	at,a1,138
    4230:	10200003 	beqz	at,4240 <Item_CheckObtainability+0x498>
    4234:	00000000 	nop
    4238:	10000041 	b	4340 <Item_CheckObtainability+0x598>
    423c:	240200ff 	li	v0,255
    4240:	14850003 	bne	a0,a1,4250 <Item_CheckObtainability+0x4a8>
    4244:	28a10015 	slti	at,a1,21
    4248:	1000003d 	b	4340 <Item_CheckObtainability+0x598>
    424c:	240200ff 	li	v0,255
    4250:	14200002 	bnez	at,425c <Item_CheckObtainability+0x4b4>
    4254:	28a10021 	slti	at,a1,33
    4258:	14200003 	bnez	at,4268 <Item_CheckObtainability+0x4c0>
    425c:	24010082 	li	at,130
    4260:	54a1002f 	bnel	a1,at,4320 <Item_CheckObtainability+0x578>
    4264:	28a10021 	slti	at,a1,33
    4268:	8faf0024 	lw	t7,36(sp)
    426c:	2401001a 	li	at,26
    4270:	10a10018 	beq	a1,at,42d4 <Item_CheckObtainability+0x52c>
    4274:	91e60000 	lbu	a2,0(t7)
    4278:	2401001b 	li	at,27
    427c:	10a10015 	beq	a1,at,42d4 <Item_CheckObtainability+0x52c>
    4280:	00001025 	move	v0,zero
    4284:	24010082 	li	at,130
    4288:	14a10003 	bne	a1,at,4298 <Item_CheckObtainability+0x4f0>
    428c:	3c180000 	lui	t8,0x0
    4290:	3c060000 	lui	a2,0x0
    4294:	90c6001a 	lbu	a2,26(a2)
    4298:	27180000 	addiu	t8,t8,0
    429c:	00d81821 	addu	v1,a2,t8
    42a0:	0062c821 	addu	t9,v1,v0
    42a4:	93280074 	lbu	t0,116(t9)
    42a8:	24420001 	addiu	v0,v0,1
    42ac:	00021400 	sll	v0,v0,0x10
    42b0:	14880003 	bne	a0,t0,42c0 <Item_CheckObtainability+0x518>
    42b4:	00021403 	sra	v0,v0,0x10
    42b8:	10000021 	b	4340 <Item_CheckObtainability+0x598>
    42bc:	240200ff 	li	v0,255
    42c0:	28410004 	slti	at,v0,4
    42c4:	5420fff7 	bnezl	at,42a4 <Item_CheckObtainability+0x4fc>
    42c8:	0062c821 	addu	t9,v1,v0
    42cc:	1000001b 	b	433c <Item_CheckObtainability+0x594>
    42d0:	8fac001c 	lw	t4,28(sp)
    42d4:	3c090000 	lui	t1,0x0
    42d8:	25290000 	addiu	t1,t1,0
    42dc:	00c91821 	addu	v1,a2,t1
    42e0:	00001025 	move	v0,zero
    42e4:	240400ff 	li	a0,255
    42e8:	00625021 	addu	t2,v1,v0
    42ec:	914b0074 	lbu	t3,116(t2)
    42f0:	24420001 	addiu	v0,v0,1
    42f4:	00021400 	sll	v0,v0,0x10
    42f8:	148b0003 	bne	a0,t3,4308 <Item_CheckObtainability+0x560>
    42fc:	00021403 	sra	v0,v0,0x10
    4300:	1000000f 	b	4340 <Item_CheckObtainability+0x598>
    4304:	240200ff 	li	v0,255
    4308:	28410004 	slti	at,v0,4
    430c:	5420fff7 	bnezl	at,42ec <Item_CheckObtainability+0x544>
    4310:	00625021 	addu	t2,v1,v0
    4314:	10000009 	b	433c <Item_CheckObtainability+0x594>
    4318:	8fac001c 	lw	t4,28(sp)
    431c:	28a10021 	slti	at,a1,33
    4320:	14200005 	bnez	at,4338 <Item_CheckObtainability+0x590>
    4324:	28a10038 	slti	at,a1,56
    4328:	50200004 	beqzl	at,433c <Item_CheckObtainability+0x594>
    432c:	8fac001c 	lw	t4,28(sp)
    4330:	10000003 	b	4340 <Item_CheckObtainability+0x598>
    4334:	240200ff 	li	v0,255
    4338:	8fac001c 	lw	t4,28(sp)
    433c:	91820074 	lbu	v0,116(t4)
    4340:	8fbf0014 	lw	ra,20(sp)
    4344:	27bd0030 	addiu	sp,sp,48
    4348:	03e00008 	jr	ra
    434c:	00000000 	nop

00004350 <Inventory_DeleteItem>:
    4350:	27bdffe0 	addiu	sp,sp,-32
    4354:	3088ffff 	andi	t0,a0,0xffff
    4358:	24010010 	li	at,16
    435c:	afbf0014 	sw	ra,20(sp)
    4360:	afa40020 	sw	a0,32(sp)
    4364:	15010007 	bne	t0,at,4384 <Inventory_DeleteItem+0x34>
    4368:	afa50024 	sw	a1,36(sp)
    436c:	3c0e0000 	lui	t6,0x0
    4370:	91ce0011 	lbu	t6,17(t6)
    4374:	3c090000 	lui	t1,0x0
    4378:	25290000 	addiu	t1,t1,0
    437c:	012e7821 	addu	t7,t1,t6
    4380:	a1e0008c 	sb	zero,140(t7)
    4384:	97b80026 	lhu	t8,38(sp)
    4388:	3c090000 	lui	t1,0x0
    438c:	25290000 	addiu	t1,t1,0
    4390:	240700ff 	li	a3,255
    4394:	3c040000 	lui	a0,0x0
    4398:	01381021 	addu	v0,t1,t8
    439c:	a0470074 	sb	a3,116(v0)
    43a0:	24840448 	addiu	a0,a0,1096
    43a4:	30e600ff 	andi	a2,a3,0xff
    43a8:	97a50026 	lhu	a1,38(sp)
    43ac:	0c000000 	jal	0 <Interface_ChangeAlpha>
    43b0:	afa80018 	sw	t0,24(sp)
    43b4:	3c090000 	lui	t1,0x0
    43b8:	25290000 	addiu	t1,t1,0
    43bc:	240700ff 	li	a3,255
    43c0:	8fa80018 	lw	t0,24(sp)
    43c4:	24020001 	li	v0,1
    43c8:	01221821 	addu	v1,t1,v0
    43cc:	90790068 	lbu	t9,104(v1)
    43d0:	24420001 	addiu	v0,v0,1
    43d4:	00021400 	sll	v0,v0,0x10
    43d8:	15190003 	bne	t0,t9,43e8 <Inventory_DeleteItem+0x98>
    43dc:	00021403 	sra	v0,v0,0x10
    43e0:	a0670068 	sb	a3,104(v1)
    43e4:	a067006b 	sb	a3,107(v1)
    43e8:	28410004 	slti	at,v0,4
    43ec:	5420fff7 	bnezl	at,43cc <Inventory_DeleteItem+0x7c>
    43f0:	01221821 	addu	v1,t1,v0
    43f4:	8fbf0014 	lw	ra,20(sp)
    43f8:	27bd0020 	addiu	sp,sp,32
    43fc:	03e00008 	jr	ra
    4400:	00000000 	nop

00004404 <Inventory_ReplaceItem>:
    4404:	27bdffe0 	addiu	sp,sp,-32
    4408:	afa60028 	sw	a2,40(sp)
    440c:	3c060000 	lui	a2,0x0
    4410:	afbf0014 	sw	ra,20(sp)
    4414:	afa40020 	sw	a0,32(sp)
    4418:	afa50024 	sw	a1,36(sp)
    441c:	30a3ffff 	andi	v1,a1,0xffff
    4420:	24c60000 	addiu	a2,a2,0
    4424:	00003825 	move	a3,zero
    4428:	00c71021 	addu	v0,a2,a3
    442c:	904e0074 	lbu	t6,116(v0)
    4430:	546e0020 	bnel	v1,t6,44b4 <Inventory_ReplaceItem+0xb0>
    4434:	24e70001 	addiu	a3,a3,1
    4438:	97af002a 	lhu	t7,42(sp)
    443c:	3c040000 	lui	a0,0x0
    4440:	2484045c 	addiu	a0,a0,1116
    4444:	00e02825 	move	a1,a3
    4448:	afa30018 	sw	v1,24(sp)
    444c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4450:	a04f0074 	sb	t7,116(v0)
    4454:	3c060000 	lui	a2,0x0
    4458:	24c60000 	addiu	a2,a2,0
    445c:	8fa30018 	lw	v1,24(sp)
    4460:	24070001 	li	a3,1
    4464:	00c71021 	addu	v0,a2,a3
    4468:	90580068 	lbu	t8,104(v0)
    446c:	54780009 	bnel	v1,t8,4494 <Inventory_ReplaceItem+0x90>
    4470:	24e70001 	addiu	a3,a3,1
    4474:	97b9002a 	lhu	t9,42(sp)
    4478:	8fa40020 	lw	a0,32(sp)
    447c:	30e5ffff 	andi	a1,a3,0xffff
    4480:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4484:	a0590068 	sb	t9,104(v0)
    4488:	10000010 	b	44cc <Inventory_ReplaceItem+0xc8>
    448c:	24020001 	li	v0,1
    4490:	24e70001 	addiu	a3,a3,1
    4494:	00073c00 	sll	a3,a3,0x10
    4498:	00073c03 	sra	a3,a3,0x10
    449c:	28e10004 	slti	at,a3,4
    44a0:	5420fff1 	bnezl	at,4468 <Inventory_ReplaceItem+0x64>
    44a4:	00c71021 	addu	v0,a2,a3
    44a8:	10000008 	b	44cc <Inventory_ReplaceItem+0xc8>
    44ac:	24020001 	li	v0,1
    44b0:	24e70001 	addiu	a3,a3,1
    44b4:	00073c00 	sll	a3,a3,0x10
    44b8:	00073c03 	sra	a3,a3,0x10
    44bc:	28e10018 	slti	at,a3,24
    44c0:	5420ffda 	bnezl	at,442c <Inventory_ReplaceItem+0x28>
    44c4:	00c71021 	addu	v0,a2,a3
    44c8:	00001025 	move	v0,zero
    44cc:	8fbf0014 	lw	ra,20(sp)
    44d0:	27bd0020 	addiu	sp,sp,32
    44d4:	03e00008 	jr	ra
    44d8:	00000000 	nop

000044dc <Inventory_HasEmptyBottle>:
    44dc:	3c0e0000 	lui	t6,0x0
    44e0:	91ce0086 	lbu	t6,134(t6)
    44e4:	24020014 	li	v0,20
    44e8:	3c0f0000 	lui	t7,0x0
    44ec:	144e0003 	bne	v0,t6,44fc <Inventory_HasEmptyBottle+0x20>
    44f0:	00000000 	nop
    44f4:	03e00008 	jr	ra
    44f8:	24020001 	li	v0,1
    44fc:	91ef0087 	lbu	t7,135(t7)
    4500:	3c180000 	lui	t8,0x0
    4504:	144f0003 	bne	v0,t7,4514 <Inventory_HasEmptyBottle+0x38>
    4508:	00000000 	nop
    450c:	03e00008 	jr	ra
    4510:	24020001 	li	v0,1
    4514:	93180088 	lbu	t8,136(t8)
    4518:	3c190000 	lui	t9,0x0
    451c:	14580003 	bne	v0,t8,452c <Inventory_HasEmptyBottle+0x50>
    4520:	00000000 	nop
    4524:	03e00008 	jr	ra
    4528:	24020001 	li	v0,1
    452c:	93390089 	lbu	t9,137(t9)
    4530:	54590004 	bnel	v0,t9,4544 <Inventory_HasEmptyBottle+0x68>
    4534:	00001025 	move	v0,zero
    4538:	03e00008 	jr	ra
    453c:	24020001 	li	v0,1
    4540:	00001025 	move	v0,zero
    4544:	03e00008 	jr	ra
    4548:	00000000 	nop

0000454c <Inventory_HasSpecificBottle>:
    454c:	3c0e0000 	lui	t6,0x0
    4550:	91ce0086 	lbu	t6,134(t6)
    4554:	308200ff 	andi	v0,a0,0xff
    4558:	afa40000 	sw	a0,0(sp)
    455c:	144e0003 	bne	v0,t6,456c <Inventory_HasSpecificBottle+0x20>
    4560:	3c0f0000 	lui	t7,0x0
    4564:	03e00008 	jr	ra
    4568:	24020001 	li	v0,1
    456c:	91ef0087 	lbu	t7,135(t7)
    4570:	3c180000 	lui	t8,0x0
    4574:	144f0003 	bne	v0,t7,4584 <Inventory_HasSpecificBottle+0x38>
    4578:	00000000 	nop
    457c:	03e00008 	jr	ra
    4580:	24020001 	li	v0,1
    4584:	93180088 	lbu	t8,136(t8)
    4588:	3c190000 	lui	t9,0x0
    458c:	14580003 	bne	v0,t8,459c <Inventory_HasSpecificBottle+0x50>
    4590:	00000000 	nop
    4594:	03e00008 	jr	ra
    4598:	24020001 	li	v0,1
    459c:	93390089 	lbu	t9,137(t9)
    45a0:	54590004 	bnel	v0,t9,45b4 <Inventory_HasSpecificBottle+0x68>
    45a4:	00001025 	move	v0,zero
    45a8:	03e00008 	jr	ra
    45ac:	24020001 	li	v0,1
    45b0:	00001025 	move	v0,zero
    45b4:	03e00008 	jr	ra
    45b8:	00000000 	nop

000045bc <Inventory_UpdateBottleItem>:
    45bc:	27bdffd0 	addiu	sp,sp,-48
    45c0:	afa60038 	sw	a2,56(sp)
    45c4:	93a6003b 	lbu	a2,59(sp)
    45c8:	3c080000 	lui	t0,0x0
    45cc:	25080000 	addiu	t0,t0,0
    45d0:	01061821 	addu	v1,t0,a2
    45d4:	9062006b 	lbu	v0,107(v1)
    45d8:	afb00020 	sw	s0,32(sp)
    45dc:	afa40030 	sw	a0,48(sp)
    45e0:	01027021 	addu	t6,t0,v0
    45e4:	91cf0074 	lbu	t7,116(t6)
    45e8:	30b000ff 	andi	s0,a1,0xff
    45ec:	afbf0024 	sw	ra,36(sp)
    45f0:	afa50034 	sw	a1,52(sp)
    45f4:	3c040000 	lui	a0,0x0
    45f8:	24840470 	addiu	a0,a0,1136
    45fc:	02002825 	move	a1,s0
    4600:	afb0002c 	sw	s0,44(sp)
    4604:	afa30028 	sw	v1,40(sp)
    4608:	00403825 	move	a3,v0
    460c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4610:	afaf0010 	sw	t7,16(sp)
    4614:	8fa30028 	lw	v1,40(sp)
    4618:	3c080000 	lui	t0,0x0
    461c:	25080000 	addiu	t0,t0,0
    4620:	9078006b 	lbu	t8,107(v1)
    4624:	93a6003b 	lbu	a2,59(sp)
    4628:	2401001a 	li	at,26
    462c:	01181021 	addu	v0,t0,t8
    4630:	90590074 	lbu	t9,116(v0)
    4634:	8fa5002c 	lw	a1,44(sp)
    4638:	01061821 	addu	v1,t0,a2
    463c:	17210004 	bne	t9,at,4650 <Inventory_UpdateBottleItem+0x94>
    4640:	24010014 	li	at,20
    4644:	54a10003 	bnel	a1,at,4654 <Inventory_UpdateBottleItem+0x98>
    4648:	a0500074 	sb	s0,116(v0)
    464c:	2410001f 	li	s0,31
    4650:	a0500074 	sb	s0,116(v0)
    4654:	a0700068 	sb	s0,104(v1)
    4658:	8fa40030 	lw	a0,48(sp)
    465c:	30c5ffff 	andi	a1,a2,0xffff
    4660:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4664:	afa3002c 	sw	v1,44(sp)
    4668:	8fa90030 	lw	t1,48(sp)
    466c:	3c010001 	lui	at,0x1
    4670:	8fa3002c 	lw	v1,44(sp)
    4674:	00290821 	addu	at,at,t1
    4678:	a430099e 	sh	s0,2462(at)
    467c:	8fbf0024 	lw	ra,36(sp)
    4680:	8fb00020 	lw	s0,32(sp)
    4684:	27bd0030 	addiu	sp,sp,48
    4688:	03e00008 	jr	ra
    468c:	a06013e2 	sb	zero,5090(v1)

00004690 <Inventory_ConsumeFairy>:
    4690:	3c050000 	lui	a1,0x0
    4694:	90a50018 	lbu	a1,24(a1)
    4698:	27bdffd8 	addiu	sp,sp,-40
    469c:	3c0e0000 	lui	t6,0x0
    46a0:	afa40028 	sw	a0,40(sp)
    46a4:	25ce0000 	addiu	t6,t6,0
    46a8:	afbf0014 	sw	ra,20(sp)
    46ac:	24040018 	li	a0,24
    46b0:	00001025 	move	v0,zero
    46b4:	00ae1821 	addu	v1,a1,t6
    46b8:	00623821 	addu	a3,v1,v0
    46bc:	90ef0074 	lbu	t7,116(a3)
    46c0:	548f0024 	bnel	a0,t7,4754 <Inventory_ConsumeFairy+0xc4>
    46c4:	24420001 	addiu	v0,v0,1
    46c8:	3c020000 	lui	v0,0x0
    46cc:	24420000 	addiu	v0,v0,0
    46d0:	24030001 	li	v1,1
    46d4:	00433021 	addu	a2,v0,v1
    46d8:	90d80068 	lbu	t8,104(a2)
    46dc:	1498000d 	bne	a0,t8,4714 <Inventory_ConsumeFairy+0x84>
    46e0:	24190014 	li	t9,20
    46e4:	a0d90068 	sb	t9,104(a2)
    46e8:	8fa40028 	lw	a0,40(sp)
    46ec:	3065ffff 	andi	a1,v1,0xffff
    46f0:	00001025 	move	v0,zero
    46f4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    46f8:	afa6001c 	sw	a2,28(sp)
    46fc:	8fa6001c 	lw	a2,28(sp)
    4700:	3c080000 	lui	t0,0x0
    4704:	25080000 	addiu	t0,t0,0
    4708:	90c5006b 	lbu	a1,107(a2)
    470c:	10000007 	b	472c <Inventory_ConsumeFairy+0x9c>
    4710:	00a83821 	addu	a3,a1,t0
    4714:	24630001 	addiu	v1,v1,1
    4718:	00031c00 	sll	v1,v1,0x10
    471c:	00031c03 	sra	v1,v1,0x10
    4720:	28610004 	slti	at,v1,4
    4724:	5420ffec 	bnezl	at,46d8 <Inventory_ConsumeFairy+0x48>
    4728:	00433021 	addu	a2,v0,v1
    472c:	3c040000 	lui	a0,0x0
    4730:	248404a0 	addiu	a0,a0,1184
    4734:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4738:	afa70018 	sw	a3,24(sp)
    473c:	8fa70018 	lw	a3,24(sp)
    4740:	24090014 	li	t1,20
    4744:	24020001 	li	v0,1
    4748:	10000008 	b	476c <Inventory_ConsumeFairy+0xdc>
    474c:	a0e90074 	sb	t1,116(a3)
    4750:	24420001 	addiu	v0,v0,1
    4754:	00021400 	sll	v0,v0,0x10
    4758:	00021403 	sra	v0,v0,0x10
    475c:	28410004 	slti	at,v0,4
    4760:	5420ffd6 	bnezl	at,46bc <Inventory_ConsumeFairy+0x2c>
    4764:	00623821 	addu	a3,v1,v0
    4768:	00001025 	move	v0,zero
    476c:	8fbf0014 	lw	ra,20(sp)
    4770:	27bd0028 	addiu	sp,sp,40
    4774:	03e00008 	jr	ra
    4778:	00000000 	nop

0000477c <func_80086D5C>:
    477c:	30a3ffff 	andi	v1,a1,0xffff
    4780:	afa50004 	sw	a1,4(sp)
    4784:	18600008 	blez	v1,47a8 <func_80086D5C+0x2c>
    4788:	00001025 	move	v0,zero
    478c:	00027080 	sll	t6,v0,0x2
    4790:	24420001 	addiu	v0,v0,1
    4794:	3042ffff 	andi	v0,v0,0xffff
    4798:	0043082a 	slt	at,v0,v1
    479c:	008e7821 	addu	t7,a0,t6
    47a0:	1420fffa 	bnez	at,478c <func_80086D5C+0x10>
    47a4:	ade00000 	sw	zero,0(t7)
    47a8:	03e00008 	jr	ra
    47ac:	00000000 	nop

000047b0 <Interface_LoadActionLabel>:
    47b0:	27bdffc0 	addiu	sp,sp,-64
    47b4:	30a2ffff 	andi	v0,a1,0xffff
    47b8:	afb00030 	sw	s0,48(sp)
    47bc:	2841001d 	slti	at,v0,29
    47c0:	00808025 	move	s0,a0
    47c4:	afbf0034 	sw	ra,52(sp)
    47c8:	afa50044 	sw	a1,68(sp)
    47cc:	14200002 	bnez	at,47d8 <Interface_LoadActionLabel+0x28>
    47d0:	afa60048 	sw	a2,72(sp)
    47d4:	2402000a 	li	v0,10
    47d8:	3c030000 	lui	v1,0x0
    47dc:	90631409 	lbu	v1,5129(v1)
    47e0:	2445001d 	addiu	a1,v0,29
    47e4:	24010002 	li	at,2
    47e8:	10600002 	beqz	v1,47f4 <Interface_LoadActionLabel+0x44>
    47ec:	00000000 	nop
    47f0:	30a2ffff 	andi	v0,a1,0xffff
    47f4:	14610002 	bne	v1,at,4800 <Interface_LoadActionLabel+0x50>
    47f8:	2445001d 	addiu	a1,v0,29
    47fc:	30a2ffff 	andi	v0,a1,0xffff
    4800:	2401000a 	li	at,10
    4804:	1041002a 	beq	v0,at,48b0 <Interface_LoadActionLabel+0x100>
    4808:	3c030000 	lui	v1,0x0
    480c:	24010027 	li	at,39
    4810:	10410027 	beq	v0,at,48b0 <Interface_LoadActionLabel+0x100>
    4814:	24010044 	li	at,68
    4818:	10410025 	beq	v0,at,48b0 <Interface_LoadActionLabel+0x100>
    481c:	260401c0 	addiu	a0,s0,448
    4820:	260501d8 	addiu	a1,s0,472
    4824:	24060001 	li	a2,1
    4828:	afa2003c 	sw	v0,60(sp)
    482c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4830:	afa40038 	sw	a0,56(sp)
    4834:	87af004a 	lh	t7,74(sp)
    4838:	24030180 	li	v1,384
    483c:	8fa2003c 	lw	v0,60(sp)
    4840:	01e30019 	multu	t7,v1
    4844:	8e0e0134 	lw	t6,308(s0)
    4848:	8fa90038 	lw	t1,56(sp)
    484c:	3c080000 	lui	t0,0x0
    4850:	3c0a0000 	lui	t2,0x0
    4854:	254a04b0 	addiu	t2,t2,1200
    4858:	25080000 	addiu	t0,t0,0
    485c:	240b0861 	li	t3,2145
    4860:	afab0020 	sw	t3,32(sp)
    4864:	afaa001c 	sw	t2,28(sp)
    4868:	0000c012 	mflo	t8
    486c:	afa00018 	sw	zero,24(sp)
    4870:	afa00010 	sw	zero,16(sp)
    4874:	00430019 	multu	v0,v1
    4878:	26040160 	addiu	a0,s0,352
    487c:	24070180 	li	a3,384
    4880:	01d82821 	addu	a1,t6,t8
    4884:	afa90014 	sw	t1,20(sp)
    4888:	0000c812 	mflo	t9
    488c:	03283021 	addu	a2,t9,t0
    4890:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4894:	00000000 	nop
    4898:	8fa40038 	lw	a0,56(sp)
    489c:	00002825 	move	a1,zero
    48a0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    48a4:	24060001 	li	a2,1
    48a8:	10000019 	b	4910 <Interface_LoadActionLabel+0x160>
    48ac:	8fbf0034 	lw	ra,52(sp)
    48b0:	8e0c0134 	lw	t4,308(s0)
    48b4:	87af004a 	lh	t7,74(sp)
    48b8:	3c018000 	lui	at,0x8000
    48bc:	24630000 	addiu	v1,v1,0
    48c0:	3c020000 	lui	v0,0x0
    48c4:	01816821 	addu	t5,t4,at
    48c8:	000f7080 	sll	t6,t7,0x2
    48cc:	ac6d001c 	sw	t5,28(v1)
    48d0:	004e1021 	addu	v0,v0,t6
    48d4:	8c420000 	lw	v0,0(v0)
    48d8:	3c0100ff 	lui	at,0xff
    48dc:	3421ffff 	ori	at,at,0xffff
    48e0:	0002c900 	sll	t9,v0,0x4
    48e4:	00194702 	srl	t0,t9,0x1c
    48e8:	00084880 	sll	t1,t0,0x2
    48ec:	00695021 	addu	t2,v1,t1
    48f0:	8d4b0000 	lw	t3,0(t2)
    48f4:	0041c024 	and	t8,v0,at
    48f8:	3c018000 	lui	at,0x8000
    48fc:	030b2021 	addu	a0,t8,t3
    4900:	00812021 	addu	a0,a0,at
    4904:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4908:	24050060 	li	a1,96
    490c:	8fbf0034 	lw	ra,52(sp)
    4910:	8fb00030 	lw	s0,48(sp)
    4914:	27bd0040 	addiu	sp,sp,64
    4918:	03e00008 	jr	ra
    491c:	00000000 	nop

00004920 <Interface_SetDoAction>:
    4920:	27bdffd8 	addiu	sp,sp,-40
    4924:	3c0e0001 	lui	t6,0x1
    4928:	afbf0014 	sw	ra,20(sp)
    492c:	afa5002c 	sw	a1,44(sp)
    4930:	01c47021 	addu	t6,t6,a0
    4934:	95ce06e0 	lhu	t6,1760(t6)
    4938:	30a5ffff 	andi	a1,a1,0xffff
    493c:	00803825 	move	a3,a0
    4940:	10ae0015 	beq	a1,t6,4998 <Interface_SetDoAction+0x78>
    4944:	3c010001 	lui	at,0x1
    4948:	342104f0 	ori	at,at,0x4f0
    494c:	44802000 	mtc1	zero,$f4
    4950:	00812021 	addu	a0,a0,at
    4954:	240f0001 	li	t7,1
    4958:	a48501f0 	sh	a1,496(a0)
    495c:	a48f01ec 	sh	t7,492(a0)
    4960:	e48401f4 	swc1	$f4,500(a0)
    4964:	afa70028 	sw	a3,40(sp)
    4968:	afa4001c 	sw	a0,28(sp)
    496c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4970:	24060001 	li	a2,1
    4974:	8fa70028 	lw	a3,40(sp)
    4978:	3c180001 	lui	t8,0x1
    497c:	8fa4001c 	lw	a0,28(sp)
    4980:	0307c021 	addu	t8,t8,a3
    4984:	97180934 	lhu	t8,2356(t8)
    4988:	24190003 	li	t9,3
    498c:	53000003 	beqzl	t8,499c <Interface_SetDoAction+0x7c>
    4990:	8fbf0014 	lw	ra,20(sp)
    4994:	a49901ec 	sh	t9,492(a0)
    4998:	8fbf0014 	lw	ra,20(sp)
    499c:	27bd0028 	addiu	sp,sp,40
    49a0:	03e00008 	jr	ra
    49a4:	00000000 	nop

000049a8 <Interface_SetNaviCall>:
    49a8:	27bdffd0 	addiu	sp,sp,-48
    49ac:	afa50034 	sw	a1,52(sp)
    49b0:	30a5ffff 	andi	a1,a1,0xffff
    49b4:	2401001d 	li	at,29
    49b8:	afbf001c 	sw	ra,28(sp)
    49bc:	10a10003 	beq	a1,at,49cc <Interface_SetNaviCall+0x24>
    49c0:	00a01825 	move	v1,a1
    49c4:	2401001e 	li	at,30
    49c8:	14a1002b 	bne	a1,at,4a78 <Interface_SetNaviCall+0xd0>
    49cc:	3c010001 	lui	at,0x1
    49d0:	342104f0 	ori	at,at,0x4f0
    49d4:	00811021 	addu	v0,a0,at
    49d8:	844e01f8 	lh	t6,504(v0)
    49dc:	55c00027 	bnezl	t6,4a7c <Interface_SetNaviCall+0xd4>
    49e0:	2401001f 	li	at,31
    49e4:	908f1d6c 	lbu	t7,7532(a0)
    49e8:	2401001e 	li	at,30
    49ec:	55e00023 	bnezl	t7,4a7c <Interface_SetNaviCall+0xd4>
    49f0:	2401001f 	li	at,31
    49f4:	1461000f 	bne	v1,at,4a34 <Interface_SetNaviCall+0x8c>
    49f8:	3c070000 	lui	a3,0x0
    49fc:	3c180000 	lui	t8,0x0
    4a00:	27180000 	addiu	t8,t8,0
    4a04:	24e70000 	addiu	a3,a3,0
    4a08:	3c050000 	lui	a1,0x0
    4a0c:	24a50000 	addiu	a1,a1,0
    4a10:	afa70010 	sw	a3,16(sp)
    4a14:	afb80014 	sw	t8,20(sp)
    4a18:	24046843 	li	a0,26691
    4a1c:	24060004 	li	a2,4
    4a20:	afa20028 	sw	v0,40(sp)
    4a24:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4a28:	afa30024 	sw	v1,36(sp)
    4a2c:	8fa20028 	lw	v0,40(sp)
    4a30:	8fa30024 	lw	v1,36(sp)
    4a34:	2401001d 	li	at,29
    4a38:	14610007 	bne	v1,at,4a58 <Interface_SetNaviCall+0xb0>
    4a3c:	3c040000 	lui	a0,0x0
    4a40:	24840000 	addiu	a0,a0,0
    4a44:	2405685f 	li	a1,26719
    4a48:	24060020 	li	a2,32
    4a4c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4a50:	afa20028 	sw	v0,40(sp)
    4a54:	8fa20028 	lw	v0,40(sp)
    4a58:	24190001 	li	t9,1
    4a5c:	a45901f8 	sh	t9,504(v0)
    4a60:	3c010000 	lui	at,0x0
    4a64:	a4200000 	sh	zero,0(at)
    4a68:	3c010000 	lui	at,0x0
    4a6c:	2408000a 	li	t0,10
    4a70:	1000000a 	b	4a9c <Interface_SetNaviCall+0xf4>
    4a74:	a4280000 	sh	t0,0(at)
    4a78:	2401001f 	li	at,31
    4a7c:	14610007 	bne	v1,at,4a9c <Interface_SetNaviCall+0xf4>
    4a80:	3c010001 	lui	at,0x1
    4a84:	342104f0 	ori	at,at,0x4f0
    4a88:	00811021 	addu	v0,a0,at
    4a8c:	844901f8 	lh	t1,504(v0)
    4a90:	51200003 	beqzl	t1,4aa0 <Interface_SetNaviCall+0xf8>
    4a94:	8fbf001c 	lw	ra,28(sp)
    4a98:	a44001f8 	sh	zero,504(v0)
    4a9c:	8fbf001c 	lw	ra,28(sp)
    4aa0:	27bd0030 	addiu	sp,sp,48
    4aa4:	03e00008 	jr	ra
    4aa8:	00000000 	nop

00004aac <Interface_LoadActionLabelB>:
    4aac:	3c020000 	lui	v0,0x0
    4ab0:	90421409 	lbu	v0,5129(v0)
    4ab4:	27bdffb8 	addiu	sp,sp,-72
    4ab8:	afbf0034 	sw	ra,52(sp)
    4abc:	afb00030 	sw	s0,48(sp)
    4ac0:	afa40048 	sw	a0,72(sp)
    4ac4:	afa5004c 	sw	a1,76(sp)
    4ac8:	10400003 	beqz	v0,4ad8 <Interface_LoadActionLabelB+0x2c>
    4acc:	30a7ffff 	andi	a3,a1,0xffff
    4ad0:	24e7001d 	addiu	a3,a3,29
    4ad4:	30e7ffff 	andi	a3,a3,0xffff
    4ad8:	24010002 	li	at,2
    4adc:	14410003 	bne	v0,at,4aec <Interface_LoadActionLabelB+0x40>
    4ae0:	8fb00048 	lw	s0,72(sp)
    4ae4:	24e7001d 	addiu	a3,a3,29
    4ae8:	30e7ffff 	andi	a3,a3,0xffff
    4aec:	3c010001 	lui	at,0x1
    4af0:	342104f0 	ori	at,at,0x4f0
    4af4:	02018021 	addu	s0,s0,at
    4af8:	a60701fc 	sh	a3,508(s0)
    4afc:	260401c0 	addiu	a0,s0,448
    4b00:	afa40038 	sw	a0,56(sp)
    4b04:	afa7003c 	sw	a3,60(sp)
    4b08:	260501d8 	addiu	a1,s0,472
    4b0c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4b10:	24060001 	li	a2,1
    4b14:	8fa2003c 	lw	v0,60(sp)
    4b18:	8e050134 	lw	a1,308(s0)
    4b1c:	8fb80038 	lw	t8,56(sp)
    4b20:	00027080 	sll	t6,v0,0x2
    4b24:	3c0f0000 	lui	t7,0x0
    4b28:	3c190000 	lui	t9,0x0
    4b2c:	01c27023 	subu	t6,t6,v0
    4b30:	000e71c0 	sll	t6,t6,0x7
    4b34:	273904c4 	addiu	t9,t9,1220
    4b38:	25ef0000 	addiu	t7,t7,0
    4b3c:	240808b4 	li	t0,2228
    4b40:	afa80020 	sw	t0,32(sp)
    4b44:	01cf3021 	addu	a2,t6,t7
    4b48:	afb9001c 	sw	t9,28(sp)
    4b4c:	afa00018 	sw	zero,24(sp)
    4b50:	afa00010 	sw	zero,16(sp)
    4b54:	26040160 	addiu	a0,s0,352
    4b58:	24070180 	li	a3,384
    4b5c:	24a50180 	addiu	a1,a1,384
    4b60:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4b64:	afb80014 	sw	t8,20(sp)
    4b68:	8fa40038 	lw	a0,56(sp)
    4b6c:	00002825 	move	a1,zero
    4b70:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4b74:	24060001 	li	a2,1
    4b78:	24090001 	li	t1,1
    4b7c:	a60901fa 	sh	t1,506(s0)
    4b80:	8fbf0034 	lw	ra,52(sp)
    4b84:	8fb00030 	lw	s0,48(sp)
    4b88:	27bd0048 	addiu	sp,sp,72
    4b8c:	03e00008 	jr	ra
    4b90:	00000000 	nop

00004b94 <Health_ChangeBy>:
    4b94:	27bdffd8 	addiu	sp,sp,-40
    4b98:	afb00020 	sw	s0,32(sp)
    4b9c:	00058400 	sll	s0,a1,0x10
    4ba0:	afa40028 	sw	a0,40(sp)
    4ba4:	3c080000 	lui	t0,0x0
    4ba8:	25080000 	addiu	t0,t0,0
    4bac:	00108403 	sra	s0,s0,0x10
    4bb0:	afbf0024 	sw	ra,36(sp)
    4bb4:	afa5002c 	sw	a1,44(sp)
    4bb8:	3c040000 	lui	a0,0x0
    4bbc:	248404d8 	addiu	a0,a0,1240
    4bc0:	02002825 	move	a1,s0
    4bc4:	85060030 	lh	a2,48(t0)
    4bc8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4bcc:	8507002e 	lh	a3,46(t0)
    4bd0:	3c080000 	lui	t0,0x0
    4bd4:	1a00000f 	blez	s0,4c14 <Health_ChangeBy+0x80>
    4bd8:	25080000 	addiu	t0,t0,0
    4bdc:	3c070000 	lui	a3,0x0
    4be0:	3c0e0000 	lui	t6,0x0
    4be4:	25ce0000 	addiu	t6,t6,0
    4be8:	24e70000 	addiu	a3,a3,0
    4bec:	3c050000 	lui	a1,0x0
    4bf0:	24a50000 	addiu	a1,a1,0
    4bf4:	afa70010 	sw	a3,16(sp)
    4bf8:	afae0014 	sw	t6,20(sp)
    4bfc:	2404480b 	li	a0,18443
    4c00:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4c04:	24060004 	li	a2,4
    4c08:	3c080000 	lui	t0,0x0
    4c0c:	1000000e 	b	4c48 <Health_ChangeBy+0xb4>
    4c10:	25080000 	addiu	t0,t0,0
    4c14:	910f003d 	lbu	t7,61(t0)
    4c18:	51e0000c 	beqzl	t7,4c4c <Health_ChangeBy+0xb8>
    4c1c:	85180030 	lh	t8,48(t0)
    4c20:	06010009 	bgez	s0,4c48 <Health_ChangeBy+0xb4>
    4c24:	3c040000 	lui	a0,0x0
    4c28:	00108043 	sra	s0,s0,0x1
    4c2c:	00108400 	sll	s0,s0,0x10
    4c30:	00108403 	sra	s0,s0,0x10
    4c34:	02002825 	move	a1,s0
    4c38:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4c3c:	24840508 	addiu	a0,a0,1288
    4c40:	3c080000 	lui	t0,0x0
    4c44:	25080000 	addiu	t0,t0,0
    4c48:	85180030 	lh	t8,48(t0)
    4c4c:	8502002e 	lh	v0,46(t0)
    4c50:	0310c821 	addu	t9,t8,s0
    4c54:	a5190030 	sh	t9,48(t0)
    4c58:	85050030 	lh	a1,48(t0)
    4c5c:	0045082a 	slt	at,v0,a1
    4c60:	10200003 	beqz	at,4c70 <Health_ChangeBy+0xdc>
    4c64:	00000000 	nop
    4c68:	a5020030 	sh	v0,48(t0)
    4c6c:	85050030 	lh	a1,48(t0)
    4c70:	04a10004 	bgez	a1,4c84 <Health_ChangeBy+0xf0>
    4c74:	30a2000f 	andi	v0,a1,0xf
    4c78:	10400002 	beqz	v0,4c84 <Health_ChangeBy+0xf0>
    4c7c:	00000000 	nop
    4c80:	2442fff0 	addiu	v0,v0,-16
    4c84:	3042ffff 	andi	v0,v0,0xffff
    4c88:	3043ffff 	andi	v1,v0,0xffff
    4c8c:	1040000b 	beqz	v0,4cbc <Health_ChangeBy+0x128>
    4c90:	00402025 	move	a0,v0
    4c94:	2841000b 	slti	at,v0,11
    4c98:	54200004 	bnezl	at,4cac <Health_ChangeBy+0x118>
    4c9c:	28810006 	slti	at,a0,6
    4ca0:	10000006 	b	4cbc <Health_ChangeBy+0x128>
    4ca4:	24030003 	li	v1,3
    4ca8:	28810006 	slti	at,a0,6
    4cac:	14200003 	bnez	at,4cbc <Health_ChangeBy+0x128>
    4cb0:	24030001 	li	v1,1
    4cb4:	10000001 	b	4cbc <Health_ChangeBy+0x128>
    4cb8:	24030002 	li	v1,2
    4cbc:	3c040000 	lui	a0,0x0
    4cc0:	24840520 	addiu	a0,a0,1312
    4cc4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4cc8:	00603025 	move	a2,v1
    4ccc:	3c080000 	lui	t0,0x0
    4cd0:	25080000 	addiu	t0,t0,0
    4cd4:	85090030 	lh	t1,48(t0)
    4cd8:	00001025 	move	v0,zero
    4cdc:	5d200004 	bgtzl	t1,4cf0 <Health_ChangeBy+0x15c>
    4ce0:	24020001 	li	v0,1
    4ce4:	10000002 	b	4cf0 <Health_ChangeBy+0x15c>
    4ce8:	a5000030 	sh	zero,48(t0)
    4cec:	24020001 	li	v0,1
    4cf0:	8fbf0024 	lw	ra,36(sp)
    4cf4:	8fb00020 	lw	s0,32(sp)
    4cf8:	27bd0028 	addiu	sp,sp,40
    4cfc:	03e00008 	jr	ra
    4d00:	00000000 	nop

00004d04 <Health_GiveHearts>:
    4d04:	3c020000 	lui	v0,0x0
    4d08:	24420000 	addiu	v0,v0,0
    4d0c:	afa40000 	sw	a0,0(sp)
    4d10:	844e002e 	lh	t6,46(v0)
    4d14:	00042400 	sll	a0,a0,0x10
    4d18:	00042403 	sra	a0,a0,0x10
    4d1c:	00047900 	sll	t7,a0,0x4
    4d20:	01cfc021 	addu	t8,t6,t7
    4d24:	03e00008 	jr	ra
    4d28:	a458002e 	sh	t8,46(v0)

00004d2c <Rupees_ChangeBy>:
    4d2c:	3c020000 	lui	v0,0x0
    4d30:	24420000 	addiu	v0,v0,0
    4d34:	844e13cc 	lh	t6,5068(v0)
    4d38:	afa40000 	sw	a0,0(sp)
    4d3c:	00042400 	sll	a0,a0,0x10
    4d40:	00042403 	sra	a0,a0,0x10
    4d44:	01c47821 	addu	t7,t6,a0
    4d48:	03e00008 	jr	ra
    4d4c:	a44f13cc 	sh	t7,5068(v0)

00004d50 <Inventory_ChangeAmmo>:
    4d50:	27bdffe0 	addiu	sp,sp,-32
    4d54:	afa40020 	sw	a0,32(sp)
    4d58:	afa50024 	sw	a1,36(sp)
    4d5c:	00053c00 	sll	a3,a1,0x10
    4d60:	87a50022 	lh	a1,34(sp)
    4d64:	3c080000 	lui	t0,0x0
    4d68:	25080000 	addiu	t0,t0,0
    4d6c:	01055021 	addu	t2,t0,a1
    4d70:	914e0000 	lbu	t6,0(t2)
    4d74:	3c090000 	lui	t1,0x0
    4d78:	25290000 	addiu	t1,t1,0
    4d7c:	012e7821 	addu	t7,t1,t6
    4d80:	00073c03 	sra	a3,a3,0x10
    4d84:	afbf0014 	sw	ra,20(sp)
    4d88:	81e6008c 	lb	a2,140(t7)
    4d8c:	3c040000 	lui	a0,0x0
    4d90:	24840548 	addiu	a0,a0,1352
    4d94:	afaa001c 	sw	t2,28(sp)
    4d98:	0c000000 	jal	0 <Interface_ChangeAlpha>
    4d9c:	a7a70026 	sh	a3,38(sp)
    4da0:	8faa001c 	lw	t2,28(sp)
    4da4:	3c180000 	lui	t8,0x0
    4da8:	3c080000 	lui	t0,0x0
    4dac:	3c090000 	lui	t1,0x0
    4db0:	27180000 	addiu	t8,t8,0
    4db4:	25290000 	addiu	t1,t1,0
    4db8:	25080000 	addiu	t0,t0,0
    4dbc:	1558001b 	bne	t2,t8,4e2c <Inventory_ChangeAmmo+0xdc>
    4dc0:	87a70026 	lh	a3,38(sp)
    4dc4:	91190000 	lbu	t9,0(t0)
    4dc8:	3c0e0000 	lui	t6,0x0
    4dcc:	3c180000 	lui	t8,0x0
    4dd0:	01391021 	addu	v0,t1,t9
    4dd4:	804b008c 	lb	t3,140(v0)
    4dd8:	3c040000 	lui	a0,0x0
    4ddc:	01676021 	addu	t4,t3,a3
    4de0:	a04c008c 	sb	t4,140(v0)
    4de4:	8dce0018 	lw	t6,24(t6)
    4de8:	8d2d00a0 	lw	t5,160(t1)
    4dec:	93180006 	lbu	t8,6(t8)
    4df0:	8043008c 	lb	v1,140(v0)
    4df4:	01ae7824 	and	t7,t5,t6
    4df8:	030fc807 	srav	t9,t7,t8
    4dfc:	00195840 	sll	t3,t9,0x1
    4e00:	008b2021 	addu	a0,a0,t3
    4e04:	94840030 	lhu	a0,48(a0)
    4e08:	0064082a 	slt	at,v1,a0
    4e0c:	14200003 	bnez	at,4e1c <Inventory_ChangeAmmo+0xcc>
    4e10:	00000000 	nop
    4e14:	10000098 	b	5078 <Inventory_ChangeAmmo+0x328>
    4e18:	a044008c 	sb	a0,140(v0)
    4e1c:	04630097 	bgezl	v1,507c <Inventory_ChangeAmmo+0x32c>
    4e20:	914d0000 	lbu	t5,0(t2)
    4e24:	10000094 	b	5078 <Inventory_ChangeAmmo+0x328>
    4e28:	a040008c 	sb	zero,140(v0)
    4e2c:	3c0c0000 	lui	t4,0x0
    4e30:	258c0001 	addiu	t4,t4,1
    4e34:	154c001b 	bne	t2,t4,4ea4 <Inventory_ChangeAmmo+0x154>
    4e38:	3c0f0000 	lui	t7,0x0
    4e3c:	910d0001 	lbu	t5,1(t0)
    4e40:	3c190000 	lui	t9,0x0
    4e44:	3c0c0000 	lui	t4,0x0
    4e48:	012d1021 	addu	v0,t1,t5
    4e4c:	804e008c 	lb	t6,140(v0)
    4e50:	3c040000 	lui	a0,0x0
    4e54:	01c77821 	addu	t7,t6,a3
    4e58:	a04f008c 	sb	t7,140(v0)
    4e5c:	8f39001c 	lw	t9,28(t9)
    4e60:	8d3800a0 	lw	t8,160(t1)
    4e64:	918c0007 	lbu	t4,7(t4)
    4e68:	8043008c 	lb	v1,140(v0)
    4e6c:	03195824 	and	t3,t8,t9
    4e70:	018b6807 	srav	t5,t3,t4
    4e74:	000d7040 	sll	t6,t5,0x1
    4e78:	008e2021 	addu	a0,a0,t6
    4e7c:	94840038 	lhu	a0,56(a0)
    4e80:	0064082a 	slt	at,v1,a0
    4e84:	14200003 	bnez	at,4e94 <Inventory_ChangeAmmo+0x144>
    4e88:	00000000 	nop
    4e8c:	1000007a 	b	5078 <Inventory_ChangeAmmo+0x328>
    4e90:	a044008c 	sb	a0,140(v0)
    4e94:	04630079 	bgezl	v1,507c <Inventory_ChangeAmmo+0x32c>
    4e98:	914d0000 	lbu	t5,0(t2)
    4e9c:	10000076 	b	5078 <Inventory_ChangeAmmo+0x328>
    4ea0:	a040008c 	sb	zero,140(v0)
    4ea4:	25ef0009 	addiu	t7,t7,9
    4ea8:	154f0011 	bne	t2,t7,4ef0 <Inventory_ChangeAmmo+0x1a0>
    4eac:	3c0d0000 	lui	t5,0x0
    4eb0:	91180009 	lbu	t8,9(t0)
    4eb4:	240c0032 	li	t4,50
    4eb8:	01381021 	addu	v0,t1,t8
    4ebc:	8059008c 	lb	t9,140(v0)
    4ec0:	03275821 	addu	t3,t9,a3
    4ec4:	a04b008c 	sb	t3,140(v0)
    4ec8:	8043008c 	lb	v1,140(v0)
    4ecc:	28610032 	slti	at,v1,50
    4ed0:	14200003 	bnez	at,4ee0 <Inventory_ChangeAmmo+0x190>
    4ed4:	00000000 	nop
    4ed8:	10000067 	b	5078 <Inventory_ChangeAmmo+0x328>
    4edc:	a04c008c 	sb	t4,140(v0)
    4ee0:	04630066 	bgezl	v1,507c <Inventory_ChangeAmmo+0x32c>
    4ee4:	914d0000 	lbu	t5,0(t2)
    4ee8:	10000063 	b	5078 <Inventory_ChangeAmmo+0x328>
    4eec:	a040008c 	sb	zero,140(v0)
    4ef0:	25ad0003 	addiu	t5,t5,3
    4ef4:	154d001b 	bne	t2,t5,4f64 <Inventory_ChangeAmmo+0x214>
    4ef8:	3c180000 	lui	t8,0x0
    4efc:	910e0003 	lbu	t6,3(t0)
    4f00:	3c0b0000 	lui	t3,0x0
    4f04:	3c0d0000 	lui	t5,0x0
    4f08:	012e1021 	addu	v0,t1,t6
    4f0c:	804f008c 	lb	t7,140(v0)
    4f10:	3c040000 	lui	a0,0x0
    4f14:	01e7c021 	addu	t8,t7,a3
    4f18:	a058008c 	sb	t8,140(v0)
    4f1c:	8d6b0000 	lw	t3,0(t3)
    4f20:	8d3900a0 	lw	t9,160(t1)
    4f24:	91ad0000 	lbu	t5,0(t5)
    4f28:	8043008c 	lb	v1,140(v0)
    4f2c:	032b6024 	and	t4,t9,t3
    4f30:	01ac7007 	srav	t6,t4,t5
    4f34:	000e7840 	sll	t7,t6,0x1
    4f38:	008f2021 	addu	a0,a0,t7
    4f3c:	94840000 	lhu	a0,0(a0)
    4f40:	0064082a 	slt	at,v1,a0
    4f44:	14200003 	bnez	at,4f54 <Inventory_ChangeAmmo+0x204>
    4f48:	00000000 	nop
    4f4c:	1000004a 	b	5078 <Inventory_ChangeAmmo+0x328>
    4f50:	a044008c 	sb	a0,140(v0)
    4f54:	04630049 	bgezl	v1,507c <Inventory_ChangeAmmo+0x32c>
    4f58:	914d0000 	lbu	t5,0(t2)
    4f5c:	10000046 	b	5078 <Inventory_ChangeAmmo+0x328>
    4f60:	a040008c 	sb	zero,140(v0)
    4f64:	27180006 	addiu	t8,t8,6
    4f68:	11580004 	beq	t2,t8,4f7c <Inventory_ChangeAmmo+0x22c>
    4f6c:	3c190000 	lui	t9,0x0
    4f70:	27390058 	addiu	t9,t9,88
    4f74:	1559001b 	bne	t2,t9,4fe4 <Inventory_ChangeAmmo+0x294>
    4f78:	3c0d0000 	lui	t5,0x0
    4f7c:	910b0006 	lbu	t3,6(t0)
    4f80:	3c0f0000 	lui	t7,0x0
    4f84:	3c190000 	lui	t9,0x0
    4f88:	012b1021 	addu	v0,t1,t3
    4f8c:	804c008c 	lb	t4,140(v0)
    4f90:	3c040000 	lui	a0,0x0
    4f94:	01876821 	addu	t5,t4,a3
    4f98:	a04d008c 	sb	t5,140(v0)
    4f9c:	8def0014 	lw	t7,20(t7)
    4fa0:	8d2e00a0 	lw	t6,160(t1)
    4fa4:	93390005 	lbu	t9,5(t9)
    4fa8:	8043008c 	lb	v1,140(v0)
    4fac:	01cfc024 	and	t8,t6,t7
    4fb0:	03385807 	srav	t3,t8,t9
    4fb4:	000b6040 	sll	t4,t3,0x1
    4fb8:	008c2021 	addu	a0,a0,t4
    4fbc:	94840028 	lhu	a0,40(a0)
    4fc0:	0064082a 	slt	at,v1,a0
    4fc4:	14200003 	bnez	at,4fd4 <Inventory_ChangeAmmo+0x284>
    4fc8:	00000000 	nop
    4fcc:	1000002a 	b	5078 <Inventory_ChangeAmmo+0x328>
    4fd0:	a044008c 	sb	a0,140(v0)
    4fd4:	04630029 	bgezl	v1,507c <Inventory_ChangeAmmo+0x32c>
    4fd8:	914d0000 	lbu	t5,0(t2)
    4fdc:	10000026 	b	5078 <Inventory_ChangeAmmo+0x328>
    4fe0:	a040008c 	sb	zero,140(v0)
    4fe4:	25ad0002 	addiu	t5,t5,2
    4fe8:	154d001b 	bne	t2,t5,5058 <Inventory_ChangeAmmo+0x308>
    4fec:	3c180000 	lui	t8,0x0
    4ff0:	910e0002 	lbu	t6,2(t0)
    4ff4:	3c0b0000 	lui	t3,0x0
    4ff8:	3c0d0000 	lui	t5,0x0
    4ffc:	012e1021 	addu	v0,t1,t6
    5000:	804f008c 	lb	t7,140(v0)
    5004:	3c040000 	lui	a0,0x0
    5008:	01e7c021 	addu	t8,t7,a3
    500c:	a058008c 	sb	t8,140(v0)
    5010:	8d6b0004 	lw	t3,4(t3)
    5014:	8d3900a0 	lw	t9,160(t1)
    5018:	91ad0001 	lbu	t5,1(t5)
    501c:	8043008c 	lb	v1,140(v0)
    5020:	032b6024 	and	t4,t9,t3
    5024:	01ac7007 	srav	t6,t4,t5
    5028:	000e7840 	sll	t7,t6,0x1
    502c:	008f2021 	addu	a0,a0,t7
    5030:	94840008 	lhu	a0,8(a0)
    5034:	0064082a 	slt	at,v1,a0
    5038:	14200003 	bnez	at,5048 <Inventory_ChangeAmmo+0x2f8>
    503c:	00000000 	nop
    5040:	1000000d 	b	5078 <Inventory_ChangeAmmo+0x328>
    5044:	a044008c 	sb	a0,140(v0)
    5048:	0463000c 	bgezl	v1,507c <Inventory_ChangeAmmo+0x32c>
    504c:	914d0000 	lbu	t5,0(t2)
    5050:	10000009 	b	5078 <Inventory_ChangeAmmo+0x328>
    5054:	a040008c 	sb	zero,140(v0)
    5058:	27180010 	addiu	t8,t8,16
    505c:	55580007 	bnel	t2,t8,507c <Inventory_ChangeAmmo+0x32c>
    5060:	914d0000 	lbu	t5,0(t2)
    5064:	91190010 	lbu	t9,16(t0)
    5068:	01391021 	addu	v0,t1,t9
    506c:	804b008c 	lb	t3,140(v0)
    5070:	01676021 	addu	t4,t3,a3
    5074:	a04c008c 	sb	t4,140(v0)
    5078:	914d0000 	lbu	t5,0(t2)
    507c:	3c040000 	lui	a0,0x0
    5080:	2484056c 	addiu	a0,a0,1388
    5084:	012d7021 	addu	t6,t1,t5
    5088:	0c000000 	jal	0 <Interface_ChangeAlpha>
    508c:	81c5008c 	lb	a1,140(t6)
    5090:	8fbf0014 	lw	ra,20(sp)
    5094:	27bd0020 	addiu	sp,sp,32
    5098:	03e00008 	jr	ra
    509c:	00000000 	nop

000050a0 <func_80087680>:
    50a0:	3c020000 	lui	v0,0x0
    50a4:	24420000 	addiu	v0,v0,0
    50a8:	904e003a 	lbu	t6,58(v0)
    50ac:	afa40000 	sw	a0,0(sp)
    50b0:	24090009 	li	t1,9
    50b4:	11c0000a 	beqz	t6,50e0 <func_80087680+0x40>
    50b8:	00000000 	nop
    50bc:	9058003c 	lbu	t8,60(v0)
    50c0:	844f13f0 	lh	t7,5104(v0)
    50c4:	a44913f0 	sh	t1,5104(v0)
    50c8:	0018c880 	sll	t9,t8,0x2
    50cc:	0338c823 	subu	t9,t9,t8
    50d0:	0019c900 	sll	t9,t9,0x4
    50d4:	27280030 	addiu	t0,t9,48
    50d8:	a44813f6 	sh	t0,5110(v0)
    50dc:	a44f13f2 	sh	t7,5106(v0)
    50e0:	03e00008 	jr	ra
    50e4:	00000000 	nop

000050e8 <func_800876C8>:
    50e8:	3c030000 	lui	v1,0x0
    50ec:	24630000 	addiu	v1,v1,0
    50f0:	846213f0 	lh	v0,5104(v1)
    50f4:	24010008 	li	at,8
    50f8:	afa40000 	sw	a0,0(sp)
    50fc:	10410008 	beq	v0,at,5120 <func_800876C8+0x38>
    5100:	24010009 	li	at,9
    5104:	10410006 	beq	v0,at,5120 <func_800876C8+0x38>
    5108:	240e0005 	li	t6,5
    510c:	2401000a 	li	at,10
    5110:	54410003 	bnel	v0,at,5120 <func_800876C8+0x38>
    5114:	a46e13f0 	sh	t6,5104(v1)
    5118:	a46213f2 	sh	v0,5106(v1)
    511c:	a46e13f0 	sh	t6,5104(v1)
    5120:	03e00008 	jr	ra
    5124:	00000000 	nop

00005128 <func_80087708>:
    5128:	3c030000 	lui	v1,0x0
    512c:	24630000 	addiu	v1,v1,0
    5130:	27bdffe0 	addiu	sp,sp,-32
    5134:	906e003a 	lbu	t6,58(v1)
    5138:	afa50024 	sw	a1,36(sp)
    513c:	afa60028 	sw	a2,40(sp)
    5140:	00063400 	sll	a2,a2,0x10
    5144:	00052c00 	sll	a1,a1,0x10
    5148:	00052c03 	sra	a1,a1,0x10
    514c:	00063403 	sra	a2,a2,0x10
    5150:	15c00003 	bnez	t6,5160 <func_80087708+0x38>
    5154:	afbf001c 	sw	ra,28(sp)
    5158:	1000009c 	b	53cc <func_80087708+0x2a4>
    515c:	00001025 	move	v0,zero
    5160:	24010005 	li	at,5
    5164:	50c10015 	beql	a2,at,51bc <func_80087708+0x94>
    5168:	2cc10006 	sltiu	at,a2,6
    516c:	806f0033 	lb	t7,51(v1)
    5170:	01e5c023 	subu	t8,t7,a1
    5174:	07030011 	bgezl	t8,51bc <func_80087708+0x94>
    5178:	2cc10006 	sltiu	at,a2,6
    517c:	847913f4 	lh	t9,5108(v1)
    5180:	3c070000 	lui	a3,0x0
    5184:	24e70000 	addiu	a3,a3,0
    5188:	13200009 	beqz	t9,51b0 <func_80087708+0x88>
    518c:	24044806 	li	a0,18438
    5190:	3c080000 	lui	t0,0x0
    5194:	25080000 	addiu	t0,t0,0
    5198:	3c050000 	lui	a1,0x0
    519c:	24a50000 	addiu	a1,a1,0
    51a0:	afa80014 	sw	t0,20(sp)
    51a4:	24060004 	li	a2,4
    51a8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    51ac:	afa70010 	sw	a3,16(sp)
    51b0:	10000086 	b	53cc <func_80087708+0x2a4>
    51b4:	00001025 	move	v0,zero
    51b8:	2cc10006 	sltiu	at,a2,6
    51bc:	10200082 	beqz	at,53c8 <func_80087708+0x2a0>
    51c0:	00064880 	sll	t1,a2,0x2
    51c4:	3c010000 	lui	at,0x0
    51c8:	00290821 	addu	at,at,t1
    51cc:	8c2908e8 	lw	t1,2280(at)
    51d0:	01200008 	jr	t1
    51d4:	00000000 	nop
    51d8:	846213f0 	lh	v0,5104(v1)
    51dc:	24010007 	li	at,7
    51e0:	240c0001 	li	t4,1
    51e4:	50400003 	beqzl	v0,51f4 <func_80087708+0xcc>
    51e8:	24010007 	li	at,7
    51ec:	1441000a 	bne	v0,at,5218 <func_80087708+0xf0>
    51f0:	24010007 	li	at,7
    51f4:	54410003 	bnel	v0,at,5204 <func_80087708+0xdc>
    51f8:	806a0033 	lb	t2,51(v1)
    51fc:	a0801c27 	sb	zero,7207(a0)
    5200:	806a0033 	lb	t2,51(v1)
    5204:	a46c13f0 	sh	t4,5104(v1)
    5208:	24020001 	li	v0,1
    520c:	01455823 	subu	t3,t2,a1
    5210:	1000006e 	b	53cc <func_80087708+0x2a4>
    5214:	a46b13f8 	sh	t3,5112(v1)
    5218:	3c070000 	lui	a3,0x0
    521c:	3c0d0000 	lui	t5,0x0
    5220:	24e70000 	addiu	a3,a3,0
    5224:	25ad0000 	addiu	t5,t5,0
    5228:	3c050000 	lui	a1,0x0
    522c:	24a50000 	addiu	a1,a1,0
    5230:	afad0014 	sw	t5,20(sp)
    5234:	afa70010 	sw	a3,16(sp)
    5238:	24044806 	li	a0,18438
    523c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    5240:	24060004 	li	a2,4
    5244:	10000061 	b	53cc <func_80087708+0x2a4>
    5248:	00001025 	move	v0,zero
    524c:	846213f0 	lh	v0,5104(v1)
    5250:	24010007 	li	at,7
    5254:	24180006 	li	t8,6
    5258:	50400003 	beqzl	v0,5268 <func_80087708+0x140>
    525c:	24010007 	li	at,7
    5260:	1441000a 	bne	v0,at,528c <func_80087708+0x164>
    5264:	24010007 	li	at,7
    5268:	54410003 	bnel	v0,at,5278 <func_80087708+0x150>
    526c:	806e0033 	lb	t6,51(v1)
    5270:	a0801c27 	sb	zero,7207(a0)
    5274:	806e0033 	lb	t6,51(v1)
    5278:	a47813f0 	sh	t8,5104(v1)
    527c:	24020001 	li	v0,1
    5280:	01c57823 	subu	t7,t6,a1
    5284:	10000051 	b	53cc <func_80087708+0x2a4>
    5288:	a46f13f8 	sh	t7,5112(v1)
    528c:	3c070000 	lui	a3,0x0
    5290:	3c190000 	lui	t9,0x0
    5294:	24e70000 	addiu	a3,a3,0
    5298:	27390000 	addiu	t9,t9,0
    529c:	3c050000 	lui	a1,0x0
    52a0:	24a50000 	addiu	a1,a1,0
    52a4:	afb90014 	sw	t9,20(sp)
    52a8:	afa70010 	sw	a3,16(sp)
    52ac:	24044806 	li	a0,18438
    52b0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    52b4:	24060004 	li	a2,4
    52b8:	10000044 	b	53cc <func_80087708+0x2a4>
    52bc:	00001025 	move	v0,zero
    52c0:	846213f0 	lh	v0,5104(v1)
    52c4:	24010007 	li	at,7
    52c8:	1440000d 	bnez	v0,5300 <func_80087708+0x1d8>
    52cc:	00000000 	nop
    52d0:	80680033 	lb	t0,51(v1)
    52d4:	3c010001 	lui	at,0x1
    52d8:	00240821 	addu	at,at,a0
    52dc:	11000006 	beqz	t0,52f8 <func_80087708+0x1d0>
    52e0:	24090050 	li	t1,80
    52e4:	a4290720 	sh	t1,1824(at)
    52e8:	240a0007 	li	t2,7
    52ec:	a46a13f0 	sh	t2,5104(v1)
    52f0:	10000036 	b	53cc <func_80087708+0x2a4>
    52f4:	24020001 	li	v0,1
    52f8:	10000034 	b	53cc <func_80087708+0x2a4>
    52fc:	00001025 	move	v0,zero
    5300:	14410003 	bne	v0,at,5310 <func_80087708+0x1e8>
    5304:	00000000 	nop
    5308:	10000030 	b	53cc <func_80087708+0x2a4>
    530c:	24020001 	li	v0,1
    5310:	1000002e 	b	53cc <func_80087708+0x2a4>
    5314:	00001025 	move	v0,zero
    5318:	846213f0 	lh	v0,5104(v1)
    531c:	24010007 	li	at,7
    5320:	240d0004 	li	t5,4
    5324:	50400003 	beqzl	v0,5334 <func_80087708+0x20c>
    5328:	24010007 	li	at,7
    532c:	1441000a 	bne	v0,at,5358 <func_80087708+0x230>
    5330:	24010007 	li	at,7
    5334:	54410003 	bnel	v0,at,5344 <func_80087708+0x21c>
    5338:	806b0033 	lb	t3,51(v1)
    533c:	a0801c27 	sb	zero,7207(a0)
    5340:	806b0033 	lb	t3,51(v1)
    5344:	a46d13f0 	sh	t5,5104(v1)
    5348:	24020001 	li	v0,1
    534c:	01656023 	subu	t4,t3,a1
    5350:	1000001e 	b	53cc <func_80087708+0x2a4>
    5354:	a46c13f8 	sh	t4,5112(v1)
    5358:	3c070000 	lui	a3,0x0
    535c:	3c0e0000 	lui	t6,0x0
    5360:	24e70000 	addiu	a3,a3,0
    5364:	25ce0000 	addiu	t6,t6,0
    5368:	3c050000 	lui	a1,0x0
    536c:	24a50000 	addiu	a1,a1,0
    5370:	afae0014 	sw	t6,20(sp)
    5374:	afa70010 	sw	a3,16(sp)
    5378:	24044806 	li	a0,18438
    537c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    5380:	24060004 	li	a2,4
    5384:	10000011 	b	53cc <func_80087708+0x2a4>
    5388:	00001025 	move	v0,zero
    538c:	846213f4 	lh	v0,5108(v1)
    5390:	80640033 	lb	a0,51(v1)
    5394:	2419000a 	li	t9,10
    5398:	0044082a 	slt	at,v0,a0
    539c:	1420000a 	bnez	at,53c8 <func_80087708+0x2a0>
    53a0:	00857821 	addu	t7,a0,a1
    53a4:	a46f13f8 	sh	t7,5112(v1)
    53a8:	847813f8 	lh	t8,5112(v1)
    53ac:	0302082a 	slt	at,t8,v0
    53b0:	54200003 	bnezl	at,53c0 <func_80087708+0x298>
    53b4:	a47913f0 	sh	t9,5104(v1)
    53b8:	a46213f8 	sh	v0,5112(v1)
    53bc:	a47913f0 	sh	t9,5104(v1)
    53c0:	10000002 	b	53cc <func_80087708+0x2a4>
    53c4:	24020001 	li	v0,1
    53c8:	00001025 	move	v0,zero
    53cc:	8fbf001c 	lw	ra,28(sp)
    53d0:	27bd0020 	addiu	sp,sp,32
    53d4:	03e00008 	jr	ra
    53d8:	00000000 	nop

000053dc <Interface_UpdateMagicBar>:
    53dc:	3c030000 	lui	v1,0x0
    53e0:	24630000 	addiu	v1,v1,0
    53e4:	846e13f0 	lh	t6,5104(v1)
    53e8:	27bdffe0 	addiu	sp,sp,-32
    53ec:	afbf001c 	sw	ra,28(sp)
    53f0:	25cfffff 	addiu	t7,t6,-1
    53f4:	2de1000a 	sltiu	at,t7,10
    53f8:	10200225 	beqz	at,5c90 <Interface_UpdateMagicBar+0x8b4>
    53fc:	000f7880 	sll	t7,t7,0x2
    5400:	3c010000 	lui	at,0x0
    5404:	002f0821 	addu	at,at,t7
    5408:	8c2f0900 	lw	t7,2304(at)
    540c:	01e00008 	jr	t7
    5410:	00000000 	nop
    5414:	80620032 	lb	v0,50(v1)
    5418:	846413f4 	lh	a0,5108(v1)
    541c:	24180009 	li	t8,9
    5420:	00400821 	move	at,v0
    5424:	00021080 	sll	v0,v0,0x2
    5428:	00411023 	subu	v0,v0,at
    542c:	00021100 	sll	v0,v0,0x4
    5430:	00021400 	sll	v0,v0,0x10
    5434:	00021403 	sra	v0,v0,0x10
    5438:	10440012 	beq	v0,a0,5484 <Interface_UpdateMagicBar+0xa8>
    543c:	0082082a 	slt	at,a0,v0
    5440:	10200009 	beqz	at,5468 <Interface_UpdateMagicBar+0x8c>
    5444:	248efff8 	addiu	t6,a0,-8
    5448:	24980008 	addiu	t8,a0,8
    544c:	a47813f4 	sh	t8,5108(v1)
    5450:	847913f4 	lh	t9,5108(v1)
    5454:	0059082a 	slt	at,v0,t9
    5458:	5020020f 	beqzl	at,5c98 <Interface_UpdateMagicBar+0x8bc>
    545c:	8fbf001c 	lw	ra,28(sp)
    5460:	1000020c 	b	5c94 <Interface_UpdateMagicBar+0x8b8>
    5464:	a46213f4 	sh	v0,5108(v1)
    5468:	a46e13f4 	sh	t6,5108(v1)
    546c:	846f13f4 	lh	t7,5108(v1)
    5470:	004f082a 	slt	at,v0,t7
    5474:	54200208 	bnezl	at,5c98 <Interface_UpdateMagicBar+0x8bc>
    5478:	8fbf001c 	lw	ra,28(sp)
    547c:	10000205 	b	5c94 <Interface_UpdateMagicBar+0x8b8>
    5480:	a46213f4 	sh	v0,5108(v1)
    5484:	10000203 	b	5c94 <Interface_UpdateMagicBar+0x8b8>
    5488:	a47813f0 	sh	t8,5104(v1)
    548c:	80790033 	lb	t9,51(v1)
    5490:	8c6f135c 	lw	t7,4956(v1)
    5494:	272e0004 	addiu	t6,t9,4
    5498:	15e00011 	bnez	t7,54e0 <Interface_UpdateMagicBar+0x104>
    549c:	a06e0033 	sb	t6,51(v1)
    54a0:	8c781360 	lw	t8,4960(v1)
    54a4:	3c070000 	lui	a3,0x0
    54a8:	24e70000 	addiu	a3,a3,0
    54ac:	2b010004 	slti	at,t8,4
    54b0:	1020000b 	beqz	at,54e0 <Interface_UpdateMagicBar+0x104>
    54b4:	2404401f 	li	a0,16415
    54b8:	3c190000 	lui	t9,0x0
    54bc:	27390000 	addiu	t9,t9,0
    54c0:	3c050000 	lui	a1,0x0
    54c4:	24a50000 	addiu	a1,a1,0
    54c8:	afb90014 	sw	t9,20(sp)
    54cc:	24060004 	li	a2,4
    54d0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    54d4:	afa70010 	sw	a3,16(sp)
    54d8:	3c030000 	lui	v1,0x0
    54dc:	24630000 	addiu	v1,v1,0
    54e0:	3c040000 	lui	a0,0x0
    54e4:	2484057c 	addiu	a0,a0,1404
    54e8:	80650033 	lb	a1,51(v1)
    54ec:	0c000000 	jal	0 <Interface_ChangeAlpha>
    54f0:	846613f6 	lh	a2,5110(v1)
    54f4:	3c030000 	lui	v1,0x0
    54f8:	24630000 	addiu	v1,v1,0
    54fc:	846213f6 	lh	v0,5110(v1)
    5500:	806e0033 	lb	t6,51(v1)
    5504:	01c2082a 	slt	at,t6,v0
    5508:	542001e3 	bnezl	at,5c98 <Interface_UpdateMagicBar+0x8bc>
    550c:	8fbf001c 	lw	ra,28(sp)
    5510:	846f13f2 	lh	t7,5106(v1)
    5514:	a0620033 	sb	v0,51(v1)
    5518:	a46013f2 	sh	zero,5106(v1)
    551c:	100001dd 	b	5c94 <Interface_UpdateMagicBar+0x8b8>
    5520:	a46f13f0 	sh	t7,5104(v1)
    5524:	24180002 	li	t8,2
    5528:	24090002 	li	t1,2
    552c:	a47813f0 	sh	t8,5104(v1)
    5530:	3c010000 	lui	at,0x0
    5534:	100001d7 	b	5c94 <Interface_UpdateMagicBar+0x8b8>
    5538:	a4290260 	sh	t1,608(at)
    553c:	80790033 	lb	t9,51(v1)
    5540:	240f0003 	li	t7,3
    5544:	241800ff 	li	t8,255
    5548:	272efffe 	addiu	t6,t9,-2
    554c:	a06e0033 	sb	t6,51(v1)
    5550:	80620033 	lb	v0,51(v1)
    5554:	241900ff 	li	t9,255
    5558:	5c40000c 	bgtzl	v0,558c <Interface_UpdateMagicBar+0x1b0>
    555c:	846f13f8 	lh	t7,5112(v1)
    5560:	a0600033 	sb	zero,51(v1)
    5564:	a46f13f0 	sh	t7,5104(v1)
    5568:	3c010000 	lui	at,0x0
    556c:	a4380000 	sh	t8,0(at)
    5570:	3c010000 	lui	at,0x0
    5574:	a4390000 	sh	t9,0(at)
    5578:	3c010000 	lui	at,0x0
    557c:	240e00ff 	li	t6,255
    5580:	1000000f 	b	55c0 <Interface_UpdateMagicBar+0x1e4>
    5584:	a42e0000 	sh	t6,0(at)
    5588:	846f13f8 	lh	t7,5112(v1)
    558c:	24180003 	li	t8,3
    5590:	241900ff 	li	t9,255
    5594:	15e2000a 	bne	t7,v0,55c0 <Interface_UpdateMagicBar+0x1e4>
    5598:	00000000 	nop
    559c:	a47813f0 	sh	t8,5104(v1)
    55a0:	3c010000 	lui	at,0x0
    55a4:	a4390000 	sh	t9,0(at)
    55a8:	3c010000 	lui	at,0x0
    55ac:	240e00ff 	li	t6,255
    55b0:	a42e0000 	sh	t6,0(at)
    55b4:	3c010000 	lui	at,0x0
    55b8:	240f00ff 	li	t7,255
    55bc:	a42f0000 	sh	t7,0(at)
    55c0:	3c1f0000 	lui	ra,0x0
    55c4:	87ff0264 	lh	ra,612(ra)
    55c8:	3c020000 	lui	v0,0x0
    55cc:	3c190000 	lui	t9,0x0
    55d0:	001ff840 	sll	ra,ra,0x1
    55d4:	005f1021 	addu	v0,v0,ra
    55d8:	84420258 	lh	v0,600(v0)
    55dc:	27390240 	addiu	t9,t9,576
    55e0:	3c060000 	lui	a2,0x0
    55e4:	0002c080 	sll	t8,v0,0x2
    55e8:	0302c023 	subu	t8,t8,v0
    55ec:	0018c040 	sll	t8,t8,0x1
    55f0:	03192821 	addu	a1,t8,t9
    55f4:	84ad0000 	lh	t5,0(a1)
    55f8:	84c60000 	lh	a2,0(a2)
    55fc:	3c080000 	lui	t0,0x0
    5600:	3c070000 	lui	a3,0x0
    5604:	00cd1823 	subu	v1,a2,t5
    5608:	84e70000 	lh	a3,0(a3)
    560c:	04600003 	bltz	v1,561c <Interface_UpdateMagicBar+0x240>
    5610:	85080000 	lh	t0,0(t0)
    5614:	10000002 	b	5620 <Interface_UpdateMagicBar+0x244>
    5618:	00602025 	move	a0,v1
    561c:	00032023 	negu	a0,v1
    5620:	3c090000 	lui	t1,0x0
    5624:	85290260 	lh	t1,608(t1)
    5628:	84ac0002 	lh	t4,2(a1)
    562c:	0089001a 	div	zero,a0,t1
    5630:	00001812 	mflo	v1
    5634:	00031c00 	sll	v1,v1,0x10
    5638:	15200002 	bnez	t1,5644 <Interface_UpdateMagicBar+0x268>
    563c:	00000000 	nop
    5640:	0007000d 	break	0x7
    5644:	2401ffff 	li	at,-1
    5648:	15210004 	bne	t1,at,565c <Interface_UpdateMagicBar+0x280>
    564c:	3c018000 	lui	at,0x8000
    5650:	14810002 	bne	a0,at,565c <Interface_UpdateMagicBar+0x280>
    5654:	00000000 	nop
    5658:	0006000d 	break	0x6
    565c:	00ec1023 	subu	v0,a3,t4
    5660:	04400003 	bltz	v0,5670 <Interface_UpdateMagicBar+0x294>
    5664:	00031c03 	sra	v1,v1,0x10
    5668:	10000002 	b	5674 <Interface_UpdateMagicBar+0x298>
    566c:	00402025 	move	a0,v0
    5670:	00022023 	negu	a0,v0
    5674:	0089001a 	div	zero,a0,t1
    5678:	84ab0004 	lh	t3,4(a1)
    567c:	00005012 	mflo	t2
    5680:	000a5400 	sll	t2,t2,0x10
    5684:	15200002 	bnez	t1,5690 <Interface_UpdateMagicBar+0x2b4>
    5688:	00000000 	nop
    568c:	0007000d 	break	0x7
    5690:	2401ffff 	li	at,-1
    5694:	15210004 	bne	t1,at,56a8 <Interface_UpdateMagicBar+0x2cc>
    5698:	3c018000 	lui	at,0x8000
    569c:	14810002 	bne	a0,at,56a8 <Interface_UpdateMagicBar+0x2cc>
    56a0:	00000000 	nop
    56a4:	0006000d 	break	0x6
    56a8:	010b1023 	subu	v0,t0,t3
    56ac:	04400003 	bltz	v0,56bc <Interface_UpdateMagicBar+0x2e0>
    56b0:	000a5403 	sra	t2,t2,0x10
    56b4:	10000002 	b	56c0 <Interface_UpdateMagicBar+0x2e4>
    56b8:	00402025 	move	a0,v0
    56bc:	00022023 	negu	a0,v0
    56c0:	00cd082a 	slt	at,a2,t5
    56c4:	54200006 	bnezl	at,56e0 <Interface_UpdateMagicBar+0x304>
    56c8:	00c37821 	addu	t7,a2,v1
    56cc:	00c37023 	subu	t6,a2,v1
    56d0:	3c010000 	lui	at,0x0
    56d4:	10000004 	b	56e8 <Interface_UpdateMagicBar+0x30c>
    56d8:	a42e0000 	sh	t6,0(at)
    56dc:	00c37821 	addu	t7,a2,v1
    56e0:	3c010000 	lui	at,0x0
    56e4:	a42f0000 	sh	t7,0(at)
    56e8:	00ec082a 	slt	at,a3,t4
    56ec:	54200006 	bnezl	at,5708 <Interface_UpdateMagicBar+0x32c>
    56f0:	00eac821 	addu	t9,a3,t2
    56f4:	00eac023 	subu	t8,a3,t2
    56f8:	3c010000 	lui	at,0x0
    56fc:	10000004 	b	5710 <Interface_UpdateMagicBar+0x334>
    5700:	a4380000 	sh	t8,0(at)
    5704:	00eac821 	addu	t9,a3,t2
    5708:	3c010000 	lui	at,0x0
    570c:	a4390000 	sh	t9,0(at)
    5710:	010b082a 	slt	at,t0,t3
    5714:	14200012 	bnez	at,5760 <Interface_UpdateMagicBar+0x384>
    5718:	00000000 	nop
    571c:	0089001a 	div	zero,a0,t1
    5720:	15200002 	bnez	t1,572c <Interface_UpdateMagicBar+0x350>
    5724:	00000000 	nop
    5728:	0007000d 	break	0x7
    572c:	2401ffff 	li	at,-1
    5730:	15210004 	bne	t1,at,5744 <Interface_UpdateMagicBar+0x368>
    5734:	3c018000 	lui	at,0x8000
    5738:	14810002 	bne	a0,at,5744 <Interface_UpdateMagicBar+0x368>
    573c:	00000000 	nop
    5740:	0006000d 	break	0x6
    5744:	00007012 	mflo	t6
    5748:	000e7c00 	sll	t7,t6,0x10
    574c:	000fc403 	sra	t8,t7,0x10
    5750:	0118c823 	subu	t9,t0,t8
    5754:	3c010000 	lui	at,0x0
    5758:	10000011 	b	57a0 <Interface_UpdateMagicBar+0x3c4>
    575c:	a4390000 	sh	t9,0(at)
    5760:	0089001a 	div	zero,a0,t1
    5764:	15200002 	bnez	t1,5770 <Interface_UpdateMagicBar+0x394>
    5768:	00000000 	nop
    576c:	0007000d 	break	0x7
    5770:	2401ffff 	li	at,-1
    5774:	15210004 	bne	t1,at,5788 <Interface_UpdateMagicBar+0x3ac>
    5778:	3c018000 	lui	at,0x8000
    577c:	14810002 	bne	a0,at,5788 <Interface_UpdateMagicBar+0x3ac>
    5780:	00000000 	nop
    5784:	0006000d 	break	0x6
    5788:	00007012 	mflo	t6
    578c:	000e7c00 	sll	t7,t6,0x10
    5790:	000fc403 	sra	t8,t7,0x10
    5794:	0118c821 	addu	t9,t0,t8
    5798:	3c010000 	lui	at,0x0
    579c:	a4390000 	sh	t9,0(at)
    57a0:	2529ffff 	addiu	t1,t1,-1
    57a4:	00094c00 	sll	t1,t1,0x10
    57a8:	00094c03 	sra	t1,t1,0x10
    57ac:	3c010000 	lui	at,0x0
    57b0:	15200138 	bnez	t1,5c94 <Interface_UpdateMagicBar+0x8b8>
    57b4:	a4290260 	sh	t1,608(at)
    57b8:	3c010000 	lui	at,0x0
    57bc:	a42d0000 	sh	t5,0(at)
    57c0:	3c0e0000 	lui	t6,0x0
    57c4:	8dce0000 	lw	t6,0(t6)
    57c8:	3c010000 	lui	at,0x0
    57cc:	a42c0000 	sh	t4,0(at)
    57d0:	3c180000 	lui	t8,0x0
    57d4:	87180264 	lh	t8,612(t8)
    57d8:	3c010000 	lui	at,0x0
    57dc:	a42b0000 	sh	t3,0(at)
    57e0:	01df7821 	addu	t7,t6,ra
    57e4:	85e904e4 	lh	t1,1252(t7)
    57e8:	3c010000 	lui	at,0x0
    57ec:	27190001 	addiu	t9,t8,1
    57f0:	a4390264 	sh	t9,612(at)
    57f4:	3c010000 	lui	at,0x0
    57f8:	00197400 	sll	t6,t9,0x10
    57fc:	000e7c03 	sra	t7,t6,0x10
    5800:	a4290260 	sh	t1,608(at)
    5804:	29e10004 	slti	at,t7,4
    5808:	14200122 	bnez	at,5c94 <Interface_UpdateMagicBar+0x8b8>
    580c:	3c010000 	lui	at,0x0
    5810:	10000120 	b	5c94 <Interface_UpdateMagicBar+0x8b8>
    5814:	a4200264 	sh	zero,612(at)
    5818:	241800ff 	li	t8,255
    581c:	3c010000 	lui	at,0x0
    5820:	a4380000 	sh	t8,0(at)
    5824:	3c010000 	lui	at,0x0
    5828:	241900ff 	li	t9,255
    582c:	a4390000 	sh	t9,0(at)
    5830:	3c010000 	lui	at,0x0
    5834:	240e00ff 	li	t6,255
    5838:	a42e0000 	sh	t6,0(at)
    583c:	10000115 	b	5c94 <Interface_UpdateMagicBar+0x8b8>
    5840:	a46013f0 	sh	zero,5104(v1)
    5844:	3c010001 	lui	at,0x1
    5848:	00811021 	addu	v0,a0,at
    584c:	944f0934 	lhu	t7,2356(v0)
    5850:	15e0005f 	bnez	t7,59d0 <Interface_UpdateMagicBar+0x5f4>
    5854:	00000000 	nop
    5858:	94580936 	lhu	t8,2358(v0)
    585c:	1700005c 	bnez	t8,59d0 <Interface_UpdateMagicBar+0x5f4>
    5860:	00000000 	nop
    5864:	3c190001 	lui	t9,0x1
    5868:	0324c821 	addu	t9,t9,a0
    586c:	933903dc 	lbu	t9,988(t9)
    5870:	17200057 	bnez	t9,59d0 <Interface_UpdateMagicBar+0x5f4>
    5874:	00000000 	nop
    5878:	944e0a20 	lhu	t6,2592(v0)
    587c:	15c00054 	bnez	t6,59d0 <Interface_UpdateMagicBar+0x5f4>
    5880:	00000000 	nop
    5884:	804f1e15 	lb	t7,7701(v0)
    5888:	15e00051 	bnez	t7,59d0 <Interface_UpdateMagicBar+0x5f4>
    588c:	00000000 	nop
    5890:	9058241b 	lbu	t8,9243(v0)
    5894:	1700004e 	bnez	t8,59d0 <Interface_UpdateMagicBar+0x5f4>
    5898:	00000000 	nop
    589c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    58a0:	afa40020 	sw	a0,32(sp)
    58a4:	3c030000 	lui	v1,0x0
    58a8:	14400049 	bnez	v0,59d0 <Interface_UpdateMagicBar+0x5f4>
    58ac:	24630000 	addiu	v1,v1,0
    58b0:	80790033 	lb	t9,51(v1)
    58b4:	5320001c 	beqzl	t9,5928 <Interface_UpdateMagicBar+0x54c>
    58b8:	8faf0020 	lw	t7,32(sp)
    58bc:	0c000000 	jal	0 <Interface_ChangeAlpha>
    58c0:	8fa40020 	lw	a0,32(sp)
    58c4:	3c030000 	lui	v1,0x0
    58c8:	28410002 	slti	at,v0,2
    58cc:	14200007 	bnez	at,58ec <Interface_UpdateMagicBar+0x510>
    58d0:	24630000 	addiu	v1,v1,0
    58d4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    58d8:	8fa40020 	lw	a0,32(sp)
    58dc:	3c030000 	lui	v1,0x0
    58e0:	28410005 	slti	at,v0,5
    58e4:	1420000f 	bnez	at,5924 <Interface_UpdateMagicBar+0x548>
    58e8:	24630000 	addiu	v1,v1,0
    58ec:	906e0069 	lbu	t6,105(v1)
    58f0:	2402000f 	li	v0,15
    58f4:	8fb90020 	lw	t9,32(sp)
    58f8:	504e0008 	beql	v0,t6,591c <Interface_UpdateMagicBar+0x540>
    58fc:	932e1c27 	lbu	t6,7207(t9)
    5900:	906f006a 	lbu	t7,106(v1)
    5904:	504f0005 	beql	v0,t7,591c <Interface_UpdateMagicBar+0x540>
    5908:	932e1c27 	lbu	t6,7207(t9)
    590c:	9078006b 	lbu	t8,107(v1)
    5910:	54580005 	bnel	v0,t8,5928 <Interface_UpdateMagicBar+0x54c>
    5914:	8faf0020 	lw	t7,32(sp)
    5918:	932e1c27 	lbu	t6,7207(t9)
    591c:	55c0001e 	bnezl	t6,5998 <Interface_UpdateMagicBar+0x5bc>
    5920:	8fa20020 	lw	v0,32(sp)
    5924:	8faf0020 	lw	t7,32(sp)
    5928:	3c070000 	lui	a3,0x0
    592c:	3c180000 	lui	t8,0x0
    5930:	24e70000 	addiu	a3,a3,0
    5934:	27180000 	addiu	t8,t8,0
    5938:	3c050000 	lui	a1,0x0
    593c:	a1e01c27 	sb	zero,7207(t7)
    5940:	afb80014 	sw	t8,20(sp)
    5944:	afa70010 	sw	a3,16(sp)
    5948:	24a50000 	addiu	a1,a1,0
    594c:	2404482b 	li	a0,18475
    5950:	0c000000 	jal	0 <Interface_ChangeAlpha>
    5954:	24060004 	li	a2,4
    5958:	3c040000 	lui	a0,0x0
    595c:	24840000 	addiu	a0,a0,0
    5960:	241900ff 	li	t9,255
    5964:	a4990000 	sh	t9,0(a0)
    5968:	848e0000 	lh	t6,0(a0)
    596c:	3c020000 	lui	v0,0x0
    5970:	24420000 	addiu	v0,v0,0
    5974:	3c030000 	lui	v1,0x0
    5978:	a44e0000 	sh	t6,0(v0)
    597c:	844f0000 	lh	t7,0(v0)
    5980:	24630000 	addiu	v1,v1,0
    5984:	a46013f0 	sh	zero,5104(v1)
    5988:	3c010000 	lui	at,0x0
    598c:	100000c1 	b	5c94 <Interface_UpdateMagicBar+0x8b8>
    5990:	a42f0000 	sh	t7,0(at)
    5994:	8fa20020 	lw	v0,32(sp)
    5998:	3c010001 	lui	at,0x1
    599c:	342104f0 	ori	at,at,0x4f0
    59a0:	00411021 	addu	v0,v0,at
    59a4:	84580230 	lh	t8,560(v0)
    59a8:	2719ffff 	addiu	t9,t8,-1
    59ac:	a4590230 	sh	t9,560(v0)
    59b0:	844e0230 	lh	t6,560(v0)
    59b4:	15c00006 	bnez	t6,59d0 <Interface_UpdateMagicBar+0x5f4>
    59b8:	00000000 	nop
    59bc:	806f0033 	lb	t7,51(v1)
    59c0:	24190050 	li	t9,80
    59c4:	25f8ffff 	addiu	t8,t7,-1
    59c8:	a0780033 	sb	t8,51(v1)
    59cc:	a4590230 	sh	t9,560(v0)
    59d0:	3c1f0000 	lui	ra,0x0
    59d4:	87ff0264 	lh	ra,612(ra)
    59d8:	3c020000 	lui	v0,0x0
    59dc:	3c0f0000 	lui	t7,0x0
    59e0:	001ff840 	sll	ra,ra,0x1
    59e4:	005f1021 	addu	v0,v0,ra
    59e8:	84420258 	lh	v0,600(v0)
    59ec:	25ef0240 	addiu	t7,t7,576
    59f0:	3c060000 	lui	a2,0x0
    59f4:	00027080 	sll	t6,v0,0x2
    59f8:	01c27023 	subu	t6,t6,v0
    59fc:	000e7040 	sll	t6,t6,0x1
    5a00:	01cf2821 	addu	a1,t6,t7
    5a04:	84ad0000 	lh	t5,0(a1)
    5a08:	84c60000 	lh	a2,0(a2)
    5a0c:	3c090000 	lui	t1,0x0
    5a10:	3c070000 	lui	a3,0x0
    5a14:	00cd1823 	subu	v1,a2,t5
    5a18:	04600003 	bltz	v1,5a28 <Interface_UpdateMagicBar+0x64c>
    5a1c:	3c080000 	lui	t0,0x0
    5a20:	10000002 	b	5a2c <Interface_UpdateMagicBar+0x650>
    5a24:	00602025 	move	a0,v1
    5a28:	00032023 	negu	a0,v1
    5a2c:	85290260 	lh	t1,608(t1)
    5a30:	84e70000 	lh	a3,0(a3)
    5a34:	84ac0002 	lh	t4,2(a1)
    5a38:	0089001a 	div	zero,a0,t1
    5a3c:	00001812 	mflo	v1
    5a40:	00031c00 	sll	v1,v1,0x10
    5a44:	15200002 	bnez	t1,5a50 <Interface_UpdateMagicBar+0x674>
    5a48:	00000000 	nop
    5a4c:	0007000d 	break	0x7
    5a50:	2401ffff 	li	at,-1
    5a54:	15210004 	bne	t1,at,5a68 <Interface_UpdateMagicBar+0x68c>
    5a58:	3c018000 	lui	at,0x8000
    5a5c:	14810002 	bne	a0,at,5a68 <Interface_UpdateMagicBar+0x68c>
    5a60:	00000000 	nop
    5a64:	0006000d 	break	0x6
    5a68:	00ec1023 	subu	v0,a3,t4
    5a6c:	04400003 	bltz	v0,5a7c <Interface_UpdateMagicBar+0x6a0>
    5a70:	00031c03 	sra	v1,v1,0x10
    5a74:	10000002 	b	5a80 <Interface_UpdateMagicBar+0x6a4>
    5a78:	00402025 	move	a0,v0
    5a7c:	00022023 	negu	a0,v0
    5a80:	0089001a 	div	zero,a0,t1
    5a84:	85080000 	lh	t0,0(t0)
    5a88:	84ab0004 	lh	t3,4(a1)
    5a8c:	00005012 	mflo	t2
    5a90:	000a5400 	sll	t2,t2,0x10
    5a94:	15200002 	bnez	t1,5aa0 <Interface_UpdateMagicBar+0x6c4>
    5a98:	00000000 	nop
    5a9c:	0007000d 	break	0x7
    5aa0:	2401ffff 	li	at,-1
    5aa4:	15210004 	bne	t1,at,5ab8 <Interface_UpdateMagicBar+0x6dc>
    5aa8:	3c018000 	lui	at,0x8000
    5aac:	14810002 	bne	a0,at,5ab8 <Interface_UpdateMagicBar+0x6dc>
    5ab0:	00000000 	nop
    5ab4:	0006000d 	break	0x6
    5ab8:	010b1023 	subu	v0,t0,t3
    5abc:	04400003 	bltz	v0,5acc <Interface_UpdateMagicBar+0x6f0>
    5ac0:	000a5403 	sra	t2,t2,0x10
    5ac4:	10000002 	b	5ad0 <Interface_UpdateMagicBar+0x6f4>
    5ac8:	00402025 	move	a0,v0
    5acc:	00022023 	negu	a0,v0
    5ad0:	00cd082a 	slt	at,a2,t5
    5ad4:	54200006 	bnezl	at,5af0 <Interface_UpdateMagicBar+0x714>
    5ad8:	00c3c821 	addu	t9,a2,v1
    5adc:	00c3c023 	subu	t8,a2,v1
    5ae0:	3c010000 	lui	at,0x0
    5ae4:	10000004 	b	5af8 <Interface_UpdateMagicBar+0x71c>
    5ae8:	a4380000 	sh	t8,0(at)
    5aec:	00c3c821 	addu	t9,a2,v1
    5af0:	3c010000 	lui	at,0x0
    5af4:	a4390000 	sh	t9,0(at)
    5af8:	00ec082a 	slt	at,a3,t4
    5afc:	54200006 	bnezl	at,5b18 <Interface_UpdateMagicBar+0x73c>
    5b00:	00ea7821 	addu	t7,a3,t2
    5b04:	00ea7023 	subu	t6,a3,t2
    5b08:	3c010000 	lui	at,0x0
    5b0c:	10000004 	b	5b20 <Interface_UpdateMagicBar+0x744>
    5b10:	a42e0000 	sh	t6,0(at)
    5b14:	00ea7821 	addu	t7,a3,t2
    5b18:	3c010000 	lui	at,0x0
    5b1c:	a42f0000 	sh	t7,0(at)
    5b20:	010b082a 	slt	at,t0,t3
    5b24:	14200012 	bnez	at,5b70 <Interface_UpdateMagicBar+0x794>
    5b28:	00000000 	nop
    5b2c:	0089001a 	div	zero,a0,t1
    5b30:	15200002 	bnez	t1,5b3c <Interface_UpdateMagicBar+0x760>
    5b34:	00000000 	nop
    5b38:	0007000d 	break	0x7
    5b3c:	2401ffff 	li	at,-1
    5b40:	15210004 	bne	t1,at,5b54 <Interface_UpdateMagicBar+0x778>
    5b44:	3c018000 	lui	at,0x8000
    5b48:	14810002 	bne	a0,at,5b54 <Interface_UpdateMagicBar+0x778>
    5b4c:	00000000 	nop
    5b50:	0006000d 	break	0x6
    5b54:	0000c012 	mflo	t8
    5b58:	0018cc00 	sll	t9,t8,0x10
    5b5c:	00197403 	sra	t6,t9,0x10
    5b60:	010e7823 	subu	t7,t0,t6
    5b64:	3c010000 	lui	at,0x0
    5b68:	10000011 	b	5bb0 <Interface_UpdateMagicBar+0x7d4>
    5b6c:	a42f0000 	sh	t7,0(at)
    5b70:	0089001a 	div	zero,a0,t1
    5b74:	15200002 	bnez	t1,5b80 <Interface_UpdateMagicBar+0x7a4>
    5b78:	00000000 	nop
    5b7c:	0007000d 	break	0x7
    5b80:	2401ffff 	li	at,-1
    5b84:	15210004 	bne	t1,at,5b98 <Interface_UpdateMagicBar+0x7bc>
    5b88:	3c018000 	lui	at,0x8000
    5b8c:	14810002 	bne	a0,at,5b98 <Interface_UpdateMagicBar+0x7bc>
    5b90:	00000000 	nop
    5b94:	0006000d 	break	0x6
    5b98:	0000c012 	mflo	t8
    5b9c:	0018cc00 	sll	t9,t8,0x10
    5ba0:	00197403 	sra	t6,t9,0x10
    5ba4:	010e7821 	addu	t7,t0,t6
    5ba8:	3c010000 	lui	at,0x0
    5bac:	a42f0000 	sh	t7,0(at)
    5bb0:	2529ffff 	addiu	t1,t1,-1
    5bb4:	00094c00 	sll	t1,t1,0x10
    5bb8:	00094c03 	sra	t1,t1,0x10
    5bbc:	3c010000 	lui	at,0x0
    5bc0:	15200034 	bnez	t1,5c94 <Interface_UpdateMagicBar+0x8b8>
    5bc4:	a4290260 	sh	t1,608(at)
    5bc8:	3c010000 	lui	at,0x0
    5bcc:	a42d0000 	sh	t5,0(at)
    5bd0:	3c180000 	lui	t8,0x0
    5bd4:	8f180000 	lw	t8,0(t8)
    5bd8:	3c010000 	lui	at,0x0
    5bdc:	a42c0000 	sh	t4,0(at)
    5be0:	3c0e0000 	lui	t6,0x0
    5be4:	85ce0264 	lh	t6,612(t6)
    5be8:	3c010000 	lui	at,0x0
    5bec:	a42b0000 	sh	t3,0(at)
    5bf0:	031fc821 	addu	t9,t8,ra
    5bf4:	872904e4 	lh	t1,1252(t9)
    5bf8:	3c010000 	lui	at,0x0
    5bfc:	25cf0001 	addiu	t7,t6,1
    5c00:	a42f0264 	sh	t7,612(at)
    5c04:	3c010000 	lui	at,0x0
    5c08:	000fc400 	sll	t8,t7,0x10
    5c0c:	0018cc03 	sra	t9,t8,0x10
    5c10:	a4290260 	sh	t1,608(at)
    5c14:	2b210004 	slti	at,t9,4
    5c18:	1420001e 	bnez	at,5c94 <Interface_UpdateMagicBar+0x8b8>
    5c1c:	3c010000 	lui	at,0x0
    5c20:	1000001c 	b	5c94 <Interface_UpdateMagicBar+0x8b8>
    5c24:	a4200264 	sh	zero,612(at)
    5c28:	806e0033 	lb	t6,51(v1)
    5c2c:	3c070000 	lui	a3,0x0
    5c30:	3c180000 	lui	t8,0x0
    5c34:	24e70000 	addiu	a3,a3,0
    5c38:	27180000 	addiu	t8,t8,0
    5c3c:	3c050000 	lui	a1,0x0
    5c40:	25cf0004 	addiu	t7,t6,4
    5c44:	a06f0033 	sb	t7,51(v1)
    5c48:	24a50000 	addiu	a1,a1,0
    5c4c:	afb80014 	sw	t8,20(sp)
    5c50:	afa70010 	sw	a3,16(sp)
    5c54:	2404401f 	li	a0,16415
    5c58:	0c000000 	jal	0 <Interface_ChangeAlpha>
    5c5c:	24060004 	li	a2,4
    5c60:	3c030000 	lui	v1,0x0
    5c64:	24630000 	addiu	v1,v1,0
    5c68:	846213f8 	lh	v0,5112(v1)
    5c6c:	80790033 	lb	t9,51(v1)
    5c70:	0322082a 	slt	at,t9,v0
    5c74:	54200008 	bnezl	at,5c98 <Interface_UpdateMagicBar+0x8bc>
    5c78:	8fbf001c 	lw	ra,28(sp)
    5c7c:	846e13f2 	lh	t6,5106(v1)
    5c80:	a0620033 	sb	v0,51(v1)
    5c84:	a46013f2 	sh	zero,5106(v1)
    5c88:	10000002 	b	5c94 <Interface_UpdateMagicBar+0x8b8>
    5c8c:	a46e13f0 	sh	t6,5104(v1)
    5c90:	a46013f0 	sh	zero,5104(v1)
    5c94:	8fbf001c 	lw	ra,28(sp)
    5c98:	27bd0020 	addiu	sp,sp,32
    5c9c:	03e00008 	jr	ra
    5ca0:	00000000 	nop

00005ca4 <Interface_DrawMagicBar>:
    5ca4:	27bdfef8 	addiu	sp,sp,-264
    5ca8:	afbf002c 	sw	ra,44(sp)
    5cac:	afa40108 	sw	a0,264(sp)
    5cb0:	8c850000 	lw	a1,0(a0)
    5cb4:	3c060000 	lui	a2,0x0
    5cb8:	24c60598 	addiu	a2,a2,1432
    5cbc:	27a400ec 	addiu	a0,sp,236
    5cc0:	24070a5a 	li	a3,2650
    5cc4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    5cc8:	afa500fc 	sw	a1,252(sp)
    5ccc:	3c0b0000 	lui	t3,0x0
    5cd0:	256b0000 	addiu	t3,t3,0
    5cd4:	816f0032 	lb	t7,50(t3)
    5cd8:	8fa800fc 	lw	t0,252(sp)
    5cdc:	51e001ee 	beqzl	t7,6498 <Interface_DrawMagicBar+0x7f4>
    5ce0:	8faf0108 	lw	t7,264(sp)
    5ce4:	8578002e 	lh	t8,46(t3)
    5ce8:	3c090000 	lui	t1,0x0
    5cec:	25290000 	addiu	t1,t1,0
    5cf0:	2b0100a1 	slti	at,t8,161
    5cf4:	14200006 	bnez	at,5d10 <Interface_DrawMagicBar+0x6c>
    5cf8:	8faf0108 	lw	t7,264(sp)
    5cfc:	3c090000 	lui	t1,0x0
    5d00:	25290000 	addiu	t1,t1,0
    5d04:	8d390000 	lw	t9,0(t1)
    5d08:	10000003 	b	5d18 <Interface_DrawMagicBar+0x74>
    5d0c:	872a0af8 	lh	t2,2808(t9)
    5d10:	8d2e0000 	lw	t6,0(t1)
    5d14:	85ca0af4 	lh	t2,2804(t6)
    5d18:	8de40000 	lw	a0,0(t7)
    5d1c:	a7aa0102 	sh	t2,258(sp)
    5d20:	0c000000 	jal	0 <Interface_ChangeAlpha>
    5d24:	afa800fc 	sw	t0,252(sp)
    5d28:	8fa800fc 	lw	t0,252(sp)
    5d2c:	87aa0102 	lh	t2,258(sp)
    5d30:	3c0dfa00 	lui	t5,0xfa00
    5d34:	8d0202b0 	lw	v0,688(t0)
    5d38:	3c190000 	lui	t9,0x0
    5d3c:	3c010001 	lui	at,0x1
    5d40:	24580008 	addiu	t8,v0,8
    5d44:	ad1802b0 	sw	t8,688(t0)
    5d48:	ac4d0000 	sw	t5,0(v0)
    5d4c:	3c180000 	lui	t8,0x0
    5d50:	87180000 	lh	t8,0(t8)
    5d54:	872e0000 	lh	t6,0(t9)
    5d58:	8fac0108 	lw	t4,264(sp)
    5d5c:	331900ff 	andi	t9,t8,0xff
    5d60:	000e7e00 	sll	t7,t6,0x18
    5d64:	00197400 	sll	t6,t9,0x10
    5d68:	3c190000 	lui	t9,0x0
    5d6c:	87390000 	lh	t9,0(t9)
    5d70:	01eec025 	or	t8,t7,t6
    5d74:	342104f0 	ori	at,at,0x4f0
    5d78:	332f00ff 	andi	t7,t9,0xff
    5d7c:	000f7200 	sll	t6,t7,0x8
    5d80:	01816021 	addu	t4,t4,at
    5d84:	958f0252 	lhu	t7,594(t4)
    5d88:	030ec825 	or	t9,t8,t6
    5d8c:	3c090000 	lui	t1,0x0
    5d90:	31f800ff 	andi	t8,t7,0xff
    5d94:	03387025 	or	t6,t9,t8
    5d98:	ac4e0004 	sw	t6,4(v0)
    5d9c:	8d0202b0 	lw	v0,688(t0)
    5da0:	3c186432 	lui	t8,0x6432
    5da4:	371832ff 	ori	t8,t8,0x32ff
    5da8:	244f0008 	addiu	t7,v0,8
    5dac:	ad0f02b0 	sw	t7,688(t0)
    5db0:	3c19fb00 	lui	t9,0xfb00
    5db4:	25290000 	addiu	t1,t1,0
    5db8:	ac590000 	sw	t9,0(v0)
    5dbc:	ac580004 	sw	t8,4(v0)
    5dc0:	8d2e0000 	lw	t6,0(t1)
    5dc4:	8d0402b0 	lw	a0,688(t0)
    5dc8:	24180010 	li	t8,16
    5dcc:	85cf0af6 	lh	t7,2806(t6)
    5dd0:	240e0400 	li	t6,1024
    5dd4:	24190008 	li	t9,8
    5dd8:	afaf0010 	sw	t7,16(sp)
    5ddc:	240f0400 	li	t7,1024
    5de0:	3c050000 	lui	a1,0x0
    5de4:	24a50000 	addiu	a1,a1,0
    5de8:	afaf0024 	sw	t7,36(sp)
    5dec:	afb90018 	sw	t9,24(sp)
    5df0:	afae0020 	sw	t6,32(sp)
    5df4:	afac0040 	sw	t4,64(sp)
    5df8:	afb8001c 	sw	t8,28(sp)
    5dfc:	24060008 	li	a2,8
    5e00:	24070010 	li	a3,16
    5e04:	afa800fc 	sw	t0,252(sp)
    5e08:	a7aa0102 	sh	t2,258(sp)
    5e0c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    5e10:	afaa0014 	sw	t2,20(sp)
    5e14:	8fa800fc 	lw	t0,252(sp)
    5e18:	87aa0102 	lh	t2,258(sp)
    5e1c:	3c090000 	lui	t1,0x0
    5e20:	25290000 	addiu	t1,t1,0
    5e24:	ad0202b0 	sw	v0,688(t0)
    5e28:	8d390000 	lw	t9,0(t1)
    5e2c:	3c0b0000 	lui	t3,0x0
    5e30:	256b0000 	addiu	t3,t3,0
    5e34:	87380af6 	lh	t8,2806(t9)
    5e38:	856f13f4 	lh	t7,5108(t3)
    5e3c:	24190010 	li	t9,16
    5e40:	270e0008 	addiu	t6,t8,8
    5e44:	afae0010 	sw	t6,16(sp)
    5e48:	240e0400 	li	t6,1024
    5e4c:	24180400 	li	t8,1024
    5e50:	3c050000 	lui	a1,0x0
    5e54:	24a50000 	addiu	a1,a1,0
    5e58:	afb80020 	sw	t8,32(sp)
    5e5c:	afae0024 	sw	t6,36(sp)
    5e60:	afb9001c 	sw	t9,28(sp)
    5e64:	00402025 	move	a0,v0
    5e68:	24060018 	li	a2,24
    5e6c:	24070010 	li	a3,16
    5e70:	afaa0014 	sw	t2,20(sp)
    5e74:	0c000000 	jal	0 <Interface_ChangeAlpha>
    5e78:	afaf0018 	sw	t7,24(sp)
    5e7c:	8fa800fc 	lw	t0,252(sp)
    5e80:	87aa0102 	lh	t2,258(sp)
    5e84:	8fac0040 	lw	t4,64(sp)
    5e88:	244f0008 	addiu	t7,v0,8
    5e8c:	ad0202b0 	sw	v0,688(t0)
    5e90:	3c180000 	lui	t8,0x0
    5e94:	ad0f02b0 	sw	t7,688(t0)
    5e98:	27180000 	addiu	t8,t8,0
    5e9c:	3c19fd70 	lui	t9,0xfd70
    5ea0:	ac590000 	sw	t9,0(v0)
    5ea4:	ac580004 	sw	t8,4(v0)
    5ea8:	8d0202b0 	lw	v0,688(t0)
    5eac:	3c190700 	lui	t9,0x700
    5eb0:	37390130 	ori	t9,t9,0x130
    5eb4:	244e0008 	addiu	t6,v0,8
    5eb8:	ad0e02b0 	sw	t6,688(t0)
    5ebc:	3c0ff570 	lui	t7,0xf570
    5ec0:	ac4f0000 	sw	t7,0(v0)
    5ec4:	ac590004 	sw	t9,4(v0)
    5ec8:	8d0202b0 	lw	v0,688(t0)
    5ecc:	3c05e600 	lui	a1,0xe600
    5ed0:	3c0f0703 	lui	t7,0x703
    5ed4:	24580008 	addiu	t8,v0,8
    5ed8:	ad1802b0 	sw	t8,688(t0)
    5edc:	ac400004 	sw	zero,4(v0)
    5ee0:	ac450000 	sw	a1,0(v0)
    5ee4:	8d0202b0 	lw	v0,688(t0)
    5ee8:	35eff800 	ori	t7,t7,0xf800
    5eec:	3c06f300 	lui	a2,0xf300
    5ef0:	244e0008 	addiu	t6,v0,8
    5ef4:	ad0e02b0 	sw	t6,688(t0)
    5ef8:	ac4f0004 	sw	t7,4(v0)
    5efc:	ac460000 	sw	a2,0(v0)
    5f00:	8d0202b0 	lw	v0,688(t0)
    5f04:	3c07e700 	lui	a3,0xe700
    5f08:	3c0ef568 	lui	t6,0xf568
    5f0c:	24590008 	addiu	t9,v0,8
    5f10:	ad1902b0 	sw	t9,688(t0)
    5f14:	ac400004 	sw	zero,4(v0)
    5f18:	ac470000 	sw	a3,0(v0)
    5f1c:	8d0202b0 	lw	v0,688(t0)
    5f20:	35ce0200 	ori	t6,t6,0x200
    5f24:	240f0130 	li	t7,304
    5f28:	24580008 	addiu	t8,v0,8
    5f2c:	ad1802b0 	sw	t8,688(t0)
    5f30:	ac4f0004 	sw	t7,4(v0)
    5f34:	ac4e0000 	sw	t6,0(v0)
    5f38:	8d0202b0 	lw	v0,688(t0)
    5f3c:	3c0e0001 	lui	t6,0x1
    5f40:	35cec03c 	ori	t6,t6,0xc03c
    5f44:	24590008 	addiu	t9,v0,8
    5f48:	ad1902b0 	sw	t9,688(t0)
    5f4c:	3c18f200 	lui	t8,0xf200
    5f50:	ac580000 	sw	t8,0(v0)
    5f54:	ac4e0004 	sw	t6,4(v0)
    5f58:	8d0202b0 	lw	v0,688(t0)
    5f5c:	3c090000 	lui	t1,0x0
    5f60:	25290000 	addiu	t1,t1,0
    5f64:	244f0008 	addiu	t7,v0,8
    5f68:	ad0f02b0 	sw	t7,688(t0)
    5f6c:	8d390000 	lw	t9,0(t1)
    5f70:	3c0b0000 	lui	t3,0x0
    5f74:	256b0000 	addiu	t3,t3,0
    5f78:	856e13f4 	lh	t6,5108(t3)
    5f7c:	87380af6 	lh	t8,2806(t9)
    5f80:	3c1fe400 	lui	ra,0xe400
    5f84:	24010004 	li	at,4
    5f88:	030e7821 	addu	t7,t8,t6
    5f8c:	25f90010 	addiu	t9,t7,16
    5f90:	0019c080 	sll	t8,t9,0x2
    5f94:	330e0fff 	andi	t6,t8,0xfff
    5f98:	000e7b00 	sll	t7,t6,0xc
    5f9c:	25580010 	addiu	t8,t2,16
    5fa0:	00187080 	sll	t6,t8,0x2
    5fa4:	01ffc825 	or	t9,t7,ra
    5fa8:	31cf0fff 	andi	t7,t6,0xfff
    5fac:	032fc025 	or	t8,t9,t7
    5fb0:	ac580000 	sw	t8,0(v0)
    5fb4:	8d2e0000 	lw	t6,0(t1)
    5fb8:	856f13f4 	lh	t7,5108(t3)
    5fbc:	3c0dfa00 	lui	t5,0xfa00
    5fc0:	85d90af6 	lh	t9,2806(t6)
    5fc4:	032fc021 	addu	t8,t9,t7
    5fc8:	270e0008 	addiu	t6,t8,8
    5fcc:	000ec880 	sll	t9,t6,0x2
    5fd0:	332f0fff 	andi	t7,t9,0xfff
    5fd4:	000a7080 	sll	t6,t2,0x2
    5fd8:	31d90fff 	andi	t9,t6,0xfff
    5fdc:	000fc300 	sll	t8,t7,0xc
    5fe0:	03197825 	or	t7,t8,t9
    5fe4:	ac4f0004 	sw	t7,4(v0)
    5fe8:	8d0202b0 	lw	v0,688(t0)
    5fec:	3c190100 	lui	t9,0x100
    5ff0:	3c18e100 	lui	t8,0xe100
    5ff4:	244e0008 	addiu	t6,v0,8
    5ff8:	ad0e02b0 	sw	t6,688(t0)
    5ffc:	ac590004 	sw	t9,4(v0)
    6000:	ac580000 	sw	t8,0(v0)
    6004:	8d0202b0 	lw	v0,688(t0)
    6008:	3c180400 	lui	t8,0x400
    600c:	37180400 	ori	t8,t8,0x400
    6010:	244f0008 	addiu	t7,v0,8
    6014:	ad0f02b0 	sw	t7,688(t0)
    6018:	3c0ef100 	lui	t6,0xf100
    601c:	ac4e0000 	sw	t6,0(v0)
    6020:	ac580004 	sw	t8,4(v0)
    6024:	8d0202b0 	lw	v0,688(t0)
    6028:	3c1855fe 	lui	t8,0x55fe
    602c:	3c0efc30 	lui	t6,0xfc30
    6030:	24590008 	addiu	t9,v0,8
    6034:	ad1902b0 	sw	t9,688(t0)
    6038:	ac400004 	sw	zero,4(v0)
    603c:	ac470000 	sw	a3,0(v0)
    6040:	8d0202b0 	lw	v0,688(t0)
    6044:	35cefe61 	ori	t6,t6,0xfe61
    6048:	3718f77b 	ori	t8,t8,0xf77b
    604c:	244f0008 	addiu	t7,v0,8
    6050:	ad0f02b0 	sw	t7,688(t0)
    6054:	ac580004 	sw	t8,4(v0)
    6058:	ac4e0000 	sw	t6,0(v0)
    605c:	8d0202b0 	lw	v0,688(t0)
    6060:	240e00ff 	li	t6,255
    6064:	3c0ffb00 	lui	t7,0xfb00
    6068:	24590008 	addiu	t9,v0,8
    606c:	ad1902b0 	sw	t9,688(t0)
    6070:	ac4e0004 	sw	t6,4(v0)
    6074:	ac4f0000 	sw	t7,0(v0)
    6078:	857813f0 	lh	t8,5104(t3)
    607c:	5701009c 	bnel	t8,at,62f0 <Interface_DrawMagicBar+0x64c>
    6080:	8d0202b0 	lw	v0,688(t0)
    6084:	8d0202b0 	lw	v0,688(t0)
    6088:	3c01fafa 	lui	at,0xfafa
    608c:	24590008 	addiu	t9,v0,8
    6090:	ad1902b0 	sw	t9,688(t0)
    6094:	ac4d0000 	sw	t5,0(v0)
    6098:	958f0252 	lhu	t7,594(t4)
    609c:	31ee00ff 	andi	t6,t7,0xff
    60a0:	01c1c025 	or	t8,t6,at
    60a4:	ac580004 	sw	t8,4(v0)
    60a8:	8d0202b0 	lw	v0,688(t0)
    60ac:	3c0e0000 	lui	t6,0x0
    60b0:	25ce0000 	addiu	t6,t6,0
    60b4:	24590008 	addiu	t9,v0,8
    60b8:	ad1902b0 	sw	t9,688(t0)
    60bc:	3c0ffd90 	lui	t7,0xfd90
    60c0:	ac4f0000 	sw	t7,0(v0)
    60c4:	ac4e0004 	sw	t6,4(v0)
    60c8:	8d0202b0 	lw	v0,688(t0)
    60cc:	3c0f0700 	lui	t7,0x700
    60d0:	3c19f590 	lui	t9,0xf590
    60d4:	24580008 	addiu	t8,v0,8
    60d8:	ad1802b0 	sw	t8,688(t0)
    60dc:	ac4f0004 	sw	t7,4(v0)
    60e0:	ac590000 	sw	t9,0(v0)
    60e4:	8d0202b0 	lw	v0,688(t0)
    60e8:	3c190703 	lui	t9,0x703
    60ec:	3739f800 	ori	t9,t9,0xf800
    60f0:	244e0008 	addiu	t6,v0,8
    60f4:	ad0e02b0 	sw	t6,688(t0)
    60f8:	ac400004 	sw	zero,4(v0)
    60fc:	ac450000 	sw	a1,0(v0)
    6100:	8d0202b0 	lw	v0,688(t0)
    6104:	2545000a 	addiu	a1,t2,10
    6108:	00052880 	sll	a1,a1,0x2
    610c:	24580008 	addiu	t8,v0,8
    6110:	ad1802b0 	sw	t8,688(t0)
    6114:	ac590004 	sw	t9,4(v0)
    6118:	ac460000 	sw	a2,0(v0)
    611c:	8d0202b0 	lw	v0,688(t0)
    6120:	3c18f580 	lui	t8,0xf580
    6124:	37180200 	ori	t8,t8,0x200
    6128:	244f0008 	addiu	t7,v0,8
    612c:	ad0f02b0 	sw	t7,688(t0)
    6130:	ac400004 	sw	zero,4(v0)
    6134:	ac470000 	sw	a3,0(v0)
    6138:	8d0202b0 	lw	v0,688(t0)
    613c:	3c0ff200 	lui	t7,0xf200
    6140:	30a50fff 	andi	a1,a1,0xfff
    6144:	244e0008 	addiu	t6,v0,8
    6148:	ad0e02b0 	sw	t6,688(t0)
    614c:	ac400004 	sw	zero,4(v0)
    6150:	ac580000 	sw	t8,0(v0)
    6154:	8d0202b0 	lw	v0,688(t0)
    6158:	3c0e0003 	lui	t6,0x3
    615c:	35cec03c 	ori	t6,t6,0xc03c
    6160:	24590008 	addiu	t9,v0,8
    6164:	ad1902b0 	sw	t9,688(t0)
    6168:	ac4e0004 	sw	t6,4(v0)
    616c:	ac4f0000 	sw	t7,0(v0)
    6170:	8d0202b0 	lw	v0,688(t0)
    6174:	25460003 	addiu	a2,t2,3
    6178:	00063080 	sll	a2,a2,0x2
    617c:	24580008 	addiu	t8,v0,8
    6180:	ad1802b0 	sw	t8,688(t0)
    6184:	8d390000 	lw	t9,0(t1)
    6188:	816e0033 	lb	t6,51(t3)
    618c:	30c60fff 	andi	a2,a2,0xfff
    6190:	872f0afa 	lh	t7,2810(t9)
    6194:	3c0af100 	lui	t2,0xf100
    6198:	01eec021 	addu	t8,t7,t6
    619c:	0018c880 	sll	t9,t8,0x2
    61a0:	332f0fff 	andi	t7,t9,0xfff
    61a4:	000f7300 	sll	t6,t7,0xc
    61a8:	01dfc025 	or	t8,t6,ra
    61ac:	0305c825 	or	t9,t8,a1
    61b0:	ac590000 	sw	t9,0(v0)
    61b4:	8d2f0000 	lw	t7,0(t1)
    61b8:	85ee0afa 	lh	t6,2810(t7)
    61bc:	000ec080 	sll	t8,t6,0x2
    61c0:	33190fff 	andi	t9,t8,0xfff
    61c4:	00197b00 	sll	t7,t9,0xc
    61c8:	01e67025 	or	t6,t7,a2
    61cc:	ac4e0004 	sw	t6,4(v0)
    61d0:	8d0202b0 	lw	v0,688(t0)
    61d4:	3c19e100 	lui	t9,0xe100
    61d8:	3c0e0400 	lui	t6,0x400
    61dc:	24580008 	addiu	t8,v0,8
    61e0:	ad1802b0 	sw	t8,688(t0)
    61e4:	ac400004 	sw	zero,4(v0)
    61e8:	ac590000 	sw	t9,0(v0)
    61ec:	8d0202b0 	lw	v0,688(t0)
    61f0:	35ce0400 	ori	t6,t6,0x400
    61f4:	244f0008 	addiu	t7,v0,8
    61f8:	ad0f02b0 	sw	t7,688(t0)
    61fc:	ac4e0004 	sw	t6,4(v0)
    6200:	ac4a0000 	sw	t2,0(v0)
    6204:	8d0202b0 	lw	v0,688(t0)
    6208:	24580008 	addiu	t8,v0,8
    620c:	ad1802b0 	sw	t8,688(t0)
    6210:	ac400004 	sw	zero,4(v0)
    6214:	ac470000 	sw	a3,0(v0)
    6218:	8d0202b0 	lw	v0,688(t0)
    621c:	24590008 	addiu	t9,v0,8
    6220:	ad1902b0 	sw	t9,688(t0)
    6224:	ac4d0000 	sw	t5,0(v0)
    6228:	8d230000 	lw	v1,0(t1)
    622c:	846f0798 	lh	t7,1944(v1)
    6230:	31ee00ff 	andi	t6,t7,0xff
    6234:	846f0794 	lh	t7,1940(v1)
    6238:	000ec200 	sll	t8,t6,0x8
    623c:	000f7600 	sll	t6,t7,0x18
    6240:	846f0796 	lh	t7,1942(v1)
    6244:	030ec825 	or	t9,t8,t6
    6248:	31f800ff 	andi	t8,t7,0xff
    624c:	00187400 	sll	t6,t8,0x10
    6250:	95980252 	lhu	t8,594(t4)
    6254:	032e7825 	or	t7,t9,t6
    6258:	331900ff 	andi	t9,t8,0xff
    625c:	01f97025 	or	t6,t7,t9
    6260:	ac4e0004 	sw	t6,4(v0)
    6264:	8d0202b0 	lw	v0,688(t0)
    6268:	24580008 	addiu	t8,v0,8
    626c:	ad1802b0 	sw	t8,688(t0)
    6270:	8d2f0000 	lw	t7,0(t1)
    6274:	856e13f8 	lh	t6,5112(t3)
    6278:	85f90afa 	lh	t9,2810(t7)
    627c:	032ec021 	addu	t8,t9,t6
    6280:	00187880 	sll	t7,t8,0x2
    6284:	31f90fff 	andi	t9,t7,0xfff
    6288:	00197300 	sll	t6,t9,0xc
    628c:	01dfc025 	or	t8,t6,ra
    6290:	03057825 	or	t7,t8,a1
    6294:	ac4f0000 	sw	t7,0(v0)
    6298:	8d390000 	lw	t9,0(t1)
    629c:	872e0afa 	lh	t6,2810(t9)
    62a0:	000ec080 	sll	t8,t6,0x2
    62a4:	330f0fff 	andi	t7,t8,0xfff
    62a8:	000fcb00 	sll	t9,t7,0xc
    62ac:	03267025 	or	t6,t9,a2
    62b0:	ac4e0004 	sw	t6,4(v0)
    62b4:	8d0202b0 	lw	v0,688(t0)
    62b8:	3c0fe100 	lui	t7,0xe100
    62bc:	3c0e0400 	lui	t6,0x400
    62c0:	24580008 	addiu	t8,v0,8
    62c4:	ad1802b0 	sw	t8,688(t0)
    62c8:	ac400004 	sw	zero,4(v0)
    62cc:	ac4f0000 	sw	t7,0(v0)
    62d0:	8d0202b0 	lw	v0,688(t0)
    62d4:	35ce0400 	ori	t6,t6,0x400
    62d8:	24590008 	addiu	t9,v0,8
    62dc:	ad1902b0 	sw	t9,688(t0)
    62e0:	ac4e0004 	sw	t6,4(v0)
    62e4:	1000006b 	b	6494 <Interface_DrawMagicBar+0x7f0>
    62e8:	ac4a0000 	sw	t2,0(v0)
    62ec:	8d0202b0 	lw	v0,688(t0)
    62f0:	24580008 	addiu	t8,v0,8
    62f4:	ad1802b0 	sw	t8,688(t0)
    62f8:	ac4d0000 	sw	t5,0(v0)
    62fc:	8d230000 	lw	v1,0(t1)
    6300:	846f0798 	lh	t7,1944(v1)
    6304:	31f900ff 	andi	t9,t7,0xff
    6308:	846f0794 	lh	t7,1940(v1)
    630c:	00197200 	sll	t6,t9,0x8
    6310:	000fce00 	sll	t9,t7,0x18
    6314:	846f0796 	lh	t7,1942(v1)
    6318:	01d9c025 	or	t8,t6,t9
    631c:	31ee00ff 	andi	t6,t7,0xff
    6320:	000ecc00 	sll	t9,t6,0x10
    6324:	958e0252 	lhu	t6,594(t4)
    6328:	03197825 	or	t7,t8,t9
    632c:	31d800ff 	andi	t8,t6,0xff
    6330:	01f8c825 	or	t9,t7,t8
    6334:	ac590004 	sw	t9,4(v0)
    6338:	8d0202b0 	lw	v0,688(t0)
    633c:	3c180000 	lui	t8,0x0
    6340:	27180000 	addiu	t8,t8,0
    6344:	244e0008 	addiu	t6,v0,8
    6348:	ad0e02b0 	sw	t6,688(t0)
    634c:	3c0ffd90 	lui	t7,0xfd90
    6350:	ac4f0000 	sw	t7,0(v0)
    6354:	ac580004 	sw	t8,4(v0)
    6358:	8d0202b0 	lw	v0,688(t0)
    635c:	3c0f0700 	lui	t7,0x700
    6360:	3c0ef590 	lui	t6,0xf590
    6364:	24590008 	addiu	t9,v0,8
    6368:	ad1902b0 	sw	t9,688(t0)
    636c:	ac4f0004 	sw	t7,4(v0)
    6370:	ac4e0000 	sw	t6,0(v0)
    6374:	8d0202b0 	lw	v0,688(t0)
    6378:	3c0e0703 	lui	t6,0x703
    637c:	35cef800 	ori	t6,t6,0xf800
    6380:	24580008 	addiu	t8,v0,8
    6384:	ad1802b0 	sw	t8,688(t0)
    6388:	ac400004 	sw	zero,4(v0)
    638c:	ac450000 	sw	a1,0(v0)
    6390:	8d0202b0 	lw	v0,688(t0)
    6394:	24590008 	addiu	t9,v0,8
    6398:	ad1902b0 	sw	t9,688(t0)
    639c:	ac4e0004 	sw	t6,4(v0)
    63a0:	ac460000 	sw	a2,0(v0)
    63a4:	8d0202b0 	lw	v0,688(t0)
    63a8:	3c19f580 	lui	t9,0xf580
    63ac:	37390200 	ori	t9,t9,0x200
    63b0:	244f0008 	addiu	t7,v0,8
    63b4:	ad0f02b0 	sw	t7,688(t0)
    63b8:	ac400004 	sw	zero,4(v0)
    63bc:	ac470000 	sw	a3,0(v0)
    63c0:	8d0202b0 	lw	v0,688(t0)
    63c4:	3c0ff200 	lui	t7,0xf200
    63c8:	24580008 	addiu	t8,v0,8
    63cc:	ad1802b0 	sw	t8,688(t0)
    63d0:	ac400004 	sw	zero,4(v0)
    63d4:	ac590000 	sw	t9,0(v0)
    63d8:	8d0202b0 	lw	v0,688(t0)
    63dc:	3c180003 	lui	t8,0x3
    63e0:	3718c03c 	ori	t8,t8,0xc03c
    63e4:	244e0008 	addiu	t6,v0,8
    63e8:	ad0e02b0 	sw	t6,688(t0)
    63ec:	ac580004 	sw	t8,4(v0)
    63f0:	ac4f0000 	sw	t7,0(v0)
    63f4:	8d0202b0 	lw	v0,688(t0)
    63f8:	24590008 	addiu	t9,v0,8
    63fc:	ad1902b0 	sw	t9,688(t0)
    6400:	8d2e0000 	lw	t6,0(t1)
    6404:	81780033 	lb	t8,51(t3)
    6408:	85cf0afa 	lh	t7,2810(t6)
    640c:	01f8c821 	addu	t9,t7,t8
    6410:	00197080 	sll	t6,t9,0x2
    6414:	31cf0fff 	andi	t7,t6,0xfff
    6418:	000fc300 	sll	t8,t7,0xc
    641c:	254e000a 	addiu	t6,t2,10
    6420:	000e7880 	sll	t7,t6,0x2
    6424:	031fc825 	or	t9,t8,ra
    6428:	31f80fff 	andi	t8,t7,0xfff
    642c:	03387025 	or	t6,t9,t8
    6430:	ac4e0000 	sw	t6,0(v0)
    6434:	8d2f0000 	lw	t7,0(t1)
    6438:	85f90afa 	lh	t9,2810(t7)
    643c:	0019c080 	sll	t8,t9,0x2
    6440:	330e0fff 	andi	t6,t8,0xfff
    6444:	25590003 	addiu	t9,t2,3
    6448:	0019c080 	sll	t8,t9,0x2
    644c:	000e7b00 	sll	t7,t6,0xc
    6450:	330e0fff 	andi	t6,t8,0xfff
    6454:	01eec825 	or	t9,t7,t6
    6458:	ac590004 	sw	t9,4(v0)
    645c:	8d0202b0 	lw	v0,688(t0)
    6460:	3c0fe100 	lui	t7,0xe100
    6464:	3c19f100 	lui	t9,0xf100
    6468:	24580008 	addiu	t8,v0,8
    646c:	ad1802b0 	sw	t8,688(t0)
    6470:	ac400004 	sw	zero,4(v0)
    6474:	ac4f0000 	sw	t7,0(v0)
    6478:	8d0202b0 	lw	v0,688(t0)
    647c:	3c180400 	lui	t8,0x400
    6480:	37180400 	ori	t8,t8,0x400
    6484:	244e0008 	addiu	t6,v0,8
    6488:	ad0e02b0 	sw	t6,688(t0)
    648c:	ac580004 	sw	t8,4(v0)
    6490:	ac590000 	sw	t9,0(v0)
    6494:	8faf0108 	lw	t7,264(sp)
    6498:	3c060000 	lui	a2,0x0
    649c:	24c605ac 	addiu	a2,a2,1452
    64a0:	27a400ec 	addiu	a0,sp,236
    64a4:	24070aab 	li	a3,2731
    64a8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    64ac:	8de50000 	lw	a1,0(t7)
    64b0:	8fbf002c 	lw	ra,44(sp)
    64b4:	27bd0108 	addiu	sp,sp,264
    64b8:	03e00008 	jr	ra
    64bc:	00000000 	nop

000064c0 <func_80088AA0>:
    64c0:	3c020000 	lui	v0,0x0
    64c4:	24420000 	addiu	v0,v0,0
    64c8:	afa40000 	sw	a0,0(sp)
    64cc:	240e008c 	li	t6,140
    64d0:	240f0050 	li	t7,80
    64d4:	00042400 	sll	a0,a0,0x10
    64d8:	a44e13d8 	sh	t6,5080(v0)
    64dc:	a44f13dc 	sh	t7,5084(v0)
    64e0:	3c010000 	lui	at,0x0
    64e4:	00042403 	sra	a0,a0,0x10
    64e8:	a4200000 	sh	zero,0(at)
    64ec:	10800004 	beqz	a0,6500 <func_80088AA0+0x40>
    64f0:	a44413d4 	sh	a0,5076(v0)
    64f4:	24180001 	li	t8,1
    64f8:	03e00008 	jr	ra
    64fc:	a45813d2 	sh	t8,5074(v0)
    6500:	24190007 	li	t9,7
    6504:	a45913d2 	sh	t9,5074(v0)
    6508:	03e00008 	jr	ra
    650c:	00000000 	nop

00006510 <func_80088AF0>:
    6510:	3c020000 	lui	v0,0x0
    6514:	24420000 	addiu	v0,v0,0
    6518:	844e13d2 	lh	t6,5074(v0)
    651c:	afa40000 	sw	a0,0(sp)
    6520:	11c0000a 	beqz	t6,654c <func_80088AF0+0x3c>
    6524:	00000000 	nop
    6528:	944f13fc 	lhu	t7,5116(v0)
    652c:	241900ef 	li	t9,239
    6530:	24080001 	li	t0,1
    6534:	31f80001 	andi	t8,t7,0x1
    6538:	53000004 	beqzl	t8,654c <func_80088AF0+0x3c>
    653c:	a44813d4 	sh	t0,5076(v0)
    6540:	03e00008 	jr	ra
    6544:	a45913d4 	sh	t9,5076(v0)
    6548:	a44813d4 	sh	t0,5076(v0)
    654c:	03e00008 	jr	ra
    6550:	00000000 	nop

00006554 <func_80088B34>:
    6554:	3c020000 	lui	v0,0x0
    6558:	24420000 	addiu	v0,v0,0
    655c:	afa40000 	sw	a0,0(sp)
    6560:	240e008c 	li	t6,140
    6564:	240f0050 	li	t7,80
    6568:	00042400 	sll	a0,a0,0x10
    656c:	a44e13d6 	sh	t6,5078(v0)
    6570:	a44f13da 	sh	t7,5082(v0)
    6574:	3c010000 	lui	at,0x0
    6578:	00042403 	sra	a0,a0,0x10
    657c:	a4200000 	sh	zero,0(at)
    6580:	10800004 	beqz	a0,6594 <func_80088B34+0x40>
    6584:	a44413d0 	sh	a0,5072(v0)
    6588:	24180005 	li	t8,5
    658c:	03e00008 	jr	ra
    6590:	a45813ce 	sh	t8,5070(v0)
    6594:	2419000b 	li	t9,11
    6598:	a45913ce 	sh	t9,5070(v0)
    659c:	03e00008 	jr	ra
    65a0:	00000000 	nop

000065a4 <Interface_DrawActionLabel>:
    65a4:	27bdffb0 	addiu	sp,sp,-80
    65a8:	afa50054 	sw	a1,84(sp)
    65ac:	00802825 	move	a1,a0
    65b0:	afbf0014 	sw	ra,20(sp)
    65b4:	afa40050 	sw	a0,80(sp)
    65b8:	3c060000 	lui	a2,0x0
    65bc:	24c605c0 	addiu	a2,a2,1472
    65c0:	afa50050 	sw	a1,80(sp)
    65c4:	27a4003c 	addiu	a0,sp,60
    65c8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    65cc:	24070b04 	li	a3,2820
    65d0:	8fa50050 	lw	a1,80(sp)
    65d4:	3c0ffd70 	lui	t7,0xfd70
    65d8:	3c08f570 	lui	t0,0xf570
    65dc:	8ca202b0 	lw	v0,688(a1)
    65e0:	3c090700 	lui	t1,0x700
    65e4:	3c0be600 	lui	t3,0xe600
    65e8:	244e0008 	addiu	t6,v0,8
    65ec:	acae02b0 	sw	t6,688(a1)
    65f0:	ac4f0000 	sw	t7,0(v0)
    65f4:	8fb80054 	lw	t8,84(sp)
    65f8:	3c0e070b 	lui	t6,0x70b
    65fc:	35cef2ab 	ori	t6,t6,0xf2ab
    6600:	ac580004 	sw	t8,4(v0)
    6604:	8ca202b0 	lw	v0,688(a1)
    6608:	3c0df300 	lui	t5,0xf300
    660c:	3c18e700 	lui	t8,0xe700
    6610:	24590008 	addiu	t9,v0,8
    6614:	acb902b0 	sw	t9,688(a1)
    6618:	ac490004 	sw	t1,4(v0)
    661c:	ac480000 	sw	t0,0(v0)
    6620:	8ca202b0 	lw	v0,688(a1)
    6624:	3c08f560 	lui	t0,0xf560
    6628:	35080600 	ori	t0,t0,0x600
    662c:	244a0008 	addiu	t2,v0,8
    6630:	acaa02b0 	sw	t2,688(a1)
    6634:	ac400004 	sw	zero,4(v0)
    6638:	ac4b0000 	sw	t3,0(v0)
    663c:	8ca202b0 	lw	v0,688(a1)
    6640:	3c0b000b 	lui	t3,0xb
    6644:	356bc03c 	ori	t3,t3,0xc03c
    6648:	244c0008 	addiu	t4,v0,8
    664c:	acac02b0 	sw	t4,688(a1)
    6650:	ac4e0004 	sw	t6,4(v0)
    6654:	ac4d0000 	sw	t5,0(v0)
    6658:	8ca202b0 	lw	v0,688(a1)
    665c:	3c0af200 	lui	t2,0xf200
    6660:	3c0d0700 	lui	t5,0x700
    6664:	244f0008 	addiu	t7,v0,8
    6668:	acaf02b0 	sw	t7,688(a1)
    666c:	ac400004 	sw	zero,4(v0)
    6670:	ac580000 	sw	t8,0(v0)
    6674:	8ca202b0 	lw	v0,688(a1)
    6678:	35ad0406 	ori	t5,t5,0x406
    667c:	240e0602 	li	t6,1538
    6680:	24590008 	addiu	t9,v0,8
    6684:	acb902b0 	sw	t9,688(a1)
    6688:	ac400004 	sw	zero,4(v0)
    668c:	ac480000 	sw	t0,0(v0)
    6690:	8ca202b0 	lw	v0,688(a1)
    6694:	3c060000 	lui	a2,0x0
    6698:	24c605d4 	addiu	a2,a2,1492
    669c:	24490008 	addiu	t1,v0,8
    66a0:	aca902b0 	sw	t1,688(a1)
    66a4:	ac4b0004 	sw	t3,4(v0)
    66a8:	ac4a0000 	sw	t2,0(v0)
    66ac:	8ca202b0 	lw	v0,688(a1)
    66b0:	27a4003c 	addiu	a0,sp,60
    66b4:	24070b0d 	li	a3,2829
    66b8:	244c0008 	addiu	t4,v0,8
    66bc:	acac02b0 	sw	t4,688(a1)
    66c0:	ac4e0004 	sw	t6,4(v0)
    66c4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    66c8:	ac4d0000 	sw	t5,0(v0)
    66cc:	8fbf0014 	lw	ra,20(sp)
    66d0:	27bd0050 	addiu	sp,sp,80
    66d4:	03e00008 	jr	ra
    66d8:	00000000 	nop

000066dc <Interface_DrawItemButtons>:
    66dc:	27bdfea8 	addiu	sp,sp,-344
    66e0:	afbf002c 	sw	ra,44(sp)
    66e4:	afa40158 	sw	a0,344(sp)
    66e8:	8c8f1c44 	lw	t7,7236(a0)
    66ec:	3c060000 	lui	a2,0x0
    66f0:	24c605e8 	addiu	a2,a2,1512
    66f4:	afaf0150 	sw	t7,336(sp)
    66f8:	8c850000 	lw	a1,0(a0)
    66fc:	27a40130 	addiu	a0,sp,304
    6700:	24070b54 	li	a3,2900
    6704:	0c000000 	jal	0 <Interface_ChangeAlpha>
    6708:	afa50140 	sw	a1,320(sp)
    670c:	8faa0140 	lw	t2,320(sp)
    6710:	3c19e700 	lui	t9,0xe700
    6714:	3c0efc11 	lui	t6,0xfc11
    6718:	8d4402b0 	lw	a0,688(t2)
    671c:	35ce9623 	ori	t6,t6,0x9623
    6720:	3c0b0000 	lui	t3,0x0
    6724:	24980008 	addiu	t8,a0,8
    6728:	ad5802b0 	sw	t8,688(t2)
    672c:	ac800004 	sw	zero,4(a0)
    6730:	ac990000 	sw	t9,0(a0)
    6734:	8d4402b0 	lw	a0,688(t2)
    6738:	3c18ff2f 	lui	t8,0xff2f
    673c:	3718ffff 	ori	t8,t8,0xffff
    6740:	248f0008 	addiu	t7,a0,8
    6744:	ad4f02b0 	sw	t7,688(t2)
    6748:	ac980004 	sw	t8,4(a0)
    674c:	ac8e0000 	sw	t6,0(a0)
    6750:	8d4402b0 	lw	a0,688(t2)
    6754:	3c0dfa00 	lui	t5,0xfa00
    6758:	256b0000 	addiu	t3,t3,0
    675c:	24990008 	addiu	t9,a0,8
    6760:	ad5902b0 	sw	t9,688(t2)
    6764:	ac8d0000 	sw	t5,0(a0)
    6768:	8d620000 	lw	v0,0(t3)
    676c:	8fac0158 	lw	t4,344(sp)
    6770:	3c010001 	lui	at,0x1
    6774:	844f07ee 	lh	t7,2030(v0)
    6778:	342104f0 	ori	at,at,0x4f0
    677c:	01816021 	addu	t4,t4,at
    6780:	31ee00ff 	andi	t6,t7,0xff
    6784:	844f07ea 	lh	t7,2026(v0)
    6788:	000ec200 	sll	t8,t6,0x8
    678c:	3c050000 	lui	a1,0x0
    6790:	000f7600 	sll	t6,t7,0x18
    6794:	844f07ec 	lh	t7,2028(v0)
    6798:	030ec825 	or	t9,t8,t6
    679c:	24a50000 	addiu	a1,a1,0
    67a0:	31f800ff 	andi	t8,t7,0xff
    67a4:	00187400 	sll	t6,t8,0x10
    67a8:	95980248 	lhu	t8,584(t4)
    67ac:	032e7825 	or	t7,t9,t6
    67b0:	24060020 	li	a2,32
    67b4:	331900ff 	andi	t9,t8,0xff
    67b8:	01f97025 	or	t6,t7,t9
    67bc:	ac8e0004 	sw	t6,4(a0)
    67c0:	8d4402b0 	lw	a0,688(t2)
    67c4:	241900ff 	li	t9,255
    67c8:	3c0ffb00 	lui	t7,0xfb00
    67cc:	24980008 	addiu	t8,a0,8
    67d0:	ad5802b0 	sw	t8,688(t2)
    67d4:	ac990004 	sw	t9,4(a0)
    67d8:	ac8f0000 	sw	t7,0(a0)
    67dc:	8d620000 	lw	v0,0(t3)
    67e0:	8d4402b0 	lw	a0,688(t2)
    67e4:	24070020 	li	a3,32
    67e8:	844e0820 	lh	t6,2080(v0)
    67ec:	afae0010 	sw	t6,16(sp)
    67f0:	84580828 	lh	t8,2088(v0)
    67f4:	afb80014 	sw	t8,20(sp)
    67f8:	84430fb4 	lh	v1,4020(v0)
    67fc:	afa30018 	sw	v1,24(sp)
    6800:	afa3001c 	sw	v1,28(sp)
    6804:	84480830 	lh	t0,2096(v0)
    6808:	afac003c 	sw	t4,60(sp)
    680c:	afaa0140 	sw	t2,320(sp)
    6810:	00084040 	sll	t0,t0,0x1
    6814:	3108ffff 	andi	t0,t0,0xffff
    6818:	afa80020 	sw	t0,32(sp)
    681c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    6820:	afa80024 	sw	t0,36(sp)
    6824:	8faa0140 	lw	t2,320(sp)
    6828:	8fac003c 	lw	t4,60(sp)
    682c:	244f0008 	addiu	t7,v0,8
    6830:	ad4202b0 	sw	v0,688(t2)
    6834:	ad4f02b0 	sw	t7,688(t2)
    6838:	3c08e700 	lui	t0,0xe700
    683c:	ac480000 	sw	t0,0(v0)
    6840:	ac400004 	sw	zero,4(v0)
    6844:	8d4402b0 	lw	a0,688(t2)
    6848:	3c0b0000 	lui	t3,0x0
    684c:	3c0dfa00 	lui	t5,0xfa00
    6850:	24990008 	addiu	t9,a0,8
    6854:	ad5902b0 	sw	t9,688(t2)
    6858:	256b0000 	addiu	t3,t3,0
    685c:	ac8d0000 	sw	t5,0(a0)
    6860:	8d620000 	lw	v0,0(t3)
    6864:	3c06e400 	lui	a2,0xe400
    6868:	3c07e100 	lui	a3,0xe100
    686c:	844e07e6 	lh	t6,2022(v0)
    6870:	3c01e400 	lui	at,0xe400
    6874:	31d800ff 	andi	t8,t6,0xff
    6878:	844e07e2 	lh	t6,2018(v0)
    687c:	00187a00 	sll	t7,t8,0x8
    6880:	000ec600 	sll	t8,t6,0x18
    6884:	844e07e4 	lh	t6,2020(v0)
    6888:	01f8c825 	or	t9,t7,t8
    688c:	31cf00ff 	andi	t7,t6,0xff
    6890:	000fc400 	sll	t8,t7,0x10
    6894:	958f024a 	lhu	t7,586(t4)
    6898:	03387025 	or	t6,t9,t8
    689c:	31f900ff 	andi	t9,t7,0xff
    68a0:	01d9c025 	or	t8,t6,t9
    68a4:	ac980004 	sw	t8,4(a0)
    68a8:	8d4402b0 	lw	a0,688(t2)
    68ac:	248f0008 	addiu	t7,a0,8
    68b0:	ad4f02b0 	sw	t7,688(t2)
    68b4:	8d620000 	lw	v0,0(t3)
    68b8:	84450fb6 	lh	a1,4022(v0)
    68bc:	844e082a 	lh	t6,2090(v0)
    68c0:	00aec821 	addu	t9,a1,t6
    68c4:	0019c080 	sll	t8,t9,0x2
    68c8:	84590822 	lh	t9,2082(v0)
    68cc:	330f0fff 	andi	t7,t8,0xfff
    68d0:	01e67025 	or	t6,t7,a2
    68d4:	0325c021 	addu	t8,t9,a1
    68d8:	00187880 	sll	t7,t8,0x2
    68dc:	31f90fff 	andi	t9,t7,0xfff
    68e0:	0019c300 	sll	t8,t9,0xc
    68e4:	01d87825 	or	t7,t6,t8
    68e8:	ac8f0000 	sw	t7,0(a0)
    68ec:	8d620000 	lw	v0,0(t3)
    68f0:	8459082a 	lh	t9,2090(v0)
    68f4:	844f0822 	lh	t7,2082(v0)
    68f8:	00197080 	sll	t6,t9,0x2
    68fc:	31d80fff 	andi	t8,t6,0xfff
    6900:	000fc880 	sll	t9,t7,0x2
    6904:	332e0fff 	andi	t6,t9,0xfff
    6908:	000e7b00 	sll	t7,t6,0xc
    690c:	030fc825 	or	t9,t8,t7
    6910:	ac990004 	sw	t9,4(a0)
    6914:	8d4402b0 	lw	a0,688(t2)
    6918:	3c0ff100 	lui	t7,0xf100
    691c:	248e0008 	addiu	t6,a0,8
    6920:	ad4e02b0 	sw	t6,688(t2)
    6924:	ac800004 	sw	zero,4(a0)
    6928:	ac870000 	sw	a3,0(a0)
    692c:	8d4402b0 	lw	a0,688(t2)
    6930:	24980008 	addiu	t8,a0,8
    6934:	ad5802b0 	sw	t8,688(t2)
    6938:	ac8f0000 	sw	t7,0(a0)
    693c:	8d790000 	lw	t9,0(t3)
    6940:	87230832 	lh	v1,2098(t9)
    6944:	00031840 	sll	v1,v1,0x1
    6948:	3063ffff 	andi	v1,v1,0xffff
    694c:	00037400 	sll	t6,v1,0x10
    6950:	006ec025 	or	t8,v1,t6
    6954:	ac980004 	sw	t8,4(a0)
    6958:	8d4402b0 	lw	a0,688(t2)
    695c:	248f0008 	addiu	t7,a0,8
    6960:	ad4f02b0 	sw	t7,688(t2)
    6964:	ac8d0000 	sw	t5,0(a0)
    6968:	8d620000 	lw	v0,0(t3)
    696c:	845907e6 	lh	t9,2022(v0)
    6970:	332e00ff 	andi	t6,t9,0xff
    6974:	845907e2 	lh	t9,2018(v0)
    6978:	000ec200 	sll	t8,t6,0x8
    697c:	00197600 	sll	t6,t9,0x18
    6980:	845907e4 	lh	t9,2020(v0)
    6984:	030e7825 	or	t7,t8,t6
    6988:	333800ff 	andi	t8,t9,0xff
    698c:	00187400 	sll	t6,t8,0x10
    6990:	9598024c 	lhu	t8,588(t4)
    6994:	01eec825 	or	t9,t7,t6
    6998:	330f00ff 	andi	t7,t8,0xff
    699c:	032f7025 	or	t6,t9,t7
    69a0:	ac8e0004 	sw	t6,4(a0)
    69a4:	8d4402b0 	lw	a0,688(t2)
    69a8:	24980008 	addiu	t8,a0,8
    69ac:	ad5802b0 	sw	t8,688(t2)
    69b0:	8d620000 	lw	v0,0(t3)
    69b4:	84450fb8 	lh	a1,4024(v0)
    69b8:	8459082c 	lh	t9,2092(v0)
    69bc:	00b97821 	addu	t7,a1,t9
    69c0:	000f7080 	sll	t6,t7,0x2
    69c4:	844f0824 	lh	t7,2084(v0)
    69c8:	31d80fff 	andi	t8,t6,0xfff
    69cc:	0306c825 	or	t9,t8,a2
    69d0:	01e57021 	addu	t6,t7,a1
    69d4:	000ec080 	sll	t8,t6,0x2
    69d8:	330f0fff 	andi	t7,t8,0xfff
    69dc:	000f7300 	sll	t6,t7,0xc
    69e0:	032ec025 	or	t8,t9,t6
    69e4:	ac980000 	sw	t8,0(a0)
    69e8:	8d620000 	lw	v0,0(t3)
    69ec:	844f082c 	lh	t7,2092(v0)
    69f0:	84580824 	lh	t8,2084(v0)
    69f4:	000fc880 	sll	t9,t7,0x2
    69f8:	332e0fff 	andi	t6,t9,0xfff
    69fc:	00187880 	sll	t7,t8,0x2
    6a00:	31f90fff 	andi	t9,t7,0xfff
    6a04:	0019c300 	sll	t8,t9,0xc
    6a08:	01d87825 	or	t7,t6,t8
    6a0c:	ac8f0004 	sw	t7,4(a0)
    6a10:	8d4402b0 	lw	a0,688(t2)
    6a14:	3c18f100 	lui	t8,0xf100
    6a18:	24990008 	addiu	t9,a0,8
    6a1c:	ad5902b0 	sw	t9,688(t2)
    6a20:	ac800004 	sw	zero,4(a0)
    6a24:	ac870000 	sw	a3,0(a0)
    6a28:	8d4402b0 	lw	a0,688(t2)
    6a2c:	248e0008 	addiu	t6,a0,8
    6a30:	ad4e02b0 	sw	t6,688(t2)
    6a34:	ac980000 	sw	t8,0(a0)
    6a38:	8d6f0000 	lw	t7,0(t3)
    6a3c:	85e30834 	lh	v1,2100(t7)
    6a40:	00031840 	sll	v1,v1,0x1
    6a44:	3063ffff 	andi	v1,v1,0xffff
    6a48:	0003cc00 	sll	t9,v1,0x10
    6a4c:	00797025 	or	t6,v1,t9
    6a50:	ac8e0004 	sw	t6,4(a0)
    6a54:	8d4402b0 	lw	a0,688(t2)
    6a58:	24980008 	addiu	t8,a0,8
    6a5c:	ad5802b0 	sw	t8,688(t2)
    6a60:	ac8d0000 	sw	t5,0(a0)
    6a64:	8d620000 	lw	v0,0(t3)
    6a68:	844f07e6 	lh	t7,2022(v0)
    6a6c:	31f900ff 	andi	t9,t7,0xff
    6a70:	844f07e2 	lh	t7,2018(v0)
    6a74:	00197200 	sll	t6,t9,0x8
    6a78:	000fce00 	sll	t9,t7,0x18
    6a7c:	844f07e4 	lh	t7,2020(v0)
    6a80:	01d9c025 	or	t8,t6,t9
    6a84:	31ee00ff 	andi	t6,t7,0xff
    6a88:	000ecc00 	sll	t9,t6,0x10
    6a8c:	958e024e 	lhu	t6,590(t4)
    6a90:	03197825 	or	t7,t8,t9
    6a94:	31d800ff 	andi	t8,t6,0xff
    6a98:	01f8c825 	or	t9,t7,t8
    6a9c:	ac990004 	sw	t9,4(a0)
    6aa0:	8d4402b0 	lw	a0,688(t2)
    6aa4:	248e0008 	addiu	t6,a0,8
    6aa8:	ad4e02b0 	sw	t6,688(t2)
    6aac:	8d620000 	lw	v0,0(t3)
    6ab0:	84450fba 	lh	a1,4026(v0)
    6ab4:	844f082e 	lh	t7,2094(v0)
    6ab8:	00afc021 	addu	t8,a1,t7
    6abc:	0018c880 	sll	t9,t8,0x2
    6ac0:	84580826 	lh	t8,2086(v0)
    6ac4:	332e0fff 	andi	t6,t9,0xfff
    6ac8:	01c17825 	or	t7,t6,at
    6acc:	0305c821 	addu	t9,t8,a1
    6ad0:	00197080 	sll	t6,t9,0x2
    6ad4:	31d80fff 	andi	t8,t6,0xfff
    6ad8:	0018cb00 	sll	t9,t8,0xc
    6adc:	01f97025 	or	t6,t7,t9
    6ae0:	ac8e0000 	sw	t6,0(a0)
    6ae4:	8d620000 	lw	v0,0(t3)
    6ae8:	8458082e 	lh	t8,2094(v0)
    6aec:	844e0826 	lh	t6,2086(v0)
    6af0:	3c020001 	lui	v0,0x1
    6af4:	00187880 	sll	t7,t8,0x2
    6af8:	31f90fff 	andi	t9,t7,0xfff
    6afc:	000ec080 	sll	t8,t6,0x2
    6b00:	330f0fff 	andi	t7,t8,0xfff
    6b04:	000f7300 	sll	t6,t7,0xc
    6b08:	032ec025 	or	t8,t9,t6
    6b0c:	ac980004 	sw	t8,4(a0)
    6b10:	8d4402b0 	lw	a0,688(t2)
    6b14:	3c19e100 	lui	t9,0xe100
    6b18:	3c18f100 	lui	t8,0xf100
    6b1c:	248f0008 	addiu	t7,a0,8
    6b20:	ad4f02b0 	sw	t7,688(t2)
    6b24:	ac800004 	sw	zero,4(a0)
    6b28:	ac990000 	sw	t9,0(a0)
    6b2c:	8d4402b0 	lw	a0,688(t2)
    6b30:	248e0008 	addiu	t6,a0,8
    6b34:	ad4e02b0 	sw	t6,688(t2)
    6b38:	ac980000 	sw	t8,0(a0)
    6b3c:	8d6f0000 	lw	t7,0(t3)
    6b40:	85e30836 	lh	v1,2102(t7)
    6b44:	00031840 	sll	v1,v1,0x1
    6b48:	3063ffff 	andi	v1,v1,0xffff
    6b4c:	0003cc00 	sll	t9,v1,0x10
    6b50:	00797025 	or	t6,v1,t9
    6b54:	ac8e0004 	sw	t6,4(a0)
    6b58:	8fb80158 	lw	t8,344(sp)
    6b5c:	00581021 	addu	v0,v0,t8
    6b60:	94420934 	lhu	v0,2356(v0)
    6b64:	28410008 	slti	at,v0,8
    6b68:	14200003 	bnez	at,6b78 <Interface_DrawItemButtons+0x49c>
    6b6c:	28410012 	slti	at,v0,18
    6b70:	542000e4 	bnezl	at,6f04 <Interface_DrawItemButtons+0x828>
    6b74:	859801f8 	lh	t8,504(t4)
    6b78:	8fa20158 	lw	v0,344(sp)
    6b7c:	3c010001 	lui	at,0x1
    6b80:	00411021 	addu	v0,v0,at
    6b84:	944f0934 	lhu	t7,2356(v0)
    6b88:	55e00005 	bnezl	t7,6ba0 <Interface_DrawItemButtons+0x4c4>
    6b8c:	8d4402b0 	lw	a0,688(t2)
    6b90:	94590936 	lhu	t9,2358(v0)
    6b94:	532000db 	beqzl	t9,6f04 <Interface_DrawItemButtons+0x828>
    6b98:	859801f8 	lh	t8,504(t4)
    6b9c:	8d4402b0 	lw	a0,688(t2)
    6ba0:	3c017878 	lui	at,0x7878
    6ba4:	34217800 	ori	at,at,0x7800
    6ba8:	248e0008 	addiu	t6,a0,8
    6bac:	ad4e02b0 	sw	t6,688(t2)
    6bb0:	ac800004 	sw	zero,4(a0)
    6bb4:	ac880000 	sw	t0,0(a0)
    6bb8:	8d4402b0 	lw	a0,688(t2)
    6bbc:	3c1f0000 	lui	ra,0x0
    6bc0:	27ff0000 	addiu	ra,ra,0
    6bc4:	24980008 	addiu	t8,a0,8
    6bc8:	ad5802b0 	sw	t8,688(t2)
    6bcc:	ac8d0000 	sw	t5,0(a0)
    6bd0:	858f0256 	lh	t7,598(t4)
    6bd4:	3c030000 	lui	v1,0x0
    6bd8:	24630000 	addiu	v1,v1,0
    6bdc:	31f900ff 	andi	t9,t7,0xff
    6be0:	03217025 	or	t6,t9,at
    6be4:	ac8e0004 	sw	t6,4(a0)
    6be8:	8d4402b0 	lw	a0,688(t2)
    6bec:	3c01e400 	lui	at,0xe400
    6bf0:	24980008 	addiu	t8,a0,8
    6bf4:	ad5802b0 	sw	t8,688(t2)
    6bf8:	93ef1409 	lbu	t7,5129(ra)
    6bfc:	000fc840 	sll	t9,t7,0x1
    6c00:	00797021 	addu	t6,v1,t9
    6c04:	85d80000 	lh	t8,0(t6)
    6c08:	270f0016 	addiu	t7,t8,22
    6c0c:	000fc880 	sll	t9,t7,0x2
    6c10:	332e0fff 	andi	t6,t9,0xfff
    6c14:	000ec300 	sll	t8,t6,0xc
    6c18:	03017825 	or	t7,t8,at
    6c1c:	35f9009c 	ori	t9,t7,0x9c
    6c20:	ac990000 	sw	t9,0(a0)
    6c24:	93ee1409 	lbu	t6,5129(ra)
    6c28:	2401ff00 	li	at,-256
    6c2c:	000ec040 	sll	t8,t6,0x1
    6c30:	00787821 	addu	t7,v1,t8
    6c34:	85f90000 	lh	t9,0(t7)
    6c38:	00197080 	sll	t6,t9,0x2
    6c3c:	31d80fff 	andi	t8,t6,0xfff
    6c40:	00187b00 	sll	t7,t8,0xc
    6c44:	35f90044 	ori	t9,t7,0x44
    6c48:	ac990004 	sw	t9,4(a0)
    6c4c:	8d4402b0 	lw	a0,688(t2)
    6c50:	3c18e100 	lui	t8,0xe100
    6c54:	3c19f100 	lui	t9,0xf100
    6c58:	248e0008 	addiu	t6,a0,8
    6c5c:	ad4e02b0 	sw	t6,688(t2)
    6c60:	ac800004 	sw	zero,4(a0)
    6c64:	ac980000 	sw	t8,0(a0)
    6c68:	8d4402b0 	lw	a0,688(t2)
    6c6c:	3c0e05b6 	lui	t6,0x5b6
    6c70:	35ce05b6 	ori	t6,t6,0x5b6
    6c74:	248f0008 	addiu	t7,a0,8
    6c78:	ad4f02b0 	sw	t7,688(t2)
    6c7c:	ac8e0004 	sw	t6,4(a0)
    6c80:	ac990000 	sw	t9,0(a0)
    6c84:	8d4402b0 	lw	a0,688(t2)
    6c88:	24980008 	addiu	t8,a0,8
    6c8c:	ad5802b0 	sw	t8,688(t2)
    6c90:	ac800004 	sw	zero,4(a0)
    6c94:	ac880000 	sw	t0,0(a0)
    6c98:	8d4402b0 	lw	a0,688(t2)
    6c9c:	248f0008 	addiu	t7,a0,8
    6ca0:	ad4f02b0 	sw	t7,688(t2)
    6ca4:	ac8d0000 	sw	t5,0(a0)
    6ca8:	85990256 	lh	t9,598(t4)
    6cac:	332e00ff 	andi	t6,t9,0xff
    6cb0:	01c1c025 	or	t8,t6,at
    6cb4:	ac980004 	sw	t8,4(a0)
    6cb8:	8d4402b0 	lw	a0,688(t2)
    6cbc:	3c19fb00 	lui	t9,0xfb00
    6cc0:	3c18fc30 	lui	t8,0xfc30
    6cc4:	248f0008 	addiu	t7,a0,8
    6cc8:	ad4f02b0 	sw	t7,688(t2)
    6ccc:	ac800004 	sw	zero,4(a0)
    6cd0:	ac990000 	sw	t9,0(a0)
    6cd4:	8d4402b0 	lw	a0,688(t2)
    6cd8:	3c0f552e 	lui	t7,0x552e
    6cdc:	35efff7f 	ori	t7,t7,0xff7f
    6ce0:	248e0008 	addiu	t6,a0,8
    6ce4:	ad4e02b0 	sw	t6,688(t2)
    6ce8:	37189661 	ori	t8,t8,0x9661
    6cec:	ac980000 	sw	t8,0(a0)
    6cf0:	ac8f0004 	sw	t7,4(a0)
    6cf4:	8d4402b0 	lw	a0,688(t2)
    6cf8:	3c0efd70 	lui	t6,0xfd70
    6cfc:	3c0142c8 	lui	at,0x42c8
    6d00:	24990008 	addiu	t9,a0,8
    6d04:	ad5902b0 	sw	t9,688(t2)
    6d08:	ac8e0000 	sw	t6,0(a0)
    6d0c:	8d980134 	lw	t8,308(t4)
    6d10:	3c0ef570 	lui	t6,0xf570
    6d14:	44814000 	mtc1	at,$f8
    6d18:	270f0300 	addiu	t7,t8,768
    6d1c:	ac8f0004 	sw	t7,4(a0)
    6d20:	8d4402b0 	lw	a0,688(t2)
    6d24:	3c180700 	lui	t8,0x700
    6d28:	3c014480 	lui	at,0x4480
    6d2c:	24990008 	addiu	t9,a0,8
    6d30:	ad5902b0 	sw	t9,688(t2)
    6d34:	ac980004 	sw	t8,4(a0)
    6d38:	ac8e0000 	sw	t6,0(a0)
    6d3c:	8d4402b0 	lw	a0,688(t2)
    6d40:	3c19e600 	lui	t9,0xe600
    6d44:	3c18f300 	lui	t8,0xf300
    6d48:	248f0008 	addiu	t7,a0,8
    6d4c:	ad4f02b0 	sw	t7,688(t2)
    6d50:	ac800004 	sw	zero,4(a0)
    6d54:	ac990000 	sw	t9,0(a0)
    6d58:	8d4402b0 	lw	a0,688(t2)
    6d5c:	3c0f070b 	lui	t7,0x70b
    6d60:	35eff2ab 	ori	t7,t7,0xf2ab
    6d64:	248e0008 	addiu	t6,a0,8
    6d68:	ad4e02b0 	sw	t6,688(t2)
    6d6c:	ac8f0004 	sw	t7,4(a0)
    6d70:	ac980000 	sw	t8,0(a0)
    6d74:	8d4402b0 	lw	a0,688(t2)
    6d78:	3c18f560 	lui	t8,0xf560
    6d7c:	37180600 	ori	t8,t8,0x600
    6d80:	24990008 	addiu	t9,a0,8
    6d84:	ad5902b0 	sw	t9,688(t2)
    6d88:	ac800004 	sw	zero,4(a0)
    6d8c:	ac880000 	sw	t0,0(a0)
    6d90:	8d4402b0 	lw	a0,688(t2)
    6d94:	3c19f200 	lui	t9,0xf200
    6d98:	44815000 	mtc1	at,$f10
    6d9c:	248e0008 	addiu	t6,a0,8
    6da0:	ad4e02b0 	sw	t6,688(t2)
    6da4:	ac800004 	sw	zero,4(a0)
    6da8:	ac980000 	sw	t8,0(a0)
    6dac:	8d4402b0 	lw	a0,688(t2)
    6db0:	3c0e000b 	lui	t6,0xb
    6db4:	35cec03c 	ori	t6,t6,0xc03c
    6db8:	248f0008 	addiu	t7,a0,8
    6dbc:	ad4f02b0 	sw	t7,688(t2)
    6dc0:	ac8e0004 	sw	t6,4(a0)
    6dc4:	ac990000 	sw	t9,0(a0)
    6dc8:	93ef1409 	lbu	t7,5129(ra)
    6dcc:	8d780000 	lw	t8,0(t3)
    6dd0:	3c014240 	lui	at,0x4240
    6dd4:	000fc840 	sll	t9,t7,0x1
    6dd8:	03197021 	addu	t6,t8,t9
    6ddc:	85cf07f4 	lh	t7,2036(t6)
    6de0:	8d4402b0 	lw	a0,688(t2)
    6de4:	448f2000 	mtc1	t7,$f4
    6de8:	248f0008 	addiu	t7,a0,8
    6dec:	ad4f02b0 	sw	t7,688(t2)
    6df0:	468021a0 	cvt.s.w	$f6,$f4
    6df4:	44812000 	mtc1	at,$f4
    6df8:	3c014180 	lui	at,0x4180
    6dfc:	93f91409 	lbu	t9,5129(ra)
    6e00:	8d780000 	lw	t8,0(t3)
    6e04:	46083003 	div.s	$f0,$f6,$f8
    6e08:	00197040 	sll	t6,t9,0x1
    6e0c:	030e1021 	addu	v0,t8,t6
    6e10:	844f07fa 	lh	t7,2042(v0)
    6e14:	46005403 	div.s	$f16,$f10,$f0
    6e18:	44815000 	mtc1	at,$f10
    6e1c:	3c01e400 	lui	at,0xe400
    6e20:	46002183 	div.s	$f6,$f4,$f0
    6e24:	4600848d 	trunc.w.s	$f18,$f16
    6e28:	44059000 	mfc1	a1,$f18
    6e2c:	00000000 	nop
    6e30:	00052c00 	sll	a1,a1,0x10
    6e34:	00052c03 	sra	a1,a1,0x10
    6e38:	30a3ffff 	andi	v1,a1,0xffff
    6e3c:	46005403 	div.s	$f16,$f10,$f0
    6e40:	4600320d 	trunc.w.s	$f8,$f6
    6e44:	44064000 	mfc1	a2,$f8
    6e48:	00000000 	nop
    6e4c:	00063400 	sll	a2,a2,0x10
    6e50:	00063403 	sra	a2,a2,0x10
    6e54:	4600848d 	trunc.w.s	$f18,$f16
    6e58:	44079000 	mfc1	a3,$f18
    6e5c:	00000000 	nop
    6e60:	00073c00 	sll	a3,a3,0x10
    6e64:	00073c03 	sra	a3,a3,0x10
    6e68:	01e7c821 	addu	t9,t7,a3
    6e6c:	0019c080 	sll	t8,t9,0x2
    6e70:	84590800 	lh	t9,2048(v0)
    6e74:	330e0fff 	andi	t6,t8,0xfff
    6e78:	01c17825 	or	t7,t6,at
    6e7c:	0326c021 	addu	t8,t9,a2
    6e80:	00187080 	sll	t6,t8,0x2
    6e84:	31d90fff 	andi	t9,t6,0xfff
    6e88:	0019c300 	sll	t8,t9,0xc
    6e8c:	01f87025 	or	t6,t7,t8
    6e90:	ac8e0000 	sw	t6,0(a0)
    6e94:	93ef1409 	lbu	t7,5129(ra)
    6e98:	8d790000 	lw	t9,0(t3)
    6e9c:	000fc040 	sll	t8,t7,0x1
    6ea0:	03381021 	addu	v0,t9,t8
    6ea4:	844e07fa 	lh	t6,2042(v0)
    6ea8:	84580800 	lh	t8,2048(v0)
    6eac:	000e7880 	sll	t7,t6,0x2
    6eb0:	31f90fff 	andi	t9,t7,0xfff
    6eb4:	00187080 	sll	t6,t8,0x2
    6eb8:	31cf0fff 	andi	t7,t6,0xfff
    6ebc:	000fc300 	sll	t8,t7,0xc
    6ec0:	03387025 	or	t6,t9,t8
    6ec4:	ac8e0004 	sw	t6,4(a0)
    6ec8:	8d4402b0 	lw	a0,688(t2)
    6ecc:	3c19e100 	lui	t9,0xe100
    6ed0:	3c0ef100 	lui	t6,0xf100
    6ed4:	248f0008 	addiu	t7,a0,8
    6ed8:	ad4f02b0 	sw	t7,688(t2)
    6edc:	ac800004 	sw	zero,4(a0)
    6ee0:	ac990000 	sw	t9,0(a0)
    6ee4:	8d4402b0 	lw	a0,688(t2)
    6ee8:	00037c00 	sll	t7,v1,0x10
    6eec:	01e3c825 	or	t9,t7,v1
    6ef0:	24980008 	addiu	t8,a0,8
    6ef4:	ad5802b0 	sw	t8,688(t2)
    6ef8:	ac990004 	sw	t9,4(a0)
    6efc:	ac8e0000 	sw	t6,0(a0)
    6f00:	859801f8 	lh	t8,504(t4)
    6f04:	3c1f0000 	lui	ra,0x0
    6f08:	27ff0000 	addiu	ra,ra,0
    6f0c:	13000104 	beqz	t8,7320 <Interface_DrawItemButtons+0xc44>
    6f10:	8fae0158 	lw	t6,344(sp)
    6f14:	3c010001 	lui	at,0x1
    6f18:	01c11021 	addu	v0,t6,at
    6f1c:	944f0934 	lhu	t7,2356(v0)
    6f20:	55e00100 	bnezl	t7,7324 <Interface_DrawItemButtons+0xc48>
    6f24:	8d4402b0 	lw	a0,688(t2)
    6f28:	94590936 	lhu	t9,2358(v0)
    6f2c:	572000fd 	bnezl	t9,7324 <Interface_DrawItemButtons+0xc48>
    6f30:	8d4402b0 	lw	a0,688(t2)
    6f34:	91d81d6c 	lbu	t8,7532(t6)
    6f38:	3c060000 	lui	a2,0x0
    6f3c:	24c60000 	addiu	a2,a2,0
    6f40:	570000f8 	bnezl	t8,7324 <Interface_DrawItemButtons+0xc48>
    6f44:	8d4402b0 	lw	a0,688(t2)
    6f48:	94cf0000 	lhu	t7,0(a2)
    6f4c:	15e000e8 	bnez	t7,72f0 <Interface_DrawItemButtons+0xc14>
    6f50:	00000000 	nop
    6f54:	8d4402b0 	lw	a0,688(t2)
    6f58:	24010001 	li	at,1
    6f5c:	24990008 	addiu	t9,a0,8
    6f60:	ad5902b0 	sw	t9,688(t2)
    6f64:	ac800004 	sw	zero,4(a0)
    6f68:	ac880000 	sw	t0,0(a0)
    6f6c:	97e213ea 	lhu	v0,5098(ra)
    6f70:	10410005 	beq	v0,at,6f88 <Interface_DrawItemButtons+0x8ac>
    6f74:	24010002 	li	at,2
    6f78:	10410003 	beq	v0,at,6f88 <Interface_DrawItemButtons+0x8ac>
    6f7c:	24010005 	li	at,5
    6f80:	14410003 	bne	v0,at,6f90 <Interface_DrawItemButtons+0x8b4>
    6f84:	8fae0150 	lw	t6,336(sp)
    6f88:	1000001d 	b	7000 <Interface_DrawItemButtons+0x924>
    6f8c:	00004825 	move	t1,zero
    6f90:	8dd8067c 	lw	t8,1660(t6)
    6f94:	8fa40158 	lw	a0,344(sp)
    6f98:	00187a80 	sll	t7,t8,0xa
    6f9c:	05e00015 	bltz	t7,6ff4 <Interface_DrawItemButtons+0x918>
    6fa0:	00000000 	nop
    6fa4:	afaa0140 	sw	t2,320(sp)
    6fa8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    6fac:	afac003c 	sw	t4,60(sp)
    6fb0:	3c060000 	lui	a2,0x0
    6fb4:	3c0b0000 	lui	t3,0x0
    6fb8:	3c1f0000 	lui	ra,0x0
    6fbc:	24010004 	li	at,4
    6fc0:	27ff0000 	addiu	ra,ra,0
    6fc4:	256b0000 	addiu	t3,t3,0
    6fc8:	24c60000 	addiu	a2,a2,0
    6fcc:	3c08e700 	lui	t0,0xe700
    6fd0:	8faa0140 	lw	t2,320(sp)
    6fd4:	8fac003c 	lw	t4,60(sp)
    6fd8:	10410006 	beq	v0,at,6ff4 <Interface_DrawItemButtons+0x918>
    6fdc:	3c0dfa00 	lui	t5,0xfa00
    6fe0:	8fb90150 	lw	t9,336(sp)
    6fe4:	8f2e0680 	lw	t6,1664(t9)
    6fe8:	000ec340 	sll	t8,t6,0xd
    6fec:	07030004 	bgezl	t8,7000 <Interface_DrawItemButtons+0x924>
    6ff0:	85890250 	lh	t1,592(t4)
    6ff4:	10000002 	b	7000 <Interface_DrawItemButtons+0x924>
    6ff8:	24090046 	li	t1,70
    6ffc:	85890250 	lh	t1,592(t4)
    7000:	8d4402b0 	lw	a0,688(t2)
    7004:	312500ff 	andi	a1,t1,0xff
    7008:	3c01e400 	lui	at,0xe400
    700c:	248f0008 	addiu	t7,a0,8
    7010:	ad4f02b0 	sw	t7,688(t2)
    7014:	ac8d0000 	sw	t5,0(a0)
    7018:	8d620000 	lw	v0,0(t3)
    701c:	845907e6 	lh	t9,2022(v0)
    7020:	332e00ff 	andi	t6,t9,0xff
    7024:	845907e2 	lh	t9,2018(v0)
    7028:	000ec200 	sll	t8,t6,0x8
    702c:	00197600 	sll	t6,t9,0x18
    7030:	845907e4 	lh	t9,2020(v0)
    7034:	030e7825 	or	t7,t8,t6
    7038:	333800ff 	andi	t8,t9,0xff
    703c:	00187400 	sll	t6,t8,0x10
    7040:	01eec825 	or	t9,t7,t6
    7044:	0325c025 	or	t8,t9,a1
    7048:	ac980004 	sw	t8,4(a0)
    704c:	8d4402b0 	lw	a0,688(t2)
    7050:	3c19ff2f 	lui	t9,0xff2f
    7054:	3c0efc11 	lui	t6,0xfc11
    7058:	248f0008 	addiu	t7,a0,8
    705c:	ad4f02b0 	sw	t7,688(t2)
    7060:	35ce9623 	ori	t6,t6,0x9623
    7064:	3739ffff 	ori	t9,t9,0xffff
    7068:	ac990004 	sw	t9,4(a0)
    706c:	ac8e0000 	sw	t6,0(a0)
    7070:	8d4402b0 	lw	a0,688(t2)
    7074:	24980008 	addiu	t8,a0,8
    7078:	ad5802b0 	sw	t8,688(t2)
    707c:	8d620000 	lw	v0,0(t3)
    7080:	844f0812 	lh	t7,2066(v0)
    7084:	25ee0010 	addiu	t6,t7,16
    7088:	000ec880 	sll	t9,t6,0x2
    708c:	844e0810 	lh	t6,2064(v0)
    7090:	33380fff 	andi	t8,t9,0xfff
    7094:	03017825 	or	t7,t8,at
    7098:	25d90010 	addiu	t9,t6,16
    709c:	0019c080 	sll	t8,t9,0x2
    70a0:	330e0fff 	andi	t6,t8,0xfff
    70a4:	000ecb00 	sll	t9,t6,0xc
    70a8:	01f9c025 	or	t8,t7,t9
    70ac:	ac980000 	sw	t8,0(a0)
    70b0:	8d620000 	lw	v0,0(t3)
    70b4:	2401ff00 	li	at,-256
    70b8:	844e0812 	lh	t6,2066(v0)
    70bc:	84580810 	lh	t8,2064(v0)
    70c0:	000e7880 	sll	t7,t6,0x2
    70c4:	31f90fff 	andi	t9,t7,0xfff
    70c8:	00187080 	sll	t6,t8,0x2
    70cc:	31cf0fff 	andi	t7,t6,0xfff
    70d0:	000fc300 	sll	t8,t7,0xc
    70d4:	03387025 	or	t6,t9,t8
    70d8:	ac8e0004 	sw	t6,4(a0)
    70dc:	8d4402b0 	lw	a0,688(t2)
    70e0:	3c19e100 	lui	t9,0xe100
    70e4:	3c0ef100 	lui	t6,0xf100
    70e8:	248f0008 	addiu	t7,a0,8
    70ec:	ad4f02b0 	sw	t7,688(t2)
    70f0:	ac800004 	sw	zero,4(a0)
    70f4:	ac990000 	sw	t9,0(a0)
    70f8:	8d4402b0 	lw	a0,688(t2)
    70fc:	3c0f0800 	lui	t7,0x800
    7100:	35ef0800 	ori	t7,t7,0x800
    7104:	24980008 	addiu	t8,a0,8
    7108:	ad5802b0 	sw	t8,688(t2)
    710c:	ac8f0004 	sw	t7,4(a0)
    7110:	ac8e0000 	sw	t6,0(a0)
    7114:	8d4402b0 	lw	a0,688(t2)
    7118:	00a17025 	or	t6,a1,at
    711c:	3c01e400 	lui	at,0xe400
    7120:	24990008 	addiu	t9,a0,8
    7124:	ad5902b0 	sw	t9,688(t2)
    7128:	ac800004 	sw	zero,4(a0)
    712c:	ac880000 	sw	t0,0(a0)
    7130:	8d4402b0 	lw	a0,688(t2)
    7134:	3c19fb00 	lui	t9,0xfb00
    7138:	24980008 	addiu	t8,a0,8
    713c:	ad5802b0 	sw	t8,688(t2)
    7140:	ac8e0004 	sw	t6,4(a0)
    7144:	ac8d0000 	sw	t5,0(a0)
    7148:	8d4402b0 	lw	a0,688(t2)
    714c:	3c0efc30 	lui	t6,0xfc30
    7150:	35ce9661 	ori	t6,t6,0x9661
    7154:	248f0008 	addiu	t7,a0,8
    7158:	ad4f02b0 	sw	t7,688(t2)
    715c:	ac800004 	sw	zero,4(a0)
    7160:	ac990000 	sw	t9,0(a0)
    7164:	8d4402b0 	lw	a0,688(t2)
    7168:	3c0f552e 	lui	t7,0x552e
    716c:	35efff7f 	ori	t7,t7,0xff7f
    7170:	24980008 	addiu	t8,a0,8
    7174:	ad5802b0 	sw	t8,688(t2)
    7178:	ac8f0004 	sw	t7,4(a0)
    717c:	ac8e0000 	sw	t6,0(a0)
    7180:	8d4402b0 	lw	a0,688(t2)
    7184:	3c18fd70 	lui	t8,0xfd70
    7188:	24990008 	addiu	t9,a0,8
    718c:	ad5902b0 	sw	t9,688(t2)
    7190:	ac980000 	sw	t8,0(a0)
    7194:	93ee1409 	lbu	t6,5129(ra)
    7198:	3c190000 	lui	t9,0x0
    719c:	000e7880 	sll	t7,t6,0x2
    71a0:	032fc821 	addu	t9,t9,t7
    71a4:	8f390000 	lw	t9,0(t9)
    71a8:	3c0f0700 	lui	t7,0x700
    71ac:	3c0ef570 	lui	t6,0xf570
    71b0:	ac990004 	sw	t9,4(a0)
    71b4:	8d4402b0 	lw	a0,688(t2)
    71b8:	24980008 	addiu	t8,a0,8
    71bc:	ad5802b0 	sw	t8,688(t2)
    71c0:	ac8f0004 	sw	t7,4(a0)
    71c4:	ac8e0000 	sw	t6,0(a0)
    71c8:	8d4402b0 	lw	a0,688(t2)
    71cc:	3c18e600 	lui	t8,0xe600
    71d0:	3c0ff300 	lui	t7,0xf300
    71d4:	24990008 	addiu	t9,a0,8
    71d8:	ad5902b0 	sw	t9,688(t2)
    71dc:	ac800004 	sw	zero,4(a0)
    71e0:	ac980000 	sw	t8,0(a0)
    71e4:	8d4402b0 	lw	a0,688(t2)
    71e8:	3c190703 	lui	t9,0x703
    71ec:	3739f400 	ori	t9,t9,0xf400
    71f0:	248e0008 	addiu	t6,a0,8
    71f4:	ad4e02b0 	sw	t6,688(t2)
    71f8:	ac990004 	sw	t9,4(a0)
    71fc:	ac8f0000 	sw	t7,0(a0)
    7200:	8d4402b0 	lw	a0,688(t2)
    7204:	3c0ff560 	lui	t7,0xf560
    7208:	35ef0400 	ori	t7,t7,0x400
    720c:	24980008 	addiu	t8,a0,8
    7210:	ad5802b0 	sw	t8,688(t2)
    7214:	ac800004 	sw	zero,4(a0)
    7218:	ac880000 	sw	t0,0(a0)
    721c:	8d4402b0 	lw	a0,688(t2)
    7220:	3c18f200 	lui	t8,0xf200
    7224:	248e0008 	addiu	t6,a0,8
    7228:	ad4e02b0 	sw	t6,688(t2)
    722c:	ac800004 	sw	zero,4(a0)
    7230:	ac8f0000 	sw	t7,0(a0)
    7234:	8d4402b0 	lw	a0,688(t2)
    7238:	3c0e0007 	lui	t6,0x7
    723c:	35cec01c 	ori	t6,t6,0xc01c
    7240:	24990008 	addiu	t9,a0,8
    7244:	ad5902b0 	sw	t9,688(t2)
    7248:	ac8e0004 	sw	t6,4(a0)
    724c:	ac980000 	sw	t8,0(a0)
    7250:	8d4402b0 	lw	a0,688(t2)
    7254:	248f0008 	addiu	t7,a0,8
    7258:	ad4f02b0 	sw	t7,688(t2)
    725c:	8d620000 	lw	v0,0(t3)
    7260:	84590546 	lh	t9,1350(v0)
    7264:	27380008 	addiu	t8,t9,8
    7268:	00187080 	sll	t6,t8,0x2
    726c:	84580544 	lh	t8,1348(v0)
    7270:	31cf0fff 	andi	t7,t6,0xfff
    7274:	01e1c825 	or	t9,t7,at
    7278:	270e0020 	addiu	t6,t8,32
    727c:	000e7880 	sll	t7,t6,0x2
    7280:	31f80fff 	andi	t8,t7,0xfff
    7284:	00187300 	sll	t6,t8,0xc
    7288:	032e7825 	or	t7,t9,t6
    728c:	ac8f0000 	sw	t7,0(a0)
    7290:	8d620000 	lw	v0,0(t3)
    7294:	84580546 	lh	t8,1350(v0)
    7298:	844f0544 	lh	t7,1348(v0)
    729c:	0018c880 	sll	t9,t8,0x2
    72a0:	332e0fff 	andi	t6,t9,0xfff
    72a4:	000fc080 	sll	t8,t7,0x2
    72a8:	33190fff 	andi	t9,t8,0xfff
    72ac:	00197b00 	sll	t7,t9,0xc
    72b0:	01cfc025 	or	t8,t6,t7
    72b4:	ac980004 	sw	t8,4(a0)
    72b8:	8d4402b0 	lw	a0,688(t2)
    72bc:	3c0ee100 	lui	t6,0xe100
    72c0:	3c18f100 	lui	t8,0xf100
    72c4:	24990008 	addiu	t9,a0,8
    72c8:	ad5902b0 	sw	t9,688(t2)
    72cc:	ac800004 	sw	zero,4(a0)
    72d0:	ac8e0000 	sw	t6,0(a0)
    72d4:	8d4402b0 	lw	a0,688(t2)
    72d8:	3c190400 	lui	t9,0x400
    72dc:	37390400 	ori	t9,t9,0x400
    72e0:	248f0008 	addiu	t7,a0,8
    72e4:	ad4f02b0 	sw	t7,688(t2)
    72e8:	ac990004 	sw	t9,4(a0)
    72ec:	ac980000 	sw	t8,0(a0)
    72f0:	3c020000 	lui	v0,0x0
    72f4:	24420000 	addiu	v0,v0,0
    72f8:	944e0000 	lhu	t6,0(v0)
    72fc:	25cfffff 	addiu	t7,t6,-1
    7300:	31f8ffff 	andi	t8,t7,0xffff
    7304:	17000006 	bnez	t8,7320 <Interface_DrawItemButtons+0xc44>
    7308:	a44f0000 	sh	t7,0(v0)
    730c:	94d90000 	lhu	t9,0(a2)
    7310:	240f000a 	li	t7,10
    7314:	a44f0000 	sh	t7,0(v0)
    7318:	3b2e0001 	xori	t6,t9,0x1
    731c:	a4ce0000 	sh	t6,0(a2)
    7320:	8d4402b0 	lw	a0,688(t2)
    7324:	24090001 	li	t1,1
    7328:	24980008 	addiu	t8,a0,8
    732c:	ad5802b0 	sw	t8,688(t2)
    7330:	ac800004 	sw	zero,4(a0)
    7334:	ac880000 	sw	t0,0(a0)
    7338:	03e9c821 	addu	t9,ra,t1
    733c:	932e0068 	lbu	t6,104(t9)
    7340:	29c100f1 	slti	at,t6,241
    7344:	14200065 	bnez	at,74dc <Interface_DrawItemButtons+0xe00>
    7348:	24010001 	li	at,1
    734c:	55210016 	bnel	t1,at,73a8 <Interface_DrawItemButtons+0xccc>
    7350:	24010002 	li	at,2
    7354:	8d4402b0 	lw	a0,688(t2)
    7358:	248f0008 	addiu	t7,a0,8
    735c:	ad4f02b0 	sw	t7,688(t2)
    7360:	ac8d0000 	sw	t5,0(a0)
    7364:	8d620000 	lw	v0,0(t3)
    7368:	845807e6 	lh	t8,2022(v0)
    736c:	331900ff 	andi	t9,t8,0xff
    7370:	845807e2 	lh	t8,2018(v0)
    7374:	00197200 	sll	t6,t9,0x8
    7378:	0018ce00 	sll	t9,t8,0x18
    737c:	845807e4 	lh	t8,2020(v0)
    7380:	01d97825 	or	t7,t6,t9
    7384:	330e00ff 	andi	t6,t8,0xff
    7388:	000ecc00 	sll	t9,t6,0x10
    738c:	958e024a 	lhu	t6,586(t4)
    7390:	01f9c025 	or	t8,t7,t9
    7394:	31cf00ff 	andi	t7,t6,0xff
    7398:	030fc825 	or	t9,t8,t7
    739c:	1000002b 	b	744c <Interface_DrawItemButtons+0xd70>
    73a0:	ac990004 	sw	t9,4(a0)
    73a4:	24010002 	li	at,2
    73a8:	55210016 	bnel	t1,at,7404 <Interface_DrawItemButtons+0xd28>
    73ac:	8d4402b0 	lw	a0,688(t2)
    73b0:	8d4402b0 	lw	a0,688(t2)
    73b4:	248e0008 	addiu	t6,a0,8
    73b8:	ad4e02b0 	sw	t6,688(t2)
    73bc:	ac8d0000 	sw	t5,0(a0)
    73c0:	8d620000 	lw	v0,0(t3)
    73c4:	845807e6 	lh	t8,2022(v0)
    73c8:	330f00ff 	andi	t7,t8,0xff
    73cc:	845807e2 	lh	t8,2018(v0)
    73d0:	000fca00 	sll	t9,t7,0x8
    73d4:	00187e00 	sll	t7,t8,0x18
    73d8:	845807e4 	lh	t8,2020(v0)
    73dc:	032f7025 	or	t6,t9,t7
    73e0:	331900ff 	andi	t9,t8,0xff
    73e4:	00197c00 	sll	t7,t9,0x10
    73e8:	9599024c 	lhu	t9,588(t4)
    73ec:	01cfc025 	or	t8,t6,t7
    73f0:	332e00ff 	andi	t6,t9,0xff
    73f4:	030e7825 	or	t7,t8,t6
    73f8:	10000014 	b	744c <Interface_DrawItemButtons+0xd70>
    73fc:	ac8f0004 	sw	t7,4(a0)
    7400:	8d4402b0 	lw	a0,688(t2)
    7404:	24990008 	addiu	t9,a0,8
    7408:	ad5902b0 	sw	t9,688(t2)
    740c:	ac8d0000 	sw	t5,0(a0)
    7410:	8d620000 	lw	v0,0(t3)
    7414:	845807e6 	lh	t8,2022(v0)
    7418:	330e00ff 	andi	t6,t8,0xff
    741c:	845807e2 	lh	t8,2018(v0)
    7420:	000e7a00 	sll	t7,t6,0x8
    7424:	00187600 	sll	t6,t8,0x18
    7428:	845807e4 	lh	t8,2020(v0)
    742c:	01eec825 	or	t9,t7,t6
    7430:	330f00ff 	andi	t7,t8,0xff
    7434:	000f7400 	sll	t6,t7,0x10
    7438:	958f024e 	lhu	t7,590(t4)
    743c:	032ec025 	or	t8,t9,t6
    7440:	31f900ff 	andi	t9,t7,0xff
    7444:	03197025 	or	t6,t8,t9
    7448:	ac8e0004 	sw	t6,4(a0)
    744c:	8d6e0000 	lw	t6,0(t3)
    7450:	00097a80 	sll	t7,t1,0xa
    7454:	25f80400 	addiu	t8,t7,1024
    7458:	3c190000 	lui	t9,0x0
    745c:	27390000 	addiu	t9,t9,0
    7460:	00097840 	sll	t7,t1,0x1
    7464:	03192821 	addu	a1,t8,t9
    7468:	01cf1021 	addu	v0,t6,t7
    746c:	84580820 	lh	t8,2080(v0)
    7470:	8d4402b0 	lw	a0,688(t2)
    7474:	24060020 	li	a2,32
    7478:	afb80010 	sw	t8,16(sp)
    747c:	84590828 	lh	t9,2088(v0)
    7480:	24070020 	li	a3,32
    7484:	afb90014 	sw	t9,20(sp)
    7488:	84430fb4 	lh	v1,4020(v0)
    748c:	afa30018 	sw	v1,24(sp)
    7490:	afa3001c 	sw	v1,28(sp)
    7494:	84480830 	lh	t0,2096(v0)
    7498:	afac003c 	sw	t4,60(sp)
    749c:	afaa0140 	sw	t2,320(sp)
    74a0:	00084040 	sll	t0,t0,0x1
    74a4:	3108ffff 	andi	t0,t0,0xffff
    74a8:	afa80020 	sw	t0,32(sp)
    74ac:	afa80024 	sw	t0,36(sp)
    74b0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    74b4:	a7a9014a 	sh	t1,330(sp)
    74b8:	8faa0140 	lw	t2,320(sp)
    74bc:	87a9014a 	lh	t1,330(sp)
    74c0:	3c0b0000 	lui	t3,0x0
    74c4:	8fac003c 	lw	t4,60(sp)
    74c8:	3c1f0000 	lui	ra,0x0
    74cc:	27ff0000 	addiu	ra,ra,0
    74d0:	256b0000 	addiu	t3,t3,0
    74d4:	3c0dfa00 	lui	t5,0xfa00
    74d8:	ad4202b0 	sw	v0,688(t2)
    74dc:	25290001 	addiu	t1,t1,1
    74e0:	00094c00 	sll	t1,t1,0x10
    74e4:	00094c03 	sra	t1,t1,0x10
    74e8:	29210004 	slti	at,t1,4
    74ec:	5420ff93 	bnezl	at,733c <Interface_DrawItemButtons+0xc60>
    74f0:	03e9c821 	addu	t9,ra,t1
    74f4:	8fae0158 	lw	t6,344(sp)
    74f8:	3c060000 	lui	a2,0x0
    74fc:	24c605fc 	addiu	a2,a2,1532
    7500:	27a40130 	addiu	a0,sp,304
    7504:	24070bff 	li	a3,3071
    7508:	0c000000 	jal	0 <Interface_ChangeAlpha>
    750c:	8dc50000 	lw	a1,0(t6)
    7510:	8fbf002c 	lw	ra,44(sp)
    7514:	27bd0158 	addiu	sp,sp,344
    7518:	03e00008 	jr	ra
    751c:	00000000 	nop

00007520 <Interface_DrawItemIconTexture>:
    7520:	27bdffa0 	addiu	sp,sp,-96
    7524:	afbf0014 	sw	ra,20(sp)
    7528:	afa40060 	sw	a0,96(sp)
    752c:	afa50064 	sw	a1,100(sp)
    7530:	afa60068 	sw	a2,104(sp)
    7534:	8c850000 	lw	a1,0(a0)
    7538:	3c060000 	lui	a2,0x0
    753c:	24c60610 	addiu	a2,a2,1552
    7540:	27a4004c 	addiu	a0,sp,76
    7544:	24070c07 	li	a3,3079
    7548:	0c000000 	jal	0 <Interface_ChangeAlpha>
    754c:	afa5005c 	sw	a1,92(sp)
    7550:	8fa8005c 	lw	t0,92(sp)
    7554:	3c18fd18 	lui	t8,0xfd18
    7558:	3c0af518 	lui	t2,0xf518
    755c:	8d0202b0 	lw	v0,688(t0)
    7560:	3c0b0700 	lui	t3,0x700
    7564:	3c0de600 	lui	t5,0xe600
    7568:	244f0008 	addiu	t7,v0,8
    756c:	ad0f02b0 	sw	t7,688(t0)
    7570:	ac580000 	sw	t8,0(v0)
    7574:	8fb90064 	lw	t9,100(sp)
    7578:	3c18073f 	lui	t8,0x73f
    757c:	3718f080 	ori	t8,t8,0xf080
    7580:	ac590004 	sw	t9,4(v0)
    7584:	8d0202b0 	lw	v0,688(t0)
    7588:	3c0ff300 	lui	t7,0xf300
    758c:	3c070000 	lui	a3,0x0
    7590:	24490008 	addiu	t1,v0,8
    7594:	ad0902b0 	sw	t1,688(t0)
    7598:	ac4b0004 	sw	t3,4(v0)
    759c:	ac4a0000 	sw	t2,0(v0)
    75a0:	8d0202b0 	lw	v0,688(t0)
    75a4:	3c09e700 	lui	t1,0xe700
    75a8:	3c0bf518 	lui	t3,0xf518
    75ac:	244c0008 	addiu	t4,v0,8
    75b0:	ad0c02b0 	sw	t4,688(t0)
    75b4:	ac400004 	sw	zero,4(v0)
    75b8:	ac4d0000 	sw	t5,0(v0)
    75bc:	8d0202b0 	lw	v0,688(t0)
    75c0:	356b1000 	ori	t3,t3,0x1000
    75c4:	3c0df200 	lui	t5,0xf200
    75c8:	244e0008 	addiu	t6,v0,8
    75cc:	ad0e02b0 	sw	t6,688(t0)
    75d0:	ac580004 	sw	t8,4(v0)
    75d4:	ac4f0000 	sw	t7,0(v0)
    75d8:	8d0202b0 	lw	v0,688(t0)
    75dc:	3c0e0007 	lui	t6,0x7
    75e0:	35cec07c 	ori	t6,t6,0xc07c
    75e4:	24590008 	addiu	t9,v0,8
    75e8:	ad1902b0 	sw	t9,688(t0)
    75ec:	ac400004 	sw	zero,4(v0)
    75f0:	ac490000 	sw	t1,0(v0)
    75f4:	8d0202b0 	lw	v0,688(t0)
    75f8:	24e70000 	addiu	a3,a3,0
    75fc:	3c01e400 	lui	at,0xe400
    7600:	244a0008 	addiu	t2,v0,8
    7604:	ad0a02b0 	sw	t2,688(t0)
    7608:	ac400004 	sw	zero,4(v0)
    760c:	ac4b0000 	sw	t3,0(v0)
    7610:	8d0202b0 	lw	v0,688(t0)
    7614:	244c0008 	addiu	t4,v0,8
    7618:	ad0c02b0 	sw	t4,688(t0)
    761c:	ac4e0004 	sw	t6,4(v0)
    7620:	ac4d0000 	sw	t5,0(v0)
    7624:	8d0202b0 	lw	v0,688(t0)
    7628:	244f0008 	addiu	t7,v0,8
    762c:	ad0f02b0 	sw	t7,688(t0)
    7630:	87a6006a 	lh	a2,106(sp)
    7634:	8cf80000 	lw	t8,0(a3)
    7638:	00063040 	sll	a2,a2,0x1
    763c:	03061821 	addu	v1,t8,a2
    7640:	84650fac 	lh	a1,4012(v1)
    7644:	84790840 	lh	t9,2112(v1)
    7648:	846d0838 	lh	t5,2104(v1)
    764c:	00b94821 	addu	t1,a1,t9
    7650:	01a57021 	addu	t6,t5,a1
    7654:	000e7880 	sll	t7,t6,0x2
    7658:	00095080 	sll	t2,t1,0x2
    765c:	314b0fff 	andi	t3,t2,0xfff
    7660:	31f80fff 	andi	t8,t7,0xfff
    7664:	0018cb00 	sll	t9,t8,0xc
    7668:	01616025 	or	t4,t3,at
    766c:	01994825 	or	t1,t4,t9
    7670:	ac490000 	sw	t1,0(v0)
    7674:	8cea0000 	lw	t2,0(a3)
    7678:	01461821 	addu	v1,t2,a2
    767c:	846f0838 	lh	t7,2104(v1)
    7680:	846b0840 	lh	t3,2112(v1)
    7684:	000fc080 	sll	t8,t7,0x2
    7688:	330c0fff 	andi	t4,t8,0xfff
    768c:	000b6880 	sll	t5,t3,0x2
    7690:	31ae0fff 	andi	t6,t5,0xfff
    7694:	000ccb00 	sll	t9,t4,0xc
    7698:	01d94825 	or	t1,t6,t9
    769c:	ac490004 	sw	t1,4(v0)
    76a0:	8d0202b0 	lw	v0,688(t0)
    76a4:	3c0be100 	lui	t3,0xe100
    76a8:	3c0ff100 	lui	t7,0xf100
    76ac:	244a0008 	addiu	t2,v0,8
    76b0:	ad0a02b0 	sw	t2,688(t0)
    76b4:	ac400004 	sw	zero,4(v0)
    76b8:	ac4b0000 	sw	t3,0(v0)
    76bc:	8d0202b0 	lw	v0,688(t0)
    76c0:	244d0008 	addiu	t5,v0,8
    76c4:	ad0d02b0 	sw	t5,688(t0)
    76c8:	ac4f0000 	sw	t7,0(v0)
    76cc:	8cf80000 	lw	t8,0(a3)
    76d0:	24070c16 	li	a3,3094
    76d4:	03066021 	addu	t4,t8,a2
    76d8:	85840848 	lh	a0,2120(t4)
    76dc:	3c060000 	lui	a2,0x0
    76e0:	24c60624 	addiu	a2,a2,1572
    76e4:	00042040 	sll	a0,a0,0x1
    76e8:	3084ffff 	andi	a0,a0,0xffff
    76ec:	00047400 	sll	t6,a0,0x10
    76f0:	008ec825 	or	t9,a0,t6
    76f4:	ac590004 	sw	t9,4(v0)
    76f8:	8fa90060 	lw	t1,96(sp)
    76fc:	27a4004c 	addiu	a0,sp,76
    7700:	0c000000 	jal	0 <Interface_ChangeAlpha>
    7704:	8d250000 	lw	a1,0(t1)
    7708:	8fbf0014 	lw	ra,20(sp)
    770c:	27bd0060 	addiu	sp,sp,96
    7710:	03e00008 	jr	ra
    7714:	00000000 	nop

00007718 <Interface_DrawAmmoCount>:
    7718:	27bdffa0 	addiu	sp,sp,-96
    771c:	afbf002c 	sw	ra,44(sp)
    7720:	afa40060 	sw	a0,96(sp)
    7724:	afa50064 	sw	a1,100(sp)
    7728:	afa60068 	sw	a2,104(sp)
    772c:	8c850000 	lw	a1,0(a0)
    7730:	3c060000 	lui	a2,0x0
    7734:	24c60638 	addiu	a2,a2,1592
    7738:	27a40048 	addiu	a0,sp,72
    773c:	24070c21 	li	a3,3105
    7740:	0c000000 	jal	0 <Interface_ChangeAlpha>
    7744:	afa50058 	sw	a1,88(sp)
    7748:	87aa0066 	lh	t2,102(sp)
    774c:	3c070000 	lui	a3,0x0
    7750:	24e70000 	addiu	a3,a3,0
    7754:	00ea7821 	addu	t7,a3,t2
    7758:	91e20068 	lbu	v0,104(t7)
    775c:	8fa90058 	lw	t1,88(sp)
    7760:	24010001 	li	at,1
    7764:	10400010 	beqz	v0,77a8 <Interface_DrawAmmoCount+0x90>
    7768:	3c180000 	lui	t8,0x0
    776c:	1041000e 	beq	v0,at,77a8 <Interface_DrawAmmoCount+0x90>
    7770:	24010002 	li	at,2
    7774:	1041000c 	beq	v0,at,77a8 <Interface_DrawAmmoCount+0x90>
    7778:	24010003 	li	at,3
    777c:	1041000a 	beq	v0,at,77a8 <Interface_DrawAmmoCount+0x90>
    7780:	28410038 	slti	at,v0,56
    7784:	14200002 	bnez	at,7790 <Interface_DrawAmmoCount+0x78>
    7788:	2841003b 	slti	at,v0,59
    778c:	14200006 	bnez	at,77a8 <Interface_DrawAmmoCount+0x90>
    7790:	24010006 	li	at,6
    7794:	10410004 	beq	v0,at,77a8 <Interface_DrawAmmoCount+0x90>
    7798:	24010009 	li	at,9
    779c:	10410002 	beq	v0,at,77a8 <Interface_DrawAmmoCount+0x90>
    77a0:	24010010 	li	at,16
    77a4:	14410102 	bne	v0,at,7bb0 <Interface_DrawAmmoCount+0x498>
    77a8:	28410038 	slti	at,v0,56
    77ac:	14200005 	bnez	at,77c4 <Interface_DrawAmmoCount+0xac>
    77b0:	27180000 	addiu	t8,t8,0
    77b4:	2841003b 	slti	at,v0,59
    77b8:	50200003 	beqzl	at,77c8 <Interface_DrawAmmoCount+0xb0>
    77bc:	00583021 	addu	a2,v0,t8
    77c0:	24020003 	li	v0,3
    77c4:	00583021 	addu	a2,v0,t8
    77c8:	90d90000 	lbu	t9,0(a2)
    77cc:	8d2202b0 	lw	v0,688(t1)
    77d0:	3c0de700 	lui	t5,0xe700
    77d4:	00f95821 	addu	t3,a3,t9
    77d8:	8163008c 	lb	v1,140(t3)
    77dc:	244c0008 	addiu	t4,v0,8
    77e0:	ad2c02b0 	sw	t4,688(t1)
    77e4:	ac400004 	sw	zero,4(v0)
    77e8:	1540000a 	bnez	t2,7814 <Interface_DrawAmmoCount+0xfc>
    77ec:	ac4d0000 	sw	t5,0(v0)
    77f0:	94ee1404 	lhu	t6,5124(a3)
    77f4:	24010001 	li	at,1
    77f8:	8faf0060 	lw	t7,96(sp)
    77fc:	15c10005 	bne	t6,at,7814 <Interface_DrawAmmoCount+0xfc>
    7800:	00000000 	nop
    7804:	3c030001 	lui	v1,0x1
    7808:	006f1821 	addu	v1,v1,t7
    780c:	10000096 	b	7a68 <Interface_DrawAmmoCount+0x350>
    7810:	8463072e 	lh	v1,1838(v1)
    7814:	1540000b 	bnez	t2,7844 <Interface_DrawAmmoCount+0x12c>
    7818:	8fb80060 	lw	t8,96(sp)
    781c:	3c020001 	lui	v0,0x1
    7820:	00581021 	addu	v0,v0,t8
    7824:	80421e5c 	lb	v0,7772(v0)
    7828:	28410002 	slti	at,v0,2
    782c:	14200005 	bnez	at,7844 <Interface_DrawAmmoCount+0x12c>
    7830:	00000000 	nop
    7834:	2443ffff 	addiu	v1,v0,-1
    7838:	00031c00 	sll	v1,v1,0x10
    783c:	1000008a 	b	7a68 <Interface_DrawAmmoCount+0x350>
    7840:	00031c03 	sra	v1,v1,0x10
    7844:	15400019 	bnez	t2,78ac <Interface_DrawAmmoCount+0x194>
    7848:	8fb90060 	lw	t9,96(sp)
    784c:	872b00a4 	lh	t3,164(t9)
    7850:	2401004b 	li	at,75
    7854:	03202025 	move	a0,t9
    7858:	15610014 	bne	t3,at,78ac <Interface_DrawAmmoCount+0x194>
    785c:	24050038 	li	a1,56
    7860:	a7a3005c 	sh	v1,92(sp)
    7864:	afa60038 	sw	a2,56(sp)
    7868:	0c000000 	jal	0 <Interface_ChangeAlpha>
    786c:	afa90058 	sw	t1,88(sp)
    7870:	3c070000 	lui	a3,0x0
    7874:	24e70000 	addiu	a3,a3,0
    7878:	87a3005c 	lh	v1,92(sp)
    787c:	8fa60038 	lw	a2,56(sp)
    7880:	8fa90058 	lw	t1,88(sp)
    7884:	10400009 	beqz	v0,78ac <Interface_DrawAmmoCount+0x194>
    7888:	87aa0066 	lh	t2,102(sp)
    788c:	8fac0060 	lw	t4,96(sp)
    7890:	3c030001 	lui	v1,0x1
    7894:	006c1821 	addu	v1,v1,t4
    7898:	80631e5d 	lb	v1,7773(v1)
    789c:	04610072 	bgez	v1,7a68 <Interface_DrawAmmoCount+0x350>
    78a0:	00000000 	nop
    78a4:	10000070 	b	7a68 <Interface_DrawAmmoCount+0x350>
    78a8:	00001825 	move	v1,zero
    78ac:	3c0d0000 	lui	t5,0x0
    78b0:	25ad0003 	addiu	t5,t5,3
    78b4:	14cd0012 	bne	a2,t5,7900 <Interface_DrawAmmoCount+0x1e8>
    78b8:	3c020000 	lui	v0,0x0
    78bc:	3c040000 	lui	a0,0x0
    78c0:	90ce0000 	lbu	t6,0(a2)
    78c4:	24840000 	addiu	a0,a0,0
    78c8:	3c050000 	lui	a1,0x0
    78cc:	8c990000 	lw	t9,0(a0)
    78d0:	8ceb00a0 	lw	t3,160(a3)
    78d4:	24a50000 	addiu	a1,a1,0
    78d8:	90ad0000 	lbu	t5,0(a1)
    78dc:	00ee7821 	addu	t7,a3,t6
    78e0:	01796024 	and	t4,t3,t9
    78e4:	81f8008c 	lb	t8,140(t7)
    78e8:	01ac7007 	srav	t6,t4,t5
    78ec:	000e7840 	sll	t7,t6,0x1
    78f0:	24420000 	addiu	v0,v0,0
    78f4:	004f5821 	addu	t3,v0,t7
    78f8:	95790000 	lhu	t9,0(t3)
    78fc:	13190050 	beq	t8,t9,7a40 <Interface_DrawAmmoCount+0x328>
    7900:	3c0c0000 	lui	t4,0x0
    7904:	258c0002 	addiu	t4,t4,2
    7908:	3c020000 	lui	v0,0x0
    790c:	3c040000 	lui	a0,0x0
    7910:	3c050000 	lui	a1,0x0
    7914:	24a50000 	addiu	a1,a1,0
    7918:	24840000 	addiu	a0,a0,0
    791c:	14cc000d 	bne	a2,t4,7954 <Interface_DrawAmmoCount+0x23c>
    7920:	24420000 	addiu	v0,v0,0
    7924:	90cd0000 	lbu	t5,0(a2)
    7928:	8ceb00a0 	lw	t3,160(a3)
    792c:	8c980004 	lw	t8,4(a0)
    7930:	90ac0001 	lbu	t4,1(a1)
    7934:	00ed7021 	addu	t6,a3,t5
    7938:	0178c824 	and	t9,t3,t8
    793c:	81cf008c 	lb	t7,140(t6)
    7940:	01996807 	srav	t5,t9,t4
    7944:	000d7040 	sll	t6,t5,0x1
    7948:	004e5821 	addu	t3,v0,t6
    794c:	95780008 	lhu	t8,8(t3)
    7950:	11f8003b 	beq	t7,t8,7a40 <Interface_DrawAmmoCount+0x328>
    7954:	3c190000 	lui	t9,0x0
    7958:	27390006 	addiu	t9,t9,6
    795c:	14d9000d 	bne	a2,t9,7994 <Interface_DrawAmmoCount+0x27c>
    7960:	00000000 	nop
    7964:	90cc0000 	lbu	t4,0(a2)
    7968:	8ceb00a0 	lw	t3,160(a3)
    796c:	8c8f0014 	lw	t7,20(a0)
    7970:	90b90005 	lbu	t9,5(a1)
    7974:	00ec6821 	addu	t5,a3,t4
    7978:	016fc024 	and	t8,t3,t7
    797c:	81ae008c 	lb	t6,140(t5)
    7980:	03386007 	srav	t4,t8,t9
    7984:	000c6840 	sll	t5,t4,0x1
    7988:	004d5821 	addu	t3,v0,t5
    798c:	956f0028 	lhu	t7,40(t3)
    7990:	11cf002b 	beq	t6,t7,7a40 <Interface_DrawAmmoCount+0x328>
    7994:	3c180000 	lui	t8,0x0
    7998:	27180000 	addiu	t8,t8,0
    799c:	14d8000d 	bne	a2,t8,79d4 <Interface_DrawAmmoCount+0x2bc>
    79a0:	00000000 	nop
    79a4:	90d90000 	lbu	t9,0(a2)
    79a8:	8ceb00a0 	lw	t3,160(a3)
    79ac:	8c8e0018 	lw	t6,24(a0)
    79b0:	90b80006 	lbu	t8,6(a1)
    79b4:	00f96021 	addu	t4,a3,t9
    79b8:	016e7824 	and	t7,t3,t6
    79bc:	818d008c 	lb	t5,140(t4)
    79c0:	030fc807 	srav	t9,t7,t8
    79c4:	00196040 	sll	t4,t9,0x1
    79c8:	004c5821 	addu	t3,v0,t4
    79cc:	956e0030 	lhu	t6,48(t3)
    79d0:	11ae001b 	beq	t5,t6,7a40 <Interface_DrawAmmoCount+0x328>
    79d4:	3c0f0000 	lui	t7,0x0
    79d8:	25ef0001 	addiu	t7,t7,1
    79dc:	14cf000d 	bne	a2,t7,7a14 <Interface_DrawAmmoCount+0x2fc>
    79e0:	00000000 	nop
    79e4:	90d80000 	lbu	t8,0(a2)
    79e8:	8ceb00a0 	lw	t3,160(a3)
    79ec:	8c8d001c 	lw	t5,28(a0)
    79f0:	90af0007 	lbu	t7,7(a1)
    79f4:	00f8c821 	addu	t9,a3,t8
    79f8:	016d7024 	and	t6,t3,t5
    79fc:	832c008c 	lb	t4,140(t9)
    7a00:	01eec007 	srav	t8,t6,t7
    7a04:	0018c840 	sll	t9,t8,0x1
    7a08:	00595821 	addu	t3,v0,t9
    7a0c:	956d0038 	lhu	t5,56(t3)
    7a10:	118d000b 	beq	t4,t5,7a40 <Interface_DrawAmmoCount+0x328>
    7a14:	3c0e0000 	lui	t6,0x0
    7a18:	25ce0009 	addiu	t6,t6,9
    7a1c:	14ce0002 	bne	a2,t6,7a28 <Interface_DrawAmmoCount+0x310>
    7a20:	24010032 	li	at,50
    7a24:	10610006 	beq	v1,at,7a40 <Interface_DrawAmmoCount+0x328>
    7a28:	3c0f0000 	lui	t7,0x0
    7a2c:	25ef0010 	addiu	t7,t7,16
    7a30:	14cf000d 	bne	a2,t7,7a68 <Interface_DrawAmmoCount+0x350>
    7a34:	2401000f 	li	at,15
    7a38:	1461000b 	bne	v1,at,7a68 <Interface_DrawAmmoCount+0x350>
    7a3c:	00000000 	nop
    7a40:	8d2202b0 	lw	v0,688(t1)
    7a44:	3c19fa00 	lui	t9,0xfa00
    7a48:	3c0178ff 	lui	at,0x78ff
    7a4c:	24580008 	addiu	t8,v0,8
    7a50:	ad3802b0 	sw	t8,688(t1)
    7a54:	ac590000 	sw	t9,0(v0)
    7a58:	87ab006a 	lh	t3,106(sp)
    7a5c:	316c00ff 	andi	t4,t3,0xff
    7a60:	01816825 	or	t5,t4,at
    7a64:	ac4d0004 	sw	t5,4(v0)
    7a68:	1460000b 	bnez	v1,7a98 <Interface_DrawAmmoCount+0x380>
    7a6c:	87a5006a 	lh	a1,106(sp)
    7a70:	8d2202b0 	lw	v0,688(t1)
    7a74:	3c016464 	lui	at,0x6464
    7a78:	34216400 	ori	at,at,0x6400
    7a7c:	244e0008 	addiu	t6,v0,8
    7a80:	ad2e02b0 	sw	t6,688(t1)
    7a84:	30a500ff 	andi	a1,a1,0xff
    7a88:	00a1c025 	or	t8,a1,at
    7a8c:	3c0ffa00 	lui	t7,0xfa00
    7a90:	ac4f0000 	sw	t7,0(v0)
    7a94:	ac580004 	sw	t8,4(v0)
    7a98:	2861000a 	slti	at,v1,10
    7a9c:	14200009 	bnez	at,7ac4 <Interface_DrawAmmoCount+0x3ac>
    7aa0:	00001025 	move	v0,zero
    7aa4:	2463fff6 	addiu	v1,v1,-10
    7aa8:	00031c00 	sll	v1,v1,0x10
    7aac:	24420001 	addiu	v0,v0,1
    7ab0:	00031c03 	sra	v1,v1,0x10
    7ab4:	2861000a 	slti	at,v1,10
    7ab8:	00021400 	sll	v0,v0,0x10
    7abc:	1020fff9 	beqz	at,7aa4 <Interface_DrawAmmoCount+0x38c>
    7ac0:	00021403 	sra	v0,v0,0x10
    7ac4:	1040001e 	beqz	v0,7b40 <Interface_DrawAmmoCount+0x428>
    7ac8:	0002c980 	sll	t9,v0,0x6
    7acc:	3c0c0000 	lui	t4,0x0
    7ad0:	8d8c0000 	lw	t4,0(t4)
    7ad4:	000a6840 	sll	t5,t2,0x1
    7ad8:	8d2402b0 	lw	a0,688(t1)
    7adc:	018d4021 	addu	t0,t4,t5
    7ae0:	850e0f94 	lh	t6,3988(t0)
    7ae4:	3c0b0000 	lui	t3,0x0
    7ae8:	256b0000 	addiu	t3,t3,0
    7aec:	afae0010 	sw	t6,16(sp)
    7af0:	850f0f9c 	lh	t7,3996(t0)
    7af4:	032b2821 	addu	a1,t9,t3
    7af8:	240b0400 	li	t3,1024
    7afc:	24190008 	li	t9,8
    7b00:	240c0400 	li	t4,1024
    7b04:	24180008 	li	t8,8
    7b08:	afb80018 	sw	t8,24(sp)
    7b0c:	afac0024 	sw	t4,36(sp)
    7b10:	afb9001c 	sw	t9,28(sp)
    7b14:	afab0020 	sw	t3,32(sp)
    7b18:	afa90058 	sw	t1,88(sp)
    7b1c:	a7a3005c 	sh	v1,92(sp)
    7b20:	24060008 	li	a2,8
    7b24:	24070008 	li	a3,8
    7b28:	0c000000 	jal	0 <Interface_ChangeAlpha>
    7b2c:	afaf0014 	sw	t7,20(sp)
    7b30:	8fa90058 	lw	t1,88(sp)
    7b34:	87a3005c 	lh	v1,92(sp)
    7b38:	87aa0066 	lh	t2,102(sp)
    7b3c:	ad2202b0 	sw	v0,688(t1)
    7b40:	3c0f0000 	lui	t7,0x0
    7b44:	8def0000 	lw	t7,0(t7)
    7b48:	000ac040 	sll	t8,t2,0x1
    7b4c:	8d2402b0 	lw	a0,688(t1)
    7b50:	01f84021 	addu	t0,t7,t8
    7b54:	85190f94 	lh	t9,3988(t0)
    7b58:	3c0e0000 	lui	t6,0x0
    7b5c:	25ce0000 	addiu	t6,t6,0
    7b60:	272b0006 	addiu	t3,t9,6
    7b64:	afab0010 	sw	t3,16(sp)
    7b68:	850c0f9c 	lh	t4,3996(t0)
    7b6c:	00036980 	sll	t5,v1,0x6
    7b70:	01ae2821 	addu	a1,t5,t6
    7b74:	240e0008 	li	t6,8
    7b78:	240d0008 	li	t5,8
    7b7c:	24180400 	li	t8,1024
    7b80:	240f0400 	li	t7,1024
    7b84:	afaf0020 	sw	t7,32(sp)
    7b88:	afb80024 	sw	t8,36(sp)
    7b8c:	afad0018 	sw	t5,24(sp)
    7b90:	afae001c 	sw	t6,28(sp)
    7b94:	afa90058 	sw	t1,88(sp)
    7b98:	24060008 	li	a2,8
    7b9c:	24070008 	li	a3,8
    7ba0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    7ba4:	afac0014 	sw	t4,20(sp)
    7ba8:	8fa90058 	lw	t1,88(sp)
    7bac:	ad2202b0 	sw	v0,688(t1)
    7bb0:	8fb90060 	lw	t9,96(sp)
    7bb4:	3c060000 	lui	a2,0x0
    7bb8:	24c6064c 	addiu	a2,a2,1612
    7bbc:	27a40048 	addiu	a0,sp,72
    7bc0:	24070c56 	li	a3,3158
    7bc4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    7bc8:	8f250000 	lw	a1,0(t9)
    7bcc:	8fbf002c 	lw	ra,44(sp)
    7bd0:	27bd0060 	addiu	sp,sp,96
    7bd4:	03e00008 	jr	ra
    7bd8:	00000000 	nop

00007bdc <Interface_DrawActionButton>:
    7bdc:	27bdffa0 	addiu	sp,sp,-96
    7be0:	afbf0014 	sw	ra,20(sp)
    7be4:	afa40060 	sw	a0,96(sp)
    7be8:	8c850000 	lw	a1,0(a0)
    7bec:	3c060000 	lui	a2,0x0
    7bf0:	24c60660 	addiu	a2,a2,1632
    7bf4:	27a40048 	addiu	a0,sp,72
    7bf8:	24070c64 	li	a3,3172
    7bfc:	0c000000 	jal	0 <Interface_ChangeAlpha>
    7c00:	afa50058 	sw	a1,88(sp)
    7c04:	3c0f0000 	lui	t7,0x0
    7c08:	8def0000 	lw	t7,0(t7)
    7c0c:	3c014120 	lui	at,0x4120
    7c10:	44814000 	mtc1	at,$f8
    7c14:	85f80ab8 	lh	t8,2744(t7)
    7c18:	44806000 	mtc1	zero,$f12
    7c1c:	00003825 	move	a3,zero
    7c20:	44982000 	mtc1	t8,$f4
    7c24:	46006386 	mov.s	$f14,$f12
    7c28:	468021a0 	cvt.s.w	$f6,$f4
    7c2c:	46083283 	div.s	$f10,$f6,$f8
    7c30:	44065000 	mfc1	a2,$f10
    7c34:	0c000000 	jal	0 <Interface_ChangeAlpha>
    7c38:	00000000 	nop
    7c3c:	3c013f80 	lui	at,0x3f80
    7c40:	44816000 	mtc1	at,$f12
    7c44:	24070001 	li	a3,1
    7c48:	44066000 	mfc1	a2,$f12
    7c4c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    7c50:	46006386 	mov.s	$f14,$f12
    7c54:	8fa20060 	lw	v0,96(sp)
    7c58:	3c010001 	lui	at,0x1
    7c5c:	342104f0 	ori	at,at,0x4f0
    7c60:	00411021 	addu	v0,v0,at
    7c64:	3c010000 	lui	at,0x0
    7c68:	c4320928 	lwc1	$f18,2344(at)
    7c6c:	c45001f4 	lwc1	$f16,500(v0)
    7c70:	afa2001c 	sw	v0,28(sp)
    7c74:	24050001 	li	a1,1
    7c78:	0c000000 	jal	0 <Interface_ChangeAlpha>
    7c7c:	46128303 	div.s	$f12,$f16,$f18
    7c80:	8fa80058 	lw	t0,88(sp)
    7c84:	3c09da38 	lui	t1,0xda38
    7c88:	35290003 	ori	t1,t1,0x3
    7c8c:	8d0202b0 	lw	v0,688(t0)
    7c90:	3c050000 	lui	a1,0x0
    7c94:	24a50674 	addiu	a1,a1,1652
    7c98:	24590008 	addiu	t9,v0,8
    7c9c:	ad1902b0 	sw	t9,688(t0)
    7ca0:	ac490000 	sw	t1,0(v0)
    7ca4:	8faa0060 	lw	t2,96(sp)
    7ca8:	24060c69 	li	a2,3177
    7cac:	8d440000 	lw	a0,0(t2)
    7cb0:	afa80058 	sw	t0,88(sp)
    7cb4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    7cb8:	afa20044 	sw	v0,68(sp)
    7cbc:	8fa30044 	lw	v1,68(sp)
    7cc0:	8fa80058 	lw	t0,88(sp)
    7cc4:	3c0c0100 	lui	t4,0x100
    7cc8:	ac620004 	sw	v0,4(v1)
    7ccc:	8d0202b0 	lw	v0,688(t0)
    7cd0:	358c4008 	ori	t4,t4,0x4008
    7cd4:	3c190000 	lui	t9,0x0
    7cd8:	244b0008 	addiu	t3,v0,8
    7cdc:	ad0b02b0 	sw	t3,688(t0)
    7ce0:	ac4c0000 	sw	t4,0(v0)
    7ce4:	8fad001c 	lw	t5,28(sp)
    7ce8:	27390000 	addiu	t9,t9,0
    7cec:	3c18fd70 	lui	t8,0xfd70
    7cf0:	8dae0128 	lw	t6,296(t5)
    7cf4:	3c0b0700 	lui	t3,0x700
    7cf8:	3c0af570 	lui	t2,0xf570
    7cfc:	ac4e0004 	sw	t6,4(v0)
    7d00:	8d0202b0 	lw	v0,688(t0)
    7d04:	3c0de600 	lui	t5,0xe600
    7d08:	3c060000 	lui	a2,0x0
    7d0c:	244f0008 	addiu	t7,v0,8
    7d10:	ad0f02b0 	sw	t7,688(t0)
    7d14:	ac590004 	sw	t9,4(v0)
    7d18:	ac580000 	sw	t8,0(v0)
    7d1c:	8d0202b0 	lw	v0,688(t0)
    7d20:	3c18071f 	lui	t8,0x71f
    7d24:	3718f200 	ori	t8,t8,0xf200
    7d28:	24490008 	addiu	t1,v0,8
    7d2c:	ad0902b0 	sw	t1,688(t0)
    7d30:	ac4b0004 	sw	t3,4(v0)
    7d34:	ac4a0000 	sw	t2,0(v0)
    7d38:	8d0202b0 	lw	v0,688(t0)
    7d3c:	3c0ff300 	lui	t7,0xf300
    7d40:	3c09e700 	lui	t1,0xe700
    7d44:	244c0008 	addiu	t4,v0,8
    7d48:	ad0c02b0 	sw	t4,688(t0)
    7d4c:	ac400004 	sw	zero,4(v0)
    7d50:	ac4d0000 	sw	t5,0(v0)
    7d54:	8d0202b0 	lw	v0,688(t0)
    7d58:	3c0bf568 	lui	t3,0xf568
    7d5c:	356b0800 	ori	t3,t3,0x800
    7d60:	244e0008 	addiu	t6,v0,8
    7d64:	ad0e02b0 	sw	t6,688(t0)
    7d68:	ac580004 	sw	t8,4(v0)
    7d6c:	ac4f0000 	sw	t7,0(v0)
    7d70:	8d0202b0 	lw	v0,688(t0)
    7d74:	3c0e0007 	lui	t6,0x7
    7d78:	35cec07c 	ori	t6,t6,0xc07c
    7d7c:	24590008 	addiu	t9,v0,8
    7d80:	ad1902b0 	sw	t9,688(t0)
    7d84:	ac400004 	sw	zero,4(v0)
    7d88:	ac490000 	sw	t1,0(v0)
    7d8c:	8d0202b0 	lw	v0,688(t0)
    7d90:	3c0df200 	lui	t5,0xf200
    7d94:	3c180700 	lui	t8,0x700
    7d98:	244a0008 	addiu	t2,v0,8
    7d9c:	ad0a02b0 	sw	t2,688(t0)
    7da0:	ac400004 	sw	zero,4(v0)
    7da4:	ac4b0000 	sw	t3,0(v0)
    7da8:	8d0202b0 	lw	v0,688(t0)
    7dac:	37180406 	ori	t8,t8,0x406
    7db0:	24190602 	li	t9,1538
    7db4:	244c0008 	addiu	t4,v0,8
    7db8:	ad0c02b0 	sw	t4,688(t0)
    7dbc:	ac4e0004 	sw	t6,4(v0)
    7dc0:	ac4d0000 	sw	t5,0(v0)
    7dc4:	8d0202b0 	lw	v0,688(t0)
    7dc8:	24c60688 	addiu	a2,a2,1672
    7dcc:	27a40048 	addiu	a0,sp,72
    7dd0:	244f0008 	addiu	t7,v0,8
    7dd4:	ad0f02b0 	sw	t7,688(t0)
    7dd8:	ac590004 	sw	t9,4(v0)
    7ddc:	ac580000 	sw	t8,0(v0)
    7de0:	8fa90060 	lw	t1,96(sp)
    7de4:	24070c73 	li	a3,3187
    7de8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    7dec:	8d250000 	lw	a1,0(t1)
    7df0:	8fbf0014 	lw	ra,20(sp)
    7df4:	27bd0060 	addiu	sp,sp,96
    7df8:	03e00008 	jr	ra
    7dfc:	00000000 	nop

00007e00 <Interface_InitVertices>:
    7e00:	27bdffc8 	addiu	sp,sp,-56
    7e04:	afbf0014 	sw	ra,20(sp)
    7e08:	afa40038 	sw	a0,56(sp)
    7e0c:	8c840000 	lw	a0,0(a0)
    7e10:	0c000000 	jal	0 <Interface_ChangeAlpha>
    7e14:	24050080 	li	a1,128
    7e18:	8faa0038 	lw	t2,56(sp)
    7e1c:	3c010001 	lui	at,0x1
    7e20:	342104f0 	ori	at,at,0x4f0
    7e24:	01411821 	addu	v1,t2,at
    7e28:	ac620128 	sw	v0,296(v1)
    7e2c:	240ffff2 	li	t7,-14
    7e30:	a44f0020 	sh	t7,32(v0)
    7e34:	8c660128 	lw	a2,296(v1)
    7e38:	240b000e 	li	t3,14
    7e3c:	3c040000 	lui	a0,0x0
    7e40:	84d80020 	lh	t8,32(a2)
    7e44:	24840000 	addiu	a0,a0,0
    7e48:	00003825 	move	a3,zero
    7e4c:	a4d80000 	sh	t8,0(a2)
    7e50:	8c660128 	lw	a2,296(v1)
    7e54:	24090400 	li	t1,1024
    7e58:	240800ff 	li	t0,255
    7e5c:	84c50000 	lh	a1,0(a2)
    7e60:	24a5001c 	addiu	a1,a1,28
    7e64:	00052c00 	sll	a1,a1,0x10
    7e68:	00052c03 	sra	a1,a1,0x10
    7e6c:	a4c50030 	sh	a1,48(a2)
    7e70:	8c790128 	lw	t9,296(v1)
    7e74:	a7250010 	sh	a1,16(t9)
    7e78:	8c6c0128 	lw	t4,296(v1)
    7e7c:	a58b0012 	sh	t3,18(t4)
    7e80:	8c660128 	lw	a2,296(v1)
    7e84:	84cd0012 	lh	t5,18(a2)
    7e88:	a4cd0002 	sh	t5,2(a2)
    7e8c:	8c660128 	lw	a2,296(v1)
    7e90:	84c50002 	lh	a1,2(a2)
    7e94:	24a5ffe4 	addiu	a1,a1,-28
    7e98:	00052c00 	sll	a1,a1,0x10
    7e9c:	00052c03 	sra	a1,a1,0x10
    7ea0:	a4c50032 	sh	a1,50(a2)
    7ea4:	8c6e0128 	lw	t6,296(v1)
    7ea8:	a5c50022 	sh	a1,34(t6)
    7eac:	8c8f0000 	lw	t7,0(a0)
    7eb0:	8c780128 	lw	t8,296(v1)
    7eb4:	85e50abe 	lh	a1,2750(t7)
    7eb8:	04a10002 	bgez	a1,7ec4 <Interface_InitVertices+0xc4>
    7ebc:	00a00821 	move	at,a1
    7ec0:	24a10001 	addiu	at,a1,1
    7ec4:	00012843 	sra	a1,at,0x1
    7ec8:	00052823 	negu	a1,a1
    7ecc:	00052c00 	sll	a1,a1,0x10
    7ed0:	00052c03 	sra	a1,a1,0x10
    7ed4:	a7050060 	sh	a1,96(t8)
    7ed8:	8c790128 	lw	t9,296(v1)
    7edc:	a7250040 	sh	a1,64(t9)
    7ee0:	8c660128 	lw	a2,296(v1)
    7ee4:	8c8b0000 	lw	t3,0(a0)
    7ee8:	84cd0040 	lh	t5,64(a2)
    7eec:	856c0abe 	lh	t4,2750(t3)
    7ef0:	018d2821 	addu	a1,t4,t5
    7ef4:	00052c00 	sll	a1,a1,0x10
    7ef8:	00052c03 	sra	a1,a1,0x10
    7efc:	a4c50070 	sh	a1,112(a2)
    7f00:	8c6e0128 	lw	t6,296(v1)
    7f04:	a5c50050 	sh	a1,80(t6)
    7f08:	8c8f0000 	lw	t7,0(a0)
    7f0c:	8c780128 	lw	t8,296(v1)
    7f10:	85e50acc 	lh	a1,2764(t7)
    7f14:	04a10002 	bgez	a1,7f20 <Interface_InitVertices+0x120>
    7f18:	00a00821 	move	at,a1
    7f1c:	24a10001 	addiu	at,a1,1
    7f20:	00012843 	sra	a1,at,0x1
    7f24:	00052c00 	sll	a1,a1,0x10
    7f28:	00052c03 	sra	a1,a1,0x10
    7f2c:	a7050052 	sh	a1,82(t8)
    7f30:	8c790128 	lw	t9,296(v1)
    7f34:	a7250042 	sh	a1,66(t9)
    7f38:	8c660128 	lw	a2,296(v1)
    7f3c:	8c8c0000 	lw	t4,0(a0)
    7f40:	84cb0042 	lh	t3,66(a2)
    7f44:	858d0acc 	lh	t5,2764(t4)
    7f48:	016d2823 	subu	a1,t3,t5
    7f4c:	00052c00 	sll	a1,a1,0x10
    7f50:	00052c03 	sra	a1,a1,0x10
    7f54:	a4c50072 	sh	a1,114(a2)
    7f58:	8c6e0128 	lw	t6,296(v1)
    7f5c:	a5c50062 	sh	a1,98(t6)
    7f60:	8c6f0128 	lw	t7,296(v1)
    7f64:	00071100 	sll	v0,a3,0x4
    7f68:	24e70004 	addiu	a3,a3,4
    7f6c:	01e2c021 	addu	t8,t7,v0
    7f70:	a7000034 	sh	zero,52(t8)
    7f74:	8c790128 	lw	t9,296(v1)
    7f78:	00073c00 	sll	a3,a3,0x10
    7f7c:	00073c03 	sra	a3,a3,0x10
    7f80:	03222021 	addu	a0,t9,v0
    7f84:	84860034 	lh	a2,52(a0)
    7f88:	28e10008 	slti	at,a3,8
    7f8c:	a4860024 	sh	a2,36(a0)
    7f90:	8c6c0128 	lw	t4,296(v1)
    7f94:	01825821 	addu	t3,t4,v0
    7f98:	a5660014 	sh	a2,20(t3)
    7f9c:	8c6d0128 	lw	t5,296(v1)
    7fa0:	01a27021 	addu	t6,t5,v0
    7fa4:	a5c60004 	sh	a2,4(t6)
    7fa8:	8c6f0128 	lw	t7,296(v1)
    7fac:	01e2c021 	addu	t8,t7,v0
    7fb0:	a7000036 	sh	zero,54(t8)
    7fb4:	8c790128 	lw	t9,296(v1)
    7fb8:	03222021 	addu	a0,t9,v0
    7fbc:	94850036 	lhu	a1,54(a0)
    7fc0:	a4850026 	sh	a1,38(a0)
    7fc4:	8c6c0128 	lw	t4,296(v1)
    7fc8:	01825821 	addu	t3,t4,v0
    7fcc:	a5650016 	sh	a1,22(t3)
    7fd0:	8c6d0128 	lw	t5,296(v1)
    7fd4:	01a27021 	addu	t6,t5,v0
    7fd8:	a5c50006 	sh	a1,6(t6)
    7fdc:	8c6f0128 	lw	t7,296(v1)
    7fe0:	01e2c021 	addu	t8,t7,v0
    7fe4:	a7000028 	sh	zero,40(t8)
    7fe8:	8c790128 	lw	t9,296(v1)
    7fec:	03222021 	addu	a0,t9,v0
    7ff0:	84860028 	lh	a2,40(a0)
    7ff4:	a486001a 	sh	a2,26(a0)
    7ff8:	8c6c0128 	lw	t4,296(v1)
    7ffc:	01825821 	addu	t3,t4,v0
    8000:	a566000a 	sh	a2,10(t3)
    8004:	8c6d0128 	lw	t5,296(v1)
    8008:	01a27021 	addu	t6,t5,v0
    800c:	a5c60008 	sh	a2,8(t6)
    8010:	8c6f0128 	lw	t7,296(v1)
    8014:	01e2c021 	addu	t8,t7,v0
    8018:	a709003a 	sh	t1,58(t8)
    801c:	8c790128 	lw	t9,296(v1)
    8020:	03222021 	addu	a0,t9,v0
    8024:	8486003a 	lh	a2,58(a0)
    8028:	a4860038 	sh	a2,56(a0)
    802c:	8c6c0128 	lw	t4,296(v1)
    8030:	01825821 	addu	t3,t4,v0
    8034:	a566002a 	sh	a2,42(t3)
    8038:	8c6d0128 	lw	t5,296(v1)
    803c:	01a27021 	addu	t6,t5,v0
    8040:	a5c60018 	sh	a2,24(t6)
    8044:	8c6f0128 	lw	t7,296(v1)
    8048:	01e2c021 	addu	t8,t7,v0
    804c:	a308003e 	sb	t0,62(t8)
    8050:	8c790128 	lw	t9,296(v1)
    8054:	03222021 	addu	a0,t9,v0
    8058:	9085003e 	lbu	a1,62(a0)
    805c:	a085002e 	sb	a1,46(a0)
    8060:	8c6c0128 	lw	t4,296(v1)
    8064:	01825821 	addu	t3,t4,v0
    8068:	a165001e 	sb	a1,30(t3)
    806c:	8c6d0128 	lw	t5,296(v1)
    8070:	01a27021 	addu	t6,t5,v0
    8074:	a1c5000e 	sb	a1,14(t6)
    8078:	8c6f0128 	lw	t7,296(v1)
    807c:	01e2c021 	addu	t8,t7,v0
    8080:	a305003d 	sb	a1,61(t8)
    8084:	8c790128 	lw	t9,296(v1)
    8088:	03226021 	addu	t4,t9,v0
    808c:	a185002d 	sb	a1,45(t4)
    8090:	8c6b0128 	lw	t3,296(v1)
    8094:	01626821 	addu	t5,t3,v0
    8098:	a1a5001d 	sb	a1,29(t5)
    809c:	8c6e0128 	lw	t6,296(v1)
    80a0:	01c27821 	addu	t7,t6,v0
    80a4:	a1e5000d 	sb	a1,13(t7)
    80a8:	8c780128 	lw	t8,296(v1)
    80ac:	0302c821 	addu	t9,t8,v0
    80b0:	a325003c 	sb	a1,60(t9)
    80b4:	8c6c0128 	lw	t4,296(v1)
    80b8:	01825821 	addu	t3,t4,v0
    80bc:	a165002c 	sb	a1,44(t3)
    80c0:	8c6d0128 	lw	t5,296(v1)
    80c4:	01a27021 	addu	t6,t5,v0
    80c8:	a1c5001c 	sb	a1,28(t6)
    80cc:	8c6f0128 	lw	t7,296(v1)
    80d0:	01e2c021 	addu	t8,t7,v0
    80d4:	a305000c 	sb	a1,12(t8)
    80d8:	8c790128 	lw	t9,296(v1)
    80dc:	03226021 	addu	t4,t9,v0
    80e0:	a188003f 	sb	t0,63(t4)
    80e4:	8c6b0128 	lw	t3,296(v1)
    80e8:	01622021 	addu	a0,t3,v0
    80ec:	9085003f 	lbu	a1,63(a0)
    80f0:	a085002f 	sb	a1,47(a0)
    80f4:	8c6d0128 	lw	t5,296(v1)
    80f8:	01a27021 	addu	t6,t5,v0
    80fc:	a1c5001f 	sb	a1,31(t6)
    8100:	8c6f0128 	lw	t7,296(v1)
    8104:	01e2c021 	addu	t8,t7,v0
    8108:	1420ff95 	bnez	at,7f60 <Interface_InitVertices+0x160>
    810c:	a305000f 	sb	a1,15(t8)
    8110:	8c6c0128 	lw	t4,296(v1)
    8114:	24190600 	li	t9,1536
    8118:	240d0200 	li	t5,512
    811c:	a5990078 	sh	t9,120(t4)
    8120:	8c660128 	lw	a2,296(v1)
    8124:	24050040 	li	a1,64
    8128:	84cb0078 	lh	t3,120(a2)
    812c:	a4cb0058 	sh	t3,88(a2)
    8130:	8c6e0128 	lw	t6,296(v1)
    8134:	a5cd007a 	sh	t5,122(t6)
    8138:	8c660128 	lw	a2,296(v1)
    813c:	84cf007a 	lh	t7,122(a2)
    8140:	a4cf006a 	sh	t7,106(a2)
    8144:	8d440000 	lw	a0,0(t2)
    8148:	0c000000 	jal	0 <Interface_ChangeAlpha>
    814c:	afa3001c 	sw	v1,28(sp)
    8150:	8fa3001c 	lw	v1,28(sp)
    8154:	2407fff8 	li	a3,-8
    8158:	24090008 	li	t1,8
    815c:	ac62012c 	sw	v0,300(v1)
    8160:	a4470020 	sh	a3,32(v0)
    8164:	8c64012c 	lw	a0,300(v1)
    8168:	240800ff 	li	t0,255
    816c:	84980020 	lh	t8,32(a0)
    8170:	a4980000 	sh	t8,0(a0)
    8174:	8c79012c 	lw	t9,300(v1)
    8178:	a7290030 	sh	t1,48(t9)
    817c:	8c64012c 	lw	a0,300(v1)
    8180:	848c0030 	lh	t4,48(a0)
    8184:	a48c0010 	sh	t4,16(a0)
    8188:	8c6b012c 	lw	t3,300(v1)
    818c:	a5690012 	sh	t1,18(t3)
    8190:	8c64012c 	lw	a0,300(v1)
    8194:	848d0012 	lh	t5,18(a0)
    8198:	a48d0002 	sh	t5,2(a0)
    819c:	8c6e012c 	lw	t6,300(v1)
    81a0:	a5c70032 	sh	a3,50(t6)
    81a4:	8c64012c 	lw	a0,300(v1)
    81a8:	848f0032 	lh	t7,50(a0)
    81ac:	a48f0022 	sh	t7,34(a0)
    81b0:	8c78012c 	lw	t8,300(v1)
    81b4:	a7000034 	sh	zero,52(t8)
    81b8:	8c64012c 	lw	a0,300(v1)
    81bc:	84850034 	lh	a1,52(a0)
    81c0:	a4850024 	sh	a1,36(a0)
    81c4:	8c79012c 	lw	t9,300(v1)
    81c8:	a7250014 	sh	a1,20(t9)
    81cc:	8c6c012c 	lw	t4,300(v1)
    81d0:	a5850004 	sh	a1,4(t4)
    81d4:	8c6b012c 	lw	t3,300(v1)
    81d8:	240c0200 	li	t4,512
    81dc:	a5600036 	sh	zero,54(t3)
    81e0:	8c64012c 	lw	a0,300(v1)
    81e4:	94860036 	lhu	a2,54(a0)
    81e8:	a4860026 	sh	a2,38(a0)
    81ec:	8c6d012c 	lw	t5,300(v1)
    81f0:	a5a60016 	sh	a2,22(t5)
    81f4:	8c6e012c 	lw	t6,300(v1)
    81f8:	a5c60006 	sh	a2,6(t6)
    81fc:	8c6f012c 	lw	t7,300(v1)
    8200:	a5e00028 	sh	zero,40(t7)
    8204:	8c64012c 	lw	a0,300(v1)
    8208:	84860028 	lh	a2,40(a0)
    820c:	a486001a 	sh	a2,26(a0)
    8210:	8c78012c 	lw	t8,300(v1)
    8214:	a706000a 	sh	a2,10(t8)
    8218:	8c79012c 	lw	t9,300(v1)
    821c:	a7260008 	sh	a2,8(t9)
    8220:	8c6b012c 	lw	t3,300(v1)
    8224:	a56c003a 	sh	t4,58(t3)
    8228:	8c64012c 	lw	a0,300(v1)
    822c:	8486003a 	lh	a2,58(a0)
    8230:	a4860038 	sh	a2,56(a0)
    8234:	8c6d012c 	lw	t5,300(v1)
    8238:	a5a6002a 	sh	a2,42(t5)
    823c:	8c6e012c 	lw	t6,300(v1)
    8240:	a5c60018 	sh	a2,24(t6)
    8244:	8c6f012c 	lw	t7,300(v1)
    8248:	a1e8003f 	sb	t0,63(t7)
    824c:	8c64012c 	lw	a0,300(v1)
    8250:	9082003f 	lbu	v0,63(a0)
    8254:	a082002f 	sb	v0,47(a0)
    8258:	8c78012c 	lw	t8,300(v1)
    825c:	a302001f 	sb	v0,31(t8)
    8260:	8c79012c 	lw	t9,300(v1)
    8264:	a322000f 	sb	v0,15(t9)
    8268:	8c6c012c 	lw	t4,300(v1)
    826c:	a182003e 	sb	v0,62(t4)
    8270:	8c6b012c 	lw	t3,300(v1)
    8274:	a162002e 	sb	v0,46(t3)
    8278:	8c6d012c 	lw	t5,300(v1)
    827c:	a1a2001e 	sb	v0,30(t5)
    8280:	8c6e012c 	lw	t6,300(v1)
    8284:	a1c2000e 	sb	v0,14(t6)
    8288:	8c6f012c 	lw	t7,300(v1)
    828c:	a1e2003d 	sb	v0,61(t7)
    8290:	8c78012c 	lw	t8,300(v1)
    8294:	a302002d 	sb	v0,45(t8)
    8298:	8c79012c 	lw	t9,300(v1)
    829c:	a322001d 	sb	v0,29(t9)
    82a0:	8c6c012c 	lw	t4,300(v1)
    82a4:	a182000d 	sb	v0,13(t4)
    82a8:	8c6b012c 	lw	t3,300(v1)
    82ac:	a162003c 	sb	v0,60(t3)
    82b0:	8c6d012c 	lw	t5,300(v1)
    82b4:	a1a2002c 	sb	v0,44(t5)
    82b8:	8c6e012c 	lw	t6,300(v1)
    82bc:	a1c2001c 	sb	v0,28(t6)
    82c0:	8c6f012c 	lw	t7,300(v1)
    82c4:	a1e2000c 	sb	v0,12(t7)
    82c8:	8fbf0014 	lw	ra,20(sp)
    82cc:	27bd0038 	addiu	sp,sp,56
    82d0:	03e00008 	jr	ra
    82d4:	00000000 	nop

000082d8 <func_8008A8B8>:
    82d8:	27bdffb0 	addiu	sp,sp,-80
    82dc:	44800000 	mtc1	zero,$f0
    82e0:	3c01bf80 	lui	at,0xbf80
    82e4:	44812000 	mtc1	at,$f4
    82e8:	3c013f80 	lui	at,0x3f80
    82ec:	44813000 	mtc1	at,$f6
    82f0:	3c010001 	lui	at,0x1
    82f4:	afb00018 	sw	s0,24(sp)
    82f8:	342104f0 	ori	at,at,0x4f0
    82fc:	afbf001c 	sw	ra,28(sp)
    8300:	afa40050 	sw	a0,80(sp)
    8304:	afa50054 	sw	a1,84(sp)
    8308:	afa60058 	sw	a2,88(sp)
    830c:	afa7005c 	sw	a3,92(sp)
    8310:	00818021 	addu	s0,a0,at
    8314:	02002025 	move	a0,s0
    8318:	27a70028 	addiu	a3,sp,40
    831c:	27a60034 	addiu	a2,sp,52
    8320:	27a50040 	addiu	a1,sp,64
    8324:	e7a00048 	swc1	$f0,72(sp)
    8328:	e7a00044 	swc1	$f0,68(sp)
    832c:	e7a00040 	swc1	$f0,64(sp)
    8330:	e7a00038 	swc1	$f0,56(sp)
    8334:	e7a00034 	swc1	$f0,52(sp)
    8338:	e7a00030 	swc1	$f0,48(sp)
    833c:	e7a00028 	swc1	$f0,40(sp)
    8340:	e7a4003c 	swc1	$f4,60(sp)
    8344:	0c000000 	jal	0 <Interface_ChangeAlpha>
    8348:	e7a6002c 	swc1	$f6,44(sp)
    834c:	8fae0054 	lw	t6,84(sp)
    8350:	02002025 	move	a0,s0
    8354:	260501dc 	addiu	a1,s0,476
    8358:	ae0e01dc 	sw	t6,476(s0)
    835c:	8faf0058 	lw	t7,88(sp)
    8360:	ae0f01e0 	sw	t7,480(s0)
    8364:	8fb8005c 	lw	t8,92(sp)
    8368:	ae1801e4 	sw	t8,484(s0)
    836c:	8fb90060 	lw	t9,96(sp)
    8370:	0c000000 	jal	0 <Interface_ChangeAlpha>
    8374:	ae1901e8 	sw	t9,488(s0)
    8378:	3c014270 	lui	at,0x4270
    837c:	44810000 	mtc1	at,$f0
    8380:	02002025 	move	a0,s0
    8384:	3c064120 	lui	a2,0x4120
    8388:	44050000 	mfc1	a1,$f0
    838c:	44070000 	mfc1	a3,$f0
    8390:	0c000000 	jal	0 <Interface_ChangeAlpha>
    8394:	00000000 	nop
    8398:	0c000000 	jal	0 <Interface_ChangeAlpha>
    839c:	02002025 	move	a0,s0
    83a0:	8fbf001c 	lw	ra,28(sp)
    83a4:	8fb00018 	lw	s0,24(sp)
    83a8:	27bd0050 	addiu	sp,sp,80
    83ac:	03e00008 	jr	ra
    83b0:	00000000 	nop

000083b4 <func_8008A994>:
    83b4:	27bdffd8 	addiu	sp,sp,-40
    83b8:	afbf0014 	sw	ra,20(sp)
    83bc:	240e00f0 	li	t6,240
    83c0:	240f0140 	li	t7,320
    83c4:	afa40028 	sw	a0,40(sp)
    83c8:	afaf0024 	sw	t7,36(sp)
    83cc:	afae001c 	sw	t6,28(sp)
    83d0:	afa00018 	sw	zero,24(sp)
    83d4:	afa00020 	sw	zero,32(sp)
    83d8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    83dc:	27a50018 	addiu	a1,sp,24
    83e0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    83e4:	8fa40028 	lw	a0,40(sp)
    83e8:	8fbf0014 	lw	ra,20(sp)
    83ec:	27bd0028 	addiu	sp,sp,40
    83f0:	03e00008 	jr	ra
    83f4:	00000000 	nop

000083f8 <Interface_Draw>:
    83f8:	27bdfd70 	addiu	sp,sp,-656
    83fc:	afbf004c 	sw	ra,76(sp)
    8400:	afb70048 	sw	s7,72(sp)
    8404:	afb60044 	sw	s6,68(sp)
    8408:	afb50040 	sw	s5,64(sp)
    840c:	afb4003c 	sw	s4,60(sp)
    8410:	afb30038 	sw	s3,56(sp)
    8414:	afb20034 	sw	s2,52(sp)
    8418:	afb10030 	sw	s1,48(sp)
    841c:	afb0002c 	sw	s0,44(sp)
    8420:	8c8e1c44 	lw	t6,7236(a0)
    8424:	0080b825 	move	s7,a0
    8428:	3c060000 	lui	a2,0x0
    842c:	afae0280 	sw	t6,640(sp)
    8430:	8c850000 	lw	a1,0(a0)
    8434:	27a40260 	addiu	a0,sp,608
    8438:	24c60000 	addiu	a2,a2,0
    843c:	24070d4d 	li	a3,3405
    8440:	0c000000 	jal	0 <Interface_ChangeAlpha>
    8444:	00a0a025 	move	s4,a1
    8448:	8e8702b0 	lw	a3,688(s4)
    844c:	3c18db06 	lui	t8,0xdb06
    8450:	3c010001 	lui	at,0x1
    8454:	24ef0008 	addiu	t7,a3,8
    8458:	ae8f02b0 	sw	t7,688(s4)
    845c:	342104f0 	ori	at,at,0x4f0
    8460:	37180008 	ori	t8,t8,0x8
    8464:	02e1b021 	addu	s6,s7,at
    8468:	acf80000 	sw	t8,0(a3)
    846c:	8ed90130 	lw	t9,304(s6)
    8470:	3c0bdb06 	lui	t3,0xdb06
    8474:	356b001c 	ori	t3,t3,0x1c
    8478:	acf90004 	sw	t9,4(a3)
    847c:	8e8702b0 	lw	a3,688(s4)
    8480:	3c0edb06 	lui	t6,0xdb06
    8484:	35ce0020 	ori	t6,t6,0x20
    8488:	24ea0008 	addiu	t2,a3,8
    848c:	ae8a02b0 	sw	t2,688(s4)
    8490:	aceb0000 	sw	t3,0(a3)
    8494:	8ecc0134 	lw	t4,308(s6)
    8498:	3c19db06 	lui	t9,0xdb06
    849c:	3739002c 	ori	t9,t9,0x2c
    84a0:	acec0004 	sw	t4,4(a3)
    84a4:	8e8702b0 	lw	a3,688(s4)
    84a8:	3c010001 	lui	at,0x1
    84ac:	34210760 	ori	at,at,0x760
    84b0:	24ed0008 	addiu	t5,a3,8
    84b4:	ae8d02b0 	sw	t5,688(s4)
    84b8:	acee0000 	sw	t6,0(a3)
    84bc:	8ecf0138 	lw	t7,312(s6)
    84c0:	02e15821 	addu	t3,s7,at
    84c4:	acef0004 	sw	t7,4(a3)
    84c8:	8e8702b0 	lw	a3,688(s4)
    84cc:	24f80008 	addiu	t8,a3,8
    84d0:	ae9802b0 	sw	t8,688(s4)
    84d4:	acf90000 	sw	t9,0(a3)
    84d8:	8eca013c 	lw	t2,316(s6)
    84dc:	acea0004 	sw	t2,4(a3)
    84e0:	afab0068 	sw	t3,104(sp)
    84e4:	956d01d6 	lhu	t5,470(t3)
    84e8:	55a00a93 	bnezl	t5,af38 <L8008D1EC+0x32c>
    84ec:	8fb80068 	lw	t8,104(sp)
    84f0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    84f4:	02e02025 	move	a0,s7
    84f8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    84fc:	02c02025 	move	a0,s6
    8500:	0c000000 	jal	0 <Interface_ChangeAlpha>
    8504:	02e02025 	move	a0,s7
    8508:	0c000000 	jal	0 <Interface_ChangeAlpha>
    850c:	8ee40000 	lw	a0,0(s7)
    8510:	8e8702b0 	lw	a3,688(s4)
    8514:	3c0ffa00 	lui	t7,0xfa00
    8518:	3c01c8ff 	lui	at,0xc8ff
    851c:	24ee0008 	addiu	t6,a3,8
    8520:	ae8e02b0 	sw	t6,688(s4)
    8524:	acef0000 	sw	t7,0(a3)
    8528:	96d80252 	lhu	t8,594(s6)
    852c:	34216400 	ori	at,at,0x6400
    8530:	3c0d0050 	lui	t5,0x50
    8534:	331900ff 	andi	t9,t8,0xff
    8538:	03215025 	or	t2,t9,at
    853c:	acea0004 	sw	t2,4(a3)
    8540:	8e8702b0 	lw	a3,688(s4)
    8544:	35ad00ff 	ori	t5,t5,0xff
    8548:	3c0cfb00 	lui	t4,0xfb00
    854c:	24eb0008 	addiu	t3,a3,8
    8550:	ae8b02b0 	sw	t3,688(s4)
    8554:	aced0004 	sw	t5,4(a3)
    8558:	acec0000 	sw	t4,0(a3)
    855c:	8e8402b0 	lw	a0,688(s4)
    8560:	240b0400 	li	t3,1024
    8564:	240a0400 	li	t2,1024
    8568:	24190010 	li	t9,16
    856c:	24180010 	li	t8,16
    8570:	240f00ce 	li	t7,206
    8574:	240e001a 	li	t6,26
    8578:	3c050000 	lui	a1,0x0
    857c:	24a50000 	addiu	a1,a1,0
    8580:	afae0010 	sw	t6,16(sp)
    8584:	afaf0014 	sw	t7,20(sp)
    8588:	afb80018 	sw	t8,24(sp)
    858c:	afb9001c 	sw	t9,28(sp)
    8590:	afaa0020 	sw	t2,32(sp)
    8594:	afab0024 	sw	t3,36(sp)
    8598:	24070010 	li	a3,16
    859c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    85a0:	24060010 	li	a2,16
    85a4:	ae8202b0 	sw	v0,688(s4)
    85a8:	86ec00a4 	lh	t4,164(s7)
    85ac:	258dfffd 	addiu	t5,t4,-3
    85b0:	2da1000e 	sltiu	at,t5,14
    85b4:	1020008f 	beqz	at,87f4 <L8008ABB0+0x224>
    85b8:	000d6880 	sll	t5,t5,0x2
    85bc:	3c010000 	lui	at,0x0
    85c0:	002d0821 	addu	at,at,t5
    85c4:	8c2d0000 	lw	t5,0(at)
    85c8:	01a00008 	jr	t5
    85cc:	00000000 	nop

000085d0 <L8008ABB0>:
    85d0:	3c150000 	lui	s5,0x0
    85d4:	26b50000 	addiu	s5,s5,0
    85d8:	96ae1402 	lhu	t6,5122(s5)
    85dc:	3c01c8e6 	lui	at,0xc8e6
    85e0:	3c0ae700 	lui	t2,0xe700
    85e4:	02ae7821 	addu	t7,s5,t6
    85e8:	81f800bc 	lb	t8,188(t7)
    85ec:	3421ff00 	ori	at,at,0xff00
    85f0:	3c0cfa00 	lui	t4,0xfa00
    85f4:	0700007d 	bltz	t8,87ec <L8008ABB0+0x21c>
    85f8:	3c050000 	lui	a1,0x0
    85fc:	8e8702b0 	lw	a3,688(s4)
    8600:	24a50000 	addiu	a1,a1,0
    8604:	24060010 	li	a2,16
    8608:	24f90008 	addiu	t9,a3,8
    860c:	ae9902b0 	sw	t9,688(s4)
    8610:	ace00004 	sw	zero,4(a3)
    8614:	acea0000 	sw	t2,0(a3)
    8618:	8e8702b0 	lw	a3,688(s4)
    861c:	240a14ff 	li	t2,5375
    8620:	3c19fb00 	lui	t9,0xfb00
    8624:	24eb0008 	addiu	t3,a3,8
    8628:	ae8b02b0 	sw	t3,688(s4)
    862c:	acec0000 	sw	t4,0(a3)
    8630:	96cd0252 	lhu	t5,594(s6)
    8634:	240c00be 	li	t4,190
    8638:	240b001a 	li	t3,26
    863c:	31ae00ff 	andi	t6,t5,0xff
    8640:	01c17825 	or	t7,t6,at
    8644:	acef0004 	sw	t7,4(a3)
    8648:	8e8702b0 	lw	a3,688(s4)
    864c:	240f0400 	li	t7,1024
    8650:	240e0010 	li	t6,16
    8654:	24f80008 	addiu	t8,a3,8
    8658:	ae9802b0 	sw	t8,688(s4)
    865c:	acea0004 	sw	t2,4(a3)
    8660:	acf90000 	sw	t9,0(a3)
    8664:	8e8402b0 	lw	a0,688(s4)
    8668:	24180400 	li	t8,1024
    866c:	240d0010 	li	t5,16
    8670:	afad0018 	sw	t5,24(sp)
    8674:	afb80024 	sw	t8,36(sp)
    8678:	afaf0020 	sw	t7,32(sp)
    867c:	afae001c 	sw	t6,28(sp)
    8680:	afac0014 	sw	t4,20(sp)
    8684:	afab0010 	sw	t3,16(sp)
    8688:	0c000000 	jal	0 <Interface_ChangeAlpha>
    868c:	24070010 	li	a3,16
    8690:	ae8202b0 	sw	v0,688(s4)
    8694:	24590008 	addiu	t9,v0,8
    8698:	ae9902b0 	sw	t9,688(s4)
    869c:	3c0ae700 	lui	t2,0xe700
    86a0:	ac4a0000 	sw	t2,0(v0)
    86a4:	ac400004 	sw	zero,4(v0)
    86a8:	8e8702b0 	lw	a3,688(s4)
    86ac:	3c0cfa00 	lui	t4,0xfa00
    86b0:	2401ff00 	li	at,-256
    86b4:	24eb0008 	addiu	t3,a3,8
    86b8:	ae8b02b0 	sw	t3,688(s4)
    86bc:	acec0000 	sw	t4,0(a3)
    86c0:	96cd0252 	lhu	t5,594(s6)
    86c4:	3c0aff2d 	lui	t2,0xff2d
    86c8:	3c19fcff 	lui	t9,0xfcff
    86cc:	31ae00ff 	andi	t6,t5,0xff
    86d0:	01c17825 	or	t7,t6,at
    86d4:	acef0004 	sw	t7,4(a3)
    86d8:	8e8702b0 	lw	a3,688(s4)
    86dc:	373997ff 	ori	t9,t9,0x97ff
    86e0:	354afeff 	ori	t2,t2,0xfeff
    86e4:	24f80008 	addiu	t8,a3,8
    86e8:	ae9802b0 	sw	t8,688(s4)
    86ec:	acea0004 	sw	t2,4(a3)
    86f0:	acf90000 	sw	t9,0(a3)
    86f4:	a6c00236 	sh	zero,566(s6)
    86f8:	96ab1402 	lhu	t3,5122(s5)
    86fc:	3c0a0000 	lui	t2,0x0
    8700:	254a0000 	addiu	t2,t2,0
    8704:	02ab6021 	addu	t4,s5,t3
    8708:	818d00bc 	lb	t5,188(t4)
    870c:	240c00be 	li	t4,190
    8710:	240b002a 	li	t3,42
    8714:	a6cd0238 	sh	t5,568(s6)
    8718:	86c30238 	lh	v1,568(s6)
    871c:	240d0008 	li	t5,8
    8720:	24070010 	li	a3,16
    8724:	2861000a 	slti	at,v1,10
    8728:	14200009 	bnez	at,8750 <L8008ABB0+0x180>
    872c:	24060008 	li	a2,8
    8730:	2478fff6 	addiu	t8,v1,-10
    8734:	a6d80238 	sh	t8,568(s6)
    8738:	86c30238 	lh	v1,568(s6)
    873c:	86ce0236 	lh	t6,566(s6)
    8740:	2861000a 	slti	at,v1,10
    8744:	25cf0001 	addiu	t7,t6,1
    8748:	1020fff9 	beqz	at,8730 <L8008ABB0+0x160>
    874c:	a6cf0236 	sh	t7,566(s6)
    8750:	86c20236 	lh	v0,566(s6)
    8754:	2412002a 	li	s2,42
    8758:	240e0010 	li	t6,16
    875c:	1040000f 	beqz	v0,879c <L8008ABB0+0x1cc>
    8760:	0002c9c0 	sll	t9,v0,0x7
    8764:	8e8402b0 	lw	a0,688(s4)
    8768:	240f0400 	li	t7,1024
    876c:	24180400 	li	t8,1024
    8770:	afb80024 	sw	t8,36(sp)
    8774:	afaf0020 	sw	t7,32(sp)
    8778:	afae001c 	sw	t6,28(sp)
    877c:	afad0018 	sw	t5,24(sp)
    8780:	afac0014 	sw	t4,20(sp)
    8784:	afab0010 	sw	t3,16(sp)
    8788:	0c000000 	jal	0 <Interface_ChangeAlpha>
    878c:	032a2821 	addu	a1,t9,t2
    8790:	ae8202b0 	sw	v0,688(s4)
    8794:	86c30238 	lh	v1,568(s6)
    8798:	24120032 	li	s2,50
    879c:	8e8402b0 	lw	a0,688(s4)
    87a0:	3c0a0000 	lui	t2,0x0
    87a4:	254a0000 	addiu	t2,t2,0
    87a8:	0003c9c0 	sll	t9,v1,0x7
    87ac:	240b00be 	li	t3,190
    87b0:	240c0008 	li	t4,8
    87b4:	240d0010 	li	t5,16
    87b8:	240e0400 	li	t6,1024
    87bc:	240f0400 	li	t7,1024
    87c0:	afaf0024 	sw	t7,36(sp)
    87c4:	afae0020 	sw	t6,32(sp)
    87c8:	afad001c 	sw	t5,28(sp)
    87cc:	afac0018 	sw	t4,24(sp)
    87d0:	afab0014 	sw	t3,20(sp)
    87d4:	032a2821 	addu	a1,t9,t2
    87d8:	afb20010 	sw	s2,16(sp)
    87dc:	24060008 	li	a2,8
    87e0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    87e4:	24070010 	li	a3,16
    87e8:	ae8202b0 	sw	v0,688(s4)
    87ec:	10000004 	b	8800 <L8008ABB0+0x230>
    87f0:	2412002a 	li	s2,42
    87f4:	3c150000 	lui	s5,0x0
    87f8:	26b50000 	addiu	s5,s5,0
    87fc:	2412002a 	li	s2,42
    8800:	8e8702b0 	lw	a3,688(s4)
    8804:	3c19e700 	lui	t9,0xe700
    8808:	3c030000 	lui	v1,0x0
    880c:	24f80008 	addiu	t8,a3,8
    8810:	ae9802b0 	sw	t8,688(s4)
    8814:	ace00004 	sw	zero,4(a3)
    8818:	acf90000 	sw	t9,0(a3)
    881c:	24630000 	addiu	v1,v1,0
    8820:	3c040000 	lui	a0,0x0
    8824:	8c6b0010 	lw	t3,16(v1)
    8828:	8eaa00a0 	lw	t2,160(s5)
    882c:	24840000 	addiu	a0,a0,0
    8830:	908d0004 	lbu	t5,4(a0)
    8834:	014b6024 	and	t4,t2,t3
    8838:	3c180000 	lui	t8,0x0
    883c:	01ac7007 	srav	t6,t4,t5
    8840:	000e7840 	sll	t7,t6,0x1
    8844:	030fc021 	addu	t8,t8,t7
    8848:	97180020 	lhu	t8,32(t8)
    884c:	86a20034 	lh	v0,52(s5)
    8850:	3c100000 	lui	s0,0x0
    8854:	1458000c 	bne	v0,t8,8888 <L8008ABB0+0x2b8>
    8858:	00000000 	nop
    885c:	8e8702b0 	lw	a3,688(s4)
    8860:	3c0afa00 	lui	t2,0xfa00
    8864:	3c0178ff 	lui	at,0x78ff
    8868:	24f90008 	addiu	t9,a3,8
    886c:	ae9902b0 	sw	t9,688(s4)
    8870:	acea0000 	sw	t2,0(a3)
    8874:	96cb0252 	lhu	t3,594(s6)
    8878:	316c00ff 	andi	t4,t3,0xff
    887c:	01816825 	or	t5,t4,at
    8880:	10000019 	b	88e8 <L8008ABB0+0x318>
    8884:	aced0004 	sw	t5,4(a3)
    8888:	5040000d 	beqzl	v0,88c0 <L8008ABB0+0x2f0>
    888c:	8e8702b0 	lw	a3,688(s4)
    8890:	8e8702b0 	lw	a3,688(s4)
    8894:	3c0ffa00 	lui	t7,0xfa00
    8898:	2401ff00 	li	at,-256
    889c:	24ee0008 	addiu	t6,a3,8
    88a0:	ae8e02b0 	sw	t6,688(s4)
    88a4:	acef0000 	sw	t7,0(a3)
    88a8:	96d80252 	lhu	t8,594(s6)
    88ac:	331900ff 	andi	t9,t8,0xff
    88b0:	03215025 	or	t2,t9,at
    88b4:	1000000c 	b	88e8 <L8008ABB0+0x318>
    88b8:	acea0004 	sw	t2,4(a3)
    88bc:	8e8702b0 	lw	a3,688(s4)
    88c0:	3c0cfa00 	lui	t4,0xfa00
    88c4:	3c016464 	lui	at,0x6464
    88c8:	24eb0008 	addiu	t3,a3,8
    88cc:	ae8b02b0 	sw	t3,688(s4)
    88d0:	acec0000 	sw	t4,0(a3)
    88d4:	96cd0252 	lhu	t5,594(s6)
    88d8:	34216400 	ori	at,at,0x6400
    88dc:	31ae00ff 	andi	t6,t5,0xff
    88e0:	01c17825 	or	t7,t6,at
    88e4:	acef0004 	sw	t7,4(a3)
    88e8:	8e8702b0 	lw	a3,688(s4)
    88ec:	3c19fcff 	lui	t9,0xfcff
    88f0:	3c0aff2d 	lui	t2,0xff2d
    88f4:	24f80008 	addiu	t8,a3,8
    88f8:	ae9802b0 	sw	t8,688(s4)
    88fc:	354afeff 	ori	t2,t2,0xfeff
    8900:	373997ff 	ori	t9,t9,0x97ff
    8904:	acf90000 	sw	t9,0(a3)
    8908:	acea0004 	sw	t2,4(a3)
    890c:	a6c00234 	sh	zero,564(s6)
    8910:	86cb0234 	lh	t3,564(s6)
    8914:	a6cb0232 	sh	t3,562(s6)
    8918:	86ac0034 	lh	t4,52(s5)
    891c:	a6cc0236 	sh	t4,566(s6)
    8920:	86c20236 	lh	v0,566(s6)
    8924:	28412710 	slti	at,v0,10000
    8928:	50200003 	beqzl	at,8938 <L8008ABB0+0x368>
    892c:	304d0ddd 	andi	t5,v0,0xddd
    8930:	04410003 	bgez	v0,8940 <L8008ABB0+0x370>
    8934:	304d0ddd 	andi	t5,v0,0xddd
    8938:	a6cd0236 	sh	t5,566(s6)
    893c:	86c20236 	lh	v0,566(s6)
    8940:	28410064 	slti	at,v0,100
    8944:	14200008 	bnez	at,8968 <L8008ABB0+0x398>
    8948:	2458ff9c 	addiu	t8,v0,-100
    894c:	a6d80236 	sh	t8,566(s6)
    8950:	86c20236 	lh	v0,566(s6)
    8954:	86ce0232 	lh	t6,562(s6)
    8958:	28410064 	slti	at,v0,100
    895c:	25cf0001 	addiu	t7,t6,1
    8960:	1020fff9 	beqz	at,8948 <L8008ABB0+0x378>
    8964:	a6cf0232 	sh	t7,562(s6)
    8968:	2841000a 	slti	at,v0,10
    896c:	14200008 	bnez	at,8990 <L8008ABB0+0x3c0>
    8970:	244bfff6 	addiu	t3,v0,-10
    8974:	a6cb0236 	sh	t3,566(s6)
    8978:	86c20236 	lh	v0,566(s6)
    897c:	86d90234 	lh	t9,564(s6)
    8980:	2841000a 	slti	at,v0,10
    8984:	272a0001 	addiu	t2,t9,1
    8988:	1020fff9 	beqz	at,8970 <L8008ABB0+0x3a0>
    898c:	a6ca0234 	sh	t2,564(s6)
    8990:	8eac00a0 	lw	t4,160(s5)
    8994:	8c6d0010 	lw	t5,16(v1)
    8998:	908f0004 	lbu	t7,4(a0)
    899c:	3c110000 	lui	s1,0x0
    89a0:	018d7024 	and	t6,t4,t5
    89a4:	01ee1007 	srav	v0,t6,t7
    89a8:	00021040 	sll	v0,v0,0x1
    89ac:	02228821 	addu	s1,s1,v0
    89b0:	86310000 	lh	s1,0(s1)
    89b4:	02028021 	addu	s0,s0,v0
    89b8:	86100000 	lh	s0,0(s0)
    89bc:	1a200023 	blez	s1,8a4c <L8008ABB0+0x47c>
    89c0:	00009825 	move	s3,zero
    89c4:	0010c040 	sll	t8,s0,0x1
    89c8:	02d8c821 	addu	t9,s6,t8
    89cc:	872a0232 	lh	t2,562(t9)
    89d0:	8e8402b0 	lw	a0,688(s4)
    89d4:	3c0c0000 	lui	t4,0x0
    89d8:	258c0000 	addiu	t4,t4,0
    89dc:	24190400 	li	t9,1024
    89e0:	24180400 	li	t8,1024
    89e4:	240d00ce 	li	t5,206
    89e8:	240e0008 	li	t6,8
    89ec:	240f0010 	li	t7,16
    89f0:	000a59c0 	sll	t3,t2,0x7
    89f4:	016c2821 	addu	a1,t3,t4
    89f8:	afaf001c 	sw	t7,28(sp)
    89fc:	afae0018 	sw	t6,24(sp)
    8a00:	afad0014 	sw	t5,20(sp)
    8a04:	afb80020 	sw	t8,32(sp)
    8a08:	afb90024 	sw	t9,36(sp)
    8a0c:	afb20010 	sw	s2,16(sp)
    8a10:	24060008 	li	a2,8
    8a14:	0c000000 	jal	0 <Interface_ChangeAlpha>
    8a18:	24070010 	li	a3,16
    8a1c:	26730001 	addiu	s3,s3,1
    8a20:	00139c00 	sll	s3,s3,0x10
    8a24:	00139c03 	sra	s3,s3,0x10
    8a28:	26100001 	addiu	s0,s0,1
    8a2c:	26520008 	addiu	s2,s2,8
    8a30:	00129400 	sll	s2,s2,0x10
    8a34:	00108400 	sll	s0,s0,0x10
    8a38:	0271082a 	slt	at,s3,s1
    8a3c:	00108403 	sra	s0,s0,0x10
    8a40:	00129403 	sra	s2,s2,0x10
    8a44:	1420ffdf 	bnez	at,89c4 <L8008ABB0+0x3f4>
    8a48:	ae8202b0 	sw	v0,688(s4)
    8a4c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    8a50:	02e02025 	move	a0,s7
    8a54:	0c000000 	jal	0 <Interface_ChangeAlpha>
    8a58:	02e02025 	move	a0,s7
    8a5c:	3c0a0000 	lui	t2,0x0
    8a60:	8d4a0000 	lw	t2,0(t2)
    8a64:	24010002 	li	at,2
    8a68:	85420190 	lh	v0,400(t2)
    8a6c:	10410005 	beq	v0,at,8a84 <L8008ABB0+0x4b4>
    8a70:	24010003 	li	at,3
    8a74:	10410003 	beq	v0,at,8a84 <L8008ABB0+0x4b4>
    8a78:	26e41c90 	addiu	a0,s7,7312
    8a7c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    8a80:	02e02825 	move	a1,s7
    8a84:	0c000000 	jal	0 <Interface_ChangeAlpha>
    8a88:	8ee40000 	lw	a0,0(s7)
    8a8c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    8a90:	02e02025 	move	a0,s7
    8a94:	8e8702b0 	lw	a3,688(s4)
    8a98:	3c03e700 	lui	v1,0xe700
    8a9c:	3c0dfa00 	lui	t5,0xfa00
    8aa0:	24eb0008 	addiu	t3,a3,8
    8aa4:	ae8b02b0 	sw	t3,688(s4)
    8aa8:	ace00004 	sw	zero,4(a3)
    8aac:	ace30000 	sw	v1,0(a3)
    8ab0:	8e8702b0 	lw	a3,688(s4)
    8ab4:	2401ff00 	li	at,-256
    8ab8:	3c0bff2f 	lui	t3,0xff2f
    8abc:	24ec0008 	addiu	t4,a3,8
    8ac0:	ae8c02b0 	sw	t4,688(s4)
    8ac4:	aced0000 	sw	t5,0(a3)
    8ac8:	96ce0248 	lhu	t6,584(s6)
    8acc:	3c0afc11 	lui	t2,0xfc11
    8ad0:	354a9623 	ori	t2,t2,0x9623
    8ad4:	31cf00ff 	andi	t7,t6,0xff
    8ad8:	01e1c025 	or	t8,t7,at
    8adc:	acf80004 	sw	t8,4(a3)
    8ae0:	8e8702b0 	lw	a3,688(s4)
    8ae4:	356bffff 	ori	t3,t3,0xffff
    8ae8:	24f90008 	addiu	t9,a3,8
    8aec:	ae9902b0 	sw	t9,688(s4)
    8af0:	aceb0004 	sw	t3,4(a3)
    8af4:	acea0000 	sw	t2,0(a3)
    8af8:	86cc01fa 	lh	t4,506(s6)
    8afc:	55800039 	bnezl	t4,8be4 <L8008ABB0+0x614>
    8b00:	8e8702b0 	lw	a3,688(s4)
    8b04:	92ad0068 	lbu	t5,104(s5)
    8b08:	240100ff 	li	at,255
    8b0c:	02e02025 	move	a0,s7
    8b10:	11a1002a 	beq	t5,at,8bbc <L8008ABB0+0x5ec>
    8b14:	00003025 	move	a2,zero
    8b18:	0c000000 	jal	0 <Interface_ChangeAlpha>
    8b1c:	8ec50138 	lw	a1,312(s6)
    8b20:	8fae0280 	lw	t6,640(sp)
    8b24:	3c190001 	lui	t9,0x1
    8b28:	0337c821 	addu	t9,t9,s7
    8b2c:	8dcf067c 	lw	t7,1660(t6)
    8b30:	000fc200 	sll	t8,t7,0x8
    8b34:	0702000f 	bltzl	t8,8b74 <L8008ABB0+0x5a4>
    8b38:	8e8702b0 	lw	a3,688(s4)
    8b3c:	83391e5c 	lb	t9,7772(t9)
    8b40:	2b210002 	slti	at,t9,2
    8b44:	5020000b 	beqzl	at,8b74 <L8008ABB0+0x5a4>
    8b48:	8e8702b0 	lw	a3,688(s4)
    8b4c:	86ea00a4 	lh	t2,164(s7)
    8b50:	2401004b 	li	at,75
    8b54:	02e02025 	move	a0,s7
    8b58:	55410019 	bnel	t2,at,8bc0 <L8008ABB0+0x5f0>
    8b5c:	3c010001 	lui	at,0x1
    8b60:	0c000000 	jal	0 <Interface_ChangeAlpha>
    8b64:	24050038 	li	a1,56
    8b68:	50400015 	beqzl	v0,8bc0 <L8008ABB0+0x5f0>
    8b6c:	3c010001 	lui	at,0x1
    8b70:	8e8702b0 	lw	a3,688(s4)
    8b74:	3c0ce700 	lui	t4,0xe700
    8b78:	3c10fc30 	lui	s0,0xfc30
    8b7c:	24eb0008 	addiu	t3,a3,8
    8b80:	ae8b02b0 	sw	t3,688(s4)
    8b84:	ace00004 	sw	zero,4(a3)
    8b88:	acec0000 	sw	t4,0(a3)
    8b8c:	8e8702b0 	lw	a3,688(s4)
    8b90:	3c11552e 	lui	s1,0x552e
    8b94:	3631ff7f 	ori	s1,s1,0xff7f
    8b98:	24ed0008 	addiu	t5,a3,8
    8b9c:	ae8d02b0 	sw	t5,688(s4)
    8ba0:	36109661 	ori	s0,s0,0x9661
    8ba4:	acf00000 	sw	s0,0(a3)
    8ba8:	acf10004 	sw	s1,4(a3)
    8bac:	86c60248 	lh	a2,584(s6)
    8bb0:	02e02025 	move	a0,s7
    8bb4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    8bb8:	00002825 	move	a1,zero
    8bbc:	3c010001 	lui	at,0x1
    8bc0:	02e17021 	addu	t6,s7,at
    8bc4:	3c10fc30 	lui	s0,0xfc30
    8bc8:	3c11552e 	lui	s1,0x552e
    8bcc:	3631ff7f 	ori	s1,s1,0xff7f
    8bd0:	36109661 	ori	s0,s0,0x9661
    8bd4:	afae0060 	sw	t6,96(sp)
    8bd8:	10000096 	b	8e34 <L8008ABB0+0x864>
    8bdc:	3c12e400 	lui	s2,0xe400
    8be0:	8e8702b0 	lw	a3,688(s4)
    8be4:	3c10fc30 	lui	s0,0xfc30
    8be8:	3c11552e 	lui	s1,0x552e
    8bec:	24ef0008 	addiu	t7,a3,8
    8bf0:	ae8f02b0 	sw	t7,688(s4)
    8bf4:	ace00004 	sw	zero,4(a3)
    8bf8:	ace30000 	sw	v1,0(a3)
    8bfc:	8e8702b0 	lw	a3,688(s4)
    8c00:	3631ff7f 	ori	s1,s1,0xff7f
    8c04:	36109661 	ori	s0,s0,0x9661
    8c08:	24f80008 	addiu	t8,a3,8
    8c0c:	ae9802b0 	sw	t8,688(s4)
    8c10:	acf10004 	sw	s1,4(a3)
    8c14:	acf00000 	sw	s0,0(a3)
    8c18:	8e8702b0 	lw	a3,688(s4)
    8c1c:	3c0afa00 	lui	t2,0xfa00
    8c20:	2401ff00 	li	at,-256
    8c24:	24f90008 	addiu	t9,a3,8
    8c28:	ae9902b0 	sw	t9,688(s4)
    8c2c:	acea0000 	sw	t2,0(a3)
    8c30:	96cb0248 	lhu	t3,584(s6)
    8c34:	3c0ffd70 	lui	t7,0xfd70
    8c38:	3c080000 	lui	t0,0x0
    8c3c:	316c00ff 	andi	t4,t3,0xff
    8c40:	01816825 	or	t5,t4,at
    8c44:	aced0004 	sw	t5,4(a3)
    8c48:	8e8702b0 	lw	a3,688(s4)
    8c4c:	3c0c0700 	lui	t4,0x700
    8c50:	3c0bf570 	lui	t3,0xf570
    8c54:	24ee0008 	addiu	t6,a3,8
    8c58:	ae8e02b0 	sw	t6,688(s4)
    8c5c:	acef0000 	sw	t7,0(a3)
    8c60:	8ed80134 	lw	t8,308(s6)
    8c64:	3c0ee600 	lui	t6,0xe600
    8c68:	3c0142c8 	lui	at,0x42c8
    8c6c:	27190180 	addiu	t9,t8,384
    8c70:	acf90004 	sw	t9,4(a3)
    8c74:	8e8702b0 	lw	a3,688(s4)
    8c78:	3c19070b 	lui	t9,0x70b
    8c7c:	3739f2ab 	ori	t9,t9,0xf2ab
    8c80:	24ea0008 	addiu	t2,a3,8
    8c84:	ae8a02b0 	sw	t2,688(s4)
    8c88:	acec0004 	sw	t4,4(a3)
    8c8c:	aceb0000 	sw	t3,0(a3)
    8c90:	8e8702b0 	lw	a3,688(s4)
    8c94:	3c18f300 	lui	t8,0xf300
    8c98:	3c0be700 	lui	t3,0xe700
    8c9c:	24ed0008 	addiu	t5,a3,8
    8ca0:	ae8d02b0 	sw	t5,688(s4)
    8ca4:	ace00004 	sw	zero,4(a3)
    8ca8:	acee0000 	sw	t6,0(a3)
    8cac:	8e8702b0 	lw	a3,688(s4)
    8cb0:	3c0df560 	lui	t5,0xf560
    8cb4:	35ad0600 	ori	t5,t5,0x600
    8cb8:	24ef0008 	addiu	t7,a3,8
    8cbc:	ae8f02b0 	sw	t7,688(s4)
    8cc0:	acf90004 	sw	t9,4(a3)
    8cc4:	acf80000 	sw	t8,0(a3)
    8cc8:	8e8702b0 	lw	a3,688(s4)
    8ccc:	3c18000b 	lui	t8,0xb
    8cd0:	3718c03c 	ori	t8,t8,0xc03c
    8cd4:	24ea0008 	addiu	t2,a3,8
    8cd8:	ae8a02b0 	sw	t2,688(s4)
    8cdc:	ace00004 	sw	zero,4(a3)
    8ce0:	aceb0000 	sw	t3,0(a3)
    8ce4:	8e8702b0 	lw	a3,688(s4)
    8ce8:	3c0ff200 	lui	t7,0xf200
    8cec:	44814000 	mtc1	at,$f8
    8cf0:	24ec0008 	addiu	t4,a3,8
    8cf4:	ae8c02b0 	sw	t4,688(s4)
    8cf8:	ace00004 	sw	zero,4(a3)
    8cfc:	aced0000 	sw	t5,0(a3)
    8d00:	8e8702b0 	lw	a3,688(s4)
    8d04:	3c014480 	lui	at,0x4480
    8d08:	44818000 	mtc1	at,$f16
    8d0c:	24ee0008 	addiu	t6,a3,8
    8d10:	ae8e02b0 	sw	t6,688(s4)
    8d14:	acf80004 	sw	t8,4(a3)
    8d18:	acef0000 	sw	t7,0(a3)
    8d1c:	92b91409 	lbu	t9,5129(s5)
    8d20:	8d080000 	lw	t0,0(t0)
    8d24:	3c180000 	lui	t8,0x0
    8d28:	00195040 	sll	t2,t9,0x1
    8d2c:	010a5821 	addu	t3,t0,t2
    8d30:	856c0dde 	lh	t4,3550(t3)
    8d34:	3c12e400 	lui	s2,0xe400
    8d38:	3c010001 	lui	at,0x1
    8d3c:	448c2000 	mtc1	t4,$f4
    8d40:	00000000 	nop
    8d44:	468021a0 	cvt.s.w	$f6,$f4
    8d48:	46083283 	div.s	$f10,$f6,$f8
    8d4c:	460a8483 	div.s	$f18,$f16,$f10
    8d50:	4600910d 	trunc.w.s	$f4,$f18
    8d54:	440e2000 	mfc1	t6,$f4
    8d58:	00000000 	nop
    8d5c:	a50e0d94 	sh	t6,3476(t0)
    8d60:	8e8702b0 	lw	a3,688(s4)
    8d64:	24ef0008 	addiu	t7,a3,8
    8d68:	ae8f02b0 	sw	t7,688(s4)
    8d6c:	92b91409 	lbu	t9,5129(s5)
    8d70:	8f180000 	lw	t8,0(t8)
    8d74:	00195040 	sll	t2,t9,0x1
    8d78:	030a1021 	addu	v0,t8,t2
    8d7c:	844b0dea 	lh	t3,3562(v0)
    8d80:	84590de4 	lh	t9,3556(v0)
    8d84:	256c0010 	addiu	t4,t3,16
    8d88:	27380030 	addiu	t8,t9,48
    8d8c:	00185080 	sll	t2,t8,0x2
    8d90:	000c6880 	sll	t5,t4,0x2
    8d94:	31ae0fff 	andi	t6,t5,0xfff
    8d98:	314b0fff 	andi	t3,t2,0xfff
    8d9c:	000b6300 	sll	t4,t3,0xc
    8da0:	01d27825 	or	t7,t6,s2
    8da4:	01ec6825 	or	t5,t7,t4
    8da8:	aced0000 	sw	t5,0(a3)
    8dac:	92b91409 	lbu	t9,5129(s5)
    8db0:	3c0e0000 	lui	t6,0x0
    8db4:	8dce0000 	lw	t6,0(t6)
    8db8:	0019c040 	sll	t8,t9,0x1
    8dbc:	01d81021 	addu	v0,t6,t8
    8dc0:	844c0de4 	lh	t4,3556(v0)
    8dc4:	844a0dea 	lh	t2,3562(v0)
    8dc8:	000c6880 	sll	t5,t4,0x2
    8dcc:	31b90fff 	andi	t9,t5,0xfff
    8dd0:	000a5880 	sll	t3,t2,0x2
    8dd4:	316f0fff 	andi	t7,t3,0xfff
    8dd8:	00197300 	sll	t6,t9,0xc
    8ddc:	01eec025 	or	t8,t7,t6
    8de0:	acf80004 	sw	t8,4(a3)
    8de4:	8e8702b0 	lw	a3,688(s4)
    8de8:	3c0be100 	lui	t3,0xe100
    8dec:	3c0df100 	lui	t5,0xf100
    8df0:	24ea0008 	addiu	t2,a3,8
    8df4:	ae8a02b0 	sw	t2,688(s4)
    8df8:	ace00004 	sw	zero,4(a3)
    8dfc:	aceb0000 	sw	t3,0(a3)
    8e00:	8e8702b0 	lw	a3,688(s4)
    8e04:	3c190000 	lui	t9,0x0
    8e08:	02e1c021 	addu	t8,s7,at
    8e0c:	24ec0008 	addiu	t4,a3,8
    8e10:	ae8c02b0 	sw	t4,688(s4)
    8e14:	aced0000 	sw	t5,0(a3)
    8e18:	8f390000 	lw	t9,0(t9)
    8e1c:	87230d94 	lh	v1,3476(t9)
    8e20:	3063ffff 	andi	v1,v1,0xffff
    8e24:	00037c00 	sll	t7,v1,0x10
    8e28:	006f7025 	or	t6,v1,t7
    8e2c:	acee0004 	sw	t6,4(a3)
    8e30:	afb80060 	sw	t8,96(sp)
    8e34:	8e8702b0 	lw	a3,688(s4)
    8e38:	3c0be700 	lui	t3,0xe700
    8e3c:	24ea0008 	addiu	t2,a3,8
    8e40:	ae8a02b0 	sw	t2,688(s4)
    8e44:	ace00004 	sw	zero,4(a3)
    8e48:	aceb0000 	sw	t3,0(a3)
    8e4c:	92ac0069 	lbu	t4,105(s5)
    8e50:	298100f0 	slti	at,t4,240
    8e54:	50200029 	beqzl	at,8efc <L8008ABB0+0x92c>
    8e58:	8e8702b0 	lw	a3,688(s4)
    8e5c:	8e8702b0 	lw	a3,688(s4)
    8e60:	3c19fa00 	lui	t9,0xfa00
    8e64:	2401ff00 	li	at,-256
    8e68:	24ed0008 	addiu	t5,a3,8
    8e6c:	ae8d02b0 	sw	t5,688(s4)
    8e70:	acf90000 	sw	t9,0(a3)
    8e74:	96cf024a 	lhu	t7,586(s6)
    8e78:	3c0bfc11 	lui	t3,0xfc11
    8e7c:	3c0cff2f 	lui	t4,0xff2f
    8e80:	31ee00ff 	andi	t6,t7,0xff
    8e84:	01c1c025 	or	t8,t6,at
    8e88:	acf80004 	sw	t8,4(a3)
    8e8c:	8e8702b0 	lw	a3,688(s4)
    8e90:	358cffff 	ori	t4,t4,0xffff
    8e94:	356b9623 	ori	t3,t3,0x9623
    8e98:	24ea0008 	addiu	t2,a3,8
    8e9c:	ae8a02b0 	sw	t2,688(s4)
    8ea0:	acec0004 	sw	t4,4(a3)
    8ea4:	aceb0000 	sw	t3,0(a3)
    8ea8:	8ec50138 	lw	a1,312(s6)
    8eac:	02e02025 	move	a0,s7
    8eb0:	24060001 	li	a2,1
    8eb4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    8eb8:	24a51000 	addiu	a1,a1,4096
    8ebc:	8e8702b0 	lw	a3,688(s4)
    8ec0:	3c19e700 	lui	t9,0xe700
    8ec4:	02e02025 	move	a0,s7
    8ec8:	24ed0008 	addiu	t5,a3,8
    8ecc:	ae8d02b0 	sw	t5,688(s4)
    8ed0:	ace00004 	sw	zero,4(a3)
    8ed4:	acf90000 	sw	t9,0(a3)
    8ed8:	8e8702b0 	lw	a3,688(s4)
    8edc:	24050001 	li	a1,1
    8ee0:	24ef0008 	addiu	t7,a3,8
    8ee4:	ae8f02b0 	sw	t7,688(s4)
    8ee8:	acf10004 	sw	s1,4(a3)
    8eec:	acf00000 	sw	s0,0(a3)
    8ef0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    8ef4:	86c6024a 	lh	a2,586(s6)
    8ef8:	8e8702b0 	lw	a3,688(s4)
    8efc:	3c18e700 	lui	t8,0xe700
    8f00:	24ee0008 	addiu	t6,a3,8
    8f04:	ae8e02b0 	sw	t6,688(s4)
    8f08:	ace00004 	sw	zero,4(a3)
    8f0c:	acf80000 	sw	t8,0(a3)
    8f10:	92aa006a 	lbu	t2,106(s5)
    8f14:	294100f0 	slti	at,t2,240
    8f18:	50200029 	beqzl	at,8fc0 <L8008ABB0+0x9f0>
    8f1c:	8e8702b0 	lw	a3,688(s4)
    8f20:	8e8702b0 	lw	a3,688(s4)
    8f24:	3c0cfa00 	lui	t4,0xfa00
    8f28:	2401ff00 	li	at,-256
    8f2c:	24eb0008 	addiu	t3,a3,8
    8f30:	ae8b02b0 	sw	t3,688(s4)
    8f34:	acec0000 	sw	t4,0(a3)
    8f38:	96cd024c 	lhu	t5,588(s6)
    8f3c:	3c18fc11 	lui	t8,0xfc11
    8f40:	3c0aff2f 	lui	t2,0xff2f
    8f44:	31b900ff 	andi	t9,t5,0xff
    8f48:	03217825 	or	t7,t9,at
    8f4c:	acef0004 	sw	t7,4(a3)
    8f50:	8e8702b0 	lw	a3,688(s4)
    8f54:	354affff 	ori	t2,t2,0xffff
    8f58:	37189623 	ori	t8,t8,0x9623
    8f5c:	24ee0008 	addiu	t6,a3,8
    8f60:	ae8e02b0 	sw	t6,688(s4)
    8f64:	acea0004 	sw	t2,4(a3)
    8f68:	acf80000 	sw	t8,0(a3)
    8f6c:	8ec50138 	lw	a1,312(s6)
    8f70:	02e02025 	move	a0,s7
    8f74:	24060002 	li	a2,2
    8f78:	0c000000 	jal	0 <Interface_ChangeAlpha>
    8f7c:	24a52000 	addiu	a1,a1,8192
    8f80:	8e8702b0 	lw	a3,688(s4)
    8f84:	3c0ce700 	lui	t4,0xe700
    8f88:	02e02025 	move	a0,s7
    8f8c:	24eb0008 	addiu	t3,a3,8
    8f90:	ae8b02b0 	sw	t3,688(s4)
    8f94:	ace00004 	sw	zero,4(a3)
    8f98:	acec0000 	sw	t4,0(a3)
    8f9c:	8e8702b0 	lw	a3,688(s4)
    8fa0:	24050002 	li	a1,2
    8fa4:	24ed0008 	addiu	t5,a3,8
    8fa8:	ae8d02b0 	sw	t5,688(s4)
    8fac:	acf10004 	sw	s1,4(a3)
    8fb0:	acf00000 	sw	s0,0(a3)
    8fb4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    8fb8:	86c6024c 	lh	a2,588(s6)
    8fbc:	8e8702b0 	lw	a3,688(s4)
    8fc0:	3c0fe700 	lui	t7,0xe700
    8fc4:	24f90008 	addiu	t9,a3,8
    8fc8:	ae9902b0 	sw	t9,688(s4)
    8fcc:	ace00004 	sw	zero,4(a3)
    8fd0:	acef0000 	sw	t7,0(a3)
    8fd4:	92ae006b 	lbu	t6,107(s5)
    8fd8:	29c100f0 	slti	at,t6,240
    8fdc:	10200028 	beqz	at,9080 <L8008ABB0+0xab0>
    8fe0:	00000000 	nop
    8fe4:	8e8702b0 	lw	a3,688(s4)
    8fe8:	3c0afa00 	lui	t2,0xfa00
    8fec:	2401ff00 	li	at,-256
    8ff0:	24f80008 	addiu	t8,a3,8
    8ff4:	ae9802b0 	sw	t8,688(s4)
    8ff8:	acea0000 	sw	t2,0(a3)
    8ffc:	96cb024e 	lhu	t3,590(s6)
    9000:	3c0ffc11 	lui	t7,0xfc11
    9004:	3c0eff2f 	lui	t6,0xff2f
    9008:	316c00ff 	andi	t4,t3,0xff
    900c:	01816825 	or	t5,t4,at
    9010:	aced0004 	sw	t5,4(a3)
    9014:	8e8702b0 	lw	a3,688(s4)
    9018:	35ceffff 	ori	t6,t6,0xffff
    901c:	35ef9623 	ori	t7,t7,0x9623
    9020:	24f90008 	addiu	t9,a3,8
    9024:	ae9902b0 	sw	t9,688(s4)
    9028:	acee0004 	sw	t6,4(a3)
    902c:	acef0000 	sw	t7,0(a3)
    9030:	8ec50138 	lw	a1,312(s6)
    9034:	02e02025 	move	a0,s7
    9038:	24060003 	li	a2,3
    903c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    9040:	24a53000 	addiu	a1,a1,12288
    9044:	8e8702b0 	lw	a3,688(s4)
    9048:	3c0ae700 	lui	t2,0xe700
    904c:	02e02025 	move	a0,s7
    9050:	24f80008 	addiu	t8,a3,8
    9054:	ae9802b0 	sw	t8,688(s4)
    9058:	ace00004 	sw	zero,4(a3)
    905c:	acea0000 	sw	t2,0(a3)
    9060:	8e8702b0 	lw	a3,688(s4)
    9064:	24050003 	li	a1,3
    9068:	24eb0008 	addiu	t3,a3,8
    906c:	ae8b02b0 	sw	t3,688(s4)
    9070:	acf10004 	sw	s1,4(a3)
    9074:	acf00000 	sw	s0,0(a3)
    9078:	0c000000 	jal	0 <Interface_ChangeAlpha>
    907c:	86c6024e 	lh	a2,590(s6)
    9080:	0c000000 	jal	0 <Interface_ChangeAlpha>
    9084:	8ee40000 	lw	a0,0(s7)
    9088:	3c080000 	lui	t0,0x0
    908c:	8d080000 	lw	t0,0(t0)
    9090:	02e02025 	move	a0,s7
    9094:	85070ab6 	lh	a3,2742(t0)
    9098:	85050ab4 	lh	a1,2740(t0)
    909c:	24ec002d 	addiu	t4,a3,45
    90a0:	afac0010 	sw	t4,16(sp)
    90a4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    90a8:	24a6002d 	addiu	a2,a1,45
    90ac:	8e8702b0 	lw	a3,688(s4)
    90b0:	3c19d9ff 	lui	t9,0xd9ff
    90b4:	3739f9ff 	ori	t9,t9,0xf9ff
    90b8:	24ed0008 	addiu	t5,a3,8
    90bc:	ae8d02b0 	sw	t5,688(s4)
    90c0:	ace00004 	sw	zero,4(a3)
    90c4:	acf90000 	sw	t9,0(a3)
    90c8:	8e8702b0 	lw	a3,688(s4)
    90cc:	3c0efc11 	lui	t6,0xfc11
    90d0:	3c18ff2f 	lui	t8,0xff2f
    90d4:	24ef0008 	addiu	t7,a3,8
    90d8:	ae8f02b0 	sw	t7,688(s4)
    90dc:	3718ffff 	ori	t8,t8,0xffff
    90e0:	35ce9623 	ori	t6,t6,0x9623
    90e4:	acee0000 	sw	t6,0(a3)
    90e8:	acf80004 	sw	t8,4(a3)
    90ec:	8e8702b0 	lw	a3,688(s4)
    90f0:	3c0bfa00 	lui	t3,0xfa00
    90f4:	3c080000 	lui	t0,0x0
    90f8:	24ea0008 	addiu	t2,a3,8
    90fc:	ae8a02b0 	sw	t2,688(s4)
    9100:	aceb0000 	sw	t3,0(a3)
    9104:	8d080000 	lw	t0,0(t0)
    9108:	02e02025 	move	a0,s7
    910c:	850c0ac4 	lh	t4,2756(t0)
    9110:	850e0ac0 	lh	t6,2752(t0)
    9114:	850b0ac2 	lh	t3,2754(t0)
    9118:	318d00ff 	andi	t5,t4,0xff
    911c:	000ec600 	sll	t8,t6,0x18
    9120:	96ce0246 	lhu	t6,582(s6)
    9124:	000dca00 	sll	t9,t5,0x8
    9128:	03385025 	or	t2,t9,t8
    912c:	316c00ff 	andi	t4,t3,0xff
    9130:	000c6c00 	sll	t5,t4,0x10
    9134:	014d7825 	or	t7,t2,t5
    9138:	31d900ff 	andi	t9,t6,0xff
    913c:	01f9c025 	or	t8,t7,t9
    9140:	0c000000 	jal	0 <Interface_ChangeAlpha>
    9144:	acf80004 	sw	t8,4(a3)
    9148:	8e8702b0 	lw	a3,688(s4)
    914c:	3c0ce700 	lui	t4,0xe700
    9150:	3c080000 	lui	t0,0x0
    9154:	24eb0008 	addiu	t3,a3,8
    9158:	ae8b02b0 	sw	t3,688(s4)
    915c:	ace00004 	sw	zero,4(a3)
    9160:	acec0000 	sw	t4,0(a3)
    9164:	8d080000 	lw	t0,0(t0)
    9168:	02e02025 	move	a0,s7
    916c:	85070abc 	lh	a3,2748(t0)
    9170:	85050aba 	lh	a1,2746(t0)
    9174:	24ea002d 	addiu	t2,a3,45
    9178:	afaa0010 	sw	t2,16(sp)
    917c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    9180:	24a6002d 	addiu	a2,a1,45
    9184:	8e8702b0 	lw	a3,688(s4)
    9188:	3c0ed9ff 	lui	t6,0xd9ff
    918c:	35ceffff 	ori	t6,t6,0xffff
    9190:	24ed0008 	addiu	t5,a3,8
    9194:	ae8d02b0 	sw	t5,688(s4)
    9198:	240f0400 	li	t7,1024
    919c:	acef0004 	sw	t7,4(a3)
    91a0:	acee0000 	sw	t6,0(a3)
    91a4:	8e8702b0 	lw	a3,688(s4)
    91a8:	3c0bfa00 	lui	t3,0xfa00
    91ac:	2401ff00 	li	at,-256
    91b0:	24f90008 	addiu	t9,a3,8
    91b4:	ae9902b0 	sw	t9,688(s4)
    91b8:	acf10004 	sw	s1,4(a3)
    91bc:	acf00000 	sw	s0,0(a3)
    91c0:	8e8702b0 	lw	a3,688(s4)
    91c4:	3c0ffb00 	lui	t7,0xfb00
    91c8:	3c190000 	lui	t9,0x0
    91cc:	24f80008 	addiu	t8,a3,8
    91d0:	ae9802b0 	sw	t8,688(s4)
    91d4:	aceb0000 	sw	t3,0(a3)
    91d8:	96cc0246 	lhu	t4,582(s6)
    91dc:	44806000 	mtc1	zero,$f12
    91e0:	318a00ff 	andi	t2,t4,0xff
    91e4:	01416825 	or	t5,t2,at
    91e8:	aced0004 	sw	t5,4(a3)
    91ec:	8e8702b0 	lw	a3,688(s4)
    91f0:	3c014120 	lui	at,0x4120
    91f4:	44818000 	mtc1	at,$f16
    91f8:	24ee0008 	addiu	t6,a3,8
    91fc:	ae8e02b0 	sw	t6,688(s4)
    9200:	ace00004 	sw	zero,4(a3)
    9204:	acef0000 	sw	t7,0(a3)
    9208:	92b81409 	lbu	t8,5129(s5)
    920c:	8f390000 	lw	t9,0(t9)
    9210:	00003825 	move	a3,zero
    9214:	00185840 	sll	t3,t8,0x1
    9218:	032b6021 	addu	t4,t9,t3
    921c:	858a0df0 	lh	t2,3568(t4)
    9220:	46006386 	mov.s	$f14,$f12
    9224:	448a3000 	mtc1	t2,$f6
    9228:	00000000 	nop
    922c:	46803220 	cvt.s.w	$f8,$f6
    9230:	46104283 	div.s	$f10,$f8,$f16
    9234:	44065000 	mfc1	a2,$f10
    9238:	0c000000 	jal	0 <Interface_ChangeAlpha>
    923c:	00000000 	nop
    9240:	3c013f80 	lui	at,0x3f80
    9244:	44816000 	mtc1	at,$f12
    9248:	24070001 	li	a3,1
    924c:	44066000 	mfc1	a2,$f12
    9250:	0c000000 	jal	0 <Interface_ChangeAlpha>
    9254:	46006386 	mov.s	$f14,$f12
    9258:	3c010000 	lui	at,0x0
    925c:	c4240000 	lwc1	$f4,0(at)
    9260:	c6d201f4 	lwc1	$f18,500(s6)
    9264:	24050001 	li	a1,1
    9268:	0c000000 	jal	0 <Interface_ChangeAlpha>
    926c:	46049303 	div.s	$f12,$f18,$f4
    9270:	8e9002b0 	lw	s0,688(s4)
    9274:	3c13da38 	lui	s3,0xda38
    9278:	36730003 	ori	s3,s3,0x3
    927c:	260d0008 	addiu	t5,s0,8
    9280:	ae8d02b0 	sw	t5,688(s4)
    9284:	3c050000 	lui	a1,0x0
    9288:	ae130000 	sw	s3,0(s0)
    928c:	8ee40000 	lw	a0,0(s7)
    9290:	24a50000 	addiu	a1,a1,0
    9294:	0c000000 	jal	0 <Interface_ChangeAlpha>
    9298:	24060e75 	li	a2,3701
    929c:	ae020004 	sw	v0,4(s0)
    92a0:	8e8702b0 	lw	a3,688(s4)
    92a4:	3c110100 	lui	s1,0x100
    92a8:	36314008 	ori	s1,s1,0x4008
    92ac:	24ee0008 	addiu	t6,a3,8
    92b0:	ae8e02b0 	sw	t6,688(s4)
    92b4:	acf10000 	sw	s1,0(a3)
    92b8:	8ecf0128 	lw	t7,296(s6)
    92bc:	25f80040 	addiu	t8,t7,64
    92c0:	acf80004 	sw	t8,4(a3)
    92c4:	86c201ec 	lh	v0,492(s6)
    92c8:	28410002 	slti	at,v0,2
    92cc:	14200003 	bnez	at,92dc <L8008ABB0+0xd0c>
    92d0:	24010003 	li	at,3
    92d4:	54410007 	bnel	v0,at,92f4 <L8008ABB0+0xd24>
    92d8:	8ec50134 	lw	a1,308(s6)
    92dc:	8ee40000 	lw	a0,0(s7)
    92e0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    92e4:	8ec50134 	lw	a1,308(s6)
    92e8:	10000006 	b	9304 <L8008ABB0+0xd34>
    92ec:	8e8702b0 	lw	a3,688(s4)
    92f0:	8ec50134 	lw	a1,308(s6)
    92f4:	8ee40000 	lw	a0,0(s7)
    92f8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    92fc:	24a50180 	addiu	a1,a1,384
    9300:	8e8702b0 	lw	a3,688(s4)
    9304:	3c0be700 	lui	t3,0xe700
    9308:	02c02025 	move	a0,s6
    930c:	24f90008 	addiu	t9,a3,8
    9310:	ae9902b0 	sw	t9,688(s4)
    9314:	ace00004 	sw	zero,4(a3)
    9318:	0c000000 	jal	0 <Interface_ChangeAlpha>
    931c:	aceb0000 	sw	t3,0(a3)
    9320:	8fac0068 	lw	t4,104(sp)
    9324:	24010006 	li	at,6
    9328:	958a01d4 	lhu	t2,468(t4)
    932c:	15410153 	bne	t2,at,987c <L8008ABB0+0x12ac>
    9330:	00000000 	nop
    9334:	958d01e4 	lhu	t5,484(t4)
    9338:	24010003 	li	at,3
    933c:	15a1014f 	bne	t5,at,987c <L8008ABB0+0x12ac>
    9340:	00000000 	nop
    9344:	8e8702b0 	lw	a3,688(s4)
    9348:	3c0fdb06 	lui	t7,0xdb06
    934c:	35ef0020 	ori	t7,t7,0x20
    9350:	24ee0008 	addiu	t6,a3,8
    9354:	ae8e02b0 	sw	t6,688(s4)
    9358:	acef0000 	sw	t7,0(a3)
    935c:	8fb80068 	lw	t8,104(sp)
    9360:	8f190128 	lw	t9,296(t8)
    9364:	acf90004 	sw	t9,4(a3)
    9368:	0c000000 	jal	0 <Interface_ChangeAlpha>
    936c:	8ee40000 	lw	a0,0(s7)
    9370:	8e8702b0 	lw	a3,688(s4)
    9374:	3c0afc11 	lui	t2,0xfc11
    9378:	3c0cff2f 	lui	t4,0xff2f
    937c:	24eb0008 	addiu	t3,a3,8
    9380:	ae8b02b0 	sw	t3,688(s4)
    9384:	358cffff 	ori	t4,t4,0xffff
    9388:	354a9623 	ori	t2,t2,0x9623
    938c:	acea0000 	sw	t2,0(a3)
    9390:	acec0004 	sw	t4,4(a3)
    9394:	8e8702b0 	lw	a3,688(s4)
    9398:	3c0e0000 	lui	t6,0x0
    939c:	25ce0000 	addiu	t6,t6,0
    93a0:	24ed0008 	addiu	t5,a3,8
    93a4:	ae8d02b0 	sw	t5,688(s4)
    93a8:	acee0004 	sw	t6,4(a3)
    93ac:	acf30000 	sw	s3,0(a3)
    93b0:	8fa40068 	lw	a0,104(sp)
    93b4:	2405000a 	li	a1,10
    93b8:	3c030000 	lui	v1,0x0
    93bc:	848f0254 	lh	t7,596(a0)
    93c0:	8c980168 	lw	t8,360(a0)
    93c4:	24630000 	addiu	v1,v1,0
    93c8:	01e5001a 	div	zero,t7,a1
    93cc:	00008012 	mflo	s0
    93d0:	00108400 	sll	s0,s0,0x10
    93d4:	00108403 	sra	s0,s0,0x10
    93d8:	a7100120 	sh	s0,288(t8)
    93dc:	8c990168 	lw	t9,360(a0)
    93e0:	00e01025 	move	v0,a3
    93e4:	14a00002 	bnez	a1,93f0 <L8008ABB0+0xe20>
    93e8:	00000000 	nop
    93ec:	0007000d 	break	0x7
    93f0:	2401ffff 	li	at,-1
    93f4:	14a10004 	bne	a1,at,9408 <L8008ABB0+0xe38>
    93f8:	3c018000 	lui	at,0x8000
    93fc:	15e10002 	bne	t7,at,9408 <L8008ABB0+0xe38>
    9400:	00000000 	nop
    9404:	0006000d 	break	0x6
    9408:	a7300100 	sh	s0,256(t9)
    940c:	8c6b0000 	lw	t3,0(v1)
    9410:	8c820168 	lw	v0,360(a0)
    9414:	856a0e48 	lh	t2,3656(t3)
    9418:	844d0100 	lh	t5,256(v0)
    941c:	0145001a 	div	zero,t2,a1
    9420:	00006012 	mflo	t4
    9424:	018d8021 	addu	s0,t4,t5
    9428:	00108400 	sll	s0,s0,0x10
    942c:	00108403 	sra	s0,s0,0x10
    9430:	a4500130 	sh	s0,304(v0)
    9434:	8c8e0168 	lw	t6,360(a0)
    9438:	14a00002 	bnez	a1,9444 <L8008ABB0+0xe74>
    943c:	00000000 	nop
    9440:	0007000d 	break	0x7
    9444:	2401ffff 	li	at,-1
    9448:	14a10004 	bne	a1,at,945c <L8008ABB0+0xe8c>
    944c:	3c018000 	lui	at,0x8000
    9450:	15410002 	bne	t2,at,945c <L8008ABB0+0xe8c>
    9454:	00000000 	nop
    9458:	0006000d 	break	0x6
    945c:	a5d00110 	sh	s0,272(t6)
    9460:	848f0256 	lh	t7,598(a0)
    9464:	8c980168 	lw	t8,360(a0)
    9468:	01e5001a 	div	zero,t7,a1
    946c:	00008012 	mflo	s0
    9470:	00108400 	sll	s0,s0,0x10
    9474:	00108403 	sra	s0,s0,0x10
    9478:	a7100112 	sh	s0,274(t8)
    947c:	8c990168 	lw	t9,360(a0)
    9480:	14a00002 	bnez	a1,948c <L8008ABB0+0xebc>
    9484:	00000000 	nop
    9488:	0007000d 	break	0x7
    948c:	2401ffff 	li	at,-1
    9490:	14a10004 	bne	a1,at,94a4 <L8008ABB0+0xed4>
    9494:	3c018000 	lui	at,0x8000
    9498:	15e10002 	bne	t7,at,94a4 <L8008ABB0+0xed4>
    949c:	00000000 	nop
    94a0:	0006000d 	break	0x6
    94a4:	a7300102 	sh	s0,258(t9)
    94a8:	8c6a0000 	lw	t2,0(v1)
    94ac:	8c820168 	lw	v0,360(a0)
    94b0:	3c190000 	lui	t9,0x0
    94b4:	854c0e48 	lh	t4,3656(t2)
    94b8:	844b0102 	lh	t3,258(v0)
    94bc:	0185001a 	div	zero,t4,a1
    94c0:	00006812 	mflo	t5
    94c4:	016d8023 	subu	s0,t3,t5
    94c8:	00108400 	sll	s0,s0,0x10
    94cc:	00108403 	sra	s0,s0,0x10
    94d0:	a4500132 	sh	s0,306(v0)
    94d4:	8c8e0168 	lw	t6,360(a0)
    94d8:	14a00002 	bnez	a1,94e4 <L8008ABB0+0xf14>
    94dc:	00000000 	nop
    94e0:	0007000d 	break	0x7
    94e4:	2401ffff 	li	at,-1
    94e8:	14a10004 	bne	a1,at,94fc <L8008ABB0+0xf2c>
    94ec:	3c018000 	lui	at,0x8000
    94f0:	15810002 	bne	t4,at,94fc <L8008ABB0+0xf2c>
    94f4:	00000000 	nop
    94f8:	0006000d 	break	0x6
    94fc:	a5d00122 	sh	s0,290(t6)
    9500:	8faf0068 	lw	t7,104(sp)
    9504:	3c0e0000 	lui	t6,0x0
    9508:	3c0dfa00 	lui	t5,0xfa00
    950c:	95e2024e 	lhu	v0,590(t7)
    9510:	284100bf 	slti	at,v0,191
    9514:	5020004a 	beqzl	at,9640 <L8008ABB0+0x1070>
    9518:	8e8702b0 	lw	a3,688(s4)
    951c:	8e8702b0 	lw	a3,688(s4)
    9520:	3c19fa00 	lui	t9,0xfa00
    9524:	2401ff00 	li	at,-256
    9528:	24f80008 	addiu	t8,a3,8
    952c:	ae9802b0 	sw	t8,688(s4)
    9530:	acf90000 	sw	t9,0(a3)
    9534:	85ea0258 	lh	t2,600(t7)
    9538:	01e01825 	move	v1,t7
    953c:	3c19fd18 	lui	t9,0xfd18
    9540:	314c00ff 	andi	t4,t2,0xff
    9544:	01815825 	or	t3,t4,at
    9548:	aceb0004 	sw	t3,4(a3)
    954c:	8e8702b0 	lw	a3,688(s4)
    9550:	3c0b0000 	lui	t3,0x0
    9554:	24ed0008 	addiu	t5,a3,8
    9558:	ae8d02b0 	sw	t5,688(s4)
    955c:	acf10000 	sw	s1,0(a3)
    9560:	8dee0168 	lw	t6,360(t7)
    9564:	25cf0100 	addiu	t7,t6,256
    9568:	acef0004 	sw	t7,4(a3)
    956c:	8e8702b0 	lw	a3,688(s4)
    9570:	3c0f0700 	lui	t7,0x700
    9574:	3c0ef518 	lui	t6,0xf518
    9578:	24f80008 	addiu	t8,a3,8
    957c:	ae9802b0 	sw	t8,688(s4)
    9580:	acf90000 	sw	t9,0(a3)
    9584:	946a024e 	lhu	t2,590(v1)
    9588:	3c19e600 	lui	t9,0xe600
    958c:	000a6080 	sll	t4,t2,0x2
    9590:	016c5821 	addu	t3,t3,t4
    9594:	8d6b0000 	lw	t3,0(t3)
    9598:	3c0cf300 	lui	t4,0xf300
    959c:	aceb0004 	sw	t3,4(a3)
    95a0:	8e8702b0 	lw	a3,688(s4)
    95a4:	3c0b073f 	lui	t3,0x73f
    95a8:	356bf080 	ori	t3,t3,0xf080
    95ac:	24ed0008 	addiu	t5,a3,8
    95b0:	ae8d02b0 	sw	t5,688(s4)
    95b4:	acef0004 	sw	t7,4(a3)
    95b8:	acee0000 	sw	t6,0(a3)
    95bc:	8e8702b0 	lw	a3,688(s4)
    95c0:	3c0ee700 	lui	t6,0xe700
    95c4:	24f80008 	addiu	t8,a3,8
    95c8:	ae9802b0 	sw	t8,688(s4)
    95cc:	ace00004 	sw	zero,4(a3)
    95d0:	acf90000 	sw	t9,0(a3)
    95d4:	8e8702b0 	lw	a3,688(s4)
    95d8:	3c18f518 	lui	t8,0xf518
    95dc:	37181000 	ori	t8,t8,0x1000
    95e0:	24ea0008 	addiu	t2,a3,8
    95e4:	ae8a02b0 	sw	t2,688(s4)
    95e8:	aceb0004 	sw	t3,4(a3)
    95ec:	acec0000 	sw	t4,0(a3)
    95f0:	8e8702b0 	lw	a3,688(s4)
    95f4:	3c0c0007 	lui	t4,0x7
    95f8:	358cc07c 	ori	t4,t4,0xc07c
    95fc:	24ed0008 	addiu	t5,a3,8
    9600:	ae8d02b0 	sw	t5,688(s4)
    9604:	ace00004 	sw	zero,4(a3)
    9608:	acee0000 	sw	t6,0(a3)
    960c:	8e8702b0 	lw	a3,688(s4)
    9610:	3c0af200 	lui	t2,0xf200
    9614:	24ef0008 	addiu	t7,a3,8
    9618:	ae8f02b0 	sw	t7,688(s4)
    961c:	ace00004 	sw	zero,4(a3)
    9620:	acf80000 	sw	t8,0(a3)
    9624:	8e8702b0 	lw	a3,688(s4)
    9628:	24f90008 	addiu	t9,a3,8
    962c:	ae9902b0 	sw	t9,688(s4)
    9630:	acec0004 	sw	t4,4(a3)
    9634:	10000089 	b	985c <L8008ABB0+0x128c>
    9638:	acea0000 	sw	t2,0(a3)
    963c:	8e8702b0 	lw	a3,688(s4)
    9640:	2453ff41 	addiu	s3,v0,-191
    9644:	00139c00 	sll	s3,s3,0x10
    9648:	00139c03 	sra	s3,s3,0x10
    964c:	24eb0008 	addiu	t3,a3,8
    9650:	ae8b02b0 	sw	t3,688(s4)
    9654:	00131840 	sll	v1,s3,0x1
    9658:	0323c821 	addu	t9,t9,v1
    965c:	aced0000 	sw	t5,0(a3)
    9660:	872a0000 	lh	t2,0(t9)
    9664:	01c37021 	addu	t6,t6,v1
    9668:	85ce0000 	lh	t6,0(t6)
    966c:	3c0d0000 	lui	t5,0x0
    9670:	000a6600 	sll	t4,t2,0x18
    9674:	8faa0068 	lw	t2,104(sp)
    9678:	01a36821 	addu	t5,t5,v1
    967c:	31cf00ff 	andi	t7,t6,0xff
    9680:	85ad0000 	lh	t5,0(t5)
    9684:	000fc200 	sll	t8,t7,0x8
    9688:	030c5825 	or	t3,t8,t4
    968c:	85580258 	lh	t8,600(t2)
    9690:	31ae00ff 	andi	t6,t5,0xff
    9694:	000e7c00 	sll	t7,t6,0x10
    9698:	016fc825 	or	t9,t3,t7
    969c:	330c00ff 	andi	t4,t8,0xff
    96a0:	032c6825 	or	t5,t9,t4
    96a4:	aced0004 	sw	t5,4(a3)
    96a8:	8fae0068 	lw	t6,104(sp)
    96ac:	85c40258 	lh	a0,600(t6)
    96b0:	18800030 	blez	a0,9774 <L8008ABB0+0x11a4>
    96b4:	288100ff 	slti	at,a0,255
    96b8:	1020002e 	beqz	at,9774 <L8008ABB0+0x11a4>
    96bc:	01c02825 	move	a1,t6
    96c0:	8ca20168 	lw	v0,360(a1)
    96c4:	04810003 	bgez	a0,96d4 <L8008ABB0+0x1104>
    96c8:	000498c3 	sra	s3,a0,0x3
    96cc:	24810007 	addiu	at,a0,7
    96d0:	000198c3 	sra	s3,at,0x3
    96d4:	06610002 	bgez	s3,96e0 <L8008ABB0+0x1110>
    96d8:	02600821 	move	at,s3
    96dc:	26610001 	addiu	at,s3,1
    96e0:	00019843 	sra	s3,at,0x1
    96e4:	844b0100 	lh	t3,256(v0)
    96e8:	00139c00 	sll	s3,s3,0x10
    96ec:	00139c03 	sra	s3,s3,0x10
    96f0:	01738023 	subu	s0,t3,s3
    96f4:	00108400 	sll	s0,s0,0x10
    96f8:	00108403 	sra	s0,s0,0x10
    96fc:	a4500120 	sh	s0,288(v0)
    9700:	8caf0168 	lw	t7,360(a1)
    9704:	00131840 	sll	v1,s3,0x1
    9708:	a5f00100 	sh	s0,256(t7)
    970c:	8ca20168 	lw	v0,360(a1)
    9710:	844a0100 	lh	t2,256(v0)
    9714:	01438021 	addu	s0,t2,v1
    9718:	26100020 	addiu	s0,s0,32
    971c:	00108400 	sll	s0,s0,0x10
    9720:	00108403 	sra	s0,s0,0x10
    9724:	a4500130 	sh	s0,304(v0)
    9728:	8cb80168 	lw	t8,360(a1)
    972c:	a7100110 	sh	s0,272(t8)
    9730:	8ca20168 	lw	v0,360(a1)
    9734:	84590102 	lh	t9,258(v0)
    9738:	03338021 	addu	s0,t9,s3
    973c:	00108400 	sll	s0,s0,0x10
    9740:	00108403 	sra	s0,s0,0x10
    9744:	a4500112 	sh	s0,274(v0)
    9748:	8cac0168 	lw	t4,360(a1)
    974c:	a5900102 	sh	s0,258(t4)
    9750:	8ca20168 	lw	v0,360(a1)
    9754:	844d0102 	lh	t5,258(v0)
    9758:	01a38023 	subu	s0,t5,v1
    975c:	2610ffe0 	addiu	s0,s0,-32
    9760:	00108400 	sll	s0,s0,0x10
    9764:	00108403 	sra	s0,s0,0x10
    9768:	a4500132 	sh	s0,306(v0)
    976c:	8cae0168 	lw	t6,360(a1)
    9770:	a5d00122 	sh	s0,290(t6)
    9774:	8e8702b0 	lw	a3,688(s4)
    9778:	3c0d0000 	lui	t5,0x0
    977c:	25ad0000 	addiu	t5,t5,0
    9780:	24eb0008 	addiu	t3,a3,8
    9784:	ae8b02b0 	sw	t3,688(s4)
    9788:	acf10000 	sw	s1,0(a3)
    978c:	8faf0068 	lw	t7,104(sp)
    9790:	3c0cfd70 	lui	t4,0xfd70
    9794:	3c0bf570 	lui	t3,0xf570
    9798:	8dea0168 	lw	t2,360(t7)
    979c:	3c0f0700 	lui	t7,0x700
    97a0:	25580100 	addiu	t8,t2,256
    97a4:	acf80004 	sw	t8,4(a3)
    97a8:	8e8702b0 	lw	a3,688(s4)
    97ac:	3c18e600 	lui	t8,0xe600
    97b0:	24f90008 	addiu	t9,a3,8
    97b4:	ae9902b0 	sw	t9,688(s4)
    97b8:	aced0004 	sw	t5,4(a3)
    97bc:	acec0000 	sw	t4,0(a3)
    97c0:	8e8702b0 	lw	a3,688(s4)
    97c4:	3c0d071f 	lui	t5,0x71f
    97c8:	35adf200 	ori	t5,t5,0xf200
    97cc:	24ee0008 	addiu	t6,a3,8
    97d0:	ae8e02b0 	sw	t6,688(s4)
    97d4:	acef0004 	sw	t7,4(a3)
    97d8:	aceb0000 	sw	t3,0(a3)
    97dc:	8e8702b0 	lw	a3,688(s4)
    97e0:	3c0cf300 	lui	t4,0xf300
    97e4:	3c0be700 	lui	t3,0xe700
    97e8:	24ea0008 	addiu	t2,a3,8
    97ec:	ae8a02b0 	sw	t2,688(s4)
    97f0:	ace00004 	sw	zero,4(a3)
    97f4:	acf80000 	sw	t8,0(a3)
    97f8:	8e8702b0 	lw	a3,688(s4)
    97fc:	3c0af568 	lui	t2,0xf568
    9800:	354a0800 	ori	t2,t2,0x800
    9804:	24f90008 	addiu	t9,a3,8
    9808:	ae9902b0 	sw	t9,688(s4)
    980c:	aced0004 	sw	t5,4(a3)
    9810:	acec0000 	sw	t4,0(a3)
    9814:	8e8702b0 	lw	a3,688(s4)
    9818:	3c0c0007 	lui	t4,0x7
    981c:	358cc07c 	ori	t4,t4,0xc07c
    9820:	24ee0008 	addiu	t6,a3,8
    9824:	ae8e02b0 	sw	t6,688(s4)
    9828:	ace00004 	sw	zero,4(a3)
    982c:	aceb0000 	sw	t3,0(a3)
    9830:	8e8702b0 	lw	a3,688(s4)
    9834:	3c19f200 	lui	t9,0xf200
    9838:	24ef0008 	addiu	t7,a3,8
    983c:	ae8f02b0 	sw	t7,688(s4)
    9840:	ace00004 	sw	zero,4(a3)
    9844:	acea0000 	sw	t2,0(a3)
    9848:	8e8702b0 	lw	a3,688(s4)
    984c:	24f80008 	addiu	t8,a3,8
    9850:	ae9802b0 	sw	t8,688(s4)
    9854:	acec0004 	sw	t4,4(a3)
    9858:	acf90000 	sw	t9,0(a3)
    985c:	8e8702b0 	lw	a3,688(s4)
    9860:	3c0e0700 	lui	t6,0x700
    9864:	35ce0406 	ori	t6,t6,0x406
    9868:	24ed0008 	addiu	t5,a3,8
    986c:	ae8d02b0 	sw	t5,688(s4)
    9870:	240b0602 	li	t3,1538
    9874:	aceb0004 	sw	t3,4(a3)
    9878:	acee0000 	sw	t6,0(a3)
    987c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    9880:	8ee40000 	lw	a0,0(s7)
    9884:	8fa20060 	lw	v0,96(sp)
    9888:	944f0934 	lhu	t7,2356(v0)
    988c:	55e0014b 	bnezl	t7,9dbc <L8008ABB0+0x17ec>
    9890:	86ac13d2 	lh	t4,5074(s5)
    9894:	944a0936 	lhu	t2,2358(v0)
    9898:	55400148 	bnezl	t2,9dbc <L8008ABB0+0x17ec>
    989c:	86ac13d2 	lh	t4,5074(s5)
    98a0:	96b81404 	lhu	t8,5124(s5)
    98a4:	24010001 	li	at,1
    98a8:	3c0b0000 	lui	t3,0x0
    98ac:	13010086 	beq	t8,at,9ac8 <L8008ABB0+0x14f8>
    98b0:	00000000 	nop
    98b4:	96d901ee 	lhu	t9,494(s6)
    98b8:	24010008 	li	at,8
    98bc:	3c0dfd18 	lui	t5,0xfd18
    98c0:	1721013d 	bne	t9,at,9db8 <L8008ABB0+0x17e8>
    98c4:	3c0e0000 	lui	t6,0x0
    98c8:	8e8702b0 	lw	a3,688(s4)
    98cc:	25ce0000 	addiu	t6,t6,0
    98d0:	3c0ff518 	lui	t7,0xf518
    98d4:	24ec0008 	addiu	t4,a3,8
    98d8:	ae8c02b0 	sw	t4,688(s4)
    98dc:	acee0004 	sw	t6,4(a3)
    98e0:	aced0000 	sw	t5,0(a3)
    98e4:	8e8702b0 	lw	a3,688(s4)
    98e8:	3c0a0700 	lui	t2,0x700
    98ec:	3c19e600 	lui	t9,0xe600
    98f0:	24eb0008 	addiu	t3,a3,8
    98f4:	ae8b02b0 	sw	t3,688(s4)
    98f8:	acea0004 	sw	t2,4(a3)
    98fc:	acef0000 	sw	t7,0(a3)
    9900:	8e8702b0 	lw	a3,688(s4)
    9904:	3c0e070f 	lui	t6,0x70f
    9908:	35cef100 	ori	t6,t6,0xf100
    990c:	24f80008 	addiu	t8,a3,8
    9910:	ae9802b0 	sw	t8,688(s4)
    9914:	ace00004 	sw	zero,4(a3)
    9918:	acf90000 	sw	t9,0(a3)
    991c:	8e8702b0 	lw	a3,688(s4)
    9920:	3c0df300 	lui	t5,0xf300
    9924:	3c0fe700 	lui	t7,0xe700
    9928:	24ec0008 	addiu	t4,a3,8
    992c:	ae8c02b0 	sw	t4,688(s4)
    9930:	acee0004 	sw	t6,4(a3)
    9934:	aced0000 	sw	t5,0(a3)
    9938:	8e8702b0 	lw	a3,688(s4)
    993c:	3c18f518 	lui	t8,0xf518
    9940:	37180800 	ori	t8,t8,0x800
    9944:	24eb0008 	addiu	t3,a3,8
    9948:	ae8b02b0 	sw	t3,688(s4)
    994c:	ace00004 	sw	zero,4(a3)
    9950:	acef0000 	sw	t7,0(a3)
    9954:	8e8702b0 	lw	a3,688(s4)
    9958:	3c0d0003 	lui	t5,0x3
    995c:	35adc03c 	ori	t5,t5,0xc03c
    9960:	24ea0008 	addiu	t2,a3,8
    9964:	ae8a02b0 	sw	t2,688(s4)
    9968:	ace00004 	sw	zero,4(a3)
    996c:	acf80000 	sw	t8,0(a3)
    9970:	8e8702b0 	lw	a3,688(s4)
    9974:	3c0cf200 	lui	t4,0xf200
    9978:	3c0e0000 	lui	t6,0x0
    997c:	24f90008 	addiu	t9,a3,8
    9980:	ae9902b0 	sw	t9,688(s4)
    9984:	aced0004 	sw	t5,4(a3)
    9988:	acec0000 	sw	t4,0(a3)
    998c:	8dce0000 	lw	t6,0(t6)
    9990:	3c050400 	lui	a1,0x400
    9994:	3c040096 	lui	a0,0x96
    9998:	3484ff00 	ori	a0,a0,0xff00
    999c:	34a50400 	ori	a1,a1,0x400
    99a0:	24130001 	li	s3,1
    99a4:	85d107b0 	lh	s1,1968(t6)
    99a8:	92c2023a 	lbu	v0,570(s6)
    99ac:	3c060000 	lui	a2,0x0
    99b0:	24c60000 	addiu	a2,a2,0
    99b4:	10400004 	beqz	v0,99c8 <L8008ABB0+0x13f8>
    99b8:	26230010 	addiu	v1,s1,16
    99bc:	0053082a 	slt	at,v0,s3
    99c0:	5020000c 	beqzl	at,99f4 <L8008ABB0+0x1424>
    99c4:	8e8702b0 	lw	a3,688(s4)
    99c8:	8e8702b0 	lw	a3,688(s4)
    99cc:	3c0ffa00 	lui	t7,0xfa00
    99d0:	24eb0008 	addiu	t3,a3,8
    99d4:	ae8b02b0 	sw	t3,688(s4)
    99d8:	acef0000 	sw	t7,0(a3)
    99dc:	96ca0246 	lhu	t2,582(s6)
    99e0:	315800ff 	andi	t8,t2,0xff
    99e4:	0304c825 	or	t9,t8,a0
    99e8:	1000000b 	b	9a18 <L8008ABB0+0x1448>
    99ec:	acf90004 	sw	t9,4(a3)
    99f0:	8e8702b0 	lw	a3,688(s4)
    99f4:	3c0dfa00 	lui	t5,0xfa00
    99f8:	2401ff00 	li	at,-256
    99fc:	24ec0008 	addiu	t4,a3,8
    9a00:	ae8c02b0 	sw	t4,688(s4)
    9a04:	aced0000 	sw	t5,0(a3)
    9a08:	96ce0246 	lhu	t6,582(s6)
    9a0c:	31cb00ff 	andi	t3,t6,0xff
    9a10:	01617825 	or	t7,t3,at
    9a14:	acef0004 	sw	t7,4(a3)
    9a18:	8e8702b0 	lw	a3,688(s4)
    9a1c:	00037880 	sll	t7,v1,0x2
    9a20:	26730001 	addiu	s3,s3,1
    9a24:	24ea0008 	addiu	t2,a3,8
    9a28:	ae8a02b0 	sw	t2,688(s4)
    9a2c:	8cd80000 	lw	t8,0(a2)
    9a30:	31ea0fff 	andi	t2,t7,0xfff
    9a34:	00139c00 	sll	s3,s3,0x10
    9a38:	871907b2 	lh	t9,1970(t8)
    9a3c:	000ac300 	sll	t8,t2,0xc
    9a40:	00115080 	sll	t2,s1,0x2
    9a44:	272c0010 	addiu	t4,t9,16
    9a48:	000c6880 	sll	t5,t4,0x2
    9a4c:	31ae0fff 	andi	t6,t5,0xfff
    9a50:	01d25825 	or	t3,t6,s2
    9a54:	0178c825 	or	t9,t3,t8
    9a58:	acf90000 	sw	t9,0(a3)
    9a5c:	8ccc0000 	lw	t4,0(a2)
    9a60:	314b0fff 	andi	t3,t2,0xfff
    9a64:	000bc300 	sll	t8,t3,0xc
    9a68:	858d07b2 	lh	t5,1970(t4)
    9a6c:	00139c03 	sra	s3,s3,0x10
    9a70:	2a610007 	slti	at,s3,7
    9a74:	000d7080 	sll	t6,t5,0x2
    9a78:	31cf0fff 	andi	t7,t6,0xfff
    9a7c:	01f8c825 	or	t9,t7,t8
    9a80:	acf90004 	sw	t9,4(a3)
    9a84:	8e8702b0 	lw	a3,688(s4)
    9a88:	3c0de100 	lui	t5,0xe100
    9a8c:	00038c00 	sll	s1,v1,0x10
    9a90:	24ec0008 	addiu	t4,a3,8
    9a94:	ae8c02b0 	sw	t4,688(s4)
    9a98:	ace00004 	sw	zero,4(a3)
    9a9c:	aced0000 	sw	t5,0(a3)
    9aa0:	8e8702b0 	lw	a3,688(s4)
    9aa4:	3c0af100 	lui	t2,0xf100
    9aa8:	00118c03 	sra	s1,s1,0x10
    9aac:	24ee0008 	addiu	t6,a3,8
    9ab0:	ae8e02b0 	sw	t6,688(s4)
    9ab4:	ace50004 	sw	a1,4(a3)
    9ab8:	1420ffbb 	bnez	at,99a8 <L8008ABB0+0x13d8>
    9abc:	acea0000 	sw	t2,0(a3)
    9ac0:	100000be 	b	9dbc <L8008ABB0+0x17ec>
    9ac4:	86ac13d2 	lh	t4,5074(s5)
    9ac8:	8d6b0000 	lw	t3,0(t3)
    9acc:	8e8702b0 	lw	a3,688(s4)
    9ad0:	3c18fa00 	lui	t8,0xfa00
    9ad4:	85710dd4 	lh	s1,3540(t3)
    9ad8:	24ef0008 	addiu	t7,a3,8
    9adc:	ae8f02b0 	sw	t7,688(s4)
    9ae0:	acf80000 	sw	t8,0(a3)
    9ae4:	96d90248 	lhu	t9,584(s6)
    9ae8:	2401ff00 	li	at,-256
    9aec:	3c0b0000 	lui	t3,0x0
    9af0:	332c00ff 	andi	t4,t9,0xff
    9af4:	01816825 	or	t5,t4,at
    9af8:	aced0004 	sw	t5,4(a3)
    9afc:	8e8702b0 	lw	a3,688(s4)
    9b00:	256b0000 	addiu	t3,t3,0
    9b04:	3c0afd10 	lui	t2,0xfd10
    9b08:	24ee0008 	addiu	t6,a3,8
    9b0c:	ae8e02b0 	sw	t6,688(s4)
    9b10:	aceb0004 	sw	t3,4(a3)
    9b14:	acea0000 	sw	t2,0(a3)
    9b18:	8e8702b0 	lw	a3,688(s4)
    9b1c:	3c190700 	lui	t9,0x700
    9b20:	3c18f510 	lui	t8,0xf510
    9b24:	24ef0008 	addiu	t7,a3,8
    9b28:	ae8f02b0 	sw	t7,688(s4)
    9b2c:	acf90004 	sw	t9,4(a3)
    9b30:	acf80000 	sw	t8,0(a3)
    9b34:	8e8702b0 	lw	a3,688(s4)
    9b38:	3c0de600 	lui	t5,0xe600
    9b3c:	3c0b0717 	lui	t3,0x717
    9b40:	24ec0008 	addiu	t4,a3,8
    9b44:	ae8c02b0 	sw	t4,688(s4)
    9b48:	ace00004 	sw	zero,4(a3)
    9b4c:	aced0000 	sw	t5,0(a3)
    9b50:	8e8702b0 	lw	a3,688(s4)
    9b54:	356bf156 	ori	t3,t3,0xf156
    9b58:	3c0af300 	lui	t2,0xf300
    9b5c:	24ee0008 	addiu	t6,a3,8
    9b60:	ae8e02b0 	sw	t6,688(s4)
    9b64:	aceb0004 	sw	t3,4(a3)
    9b68:	acea0000 	sw	t2,0(a3)
    9b6c:	8e8702b0 	lw	a3,688(s4)
    9b70:	3c18e700 	lui	t8,0xe700
    9b74:	3c0cf510 	lui	t4,0xf510
    9b78:	24ef0008 	addiu	t7,a3,8
    9b7c:	ae8f02b0 	sw	t7,688(s4)
    9b80:	ace00004 	sw	zero,4(a3)
    9b84:	acf80000 	sw	t8,0(a3)
    9b88:	8e8702b0 	lw	a3,688(s4)
    9b8c:	358c0c00 	ori	t4,t4,0xc00
    9b90:	3c0a0005 	lui	t2,0x5
    9b94:	24f90008 	addiu	t9,a3,8
    9b98:	ae9902b0 	sw	t9,688(s4)
    9b9c:	ace00004 	sw	zero,4(a3)
    9ba0:	acec0000 	sw	t4,0(a3)
    9ba4:	8e8702b0 	lw	a3,688(s4)
    9ba8:	354ac03c 	ori	t2,t2,0xc03c
    9bac:	3c0ef200 	lui	t6,0xf200
    9bb0:	24ed0008 	addiu	t5,a3,8
    9bb4:	ae8d02b0 	sw	t5,688(s4)
    9bb8:	acea0004 	sw	t2,4(a3)
    9bbc:	acee0000 	sw	t6,0(a3)
    9bc0:	8e8702b0 	lw	a3,688(s4)
    9bc4:	3c0f0000 	lui	t7,0x0
    9bc8:	262a0034 	addiu	t2,s1,52
    9bcc:	24eb0008 	addiu	t3,a3,8
    9bd0:	ae8b02b0 	sw	t3,688(s4)
    9bd4:	8def0000 	lw	t7,0(t7)
    9bd8:	000a5880 	sll	t3,t2,0x2
    9bdc:	3c050400 	lui	a1,0x400
    9be0:	85f807b2 	lh	t8,1970(t7)
    9be4:	316f0fff 	andi	t7,t3,0xfff
    9be8:	34a50400 	ori	a1,a1,0x400
    9bec:	27190010 	addiu	t9,t8,16
    9bf0:	00196080 	sll	t4,t9,0x2
    9bf4:	318d0fff 	andi	t5,t4,0xfff
    9bf8:	01b27025 	or	t6,t5,s2
    9bfc:	000fc300 	sll	t8,t7,0xc
    9c00:	01d8c825 	or	t9,t6,t8
    9c04:	3c0c0000 	lui	t4,0x0
    9c08:	acf90000 	sw	t9,0(a3)
    9c0c:	8d8c0000 	lw	t4,0(t4)
    9c10:	262f001c 	addiu	t7,s1,28
    9c14:	000f7080 	sll	t6,t7,0x2
    9c18:	858d07b2 	lh	t5,1970(t4)
    9c1c:	31d80fff 	andi	t8,t6,0xfff
    9c20:	0018cb00 	sll	t9,t8,0xc
    9c24:	000d5080 	sll	t2,t5,0x2
    9c28:	314b0fff 	andi	t3,t2,0xfff
    9c2c:	01796025 	or	t4,t3,t9
    9c30:	acec0004 	sw	t4,4(a3)
    9c34:	8e8702b0 	lw	a3,688(s4)
    9c38:	3c0ae100 	lui	t2,0xe100
    9c3c:	3c0ef100 	lui	t6,0xf100
    9c40:	24ed0008 	addiu	t5,a3,8
    9c44:	ae8d02b0 	sw	t5,688(s4)
    9c48:	ace00004 	sw	zero,4(a3)
    9c4c:	acea0000 	sw	t2,0(a3)
    9c50:	8e8702b0 	lw	a3,688(s4)
    9c54:	3c0be700 	lui	t3,0xe700
    9c58:	3c0dff2d 	lui	t5,0xff2d
    9c5c:	24ef0008 	addiu	t7,a3,8
    9c60:	ae8f02b0 	sw	t7,688(s4)
    9c64:	ace50004 	sw	a1,4(a3)
    9c68:	acee0000 	sw	t6,0(a3)
    9c6c:	8e8702b0 	lw	a3,688(s4)
    9c70:	3c0cfcff 	lui	t4,0xfcff
    9c74:	358c97ff 	ori	t4,t4,0x97ff
    9c78:	24f80008 	addiu	t8,a3,8
    9c7c:	ae9802b0 	sw	t8,688(s4)
    9c80:	ace00004 	sw	zero,4(a3)
    9c84:	aceb0000 	sw	t3,0(a3)
    9c88:	8e8702b0 	lw	a3,688(s4)
    9c8c:	35adfeff 	ori	t5,t5,0xfeff
    9c90:	3c0a0000 	lui	t2,0x0
    9c94:	24f90008 	addiu	t9,a3,8
    9c98:	ae9902b0 	sw	t9,688(s4)
    9c9c:	aced0004 	sw	t5,4(a3)
    9ca0:	acec0000 	sw	t4,0(a3)
    9ca4:	8d4a0000 	lw	t2,0(t2)
    9ca8:	3c120000 	lui	s2,0x0
    9cac:	00009825 	move	s3,zero
    9cb0:	85510dd4 	lh	s1,3540(t2)
    9cb4:	26520000 	addiu	s2,s2,0
    9cb8:	00008025 	move	s0,zero
    9cbc:	26310036 	addiu	s1,s1,54
    9cc0:	00118c00 	sll	s1,s1,0x10
    9cc4:	00118c03 	sra	s1,s1,0x10
    9cc8:	00137840 	sll	t7,s3,0x1
    9ccc:	024f7021 	addu	t6,s2,t7
    9cd0:	95c30000 	lhu	v1,0(t6)
    9cd4:	3c0b0000 	lui	t3,0x0
    9cd8:	3c080000 	lui	t0,0x0
    9cdc:	14600005 	bnez	v1,9cf4 <L8008ABB0+0x1724>
    9ce0:	0003c1c0 	sll	t8,v1,0x7
    9ce4:	16000003 	bnez	s0,9cf4 <L8008ABB0+0x1724>
    9ce8:	2a610003 	slti	at,s3,3
    9cec:	5420001e 	bnezl	at,9d68 <L8008ABB0+0x1798>
    9cf0:	26730001 	addiu	s3,s3,1
    9cf4:	8d080000 	lw	t0,0(t0)
    9cf8:	8e8402b0 	lw	a0,688(s4)
    9cfc:	afb10010 	sw	s1,16(sp)
    9d00:	851907b2 	lh	t9,1970(t0)
    9d04:	3c0d0000 	lui	t5,0x0
    9d08:	85ad0000 	lh	t5,0(t5)
    9d0c:	272cfffe 	addiu	t4,t9,-2
    9d10:	afac0014 	sw	t4,20(sp)
    9d14:	afad0018 	sw	t5,24(sp)
    9d18:	850a0f68 	lh	t2,3944(t0)
    9d1c:	256b0000 	addiu	t3,t3,0
    9d20:	030b2821 	addu	a1,t8,t3
    9d24:	afaa001c 	sw	t2,28(sp)
    9d28:	85020f6a 	lh	v0,3946(t0)
    9d2c:	24060008 	li	a2,8
    9d30:	24070010 	li	a3,16
    9d34:	00021040 	sll	v0,v0,0x1
    9d38:	3042ffff 	andi	v0,v0,0xffff
    9d3c:	afa20020 	sw	v0,32(sp)
    9d40:	0c000000 	jal	0 <Interface_ChangeAlpha>
    9d44:	afa20024 	sw	v0,36(sp)
    9d48:	26310009 	addiu	s1,s1,9
    9d4c:	26100001 	addiu	s0,s0,1
    9d50:	00118c00 	sll	s1,s1,0x10
    9d54:	00108400 	sll	s0,s0,0x10
    9d58:	ae8202b0 	sw	v0,688(s4)
    9d5c:	00118c03 	sra	s1,s1,0x10
    9d60:	00108403 	sra	s0,s0,0x10
    9d64:	26730001 	addiu	s3,s3,1
    9d68:	00139c00 	sll	s3,s3,0x10
    9d6c:	00139c03 	sra	s3,s3,0x10
    9d70:	2a610004 	slti	at,s3,4
    9d74:	5420ffd5 	bnezl	at,9ccc <L8008ABB0+0x16fc>
    9d78:	00137840 	sll	t7,s3,0x1
    9d7c:	8e8702b0 	lw	a3,688(s4)
    9d80:	3c0ee700 	lui	t6,0xe700
    9d84:	3c0bfc11 	lui	t3,0xfc11
    9d88:	24ef0008 	addiu	t7,a3,8
    9d8c:	ae8f02b0 	sw	t7,688(s4)
    9d90:	ace00004 	sw	zero,4(a3)
    9d94:	acee0000 	sw	t6,0(a3)
    9d98:	8e8702b0 	lw	a3,688(s4)
    9d9c:	3c19ff2f 	lui	t9,0xff2f
    9da0:	3739ffff 	ori	t9,t9,0xffff
    9da4:	24f80008 	addiu	t8,a3,8
    9da8:	ae9802b0 	sw	t8,688(s4)
    9dac:	356b9623 	ori	t3,t3,0x9623
    9db0:	aceb0000 	sw	t3,0(a3)
    9db4:	acf90004 	sw	t9,4(a3)
    9db8:	86ac13d2 	lh	t4,5074(s5)
    9dbc:	24010005 	li	at,5
    9dc0:	5581005f 	bnel	t4,at,9f40 <L8008ABB0+0x1970>
    9dc4:	8faa0060 	lw	t2,96(sp)
    9dc8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    9dcc:	26e420d8 	addiu	a0,s7,8408
    9dd0:	24010005 	li	at,5
    9dd4:	14410059 	bne	v0,at,9f3c <L8008ABB0+0x196c>
    9dd8:	24030028 	li	v1,40
    9ddc:	3c010001 	lui	at,0x1
    9de0:	aea00008 	sw	zero,8(s5)
    9de4:	00370821 	addu	at,at,s7
    9de8:	240d0014 	li	t5,20
    9dec:	a02d1e15 	sb	t5,7701(at)
    9df0:	3c010001 	lui	at,0x1
    9df4:	00370821 	addu	at,at,s7
    9df8:	240a0003 	li	t2,3
    9dfc:	a02a1e5e 	sb	t2,7774(at)
    9e00:	92a20068 	lbu	v0,104(s5)
    9e04:	a6a013d2 	sh	zero,5074(s5)
    9e08:	3c010000 	lui	at,0x0
    9e0c:	a4230000 	sh	v1,0(at)
    9e10:	2401003b 	li	at,59
    9e14:	1041000f 	beq	v0,at,9e54 <L8008ABB0+0x1884>
    9e18:	00009825 	move	s3,zero
    9e1c:	2401003c 	li	at,60
    9e20:	1041000c 	beq	v0,at,9e54 <L8008ABB0+0x1884>
    9e24:	2401003d 	li	at,61
    9e28:	1041000a 	beq	v0,at,9e54 <L8008ABB0+0x1884>
    9e2c:	24010055 	li	at,85
    9e30:	10410008 	beq	v0,at,9e54 <L8008ABB0+0x1884>
    9e34:	00000000 	nop
    9e38:	92a213e2 	lbu	v0,5090(s5)
    9e3c:	240f00ff 	li	t7,255
    9e40:	50400004 	beqzl	v0,9e54 <L8008ABB0+0x1884>
    9e44:	a2af0068 	sb	t7,104(s5)
    9e48:	10000002 	b	9e54 <L8008ABB0+0x1884>
    9e4c:	a2a20068 	sb	v0,104(s5)
    9e50:	a2af0068 	sb	t7,104(s5)
    9e54:	3c180000 	lui	t8,0x0
    9e58:	9318002d 	lbu	t8,45(t8)
    9e5c:	3c0e0000 	lui	t6,0x0
    9e60:	25ce0000 	addiu	t6,t6,0
    9e64:	00131840 	sll	v1,s3,0x1
    9e68:	006e9021 	addu	s2,v1,t6
    9e6c:	02b85821 	addu	t3,s5,t8
    9e70:	91790074 	lbu	t9,116(t3)
    9e74:	864c0000 	lh	t4,0(s2)
    9e78:	3c040000 	lui	a0,0x0
    9e7c:	572c002a 	bnel	t9,t4,9f28 <L8008ABB0+0x1958>
    9e80:	26730001 	addiu	s3,s3,1
    9e84:	96ad13fa 	lhu	t5,5114(s5)
    9e88:	24840000 	addiu	a0,a0,0
    9e8c:	afa30064 	sw	v1,100(sp)
    9e90:	31aa7f80 	andi	t2,t5,0x7f80
    9e94:	a6aa13fa 	sh	t2,5114(s5)
    9e98:	0c000000 	jal	0 <Interface_ChangeAlpha>
    9e9c:	3145ffff 	andi	a1,t2,0xffff
    9ea0:	8fa30064 	lw	v1,100(sp)
    9ea4:	3c0f0000 	lui	t7,0x0
    9ea8:	3c010001 	lui	at,0x1
    9eac:	01e37821 	addu	t7,t7,v1
    9eb0:	85ef0000 	lh	t7,0(t7)
    9eb4:	3c0e0000 	lui	t6,0x0
    9eb8:	00370821 	addu	at,at,s7
    9ebc:	25ce0000 	addiu	t6,t6,0
    9ec0:	006e8821 	addu	s1,v1,t6
    9ec4:	a42f1e1a 	sh	t7,7706(at)
    9ec8:	86220000 	lh	v0,0(s1)
    9ecc:	3c180000 	lui	t8,0x0
    9ed0:	24100001 	li	s0,1
    9ed4:	0302c021 	addu	t8,t8,v0
    9ed8:	93180000 	lbu	t8,0(t8)
    9edc:	02b85821 	addu	t3,s5,t8
    9ee0:	a1620074 	sb	v0,116(t3)
    9ee4:	02b01021 	addu	v0,s5,s0
    9ee8:	90590068 	lbu	t9,104(v0)
    9eec:	864c0000 	lh	t4,0(s2)
    9ef0:	02e02025 	move	a0,s7
    9ef4:	572c0006 	bnel	t9,t4,9f10 <L8008ABB0+0x1940>
    9ef8:	26100001 	addiu	s0,s0,1
    9efc:	862d0000 	lh	t5,0(s1)
    9f00:	3205ffff 	andi	a1,s0,0xffff
    9f04:	0c000000 	jal	0 <Interface_ChangeAlpha>
    9f08:	a04d0068 	sb	t5,104(v0)
    9f0c:	26100001 	addiu	s0,s0,1
    9f10:	00108400 	sll	s0,s0,0x10
    9f14:	00108403 	sra	s0,s0,0x10
    9f18:	2a010004 	slti	at,s0,4
    9f1c:	5420fff2 	bnezl	at,9ee8 <L8008ABB0+0x1918>
    9f20:	02b01021 	addu	v0,s5,s0
    9f24:	26730001 	addiu	s3,s3,1
    9f28:	00139c00 	sll	s3,s3,0x10
    9f2c:	00139c03 	sra	s3,s3,0x10
    9f30:	2a610003 	slti	at,s3,3
    9f34:	1420ffc7 	bnez	at,9e54 <L8008ABB0+0x1884>
    9f38:	00000000 	nop
    9f3c:	8faa0060 	lw	t2,96(sp)
    9f40:	954f0934 	lhu	t7,2356(t2)
    9f44:	55e003fc 	bnezl	t7,af38 <L8008D1EC+0x32c>
    9f48:	8fb80068 	lw	t8,104(sp)
    9f4c:	954e0936 	lhu	t6,2358(t2)
    9f50:	55c003f9 	bnezl	t6,af38 <L8008D1EC+0x32c>
    9f54:	8fb80068 	lw	t8,104(sp)
    9f58:	95580a20 	lhu	t8,2592(t2)
    9f5c:	3401a0d8 	li	at,0xa0d8
    9f60:	02e18021 	addu	s0,s7,at
    9f64:	570003f4 	bnezl	t8,af38 <L8008D1EC+0x32c>
    9f68:	8fb80068 	lw	t8,104(sp)
    9f6c:	920b6304 	lbu	t3,25348(s0)
    9f70:	8fb90280 	lw	t9,640(sp)
    9f74:	556003f0 	bnezl	t3,af38 <L8008D1EC+0x32c>
    9f78:	8fb80068 	lw	t8,104(sp)
    9f7c:	8f2c0680 	lw	t4,1664(t9)
    9f80:	000c69c0 	sll	t5,t4,0x7
    9f84:	05a203ec 	bltzl	t5,af38 <L8008D1EC+0x32c>
    9f88:	8fb80068 	lw	t8,104(sp)
    9f8c:	814f1e15 	lb	t7,7701(t2)
    9f90:	55e003e9 	bnezl	t7,af38 <L8008D1EC+0x32c>
    9f94:	8fb80068 	lw	t8,104(sp)
    9f98:	914e241b 	lbu	t6,9243(t2)
    9f9c:	55c003e6 	bnezl	t6,af38 <L8008D1EC+0x32c>
    9fa0:	8fb80068 	lw	t8,104(sp)
    9fa4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    9fa8:	02e02025 	move	a0,s7
    9fac:	544003e2 	bnezl	v0,af38 <L8008D1EC+0x32c>
    9fb0:	8fb80068 	lw	t8,104(sp)
    9fb4:	96b81404 	lhu	t8,5124(s5)
    9fb8:	24010001 	li	at,1
    9fbc:	8fab0060 	lw	t3,96(sp)
    9fc0:	530103dd 	beql	t8,at,af38 <L8008D1EC+0x32c>
    9fc4:	8fb80068 	lw	t8,104(sp)
    9fc8:	81791e5c 	lb	t9,7772(t3)
    9fcc:	2b210002 	slti	at,t9,2
    9fd0:	502003d9 	beqzl	at,af38 <L8008D1EC+0x32c>
    9fd4:	8fb80068 	lw	t8,104(sp)
    9fd8:	86ec00a4 	lh	t4,164(s7)
    9fdc:	2401004b 	li	at,75
    9fe0:	02e02025 	move	a0,s7
    9fe4:	55810006 	bnel	t4,at,a000 <L8008ABB0+0x1a30>
    9fe8:	86a413ce 	lh	a0,5070(s5)
    9fec:	0c000000 	jal	0 <Interface_ChangeAlpha>
    9ff0:	24050038 	li	a1,56
    9ff4:	544003d0 	bnezl	v0,af38 <L8008D1EC+0x32c>
    9ff8:	8fb80068 	lw	t8,104(sp)
    9ffc:	86a413ce 	lh	a0,5070(s5)
    a000:	a7a00274 	sh	zero,628(sp)
    a004:	248dffff 	addiu	t5,a0,-1
    a008:	2da1000f 	sltiu	at,t5,15
    a00c:	102001bf 	beqz	at,a70c <L8008CCEC>
    a010:	000d6880 	sll	t5,t5,0x2
    a014:	3c010000 	lui	at,0x0
    a018:	002d0821 	addu	at,at,t5
    a01c:	8c2d0000 	lw	t5,0(at)
    a020:	01a00008 	jr	t5
    a024:	00000000 	nop

0000a028 <L8008C608>:
    a028:	86af0030 	lh	t7,48(s5)
    a02c:	240e0002 	li	t6,2
    a030:	a6ae13ce 	sh	t6,5070(s5)
    a034:	000f5043 	sra	t2,t7,0x1
    a038:	24030014 	li	v1,20
    a03c:	a6aa13d0 	sh	t2,5072(s5)
    a040:	86a413ce 	lh	a0,5070(s5)
    a044:	3c010000 	lui	at,0x0
    a048:	a4230000 	sh	v1,0(at)
    a04c:	24050014 	li	a1,20
    a050:	3c010000 	lui	at,0x0
    a054:	3c120000 	lui	s2,0x0
    a058:	26520000 	addiu	s2,s2,0
    a05c:	100002ed 	b	ac14 <L8008D1EC+0x8>
    a060:	a4250000 	sh	a1,0(at)

0000a064 <L8008C644>:
    a064:	3c030000 	lui	v1,0x0
    a068:	84630000 	lh	v1,0(v1)
    a06c:	3c010000 	lui	at,0x0
    a070:	3c120000 	lui	s2,0x0
    a074:	2463ffff 	addiu	v1,v1,-1
    a078:	00031c00 	sll	v1,v1,0x10
    a07c:	00031c03 	sra	v1,v1,0x10
    a080:	14600007 	bnez	v1,a0a0 <L8008C644+0x3c>
    a084:	a4230000 	sh	v1,0(at)
    a088:	24180003 	li	t8,3
    a08c:	a6b813ce 	sh	t8,5070(s5)
    a090:	24030014 	li	v1,20
    a094:	86a413ce 	lh	a0,5070(s5)
    a098:	3c010000 	lui	at,0x0
    a09c:	a4230000 	sh	v1,0(at)
    a0a0:	100002dc 	b	ac14 <L8008D1EC+0x8>
    a0a4:	26520000 	addiu	s2,s2,0

0000a0a8 <L8008C688>:
    a0a8:	24030014 	li	v1,20
    a0ac:	3c010000 	lui	at,0x0
    a0b0:	a4230000 	sh	v1,0(at)
    a0b4:	24050014 	li	a1,20
    a0b8:	3c010000 	lui	at,0x0
    a0bc:	a4250000 	sh	a1,0(at)
    a0c0:	24010005 	li	at,5
    a0c4:	14810004 	bne	a0,at,a0d8 <L8008C688+0x30>
    a0c8:	3c120000 	lui	s2,0x0
    a0cc:	240b0006 	li	t3,6
    a0d0:	10000003 	b	a0e0 <L8008C688+0x38>
    a0d4:	a6ab13ce 	sh	t3,5070(s5)
    a0d8:	2419000c 	li	t9,12
    a0dc:	a6b913ce 	sh	t9,5070(s5)
    a0e0:	86a413ce 	lh	a0,5070(s5)
    a0e4:	100002cb 	b	ac14 <L8008D1EC+0x8>
    a0e8:	26520000 	addiu	s2,s2,0

0000a0ec <L8008C6CC>:
    a0ec:	3c030000 	lui	v1,0x0
    a0f0:	84630000 	lh	v1,0(v1)
    a0f4:	3c010000 	lui	at,0x0
    a0f8:	3c120000 	lui	s2,0x0
    a0fc:	2463ffff 	addiu	v1,v1,-1
    a100:	00031c00 	sll	v1,v1,0x10
    a104:	00031c03 	sra	v1,v1,0x10
    a108:	1460000f 	bnez	v1,a148 <L8008C6CC+0x5c>
    a10c:	a4230000 	sh	v1,0(at)
    a110:	24030014 	li	v1,20
    a114:	3c010000 	lui	at,0x0
    a118:	a4230000 	sh	v1,0(at)
    a11c:	24010006 	li	at,6
    a120:	14810007 	bne	a0,at,a140 <L8008C6CC+0x54>
    a124:	240d000d 	li	t5,13
    a128:	240c0007 	li	t4,7
    a12c:	a6ac13ce 	sh	t4,5070(s5)
    a130:	3c120000 	lui	s2,0x0
    a134:	86a413ce 	lh	a0,5070(s5)
    a138:	100002b6 	b	ac14 <L8008D1EC+0x8>
    a13c:	26520000 	addiu	s2,s2,0
    a140:	a6ad13ce 	sh	t5,5070(s5)
    a144:	86a413ce 	lh	a0,5070(s5)
    a148:	100002b2 	b	ac14 <L8008D1EC+0x8>
    a14c:	26520000 	addiu	s2,s2,0

0000a150 <L8008C730>:
    a150:	86a213d6 	lh	v0,5078(s5)
    a154:	3c030000 	lui	v1,0x0
    a158:	84630000 	lh	v1,0(v1)
    a15c:	244fffe6 	addiu	t7,v0,-26
    a160:	86ae002e 	lh	t6,46(s5)
    a164:	01e3001a 	div	zero,t7,v1
    a168:	14600002 	bnez	v1,a174 <L8008C730+0x24>
    a16c:	00000000 	nop
    a170:	0007000d 	break	0x7
    a174:	2401ffff 	li	at,-1
    a178:	14610004 	bne	v1,at,a18c <L8008C730+0x3c>
    a17c:	3c018000 	lui	at,0x8000
    a180:	15e10002 	bne	t7,at,a18c <L8008C730+0x3c>
    a184:	00000000 	nop
    a188:	0006000d 	break	0x6
    a18c:	00009812 	mflo	s3
    a190:	00139c00 	sll	s3,s3,0x10
    a194:	00139c03 	sra	s3,s3,0x10
    a198:	00535023 	subu	t2,v0,s3
    a19c:	29c100a1 	slti	at,t6,161
    a1a0:	14200012 	bnez	at,a1ec <L8008C730+0x9c>
    a1a4:	a6aa13d6 	sh	t2,5078(s5)
    a1a8:	86a213da 	lh	v0,5082(s5)
    a1ac:	2458ffca 	addiu	t8,v0,-54
    a1b0:	0303001a 	div	zero,t8,v1
    a1b4:	00009812 	mflo	s3
    a1b8:	00139c00 	sll	s3,s3,0x10
    a1bc:	14600002 	bnez	v1,a1c8 <L8008C730+0x78>
    a1c0:	00000000 	nop
    a1c4:	0007000d 	break	0x7
    a1c8:	2401ffff 	li	at,-1
    a1cc:	14610004 	bne	v1,at,a1e0 <L8008C730+0x90>
    a1d0:	3c018000 	lui	at,0x8000
    a1d4:	17010002 	bne	t8,at,a1e0 <L8008C730+0x90>
    a1d8:	00000000 	nop
    a1dc:	0006000d 	break	0x6
    a1e0:	00139c03 	sra	s3,s3,0x10
    a1e4:	10000011 	b	a22c <L8008C730+0xdc>
    a1e8:	2463ffff 	addiu	v1,v1,-1
    a1ec:	86a213da 	lh	v0,5082(s5)
    a1f0:	244bffd2 	addiu	t3,v0,-46
    a1f4:	0163001a 	div	zero,t3,v1
    a1f8:	00009812 	mflo	s3
    a1fc:	00139c00 	sll	s3,s3,0x10
    a200:	00139c03 	sra	s3,s3,0x10
    a204:	14600002 	bnez	v1,a210 <L8008C730+0xc0>
    a208:	00000000 	nop
    a20c:	0007000d 	break	0x7
    a210:	2401ffff 	li	at,-1
    a214:	14610004 	bne	v1,at,a228 <L8008C730+0xd8>
    a218:	3c018000 	lui	at,0x8000
    a21c:	15610002 	bne	t3,at,a228 <L8008C730+0xd8>
    a220:	00000000 	nop
    a224:	0006000d 	break	0x6
    a228:	2463ffff 	addiu	v1,v1,-1
    a22c:	0053c823 	subu	t9,v0,s3
    a230:	00031c00 	sll	v1,v1,0x10
    a234:	a6b913da 	sh	t9,5082(s5)
    a238:	00031c03 	sra	v1,v1,0x10
    a23c:	3c010000 	lui	at,0x0
    a240:	14600017 	bnez	v1,a2a0 <L8008C730+0x150>
    a244:	a4230000 	sh	v1,0(at)
    a248:	240c001a 	li	t4,26
    a24c:	24030014 	li	v1,20
    a250:	a6ac13d6 	sh	t4,5078(s5)
    a254:	3c010000 	lui	at,0x0
    a258:	a4230000 	sh	v1,0(at)
    a25c:	86ad002e 	lh	t5,46(s5)
    a260:	240f0036 	li	t7,54
    a264:	240a002e 	li	t2,46
    a268:	29a100a1 	slti	at,t5,161
    a26c:	14200003 	bnez	at,a27c <L8008C730+0x12c>
    a270:	240b0008 	li	t3,8
    a274:	10000002 	b	a280 <L8008C730+0x130>
    a278:	a6af13da 	sh	t7,5082(s5)
    a27c:	a6aa13da 	sh	t2,5082(s5)
    a280:	86ae13ce 	lh	t6,5070(s5)
    a284:	24010003 	li	at,3
    a288:	24180004 	li	t8,4
    a28c:	55c10004 	bnel	t6,at,a2a0 <L8008C730+0x150>
    a290:	a6ab13ce 	sh	t3,5070(s5)
    a294:	10000002 	b	a2a0 <L8008C730+0x150>
    a298:	a6b813ce 	sh	t8,5070(s5)
    a29c:	a6ab13ce 	sh	t3,5070(s5)
    a2a0:	86a413ce 	lh	a0,5070(s5)

0000a2a4 <L8008C884>:
    a2a4:	24010004 	li	at,4
    a2a8:	10810003 	beq	a0,at,a2b8 <L8008C884+0x14>
    a2ac:	24010008 	li	at,8
    a2b0:	5481000d 	bnel	a0,at,a2e8 <L8008C884+0x44>
    a2b4:	28810003 	slti	at,a0,3
    a2b8:	86b9002e 	lh	t9,46(s5)
    a2bc:	240c0036 	li	t4,54
    a2c0:	240d002e 	li	t5,46
    a2c4:	2b2100a1 	slti	at,t9,161
    a2c8:	54200005 	bnezl	at,a2e0 <L8008C884+0x3c>
    a2cc:	a6ad13da 	sh	t5,5082(s5)
    a2d0:	a6ac13da 	sh	t4,5082(s5)
    a2d4:	10000003 	b	a2e4 <L8008C884+0x40>
    a2d8:	86a413ce 	lh	a0,5070(s5)
    a2dc:	a6ad13da 	sh	t5,5082(s5)
    a2e0:	86a413ce 	lh	a0,5070(s5)
    a2e4:	28810003 	slti	at,a0,3
    a2e8:	14200062 	bnez	at,a474 <L8008C884+0x1d0>
    a2ec:	00000000 	nop
    a2f0:	8e0f6300 	lw	t7,25344(s0)
    a2f4:	3c050000 	lui	a1,0x0
    a2f8:	15e0005e 	bnez	t7,a474 <L8008C884+0x1d0>
    a2fc:	00000000 	nop
    a300:	84a50000 	lh	a1,0(a1)
    a304:	3c010000 	lui	at,0x0
    a308:	24a5ffff 	addiu	a1,a1,-1
    a30c:	00052c00 	sll	a1,a1,0x10
    a310:	00052c03 	sra	a1,a1,0x10
    a314:	14a00057 	bnez	a1,a474 <L8008C884+0x1d0>
    a318:	a4250000 	sh	a1,0(at)
    a31c:	86a213d0 	lh	v0,5072(s5)
    a320:	24050014 	li	a1,20
    a324:	3c010000 	lui	at,0x0
    a328:	10400003 	beqz	v0,a338 <L8008C884+0x94>
    a32c:	244affff 	addiu	t2,v0,-1
    a330:	a6aa13d0 	sh	t2,5072(s5)
    a334:	86a213d0 	lh	v0,5072(s5)
    a338:	14400016 	bnez	v0,a394 <L8008C884+0xf0>
    a33c:	a4250000 	sh	a1,0(at)
    a340:	3c100000 	lui	s0,0x0
    a344:	26100000 	addiu	s0,s0,0
    a348:	86180000 	lh	t8,0(s0)
    a34c:	240e000a 	li	t6,10
    a350:	a6ae13ce 	sh	t6,5070(s5)
    a354:	1300000a 	beqz	t8,a380 <L8008C884+0xdc>
    a358:	00000000 	nop
    a35c:	a6a00030 	sh	zero,48(s5)
    a360:	86ab0030 	lh	t3,48(s5)
    a364:	8fac0060 	lw	t4,96(sp)
    a368:	2419fffe 	li	t9,-2
    a36c:	032b2823 	subu	a1,t9,t3
    a370:	8d991d58 	lw	t9,7512(t4)
    a374:	02e02025 	move	a0,s7
    a378:	0320f809 	jalr	t9
    a37c:	00000000 	nop
    a380:	3c120000 	lui	s2,0x0
    a384:	a6000000 	sh	zero,0(s0)
    a388:	86a413ce 	lh	a0,5070(s5)
    a38c:	10000221 	b	ac14 <L8008D1EC+0x8>
    a390:	26520000 	addiu	s2,s2,0
    a394:	2841003d 	slti	at,v0,61
    a398:	14200014 	bnez	at,a3ec <L8008C884+0x148>
    a39c:	3c120000 	lui	s2,0x0
    a3a0:	26520000 	addiu	s2,s2,0
    a3a4:	864d0008 	lh	t5,8(s2)
    a3a8:	24010001 	li	at,1
    a3ac:	3c100000 	lui	s0,0x0
    a3b0:	15a10030 	bne	t5,at,a474 <L8008C884+0x1d0>
    a3b4:	26070000 	addiu	a3,s0,0
    a3b8:	3c0f0000 	lui	t7,0x0
    a3bc:	25ef0000 	addiu	t7,t7,0
    a3c0:	3c050000 	lui	a1,0x0
    a3c4:	24a50000 	addiu	a1,a1,0
    a3c8:	afaf0014 	sw	t7,20(sp)
    a3cc:	24044804 	li	a0,18436
    a3d0:	24060004 	li	a2,4
    a3d4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    a3d8:	afa70010 	sw	a3,16(sp)
    a3dc:	3c120000 	lui	s2,0x0
    a3e0:	86a413ce 	lh	a0,5070(s5)
    a3e4:	1000020b 	b	ac14 <L8008D1EC+0x8>
    a3e8:	26520000 	addiu	s2,s2,0
    a3ec:	2841000b 	slti	at,v0,11
    a3f0:	14200014 	bnez	at,a444 <L8008C884+0x1a0>
    a3f4:	3c120000 	lui	s2,0x0
    a3f8:	26520000 	addiu	s2,s2,0
    a3fc:	864a0008 	lh	t2,8(s2)
    a400:	3c100000 	lui	s0,0x0
    a404:	26070000 	addiu	a3,s0,0
    a408:	314e0001 	andi	t6,t2,0x1
    a40c:	11c00019 	beqz	t6,a474 <L8008C884+0x1d0>
    a410:	3c050000 	lui	a1,0x0
    a414:	3c180000 	lui	t8,0x0
    a418:	27180000 	addiu	t8,t8,0
    a41c:	afb80014 	sw	t8,20(sp)
    a420:	24044819 	li	a0,18457
    a424:	24a50000 	addiu	a1,a1,0
    a428:	24060004 	li	a2,4
    a42c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    a430:	afa70010 	sw	a3,16(sp)
    a434:	3c120000 	lui	s2,0x0
    a438:	86a413ce 	lh	a0,5070(s5)
    a43c:	100001f5 	b	ac14 <L8008D1EC+0x8>
    a440:	26520000 	addiu	s2,s2,0
    a444:	3c100000 	lui	s0,0x0
    a448:	3c0b0000 	lui	t3,0x0
    a44c:	26070000 	addiu	a3,s0,0
    a450:	256b0000 	addiu	t3,t3,0
    a454:	3c050000 	lui	a1,0x0
    a458:	24a50000 	addiu	a1,a1,0
    a45c:	afab0014 	sw	t3,20(sp)
    a460:	afa70010 	sw	a3,16(sp)
    a464:	2404481a 	li	a0,18458
    a468:	0c000000 	jal	0 <Interface_ChangeAlpha>
    a46c:	24060004 	li	a2,4
    a470:	86a413ce 	lh	a0,5070(s5)
    a474:	3c120000 	lui	s2,0x0
    a478:	100001e6 	b	ac14 <L8008D1EC+0x8>
    a47c:	26520000 	addiu	s2,s2,0

0000a480 <L8008CA60>:
    a480:	86a213d6 	lh	v0,5078(s5)
    a484:	3c030000 	lui	v1,0x0
    a488:	84630000 	lh	v1,0(v1)
    a48c:	244cffe6 	addiu	t4,v0,-26
    a490:	86ad002e 	lh	t5,46(s5)
    a494:	0183001a 	div	zero,t4,v1
    a498:	14600002 	bnez	v1,a4a4 <L8008CA60+0x24>
    a49c:	00000000 	nop
    a4a0:	0007000d 	break	0x7
    a4a4:	2401ffff 	li	at,-1
    a4a8:	14610004 	bne	v1,at,a4bc <L8008CA60+0x3c>
    a4ac:	3c018000 	lui	at,0x8000
    a4b0:	15810002 	bne	t4,at,a4bc <L8008CA60+0x3c>
    a4b4:	00000000 	nop
    a4b8:	0006000d 	break	0x6
    a4bc:	00009812 	mflo	s3
    a4c0:	00139c00 	sll	s3,s3,0x10
    a4c4:	00139c03 	sra	s3,s3,0x10
    a4c8:	0053c823 	subu	t9,v0,s3
    a4cc:	29a100a1 	slti	at,t5,161
    a4d0:	14200012 	bnez	at,a51c <L8008CA60+0x9c>
    a4d4:	a6b913d6 	sh	t9,5078(s5)
    a4d8:	86a213da 	lh	v0,5082(s5)
    a4dc:	244fffca 	addiu	t7,v0,-54
    a4e0:	01e3001a 	div	zero,t7,v1
    a4e4:	00009812 	mflo	s3
    a4e8:	00139c00 	sll	s3,s3,0x10
    a4ec:	14600002 	bnez	v1,a4f8 <L8008CA60+0x78>
    a4f0:	00000000 	nop
    a4f4:	0007000d 	break	0x7
    a4f8:	2401ffff 	li	at,-1
    a4fc:	14610004 	bne	v1,at,a510 <L8008CA60+0x90>
    a500:	3c018000 	lui	at,0x8000
    a504:	15e10002 	bne	t7,at,a510 <L8008CA60+0x90>
    a508:	00000000 	nop
    a50c:	0006000d 	break	0x6
    a510:	00139c03 	sra	s3,s3,0x10
    a514:	10000011 	b	a55c <L8008CA60+0xdc>
    a518:	2463ffff 	addiu	v1,v1,-1
    a51c:	86a213da 	lh	v0,5082(s5)
    a520:	244affd2 	addiu	t2,v0,-46
    a524:	0143001a 	div	zero,t2,v1
    a528:	00009812 	mflo	s3
    a52c:	00139c00 	sll	s3,s3,0x10
    a530:	00139c03 	sra	s3,s3,0x10
    a534:	14600002 	bnez	v1,a540 <L8008CA60+0xc0>
    a538:	00000000 	nop
    a53c:	0007000d 	break	0x7
    a540:	2401ffff 	li	at,-1
    a544:	14610004 	bne	v1,at,a558 <L8008CA60+0xd8>
    a548:	3c018000 	lui	at,0x8000
    a54c:	15410002 	bne	t2,at,a558 <L8008CA60+0xd8>
    a550:	00000000 	nop
    a554:	0006000d 	break	0x6
    a558:	2463ffff 	addiu	v1,v1,-1
    a55c:	00537023 	subu	t6,v0,s3
    a560:	00031c00 	sll	v1,v1,0x10
    a564:	a6ae13da 	sh	t6,5082(s5)
    a568:	00031c03 	sra	v1,v1,0x10
    a56c:	3c010000 	lui	at,0x0
    a570:	14600010 	bnez	v1,a5b4 <L8008CA60+0x134>
    a574:	a4230000 	sh	v1,0(at)
    a578:	2418001a 	li	t8,26
    a57c:	24030014 	li	v1,20
    a580:	a6b813d6 	sh	t8,5078(s5)
    a584:	3c010000 	lui	at,0x0
    a588:	a4230000 	sh	v1,0(at)
    a58c:	86ab002e 	lh	t3,46(s5)
    a590:	240c0036 	li	t4,54
    a594:	2419002e 	li	t9,46
    a598:	296100a1 	slti	at,t3,161
    a59c:	14200003 	bnez	at,a5ac <L8008CA60+0x12c>
    a5a0:	240d000e 	li	t5,14
    a5a4:	10000002 	b	a5b0 <L8008CA60+0x130>
    a5a8:	a6ac13da 	sh	t4,5082(s5)
    a5ac:	a6b913da 	sh	t9,5082(s5)
    a5b0:	a6ad13ce 	sh	t5,5070(s5)
    a5b4:	86a413ce 	lh	a0,5070(s5)

0000a5b8 <L8008CB98>:
    a5b8:	2401000e 	li	at,14
    a5bc:	1481000c 	bne	a0,at,a5f0 <L8008CB98+0x38>
    a5c0:	3c050000 	lui	a1,0x0
    a5c4:	86af002e 	lh	t7,46(s5)
    a5c8:	240a0036 	li	t2,54
    a5cc:	240e002e 	li	t6,46
    a5d0:	29e100a1 	slti	at,t7,161
    a5d4:	54200005 	bnezl	at,a5ec <L8008CB98+0x34>
    a5d8:	a6ae13da 	sh	t6,5082(s5)
    a5dc:	a6aa13da 	sh	t2,5082(s5)
    a5e0:	10000003 	b	a5f0 <L8008CB98+0x38>
    a5e4:	86a413ce 	lh	a0,5070(s5)
    a5e8:	a6ae13da 	sh	t6,5082(s5)
    a5ec:	86a413ce 	lh	a0,5070(s5)
    a5f0:	28810003 	slti	at,a0,3
    a5f4:	14200026 	bnez	at,a690 <L8008CB98+0xd8>
    a5f8:	00000000 	nop
    a5fc:	84a50000 	lh	a1,0(a1)
    a600:	3c010000 	lui	at,0x0
    a604:	24a5ffff 	addiu	a1,a1,-1
    a608:	00052c00 	sll	a1,a1,0x10
    a60c:	00052c03 	sra	a1,a1,0x10
    a610:	14a0001f 	bnez	a1,a690 <L8008CB98+0xd8>
    a614:	a4250000 	sh	a1,0(at)
    a618:	86b813d0 	lh	t8,5072(s5)
    a61c:	24050014 	li	a1,20
    a620:	3c010000 	lui	at,0x0
    a624:	270b0001 	addiu	t3,t8,1
    a628:	a6ab13d0 	sh	t3,5072(s5)
    a62c:	a4250000 	sh	a1,0(at)
    a630:	86ac13d0 	lh	t4,5072(s5)
    a634:	24010e0f 	li	at,3599
    a638:	3c100000 	lui	s0,0x0
    a63c:	1581000a 	bne	t4,at,a668 <L8008CB98+0xb0>
    a640:	26070000 	addiu	a3,s0,0
    a644:	2419000f 	li	t9,15
    a648:	a6b913ce 	sh	t9,5070(s5)
    a64c:	24030028 	li	v1,40
    a650:	86a413ce 	lh	a0,5070(s5)
    a654:	3c010000 	lui	at,0x0
    a658:	3c120000 	lui	s2,0x0
    a65c:	a4230000 	sh	v1,0(at)
    a660:	1000016c 	b	ac14 <L8008D1EC+0x8>
    a664:	26520000 	addiu	s2,s2,0
    a668:	3c0d0000 	lui	t5,0x0
    a66c:	25ad0000 	addiu	t5,t5,0
    a670:	3c050000 	lui	a1,0x0
    a674:	24a50000 	addiu	a1,a1,0
    a678:	afad0014 	sw	t5,20(sp)
    a67c:	24044819 	li	a0,18457
    a680:	24060004 	li	a2,4
    a684:	0c000000 	jal	0 <Interface_ChangeAlpha>
    a688:	afa70010 	sw	a3,16(sp)
    a68c:	86a413ce 	lh	a0,5070(s5)
    a690:	3c120000 	lui	s2,0x0
    a694:	1000015f 	b	ac14 <L8008D1EC+0x8>
    a698:	26520000 	addiu	s2,s2,0

0000a69c <L8008CC7C>:
    a69c:	86af13d2 	lh	t7,5074(s5)
    a6a0:	24030014 	li	v1,20
    a6a4:	24040014 	li	a0,20
    a6a8:	11e00013 	beqz	t7,a6f8 <L8008CC7C+0x5c>
    a6ac:	240a008c 	li	t2,140
    a6b0:	240e0050 	li	t6,80
    a6b4:	a6aa13d8 	sh	t2,5080(s5)
    a6b8:	a6ae13dc 	sh	t6,5084(s5)
    a6bc:	3c010000 	lui	at,0x0
    a6c0:	a4230000 	sh	v1,0(at)
    a6c4:	3c010000 	lui	at,0x0
    a6c8:	a4240000 	sh	a0,0(at)
    a6cc:	86b813d2 	lh	t8,5074(s5)
    a6d0:	240b0002 	li	t3,2
    a6d4:	240c0008 	li	t4,8
    a6d8:	2b010007 	slti	at,t8,7
    a6dc:	50200004 	beqzl	at,a6f0 <L8008CC7C+0x54>
    a6e0:	a6ac13d2 	sh	t4,5074(s5)
    a6e4:	10000002 	b	a6f0 <L8008CC7C+0x54>
    a6e8:	a6ab13d2 	sh	t3,5074(s5)
    a6ec:	a6ac13d2 	sh	t4,5074(s5)
    a6f0:	10000002 	b	a6fc <L8008CC7C+0x60>
    a6f4:	a6a013ce 	sh	zero,5070(s5)
    a6f8:	a6a013ce 	sh	zero,5070(s5)
    a6fc:	86a413ce 	lh	a0,5070(s5)

0000a700 <L8008CCE0>:
    a700:	3c120000 	lui	s2,0x0
    a704:	10000143 	b	ac14 <L8008D1EC+0x8>
    a708:	26520000 	addiu	s2,s2,0

0000a70c <L8008CCEC>:
    a70c:	86a213d2 	lh	v0,5074(s5)
    a710:	24190001 	li	t9,1
    a714:	a7b90274 	sh	t9,628(sp)
    a718:	244dffff 	addiu	t5,v0,-1
    a71c:	2da1000a 	sltiu	at,t5,10
    a720:	1020013a 	beqz	at,ac0c <L8008D1EC>
    a724:	000d6880 	sll	t5,t5,0x2
    a728:	3c010000 	lui	at,0x0
    a72c:	002d0821 	addu	at,at,t5
    a730:	8c2d0000 	lw	t5,0(at)
    a734:	01a00008 	jr	t5
    a738:	00000000 	nop

0000a73c <L8008CD1C>:
    a73c:	240f008c 	li	t7,140
    a740:	240a0050 	li	t2,80
    a744:	24030014 	li	v1,20
    a748:	a6af13d8 	sh	t7,5080(s5)
    a74c:	a6aa13dc 	sh	t2,5084(s5)
    a750:	3c010000 	lui	at,0x0
    a754:	a4230000 	sh	v1,0(at)
    a758:	24040014 	li	a0,20
    a75c:	3c010000 	lui	at,0x0
    a760:	a4240000 	sh	a0,0(at)
    a764:	86ae13d2 	lh	t6,5074(s5)
    a768:	24010001 	li	at,1
    a76c:	24180002 	li	t8,2
    a770:	15c10003 	bne	t6,at,a780 <L8008CD1C+0x44>
    a774:	240b0008 	li	t3,8
    a778:	10000002 	b	a784 <L8008CD1C+0x48>
    a77c:	a6b813d2 	sh	t8,5074(s5)
    a780:	a6ab13d2 	sh	t3,5074(s5)
    a784:	10000121 	b	ac0c <L8008D1EC>
    a788:	86a413ce 	lh	a0,5070(s5)

0000a78c <L8008CD6C>:
    a78c:	3c030000 	lui	v1,0x0
    a790:	84630000 	lh	v1,0(v1)
    a794:	3c010000 	lui	at,0x0
    a798:	2463ffff 	addiu	v1,v1,-1
    a79c:	00031c00 	sll	v1,v1,0x10
    a7a0:	00031c03 	sra	v1,v1,0x10
    a7a4:	14600119 	bnez	v1,ac0c <L8008D1EC>
    a7a8:	a4230000 	sh	v1,0(at)
    a7ac:	24030014 	li	v1,20
    a7b0:	3c010000 	lui	at,0x0
    a7b4:	a4230000 	sh	v1,0(at)
    a7b8:	24010002 	li	at,2
    a7bc:	14410004 	bne	v0,at,a7d0 <L8008CD6C+0x44>
    a7c0:	24190009 	li	t9,9
    a7c4:	240c0003 	li	t4,3
    a7c8:	10000110 	b	ac0c <L8008D1EC>
    a7cc:	a6ac13d2 	sh	t4,5074(s5)
    a7d0:	1000010e 	b	ac0c <L8008D1EC>
    a7d4:	a6b913d2 	sh	t9,5074(s5)

0000a7d8 <L8008CDB8>:
    a7d8:	86b113d8 	lh	s1,5080(s5)
    a7dc:	86b013dc 	lh	s0,5084(s5)
    a7e0:	3c040000 	lui	a0,0x0
    a7e4:	24840000 	addiu	a0,a0,0
    a7e8:	86a713d4 	lh	a3,5076(s5)
    a7ec:	02202825 	move	a1,s1
    a7f0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    a7f4:	02003025 	move	a2,s0
    a7f8:	86a213d8 	lh	v0,5080(s5)
    a7fc:	3c030000 	lui	v1,0x0
    a800:	84630000 	lh	v1,0(v1)
    a804:	244dffe6 	addiu	t5,v0,-26
    a808:	86aa002e 	lh	t2,46(s5)
    a80c:	01a3001a 	div	zero,t5,v1
    a810:	14600002 	bnez	v1,a81c <L8008CDB8+0x44>
    a814:	00000000 	nop
    a818:	0007000d 	break	0x7
    a81c:	2401ffff 	li	at,-1
    a820:	14610004 	bne	v1,at,a834 <L8008CDB8+0x5c>
    a824:	3c018000 	lui	at,0x8000
    a828:	15a10002 	bne	t5,at,a834 <L8008CDB8+0x5c>
    a82c:	00000000 	nop
    a830:	0006000d 	break	0x6
    a834:	00009812 	mflo	s3
    a838:	00139c00 	sll	s3,s3,0x10
    a83c:	00139c03 	sra	s3,s3,0x10
    a840:	00537823 	subu	t7,v0,s3
    a844:	294100a1 	slti	at,t2,161
    a848:	14200012 	bnez	at,a894 <L8008CDB8+0xbc>
    a84c:	a6af13d8 	sh	t7,5080(s5)
    a850:	86a213dc 	lh	v0,5084(s5)
    a854:	244effca 	addiu	t6,v0,-54
    a858:	01c3001a 	div	zero,t6,v1
    a85c:	00009812 	mflo	s3
    a860:	00139c00 	sll	s3,s3,0x10
    a864:	14600002 	bnez	v1,a870 <L8008CDB8+0x98>
    a868:	00000000 	nop
    a86c:	0007000d 	break	0x7
    a870:	2401ffff 	li	at,-1
    a874:	14610004 	bne	v1,at,a888 <L8008CDB8+0xb0>
    a878:	3c018000 	lui	at,0x8000
    a87c:	15c10002 	bne	t6,at,a888 <L8008CDB8+0xb0>
    a880:	00000000 	nop
    a884:	0006000d 	break	0x6
    a888:	00139c03 	sra	s3,s3,0x10
    a88c:	10000011 	b	a8d4 <L8008CDB8+0xfc>
    a890:	2463ffff 	addiu	v1,v1,-1
    a894:	86a213dc 	lh	v0,5084(s5)
    a898:	2458ffd2 	addiu	t8,v0,-46
    a89c:	0303001a 	div	zero,t8,v1
    a8a0:	00009812 	mflo	s3
    a8a4:	00139c00 	sll	s3,s3,0x10
    a8a8:	00139c03 	sra	s3,s3,0x10
    a8ac:	14600002 	bnez	v1,a8b8 <L8008CDB8+0xe0>
    a8b0:	00000000 	nop
    a8b4:	0007000d 	break	0x7
    a8b8:	2401ffff 	li	at,-1
    a8bc:	14610004 	bne	v1,at,a8d0 <L8008CDB8+0xf8>
    a8c0:	3c018000 	lui	at,0x8000
    a8c4:	17010002 	bne	t8,at,a8d0 <L8008CDB8+0xf8>
    a8c8:	00000000 	nop
    a8cc:	0006000d 	break	0x6
    a8d0:	2463ffff 	addiu	v1,v1,-1
    a8d4:	00535823 	subu	t3,v0,s3
    a8d8:	00031c00 	sll	v1,v1,0x10
    a8dc:	a6ab13dc 	sh	t3,5084(s5)
    a8e0:	00031c03 	sra	v1,v1,0x10
    a8e4:	3c010000 	lui	at,0x0
    a8e8:	14600017 	bnez	v1,a948 <L8008CDB8+0x170>
    a8ec:	a4230000 	sh	v1,0(at)
    a8f0:	240c001a 	li	t4,26
    a8f4:	24030014 	li	v1,20
    a8f8:	a6ac13d8 	sh	t4,5080(s5)
    a8fc:	3c010000 	lui	at,0x0
    a900:	a4230000 	sh	v1,0(at)
    a904:	86b9002e 	lh	t9,46(s5)
    a908:	240d0036 	li	t5,54
    a90c:	240f002e 	li	t7,46
    a910:	2b2100a1 	slti	at,t9,161
    a914:	14200003 	bnez	at,a924 <L8008CDB8+0x14c>
    a918:	2418000a 	li	t8,10
    a91c:	10000002 	b	a928 <L8008CDB8+0x150>
    a920:	a6ad13dc 	sh	t5,5084(s5)
    a924:	a6af13dc 	sh	t7,5084(s5)
    a928:	86aa13d2 	lh	t2,5074(s5)
    a92c:	24010003 	li	at,3
    a930:	240e0004 	li	t6,4
    a934:	55410004 	bnel	t2,at,a948 <L8008CDB8+0x170>
    a938:	a6b813d2 	sh	t8,5074(s5)
    a93c:	10000002 	b	a948 <L8008CDB8+0x170>
    a940:	a6ae13d2 	sh	t6,5074(s5)
    a944:	a6b813d2 	sh	t8,5074(s5)
    a948:	86a213d2 	lh	v0,5074(s5)

0000a94c <L8008CF2C>:
    a94c:	24010004 	li	at,4
    a950:	10410004 	beq	v0,at,a964 <L8008CF2C+0x18>
    a954:	3c040000 	lui	a0,0x0
    a958:	2401000a 	li	at,10
    a95c:	5441000d 	bnel	v0,at,a994 <L8008CF2C+0x48>
    a960:	28410003 	slti	at,v0,3
    a964:	86ab002e 	lh	t3,46(s5)
    a968:	240c0036 	li	t4,54
    a96c:	2419002e 	li	t9,46
    a970:	296100a1 	slti	at,t3,161
    a974:	54200005 	bnezl	at,a98c <L8008CF2C+0x40>
    a978:	a6b913dc 	sh	t9,5084(s5)
    a97c:	a6ac13dc 	sh	t4,5084(s5)
    a980:	10000003 	b	a990 <L8008CF2C+0x44>
    a984:	86a213d2 	lh	v0,5074(s5)
    a988:	a6b913dc 	sh	t9,5084(s5)
    a98c:	86a213d2 	lh	v0,5074(s5)
    a990:	28410003 	slti	at,v0,3
    a994:	14200092 	bnez	at,abe0 <L8008CF2C+0x294>
    a998:	00000000 	nop
    a99c:	84840000 	lh	a0,0(a0)
    a9a0:	3c010000 	lui	at,0x0
    a9a4:	2484ffff 	addiu	a0,a0,-1
    a9a8:	00042400 	sll	a0,a0,0x10
    a9ac:	00042403 	sra	a0,a0,0x10
    a9b0:	1480008b 	bnez	a0,abe0 <L8008CF2C+0x294>
    a9b4:	a4240000 	sh	a0,0(at)
    a9b8:	24040014 	li	a0,20
    a9bc:	3c010000 	lui	at,0x0
    a9c0:	a4240000 	sh	a0,0(at)
    a9c4:	24010004 	li	at,4
    a9c8:	54410064 	bnel	v0,at,ab5c <L8008CF2C+0x210>
    a9cc:	86aa13d4 	lh	t2,5076(s5)
    a9d0:	86ad13d4 	lh	t5,5076(s5)
    a9d4:	3c040000 	lui	a0,0x0
    a9d8:	24840000 	addiu	a0,a0,0
    a9dc:	25afffff 	addiu	t7,t5,-1
    a9e0:	a6af13d4 	sh	t7,5076(s5)
    a9e4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    a9e8:	86a513d4 	lh	a1,5076(s5)
    a9ec:	86a213d4 	lh	v0,5076(s5)
    a9f0:	02e02025 	move	a0,s7
    a9f4:	1c400024 	bgtz	v0,aa88 <L8008CF2C+0x13c>
    a9f8:	2841003d 	slti	at,v0,61
    a9fc:	0c000000 	jal	0 <Interface_ChangeAlpha>
    aa00:	24050037 	li	a1,55
    aa04:	1040000b 	beqz	v0,aa34 <L8008CF2C+0xe8>
    aa08:	24030028 	li	v1,40
    aa0c:	86e200a4 	lh	v0,164(s7)
    aa10:	2401004f 	li	at,79
    aa14:	240e0006 	li	t6,6
    aa18:	10410015 	beq	v0,at,aa70 <L8008CF2C+0x124>
    aa1c:	2401001a 	li	at,26
    aa20:	10410013 	beq	v0,at,aa70 <L8008CF2C+0x124>
    aa24:	2401000e 	li	at,14
    aa28:	10410011 	beq	v0,at,aa70 <L8008CF2C+0x124>
    aa2c:	2401000f 	li	at,15
    aa30:	1041000f 	beq	v0,at,aa70 <L8008CF2C+0x124>
    aa34:	240a0005 	li	t2,5
    aa38:	a6aa13d2 	sh	t2,5074(s5)
    aa3c:	aea00008 	sw	zero,8(s5)
    aa40:	3c010000 	lui	at,0x0
    aa44:	a4230000 	sh	v1,0(at)
    aa48:	02e02025 	move	a0,s7
    aa4c:	240571b0 	li	a1,29104
    aa50:	0c000000 	jal	0 <Interface_ChangeAlpha>
    aa54:	00003025 	move	a2,zero
    aa58:	02e02025 	move	a0,s7
    aa5c:	00002825 	move	a1,zero
    aa60:	0c000000 	jal	0 <Interface_ChangeAlpha>
    aa64:	24060008 	li	a2,8
    aa68:	10000005 	b	aa80 <L8008CF2C+0x134>
    aa6c:	00000000 	nop
    aa70:	24030028 	li	v1,40
    aa74:	a6ae13d2 	sh	t6,5074(s5)
    aa78:	3c010000 	lui	at,0x0
    aa7c:	a4230000 	sh	v1,0(at)
    aa80:	10000047 	b	aba0 <L8008CF2C+0x254>
    aa84:	86af13d4 	lh	t7,5076(s5)
    aa88:	14200012 	bnez	at,aad4 <L8008CF2C+0x188>
    aa8c:	3c120000 	lui	s2,0x0
    aa90:	26520000 	addiu	s2,s2,0
    aa94:	86580008 	lh	t8,8(s2)
    aa98:	24010001 	li	at,1
    aa9c:	3c100000 	lui	s0,0x0
    aaa0:	1701000a 	bne	t8,at,aacc <L8008CF2C+0x180>
    aaa4:	26070000 	addiu	a3,s0,0
    aaa8:	3c0b0000 	lui	t3,0x0
    aaac:	256b0000 	addiu	t3,t3,0
    aab0:	3c050000 	lui	a1,0x0
    aab4:	24a50000 	addiu	a1,a1,0
    aab8:	afab0014 	sw	t3,20(sp)
    aabc:	24044804 	li	a0,18436
    aac0:	24060004 	li	a2,4
    aac4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    aac8:	afa70010 	sw	a3,16(sp)
    aacc:	10000034 	b	aba0 <L8008CF2C+0x254>
    aad0:	86af13d4 	lh	t7,5076(s5)
    aad4:	2841000b 	slti	at,v0,11
    aad8:	14200012 	bnez	at,ab24 <L8008CF2C+0x1d8>
    aadc:	3c120000 	lui	s2,0x0
    aae0:	26520000 	addiu	s2,s2,0
    aae4:	864c0008 	lh	t4,8(s2)
    aae8:	3c100000 	lui	s0,0x0
    aaec:	26070000 	addiu	a3,s0,0
    aaf0:	31990001 	andi	t9,t4,0x1
    aaf4:	13200009 	beqz	t9,ab1c <L8008CF2C+0x1d0>
    aaf8:	24044819 	li	a0,18457
    aafc:	3c0d0000 	lui	t5,0x0
    ab00:	25ad0000 	addiu	t5,t5,0
    ab04:	3c050000 	lui	a1,0x0
    ab08:	24a50000 	addiu	a1,a1,0
    ab0c:	afad0014 	sw	t5,20(sp)
    ab10:	24060004 	li	a2,4
    ab14:	0c000000 	jal	0 <Interface_ChangeAlpha>
    ab18:	afa70010 	sw	a3,16(sp)
    ab1c:	10000020 	b	aba0 <L8008CF2C+0x254>
    ab20:	86af13d4 	lh	t7,5076(s5)
    ab24:	3c100000 	lui	s0,0x0
    ab28:	3c0f0000 	lui	t7,0x0
    ab2c:	26070000 	addiu	a3,s0,0
    ab30:	25ef0000 	addiu	t7,t7,0
    ab34:	3c050000 	lui	a1,0x0
    ab38:	24a50000 	addiu	a1,a1,0
    ab3c:	afaf0014 	sw	t7,20(sp)
    ab40:	afa70010 	sw	a3,16(sp)
    ab44:	2404481a 	li	a0,18458
    ab48:	0c000000 	jal	0 <Interface_ChangeAlpha>
    ab4c:	24060004 	li	a2,4
    ab50:	10000013 	b	aba0 <L8008CF2C+0x254>
    ab54:	86af13d4 	lh	t7,5076(s5)
    ab58:	86aa13d4 	lh	t2,5076(s5)
    ab5c:	96b813fc 	lhu	t8,5116(s5)
    ab60:	254e0001 	addiu	t6,t2,1
    ab64:	330b0001 	andi	t3,t8,0x1
    ab68:	1160000c 	beqz	t3,ab9c <L8008CF2C+0x250>
    ab6c:	a6ae13d4 	sh	t6,5076(s5)
    ab70:	86ac13d4 	lh	t4,5076(s5)
    ab74:	240100f0 	li	at,240
    ab78:	02e02025 	move	a0,s7
    ab7c:	15810007 	bne	t4,at,ab9c <L8008CF2C+0x250>
    ab80:	24056083 	li	a1,24707
    ab84:	0c000000 	jal	0 <Interface_ChangeAlpha>
    ab88:	00003025 	move	a2,zero
    ab8c:	96b913fc 	lhu	t9,5116(s5)
    ab90:	a6a013d2 	sh	zero,5074(s5)
    ab94:	332dfffe 	andi	t5,t9,0xfffe
    ab98:	a6ad13fc 	sh	t5,5116(s5)
    ab9c:	86af13d4 	lh	t7,5076(s5)
    aba0:	2401003c 	li	at,60
    aba4:	3c100000 	lui	s0,0x0
    aba8:	01e1001a 	div	zero,t7,at
    abac:	00005010 	mfhi	t2
    abb0:	26100000 	addiu	s0,s0,0
    abb4:	1540000a 	bnez	t2,abe0 <L8008CF2C+0x294>
    abb8:	3c0e0000 	lui	t6,0x0
    abbc:	25ce0000 	addiu	t6,t6,0
    abc0:	3c050000 	lui	a1,0x0
    abc4:	24a50000 	addiu	a1,a1,0
    abc8:	afae0014 	sw	t6,20(sp)
    abcc:	24044819 	li	a0,18457
    abd0:	24060004 	li	a2,4
    abd4:	02003825 	move	a3,s0
    abd8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    abdc:	afb00010 	sw	s0,16(sp)
    abe0:	1000000a 	b	ac0c <L8008D1EC>
    abe4:	86a413ce 	lh	a0,5070(s5)

0000abe8 <L8008D1C8>:
    abe8:	3c030000 	lui	v1,0x0
    abec:	84630000 	lh	v1,0(v1)
    abf0:	3c010000 	lui	at,0x0
    abf4:	2463ffff 	addiu	v1,v1,-1
    abf8:	00031c00 	sll	v1,v1,0x10
    abfc:	00031c03 	sra	v1,v1,0x10
    ac00:	14600002 	bnez	v1,ac0c <L8008D1EC>
    ac04:	a4230000 	sh	v1,0(at)
    ac08:	a6a013d2 	sh	zero,5074(s5)

0000ac0c <L8008D1EC>:
    ac0c:	3c120000 	lui	s2,0x0
    ac10:	26520000 	addiu	s2,s2,0
    ac14:	10800003 	beqz	a0,ac24 <L8008D1EC+0x18>
    ac18:	2401000a 	li	at,10
    ac1c:	54810005 	bnel	a0,at,ac34 <L8008D1EC+0x28>
    ac20:	a6400006 	sh	zero,6(s2)
    ac24:	86b813d2 	lh	t8,5074(s5)
    ac28:	530000c3 	beqzl	t8,af38 <L8008D1EC+0x32c>
    ac2c:	8fb80068 	lw	t8,104(sp)
    ac30:	a6400006 	sh	zero,6(s2)
    ac34:	86500006 	lh	s0,6(s2)
    ac38:	240b000a 	li	t3,10
    ac3c:	a64b0004 	sh	t3,4(s2)
    ac40:	00009825 	move	s3,zero
    ac44:	a6500002 	sh	s0,2(s2)
    ac48:	10800004 	beqz	a0,ac5c <L8008D1EC+0x50>
    ac4c:	a6500000 	sh	s0,0(s2)
    ac50:	86ac13d0 	lh	t4,5072(s5)
    ac54:	10000003 	b	ac64 <L8008D1EC+0x58>
    ac58:	a64c0008 	sh	t4,8(s2)
    ac5c:	86b913d4 	lh	t9,5076(s5)
    ac60:	a6590008 	sh	t9,8(s2)
    ac64:	86420008 	lh	v0,8(s2)
    ac68:	3c050000 	lui	a1,0x0
    ac6c:	24a50000 	addiu	a1,a1,0
    ac70:	2841003c 	slti	at,v0,60
    ac74:	14200014 	bnez	at,acc8 <L8008D1EC+0xbc>
    ac78:	24060010 	li	a2,16
    ac7c:	864d0002 	lh	t5,2(s2)
    ac80:	25af0001 	addiu	t7,t5,1
    ac84:	a64f0002 	sh	t7,2(s2)
    ac88:	86420002 	lh	v0,2(s2)
    ac8c:	2841000a 	slti	at,v0,10
    ac90:	54200007 	bnezl	at,acb0 <L8008D1EC+0xa4>
    ac94:	864b0008 	lh	t3,8(s2)
    ac98:	864a0000 	lh	t2,0(s2)
    ac9c:	2458fff6 	addiu	t8,v0,-10
    aca0:	a6580002 	sh	t8,2(s2)
    aca4:	254e0001 	addiu	t6,t2,1
    aca8:	a64e0000 	sh	t6,0(s2)
    acac:	864b0008 	lh	t3,8(s2)
    acb0:	256cffc4 	addiu	t4,t3,-60
    acb4:	a64c0008 	sh	t4,8(s2)
    acb8:	86420008 	lh	v0,8(s2)
    acbc:	2841003c 	slti	at,v0,60
    acc0:	5020ffef 	beqzl	at,ac80 <L8008D1EC+0x74>
    acc4:	864d0002 	lh	t5,2(s2)
    acc8:	2841000a 	slti	at,v0,10
    accc:	14200008 	bnez	at,acf0 <L8008D1EC+0xe4>
    acd0:	244ffff6 	addiu	t7,v0,-10
    acd4:	a64f0008 	sh	t7,8(s2)
    acd8:	86420008 	lh	v0,8(s2)
    acdc:	86590006 	lh	t9,6(s2)
    ace0:	2841000a 	slti	at,v0,10
    ace4:	272d0001 	addiu	t5,t9,1
    ace8:	1020fff9 	beqz	at,acd0 <L8008D1EC+0xc4>
    acec:	a64d0006 	sh	t5,6(s2)
    acf0:	8e8702b0 	lw	a3,688(s4)
    acf4:	3c0ee700 	lui	t6,0xe700
    acf8:	3c0bfa00 	lui	t3,0xfa00
    acfc:	24ea0008 	addiu	t2,a3,8
    ad00:	ae8a02b0 	sw	t2,688(s4)
    ad04:	ace00004 	sw	zero,4(a3)
    ad08:	acee0000 	sw	t6,0(a3)
    ad0c:	8e8702b0 	lw	a3,688(s4)
    ad10:	240cffff 	li	t4,-1
    ad14:	3c0dfb00 	lui	t5,0xfb00
    ad18:	24f80008 	addiu	t8,a3,8
    ad1c:	ae9802b0 	sw	t8,688(s4)
    ad20:	acec0004 	sw	t4,4(a3)
    ad24:	aceb0000 	sw	t3,0(a3)
    ad28:	8e8702b0 	lw	a3,688(s4)
    ad2c:	240b0010 	li	t3,16
    ad30:	240c0400 	li	t4,1024
    ad34:	24f90008 	addiu	t9,a3,8
    ad38:	ae9902b0 	sw	t9,688(s4)
    ad3c:	ace00004 	sw	zero,4(a3)
    ad40:	aced0000 	sw	t5,0(a3)
    ad44:	87af0274 	lh	t7,628(sp)
    ad48:	8e8402b0 	lw	a0,688(s4)
    ad4c:	24190400 	li	t9,1024
    ad50:	000f5040 	sll	t2,t7,0x1
    ad54:	02aa4821 	addu	t1,s5,t2
    ad58:	853013da 	lh	s0,5082(t1)
    ad5c:	853113d6 	lh	s1,5078(t1)
    ad60:	24180010 	li	t8,16
    ad64:	260e0002 	addiu	t6,s0,2
    ad68:	afae0014 	sw	t6,20(sp)
    ad6c:	afb80018 	sw	t8,24(sp)
    ad70:	afa90064 	sw	t1,100(sp)
    ad74:	afb90024 	sw	t9,36(sp)
    ad78:	afac0020 	sw	t4,32(sp)
    ad7c:	afab001c 	sw	t3,28(sp)
    ad80:	24070010 	li	a3,16
    ad84:	0c000000 	jal	0 <Interface_ChangeAlpha>
    ad88:	afb10010 	sw	s1,16(sp)
    ad8c:	8fa90064 	lw	t1,100(sp)
    ad90:	ae8202b0 	sw	v0,688(s4)
    ad94:	244d0008 	addiu	t5,v0,8
    ad98:	ae8d02b0 	sw	t5,688(s4)
    ad9c:	3c0fe700 	lui	t7,0xe700
    ada0:	ac4f0000 	sw	t7,0(v0)
    ada4:	ac400004 	sw	zero,4(v0)
    ada8:	8e8702b0 	lw	a3,688(s4)
    adac:	3c0efcff 	lui	t6,0xfcff
    adb0:	3c18ff2d 	lui	t8,0xff2d
    adb4:	24ea0008 	addiu	t2,a3,8
    adb8:	ae8a02b0 	sw	t2,688(s4)
    adbc:	3718feff 	ori	t8,t8,0xfeff
    adc0:	35ce97ff 	ori	t6,t6,0x97ff
    adc4:	acee0000 	sw	t6,0(a3)
    adc8:	acf80004 	sw	t8,4(a3)
    adcc:	86a413ce 	lh	a0,5070(s5)
    add0:	50800018 	beqzl	a0,ae34 <L8008D1EC+0x228>
    add4:	86b813d4 	lh	t8,5076(s5)
    add8:	86ab13d0 	lh	t3,5072(s5)
    addc:	2961000a 	slti	at,t3,10
    ade0:	1020000b 	beqz	at,ae10 <L8008D1EC+0x204>
    ade4:	2881000b 	slti	at,a0,11
    ade8:	10200009 	beqz	at,ae10 <L8008D1EC+0x204>
    adec:	3c19fa00 	lui	t9,0xfa00
    adf0:	8e8702b0 	lw	a3,688(s4)
    adf4:	3c0dff32 	lui	t5,0xff32
    adf8:	35ad00ff 	ori	t5,t5,0xff
    adfc:	24ec0008 	addiu	t4,a3,8
    ae00:	ae8c02b0 	sw	t4,688(s4)
    ae04:	aced0004 	sw	t5,4(a3)
    ae08:	10000022 	b	ae94 <L8008D1EC+0x288>
    ae0c:	acf90000 	sw	t9,0(a3)
    ae10:	8e8702b0 	lw	a3,688(s4)
    ae14:	3c0afa00 	lui	t2,0xfa00
    ae18:	240effff 	li	t6,-1
    ae1c:	24ef0008 	addiu	t7,a3,8
    ae20:	ae8f02b0 	sw	t7,688(s4)
    ae24:	acee0004 	sw	t6,4(a3)
    ae28:	1000001a 	b	ae94 <L8008D1EC+0x288>
    ae2c:	acea0000 	sw	t2,0(a3)
    ae30:	86b813d4 	lh	t8,5076(s5)
    ae34:	3c0afa00 	lui	t2,0xfa00
    ae38:	2b01000a 	slti	at,t8,10
    ae3c:	5020000f 	beqzl	at,ae7c <L8008D1EC+0x270>
    ae40:	8e8702b0 	lw	a3,688(s4)
    ae44:	86ab13d2 	lh	t3,5074(s5)
    ae48:	3c19fa00 	lui	t9,0xfa00
    ae4c:	29610006 	slti	at,t3,6
    ae50:	5020000a 	beqzl	at,ae7c <L8008D1EC+0x270>
    ae54:	8e8702b0 	lw	a3,688(s4)
    ae58:	8e8702b0 	lw	a3,688(s4)
    ae5c:	3c0dff32 	lui	t5,0xff32
    ae60:	35ad00ff 	ori	t5,t5,0xff
    ae64:	24ec0008 	addiu	t4,a3,8
    ae68:	ae8c02b0 	sw	t4,688(s4)
    ae6c:	aced0004 	sw	t5,4(a3)
    ae70:	10000008 	b	ae94 <L8008D1EC+0x288>
    ae74:	acf90000 	sw	t9,0(a3)
    ae78:	8e8702b0 	lw	a3,688(s4)
    ae7c:	3c0effff 	lui	t6,0xffff
    ae80:	35ce00ff 	ori	t6,t6,0xff
    ae84:	24ef0008 	addiu	t7,a3,8
    ae88:	ae8f02b0 	sw	t7,688(s4)
    ae8c:	acee0004 	sw	t6,4(a3)
    ae90:	acea0000 	sw	t2,0(a3)
    ae94:	00131840 	sll	v1,s3,0x1
    ae98:	3c0d0000 	lui	t5,0x0
    ae9c:	01a36821 	addu	t5,t5,v1
    aea0:	3c0a0000 	lui	t2,0x0
    aea4:	85ad0000 	lh	t5,0(t5)
    aea8:	853113d6 	lh	s1,5078(t1)
    aeac:	01435021 	addu	t2,t2,v1
    aeb0:	0243c021 	addu	t8,s2,v1
    aeb4:	870b0000 	lh	t3,0(t8)
    aeb8:	854a0000 	lh	t2,0(t2)
    aebc:	853013da 	lh	s0,5082(t1)
    aec0:	8e8402b0 	lw	a0,688(s4)
    aec4:	3c080000 	lui	t0,0x0
    aec8:	8d080000 	lw	t0,0(t0)
    aecc:	01b17821 	addu	t7,t5,s1
    aed0:	afaf0010 	sw	t7,16(sp)
    aed4:	afaa0018 	sw	t2,24(sp)
    aed8:	afb00014 	sw	s0,20(sp)
    aedc:	850e0f68 	lh	t6,3944(t0)
    aee0:	3c190000 	lui	t9,0x0
    aee4:	27390000 	addiu	t9,t9,0
    aee8:	afae001c 	sw	t6,28(sp)
    aeec:	85020f6a 	lh	v0,3946(t0)
    aef0:	000b61c0 	sll	t4,t3,0x7
    aef4:	01992821 	addu	a1,t4,t9
    aef8:	00021040 	sll	v0,v0,0x1
    aefc:	3042ffff 	andi	v0,v0,0xffff
    af00:	afa20020 	sw	v0,32(sp)
    af04:	afa20024 	sw	v0,36(sp)
    af08:	afa90064 	sw	t1,100(sp)
    af0c:	24060008 	li	a2,8
    af10:	0c000000 	jal	0 <Interface_ChangeAlpha>
    af14:	24070010 	li	a3,16
    af18:	26730001 	addiu	s3,s3,1
    af1c:	00139c00 	sll	s3,s3,0x10
    af20:	00139c03 	sra	s3,s3,0x10
    af24:	2a610005 	slti	at,s3,5
    af28:	8fa90064 	lw	t1,100(sp)
    af2c:	1420ffd9 	bnez	at,ae94 <L8008D1EC+0x288>
    af30:	ae8202b0 	sw	v0,688(s4)
    af34:	8fb80068 	lw	t8,104(sp)
    af38:	24010003 	li	at,3
    af3c:	970b01d6 	lhu	t3,470(t8)
    af40:	55610004 	bnel	t3,at,af54 <L8008D1EC+0x348>
    af44:	96cc0244 	lhu	t4,580(s6)
    af48:	0c000000 	jal	0 <Interface_ChangeAlpha>
    af4c:	02e02025 	move	a0,s7
    af50:	96cc0244 	lhu	t4,580(s6)
    af54:	3c060000 	lui	a2,0x0
    af58:	24c60000 	addiu	a2,a2,0
    af5c:	11800029 	beqz	t4,b004 <L8008D1EC+0x3f8>
    af60:	27a40260 	addiu	a0,sp,608
    af64:	8e8702b0 	lw	a3,688(s4)
    af68:	3c0de700 	lui	t5,0xe700
    af6c:	3c0e0000 	lui	t6,0x0
    af70:	24f90008 	addiu	t9,a3,8
    af74:	ae9902b0 	sw	t9,688(s4)
    af78:	ace00004 	sw	zero,4(a3)
    af7c:	aced0000 	sw	t5,0(a3)
    af80:	8e8702b0 	lw	a3,688(s4)
    af84:	25ce0000 	addiu	t6,t6,0
    af88:	3c0ade00 	lui	t2,0xde00
    af8c:	24ef0008 	addiu	t7,a3,8
    af90:	ae8f02b0 	sw	t7,688(s4)
    af94:	acee0004 	sw	t6,4(a3)
    af98:	acea0000 	sw	t2,0(a3)
    af9c:	8e8702b0 	lw	a3,688(s4)
    afa0:	3c0bfa00 	lui	t3,0xfa00
    afa4:	3c0f0000 	lui	t7,0x0
    afa8:	24f80008 	addiu	t8,a3,8
    afac:	ae9802b0 	sw	t8,688(s4)
    afb0:	aceb0000 	sw	t3,0(a3)
    afb4:	96cc0244 	lhu	t4,580(s6)
    afb8:	3c01f600 	lui	at,0xf600
    afbc:	319900ff 	andi	t9,t4,0xff
    afc0:	acf90004 	sw	t9,4(a3)
    afc4:	8e8702b0 	lw	a3,688(s4)
    afc8:	3c0c0000 	lui	t4,0x0
    afcc:	24ed0008 	addiu	t5,a3,8
    afd0:	ae8d02b0 	sw	t5,688(s4)
    afd4:	8def0000 	lw	t7,0(t7)
    afd8:	8d8c0000 	lw	t4,0(t4)
    afdc:	ace00004 	sw	zero,4(a3)
    afe0:	25eaffff 	addiu	t2,t7,-1
    afe4:	314e03ff 	andi	t6,t2,0x3ff
    afe8:	2599ffff 	addiu	t9,t4,-1
    afec:	332d03ff 	andi	t5,t9,0x3ff
    aff0:	000ec380 	sll	t8,t6,0xe
    aff4:	03015825 	or	t3,t8,at
    aff8:	000d7880 	sll	t7,t5,0x2
    affc:	016f5025 	or	t2,t3,t7
    b000:	acea0000 	sw	t2,0(a3)
    b004:	8ee50000 	lw	a1,0(s7)
    b008:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b00c:	240710ad 	li	a3,4269
    b010:	8fbf004c 	lw	ra,76(sp)
    b014:	8fb0002c 	lw	s0,44(sp)
    b018:	8fb10030 	lw	s1,48(sp)
    b01c:	8fb20034 	lw	s2,52(sp)
    b020:	8fb30038 	lw	s3,56(sp)
    b024:	8fb4003c 	lw	s4,60(sp)
    b028:	8fb50040 	lw	s5,64(sp)
    b02c:	8fb60044 	lw	s6,68(sp)
    b030:	8fb70048 	lw	s7,72(sp)
    b034:	03e00008 	jr	ra
    b038:	27bd0290 	addiu	sp,sp,656

0000b03c <Interface_Update>:
    b03c:	27bdffb8 	addiu	sp,sp,-72
    b040:	afbf001c 	sw	ra,28(sp)
    b044:	afa40048 	sw	a0,72(sp)
    b048:	8c8f1c44 	lw	t7,7236(a0)
    b04c:	2401fdff 	li	at,-513
    b050:	3c080000 	lui	t0,0x0
    b054:	afaf003c 	sw	t7,60(sp)
    b058:	94980050 	lhu	t8,80(a0)
    b05c:	3c040000 	lui	a0,0x0
    b060:	25080000 	addiu	t0,t0,0
    b064:	0301c827 	nor	t9,t8,at
    b068:	17200008 	bnez	t9,b08c <Interface_Update+0x50>
    b06c:	24840730 	addiu	a0,a0,1840
    b070:	3c060000 	lui	a2,0x0
    b074:	a1001409 	sb	zero,5129(t0)
    b078:	24c61409 	addiu	a2,a2,5129
    b07c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b080:	300500ff 	andi	a1,zero,0xff
    b084:	10000020 	b	b108 <Interface_Update+0xcc>
    b088:	8fb80048 	lw	t8,72(sp)
    b08c:	8fab0048 	lw	t3,72(sp)
    b090:	2401f7ff 	li	at,-2049
    b094:	95620050 	lhu	v0,80(t3)
    b098:	00416027 	nor	t4,v0,at
    b09c:	1580000c 	bnez	t4,b0d0 <Interface_Update+0x94>
    b0a0:	3c080000 	lui	t0,0x0
    b0a4:	25080000 	addiu	t0,t0,0
    b0a8:	240d0001 	li	t5,1
    b0ac:	3c040000 	lui	a0,0x0
    b0b0:	3c060000 	lui	a2,0x0
    b0b4:	a10d1409 	sb	t5,5129(t0)
    b0b8:	24c61409 	addiu	a2,a2,5129
    b0bc:	24840740 	addiu	a0,a0,1856
    b0c0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b0c4:	31a500ff 	andi	a1,t5,0xff
    b0c8:	1000000f 	b	b108 <Interface_Update+0xcc>
    b0cc:	8fb80048 	lw	t8,72(sp)
    b0d0:	2401feff 	li	at,-257
    b0d4:	00417827 	nor	t7,v0,at
    b0d8:	15e0000a 	bnez	t7,b104 <Interface_Update+0xc8>
    b0dc:	3c080000 	lui	t0,0x0
    b0e0:	25080000 	addiu	t0,t0,0
    b0e4:	240e0002 	li	t6,2
    b0e8:	3c040000 	lui	a0,0x0
    b0ec:	3c060000 	lui	a2,0x0
    b0f0:	a10e1409 	sb	t6,5129(t0)
    b0f4:	24c61409 	addiu	a2,a2,5129
    b0f8:	24840750 	addiu	a0,a0,1872
    b0fc:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b100:	31c500ff 	andi	a1,t6,0xff
    b104:	8fb80048 	lw	t8,72(sp)
    b108:	3c010001 	lui	at,0x1
    b10c:	3c0b0001 	lui	t3,0x1
    b110:	0301c821 	addu	t9,t8,at
    b114:	afb90024 	sw	t9,36(sp)
    b118:	01785821 	addu	t3,t3,t8
    b11c:	956b0934 	lhu	t3,2356(t3)
    b120:	3c080000 	lui	t0,0x0
    b124:	25080000 	addiu	t0,t0,0
    b128:	15600026 	bnez	t3,b1c4 <Interface_Update+0x188>
    b12c:	3c0c0001 	lui	t4,0x1
    b130:	01986021 	addu	t4,t4,t8
    b134:	958c0936 	lhu	t4,2358(t4)
    b138:	55800023 	bnezl	t4,b1c8 <Interface_Update+0x18c>
    b13c:	950213e8 	lhu	v0,5096(t0)
    b140:	950d1404 	lhu	t5,5124(t0)
    b144:	24010001 	li	at,1
    b148:	8fae0048 	lw	t6,72(sp)
    b14c:	51a1000b 	beql	t5,at,b17c <Interface_Update+0x140>
    b150:	3c020001 	lui	v0,0x1
    b154:	8d021360 	lw	v0,4960(t0)
    b158:	28410004 	slti	at,v0,4
    b15c:	54200007 	bnezl	at,b17c <Interface_Update+0x140>
    b160:	3c020001 	lui	v0,0x1
    b164:	870f00a4 	lh	t7,164(t8)
    b168:	24010063 	li	at,99
    b16c:	15e10015 	bne	t7,at,b1c4 <Interface_Update+0x188>
    b170:	24010004 	li	at,4
    b174:	14410013 	bne	v0,at,b1c4 <Interface_Update+0x188>
    b178:	3c020001 	lui	v0,0x1
    b17c:	004e1021 	addu	v0,v0,t6
    b180:	904203dc 	lbu	v0,988(v0)
    b184:	8fab0024 	lw	t3,36(sp)
    b188:	50400008 	beqzl	v0,b1ac <Interface_Update+0x170>
    b18c:	956c0a20 	lhu	t4,2592(t3)
    b190:	5040000d 	beqzl	v0,b1c8 <Interface_Update+0x18c>
    b194:	950213e8 	lhu	v0,5096(t0)
    b198:	85d900a4 	lh	t9,164(t6)
    b19c:	2401004b 	li	at,75
    b1a0:	57210009 	bnel	t9,at,b1c8 <Interface_Update+0x18c>
    b1a4:	950213e8 	lhu	v0,5096(t0)
    b1a8:	956c0a20 	lhu	t4,2592(t3)
    b1ac:	55800006 	bnezl	t4,b1c8 <Interface_Update+0x18c>
    b1b0:	950213e8 	lhu	v0,5096(t0)
    b1b4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b1b8:	8fa40048 	lw	a0,72(sp)
    b1bc:	3c080000 	lui	t0,0x0
    b1c0:	25080000 	addiu	t0,t0,0
    b1c4:	950213e8 	lhu	v0,5096(t0)
    b1c8:	28410033 	slti	at,v0,51
    b1cc:	14200005 	bnez	at,b1e4 <Interface_Update+0x1a8>
    b1d0:	24010034 	li	at,52
    b1d4:	10410075 	beq	v0,at,b3ac <Interface_Update+0x370>
    b1d8:	240d0001 	li	t5,1
    b1dc:	1000007b 	b	b3cc <Interface_Update+0x390>
    b1e0:	8fb80048 	lw	t8,72(sp)
    b1e4:	2841000e 	slti	at,v0,14
    b1e8:	14200006 	bnez	at,b204 <Interface_Update+0x1c8>
    b1ec:	244dffff 	addiu	t5,v0,-1
    b1f0:	24010032 	li	at,50
    b1f4:	10410025 	beq	v0,at,b28c <Interface_Update+0x250>
    b1f8:	3c040000 	lui	a0,0x0
    b1fc:	10000073 	b	b3cc <Interface_Update+0x390>
    b200:	8fb80048 	lw	t8,72(sp)
    b204:	2da1000d 	sltiu	at,t5,13
    b208:	1020006f 	beqz	at,b3c8 <Interface_Update+0x38c>
    b20c:	000d6880 	sll	t5,t5,0x2
    b210:	3c010000 	lui	at,0x0
    b214:	002d0821 	addu	at,at,t5
    b218:	8c2d09cc 	lw	t5,2508(at)
    b21c:	01a00008 	jr	t5
    b220:	00000000 	nop
    b224:	951813ec 	lhu	t8,5100(t0)
    b228:	240300ff 	li	v1,255
    b22c:	8fa40048 	lw	a0,72(sp)
    b230:	00187940 	sll	t7,t8,0x5
    b234:	006f2823 	subu	a1,v1,t7
    b238:	00052c00 	sll	a1,a1,0x10
    b23c:	00052c03 	sra	a1,a1,0x10
    b240:	04a10002 	bgez	a1,b24c <Interface_Update+0x210>
    b244:	00000000 	nop
    b248:	00002825 	move	a1,zero
    b24c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b250:	a7a5003a 	sh	a1,58(sp)
    b254:	3c080000 	lui	t0,0x0
    b258:	25080000 	addiu	t0,t0,0
    b25c:	950e13ec 	lhu	t6,5100(t0)
    b260:	87a5003a 	lh	a1,58(sp)
    b264:	25d90001 	addiu	t9,t6,1
    b268:	14a00002 	bnez	a1,b274 <Interface_Update+0x238>
    b26c:	a51913ec 	sh	t9,5100(t0)
    b270:	a50013e8 	sh	zero,5096(t0)
    b274:	8fab0048 	lw	t3,72(sp)
    b278:	3c010001 	lui	at,0x1
    b27c:	342104f0 	ori	at,at,0x4f0
    b280:	01616021 	addu	t4,t3,at
    b284:	10000055 	b	b3dc <Interface_Update+0x3a0>
    b288:	afac0028 	sw	t4,40(sp)
    b28c:	950d13ec 	lhu	t5,5100(t0)
    b290:	240300ff 	li	v1,255
    b294:	24840760 	addiu	a0,a0,1888
    b298:	000dc140 	sll	t8,t5,0x5
    b29c:	00782823 	subu	a1,v1,t8
    b2a0:	00052c00 	sll	a1,a1,0x10
    b2a4:	00052c03 	sra	a1,a1,0x10
    b2a8:	04a30003 	bgezl	a1,b2b8 <Interface_Update+0x27c>
    b2ac:	00651023 	subu	v0,v1,a1
    b2b0:	00002825 	move	a1,zero
    b2b4:	00651023 	subu	v0,v1,a1
    b2b8:	00027c00 	sll	t7,v0,0x10
    b2bc:	000f7403 	sra	t6,t7,0x10
    b2c0:	00023400 	sll	a2,v0,0x10
    b2c4:	29c100ff 	slti	at,t6,255
    b2c8:	14200003 	bnez	at,b2d8 <Interface_Update+0x29c>
    b2cc:	00063403 	sra	a2,a2,0x10
    b2d0:	00033400 	sll	a2,v1,0x10
    b2d4:	00063403 	sra	a2,a2,0x10
    b2d8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b2dc:	a7a60038 	sh	a2,56(sp)
    b2e0:	87a60038 	lh	a2,56(sp)
    b2e4:	8fa40048 	lw	a0,72(sp)
    b2e8:	00062c00 	sll	a1,a2,0x10
    b2ec:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b2f0:	00052c03 	sra	a1,a1,0x10
    b2f4:	8fa20048 	lw	v0,72(sp)
    b2f8:	3c010001 	lui	at,0x1
    b2fc:	342104f0 	ori	at,at,0x4f0
    b300:	00411021 	addu	v0,v0,at
    b304:	94590250 	lhu	t9,592(v0)
    b308:	240300ff 	li	v1,255
    b30c:	3c080000 	lui	t0,0x0
    b310:	25080000 	addiu	t0,t0,0
    b314:	10790002 	beq	v1,t9,b320 <Interface_Update+0x2e4>
    b318:	87a60038 	lh	a2,56(sp)
    b31c:	a4460250 	sh	a2,592(v0)
    b320:	944b0252 	lhu	t3,594(v0)
    b324:	506b0003 	beql	v1,t3,b334 <Interface_Update+0x2f8>
    b328:	8fac0048 	lw	t4,72(sp)
    b32c:	a4460252 	sh	a2,594(v0)
    b330:	8fac0048 	lw	t4,72(sp)
    b334:	858d00a4 	lh	t5,164(t4)
    b338:	25b8ffaf 	addiu	t8,t5,-81
    b33c:	2f010014 	sltiu	at,t8,20
    b340:	1020000f 	beqz	at,b380 <Interface_Update+0x344>
    b344:	0018c080 	sll	t8,t8,0x2
    b348:	3c010000 	lui	at,0x0
    b34c:	00380821 	addu	at,at,t8
    b350:	8c380a00 	lw	t8,2560(at)
    b354:	03000008 	jr	t8
    b358:	00000000 	nop
    b35c:	944f0254 	lhu	t7,596(v0)
    b360:	240e00aa 	li	t6,170
    b364:	29e100aa 	slti	at,t7,170
    b368:	10200003 	beqz	at,b378 <Interface_Update+0x33c>
    b36c:	00000000 	nop
    b370:	10000007 	b	b390 <Interface_Update+0x354>
    b374:	a4460254 	sh	a2,596(v0)
    b378:	10000005 	b	b390 <Interface_Update+0x354>
    b37c:	a44e0254 	sh	t6,596(v0)
    b380:	94590254 	lhu	t9,596(v0)
    b384:	50790003 	beql	v1,t9,b394 <Interface_Update+0x358>
    b388:	950b13ec 	lhu	t3,5100(t0)
    b38c:	a4460254 	sh	a2,596(v0)
    b390:	950b13ec 	lhu	t3,5100(t0)
    b394:	256c0001 	addiu	t4,t3,1
    b398:	14c30002 	bne	a2,v1,b3a4 <Interface_Update+0x368>
    b39c:	a50c13ec 	sh	t4,5100(t0)
    b3a0:	a50013e8 	sh	zero,5096(t0)
    b3a4:	1000000d 	b	b3dc <Interface_Update+0x3a0>
    b3a8:	afa20028 	sw	v0,40(sp)
    b3ac:	a50d13e8 	sh	t5,5096(t0)
    b3b0:	8fa40048 	lw	a0,72(sp)
    b3b4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b3b8:	00002825 	move	a1,zero
    b3bc:	3c080000 	lui	t0,0x0
    b3c0:	25080000 	addiu	t0,t0,0
    b3c4:	a50013e8 	sh	zero,5096(t0)
    b3c8:	8fb80048 	lw	t8,72(sp)
    b3cc:	3c010001 	lui	at,0x1
    b3d0:	342104f0 	ori	at,at,0x4f0
    b3d4:	03017821 	addu	t7,t8,at
    b3d8:	afaf0028 	sw	t7,40(sp)
    b3dc:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b3e0:	8fa40048 	lw	a0,72(sp)
    b3e4:	3c080000 	lui	t0,0x0
    b3e8:	25080000 	addiu	t0,t0,0
    b3ec:	85021424 	lh	v0,5156(t0)
    b3f0:	1040002b 	beqz	v0,b4a0 <Interface_Update+0x464>
    b3f4:	00000000 	nop
    b3f8:	85190030 	lh	t9,48(t0)
    b3fc:	244efffc 	addiu	t6,v0,-4
    b400:	3c070000 	lui	a3,0x0
    b404:	272b0004 	addiu	t3,t9,4
    b408:	a50b0030 	sh	t3,48(t0)
    b40c:	85050030 	lh	a1,48(t0)
    b410:	a50e1424 	sh	t6,5156(t0)
    b414:	24e70000 	addiu	a3,a3,0
    b418:	30ac000f 	andi	t4,a1,0xf
    b41c:	29810004 	slti	at,t4,4
    b420:	1020000c 	beqz	at,b454 <Interface_Update+0x418>
    b424:	2404480b 	li	a0,18443
    b428:	3c0d0000 	lui	t5,0x0
    b42c:	25ad0000 	addiu	t5,t5,0
    b430:	3c050000 	lui	a1,0x0
    b434:	24a50000 	addiu	a1,a1,0
    b438:	afad0014 	sw	t5,20(sp)
    b43c:	24060004 	li	a2,4
    b440:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b444:	afa70010 	sw	a3,16(sp)
    b448:	3c080000 	lui	t0,0x0
    b44c:	25080000 	addiu	t0,t0,0
    b450:	85050030 	lh	a1,48(t0)
    b454:	3c040000 	lui	a0,0x0
    b458:	24840780 	addiu	a0,a0,1920
    b45c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b460:	8506002e 	lh	a2,46(t0)
    b464:	3c080000 	lui	t0,0x0
    b468:	25080000 	addiu	t0,t0,0
    b46c:	8506002e 	lh	a2,46(t0)
    b470:	85180030 	lh	t8,48(t0)
    b474:	3c040000 	lui	a0,0x0
    b478:	2484079c 	addiu	a0,a0,1948
    b47c:	0306082a 	slt	at,t8,a2
    b480:	14200007 	bnez	at,b4a0 <Interface_Update+0x464>
    b484:	00000000 	nop
    b488:	a5060030 	sh	a2,48(t0)
    b48c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b490:	85050030 	lh	a1,48(t0)
    b494:	3c080000 	lui	t0,0x0
    b498:	25080000 	addiu	t0,t0,0
    b49c:	a5001424 	sh	zero,5156(t0)
    b4a0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b4a4:	8fa40048 	lw	a0,72(sp)
    b4a8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b4ac:	8fa40048 	lw	a0,72(sp)
    b4b0:	3c030000 	lui	v1,0x0
    b4b4:	24630000 	addiu	v1,v1,0
    b4b8:	a4620000 	sh	v0,0(v1)
    b4bc:	846f0000 	lh	t7,0(v1)
    b4c0:	3c080000 	lui	t0,0x0
    b4c4:	24010001 	li	at,1
    b4c8:	15e1000d 	bne	t7,at,b500 <Interface_Update+0x4c4>
    b4cc:	25080000 	addiu	t0,t0,0
    b4d0:	3c190000 	lui	t9,0x0
    b4d4:	97390004 	lhu	t9,4(t9)
    b4d8:	950e0070 	lhu	t6,112(t0)
    b4dc:	3c0c0000 	lui	t4,0x0
    b4e0:	918c0002 	lbu	t4,2(t4)
    b4e4:	01d95824 	and	t3,t6,t9
    b4e8:	24010002 	li	at,2
    b4ec:	018b6807 	srav	t5,t3,t4
    b4f0:	15a10019 	bne	t5,at,b558 <Interface_Update+0x51c>
    b4f4:	00000000 	nop
    b4f8:	10000017 	b	b558 <Interface_Update+0x51c>
    b4fc:	a4600000 	sh	zero,0(v1)
    b500:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b504:	8fa40048 	lw	a0,72(sp)
    b508:	28410002 	slti	at,v0,2
    b50c:	14200012 	bnez	at,b558 <Interface_Update+0x51c>
    b510:	00000000 	nop
    b514:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b518:	8fa40048 	lw	a0,72(sp)
    b51c:	3c080000 	lui	t0,0x0
    b520:	28410005 	slti	at,v0,5
    b524:	1020000c 	beqz	at,b558 <Interface_Update+0x51c>
    b528:	25080000 	addiu	t0,t0,0
    b52c:	3c0f0000 	lui	t7,0x0
    b530:	95ef0004 	lhu	t7,4(t7)
    b534:	95180070 	lhu	t8,112(t0)
    b538:	3c190000 	lui	t9,0x0
    b53c:	93390002 	lbu	t9,2(t9)
    b540:	030f7024 	and	t6,t8,t7
    b544:	24010003 	li	at,3
    b548:	032e5807 	srav	t3,t6,t9
    b54c:	15610002 	bne	t3,at,b558 <Interface_Update+0x51c>
    b550:	3c010000 	lui	at,0x0
    b554:	a4200000 	sh	zero,0(at)
    b558:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b55c:	8fa40048 	lw	a0,72(sp)
    b560:	3c080000 	lui	t0,0x0
    b564:	25080000 	addiu	t0,t0,0
    b568:	850c13ce 	lh	t4,5070(t0)
    b56c:	29810003 	slti	at,t4,3
    b570:	5420001d 	bnezl	at,b5e8 <Interface_Update+0x5ac>
    b574:	850213cc 	lh	v0,5068(t0)
    b578:	8fa90024 	lw	t1,36(sp)
    b57c:	952d0934 	lhu	t5,2356(t1)
    b580:	55a00019 	bnezl	t5,b5e8 <Interface_Update+0x5ac>
    b584:	850213cc 	lh	v0,5068(t0)
    b588:	95380936 	lhu	t8,2358(t1)
    b58c:	8faf0048 	lw	t7,72(sp)
    b590:	3c0e0001 	lui	t6,0x1
    b594:	17000013 	bnez	t8,b5e4 <Interface_Update+0x5a8>
    b598:	01cf7021 	addu	t6,t6,t7
    b59c:	91ce03dc 	lbu	t6,988(t6)
    b5a0:	8fb9003c 	lw	t9,60(sp)
    b5a4:	55c00010 	bnezl	t6,b5e8 <Interface_Update+0x5ac>
    b5a8:	850213cc 	lh	v0,5068(t0)
    b5ac:	8f2b0680 	lw	t3,1664(t9)
    b5b0:	000b61c0 	sll	t4,t3,0x7
    b5b4:	0582000c 	bltzl	t4,b5e8 <Interface_Update+0x5ac>
    b5b8:	850213cc 	lh	v0,5068(t0)
    b5bc:	812d1e15 	lb	t5,7701(t1)
    b5c0:	55a00009 	bnezl	t5,b5e8 <Interface_Update+0x5ac>
    b5c4:	850213cc 	lh	v0,5068(t0)
    b5c8:	9138241b 	lbu	t8,9243(t1)
    b5cc:	57000006 	bnezl	t8,b5e8 <Interface_Update+0x5ac>
    b5d0:	850213cc 	lh	v0,5068(t0)
    b5d4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b5d8:	01e02025 	move	a0,t7
    b5dc:	3c080000 	lui	t0,0x0
    b5e0:	25080000 	addiu	t0,t0,0
    b5e4:	850213cc 	lh	v0,5068(t0)
    b5e8:	8fa90024 	lw	t1,36(sp)
    b5ec:	50400065 	beqzl	v0,b784 <Interface_Update+0x748>
    b5f0:	8fa70028 	lw	a3,40(sp)
    b5f4:	18400034 	blez	v0,b6c8 <Interface_Update+0x68c>
    b5f8:	3c190000 	lui	t9,0x0
    b5fc:	8d0e00a0 	lw	t6,160(t0)
    b600:	8f390010 	lw	t9,16(t9)
    b604:	3c0c0000 	lui	t4,0x0
    b608:	918c0004 	lbu	t4,4(t4)
    b60c:	01d95824 	and	t3,t6,t9
    b610:	3c050000 	lui	a1,0x0
    b614:	018b6807 	srav	t5,t3,t4
    b618:	000dc040 	sll	t8,t5,0x1
    b61c:	00b82821 	addu	a1,a1,t8
    b620:	94a50020 	lhu	a1,32(a1)
    b624:	85030034 	lh	v1,52(t0)
    b628:	3c070000 	lui	a3,0x0
    b62c:	24e70000 	addiu	a3,a3,0
    b630:	0065082a 	slt	at,v1,a1
    b634:	10200011 	beqz	at,b67c <Interface_Update+0x640>
    b638:	3c040000 	lui	a0,0x0
    b63c:	3c190000 	lui	t9,0x0
    b640:	244fffff 	addiu	t7,v0,-1
    b644:	246e0001 	addiu	t6,v1,1
    b648:	27390000 	addiu	t9,t9,0
    b64c:	3c050000 	lui	a1,0x0
    b650:	a50f13cc 	sh	t7,5068(t0)
    b654:	a50e0034 	sh	t6,52(t0)
    b658:	24a50000 	addiu	a1,a1,0
    b65c:	afb90014 	sw	t9,20(sp)
    b660:	2404482f 	li	a0,18479
    b664:	24060004 	li	a2,4
    b668:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b66c:	afa70010 	sw	a3,16(sp)
    b670:	3c080000 	lui	t0,0x0
    b674:	10000012 	b	b6c0 <Interface_Update+0x684>
    b678:	25080000 	addiu	t0,t0,0
    b67c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b680:	248407cc 	addiu	a0,a0,1996
    b684:	3c080000 	lui	t0,0x0
    b688:	25080000 	addiu	t0,t0,0
    b68c:	3c0c0000 	lui	t4,0x0
    b690:	8d8c0010 	lw	t4,16(t4)
    b694:	8d0b00a0 	lw	t3,160(t0)
    b698:	3c180000 	lui	t8,0x0
    b69c:	93180004 	lbu	t8,4(t8)
    b6a0:	016c6824 	and	t5,t3,t4
    b6a4:	3c190000 	lui	t9,0x0
    b6a8:	030d7807 	srav	t7,t5,t8
    b6ac:	000f7040 	sll	t6,t7,0x1
    b6b0:	032ec821 	addu	t9,t9,t6
    b6b4:	97390020 	lhu	t9,32(t9)
    b6b8:	a50013cc 	sh	zero,5068(t0)
    b6bc:	a5190034 	sh	t9,52(t0)
    b6c0:	1000002f 	b	b780 <Interface_Update+0x744>
    b6c4:	8fa90024 	lw	t1,36(sp)
    b6c8:	85030034 	lh	v1,52(t0)
    b6cc:	2841ffcf 	slti	at,v0,-49
    b6d0:	5060002b 	beqzl	v1,b780 <Interface_Update+0x744>
    b6d4:	a50013cc 	sh	zero,5068(t0)
    b6d8:	10200016 	beqz	at,b734 <Interface_Update+0x6f8>
    b6dc:	244f0001 	addiu	t7,v0,1
    b6e0:	246cfff6 	addiu	t4,v1,-10
    b6e4:	a50c0034 	sh	t4,52(t0)
    b6e8:	850d0034 	lh	t5,52(t0)
    b6ec:	244b000a 	addiu	t3,v0,10
    b6f0:	a50b13cc 	sh	t3,5068(t0)
    b6f4:	05a10002 	bgez	t5,b700 <Interface_Update+0x6c4>
    b6f8:	3c070000 	lui	a3,0x0
    b6fc:	a5000034 	sh	zero,52(t0)
    b700:	3c180000 	lui	t8,0x0
    b704:	24e70000 	addiu	a3,a3,0
    b708:	27180000 	addiu	t8,t8,0
    b70c:	3c050000 	lui	a1,0x0
    b710:	24a50000 	addiu	a1,a1,0
    b714:	afb80014 	sw	t8,20(sp)
    b718:	afa70010 	sw	a3,16(sp)
    b71c:	2404482f 	li	a0,18479
    b720:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b724:	24060004 	li	a2,4
    b728:	3c080000 	lui	t0,0x0
    b72c:	10000011 	b	b774 <Interface_Update+0x738>
    b730:	25080000 	addiu	t0,t0,0
    b734:	3c190000 	lui	t9,0x0
    b738:	3c0b0000 	lui	t3,0x0
    b73c:	246effff 	addiu	t6,v1,-1
    b740:	256b0000 	addiu	t3,t3,0
    b744:	27270000 	addiu	a3,t9,0
    b748:	3c050000 	lui	a1,0x0
    b74c:	a50f13cc 	sh	t7,5068(t0)
    b750:	a50e0034 	sh	t6,52(t0)
    b754:	24a50000 	addiu	a1,a1,0
    b758:	afa70010 	sw	a3,16(sp)
    b75c:	afab0014 	sw	t3,20(sp)
    b760:	2404482f 	li	a0,18479
    b764:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b768:	24060004 	li	a2,4
    b76c:	3c080000 	lui	t0,0x0
    b770:	25080000 	addiu	t0,t0,0
    b774:	10000002 	b	b780 <Interface_Update+0x744>
    b778:	8fa90024 	lw	t1,36(sp)
    b77c:	a50013cc 	sh	zero,5068(t0)
    b780:	8fa70028 	lw	a3,40(sp)
    b784:	240a0001 	li	t2,1
    b788:	84e201ec 	lh	v0,492(a3)
    b78c:	104a000b 	beq	v0,t2,b7bc <Interface_Update+0x780>
    b790:	24010002 	li	at,2
    b794:	10410023 	beq	v0,at,b824 <Interface_Update+0x7e8>
    b798:	3c0f0000 	lui	t7,0x0
    b79c:	24010003 	li	at,3
    b7a0:	10410044 	beq	v0,at,b8b4 <Interface_Update+0x878>
    b7a4:	3c0c0000 	lui	t4,0x0
    b7a8:	24010004 	li	at,4
    b7ac:	1041005a 	beq	v0,at,b918 <Interface_Update+0x8dc>
    b7b0:	3c0f0000 	lui	t7,0x0
    b7b4:	1000007b 	b	b9a4 <Interface_Update+0x968>
    b7b8:	c4e001f4 	lwc1	$f0,500(a3)
    b7bc:	3c0c0000 	lui	t4,0x0
    b7c0:	8d8c0000 	lw	t4,0(t4)
    b7c4:	3c010000 	lui	at,0x0
    b7c8:	c4240a50 	lwc1	$f4,2640(at)
    b7cc:	858d0d9e 	lh	t5,3486(t4)
    b7d0:	c4f001f4 	lwc1	$f16,500(a3)
    b7d4:	3c010000 	lui	at,0x0
    b7d8:	448d3000 	mtc1	t5,$f6
    b7dc:	00000000 	nop
    b7e0:	46803220 	cvt.s.w	$f8,$f6
    b7e4:	46082283 	div.s	$f10,$f4,$f8
    b7e8:	460a8480 	add.s	$f18,$f16,$f10
    b7ec:	e4f201f4 	swc1	$f18,500(a3)
    b7f0:	c4260a54 	lwc1	$f6,2644(at)
    b7f4:	c4e001f4 	lwc1	$f0,500(a3)
    b7f8:	3c010000 	lui	at,0x0
    b7fc:	4600303e 	c.le.s	$f6,$f0
    b800:	00000000 	nop
    b804:	45020068 	bc1fl	b9a8 <Interface_Update+0x96c>
    b808:	4600048d 	trunc.w.s	$f18,$f0
    b80c:	c4240a58 	lwc1	$f4,2648(at)
    b810:	24180002 	li	t8,2
    b814:	a4f801ec 	sh	t8,492(a3)
    b818:	e4e401f4 	swc1	$f4,500(a3)
    b81c:	10000061 	b	b9a4 <Interface_Update+0x968>
    b820:	c4e001f4 	lwc1	$f0,500(a3)
    b824:	8def0000 	lw	t7,0(t7)
    b828:	3c010000 	lui	at,0x0
    b82c:	c4280a5c 	lwc1	$f8,2652(at)
    b830:	85ee0d9e 	lh	t6,3486(t7)
    b834:	c4e601f4 	lwc1	$f6,500(a3)
    b838:	44801000 	mtc1	zero,$f2
    b83c:	448e8000 	mtc1	t6,$f16
    b840:	2401001d 	li	at,29
    b844:	00e02025 	move	a0,a3
    b848:	468082a0 	cvt.s.w	$f10,$f16
    b84c:	460a4483 	div.s	$f18,$f8,$f10
    b850:	46123100 	add.s	$f4,$f6,$f18
    b854:	e4e401f4 	swc1	$f4,500(a3)
    b858:	c4e001f4 	lwc1	$f0,500(a3)
    b85c:	4600103e 	c.le.s	$f2,$f0
    b860:	00000000 	nop
    b864:	45020050 	bc1fl	b9a8 <Interface_Update+0x96c>
    b868:	4600048d 	trunc.w.s	$f18,$f0
    b86c:	94f901f0 	lhu	t9,496(a3)
    b870:	e4e201f4 	swc1	$f2,500(a3)
    b874:	a4e001ec 	sh	zero,492(a3)
    b878:	3325ffff 	andi	a1,t9,0xffff
    b87c:	10a10004 	beq	a1,at,b890 <Interface_Update+0x854>
    b880:	a4f901ee 	sh	t9,494(a3)
    b884:	2401001e 	li	at,30
    b888:	14a10002 	bne	a1,at,b894 <Interface_Update+0x858>
    b88c:	00000000 	nop
    b890:	2405000a 	li	a1,10
    b894:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b898:	00003025 	move	a2,zero
    b89c:	8fab0028 	lw	t3,40(sp)
    b8a0:	3c080000 	lui	t0,0x0
    b8a4:	25080000 	addiu	t0,t0,0
    b8a8:	8fa90024 	lw	t1,36(sp)
    b8ac:	1000003d 	b	b9a4 <Interface_Update+0x968>
    b8b0:	c56001f4 	lwc1	$f0,500(t3)
    b8b4:	8d8c0000 	lw	t4,0(t4)
    b8b8:	3c010000 	lui	at,0x0
    b8bc:	c4300a60 	lwc1	$f16,2656(at)
    b8c0:	858d0d9e 	lh	t5,3486(t4)
    b8c4:	c4f201f4 	lwc1	$f18,500(a3)
    b8c8:	3c010000 	lui	at,0x0
    b8cc:	448d4000 	mtc1	t5,$f8
    b8d0:	00000000 	nop
    b8d4:	468042a0 	cvt.s.w	$f10,$f8
    b8d8:	460a8183 	div.s	$f6,$f16,$f10
    b8dc:	46069100 	add.s	$f4,$f18,$f6
    b8e0:	e4e401f4 	swc1	$f4,500(a3)
    b8e4:	c4280a64 	lwc1	$f8,2660(at)
    b8e8:	c4e001f4 	lwc1	$f0,500(a3)
    b8ec:	3c010000 	lui	at,0x0
    b8f0:	4600403e 	c.le.s	$f8,$f0
    b8f4:	00000000 	nop
    b8f8:	4502002b 	bc1fl	b9a8 <Interface_Update+0x96c>
    b8fc:	4600048d 	trunc.w.s	$f18,$f0
    b900:	c4300a68 	lwc1	$f16,2664(at)
    b904:	24180002 	li	t8,2
    b908:	a4f801ec 	sh	t8,492(a3)
    b90c:	e4f001f4 	swc1	$f16,500(a3)
    b910:	10000024 	b	b9a4 <Interface_Update+0x968>
    b914:	c4e001f4 	lwc1	$f0,500(a3)
    b918:	8def0000 	lw	t7,0(t7)
    b91c:	3c010000 	lui	at,0x0
    b920:	c42a0a6c 	lwc1	$f10,2668(at)
    b924:	85ee0d9e 	lh	t6,3486(t7)
    b928:	c4e801f4 	lwc1	$f8,500(a3)
    b92c:	44801000 	mtc1	zero,$f2
    b930:	448e9000 	mtc1	t6,$f18
    b934:	2401001d 	li	at,29
    b938:	00e02025 	move	a0,a3
    b93c:	468091a0 	cvt.s.w	$f6,$f18
    b940:	46065103 	div.s	$f4,$f10,$f6
    b944:	46044400 	add.s	$f16,$f8,$f4
    b948:	e4f001f4 	swc1	$f16,500(a3)
    b94c:	c4e001f4 	lwc1	$f0,500(a3)
    b950:	4600103e 	c.le.s	$f2,$f0
    b954:	00000000 	nop
    b958:	45020013 	bc1fl	b9a8 <Interface_Update+0x96c>
    b95c:	4600048d 	trunc.w.s	$f18,$f0
    b960:	94f901f0 	lhu	t9,496(a3)
    b964:	e4e201f4 	swc1	$f2,500(a3)
    b968:	a4e001ec 	sh	zero,492(a3)
    b96c:	3325ffff 	andi	a1,t9,0xffff
    b970:	10a10004 	beq	a1,at,b984 <Interface_Update+0x948>
    b974:	a4f901ee 	sh	t9,494(a3)
    b978:	2401001e 	li	at,30
    b97c:	14a10002 	bne	a1,at,b988 <Interface_Update+0x94c>
    b980:	00000000 	nop
    b984:	2405000a 	li	a1,10
    b988:	0c000000 	jal	0 <Interface_ChangeAlpha>
    b98c:	00003025 	move	a2,zero
    b990:	8fab0028 	lw	t3,40(sp)
    b994:	3c080000 	lui	t0,0x0
    b998:	25080000 	addiu	t0,t0,0
    b99c:	8fa90024 	lw	t1,36(sp)
    b9a0:	c56001f4 	lwc1	$f0,500(t3)
    b9a4:	4600048d 	trunc.w.s	$f18,$f0
    b9a8:	3c180000 	lui	t8,0x0
    b9ac:	8f180000 	lw	t8,0(t8)
    b9b0:	440d9000 	mfc1	t5,$f18
    b9b4:	00000000 	nop
    b9b8:	a70d0da2 	sh	t5,3490(t8)
    b9bc:	952f0934 	lhu	t7,2356(t1)
    b9c0:	55e0004b 	bnezl	t7,baf0 <Interface_Update+0xab4>
    b9c4:	850313ce 	lh	v1,5070(t0)
    b9c8:	952e0936 	lhu	t6,2358(t1)
    b9cc:	8fb90048 	lw	t9,72(sp)
    b9d0:	3c0b0001 	lui	t3,0x1
    b9d4:	15c00045 	bnez	t6,baec <Interface_Update+0xab0>
    b9d8:	01795821 	addu	t3,t3,t9
    b9dc:	916b03dc 	lbu	t3,988(t3)
    b9e0:	55600043 	bnezl	t3,baf0 <Interface_Update+0xab4>
    b9e4:	850313ce 	lh	v1,5070(t0)
    b9e8:	812c1e15 	lb	t4,7701(t1)
    b9ec:	55800040 	bnezl	t4,baf0 <Interface_Update+0xab4>
    b9f0:	850313ce 	lh	v1,5070(t0)
    b9f4:	952d0a20 	lhu	t5,2592(t1)
    b9f8:	55a0003d 	bnezl	t5,baf0 <Interface_Update+0xab4>
    b9fc:	850313ce 	lh	v1,5070(t0)
    ba00:	9138241b 	lbu	t8,9243(t1)
    ba04:	5700003a 	bnezl	t8,baf0 <Interface_Update+0xab4>
    ba08:	850313ce 	lh	v1,5070(t0)
    ba0c:	932f1d6c 	lbu	t7,7532(t9)
    ba10:	51e00007 	beqzl	t7,ba30 <Interface_Update+0x9f4>
    ba14:	910e003a 	lbu	t6,58(t0)
    ba18:	0c000000 	jal	0 <Interface_ChangeAlpha>
    ba1c:	03202025 	move	a0,t9
    ba20:	3c080000 	lui	t0,0x0
    ba24:	14400031 	bnez	v0,baec <Interface_Update+0xab0>
    ba28:	25080000 	addiu	t0,t0,0
    ba2c:	910e003a 	lbu	t6,58(t0)
    ba30:	11c0002a 	beqz	t6,badc <Interface_Update+0xaa0>
    ba34:	00000000 	nop
    ba38:	810b0032 	lb	t3,50(t0)
    ba3c:	24180008 	li	t8,8
    ba40:	3c040000 	lui	a0,0x0
    ba44:	15600025 	bnez	t3,badc <Interface_Update+0xaa0>
    ba48:	00000000 	nop
    ba4c:	910c003c 	lbu	t4,60(t0)
    ba50:	a51813f0 	sh	t8,5104(t0)
    ba54:	248407e4 	addiu	a0,a0,2020
    ba58:	258d0001 	addiu	t5,t4,1
    ba5c:	0c000000 	jal	0 <Interface_ChangeAlpha>
    ba60:	a10d0032 	sb	t5,50(t0)
    ba64:	3c040000 	lui	a0,0x0
    ba68:	0c000000 	jal	0 <Interface_ChangeAlpha>
    ba6c:	248407ec 	addiu	a0,a0,2028
    ba70:	3c080000 	lui	t0,0x0
    ba74:	25080000 	addiu	t0,t0,0
    ba78:	3c040000 	lui	a0,0x0
    ba7c:	24840818 	addiu	a0,a0,2072
    ba80:	0c000000 	jal	0 <Interface_ChangeAlpha>
    ba84:	81050032 	lb	a1,50(t0)
    ba88:	3c080000 	lui	t0,0x0
    ba8c:	25080000 	addiu	t0,t0,0
    ba90:	3c040000 	lui	a0,0x0
    ba94:	24840828 	addiu	a0,a0,2088
    ba98:	0c000000 	jal	0 <Interface_ChangeAlpha>
    ba9c:	81050033 	lb	a1,51(t0)
    baa0:	3c080000 	lui	t0,0x0
    baa4:	25080000 	addiu	t0,t0,0
    baa8:	3c040000 	lui	a0,0x0
    baac:	24840838 	addiu	a0,a0,2104
    bab0:	0c000000 	jal	0 <Interface_ChangeAlpha>
    bab4:	850513f6 	lh	a1,5110(t0)
    bab8:	3c080000 	lui	t0,0x0
    babc:	25080000 	addiu	t0,t0,0
    bac0:	3c040000 	lui	a0,0x0
    bac4:	2484084c 	addiu	a0,a0,2124
    bac8:	0c000000 	jal	0 <Interface_ChangeAlpha>
    bacc:	850513f4 	lh	a1,5108(t0)
    bad0:	3c040000 	lui	a0,0x0
    bad4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    bad8:	24840860 	addiu	a0,a0,2144
    badc:	0c000000 	jal	0 <Interface_ChangeAlpha>
    bae0:	8fa40048 	lw	a0,72(sp)
    bae4:	3c080000 	lui	t0,0x0
    bae8:	25080000 	addiu	t0,t0,0
    baec:	850313ce 	lh	v1,5070(t0)
    baf0:	8fa70028 	lw	a3,40(sp)
    baf4:	8fa90024 	lw	t1,36(sp)
    baf8:	14600015 	bnez	v1,bb50 <Interface_Update+0xb14>
    bafc:	240a0001 	li	t2,1
    bb00:	3c020000 	lui	v0,0x0
    bb04:	84420000 	lh	v0,0(v0)
    bb08:	24010002 	li	at,2
    bb0c:	51420006 	beql	t2,v0,bb28 <Interface_Update+0xaec>
    bb10:	850f0030 	lh	t7,48(t0)
    bb14:	10410003 	beq	v0,at,bb24 <Interface_Update+0xae8>
    bb18:	24010004 	li	at,4
    bb1c:	54410017 	bnel	v0,at,bb7c <Interface_Update+0xb40>
    bb20:	950c1404 	lhu	t4,5124(t0)
    bb24:	850f0030 	lh	t7,48(t0)
    bb28:	240e008c 	li	t6,140
    bb2c:	240b0050 	li	t3,80
    bb30:	000fc843 	sra	t9,t7,0x1
    bb34:	13200010 	beqz	t9,bb78 <Interface_Update+0xb3c>
    bb38:	3c010000 	lui	at,0x0
    bb3c:	a50a13ce 	sh	t2,5070(t0)
    bb40:	a50e13d6 	sh	t6,5078(t0)
    bb44:	a50b13da 	sh	t3,5082(t0)
    bb48:	1000000b 	b	bb78 <Interface_Update+0xb3c>
    bb4c:	a42a0000 	sh	t2,0(at)
    bb50:	3c020000 	lui	v0,0x0
    bb54:	84420000 	lh	v0,0(v0)
    bb58:	24010003 	li	at,3
    bb5c:	50400003 	beqzl	v0,bb6c <Interface_Update+0xb30>
    bb60:	28610005 	slti	at,v1,5
    bb64:	14410004 	bne	v0,at,bb78 <Interface_Update+0xb3c>
    bb68:	28610005 	slti	at,v1,5
    bb6c:	50200003 	beqzl	at,bb7c <Interface_Update+0xb40>
    bb70:	950c1404 	lhu	t4,5124(t0)
    bb74:	a50013ce 	sh	zero,5070(t0)
    bb78:	950c1404 	lhu	t4,5124(t0)
    bb7c:	554c0044 	bnel	t2,t4,bc90 <Interface_Update+0xc54>
    bb80:	85021422 	lh	v0,5154(t0)
    bb84:	950d1406 	lhu	t5,5126(t0)
    bb88:	94f8023c 	lhu	t8,572(a3)
    bb8c:	3c010000 	lui	at,0x0
    bb90:	3c030000 	lui	v1,0x0
    bb94:	01b87821 	addu	t7,t5,t8
    bb98:	a42f1406 	sh	t7,5126(at)
    bb9c:	24630000 	addiu	v1,v1,0
    bba0:	a4e0023c 	sh	zero,572(a3)
    bba4:	84620000 	lh	v0,0(v1)
    bba8:	14400008 	bnez	v0,bbcc <Interface_Update+0xb90>
    bbac:	00000000 	nop
    bbb0:	95191406 	lhu	t9,5126(t0)
    bbb4:	244e0001 	addiu	t6,v0,1
    bbb8:	2b2103e8 	slti	at,t9,1000
    bbbc:	5420000c 	bnezl	at,bbf0 <Interface_Update+0xbb4>
    bbc0:	95181406 	lhu	t8,5126(t0)
    bbc4:	10000009 	b	bbec <Interface_Update+0xbb0>
    bbc8:	a46e0000 	sh	t6,0(v1)
    bbcc:	55420008 	bnel	t2,v0,bbf0 <Interface_Update+0xbb4>
    bbd0:	95181406 	lhu	t8,5126(t0)
    bbd4:	950b1406 	lhu	t3,5126(t0)
    bbd8:	244c0001 	addiu	t4,v0,1
    bbdc:	296105dc 	slti	at,t3,1500
    bbe0:	54200003 	bnezl	at,bbf0 <Interface_Update+0xbb4>
    bbe4:	95181406 	lhu	t8,5126(t0)
    bbe8:	a46c0000 	sh	t4,0(v1)
    bbec:	95181406 	lhu	t8,5126(t0)
    bbf0:	3c020000 	lui	v0,0x0
    bbf4:	24420000 	addiu	v0,v0,0
    bbf8:	3303ffff 	andi	v1,t8,0xffff
    bbfc:	286103e8 	slti	at,v1,1000
    bc00:	a4400002 	sh	zero,2(v0)
    bc04:	a4400000 	sh	zero,0(v0)
    bc08:	a4400004 	sh	zero,4(v0)
    bc0c:	14200009 	bnez	at,bc34 <Interface_Update+0xbf8>
    bc10:	a4580006 	sh	t8,6(v0)
    bc14:	944f0000 	lhu	t7,0(v0)
    bc18:	246efc18 	addiu	t6,v1,-1000
    bc1c:	31c3ffff 	andi	v1,t6,0xffff
    bc20:	286103e8 	slti	at,v1,1000
    bc24:	25f90001 	addiu	t9,t7,1
    bc28:	a4590000 	sh	t9,0(v0)
    bc2c:	1020fff9 	beqz	at,bc14 <Interface_Update+0xbd8>
    bc30:	a44e0006 	sh	t6,6(v0)
    bc34:	28610064 	slti	at,v1,100
    bc38:	5420000a 	bnezl	at,bc64 <Interface_Update+0xc28>
    bc3c:	2861000a 	slti	at,v1,10
    bc40:	944b0002 	lhu	t3,2(v0)
    bc44:	246dff9c 	addiu	t5,v1,-100
    bc48:	31a3ffff 	andi	v1,t5,0xffff
    bc4c:	28610064 	slti	at,v1,100
    bc50:	256c0001 	addiu	t4,t3,1
    bc54:	a44c0002 	sh	t4,2(v0)
    bc58:	1020fff9 	beqz	at,bc40 <Interface_Update+0xc04>
    bc5c:	a44d0006 	sh	t5,6(v0)
    bc60:	2861000a 	slti	at,v1,10
    bc64:	5420000a 	bnezl	at,bc90 <Interface_Update+0xc54>
    bc68:	85021422 	lh	v0,5154(t0)
    bc6c:	94580004 	lhu	t8,4(v0)
    bc70:	2479fff6 	addiu	t9,v1,-10
    bc74:	3323ffff 	andi	v1,t9,0xffff
    bc78:	2861000a 	slti	at,v1,10
    bc7c:	270f0001 	addiu	t7,t8,1
    bc80:	a44f0004 	sh	t7,4(v0)
    bc84:	1020fff9 	beqz	at,bc6c <Interface_Update+0xc30>
    bc88:	a4590006 	sh	t9,6(v0)
    bc8c:	85021422 	lh	v0,5154(t0)
    bc90:	50400096 	beqzl	v0,beec <Interface_Update+0xeb0>
    bc94:	8fbf001c 	lw	ra,28(sp)
    bc98:	8fae0048 	lw	t6,72(sp)
    bc9c:	3c0b0001 	lui	t3,0x1
    bca0:	24010031 	li	at,49
    bca4:	016e5821 	addu	t3,t3,t6
    bca8:	956b04c8 	lhu	t3,1224(t3)
    bcac:	51610007 	beql	t3,at,bccc <Interface_Update+0xc90>
    bcb0:	952c0a26 	lhu	t4,2598(t1)
    bcb4:	15420004 	bne	t2,v0,bcc8 <Interface_Update+0xc8c>
    bcb8:	24030004 	li	v1,4
    bcbc:	3c010001 	lui	at,0x1
    bcc0:	002e0821 	addu	at,at,t6
    bcc4:	a42304c6 	sh	v1,1222(at)
    bcc8:	952c0a26 	lhu	t4,2598(t1)
    bccc:	24030004 	li	v1,4
    bcd0:	5180003e 	beqzl	t4,bdcc <Interface_Update+0xd90>
    bcd4:	912b1cbf 	lbu	t3,7359(t1)
    bcd8:	850d1422 	lh	t5,5154(t0)
    bcdc:	24010002 	li	at,2
    bce0:	240f0002 	li	t7,2
    bce4:	11a10014 	beq	t5,at,bd38 <Interface_Update+0xcfc>
    bce8:	240b0190 	li	t3,400
    bcec:	3c010000 	lui	at,0x0
    bcf0:	a02002f0 	sb	zero,752(at)
    bcf4:	9502000c 	lhu	v0,12(t0)
    bcf8:	28414555 	slti	at,v0,17749
    bcfc:	14200006 	bnez	at,bd18 <Interface_Update+0xcdc>
    bd00:	3401c002 	li	at,0xc002
    bd04:	0041082a 	slt	at,v0,at
    bd08:	10200003 	beqz	at,bd18 <Interface_Update+0xcdc>
    bd0c:	24180001 	li	t8,1
    bd10:	3c010000 	lui	at,0x0
    bd14:	a03802f0 	sb	t8,752(at)
    bd18:	3c020000 	lui	v0,0x0
    bd1c:	24420000 	addiu	v0,v0,0
    bd20:	94590000 	lhu	t9,0(v0)
    bd24:	a50f1422 	sh	t7,5154(t0)
    bd28:	3c010000 	lui	at,0x0
    bd2c:	a43902f4 	sh	t9,756(at)
    bd30:	1000006d 	b	bee8 <Interface_Update+0xeac>
    bd34:	a44b0000 	sh	t3,0(v0)
    bd38:	3c0e0000 	lui	t6,0x0
    bd3c:	91ce02f0 	lbu	t6,752(t6)
    bd40:	55c00013 	bnezl	t6,bd90 <Interface_Update+0xd54>
    bd44:	9518000c 	lhu	t8,12(t0)
    bd48:	9502000c 	lhu	v0,12(t0)
    bd4c:	28414555 	slti	at,v0,17749
    bd50:	14200065 	bnez	at,bee8 <Interface_Update+0xeac>
    bd54:	3401c002 	li	at,0xc002
    bd58:	0041082a 	slt	at,v0,at
    bd5c:	10200062 	beqz	at,bee8 <Interface_Update+0xeac>
    bd60:	3c020000 	lui	v0,0x0
    bd64:	a5001422 	sh	zero,5154(t0)
    bd68:	3c0c0000 	lui	t4,0x0
    bd6c:	858c02f4 	lh	t4,756(t4)
    bd70:	8fad0048 	lw	t5,72(sp)
    bd74:	24420000 	addiu	v0,v0,0
    bd78:	3c010001 	lui	at,0x1
    bd7c:	a44c0000 	sh	t4,0(v0)
    bd80:	002d0821 	addu	at,at,t5
    bd84:	10000058 	b	bee8 <Interface_Update+0xeac>
    bd88:	a42304c6 	sh	v1,1222(at)
    bd8c:	9518000c 	lhu	t8,12(t0)
    bd90:	3401c002 	li	at,0xc002
    bd94:	3c020000 	lui	v0,0x0
    bd98:	0301082a 	slt	at,t8,at
    bd9c:	14200052 	bnez	at,bee8 <Interface_Update+0xeac>
    bda0:	24420000 	addiu	v0,v0,0
    bda4:	a5001422 	sh	zero,5154(t0)
    bda8:	3c0f0000 	lui	t7,0x0
    bdac:	85ef02f4 	lh	t7,756(t7)
    bdb0:	8fb90048 	lw	t9,72(sp)
    bdb4:	3c010001 	lui	at,0x1
    bdb8:	a44f0000 	sh	t7,0(v0)
    bdbc:	00390821 	addu	at,at,t9
    bdc0:	10000049 	b	bee8 <Interface_Update+0xeac>
    bdc4:	a42304c6 	sh	v1,1222(at)
    bdc8:	912b1cbf 	lbu	t3,7359(t1)
    bdcc:	24190003 	li	t9,3
    bdd0:	514b0045 	beql	t2,t3,bee8 <Interface_Update+0xeac>
    bdd4:	a5191422 	sh	t9,5154(t0)
    bdd8:	90ee026a 	lbu	t6,618(a3)
    bddc:	24010003 	li	at,3
    bde0:	2404001e 	li	a0,30
    bde4:	51c10040 	beql	t6,at,bee8 <Interface_Update+0xeac>
    bde8:	a5191422 	sh	t9,5154(t0)
    bdec:	9502000c 	lhu	v0,12(t0)
    bdf0:	34198001 	li	t9,0x8001
    bdf4:	240b0005 	li	t3,5
    bdf8:	28414555 	slti	at,v0,17749
    bdfc:	14200011 	bnez	at,be44 <Interface_Update+0xe08>
    be00:	240c0003 	li	t4,3
    be04:	3401c001 	li	at,0xc001
    be08:	0041082a 	slt	at,v0,at
    be0c:	1020000d 	beqz	at,be44 <Interface_Update+0xe08>
    be10:	240d0002 	li	t5,2
    be14:	8fac0048 	lw	t4,72(sp)
    be18:	3c010001 	lui	at,0x1
    be1c:	a5001416 	sh	zero,5142(t0)
    be20:	002c0821 	addu	at,at,t4
    be24:	a0231e5e 	sb	v1,7774(at)
    be28:	8faf0048 	lw	t7,72(sp)
    be2c:	3c010001 	lui	at,0x1
    be30:	a10d141d 	sb	t5,5149(t0)
    be34:	24180001 	li	t8,1
    be38:	002f0821 	addu	at,at,t7
    be3c:	1000000c 	b	be70 <Interface_Update+0xe34>
    be40:	a0381de9 	sb	t8,7657(at)
    be44:	8fae0048 	lw	t6,72(sp)
    be48:	3c010001 	lui	at,0x1
    be4c:	a5191416 	sh	t9,5142(t0)
    be50:	002e0821 	addu	at,at,t6
    be54:	a02b1e5e 	sb	t3,7774(at)
    be58:	8fb80048 	lw	t8,72(sp)
    be5c:	3c010001 	lui	at,0x1
    be60:	a10c141d 	sb	t4,5149(t0)
    be64:	240d0001 	li	t5,1
    be68:	00380821 	addu	at,at,t8
    be6c:	a02d1de9 	sb	t5,7657(at)
    be70:	8faf0048 	lw	t7,72(sp)
    be74:	2401005e 	li	at,94
    be78:	2402000e 	li	v0,14
    be7c:	85f900a4 	lh	t9,164(t7)
    be80:	240bfffe 	li	t3,-2
    be84:	17210004 	bne	t9,at,be98 <Interface_Update+0xe5c>
    be88:	3c010001 	lui	at,0x1
    be8c:	002f0821 	addu	at,at,t7
    be90:	a0221e5e 	sb	v0,7774(at)
    be94:	a102141d 	sb	v0,5149(t0)
    be98:	8fac0048 	lw	t4,72(sp)
    be9c:	8d0e0000 	lw	t6,0(t0)
    bea0:	3c010001 	lui	at,0x1
    bea4:	ad0b1364 	sw	t3,4964(t0)
    bea8:	002c0821 	addu	at,at,t4
    beac:	a42e1e1a 	sh	t6,7706(at)
    beb0:	8fb80048 	lw	t8,72(sp)
    beb4:	3c010001 	lui	at,0x1
    beb8:	240d0014 	li	t5,20
    bebc:	00380821 	addu	at,at,t8
    bec0:	a02d1e15 	sb	t5,7701(at)
    bec4:	0c000000 	jal	0 <Interface_ChangeAlpha>
    bec8:	a5001422 	sh	zero,5154(t0)
    becc:	3c080000 	lui	t0,0x0
    bed0:	25080000 	addiu	t0,t0,0
    bed4:	240200ff 	li	v0,255
    bed8:	a10213e0 	sb	v0,5088(t0)
    bedc:	10000002 	b	bee8 <Interface_Update+0xeac>
    bee0:	a10213e1 	sb	v0,5089(t0)
    bee4:	a5191422 	sh	t9,5154(t0)
    bee8:	8fbf001c 	lw	ra,28(sp)
    beec:	27bd0048 	addiu	sp,sp,72
    bef0:	03e00008 	jr	ra
    bef4:	00000000 	nop
	...
