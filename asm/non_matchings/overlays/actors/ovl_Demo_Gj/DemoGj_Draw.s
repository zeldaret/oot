glabel DemoGj_Draw
/* 0344C 8097BD7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03450 8097BD80 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03454 8097BD84 8C820168 */  lw      $v0, 0x0168($a0)           ## 00000168
/* 03458 8097BD88 04400008 */  bltz    $v0, .L8097BDAC            
/* 0345C 8097BD8C 28410013 */  slti    $at, $v0, 0x0013           
/* 03460 8097BD90 10200006 */  beq     $at, $zero, .L8097BDAC     
/* 03464 8097BD94 00027080 */  sll     $t6, $v0,  2               
/* 03468 8097BD98 3C038098 */  lui     $v1, %hi(D_8097BF24)       ## $v1 = 80980000
/* 0346C 8097BD9C 006E1821 */  addu    $v1, $v1, $t6              
/* 03470 8097BDA0 8C63BF24 */  lw      $v1, %lo(D_8097BF24)($v1)  
/* 03474 8097BDA4 14600006 */  bne     $v1, $zero, .L8097BDC0     
/* 03478 8097BDA8 00000000 */  nop
.L8097BDAC:
/* 0347C 8097BDAC 3C048098 */  lui     $a0, %hi(D_8097C164)       ## $a0 = 80980000
/* 03480 8097BDB0 0C00084C */  jal     osSyncPrintf
              
/* 03484 8097BDB4 2484C164 */  addiu   $a0, $a0, %lo(D_8097C164)  ## $a0 = 8097C164
/* 03488 8097BDB8 10000004 */  beq     $zero, $zero, .L8097BDCC   
/* 0348C 8097BDBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8097BDC0:
/* 03490 8097BDC0 0060F809 */  jalr    $ra, $v1                   
/* 03494 8097BDC4 00000000 */  nop
/* 03498 8097BDC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8097BDCC:
/* 0349C 8097BDCC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 034A0 8097BDD0 03E00008 */  jr      $ra                        
/* 034A4 8097BDD4 00000000 */  nop
/* 034A8 8097BDD8 00000000 */  nop
/* 034AC 8097BDDC 00000000 */  nop

