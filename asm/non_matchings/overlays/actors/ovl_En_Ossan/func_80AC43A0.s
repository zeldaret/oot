glabel func_80AC43A0
/* 01700 80AC43A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01704 80AC43A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01708 80AC43A8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0170C 80AC43AC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01710 80AC43B0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 01714 80AC43B4 0C042F6F */  jal     func_8010BDBC              
/* 01718 80AC43B8 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 0171C 80AC43BC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01720 80AC43C0 54410008 */  bnel    $v0, $at, .L80AC43E4       
/* 01724 80AC43C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01728 80AC43C8 0C041AF2 */  jal     func_80106BC8              
/* 0172C 80AC43CC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01730 80AC43D0 10400003 */  beq     $v0, $zero, .L80AC43E0     
/* 01734 80AC43D4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01738 80AC43D8 0C2B0E6B */  jal     func_80AC39AC              
/* 0173C 80AC43DC 8FA50018 */  lw      $a1, 0x0018($sp)           
.L80AC43E0:
/* 01740 80AC43E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC43E4:
/* 01744 80AC43E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01748 80AC43E8 03E00008 */  jr      $ra                        
/* 0174C 80AC43EC 00000000 */  nop
