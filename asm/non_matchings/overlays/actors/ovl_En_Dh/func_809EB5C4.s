glabel func_809EB5C4
/* 00884 809EB5C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00888 809EB5C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0088C 809EB5CC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00890 809EB5D0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00894 809EB5D4 24A54658 */  addiu   $a1, $a1, 0x4658           ## $a1 = 06004658
/* 00898 809EB5D8 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 0089C 809EB5DC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 008A0 809EB5E0 0C029490 */  jal     func_800A5240              
/* 008A4 809EB5E4 3C06C0C0 */  lui     $a2, 0xC0C0                ## $a2 = C0C00000
/* 008A8 809EB5E8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 008AC 809EB5EC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 008B0 809EB5F0 300E00FF */  andi    $t6, $zero, 0x00FF         ## $t6 = 00000000
/* 008B4 809EB5F4 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 008B8 809EB5F8 3C05809F */  lui     $a1, %hi(func_809EB624)    ## $a1 = 809F0000
/* 008BC 809EB5FC 24A5B624 */  addiu   $a1, $a1, %lo(func_809EB624) ## $a1 = 809EB624
/* 008C0 809EB600 A48E025C */  sh      $t6, 0x025C($a0)           ## 0000025C
/* 008C4 809EB604 A0800250 */  sb      $zero, 0x0250($a0)         ## 00000250
/* 008C8 809EB608 A08F025B */  sb      $t7, 0x025B($a0)           ## 0000025B
/* 008CC 809EB60C 0C27AB50 */  jal     func_809EAD40              
/* 008D0 809EB610 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 008D4 809EB614 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008D8 809EB618 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008DC 809EB61C 03E00008 */  jr      $ra                        
/* 008E0 809EB620 00000000 */  nop


