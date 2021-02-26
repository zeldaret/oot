glabel func_809C6548
/* 00D18 809C6548 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00D1C 809C654C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00D20 809C6550 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00D24 809C6554 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00D28 809C6558 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 00D2C 809C655C C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 00D30 809C6560 24060046 */  addiu   $a2, $zero, 0x0046         ## $a2 = 00000046
/* 00D34 809C6564 E7AC0028 */  swc1    $f12, 0x0028($sp)          
/* 00D38 809C6568 E7A40024 */  swc1    $f4, 0x0024($sp)           
/* 00D3C 809C656C C486002C */  lwc1    $f6, 0x002C($a0)           ## 0000002C
/* 00D40 809C6570 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00D44 809C6574 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00D48 809C6578 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00D4C 809C657C 240701F4 */  addiu   $a3, $zero, 0x01F4         ## $a3 = 000001F4
/* 00D50 809C6580 0C00A511 */  jal     EffectSsGRipple_Spawn              
/* 00D54 809C6584 E7A6002C */  swc1    $f6, 0x002C($sp)           
/* 00D58 809C6588 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 00D5C 809C658C AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00D60 809C6590 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00D64 809C6594 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00D68 809C6598 24060046 */  addiu   $a2, $zero, 0x0046         ## $a2 = 00000046
/* 00D6C 809C659C 0C00A511 */  jal     EffectSsGRipple_Spawn              
/* 00D70 809C65A0 240701F4 */  addiu   $a3, $zero, 0x01F4         ## $a3 = 000001F4
/* 00D74 809C65A4 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
/* 00D78 809C65A8 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00D7C 809C65AC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00D80 809C65B0 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00D84 809C65B4 24060046 */  addiu   $a2, $zero, 0x0046         ## $a2 = 00000046
/* 00D88 809C65B8 0C00A511 */  jal     EffectSsGRipple_Spawn              
/* 00D8C 809C65BC 240701F4 */  addiu   $a3, $zero, 0x01F4         ## $a3 = 000001F4
/* 00D90 809C65C0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00D94 809C65C4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00D98 809C65C8 03E00008 */  jr      $ra                        
/* 00D9C 809C65CC 00000000 */  nop
