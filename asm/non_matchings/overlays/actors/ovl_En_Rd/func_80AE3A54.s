glabel func_80AE3A54
/* 01654 80AE3A54 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01658 80AE3A58 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0165C 80AE3A5C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01660 80AE3A60 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01664 80AE3A64 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01668 80AE3A68 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 0166C 80AE3A6C 50400004 */  beql    $v0, $zero, .L80AE3A80     
/* 01670 80AE3A70 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01674 80AE3A74 0C2B89A7 */  jal     func_80AE269C              
/* 01678 80AE3A78 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0167C 80AE3A7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE3A80:
/* 01680 80AE3A80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01684 80AE3A84 03E00008 */  jr      $ra                        
/* 01688 80AE3A88 00000000 */  nop
