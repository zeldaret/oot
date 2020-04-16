glabel EnTorch2_Destroy
/* 001A8 80B1DB28 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 001AC 80B1DB2C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 001B0 80B1DB30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 001B4 80B1DB34 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 001B8 80B1DB38 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 001BC 80B1DB3C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 001C0 80B1DB40 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001C4 80B1DB44 0C009C27 */  jal     func_8002709C              
/* 001C8 80B1DB48 8E050670 */  lw      $a1, 0x0670($s0)           ## 00000670
/* 001CC 80B1DB4C 0C03D6D6 */  jal     func_800F5B58              
/* 001D0 80B1DB50 00000000 */  nop
/* 001D4 80B1DB54 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001D8 80B1DB58 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 001DC 80B1DB5C 26050498 */  addiu   $a1, $s0, 0x0498           ## $a1 = 00000498
/* 001E0 80B1DB60 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001E4 80B1DB64 0C017418 */  jal     Collider_DestroyQuad              
/* 001E8 80B1DB68 260504E4 */  addiu   $a1, $s0, 0x04E4           ## $a1 = 000004E4
/* 001EC 80B1DB6C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001F0 80B1DB70 0C017418 */  jal     Collider_DestroyQuad              
/* 001F4 80B1DB74 26050564 */  addiu   $a1, $s0, 0x0564           ## $a1 = 00000564
/* 001F8 80B1DB78 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001FC 80B1DB7C 0C017418 */  jal     Collider_DestroyQuad              
/* 00200 80B1DB80 260505E4 */  addiu   $a1, $s0, 0x05E4           ## $a1 = 000005E4
/* 00204 80B1DB84 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00208 80B1DB88 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 0020C 80B1DB8C 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00210 80B1DB90 03E00008 */  jr      $ra                        
/* 00214 80B1DB94 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
