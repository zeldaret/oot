
build/src/libultra_boot_O2/osEPiStartDma.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osEPiStartDma>:
   0:	3c0e0000 	lui	t6,0x0
   4:	8dce0000 	lw	t6,0(t6)
   8:	27bdffe8 	addiu	sp,sp,-24
   c:	afbf0014 	sw	ra,20(sp)
  10:	15c00003 	bnez	t6,20 <osEPiStartDma+0x20>
  14:	00000000 	nop
  18:	1000001c 	b	8c <osEPiStartDma+0x8c>
  1c:	2402ffff 	li	v0,-1
  20:	14c00004 	bnez	a2,34 <osEPiStartDma+0x34>
  24:	aca40014 	sw	a0,20(a1)
  28:	240f000f 	li	t7,15
  2c:	10000003 	b	3c <osEPiStartDma+0x3c>
  30:	a4af0000 	sh	t7,0(a1)
  34:	24180010 	li	t8,16
  38:	a4b80000 	sh	t8,0(a1)
  3c:	90b90002 	lbu	t9,2(a1)
  40:	24010001 	li	at,1
  44:	17210009 	bne	t9,at,6c <osEPiStartDma+0x6c>
  48:	00000000 	nop
  4c:	0c000000 	jal	0 <osEPiStartDma>
  50:	afa5001c 	sw	a1,28(sp)
  54:	8fa5001c 	lw	a1,28(sp)
  58:	00402025 	move	a0,v0
  5c:	0c000000 	jal	0 <osEPiStartDma>
  60:	00003025 	move	a2,zero
  64:	10000008 	b	88 <osEPiStartDma+0x88>
  68:	00401825 	move	v1,v0
  6c:	0c000000 	jal	0 <osEPiStartDma>
  70:	afa5001c 	sw	a1,28(sp)
  74:	8fa5001c 	lw	a1,28(sp)
  78:	00402025 	move	a0,v0
  7c:	0c000000 	jal	0 <osEPiStartDma>
  80:	00003025 	move	a2,zero
  84:	00401825 	move	v1,v0
  88:	00601025 	move	v0,v1
  8c:	8fbf0014 	lw	ra,20(sp)
  90:	27bd0018 	addiu	sp,sp,24
  94:	03e00008 	jr	ra
  98:	00000000 	nop
  9c:	00000000 	nop
