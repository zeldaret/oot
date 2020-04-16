glabel func_80AE0BF8
/* 02EA8 80AE0BF8 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 02EAC 80AE0BFC 8FA40014 */  lw      $a0, 0x0014($sp)           
/* 02EB0 80AE0C00 AFA7000C */  sw      $a3, 0x000C($sp)           
/* 02EB4 80AE0C04 908E029D */  lbu     $t6, 0x029D($a0)           ## 0000029D
/* 02EB8 80AE0C08 11C0000E */  beq     $t6, $zero, .L80AE0C44     
/* 02EBC 80AE0C0C 00000000 */  nop
/* 02EC0 80AE0C10 8C8F02A4 */  lw      $t7, 0x02A4($a0)           ## 000002A4
/* 02EC4 80AE0C14 91F80006 */  lbu     $t8, 0x0006($t7)           ## 00000006
/* 02EC8 80AE0C18 10B8000A */  beq     $a1, $t8, .L80AE0C44       
/* 02ECC 80AE0C1C 00000000 */  nop
/* 02ED0 80AE0C20 8C880190 */  lw      $t0, 0x0190($a0)           ## 00000190
/* 02ED4 80AE0C24 3C1980AE */  lui     $t9, %hi(func_80ADF15C)    ## $t9 = 80AE0000
/* 02ED8 80AE0C28 2739F15C */  addiu   $t9, $t9, %lo(func_80ADF15C) ## $t9 = 80ADF15C
/* 02EDC 80AE0C2C 57280008 */  bnel    $t9, $t0, .L80AE0C50       
/* 02EE0 80AE0C30 848A001C */  lh      $t2, 0x001C($a0)           ## 0000001C
/* 02EE4 80AE0C34 84890198 */  lh      $t1, 0x0198($a0)           ## 00000198
/* 02EE8 80AE0C38 29210002 */  slti    $at, $t1, 0x0002           
/* 02EEC 80AE0C3C 54200004 */  bnel    $at, $zero, .L80AE0C50     
/* 02EF0 80AE0C40 848A001C */  lh      $t2, 0x001C($a0)           ## 0000001C
.L80AE0C44:
/* 02EF4 80AE0C44 10000009 */  beq     $zero, $zero, .L80AE0C6C   
/* 02EF8 80AE0C48 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
/* 02EFC 80AE0C4C 848A001C */  lh      $t2, 0x001C($a0)           ## 0000001C
.L80AE0C50:
/* 02F00 80AE0C50 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 02F04 80AE0C54 15410005 */  bne     $t2, $at, .L80AE0C6C       
/* 02F08 80AE0C58 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 02F0C 80AE0C5C 14A10003 */  bne     $a1, $at, .L80AE0C6C       
/* 02F10 80AE0C60 3C0B0600 */  lui     $t3, 0x0600                ## $t3 = 06000000
/* 02F14 80AE0C64 256B4638 */  addiu   $t3, $t3, 0x4638           ## $t3 = 06004638
/* 02F18 80AE0C68 ACCB0000 */  sw      $t3, 0x0000($a2)           ## 00000000
.L80AE0C6C:
/* 02F1C 80AE0C6C 24010013 */  addiu   $at, $zero, 0x0013         ## $at = 00000013
/* 02F20 80AE0C70 14A1001B */  bne     $a1, $at, .L80AE0CE0       
/* 02F24 80AE0C74 00000000 */  nop
/* 02F28 80AE0C78 908C0197 */  lbu     $t4, 0x0197($a0)           ## 00000197
/* 02F2C 80AE0C7C 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 02F30 80AE0C80 15800017 */  bne     $t4, $zero, .L80AE0CE0     
/* 02F34 80AE0C84 00000000 */  nop
/* 02F38 80AE0C88 8C650000 */  lw      $a1, 0x0000($v1)           ## 00000000
/* 02F3C 80AE0C8C 3C0EE700 */  lui     $t6, 0xE700                ## $t6 = E7000000
/* 02F40 80AE0C90 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 02F44 80AE0C94 24AD0008 */  addiu   $t5, $a1, 0x0008           ## $t5 = 00000008
/* 02F48 80AE0C98 AC6D0000 */  sw      $t5, 0x0000($v1)           ## 00000000
/* 02F4C 80AE0C9C ACA00004 */  sw      $zero, 0x0004($a1)         ## 00000004
/* 02F50 80AE0CA0 ACAE0000 */  sw      $t6, 0x0000($a1)           ## 00000000
/* 02F54 80AE0CA4 8C650000 */  lw      $a1, 0x0000($v1)           ## 00000000
/* 02F58 80AE0CA8 24AF0008 */  addiu   $t7, $a1, 0x0008           ## $t7 = 00000008
/* 02F5C 80AE0CAC AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 02F60 80AE0CB0 ACB80000 */  sw      $t8, 0x0000($a1)           ## 00000000
/* 02F64 80AE0CB4 908B029B */  lbu     $t3, 0x029B($a0)           ## 0000029B
/* 02F68 80AE0CB8 9088029A */  lbu     $t0, 0x029A($a0)           ## 0000029A
/* 02F6C 80AE0CBC 908F029C */  lbu     $t7, 0x029C($a0)           ## 0000029C
/* 02F70 80AE0CC0 908A029D */  lbu     $t2, 0x029D($a0)           ## 0000029D
/* 02F74 80AE0CC4 000B6400 */  sll     $t4, $t3, 16               
/* 02F78 80AE0CC8 00084E00 */  sll     $t1, $t0, 24               
/* 02F7C 80AE0CCC 012C6825 */  or      $t5, $t1, $t4              ## $t5 = 00000000
/* 02F80 80AE0CD0 000FC200 */  sll     $t8, $t7,  8               
/* 02F84 80AE0CD4 01B8C825 */  or      $t9, $t5, $t8              ## $t9 = FB000000
/* 02F88 80AE0CD8 032A5825 */  or      $t3, $t9, $t2              ## $t3 = FB000000
/* 02F8C 80AE0CDC ACAB0004 */  sw      $t3, 0x0004($a1)           ## 00000004
.L80AE0CE0:
/* 02F90 80AE0CE0 03E00008 */  jr      $ra                        
/* 02F94 80AE0CE4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
