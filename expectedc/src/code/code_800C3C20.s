
build/src/code/code_800C3C20.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800C3C20>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afb10018 	sw	s1,24(sp)
   8:	afb00014 	sw	s0,20(sp)
   c:	3c100000 	lui	s0,0x0
  10:	3c110000 	lui	s1,0x0
  14:	afbf001c 	sw	ra,28(sp)
  18:	26310007 	addiu	s1,s1,7
  1c:	26100000 	addiu	s0,s0,0
  20:	0c000000 	jal	0 <func_800C3C20>
  24:	92040000 	lbu	a0,0(s0)
  28:	26100001 	addiu	s0,s0,1
  2c:	0211082b 	sltu	at,s0,s1
  30:	1420fffb 	bnez	at,20 <func_800C3C20+0x20>
  34:	00000000 	nop
  38:	8fbf001c 	lw	ra,28(sp)
  3c:	8fb00014 	lw	s0,20(sp)
  40:	8fb10018 	lw	s1,24(sp)
  44:	03e00008 	jr	ra
  48:	27bd0020 	addiu	sp,sp,32
  4c:	00000000 	nop
