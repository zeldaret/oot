
build/src/boot/yaz0.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Yaz0_FirstDMA>:
   0:	3c020000 	lui	v0,0x0
   4:	8c420000 	lw	v0,0(v0)
   8:	3c070000 	lui	a3,0x0
   c:	3c010000 	lui	at,0x0
  10:	244effe7 	addiu	t6,v0,-25
  14:	24e70000 	addiu	a3,a3,0
  18:	ac2e0000 	sw	t6,0(at)
  1c:	8ce40000 	lw	a0,0(a3)
  20:	3c050000 	lui	a1,0x0
  24:	24a50000 	addiu	a1,a1,0
  28:	00451823 	subu	v1,v0,a1
  2c:	27bdffd8 	addiu	sp,sp,-40
  30:	0083082b 	sltu	at,a0,v1
  34:	10200003 	beqz	at,44 <Yaz0_FirstDMA+0x44>
  38:	afbf0014 	sw	ra,20(sp)
  3c:	10000002 	b	48 <Yaz0_FirstDMA+0x48>
  40:	00803025 	move	a2,a0
  44:	00603025 	move	a2,v1
  48:	3c040000 	lui	a0,0x0
  4c:	8c840000 	lw	a0,0(a0)
  50:	0c000000 	jal	0 <Yaz0_FirstDMA>
  54:	afa6001c 	sw	a2,28(sp)
  58:	3c030000 	lui	v1,0x0
  5c:	3c070000 	lui	a3,0x0
  60:	8fa6001c 	lw	a2,28(sp)
  64:	24e70000 	addiu	a3,a3,0
  68:	24630000 	addiu	v1,v1,0
  6c:	8c6f0000 	lw	t7,0(v1)
  70:	8cf90000 	lw	t9,0(a3)
  74:	8fbf0014 	lw	ra,20(sp)
  78:	3c020000 	lui	v0,0x0
  7c:	01e6c021 	addu	t8,t7,a2
  80:	03264023 	subu	t0,t9,a2
  84:	ac780000 	sw	t8,0(v1)
  88:	ace80000 	sw	t0,0(a3)
  8c:	24420000 	addiu	v0,v0,0
  90:	03e00008 	jr	ra
  94:	27bd0028 	addiu	sp,sp,40

00000098 <Yaz0_NextDMA>:
  98:	3c0e0000 	lui	t6,0x0
  9c:	8dce0000 	lw	t6,0(t6)
  a0:	27bdffd0 	addiu	sp,sp,-48
  a4:	afbf001c 	sw	ra,28(sp)
  a8:	01c43823 	subu	a3,t6,a0
  ac:	30e20007 	andi	v0,a3,0x7
  b0:	10400006 	beqz	v0,cc <Yaz0_NextDMA+0x34>
  b4:	afb00018 	sw	s0,24(sp)
  b8:	3c0f0000 	lui	t7,0x0
  bc:	25ef0000 	addiu	t7,t7,0
  c0:	01e28023 	subu	s0,t7,v0
  c4:	10000003 	b	d4 <Yaz0_NextDMA+0x3c>
  c8:	26100008 	addiu	s0,s0,8
  cc:	3c100000 	lui	s0,0x0
  d0:	26100000 	addiu	s0,s0,0
  d4:	02002825 	move	a1,s0
  d8:	00e03025 	move	a2,a3
  dc:	0c000000 	jal	0 <Yaz0_FirstDMA>
  e0:	afa70028 	sw	a3,40(sp)
  e4:	3c180000 	lui	t8,0x0
  e8:	8f180000 	lw	t8,0(t8)
  ec:	3c030000 	lui	v1,0x0
  f0:	8fa70028 	lw	a3,40(sp)
  f4:	24630000 	addiu	v1,v1,0
  f8:	8c620000 	lw	v0,0(v1)
  fc:	0310c823 	subu	t9,t8,s0
 100:	03273023 	subu	a2,t9,a3
 104:	0046082b 	sltu	at,v0,a2
 108:	10200002 	beqz	at,114 <Yaz0_NextDMA+0x7c>
 10c:	3c040000 	lui	a0,0x0
 110:	00403025 	move	a2,v0
 114:	10c00015 	beqz	a2,16c <Yaz0_NextDMA+0xd4>
 118:	02072821 	addu	a1,s0,a3
 11c:	8c840000 	lw	a0,0(a0)
 120:	afa50020 	sw	a1,32(sp)
 124:	0c000000 	jal	0 <Yaz0_FirstDMA>
 128:	afa60024 	sw	a2,36(sp)
 12c:	3c020000 	lui	v0,0x0
 130:	3c030000 	lui	v1,0x0
 134:	8fa60024 	lw	a2,36(sp)
 138:	24630000 	addiu	v1,v1,0
 13c:	24420000 	addiu	v0,v0,0
 140:	8c480000 	lw	t0,0(v0)
 144:	8c6a0000 	lw	t2,0(v1)
 148:	8fa50020 	lw	a1,32(sp)
 14c:	01064821 	addu	t1,t0,a2
 150:	01465823 	subu	t3,t2,a2
 154:	ac490000 	sw	t1,0(v0)
 158:	15600004 	bnez	t3,16c <Yaz0_NextDMA+0xd4>
 15c:	ac6b0000 	sw	t3,0(v1)
 160:	00a66821 	addu	t5,a1,a2
 164:	3c010000 	lui	at,0x0
 168:	ac2d0000 	sw	t5,0(at)
 16c:	8fbf001c 	lw	ra,28(sp)
 170:	02001025 	move	v0,s0
 174:	8fb00018 	lw	s0,24(sp)
 178:	03e00008 	jr	ra
 17c:	27bd0030 	addiu	sp,sp,48

00000180 <Yaz0_DecompressImpl>:
 180:	27bdffc0 	addiu	sp,sp,-64
 184:	afbf002c 	sw	ra,44(sp)
 188:	afb40028 	sw	s4,40(sp)
 18c:	afb30024 	sw	s3,36(sp)
 190:	afb20020 	sw	s2,32(sp)
 194:	afb1001c 	sw	s1,28(sp)
 198:	afb00018 	sw	s0,24(sp)
 19c:	8c8e0004 	lw	t6,4(a0)
 1a0:	3c120000 	lui	s2,0x0
 1a4:	3c130000 	lui	s3,0x0
 1a8:	00a08025 	move	s0,a1
 1ac:	00003025 	move	a2,zero
 1b0:	24910010 	addiu	s1,a0,16
 1b4:	26730000 	addiu	s3,s3,0
 1b8:	26520000 	addiu	s2,s2,0
 1bc:	8fa70030 	lw	a3,48(sp)
 1c0:	01c5a021 	addu	s4,t6,a1
 1c4:	54c0000f 	bnezl	a2,204 <Yaz0_DecompressImpl+0x84>
 1c8:	30f90080 	andi	t9,a3,0x80
 1cc:	8e4f0000 	lw	t7,0(s2)
 1d0:	01f1082b 	sltu	at,t7,s1
 1d4:	50200008 	beqzl	at,1f8 <Yaz0_DecompressImpl+0x78>
 1d8:	92270000 	lbu	a3,0(s1)
 1dc:	8e780000 	lw	t8,0(s3)
 1e0:	53000005 	beqzl	t8,1f8 <Yaz0_DecompressImpl+0x78>
 1e4:	92270000 	lbu	a3,0(s1)
 1e8:	0c000000 	jal	0 <Yaz0_FirstDMA>
 1ec:	02202025 	move	a0,s1
 1f0:	00408825 	move	s1,v0
 1f4:	92270000 	lbu	a3,0(s1)
 1f8:	26310001 	addiu	s1,s1,1
 1fc:	24060008 	li	a2,8
 200:	30f90080 	andi	t9,a3,0x80
 204:	13200006 	beqz	t9,220 <Yaz0_DecompressImpl+0xa0>
 208:	00073840 	sll	a3,a3,0x1
 20c:	92280000 	lbu	t0,0(s1)
 210:	26100001 	addiu	s0,s0,1
 214:	26310001 	addiu	s1,s1,1
 218:	10000027 	b	2b8 <Yaz0_DecompressImpl+0x138>
 21c:	a208ffff 	sb	t0,-1(s0)
 220:	92230000 	lbu	v1,0(s1)
 224:	92290001 	lbu	t1,1(s1)
 228:	26310002 	addiu	s1,s1,2
 22c:	306a000f 	andi	t2,v1,0xf
 230:	000a5a00 	sll	t3,t2,0x8
 234:	00032903 	sra	a1,v1,0x4
 238:	012b2025 	or	a0,t1,t3
 23c:	14a00005 	bnez	a1,254 <Yaz0_DecompressImpl+0xd4>
 240:	02041023 	subu	v0,s0,a0
 244:	92230000 	lbu	v1,0(s1)
 248:	26310001 	addiu	s1,s1,1
 24c:	10000002 	b	258 <Yaz0_DecompressImpl+0xd8>
 250:	24630012 	addiu	v1,v1,18
 254:	24a30002 	addiu	v1,a1,2
 258:	30650003 	andi	a1,v1,0x3
 25c:	00052823 	negu	a1,a1
 260:	10a00009 	beqz	a1,288 <Yaz0_DecompressImpl+0x108>
 264:	00a32021 	addu	a0,a1,v1
 268:	904cffff 	lbu	t4,-1(v0)
 26c:	2463ffff 	addiu	v1,v1,-1
 270:	26100001 	addiu	s0,s0,1
 274:	24420001 	addiu	v0,v0,1
 278:	1483fffb 	bne	a0,v1,268 <Yaz0_DecompressImpl+0xe8>
 27c:	a20cffff 	sb	t4,-1(s0)
 280:	1060000d 	beqz	v1,2b8 <Yaz0_DecompressImpl+0x138>
 284:	00000000 	nop
 288:	904dffff 	lbu	t5,-1(v0)
 28c:	2463fffc 	addiu	v1,v1,-4
 290:	26100004 	addiu	s0,s0,4
 294:	a20dfffc 	sb	t5,-4(s0)
 298:	904e0000 	lbu	t6,0(v0)
 29c:	24420004 	addiu	v0,v0,4
 2a0:	a20efffd 	sb	t6,-3(s0)
 2a4:	904ffffd 	lbu	t7,-3(v0)
 2a8:	a20ffffe 	sb	t7,-2(s0)
 2ac:	9058fffe 	lbu	t8,-2(v0)
 2b0:	1460fff5 	bnez	v1,288 <Yaz0_DecompressImpl+0x108>
 2b4:	a218ffff 	sb	t8,-1(s0)
 2b8:	1614ffc2 	bne	s0,s4,1c4 <Yaz0_DecompressImpl+0x44>
 2bc:	24c6ffff 	addiu	a2,a2,-1
 2c0:	8fbf002c 	lw	ra,44(sp)
 2c4:	afa70030 	sw	a3,48(sp)
 2c8:	8fb00018 	lw	s0,24(sp)
 2cc:	8fb1001c 	lw	s1,28(sp)
 2d0:	8fb20020 	lw	s2,32(sp)
 2d4:	8fb30024 	lw	s3,36(sp)
 2d8:	8fb40028 	lw	s4,40(sp)
 2dc:	03e00008 	jr	ra
 2e0:	27bd0040 	addiu	sp,sp,64

000002e4 <Yaz0_Decompress>:
 2e4:	3c010000 	lui	at,0x0
 2e8:	ac240000 	sw	a0,0(at)
 2ec:	3c010000 	lui	at,0x0
 2f0:	27bdffe8 	addiu	sp,sp,-24
 2f4:	ac260000 	sw	a2,0(at)
 2f8:	3c0e0000 	lui	t6,0x0
 2fc:	afbf0014 	sw	ra,20(sp)
 300:	25ce0400 	addiu	t6,t6,1024
 304:	3c010000 	lui	at,0x0
 308:	afa5001c 	sw	a1,28(sp)
 30c:	0c000000 	jal	0 <Yaz0_FirstDMA>
 310:	ac2e0000 	sw	t6,0(at)
 314:	00402025 	move	a0,v0
 318:	0c000000 	jal	0 <Yaz0_FirstDMA>
 31c:	8fa5001c 	lw	a1,28(sp)
 320:	8fbf0014 	lw	ra,20(sp)
 324:	27bd0018 	addiu	sp,sp,24
 328:	03e00008 	jr	ra
 32c:	00000000 	nop
