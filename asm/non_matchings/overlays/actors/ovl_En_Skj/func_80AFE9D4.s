glabel func_80AFE9D4
/* 00724 80AFE9D4 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00728 80AFE9D8 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 0072C 80AFE9DC 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 00730 80AFE9E0 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00734 80AFE9E4 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00738 80AFE9E8 44814000 */  mtc1    $at, $f8                   ## $f8 = 40.00
/* 0073C 80AFE9EC AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00740 80AFE9F0 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00744 80AFE9F4 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 00748 80AFE9F8 E7A40048 */  swc1    $f4, 0x0048($sp)           
/* 0074C 80AFE9FC E7A6004C */  swc1    $f6, 0x004C($sp)           
/* 00750 80AFEA00 E7A80050 */  swc1    $f8, 0x0050($sp)           
/* 00754 80AFEA04 848E00B6 */  lh      $t6, 0x00B6($a0)           ## 000000B6
/* 00758 80AFEA08 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 0075C 80AFEA0C 44819000 */  mtc1    $at, $f18                  ## $f18 = 32768.00
/* 00760 80AFEA10 448E5000 */  mtc1    $t6, $f10                  ## $f10 = 0.00
/* 00764 80AFEA14 3C0180B0 */  lui     $at, %hi(D_80B018FC)       ## $at = 80B00000
/* 00768 80AFEA18 C42618FC */  lwc1    $f6, %lo(D_80B018FC)($at)  
/* 0076C 80AFEA1C 46805420 */  cvt.s.w $f16, $f10                 
/* 00770 80AFEA20 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00774 80AFEA24 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00778 80AFEA28 46128103 */  div.s   $f4, $f16, $f18            
/* 0077C 80AFEA2C 46062302 */  mul.s   $f12, $f4, $f6             
/* 00780 80AFEA30 0C034348 */  jal     Matrix_RotateY              
/* 00784 80AFEA34 00000000 */  nop
/* 00788 80AFEA38 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFF0
/* 0078C 80AFEA3C 0C0346BD */  jal     Matrix_MultVec3f              
/* 00790 80AFEA40 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFE4
/* 00794 80AFEA44 C7A8003C */  lwc1    $f8, 0x003C($sp)           
/* 00798 80AFEA48 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 0079C 80AFEA4C C7B20044 */  lwc1    $f18, 0x0044($sp)          
/* 007A0 80AFEA50 3C0141D8 */  lui     $at, 0x41D8                ## $at = 41D80000
/* 007A4 80AFEA54 460A4400 */  add.s   $f16, $f8, $f10            
/* 007A8 80AFEA58 44815000 */  mtc1    $at, $f10                  ## $f10 = 27.00
/* 007AC 80AFEA5C 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 007B0 80AFEA60 24060116 */  addiu   $a2, $zero, 0x0116         ## $a2 = 00000116
/* 007B4 80AFEA64 E7B0003C */  swc1    $f16, 0x003C($sp)          
/* 007B8 80AFEA68 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 007BC 80AFEA6C 44078000 */  mfc1    $a3, $f16                  
/* 007C0 80AFEA70 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 007C4 80AFEA74 46049180 */  add.s   $f6, $f18, $f4             
/* 007C8 80AFEA78 E7A60044 */  swc1    $f6, 0x0044($sp)           
/* 007CC 80AFEA7C C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 007D0 80AFEA80 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 007D4 80AFEA84 460A4480 */  add.s   $f18, $f8, $f10            
/* 007D8 80AFEA88 E7B20040 */  swc1    $f18, 0x0040($sp)          
/* 007DC 80AFEA8C C7A40040 */  lwc1    $f4, 0x0040($sp)           
/* 007E0 80AFEA90 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 007E4 80AFEA94 860F00B4 */  lh      $t7, 0x00B4($s0)           ## 000000B4
/* 007E8 80AFEA98 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 007EC 80AFEA9C 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 007F0 80AFEAA0 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 007F4 80AFEAA4 861900B8 */  lh      $t9, 0x00B8($s0)           ## 000000B8
/* 007F8 80AFEAA8 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 007FC 80AFEAAC 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00800 80AFEAB0 AFB90020 */  sw      $t9, 0x0020($sp)           
/* 00804 80AFEAB4 10400007 */  beq     $v0, $zero, .L80AFEAD4     
/* 00808 80AFEAB8 3C0141C0 */  lui     $at, 0x41C0                ## $at = 41C00000
/* 0080C 80AFEABC 44814000 */  mtc1    $at, $f8                   ## $f8 = 24.00
/* 00810 80AFEAC0 24080064 */  addiu   $t0, $zero, 0x0064         ## $t0 = 00000064
/* 00814 80AFEAC4 A44801E2 */  sh      $t0, 0x01E2($v0)           ## 000001E2
/* 00818 80AFEAC8 E4480068 */  swc1    $f8, 0x0068($v0)           ## 00000068
/* 0081C 80AFEACC 10000002 */  beq     $zero, $zero, .L80AFEAD8   
/* 00820 80AFEAD0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AFEAD4:
/* 00824 80AFEAD4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AFEAD8:
/* 00828 80AFEAD8 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 0082C 80AFEADC 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00830 80AFEAE0 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 00834 80AFEAE4 03E00008 */  jr      $ra                        
/* 00838 80AFEAE8 00000000 */  nop
