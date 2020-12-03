.late_rodata
glabel D_809FAC74
 .word 0x3FE66666, 0x00000000, 0x00000000

.text
glabel EnDodongo_Draw
/* 02338 809FA588 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0233C 809FA58C AFB00038 */  sw      $s0, 0x0038($sp)           
/* 02340 809FA590 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02344 809FA594 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 02348 809FA598 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0234C 809FA59C 0C024F46 */  jal     func_80093D18              
/* 02350 809FA5A0 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 02354 809FA5A4 3C0F80A0 */  lui     $t7, %hi(func_809FA14C)    ## $t7 = 80A00000
/* 02358 809FA5A8 25EFA14C */  addiu   $t7, $t7, %lo(func_809FA14C) ## $t7 = 809FA14C
/* 0235C 809FA5AC 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 02360 809FA5B0 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 02364 809FA5B4 3C0780A0 */  lui     $a3, %hi(func_809FA0F8)    ## $a3 = 80A00000
/* 02368 809FA5B8 24E7A0F8 */  addiu   $a3, $a3, %lo(func_809FA0F8) ## $a3 = 809FA0F8
/* 0236C 809FA5BC AFB00014 */  sw      $s0, 0x0014($sp)           
/* 02370 809FA5C0 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 02374 809FA5C4 0C028572 */  jal     SkelAnime_DrawOpa
              
/* 02378 809FA5C8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 0237C 809FA5CC 86180312 */  lh      $t8, 0x0312($s0)           ## 00000312
/* 02380 809FA5D0 53000024 */  beql    $t8, $zero, .L809FA664     
/* 02384 809FA5D4 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 02388 809FA5D8 86090312 */  lh      $t1, 0x0312($s0)           ## 00000312
/* 0238C 809FA5DC 92190114 */  lbu     $t9, 0x0114($s0)           ## 00000114
/* 02390 809FA5E0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02394 809FA5E4 252AFFFF */  addiu   $t2, $t1, 0xFFFF           ## $t2 = FFFFFFFF
/* 02398 809FA5E8 A60A0312 */  sh      $t2, 0x0312($s0)           ## 00000312
/* 0239C 809FA5EC 86030312 */  lh      $v1, 0x0312($s0)           ## 00000312
/* 023A0 809FA5F0 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 023A4 809FA5F4 A2080114 */  sb      $t0, 0x0114($s0)           ## 00000114
/* 023A8 809FA5F8 306B0003 */  andi    $t3, $v1, 0x0003           ## $t3 = 00000000
/* 023AC 809FA5FC 15600018 */  bne     $t3, $zero, .L809FA660     
/* 023B0 809FA600 00031083 */  sra     $v0, $v1,  2               
/* 023B4 809FA604 00026080 */  sll     $t4, $v0,  2               
/* 023B8 809FA608 01826023 */  subu    $t4, $t4, $v0              
/* 023BC 809FA60C 3C0180A0 */  lui     $at, %hi(D_809FAC74)       ## $at = 80A00000
/* 023C0 809FA610 C424AC74 */  lwc1    $f4, %lo(D_809FAC74)($at)  
/* 023C4 809FA614 000C6080 */  sll     $t4, $t4,  2               
/* 023C8 809FA618 020C3021 */  addu    $a2, $s0, $t4              
/* 023CC 809FA61C 240D0096 */  addiu   $t5, $zero, 0x0096         ## $t5 = 00000096
/* 023D0 809FA620 240E0096 */  addiu   $t6, $zero, 0x0096         ## $t6 = 00000096
/* 023D4 809FA624 240F00FA */  addiu   $t7, $zero, 0x00FA         ## $t7 = 000000FA
/* 023D8 809FA628 241800EB */  addiu   $t8, $zero, 0x00EB         ## $t8 = 000000EB
/* 023DC 809FA62C 241900F5 */  addiu   $t9, $zero, 0x00F5         ## $t9 = 000000F5
/* 023E0 809FA630 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 023E4 809FA634 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 023E8 809FA638 AFB90020 */  sw      $t9, 0x0020($sp)           
/* 023EC 809FA63C AFB8001C */  sw      $t8, 0x001C($sp)           
/* 023F0 809FA640 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 023F4 809FA644 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 023F8 809FA648 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 023FC 809FA64C 24C60358 */  addiu   $a2, $a2, 0x0358           ## $a2 = 00000358
/* 02400 809FA650 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 02404 809FA654 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 02408 809FA658 0C00A850 */  jal     EffectSsEnIce_SpawnFlyingVec3f              
/* 0240C 809FA65C E7A40028 */  swc1    $f4, 0x0028($sp)           
.L809FA660:
/* 02410 809FA660 8FBF003C */  lw      $ra, 0x003C($sp)           
.L809FA664:
/* 02414 809FA664 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 02418 809FA668 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0241C 809FA66C 03E00008 */  jr      $ra                        
/* 02420 809FA670 00000000 */  nop
