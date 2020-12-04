glabel func_809E2134
/* 00884 809E2134 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00888 809E2138 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0088C 809E213C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00890 809E2140 8C8E01E0 */  lw      $t6, 0x01E0($a0)           ## 000001E0
/* 00894 809E2144 3C0F809E */  lui     $t7, %hi(func_809E2360)    ## $t7 = 809E0000
/* 00898 809E2148 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0089C 809E214C 11C00003 */  beq     $t6, $zero, .L809E215C     
/* 008A0 809E2150 25EF2360 */  addiu   $t7, $t7, %lo(func_809E2360) ## $t7 = 809E2360
/* 008A4 809E2154 1000005B */  beq     $zero, $zero, .L809E22C4   
/* 008A8 809E2158 AC8F0190 */  sw      $t7, 0x0190($a0)           ## 00000190
.L809E215C:
/* 008AC 809E215C 24E4014C */  addiu   $a0, $a3, 0x014C           ## $a0 = 0000014C
/* 008B0 809E2160 0C02927F */  jal     SkelAnime_Update
              
/* 008B4 809E2164 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 008B8 809E2168 1040003B */  beq     $v0, $zero, .L809E2258     
/* 008BC 809E216C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 008C0 809E2170 8CF801E0 */  lw      $t8, 0x01E0($a3)           ## 000001E0
/* 008C4 809E2174 8CE50210 */  lw      $a1, 0x0210($a3)           ## 00000210
/* 008C8 809E2178 3C198016 */  lui     $t9, %hi(gSaveContext+0xef6)
/* 008CC 809E217C 57000032 */  bnel    $t8, $zero, .L809E2248     
/* 008D0 809E2180 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 008D4 809E2184 9739F556 */  lhu     $t9, %lo(gSaveContext+0xef6)($t9)
/* 008D8 809E2188 33280400 */  andi    $t0, $t9, 0x0400           ## $t0 = 00000000
/* 008DC 809E218C 1100000B */  beq     $t0, $zero, .L809E21BC     
/* 008E0 809E2190 00000000 */  nop
/* 008E4 809E2194 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 008E8 809E2198 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 008EC 809E219C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 008F0 809E21A0 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 008F4 809E21A4 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 008F8 809E21A8 46040182 */  mul.s   $f6, $f0, $f4              
/* 008FC 809E21AC 4600320D */  trunc.w.s $f8, $f6                   
/* 00900 809E21B0 44024000 */  mfc1    $v0, $f8                   
/* 00904 809E21B4 1000000A */  beq     $zero, $zero, .L809E21E0   
/* 00908 809E21B8 00000000 */  nop
.L809E21BC:
/* 0090C 809E21BC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00910 809E21C0 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00914 809E21C4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00918 809E21C8 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 0091C 809E21CC 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00920 809E21D0 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00924 809E21D4 4600848D */  trunc.w.s $f18, $f16                 
/* 00928 809E21D8 44029000 */  mfc1    $v0, $f18                  
/* 0092C 809E21DC 00000000 */  nop
.L809E21E0:
/* 00930 809E21E0 14400018 */  bne     $v0, $zero, .L809E2244     
/* 00934 809E21E4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00938 809E21E8 3C0B8016 */  lui     $t3, %hi(gSaveContext+0xef6)
/* 0093C 809E21EC 956BF556 */  lhu     $t3, %lo(gSaveContext+0xef6)($t3)
/* 00940 809E21F0 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 00944 809E21F4 316C0400 */  andi    $t4, $t3, 0x0400           ## $t4 = 00000000
/* 00948 809E21F8 1180000E */  beq     $t4, $zero, .L809E2234     
/* 0094C 809E21FC 00000000 */  nop
/* 00950 809E2200 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00954 809E2204 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00958 809E2208 46000100 */  add.s   $f4, $f0, $f0              
/* 0095C 809E220C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00960 809E2210 4600218D */  trunc.w.s $f6, $f4                   
/* 00964 809E2214 440E3000 */  mfc1    $t6, $f6                   
/* 00968 809E2218 00000000 */  nop
/* 0096C 809E221C 15C00003 */  bne     $t6, $zero, .L809E222C     
/* 00970 809E2220 00000000 */  nop
/* 00974 809E2224 10000003 */  beq     $zero, $zero, .L809E2234   
/* 00978 809E2228 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
.L809E222C:
/* 0097C 809E222C 10000001 */  beq     $zero, $zero, .L809E2234   
/* 00980 809E2230 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
.L809E2234:
/* 00984 809E2234 3C0F809E */  lui     $t7, %hi(func_809E22D4)    ## $t7 = 809E0000
/* 00988 809E2238 25EF22D4 */  addiu   $t7, $t7, %lo(func_809E22D4) ## $t7 = 809E22D4
/* 0098C 809E223C 10000001 */  beq     $zero, $zero, .L809E2244   
/* 00990 809E2240 ACEF0190 */  sw      $t7, 0x0190($a3)           ## 00000190
.L809E2244:
/* 00994 809E2244 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L809E2248:
/* 00998 809E2248 24E60210 */  addiu   $a2, $a3, 0x0210           ## $a2 = 00000210
/* 0099C 809E224C 0C27862C */  jal     func_809E18B0              
/* 009A0 809E2250 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 009A4 809E2254 8FA70018 */  lw      $a3, 0x0018($sp)           
.L809E2258:
/* 009A8 809E2258 8CF801E0 */  lw      $t8, 0x01E0($a3)           ## 000001E0
/* 009AC 809E225C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 009B0 809E2260 57000019 */  bnel    $t8, $zero, .L809E22C8     
/* 009B4 809E2264 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 009B8 809E2268 C4E80164 */  lwc1    $f8, 0x0164($a3)           ## 00000164
/* 009BC 809E226C 4600428D */  trunc.w.s $f10, $f8                  
/* 009C0 809E2270 44025000 */  mfc1    $v0, $f10                  
/* 009C4 809E2274 00000000 */  nop
/* 009C8 809E2278 28410008 */  slti    $at, $v0, 0x0008           
/* 009CC 809E227C 14200002 */  bne     $at, $zero, .L809E2288     
/* 009D0 809E2280 28410010 */  slti    $at, $v0, 0x0010           
/* 009D4 809E2284 14200007 */  bne     $at, $zero, .L809E22A4     
.L809E2288:
/* 009D8 809E2288 28410017 */  slti    $at, $v0, 0x0017           
/* 009DC 809E228C 14200003 */  bne     $at, $zero, .L809E229C     
/* 009E0 809E2290 2841001E */  slti    $at, $v0, 0x001E           
/* 009E4 809E2294 54200004 */  bnel    $at, $zero, .L809E22A8     
/* 009E8 809E2298 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
.L809E229C:
/* 009EC 809E229C 14400004 */  bne     $v0, $zero, .L809E22B0     
/* 009F0 809E22A0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L809E22A4:
/* 009F4 809E22A4 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
.L809E22A8:
/* 009F8 809E22A8 10000004 */  beq     $zero, $zero, .L809E22BC   
/* 009FC 809E22AC E4F0020C */  swc1    $f16, 0x020C($a3)          ## 0000020C
.L809E22B0:
/* 00A00 809E22B0 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 00A04 809E22B4 00000000 */  nop
/* 00A08 809E22B8 E4F2020C */  swc1    $f18, 0x020C($a3)          ## 0000020C
.L809E22BC:
/* 00A0C 809E22BC 0C2787C8 */  jal     func_809E1F20              
/* 00A10 809E22C0 8FA5001C */  lw      $a1, 0x001C($sp)           
.L809E22C4:
/* 00A14 809E22C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809E22C8:
/* 00A18 809E22C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A1C 809E22CC 03E00008 */  jr      $ra                        
/* 00A20 809E22D0 00000000 */  nop
