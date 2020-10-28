
build/src/code/z_kanfont.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8006EE50>:
   0:	afa40000 	sw	a0,0(sp)
   4:	afa50004 	sw	a1,4(sp)
   8:	03e00008 	jr	ra
   c:	afa60008 	sw	a2,8(sp)

00000010 <Font_LoadChar>:
  10:	27bdffe0 	addiu	sp,sp,-32
  14:	afa50024 	sw	a1,36(sp)
  18:	afa60028 	sw	a2,40(sp)
  1c:	97af002a 	lhu	t7,42(sp)
  20:	93b80027 	lbu	t8,39(sp)
  24:	afa40020 	sw	a0,32(sp)
  28:	3c080000 	lui	t0,0x0
  2c:	afbf001c 	sw	ra,28(sp)
  30:	25080000 	addiu	t0,t0,0
  34:	3c070000 	lui	a3,0x0
  38:	2409005d 	li	t1,93
  3c:	008f2021 	addu	a0,a0,t7
  40:	0018c9c0 	sll	t9,t8,0x7
  44:	03282821 	addu	a1,t9,t0
  48:	24840008 	addiu	a0,a0,8
  4c:	afa90010 	sw	t1,16(sp)
  50:	24e70000 	addiu	a3,a3,0
  54:	0c000000 	jal	0 <func_8006EE50>
  58:	24060080 	li	a2,128
  5c:	8fbf001c 	lw	ra,28(sp)
  60:	27bd0020 	addiu	sp,sp,32
  64:	03e00008 	jr	ra
  68:	00000000 	nop

0000006c <Font_LoadMessageBoxEndIcon>:
  6c:	27bdffe0 	addiu	sp,sp,-32
  70:	afa50024 	sw	a1,36(sp)
  74:	97ae0026 	lhu	t6,38(sp)
  78:	3c190000 	lui	t9,0x0
  7c:	afbf001c 	sw	ra,28(sp)
  80:	000e79c0 	sll	t7,t6,0x7
  84:	afa40020 	sw	a0,32(sp)
  88:	25f84000 	addiu	t8,t7,16384
  8c:	27390000 	addiu	t9,t9,0
  90:	3c070000 	lui	a3,0x0
  94:	24080064 	li	t0,100
  98:	afa80010 	sw	t0,16(sp)
  9c:	24e70010 	addiu	a3,a3,16
  a0:	03192821 	addu	a1,t8,t9
  a4:	24843c08 	addiu	a0,a0,15368
  a8:	0c000000 	jal	0 <func_8006EE50>
  ac:	24060080 	li	a2,128
  b0:	8fbf001c 	lw	ra,28(sp)
  b4:	27bd0020 	addiu	sp,sp,32
  b8:	03e00008 	jr	ra
  bc:	00000000 	nop

000000c0 <Font_LoadOrderedFont>:
  c0:	27bdffb8 	addiu	sp,sp,-72
  c4:	3c080000 	lui	t0,0x0
  c8:	25080000 	addiu	t0,t0,0
  cc:	afb50034 	sw	s5,52(sp)
  d0:	3c0e0000 	lui	t6,0x0
  d4:	3c0f0000 	lui	t7,0x0
  d8:	afbf0044 	sw	ra,68(sp)
  dc:	afbe0040 	sw	s8,64(sp)
  e0:	afb7003c 	sw	s7,60(sp)
  e4:	afb60038 	sw	s6,56(sp)
  e8:	afb40030 	sw	s4,48(sp)
  ec:	afb3002c 	sw	s3,44(sp)
  f0:	afb20028 	sw	s2,40(sp)
  f4:	afb10024 	sw	s1,36(sp)
  f8:	afb00020 	sw	s0,32(sp)
  fc:	25ce0000 	addiu	t6,t6,0
 100:	25ef0000 	addiu	t7,t7,0
 104:	010e1023 	subu	v0,t0,t6
 108:	01e83023 	subu	a2,t7,t0
 10c:	3c180000 	lui	t8,0x0
 110:	0080a825 	move	s5,a0
 114:	ac820000 	sw	v0,0(a0)
 118:	ac860004 	sw	a2,4(a0)
 11c:	27180000 	addiu	t8,t8,0
 120:	3401dc88 	li	at,0xdc88
 124:	3c070000 	lui	a3,0x0
 128:	2419007a 	li	t9,122
 12c:	afb90010 	sw	t9,16(sp)
 130:	24e70020 	addiu	a3,a3,32
 134:	00812021 	addu	a0,a0,at
 138:	00582821 	addu	a1,v0,t8
 13c:	0c000000 	jal	0 <func_8006EE50>
 140:	00c08025 	move	s0,a2
 144:	3c040000 	lui	a0,0x0
 148:	24840030 	addiu	a0,a0,48
 14c:	8ea50000 	lw	a1,0(s5)
 150:	8ea60004 	lw	a2,4(s5)
 154:	0200b025 	move	s6,s0
 158:	0c000000 	jal	0 <func_8006EE50>
 15c:	02003825 	move	a3,s0
 160:	341e8000 	li	s8,0x8000
 164:	02be4821 	addu	t1,s5,s8
 168:	912a5c88 	lbu	t2,23688(t1)
 16c:	24170002 	li	s7,2
 170:	00009025 	move	s2,zero
 174:	12ea0027 	beq	s7,t2,214 <Font_LoadOrderedFont+0x154>
 178:	00008825 	move	s1,zero
 17c:	02d1082a 	slt	at,s6,s1
 180:	10200006 	beqz	at,19c <Font_LoadOrderedFont+0xdc>
 184:	02b15821 	addu	t3,s5,s1
 188:	3c040000 	lui	a0,0x0
 18c:	0c000000 	jal	0 <func_8006EE50>
 190:	24840054 	addiu	a0,a0,84
 194:	10000020 	b	218 <Font_LoadOrderedFont+0x158>
 198:	8fbf0044 	lw	ra,68(sp)
 19c:	017e8021 	addu	s0,t3,s8
 1a0:	92065c88 	lbu	a2,23688(s0)
 1a4:	24010001 	li	at,1
 1a8:	3c040000 	lui	a0,0x0
 1ac:	10c10014 	beq	a2,at,200 <Font_LoadOrderedFont+0x140>
 1b0:	24840088 	addiu	a0,a0,136
 1b4:	001260c0 	sll	t4,s2,0x3
 1b8:	02ac9821 	addu	s3,s5,t4
 1bc:	3c140000 	lui	s4,0x0
 1c0:	26940000 	addiu	s4,s4,0
 1c4:	26733c88 	addiu	s3,s3,15496
 1c8:	0c000000 	jal	0 <func_8006EE50>
 1cc:	02202825 	move	a1,s1
 1d0:	92025c88 	lbu	v0,23688(s0)
 1d4:	3c070000 	lui	a3,0x0
 1d8:	240d0086 	li	t5,134
 1dc:	000211c0 	sll	v0,v0,0x7
 1e0:	2442f000 	addiu	v0,v0,-4096
 1e4:	02822821 	addu	a1,s4,v0
 1e8:	afad0010 	sw	t5,16(sp)
 1ec:	24e7009c 	addiu	a3,a3,156
 1f0:	02602025 	move	a0,s3
 1f4:	0c000000 	jal	0 <func_8006EE50>
 1f8:	24060080 	li	a2,128
 1fc:	26520010 	addiu	s2,s2,16
 200:	920e5c89 	lbu	t6,23689(s0)
 204:	26310001 	addiu	s1,s1,1
 208:	26100001 	addiu	s0,s0,1
 20c:	56eeffdc 	bnel	s7,t6,180 <Font_LoadOrderedFont+0xc0>
 210:	02d1082a 	slt	at,s6,s1
 214:	8fbf0044 	lw	ra,68(sp)
 218:	8fb00020 	lw	s0,32(sp)
 21c:	8fb10024 	lw	s1,36(sp)
 220:	8fb20028 	lw	s2,40(sp)
 224:	8fb3002c 	lw	s3,44(sp)
 228:	8fb40030 	lw	s4,48(sp)
 22c:	8fb50034 	lw	s5,52(sp)
 230:	8fb60038 	lw	s6,56(sp)
 234:	8fb7003c 	lw	s7,60(sp)
 238:	8fbe0040 	lw	s8,64(sp)
 23c:	03e00008 	jr	ra
 240:	27bd0048 	addiu	sp,sp,72
	...
