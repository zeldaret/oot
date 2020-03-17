glabel BgMoriRakkatenjo_Update
/* 00700 808A5C70 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00704 808A5C74 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00708 808A5C78 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 0070C 808A5C7C AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00710 808A5C80 8C820168 */  lw      $v0, 0x0168($a0)           ## 00000168
/* 00714 808A5C84 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00718 808A5C88 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0071C 808A5C8C 18400002 */  blez    $v0, .L808A5C98            
/* 00720 808A5C90 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00724 808A5C94 AC8E0168 */  sw      $t6, 0x0168($a0)           ## 00000168
.L808A5C98:
/* 00728 808A5C98 8E190164 */  lw      $t9, 0x0164($s0)           ## 00000164
/* 0072C 808A5C9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00730 808A5CA0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00734 808A5CA4 0320F809 */  jalr    $ra, $t9                   
/* 00738 808A5CA8 00000000 */  nop
/* 0073C 808A5CAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00740 808A5CB0 0C2295C9 */  jal     func_808A5724              
/* 00744 808A5CB4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00748 808A5CB8 10400018 */  beq     $v0, $zero, .L808A5D1C     
/* 0074C 808A5CBC 3C0F808A */  lui     $t7, %hi(D_808A5E60)       ## $t7 = 808A0000
/* 00750 808A5CC0 85EF5E60 */  lh      $t7, %lo(D_808A5E60)($t7)  
/* 00754 808A5CC4 3C04808A */  lui     $a0, %hi(D_808A5FAC)       ## $a0 = 808A0000
/* 00758 808A5CC8 55E00021 */  bnel    $t7, $zero, .L808A5D50     
/* 0075C 808A5CCC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00760 808A5CD0 0C00084C */  jal     osSyncPrintf
              
/* 00764 808A5CD4 24845FAC */  addiu   $a0, $a0, %lo(D_808A5FAC)  ## $a0 = 808A5FAC
/* 00768 808A5CD8 8E380790 */  lw      $t8, 0x0790($s1)           ## 00000790
/* 0076C 808A5CDC 3C01808A */  lui     $at, %hi(D_808A5E60)       ## $at = 808A0000
/* 00770 808A5CE0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00774 808A5CE4 87080142 */  lh      $t0, 0x0142($t8)           ## 00000142
/* 00778 808A5CE8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0077C 808A5CEC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00780 808A5CF0 A4285E60 */  sh      $t0, %lo(D_808A5E60)($at)  
/* 00784 808A5CF4 8E240790 */  lw      $a0, 0x0790($s1)           ## 00000790
/* 00788 808A5CF8 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 0078C 808A5CFC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00790 808A5D00 0C016BF5 */  jal     Camera_SetCameraData              ## setCameraData
/* 00794 808A5D04 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00798 808A5D08 8E240790 */  lw      $a0, 0x0790($s1)           ## 00000790
/* 0079C 808A5D0C 0C0169DF */  jal     func_8005A77C              
/* 007A0 808A5D10 24050027 */  addiu   $a1, $zero, 0x0027         ## $a1 = 00000027
/* 007A4 808A5D14 1000000E */  beq     $zero, $zero, .L808A5D50   
/* 007A8 808A5D18 8FBF002C */  lw      $ra, 0x002C($sp)           
.L808A5D1C:
/* 007AC 808A5D1C 3C10808A */  lui     $s0, %hi(D_808A5E60)       ## $s0 = 808A0000
/* 007B0 808A5D20 26105E60 */  addiu   $s0, $s0, %lo(D_808A5E60)  ## $s0 = 808A5E60
/* 007B4 808A5D24 86090000 */  lh      $t1, 0x0000($s0)           ## 808A5E60
/* 007B8 808A5D28 3C04808A */  lui     $a0, %hi(D_808A5FD8)       ## $a0 = 808A0000
/* 007BC 808A5D2C 51200008 */  beql    $t1, $zero, .L808A5D50     
/* 007C0 808A5D30 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 007C4 808A5D34 0C00084C */  jal     osSyncPrintf
              
/* 007C8 808A5D38 24845FD8 */  addiu   $a0, $a0, %lo(D_808A5FD8)  ## $a0 = 808A5FD8
/* 007CC 808A5D3C 8E240790 */  lw      $a0, 0x0790($s1)           ## 00000790
/* 007D0 808A5D40 0C0169DF */  jal     func_8005A77C              
/* 007D4 808A5D44 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 007D8 808A5D48 A6000000 */  sh      $zero, 0x0000($s0)         ## 808A5E60
/* 007DC 808A5D4C 8FBF002C */  lw      $ra, 0x002C($sp)           
.L808A5D50:
/* 007E0 808A5D50 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 007E4 808A5D54 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 007E8 808A5D58 03E00008 */  jr      $ra                        
/* 007EC 808A5D5C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


