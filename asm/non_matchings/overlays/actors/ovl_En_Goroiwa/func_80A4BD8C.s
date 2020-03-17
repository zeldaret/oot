glabel func_80A4BD8C
/* 000EC 80A4BD8C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000F0 80A4BD90 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000F4 80A4BD94 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000F8 80A4BD98 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 000FC 80A4BD9C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00100 80A4BDA0 0C032D8A */  jal     func_800CB628              
/* 00104 80A4BDA4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00108 80A4BDA8 3C0180A5 */  lui     $at, %hi(D_80A4E064)       ## $at = 80A50000
/* 0010C 80A4BDAC C424E064 */  lwc1    $f4, %lo(D_80A4E064)($at)  
/* 00110 80A4BDB0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00114 80A4BDB4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00118 80A4BDB8 4604003C */  c.lt.s  $f0, $f4                   
/* 0011C 80A4BDBC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00120 80A4BDC0 45020004 */  bc1fl   .L80A4BDD4                 
/* 00124 80A4BDC4 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 00128 80A4BDC8 1000000D */  beq     $zero, $zero, .L80A4BE00   
/* 0012C 80A4BDCC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00130 80A4BDD0 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
.L80A4BDD4:
/* 00134 80A4BDD4 C4A80000 */  lwc1    $f8, 0x0000($a1)           ## 00000000
/* 00138 80A4BDD8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0013C 80A4BDDC 46003083 */  div.s   $f2, $f6, $f0              
/* 00140 80A4BDE0 46024282 */  mul.s   $f10, $f8, $f2             
/* 00144 80A4BDE4 E4CA0000 */  swc1    $f10, 0x0000($a2)          ## 00000000
/* 00148 80A4BDE8 C4B00004 */  lwc1    $f16, 0x0004($a1)          ## 00000004
/* 0014C 80A4BDEC 46028482 */  mul.s   $f18, $f16, $f2            
/* 00150 80A4BDF0 E4D20004 */  swc1    $f18, 0x0004($a2)          ## 00000004
/* 00154 80A4BDF4 C4A40008 */  lwc1    $f4, 0x0008($a1)           ## 00000008
/* 00158 80A4BDF8 46022182 */  mul.s   $f6, $f4, $f2              
/* 0015C 80A4BDFC E4C60008 */  swc1    $f6, 0x0008($a2)           ## 00000008
.L80A4BE00:
/* 00160 80A4BE00 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00164 80A4BE04 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00168 80A4BE08 03E00008 */  jr      $ra                        
/* 0016C 80A4BE0C 00000000 */  nop


