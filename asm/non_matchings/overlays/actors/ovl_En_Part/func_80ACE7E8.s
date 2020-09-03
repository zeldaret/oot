glabel func_80ACE7E8
/* 00A18 80ACE7E8 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 00A1C 80ACE7EC 3C0E80AD */  lui     $t6, %hi(D_80ACF1EC)       ## $t6 = 80AD0000
/* 00A20 80ACE7F0 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 00A24 80ACE7F4 AFB00050 */  sw      $s0, 0x0050($sp)           
/* 00A28 80ACE7F8 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 00A2C 80ACE7FC AFA5007C */  sw      $a1, 0x007C($sp)           
/* 00A30 80ACE800 25CEF1EC */  addiu   $t6, $t6, %lo(D_80ACF1EC)  ## $t6 = 80ACF1EC
/* 00A34 80ACE804 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80ACF1EC
/* 00A38 80ACE808 27A6006C */  addiu   $a2, $sp, 0x006C           ## $a2 = FFFFFFF4
/* 00A3C 80ACE80C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A40 80ACE810 ACD80000 */  sw      $t8, 0x0000($a2)           ## FFFFFFF4
/* 00A44 80ACE814 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80ACF1F0
/* 00A48 80ACE818 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00A4C 80ACE81C 00C03825 */  or      $a3, $a2, $zero            ## $a3 = FFFFFFF4
/* 00A50 80ACE820 ACCF0004 */  sw      $t7, 0x0004($a2)           ## FFFFFFF8
/* 00A54 80ACE824 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80ACF1F4
/* 00A58 80ACE828 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00A5C 80ACE82C 240D0007 */  addiu   $t5, $zero, 0x0007         ## $t5 = 00000007
/* 00A60 80ACE830 ACD80008 */  sw      $t8, 0x0008($a2)           ## FFFFFFFC
/* 00A64 80ACE834 8C820118 */  lw      $v0, 0x0118($a0)           ## 00000118
/* 00A68 80ACE838 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 00A6C 80ACE83C 50400005 */  beql    $v0, $zero, .L80ACE854     
/* 00A70 80ACE840 C6040054 */  lwc1    $f4, 0x0054($s0)           ## 00000054
/* 00A74 80ACE844 8C590130 */  lw      $t9, 0x0130($v0)           ## 00000130
/* 00A78 80ACE848 57200025 */  bnel    $t9, $zero, .L80ACE8E0     
/* 00A7C 80ACE84C 8603014E */  lh      $v1, 0x014E($s0)           ## 0000014E
/* 00A80 80ACE850 C6040054 */  lwc1    $f4, 0x0054($s0)           ## 00000054
.L80ACE854:
/* 00A84 80ACE854 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 00A88 80ACE858 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00A8C 80ACE85C 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00A90 80ACE860 46062202 */  mul.s   $f8, $f4, $f6              
/* 00A94 80ACE864 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 00A98 80ACE868 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00A9C 80ACE86C 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 00AA0 80ACE870 AFA8002C */  sw      $t0, 0x002C($sp)           
/* 00AA4 80ACE874 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 00AA8 80ACE878 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 00AAC 80ACE87C 4600428D */  trunc.w.s $f10, $f8                  
/* 00AB0 80ACE880 AFAF001C */  sw      $t7, 0x001C($sp)           
/* 00AB4 80ACE884 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 00AB8 80ACE888 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 00ABC 80ACE88C 44095000 */  mfc1    $t1, $f10                  
/* 00AC0 80ACE890 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00AC4 80ACE894 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 00AC8 80ACE898 00095400 */  sll     $t2, $t1, 16               
/* 00ACC 80ACE89C 000A5C03 */  sra     $t3, $t2, 16               
/* 00AD0 80ACE8A0 000B6080 */  sll     $t4, $t3,  2               
/* 00AD4 80ACE8A4 018B6021 */  addu    $t4, $t4, $t3              
/* 00AD8 80ACE8A8 000C60C0 */  sll     $t4, $t4,  3               
/* 00ADC 80ACE8AC 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00AE0 80ACE8B0 240A0009 */  addiu   $t2, $zero, 0x0009         ## $t2 = 00000009
/* 00AE4 80ACE8B4 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00AE8 80ACE8B8 AFA90034 */  sw      $t1, 0x0034($sp)           
/* 00AEC 80ACE8BC AFAA0038 */  sw      $t2, 0x0038($sp)           
/* 00AF0 80ACE8C0 AFAB003C */  sw      $t3, 0x003C($sp)           
/* 00AF4 80ACE8C4 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 00AF8 80ACE8C8 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00AFC 80ACE8CC 0C00B55C */  jal     Actor_Kill
              
/* 00B00 80ACE8D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B04 80ACE8D4 1000003F */  beq     $zero, $zero, .L80ACE9D4   
/* 00B08 80ACE8D8 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 00B0C 80ACE8DC 8603014E */  lh      $v1, 0x014E($s0)           ## 0000014E
.L80ACE8E0:
/* 00B10 80ACE8E0 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00B14 80ACE8E4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00B18 80ACE8E8 14600030 */  bne     $v1, $zero, .L80ACE9AC     
/* 00B1C 80ACE8EC 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 00B20 80ACE8F0 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00B24 80ACE8F4 8E050008 */  lw      $a1, 0x0008($s0)           ## 00000008
/* 00B28 80ACE8F8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00B2C 80ACE8FC E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 00B30 80ACE900 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00B34 80ACE904 8E05000C */  lw      $a1, 0x000C($s0)           ## 0000000C
/* 00B38 80ACE908 46000506 */  mov.s   $f20, $f0                  
/* 00B3C 80ACE90C 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 00B40 80ACE910 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00B44 80ACE914 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 00B48 80ACE918 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00B4C 80ACE91C E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 00B50 80ACE920 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00B54 80ACE924 8E050010 */  lw      $a1, 0x0010($s0)           ## 00000010
/* 00B58 80ACE928 4600A500 */  add.s   $f20, $f20, $f0            
/* 00B5C 80ACE92C 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 00B60 80ACE930 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00B64 80ACE934 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 00B68 80ACE938 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00B6C 80ACE93C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00B70 80ACE940 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00B74 80ACE944 4600A500 */  add.s   $f20, $f20, $f0            
/* 00B78 80ACE948 26040154 */  addiu   $a0, $s0, 0x0154           ## $a0 = 00000154
/* 00B7C 80ACE94C 44051000 */  mfc1    $a1, $f2                   
/* 00B80 80ACE950 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00B84 80ACE954 3C073E80 */  lui     $a3, 0x3E80                ## $a3 = 3E800000
/* 00B88 80ACE958 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00B8C 80ACE95C E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 00B90 80ACE960 4600A500 */  add.s   $f20, $f20, $f0            
/* 00B94 80ACE964 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00B98 80ACE968 00000000 */  nop
/* 00B9C 80ACE96C 4606A032 */  c.eq.s  $f20, $f6                  
/* 00BA0 80ACE970 00000000 */  nop
/* 00BA4 80ACE974 4500000B */  bc1f    .L80ACE9A4                 
/* 00BA8 80ACE978 00000000 */  nop
/* 00BAC 80ACE97C 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
/* 00BB0 80ACE980 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BB4 80ACE984 2405383A */  addiu   $a1, $zero, 0x383A         ## $a1 = 0000383A
/* 00BB8 80ACE988 844C0014 */  lh      $t4, 0x0014($v0)           ## 00000014
/* 00BBC 80ACE98C 258DFFFF */  addiu   $t5, $t4, 0xFFFF           ## $t5 = FFFFFFFF
/* 00BC0 80ACE990 A44D0014 */  sh      $t5, 0x0014($v0)           ## 00000014
/* 00BC4 80ACE994 860E014E */  lh      $t6, 0x014E($s0)           ## 0000014E
/* 00BC8 80ACE998 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 00BCC 80ACE99C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00BD0 80ACE9A0 A60F014E */  sh      $t7, 0x014E($s0)           ## 0000014E
.L80ACE9A4:
/* 00BD4 80ACE9A4 10000005 */  beq     $zero, $zero, .L80ACE9BC   
/* 00BD8 80ACE9A8 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
.L80ACE9AC:
/* 00BDC 80ACE9AC 18600003 */  blez    $v1, .L80ACE9BC            
/* 00BE0 80ACE9B0 2478FFFF */  addiu   $t8, $v1, 0xFFFF           ## $t8 = FFFFFFFF
/* 00BE4 80ACE9B4 A618014E */  sh      $t8, 0x014E($s0)           ## 0000014E
/* 00BE8 80ACE9B8 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
.L80ACE9BC:
/* 00BEC 80ACE9BC 905900AF */  lbu     $t9, 0x00AF($v0)           ## 000000AF
/* 00BF0 80ACE9C0 53200004 */  beql    $t9, $zero, .L80ACE9D4     
/* 00BF4 80ACE9C4 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 00BF8 80ACE9C8 0C00B55C */  jal     Actor_Kill
              
/* 00BFC 80ACE9CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C00 80ACE9D0 8FBF0054 */  lw      $ra, 0x0054($sp)           
.L80ACE9D4:
/* 00C04 80ACE9D4 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 00C08 80ACE9D8 8FB00050 */  lw      $s0, 0x0050($sp)           
/* 00C0C 80ACE9DC 03E00008 */  jr      $ra                        
/* 00C10 80ACE9E0 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
