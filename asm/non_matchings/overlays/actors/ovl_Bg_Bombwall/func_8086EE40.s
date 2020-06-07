glabel func_8086EE40
/* 00670 8086EE40 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00674 8086EE44 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00678 8086EE48 848202A0 */  lh      $v0, 0x02A0($a0)           ## 000002A0
/* 0067C 8086EE4C 18400003 */  blez    $v0, .L8086EE5C            
/* 00680 8086EE50 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00684 8086EE54 1000000B */  beq     $zero, $zero, .L8086EE84   
/* 00688 8086EE58 A48E02A0 */  sh      $t6, 0x02A0($a0)           ## 000002A0
.L8086EE5C:
/* 0068C 8086EE5C 0C21BBA5 */  jal     func_8086EE94              
/* 00690 8086EE60 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00694 8086EE64 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00698 8086EE68 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 0069C 8086EE6C 000FC3C3 */  sra     $t8, $t7, 15               
/* 006A0 8086EE70 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 006A4 8086EE74 53200004 */  beql    $t9, $zero, .L8086EE88     
/* 006A8 8086EE78 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006AC 8086EE7C 0C01E221 */  jal     func_80078884              
/* 006B0 8086EE80 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
.L8086EE84:
/* 006B4 8086EE84 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086EE88:
/* 006B8 8086EE88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006BC 8086EE8C 03E00008 */  jr      $ra                        
/* 006C0 8086EE90 00000000 */  nop
