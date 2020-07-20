.late_rodata
glabel D_80AB8AF4
    .float 14000.0

glabel D_80AB8AF8
    .float 10000.0

.text
glabel func_80AB714C
/* 019CC 80AB714C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 019D0 80AB7150 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 019D4 80AB7154 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 019D8 80AB7158 8482025C */  lh      $v0, 0x025C($a0)           ## 0000025C
/* 019DC 80AB715C 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 019E0 80AB7160 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
/* 019E4 80AB7164 14410014 */  bne     $v0, $at, .L80AB71B8       
/* 019E8 80AB7168 A48E0260 */  sh      $t6, 0x0260($a0)           ## 00000260
/* 019EC 80AB716C 3C0180AC */  lui     $at, %hi(D_80AB8AF4)       ## $at = 80AC0000
/* 019F0 80AB7170 C4228AF4 */  lwc1    $f2, %lo(D_80AB8AF4)($at)  
/* 019F4 80AB7174 3C0180AC */  lui     $at, %hi(D_80AB8AF8)       ## $at = 80AC0000
/* 019F8 80AB7178 C4248AF8 */  lwc1    $f4, %lo(D_80AB8AF8)($at)  
/* 019FC 80AB717C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01A00 80AB7180 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 01A04 80AB7184 A48F0254 */  sh      $t7, 0x0254($a0)           ## 00000254
/* 01A08 80AB7188 E4820288 */  swc1    $f2, 0x0288($a0)           ## 00000288
/* 01A0C 80AB718C E4820280 */  swc1    $f2, 0x0280($a0)           ## 00000280
/* 01A10 80AB7190 E484026C */  swc1    $f4, 0x026C($a0)           ## 0000026C
/* 01A14 80AB7194 E4800284 */  swc1    $f0, 0x0284($a0)           ## 00000284
/* 01A18 80AB7198 E480028C */  swc1    $f0, 0x028C($a0)           ## 0000028C
/* 01A1C 80AB719C E4800270 */  swc1    $f0, 0x0270($a0)           ## 00000270
/* 01A20 80AB71A0 E4800274 */  swc1    $f0, 0x0274($a0)           ## 00000274
/* 01A24 80AB71A4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01A28 80AB71A8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01A2C 80AB71AC 24052813 */  addiu   $a1, $zero, 0x2813         ## $a1 = 00002813
/* 01A30 80AB71B0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01A34 80AB71B4 8482025C */  lh      $v0, 0x025C($a0)           ## 0000025C
.L80AB71B8:
/* 01A38 80AB71B8 1440000B */  bne     $v0, $zero, .L80AB71E8     
/* 01A3C 80AB71BC 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 01A40 80AB71C0 8C880004 */  lw      $t0, 0x0004($a0)           ## 00000004
/* 01A44 80AB71C4 8499008A */  lh      $t9, 0x008A($a0)           ## 0000008A
/* 01A48 80AB71C8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 01A4C 80AB71CC 3C0A80AB */  lui     $t2, %hi(func_80AB7204)    ## $t2 = 80AB0000
/* 01A50 80AB71D0 254A7204 */  addiu   $t2, $t2, %lo(func_80AB7204) ## $t2 = 80AB7204
/* 01A54 80AB71D4 01014824 */  and     $t1, $t0, $at              
/* 01A58 80AB71D8 A4980266 */  sh      $t8, 0x0266($a0)           ## 00000266
/* 01A5C 80AB71DC AC890004 */  sw      $t1, 0x0004($a0)           ## 00000004
/* 01A60 80AB71E0 AC8A0250 */  sw      $t2, 0x0250($a0)           ## 00000250
/* 01A64 80AB71E4 A49902E4 */  sh      $t9, 0x02E4($a0)           ## 000002E4
.L80AB71E8:
/* 01A68 80AB71E8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01A6C 80AB71EC 0C2AD6FE */  jal     func_80AB5BF8              
/* 01A70 80AB71F0 848602A2 */  lh      $a2, 0x02A2($a0)           ## 000002A2
/* 01A74 80AB71F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A78 80AB71F8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01A7C 80AB71FC 03E00008 */  jr      $ra                        
/* 01A80 80AB7200 00000000 */  nop
