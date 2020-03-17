glabel func_80A0B0F4
/* 00CE4 80A0B0F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CE8 80A0B0F8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CEC 80A0B0FC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00CF0 80A0B100 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00CF4 80A0B104 848F015C */  lh      $t7, 0x015C($a0)           ## 0000015C
/* 00CF8 80A0B108 248400BC */  addiu   $a0, $a0, 0x00BC           ## $a0 = 000000BC
/* 00CFC 80A0B10C 3C05C42F */  lui     $a1, 0xC42F                ## $a1 = C42F0000
/* 00D00 80A0B110 11E00007 */  beq     $t7, $zero, .L80A0B130     
/* 00D04 80A0B114 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00D08 80A0B118 3C05442F */  lui     $a1, 0x442F                ## $a1 = 442F0000
/* 00D0C 80A0B11C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00D10 80A0B120 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00D14 80A0B124 3C074348 */  lui     $a3, 0x4348                ## $a3 = 43480000
/* 00D18 80A0B128 10000006 */  beq     $zero, $zero, .L80A0B144   
/* 00D1C 80A0B12C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A0B130:
/* 00D20 80A0B130 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00D24 80A0B134 3C074348 */  lui     $a3, 0x4348                ## $a3 = 43480000
/* 00D28 80A0B138 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00D2C 80A0B13C 248400BC */  addiu   $a0, $a0, 0x00BC           ## $a0 = 000000BC
/* 00D30 80A0B140 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A0B144:
/* 00D34 80A0B144 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D38 80A0B148 03E00008 */  jr      $ra                        
/* 00D3C 80A0B14C 00000000 */  nop


