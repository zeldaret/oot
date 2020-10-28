
build/src/code/shrink_window.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ShrinkWindow_SetVal>:
   0:	3c020000 	lui	v0,0x0
   4:	8c420000 	lw	v0,0(v0)
   8:	27bdffe8 	addiu	sp,sp,-24
   c:	afbf0014 	sw	ra,20(sp)
  10:	afa40018 	sw	a0,24(sp)
  14:	844e1074 	lh	t6,4212(v0)
  18:	24010013 	li	at,19
  1c:	55c10009 	bnel	t6,at,44 <ShrinkWindow_SetVal+0x44>
  20:	8fbf0014 	lw	ra,20(sp)
  24:	844f1076 	lh	t7,4214(v0)
  28:	24010001 	li	at,1
  2c:	3c040000 	lui	a0,0x0
  30:	15e10003 	bne	t7,at,40 <ShrinkWindow_SetVal+0x40>
  34:	24840000 	addiu	a0,a0,0
  38:	0c000000 	jal	0 <ShrinkWindow_SetVal>
  3c:	8fa50018 	lw	a1,24(sp)
  40:	8fbf0014 	lw	ra,20(sp)
  44:	8fb80018 	lw	t8,24(sp)
  48:	3c010000 	lui	at,0x0
  4c:	27bd0018 	addiu	sp,sp,24
  50:	03e00008 	jr	ra
  54:	ac380000 	sw	t8,0(at)

00000058 <ShrinkWindow_GetVal>:
  58:	3c020000 	lui	v0,0x0
  5c:	03e00008 	jr	ra
  60:	8c420000 	lw	v0,0(v0)

00000064 <ShrinkWindow_SetCurrentVal>:
  64:	3c020000 	lui	v0,0x0
  68:	8c420000 	lw	v0,0(v0)
  6c:	27bdffe8 	addiu	sp,sp,-24
  70:	afbf0014 	sw	ra,20(sp)
  74:	afa40018 	sw	a0,24(sp)
  78:	844e1074 	lh	t6,4212(v0)
  7c:	24010013 	li	at,19
  80:	55c10009 	bnel	t6,at,a8 <ShrinkWindow_SetCurrentVal+0x44>
  84:	8fbf0014 	lw	ra,20(sp)
  88:	844f1076 	lh	t7,4214(v0)
  8c:	24010001 	li	at,1
  90:	3c040000 	lui	a0,0x0
  94:	15e10003 	bne	t7,at,a4 <ShrinkWindow_SetCurrentVal+0x40>
  98:	2484001c 	addiu	a0,a0,28
  9c:	0c000000 	jal	0 <ShrinkWindow_SetVal>
  a0:	8fa50018 	lw	a1,24(sp)
  a4:	8fbf0014 	lw	ra,20(sp)
  a8:	8fb80018 	lw	t8,24(sp)
  ac:	3c010000 	lui	at,0x0
  b0:	27bd0018 	addiu	sp,sp,24
  b4:	03e00008 	jr	ra
  b8:	ac380000 	sw	t8,0(at)

000000bc <ShrinkWindow_GetCurrentVal>:
  bc:	3c020000 	lui	v0,0x0
  c0:	03e00008 	jr	ra
  c4:	8c420000 	lw	v0,0(v0)

000000c8 <ShrinkWindow_Init>:
  c8:	3c020000 	lui	v0,0x0
  cc:	8c420000 	lw	v0,0(v0)
  d0:	27bdffe8 	addiu	sp,sp,-24
  d4:	afbf0014 	sw	ra,20(sp)
  d8:	844e1074 	lh	t6,4212(v0)
  dc:	24010013 	li	at,19
  e0:	15c10008 	bne	t6,at,104 <ShrinkWindow_Init+0x3c>
  e4:	00000000 	nop
  e8:	844f1076 	lh	t7,4214(v0)
  ec:	24010001 	li	at,1
  f0:	3c040000 	lui	a0,0x0
  f4:	15e10003 	bne	t7,at,104 <ShrinkWindow_Init+0x3c>
  f8:	00000000 	nop
  fc:	0c000000 	jal	0 <ShrinkWindow_SetVal>
 100:	2484003c 	addiu	a0,a0,60
 104:	3c010000 	lui	at,0x0
 108:	ac200000 	sw	zero,0(at)
 10c:	8fbf0014 	lw	ra,20(sp)
 110:	3c010000 	lui	at,0x0
 114:	ac200000 	sw	zero,0(at)
 118:	3c010000 	lui	at,0x0
 11c:	ac200000 	sw	zero,0(at)
 120:	03e00008 	jr	ra
 124:	27bd0018 	addiu	sp,sp,24

00000128 <ShrinkWindow_Destroy>:
 128:	3c020000 	lui	v0,0x0
 12c:	8c420000 	lw	v0,0(v0)
 130:	27bdffe8 	addiu	sp,sp,-24
 134:	afbf0014 	sw	ra,20(sp)
 138:	844e1074 	lh	t6,4212(v0)
 13c:	24010013 	li	at,19
 140:	55c10009 	bnel	t6,at,168 <ShrinkWindow_Destroy+0x40>
 144:	8fbf0014 	lw	ra,20(sp)
 148:	844f1076 	lh	t7,4214(v0)
 14c:	24010001 	li	at,1
 150:	3c040000 	lui	a0,0x0
 154:	55e10004 	bnel	t7,at,168 <ShrinkWindow_Destroy+0x40>
 158:	8fbf0014 	lw	ra,20(sp)
 15c:	0c000000 	jal	0 <ShrinkWindow_SetVal>
 160:	24840054 	addiu	a0,a0,84
 164:	8fbf0014 	lw	ra,20(sp)
 168:	3c010000 	lui	at,0x0
 16c:	ac200000 	sw	zero,0(at)
 170:	03e00008 	jr	ra
 174:	27bd0018 	addiu	sp,sp,24

00000178 <ShrinkWindow_Update>:
 178:	24010003 	li	at,3
 17c:	14810003 	bne	a0,at,18c <ShrinkWindow_Update+0x14>
 180:	3c060000 	lui	a2,0x0
 184:	1000000d 	b	1bc <ShrinkWindow_Update+0x44>
 188:	2402000a 	li	v0,10
 18c:	240e001e 	li	t6,30
 190:	01c4001a 	div	zero,t6,a0
 194:	00001012 	mflo	v0
 198:	14800002 	bnez	a0,1a4 <ShrinkWindow_Update+0x2c>
 19c:	00000000 	nop
 1a0:	0007000d 	break	0x7
 1a4:	2401ffff 	li	at,-1
 1a8:	14810004 	bne	a0,at,1bc <ShrinkWindow_Update+0x44>
 1ac:	3c018000 	lui	at,0x8000
 1b0:	15c10002 	bne	t6,at,1bc <ShrinkWindow_Update+0x44>
 1b4:	00000000 	nop
 1b8:	0006000d 	break	0x6
 1bc:	3c070000 	lui	a3,0x0
 1c0:	24e70000 	addiu	a3,a3,0
 1c4:	24c60000 	addiu	a2,a2,0
 1c8:	8cc30000 	lw	v1,0(a2)
 1cc:	8ce40000 	lw	a0,0(a3)
 1d0:	3c080000 	lui	t0,0x0
 1d4:	25080000 	addiu	t0,t0,0
 1d8:	0064082a 	slt	at,v1,a0
 1dc:	5020000f 	beqzl	at,21c <ShrinkWindow_Update+0xa4>
 1e0:	0083082a 	slt	at,a0,v1
 1e4:	8d0f0000 	lw	t7,0(t0)
 1e8:	24050001 	li	a1,1
 1ec:	50af0003 	beql	a1,t7,1fc <ShrinkWindow_Update+0x84>
 1f0:	00622821 	addu	a1,v1,v0
 1f4:	ad050000 	sw	a1,0(t0)
 1f8:	00622821 	addu	a1,v1,v0
 1fc:	00a4082a 	slt	at,a1,a0
 200:	10200003 	beqz	at,210 <ShrinkWindow_Update+0x98>
 204:	00000000 	nop
 208:	10000017 	b	268 <ShrinkWindow_Update+0xf0>
 20c:	acc50000 	sw	a1,0(a2)
 210:	10000015 	b	268 <ShrinkWindow_Update+0xf0>
 214:	acc40000 	sw	a0,0(a2)
 218:	0083082a 	slt	at,a0,v1
 21c:	1020000f 	beqz	at,25c <ShrinkWindow_Update+0xe4>
 220:	3c080000 	lui	t0,0x0
 224:	25080000 	addiu	t0,t0,0
 228:	8d180000 	lw	t8,0(t0)
 22c:	24050002 	li	a1,2
 230:	50b80003 	beql	a1,t8,240 <ShrinkWindow_Update+0xc8>
 234:	00622823 	subu	a1,v1,v0
 238:	ad050000 	sw	a1,0(t0)
 23c:	00622823 	subu	a1,v1,v0
 240:	0085082a 	slt	at,a0,a1
 244:	10200003 	beqz	at,254 <ShrinkWindow_Update+0xdc>
 248:	00000000 	nop
 24c:	10000006 	b	268 <ShrinkWindow_Update+0xf0>
 250:	acc50000 	sw	a1,0(a2)
 254:	10000004 	b	268 <ShrinkWindow_Update+0xf0>
 258:	acc40000 	sw	a0,0(a2)
 25c:	3c080000 	lui	t0,0x0
 260:	25080000 	addiu	t0,t0,0
 264:	ad000000 	sw	zero,0(t0)
 268:	3c050000 	lui	a1,0x0
 26c:	24a50000 	addiu	a1,a1,0
 270:	8ca30000 	lw	v1,0(a1)
 274:	24040013 	li	a0,19
 278:	84791074 	lh	t9,4212(v1)
 27c:	14990022 	bne	a0,t9,308 <ShrinkWindow_Update+0x190>
 280:	00000000 	nop
 284:	84691090 	lh	t1,4240(v1)
 288:	50890016 	beql	a0,t1,2e4 <ShrinkWindow_Update+0x16c>
 28c:	8d0a0000 	lw	t2,0(t0)
 290:	a4641090 	sh	a0,4240(v1)
 294:	8caa0000 	lw	t2,0(a1)
 298:	a5401076 	sh	zero,4214(t2)
 29c:	8cab0000 	lw	t3,0(a1)
 2a0:	a5601078 	sh	zero,4216(t3)
 2a4:	8cac0000 	lw	t4,0(a1)
 2a8:	a580107a 	sh	zero,4218(t4)
 2ac:	8cad0000 	lw	t5,0(a1)
 2b0:	a5a0107c 	sh	zero,4220(t5)
 2b4:	8cae0000 	lw	t6,0(a1)
 2b8:	a5c0107e 	sh	zero,4222(t6)
 2bc:	8caf0000 	lw	t7,0(a1)
 2c0:	a5e01080 	sh	zero,4224(t7)
 2c4:	8cb80000 	lw	t8,0(a1)
 2c8:	a7001082 	sh	zero,4226(t8)
 2cc:	8cb90000 	lw	t9,0(a1)
 2d0:	a7201084 	sh	zero,4228(t9)
 2d4:	8ca90000 	lw	t1,0(a1)
 2d8:	a5201086 	sh	zero,4230(t1)
 2dc:	8ca30000 	lw	v1,0(a1)
 2e0:	8d0a0000 	lw	t2,0(t0)
 2e4:	a46a107a 	sh	t2,4218(v1)
 2e8:	8cac0000 	lw	t4,0(a1)
 2ec:	8ccb0000 	lw	t3,0(a2)
 2f0:	a58b107c 	sh	t3,4220(t4)
 2f4:	8cae0000 	lw	t6,0(a1)
 2f8:	8ced0000 	lw	t5,0(a3)
 2fc:	a5cd107e 	sh	t5,4222(t6)
 300:	8caf0000 	lw	t7,0(a1)
 304:	a5e21080 	sh	v0,4224(t7)
 308:	03e00008 	jr	ra
 30c:	00000000 	nop
