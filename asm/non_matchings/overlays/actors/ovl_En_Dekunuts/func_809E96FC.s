glabel func_809E96FC
/* 0019C 809E96FC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 001A0 809E9700 AFB00018 */  sw      $s0, 0x0018($sp)
/* 001A4 809E9704 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 001A8 809E9708 AFBF001C */  sw      $ra, 0x001C($sp)
/* 001AC 809E970C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 001B0 809E9710 24A50D1C */  addiu   $a1, $a1, 0x0D1C           ## $a1 = 06000D1C
/* 001B4 809E9714 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 001B8 809E9718 0C0294A7 */  jal     Animation_PlayOnceSetSpeed
/* 001BC 809E971C 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 001C0 809E9720 24040064 */  addiu   $a0, $zero, 0x0064         ## $a0 = 00000064
/* 001C4 809E9724 0C01DF64 */  jal     Math_Rand_S16Offset

/* 001C8 809E9728 24050032 */  addiu   $a1, $zero, 0x0032         ## $a1 = 00000032
/* 001CC 809E972C 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 001D0 809E9730 A6020196 */  sh      $v0, 0x0196($s0)           ## 00000196
/* 001D4 809E9734 A60E030A */  sh      $t6, 0x030A($s0)           ## 0000030A
/* 001D8 809E9738 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 001DC 809E973C 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 001E0 809E9740 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 001E4 809E9744 920F02D9 */  lbu     $t7, 0x02D9($s0)           ## 000002D9
/* 001E8 809E9748 3C19809F */  lui     $t9, %hi(func_809E9B98)    ## $t9 = 809F0000
/* 001EC 809E974C 27399B98 */  addiu   $t9, $t9, %lo(func_809E9B98) ## $t9 = 809E9B98
/* 001F0 809E9750 31F8FFFE */  andi    $t8, $t7, 0xFFFE           ## $t8 = 00000000
/* 001F4 809E9754 A21802D9 */  sb      $t8, 0x02D9($s0)           ## 000002D9
/* 001F8 809E9758 AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
/* 001FC 809E975C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00200 809E9760 8FB00018 */  lw      $s0, 0x0018($sp)
/* 00204 809E9764 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00208 809E9768 03E00008 */  jr      $ra
/* 0020C 809E976C 00000000 */  nop
