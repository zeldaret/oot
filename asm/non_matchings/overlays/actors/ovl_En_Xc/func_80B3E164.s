glabel func_80B3E164
/* 01F84 80B3E164 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01F88 80B3E168 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01F8C 80B3E16C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01F90 80B3E170 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 01F94 80B3E174 C4840268 */  lwc1    $f4, 0x0268($a0)           ## 00000268
/* 01F98 80B3E178 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01F9C 80B3E17C 44818000 */  mtc1    $at, $f16                  ## $f16 = 30.00
/* 01FA0 80B3E180 46062200 */  add.s   $f8, $f4, $f6              
/* 01FA4 80B3E184 240E0012 */  addiu   $t6, $zero, 0x0012         ## $t6 = 00000012
/* 01FA8 80B3E188 E4880268 */  swc1    $f8, 0x0268($a0)           ## 00000268
/* 01FAC 80B3E18C C48A0268 */  lwc1    $f10, 0x0268($a0)          ## 00000268
/* 01FB0 80B3E190 460A803E */  c.le.s  $f16, $f10                 
/* 01FB4 80B3E194 00000000 */  nop
/* 01FB8 80B3E198 45020004 */  bc1fl   .L80B3E1AC                 
/* 01FBC 80B3E19C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01FC0 80B3E1A0 0C2CF0E9 */  jal     func_80B3C3A4              
/* 01FC4 80B3E1A4 AC8E0260 */  sw      $t6, 0x0260($a0)           ## 00000260
/* 01FC8 80B3E1A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B3E1AC:
/* 01FCC 80B3E1AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01FD0 80B3E1B0 03E00008 */  jr      $ra                        
/* 01FD4 80B3E1B4 00000000 */  nop


