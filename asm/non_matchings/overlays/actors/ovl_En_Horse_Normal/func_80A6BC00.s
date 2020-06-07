glabel func_80A6BC00
/* 009B0 80A6BC00 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009B4 80A6BC04 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 009B8 80A6BC08 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 009BC 80A6BC0C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009C0 80A6BC10 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 009C4 80A6BC14 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 009C8 80A6BC18 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 009CC 80A6BC1C AFA50018 */  sw      $a1, 0x0018($sp)           
/* 009D0 80A6BC20 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 009D4 80A6BC24 248401A0 */  addiu   $a0, $a0, 0x01A0           ## $a0 = 000001A0
/* 009D8 80A6BC28 10400003 */  beq     $v0, $zero, .L80A6BC38     
/* 009DC 80A6BC2C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 009E0 80A6BC30 0C29AEEB */  jal     func_80A6BBAC              
/* 009E4 80A6BC34 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
.L80A6BC38:
/* 009E8 80A6BC38 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 009EC 80A6BC3C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 009F0 80A6BC40 03E00008 */  jr      $ra                        
/* 009F4 80A6BC44 00000000 */  nop
