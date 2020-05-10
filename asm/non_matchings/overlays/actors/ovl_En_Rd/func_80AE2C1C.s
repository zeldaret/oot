glabel func_80AE2C1C
/* 0081C 80AE2C1C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00820 80AE2C20 3C0F80AE */  lui     $t7, %hi(D_80AE4918)       ## $t7 = 80AE0000
/* 00824 80AE2C24 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00828 80AE2C28 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0082C 80AE2C2C AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00830 80AE2C30 25EF4918 */  addiu   $t7, $t7, %lo(D_80AE4918)  ## $t7 = 80AE4918
/* 00834 80AE2C34 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80AE4918
/* 00838 80AE2C38 27AE0044 */  addiu   $t6, $sp, 0x0044           ## $t6 = FFFFFFF4
/* 0083C 80AE2C3C 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80AE491C
/* 00840 80AE2C40 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 00844 80AE2C44 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80AE4920
/* 00848 80AE2C48 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 0084C 80AE2C4C 3C0880AE */  lui     $t0, %hi(D_80AE4924)       ## $t0 = 80AE0000
/* 00850 80AE2C50 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 00854 80AE2C54 3C0980AE */  lui     $t1, %hi(D_80AE4928)       ## $t1 = 80AE0000
/* 00858 80AE2C58 8D084924 */  lw      $t0, %lo(D_80AE4924)($t0)  
/* 0085C 80AE2C5C 8D294928 */  lw      $t1, %lo(D_80AE4928)($t1)  
/* 00860 80AE2C60 8FAA0054 */  lw      $t2, 0x0054($sp)           
/* 00864 80AE2C64 AFA80040 */  sw      $t0, 0x0040($sp)           
/* 00868 80AE2C68 AFA9003C */  sw      $t1, 0x003C($sp)           
/* 0086C 80AE2C6C 8D4B1C44 */  lw      $t3, 0x1C44($t2)           ## 00001C44
/* 00870 80AE2C70 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00874 80AE2C74 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 00878 80AE2C78 AFAB0038 */  sw      $t3, 0x0038($sp)           
/* 0087C 80AE2C7C 848C0000 */  lh      $t4, 0x0000($a0)           ## 000000B6
/* 00880 80AE2C80 8485FFD4 */  lh      $a1, -0x002C($a0)          ## 0000008A
/* 00884 80AE2C84 848E0258 */  lh      $t6, 0x0258($a0)           ## 0000030E
/* 00888 80AE2C88 8498025A */  lh      $t8, 0x025A($a0)           ## 00000310
/* 0088C 80AE2C8C 00AC6823 */  subu    $t5, $a1, $t4              
/* 00890 80AE2C90 01AE7823 */  subu    $t7, $t5, $t6              
/* 00894 80AE2C94 01F8C823 */  subu    $t9, $t7, $t8              
/* 00898 80AE2C98 A7B90032 */  sh      $t9, 0x0032($sp)           
/* 0089C 80AE2C9C C484FFB2 */  lwc1    $f4, -0x004E($a0)          ## 00000068
/* 008A0 80AE2CA0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 008A4 80AE2CA4 240700FA */  addiu   $a3, $zero, 0x00FA         ## $a3 = 000000FA
/* 008A8 80AE2CA8 E48400EE */  swc1    $f4, 0x00EE($a0)           ## 000001A4
/* 008AC 80AE2CAC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 008B0 80AE2CB0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 008B4 80AE2CB4 2604030E */  addiu   $a0, $s0, 0x030E           ## $a0 = 0000030E
/* 008B8 80AE2CB8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 008BC 80AE2CBC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 008C0 80AE2CC0 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
/* 008C4 80AE2CC4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 008C8 80AE2CC8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 008CC 80AE2CCC 26040310 */  addiu   $a0, $s0, 0x0310           ## $a0 = 00000310
/* 008D0 80AE2CD0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 008D4 80AE2CD4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 008D8 80AE2CD8 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
/* 008DC 80AE2CDC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 008E0 80AE2CE0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 008E4 80AE2CE4 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 008E8 80AE2CE8 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 008EC 80AE2CEC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 008F0 80AE2CF0 A6080032 */  sh      $t0, 0x0032($s0)           ## 00000032
/* 008F4 80AE2CF4 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 008F8 80AE2CF8 0C00B6DB */  jal     func_8002DB6C              
/* 008FC 80AE2CFC 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 00900 80AE2D00 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00904 80AE2D04 44813000 */  mtc1    $at, $f6                   ## $f6 = 150.00
/* 00908 80AE2D08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0090C 80AE2D0C 4600303E */  c.le.s  $f6, $f0                   
/* 00910 80AE2D10 00000000 */  nop
/* 00914 80AE2D14 45020004 */  bc1fl   .L80AE2D28                 
/* 00918 80AE2D18 87A30032 */  lh      $v1, 0x0032($sp)           
/* 0091C 80AE2D1C 0C2B8BD4 */  jal     func_80AE2F50              
/* 00920 80AE2D20 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 00924 80AE2D24 87A30032 */  lh      $v1, 0x0032($sp)           
.L80AE2D28:
/* 00928 80AE2D28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0092C 80AE2D2C 04600003 */  bltz    $v1, .L80AE2D3C            
/* 00930 80AE2D30 00031023 */  subu    $v0, $zero, $v1            
/* 00934 80AE2D34 10000001 */  beq     $zero, $zero, .L80AE2D3C   
/* 00938 80AE2D38 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80AE2D3C:
/* 0093C 80AE2D3C 28411554 */  slti    $at, $v0, 0x1554           
/* 00940 80AE2D40 50200032 */  beql    $at, $zero, .L80AE2E0C     
/* 00944 80AE2D44 92020307 */  lbu     $v0, 0x0307($s0)           ## 00000307
/* 00948 80AE2D48 0C00B6D2 */  jal     func_8002DB48              
/* 0094C 80AE2D4C 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 00950 80AE2D50 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00954 80AE2D54 44814000 */  mtc1    $at, $f8                   ## $f8 = 150.00
/* 00958 80AE2D58 8FA90038 */  lw      $t1, 0x0038($sp)           
/* 0095C 80AE2D5C 4608003E */  c.le.s  $f0, $f8                   
/* 00960 80AE2D60 00000000 */  nop
/* 00964 80AE2D64 45020029 */  bc1fl   .L80AE2E0C                 
/* 00968 80AE2D68 92020307 */  lbu     $v0, 0x0307($s0)           ## 00000307
/* 0096C 80AE2D6C 8D2A067C */  lw      $t2, 0x067C($t1)           ## 0000067C
/* 00970 80AE2D70 3C01002C */  lui     $at, 0x002C                ## $at = 002C0000
/* 00974 80AE2D74 34216080 */  ori     $at, $at, 0x6080           ## $at = 002C6080
/* 00978 80AE2D78 01415824 */  and     $t3, $t2, $at              
/* 0097C 80AE2D7C 15600020 */  bne     $t3, $zero, .L80AE2E00     
/* 00980 80AE2D80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00984 80AE2D84 8D2C0680 */  lw      $t4, 0x0680($t1)           ## 00000680
/* 00988 80AE2D88 318D0080 */  andi    $t5, $t4, 0x0080           ## $t5 = 00000000
/* 0098C 80AE2D8C 15A0001C */  bne     $t5, $zero, .L80AE2E00     
/* 00990 80AE2D90 00000000 */  nop
/* 00994 80AE2D94 920E0306 */  lbu     $t6, 0x0306($s0)           ## 00000306
/* 00998 80AE2D98 55C0001C */  bnel    $t6, $zero, .L80AE2E0C     
/* 0099C 80AE2D9C 92020307 */  lbu     $v0, 0x0307($s0)           ## 00000307
/* 009A0 80AE2DA0 860F0312 */  lh      $t7, 0x0312($s0)           ## 00000312
/* 009A4 80AE2DA4 24190028 */  addiu   $t9, $zero, 0x0028         ## $t9 = 00000028
/* 009A8 80AE2DA8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 009AC 80AE2DAC 31F80080 */  andi    $t8, $t7, 0x0080           ## $t8 = 00000000
/* 009B0 80AE2DB0 5700000D */  bnel    $t8, $zero, .L80AE2DE8     
/* 009B4 80AE2DB4 240B003C */  addiu   $t3, $zero, 0x003C         ## $t3 = 0000003C
/* 009B8 80AE2DB8 A5390110 */  sh      $t9, 0x0110($t1)           ## 00000110
/* 009BC 80AE2DBC 0C023BAB */  jal     func_8008EEAC              
/* 009C0 80AE2DC0 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 009C4 80AE2DC4 8FA80054 */  lw      $t0, 0x0054($sp)           
/* 009C8 80AE2DC8 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 009CC 80AE2DCC 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 009D0 80AE2DD0 8D0A1C44 */  lw      $t2, 0x1C44($t0)           ## 00001C44
/* 009D4 80AE2DD4 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 009D8 80AE2DD8 AD500684 */  sw      $s0, 0x0684($t2)           ## 00000684
/* 009DC 80AE2DDC 0C02A800 */  jal     func_800AA000              
/* 009E0 80AE2DE0 C60C0090 */  lwc1    $f12, 0x0090($s0)          ## 00000090
/* 009E4 80AE2DE4 240B003C */  addiu   $t3, $zero, 0x003C         ## $t3 = 0000003C
.L80AE2DE8:
/* 009E8 80AE2DE8 A20B0306 */  sb      $t3, 0x0306($s0)           ## 00000306
/* 009EC 80AE2DEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009F0 80AE2DF0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 009F4 80AE2DF4 240538E5 */  addiu   $a1, $zero, 0x38E5         ## $a1 = 000038E5
/* 009F8 80AE2DF8 10000004 */  beq     $zero, $zero, .L80AE2E0C   
/* 009FC 80AE2DFC 92020307 */  lbu     $v0, 0x0307($s0)           ## 00000307
.L80AE2E00:
/* 00A00 80AE2E00 0C2B8BD4 */  jal     func_80AE2F50              
/* 00A04 80AE2E04 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 00A08 80AE2E08 92020307 */  lbu     $v0, 0x0307($s0)           ## 00000307
.L80AE2E0C:
/* 00A0C 80AE2E0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A10 80AE2E10 10400003 */  beq     $v0, $zero, .L80AE2E20     
/* 00A14 80AE2E14 244CFFFF */  addiu   $t4, $v0, 0xFFFF           ## $t4 = FFFFFFFF
/* 00A18 80AE2E18 A20C0307 */  sb      $t4, 0x0307($s0)           ## 00000307
/* 00A1C 80AE2E1C 318200FF */  andi    $v0, $t4, 0x00FF           ## $v0 = 000000FF
.L80AE2E20:
/* 00A20 80AE2E20 54400021 */  bnel    $v0, $zero, .L80AE2EA8     
/* 00A24 80AE2E24 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 00A28 80AE2E28 0C00B6D2 */  jal     func_8002DB48              
/* 00A2C 80AE2E2C 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 00A30 80AE2E30 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 00A34 80AE2E34 44815000 */  mtc1    $at, $f10                  ## $f10 = 45.00
/* 00A38 80AE2E38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A3C 80AE2E3C 460A003E */  c.le.s  $f0, $f10                  
/* 00A40 80AE2E40 00000000 */  nop
/* 00A44 80AE2E44 45020018 */  bc1fl   .L80AE2EA8                 
/* 00A48 80AE2E48 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 00A4C 80AE2E4C 0C00B821 */  jal     func_8002E084              
/* 00A50 80AE2E50 240538E3 */  addiu   $a1, $zero, 0x38E3         ## $a1 = 000038E3
/* 00A54 80AE2E54 10400013 */  beq     $v0, $zero, .L80AE2EA4     
/* 00A58 80AE2E58 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00A5C 80AE2E5C 8FAD0038 */  lw      $t5, 0x0038($sp)           
/* 00A60 80AE2E60 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 00A64 80AE2E64 0324C821 */  addu    $t9, $t9, $a0              
/* 00A68 80AE2E68 A5A00110 */  sh      $zero, 0x0110($t5)         ## 00000110
/* 00A6C 80AE2E6C 8F391D4C */  lw      $t9, 0x1D4C($t9)           ## 00011D4C
/* 00A70 80AE2E70 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 00A74 80AE2E74 0320F809 */  jalr    $ra, $t9                   
/* 00A78 80AE2E78 00000000 */  nop
/* 00A7C 80AE2E7C 50400015 */  beql    $v0, $zero, .L80AE2ED4     
/* 00A80 80AE2E80 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00A84 80AE2E84 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00A88 80AE2E88 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00A8C 80AE2E8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A90 80AE2E90 01C17824 */  and     $t7, $t6, $at              
/* 00A94 80AE2E94 0C2B8CFC */  jal     func_80AE33F0              
/* 00A98 80AE2E98 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 00A9C 80AE2E9C 1000000D */  beq     $zero, $zero, .L80AE2ED4   
/* 00AA0 80AE2EA0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
.L80AE2EA4:
/* 00AA4 80AE2EA4 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
.L80AE2EA8:
/* 00AA8 80AE2EA8 5B00000A */  blezl   $t8, .L80AE2ED4            
/* 00AAC 80AE2EAC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00AB0 80AE2EB0 8E090118 */  lw      $t1, 0x0118($s0)           ## 00000118
/* 00AB4 80AE2EB4 51200006 */  beql    $t1, $zero, .L80AE2ED0     
/* 00AB8 80AE2EB8 A2000305 */  sb      $zero, 0x0305($s0)         ## 00000305
/* 00ABC 80AE2EBC 0C2B8C77 */  jal     func_80AE31DC              
/* 00AC0 80AE2EC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AC4 80AE2EC4 10000003 */  beq     $zero, $zero, .L80AE2ED4   
/* 00AC8 80AE2EC8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00ACC 80AE2ECC A2000305 */  sb      $zero, 0x0305($s0)         ## 00000305
.L80AE2ED0:
/* 00AD0 80AE2ED0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
.L80AE2ED4:
/* 00AD4 80AE2ED4 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 00AD8 80AE2ED8 C60001A0 */  lwc1    $f0, 0x01A0($s0)           ## 000001A0
/* 00ADC 80AE2EDC 3C0141B0 */  lui     $at, 0x41B0                ## $at = 41B00000
/* 00AE0 80AE2EE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AE4 80AE2EE4 46008032 */  c.eq.s  $f16, $f0                  
/* 00AE8 80AE2EE8 00000000 */  nop
/* 00AEC 80AE2EEC 45010008 */  bc1t    .L80AE2F10                 
/* 00AF0 80AE2EF0 00000000 */  nop
/* 00AF4 80AE2EF4 44819000 */  mtc1    $at, $f18                  ## $f18 = 22.00
/* 00AF8 80AE2EF8 8FA80054 */  lw      $t0, 0x0054($sp)           
/* 00AFC 80AE2EFC 3C0A0001 */  lui     $t2, 0x0001                ## $t2 = 00010000
/* 00B00 80AE2F00 46009032 */  c.eq.s  $f18, $f0                  
/* 00B04 80AE2F04 01485021 */  addu    $t2, $t2, $t0              
/* 00B08 80AE2F08 45020006 */  bc1fl   .L80AE2F24                 
/* 00B0C 80AE2F0C 8D4A1DE4 */  lw      $t2, 0x1DE4($t2)           ## 00011DE4
.L80AE2F10:
/* 00B10 80AE2F10 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00B14 80AE2F14 2405382E */  addiu   $a1, $zero, 0x382E         ## $a1 = 0000382E
/* 00B18 80AE2F18 10000009 */  beq     $zero, $zero, .L80AE2F40   
/* 00B1C 80AE2F1C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00B20 80AE2F20 8D4A1DE4 */  lw      $t2, 0x1DE4($t2)           ## 00001DE4
.L80AE2F24:
/* 00B24 80AE2F24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B28 80AE2F28 314B005F */  andi    $t3, $t2, 0x005F           ## $t3 = 00000000
/* 00B2C 80AE2F2C 55600004 */  bnel    $t3, $zero, .L80AE2F40     
/* 00B30 80AE2F30 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00B34 80AE2F34 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00B38 80AE2F38 240538E4 */  addiu   $a1, $zero, 0x38E4         ## $a1 = 000038E4
/* 00B3C 80AE2F3C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE2F40:
/* 00B40 80AE2F40 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00B44 80AE2F44 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00B48 80AE2F48 03E00008 */  jr      $ra                        
/* 00B4C 80AE2F4C 00000000 */  nop
