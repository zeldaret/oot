glabel func_809FE638
/* 00A08 809FE638 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A0C 809FE63C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A10 809FE640 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00A14 809FE644 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00A18 809FE648 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 00A1C 809FE64C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00A20 809FE650 24050D02 */  addiu   $a1, $zero, 0x0D02         ## $a1 = 00000D02
/* 00A24 809FE654 8C6F067C */  lw      $t7, 0x067C($v1)           ## 0000067C
/* 00A28 809FE658 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 00A2C 809FE65C 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 00A30 809FE660 000FC080 */  sll     $t8, $t7,  2               
/* 00A34 809FE664 07020016 */  bltzl   $t8, .L809FE6C0            
/* 00A38 809FE668 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A3C 809FE66C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00A40 809FE670 0C02003E */  jal     func_800800F8              
/* 00A44 809FE674 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 00A48 809FE678 8FB90028 */  lw      $t9, 0x0028($sp)           
/* 00A4C 809FE67C 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 00A50 809FE680 24040051 */  addiu   $a0, $zero, 0x0051         ## $a0 = 00000051
/* 00A54 809FE684 87220032 */  lh      $v0, 0x0032($t9)           ## 00000032
/* 00A58 809FE688 24427FFF */  addiu   $v0, $v0, 0x7FFF           ## $v0 = 00007FFF
/* 00A5C 809FE68C 00021400 */  sll     $v0, $v0, 16               
/* 00A60 809FE690 00021403 */  sra     $v0, $v0, 16               
/* 00A64 809FE694 A4620032 */  sh      $v0, 0x0032($v1)           ## 00000032
/* 00A68 809FE698 0C03D719 */  jal     func_800F5C64              
/* 00A6C 809FE69C A46200B6 */  sh      $v0, 0x00B6($v1)           ## 000000B6
/* 00A70 809FE6A0 3C0580A0 */  lui     $a1, %hi(func_809FE6CC)    ## $a1 = 80A00000
/* 00A74 809FE6A4 24A5E6CC */  addiu   $a1, $a1, %lo(func_809FE6CC) ## $a1 = 809FE6CC
/* 00A78 809FE6A8 0C27F70C */  jal     func_809FDC30              
/* 00A7C 809FE6AC 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00A80 809FE6B0 8FA90028 */  lw      $t1, 0x0028($sp)           
/* 00A84 809FE6B4 24080032 */  addiu   $t0, $zero, 0x0032         ## $t0 = 00000032
/* 00A88 809FE6B8 A52801E2 */  sh      $t0, 0x01E2($t1)           ## 000001E2
/* 00A8C 809FE6BC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809FE6C0:
/* 00A90 809FE6C0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A94 809FE6C4 03E00008 */  jr      $ra                        
/* 00A98 809FE6C8 00000000 */  nop


