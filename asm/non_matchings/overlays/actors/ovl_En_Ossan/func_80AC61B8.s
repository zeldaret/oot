glabel func_80AC61B8
/* 03518 80AC61B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0351C 80AC61BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03520 80AC61C0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03524 80AC61C4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03528 80AC61C8 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0352C 80AC61CC 0C042F6F */  jal     func_8010BDBC              
/* 03530 80AC61D0 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 03534 80AC61D4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 03538 80AC61D8 54410008 */  bnel    $v0, $at, .L80AC61FC       
/* 0353C 80AC61DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03540 80AC61E0 0C041AF2 */  jal     func_80106BC8              
/* 03544 80AC61E4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 03548 80AC61E8 10400003 */  beq     $v0, $zero, .L80AC61F8     
/* 0354C 80AC61EC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 03550 80AC61F0 0C2B0E6B */  jal     func_80AC39AC              
/* 03554 80AC61F4 8FA50018 */  lw      $a1, 0x0018($sp)           
.L80AC61F8:
/* 03558 80AC61F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC61FC:
/* 0355C 80AC61FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03560 80AC6200 03E00008 */  jr      $ra                        
/* 03564 80AC6204 00000000 */  nop


