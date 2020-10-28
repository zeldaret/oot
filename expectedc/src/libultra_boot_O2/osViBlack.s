
build/src/libultra_boot_O2/osViBlack.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osViBlack>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	0c000000 	jal	0 <osViBlack>
   c:	afa40018 	sw	a0,24(sp)
  10:	93ae001b 	lbu	t6,27(sp)
  14:	00402025 	move	a0,v0
  18:	3c020000 	lui	v0,0x0
  1c:	11c00007 	beqz	t6,3c <osViBlack+0x3c>
  20:	00000000 	nop
  24:	3c020000 	lui	v0,0x0
  28:	8c420000 	lw	v0,0(v0)
  2c:	944f0000 	lhu	t7,0(v0)
  30:	35f80020 	ori	t8,t7,0x20
  34:	10000005 	b	4c <osViBlack+0x4c>
  38:	a4580000 	sh	t8,0(v0)
  3c:	8c420000 	lw	v0,0(v0)
  40:	94590000 	lhu	t9,0(v0)
  44:	3328ffdf 	andi	t0,t9,0xffdf
  48:	a4480000 	sh	t0,0(v0)
  4c:	0c000000 	jal	0 <osViBlack>
  50:	00000000 	nop
  54:	8fbf0014 	lw	ra,20(sp)
  58:	27bd0018 	addiu	sp,sp,24
  5c:	03e00008 	jr	ra
  60:	00000000 	nop
	...
