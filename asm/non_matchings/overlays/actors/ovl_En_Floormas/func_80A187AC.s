glabel func_80A187AC
/* 0129C 80A187AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 012A0 80A187B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 012A4 80A187B4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 012A8 80A187B8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 012AC 80A187BC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 012B0 80A187C0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 012B4 80A187C4 50400004 */  beql    $v0, $zero, .L80A187D8     
/* 012B8 80A187C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 012BC 80A187CC 0C285DE0 */  jal     func_80A17780              
/* 012C0 80A187D0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 012C4 80A187D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A187D8:
/* 012C8 80A187D8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 012CC 80A187DC 03E00008 */  jr      $ra                        
/* 012D0 80A187E0 00000000 */  nop
