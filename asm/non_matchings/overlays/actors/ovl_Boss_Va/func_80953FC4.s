.late_rodata
glabel D_8095C758
    .float 0.1

.text
glabel func_80953FC4
/* 04D04 80953FC4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 04D08 80953FC8 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 04D0C 80953FCC AFB00030 */  sw      $s0, 0x0030($sp)           
/* 04D10 80953FD0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04D14 80953FD4 0C253CB2 */  jal     func_8094F2C8              
/* 04D18 80953FD8 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 04D1C 80953FDC 3C028096 */  lui     $v0, %hi(D_809668D2)       ## $v0 = 80960000
/* 04D20 80953FE0 804268D2 */  lb      $v0, %lo(D_809668D2)($v0)  
/* 04D24 80953FE4 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 04D28 80953FE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04D2C 80953FEC 54410006 */  bnel    $v0, $at, .L80954008       
/* 04D30 80953FF0 28410003 */  slti    $at, $v0, 0x0003           
/* 04D34 80953FF4 0C255039 */  jal     func_809540E4              
/* 04D38 80953FF8 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 04D3C 80953FFC 10000035 */  beq     $zero, $zero, .L809540D4   
/* 04D40 80954000 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 04D44 80954004 28410003 */  slti    $at, $v0, 0x0003           
.L80954008:
/* 04D48 80954008 54200032 */  bnel    $at, $zero, .L809540D4     
/* 04D4C 8095400C 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 04D50 80954010 8E0E0198 */  lw      $t6, 0x0198($s0)           ## 00000198
/* 04D54 80954014 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 04D58 80954018 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 04D5C 8095401C 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 04D60 80954020 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000001
/* 04D64 80954024 17000013 */  bne     $t8, $zero, .L80954074     
/* 04D68 80954028 AE0F0198 */  sw      $t7, 0x0198($s0)           ## 00000198
/* 04D6C 8095402C 31E80020 */  andi    $t0, $t7, 0x0020           ## $t0 = 00000000
/* 04D70 80954030 00084943 */  sra     $t1, $t0,  5               
/* 04D74 80954034 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 04D78 80954038 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 04D7C 8095403C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 04D80 80954040 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 04D84 80954044 468042A0 */  cvt.s.w $f10, $f8                  
/* 04D88 80954048 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 04D8C 8095404C 24190005 */  addiu   $t9, $zero, 0x0005         ## $t9 = 00000005
/* 04D90 80954050 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 04D94 80954054 AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 04D98 80954058 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 04D9C 8095405C E7AA001C */  swc1    $f10, 0x001C($sp)          
/* 04DA0 80954060 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 04DA4 80954064 2407005A */  addiu   $a3, $zero, 0x005A         ## $a3 = 0000005A
/* 04DA8 80954068 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 04DAC 8095406C 0C253E19 */  jal     func_8094F864              
/* 04DB0 80954070 E7A60014 */  swc1    $f6, 0x0014($sp)           
.L80954074:
/* 04DB4 80954074 0C02927F */  jal     SkelAnime_Update
              
/* 04DB8 80954078 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 04DBC 8095407C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04DC0 80954080 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 04DC4 80954084 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 04DC8 80954088 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 04DCC 8095408C 44050000 */  mfc1    $a1, $f0                   
/* 04DD0 80954090 44060000 */  mfc1    $a2, $f0                   
/* 04DD4 80954094 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 04DD8 80954098 26040168 */  addiu   $a0, $s0, 0x0168           ## $a0 = 00000168
/* 04DDC 8095409C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 04DE0 809540A0 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 04DE4 809540A4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 04DE8 809540A8 00000000 */  nop
/* 04DEC 809540AC 3C018096 */  lui     $at, %hi(D_8095C758)       ## $at = 80960000
/* 04DF0 809540B0 C432C758 */  lwc1    $f18, %lo(D_8095C758)($at) 
/* 04DF4 809540B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04DF8 809540B8 4612003C */  c.lt.s  $f0, $f18                  
/* 04DFC 809540BC 00000000 */  nop
/* 04E00 809540C0 45020004 */  bc1fl   .L809540D4                 
/* 04E04 809540C4 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 04E08 809540C8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 04E0C 809540CC 24053143 */  addiu   $a1, $zero, 0x3143         ## $a1 = 00003143
/* 04E10 809540D0 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809540D4:
/* 04E14 809540D4 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 04E18 809540D8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 04E1C 809540DC 03E00008 */  jr      $ra                        
/* 04E20 809540E0 00000000 */  nop
