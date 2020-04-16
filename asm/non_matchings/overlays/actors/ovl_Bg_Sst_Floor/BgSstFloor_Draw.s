.rdata
glabel D_808B9E40
    .asciz "../z_bg_sst_floor.c"
    .balign 4

glabel D_808B9E54
    .asciz "../z_bg_sst_floor.c"
    .balign 4

glabel D_808B9E68
    .asciz "../z_bg_sst_floor.c"
    .balign 4

.late_rodata
glabel D_808B9E88
 .word 0xBB23D70A, 0x00000000

.text
glabel BgSstFloor_Draw
/* 00404 808B9D14 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00408 808B9D18 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0040C 808B9D1C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00410 808B9D20 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00414 808B9D24 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00418 808B9D28 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0041C 808B9D2C 3C06808C */  lui     $a2, %hi(D_808B9E40)       ## $a2 = 808C0000
/* 00420 808B9D30 24C69E40 */  addiu   $a2, $a2, %lo(D_808B9E40)  ## $a2 = 808B9E40
/* 00424 808B9D34 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 00428 808B9D38 24070115 */  addiu   $a3, $zero, 0x0115         ## $a3 = 00000115
/* 0042C 808B9D3C 0C031AB1 */  jal     Graph_OpenDisps              
/* 00430 808B9D40 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00434 808B9D44 8FAF004C */  lw      $t7, 0x004C($sp)           
/* 00438 808B9D48 0C024F46 */  jal     func_80093D18              
/* 0043C 808B9D4C 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 00440 808B9D50 8FB80048 */  lw      $t8, 0x0048($sp)           
/* 00444 808B9D54 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00448 808B9D58 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 0044C 808B9D5C 87190168 */  lh      $t9, 0x0168($t8)           ## 00000168
/* 00450 808B9D60 3C01808C */  lui     $at, %hi(D_808B9E88)       ## $at = 808C0000
/* 00454 808B9D64 C4289E88 */  lwc1    $f8, %lo(D_808B9E88)($at)  
/* 00458 808B9D68 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 0045C 808B9D6C 44066000 */  mfc1    $a2, $f12                  
/* 00460 808B9D70 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00464 808B9D74 468021A0 */  cvt.s.w $f6, $f4                   
/* 00468 808B9D78 46083382 */  mul.s   $f14, $f6, $f8             
/* 0046C 808B9D7C 0C0342A3 */  jal     Matrix_Scale              
/* 00470 808B9D80 00000000 */  nop
/* 00474 808B9D84 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00478 808B9D88 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 0047C 808B9D8C 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 00480 808B9D90 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 00484 808B9D94 AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 00488 808B9D98 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 0048C 808B9D9C 8FAA004C */  lw      $t2, 0x004C($sp)           
/* 00490 808B9DA0 3C05808C */  lui     $a1, %hi(D_808B9E54)       ## $a1 = 808C0000
/* 00494 808B9DA4 24A59E54 */  addiu   $a1, $a1, %lo(D_808B9E54)  ## $a1 = 808B9E54
/* 00498 808B9DA8 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 0049C 808B9DAC 2406011B */  addiu   $a2, $zero, 0x011B         ## $a2 = 0000011B
/* 004A0 808B9DB0 0C0346A2 */  jal     Matrix_NewMtx              
/* 004A4 808B9DB4 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 004A8 808B9DB8 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 004AC 808B9DBC 3C0D0602 */  lui     $t5, 0x0602                ## $t5 = 06020000
/* 004B0 808B9DC0 25AD9210 */  addiu   $t5, $t5, 0x9210           ## $t5 = 06019210
/* 004B4 808B9DC4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 004B8 808B9DC8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 004BC 808B9DCC 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 004C0 808B9DD0 3C06808C */  lui     $a2, %hi(D_808B9E68)       ## $a2 = 808C0000
/* 004C4 808B9DD4 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 004C8 808B9DD8 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 004CC 808B9DDC AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 004D0 808B9DE0 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 004D4 808B9DE4 8FAE004C */  lw      $t6, 0x004C($sp)           
/* 004D8 808B9DE8 24C69E68 */  addiu   $a2, $a2, %lo(D_808B9E68)  ## $a2 = 808B9E68
/* 004DC 808B9DEC 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 004E0 808B9DF0 2407011F */  addiu   $a3, $zero, 0x011F         ## $a3 = 0000011F
/* 004E4 808B9DF4 0C031AD5 */  jal     Graph_CloseDisps              
/* 004E8 808B9DF8 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 004EC 808B9DFC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 004F0 808B9E00 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 004F4 808B9E04 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 004F8 808B9E08 03E00008 */  jr      $ra                        
/* 004FC 808B9E0C 00000000 */  nop
