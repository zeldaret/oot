
build/src/code/code_800FD970.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Math_Rand_Next>:
   0:	3c030000 	lui	v1,0x0
   4:	24630000 	addiu	v1,v1,0
   8:	8c6e0000 	lw	t6,0(v1)
   c:	3c010019 	lui	at,0x19
  10:	3421660d 	ori	at,at,0x660d
  14:	01c10019 	multu	t6,at
  18:	3c013c6e 	lui	at,0x3c6e
  1c:	3421f35f 	ori	at,at,0xf35f
  20:	00007812 	mflo	t7
  24:	01e11021 	addu	v0,t7,at
  28:	03e00008 	jr	ra
  2c:	ac620000 	sw	v0,0(v1)

00000030 <Math_Rand_Seed>:
  30:	3c010000 	lui	at,0x0
  34:	03e00008 	jr	ra
  38:	ac240000 	sw	a0,0(at)

0000003c <Math_Rand_ZeroOne>:
  3c:	3c020000 	lui	v0,0x0
  40:	24420000 	addiu	v0,v0,0
  44:	8c4e0000 	lw	t6,0(v0)
  48:	3c010019 	lui	at,0x19
  4c:	3421660d 	ori	at,at,0x660d
  50:	01c10019 	multu	t6,at
  54:	3c013c6e 	lui	at,0x3c6e
  58:	3421f35f 	ori	at,at,0xf35f
  5c:	3c030000 	lui	v1,0x0
  60:	24630000 	addiu	v1,v1,0
  64:	00007812 	mflo	t7
  68:	01e1c021 	addu	t8,t7,at
  6c:	00184242 	srl	t0,t8,0x9
  70:	3c013f80 	lui	at,0x3f80
  74:	01014825 	or	t1,t0,at
  78:	ac690000 	sw	t1,0(v1)
  7c:	c4640000 	lwc1	$f4,0(v1)
  80:	44813000 	mtc1	at,$f6
  84:	ac580000 	sw	t8,0(v0)
  88:	03e00008 	jr	ra
  8c:	46062001 	sub.s	$f0,$f4,$f6

00000090 <Math_Rand_Centered>:
  90:	3c020000 	lui	v0,0x0
  94:	24420000 	addiu	v0,v0,0
  98:	8c4e0000 	lw	t6,0(v0)
  9c:	3c010019 	lui	at,0x19
  a0:	3421660d 	ori	at,at,0x660d
  a4:	01c10019 	multu	t6,at
  a8:	3c013c6e 	lui	at,0x3c6e
  ac:	3421f35f 	ori	at,at,0xf35f
  b0:	3c030000 	lui	v1,0x0
  b4:	24630000 	addiu	v1,v1,0
  b8:	00007812 	mflo	t7
  bc:	01e1c021 	addu	t8,t7,at
  c0:	00184242 	srl	t0,t8,0x9
  c4:	3c013f80 	lui	at,0x3f80
  c8:	01014825 	or	t1,t0,at
  cc:	ac690000 	sw	t1,0(v1)
  d0:	3c013fc0 	lui	at,0x3fc0
  d4:	44813000 	mtc1	at,$f6
  d8:	c4640000 	lwc1	$f4,0(v1)
  dc:	ac580000 	sw	t8,0(v0)
  e0:	03e00008 	jr	ra
  e4:	46062001 	sub.s	$f0,$f4,$f6

000000e8 <Math_Rand_Seed_Variable>:
  e8:	03e00008 	jr	ra
  ec:	ac850000 	sw	a1,0(a0)

000000f0 <Math_Rand_Next_Variable>:
  f0:	8c830000 	lw	v1,0(a0)
  f4:	3c010019 	lui	at,0x19
  f8:	3421660d 	ori	at,at,0x660d
  fc:	00610019 	multu	v1,at
 100:	3c013c6e 	lui	at,0x3c6e
 104:	3421f35f 	ori	at,at,0xf35f
 108:	00001812 	mflo	v1
 10c:	00611021 	addu	v0,v1,at
 110:	03e00008 	jr	ra
 114:	ac820000 	sw	v0,0(a0)

00000118 <Math_Rand_ZeroOne_Variable>:
 118:	8c820000 	lw	v0,0(a0)
 11c:	3c010019 	lui	at,0x19
 120:	3421660d 	ori	at,at,0x660d
 124:	00410019 	multu	v0,at
 128:	3c013c6e 	lui	at,0x3c6e
 12c:	3421f35f 	ori	at,at,0xf35f
 130:	3c030000 	lui	v1,0x0
 134:	24630000 	addiu	v1,v1,0
 138:	00001012 	mflo	v0
 13c:	00411021 	addu	v0,v0,at
 140:	00027242 	srl	t6,v0,0x9
 144:	3c013f80 	lui	at,0x3f80
 148:	01c17825 	or	t7,t6,at
 14c:	ac820000 	sw	v0,0(a0)
 150:	ac6f0000 	sw	t7,0(v1)
 154:	c4640000 	lwc1	$f4,0(v1)
 158:	44813000 	mtc1	at,$f6
 15c:	03e00008 	jr	ra
 160:	46062001 	sub.s	$f0,$f4,$f6

00000164 <Math_Rand_Centered_Variable>:
 164:	8c820000 	lw	v0,0(a0)
 168:	3c010019 	lui	at,0x19
 16c:	3421660d 	ori	at,at,0x660d
 170:	00410019 	multu	v0,at
 174:	3c013c6e 	lui	at,0x3c6e
 178:	3421f35f 	ori	at,at,0xf35f
 17c:	3c030000 	lui	v1,0x0
 180:	24630000 	addiu	v1,v1,0
 184:	00001012 	mflo	v0
 188:	00411021 	addu	v0,v0,at
 18c:	00027242 	srl	t6,v0,0x9
 190:	3c013f80 	lui	at,0x3f80
 194:	01c17825 	or	t7,t6,at
 198:	ac820000 	sw	v0,0(a0)
 19c:	ac6f0000 	sw	t7,0(v1)
 1a0:	3c013fc0 	lui	at,0x3fc0
 1a4:	44813000 	mtc1	at,$f6
 1a8:	c4640000 	lwc1	$f4,0(v1)
 1ac:	03e00008 	jr	ra
 1b0:	46062001 	sub.s	$f0,$f4,$f6
	...
