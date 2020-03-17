glabel func_80A46CD8
/* 03FA8 80A46CD8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03FAC 80A46CDC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03FB0 80A46CE0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03FB4 80A46CE4 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 03FB8 80A46CE8 C480015C */  lwc1    $f0, 0x015C($a0)           ## 0000015C
/* 03FBC 80A46CEC 44813000 */  mtc1    $at, $f6                   ## $f6 = 32768.00
/* 03FC0 80A46CF0 C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 03FC4 80A46CF4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 03FC8 80A46CF8 46003203 */  div.s   $f8, $f6, $f0              
/* 03FCC 80A46CFC AFA60018 */  sw      $a2, 0x0018($sp)           
/* 03FD0 80A46D00 46082082 */  mul.s   $f2, $f4, $f8              
/* 03FD4 80A46D04 4600128D */  trunc.w.s $f10, $f2                  
/* 03FD8 80A46D08 44045000 */  mfc1    $a0, $f10                  
/* 03FDC 80A46D0C 00000000 */  nop
/* 03FE0 80A46D10 00042400 */  sll     $a0, $a0, 16               
/* 03FE4 80A46D14 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 03FE8 80A46D18 00042403 */  sra     $a0, $a0, 16               
/* 03FEC 80A46D1C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03FF0 80A46D20 E4800068 */  swc1    $f0, 0x0068($a0)           ## 00000068
/* 03FF4 80A46D24 0C291339 */  jal     func_80A44CE4              
/* 03FF8 80A46D28 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03FFC 80A46D2C 10400007 */  beq     $v0, $zero, .L80A46D4C     
/* 04000 80A46D30 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 04004 80A46D34 80CF0210 */  lb      $t7, 0x0210($a2)           ## 00000210
/* 04008 80A46D38 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0400C 80A46D3C 55E00004 */  bnel    $t7, $zero, .L80A46D50     
/* 04010 80A46D40 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04014 80A46D44 0C291750 */  jal     func_80A45D40              
/* 04018 80A46D48 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80A46D4C:
/* 0401C 80A46D4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A46D50:
/* 04020 80A46D50 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04024 80A46D54 03E00008 */  jr      $ra                        
/* 04028 80A46D58 00000000 */  nop


