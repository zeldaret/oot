glabel func_809ECF8C
/* 0070C 809ECF8C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00710 809ECF90 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00714 809ECF94 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00718 809ECF98 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 0071C 809ECF9C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00720 809ECFA0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00724 809ECFA4 8C430680 */  lw      $v1, 0x0680($v0)           ## 00000680
/* 00728 809ECFA8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0072C 809ECFAC 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 00730 809ECFB0 306E0080 */  andi    $t6, $v1, 0x0080           ## $t6 = 00000000
/* 00734 809ECFB4 51C0000A */  beql    $t6, $zero, .L809ECFE0     
/* 00738 809ECFB8 260401D0 */  addiu   $a0, $s0, 0x01D0           ## $a0 = 000001D0
/* 0073C 809ECFBC 8C4F0118 */  lw      $t7, 0x0118($v0)           ## 00000118
/* 00740 809ECFC0 2401FF7F */  addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
/* 00744 809ECFC4 0061C024 */  and     $t8, $v1, $at              
/* 00748 809ECFC8 148F0004 */  bne     $a0, $t7, .L809ECFDC       
/* 0074C 809ECFCC 241900C8 */  addiu   $t9, $zero, 0x00C8         ## $t9 = 000000C8
/* 00750 809ECFD0 AC580680 */  sw      $t8, 0x0680($v0)           ## 00000680
/* 00754 809ECFD4 AC400118 */  sw      $zero, 0x0118($v0)         ## 00000118
/* 00758 809ECFD8 A4590850 */  sh      $t9, 0x0850($v0)           ## 00000850
.L809ECFDC:
/* 0075C 809ECFDC 260401D0 */  addiu   $a0, $s0, 0x01D0           ## $a0 = 000001D0
.L809ECFE0:
/* 00760 809ECFE0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00764 809ECFE4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00768 809ECFE8 260401D2 */  addiu   $a0, $s0, 0x01D2           ## $a0 = 000001D2
/* 0076C 809ECFEC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00770 809ECFF0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00774 809ECFF4 24070258 */  addiu   $a3, $zero, 0x0258         ## $a3 = 00000258
/* 00778 809ECFF8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0077C 809ECFFC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00780 809ED000 260401CE */  addiu   $a0, $s0, 0x01CE           ## $a0 = 000001CE
/* 00784 809ED004 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 00788 809ED008 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0078C 809ED00C 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 00790 809ED010 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00794 809ED014 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00798 809ED018 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0079C 809ED01C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 007A0 809ED020 860801C8 */  lh      $t0, 0x01C8($s0)           ## 000001C8
/* 007A4 809ED024 2509FFFF */  addiu   $t1, $t0, 0xFFFF           ## $t1 = FFFFFFFF
/* 007A8 809ED028 A60901C8 */  sh      $t1, 0x01C8($s0)           ## 000001C8
/* 007AC 809ED02C 860A01C8 */  lh      $t2, 0x01C8($s0)           ## 000001C8
/* 007B0 809ED030 55400004 */  bnel    $t2, $zero, .L809ED044     
/* 007B4 809ED034 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 007B8 809ED038 0C27B272 */  jal     func_809EC9C8              
/* 007BC 809ED03C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007C0 809ED040 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809ED044:
/* 007C4 809ED044 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 007C8 809ED048 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 007CC 809ED04C 03E00008 */  jr      $ra                        
/* 007D0 809ED050 00000000 */  nop
