glabel func_809CC6E4
/* 00AE4 809CC6E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AE8 809CC6E8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AEC 809CC6EC 84820208 */  lh      $v0, 0x0208($a0)           ## 00000208
/* 00AF0 809CC6F0 14400003 */  bne     $v0, $zero, .L809CC700     
/* 00AF4 809CC6F4 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00AF8 809CC6F8 10000003 */  beq     $zero, $zero, .L809CC708   
/* 00AFC 809CC6FC 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L809CC700:
/* 00B00 809CC700 A48E0208 */  sh      $t6, 0x0208($a0)           ## 00000208
/* 00B04 809CC704 84830208 */  lh      $v1, 0x0208($a0)           ## 00000208
.L809CC708:
/* 00B08 809CC708 14600006 */  bne     $v1, $zero, .L809CC724     
/* 00B0C 809CC70C 00000000 */  nop
/* 00B10 809CC710 8C98014C */  lw      $t8, 0x014C($a0)           ## 0000014C
/* 00B14 809CC714 3C0F809D */  lui     $t7, %hi(func_809CCA60)    ## $t7 = 809D0000
/* 00B18 809CC718 25EFCA60 */  addiu   $t7, $t7, %lo(func_809CCA60) ## $t7 = 809CCA60
/* 00B1C 809CC71C 55F80004 */  bnel    $t7, $t8, .L809CC730       
/* 00B20 809CC720 90820163 */  lbu     $v0, 0x0163($a0)           ## 00000163
.L809CC724:
/* 00B24 809CC724 1000000F */  beq     $zero, $zero, .L809CC764   
/* 00B28 809CC728 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00B2C 809CC72C 90820163 */  lbu     $v0, 0x0163($a0)           ## 00000163
.L809CC730:
/* 00B30 809CC730 30590001 */  andi    $t9, $v0, 0x0001           ## $t9 = 00000000
/* 00B34 809CC734 13200009 */  beq     $t9, $zero, .L809CC75C     
/* 00B38 809CC738 3048FFFE */  andi    $t0, $v0, 0xFFFE           ## $t0 = 00000000
/* 00B3C 809CC73C A0880163 */  sb      $t0, 0x0163($a0)           ## 00000163
/* 00B40 809CC740 0C272F44 */  jal     func_809CBD10              
/* 00B44 809CC744 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B48 809CC748 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B4C 809CC74C 24090008 */  addiu   $t1, $zero, 0x0008         ## $t1 = 00000008
/* 00B50 809CC750 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00B54 809CC754 10000003 */  beq     $zero, $zero, .L809CC764   
/* 00B58 809CC758 A4890208 */  sh      $t1, 0x0208($a0)           ## 00000208
.L809CC75C:
/* 00B5C 809CC75C 0C273192 */  jal     func_809CC648              
/* 00B60 809CC760 00000000 */  nop
.L809CC764:
/* 00B64 809CC764 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B68 809CC768 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B6C 809CC76C 03E00008 */  jr      $ra                        
/* 00B70 809CC770 00000000 */  nop
