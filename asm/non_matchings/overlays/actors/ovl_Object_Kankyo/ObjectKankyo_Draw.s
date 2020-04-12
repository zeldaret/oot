glabel ObjectKankyo_Draw
/* 01170 80BA3C10 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01174 80BA3C14 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01178 80BA3C18 948E001C */  lhu     $t6, 0x001C($a0)           ## 0000001C
/* 0117C 80BA3C1C 2DC10006 */  sltiu   $at, $t6, 0x0006           
/* 01180 80BA3C20 10200018 */  beq     $at, $zero, .L80BA3C84     
/* 01184 80BA3C24 000E7080 */  sll     $t6, $t6,  2               
/* 01188 80BA3C28 3C0180BA */  lui     $at, %hi(jtbl_80BA5C84)       ## $at = 80BA0000
/* 0118C 80BA3C2C 002E0821 */  addu    $at, $at, $t6              
/* 01190 80BA3C30 8C2E5C84 */  lw      $t6, %lo(jtbl_80BA5C84)($at)  
/* 01194 80BA3C34 01C00008 */  jr      $t6                        
/* 01198 80BA3C38 00000000 */  nop
glabel L80BA3C3C
/* 0119C 80BA3C3C 0C2E8F25 */  jal     func_80BA3C94              
/* 011A0 80BA3C40 00000000 */  nop
/* 011A4 80BA3C44 10000010 */  beq     $zero, $zero, .L80BA3C88   
/* 011A8 80BA3C48 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80BA3C4C
/* 011AC 80BA3C4C 0C2E926F */  jal     func_80BA49BC              
/* 011B0 80BA3C50 00000000 */  nop
/* 011B4 80BA3C54 1000000C */  beq     $zero, $zero, .L80BA3C88   
/* 011B8 80BA3C58 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80BA3C5C
/* 011BC 80BA3C5C 0C2E9053 */  jal     func_80BA414C              
/* 011C0 80BA3C60 00000000 */  nop
/* 011C4 80BA3C64 10000008 */  beq     $zero, $zero, .L80BA3C88   
/* 011C8 80BA3C68 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80BA3C6C
/* 011CC 80BA3C6C 0C2E935F */  jal     func_80BA4D7C              
/* 011D0 80BA3C70 00000000 */  nop
/* 011D4 80BA3C74 10000004 */  beq     $zero, $zero, .L80BA3C88   
/* 011D8 80BA3C78 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80BA3C7C
/* 011DC 80BA3C7C 0C2E952B */  jal     func_80BA54AC              
/* 011E0 80BA3C80 00000000 */  nop
glabel L80BA3C84
.L80BA3C84:
/* 011E4 80BA3C84 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80BA3C88:
/* 011E8 80BA3C88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 011EC 80BA3C8C 03E00008 */  jr      $ra                        
/* 011F0 80BA3C90 00000000 */  nop
