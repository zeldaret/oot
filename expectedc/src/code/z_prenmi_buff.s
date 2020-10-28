
build/src/code/z_prenmi_buff.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <PreNmiBuff_Init>:
   0:	ac800000 	sw	zero,0(a0)
   4:	3c0e0000 	lui	t6,0x0
   8:	8dce0000 	lw	t6,0(t6)
   c:	24180000 	li	t8,0
  10:	24190000 	li	t9,0
  14:	55c00006 	bnezl	t6,30 <PreNmiBuff_Init+0x30>
  18:	8c8f0004 	lw	t7,4(a0)
  1c:	ac800004 	sw	zero,4(a0)
  20:	ac980008 	sw	t8,8(a0)
  24:	1000000e 	b	60 <PreNmiBuff_Init+0x60>
  28:	ac99000c 	sw	t9,12(a0)
  2c:	8c8f0004 	lw	t7,4(a0)
  30:	8c8b000c 	lw	t3,12(a0)
  34:	8c8d0014 	lw	t5,20(a0)
  38:	8c8a0008 	lw	t2,8(a0)
  3c:	25e80001 	addiu	t0,t7,1
  40:	8c8c0010 	lw	t4,16(a0)
  44:	016d7821 	addu	t7,t3,t5
  48:	01ed082b 	sltu	at,t7,t5
  4c:	002a7021 	addu	t6,at,t2
  50:	01cc7021 	addu	t6,t6,t4
  54:	ac880004 	sw	t0,4(a0)
  58:	ac8e0008 	sw	t6,8(a0)
  5c:	ac8f000c 	sw	t7,12(a0)
  60:	24180000 	li	t8,0
  64:	24190000 	li	t9,0
  68:	ac990014 	sw	t9,20(a0)
  6c:	03e00008 	jr	ra
  70:	ac980010 	sw	t8,16(a0)

00000074 <PreNmiBuff_SetReset>:
  74:	27bdffe8 	addiu	sp,sp,-24
  78:	afbf0014 	sw	ra,20(sp)
  7c:	afa40018 	sw	a0,24(sp)
  80:	240e0001 	li	t6,1
  84:	0c000000 	jal	0 <PreNmiBuff_Init>
  88:	ac8e0000 	sw	t6,0(a0)
  8c:	8fb80018 	lw	t8,24(sp)
  90:	af020010 	sw	v0,16(t8)
  94:	af030014 	sw	v1,20(t8)
  98:	8fbf0014 	lw	ra,20(sp)
  9c:	27bd0018 	addiu	sp,sp,24
  a0:	03e00008 	jr	ra
  a4:	00000000 	nop

000000a8 <PreNmiBuff_IsResetting>:
  a8:	03e00008 	jr	ra
  ac:	8c820000 	lw	v0,0(a0)
