
build/src/libultra_code_O2/sptask.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <_VirtualToPhysicalTask>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	3c050000 	lui	a1,0x0
   c:	24a50000 	addiu	a1,a1,0
  10:	0c000000 	jal	0 <_VirtualToPhysicalTask>
  14:	24060040 	li	a2,64
  18:	3c040000 	lui	a0,0x0
  1c:	8c840010 	lw	a0,16(a0)
  20:	10800005 	beqz	a0,38 <_VirtualToPhysicalTask+0x38>
  24:	00000000 	nop
  28:	0c000000 	jal	0 <_VirtualToPhysicalTask>
  2c:	00000000 	nop
  30:	3c010000 	lui	at,0x0
  34:	ac220010 	sw	v0,16(at)
  38:	3c040000 	lui	a0,0x0
  3c:	8c840018 	lw	a0,24(a0)
  40:	10800005 	beqz	a0,58 <_VirtualToPhysicalTask+0x58>
  44:	00000000 	nop
  48:	0c000000 	jal	0 <_VirtualToPhysicalTask>
  4c:	00000000 	nop
  50:	3c010000 	lui	at,0x0
  54:	ac220018 	sw	v0,24(at)
  58:	3c040000 	lui	a0,0x0
  5c:	8c840020 	lw	a0,32(a0)
  60:	10800005 	beqz	a0,78 <_VirtualToPhysicalTask+0x78>
  64:	00000000 	nop
  68:	0c000000 	jal	0 <_VirtualToPhysicalTask>
  6c:	00000000 	nop
  70:	3c010000 	lui	at,0x0
  74:	ac220020 	sw	v0,32(at)
  78:	3c040000 	lui	a0,0x0
  7c:	8c840028 	lw	a0,40(a0)
  80:	10800005 	beqz	a0,98 <_VirtualToPhysicalTask+0x98>
  84:	00000000 	nop
  88:	0c000000 	jal	0 <_VirtualToPhysicalTask>
  8c:	00000000 	nop
  90:	3c010000 	lui	at,0x0
  94:	ac220028 	sw	v0,40(at)
  98:	3c040000 	lui	a0,0x0
  9c:	8c84002c 	lw	a0,44(a0)
  a0:	10800005 	beqz	a0,b8 <_VirtualToPhysicalTask+0xb8>
  a4:	00000000 	nop
  a8:	0c000000 	jal	0 <_VirtualToPhysicalTask>
  ac:	00000000 	nop
  b0:	3c010000 	lui	at,0x0
  b4:	ac22002c 	sw	v0,44(at)
  b8:	3c040000 	lui	a0,0x0
  bc:	8c840030 	lw	a0,48(a0)
  c0:	10800005 	beqz	a0,d8 <_VirtualToPhysicalTask+0xd8>
  c4:	00000000 	nop
  c8:	0c000000 	jal	0 <_VirtualToPhysicalTask>
  cc:	00000000 	nop
  d0:	3c010000 	lui	at,0x0
  d4:	ac220030 	sw	v0,48(at)
  d8:	3c040000 	lui	a0,0x0
  dc:	8c840038 	lw	a0,56(a0)
  e0:	50800006 	beqzl	a0,fc <_VirtualToPhysicalTask+0xfc>
  e4:	8fbf0014 	lw	ra,20(sp)
  e8:	0c000000 	jal	0 <_VirtualToPhysicalTask>
  ec:	00000000 	nop
  f0:	3c010000 	lui	at,0x0
  f4:	ac220038 	sw	v0,56(at)
  f8:	8fbf0014 	lw	ra,20(sp)
  fc:	3c020000 	lui	v0,0x0
 100:	24420000 	addiu	v0,v0,0
 104:	03e00008 	jr	ra
 108:	27bd0018 	addiu	sp,sp,24

0000010c <osSpTaskLoad>:
 10c:	27bdffd8 	addiu	sp,sp,-40
 110:	afbf0024 	sw	ra,36(sp)
 114:	afb00014 	sw	s0,20(sp)
 118:	00808025 	move	s0,a0
 11c:	afb30020 	sw	s3,32(sp)
 120:	afb2001c 	sw	s2,28(sp)
 124:	0c000000 	jal	0 <_VirtualToPhysicalTask>
 128:	afb10018 	sw	s1,24(sp)
 12c:	8c4e0004 	lw	t6,4(v0)
 130:	00409025 	move	s2,v0
 134:	02402025 	move	a0,s2
 138:	31cf0001 	andi	t7,t6,0x1
 13c:	11e00013 	beqz	t7,18c <osSpTaskLoad+0x80>
 140:	00000000 	nop
 144:	8c580038 	lw	t8,56(v0)
 148:	8c59003c 	lw	t9,60(v0)
 14c:	2401fffe 	li	at,-2
 150:	ac580018 	sw	t8,24(v0)
 154:	ac59001c 	sw	t9,28(v0)
 158:	8e080004 	lw	t0,4(s0)
 15c:	01014824 	and	t1,t0,at
 160:	ae090004 	sw	t1,4(s0)
 164:	8c4a0004 	lw	t2,4(v0)
 168:	314b0004 	andi	t3,t2,0x4
 16c:	11600007 	beqz	t3,18c <osSpTaskLoad+0x80>
 170:	00000000 	nop
 174:	8e0c0038 	lw	t4,56(s0)
 178:	3c01a000 	lui	at,0xa000
 17c:	258d0bfc 	addiu	t5,t4,3068
 180:	01a17025 	or	t6,t5,at
 184:	8dcf0000 	lw	t7,0(t6)
 188:	ac4f0010 	sw	t7,16(v0)
 18c:	0c000000 	jal	0 <_VirtualToPhysicalTask>
 190:	24050040 	li	a1,64
 194:	0c000000 	jal	0 <_VirtualToPhysicalTask>
 198:	24042b00 	li	a0,11008
 19c:	3c130400 	lui	s3,0x400
 1a0:	36731000 	ori	s3,s3,0x1000
 1a4:	0c000000 	jal	0 <_VirtualToPhysicalTask>
 1a8:	02602025 	move	a0,s3
 1ac:	2411ffff 	li	s1,-1
 1b0:	54510006 	bnel	v0,s1,1cc <osSpTaskLoad+0xc0>
 1b4:	3c100400 	lui	s0,0x400
 1b8:	0c000000 	jal	0 <_VirtualToPhysicalTask>
 1bc:	02602025 	move	a0,s3
 1c0:	1051fffd 	beq	v0,s1,1b8 <osSpTaskLoad+0xac>
 1c4:	00000000 	nop
 1c8:	3c100400 	lui	s0,0x400
 1cc:	36100fc0 	ori	s0,s0,0xfc0
 1d0:	02002825 	move	a1,s0
 1d4:	24040001 	li	a0,1
 1d8:	02403025 	move	a2,s2
 1dc:	0c000000 	jal	0 <_VirtualToPhysicalTask>
 1e0:	24070040 	li	a3,64
 1e4:	14510007 	bne	v0,s1,204 <osSpTaskLoad+0xf8>
 1e8:	24040001 	li	a0,1
 1ec:	02002825 	move	a1,s0
 1f0:	02403025 	move	a2,s2
 1f4:	0c000000 	jal	0 <_VirtualToPhysicalTask>
 1f8:	24070040 	li	a3,64
 1fc:	5051fffb 	beql	v0,s1,1ec <osSpTaskLoad+0xe0>
 200:	24040001 	li	a0,1
 204:	0c000000 	jal	0 <_VirtualToPhysicalTask>
 208:	00000000 	nop
 20c:	50400006 	beqzl	v0,228 <osSpTaskLoad+0x11c>
 210:	24040001 	li	a0,1
 214:	0c000000 	jal	0 <_VirtualToPhysicalTask>
 218:	00000000 	nop
 21c:	1440fffd 	bnez	v0,214 <osSpTaskLoad+0x108>
 220:	00000000 	nop
 224:	24040001 	li	a0,1
 228:	02602825 	move	a1,s3
 22c:	8e460008 	lw	a2,8(s2)
 230:	0c000000 	jal	0 <_VirtualToPhysicalTask>
 234:	8e47000c 	lw	a3,12(s2)
 238:	14510007 	bne	v0,s1,258 <osSpTaskLoad+0x14c>
 23c:	24040001 	li	a0,1
 240:	02602825 	move	a1,s3
 244:	8e460008 	lw	a2,8(s2)
 248:	0c000000 	jal	0 <_VirtualToPhysicalTask>
 24c:	8e47000c 	lw	a3,12(s2)
 250:	5051fffb 	beql	v0,s1,240 <osSpTaskLoad+0x134>
 254:	24040001 	li	a0,1
 258:	8fbf0024 	lw	ra,36(sp)
 25c:	8fb00014 	lw	s0,20(sp)
 260:	8fb10018 	lw	s1,24(sp)
 264:	8fb2001c 	lw	s2,28(sp)
 268:	8fb30020 	lw	s3,32(sp)
 26c:	03e00008 	jr	ra
 270:	27bd0028 	addiu	sp,sp,40

00000274 <osSpTaskStartGo>:
 274:	27bdffe8 	addiu	sp,sp,-24
 278:	afbf0014 	sw	ra,20(sp)
 27c:	0c000000 	jal	0 <_VirtualToPhysicalTask>
 280:	afa40018 	sw	a0,24(sp)
 284:	10400005 	beqz	v0,29c <osSpTaskStartGo+0x28>
 288:	00000000 	nop
 28c:	0c000000 	jal	0 <_VirtualToPhysicalTask>
 290:	00000000 	nop
 294:	1440fffd 	bnez	v0,28c <osSpTaskStartGo+0x18>
 298:	00000000 	nop
 29c:	0c000000 	jal	0 <_VirtualToPhysicalTask>
 2a0:	24040125 	li	a0,293
 2a4:	8fbf0014 	lw	ra,20(sp)
 2a8:	27bd0018 	addiu	sp,sp,24
 2ac:	03e00008 	jr	ra
 2b0:	00000000 	nop
	...
