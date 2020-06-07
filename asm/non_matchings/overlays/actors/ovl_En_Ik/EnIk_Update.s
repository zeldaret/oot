.rdata
glabel D_80A78840
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.text
glabel EnIk_Update
/* 0388C 80A77B9C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03890 80A77BA0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03894 80A77BA4 8C8204C8 */  lw      $v0, 0x04C8($a0)           ## 000004C8
/* 03898 80A77BA8 04400008 */  bltz    $v0, .L80A77BCC            
/* 0389C 80A77BAC 28410006 */  slti    $at, $v0, 0x0006           
/* 038A0 80A77BB0 10200006 */  beq     $at, $zero, .L80A77BCC     
/* 038A4 80A77BB4 00027080 */  sll     $t6, $v0,  2               
/* 038A8 80A77BB8 3C0380A8 */  lui     $v1, %hi(D_80A78604)       ## $v1 = 80A80000
/* 038AC 80A77BBC 006E1821 */  addu    $v1, $v1, $t6              
/* 038B0 80A77BC0 8C638604 */  lw      $v1, %lo(D_80A78604)($v1)  
/* 038B4 80A77BC4 14600006 */  bne     $v1, $zero, .L80A77BE0     
/* 038B8 80A77BC8 00000000 */  nop
.L80A77BCC:
/* 038BC 80A77BCC 3C0480A8 */  lui     $a0, %hi(D_80A78840)       ## $a0 = 80A80000
/* 038C0 80A77BD0 0C00084C */  jal     osSyncPrintf
              
/* 038C4 80A77BD4 24848840 */  addiu   $a0, $a0, %lo(D_80A78840)  ## $a0 = 80A78840
/* 038C8 80A77BD8 10000004 */  beq     $zero, $zero, .L80A77BEC   
/* 038CC 80A77BDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A77BE0:
/* 038D0 80A77BE0 0060F809 */  jalr    $ra, $v1                   
/* 038D4 80A77BE4 00000000 */  nop
/* 038D8 80A77BE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A77BEC:
/* 038DC 80A77BEC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 038E0 80A77BF0 03E00008 */  jr      $ra                        
/* 038E4 80A77BF4 00000000 */  nop
