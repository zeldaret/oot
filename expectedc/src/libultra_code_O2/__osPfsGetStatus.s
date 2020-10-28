
build/src/libultra_code_O2/__osPfsGetStatus.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osPfsGetStatus>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afa40030 	sw	a0,48(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	afa50034 	sw	a1,52(sp)
  10:	240e00fa 	li	t6,250
  14:	3c010000 	lui	at,0x0
  18:	00a02025 	move	a0,a1
  1c:	a02e0000 	sb	t6,0(at)
  20:	0c000000 	jal	0 <__osPfsGetStatus>
  24:	00002825 	move	a1,zero
  28:	3c050000 	lui	a1,0x0
  2c:	24a50000 	addiu	a1,a1,0
  30:	0c000000 	jal	0 <__osPfsGetStatus>
  34:	24040001 	li	a0,1
  38:	8fa40030 	lw	a0,48(sp)
  3c:	27a50028 	addiu	a1,sp,40
  40:	0c000000 	jal	0 <__osPfsGetStatus>
  44:	24060001 	li	a2,1
  48:	3c050000 	lui	a1,0x0
  4c:	24a50000 	addiu	a1,a1,0
  50:	0c000000 	jal	0 <__osPfsGetStatus>
  54:	00002025 	move	a0,zero
  58:	afa2002c 	sw	v0,44(sp)
  5c:	8fa40030 	lw	a0,48(sp)
  60:	27a50028 	addiu	a1,sp,40
  64:	0c000000 	jal	0 <__osPfsGetStatus>
  68:	24060001 	li	a2,1
  6c:	8fa40034 	lw	a0,52(sp)
  70:	0c000000 	jal	0 <__osPfsGetStatus>
  74:	27a50024 	addiu	a1,sp,36
  78:	93a20026 	lbu	v0,38(sp)
  7c:	93b80027 	lbu	t8,39(sp)
  80:	8fbf0014 	lw	ra,20(sp)
  84:	30430001 	andi	v1,v0,0x1
  88:	10600005 	beqz	v1,a0 <__osPfsGetStatus+0xa0>
  8c:	304f0002 	andi	t7,v0,0x2
  90:	11e00003 	beqz	t7,a0 <__osPfsGetStatus+0xa0>
  94:	00000000 	nop
  98:	1000000b 	b	c8 <__osPfsGetStatus+0xc8>
  9c:	24020002 	li	v0,2
  a0:	17000003 	bnez	t8,b0 <__osPfsGetStatus+0xb0>
  a4:	00000000 	nop
  a8:	14600003 	bnez	v1,b8 <__osPfsGetStatus+0xb8>
  ac:	30590004 	andi	t9,v0,0x4
  b0:	10000005 	b	c8 <__osPfsGetStatus+0xc8>
  b4:	24020001 	li	v0,1
  b8:	13200003 	beqz	t9,c8 <__osPfsGetStatus+0xc8>
  bc:	8fa2002c 	lw	v0,44(sp)
  c0:	10000001 	b	c8 <__osPfsGetStatus+0xc8>
  c4:	24020004 	li	v0,4
  c8:	03e00008 	jr	ra
  cc:	27bd0030 	addiu	sp,sp,48

000000d0 <__osPfsRequestOneChannel>:
  d0:	27bdffe8 	addiu	sp,sp,-24
  d4:	3c060000 	lui	a2,0x0
  d8:	240700fe 	li	a3,254
  dc:	3c010000 	lui	at,0x0
  e0:	24c20000 	addiu	v0,a2,0
  e4:	afa5001c 	sw	a1,28(sp)
  e8:	a0270000 	sb	a3,0(at)
  ec:	240f0001 	li	t7,1
  f0:	ac4f003c 	sw	t7,60(v0)
  f4:	24180001 	li	t8,1
  f8:	24190003 	li	t9,3
  fc:	240800ff 	li	t0,255
 100:	240900ff 	li	t1,255
 104:	240a00ff 	li	t2,255
 108:	a3b8000c 	sb	t8,12(sp)
 10c:	a3b9000d 	sb	t9,13(sp)
 110:	a3a5000e 	sb	a1,14(sp)
 114:	a3a8000f 	sb	t0,15(sp)
 118:	a3a90010 	sb	t1,16(sp)
 11c:	a3aa0011 	sb	t2,17(sp)
 120:	18800010 	blez	a0,164 <__osPfsRequestOneChannel+0x94>
 124:	00001825 	move	v1,zero
 128:	30860003 	andi	a2,a0,0x3
 12c:	10c00006 	beqz	a2,148 <__osPfsRequestOneChannel+0x78>
 130:	00c02825 	move	a1,a2
 134:	24630001 	addiu	v1,v1,1
 138:	a0400000 	sb	zero,0(v0)
 13c:	14a3fffd 	bne	a1,v1,134 <__osPfsRequestOneChannel+0x64>
 140:	24420001 	addiu	v0,v0,1
 144:	10640007 	beq	v1,a0,164 <__osPfsRequestOneChannel+0x94>
 148:	24630004 	addiu	v1,v1,4
 14c:	a0400001 	sb	zero,1(v0)
 150:	a0400002 	sb	zero,2(v0)
 154:	a0400003 	sb	zero,3(v0)
 158:	24420004 	addiu	v0,v0,4
 15c:	1464fffa 	bne	v1,a0,148 <__osPfsRequestOneChannel+0x78>
 160:	a040fffc 	sb	zero,-4(v0)
 164:	27ab000c 	addiu	t3,sp,12
 168:	8d610000 	lw	at,0(t3)
 16c:	24420006 	addiu	v0,v0,6
 170:	a841fffa 	swl	at,-6(v0)
 174:	b841fffd 	swr	at,-3(v0)
 178:	91610004 	lbu	at,4(t3)
 17c:	a041fffe 	sb	at,-2(v0)
 180:	916d0005 	lbu	t5,5(t3)
 184:	a0470000 	sb	a3,0(v0)
 188:	27bd0018 	addiu	sp,sp,24
 18c:	03e00008 	jr	ra
 190:	a04dffff 	sb	t5,-1(v0)

00000194 <__osPfsGetOneChannelData>:
 194:	3c020000 	lui	v0,0x0
 198:	27bdffe8 	addiu	sp,sp,-24
 19c:	24420000 	addiu	v0,v0,0
 1a0:	1880000b 	blez	a0,1d0 <__osPfsGetOneChannelData+0x3c>
 1a4:	00001825 	move	v1,zero
 1a8:	30870003 	andi	a3,a0,0x3
 1ac:	10e00005 	beqz	a3,1c4 <__osPfsGetOneChannelData+0x30>
 1b0:	00e03025 	move	a2,a3
 1b4:	24630001 	addiu	v1,v1,1
 1b8:	14c3fffe 	bne	a2,v1,1b4 <__osPfsGetOneChannelData+0x20>
 1bc:	24420001 	addiu	v0,v0,1
 1c0:	10640003 	beq	v1,a0,1d0 <__osPfsGetOneChannelData+0x3c>
 1c4:	24630004 	addiu	v1,v1,4
 1c8:	1464fffe 	bne	v1,a0,1c4 <__osPfsGetOneChannelData+0x30>
 1cc:	24420004 	addiu	v0,v0,4
 1d0:	88410000 	lwl	at,0(v0)
 1d4:	98410003 	lwr	at,3(v0)
 1d8:	27ae000c 	addiu	t6,sp,12
 1dc:	adc10000 	sw	at,0(t6)
 1e0:	90410004 	lbu	at,4(v0)
 1e4:	a1c10004 	sb	at,4(t6)
 1e8:	90580005 	lbu	t8,5(v0)
 1ec:	a1d80005 	sb	t8,5(t6)
 1f0:	93b9000d 	lbu	t9,13(sp)
 1f4:	332800c0 	andi	t0,t9,0xc0
 1f8:	00084903 	sra	t1,t0,0x4
 1fc:	312a00ff 	andi	t2,t1,0xff
 200:	15400008 	bnez	t2,224 <__osPfsGetOneChannelData+0x90>
 204:	a0a90003 	sb	t1,3(a1)
 208:	93ab0010 	lbu	t3,16(sp)
 20c:	93ad000f 	lbu	t5,15(sp)
 210:	000b6200 	sll	t4,t3,0x8
 214:	018d7825 	or	t7,t4,t5
 218:	a4af0000 	sh	t7,0(a1)
 21c:	93ae0011 	lbu	t6,17(sp)
 220:	a0ae0002 	sb	t6,2(a1)
 224:	03e00008 	jr	ra
 228:	27bd0018 	addiu	sp,sp,24
 22c:	00000000 	nop
