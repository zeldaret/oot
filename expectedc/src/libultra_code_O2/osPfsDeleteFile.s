
build/src/libultra_code_O2/osPfsDeleteFile.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osPfsDeleteFile>:
   0:	27bdfe90 	addiu	sp,sp,-368
   4:	afb20024 	sw	s2,36(sp)
   8:	afa50174 	sw	a1,372(sp)
   c:	30aeffff 	andi	t6,a1,0xffff
  10:	01c02825 	move	a1,t6
  14:	00809025 	move	s2,a0
  18:	afbf0034 	sw	ra,52(sp)
  1c:	afb50030 	sw	s5,48(sp)
  20:	afb4002c 	sw	s4,44(sp)
  24:	afb30028 	sw	s3,40(sp)
  28:	afb10020 	sw	s1,32(sp)
  2c:	11c00003 	beqz	t6,3c <osPfsDeleteFile+0x3c>
  30:	afb0001c 	sw	s0,28(sp)
  34:	14c00003 	bnez	a2,44 <osPfsDeleteFile+0x44>
  38:	02402025 	move	a0,s2
  3c:	1000005d 	b	1b4 <osPfsDeleteFile+0x1b4>
  40:	24020005 	li	v0,5
  44:	8faf0180 	lw	t7,384(sp)
  48:	27b8016c 	addiu	t8,sp,364
  4c:	afb80014 	sw	t8,20(sp)
  50:	0c000000 	jal	0 <osPfsDeleteFile>
  54:	afaf0010 	sw	t7,16(sp)
  58:	50400004 	beqzl	v0,6c <osPfsDeleteFile+0x6c>
  5c:	92590065 	lbu	t9,101(s2)
  60:	10000055 	b	1b8 <osPfsDeleteFile+0x1b8>
  64:	8fbf0034 	lw	ra,52(sp)
  68:	92590065 	lbu	t9,101(s2)
  6c:	02402025 	move	a0,s2
  70:	53200008 	beqzl	t9,94 <osPfsDeleteFile+0x94>
  74:	8e48005c 	lw	t0,92(s2)
  78:	0c000000 	jal	0 <osPfsDeleteFile>
  7c:	00002825 	move	a1,zero
  80:	50400004 	beqzl	v0,94 <osPfsDeleteFile+0x94>
  84:	8e48005c 	lw	t0,92(s2)
  88:	1000004b 	b	1b8 <osPfsDeleteFile+0x1b8>
  8c:	8fbf0034 	lw	ra,52(sp)
  90:	8e48005c 	lw	t0,92(s2)
  94:	8fa9016c 	lw	t1,364(sp)
  98:	8e440004 	lw	a0,4(s2)
  9c:	8e450008 	lw	a1,8(s2)
  a0:	01093021 	addu	a2,t0,t1
  a4:	30caffff 	andi	t2,a2,0xffff
  a8:	01403025 	move	a2,t2
  ac:	0c000000 	jal	0 <osPfsDeleteFile>
  b0:	27a70048 	addiu	a3,sp,72
  b4:	10400003 	beqz	v0,c4 <osPfsDeleteFile+0xc4>
  b8:	93b0004e 	lbu	s0,78(sp)
  bc:	1000003e 	b	1b8 <osPfsDeleteFile+0x1b8>
  c0:	8fbf0034 	lw	ra,52(sp)
  c4:	92420064 	lbu	v0,100(s2)
  c8:	93b3004f 	lbu	s3,79(sp)
  cc:	24150001 	li	s5,1
  d0:	0202082a 	slt	at,s0,v0
  d4:	10200026 	beqz	at,170 <osPfsDeleteFile+0x170>
  d8:	27b40044 	addiu	s4,sp,68
  dc:	27b10068 	addiu	s1,sp,104
  e0:	02402025 	move	a0,s2
  e4:	02202825 	move	a1,s1
  e8:	00003025 	move	a2,zero
  ec:	0c000000 	jal	0 <osPfsDeleteFile>
  f0:	320700ff 	andi	a3,s0,0xff
  f4:	10400003 	beqz	v0,104 <osPfsDeleteFile+0x104>
  f8:	02402025 	move	a0,s2
  fc:	1000002e 	b	1b8 <osPfsDeleteFile+0x1b8>
 100:	8fbf0034 	lw	ra,52(sp)
 104:	02202825 	move	a1,s1
 108:	326600ff 	andi	a2,s3,0xff
 10c:	320700ff 	andi	a3,s0,0xff
 110:	0c000000 	jal	0 <osPfsDeleteFile>
 114:	afb40010 	sw	s4,16(sp)
 118:	10400003 	beqz	v0,128 <osPfsDeleteFile+0x128>
 11c:	02402025 	move	a0,s2
 120:	10000025 	b	1b8 <osPfsDeleteFile+0x1b8>
 124:	8fbf0034 	lw	ra,52(sp)
 128:	02202825 	move	a1,s1
 12c:	24060001 	li	a2,1
 130:	0c000000 	jal	0 <osPfsDeleteFile>
 134:	320700ff 	andi	a3,s0,0xff
 138:	10400003 	beqz	v0,148 <osPfsDeleteFile+0x148>
 13c:	97ac0044 	lhu	t4,68(sp)
 140:	1000001d 	b	1b8 <osPfsDeleteFile+0x1b8>
 144:	8fbf0034 	lw	ra,52(sp)
 148:	56ac0004 	bnel	s5,t4,15c <osPfsDeleteFile+0x15c>
 14c:	92420064 	lbu	v0,100(s2)
 150:	10000007 	b	170 <osPfsDeleteFile+0x170>
 154:	92420064 	lbu	v0,100(s2)
 158:	92420064 	lbu	v0,100(s2)
 15c:	93b00044 	lbu	s0,68(sp)
 160:	93b30045 	lbu	s3,69(sp)
 164:	0202082a 	slt	at,s0,v0
 168:	5420ffde 	bnezl	at,e4 <osPfsDeleteFile+0xe4>
 16c:	02402025 	move	a0,s2
 170:	0202082a 	slt	at,s0,v0
 174:	14200003 	bnez	at,184 <osPfsDeleteFile+0x184>
 178:	27a40048 	addiu	a0,sp,72
 17c:	1000000d 	b	1b4 <osPfsDeleteFile+0x1b4>
 180:	24020003 	li	v0,3
 184:	0c000000 	jal	0 <osPfsDeleteFile>
 188:	24050020 	li	a1,32
 18c:	8e4d005c 	lw	t5,92(s2)
 190:	8fae016c 	lw	t6,364(sp)
 194:	8e440004 	lw	a0,4(s2)
 198:	8e450008 	lw	a1,8(s2)
 19c:	01ae3021 	addu	a2,t5,t6
 1a0:	30cfffff 	andi	t7,a2,0xffff
 1a4:	01e03025 	move	a2,t7
 1a8:	afa00010 	sw	zero,16(sp)
 1ac:	0c000000 	jal	0 <osPfsDeleteFile>
 1b0:	27a70048 	addiu	a3,sp,72
 1b4:	8fbf0034 	lw	ra,52(sp)
 1b8:	8fb0001c 	lw	s0,28(sp)
 1bc:	8fb10020 	lw	s1,32(sp)
 1c0:	8fb20024 	lw	s2,36(sp)
 1c4:	8fb30028 	lw	s3,40(sp)
 1c8:	8fb4002c 	lw	s4,44(sp)
 1cc:	8fb50030 	lw	s5,48(sp)
 1d0:	03e00008 	jr	ra
 1d4:	27bd0170 	addiu	sp,sp,368

000001d8 <__osPfsReleasePages>:
 1d8:	27bdfff0 	addiu	sp,sp,-16
 1dc:	30e200ff 	andi	v0,a3,0xff
 1e0:	30ce00ff 	andi	t6,a2,0xff
 1e4:	0002c200 	sll	t8,v0,0x8
 1e8:	afa60018 	sw	a2,24(sp)
 1ec:	afa7001c 	sw	a3,28(sp)
 1f0:	030ec821 	addu	t9,t8,t6
 1f4:	a7b9000c 	sh	t9,12(sp)
 1f8:	24070003 	li	a3,3
 1fc:	27a6000c 	addiu	a2,sp,12
 200:	27a30008 	addiu	v1,sp,8
 204:	94c10000 	lhu	at,0(a2)
 208:	a4610000 	sh	at,0(v1)
 20c:	93ab000d 	lbu	t3,13(sp)
 210:	000b6040 	sll	t4,t3,0x1
 214:	00ac6821 	addu	t5,a1,t4
 218:	95a10000 	lhu	at,0(t5)
 21c:	a4c10000 	sh	at,0(a2)
 220:	93b90009 	lbu	t9,9(sp)
 224:	00194840 	sll	t1,t9,0x1
 228:	00a94021 	addu	t0,a1,t1
 22c:	a5070000 	sh	a3,0(t0)
 230:	8c8b0060 	lw	t3,96(a0)
 234:	97aa000c 	lhu	t2,12(sp)
 238:	93ac000c 	lbu	t4,12(sp)
 23c:	014b082a 	slt	at,t2,t3
 240:	54200004 	bnezl	at,254 <__osPfsReleasePages+0x7c>
 244:	8faf0020 	lw	t7,32(sp)
 248:	504cffef 	beql	v0,t4,208 <__osPfsReleasePages+0x30>
 24c:	94c10000 	lhu	at,0(a2)
 250:	8faf0020 	lw	t7,32(sp)
 254:	94c10000 	lhu	at,0(a2)
 258:	27bd0010 	addiu	sp,sp,16
 25c:	00001025 	move	v0,zero
 260:	03e00008 	jr	ra
 264:	a5e10000 	sh	at,0(t7)
	...
