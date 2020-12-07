.late_rodata
glabel D_809BF560
 .word 0x3E490FDB

.text
glabel func_809BE180
/* 01520 809BE180 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01524 809BE184 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01528 809BE188 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0152C 809BE18C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01530 809BE190 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01534 809BE194 0C02927F */  jal     SkelAnime_Update
              
/* 01538 809BE198 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0153C 809BE19C 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
/* 01540 809BE1A0 10400003 */  beq     $v0, $zero, .L809BE1B0     
/* 01544 809BE1A4 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01548 809BE1A8 A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
/* 0154C 809BE1AC 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
.L809BE1B0:
/* 01550 809BE1B0 1440000C */  bne     $v0, $zero, .L809BE1E4     
/* 01554 809BE1B4 28410008 */  slti    $at, $v0, 0x0008           
/* 01558 809BE1B8 920F00AF */  lbu     $t7, 0x00AF($s0)           ## 000000AF
/* 0155C 809BE1BC 11E00005 */  beq     $t7, $zero, .L809BE1D4     
/* 01560 809BE1C0 00000000 */  nop
/* 01564 809BE1C4 0C26F529 */  jal     func_809BD4A4              
/* 01568 809BE1C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0156C 809BE1CC 10000023 */  beq     $zero, $zero, .L809BE25C   
/* 01570 809BE1D0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809BE1D4:
/* 01574 809BE1D4 0C26F596 */  jal     func_809BD658              
/* 01578 809BE1D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0157C 809BE1DC 1000001F */  beq     $zero, $zero, .L809BE25C   
/* 01580 809BE1E0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809BE1E4:
/* 01584 809BE1E4 1420001C */  bne     $at, $zero, .L809BE258     
/* 01588 809BE1E8 244AFFF8 */  addiu   $t2, $v0, 0xFFF8           ## $t2 = FFFFFFF8
/* 0158C 809BE1EC 82190194 */  lb      $t9, 0x0194($s0)           ## 00000194
/* 01590 809BE1F0 448A2000 */  mtc1    $t2, $f4                   ## $f4 = NaN
/* 01594 809BE1F4 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 01598 809BE1F8 00194240 */  sll     $t0, $t9,  9               
/* 0159C 809BE1FC 468021A0 */  cvt.s.w $f6, $f4                   
/* 015A0 809BE200 03084821 */  addu    $t1, $t8, $t0              
/* 015A4 809BE204 A60900B6 */  sh      $t1, 0x00B6($s0)           ## 000000B6
/* 015A8 809BE208 3C01809C */  lui     $at, %hi(D_809BF560)       ## $at = 809C0000
/* 015AC 809BE20C C428F560 */  lwc1    $f8, %lo(D_809BF560)($at)  
/* 015B0 809BE210 46083302 */  mul.s   $f12, $f6, $f8             
/* 015B4 809BE214 0C0400A4 */  jal     sinf
              
/* 015B8 809BE218 00000000 */  nop
/* 015BC 809BE21C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 015C0 809BE220 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 015C4 809BE224 C612000C */  lwc1    $f18, 0x000C($s0)          ## 0000000C
/* 015C8 809BE228 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015CC 809BE22C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 015D0 809BE230 46128100 */  add.s   $f4, $f16, $f18            
/* 015D4 809BE234 0C26F38F */  jal     func_809BCE3C              
/* 015D8 809BE238 E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 015DC 809BE23C 860B0196 */  lh      $t3, 0x0196($s0)           ## 00000196
/* 015E0 809BE240 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 015E4 809BE244 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015E8 809BE248 55610004 */  bnel    $t3, $at, .L809BE25C       
/* 015EC 809BE24C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 015F0 809BE250 0C26F472 */  jal     func_809BD1C8              
/* 015F4 809BE254 8FA50024 */  lw      $a1, 0x0024($sp)           
.L809BE258:
/* 015F8 809BE258 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809BE25C:
/* 015FC 809BE25C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01600 809BE260 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01604 809BE264 03E00008 */  jr      $ra                        
/* 01608 809BE268 00000000 */  nop
