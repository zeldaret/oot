.rdata
glabel D_80139754
    .asciz "../z_camera.c"
    .balign 4

glabel D_80139764
    .asciz "\x1B[34mcamera: create --- allocate %d byte\x1B[m\n"
    .balign 4

glabel D_80139794
    .asciz "\x1B[41;37mcamera: create: not enough memory\n\x1B[m"
    .balign 4

.text
glabel func_80057B98
/* ACED38 80057B98 27BDFFE0 */  addiu $sp, $sp, -0x20
/* ACED3C 80057B9C AFA50024 */  sw    $a1, 0x24($sp)
/* ACED40 80057BA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* ACED44 80057BA4 AFA40020 */  sw    $a0, 0x20($sp)
/* ACED48 80057BA8 AFA60028 */  sw    $a2, 0x28($sp)
/* ACED4C 80057BAC 3C058014 */  lui   $a1, %hi(D_80139754) # $a1, 0x8014
/* ACED50 80057BB0 24A59754 */  addiu $a1, %lo(D_80139754) # addiu $a1, $a1, -0x68ac
/* ACED54 80057BB4 2406249A */  li    $a2, 9370
/* ACED58 80057BB8 0C01EBB8 */  jal   ZeldaArena_MallocDebug
/* ACED5C 80057BBC 2404016C */   li    $a0, 364
/* ACED60 80057BC0 1040000C */  beqz  $v0, .L80057BF4
/* ACED64 80057BC4 AFA2001C */   sw    $v0, 0x1c($sp)
/* ACED68 80057BC8 3C048014 */  lui   $a0, %hi(D_80139764) # $a0, 0x8014
/* ACED6C 80057BCC 24849764 */  addiu $a0, %lo(D_80139764) # addiu $a0, $a0, -0x689c
/* ACED70 80057BD0 0C00084C */  jal   osSyncPrintf
/* ACED74 80057BD4 240505B0 */   li    $a1, 1456
/* ACED78 80057BD8 8FA4001C */  lw    $a0, 0x1c($sp)
/* ACED7C 80057BDC 8FA50020 */  lw    $a1, 0x20($sp)
/* ACED80 80057BE0 8FA60024 */  lw    $a2, 0x24($sp)
/* ACED84 80057BE4 0C015F1B */  jal   func_80057C6C
/* ACED88 80057BE8 8FA70028 */   lw    $a3, 0x28($sp)
/* ACED8C 80057BEC 10000005 */  b     .L80057C04
/* ACED90 80057BF0 8FBF0014 */   lw    $ra, 0x14($sp)
.L80057BF4:
/* ACED94 80057BF4 3C048014 */  lui   $a0, %hi(D_80139794) # $a0, 0x8014
/* ACED98 80057BF8 0C00084C */  jal   osSyncPrintf
/* ACED9C 80057BFC 24849794 */   addiu $a0, %lo(D_80139794) # addiu $a0, $a0, -0x686c
/* ACEDA0 80057C00 8FBF0014 */  lw    $ra, 0x14($sp)
.L80057C04:
/* ACEDA4 80057C04 8FA2001C */  lw    $v0, 0x1c($sp)
/* ACEDA8 80057C08 27BD0020 */  addiu $sp, $sp, 0x20
/* ACEDAC 80057C0C 03E00008 */  jr    $ra
/* ACEDB0 80057C10 00000000 */   nop  
