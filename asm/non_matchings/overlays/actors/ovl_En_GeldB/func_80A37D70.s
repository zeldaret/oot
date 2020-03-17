glabel func_80A37D70
/* 02A60 80A37D70 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02A64 80A37D74 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02A68 80A37D78 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 02A6C 80A37D7C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02A70 80A37D80 24A51390 */  addiu   $a1, $a1, 0x1390           ## $a1 = 06001390
/* 02A74 80A37D84 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 02A78 80A37D88 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 02A7C 80A37D8C 0C029490 */  jal     func_800A5240              
/* 02A80 80A37D90 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 02A84 80A37D94 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02A88 80A37D98 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 02A8C 80A37D9C 44812000 */  mtc1    $at, $f4                   ## $f4 = -8.00
/* 02A90 80A37DA0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 02A94 80A37DA4 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 02A98 80A37DA8 2405386C */  addiu   $a1, $zero, 0x386C         ## $a1 = 0000386C
/* 02A9C 80A37DAC AC800300 */  sw      $zero, 0x0300($a0)         ## 00000300
/* 02AA0 80A37DB0 A48E0318 */  sh      $t6, 0x0318($a0)           ## 00000318
/* 02AA4 80A37DB4 AC8F02EC */  sw      $t7, 0x02EC($a0)           ## 000002EC
/* 02AA8 80A37DB8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02AAC 80A37DBC E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 02AB0 80A37DC0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02AB4 80A37DC4 3C0580A3 */  lui     $a1, %hi(func_80A37DEC)    ## $a1 = 80A30000
/* 02AB8 80A37DC8 24A57DEC */  addiu   $a1, $a1, %lo(func_80A37DEC) ## $a1 = 80A37DEC
/* 02ABC 80A37DCC 8482008A */  lh      $v0, 0x008A($a0)           ## 0000008A
/* 02AC0 80A37DD0 A4820032 */  sh      $v0, 0x0032($a0)           ## 00000032
/* 02AC4 80A37DD4 0C28D4C4 */  jal     func_80A35310              
/* 02AC8 80A37DD8 A48200B6 */  sh      $v0, 0x00B6($a0)           ## 000000B6
/* 02ACC 80A37DDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02AD0 80A37DE0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02AD4 80A37DE4 03E00008 */  jr      $ra                        
/* 02AD8 80A37DE8 00000000 */  nop


