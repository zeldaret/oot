.late_rodata
glabel D_809E91B4
    .float 0.8

.text
glabel func_809E7A88
/* 022B8 809E7A88 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 022BC 809E7A8C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 022C0 809E7A90 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 022C4 809E7A94 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 022C8 809E7A98 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 022CC 809E7A9C 0C02927F */  jal     SkelAnime_Update
              
/* 022D0 809E7AA0 2484017C */  addiu   $a0, $a0, 0x017C           ## $a0 = 0000017C
/* 022D4 809E7AA4 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 022D8 809E7AA8 860501CA */  lh      $a1, 0x01CA($s0)           ## 000001CA
/* 022DC 809E7AAC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 022E0 809E7AB0 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 022E4 809E7AB4 260401CA */  addiu   $a0, $s0, 0x01CA           ## $a0 = 000001CA
/* 022E8 809E7AB8 860501CC */  lh      $a1, 0x01CC($s0)           ## 000001CC
/* 022EC 809E7ABC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 022F0 809E7AC0 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 022F4 809E7AC4 260401CC */  addiu   $a0, $s0, 0x01CC           ## $a0 = 000001CC
/* 022F8 809E7AC8 860501CE */  lh      $a1, 0x01CE($s0)           ## 000001CE
/* 022FC 809E7ACC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 02300 809E7AD0 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 02304 809E7AD4 260401CE */  addiu   $a0, $s0, 0x01CE           ## $a0 = 000001CE
/* 02308 809E7AD8 860501C8 */  lh      $a1, 0x01C8($s0)           ## 000001C8
/* 0230C 809E7ADC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 02310 809E7AE0 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 02314 809E7AE4 50400010 */  beql    $v0, $zero, .L809E7B28     
/* 02318 809E7AE8 860201C8 */  lh      $v0, 0x01C8($s0)           ## 000001C8
/* 0231C 809E7AEC 860E01C8 */  lh      $t6, 0x01C8($s0)           ## 000001C8
/* 02320 809E7AF0 3C01809F */  lui     $at, %hi(D_809E91B4)       ## $at = 809F0000
/* 02324 809E7AF4 C42891B4 */  lwc1    $f8, %lo(D_809E91B4)($at)  
/* 02328 809E7AF8 25CF4000 */  addiu   $t7, $t6, 0x4000           ## $t7 = 00004000
/* 0232C 809E7AFC 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 02330 809E7B00 3C01C680 */  lui     $at, 0xC680                ## $at = C6800000
/* 02334 809E7B04 44818000 */  mtc1    $at, $f16                  ## $f16 = -16384.00
/* 02338 809E7B08 468021A0 */  cvt.s.w $f6, $f4                   
/* 0233C 809E7B0C 46083282 */  mul.s   $f10, $f6, $f8             
/* 02340 809E7B10 460A8481 */  sub.s   $f18, $f16, $f10           
/* 02344 809E7B14 4600910D */  trunc.w.s $f4, $f18                  
/* 02348 809E7B18 44192000 */  mfc1    $t9, $f4                   
/* 0234C 809E7B1C 00000000 */  nop
/* 02350 809E7B20 A61901C8 */  sh      $t9, 0x01C8($s0)           ## 000001C8
/* 02354 809E7B24 860201C8 */  lh      $v0, 0x01C8($s0)           ## 000001C8
.L809E7B28:
/* 02358 809E7B28 24424000 */  addiu   $v0, $v0, 0x4000           ## $v0 = 00004000
/* 0235C 809E7B2C 00021400 */  sll     $v0, $v0, 16               
/* 02360 809E7B30 00021403 */  sra     $v0, $v0, 16               
/* 02364 809E7B34 04400003 */  bltz    $v0, .L809E7B44            
/* 02368 809E7B38 00021823 */  subu    $v1, $zero, $v0            
/* 0236C 809E7B3C 10000001 */  beq     $zero, $zero, .L809E7B44   
/* 02370 809E7B40 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00004000
.L809E7B44:
/* 02374 809E7B44 28610100 */  slti    $at, $v1, 0x0100           
/* 02378 809E7B48 10200012 */  beq     $at, $zero, .L809E7B94     
/* 0237C 809E7B4C 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 02380 809E7B50 44814000 */  mtc1    $at, $f8                   ## $f8 = 80.00
/* 02384 809E7B54 C6100230 */  lwc1    $f16, 0x0230($s0)          ## 00000230
/* 02388 809E7B58 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 0238C 809E7B5C 92080249 */  lbu     $t0, 0x0249($s0)           ## 00000249
/* 02390 809E7B60 46104282 */  mul.s   $f10, $f8, $f16            
/* 02394 809E7B64 35090001 */  ori     $t1, $t0, 0x0001           ## $t1 = 00000001
/* 02398 809E7B68 A2090249 */  sb      $t1, 0x0249($s0)           ## 00000249
/* 0239C 809E7B6C 460A303C */  c.lt.s  $f6, $f10                  
/* 023A0 809E7B70 00000000 */  nop
/* 023A4 809E7B74 45000005 */  bc1f    .L809E7B8C                 
/* 023A8 809E7B78 00000000 */  nop
/* 023AC 809E7B7C 0C2797E7 */  jal     func_809E5F9C              
/* 023B0 809E7B80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 023B4 809E7B84 10000003 */  beq     $zero, $zero, .L809E7B94   
/* 023B8 809E7B88 00000000 */  nop
.L809E7B8C:
/* 023BC 809E7B8C 0C27981E */  jal     func_809E6078              
/* 023C0 809E7B90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809E7B94:
/* 023C4 809E7B94 0C279B73 */  jal     func_809E6DCC              
/* 023C8 809E7B98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 023CC 809E7B9C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 023D0 809E7BA0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 023D4 809E7BA4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 023D8 809E7BA8 03E00008 */  jr      $ra                        
/* 023DC 809E7BAC 00000000 */  nop
