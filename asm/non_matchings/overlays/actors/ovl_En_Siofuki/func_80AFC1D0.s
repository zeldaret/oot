.late_rodata
glabel D_80AFC878
    .float 0.01

.text
glabel func_80AFC1D0
/* 00650 80AFC1D0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00654 80AFC1D4 3C0180B0 */  lui     $at, %hi(D_80AFC878)       ## $at = 80B00000
/* 00658 80AFC1D8 C424C878 */  lwc1    $f4, %lo(D_80AFC878)($at)  
/* 0065C 80AFC1DC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00660 80AFC1E0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00664 80AFC1E4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00668 80AFC1E8 00807025 */  or      $t6, $a0, $zero            ## $t6 = 00000000
/* 0066C 80AFC1EC 8DC5017C */  lw      $a1, 0x017C($t6)           ## 0000017C
/* 00670 80AFC1F0 3C063F4C */  lui     $a2, 0x3F4C                ## $a2 = 3F4C0000
/* 00674 80AFC1F4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3F4CCCCD
/* 00678 80AFC1F8 24840180 */  addiu   $a0, $a0, 0x0180           ## $a0 = 00000180
/* 0067C 80AFC1FC 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 00680 80AFC200 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00684 80AFC204 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00688 80AFC208 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0068C 80AFC20C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00690 80AFC210 03E00008 */  jr      $ra                        
/* 00694 80AFC214 00000000 */  nop
