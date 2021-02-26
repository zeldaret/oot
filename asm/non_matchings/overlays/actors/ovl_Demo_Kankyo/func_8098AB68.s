glabel func_8098AB68
/* 01CE8 8098AB68 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01CEC 8098AB6C AFA40030 */  sw      $a0, 0x0030($sp)
/* 01CF0 8098AB70 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01CF4 8098AB74 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01CF8 8098AB78 AFA60038 */  sw      $a2, 0x0038($sp)
/* 01CFC 8098AB7C 0C262AB2 */  jal     func_8098AAC8
/* 01D00 8098AB80 27A5001C */  addiu   $a1, $sp, 0x001C           ## $a1 = FFFFFFEC
/* 01D04 8098AB84 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFF8
/* 01D08 8098AB88 0C01F0FD */  jal     OLib_Vec3fToVecSphGeo
/* 01D0C 8098AB8C 27A5001C */  addiu   $a1, $sp, 0x001C           ## $a1 = FFFFFFEC
/* 01D10 8098AB90 8FA50030 */  lw      $a1, 0x0030($sp)
/* 01D14 8098AB94 87AE002E */  lh      $t6, 0x002E($sp)
/* 01D18 8098AB98 8FA40038 */  lw      $a0, 0x0038($sp)
/* 01D1C 8098AB9C 84AF000E */  lh      $t7, 0x000E($a1)           ## 0000000E
/* 01D20 8098ABA0 27A60028 */  addiu   $a2, $sp, 0x0028           ## $a2 = FFFFFFF8
/* 01D24 8098ABA4 01CFC021 */  addu    $t8, $t6, $t7
/* 01D28 8098ABA8 0C262AB9 */  jal     func_8098AAE4
/* 01D2C 8098ABAC A7B8002E */  sh      $t8, 0x002E($sp)
/* 01D30 8098ABB0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01D34 8098ABB4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01D38 8098ABB8 03E00008 */  jr      $ra
/* 01D3C 8098ABBC 00000000 */  nop
