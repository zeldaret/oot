glabel func_809ADA28
/* 00328 809ADA28 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0032C 809ADA2C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00330 809ADA30 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00334 809ADA34 84820032 */  lh      $v0, 0x0032($a0)           ## 00000032
/* 00338 809ADA38 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0033C 809ADA3C 28410041 */  slti    $at, $v0, 0x0041           
/* 00340 809ADA40 14200012 */  bne     $at, $zero, .L809ADA8C     
/* 00344 809ADA44 28410081 */  slti    $at, $v0, 0x0081           
/* 00348 809ADA48 10200010 */  beq     $at, $zero, .L809ADA8C     
/* 0034C 809ADA4C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00350 809ADA50 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00354 809ADA54 2445FFBF */  addiu   $a1, $v0, 0xFFBF           ## $a1 = FFFFFFBF
/* 00358 809ADA58 1040000C */  beq     $v0, $zero, .L809ADA8C     
/* 0035C 809ADA5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00360 809ADA60 3C05809B */  lui     $a1, %hi(func_809AD9F4)    ## $a1 = 809B0000
/* 00364 809ADA64 0C26B5C0 */  jal     func_809AD700              
/* 00368 809ADA68 24A5D9F4 */  addiu   $a1, $a1, %lo(func_809AD9F4) ## $a1 = 809AD9F4
/* 0036C 809ADA6C 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00370 809ADA70 3C010004 */  lui     $at, 0x0004                ## $at = 00040000
/* 00374 809ADA74 34210001 */  ori     $at, $at, 0x0001           ## $at = 00040001
/* 00378 809ADA78 01C17825 */  or      $t7, $t6, $at              ## $t7 = 00040001
/* 0037C 809ADA7C AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 00380 809ADA80 0C26B65A */  jal     func_809AD968              
/* 00384 809ADA84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00388 809ADA88 A602010E */  sh      $v0, 0x010E($s0)           ## 0000010E
.L809ADA8C:
/* 0038C 809ADA8C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00390 809ADA90 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00394 809ADA94 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00398 809ADA98 03E00008 */  jr      $ra                        
/* 0039C 809ADA9C 00000000 */  nop
