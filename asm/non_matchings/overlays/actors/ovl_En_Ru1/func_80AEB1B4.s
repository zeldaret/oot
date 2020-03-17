glabel func_80AEB1B4
/* 005A4 80AEB1B4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005A8 80AEB1B8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005AC 80AEB1BC 0C042F6F */  jal     func_8010BDBC              
/* 005B0 80AEB1C0 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 005B4 80AEB1C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005B8 80AEB1C8 38420002 */  xori    $v0, $v0, 0x0002           ## $v0 = 00000002
/* 005BC 80AEB1CC 2C420001 */  sltiu   $v0, $v0, 0x0001           
/* 005C0 80AEB1D0 03E00008 */  jr      $ra                        
/* 005C4 80AEB1D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


