glabel func_80AFF2E0
/* 01030 80AFF2E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01034 80AFF2E4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01038 80AFF2E8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0103C 80AFF2EC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01040 80AFF2F0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01044 80AFF2F4 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 01048 80AFF2F8 24847128 */  addiu   $a0, $a0, 0x7128           ## $a0 = 06007128
/* 0104C 80AFF2FC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01050 80AFF300 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01054 80AFF304 468021A0 */  cvt.s.w $f6, $f4                   
/* 01058 80AFF308 C4880164 */  lwc1    $f8, 0x0164($a0)           ## 00000164
/* 0105C 80AFF30C 46083032 */  c.eq.s  $f6, $f8                   
/* 01060 80AFF310 00000000 */  nop
/* 01064 80AFF314 45020004 */  bc1fl   .L80AFF328                 
/* 01068 80AFF318 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0106C 80AFF31C 0C2BFCF4 */  jal     func_80AFF3D0              
/* 01070 80AFF320 00000000 */  nop
/* 01074 80AFF324 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFF328:
/* 01078 80AFF328 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0107C 80AFF32C 03E00008 */  jr      $ra                        
/* 01080 80AFF330 00000000 */  nop
