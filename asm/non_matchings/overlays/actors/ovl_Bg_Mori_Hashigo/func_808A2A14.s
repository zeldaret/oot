glabel func_808A2A14
/* 004B4 808A2A14 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004B8 808A2A18 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004BC 808A2A1C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 004C0 808A2A20 848E01C8 */  lh      $t6, 0x01C8($a0)           ## 000001C8
/* 004C4 808A2A24 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 004C8 808A2A28 5DC00010 */  bgtzl   $t6, .L808A2A6C            
/* 004CC 808A2A2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004D0 808A2A30 90820175 */  lbu     $v0, 0x0175($a0)           ## 00000175
/* 004D4 808A2A34 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 004D8 808A2A38 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 004DC 808A2A3C 304F0002 */  andi    $t7, $v0, 0x0002           ## $t7 = 00000000
/* 004E0 808A2A40 11E00005 */  beq     $t7, $zero, .L808A2A58     
/* 004E4 808A2A44 3058FFFD */  andi    $t8, $v0, 0xFFFD           ## $t8 = 00000000
/* 004E8 808A2A48 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 004EC 808A2A4C A0980175 */  sb      $t8, 0x0175($a0)           ## 00000175
/* 004F0 808A2A50 10000005 */  beq     $zero, $zero, .L808A2A68   
/* 004F4 808A2A54 A49901C8 */  sh      $t9, 0x01C8($a0)           ## 000001C8
.L808A2A58:
/* 004F8 808A2A58 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 004FC 808A2A5C 24E60164 */  addiu   $a2, $a3, 0x0164           ## $a2 = 00000164
/* 00500 808A2A60 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00504 808A2A64 00812821 */  addu    $a1, $a0, $at              
.L808A2A68:
/* 00508 808A2A68 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A2A6C:
/* 0050C 808A2A6C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00510 808A2A70 03E00008 */  jr      $ra                        
/* 00514 808A2A74 00000000 */  nop
