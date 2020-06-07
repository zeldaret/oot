.rdata
glabel D_8013E26C
    .asciz "蓄電  MAGIC_NOW=%d (%d)\n"
    # Translation: Storage
    .balign 4

.late_rodata
glabel jtbl_8013E5F0
    .word L80087B04
    .word L80087B1C
    .word L80087BA0
    .word L80087BA0
    .word L80087DF8
    .word L80087BA0
    .word L80087E24
    .word L800879F4
    .word L80087A6C
    .word L80088208

.text
glabel Interface_UpdateMagicBar
/* AFEB5C 800879BC 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* AFEB60 800879C0 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* AFEB64 800879C4 846E13F0 */  lh    $t6, 0x13f0($v1)
/* AFEB68 800879C8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AFEB6C 800879CC AFBF001C */  sw    $ra, 0x1c($sp)
/* AFEB70 800879D0 25CFFFFF */  addiu $t7, $t6, -1
/* AFEB74 800879D4 2DE1000A */  sltiu $at, $t7, 0xa
/* AFEB78 800879D8 10200225 */  beqz  $at, .L80088270
/* AFEB7C 800879DC 000F7880 */   sll   $t7, $t7, 2
/* AFEB80 800879E0 3C018014 */  lui   $at, %hi(jtbl_8013E5F0)
/* AFEB84 800879E4 002F0821 */  addu  $at, $at, $t7
/* AFEB88 800879E8 8C2FE5F0 */  lw    $t7, %lo(jtbl_8013E5F0)($at)
/* AFEB8C 800879EC 01E00008 */  jr    $t7
/* AFEB90 800879F0 00000000 */   nop   
glabel L800879F4
/* AFEB94 800879F4 80620032 */  lb    $v0, 0x32($v1)
/* AFEB98 800879F8 846413F4 */  lh    $a0, 0x13f4($v1)
/* AFEB9C 800879FC 24180009 */  li    $t8, 9
/* AFEBA0 80087A00 00400821 */  addu  $at, $v0, $zero
/* AFEBA4 80087A04 00021080 */  sll   $v0, $v0, 2
/* AFEBA8 80087A08 00411023 */  subu  $v0, $v0, $at
/* AFEBAC 80087A0C 00021100 */  sll   $v0, $v0, 4
/* AFEBB0 80087A10 00021400 */  sll   $v0, $v0, 0x10
/* AFEBB4 80087A14 00021403 */  sra   $v0, $v0, 0x10
/* AFEBB8 80087A18 10440012 */  beq   $v0, $a0, .L80087A64
/* AFEBBC 80087A1C 0082082A */   slt   $at, $a0, $v0
/* AFEBC0 80087A20 10200009 */  beqz  $at, .L80087A48
/* AFEBC4 80087A24 248EFFF8 */   addiu $t6, $a0, -8
/* AFEBC8 80087A28 24980008 */  addiu $t8, $a0, 8
/* AFEBCC 80087A2C A47813F4 */  sh    $t8, 0x13f4($v1)
/* AFEBD0 80087A30 847913F4 */  lh    $t9, 0x13f4($v1)
/* AFEBD4 80087A34 0059082A */  slt   $at, $v0, $t9
/* AFEBD8 80087A38 5020020F */  beql  $at, $zero, .L80088278
/* AFEBDC 80087A3C 8FBF001C */   lw    $ra, 0x1c($sp)
/* AFEBE0 80087A40 1000020C */  b     .L80088274
/* AFEBE4 80087A44 A46213F4 */   sh    $v0, 0x13f4($v1)
.L80087A48:
/* AFEBE8 80087A48 A46E13F4 */  sh    $t6, 0x13f4($v1)
/* AFEBEC 80087A4C 846F13F4 */  lh    $t7, 0x13f4($v1)
/* AFEBF0 80087A50 004F082A */  slt   $at, $v0, $t7
/* AFEBF4 80087A54 54200208 */  bnezl $at, .L80088278
/* AFEBF8 80087A58 8FBF001C */   lw    $ra, 0x1c($sp)
/* AFEBFC 80087A5C 10000205 */  b     .L80088274
/* AFEC00 80087A60 A46213F4 */   sh    $v0, 0x13f4($v1)
.L80087A64:
/* AFEC04 80087A64 10000203 */  b     .L80088274
/* AFEC08 80087A68 A47813F0 */   sh    $t8, 0x13f0($v1)
glabel L80087A6C
/* AFEC0C 80087A6C 80790033 */  lb    $t9, 0x33($v1)
/* AFEC10 80087A70 8C6F135C */  lw    $t7, 0x135c($v1)
/* AFEC14 80087A74 272E0004 */  addiu $t6, $t9, 4
/* AFEC18 80087A78 15E00011 */  bnez  $t7, .L80087AC0
/* AFEC1C 80087A7C A06E0033 */   sb    $t6, 0x33($v1)
/* AFEC20 80087A80 8C781360 */  lw    $t8, 0x1360($v1)
/* AFEC24 80087A84 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AFEC28 80087A88 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AFEC2C 80087A8C 2B010004 */  slti  $at, $t8, 4
/* AFEC30 80087A90 1020000B */  beqz  $at, .L80087AC0
/* AFEC34 80087A94 2404401F */   li    $a0, 16415
/* AFEC38 80087A98 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* AFEC3C 80087A9C 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* AFEC40 80087AA0 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AFEC44 80087AA4 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AFEC48 80087AA8 AFB90014 */  sw    $t9, 0x14($sp)
/* AFEC4C 80087AAC 24060004 */  li    $a2, 4
/* AFEC50 80087AB0 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AFEC54 80087AB4 AFA70010 */   sw    $a3, 0x10($sp)
/* AFEC58 80087AB8 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* AFEC5C 80087ABC 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
.L80087AC0:
/* AFEC60 80087AC0 3C048014 */  lui   $a0, %hi(D_8013E26C) # $a0, 0x8014
/* AFEC64 80087AC4 2484E26C */  addiu $a0, %lo(D_8013E26C) # addiu $a0, $a0, -0x1d94
/* AFEC68 80087AC8 80650033 */  lb    $a1, 0x33($v1)
/* AFEC6C 80087ACC 0C00084C */  jal   osSyncPrintf
/* AFEC70 80087AD0 846613F6 */   lh    $a2, 0x13f6($v1)
/* AFEC74 80087AD4 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* AFEC78 80087AD8 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* AFEC7C 80087ADC 846213F6 */  lh    $v0, 0x13f6($v1)
/* AFEC80 80087AE0 806E0033 */  lb    $t6, 0x33($v1)
/* AFEC84 80087AE4 01C2082A */  slt   $at, $t6, $v0
/* AFEC88 80087AE8 542001E3 */  bnezl $at, .L80088278
/* AFEC8C 80087AEC 8FBF001C */   lw    $ra, 0x1c($sp)
/* AFEC90 80087AF0 846F13F2 */  lh    $t7, 0x13f2($v1)
/* AFEC94 80087AF4 A0620033 */  sb    $v0, 0x33($v1)
/* AFEC98 80087AF8 A46013F2 */  sh    $zero, 0x13f2($v1)
/* AFEC9C 80087AFC 100001DD */  b     .L80088274
/* AFECA0 80087B00 A46F13F0 */   sh    $t7, 0x13f0($v1)
glabel L80087B04
/* AFECA4 80087B04 24180002 */  li    $t8, 2
/* AFECA8 80087B08 24090002 */  li    $t1, 2
/* AFECAC 80087B0C A47813F0 */  sh    $t8, 0x13f0($v1)
/* AFECB0 80087B10 3C018012 */  lui   $at, %hi(sMagicBorderRatio) # $at, 0x8012
/* AFECB4 80087B14 100001D7 */  b     .L80088274
/* AFECB8 80087B18 A4295AD0 */   sh    $t1, %lo(sMagicBorderRatio)($at)
glabel L80087B1C
/* AFECBC 80087B1C 80790033 */  lb    $t9, 0x33($v1)
/* AFECC0 80087B20 240F0003 */  li    $t7, 3
/* AFECC4 80087B24 241800FF */  li    $t8, 255
/* AFECC8 80087B28 272EFFFE */  addiu $t6, $t9, -2
/* AFECCC 80087B2C A06E0033 */  sb    $t6, 0x33($v1)
/* AFECD0 80087B30 80620033 */  lb    $v0, 0x33($v1)
/* AFECD4 80087B34 241900FF */  li    $t9, 255
/* AFECD8 80087B38 5C40000C */  bgtzl $v0, .L80087B6C
/* AFECDC 80087B3C 846F13F8 */   lh    $t7, 0x13f8($v1)
/* AFECE0 80087B40 A0600033 */  sb    $zero, 0x33($v1)
/* AFECE4 80087B44 A46F13F0 */  sh    $t7, 0x13f0($v1)
/* AFECE8 80087B48 3C018012 */  lui   $at, %hi(sMagicBorderB) # $at, 0x8012
/* AFECEC 80087B4C A4385A30 */  sh    $t8, %lo(sMagicBorderB)($at)
/* AFECF0 80087B50 3C018012 */  lui   $at, %hi(sMagicBorderG) # $at, 0x8012
/* AFECF4 80087B54 A4395A2C */  sh    $t9, %lo(sMagicBorderG)($at)
/* AFECF8 80087B58 3C018012 */  lui   $at, %hi(sMagicBorderR) # $at, 0x8012
/* AFECFC 80087B5C 240E00FF */  li    $t6, 255
/* AFED00 80087B60 1000000F */  b     .L80087BA0
/* AFED04 80087B64 A42E5A28 */   sh    $t6, %lo(sMagicBorderR)($at)
/* AFED08 80087B68 846F13F8 */  lh    $t7, 0x13f8($v1)
.L80087B6C:
/* AFED0C 80087B6C 24180003 */  li    $t8, 3
/* AFED10 80087B70 241900FF */  li    $t9, 255
/* AFED14 80087B74 15E2000A */  bne   $t7, $v0, .L80087BA0
/* AFED18 80087B78 00000000 */   nop   
/* AFED1C 80087B7C A47813F0 */  sh    $t8, 0x13f0($v1)
/* AFED20 80087B80 3C018012 */  lui   $at, %hi(sMagicBorderB) # $at, 0x8012
/* AFED24 80087B84 A4395A30 */  sh    $t9, %lo(sMagicBorderB)($at)
/* AFED28 80087B88 3C018012 */  lui   $at, %hi(sMagicBorderG) # $at, 0x8012
/* AFED2C 80087B8C 240E00FF */  li    $t6, 255
/* AFED30 80087B90 A42E5A2C */  sh    $t6, %lo(sMagicBorderG)($at)
/* AFED34 80087B94 3C018012 */  lui   $at, %hi(sMagicBorderR) # $at, 0x8012
/* AFED38 80087B98 240F00FF */  li    $t7, 255
/* AFED3C 80087B9C A42F5A28 */  sh    $t7, %lo(sMagicBorderR)($at)
glabel L80087BA0
.L80087BA0:
/* AFED40 80087BA0 3C1F8012 */  lui   $ra, %hi(sMagicBorderStep) # $ra, 0x8012
/* AFED44 80087BA4 87FF5AD4 */  lh    $ra, %lo(sMagicBorderStep)($ra)
/* AFED48 80087BA8 3C028012 */  lui   $v0, %hi(sMagicBorderIndexes)
/* AFED4C 80087BAC 3C198012 */  lui   $t9, %hi(sMagicBorderColors) # $t9, 0x8012
/* AFED50 80087BB0 001FF840 */  sll   $ra, $ra, 1
/* AFED54 80087BB4 005F1021 */  addu  $v0, $v0, $ra
/* AFED58 80087BB8 84425AC8 */  lh    $v0, %lo(sMagicBorderIndexes)($v0)
/* AFED5C 80087BBC 27395AB0 */  addiu $t9, %lo(sMagicBorderColors) # addiu $t9, $t9, 0x5ab0
/* AFED60 80087BC0 3C068012 */  lui   $a2, %hi(sMagicBorderR) # $a2, 0x8012
/* AFED64 80087BC4 0002C080 */  sll   $t8, $v0, 2
/* AFED68 80087BC8 0302C023 */  subu  $t8, $t8, $v0
/* AFED6C 80087BCC 0018C040 */  sll   $t8, $t8, 1
/* AFED70 80087BD0 03192821 */  addu  $a1, $t8, $t9
/* AFED74 80087BD4 84AD0000 */  lh    $t5, ($a1)
/* AFED78 80087BD8 84C65A28 */  lh    $a2, %lo(sMagicBorderR)($a2)
/* AFED7C 80087BDC 3C088012 */  lui   $t0, %hi(sMagicBorderB) # $t0, 0x8012
/* AFED80 80087BE0 3C078012 */  lui   $a3, %hi(sMagicBorderG) # $a3, 0x8012
/* AFED84 80087BE4 00CD1823 */  subu  $v1, $a2, $t5
/* AFED88 80087BE8 84E75A2C */  lh    $a3, %lo(sMagicBorderG)($a3)
/* AFED8C 80087BEC 04600003 */  bltz  $v1, .L80087BFC
/* AFED90 80087BF0 85085A30 */   lh    $t0, %lo(sMagicBorderB)($t0)
/* AFED94 80087BF4 10000002 */  b     .L80087C00
/* AFED98 80087BF8 00602025 */   move  $a0, $v1
.L80087BFC:
/* AFED9C 80087BFC 00032023 */  negu  $a0, $v1
.L80087C00:
/* AFEDA0 80087C00 3C098012 */  lui   $t1, %hi(sMagicBorderRatio) # $t1, 0x8012
/* AFEDA4 80087C04 85295AD0 */  lh    $t1, %lo(sMagicBorderRatio)($t1)
/* AFEDA8 80087C08 84AC0002 */  lh    $t4, 2($a1)
/* AFEDAC 80087C0C 0089001A */  div   $zero, $a0, $t1
/* AFEDB0 80087C10 00001812 */  mflo  $v1
/* AFEDB4 80087C14 00031C00 */  sll   $v1, $v1, 0x10
/* AFEDB8 80087C18 15200002 */  bnez  $t1, .L80087C24
/* AFEDBC 80087C1C 00000000 */   nop   
/* AFEDC0 80087C20 0007000D */  break 7
.L80087C24:
/* AFEDC4 80087C24 2401FFFF */  li    $at, -1
/* AFEDC8 80087C28 15210004 */  bne   $t1, $at, .L80087C3C
/* AFEDCC 80087C2C 3C018000 */   lui   $at, 0x8000
/* AFEDD0 80087C30 14810002 */  bne   $a0, $at, .L80087C3C
/* AFEDD4 80087C34 00000000 */   nop   
/* AFEDD8 80087C38 0006000D */  break 6
.L80087C3C:
/* AFEDDC 80087C3C 00EC1023 */  subu  $v0, $a3, $t4
/* AFEDE0 80087C40 04400003 */  bltz  $v0, .L80087C50
/* AFEDE4 80087C44 00031C03 */   sra   $v1, $v1, 0x10
/* AFEDE8 80087C48 10000002 */  b     .L80087C54
/* AFEDEC 80087C4C 00402025 */   move  $a0, $v0
.L80087C50:
/* AFEDF0 80087C50 00022023 */  negu  $a0, $v0
.L80087C54:
/* AFEDF4 80087C54 0089001A */  div   $zero, $a0, $t1
/* AFEDF8 80087C58 84AB0004 */  lh    $t3, 4($a1)
/* AFEDFC 80087C5C 00005012 */  mflo  $t2
/* AFEE00 80087C60 000A5400 */  sll   $t2, $t2, 0x10
/* AFEE04 80087C64 15200002 */  bnez  $t1, .L80087C70
/* AFEE08 80087C68 00000000 */   nop   
/* AFEE0C 80087C6C 0007000D */  break 7
.L80087C70:
/* AFEE10 80087C70 2401FFFF */  li    $at, -1
/* AFEE14 80087C74 15210004 */  bne   $t1, $at, .L80087C88
/* AFEE18 80087C78 3C018000 */   lui   $at, 0x8000
/* AFEE1C 80087C7C 14810002 */  bne   $a0, $at, .L80087C88
/* AFEE20 80087C80 00000000 */   nop   
/* AFEE24 80087C84 0006000D */  break 6
.L80087C88:
/* AFEE28 80087C88 010B1023 */  subu  $v0, $t0, $t3
/* AFEE2C 80087C8C 04400003 */  bltz  $v0, .L80087C9C
/* AFEE30 80087C90 000A5403 */   sra   $t2, $t2, 0x10
/* AFEE34 80087C94 10000002 */  b     .L80087CA0
/* AFEE38 80087C98 00402025 */   move  $a0, $v0
.L80087C9C:
/* AFEE3C 80087C9C 00022023 */  negu  $a0, $v0
.L80087CA0:
/* AFEE40 80087CA0 00CD082A */  slt   $at, $a2, $t5
/* AFEE44 80087CA4 54200006 */  bnezl $at, .L80087CC0
/* AFEE48 80087CA8 00C37821 */   addu  $t7, $a2, $v1
/* AFEE4C 80087CAC 00C37023 */  subu  $t6, $a2, $v1
/* AFEE50 80087CB0 3C018012 */  lui   $at, %hi(sMagicBorderR) # $at, 0x8012
/* AFEE54 80087CB4 10000004 */  b     .L80087CC8
/* AFEE58 80087CB8 A42E5A28 */   sh    $t6, %lo(sMagicBorderR)($at)
/* AFEE5C 80087CBC 00C37821 */  addu  $t7, $a2, $v1
.L80087CC0:
/* AFEE60 80087CC0 3C018012 */  lui   $at, %hi(sMagicBorderR) # $at, 0x8012
/* AFEE64 80087CC4 A42F5A28 */  sh    $t7, %lo(sMagicBorderR)($at)
.L80087CC8:
/* AFEE68 80087CC8 00EC082A */  slt   $at, $a3, $t4
/* AFEE6C 80087CCC 54200006 */  bnezl $at, .L80087CE8
/* AFEE70 80087CD0 00EAC821 */   addu  $t9, $a3, $t2
/* AFEE74 80087CD4 00EAC023 */  subu  $t8, $a3, $t2
/* AFEE78 80087CD8 3C018012 */  lui   $at, %hi(sMagicBorderG) # $at, 0x8012
/* AFEE7C 80087CDC 10000004 */  b     .L80087CF0
/* AFEE80 80087CE0 A4385A2C */   sh    $t8, %lo(sMagicBorderG)($at)
/* AFEE84 80087CE4 00EAC821 */  addu  $t9, $a3, $t2
.L80087CE8:
/* AFEE88 80087CE8 3C018012 */  lui   $at, %hi(sMagicBorderG) # $at, 0x8012
/* AFEE8C 80087CEC A4395A2C */  sh    $t9, %lo(sMagicBorderG)($at)
.L80087CF0:
/* AFEE90 80087CF0 010B082A */  slt   $at, $t0, $t3
/* AFEE94 80087CF4 14200012 */  bnez  $at, .L80087D40
/* AFEE98 80087CF8 00000000 */   nop   
/* AFEE9C 80087CFC 0089001A */  div   $zero, $a0, $t1
/* AFEEA0 80087D00 15200002 */  bnez  $t1, .L80087D0C
/* AFEEA4 80087D04 00000000 */   nop   
/* AFEEA8 80087D08 0007000D */  break 7
.L80087D0C:
/* AFEEAC 80087D0C 2401FFFF */  li    $at, -1
/* AFEEB0 80087D10 15210004 */  bne   $t1, $at, .L80087D24
/* AFEEB4 80087D14 3C018000 */   lui   $at, 0x8000
/* AFEEB8 80087D18 14810002 */  bne   $a0, $at, .L80087D24
/* AFEEBC 80087D1C 00000000 */   nop   
/* AFEEC0 80087D20 0006000D */  break 6
.L80087D24:
/* AFEEC4 80087D24 00007012 */  mflo  $t6
/* AFEEC8 80087D28 000E7C00 */  sll   $t7, $t6, 0x10
/* AFEECC 80087D2C 000FC403 */  sra   $t8, $t7, 0x10
/* AFEED0 80087D30 0118C823 */  subu  $t9, $t0, $t8
/* AFEED4 80087D34 3C018012 */  lui   $at, %hi(sMagicBorderB) # $at, 0x8012
/* AFEED8 80087D38 10000011 */  b     .L80087D80
/* AFEEDC 80087D3C A4395A30 */   sh    $t9, %lo(sMagicBorderB)($at)
.L80087D40:
/* AFEEE0 80087D40 0089001A */  div   $zero, $a0, $t1
/* AFEEE4 80087D44 15200002 */  bnez  $t1, .L80087D50
/* AFEEE8 80087D48 00000000 */   nop   
/* AFEEEC 80087D4C 0007000D */  break 7
.L80087D50:
/* AFEEF0 80087D50 2401FFFF */  li    $at, -1
/* AFEEF4 80087D54 15210004 */  bne   $t1, $at, .L80087D68
/* AFEEF8 80087D58 3C018000 */   lui   $at, 0x8000
/* AFEEFC 80087D5C 14810002 */  bne   $a0, $at, .L80087D68
/* AFEF00 80087D60 00000000 */   nop   
/* AFEF04 80087D64 0006000D */  break 6
.L80087D68:
/* AFEF08 80087D68 00007012 */  mflo  $t6
/* AFEF0C 80087D6C 000E7C00 */  sll   $t7, $t6, 0x10
/* AFEF10 80087D70 000FC403 */  sra   $t8, $t7, 0x10
/* AFEF14 80087D74 0118C821 */  addu  $t9, $t0, $t8
/* AFEF18 80087D78 3C018012 */  lui   $at, %hi(sMagicBorderB) # $at, 0x8012
/* AFEF1C 80087D7C A4395A30 */  sh    $t9, %lo(sMagicBorderB)($at)
.L80087D80:
/* AFEF20 80087D80 2529FFFF */  addiu $t1, $t1, -1
/* AFEF24 80087D84 00094C00 */  sll   $t1, $t1, 0x10
/* AFEF28 80087D88 00094C03 */  sra   $t1, $t1, 0x10
/* AFEF2C 80087D8C 3C018012 */  lui   $at, %hi(sMagicBorderRatio) # $at, 0x8012
/* AFEF30 80087D90 15200138 */  bnez  $t1, .L80088274
/* AFEF34 80087D94 A4295AD0 */   sh    $t1, %lo(sMagicBorderRatio)($at)
/* AFEF38 80087D98 3C018012 */  lui   $at, %hi(sMagicBorderR) # $at, 0x8012
/* AFEF3C 80087D9C A42D5A28 */  sh    $t5, %lo(sMagicBorderR)($at)
/* AFEF40 80087DA0 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AFEF44 80087DA4 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AFEF48 80087DA8 3C018012 */  lui   $at, %hi(sMagicBorderG) # $at, 0x8012
/* AFEF4C 80087DAC A42C5A2C */  sh    $t4, %lo(sMagicBorderG)($at)
/* AFEF50 80087DB0 3C188012 */  lui   $t8, %hi(sMagicBorderStep) # $t8, 0x8012
/* AFEF54 80087DB4 87185AD4 */  lh    $t8, %lo(sMagicBorderStep)($t8)
/* AFEF58 80087DB8 3C018012 */  lui   $at, %hi(sMagicBorderB) # $at, 0x8012
/* AFEF5C 80087DBC A42B5A30 */  sh    $t3, %lo(sMagicBorderB)($at)
/* AFEF60 80087DC0 01DF7821 */  addu  $t7, $t6, $ra
/* AFEF64 80087DC4 85E904E4 */  lh    $t1, 0x4e4($t7)
/* AFEF68 80087DC8 3C018012 */  lui   $at, %hi(sMagicBorderStep) # $at, 0x8012
/* AFEF6C 80087DCC 27190001 */  addiu $t9, $t8, 1
/* AFEF70 80087DD0 A4395AD4 */  sh    $t9, %lo(sMagicBorderStep)($at)
/* AFEF74 80087DD4 3C018012 */  lui   $at, %hi(sMagicBorderRatio) # $at, 0x8012
/* AFEF78 80087DD8 00197400 */  sll   $t6, $t9, 0x10
/* AFEF7C 80087DDC 000E7C03 */  sra   $t7, $t6, 0x10
/* AFEF80 80087DE0 A4295AD0 */  sh    $t1, %lo(sMagicBorderRatio)($at)
/* AFEF84 80087DE4 29E10004 */  slti  $at, $t7, 4
/* AFEF88 80087DE8 14200122 */  bnez  $at, .L80088274
/* AFEF8C 80087DEC 3C018012 */   lui   $at, %hi(sMagicBorderStep) # $at, 0x8012
/* AFEF90 80087DF0 10000120 */  b     .L80088274
/* AFEF94 80087DF4 A4205AD4 */   sh    $zero, %lo(sMagicBorderStep)($at)
glabel L80087DF8
/* AFEF98 80087DF8 241800FF */  li    $t8, 255
/* AFEF9C 80087DFC 3C018012 */  lui   $at, %hi(sMagicBorderB) # $at, 0x8012
/* AFEFA0 80087E00 A4385A30 */  sh    $t8, %lo(sMagicBorderB)($at)
/* AFEFA4 80087E04 3C018012 */  lui   $at, %hi(sMagicBorderG) # $at, 0x8012
/* AFEFA8 80087E08 241900FF */  li    $t9, 255
/* AFEFAC 80087E0C A4395A2C */  sh    $t9, %lo(sMagicBorderG)($at)
/* AFEFB0 80087E10 3C018012 */  lui   $at, %hi(sMagicBorderR) # $at, 0x8012
/* AFEFB4 80087E14 240E00FF */  li    $t6, 255
/* AFEFB8 80087E18 A42E5A28 */  sh    $t6, %lo(sMagicBorderR)($at)
/* AFEFBC 80087E1C 10000115 */  b     .L80088274
/* AFEFC0 80087E20 A46013F0 */   sh    $zero, 0x13f0($v1)
glabel L80087E24
/* AFEFC4 80087E24 3C010001 */  lui   $at, 1
/* AFEFC8 80087E28 00811021 */  addu  $v0, $a0, $at
/* AFEFCC 80087E2C 944F0934 */  lhu   $t7, 0x934($v0)
/* AFEFD0 80087E30 15E0005F */  bnez  $t7, .L80087FB0
/* AFEFD4 80087E34 00000000 */   nop   
/* AFEFD8 80087E38 94580936 */  lhu   $t8, 0x936($v0)
/* AFEFDC 80087E3C 1700005C */  bnez  $t8, .L80087FB0
/* AFEFE0 80087E40 00000000 */   nop   
/* AFEFE4 80087E44 3C190001 */  lui   $t9, 1
/* AFEFE8 80087E48 0324C821 */  addu  $t9, $t9, $a0
/* AFEFEC 80087E4C 933903DC */  lbu   $t9, 0x3dc($t9)
/* AFEFF0 80087E50 17200057 */  bnez  $t9, .L80087FB0
/* AFEFF4 80087E54 00000000 */   nop   
/* AFEFF8 80087E58 944E0A20 */  lhu   $t6, 0xa20($v0)
/* AFEFFC 80087E5C 15C00054 */  bnez  $t6, .L80087FB0
/* AFF000 80087E60 00000000 */   nop   
/* AFF004 80087E64 804F1E15 */  lb    $t7, 0x1e15($v0)
/* AFF008 80087E68 15E00051 */  bnez  $t7, .L80087FB0
/* AFF00C 80087E6C 00000000 */   nop   
/* AFF010 80087E70 9058241B */  lbu   $t8, 0x241b($v0)
/* AFF014 80087E74 1700004E */  bnez  $t8, .L80087FB0
/* AFF018 80087E78 00000000 */   nop   
/* AFF01C 80087E7C 0C02FF21 */  jal   Gameplay_InCsMode
/* AFF020 80087E80 AFA40020 */   sw    $a0, 0x20($sp)
/* AFF024 80087E84 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* AFF028 80087E88 14400049 */  bnez  $v0, .L80087FB0
/* AFF02C 80087E8C 2463E660 */   addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* AFF030 80087E90 80790033 */  lb    $t9, 0x33($v1)
/* AFF034 80087E94 5320001C */  beql  $t9, $zero, .L80087F08
/* AFF038 80087E98 8FAF0020 */   lw    $t7, 0x20($sp)
/* AFF03C 80087E9C 0C023CBE */  jal   func_8008F2F8
/* AFF040 80087EA0 8FA40020 */   lw    $a0, 0x20($sp)
/* AFF044 80087EA4 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* AFF048 80087EA8 28410002 */  slti  $at, $v0, 2
/* AFF04C 80087EAC 14200007 */  bnez  $at, .L80087ECC
/* AFF050 80087EB0 2463E660 */   addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* AFF054 80087EB4 0C023CBE */  jal   func_8008F2F8
/* AFF058 80087EB8 8FA40020 */   lw    $a0, 0x20($sp)
/* AFF05C 80087EBC 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* AFF060 80087EC0 28410005 */  slti  $at, $v0, 5
/* AFF064 80087EC4 1420000F */  bnez  $at, .L80087F04
/* AFF068 80087EC8 2463E660 */   addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
.L80087ECC:
/* AFF06C 80087ECC 906E0069 */  lbu   $t6, 0x69($v1)
/* AFF070 80087ED0 2402000F */  li    $v0, 15
/* AFF074 80087ED4 8FB90020 */  lw    $t9, 0x20($sp)
/* AFF078 80087ED8 504E0008 */  beql  $v0, $t6, .L80087EFC
/* AFF07C 80087EDC 932E1C27 */   lbu   $t6, 0x1c27($t9)
/* AFF080 80087EE0 906F006A */  lbu   $t7, 0x6a($v1)
/* AFF084 80087EE4 504F0005 */  beql  $v0, $t7, .L80087EFC
/* AFF088 80087EE8 932E1C27 */   lbu   $t6, 0x1c27($t9)
/* AFF08C 80087EEC 9078006B */  lbu   $t8, 0x6b($v1)
/* AFF090 80087EF0 54580005 */  bnel  $v0, $t8, .L80087F08
/* AFF094 80087EF4 8FAF0020 */   lw    $t7, 0x20($sp)
/* AFF098 80087EF8 932E1C27 */  lbu   $t6, 0x1c27($t9)
.L80087EFC:
/* AFF09C 80087EFC 55C0001E */  bnezl $t6, .L80087F78
/* AFF0A0 80087F00 8FA20020 */   lw    $v0, 0x20($sp)
.L80087F04:
/* AFF0A4 80087F04 8FAF0020 */  lw    $t7, 0x20($sp)
.L80087F08:
/* AFF0A8 80087F08 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AFF0AC 80087F0C 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* AFF0B0 80087F10 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AFF0B4 80087F14 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* AFF0B8 80087F18 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AFF0BC 80087F1C A1E01C27 */  sb    $zero, 0x1c27($t7)
/* AFF0C0 80087F20 AFB80014 */  sw    $t8, 0x14($sp)
/* AFF0C4 80087F24 AFA70010 */  sw    $a3, 0x10($sp)
/* AFF0C8 80087F28 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AFF0CC 80087F2C 2404482B */  li    $a0, 18475
/* AFF0D0 80087F30 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AFF0D4 80087F34 24060004 */   li    $a2, 4
/* AFF0D8 80087F38 3C048012 */  lui   $a0, %hi(sMagicBorderB) # $a0, 0x8012
/* AFF0DC 80087F3C 24845A30 */  addiu $a0, %lo(sMagicBorderB) # addiu $a0, $a0, 0x5a30
/* AFF0E0 80087F40 241900FF */  li    $t9, 255
/* AFF0E4 80087F44 A4990000 */  sh    $t9, ($a0)
/* AFF0E8 80087F48 848E0000 */  lh    $t6, ($a0)
/* AFF0EC 80087F4C 3C028012 */  lui   $v0, %hi(sMagicBorderG) # $v0, 0x8012
/* AFF0F0 80087F50 24425A2C */  addiu $v0, %lo(sMagicBorderG) # addiu $v0, $v0, 0x5a2c
/* AFF0F4 80087F54 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* AFF0F8 80087F58 A44E0000 */  sh    $t6, ($v0)
/* AFF0FC 80087F5C 844F0000 */  lh    $t7, ($v0)
/* AFF100 80087F60 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* AFF104 80087F64 A46013F0 */  sh    $zero, 0x13f0($v1)
/* AFF108 80087F68 3C018012 */  lui   $at, %hi(sMagicBorderR) # $at, 0x8012
/* AFF10C 80087F6C 100000C1 */  b     .L80088274
/* AFF110 80087F70 A42F5A28 */   sh    $t7, %lo(sMagicBorderR)($at)
/* AFF114 80087F74 8FA20020 */  lw    $v0, 0x20($sp)
.L80087F78:
/* AFF118 80087F78 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AFF11C 80087F7C 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AFF120 80087F80 00411021 */  addu  $v0, $v0, $at
/* AFF124 80087F84 84580230 */  lh    $t8, 0x230($v0)
/* AFF128 80087F88 2719FFFF */  addiu $t9, $t8, -1
/* AFF12C 80087F8C A4590230 */  sh    $t9, 0x230($v0)
/* AFF130 80087F90 844E0230 */  lh    $t6, 0x230($v0)
/* AFF134 80087F94 15C00006 */  bnez  $t6, .L80087FB0
/* AFF138 80087F98 00000000 */   nop   
/* AFF13C 80087F9C 806F0033 */  lb    $t7, 0x33($v1)
/* AFF140 80087FA0 24190050 */  li    $t9, 80
/* AFF144 80087FA4 25F8FFFF */  addiu $t8, $t7, -1
/* AFF148 80087FA8 A0780033 */  sb    $t8, 0x33($v1)
/* AFF14C 80087FAC A4590230 */  sh    $t9, 0x230($v0)
.L80087FB0:
/* AFF150 80087FB0 3C1F8012 */  lui   $ra, %hi(sMagicBorderStep) # $ra, 0x8012
/* AFF154 80087FB4 87FF5AD4 */  lh    $ra, %lo(sMagicBorderStep)($ra)
/* AFF158 80087FB8 3C028012 */  lui   $v0, %hi(sMagicBorderIndexes)
/* AFF15C 80087FBC 3C0F8012 */  lui   $t7, %hi(sMagicBorderColors) # $t7, 0x8012
/* AFF160 80087FC0 001FF840 */  sll   $ra, $ra, 1
/* AFF164 80087FC4 005F1021 */  addu  $v0, $v0, $ra
/* AFF168 80087FC8 84425AC8 */  lh    $v0, %lo(sMagicBorderIndexes)($v0)
/* AFF16C 80087FCC 25EF5AB0 */  addiu $t7, %lo(sMagicBorderColors) # addiu $t7, $t7, 0x5ab0
/* AFF170 80087FD0 3C068012 */  lui   $a2, %hi(sMagicBorderR) # $a2, 0x8012
/* AFF174 80087FD4 00027080 */  sll   $t6, $v0, 2
/* AFF178 80087FD8 01C27023 */  subu  $t6, $t6, $v0
/* AFF17C 80087FDC 000E7040 */  sll   $t6, $t6, 1
/* AFF180 80087FE0 01CF2821 */  addu  $a1, $t6, $t7
/* AFF184 80087FE4 84AD0000 */  lh    $t5, ($a1)
/* AFF188 80087FE8 84C65A28 */  lh    $a2, %lo(sMagicBorderR)($a2)
/* AFF18C 80087FEC 3C098012 */  lui   $t1, %hi(sMagicBorderRatio) # $t1, 0x8012
/* AFF190 80087FF0 3C078012 */  lui   $a3, %hi(sMagicBorderG) # $a3, 0x8012
/* AFF194 80087FF4 00CD1823 */  subu  $v1, $a2, $t5
/* AFF198 80087FF8 04600003 */  bltz  $v1, .L80088008
/* AFF19C 80087FFC 3C088012 */   lui   $t0, %hi(sMagicBorderB) # $t0, 0x8012
/* AFF1A0 80088000 10000002 */  b     .L8008800C
/* AFF1A4 80088004 00602025 */   move  $a0, $v1
.L80088008:
/* AFF1A8 80088008 00032023 */  negu  $a0, $v1
.L8008800C:
/* AFF1AC 8008800C 85295AD0 */  lh    $t1, %lo(sMagicBorderRatio)($t1)
/* AFF1B0 80088010 84E75A2C */  lh    $a3, %lo(sMagicBorderG)($a3)
/* AFF1B4 80088014 84AC0002 */  lh    $t4, 2($a1)
/* AFF1B8 80088018 0089001A */  div   $zero, $a0, $t1
/* AFF1BC 8008801C 00001812 */  mflo  $v1
/* AFF1C0 80088020 00031C00 */  sll   $v1, $v1, 0x10
/* AFF1C4 80088024 15200002 */  bnez  $t1, .L80088030
/* AFF1C8 80088028 00000000 */   nop   
/* AFF1CC 8008802C 0007000D */  break 7
.L80088030:
/* AFF1D0 80088030 2401FFFF */  li    $at, -1
/* AFF1D4 80088034 15210004 */  bne   $t1, $at, .L80088048
/* AFF1D8 80088038 3C018000 */   lui   $at, 0x8000
/* AFF1DC 8008803C 14810002 */  bne   $a0, $at, .L80088048
/* AFF1E0 80088040 00000000 */   nop   
/* AFF1E4 80088044 0006000D */  break 6
.L80088048:
/* AFF1E8 80088048 00EC1023 */  subu  $v0, $a3, $t4
/* AFF1EC 8008804C 04400003 */  bltz  $v0, .L8008805C
/* AFF1F0 80088050 00031C03 */   sra   $v1, $v1, 0x10
/* AFF1F4 80088054 10000002 */  b     .L80088060
/* AFF1F8 80088058 00402025 */   move  $a0, $v0
.L8008805C:
/* AFF1FC 8008805C 00022023 */  negu  $a0, $v0
.L80088060:
/* AFF200 80088060 0089001A */  div   $zero, $a0, $t1
/* AFF204 80088064 85085A30 */  lh    $t0, %lo(sMagicBorderB)($t0)
/* AFF208 80088068 84AB0004 */  lh    $t3, 4($a1)
/* AFF20C 8008806C 00005012 */  mflo  $t2
/* AFF210 80088070 000A5400 */  sll   $t2, $t2, 0x10
/* AFF214 80088074 15200002 */  bnez  $t1, .L80088080
/* AFF218 80088078 00000000 */   nop   
/* AFF21C 8008807C 0007000D */  break 7
.L80088080:
/* AFF220 80088080 2401FFFF */  li    $at, -1
/* AFF224 80088084 15210004 */  bne   $t1, $at, .L80088098
/* AFF228 80088088 3C018000 */   lui   $at, 0x8000
/* AFF22C 8008808C 14810002 */  bne   $a0, $at, .L80088098
/* AFF230 80088090 00000000 */   nop   
/* AFF234 80088094 0006000D */  break 6
.L80088098:
/* AFF238 80088098 010B1023 */  subu  $v0, $t0, $t3
/* AFF23C 8008809C 04400003 */  bltz  $v0, .L800880AC
/* AFF240 800880A0 000A5403 */   sra   $t2, $t2, 0x10
/* AFF244 800880A4 10000002 */  b     .L800880B0
/* AFF248 800880A8 00402025 */   move  $a0, $v0
.L800880AC:
/* AFF24C 800880AC 00022023 */  negu  $a0, $v0
.L800880B0:
/* AFF250 800880B0 00CD082A */  slt   $at, $a2, $t5
/* AFF254 800880B4 54200006 */  bnezl $at, .L800880D0
/* AFF258 800880B8 00C3C821 */   addu  $t9, $a2, $v1
/* AFF25C 800880BC 00C3C023 */  subu  $t8, $a2, $v1
/* AFF260 800880C0 3C018012 */  lui   $at, %hi(sMagicBorderR) # $at, 0x8012
/* AFF264 800880C4 10000004 */  b     .L800880D8
/* AFF268 800880C8 A4385A28 */   sh    $t8, %lo(sMagicBorderR)($at)
/* AFF26C 800880CC 00C3C821 */  addu  $t9, $a2, $v1
.L800880D0:
/* AFF270 800880D0 3C018012 */  lui   $at, %hi(sMagicBorderR) # $at, 0x8012
/* AFF274 800880D4 A4395A28 */  sh    $t9, %lo(sMagicBorderR)($at)
.L800880D8:
/* AFF278 800880D8 00EC082A */  slt   $at, $a3, $t4
/* AFF27C 800880DC 54200006 */  bnezl $at, .L800880F8
/* AFF280 800880E0 00EA7821 */   addu  $t7, $a3, $t2
/* AFF284 800880E4 00EA7023 */  subu  $t6, $a3, $t2
/* AFF288 800880E8 3C018012 */  lui   $at, %hi(sMagicBorderG) # $at, 0x8012
/* AFF28C 800880EC 10000004 */  b     .L80088100
/* AFF290 800880F0 A42E5A2C */   sh    $t6, %lo(sMagicBorderG)($at)
/* AFF294 800880F4 00EA7821 */  addu  $t7, $a3, $t2
.L800880F8:
/* AFF298 800880F8 3C018012 */  lui   $at, %hi(sMagicBorderG) # $at, 0x8012
/* AFF29C 800880FC A42F5A2C */  sh    $t7, %lo(sMagicBorderG)($at)
.L80088100:
/* AFF2A0 80088100 010B082A */  slt   $at, $t0, $t3
/* AFF2A4 80088104 14200012 */  bnez  $at, .L80088150
/* AFF2A8 80088108 00000000 */   nop   
/* AFF2AC 8008810C 0089001A */  div   $zero, $a0, $t1
/* AFF2B0 80088110 15200002 */  bnez  $t1, .L8008811C
/* AFF2B4 80088114 00000000 */   nop   
/* AFF2B8 80088118 0007000D */  break 7
.L8008811C:
/* AFF2BC 8008811C 2401FFFF */  li    $at, -1
/* AFF2C0 80088120 15210004 */  bne   $t1, $at, .L80088134
/* AFF2C4 80088124 3C018000 */   lui   $at, 0x8000
/* AFF2C8 80088128 14810002 */  bne   $a0, $at, .L80088134
/* AFF2CC 8008812C 00000000 */   nop   
/* AFF2D0 80088130 0006000D */  break 6
.L80088134:
/* AFF2D4 80088134 0000C012 */  mflo  $t8
/* AFF2D8 80088138 0018CC00 */  sll   $t9, $t8, 0x10
/* AFF2DC 8008813C 00197403 */  sra   $t6, $t9, 0x10
/* AFF2E0 80088140 010E7823 */  subu  $t7, $t0, $t6
/* AFF2E4 80088144 3C018012 */  lui   $at, %hi(sMagicBorderB) # $at, 0x8012
/* AFF2E8 80088148 10000011 */  b     .L80088190
/* AFF2EC 8008814C A42F5A30 */   sh    $t7, %lo(sMagicBorderB)($at)
.L80088150:
/* AFF2F0 80088150 0089001A */  div   $zero, $a0, $t1
/* AFF2F4 80088154 15200002 */  bnez  $t1, .L80088160
/* AFF2F8 80088158 00000000 */   nop   
/* AFF2FC 8008815C 0007000D */  break 7
.L80088160:
/* AFF300 80088160 2401FFFF */  li    $at, -1
/* AFF304 80088164 15210004 */  bne   $t1, $at, .L80088178
/* AFF308 80088168 3C018000 */   lui   $at, 0x8000
/* AFF30C 8008816C 14810002 */  bne   $a0, $at, .L80088178
/* AFF310 80088170 00000000 */   nop   
/* AFF314 80088174 0006000D */  break 6
.L80088178:
/* AFF318 80088178 0000C012 */  mflo  $t8
/* AFF31C 8008817C 0018CC00 */  sll   $t9, $t8, 0x10
/* AFF320 80088180 00197403 */  sra   $t6, $t9, 0x10
/* AFF324 80088184 010E7821 */  addu  $t7, $t0, $t6
/* AFF328 80088188 3C018012 */  lui   $at, %hi(sMagicBorderB) # $at, 0x8012
/* AFF32C 8008818C A42F5A30 */  sh    $t7, %lo(sMagicBorderB)($at)
.L80088190:
/* AFF330 80088190 2529FFFF */  addiu $t1, $t1, -1
/* AFF334 80088194 00094C00 */  sll   $t1, $t1, 0x10
/* AFF338 80088198 00094C03 */  sra   $t1, $t1, 0x10
/* AFF33C 8008819C 3C018012 */  lui   $at, %hi(sMagicBorderRatio) # $at, 0x8012
/* AFF340 800881A0 15200034 */  bnez  $t1, .L80088274
/* AFF344 800881A4 A4295AD0 */   sh    $t1, %lo(sMagicBorderRatio)($at)
/* AFF348 800881A8 3C018012 */  lui   $at, %hi(sMagicBorderR) # $at, 0x8012
/* AFF34C 800881AC A42D5A28 */  sh    $t5, %lo(sMagicBorderR)($at)
/* AFF350 800881B0 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* AFF354 800881B4 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* AFF358 800881B8 3C018012 */  lui   $at, %hi(sMagicBorderG) # $at, 0x8012
/* AFF35C 800881BC A42C5A2C */  sh    $t4, %lo(sMagicBorderG)($at)
/* AFF360 800881C0 3C0E8012 */  lui   $t6, %hi(sMagicBorderStep) # $t6, 0x8012
/* AFF364 800881C4 85CE5AD4 */  lh    $t6, %lo(sMagicBorderStep)($t6)
/* AFF368 800881C8 3C018012 */  lui   $at, %hi(sMagicBorderB) # $at, 0x8012
/* AFF36C 800881CC A42B5A30 */  sh    $t3, %lo(sMagicBorderB)($at)
/* AFF370 800881D0 031FC821 */  addu  $t9, $t8, $ra
/* AFF374 800881D4 872904E4 */  lh    $t1, 0x4e4($t9)
/* AFF378 800881D8 3C018012 */  lui   $at, %hi(sMagicBorderStep) # $at, 0x8012
/* AFF37C 800881DC 25CF0001 */  addiu $t7, $t6, 1
/* AFF380 800881E0 A42F5AD4 */  sh    $t7, %lo(sMagicBorderStep)($at)
/* AFF384 800881E4 3C018012 */  lui   $at, %hi(sMagicBorderRatio) # $at, 0x8012
/* AFF388 800881E8 000FC400 */  sll   $t8, $t7, 0x10
/* AFF38C 800881EC 0018CC03 */  sra   $t9, $t8, 0x10
/* AFF390 800881F0 A4295AD0 */  sh    $t1, %lo(sMagicBorderRatio)($at)
/* AFF394 800881F4 2B210004 */  slti  $at, $t9, 4
/* AFF398 800881F8 1420001E */  bnez  $at, .L80088274
/* AFF39C 800881FC 3C018012 */   lui   $at, %hi(sMagicBorderStep) # $at, 0x8012
/* AFF3A0 80088200 1000001C */  b     .L80088274
/* AFF3A4 80088204 A4205AD4 */   sh    $zero, %lo(sMagicBorderStep)($at)
glabel L80088208
/* AFF3A8 80088208 806E0033 */  lb    $t6, 0x33($v1)
/* AFF3AC 8008820C 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AFF3B0 80088210 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* AFF3B4 80088214 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AFF3B8 80088218 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* AFF3BC 8008821C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AFF3C0 80088220 25CF0004 */  addiu $t7, $t6, 4
/* AFF3C4 80088224 A06F0033 */  sb    $t7, 0x33($v1)
/* AFF3C8 80088228 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AFF3CC 8008822C AFB80014 */  sw    $t8, 0x14($sp)
/* AFF3D0 80088230 AFA70010 */  sw    $a3, 0x10($sp)
/* AFF3D4 80088234 2404401F */  li    $a0, 16415
/* AFF3D8 80088238 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AFF3DC 8008823C 24060004 */   li    $a2, 4
/* AFF3E0 80088240 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* AFF3E4 80088244 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* AFF3E8 80088248 846213F8 */  lh    $v0, 0x13f8($v1)
/* AFF3EC 8008824C 80790033 */  lb    $t9, 0x33($v1)
/* AFF3F0 80088250 0322082A */  slt   $at, $t9, $v0
/* AFF3F4 80088254 54200008 */  bnezl $at, .L80088278
/* AFF3F8 80088258 8FBF001C */   lw    $ra, 0x1c($sp)
/* AFF3FC 8008825C 846E13F2 */  lh    $t6, 0x13f2($v1)
/* AFF400 80088260 A0620033 */  sb    $v0, 0x33($v1)
/* AFF404 80088264 A46013F2 */  sh    $zero, 0x13f2($v1)
/* AFF408 80088268 10000002 */  b     .L80088274
/* AFF40C 8008826C A46E13F0 */   sh    $t6, 0x13f0($v1)
.L80088270:
/* AFF410 80088270 A46013F0 */  sh    $zero, 0x13f0($v1)
.L80088274:
/* AFF414 80088274 8FBF001C */  lw    $ra, 0x1c($sp)
.L80088278:
/* AFF418 80088278 27BD0020 */  addiu $sp, $sp, 0x20
/* AFF41C 8008827C 03E00008 */  jr    $ra
/* AFF420 80088280 00000000 */   nop   

