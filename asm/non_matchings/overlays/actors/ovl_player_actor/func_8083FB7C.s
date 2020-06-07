.late_rodata
glabel D_808553F4
 .word 0xBECCCCCD

.text
glabel func_8083FB7C
/* 0D96C 8083FB7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0D970 8083FB80 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0D974 8083FB84 8C8E067C */  lw      $t6, 0x067C($a0)           ## 0000067C
/* 0D978 8083FB88 3C01F7DF */  lui     $at, 0xF7DF                ## $at = F7DF0000
/* 0D97C 8083FB8C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = F7DFFFFF
/* 0D980 8083FB90 01C17824 */  and     $t7, $t6, $at              
/* 0D984 8083FB94 AC8F067C */  sw      $t7, 0x067C($a0)           ## 0000067C
/* 0D988 8083FB98 0C20DEE7 */  jal     func_80837B9C              
/* 0D98C 8083FB9C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0D990 8083FBA0 3C018085 */  lui     $at, %hi(D_808553F4)       ## $at = 80850000
/* 0D994 8083FBA4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0D998 8083FBA8 C42453F4 */  lwc1    $f4, %lo(D_808553F4)($at)  
/* 0D99C 8083FBAC E4840838 */  swc1    $f4, 0x0838($a0)           ## 00000838
/* 0D9A0 8083FBB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0D9A4 8083FBB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0D9A8 8083FBB8 03E00008 */  jr      $ra                        
/* 0D9AC 8083FBBC 00000000 */  nop
