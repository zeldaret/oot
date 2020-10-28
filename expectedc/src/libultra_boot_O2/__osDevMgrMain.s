
build/src/libultra_boot_O2/__osDevMgrMain.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osDevMgrMain>:
   0:	27bdff88 	addiu	sp,sp,-120
   4:	afb3002c 	sw	s3,44(sp)
   8:	afbe0040 	sw	s8,64(sp)
   c:	afb7003c 	sw	s7,60(sp)
  10:	afb60038 	sw	s6,56(sp)
  14:	afb50034 	sw	s5,52(sp)
  18:	afb40030 	sw	s4,48(sp)
  1c:	3c130500 	lui	s3,0x500
  20:	0080a025 	move	s4,a0
  24:	afbf0044 	sw	ra,68(sp)
  28:	afb20028 	sw	s2,40(sp)
  2c:	afb10024 	sw	s1,36(sp)
  30:	afb00020 	sw	s0,32(sp)
  34:	afa00074 	sw	zero,116(sp)
  38:	36730510 	ori	s3,s3,0x510
  3c:	24150024 	li	s5,36
  40:	27b60070 	addiu	s6,sp,112
  44:	24170001 	li	s7,1
  48:	241e001d 	li	s8,29
  4c:	8e840008 	lw	a0,8(s4)
  50:	27a50074 	addiu	a1,sp,116
  54:	0c000000 	jal	0 <__osDevMgrMain>
  58:	02e03025 	move	a2,s7
  5c:	8fae0074 	lw	t6,116(sp)
  60:	8fa80074 	lw	t0,116(sp)
  64:	8dc40014 	lw	a0,20(t6)
  68:	50800081 	beqzl	a0,270 <__osDevMgrMain+0x270>
  6c:	95090000 	lhu	t1,0(t0)
  70:	908f0004 	lbu	t7,4(a0)
  74:	24010002 	li	at,2
  78:	55e1007d 	bnel	t7,at,270 <__osDevMgrMain+0x270>
  7c:	95090000 	lhu	t1,0(t0)
  80:	8c820014 	lw	v0,20(a0)
  84:	24010001 	li	at,1
  88:	24900014 	addiu	s0,a0,20
  8c:	10400003 	beqz	v0,9c <__osDevMgrMain+0x9c>
  90:	27a5006c 	addiu	a1,sp,108
  94:	54410076 	bnel	v0,at,270 <__osDevMgrMain+0x270>
  98:	95090000 	lhu	t1,0(t0)
  9c:	96180006 	lhu	t8,6(s0)
  a0:	96020004 	lhu	v0,4(s0)
  a4:	2408ffff 	li	t0,-1
  a8:	03150019 	multu	t8,s5
  ac:	24010003 	li	at,3
  b0:	ae080008 	sw	t0,8(s0)
  b4:	00009025 	move	s2,zero
  b8:	02e03025 	move	a2,s7
  bc:	0000c812 	mflo	t9
  c0:	02198821 	addu	s1,s0,t9
  c4:	10410006 	beq	v0,at,e0 <__osDevMgrMain+0xe0>
  c8:	26310018 	addiu	s1,s1,24
  cc:	8e290004 	lw	t1,4(s1)
  d0:	8e2a000c 	lw	t2,12(s1)
  d4:	012a5823 	subu	t3,t1,t2
  d8:	ae2b0004 	sw	t3,4(s1)
  dc:	96020004 	lhu	v0,4(s0)
  e0:	24010002 	li	at,2
  e4:	14410007 	bne	v0,at,104 <__osDevMgrMain+0x104>
  e8:	8fac0074 	lw	t4,116(sp)
  ec:	8d8d0014 	lw	t5,20(t4)
  f0:	8dae0014 	lw	t6,20(t5)
  f4:	15c00003 	bnez	t6,104 <__osDevMgrMain+0x104>
  f8:	00000000 	nop
  fc:	10000001 	b	104 <__osDevMgrMain+0x104>
 100:	02e09025 	move	s2,s7
 104:	0c000000 	jal	0 <__osDevMgrMain>
 108:	8e840010 	lw	a0,16(s4)
 10c:	3c040010 	lui	a0,0x10
 110:	0c000000 	jal	0 <__osDevMgrMain>
 114:	34840401 	ori	a0,a0,0x401
 118:	8e060010 	lw	a2,16(s0)
 11c:	8faf0074 	lw	t7,116(sp)
 120:	3c018000 	lui	at,0x8000
 124:	00c1c025 	or	t8,a2,at
 128:	03003025 	move	a2,t8
 12c:	02602825 	move	a1,s3
 130:	0c000000 	jal	0 <__osDevMgrMain>
 134:	8de40014 	lw	a0,20(t7)
 138:	8e84000c 	lw	a0,12(s4)
 13c:	02c02825 	move	a1,s6
 140:	0c000000 	jal	0 <__osDevMgrMain>
 144:	02e03025 	move	a2,s7
 148:	8fb90074 	lw	t9,116(sp)
 14c:	8f240014 	lw	a0,20(t9)
 150:	24900014 	addiu	s0,a0,20
 154:	96080006 	lhu	t0,6(s0)
 158:	01150019 	multu	t0,s5
 15c:	00004812 	mflo	t1
 160:	02098821 	addu	s1,s0,t1
 164:	8e2a0018 	lw	t2,24(s1)
 168:	26310018 	addiu	s1,s1,24
 16c:	57ca0027 	bnel	s8,t2,20c <__osDevMgrMain+0x20c>
 170:	8fa50074 	lw	a1,116(sp)
 174:	8e060010 	lw	a2,16(s0)
 178:	3c011000 	lui	at,0x1000
 17c:	02602825 	move	a1,s3
 180:	00c15825 	or	t3,a2,at
 184:	0c000000 	jal	0 <__osDevMgrMain>
 188:	01603025 	move	a2,t3
 18c:	8fac0074 	lw	t4,116(sp)
 190:	02602825 	move	a1,s3
 194:	8e060010 	lw	a2,16(s0)
 198:	0c000000 	jal	0 <__osDevMgrMain>
 19c:	8d840014 	lw	a0,20(t4)
 1a0:	8fad0074 	lw	t5,116(sp)
 1a4:	3c050500 	lui	a1,0x500
 1a8:	34a50508 	ori	a1,a1,0x508
 1ac:	27a60054 	addiu	a2,sp,84
 1b0:	0c000000 	jal	0 <__osDevMgrMain>
 1b4:	8da40014 	lw	a0,20(t5)
 1b8:	8fae0054 	lw	t6,84(sp)
 1bc:	8fb80074 	lw	t8,116(sp)
 1c0:	02602825 	move	a1,s3
 1c4:	000e7980 	sll	t7,t6,0x6
 1c8:	05e30008 	bgezl	t7,1ec <__osDevMgrMain+0x1ec>
 1cc:	24080004 	li	t0,4
 1d0:	8e060010 	lw	a2,16(s0)
 1d4:	3c010100 	lui	at,0x100
 1d8:	8f040014 	lw	a0,20(t8)
 1dc:	00c1c825 	or	t9,a2,at
 1e0:	0c000000 	jal	0 <__osDevMgrMain>
 1e4:	03203025 	move	a2,t9
 1e8:	24080004 	li	t0,4
 1ec:	ae280000 	sw	t0,0(s1)
 1f0:	24090002 	li	t1,2
 1f4:	3c0aa460 	lui	t2,0xa460
 1f8:	3c040010 	lui	a0,0x10
 1fc:	ad490010 	sw	t1,16(t2)
 200:	0c000000 	jal	0 <__osDevMgrMain>
 204:	34840c01 	ori	a0,a0,0xc01
 208:	8fa50074 	lw	a1,116(sp)
 20c:	00003025 	move	a2,zero
 210:	0c000000 	jal	0 <__osDevMgrMain>
 214:	8ca40004 	lw	a0,4(a1)
 218:	16570007 	bne	s2,s7,238 <__osDevMgrMain+0x238>
 21c:	8fac0074 	lw	t4,116(sp)
 220:	8d8d0014 	lw	t5,20(t4)
 224:	8dae002c 	lw	t6,44(t5)
 228:	55c00004 	bnezl	t6,23c <__osDevMgrMain+0x23c>
 22c:	8e840010 	lw	a0,16(s4)
 230:	1000ffc1 	b	138 <__osDevMgrMain+0x138>
 234:	00009025 	move	s2,zero
 238:	8e840010 	lw	a0,16(s4)
 23c:	00002825 	move	a1,zero
 240:	0c000000 	jal	0 <__osDevMgrMain>
 244:	00003025 	move	a2,zero
 248:	8faf0074 	lw	t7,116(sp)
 24c:	8df80014 	lw	t8,20(t7)
 250:	9719001a 	lhu	t9,26(t8)
 254:	56f9ff7e 	bnel	s7,t9,50 <__osDevMgrMain+0x50>
 258:	8e840008 	lw	a0,8(s4)
 25c:	0c000000 	jal	0 <__osDevMgrMain>
 260:	00000000 	nop
 264:	1000ff7a 	b	50 <__osDevMgrMain+0x50>
 268:	8e840008 	lw	a0,8(s4)
 26c:	95090000 	lhu	t1,0(t0)
 270:	252afff6 	addiu	t2,t1,-10
 274:	2d410007 	sltiu	at,t2,7
 278:	10200047 	beqz	at,398 <__osDevMgrMain+0x398>
 27c:	000a5080 	sll	t2,t2,0x2
 280:	3c010000 	lui	at,0x0
 284:	002a0821 	addu	at,at,t2
 288:	8c2a0000 	lw	t2,0(at)
 28c:	01400008 	jr	t2
 290:	00000000 	nop
 294:	8e840010 	lw	a0,16(s4)
 298:	27a5006c 	addiu	a1,sp,108
 29c:	0c000000 	jal	0 <__osDevMgrMain>
 2a0:	02e03025 	move	a2,s7
 2a4:	8fab0074 	lw	t3,116(sp)
 2a8:	8e990014 	lw	t9,20(s4)
 2ac:	00002025 	move	a0,zero
 2b0:	8d65000c 	lw	a1,12(t3)
 2b4:	8d660008 	lw	a2,8(t3)
 2b8:	0320f809 	jalr	t9
 2bc:	8d670010 	lw	a3,16(t3)
 2c0:	10000036 	b	39c <__osDevMgrMain+0x39c>
 2c4:	00408025 	move	s0,v0
 2c8:	8e840010 	lw	a0,16(s4)
 2cc:	27a5006c 	addiu	a1,sp,108
 2d0:	0c000000 	jal	0 <__osDevMgrMain>
 2d4:	02e03025 	move	a2,s7
 2d8:	8fac0074 	lw	t4,116(sp)
 2dc:	8e990014 	lw	t9,20(s4)
 2e0:	02e02025 	move	a0,s7
 2e4:	8d85000c 	lw	a1,12(t4)
 2e8:	8d860008 	lw	a2,8(t4)
 2ec:	0320f809 	jalr	t9
 2f0:	8d870010 	lw	a3,16(t4)
 2f4:	10000029 	b	39c <__osDevMgrMain+0x39c>
 2f8:	00408025 	move	s0,v0
 2fc:	8e840010 	lw	a0,16(s4)
 300:	27a5006c 	addiu	a1,sp,108
 304:	0c000000 	jal	0 <__osDevMgrMain>
 308:	02e03025 	move	a2,s7
 30c:	8fad0074 	lw	t5,116(sp)
 310:	00002825 	move	a1,zero
 314:	8dae0010 	lw	t6,16(t5)
 318:	8da40014 	lw	a0,20(t5)
 31c:	8da6000c 	lw	a2,12(t5)
 320:	8da70008 	lw	a3,8(t5)
 324:	afae0010 	sw	t6,16(sp)
 328:	8e990018 	lw	t9,24(s4)
 32c:	0320f809 	jalr	t9
 330:	00000000 	nop
 334:	10000019 	b	39c <__osDevMgrMain+0x39c>
 338:	00408025 	move	s0,v0
 33c:	8e840010 	lw	a0,16(s4)
 340:	27a5006c 	addiu	a1,sp,108
 344:	0c000000 	jal	0 <__osDevMgrMain>
 348:	02e03025 	move	a2,s7
 34c:	8faf0074 	lw	t7,116(sp)
 350:	02e02825 	move	a1,s7
 354:	8df80010 	lw	t8,16(t7)
 358:	8de40014 	lw	a0,20(t7)
 35c:	8de6000c 	lw	a2,12(t7)
 360:	8de70008 	lw	a3,8(t7)
 364:	afb80010 	sw	t8,16(sp)
 368:	8e990018 	lw	t9,24(s4)
 36c:	0320f809 	jalr	t9
 370:	00000000 	nop
 374:	10000009 	b	39c <__osDevMgrMain+0x39c>
 378:	00408025 	move	s0,v0
 37c:	8fa50074 	lw	a1,116(sp)
 380:	00003025 	move	a2,zero
 384:	2410ffff 	li	s0,-1
 388:	0c000000 	jal	0 <__osDevMgrMain>
 38c:	8ca40004 	lw	a0,4(a1)
 390:	10000002 	b	39c <__osDevMgrMain+0x39c>
 394:	00000000 	nop
 398:	2410ffff 	li	s0,-1
 39c:	1600ff2b 	bnez	s0,4c <__osDevMgrMain+0x4c>
 3a0:	02c02825 	move	a1,s6
 3a4:	8e84000c 	lw	a0,12(s4)
 3a8:	0c000000 	jal	0 <__osDevMgrMain>
 3ac:	02e03025 	move	a2,s7
 3b0:	8fa50074 	lw	a1,116(sp)
 3b4:	00003025 	move	a2,zero
 3b8:	0c000000 	jal	0 <__osDevMgrMain>
 3bc:	8ca40004 	lw	a0,4(a1)
 3c0:	8e840010 	lw	a0,16(s4)
 3c4:	00002825 	move	a1,zero
 3c8:	0c000000 	jal	0 <__osDevMgrMain>
 3cc:	00003025 	move	a2,zero
 3d0:	1000ff1f 	b	50 <__osDevMgrMain+0x50>
 3d4:	8e840008 	lw	a0,8(s4)
	...
 3e0:	8fbf0044 	lw	ra,68(sp)
 3e4:	8fb00020 	lw	s0,32(sp)
 3e8:	8fb10024 	lw	s1,36(sp)
 3ec:	8fb20028 	lw	s2,40(sp)
 3f0:	8fb3002c 	lw	s3,44(sp)
 3f4:	8fb40030 	lw	s4,48(sp)
 3f8:	8fb50034 	lw	s5,52(sp)
 3fc:	8fb60038 	lw	s6,56(sp)
 400:	8fb7003c 	lw	s7,60(sp)
 404:	8fbe0040 	lw	s8,64(sp)
 408:	03e00008 	jr	ra
 40c:	27bd0078 	addiu	sp,sp,120
