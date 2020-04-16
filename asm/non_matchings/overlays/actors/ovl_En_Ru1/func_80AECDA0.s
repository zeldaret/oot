.late_rodata
glabel D_80AF1BE8
    .float -10000.0

.text
glabel func_80AECDA0
/* 02190 80AECDA0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02194 80AECDA4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02198 80AECDA8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0219C 80AECDAC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 021A0 80AECDB0 24A50E54 */  addiu   $a1, $a1, 0x0E54           ## $a1 = 06000E54
/* 021A4 80AECDB4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 021A8 80AECDB8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 021AC 80AECDBC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 021B0 80AECDC0 0C2BAC99 */  jal     func_80AEB264              
/* 021B4 80AECDC4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 021B8 80AECDC8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 021BC 80AECDCC 240E000F */  addiu   $t6, $zero, 0x000F         ## $t6 = 0000000F
/* 021C0 80AECDD0 3C0180AF */  lui     $at, %hi(D_80AF1BE8)       ## $at = 80AF0000
/* 021C4 80AECDD4 AC8E0264 */  sw      $t6, 0x0264($a0)           ## 00000264
/* 021C8 80AECDD8 C4241BE8 */  lwc1    $f4, %lo(D_80AF1BE8)($at)  
/* 021CC 80AECDDC 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 021D0 80AECDE0 0C2BABA9 */  jal     func_80AEAEA4              
/* 021D4 80AECDE4 E48400BC */  swc1    $f4, 0x00BC($a0)           ## 000000BC
/* 021D8 80AECDE8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 021DC 80AECDEC 0C2BABAE */  jal     func_80AEAEB8              
/* 021E0 80AECDF0 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 021E4 80AECDF4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 021E8 80AECDF8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 021EC 80AECDFC 03E00008 */  jr      $ra                        
/* 021F0 80AECE00 00000000 */  nop
