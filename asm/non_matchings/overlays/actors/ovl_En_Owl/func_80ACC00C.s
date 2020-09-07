.rdata
glabel D_80ACD754
    .asciz "\x1b[36m"
    .balign 4

glabel D_80ACD75C
    .asciz "%dのフクロウ\n"
    .balign 4

glabel D_80ACD76C
    .asciz "\x1b[m"
    .balign 4

glabel D_80ACD770
    .asciz "\x1b[36m"
    .balign 4

glabel D_80ACD778
    .asciz "SPOT 06 の デモがはしった\n"
    .balign 4

glabel D_80ACD794
    .asciz "\x1b[m"
    .balign 4

glabel D_80ACD798
    .asciz "0"
    .balign 4

glabel D_80ACD79C
    .asciz "../z_en_owl.c"
    .balign 4

.text
glabel func_80ACC00C
/* 020EC 80ACC00C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 020F0 80ACC010 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 020F4 80ACC014 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 020F8 80ACC018 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 020FC 80ACC01C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 02100 80ACC020 86050400 */  lh      $a1, 0x0400($s0)           ## 00000400
/* 02104 80ACC024 240E0258 */  addiu   $t6, $zero, 0x0258         ## $t6 = 00000258
/* 02108 80ACC028 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0210C 80ACC02C 24840032 */  addiu   $a0, $a0, 0x0032           ## $a0 = 00000032
/* 02110 80ACC030 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02114 80ACC034 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02118 80ACC038 24070384 */  addiu   $a3, $zero, 0x0384         ## $a3 = 00000384
/* 0211C 80ACC03C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 02120 80ACC040 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 02124 80ACC044 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 02128 80ACC048 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 0212C 80ACC04C 4606203C */  c.lt.s  $f4, $f6                   
/* 02130 80ACC050 A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
/* 02134 80ACC054 45020060 */  bc1fl   .L80ACC1D8                 
/* 02138 80ACC058 3C014214 */  lui     $at, 0x4214                ## $at = 42140000
/* 0213C 80ACC05C 0C02FF21 */  jal     Gameplay_InCsMode              
/* 02140 80ACC060 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 02144 80ACC064 5440005C */  bnel    $v0, $zero, .L80ACC1D8     
/* 02148 80ACC068 3C014214 */  lui     $at, 0x4214                ## $at = 42140000
/* 0214C 80ACC06C 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 02150 80ACC070 3C0480AD */  lui     $a0, %hi(D_80ACD754)       ## $a0 = 80AD0000
/* 02154 80ACC074 2484D754 */  addiu   $a0, $a0, %lo(D_80ACD754)  ## $a0 = 80ACD754
/* 02158 80ACC078 33190FC0 */  andi    $t9, $t8, 0x0FC0           ## $t9 = 00000000
/* 0215C 80ACC07C 00194183 */  sra     $t0, $t9,  6               
/* 02160 80ACC080 0C00084C */  jal     osSyncPrintf
              
/* 02164 80ACC084 AFA8002C */  sw      $t0, 0x002C($sp)           
/* 02168 80ACC088 3C0480AD */  lui     $a0, %hi(D_80ACD75C)       ## $a0 = 80AD0000
/* 0216C 80ACC08C 2484D75C */  addiu   $a0, $a0, %lo(D_80ACD75C)  ## $a0 = 80ACD75C
/* 02170 80ACC090 0C00084C */  jal     osSyncPrintf
              
/* 02174 80ACC094 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02178 80ACC098 3C0480AD */  lui     $a0, %hi(D_80ACD76C)       ## $a0 = 80AD0000
/* 0217C 80ACC09C 0C00084C */  jal     osSyncPrintf
              
/* 02180 80ACC0A0 2484D76C */  addiu   $a0, $a0, %lo(D_80ACD76C)  ## $a0 = 80ACD76C
/* 02184 80ACC0A4 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 02188 80ACC0A8 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 0218C 80ACC0AC 3C0480AD */  lui     $a0, %hi(D_80ACD770)       ## $a0 = 80AD0000
/* 02190 80ACC0B0 10410008 */  beq     $v0, $at, .L80ACC0D4       
/* 02194 80ACC0B4 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 02198 80ACC0B8 10410020 */  beq     $v0, $at, .L80ACC13C       
/* 0219C 80ACC0BC 3C0A8016 */  lui     $t2, %hi(gSegments)
/* 021A0 80ACC0C0 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 021A4 80ACC0C4 1041001D */  beq     $v0, $at, .L80ACC13C       
/* 021A8 80ACC0C8 3C0480AD */  lui     $a0, %hi(D_80ACD798)       ## $a0 = 80AD0000
/* 021AC 80ACC0CC 1000002C */  beq     $zero, $zero, .L80ACC180   
/* 021B0 80ACC0D0 2484D798 */  addiu   $a0, $a0, %lo(D_80ACD798)  ## $a0 = 80ACD798
.L80ACC0D4:
/* 021B4 80ACC0D4 0C00084C */  jal     osSyncPrintf
              
/* 021B8 80ACC0D8 2484D770 */  addiu   $a0, $a0, %lo(D_80ACD770)  ## $a0 = 80ACAF08
/* 021BC 80ACC0DC 3C0480AD */  lui     $a0, %hi(D_80ACD778)       ## $a0 = 80AD0000
/* 021C0 80ACC0E0 0C00084C */  jal     osSyncPrintf
              
/* 021C4 80ACC0E4 2484D778 */  addiu   $a0, $a0, %lo(D_80ACD778)  ## $a0 = 80ACD778
/* 021C8 80ACC0E8 3C0480AD */  lui     $a0, %hi(D_80ACD794)       ## $a0 = 80AD0000
/* 021CC 80ACC0EC 0C00084C */  jal     osSyncPrintf
              
/* 021D0 80ACC0F0 2484D794 */  addiu   $a0, $a0, %lo(D_80ACD794)  ## $a0 = 80ACD794
/* 021D4 80ACC0F4 3C020202 */  lui     $v0, 0x0202                ## $v0 = 02020000
/* 021D8 80ACC0F8 2442B0C0 */  addiu   $v0, $v0, 0xB0C0           ## $v0 = 0201B0C0
/* 021DC 80ACC0FC 00024900 */  sll     $t1, $v0,  4               
/* 021E0 80ACC100 00095702 */  srl     $t2, $t1, 28               
/* 021E4 80ACC104 000A5880 */  sll     $t3, $t2,  2               
/* 021E8 80ACC108 3C0C8016 */  lui     $t4, %hi(gSegments)
/* 021EC 80ACC10C 018B6021 */  addu    $t4, $t4, $t3              
/* 021F0 80ACC110 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 021F4 80ACC114 8D8C6FA8 */  lw      $t4, %lo(gSegments)($t4)
/* 021F8 80ACC118 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 021FC 80ACC11C 00416824 */  and     $t5, $v0, $at              
/* 02200 80ACC120 8FB80034 */  lw      $t8, 0x0034($sp)           
/* 02204 80ACC124 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02208 80ACC128 018D7021 */  addu    $t6, $t4, $t5              
/* 0220C 80ACC12C 01C17821 */  addu    $t7, $t6, $at              
/* 02210 80ACC130 AF0F1D68 */  sw      $t7, 0x1D68($t8)           ## 00001D68
/* 02214 80ACC134 10000016 */  beq     $zero, $zero, .L80ACC190   
/* 02218 80ACC138 AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
.L80ACC13C:
/* 0221C 80ACC13C 3C020202 */  lui     $v0, 0x0202                ## $v0 = 02020000
/* 02220 80ACC140 2442E6A0 */  addiu   $v0, $v0, 0xE6A0           ## $v0 = 0201E6A0
/* 02224 80ACC144 0002C900 */  sll     $t9, $v0,  4               
/* 02228 80ACC148 00194702 */  srl     $t0, $t9, 28               
/* 0222C 80ACC14C 00084880 */  sll     $t1, $t0,  2               
/* 02230 80ACC150 01495021 */  addu    $t2, $t2, $t1              
/* 02234 80ACC154 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 02238 80ACC158 8D4A6FA8 */  lw      $t2, %lo(gSegments)($t2)
/* 0223C 80ACC15C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 02240 80ACC160 00415824 */  and     $t3, $v0, $at              
/* 02244 80ACC164 8FAE0034 */  lw      $t6, 0x0034($sp)           
/* 02248 80ACC168 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0224C 80ACC16C 014B6021 */  addu    $t4, $t2, $t3              
/* 02250 80ACC170 01816821 */  addu    $t5, $t4, $at              
/* 02254 80ACC174 ADCD1D68 */  sw      $t5, 0x1D68($t6)           ## 00001D68
/* 02258 80ACC178 10000005 */  beq     $zero, $zero, .L80ACC190   
/* 0225C 80ACC17C AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
.L80ACC180:
/* 02260 80ACC180 3C0580AD */  lui     $a1, %hi(D_80ACD79C)       ## $a1 = 80AD0000
/* 02264 80ACC184 24A5D79C */  addiu   $a1, $a1, %lo(D_80ACD79C)  ## $a1 = 80ACD79C
/* 02268 80ACC188 0C0007FC */  jal     __assert
              
/* 0226C 80ACC18C 2406069D */  addiu   $a2, $zero, 0x069D         ## $a2 = 0000069D
.L80ACC190:
/* 02270 80ACC190 0C01E221 */  jal     func_80078884              
/* 02274 80ACC194 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 02278 80ACC198 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0227C 80ACC19C 3C018016 */  lui     $at, %hi(gSaveContext+0x1414)
/* 02280 80ACC1A0 A02FFA74 */  sb      $t7, %lo(gSaveContext+0x1414)($at)
/* 02284 80ACC1A4 24040014 */  addiu   $a0, $zero, 0x0014         ## $a0 = 00000014
/* 02288 80ACC1A8 0C03D13B */  jal     func_800F44EC              
/* 0228C 80ACC1AC 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 02290 80ACC1B0 961903FC */  lhu     $t9, 0x03FC($s0)           ## 000003FC
/* 02294 80ACC1B4 3C1880AD */  lui     $t8, %hi(func_80ACBA24)    ## $t8 = 80AD0000
/* 02298 80ACC1B8 2718BA24 */  addiu   $t8, $t8, %lo(func_80ACBA24) ## $t8 = 80ACBA24
/* 0229C 80ACC1BC 37280080 */  ori     $t0, $t9, 0x0080           ## $t0 = 00000080
/* 022A0 80ACC1C0 AE18040C */  sw      $t8, 0x040C($s0)           ## 0000040C
/* 022A4 80ACC1C4 A200040A */  sb      $zero, 0x040A($s0)         ## 0000040A
/* 022A8 80ACC1C8 A60803FC */  sh      $t0, 0x03FC($s0)           ## 000003FC
/* 022AC 80ACC1CC 3C018012 */  lui     $at, %hi(D_8011FB40)
/* 022B0 80ACC1D0 A420FB40 */  sh      $zero, %lo(D_8011FB40)($at)
/* 022B4 80ACC1D4 3C014214 */  lui     $at, 0x4214                ## $at = 42140000
.L80ACC1D8:
/* 022B8 80ACC1D8 44815000 */  mtc1    $at, $f10                  ## $f10 = 37.00
/* 022BC 80ACC1DC C60801B0 */  lwc1    $f8, 0x01B0($s0)           ## 000001B0
/* 022C0 80ACC1E0 4608503E */  c.le.s  $f10, $f8                  
/* 022C4 80ACC1E4 00000000 */  nop
/* 022C8 80ACC1E8 4502000D */  bc1fl   .L80ACC220                 
/* 022CC 80ACC1EC 960B03FC */  lhu     $t3, 0x03FC($s0)           ## 000003FC
/* 022D0 80ACC1F0 960203FE */  lhu     $v0, 0x03FE($s0)           ## 000003FE
/* 022D4 80ACC1F4 3C0A80AD */  lui     $t2, %hi(func_80ACBF50)    ## $t2 = 80AD0000
/* 022D8 80ACC1F8 3C0141A8 */  lui     $at, 0x41A8                ## $at = 41A80000
/* 022DC 80ACC1FC 18400006 */  blez    $v0, .L80ACC218            
/* 022E0 80ACC200 254ABF50 */  addiu   $t2, $t2, %lo(func_80ACBF50) ## $t2 = 80ACBF50
/* 022E4 80ACC204 44818000 */  mtc1    $at, $f16                  ## $f16 = 21.00
/* 022E8 80ACC208 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = FFFFFFFF
/* 022EC 80ACC20C A60903FE */  sh      $t1, 0x03FE($s0)           ## 000003FE
/* 022F0 80ACC210 10000002 */  beq     $zero, $zero, .L80ACC21C   
/* 022F4 80ACC214 E61001B0 */  swc1    $f16, 0x01B0($s0)          ## 000001B0
.L80ACC218:
/* 022F8 80ACC218 AE0A040C */  sw      $t2, 0x040C($s0)           ## 0000040C
.L80ACC21C:
/* 022FC 80ACC21C 960B03FC */  lhu     $t3, 0x03FC($s0)           ## 000003FC
.L80ACC220:
/* 02300 80ACC220 356C0008 */  ori     $t4, $t3, 0x0008           ## $t4 = 00000008
/* 02304 80ACC224 A60C03FC */  sh      $t4, 0x03FC($s0)           ## 000003FC
/* 02308 80ACC228 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0230C 80ACC22C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02310 80ACC230 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02314 80ACC234 03E00008 */  jr      $ra                        
/* 02318 80ACC238 00000000 */  nop
