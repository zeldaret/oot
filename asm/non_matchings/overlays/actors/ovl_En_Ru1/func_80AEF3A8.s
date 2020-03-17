glabel func_80AEF3A8
/* 04798 80AEF3A8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0479C 80AEF3AC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 047A0 80AEF3B0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 047A4 80AEF3B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 047A8 80AEF3B8 0C2BB60F */  jal     func_80AED83C              
/* 047AC 80AEF3BC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 047B0 80AEF3C0 0C2BACC8 */  jal     func_80AEB320              
/* 047B4 80AEF3C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 047B8 80AEF3C8 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 047BC 80AEF3CC 0C2BBC20 */  jal     func_80AEF080              
/* 047C0 80AEF3D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 047C4 80AEF3D4 0C2BAB87 */  jal     func_80AEAE1C              
/* 047C8 80AEF3D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 047CC 80AEF3DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 047D0 80AEF3E0 0C2BABB3 */  jal     func_80AEAECC              
/* 047D4 80AEF3E4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 047D8 80AEF3E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 047DC 80AEF3EC 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 047E0 80AEF3F0 0C2BBC7C */  jal     func_80AEF1F0              
/* 047E4 80AEF3F4 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 047E8 80AEF3F8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 047EC 80AEF3FC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 047F0 80AEF400 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 047F4 80AEF404 03E00008 */  jr      $ra                        
/* 047F8 80AEF408 00000000 */  nop


