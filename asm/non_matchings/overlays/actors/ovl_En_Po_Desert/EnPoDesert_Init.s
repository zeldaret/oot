glabel EnPoDesert_Init
/* 00000 80AD2CB0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 80AD2CB4 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00008 80AD2CB8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0000C 80AD2CBC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00010 80AD2CC0 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00014 80AD2CC4 3C0580AD */  lui     $a1, %hi(D_80AD39CC)       ## $a1 = 80AD0000
/* 00018 80AD2CC8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 80AD2CCC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 80AD2CD0 24A539CC */  addiu   $a1, $a1, %lo(D_80AD39CC)  ## $a1 = 80AD39CC
/* 00024 80AD2CD4 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00028 80AD2CD8 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 0002C 80AD2CDC 260E01A8 */  addiu   $t6, $s0, 0x01A8           ## $t6 = 000001A8
/* 00030 80AD2CE0 260F01E4 */  addiu   $t7, $s0, 0x01E4           ## $t7 = 000001E4
/* 00034 80AD2CE4 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 00038 80AD2CE8 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 0003C 80AD2CEC AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00040 80AD2CF0 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00044 80AD2CF4 24E70924 */  addiu   $a3, $a3, 0x0924           ## $a3 = 06000924
/* 00048 80AD2CF8 24C66A30 */  addiu   $a2, $a2, 0x6A30           ## $a2 = 06006A30
/* 0004C 80AD2CFC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00050 80AD2D00 0C02915F */  jal     SkelAnime_Init
              
/* 00054 80AD2D04 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00058 80AD2D08 26050238 */  addiu   $a1, $s0, 0x0238           ## $a1 = 00000238
/* 0005C 80AD2D0C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00060 80AD2D10 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00064 80AD2D14 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00068 80AD2D18 3C0780AD */  lui     $a3, %hi(D_80AD39A0)       ## $a3 = 80AD0000
/* 0006C 80AD2D1C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00070 80AD2D20 24E739A0 */  addiu   $a3, $a3, %lo(D_80AD39A0)  ## $a3 = 80AD39A0
/* 00074 80AD2D24 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00078 80AD2D28 0C01712B */  jal     Collider_SetCylinder
              
/* 0007C 80AD2D2C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00080 80AD2D30 240300FF */  addiu   $v1, $zero, 0x00FF         ## $v1 = 000000FF
/* 00084 80AD2D34 241900D2 */  addiu   $t9, $zero, 0x00D2         ## $t9 = 000000D2
/* 00088 80AD2D38 A2030220 */  sb      $v1, 0x0220($s0)           ## 00000220
/* 0008C 80AD2D3C A2030221 */  sb      $v1, 0x0221($s0)           ## 00000221
/* 00090 80AD2D40 A2190222 */  sb      $t9, 0x0222($s0)           ## 00000222
/* 00094 80AD2D44 A2030223 */  sb      $v1, 0x0223($s0)           ## 00000223
/* 00098 80AD2D48 26060228 */  addiu   $a2, $s0, 0x0228           ## $a2 = 00000228
/* 0009C 80AD2D4C AFA60034 */  sw      $a2, 0x0034($sp)           
/* 000A0 80AD2D50 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000A4 80AD2D54 0C01E9D9 */  jal     LightContext_InsertLight
              
/* 000A8 80AD2D58 262507A8 */  addiu   $a1, $s1, 0x07A8           ## $a1 = 000007A8
/* 000AC 80AD2D5C C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 000B0 80AD2D60 C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 000B4 80AD2D64 C6100010 */  lwc1    $f16, 0x0010($s0)          ## 00000010
/* 000B8 80AD2D68 4600218D */  trunc.w.s $f6, $f4                   
/* 000BC 80AD2D6C AE020224 */  sw      $v0, 0x0224($s0)           ## 00000224
/* 000C0 80AD2D70 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 000C4 80AD2D74 4600428D */  trunc.w.s $f10, $f8                  
/* 000C8 80AD2D78 44053000 */  mfc1    $a1, $f6                   
/* 000CC 80AD2D7C 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 000D0 80AD2D80 4600848D */  trunc.w.s $f18, $f16                 
/* 000D4 80AD2D84 44065000 */  mfc1    $a2, $f10                  
/* 000D8 80AD2D88 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 000DC 80AD2D8C 240E00C8 */  addiu   $t6, $zero, 0x00C8         ## $t6 = 000000C8
/* 000E0 80AD2D90 44079000 */  mfc1    $a3, $f18                  
/* 000E4 80AD2D94 00052C00 */  sll     $a1, $a1, 16               
/* 000E8 80AD2D98 00063400 */  sll     $a2, $a2, 16               
/* 000EC 80AD2D9C 00073C00 */  sll     $a3, $a3, 16               
/* 000F0 80AD2DA0 00073C03 */  sra     $a3, $a3, 16               
/* 000F4 80AD2DA4 00063403 */  sra     $a2, $a2, 16               
/* 000F8 80AD2DA8 00052C03 */  sra     $a1, $a1, 16               
/* 000FC 80AD2DAC AFAE001C */  sw      $t6, 0x001C($sp)           
/* 00100 80AD2DB0 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 00104 80AD2DB4 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 00108 80AD2DB8 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 0010C 80AD2DBC 0C01E763 */  jal     Lights_PointNoGlowSetInfo
              
/* 00110 80AD2DC0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00114 80AD2DC4 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00118 80AD2DC8 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 0011C 80AD2DCC 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00120 80AD2DD0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00124 80AD2DD4 0C00AC78 */  jal     ActorShape_Init
              
/* 00128 80AD2DD8 3C074214 */  lui     $a3, 0x4214                ## $a3 = 42140000
/* 0012C 80AD2DDC 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 00130 80AD2DE0 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00134 80AD2DE4 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00138 80AD2DE8 0018CA03 */  sra     $t9, $t8,  8               
/* 0013C 80AD2DEC 332800FF */  andi    $t0, $t9, 0x00FF           ## $t0 = 00000000
/* 00140 80AD2DF0 AE0F0198 */  sw      $t7, 0x0198($s0)           ## 00000198
/* 00144 80AD2DF4 A608001C */  sh      $t0, 0x001C($s0)           ## 0000001C
/* 00148 80AD2DF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0014C 80AD2DFC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00150 80AD2E00 0C2B4B99 */  jal     func_80AD2E64              
/* 00154 80AD2E04 E60401A4 */  swc1    $f4, 0x01A4($s0)           ## 000001A4
/* 00158 80AD2E08 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0015C 80AD2E0C 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 00160 80AD2E10 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 00164 80AD2E14 03E00008 */  jr      $ra                        
/* 00168 80AD2E18 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
