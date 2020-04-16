glabel func_809AEB14
/* 00BF4 809AEB14 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00BF8 809AEB18 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00BFC 809AEB1C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C00 809AEB20 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00C04 809AEB24 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00C08 809AEB28 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 00C0C 809AEB2C 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00C10 809AEB30 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 00C14 809AEB34 A7A2002E */  sh      $v0, 0x002E($sp)           
/* 00C18 809AEB38 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00C1C 809AEB3C 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 00C20 809AEB40 C600017C */  lwc1    $f0, 0x017C($s0)           ## 0000017C
/* 00C24 809AEB44 87A5002E */  lh      $a1, 0x002E($sp)           
/* 00C28 809AEB48 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00C2C 809AEB4C 46002032 */  c.eq.s  $f4, $f0                   
/* 00C30 809AEB50 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00C34 809AEB54 24071F40 */  addiu   $a3, $zero, 0x1F40         ## $a3 = 00001F40
/* 00C38 809AEB58 3C014130 */  lui     $at, 0x4130                ## $at = 41300000
/* 00C3C 809AEB5C 45020008 */  bc1fl   .L809AEB80                 
/* 00C40 809AEB60 44814000 */  mtc1    $at, $f8                   ## $f8 = 11.00
/* 00C44 809AEB64 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00C48 809AEB68 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00C4C 809AEB6C 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00C50 809AEB70 44813000 */  mtc1    $at, $f6                   ## $f6 = 12.00
/* 00C54 809AEB74 1000001B */  beq     $zero, $zero, .L809AEBE4   
/* 00C58 809AEB78 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
/* 00C5C 809AEB7C 44814000 */  mtc1    $at, $f8                   ## $f8 = 12.00
.L809AEB80:
/* 00C60 809AEB80 00000000 */  nop
/* 00C64 809AEB84 4600403C */  c.lt.s  $f8, $f0                   
/* 00C68 809AEB88 00000000 */  nop
/* 00C6C 809AEB8C 45000015 */  bc1f    .L809AEBE4                 
/* 00C70 809AEB90 00000000 */  nop
/* 00C74 809AEB94 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 00C78 809AEB98 3C014130 */  lui     $at, 0x4130                ## $at = 41300000
/* 00C7C 809AEB9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C80 809AEBA0 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00C84 809AEBA4 15E00004 */  bne     $t7, $zero, .L809AEBB8     
/* 00C88 809AEBA8 00000000 */  nop
/* 00C8C 809AEBAC 44815000 */  mtc1    $at, $f10                  ## $f10 = 11.00
/* 00C90 809AEBB0 1000000C */  beq     $zero, $zero, .L809AEBE4   
/* 00C94 809AEBB4 E60A017C */  swc1    $f10, 0x017C($s0)          ## 0000017C
.L809AEBB8:
/* 00C98 809AEBB8 0C26B89C */  jal     func_809AE270              
/* 00C9C 809AEBBC 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00CA0 809AEBC0 87B8002E */  lh      $t8, 0x002E($sp)           
/* 00CA4 809AEBC4 86190032 */  lh      $t9, 0x0032($s0)           ## 00000032
/* 00CA8 809AEBC8 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00CAC 809AEBCC 57190003 */  bnel    $t8, $t9, .L809AEBDC       
/* 00CB0 809AEBD0 C6120080 */  lwc1    $f18, 0x0080($s0)          ## 00000080
/* 00CB4 809AEBD4 A6000258 */  sh      $zero, 0x0258($s0)         ## 00000258
/* 00CB8 809AEBD8 C6120080 */  lwc1    $f18, 0x0080($s0)          ## 00000080
.L809AEBDC:
/* 00CBC 809AEBDC E6100060 */  swc1    $f16, 0x0060($s0)          ## 00000060
/* 00CC0 809AEBE0 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
.L809AEBE4:
/* 00CC4 809AEBE4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00CC8 809AEBE8 26040164 */  addiu   $a0, $s0, 0x0164           ## $a0 = 00000164
/* 00CCC 809AEBEC 86080258 */  lh      $t0, 0x0258($s0)           ## 00000258
/* 00CD0 809AEBF0 55000004 */  bnel    $t0, $zero, .L809AEC04     
/* 00CD4 809AEBF4 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
/* 00CD8 809AEBF8 0C26B982 */  jal     func_809AE608              
/* 00CDC 809AEBFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CE0 809AEC00 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
.L809AEC04:
/* 00CE4 809AEC04 A60900B6 */  sh      $t1, 0x00B6($s0)           ## 000000B6
/* 00CE8 809AEC08 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00CEC 809AEC0C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00CF0 809AEC10 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00CF4 809AEC14 03E00008 */  jr      $ra                        
/* 00CF8 809AEC18 00000000 */  nop
