glabel func_80ABB228
/* 015E8 80ABB228 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 015EC 80ABB22C AFB10028 */  sw      $s1, 0x0028($sp)           
/* 015F0 80ABB230 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 015F4 80ABB234 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 015F8 80ABB238 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 015FC 80ABB23C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01600 80ABB240 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01604 80ABB244 3C0680AC */  lui     $a2, %hi(D_80ABB71C)       ## $a2 = 80AC0000
/* 01608 80ABB248 24C6B71C */  addiu   $a2, $a2, %lo(D_80ABB71C)  ## $a2 = 80ABB71C
/* 0160C 80ABB24C 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFE4
/* 01610 80ABB250 24070543 */  addiu   $a3, $zero, 0x0543         ## $a3 = 00000543
/* 01614 80ABB254 0C031AB1 */  jal     func_800C6AC4              
/* 01618 80ABB258 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 0161C 80ABB25C 860E027E */  lh      $t6, 0x027E($s0)           ## 0000027E
/* 01620 80ABB260 8FA80054 */  lw      $t0, 0x0054($sp)           
/* 01624 80ABB264 11C00039 */  beq     $t6, $zero, .L80ABB34C     
/* 01628 80ABB268 00000000 */  nop
/* 0162C 80ABB26C 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 01630 80ABB270 0C024F46 */  jal     func_80093D18              
/* 01634 80ABB274 AFA80054 */  sw      $t0, 0x0054($sp)           
/* 01638 80ABB278 8FA80054 */  lw      $t0, 0x0054($sp)           
/* 0163C 80ABB27C 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 01640 80ABB280 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 01644 80ABB284 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01648 80ABB288 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 0164C 80ABB28C 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 01650 80ABB290 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01654 80ABB294 AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 01658 80ABB298 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 0165C 80ABB29C AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 01660 80ABB2A0 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01664 80ABB2A4 3C0480AC */  lui     $a0, %hi(D_80ABB408)       ## $a0 = 80AC0000
/* 01668 80ABB2A8 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 0166C 80ABB2AC 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 01670 80ABB2B0 AD0902C0 */  sw      $t1, 0x02C0($t0)           ## 000002C0
/* 01674 80ABB2B4 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 01678 80ABB2B8 860B027C */  lh      $t3, 0x027C($s0)           ## 0000027C
/* 0167C 80ABB2BC 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01680 80ABB2C0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01684 80ABB2C4 000B6080 */  sll     $t4, $t3,  2               
/* 01688 80ABB2C8 008C2021 */  addu    $a0, $a0, $t4              
/* 0168C 80ABB2CC 8C84B408 */  lw      $a0, %lo(D_80ABB408)($a0)  
/* 01690 80ABB2D0 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 01694 80ABB2D4 358C0030 */  ori     $t4, $t4, 0x0030           ## $t4 = DB060030
/* 01698 80ABB2D8 00047100 */  sll     $t6, $a0,  4               
/* 0169C 80ABB2DC 000E7F02 */  srl     $t7, $t6, 28               
/* 016A0 80ABB2E0 000FC080 */  sll     $t8, $t7,  2               
/* 016A4 80ABB2E4 0338C821 */  addu    $t9, $t9, $t8              
/* 016A8 80ABB2E8 8F396FA8 */  lw      $t9, 0x6FA8($t9)           ## 80166FA8
/* 016AC 80ABB2EC 00816824 */  and     $t5, $a0, $at              
/* 016B0 80ABB2F0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 016B4 80ABB2F4 01B94821 */  addu    $t1, $t5, $t9              
/* 016B8 80ABB2F8 01215021 */  addu    $t2, $t1, $at              
/* 016BC 80ABB2FC AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 016C0 80ABB300 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 016C4 80ABB304 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 016C8 80ABB308 AD0B02C0 */  sw      $t3, 0x02C0($t0)           ## 000002C0
/* 016CC 80ABB30C AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 016D0 80ABB310 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 016D4 80ABB314 0C2AEC28 */  jal     func_80ABB0A0              
/* 016D8 80ABB318 AFA20038 */  sw      $v0, 0x0038($sp)           
/* 016DC 80ABB31C 8FA30038 */  lw      $v1, 0x0038($sp)           
/* 016E0 80ABB320 3C0E80AC */  lui     $t6, %hi(func_80ABB0CC)    ## $t6 = 80AC0000
/* 016E4 80ABB324 25CEB0CC */  addiu   $t6, $t6, %lo(func_80ABB0CC) ## $t6 = 80ABB0CC
/* 016E8 80ABB328 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 016EC 80ABB32C 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 016F0 80ABB330 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 016F4 80ABB334 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 016F8 80ABB338 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 016FC 80ABB33C AFA00014 */  sw      $zero, 0x0014($sp)         
/* 01700 80ABB340 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01704 80ABB344 0C0286B2 */  jal     func_800A1AC8              
/* 01708 80ABB348 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80ABB34C:
/* 0170C 80ABB34C 3C0680AC */  lui     $a2, %hi(D_80ABB730)       ## $a2 = 80AC0000
/* 01710 80ABB350 24C6B730 */  addiu   $a2, $a2, %lo(D_80ABB730)  ## $a2 = 80ABB730
/* 01714 80ABB354 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFE4
/* 01718 80ABB358 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 0171C 80ABB35C 0C031AD5 */  jal     func_800C6B54              
/* 01720 80ABB360 2407055A */  addiu   $a3, $zero, 0x055A         ## $a3 = 0000055A
/* 01724 80ABB364 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01728 80ABB368 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 0172C 80ABB36C 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 01730 80ABB370 03E00008 */  jr      $ra                        
/* 01734 80ABB374 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 01738 80ABB378 00000000 */  nop
/* 0173C 80ABB37C 00000000 */  nop

