glabel func_80AD7BF0
/* 004B0 80AD7BF0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 004B4 80AD7BF4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 004B8 80AD7BF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004BC 80AD7BFC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 004C0 80AD7C00 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 004C4 80AD7C04 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 004C8 80AD7C08 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 004CC 80AD7C0C 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 004D0 80AD7C10 24060100 */  addiu   $a2, $zero, 0x0100         ## $a2 = 00000100
/* 004D4 80AD7C14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004D8 80AD7C18 0C00BCCD */  jal     func_8002F334              
/* 004DC 80AD7C1C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 004E0 80AD7C20 10400008 */  beq     $v0, $zero, .L80AD7C44     
/* 004E4 80AD7C24 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 004E8 80AD7C28 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 004EC 80AD7C2C 0C00CE50 */  jal     Actor_SetTextWithPrefix
              
/* 004F0 80AD7C30 2406002F */  addiu   $a2, $zero, 0x002F         ## $a2 = 0000002F
/* 004F4 80AD7C34 960E010E */  lhu     $t6, 0x010E($s0)           ## 0000010E
/* 004F8 80AD7C38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004FC 80AD7C3C 0C2B5E61 */  jal     func_80AD7984              
/* 00500 80AD7C40 A60E019C */  sh      $t6, 0x019C($s0)           ## 0000019C
.L80AD7C44:
/* 00504 80AD7C44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00508 80AD7C48 0C00BE5D */  jal     func_8002F974              
/* 0050C 80AD7C4C 24053071 */  addiu   $a1, $zero, 0x3071         ## $a1 = 00003071
/* 00510 80AD7C50 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00514 80AD7C54 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00518 80AD7C58 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0051C 80AD7C5C 03E00008 */  jr      $ra                        
/* 00520 80AD7C60 00000000 */  nop


