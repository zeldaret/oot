
build/src/libultra_code_O2/pfsallocatefile.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osPfsAllocateFile>:
   0:	27bdfd68 	addiu	sp,sp,-664
   4:	afb70040 	sw	s7,64(sp)
   8:	afb6003c 	sw	s6,60(sp)
   c:	afb50038 	sw	s5,56(sp)
  10:	afb30030 	sw	s3,48(sp)
  14:	afa5029c 	sw	a1,668(sp)
  18:	30aeffff 	andi	t6,a1,0xffff
  1c:	01c02825 	move	a1,t6
  20:	00809825 	move	s3,a0
  24:	afbf0044 	sw	ra,68(sp)
  28:	afb40034 	sw	s4,52(sp)
  2c:	afb2002c 	sw	s2,44(sp)
  30:	afb10028 	sw	s1,40(sp)
  34:	afb00024 	sw	s0,36(sp)
  38:	afa702a4 	sw	a3,676(sp)
  3c:	0000b025 	move	s6,zero
  40:	0000b825 	move	s7,zero
  44:	11c00003 	beqz	t6,54 <osPfsAllocateFile+0x54>
  48:	0000a825 	move	s5,zero
  4c:	14c00003 	bnez	a2,5c <osPfsAllocateFile+0x5c>
  50:	8fb102ac 	lw	s1,684(sp)
  54:	100000ac 	b	308 <osPfsAllocateFile+0x308>
  58:	24020005 	li	v0,5
  5c:	263000ff 	addiu	s0,s1,255
  60:	8fb802a8 	lw	t8,680(sp)
  64:	8fb902b0 	lw	t9,688(sp)
  68:	06010003 	bgez	s0,78 <osPfsAllocateFile+0x78>
  6c:	00107a03 	sra	t7,s0,0x8
  70:	260100ff 	addiu	at,s0,255
  74:	00017a03 	sra	t7,at,0x8
  78:	01e08025 	move	s0,t7
  7c:	01e0a025 	move	s4,t7
  80:	02602025 	move	a0,s3
  84:	8fa702a4 	lw	a3,676(sp)
  88:	a7a5029e 	sh	a1,670(sp)
  8c:	afa602a0 	sw	a2,672(sp)
  90:	afb80010 	sw	t8,16(sp)
  94:	0c000000 	jal	0 <osPfsAllocateFile>
  98:	afb90014 	sw	t9,20(sp)
  9c:	10400005 	beqz	v0,b4 <osPfsAllocateFile+0xb4>
  a0:	24010005 	li	at,5
  a4:	50410004 	beql	v0,at,b8 <osPfsAllocateFile+0xb8>
  a8:	8fa802b0 	lw	t0,688(sp)
  ac:	10000097 	b	30c <osPfsAllocateFile+0x30c>
  b0:	8fbf0044 	lw	ra,68(sp)
  b4:	8fa802b0 	lw	t0,688(sp)
  b8:	2401ffff 	li	at,-1
  bc:	02602025 	move	a0,s3
  c0:	8d090000 	lw	t1,0(t0)
  c4:	11210003 	beq	t1,at,d4 <osPfsAllocateFile+0xd4>
  c8:	00000000 	nop
  cc:	1000008e 	b	308 <osPfsAllocateFile+0x308>
  d0:	24020009 	li	v0,9
  d4:	0c000000 	jal	0 <osPfsAllocateFile>
  d8:	27a50054 	addiu	a1,sp,84
  dc:	8faa0054 	lw	t2,84(sp)
  e0:	0151082a 	slt	at,t2,s1
  e4:	10200003 	beqz	at,f4 <osPfsAllocateFile+0xf4>
  e8:	00000000 	nop
  ec:	10000086 	b	308 <osPfsAllocateFile+0x308>
  f0:	24020007 	li	v0,7
  f4:	16000003 	bnez	s0,104 <osPfsAllocateFile+0x104>
  f8:	02602025 	move	a0,s3
  fc:	10000082 	b	308 <osPfsAllocateFile+0x308>
 100:	24020005 	li	v0,5
 104:	8fab02b0 	lw	t3,688(sp)
 108:	00002825 	move	a1,zero
 10c:	00003025 	move	a2,zero
 110:	00003825 	move	a3,zero
 114:	afa00010 	sw	zero,16(sp)
 118:	0c000000 	jal	0 <osPfsAllocateFile>
 11c:	afab0014 	sw	t3,20(sp)
 120:	10400005 	beqz	v0,138 <osPfsAllocateFile+0x138>
 124:	24010005 	li	at,5
 128:	50410004 	beql	v0,at,13c <osPfsAllocateFile+0x13c>
 12c:	8fac02b0 	lw	t4,688(sp)
 130:	10000076 	b	30c <osPfsAllocateFile+0x30c>
 134:	8fbf0044 	lw	ra,68(sp)
 138:	8fac02b0 	lw	t4,688(sp)
 13c:	2401ffff 	li	at,-1
 140:	8d8d0000 	lw	t5,0(t4)
 144:	55a10004 	bnel	t5,at,158 <osPfsAllocateFile+0x158>
 148:	926e0064 	lbu	t6,100(s3)
 14c:	1000006e 	b	308 <osPfsAllocateFile+0x308>
 150:	24020008 	li	v0,8
 154:	926e0064 	lbu	t6,100(s3)
 158:	00008025 	move	s0,zero
 15c:	27b20180 	addiu	s2,sp,384
 160:	19c00049 	blez	t6,288 <osPfsAllocateFile+0x288>
 164:	27b10080 	addiu	s1,sp,128
 168:	02602025 	move	a0,s3
 16c:	02402825 	move	a1,s2
 170:	00003025 	move	a2,zero
 174:	0c000000 	jal	0 <osPfsAllocateFile>
 178:	320700ff 	andi	a3,s0,0xff
 17c:	10400003 	beqz	v0,18c <osPfsAllocateFile+0x18c>
 180:	02602025 	move	a0,s3
 184:	10000061 	b	30c <osPfsAllocateFile+0x30c>
 188:	8fbf0044 	lw	ra,68(sp)
 18c:	27af0290 	addiu	t7,sp,656
 190:	27b8028c 	addiu	t8,sp,652
 194:	afb80018 	sw	t8,24(sp)
 198:	afaf0014 	sw	t7,20(sp)
 19c:	02402825 	move	a1,s2
 1a0:	02803025 	move	a2,s4
 1a4:	27a70294 	addiu	a3,sp,660
 1a8:	0c000000 	jal	0 <osPfsAllocateFile>
 1ac:	afb00010 	sw	s0,16(sp)
 1b0:	10400003 	beqz	v0,1c0 <osPfsAllocateFile+0x1c0>
 1b4:	8fa30294 	lw	v1,660(sp)
 1b8:	10000054 	b	30c <osPfsAllocateFile+0x30c>
 1bc:	8fbf0044 	lw	ra,68(sp)
 1c0:	2401ffff 	li	at,-1
 1c4:	5061002b 	beql	v1,at,274 <osPfsAllocateFile+0x274>
 1c8:	926b0064 	lbu	t3,100(s3)
 1cc:	16a00004 	bnez	s5,1e0 <osPfsAllocateFile+0x1e0>
 1d0:	0016c840 	sll	t9,s6,0x1
 1d4:	a3a30051 	sb	v1,81(sp)
 1d8:	1000000d 	b	210 <osPfsAllocateFile+0x210>
 1dc:	a3b00050 	sb	s0,80(sp)
 1e0:	02391021 	addu	v0,s1,t9
 1e4:	a0500000 	sb	s0,0(v0)
 1e8:	a0430001 	sb	v1,1(v0)
 1ec:	02602025 	move	a0,s3
 1f0:	02202825 	move	a1,s1
 1f4:	24060001 	li	a2,1
 1f8:	0c000000 	jal	0 <osPfsAllocateFile>
 1fc:	32e700ff 	andi	a3,s7,0xff
 200:	50400004 	beqzl	v0,214 <osPfsAllocateFile+0x214>
 204:	8fa80290 	lw	t0,656(sp)
 208:	10000040 	b	30c <osPfsAllocateFile+0x30c>
 20c:	8fbf0044 	lw	ra,68(sp)
 210:	8fa80290 	lw	t0,656(sp)
 214:	02402025 	move	a0,s2
 218:	02202825 	move	a1,s1
 21c:	0114082a 	slt	at,t0,s4
 220:	5020000a 	beqzl	at,24c <osPfsAllocateFile+0x24c>
 224:	0000a025 	move	s4,zero
 228:	0c000000 	jal	0 <osPfsAllocateFile>
 22c:	24060100 	li	a2,256
 230:	8fa90290 	lw	t1,656(sp)
 234:	8fb6028c 	lw	s6,652(sp)
 238:	321700ff 	andi	s7,s0,0xff
 23c:	26b50001 	addiu	s5,s5,1
 240:	1000000b 	b	270 <osPfsAllocateFile+0x270>
 244:	0289a023 	subu	s4,s4,t1
 248:	0000a025 	move	s4,zero
 24c:	02602025 	move	a0,s3
 250:	02402825 	move	a1,s2
 254:	24060001 	li	a2,1
 258:	0c000000 	jal	0 <osPfsAllocateFile>
 25c:	320700ff 	andi	a3,s0,0xff
 260:	10400009 	beqz	v0,288 <osPfsAllocateFile+0x288>
 264:	00000000 	nop
 268:	10000028 	b	30c <osPfsAllocateFile+0x30c>
 26c:	8fbf0044 	lw	ra,68(sp)
 270:	926b0064 	lbu	t3,100(s3)
 274:	26100001 	addiu	s0,s0,1
 278:	320a00ff 	andi	t2,s0,0xff
 27c:	014b082a 	slt	at,t2,t3
 280:	1420ffb9 	bnez	at,168 <osPfsAllocateFile+0x168>
 284:	01408025 	move	s0,t2
 288:	1e800004 	bgtz	s4,29c <osPfsAllocateFile+0x29c>
 28c:	8fa30294 	lw	v1,660(sp)
 290:	2401ffff 	li	at,-1
 294:	14610003 	bne	v1,at,2a4 <osPfsAllocateFile+0x2a4>
 298:	97ac0050 	lhu	t4,80(sp)
 29c:	1000001a 	b	308 <osPfsAllocateFile+0x308>
 2a0:	24020003 	li	v0,3
 2a4:	97ad029e 	lhu	t5,670(sp)
 2a8:	8fae02a0 	lw	t6,672(sp)
 2ac:	a7ac0066 	sh	t4,102(sp)
 2b0:	a7a0006a 	sh	zero,106(sp)
 2b4:	8fa402a4 	lw	a0,676(sp)
 2b8:	27a50070 	addiu	a1,sp,112
 2bc:	24060010 	li	a2,16
 2c0:	a7ad0064 	sh	t5,100(sp)
 2c4:	0c000000 	jal	0 <osPfsAllocateFile>
 2c8:	afae0060 	sw	t6,96(sp)
 2cc:	8fa402a8 	lw	a0,680(sp)
 2d0:	27a5006c 	addiu	a1,sp,108
 2d4:	0c000000 	jal	0 <osPfsAllocateFile>
 2d8:	24060004 	li	a2,4
 2dc:	8faf02b0 	lw	t7,688(sp)
 2e0:	8e79005c 	lw	t9,92(s3)
 2e4:	8e640004 	lw	a0,4(s3)
 2e8:	8df80000 	lw	t8,0(t7)
 2ec:	8e650008 	lw	a1,8(s3)
 2f0:	afa00010 	sw	zero,16(sp)
 2f4:	03193021 	addu	a2,t8,t9
 2f8:	30c8ffff 	andi	t0,a2,0xffff
 2fc:	01003025 	move	a2,t0
 300:	0c000000 	jal	0 <osPfsAllocateFile>
 304:	27a70060 	addiu	a3,sp,96
 308:	8fbf0044 	lw	ra,68(sp)
 30c:	8fb00024 	lw	s0,36(sp)
 310:	8fb10028 	lw	s1,40(sp)
 314:	8fb2002c 	lw	s2,44(sp)
 318:	8fb30030 	lw	s3,48(sp)
 31c:	8fb40034 	lw	s4,52(sp)
 320:	8fb50038 	lw	s5,56(sp)
 324:	8fb6003c 	lw	s6,60(sp)
 328:	8fb70040 	lw	s7,64(sp)
 32c:	03e00008 	jr	ra
 330:	27bd0298 	addiu	sp,sp,664

00000334 <__osPfsDeclearPage>:
 334:	27bdfff0 	addiu	sp,sp,-16
 338:	afb00008 	sw	s0,8(sp)
 33c:	93b00023 	lbu	s0,35(sp)
 340:	afb1000c 	sw	s1,12(sp)
 344:	00c08825 	move	s1,a2
 348:	1a000003 	blez	s0,358 <__osPfsDeclearPage+0x24>
 34c:	240b0080 	li	t3,128
 350:	10000002 	b	35c <__osPfsDeclearPage+0x28>
 354:	24020001 	li	v0,1
 358:	8c820060 	lw	v0,96(a0)
 35c:	28410080 	slti	at,v0,128
 360:	1020000a 	beqz	at,38c <__osPfsDeclearPage+0x58>
 364:	00401825 	move	v1,v0
 368:	00027040 	sll	t6,v0,0x1
 36c:	00ae1021 	addu	v0,a1,t6
 370:	240a0003 	li	t2,3
 374:	944f0000 	lhu	t7,0(v0)
 378:	514f0005 	beql	t2,t7,390 <__osPfsDeclearPage+0x5c>
 37c:	240b0080 	li	t3,128
 380:	24630001 	addiu	v1,v1,1
 384:	146bfffb 	bne	v1,t3,374 <__osPfsDeclearPage+0x40>
 388:	24420002 	addiu	v0,v0,2
 38c:	240b0080 	li	t3,128
 390:	146b0005 	bne	v1,t3,3a8 <__osPfsDeclearPage+0x74>
 394:	240a0003 	li	t2,3
 398:	2418ffff 	li	t8,-1
 39c:	acf80000 	sw	t8,0(a3)
 3a0:	10000030 	b	464 <__osPfsDeclearPage+0x130>
 3a4:	00001025 	move	v0,zero
 3a8:	8fa60024 	lw	a2,36(sp)
 3ac:	00602025 	move	a0,v1
 3b0:	24190001 	li	t9,1
 3b4:	00604025 	move	t0,v1
 3b8:	2a210002 	slti	at,s1,2
 3bc:	24630001 	addiu	v1,v1,1
 3c0:	14200018 	bnez	at,424 <__osPfsDeclearPage+0xf0>
 3c4:	acd90000 	sw	t9,0(a2)
 3c8:	28610080 	slti	at,v1,128
 3cc:	10200015 	beqz	at,424 <__osPfsDeclearPage+0xf0>
 3d0:	00036040 	sll	t4,v1,0x1
 3d4:	00ac1021 	addu	v0,a1,t4
 3d8:	944d0000 	lhu	t5,0(v0)
 3dc:	00087040 	sll	t6,t0,0x1
 3e0:	00ae4821 	addu	t1,a1,t6
 3e4:	554d0008 	bnel	t2,t5,408 <__osPfsDeclearPage+0xd4>
 3e8:	8cd90000 	lw	t9,0(a2)
 3ec:	a1300000 	sb	s0,0(t1)
 3f0:	a1230001 	sb	v1,1(t1)
 3f4:	8ccf0000 	lw	t7,0(a2)
 3f8:	00604025 	move	t0,v1
 3fc:	25f80001 	addiu	t8,t7,1
 400:	acd80000 	sw	t8,0(a2)
 404:	8cd90000 	lw	t9,0(a2)
 408:	24630001 	addiu	v1,v1,1
 40c:	24420002 	addiu	v0,v0,2
 410:	0331082a 	slt	at,t9,s1
 414:	10200003 	beqz	at,424 <__osPfsDeclearPage+0xf0>
 418:	28610080 	slti	at,v1,128
 41c:	5420ffef 	bnezl	at,3dc <__osPfsDeclearPage+0xa8>
 420:	944d0000 	lhu	t5,0(v0)
 424:	146b0008 	bne	v1,t3,448 <__osPfsDeclearPage+0x114>
 428:	ace40000 	sw	a0,0(a3)
 42c:	8ccc0000 	lw	t4,0(a2)
 430:	8fad0028 	lw	t5,40(sp)
 434:	0191082a 	slt	at,t4,s1
 438:	50200004 	beqzl	at,44c <__osPfsDeclearPage+0x118>
 43c:	00087840 	sll	t7,t0,0x1
 440:	10000007 	b	460 <__osPfsDeclearPage+0x12c>
 444:	ada80000 	sw	t0,0(t5)
 448:	00087840 	sll	t7,t0,0x1
 44c:	00afc021 	addu	t8,a1,t7
 450:	240e0001 	li	t6,1
 454:	a70e0000 	sh	t6,0(t8)
 458:	8fb90028 	lw	t9,40(sp)
 45c:	af200000 	sw	zero,0(t9)
 460:	00001025 	move	v0,zero
 464:	8fb00008 	lw	s0,8(sp)
 468:	8fb1000c 	lw	s1,12(sp)
 46c:	03e00008 	jr	ra
 470:	27bd0010 	addiu	sp,sp,16
	...
