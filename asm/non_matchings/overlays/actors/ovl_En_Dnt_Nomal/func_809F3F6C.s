glabel func_809F3F6C
/* 00CAC 809F3F6C 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00CB0 809F3F70 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00CB4 809F3F74 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00CB8 809F3F78 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 00CBC 809F3F7C C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 00CC0 809F3F80 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00CC4 809F3F84 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00CC8 809F3F88 AFA40044 */  sw      $a0, 0x0044($sp)           
/* 00CCC 809F3F8C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00CD0 809F3F90 E7A40054 */  swc1    $f4, 0x0054($sp)           
/* 00CD4 809F3F94 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00CD8 809F3F98 44814000 */  mtc1    $at, $f8                   ## $f8 = 8.00
/* 00CDC 809F3F9C C7A60054 */  lwc1    $f6, 0x0054($sp)           
/* 00CE0 809F3FA0 4606403E */  c.le.s  $f8, $f6                   
/* 00CE4 809F3FA4 00000000 */  nop
/* 00CE8 809F3FA8 45020023 */  bc1fl   .L809F4038                 
/* 00CEC 809F3FAC 8619026E */  lh      $t9, 0x026E($s0)           ## 0000026E
/* 00CF0 809F3FB0 920E0277 */  lbu     $t6, 0x0277($s0)           ## 00000277
/* 00CF4 809F3FB4 8FA6005C */  lw      $a2, 0x005C($sp)           
/* 00CF8 809F3FB8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00CFC 809F3FBC 15C0001D */  bne     $t6, $zero, .L809F4034     
/* 00D00 809F3FC0 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00D04 809F3FC4 C60A027C */  lwc1    $f10, 0x027C($s0)          ## 0000027C
/* 00D08 809F3FC8 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 00D0C 809F3FCC C6020280 */  lwc1    $f2, 0x0280($s0)           ## 00000280
/* 00D10 809F3FD0 C60C0284 */  lwc1    $f12, 0x0284($s0)          ## 00000284
/* 00D14 809F3FD4 46105001 */  sub.s   $f0, $f10, $f16            
/* 00D18 809F3FD8 240F0013 */  addiu   $t7, $zero, 0x0013         ## $t7 = 00000013
/* 00D1C 809F3FDC AFAF0028 */  sw      $t7, 0x0028($sp)           
/* 00D20 809F3FE0 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00D24 809F3FE4 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00D28 809F3FE8 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00D2C 809F3FEC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00D30 809F3FF0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00D34 809F3FF4 24070168 */  addiu   $a3, $zero, 0x0168         ## $a3 = 00000168
/* 00D38 809F3FF8 E7A20014 */  swc1    $f2, 0x0014($sp)           
/* 00D3C 809F3FFC 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00D40 809F4000 E7AC0018 */  swc1    $f12, 0x0018($sp)          
/* 00D44 809F4004 14400006 */  bne     $v0, $zero, .L809F4020     
/* 00D48 809F4008 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 00D4C 809F400C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00D50 809F4010 0C00B7D5 */  jal     func_8002DF54              
/* 00D54 809F4014 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00D58 809F4018 0C00B55C */  jal     Actor_Kill
              
/* 00D5C 809F401C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809F4020:
/* 00D60 809F4020 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00D64 809F4024 A2180277 */  sb      $t8, 0x0277($s0)           ## 00000277
/* 00D68 809F4028 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D6C 809F402C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00D70 809F4030 2405387E */  addiu   $a1, $zero, 0x387E         ## $a1 = 0000387E
.L809F4034:
/* 00D74 809F4034 8619026E */  lh      $t9, 0x026E($s0)           ## 0000026E
.L809F4038:
/* 00D78 809F4038 C7B20054 */  lwc1    $f18, 0x0054($sp)          
/* 00D7C 809F403C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00D80 809F4040 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 00D84 809F4044 00000000 */  nop
/* 00D88 809F4048 468021A0 */  cvt.s.w $f6, $f4                   
/* 00D8C 809F404C 4612303E */  c.le.s  $f6, $f18                  
/* 00D90 809F4050 00000000 */  nop
/* 00D94 809F4054 4502001B */  bc1fl   .L809F40C4                 
/* 00D98 809F4058 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00D9C 809F405C 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00DA0 809F4060 24843128 */  addiu   $a0, $a0, 0x3128           ## $a0 = 06003128
/* 00DA4 809F4064 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 00DA8 809F4068 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00DAC 809F406C 44813000 */  mtc1    $at, $f6                   ## $f6 = -10.00
/* 00DB0 809F4070 468042A0 */  cvt.s.w $f10, $f8                  
/* 00DB4 809F4074 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00DB8 809F4078 24A53128 */  addiu   $a1, $a1, 0x3128           ## $a1 = 06003128
/* 00DBC 809F407C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00DC0 809F4080 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00DC4 809F4084 4600540D */  trunc.w.s $f16, $f10                 
/* 00DC8 809F4088 44098000 */  mfc1    $t1, $f16                  
/* 00DCC 809F408C 00000000 */  nop
/* 00DD0 809F4090 A609026E */  sh      $t1, 0x026E($s0)           ## 0000026E
/* 00DD4 809F4094 860A026E */  lh      $t2, 0x026E($s0)           ## 0000026E
/* 00DD8 809F4098 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00DDC 809F409C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00DE0 809F40A0 448A2000 */  mtc1    $t2, $f4                   ## $f4 = 0.00
/* 00DE4 809F40A4 E7A60018 */  swc1    $f6, 0x0018($sp)           
/* 00DE8 809F40A8 468024A0 */  cvt.s.w $f18, $f4                  
/* 00DEC 809F40AC 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00DF0 809F40B0 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 00DF4 809F40B4 3C0B809F */  lui     $t3, %hi(func_809F40D4)    ## $t3 = 809F0000
/* 00DF8 809F40B8 256B40D4 */  addiu   $t3, $t3, %lo(func_809F40D4) ## $t3 = 809F40D4
/* 00DFC 809F40BC AE0B0214 */  sw      $t3, 0x0214($s0)           ## 00000214
/* 00E00 809F40C0 8FBF003C */  lw      $ra, 0x003C($sp)           
.L809F40C4:
/* 00E04 809F40C4 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 00E08 809F40C8 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 00E0C 809F40CC 03E00008 */  jr      $ra                        
/* 00E10 809F40D0 00000000 */  nop


