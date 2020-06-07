glabel func_80B00680
/* 023D0 80B00680 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 023D4 80B00684 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 023D8 80B00688 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 023DC 80B0068C 0C2BF8AC */  jal     func_80AFE2B0              
/* 023E0 80B00690 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 023E4 80B00694 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 023E8 80B00698 0C2BF8CE */  jal     func_80AFE338              
/* 023EC 80B0069C 2405001B */  addiu   $a1, $zero, 0x001B         ## $a1 = 0000001B
/* 023F0 80B006A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 023F4 80B006A4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 023F8 80B006A8 03E00008 */  jr      $ra                        
/* 023FC 80B006AC 00000000 */  nop
