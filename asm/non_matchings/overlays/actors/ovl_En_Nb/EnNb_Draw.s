glabel EnNb_Draw
/* 034F0 80AB4280 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 034F4 80AB4284 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 034F8 80AB4288 8C82027C */  lw      $v0, 0x027C($a0)           ## 0000027C
/* 034FC 80AB428C 04400008 */  bltz    $v0, .L80AB42B0            
/* 03500 80AB4290 28410005 */  slti    $at, $v0, 0x0005           
/* 03504 80AB4294 10200006 */  beq     $at, $zero, .L80AB42B0     
/* 03508 80AB4298 00027080 */  sll     $t6, $v0,  2               
/* 0350C 80AB429C 3C0380AB */  lui     $v1, %hi(D_80AB4F54)       ## $v1 = 80AB0000
/* 03510 80AB42A0 006E1821 */  addu    $v1, $v1, $t6              
/* 03514 80AB42A4 8C634F54 */  lw      $v1, %lo(D_80AB4F54)($v1)  
/* 03518 80AB42A8 14600006 */  bne     $v1, $zero, .L80AB42C4     
/* 0351C 80AB42AC 00000000 */  nop
.L80AB42B0:
/* 03520 80AB42B0 3C0480AB */  lui     $a0, %hi(D_80AB51C8)       ## $a0 = 80AB0000
/* 03524 80AB42B4 0C00084C */  jal     osSyncPrintf
              
/* 03528 80AB42B8 248451C8 */  addiu   $a0, $a0, %lo(D_80AB51C8)  ## $a0 = 80AB51C8
/* 0352C 80AB42BC 10000004 */  beq     $zero, $zero, .L80AB42D0   
/* 03530 80AB42C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB42C4:
/* 03534 80AB42C4 0060F809 */  jalr    $ra, $v1                   
/* 03538 80AB42C8 00000000 */  nop
/* 0353C 80AB42CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB42D0:
/* 03540 80AB42D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03544 80AB42D4 03E00008 */  jr      $ra                        
/* 03548 80AB42D8 00000000 */  nop
/* 0354C 80AB42DC 00000000 */  nop

