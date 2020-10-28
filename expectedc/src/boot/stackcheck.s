
build/src/boot/stackcheck.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <StackCheck_Init>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afb00018 	sw	s0,24(sp)
   8:	00808025 	move	s0,a0
   c:	14800005 	bnez	a0,24 <StackCheck_Init+0x24>
  10:	afbf001c 	sw	ra,28(sp)
  14:	3c040000 	lui	a0,0x0
  18:	24840000 	addiu	a0,a0,0
  1c:	10000036 	b	f8 <StackCheck_Init+0xf8>
  20:	ac800000 	sw	zero,0(a0)
  24:	ae050008 	sw	a1,8(s0)
  28:	ae06000c 	sw	a2,12(s0)
  2c:	ae070010 	sw	a3,16(s0)
  30:	8fae0030 	lw	t6,48(sp)
  34:	3c040000 	lui	a0,0x0
  38:	24840000 	addiu	a0,a0,0
  3c:	ae0e0014 	sw	t6,20(s0)
  40:	8faf0034 	lw	t7,52(sp)
  44:	3c030000 	lui	v1,0x0
  48:	24630000 	addiu	v1,v1,0
  4c:	ae0f0018 	sw	t7,24(s0)
  50:	8c820000 	lw	v0,0(a0)
  54:	02002825 	move	a1,s0
  58:	5040000c 	beqzl	v0,8c <StackCheck_Init+0x8c>
  5c:	8c780000 	lw	t8,0(v1)
  60:	54500007 	bnel	v0,s0,80 <StackCheck_Init+0x80>
  64:	8c420000 	lw	v0,0(v0)
  68:	3c040000 	lui	a0,0x0
  6c:	0c000000 	jal	0 <StackCheck_Init>
  70:	24840000 	addiu	a0,a0,0
  74:	10000021 	b	fc <StackCheck_Init+0xfc>
  78:	8fbf001c 	lw	ra,28(sp)
  7c:	8c420000 	lw	v0,0(v0)
  80:	1440fff7 	bnez	v0,60 <StackCheck_Init+0x60>
  84:	00000000 	nop
  88:	8c780000 	lw	t8,0(v1)
  8c:	ae000000 	sw	zero,0(s0)
  90:	ae180004 	sw	t8,4(s0)
  94:	8c620000 	lw	v0,0(v1)
  98:	50400003 	beqzl	v0,a8 <StackCheck_Init+0xa8>
  9c:	8c990000 	lw	t9,0(a0)
  a0:	ac500000 	sw	s0,0(v0)
  a4:	8c990000 	lw	t9,0(a0)
  a8:	ac700000 	sw	s0,0(v1)
  ac:	57200003 	bnezl	t9,bc <StackCheck_Init+0xbc>
  b0:	8e080014 	lw	t0,20(s0)
  b4:	ac900000 	sw	s0,0(a0)
  b8:	8e080014 	lw	t0,20(s0)
  bc:	2401ffff 	li	at,-1
  c0:	5101000e 	beql	t0,at,fc <StackCheck_Init+0xfc>
  c4:	8fbf001c 	lw	ra,28(sp)
  c8:	8e020008 	lw	v0,8(s0)
  cc:	8e09000c 	lw	t1,12(s0)
  d0:	0049082b 	sltu	at,v0,t1
  d4:	50200009 	beqzl	at,fc <StackCheck_Init+0xfc>
  d8:	8fbf001c 	lw	ra,28(sp)
  dc:	8e0a0010 	lw	t2,16(s0)
  e0:	24420004 	addiu	v0,v0,4
  e4:	ac4afffc 	sw	t2,-4(v0)
  e8:	8e0b000c 	lw	t3,12(s0)
  ec:	004b082b 	sltu	at,v0,t3
  f0:	5420fffb 	bnezl	at,e0 <StackCheck_Init+0xe0>
  f4:	8e0a0010 	lw	t2,16(s0)
  f8:	8fbf001c 	lw	ra,28(sp)
  fc:	8fb00018 	lw	s0,24(sp)
 100:	27bd0020 	addiu	sp,sp,32
 104:	03e00008 	jr	ra
 108:	00000000 	nop

0000010c <StackCheck_Cleanup>:
 10c:	27bdffe8 	addiu	sp,sp,-24
 110:	afbf0014 	sw	ra,20(sp)
 114:	8c820004 	lw	v0,4(a0)
 118:	00802825 	move	a1,a0
 11c:	00001825 	move	v1,zero
 120:	5440000c 	bnezl	v0,154 <StackCheck_Cleanup+0x48>
 124:	8cb80000 	lw	t8,0(a1)
 128:	3c020000 	lui	v0,0x0
 12c:	24420000 	addiu	v0,v0,0
 130:	8c4e0000 	lw	t6,0(v0)
 134:	148e0004 	bne	a0,t6,148 <StackCheck_Cleanup+0x3c>
 138:	00000000 	nop
 13c:	8c8f0000 	lw	t7,0(a0)
 140:	10000005 	b	158 <StackCheck_Cleanup+0x4c>
 144:	ac4f0000 	sw	t7,0(v0)
 148:	10000003 	b	158 <StackCheck_Cleanup+0x4c>
 14c:	24030001 	li	v1,1
 150:	8cb80000 	lw	t8,0(a1)
 154:	ac580000 	sw	t8,0(v0)
 158:	8cb90000 	lw	t9,0(a1)
 15c:	3c020000 	lui	v0,0x0
 160:	24420000 	addiu	v0,v0,0
 164:	17200008 	bnez	t9,188 <StackCheck_Cleanup+0x7c>
 168:	00000000 	nop
 16c:	8c480000 	lw	t0,0(v0)
 170:	54a80005 	bnel	a1,t0,188 <StackCheck_Cleanup+0x7c>
 174:	24030001 	li	v1,1
 178:	8ca90004 	lw	t1,4(a1)
 17c:	10000002 	b	188 <StackCheck_Cleanup+0x7c>
 180:	ac490000 	sw	t1,0(v0)
 184:	24030001 	li	v1,1
 188:	10600003 	beqz	v1,198 <StackCheck_Cleanup+0x8c>
 18c:	3c040000 	lui	a0,0x0
 190:	0c000000 	jal	0 <StackCheck_Init>
 194:	24840038 	addiu	a0,a0,56
 198:	8fbf0014 	lw	ra,20(sp)
 19c:	27bd0018 	addiu	sp,sp,24
 1a0:	03e00008 	jr	ra
 1a4:	00000000 	nop

000001a8 <StackCheck_GetState>:
 1a8:	27bdffc0 	addiu	sp,sp,-64
 1ac:	afbf002c 	sw	ra,44(sp)
 1b0:	afb00028 	sw	s0,40(sp)
 1b4:	8c83000c 	lw	v1,12(a0)
 1b8:	8c860008 	lw	a2,8(a0)
 1bc:	00808025 	move	s0,a0
 1c0:	24180002 	li	t8,2
 1c4:	00c3082b 	sltu	at,a2,v1
 1c8:	10200009 	beqz	at,1f0 <StackCheck_GetState+0x48>
 1cc:	00c03825 	move	a3,a2
 1d0:	8c820010 	lw	v0,16(a0)
 1d4:	8cee0000 	lw	t6,0(a3)
 1d8:	544e0006 	bnel	v0,t6,1f4 <StackCheck_GetState+0x4c>
 1dc:	00677823 	subu	t7,v1,a3
 1e0:	24e70004 	addiu	a3,a3,4
 1e4:	00e3082b 	sltu	at,a3,v1
 1e8:	5420fffb 	bnezl	at,1d8 <StackCheck_GetState+0x30>
 1ec:	8cee0000 	lw	t6,0(a3)
 1f0:	00677823 	subu	t7,v1,a3
 1f4:	00e64023 	subu	t0,a3,a2
 1f8:	1500000a 	bnez	t0,224 <StackCheck_GetState+0x7c>
 1fc:	afaf0038 	sw	t7,56(sp)
 200:	3c040000 	lui	a0,0x0
 204:	afb80030 	sw	t8,48(sp)
 208:	24840070 	addiu	a0,a0,112
 20c:	afa7003c 	sw	a3,60(sp)
 210:	0c000000 	jal	0 <StackCheck_Init>
 214:	afa80034 	sw	t0,52(sp)
 218:	8fa7003c 	lw	a3,60(sp)
 21c:	10000018 	b	280 <StackCheck_GetState+0xd8>
 220:	8fa80034 	lw	t0,52(sp)
 224:	8e020014 	lw	v0,20(s0)
 228:	3c040000 	lui	a0,0x0
 22c:	24840080 	addiu	a0,a0,128
 230:	0102082b 	sltu	at,t0,v0
 234:	1020000c 	beqz	at,268 <StackCheck_GetState+0xc0>
 238:	2401ffff 	li	at,-1
 23c:	1041000a 	beq	v0,at,268 <StackCheck_GetState+0xc0>
 240:	24190001 	li	t9,1
 244:	3c040000 	lui	a0,0x0
 248:	afb90030 	sw	t9,48(sp)
 24c:	24840078 	addiu	a0,a0,120
 250:	afa7003c 	sw	a3,60(sp)
 254:	0c000000 	jal	0 <StackCheck_Init>
 258:	afa80034 	sw	t0,52(sp)
 25c:	8fa7003c 	lw	a3,60(sp)
 260:	10000007 	b	280 <StackCheck_GetState+0xd8>
 264:	8fa80034 	lw	t0,52(sp)
 268:	afa7003c 	sw	a3,60(sp)
 26c:	0c000000 	jal	0 <StackCheck_Init>
 270:	afa80034 	sw	t0,52(sp)
 274:	8fa7003c 	lw	a3,60(sp)
 278:	8fa80034 	lw	t0,52(sp)
 27c:	afa00030 	sw	zero,48(sp)
 280:	8e020018 	lw	v0,24(s0)
 284:	3c040000 	lui	a0,0x0
 288:	24840088 	addiu	a0,a0,136
 28c:	10400003 	beqz	v0,29c <StackCheck_GetState+0xf4>
 290:	8fa90038 	lw	t1,56(sp)
 294:	10000003 	b	2a4 <StackCheck_GetState+0xfc>
 298:	00401825 	move	v1,v0
 29c:	3c030000 	lui	v1,0x0
 2a0:	246300c0 	addiu	v1,v1,192
 2a4:	8e050008 	lw	a1,8(s0)
 2a8:	8e06000c 	lw	a2,12(s0)
 2ac:	afa30018 	sw	v1,24(sp)
 2b0:	afa80014 	sw	t0,20(sp)
 2b4:	0c000000 	jal	0 <StackCheck_Init>
 2b8:	afa90010 	sw	t1,16(sp)
 2bc:	3c040000 	lui	a0,0x0
 2c0:	0c000000 	jal	0 <StackCheck_Init>
 2c4:	248400c8 	addiu	a0,a0,200
 2c8:	8faa0030 	lw	t2,48(sp)
 2cc:	51400007 	beqzl	t2,2ec <StackCheck_GetState+0x144>
 2d0:	8fbf002c 	lw	ra,44(sp)
 2d4:	8e060008 	lw	a2,8(s0)
 2d8:	8e0b000c 	lw	t3,12(s0)
 2dc:	00c02025 	move	a0,a2
 2e0:	0c000000 	jal	0 <StackCheck_Init>
 2e4:	01662823 	subu	a1,t3,a2
 2e8:	8fbf002c 	lw	ra,44(sp)
 2ec:	8fa20030 	lw	v0,48(sp)
 2f0:	8fb00028 	lw	s0,40(sp)
 2f4:	03e00008 	jr	ra
 2f8:	27bd0040 	addiu	sp,sp,64

000002fc <StackCheck_CheckAll>:
 2fc:	27bdffe0 	addiu	sp,sp,-32
 300:	afb00014 	sw	s0,20(sp)
 304:	3c100000 	lui	s0,0x0
 308:	8e100000 	lw	s0,0(s0)
 30c:	afb10018 	sw	s1,24(sp)
 310:	afbf001c 	sw	ra,28(sp)
 314:	12000009 	beqz	s0,33c <StackCheck_CheckAll+0x40>
 318:	00008825 	move	s1,zero
 31c:	0c000000 	jal	0 <StackCheck_Init>
 320:	02002025 	move	a0,s0
 324:	50400003 	beqzl	v0,334 <StackCheck_CheckAll+0x38>
 328:	8e100000 	lw	s0,0(s0)
 32c:	24110001 	li	s1,1
 330:	8e100000 	lw	s0,0(s0)
 334:	1600fff9 	bnez	s0,31c <StackCheck_CheckAll+0x20>
 338:	00000000 	nop
 33c:	8fbf001c 	lw	ra,28(sp)
 340:	02201025 	move	v0,s1
 344:	8fb10018 	lw	s1,24(sp)
 348:	8fb00014 	lw	s0,20(sp)
 34c:	03e00008 	jr	ra
 350:	27bd0020 	addiu	sp,sp,32

00000354 <StackCheck_Check>:
 354:	27bdffe8 	addiu	sp,sp,-24
 358:	14800005 	bnez	a0,370 <StackCheck_Check+0x1c>
 35c:	afbf0014 	sw	ra,20(sp)
 360:	0c000000 	jal	0 <StackCheck_Init>
 364:	00000000 	nop
 368:	10000004 	b	37c <StackCheck_Check+0x28>
 36c:	8fbf0014 	lw	ra,20(sp)
 370:	0c000000 	jal	0 <StackCheck_Init>
 374:	00000000 	nop
 378:	8fbf0014 	lw	ra,20(sp)
 37c:	27bd0018 	addiu	sp,sp,24
 380:	03e00008 	jr	ra
 384:	00000000 	nop
	...
