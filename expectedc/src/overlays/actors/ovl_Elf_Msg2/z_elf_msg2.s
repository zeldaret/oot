
build/src/overlays/actors/ovl_Elf_Msg2/z_elf_msg2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ElfMsg2_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac85014c 	sw	a1,332(a0)

00000008 <ElfMsg2_KillCheck>:
   8:	27bdffe8 	addiu	sp,sp,-24
   c:	afbf0014 	sw	ra,20(sp)
  10:	afa40018 	sw	a0,24(sp)
  14:	afa5001c 	sw	a1,28(sp)
  18:	84820032 	lh	v0,50(a0)
  1c:	1840001c 	blez	v0,90 <ElfMsg2_KillCheck+0x88>
  20:	28410041 	slti	at,v0,65
  24:	1020001a 	beqz	at,90 <ElfMsg2_KillCheck+0x88>
  28:	00a02025 	move	a0,a1
  2c:	0c000000 	jal	0 <ElfMsg2_SetupAction>
  30:	2445ffff 	addiu	a1,v0,-1
  34:	10400016 	beqz	v0,90 <ElfMsg2_KillCheck+0x88>
  38:	3c040000 	lui	a0,0x0
  3c:	24840000 	addiu	a0,a0,0
  40:	0c000000 	jal	0 <ElfMsg2_SetupAction>
  44:	240500ab 	li	a1,171
  48:	3c040000 	lui	a0,0x0
  4c:	3c050000 	lui	a1,0x0
  50:	24a50020 	addiu	a1,a1,32
  54:	0c000000 	jal	0 <ElfMsg2_SetupAction>
  58:	24840010 	addiu	a0,a0,16
  5c:	8faf0018 	lw	t7,24(sp)
  60:	2401003f 	li	at,63
  64:	85e5001c 	lh	a1,28(t7)
  68:	00052a03 	sra	a1,a1,0x8
  6c:	30a5003f 	andi	a1,a1,0x3f
  70:	10a10003 	beq	a1,at,80 <ElfMsg2_KillCheck+0x78>
  74:	00000000 	nop
  78:	0c000000 	jal	0 <ElfMsg2_SetupAction>
  7c:	8fa4001c 	lw	a0,28(sp)
  80:	0c000000 	jal	0 <ElfMsg2_SetupAction>
  84:	8fa40018 	lw	a0,24(sp)
  88:	1000003a 	b	174 <ElfMsg2_KillCheck+0x16c>
  8c:	24020001 	li	v0,1
  90:	8fb80018 	lw	t8,24(sp)
  94:	2401ffff 	li	at,-1
  98:	8fa4001c 	lw	a0,28(sp)
  9c:	87190032 	lh	t9,50(t8)
  a0:	5721001b 	bnel	t9,at,110 <ElfMsg2_KillCheck+0x108>
  a4:	8fa90018 	lw	t1,24(sp)
  a8:	0c000000 	jal	0 <ElfMsg2_SetupAction>
  ac:	83050003 	lb	a1,3(t8)
  b0:	10400016 	beqz	v0,10c <ElfMsg2_KillCheck+0x104>
  b4:	3c040000 	lui	a0,0x0
  b8:	24840028 	addiu	a0,a0,40
  bc:	0c000000 	jal	0 <ElfMsg2_SetupAction>
  c0:	240500b6 	li	a1,182
  c4:	3c040000 	lui	a0,0x0
  c8:	3c050000 	lui	a1,0x0
  cc:	24a5004c 	addiu	a1,a1,76
  d0:	0c000000 	jal	0 <ElfMsg2_SetupAction>
  d4:	24840038 	addiu	a0,a0,56
  d8:	8fa80018 	lw	t0,24(sp)
  dc:	2401003f 	li	at,63
  e0:	8505001c 	lh	a1,28(t0)
  e4:	00052a03 	sra	a1,a1,0x8
  e8:	30a5003f 	andi	a1,a1,0x3f
  ec:	10a10003 	beq	a1,at,fc <ElfMsg2_KillCheck+0xf4>
  f0:	00000000 	nop
  f4:	0c000000 	jal	0 <ElfMsg2_SetupAction>
  f8:	8fa4001c 	lw	a0,28(sp)
  fc:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 100:	8fa40018 	lw	a0,24(sp)
 104:	1000001b 	b	174 <ElfMsg2_KillCheck+0x16c>
 108:	24020001 	li	v0,1
 10c:	8fa90018 	lw	t1,24(sp)
 110:	2401003f 	li	at,63
 114:	8525001c 	lh	a1,28(t1)
 118:	00052a03 	sra	a1,a1,0x8
 11c:	30a5003f 	andi	a1,a1,0x3f
 120:	14a10003 	bne	a1,at,130 <ElfMsg2_KillCheck+0x128>
 124:	00000000 	nop
 128:	10000012 	b	174 <ElfMsg2_KillCheck+0x16c>
 12c:	00001025 	move	v0,zero
 130:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 134:	8fa4001c 	lw	a0,28(sp)
 138:	1040000d 	beqz	v0,170 <ElfMsg2_KillCheck+0x168>
 13c:	3c040000 	lui	a0,0x0
 140:	24840058 	addiu	a0,a0,88
 144:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 148:	240500c0 	li	a1,192
 14c:	3c040000 	lui	a0,0x0
 150:	3c050000 	lui	a1,0x0
 154:	24a50078 	addiu	a1,a1,120
 158:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 15c:	24840068 	addiu	a0,a0,104
 160:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 164:	8fa40018 	lw	a0,24(sp)
 168:	10000002 	b	174 <ElfMsg2_KillCheck+0x16c>
 16c:	24020001 	li	v0,1
 170:	00001025 	move	v0,zero
 174:	8fbf0014 	lw	ra,20(sp)
 178:	27bd0018 	addiu	sp,sp,24
 17c:	03e00008 	jr	ra
 180:	00000000 	nop

00000184 <ElfMsg2_Init>:
 184:	27bdffe0 	addiu	sp,sp,-32
 188:	afb00018 	sw	s0,24(sp)
 18c:	00808025 	move	s0,a0
 190:	afbf001c 	sw	ra,28(sp)
 194:	afa50024 	sw	a1,36(sp)
 198:	3c040000 	lui	a0,0x0
 19c:	24840080 	addiu	a0,a0,128
 1a0:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 1a4:	8605001c 	lh	a1,28(s0)
 1a8:	02002025 	move	a0,s0
 1ac:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 1b0:	8fa50024 	lw	a1,36(sp)
 1b4:	14400024 	bnez	v0,248 <ElfMsg2_Init+0xc4>
 1b8:	02002025 	move	a0,s0
 1bc:	86020030 	lh	v0,48(s0)
 1c0:	3c050000 	lui	a1,0x0
 1c4:	18400004 	blez	v0,1d8 <ElfMsg2_Init+0x54>
 1c8:	28410008 	slti	at,v0,8
 1cc:	10200002 	beqz	at,1d8 <ElfMsg2_Init+0x54>
 1d0:	244effff 	addiu	t6,v0,-1
 1d4:	a20e001f 	sb	t6,31(s0)
 1d8:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 1dc:	24a50020 	addiu	a1,a1,32
 1e0:	860f0032 	lh	t7,50(s0)
 1e4:	02002025 	move	a0,s0
 1e8:	3c050000 	lui	a1,0x0
 1ec:	29e10041 	slti	at,t7,65
 1f0:	14200007 	bnez	at,210 <ElfMsg2_Init+0x8c>
 1f4:	00000000 	nop
 1f8:	3c050000 	lui	a1,0x0
 1fc:	24a50000 	addiu	a1,a1,0
 200:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 204:	02002025 	move	a0,s0
 208:	1000000c 	b	23c <ElfMsg2_Init+0xb8>
 20c:	a60000b8 	sh	zero,184(s0)
 210:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 214:	24a50000 	addiu	a1,a1,0
 218:	8e180004 	lw	t8,4(s0)
 21c:	3c010004 	lui	at,0x4
 220:	34210001 	ori	at,at,0x1
 224:	0301c825 	or	t9,t8,at
 228:	ae190004 	sw	t9,4(s0)
 22c:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 230:	02002025 	move	a0,s0
 234:	a602010e 	sh	v0,270(s0)
 238:	a60000b8 	sh	zero,184(s0)
 23c:	860200b8 	lh	v0,184(s0)
 240:	a60200b6 	sh	v0,182(s0)
 244:	a60200b4 	sh	v0,180(s0)
 248:	8fbf001c 	lw	ra,28(sp)
 24c:	8fb00018 	lw	s0,24(sp)
 250:	27bd0020 	addiu	sp,sp,32
 254:	03e00008 	jr	ra
 258:	00000000 	nop

0000025c <ElfMsg2_Destroy>:
 25c:	afa40000 	sw	a0,0(sp)
 260:	03e00008 	jr	ra
 264:	afa50004 	sw	a1,4(sp)

00000268 <ElfMsg2_GetMessageId>:
 268:	8482001c 	lh	v0,28(a0)
 26c:	304200ff 	andi	v0,v0,0xff
 270:	03e00008 	jr	ra
 274:	24420100 	addiu	v0,v0,256

00000278 <ElfMsg2_WaitForTextClose>:
 278:	27bdffe8 	addiu	sp,sp,-24
 27c:	afbf0014 	sw	ra,20(sp)
 280:	afa5001c 	sw	a1,28(sp)
 284:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 288:	afa40018 	sw	a0,24(sp)
 28c:	10400015 	beqz	v0,2e4 <ElfMsg2_WaitForTextClose+0x6c>
 290:	8fa40018 	lw	a0,24(sp)
 294:	848e0034 	lh	t6,52(a0)
 298:	24010001 	li	at,1
 29c:	3c050000 	lui	a1,0x0
 2a0:	11c1000e 	beq	t6,at,2dc <ElfMsg2_WaitForTextClose+0x64>
 2a4:	00000000 	nop
 2a8:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 2ac:	afa40018 	sw	a0,24(sp)
 2b0:	8fa40018 	lw	a0,24(sp)
 2b4:	2401003f 	li	at,63
 2b8:	8485001c 	lh	a1,28(a0)
 2bc:	00052a03 	sra	a1,a1,0x8
 2c0:	30a5003f 	andi	a1,a1,0x3f
 2c4:	50a10008 	beql	a1,at,2e8 <ElfMsg2_WaitForTextClose+0x70>
 2c8:	8fbf0014 	lw	ra,20(sp)
 2cc:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 2d0:	8fa4001c 	lw	a0,28(sp)
 2d4:	10000004 	b	2e8 <ElfMsg2_WaitForTextClose+0x70>
 2d8:	8fbf0014 	lw	ra,20(sp)
 2dc:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 2e0:	24a50000 	addiu	a1,a1,0
 2e4:	8fbf0014 	lw	ra,20(sp)
 2e8:	27bd0018 	addiu	sp,sp,24
 2ec:	03e00008 	jr	ra
 2f0:	00000000 	nop

000002f4 <ElfMsg2_WaitForTextRead>:
 2f4:	27bdffe8 	addiu	sp,sp,-24
 2f8:	afbf0014 	sw	ra,20(sp)
 2fc:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 300:	afa40018 	sw	a0,24(sp)
 304:	10400004 	beqz	v0,318 <ElfMsg2_WaitForTextRead+0x24>
 308:	8fa40018 	lw	a0,24(sp)
 30c:	3c050000 	lui	a1,0x0
 310:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 314:	24a50000 	addiu	a1,a1,0
 318:	8fbf0014 	lw	ra,20(sp)
 31c:	27bd0018 	addiu	sp,sp,24
 320:	03e00008 	jr	ra
 324:	00000000 	nop

00000328 <ElfMsg2_WaitUntilActivated>:
 328:	27bdffe0 	addiu	sp,sp,-32
 32c:	afbf001c 	sw	ra,28(sp)
 330:	afb00018 	sw	s0,24(sp)
 334:	84820032 	lh	v0,50(a0)
 338:	00808025 	move	s0,a0
 33c:	28410041 	slti	at,v0,65
 340:	14200012 	bnez	at,38c <ElfMsg2_WaitUntilActivated+0x64>
 344:	28410081 	slti	at,v0,129
 348:	10200010 	beqz	at,38c <ElfMsg2_WaitUntilActivated+0x64>
 34c:	00a02025 	move	a0,a1
 350:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 354:	2445ffbf 	addiu	a1,v0,-65
 358:	1040000c 	beqz	v0,38c <ElfMsg2_WaitUntilActivated+0x64>
 35c:	02002025 	move	a0,s0
 360:	3c050000 	lui	a1,0x0
 364:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 368:	24a50000 	addiu	a1,a1,0
 36c:	8e0e0004 	lw	t6,4(s0)
 370:	3c010004 	lui	at,0x4
 374:	34210001 	ori	at,at,0x1
 378:	01c17825 	or	t7,t6,at
 37c:	ae0f0004 	sw	t7,4(s0)
 380:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 384:	02002025 	move	a0,s0
 388:	a602010e 	sh	v0,270(s0)
 38c:	8fbf001c 	lw	ra,28(sp)
 390:	8fb00018 	lw	s0,24(sp)
 394:	27bd0020 	addiu	sp,sp,32
 398:	03e00008 	jr	ra
 39c:	00000000 	nop

000003a0 <ElfMsg2_Update>:
 3a0:	27bdffe8 	addiu	sp,sp,-24
 3a4:	afbf0014 	sw	ra,20(sp)
 3a8:	afa5001c 	sw	a1,28(sp)
 3ac:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 3b0:	afa40018 	sw	a0,24(sp)
 3b4:	14400005 	bnez	v0,3cc <ElfMsg2_Update+0x2c>
 3b8:	8fa40018 	lw	a0,24(sp)
 3bc:	8c99014c 	lw	t9,332(a0)
 3c0:	8fa5001c 	lw	a1,28(sp)
 3c4:	0320f809 	jalr	t9
 3c8:	00000000 	nop
 3cc:	8fbf0014 	lw	ra,20(sp)
 3d0:	27bd0018 	addiu	sp,sp,24
 3d4:	03e00008 	jr	ra
 3d8:	00000000 	nop

000003dc <ElfMsg2_Draw>:
 3dc:	27bdffb8 	addiu	sp,sp,-72
 3e0:	afbf001c 	sw	ra,28(sp)
 3e4:	afb00018 	sw	s0,24(sp)
 3e8:	afa40048 	sw	a0,72(sp)
 3ec:	afa5004c 	sw	a1,76(sp)
 3f0:	8ca50000 	lw	a1,0(a1)
 3f4:	3c060000 	lui	a2,0x0
 3f8:	24c600a4 	addiu	a2,a2,164
 3fc:	27a40034 	addiu	a0,sp,52
 400:	24070163 	li	a3,355
 404:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 408:	00a08025 	move	s0,a1
 40c:	3c0f0000 	lui	t7,0x0
 410:	8def0000 	lw	t7,0(t7)
 414:	8fb9004c 	lw	t9,76(sp)
 418:	85f812c2 	lh	t8,4802(t7)
 41c:	53000036 	beqzl	t8,4f8 <ElfMsg2_Draw+0x11c>
 420:	8fbf001c 	lw	ra,28(sp)
 424:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 428:	8f240000 	lw	a0,0(t9)
 42c:	8e0202d0 	lw	v0,720(s0)
 430:	3c09fa00 	lui	t1,0xfa00
 434:	3c0a0000 	lui	t2,0x0
 438:	24480008 	addiu	t0,v0,8
 43c:	ae0802d0 	sw	t0,720(s0)
 440:	ac490000 	sw	t1,0(v0)
 444:	8d4a0000 	lw	t2,0(t2)
 448:	3c016464 	lui	at,0x6464
 44c:	3421ff00 	ori	at,at,0xff00
 450:	854b12c2 	lh	t3,4802(t2)
 454:	3c0fda38 	lui	t7,0xda38
 458:	35ef0003 	ori	t7,t7,0x3
 45c:	316c00ff 	andi	t4,t3,0xff
 460:	01816825 	or	t5,t4,at
 464:	ac4d0004 	sw	t5,4(v0)
 468:	8e0202d0 	lw	v0,720(s0)
 46c:	3c050000 	lui	a1,0x0
 470:	24a500b4 	addiu	a1,a1,180
 474:	244e0008 	addiu	t6,v0,8
 478:	ae0e02d0 	sw	t6,720(s0)
 47c:	ac4f0000 	sw	t7,0(v0)
 480:	8fb8004c 	lw	t8,76(sp)
 484:	2406016a 	li	a2,362
 488:	8f040000 	lw	a0,0(t8)
 48c:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 490:	afa2002c 	sw	v0,44(sp)
 494:	8fa3002c 	lw	v1,44(sp)
 498:	3c080000 	lui	t0,0x0
 49c:	25080000 	addiu	t0,t0,0
 4a0:	ac620004 	sw	v0,4(v1)
 4a4:	8e0202d0 	lw	v0,720(s0)
 4a8:	3c04de00 	lui	a0,0xde00
 4ac:	3c0a0000 	lui	t2,0x0
 4b0:	24590008 	addiu	t9,v0,8
 4b4:	ae1902d0 	sw	t9,720(s0)
 4b8:	ac480004 	sw	t0,4(v0)
 4bc:	ac440000 	sw	a0,0(v0)
 4c0:	8e0202d0 	lw	v0,720(s0)
 4c4:	254a0000 	addiu	t2,t2,0
 4c8:	3c060000 	lui	a2,0x0
 4cc:	24490008 	addiu	t1,v0,8
 4d0:	ae0902d0 	sw	t1,720(s0)
 4d4:	ac4a0004 	sw	t2,4(v0)
 4d8:	ac440000 	sw	a0,0(v0)
 4dc:	8fab004c 	lw	t3,76(sp)
 4e0:	27a40034 	addiu	a0,sp,52
 4e4:	24c600c4 	addiu	a2,a2,196
 4e8:	2407016f 	li	a3,367
 4ec:	0c000000 	jal	0 <ElfMsg2_SetupAction>
 4f0:	8d650000 	lw	a1,0(t3)
 4f4:	8fbf001c 	lw	ra,28(sp)
 4f8:	8fb00018 	lw	s0,24(sp)
 4fc:	27bd0048 	addiu	sp,sp,72
 500:	03e00008 	jr	ra
 504:	00000000 	nop
	...
