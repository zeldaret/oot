glabel func_80AEB174
/* 00564 80AEB174 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00568 80AEB178 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0056C 80AEB17C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00570 80AEB180 0C042F6F */  jal     func_8010BDBC              
/* 00574 80AEB184 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00578 80AEB188 38420005 */  xori    $v0, $v0, 0x0005           ## $v0 = 00000005
/* 0057C 80AEB18C 2C420001 */  sltiu   $v0, $v0, 0x0001           
/* 00580 80AEB190 50400005 */  beql    $v0, $zero, .L80AEB1A8     
/* 00584 80AEB194 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00588 80AEB198 0C041AF2 */  jal     func_80106BC8              
/* 0058C 80AEB19C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00590 80AEB1A0 0002102B */  sltu    $v0, $zero, $v0            
/* 00594 80AEB1A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEB1A8:
/* 00598 80AEB1A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0059C 80AEB1AC 03E00008 */  jr      $ra                        
/* 005A0 80AEB1B0 00000000 */  nop
