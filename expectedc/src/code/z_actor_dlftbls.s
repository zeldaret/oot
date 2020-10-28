
build/src/code/z_actor_dlftbls.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ActorOverlayTable_LogPrint>:
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	afb40038 	sw	s4,56(sp)
   8:	3c140000 	lui	s4,0x0
   c:	26940000 	addiu	s4,s4,0
  10:	afbf003c 	sw	ra,60(sp)
  14:	3c040000 	lui	a0,0x0
  18:	afb30034 	sw	s3,52(sp)
  1c:	afb20030 	sw	s2,48(sp)
  20:	afb1002c 	sw	s1,44(sp)
  24:	afb00028 	sw	s0,40(sp)
  28:	24841564 	addiu	a0,a0,5476
  2c:	0c000000 	jal	0 <ActorOverlayTable_LogPrint>
  30:	8e850000 	lw	a1,0(s4)
  34:	3c040000 	lui	a0,0x0
  38:	0c000000 	jal	0 <ActorOverlayTable_LogPrint>
  3c:	24841578 	addiu	a0,a0,5496
  40:	8e8e0000 	lw	t6,0(s4)
  44:	3c100000 	lui	s0,0x0
  48:	26100000 	addiu	s0,s0,0
  4c:	11c0001d 	beqz	t6,c4 <ActorOverlayTable_LogPrint+0xc4>
  50:	00008825 	move	s1,zero
  54:	3c130000 	lui	s3,0x0
  58:	3c120000 	lui	s2,0x0
  5c:	265215b8 	addiu	s2,s2,5560
  60:	267315dc 	addiu	s3,s3,5596
  64:	8e020018 	lw	v0,24(s0)
  68:	02601825 	move	v1,s3
  6c:	10400003 	beqz	v0,7c <ActorOverlayTable_LogPrint+0x7c>
  70:	00000000 	nop
  74:	10000001 	b	7c <ActorOverlayTable_LogPrint+0x7c>
  78:	00401825 	move	v1,v0
  7c:	8e0f000c 	lw	t7,12(s0)
  80:	8e050000 	lw	a1,0(s0)
  84:	8e060004 	lw	a2,4(s0)
  88:	8e070008 	lw	a3,8(s0)
  8c:	afaf0010 	sw	t7,16(sp)
  90:	8e180010 	lw	t8,16(s0)
  94:	02402025 	move	a0,s2
  98:	afb80014 	sw	t8,20(sp)
  9c:	8e190014 	lw	t9,20(s0)
  a0:	afa3001c 	sw	v1,28(sp)
  a4:	0c000000 	jal	0 <ActorOverlayTable_LogPrint>
  a8:	afb90018 	sw	t9,24(sp)
  ac:	8e880000 	lw	t0,0(s4)
  b0:	26310001 	addiu	s1,s1,1
  b4:	26100020 	addiu	s0,s0,32
  b8:	0228082b 	sltu	at,s1,t0
  bc:	5420ffea 	bnezl	at,68 <ActorOverlayTable_LogPrint+0x68>
  c0:	8e020018 	lw	v0,24(s0)
  c4:	8fbf003c 	lw	ra,60(sp)
  c8:	8fb00028 	lw	s0,40(sp)
  cc:	8fb1002c 	lw	s1,44(sp)
  d0:	8fb20030 	lw	s2,48(sp)
  d4:	8fb30034 	lw	s3,52(sp)
  d8:	8fb40038 	lw	s4,56(sp)
  dc:	03e00008 	jr	ra
  e0:	27bd0040 	addiu	sp,sp,64

000000e4 <ActorOverlayTable_FaultPrint>:
  e4:	27bdffd0 	addiu	sp,sp,-48
  e8:	afbf002c 	sw	ra,44(sp)
  ec:	afa40030 	sw	a0,48(sp)
  f0:	afa50034 	sw	a1,52(sp)
  f4:	afb30028 	sw	s3,40(sp)
  f8:	afb20024 	sw	s2,36(sp)
  fc:	afb10020 	sw	s1,32(sp)
 100:	afb0001c 	sw	s0,28(sp)
 104:	00002825 	move	a1,zero
 108:	0c000000 	jal	0 <ActorOverlayTable_LogPrint>
 10c:	2404fffe 	li	a0,-2
 110:	3c120000 	lui	s2,0x0
 114:	26520000 	addiu	s2,s2,0
 118:	3c040000 	lui	a0,0x0
 11c:	248415e0 	addiu	a0,a0,5600
 120:	0c000000 	jal	0 <ActorOverlayTable_LogPrint>
 124:	8e450000 	lw	a1,0(s2)
 128:	3c040000 	lui	a0,0x0
 12c:	0c000000 	jal	0 <ActorOverlayTable_LogPrint>
 130:	248415f4 	addiu	a0,a0,5620
 134:	8e420000 	lw	v0,0(s2)
 138:	3c100000 	lui	s0,0x0
 13c:	26100000 	addiu	s0,s0,0
 140:	1840001c 	blez	v0,1b4 <ActorOverlayTable_FaultPrint+0xd0>
 144:	00008825 	move	s1,zero
 148:	3c130000 	lui	s3,0x0
 14c:	3c120000 	lui	s2,0x0
 150:	26521614 	addiu	s2,s2,5652
 154:	2673162c 	addiu	s3,s3,5676
 158:	8e060010 	lw	a2,16(s0)
 15c:	8e0e000c 	lw	t6,12(s0)
 160:	8e0f0008 	lw	t7,8(s0)
 164:	02402025 	move	a0,s2
 168:	10c0000e 	beqz	a2,1a4 <ActorOverlayTable_FaultPrint+0xc0>
 16c:	01cf4023 	subu	t0,t6,t7
 170:	8e020018 	lw	v0,24(s0)
 174:	02202825 	move	a1,s1
 178:	00c83821 	addu	a3,a2,t0
 17c:	10400003 	beqz	v0,18c <ActorOverlayTable_FaultPrint+0xa8>
 180:	02601825 	move	v1,s3
 184:	10000001 	b	18c <ActorOverlayTable_FaultPrint+0xa8>
 188:	00401825 	move	v1,v0
 18c:	8218001e 	lb	t8,30(s0)
 190:	afa30014 	sw	v1,20(sp)
 194:	0c000000 	jal	0 <ActorOverlayTable_LogPrint>
 198:	afb80010 	sw	t8,16(sp)
 19c:	3c020000 	lui	v0,0x0
 1a0:	8c420000 	lw	v0,0(v0)
 1a4:	26310001 	addiu	s1,s1,1
 1a8:	0222082a 	slt	at,s1,v0
 1ac:	1420ffea 	bnez	at,158 <ActorOverlayTable_FaultPrint+0x74>
 1b0:	26100020 	addiu	s0,s0,32
 1b4:	8fbf002c 	lw	ra,44(sp)
 1b8:	8fb0001c 	lw	s0,28(sp)
 1bc:	8fb10020 	lw	s1,32(sp)
 1c0:	8fb20024 	lw	s2,36(sp)
 1c4:	8fb30028 	lw	s3,40(sp)
 1c8:	03e00008 	jr	ra
 1cc:	27bd0030 	addiu	sp,sp,48

000001d0 <ActorOverlayTable_Init>:
 1d0:	27bdffe8 	addiu	sp,sp,-24
 1d4:	afbf0014 	sw	ra,20(sp)
 1d8:	240e01d7 	li	t6,471
 1dc:	3c010000 	lui	at,0x0
 1e0:	3c040000 	lui	a0,0x0
 1e4:	3c050000 	lui	a1,0x0
 1e8:	ac2e0000 	sw	t6,0(at)
 1ec:	24a50000 	addiu	a1,a1,0
 1f0:	24840000 	addiu	a0,a0,0
 1f4:	00003025 	move	a2,zero
 1f8:	0c000000 	jal	0 <ActorOverlayTable_LogPrint>
 1fc:	00003825 	move	a3,zero
 200:	8fbf0014 	lw	ra,20(sp)
 204:	27bd0018 	addiu	sp,sp,24
 208:	03e00008 	jr	ra
 20c:	00000000 	nop

00000210 <ActorOverlayTable_Cleanup>:
 210:	27bdffe8 	addiu	sp,sp,-24
 214:	afbf0014 	sw	ra,20(sp)
 218:	3c040000 	lui	a0,0x0
 21c:	0c000000 	jal	0 <ActorOverlayTable_LogPrint>
 220:	24840000 	addiu	a0,a0,0
 224:	8fbf0014 	lw	ra,20(sp)
 228:	3c010000 	lui	at,0x0
 22c:	ac200000 	sw	zero,0(at)
 230:	03e00008 	jr	ra
 234:	27bd0018 	addiu	sp,sp,24
	...
