
build/src/code/z_msgevent.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <MsgEvent_SendNullTask>:
   0:	27bdff60 	addiu	sp,sp,-160
   4:	afbf0014 	sw	ra,20(sp)
   8:	27a40020 	addiu	a0,sp,32
   c:	240e0003 	li	t6,3
  10:	afa00038 	sw	zero,56(sp)
  14:	afae0040 	sw	t6,64(sp)
  18:	afa40088 	sw	a0,136(sp)
  1c:	afa0008c 	sw	zero,140(sp)
  20:	afa00044 	sw	zero,68(sp)
  24:	afa00048 	sw	zero,72(sp)
  28:	27a5001c 	addiu	a1,sp,28
  2c:	0c000000 	jal	0 <MsgEvent_SendNullTask>
  30:	24060001 	li	a2,1
  34:	3c040000 	lui	a0,0x0
  38:	24840038 	addiu	a0,a0,56
  3c:	27a50038 	addiu	a1,sp,56
  40:	0c000000 	jal	0 <MsgEvent_SendNullTask>
  44:	24060001 	li	a2,1
  48:	3c040000 	lui	a0,0x0
  4c:	0c000000 	jal	0 <MsgEvent_SendNullTask>
  50:	24840000 	addiu	a0,a0,0
  54:	27a40020 	addiu	a0,sp,32
  58:	00002825 	move	a1,zero
  5c:	0c000000 	jal	0 <MsgEvent_SendNullTask>
  60:	24060001 	li	a2,1
  64:	8fbf0014 	lw	ra,20(sp)
  68:	27bd00a0 	addiu	sp,sp,160
  6c:	03e00008 	jr	ra
  70:	00000000 	nop
	...
