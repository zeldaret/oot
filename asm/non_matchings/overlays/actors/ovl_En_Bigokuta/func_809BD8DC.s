.late_rodata
glabel D_809BF53C
 .word 0x43838000
glabel D_809BF540
 .word 0x3DE5C8FA
glabel D_809BF544
 .word 0x3E65C8FA
glabel D_809BF548
 .word 0x3EA0D97C

.text
glabel func_809BD8DC
/* 00C7C 809BD8DC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00C80 809BD8E0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00C84 809BD8E4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00C88 809BD8E8 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00C8C 809BD8EC 848E0196 */  lh      $t6, 0x0196($a0)           ## 00000196
/* 00C90 809BD8F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C94 809BD8F4 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 00C98 809BD8F8 A48F0196 */  sh      $t7, 0x0196($a0)           ## 00000196
/* 00C9C 809BD8FC 84820196 */  lh      $v0, 0x0196($a0)           ## 00000196
/* 00CA0 809BD900 04400060 */  bltz    $v0, .L809BDA84            
/* 00CA4 809BD904 2841FFFF */  slti    $at, $v0, 0xFFFF           
/* 00CA8 809BD908 3C01809C */  lui     $at, %hi(D_809BF53C)       ## $at = 809C0000
/* 00CAC 809BD90C C426F53C */  lwc1    $f6, %lo(D_809BF53C)($at)  
/* 00CB0 809BD910 C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 00CB4 809BD914 3C064148 */  lui     $a2, 0x4148                ## $a2 = 41480000
/* 00CB8 809BD918 34C66186 */  ori     $a2, $a2, 0x6186           ## $a2 = 41486186
/* 00CBC 809BD91C 46062200 */  add.s   $f8, $f4, $f6              
/* 00CC0 809BD920 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 00CC4 809BD924 44054000 */  mfc1    $a1, $f8                   
/* 00CC8 809BD928 0C01DE80 */  jal     Math_ApproxF
              
/* 00CCC 809BD92C 00000000 */  nop
/* 00CD0 809BD930 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
/* 00CD4 809BD934 2841000E */  slti    $at, $v0, 0x000E           
/* 00CD8 809BD938 1020000F */  beq     $at, $zero, .L809BD978     
/* 00CDC 809BD93C 2458FFF9 */  addiu   $t8, $v0, 0xFFF9           ## $t8 = FFFFFFF9
/* 00CE0 809BD940 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 00CE4 809BD944 3C01809C */  lui     $at, %hi(D_809BF540)       ## $at = 809C0000
/* 00CE8 809BD948 C432F540 */  lwc1    $f18, %lo(D_809BF540)($at) 
/* 00CEC 809BD94C 46805420 */  cvt.s.w $f16, $f10                 
/* 00CF0 809BD950 46128302 */  mul.s   $f12, $f16, $f18           
/* 00CF4 809BD954 0C0400A4 */  jal     sinf
              
/* 00CF8 809BD958 00000000 */  nop
/* 00CFC 809BD95C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00D00 809BD960 44812000 */  mtc1    $at, $f4                   ## $f4 = 200.00
/* 00D04 809BD964 C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 00D08 809BD968 46040182 */  mul.s   $f6, $f0, $f4              
/* 00D0C 809BD96C 46083280 */  add.s   $f10, $f6, $f8             
/* 00D10 809BD970 10000011 */  beq     $zero, $zero, .L809BD9B8   
/* 00D14 809BD974 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
.L809BD978:
/* 00D18 809BD978 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 00D1C 809BD97C 3C01809C */  lui     $at, %hi(D_809BF544)       ## $at = 809C0000
/* 00D20 809BD980 C424F544 */  lwc1    $f4, %lo(D_809BF544)($at)  
/* 00D24 809BD984 468084A0 */  cvt.s.w $f18, $f16                 
/* 00D28 809BD988 46049302 */  mul.s   $f12, $f18, $f4            
/* 00D2C 809BD98C 0C0400A4 */  jal     sinf
              
/* 00D30 809BD990 00000000 */  nop
/* 00D34 809BD994 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 00D38 809BD998 44814000 */  mtc1    $at, $f8                   ## $f8 = 70.00
/* 00D3C 809BD99C 3C014302 */  lui     $at, 0x4302                ## $at = 43020000
/* 00D40 809BD9A0 44818000 */  mtc1    $at, $f16                  ## $f16 = 130.00
/* 00D44 809BD9A4 C606000C */  lwc1    $f6, 0x000C($s0)           ## 0000000C
/* 00D48 809BD9A8 46100482 */  mul.s   $f18, $f0, $f16            
/* 00D4C 809BD9AC 46083280 */  add.s   $f10, $f6, $f8             
/* 00D50 809BD9B0 460A9100 */  add.s   $f4, $f18, $f10            
/* 00D54 809BD9B4 E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
.L809BD9B8:
/* 00D58 809BD9B8 86190196 */  lh      $t9, 0x0196($s0)           ## 00000196
/* 00D5C 809BD9BC 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00D60 809BD9C0 57200045 */  bnel    $t9, $zero, .L809BDAD8     
/* 00D64 809BD9C4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00D68 809BD9C8 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00D6C 809BD9CC 44814000 */  mtc1    $at, $f8                   ## $f8 = 40.00
/* 00D70 809BD9D0 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 00D74 809BD9D4 44812000 */  mtc1    $at, $f4                   ## $f4 = 70.00
/* 00D78 809BD9D8 46083400 */  add.s   $f16, $f6, $f8             
/* 00D7C 809BD9DC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00D80 809BD9E0 240907D0 */  addiu   $t1, $zero, 0x07D0         ## $t1 = 000007D0
/* 00D84 809BD9E4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00D88 809BD9E8 E7B0002C */  swc1    $f16, 0x002C($sp)          
/* 00D8C 809BD9EC C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 00D90 809BD9F0 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 00D94 809BD9F4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00D98 809BD9F8 E7B20030 */  swc1    $f18, 0x0030($sp)          
/* 00D9C 809BD9FC C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00DA0 809BDA00 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00DA4 809BDA04 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00DA8 809BDA08 46045181 */  sub.s   $f6, $f10, $f4             
/* 00DAC 809BDA0C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00DB0 809BDA10 0C00A527 */  jal     EffectSsGSplash_Spawn              
/* 00DB4 809BDA14 E7A60034 */  swc1    $f6, 0x0034($sp)           
/* 00DB8 809BDA18 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00DBC 809BDA1C 44818000 */  mtc1    $at, $f16                  ## $f16 = 40.00
/* 00DC0 809BDA20 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 00DC4 809BDA24 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00DC8 809BDA28 240B07D0 */  addiu   $t3, $zero, 0x07D0         ## $t3 = 000007D0
/* 00DCC 809BDA2C 46104481 */  sub.s   $f18, $f8, $f16            
/* 00DD0 809BDA30 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00DD4 809BDA34 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00DD8 809BDA38 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00DDC 809BDA3C E7B2002C */  swc1    $f18, 0x002C($sp)          
/* 00DE0 809BDA40 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 00DE4 809BDA44 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00DE8 809BDA48 0C00A527 */  jal     EffectSsGSplash_Spawn              
/* 00DEC 809BDA4C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00DF0 809BDA50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DF4 809BDA54 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00DF8 809BDA58 240539ED */  addiu   $a1, $zero, 0x39ED         ## $a1 = 000039ED
/* 00DFC 809BDA5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E00 809BDA60 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00E04 809BDA64 24053879 */  addiu   $a1, $zero, 0x3879         ## $a1 = 00003879
/* 00E08 809BDA68 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00E0C 809BDA6C 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 00E10 809BDA70 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00E14 809BDA74 0C02A800 */  jal     func_800AA000              
/* 00E18 809BDA78 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 00E1C 809BDA7C 10000016 */  beq     $zero, $zero, .L809BDAD8   
/* 00E20 809BDA80 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809BDA84:
/* 00E24 809BDA84 10200013 */  beq     $at, $zero, .L809BDAD4     
/* 00E28 809BDA88 244C0001 */  addiu   $t4, $v0, 0x0001           ## $t4 = 00000001
/* 00E2C 809BDA8C 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 00E30 809BDA90 3C01809C */  lui     $at, %hi(D_809BF548)       ## $at = 809C0000
/* 00E34 809BDA94 C426F548 */  lwc1    $f6, %lo(D_809BF548)($at)  
/* 00E38 809BDA98 46805120 */  cvt.s.w $f4, $f10                  
/* 00E3C 809BDA9C 46062302 */  mul.s   $f12, $f4, $f6             
/* 00E40 809BDAA0 0C0400A4 */  jal     sinf
              
/* 00E44 809BDAA4 00000000 */  nop
/* 00E48 809BDAA8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00E4C 809BDAAC 44818000 */  mtc1    $at, $f16                  ## $f16 = 20.00
/* 00E50 809BDAB0 C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 00E54 809BDAB4 860D0196 */  lh      $t5, 0x0196($s0)           ## 00000196
/* 00E58 809BDAB8 46100482 */  mul.s   $f18, $f0, $f16            
/* 00E5C 809BDABC 2401FFF6 */  addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
/* 00E60 809BDAC0 46124281 */  sub.s   $f10, $f8, $f18            
/* 00E64 809BDAC4 15A10003 */  bne     $t5, $at, .L809BDAD4       
/* 00E68 809BDAC8 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 00E6C 809BDACC 0C26F4EB */  jal     func_809BD3AC              
/* 00E70 809BDAD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809BDAD4:
/* 00E74 809BDAD4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809BDAD8:
/* 00E78 809BDAD8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00E7C 809BDADC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00E80 809BDAE0 03E00008 */  jr      $ra                        
/* 00E84 809BDAE4 00000000 */  nop
