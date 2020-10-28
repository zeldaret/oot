
build/src/boot/idle.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Main_ThreadEntry>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afa40028 	sw	a0,40(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	3c040000 	lui	a0,0x0
  10:	0c000000 	jal	0 <Main_ThreadEntry>
  14:	24840000 	addiu	a0,a0,0
  18:	0c000000 	jal	0 <Main_ThreadEntry>
  1c:	00000000 	nop
  20:	3c040000 	lui	a0,0x0
  24:	0c000000 	jal	0 <Main_ThreadEntry>
  28:	24840010 	addiu	a0,a0,16
  2c:	0c000000 	jal	0 <Main_ThreadEntry>
  30:	00000000 	nop
  34:	3c080000 	lui	t0,0x0
  38:	3c0e0000 	lui	t6,0x0
  3c:	25050000 	addiu	a1,t0,0
  40:	25ce0000 	addiu	t6,t6,0
  44:	3c040000 	lui	a0,0x0
  48:	3c070000 	lui	a3,0x0
  4c:	240f00ee 	li	t7,238
  50:	afa20020 	sw	v0,32(sp)
  54:	afa30024 	sw	v1,36(sp)
  58:	afaf0010 	sw	t7,16(sp)
  5c:	24e7002c 	addiu	a3,a3,44
  60:	24840000 	addiu	a0,a0,0
  64:	0c000000 	jal	0 <Main_ThreadEntry>
  68:	01c53023 	subu	a2,t6,a1
  6c:	0c000000 	jal	0 <Main_ThreadEntry>
  70:	00000000 	nop
  74:	8fb80020 	lw	t8,32(sp)
  78:	8fb90024 	lw	t9,36(sp)
  7c:	3c040000 	lui	a0,0x0
  80:	03025023 	subu	t2,t8,v0
  84:	0323082b 	sltu	at,t9,v1
  88:	01415023 	subu	t2,t2,at
  8c:	03235823 	subu	t3,t9,v1
  90:	afab0024 	sw	t3,36(sp)
  94:	afaa0020 	sw	t2,32(sp)
  98:	0c000000 	jal	0 <Main_ThreadEntry>
  9c:	24840038 	addiu	a0,a0,56
  a0:	3c040000 	lui	a0,0x0
  a4:	0c000000 	jal	0 <Main_ThreadEntry>
  a8:	24840058 	addiu	a0,a0,88
  ac:	3c040000 	lui	a0,0x0
  b0:	3c090000 	lui	t1,0x0
  b4:	24840000 	addiu	a0,a0,0
  b8:	25290000 	addiu	t1,t1,0
  bc:	0c000000 	jal	0 <Main_ThreadEntry>
  c0:	01242823 	subu	a1,t1,a0
  c4:	3c040000 	lui	a0,0x0
  c8:	0c000000 	jal	0 <Main_ThreadEntry>
  cc:	24840068 	addiu	a0,a0,104
  d0:	0c000000 	jal	0 <Main_ThreadEntry>
  d4:	8fa40028 	lw	a0,40(sp)
  d8:	3c040000 	lui	a0,0x0
  dc:	0c000000 	jal	0 <Main_ThreadEntry>
  e0:	24840088 	addiu	a0,a0,136
  e4:	8fbf001c 	lw	ra,28(sp)
  e8:	27bd0028 	addiu	sp,sp,40
  ec:	03e00008 	jr	ra
  f0:	00000000 	nop

000000f4 <Idle_ThreadEntry>:
  f4:	27bdffe0 	addiu	sp,sp,-32
  f8:	afa40020 	sw	a0,32(sp)
  fc:	afbf001c 	sw	ra,28(sp)
 100:	3c040000 	lui	a0,0x0
 104:	0c000000 	jal	0 <Main_ThreadEntry>
 108:	24840098 	addiu	a0,a0,152
 10c:	3c040000 	lui	a0,0x0
 110:	3c050000 	lui	a1,0x0
 114:	24a50000 	addiu	a1,a1,0
 118:	0c000000 	jal	0 <Main_ThreadEntry>
 11c:	248400bc 	addiu	a0,a0,188
 120:	3c040000 	lui	a0,0x0
 124:	3c050000 	lui	a1,0x0
 128:	24a50000 	addiu	a1,a1,0
 12c:	0c000000 	jal	0 <Main_ThreadEntry>
 130:	248400cc 	addiu	a0,a0,204
 134:	3c040000 	lui	a0,0x0
 138:	3c050000 	lui	a1,0x0
 13c:	24a50000 	addiu	a1,a1,0
 140:	0c000000 	jal	0 <Main_ThreadEntry>
 144:	248400dc 	addiu	a0,a0,220
 148:	3c040000 	lui	a0,0x0
 14c:	0c000000 	jal	0 <Main_ThreadEntry>
 150:	248400ec 	addiu	a0,a0,236
 154:	3c050000 	lui	a1,0x0
 158:	8ca50000 	lw	a1,0(a1)
 15c:	3c040000 	lui	a0,0x0
 160:	248400f4 	addiu	a0,a0,244
 164:	04a10002 	bgez	a1,170 <Idle_ThreadEntry+0x7c>
 168:	00a00821 	move	at,a1
 16c:	24a103ff 	addiu	at,a1,1023
 170:	00012a83 	sra	a1,at,0xa
 174:	0c000000 	jal	0 <Main_ThreadEntry>
 178:	00000000 	nop
 17c:	3c040000 	lui	a0,0x0
 180:	3c050000 	lui	a1,0x0
 184:	24a50000 	addiu	a1,a1,0
 188:	0c000000 	jal	0 <Main_ThreadEntry>
 18c:	24840130 	addiu	a0,a0,304
 190:	3c040000 	lui	a0,0x0
 194:	24840170 	addiu	a0,a0,368
 198:	0c000000 	jal	0 <Main_ThreadEntry>
 19c:	24050096 	li	a1,150
 1a0:	3c040000 	lui	a0,0x0
 1a4:	24840198 	addiu	a0,a0,408
 1a8:	0c000000 	jal	0 <Main_ThreadEntry>
 1ac:	24050092 	li	a1,146
 1b0:	3c040000 	lui	a0,0x0
 1b4:	248401cc 	addiu	a0,a0,460
 1b8:	0c000000 	jal	0 <Main_ThreadEntry>
 1bc:	24050060 	li	a1,96
 1c0:	3c040000 	lui	a0,0x0
 1c4:	248401fc 	addiu	a0,a0,508
 1c8:	0c000000 	jal	0 <Main_ThreadEntry>
 1cc:	24050003 	li	a1,3
 1d0:	3c0e0000 	lui	t6,0x0
 1d4:	3c0f0000 	lui	t7,0x0
 1d8:	25ef0000 	addiu	t7,t7,0
 1dc:	25ce0000 	addiu	t6,t6,0
 1e0:	01cf2823 	subu	a1,t6,t7
 1e4:	3c040000 	lui	a0,0x0
 1e8:	2484022c 	addiu	a0,a0,556
 1ec:	04a10002 	bgez	a1,1f8 <Idle_ThreadEntry+0x104>
 1f0:	00a00821 	move	at,a1
 1f4:	24a103ff 	addiu	at,a1,1023
 1f8:	00012a83 	sra	a1,at,0xa
 1fc:	0c000000 	jal	0 <Main_ThreadEntry>
 200:	00000000 	nop
 204:	3c040000 	lui	a0,0x0
 208:	0c000000 	jal	0 <Main_ThreadEntry>
 20c:	2484025c 	addiu	a0,a0,604
 210:	0c000000 	jal	0 <Main_ThreadEntry>
 214:	240400fe 	li	a0,254
 218:	3c013f80 	lui	at,0x3f80
 21c:	44810000 	mtc1	at,$f0
 220:	3c010000 	lui	at,0x0
 224:	24180042 	li	t8,66
 228:	ac380000 	sw	t8,0(at)
 22c:	3c030000 	lui	v1,0x0
 230:	3c010000 	lui	at,0x0
 234:	24630000 	addiu	v1,v1,0
 238:	e4200000 	swc1	$f0,0(at)
 23c:	3c020000 	lui	v0,0x0
 240:	e4600000 	swc1	$f0,0(v1)
 244:	8c420000 	lw	v0,0(v0)
 248:	3c040000 	lui	a0,0x0
 24c:	2409002c 	li	t1,44
 250:	10400033 	beqz	v0,320 <Idle_ThreadEntry+0x22c>
 254:	24840000 	addiu	a0,a0,0
 258:	24010001 	li	at,1
 25c:	10410006 	beq	v0,at,278 <Idle_ThreadEntry+0x184>
 260:	24190002 	li	t9,2
 264:	24010002 	li	at,2
 268:	10410018 	beq	v0,at,2cc <Idle_ThreadEntry+0x1d8>
 26c:	240d001e 	li	t5,30
 270:	10000043 	b	380 <Idle_ThreadEntry+0x28c>
 274:	240f0001 	li	t7,1
 278:	3c090000 	lui	t1,0x0
 27c:	3c010000 	lui	at,0x0
 280:	25290000 	addiu	t1,t1,0
 284:	3c080000 	lui	t0,0x0
 288:	a0390000 	sb	t9,0(at)
 28c:	25080000 	addiu	t0,t0,0
 290:	252c0048 	addiu	t4,t1,72
 294:	8d2b0000 	lw	t3,0(t1)
 298:	2529000c 	addiu	t1,t1,12
 29c:	2508000c 	addiu	t0,t0,12
 2a0:	ad0bfff4 	sw	t3,-12(t0)
 2a4:	8d2afff8 	lw	t2,-8(t1)
 2a8:	ad0afff8 	sw	t2,-8(t0)
 2ac:	8d2bfffc 	lw	t3,-4(t1)
 2b0:	152cfff8 	bne	t1,t4,294 <Idle_ThreadEntry+0x1a0>
 2b4:	ad0bfffc 	sw	t3,-4(t0)
 2b8:	8d2b0000 	lw	t3,0(t1)
 2bc:	8d2a0004 	lw	t2,4(t1)
 2c0:	ad0b0000 	sw	t3,0(t0)
 2c4:	1000002d 	b	37c <Idle_ThreadEntry+0x288>
 2c8:	ad0a0004 	sw	t2,4(t0)
 2cc:	3c0f0000 	lui	t7,0x0
 2d0:	3c010000 	lui	at,0x0
 2d4:	25ef0000 	addiu	t7,t7,0
 2d8:	3c0e0000 	lui	t6,0x0
 2dc:	a02d0000 	sb	t5,0(at)
 2e0:	25ce0000 	addiu	t6,t6,0
 2e4:	25ec0048 	addiu	t4,t7,72
 2e8:	8df90000 	lw	t9,0(t7)
 2ec:	25ef000c 	addiu	t7,t7,12
 2f0:	25ce000c 	addiu	t6,t6,12
 2f4:	add9fff4 	sw	t9,-12(t6)
 2f8:	8df8fff8 	lw	t8,-8(t7)
 2fc:	add8fff8 	sw	t8,-8(t6)
 300:	8df9fffc 	lw	t9,-4(t7)
 304:	15ecfff8 	bne	t7,t4,2e8 <Idle_ThreadEntry+0x1f4>
 308:	add9fffc 	sw	t9,-4(t6)
 30c:	8df90000 	lw	t9,0(t7)
 310:	8df80004 	lw	t8,4(t7)
 314:	add90000 	sw	t9,0(t6)
 318:	10000018 	b	37c <Idle_ThreadEntry+0x288>
 31c:	add80004 	sw	t8,4(t6)
 320:	3c0a0000 	lui	t2,0x0
 324:	3c010000 	lui	at,0x0
 328:	254a0000 	addiu	t2,t2,0
 32c:	3c080000 	lui	t0,0x0
 330:	a0290000 	sb	t1,0(at)
 334:	25080000 	addiu	t0,t0,0
 338:	254c0048 	addiu	t4,t2,72
 33c:	8d4d0000 	lw	t5,0(t2)
 340:	254a000c 	addiu	t2,t2,12
 344:	2508000c 	addiu	t0,t0,12
 348:	ad0dfff4 	sw	t5,-12(t0)
 34c:	8d4bfff8 	lw	t3,-8(t2)
 350:	ad0bfff8 	sw	t3,-8(t0)
 354:	8d4dfffc 	lw	t5,-4(t2)
 358:	154cfff8 	bne	t2,t4,33c <Idle_ThreadEntry+0x248>
 35c:	ad0dfffc 	sw	t5,-4(t0)
 360:	8d4d0000 	lw	t5,0(t2)
 364:	8d4b0004 	lw	t3,4(t2)
 368:	3c010000 	lui	at,0x0
 36c:	ad0d0000 	sw	t5,0(t0)
 370:	ad0b0004 	sw	t3,4(t0)
 374:	c4240268 	lwc1	$f4,616(at)
 378:	e4640000 	swc1	$f4,0(v1)
 37c:	240f0001 	li	t7,1
 380:	3c010000 	lui	at,0x0
 384:	0c000000 	jal	0 <Main_ThreadEntry>
 388:	a02f0000 	sb	t7,0(at)
 38c:	0c000000 	jal	0 <Main_ThreadEntry>
 390:	24040001 	li	a0,1
 394:	0c000000 	jal	0 <Main_ThreadEntry>
 398:	24040001 	li	a0,1
 39c:	3c040803 	lui	a0,0x803
 3a0:	0c000000 	jal	0 <Main_ThreadEntry>
 3a4:	3484da80 	ori	a0,a0,0xda80
 3a8:	3c050000 	lui	a1,0x0
 3ac:	3c060000 	lui	a2,0x0
 3b0:	24c60000 	addiu	a2,a2,0
 3b4:	24a50000 	addiu	a1,a1,0
 3b8:	24040096 	li	a0,150
 3bc:	0c000000 	jal	0 <Main_ThreadEntry>
 3c0:	24070032 	li	a3,50
 3c4:	3c180000 	lui	t8,0x0
 3c8:	27180260 	addiu	t8,t8,608
 3cc:	3c040000 	lui	a0,0x0
 3d0:	3c050000 	lui	a1,0x0
 3d4:	3c060000 	lui	a2,0x0
 3d8:	240e0400 	li	t6,1024
 3dc:	afae0010 	sw	t6,16(sp)
 3e0:	24c60900 	addiu	a2,a2,2304
 3e4:	24a50000 	addiu	a1,a1,0
 3e8:	24840000 	addiu	a0,a0,0
 3ec:	afb80014 	sw	t8,20(sp)
 3f0:	0c000000 	jal	0 <Main_ThreadEntry>
 3f4:	00003825 	move	a3,zero
 3f8:	3c190000 	lui	t9,0x0
 3fc:	27390900 	addiu	t9,t9,2304
 400:	3c040000 	lui	a0,0x0
 404:	3c060000 	lui	a2,0x0
 408:	2409000a 	li	t1,10
 40c:	afa90014 	sw	t1,20(sp)
 410:	24c60000 	addiu	a2,a2,0
 414:	24840000 	addiu	a0,a0,0
 418:	afb90010 	sw	t9,16(sp)
 41c:	24050003 	li	a1,3
 420:	0c000000 	jal	0 <Main_ThreadEntry>
 424:	8fa70020 	lw	a3,32(sp)
 428:	3c040000 	lui	a0,0x0
 42c:	0c000000 	jal	0 <Main_ThreadEntry>
 430:	24840000 	addiu	a0,a0,0
 434:	00002025 	move	a0,zero
 438:	0c000000 	jal	0 <Main_ThreadEntry>
 43c:	00002825 	move	a1,zero
 440:	1000ffff 	b	440 <Idle_ThreadEntry+0x34c>
 444:	00000000 	nop
	...
 460:	8fbf001c 	lw	ra,28(sp)
 464:	27bd0020 	addiu	sp,sp,32
 468:	03e00008 	jr	ra
 46c:	00000000 	nop
