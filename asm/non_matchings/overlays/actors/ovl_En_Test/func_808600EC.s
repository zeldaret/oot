.late_rodata
glabel D_80864778
    .float 0.7

glabel D_8086477C
    .float 0.3
glabel D_80864780
    .float 0.3
glabel D_80864784
    .float 0.7

.text
glabel func_808600EC
/* 00A9C 808600EC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00AA0 808600F0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00AA4 808600F4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00AA8 808600F8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00AAC 808600FC 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00AB0 80860100 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AB4 80860104 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 00AB8 80860108 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00ABC 8086010C AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 00AC0 80860110 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00AC4 80860114 0C21907A */  jal     func_808641E8              
/* 00AC8 80860118 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00ACC 8086011C 14400079 */  bne     $v0, $zero, .L80860304     
/* 00AD0 80860120 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00AD4 80860124 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00AD8 80860128 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 00ADC 8086012C C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 00AE0 80860130 849800B6 */  lh      $t8, 0x00B6($a0)           ## 000000B6
/* 00AE4 80860134 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 00AE8 80860138 4606203C */  c.lt.s  $f4, $f6                   
/* 00AEC 8086013C 03191023 */  subu    $v0, $t8, $t9              
/* 00AF0 80860140 00021400 */  sll     $v0, $v0, 16               
/* 00AF4 80860144 45000023 */  bc1f    .L808601D4                 
/* 00AF8 80860148 00021403 */  sra     $v0, $v0, 16               
/* 00AFC 8086014C 80880843 */  lb      $t0, 0x0843($a0)           ## 00000843
/* 00B00 80860150 51000021 */  beql    $t0, $zero, .L808601D8     
/* 00B04 80860154 8E0207E8 */  lw      $v0, 0x07E8($s0)           ## 000007E8
/* 00B08 80860158 04400003 */  bltz    $v0, .L80860168            
/* 00B0C 8086015C 00021823 */  subu    $v1, $zero, $v0            
/* 00B10 80860160 10000001 */  beq     $zero, $zero, .L80860168   
/* 00B14 80860164 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80860168:
/* 00B18 80860168 28611F40 */  slti    $at, $v1, 0x1F40           
/* 00B1C 8086016C 5420001A */  bnel    $at, $zero, .L808601D8     
/* 00B20 80860170 8E0207E8 */  lw      $v0, 0x07E8($s0)           ## 000007E8
/* 00B24 80860174 8602008A */  lh      $v0, 0x008A($s0)           ## 0000008A
/* 00B28 80860178 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 00B2C 8086017C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00B30 80860180 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 00B34 80860184 3C018086 */  lui     $at, %hi(D_80864778)       ## $at = 80860000
/* 00B38 80860188 C4284778 */  lwc1    $f8, %lo(D_80864778)($at)  
/* 00B3C 8086018C 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 00B40 80860190 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B44 80860194 4600403C */  c.lt.s  $f8, $f0                   
/* 00B48 80860198 00000000 */  nop
/* 00B4C 8086019C 45000009 */  bc1f    .L808601C4                 
/* 00B50 808601A0 00000000 */  nop
/* 00B54 808601A4 812A0842 */  lb      $t2, 0x0842($t1)           ## 00000842
/* 00B58 808601A8 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 00B5C 808601AC 11410005 */  beq     $t2, $at, .L808601C4       
/* 00B60 808601B0 00000000 */  nop
/* 00B64 808601B4 0C218653 */  jal     func_8086194C              
/* 00B68 808601B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B6C 808601BC 10000052 */  beq     $zero, $zero, .L80860308   
/* 00B70 808601C0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808601C4:
/* 00B74 808601C4 0C2189F1 */  jal     func_808627C4              
/* 00B78 808601C8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00B7C 808601CC 1000004E */  beq     $zero, $zero, .L80860308   
/* 00B80 808601D0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808601D4:
/* 00B84 808601D4 8E0207E8 */  lw      $v0, 0x07E8($s0)           ## 000007E8
.L808601D8:
/* 00B88 808601D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B8C 808601DC 10400003 */  beq     $v0, $zero, .L808601EC     
/* 00B90 808601E0 244BFFFF */  addiu   $t3, $v0, 0xFFFF           ## $t3 = FFFFFFFF
/* 00B94 808601E4 10000047 */  beq     $zero, $zero, .L80860304   
/* 00B98 808601E8 AE0B07E8 */  sw      $t3, 0x07E8($s0)           ## 000007E8
.L808601EC:
/* 00B9C 808601EC 0C00B821 */  jal     func_8002E084              
/* 00BA0 808601F0 24051555 */  addiu   $a1, $zero, 0x1555         ## $a1 = 00001555
/* 00BA4 808601F4 10400034 */  beq     $v0, $zero, .L808602C8     
/* 00BA8 808601F8 3C01435C */  lui     $at, 0x435C                ## $at = 435C0000
/* 00BAC 808601FC C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 00BB0 80860200 44815000 */  mtc1    $at, $f10                  ## $f10 = 220.00
/* 00BB4 80860204 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 00BB8 80860208 460A003C */  c.lt.s  $f0, $f10                  
/* 00BBC 8086020C 00000000 */  nop
/* 00BC0 80860210 4500001C */  bc1f    .L80860284                 
/* 00BC4 80860214 00000000 */  nop
/* 00BC8 80860218 44818000 */  mtc1    $at, $f16                  ## $f16 = 160.00
/* 00BCC 8086021C 00000000 */  nop
/* 00BD0 80860220 4600803C */  c.lt.s  $f16, $f0                  
/* 00BD4 80860224 00000000 */  nop
/* 00BD8 80860228 45000016 */  bc1f    .L80860284                 
/* 00BDC 8086022C 00000000 */  nop
/* 00BE0 80860230 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00BE4 80860234 00000000 */  nop
/* 00BE8 80860238 3C018086 */  lui     $at, %hi(D_8086477C)       ## $at = 80860000
/* 00BEC 8086023C C432477C */  lwc1    $f18, %lo(D_8086477C)($at) 
/* 00BF0 80860240 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00BF4 80860244 4612003C */  c.lt.s  $f0, $f18                  
/* 00BF8 80860248 00000000 */  nop
/* 00BFC 8086024C 4500000D */  bc1f    .L80860284                 
/* 00C00 80860250 00000000 */  nop
/* 00C04 80860254 0C00CEA1 */  jal     func_80033A84              
/* 00C08 80860258 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00C0C 8086025C 10400005 */  beq     $v0, $zero, .L80860274     
/* 00C10 80860260 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C14 80860264 0C2186E5 */  jal     func_80861B94              
/* 00C18 80860268 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C1C 8086026C 10000026 */  beq     $zero, $zero, .L80860308   
/* 00C20 80860270 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80860274:
/* 00C24 80860274 0C2189F1 */  jal     func_808627C4              
/* 00C28 80860278 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00C2C 8086027C 10000022 */  beq     $zero, $zero, .L80860308   
/* 00C30 80860280 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80860284:
/* 00C34 80860284 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00C38 80860288 00000000 */  nop
/* 00C3C 8086028C 3C018086 */  lui     $at, %hi(D_80864780)       ## $at = 80860000
/* 00C40 80860290 C4244780 */  lwc1    $f4, %lo(D_80864780)($at)  
/* 00C44 80860294 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C48 80860298 4600203C */  c.lt.s  $f4, $f0                   
/* 00C4C 8086029C 00000000 */  nop
/* 00C50 808602A0 45000005 */  bc1f    .L808602B8                 
/* 00C54 808602A4 00000000 */  nop
/* 00C58 808602A8 0C21810E */  jal     func_80860438              
/* 00C5C 808602AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C60 808602B0 10000015 */  beq     $zero, $zero, .L80860308   
/* 00C64 808602B4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808602B8:
/* 00C68 808602B8 0C2189F1 */  jal     func_808627C4              
/* 00C6C 808602BC 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00C70 808602C0 10000011 */  beq     $zero, $zero, .L80860308   
/* 00C74 808602C4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808602C8:
/* 00C78 808602C8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00C7C 808602CC 00000000 */  nop
/* 00C80 808602D0 3C018086 */  lui     $at, %hi(D_80864784)       ## $at = 80860000
/* 00C84 808602D4 C4264784 */  lwc1    $f6, %lo(D_80864784)($at)  
/* 00C88 808602D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C8C 808602DC 4600303C */  c.lt.s  $f6, $f0                   
/* 00C90 808602E0 00000000 */  nop
/* 00C94 808602E4 45000005 */  bc1f    .L808602FC                 
/* 00C98 808602E8 00000000 */  nop
/* 00C9C 808602EC 0C2182F7 */  jal     func_80860BDC              
/* 00CA0 808602F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CA4 808602F4 10000004 */  beq     $zero, $zero, .L80860308   
/* 00CA8 808602F8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808602FC:
/* 00CAC 808602FC 0C217EAC */  jal     func_8085FAB0              
/* 00CB0 80860300 8FA5002C */  lw      $a1, 0x002C($sp)           
.L80860304:
/* 00CB4 80860304 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80860308:
/* 00CB8 80860308 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00CBC 8086030C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00CC0 80860310 03E00008 */  jr      $ra                        
/* 00CC4 80860314 00000000 */  nop
