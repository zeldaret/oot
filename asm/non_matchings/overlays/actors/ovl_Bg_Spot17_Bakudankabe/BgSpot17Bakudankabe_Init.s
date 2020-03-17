glabel BgSpot17Bakudankabe_Init
/* 00330 808B6EF0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00334 808B6EF4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00338 808B6EF8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0033C 808B6EFC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00340 808B6F00 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00344 808B6F04 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00348 808B6F08 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 0034C 808B6F0C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00350 808B6F10 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00354 808B6F14 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00358 808B6F18 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 0035C 808B6F1C 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00360 808B6F20 10400005 */  beq     $v0, $zero, .L808B6F38     
/* 00364 808B6F24 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00368 808B6F28 0C00B55C */  jal     Actor_Kill
              
/* 0036C 808B6F2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00370 808B6F30 1000000F */  beq     $zero, $zero, .L808B6F70   
/* 00374 808B6F34 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808B6F38:
/* 00378 808B6F38 24840A38 */  addiu   $a0, $a0, 0x0A38           ## $a0 = 00000A38
/* 0037C 808B6F3C 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00380 808B6F40 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00384 808B6F44 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00388 808B6F48 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0038C 808B6F4C 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 00390 808B6F50 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00394 808B6F54 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00398 808B6F58 3C05808B */  lui     $a1, %hi(D_808B72A0)       ## $a1 = 808B0000
/* 0039C 808B6F5C AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 003A0 808B6F60 24A572A0 */  addiu   $a1, $a1, %lo(D_808B72A0)  ## $a1 = 808B72A0
/* 003A4 808B6F64 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 003A8 808B6F68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003AC 808B6F6C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808B6F70:
/* 003B0 808B6F70 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 003B4 808B6F74 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 003B8 808B6F78 03E00008 */  jr      $ra                        
/* 003BC 808B6F7C 00000000 */  nop


