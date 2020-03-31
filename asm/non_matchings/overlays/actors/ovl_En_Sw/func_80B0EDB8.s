glabel func_80B0EDB8
/* 03008 80B0EDB8 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 0300C 80B0EDBC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03010 80B0EDC0 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 03014 80B0EDC4 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 03018 80B0EDC8 AFA60050 */  sw      $a2, 0x0050($sp)           
/* 0301C 80B0EDCC AFA70054 */  sw      $a3, 0x0054($sp)           
/* 03020 80B0EDD0 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 03024 80B0EDD4 3C0680B1 */  lui     $a2, %hi(D_80B0F1C0)       ## $a2 = 80B10000
/* 03028 80B0EDD8 24C6F1C0 */  addiu   $a2, $a2, %lo(D_80B0F1C0)  ## $a2 = 80B0F1C0
/* 0302C 80B0EDDC 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 03030 80B0EDE0 24070885 */  addiu   $a3, $zero, 0x0885         ## $a3 = 00000885
/* 03034 80B0EDE4 0C031AB1 */  jal     func_800C6AC4              
/* 03038 80B0EDE8 AFA50040 */  sw      $a1, 0x0040($sp)           
/* 0303C 80B0EDEC 87A30056 */  lh      $v1, 0x0056($sp)           
/* 03040 80B0EDF0 3C0180B1 */  lui     $at, %hi(D_80B0F2B4)       ## $at = 80B10000
/* 03044 80B0EDF4 C424F2B4 */  lwc1    $f4, %lo(D_80B0F2B4)($at)  
/* 03048 80B0EDF8 44833000 */  mtc1    $v1, $f6                   ## $f6 = 0.00
/* 0304C 80B0EDFC 87AF0052 */  lh      $t7, 0x0052($sp)           
/* 03050 80B0EE00 8FA2004C */  lw      $v0, 0x004C($sp)           
/* 03054 80B0EE04 46803220 */  cvt.s.w $f8, $f6                   
/* 03058 80B0EE08 006FC023 */  subu    $t8, $v1, $t7              
/* 0305C 80B0EE0C 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 03060 80B0EE10 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 03064 80B0EE14 3C0180B1 */  lui     $at, %hi(D_80B0F2B8)       ## $at = 80B10000
/* 03068 80B0EE18 468084A0 */  cvt.s.w $f18, $f16                 
/* 0306C 80B0EE1C 8FB90040 */  lw      $t9, 0x0040($sp)           
/* 03070 80B0EE20 46082283 */  div.s   $f10, $f4, $f8             
/* 03074 80B0EE24 46125082 */  mul.s   $f2, $f10, $f18            
/* 03078 80B0EE28 46061032 */  c.eq.s  $f2, $f6                   
/* 0307C 80B0EE2C 00000000 */  nop
/* 03080 80B0EE30 45020003 */  bc1fl   .L80B0EE40                 
/* 03084 80B0EE34 4600110D */  trunc.w.s $f4, $f2                   
/* 03088 80B0EE38 C422F2B8 */  lwc1    $f2, %lo(D_80B0F2B8)($at)  
/* 0308C 80B0EE3C 4600110D */  trunc.w.s $f4, $f2                   
.L80B0EE40:
/* 03090 80B0EE40 90480003 */  lbu     $t0, 0x0003($v0)           ## 00000003
/* 03094 80B0EE44 8F2402C0 */  lw      $a0, 0x02C0($t9)           ## 000002C0
/* 03098 80B0EE48 90450000 */  lbu     $a1, 0x0000($v0)           ## 00000000
/* 0309C 80B0EE4C 440A2000 */  mfc1    $t2, $f4                   
/* 030A0 80B0EE50 90460001 */  lbu     $a2, 0x0001($v0)           ## 00000001
/* 030A4 80B0EE54 90470002 */  lbu     $a3, 0x0002($v0)           ## 00000002
/* 030A8 80B0EE58 000A5C00 */  sll     $t3, $t2, 16               
/* 030AC 80B0EE5C 000B6403 */  sra     $t4, $t3, 16               
/* 030B0 80B0EE60 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 030B4 80B0EE64 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 030B8 80B0EE68 0C024DC2 */  jal     Gfx_SetFog2              
/* 030BC 80B0EE6C AFA80010 */  sw      $t0, 0x0010($sp)           
/* 030C0 80B0EE70 8FAD0040 */  lw      $t5, 0x0040($sp)           
/* 030C4 80B0EE74 3C0680B1 */  lui     $a2, %hi(D_80B0F1D0)       ## $a2 = 80B10000
/* 030C8 80B0EE78 24C6F1D0 */  addiu   $a2, $a2, %lo(D_80B0F1D0)  ## $a2 = 80B0F1D0
/* 030CC 80B0EE7C ADA202C0 */  sw      $v0, 0x02C0($t5)           ## 000002C0
/* 030D0 80B0EE80 8FAE0048 */  lw      $t6, 0x0048($sp)           
/* 030D4 80B0EE84 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 030D8 80B0EE88 24070895 */  addiu   $a3, $zero, 0x0895         ## $a3 = 00000895
/* 030DC 80B0EE8C 0C031AD5 */  jal     func_800C6B54              
/* 030E0 80B0EE90 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 030E4 80B0EE94 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 030E8 80B0EE98 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 030EC 80B0EE9C 03E00008 */  jr      $ra                        
/* 030F0 80B0EEA0 00000000 */  nop


