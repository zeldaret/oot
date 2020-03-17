glabel func_8084DC48
/* 1BA38 8084DC48 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1BA3C 8084DC4C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1BA40 8084DC50 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 1BA44 8084DC54 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 1BA48 8084DC58 8C8E0680 */  lw      $t6, 0x0680($a0)           ## 00000680
/* 1BA4C 8084DC5C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 1BA50 8084DC60 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1BA54 8084DC64 35CF0020 */  ori     $t7, $t6, 0x0020           ## $t7 = 00000020
/* 1BA58 8084DC68 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 1BA5C 8084DC6C AC8F0680 */  sw      $t7, 0x0680($a0)           ## 00000680
/* 1BA60 8084DC70 0C20D99C */  jal     func_80836670              
/* 1BA64 8084DC74 E484006C */  swc1    $f4, 0x006C($a0)           ## 0000006C
/* 1BA68 8084DC78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1BA6C 8084DC7C 0C20EC10 */  jal     func_8083B040              
/* 1BA70 8084DC80 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 1BA74 8084DC84 544000B5 */  bnel    $v0, $zero, .L8084DF5C     
/* 1BA78 8084DC88 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1BA7C 8084DC8C 8218014F */  lb      $t8, 0x014F($s0)           ## 0000014F
/* 1BA80 8084DC90 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 1BA84 8084DC94 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1BA88 8084DC98 54780006 */  bnel    $v1, $t8, .L8084DCB4       
/* 1BA8C 8084DC9C 8202084F */  lb      $v0, 0x084F($s0)           ## 0000084F
/* 1BA90 8084DCA0 0C20E3C6 */  jal     func_80838F18              
/* 1BA94 8084DCA4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1BA98 8084DCA8 100000AC */  beq     $zero, $zero, .L8084DF5C   
/* 1BA9C 8084DCAC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1BAA0 8084DCB0 8202084F */  lb      $v0, 0x084F($s0)           ## 0000084F
.L8084DCB4:
/* 1BAA4 8084DCB4 14400063 */  bne     $v0, $zero, .L8084DE44     
/* 1BAA8 8084DCB8 00000000 */  nop
/* 1BAAC 8084DCBC 86190850 */  lh      $t9, 0x0850($s0)           ## 00000850
/* 1BAB0 8084DCC0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1BAB4 8084DCC4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1BAB8 8084DCC8 17200028 */  bne     $t9, $zero, .L8084DD6C     
/* 1BABC 8084DCCC 3C068086 */  lui     $a2, %hi(D_80858AB4)       ## $a2 = 80860000
/* 1BAC0 8084DCD0 260601B4 */  addiu   $a2, $s0, 0x01B4           ## $a2 = 000001B4
/* 1BAC4 8084DCD4 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000001B4
/* 1BAC8 8084DCD8 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 1BACC 8084DCDC 0C028EF0 */  jal     func_800A3BC0              
/* 1BAD0 8084DCE0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1BAD4 8084DCE4 14400011 */  bne     $v0, $zero, .L8084DD2C     
/* 1BAD8 8084DCE8 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 1BADC 8084DCEC 3C0141B0 */  lui     $at, 0x41B0                ## $at = 41B00000
/* 1BAE0 8084DCF0 44814000 */  mtc1    $at, $f8                   ## $f8 = 22.00
/* 1BAE4 8084DCF4 C60601CC */  lwc1    $f6, 0x01CC($s0)           ## 000001CC
/* 1BAE8 8084DCF8 3C088086 */  lui     $t0, %hi(D_80858AB4)       ## $t0 = 80860000
/* 1BAEC 8084DCFC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 1BAF0 8084DD00 4606403E */  c.le.s  $f8, $f6                   
/* 1BAF4 8084DD04 00000000 */  nop
/* 1BAF8 8084DD08 4500000D */  bc1f    .L8084DD40                 
/* 1BAFC 8084DD0C 00000000 */  nop
/* 1BB00 8084DD10 8D088AB4 */  lw      $t0, %lo(D_80858AB4)($t0)  
/* 1BB04 8084DD14 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 1BB08 8084DD18 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 1BB0C 8084DD1C 95090000 */  lhu     $t1, 0x0000($t0)           ## 80860000
/* 1BB10 8084DD20 01215027 */  nor     $t2, $t1, $at              
/* 1BB14 8084DD24 11400006 */  beq     $t2, $zero, .L8084DD40     
/* 1BB18 8084DD28 00000000 */  nop
.L8084DD2C:
/* 1BB1C 8084DD2C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1BB20 8084DD30 0C20F4CC */  jal     func_8083D330              
/* 1BB24 8084DD34 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1BB28 8084DD38 10000008 */  beq     $zero, $zero, .L8084DD5C   
/* 1BB2C 8084DD3C 00000000 */  nop
.L8084DD40:
/* 1BB30 8084DD40 0C02914C */  jal     func_800A4530              
/* 1BB34 8084DD44 3C0541A0 */  lui     $a1, 0x41A0                ## $a1 = 41A00000
/* 1BB38 8084DD48 10400004 */  beq     $v0, $zero, .L8084DD5C     
/* 1BB3C 8084DD4C 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 1BB40 8084DD50 44815000 */  mtc1    $at, $f10                  ## $f10 = -2.00
/* 1BB44 8084DD54 00000000 */  nop
/* 1BB48 8084DD58 E60A0060 */  swc1    $f10, 0x0060($s0)          ## 00000060
.L8084DD5C:
/* 1BB4C 8084DD5C 0C20DC87 */  jal     func_8083721C              
/* 1BB50 8084DD60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1BB54 8084DD64 1000007D */  beq     $zero, $zero, .L8084DF5C   
/* 1BB58 8084DD68 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084DD6C:
/* 1BB5C 8084DD6C 8CC68AB4 */  lw      $a2, %lo(D_80858AB4)($a2)  
/* 1BB60 8084DD70 0C212C56 */  jal     func_8084B158              
/* 1BB64 8084DD74 8E070060 */  lw      $a3, 0x0060($s0)           ## 00000060
/* 1BB68 8084DD78 240B3E80 */  addiu   $t3, $zero, 0x3E80         ## $t3 = 00003E80
/* 1BB6C 8084DD7C A60B06C2 */  sh      $t3, 0x06C2($s0)           ## 000006C2
/* 1BB70 8084DD80 3C0C8086 */  lui     $t4, %hi(D_80858AB4)       ## $t4 = 80860000
/* 1BB74 8084DD84 8D8C8AB4 */  lw      $t4, %lo(D_80858AB4)($t4)  
/* 1BB78 8084DD88 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 1BB7C 8084DD8C 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 1BB80 8084DD90 958D0000 */  lhu     $t5, 0x0000($t4)           ## 80860000
/* 1BB84 8084DD94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1BB88 8084DD98 01A17027 */  nor     $t6, $t5, $at              
/* 1BB8C 8084DD9C 55C00020 */  bnel    $t6, $zero, .L8084DE20     
/* 1BB90 8084DDA0 820D084F */  lb      $t5, 0x084F($s0)           ## 0000084F
/* 1BB94 8084DDA4 0C20F96A */  jal     func_8083E5A8              
/* 1BB98 8084DDA8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 1BB9C 8084DDAC 5440001C */  bnel    $v0, $zero, .L8084DE20     
/* 1BBA0 8084DDB0 820D084F */  lb      $t5, 0x084F($s0)           ## 0000084F
/* 1BBA4 8084DDB4 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 1BBA8 8084DDB8 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 1BBAC 8084DDBC 3C088012 */  lui     $t0, 0x8012                ## $t0 = 80120000
/* 1BBB0 8084DDC0 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 1BBB4 8084DDC4 17000015 */  bne     $t8, $zero, .L8084DE1C     
/* 1BBB8 8084DDC8 3C0A8012 */  lui     $t2, 0x8012                ## $t2 = 80120000
/* 1BBBC 8084DDCC 8F39E700 */  lw      $t9, -0x1900($t9)          ## 8015E700
/* 1BBC0 8084DDD0 8D0871BC */  lw      $t0, 0x71BC($t0)           ## 801271BC
/* 1BBC4 8084DDD4 914A71F7 */  lbu     $t2, 0x71F7($t2)           ## 801271F7
/* 1BBC8 8084DDD8 3C018085 */  lui     $at, %hi(D_80854784)       ## $at = 80850000
/* 1BBCC 8084DDDC 03284824 */  and     $t1, $t9, $t0              
/* 1BBD0 8084DDE0 01495807 */  srav    $t3, $t1, $t2              
/* 1BBD4 8084DDE4 000B6080 */  sll     $t4, $t3,  2               
/* 1BBD8 8084DDE8 002C0821 */  addu    $at, $at, $t4              
/* 1BBDC 8084DDEC C4324784 */  lwc1    $f18, %lo(D_80854784)($at) 
/* 1BBE0 8084DDF0 C6100084 */  lwc1    $f16, 0x0084($s0)          ## 00000084
/* 1BBE4 8084DDF4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1BBE8 8084DDF8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1BBEC 8084DDFC 4612803C */  c.lt.s  $f16, $f18                 
/* 1BBF0 8084DE00 00000000 */  nop
/* 1BBF4 8084DE04 45020006 */  bc1fl   .L8084DE20                 
/* 1BBF8 8084DE08 820D084F */  lb      $t5, 0x084F($s0)           ## 0000084F
/* 1BBFC 8084DE0C 0C2136F1 */  jal     func_8084DBC4              
/* 1BC00 8084DE10 3C06C000 */  lui     $a2, 0xC000                ## $a2 = C0000000
/* 1BC04 8084DE14 10000051 */  beq     $zero, $zero, .L8084DF5C   
/* 1BC08 8084DE18 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084DE1C:
/* 1BC0C 8084DE1C 820D084F */  lb      $t5, 0x084F($s0)           ## 0000084F
.L8084DE20:
/* 1BC10 8084DE20 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1BC14 8084DE24 24C63328 */  addiu   $a2, $a2, 0x3328           ## $a2 = 04003328
/* 1BC18 8084DE28 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 00000001
/* 1BC1C 8084DE2C A20E084F */  sb      $t6, 0x084F($s0)           ## 0000084F
/* 1BC20 8084DE30 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1BC24 8084DE34 0C20CB1B */  jal     func_80832C6C              
/* 1BC28 8084DE38 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1BC2C 8084DE3C 10000047 */  beq     $zero, $zero, .L8084DF5C   
/* 1BC30 8084DE40 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084DE44:
/* 1BC34 8084DE44 14620018 */  bne     $v1, $v0, .L8084DEA8       
/* 1BC38 8084DE48 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1BC3C 8084DE4C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1BC40 8084DE50 0C028EF0 */  jal     func_800A3BC0              
/* 1BC44 8084DE54 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 1BC48 8084DE58 0C212C00 */  jal     func_8084B000              
/* 1BC4C 8084DE5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1BC50 8084DE60 860F06C2 */  lh      $t7, 0x06C2($s0)           ## 000006C2
/* 1BC54 8084DE64 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1BC58 8084DE68 29E12710 */  slti    $at, $t7, 0x2710           
/* 1BC5C 8084DE6C 5020003B */  beql    $at, $zero, .L8084DF5C     
/* 1BC60 8084DE70 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1BC64 8084DE74 C6040084 */  lwc1    $f4, 0x0084($s0)           ## 00000084
/* 1BC68 8084DE78 8218084F */  lb      $t8, 0x084F($s0)           ## 0000084F
/* 1BC6C 8084DE7C 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1BC70 8084DE80 4600218D */  trunc.w.s $f6, $f4                   
/* 1BC74 8084DE84 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 1BC78 8084DE88 A219084F */  sb      $t9, 0x084F($s0)           ## 0000084F
/* 1BC7C 8084DE8C 24C632F0 */  addiu   $a2, $a2, 0x32F0           ## $a2 = 040032F0
/* 1BC80 8084DE90 44093000 */  mfc1    $t1, $f6                   
/* 1BC84 8084DE94 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1BC88 8084DE98 0C20CB1B */  jal     func_80832C6C              
/* 1BC8C 8084DE9C A6090850 */  sh      $t1, 0x0850($s0)           ## 00000850
/* 1BC90 8084DEA0 1000002E */  beq     $zero, $zero, .L8084DF5C   
/* 1BC94 8084DEA4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084DEA8:
/* 1BC98 8084DEA8 3C068086 */  lui     $a2, %hi(D_80858AB4)       ## $a2 = 80860000
/* 1BC9C 8084DEAC 8CC68AB4 */  lw      $a2, %lo(D_80858AB4)($a2)  
/* 1BCA0 8084DEB0 0C20F44B */  jal     func_8083D12C              
/* 1BCA4 8084DEB4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1BCA8 8084DEB8 3C038086 */  lui     $v1, %hi(D_80858AB4)       ## $v1 = 80860000
/* 1BCAC 8084DEBC 14400026 */  bne     $v0, $zero, .L8084DF58     
/* 1BCB0 8084DEC0 24638AB4 */  addiu   $v1, $v1, %lo(D_80858AB4)  ## $v1 = 80858AB4
/* 1BCB4 8084DEC4 860A0850 */  lh      $t2, 0x0850($s0)           ## 00000850
/* 1BCB8 8084DEC8 3C018085 */  lui     $at, %hi(D_80855538)       ## $at = 80850000
/* 1BCBC 8084DECC C4305538 */  lwc1    $f16, %lo(D_80855538)($at) 
/* 1BCC0 8084DED0 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 1BCC4 8084DED4 8E0B067C */  lw      $t3, 0x067C($s0)           ## 0000067C
/* 1BCC8 8084DED8 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 1BCCC 8084DEDC 468042A0 */  cvt.s.w $f10, $f8                  
/* 1BCD0 8084DEE0 44812000 */  mtc1    $at, $f4                   ## $f4 = 4.00
/* 1BCD4 8084DEE4 316C0800 */  andi    $t4, $t3, 0x0800           ## $t4 = 00000000
/* 1BCD8 8084DEE8 46105482 */  mul.s   $f18, $f10, $f16           
/* 1BCDC 8084DEEC 11800002 */  beq     $t4, $zero, .L8084DEF8     
/* 1BCE0 8084DEF0 46049080 */  add.s   $f2, $f18, $f4             
/* 1BCE4 8084DEF4 AC600000 */  sw      $zero, 0x0000($v1)         ## 80858AB4
.L8084DEF8:
/* 1BCE8 8084DEF8 C6000060 */  lwc1    $f0, 0x0060($s0)           ## 00000060
/* 1BCEC 8084DEFC E7A2002C */  swc1    $f2, 0x002C($sp)           
/* 1BCF0 8084DF00 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1BCF4 8084DF04 46000005 */  abs.s   $f0, $f0                   
/* 1BCF8 8084DF08 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1BCFC 8084DF0C 44070000 */  mfc1    $a3, $f0                   
/* 1BD00 8084DF10 0C212C56 */  jal     func_8084B158              
/* 1BD04 8084DF14 8C660000 */  lw      $a2, 0x0000($v1)           ## 80858AB4
/* 1BD08 8084DF18 260406C2 */  addiu   $a0, $s0, 0x06C2           ## $a0 = 000006C2
/* 1BD0C 8084DF1C 2405D8F0 */  addiu   $a1, $zero, 0xD8F0         ## $a1 = FFFFD8F0
/* 1BD10 8084DF20 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 1BD14 8084DF24 24060320 */  addiu   $a2, $zero, 0x0320         ## $a2 = 00000320
/* 1BD18 8084DF28 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 1BD1C 8084DF2C 44810000 */  mtc1    $at, $f0                   ## $f0 = 8.00
/* 1BD20 8084DF30 C7A2002C */  lwc1    $f2, 0x002C($sp)           
/* 1BD24 8084DF34 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1BD28 8084DF38 4602003C */  c.lt.s  $f0, $f2                   
/* 1BD2C 8084DF3C 00000000 */  nop
/* 1BD30 8084DF40 45020003 */  bc1fl   .L8084DF50                 
/* 1BD34 8084DF44 44061000 */  mfc1    $a2, $f2                   
/* 1BD38 8084DF48 46000086 */  mov.s   $f2, $f0                   
/* 1BD3C 8084DF4C 44061000 */  mfc1    $a2, $f2                   
.L8084DF50:
/* 1BD40 8084DF50 0C2136F1 */  jal     func_8084DBC4              
/* 1BD44 8084DF54 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
.L8084DF58:
/* 1BD48 8084DF58 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084DF5C:
/* 1BD4C 8084DF5C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 1BD50 8084DF60 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 1BD54 8084DF64 03E00008 */  jr      $ra                        
/* 1BD58 8084DF68 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


