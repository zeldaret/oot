glabel func_809F2550
/* 00A70 809F2550 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A74 809F2554 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00A78 809F2558 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00A7C 809F255C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00A80 809F2560 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00A84 809F2564 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00A88 809F2568 24840BD0 */  addiu   $a0, $a0, 0x0BD0           ## $a0 = 06000BD0
/* 00A8C 809F256C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00A90 809F2570 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 00A94 809F2574 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00A98 809F2578 468021A0 */  cvt.s.w $f6, $f4                   
/* 00A9C 809F257C 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 00AA0 809F2580 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00AA4 809F2584 24A50BD0 */  addiu   $a1, $a1, 0x0BD0           ## $a1 = 06000BD0
/* 00AA8 809F2588 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00AAC 809F258C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00AB0 809F2590 4600320D */  trunc.w.s $f8, $f6                   
/* 00AB4 809F2594 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 00AB8 809F2598 440F4000 */  mfc1    $t7, $f8                   
/* 00ABC 809F259C 00000000 */  nop
/* 00AC0 809F25A0 A46F0248 */  sh      $t7, 0x0248($v1)           ## 00000248
/* 00AC4 809F25A4 84780248 */  lh      $t8, 0x0248($v1)           ## 00000248
/* 00AC8 809F25A8 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00ACC 809F25AC E7B20018 */  swc1    $f18, 0x0018($sp)          
/* 00AD0 809F25B0 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 00AD4 809F25B4 00000000 */  nop
/* 00AD8 809F25B8 46805420 */  cvt.s.w $f16, $f10                 
/* 00ADC 809F25BC 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00AE0 809F25C0 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 00AE4 809F25C4 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 00AE8 809F25C8 3C19809F */  lui     $t9, %hi(func_809F25E4)    ## $t9 = 809F0000
/* 00AEC 809F25CC 273925E4 */  addiu   $t9, $t9, %lo(func_809F25E4) ## $t9 = 809F25E4
/* 00AF0 809F25D0 AC79022C */  sw      $t9, 0x022C($v1)           ## 0000022C
/* 00AF4 809F25D4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00AF8 809F25D8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00AFC 809F25DC 03E00008 */  jr      $ra                        
/* 00B00 809F25E0 00000000 */  nop


