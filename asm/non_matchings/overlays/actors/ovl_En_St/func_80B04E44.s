glabel func_80B04E44
/* 005B4 80B04E44 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 005B8 80B04E48 3C0F80B0 */  lui     $t7, %hi(D_80B07190)       ## $t7 = 80B00000
/* 005BC 80B04E4C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 005C0 80B04E50 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 005C4 80B04E54 25EF7190 */  addiu   $t7, $t7, %lo(D_80B07190)  ## $t7 = 80B07190
/* 005C8 80B04E58 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B07190
/* 005CC 80B04E5C 27AE004C */  addiu   $t6, $sp, 0x004C           ## $t6 = FFFFFFF4
/* 005D0 80B04E60 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B07194
/* 005D4 80B04E64 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 005D8 80B04E68 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B07198
/* 005DC 80B04E6C 3C0980B0 */  lui     $t1, %hi(D_80B0719C)       ## $t1 = 80B00000
/* 005E0 80B04E70 2529719C */  addiu   $t1, $t1, %lo(D_80B0719C)  ## $t1 = 80B0719C
/* 005E4 80B04E74 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 005E8 80B04E78 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 005EC 80B04E7C 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80B0719C
/* 005F0 80B04E80 27A80040 */  addiu   $t0, $sp, 0x0040           ## $t0 = FFFFFFE8
/* 005F4 80B04E84 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80B071A0
/* 005F8 80B04E88 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE8
/* 005FC 80B04E8C 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80B071A4
/* 00600 80B04E90 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFEC
/* 00604 80B04E94 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00608 80B04E98 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFF0
/* 0060C 80B04E9C C4860408 */  lwc1    $f6, 0x0408($a0)           ## 00000408
/* 00610 80B04EA0 C7A4004C */  lwc1    $f4, 0x004C($sp)           
/* 00614 80B04EA4 C7AA0050 */  lwc1    $f10, 0x0050($sp)          
/* 00618 80B04EA8 46062202 */  mul.s   $f8, $f4, $f6              
/* 0061C 80B04EAC C7A40054 */  lwc1    $f4, 0x0054($sp)           
/* 00620 80B04EB0 E7A8004C */  swc1    $f8, 0x004C($sp)           
/* 00624 80B04EB4 C4900408 */  lwc1    $f16, 0x0408($a0)          ## 00000408
/* 00628 80B04EB8 46105482 */  mul.s   $f18, $f10, $f16           
/* 0062C 80B04EBC C7AA0040 */  lwc1    $f10, 0x0040($sp)          
/* 00630 80B04EC0 E7B20050 */  swc1    $f18, 0x0050($sp)          
/* 00634 80B04EC4 C4860408 */  lwc1    $f6, 0x0408($a0)           ## 00000408
/* 00638 80B04EC8 46062202 */  mul.s   $f8, $f4, $f6              
/* 0063C 80B04ECC C7A40044 */  lwc1    $f4, 0x0044($sp)           
/* 00640 80B04ED0 E7A80054 */  swc1    $f8, 0x0054($sp)           
/* 00644 80B04ED4 C4900408 */  lwc1    $f16, 0x0408($a0)          ## 00000408
/* 00648 80B04ED8 46105482 */  mul.s   $f18, $f10, $f16           
/* 0064C 80B04EDC C7AA0048 */  lwc1    $f10, 0x0048($sp)          
/* 00650 80B04EE0 E7B20040 */  swc1    $f18, 0x0040($sp)          
/* 00654 80B04EE4 C4860408 */  lwc1    $f6, 0x0408($a0)           ## 00000408
/* 00658 80B04EE8 46062202 */  mul.s   $f8, $f4, $f6              
/* 0065C 80B04EEC E7A80044 */  swc1    $f8, 0x0044($sp)           
/* 00660 80B04EF0 C4900408 */  lwc1    $f16, 0x0408($a0)          ## 00000408
/* 00664 80B04EF4 46105482 */  mul.s   $f18, $f10, $f16           
/* 00668 80B04EF8 0C034213 */  jal     Matrix_Push              
/* 0066C 80B04EFC E7B20048 */  swc1    $f18, 0x0048($sp)          
/* 00670 80B04F00 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFF4
/* 00674 80B04F04 0C0346BD */  jal     Matrix_MultVec3f              
/* 00678 80B04F08 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFDC
/* 0067C 80B04F0C 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE8
/* 00680 80B04F10 0C0346BD */  jal     Matrix_MultVec3f              
/* 00684 80B04F14 27A50028 */  addiu   $a1, $sp, 0x0028           ## $a1 = FFFFFFD0
/* 00688 80B04F18 0C034221 */  jal     Matrix_Pull              
/* 0068C 80B04F1C 00000000 */  nop
/* 00690 80B04F20 0C009AC3 */  jal     func_80026B0C              
/* 00694 80B04F24 8E040404 */  lw      $a0, 0x0404($s0)           ## 00000404
/* 00698 80B04F28 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 0069C 80B04F2C 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFDC
/* 006A0 80B04F30 0C007F7C */  jal     func_8001FDF0              
/* 006A4 80B04F34 27A60028 */  addiu   $a2, $sp, 0x0028           ## $a2 = FFFFFFD0
/* 006A8 80B04F38 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 006AC 80B04F3C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 006B0 80B04F40 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 006B4 80B04F44 03E00008 */  jr      $ra                        
/* 006B8 80B04F48 00000000 */  nop
