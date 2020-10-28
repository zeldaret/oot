
build/src/code/TwoHeadArena.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <THGA_Ct>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	0c000000 	jal	0 <THGA_Ct>
   c:	00000000 	nop
  10:	8fbf0014 	lw	ra,20(sp)
  14:	27bd0018 	addiu	sp,sp,24
  18:	03e00008 	jr	ra
  1c:	00000000 	nop

00000020 <THGA_Dt>:
  20:	27bdffe8 	addiu	sp,sp,-24
  24:	afbf0014 	sw	ra,20(sp)
  28:	0c000000 	jal	0 <THGA_Ct>
  2c:	00000000 	nop
  30:	8fbf0014 	lw	ra,20(sp)
  34:	27bd0018 	addiu	sp,sp,24
  38:	03e00008 	jr	ra
  3c:	00000000 	nop

00000040 <THGA_IsCrash>:
  40:	27bdffe8 	addiu	sp,sp,-24
  44:	afbf0014 	sw	ra,20(sp)
  48:	0c000000 	jal	0 <THGA_Ct>
  4c:	00000000 	nop
  50:	8fbf0014 	lw	ra,20(sp)
  54:	27bd0018 	addiu	sp,sp,24
  58:	03e00008 	jr	ra
  5c:	00000000 	nop

00000060 <THGA_Init>:
  60:	27bdffe8 	addiu	sp,sp,-24
  64:	afbf0014 	sw	ra,20(sp)
  68:	0c000000 	jal	0 <THGA_Ct>
  6c:	00000000 	nop
  70:	8fbf0014 	lw	ra,20(sp)
  74:	27bd0018 	addiu	sp,sp,24
  78:	03e00008 	jr	ra
  7c:	00000000 	nop

00000080 <THGA_GetSize>:
  80:	27bdffe8 	addiu	sp,sp,-24
  84:	afbf0014 	sw	ra,20(sp)
  88:	0c000000 	jal	0 <THGA_Ct>
  8c:	00000000 	nop
  90:	8fbf0014 	lw	ra,20(sp)
  94:	27bd0018 	addiu	sp,sp,24
  98:	03e00008 	jr	ra
  9c:	00000000 	nop

000000a0 <THGA_GetHead>:
  a0:	27bdffe8 	addiu	sp,sp,-24
  a4:	afbf0014 	sw	ra,20(sp)
  a8:	0c000000 	jal	0 <THGA_Ct>
  ac:	00000000 	nop
  b0:	8fbf0014 	lw	ra,20(sp)
  b4:	27bd0018 	addiu	sp,sp,24
  b8:	03e00008 	jr	ra
  bc:	00000000 	nop

000000c0 <THGA_SetHead>:
  c0:	27bdffe8 	addiu	sp,sp,-24
  c4:	afbf0014 	sw	ra,20(sp)
  c8:	0c000000 	jal	0 <THGA_Ct>
  cc:	00000000 	nop
  d0:	8fbf0014 	lw	ra,20(sp)
  d4:	27bd0018 	addiu	sp,sp,24
  d8:	03e00008 	jr	ra
  dc:	00000000 	nop

000000e0 <THGA_GetTail>:
  e0:	27bdffe8 	addiu	sp,sp,-24
  e4:	afbf0014 	sw	ra,20(sp)
  e8:	0c000000 	jal	0 <THGA_Ct>
  ec:	00000000 	nop
  f0:	8fbf0014 	lw	ra,20(sp)
  f4:	27bd0018 	addiu	sp,sp,24
  f8:	03e00008 	jr	ra
  fc:	00000000 	nop

00000100 <THGA_AllocStartArray8>:
 100:	27bdffe8 	addiu	sp,sp,-24
 104:	afbf0014 	sw	ra,20(sp)
 108:	0c000000 	jal	0 <THGA_Ct>
 10c:	000528c0 	sll	a1,a1,0x3
 110:	8fbf0014 	lw	ra,20(sp)
 114:	27bd0018 	addiu	sp,sp,24
 118:	03e00008 	jr	ra
 11c:	00000000 	nop

00000120 <THGA_AllocStart8>:
 120:	27bdffe8 	addiu	sp,sp,-24
 124:	afbf0014 	sw	ra,20(sp)
 128:	0c000000 	jal	0 <THGA_Ct>
 12c:	24050001 	li	a1,1
 130:	8fbf0014 	lw	ra,20(sp)
 134:	27bd0018 	addiu	sp,sp,24
 138:	03e00008 	jr	ra
 13c:	00000000 	nop

00000140 <THGA_AllocStart8Wrapper>:
 140:	27bdffe8 	addiu	sp,sp,-24
 144:	afbf0014 	sw	ra,20(sp)
 148:	0c000000 	jal	0 <THGA_Ct>
 14c:	00000000 	nop
 150:	8fbf0014 	lw	ra,20(sp)
 154:	27bd0018 	addiu	sp,sp,24
 158:	03e00008 	jr	ra
 15c:	00000000 	nop

00000160 <THGA_AllocEnd>:
 160:	27bdffe8 	addiu	sp,sp,-24
 164:	afbf0014 	sw	ra,20(sp)
 168:	0c000000 	jal	0 <THGA_Ct>
 16c:	00000000 	nop
 170:	8fbf0014 	lw	ra,20(sp)
 174:	27bd0018 	addiu	sp,sp,24
 178:	03e00008 	jr	ra
 17c:	00000000 	nop

00000180 <THGA_AllocEndArray64>:
 180:	27bdffe8 	addiu	sp,sp,-24
 184:	afbf0014 	sw	ra,20(sp)
 188:	0c000000 	jal	0 <THGA_Ct>
 18c:	00052980 	sll	a1,a1,0x6
 190:	8fbf0014 	lw	ra,20(sp)
 194:	27bd0018 	addiu	sp,sp,24
 198:	03e00008 	jr	ra
 19c:	00000000 	nop

000001a0 <THGA_AllocEnd64>:
 1a0:	27bdffe8 	addiu	sp,sp,-24
 1a4:	afbf0014 	sw	ra,20(sp)
 1a8:	0c000000 	jal	0 <THGA_Ct>
 1ac:	24050040 	li	a1,64
 1b0:	8fbf0014 	lw	ra,20(sp)
 1b4:	27bd0018 	addiu	sp,sp,24
 1b8:	03e00008 	jr	ra
 1bc:	00000000 	nop

000001c0 <THGA_AllocEndArray16>:
 1c0:	27bdffe8 	addiu	sp,sp,-24
 1c4:	afbf0014 	sw	ra,20(sp)
 1c8:	0c000000 	jal	0 <THGA_Ct>
 1cc:	00052900 	sll	a1,a1,0x4
 1d0:	8fbf0014 	lw	ra,20(sp)
 1d4:	27bd0018 	addiu	sp,sp,24
 1d8:	03e00008 	jr	ra
 1dc:	00000000 	nop

000001e0 <THGA_AllocEnd16>:
 1e0:	27bdffe8 	addiu	sp,sp,-24
 1e4:	afbf0014 	sw	ra,20(sp)
 1e8:	0c000000 	jal	0 <THGA_Ct>
 1ec:	24050010 	li	a1,16
 1f0:	8fbf0014 	lw	ra,20(sp)
 1f4:	27bd0018 	addiu	sp,sp,24
 1f8:	03e00008 	jr	ra
 1fc:	00000000 	nop

00000200 <THA_GetHead>:
 200:	03e00008 	jr	ra
 204:	8c820008 	lw	v0,8(a0)

00000208 <THA_SetHead>:
 208:	03e00008 	jr	ra
 20c:	ac850008 	sw	a1,8(a0)

00000210 <THA_GetTail>:
 210:	03e00008 	jr	ra
 214:	8c82000c 	lw	v0,12(a0)

00000218 <THA_AllocStart>:
 218:	8c820008 	lw	v0,8(a0)
 21c:	00457021 	addu	t6,v0,a1
 220:	03e00008 	jr	ra
 224:	ac8e0008 	sw	t6,8(a0)

00000228 <THA_AllocStart1>:
 228:	27bdffe8 	addiu	sp,sp,-24
 22c:	afbf0014 	sw	ra,20(sp)
 230:	0c000000 	jal	0 <THGA_Ct>
 234:	24050001 	li	a1,1
 238:	8fbf0014 	lw	ra,20(sp)
 23c:	27bd0018 	addiu	sp,sp,24
 240:	03e00008 	jr	ra
 244:	00000000 	nop

00000248 <THA_AllocEnd>:
 248:	24010008 	li	at,8
 24c:	54a10004 	bnel	a1,at,260 <THA_AllocEnd+0x18>
 250:	24010004 	li	at,4
 254:	10000019 	b	2bc <THA_AllocEnd+0x74>
 258:	2403fff8 	li	v1,-8
 25c:	24010004 	li	at,4
 260:	10a10003 	beq	a1,at,270 <THA_AllocEnd+0x28>
 264:	2402000c 	li	v0,12
 268:	14a20003 	bne	a1,v0,278 <THA_AllocEnd+0x30>
 26c:	24010002 	li	at,2
 270:	10000012 	b	2bc <THA_AllocEnd+0x74>
 274:	2403fffc 	li	v1,-4
 278:	10a10009 	beq	a1,at,2a0 <THA_AllocEnd+0x58>
 27c:	24010006 	li	at,6
 280:	10a10007 	beq	a1,at,2a0 <THA_AllocEnd+0x58>
 284:	2401000a 	li	at,10
 288:	10a10005 	beq	a1,at,2a0 <THA_AllocEnd+0x58>
 28c:	00000000 	nop
 290:	10a20003 	beq	a1,v0,2a0 <THA_AllocEnd+0x58>
 294:	2401000e 	li	at,14
 298:	54a10004 	bnel	a1,at,2ac <THA_AllocEnd+0x64>
 29c:	2ca10010 	sltiu	at,a1,16
 2a0:	10000006 	b	2bc <THA_AllocEnd+0x74>
 2a4:	2403fffe 	li	v1,-2
 2a8:	2ca10010 	sltiu	at,a1,16
 2ac:	14200003 	bnez	at,2bc <THA_AllocEnd+0x74>
 2b0:	00001825 	move	v1,zero
 2b4:	10000001 	b	2bc <THA_AllocEnd+0x74>
 2b8:	2403fff0 	li	v1,-16
 2bc:	8c8e000c 	lw	t6,12(a0)
 2c0:	01c37824 	and	t7,t6,v1
 2c4:	01e5c023 	subu	t8,t7,a1
 2c8:	03031024 	and	v0,t8,v1
 2cc:	03e00008 	jr	ra
 2d0:	ac82000c 	sw	v0,12(a0)

000002d4 <THA_AllocEndAlign16>:
 2d4:	8c8e000c 	lw	t6,12(a0)
 2d8:	2401fff0 	li	at,-16
 2dc:	01c17824 	and	t7,t6,at
 2e0:	01e5c023 	subu	t8,t7,a1
 2e4:	03011024 	and	v0,t8,at
 2e8:	03e00008 	jr	ra
 2ec:	ac82000c 	sw	v0,12(a0)

000002f0 <THA_AllocEndAlign>:
 2f0:	8c8e000c 	lw	t6,12(a0)
 2f4:	01c67824 	and	t7,t6,a2
 2f8:	01e5c023 	subu	t8,t7,a1
 2fc:	03061024 	and	v0,t8,a2
 300:	03e00008 	jr	ra
 304:	ac82000c 	sw	v0,12(a0)

00000308 <THA_GetSize>:
 308:	8c8e000c 	lw	t6,12(a0)
 30c:	8c8f0008 	lw	t7,8(a0)
 310:	03e00008 	jr	ra
 314:	01cf1023 	subu	v0,t6,t7

00000318 <THA_IsCrash>:
 318:	27bdffe8 	addiu	sp,sp,-24
 31c:	afbf0014 	sw	ra,20(sp)
 320:	0c000000 	jal	0 <THGA_Ct>
 324:	00000000 	nop
 328:	8fbf0014 	lw	ra,20(sp)
 32c:	27bd0018 	addiu	sp,sp,24
 330:	28420000 	slti	v0,v0,0
 334:	03e00008 	jr	ra
 338:	00000000 	nop

0000033c <THA_Init>:
 33c:	8c820004 	lw	v0,4(a0)
 340:	8c8e0000 	lw	t6,0(a0)
 344:	ac820008 	sw	v0,8(a0)
 348:	004e7821 	addu	t7,v0,t6
 34c:	03e00008 	jr	ra
 350:	ac8f000c 	sw	t7,12(a0)

00000354 <THA_Ct>:
 354:	27bdffe8 	addiu	sp,sp,-24
 358:	afbf0014 	sw	ra,20(sp)
 35c:	ac850004 	sw	a1,4(a0)
 360:	0c000000 	jal	0 <THGA_Ct>
 364:	ac860000 	sw	a2,0(a0)
 368:	8fbf0014 	lw	ra,20(sp)
 36c:	27bd0018 	addiu	sp,sp,24
 370:	03e00008 	jr	ra
 374:	00000000 	nop

00000378 <THA_Dt>:
 378:	27bdffe8 	addiu	sp,sp,-24
 37c:	afbf0014 	sw	ra,20(sp)
 380:	0c000000 	jal	0 <THGA_Ct>
 384:	24050010 	li	a1,16
 388:	8fbf0014 	lw	ra,20(sp)
 38c:	27bd0018 	addiu	sp,sp,24
 390:	03e00008 	jr	ra
 394:	00000000 	nop
	...
