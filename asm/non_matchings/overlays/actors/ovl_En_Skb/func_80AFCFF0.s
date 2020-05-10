glabel func_80AFCFF0
/* 00650 80AFCFF0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00654 80AFCFF4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00658 80AFCFF8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0065C 80AFCFFC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00660 80AFD000 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00664 80AFD004 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00668 80AFD008 3C05C5FA */  lui     $a1, 0xC5FA                ## $a1 = C5FA0000
/* 0066C 80AFD00C 248400BC */  addiu   $a0, $a0, 0x00BC           ## $a0 = 000000BC
/* 00670 80AFD010 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00674 80AFD014 3C0743FA */  lui     $a3, 0x43FA                ## $a3 = 43FA0000
/* 00678 80AFD018 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 0067C 80AFD01C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00680 80AFD020 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00684 80AFD024 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00688 80AFD028 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 0068C 80AFD02C 46020032 */  c.eq.s  $f0, $f2                   
/* 00690 80AFD030 01C47021 */  addu    $t6, $t6, $a0              
/* 00694 80AFD034 4503000B */  bc1tl   .L80AFD064                 
/* 00698 80AFD038 44051000 */  mfc1    $a1, $f2                   
/* 0069C 80AFD03C 8DCE1DE4 */  lw      $t6, 0x1DE4($t6)           ## 00011DE4
/* 006A0 80AFD040 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 006A4 80AFD044 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 006A8 80AFD048 51E00006 */  beql    $t7, $zero, .L80AFD064     
/* 006AC 80AFD04C 44051000 */  mfc1    $a1, $f2                   
/* 006B0 80AFD050 0C2BF26A */  jal     func_80AFC9A8              
/* 006B4 80AFD054 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 006B8 80AFD058 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 006BC 80AFD05C 00000000 */  nop
/* 006C0 80AFD060 44051000 */  mfc1    $a1, $f2                   
.L80AFD064:
/* 006C4 80AFD064 260400C4 */  addiu   $a0, $s0, 0x00C4           ## $a0 = 000000C4
/* 006C8 80AFD068 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 006CC 80AFD06C 3C074020 */  lui     $a3, 0x4020                ## $a3 = 40200000
/* 006D0 80AFD070 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 006D4 80AFD074 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 006D8 80AFD078 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 006DC 80AFD07C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 006E0 80AFD080 50400004 */  beql    $v0, $zero, .L80AFD094     
/* 006E4 80AFD084 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 006E8 80AFD088 0C00B55C */  jal     Actor_Kill
              
/* 006EC 80AFD08C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006F0 80AFD090 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AFD094:
/* 006F4 80AFD094 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 006F8 80AFD098 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 006FC 80AFD09C 03E00008 */  jr      $ra                        
/* 00700 80AFD0A0 00000000 */  nop
