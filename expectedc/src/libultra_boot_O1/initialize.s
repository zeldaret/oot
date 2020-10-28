
build/src/libultra_boot_O1/initialize.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__createSpeedParam>:
   0:	240e0007 	li	t6,7
   4:	3c010000 	lui	at,0x0
   8:	a02e0004 	sb	t6,4(at)
   c:	3c0fa460 	lui	t7,0xa460
  10:	8df80014 	lw	t8,20(t7)
  14:	3c010000 	lui	at,0x0
  18:	3c19a460 	lui	t9,0xa460
  1c:	a0380005 	sb	t8,5(at)
  20:	8f280018 	lw	t0,24(t9)
  24:	3c010000 	lui	at,0x0
  28:	3c09a460 	lui	t1,0xa460
  2c:	a0280008 	sb	t0,8(at)
  30:	8d2a001c 	lw	t2,28(t1)
  34:	3c010000 	lui	at,0x0
  38:	3c0ba460 	lui	t3,0xa460
  3c:	a02a0006 	sb	t2,6(at)
  40:	8d6c0020 	lw	t4,32(t3)
  44:	3c010000 	lui	at,0x0
  48:	240d0007 	li	t5,7
  4c:	a02c0007 	sb	t4,7(at)
  50:	3c010000 	lui	at,0x0
  54:	a02d0004 	sb	t5,4(at)
  58:	3c0ea460 	lui	t6,0xa460
  5c:	8dcf0024 	lw	t7,36(t6)
  60:	3c010000 	lui	at,0x0
  64:	3c18a460 	lui	t8,0xa460
  68:	a02f0005 	sb	t7,5(at)
  6c:	8f190028 	lw	t9,40(t8)
  70:	3c010000 	lui	at,0x0
  74:	3c08a460 	lui	t0,0xa460
  78:	a0390008 	sb	t9,8(at)
  7c:	8d09002c 	lw	t1,44(t0)
  80:	3c010000 	lui	at,0x0
  84:	3c0aa460 	lui	t2,0xa460
  88:	a0290006 	sb	t1,6(at)
  8c:	8d4b0030 	lw	t3,48(t2)
  90:	3c010000 	lui	at,0x0
  94:	03e00008 	jr	ra
  98:	a02b0007 	sb	t3,7(at)

0000009c <__osInitialize_common>:
  9c:	27bdffd0 	addiu	sp,sp,-48
  a0:	afbf001c 	sw	ra,28(sp)
  a4:	240e0001 	li	t6,1
  a8:	3c010000 	lui	at,0x0
  ac:	afb00018 	sw	s0,24(sp)
  b0:	0c000000 	jal	0 <__createSpeedParam>
  b4:	ac2e0000 	sw	t6,0(at)
  b8:	00408025 	move	s0,v0
  bc:	3c012000 	lui	at,0x2000
  c0:	0c000000 	jal	0 <__createSpeedParam>
  c4:	02012025 	or	a0,s0,at
  c8:	3c040100 	lui	a0,0x100
  cc:	0c000000 	jal	0 <__createSpeedParam>
  d0:	34840800 	ori	a0,a0,0x800
  d4:	0c000000 	jal	0 <__createSpeedParam>
  d8:	3c040490 	lui	a0,0x490
  dc:	3c041fc0 	lui	a0,0x1fc0
  e0:	348407fc 	ori	a0,a0,0x7fc
  e4:	0c000000 	jal	0 <__createSpeedParam>
  e8:	27a5002c 	addiu	a1,sp,44
  ec:	10400007 	beqz	v0,10c <__osInitialize_common+0x70>
  f0:	00000000 	nop
  f4:	3c041fc0 	lui	a0,0x1fc0
  f8:	348407fc 	ori	a0,a0,0x7fc
  fc:	0c000000 	jal	0 <__createSpeedParam>
 100:	27a5002c 	addiu	a1,sp,44
 104:	1440fffb 	bnez	v0,f4 <__osInitialize_common+0x58>
 108:	00000000 	nop
 10c:	8fa5002c 	lw	a1,44(sp)
 110:	3c041fc0 	lui	a0,0x1fc0
 114:	348407fc 	ori	a0,a0,0x7fc
 118:	34af0008 	ori	t7,a1,0x8
 11c:	0c000000 	jal	0 <__createSpeedParam>
 120:	01e02825 	move	a1,t7
 124:	10400009 	beqz	v0,14c <__osInitialize_common+0xb0>
 128:	00000000 	nop
 12c:	8fa5002c 	lw	a1,44(sp)
 130:	3c041fc0 	lui	a0,0x1fc0
 134:	348407fc 	ori	a0,a0,0x7fc
 138:	34b80008 	ori	t8,a1,0x8
 13c:	0c000000 	jal	0 <__createSpeedParam>
 140:	03002825 	move	a1,t8
 144:	1440fff9 	bnez	v0,12c <__osInitialize_common+0x90>
 148:	00000000 	nop
 14c:	3c080000 	lui	t0,0x0
 150:	25080000 	addiu	t0,t0,0
 154:	8d010000 	lw	at,0(t0)
 158:	3c198000 	lui	t9,0x8000
 15c:	3c0d0000 	lui	t5,0x0
 160:	af210000 	sw	at,0(t9)
 164:	8d0b0004 	lw	t3,4(t0)
 168:	25ad0000 	addiu	t5,t5,0
 16c:	3c0c8000 	lui	t4,0x8000
 170:	af2b0004 	sw	t3,4(t9)
 174:	8d010008 	lw	at,8(t0)
 178:	358c0080 	ori	t4,t4,0x80
 17c:	3c090000 	lui	t1,0x0
 180:	af210008 	sw	at,8(t9)
 184:	8d0b000c 	lw	t3,12(t0)
 188:	25290000 	addiu	t1,t1,0
 18c:	3c0a8000 	lui	t2,0x8000
 190:	af2b000c 	sw	t3,12(t9)
 194:	8da10000 	lw	at,0(t5)
 198:	354a0100 	ori	t2,t2,0x100
 19c:	3c0e0000 	lui	t6,0x0
 1a0:	ad810000 	sw	at,0(t4)
 1a4:	8db80004 	lw	t8,4(t5)
 1a8:	25ce0000 	addiu	t6,t6,0
 1ac:	3c0f8000 	lui	t7,0x8000
 1b0:	ad980004 	sw	t8,4(t4)
 1b4:	8da10008 	lw	at,8(t5)
 1b8:	35ef0180 	ori	t7,t7,0x180
 1bc:	3c048000 	lui	a0,0x8000
 1c0:	ad810008 	sw	at,8(t4)
 1c4:	8db8000c 	lw	t8,12(t5)
 1c8:	24050190 	li	a1,400
 1cc:	ad98000c 	sw	t8,12(t4)
 1d0:	8d210000 	lw	at,0(t1)
 1d4:	ad410000 	sw	at,0(t2)
 1d8:	8d2b0004 	lw	t3,4(t1)
 1dc:	ad4b0004 	sw	t3,4(t2)
 1e0:	8d210008 	lw	at,8(t1)
 1e4:	ad410008 	sw	at,8(t2)
 1e8:	8d2b000c 	lw	t3,12(t1)
 1ec:	ad4b000c 	sw	t3,12(t2)
 1f0:	8dc10000 	lw	at,0(t6)
 1f4:	ade10000 	sw	at,0(t7)
 1f8:	8dd80004 	lw	t8,4(t6)
 1fc:	adf80004 	sw	t8,4(t7)
 200:	8dc10008 	lw	at,8(t6)
 204:	ade10008 	sw	at,8(t7)
 208:	8dd8000c 	lw	t8,12(t6)
 20c:	0c000000 	jal	0 <__createSpeedParam>
 210:	adf8000c 	sw	t8,12(t7)
 214:	3c048000 	lui	a0,0x8000
 218:	0c000000 	jal	0 <__createSpeedParam>
 21c:	24050190 	li	a1,400
 220:	0c000000 	jal	0 <__createSpeedParam>
 224:	00000000 	nop
 228:	0c000000 	jal	0 <__createSpeedParam>
 22c:	00000000 	nop
 230:	0c000000 	jal	0 <__createSpeedParam>
 234:	00000000 	nop
 238:	3c040000 	lui	a0,0x0
 23c:	3c050000 	lui	a1,0x0
 240:	8ca50004 	lw	a1,4(a1)
 244:	8c840000 	lw	a0,0(a0)
 248:	24060000 	li	a2,0
 24c:	0c000000 	jal	0 <__createSpeedParam>
 250:	24070003 	li	a3,3
 254:	afa20020 	sw	v0,32(sp)
 258:	afa30024 	sw	v1,36(sp)
 25c:	8fa50024 	lw	a1,36(sp)
 260:	8fa40020 	lw	a0,32(sp)
 264:	24060000 	li	a2,0
 268:	0c000000 	jal	0 <__createSpeedParam>
 26c:	24070004 	li	a3,4
 270:	3c080000 	lui	t0,0x0
 274:	8d080000 	lw	t0,0(t0)
 278:	3c010000 	lui	at,0x0
 27c:	ac220000 	sw	v0,0(at)
 280:	15000005 	bnez	t0,298 <__osInitialize_common+0x1fc>
 284:	ac230004 	sw	v1,4(at)
 288:	3c040000 	lui	a0,0x0
 28c:	24840000 	addiu	a0,a0,0
 290:	0c000000 	jal	0 <__createSpeedParam>
 294:	24050040 	li	a1,64
 298:	3c190000 	lui	t9,0x0
 29c:	8f390000 	lw	t9,0(t9)
 2a0:	17200006 	bnez	t9,2bc <__osInitialize_common+0x220>
 2a4:	00000000 	nop
 2a8:	3c0a02f5 	lui	t2,0x2f5
 2ac:	354ab2d2 	ori	t2,t2,0xb2d2
 2b0:	3c010000 	lui	at,0x0
 2b4:	1000000f 	b	2f4 <__osInitialize_common+0x258>
 2b8:	ac2a0000 	sw	t2,0(at)
 2bc:	3c090000 	lui	t1,0x0
 2c0:	8d290000 	lw	t1,0(t1)
 2c4:	24010002 	li	at,2
 2c8:	15210006 	bne	t1,at,2e4 <__osInitialize_common+0x248>
 2cc:	00000000 	nop
 2d0:	3c0b02e6 	lui	t3,0x2e6
 2d4:	356b025c 	ori	t3,t3,0x25c
 2d8:	3c010000 	lui	at,0x0
 2dc:	10000005 	b	2f4 <__osInitialize_common+0x258>
 2e0:	ac2b0000 	sw	t3,0(at)
 2e4:	3c0d02e6 	lui	t5,0x2e6
 2e8:	35add354 	ori	t5,t5,0xd354
 2ec:	3c010000 	lui	at,0x0
 2f0:	ac2d0000 	sw	t5,0(at)
 2f4:	0c000000 	jal	0 <__createSpeedParam>
 2f8:	00000000 	nop
 2fc:	304c1000 	andi	t4,v0,0x1000
 300:	11800003 	beqz	t4,310 <__osInitialize_common+0x274>
 304:	00000000 	nop
 308:	1000ffff 	b	308 <__osInitialize_common+0x26c>
 30c:	00000000 	nop
 310:	240f0001 	li	t7,1
 314:	3c0ea450 	lui	t6,0xa450
 318:	adcf0008 	sw	t7,8(t6)
 31c:	24183fff 	li	t8,16383
 320:	3c08a450 	lui	t0,0xa450
 324:	ad180010 	sw	t8,16(t0)
 328:	2419000f 	li	t9,15
 32c:	3c0aa450 	lui	t2,0xa450
 330:	ad590014 	sw	t9,20(t2)
 334:	8fbf001c 	lw	ra,28(sp)
 338:	8fb00018 	lw	s0,24(sp)
 33c:	27bd0030 	addiu	sp,sp,48
 340:	03e00008 	jr	ra
 344:	00000000 	nop

00000348 <__osInitialize_autodetect>:
 348:	03e00008 	jr	ra
 34c:	00000000 	nop
