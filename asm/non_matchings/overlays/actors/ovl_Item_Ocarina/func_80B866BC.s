.late_rodata
glabel D_80B8684C
 .word 0x3E051EB8

.text
glabel func_80B866BC
/* 0058C 80B866BC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00590 80B866C0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00594 80B866C4 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00598 80B866C8 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 0059C 80B866CC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005A0 80B866D0 0C00BD04 */  jal     func_8002F410              
/* 005A4 80B866D4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 005A8 80B866D8 1040000E */  beq     $v0, $zero, .L80B86714     
/* 005AC 80B866DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005B0 80B866E0 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 005B4 80B866E4 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 005B8 80B866E8 944E0EDC */  lhu     $t6, 0x0EDC($v0)           ## 8015F53C
/* 005BC 80B866EC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 005C0 80B866F0 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 005C4 80B866F4 35CF0008 */  ori     $t7, $t6, 0x0008           ## $t7 = 00000008
/* 005C8 80B866F8 0C00B2DD */  jal     Flags_SetSwitch
              
/* 005CC 80B866FC A44F0EDC */  sh      $t7, 0x0EDC($v0)           ## 8015F53C
/* 005D0 80B86700 3C1880B8 */  lui     $t8, %hi(func_80B8664C)    ## $t8 = 80B80000
/* 005D4 80B86704 2718664C */  addiu   $t8, $t8, %lo(func_80B8664C) ## $t8 = 80B8664C
/* 005D8 80B86708 AE18014C */  sw      $t8, 0x014C($s0)           ## 0000014C
/* 005DC 80B8670C 10000019 */  beq     $zero, $zero, .L80B86774   
/* 005E0 80B86710 AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
.L80B86714:
/* 005E4 80B86714 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 005E8 80B86718 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 005EC 80B8671C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 005F0 80B86720 2406000C */  addiu   $a2, $zero, 0x000C         ## $a2 = 0000000C
/* 005F4 80B86724 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 005F8 80B86728 0C00BD0D */  jal     func_8002F434              
/* 005FC 80B8672C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00600 80B86730 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 00604 80B86734 0331C821 */  addu    $t9, $t9, $s1              
/* 00608 80B86738 8F391DE4 */  lw      $t9, 0x1DE4($t9)           ## 00011DE4
/* 0060C 80B8673C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00610 80B86740 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00614 80B86744 3328000D */  andi    $t0, $t9, 0x000D           ## $t0 = 00000000
/* 00618 80B86748 1500000A */  bne     $t0, $zero, .L80B86774     
/* 0061C 80B8674C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00620 80B86750 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00624 80B86754 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 00628 80B86758 3C0180B8 */  lui     $at, %hi(D_80B8684C)       ## $at = 80B80000
/* 0062C 80B8675C C428684C */  lwc1    $f8, %lo(D_80B8684C)($at)  
/* 00630 80B86760 44060000 */  mfc1    $a2, $f0                   
/* 00634 80B86764 44070000 */  mfc1    $a3, $f0                   
/* 00638 80B86768 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 0063C 80B8676C 0C00A4F9 */  jal     func_800293E4              
/* 00640 80B86770 E7A80014 */  swc1    $f8, 0x0014($sp)           
.L80B86774:
/* 00644 80B86774 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00648 80B86778 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 0064C 80B8677C 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00650 80B86780 03E00008 */  jr      $ra                        
/* 00654 80B86784 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
