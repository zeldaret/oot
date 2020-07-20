.late_rodata
glabel D_8099C7E4
    .float 0.1

glabel D_8099C7E8
    .float 0.1

.text
glabel func_8099B020
/* 028A0 8099B020 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 028A4 8099B024 3C01809A */  lui     $at, %hi(D_8099C7E4)       ## $at = 809A0000
/* 028A8 8099B028 C424C7E4 */  lwc1    $f4, %lo(D_8099C7E4)($at)  
/* 028AC 8099B02C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 028B0 8099B030 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 028B4 8099B034 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 028B8 8099B038 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 028BC 8099B03C 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 028C0 8099B040 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 028C4 8099B044 3C054300 */  lui     $a1, 0x4300                ## $a1 = 43000000
/* 028C8 8099B048 248401A0 */  addiu   $a0, $a0, 0x01A0           ## $a0 = 000001A0
/* 028CC 8099B04C 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 028D0 8099B050 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 028D4 8099B054 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 028D8 8099B058 3C01809A */  lui     $at, %hi(D_8099C7E8)       ## $at = 809A0000
/* 028DC 8099B05C C426C7E8 */  lwc1    $f6, %lo(D_8099C7E8)($at)  
/* 028E0 8099B060 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 028E4 8099B064 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 028E8 8099B068 260401A4 */  addiu   $a0, $s0, 0x01A4           ## $a0 = 000001A4
/* 028EC 8099B06C 3C054300 */  lui     $a1, 0x4300                ## $a1 = 43000000
/* 028F0 8099B070 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 028F4 8099B074 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 028F8 8099B078 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 028FC 8099B07C 3C014300 */  lui     $at, 0x4300                ## $at = 43000000
/* 02900 8099B080 44815000 */  mtc1    $at, $f10                  ## $f10 = 128.00
/* 02904 8099B084 C60801A0 */  lwc1    $f8, 0x01A0($s0)           ## 000001A0
/* 02908 8099B088 26040194 */  addiu   $a0, $s0, 0x0194           ## $a0 = 00000194
/* 0290C 8099B08C 3C054000 */  lui     $a1, 0x4000                ## $a1 = 40000000
/* 02910 8099B090 4608503E */  c.le.s  $f10, $f8                  
/* 02914 8099B094 3C063C23 */  lui     $a2, 0x3C23                ## $a2 = 3C230000
/* 02918 8099B098 45020009 */  bc1fl   .L8099B0C0                 
/* 0291C 8099B09C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02920 8099B0A0 0C01DE80 */  jal     Math_ApproxF
              
/* 02924 8099B0A4 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3C23D70A
/* 02928 8099B0A8 3C063CA3 */  lui     $a2, 0x3CA3                ## $a2 = 3CA30000
/* 0292C 8099B0AC 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3CA3D70A
/* 02930 8099B0B0 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 02934 8099B0B4 0C01DE80 */  jal     Math_ApproxF
              
/* 02938 8099B0B8 3C054120 */  lui     $a1, 0x4120                ## $a1 = 41200000
/* 0293C 8099B0BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8099B0C0:
/* 02940 8099B0C0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02944 8099B0C4 24052025 */  addiu   $a1, $zero, 0x2025         ## $a1 = 00002025
/* 02948 8099B0C8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0294C 8099B0CC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02950 8099B0D0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02954 8099B0D4 03E00008 */  jr      $ra                        
/* 02958 8099B0D8 00000000 */  nop
