
build/src/boot/is_debug.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <isPrintfInit>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	0c000000 	jal	0 <isPrintfInit>
   c:	00000000 	nop
  10:	3c030000 	lui	v1,0x0
  14:	24630000 	addiu	v1,v1,0
  18:	3c05b3ff 	lui	a1,0xb3ff
  1c:	ac620000 	sw	v0,0(v1)
  20:	34a50014 	ori	a1,a1,0x14
  24:	00402025 	move	a0,v0
  28:	0c000000 	jal	0 <isPrintfInit>
  2c:	00003025 	move	a2,zero
  30:	3c040000 	lui	a0,0x0
  34:	3c05b3ff 	lui	a1,0xb3ff
  38:	34a50004 	ori	a1,a1,0x4
  3c:	8c840000 	lw	a0,0(a0)
  40:	0c000000 	jal	0 <isPrintfInit>
  44:	00003025 	move	a2,zero
  48:	3c040000 	lui	a0,0x0
  4c:	3c064953 	lui	a2,0x4953
  50:	34c63634 	ori	a2,a2,0x3634
  54:	8c840000 	lw	a0,0(a0)
  58:	0c000000 	jal	0 <isPrintfInit>
  5c:	3c05b3ff 	lui	a1,0xb3ff
  60:	8fbf0014 	lw	ra,20(sp)
  64:	27bd0018 	addiu	sp,sp,24
  68:	03e00008 	jr	ra
  6c:	00000000 	nop

00000070 <osSyncPrintfUnused>:
  70:	27bdffe0 	addiu	sp,sp,-32
  74:	afa40020 	sw	a0,32(sp)
  78:	afbf0014 	sw	ra,20(sp)
  7c:	afa50024 	sw	a1,36(sp)
  80:	afa60028 	sw	a2,40(sp)
  84:	afa7002c 	sw	a3,44(sp)
  88:	3c040000 	lui	a0,0x0
  8c:	24840000 	addiu	a0,a0,0
  90:	27a70024 	addiu	a3,sp,36
  94:	8fa60020 	lw	a2,32(sp)
  98:	0c000000 	jal	0 <isPrintfInit>
  9c:	00002825 	move	a1,zero
  a0:	8fbf0014 	lw	ra,20(sp)
  a4:	27bd0020 	addiu	sp,sp,32
  a8:	03e00008 	jr	ra
  ac:	00000000 	nop

000000b0 <osSyncPrintf>:
  b0:	27bdffe0 	addiu	sp,sp,-32
  b4:	afa40020 	sw	a0,32(sp)
  b8:	afbf0014 	sw	ra,20(sp)
  bc:	afa50024 	sw	a1,36(sp)
  c0:	afa60028 	sw	a2,40(sp)
  c4:	afa7002c 	sw	a3,44(sp)
  c8:	3c040000 	lui	a0,0x0
  cc:	24840000 	addiu	a0,a0,0
  d0:	27a70024 	addiu	a3,sp,36
  d4:	8fa60020 	lw	a2,32(sp)
  d8:	0c000000 	jal	0 <isPrintfInit>
  dc:	00002825 	move	a1,zero
  e0:	8fbf0014 	lw	ra,20(sp)
  e4:	27bd0020 	addiu	sp,sp,32
  e8:	03e00008 	jr	ra
  ec:	00000000 	nop

000000f0 <rmonPrintf>:
  f0:	27bdffe0 	addiu	sp,sp,-32
  f4:	afa40020 	sw	a0,32(sp)
  f8:	afbf0014 	sw	ra,20(sp)
  fc:	afa50024 	sw	a1,36(sp)
 100:	afa60028 	sw	a2,40(sp)
 104:	afa7002c 	sw	a3,44(sp)
 108:	3c040000 	lui	a0,0x0
 10c:	24840000 	addiu	a0,a0,0
 110:	27a70024 	addiu	a3,sp,36
 114:	8fa60020 	lw	a2,32(sp)
 118:	0c000000 	jal	0 <isPrintfInit>
 11c:	00002825 	move	a1,zero
 120:	8fbf0014 	lw	ra,20(sp)
 124:	27bd0020 	addiu	sp,sp,32
 128:	03e00008 	jr	ra
 12c:	00000000 	nop

00000130 <is_proutSyncPrintf>:
 130:	27bdffa0 	addiu	sp,sp,-96
 134:	afb40028 	sw	s4,40(sp)
 138:	3c140000 	lui	s4,0x0
 13c:	afb30024 	sw	s3,36(sp)
 140:	afb20020 	sw	s2,32(sp)
 144:	00a09025 	move	s2,a1
 148:	00c09825 	move	s3,a2
 14c:	26940000 	addiu	s4,s4,0
 150:	afbf003c 	sw	ra,60(sp)
 154:	afa40060 	sw	a0,96(sp)
 158:	afbe0038 	sw	s8,56(sp)
 15c:	afb70034 	sw	s7,52(sp)
 160:	afb60030 	sw	s6,48(sp)
 164:	afb5002c 	sw	s5,44(sp)
 168:	afb1001c 	sw	s1,28(sp)
 16c:	afb00018 	sw	s0,24(sp)
 170:	8e840000 	lw	a0,0(s4)
 174:	27a6005c 	addiu	a2,sp,92
 178:	0c000000 	jal	0 <isPrintfInit>
 17c:	3c05b3ff 	lui	a1,0xb3ff
 180:	8fb5005c 	lw	s5,92(sp)
 184:	3c014953 	lui	at,0x4953
 188:	34213634 	ori	at,at,0x3634
 18c:	12a10003 	beq	s5,at,19c <is_proutSyncPrintf+0x6c>
 190:	3c05b3ff 	lui	a1,0xb3ff
 194:	1000004f 	b	2d4 <is_proutSyncPrintf+0x1a4>
 198:	24020001 	li	v0,1
 19c:	8e840000 	lw	a0,0(s4)
 1a0:	34a50004 	ori	a1,a1,0x4
 1a4:	0c000000 	jal	0 <isPrintfInit>
 1a8:	27a6005c 	addiu	a2,sp,92
 1ac:	3c05b3ff 	lui	a1,0xb3ff
 1b0:	8fb0005c 	lw	s0,92(sp)
 1b4:	34a50014 	ori	a1,a1,0x14
 1b8:	8e840000 	lw	a0,0(s4)
 1bc:	0c000000 	jal	0 <isPrintfInit>
 1c0:	27a6005c 	addiu	a2,sp,92
 1c4:	8fb5005c 	lw	s5,92(sp)
 1c8:	3401ffe0 	li	at,0xffe0
 1cc:	3c1effff 	lui	s8,0xffff
 1d0:	02b31021 	addu	v0,s5,s3
 1d4:	0041082a 	slt	at,v0,at
 1d8:	1420000a 	bnez	at,204 <is_proutSyncPrintf+0xd4>
 1dc:	02a08825 	move	s1,s5
 1e0:	37de0020 	ori	s8,s8,0x20
 1e4:	005e1821 	addu	v1,v0,s8
 1e8:	0203082a 	slt	at,s0,v1
 1ec:	14200003 	bnez	at,1fc <is_proutSyncPrintf+0xcc>
 1f0:	02b0082a 	slt	at,s5,s0
 1f4:	5020000b 	beqzl	at,224 <is_proutSyncPrintf+0xf4>
 1f8:	3c1effff 	lui	s8,0xffff
 1fc:	10000035 	b	2d4 <is_proutSyncPrintf+0x1a4>
 200:	24020001 	li	v0,1
 204:	02b0082a 	slt	at,s5,s0
 208:	10200005 	beqz	at,220 <is_proutSyncPrintf+0xf0>
 20c:	0202082a 	slt	at,s0,v0
 210:	50200004 	beqzl	at,224 <is_proutSyncPrintf+0xf4>
 214:	3c1effff 	lui	s8,0xffff
 218:	1000002e 	b	2d4 <is_proutSyncPrintf+0x1a4>
 21c:	24020001 	li	v0,1
 220:	3c1effff 	lui	s8,0xffff
 224:	12600025 	beqz	s3,2bc <is_proutSyncPrintf+0x18c>
 228:	37de0020 	ori	s8,s8,0x20
 22c:	3c16b3ff 	lui	s6,0xb3ff
 230:	3c150fff 	lui	s5,0xfff
 234:	36b5fffc 	ori	s5,s5,0xfffc
 238:	36d60020 	ori	s6,s6,0x20
 23c:	24170003 	li	s7,3
 240:	924e0000 	lbu	t6,0(s2)
 244:	02357824 	and	t7,s1,s5
 248:	01f68021 	addu	s0,t7,s6
 24c:	11c00018 	beqz	t6,2b0 <is_proutSyncPrintf+0x180>
 250:	02002825 	move	a1,s0
 254:	8e840000 	lw	a0,0(s4)
 258:	0c000000 	jal	0 <isPrintfInit>
 25c:	27a6005c 	addiu	a2,sp,92
 260:	32380003 	andi	t8,s1,0x3
 264:	02f81023 	subu	v0,s7,t8
 268:	8fb9005c 	lw	t9,92(sp)
 26c:	924c0000 	lbu	t4,0(s2)
 270:	000210c0 	sll	v0,v0,0x3
 274:	240800ff 	li	t0,255
 278:	00484804 	sllv	t1,t0,v0
 27c:	01205027 	nor	t2,t1,zero
 280:	032a5824 	and	t3,t9,t2
 284:	004c6804 	sllv	t5,t4,v0
 288:	01ab3025 	or	a2,t5,t3
 28c:	8e840000 	lw	a0,0(s4)
 290:	0c000000 	jal	0 <isPrintfInit>
 294:	02002825 	move	a1,s0
 298:	26310001 	addiu	s1,s1,1
 29c:	3401ffe0 	li	at,0xffe0
 2a0:	0221082a 	slt	at,s1,at
 2a4:	54200003 	bnezl	at,2b4 <is_proutSyncPrintf+0x184>
 2a8:	2673ffff 	addiu	s3,s3,-1
 2ac:	023e8821 	addu	s1,s1,s8
 2b0:	2673ffff 	addiu	s3,s3,-1
 2b4:	1660ffe2 	bnez	s3,240 <is_proutSyncPrintf+0x110>
 2b8:	26520001 	addiu	s2,s2,1
 2bc:	3c05b3ff 	lui	a1,0xb3ff
 2c0:	34a50014 	ori	a1,a1,0x14
 2c4:	8e840000 	lw	a0,0(s4)
 2c8:	0c000000 	jal	0 <isPrintfInit>
 2cc:	02203025 	move	a2,s1
 2d0:	24020001 	li	v0,1
 2d4:	8fbf003c 	lw	ra,60(sp)
 2d8:	8fb00018 	lw	s0,24(sp)
 2dc:	8fb1001c 	lw	s1,28(sp)
 2e0:	8fb20020 	lw	s2,32(sp)
 2e4:	8fb30024 	lw	s3,36(sp)
 2e8:	8fb40028 	lw	s4,40(sp)
 2ec:	8fb5002c 	lw	s5,44(sp)
 2f0:	8fb60030 	lw	s6,48(sp)
 2f4:	8fb70034 	lw	s7,52(sp)
 2f8:	8fbe0038 	lw	s8,56(sp)
 2fc:	03e00008 	jr	ra
 300:	27bd0060 	addiu	sp,sp,96

00000304 <func_80002384>:
 304:	27bdffe8 	addiu	sp,sp,-24
 308:	00803825 	move	a3,a0
 30c:	afbf0014 	sw	ra,20(sp)
 310:	3c040000 	lui	a0,0x0
 314:	0c000000 	jal	0 <isPrintfInit>
 318:	24840000 	addiu	a0,a0,0
 31c:	1000ffff 	b	31c <func_80002384+0x18>
 320:	00000000 	nop
	...
 340:	8fbf0014 	lw	ra,20(sp)
 344:	27bd0018 	addiu	sp,sp,24
 348:	03e00008 	jr	ra
 34c:	00000000 	nop
