glabel func_80A09B6C
/* 00CCC 80A09B6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CD0 80A09B70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CD4 80A09B74 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00CD8 80A09B78 8C82017C */  lw      $v0, 0x017C($a0)           ## 0000017C
/* 00CDC 80A09B7C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00CE0 80A09B80 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00CE4 80A09B84 50400005 */  beql    $v0, $zero, .L80A09B9C     
/* 00CE8 80A09B88 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00CEC 80A09B8C 0040F809 */  jalr    $ra, $v0                   
/* 00CF0 80A09B90 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00CF4 80A09B94 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00CF8 80A09B98 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L80A09B9C:
/* 00CFC 80A09B9C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00D00 80A09BA0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00D04 80A09BA4 0C00BB60 */  jal     func_8002ED80              
/* 00D08 80A09BA8 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00D0C 80A09BAC 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00D10 80A09BB0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00D14 80A09BB4 0C01A528 */  jal     func_800694A0              
/* 00D18 80A09BB8 84E50156 */  lh      $a1, 0x0156($a3)           ## 00000156
/* 00D1C 80A09BBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D20 80A09BC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D24 80A09BC4 03E00008 */  jr      $ra                        
/* 00D28 80A09BC8 00000000 */  nop
