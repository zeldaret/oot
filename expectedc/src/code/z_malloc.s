
build/src/code/z_malloc.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ZeldaArena_CheckPointer>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa5001c 	sw	a1,28(sp)
   c:	1480000f 	bnez	a0,4c <ZeldaArena_CheckPointer+0x4c>
  10:	afa60020 	sw	a2,32(sp)
  14:	3c0e0000 	lui	t6,0x0
  18:	8dce0000 	lw	t6,0(t6)
  1c:	3c040000 	lui	a0,0x0
  20:	24840000 	addiu	a0,a0,0
  24:	29c10002 	slti	at,t6,2
  28:	14200011 	bnez	at,70 <ZeldaArena_CheckPointer+0x70>
  2c:	00c02825 	move	a1,a2
  30:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
  34:	8fa6001c 	lw	a2,28(sp)
  38:	3c040000 	lui	a0,0x0
  3c:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
  40:	24840000 	addiu	a0,a0,0
  44:	1000000b 	b	74 <ZeldaArena_CheckPointer+0x74>
  48:	8fbf0014 	lw	ra,20(sp)
  4c:	3c0f0000 	lui	t7,0x0
  50:	8def0000 	lw	t7,0(t7)
  54:	3c040000 	lui	a0,0x0
  58:	24840024 	addiu	a0,a0,36
  5c:	29e10003 	slti	at,t7,3
  60:	14200003 	bnez	at,70 <ZeldaArena_CheckPointer+0x70>
  64:	8fa50020 	lw	a1,32(sp)
  68:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
  6c:	8fa6001c 	lw	a2,28(sp)
  70:	8fbf0014 	lw	ra,20(sp)
  74:	27bd0018 	addiu	sp,sp,24
  78:	03e00008 	jr	ra
  7c:	00000000 	nop

00000080 <ZeldaArena_Malloc>:
  80:	27bdffe0 	addiu	sp,sp,-32
  84:	afa40020 	sw	a0,32(sp)
  88:	afbf0014 	sw	ra,20(sp)
  8c:	3c040000 	lui	a0,0x0
  90:	24840000 	addiu	a0,a0,0
  94:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
  98:	8fa50020 	lw	a1,32(sp)
  9c:	3c060000 	lui	a2,0x0
  a0:	3c070000 	lui	a3,0x0
  a4:	afa2001c 	sw	v0,28(sp)
  a8:	24e70058 	addiu	a3,a3,88
  ac:	24c60048 	addiu	a2,a2,72
  b0:	00402025 	move	a0,v0
  b4:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
  b8:	8fa50020 	lw	a1,32(sp)
  bc:	8fbf0014 	lw	ra,20(sp)
  c0:	8fa2001c 	lw	v0,28(sp)
  c4:	27bd0020 	addiu	sp,sp,32
  c8:	03e00008 	jr	ra
  cc:	00000000 	nop

000000d0 <ZeldaArena_MallocDebug>:
  d0:	27bdffe0 	addiu	sp,sp,-32
  d4:	afa40020 	sw	a0,32(sp)
  d8:	00c03825 	move	a3,a2
  dc:	00a03025 	move	a2,a1
  e0:	afbf0014 	sw	ra,20(sp)
  e4:	afa50024 	sw	a1,36(sp)
  e8:	3c040000 	lui	a0,0x0
  ec:	24840000 	addiu	a0,a0,0
  f0:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
  f4:	8fa50020 	lw	a1,32(sp)
  f8:	3c060000 	lui	a2,0x0
  fc:	3c070000 	lui	a3,0x0
 100:	afa2001c 	sw	v0,28(sp)
 104:	24e70074 	addiu	a3,a3,116
 108:	24c60060 	addiu	a2,a2,96
 10c:	00402025 	move	a0,v0
 110:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 114:	8fa50020 	lw	a1,32(sp)
 118:	8fbf0014 	lw	ra,20(sp)
 11c:	8fa2001c 	lw	v0,28(sp)
 120:	27bd0020 	addiu	sp,sp,32
 124:	03e00008 	jr	ra
 128:	00000000 	nop

0000012c <ZeldaArena_MallocR>:
 12c:	27bdffe0 	addiu	sp,sp,-32
 130:	afa40020 	sw	a0,32(sp)
 134:	afbf0014 	sw	ra,20(sp)
 138:	3c040000 	lui	a0,0x0
 13c:	24840000 	addiu	a0,a0,0
 140:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 144:	8fa50020 	lw	a1,32(sp)
 148:	3c060000 	lui	a2,0x0
 14c:	3c070000 	lui	a3,0x0
 150:	afa2001c 	sw	v0,28(sp)
 154:	24e7008c 	addiu	a3,a3,140
 158:	24c6007c 	addiu	a2,a2,124
 15c:	00402025 	move	a0,v0
 160:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 164:	8fa50020 	lw	a1,32(sp)
 168:	8fbf0014 	lw	ra,20(sp)
 16c:	8fa2001c 	lw	v0,28(sp)
 170:	27bd0020 	addiu	sp,sp,32
 174:	03e00008 	jr	ra
 178:	00000000 	nop

0000017c <ZeldaArena_MallocRDebug>:
 17c:	27bdffe0 	addiu	sp,sp,-32
 180:	afa40020 	sw	a0,32(sp)
 184:	00c03825 	move	a3,a2
 188:	00a03025 	move	a2,a1
 18c:	afbf0014 	sw	ra,20(sp)
 190:	afa50024 	sw	a1,36(sp)
 194:	3c040000 	lui	a0,0x0
 198:	24840000 	addiu	a0,a0,0
 19c:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 1a0:	8fa50020 	lw	a1,32(sp)
 1a4:	3c060000 	lui	a2,0x0
 1a8:	3c070000 	lui	a3,0x0
 1ac:	afa2001c 	sw	v0,28(sp)
 1b0:	24e700ac 	addiu	a3,a3,172
 1b4:	24c60094 	addiu	a2,a2,148
 1b8:	00402025 	move	a0,v0
 1bc:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 1c0:	8fa50020 	lw	a1,32(sp)
 1c4:	8fbf0014 	lw	ra,20(sp)
 1c8:	8fa2001c 	lw	v0,28(sp)
 1cc:	27bd0020 	addiu	sp,sp,32
 1d0:	03e00008 	jr	ra
 1d4:	00000000 	nop

000001d8 <ZeldaArena_Realloc>:
 1d8:	27bdffe8 	addiu	sp,sp,-24
 1dc:	afa5001c 	sw	a1,28(sp)
 1e0:	00802825 	move	a1,a0
 1e4:	afa40018 	sw	a0,24(sp)
 1e8:	afbf0014 	sw	ra,20(sp)
 1ec:	3c040000 	lui	a0,0x0
 1f0:	24840000 	addiu	a0,a0,0
 1f4:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 1f8:	8fa6001c 	lw	a2,28(sp)
 1fc:	3c060000 	lui	a2,0x0
 200:	3c070000 	lui	a3,0x0
 204:	afa20018 	sw	v0,24(sp)
 208:	24e700c4 	addiu	a3,a3,196
 20c:	24c600b4 	addiu	a2,a2,180
 210:	00402025 	move	a0,v0
 214:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 218:	8fa5001c 	lw	a1,28(sp)
 21c:	8fbf0014 	lw	ra,20(sp)
 220:	8fa20018 	lw	v0,24(sp)
 224:	27bd0018 	addiu	sp,sp,24
 228:	03e00008 	jr	ra
 22c:	00000000 	nop

00000230 <ZeldaArena_ReallocDebug>:
 230:	27bdffe0 	addiu	sp,sp,-32
 234:	afa50024 	sw	a1,36(sp)
 238:	afa7002c 	sw	a3,44(sp)
 23c:	8fae002c 	lw	t6,44(sp)
 240:	00802825 	move	a1,a0
 244:	afa40020 	sw	a0,32(sp)
 248:	00c03825 	move	a3,a2
 24c:	afbf001c 	sw	ra,28(sp)
 250:	afa60028 	sw	a2,40(sp)
 254:	3c040000 	lui	a0,0x0
 258:	24840000 	addiu	a0,a0,0
 25c:	8fa60024 	lw	a2,36(sp)
 260:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 264:	afae0010 	sw	t6,16(sp)
 268:	3c060000 	lui	a2,0x0
 26c:	3c070000 	lui	a3,0x0
 270:	afa20020 	sw	v0,32(sp)
 274:	24e700e0 	addiu	a3,a3,224
 278:	24c600cc 	addiu	a2,a2,204
 27c:	00402025 	move	a0,v0
 280:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 284:	8fa50024 	lw	a1,36(sp)
 288:	8fbf001c 	lw	ra,28(sp)
 28c:	8fa20020 	lw	v0,32(sp)
 290:	27bd0020 	addiu	sp,sp,32
 294:	03e00008 	jr	ra
 298:	00000000 	nop

0000029c <ZeldaArena_Free>:
 29c:	27bdffe8 	addiu	sp,sp,-24
 2a0:	00802825 	move	a1,a0
 2a4:	afbf0014 	sw	ra,20(sp)
 2a8:	3c040000 	lui	a0,0x0
 2ac:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 2b0:	24840000 	addiu	a0,a0,0
 2b4:	8fbf0014 	lw	ra,20(sp)
 2b8:	27bd0018 	addiu	sp,sp,24
 2bc:	03e00008 	jr	ra
 2c0:	00000000 	nop

000002c4 <ZeldaArena_FreeDebug>:
 2c4:	27bdffe8 	addiu	sp,sp,-24
 2c8:	afa5001c 	sw	a1,28(sp)
 2cc:	00802825 	move	a1,a0
 2d0:	afa40018 	sw	a0,24(sp)
 2d4:	afbf0014 	sw	ra,20(sp)
 2d8:	00c03825 	move	a3,a2
 2dc:	3c040000 	lui	a0,0x0
 2e0:	8fa6001c 	lw	a2,28(sp)
 2e4:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 2e8:	24840000 	addiu	a0,a0,0
 2ec:	8fbf0014 	lw	ra,20(sp)
 2f0:	27bd0018 	addiu	sp,sp,24
 2f4:	03e00008 	jr	ra
 2f8:	00000000 	nop

000002fc <ZeldaArena_Calloc>:
 2fc:	00803025 	move	a2,a0
 300:	00c50019 	multu	a2,a1
 304:	27bdffd8 	addiu	sp,sp,-40
 308:	afbf0014 	sw	ra,20(sp)
 30c:	3c040000 	lui	a0,0x0
 310:	24840000 	addiu	a0,a0,0
 314:	00002812 	mflo	a1
 318:	afa5001c 	sw	a1,28(sp)
 31c:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 320:	00000000 	nop
 324:	10400004 	beqz	v0,338 <ZeldaArena_Calloc+0x3c>
 328:	afa20024 	sw	v0,36(sp)
 32c:	00402025 	move	a0,v0
 330:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 334:	8fa5001c 	lw	a1,28(sp)
 338:	3c060000 	lui	a2,0x0
 33c:	3c070000 	lui	a3,0x0
 340:	24e700f8 	addiu	a3,a3,248
 344:	24c600e8 	addiu	a2,a2,232
 348:	8fa40024 	lw	a0,36(sp)
 34c:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 350:	8fa5001c 	lw	a1,28(sp)
 354:	8fbf0014 	lw	ra,20(sp)
 358:	8fa20024 	lw	v0,36(sp)
 35c:	27bd0028 	addiu	sp,sp,40
 360:	03e00008 	jr	ra
 364:	00000000 	nop

00000368 <ZeldaArena_Display>:
 368:	27bdffe8 	addiu	sp,sp,-24
 36c:	afbf0014 	sw	ra,20(sp)
 370:	3c040000 	lui	a0,0x0
 374:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 378:	24840100 	addiu	a0,a0,256
 37c:	3c040000 	lui	a0,0x0
 380:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 384:	24840000 	addiu	a0,a0,0
 388:	8fbf0014 	lw	ra,20(sp)
 38c:	27bd0018 	addiu	sp,sp,24
 390:	03e00008 	jr	ra
 394:	00000000 	nop

00000398 <ZeldaArena_GetSizes>:
 398:	27bdffe8 	addiu	sp,sp,-24
 39c:	afa5001c 	sw	a1,28(sp)
 3a0:	00802825 	move	a1,a0
 3a4:	afa40018 	sw	a0,24(sp)
 3a8:	afbf0014 	sw	ra,20(sp)
 3ac:	00c03825 	move	a3,a2
 3b0:	3c040000 	lui	a0,0x0
 3b4:	8fa6001c 	lw	a2,28(sp)
 3b8:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 3bc:	24840000 	addiu	a0,a0,0
 3c0:	8fbf0014 	lw	ra,20(sp)
 3c4:	27bd0018 	addiu	sp,sp,24
 3c8:	03e00008 	jr	ra
 3cc:	00000000 	nop

000003d0 <ZeldaArena_Check>:
 3d0:	27bdffe8 	addiu	sp,sp,-24
 3d4:	afbf0014 	sw	ra,20(sp)
 3d8:	3c040000 	lui	a0,0x0
 3dc:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 3e0:	24840000 	addiu	a0,a0,0
 3e4:	8fbf0014 	lw	ra,20(sp)
 3e8:	27bd0018 	addiu	sp,sp,24
 3ec:	03e00008 	jr	ra
 3f0:	00000000 	nop

000003f4 <ZeldaArena_Init>:
 3f4:	27bdffe8 	addiu	sp,sp,-24
 3f8:	00a03025 	move	a2,a1
 3fc:	00802825 	move	a1,a0
 400:	afa40018 	sw	a0,24(sp)
 404:	afbf0014 	sw	ra,20(sp)
 408:	3c010000 	lui	at,0x0
 40c:	3c040000 	lui	a0,0x0
 410:	ac200000 	sw	zero,0(at)
 414:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 418:	24840000 	addiu	a0,a0,0
 41c:	8fbf0014 	lw	ra,20(sp)
 420:	27bd0018 	addiu	sp,sp,24
 424:	03e00008 	jr	ra
 428:	00000000 	nop

0000042c <ZeldaArena_Cleanup>:
 42c:	27bdffe8 	addiu	sp,sp,-24
 430:	afbf0014 	sw	ra,20(sp)
 434:	3c010000 	lui	at,0x0
 438:	3c040000 	lui	a0,0x0
 43c:	ac200000 	sw	zero,0(at)
 440:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 444:	24840000 	addiu	a0,a0,0
 448:	8fbf0014 	lw	ra,20(sp)
 44c:	27bd0018 	addiu	sp,sp,24
 450:	03e00008 	jr	ra
 454:	00000000 	nop

00000458 <ZeldaArena_IsInitalized>:
 458:	27bdffe8 	addiu	sp,sp,-24
 45c:	afbf0014 	sw	ra,20(sp)
 460:	3c040000 	lui	a0,0x0
 464:	0c000000 	jal	0 <ZeldaArena_CheckPointer>
 468:	24840000 	addiu	a0,a0,0
 46c:	8fbf0014 	lw	ra,20(sp)
 470:	27bd0018 	addiu	sp,sp,24
 474:	03e00008 	jr	ra
 478:	00000000 	nop
 47c:	00000000 	nop
