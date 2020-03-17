glabel func_80AEFC24
/* 05014 80AEFC24 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 05018 80AEFC28 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0501C 80AEFC2C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 05020 80AEFC30 0C2BB60F */  jal     func_80AED83C              
/* 05024 80AEFC34 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 05028 80AEFC38 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0502C 80AEFC3C 0C2BBE67 */  jal     func_80AEF99C              
/* 05030 80AEFC40 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 05034 80AEFC44 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 05038 80AEFC48 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0503C 80AEFC4C 03E00008 */  jr      $ra                        
/* 05040 80AEFC50 00000000 */  nop


