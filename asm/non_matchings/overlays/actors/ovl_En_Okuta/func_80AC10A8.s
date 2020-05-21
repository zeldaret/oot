.late_rodata
glabel D_80AC2904
    .float 0.01

.text
glabel func_80AC10A8
/* 00A48 80AC10A8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A4C 80AC10AC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00A50 80AC10B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A54 80AC10B4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A58 80AC10B8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00A5C 80AC10BC 8E05000C */  lw      $a1, 0x000C($s0)           ## 0000000C
/* 00A60 80AC10C0 24840028 */  addiu   $a0, $a0, 0x0028           ## $a0 = 00000028
/* 00A64 80AC10C4 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00A68 80AC10C8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00A6C 80AC10CC 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 00A70 80AC10D0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00A74 80AC10D4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00A78 80AC10D8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00A7C 80AC10DC 1040000B */  beq     $v0, $zero, .L80AC110C     
/* 00A80 80AC10E0 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00A84 80AC10E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A88 80AC10E8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00A8C 80AC10EC 240538C5 */  addiu   $a1, $zero, 0x38C5         ## $a1 = 000038C5
/* 00A90 80AC10F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A94 80AC10F4 0C2B0224 */  jal     func_80AC0890              
/* 00A98 80AC10F8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00A9C 80AC10FC 0C2B02A2 */  jal     func_80AC0A88              
/* 00AA0 80AC1100 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AA4 80AC1104 10000016 */  beq     $zero, $zero, .L80AC1160   
/* 00AA8 80AC1108 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80AC110C:
/* 00AAC 80AC110C C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 00AB0 80AC1110 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.00
/* 00AB4 80AC1114 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00AB8 80AC1118 4600203E */  c.le.s  $f4, $f0                   
/* 00ABC 80AC111C 00000000 */  nop
/* 00AC0 80AC1120 4502000F */  bc1fl   .L80AC1160                 
/* 00AC4 80AC1124 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00AC8 80AC1128 44813000 */  mtc1    $at, $f6                   ## $f6 = 6.00
/* 00ACC 80AC112C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00AD0 80AC1130 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 00AD4 80AC1134 46003201 */  sub.s   $f8, $f6, $f0              
/* 00AD8 80AC1138 3C0180AC */  lui     $at, %hi(D_80AC2904)       ## $at = 80AC0000
/* 00ADC 80AC113C C4322904 */  lwc1    $f18, %lo(D_80AC2904)($at) 
/* 00AE0 80AC1140 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AE4 80AC1144 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00AE8 80AC1148 00000000 */  nop
/* 00AEC 80AC114C 46128102 */  mul.s   $f4, $f16, $f18            
/* 00AF0 80AC1150 44052000 */  mfc1    $a1, $f4                   
/* 00AF4 80AC1154 0C00B58B */  jal     Actor_SetScale
              
/* 00AF8 80AC1158 00000000 */  nop
/* 00AFC 80AC115C 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80AC1160:
/* 00B00 80AC1160 0C0295B2 */  jal     func_800A56C8              
/* 00B04 80AC1164 3C054000 */  lui     $a1, 0x4000                ## $a1 = 40000000
/* 00B08 80AC1168 10400003 */  beq     $v0, $zero, .L80AC1178     
/* 00B0C 80AC116C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B10 80AC1170 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00B14 80AC1174 240538C4 */  addiu   $a1, $zero, 0x38C4         ## $a1 = 000038C4
.L80AC1178:
/* 00B18 80AC1178 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00B1C 80AC117C 0C0295B2 */  jal     func_800A56C8              
/* 00B20 80AC1180 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 00B24 80AC1184 10400003 */  beq     $v0, $zero, .L80AC1194     
/* 00B28 80AC1188 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B2C 80AC118C 0C2B0269 */  jal     func_80AC09A4              
/* 00B30 80AC1190 8FA5002C */  lw      $a1, 0x002C($sp)           
.L80AC1194:
/* 00B34 80AC1194 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00B38 80AC1198 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00B3C 80AC119C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00B40 80AC11A0 03E00008 */  jr      $ra                        
/* 00B44 80AC11A4 00000000 */  nop
