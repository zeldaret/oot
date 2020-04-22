.rdata
glabel D_80B43F70
    .asciz "../z_en_yukabyun.c"
    .balign 4

glabel D_80B43F84
    .asciz "../z_en_yukabyun.c"
    .balign 4

glabel D_80B43F98
    .asciz "../z_en_yukabyun.c"
    .balign 4

.text
glabel EnYukabyun_Draw
/* 00420 80B43DE0 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00424 80B43DE4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00428 80B43DE8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0042C 80B43DEC AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00430 80B43DF0 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00434 80B43DF4 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00438 80B43DF8 3C0680B4 */  lui     $a2, %hi(D_80B43F70)       ## $a2 = 80B40000
/* 0043C 80B43DFC 24C63F70 */  addiu   $a2, $a2, %lo(D_80B43F70)  ## $a2 = 80B43F70
/* 00440 80B43E00 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 00444 80B43E04 2407016E */  addiu   $a3, $zero, 0x016E         ## $a3 = 0000016E
/* 00448 80B43E08 0C031AB1 */  jal     Graph_OpenDisps              
/* 0044C 80B43E0C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00450 80B43E10 8FAF004C */  lw      $t7, 0x004C($sp)           
/* 00454 80B43E14 0C024F46 */  jal     func_80093D18              
/* 00458 80B43E18 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 0045C 80B43E1C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00460 80B43E20 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 00464 80B43E24 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 00468 80B43E28 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 0046C 80B43E2C AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 00470 80B43E30 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00474 80B43E34 8FA80048 */  lw      $t0, 0x0048($sp)           
/* 00478 80B43E38 3C0480B4 */  lui     $a0, %hi(D_80B43F64)       ## $a0 = 80B40000
/* 0047C 80B43E3C 3C0F8016 */  lui     $t7, %hi(gSegments)
/* 00480 80B43E40 91090152 */  lbu     $t1, 0x0152($t0)           ## 00000152
/* 00484 80B43E44 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00488 80B43E48 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0048C 80B43E4C 00095080 */  sll     $t2, $t1,  2               
/* 00490 80B43E50 008A2021 */  addu    $a0, $a0, $t2              
/* 00494 80B43E54 8C843F64 */  lw      $a0, %lo(D_80B43F64)($a0)  
/* 00498 80B43E58 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 0049C 80B43E5C 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 004A0 80B43E60 00046100 */  sll     $t4, $a0,  4               
/* 004A4 80B43E64 000C6F02 */  srl     $t5, $t4, 28               
/* 004A8 80B43E68 000D7080 */  sll     $t6, $t5,  2               
/* 004AC 80B43E6C 01EE7821 */  addu    $t7, $t7, $t6              
/* 004B0 80B43E70 8DEF6FA8 */  lw      $t7, %lo(gSegments)($t7)
/* 004B4 80B43E74 00815824 */  and     $t3, $a0, $at              
/* 004B8 80B43E78 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 004BC 80B43E7C 016FC021 */  addu    $t8, $t3, $t7              
/* 004C0 80B43E80 0301C821 */  addu    $t9, $t8, $at              
/* 004C4 80B43E84 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 004C8 80B43E88 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 004CC 80B43E8C 3C0580B4 */  lui     $a1, %hi(D_80B43F84)       ## $a1 = 80B40000
/* 004D0 80B43E90 24A53F84 */  addiu   $a1, $a1, %lo(D_80B43F84)  ## $a1 = 80B43F84
/* 004D4 80B43E94 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 004D8 80B43E98 AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 004DC 80B43E9C AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 004E0 80B43EA0 8FAA004C */  lw      $t2, 0x004C($sp)           
/* 004E4 80B43EA4 24060175 */  addiu   $a2, $zero, 0x0175         ## $a2 = 00000175
/* 004E8 80B43EA8 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 004EC 80B43EAC 0C0346A2 */  jal     Matrix_NewMtx              
/* 004F0 80B43EB0 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 004F4 80B43EB4 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 004F8 80B43EB8 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 004FC 80B43EBC 25CE0970 */  addiu   $t6, $t6, 0x0970           ## $t6 = 06000970
/* 00500 80B43EC0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00504 80B43EC4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00508 80B43EC8 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 0050C 80B43ECC 3C0680B4 */  lui     $a2, %hi(D_80B43F98)       ## $a2 = 80B40000
/* 00510 80B43ED0 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00514 80B43ED4 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 00518 80B43ED8 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 0051C 80B43EDC AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 00520 80B43EE0 8FAB004C */  lw      $t3, 0x004C($sp)           
/* 00524 80B43EE4 24C63F98 */  addiu   $a2, $a2, %lo(D_80B43F98)  ## $a2 = 80B43F98
/* 00528 80B43EE8 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 0052C 80B43EEC 2407017A */  addiu   $a3, $zero, 0x017A         ## $a3 = 0000017A
/* 00530 80B43EF0 0C031AD5 */  jal     Graph_CloseDisps              
/* 00534 80B43EF4 8D650000 */  lw      $a1, 0x0000($t3)           ## 00000000
/* 00538 80B43EF8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0053C 80B43EFC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00540 80B43F00 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00544 80B43F04 03E00008 */  jr      $ra                        
/* 00548 80B43F08 00000000 */  nop
/* 0054C 80B43F0C 00000000 */  nop
