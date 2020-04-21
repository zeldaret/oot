glabel func_808A9BE8
/* 00468 808A9BE8 3C078016 */  lui     $a3, %hi(gSaveContext)
/* 0046C 808A9BEC 24E7E660 */  addiu   $a3, %lo(gSaveContext)
/* 00470 808A9BF0 8CE31360 */  lw      $v1, 0x1360($a3)           ## 8015F9C0
/* 00474 808A9BF4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00478 808A9BF8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0047C 808A9BFC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00480 808A9C00 28610004 */  slti    $at, $v1, 0x0004           
/* 00484 808A9C04 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00488 808A9C08 10200014 */  beq     $at, $zero, .L808A9C5C     
/* 0048C 808A9C0C 8C88011C */  lw      $t0, 0x011C($a0)           ## 0000011C
/* 00490 808A9C10 3C048012 */  lui     $a0, %hi(gBitFlags)
/* 00494 808A9C14 24847120 */  addiu   $a0, %lo(gBitFlags)
/* 00498 808A9C18 8C8E0048 */  lw      $t6, 0x0048($a0)           ## 80127168
/* 0049C 808A9C1C 8CE200A4 */  lw      $v0, 0x00A4($a3)           ## 8015E704
/* 004A0 808A9C20 01C27824 */  and     $t7, $t6, $v0              
/* 004A4 808A9C24 51E0000E */  beql    $t7, $zero, .L808A9C60     
/* 004A8 808A9C28 84CD00B4 */  lh      $t5, 0x00B4($a2)           ## 000000B4
/* 004AC 808A9C2C 8C98004C */  lw      $t8, 0x004C($a0)           ## 8012716C
/* 004B0 808A9C30 0302C824 */  and     $t9, $t8, $v0              
/* 004B4 808A9C34 5320000A */  beql    $t9, $zero, .L808A9C60     
/* 004B8 808A9C38 84CD00B4 */  lh      $t5, 0x00B4($a2)           ## 000000B4
/* 004BC 808A9C3C 8C890050 */  lw      $t1, 0x0050($a0)           ## 80127170
/* 004C0 808A9C40 01225024 */  and     $t2, $t1, $v0              
/* 004C4 808A9C44 51400006 */  beql    $t2, $zero, .L808A9C60     
/* 004C8 808A9C48 84CD00B4 */  lh      $t5, 0x00B4($a2)           ## 000000B4
/* 004CC 808A9C4C 94EB0EE4 */  lhu     $t3, 0x0EE4($a3)           ## 8015F544
/* 004D0 808A9C50 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 004D4 808A9C54 5180002D */  beql    $t4, $zero, .L808A9D0C     
/* 004D8 808A9C58 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A9C5C:
/* 004DC 808A9C5C 84CD00B4 */  lh      $t5, 0x00B4($a2)           ## 000000B4
.L808A9C60:
/* 004E0 808A9C60 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 004E4 808A9C64 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 004E8 808A9C68 51A00016 */  beql    $t5, $zero, .L808A9CC4     
/* 004EC 808A9C6C 84D800B4 */  lh      $t8, 0x00B4($a2)           ## 000000B4
/* 004F0 808A9C70 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 004F4 808A9C74 0C01B129 */  jal     func_8006C4A4              
/* 004F8 808A9C78 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 004FC 808A9C7C 3C078016 */  lui     $a3, %hi(gSaveContext)
/* 00500 808A9C80 24E7E660 */  addiu   $a3, %lo(gSaveContext)
/* 00504 808A9C84 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00508 808A9C88 14400007 */  bne     $v0, $zero, .L808A9CA8     
/* 0050C 808A9C8C 8FA8001C */  lw      $t0, 0x001C($sp)           
/* 00510 808A9C90 8CE31360 */  lw      $v1, 0x1360($a3)           ## 8015F9C0
/* 00514 808A9C94 28610004 */  slti    $at, $v1, 0x0004           
/* 00518 808A9C98 5020000A */  beql    $at, $zero, .L808A9CC4     
/* 0051C 808A9C9C 84D800B4 */  lh      $t8, 0x00B4($a2)           ## 000000B4
/* 00520 808A9CA0 8CEE0010 */  lw      $t6, 0x0010($a3)           ## 8015E670
/* 00524 808A9CA4 15C00006 */  bne     $t6, $zero, .L808A9CC0     
.L808A9CA8:
/* 00528 808A9CA8 3C0F808B */  lui     $t7, %hi(func_808A9D24)    ## $t7 = 808B0000
/* 0052C 808A9CAC 25EF9D24 */  addiu   $t7, $t7, %lo(func_808A9D24) ## $t7 = 808A9D24
/* 00530 808A9CB0 ACCF0164 */  sw      $t7, 0x0164($a2)           ## 00000164
/* 00534 808A9CB4 A4C00168 */  sh      $zero, 0x0168($a2)         ## 00000168
/* 00538 808A9CB8 10000013 */  beq     $zero, $zero, .L808A9D08   
/* 0053C 808A9CBC A5000168 */  sh      $zero, 0x0168($t0)         ## 00000168
.L808A9CC0:
/* 00540 808A9CC0 84D800B4 */  lh      $t8, 0x00B4($a2)           ## 000000B4
.L808A9CC4:
/* 00544 808A9CC4 28610004 */  slti    $at, $v1, 0x0004           
/* 00548 808A9CC8 57000010 */  bnel    $t8, $zero, .L808A9D0C     
/* 0054C 808A9CCC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00550 808A9CD0 5020000E */  beql    $at, $zero, .L808A9D0C     
/* 00554 808A9CD4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00558 808A9CD8 8CF90004 */  lw      $t9, 0x0004($a3)           ## 8015E664
/* 0055C 808A9CDC 5320000B */  beql    $t9, $zero, .L808A9D0C     
/* 00560 808A9CE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00564 808A9CE4 8CE90010 */  lw      $t1, 0x0010($a3)           ## 8015E670
/* 00568 808A9CE8 3C0A808B */  lui     $t2, %hi(func_808A9D24)    ## $t2 = 808B0000
/* 0056C 808A9CEC 254A9D24 */  addiu   $t2, $t2, %lo(func_808A9D24) ## $t2 = 808A9D24
/* 00570 808A9CF0 11200005 */  beq     $t1, $zero, .L808A9D08     
/* 00574 808A9CF4 240BC000 */  addiu   $t3, $zero, 0xC000         ## $t3 = FFFFC000
/* 00578 808A9CF8 ACCA0164 */  sw      $t2, 0x0164($a2)           ## 00000164
/* 0057C 808A9CFC A4CB0168 */  sh      $t3, 0x0168($a2)           ## 00000168
/* 00580 808A9D00 240CF020 */  addiu   $t4, $zero, 0xF020         ## $t4 = FFFFF020
/* 00584 808A9D04 A50C0168 */  sh      $t4, 0x0168($t0)           ## 00000168
.L808A9D08:
/* 00588 808A9D08 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A9D0C:
/* 0058C 808A9D0C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00590 808A9D10 03E00008 */  jr      $ra                        
/* 00594 808A9D14 00000000 */  nop
