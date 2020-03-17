glabel func_80A906C4
/* 006B4 80A906C4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 006B8 80A906C8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 006BC 80A906CC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 006C0 80A906D0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 006C4 80A906D4 C4860168 */  lwc1    $f6, 0x0168($a0)           ## 00000168
/* 006C8 80A906D8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 006CC 80A906DC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 006D0 80A906E0 24840168 */  addiu   $a0, $a0, 0x0168           ## $a0 = 00000168
/* 006D4 80A906E4 46062032 */  c.eq.s  $f4, $f6                   
/* 006D8 80A906E8 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 006DC 80A906EC 45030004 */  bc1tl   .L80A90700                 
/* 006E0 80A906F0 86050198 */  lh      $a1, 0x0198($s0)           ## 00000198
/* 006E4 80A906F4 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 006E8 80A906F8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 006EC 80A906FC 86050198 */  lh      $a1, 0x0198($s0)           ## 00000198
.L80A90700:
/* 006F0 80A90700 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 006F4 80A90704 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 006F8 80A90708 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 006FC 80A9070C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00700 80A90710 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 00704 80A90714 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00708 80A90718 26040150 */  addiu   $a0, $s0, 0x0150           ## $a0 = 00000150
/* 0070C 80A9071C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00710 80A90720 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00714 80A90724 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00718 80A90728 03E00008 */  jr      $ra                        
/* 0071C 80A9072C 00000000 */  nop


