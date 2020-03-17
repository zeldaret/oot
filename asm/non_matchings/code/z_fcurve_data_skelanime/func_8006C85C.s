.rdata
glabel D_8013BA38
    .asciz "../z_fcurve_data_skelanime.c"
    .balign 4

.text
glabel func_8006C85C
/* AE39FC 8006C85C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AE3A00 8006C860 AFBF0014 */  sw    $ra, 0x14($sp)
/* AE3A04 8006C864 AFA40018 */  sw    $a0, 0x18($sp)
/* AE3A08 8006C868 8CA4001C */  lw    $a0, 0x1c($a1)
/* AE3A0C 8006C86C 3C058014 */  lui   $a1, %hi(D_8013BA38) # $a1, 0x8014
/* AE3A10 8006C870 24A5BA38 */  addiu $a1, %lo(D_8013BA38) # addiu $a1, $a1, -0x45c8
/* AE3A14 8006C874 50800004 */  beql  $a0, $zero, .L8006C888
/* AE3A18 8006C878 8FBF0014 */   lw    $ra, 0x14($sp)
/* AE3A1C 8006C87C 0C01EC35 */  jal   ZeldaArena_FreeDebug
/* AE3A20 8006C880 24060092 */   li    $a2, 146
/* AE3A24 8006C884 8FBF0014 */  lw    $ra, 0x14($sp)
.L8006C888:
/* AE3A28 8006C888 27BD0018 */  addiu $sp, $sp, 0x18
/* AE3A2C 8006C88C 03E00008 */  jr    $ra
/* AE3A30 8006C890 00000000 */   nop   

