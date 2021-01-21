.rdata
glabel D_809F2FE0
    .asciz "\n\n"
    .balign 4

glabel D_809F2FE4
    .asciz "\x1b[33m☆☆☆☆☆ デグナッツお面品評会長老 ☆☆☆☆☆ %x\n\x1b[m"
    .balign 4

.text
glabel EnDntJiji_Init
/* 00000 809F1AE0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00004 809F1AE4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00008 809F1AE8 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 0000C 809F1AEC AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00010 809F1AF0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00014 809F1AF4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00018 809F1AF8 3C068003 */  lui     $a2, %hi(ActorShadow_DrawCircle)
/* 0001C 809F1AFC 44050000 */  mfc1    $a1, $f0                   
/* 00020 809F1B00 44070000 */  mfc1    $a3, $f0                   
/* 00024 809F1B04 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawCircle)
/* 00028 809F1B08 0C00AC78 */  jal     ActorShape_Init
              
/* 0002C 809F1B0C 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00030 809F1B10 3C060600 */  lui     $a2, %hi(D_060033E0)                ## $a2 = 06000000
/* 00034 809F1B14 3C070600 */  lui     $a3, %hi(D_06000560)                ## $a3 = 06000000
/* 00038 809F1B18 260E0190 */  addiu   $t6, $s0, 0x0190           ## $t6 = 00000190
/* 0003C 809F1B1C 260F01DE */  addiu   $t7, $s0, 0x01DE           ## $t7 = 000001DE
/* 00040 809F1B20 2418000D */  addiu   $t8, $zero, 0x000D         ## $t8 = 0000000D
/* 00044 809F1B24 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00048 809F1B28 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 0004C 809F1B2C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00050 809F1B30 24E70560 */  addiu   $a3, $a3, %lo(D_06000560)           ## $a3 = 06000560
/* 00054 809F1B34 24C633E0 */  addiu   $a2, $a2, %lo(D_060033E0)           ## $a2 = 060033E0
/* 00058 809F1B38 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0005C 809F1B3C 0C02915F */  jal     SkelAnime_Init
              
/* 00060 809F1B40 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00064 809F1B44 2605025C */  addiu   $a1, $s0, 0x025C           ## $a1 = 0000025C
/* 00068 809F1B48 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 0006C 809F1B4C 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00070 809F1B50 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00074 809F1B54 3C07809F */  lui     $a3, %hi(D_809F2FA0)       ## $a3 = 809F0000
/* 00078 809F1B58 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 0007C 809F1B5C 24E72FA0 */  addiu   $a3, $a3, %lo(D_809F2FA0)  ## $a3 = 809F2FA0
/* 00080 809F1B60 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00084 809F1B64 0C01712B */  jal     Collider_SetCylinder
              
/* 00088 809F1B68 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0008C 809F1B6C 8E190118 */  lw      $t9, 0x0118($s0)           ## 00000118
/* 00090 809F1B70 3C04809F */  lui     $a0, %hi(D_809F2FE0)       ## $a0 = 809F0000
/* 00094 809F1B74 24842FE0 */  addiu   $a0, $a0, %lo(D_809F2FE0)  ## $a0 = 809F2FE0
/* 00098 809F1B78 0C00084C */  jal     osSyncPrintf
              
/* 0009C 809F1B7C AE190258 */  sw      $t9, 0x0258($s0)           ## 00000258
/* 000A0 809F1B80 3C04809F */  lui     $a0, %hi(D_809F2FE4)       ## $a0 = 809F0000
/* 000A4 809F1B84 24842FE4 */  addiu   $a0, $a0, %lo(D_809F2FE4)  ## $a0 = 809F2FE4
/* 000A8 809F1B88 0C00084C */  jal     osSyncPrintf
              
/* 000AC 809F1B8C 8E050258 */  lw      $a1, 0x0258($s0)           ## 00000258
/* 000B0 809F1B90 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 000B4 809F1B94 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 000B8 809F1B98 3C0C809F */  lui     $t4, %hi(func_809F1C04)    ## $t4 = 809F0000
/* 000BC 809F1B9C 01014824 */  and     $t1, $t0, $at              
/* 000C0 809F1BA0 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 000C4 809F1BA4 44812000 */  mtc1    $at, $f4                   ## $f4 = -2.00
/* 000C8 809F1BA8 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 000CC 809F1BAC 240B0006 */  addiu   $t3, $zero, 0x0006         ## $t3 = 00000006
/* 000D0 809F1BB0 258C1C04 */  addiu   $t4, $t4, %lo(func_809F1C04) ## $t4 = 809F1C04
/* 000D4 809F1BB4 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
/* 000D8 809F1BB8 A20A00AE */  sb      $t2, 0x00AE($s0)           ## 000000AE
/* 000DC 809F1BBC A20B001F */  sb      $t3, 0x001F($s0)           ## 0000001F
/* 000E0 809F1BC0 AE0C022C */  sw      $t4, 0x022C($s0)           ## 0000022C
/* 000E4 809F1BC4 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 000E8 809F1BC8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 000EC 809F1BCC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 000F0 809F1BD0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 000F4 809F1BD4 03E00008 */  jr      $ra                        
/* 000F8 809F1BD8 00000000 */  nop
