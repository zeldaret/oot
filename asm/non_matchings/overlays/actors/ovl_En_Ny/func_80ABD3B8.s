.late_rodata
glabel D_80ABE4C0
 .word 0xBECCCCCD
glabel D_80ABE4C4
 .word 0xBECCCCCD
glabel D_80ABE4C8
    .float 0.4

glabel D_80ABE4CC
    .float 0.4

.text
glabel func_80ABD3B8
/* 00808 80ABD3B8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0080C 80ABD3BC C48601E8 */  lwc1    $f6, 0x01E8($a0)           ## 000001E8
/* 00810 80ABD3C0 44856000 */  mtc1    $a1, $f12                  ## $f12 = 0.00
/* 00814 80ABD3C4 44867000 */  mtc1    $a2, $f14                  ## $f14 = 0.00
/* 00818 80ABD3C8 46062032 */  c.eq.s  $f4, $f6                   
/* 0081C 80ABD3CC 3C0180AC */  lui     $at, %hi(D_80ABE4C0)       ## $at = 80AC0000
/* 00820 80ABD3D0 45020005 */  bc1fl   .L80ABD3E8                 
/* 00824 80ABD3D4 C4800084 */  lwc1    $f0, 0x0084($a0)           ## 00000084
/* 00828 80ABD3D8 C428E4C0 */  lwc1    $f8, %lo(D_80ABE4C0)($at)  
/* 0082C 80ABD3DC 03E00008 */  jr      $ra                        
/* 00830 80ABD3E0 E488006C */  swc1    $f8, 0x006C($a0)           ## 0000006C
.L80ABD3E4:
/* 00834 80ABD3E4 C4800084 */  lwc1    $f0, 0x0084($a0)           ## 00000084
.L80ABD3E8:
/* 00838 80ABD3E8 3C0180AC */  lui     $at, %hi(D_80ABE4C4)       ## $at = 80AC0000
/* 0083C 80ABD3EC 4600603C */  c.lt.s  $f12, $f0                  
/* 00840 80ABD3F0 00000000 */  nop
/* 00844 80ABD3F4 45030005 */  bc1tl   .L80ABD40C                 
/* 00848 80ABD3F8 4600703C */  c.lt.s  $f14, $f0                  
/* 0084C 80ABD3FC C42AE4C4 */  lwc1    $f10, %lo(D_80ABE4C4)($at) 
/* 00850 80ABD400 03E00008 */  jr      $ra                        
/* 00854 80ABD404 E48A006C */  swc1    $f10, 0x006C($a0)          ## 0000006C
.L80ABD408:
/* 00858 80ABD408 4600703C */  c.lt.s  $f14, $f0                  
.L80ABD40C:
/* 0085C 80ABD40C 00000000 */  nop
/* 00860 80ABD410 45000020 */  bc1f    .L80ABD494                 
/* 00864 80ABD414 00000000 */  nop
/* 00868 80ABD418 C48001EC */  lwc1    $f0, 0x01EC($a0)           ## 000001EC
/* 0086C 80ABD41C C4820060 */  lwc1    $f2, 0x0060($a0)           ## 00000060
/* 00870 80ABD420 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00874 80ABD424 3C0180AC */  lui     $at, %hi(D_80ABE4C8)       ## $at = 80AC0000
/* 00878 80ABD428 4602003C */  c.lt.s  $f0, $f2                   
/* 0087C 80ABD42C E490006C */  swc1    $f16, 0x006C($a0)          ## 0000006C
/* 00880 80ABD430 4502000C */  bc1fl   .L80ABD464                 
/* 00884 80ABD434 4600103C */  c.lt.s  $f2, $f0                   
/* 00888 80ABD438 C432E4C8 */  lwc1    $f18, %lo(D_80ABE4C8)($at) 
/* 0088C 80ABD43C 46121101 */  sub.s   $f4, $f2, $f18             
/* 00890 80ABD440 E4840060 */  swc1    $f4, 0x0060($a0)           ## 00000060
/* 00894 80ABD444 C4860060 */  lwc1    $f6, 0x0060($a0)           ## 00000060
/* 00898 80ABD448 4600303C */  c.lt.s  $f6, $f0                   
/* 0089C 80ABD44C 00000000 */  nop
/* 008A0 80ABD450 45000010 */  bc1f    .L80ABD494                 
/* 008A4 80ABD454 00000000 */  nop
/* 008A8 80ABD458 03E00008 */  jr      $ra                        
/* 008AC 80ABD45C E4800060 */  swc1    $f0, 0x0060($a0)           ## 00000060
.L80ABD460:
/* 008B0 80ABD460 4600103C */  c.lt.s  $f2, $f0                   
.L80ABD464:
/* 008B4 80ABD464 3C0180AC */  lui     $at, %hi(D_80ABE4CC)       ## $at = 80AC0000
/* 008B8 80ABD468 4500000A */  bc1f    .L80ABD494                 
/* 008BC 80ABD46C 00000000 */  nop
/* 008C0 80ABD470 C428E4CC */  lwc1    $f8, %lo(D_80ABE4CC)($at)  
/* 008C4 80ABD474 46081280 */  add.s   $f10, $f2, $f8             
/* 008C8 80ABD478 E48A0060 */  swc1    $f10, 0x0060($a0)          ## 00000060
/* 008CC 80ABD47C C4900060 */  lwc1    $f16, 0x0060($a0)          ## 00000060
/* 008D0 80ABD480 4610003C */  c.lt.s  $f0, $f16                  
/* 008D4 80ABD484 00000000 */  nop
/* 008D8 80ABD488 45000002 */  bc1f    .L80ABD494                 
/* 008DC 80ABD48C 00000000 */  nop
/* 008E0 80ABD490 E4800060 */  swc1    $f0, 0x0060($a0)           ## 00000060
.L80ABD494:
/* 008E4 80ABD494 03E00008 */  jr      $ra                        
/* 008E8 80ABD498 00000000 */  nop
