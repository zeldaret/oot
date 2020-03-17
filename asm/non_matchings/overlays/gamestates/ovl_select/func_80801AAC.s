glabel func_80801AAC
/* 00F1C 80801AAC 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 00F20 80801AB0 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00F24 80801AB4 AFBE0030 */  sw      $s8, 0x0030($sp)           
/* 00F28 80801AB8 AFB2002C */  sw      $s2, 0x002C($sp)           
/* 00F2C 80801ABC AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00F30 80801AC0 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00F34 80801AC4 8C910000 */  lw      $s1, 0x0000($a0)           ## 00000000
/* 00F38 80801AC8 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00F3C 80801ACC 3C068080 */  lui     $a2, %hi(D_80803530)       ## $a2 = 80800000
/* 00F40 80801AD0 03A0F025 */  or      $s8, $sp, $zero            ## $s8 = FFFFFF90
/* 00F44 80801AD4 24C63530 */  addiu   $a2, $a2, %lo(D_80803530)  ## $a2 = 80803530
/* 00F48 80801AD8 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFE4
/* 00F4C 80801ADC 240703A2 */  addiu   $a3, $zero, 0x03A2         ## $a3 = 000003A2
/* 00F50 80801AE0 0C031AB1 */  jal     func_800C6AC4              
/* 00F54 80801AE4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00F58 80801AE8 8E2302C0 */  lw      $v1, 0x02C0($s1)           ## 000002C0
/* 00F5C 80801AEC 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 00F60 80801AF0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00F64 80801AF4 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 00F68 80801AF8 AE2E02C0 */  sw      $t6, 0x02C0($s1)           ## 000002C0
/* 00F6C 80801AFC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00F70 80801B00 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00F74 80801B04 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00F78 80801B08 AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 00F7C 80801B0C 0C025492 */  jal     func_80095248              
/* 00F80 80801B10 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 00F84 80801B14 241800F0 */  addiu   $t8, $zero, 0x00F0         ## $t8 = 000000F0
/* 00F88 80801B18 24190140 */  addiu   $t9, $zero, 0x0140         ## $t9 = 00000140
/* 00F8C 80801B1C 265000A8 */  addiu   $s0, $s2, 0x00A8           ## $s0 = 000000A8
/* 00F90 80801B20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000000A8
/* 00F94 80801B24 AFD9004C */  sw      $t9, 0x004C($s8)           ## FFFFFFDC
/* 00F98 80801B28 AFD80044 */  sw      $t8, 0x0044($s8)           ## FFFFFFD4
/* 00F9C 80801B2C AFC00040 */  sw      $zero, 0x0040($s8)         ## FFFFFFD0
/* 00FA0 80801B30 AFC00048 */  sw      $zero, 0x0048($s8)         ## FFFFFFD8
/* 00FA4 80801B34 0C02A93F */  jal     func_800AA4FC              
/* 00FA8 80801B38 27C50040 */  addiu   $a1, $s8, 0x0040           ## $a1 = FFFFFFD0
/* 00FAC 80801B3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000000A8
/* 00FB0 80801B40 0C02AA94 */  jal     func_800AAA50              
/* 00FB4 80801B44 2405000F */  addiu   $a1, $zero, 0x000F         ## $a1 = 0000000F
/* 00FB8 80801B48 0C025050 */  jal     func_80094140              
/* 00FBC 80801B4C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00FC0 80801B50 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFF60
/* 00FC4 80801B54 27B00010 */  addiu   $s0, $sp, 0x0010           ## $s0 = FFFFFF70
/* 00FC8 80801B58 0C03EEE3 */  jal     GfxPrint_Ctor              
/* 00FCC 80801B5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF70
/* 00FD0 80801B60 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF70
/* 00FD4 80801B64 0C03EF07 */  jal     GfxPrint_Open              
/* 00FD8 80801B68 8E2502C0 */  lw      $a1, 0x02C0($s1)           ## 000002C0
/* 00FDC 80801B6C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00FE0 80801B70 0C200585 */  jal     func_80801614              
/* 00FE4 80801B74 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFF70
/* 00FE8 80801B78 3C078016 */  lui     $a3, 0x8016                ## $a3 = 80160000
/* 00FEC 80801B7C 8CE6E664 */  lw      $a2, -0x199C($a3)          ## 8015E664
/* 00FF0 80801B80 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00FF4 80801B84 0C20061F */  jal     func_8080187C              
/* 00FF8 80801B88 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFF70
/* 00FFC 80801B8C 3C078016 */  lui     $a3, 0x8016                ## $a3 = 80160000
/* 01000 80801B90 8CE7E668 */  lw      $a3, -0x1998($a3)          ## 8015E668
/* 01004 80801B94 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01008 80801B98 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFF70
/* 0100C 80801B9C 0C20063C */  jal     func_808018F0              
/* 01010 80801BA0 30E6FFFF */  andi    $a2, $a3, 0xFFFF           ## $a2 = 00000000
/* 01014 80801BA4 0C03EF19 */  jal     GfxPrint_Close              
/* 01018 80801BA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF70
/* 0101C 80801BAC AE2202C0 */  sw      $v0, 0x02C0($s1)           ## 000002C0
/* 01020 80801BB0 0C03EF05 */  jal     GfxPrint_Dtor              
/* 01024 80801BB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF70
/* 01028 80801BB8 3C068080 */  lui     $a2, %hi(D_80803540)       ## $a2 = 80800000
/* 0102C 80801BBC 24C63540 */  addiu   $a2, $a2, %lo(D_80803540)  ## $a2 = 80803540
/* 01030 80801BC0 27C40054 */  addiu   $a0, $s8, 0x0054           ## $a0 = FFFFFFE4
/* 01034 80801BC4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01038 80801BC8 0C031AD5 */  jal     func_800C6B54              
/* 0103C 80801BCC 240703C6 */  addiu   $a3, $zero, 0x03C6         ## $a3 = 000003C6
/* 01040 80801BD0 8FDF0034 */  lw      $ra, 0x0034($s8)           ## FFFFFFC4
/* 01044 80801BD4 03C0E825 */  or      $sp, $s8, $zero            ## $sp = FFFFFF90
/* 01048 80801BD8 8FD00024 */  lw      $s0, 0x0024($s8)           ## FFFFFFB4
/* 0104C 80801BDC 8FD10028 */  lw      $s1, 0x0028($s8)           ## FFFFFFB8
/* 01050 80801BE0 8FD2002C */  lw      $s2, 0x002C($s8)           ## FFFFFFBC
/* 01054 80801BE4 8FDE0030 */  lw      $s8, 0x0030($s8)           ## FFFFFFC0
/* 01058 80801BE8 03E00008 */  jr      $ra                        
/* 0105C 80801BEC 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000


