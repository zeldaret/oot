glabel func_80AB3A7C
/* 02CEC 80AB3A7C 3C0E8016 */  lui     $t6, %hi(gGameInfo)
/* 02CF0 80AB3A80 8DCEFA90 */  lw      $t6, %lo(gGameInfo)($t6)
/* 02CF4 80AB3A84 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02CF8 80AB3A88 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02CFC 80AB3A8C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02D00 80AB3A90 85CF1476 */  lh      $t7, 0x1476($t6)           ## 80161476
/* 02D04 80AB3A94 948202FE */  lhu     $v0, 0x02FE($a0)           ## 000002FE
/* 02D08 80AB3A98 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02D0C 80AB3A9C 25F80019 */  addiu   $t8, $t7, 0x0019           ## $t8 = 00000019
/* 02D10 80AB3AA0 3319FFFF */  andi    $t9, $t8, 0xFFFF           ## $t9 = 00000019
/* 02D14 80AB3AA4 0059082A */  slt     $at, $v0, $t9              
/* 02D18 80AB3AA8 1020000A */  beq     $at, $zero, .L80AB3AD4     
/* 02D1C 80AB3AAC 24A54BB4 */  addiu   $a1, $a1, 0x4BB4           ## $a1 = 06004BB4
/* 02D20 80AB3AB0 10C00010 */  beq     $a2, $zero, .L80AB3AF4     
/* 02D24 80AB3AB4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02D28 80AB3AB8 24A59238 */  addiu   $a1, $a1, 0x9238           ## $a1 = 06009238
/* 02D2C 80AB3ABC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02D30 80AB3AC0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02D34 80AB3AC4 0C2AC528 */  jal     func_80AB14A0              
/* 02D38 80AB3AC8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02D3C 80AB3ACC 1000000A */  beq     $zero, $zero, .L80AB3AF8   
/* 02D40 80AB3AD0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AB3AD4:
/* 02D44 80AB3AD4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02D48 80AB3AD8 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02D4C 80AB3ADC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02D50 80AB3AE0 0C2AC528 */  jal     func_80AB14A0              
/* 02D54 80AB3AE4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02D58 80AB3AE8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02D5C 80AB3AEC 2408001D */  addiu   $t0, $zero, 0x001D         ## $t0 = 0000001D
/* 02D60 80AB3AF0 AC880278 */  sw      $t0, 0x0278($a0)           ## 00000278
.L80AB3AF4:
/* 02D64 80AB3AF4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AB3AF8:
/* 02D68 80AB3AF8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02D6C 80AB3AFC 03E00008 */  jr      $ra                        
/* 02D70 80AB3B00 00000000 */  nop
