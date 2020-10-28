
build/src/libultra_code_O2/osSpTaskYielded.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osSpTaskYielded>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	0c000000 	jal	0 <osSpTaskYielded>
   c:	afa40018 	sw	a0,24(sp)
  10:	304e0100 	andi	t6,v0,0x100
  14:	11c00003 	beqz	t6,24 <osSpTaskYielded+0x24>
  18:	8fa40018 	lw	a0,24(sp)
  1c:	10000002 	b	28 <osSpTaskYielded+0x28>
  20:	24030001 	li	v1,1
  24:	00001825 	move	v1,zero
  28:	304f0080 	andi	t7,v0,0x80
  2c:	51e00008 	beqzl	t7,50 <osSpTaskYielded+0x50>
  30:	8fbf0014 	lw	ra,20(sp)
  34:	8c980004 	lw	t8,4(a0)
  38:	2401fffd 	li	at,-3
  3c:	0303c825 	or	t9,t8,v1
  40:	ac990004 	sw	t9,4(a0)
  44:	03214824 	and	t1,t9,at
  48:	ac890004 	sw	t1,4(a0)
  4c:	8fbf0014 	lw	ra,20(sp)
  50:	27bd0018 	addiu	sp,sp,24
  54:	00601025 	move	v0,v1
  58:	03e00008 	jr	ra
  5c:	00000000 	nop
