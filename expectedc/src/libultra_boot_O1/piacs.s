
build/src/libultra_boot_O1/piacs.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osPiCreateAccessQueue>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	240e0001 	li	t6,1
   c:	3c010000 	lui	at,0x0
  10:	3c040000 	lui	a0,0x0
  14:	3c050000 	lui	a1,0x0
  18:	ac2e0000 	sw	t6,0(at)
  1c:	24a50000 	addiu	a1,a1,0
  20:	24840000 	addiu	a0,a0,0
  24:	0c000000 	jal	0 <__osPiCreateAccessQueue>
  28:	24060001 	li	a2,1
  2c:	3c040000 	lui	a0,0x0
  30:	24840000 	addiu	a0,a0,0
  34:	00002825 	move	a1,zero
  38:	0c000000 	jal	0 <__osPiCreateAccessQueue>
  3c:	00003025 	move	a2,zero
  40:	8fbf0014 	lw	ra,20(sp)
  44:	27bd0018 	addiu	sp,sp,24
  48:	03e00008 	jr	ra
  4c:	00000000 	nop

00000050 <__osPiGetAccess>:
  50:	3c0e0000 	lui	t6,0x0
  54:	8dce0000 	lw	t6,0(t6)
  58:	27bdffe0 	addiu	sp,sp,-32
  5c:	afbf0014 	sw	ra,20(sp)
  60:	15c00003 	bnez	t6,70 <__osPiGetAccess+0x20>
  64:	00000000 	nop
  68:	0c000000 	jal	0 <__osPiCreateAccessQueue>
  6c:	00000000 	nop
  70:	3c040000 	lui	a0,0x0
  74:	24840000 	addiu	a0,a0,0
  78:	27a5001c 	addiu	a1,sp,28
  7c:	0c000000 	jal	0 <__osPiCreateAccessQueue>
  80:	24060001 	li	a2,1
  84:	8fbf0014 	lw	ra,20(sp)
  88:	27bd0020 	addiu	sp,sp,32
  8c:	03e00008 	jr	ra
  90:	00000000 	nop

00000094 <__osPiRelAccess>:
  94:	27bdffe8 	addiu	sp,sp,-24
  98:	afbf0014 	sw	ra,20(sp)
  9c:	3c040000 	lui	a0,0x0
  a0:	24840000 	addiu	a0,a0,0
  a4:	00002825 	move	a1,zero
  a8:	0c000000 	jal	0 <__osPiCreateAccessQueue>
  ac:	00003025 	move	a2,zero
  b0:	8fbf0014 	lw	ra,20(sp)
  b4:	27bd0018 	addiu	sp,sp,24
  b8:	03e00008 	jr	ra
  bc:	00000000 	nop
