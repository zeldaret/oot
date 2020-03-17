glabel EnNb_Update
/* 030E0 80AB3E70 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 030E4 80AB3E74 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 030E8 80AB3E78 8C820278 */  lw      $v0, 0x0278($a0)           ## 00000278
/* 030EC 80AB3E7C 04400008 */  bltz    $v0, .L80AB3EA0            
/* 030F0 80AB3E80 2841001F */  slti    $at, $v0, 0x001F           
/* 030F4 80AB3E84 10200006 */  beq     $at, $zero, .L80AB3EA0     
/* 030F8 80AB3E88 00027080 */  sll     $t6, $v0,  2               
/* 030FC 80AB3E8C 3C0380AB */  lui     $v1, %hi(D_80AB4ECC)       ## $v1 = 80AB0000
/* 03100 80AB3E90 006E1821 */  addu    $v1, $v1, $t6              
/* 03104 80AB3E94 8C634ECC */  lw      $v1, %lo(D_80AB4ECC)($v1)  
/* 03108 80AB3E98 14600006 */  bne     $v1, $zero, .L80AB3EB4     
/* 0310C 80AB3E9C 00000000 */  nop
.L80AB3EA0:
/* 03110 80AB3EA0 3C0480AB */  lui     $a0, %hi(D_80AB516C)       ## $a0 = 80AB0000
/* 03114 80AB3EA4 0C00084C */  jal     osSyncPrintf
              
/* 03118 80AB3EA8 2484516C */  addiu   $a0, $a0, %lo(D_80AB516C)  ## $a0 = 80AB516C
/* 0311C 80AB3EAC 10000004 */  beq     $zero, $zero, .L80AB3EC0   
/* 03120 80AB3EB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB3EB4:
/* 03124 80AB3EB4 0060F809 */  jalr    $ra, $v1                   
/* 03128 80AB3EB8 00000000 */  nop
/* 0312C 80AB3EBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB3EC0:
/* 03130 80AB3EC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03134 80AB3EC4 03E00008 */  jr      $ra                        
/* 03138 80AB3EC8 00000000 */  nop


