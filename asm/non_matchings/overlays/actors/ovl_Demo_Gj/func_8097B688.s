glabel func_8097B688
/* 02D58 8097B688 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02D5C 8097B68C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02D60 8097B690 C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 02D64 8097B694 00C03825 */  or      $a3, $a2, $zero            ## $a3 = 00000000
/* 02D68 8097B698 27A6001C */  addiu   $a2, $sp, 0x001C           ## $a2 = FFFFFFF4
/* 02D6C 8097B69C E7A4001C */  swc1    $f4, 0x001C($sp)           
/* 02D70 8097B6A0 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 02D74 8097B6A4 E7A60020 */  swc1    $f6, 0x0020($sp)           
/* 02D78 8097B6A8 C488002C */  lwc1    $f8, 0x002C($a0)           ## 0000002C
/* 02D7C 8097B6AC 0C25E308 */  jal     func_80978C20              
/* 02D80 8097B6B0 E7A80024 */  swc1    $f8, 0x0024($sp)           
/* 02D84 8097B6B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02D88 8097B6B8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02D8C 8097B6BC 03E00008 */  jr      $ra                        
/* 02D90 8097B6C0 00000000 */  nop


