
build/src/code/main.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Main_LogSystemHeap>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	3c040000 	lui	a0,0x0
   c:	0c000000 	jal	0 <Main_LogSystemHeap>
  10:	24840000 	addiu	a0,a0,0
  14:	3c050000 	lui	a1,0x0
  18:	8ca50000 	lw	a1,0(a1)
  1c:	3c040000 	lui	a0,0x0
  20:	3c070000 	lui	a3,0x0
  24:	24e70000 	addiu	a3,a3,0
  28:	24840008 	addiu	a0,a0,8
  2c:	0c000000 	jal	0 <Main_LogSystemHeap>
  30:	00053282 	srl	a2,a1,0xa
  34:	3c040000 	lui	a0,0x0
  38:	0c000000 	jal	0 <Main_LogSystemHeap>
  3c:	2484003c 	addiu	a0,a0,60
  40:	8fbf0014 	lw	ra,20(sp)
  44:	27bd0018 	addiu	sp,sp,24
  48:	03e00008 	jr	ra
  4c:	00000000 	nop

00000050 <Main>:
  50:	27bdfeb8 	addiu	sp,sp,-328
  54:	afa40148 	sw	a0,328(sp)
  58:	afbf001c 	sw	ra,28(sp)
  5c:	3c040000 	lui	a0,0x0
  60:	0c000000 	jal	0 <Main_LogSystemHeap>
  64:	24840040 	addiu	a0,a0,64
  68:	240e0140 	li	t6,320
  6c:	3c010000 	lui	at,0x0
  70:	ac2e0000 	sw	t6,0(at)
  74:	3c020000 	lui	v0,0x0
  78:	3c010000 	lui	at,0x0
  7c:	240f00f0 	li	t7,240
  80:	3c180000 	lui	t8,0x0
  84:	24420000 	addiu	v0,v0,0
  88:	ac2f0000 	sw	t7,0(at)
  8c:	27040000 	addiu	a0,t8,0
  90:	0c000000 	jal	0 <Main_LogSystemHeap>
  94:	ac440000 	sw	a0,0(v0)
  98:	0c000000 	jal	0 <Main_LogSystemHeap>
  9c:	00000000 	nop
  a0:	0c000000 	jal	0 <Main_LogSystemHeap>
  a4:	00002025 	move	a0,zero
  a8:	0c000000 	jal	0 <Main_LogSystemHeap>
  ac:	00002025 	move	a0,zero
  b0:	3c050000 	lui	a1,0x0
  b4:	24a50000 	addiu	a1,a1,0
  b8:	0045c823 	subu	t9,v0,a1
  bc:	3c010000 	lui	at,0x0
  c0:	ac390000 	sw	t9,0(at)
  c4:	3c040000 	lui	a0,0x0
  c8:	3c070000 	lui	a3,0x0
  cc:	8ce70000 	lw	a3,0(a3)
  d0:	24840054 	addiu	a0,a0,84
  d4:	afa50020 	sw	a1,32(sp)
  d8:	0c000000 	jal	0 <Main_LogSystemHeap>
  dc:	00403025 	move	a2,v0
  e0:	3c050000 	lui	a1,0x0
  e4:	8ca50000 	lw	a1,0(a1)
  e8:	0c000000 	jal	0 <Main_LogSystemHeap>
  ec:	8fa40020 	lw	a0,32(sp)
  f0:	3c080000 	lui	t0,0x0
  f4:	8d080000 	lw	t0,0(t0)
  f8:	3c010080 	lui	at,0x80
  fc:	0101082b 	sltu	at,t0,at
 100:	54200009 	bnezl	at,128 <Main+0xd8>
 104:	240b0400 	li	t3,1024
 108:	0c000000 	jal	0 <Main_LogSystemHeap>
 10c:	00000000 	nop
 110:	3c098060 	lui	t1,0x8060
 114:	01225023 	subu	t2,t1,v0
 118:	00403825 	move	a3,v0
 11c:	10000009 	b	144 <Main+0xf4>
 120:	afaa0028 	sw	t2,40(sp)
 124:	240b0400 	li	t3,1024
 128:	3c050000 	lui	a1,0x0
 12c:	afab0028 	sw	t3,40(sp)
 130:	24a5007c 	addiu	a1,a1,124
 134:	24040400 	li	a0,1024
 138:	0c000000 	jal	0 <Main_LogSystemHeap>
 13c:	24060235 	li	a2,565
 140:	00403825 	move	a3,v0
 144:	3c040000 	lui	a0,0x0
 148:	24840088 	addiu	a0,a0,136
 14c:	00e02825 	move	a1,a3
 150:	8fa60028 	lw	a2,40(sp)
 154:	0c000000 	jal	0 <Main_LogSystemHeap>
 158:	afa7002c 	sw	a3,44(sp)
 15c:	8fa4002c 	lw	a0,44(sp)
 160:	0c000000 	jal	0 <Main_LogSystemHeap>
 164:	8fa50028 	lw	a1,40(sp)
 168:	0c000000 	jal	0 <Main_LogSystemHeap>
 16c:	00000000 	nop
 170:	3c0c0000 	lui	t4,0x0
 174:	8d8c0000 	lw	t4,0(t4)
 178:	3c040000 	lui	a0,0x0
 17c:	3c050000 	lui	a1,0x0
 180:	24a50000 	addiu	a1,a1,0
 184:	24840000 	addiu	a0,a0,0
 188:	24060001 	li	a2,1
 18c:	0c000000 	jal	0 <Main_LogSystemHeap>
 190:	a58000d4 	sh	zero,212(t4)
 194:	3c050000 	lui	a1,0x0
 198:	24a50000 	addiu	a1,a1,0
 19c:	24040005 	li	a0,5
 1a0:	0c000000 	jal	0 <Main_LogSystemHeap>
 1a4:	00003025 	move	a2,zero
 1a8:	0c000000 	jal	0 <Main_LogSystemHeap>
 1ac:	00000000 	nop
 1b0:	27a40128 	addiu	a0,sp,296
 1b4:	27a50038 	addiu	a1,sp,56
 1b8:	0c000000 	jal	0 <Main_LogSystemHeap>
 1bc:	2406003c 	li	a2,60
 1c0:	3c0e0000 	lui	t6,0x0
 1c4:	25ce00a8 	addiu	t6,t6,168
 1c8:	3c040000 	lui	a0,0x0
 1cc:	3c050000 	lui	a1,0x0
 1d0:	3c060000 	lui	a2,0x0
 1d4:	240d0100 	li	t5,256
 1d8:	afad0010 	sw	t5,16(sp)
 1dc:	24c60500 	addiu	a2,a2,1280
 1e0:	24a50000 	addiu	a1,a1,0
 1e4:	24840000 	addiu	a0,a0,0
 1e8:	afae0014 	sw	t6,20(sp)
 1ec:	0c000000 	jal	0 <Main_LogSystemHeap>
 1f0:	00003825 	move	a3,zero
 1f4:	3c040000 	lui	a0,0x0
 1f8:	3c050000 	lui	a1,0x0
 1fc:	24a50000 	addiu	a1,a1,0
 200:	24840000 	addiu	a0,a0,0
 204:	24060011 	li	a2,17
 208:	0c000000 	jal	0 <Main_LogSystemHeap>
 20c:	24070001 	li	a3,1
 210:	3c040000 	lui	a0,0x0
 214:	0c000000 	jal	0 <Main_LogSystemHeap>
 218:	248400b0 	addiu	a0,a0,176
 21c:	3c180000 	lui	t8,0x0
 220:	271800cc 	addiu	t8,t8,204
 224:	3c040000 	lui	a0,0x0
 228:	3c050000 	lui	a1,0x0
 22c:	3c060000 	lui	a2,0x0
 230:	240f0100 	li	t7,256
 234:	afaf0010 	sw	t7,16(sp)
 238:	24c60600 	addiu	a2,a2,1536
 23c:	24a50000 	addiu	a1,a1,0
 240:	24840000 	addiu	a0,a0,0
 244:	afb80014 	sw	t8,20(sp)
 248:	0c000000 	jal	0 <Main_LogSystemHeap>
 24c:	00003825 	move	a3,zero
 250:	3c080000 	lui	t0,0x0
 254:	25080000 	addiu	t0,t0,0
 258:	3c040000 	lui	a0,0x0
 25c:	3c050000 	lui	a1,0x0
 260:	3c070000 	lui	a3,0x0
 264:	24190001 	li	t9,1
 268:	afb90010 	sw	t9,16(sp)
 26c:	90e70000 	lbu	a3,0(a3)
 270:	24a50000 	addiu	a1,a1,0
 274:	24840000 	addiu	a0,a0,0
 278:	afa80014 	sw	t0,20(sp)
 27c:	0c000000 	jal	0 <Main_LogSystemHeap>
 280:	2406000f 	li	a2,15
 284:	3c040000 	lui	a0,0x0
 288:	24840000 	addiu	a0,a0,0
 28c:	27a50140 	addiu	a1,sp,320
 290:	0c000000 	jal	0 <Main_LogSystemHeap>
 294:	27a60128 	addiu	a2,sp,296
 298:	3c0a0000 	lui	t2,0x0
 29c:	254a00d4 	addiu	t2,t2,212
 2a0:	3c040000 	lui	a0,0x0
 2a4:	3c050000 	lui	a1,0x0
 2a8:	3c060000 	lui	a2,0x0
 2ac:	24090100 	li	t1,256
 2b0:	afa90010 	sw	t1,16(sp)
 2b4:	24c60800 	addiu	a2,a2,2048
 2b8:	24a50000 	addiu	a1,a1,0
 2bc:	24840000 	addiu	a0,a0,0
 2c0:	afaa0014 	sw	t2,20(sp)
 2c4:	0c000000 	jal	0 <Main_LogSystemHeap>
 2c8:	00003825 	move	a3,zero
 2cc:	3c0b0000 	lui	t3,0x0
 2d0:	3c0c0000 	lui	t4,0x0
 2d4:	258c0000 	addiu	t4,t4,0
 2d8:	256b0000 	addiu	t3,t3,0
 2dc:	3c040000 	lui	a0,0x0
 2e0:	3c050000 	lui	a1,0x0
 2e4:	24a50800 	addiu	a1,a1,2048
 2e8:	24840000 	addiu	a0,a0,0
 2ec:	afab0010 	sw	t3,16(sp)
 2f0:	afac0014 	sw	t4,20(sp)
 2f4:	2406000c 	li	a2,12
 2f8:	0c000000 	jal	0 <Main_LogSystemHeap>
 2fc:	2407000a 	li	a3,10
 300:	3c0e0000 	lui	t6,0x0
 304:	25ce00dc 	addiu	t6,t6,220
 308:	3c040000 	lui	a0,0x0
 30c:	3c050000 	lui	a1,0x0
 310:	3c060000 	lui	a2,0x0
 314:	240d0100 	li	t5,256
 318:	afad0010 	sw	t5,16(sp)
 31c:	24c60500 	addiu	a2,a2,1280
 320:	24a50000 	addiu	a1,a1,0
 324:	24840000 	addiu	a0,a0,0
 328:	afae0014 	sw	t6,20(sp)
 32c:	0c000000 	jal	0 <Main_LogSystemHeap>
 330:	00003825 	move	a3,zero
 334:	3c180000 	lui	t8,0x0
 338:	27180000 	addiu	t8,t8,0
 33c:	3c040000 	lui	a0,0x0
 340:	3c050000 	lui	a1,0x0
 344:	3c060000 	lui	a2,0x0
 348:	240f000e 	li	t7,14
 34c:	afaf0010 	sw	t7,16(sp)
 350:	24c60000 	addiu	a2,a2,0
 354:	24a50000 	addiu	a1,a1,0
 358:	24840000 	addiu	a0,a0,0
 35c:	afb80014 	sw	t8,20(sp)
 360:	0c000000 	jal	0 <Main_LogSystemHeap>
 364:	24070007 	li	a3,7
 368:	3c040000 	lui	a0,0x0
 36c:	0c000000 	jal	0 <Main_LogSystemHeap>
 370:	24840000 	addiu	a0,a0,0
 374:	3c080000 	lui	t0,0x0
 378:	250800e4 	addiu	t0,t0,228
 37c:	3c040000 	lui	a0,0x0
 380:	3c050000 	lui	a1,0x0
 384:	3c060000 	lui	a2,0x0
 388:	24190100 	li	t9,256
 38c:	afb90010 	sw	t9,16(sp)
 390:	24c61800 	addiu	a2,a2,6144
 394:	24a50000 	addiu	a1,a1,0
 398:	24840000 	addiu	a0,a0,0
 39c:	afa80014 	sw	t0,20(sp)
 3a0:	0c000000 	jal	0 <Main_LogSystemHeap>
 3a4:	00003825 	move	a3,zero
 3a8:	3c090000 	lui	t1,0x0
 3ac:	25291800 	addiu	t1,t1,6144
 3b0:	3c040000 	lui	a0,0x0
 3b4:	3c060000 	lui	a2,0x0
 3b8:	240a000b 	li	t2,11
 3bc:	afaa0014 	sw	t2,20(sp)
 3c0:	24c60000 	addiu	a2,a2,0
 3c4:	24840000 	addiu	a0,a0,0
 3c8:	afa90010 	sw	t1,16(sp)
 3cc:	24050004 	li	a1,4
 3d0:	0c000000 	jal	0 <Main_LogSystemHeap>
 3d4:	8fa70148 	lw	a3,328(sp)
 3d8:	3c040000 	lui	a0,0x0
 3dc:	0c000000 	jal	0 <Main_LogSystemHeap>
 3e0:	24840000 	addiu	a0,a0,0
 3e4:	00002025 	move	a0,zero
 3e8:	0c000000 	jal	0 <Main_LogSystemHeap>
 3ec:	2405000f 	li	a1,15
 3f0:	afa00024 	sw	zero,36(sp)
 3f4:	27a40128 	addiu	a0,sp,296
 3f8:	27a50024 	addiu	a1,sp,36
 3fc:	0c000000 	jal	0 <Main_LogSystemHeap>
 400:	24060001 	li	a2,1
 404:	8fab0024 	lw	t3,36(sp)
 408:	8fac0024 	lw	t4,36(sp)
 40c:	1160000d 	beqz	t3,444 <Main+0x3f4>
 410:	00000000 	nop
 414:	858d0000 	lh	t5,0(t4)
 418:	24010004 	li	at,4
 41c:	55a1fff5 	bnel	t5,at,3f4 <Main+0x3a4>
 420:	afa00024 	sw	zero,36(sp)
 424:	3c040000 	lui	a0,0x0
 428:	0c000000 	jal	0 <Main_LogSystemHeap>
 42c:	248400ec 	addiu	a0,a0,236
 430:	3c040000 	lui	a0,0x0
 434:	0c000000 	jal	0 <Main_LogSystemHeap>
 438:	8c840000 	lw	a0,0(a0)
 43c:	1000ffed 	b	3f4 <Main+0x3a4>
 440:	afa00024 	sw	zero,36(sp)
 444:	3c040000 	lui	a0,0x0
 448:	0c000000 	jal	0 <Main_LogSystemHeap>
 44c:	24840110 	addiu	a0,a0,272
 450:	3c040000 	lui	a0,0x0
 454:	0c000000 	jal	0 <Main_LogSystemHeap>
 458:	24840000 	addiu	a0,a0,0
 45c:	0c000000 	jal	0 <Main_LogSystemHeap>
 460:	00000000 	nop
 464:	3c040000 	lui	a0,0x0
 468:	0c000000 	jal	0 <Main_LogSystemHeap>
 46c:	24840124 	addiu	a0,a0,292
 470:	8fbf001c 	lw	ra,28(sp)
 474:	27bd0148 	addiu	sp,sp,328
 478:	03e00008 	jr	ra
 47c:	00000000 	nop
