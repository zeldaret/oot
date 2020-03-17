glabel BgHeavyBlock_Destroy
/* 004B8 80883C48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004BC 80883C4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004C0 80883C50 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 004C4 80883C54 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 004C8 80883C58 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 004CC 80883C5C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 004D0 80883C60 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000000
/* 004D4 80883C64 10410006 */  beq     $v0, $at, .L80883C80       
/* 004D8 80883C68 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 004DC 80883C6C 10410004 */  beq     $v0, $at, .L80883C80       
/* 004E0 80883C70 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 004E4 80883C74 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 004E8 80883C78 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 004EC 80883C7C 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
.L80883C80:
/* 004F0 80883C80 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004F4 80883C84 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004F8 80883C88 03E00008 */  jr      $ra                        
/* 004FC 80883C8C 00000000 */  nop


