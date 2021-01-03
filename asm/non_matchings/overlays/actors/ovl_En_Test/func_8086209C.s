glabel func_8086209C
/* 02A4C 8086209C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02A50 808620A0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02A54 808620A4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02A58 808620A8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02A5C 808620AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02A60 808620B0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02A64 808620B4 44050000 */  mfc1    $a1, $f0                   
/* 02A68 808620B8 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 02A6C 808620BC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02A70 808620C0 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 02A74 808620C4 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 02A78 808620C8 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 02A7C 808620CC 0C02927F */  jal     SkelAnime_Update
              
/* 02A80 808620D0 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 02A84 808620D4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02A88 808620D8 C60401B0 */  lwc1    $f4, 0x01B0($s0)           ## 000001B0
/* 02A8C 808620DC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02A90 808620E0 46040032 */  c.eq.s  $f0, $f4                   
/* 02A94 808620E4 00000000 */  nop
/* 02A98 808620E8 45020016 */  bc1fl   .L80862144                 
/* 02A9C 808620EC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02AA0 808620F0 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 02AA4 808620F4 A20007DE */  sb      $zero, 0x07DE($s0)         ## 000007DE
/* 02AA8 808620F8 0C21907A */  jal     func_808641E8              
/* 02AAC 808620FC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 02AB0 80862100 1440000F */  bne     $v0, $zero, .L80862140     
/* 02AB4 80862104 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 02AB8 80862108 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 02ABC 8086210C 44814000 */  mtc1    $at, $f8                   ## $f8 = 500.00
/* 02AC0 80862110 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02AC4 80862114 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02AC8 80862118 4608303C */  c.lt.s  $f6, $f8                   
/* 02ACC 8086211C 00000000 */  nop
/* 02AD0 80862120 45000005 */  bc1f    .L80862138                 
/* 02AD4 80862124 00000000 */  nop
/* 02AD8 80862128 0C217EAC */  jal     func_8085FAB0              
/* 02ADC 8086212C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02AE0 80862130 10000004 */  beq     $zero, $zero, .L80862144   
/* 02AE4 80862134 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80862138:
/* 02AE8 80862138 0C2189F1 */  jal     func_808627C4              
/* 02AEC 8086213C 8FA5002C */  lw      $a1, 0x002C($sp)           
.L80862140:
/* 02AF0 80862140 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80862144:
/* 02AF4 80862144 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02AF8 80862148 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02AFC 8086214C 03E00008 */  jr      $ra                        
/* 02B00 80862150 00000000 */  nop
