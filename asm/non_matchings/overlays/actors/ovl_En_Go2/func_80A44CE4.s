glabel func_80A44CE4
/* 01FB4 80A44CE4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01FB8 80A44CE8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01FBC 80A44CEC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01FC0 80A44CF0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01FC4 80A44CF4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01FC8 80A44CF8 82060210 */  lb      $a2, 0x0210($s0)           ## 00000210
/* 01FCC 80A44CFC 8E050208 */  lw      $a1, 0x0208($s0)           ## 00000208
/* 01FD0 80A44D00 0C023948 */  jal     Path_OrientAndGetDistSq              
/* 01FD4 80A44D04 27A7002E */  addiu   $a3, $sp, 0x002E           ## $a3 = FFFFFFFE
/* 01FD8 80A44D08 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01FDC 80A44D0C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01FE0 80A44D10 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 01FE4 80A44D14 87A5002E */  lh      $a1, 0x002E($sp)           
/* 01FE8 80A44D18 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 01FEC 80A44D1C 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 01FF0 80A44D20 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01FF4 80A44D24 E7A00028 */  swc1    $f0, 0x0028($sp)           
/* 01FF8 80A44D28 C7A20028 */  lwc1    $f2, 0x0028($sp)           
/* 01FFC 80A44D2C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02000 80A44D30 3C014461 */  lui     $at, 0x4461                ## $at = 44610000
/* 02004 80A44D34 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02008 80A44D38 4602203C */  c.lt.s  $f4, $f2                   
/* 0200C 80A44D3C 00000000 */  nop
/* 02010 80A44D40 4500000B */  bc1f    .L80A44D70                 
/* 02014 80A44D44 00000000 */  nop
/* 02018 80A44D48 44813000 */  mtc1    $at, $f6                   ## $f6 = 900.00
/* 0201C 80A44D4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02020 80A44D50 4606103C */  c.lt.s  $f2, $f6                   
/* 02024 80A44D54 00000000 */  nop
/* 02028 80A44D58 45000005 */  bc1f    .L80A44D70                 
/* 0202C 80A44D5C 00000000 */  nop
/* 02030 80A44D60 0C29131A */  jal     func_80A44C68              
/* 02034 80A44D64 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 02038 80A44D68 10000002 */  beq     $zero, $zero, .L80A44D74   
/* 0203C 80A44D6C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A44D70:
/* 02040 80A44D70 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A44D74:
/* 02044 80A44D74 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02048 80A44D78 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0204C 80A44D7C 03E00008 */  jr      $ra                        
/* 02050 80A44D80 00000000 */  nop


