.late_rodata
glabel D_80AFE110
 .word 0x47435000

.text
glabel func_80AFD13C
/* 0079C 80AFD13C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 007A0 80AFD140 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 007A4 80AFD144 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 007A8 80AFD148 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 007AC 80AFD14C 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 007B0 80AFD150 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 007B4 80AFD154 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 007B8 80AFD158 908F0283 */  lbu     $t7, 0x0283($a0)           ## 00000283
/* 007BC 80AFD15C 0305C021 */  addu    $t8, $t8, $a1              
/* 007C0 80AFD160 51E0000D */  beql    $t7, $zero, .L80AFD198     
/* 007C4 80AFD164 860A008A */  lh      $t2, 0x008A($s0)           ## 0000008A
/* 007C8 80AFD168 8F181DE4 */  lw      $t8, 0x1DE4($t8)           ## 00011DE4
/* 007CC 80AFD16C 3C0180B0 */  lui     $at, %hi(D_80AFE110)       ## $at = 80B00000
/* 007D0 80AFD170 3319000F */  andi    $t9, $t8, 0x000F           ## $t9 = 00000000
/* 007D4 80AFD174 57200008 */  bnel    $t9, $zero, .L80AFD198     
/* 007D8 80AFD178 860A008A */  lh      $t2, 0x008A($s0)           ## 0000008A
/* 007DC 80AFD17C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 007E0 80AFD180 C42CE110 */  lwc1    $f12, %lo(D_80AFE110)($at) 
/* 007E4 80AFD184 4600010D */  trunc.w.s $f4, $f0                   
/* 007E8 80AFD188 44092000 */  mfc1    $t1, $f4                   
/* 007EC 80AFD18C 00000000 */  nop
/* 007F0 80AFD190 A6090288 */  sh      $t1, 0x0288($s0)           ## 00000288
/* 007F4 80AFD194 860A008A */  lh      $t2, 0x008A($s0)           ## 0000008A
.L80AFD198:
/* 007F8 80AFD198 860B0288 */  lh      $t3, 0x0288($s0)           ## 00000288
/* 007FC 80AFD19C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00800 80AFD1A0 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00804 80AFD1A4 014B2821 */  addu    $a1, $t2, $t3              
/* 00808 80AFD1A8 00052C00 */  sll     $a1, $a1, 16               
/* 0080C 80AFD1AC 00052C03 */  sra     $a1, $a1, 16               
/* 00810 80AFD1B0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00814 80AFD1B4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00818 80AFD1B8 240702EE */  addiu   $a3, $zero, 0x02EE         ## $a3 = 000002EE
/* 0081C 80AFD1BC C6060164 */  lwc1    $f6, 0x0164($s0)           ## 00000164
/* 00820 80AFD1C0 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
/* 00824 80AFD1C4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00828 80AFD1C8 4600320D */  trunc.w.s $f8, $f6                   
/* 0082C 80AFD1CC A60C0032 */  sh      $t4, 0x0032($s0)           ## 00000032
/* 00830 80AFD1D0 44034000 */  mfc1    $v1, $f8                   
/* 00834 80AFD1D4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00838 80AFD1D8 AFA30034 */  sw      $v1, 0x0034($sp)           
/* 0083C 80AFD1DC 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 00840 80AFD1E0 C6000168 */  lwc1    $f0, 0x0168($s0)           ## 00000168
/* 00844 80AFD1E4 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 00848 80AFD1E8 4600703E */  c.le.s  $f14, $f0                  
/* 0084C 80AFD1EC 00000000 */  nop
/* 00850 80AFD1F0 45020004 */  bc1fl   .L80AFD204                 
/* 00854 80AFD1F4 46000087 */  neg.s   $f2, $f0                   
/* 00858 80AFD1F8 10000002 */  beq     $zero, $zero, .L80AFD204   
/* 0085C 80AFD1FC 46000086 */  mov.s   $f2, $f0                   
/* 00860 80AFD200 46000087 */  neg.s   $f2, $f0                   
.L80AFD204:
/* 00864 80AFD204 C60C0164 */  lwc1    $f12, 0x0164($s0)          ## 00000164
/* 00868 80AFD208 4600703E */  c.le.s  $f14, $f0                  
/* 0086C 80AFD20C 46026281 */  sub.s   $f10, $f12, $f2            
/* 00870 80AFD210 4600648D */  trunc.w.s $f18, $f12                 
/* 00874 80AFD214 4600540D */  trunc.w.s $f16, $f10                 
/* 00878 80AFD218 44189000 */  mfc1    $t8, $f18                  
/* 0087C 80AFD21C 44028000 */  mfc1    $v0, $f16                  
/* 00880 80AFD220 45020004 */  bc1fl   .L80AFD234                 
/* 00884 80AFD224 46000087 */  neg.s   $f2, $f0                   
/* 00888 80AFD228 10000002 */  beq     $zero, $zero, .L80AFD234   
/* 0088C 80AFD22C 46000086 */  mov.s   $f2, $f0                   
/* 00890 80AFD230 46000087 */  neg.s   $f2, $f0                   
.L80AFD234:
/* 00894 80AFD234 10780015 */  beq     $v1, $t8, .L80AFD28C       
/* 00898 80AFD238 28410009 */  slti    $at, $v0, 0x0009           
/* 0089C 80AFD23C 50200008 */  beql    $at, $zero, .L80AFD260     
/* 008A0 80AFD240 28410010 */  slti    $at, $v0, 0x0010           
/* 008A4 80AFD244 4600110D */  trunc.w.s $f4, $f2                   
/* 008A8 80AFD248 44082000 */  mfc1    $t0, $f4                   
/* 008AC 80AFD24C 00000000 */  nop
/* 008B0 80AFD250 01034821 */  addu    $t1, $t0, $v1              
/* 008B4 80AFD254 29210008 */  slti    $at, $t1, 0x0008           
/* 008B8 80AFD258 10200009 */  beq     $at, $zero, .L80AFD280     
/* 008BC 80AFD25C 28410010 */  slti    $at, $v0, 0x0010           
.L80AFD260:
/* 008C0 80AFD260 5020000B */  beql    $at, $zero, .L80AFD290     
/* 008C4 80AFD264 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 008C8 80AFD268 4600118D */  trunc.w.s $f6, $f2                   
/* 008CC 80AFD26C 440B3000 */  mfc1    $t3, $f6                   
/* 008D0 80AFD270 00000000 */  nop
/* 008D4 80AFD274 01636021 */  addu    $t4, $t3, $v1              
/* 008D8 80AFD278 2981000F */  slti    $at, $t4, 0x000F           
/* 008DC 80AFD27C 14200003 */  bne     $at, $zero, .L80AFD28C     
.L80AFD280:
/* 008E0 80AFD280 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008E4 80AFD284 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 008E8 80AFD288 24053830 */  addiu   $a1, $zero, 0x3830         ## $a1 = 00003830
.L80AFD28C:
/* 008EC 80AFD28C 8FA50028 */  lw      $a1, 0x0028($sp)           
.L80AFD290:
/* 008F0 80AFD290 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 008F4 80AFD294 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 008F8 80AFD298 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 008FC 80AFD29C 3C014448 */  lui     $at, 0x4448                ## $at = 44480000
/* 00900 80AFD2A0 44814000 */  mtc1    $at, $f8                   ## $f8 = 800.00
/* 00904 80AFD2A4 3C0D8016 */  lui     $t5, %hi(gSaveContext+0x10)
/* 00908 80AFD2A8 4600403C */  c.lt.s  $f8, $f0                   
/* 0090C 80AFD2AC 00000000 */  nop
/* 00910 80AFD2B0 45010005 */  bc1t    .L80AFD2C8                 
/* 00914 80AFD2B4 00000000 */  nop
/* 00918 80AFD2B8 8DADE670 */  lw      $t5, %lo(gSaveContext+0x10)($t5)
/* 0091C 80AFD2BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00920 80AFD2C0 15A00005 */  bne     $t5, $zero, .L80AFD2D8     
/* 00924 80AFD2C4 00000000 */  nop
.L80AFD2C8:
/* 00928 80AFD2C8 0C2BF3D2 */  jal     func_80AFCF48              
/* 0092C 80AFD2CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00930 80AFD2D0 10000016 */  beq     $zero, $zero, .L80AFD32C   
/* 00934 80AFD2D4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AFD2D8:
/* 00938 80AFD2D8 0C00B821 */  jal     func_8002E084              
/* 0093C 80AFD2DC 240511C7 */  addiu   $a1, $zero, 0x11C7         ## $a1 = 000011C7
/* 00940 80AFD2E0 50400012 */  beql    $v0, $zero, .L80AFD32C     
/* 00944 80AFD2E4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00948 80AFD2E8 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 0094C 80AFD2EC 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00950 80AFD2F0 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 00954 80AFD2F4 448E8000 */  mtc1    $t6, $f16                  ## $f16 = 0.00
/* 00958 80AFD2F8 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 0095C 80AFD2FC 44814000 */  mtc1    $at, $f8                   ## $f8 = 60.00
/* 00960 80AFD300 468084A0 */  cvt.s.w $f18, $f16                 
/* 00964 80AFD304 C60A0090 */  lwc1    $f10, 0x0090($s0)          ## 00000090
/* 00968 80AFD308 46049182 */  mul.s   $f6, $f18, $f4             
/* 0096C 80AFD30C 46064400 */  add.s   $f16, $f8, $f6             
/* 00970 80AFD310 4610503C */  c.lt.s  $f10, $f16                 
/* 00974 80AFD314 00000000 */  nop
/* 00978 80AFD318 45020004 */  bc1fl   .L80AFD32C                 
/* 0097C 80AFD31C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00980 80AFD320 0C2BF4CF */  jal     func_80AFD33C              
/* 00984 80AFD324 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00988 80AFD328 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AFD32C:
/* 0098C 80AFD32C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00990 80AFD330 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00994 80AFD334 03E00008 */  jr      $ra                        
/* 00998 80AFD338 00000000 */  nop
