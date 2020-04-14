glabel EnMThunder_Destroy
/* 002C8 80A9F2A8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 002CC 80A9F2AC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 002D0 80A9F2B0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 002D4 80A9F2B4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 002D8 80A9F2B8 908F01CA */  lbu     $t7, 0x01CA($a0)           ## 000001CA
/* 002DC 80A9F2BC 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 002E0 80A9F2C0 51E00004 */  beql    $t7, $zero, .L80A9F2D4     
/* 002E4 80A9F2C4 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 002E8 80A9F2C8 0C021DB2 */  jal     func_800876C8              
/* 002EC 80A9F2CC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002F0 80A9F2D0 8FA50020 */  lw      $a1, 0x0020($sp)           
.L80A9F2D4:
/* 002F4 80A9F2D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002F8 80A9F2D8 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 002FC 80A9F2DC 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 00300 80A9F2E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00304 80A9F2E4 0C2A7CC5 */  jal     func_80A9F314              
/* 00308 80A9F2E8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0030C 80A9F2EC 8FB80020 */  lw      $t8, 0x0020($sp)           
/* 00310 80A9F2F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00314 80A9F2F4 260507A8 */  addiu   $a1, $s0, 0x07A8           ## $a1 = 000007A8
/* 00318 80A9F2F8 0C01E9F1 */  jal     Lights_Remove
              
/* 0031C 80A9F2FC 8F060198 */  lw      $a2, 0x0198($t8)           ## 00000198
/* 00320 80A9F300 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00324 80A9F304 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00328 80A9F308 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0032C 80A9F30C 03E00008 */  jr      $ra                        
/* 00330 80A9F310 00000000 */  nop
