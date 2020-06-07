glabel func_80A7545C
/* 0114C 80A7545C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01150 80A75460 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01154 80A75464 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01158 80A75468 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0115C 80A7546C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01160 80A75470 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01164 80A75474 50400007 */  beql    $v0, $zero, .L80A75494     
/* 01168 80A75478 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0116C 80A7547C 0C29D227 */  jal     func_80A7489C              
/* 01170 80A75480 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01174 80A75484 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01178 80A75488 0C29D179 */  jal     func_80A745E4              
/* 0117C 80A7548C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01180 80A75490 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A75494:
/* 01184 80A75494 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01188 80A75498 03E00008 */  jr      $ra                        
/* 0118C 80A7549C 00000000 */  nop
