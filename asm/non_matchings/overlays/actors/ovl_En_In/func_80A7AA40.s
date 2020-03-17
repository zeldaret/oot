glabel func_80A7AA40
/* 01A90 80A7AA40 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 01A94 80A7AA44 3C0F80A8 */  lui     $t7, %hi(D_80A7B99C)       ## $t7 = 80A80000
/* 01A98 80A7AA48 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01A9C 80A7AA4C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 01AA0 80A7AA50 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 01AA4 80A7AA54 25EFB99C */  addiu   $t7, $t7, %lo(D_80A7B99C)  ## $t7 = 80A7B99C
/* 01AA8 80A7AA58 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A7B99C
/* 01AAC 80A7AA5C 27AE003C */  addiu   $t6, $sp, 0x003C           ## $t6 = FFFFFFF4
/* 01AB0 80A7AA60 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A7B9A0
/* 01AB4 80A7AA64 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 01AB8 80A7AA68 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80A7B9A4
/* 01ABC 80A7AA6C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01AC0 80A7AA70 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01AC4 80A7AA74 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01AC8 80A7AA78 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 01ACC 80A7AA7C 0C03008C */  jal     func_800C0230              
/* 01AD0 80A7AA80 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 01AD4 80A7AA84 A60201F0 */  sh      $v0, 0x01F0($s0)           ## 000001F0
/* 01AD8 80A7AA88 862807A0 */  lh      $t0, 0x07A0($s1)           ## 000007A0
/* 01ADC 80A7AA8C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01AE0 80A7AA90 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01AE4 80A7AA94 A60801F2 */  sh      $t0, 0x01F2($s0)           ## 000001F2
/* 01AE8 80A7AA98 0C0300C5 */  jal     func_800C0314              
/* 01AEC 80A7AA9C 860501F2 */  lh      $a1, 0x01F2($s0)           ## 000001F2
/* 01AF0 80A7AAA0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01AF4 80A7AAA4 860501F0 */  lh      $a1, 0x01F0($s0)           ## 000001F0
/* 01AF8 80A7AAA8 0C0300C5 */  jal     func_800C0314              
/* 01AFC 80A7AAAC 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 01B00 80A7AAB0 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 01B04 80A7AAB4 44811000 */  mtc1    $at, $f2                   ## $f2 = 50.00
/* 01B08 80A7AAB8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01B0C 80A7AABC 26030024 */  addiu   $v1, $s0, 0x0024           ## $v1 = 00000024
/* 01B10 80A7AAC0 E60202F4 */  swc1    $f2, 0x02F4($s0)           ## 000002F4
/* 01B14 80A7AAC4 E6020300 */  swc1    $f2, 0x0300($s0)           ## 00000300
/* 01B18 80A7AAC8 E6020304 */  swc1    $f2, 0x0304($s0)           ## 00000304
/* 01B1C 80A7AACC E60002F0 */  swc1    $f0, 0x02F0($s0)           ## 000002F0
/* 01B20 80A7AAD0 E60002F8 */  swc1    $f0, 0x02F8($s0)           ## 000002F8
/* 01B24 80A7AAD4 E60002FC */  swc1    $f0, 0x02FC($s0)           ## 000002FC
/* 01B28 80A7AAD8 8C6A0000 */  lw      $t2, 0x0000($v1)           ## 00000024
/* 01B2C 80A7AADC 27A60030 */  addiu   $a2, $sp, 0x0030           ## $a2 = FFFFFFE8
/* 01B30 80A7AAE0 27A70024 */  addiu   $a3, $sp, 0x0024           ## $a3 = FFFFFFDC
/* 01B34 80A7AAE4 ACCA0000 */  sw      $t2, 0x0000($a2)           ## FFFFFFE8
/* 01B38 80A7AAE8 8C690004 */  lw      $t1, 0x0004($v1)           ## 00000028
/* 01B3C 80A7AAEC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01B40 80A7AAF0 ACC90004 */  sw      $t1, 0x0004($a2)           ## FFFFFFEC
/* 01B44 80A7AAF4 8C6A0008 */  lw      $t2, 0x0008($v1)           ## 0000002C
/* 01B48 80A7AAF8 ACCA0008 */  sw      $t2, 0x0008($a2)           ## FFFFFFF0
/* 01B4C 80A7AAFC 8C6C0000 */  lw      $t4, 0x0000($v1)           ## 00000024
/* 01B50 80A7AB00 ACEC0000 */  sw      $t4, 0x0000($a3)           ## FFFFFFDC
/* 01B54 80A7AB04 8C6B0004 */  lw      $t3, 0x0004($v1)           ## 00000028
/* 01B58 80A7AB08 ACEB0004 */  sw      $t3, 0x0004($a3)           ## FFFFFFE0
/* 01B5C 80A7AB0C 8C6C0008 */  lw      $t4, 0x0008($v1)           ## 0000002C
/* 01B60 80A7AB10 ACEC0008 */  sw      $t4, 0x0008($a3)           ## FFFFFFE4
/* 01B64 80A7AB14 C7A40030 */  lwc1    $f4, 0x0030($sp)           
/* 01B68 80A7AB18 C60602F0 */  lwc1    $f6, 0x02F0($s0)           ## 000002F0
/* 01B6C 80A7AB1C C7AA0034 */  lwc1    $f10, 0x0034($sp)          
/* 01B70 80A7AB20 46062200 */  add.s   $f8, $f4, $f6              
/* 01B74 80A7AB24 C7A40038 */  lwc1    $f4, 0x0038($sp)           
/* 01B78 80A7AB28 E7A80030 */  swc1    $f8, 0x0030($sp)           
/* 01B7C 80A7AB2C C61002F4 */  lwc1    $f16, 0x02F4($s0)          ## 000002F4
/* 01B80 80A7AB30 46105480 */  add.s   $f18, $f10, $f16           
/* 01B84 80A7AB34 C7AA0024 */  lwc1    $f10, 0x0024($sp)          
/* 01B88 80A7AB38 E7B20034 */  swc1    $f18, 0x0034($sp)          
/* 01B8C 80A7AB3C C60602F8 */  lwc1    $f6, 0x02F8($s0)           ## 000002F8
/* 01B90 80A7AB40 46062200 */  add.s   $f8, $f4, $f6              
/* 01B94 80A7AB44 C7A40028 */  lwc1    $f4, 0x0028($sp)           
/* 01B98 80A7AB48 E7A80038 */  swc1    $f8, 0x0038($sp)           
/* 01B9C 80A7AB4C C61002FC */  lwc1    $f16, 0x02FC($s0)          ## 000002FC
/* 01BA0 80A7AB50 46105480 */  add.s   $f18, $f10, $f16           
/* 01BA4 80A7AB54 C7AA002C */  lwc1    $f10, 0x002C($sp)          
/* 01BA8 80A7AB58 E7B20024 */  swc1    $f18, 0x0024($sp)          
/* 01BAC 80A7AB5C C6060300 */  lwc1    $f6, 0x0300($s0)           ## 00000300
/* 01BB0 80A7AB60 46062200 */  add.s   $f8, $f4, $f6              
/* 01BB4 80A7AB64 E7A80028 */  swc1    $f8, 0x0028($sp)           
/* 01BB8 80A7AB68 C6100304 */  lwc1    $f16, 0x0304($s0)          ## 00000304
/* 01BBC 80A7AB6C 46105480 */  add.s   $f18, $f10, $f16           
/* 01BC0 80A7AB70 E7B2002C */  swc1    $f18, 0x002C($sp)          
/* 01BC4 80A7AB74 0C030136 */  jal     func_800C04D8              
/* 01BC8 80A7AB78 860501F0 */  lh      $a1, 0x01F0($s0)           ## 000001F0
/* 01BCC 80A7AB7C 240D203B */  addiu   $t5, $zero, 0x203B         ## $t5 = 0000203B
/* 01BD0 80A7AB80 A60D010E */  sh      $t5, 0x010E($s0)           ## 0000010E
/* 01BD4 80A7AB84 31A5FFFF */  andi    $a1, $t5, 0xFFFF           ## $a1 = 0000203B
/* 01BD8 80A7AB88 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01BDC 80A7AB8C 0C042DA0 */  jal     func_8010B680              
/* 01BE0 80A7AB90 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01BE4 80A7AB94 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01BE8 80A7AB98 A60E0308 */  sh      $t6, 0x0308($s0)           ## 00000308
/* 01BEC 80A7AB9C A60001FC */  sh      $zero, 0x01FC($s0)         ## 000001FC
/* 01BF0 80A7ABA0 A6201D74 */  sh      $zero, 0x1D74($s1)         ## 00001D74
/* 01BF4 80A7ABA4 0C02CE10 */  jal     func_800B3840              ## letterbox_target_addr
/* 01BF8 80A7ABA8 24040020 */  addiu   $a0, $zero, 0x0020         ## $a0 = 00000020
/* 01BFC 80A7ABAC 0C020978 */  jal     Interface_ChangeAlpha              
/* 01C00 80A7ABB0 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
/* 01C04 80A7ABB4 3C0F80A8 */  lui     $t7, %hi(func_80A7ABD4)    ## $t7 = 80A80000
/* 01C08 80A7ABB8 25EFABD4 */  addiu   $t7, $t7, %lo(func_80A7ABD4) ## $t7 = 80A7ABD4
/* 01C0C 80A7ABBC AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
/* 01C10 80A7ABC0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01C14 80A7ABC4 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 01C18 80A7ABC8 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 01C1C 80A7ABCC 03E00008 */  jr      $ra                        
/* 01C20 80A7ABD0 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000


