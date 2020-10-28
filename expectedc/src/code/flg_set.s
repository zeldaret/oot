
build/src/code/flg_set.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <FlagSet_Update>:
   0:	27bdfdc0 	addiu	sp,sp,-576
   4:	3c0f0000 	lui	t7,0x0
   8:	25ef0000 	addiu	t7,t7,0
   c:	afbf0024 	sw	ra,36(sp)
  10:	afb00020 	sw	s0,32(sp)
  14:	afa40240 	sw	a0,576(sp)
  18:	25ea01a4 	addiu	t2,t7,420
  1c:	27ae0098 	addiu	t6,sp,152
  20:	8df90000 	lw	t9,0(t7)
  24:	25ef000c 	addiu	t7,t7,12
  28:	25ce000c 	addiu	t6,t6,12
  2c:	add9fff4 	sw	t9,-12(t6)
  30:	8df8fff8 	lw	t8,-8(t7)
  34:	add8fff8 	sw	t8,-8(t6)
  38:	8df9fffc 	lw	t9,-4(t7)
  3c:	15eafff8 	bne	t7,t2,20 <FlagSet_Update+0x20>
  40:	add9fffc 	sw	t9,-4(t6)
  44:	8df90000 	lw	t9,0(t7)
  48:	3c060000 	lui	a2,0x0
  4c:	24c60378 	addiu	a2,a2,888
  50:	add90000 	sw	t9,0(t6)
  54:	8fab0240 	lw	t3,576(sp)
  58:	27a40074 	addiu	a0,sp,116
  5c:	24070083 	li	a3,131
  60:	8d650000 	lw	a1,0(t3)
  64:	0c000000 	jal	0 <FlagSet_Update>
  68:	afa50094 	sw	a1,148(sp)
  6c:	8fac0094 	lw	t4,148(sp)
  70:	8d8402c0 	lw	a0,704(t4)
  74:	0c000000 	jal	0 <FlagSet_Update>
  78:	afa40088 	sw	a0,136(sp)
  7c:	8fa60094 	lw	a2,148(sp)
  80:	3c0ade00 	lui	t2,0xde00
  84:	27b00044 	addiu	s0,sp,68
  88:	8cc402b0 	lw	a0,688(a2)
  8c:	248d0008 	addiu	t5,a0,8
  90:	accd02b0 	sw	t5,688(a2)
  94:	ac820004 	sw	v0,4(a0)
  98:	ac8a0000 	sw	t2,0(a0)
  9c:	afa2008c 	sw	v0,140(sp)
  a0:	0c000000 	jal	0 <FlagSet_Update>
  a4:	02002025 	move	a0,s0
  a8:	8fa5008c 	lw	a1,140(sp)
  ac:	0c000000 	jal	0 <FlagSet_Update>
  b0:	02002025 	move	a0,s0
  b4:	240f00ff 	li	t7,255
  b8:	afaf0010 	sw	t7,16(sp)
  bc:	02002025 	move	a0,s0
  c0:	240500fa 	li	a1,250
  c4:	24060032 	li	a2,50
  c8:	0c000000 	jal	0 <FlagSet_Update>
  cc:	24070032 	li	a3,50
  d0:	02002025 	move	a0,s0
  d4:	24050004 	li	a1,4
  d8:	0c000000 	jal	0 <FlagSet_Update>
  dc:	2406000d 	li	a2,13
  e0:	3c030000 	lui	v1,0x0
  e4:	8c6301a8 	lw	v1,424(v1)
  e8:	02002025 	move	a0,s0
  ec:	000370c0 	sll	t6,v1,0x3
  f0:	03ae2821 	addu	a1,sp,t6
  f4:	0c000000 	jal	0 <FlagSet_Update>
  f8:	8ca5009c 	lw	a1,156(a1)
  fc:	02002025 	move	a0,s0
 100:	24050004 	li	a1,4
 104:	0c000000 	jal	0 <FlagSet_Update>
 108:	2406000f 	li	a2,15
 10c:	2402000f 	li	v0,15
 110:	3c050000 	lui	a1,0x0
 114:	8ca501ac 	lw	a1,428(a1)
 118:	3c010000 	lui	at,0x0
 11c:	ac220000 	sw	v0,0(at)
 120:	1445000a 	bne	v0,a1,14c <FlagSet_Update+0x14c>
 124:	02002025 	move	a0,s0
 128:	241800ff 	li	t8,255
 12c:	afb80010 	sw	t8,16(sp)
 130:	02002025 	move	a0,s0
 134:	240500c8 	li	a1,200
 138:	240600c8 	li	a2,200
 13c:	0c000000 	jal	0 <FlagSet_Update>
 140:	240700c8 	li	a3,200
 144:	10000007 	b	164 <FlagSet_Update+0x164>
 148:	00000000 	nop
 14c:	241900ff 	li	t9,255
 150:	afb90010 	sw	t9,16(sp)
 154:	24050064 	li	a1,100
 158:	24060064 	li	a2,100
 15c:	0c000000 	jal	0 <FlagSet_Update>
 160:	24070064 	li	a3,100
 164:	3c030000 	lui	v1,0x0
 168:	8c6301a8 	lw	v1,424(v1)
 16c:	3c020000 	lui	v0,0x0
 170:	8c420000 	lw	v0,0(v0)
 174:	000358c0 	sll	t3,v1,0x3
 178:	03ab6021 	addu	t4,sp,t3
 17c:	8d8c0098 	lw	t4,152(t4)
 180:	240a0001 	li	t2,1
 184:	004a7804 	sllv	t7,t2,v0
 188:	958d0000 	lhu	t5,0(t4)
 18c:	02002025 	move	a0,s0
 190:	3c050000 	lui	a1,0x0
 194:	01af7024 	and	t6,t5,t7
 198:	11c00007 	beqz	t6,1b8 <FlagSet_Update+0x1b8>
 19c:	00000000 	nop
 1a0:	3c050000 	lui	a1,0x0
 1a4:	24a50388 	addiu	a1,a1,904
 1a8:	0c000000 	jal	0 <FlagSet_Update>
 1ac:	02002025 	move	a0,s0
 1b0:	10000003 	b	1c0 <FlagSet_Update+0x1c0>
 1b4:	00000000 	nop
 1b8:	0c000000 	jal	0 <FlagSet_Update>
 1bc:	24a5038c 	addiu	a1,a1,908
 1c0:	3c020000 	lui	v0,0x0
 1c4:	8c420000 	lw	v0,0(v0)
 1c8:	02002025 	move	a0,s0
 1cc:	3c050000 	lui	a1,0x0
 1d0:	30580003 	andi	t8,v0,0x3
 1d4:	57000006 	bnezl	t8,1f0 <FlagSet_Update+0x1f0>
 1d8:	2442ffff 	addiu	v0,v0,-1
 1dc:	0c000000 	jal	0 <FlagSet_Update>
 1e0:	24a50390 	addiu	a1,a1,912
 1e4:	3c020000 	lui	v0,0x0
 1e8:	8c420000 	lw	v0,0(v0)
 1ec:	2442ffff 	addiu	v0,v0,-1
 1f0:	0441ffc7 	bgez	v0,110 <FlagSet_Update+0x110>
 1f4:	00000000 	nop
 1f8:	8fa70240 	lw	a3,576(sp)
 1fc:	3c010000 	lui	at,0x0
 200:	ac220000 	sw	v0,0(at)
 204:	94e60020 	lhu	a2,32(a3)
 208:	2403fdff 	li	v1,-513
 20c:	2408feff 	li	t0,-257
 210:	00c3c827 	nor	t9,a2,v1
 214:	17200009 	bnez	t9,23c <FlagSet_Update+0x23c>
 218:	24e70014 	addiu	a3,a3,20
 21c:	3c050000 	lui	a1,0x0
 220:	8ca501ac 	lw	a1,428(a1)
 224:	2404000a 	li	a0,10
 228:	3c010000 	lui	at,0x0
 22c:	ac2401b0 	sw	a0,432(at)
 230:	3c010000 	lui	at,0x0
 234:	24a50001 	addiu	a1,a1,1
 238:	ac2501ac 	sw	a1,428(at)
 23c:	3c040000 	lui	a0,0x0
 240:	3c050000 	lui	a1,0x0
 244:	00c85827 	nor	t3,a2,t0
 248:	8ca501ac 	lw	a1,428(a1)
 24c:	15600003 	bnez	t3,25c <FlagSet_Update+0x25c>
 250:	8c8401b0 	lw	a0,432(a0)
 254:	24a5ffff 	addiu	a1,a1,-1
 258:	2404000a 	li	a0,10
 25c:	1480000b 	bnez	a0,28c <FlagSet_Update+0x28c>
 260:	2409fbff 	li	t1,-1025
 264:	94e20000 	lhu	v0,0(a3)
 268:	00436027 	nor	t4,v0,v1
 26c:	15800003 	bnez	t4,27c <FlagSet_Update+0x27c>
 270:	00485027 	nor	t2,v0,t0
 274:	24a50001 	addiu	a1,a1,1
 278:	24040002 	li	a0,2
 27c:	55400004 	bnezl	t2,290 <FlagSet_Update+0x290>
 280:	2408f7ff 	li	t0,-2049
 284:	24a5ffff 	addiu	a1,a1,-1
 288:	24040002 	li	a0,2
 28c:	2408f7ff 	li	t0,-2049
 290:	00c86827 	nor	t5,a2,t0
 294:	15a0000a 	bnez	t5,2c0 <FlagSet_Update+0x2c0>
 298:	30a5000f 	andi	a1,a1,0xf
 29c:	3c030000 	lui	v1,0x0
 2a0:	8c6301a8 	lw	v1,424(v1)
 2a4:	2404000a 	li	a0,10
 2a8:	3c010000 	lui	at,0x0
 2ac:	2463ffff 	addiu	v1,v1,-1
 2b0:	04610002 	bgez	v1,2bc <FlagSet_Update+0x2bc>
 2b4:	00000000 	nop
 2b8:	00001825 	move	v1,zero
 2bc:	ac2301a8 	sw	v1,424(at)
 2c0:	3c030000 	lui	v1,0x0
 2c4:	00c97827 	nor	t7,a2,t1
 2c8:	15e00009 	bnez	t7,2f0 <FlagSet_Update+0x2f0>
 2cc:	8c6301a8 	lw	v1,424(v1)
 2d0:	24630001 	addiu	v1,v1,1
 2d4:	000370c0 	sll	t6,v1,0x3
 2d8:	03aec021 	addu	t8,sp,t6
 2dc:	8f180098 	lw	t8,152(t8)
 2e0:	2404000a 	li	a0,10
 2e4:	17000002 	bnez	t8,2f0 <FlagSet_Update+0x2f0>
 2e8:	00000000 	nop
 2ec:	2463ffff 	addiu	v1,v1,-1
 2f0:	14800013 	bnez	a0,340 <FlagSet_Update+0x340>
 2f4:	3c010000 	lui	at,0x0
 2f8:	94e20000 	lhu	v0,0(a3)
 2fc:	0048c827 	nor	t9,v0,t0
 300:	17200005 	bnez	t9,318 <FlagSet_Update+0x318>
 304:	00495827 	nor	t3,v0,t1
 308:	2463ffff 	addiu	v1,v1,-1
 30c:	04610002 	bgez	v1,318 <FlagSet_Update+0x318>
 310:	24040002 	li	a0,2
 314:	00001825 	move	v1,zero
 318:	15600009 	bnez	t3,340 <FlagSet_Update+0x340>
 31c:	00000000 	nop
 320:	24630001 	addiu	v1,v1,1
 324:	000360c0 	sll	t4,v1,0x3
 328:	03ac5021 	addu	t2,sp,t4
 32c:	8d4a0098 	lw	t2,152(t2)
 330:	24040002 	li	a0,2
 334:	15400002 	bnez	t2,340 <FlagSet_Update+0x340>
 338:	00000000 	nop
 33c:	2463ffff 	addiu	v1,v1,-1
 340:	ac2301a8 	sw	v1,424(at)
 344:	3c010000 	lui	at,0x0
 348:	ac2501ac 	sw	a1,428(at)
 34c:	3c01ffff 	lui	at,0xffff
 350:	34217fff 	ori	at,at,0x7fff
 354:	00c16827 	nor	t5,a2,at
 358:	15a0000c 	bnez	t5,38c <FlagSet_Update+0x38c>
 35c:	000378c0 	sll	t7,v1,0x3
 360:	03af1021 	addu	v0,sp,t7
 364:	8c420098 	lw	v0,152(v0)
 368:	24180001 	li	t8,1
 36c:	00b8c804 	sllv	t9,t8,a1
 370:	944e0000 	lhu	t6,0(v0)
 374:	3c010000 	lui	at,0x0
 378:	01d95826 	xor	t3,t6,t9
 37c:	a44b0000 	sh	t3,0(v0)
 380:	ac2301a8 	sw	v1,424(at)
 384:	3c010000 	lui	at,0x0
 388:	ac2501ac 	sw	a1,428(at)
 38c:	3c010000 	lui	at,0x0
 390:	10800004 	beqz	a0,3a4 <FlagSet_Update+0x3a4>
 394:	ac2401b0 	sw	a0,432(at)
 398:	2484ffff 	addiu	a0,a0,-1
 39c:	3c010000 	lui	at,0x0
 3a0:	ac2401b0 	sw	a0,432(at)
 3a4:	02002025 	move	a0,s0
 3a8:	0c000000 	jal	0 <FlagSet_Update>
 3ac:	afa70034 	sw	a3,52(sp)
 3b0:	02002025 	move	a0,s0
 3b4:	0c000000 	jal	0 <FlagSet_Update>
 3b8:	afa2008c 	sw	v0,140(sp)
 3bc:	8fa5008c 	lw	a1,140(sp)
 3c0:	8fa70034 	lw	a3,52(sp)
 3c4:	3c0cdf00 	lui	t4,0xdf00
 3c8:	00a01025 	move	v0,a1
 3cc:	ac4c0000 	sw	t4,0(v0)
 3d0:	ac400004 	sw	zero,4(v0)
 3d4:	24a50008 	addiu	a1,a1,8
 3d8:	afa5008c 	sw	a1,140(sp)
 3dc:	8fa40088 	lw	a0,136(sp)
 3e0:	0c000000 	jal	0 <FlagSet_Update>
 3e4:	afa70034 	sw	a3,52(sp)
 3e8:	8fa5008c 	lw	a1,140(sp)
 3ec:	8faa0094 	lw	t2,148(sp)
 3f0:	8fa70034 	lw	a3,52(sp)
 3f4:	2401ffdf 	li	at,-33
 3f8:	ad4502c0 	sw	a1,704(t2)
 3fc:	94ed000c 	lhu	t5,12(a3)
 400:	3c060000 	lui	a2,0x0
 404:	24c60394 	addiu	a2,a2,916
 408:	01a17827 	nor	t7,t5,at
 40c:	15e00005 	bnez	t7,424 <FlagSet_Update+0x424>
 410:	27a40074 	addiu	a0,sp,116
 414:	8fb80240 	lw	t8,576(sp)
 418:	3c010001 	lui	at,0x1
 41c:	00380821 	addu	at,at,t8
 420:	a4200936 	sh	zero,2358(at)
 424:	8fa50094 	lw	a1,148(sp)
 428:	0c000000 	jal	0 <FlagSet_Update>
 42c:	240700f1 	li	a3,241
 430:	8fbf0024 	lw	ra,36(sp)
 434:	8fb00020 	lw	s0,32(sp)
 438:	27bd0240 	addiu	sp,sp,576
 43c:	03e00008 	jr	ra
 440:	00000000 	nop
	...
