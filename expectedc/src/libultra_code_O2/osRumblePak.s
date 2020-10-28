
build/src/libultra_code_O2/osRumblePak.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osSetRumble>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	8c8e0008 	lw	t6,8(a0)
  10:	8c990000 	lw	t9,0(a0)
  14:	3c180000 	lui	t8,0x0
  18:	27180000 	addiu	t8,t8,0
  1c:	000e7980 	sll	t7,t6,0x6
  20:	33290008 	andi	t1,t9,0x8
  24:	00808025 	move	s0,a0
  28:	00a03825 	move	a3,a1
  2c:	15200003 	bnez	t1,3c <osSetRumble+0x3c>
  30:	01f84021 	addu	t0,t7,t8
  34:	10000047 	b	154 <osSetRumble+0x154>
  38:	24020005 	li	v0,5
  3c:	afa70034 	sw	a3,52(sp)
  40:	0c000000 	jal	0 <osSetRumble>
  44:	afa80024 	sw	t0,36(sp)
  48:	8e0b0008 	lw	t3,8(s0)
  4c:	3c060000 	lui	a2,0x0
  50:	24c60000 	addiu	a2,a2,0
  54:	000b6180 	sll	t4,t3,0x6
  58:	00cc6821 	addu	t5,a2,t4
  5c:	240a0001 	li	t2,1
  60:	adaa003c 	sw	t2,60(t5)
  64:	8fa80024 	lw	t0,36(sp)
  68:	8e0e0008 	lw	t6,8(s0)
  6c:	8fa70034 	lw	a3,52(sp)
  70:	00001825 	move	v1,zero
  74:	010e4021 	addu	t0,t0,t6
  78:	01001025 	move	v0,t0
  7c:	24040020 	li	a0,32
  80:	24630004 	addiu	v1,v1,4
  84:	a0470007 	sb	a3,7(v0)
  88:	a0470008 	sb	a3,8(v0)
  8c:	a0470009 	sb	a3,9(v0)
  90:	24420004 	addiu	v0,v0,4
  94:	1464fffa 	bne	v1,a0,80 <osSetRumble+0x80>
  98:	a0470002 	sb	a3,2(v0)
  9c:	240f00fe 	li	t7,254
  a0:	3c010000 	lui	at,0x0
  a4:	a02f0000 	sb	t7,0(at)
  a8:	8e180008 	lw	t8,8(s0)
  ac:	afa80024 	sw	t0,36(sp)
  b0:	afa70034 	sw	a3,52(sp)
  b4:	0018c980 	sll	t9,t8,0x6
  b8:	00d92821 	addu	a1,a2,t9
  bc:	0c000000 	jal	0 <osSetRumble>
  c0:	24040001 	li	a0,1
  c4:	8e040004 	lw	a0,4(s0)
  c8:	00002825 	move	a1,zero
  cc:	0c000000 	jal	0 <osSetRumble>
  d0:	24060001 	li	a2,1
  d4:	8e090008 	lw	t1,8(s0)
  d8:	3c0c0000 	lui	t4,0x0
  dc:	258c0000 	addiu	t4,t4,0
  e0:	00095980 	sll	t3,t1,0x6
  e4:	016c2821 	addu	a1,t3,t4
  e8:	0c000000 	jal	0 <osSetRumble>
  ec:	00002025 	move	a0,zero
  f0:	8e040004 	lw	a0,4(s0)
  f4:	00002825 	move	a1,zero
  f8:	0c000000 	jal	0 <osSetRumble>
  fc:	24060001 	li	a2,1
 100:	8fa80024 	lw	t0,36(sp)
 104:	8fa70034 	lw	a3,52(sp)
 108:	91100002 	lbu	s0,2(t0)
 10c:	320a00c0 	andi	t2,s0,0xc0
 110:	1540000d 	bnez	t2,148 <osSetRumble+0x148>
 114:	01408025 	move	s0,t2
 118:	54e00007 	bnezl	a3,138 <osSetRumble+0x138>
 11c:	910e0026 	lbu	t6,38(t0)
 120:	910d0026 	lbu	t5,38(t0)
 124:	11a00008 	beqz	t5,148 <osSetRumble+0x148>
 128:	00000000 	nop
 12c:	10000006 	b	148 <osSetRumble+0x148>
 130:	24100004 	li	s0,4
 134:	910e0026 	lbu	t6,38(t0)
 138:	240100eb 	li	at,235
 13c:	11c10002 	beq	t6,at,148 <osSetRumble+0x148>
 140:	00000000 	nop
 144:	24100004 	li	s0,4
 148:	0c000000 	jal	0 <osSetRumble>
 14c:	00000000 	nop
 150:	02001025 	move	v0,s0
 154:	8fbf001c 	lw	ra,28(sp)
 158:	8fb00018 	lw	s0,24(sp)
 15c:	27bd0030 	addiu	sp,sp,48
 160:	03e00008 	jr	ra
 164:	00000000 	nop

00000168 <osSetUpMempakWrite>:
 168:	27bdffb0 	addiu	sp,sp,-80
 16c:	afbf0014 	sw	ra,20(sp)
 170:	00803025 	move	a2,a0
 174:	240e00ff 	li	t6,255
 178:	240f0023 	li	t7,35
 17c:	24180001 	li	t8,1
 180:	24190003 	li	t9,3
 184:	240800c0 	li	t0,192
 188:	a3ae0024 	sb	t6,36(sp)
 18c:	a3af0025 	sb	t7,37(sp)
 190:	a3b80026 	sb	t8,38(sp)
 194:	a3b90027 	sb	t9,39(sp)
 198:	a3a80028 	sb	t0,40(sp)
 19c:	afa60050 	sw	a2,80(sp)
 1a0:	24040600 	li	a0,1536
 1a4:	0c000000 	jal	0 <osSetRumble>
 1a8:	afa5004c 	sw	a1,76(sp)
 1ac:	8fa60050 	lw	a2,80(sp)
 1b0:	3449c000 	ori	t1,v0,0xc000
 1b4:	a3a90029 	sb	t1,41(sp)
 1b8:	10c00012 	beqz	a2,204 <osSetUpMempakWrite+0x9c>
 1bc:	8fa3004c 	lw	v1,76(sp)
 1c0:	18c00010 	blez	a2,204 <osSetUpMempakWrite+0x9c>
 1c4:	00001025 	move	v0,zero
 1c8:	30c50003 	andi	a1,a2,0x3
 1cc:	10a00006 	beqz	a1,1e8 <osSetUpMempakWrite+0x80>
 1d0:	00a02025 	move	a0,a1
 1d4:	24420001 	addiu	v0,v0,1
 1d8:	a0600000 	sb	zero,0(v1)
 1dc:	1482fffd 	bne	a0,v0,1d4 <osSetUpMempakWrite+0x6c>
 1e0:	24630001 	addiu	v1,v1,1
 1e4:	10460007 	beq	v0,a2,204 <osSetUpMempakWrite+0x9c>
 1e8:	24420004 	addiu	v0,v0,4
 1ec:	a0600001 	sb	zero,1(v1)
 1f0:	a0600002 	sb	zero,2(v1)
 1f4:	a0600003 	sb	zero,3(v1)
 1f8:	24630004 	addiu	v1,v1,4
 1fc:	1446fffa 	bne	v0,a2,1e8 <osSetUpMempakWrite+0x80>
 200:	a060fffc 	sb	zero,-4(v1)
 204:	27aa0024 	addiu	t2,sp,36
 208:	254c0024 	addiu	t4,t2,36
 20c:	00606825 	move	t5,v1
 210:	8d410000 	lw	at,0(t2)
 214:	254a000c 	addiu	t2,t2,12
 218:	25ad000c 	addiu	t5,t5,12
 21c:	a9a1fff4 	swl	at,-12(t5)
 220:	b9a1fff7 	swr	at,-9(t5)
 224:	8d41fff8 	lw	at,-8(t2)
 228:	a9a1fff8 	swl	at,-8(t5)
 22c:	b9a1fffb 	swr	at,-5(t5)
 230:	8d41fffc 	lw	at,-4(t2)
 234:	a9a1fffc 	swl	at,-4(t5)
 238:	154cfff5 	bne	t2,t4,210 <osSetUpMempakWrite+0xa8>
 23c:	b9a1ffff 	swr	at,-1(t5)
 240:	91410000 	lbu	at,0(t2)
 244:	240e00fe 	li	t6,254
 248:	24630027 	addiu	v1,v1,39
 24c:	a1a10000 	sb	at,0(t5)
 250:	914c0001 	lbu	t4,1(t2)
 254:	a1ac0001 	sb	t4,1(t5)
 258:	91410002 	lbu	at,2(t2)
 25c:	a1a10002 	sb	at,2(t5)
 260:	a06e0000 	sb	t6,0(v1)
 264:	8fbf0014 	lw	ra,20(sp)
 268:	27bd0050 	addiu	sp,sp,80
 26c:	03e00008 	jr	ra
 270:	00000000 	nop

00000274 <osProbeRumblePak>:
 274:	27bdffb8 	addiu	sp,sp,-72
 278:	afbf001c 	sw	ra,28(sp)
 27c:	afb00018 	sw	s0,24(sp)
 280:	afa40048 	sw	a0,72(sp)
 284:	afa60050 	sw	a2,80(sp)
 288:	aca40004 	sw	a0,4(a1)
 28c:	8faf0050 	lw	t7,80(sp)
 290:	241800ff 	li	t8,255
 294:	00a08025 	move	s0,a1
 298:	a0b80065 	sb	t8,101(a1)
 29c:	aca00000 	sw	zero,0(a1)
 2a0:	00a02025 	move	a0,a1
 2a4:	acaf0008 	sw	t7,8(a1)
 2a8:	0c000000 	jal	0 <osSetRumble>
 2ac:	240500fe 	li	a1,254
 2b0:	24010002 	li	at,2
 2b4:	14410005 	bne	v0,at,2cc <osProbeRumblePak+0x58>
 2b8:	00401825 	move	v1,v0
 2bc:	02002025 	move	a0,s0
 2c0:	0c000000 	jal	0 <osSetRumble>
 2c4:	24050080 	li	a1,128
 2c8:	00401825 	move	v1,v0
 2cc:	10400003 	beqz	v0,2dc <osProbeRumblePak+0x68>
 2d0:	8fa40048 	lw	a0,72(sp)
 2d4:	10000039 	b	3bc <osProbeRumblePak+0x148>
 2d8:	00601025 	move	v0,v1
 2dc:	8fa50050 	lw	a1,80(sp)
 2e0:	24060400 	li	a2,1024
 2e4:	0c000000 	jal	0 <osSetRumble>
 2e8:	27a70024 	addiu	a3,sp,36
 2ec:	24010002 	li	at,2
 2f0:	14410002 	bne	v0,at,2fc <osProbeRumblePak+0x88>
 2f4:	00401825 	move	v1,v0
 2f8:	24030004 	li	v1,4
 2fc:	10600003 	beqz	v1,30c <osProbeRumblePak+0x98>
 300:	93b90043 	lbu	t9,67(sp)
 304:	1000002d 	b	3bc <osProbeRumblePak+0x148>
 308:	00601025 	move	v0,v1
 30c:	240100fe 	li	at,254
 310:	17210003 	bne	t9,at,320 <osProbeRumblePak+0xac>
 314:	02002025 	move	a0,s0
 318:	10000028 	b	3bc <osProbeRumblePak+0x148>
 31c:	2402000b 	li	v0,11
 320:	0c000000 	jal	0 <osSetRumble>
 324:	24050080 	li	a1,128
 328:	24010002 	li	at,2
 32c:	14410002 	bne	v0,at,338 <osProbeRumblePak+0xc4>
 330:	00401825 	move	v1,v0
 334:	24030004 	li	v1,4
 338:	10600003 	beqz	v1,348 <osProbeRumblePak+0xd4>
 33c:	8fa40048 	lw	a0,72(sp)
 340:	1000001e 	b	3bc <osProbeRumblePak+0x148>
 344:	00601025 	move	v0,v1
 348:	8fa50050 	lw	a1,80(sp)
 34c:	24060400 	li	a2,1024
 350:	0c000000 	jal	0 <osSetRumble>
 354:	27a70024 	addiu	a3,sp,36
 358:	24010002 	li	at,2
 35c:	14410002 	bne	v0,at,368 <osProbeRumblePak+0xf4>
 360:	00401825 	move	v1,v0
 364:	24030004 	li	v1,4
 368:	10600003 	beqz	v1,378 <osProbeRumblePak+0x104>
 36c:	93a80043 	lbu	t0,67(sp)
 370:	10000012 	b	3bc <osProbeRumblePak+0x148>
 374:	00601025 	move	v0,v1
 378:	24010080 	li	at,128
 37c:	51010004 	beql	t0,at,390 <osProbeRumblePak+0x11c>
 380:	8e090000 	lw	t1,0(s0)
 384:	1000000d 	b	3bc <osProbeRumblePak+0x148>
 388:	2402000b 	li	v0,11
 38c:	8e090000 	lw	t1,0(s0)
 390:	8fa40050 	lw	a0,80(sp)
 394:	3c0d0000 	lui	t5,0x0
 398:	312a0008 	andi	t2,t1,0x8
 39c:	15400004 	bnez	t2,3b0 <osProbeRumblePak+0x13c>
 3a0:	00046180 	sll	t4,a0,0x6
 3a4:	25ad0000 	addiu	t5,t5,0
 3a8:	0c000000 	jal	0 <osSetRumble>
 3ac:	018d2821 	addu	a1,t4,t5
 3b0:	240e0008 	li	t6,8
 3b4:	ae0e0000 	sw	t6,0(s0)
 3b8:	00001025 	move	v0,zero
 3bc:	8fbf001c 	lw	ra,28(sp)
 3c0:	8fb00018 	lw	s0,24(sp)
 3c4:	27bd0048 	addiu	sp,sp,72
 3c8:	03e00008 	jr	ra
 3cc:	00000000 	nop
