glabel func_80ACB0B0
/* 01190 80ACB0B0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01194 80ACB0B4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01198 80ACB0B8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0119C 80ACB0BC 0C2B28EE */  jal     func_80ACA3B8              
/* 011A0 80ACB0C0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 011A4 80ACB0C4 3C038012 */  lui     $v1, %hi(gBitFlags)
/* 011A8 80ACB0C8 24637120 */  addiu   $v1, %lo(gBitFlags)
/* 011AC 80ACB0CC 3C028016 */  lui     $v0, %hi(gSaveContext+0xa4)
/* 011B0 80ACB0D0 8C42E704 */  lw      $v0, %lo(gSaveContext+0xa4)($v0)
/* 011B4 80ACB0D4 8C6E0038 */  lw      $t6, 0x0038($v1)           ## 80127158
/* 011B8 80ACB0D8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 011BC 80ACB0DC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 011C0 80ACB0E0 01C27824 */  and     $t7, $t6, $v0              
/* 011C4 80ACB0E4 11E00009 */  beq     $t7, $zero, .L80ACB10C     
/* 011C8 80ACB0E8 3C0743B4 */  lui     $a3, 0x43B4                ## $a3 = 43B40000
/* 011CC 80ACB0EC 8C780030 */  lw      $t8, 0x0030($v1)           ## 80127150
/* 011D0 80ACB0F0 0302C824 */  and     $t9, $t8, $v0              
/* 011D4 80ACB0F4 13200003 */  beq     $t9, $zero, .L80ACB104     
/* 011D8 80ACB0F8 00000000 */  nop
/* 011DC 80ACB0FC 10000004 */  beq     $zero, $zero, .L80ACB110   
/* 011E0 80ACB100 24064031 */  addiu   $a2, $zero, 0x4031         ## $a2 = 00004031
.L80ACB104:
/* 011E4 80ACB104 10000002 */  beq     $zero, $zero, .L80ACB110   
/* 011E8 80ACB108 24064017 */  addiu   $a2, $zero, 0x4017         ## $a2 = 00004017
.L80ACB10C:
/* 011EC 80ACB10C 24064002 */  addiu   $a2, $zero, 0x4002         ## $a2 = 00004002
.L80ACB110:
/* 011F0 80ACB110 0C2B28FD */  jal     func_80ACA3F4              
/* 011F4 80ACB114 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 011F8 80ACB118 50400008 */  beql    $v0, $zero, .L80ACB13C     
/* 011FC 80ACB11C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01200 80ACB120 0C03D719 */  jal     func_800F5C64              
/* 01204 80ACB124 2404005A */  addiu   $a0, $zero, 0x005A         ## $a0 = 0000005A
/* 01208 80ACB128 8FA90020 */  lw      $t1, 0x0020($sp)           
/* 0120C 80ACB12C 3C0880AD */  lui     $t0, %hi(func_80ACB03C)    ## $t0 = 80AD0000
/* 01210 80ACB130 2508B03C */  addiu   $t0, $t0, %lo(func_80ACB03C) ## $t0 = 80ACB03C
/* 01214 80ACB134 AD28040C */  sw      $t0, 0x040C($t1)           ## 0000040C
/* 01218 80ACB138 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ACB13C:
/* 0121C 80ACB13C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01220 80ACB140 03E00008 */  jr      $ra                        
/* 01224 80ACB144 00000000 */  nop
