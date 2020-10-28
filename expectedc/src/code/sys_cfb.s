
build/src/code/sys_cfb.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <SysCfb_Init>:
   0:	3c020000 	lui	v0,0x0
   4:	8c420000 	lw	v0,0(v0)
   8:	3c010080 	lui	at,0x80
   c:	27bdffe8 	addiu	sp,sp,-24
  10:	0041082b 	sltu	at,v0,at
  14:	afbf0014 	sw	ra,20(sp)
  18:	1420001c 	bnez	at,8c <SysCfb_Init+0x8c>
  1c:	afa40018 	sw	a0,24(sp)
  20:	3c040000 	lui	a0,0x0
  24:	0c000000 	jal	0 <SysCfb_Init>
  28:	24840000 	addiu	a0,a0,0
  2c:	8fae0018 	lw	t6,24(sp)
  30:	24010001 	li	at,1
  34:	3c040000 	lui	a0,0x0
  38:	15c10009 	bne	t6,at,60 <SysCfb_Init+0x60>
  3c:	00000000 	nop
  40:	0c000000 	jal	0 <SysCfb_Init>
  44:	2484002c 	addiu	a0,a0,44
  48:	3c020000 	lui	v0,0x0
  4c:	3c0f805f 	lui	t7,0x805f
  50:	24420000 	addiu	v0,v0,0
  54:	35efb000 	ori	t7,t7,0xb000
  58:	1000001e 	b	d4 <SysCfb_Init+0xd4>
  5c:	ac4f0000 	sw	t7,0(v0)
  60:	3c040000 	lui	a0,0x0
  64:	24840048 	addiu	a0,a0,72
  68:	0c000000 	jal	0 <SysCfb_Init>
  6c:	2405012f 	li	a1,303
  70:	3c188044 	lui	t8,0x8044
  74:	3718be80 	ori	t8,t8,0xbe80
  78:	3c010000 	lui	at,0x0
  7c:	3c020000 	lui	v0,0x0
  80:	24420000 	addiu	v0,v0,0
  84:	10000013 	b	d4 <SysCfb_Init+0xd4>
  88:	ac380000 	sw	t8,0(at)
  8c:	3c010040 	lui	at,0x40
  90:	0041082b 	sltu	at,v0,at
  94:	1420000a 	bnez	at,c0 <SysCfb_Init+0xc0>
  98:	3c040000 	lui	a0,0x0
  9c:	3c040000 	lui	a0,0x0
  a0:	0c000000 	jal	0 <SysCfb_Init>
  a4:	24840074 	addiu	a0,a0,116
  a8:	3c198040 	lui	t9,0x8040
  ac:	3c010000 	lui	at,0x0
  b0:	3c020000 	lui	v0,0x0
  b4:	24420000 	addiu	v0,v0,0
  b8:	10000006 	b	d4 <SysCfb_Init+0xd4>
  bc:	ac390000 	sw	t9,0(at)
  c0:	24840080 	addiu	a0,a0,128
  c4:	0c000000 	jal	0 <SysCfb_Init>
  c8:	24050162 	li	a1,354
  cc:	3c020000 	lui	v0,0x0
  d0:	24420000 	addiu	v0,v0,0
  d4:	8c480000 	lw	t0,0(v0)
  d8:	2401ffc0 	li	at,-64
  dc:	3c040000 	lui	a0,0x0
  e0:	01012824 	and	a1,t0,at
  e4:	ac450000 	sw	a1,0(v0)
  e8:	0c000000 	jal	0 <SysCfb_Init>
  ec:	24840090 	addiu	a0,a0,144
  f0:	3c020000 	lui	v0,0x0
  f4:	8c420000 	lw	v0,0(v0)
  f8:	3c01fffb 	lui	at,0xfffb
  fc:	34215000 	ori	at,at,0x5000
 100:	00415021 	addu	t2,v0,at
 104:	3c010000 	lui	at,0x0
 108:	ac2a0000 	sw	t2,0(at)
 10c:	3c01fffd 	lui	at,0xfffd
 110:	3421a800 	ori	at,at,0xa800
 114:	00415821 	addu	t3,v0,at
 118:	3c030000 	lui	v1,0x0
 11c:	3c010000 	lui	at,0x0
 120:	24630000 	addiu	v1,v1,0
 124:	ac2b0004 	sw	t3,4(at)
 128:	3c040000 	lui	a0,0x0
 12c:	248400bc 	addiu	a0,a0,188
 130:	8c660004 	lw	a2,4(v1)
 134:	0c000000 	jal	0 <SysCfb_Init>
 138:	8c650000 	lw	a1,0(v1)
 13c:	8fbf0014 	lw	ra,20(sp)
 140:	27bd0018 	addiu	sp,sp,24
 144:	03e00008 	jr	ra
 148:	00000000 	nop

0000014c <SysCfb_Reset>:
 14c:	3c020000 	lui	v0,0x0
 150:	24420000 	addiu	v0,v0,0
 154:	ac400000 	sw	zero,0(v0)
 158:	ac400004 	sw	zero,4(v0)
 15c:	3c010000 	lui	at,0x0
 160:	03e00008 	jr	ra
 164:	ac200000 	sw	zero,0(at)

00000168 <SysCfb_GetFbPtr>:
 168:	28810002 	slti	at,a0,2
 16c:	10200006 	beqz	at,188 <SysCfb_GetFbPtr+0x20>
 170:	00001025 	move	v0,zero
 174:	00047080 	sll	t6,a0,0x2
 178:	3c020000 	lui	v0,0x0
 17c:	004e1021 	addu	v0,v0,t6
 180:	03e00008 	jr	ra
 184:	8c420000 	lw	v0,0(v0)
 188:	03e00008 	jr	ra
 18c:	00000000 	nop

00000190 <SysCfb_GetFbEnd>:
 190:	3c020000 	lui	v0,0x0
 194:	03e00008 	jr	ra
 198:	8c420000 	lw	v0,0(v0)
 19c:	00000000 	nop
