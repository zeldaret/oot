.late_rodata
glabel D_80A96B50
    .float 0.005

.text
glabel func_80A95D90
/* 00A40 80A95D90 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 00A44 80A95D94 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 00A48 80A95D98 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 00A4C 80A95D9C AFB50058 */  sw      $s5, 0x0058($sp)           
/* 00A50 80A95DA0 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 00A54 80A95DA4 AFB40054 */  sw      $s4, 0x0054($sp)           
/* 00A58 80A95DA8 0080A025 */  or      $s4, $a0, $zero            ## $s4 = 00000000
/* 00A5C 80A95DAC AFBF005C */  sw      $ra, 0x005C($sp)           
/* 00A60 80A95DB0 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00A64 80A95DB4 4405A000 */  mfc1    $a1, $f20                  
/* 00A68 80A95DB8 AFB30050 */  sw      $s3, 0x0050($sp)           
/* 00A6C 80A95DBC AFB2004C */  sw      $s2, 0x004C($sp)           
/* 00A70 80A95DC0 AFB10048 */  sw      $s1, 0x0048($sp)           
/* 00A74 80A95DC4 AFB00044 */  sw      $s0, 0x0044($sp)           
/* 00A78 80A95DC8 F7B80038 */  sdc1    $f24, 0x0038($sp)          
/* 00A7C 80A95DCC F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 00A80 80A95DD0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00A84 80A95DD4 0C01DE80 */  jal     Math_ApproxF
              
/* 00A88 80A95DD8 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 00A8C 80A95DDC 8682001C */  lh      $v0, 0x001C($s4)           ## 0000001C
/* 00A90 80A95DE0 268400B4 */  addiu   $a0, $s4, 0x00B4           ## $a0 = 000000B4
/* 00A94 80A95DE4 24054800 */  addiu   $a1, $zero, 0x4800         ## $a1 = 00004800
/* 00A98 80A95DE8 14400045 */  bne     $v0, $zero, .L80A95F00     
/* 00A9C 80A95DEC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00AA0 80A95DF0 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00AA4 80A95DF4 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 00AA8 80A95DF8 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00AAC 80A95DFC 4481B000 */  mtc1    $at, $f22                  ## $f22 = 3.00
/* 00AB0 80A95E00 26900024 */  addiu   $s0, $s4, 0x0024           ## $s0 = 00000024
/* 00AB4 80A95E04 240E000C */  addiu   $t6, $zero, 0x000C         ## $t6 = 0000000C
/* 00AB8 80A95E08 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 00ABC 80A95E0C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00AC0 80A95E10 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 00AC4 80A95E14 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 00AC8 80A95E18 4406B000 */  mfc1    $a2, $f22                  
/* 00ACC 80A95E1C AFA80020 */  sw      $t0, 0x0020($sp)           
/* 00AD0 80A95E20 AFB9001C */  sw      $t9, 0x001C($sp)           
/* 00AD4 80A95E24 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00AD8 80A95E28 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00ADC 80A95E2C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00AE0 80A95E30 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000024
/* 00AE4 80A95E34 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00AE8 80A95E38 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00AEC 80A95E3C 0C00A5E9 */  jal     EffectSsHahen_SpawnBurst              
/* 00AF0 80A95E40 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00AF4 80A95E44 3C0180A9 */  lui     $at, %hi(D_80A96B50)       ## $at = 80A90000
/* 00AF8 80A95E48 C4246B50 */  lwc1    $f4, %lo(D_80A96B50)($at)  
/* 00AFC 80A95E4C C6860050 */  lwc1    $f6, 0x0050($s4)           ## 00000050
/* 00B00 80A95E50 4606203C */  c.lt.s  $f4, $f6                   
/* 00B04 80A95E54 00000000 */  nop
/* 00B08 80A95E58 45020020 */  bc1fl   .L80A95EDC                 
/* 00B0C 80A95E5C 96880088 */  lhu     $t0, 0x0088($s4)           ## 00000088
/* 00B10 80A95E60 96820088 */  lhu     $v0, 0x0088($s4)           ## 00000088
/* 00B14 80A95E64 2401FFFA */  addiu   $at, $zero, 0xFFFA         ## $at = FFFFFFFA
/* 00B18 80A95E68 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00B1C 80A95E6C 30490002 */  andi    $t1, $v0, 0x0002           ## $t1 = 00000000
/* 00B20 80A95E70 15200003 */  bne     $t1, $zero, .L80A95E80     
/* 00B24 80A95E74 304A0008 */  andi    $t2, $v0, 0x0008           ## $t2 = 00000000
/* 00B28 80A95E78 51400018 */  beql    $t2, $zero, .L80A95EDC     
/* 00B2C 80A95E7C 96880088 */  lhu     $t0, 0x0088($s4)           ## 00000088
.L80A95E80:
/* 00B30 80A95E80 8E8B0004 */  lw      $t3, 0x0004($s4)           ## 00000004
/* 00B34 80A95E84 E6940058 */  swc1    $f20, 0x0058($s4)          ## 00000058
/* 00B38 80A95E88 E6940054 */  swc1    $f20, 0x0054($s4)          ## 00000054
/* 00B3C 80A95E8C 01616024 */  and     $t4, $t3, $at              
/* 00B40 80A95E90 E6940050 */  swc1    $f20, 0x0050($s4)          ## 00000050
/* 00B44 80A95E94 E6940068 */  swc1    $f20, 0x0068($s4)          ## 00000068
/* 00B48 80A95E98 AE8C0004 */  sw      $t4, 0x0004($s4)           ## 00000004
/* 00B4C 80A95E9C 4406B000 */  mfc1    $a2, $f22                  
/* 00B50 80A95EA0 240D000C */  addiu   $t5, $zero, 0x000C         ## $t5 = 0000000C
/* 00B54 80A95EA4 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00B58 80A95EA8 240F000F */  addiu   $t7, $zero, 0x000F         ## $t7 = 0000000F
/* 00B5C 80A95EAC 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 00B60 80A95EB0 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 00B64 80A95EB4 AFB90020 */  sw      $t9, 0x0020($sp)           
/* 00B68 80A95EB8 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 00B6C 80A95EBC AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 00B70 80A95EC0 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00B74 80A95EC4 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00B78 80A95EC8 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00B7C 80A95ECC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000024
/* 00B80 80A95ED0 0C00A5E9 */  jal     EffectSsHahen_SpawnBurst              
/* 00B84 80A95ED4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00B88 80A95ED8 96880088 */  lhu     $t0, 0x0088($s4)           ## 00000088
.L80A95EDC:
/* 00B8C 80A95EDC 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00B90 80A95EE0 31090002 */  andi    $t1, $t0, 0x0002           ## $t1 = 00000000
/* 00B94 80A95EE4 5120004D */  beql    $t1, $zero, .L80A9601C     
/* 00B98 80A95EE8 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 00B9C 80A95EEC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00BA0 80A95EF0 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
/* 00BA4 80A95EF4 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00BA8 80A95EF8 10000047 */  beq     $zero, $zero, .L80A96018   
/* 00BAC 80A95EFC A68A001C */  sh      $t2, 0x001C($s4)           ## 0000001C
.L80A95F00:
/* 00BB0 80A95F00 14410045 */  bne     $v0, $at, .L80A96018       
/* 00BB4 80A95F04 27B30078 */  addiu   $s3, $sp, 0x0078           ## $s3 = FFFFFFF0
/* 00BB8 80A95F08 02602025 */  or      $a0, $s3, $zero            ## $a0 = FFFFFFF0
/* 00BBC 80A95F0C 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00BC0 80A95F10 26850024 */  addiu   $a1, $s4, 0x0024           ## $a1 = 00000024
/* 00BC4 80A95F14 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00BC8 80A95F18 868400B4 */  lh      $a0, 0x00B4($s4)           ## 000000B4
/* 00BCC 80A95F1C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00BD0 80A95F20 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 00BD4 80A95F24 868400B4 */  lh      $a0, 0x00B4($s4)           ## 000000B4
/* 00BD8 80A95F28 46080602 */  mul.s   $f24, $f0, $f8             
/* 00BDC 80A95F2C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00BE0 80A95F30 00000000 */  nop
/* 00BE4 80A95F34 E7A00068 */  swc1    $f0, 0x0068($sp)           
/* 00BE8 80A95F38 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00BEC 80A95F3C 868400B6 */  lh      $a0, 0x00B6($s4)           ## 000000B6
/* 00BF0 80A95F40 3C01C1A0 */  lui     $at, 0xC1A0                ## $at = C1A00000
/* 00BF4 80A95F44 44815000 */  mtc1    $at, $f10                  ## $f10 = -20.00
/* 00BF8 80A95F48 C7B00068 */  lwc1    $f16, 0x0068($sp)          
/* 00BFC 80A95F4C 868400B4 */  lh      $a0, 0x00B4($s4)           ## 000000B4
/* 00C00 80A95F50 46105482 */  mul.s   $f18, $f10, $f16           
/* 00C04 80A95F54 00000000 */  nop
/* 00C08 80A95F58 46120502 */  mul.s   $f20, $f0, $f18            
/* 00C0C 80A95F5C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00C10 80A95F60 00000000 */  nop
/* 00C14 80A95F64 E7A00068 */  swc1    $f0, 0x0068($sp)           
/* 00C18 80A95F68 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00C1C 80A95F6C 868400B6 */  lh      $a0, 0x00B6($s4)           ## 000000B6
/* 00C20 80A95F70 3C01C1A0 */  lui     $at, 0xC1A0                ## $at = C1A00000
/* 00C24 80A95F74 44812000 */  mtc1    $at, $f4                   ## $f4 = -20.00
/* 00C28 80A95F78 C7A60068 */  lwc1    $f6, 0x0068($sp)           
/* 00C2C 80A95F7C 3C1180A9 */  lui     $s1, %hi(D_80A96A5C)       ## $s1 = 80A90000
/* 00C30 80A95F80 26316A5C */  addiu   $s1, $s1, %lo(D_80A96A5C)  ## $s1 = 80A96A5C
/* 00C34 80A95F84 46062202 */  mul.s   $f8, $f4, $f6              
/* 00C38 80A95F88 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00C3C 80A95F8C 24120004 */  addiu   $s2, $zero, 0x0004         ## $s2 = 00000004
/* 00C40 80A95F90 46080582 */  mul.s   $f22, $f0, $f8             
/* 00C44 80A95F94 00000000 */  nop
.L80A95F98:
/* 00C48 80A95F98 240B01F4 */  addiu   $t3, $zero, 0x01F4         ## $t3 = 000001F4
/* 00C4C 80A95F9C 240C0032 */  addiu   $t4, $zero, 0x0032         ## $t4 = 00000032
/* 00C50 80A95FA0 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 00C54 80A95FA4 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 00C58 80A95FA8 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00C5C 80A95FAC 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFF0
/* 00C60 80A95FB0 02203025 */  or      $a2, $s1, $zero            ## $a2 = 80A96A5C
/* 00C64 80A95FB4 0C00A1B3 */  jal     func_800286CC              
/* 00C68 80A95FB8 02203825 */  or      $a3, $s1, $zero            ## $a3 = 80A96A5C
/* 00C6C 80A95FBC C7AA0078 */  lwc1    $f10, 0x0078($sp)          
/* 00C70 80A95FC0 C7B2007C */  lwc1    $f18, 0x007C($sp)          
/* 00C74 80A95FC4 C7A60080 */  lwc1    $f6, 0x0080($sp)           
/* 00C78 80A95FC8 46145400 */  add.s   $f16, $f10, $f20           
/* 00C7C 80A95FCC 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00C80 80A95FD0 46189100 */  add.s   $f4, $f18, $f24            
/* 00C84 80A95FD4 E7B00078 */  swc1    $f16, 0x0078($sp)          
/* 00C88 80A95FD8 46163200 */  add.s   $f8, $f6, $f22             
/* 00C8C 80A95FDC E7A4007C */  swc1    $f4, 0x007C($sp)           
/* 00C90 80A95FE0 1612FFED */  bne     $s0, $s2, .L80A95F98       
/* 00C94 80A95FE4 E7A80080 */  swc1    $f8, 0x0080($sp)           
/* 00C98 80A95FE8 240D01F4 */  addiu   $t5, $zero, 0x01F4         ## $t5 = 000001F4
/* 00C9C 80A95FEC 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 00CA0 80A95FF0 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00CA4 80A95FF4 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00CA8 80A95FF8 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00CAC 80A95FFC 26850008 */  addiu   $a1, $s4, 0x0008           ## $a1 = 00000008
/* 00CB0 80A96000 02203025 */  or      $a2, $s1, $zero            ## $a2 = 80A96A5C
/* 00CB4 80A96004 0C00A1B3 */  jal     func_800286CC              
/* 00CB8 80A96008 02203825 */  or      $a3, $s1, $zero            ## $a3 = 80A96A5C
/* 00CBC 80A9600C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00CC0 80A96010 0C2A55D2 */  jal     func_80A95748              
/* 00CC4 80A96014 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000000
.L80A96018:
/* 00CC8 80A96018 8FBF005C */  lw      $ra, 0x005C($sp)           
.L80A9601C:
/* 00CCC 80A9601C D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 00CD0 80A96020 D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 00CD4 80A96024 D7B80038 */  ldc1    $f24, 0x0038($sp)          
/* 00CD8 80A96028 8FB00044 */  lw      $s0, 0x0044($sp)           
/* 00CDC 80A9602C 8FB10048 */  lw      $s1, 0x0048($sp)           
/* 00CE0 80A96030 8FB2004C */  lw      $s2, 0x004C($sp)           
/* 00CE4 80A96034 8FB30050 */  lw      $s3, 0x0050($sp)           
/* 00CE8 80A96038 8FB40054 */  lw      $s4, 0x0054($sp)           
/* 00CEC 80A9603C 8FB50058 */  lw      $s5, 0x0058($sp)           
/* 00CF0 80A96040 03E00008 */  jr      $ra                        
/* 00CF4 80A96044 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
