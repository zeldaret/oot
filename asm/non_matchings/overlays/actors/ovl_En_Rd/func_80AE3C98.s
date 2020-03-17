glabel func_80AE3C98
/* 01898 80AE3C98 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0189C 80AE3C9C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 018A0 80AE3CA0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 018A4 80AE3CA4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 018A8 80AE3CA8 908E0002 */  lbu     $t6, 0x0002($a0)           ## 00000002
/* 018AC 80AE3CAC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 018B0 80AE3CB0 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 018B4 80AE3CB4 11C10005 */  beq     $t6, $at, .L80AE3CCC       
/* 018B8 80AE3CB8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 018BC 80AE3CBC 24A51C24 */  addiu   $a1, $a1, 0x1C24           ## $a1 = 00001C24
/* 018C0 80AE3CC0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 018C4 80AE3CC4 0C00CDD2 */  jal     Actor_ChangeType
              
/* 018C8 80AE3CC8 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
.L80AE3CCC:
/* 018CC 80AE3CCC 2604030E */  addiu   $a0, $s0, 0x030E           ## $a0 = 0000030E
/* 018D0 80AE3CD0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 018D4 80AE3CD4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 018D8 80AE3CD8 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 018DC 80AE3CDC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 018E0 80AE3CE0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 018E4 80AE3CE4 26040310 */  addiu   $a0, $s0, 0x0310           ## $a0 = 00000310
/* 018E8 80AE3CE8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 018EC 80AE3CEC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 018F0 80AE3CF0 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 018F4 80AE3CF4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 018F8 80AE3CF8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 018FC 80AE3CFC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01900 80AE3D00 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 01904 80AE3D04 50400027 */  beql    $v0, $zero, .L80AE3DA4     
/* 01908 80AE3D08 C60A01A0 */  lwc1    $f10, 0x01A0($s0)          ## 000001A0
/* 0190C 80AE3D0C 8602030C */  lh      $v0, 0x030C($s0)           ## 0000030C
/* 01910 80AE3D10 14400021 */  bne     $v0, $zero, .L80AE3D98     
/* 01914 80AE3D14 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 01918 80AE3D18 86050312 */  lh      $a1, 0x0312($s0)           ## 00000312
/* 0191C 80AE3D1C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01920 80AE3D20 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 01924 80AE3D24 30A5007F */  andi    $a1, $a1, 0x007F           ## $a1 = 00000000
/* 01928 80AE3D28 54400006 */  bnel    $v0, $zero, .L80AE3D44     
/* 0192C 80AE3D2C 86020314 */  lh      $v0, 0x0314($s0)           ## 00000314
/* 01930 80AE3D30 86050312 */  lh      $a1, 0x0312($s0)           ## 00000312
/* 01934 80AE3D34 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01938 80AE3D38 0C00B2DD */  jal     Flags_SetSwitch
              
/* 0193C 80AE3D3C 30A5007F */  andi    $a1, $a1, 0x007F           ## $a1 = 00000000
/* 01940 80AE3D40 86020314 */  lh      $v0, 0x0314($s0)           ## 00000314
.L80AE3D44:
/* 01944 80AE3D44 240100B4 */  addiu   $at, $zero, 0x00B4         ## $at = 000000B4
/* 01948 80AE3D48 1040000F */  beq     $v0, $zero, .L80AE3D88     
/* 0194C 80AE3D4C 00000000 */  nop
/* 01950 80AE3D50 14410005 */  bne     $v0, $at, .L80AE3D68       
/* 01954 80AE3D54 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01958 80AE3D58 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0195C 80AE3D5C 0C2B898C */  jal     func_80AE2630              
/* 01960 80AE3D60 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01964 80AE3D64 86020314 */  lh      $v0, 0x0314($s0)           ## 00000314
.L80AE3D68:
/* 01968 80AE3D68 3C0180AE */  lui     $at, %hi(D_80AE49BC)       ## $at = 80AE0000
/* 0196C 80AE3D6C C42649BC */  lwc1    $f6, %lo(D_80AE49BC)($at)  
/* 01970 80AE3D70 C6040054 */  lwc1    $f4, 0x0054($s0)           ## 00000054
/* 01974 80AE3D74 2458FFFB */  addiu   $t8, $v0, 0xFFFB           ## $t8 = FFFFFFFB
/* 01978 80AE3D78 A6180314 */  sh      $t8, 0x0314($s0)           ## 00000314
/* 0197C 80AE3D7C 46062201 */  sub.s   $f8, $f4, $f6              
/* 01980 80AE3D80 10000013 */  beq     $zero, $zero, .L80AE3DD0   
/* 01984 80AE3D84 E6080054 */  swc1    $f8, 0x0054($s0)           ## 00000054
.L80AE3D88:
/* 01988 80AE3D88 0C00B55C */  jal     Actor_Kill
              
/* 0198C 80AE3D8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01990 80AE3D90 10000010 */  beq     $zero, $zero, .L80AE3DD4   
/* 01994 80AE3D94 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE3D98:
/* 01998 80AE3D98 1000000D */  beq     $zero, $zero, .L80AE3DD0   
/* 0199C 80AE3D9C A619030C */  sh      $t9, 0x030C($s0)           ## 0000030C
/* 019A0 80AE3DA0 C60A01A0 */  lwc1    $f10, 0x01A0($s0)          ## 000001A0
.L80AE3DA4:
/* 019A4 80AE3DA4 24010021 */  addiu   $at, $zero, 0x0021         ## $at = 00000021
/* 019A8 80AE3DA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 019AC 80AE3DAC 4600540D */  trunc.w.s $f16, $f10                 
/* 019B0 80AE3DB0 44028000 */  mfc1    $v0, $f16                  
/* 019B4 80AE3DB4 00000000 */  nop
/* 019B8 80AE3DB8 10410003 */  beq     $v0, $at, .L80AE3DC8       
/* 019BC 80AE3DBC 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
/* 019C0 80AE3DC0 54410004 */  bnel    $v0, $at, .L80AE3DD4       
/* 019C4 80AE3DC4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE3DC8:
/* 019C8 80AE3DC8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 019CC 80AE3DCC 2405387A */  addiu   $a1, $zero, 0x387A         ## $a1 = 0000387A
.L80AE3DD0:
/* 019D0 80AE3DD0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE3DD4:
/* 019D4 80AE3DD4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 019D8 80AE3DD8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 019DC 80AE3DDC 03E00008 */  jr      $ra                        
/* 019E0 80AE3DE0 00000000 */  nop


