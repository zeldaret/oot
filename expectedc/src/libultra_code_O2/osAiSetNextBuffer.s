
build/src/libultra_code_O2/osAiSetNextBuffer.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osAiSetNextBuffer>:
   0:	3c0e0000 	lui	t6,0x0
   4:	91ce0000 	lbu	t6,0(t6)
   8:	00857821 	addu	t7,a0,a1
   c:	00801825 	move	v1,a0
  10:	11c00002 	beqz	t6,1c <osAiSetNextBuffer+0x1c>
  14:	31f81fff 	andi	t8,t7,0x1fff
  18:	2483e000 	addiu	v1,a0,-8192
  1c:	17000005 	bnez	t8,34 <osAiSetNextBuffer+0x34>
  20:	3c08a450 	lui	t0,0xa450
  24:	24190001 	li	t9,1
  28:	3c010000 	lui	at,0x0
  2c:	10000003 	b	3c <osAiSetNextBuffer+0x3c>
  30:	a0390000 	sb	t9,0(at)
  34:	3c010000 	lui	at,0x0
  38:	a0200000 	sb	zero,0(at)
  3c:	8d02000c 	lw	v0,12(t0)
  40:	3c018000 	lui	at,0x8000
  44:	00615021 	addu	t2,v1,at
  48:	00024800 	sll	t1,v0,0x0
  4c:	05210003 	bgez	t1,5c <osAiSetNextBuffer+0x5c>
  50:	3c0ba450 	lui	t3,0xa450
  54:	03e00008 	jr	ra
  58:	2402ffff 	li	v0,-1
  5c:	ad6a0000 	sw	t2,0(t3)
  60:	3c0ca450 	lui	t4,0xa450
  64:	ad850004 	sw	a1,4(t4)
  68:	00001025 	move	v0,zero
  6c:	03e00008 	jr	ra
  70:	00000000 	nop
	...
