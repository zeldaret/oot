glabel func_809AEFA4
/* 01084 809AEFA4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01088 809AEFA8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0108C 809AEFAC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01090 809AEFB0 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 01094 809AEFB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01098 809AEFB8 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 0109C 809AEFBC AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 010A0 809AEFC0 84980032 */  lh      $t8, 0x0032($a0)           ## 00000032
/* 010A4 809AEFC4 01D81023 */  subu    $v0, $t6, $t8              
/* 010A8 809AEFC8 00021400 */  sll     $v0, $v0, 16               
/* 010AC 809AEFCC 00021403 */  sra     $v0, $v0, 16               
/* 010B0 809AEFD0 04430005 */  bgezl   $v0, .L809AEFE8            
/* 010B4 809AEFD4 8603025A */  lh      $v1, 0x025A($s0)           ## 0000025A
/* 010B8 809AEFD8 00021023 */  subu    $v0, $zero, $v0            
/* 010BC 809AEFDC 00021400 */  sll     $v0, $v0, 16               
/* 010C0 809AEFE0 00021403 */  sra     $v0, $v0, 16               
/* 010C4 809AEFE4 8603025A */  lh      $v1, 0x025A($s0)           ## 0000025A
.L809AEFE8:
/* 010C8 809AEFE8 10600003 */  beq     $v1, $zero, .L809AEFF8     
/* 010CC 809AEFEC 2479FFFF */  addiu   $t9, $v1, 0xFFFF           ## $t9 = FFFFFFFF
/* 010D0 809AEFF0 10000035 */  beq     $zero, $zero, .L809AF0C8   
/* 010D4 809AEFF4 A619025A */  sh      $t9, 0x025A($s0)           ## 0000025A
.L809AEFF8:
/* 010D8 809AEFF8 C600017C */  lwc1    $f0, 0x017C($s0)           ## 0000017C
/* 010DC 809AEFFC 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 010E0 809AF000 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 010E4 809AF004 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 010E8 809AF008 46002032 */  c.eq.s  $f4, $f0                   
/* 010EC 809AF00C 24071F40 */  addiu   $a3, $zero, 0x1F40         ## $a3 = 00001F40
/* 010F0 809AF010 3C014130 */  lui     $at, 0x4130                ## $at = 41300000
/* 010F4 809AF014 45020009 */  bc1fl   .L809AF03C                 
/* 010F8 809AF018 44814000 */  mtc1    $at, $f8                   ## $f8 = 11.00
/* 010FC 809AF01C 87A5002A */  lh      $a1, 0x002A($sp)           
/* 01100 809AF020 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01104 809AF024 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01108 809AF028 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 0110C 809AF02C 44813000 */  mtc1    $at, $f6                   ## $f6 = 12.00
/* 01110 809AF030 10000019 */  beq     $zero, $zero, .L809AF098   
/* 01114 809AF034 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
/* 01118 809AF038 44814000 */  mtc1    $at, $f8                   ## $f8 = 12.00
.L809AF03C:
/* 0111C 809AF03C 00000000 */  nop
/* 01120 809AF040 4600403C */  c.lt.s  $f8, $f0                   
/* 01124 809AF044 00000000 */  nop
/* 01128 809AF048 45000013 */  bc1f    .L809AF098                 
/* 0112C 809AF04C 00000000 */  nop
/* 01130 809AF050 96080088 */  lhu     $t0, 0x0088($s0)           ## 00000088
/* 01134 809AF054 28410DAC */  slti    $at, $v0, 0x0DAC           
/* 01138 809AF058 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 0113C 809AF05C 15200005 */  bne     $t1, $zero, .L809AF074     
/* 01140 809AF060 00000000 */  nop
/* 01144 809AF064 3C014130 */  lui     $at, 0x4130                ## $at = 41300000
/* 01148 809AF068 44815000 */  mtc1    $at, $f10                  ## $f10 = 11.00
/* 0114C 809AF06C 1000000A */  beq     $zero, $zero, .L809AF098   
/* 01150 809AF070 E60A017C */  swc1    $f10, 0x017C($s0)          ## 0000017C
.L809AF074:
/* 01154 809AF074 50200003 */  beql    $at, $zero, .L809AF084     
/* 01158 809AF078 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0115C 809AF07C A6000258 */  sh      $zero, 0x0258($s0)         ## 00000258
/* 01160 809AF080 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
.L809AF084:
/* 01164 809AF084 C6120080 */  lwc1    $f18, 0x0080($s0)          ## 00000080
/* 01168 809AF088 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0116C 809AF08C E6100060 */  swc1    $f16, 0x0060($s0)          ## 00000060
/* 01170 809AF090 0C26B89C */  jal     func_809AE270              
/* 01174 809AF094 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
.L809AF098:
/* 01178 809AF098 0C02927F */  jal     Animation_Update
              
/* 0117C 809AF09C 26040164 */  addiu   $a0, $s0, 0x0164           ## $a0 = 00000164
/* 01180 809AF0A0 860A0258 */  lh      $t2, 0x0258($s0)           ## 00000258
/* 01184 809AF0A4 55400007 */  bnel    $t2, $zero, .L809AF0C4     
/* 01188 809AF0A8 860B0032 */  lh      $t3, 0x0032($s0)           ## 00000032
/* 0118C 809AF0AC 0C26B94E */  jal     func_809AE538              
/* 01190 809AF0B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01194 809AF0B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01198 809AF0B8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0119C 809AF0BC 24053848 */  addiu   $a1, $zero, 0x3848         ## $a1 = 00003848
/* 011A0 809AF0C0 860B0032 */  lh      $t3, 0x0032($s0)           ## 00000032
.L809AF0C4:
/* 011A4 809AF0C4 A60B00B6 */  sh      $t3, 0x00B6($s0)           ## 000000B6
.L809AF0C8:
/* 011A8 809AF0C8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 011AC 809AF0CC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 011B0 809AF0D0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 011B4 809AF0D4 03E00008 */  jr      $ra                        
/* 011B8 809AF0D8 00000000 */  nop
