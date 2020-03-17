glabel func_809DEF94
/* 00194 809DEF94 3C014264 */  lui     $at, 0x4264                ## $at = 42640000
/* 00198 809DEF98 44813000 */  mtc1    $at, $f6                   ## $f6 = 57.00
/* 0019C 809DEF9C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 001A0 809DEFA0 3C01C210 */  lui     $at, 0xC210                ## $at = C2100000
/* 001A4 809DEFA4 44814000 */  mtc1    $at, $f8                   ## $f8 = -36.00
/* 001A8 809DEFA8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 001AC 809DEFAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001B0 809DEFB0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 001B4 809DEFB4 E7A60020 */  swc1    $f6, 0x0020($sp)           
/* 001B8 809DEFB8 E7A80024 */  swc1    $f8, 0x0024($sp)           
/* 001BC 809DEFBC E7A4001C */  swc1    $f4, 0x001C($sp)           
/* 001C0 809DEFC0 84C500B6 */  lh      $a1, 0x00B6($a2)           ## 000000B6
/* 001C4 809DEFC4 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 001C8 809DEFC8 0C277B80 */  jal     func_809DEE00              
/* 001CC 809DEFCC 27A4001C */  addiu   $a0, $sp, 0x001C           ## $a0 = FFFFFFF4
/* 001D0 809DEFD0 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 001D4 809DEFD4 C7B0001C */  lwc1    $f16, 0x001C($sp)          
/* 001D8 809DEFD8 C4CA0024 */  lwc1    $f10, 0x0024($a2)          ## 00000024
/* 001DC 809DEFDC C4C40028 */  lwc1    $f4, 0x0028($a2)           ## 00000028
/* 001E0 809DEFE0 46105480 */  add.s   $f18, $f10, $f16           
/* 001E4 809DEFE4 C4CA002C */  lwc1    $f10, 0x002C($a2)          ## 0000002C
/* 001E8 809DEFE8 E4D20024 */  swc1    $f18, 0x0024($a2)          ## 00000024
/* 001EC 809DEFEC C7A60020 */  lwc1    $f6, 0x0020($sp)           
/* 001F0 809DEFF0 46062200 */  add.s   $f8, $f4, $f6              
/* 001F4 809DEFF4 E4C80028 */  swc1    $f8, 0x0028($a2)           ## 00000028
/* 001F8 809DEFF8 C7B00024 */  lwc1    $f16, 0x0024($sp)          
/* 001FC 809DEFFC 46105480 */  add.s   $f18, $f10, $f16           
/* 00200 809DF000 E4D2002C */  swc1    $f18, 0x002C($a2)          ## 0000002C
/* 00204 809DF004 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00208 809DF008 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0020C 809DF00C 03E00008 */  jr      $ra                        
/* 00210 809DF010 00000000 */  nop


