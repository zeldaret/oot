glabel func_8092EA00
/* 02430 8092EA00 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02434 8092EA04 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02438 8092EA08 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0243C 8092EA0C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02440 8092EA10 84820198 */  lh      $v0, 0x0198($a0)           ## 00000198
/* 02444 8092EA14 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 02448 8092EA18 10400002 */  beq     $v0, $zero, .L8092EA24     
/* 0244C 8092EA1C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 02450 8092EA20 A48E0198 */  sh      $t6, 0x0198($a0)           ## 00000198
.L8092EA24:
/* 02454 8092EA24 24A4014C */  addiu   $a0, $a1, 0x014C           ## $a0 = 0000014C
/* 02458 8092EA28 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0245C 8092EA2C AFA50018 */  sw      $a1, 0x0018($sp)           
/* 02460 8092EA30 10400003 */  beq     $v0, $zero, .L8092EA40     
/* 02464 8092EA34 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 02468 8092EA38 0C24B9E4 */  jal     func_8092E790              
/* 0246C 8092EA3C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
.L8092EA40:
/* 02470 8092EA40 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02474 8092EA44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02478 8092EA48 03E00008 */  jr      $ra                        
/* 0247C 8092EA4C 00000000 */  nop


