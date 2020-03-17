glabel func_80A6DDFC
/* 0052C 80A6DDFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00530 80A6DE00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00534 80A6DE04 0C29B646 */  jal     func_80A6D918              
/* 00538 80A6DE08 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0053C 80A6DE0C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00540 80A6DE10 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00544 80A6DE14 248401A0 */  addiu   $a0, $a0, 0x01A0           ## $a0 = 000001A0
/* 00548 80A6DE18 50400004 */  beql    $v0, $zero, .L80A6DE2C     
/* 0054C 80A6DE1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00550 80A6DE20 0C29B745 */  jal     func_80A6DD14              
/* 00554 80A6DE24 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00558 80A6DE28 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A6DE2C:
/* 0055C 80A6DE2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00560 80A6DE30 03E00008 */  jr      $ra                        
/* 00564 80A6DE34 00000000 */  nop


