glabel func_80AAD080
/* 00780 80AAD080 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00784 80AAD084 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00788 80AAD088 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 0078C 80AAD08C 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 00790 80AAD090 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00794 80AAD094 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00798 80AAD098 0C00BC65 */  jal     func_8002F194              
/* 0079C 80AAD09C AFA30034 */  sw      $v1, 0x0034($sp)           
/* 007A0 80AAD0A0 10400064 */  beq     $v0, $zero, .L80AAD234     
/* 007A4 80AAD0A4 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 007A8 80AAD0A8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 007AC 80AAD0AC 0C00BCDA */  jal     func_8002F368              
/* 007B0 80AAD0B0 AFA30034 */  sw      $v1, 0x0034($sp)           
/* 007B4 80AAD0B4 9604010E */  lhu     $a0, 0x010E($s0)           ## 0000010E
/* 007B8 80AAD0B8 24014018 */  addiu   $at, $zero, 0x4018         ## $at = 00004018
/* 007BC 80AAD0BC 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 007C0 80AAD0C0 10810006 */  beq     $a0, $at, .L80AAD0DC       
/* 007C4 80AAD0C4 3C0F8012 */  lui     $t7, 0x8012                ## $t7 = 80120000
/* 007C8 80AAD0C8 3C0E80AB */  lui     $t6, %hi(func_80AACA40)    ## $t6 = 80AB0000
/* 007CC 80AAD0CC A464010E */  sh      $a0, 0x010E($v1)           ## 0000010E
/* 007D0 80AAD0D0 25CECA40 */  addiu   $t6, $t6, %lo(func_80AACA40) ## $t6 = 80AACA40
/* 007D4 80AAD0D4 10000079 */  beq     $zero, $zero, .L80AAD2BC   
/* 007D8 80AAD0D8 AE0E0284 */  sw      $t6, 0x0284($s0)           ## 00000284
.L80AAD0DC:
/* 007DC 80AAD0DC 91EF7494 */  lbu     $t7, 0x7494($t7)           ## 80127494
/* 007E0 80AAD0E0 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 007E4 80AAD0E4 24A5E660 */  addiu   $a1, $a1, 0xE660           ## $a1 = 8015E660
/* 007E8 80AAD0E8 00AFC021 */  addu    $t8, $a1, $t7              
/* 007EC 80AAD0EC 93190074 */  lbu     $t9, 0x0074($t8)           ## 00000074
/* 007F0 80AAD0F0 24010036 */  addiu   $at, $zero, 0x0036         ## $at = 00000036
/* 007F4 80AAD0F4 24084032 */  addiu   $t0, $zero, 0x4032         ## $t0 = 00004032
/* 007F8 80AAD0F8 17210005 */  bne     $t9, $at, .L80AAD110       
/* 007FC 80AAD0FC 3C0980AB */  lui     $t1, %hi(func_80AACA40)    ## $t1 = 80AB0000
/* 00800 80AAD100 A468010E */  sh      $t0, 0x010E($v1)           ## 0000010E
/* 00804 80AAD104 2529CA40 */  addiu   $t1, $t1, %lo(func_80AACA40) ## $t1 = 80AACA40
/* 00808 80AAD108 1000006C */  beq     $zero, $zero, .L80AAD2BC   
/* 0080C 80AAD10C AE090284 */  sw      $t1, 0x0284($s0)           ## 00000284
.L80AAD110:
/* 00810 80AAD110 10400009 */  beq     $v0, $zero, .L80AAD138     
/* 00814 80AAD114 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 00818 80AAD118 10410028 */  beq     $v0, $at, .L80AAD1BC       
/* 0081C 80AAD11C 240C4019 */  addiu   $t4, $zero, 0x4019         ## $t4 = 00004019
/* 00820 80AAD120 240A4018 */  addiu   $t2, $zero, 0x4018         ## $t2 = 00004018
/* 00824 80AAD124 3C0B80AB */  lui     $t3, %hi(func_80AACA40)    ## $t3 = 80AB0000
/* 00828 80AAD128 256BCA40 */  addiu   $t3, $t3, %lo(func_80AACA40) ## $t3 = 80AACA40
/* 0082C 80AAD12C A46A010E */  sh      $t2, 0x010E($v1)           ## 0000010E
/* 00830 80AAD130 10000062 */  beq     $zero, $zero, .L80AAD2BC   
/* 00834 80AAD134 AE0B0284 */  sw      $t3, 0x0284($s0)           ## 00000284
.L80AAD138:
/* 00838 80AAD138 86020280 */  lh      $v0, 0x0280($s0)           ## 00000280
/* 0083C 80AAD13C 28410008 */  slti    $at, $v0, 0x0008           
/* 00840 80AAD140 14200011 */  bne     $at, $zero, .L80AAD188     
/* 00844 80AAD144 00000000 */  nop
/* 00848 80AAD148 94AC0EF2 */  lhu     $t4, 0x0EF2($a1)           ## 8015F552
/* 0084C 80AAD14C 3C1980AB */  lui     $t9, %hi(func_80AAD014)    ## $t9 = 80AB0000
/* 00850 80AAD150 24184074 */  addiu   $t8, $zero, 0x4074         ## $t8 = 00004074
/* 00854 80AAD154 318D0001 */  andi    $t5, $t4, 0x0001           ## $t5 = 00000001
/* 00858 80AAD158 11A00007 */  beq     $t5, $zero, .L80AAD178     
/* 0085C 80AAD15C 2739D014 */  addiu   $t9, $t9, %lo(func_80AAD014) ## $t9 = 80AAD014
/* 00860 80AAD160 240E4075 */  addiu   $t6, $zero, 0x4075         ## $t6 = 00004075
/* 00864 80AAD164 3C0F80AB */  lui     $t7, %hi(func_80AACA40)    ## $t7 = 80AB0000
/* 00868 80AAD168 A46E010E */  sh      $t6, 0x010E($v1)           ## 0000010E
/* 0086C 80AAD16C 25EFCA40 */  addiu   $t7, $t7, %lo(func_80AACA40) ## $t7 = 80AACA40
/* 00870 80AAD170 10000052 */  beq     $zero, $zero, .L80AAD2BC   
/* 00874 80AAD174 AE0F0284 */  sw      $t7, 0x0284($s0)           ## 00000284
.L80AAD178:
/* 00878 80AAD178 A478010E */  sh      $t8, 0x010E($v1)           ## 0000010E
/* 0087C 80AAD17C AE190284 */  sw      $t9, 0x0284($s0)           ## 00000284
/* 00880 80AAD180 1000004E */  beq     $zero, $zero, .L80AAD2BC   
/* 00884 80AAD184 A6000280 */  sh      $zero, 0x0280($s0)         ## 00000280
.L80AAD188:
/* 00888 80AAD188 14400007 */  bne     $v0, $zero, .L80AAD1A8     
/* 0088C 80AAD18C 244A406C */  addiu   $t2, $v0, 0x406C           ## $t2 = 0000406C
/* 00890 80AAD190 24084018 */  addiu   $t0, $zero, 0x4018         ## $t0 = 00004018
/* 00894 80AAD194 3C0980AB */  lui     $t1, %hi(func_80AACA40)    ## $t1 = 80AB0000
/* 00898 80AAD198 A468010E */  sh      $t0, 0x010E($v1)           ## 0000010E
/* 0089C 80AAD19C 2529CA40 */  addiu   $t1, $t1, %lo(func_80AACA40) ## $t1 = 80AACA40
/* 008A0 80AAD1A0 10000046 */  beq     $zero, $zero, .L80AAD2BC   
/* 008A4 80AAD1A4 AE090284 */  sw      $t1, 0x0284($s0)           ## 00000284
.L80AAD1A8:
/* 008A8 80AAD1A8 3C0B80AB */  lui     $t3, %hi(func_80AACA40)    ## $t3 = 80AB0000
/* 008AC 80AAD1AC A46A010E */  sh      $t2, 0x010E($v1)           ## 0000010E
/* 008B0 80AAD1B0 256BCA40 */  addiu   $t3, $t3, %lo(func_80AACA40) ## $t3 = 80AACA40
/* 008B4 80AAD1B4 10000041 */  beq     $zero, $zero, .L80AAD2BC   
/* 008B8 80AAD1B8 AE0B0284 */  sw      $t3, 0x0284($s0)           ## 00000284
.L80AAD1BC:
/* 008BC 80AAD1BC 3C0D80AB */  lui     $t5, %hi(func_80AACEE8)    ## $t5 = 80AB0000
/* 008C0 80AAD1C0 A46C010E */  sh      $t4, 0x010E($v1)           ## 0000010E
/* 008C4 80AAD1C4 25ADCEE8 */  addiu   $t5, $t5, %lo(func_80AACEE8) ## $t5 = 80AACEE8
/* 008C8 80AAD1C8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 008CC 80AAD1CC AE0D0284 */  sw      $t5, 0x0284($s0)           ## 00000284
/* 008D0 80AAD1D0 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 008D4 80AAD1D4 24840368 */  addiu   $a0, $a0, 0x0368           ## $a0 = 06000368
/* 008D8 80AAD1D8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 008DC 80AAD1DC 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 008E0 80AAD1E0 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 008E4 80AAD1E4 468021A0 */  cvt.s.w $f6, $f4                   
/* 008E8 80AAD1E8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 008EC 80AAD1EC 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 008F0 80AAD1F0 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 008F4 80AAD1F4 24A50368 */  addiu   $a1, $a1, 0x0368           ## $a1 = 06000368
/* 008F8 80AAD1F8 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 008FC 80AAD1FC E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00900 80AAD200 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00904 80AAD204 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00908 80AAD208 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 0090C 80AAD20C E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00910 80AAD210 960F027E */  lhu     $t7, 0x027E($s0)           ## 0000027E
/* 00914 80AAD214 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 00918 80AAD218 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 0091C 80AAD21C 31F8FFFD */  andi    $t8, $t7, 0xFFFD           ## $t8 = 00000000
/* 00920 80AAD220 A618027E */  sh      $t8, 0x027E($s0)           ## 0000027E
/* 00924 80AAD224 0C01E221 */  jal     func_80078884              
/* 00928 80AAD228 A420FA32 */  sh      $zero, -0x05CE($at)        ## 8015FA32
/* 0092C 80AAD22C 10000024 */  beq     $zero, $zero, .L80AAD2C0   
/* 00930 80AAD230 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AAD234:
/* 00934 80AAD234 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00938 80AAD238 0C01B0D8 */  jal     func_8006C360              
/* 0093C 80AAD23C 2405001A */  addiu   $a1, $zero, 0x001A         ## $a1 = 0000001A
/* 00940 80AAD240 3059FFFF */  andi    $t9, $v0, 0xFFFF           ## $t9 = 00000000
/* 00944 80AAD244 17200003 */  bne     $t9, $zero, .L80AAD254     
/* 00948 80AAD248 A602010E */  sh      $v0, 0x010E($s0)           ## 0000010E
/* 0094C 80AAD24C 24084018 */  addiu   $t0, $zero, 0x4018         ## $t0 = 00004018
/* 00950 80AAD250 A608010E */  sh      $t0, 0x010E($s0)           ## 0000010E
.L80AAD254:
/* 00954 80AAD254 8609008A */  lh      $t1, 0x008A($s0)           ## 0000008A
/* 00958 80AAD258 860A00B6 */  lh      $t2, 0x00B6($s0)           ## 000000B6
/* 0095C 80AAD25C 012A1023 */  subu    $v0, $t1, $t2              
/* 00960 80AAD260 00021400 */  sll     $v0, $v0, 16               
/* 00964 80AAD264 00021403 */  sra     $v0, $v0, 16               
/* 00968 80AAD268 04400003 */  bltz    $v0, .L80AAD278            
/* 0096C 80AAD26C 00021823 */  subu    $v1, $zero, $v0            
/* 00970 80AAD270 10000001 */  beq     $zero, $zero, .L80AAD278   
/* 00974 80AAD274 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80AAD278:
/* 00978 80AAD278 28612151 */  slti    $at, $v1, 0x2151           
/* 0097C 80AAD27C 1020000F */  beq     $at, $zero, .L80AAD2BC     
/* 00980 80AAD280 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00984 80AAD284 44810000 */  mtc1    $at, $f0                   ## $f0 = 100.00
/* 00988 80AAD288 C60A0090 */  lwc1    $f10, 0x0090($s0)          ## 00000090
/* 0098C 80AAD28C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00990 80AAD290 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00994 80AAD294 4600503C */  c.lt.s  $f10, $f0                  
/* 00998 80AAD298 00000000 */  nop
/* 0099C 80AAD29C 45020008 */  bc1fl   .L80AAD2C0                 
/* 009A0 80AAD2A0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 009A4 80AAD2A4 44060000 */  mfc1    $a2, $f0                   
/* 009A8 80AAD2A8 0C00BCA6 */  jal     func_8002F298              
/* 009AC 80AAD2AC 2407000D */  addiu   $a3, $zero, 0x000D         ## $a3 = 0000000D
/* 009B0 80AAD2B0 960B027E */  lhu     $t3, 0x027E($s0)           ## 0000027E
/* 009B4 80AAD2B4 356C0001 */  ori     $t4, $t3, 0x0001           ## $t4 = 00000001
/* 009B8 80AAD2B8 A60C027E */  sh      $t4, 0x027E($s0)           ## 0000027E
.L80AAD2BC:
/* 009BC 80AAD2BC 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AAD2C0:
/* 009C0 80AAD2C0 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 009C4 80AAD2C4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 009C8 80AAD2C8 03E00008 */  jr      $ra                        
/* 009CC 80AAD2CC 00000000 */  nop


