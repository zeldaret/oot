glabel func_80B006B0
/* 02400 80B006B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02404 80B006B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02408 80B006B8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0240C 80B006BC 0C2C0184 */  jal     func_80B00610              
/* 02410 80B006C0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02414 80B006C4 0C2C0164 */  jal     func_80B00590              
/* 02418 80B006C8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0241C 80B006CC 14400006 */  bne     $v0, $zero, .L80B006E8     
/* 02420 80B006D0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02424 80B006D4 908E02D8 */  lbu     $t6, 0x02D8($a0)           ## 000002D8
/* 02428 80B006D8 55C00004 */  bnel    $t6, $zero, .L80B006EC     
/* 0242C 80B006DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02430 80B006E0 0C2C0178 */  jal     func_80B005E0              
/* 02434 80B006E4 00000000 */  nop
.L80B006E8:
/* 02438 80B006E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B006EC:
/* 0243C 80B006EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02440 80B006F0 03E00008 */  jr      $ra                        
/* 02444 80B006F4 00000000 */  nop


