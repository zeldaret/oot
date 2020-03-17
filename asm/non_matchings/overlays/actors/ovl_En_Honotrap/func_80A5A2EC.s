glabel func_80A5A2EC
/* 006BC 80A5A2EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006C0 80A5A2F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006C4 80A5A2F4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 006C8 80A5A2F8 848E0228 */  lh      $t6, 0x0228($a0)           ## 00000228
/* 006CC 80A5A2FC 5DC00004 */  bgtzl   $t6, .L80A5A310            
/* 006D0 80A5A300 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006D4 80A5A304 0C2968C7 */  jal     func_80A5A31C              
/* 006D8 80A5A308 00000000 */  nop
/* 006DC 80A5A30C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A5A310:
/* 006E0 80A5A310 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006E4 80A5A314 03E00008 */  jr      $ra                        
/* 006E8 80A5A318 00000000 */  nop


