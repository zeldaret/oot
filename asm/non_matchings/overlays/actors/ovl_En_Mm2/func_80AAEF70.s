glabel func_80AAEF70
/* 00120 80AAEF70 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00124 80AAEF74 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00128 80AAEF78 944E0EE6 */  lhu     $t6, 0x0EE6($v0)           ## 8015F546
/* 0012C 80AAEF7C 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 00130 80AAEF80 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 00134 80AAEF84 31CF000F */  andi    $t7, $t6, 0x000F           ## $t7 = 00000000
/* 00138 80AAEF88 11E10003 */  beq     $t7, $at, .L80AAEF98       
/* 0013C 80AAEF8C 24186086 */  addiu   $t8, $zero, 0x6086         ## $t8 = 00006086
/* 00140 80AAEF90 03E00008 */  jr      $ra                        
/* 00144 80AAEF94 A498010E */  sh      $t8, 0x010E($a0)           ## 0000010E
.L80AAEF98:
/* 00148 80AAEF98 94590F26 */  lhu     $t9, 0x0F26($v0)           ## 8015F586
/* 0014C 80AAEF9C 33288000 */  andi    $t0, $t9, 0x8000           ## $t0 = 00000000
/* 00150 80AAEFA0 51000018 */  beql    $t0, $zero, .L80AAF004     
/* 00154 80AAEFA4 845913D2 */  lh      $t9, 0x13D2($v0)           ## 8015FA32
/* 00158 80AAEFA8 944913FC */  lhu     $t1, 0x13FC($v0)           ## 8015FA5C
/* 0015C 80AAEFAC 240B6082 */  addiu   $t3, $zero, 0x6082         ## $t3 = 00006082
/* 00160 80AAEFB0 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 00164 80AAEFB4 51400004 */  beql    $t2, $zero, .L80AAEFC8     
/* 00168 80AAEFB8 844C13D2 */  lh      $t4, 0x13D2($v0)           ## 8015FA32
/* 0016C 80AAEFBC 03E00008 */  jr      $ra                        
/* 00170 80AAEFC0 A48B010E */  sh      $t3, 0x010E($a0)           ## 0000010E
.L80AAEFC4:
/* 00174 80AAEFC4 844C13D2 */  lh      $t4, 0x13D2($v0)           ## 8015FA32
.L80AAEFC8:
/* 00178 80AAEFC8 240D6076 */  addiu   $t5, $zero, 0x6076         ## $t5 = 00006076
/* 0017C 80AAEFCC 51800004 */  beql    $t4, $zero, .L80AAEFE0     
/* 00180 80AAEFD0 8C4E0EC8 */  lw      $t6, 0x0EC8($v0)           ## 8015F528
/* 00184 80AAEFD4 03E00008 */  jr      $ra                        
/* 00188 80AAEFD8 A48D010E */  sh      $t5, 0x010E($a0)           ## 0000010E
.L80AAEFDC:
/* 0018C 80AAEFDC 8C4E0EC8 */  lw      $t6, 0x0EC8($v0)           ## 8015F528
.L80AAEFE0:
/* 00190 80AAEFE0 2401009E */  addiu   $at, $zero, 0x009E         ## $at = 0000009E
/* 00194 80AAEFE4 240F607E */  addiu   $t7, $zero, 0x607E         ## $t7 = 0000607E
/* 00198 80AAEFE8 15C10003 */  bne     $t6, $at, .L80AAEFF8       
/* 0019C 80AAEFEC 24186081 */  addiu   $t8, $zero, 0x6081         ## $t8 = 00006081
/* 001A0 80AAEFF0 03E00008 */  jr      $ra                        
/* 001A4 80AAEFF4 A48F010E */  sh      $t7, 0x010E($a0)           ## 0000010E
.L80AAEFF8:
/* 001A8 80AAEFF8 03E00008 */  jr      $ra                        
/* 001AC 80AAEFFC A498010E */  sh      $t8, 0x010E($a0)           ## 0000010E
.L80AAF000:
/* 001B0 80AAF000 845913D2 */  lh      $t9, 0x13D2($v0)           ## 8015FA32
.L80AAF004:
/* 001B4 80AAF004 24086076 */  addiu   $t0, $zero, 0x6076         ## $t0 = 00006076
/* 001B8 80AAF008 2409607D */  addiu   $t1, $zero, 0x607D         ## $t1 = 0000607D
/* 001BC 80AAF00C 53200004 */  beql    $t9, $zero, .L80AAF020     
/* 001C0 80AAF010 A489010E */  sh      $t1, 0x010E($a0)           ## 0000010E
/* 001C4 80AAF014 03E00008 */  jr      $ra                        
/* 001C8 80AAF018 A488010E */  sh      $t0, 0x010E($a0)           ## 0000010E
.L80AAF01C:
/* 001CC 80AAF01C A489010E */  sh      $t1, 0x010E($a0)           ## 0000010E
.L80AAF020:
/* 001D0 80AAF020 944A13FC */  lhu     $t2, 0x13FC($v0)           ## 8015FA5C
/* 001D4 80AAF024 240C009E */  addiu   $t4, $zero, 0x009E         ## $t4 = 0000009E
/* 001D8 80AAF028 AC4C0EC8 */  sw      $t4, 0x0EC8($v0)           ## 8015F528
/* 001DC 80AAF02C 314BFFFE */  andi    $t3, $t2, 0xFFFE           ## $t3 = 00000000
/* 001E0 80AAF030 A44B13FC */  sh      $t3, 0x13FC($v0)           ## 8015FA5C
/* 001E4 80AAF034 03E00008 */  jr      $ra                        
/* 001E8 80AAF038 00000000 */  nop
