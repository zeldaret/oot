glabel func_80B905E4
/* 01B64 80B905E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01B68 80B905E8 3C0E80B9 */  lui     $t6, %hi(func_80B90620)    ## $t6 = 80B90000
/* 01B6C 80B905EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01B70 80B905F0 25CE0620 */  addiu   $t6, $t6, %lo(func_80B90620) ## $t6 = 80B90620
/* 01B74 80B905F4 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 01B78 80B905F8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01B7C 80B905FC 0C2E3BCA */  jal     func_80B8EF28              
/* 01B80 80B90600 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01B84 80B90604 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01B88 80B90608 240F001E */  addiu   $t7, $zero, 0x001E         ## $t7 = 0000001E
/* 01B8C 80B9060C A48F01B4 */  sh      $t7, 0x01B4($a0)           ## 000001B4
/* 01B90 80B90610 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01B94 80B90614 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01B98 80B90618 03E00008 */  jr      $ra                        
/* 01B9C 80B9061C 00000000 */  nop
