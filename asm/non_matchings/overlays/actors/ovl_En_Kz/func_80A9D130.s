.late_rodata
glabel D_80A9D9C4
    .float 0.1

.text
glabel func_80A9D130
/* 00BE0 80A9D130 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00BE4 80A9D134 3C0F80AA */  lui     $t7, %hi(D_80A9D940)       ## $t7 = 80AA0000
/* 00BE8 80A9D138 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00BEC 80A9D13C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00BF0 80A9D140 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00BF4 80A9D144 25EFD940 */  addiu   $t7, $t7, %lo(D_80A9D940)  ## $t7 = 80A9D940
/* 00BF8 80A9D148 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A9D940
/* 00BFC 80A9D14C 27AE003C */  addiu   $t6, $sp, 0x003C           ## $t6 = FFFFFFF4
/* 00C00 80A9D150 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A9D944
/* 00C04 80A9D154 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 00C08 80A9D158 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80A9D948
/* 00C0C 80A9D15C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C10 80A9D160 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00C14 80A9D164 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00C18 80A9D168 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 00C1C 80A9D16C 0C03008C */  jal     Gameplay_CreateSubCamera              
/* 00C20 80A9D170 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 00C24 80A9D174 A6020212 */  sh      $v0, 0x0212($s0)           ## 00000212
/* 00C28 80A9D178 862807A0 */  lh      $t0, 0x07A0($s1)           ## 000007A0
/* 00C2C 80A9D17C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00C30 80A9D180 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00C34 80A9D184 A6080214 */  sh      $t0, 0x0214($s0)           ## 00000214
/* 00C38 80A9D188 0C0300C5 */  jal     Gameplay_ChangeCameraStatus              
/* 00C3C 80A9D18C 86050214 */  lh      $a1, 0x0214($s0)           ## 00000214
/* 00C40 80A9D190 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00C44 80A9D194 86050212 */  lh      $a1, 0x0212($s0)           ## 00000212
/* 00C48 80A9D198 0C0300C5 */  jal     Gameplay_ChangeCameraStatus              
/* 00C4C 80A9D19C 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00C50 80A9D1A0 8E0A0024 */  lw      $t2, 0x0024($s0)           ## 00000024
/* 00C54 80A9D1A4 27A60030 */  addiu   $a2, $sp, 0x0030           ## $a2 = FFFFFFE8
/* 00C58 80A9D1A8 27A70024 */  addiu   $a3, $sp, 0x0024           ## $a3 = FFFFFFDC
/* 00C5C 80A9D1AC ACCA0000 */  sw      $t2, 0x0000($a2)           ## FFFFFFE8
/* 00C60 80A9D1B0 8E090028 */  lw      $t1, 0x0028($s0)           ## 00000028
/* 00C64 80A9D1B4 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00C68 80A9D1B8 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 00C6C 80A9D1BC ACC90004 */  sw      $t1, 0x0004($a2)           ## FFFFFFEC
/* 00C70 80A9D1C0 8E0A002C */  lw      $t2, 0x002C($s0)           ## 0000002C
/* 00C74 80A9D1C4 3C01C2C8 */  lui     $at, 0xC2C8                ## $at = C2C80000
/* 00C78 80A9D1C8 44818000 */  mtc1    $at, $f16                  ## $f16 = -100.00
/* 00C7C 80A9D1CC ACCA0008 */  sw      $t2, 0x0008($a2)           ## FFFFFFF0
/* 00C80 80A9D1D0 8E0C0008 */  lw      $t4, 0x0008($s0)           ## 00000008
/* 00C84 80A9D1D4 3C014382 */  lui     $at, 0x4382                ## $at = 43820000
/* 00C88 80A9D1D8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00C8C 80A9D1DC ACEC0000 */  sw      $t4, 0x0000($a3)           ## FFFFFFDC
/* 00C90 80A9D1E0 8E0B000C */  lw      $t3, 0x000C($s0)           ## 0000000C
/* 00C94 80A9D1E4 ACEB0004 */  sw      $t3, 0x0004($a3)           ## FFFFFFE0
/* 00C98 80A9D1E8 8E0C0010 */  lw      $t4, 0x0010($s0)           ## 00000010
/* 00C9C 80A9D1EC ACEC0008 */  sw      $t4, 0x0008($a3)           ## FFFFFFE4
/* 00CA0 80A9D1F0 C7A40034 */  lwc1    $f4, 0x0034($sp)           
/* 00CA4 80A9D1F4 C7AA0028 */  lwc1    $f10, 0x0028($sp)          
/* 00CA8 80A9D1F8 46062200 */  add.s   $f8, $f4, $f6              
/* 00CAC 80A9D1FC 44813000 */  mtc1    $at, $f6                   ## $f6 = 260.00
/* 00CB0 80A9D200 C7A4002C */  lwc1    $f4, 0x002C($sp)           
/* 00CB4 80A9D204 46105480 */  add.s   $f18, $f10, $f16           
/* 00CB8 80A9D208 E7A80034 */  swc1    $f8, 0x0034($sp)           
/* 00CBC 80A9D20C 46062200 */  add.s   $f8, $f4, $f6              
/* 00CC0 80A9D210 E7B20028 */  swc1    $f18, 0x0028($sp)          
/* 00CC4 80A9D214 E7A8002C */  swc1    $f8, 0x002C($sp)           
/* 00CC8 80A9D218 0C030136 */  jal     func_800C04D8              
/* 00CCC 80A9D21C 86050212 */  lh      $a1, 0x0212($s0)           ## 00000212
/* 00CD0 80A9D220 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00CD4 80A9D224 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00CD8 80A9D228 0C00B7D5 */  jal     func_8002DF54              
/* 00CDC 80A9D22C 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00CE0 80A9D230 3C0180AA */  lui     $at, %hi(D_80A9D9C4)       ## $at = 80AA0000
/* 00CE4 80A9D234 C42AD9C4 */  lwc1    $f10, %lo(D_80A9D9C4)($at) 
/* 00CE8 80A9D238 3C0D80AA */  lui     $t5, %hi(func_80A9D25C)    ## $t5 = 80AA0000
/* 00CEC 80A9D23C 25ADD25C */  addiu   $t5, $t5, %lo(func_80A9D25C) ## $t5 = 80A9D25C
/* 00CF0 80A9D240 AE0D0190 */  sw      $t5, 0x0190($s0)           ## 00000190
/* 00CF4 80A9D244 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 00CF8 80A9D248 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00CFC 80A9D24C 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00D00 80A9D250 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00D04 80A9D254 03E00008 */  jr      $ra                        
/* 00D08 80A9D258 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
