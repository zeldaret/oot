.late_rodata
glabel D_80B91020
    .float 10000.0

.text
glabel ObjBean_CheckForHorseTrample
/* 00818 80B8F298 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0081C 80B8F29C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00820 80B8F2A0 AFB20028 */  sw      $s2, 0x0028($sp)           
/* 00824 80B8F2A4 AFB10024 */  sw      $s1, 0x0024($sp)           
/* 00828 80B8F2A8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0082C 80B8F2AC F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 00830 80B8F2B0 8CB01C3C */  lw      $s0, 0x1C3C($a1)           ## 00001C3C
/* 00834 80B8F2B4 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00838 80B8F2B8 24110014 */  addiu   $s1, $zero, 0x0014         ## $s1 = 00000014
/* 0083C 80B8F2BC 12000011 */  beq     $s0, $zero, .L80B8F304     
/* 00840 80B8F2C0 3C0180B9 */  lui     $at, %hi(D_80B91020)       ## $at = 80B90000
/* 00844 80B8F2C4 C4341020 */  lwc1    $f20, %lo(D_80B91020)($at) 
/* 00848 80B8F2C8 860E0000 */  lh      $t6, 0x0000($s0)           ## 00000000
.L80B8F2CC:
/* 0084C 80B8F2CC 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00850 80B8F2D0 562E000A */  bnel    $s1, $t6, .L80B8F2FC       
/* 00854 80B8F2D4 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
/* 00858 80B8F2D8 0C032D94 */  jal     Math3D_Vec3fDistSq              
/* 0085C 80B8F2DC 26450024 */  addiu   $a1, $s2, 0x0024           ## $a1 = 00000024
/* 00860 80B8F2E0 4614003C */  c.lt.s  $f0, $f20                  
/* 00864 80B8F2E4 00000000 */  nop
/* 00868 80B8F2E8 45020004 */  bc1fl   .L80B8F2FC                 
/* 0086C 80B8F2EC 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
/* 00870 80B8F2F0 10000005 */  beq     $zero, $zero, .L80B8F308   
/* 00874 80B8F2F4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00878 80B8F2F8 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
.L80B8F2FC:
/* 0087C 80B8F2FC 5600FFF3 */  bnel    $s0, $zero, .L80B8F2CC     
/* 00880 80B8F300 860E0000 */  lh      $t6, 0x0000($s0)           ## 00000000
.L80B8F304:
/* 00884 80B8F304 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B8F308:
/* 00888 80B8F308 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0088C 80B8F30C D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00890 80B8F310 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00894 80B8F314 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 00898 80B8F318 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 0089C 80B8F31C 03E00008 */  jr      $ra                        
/* 008A0 80B8F320 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
