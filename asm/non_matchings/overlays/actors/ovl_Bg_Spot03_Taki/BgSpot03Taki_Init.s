glabel BgSpot03Taki_Init
/* 00334 808ADE14 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00338 808ADE18 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0033C 808ADE1C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00340 808ADE20 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00344 808ADE24 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00348 808ADE28 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 0034C 808ADE2C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00350 808ADE30 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00354 808ADE34 31CF003F */  andi    $t7, $t6, 0x003F           ## $t7 = 00000000
/* 00358 808ADE38 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 0035C 808ADE3C A48F016C */  sh      $t7, 0x016C($a0)           ## 0000016C
/* 00360 808ADE40 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00364 808ADE44 24840C98 */  addiu   $a0, $a0, 0x0C98           ## $a0 = 06000C98
/* 00368 808ADE48 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 0036C 808ADE4C 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00370 808ADE50 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00374 808ADE54 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00378 808ADE58 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 0037C 808ADE5C 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00380 808ADE60 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00384 808ADE64 3C05808B */  lui     $a1, %hi(D_808AE3B0)       ## $a1 = 808B0000
/* 00388 808ADE68 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 0038C 808ADE6C 24A5E3B0 */  addiu   $a1, $a1, %lo(D_808AE3B0)  ## $a1 = 808AE3B0
/* 00390 808ADE70 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00394 808ADE74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00398 808ADE78 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 0039C 808ADE7C 44812000 */  mtc1    $at, $f4                   ## $f4 = 255.00
/* 003A0 808ADE80 A2000174 */  sb      $zero, 0x0174($s0)         ## 00000174
/* 003A4 808ADE84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003A8 808ADE88 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 003AC 808ADE8C 0C22B6B8 */  jal     func_808ADAE0              
/* 003B0 808ADE90 E6040170 */  swc1    $f4, 0x0170($s0)           ## 00000170
/* 003B4 808ADE94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003B8 808ADE98 0C22B6B8 */  jal     func_808ADAE0              
/* 003BC 808ADE9C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 003C0 808ADEA0 3C18808B */  lui     $t8, %hi(func_808ADEF0)    ## $t8 = 808B0000
/* 003C4 808ADEA4 2718DEF0 */  addiu   $t8, $t8, %lo(func_808ADEF0) ## $t8 = 808ADEF0
/* 003C8 808ADEA8 AE180164 */  sw      $t8, 0x0164($s0)           ## 00000164
/* 003CC 808ADEAC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 003D0 808ADEB0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 003D4 808ADEB4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 003D8 808ADEB8 03E00008 */  jr      $ra                        
/* 003DC 808ADEBC 00000000 */  nop
