.rdata
glabel D_8096D054
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.text
glabel DemoDu_Update
/* 02384 8096BE54 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02388 8096BE58 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0238C 8096BE5C 8C820198 */  lw      $v0, 0x0198($a0)           ## 00000198
/* 02390 8096BE60 04400008 */  bltz    $v0, .L8096BE84            
/* 02394 8096BE64 2841001D */  slti    $at, $v0, 0x001D           
/* 02398 8096BE68 10200006 */  beq     $at, $zero, .L8096BE84     
/* 0239C 8096BE6C 00027080 */  sll     $t6, $v0,  2               
/* 023A0 8096BE70 3C038097 */  lui     $v1, %hi(D_8096CF30)       ## $v1 = 80970000
/* 023A4 8096BE74 006E1821 */  addu    $v1, $v1, $t6              
/* 023A8 8096BE78 8C63CF30 */  lw      $v1, %lo(D_8096CF30)($v1)  
/* 023AC 8096BE7C 14600006 */  bne     $v1, $zero, .L8096BE98     
/* 023B0 8096BE80 00000000 */  nop
.L8096BE84:
/* 023B4 8096BE84 3C048097 */  lui     $a0, %hi(D_8096D054)       ## $a0 = 80970000
/* 023B8 8096BE88 0C00084C */  jal     osSyncPrintf
              
/* 023BC 8096BE8C 2484D054 */  addiu   $a0, $a0, %lo(D_8096D054)  ## $a0 = 8096D054
/* 023C0 8096BE90 10000004 */  beq     $zero, $zero, .L8096BEA4   
/* 023C4 8096BE94 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8096BE98:
/* 023C8 8096BE98 0060F809 */  jalr    $ra, $v1                   
/* 023CC 8096BE9C 00000000 */  nop
/* 023D0 8096BEA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8096BEA4:
/* 023D4 8096BEA4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 023D8 8096BEA8 03E00008 */  jr      $ra                        
/* 023DC 8096BEAC 00000000 */  nop
