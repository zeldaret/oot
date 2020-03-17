glabel EnXc_Draw
/* 05B04 80B41CE4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 05B08 80B41CE8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 05B0C 80B41CEC 8C820264 */  lw      $v0, 0x0264($a0)           ## 00000264
/* 05B10 80B41CF0 04400008 */  bltz    $v0, .L80B41D14            
/* 05B14 80B41CF4 28410006 */  slti    $at, $v0, 0x0006           
/* 05B18 80B41CF8 10200006 */  beq     $at, $zero, .L80B41D14     
/* 05B1C 80B41CFC 00027080 */  sll     $t6, $v0,  2               
/* 05B20 80B41D00 3C0380B4 */  lui     $v1, %hi(D_80B41F18)       ## $v1 = 80B40000
/* 05B24 80B41D04 006E1821 */  addu    $v1, $v1, $t6              
/* 05B28 80B41D08 8C631F18 */  lw      $v1, %lo(D_80B41F18)($v1)  
/* 05B2C 80B41D0C 14600006 */  bne     $v1, $zero, .L80B41D28     
/* 05B30 80B41D10 00000000 */  nop
.L80B41D14:
/* 05B34 80B41D14 3C0480B4 */  lui     $a0, %hi(D_80B421C0)       ## $a0 = 80B40000
/* 05B38 80B41D18 0C00084C */  jal     osSyncPrintf
              
/* 05B3C 80B41D1C 248421C0 */  addiu   $a0, $a0, %lo(D_80B421C0)  ## $a0 = 80B421C0
/* 05B40 80B41D20 10000004 */  beq     $zero, $zero, .L80B41D34   
/* 05B44 80B41D24 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B41D28:
/* 05B48 80B41D28 0060F809 */  jalr    $ra, $v1                   
/* 05B4C 80B41D2C 00000000 */  nop
/* 05B50 80B41D30 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B41D34:
/* 05B54 80B41D34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05B58 80B41D38 03E00008 */  jr      $ra                        
/* 05B5C 80B41D3C 00000000 */  nop

