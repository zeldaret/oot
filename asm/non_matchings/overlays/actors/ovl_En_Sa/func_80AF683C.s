.late_rodata
glabel D_80AF750C
    .float -2220.0

.text
glabel func_80AF683C
/* 012DC 80AF683C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 012E0 80AF6840 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 012E4 80AF6844 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 012E8 80AF6848 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 012EC 80AF684C 3C0180AF */  lui     $at, %hi(D_80AF750C)       ## $at = 80AF0000
/* 012F0 80AF6850 C426750C */  lwc1    $f6, %lo(D_80AF750C)($at)  
/* 012F4 80AF6854 C444002C */  lwc1    $f4, 0x002C($v0)           ## 0000002C
/* 012F8 80AF6858 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 012FC 80AF685C 4604303E */  c.le.s  $f6, $f4                   
/* 01300 80AF6860 00000000 */  nop
/* 01304 80AF6864 4503001C */  bc1tl   .L80AF68D8                 
/* 01308 80AF6868 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0130C 80AF686C 0C02FF21 */  jal     Gameplay_InCsMode              
/* 01310 80AF6870 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01314 80AF6874 14400017 */  bne     $v0, $zero, .L80AF68D4     
/* 01318 80AF6878 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0131C 80AF687C 3C020200 */  lui     $v0, 0x0200                ## $v0 = 02000000
/* 01320 80AF6880 24425730 */  addiu   $v0, $v0, 0x5730           ## $v0 = 02005730
/* 01324 80AF6884 00027100 */  sll     $t6, $v0,  4               
/* 01328 80AF6888 000E7F02 */  srl     $t7, $t6, 28               
/* 0132C 80AF688C 000FC080 */  sll     $t8, $t7,  2               
/* 01330 80AF6890 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 01334 80AF6894 0338C821 */  addu    $t9, $t9, $t8              
/* 01338 80AF6898 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 0133C 80AF689C 8F396FA8 */  lw      $t9, 0x6FA8($t9)           ## 80166FA8
/* 01340 80AF68A0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01344 80AF68A4 00414024 */  and     $t0, $v0, $at              
/* 01348 80AF68A8 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0134C 80AF68AC 03284821 */  addu    $t1, $t9, $t0              
/* 01350 80AF68B0 01215021 */  addu    $t2, $t1, $at              
/* 01354 80AF68B4 ACAA1D68 */  sw      $t2, 0x1D68($a1)           ## 00001D68
/* 01358 80AF68B8 8FAD0018 */  lw      $t5, 0x0018($sp)           
/* 0135C 80AF68BC 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 01360 80AF68C0 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 01364 80AF68C4 3C0C80AF */  lui     $t4, %hi(func_80AF68E4)    ## $t4 = 80AF0000
/* 01368 80AF68C8 A02BFA74 */  sb      $t3, -0x058C($at)          ## 8015FA74
/* 0136C 80AF68CC 258C68E4 */  addiu   $t4, $t4, %lo(func_80AF68E4) ## $t4 = 80AF68E4
/* 01370 80AF68D0 ADAC0190 */  sw      $t4, 0x0190($t5)           ## 00000190
.L80AF68D4:
/* 01374 80AF68D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF68D8:
/* 01378 80AF68D8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0137C 80AF68DC 03E00008 */  jr      $ra                        
/* 01380 80AF68E0 00000000 */  nop
