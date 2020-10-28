
build/src/libultra_boot_O2/osViGetNextFramebuffer.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osViGetNextFramebuffer>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf0014 	sw	ra,20(sp)
   8:	0c000000 	jal	0 <osViGetNextFramebuffer>
   c:	00000000 	nop
  10:	3c0e0000 	lui	t6,0x0
  14:	8dce0000 	lw	t6,0(t6)
  18:	00402025 	move	a0,v0
  1c:	8dcf0004 	lw	t7,4(t6)
  20:	0c000000 	jal	0 <osViGetNextFramebuffer>
  24:	afaf0018 	sw	t7,24(sp)
  28:	8fbf0014 	lw	ra,20(sp)
  2c:	8fa20018 	lw	v0,24(sp)
  30:	27bd0020 	addiu	sp,sp,32
  34:	03e00008 	jr	ra
  38:	00000000 	nop
  3c:	00000000 	nop
