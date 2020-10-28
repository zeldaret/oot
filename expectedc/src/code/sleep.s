
build/src/code/sleep.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Sleep_Cycles>:
   0:	27bdff98 	addiu	sp,sp,-104
   4:	afbf0024 	sw	ra,36(sp)
   8:	afa40068 	sw	a0,104(sp)
   c:	afa5006c 	sw	a1,108(sp)
  10:	27a5004c 	addiu	a1,sp,76
  14:	27a40050 	addiu	a0,sp,80
  18:	0c000000 	jal	0 <Sleep_Cycles>
  1c:	24060001 	li	a2,1
  20:	240e0000 	li	t6,0
  24:	240f0000 	li	t7,0
  28:	27b80050 	addiu	t8,sp,80
  2c:	afb80018 	sw	t8,24(sp)
  30:	afaf0014 	sw	t7,20(sp)
  34:	afae0010 	sw	t6,16(sp)
  38:	27a40028 	addiu	a0,sp,40
  3c:	8fa60068 	lw	a2,104(sp)
  40:	8fa7006c 	lw	a3,108(sp)
  44:	0c000000 	jal	0 <Sleep_Cycles>
  48:	afa0001c 	sw	zero,28(sp)
  4c:	27a40050 	addiu	a0,sp,80
  50:	00002825 	move	a1,zero
  54:	0c000000 	jal	0 <Sleep_Cycles>
  58:	24060001 	li	a2,1
  5c:	8fbf0024 	lw	ra,36(sp)
  60:	27bd0068 	addiu	sp,sp,104
  64:	03e00008 	jr	ra
  68:	00000000 	nop

0000006c <Sleep_Nsec>:
  6c:	27bdffe8 	addiu	sp,sp,-24
  70:	afbf0014 	sw	ra,20(sp)
  74:	afa40018 	sw	a0,24(sp)
  78:	00802825 	move	a1,a0
  7c:	24040000 	li	a0,0
  80:	24060000 	li	a2,0
  84:	0c000000 	jal	0 <Sleep_Cycles>
  88:	24070003 	li	a3,3
  8c:	00402025 	move	a0,v0
  90:	00602825 	move	a1,v1
  94:	24060000 	li	a2,0
  98:	0c000000 	jal	0 <Sleep_Cycles>
  9c:	24070040 	li	a3,64
  a0:	00402025 	move	a0,v0
  a4:	0c000000 	jal	0 <Sleep_Cycles>
  a8:	00602825 	move	a1,v1
  ac:	8fbf0014 	lw	ra,20(sp)
  b0:	27bd0018 	addiu	sp,sp,24
  b4:	03e00008 	jr	ra
  b8:	00000000 	nop

000000bc <Sleep_Usec>:
  bc:	27bdffe8 	addiu	sp,sp,-24
  c0:	afbf0014 	sw	ra,20(sp)
  c4:	afa40018 	sw	a0,24(sp)
  c8:	00802825 	move	a1,a0
  cc:	24040000 	li	a0,0
  d0:	24060000 	li	a2,0
  d4:	0c000000 	jal	0 <Sleep_Cycles>
  d8:	24070bb8 	li	a3,3000
  dc:	00402025 	move	a0,v0
  e0:	00602825 	move	a1,v1
  e4:	24060000 	li	a2,0
  e8:	0c000000 	jal	0 <Sleep_Cycles>
  ec:	24070040 	li	a3,64
  f0:	00402025 	move	a0,v0
  f4:	0c000000 	jal	0 <Sleep_Cycles>
  f8:	00602825 	move	a1,v1
  fc:	8fbf0014 	lw	ra,20(sp)
 100:	27bd0018 	addiu	sp,sp,24
 104:	03e00008 	jr	ra
 108:	00000000 	nop

0000010c <Sleep_Msec>:
 10c:	27bdffe8 	addiu	sp,sp,-24
 110:	afbf0014 	sw	ra,20(sp)
 114:	afa40018 	sw	a0,24(sp)
 118:	00802825 	move	a1,a0
 11c:	3c0702cb 	lui	a3,0x2cb
 120:	34e74178 	ori	a3,a3,0x4178
 124:	24040000 	li	a0,0
 128:	0c000000 	jal	0 <Sleep_Cycles>
 12c:	24060000 	li	a2,0
 130:	00402025 	move	a0,v0
 134:	00602825 	move	a1,v1
 138:	24060000 	li	a2,0
 13c:	0c000000 	jal	0 <Sleep_Cycles>
 140:	240703e8 	li	a3,1000
 144:	00402025 	move	a0,v0
 148:	0c000000 	jal	0 <Sleep_Cycles>
 14c:	00602825 	move	a1,v1
 150:	8fbf0014 	lw	ra,20(sp)
 154:	27bd0018 	addiu	sp,sp,24
 158:	03e00008 	jr	ra
 15c:	00000000 	nop

00000160 <Sleep_Sec>:
 160:	27bdffe8 	addiu	sp,sp,-24
 164:	afbf0014 	sw	ra,20(sp)
 168:	afa40018 	sw	a0,24(sp)
 16c:	00802825 	move	a1,a0
 170:	3c0702cb 	lui	a3,0x2cb
 174:	34e74178 	ori	a3,a3,0x4178
 178:	24040000 	li	a0,0
 17c:	0c000000 	jal	0 <Sleep_Cycles>
 180:	24060000 	li	a2,0
 184:	00402025 	move	a0,v0
 188:	0c000000 	jal	0 <Sleep_Cycles>
 18c:	00602825 	move	a1,v1
 190:	8fbf0014 	lw	ra,20(sp)
 194:	27bd0018 	addiu	sp,sp,24
 198:	03e00008 	jr	ra
 19c:	00000000 	nop
