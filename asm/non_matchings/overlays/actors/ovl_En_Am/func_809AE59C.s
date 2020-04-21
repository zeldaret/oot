glabel func_809AE59C
/* 0067C 809AE59C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00680 809AE5A0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00684 809AE5A4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00688 809AE5A8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0068C 809AE5AC 24A50238 */  addiu   $a1, $a1, 0x0238           ## $a1 = 06000238
/* 00690 809AE5B0 AFA70018 */  sw      $a3, 0x0018($sp)
/* 00694 809AE5B4 24840164 */  addiu   $a0, $a0, 0x0164           ## $a0 = 00000164
/* 00698 809AE5B8 0C0294E1 */  jal     SkelAnime_ChangeAnimPlaybackRepeat
/* 0069C 809AE5BC 3C064080 */  lui     $a2, 0x4080                ## $a2 = 40800000
/* 006A0 809AE5C0 8FA40018 */  lw      $a0, 0x0018($sp)
/* 006A4 809AE5C4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 006A8 809AE5C8 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 006AC 809AE5CC 849900B6 */  lh      $t9, 0x00B6($a0)           ## 000000B6
/* 006B0 809AE5D0 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 006B4 809AE5D4 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 006B8 809AE5D8 3C05809B */  lui     $a1, %hi(func_809AEFA4)    ## $a1 = 809B0000
/* 006BC 809AE5DC 24A5EFA4 */  addiu   $a1, $a1, %lo(func_809AEFA4) ## $a1 = 809AEFA4
/* 006C0 809AE5E0 A48E0258 */  sh      $t6, 0x0258($a0)           ## 00000258
/* 006C4 809AE5E4 A48F025A */  sh      $t7, 0x025A($a0)           ## 0000025A
/* 006C8 809AE5E8 AC9801A8 */  sw      $t8, 0x01A8($a0)           ## 000001A8
/* 006CC 809AE5EC E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 006D0 809AE5F0 0C26B7C8 */  jal     func_809ADF20
/* 006D4 809AE5F4 A4990032 */  sh      $t9, 0x0032($a0)           ## 00000032
/* 006D8 809AE5F8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 006DC 809AE5FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006E0 809AE600 03E00008 */  jr      $ra
/* 006E4 809AE604 00000000 */  nop
