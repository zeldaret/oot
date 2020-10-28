
build/src/code/code_800D2E30.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800D2E30>:
   0:	2402ffff 	li	v0,-1
   4:	00001825 	move	v1,zero
   8:	00802825 	move	a1,a0
   c:	24630001 	addiu	v1,v1,1
  10:	28610004 	slti	at,v1,4
  14:	24a50001 	addiu	a1,a1,1
  18:	1420fffc 	bnez	at,c <func_800D2E30+0xc>
  1c:	a0a0ffff 	sb	zero,-1(a1)
  20:	90830105 	lbu	v1,261(a0)
  24:	3c0e0000 	lui	t6,0x0
  28:	3c010000 	lui	at,0x0
  2c:	14600010 	bnez	v1,70 <func_800D2E30+0x70>
  30:	00000000 	nop
  34:	91ce0000 	lbu	t6,0(t6)
  38:	3c010000 	lui	at,0x0
  3c:	11c00009 	beqz	t6,64 <func_800D2E30+0x64>
  40:	00000000 	nop
  44:	a02002ae 	sb	zero,686(at)
  48:	3c010000 	lui	at,0x0
  4c:	a02002af 	sb	zero,687(at)
  50:	3c010000 	lui	at,0x0
  54:	a02002b0 	sb	zero,688(at)
  58:	3c010000 	lui	at,0x0
  5c:	a02002b1 	sb	zero,689(at)
  60:	90830105 	lbu	v1,261(a0)
  64:	3c010000 	lui	at,0x0
  68:	03e00008 	jr	ra
  6c:	a0230000 	sb	v1,0(at)
  70:	a0230000 	sb	v1,0(at)
  74:	90850104 	lbu	a1,260(a0)
  78:	24010002 	li	at,2
  7c:	3c030000 	lui	v1,0x0
  80:	14a10027 	bne	a1,at,120 <func_800D2E30+0x120>
  84:	24630004 	addiu	v1,v1,4
  88:	3c050000 	lui	a1,0x0
  8c:	24a50000 	addiu	a1,a1,0
  90:	24a50001 	addiu	a1,a1,1
  94:	00a3082b 	sltu	at,a1,v1
  98:	1420fffd 	bnez	at,90 <func_800D2E30+0x90>
  9c:	a0a002ad 	sb	zero,685(a1)
  a0:	00001825 	move	v1,zero
  a4:	00802825 	move	a1,a0
  a8:	24080040 	li	t0,64
  ac:	24630004 	addiu	v1,v1,4
  b0:	a0a000c5 	sb	zero,197(a1)
  b4:	a0a00085 	sb	zero,133(a1)
  b8:	a0a00045 	sb	zero,69(a1)
  bc:	a0a00005 	sb	zero,5(a1)
  c0:	a0a000c6 	sb	zero,198(a1)
  c4:	a0a00086 	sb	zero,134(a1)
  c8:	a0a00046 	sb	zero,70(a1)
  cc:	a0a00006 	sb	zero,6(a1)
  d0:	a0a000c7 	sb	zero,199(a1)
  d4:	a0a00087 	sb	zero,135(a1)
  d8:	a0a00047 	sb	zero,71(a1)
  dc:	a0a00007 	sb	zero,7(a1)
  e0:	24a50004 	addiu	a1,a1,4
  e4:	a0a000c0 	sb	zero,192(a1)
  e8:	a0a00080 	sb	zero,128(a1)
  ec:	a0a00040 	sb	zero,64(a1)
  f0:	1468ffee 	bne	v1,t0,ac <func_800D2E30+0xac>
  f4:	a0a00000 	sb	zero,0(a1)
  f8:	300300ff 	andi	v1,zero,0xff
  fc:	240f0001 	li	t7,1
 100:	a083010c 	sb	v1,268(a0)
 104:	a083010b 	sb	v1,267(a0)
 108:	a083010a 	sb	v1,266(a0)
 10c:	a4830108 	sh	v1,264(a0)
 110:	a4830106 	sh	v1,262(a0)
 114:	a080010d 	sb	zero,269(a0)
 118:	a08f0104 	sb	t7,260(a0)
 11c:	31e500ff 	andi	a1,t7,0xff
 120:	10a0005d 	beqz	a1,298 <func_800D2E30+0x298>
 124:	24080040 	li	t0,64
 128:	00001825 	move	v1,zero
 12c:	00802825 	move	a1,a0
 130:	2409ffff 	li	t1,-1
 134:	90a60004 	lbu	a2,4(a1)
 138:	50c00021 	beqzl	a2,1c0 <func_800D2E30+0x1c0>
 13c:	24630001 	addiu	v1,v1,1
 140:	90a70044 	lbu	a3,68(a1)
 144:	00826021 	addu	t4,a0,v0
 148:	18e00003 	blez	a3,158 <func_800D2E30+0x158>
 14c:	24f8ffff 	addiu	t8,a3,-1
 150:	10000008 	b	174 <func_800D2E30+0x174>
 154:	a0b80044 	sb	t8,68(a1)
 158:	90b90084 	lbu	t9,132(a1)
 15c:	00d93823 	subu	a3,a2,t9
 160:	58e00004 	blezl	a3,174 <func_800D2E30+0x174>
 164:	a0a00004 	sb	zero,4(a1)
 168:	10000002 	b	174 <func_800D2E30+0x174>
 16c:	a0a70004 	sb	a3,4(a1)
 170:	a0a00004 	sb	zero,4(a1)
 174:	90a60004 	lbu	a2,4(a1)
 178:	90aa00c4 	lbu	t2,196(a1)
 17c:	00ca3821 	addu	a3,a2,t2
 180:	14490006 	bne	v0,t1,19c <func_800D2E30+0x19c>
 184:	a0a700c4 	sb	a3,196(a1)
 188:	28eb0100 	slti	t3,a3,256
 18c:	396b0001 	xori	t3,t3,0x1
 190:	00601025 	move	v0,v1
 194:	10000009 	b	1bc <func_800D2E30+0x1bc>
 198:	a08b0000 	sb	t3,0(a0)
 19c:	918d0004 	lbu	t5,4(t4)
 1a0:	28ee0100 	slti	t6,a3,256
 1a4:	39ce0001 	xori	t6,t6,0x1
 1a8:	01a6082a 	slt	at,t5,a2
 1ac:	50200004 	beqzl	at,1c0 <func_800D2E30+0x1c0>
 1b0:	24630001 	addiu	v1,v1,1
 1b4:	00601025 	move	v0,v1
 1b8:	a08e0000 	sb	t6,0(a0)
 1bc:	24630001 	addiu	v1,v1,1
 1c0:	1468ffdc 	bne	v1,t0,134 <func_800D2E30+0x134>
 1c4:	24a50001 	addiu	a1,a1,1
 1c8:	9083010a 	lbu	v1,266(a0)
 1cc:	10600014 	beqz	v1,220 <func_800D2E30+0x220>
 1d0:	00000000 	nop
 1d4:	9085010b 	lbu	a1,267(a0)
 1d8:	18a00003 	blez	a1,1e8 <func_800D2E30+0x1e8>
 1dc:	24afffff 	addiu	t7,a1,-1
 1e0:	10000008 	b	204 <func_800D2E30+0x204>
 1e4:	a08f010b 	sb	t7,267(a0)
 1e8:	9098010c 	lbu	t8,268(a0)
 1ec:	00783823 	subu	a3,v1,t8
 1f0:	58e00004 	blezl	a3,204 <func_800D2E30+0x204>
 1f4:	a080010a 	sb	zero,266(a0)
 1f8:	10000002 	b	204 <func_800D2E30+0x204>
 1fc:	a087010a 	sb	a3,266(a0)
 200:	a080010a 	sb	zero,266(a0)
 204:	9083010a 	lbu	v1,266(a0)
 208:	9099010d 	lbu	t9,269(a0)
 20c:	03233821 	addu	a3,t9,v1
 210:	28ea0100 	slti	t2,a3,256
 214:	394a0001 	xori	t2,t2,0x1
 218:	a087010d 	sb	a3,269(a0)
 21c:	a08a0000 	sb	t2,0(a0)
 220:	10600003 	beqz	v1,230 <func_800D2E30+0x230>
 224:	00000000 	nop
 228:	10000006 	b	244 <func_800D2E30+0x244>
 22c:	00603825 	move	a3,v1
 230:	14490003 	bne	v0,t1,240 <func_800D2E30+0x240>
 234:	00825821 	addu	t3,a0,v0
 238:	10000002 	b	244 <func_800D2E30+0x244>
 23c:	00003825 	move	a3,zero
 240:	91670004 	lbu	a3,4(t3)
 244:	54e0000c 	bnezl	a3,278 <func_800D2E30+0x278>
 248:	94980106 	lhu	t8,262(a0)
 24c:	948c0108 	lhu	t4,264(a0)
 250:	240f0005 	li	t7,5
 254:	258d0001 	addiu	t5,t4,1
 258:	31aeffff 	andi	t6,t5,0xffff
 25c:	29c10006 	slti	at,t6,6
 260:	14200029 	bnez	at,308 <func_800D2E30+0x308>
 264:	a48d0108 	sh	t5,264(a0)
 268:	a4800106 	sh	zero,262(a0)
 26c:	03e00008 	jr	ra
 270:	a48f0108 	sh	t7,264(a0)
 274:	94980106 	lhu	t8,262(a0)
 278:	a4800108 	sh	zero,264(a0)
 27c:	27190001 	addiu	t9,t8,1
 280:	332affff 	andi	t2,t9,0xffff
 284:	29411c21 	slti	at,t2,7201
 288:	1420001f 	bnez	at,308 <func_800D2E30+0x308>
 28c:	a4990106 	sh	t9,262(a0)
 290:	03e00008 	jr	ra
 294:	a0800104 	sb	zero,260(a0)
 298:	00001825 	move	v1,zero
 29c:	00802825 	move	a1,a0
 2a0:	24630004 	addiu	v1,v1,4
 2a4:	a0a000c5 	sb	zero,197(a1)
 2a8:	a0a00085 	sb	zero,133(a1)
 2ac:	a0a00045 	sb	zero,69(a1)
 2b0:	a0a00005 	sb	zero,5(a1)
 2b4:	a0a000c6 	sb	zero,198(a1)
 2b8:	a0a00086 	sb	zero,134(a1)
 2bc:	a0a00046 	sb	zero,70(a1)
 2c0:	a0a00006 	sb	zero,6(a1)
 2c4:	a0a000c7 	sb	zero,199(a1)
 2c8:	a0a00087 	sb	zero,135(a1)
 2cc:	a0a00047 	sb	zero,71(a1)
 2d0:	a0a00007 	sb	zero,7(a1)
 2d4:	24a50004 	addiu	a1,a1,4
 2d8:	a0a000c0 	sb	zero,192(a1)
 2dc:	a0a00080 	sb	zero,128(a1)
 2e0:	a0a00040 	sb	zero,64(a1)
 2e4:	1468ffee 	bne	v1,t0,2a0 <func_800D2E30+0x2a0>
 2e8:	a0a00000 	sb	zero,0(a1)
 2ec:	300300ff 	andi	v1,zero,0xff
 2f0:	a083010c 	sb	v1,268(a0)
 2f4:	a083010b 	sb	v1,267(a0)
 2f8:	a083010a 	sb	v1,266(a0)
 2fc:	a4830108 	sh	v1,264(a0)
 300:	a4830106 	sh	v1,262(a0)
 304:	a080010d 	sb	zero,269(a0)
 308:	03e00008 	jr	ra
 30c:	00000000 	nop

00000310 <func_800D3140>:
 310:	27bdffe8 	addiu	sp,sp,-24
 314:	afbf0014 	sw	ra,20(sp)
 318:	afa40018 	sw	a0,24(sp)
 31c:	0c000000 	jal	0 <func_800D2E30>
 320:	2405010e 	li	a1,270
 324:	8fa40018 	lw	a0,24(sp)
 328:	240e0002 	li	t6,2
 32c:	240f0001 	li	t7,1
 330:	a08e0104 	sb	t6,260(a0)
 334:	a08f0105 	sb	t7,261(a0)
 338:	8fbf0014 	lw	ra,20(sp)
 33c:	27bd0018 	addiu	sp,sp,24
 340:	03e00008 	jr	ra
 344:	00000000 	nop

00000348 <func_800D3178>:
 348:	27bdffe8 	addiu	sp,sp,-24
 34c:	afbf0014 	sw	ra,20(sp)
 350:	0c000000 	jal	0 <func_800D2E30>
 354:	2405010e 	li	a1,270
 358:	8fbf0014 	lw	ra,20(sp)
 35c:	27bd0018 	addiu	sp,sp,24
 360:	03e00008 	jr	ra
 364:	00000000 	nop
	...
