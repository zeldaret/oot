glabel func_80AD4E48
/* 01348 80AD4E48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0134C 80AD4E4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01350 80AD4E50 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01354 80AD4E54 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01358 80AD4E58 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 0135C 80AD4E5C 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 01360 80AD4E60 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01364 80AD4E64 0C01DE80 */  jal     Math_ApproxF
              
/* 01368 80AD4E68 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 0136C 80AD4E6C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 01370 80AD4E70 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01374 80AD4E74 24E4014C */  addiu   $a0, $a3, 0x014C           ## $a0 = 0000014C
/* 01378 80AD4E78 10400013 */  beq     $v0, $zero, .L80AD4EC8     
/* 0137C 80AD4E7C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 01380 80AD4E80 90EE00AF */  lbu     $t6, 0x00AF($a3)           ## 000000AF
/* 01384 80AD4E84 55C00006 */  bnel    $t6, $zero, .L80AD4EA0     
/* 01388 80AD4E88 84EF001C */  lh      $t7, 0x001C($a3)           ## 0000001C
/* 0138C 80AD4E8C 0C2B5050 */  jal     func_80AD4140              
/* 01390 80AD4E90 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01394 80AD4E94 1000000D */  beq     $zero, $zero, .L80AD4ECC   
/* 01398 80AD4E98 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0139C 80AD4E9C 84EF001C */  lh      $t7, 0x001C($a3)           ## 0000001C
.L80AD4EA0:
/* 013A0 80AD4EA0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 013A4 80AD4EA4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 013A8 80AD4EA8 15E10005 */  bne     $t7, $at, .L80AD4EC0       
/* 013AC 80AD4EAC 00000000 */  nop
/* 013B0 80AD4EB0 0C2B4FFC */  jal     func_80AD3FF0              
/* 013B4 80AD4EB4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 013B8 80AD4EB8 10000004 */  beq     $zero, $zero, .L80AD4ECC   
/* 013BC 80AD4EBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AD4EC0:
/* 013C0 80AD4EC0 0C2B4FD3 */  jal     func_80AD3F4C              
/* 013C4 80AD4EC4 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80AD4EC8:
/* 013C8 80AD4EC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AD4ECC:
/* 013CC 80AD4ECC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 013D0 80AD4ED0 03E00008 */  jr      $ra                        
/* 013D4 80AD4ED4 00000000 */  nop
