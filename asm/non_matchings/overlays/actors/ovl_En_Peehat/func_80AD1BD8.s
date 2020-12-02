glabel func_80AD1BD8
/* 02738 80AD1BD8 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 0273C 80AD1BDC AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 02740 80AD1BE0 AFB30040 */  sw      $s3, 0x0040($sp)           
/* 02744 80AD1BE4 AFB2003C */  sw      $s2, 0x003C($sp)           
/* 02748 80AD1BE8 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 0274C 80AD1BEC AFB00034 */  sw      $s0, 0x0034($sp)           
/* 02750 80AD1BF0 F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 02754 80AD1BF4 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 02758 80AD1BF8 90820311 */  lbu     $v0, 0x0311($a0)           ## 00000311
/* 0275C 80AD1BFC 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 02760 80AD1C00 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 02764 80AD1C04 304E0080 */  andi    $t6, $v0, 0x0080           ## $t6 = 00000000
/* 02768 80AD1C08 15C00005 */  bne     $t6, $zero, .L80AD1C20     
/* 0276C 80AD1C0C 3049FF7F */  andi    $t1, $v0, 0xFF7F           ## $t1 = 00000000
/* 02770 80AD1C10 908F03BD */  lbu     $t7, 0x03BD($a0)           ## 000003BD
/* 02774 80AD1C14 31F80080 */  andi    $t8, $t7, 0x0080           ## $t8 = 00000000
/* 02778 80AD1C18 5300000A */  beql    $t8, $zero, .L80AD1C44     
/* 0277C 80AD1C1C 9222035D */  lbu     $v0, 0x035D($s1)           ## 0000035D
.L80AD1C20:
/* 02780 80AD1C20 923903BD */  lbu     $t9, 0x03BD($s1)           ## 000003BD
/* 02784 80AD1C24 922A035D */  lbu     $t2, 0x035D($s1)           ## 0000035D
/* 02788 80AD1C28 A2290311 */  sb      $t1, 0x0311($s1)           ## 00000311
/* 0278C 80AD1C2C 3328FF7F */  andi    $t0, $t9, 0xFF7F           ## $t0 = 00000000
/* 02790 80AD1C30 314BFFFD */  andi    $t3, $t2, 0xFFFD           ## $t3 = 00000000
/* 02794 80AD1C34 A22803BD */  sb      $t0, 0x03BD($s1)           ## 000003BD
/* 02798 80AD1C38 10000059 */  beq     $zero, $zero, .L80AD1DA0   
/* 0279C 80AD1C3C A22B035D */  sb      $t3, 0x035D($s1)           ## 0000035D
/* 027A0 80AD1C40 9222035D */  lbu     $v0, 0x035D($s1)           ## 0000035D
.L80AD1C44:
/* 027A4 80AD1C44 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 027A8 80AD1C48 2625034C */  addiu   $a1, $s1, 0x034C           ## $a1 = 0000034C
/* 027AC 80AD1C4C 304C0002 */  andi    $t4, $v0, 0x0002           ## $t4 = 00000000
/* 027B0 80AD1C50 11800053 */  beq     $t4, $zero, .L80AD1DA0     
/* 027B4 80AD1C54 304DFFFD */  andi    $t5, $v0, 0xFFFD           ## $t5 = 00000000
/* 027B8 80AD1C58 A22D035D */  sb      $t5, 0x035D($s1)           ## 0000035D
/* 027BC 80AD1C5C 0C00D5CF */  jal     func_8003573C              
/* 027C0 80AD1C60 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 027C4 80AD1C64 922200B1 */  lbu     $v0, 0x00B1($s1)           ## 000000B1
/* 027C8 80AD1C68 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 027CC 80AD1C6C 1041004C */  beq     $v0, $at, .L80AD1DA0       
/* 027D0 80AD1C70 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 027D4 80AD1C74 1041004A */  beq     $v0, $at, .L80AD1DA0       
/* 027D8 80AD1C78 2403000D */  addiu   $v1, $zero, 0x000D         ## $v1 = 0000000D
/* 027DC 80AD1C7C 14620003 */  bne     $v1, $v0, .L80AD1C8C       
/* 027E0 80AD1C80 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 027E4 80AD1C84 10000016 */  beq     $zero, $zero, .L80AD1CE0   
/* 027E8 80AD1C88 A22000AF */  sb      $zero, 0x00AF($s1)         ## 000000AF
.L80AD1C8C:
/* 027EC 80AD1C8C 14410008 */  bne     $v0, $at, .L80AD1CB0       
/* 027F0 80AD1C90 00000000 */  nop
/* 027F4 80AD1C94 8E2E02B0 */  lw      $t6, 0x02B0($s1)           ## 000002B0
/* 027F8 80AD1C98 506E0042 */  beql    $v1, $t6, .L80AD1DA4       
/* 027FC 80AD1C9C 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 02800 80AD1CA0 0C2B459F */  jal     func_80AD167C              
/* 02804 80AD1CA4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02808 80AD1CA8 1000003E */  beq     $zero, $zero, .L80AD1DA4   
/* 0280C 80AD1CAC 8FBF0044 */  lw      $ra, 0x0044($sp)           
.L80AD1CB0:
/* 02810 80AD1CB0 0C00D58A */  jal     Actor_ApplyDamage
              
/* 02814 80AD1CB4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02818 80AD1CB8 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 0281C 80AD1CBC AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 02820 80AD1CC0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02824 80AD1CC4 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 02828 80AD1CC8 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 0282C 80AD1CCC 0C00D09B */  jal     func_8003426C              
/* 02830 80AD1CD0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02834 80AD1CD4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02838 80AD1CD8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0283C 80AD1CDC 24053956 */  addiu   $a1, $zero, 0x3956         ## $a1 = 00003956
.L80AD1CE0:
/* 02840 80AD1CE0 923800B1 */  lbu     $t8, 0x00B1($s1)           ## 000000B1
/* 02844 80AD1CE4 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 02848 80AD1CE8 24100004 */  addiu   $s0, $zero, 0x0004         ## $s0 = 00000004
/* 0284C 80AD1CEC 17010027 */  bne     $t8, $at, .L80AD1D8C       
/* 02850 80AD1CF0 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 02854 80AD1CF4 4481B000 */  mtc1    $at, $f22                  ## $f22 = 25.00
/* 02858 80AD1CF8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0285C 80AD1CFC 4481A000 */  mtc1    $at, $f20                  ## $f20 = 20.00
/* 02860 80AD1D00 27B20054 */  addiu   $s2, $sp, 0x0054           ## $s2 = FFFFFFF4
.L80AD1D04:
/* 02864 80AD1D04 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 02868 80AD1D08 4600A306 */  mov.s   $f12, $f20                 
/* 0286C 80AD1D0C C6240024 */  lwc1    $f4, 0x0024($s1)           ## 00000024
/* 02870 80AD1D10 46040180 */  add.s   $f6, $f0, $f4              
/* 02874 80AD1D14 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 02878 80AD1D18 E7A60054 */  swc1    $f6, 0x0054($sp)           
/* 0287C 80AD1D1C 46160202 */  mul.s   $f8, $f0, $f22             
/* 02880 80AD1D20 C62A0028 */  lwc1    $f10, 0x0028($s1)          ## 00000028
/* 02884 80AD1D24 4600A306 */  mov.s   $f12, $f20                 
/* 02888 80AD1D28 460A4400 */  add.s   $f16, $f8, $f10            
/* 0288C 80AD1D2C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 02890 80AD1D30 E7B00058 */  swc1    $f16, 0x0058($sp)          
/* 02894 80AD1D34 C632002C */  lwc1    $f18, 0x002C($s1)          ## 0000002C
/* 02898 80AD1D38 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 0289C 80AD1D3C AFB90018 */  sw      $t9, 0x0018($sp)           
/* 028A0 80AD1D40 46120100 */  add.s   $f4, $f0, $f18             
/* 028A4 80AD1D44 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 028A8 80AD1D48 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 028AC 80AD1D4C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 028B0 80AD1D50 E7A4005C */  swc1    $f4, 0x005C($sp)           
/* 028B4 80AD1D54 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 028B8 80AD1D58 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFFF4
/* 028BC 80AD1D5C 0C00A935 */  jal     EffectSsEnFire_SpawnVec3f              
/* 028C0 80AD1D60 24070046 */  addiu   $a3, $zero, 0x0046         ## $a3 = 00000046
/* 028C4 80AD1D64 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = 00000003
/* 028C8 80AD1D68 0601FFE6 */  bgez    $s0, .L80AD1D04            
/* 028CC 80AD1D6C 00000000 */  nop
/* 028D0 80AD1D70 24080064 */  addiu   $t0, $zero, 0x0064         ## $t0 = 00000064
/* 028D4 80AD1D74 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 028D8 80AD1D78 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 028DC 80AD1D7C 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 028E0 80AD1D80 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 028E4 80AD1D84 0C00D09B */  jal     func_8003426C              
/* 028E8 80AD1D88 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
.L80AD1D8C:
/* 028EC 80AD1D8C 922900AF */  lbu     $t1, 0x00AF($s1)           ## 000000AF
/* 028F0 80AD1D90 55200004 */  bnel    $t1, $zero, .L80AD1DA4     
/* 028F4 80AD1D94 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 028F8 80AD1D98 0C2B45DF */  jal     func_80AD177C              
/* 028FC 80AD1D9C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80AD1DA0:
/* 02900 80AD1DA0 8FBF0044 */  lw      $ra, 0x0044($sp)           
.L80AD1DA4:
/* 02904 80AD1DA4 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 02908 80AD1DA8 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 0290C 80AD1DAC 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 02910 80AD1DB0 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 02914 80AD1DB4 8FB2003C */  lw      $s2, 0x003C($sp)           
/* 02918 80AD1DB8 8FB30040 */  lw      $s3, 0x0040($sp)           
/* 0291C 80AD1DBC 03E00008 */  jr      $ra                        
/* 02920 80AD1DC0 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
