glabel func_80B85B6C
/* 0057C 80B85B6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00580 80B85B70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00584 80B85B74 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00588 80B85B78 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0058C 80B85B7C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00590 80B85B80 11C00023 */  beq     $t6, $zero, .L80B85C10     
/* 00594 80B85B84 3C0180B8 */  lui     $at, %hi(D_80B85E68)       ## $at = 80B80000
/* 00598 80B85B88 8CAF1D8C */  lw      $t7, 0x1D8C($a1)           ## 00001D8C
/* 0059C 80B85B8C 3C0480B8 */  lui     $a0, %hi(D_80B85DD8)       ## $a0 = 80B80000
/* 005A0 80B85B90 24845DD8 */  addiu   $a0, $a0, %lo(D_80B85DD8)  ## $a0 = 80B85DD8
/* 005A4 80B85B94 11E0001E */  beq     $t7, $zero, .L80B85C10     
/* 005A8 80B85B98 240501B9 */  addiu   $a1, $zero, 0x01B9         ## $a1 = 000001B9
/* 005AC 80B85B9C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 005B0 80B85BA0 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 005B4 80B85BA4 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 005B8 80B85BA8 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 005BC 80B85BAC 3C0480B8 */  lui     $a0, %hi(D_80B85DF0)       ## $a0 = 80B80000
/* 005C0 80B85BB0 24845DF0 */  addiu   $a0, $a0, %lo(D_80B85DF0)  ## $a0 = 80B85DF0
/* 005C4 80B85BB4 8CF81D8C */  lw      $t8, 0x1D8C($a3)           ## 00001D8C
/* 005C8 80B85BB8 0C00084C */  jal     osSyncPrintf
              
/* 005CC 80B85BBC 97050000 */  lhu     $a1, 0x0000($t8)           ## 00000000
/* 005D0 80B85BC0 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 005D4 80B85BC4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 005D8 80B85BC8 3C0980B8 */  lui     $t1, %hi(func_80B85CB8)    ## $t1 = 80B80000
/* 005DC 80B85BCC 8CF91D8C */  lw      $t9, 0x1D8C($a3)           ## 00001D8C
/* 005E0 80B85BD0 3C0A80B8 */  lui     $t2, %hi(func_80B85A98)    ## $t2 = 80B80000
/* 005E4 80B85BD4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 005E8 80B85BD8 97280000 */  lhu     $t0, 0x0000($t9)           ## 00000000
/* 005EC 80B85BDC 25295CB8 */  addiu   $t1, $t1, %lo(func_80B85CB8) ## $t1 = 80B85CB8
/* 005F0 80B85BE0 254A5A98 */  addiu   $t2, $t2, %lo(func_80B85A98) ## $t2 = 80B85A98
/* 005F4 80B85BE4 55010013 */  bnel    $t0, $at, .L80B85C34       
/* 005F8 80B85BE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005FC 80B85BEC ACC90134 */  sw      $t1, 0x0134($a2)           ## 00000134
/* 00600 80B85BF0 3C0180B8 */  lui     $at, %hi(D_80B85E64)       ## $at = 80B80000
/* 00604 80B85BF4 C4245E64 */  lwc1    $f4, %lo(D_80B85E64)($at)  
/* 00608 80B85BF8 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 0060C 80B85BFC 44813000 */  mtc1    $at, $f6                   ## $f6 = -4.00
/* 00610 80B85C00 ACCA015C */  sw      $t2, 0x015C($a2)           ## 0000015C
/* 00614 80B85C04 E4C4006C */  swc1    $f4, 0x006C($a2)           ## 0000006C
/* 00618 80B85C08 10000009 */  beq     $zero, $zero, .L80B85C30   
/* 0061C 80B85C0C E4C60070 */  swc1    $f6, 0x0070($a2)           ## 00000070
.L80B85C10:
/* 00620 80B85C10 C4285E68 */  lwc1    $f8, %lo(D_80B85E68)($at)  
/* 00624 80B85C14 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00628 80B85C18 44815000 */  mtc1    $at, $f10                  ## $f10 = -4.00
/* 0062C 80B85C1C 3C0B80B8 */  lui     $t3, %hi(func_80B85A98)    ## $t3 = 80B80000
/* 00630 80B85C20 256B5A98 */  addiu   $t3, $t3, %lo(func_80B85A98) ## $t3 = 80B85A98
/* 00634 80B85C24 ACCB015C */  sw      $t3, 0x015C($a2)           ## 0000015C
/* 00638 80B85C28 E4C8006C */  swc1    $f8, 0x006C($a2)           ## 0000006C
/* 0063C 80B85C2C E4CA0070 */  swc1    $f10, 0x0070($a2)          ## 00000070
.L80B85C30:
/* 00640 80B85C30 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B85C34:
/* 00644 80B85C34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00648 80B85C38 03E00008 */  jr      $ra                        
/* 0064C 80B85C3C 00000000 */  nop


