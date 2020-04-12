glabel func_8083DFE0
/* 0BDD0 8083DFE0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0BDD4 8083DFE4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0BDD8 8083DFE8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0BDDC 8083DFEC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0BDE0 8083DFF0 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 0BDE4 8083DFF4 84D80000 */  lh      $t8, 0x0000($a2)           ## 00000000
/* 0BDE8 8083DFF8 848E083C */  lh      $t6, 0x083C($a0)           ## 0000083C
/* 0BDEC 8083DFFC 80990843 */  lb      $t9, 0x0843($a0)           ## 00000843
/* 0BDF0 8083E000 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0BDF4 8083E004 01D81823 */  subu    $v1, $t6, $t8              
/* 0BDF8 8083E008 00031C00 */  sll     $v1, $v1, 16               
/* 0BDFC 8083E00C 1720001A */  bne     $t9, $zero, .L8083E078     
/* 0BE00 8083E010 00031C03 */  sra     $v1, $v1, 16               
/* 0BE04 8083E014 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 0BE08 8083E018 8D08FA90 */  lw      $t0, -0x0570($t0)          ## 8015FA90
/* 0BE0C 8083E01C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0BE10 8083E020 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 0BE14 8083E024 8509006E */  lh      $t1, 0x006E($t0)           ## 8016006E
/* 0BE18 8083E028 C4800838 */  lwc1    $f0, 0x0838($a0)           ## 00000838
/* 0BE1C 8083E02C 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 0BE20 8083E030 00000000 */  nop
/* 0BE24 8083E034 468021A0 */  cvt.s.w $f6, $f4                   
/* 0BE28 8083E038 46083083 */  div.s   $f2, $f6, $f8              
/* 0BE2C 8083E03C 46001307 */  neg.s   $f12, $f2                  
/* 0BE30 8083E040 460C003C */  c.lt.s  $f0, $f12                  
/* 0BE34 8083E044 00000000 */  nop
/* 0BE38 8083E048 45020004 */  bc1fl   .L8083E05C                 
/* 0BE3C 8083E04C 4600103C */  c.lt.s  $f2, $f0                   
/* 0BE40 8083E050 10000009 */  beq     $zero, $zero, .L8083E078   
/* 0BE44 8083E054 E48C0838 */  swc1    $f12, 0x0838($a0)          ## 00000838
/* 0BE48 8083E058 4600103C */  c.lt.s  $f2, $f0                   
.L8083E05C:
/* 0BE4C 8083E05C 00000000 */  nop
/* 0BE50 8083E060 45020004 */  bc1fl   .L8083E074                 
/* 0BE54 8083E064 46000306 */  mov.s   $f12, $f0                  
/* 0BE58 8083E068 10000002 */  beq     $zero, $zero, .L8083E074   
/* 0BE5C 8083E06C 46001306 */  mov.s   $f12, $f2                  
/* 0BE60 8083E070 46000306 */  mov.s   $f12, $f0                  
.L8083E074:
/* 0BE64 8083E074 E60C0838 */  swc1    $f12, 0x0838($s0)          ## 00000838
.L8083E078:
/* 0BE68 8083E078 04600003 */  bltz    $v1, .L8083E088            
/* 0BE6C 8083E07C 00031023 */  subu    $v0, $zero, $v1            
/* 0BE70 8083E080 10000001 */  beq     $zero, $zero, .L8083E088   
/* 0BE74 8083E084 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L8083E088:
/* 0BE78 8083E088 28416001 */  slti    $at, $v0, 0x6001           
/* 0BE7C 8083E08C 1420000A */  bne     $at, $zero, .L8083E0B8     
/* 0BE80 8083E090 26040838 */  addiu   $a0, $s0, 0x0838           ## $a0 = 00000838
/* 0BE84 8083E094 26040838 */  addiu   $a0, $s0, 0x0838           ## $a0 = 00000838
/* 0BE88 8083E098 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0BE8C 8083E09C 0C01DE80 */  jal     Math_ApproxF
              
/* 0BE90 8083E0A0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0BE94 8083E0A4 10400010 */  beq     $v0, $zero, .L8083E0E8     
/* 0BE98 8083E0A8 8FAA0028 */  lw      $t2, 0x0028($sp)           
/* 0BE9C 8083E0AC 854B0000 */  lh      $t3, 0x0000($t2)           ## 00000000
/* 0BEA0 8083E0B0 1000000D */  beq     $zero, $zero, .L8083E0E8   
/* 0BEA4 8083E0B4 A60B083C */  sh      $t3, 0x083C($s0)           ## 0000083C
.L8083E0B8:
/* 0BEA8 8083E0B8 8FAC0024 */  lw      $t4, 0x0024($sp)           
/* 0BEAC 8083E0BC 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 0BEB0 8083E0C0 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 0BEB4 8083E0C4 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 0BEB8 8083E0C8 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 0BEBC 8083E0CC 0C01DF1B */  jal     func_80077C6C              
/* 0BEC0 8083E0D0 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 0BEC4 8083E0D4 8FAD0028 */  lw      $t5, 0x0028($sp)           
/* 0BEC8 8083E0D8 2604083C */  addiu   $a0, $s0, 0x083C           ## $a0 = 0000083C
/* 0BECC 8083E0DC 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 0BED0 8083E0E0 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 0BED4 8083E0E4 85A50000 */  lh      $a1, 0x0000($t5)           ## 00000000
.L8083E0E8:
/* 0BED8 8083E0E8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0BEDC 8083E0EC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0BEE0 8083E0F0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0BEE4 8083E0F4 03E00008 */  jr      $ra                        
/* 0BEE8 8083E0F8 00000000 */  nop
