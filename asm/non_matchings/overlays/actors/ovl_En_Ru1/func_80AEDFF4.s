glabel func_80AEDFF4
/* 033E4 80AEDFF4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 033E8 80AEDFF8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 033EC 80AEDFFC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 033F0 80AEE000 0C2BB6CC */  jal     func_80AEDB30              
/* 033F4 80AEE004 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 033F8 80AEE008 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 033FC 80AEE00C 0C2BB7BD */  jal     func_80AEDEF4              
/* 03400 80AEE010 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03404 80AEE014 0C00B638 */  jal     Actor_MoveForward
              
/* 03408 80AEE018 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0340C 80AEE01C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03410 80AEE020 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03414 80AEE024 03E00008 */  jr      $ra                        
/* 03418 80AEE028 00000000 */  nop


