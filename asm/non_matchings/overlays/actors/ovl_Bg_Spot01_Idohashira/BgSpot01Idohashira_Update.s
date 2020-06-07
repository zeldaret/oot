.rdata
glabel D_808AB8FC
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.text
glabel BgSpot01Idohashira_Update
/* 008B0 808AB590 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008B4 808AB594 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008B8 808AB598 8C820164 */  lw      $v0, 0x0164($a0)           ## 00000164
/* 008BC 808AB59C 04400008 */  bltz    $v0, .L808AB5C0            
/* 008C0 808AB5A0 28410004 */  slti    $at, $v0, 0x0004           
/* 008C4 808AB5A4 10200006 */  beq     $at, $zero, .L808AB5C0     
/* 008C8 808AB5A8 00027080 */  sll     $t6, $v0,  2               
/* 008CC 808AB5AC 3C03808B */  lui     $v1, %hi(D_808AB830)       ## $v1 = 808B0000
/* 008D0 808AB5B0 006E1821 */  addu    $v1, $v1, $t6              
/* 008D4 808AB5B4 8C63B830 */  lw      $v1, %lo(D_808AB830)($v1)  
/* 008D8 808AB5B8 14600006 */  bne     $v1, $zero, .L808AB5D4     
/* 008DC 808AB5BC 00000000 */  nop
.L808AB5C0:
/* 008E0 808AB5C0 3C04808B */  lui     $a0, %hi(D_808AB8FC)       ## $a0 = 808B0000
/* 008E4 808AB5C4 0C00084C */  jal     osSyncPrintf
              
/* 008E8 808AB5C8 2484B8FC */  addiu   $a0, $a0, %lo(D_808AB8FC)  ## $a0 = 808AB8FC
/* 008EC 808AB5CC 10000004 */  beq     $zero, $zero, .L808AB5E0   
/* 008F0 808AB5D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808AB5D4:
/* 008F4 808AB5D4 0060F809 */  jalr    $ra, $v1                   
/* 008F8 808AB5D8 00000000 */  nop
/* 008FC 808AB5DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808AB5E0:
/* 00900 808AB5E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00904 808AB5E4 03E00008 */  jr      $ra                        
/* 00908 808AB5E8 00000000 */  nop
