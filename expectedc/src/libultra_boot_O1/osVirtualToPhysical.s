
build/src/libultra_boot_O1/osVirtualToPhysical.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osVirtualToPhysical>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa40018 	sw	a0,24(sp)
   8:	8fae0018 	lw	t6,24(sp)
   c:	3c018000 	lui	at,0x8000
  10:	afbf0014 	sw	ra,20(sp)
  14:	01c1082b 	sltu	at,t6,at
  18:	14200007 	bnez	at,38 <osVirtualToPhysical+0x38>
  1c:	3c01a000 	lui	at,0xa000
  20:	01c1082b 	sltu	at,t6,at
  24:	10200004 	beqz	at,38 <osVirtualToPhysical+0x38>
  28:	3c011fff 	lui	at,0x1fff
  2c:	3421ffff 	ori	at,at,0xffff
  30:	1000000e 	b	6c <osVirtualToPhysical+0x6c>
  34:	01c11024 	and	v0,t6,at
  38:	8faf0018 	lw	t7,24(sp)
  3c:	3c01a000 	lui	at,0xa000
  40:	01e1082b 	sltu	at,t7,at
  44:	14200007 	bnez	at,64 <osVirtualToPhysical+0x64>
  48:	3c01c000 	lui	at,0xc000
  4c:	01e1082b 	sltu	at,t7,at
  50:	10200004 	beqz	at,64 <osVirtualToPhysical+0x64>
  54:	3c011fff 	lui	at,0x1fff
  58:	3421ffff 	ori	at,at,0xffff
  5c:	10000003 	b	6c <osVirtualToPhysical+0x6c>
  60:	01e11024 	and	v0,t7,at
  64:	0c000000 	jal	0 <osVirtualToPhysical>
  68:	8fa40018 	lw	a0,24(sp)
  6c:	8fbf0014 	lw	ra,20(sp)
  70:	27bd0018 	addiu	sp,sp,24
  74:	03e00008 	jr	ra
  78:	00000000 	nop
  7c:	00000000 	nop
