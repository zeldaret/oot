glabel func_8098AAE4
/* 01C64 8098AAE4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01C68 8098AAE8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01C6C 8098AAEC AFA40030 */  sw      $a0, 0x0030($sp)           
/* 01C70 8098AAF0 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 01C74 8098AAF4 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 01C78 8098AAF8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 01C7C 8098AAFC 0C01F097 */  jal     func_8007C25C              
/* 01C80 8098AB00 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFE8
/* 01C84 8098AB04 8FA70034 */  lw      $a3, 0x0034($sp)           
/* 01C88 8098AB08 C7A60018 */  lwc1    $f6, 0x0018($sp)           
/* 01C8C 8098AB0C C7B0001C */  lwc1    $f16, 0x001C($sp)          
/* 01C90 8098AB10 C4E40000 */  lwc1    $f4, 0x0000($a3)           ## 00000000
/* 01C94 8098AB14 27AE0024 */  addiu   $t6, $sp, 0x0024           ## $t6 = FFFFFFF4
/* 01C98 8098AB18 8FA20030 */  lw      $v0, 0x0030($sp)           
/* 01C9C 8098AB1C 46062200 */  add.s   $f8, $f4, $f6              
/* 01CA0 8098AB20 C7A60020 */  lwc1    $f6, 0x0020($sp)           
/* 01CA4 8098AB24 E7A80024 */  swc1    $f8, 0x0024($sp)           
/* 01CA8 8098AB28 C4EA0004 */  lwc1    $f10, 0x0004($a3)          ## 00000004
/* 01CAC 8098AB2C 46105480 */  add.s   $f18, $f10, $f16           
/* 01CB0 8098AB30 E7B20028 */  swc1    $f18, 0x0028($sp)          
/* 01CB4 8098AB34 C4E40008 */  lwc1    $f4, 0x0008($a3)           ## 00000008
/* 01CB8 8098AB38 46062200 */  add.s   $f8, $f4, $f6              
/* 01CBC 8098AB3C E7A8002C */  swc1    $f8, 0x002C($sp)           
/* 01CC0 8098AB40 8DD80000 */  lw      $t8, 0x0000($t6)           ## FFFFFFF4
/* 01CC4 8098AB44 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 01CC8 8098AB48 8DCF0004 */  lw      $t7, 0x0004($t6)           ## FFFFFFF8
/* 01CCC 8098AB4C AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 01CD0 8098AB50 8DD80008 */  lw      $t8, 0x0008($t6)           ## FFFFFFFC
/* 01CD4 8098AB54 AC580008 */  sw      $t8, 0x0008($v0)           ## 00000008
/* 01CD8 8098AB58 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01CDC 8098AB5C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01CE0 8098AB60 03E00008 */  jr      $ra                        
/* 01CE4 8098AB64 00000000 */  nop
