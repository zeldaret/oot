
build/src/overlays/actors/ovl_En_Skjneedle/z_en_skjneedle.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnSkjneedle_Init>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afa5002c 	sw	a1,44(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	0c000000 	jal	0 <EnSkjneedle_Init>
  1c:	24a5004c 	addiu	a1,a1,76
  20:	26050194 	addiu	a1,s0,404
  24:	afa50020 	sw	a1,32(sp)
  28:	0c000000 	jal	0 <EnSkjneedle_Init>
  2c:	8fa4002c 	lw	a0,44(sp)
  30:	3c070000 	lui	a3,0x0
  34:	8fa50020 	lw	a1,32(sp)
  38:	24e70020 	addiu	a3,a3,32
  3c:	8fa4002c 	lw	a0,44(sp)
  40:	0c000000 	jal	0 <EnSkjneedle_Init>
  44:	02003025 	move	a2,s0
  48:	3c060000 	lui	a2,0x0
  4c:	24c60000 	addiu	a2,a2,0
  50:	260400b4 	addiu	a0,s0,180
  54:	24050000 	li	a1,0
  58:	0c000000 	jal	0 <EnSkjneedle_Init>
  5c:	3c0741a0 	lui	a3,0x41a0
  60:	8e0e0004 	lw	t6,4(s0)
  64:	2401fffe 	li	at,-2
  68:	3c053c23 	lui	a1,0x3c23
  6c:	01c17824 	and	t7,t6,at
  70:	ae0f0004 	sw	t7,4(s0)
  74:	34a5d70a 	ori	a1,a1,0xd70a
  78:	0c000000 	jal	0 <EnSkjneedle_Init>
  7c:	02002025 	move	a0,s0
  80:	8fbf001c 	lw	ra,28(sp)
  84:	8fb00018 	lw	s0,24(sp)
  88:	27bd0028 	addiu	sp,sp,40
  8c:	03e00008 	jr	ra
  90:	00000000 	nop

00000094 <EnSkjneedle_Destroy>:
  94:	27bdffe8 	addiu	sp,sp,-24
  98:	00803025 	move	a2,a0
  9c:	afbf0014 	sw	ra,20(sp)
  a0:	00a02025 	move	a0,a1
  a4:	0c000000 	jal	0 <EnSkjneedle_Init>
  a8:	24c50194 	addiu	a1,a2,404
  ac:	8fbf0014 	lw	ra,20(sp)
  b0:	27bd0018 	addiu	sp,sp,24
  b4:	03e00008 	jr	ra
  b8:	00000000 	nop

000000bc <func_80B01F6C>:
  bc:	908e01a4 	lbu	t6,420(a0)
  c0:	00001025 	move	v0,zero
  c4:	31cf0002 	andi	t7,t6,0x2
  c8:	11e00006 	beqz	t7,e4 <func_80B01F6C+0x28>
  cc:	00000000 	nop
  d0:	909801a5 	lbu	t8,421(a0)
  d4:	24020001 	li	v0,1
  d8:	3319fffd 	andi	t9,t8,0xfffd
  dc:	03e00008 	jr	ra
  e0:	a09901a5 	sb	t9,421(a0)
  e4:	03e00008 	jr	ra
  e8:	00000000 	nop

000000ec <EnSkjneedle_Update>:
  ec:	27bdffc8 	addiu	sp,sp,-56
  f0:	afbf0024 	sw	ra,36(sp)
  f4:	afb10020 	sw	s1,32(sp)
  f8:	afb0001c 	sw	s0,28(sp)
  fc:	848e01e0 	lh	t6,480(a0)
 100:	848201e2 	lh	v0,482(a0)
 104:	00808025 	move	s0,a0
 108:	25cf0001 	addiu	t7,t6,1
 10c:	00a08825 	move	s1,a1
 110:	10400003 	beqz	v0,120 <EnSkjneedle_Update+0x34>
 114:	a48f01e0 	sh	t7,480(a0)
 118:	2458ffff 	addiu	t8,v0,-1
 11c:	a49801e2 	sh	t8,482(a0)
 120:	0c000000 	jal	0 <EnSkjneedle_Init>
 124:	02002025 	move	a0,s0
 128:	14400006 	bnez	v0,144 <EnSkjneedle_Update+0x58>
 12c:	00000000 	nop
 130:	861901e2 	lh	t9,482(s0)
 134:	02002025 	move	a0,s0
 138:	3c053c23 	lui	a1,0x3c23
 13c:	17200005 	bnez	t9,154 <EnSkjneedle_Update+0x68>
 140:	00000000 	nop
 144:	0c000000 	jal	0 <EnSkjneedle_Init>
 148:	02002025 	move	a0,s0
 14c:	1000001f 	b	1cc <EnSkjneedle_Update+0xe0>
 150:	8fbf0024 	lw	ra,36(sp)
 154:	0c000000 	jal	0 <EnSkjneedle_Init>
 158:	34a5d70a 	ori	a1,a1,0xd70a
 15c:	26050194 	addiu	a1,s0,404
 160:	afa50028 	sw	a1,40(sp)
 164:	0c000000 	jal	0 <EnSkjneedle_Init>
 168:	02002025 	move	a0,s0
 16c:	3c010001 	lui	at,0x1
 170:	34211e60 	ori	at,at,0x1e60
 174:	02212821 	addu	a1,s1,at
 178:	afa5002c 	sw	a1,44(sp)
 17c:	02202025 	move	a0,s1
 180:	0c000000 	jal	0 <EnSkjneedle_Init>
 184:	8fa60028 	lw	a2,40(sp)
 188:	8fa5002c 	lw	a1,44(sp)
 18c:	02202025 	move	a0,s1
 190:	0c000000 	jal	0 <EnSkjneedle_Init>
 194:	8fa60028 	lw	a2,40(sp)
 198:	0c000000 	jal	0 <EnSkjneedle_Init>
 19c:	02002025 	move	a0,s0
 1a0:	3c0141a0 	lui	at,0x41a0
 1a4:	44810000 	mtc1	at,$f0
 1a8:	24080007 	li	t0,7
 1ac:	afa80014 	sw	t0,20(sp)
 1b0:	44060000 	mfc1	a2,$f0
 1b4:	44070000 	mfc1	a3,$f0
 1b8:	02202025 	move	a0,s1
 1bc:	02002825 	move	a1,s0
 1c0:	0c000000 	jal	0 <EnSkjneedle_Init>
 1c4:	e7a00010 	swc1	$f0,16(sp)
 1c8:	8fbf0024 	lw	ra,36(sp)
 1cc:	8fb0001c 	lw	s0,28(sp)
 1d0:	8fb10020 	lw	s1,32(sp)
 1d4:	03e00008 	jr	ra
 1d8:	27bd0038 	addiu	sp,sp,56

000001dc <EnSkjneedle_Draw>:
 1dc:	27bdffb8 	addiu	sp,sp,-72
 1e0:	afbf001c 	sw	ra,28(sp)
 1e4:	afb00018 	sw	s0,24(sp)
 1e8:	afa40048 	sw	a0,72(sp)
 1ec:	afa5004c 	sw	a1,76(sp)
 1f0:	8ca50000 	lw	a1,0(a1)
 1f4:	3c060000 	lui	a2,0x0
 1f8:	24c60000 	addiu	a2,a2,0
 1fc:	27a40030 	addiu	a0,sp,48
 200:	240700c8 	li	a3,200
 204:	0c000000 	jal	0 <EnSkjneedle_Init>
 208:	00a08025 	move	s0,a1
 20c:	8faf004c 	lw	t7,76(sp)
 210:	0c000000 	jal	0 <EnSkjneedle_Init>
 214:	8de40000 	lw	a0,0(t7)
 218:	8e0202c0 	lw	v0,704(s0)
 21c:	3c19da38 	lui	t9,0xda38
 220:	37390003 	ori	t9,t9,0x3
 224:	24580008 	addiu	t8,v0,8
 228:	ae1802c0 	sw	t8,704(s0)
 22c:	ac590000 	sw	t9,0(v0)
 230:	8fa8004c 	lw	t0,76(sp)
 234:	3c050000 	lui	a1,0x0
 238:	24a50018 	addiu	a1,a1,24
 23c:	8d040000 	lw	a0,0(t0)
 240:	240600cd 	li	a2,205
 244:	0c000000 	jal	0 <EnSkjneedle_Init>
 248:	afa2002c 	sw	v0,44(sp)
 24c:	8fa3002c 	lw	v1,44(sp)
 250:	3c0b0000 	lui	t3,0x0
 254:	256b0000 	addiu	t3,t3,0
 258:	ac620004 	sw	v0,4(v1)
 25c:	8e0202c0 	lw	v0,704(s0)
 260:	3c0ade00 	lui	t2,0xde00
 264:	3c060000 	lui	a2,0x0
 268:	24490008 	addiu	t1,v0,8
 26c:	ae0902c0 	sw	t1,704(s0)
 270:	ac4b0004 	sw	t3,4(v0)
 274:	ac4a0000 	sw	t2,0(v0)
 278:	8fac004c 	lw	t4,76(sp)
 27c:	24c60030 	addiu	a2,a2,48
 280:	27a40030 	addiu	a0,sp,48
 284:	240700d2 	li	a3,210
 288:	0c000000 	jal	0 <EnSkjneedle_Init>
 28c:	8d850000 	lw	a1,0(t4)
 290:	8fbf001c 	lw	ra,28(sp)
 294:	8fb00018 	lw	s0,24(sp)
 298:	27bd0048 	addiu	sp,sp,72
 29c:	03e00008 	jr	ra
 2a0:	00000000 	nop
	...
