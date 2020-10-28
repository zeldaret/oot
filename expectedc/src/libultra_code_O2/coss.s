
build/src/libultra_code_O2/coss.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <coss>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa40018 	sw	a0,24(sp)
   8:	00802825 	move	a1,a0
   c:	24a44000 	addiu	a0,a1,16384
  10:	afbf0014 	sw	ra,20(sp)
  14:	308effff 	andi	t6,a0,0xffff
  18:	0c000000 	jal	0 <coss>
  1c:	01c02025 	move	a0,t6
  20:	8fbf0014 	lw	ra,20(sp)
  24:	27bd0018 	addiu	sp,sp,24
  28:	03e00008 	jr	ra
  2c:	00000000 	nop
