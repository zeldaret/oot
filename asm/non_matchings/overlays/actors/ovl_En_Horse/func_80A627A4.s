glabel func_80A627A4
/* 074B4 80A627A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 074B8 80A627A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 074BC 80A627AC 8C8E03BC */  lw      $t6, 0x03BC($a0)           ## 000003BC
/* 074C0 80A627B0 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 074C4 80A627B4 29E1001E */  slti    $at, $t7, 0x001E           
/* 074C8 80A627B8 10200005 */  beq     $at, $zero, .L80A627D0     
/* 074CC 80A627BC AC8F03BC */  sw      $t7, 0x03BC($a0)           ## 000003BC
/* 074D0 80A627C0 0C298957 */  jal     func_80A6255C              
/* 074D4 80A627C4 00000000 */  nop
/* 074D8 80A627C8 10000004 */  beq     $zero, $zero, .L80A627DC   
/* 074DC 80A627CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A627D0:
/* 074E0 80A627D0 0C2989AE */  jal     func_80A626B8              
/* 074E4 80A627D4 00000000 */  nop
/* 074E8 80A627D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A627DC:
/* 074EC 80A627DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 074F0 80A627E0 03E00008 */  jr      $ra                        
/* 074F4 80A627E4 00000000 */  nop
