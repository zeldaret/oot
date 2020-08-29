.rdata
glabel D_808A15F4
    .asciz "Warning : 第２スタルフォス発生失敗\n"
    .balign 4

.late_rodata
glabel D_808A16B0
    .float 827.0
glabel D_808A16B4
    .float -3320.0

.text
glabel func_808A0EF4
/* 00334 808A0EF4 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00338 808A0EF8 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0033C 808A0EFC AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00340 808A0F00 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00344 808A0F04 3C05808A */  lui     $a1, %hi(func_808A0FB0)    ## $a1 = 808A0000
/* 00348 808A0F08 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0034C 808A0F0C 0C2282F0 */  jal     func_808A0BC0              
/* 00350 808A0F10 24A50FB0 */  addiu   $a1, $a1, %lo(func_808A0FB0) ## $a1 = 808A0FB0
/* 00354 808A0F14 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00358 808A0F18 0C00B342 */  jal     Flags_UnsetClear
              
/* 0035C 808A0F1C 82050003 */  lb      $a1, 0x0003($s0)           ## 00000003
/* 00360 808A0F20 3C014351 */  lui     $at, 0x4351                ## $at = 43510000
/* 00364 808A0F24 44812000 */  mtc1    $at, $f4                   ## $f4 = 209.00
/* 00368 808A0F28 3C01808A */  lui     $at, %hi(D_808A16B0)       ## $at = 808A0000
/* 0036C 808A0F2C C42616B0 */  lwc1    $f6, %lo(D_808A16B0)($at)  
/* 00370 808A0F30 3C01808A */  lui     $at, %hi(D_808A16B4)       ## $at = 808A0000
/* 00374 808A0F34 8FA60044 */  lw      $a2, 0x0044($sp)           
/* 00378 808A0F38 C42816B4 */  lwc1    $f8, %lo(D_808A16B4)($at)  
/* 0037C 808A0F3C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00380 808A0F40 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 00384 808A0F44 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00388 808A0F48 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 0038C 808A0F4C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00390 808A0F50 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00394 808A0F54 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00398 808A0F58 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 0039C 808A0F5C E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 003A0 808A0F60 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 003A4 808A0F64 0C00C916 */  jal     Actor_SpawnAsChild
              
/* 003A8 808A0F68 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 003AC 808A0F6C 10400006 */  beq     $v0, $zero, .L808A0F88     
/* 003B0 808A0F70 3C04808A */  lui     $a0, %hi(D_808A15F4)       ## $a0 = 808A0000
/* 003B4 808A0F74 860F0018 */  lh      $t7, 0x0018($s0)           ## 00000018
/* 003B8 808A0F78 AE00011C */  sw      $zero, 0x011C($s0)         ## 0000011C
/* 003BC 808A0F7C 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 003C0 808A0F80 10000003 */  beq     $zero, $zero, .L808A0F90   
/* 003C4 808A0F84 A6180018 */  sh      $t8, 0x0018($s0)           ## 00000018
.L808A0F88:
/* 003C8 808A0F88 0C00084C */  jal     osSyncPrintf
              
/* 003CC 808A0F8C 248415F4 */  addiu   $a0, $a0, %lo(D_808A15F4)  ## $a0 = 808A15F4
.L808A0F90:
/* 003D0 808A0F90 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 003D4 808A0F94 0C00B33C */  jal     Flags_SetClear
              
/* 003D8 808A0F98 82050003 */  lb      $a1, 0x0003($s0)           ## 00000003
/* 003DC 808A0F9C 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 003E0 808A0FA0 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 003E4 808A0FA4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 003E8 808A0FA8 03E00008 */  jr      $ra                        
/* 003EC 808A0FAC 00000000 */  nop
