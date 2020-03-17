glabel func_809FBABC
/* 00AEC 809FBABC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00AF0 809FBAC0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00AF4 809FBAC4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00AF8 809FBAC8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00AFC 809FBACC 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00B00 809FBAD0 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 00B04 809FBAD4 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00B08 809FBAD8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B0C 809FBADC 3C0F80A0 */  lui     $t7, %hi(func_809FBB64)    ## $t7 = 80A00000
/* 00B10 809FBAE0 4606203C */  c.lt.s  $f4, $f6                   
/* 00B14 809FBAE4 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 00B18 809FBAE8 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 00B1C 809FBAEC 3C063F19 */  lui     $a2, 0x3F19                ## $a2 = 3F190000
/* 00B20 809FBAF0 45000010 */  bc1f    .L809FBB34                 
/* 00B24 809FBAF4 25EFBB64 */  addiu   $t7, $t7, %lo(func_809FBB64) ## $t7 = 809FBB64
/* 00B28 809FBAF8 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3F19999A
/* 00B2C 809FBAFC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00B30 809FBB00 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00B34 809FBB04 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00B38 809FBB08 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00B3C 809FBB0C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00B40 809FBB10 38A58000 */  xori    $a1, $a1, 0x8000           ## $a1 = FFFF8000
/* 00B44 809FBB14 00052C00 */  sll     $a1, $a1, 16               
/* 00B48 809FBB18 00052C03 */  sra     $a1, $a1, 16               
/* 00B4C 809FBB1C 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00B50 809FBB20 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 00B54 809FBB24 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00B58 809FBB28 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 00B5C 809FBB2C 10000003 */  beq     $zero, $zero, .L809FBB3C   
/* 00B60 809FBB30 8A190030 */  lwl     $t9, 0x0030($s0)           ## 00000030
.L809FBB34:
/* 00B64 809FBB34 AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
/* 00B68 809FBB38 8A190030 */  lwl     $t9, 0x0030($s0)           ## 00000030
.L809FBB3C:
/* 00B6C 809FBB3C 9A190033 */  lwr     $t9, 0x0033($s0)           ## 00000033
/* 00B70 809FBB40 AA1900B4 */  swl     $t9, 0x00B4($s0)           ## 000000B4
/* 00B74 809FBB44 BA1900B7 */  swr     $t9, 0x00B7($s0)           ## 000000B7
/* 00B78 809FBB48 96190034 */  lhu     $t9, 0x0034($s0)           ## 00000034
/* 00B7C 809FBB4C A61900B8 */  sh      $t9, 0x00B8($s0)           ## 000000B8
/* 00B80 809FBB50 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00B84 809FBB54 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00B88 809FBB58 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00B8C 809FBB5C 03E00008 */  jr      $ra                        
/* 00B90 809FBB60 00000000 */  nop


