.rdata
glabel D_801397C4
    .asciz "\x1B[34mcamera: destroy ---\x1B[m\n"
    .balign 4

glabel D_801397E4
    .asciz "../z_camera.c"
    .balign 4
    
glabel D_801397F4
    .asciz "\x1B[43;30mcamera: destroy: already cleared\n\x1B[m"
    .balign 4

.text
glabel func_80057C14
/* ACEDB4 80057C14 27BDFFE8 */  addiu $sp, $sp, -0x18
/* ACEDB8 80057C18 AFBF0014 */  sw    $ra, 0x14($sp)
/* ACEDBC 80057C1C 1080000C */  beqz  $a0, .L80057C50
/* ACEDC0 80057C20 00803825 */   move  $a3, $a0
/* ACEDC4 80057C24 3C048014 */  lui   $a0, %hi(D_801397C4) # $a0, 0x8014
/* ACEDC8 80057C28 248497C4 */  addiu $a0, %lo(D_801397C4) # addiu $a0, $a0, -0x683c
/* ACEDCC 80057C2C 0C00084C */  jal   osSyncPrintf
/* ACEDD0 80057C30 AFA70018 */   sw    $a3, 0x18($sp)
/* ACEDD4 80057C34 3C058014 */  lui   $a1, %hi(D_801397E4) # $a1, 0x8014
/* ACEDD8 80057C38 8FA40018 */  lw    $a0, 0x18($sp)
/* ACEDDC 80057C3C 24A597E4 */  addiu $a1, %lo(D_801397E4) # addiu $a1, $a1, -0x681c
/* ACEDE0 80057C40 0C01EC35 */  jal   ZeldaArena_FreeDebug
/* ACEDE4 80057C44 240624AF */   li    $a2, 9391
/* ACEDE8 80057C48 10000005 */  b     .L80057C60
/* ACEDEC 80057C4C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80057C50:
/* ACEDF0 80057C50 3C048014 */  lui   $a0, %hi(D_801397F4) # $a0, 0x8014
/* ACEDF4 80057C54 0C00084C */  jal   osSyncPrintf
/* ACEDF8 80057C58 248497F4 */   addiu $a0, %lo(D_801397F4) # addiu $a0, $a0, -0x680c
/* ACEDFC 80057C5C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80057C60:
/* ACEE00 80057C60 27BD0018 */  addiu $sp, $sp, 0x18
/* ACEE04 80057C64 03E00008 */  jr    $ra
/* ACEE08 80057C68 00000000 */   nop   
