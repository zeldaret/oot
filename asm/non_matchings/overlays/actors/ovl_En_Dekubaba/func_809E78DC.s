glabel func_809E78DC
/* 0210C 809E78DC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02110 809E78E0 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 02114 809E78E4 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 02118 809E78E8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0211C 809E78EC AFB00014 */  sw      $s0, 0x0014($sp)           
/* 02120 809E78F0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02124 809E78F4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02128 809E78F8 2484017C */  addiu   $a0, $a0, 0x017C           ## $a0 = 0000017C
/* 0212C 809E78FC 262400B4 */  addiu   $a0, $s1, 0x00B4           ## $a0 = 000000B4
/* 02130 809E7900 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 02134 809E7904 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 02138 809E7908 24060E38 */  addiu   $a2, $zero, 0x0E38         ## $a2 = 00000E38
/* 0213C 809E790C 30500001 */  andi    $s0, $v0, 0x0001           ## $s0 = 00000000
/* 02140 809E7910 262401CA */  addiu   $a0, $s1, 0x01CA           ## $a0 = 000001CA
/* 02144 809E7914 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 02148 809E7918 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 0214C 809E791C 24060E38 */  addiu   $a2, $zero, 0x0E38         ## $a2 = 00000E38
/* 02150 809E7920 02028024 */  and     $s0, $s0, $v0              
/* 02154 809E7924 262401CC */  addiu   $a0, $s1, 0x01CC           ## $a0 = 000001CC
/* 02158 809E7928 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 0215C 809E792C 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 02160 809E7930 24060E38 */  addiu   $a2, $zero, 0x0E38         ## $a2 = 00000E38
/* 02164 809E7934 02028024 */  and     $s0, $s0, $v0              
/* 02168 809E7938 262401CE */  addiu   $a0, $s1, 0x01CE           ## $a0 = 000001CE
/* 0216C 809E793C 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 02170 809E7940 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 02174 809E7944 24060E38 */  addiu   $a2, $zero, 0x0E38         ## $a2 = 00000E38
/* 02178 809E7948 02028024 */  and     $s0, $s0, $v0              
/* 0217C 809E794C 12000020 */  beq     $s0, $zero, .L809E79D0     
/* 02180 809E7950 00000000 */  nop
/* 02184 809E7954 922E00AF */  lbu     $t6, 0x00AF($s1)           ## 000000AF
/* 02188 809E7958 55C00006 */  bnel    $t6, $zero, .L809E7974     
/* 0218C 809E795C 922F0249 */  lbu     $t7, 0x0249($s1)           ## 00000249
/* 02190 809E7960 0C279878 */  jal     func_809E61E0              
/* 02194 809E7964 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02198 809E7968 10000019 */  beq     $zero, $zero, .L809E79D0   
/* 0219C 809E796C 00000000 */  nop
/* 021A0 809E7970 922F0249 */  lbu     $t7, 0x0249($s1)           ## 00000249
.L809E7974:
/* 021A4 809E7974 863901C6 */  lh      $t9, 0x01C6($s1)           ## 000001C6
/* 021A8 809E7978 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 021AC 809E797C 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 021B0 809E7980 17200011 */  bne     $t9, $zero, .L809E79C8     
/* 021B4 809E7984 A2380249 */  sb      $t8, 0x0249($s1)           ## 00000249
/* 021B8 809E7988 44813000 */  mtc1    $at, $f6                   ## $f6 = 80.00
/* 021BC 809E798C C6280230 */  lwc1    $f8, 0x0230($s1)           ## 00000230
/* 021C0 809E7990 C6240090 */  lwc1    $f4, 0x0090($s1)           ## 00000090
/* 021C4 809E7994 46083282 */  mul.s   $f10, $f6, $f8             
/* 021C8 809E7998 460A203C */  c.lt.s  $f4, $f10                  
/* 021CC 809E799C 00000000 */  nop
/* 021D0 809E79A0 45000005 */  bc1f    .L809E79B8                 
/* 021D4 809E79A4 00000000 */  nop
/* 021D8 809E79A8 0C2797E7 */  jal     func_809E5F9C              
/* 021DC 809E79AC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 021E0 809E79B0 10000007 */  beq     $zero, $zero, .L809E79D0   
/* 021E4 809E79B4 00000000 */  nop
.L809E79B8:
/* 021E8 809E79B8 0C27981E */  jal     func_809E6078              
/* 021EC 809E79BC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 021F0 809E79C0 10000003 */  beq     $zero, $zero, .L809E79D0   
/* 021F4 809E79C4 00000000 */  nop
.L809E79C8:
/* 021F8 809E79C8 0C279899 */  jal     func_809E6264              
/* 021FC 809E79CC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L809E79D0:
/* 02200 809E79D0 0C279B73 */  jal     func_809E6DCC              
/* 02204 809E79D4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02208 809E79D8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0220C 809E79DC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 02210 809E79E0 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 02214 809E79E4 03E00008 */  jr      $ra                        
/* 02218 809E79E8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
