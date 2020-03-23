.rdata
glabel D_80867B30
    .asciz "../z_arrow_fire.c"
    .balign 4

glabel D_80867B44
    .asciz "\"消滅\" = %s\n"
    .balign 4

glabel D_80867B54
    .asciz "消滅"
    .balign 4

.text
glabel ArrowFire_Destroy
/* 00080 80865D90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00084 80865D94 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00088 80865D98 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0008C 80865D9C 0C021DB2 */  jal     func_800876C8              
/* 00090 80865DA0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00094 80865DA4 3C048086 */  lui     $a0, %hi(D_80867B30)       ## $a0 = 80860000
/* 00098 80865DA8 24847B30 */  addiu   $a0, $a0, %lo(D_80867B30)  ## $a0 = 80867B30
/* 0009C 80865DAC 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 000A0 80865DB0 240501A5 */  addiu   $a1, $zero, 0x01A5         ## $a1 = 000001A5
/* 000A4 80865DB4 3C048086 */  lui     $a0, %hi(D_80867B44)       ## $a0 = 80860000
/* 000A8 80865DB8 3C058086 */  lui     $a1, %hi(D_80867B54)       ## $a1 = 80860000
/* 000AC 80865DBC 24A57B54 */  addiu   $a1, $a1, %lo(D_80867B54)  ## $a1 = 80867B54
/* 000B0 80865DC0 0C00084C */  jal     osSyncPrintf
              
/* 000B4 80865DC4 24847B44 */  addiu   $a0, $a0, %lo(D_80867B44)  ## $a0 = 80867B44
/* 000B8 80865DC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000BC 80865DCC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000C0 80865DD0 03E00008 */  jr      $ra                        
/* 000C4 80865DD4 00000000 */  nop


