glabel func_80A4E3EC
/* 000CC 80A4E3EC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 000D0 80A4E3F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000D4 80A4E3F4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 000D8 80A4E3F8 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
/* 000DC 80A4E3FC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 000E0 80A4E400 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 000E4 80A4E404 0C042F6F */  jal     func_8010BDBC              
/* 000E8 80A4E408 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 000EC 80A4E40C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 000F0 80A4E410 14410012 */  bne     $v0, $at, .L80A4E45C       
/* 000F4 80A4E414 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 000F8 80A4E418 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 000FC 80A4E41C 0C041AF2 */  jal     func_80106BC8              
/* 00100 80A4E420 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 00104 80A4E424 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 00108 80A4E428 1040000C */  beq     $v0, $zero, .L80A4E45C     
/* 0010C 80A4E42C 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00110 80A4E430 94AE010E */  lhu     $t6, 0x010E($a1)           ## 0000010E
/* 00114 80A4E434 24012054 */  addiu   $at, $zero, 0x2054         ## $at = 00002054
/* 00118 80A4E438 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 0011C 80A4E43C 15C10007 */  bne     $t6, $at, .L80A4E45C       
/* 00120 80A4E440 00000000 */  nop
/* 00124 80A4E444 84AF001C */  lh      $t7, 0x001C($a1)           ## 0000001C
/* 00128 80A4E448 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 0012C 80A4E44C 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000000
/* 00130 80A4E450 27190400 */  addiu   $t9, $t8, 0x0400           ## $t9 = 00000400
/* 00134 80A4E454 10000001 */  beq     $zero, $zero, .L80A4E45C   
/* 00138 80A4E458 A4B9010E */  sh      $t9, 0x010E($a1)           ## 0000010E
.L80A4E45C:
/* 0013C 80A4E45C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00140 80A4E460 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00144 80A4E464 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000001
/* 00148 80A4E468 03E00008 */  jr      $ra                        
/* 0014C 80A4E46C 00000000 */  nop


