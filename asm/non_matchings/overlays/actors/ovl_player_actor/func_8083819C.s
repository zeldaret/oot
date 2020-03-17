glabel func_8083819C
/* 05F8C 8083819C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 05F90 808381A0 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 05F94 808381A4 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 05F98 808381A8 808F014E */  lb      $t7, 0x014E($a0)           ## 0000014E
/* 05F9C 808381AC 00807025 */  or      $t6, $a0, $zero            ## $t6 = 00000000
/* 05FA0 808381B0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 05FA4 808381B4 15E10015 */  bne     $t7, $at, .L8083820C       
/* 05FA8 808381B8 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 05FAC 808381BC C5C40028 */  lwc1    $f4, 0x0028($t6)           ## 00000028
/* 05FB0 808381C0 8DC70024 */  lw      $a3, 0x0024($t6)           ## 00000024
/* 05FB4 808381C4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 05FB8 808381C8 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 05FBC 808381CC C5C6002C */  lwc1    $f6, 0x002C($t6)           ## 0000002C
/* 05FC0 808381D0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 05FC4 808381D4 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 05FC8 808381D8 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 05FCC 808381DC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 05FD0 808381E0 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 05FD4 808381E4 240600EE */  addiu   $a2, $zero, 0x00EE         ## $a2 = 000000EE
/* 05FD8 808381E8 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 05FDC 808381EC E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 05FE0 808381F0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 05FE4 808381F4 0C025E95 */  jal     Inventory_DeleteEquipment              
/* 05FE8 808381F8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 05FEC 808381FC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 05FF0 80838200 2405305F */  addiu   $a1, $zero, 0x305F         ## $a1 = 0000305F
/* 05FF4 80838204 0C042DA0 */  jal     func_8010B680              
/* 05FF8 80838208 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
.L8083820C:
/* 05FFC 8083820C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 06000 80838210 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 06004 80838214 03E00008 */  jr      $ra                        
/* 06008 80838218 00000000 */  nop


