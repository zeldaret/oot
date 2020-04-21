glabel func_80A40D5C
/* 027EC 80A40D5C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 027F0 80A40D60 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 027F4 80A40D64 8482021E */  lh      $v0, 0x021E($a0)           ## 0000021E
/* 027F8 80A40D68 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 027FC 80A40D6C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 02800 80A40D70 14400003 */  bne     $v0, $zero, .L80A40D80     
/* 02804 80A40D74 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 02808 80A40D78 10000003 */  beq     $zero, $zero, .L80A40D88   
/* 0280C 80A40D7C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80A40D80:
/* 02810 80A40D80 A4CE021E */  sh      $t6, 0x021E($a2)           ## 0000021E
/* 02814 80A40D84 84C3021E */  lh      $v1, 0x021E($a2)           ## 0000021E
.L80A40D88:
/* 02818 80A40D88 1460000C */  bne     $v1, $zero, .L80A40DBC     
/* 0281C 80A40D8C 240F305A */  addiu   $t7, $zero, 0x305A         ## $t7 = 0000305A
/* 02820 80A40D90 A4CF010E */  sh      $t7, 0x010E($a2)           ## 0000010E
/* 02824 80A40D94 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02828 80A40D98 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0282C 80A40D9C 0C042DC8 */  jal     func_8010B720              
/* 02830 80A40DA0 31E5FFFF */  andi    $a1, $t7, 0xFFFF           ## $a1 = 0000305A
/* 02834 80A40DA4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02838 80A40DA8 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 0283C 80A40DAC 3C0580A4 */  lui     $a1, %hi(func_80A40DCC)    ## $a1 = 80A40000
/* 02840 80A40DB0 24A50DCC */  addiu   $a1, $a1, %lo(func_80A40DCC) ## $a1 = 80A40DCC
/* 02844 80A40DB4 0C28F95C */  jal     func_80A3E570              
/* 02848 80A40DB8 A49801E0 */  sh      $t8, 0x01E0($a0)           ## 000001E0
.L80A40DBC:
/* 0284C 80A40DBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02850 80A40DC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02854 80A40DC4 03E00008 */  jr      $ra                        
/* 02858 80A40DC8 00000000 */  nop
