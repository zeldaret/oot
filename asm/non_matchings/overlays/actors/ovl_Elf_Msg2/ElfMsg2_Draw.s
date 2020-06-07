.rdata
glabel D_809ADDE4
    .asciz "../z_elf_msg2.c"
    .balign 4

glabel D_809ADDF4
    .asciz "../z_elf_msg2.c"
    .balign 4

glabel D_809ADE04
    .asciz "../z_elf_msg2.c"
    .balign 4

.text
glabel ElfMsg2_Draw
/* 003DC 809ADADC 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 003E0 809ADAE0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 003E4 809ADAE4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 003E8 809ADAE8 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 003EC 809ADAEC AFA5004C */  sw      $a1, 0x004C($sp)           
/* 003F0 809ADAF0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 003F4 809ADAF4 3C06809B */  lui     $a2, %hi(D_809ADDE4)       ## $a2 = 809B0000
/* 003F8 809ADAF8 24C6DDE4 */  addiu   $a2, $a2, %lo(D_809ADDE4)  ## $a2 = 809ADDE4
/* 003FC 809ADAFC 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFEC
/* 00400 809ADB00 24070163 */  addiu   $a3, $zero, 0x0163         ## $a3 = 00000163
/* 00404 809ADB04 0C031AB1 */  jal     Graph_OpenDisps              
/* 00408 809ADB08 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0040C 809ADB0C 3C0F8016 */  lui     $t7, %hi(gGameInfo)
/* 00410 809ADB10 8DEFFA90 */  lw      $t7, %lo(gGameInfo)($t7)
/* 00414 809ADB14 8FB9004C */  lw      $t9, 0x004C($sp)           
/* 00418 809ADB18 85F812C2 */  lh      $t8, 0x12C2($t7)           ## 801612C2
/* 0041C 809ADB1C 53000036 */  beql    $t8, $zero, .L809ADBF8     
/* 00420 809ADB20 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00424 809ADB24 0C024F46 */  jal     func_80093D18              
/* 00428 809ADB28 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 0042C 809ADB2C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00430 809ADB30 3C09FA00 */  lui     $t1, 0xFA00                ## $t1 = FA000000
/* 00434 809ADB34 3C0A8016 */  lui     $t2, %hi(gGameInfo)
/* 00438 809ADB38 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 0043C 809ADB3C AE0802D0 */  sw      $t0, 0x02D0($s0)           ## 000002D0
/* 00440 809ADB40 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00444 809ADB44 8D4AFA90 */  lw      $t2, %lo(gGameInfo)($t2)
/* 00448 809ADB48 3C016464 */  lui     $at, 0x6464                ## $at = 64640000
/* 0044C 809ADB4C 3421FF00 */  ori     $at, $at, 0xFF00           ## $at = 6464FF00
/* 00450 809ADB50 854B12C2 */  lh      $t3, 0x12C2($t2)           ## 801612C2
/* 00454 809ADB54 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 00458 809ADB58 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 0045C 809ADB5C 316C00FF */  andi    $t4, $t3, 0x00FF           ## $t4 = 00000000
/* 00460 809ADB60 01816825 */  or      $t5, $t4, $at              ## $t5 = 6464FF00
/* 00464 809ADB64 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00468 809ADB68 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0046C 809ADB6C 3C05809B */  lui     $a1, %hi(D_809ADDF4)       ## $a1 = 809B0000
/* 00470 809ADB70 24A5DDF4 */  addiu   $a1, $a1, %lo(D_809ADDF4)  ## $a1 = 809ADDF4
/* 00474 809ADB74 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 00478 809ADB78 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 0047C 809ADB7C AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00480 809ADB80 8FB8004C */  lw      $t8, 0x004C($sp)           
/* 00484 809ADB84 2406016A */  addiu   $a2, $zero, 0x016A         ## $a2 = 0000016A
/* 00488 809ADB88 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 0048C 809ADB8C 0C0346A2 */  jal     Matrix_NewMtx              
/* 00490 809ADB90 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 00494 809ADB94 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 00498 809ADB98 3C08809B */  lui     $t0, %hi(D_809ADC38)       ## $t0 = 809B0000
/* 0049C 809ADB9C 2508DC38 */  addiu   $t0, $t0, %lo(D_809ADC38)  ## $t0 = 809ADC38
/* 004A0 809ADBA0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 004A4 809ADBA4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 004A8 809ADBA8 3C04DE00 */  lui     $a0, 0xDE00                ## $a0 = DE000000
/* 004AC 809ADBAC 3C0A809B */  lui     $t2, %hi(D_809ADCF8)       ## $t2 = 809B0000
/* 004B0 809ADBB0 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 004B4 809ADBB4 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 004B8 809ADBB8 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 004BC 809ADBBC AC440000 */  sw      $a0, 0x0000($v0)           ## 00000000
/* 004C0 809ADBC0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 004C4 809ADBC4 254ADCF8 */  addiu   $t2, $t2, %lo(D_809ADCF8)  ## $t2 = 809ADCF8
/* 004C8 809ADBC8 3C06809B */  lui     $a2, %hi(D_809ADE04)       ## $a2 = 809B0000
/* 004CC 809ADBCC 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 004D0 809ADBD0 AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 004D4 809ADBD4 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 004D8 809ADBD8 AC440000 */  sw      $a0, 0x0000($v0)           ## 00000000
/* 004DC 809ADBDC 8FAB004C */  lw      $t3, 0x004C($sp)           
/* 004E0 809ADBE0 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFEC
/* 004E4 809ADBE4 24C6DE04 */  addiu   $a2, $a2, %lo(D_809ADE04)  ## $a2 = 809ADE04
/* 004E8 809ADBE8 2407016F */  addiu   $a3, $zero, 0x016F         ## $a3 = 0000016F
/* 004EC 809ADBEC 0C031AD5 */  jal     Graph_CloseDisps              
/* 004F0 809ADBF0 8D650000 */  lw      $a1, 0x0000($t3)           ## 00000000
/* 004F4 809ADBF4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809ADBF8:
/* 004F8 809ADBF8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 004FC 809ADBFC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00500 809ADC00 03E00008 */  jr      $ra                        
/* 00504 809ADC04 00000000 */  nop
/* 00508 809ADC08 00000000 */  nop
/* 0050C 809ADC0C 00000000 */  nop
