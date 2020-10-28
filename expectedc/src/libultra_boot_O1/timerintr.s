
build/src/libultra_boot_O1/timerintr.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osTimerServicesInit>:
   0:	3c010000 	lui	at,0x0
   4:	240e0000 	li	t6,0
   8:	240f0000 	li	t7,0
   c:	ac2f0004 	sw	t7,4(at)
  10:	ac2e0000 	sw	t6,0(at)
  14:	3c010000 	lui	at,0x0
  18:	3c180000 	lui	t8,0x0
  1c:	8f180000 	lw	t8,0(t8)
  20:	ac200000 	sw	zero,0(at)
  24:	3c010000 	lui	at,0x0
  28:	ac200000 	sw	zero,0(at)
  2c:	3c190000 	lui	t9,0x0
  30:	af180004 	sw	t8,4(t8)
  34:	8f390000 	lw	t9,0(t9)
  38:	3c090000 	lui	t1,0x0
  3c:	240a0000 	li	t2,0
  40:	8f280004 	lw	t0,4(t9)
  44:	240b0000 	li	t3,0
  48:	3c0c0000 	lui	t4,0x0
  4c:	af280000 	sw	t0,0(t9)
  50:	8d290000 	lw	t1,0(t1)
  54:	3c0d0000 	lui	t5,0x0
  58:	3c180000 	lui	t8,0x0
  5c:	ad2a0010 	sw	t2,16(t1)
  60:	ad2b0014 	sw	t3,20(t1)
  64:	8d8c0000 	lw	t4,0(t4)
  68:	8d8e0010 	lw	t6,16(t4)
  6c:	8d8f0014 	lw	t7,20(t4)
  70:	ad8e0008 	sw	t6,8(t4)
  74:	ad8f000c 	sw	t7,12(t4)
  78:	8dad0000 	lw	t5,0(t5)
  7c:	ada00018 	sw	zero,24(t5)
  80:	8f180000 	lw	t8,0(t8)
  84:	03e00008 	jr	ra
  88:	af00001c 	sw	zero,28(t8)

0000008c <__osTimerInterrupt>:
  8c:	3c0e0000 	lui	t6,0x0
  90:	8dce0000 	lw	t6,0(t6)
  94:	27bdffd8 	addiu	sp,sp,-40
  98:	afbf0014 	sw	ra,20(sp)
  9c:	8dcf0000 	lw	t7,0(t6)
  a0:	11ee0054 	beq	t7,t6,1f4 <__osTimerInterrupt+0x168>
  a4:	00000000 	nop
  a8:	3c180000 	lui	t8,0x0
  ac:	8f180000 	lw	t8,0(t8)
  b0:	8f190000 	lw	t9,0(t8)
  b4:	17380006 	bne	t9,t8,d0 <__osTimerInterrupt+0x44>
  b8:	afb90024 	sw	t9,36(sp)
  bc:	0c000000 	jal	0 <__osTimerServicesInit>
  c0:	00002025 	move	a0,zero
  c4:	3c010000 	lui	at,0x0
  c8:	1000004a 	b	1f4 <__osTimerInterrupt+0x168>
  cc:	ac200000 	sw	zero,0(at)
  d0:	0c000000 	jal	0 <__osTimerServicesInit>
  d4:	00000000 	nop
  d8:	afa20020 	sw	v0,32(sp)
  dc:	3c090000 	lui	t1,0x0
  e0:	8d290000 	lw	t1,0(t1)
  e4:	8fa80020 	lw	t0,32(sp)
  e8:	8faf0024 	lw	t7,36(sp)
  ec:	3c010000 	lui	at,0x0
  f0:	01095023 	subu	t2,t0,t1
  f4:	afaa001c 	sw	t2,28(sp)
  f8:	ac280000 	sw	t0,0(at)
  fc:	8dee0010 	lw	t6,16(t7)
 100:	8fab001c 	lw	t3,28(sp)
 104:	240c0000 	li	t4,0
 108:	01e0c825 	move	t9,t7
 10c:	01cc082b 	sltu	at,t6,t4
 110:	8def0014 	lw	t7,20(t7)
 114:	14200016 	bnez	at,170 <__osTimerInterrupt+0xe4>
 118:	01606825 	move	t5,t3
 11c:	018e082b 	sltu	at,t4,t6
 120:	14200003 	bnez	at,130 <__osTimerInterrupt+0xa4>
 124:	01af082b 	sltu	at,t5,t7
 128:	10200011 	beqz	at,170 <__osTimerInterrupt+0xe4>
 12c:	00000000 	nop
 130:	27380010 	addiu	t8,t9,16
 134:	afb80018 	sw	t8,24(sp)
 138:	8f2b0014 	lw	t3,20(t9)
 13c:	8f2a0010 	lw	t2,16(t9)
 140:	016d082b 	sltu	at,t3,t5
 144:	014c4023 	subu	t0,t2,t4
 148:	01014023 	subu	t0,t0,at
 14c:	016d4823 	subu	t1,t3,t5
 150:	af290014 	sw	t1,20(t9)
 154:	af280010 	sw	t0,16(t9)
 158:	8fae0024 	lw	t6,36(sp)
 15c:	8dc40010 	lw	a0,16(t6)
 160:	0c000000 	jal	0 <__osTimerServicesInit>
 164:	8dc50014 	lw	a1,20(t6)
 168:	10000022 	b	1f4 <__osTimerInterrupt+0x168>
 16c:	00000000 	nop
 170:	8faf0024 	lw	t7,36(sp)
 174:	8df80000 	lw	t8,0(t7)
 178:	8dea0004 	lw	t2,4(t7)
 17c:	ad580000 	sw	t8,0(t2)
 180:	8fab0024 	lw	t3,36(sp)
 184:	8d6c0004 	lw	t4,4(t3)
 188:	8d6d0000 	lw	t5,0(t3)
 18c:	adac0004 	sw	t4,4(t5)
 190:	8fa80024 	lw	t0,36(sp)
 194:	ad000000 	sw	zero,0(t0)
 198:	8fa90024 	lw	t1,36(sp)
 19c:	ad200004 	sw	zero,4(t1)
 1a0:	8fb90024 	lw	t9,36(sp)
 1a4:	8f2e0018 	lw	t6,24(t9)
 1a8:	11c00005 	beqz	t6,1c0 <__osTimerInterrupt+0x134>
 1ac:	00000000 	nop
 1b0:	01c02025 	move	a0,t6
 1b4:	8f25001c 	lw	a1,28(t9)
 1b8:	0c000000 	jal	0 <__osTimerServicesInit>
 1bc:	00003025 	move	a2,zero
 1c0:	8faf0024 	lw	t7,36(sp)
 1c4:	8df80008 	lw	t8,8(t7)
 1c8:	8df9000c 	lw	t9,12(t7)
 1cc:	17000003 	bnez	t8,1dc <__osTimerInterrupt+0x150>
 1d0:	00000000 	nop
 1d4:	1320ffb4 	beqz	t9,a8 <__osTimerInterrupt+0x1c>
 1d8:	00000000 	nop
 1dc:	adf80010 	sw	t8,16(t7)
 1e0:	adf90014 	sw	t9,20(t7)
 1e4:	0c000000 	jal	0 <__osTimerServicesInit>
 1e8:	8fa40024 	lw	a0,36(sp)
 1ec:	1000ffae 	b	a8 <__osTimerInterrupt+0x1c>
 1f0:	00000000 	nop
 1f4:	8fbf0014 	lw	ra,20(sp)
 1f8:	27bd0028 	addiu	sp,sp,40
 1fc:	03e00008 	jr	ra
 200:	00000000 	nop

00000204 <__osSetTimerIntr>:
 204:	27bdffd8 	addiu	sp,sp,-40
 208:	afa40028 	sw	a0,40(sp)
 20c:	8fae0028 	lw	t6,40(sp)
 210:	afa5002c 	sw	a1,44(sp)
 214:	afbf0014 	sw	ra,20(sp)
 218:	15c00008 	bnez	t6,23c <__osSetTimerIntr+0x38>
 21c:	8faf002c 	lw	t7,44(sp)
 220:	2de101d4 	sltiu	at,t7,468
 224:	10200005 	beqz	at,23c <__osSetTimerIntr+0x38>
 228:	00000000 	nop
 22c:	24180000 	li	t8,0
 230:	241901d4 	li	t9,468
 234:	afb9002c 	sw	t9,44(sp)
 238:	afb80028 	sw	t8,40(sp)
 23c:	0c000000 	jal	0 <__osTimerServicesInit>
 240:	00000000 	nop
 244:	0c000000 	jal	0 <__osTimerServicesInit>
 248:	afa2001c 	sw	v0,28(sp)
 24c:	3c010000 	lui	at,0x0
 250:	ac220000 	sw	v0,0(at)
 254:	3c080000 	lui	t0,0x0
 258:	8d080000 	lw	t0,0(t0)
 25c:	8fad002c 	lw	t5,44(sp)
 260:	8fac0028 	lw	t4,40(sp)
 264:	01005825 	move	t3,t0
 268:	016d7821 	addu	t7,t3,t5
 26c:	240a0000 	li	t2,0
 270:	01ed082b 	sltu	at,t7,t5
 274:	002a7021 	addu	t6,at,t2
 278:	01cc7021 	addu	t6,t6,t4
 27c:	afae0020 	sw	t6,32(sp)
 280:	afaf0024 	sw	t7,36(sp)
 284:	0c000000 	jal	0 <__osTimerServicesInit>
 288:	01e02025 	move	a0,t7
 28c:	0c000000 	jal	0 <__osTimerServicesInit>
 290:	8fa4001c 	lw	a0,28(sp)
 294:	8fbf0014 	lw	ra,20(sp)
 298:	27bd0028 	addiu	sp,sp,40
 29c:	03e00008 	jr	ra
 2a0:	00000000 	nop

000002a4 <__osInsertTimer>:
 2a4:	27bdffc8 	addiu	sp,sp,-56
 2a8:	afbf0014 	sw	ra,20(sp)
 2ac:	0c000000 	jal	0 <__osTimerServicesInit>
 2b0:	afa40038 	sw	a0,56(sp)
 2b4:	3c0e0000 	lui	t6,0x0
 2b8:	8dce0000 	lw	t6,0(t6)
 2bc:	afa20024 	sw	v0,36(sp)
 2c0:	8fb80038 	lw	t8,56(sp)
 2c4:	8dcf0000 	lw	t7,0(t6)
 2c8:	afaf0034 	sw	t7,52(sp)
 2cc:	8f090014 	lw	t1,20(t8)
 2d0:	8f080010 	lw	t0,16(t8)
 2d4:	afa9002c 	sw	t1,44(sp)
 2d8:	11ee0029 	beq	t7,t6,380 <__osInsertTimer+0xdc>
 2dc:	afa80028 	sw	t0,40(sp)
 2e0:	8dea0010 	lw	t2,16(t7)
 2e4:	8deb0014 	lw	t3,20(t7)
 2e8:	010a082b 	sltu	at,t0,t2
 2ec:	14200024 	bnez	at,380 <__osInsertTimer+0xdc>
 2f0:	0148082b 	sltu	at,t2,t0
 2f4:	14200003 	bnez	at,304 <__osInsertTimer+0x60>
 2f8:	0169082b 	sltu	at,t3,t1
 2fc:	10200020 	beqz	at,380 <__osInsertTimer+0xdc>
 300:	00000000 	nop
 304:	27b90028 	addiu	t9,sp,40
 308:	8fb80034 	lw	t8,52(sp)
 30c:	afb90020 	sw	t9,32(sp)
 310:	8f2d0004 	lw	t5,4(t9)
 314:	8f2c0000 	lw	t4,0(t9)
 318:	8f0f0014 	lw	t7,20(t8)
 31c:	8f0e0010 	lw	t6,16(t8)
 320:	3c180000 	lui	t8,0x0
 324:	01af082b 	sltu	at,t5,t7
 328:	018e4023 	subu	t0,t4,t6
 32c:	01014023 	subu	t0,t0,at
 330:	01af4823 	subu	t1,t5,t7
 334:	af290004 	sw	t1,4(t9)
 338:	af280000 	sw	t0,0(t9)
 33c:	8faa0034 	lw	t2,52(sp)
 340:	8f180000 	lw	t8,0(t8)
 344:	8d4b0000 	lw	t3,0(t2)
 348:	1178000d 	beq	t3,t8,380 <__osInsertTimer+0xdc>
 34c:	afab0034 	sw	t3,52(sp)
 350:	8fac0028 	lw	t4,40(sp)
 354:	8d6e0010 	lw	t6,16(t3)
 358:	8fad002c 	lw	t5,44(sp)
 35c:	8d6f0014 	lw	t7,20(t3)
 360:	01cc082b 	sltu	at,t6,t4
 364:	1420ffe7 	bnez	at,304 <__osInsertTimer+0x60>
 368:	00000000 	nop
 36c:	018e082b 	sltu	at,t4,t6
 370:	14200003 	bnez	at,380 <__osInsertTimer+0xdc>
 374:	01ed082b 	sltu	at,t7,t5
 378:	1420ffe2 	bnez	at,304 <__osInsertTimer+0x60>
 37c:	00000000 	nop
 380:	8fb90038 	lw	t9,56(sp)
 384:	8fa80028 	lw	t0,40(sp)
 388:	8fa9002c 	lw	t1,44(sp)
 38c:	3c180000 	lui	t8,0x0
 390:	af280010 	sw	t0,16(t9)
 394:	af290014 	sw	t1,20(t9)
 398:	8f180000 	lw	t8,0(t8)
 39c:	8faa0034 	lw	t2,52(sp)
 3a0:	1158000d 	beq	t2,t8,3d8 <__osInsertTimer+0x134>
 3a4:	00000000 	nop
 3a8:	254b0010 	addiu	t3,t2,16
 3ac:	afab001c 	sw	t3,28(sp)
 3b0:	8d4d0014 	lw	t5,20(t2)
 3b4:	8d4c0010 	lw	t4,16(t2)
 3b8:	8fae0028 	lw	t6,40(sp)
 3bc:	8faf002c 	lw	t7,44(sp)
 3c0:	018e4023 	subu	t0,t4,t6
 3c4:	01af082b 	sltu	at,t5,t7
 3c8:	01014023 	subu	t0,t0,at
 3cc:	01af4823 	subu	t1,t5,t7
 3d0:	ad490014 	sw	t1,20(t2)
 3d4:	ad480010 	sw	t0,16(t2)
 3d8:	8fb90034 	lw	t9,52(sp)
 3dc:	8fb80038 	lw	t8,56(sp)
 3e0:	af190000 	sw	t9,0(t8)
 3e4:	8fab0034 	lw	t3,52(sp)
 3e8:	8fad0038 	lw	t5,56(sp)
 3ec:	8d6c0004 	lw	t4,4(t3)
 3f0:	adac0004 	sw	t4,4(t5)
 3f4:	8faf0034 	lw	t7,52(sp)
 3f8:	8fae0038 	lw	t6,56(sp)
 3fc:	8de80004 	lw	t0,4(t7)
 400:	ad0e0000 	sw	t6,0(t0)
 404:	8faa0034 	lw	t2,52(sp)
 408:	8fa90038 	lw	t1,56(sp)
 40c:	ad490004 	sw	t1,4(t2)
 410:	0c000000 	jal	0 <__osTimerServicesInit>
 414:	8fa40024 	lw	a0,36(sp)
 418:	8fbf0014 	lw	ra,20(sp)
 41c:	8fa20028 	lw	v0,40(sp)
 420:	8fa3002c 	lw	v1,44(sp)
 424:	03e00008 	jr	ra
 428:	27bd0038 	addiu	sp,sp,56
 42c:	00000000 	nop
