glabel func_80A6DCCC
/* 003FC 80A6DCCC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00400 80A6DCD0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00404 80A6DCD4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00408 80A6DCD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0040C 80A6DCDC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00410 80A6DCE0 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00414 80A6DCE4 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00418 80A6DCE8 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0041C 80A6DCEC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00420 80A6DCF0 248401A0 */  addiu   $a0, $a0, 0x01A0           ## $a0 = 000001A0
/* 00424 80A6DCF4 10400003 */  beq     $v0, $zero, .L80A6DD04     
/* 00428 80A6DCF8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0042C 80A6DCFC 0C29B71F */  jal     func_80A6DC7C              
/* 00430 80A6DD00 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
.L80A6DD04:
/* 00434 80A6DD04 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00438 80A6DD08 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0043C 80A6DD0C 03E00008 */  jr      $ra                        
/* 00440 80A6DD10 00000000 */  nop
