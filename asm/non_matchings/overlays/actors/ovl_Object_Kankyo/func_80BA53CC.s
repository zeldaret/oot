.late_rodata
glabel D_80BA5CCC
    .float 0.1

.text
glabel func_80BA53CC
/* 0292C 80BA53CC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 02930 80BA53D0 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 02934 80BA53D4 AFB50030 */  sw      $s5, 0x0030($sp)           
/* 02938 80BA53D8 AFB4002C */  sw      $s4, 0x002C($sp)           
/* 0293C 80BA53DC AFB30028 */  sw      $s3, 0x0028($sp)           
/* 02940 80BA53E0 AFB20024 */  sw      $s2, 0x0024($sp)           
/* 02944 80BA53E4 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 02948 80BA53E8 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 0294C 80BA53EC F7B40010 */  sdc1    $f20, 0x0010($sp)          
/* 02950 80BA53F0 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 02954 80BA53F4 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 02958 80BA53F8 0080A825 */  or      $s5, $a0, $zero            ## $s5 = 00000000
/* 0295C 80BA53FC 11C00021 */  beq     $t6, $zero, .L80BA5484     
/* 02960 80BA5400 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 02964 80BA5404 3C0180BA */  lui     $at, %hi(D_80BA5CCC)       ## $at = 80BA0000
/* 02968 80BA5408 C4345CCC */  lwc1    $f20, %lo(D_80BA5CCC)($at) 
/* 0296C 80BA540C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02970 80BA5410 24130054 */  addiu   $s3, $zero, 0x0054         ## $s3 = 00000054
/* 02974 80BA5414 24120002 */  addiu   $s2, $zero, 0x0002         ## $s2 = 00000002
.L80BA5418:
/* 02978 80BA5418 00027880 */  sll     $t7, $v0,  2               
/* 0297C 80BA541C 028FC021 */  addu    $t8, $s4, $t7              
/* 02980 80BA5420 8F031D90 */  lw      $v1, 0x1D90($t8)           ## 00001D90
/* 02984 80BA5424 50600013 */  beql    $v1, $zero, .L80BA5474     
/* 02988 80BA5428 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 0298C 80BA542C 94790000 */  lhu     $t9, 0x0000($v1)           ## 00000000
/* 02990 80BA5430 56590010 */  bnel    $s2, $t9, .L80BA5474       
/* 02994 80BA5434 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000002
/* 02998 80BA5438 02330019 */  multu   $s1, $s3                   
/* 0299C 80BA543C 00004012 */  mflo    $t0                        
/* 029A0 80BA5440 02A88021 */  addu    $s0, $s5, $t0              
/* 029A4 80BA5444 C6040190 */  lwc1    $f4, 0x0190($s0)           ## 00000190
/* 029A8 80BA5448 4604A032 */  c.eq.s  $f20, $f4                  
/* 029AC 80BA544C 00000000 */  nop
/* 029B0 80BA5450 45020004 */  bc1fl   .L80BA5464                 
/* 029B4 80BA5454 4405A000 */  mfc1    $a1, $f20                  
/* 029B8 80BA5458 0C03CFCF */  jal     func_800F3F3C              
/* 029BC 80BA545C 2404000B */  addiu   $a0, $zero, 0x000B         ## $a0 = 0000000B
/* 029C0 80BA5460 4405A000 */  mfc1    $a1, $f20                  
.L80BA5464:
/* 029C4 80BA5464 4406A000 */  mfc1    $a2, $f20                  
/* 029C8 80BA5468 0C01E123 */  jal     Math_ApproachZeroF
              
/* 029CC 80BA546C 26040190 */  addiu   $a0, $s0, 0x0190           ## $a0 = 00000190
/* 029D0 80BA5470 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000003
.L80BA5474:
/* 029D4 80BA5474 323100FF */  andi    $s1, $s1, 0x00FF           ## $s1 = 00000003
/* 029D8 80BA5478 2A210006 */  slti    $at, $s1, 0x0006           
/* 029DC 80BA547C 1420FFE6 */  bne     $at, $zero, .L80BA5418     
/* 029E0 80BA5480 02201025 */  or      $v0, $s1, $zero            ## $v0 = 00000003
.L80BA5484:
/* 029E4 80BA5484 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 029E8 80BA5488 D7B40010 */  ldc1    $f20, 0x0010($sp)          
/* 029EC 80BA548C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 029F0 80BA5490 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 029F4 80BA5494 8FB20024 */  lw      $s2, 0x0024($sp)           
/* 029F8 80BA5498 8FB30028 */  lw      $s3, 0x0028($sp)           
/* 029FC 80BA549C 8FB4002C */  lw      $s4, 0x002C($sp)           
/* 02A00 80BA54A0 8FB50030 */  lw      $s5, 0x0030($sp)           
/* 02A04 80BA54A4 03E00008 */  jr      $ra                        
/* 02A08 80BA54A8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
