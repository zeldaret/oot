glabel func_80ACD1C4
/* 032A4 80ACD1C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 032A8 80ACD1C8 00057880 */  sll     $t7, $a1,  2               
/* 032AC 80ACD1CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 032B0 80ACD1D0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 032B4 80ACD1D4 008FC021 */  addu    $t8, $a0, $t7              
/* 032B8 80ACD1D8 8F021D8C */  lw      $v0, 0x1D8C($t8)           ## 00001D8C
/* 032BC 80ACD1DC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 032C0 80ACD1E0 94E61D74 */  lhu     $a2, 0x1D74($a3)           ## 00001D74
/* 032C4 80ACD1E4 94440004 */  lhu     $a0, 0x0004($v0)           ## 00000004
/* 032C8 80ACD1E8 0C01BE4F */  jal     func_8006F93C              
/* 032CC 80ACD1EC 94450002 */  lhu     $a1, 0x0002($v0)           ## 00000002
/* 032D0 80ACD1F0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 032D4 80ACD1F4 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 032D8 80ACD1F8 46000086 */  mov.s   $f2, $f0                   
/* 032DC 80ACD1FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 032E0 80ACD200 4600603C */  c.lt.s  $f12, $f0                  
/* 032E4 80ACD204 00000000 */  nop
/* 032E8 80ACD208 45020003 */  bc1fl   .L80ACD218                 
/* 032EC 80ACD20C 46001006 */  mov.s   $f0, $f2                   
/* 032F0 80ACD210 46006086 */  mov.s   $f2, $f12                  
/* 032F4 80ACD214 46001006 */  mov.s   $f0, $f2                   
.L80ACD218:
/* 032F8 80ACD218 03E00008 */  jr      $ra                        
/* 032FC 80ACD21C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


