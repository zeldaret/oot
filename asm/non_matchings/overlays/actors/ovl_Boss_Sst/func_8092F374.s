glabel func_8092F374
/* 02DA4 8092F374 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02DA8 8092F378 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02DAC 8092F37C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02DB0 8092F380 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02DB4 8092F384 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02DB8 8092F388 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02DBC 8092F38C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02DC0 8092F390 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02DC4 8092F394 84C20198 */  lh      $v0, 0x0198($a2)           ## 00000198
/* 02DC8 8092F398 10400003 */  beq     $v0, $zero, .L8092F3A8     
/* 02DCC 8092F39C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 02DD0 8092F3A0 A4CE0198 */  sh      $t6, 0x0198($a2)           ## 00000198
/* 02DD4 8092F3A4 84C20198 */  lh      $v0, 0x0198($a2)           ## 00000198
.L8092F3A8:
/* 02DD8 8092F3A8 14400009 */  bne     $v0, $zero, .L8092F3D0     
/* 02DDC 8092F3AC 28410050 */  slti    $at, $v0, 0x0050           
/* 02DE0 8092F3B0 84CF01A4 */  lh      $t7, 0x01A4($a2)           ## 000001A4
/* 02DE4 8092F3B4 84D800B6 */  lh      $t8, 0x00B6($a2)           ## 000000B6
/* 02DE8 8092F3B8 15F80005 */  bne     $t7, $t8, .L8092F3D0       
/* 02DEC 8092F3BC 00000000 */  nop
/* 02DF0 8092F3C0 0C24BCFC */  jal     func_8092F3F0              
/* 02DF4 8092F3C4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 02DF8 8092F3C8 10000006 */  beq     $zero, $zero, .L8092F3E4   
/* 02DFC 8092F3CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8092F3D0:
/* 02E00 8092F3D0 14200003 */  bne     $at, $zero, .L8092F3E0     
/* 02E04 8092F3D4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 02E08 8092F3D8 0C24BB67 */  jal     func_8092ED9C              
/* 02E0C 8092F3DC 8FA5001C */  lw      $a1, 0x001C($sp)           
.L8092F3E0:
/* 02E10 8092F3E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8092F3E4:
/* 02E14 8092F3E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02E18 8092F3E8 03E00008 */  jr      $ra                        
/* 02E1C 8092F3EC 00000000 */  nop


