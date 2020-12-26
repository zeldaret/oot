.late_rodata
glabel D_8099C748
    .float 0.001

glabel D_8099C74C
    .float 0.001

glabel D_8099C750
    .float 0.001

glabel D_8099C754
    .float 0.1

.text
glabel func_80999428
/* 00CA8 80999428 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00CAC 8099942C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00CB0 80999430 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00CB4 80999434 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00CB8 80999438 94820192 */  lhu     $v0, 0x0192($a0)           ## 00000192
/* 00CBC 8099943C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00CC0 80999440 3C053D4C */  lui     $a1, 0x3D4C                ## $a1 = 3D4C0000
/* 00CC4 80999444 1040002B */  beq     $v0, $zero, .L809994F4     
/* 00CC8 80999448 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00CCC 8099944C A48E0192 */  sh      $t6, 0x0192($a0)           ## 00000192
/* 00CD0 80999450 3C01809A */  lui     $at, %hi(D_8099C748)       ## $at = 809A0000
/* 00CD4 80999454 C424C748 */  lwc1    $f4, %lo(D_8099C748)($at)  
/* 00CD8 80999458 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 00CDC 8099945C 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 00CE0 80999460 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 00CE4 80999464 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 00CE8 80999468 24840050 */  addiu   $a0, $a0, 0x0050           ## $a0 = 00000050
/* 00CEC 8099946C 34A563F1 */  ori     $a1, $a1, 0x63F1           ## $a1 = 3D4C63F1
/* 00CF0 80999470 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 00CF4 80999474 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00CF8 80999478 3C01809A */  lui     $at, %hi(D_8099C74C)       ## $at = 809A0000
/* 00CFC 8099947C C426C74C */  lwc1    $f6, %lo(D_8099C74C)($at)  
/* 00D00 80999480 3C053D9D */  lui     $a1, 0x3D9D                ## $a1 = 3D9D0000
/* 00D04 80999484 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 00D08 80999488 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 00D0C 8099948C 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 00D10 80999490 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 00D14 80999494 34A5B22D */  ori     $a1, $a1, 0xB22D           ## $a1 = 3D9DB22D
/* 00D18 80999498 26040054 */  addiu   $a0, $s0, 0x0054           ## $a0 = 00000054
/* 00D1C 8099949C 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 00D20 809994A0 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00D24 809994A4 3C01809A */  lui     $at, %hi(D_8099C750)       ## $at = 809A0000
/* 00D28 809994A8 C428C750 */  lwc1    $f8, %lo(D_8099C750)($at)  
/* 00D2C 809994AC 3C053DB8 */  lui     $a1, 0x3DB8                ## $a1 = 3DB80000
/* 00D30 809994B0 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 00D34 809994B4 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 00D38 809994B8 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 00D3C 809994BC 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 00D40 809994C0 34A551EC */  ori     $a1, $a1, 0x51EC           ## $a1 = 3DB851EC
/* 00D44 809994C4 26040058 */  addiu   $a0, $s0, 0x0058           ## $a0 = 00000058
/* 00D48 809994C8 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 00D4C 809994CC E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00D50 809994D0 3C01809A */  lui     $at, %hi(D_8099C754)       ## $at = 809A0000
/* 00D54 809994D4 C42AC754 */  lwc1    $f10, %lo(D_8099C754)($at) 
/* 00D58 809994D8 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 00D5C 809994DC 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 00D60 809994E0 260401A8 */  addiu   $a0, $s0, 0x01A8           ## $a0 = 000001A8
/* 00D64 809994E4 3C05437F */  lui     $a1, 0x437F                ## $a1 = 437F0000
/* 00D68 809994E8 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 00D6C 809994EC 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 00D70 809994F0 E7AA0010 */  swc1    $f10, 0x0010($sp)          
.L809994F4:
/* 00D74 809994F4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00D78 809994F8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00D7C 809994FC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00D80 80999500 03E00008 */  jr      $ra                        
/* 00D84 80999504 00000000 */  nop
