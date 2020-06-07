glabel func_80B516D0
/* 02D40 80B516D0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02D44 80B516D4 10A00007 */  beq     $a1, $zero, .L80B516F4     
/* 02D48 80B516D8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02D4C 80B516DC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02D50 80B516E0 24A59AD4 */  addiu   $a1, $a1, 0x9AD4           ## $a1 = 06009AD4
/* 02D54 80B516E4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02D58 80B516E8 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02D5C 80B516EC 0C2D3F40 */  jal     func_80B4FD00              
/* 02D60 80B516F0 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B516F4:
/* 02D64 80B516F4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02D68 80B516F8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02D6C 80B516FC 03E00008 */  jr      $ra                        
/* 02D70 80B51700 00000000 */  nop
