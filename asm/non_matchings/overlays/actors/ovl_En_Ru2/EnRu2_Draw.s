glabel EnRu2_Draw
/* 01B34 80AF4084 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01B38 80AF4088 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01B3C 80AF408C 8C8202AC */  lw      $v0, 0x02AC($a0)           ## 000002AC
/* 01B40 80AF4090 04400008 */  bltz    $v0, .L80AF40B4            
/* 01B44 80AF4094 28410003 */  slti    $at, $v0, 0x0003           
/* 01B48 80AF4098 10200006 */  beq     $at, $zero, .L80AF40B4     
/* 01B4C 80AF409C 00027080 */  sll     $t6, $v0,  2               
/* 01B50 80AF40A0 3C0380AF */  lui     $v1, %hi(D_80AF510C)       ## $v1 = 80AF0000
/* 01B54 80AF40A4 006E1821 */  addu    $v1, $v1, $t6              
/* 01B58 80AF40A8 8C63510C */  lw      $v1, %lo(D_80AF510C)($v1)  
/* 01B5C 80AF40AC 14600006 */  bne     $v1, $zero, .L80AF40C8     
/* 01B60 80AF40B0 00000000 */  nop
.L80AF40B4:
/* 01B64 80AF40B4 3C0480AF */  lui     $a0, %hi(D_80AF5244)       ## $a0 = 80AF0000
/* 01B68 80AF40B8 0C00084C */  jal     osSyncPrintf
              
/* 01B6C 80AF40BC 24845244 */  addiu   $a0, $a0, %lo(D_80AF5244)  ## $a0 = 80AF5244
/* 01B70 80AF40C0 10000004 */  beq     $zero, $zero, .L80AF40D4   
/* 01B74 80AF40C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF40C8:
/* 01B78 80AF40C8 0060F809 */  jalr    $ra, $v1                   
/* 01B7C 80AF40CC 00000000 */  nop
/* 01B80 80AF40D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF40D4:
/* 01B84 80AF40D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01B88 80AF40D8 03E00008 */  jr      $ra                        
/* 01B8C 80AF40DC 00000000 */  nop

