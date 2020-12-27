glabel func_809BD2E4
/* 00684 809BD2E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00688 809BD2E8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0068C 809BD2EC 8C820118 */  lw      $v0, 0x0118($a0)           ## 00000118
/* 00690 809BD2F0 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00694 809BD2F4 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 00698 809BD2F8 10400003 */  beq     $v0, $zero, .L809BD308     
/* 0069C 809BD2FC 24440032 */  addiu   $a0, $v0, 0x0032           ## $a0 = 00000032
/* 006A0 809BD300 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 006A4 809BD304 84E5019A */  lh      $a1, 0x019A($a3)           ## 0000019A
.L809BD308:
/* 006A8 809BD308 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006AC 809BD30C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006B0 809BD310 03E00008 */  jr      $ra                        
/* 006B4 809BD314 00000000 */  nop
