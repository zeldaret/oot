glabel func_80A99C94
/* 02EE4 80A99C94 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02EE8 80A99C98 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02EEC 80A99C9C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02EF0 80A99CA0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 02EF4 80A99CA4 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 02EF8 80A99CA8 0C031A73 */  jal     Graph_Alloc
              
/* 02EFC 80A99CAC 24050010 */  addiu   $a1, $zero, 0x0010         ## $a1 = 00000010
/* 02F00 80A99CB0 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 02F04 80A99CB4 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 02F08 80A99CB8 93A90023 */  lbu     $t1, 0x0023($sp)           
/* 02F0C 80A99CBC 93B8001F */  lbu     $t8, 0x001F($sp)           
/* 02F10 80A99CC0 93AD0027 */  lbu     $t5, 0x0027($sp)           
/* 02F14 80A99CC4 93A8002B */  lbu     $t0, 0x002B($sp)           
/* 02F18 80A99CC8 00095400 */  sll     $t2, $t1, 16               
/* 02F1C 80A99CCC 0018CE00 */  sll     $t9, $t8, 24               
/* 02F20 80A99CD0 032A5825 */  or      $t3, $t9, $t2              ## $t3 = 00000000
/* 02F24 80A99CD4 000D7200 */  sll     $t6, $t5,  8               
/* 02F28 80A99CD8 016E7825 */  or      $t7, $t3, $t6              ## $t7 = FB000000
/* 02F2C 80A99CDC 3C19DF00 */  lui     $t9, 0xDF00                ## $t9 = DF000000
/* 02F30 80A99CE0 01E84825 */  or      $t1, $t7, $t0              ## $t1 = FB000000
/* 02F34 80A99CE4 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 02F38 80A99CE8 AC590008 */  sw      $t9, 0x0008($v0)           ## 00000008
/* 02F3C 80A99CEC AC40000C */  sw      $zero, 0x000C($v0)         ## 0000000C
/* 02F40 80A99CF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02F44 80A99CF4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02F48 80A99CF8 03E00008 */  jr      $ra                        
/* 02F4C 80A99CFC 00000000 */  nop


