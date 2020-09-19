.rdata
glabel D_80B5A958
    .asciz "\x1b[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n\x1b[m"
    .balign 4

.text
glabel EnZl3_Update
/* 06A90 80B59E40 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 06A94 80B59E44 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 06A98 80B59E48 8C82024C */  lw      $v0, 0x024C($a0)           ## 0000024C
/* 06A9C 80B59E4C 04400008 */  bltz    $v0, .L80B59E70            
/* 06AA0 80B59E50 28410028 */  slti    $at, $v0, 0x0028           
/* 06AA4 80B59E54 10200006 */  beq     $at, $zero, .L80B59E70     
/* 06AA8 80B59E58 00027080 */  sll     $t6, $v0,  2               
/* 06AAC 80B59E5C 3C0380B6 */  lui     $v1, %hi(D_80B5A4C0)       ## $v1 = 80B60000
/* 06AB0 80B59E60 006E1821 */  addu    $v1, $v1, $t6              
/* 06AB4 80B59E64 8C63A4C0 */  lw      $v1, %lo(D_80B5A4C0)($v1)  
/* 06AB8 80B59E68 14600006 */  bne     $v1, $zero, .L80B59E84     
/* 06ABC 80B59E6C 00000000 */  nop
.L80B59E70:
/* 06AC0 80B59E70 3C0480B6 */  lui     $a0, %hi(D_80B5A958)       ## $a0 = 80B60000
/* 06AC4 80B59E74 0C00084C */  jal     osSyncPrintf
              
/* 06AC8 80B59E78 2484A958 */  addiu   $a0, $a0, %lo(D_80B5A958)  ## $a0 = 80B5A958
/* 06ACC 80B59E7C 10000004 */  beq     $zero, $zero, .L80B59E90   
/* 06AD0 80B59E80 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B59E84:
/* 06AD4 80B59E84 0060F809 */  jalr    $ra, $v1                   
/* 06AD8 80B59E88 00000000 */  nop
/* 06ADC 80B59E8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B59E90:
/* 06AE0 80B59E90 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 06AE4 80B59E94 03E00008 */  jr      $ra                        
/* 06AE8 80B59E98 00000000 */  nop
