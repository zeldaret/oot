glabel EnRu1_Draw
/* 05B94 80AF07A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 05B98 80AF07A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 05B9C 80AF07AC 8C820268 */  lw      $v0, 0x0268($a0)           ## 00000268
/* 05BA0 80AF07B0 04400008 */  bltz    $v0, .L80AF07D4            
/* 05BA4 80AF07B4 28410003 */  slti    $at, $v0, 0x0003           
/* 05BA8 80AF07B8 10200006 */  beq     $at, $zero, .L80AF07D4     
/* 05BAC 80AF07BC 00027080 */  sll     $t6, $v0,  2               
/* 05BB0 80AF07C0 3C0380AF */  lui     $v1, %hi(D_80AF1A04)       ## $v1 = 80AF0000
/* 05BB4 80AF07C4 006E1821 */  addu    $v1, $v1, $t6              
/* 05BB8 80AF07C8 8C631A04 */  lw      $v1, %lo(D_80AF1A04)($v1)  
/* 05BBC 80AF07CC 14600006 */  bne     $v1, $zero, .L80AF07E8     
/* 05BC0 80AF07D0 00000000 */  nop
.L80AF07D4:
/* 05BC4 80AF07D4 3C0480AF */  lui     $a0, %hi(D_80AF1B94)       ## $a0 = 80AF0000
/* 05BC8 80AF07D8 0C00084C */  jal     osSyncPrintf
              
/* 05BCC 80AF07DC 24841B94 */  addiu   $a0, $a0, %lo(D_80AF1B94)  ## $a0 = 80AF1B94
/* 05BD0 80AF07E0 10000004 */  beq     $zero, $zero, .L80AF07F4   
/* 05BD4 80AF07E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF07E8:
/* 05BD8 80AF07E8 0060F809 */  jalr    $ra, $v1                   
/* 05BDC 80AF07EC 00000000 */  nop
/* 05BE0 80AF07F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF07F4:
/* 05BE4 80AF07F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05BE8 80AF07F8 03E00008 */  jr      $ra                        
/* 05BEC 80AF07FC 00000000 */  nop

