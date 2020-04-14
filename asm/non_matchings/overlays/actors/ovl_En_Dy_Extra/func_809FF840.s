.late_rodata
glabel D_809FFCEC
    .float 0.02

.text
glabel func_809FF840
/* 00150 809FF840 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00154 809FF844 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00158 809FF848 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0015C 809FF84C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00160 809FF850 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00164 809FF854 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00168 809FF858 3C073BA3 */  lui     $a3, 0x3BA3                ## $a3 = 3BA30000
/* 0016C 809FF85C 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3BA3D70A
/* 00170 809FF860 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00174 809FF864 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00178 809FF868 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0017C 809FF86C 2484006C */  addiu   $a0, $a0, 0x006C           ## $a0 = 0000006C
/* 00180 809FF870 860E0154 */  lh      $t6, 0x0154($s0)           ## 00000154
/* 00184 809FF874 3C0180A0 */  lui     $at, %hi(D_809FFCEC)       ## $at = 80A00000
/* 00188 809FF878 11C0000A */  beq     $t6, $zero, .L809FF8A4     
/* 0018C 809FF87C 00000000 */  nop
/* 00190 809FF880 C6040158 */  lwc1    $f4, 0x0158($s0)           ## 00000158
/* 00194 809FF884 C426FCEC */  lwc1    $f6, %lo(D_809FFCEC)($at)  
/* 00198 809FF888 3C053CF5 */  lui     $a1, 0x3CF5                ## $a1 = 3CF50000
/* 0019C 809FF88C 34A5C28F */  ori     $a1, $a1, 0xC28F           ## $a1 = 3CF5C28F
/* 001A0 809FF890 4606203C */  c.lt.s  $f4, $f6                   
/* 001A4 809FF894 26040158 */  addiu   $a0, $s0, 0x0158           ## $a0 = 00000158
/* 001A8 809FF898 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 001AC 809FF89C 45000005 */  bc1f    .L809FF8B4                 
/* 001B0 809FF8A0 00000000 */  nop
.L809FF8A4:
/* 001B4 809FF8A4 0C00B55C */  jal     Actor_Kill
              
/* 001B8 809FF8A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001BC 809FF8AC 1000000E */  beq     $zero, $zero, .L809FF8E8   
/* 001C0 809FF8B0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809FF8B4:
/* 001C4 809FF8B4 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 001C8 809FF8B8 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 0000CCCD
/* 001CC 809FF8BC 3C01C25C */  lui     $at, 0xC25C                ## $at = C25C0000
/* 001D0 809FF8C0 44815000 */  mtc1    $at, $f10                  ## $f10 = -55.00
/* 001D4 809FF8C4 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 001D8 809FF8C8 460A403C */  c.lt.s  $f8, $f10                  
/* 001DC 809FF8CC 00000000 */  nop
/* 001E0 809FF8D0 45020005 */  bc1fl   .L809FF8E8                 
/* 001E4 809FF8D4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 001E8 809FF8D8 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 001EC 809FF8DC 00000000 */  nop
/* 001F0 809FF8E0 E6100060 */  swc1    $f16, 0x0060($s0)          ## 00000060
/* 001F4 809FF8E4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809FF8E8:
/* 001F8 809FF8E8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 001FC 809FF8EC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00200 809FF8F0 03E00008 */  jr      $ra                        
/* 00204 809FF8F4 00000000 */  nop
