
build/src/libultra_boot_O1/osCreateMesgQueue.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osCreateMesgQueue>:
   0:	3c0e0000 	lui	t6,0x0
   4:	3c0f0000 	lui	t7,0x0
   8:	25ce0000 	addiu	t6,t6,0
   c:	25ef0000 	addiu	t7,t7,0
  10:	ac8e0000 	sw	t6,0(a0)
  14:	ac8f0004 	sw	t7,4(a0)
  18:	ac800008 	sw	zero,8(a0)
  1c:	ac80000c 	sw	zero,12(a0)
  20:	ac860010 	sw	a2,16(a0)
  24:	03e00008 	jr	ra
  28:	ac850014 	sw	a1,20(a0)
  2c:	00000000 	nop
