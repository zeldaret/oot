glabel BgMoriIdomizu_Destroy
/* 00178 808A47B8 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 0017C 808A47BC 848E0158 */  lh      $t6, 0x0158($a0)           ## 00000158
/* 00180 808A47C0 3C01808A */  lui     $at, %hi(D_808A4C10)       ## $at = 808A0000
/* 00184 808A47C4 11C00002 */  beq     $t6, $zero, .L808A47D0     
/* 00188 808A47C8 00000000 */  nop
/* 0018C 808A47CC A4204C10 */  sh      $zero, %lo(D_808A4C10)($at) 
.L808A47D0:
/* 00190 808A47D0 03E00008 */  jr      $ra                        
/* 00194 808A47D4 00000000 */  nop
