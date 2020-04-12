.rdata
glabel D_80AF1AC0
    .asciz "\x1b[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n\x1b[m"
    .balign 4

.text
glabel EnRu1_Update
/* 054A4 80AF00B4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 054A8 80AF00B8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 054AC 80AF00BC 8C820264 */  lw      $v0, 0x0264($a0)           ## 00000264
/* 054B0 80AF00C0 04400008 */  bltz    $v0, .L80AF00E4            
/* 054B4 80AF00C4 2841002E */  slti    $at, $v0, 0x002E           
/* 054B8 80AF00C8 10200006 */  beq     $at, $zero, .L80AF00E4     
/* 054BC 80AF00CC 00027080 */  sll     $t6, $v0,  2               
/* 054C0 80AF00D0 3C0380AF */  lui     $v1, %hi(D_80AF193C)       ## $v1 = 80AF0000
/* 054C4 80AF00D4 006E1821 */  addu    $v1, $v1, $t6              
/* 054C8 80AF00D8 8C63193C */  lw      $v1, %lo(D_80AF193C)($v1)  
/* 054CC 80AF00DC 14600006 */  bne     $v1, $zero, .L80AF00F8     
/* 054D0 80AF00E0 00000000 */  nop
.L80AF00E4:
/* 054D4 80AF00E4 3C0480AF */  lui     $a0, %hi(D_80AF1AC0)       ## $a0 = 80AF0000
/* 054D8 80AF00E8 0C00084C */  jal     osSyncPrintf
              
/* 054DC 80AF00EC 24841AC0 */  addiu   $a0, $a0, %lo(D_80AF1AC0)  ## $a0 = 80AF1AC0
/* 054E0 80AF00F0 10000004 */  beq     $zero, $zero, .L80AF0104   
/* 054E4 80AF00F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF00F8:
/* 054E8 80AF00F8 0060F809 */  jalr    $ra, $v1                   
/* 054EC 80AF00FC 00000000 */  nop
/* 054F0 80AF0100 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF0104:
/* 054F4 80AF0104 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 054F8 80AF0108 03E00008 */  jr      $ra                        
/* 054FC 80AF010C 00000000 */  nop
