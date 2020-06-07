glabel func_809AB9DC
/* 003AC 809AB9DC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 003B0 809AB9E0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 003B4 809AB9E4 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 003B8 809AB9E8 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 003BC 809AB9EC F7B40010 */  sdc1    $f20, 0x0010($sp)          
/* 003C0 809AB9F0 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 003C4 809AB9F4 8C821C44 */  lw      $v0, 0x1C44($a0)           ## 00001C44
/* 003C8 809AB9F8 C4C60004 */  lwc1    $f6, 0x0004($a2)           ## 00000004
/* 003CC 809AB9FC 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 003D0 809ABA00 C4440080 */  lwc1    $f4, 0x0080($v0)           ## 00000080
/* 003D4 809ABA04 4604303E */  c.le.s  $f6, $f4                   
/* 003D8 809ABA08 00000000 */  nop
/* 003DC 809ABA0C 45020003 */  bc1fl   .L809ABA1C                 
/* 003E0 809ABA10 86020050 */  lh      $v0, 0x0050($s0)           ## 00000050
/* 003E4 809ABA14 A4C0005C */  sh      $zero, 0x005C($a2)         ## 0000005C
/* 003E8 809ABA18 86020050 */  lh      $v0, 0x0050($s0)           ## 00000050
.L809ABA1C:
/* 003EC 809ABA1C 10400087 */  beq     $v0, $zero, .L809ABC3C     
/* 003F0 809ABA20 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 003F4 809ABA24 A60E0050 */  sh      $t6, 0x0050($s0)           ## 00000050
/* 003F8 809ABA28 860F0050 */  lh      $t7, 0x0050($s0)           ## 00000050
/* 003FC 809ABA2C 55E0008E */  bnel    $t7, $zero, .L809ABC68     
/* 00400 809ABA30 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00404 809ABA34 0C030129 */  jal     Gameplay_GetCamera              
/* 00408 809ABA38 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0040C 809ABA3C 0C016A52 */  jal     func_8005A948              
/* 00410 809ABA40 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 00414 809ABA44 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00418 809ABA48 A7A2002E */  sh      $v0, 0x002E($sp)           
/* 0041C 809ABA4C 3C118016 */  lui     $s1, %hi(gGameInfo)
/* 00420 809ABA50 2631FA90 */  addiu   $s1, %lo(gGameInfo)
/* 00424 809ABA54 8E220000 */  lw      $v0, 0x0000($s1)           ## 8015FA90
/* 00428 809ABA58 3C01809B */  lui     $at, %hi(D_809ABCDC)       ## $at = 809B0000
/* 0042C 809ABA5C C434BCDC */  lwc1    $f20, %lo(D_809ABCDC)($at) 
/* 00430 809ABA60 84580A02 */  lh      $t8, 0x0A02($v0)           ## 00000A02
/* 00434 809ABA64 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00438 809ABA68 44818000 */  mtc1    $at, $f16                  ## $f16 = 20.00
/* 0043C 809ABA6C 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 00440 809ABA70 845909FC */  lh      $t9, 0x09FC($v0)           ## 000009FC
/* 00444 809ABA74 3C01809B */  lui     $at, %hi(D_809ABCE0)       ## $at = 809B0000
/* 00448 809ABA78 468042A0 */  cvt.s.w $f10, $f8                  
/* 0044C 809ABA7C C424BCE0 */  lwc1    $f4, %lo(D_809ABCE0)($at)  
/* 00450 809ABA80 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00454 809ABA84 86080052 */  lh      $t0, 0x0052($s0)           ## 00000052
/* 00458 809ABA88 46002182 */  mul.s   $f6, $f4, $f0              
/* 0045C 809ABA8C 87A4002E */  lh      $a0, 0x002E($sp)           
/* 00460 809ABA90 46105480 */  add.s   $f18, $f10, $f16           
/* 00464 809ABA94 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 00468 809ABA98 44815000 */  mtc1    $at, $f10                  ## $f10 = 200.00
/* 0046C 809ABA9C 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00470 809ABAA0 46808120 */  cvt.s.w $f4, $f16                  
/* 00474 809ABAA4 46069202 */  mul.s   $f8, $f18, $f6             
/* 00478 809ABAA8 46045480 */  add.s   $f18, $f10, $f4            
/* 0047C 809ABAAC 46149182 */  mul.s   $f6, $f18, $f20            
/* 00480 809ABAB0 11000005 */  beq     $t0, $zero, .L809ABAC8     
/* 00484 809ABAB4 46064080 */  add.s   $f2, $f8, $f6              
/* 00488 809ABAB8 44818000 */  mtc1    $at, $f16                  ## $f16 = -1.00
/* 0048C 809ABABC 00000000 */  nop
/* 00490 809ABAC0 46101082 */  mul.s   $f2, $f2, $f16             
/* 00494 809ABAC4 00000000 */  nop
.L809ABAC8:
/* 00498 809ABAC8 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0049C 809ABACC E7A20030 */  swc1    $f2, 0x0030($sp)           
/* 004A0 809ABAD0 C7A20030 */  lwc1    $f2, 0x0030($sp)           
/* 004A4 809ABAD4 46020282 */  mul.s   $f10, $f0, $f2             
/* 004A8 809ABAD8 E60A000C */  swc1    $f10, 0x000C($s0)          ## 0000000C
/* 004AC 809ABADC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 004B0 809ABAE0 87A4002E */  lh      $a0, 0x002E($sp)           
/* 004B4 809ABAE4 C7A20030 */  lwc1    $f2, 0x0030($sp)           
/* 004B8 809ABAE8 46000107 */  neg.s   $f4, $f0                   
/* 004BC 809ABAEC 46022482 */  mul.s   $f18, $f4, $f2             
/* 004C0 809ABAF0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 004C4 809ABAF4 E6120014 */  swc1    $f18, 0x0014($s0)          ## 00000014
/* 004C8 809ABAF8 8E220000 */  lw      $v0, 0x0000($s1)           ## 8015FA90
/* 004CC 809ABAFC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 004D0 809ABB00 44818000 */  mtc1    $at, $f16                  ## $f16 = 20.00
/* 004D4 809ABB04 84490A04 */  lh      $t1, 0x0A04($v0)           ## 00000A04
/* 004D8 809ABB08 844A09FE */  lh      $t2, 0x09FE($v0)           ## 000009FE
/* 004DC 809ABB0C 3C01809B */  lui     $at, %hi(D_809ABCE4)       ## $at = 809B0000
/* 004E0 809ABB10 44894000 */  mtc1    $t1, $f8                   ## $f8 = 0.00
/* 004E4 809ABB14 C424BCE4 */  lwc1    $f4, %lo(D_809ABCE4)($at)  
/* 004E8 809ABB18 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
/* 004EC 809ABB1C 468041A0 */  cvt.s.w $f6, $f8                   
/* 004F0 809ABB20 46002482 */  mul.s   $f18, $f4, $f0             
/* 004F4 809ABB24 46103280 */  add.s   $f10, $f6, $f16            
/* 004F8 809ABB28 448A8000 */  mtc1    $t2, $f16                  ## $f16 = 0.00
/* 004FC 809ABB2C 44813000 */  mtc1    $at, $f6                   ## $f6 = 700.00
/* 00500 809ABB30 46808120 */  cvt.s.w $f4, $f16                  
/* 00504 809ABB34 46125202 */  mul.s   $f8, $f10, $f18            
/* 00508 809ABB38 46043280 */  add.s   $f10, $f6, $f4             
/* 0050C 809ABB3C 46145482 */  mul.s   $f18, $f10, $f20           
/* 00510 809ABB40 46124400 */  add.s   $f16, $f8, $f18            
/* 00514 809ABB44 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00518 809ABB48 E6100010 */  swc1    $f16, 0x0010($s0)          ## 00000010
/* 0051C 809ABB4C 8E220000 */  lw      $v0, 0x0000($s1)           ## 8015FA90
/* 00520 809ABB50 3C01809B */  lui     $at, %hi(D_809ABCE8)       ## $at = 809B0000
/* 00524 809ABB54 C42ABCE8 */  lwc1    $f10, %lo(D_809ABCE8)($at) 
/* 00528 809ABB58 844B0A06 */  lh      $t3, 0x0A06($v0)           ## 00000A06
/* 0052C 809ABB5C 844C0A00 */  lh      $t4, 0x0A00($v0)           ## 00000A00
/* 00530 809ABB60 46005202 */  mul.s   $f8, $f10, $f0             
/* 00534 809ABB64 448B3000 */  mtc1    $t3, $f6                   ## $f6 = 0.00
/* 00538 809ABB68 3C01C2C8 */  lui     $at, 0xC2C8                ## $at = C2C80000
/* 0053C 809ABB6C 44818000 */  mtc1    $at, $f16                  ## $f16 = -100.00
/* 00540 809ABB70 46803120 */  cvt.s.w $f4, $f6                   
/* 00544 809ABB74 448C3000 */  mtc1    $t4, $f6                   ## $f6 = 0.00
/* 00548 809ABB78 00000000 */  nop
/* 0054C 809ABB7C 468032A0 */  cvt.s.w $f10, $f6                  
/* 00550 809ABB80 46082482 */  mul.s   $f18, $f4, $f8             
/* 00554 809ABB84 460A8100 */  add.s   $f4, $f16, $f10            
/* 00558 809ABB88 46142202 */  mul.s   $f8, $f4, $f20             
/* 0055C 809ABB8C 46089180 */  add.s   $f6, $f18, $f8             
/* 00560 809ABB90 E606001C */  swc1    $f6, 0x001C($s0)           ## 0000001C
/* 00564 809ABB94 8E2D0000 */  lw      $t5, 0x0000($s1)           ## 8015FA90
/* 00568 809ABB98 85A309DA */  lh      $v1, 0x09DA($t5)           ## 000009DA
/* 0056C 809ABB9C 50600032 */  beql    $v1, $zero, .L809ABC68     
/* 00570 809ABBA0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00574 809ABBA4 44835000 */  mtc1    $v1, $f10                  ## $f10 = 0.00
/* 00578 809ABBA8 C610000C */  lwc1    $f16, 0x000C($s0)          ## 0000000C
/* 0057C 809ABBAC C6060010 */  lwc1    $f6, 0x0010($s0)           ## 00000010
/* 00580 809ABBB0 46805120 */  cvt.s.w $f4, $f10                  
/* 00584 809ABBB4 46142482 */  mul.s   $f18, $f4, $f20            
/* 00588 809ABBB8 00000000 */  nop
/* 0058C 809ABBBC 46128202 */  mul.s   $f8, $f16, $f18            
/* 00590 809ABBC0 E608000C */  swc1    $f8, 0x000C($s0)           ## 0000000C
/* 00594 809ABBC4 8E2E0000 */  lw      $t6, 0x0000($s1)           ## 8015FA90
/* 00598 809ABBC8 C6080014 */  lwc1    $f8, 0x0014($s0)           ## 00000014
/* 0059C 809ABBCC 85CF09DA */  lh      $t7, 0x09DA($t6)           ## 000009DA
/* 005A0 809ABBD0 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 005A4 809ABBD4 00000000 */  nop
/* 005A8 809ABBD8 46805120 */  cvt.s.w $f4, $f10                  
/* 005AC 809ABBDC 46142402 */  mul.s   $f16, $f4, $f20            
/* 005B0 809ABBE0 00000000 */  nop
/* 005B4 809ABBE4 46103482 */  mul.s   $f18, $f6, $f16            
/* 005B8 809ABBE8 E6120010 */  swc1    $f18, 0x0010($s0)          ## 00000010
/* 005BC 809ABBEC 8E380000 */  lw      $t8, 0x0000($s1)           ## 8015FA90
/* 005C0 809ABBF0 C612001C */  lwc1    $f18, 0x001C($s0)          ## 0000001C
/* 005C4 809ABBF4 871909DA */  lh      $t9, 0x09DA($t8)           ## 000009DA
/* 005C8 809ABBF8 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 005CC 809ABBFC 00000000 */  nop
/* 005D0 809ABC00 46805120 */  cvt.s.w $f4, $f10                  
/* 005D4 809ABC04 46142182 */  mul.s   $f6, $f4, $f20             
/* 005D8 809ABC08 00000000 */  nop
/* 005DC 809ABC0C 46064402 */  mul.s   $f16, $f8, $f6             
/* 005E0 809ABC10 E6100014 */  swc1    $f16, 0x0014($s0)          ## 00000014
/* 005E4 809ABC14 8E280000 */  lw      $t0, 0x0000($s1)           ## 8015FA90
/* 005E8 809ABC18 850909DC */  lh      $t1, 0x09DC($t0)           ## 000009DC
/* 005EC 809ABC1C 44895000 */  mtc1    $t1, $f10                  ## $f10 = 0.00
/* 005F0 809ABC20 00000000 */  nop
/* 005F4 809ABC24 46805120 */  cvt.s.w $f4, $f10                  
/* 005F8 809ABC28 46142202 */  mul.s   $f8, $f4, $f20             
/* 005FC 809ABC2C 00000000 */  nop
/* 00600 809ABC30 46089182 */  mul.s   $f6, $f18, $f8             
/* 00604 809ABC34 1000000B */  beq     $zero, $zero, .L809ABC64   
/* 00608 809ABC38 E606001C */  swc1    $f6, 0x001C($s0)           ## 0000001C
.L809ABC3C:
/* 0060C 809ABC3C 86020054 */  lh      $v0, 0x0054($s0)           ## 00000054
/* 00610 809ABC40 3C118016 */  lui     $s1, %hi(gGameInfo)
/* 00614 809ABC44 2631FA90 */  addiu   $s1, %lo(gGameInfo)
/* 00618 809ABC48 50400007 */  beql    $v0, $zero, .L809ABC68     
/* 0061C 809ABC4C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00620 809ABC50 8E2A0000 */  lw      $t2, 0x0000($s1)           ## 8015FA90
/* 00624 809ABC54 854B0A08 */  lh      $t3, 0x0A08($t2)           ## 00000A08
/* 00628 809ABC58 004B6023 */  subu    $t4, $v0, $t3              
/* 0062C 809ABC5C 258DFFFD */  addiu   $t5, $t4, 0xFFFD           ## $t5 = FFFFFFFD
/* 00630 809ABC60 A60D0054 */  sh      $t5, 0x0054($s0)           ## 00000054
.L809ABC64:
/* 00634 809ABC64 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809ABC68:
/* 00638 809ABC68 D7B40010 */  ldc1    $f20, 0x0010($sp)          
/* 0063C 809ABC6C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00640 809ABC70 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00644 809ABC74 03E00008 */  jr      $ra                        
/* 00648 809ABC78 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0064C 809ABC7C 00000000 */  nop
