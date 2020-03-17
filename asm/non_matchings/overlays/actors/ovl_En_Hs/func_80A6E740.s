glabel func_80A6E740
/* 003A0 80A6E740 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 003A4 80A6E744 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 003A8 80A6E748 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 003AC 80A6E74C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003B0 80A6E750 0C00BD04 */  jal     func_8002F410              
/* 003B4 80A6E754 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 003B8 80A6E758 10400008 */  beq     $v0, $zero, .L80A6E77C     
/* 003BC 80A6E75C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003C0 80A6E760 3C0580A7 */  lui     $a1, %hi(func_80A6E630)    ## $a1 = 80A70000
/* 003C4 80A6E764 AE000118 */  sw      $zero, 0x0118($s0)         ## 00000118
/* 003C8 80A6E768 24A5E630 */  addiu   $a1, $a1, %lo(func_80A6E630) ## $a1 = 80A6E630
/* 003CC 80A6E76C 0C29B8E8 */  jal     func_80A6E3A0              
/* 003D0 80A6E770 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003D4 80A6E774 1000000A */  beq     $zero, $zero, .L80A6E7A0   
/* 003D8 80A6E778 960E02A8 */  lhu     $t6, 0x02A8($s0)           ## 000002A8
.L80A6E77C:
/* 003DC 80A6E77C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 003E0 80A6E780 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 003E4 80A6E784 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 003E8 80A6E788 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 003EC 80A6E78C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 003F0 80A6E790 2406001F */  addiu   $a2, $zero, 0x001F         ## $a2 = 0000001F
/* 003F4 80A6E794 0C00BD0D */  jal     func_8002F434              
/* 003F8 80A6E798 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 003FC 80A6E79C 960E02A8 */  lhu     $t6, 0x02A8($s0)           ## 000002A8
.L80A6E7A0:
/* 00400 80A6E7A0 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00404 80A6E7A4 A60F02A8 */  sh      $t7, 0x02A8($s0)           ## 000002A8
/* 00408 80A6E7A8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0040C 80A6E7AC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00410 80A6E7B0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00414 80A6E7B4 03E00008 */  jr      $ra                        
/* 00418 80A6E7B8 00000000 */  nop


