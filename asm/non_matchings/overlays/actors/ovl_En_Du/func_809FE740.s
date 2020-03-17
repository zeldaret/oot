glabel func_809FE740
/* 00B10 809FE740 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B14 809FE744 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B18 809FE748 848E01F4 */  lh      $t6, 0x01F4($a0)           ## 000001F4
/* 00B1C 809FE74C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00B20 809FE750 55C0000E */  bnel    $t6, $zero, .L809FE78C     
/* 00B24 809FE754 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B28 809FE758 84AF07A0 */  lh      $t7, 0x07A0($a1)           ## 000007A0
/* 00B2C 809FE75C 000FC080 */  sll     $t8, $t7,  2               
/* 00B30 809FE760 00B8C821 */  addu    $t9, $a1, $t8              
/* 00B34 809FE764 8F240790 */  lw      $a0, 0x0790($t9)           ## 00000790
/* 00B38 809FE768 0C016C69 */  jal     func_8005B1A4              
/* 00B3C 809FE76C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00B40 809FE770 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B44 809FE774 2408005A */  addiu   $t0, $zero, 0x005A         ## $t0 = 0000005A
/* 00B48 809FE778 3C0580A0 */  lui     $a1, %hi(func_809FE798)    ## $a1 = 80A00000
/* 00B4C 809FE77C 24A5E798 */  addiu   $a1, $a1, %lo(func_809FE798) ## $a1 = 809FE798
/* 00B50 809FE780 0C27F70C */  jal     func_809FDC30              
/* 00B54 809FE784 A48801E2 */  sh      $t0, 0x01E2($a0)           ## 000001E2
/* 00B58 809FE788 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809FE78C:
/* 00B5C 809FE78C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B60 809FE790 03E00008 */  jr      $ra                        
/* 00B64 809FE794 00000000 */  nop


