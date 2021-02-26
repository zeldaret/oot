glabel func_80BA1958
/* 00BF8 80BA1958 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00BFC 80BA195C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00C00 80BA1960 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00C04 80BA1964 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00C08 80BA1968 94820088 */  lhu     $v0, 0x0088($a0)           ## 00000088
/* 00C0C 80BA196C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00C10 80BA1970 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C14 80BA1974 304E000B */  andi    $t6, $v0, 0x000B           ## $t6 = 00000000
/* 00C18 80BA1978 15C00006 */  bne     $t6, $zero, .L80BA1994     
/* 00C1C 80BA197C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00C20 80BA1980 908F0160 */  lbu     $t7, 0x0160($a0)           ## 00000160
/* 00C24 80BA1984 30590040 */  andi    $t9, $v0, 0x0040           ## $t9 = 00000000
/* 00C28 80BA1988 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 00C2C 80BA198C 1300000F */  beq     $t8, $zero, .L80BA19CC     
/* 00C30 80BA1990 00000000 */  nop
.L80BA1994:
/* 00C34 80BA1994 0C2E8403 */  jal     func_80BA100C              
/* 00C38 80BA1998 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C3C 80BA199C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C40 80BA19A0 0C2E8358 */  jal     func_80BA0D60              
/* 00C44 80BA19A4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00C48 80BA19A8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00C4C 80BA19AC 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00C50 80BA19B0 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00C54 80BA19B4 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00C58 80BA19B8 24072887 */  addiu   $a3, $zero, 0x2887         ## $a3 = 00002887
/* 00C5C 80BA19BC 0C00B55C */  jal     Actor_Kill
              
/* 00C60 80BA19C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C64 80BA19C4 10000044 */  beq     $zero, $zero, .L80BA1AD8   
/* 00C68 80BA19C8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80BA19CC:
/* 00C6C 80BA19CC 1320000F */  beq     $t9, $zero, .L80BA1A0C     
/* 00C70 80BA19D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C74 80BA19D4 0C2E84A5 */  jal     func_80BA1294              
/* 00C78 80BA19D8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00C7C 80BA19DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C80 80BA19E0 0C2E8358 */  jal     func_80BA0D60              
/* 00C84 80BA19E4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00C88 80BA19E8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00C8C 80BA19EC 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00C90 80BA19F0 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00C94 80BA19F4 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00C98 80BA19F8 24072887 */  addiu   $a3, $zero, 0x2887         ## $a3 = 00002887
/* 00C9C 80BA19FC 0C00B55C */  jal     Actor_Kill
              
/* 00CA0 80BA1A00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CA4 80BA1A04 10000034 */  beq     $zero, $zero, .L80BA1AD8   
/* 00CA8 80BA1A08 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80BA1A0C:
/* 00CAC 80BA1A0C 0C2E8370 */  jal     func_80BA0DC0              
/* 00CB0 80BA1A10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CB4 80BA1A14 0C00B5FB */  jal     func_8002D7EC              
/* 00CB8 80BA1A18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CBC 80BA1A1C 3C0480BA */  lui     $a0, %hi(D_80BA1B54)       ## $a0 = 80BA0000
/* 00CC0 80BA1A20 3C0580BA */  lui     $a1, %hi(D_80BA1B50)       ## $a1 = 80BA0000
/* 00CC4 80BA1A24 84A51B50 */  lh      $a1, %lo(D_80BA1B50)($a1)  
/* 00CC8 80BA1A28 24841B54 */  addiu   $a0, $a0, %lo(D_80BA1B54)  ## $a0 = 80BA1B54
/* 00CCC 80BA1A2C 0C01DE5F */  jal     Math_StepToS
              
/* 00CD0 80BA1A30 24060064 */  addiu   $a2, $zero, 0x0064         ## $a2 = 00000064
/* 00CD4 80BA1A34 3C0480BA */  lui     $a0, %hi(D_80BA1B5C)       ## $a0 = 80BA0000
/* 00CD8 80BA1A38 3C0580BA */  lui     $a1, %hi(D_80BA1B58)       ## $a1 = 80BA0000
/* 00CDC 80BA1A3C 84A51B58 */  lh      $a1, %lo(D_80BA1B58)($a1)  
/* 00CE0 80BA1A40 24841B5C */  addiu   $a0, $a0, %lo(D_80BA1B5C)  ## $a0 = 80BA1B5C
/* 00CE4 80BA1A44 0C01DE5F */  jal     Math_StepToS
              
/* 00CE8 80BA1A48 24060064 */  addiu   $a2, $zero, 0x0064         ## $a2 = 00000064
/* 00CEC 80BA1A4C 3C0980BA */  lui     $t1, %hi(D_80BA1B54)       ## $t1 = 80BA0000
/* 00CF0 80BA1A50 85291B54 */  lh      $t1, %lo(D_80BA1B54)($t1)  
/* 00CF4 80BA1A54 860800B4 */  lh      $t0, 0x00B4($s0)           ## 000000B4
/* 00CF8 80BA1A58 3C0C80BA */  lui     $t4, %hi(D_80BA1B5C)       ## $t4 = 80BA0000
/* 00CFC 80BA1A5C 860B00B6 */  lh      $t3, 0x00B6($s0)           ## 000000B6
/* 00D00 80BA1A60 01095021 */  addu    $t2, $t0, $t1              
/* 00D04 80BA1A64 A60A00B4 */  sh      $t2, 0x00B4($s0)           ## 000000B4
/* 00D08 80BA1A68 858C1B5C */  lh      $t4, %lo(D_80BA1B5C)($t4)  
/* 00D0C 80BA1A6C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00D10 80BA1A70 240E0085 */  addiu   $t6, $zero, 0x0085         ## $t6 = 00000085
/* 00D14 80BA1A74 016C6821 */  addu    $t5, $t3, $t4              
/* 00D18 80BA1A78 A60D00B6 */  sh      $t5, 0x00B6($s0)           ## 000000B6
/* 00D1C 80BA1A7C AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00D20 80BA1A80 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D24 80BA1A84 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00D28 80BA1A88 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 00D2C 80BA1A8C 3C074170 */  lui     $a3, 0x4170                ## $a3 = 41700000
/* 00D30 80BA1A90 0C00B92D */  jal     Actor_UpdateBgCheckInfo              
/* 00D34 80BA1A94 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00D38 80BA1A98 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 00D3C 80BA1A9C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00D40 80BA1AA0 0C0189B7 */  jal     Collider_UpdateCylinder
              
/* 00D44 80BA1AA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D48 80BA1AA8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00D4C 80BA1AAC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00D50 80BA1AB0 02218021 */  addu    $s0, $s1, $at              
/* 00D54 80BA1AB4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00D58 80BA1AB8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D5C 80BA1ABC 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOC
/* 00D60 80BA1AC0 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00D64 80BA1AC4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D68 80BA1AC8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00D6C 80BA1ACC 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00D70 80BA1AD0 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00D74 80BA1AD4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80BA1AD8:
/* 00D78 80BA1AD8 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00D7C 80BA1ADC 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00D80 80BA1AE0 03E00008 */  jr      $ra                        
/* 00D84 80BA1AE4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
