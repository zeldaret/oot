
build/src/overlays/actors/ovl_Bg_Mjin/z_bg_mjin.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgMjin_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850168 	sw	a1,360(a0)

00000008 <BgMjin_Init>:
   8:	27bdffe8 	addiu	sp,sp,-24
   c:	afa5001c 	sw	a1,28(sp)
  10:	afbf0014 	sw	ra,20(sp)
  14:	3c050000 	lui	a1,0x0
  18:	24a50020 	addiu	a1,a1,32
  1c:	0c000000 	jal	0 <BgMjin_SetupAction>
  20:	afa40018 	sw	a0,24(sp)
  24:	8fa60018 	lw	a2,24(sp)
  28:	8fa4001c 	lw	a0,28(sp)
  2c:	3c010001 	lui	at,0x1
  30:	84ce001c 	lh	t6,28(a2)
  34:	342117a4 	ori	at,at,0x17a4
  38:	24020068 	li	v0,104
  3c:	11c00003 	beqz	t6,4c <BgMjin_Init+0x44>
  40:	00812021 	addu	a0,a0,at
  44:	10000001 	b	4c <BgMjin_Init+0x44>
  48:	24020061 	li	v0,97
  4c:	00022c00 	sll	a1,v0,0x10
  50:	00052c03 	sra	a1,a1,0x10
  54:	0c000000 	jal	0 <BgMjin_SetupAction>
  58:	afa60018 	sw	a2,24(sp)
  5c:	8fa60018 	lw	a2,24(sp)
  60:	00027e00 	sll	t7,v0,0x18
  64:	000fc603 	sra	t8,t7,0x18
  68:	07010005 	bgez	t8,80 <BgMjin_Init+0x78>
  6c:	a0c20164 	sb	v0,356(a2)
  70:	0c000000 	jal	0 <BgMjin_SetupAction>
  74:	00c02025 	move	a0,a2
  78:	10000006 	b	94 <BgMjin_Init+0x8c>
  7c:	8fbf0014 	lw	ra,20(sp)
  80:	3c050000 	lui	a1,0x0
  84:	24a50000 	addiu	a1,a1,0
  88:	0c000000 	jal	0 <BgMjin_SetupAction>
  8c:	00c02025 	move	a0,a2
  90:	8fbf0014 	lw	ra,20(sp)
  94:	27bd0018 	addiu	sp,sp,24
  98:	03e00008 	jr	ra
  9c:	00000000 	nop

000000a0 <BgMjin_Destroy>:
  a0:	27bdffe8 	addiu	sp,sp,-24
  a4:	afa40018 	sw	a0,24(sp)
  a8:	8fae0018 	lw	t6,24(sp)
  ac:	afbf0014 	sw	ra,20(sp)
  b0:	00a02025 	move	a0,a1
  b4:	24a50810 	addiu	a1,a1,2064
  b8:	0c000000 	jal	0 <BgMjin_SetupAction>
  bc:	8dc6014c 	lw	a2,332(t6)
  c0:	8fbf0014 	lw	ra,20(sp)
  c4:	27bd0018 	addiu	sp,sp,24
  c8:	03e00008 	jr	ra
  cc:	00000000 	nop

000000d0 <func_808A0850>:
  d0:	27bdffd8 	addiu	sp,sp,-40
  d4:	afb00018 	sw	s0,24(sp)
  d8:	3c010001 	lui	at,0x1
  dc:	00808025 	move	s0,a0
  e0:	342117a4 	ori	at,at,0x17a4
  e4:	afbf001c 	sw	ra,28(sp)
  e8:	afa5002c 	sw	a1,44(sp)
  ec:	00a12021 	addu	a0,a1,at
  f0:	0c000000 	jal	0 <BgMjin_SetupAction>
  f4:	82050164 	lb	a1,356(s0)
  f8:	10400024 	beqz	v0,18c <func_808A0850+0xbc>
  fc:	2401ffef 	li	at,-17
 100:	afa00024 	sw	zero,36(sp)
 104:	8e0e0004 	lw	t6,4(s0)
 108:	82180164 	lb	t8,356(s0)
 10c:	02002825 	move	a1,s0
 110:	01c17824 	and	t7,t6,at
 114:	ae0f0004 	sw	t7,4(s0)
 118:	a218001e 	sb	t8,30(s0)
 11c:	0c000000 	jal	0 <BgMjin_SetupAction>
 120:	8fa4002c 	lw	a0,44(sp)
 124:	02002025 	move	a0,s0
 128:	0c000000 	jal	0 <BgMjin_SetupAction>
 12c:	00002825 	move	a1,zero
 130:	8619001c 	lh	t9,28(s0)
 134:	3c040000 	lui	a0,0x0
 138:	24840000 	addiu	a0,a0,0
 13c:	13200004 	beqz	t9,150 <func_808A0850+0x80>
 140:	00000000 	nop
 144:	3c040000 	lui	a0,0x0
 148:	10000001 	b	150 <func_808A0850+0x80>
 14c:	24840000 	addiu	a0,a0,0
 150:	0c000000 	jal	0 <BgMjin_SetupAction>
 154:	27a50024 	addiu	a1,sp,36
 158:	8fa4002c 	lw	a0,44(sp)
 15c:	02003025 	move	a2,s0
 160:	8fa70024 	lw	a3,36(sp)
 164:	0c000000 	jal	0 <BgMjin_SetupAction>
 168:	24850810 	addiu	a1,a0,2064
 16c:	3c050000 	lui	a1,0x0
 170:	ae02014c 	sw	v0,332(s0)
 174:	24a50000 	addiu	a1,a1,0
 178:	0c000000 	jal	0 <BgMjin_SetupAction>
 17c:	02002025 	move	a0,s0
 180:	3c090000 	lui	t1,0x0
 184:	25290000 	addiu	t1,t1,0
 188:	ae090134 	sw	t1,308(s0)
 18c:	8fbf001c 	lw	ra,28(sp)
 190:	8fb00018 	lw	s0,24(sp)
 194:	27bd0028 	addiu	sp,sp,40
 198:	03e00008 	jr	ra
 19c:	00000000 	nop

000001a0 <func_808A0920>:
 1a0:	afa40000 	sw	a0,0(sp)
 1a4:	03e00008 	jr	ra
 1a8:	afa50004 	sw	a1,4(sp)

000001ac <BgMjin_Update>:
 1ac:	27bdffe8 	addiu	sp,sp,-24
 1b0:	afbf0014 	sw	ra,20(sp)
 1b4:	8c990168 	lw	t9,360(a0)
 1b8:	0320f809 	jalr	t9
 1bc:	00000000 	nop
 1c0:	8fbf0014 	lw	ra,20(sp)
 1c4:	27bd0018 	addiu	sp,sp,24
 1c8:	03e00008 	jr	ra
 1cc:	00000000 	nop

000001d0 <BgMjin_Draw>:
 1d0:	27bdffb0 	addiu	sp,sp,-80
 1d4:	afb10018 	sw	s1,24(sp)
 1d8:	00a08825 	move	s1,a1
 1dc:	afbf001c 	sw	ra,28(sp)
 1e0:	afb00014 	sw	s0,20(sp)
 1e4:	afa40050 	sw	a0,80(sp)
 1e8:	8ca50000 	lw	a1,0(a1)
 1ec:	3c060000 	lui	a2,0x0
 1f0:	24c60000 	addiu	a2,a2,0
 1f4:	27a40034 	addiu	a0,sp,52
 1f8:	240700fa 	li	a3,250
 1fc:	0c000000 	jal	0 <BgMjin_SetupAction>
 200:	00a08025 	move	s0,a1
 204:	8fae0050 	lw	t6,80(sp)
 208:	3c010001 	lui	at,0x1
 20c:	342117a4 	ori	at,at,0x17a4
 210:	85c2001c 	lh	v0,28(t6)
 214:	3c070000 	lui	a3,0x0
 218:	02212021 	addu	a0,s1,at
 21c:	1040002a 	beqz	v0,2c8 <BgMjin_Draw+0xf8>
 220:	24e70000 	addiu	a3,a3,0
 224:	00027840 	sll	t7,v0,0x1
 228:	3c050000 	lui	a1,0x0
 22c:	00af2821 	addu	a1,a1,t7
 230:	0c000000 	jal	0 <BgMjin_SetupAction>
 234:	84a5002e 	lh	a1,46(a1)
 238:	0440000c 	bltz	v0,26c <BgMjin_Draw+0x9c>
 23c:	3c0bdb06 	lui	t3,0xdb06
 240:	0002c100 	sll	t8,v0,0x4
 244:	0302c021 	addu	t8,t8,v0
 248:	0018c080 	sll	t8,t8,0x2
 24c:	0238c821 	addu	t9,s1,t8
 250:	3c080001 	lui	t0,0x1
 254:	01194021 	addu	t0,t0,t9
 258:	8d0817b4 	lw	t0,6068(t0)
 25c:	3c018000 	lui	at,0x8000
 260:	01014821 	addu	t1,t0,at
 264:	3c010000 	lui	at,0x0
 268:	ac290018 	sw	t1,24(at)
 26c:	8e0202c0 	lw	v0,704(s0)
 270:	3c040000 	lui	a0,0x0
 274:	24840000 	addiu	a0,a0,0
 278:	00046100 	sll	t4,a0,0x4
 27c:	000c6f02 	srl	t5,t4,0x1c
 280:	244a0008 	addiu	t2,v0,8
 284:	ae0a02c0 	sw	t2,704(s0)
 288:	000d7080 	sll	t6,t5,0x2
 28c:	356b0020 	ori	t3,t3,0x20
 290:	3c0f0000 	lui	t7,0x0
 294:	01ee7821 	addu	t7,t7,t6
 298:	3c0100ff 	lui	at,0xff
 29c:	ac4b0000 	sw	t3,0(v0)
 2a0:	8def0000 	lw	t7,0(t7)
 2a4:	3421ffff 	ori	at,at,0xffff
 2a8:	0081c024 	and	t8,a0,at
 2ac:	3c018000 	lui	at,0x8000
 2b0:	01f8c821 	addu	t9,t7,t8
 2b4:	03214021 	addu	t0,t9,at
 2b8:	3c070000 	lui	a3,0x0
 2bc:	24e70000 	addiu	a3,a3,0
 2c0:	10000001 	b	2c8 <BgMjin_Draw+0xf8>
 2c4:	ac480004 	sw	t0,4(v0)
 2c8:	8e240000 	lw	a0,0(s1)
 2cc:	0c000000 	jal	0 <BgMjin_SetupAction>
 2d0:	afa70048 	sw	a3,72(sp)
 2d4:	8e0202c0 	lw	v0,704(s0)
 2d8:	8fa70048 	lw	a3,72(sp)
 2dc:	3c0ada38 	lui	t2,0xda38
 2e0:	24490008 	addiu	t1,v0,8
 2e4:	ae0902c0 	sw	t1,704(s0)
 2e8:	354a0003 	ori	t2,t2,0x3
 2ec:	ac4a0000 	sw	t2,0(v0)
 2f0:	8e240000 	lw	a0,0(s1)
 2f4:	3c050000 	lui	a1,0x0
 2f8:	24a50010 	addiu	a1,a1,16
 2fc:	2406011d 	li	a2,285
 300:	afa20028 	sw	v0,40(sp)
 304:	0c000000 	jal	0 <BgMjin_SetupAction>
 308:	afa70048 	sw	a3,72(sp)
 30c:	8fa30028 	lw	v1,40(sp)
 310:	8fa70048 	lw	a3,72(sp)
 314:	3c0cde00 	lui	t4,0xde00
 318:	ac620004 	sw	v0,4(v1)
 31c:	8e0202c0 	lw	v0,704(s0)
 320:	3c060000 	lui	a2,0x0
 324:	24c60020 	addiu	a2,a2,32
 328:	244b0008 	addiu	t3,v0,8
 32c:	ae0b02c0 	sw	t3,704(s0)
 330:	ac470004 	sw	a3,4(v0)
 334:	ac4c0000 	sw	t4,0(v0)
 338:	8e250000 	lw	a1,0(s1)
 33c:	24070120 	li	a3,288
 340:	0c000000 	jal	0 <BgMjin_SetupAction>
 344:	27a40034 	addiu	a0,sp,52
 348:	8fbf001c 	lw	ra,28(sp)
 34c:	8fb00014 	lw	s0,20(sp)
 350:	8fb10018 	lw	s1,24(sp)
 354:	03e00008 	jr	ra
 358:	27bd0050 	addiu	sp,sp,80
 35c:	00000000 	nop
