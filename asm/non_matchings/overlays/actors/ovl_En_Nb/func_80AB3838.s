glabel func_80AB3838
/* 02AA8 80AB3838 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02AAC 80AB383C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02AB0 80AB3840 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02AB4 80AB3844 0C00BC65 */  jal     func_8002F194              
/* 02AB8 80AB3848 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02ABC 80AB384C 10400004 */  beq     $v0, $zero, .L80AB3860     
/* 02AC0 80AB3850 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02AC4 80AB3854 240E001B */  addiu   $t6, $zero, 0x001B         ## $t6 = 0000001B
/* 02AC8 80AB3858 10000010 */  beq     $zero, $zero, .L80AB389C   
/* 02ACC 80AB385C AC8E0278 */  sw      $t6, 0x0278($a0)           ## 00000278
.L80AB3860:
/* 02AD0 80AB3860 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 02AD4 80AB3864 3C198016 */  lui     $t9, %hi(gSaveContext+0xf24)
/* 02AD8 80AB3868 2409601D */  addiu   $t1, $zero, 0x601D         ## $t1 = 0000601D
/* 02ADC 80AB386C 35F80009 */  ori     $t8, $t7, 0x0009           ## $t8 = 00000009
/* 02AE0 80AB3870 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 02AE4 80AB3874 9739F584 */  lhu     $t9, %lo(gSaveContext+0xf24)($t9)
/* 02AE8 80AB3878 240A6024 */  addiu   $t2, $zero, 0x6024         ## $t2 = 00006024
/* 02AEC 80AB387C 33281000 */  andi    $t0, $t9, 0x1000           ## $t0 = 00000000
/* 02AF0 80AB3880 55000004 */  bnel    $t0, $zero, .L80AB3894     
/* 02AF4 80AB3884 A48A010E */  sh      $t2, 0x010E($a0)           ## 0000010E
/* 02AF8 80AB3888 10000002 */  beq     $zero, $zero, .L80AB3894   
/* 02AFC 80AB388C A489010E */  sh      $t1, 0x010E($a0)           ## 0000010E
/* 02B00 80AB3890 A48A010E */  sh      $t2, 0x010E($a0)           ## 0000010E
.L80AB3894:
/* 02B04 80AB3894 0C00BCBD */  jal     func_8002F2F4              
/* 02B08 80AB3898 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80AB389C:
/* 02B0C 80AB389C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02B10 80AB38A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02B14 80AB38A4 03E00008 */  jr      $ra                        
/* 02B18 80AB38A8 00000000 */  nop
