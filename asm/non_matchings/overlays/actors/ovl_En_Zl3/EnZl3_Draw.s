glabel EnZl3_Draw
/* 06FF8 80B5A3A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 06FFC 80B5A3AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 07000 80B5A3B0 8C820250 */  lw      $v0, 0x0250($a0)           ## 00000250
/* 07004 80B5A3B4 04400008 */  bltz    $v0, .L80B5A3D8            
/* 07008 80B5A3B8 28410003 */  slti    $at, $v0, 0x0003           
/* 0700C 80B5A3BC 10200006 */  beq     $at, $zero, .L80B5A3D8     
/* 07010 80B5A3C0 00027080 */  sll     $t6, $v0,  2               
/* 07014 80B5A3C4 3C0380B6 */  lui     $v1, %hi(D_80B5A568)       ## $v1 = 80B60000
/* 07018 80B5A3C8 006E1821 */  addu    $v1, $v1, $t6              
/* 0701C 80B5A3CC 8C63A568 */  lw      $v1, %lo(D_80B5A568)($v1)  
/* 07020 80B5A3D0 14600006 */  bne     $v1, $zero, .L80B5A3EC     
/* 07024 80B5A3D4 00000000 */  nop
.L80B5A3D8:
/* 07028 80B5A3D8 3C0480B6 */  lui     $a0, %hi(D_80B5AA8C)       ## $a0 = 80B60000
/* 0702C 80B5A3DC 0C00084C */  jal     osSyncPrintf
              
/* 07030 80B5A3E0 2484AA8C */  addiu   $a0, $a0, %lo(D_80B5AA8C)  ## $a0 = 80B5AA8C
/* 07034 80B5A3E4 10000004 */  beq     $zero, $zero, .L80B5A3F8   
/* 07038 80B5A3E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B5A3EC:
/* 0703C 80B5A3EC 0060F809 */  jalr    $ra, $v1                   
/* 07040 80B5A3F0 00000000 */  nop
/* 07044 80B5A3F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B5A3F8:
/* 07048 80B5A3F8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0704C 80B5A3FC 03E00008 */  jr      $ra                        
/* 07050 80B5A400 00000000 */  nop
/* 07054 80B5A404 00000000 */  nop
/* 07058 80B5A408 00000000 */  nop
/* 0705C 80B5A40C 00000000 */  nop

