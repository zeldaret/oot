.rdata
glabel D_808AB98C
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.text
glabel BgSpot01Idohashira_Draw
/* 00AE8 808AB7C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AEC 808AB7CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AF0 808AB7D0 8C820168 */  lw      $v0, 0x0168($a0)           ## 00000168
/* 00AF4 808AB7D4 04400008 */  bltz    $v0, .L808AB7F8            
/* 00AF8 808AB7D8 00000000 */  nop
/* 00AFC 808AB7DC 1C400006 */  bgtz    $v0, .L808AB7F8            
/* 00B00 808AB7E0 00027080 */  sll     $t6, $v0,  2               
/* 00B04 808AB7E4 3C03808B */  lui     $v1, %hi(D_808AB844)       ## $v1 = 808B0000
/* 00B08 808AB7E8 006E1821 */  addu    $v1, $v1, $t6              
/* 00B0C 808AB7EC 8C63B844 */  lw      $v1, %lo(D_808AB844)($v1)  
/* 00B10 808AB7F0 14600006 */  bne     $v1, $zero, .L808AB80C     
/* 00B14 808AB7F4 00000000 */  nop
.L808AB7F8:
/* 00B18 808AB7F8 3C04808B */  lui     $a0, %hi(D_808AB98C)       ## $a0 = 808B0000
/* 00B1C 808AB7FC 0C00084C */  jal     osSyncPrintf
              
/* 00B20 808AB800 2484B98C */  addiu   $a0, $a0, %lo(D_808AB98C)  ## $a0 = 808AB98C
/* 00B24 808AB804 10000004 */  beq     $zero, $zero, .L808AB818   
/* 00B28 808AB808 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808AB80C:
/* 00B2C 808AB80C 0060F809 */  jalr    $ra, $v1                   
/* 00B30 808AB810 00000000 */  nop
/* 00B34 808AB814 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808AB818:
/* 00B38 808AB818 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B3C 808AB81C 03E00008 */  jr      $ra                        
/* 00B40 808AB820 00000000 */  nop
/* 00B44 808AB824 00000000 */  nop
/* 00B48 808AB828 00000000 */  nop
/* 00B4C 808AB82C 00000000 */  nop
