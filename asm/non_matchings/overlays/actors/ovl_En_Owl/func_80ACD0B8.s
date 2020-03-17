glabel func_80ACD0B8
/* 03198 80ACD0B8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0319C 80ACD0BC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 031A0 80ACD0C0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 031A4 80ACD0C4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 031A8 80ACD0C8 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 031AC 80ACD0CC AC8703DC */  sw      $a3, 0x03DC($a0)           ## 000003DC
/* 031B0 80ACD0D0 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 031B4 80ACD0D4 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 031B8 80ACD0D8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 031BC 80ACD0DC 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 031C0 80ACD0E0 C7A8003C */  lwc1    $f8, 0x003C($sp)           
/* 031C4 80ACD0E4 468021A0 */  cvt.s.w $f6, $f4                   
/* 031C8 80ACD0E8 8DE403DC */  lw      $a0, 0x03DC($t7)           ## 000003DC
/* 031CC 80ACD0EC 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 031D0 80ACD0F0 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 031D4 80ACD0F4 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 031D8 80ACD0F8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 031DC 80ACD0FC E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 031E0 80ACD100 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 031E4 80ACD104 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 031E8 80ACD108 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 031EC 80ACD10C 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 031F0 80ACD110 8FB9002C */  lw      $t9, 0x002C($sp)           
/* 031F4 80ACD114 AC59040C */  sw      $t9, 0x040C($v0)           ## 0000040C
/* 031F8 80ACD118 8FA80030 */  lw      $t0, 0x0030($sp)           
/* 031FC 80ACD11C AC480410 */  sw      $t0, 0x0410($v0)           ## 00000410
/* 03200 80ACD120 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03204 80ACD124 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03208 80ACD128 03E00008 */  jr      $ra                        
/* 0320C 80ACD12C 00000000 */  nop


