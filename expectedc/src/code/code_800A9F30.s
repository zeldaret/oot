
build/src/code/code_800A9F30.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800A9F30>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa40018 	sw	a0,24(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	3c040000 	lui	a0,0x0
  10:	afa5001c 	sw	a1,28(sp)
  14:	0c000000 	jal	0 <func_800A9F30>
  18:	24840000 	addiu	a0,a0,0
  1c:	3c050000 	lui	a1,0x0
  20:	24a50000 	addiu	a1,a1,0
  24:	0c000000 	jal	0 <func_800A9F30>
  28:	8fa40018 	lw	a0,24(sp)
  2c:	8fbf0014 	lw	ra,20(sp)
  30:	27bd0018 	addiu	sp,sp,24
  34:	03e00008 	jr	ra
  38:	00000000 	nop

0000003c <func_800A9F6C>:
  3c:	3c010000 	lui	at,0x0
  40:	c4240000 	lwc1	$f4,0(at)
  44:	afa50004 	sw	a1,4(sp)
  48:	afa60008 	sw	a2,8(sp)
  4c:	460c203c 	c.lt.s	$f4,$f12
  50:	afa7000c 	sw	a3,12(sp)
  54:	30e700ff 	andi	a3,a3,0xff
  58:	30c600ff 	andi	a2,a2,0xff
  5c:	45000003 	bc1f	6c <func_800A9F6C+0x30>
  60:	30a500ff 	andi	a1,a1,0xff
  64:	10000005 	b	7c <func_800A9F6C+0x40>
  68:	240203e8 	li	v0,1000
  6c:	46006004 	sqrt.s	$f0,$f12
  70:	4600018d 	trunc.w.s	$f6,$f0
  74:	44023000 	mfc1	v0,$f6
  78:	00000000 	nop
  7c:	284103e8 	slti	at,v0,1000
  80:	10200011 	beqz	at,c8 <func_800A9F6C+0x8c>
  84:	00000000 	nop
  88:	10a0000f 	beqz	a1,c8 <func_800A9F6C+0x8c>
  8c:	00000000 	nop
  90:	10e0000d 	beqz	a3,c8 <func_800A9F6C+0x8c>
  94:	00027a00 	sll	t7,v0,0x8
  98:	01e27823 	subu	t7,t7,v0
  9c:	240103e8 	li	at,1000
  a0:	01e1001a 	div	zero,t7,at
  a4:	0000c012 	mflo	t8
  a8:	00b82023 	subu	a0,a1,t8
  ac:	18800006 	blez	a0,c8 <func_800A9F6C+0x8c>
  b0:	3c020000 	lui	v0,0x0
  b4:	3c010000 	lui	at,0x0
  b8:	24420000 	addiu	v0,v0,0
  bc:	a024010a 	sb	a0,266(at)
  c0:	a046010b 	sb	a2,267(v0)
  c4:	a047010c 	sb	a3,268(v0)
  c8:	03e00008 	jr	ra
  cc:	00000000 	nop

000000d0 <func_800AA000>:
  d0:	3c010000 	lui	at,0x0
  d4:	c4240004 	lwc1	$f4,4(at)
  d8:	afa50004 	sw	a1,4(sp)
  dc:	afa60008 	sw	a2,8(sp)
  e0:	460c203c 	c.lt.s	$f4,$f12
  e4:	afa7000c 	sw	a3,12(sp)
  e8:	30e700ff 	andi	a3,a3,0xff
  ec:	30c600ff 	andi	a2,a2,0xff
  f0:	45000003 	bc1f	100 <func_800AA000+0x30>
  f4:	30a500ff 	andi	a1,a1,0xff
  f8:	10000005 	b	110 <func_800AA000+0x40>
  fc:	240203e8 	li	v0,1000
 100:	46006004 	sqrt.s	$f0,$f12
 104:	4600018d 	trunc.w.s	$f6,$f0
 108:	44023000 	mfc1	v0,$f6
 10c:	00000000 	nop
 110:	284103e8 	slti	at,v0,1000
 114:	10200019 	beqz	at,17c <func_800AA000+0xac>
 118:	00000000 	nop
 11c:	10a00017 	beqz	a1,17c <func_800AA000+0xac>
 120:	00a01825 	move	v1,a1
 124:	10e00015 	beqz	a3,17c <func_800AA000+0xac>
 128:	3c050000 	lui	a1,0x0
 12c:	3c040000 	lui	a0,0x0
 130:	24840040 	addiu	a0,a0,64
 134:	24a50000 	addiu	a1,a1,0
 138:	90af0004 	lbu	t7,4(a1)
 13c:	15e0000c 	bnez	t7,170 <func_800AA000+0xa0>
 140:	0002c200 	sll	t8,v0,0x8
 144:	0302c023 	subu	t8,t8,v0
 148:	240103e8 	li	at,1000
 14c:	0301001a 	div	zero,t8,at
 150:	0000c812 	mflo	t9
 154:	00792023 	subu	a0,v1,t9
 158:	18800008 	blez	a0,17c <func_800AA000+0xac>
 15c:	00000000 	nop
 160:	a0a40004 	sb	a0,4(a1)
 164:	a0a60044 	sb	a2,68(a1)
 168:	03e00008 	jr	ra
 16c:	a0a70084 	sb	a3,132(a1)
 170:	24a50001 	addiu	a1,a1,1
 174:	54a4fff1 	bnel	a1,a0,13c <func_800AA000+0x6c>
 178:	90af0004 	lbu	t7,4(a1)
 17c:	03e00008 	jr	ra
 180:	00000000 	nop

00000184 <func_800AA0B4>:
 184:	27bdffe8 	addiu	sp,sp,-24
 188:	afbf0014 	sw	ra,20(sp)
 18c:	3c040000 	lui	a0,0x0
 190:	0c000000 	jal	0 <func_800A9F30>
 194:	24840000 	addiu	a0,a0,0
 198:	3c020000 	lui	v0,0x0
 19c:	24420000 	addiu	v0,v0,0
 1a0:	3c0e0000 	lui	t6,0x0
 1a4:	25ce0000 	addiu	t6,t6,0
 1a8:	ac4e0460 	sw	t6,1120(v0)
 1ac:	ac400464 	sw	zero,1124(v0)
 1b0:	8fbf0014 	lw	ra,20(sp)
 1b4:	27bd0018 	addiu	sp,sp,24
 1b8:	03e00008 	jr	ra
 1bc:	00000000 	nop

000001c0 <func_800AA0F0>:
 1c0:	3c0f0000 	lui	t7,0x0
 1c4:	8def0460 	lw	t7,1120(t7)
 1c8:	3c0e0000 	lui	t6,0x0
 1cc:	27bdffe8 	addiu	sp,sp,-24
 1d0:	25ce0000 	addiu	t6,t6,0
 1d4:	15cf0009 	bne	t6,t7,1fc <func_800AA0F0+0x3c>
 1d8:	afbf0014 	sw	ra,20(sp)
 1dc:	3c180000 	lui	t8,0x0
 1e0:	8f180464 	lw	t8,1124(t8)
 1e4:	3c010000 	lui	at,0x0
 1e8:	17000004 	bnez	t8,1fc <func_800AA0F0+0x3c>
 1ec:	00000000 	nop
 1f0:	ac200460 	sw	zero,1120(at)
 1f4:	3c010000 	lui	at,0x0
 1f8:	ac200464 	sw	zero,1124(at)
 1fc:	3c040000 	lui	a0,0x0
 200:	0c000000 	jal	0 <func_800A9F30>
 204:	24840000 	addiu	a0,a0,0
 208:	8fbf0014 	lw	ra,20(sp)
 20c:	27bd0018 	addiu	sp,sp,24
 210:	03e00008 	jr	ra
 214:	00000000 	nop

00000218 <func_800AA148>:
 218:	3c020000 	lui	v0,0x0
 21c:	904202ae 	lbu	v0,686(v0)
 220:	38420001 	xori	v0,v0,0x1
 224:	03e00008 	jr	ra
 228:	2c420001 	sltiu	v0,v0,1

0000022c <func_800AA15C>:
 22c:	240e0002 	li	t6,2
 230:	3c010000 	lui	at,0x0
 234:	03e00008 	jr	ra
 238:	a02e0104 	sb	t6,260(at)

0000023c <func_800AA16C>:
 23c:	3c010000 	lui	at,0x0
 240:	03e00008 	jr	ra
 244:	a0200104 	sb	zero,260(at)

00000248 <func_800AA178>:
 248:	0004702b 	sltu	t6,zero,a0
 24c:	3c010000 	lui	at,0x0
 250:	03e00008 	jr	ra
 254:	a02e0105 	sb	t6,261(at)
	...
