.late_rodata
glabel D_8099C79C
    .float 0.01

glabel D_8099C7A0
    .float 0.01

.text
glabel func_809998A4
/* 01124 809998A4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01128 809998A8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0112C 809998AC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01130 809998B0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01134 809998B4 C48601A0 */  lwc1    $f6, 0x01A0($a0)           ## 000001A0
/* 01138 809998B8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0113C 809998BC 00000000 */  nop
/* 01140 809998C0 46062032 */  c.eq.s  $f4, $f6                   
/* 01144 809998C4 00000000 */  nop
/* 01148 809998C8 45010003 */  bc1t    .L809998D8                 
/* 0114C 809998CC 00000000 */  nop
/* 01150 809998D0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01154 809998D4 24052025 */  addiu   $a1, $zero, 0x2025         ## $a1 = 00002025
.L809998D8:
/* 01158 809998D8 3C01809A */  lui     $at, %hi(D_8099C79C)       ## $at = 809A0000
/* 0115C 809998DC C428C79C */  lwc1    $f8, %lo(D_8099C79C)($at)  
/* 01160 809998E0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01164 809998E4 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01168 809998E8 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 0116C 809998EC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01170 809998F0 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 01174 809998F4 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 01178 809998F8 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 0117C 809998FC 248401A0 */  addiu   $a0, $a0, 0x01A0           ## $a0 = 000001A0
/* 01180 80999900 3C01809A */  lui     $at, %hi(D_8099C7A0)       ## $at = 809A0000
/* 01184 80999904 C42AC7A0 */  lwc1    $f10, %lo(D_8099C7A0)($at) 
/* 01188 80999908 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0118C 8099990C 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01190 80999910 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01194 80999914 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01198 80999918 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 0119C 8099991C E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 011A0 80999920 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 011A4 80999924 248401A4 */  addiu   $a0, $a0, 0x01A4           ## $a0 = 000001A4
/* 011A8 80999928 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 011AC 8099992C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 011B0 80999930 03E00008 */  jr      $ra                        
/* 011B4 80999934 00000000 */  nop
