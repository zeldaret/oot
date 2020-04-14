glabel DoorWarp1_Draw
/* 03D70 8099C4F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03D74 8099C4F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03D78 8099C4F8 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 03D7C 8099C4FC 25CF0002 */  addiu   $t7, $t6, 0x0002           ## $t7 = 00000002
/* 03D80 8099C500 2DE1000D */  sltiu   $at, $t7, 0x000D           
/* 03D84 8099C504 10200018 */  beq     $at, $zero, .L8099C568     
/* 03D88 8099C508 000F7880 */  sll     $t7, $t7,  2               
/* 03D8C 8099C50C 3C01809A */  lui     $at, %hi(jtbl_8099C7F0)       ## $at = 809A0000
/* 03D90 8099C510 002F0821 */  addu    $at, $at, $t7              
/* 03D94 8099C514 8C2FC7F0 */  lw      $t7, %lo(jtbl_8099C7F0)($at)  
/* 03D98 8099C518 01E00008 */  jr      $t7                        
/* 03D9C 8099C51C 00000000 */  nop
glabel L8099C520
/* 03DA0 8099C520 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03DA4 8099C524 0C266C50 */  jal     func_8099B140              
/* 03DA8 8099C528 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03DAC 8099C52C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03DB0 8099C530 0C266D7B */  jal     func_8099B5EC              
/* 03DB4 8099C534 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03DB8 8099C538 1000000C */  beq     $zero, $zero, .L8099C56C   
/* 03DBC 8099C53C 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L8099C540
/* 03DC0 8099C540 0C266D7B */  jal     func_8099B5EC              
/* 03DC4 8099C544 00000000 */  nop
/* 03DC8 8099C548 10000008 */  beq     $zero, $zero, .L8099C56C   
/* 03DCC 8099C54C 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L8099C550
/* 03DD0 8099C550 0C266C50 */  jal     func_8099B140              
/* 03DD4 8099C554 00000000 */  nop
/* 03DD8 8099C558 10000004 */  beq     $zero, $zero, .L8099C56C   
/* 03DDC 8099C55C 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L8099C560
/* 03DE0 8099C560 0C266CCF */  jal     func_8099B33C              
/* 03DE4 8099C564 00000000 */  nop
.L8099C568:
/* 03DE8 8099C568 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8099C56C:
/* 03DEC 8099C56C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03DF0 8099C570 03E00008 */  jr      $ra                        
/* 03DF4 8099C574 00000000 */  nop
/* 03DF8 8099C578 00000000 */  nop
/* 03DFC 8099C57C 00000000 */  nop
