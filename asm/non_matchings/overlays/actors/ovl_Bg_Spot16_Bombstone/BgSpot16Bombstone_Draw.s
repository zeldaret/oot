.rdata
glabel D_808B61E4
    .asciz "../z_bg_spot16_bombstone.c"
    .balign 4

glabel D_808B6200
    .asciz "../z_bg_spot16_bombstone.c"
    .balign 4

glabel D_808B621C
    .asciz "../z_bg_spot16_bombstone.c"
    .balign 4

.text
glabel BgSpot16Bombstone_Draw
/* 01068 808B5C98 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 0106C 808B5C9C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 01070 808B5CA0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01074 808B5CA4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01078 808B5CA8 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 0107C 808B5CAC AFA40050 */  sw      $a0, 0x0050($sp)           
/* 01080 808B5CB0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01084 808B5CB4 3C06808B */  lui     $a2, %hi(D_808B61E4)       ## $a2 = 808B0000
/* 01088 808B5CB8 24C661E4 */  addiu   $a2, $a2, %lo(D_808B61E4)  ## $a2 = 808B61E4
/* 0108C 808B5CBC 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 01090 808B5CC0 240704E5 */  addiu   $a3, $zero, 0x04E5         ## $a3 = 000004E5
/* 01094 808B5CC4 0C031AB1 */  jal     Graph_OpenDisps              
/* 01098 808B5CC8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0109C 808B5CCC 0C024F46 */  jal     func_80093D18              
/* 010A0 808B5CD0 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 010A4 808B5CD4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 010A8 808B5CD8 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 010AC 808B5CDC 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 010B0 808B5CE0 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 010B4 808B5CE4 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 010B8 808B5CE8 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 010BC 808B5CEC 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 010C0 808B5CF0 3C05808B */  lui     $a1, %hi(D_808B6200)       ## $a1 = 808B0000
/* 010C4 808B5CF4 24A56200 */  addiu   $a1, $a1, %lo(D_808B6200)  ## $a1 = 808B6200
/* 010C8 808B5CF8 240604E9 */  addiu   $a2, $zero, 0x04E9         ## $a2 = 000004E9
/* 010CC 808B5CFC 0C0346A2 */  jal     Matrix_NewMtx              
/* 010D0 808B5D00 AFA20030 */  sw      $v0, 0x0030($sp)           
/* 010D4 808B5D04 8FA30030 */  lw      $v1, 0x0030($sp)           
/* 010D8 808B5D08 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 010DC 808B5D0C 3C06808B */  lui     $a2, %hi(D_808B621C)       ## $a2 = 808B0000
/* 010E0 808B5D10 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 010E4 808B5D14 8FA40050 */  lw      $a0, 0x0050($sp)           
/* 010E8 808B5D18 24C6621C */  addiu   $a2, $a2, %lo(D_808B621C)  ## $a2 = 808B621C
/* 010EC 808B5D1C 240704FA */  addiu   $a3, $zero, 0x04FA         ## $a3 = 000004FA
/* 010F0 808B5D20 8498001C */  lh      $t8, 0x001C($a0)           ## 0000001C
/* 010F4 808B5D24 5701000A */  bnel    $t8, $at, .L808B5D50       
/* 010F8 808B5D28 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 010FC 808B5D2C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01100 808B5D30 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 01104 808B5D34 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01108 808B5D38 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 0110C 808B5D3C AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 01110 808B5D40 8C890150 */  lw      $t1, 0x0150($a0)           ## 00000150
/* 01114 808B5D44 10000017 */  beq     $zero, $zero, .L808B5DA4   
/* 01118 808B5D48 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 0111C 808B5D4C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
.L808B5D50:
/* 01120 808B5D50 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 01124 808B5D54 356B0018 */  ori     $t3, $t3, 0x0018           ## $t3 = DB060018
/* 01128 808B5D58 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 0112C 808B5D5C AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 01130 808B5D60 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 01134 808B5D64 808C0214 */  lb      $t4, 0x0214($a0)           ## 00000214
/* 01138 808B5D68 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 0113C 808B5D6C 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 01140 808B5D70 000C6900 */  sll     $t5, $t4,  4               
/* 01144 808B5D74 01AC6821 */  addu    $t5, $t5, $t4              
/* 01148 808B5D78 000D6880 */  sll     $t5, $t5,  2               
/* 0114C 808B5D7C 022D7021 */  addu    $t6, $s1, $t5              
/* 01150 808B5D80 01EE7821 */  addu    $t7, $t7, $t6              
/* 01154 808B5D84 8DEF17B4 */  lw      $t7, 0x17B4($t7)           ## 000117B4
/* 01158 808B5D88 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 0115C 808B5D8C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01160 808B5D90 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01164 808B5D94 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 01168 808B5D98 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 0116C 808B5D9C 8C880150 */  lw      $t0, 0x0150($a0)           ## 00000150
/* 01170 808B5DA0 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
.L808B5DA4:
/* 01174 808B5DA4 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 01178 808B5DA8 0C031AD5 */  jal     Graph_CloseDisps              
/* 0117C 808B5DAC 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 01180 808B5DB0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01184 808B5DB4 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 01188 808B5DB8 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 0118C 808B5DBC 03E00008 */  jr      $ra                        
/* 01190 808B5DC0 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 01194 808B5DC4 00000000 */  nop
/* 01198 808B5DC8 00000000 */  nop
/* 0119C 808B5DCC 00000000 */  nop

