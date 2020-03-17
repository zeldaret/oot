glabel func_809FC928
/* 00758 809FC928 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0075C 809FC92C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00760 809FC930 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00764 809FC934 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00768 809FC938 44813000 */  mtc1    $at, $f6                   ## $f6 = 120.00
/* 0076C 809FC93C C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00770 809FC940 3C0E80A0 */  lui     $t6, %hi(func_809FC998)    ## $t6 = 80A00000
/* 00774 809FC944 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00778 809FC948 4606203C */  c.lt.s  $f4, $f6                   
/* 0077C 809FC94C 25CEC998 */  addiu   $t6, $t6, %lo(func_809FC998) ## $t6 = 809FC998
/* 00780 809FC950 2405E800 */  addiu   $a1, $zero, 0xE800         ## $a1 = FFFFE800
/* 00784 809FC954 24060100 */  addiu   $a2, $zero, 0x0100         ## $a2 = 00000100
/* 00788 809FC958 45020004 */  bc1fl   .L809FC96C                 
/* 0078C 809FC95C 24E40032 */  addiu   $a0, $a3, 0x0032           ## $a0 = 00000032
/* 00790 809FC960 10000009 */  beq     $zero, $zero, .L809FC988   
/* 00794 809FC964 AC8E01D4 */  sw      $t6, 0x01D4($a0)           ## 00000206
/* 00798 809FC968 24E40032 */  addiu   $a0, $a3, 0x0032           ## $a0 = 00000032
.L809FC96C:
/* 0079C 809FC96C 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 007A0 809FC970 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 007A4 809FC974 10400004 */  beq     $v0, $zero, .L809FC988     
/* 007A8 809FC978 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 007AC 809FC97C 3C0F80A0 */  lui     $t7, %hi(func_809FC8F4)    ## $t7 = 80A00000
/* 007B0 809FC980 25EFC8F4 */  addiu   $t7, $t7, %lo(func_809FC8F4) ## $t7 = 809FC8F4
/* 007B4 809FC984 ACEF01D4 */  sw      $t7, 0x01D4($a3)           ## 000001D4
.L809FC988:
/* 007B8 809FC988 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007BC 809FC98C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007C0 809FC990 03E00008 */  jr      $ra                        
/* 007C4 809FC994 00000000 */  nop


