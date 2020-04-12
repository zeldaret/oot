glabel func_80B90678
/* 01BF8 80B90678 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01BFC 80B9067C 3C0E80B9 */  lui     $t6, %hi(func_80B906A4)    ## $t6 = 80B90000
/* 01C00 80B90680 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01C04 80B90684 25CE06A4 */  addiu   $t6, $t6, %lo(func_80B906A4) ## $t6 = 80B906A4
/* 01C08 80B90688 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 01C0C 80B9068C 0C2E3BCA */  jal     func_80B8EF28              
/* 01C10 80B90690 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 01C14 80B90694 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01C18 80B90698 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01C1C 80B9069C 03E00008 */  jr      $ra                        
/* 01C20 80B906A0 00000000 */  nop
