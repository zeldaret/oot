glabel func_80811A20
/* 0DCE0 80811A20 3C0F8016 */  lui     $t7, %hi(gGameInfo)
/* 0DCE4 80811A24 8DEFFA90 */  lw      $t7, %lo(gGameInfo)($t7)
/* 0DCE8 80811A28 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0DCEC 80811A2C AFB00020 */  sw      $s0, 0x0020($sp)
/* 0DCF0 80811A30 3C0201AA */  lui     $v0, %hi(_title_staticSegmentRomStart)
/* 0DCF4 80811A34 3C1801AF */  lui     $t8, %hi(_title_staticSegmentRomEnd)
/* 0DCF8 80811A38 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0DCFC 80811A3C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0DD00 80811A40 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0DD04 80811A44 2718B440 */  addiu   $t8, %lo(_title_staticSegmentRomEnd)
/* 0DD08 80811A48 24424000 */  addiu   $v0, %lo(_title_staticSegmentRomStart)
/* 0DD0C 80811A4C 03022823 */  subu    $a1, $t8, $v0
/* 0DD10 80811A50 3C048081 */  lui     $a0, %hi(D_80812F48)       ## $a0 = 80810000
/* 0DD14 80811A54 A5EE0110 */  sh      $t6, 0x0110($t7)           ## 80160110
/* 0DD18 80811A58 AFA5002C */  sw      $a1, 0x002C($sp)
/* 0DD1C 80811A5C AFA20030 */  sw      $v0, 0x0030($sp)
/* 0DD20 80811A60 0C00084C */  jal     osSyncPrintf

/* 0DD24 80811A64 24842F48 */  addiu   $a0, $a0, %lo(D_80812F48)  ## $a0 = 80812F48
/* 0DD28 80811A68 3C068081 */  lui     $a2, %hi(D_80812F54)       ## $a2 = 80810000
/* 0DD2C 80811A6C 24C62F54 */  addiu   $a2, $a2, %lo(D_80812F54)  ## $a2 = 80812F54
/* 0DD30 80811A70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DD34 80811A74 8FA5002C */  lw      $a1, 0x002C($sp)
/* 0DD38 80811A78 0C031521 */  jal     GameState_Alloc

/* 0DD3C 80811A7C 24070D40 */  addiu   $a3, $zero, 0x0D40         ## $a3 = 00000D40
/* 0DD40 80811A80 14400007 */  bne     $v0, $zero, .L80811AA0
/* 0DD44 80811A84 AE0200A8 */  sw      $v0, 0x00A8($s0)           ## 000000A8
/* 0DD48 80811A88 3C048081 */  lui     $a0, %hi(D_80812F68)       ## $a0 = 80810000
/* 0DD4C 80811A8C 3C058081 */  lui     $a1, %hi(D_80812F84)       ## $a1 = 80810000
/* 0DD50 80811A90 24A52F84 */  addiu   $a1, $a1, %lo(D_80812F84)  ## $a1 = 80812F84
/* 0DD54 80811A94 24842F68 */  addiu   $a0, $a0, %lo(D_80812F68)  ## $a0 = 80812F68
/* 0DD58 80811A98 0C0007FC */  jal     __assert

/* 0DD5C 80811A9C 24060D41 */  addiu   $a2, $zero, 0x0D41         ## $a2 = 00000D41
.L80811AA0:
/* 0DD60 80811AA0 8E0400A8 */  lw      $a0, 0x00A8($s0)           ## 000000A8
/* 0DD64 80811AA4 3C078081 */  lui     $a3, %hi(D_80812F98)       ## $a3 = 80810000
/* 0DD68 80811AA8 24190D42 */  addiu   $t9, $zero, 0x0D42         ## $t9 = 00000D42
/* 0DD6C 80811AAC AFB90010 */  sw      $t9, 0x0010($sp)
/* 0DD70 80811AB0 24E72F98 */  addiu   $a3, $a3, %lo(D_80812F98)  ## $a3 = 80812F98
/* 0DD74 80811AB4 8FA50030 */  lw      $a1, 0x0030($sp)
/* 0DD78 80811AB8 0C0006A8 */  jal     DmaMgr_SendRequest1
/* 0DD7C 80811ABC 8FA6002C */  lw      $a2, 0x002C($sp)
/* 0DD80 80811AC0 3C0301AF */  lui     $v1, %hi(_parameter_staticSegmentRomStart)
/* 0DD84 80811AC4 3C0801AF */  lui     $t0, %hi(_parameter_staticSegmentRomEnd)
/* 0DD88 80811AC8 2508FB00 */  addiu   $t0, %lo(_parameter_staticSegmentRomEnd)
/* 0DD8C 80811ACC 2463C000 */  addiu   $v1, %lo(_parameter_staticSegmentRomStart)
/* 0DD90 80811AD0 01032823 */  subu    $a1, $t0, $v1
/* 0DD94 80811AD4 3C068081 */  lui     $a2, %hi(D_80812FAC)       ## $a2 = 80810000
/* 0DD98 80811AD8 24C62FAC */  addiu   $a2, $a2, %lo(D_80812FAC)  ## $a2 = 80812FAC
/* 0DD9C 80811ADC AFA5002C */  sw      $a1, 0x002C($sp)
/* 0DDA0 80811AE0 AFA30030 */  sw      $v1, 0x0030($sp)
/* 0DDA4 80811AE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DDA8 80811AE8 0C031521 */  jal     GameState_Alloc

/* 0DDAC 80811AEC 24070D46 */  addiu   $a3, $zero, 0x0D46         ## $a3 = 00000D46
/* 0DDB0 80811AF0 14400007 */  bne     $v0, $zero, .L80811B10
/* 0DDB4 80811AF4 AE0200AC */  sw      $v0, 0x00AC($s0)           ## 000000AC
/* 0DDB8 80811AF8 3C048081 */  lui     $a0, %hi(D_80812FC0)       ## $a0 = 80810000
/* 0DDBC 80811AFC 3C058081 */  lui     $a1, %hi(D_80812FE0)       ## $a1 = 80810000
/* 0DDC0 80811B00 24A52FE0 */  addiu   $a1, $a1, %lo(D_80812FE0)  ## $a1 = 80812FE0
/* 0DDC4 80811B04 24842FC0 */  addiu   $a0, $a0, %lo(D_80812FC0)  ## $a0 = 80812FC0
/* 0DDC8 80811B08 0C0007FC */  jal     __assert

/* 0DDCC 80811B0C 24060D47 */  addiu   $a2, $zero, 0x0D47         ## $a2 = 00000D47
.L80811B10:
/* 0DDD0 80811B10 8E0400AC */  lw      $a0, 0x00AC($s0)           ## 000000AC
/* 0DDD4 80811B14 3C078081 */  lui     $a3, %hi(D_80812FF4)       ## $a3 = 80810000
/* 0DDD8 80811B18 24090D48 */  addiu   $t1, $zero, 0x0D48         ## $t1 = 00000D48
/* 0DDDC 80811B1C AFA90010 */  sw      $t1, 0x0010($sp)
/* 0DDE0 80811B20 24E72FF4 */  addiu   $a3, $a3, %lo(D_80812FF4)  ## $a3 = 80812FF4
/* 0DDE4 80811B24 8FA50030 */  lw      $a1, 0x0030($sp)
/* 0DDE8 80811B28 0C0006A8 */  jal     DmaMgr_SendRequest1
/* 0DDEC 80811B2C 8FA6002C */  lw      $a2, 0x002C($sp)
/* 0DDF0 80811B30 0C034204 */  jal     Matrix_Init
/* 0DDF4 80811B34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DDF8 80811B38 260400B8 */  addiu   $a0, $s0, 0x00B8           ## $a0 = 000000B8
/* 0DDFC 80811B3C 0C02A89E */  jal     View_Init
/* 0DE00 80811B40 8E050000 */  lw      $a1, 0x0000($s0)           ## 00000000
/* 0DE04 80811B44 3C0A8081 */  lui     $t2, %hi(func_80810DAC)    ## $t2 = 80810000
/* 0DE08 80811B48 3C0B8081 */  lui     $t3, %hi(func_80811A18)       ## $t3 = 80810000
/* 0DE0C 80811B4C 254A0DAC */  addiu   $t2, $t2, %lo(func_80810DAC) ## $t2 = 80810DAC
/* 0DE10 80811B50 256B1A18 */  addiu   $t3, $t3, %lo(func_80811A18)  ## $t3 = 80811A18
/* 0DE14 80811B54 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 0DE18 80811B58 AE0B0008 */  sw      $t3, 0x0008($s0)           ## 00000008
/* 0DE1C 80811B5C 0C2044EA */  jal     func_808113A8
/* 0DE20 80811B60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DE24 80811B64 3401E760 */  ori     $at, $zero, 0xE760         ## $at = 0000E760
/* 0DE28 80811B68 0C01BBC4 */  jal     func_8006EF10
/* 0DE2C 80811B6C 02012021 */  addu    $a0, $s0, $at
/* 0DE30 80811B70 3C04F000 */  lui     $a0, 0xF000                ## $a0 = F0000000
/* 0DE34 80811B74 0C03E803 */  jal     Audio_SetBGM

/* 0DE38 80811B78 3484000A */  ori     $a0, $a0, 0x000A           ## $a0 = F000000A
/* 0DE3C 80811B7C 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 0DE40 80811B80 AFAC0010 */  sw      $t4, 0x0010($sp)
/* 0DE44 80811B84 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 0DE48 80811B88 24050057 */  addiu   $a1, $zero, 0x0057         ## $a1 = 00000057
/* 0DE4C 80811B8C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0DE50 80811B90 0C03D786 */  jal     func_800F5E18
/* 0DE54 80811B94 24070007 */  addiu   $a3, $zero, 0x0007         ## $a3 = 00000007
/* 0DE58 80811B98 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 0DE5C 80811B9C 8FB00020 */  lw      $s0, 0x0020($sp)
/* 0DE60 80811BA0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0DE64 80811BA4 03E00008 */  jr      $ra
/* 0DE68 80811BA8 00000000 */  nop
/* 0DE6C 80811BAC 00000000 */  nop
