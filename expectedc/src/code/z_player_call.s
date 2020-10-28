
build/src/code/z_player_call.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <PlayerCall_InitFuncPtrs>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	3c040000 	lui	a0,0x0
   c:	0c000000 	jal	0 <PlayerCall_InitFuncPtrs>
  10:	24840000 	addiu	a0,a0,0
  14:	3c010000 	lui	at,0x0
  18:	3c040000 	lui	a0,0x0
  1c:	ac220000 	sw	v0,0(at)
  20:	0c000000 	jal	0 <PlayerCall_InitFuncPtrs>
  24:	24840000 	addiu	a0,a0,0
  28:	3c010000 	lui	at,0x0
  2c:	3c040000 	lui	a0,0x0
  30:	ac220000 	sw	v0,0(at)
  34:	0c000000 	jal	0 <PlayerCall_InitFuncPtrs>
  38:	24840000 	addiu	a0,a0,0
  3c:	3c010000 	lui	at,0x0
  40:	3c040000 	lui	a0,0x0
  44:	ac220000 	sw	v0,0(at)
  48:	0c000000 	jal	0 <PlayerCall_InitFuncPtrs>
  4c:	24840000 	addiu	a0,a0,0
  50:	8fbf0014 	lw	ra,20(sp)
  54:	3c010000 	lui	at,0x0
  58:	ac220000 	sw	v0,0(at)
  5c:	03e00008 	jr	ra
  60:	27bd0018 	addiu	sp,sp,24

00000064 <PlayerCall_Init>:
  64:	27bdffe8 	addiu	sp,sp,-24
  68:	afbf0014 	sw	ra,20(sp)
  6c:	afa40018 	sw	a0,24(sp)
  70:	0c000000 	jal	0 <PlayerCall_InitFuncPtrs>
  74:	afa5001c 	sw	a1,28(sp)
  78:	0c000000 	jal	0 <PlayerCall_InitFuncPtrs>
  7c:	00000000 	nop
  80:	3c190000 	lui	t9,0x0
  84:	8f390000 	lw	t9,0(t9)
  88:	8fa40018 	lw	a0,24(sp)
  8c:	8fa5001c 	lw	a1,28(sp)
  90:	0320f809 	jalr	t9
  94:	00000000 	nop
  98:	8fbf0014 	lw	ra,20(sp)
  9c:	27bd0018 	addiu	sp,sp,24
  a0:	03e00008 	jr	ra
  a4:	00000000 	nop

000000a8 <PlayerCall_Destroy>:
  a8:	27bdffe8 	addiu	sp,sp,-24
  ac:	afbf0014 	sw	ra,20(sp)
  b0:	afa40018 	sw	a0,24(sp)
  b4:	0c000000 	jal	0 <PlayerCall_InitFuncPtrs>
  b8:	afa5001c 	sw	a1,28(sp)
  bc:	3c190000 	lui	t9,0x0
  c0:	8f390000 	lw	t9,0(t9)
  c4:	8fa40018 	lw	a0,24(sp)
  c8:	8fa5001c 	lw	a1,28(sp)
  cc:	0320f809 	jalr	t9
  d0:	00000000 	nop
  d4:	8fbf0014 	lw	ra,20(sp)
  d8:	27bd0018 	addiu	sp,sp,24
  dc:	03e00008 	jr	ra
  e0:	00000000 	nop

000000e4 <PlayerCall_Update>:
  e4:	27bdffe8 	addiu	sp,sp,-24
  e8:	afbf0014 	sw	ra,20(sp)
  ec:	afa40018 	sw	a0,24(sp)
  f0:	0c000000 	jal	0 <PlayerCall_InitFuncPtrs>
  f4:	afa5001c 	sw	a1,28(sp)
  f8:	3c190000 	lui	t9,0x0
  fc:	8f390000 	lw	t9,0(t9)
 100:	8fa40018 	lw	a0,24(sp)
 104:	8fa5001c 	lw	a1,28(sp)
 108:	0320f809 	jalr	t9
 10c:	00000000 	nop
 110:	8fbf0014 	lw	ra,20(sp)
 114:	27bd0018 	addiu	sp,sp,24
 118:	03e00008 	jr	ra
 11c:	00000000 	nop

00000120 <PlayerCall_Draw>:
 120:	27bdffe8 	addiu	sp,sp,-24
 124:	afbf0014 	sw	ra,20(sp)
 128:	afa40018 	sw	a0,24(sp)
 12c:	0c000000 	jal	0 <PlayerCall_InitFuncPtrs>
 130:	afa5001c 	sw	a1,28(sp)
 134:	3c190000 	lui	t9,0x0
 138:	8f390000 	lw	t9,0(t9)
 13c:	8fa40018 	lw	a0,24(sp)
 140:	8fa5001c 	lw	a1,28(sp)
 144:	0320f809 	jalr	t9
 148:	00000000 	nop
 14c:	8fbf0014 	lw	ra,20(sp)
 150:	27bd0018 	addiu	sp,sp,24
 154:	03e00008 	jr	ra
 158:	00000000 	nop
 15c:	00000000 	nop
