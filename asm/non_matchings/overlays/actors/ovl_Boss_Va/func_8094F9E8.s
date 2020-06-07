.late_rodata
glabel D_8095C584
    .float 0.6

.text
glabel func_8094F9E8
/* 00728 8094F9E8 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 0072C 8094F9EC AFB30044 */  sw      $s3, 0x0044($sp)           
/* 00730 8094F9F0 AFB20040 */  sw      $s2, 0x0040($sp)           
/* 00734 8094F9F4 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 00738 8094F9F8 AFBF005C */  sw      $ra, 0x005C($sp)           
/* 0073C 8094F9FC AFBE0058 */  sw      $s8, 0x0058($sp)           
/* 00740 8094FA00 AFB70054 */  sw      $s7, 0x0054($sp)           
/* 00744 8094FA04 AFB60050 */  sw      $s6, 0x0050($sp)           
/* 00748 8094FA08 AFB5004C */  sw      $s5, 0x004C($sp)           
/* 0074C 8094FA0C AFB40048 */  sw      $s4, 0x0048($sp)           
/* 00750 8094FA10 AFB1003C */  sw      $s1, 0x003C($sp)           
/* 00754 8094FA14 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00758 8094FA18 F7B80030 */  sdc1    $f24, 0x0030($sp)          
/* 0075C 8094FA1C F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 00760 8094FA20 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 00764 8094FA24 AFA40080 */  sw      $a0, 0x0080($sp)           
/* 00768 8094FA28 AFA7008C */  sw      $a3, 0x008C($sp)           
/* 0076C 8094FA2C 18C00040 */  blez    $a2, .L8094FB30            
/* 00770 8094FA30 00C09825 */  or      $s3, $a2, $zero            ## $s3 = 00000000
/* 00774 8094FA34 3C018096 */  lui     $at, %hi(D_8095C584)       ## $at = 80960000
/* 00778 8094FA38 C426C584 */  lwc1    $f6, %lo(D_8095C584)($at)  
/* 0077C 8094FA3C C7A4009C */  lwc1    $f4, 0x009C($sp)           
/* 00780 8094FA40 3C178096 */  lui     $s7, %hi(D_8095DF50)       ## $s7 = 80960000
/* 00784 8094FA44 26F7DF50 */  addiu   $s7, $s7, %lo(D_8095DF50)  ## $s7 = 8095DF50
/* 00788 8094FA48 C7B80094 */  lwc1    $f24, 0x0094($sp)          
/* 0078C 8094FA4C C7B40090 */  lwc1    $f20, 0x0090($sp)          
/* 00790 8094FA50 27BE006C */  addiu   $s8, $sp, 0x006C           ## $s8 = FFFFFFEC
/* 00794 8094FA54 2416000C */  addiu   $s6, $zero, 0x000C         ## $s6 = 0000000C
/* 00798 8094FA58 93B5009B */  lbu     $s5, 0x009B($sp)           
/* 0079C 8094FA5C 93B400A3 */  lbu     $s4, 0x00A3($sp)           
/* 007A0 8094FA60 46062581 */  sub.s   $f22, $f4, $f6             
.L8094FA64:
/* 007A4 8094FA64 5680000B */  bnel    $s4, $zero, .L8094FA94     
/* 007A8 8094FA68 4600B40D */  trunc.w.s $f16, $f22                 
/* 007AC 8094FA6C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 007B0 8094FA70 00000000 */  nop
/* 007B4 8094FA74 46160202 */  mul.s   $f8, $f0, $f22             
/* 007B8 8094FA78 4600428D */  trunc.w.s $f10, $f8                  
/* 007BC 8094FA7C 44115000 */  mfc1    $s1, $f10                  
/* 007C0 8094FA80 00000000 */  nop
/* 007C4 8094FA84 00118C00 */  sll     $s1, $s1, 16               
/* 007C8 8094FA88 10000006 */  beq     $zero, $zero, .L8094FAA4   
/* 007CC 8094FA8C 00118C03 */  sra     $s1, $s1, 16               
/* 007D0 8094FA90 4600B40D */  trunc.w.s $f16, $f22                 
.L8094FA94:
/* 007D4 8094FA94 44118000 */  mfc1    $s1, $f16                  
/* 007D8 8094FA98 00000000 */  nop
/* 007DC 8094FA9C 00118C00 */  sll     $s1, $s1, 16               
/* 007E0 8094FAA0 00118C03 */  sra     $s1, $s1, 16               
.L8094FAA4:
/* 007E4 8094FAA4 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 007E8 8094FAA8 4600A306 */  mov.s   $f12, $f20                 
/* 007EC 8094FAAC 02360019 */  multu   $s1, $s6                   
/* 007F0 8094FAB0 C6460024 */  lwc1    $f6, 0x0024($s2)           ## 00000024
/* 007F4 8094FAB4 4600C306 */  mov.s   $f12, $f24                 
/* 007F8 8094FAB8 0000C012 */  mflo    $t8                        
/* 007FC 8094FABC 02588021 */  addu    $s0, $s2, $t8              
/* 00800 8094FAC0 C61201FC */  lwc1    $f18, 0x01FC($s0)          ## 000001FC
/* 00804 8094FAC4 46009100 */  add.s   $f4, $f18, $f0             
/* 00808 8094FAC8 46062201 */  sub.s   $f8, $f4, $f6              
/* 0080C 8094FACC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00810 8094FAD0 E7A8006C */  swc1    $f8, 0x006C($sp)           
/* 00814 8094FAD4 C60A0200 */  lwc1    $f10, 0x0200($s0)          ## 00000200
/* 00818 8094FAD8 C6520028 */  lwc1    $f18, 0x0028($s2)          ## 00000028
/* 0081C 8094FADC 4600A306 */  mov.s   $f12, $f20                 
/* 00820 8094FAE0 46005400 */  add.s   $f16, $f10, $f0            
/* 00824 8094FAE4 46128101 */  sub.s   $f4, $f16, $f18            
/* 00828 8094FAE8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0082C 8094FAEC E7A40070 */  swc1    $f4, 0x0070($sp)           
/* 00830 8094FAF0 C6060204 */  lwc1    $f6, 0x0204($s0)           ## 00000204
/* 00834 8094FAF4 C64A002C */  lwc1    $f10, 0x002C($s2)          ## 0000002C
/* 00838 8094FAF8 87B9008E */  lh      $t9, 0x008E($sp)           
/* 0083C 8094FAFC 46003200 */  add.s   $f8, $f6, $f0              
/* 00840 8094FB00 AFB50014 */  sw      $s5, 0x0014($sp)           
/* 00844 8094FB04 8FA40080 */  lw      $a0, 0x0080($sp)           
/* 00848 8094FB08 02E02825 */  or      $a1, $s7, $zero            ## $a1 = 8095DF50
/* 0084C 8094FB0C 460A4401 */  sub.s   $f16, $f8, $f10            
/* 00850 8094FB10 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 00854 8094FB14 03C03825 */  or      $a3, $s8, $zero            ## $a3 = FFFFFFEC
/* 00858 8094FB18 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 0085C 8094FB1C 0C256E03 */  jal     func_8095B80C              
/* 00860 8094FB20 E7B00074 */  swc1    $f16, 0x0074($sp)          
/* 00864 8094FB24 2673FFFF */  addiu   $s3, $s3, 0xFFFF           ## $s3 = FFFFFFFF
/* 00868 8094FB28 1660FFCE */  bne     $s3, $zero, .L8094FA64     
/* 0086C 8094FB2C 00000000 */  nop
.L8094FB30:
/* 00870 8094FB30 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 00874 8094FB34 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 00878 8094FB38 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 0087C 8094FB3C D7B80030 */  ldc1    $f24, 0x0030($sp)          
/* 00880 8094FB40 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 00884 8094FB44 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 00888 8094FB48 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 0088C 8094FB4C 8FB30044 */  lw      $s3, 0x0044($sp)           
/* 00890 8094FB50 8FB40048 */  lw      $s4, 0x0048($sp)           
/* 00894 8094FB54 8FB5004C */  lw      $s5, 0x004C($sp)           
/* 00898 8094FB58 8FB60050 */  lw      $s6, 0x0050($sp)           
/* 0089C 8094FB5C 8FB70054 */  lw      $s7, 0x0054($sp)           
/* 008A0 8094FB60 8FBE0058 */  lw      $s8, 0x0058($sp)           
/* 008A4 8094FB64 03E00008 */  jr      $ra                        
/* 008A8 8094FB68 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
