
build/src/code/printutils.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <PrintUtils_VPrintf>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa5001c 	sw	a1,28(sp)
   8:	00802825 	move	a1,a0
   c:	afbf0014 	sw	ra,20(sp)
  10:	afa40018 	sw	a0,24(sp)
  14:	00c03825 	move	a3,a2
  18:	8fa6001c 	lw	a2,28(sp)
  1c:	0c000000 	jal	0 <PrintUtils_VPrintf>
  20:	8c840000 	lw	a0,0(a0)
  24:	8fbf0014 	lw	ra,20(sp)
  28:	27bd0018 	addiu	sp,sp,24
  2c:	03e00008 	jr	ra
  30:	00000000 	nop

00000034 <PrintUtils_Printf>:
  34:	27bdffe0 	addiu	sp,sp,-32
  38:	afbf0014 	sw	ra,20(sp)
  3c:	afa60028 	sw	a2,40(sp)
  40:	afa50024 	sw	a1,36(sp)
  44:	afa7002c 	sw	a3,44(sp)
  48:	0c000000 	jal	0 <PrintUtils_VPrintf>
  4c:	27a60028 	addiu	a2,sp,40
  50:	8fbf0014 	lw	ra,20(sp)
  54:	27bd0020 	addiu	sp,sp,32
  58:	03e00008 	jr	ra
  5c:	00000000 	nop
