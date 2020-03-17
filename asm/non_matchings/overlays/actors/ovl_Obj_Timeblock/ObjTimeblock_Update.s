glabel ObjTimeblock_Update
/* 0097C 80BA091C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00980 80BA0920 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00984 80BA0924 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00988 80BA0928 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0098C 80BA092C 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00990 80BA0930 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00994 80BA0934 0320F809 */  jalr    $ra, $t9                   
/* 00998 80BA0938 00000000 */  nop
/* 0099C 80BA093C 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 009A0 80BA0940 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009A4 80BA0944 26050810 */  addiu   $a1, $s0, 0x0810           ## $a1 = 00000810
/* 009A8 80BA0948 84E2016C */  lh      $v0, 0x016C($a3)           ## 0000016C
/* 009AC 80BA094C 18400002 */  blez    $v0, .L80BA0958            
/* 009B0 80BA0950 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 009B4 80BA0954 A4EE016C */  sh      $t6, 0x016C($a3)           ## 0000016C
.L80BA0958:
/* 009B8 80BA0958 90EF0178 */  lbu     $t7, 0x0178($a3)           ## 00000178
/* 009BC 80BA095C 11E00007 */  beq     $t7, $zero, .L80BA097C     
/* 009C0 80BA0960 00000000 */  nop
/* 009C4 80BA0964 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009C8 80BA0968 26050810 */  addiu   $a1, $s0, 0x0810           ## $a1 = 00000810
/* 009CC 80BA096C 0C00FB14 */  jal     func_8003EC50              
/* 009D0 80BA0970 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
/* 009D4 80BA0974 10000004 */  beq     $zero, $zero, .L80BA0988   
/* 009D8 80BA0978 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80BA097C:
/* 009DC 80BA097C 0C00FAFE */  jal     func_8003EBF8              
/* 009E0 80BA0980 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
/* 009E4 80BA0984 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80BA0988:
/* 009E8 80BA0988 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 009EC 80BA098C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 009F0 80BA0990 03E00008 */  jr      $ra                        
/* 009F4 80BA0994 00000000 */  nop


