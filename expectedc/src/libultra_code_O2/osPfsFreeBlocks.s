
build/src/libultra_code_O2/osPfsFreeBlocks.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osPfsFreeBlocks>:
   0:	27bdfeb0 	addiu	sp,sp,-336
   4:	afbf002c 	sw	ra,44(sp)
   8:	afb50028 	sw	s5,40(sp)
   c:	afb40024 	sw	s4,36(sp)
  10:	afb30020 	sw	s3,32(sp)
  14:	afb2001c 	sw	s2,28(sp)
  18:	afb10018 	sw	s1,24(sp)
  1c:	afb00014 	sw	s0,20(sp)
  20:	afa50154 	sw	a1,340(sp)
  24:	8c8e0000 	lw	t6,0(a0)
  28:	0080a025 	move	s4,a0
  2c:	00008025 	move	s0,zero
  30:	31cf0001 	andi	t7,t6,0x1
  34:	15e00003 	bnez	t7,44 <osPfsFreeBlocks+0x44>
  38:	00000000 	nop
  3c:	1000004d 	b	174 <osPfsFreeBlocks+0x174>
  40:	24020005 	li	v0,5
  44:	0c000000 	jal	0 <osPfsFreeBlocks>
  48:	02802025 	move	a0,s4
  4c:	50400004 	beqzl	v0,60 <osPfsFreeBlocks+0x60>
  50:	92980064 	lbu	t8,100(s4)
  54:	10000048 	b	178 <osPfsFreeBlocks+0x178>
  58:	8fbf002c 	lw	ra,44(sp)
  5c:	92980064 	lbu	t8,100(s4)
  60:	00009825 	move	s3,zero
  64:	24150080 	li	s5,128
  68:	1b00003e 	blez	t8,164 <osPfsFreeBlocks+0x164>
  6c:	27b20148 	addiu	s2,sp,328
  70:	24110003 	li	s1,3
  74:	02802025 	move	a0,s4
  78:	27a50048 	addiu	a1,sp,72
  7c:	00003025 	move	a2,zero
  80:	0c000000 	jal	0 <osPfsFreeBlocks>
  84:	326700ff 	andi	a3,s3,0xff
  88:	10400003 	beqz	v0,98 <osPfsFreeBlocks+0x98>
  8c:	00000000 	nop
  90:	10000039 	b	178 <osPfsFreeBlocks+0x178>
  94:	8fbf002c 	lw	ra,44(sp)
  98:	5a600004 	blezl	s3,ac <osPfsFreeBlocks+0xac>
  9c:	8e850060 	lw	a1,96(s4)
  a0:	10000002 	b	ac <osPfsFreeBlocks+0xac>
  a4:	24050001 	li	a1,1
  a8:	8e850060 	lw	a1,96(s4)
  ac:	28a10080 	slti	at,a1,128
  b0:	10200026 	beqz	at,14c <osPfsFreeBlocks+0x14c>
  b4:	00a01825 	move	v1,a1
  b8:	02a53023 	subu	a2,s5,a1
  bc:	30d90003 	andi	t9,a2,0x3
  c0:	1320000c 	beqz	t9,f4 <osPfsFreeBlocks+0xf4>
  c4:	03252021 	addu	a0,t9,a1
  c8:	00054040 	sll	t0,a1,0x1
  cc:	27a90048 	addiu	t1,sp,72
  d0:	01091021 	addu	v0,t0,t1
  d4:	944a0000 	lhu	t2,0(v0)
  d8:	24630001 	addiu	v1,v1,1
  dc:	162a0002 	bne	s1,t2,e8 <osPfsFreeBlocks+0xe8>
  e0:	00000000 	nop
  e4:	26100001 	addiu	s0,s0,1
  e8:	1483fffa 	bne	a0,v1,d4 <osPfsFreeBlocks+0xd4>
  ec:	24420002 	addiu	v0,v0,2
  f0:	10750016 	beq	v1,s5,14c <osPfsFreeBlocks+0x14c>
  f4:	00035840 	sll	t3,v1,0x1
  f8:	27ac0048 	addiu	t4,sp,72
  fc:	016c1021 	addu	v0,t3,t4
 100:	944d0000 	lhu	t5,0(v0)
 104:	562d0003 	bnel	s1,t5,114 <osPfsFreeBlocks+0x114>
 108:	944e0002 	lhu	t6,2(v0)
 10c:	26100001 	addiu	s0,s0,1
 110:	944e0002 	lhu	t6,2(v0)
 114:	562e0003 	bnel	s1,t6,124 <osPfsFreeBlocks+0x124>
 118:	944f0004 	lhu	t7,4(v0)
 11c:	26100001 	addiu	s0,s0,1
 120:	944f0004 	lhu	t7,4(v0)
 124:	562f0003 	bnel	s1,t7,134 <osPfsFreeBlocks+0x134>
 128:	94580006 	lhu	t8,6(v0)
 12c:	26100001 	addiu	s0,s0,1
 130:	94580006 	lhu	t8,6(v0)
 134:	24420008 	addiu	v0,v0,8
 138:	16380002 	bne	s1,t8,144 <osPfsFreeBlocks+0x144>
 13c:	00000000 	nop
 140:	26100001 	addiu	s0,s0,1
 144:	5452ffef 	bnel	v0,s2,104 <osPfsFreeBlocks+0x104>
 148:	944d0000 	lhu	t5,0(v0)
 14c:	92880064 	lbu	t0,100(s4)
 150:	26730001 	addiu	s3,s3,1
 154:	327900ff 	andi	t9,s3,0xff
 158:	0328082a 	slt	at,t9,t0
 15c:	1420ffc5 	bnez	at,74 <osPfsFreeBlocks+0x74>
 160:	03209825 	move	s3,t9
 164:	8faa0154 	lw	t2,340(sp)
 168:	00104a00 	sll	t1,s0,0x8
 16c:	00001025 	move	v0,zero
 170:	ad490000 	sw	t1,0(t2)
 174:	8fbf002c 	lw	ra,44(sp)
 178:	8fb00014 	lw	s0,20(sp)
 17c:	8fb10018 	lw	s1,24(sp)
 180:	8fb2001c 	lw	s2,28(sp)
 184:	8fb30020 	lw	s3,32(sp)
 188:	8fb40024 	lw	s4,36(sp)
 18c:	8fb50028 	lw	s5,40(sp)
 190:	03e00008 	jr	ra
 194:	27bd0150 	addiu	sp,sp,336
	...
