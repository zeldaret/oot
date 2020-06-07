.rdata
glabel D_80B2F370
    .asciz "\n\n"
    .balign 4

glabel D_80B2F374
    .asciz "[33m☆☆☆☆☆ 壁のツボ ☆☆☆☆☆ \n[m"
    .balign 4

.text
glabel EnWallTubo_Init
/* 00000 80B2EDF0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 80B2EDF4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00008 80B2EDF8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0000C 80B2EDFC 3C0480B3 */  lui     $a0, %hi(D_80B2F370)       ## $a0 = 80B30000
/* 00010 80B2EE00 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00014 80B2EE04 0C00084C */  jal     osSyncPrintf
              
/* 00018 80B2EE08 2484F370 */  addiu   $a0, $a0, %lo(D_80B2F370)  ## $a0 = 80B2F370
/* 0001C 80B2EE0C 3C0480B3 */  lui     $a0, %hi(D_80B2F374)       ## $a0 = 80B30000
/* 00020 80B2EE10 0C00084C */  jal     osSyncPrintf
              
/* 00024 80B2EE14 2484F374 */  addiu   $a0, $a0, %lo(D_80B2F374)  ## $a0 = 80B2F374
/* 00028 80B2EE18 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 0002C 80B2EE1C 3C1880B3 */  lui     $t8, %hi(func_80B2EE5C)    ## $t8 = 80B30000
/* 00030 80B2EE20 2718EE5C */  addiu   $t8, $t8, %lo(func_80B2EE5C) ## $t8 = 80B2EE5C
/* 00034 80B2EE24 8C4F0024 */  lw      $t7, 0x0024($v0)           ## 00000024
/* 00038 80B2EE28 8C4E0028 */  lw      $t6, 0x0028($v0)           ## 00000028
/* 0003C 80B2EE2C AC58014C */  sw      $t8, 0x014C($v0)           ## 0000014C
/* 00040 80B2EE30 AC4F0164 */  sw      $t7, 0x0164($v0)           ## 00000164
/* 00044 80B2EE34 8C4F002C */  lw      $t7, 0x002C($v0)           ## 0000002C
/* 00048 80B2EE38 AC4E0168 */  sw      $t6, 0x0168($v0)           ## 00000168
/* 0004C 80B2EE3C AC4F016C */  sw      $t7, 0x016C($v0)           ## 0000016C
/* 00050 80B2EE40 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00054 80B2EE44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00058 80B2EE48 03E00008 */  jr      $ra                        
/* 0005C 80B2EE4C 00000000 */  nop
