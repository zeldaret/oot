.late_rodata
glabel D_808BDA1C
    .float 0.01

glabel D_808BDA20
    .float 1158.0
glabel D_808BDA24
    .float 3407.0
glabel D_808BDA28
    .float 970.0
glabel D_808BDA2C
    .float 2026.0
glabel D_808BDA30
    .float -2163.0

.text
glabel func_808BC6F8
/* 001F8 808BC6F8 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 001FC 808BC6FC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00200 808BC700 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00204 808BC704 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 00208 808BC708 C4800168 */  lwc1    $f0, 0x0168($a0)           ## 00000168
/* 0020C 808BC70C 3C01808C */  lui     $at, %hi(D_808BDA1C)       ## $at = 808C0000
/* 00210 808BC710 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x1360)
/* 00214 808BC714 4602003C */  c.lt.s  $f0, $f2                   
/* 00218 808BC718 00000000 */  nop
/* 0021C 808BC71C 45020006 */  bc1fl   .L808BC738                 
/* 00220 808BC720 E4820168 */  swc1    $f2, 0x0168($a0)           ## 00000168
/* 00224 808BC724 C424DA1C */  lwc1    $f4, %lo(D_808BDA1C)($at)  
/* 00228 808BC728 46040180 */  add.s   $f6, $f0, $f4              
/* 0022C 808BC72C 10000002 */  beq     $zero, $zero, .L808BC738   
/* 00230 808BC730 E4860168 */  swc1    $f6, 0x0168($a0)           ## 00000168
/* 00234 808BC734 E4820168 */  swc1    $f2, 0x0168($a0)           ## 00000168
.L808BC738:
/* 00238 808BC738 8DCEF9C0 */  lw      $t6, %lo(gSaveContext+0x1360)($t6)
/* 0023C 808BC73C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00240 808BC740 55C1002F */  bnel    $t6, $at, .L808BC800       
/* 00244 808BC744 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00248 808BC748 94AF1D74 */  lhu     $t7, 0x1D74($a1)           ## 00001D74
/* 0024C 808BC74C 29E102BD */  slti    $at, $t7, 0x02BD           
/* 00250 808BC750 5420002B */  bnel    $at, $zero, .L808BC800     
/* 00254 808BC754 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00258 808BC758 8CB8009C */  lw      $t8, 0x009C($a1)           ## 0000009C
/* 0025C 808BC75C 33190007 */  andi    $t9, $t8, 0x0007           ## $t9 = 00000000
/* 00260 808BC760 57200027 */  bnel    $t9, $zero, .L808BC800     
/* 00264 808BC764 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00268 808BC768 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0026C 808BC76C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00270 808BC770 3C01808C */  lui     $at, %hi(D_808BDA20)       ## $at = 808C0000
/* 00274 808BC774 C428DA20 */  lwc1    $f8, %lo(D_808BDA20)($at)  
/* 00278 808BC778 3C01808C */  lui     $at, %hi(D_808BDA24)       ## $at = 808C0000
/* 0027C 808BC77C C430DA24 */  lwc1    $f16, %lo(D_808BDA24)($at) 
/* 00280 808BC780 46080282 */  mul.s   $f10, $f0, $f8             
/* 00284 808BC784 3C01808C */  lui     $at, %hi(D_808BDA28)       ## $at = 808C0000
/* 00288 808BC788 C424DA28 */  lwc1    $f4, %lo(D_808BDA28)($at)  
/* 0028C 808BC78C E7A40038 */  swc1    $f4, 0x0038($sp)           
/* 00290 808BC790 46105480 */  add.s   $f18, $f10, $f16           
/* 00294 808BC794 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00298 808BC798 E7B20034 */  swc1    $f18, 0x0034($sp)          
/* 0029C 808BC79C 3C01808C */  lui     $at, %hi(D_808BDA2C)       ## $at = 808C0000
/* 002A0 808BC7A0 C426DA2C */  lwc1    $f6, %lo(D_808BDA2C)($at)  
/* 002A4 808BC7A4 3C01808C */  lui     $at, %hi(D_808BDA30)       ## $at = 808C0000
/* 002A8 808BC7A8 C42ADA30 */  lwc1    $f10, %lo(D_808BDA30)($at) 
/* 002AC 808BC7AC 46060202 */  mul.s   $f8, $f0, $f6              
/* 002B0 808BC7B0 3C063F4C */  lui     $a2, 0x3F4C                ## $a2 = 3F4C0000
/* 002B4 808BC7B4 24080032 */  addiu   $t0, $zero, 0x0032         ## $t0 = 00000032
/* 002B8 808BC7B8 2409001E */  addiu   $t1, $zero, 0x001E         ## $t1 = 0000001E
/* 002BC 808BC7BC 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 002C0 808BC7C0 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 002C4 808BC7C4 240C000A */  addiu   $t4, $zero, 0x000A         ## $t4 = 0000000A
/* 002C8 808BC7C8 460A4400 */  add.s   $f16, $f8, $f10            
/* 002CC 808BC7CC AFAC0020 */  sw      $t4, 0x0020($sp)           
/* 002D0 808BC7D0 AFAB001C */  sw      $t3, 0x001C($sp)           
/* 002D4 808BC7D4 AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 002D8 808BC7D8 E7B0003C */  swc1    $f16, 0x003C($sp)          
/* 002DC 808BC7DC AFA90014 */  sw      $t1, 0x0014($sp)           
/* 002E0 808BC7E0 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 002E4 808BC7E4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3F4CCCCD
/* 002E8 808BC7E8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 002EC 808BC7EC 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFF4
/* 002F0 808BC7F0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 002F4 808BC7F4 0C00A5E9 */  jal     func_800297A4              
/* 002F8 808BC7F8 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 002FC 808BC7FC 8FBF002C */  lw      $ra, 0x002C($sp)           
.L808BC800:
/* 00300 808BC800 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00304 808BC804 03E00008 */  jr      $ra                        
/* 00308 808BC808 00000000 */  nop
