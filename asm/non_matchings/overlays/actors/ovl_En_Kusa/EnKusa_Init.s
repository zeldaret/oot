glabel EnKusa_Init
/* 006E8 80A9B688 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 006EC 80A9B68C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 006F0 80A9B690 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 006F4 80A9B694 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 006F8 80A9B698 3C0580AA */  lui     $a1, %hi(D_80A9C27C)       ## $a1 = 80AA0000
/* 006FC 80A9B69C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00700 80A9B6A0 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00704 80A9B6A4 24A5C27C */  addiu   $a1, $a1, %lo(D_80A9C27C)  ## $a1 = 80A9C27C
/* 00708 80A9B6A8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0070C 80A9B6AC 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00710 80A9B6B0 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00714 80A9B6B4 11C00006 */  beq     $t6, $zero, .L80A9B6D0     
/* 00718 80A9B6B8 00000000 */  nop
/* 0071C 80A9B6BC C60400F4 */  lwc1    $f4, 0x00F4($s0)           ## 000000F4
/* 00720 80A9B6C0 44813000 */  mtc1    $at, $f6                   ## $f6 = 1000.00
/* 00724 80A9B6C4 00000000 */  nop
/* 00728 80A9B6C8 46062200 */  add.s   $f8, $f4, $f6              
/* 0072C 80A9B6CC E60800F4 */  swc1    $f8, 0x00F4($s0)           ## 000000F4
.L80A9B6D0:
/* 00730 80A9B6D0 0C2A6D8C */  jal     func_80A9B630              
/* 00734 80A9B6D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00738 80A9B6D8 3C0680AA */  lui     $a2, %hi(D_80A9C234)       ## $a2 = 80AA0000
/* 0073C 80A9B6DC 24C6C234 */  addiu   $a2, $a2, %lo(D_80A9C234)  ## $a2 = 80A9C234
/* 00740 80A9B6E0 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00744 80A9B6E4 0C0187B5 */  jal     func_80061ED4              
/* 00748 80A9B6E8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0074C 80A9B6EC 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 00750 80A9B6F0 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 00754 80A9B6F4 55E0000B */  bnel    $t7, $zero, .L80A9B724     
/* 00758 80A9B6F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0075C 80A9B6FC 44816000 */  mtc1    $at, $f12                  ## $f12 = 65536.00
/* 00760 80A9B700 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00764 80A9B704 00000000 */  nop
/* 00768 80A9B708 4600028D */  trunc.w.s $f10, $f0                  
/* 0076C 80A9B70C 44025000 */  mfc1    $v0, $f10                  
/* 00770 80A9B710 00000000 */  nop
/* 00774 80A9B714 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 00778 80A9B718 A6020016 */  sh      $v0, 0x0016($s0)           ## 00000016
/* 0077C 80A9B71C A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 00780 80A9B720 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A9B724:
/* 00784 80A9B724 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00788 80A9B728 0C2A6BEB */  jal     func_80A9AFAC              
/* 0078C 80A9B72C 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 00790 80A9B730 14400005 */  bne     $v0, $zero, .L80A9B748     
/* 00794 80A9B734 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00798 80A9B738 0C00B55C */  jal     Actor_Kill
              
/* 0079C 80A9B73C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007A0 80A9B740 1000001C */  beq     $zero, $zero, .L80A9B7B4   
/* 007A4 80A9B744 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A9B748:
/* 007A8 80A9B748 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 007AC 80A9B74C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 007B0 80A9B750 3C0580AA */  lui     $a1, %hi(D_80A9C200)       ## $a1 = 80AA0000
/* 007B4 80A9B754 33280003 */  andi    $t0, $t9, 0x0003           ## $t0 = 00000000
/* 007B8 80A9B758 00084840 */  sll     $t1, $t0,  1               
/* 007BC 80A9B75C 00A92821 */  addu    $a1, $a1, $t1              
/* 007C0 80A9B760 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 007C4 80A9B764 00812021 */  addu    $a0, $a0, $at              
/* 007C8 80A9B768 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 007CC 80A9B76C 84A5C200 */  lh      $a1, %lo(D_80A9C200)($a1)  
/* 007D0 80A9B770 A202019E */  sb      $v0, 0x019E($s0)           ## 0000019E
/* 007D4 80A9B774 820A019E */  lb      $t2, 0x019E($s0)           ## 0000019E
/* 007D8 80A9B778 3C0480AA */  lui     $a0, %hi(D_80A9C2D8)       ## $a0 = 80AA0000
/* 007DC 80A9B77C 2484C2D8 */  addiu   $a0, $a0, %lo(D_80A9C2D8)  ## $a0 = 80A9C2D8
/* 007E0 80A9B780 05410009 */  bgez    $t2, .L80A9B7A8            
/* 007E4 80A9B784 3C0680AA */  lui     $a2, %hi(D_80A9C308)       ## $a2 = 80AA0000
/* 007E8 80A9B788 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 007EC 80A9B78C 24C6C308 */  addiu   $a2, $a2, %lo(D_80A9C308)  ## $a2 = 80A9C308
/* 007F0 80A9B790 0C00084C */  jal     osSyncPrintf
              
/* 007F4 80A9B794 24070231 */  addiu   $a3, $zero, 0x0231         ## $a3 = 00000231
/* 007F8 80A9B798 0C00B55C */  jal     Actor_Kill
              
/* 007FC 80A9B79C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00800 80A9B7A0 10000004 */  beq     $zero, $zero, .L80A9B7B4   
/* 00804 80A9B7A4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A9B7A8:
/* 00808 80A9B7A8 0C2A6DFB */  jal     func_80A9B7EC              
/* 0080C 80A9B7AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00810 80A9B7B0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A9B7B4:
/* 00814 80A9B7B4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00818 80A9B7B8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0081C 80A9B7BC 03E00008 */  jr      $ra                        
/* 00820 80A9B7C0 00000000 */  nop


