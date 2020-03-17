glabel EnZl2_Draw
/* 03E1C 80B527AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03E20 80B527B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03E24 80B527B4 8C8201A0 */  lw      $v0, 0x01A0($a0)           ## 000001A0
/* 03E28 80B527B8 04400008 */  bltz    $v0, .L80B527DC            
/* 03E2C 80B527BC 28410003 */  slti    $at, $v0, 0x0003           
/* 03E30 80B527C0 10200006 */  beq     $at, $zero, .L80B527DC     
/* 03E34 80B527C4 00027080 */  sll     $t6, $v0,  2               
/* 03E38 80B527C8 3C0380B5 */  lui     $v1, %hi(D_80B528D4)       ## $v1 = 80B50000
/* 03E3C 80B527CC 006E1821 */  addu    $v1, $v1, $t6              
/* 03E40 80B527D0 8C6328D4 */  lw      $v1, %lo(D_80B528D4)($v1)  
/* 03E44 80B527D4 14600006 */  bne     $v1, $zero, .L80B527F0     
/* 03E48 80B527D8 00000000 */  nop
.L80B527DC:
/* 03E4C 80B527DC 3C0480B5 */  lui     $a0, %hi(D_80B52B78)       ## $a0 = 80B50000
/* 03E50 80B527E0 0C00084C */  jal     osSyncPrintf
              
/* 03E54 80B527E4 24842B78 */  addiu   $a0, $a0, %lo(D_80B52B78)  ## $a0 = 80B52B78
/* 03E58 80B527E8 10000004 */  beq     $zero, $zero, .L80B527FC   
/* 03E5C 80B527EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B527F0:
/* 03E60 80B527F0 0060F809 */  jalr    $ra, $v1                   
/* 03E64 80B527F4 00000000 */  nop
/* 03E68 80B527F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B527FC:
/* 03E6C 80B527FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03E70 80B52800 03E00008 */  jr      $ra                        
/* 03E74 80B52804 00000000 */  nop
/* 03E78 80B52808 00000000 */  nop
/* 03E7C 80B5280C 00000000 */  nop

