glabel func_809B2B48
/* 005A8 809B2B48 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 005AC 809B2B4C 3C0E809B */  lui     $t6, %hi(D_809B3250)       ## $t6 = 809B0000
/* 005B0 809B2B50 AFBF005C */  sw      $ra, 0x005C($sp)           
/* 005B4 809B2B54 AFBE0058 */  sw      $s8, 0x0058($sp)           
/* 005B8 809B2B58 AFB70054 */  sw      $s7, 0x0054($sp)           
/* 005BC 809B2B5C AFB60050 */  sw      $s6, 0x0050($sp)           
/* 005C0 809B2B60 AFB5004C */  sw      $s5, 0x004C($sp)           
/* 005C4 809B2B64 AFB40048 */  sw      $s4, 0x0048($sp)           
/* 005C8 809B2B68 AFB30044 */  sw      $s3, 0x0044($sp)           
/* 005CC 809B2B6C AFB20040 */  sw      $s2, 0x0040($sp)           
/* 005D0 809B2B70 AFB1003C */  sw      $s1, 0x003C($sp)           
/* 005D4 809B2B74 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 005D8 809B2B78 F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 005DC 809B2B7C F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 005E0 809B2B80 25CE3250 */  addiu   $t6, $t6, %lo(D_809B3250)  ## $t6 = 809B3250
/* 005E4 809B2B84 8DD80000 */  lw      $t8, 0x0000($t6)           ## 809B3250
/* 005E8 809B2B88 27B5008C */  addiu   $s5, $sp, 0x008C           ## $s5 = FFFFFFF4
/* 005EC 809B2B8C 3C19809B */  lui     $t9, %hi(D_809B325C)       ## $t9 = 809B0000
/* 005F0 809B2B90 AEB80000 */  sw      $t8, 0x0000($s5)           ## FFFFFFF4
/* 005F4 809B2B94 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 809B3254
/* 005F8 809B2B98 2739325C */  addiu   $t9, $t9, %lo(D_809B325C)  ## $t9 = 809B325C
/* 005FC 809B2B9C 27B60080 */  addiu   $s6, $sp, 0x0080           ## $s6 = FFFFFFE8
/* 00600 809B2BA0 AEAF0004 */  sw      $t7, 0x0004($s5)           ## FFFFFFF8
/* 00604 809B2BA4 8DD80008 */  lw      $t8, 0x0008($t6)           ## 809B3258
/* 00608 809B2BA8 3C0A809B */  lui     $t2, %hi(D_809B3268)       ## $t2 = 809B0000
/* 0060C 809B2BAC 254A3268 */  addiu   $t2, $t2, %lo(D_809B3268)  ## $t2 = 809B3268
/* 00610 809B2BB0 AEB80008 */  sw      $t8, 0x0008($s5)           ## FFFFFFFC
/* 00614 809B2BB4 8F290000 */  lw      $t1, 0x0000($t9)           ## 809B325C
/* 00618 809B2BB8 27B70070 */  addiu   $s7, $sp, 0x0070           ## $s7 = FFFFFFD8
/* 0061C 809B2BBC 3C0D809B */  lui     $t5, %hi(D_809B326C)       ## $t5 = 809B0000
/* 00620 809B2BC0 AEC90000 */  sw      $t1, 0x0000($s6)           ## FFFFFFE8
/* 00624 809B2BC4 8F280004 */  lw      $t0, 0x0004($t9)           ## 809B3260
/* 00628 809B2BC8 25AD326C */  addiu   $t5, $t5, %lo(D_809B326C)  ## $t5 = 809B326C
/* 0062C 809B2BCC 27BE006C */  addiu   $s8, $sp, 0x006C           ## $s8 = FFFFFFD4
/* 00630 809B2BD0 AEC80004 */  sw      $t0, 0x0004($s6)           ## FFFFFFEC
/* 00634 809B2BD4 8F290008 */  lw      $t1, 0x0008($t9)           ## 809B3264
/* 00638 809B2BD8 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 0063C 809B2BDC 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 00640 809B2BE0 AEC90008 */  sw      $t1, 0x0008($s6)           ## FFFFFFF0
/* 00644 809B2BE4 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 809B3268
/* 00648 809B2BE8 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 0064C 809B2BEC 24130014 */  addiu   $s3, $zero, 0x0014         ## $s3 = 00000014
/* 00650 809B2BF0 AEEC0000 */  sw      $t4, 0x0000($s7)           ## FFFFFFD8
/* 00654 809B2BF4 8DAF0000 */  lw      $t7, 0x0000($t5)           ## 809B326C
/* 00658 809B2BF8 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 0065C 809B2BFC AFCF0000 */  sw      $t7, 0x0000($s8)           ## FFFFFFD4
/* 00660 809B2C00 8498015C */  lh      $t8, 0x015C($a0)           ## 0000015C
/* 00664 809B2C04 5700002E */  bnel    $t8, $zero, .L809B2CC0     
/* 00668 809B2C08 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 0066C 809B2C0C 4481B000 */  mtc1    $at, $f22                  ## $f22 = 2.00
/* 00670 809B2C10 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00674 809B2C14 4481A000 */  mtc1    $at, $f20                  ## $f20 = 8.00
/* 00678 809B2C18 27B20074 */  addiu   $s2, $sp, 0x0074           ## $s2 = FFFFFFDC
/* 0067C 809B2C1C C6240024 */  lwc1    $f4, 0x0024($s1)           ## 00000024
.L809B2C20:
/* 00680 809B2C20 4600A306 */  mov.s   $f12, $f20                 
/* 00684 809B2C24 E7A40074 */  swc1    $f4, 0x0074($sp)           
/* 00688 809B2C28 C6260028 */  lwc1    $f6, 0x0028($s1)           ## 00000028
/* 0068C 809B2C2C E7A60078 */  swc1    $f6, 0x0078($sp)           
/* 00690 809B2C30 C628002C */  lwc1    $f8, 0x002C($s1)           ## 0000002C
/* 00694 809B2C34 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00698 809B2C38 E7A8007C */  swc1    $f8, 0x007C($sp)           
/* 0069C 809B2C3C E7A00080 */  swc1    $f0, 0x0080($sp)           
/* 006A0 809B2C40 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 006A4 809B2C44 4600B306 */  mov.s   $f12, $f22                 
/* 006A8 809B2C48 E7A00084 */  swc1    $f0, 0x0084($sp)           
/* 006AC 809B2C4C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 006B0 809B2C50 4600A306 */  mov.s   $f12, $f20                 
/* 006B4 809B2C54 241907D0 */  addiu   $t9, $zero, 0x07D0         ## $t9 = 000007D0
/* 006B8 809B2C58 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 006BC 809B2C5C E7A00088 */  swc1    $f0, 0x0088($sp)           
/* 006C0 809B2C60 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 006C4 809B2C64 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 006C8 809B2C68 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 006CC 809B2C6C 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFFDC
/* 006D0 809B2C70 02A03025 */  or      $a2, $s5, $zero            ## $a2 = FFFFFFF4
/* 006D4 809B2C74 02C03825 */  or      $a3, $s6, $zero            ## $a3 = FFFFFFE8
/* 006D8 809B2C78 AFB70010 */  sw      $s7, 0x0010($sp)           
/* 006DC 809B2C7C 0C00A2EC */  jal     func_80028BB0              
/* 006E0 809B2C80 AFBE0014 */  sw      $s8, 0x0014($sp)           
/* 006E4 809B2C84 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 006E8 809B2C88 5613FFE5 */  bnel    $s0, $s3, .L809B2C20       
/* 006EC 809B2C8C C6240024 */  lwc1    $f4, 0x0024($s1)           ## 00000024
/* 006F0 809B2C90 862A015E */  lh      $t2, 0x015E($s1)           ## 0000015E
/* 006F4 809B2C94 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 006F8 809B2C98 A629015C */  sh      $t1, 0x015C($s1)           ## 0000015C
/* 006FC 809B2C9C 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 00700 809B2CA0 A62B015E */  sh      $t3, 0x015E($s1)           ## 0000015E
/* 00704 809B2CA4 862C015E */  lh      $t4, 0x015E($s1)           ## 0000015E
/* 00708 809B2CA8 29810006 */  slti    $at, $t4, 0x0006           
/* 0070C 809B2CAC 54200004 */  bnel    $at, $zero, .L809B2CC0     
/* 00710 809B2CB0 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 00714 809B2CB4 0C00B55C */  jal     Actor_Kill
              
/* 00718 809B2CB8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0071C 809B2CBC 8FBF005C */  lw      $ra, 0x005C($sp)           
.L809B2CC0:
/* 00720 809B2CC0 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 00724 809B2CC4 D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 00728 809B2CC8 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 0072C 809B2CCC 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 00730 809B2CD0 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 00734 809B2CD4 8FB30044 */  lw      $s3, 0x0044($sp)           
/* 00738 809B2CD8 8FB40048 */  lw      $s4, 0x0048($sp)           
/* 0073C 809B2CDC 8FB5004C */  lw      $s5, 0x004C($sp)           
/* 00740 809B2CE0 8FB60050 */  lw      $s6, 0x0050($sp)           
/* 00744 809B2CE4 8FB70054 */  lw      $s7, 0x0054($sp)           
/* 00748 809B2CE8 8FBE0058 */  lw      $s8, 0x0058($sp)           
/* 0074C 809B2CEC 03E00008 */  jr      $ra                        
/* 00750 809B2CF0 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000


