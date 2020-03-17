glabel func_80AF67D0
/* 01270 80AF67D0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01274 80AF67D4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01278 80AF67D8 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0127C 80AF67DC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01280 80AF67E0 848F01E0 */  lh      $t7, 0x01E0($a0)           ## 000001E0
/* 01284 80AF67E4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01288 80AF67E8 24A5C500 */  addiu   $a1, $a1, 0xC500           ## $a1 = 0600C500
/* 0128C 80AF67EC 15E0000F */  bne     $t7, $zero, .L80AF682C     
/* 01290 80AF67F0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01294 80AF67F4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01298 80AF67F8 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 0129C 80AF67FC 44812000 */  mtc1    $at, $f4                   ## $f4 = -10.00
/* 012A0 80AF6800 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 012A4 80AF6804 44060000 */  mfc1    $a2, $f0                   
/* 012A8 80AF6808 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 012AC 80AF680C 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 012B0 80AF6810 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 012B4 80AF6814 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 012B8 80AF6818 E7A40018 */  swc1    $f4, 0x0018($sp)           
/* 012BC 80AF681C 8FA80028 */  lw      $t0, 0x0028($sp)           
/* 012C0 80AF6820 3C1980AF */  lui     $t9, %hi(func_80AF6448)    ## $t9 = 80AF0000
/* 012C4 80AF6824 27396448 */  addiu   $t9, $t9, %lo(func_80AF6448) ## $t9 = 80AF6448
/* 012C8 80AF6828 AD190190 */  sw      $t9, 0x0190($t0)           ## 00000190
.L80AF682C:
/* 012CC 80AF682C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 012D0 80AF6830 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 012D4 80AF6834 03E00008 */  jr      $ra                        
/* 012D8 80AF6838 00000000 */  nop


