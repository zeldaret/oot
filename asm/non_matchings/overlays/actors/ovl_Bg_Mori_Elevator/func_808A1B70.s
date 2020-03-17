glabel func_808A1B70
/* 00370 808A1B70 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00374 808A1B74 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00378 808A1B78 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0037C 808A1B7C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00380 808A1B80 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00384 808A1B84 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00388 808A1B88 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0038C 808A1B8C 00A12021 */  addu    $a0, $a1, $at              
/* 00390 808A1B90 0C026062 */  jal     Object_IsLoaded
              
/* 00394 808A1B94 82050171 */  lb      $a1, 0x0171($s0)           ## 00000171
/* 00398 808A1B98 50400021 */  beql    $v0, $zero, .L808A1C20     
/* 0039C 808A1B9C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 003A0 808A1BA0 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 003A4 808A1BA4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 003A8 808A1BA8 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 003AC 808A1BAC 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 003B0 808A1BB0 10400015 */  beq     $v0, $zero, .L808A1C08     
/* 003B4 808A1BB4 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 003B8 808A1BB8 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 003BC 808A1BBC 01EE7821 */  addu    $t7, $t7, $t6              
/* 003C0 808A1BC0 81EF1CBC */  lb      $t7, 0x1CBC($t7)           ## 00011CBC
/* 003C4 808A1BC4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 003C8 808A1BC8 3C04808A */  lui     $a0, %hi(D_808A22CC)       ## $a0 = 808A0000
/* 003CC 808A1BCC 15E10008 */  bne     $t7, $at, .L808A1BF0       
/* 003D0 808A1BD0 248422CC */  addiu   $a0, $a0, %lo(D_808A22CC)  ## $a0 = 808A22CC
/* 003D4 808A1BD4 3C014292 */  lui     $at, 0x4292                ## $at = 42920000
/* 003D8 808A1BD8 44812000 */  mtc1    $at, $f4                   ## $f4 = 73.00
/* 003DC 808A1BDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003E0 808A1BE0 0C228781 */  jal     func_808A1E04              
/* 003E4 808A1BE4 E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 003E8 808A1BE8 10000009 */  beq     $zero, $zero, .L808A1C10   
/* 003EC 808A1BEC 00000000 */  nop
.L808A1BF0:
/* 003F0 808A1BF0 3C05808A */  lui     $a1, %hi(D_808A2304)       ## $a1 = 808A0000
/* 003F4 808A1BF4 24A52304 */  addiu   $a1, $a1, %lo(D_808A2304)  ## $a1 = 808A2304
/* 003F8 808A1BF8 0C00084C */  jal     osSyncPrintf
              
/* 003FC 808A1BFC 24060173 */  addiu   $a2, $zero, 0x0173         ## $a2 = 00000173
/* 00400 808A1C00 10000003 */  beq     $zero, $zero, .L808A1C10   
/* 00404 808A1C04 00000000 */  nop
.L808A1C08:
/* 00408 808A1C08 0C228781 */  jal     func_808A1E04              
/* 0040C 808A1C0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L808A1C10:
/* 00410 808A1C10 3C18808A */  lui     $t8, %hi(func_808A210C)    ## $t8 = 808A0000
/* 00414 808A1C14 2718210C */  addiu   $t8, $t8, %lo(func_808A210C) ## $t8 = 808A210C
/* 00418 808A1C18 AE180134 */  sw      $t8, 0x0134($s0)           ## 00000134
/* 0041C 808A1C1C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808A1C20:
/* 00420 808A1C20 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00424 808A1C24 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00428 808A1C28 03E00008 */  jr      $ra                        
/* 0042C 808A1C2C 00000000 */  nop


