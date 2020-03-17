glabel func_80983F8C
/* 00C8C 80983F8C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C90 80983F90 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C94 80983F94 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00C98 80983F98 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00C9C 80983F9C 10410005 */  beq     $v0, $at, .L80983FB4       
/* 00CA0 80983FA0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00CA4 80983FA4 10410007 */  beq     $v0, $at, .L80983FC4       
/* 00CA8 80983FA8 00000000 */  nop
/* 00CAC 80983FAC 10000008 */  beq     $zero, $zero, .L80983FD0   
/* 00CB0 80983FB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80983FB4:
/* 00CB4 80983FB4 0C260FCC */  jal     func_80983F30              
/* 00CB8 80983FB8 3C054204 */  lui     $a1, 0x4204                ## $a1 = 42040000
/* 00CBC 80983FBC 10000004 */  beq     $zero, $zero, .L80983FD0   
/* 00CC0 80983FC0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80983FC4:
/* 00CC4 80983FC4 0C260FCC */  jal     func_80983F30              
/* 00CC8 80983FC8 3C054230 */  lui     $a1, 0x4230                ## $a1 = 42300000
/* 00CCC 80983FCC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80983FD0:
/* 00CD0 80983FD0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CD4 80983FD4 03E00008 */  jr      $ra                        
/* 00CD8 80983FD8 00000000 */  nop


