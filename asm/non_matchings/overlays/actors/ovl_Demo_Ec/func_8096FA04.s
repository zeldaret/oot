glabel func_8096FA04
/* 02554 8096FA04 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02558 8096FA08 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0255C 8096FA0C 84820190 */  lh      $v0, 0x0190($a0)           ## 00000190
/* 02560 8096FA10 3C068097 */  lui     $a2, %hi(D_80970474)       ## $a2 = 80970000
/* 02564 8096FA14 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 02568 8096FA18 00027080 */  sll     $t6, $v0,  2               
/* 0256C 8096FA1C 00CE3021 */  addu    $a2, $a2, $t6              
/* 02570 8096FA20 8CC60474 */  lw      $a2, %lo(D_80970474)($a2)  
/* 02574 8096FA24 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02578 8096FA28 0C25B631 */  jal     func_8096D8C4              
/* 0257C 8096FA2C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02580 8096FA30 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02584 8096FA34 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02588 8096FA38 03E00008 */  jr      $ra                        
/* 0258C 8096FA3C 00000000 */  nop
