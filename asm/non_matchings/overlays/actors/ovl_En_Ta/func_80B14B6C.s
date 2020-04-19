glabel func_80B14B6C
/* 010CC 80B14B6C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 010D0 80B14B70 AFB00020 */  sw      $s0, 0x0020($sp)
/* 010D4 80B14B74 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 010D8 80B14B78 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 010DC 80B14B7C AFA5002C */  sw      $a1, 0x002C($sp)
/* 010E0 80B14B80 0C042F6F */  jal     func_8010BDBC
/* 010E4 80B14B84 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 010E8 80B14B88 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 010EC 80B14B8C 1441001A */  bne     $v0, $at, .L80B14BF8
/* 010F0 80B14B90 8FA4002C */  lw      $a0, 0x002C($sp)
/* 010F4 80B14B94 2405104F */  addiu   $a1, $zero, 0x104F         ## $a1 = 0000104F
/* 010F8 80B14B98 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 010FC 80B14B9C 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 01100 80B14BA0 0C02003E */  jal     func_800800F8
/* 01104 80B14BA4 AFA00010 */  sw      $zero, 0x0010($sp)
/* 01108 80B14BA8 3C0580B1 */  lui     $a1, %hi(func_80B14AF4)    ## $a1 = 80B10000
/* 0110C 80B14BAC 3C0680B1 */  lui     $a2, %hi(func_80B167C0)    ## $a2 = 80B10000
/* 01110 80B14BB0 24C667C0 */  addiu   $a2, $a2, %lo(func_80B167C0) ## $a2 = 80B167C0
/* 01114 80B14BB4 24A54AF4 */  addiu   $a1, $a1, %lo(func_80B14AF4) ## $a1 = 80B14AF4
/* 01118 80B14BB8 0C2C4EA8 */  jal     func_80B13AA0
/* 0111C 80B14BBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01120 80B14BC0 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01124 80B14BC4 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 01128 80B14BC8 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 0112C 80B14BCC A60E02CC */  sh      $t6, 0x02CC($s0)           ## 000002CC
/* 01130 80B14BD0 944F0ED6 */  lhu     $t7, 0x0ED6($v0)           ## 8015F536
/* 01134 80B14BD4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01138 80B14BD8 24A5CF28 */  addiu   $a1, $a1, 0xCF28           ## $a1 = 0600CF28
/* 0113C 80B14BDC 35F80010 */  ori     $t8, $t7, 0x0010           ## $t8 = 00000010
/* 01140 80B14BE0 A4580ED6 */  sh      $t8, 0x0ED6($v0)           ## 8015F536
/* 01144 80B14BE4 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 01148 80B14BE8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0114C 80B14BEC 3C190601 */  lui     $t9, 0x0601                ## $t9 = 06010000
/* 01150 80B14BF0 2739C858 */  addiu   $t9, $t9, 0xC858           ## $t9 = 0600C858
/* 01154 80B14BF4 AE1902E4 */  sw      $t9, 0x02E4($s0)           ## 000002E4
.L80B14BF8:
/* 01158 80B14BF8 960802E0 */  lhu     $t0, 0x02E0($s0)           ## 000002E0
/* 0115C 80B14BFC 35090001 */  ori     $t1, $t0, 0x0001           ## $t1 = 00000001
/* 01160 80B14C00 A60902E0 */  sh      $t1, 0x02E0($s0)           ## 000002E0
/* 01164 80B14C04 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01168 80B14C08 8FB00020 */  lw      $s0, 0x0020($sp)
/* 0116C 80B14C0C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01170 80B14C10 03E00008 */  jr      $ra
/* 01174 80B14C14 00000000 */  nop
