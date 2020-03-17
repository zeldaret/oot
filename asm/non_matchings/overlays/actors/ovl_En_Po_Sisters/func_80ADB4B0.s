glabel func_80ADB4B0
/* 02520 80ADB4B0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02524 80ADB4B4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02528 80ADB4B8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0252C 80ADB4BC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02530 80ADB4C0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02534 80ADB4C4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02538 80ADB4C8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0253C 80ADB4CC 50400004 */  beql    $v0, $zero, .L80ADB4E0     
/* 02540 80ADB4D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02544 80ADB4D4 0C2B6798 */  jal     func_80AD9E60              
/* 02548 80ADB4D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0254C 80ADB4DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ADB4E0:
/* 02550 80ADB4E0 0C2B65F2 */  jal     func_80AD97C8              
/* 02554 80ADB4E4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02558 80ADB4E8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0255C 80ADB4EC 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 02560 80ADB4F0 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 02564 80ADB4F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02568 80ADB4F8 3C054220 */  lui     $a1, 0x4220                ## $a1 = 42200000
/* 0256C 80ADB4FC 46062200 */  add.s   $f8, $f4, $f6              
/* 02570 80ADB500 0C00B56E */  jal     Actor_SetHeight
              
/* 02574 80ADB504 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 02578 80ADB508 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0257C 80ADB50C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02580 80ADB510 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02584 80ADB514 03E00008 */  jr      $ra                        
/* 02588 80ADB518 00000000 */  nop


