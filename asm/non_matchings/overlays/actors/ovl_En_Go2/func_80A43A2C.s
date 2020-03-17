glabel func_80A43A2C
/* 00CFC 80A43A2C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D00 80A43A30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D04 80A43A34 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D08 80A43A38 0C042F6F */  jal     func_8010BDBC              
/* 00D0C 80A43A3C 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00D10 80A43A40 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00D14 80A43A44 1441000B */  bne     $v0, $at, .L80A43A74       
/* 00D18 80A43A48 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 00D1C 80A43A4C 95CF010E */  lhu     $t7, 0x010E($t6)           ## 0000010E
/* 00D20 80A43A50 24013014 */  addiu   $at, $zero, 0x3014         ## $at = 00003014
/* 00D24 80A43A54 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00D28 80A43A58 15E10004 */  bne     $t7, $at, .L80A43A6C       
/* 00D2C 80A43A5C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00D30 80A43A60 94580F16 */  lhu     $t8, 0x0F16($v0)           ## 8015F576
/* 00D34 80A43A64 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00D38 80A43A68 A4590F16 */  sh      $t9, 0x0F16($v0)           ## 8015F576
.L80A43A6C:
/* 00D3C 80A43A6C 10000002 */  beq     $zero, $zero, .L80A43A78   
/* 00D40 80A43A70 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A43A74:
/* 00D44 80A43A74 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A43A78:
/* 00D48 80A43A78 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D4C 80A43A7C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D50 80A43A80 03E00008 */  jr      $ra                        
/* 00D54 80A43A84 00000000 */  nop


