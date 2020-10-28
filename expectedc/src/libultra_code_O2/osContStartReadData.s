
build/src/libultra_code_O2/osContStartReadData.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osContStartReadData>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf0014 	sw	ra,20(sp)
   8:	0c000000 	jal	0 <osContStartReadData>
   c:	afa40020 	sw	a0,32(sp)
  10:	3c0e0000 	lui	t6,0x0
  14:	91ce0000 	lbu	t6,0(t6)
  18:	24010001 	li	at,1
  1c:	11c1000b 	beq	t6,at,4c <osContStartReadData+0x4c>
  20:	00000000 	nop
  24:	0c000000 	jal	0 <osContStartReadData>
  28:	00000000 	nop
  2c:	3c050000 	lui	a1,0x0
  30:	24a50000 	addiu	a1,a1,0
  34:	0c000000 	jal	0 <osContStartReadData>
  38:	24040001 	li	a0,1
  3c:	8fa40020 	lw	a0,32(sp)
  40:	00002825 	move	a1,zero
  44:	0c000000 	jal	0 <osContStartReadData>
  48:	24060001 	li	a2,1
  4c:	3c050000 	lui	a1,0x0
  50:	24a50000 	addiu	a1,a1,0
  54:	0c000000 	jal	0 <osContStartReadData>
  58:	00002025 	move	a0,zero
  5c:	240f0001 	li	t7,1
  60:	3c010000 	lui	at,0x0
  64:	afa2001c 	sw	v0,28(sp)
  68:	0c000000 	jal	0 <osContStartReadData>
  6c:	a02f0000 	sb	t7,0(at)
  70:	8fbf0014 	lw	ra,20(sp)
  74:	8fa2001c 	lw	v0,28(sp)
  78:	27bd0020 	addiu	sp,sp,32
  7c:	03e00008 	jr	ra
  80:	00000000 	nop

00000084 <osContGetReadData>:
  84:	3c050000 	lui	a1,0x0
  88:	24a50000 	addiu	a1,a1,0
  8c:	90ae0000 	lbu	t6,0(a1)
  90:	3c020000 	lui	v0,0x0
  94:	27bdfff0 	addiu	sp,sp,-16
  98:	24420000 	addiu	v0,v0,0
  9c:	19c0001a 	blez	t6,108 <osContGetReadData+0x84>
  a0:	00001825 	move	v1,zero
  a4:	27a60004 	addiu	a2,sp,4
  a8:	88410000 	lwl	at,0(v0)
  ac:	98410003 	lwr	at,3(v0)
  b0:	acc10000 	sw	at,0(a2)
  b4:	88580004 	lwl	t8,4(v0)
  b8:	98580007 	lwr	t8,7(v0)
  bc:	acd80004 	sw	t8,4(a2)
  c0:	93b90006 	lbu	t9,6(sp)
  c4:	332800c0 	andi	t0,t9,0xc0
  c8:	00084903 	sra	t1,t0,0x4
  cc:	312a00ff 	andi	t2,t1,0xff
  d0:	15400007 	bnez	t2,f0 <osContGetReadData+0x6c>
  d4:	a0890004 	sb	t1,4(a0)
  d8:	97ab0008 	lhu	t3,8(sp)
  dc:	a48b0000 	sh	t3,0(a0)
  e0:	83ac000a 	lb	t4,10(sp)
  e4:	a08c0002 	sb	t4,2(a0)
  e8:	83ad000b 	lb	t5,11(sp)
  ec:	a08d0003 	sb	t5,3(a0)
  f0:	90ae0000 	lbu	t6,0(a1)
  f4:	24630001 	addiu	v1,v1,1
  f8:	24420008 	addiu	v0,v0,8
  fc:	006e082a 	slt	at,v1,t6
 100:	1420ffe9 	bnez	at,a8 <osContGetReadData+0x24>
 104:	24840006 	addiu	a0,a0,6
 108:	03e00008 	jr	ra
 10c:	27bd0010 	addiu	sp,sp,16

00000110 <__osPackReadData>:
 110:	3c050000 	lui	a1,0x0
 114:	24a50000 	addiu	a1,a1,0
 118:	3c040000 	lui	a0,0x0
 11c:	3c030000 	lui	v1,0x0
 120:	27bdffe8 	addiu	sp,sp,-24
 124:	00a01025 	move	v0,a1
 128:	2463003c 	addiu	v1,v1,60
 12c:	24840000 	addiu	a0,a0,0
 130:	24840004 	addiu	a0,a0,4
 134:	0083082b 	sltu	at,a0,v1
 138:	1420fffd 	bnez	at,130 <__osPackReadData+0x20>
 13c:	ac80fffc 	sw	zero,-4(a0)
 140:	3c040000 	lui	a0,0x0
 144:	24840000 	addiu	a0,a0,0
 148:	908c0000 	lbu	t4,0(a0)
 14c:	240e0001 	li	t6,1
 150:	240f00ff 	li	t7,255
 154:	24180001 	li	t8,1
 158:	24190004 	li	t9,4
 15c:	24080001 	li	t0,1
 160:	3409ffff 	li	t1,0xffff
 164:	240affff 	li	t2,-1
 168:	240bffff 	li	t3,-1
 16c:	acae003c 	sw	t6,60(a1)
 170:	a3af000c 	sb	t7,12(sp)
 174:	a3b8000d 	sb	t8,13(sp)
 178:	a3b9000e 	sb	t9,14(sp)
 17c:	a3a8000f 	sb	t0,15(sp)
 180:	a7a90010 	sh	t1,16(sp)
 184:	a3aa0012 	sb	t2,18(sp)
 188:	a3ab0013 	sb	t3,19(sp)
 18c:	1980000e 	blez	t4,1c8 <__osPackReadData+0xb8>
 190:	00001825 	move	v1,zero
 194:	27a5000c 	addiu	a1,sp,12
 198:	8ca10000 	lw	at,0(a1)
 19c:	24630001 	addiu	v1,v1,1
 1a0:	24420008 	addiu	v0,v0,8
 1a4:	a841fff8 	swl	at,-8(v0)
 1a8:	b841fffb 	swr	at,-5(v0)
 1ac:	8cae0004 	lw	t6,4(a1)
 1b0:	a84efffc 	swl	t6,-4(v0)
 1b4:	b84effff 	swr	t6,-1(v0)
 1b8:	908f0000 	lbu	t7,0(a0)
 1bc:	006f082a 	slt	at,v1,t7
 1c0:	5420fff6 	bnezl	at,19c <__osPackReadData+0x8c>
 1c4:	8ca10000 	lw	at,0(a1)
 1c8:	241800fe 	li	t8,254
 1cc:	a0580000 	sb	t8,0(v0)
 1d0:	03e00008 	jr	ra
 1d4:	27bd0018 	addiu	sp,sp,24
	...
