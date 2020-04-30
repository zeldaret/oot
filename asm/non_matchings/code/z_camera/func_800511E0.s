.rdata
glabel D_801393FC
    .asciz "chau!chau!\n"
    .balign 4

.text
glabel func_800511E0
/* AC8380 800511E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC8384 800511E4 AFA40018 */  sw    $a0, 0x18($sp)
/* AC8388 800511E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AC838C 800511EC 3C048014 */  lui   $a0, %hi(D_801393FC) # $a0, 0x8014
/* AC8390 800511F0 0C00084C */  jal   osSyncPrintf
/* AC8394 800511F4 248493FC */   addiu $a0, %lo(D_801393FC) # addiu $a0, $a0, -0x6c04
/* AC8398 800511F8 0C011CE8 */  jal   func_800473A0
/* AC839C 800511FC 8FA40018 */   lw    $a0, 0x18($sp)
/* AC83A0 80051200 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC83A4 80051204 27BD0018 */  addiu $sp, $sp, 0x18
/* AC83A8 80051208 03E00008 */  jr    $ra
/* AC83AC 8005120C 00000000 */   nop
