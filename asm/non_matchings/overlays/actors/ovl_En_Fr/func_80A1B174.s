glabel func_80A1B174
/* 007D4 80A1B174 8C820370 */  lw      $v0, 0x0370($a0)           ## 00000370
/* 007D8 80A1B178 3C0F80A2 */  lui     $t7, %hi(func_80A1B19C)    ## $t7 = 80A20000
/* 007DC 80A1B17C 25EFB19C */  addiu   $t7, $t7, %lo(func_80A1B19C) ## $t7 = 80A1B19C
/* 007E0 80A1B180 10400003 */  beq     $v0, $zero, .L80A1B190     
/* 007E4 80A1B184 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 007E8 80A1B188 03E00008 */  jr      $ra                        
/* 007EC 80A1B18C AC8E0370 */  sw      $t6, 0x0370($a0)           ## 00000370
.L80A1B190:
/* 007F0 80A1B190 AC8F0374 */  sw      $t7, 0x0374($a0)           ## 00000374
/* 007F4 80A1B194 03E00008 */  jr      $ra                        
/* 007F8 80A1B198 00000000 */  nop


