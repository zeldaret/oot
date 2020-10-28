
build/src/overlays/actors/ovl_En_Ganon_Organ/z_en_ganon_organ.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnGanonOrgan_Init>:
   0:	afa50004 	sw	a1,4(sp)
   4:	8c8e0004 	lw	t6,4(a0)
   8:	2401fffe 	li	at,-2
   c:	01c17824 	and	t7,t6,at
  10:	03e00008 	jr	ra
  14:	ac8f0004 	sw	t7,4(a0)

00000018 <EnGanonOrgan_Destroy>:
  18:	afa40000 	sw	a0,0(sp)
  1c:	03e00008 	jr	ra
  20:	afa50004 	sw	a1,4(sp)

00000024 <EnGanonOrgan_Update>:
  24:	27bdffe8 	addiu	sp,sp,-24
  28:	afa5001c 	sw	a1,28(sp)
  2c:	00802825 	move	a1,a0
  30:	afa40018 	sw	a0,24(sp)
  34:	afbf0014 	sw	ra,20(sp)
  38:	3c040000 	lui	a0,0x0
  3c:	24840000 	addiu	a0,a0,0
  40:	0c000000 	jal	0 <EnGanonOrgan_Init>
  44:	afa50018 	sw	a1,24(sp)
  48:	8fa50018 	lw	a1,24(sp)
  4c:	24010001 	li	at,1
  50:	84ae001c 	lh	t6,28(a1)
  54:	15c10007 	bne	t6,at,74 <EnGanonOrgan_Update+0x50>
  58:	00000000 	nop
  5c:	8ca20118 	lw	v0,280(a1)
  60:	844f0718 	lh	t7,1816(v0)
  64:	15e00003 	bnez	t7,74 <EnGanonOrgan_Update+0x50>
  68:	00000000 	nop
  6c:	0c000000 	jal	0 <EnGanonOrgan_Init>
  70:	00a02025 	move	a0,a1
  74:	3c040000 	lui	a0,0x0
  78:	0c000000 	jal	0 <EnGanonOrgan_Init>
  7c:	24840010 	addiu	a0,a0,16
  80:	8fbf0014 	lw	ra,20(sp)
  84:	27bd0018 	addiu	sp,sp,24
  88:	03e00008 	jr	ra
  8c:	00000000 	nop

00000090 <EnGanonOrgan_EmptyDList>:
  90:	27bdffe8 	addiu	sp,sp,-24
  94:	afbf0014 	sw	ra,20(sp)
  98:	0c000000 	jal	0 <EnGanonOrgan_Init>
  9c:	24050008 	li	a1,8
  a0:	3c0edf00 	lui	t6,0xdf00
  a4:	ac4e0000 	sw	t6,0(v0)
  a8:	ac400004 	sw	zero,4(v0)
  ac:	8fbf0014 	lw	ra,20(sp)
  b0:	27bd0018 	addiu	sp,sp,24
  b4:	03e00008 	jr	ra
  b8:	00000000 	nop

000000bc <func_80A280BC>:
  bc:	27bdffe8 	addiu	sp,sp,-24
  c0:	afbf0014 	sw	ra,20(sp)
  c4:	afa5001c 	sw	a1,28(sp)
  c8:	0c000000 	jal	0 <EnGanonOrgan_Init>
  cc:	24050020 	li	a1,32
  d0:	3c0ee700 	lui	t6,0xe700
  d4:	00402825 	move	a1,v0
  d8:	ac4e0000 	sw	t6,0(v0)
  dc:	24440008 	addiu	a0,v0,8
  e0:	ac400004 	sw	zero,4(v0)
  e4:	00801025 	move	v0,a0
  e8:	3c0ffb00 	lui	t7,0xfb00
  ec:	ac4f0000 	sw	t7,0(v0)
  f0:	8fb8001c 	lw	t8,28(sp)
  f4:	3c011914 	lui	at,0x1914
  f8:	24840008 	addiu	a0,a0,8
  fc:	87190718 	lh	t9,1816(t8)
 100:	3c0ae200 	lui	t2,0xe200
 104:	3c0bc810 	lui	t3,0xc810
 108:	332800ff 	andi	t0,t9,0xff
 10c:	01014825 	or	t1,t0,at
 110:	ac490004 	sw	t1,4(v0)
 114:	00801025 	move	v0,a0
 118:	356b49d8 	ori	t3,t3,0x49d8
 11c:	354a001c 	ori	t2,t2,0x1c
 120:	ac4a0000 	sw	t2,0(v0)
 124:	ac4b0004 	sw	t3,4(v0)
 128:	3c0cdf00 	lui	t4,0xdf00
 12c:	ac8c0008 	sw	t4,8(a0)
 130:	ac80000c 	sw	zero,12(a0)
 134:	8fbf0014 	lw	ra,20(sp)
 138:	24840008 	addiu	a0,a0,8
 13c:	27bd0018 	addiu	sp,sp,24
 140:	03e00008 	jr	ra
 144:	00a01025 	move	v0,a1

00000148 <func_80A28148>:
 148:	27bdffe8 	addiu	sp,sp,-24
 14c:	afbf0014 	sw	ra,20(sp)
 150:	afa5001c 	sw	a1,28(sp)
 154:	0c000000 	jal	0 <EnGanonOrgan_Init>
 158:	24050020 	li	a1,32
 15c:	3c0ee700 	lui	t6,0xe700
 160:	00402825 	move	a1,v0
 164:	ac4e0000 	sw	t6,0(v0)
 168:	24440008 	addiu	a0,v0,8
 16c:	ac400004 	sw	zero,4(v0)
 170:	00801025 	move	v0,a0
 174:	3c0ffb00 	lui	t7,0xfb00
 178:	ac4f0000 	sw	t7,0(v0)
 17c:	8fb8001c 	lw	t8,28(sp)
 180:	24840008 	addiu	a0,a0,8
 184:	3c09e200 	lui	t1,0xe200
 188:	87190718 	lh	t9,1816(t8)
 18c:	3c0ac810 	lui	t2,0xc810
 190:	354a49d8 	ori	t2,t2,0x49d8
 194:	332800ff 	andi	t0,t9,0xff
 198:	ac480004 	sw	t0,4(v0)
 19c:	00801025 	move	v0,a0
 1a0:	3529001c 	ori	t1,t1,0x1c
 1a4:	ac490000 	sw	t1,0(v0)
 1a8:	ac4a0004 	sw	t2,4(v0)
 1ac:	3c0bdf00 	lui	t3,0xdf00
 1b0:	ac8b0008 	sw	t3,8(a0)
 1b4:	ac80000c 	sw	zero,12(a0)
 1b8:	8fbf0014 	lw	ra,20(sp)
 1bc:	24840008 	addiu	a0,a0,8
 1c0:	27bd0018 	addiu	sp,sp,24
 1c4:	03e00008 	jr	ra
 1c8:	00a01025 	move	v0,a1

000001cc <EnGanonOrgan_Draw>:
 1cc:	27bdffa8 	addiu	sp,sp,-88
 1d0:	afbf001c 	sw	ra,28(sp)
 1d4:	afb10018 	sw	s1,24(sp)
 1d8:	afb00014 	sw	s0,20(sp)
 1dc:	afa40058 	sw	a0,88(sp)
 1e0:	8c8f0118 	lw	t7,280(a0)
 1e4:	00a08825 	move	s1,a1
 1e8:	3c060000 	lui	a2,0x0
 1ec:	afaf0054 	sw	t7,84(sp)
 1f0:	8ca50000 	lw	a1,0(a1)
 1f4:	24c60020 	addiu	a2,a2,32
 1f8:	27a40040 	addiu	a0,sp,64
 1fc:	240700cd 	li	a3,205
 200:	0c000000 	jal	0 <EnGanonOrgan_Init>
 204:	00a08025 	move	s0,a1
 208:	3c040000 	lui	a0,0x0
 20c:	0c000000 	jal	0 <EnGanonOrgan_Init>
 210:	24840038 	addiu	a0,a0,56
 214:	0c000000 	jal	0 <EnGanonOrgan_Init>
 218:	8e240000 	lw	a0,0(s1)
 21c:	8fb80058 	lw	t8,88(sp)
 220:	24010001 	li	at,1
 224:	8fa50054 	lw	a1,84(sp)
 228:	8719001c 	lh	t9,28(t8)
 22c:	5721001e 	bnel	t9,at,2a8 <EnGanonOrgan_Draw+0xdc>
 230:	8e0202c0 	lw	v0,704(s0)
 234:	84a80718 	lh	t0,1816(a1)
 238:	240100ff 	li	at,255
 23c:	5101001a 	beql	t0,at,2a8 <EnGanonOrgan_Draw+0xdc>
 240:	8e0202c0 	lw	v0,704(s0)
 244:	8e0202c0 	lw	v0,704(s0)
 248:	3c0adb06 	lui	t2,0xdb06
 24c:	354a0020 	ori	t2,t2,0x20
 250:	24490008 	addiu	t1,v0,8
 254:	ae0902c0 	sw	t1,704(s0)
 258:	ac4a0000 	sw	t2,0(v0)
 25c:	8e240000 	lw	a0,0(s1)
 260:	0c000000 	jal	0 <EnGanonOrgan_Init>
 264:	afa2003c 	sw	v0,60(sp)
 268:	8fa3003c 	lw	v1,60(sp)
 26c:	3c0cdb06 	lui	t4,0xdb06
 270:	358c0024 	ori	t4,t4,0x24
 274:	ac620004 	sw	v0,4(v1)
 278:	8e0202c0 	lw	v0,704(s0)
 27c:	244b0008 	addiu	t3,v0,8
 280:	ae0b02c0 	sw	t3,704(s0)
 284:	ac4c0000 	sw	t4,0(v0)
 288:	8e240000 	lw	a0,0(s1)
 28c:	8fa50054 	lw	a1,84(sp)
 290:	0c000000 	jal	0 <EnGanonOrgan_Init>
 294:	afa20038 	sw	v0,56(sp)
 298:	8fa30038 	lw	v1,56(sp)
 29c:	10000017 	b	2fc <EnGanonOrgan_Draw+0x130>
 2a0:	ac620004 	sw	v0,4(v1)
 2a4:	8e0202c0 	lw	v0,704(s0)
 2a8:	3c0edb06 	lui	t6,0xdb06
 2ac:	35ce0020 	ori	t6,t6,0x20
 2b0:	244d0008 	addiu	t5,v0,8
 2b4:	ae0d02c0 	sw	t5,704(s0)
 2b8:	ac4e0000 	sw	t6,0(v0)
 2bc:	8e240000 	lw	a0,0(s1)
 2c0:	0c000000 	jal	0 <EnGanonOrgan_Init>
 2c4:	afa20034 	sw	v0,52(sp)
 2c8:	8fa30034 	lw	v1,52(sp)
 2cc:	3c18db06 	lui	t8,0xdb06
 2d0:	37180024 	ori	t8,t8,0x24
 2d4:	ac620004 	sw	v0,4(v1)
 2d8:	8e0202c0 	lw	v0,704(s0)
 2dc:	244f0008 	addiu	t7,v0,8
 2e0:	ae0f02c0 	sw	t7,704(s0)
 2e4:	ac580000 	sw	t8,0(v0)
 2e8:	8e240000 	lw	a0,0(s1)
 2ec:	0c000000 	jal	0 <EnGanonOrgan_Init>
 2f0:	afa20030 	sw	v0,48(sp)
 2f4:	8fa30030 	lw	v1,48(sp)
 2f8:	ac620004 	sw	v0,4(v1)
 2fc:	44806000 	mtc1	zero,$f12
 300:	00003825 	move	a3,zero
 304:	44066000 	mfc1	a2,$f12
 308:	0c000000 	jal	0 <EnGanonOrgan_Init>
 30c:	46006386 	mov.s	$f14,$f12
 310:	8e0202c0 	lw	v0,704(s0)
 314:	3c08da38 	lui	t0,0xda38
 318:	35080003 	ori	t0,t0,0x3
 31c:	24590008 	addiu	t9,v0,8
 320:	ae1902c0 	sw	t9,704(s0)
 324:	ac480000 	sw	t0,0(v0)
 328:	8e240000 	lw	a0,0(s1)
 32c:	3c050000 	lui	a1,0x0
 330:	24a50048 	addiu	a1,a1,72
 334:	240600dd 	li	a2,221
 338:	0c000000 	jal	0 <EnGanonOrgan_Init>
 33c:	afa2002c 	sw	v0,44(sp)
 340:	8fa3002c 	lw	v1,44(sp)
 344:	3c0a0000 	lui	t2,0x0
 348:	254a0000 	addiu	t2,t2,0
 34c:	ac620004 	sw	v0,4(v1)
 350:	8e0202c0 	lw	v0,704(s0)
 354:	3c04de00 	lui	a0,0xde00
 358:	3c0c0000 	lui	t4,0x0
 35c:	24490008 	addiu	t1,v0,8
 360:	ae0902c0 	sw	t1,704(s0)
 364:	ac4a0004 	sw	t2,4(v0)
 368:	ac440000 	sw	a0,0(v0)
 36c:	8e0202c0 	lw	v0,704(s0)
 370:	258c0000 	addiu	t4,t4,0
 374:	244b0008 	addiu	t3,v0,8
 378:	ae0b02c0 	sw	t3,704(s0)
 37c:	ac440000 	sw	a0,0(v0)
 380:	3c040000 	lui	a0,0x0
 384:	24840060 	addiu	a0,a0,96
 388:	0c000000 	jal	0 <EnGanonOrgan_Init>
 38c:	ac4c0004 	sw	t4,4(v0)
 390:	3c060000 	lui	a2,0x0
 394:	24c60070 	addiu	a2,a2,112
 398:	27a40040 	addiu	a0,sp,64
 39c:	8e250000 	lw	a1,0(s1)
 3a0:	0c000000 	jal	0 <EnGanonOrgan_Init>
 3a4:	240700e6 	li	a3,230
 3a8:	8fbf001c 	lw	ra,28(sp)
 3ac:	8fb00014 	lw	s0,20(sp)
 3b0:	8fb10018 	lw	s1,24(sp)
 3b4:	03e00008 	jr	ra
 3b8:	27bd0058 	addiu	sp,sp,88
 3bc:	00000000 	nop
