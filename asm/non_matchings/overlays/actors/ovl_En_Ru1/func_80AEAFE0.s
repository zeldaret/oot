glabel func_80AEAFE0
/* 003D0 80AEAFE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003D4 80AEAFE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003D8 80AEAFE8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 003DC 80AEAFEC 0C2BABD6 */  jal     func_80AEAF58              
/* 003E0 80AEAFF0 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 003E4 80AEAFF4 10400007 */  beq     $v0, $zero, .L80AEB014     
/* 003E8 80AEAFF8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003EC 80AEAFFC 97AE001E */  lhu     $t6, 0x001E($sp)           
/* 003F0 80AEB000 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 003F4 80AEB004 51CF0004 */  beql    $t6, $t7, .L80AEB018       
/* 003F8 80AEB008 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 003FC 80AEB00C 10000002 */  beq     $zero, $zero, .L80AEB018   
/* 00400 80AEB010 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AEB014:
/* 00404 80AEB014 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AEB018:
/* 00408 80AEB018 03E00008 */  jr      $ra                        
/* 0040C 80AEB01C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


