
build/src/code/padutils.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <PadUtils_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	0c000000 	jal	0 <PadUtils_Init>
   c:	24050018 	li	a1,24
  10:	8fbf0014 	lw	ra,20(sp)
  14:	27bd0018 	addiu	sp,sp,24
  18:	03e00008 	jr	ra
  1c:	00000000 	nop

00000020 <func_800FCB70>:
  20:	03e00008 	jr	ra
  24:	00000000 	nop

00000028 <PadUtils_ResetPressRel>:
  28:	a480000c 	sh	zero,12(a0)
  2c:	03e00008 	jr	ra
  30:	a4800012 	sh	zero,18(a0)

00000034 <PadUtils_CheckCurExact>:
  34:	afa50004 	sw	a1,4(sp)
  38:	948e0000 	lhu	t6,0(a0)
  3c:	30a5ffff 	andi	a1,a1,0xffff
  40:	01c51026 	xor	v0,t6,a1
  44:	03e00008 	jr	ra
  48:	2c420001 	sltiu	v0,v0,1

0000004c <PadUtils_CheckCur>:
  4c:	afa50004 	sw	a1,4(sp)
  50:	948e0000 	lhu	t6,0(a0)
  54:	30a5ffff 	andi	a1,a1,0xffff
  58:	01c57824 	and	t7,t6,a1
  5c:	01e51026 	xor	v0,t7,a1
  60:	03e00008 	jr	ra
  64:	2c420001 	sltiu	v0,v0,1

00000068 <PadUtils_CheckPressed>:
  68:	afa50004 	sw	a1,4(sp)
  6c:	948e000c 	lhu	t6,12(a0)
  70:	30a5ffff 	andi	a1,a1,0xffff
  74:	01c57824 	and	t7,t6,a1
  78:	01e51026 	xor	v0,t7,a1
  7c:	03e00008 	jr	ra
  80:	2c420001 	sltiu	v0,v0,1

00000084 <PadUtils_CheckReleased>:
  84:	afa50004 	sw	a1,4(sp)
  88:	948e0012 	lhu	t6,18(a0)
  8c:	30a5ffff 	andi	a1,a1,0xffff
  90:	01c57824 	and	t7,t6,a1
  94:	01e51026 	xor	v0,t7,a1
  98:	03e00008 	jr	ra
  9c:	2c420001 	sltiu	v0,v0,1

000000a0 <PadUtils_GetCurButton>:
  a0:	03e00008 	jr	ra
  a4:	94820000 	lhu	v0,0(a0)

000000a8 <PadUtils_GetPressButton>:
  a8:	03e00008 	jr	ra
  ac:	9482000c 	lhu	v0,12(a0)

000000b0 <PadUtils_GetCurX>:
  b0:	03e00008 	jr	ra
  b4:	80820002 	lb	v0,2(a0)

000000b8 <PadUtils_GetCurY>:
  b8:	03e00008 	jr	ra
  bc:	80820003 	lb	v0,3(a0)

000000c0 <PadUtils_SetRelXY>:
  c0:	a0850014 	sb	a1,20(a0)
  c4:	03e00008 	jr	ra
  c8:	a0860015 	sb	a2,21(a0)

000000cc <PadUtils_GetRelXImpl>:
  cc:	03e00008 	jr	ra
  d0:	80820014 	lb	v0,20(a0)

000000d4 <PadUtils_GetRelYImpl>:
  d4:	03e00008 	jr	ra
  d8:	80820015 	lb	v0,21(a0)

000000dc <PadUtils_GetRelX>:
  dc:	27bdffe8 	addiu	sp,sp,-24
  e0:	afbf0014 	sw	ra,20(sp)
  e4:	0c000000 	jal	0 <PadUtils_Init>
  e8:	00000000 	nop
  ec:	8fbf0014 	lw	ra,20(sp)
  f0:	27bd0018 	addiu	sp,sp,24
  f4:	03e00008 	jr	ra
  f8:	00000000 	nop

000000fc <PadUtils_GetRelY>:
  fc:	27bdffe8 	addiu	sp,sp,-24
 100:	afbf0014 	sw	ra,20(sp)
 104:	0c000000 	jal	0 <PadUtils_Init>
 108:	00000000 	nop
 10c:	8fbf0014 	lw	ra,20(sp)
 110:	27bd0018 	addiu	sp,sp,24
 114:	03e00008 	jr	ra
 118:	00000000 	nop

0000011c <PadUtils_UpdateRelXY>:
 11c:	27bdffe0 	addiu	sp,sp,-32
 120:	afbf0014 	sw	ra,20(sp)
 124:	0c000000 	jal	0 <PadUtils_Init>
 128:	afa40020 	sw	a0,32(sp)
 12c:	8fa40020 	lw	a0,32(sp)
 130:	0c000000 	jal	0 <PadUtils_Init>
 134:	afa2001c 	sw	v0,28(sp)
 138:	8fa3001c 	lw	v1,28(sp)
 13c:	28610008 	slti	at,v1,8
 140:	14200007 	bnez	at,160 <PadUtils_UpdateRelXY+0x44>
 144:	28610043 	slti	at,v1,67
 148:	10200003 	beqz	at,158 <PadUtils_UpdateRelXY+0x3c>
 14c:	00000000 	nop
 150:	1000000d 	b	188 <PadUtils_UpdateRelXY+0x6c>
 154:	2465fff9 	addiu	a1,v1,-7
 158:	1000000b 	b	188 <PadUtils_UpdateRelXY+0x6c>
 15c:	2405003c 	li	a1,60
 160:	2861fff9 	slti	at,v1,-7
 164:	10200008 	beqz	at,188 <PadUtils_UpdateRelXY+0x6c>
 168:	00002825 	move	a1,zero
 16c:	2861ffbe 	slti	at,v1,-66
 170:	14200003 	bnez	at,180 <PadUtils_UpdateRelXY+0x64>
 174:	00000000 	nop
 178:	10000003 	b	188 <PadUtils_UpdateRelXY+0x6c>
 17c:	24650007 	addiu	a1,v1,7
 180:	10000001 	b	188 <PadUtils_UpdateRelXY+0x6c>
 184:	2405ffc4 	li	a1,-60
 188:	28410008 	slti	at,v0,8
 18c:	14200007 	bnez	at,1ac <PadUtils_UpdateRelXY+0x90>
 190:	28410043 	slti	at,v0,67
 194:	10200003 	beqz	at,1a4 <PadUtils_UpdateRelXY+0x88>
 198:	00000000 	nop
 19c:	1000000d 	b	1d4 <PadUtils_UpdateRelXY+0xb8>
 1a0:	2446fff9 	addiu	a2,v0,-7
 1a4:	1000000b 	b	1d4 <PadUtils_UpdateRelXY+0xb8>
 1a8:	2406003c 	li	a2,60
 1ac:	2841fff9 	slti	at,v0,-7
 1b0:	10200008 	beqz	at,1d4 <PadUtils_UpdateRelXY+0xb8>
 1b4:	00003025 	move	a2,zero
 1b8:	2841ffbe 	slti	at,v0,-66
 1bc:	14200003 	bnez	at,1cc <PadUtils_UpdateRelXY+0xb0>
 1c0:	00000000 	nop
 1c4:	10000003 	b	1d4 <PadUtils_UpdateRelXY+0xb8>
 1c8:	24460007 	addiu	a2,v0,7
 1cc:	10000001 	b	1d4 <PadUtils_UpdateRelXY+0xb8>
 1d0:	2406ffc4 	li	a2,-60
 1d4:	0c000000 	jal	0 <PadUtils_Init>
 1d8:	8fa40020 	lw	a0,32(sp)
 1dc:	8fbf0014 	lw	ra,20(sp)
 1e0:	27bd0020 	addiu	sp,sp,32
 1e4:	03e00008 	jr	ra
 1e8:	00000000 	nop
 1ec:	00000000 	nop
