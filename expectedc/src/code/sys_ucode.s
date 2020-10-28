
build/src/code/sys_ucode.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <SysUcode_GetUCodeBoot>:
   0:	3c020000 	lui	v0,0x0
   4:	03e00008 	jr	ra
   8:	24420000 	addiu	v0,v0,0

0000000c <SysUcode_GetUCodeBootSize>:
   c:	3c0e0000 	lui	t6,0x0
  10:	3c0f0000 	lui	t7,0x0
  14:	25ef0000 	addiu	t7,t7,0
  18:	25ce0000 	addiu	t6,t6,0
  1c:	03e00008 	jr	ra
  20:	01cf1023 	subu	v0,t6,t7

00000024 <SysUcode_GetUCode>:
  24:	3c020000 	lui	v0,0x0
  28:	03e00008 	jr	ra
  2c:	8c420000 	lw	v0,0(v0)

00000030 <SysUcode_GetUCodeData>:
  30:	3c020000 	lui	v0,0x0
  34:	03e00008 	jr	ra
  38:	8c420000 	lw	v0,0(v0)
  3c:	00000000 	nop
