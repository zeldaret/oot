glabel func_808ACC34
/* 005D4 808ACC34 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005D8 808ACC38 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005DC 808ACC3C 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 005E0 808ACC40 51C00012 */  beql    $t6, $zero, .L808ACC8C     
/* 005E4 808ACC44 94A21D74 */  lhu     $v0, 0x1D74($a1)           ## 00001D74
/* 005E8 808ACC48 8CA21D8C */  lw      $v0, 0x1D8C($a1)           ## 00001D8C
/* 005EC 808ACC4C 5040000F */  beql    $v0, $zero, .L808ACC8C     
/* 005F0 808ACC50 94A21D74 */  lhu     $v0, 0x1D74($a1)           ## 00001D74
/* 005F4 808ACC54 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 005F8 808ACC58 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 005FC 808ACC5C 55E1000B */  bnel    $t7, $at, .L808ACC8C       
/* 00600 808ACC60 94A21D74 */  lhu     $v0, 0x1D74($a1)           ## 00001D74
/* 00604 808ACC64 9098016A */  lbu     $t8, 0x016A($a0)           ## 0000016A
/* 00608 808ACC68 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 0060C 808ACC6C 332800FF */  andi    $t0, $t9, 0x00FF           ## $t0 = 00000001
/* 00610 808ACC70 2901000C */  slti    $at, $t0, 0x000C           
/* 00614 808ACC74 14200004 */  bne     $at, $zero, .L808ACC88     
/* 00618 808ACC78 A099016A */  sb      $t9, 0x016A($a0)           ## 0000016A
/* 0061C 808ACC7C 0C00B55C */  jal     Actor_Kill
              
/* 00620 808ACC80 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00624 808ACC84 8FA5001C */  lw      $a1, 0x001C($sp)           
.L808ACC88:
/* 00628 808ACC88 94A21D74 */  lhu     $v0, 0x1D74($a1)           ## 00001D74
.L808ACC8C:
/* 0062C 808ACC8C 240100F5 */  addiu   $at, $zero, 0x00F5         ## $at = 000000F5
/* 00630 808ACC90 10410003 */  beq     $v0, $at, .L808ACCA0       
/* 00634 808ACC94 2401015F */  addiu   $at, $zero, 0x015F         ## $at = 0000015F
/* 00638 808ACC98 54410004 */  bnel    $v0, $at, .L808ACCAC       
/* 0063C 808ACC9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808ACCA0:
/* 00640 808ACCA0 0C01E233 */  jal     func_800788CC              
/* 00644 808ACCA4 2404282E */  addiu   $a0, $zero, 0x282E         ## $a0 = 0000282E
/* 00648 808ACCA8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808ACCAC:
/* 0064C 808ACCAC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00650 808ACCB0 03E00008 */  jr      $ra                        
/* 00654 808ACCB4 00000000 */  nop


