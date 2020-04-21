glabel func_80A181D4
/* 00CC4 80A181D4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00CC8 80A181D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CCC 80A181DC 8C860118 */  lw      $a2, 0x0118($a0)           ## 00000118
/* 00CD0 80A181E0 3C0280A2 */  lui     $v0, %hi(func_80A19B9C)    ## $v0 = 80A20000
/* 00CD4 80A181E4 24429B9C */  addiu   $v0, $v0, %lo(func_80A19B9C) ## $v0 = 80A19B9C
/* 00CD8 80A181E8 8CCE0190 */  lw      $t6, 0x0190($a2)           ## 00000190
/* 00CDC 80A181EC 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00CE0 80A181F0 8C87011C */  lw      $a3, 0x011C($a0)           ## 0000011C
/* 00CE4 80A181F4 144E000E */  bne     $v0, $t6, .L80A18230       
/* 00CE8 80A181F8 2401FFEE */  addiu   $at, $zero, 0xFFEE         ## $at = FFFFFFEE
/* 00CEC 80A181FC 8CEF0190 */  lw      $t7, 0x0190($a3)           ## 00000190
/* 00CF0 80A18200 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00CF4 80A18204 544F000B */  bnel    $v0, $t7, .L80A18234       
/* 00CF8 80A18208 8CB80004 */  lw      $t8, 0x0004($a1)           ## 00000004
/* 00CFC 80A1820C AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00D00 80A18210 0C00B55C */  jal     Actor_Kill
              
/* 00D04 80A18214 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00D08 80A18218 0C00B55C */  jal     Actor_Kill
              
/* 00D0C 80A1821C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00D10 80A18220 0C00B55C */  jal     Actor_Kill
              
/* 00D14 80A18224 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00D18 80A18228 10000007 */  beq     $zero, $zero, .L80A18248   
/* 00D1C 80A1822C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A18230:
/* 00D20 80A18230 8CB80004 */  lw      $t8, 0x0004($a1)           ## 00000004
.L80A18234:
/* 00D24 80A18234 ACA00134 */  sw      $zero, 0x0134($a1)         ## 00000134
/* 00D28 80A18238 ACA20190 */  sw      $v0, 0x0190($a1)           ## 00000190
/* 00D2C 80A1823C 0301C824 */  and     $t9, $t8, $at              
/* 00D30 80A18240 ACB90004 */  sw      $t9, 0x0004($a1)           ## 00000004
/* 00D34 80A18244 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A18248:
/* 00D38 80A18248 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00D3C 80A1824C 03E00008 */  jr      $ra                        
/* 00D40 80A18250 00000000 */  nop
