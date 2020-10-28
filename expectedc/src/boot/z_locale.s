
build/src/boot/z_locale.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Locale_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	3c040000 	lui	a0,0x0
   c:	3c060000 	lui	a2,0x0
  10:	24c60018 	addiu	a2,a2,24
  14:	8c840000 	lw	a0,0(a0)
  18:	0c000000 	jal	0 <Locale_Init>
  1c:	24050038 	li	a1,56
  20:	3c040000 	lui	a0,0x0
  24:	3c060000 	lui	a2,0x0
  28:	24c6001c 	addiu	a2,a2,28
  2c:	8c840000 	lw	a0,0(a0)
  30:	0c000000 	jal	0 <Locale_Init>
  34:	2405003c 	li	a1,60
  38:	3c020000 	lui	v0,0x0
  3c:	9042001e 	lbu	v0,30(v0)
  40:	24010045 	li	at,69
  44:	240f0002 	li	t7,2
  48:	1041000b 	beq	v0,at,78 <Locale_Init+0x78>
  4c:	2401004a 	li	at,74
  50:	10410006 	beq	v0,at,6c <Locale_Init+0x6c>
  54:	240e0001 	li	t6,1
  58:	24010050 	li	at,80
  5c:	10410009 	beq	v0,at,84 <Locale_Init+0x84>
  60:	24180003 	li	t8,3
  64:	1000000a 	b	90 <Locale_Init+0x90>
  68:	3c040000 	lui	a0,0x0
  6c:	3c010000 	lui	at,0x0
  70:	10000013 	b	c0 <Locale_Init+0xc0>
  74:	ac2e0000 	sw	t6,0(at)
  78:	3c010000 	lui	at,0x0
  7c:	10000010 	b	c0 <Locale_Init+0xc0>
  80:	ac2f0000 	sw	t7,0(at)
  84:	3c010000 	lui	at,0x0
  88:	1000000d 	b	c0 <Locale_Init+0xc0>
  8c:	ac380000 	sw	t8,0(at)
  90:	0c000000 	jal	0 <Locale_Init>
  94:	24840000 	addiu	a0,a0,0
  98:	3c040000 	lui	a0,0x0
  9c:	0c000000 	jal	0 <Locale_Init>
  a0:	2484000c 	addiu	a0,a0,12
  a4:	3c040000 	lui	a0,0x0
  a8:	24840040 	addiu	a0,a0,64
  ac:	0c000000 	jal	0 <Locale_Init>
  b0:	24050076 	li	a1,118
  b4:	3c040000 	lui	a0,0x0
  b8:	0c000000 	jal	0 <Locale_Init>
  bc:	24840050 	addiu	a0,a0,80
  c0:	3c040000 	lui	a0,0x0
  c4:	0c000000 	jal	0 <Locale_Init>
  c8:	24840054 	addiu	a0,a0,84
  cc:	8fbf0014 	lw	ra,20(sp)
  d0:	27bd0018 	addiu	sp,sp,24
  d4:	03e00008 	jr	ra
  d8:	00000000 	nop

000000dc <Locale_ResetRegion>:
  dc:	3c010000 	lui	at,0x0
  e0:	03e00008 	jr	ra
  e4:	ac200000 	sw	zero,0(at)

000000e8 <func_80001F48>:
  e8:	3c0e0000 	lui	t6,0x0
  ec:	8dce0000 	lw	t6,0(t6)
  f0:	24010003 	li	at,3
  f4:	3c0f0000 	lui	t7,0x0
  f8:	15c10003 	bne	t6,at,108 <func_80001F48+0x20>
  fc:	25ef0000 	addiu	t7,t7,0
 100:	03e00008 	jr	ra
 104:	00001025 	move	v0,zero
 108:	91f802a8 	lbu	t8,680(t7)
 10c:	24020001 	li	v0,1
 110:	33190004 	andi	t9,t8,0x4
 114:	13200003 	beqz	t9,124 <func_80001F48+0x3c>
 118:	00000000 	nop
 11c:	03e00008 	jr	ra
 120:	00001025 	move	v0,zero
 124:	03e00008 	jr	ra
 128:	00000000 	nop

0000012c <func_80001F8C>:
 12c:	3c0e0000 	lui	t6,0x0
 130:	8dce0000 	lw	t6,0(t6)
 134:	24010003 	li	at,3
 138:	3c0f0000 	lui	t7,0x0
 13c:	15c10003 	bne	t6,at,14c <func_80001F8C+0x20>
 140:	25ef0000 	addiu	t7,t7,0
 144:	03e00008 	jr	ra
 148:	00001025 	move	v0,zero
 14c:	91f802a8 	lbu	t8,680(t7)
 150:	00001025 	move	v0,zero
 154:	33190004 	andi	t9,t8,0x4
 158:	13200003 	beqz	t9,168 <func_80001F8C+0x3c>
 15c:	00000000 	nop
 160:	03e00008 	jr	ra
 164:	24020001 	li	v0,1
 168:	03e00008 	jr	ra
 16c:	00000000 	nop

00000170 <Locale_IsRegionNative>:
 170:	3c020000 	lui	v0,0x0
 174:	8c420000 	lw	v0,0(v0)
 178:	38420003 	xori	v0,v0,0x3
 17c:	03e00008 	jr	ra
 180:	2c420001 	sltiu	v0,v0,1
	...
