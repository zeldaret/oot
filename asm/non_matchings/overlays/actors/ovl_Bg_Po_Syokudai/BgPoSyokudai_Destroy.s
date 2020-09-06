glabel BgPoSyokudai_Destroy
/* 0029C 808A834C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002A0 808A8350 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 002A4 808A8354 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 002A8 808A8358 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002AC 808A835C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 002B0 808A8360 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002B4 808A8364 8DC60150 */  lw      $a2, 0x0150($t6)           ## 00000150
/* 002B8 808A8368 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 002BC 808A836C 0C01E9F1 */  jal     LightContext_RemoveLight
/* 002C0 808A8370 24A507A8 */  addiu   $a1, $a1, 0x07A8           ## $a1 = 000007A8
/* 002C4 808A8374 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 002C8 808A8378 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 002CC 808A837C 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 002D0 808A8380 24A50164 */  addiu   $a1, $a1, 0x0164           ## $a1 = 00000164
/* 002D4 808A8384 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 002D8 808A8388 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 002DC 808A838C 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 002E0 808A8390 01E77821 */  addu    $t7, $t7, $a3              
/* 002E4 808A8394 91EF0AE3 */  lbu     $t7, 0x0AE3($t7)           ## 00010AE3
/* 002E8 808A8398 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 002EC 808A839C 11E10003 */  beq     $t7, $at, .L808A83AC       
/* 002F0 808A83A0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 002F4 808A83A4 00270821 */  addu    $at, $at, $a3              
/* 002F8 808A83A8 A0380AE3 */  sb      $t8, 0x0AE3($at)           ## 00010AE3
.L808A83AC:
/* 002FC 808A83AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00300 808A83B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00304 808A83B4 03E00008 */  jr      $ra                        
/* 00308 808A83B8 00000000 */  nop
