
build/src/boot/boot_main.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <cleararena>:
   0:	3c0e0000 	lui	t6,0x0
   4:	8dce0000 	lw	t6,0(t6)
   8:	27bdffe8 	addiu	sp,sp,-24
   c:	3c0f8000 	lui	t7,0x8000
  10:	afbf0014 	sw	ra,20(sp)
  14:	25ef0000 	addiu	t7,t7,0
  18:	3c040000 	lui	a0,0x0
  1c:	24840000 	addiu	a0,a0,0
  20:	0c000000 	jal	0 <cleararena>
  24:	01cf2823 	subu	a1,t6,t7
  28:	8fbf0014 	lw	ra,20(sp)
  2c:	27bd0018 	addiu	sp,sp,24
  30:	03e00008 	jr	ra
  34:	00000000 	nop

00000038 <bootproc>:
  38:	27bdffe0 	addiu	sp,sp,-32
  3c:	3c0f0000 	lui	t7,0x0
  40:	afbf001c 	sw	ra,28(sp)
  44:	25ef0000 	addiu	t7,t7,0
  48:	3c040000 	lui	a0,0x0
  4c:	3c050000 	lui	a1,0x0
  50:	3c060000 	lui	a2,0x0
  54:	240effff 	li	t6,-1
  58:	afae0010 	sw	t6,16(sp)
  5c:	24c60400 	addiu	a2,a2,1024
  60:	24a50000 	addiu	a1,a1,0
  64:	24840000 	addiu	a0,a0,0
  68:	afaf0014 	sw	t7,20(sp)
  6c:	0c000000 	jal	0 <cleararena>
  70:	00003825 	move	a3,zero
  74:	0c000000 	jal	0 <cleararena>
  78:	00000000 	nop
  7c:	3c010000 	lui	at,0x0
  80:	0c000000 	jal	0 <cleararena>
  84:	ac220000 	sw	v0,0(at)
  88:	0c000000 	jal	0 <cleararena>
  8c:	00000000 	nop
  90:	0c000000 	jal	0 <cleararena>
  94:	00000000 	nop
  98:	0c000000 	jal	0 <cleararena>
  9c:	00000000 	nop
  a0:	3c010000 	lui	at,0x0
  a4:	0c000000 	jal	0 <cleararena>
  a8:	ac220000 	sw	v0,0(at)
  ac:	0c000000 	jal	0 <cleararena>
  b0:	00000000 	nop
  b4:	0c000000 	jal	0 <cleararena>
  b8:	00000000 	nop
  bc:	3c190000 	lui	t9,0x0
  c0:	27390008 	addiu	t9,t9,8
  c4:	3c040000 	lui	a0,0x0
  c8:	3c050000 	lui	a1,0x0
  cc:	3c060000 	lui	a2,0x0
  d0:	24180100 	li	t8,256
  d4:	afb80010 	sw	t8,16(sp)
  d8:	24c60400 	addiu	a2,a2,1024
  dc:	24a50000 	addiu	a1,a1,0
  e0:	24840000 	addiu	a0,a0,0
  e4:	afb90014 	sw	t9,20(sp)
  e8:	0c000000 	jal	0 <cleararena>
  ec:	00003825 	move	a3,zero
  f0:	3c080000 	lui	t0,0x0
  f4:	25080400 	addiu	t0,t0,1024
  f8:	3c040000 	lui	a0,0x0
  fc:	3c060000 	lui	a2,0x0
 100:	2409000a 	li	t1,10
 104:	afa90014 	sw	t1,20(sp)
 108:	24c60000 	addiu	a2,a2,0
 10c:	24840000 	addiu	a0,a0,0
 110:	afa80010 	sw	t0,16(sp)
 114:	24050001 	li	a1,1
 118:	0c000000 	jal	0 <cleararena>
 11c:	00003825 	move	a3,zero
 120:	3c040000 	lui	a0,0x0
 124:	0c000000 	jal	0 <cleararena>
 128:	24840000 	addiu	a0,a0,0
 12c:	8fbf001c 	lw	ra,28(sp)
 130:	27bd0020 	addiu	sp,sp,32
 134:	03e00008 	jr	ra
 138:	00000000 	nop
 13c:	00000000 	nop
