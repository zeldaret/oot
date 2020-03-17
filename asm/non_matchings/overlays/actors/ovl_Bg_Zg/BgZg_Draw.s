glabel BgZg_Draw
/* 00388 808C0FA8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0038C 808C0FAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00390 808C0FB0 8C820168 */  lw      $v0, 0x0168($a0)           ## 00000168
/* 00394 808C0FB4 04400008 */  bltz    $v0, .L808C0FD8            
/* 00398 808C0FB8 00000000 */  nop
/* 0039C 808C0FBC 1C400006 */  bgtz    $v0, .L808C0FD8            
/* 003A0 808C0FC0 00027080 */  sll     $t6, $v0,  2               
/* 003A4 808C0FC4 3C03808C */  lui     $v1, %hi(D_808C101C)       ## $v1 = 808C0000
/* 003A8 808C0FC8 006E1821 */  addu    $v1, $v1, $t6              
/* 003AC 808C0FCC 8C63101C */  lw      $v1, %lo(D_808C101C)($v1)  
/* 003B0 808C0FD0 14600006 */  bne     $v1, $zero, .L808C0FEC     
/* 003B4 808C0FD4 00000000 */  nop
.L808C0FD8:
/* 003B8 808C0FD8 3C04808C */  lui     $a0, %hi(D_808C10AC)       ## $a0 = 808C0000
/* 003BC 808C0FDC 0C00084C */  jal     osSyncPrintf
              
/* 003C0 808C0FE0 248410AC */  addiu   $a0, $a0, %lo(D_808C10AC)  ## $a0 = 808C10AC
/* 003C4 808C0FE4 10000004 */  beq     $zero, $zero, .L808C0FF8   
/* 003C8 808C0FE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808C0FEC:
/* 003CC 808C0FEC 0060F809 */  jalr    $ra, $v1                   
/* 003D0 808C0FF0 00000000 */  nop
/* 003D4 808C0FF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808C0FF8:
/* 003D8 808C0FF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003DC 808C0FFC 03E00008 */  jr      $ra                        
/* 003E0 808C1000 00000000 */  nop
/* 003E4 808C1004 00000000 */  nop
/* 003E8 808C1008 00000000 */  nop
/* 003EC 808C100C 00000000 */  nop

