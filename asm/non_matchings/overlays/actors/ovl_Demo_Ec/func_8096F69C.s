glabel func_8096F69C
/* 021EC 8096F69C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 021F0 8096F6A0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 021F4 8096F6A4 84820190 */  lh      $v0, 0x0190($a0)           ## 00000190
/* 021F8 8096F6A8 3C068097 */  lui     $a2, %hi(D_80970458)       ## $a2 = 80970000
/* 021FC 8096F6AC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 02200 8096F6B0 00027080 */  sll     $t6, $v0,  2               
/* 02204 8096F6B4 00CE3021 */  addu    $a2, $a2, $t6              
/* 02208 8096F6B8 8CC60458 */  lw      $a2, %lo(D_80970458)($a2)  
/* 0220C 8096F6BC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02210 8096F6C0 0C25B631 */  jal     func_8096D8C4              
/* 02214 8096F6C4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02218 8096F6C8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0221C 8096F6CC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02220 8096F6D0 03E00008 */  jr      $ra                        
/* 02224 8096F6D4 00000000 */  nop


