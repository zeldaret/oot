
build/src/libultra_code_O2/code_80102FA0.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80102FA0>:
   0:	3c013780 	lui	at,0x3780
   4:	44810000 	mtc1	at,$f0
   8:	3c19ffff 	lui	t9,0xffff
   c:	24b80020 	addiu	t8,a1,32
  10:	8ca80000 	lw	t0,0(a1)
  14:	8ca90020 	lw	t1,32(a1)
  18:	24a50004 	addiu	a1,a1,4
  1c:	01195024 	and	t2,t0,t9
  20:	00095c02 	srl	t3,t1,0x10
  24:	014b6025 	or	t4,t2,t3
  28:	448c2000 	mtc1	t4,$f4
  2c:	00086c00 	sll	t5,t0,0x10
  30:	312effff 	andi	t6,t1,0xffff
  34:	01ae7825 	or	t7,t5,t6
  38:	468021a0 	cvt.s.w	$f6,$f4
  3c:	448f5000 	mtc1	t7,$f10
  40:	24840008 	addiu	a0,a0,8
  44:	46805420 	cvt.s.w	$f16,$f10
  48:	46003202 	mul.s	$f8,$f6,$f0
  4c:	00000000 	nop
  50:	46008482 	mul.s	$f18,$f16,$f0
  54:	e488fff8 	swc1	$f8,-8(a0)
  58:	14b8ffed 	bne	a1,t8,10 <func_80102FA0+0x10>
  5c:	e492fffc 	swc1	$f18,-4(a0)
  60:	03e00008 	jr	ra
  64:	00000000 	nop
	...
