
build/src/code/audioMgr.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800C3C80>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	8c820070 	lw	v0,112(a0)
   c:	00002825 	move	a1,zero
  10:	24060001 	li	a2,1
  14:	8c4e0040 	lw	t6,64(v0)
  18:	51c00004 	beqzl	t6,2c <func_800C3C80+0x2c>
  1c:	8fbf0014 	lw	ra,20(sp)
  20:	0c000000 	jal	0 <func_800C3C80>
  24:	8c440040 	lw	a0,64(v0)
  28:	8fbf0014 	lw	ra,20(sp)
  2c:	27bd0018 	addiu	sp,sp,24
  30:	03e00008 	jr	ra
  34:	00000000 	nop

00000038 <AudioMgr_HandleRetrace>:
  38:	3c0e0000 	lui	t6,0x0
  3c:	8dce0000 	lw	t6,0(t6)
  40:	27bdffd8 	addiu	sp,sp,-40
  44:	afbf001c 	sw	ra,28(sp)
  48:	afb00018 	sw	s0,24(sp)
  4c:	85cf00fc 	lh	t7,252(t6)
  50:	00808025 	move	s0,a0
  54:	24180002 	li	t8,2
  58:	19e00002 	blez	t7,64 <AudioMgr_HandleRetrace+0x2c>
  5c:	02005025 	move	t2,s0
  60:	ac800070 	sw	zero,112(a0)
  64:	8e020070 	lw	v0,112(s0)
  68:	260c00ac 	addiu	t4,s0,172
  6c:	10400019 	beqz	v0,d4 <AudioMgr_HandleRetrace+0x9c>
  70:	00404825 	move	t1,v0
  74:	ae000008 	sw	zero,8(s0)
  78:	ae180010 	sw	t8,16(s0)
  7c:	ae000014 	sw	zero,20(s0)
  80:	244b003c 	addiu	t3,v0,60
  84:	8d280000 	lw	t0,0(t1)
  88:	2529000c 	addiu	t1,t1,12
  8c:	254a000c 	addiu	t2,t2,12
  90:	ad48000c 	sw	t0,12(t2)
  94:	8d39fff8 	lw	t9,-8(t1)
  98:	ad590010 	sw	t9,16(t2)
  9c:	8d28fffc 	lw	t0,-4(t1)
  a0:	152bfff8 	bne	t1,t3,84 <AudioMgr_HandleRetrace+0x4c>
  a4:	ad480014 	sw	t0,20(t2)
  a8:	8d280000 	lw	t0,0(t1)
  ac:	26050008 	addiu	a1,s0,8
  b0:	24060001 	li	a2,1
  b4:	ad480018 	sw	t0,24(t2)
  b8:	8e040004 	lw	a0,4(s0)
  bc:	ae0c0058 	sw	t4,88(s0)
  c0:	ae00005c 	sw	zero,92(s0)
  c4:	0c000000 	jal	0 <func_800C3C80>
  c8:	24840038 	addiu	a0,a0,56
  cc:	0c000000 	jal	0 <func_800C3C80>
  d0:	8e040004 	lw	a0,4(s0)
  d4:	0c000000 	jal	0 <func_800C3C80>
  d8:	00000000 	nop
  dc:	3c0d0000 	lui	t5,0x0
  e0:	25ad0000 	addiu	t5,t5,0
  e4:	ada20000 	sw	v0,0(t5)
  e8:	ada30004 	sw	v1,4(t5)
  ec:	3c0e0000 	lui	t6,0x0
  f0:	8dce0000 	lw	t6,0(t6)
  f4:	85cf00fc 	lh	t7,252(t6)
  f8:	29e10002 	slti	at,t7,2
  fc:	14200003 	bnez	at,10c <AudioMgr_HandleRetrace+0xd4>
 100:	00000000 	nop
 104:	10000004 	b	118 <AudioMgr_HandleRetrace+0xe0>
 108:	afa00024 	sw	zero,36(sp)
 10c:	0c000000 	jal	0 <func_800C3C80>
 110:	00000000 	nop
 114:	afa20024 	sw	v0,36(sp)
 118:	0c000000 	jal	0 <func_800C3C80>
 11c:	00000000 	nop
 120:	3c180000 	lui	t8,0x0
 124:	27180000 	addiu	t8,t8,0
 128:	8f0a0000 	lw	t2,0(t8)
 12c:	8f0b0004 	lw	t3,4(t8)
 130:	3c190000 	lui	t9,0x0
 134:	27390000 	addiu	t9,t9,0
 138:	8f2c0000 	lw	t4,0(t9)
 13c:	8f2d0004 	lw	t5,4(t9)
 140:	004a4023 	subu	t0,v0,t2
 144:	006b082b 	sltu	at,v1,t3
 148:	006b4823 	subu	t1,v1,t3
 14c:	01014023 	subu	t0,t0,at
 150:	012d7821 	addu	t7,t1,t5
 154:	01ed082b 	sltu	at,t7,t5
 158:	00287021 	addu	t6,at,t0
 15c:	3c010000 	lui	at,0x0
 160:	01cc7021 	addu	t6,t6,t4
 164:	ac2e0000 	sw	t6,0(at)
 168:	3c010000 	lui	at,0x0
 16c:	ac2f0004 	sw	t7,4(at)
 170:	240a0000 	li	t2,0
 174:	af0a0000 	sw	t2,0(t8)
 178:	240b0000 	li	t3,0
 17c:	af0b0004 	sw	t3,4(t8)
 180:	8e190070 	lw	t9,112(s0)
 184:	260400ac 	addiu	a0,s0,172
 188:	00002825 	move	a1,zero
 18c:	53200006 	beqzl	t9,1a8 <AudioMgr_HandleRetrace+0x170>
 190:	8fa80024 	lw	t0,36(sp)
 194:	0c000000 	jal	0 <func_800C3C80>
 198:	24060001 	li	a2,1
 19c:	0c000000 	jal	0 <func_800C3C80>
 1a0:	02002025 	move	a0,s0
 1a4:	8fa80024 	lw	t0,36(sp)
 1a8:	ae080070 	sw	t0,112(s0)
 1ac:	8fbf001c 	lw	ra,28(sp)
 1b0:	8fb00018 	lw	s0,24(sp)
 1b4:	27bd0028 	addiu	sp,sp,40
 1b8:	03e00008 	jr	ra
 1bc:	00000000 	nop

000001c0 <AudioMgr_HandlePRENMI>:
 1c0:	27bdffe8 	addiu	sp,sp,-24
 1c4:	afa40018 	sw	a0,24(sp)
 1c8:	afbf0014 	sw	ra,20(sp)
 1cc:	3c040000 	lui	a0,0x0
 1d0:	0c000000 	jal	0 <func_800C3C80>
 1d4:	24840000 	addiu	a0,a0,0
 1d8:	0c000000 	jal	0 <func_800C3C80>
 1dc:	00000000 	nop
 1e0:	8fbf0014 	lw	ra,20(sp)
 1e4:	27bd0018 	addiu	sp,sp,24
 1e8:	03e00008 	jr	ra
 1ec:	00000000 	nop

000001f0 <AudioMgr_ThreadEntry>:
 1f0:	27bdffb8 	addiu	sp,sp,-72
 1f4:	afb50028 	sw	s5,40(sp)
 1f8:	afb00014 	sw	s0,20(sp)
 1fc:	00808025 	move	s0,a0
 200:	0080a825 	move	s5,a0
 204:	afbf002c 	sw	ra,44(sp)
 208:	3c040000 	lui	a0,0x0
 20c:	afb40024 	sw	s4,36(sp)
 210:	afb30020 	sw	s3,32(sp)
 214:	afb2001c 	sw	s2,28(sp)
 218:	afb10018 	sw	s1,24(sp)
 21c:	afa00038 	sw	zero,56(sp)
 220:	0c000000 	jal	0 <func_800C3C80>
 224:	2484003c 	addiu	a0,a0,60
 228:	0c000000 	jal	0 <func_800C3C80>
 22c:	00000000 	nop
 230:	3c040000 	lui	a0,0x0
 234:	0c000000 	jal	0 <func_800C3C80>
 238:	24840000 	addiu	a0,a0,0
 23c:	0c000000 	jal	0 <func_800C3C80>
 240:	00000000 	nop
 244:	260400c8 	addiu	a0,s0,200
 248:	00002825 	move	a1,zero
 24c:	0c000000 	jal	0 <func_800C3C80>
 250:	24060001 	li	a2,1
 254:	26140074 	addiu	s4,s0,116
 258:	02803025 	move	a2,s4
 25c:	8e040000 	lw	a0,0(s0)
 260:	0c000000 	jal	0 <func_800C3C80>
 264:	27a5003c 	addiu	a1,sp,60
 268:	24130004 	li	s3,4
 26c:	24120001 	li	s2,1
 270:	27b10038 	addiu	s1,sp,56
 274:	02802025 	move	a0,s4
 278:	02202825 	move	a1,s1
 27c:	0c000000 	jal	0 <func_800C3C80>
 280:	02403025 	move	a2,s2
 284:	8fae0038 	lw	t6,56(sp)
 288:	85c20000 	lh	v0,0(t6)
 28c:	10520005 	beq	v0,s2,2a4 <AudioMgr_ThreadEntry+0xb4>
 290:	00000000 	nop
 294:	10530019 	beq	v0,s3,2fc <AudioMgr_ThreadEntry+0x10c>
 298:	00000000 	nop
 29c:	1000fff6 	b	278 <AudioMgr_ThreadEntry+0x88>
 2a0:	02802025 	move	a0,s4
 2a4:	0c000000 	jal	0 <func_800C3C80>
 2a8:	02002025 	move	a0,s0
 2ac:	8e0f007c 	lw	t7,124(s0)
 2b0:	51e0fff1 	beqzl	t7,278 <AudioMgr_ThreadEntry+0x88>
 2b4:	02802025 	move	a0,s4
 2b8:	02802025 	move	a0,s4
 2bc:	02202825 	move	a1,s1
 2c0:	0c000000 	jal	0 <func_800C3C80>
 2c4:	02403025 	move	a2,s2
 2c8:	8fb80038 	lw	t8,56(sp)
 2cc:	87020000 	lh	v0,0(t8)
 2d0:	50520006 	beql	v0,s2,2ec <AudioMgr_ThreadEntry+0xfc>
 2d4:	8eb9007c 	lw	t9,124(s5)
 2d8:	54530004 	bnel	v0,s3,2ec <AudioMgr_ThreadEntry+0xfc>
 2dc:	8eb9007c 	lw	t9,124(s5)
 2e0:	0c000000 	jal	0 <func_800C3C80>
 2e4:	02002025 	move	a0,s0
 2e8:	8eb9007c 	lw	t9,124(s5)
 2ec:	5720fff3 	bnezl	t9,2bc <AudioMgr_ThreadEntry+0xcc>
 2f0:	02802025 	move	a0,s4
 2f4:	1000ffe0 	b	278 <AudioMgr_ThreadEntry+0x88>
 2f8:	02802025 	move	a0,s4
 2fc:	0c000000 	jal	0 <func_800C3C80>
 300:	02002025 	move	a0,s0
 304:	1000ffdc 	b	278 <AudioMgr_ThreadEntry+0x88>
 308:	02802025 	move	a0,s4
	...
 320:	8fbf002c 	lw	ra,44(sp)
 324:	8fb00014 	lw	s0,20(sp)
 328:	8fb10018 	lw	s1,24(sp)
 32c:	8fb2001c 	lw	s2,28(sp)
 330:	8fb30020 	lw	s3,32(sp)
 334:	8fb40024 	lw	s4,36(sp)
 338:	8fb50028 	lw	s5,40(sp)
 33c:	03e00008 	jr	ra
 340:	27bd0048 	addiu	sp,sp,72

00000344 <AudioMgr_Unlock>:
 344:	27bdffe8 	addiu	sp,sp,-24
 348:	afbf0014 	sw	ra,20(sp)
 34c:	248400c8 	addiu	a0,a0,200
 350:	00002825 	move	a1,zero
 354:	0c000000 	jal	0 <func_800C3C80>
 358:	24060001 	li	a2,1
 35c:	8fbf0014 	lw	ra,20(sp)
 360:	27bd0018 	addiu	sp,sp,24
 364:	03e00008 	jr	ra
 368:	00000000 	nop

0000036c <AudioMgr_Init>:
 36c:	27bdffd0 	addiu	sp,sp,-48
 370:	afbf0024 	sw	ra,36(sp)
 374:	afb00020 	sw	s0,32(sp)
 378:	afa50034 	sw	a1,52(sp)
 37c:	00808025 	move	s0,a0
 380:	afa60038 	sw	a2,56(sp)
 384:	afa7003c 	sw	a3,60(sp)
 388:	0c000000 	jal	0 <func_800C3C80>
 38c:	24050298 	li	a1,664
 390:	8fae0040 	lw	t6,64(sp)
 394:	260400ac 	addiu	a0,s0,172
 398:	260500c4 	addiu	a1,s0,196
 39c:	ae0e0004 	sw	t6,4(s0)
 3a0:	8faf0044 	lw	t7,68(sp)
 3a4:	ae000070 	sw	zero,112(s0)
 3a8:	24060001 	li	a2,1
 3ac:	ae0f0000 	sw	t7,0(s0)
 3b0:	0c000000 	jal	0 <func_800C3C80>
 3b4:	afa4002c 	sw	a0,44(sp)
 3b8:	26040074 	addiu	a0,s0,116
 3bc:	2605008c 	addiu	a1,s0,140
 3c0:	0c000000 	jal	0 <func_800C3C80>
 3c4:	24060008 	li	a2,8
 3c8:	260400c8 	addiu	a0,s0,200
 3cc:	260500e0 	addiu	a1,s0,224
 3d0:	0c000000 	jal	0 <func_800C3C80>
 3d4:	24060001 	li	a2,1
 3d8:	8fa4002c 	lw	a0,44(sp)
 3dc:	00002825 	move	a1,zero
 3e0:	0c000000 	jal	0 <func_800C3C80>
 3e4:	24060001 	li	a2,1
 3e8:	8fb80034 	lw	t8,52(sp)
 3ec:	8fb90038 	lw	t9,56(sp)
 3f0:	260400e8 	addiu	a0,s0,232
 3f4:	3c060000 	lui	a2,0x0
 3f8:	24c60000 	addiu	a2,a2,0
 3fc:	afa4002c 	sw	a0,44(sp)
 400:	8fa5003c 	lw	a1,60(sp)
 404:	02003825 	move	a3,s0
 408:	afb80010 	sw	t8,16(sp)
 40c:	0c000000 	jal	0 <func_800C3C80>
 410:	afb90014 	sw	t9,20(sp)
 414:	0c000000 	jal	0 <func_800C3C80>
 418:	8fa4002c 	lw	a0,44(sp)
 41c:	8fbf0024 	lw	ra,36(sp)
 420:	8fb00020 	lw	s0,32(sp)
 424:	27bd0030 	addiu	sp,sp,48
 428:	03e00008 	jr	ra
 42c:	00000000 	nop
