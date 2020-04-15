glabel func_80B95540
/* 008A0 80B95540 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008A4 80B95544 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008A8 80B95548 3C0E80B9 */  lui     $t6, %hi(func_80B95574)    ## $t6 = 80B90000
/* 008AC 80B9554C 25CE5574 */  addiu   $t6, $t6, %lo(func_80B95574) ## $t6 = 80B95574
/* 008B0 80B95550 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 008B4 80B95554 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 008B8 80B95558 A08F0003 */  sb      $t7, 0x0003($a0)           ## 00000003
/* 008BC 80B9555C 0C00BDF7 */  jal     func_8002F7DC              
/* 008C0 80B95560 24050878 */  addiu   $a1, $zero, 0x0878         ## $a1 = 00000878
/* 008C4 80B95564 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008C8 80B95568 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008CC 80B9556C 03E00008 */  jr      $ra                        
/* 008D0 80B95570 00000000 */  nop
