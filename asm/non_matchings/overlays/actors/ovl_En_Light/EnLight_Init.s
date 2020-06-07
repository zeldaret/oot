.late_rodata
glabel D_80A9E8F0
 .word 0x38D1B717, 0x00000000

.text
glabel EnLight_Init
/* 00000 80A9DB40 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x135c)
/* 00004 80A9DB44 8DCEF9BC */  lw      $t6, %lo(gSaveContext+0x135c)($t6)
/* 00008 80A9DB48 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0000C 80A9DB4C AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00010 80A9DB50 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00014 80A9DB54 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80A9DB58 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0001C 80A9DB5C AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00020 80A9DB60 15C10023 */  bne     $t6, $at, .L80A9DBF0       
/* 00024 80A9DB64 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00028 80A9DB68 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 0002C 80A9DB6C 26110154 */  addiu   $s1, $s0, 0x0154           ## $s1 = 00000154
/* 00030 80A9DB70 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000154
/* 00034 80A9DB74 05E10003 */  bgez    $t7, .L80A9DB84            
/* 00038 80A9DB78 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 0003C 80A9DB7C 10000002 */  beq     $zero, $zero, .L80A9DB88   
/* 00040 80A9DB80 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A9DB84:
/* 00044 80A9DB84 24020028 */  addiu   $v0, $zero, 0x0028         ## $v0 = 00000028
.L80A9DB88:
/* 00048 80A9DB88 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 0004C 80A9DB8C C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00050 80A9DB90 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00054 80A9DB94 4600428D */  trunc.w.s $f10, $f8                  
/* 00058 80A9DB98 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 0005C 80A9DB9C 240E00B4 */  addiu   $t6, $zero, 0x00B4         ## $t6 = 000000B4
/* 00060 80A9DBA0 4600218D */  trunc.w.s $f6, $f4                   
/* 00064 80A9DBA4 440A5000 */  mfc1    $t2, $f10                  
/* 00068 80A9DBA8 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 0006C 80A9DBAC 4600848D */  trunc.w.s $f18, $f16                 
/* 00070 80A9DBB0 44053000 */  mfc1    $a1, $f6                   
/* 00074 80A9DBB4 004A3021 */  addu    $a2, $v0, $t2              
/* 00078 80A9DBB8 00063400 */  sll     $a2, $a2, 16               
/* 0007C 80A9DBBC 44079000 */  mfc1    $a3, $f18                  
/* 00080 80A9DBC0 00052C00 */  sll     $a1, $a1, 16               
/* 00084 80A9DBC4 00052C03 */  sra     $a1, $a1, 16               
/* 00088 80A9DBC8 00073C00 */  sll     $a3, $a3, 16               
/* 0008C 80A9DBCC 00073C03 */  sra     $a3, $a3, 16               
/* 00090 80A9DBD0 00063403 */  sra     $a2, $a2, 16               
/* 00094 80A9DBD4 AFAF001C */  sw      $t7, 0x001C($sp)           
/* 00098 80A9DBD8 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 0009C 80A9DBDC AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 000A0 80A9DBE0 0C01E763 */  jal     Lights_InitType0PositionalLight
              
/* 000A4 80A9DBE4 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 000A8 80A9DBE8 10000022 */  beq     $zero, $zero, .L80A9DC74   
/* 000AC 80A9DBEC 8FA40034 */  lw      $a0, 0x0034($sp)           
.L80A9DBF0:
/* 000B0 80A9DBF0 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 000B4 80A9DBF4 26110154 */  addiu   $s1, $s0, 0x0154           ## $s1 = 00000154
/* 000B8 80A9DBF8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000154
/* 000BC 80A9DBFC 07010003 */  bgez    $t8, .L80A9DC0C            
/* 000C0 80A9DC00 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 000C4 80A9DC04 10000002 */  beq     $zero, $zero, .L80A9DC10   
/* 000C8 80A9DC08 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A9DC0C:
/* 000CC 80A9DC0C 24020028 */  addiu   $v0, $zero, 0x0028         ## $v0 = 00000028
.L80A9DC10:
/* 000D0 80A9DC10 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 000D4 80A9DC14 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 000D8 80A9DC18 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 000DC 80A9DC1C 4600428D */  trunc.w.s $f10, $f8                  
/* 000E0 80A9DC20 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 000E4 80A9DC24 240F00B4 */  addiu   $t7, $zero, 0x00B4         ## $t7 = 000000B4
/* 000E8 80A9DC28 4600218D */  trunc.w.s $f6, $f4                   
/* 000EC 80A9DC2C 440B5000 */  mfc1    $t3, $f10                  
/* 000F0 80A9DC30 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 000F4 80A9DC34 4600848D */  trunc.w.s $f18, $f16                 
/* 000F8 80A9DC38 44053000 */  mfc1    $a1, $f6                   
/* 000FC 80A9DC3C 004B3021 */  addu    $a2, $v0, $t3              
/* 00100 80A9DC40 00063400 */  sll     $a2, $a2, 16               
/* 00104 80A9DC44 44079000 */  mfc1    $a3, $f18                  
/* 00108 80A9DC48 00052C00 */  sll     $a1, $a1, 16               
/* 0010C 80A9DC4C 00052C03 */  sra     $a1, $a1, 16               
/* 00110 80A9DC50 00073C00 */  sll     $a3, $a3, 16               
/* 00114 80A9DC54 00073C03 */  sra     $a3, $a3, 16               
/* 00118 80A9DC58 00063403 */  sra     $a2, $a2, 16               
/* 0011C 80A9DC5C AFB8001C */  sw      $t8, 0x001C($sp)           
/* 00120 80A9DC60 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 00124 80A9DC64 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00128 80A9DC68 0C01E77C */  jal     Lights_InitType2PositionalLight
              
/* 0012C 80A9DC6C AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00130 80A9DC70 8FA40034 */  lw      $a0, 0x0034($sp)           
.L80A9DC74:
/* 00134 80A9DC74 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000154
/* 00138 80A9DC78 0C01E9D9 */  jal     Lights_Insert
              
/* 0013C 80A9DC7C 248507A8 */  addiu   $a1, $a0, 0x07A8           ## $a1 = 000007A8
/* 00140 80A9DC80 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 00144 80A9DC84 3C0B80AA */  lui     $t3, %hi(D_80A9E847)       ## $t3 = 80AA0000
/* 00148 80A9DC88 AE020150 */  sw      $v0, 0x0150($s0)           ## 00000150
/* 0014C 80A9DC8C 3109000F */  andi    $t1, $t0, 0x000F           ## $t1 = 00000000
/* 00150 80A9DC90 000950C0 */  sll     $t2, $t1,  3               
/* 00154 80A9DC94 016A5821 */  addu    $t3, $t3, $t2              
/* 00158 80A9DC98 916BE847 */  lbu     $t3, %lo(D_80A9E847)($t3)  
/* 0015C 80A9DC9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00160 80A9DCA0 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 00164 80A9DCA4 448B2000 */  mtc1    $t3, $f4                   ## $f4 = -0.00
/* 00168 80A9DCA8 05610004 */  bgez    $t3, .L80A9DCBC            
/* 0016C 80A9DCAC 468021A0 */  cvt.s.w $f6, $f4                   
/* 00170 80A9DCB0 44814000 */  mtc1    $at, $f8                   ## $f8 = 4294967296.00
/* 00174 80A9DCB4 00000000 */  nop
/* 00178 80A9DCB8 46083180 */  add.s   $f6, $f6, $f8              
.L80A9DCBC:
/* 0017C 80A9DCBC 3C0180AA */  lui     $at, %hi(D_80A9E8F0)       ## $at = 80AA0000
/* 00180 80A9DCC0 C42AE8F0 */  lwc1    $f10, %lo(D_80A9E8F0)($at) 
/* 00184 80A9DCC4 460A3402 */  mul.s   $f16, $f6, $f10            
/* 00188 80A9DCC8 44058000 */  mfc1    $a1, $f16                  
/* 0018C 80A9DCCC 0C00B58B */  jal     Actor_SetScale
              
/* 00190 80A9DCD0 00000000 */  nop
/* 00194 80A9DCD4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00198 80A9DCD8 00000000 */  nop
/* 0019C 80A9DCDC 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 001A0 80A9DCE0 44819000 */  mtc1    $at, $f18                  ## $f18 = 255.00
/* 001A4 80A9DCE4 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 001A8 80A9DCE8 3C1880AA */  lui     $t8, %hi(func_80A9E074)    ## $t8 = 80AA0000
/* 001AC 80A9DCEC 46120102 */  mul.s   $f4, $f0, $f18             
/* 001B0 80A9DCF0 31CF0400 */  andi    $t7, $t6, 0x0400           ## $t7 = 00000000
/* 001B4 80A9DCF4 2718E074 */  addiu   $t8, $t8, %lo(func_80A9E074) ## $t8 = 80A9E074
/* 001B8 80A9DCF8 4600220D */  trunc.w.s $f8, $f4                   
/* 001BC 80A9DCFC 440D4000 */  mfc1    $t5, $f8                   
/* 001C0 80A9DD00 11E00002 */  beq     $t7, $zero, .L80A9DD0C     
/* 001C4 80A9DD04 A20D014C */  sb      $t5, 0x014C($s0)           ## 0000014C
/* 001C8 80A9DD08 AE180130 */  sw      $t8, 0x0130($s0)           ## 00000130
.L80A9DD0C:
/* 001CC 80A9DD0C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 001D0 80A9DD10 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 001D4 80A9DD14 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 001D8 80A9DD18 03E00008 */  jr      $ra                        
/* 001DC 80A9DD1C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
