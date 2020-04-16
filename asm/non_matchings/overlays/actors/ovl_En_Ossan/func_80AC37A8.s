.rdata
glabel D_80AC9064
    .asciz "\x1b[33m%s[%d]:★★★ 会話終了！！ ★★★\x1b[m\n"
    .balign 4

glabel D_80AC9090
    .asciz "../z_en_oB1.c"
    .balign 4

.text
glabel func_80AC37A8
/* 00B08 80AC37A8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00B0C 80AC37AC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00B10 80AC37B0 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00B14 80AC37B4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00B18 80AC37B8 8C8E1C44 */  lw      $t6, 0x1C44($a0)           ## 00001C44
/* 00B1C 80AC37BC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B20 80AC37C0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00B24 80AC37C4 3C0580AD */  lui     $a1, %hi(D_80AC9090)       ## $a1 = 80AD0000
/* 00B28 80AC37C8 3C0480AD */  lui     $a0, %hi(D_80AC9064)       ## $a0 = 80AD0000
/* 00B2C 80AC37CC 24849064 */  addiu   $a0, $a0, %lo(D_80AC9064)  ## $a0 = 80AC9064
/* 00B30 80AC37D0 24A59090 */  addiu   $a1, $a1, %lo(D_80AC9090)  ## $a1 = 80AC9090
/* 00B34 80AC37D4 24060539 */  addiu   $a2, $zero, 0x0539         ## $a2 = 00000539
/* 00B38 80AC37D8 0C00084C */  jal     osSyncPrintf
              
/* 00B3C 80AC37DC AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 00B40 80AC37E0 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 00B44 80AC37E4 8DEFFA90 */  lw      $t7, -0x0570($t7)          ## 8015FA90
/* 00B48 80AC37E8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B4C 80AC37EC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00B50 80AC37F0 0C00BC65 */  jal     func_8002F194              
/* 00B54 80AC37F4 A5E004D2 */  sh      $zero, 0x04D2($t7)         ## 801604D2
/* 00B58 80AC37F8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B5C 80AC37FC 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 00B60 80AC3800 00300821 */  addu    $at, $at, $s0              
/* 00B64 80AC3804 24180036 */  addiu   $t8, $zero, 0x0036         ## $t8 = 00000036
/* 00B68 80AC3808 A03803DC */  sb      $t8, 0x03DC($at)           ## 000103DC
/* 00B6C 80AC380C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B70 80AC3810 00300821 */  addu    $at, $at, $s0              
/* 00B74 80AC3814 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 00B78 80AC3818 A03904BF */  sb      $t9, 0x04BF($at)           ## 000104BF
/* 00B7C 80AC381C 8C680680 */  lw      $t0, 0x0680($v1)           ## 00000680
/* 00B80 80AC3820 3C01DFFF */  lui     $at, 0xDFFF                ## $at = DFFF0000
/* 00B84 80AC3824 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = DFFFFFFF
/* 00B88 80AC3828 01014824 */  and     $t1, $t0, $at              
/* 00B8C 80AC382C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B90 80AC3830 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00B94 80AC3834 0C02F124 */  jal     func_800BC490              
/* 00B98 80AC3838 AC690680 */  sw      $t1, 0x0680($v1)           ## 00000680
/* 00B9C 80AC383C 0C020978 */  jal     Interface_ChangeAlpha              
/* 00BA0 80AC3840 24040032 */  addiu   $a0, $zero, 0x0032         ## $a0 = 00000032
/* 00BA4 80AC3844 A2200251 */  sb      $zero, 0x0251($s1)         ## 00000251
/* 00BA8 80AC3848 AE200288 */  sw      $zero, 0x0288($s1)         ## 00000288
/* 00BAC 80AC384C AE2002C0 */  sw      $zero, 0x02C0($s1)         ## 000002C0
/* 00BB0 80AC3850 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00BB4 80AC3854 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00BB8 80AC3858 0C2B0CD4 */  jal     func_80AC3350              
/* 00BBC 80AC385C 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 00BC0 80AC3860 0C2B1BCB */  jal     func_80AC6F2C              
/* 00BC4 80AC3864 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00BC8 80AC3868 A622010E */  sh      $v0, 0x010E($s1)           ## 0000010E
/* 00BCC 80AC386C A62001FC */  sh      $zero, 0x01FC($s1)         ## 000001FC
/* 00BD0 80AC3870 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00BD4 80AC3874 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00BD8 80AC3878 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00BDC 80AC387C 03E00008 */  jr      $ra                        
/* 00BE0 80AC3880 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
