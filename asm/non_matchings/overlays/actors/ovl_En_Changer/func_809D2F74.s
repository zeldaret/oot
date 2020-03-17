glabel func_809D2F74
/* 008E4 809D2F74 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008E8 809D2F78 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008EC 809D2F7C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 008F0 809D2F80 8C8E0158 */  lw      $t6, 0x0158($a0)           ## 00000158
/* 008F4 809D2F84 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 008F8 809D2F88 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 008FC 809D2F8C 85CF01F4 */  lh      $t7, 0x01F4($t6)           ## 000001F4
/* 00900 809D2F90 51E00009 */  beql    $t7, $zero, .L809D2FB8     
/* 00904 809D2F94 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00908 809D2F98 94620EF2 */  lhu     $v0, 0x0EF2($v1)           ## 8015F552
/* 0090C 809D2F9C 30580800 */  andi    $t8, $v0, 0x0800           ## $t8 = 00000000
/* 00910 809D2FA0 17000002 */  bne     $t8, $zero, .L809D2FAC     
/* 00914 809D2FA4 34590800 */  ori     $t9, $v0, 0x0800           ## $t9 = 00000800
/* 00918 809D2FA8 A4790EF2 */  sh      $t9, 0x0EF2($v1)           ## 8015F552
.L809D2FAC:
/* 0091C 809D2FAC 0C00B55C */  jal     Actor_Kill
              
/* 00920 809D2FB0 00000000 */  nop
/* 00924 809D2FB4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809D2FB8:
/* 00928 809D2FB8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0092C 809D2FBC 03E00008 */  jr      $ra                        
/* 00930 809D2FC0 00000000 */  nop


