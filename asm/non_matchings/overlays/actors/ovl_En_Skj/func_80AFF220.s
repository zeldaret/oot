glabel func_80AFF220
/* 00F70 80AFF220 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F74 80AFF224 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00F78 80AFF228 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00F7C 80AFF22C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00F80 80AFF230 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F84 80AFF234 3C040600 */  lui     $a0, %hi(D_06006D84)                ## $a0 = 06000000
/* 00F88 80AFF238 24846D84 */  addiu   $a0, $a0, %lo(D_06006D84)           ## $a0 = 06006D84
/* 00F8C 80AFF23C 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00F90 80AFF240 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00F94 80AFF244 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00F98 80AFF248 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00F9C 80AFF24C 468021A0 */  cvt.s.w $f6, $f4                   
/* 00FA0 80AFF250 C4A80164 */  lwc1    $f8, 0x0164($a1)           ## 00000164
/* 00FA4 80AFF254 46083032 */  c.eq.s  $f6, $f8                   
/* 00FA8 80AFF258 00000000 */  nop
/* 00FAC 80AFF25C 4502000D */  bc1fl   .L80AFF294                 
/* 00FB0 80AFF260 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00FB4 80AFF264 90AE02D5 */  lbu     $t6, 0x02D5($a1)           ## 000002D5
/* 00FB8 80AFF268 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 00FBC 80AFF26C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00FC0 80AFF270 15C00005 */  bne     $t6, $zero, .L80AFF288     
/* 00FC4 80AFF274 00000000 */  nop
/* 00FC8 80AFF278 0C2BFBA1 */  jal     func_80AFEE84              
/* 00FCC 80AFF27C A0AF02D5 */  sb      $t7, 0x02D5($a1)           ## 000002D5
/* 00FD0 80AFF280 10000004 */  beq     $zero, $zero, .L80AFF294   
/* 00FD4 80AFF284 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFF288:
/* 00FD8 80AFF288 0C2BFCF4 */  jal     func_80AFF3D0              
/* 00FDC 80AFF28C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00FE0 80AFF290 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFF294:
/* 00FE4 80AFF294 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00FE8 80AFF298 03E00008 */  jr      $ra                        
/* 00FEC 80AFF29C 00000000 */  nop
