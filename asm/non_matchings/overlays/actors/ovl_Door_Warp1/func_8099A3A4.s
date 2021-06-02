.late_rodata
glabel D_8099C7BC
    .float 0.1

glabel D_8099C7C0
    .float 0.1

.text
glabel func_8099A3A4
/* 01C24 8099A3A4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01C28 8099A3A8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01C2C 8099A3AC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01C30 8099A3B0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01C34 8099A3B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01C38 8099A3B8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01C3C 8099A3BC 24052025 */  addiu   $a1, $zero, 0x2025         ## $a1 = 00002025
/* 01C40 8099A3C0 3C01809A */  lui     $at, %hi(D_8099C7BC)       ## $at = 809A0000
/* 01C44 8099A3C4 C424C7BC */  lwc1    $f4, %lo(D_8099C7BC)($at)  
/* 01C48 8099A3C8 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 01C4C 8099A3CC 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 01C50 8099A3D0 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 01C54 8099A3D4 3C05437F */  lui     $a1, 0x437F                ## $a1 = 437F0000
/* 01C58 8099A3D8 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 01C5C 8099A3DC 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 01C60 8099A3E0 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01C64 8099A3E4 3C01809A */  lui     $at, %hi(D_8099C7C0)       ## $at = 809A0000
/* 01C68 8099A3E8 C426C7C0 */  lwc1    $f6, %lo(D_8099C7C0)($at)  
/* 01C6C 8099A3EC 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 01C70 8099A3F0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 01C74 8099A3F4 260401A4 */  addiu   $a0, $s0, 0x01A4           ## $a0 = 000001A4
/* 01C78 8099A3F8 3C05437F */  lui     $a1, 0x437F                ## $a1 = 437F0000
/* 01C7C 8099A3FC 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 01C80 8099A400 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 01C84 8099A404 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01C88 8099A408 860201AC */  lh      $v0, 0x01AC($s0)           ## 000001AC
/* 01C8C 8099A40C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C90 8099A410 3C05809A */  lui     $a1, %hi(func_8099A46C)    ## $a1 = 809A0000
/* 01C94 8099A414 2841000A */  slti    $at, $v0, 0x000A           
/* 01C98 8099A418 10200002 */  beq     $at, $zero, .L8099A424     
/* 01C9C 8099A41C 244E0002 */  addiu   $t6, $v0, 0x0002           ## $t6 = 00000002
/* 01CA0 8099A420 A60E01AC */  sh      $t6, 0x01AC($s0)           ## 000001AC
.L8099A424:
/* 01CA4 8099A424 860201AE */  lh      $v0, 0x01AE($s0)           ## 000001AE
/* 01CA8 8099A428 28410078 */  slti    $at, $v0, 0x0078           
/* 01CAC 8099A42C 10200002 */  beq     $at, $zero, .L8099A438     
/* 01CB0 8099A430 244F0004 */  addiu   $t7, $v0, 0x0004           ## $t7 = 00000004
/* 01CB4 8099A434 A60F01AE */  sh      $t7, 0x01AE($s0)           ## 000001AE
.L8099A438:
/* 01CB8 8099A438 860201B0 */  lh      $v0, 0x01B0($s0)           ## 000001B0
/* 01CBC 8099A43C 284100E6 */  slti    $at, $v0, 0x00E6           
/* 01CC0 8099A440 10200003 */  beq     $at, $zero, .L8099A450     
/* 01CC4 8099A444 24580004 */  addiu   $t8, $v0, 0x0004           ## $t8 = 00000004
/* 01CC8 8099A448 10000003 */  beq     $zero, $zero, .L8099A458   
/* 01CCC 8099A44C A61801B0 */  sh      $t8, 0x01B0($s0)           ## 000001B0
.L8099A450:
/* 01CD0 8099A450 0C2661E0 */  jal     func_80998780              
/* 01CD4 8099A454 24A5A46C */  addiu   $a1, $a1, %lo(func_8099A46C) ## $a1 = 8099A46C
.L8099A458:
/* 01CD8 8099A458 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01CDC 8099A45C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01CE0 8099A460 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01CE4 8099A464 03E00008 */  jr      $ra                        
/* 01CE8 8099A468 00000000 */  nop
