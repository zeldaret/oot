.rdata
glabel D_80A5B0A8
    .asciz "../z_en_honotrap.c"
    .balign 4

glabel D_80A5B0BC
    .asciz "../z_en_honotrap.c"
    .balign 4

glabel D_80A5B0D0
    .asciz "../z_en_honotrap.c"
    .balign 4

.text
glabel func_80A5ABFC
/* 00FCC 80A5ABFC 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00FD0 80A5AC00 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00FD4 80A5AC04 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00FD8 80A5AC08 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00FDC 80A5AC0C AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00FE0 80A5AC10 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00FE4 80A5AC14 3C0680A6 */  lui     $a2, %hi(D_80A5B0A8)       ## $a2 = 80A60000
/* 00FE8 80A5AC18 24C6B0A8 */  addiu   $a2, $a2, %lo(D_80A5B0A8)  ## $a2 = 80A5B0A8
/* 00FEC 80A5AC1C 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 00FF0 80A5AC20 240703D6 */  addiu   $a3, $zero, 0x03D6         ## $a3 = 000003D6
/* 00FF4 80A5AC24 0C031AB1 */  jal     Graph_OpenDisps              
/* 00FF8 80A5AC28 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00FFC 80A5AC2C 8FAF004C */  lw      $t7, 0x004C($sp)           
/* 01000 80A5AC30 0C024F46 */  jal     func_80093D18              
/* 01004 80A5AC34 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 01008 80A5AC38 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0100C 80A5AC3C 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 01010 80A5AC40 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 01014 80A5AC44 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01018 80A5AC48 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 0101C 80A5AC4C AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01020 80A5AC50 8FA80048 */  lw      $t0, 0x0048($sp)           
/* 01024 80A5AC54 3C0480A6 */  lui     $a0, %hi(D_80A5B060)       ## $a0 = 80A60000
/* 01028 80A5AC58 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 0102C 80A5AC5C 8509022A */  lh      $t1, 0x022A($t0)           ## 0000022A
/* 01030 80A5AC60 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01034 80A5AC64 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01038 80A5AC68 00095080 */  sll     $t2, $t1,  2               
/* 0103C 80A5AC6C 008A2021 */  addu    $a0, $a0, $t2              
/* 01040 80A5AC70 8C84B060 */  lw      $a0, %lo(D_80A5B060)($a0)  
/* 01044 80A5AC74 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 01048 80A5AC78 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 0104C 80A5AC7C 00046100 */  sll     $t4, $a0,  4               
/* 01050 80A5AC80 000C6F02 */  srl     $t5, $t4, 28               
/* 01054 80A5AC84 000D7080 */  sll     $t6, $t5,  2               
/* 01058 80A5AC88 01EE7821 */  addu    $t7, $t7, $t6              
/* 0105C 80A5AC8C 8DEF6FA8 */  lw      $t7, 0x6FA8($t7)           ## 80166FA8
/* 01060 80A5AC90 00815824 */  and     $t3, $a0, $at              
/* 01064 80A5AC94 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01068 80A5AC98 016FC021 */  addu    $t8, $t3, $t7              
/* 0106C 80A5AC9C 0301C821 */  addu    $t9, $t8, $at              
/* 01070 80A5ACA0 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 01074 80A5ACA4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01078 80A5ACA8 3C0580A6 */  lui     $a1, %hi(D_80A5B0BC)       ## $a1 = 80A60000
/* 0107C 80A5ACAC 24A5B0BC */  addiu   $a1, $a1, %lo(D_80A5B0BC)  ## $a1 = 80A5B0BC
/* 01080 80A5ACB0 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 01084 80A5ACB4 AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 01088 80A5ACB8 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 0108C 80A5ACBC 8FAA004C */  lw      $t2, 0x004C($sp)           
/* 01090 80A5ACC0 240603DB */  addiu   $a2, $zero, 0x03DB         ## $a2 = 000003DB
/* 01094 80A5ACC4 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 01098 80A5ACC8 0C0346A2 */  jal     Matrix_NewMtx              
/* 0109C 80A5ACCC AFA20028 */  sw      $v0, 0x0028($sp)           
/* 010A0 80A5ACD0 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 010A4 80A5ACD4 3C0E0500 */  lui     $t6, 0x0500                ## $t6 = 05000000
/* 010A8 80A5ACD8 25CE6810 */  addiu   $t6, $t6, 0x6810           ## $t6 = 05006810
/* 010AC 80A5ACDC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 010B0 80A5ACE0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 010B4 80A5ACE4 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 010B8 80A5ACE8 3C0680A6 */  lui     $a2, %hi(D_80A5B0D0)       ## $a2 = 80A60000
/* 010BC 80A5ACEC 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 010C0 80A5ACF0 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 010C4 80A5ACF4 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 010C8 80A5ACF8 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 010CC 80A5ACFC 8FAB004C */  lw      $t3, 0x004C($sp)           
/* 010D0 80A5AD00 24C6B0D0 */  addiu   $a2, $a2, %lo(D_80A5B0D0)  ## $a2 = 80A5B0D0
/* 010D4 80A5AD04 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 010D8 80A5AD08 240703DF */  addiu   $a3, $zero, 0x03DF         ## $a3 = 000003DF
/* 010DC 80A5AD0C 0C031AD5 */  jal     Graph_CloseDisps              
/* 010E0 80A5AD10 8D650000 */  lw      $a1, 0x0000($t3)           ## 00000000
/* 010E4 80A5AD14 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 010E8 80A5AD18 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 010EC 80A5AD1C 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 010F0 80A5AD20 03E00008 */  jr      $ra                        
/* 010F4 80A5AD24 00000000 */  nop
