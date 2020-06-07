glabel func_80ADA4A8
/* 01518 80ADA4A8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0151C 80ADA4AC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01520 80ADA4B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01524 80ADA4B4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01528 80ADA4B8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0152C 80ADA4BC AFA4001C */  sw      $a0, 0x001C($sp)           
/* 01530 80ADA4C0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01534 80ADA4C4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 01538 80ADA4C8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0153C 80ADA4CC 0C0295B2 */  jal     func_800A56C8              
/* 01540 80ADA4D0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01544 80ADA4D4 10400005 */  beq     $v0, $zero, .L80ADA4EC     
/* 01548 80ADA4D8 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 0154C 80ADA4DC 84C2019A */  lh      $v0, 0x019A($a2)           ## 0000019A
/* 01550 80ADA4E0 10400002 */  beq     $v0, $zero, .L80ADA4EC     
/* 01554 80ADA4E4 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01558 80ADA4E8 A4CE019A */  sh      $t6, 0x019A($a2)           ## 0000019A
.L80ADA4EC:
/* 0155C 80ADA4EC 84CF019A */  lh      $t7, 0x019A($a2)           ## 0000019A
/* 01560 80ADA4F0 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 01564 80ADA4F4 11E00008 */  beq     $t7, $zero, .L80ADA518     
/* 01568 80ADA4F8 00000000 */  nop
/* 0156C 80ADA4FC C4C40090 */  lwc1    $f4, 0x0090($a2)           ## 00000090
/* 01570 80ADA500 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 01574 80ADA504 00000000 */  nop
/* 01578 80ADA508 4606203C */  c.lt.s  $f4, $f6                   
/* 0157C 80ADA50C 00000000 */  nop
/* 01580 80ADA510 45020004 */  bc1fl   .L80ADA524                 
/* 01584 80ADA514 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADA518:
/* 01588 80ADA518 0C2B64F1 */  jal     func_80AD93C4              
/* 0158C 80ADA51C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01590 80ADA520 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADA524:
/* 01594 80ADA524 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01598 80ADA528 03E00008 */  jr      $ra                        
/* 0159C 80ADA52C 00000000 */  nop
