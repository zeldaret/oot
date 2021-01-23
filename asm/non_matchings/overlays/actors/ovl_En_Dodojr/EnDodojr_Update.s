glabel EnDodojr_Update
/* 018D0 809F7C90 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 018D4 809F7C94 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 018D8 809F7C98 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 018DC 809F7C9C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 018E0 809F7CA0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 018E4 809F7CA4 0C02927F */  jal     SkelAnime_Update
              
/* 018E8 809F7CA8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 018EC 809F7CAC 0C00B638 */  jal     Actor_MoveForward
              
/* 018F0 809F7CB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018F4 809F7CB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018F8 809F7CB8 0C27DC3A */  jal     func_809F70E8              
/* 018FC 809F7CBC 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01900 809F7CC0 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 01904 809F7CC4 3C0E809F */  lui     $t6, %hi(func_809F73AC)    ## $t6 = 809F0000
/* 01908 809F7CC8 25CE73AC */  addiu   $t6, $t6, %lo(func_809F73AC) ## $t6 = 809F73AC
/* 0190C 809F7CCC 51C20013 */  beql    $t6, $v0, .L809F7D1C       
/* 01910 809F7CD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01914 809F7CD4 860F01D4 */  lh      $t7, 0x01D4($s0)           ## 000001D4
/* 01918 809F7CD8 861801D6 */  lh      $t8, 0x01D6($s0)           ## 000001D6
/* 0191C 809F7CDC 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01920 809F7CE0 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 01924 809F7CE4 44983000 */  mtc1    $t8, $f6                   ## $f6 = 0.00
/* 01928 809F7CE8 24190005 */  addiu   $t9, $zero, 0x0005         ## $t9 = 00000005
/* 0192C 809F7CEC 46802120 */  cvt.s.w $f4, $f4                   
/* 01930 809F7CF0 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 01934 809F7CF4 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01938 809F7CF8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0193C 809F7CFC E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 01940 809F7D00 468031A0 */  cvt.s.w $f6, $f6                   
/* 01944 809F7D04 44062000 */  mfc1    $a2, $f4                   
/* 01948 809F7D08 44073000 */  mfc1    $a3, $f6                   
/* 0194C 809F7D0C 0C00B92D */  jal     Actor_UpdateBgCheckInfo              
/* 01950 809F7D10 00000000 */  nop
/* 01954 809F7D14 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 01958 809F7D18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809F7D1C:
/* 0195C 809F7D1C 0040F809 */  jalr    $ra, $v0                   
/* 01960 809F7D20 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01964 809F7D24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01968 809F7D28 0C00B56E */  jal     Actor_SetFocus
              
/* 0196C 809F7D2C 3C054120 */  lui     $a1, 0x4120                ## $a1 = 41200000
/* 01970 809F7D30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01974 809F7D34 0C27DCA9 */  jal     func_809F72A4              
/* 01978 809F7D38 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0197C 809F7D3C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01980 809F7D40 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01984 809F7D44 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01988 809F7D48 03E00008 */  jr      $ra                        
/* 0198C 809F7D4C 00000000 */  nop
