glabel BgZg_Update
/* 00188 808C0DA8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0018C 808C0DAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00190 808C0DB0 8C820164 */  lw      $v0, 0x0164($a0)           ## 00000164
/* 00194 808C0DB4 04400008 */  bltz    $v0, .L808C0DD8            
/* 00198 808C0DB8 28410002 */  slti    $at, $v0, 0x0002           
/* 0019C 808C0DBC 10200006 */  beq     $at, $zero, .L808C0DD8     
/* 001A0 808C0DC0 00027080 */  sll     $t6, $v0,  2               
/* 001A4 808C0DC4 3C03808C */  lui     $v1, %hi(D_808C1010)       ## $v1 = 808C0000
/* 001A8 808C0DC8 006E1821 */  addu    $v1, $v1, $t6              
/* 001AC 808C0DCC 8C631010 */  lw      $v1, %lo(D_808C1010)($v1)  
/* 001B0 808C0DD0 14600006 */  bne     $v1, $zero, .L808C0DEC     
/* 001B4 808C0DD4 00000000 */  nop
.L808C0DD8:
/* 001B8 808C0DD8 3C04808C */  lui     $a0, %hi(D_808C1040)       ## $a0 = 808C0000
/* 001BC 808C0DDC 0C00084C */  jal     osSyncPrintf
              
/* 001C0 808C0DE0 24841040 */  addiu   $a0, $a0, %lo(D_808C1040)  ## $a0 = 808C1040
/* 001C4 808C0DE4 10000004 */  beq     $zero, $zero, .L808C0DF8   
/* 001C8 808C0DE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808C0DEC:
/* 001CC 808C0DEC 0060F809 */  jalr    $ra, $v1                   
/* 001D0 808C0DF0 00000000 */  nop
/* 001D4 808C0DF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808C0DF8:
/* 001D8 808C0DF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001DC 808C0DFC 03E00008 */  jr      $ra                        
/* 001E0 808C0E00 00000000 */  nop


