glabel func_809FB0A0
/* 000D0 809FB0A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000D4 809FB0A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000D8 809FB0A8 8C8F0154 */  lw      $t7, 0x0154($a0)           ## 00000154
/* 000DC 809FB0AC 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 000E0 809FB0B0 25CE0278 */  addiu   $t6, $t6, 0x0278           ## $t6 = 06000278
/* 000E4 809FB0B4 15CF0010 */  bne     $t6, $t7, .L809FB0F8       
/* 000E8 809FB0B8 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
/* 000EC 809FB0BC C4800164 */  lwc1    $f0, 0x0164($a0)           ## 00000164
/* 000F0 809FB0C0 44812000 */  mtc1    $at, $f4                   ## $f4 = 13.00
/* 000F4 809FB0C4 3C014198 */  lui     $at, 0x4198                ## $at = 41980000
/* 000F8 809FB0C8 46002032 */  c.eq.s  $f4, $f0                   
/* 000FC 809FB0CC 00000000 */  nop
/* 00100 809FB0D0 45010007 */  bc1t    .L809FB0F0                 
/* 00104 809FB0D4 00000000 */  nop
/* 00108 809FB0D8 44813000 */  mtc1    $at, $f6                   ## $f6 = 19.00
/* 0010C 809FB0DC 00000000 */  nop
/* 00110 809FB0E0 46003032 */  c.eq.s  $f6, $f0                   
/* 00114 809FB0E4 00000000 */  nop
/* 00118 809FB0E8 45020004 */  bc1fl   .L809FB0FC                 
/* 0011C 809FB0EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809FB0F0:
/* 00120 809FB0F0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00124 809FB0F4 240528D8 */  addiu   $a1, $zero, 0x28D8         ## $a1 = 000028D8
.L809FB0F8:
/* 00128 809FB0F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809FB0FC:
/* 0012C 809FB0FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00130 809FB100 03E00008 */  jr      $ra                        
/* 00134 809FB104 00000000 */  nop


