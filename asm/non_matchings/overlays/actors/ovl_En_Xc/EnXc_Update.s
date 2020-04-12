.rdata
glabel D_80B42120
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.text
glabel EnXc_Update
/* 056C4 80B418A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 056C8 80B418A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 056CC 80B418AC 8C820260 */  lw      $v0, 0x0260($a0)           ## 00000260
/* 056D0 80B418B0 04400008 */  bltz    $v0, .L80B418D4            
/* 056D4 80B418B4 28410051 */  slti    $at, $v0, 0x0051           
/* 056D8 80B418B8 10200006 */  beq     $at, $zero, .L80B418D4     
/* 056DC 80B418BC 00027080 */  sll     $t6, $v0,  2               
/* 056E0 80B418C0 3C0380B4 */  lui     $v1, %hi(D_80B41DC8)       ## $v1 = 80B40000
/* 056E4 80B418C4 006E1821 */  addu    $v1, $v1, $t6              
/* 056E8 80B418C8 8C631DC8 */  lw      $v1, %lo(D_80B41DC8)($v1)  
/* 056EC 80B418CC 14600006 */  bne     $v1, $zero, .L80B418E8     
/* 056F0 80B418D0 00000000 */  nop
.L80B418D4:
/* 056F4 80B418D4 3C0480B4 */  lui     $a0, %hi(D_80B42120)       ## $a0 = 80B40000
/* 056F8 80B418D8 0C00084C */  jal     osSyncPrintf
              
/* 056FC 80B418DC 24842120 */  addiu   $a0, $a0, %lo(D_80B42120)  ## $a0 = 80B42120
/* 05700 80B418E0 10000004 */  beq     $zero, $zero, .L80B418F4   
/* 05704 80B418E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B418E8:
/* 05708 80B418E8 0060F809 */  jalr    $ra, $v1                   
/* 0570C 80B418EC 00000000 */  nop
/* 05710 80B418F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B418F4:
/* 05714 80B418F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05718 80B418F8 03E00008 */  jr      $ra                        
/* 0571C 80B418FC 00000000 */  nop
