.rdata
glabel D_80AD71B0
    .asciz "../z_en_po_field.c"
    .balign 4

glabel D_80AD71C4
    .asciz "../z_en_po_field.c"
    .balign 4

glabel D_80AD71D8
    .asciz "../z_en_po_field.c"
    .balign 4

.text
glabel EnPoField_Draw
/* 02DE4 80AD68E4 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 02DE8 80AD68E8 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 02DEC 80AD68EC AFB20030 */  sw      $s2, 0x0030($sp)
/* 02DF0 80AD68F0 AFB1002C */  sw      $s1, 0x002C($sp)
/* 02DF4 80AD68F4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 02DF8 80AD68F8 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 02DFC 80AD68FC 8C890190 */  lw      $t1, 0x0190($a0)           ## 00000190
/* 02E00 80AD6900 3C1880AD */  lui     $t8, %hi(D_80AD712C)       ## $t8 = 80AD0000
/* 02E04 80AD6904 3C1980AD */  lui     $t9, %hi(func_80AD4664)    ## $t9 = 80AD0000
/* 02E08 80AD6908 2718712C */  addiu   $t8, $t8, %lo(D_80AD712C)  ## $t8 = 80AD712C
/* 02E0C 80AD690C 27394664 */  addiu   $t9, $t9, %lo(func_80AD4664) ## $t9 = 80AD4664
/* 02E10 80AD6910 000E7900 */  sll     $t7, $t6,  4
/* 02E14 80AD6914 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 02E18 80AD6918 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 02E1C 80AD691C 132900AC */  beq     $t9, $t1, .L80AD6BD0
/* 02E20 80AD6920 01F84021 */  addu    $t0, $t7, $t8
/* 02E24 80AD6924 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 02E28 80AD6928 3C0680AD */  lui     $a2, %hi(D_80AD71B0)       ## $a2 = 80AD0000
/* 02E2C 80AD692C 24C671B0 */  addiu   $a2, $a2, %lo(D_80AD71B0)  ## $a2 = 80AD71B0
/* 02E30 80AD6930 AFA80078 */  sw      $t0, 0x0078($sp)
/* 02E34 80AD6934 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFE4
/* 02E38 80AD6938 240707B8 */  addiu   $a3, $zero, 0x07B8         ## $a3 = 000007B8
/* 02E3C 80AD693C 0C031AB1 */  jal     Graph_OpenDisps
/* 02E40 80AD6940 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 02E44 80AD6944 0C024F46 */  jal     func_80093D18
/* 02E48 80AD6948 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 02E4C 80AD694C 0C024F61 */  jal     func_80093D84
/* 02E50 80AD6950 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 02E54 80AD6954 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 02E58 80AD6958 8FA80078 */  lw      $t0, 0x0078($sp)
/* 02E5C 80AD695C 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 02E60 80AD6960 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 02E64 80AD6964 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 02E68 80AD6968 356B0028 */  ori     $t3, $t3, 0x0028           ## $t3 = DB060028
/* 02E6C 80AD696C AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 02E70 80AD6970 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 02E74 80AD6974 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 02E78 80AD6978 91070008 */  lbu     $a3, 0x0008($t0)           ## 00000008
/* 02E7C 80AD697C 91060007 */  lbu     $a2, 0x0007($t0)           ## 00000007
/* 02E80 80AD6980 91050006 */  lbu     $a1, 0x0006($t0)           ## 00000006
/* 02E84 80AD6984 AFAC0010 */  sw      $t4, 0x0010($sp)
/* 02E88 80AD6988 0C025474 */  jal     Gfx_EnvColor
/* 02E8C 80AD698C AFA20060 */  sw      $v0, 0x0060($sp)
/* 02E90 80AD6990 8FA30060 */  lw      $v1, 0x0060($sp)
/* 02E94 80AD6994 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 02E98 80AD6998 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 02E9C 80AD699C 92220217 */  lbu     $v0, 0x0217($s1)           ## 00000217
/* 02EA0 80AD69A0 50410004 */  beql    $v0, $at, .L80AD69B4
/* 02EA4 80AD69A4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 02EA8 80AD69A8 54400029 */  bnel    $v0, $zero, .L80AD6A50
/* 02EAC 80AD69AC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 02EB0 80AD69B0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
.L80AD69B4:
/* 02EB4 80AD69B4 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 02EB8 80AD69B8 35CE0020 */  ori     $t6, $t6, 0x0020           ## $t6 = DB060020
/* 02EBC 80AD69BC 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 02EC0 80AD69C0 AE0D02C0 */  sw      $t5, 0x02C0($s0)           ## 000002C0
/* 02EC4 80AD69C4 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 02EC8 80AD69C8 922F0217 */  lbu     $t7, 0x0217($s1)           ## 00000217
/* 02ECC 80AD69CC 92270216 */  lbu     $a3, 0x0216($s1)           ## 00000216
/* 02ED0 80AD69D0 92260215 */  lbu     $a2, 0x0215($s1)           ## 00000215
/* 02ED4 80AD69D4 92250214 */  lbu     $a1, 0x0214($s1)           ## 00000214
/* 02ED8 80AD69D8 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 02EDC 80AD69DC AFA2005C */  sw      $v0, 0x005C($sp)
/* 02EE0 80AD69E0 0C025474 */  jal     Gfx_EnvColor
/* 02EE4 80AD69E4 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 02EE8 80AD69E8 8FA3005C */  lw      $v1, 0x005C($sp)
/* 02EEC 80AD69EC 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 02EF0 80AD69F0 3C098011 */  lui     $t1, 0x8011                ## $t1 = 80110000
/* 02EF4 80AD69F4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 02EF8 80AD69F8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 02EFC 80AD69FC 25296290 */  addiu   $t1, $t1, 0x6290           ## $t1 = 80116290
/* 02F00 80AD6A00 37390030 */  ori     $t9, $t9, 0x0030           ## $t9 = DB060030
/* 02F04 80AD6A04 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 02F08 80AD6A08 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 02F0C 80AD6A0C AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 02F10 80AD6A10 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 02F14 80AD6A14 8E26016C */  lw      $a2, 0x016C($s1)           ## 0000016C
/* 02F18 80AD6A18 8E250150 */  lw      $a1, 0x0150($s1)           ## 00000150
/* 02F1C 80AD6A1C 3C0A80AD */  lui     $t2, %hi(func_80AD66D0)    ## $t2 = 80AD0000
/* 02F20 80AD6A20 254A66D0 */  addiu   $t2, $t2, %lo(func_80AD66D0) ## $t2 = 80AD66D0
/* 02F24 80AD6A24 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 02F28 80AD6A28 AFB10014 */  sw      $s1, 0x0014($sp)
/* 02F2C 80AD6A2C 8E0B02C0 */  lw      $t3, 0x02C0($s0)           ## 000002C0
/* 02F30 80AD6A30 3C0780AD */  lui     $a3, %hi(func_80AD65C8)    ## $a3 = 80AD0000
/* 02F34 80AD6A34 24E765C8 */  addiu   $a3, $a3, %lo(func_80AD65C8) ## $a3 = 80AD65C8
/* 02F38 80AD6A38 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 02F3C 80AD6A3C 0C0288A2 */  jal     SkelAnime_Draw2
/* 02F40 80AD6A40 AFAB0018 */  sw      $t3, 0x0018($sp)
/* 02F44 80AD6A44 10000027 */  beq     $zero, $zero, .L80AD6AE4
/* 02F48 80AD6A48 AE0202C0 */  sw      $v0, 0x02C0($s0)           ## 000002C0
/* 02F4C 80AD6A4C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
.L80AD6A50:
/* 02F50 80AD6A50 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 02F54 80AD6A54 35AD0020 */  ori     $t5, $t5, 0x0020           ## $t5 = DB060020
/* 02F58 80AD6A58 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 02F5C 80AD6A5C AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 02F60 80AD6A60 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 02F64 80AD6A64 922E0217 */  lbu     $t6, 0x0217($s1)           ## 00000217
/* 02F68 80AD6A68 92270216 */  lbu     $a3, 0x0216($s1)           ## 00000216
/* 02F6C 80AD6A6C 92260215 */  lbu     $a2, 0x0215($s1)           ## 00000215
/* 02F70 80AD6A70 92250214 */  lbu     $a1, 0x0214($s1)           ## 00000214
/* 02F74 80AD6A74 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 02F78 80AD6A78 AFA20054 */  sw      $v0, 0x0054($sp)
/* 02F7C 80AD6A7C 0C025474 */  jal     Gfx_EnvColor
/* 02F80 80AD6A80 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 02F84 80AD6A84 8FA30054 */  lw      $v1, 0x0054($sp)
/* 02F88 80AD6A88 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 02F8C 80AD6A8C 3C198011 */  lui     $t9, 0x8011                ## $t9 = 80110000
/* 02F90 80AD6A90 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 02F94 80AD6A94 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 02F98 80AD6A98 27396280 */  addiu   $t9, $t9, 0x6280           ## $t9 = 80116280
/* 02F9C 80AD6A9C 37180030 */  ori     $t8, $t8, 0x0030           ## $t8 = DB060030
/* 02FA0 80AD6AA0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 02FA4 80AD6AA4 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 02FA8 80AD6AA8 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 02FAC 80AD6AAC AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 02FB0 80AD6AB0 8E26016C */  lw      $a2, 0x016C($s1)           ## 0000016C
/* 02FB4 80AD6AB4 8E250150 */  lw      $a1, 0x0150($s1)           ## 00000150
/* 02FB8 80AD6AB8 3C0980AD */  lui     $t1, %hi(func_80AD66D0)    ## $t1 = 80AD0000
/* 02FBC 80AD6ABC 252966D0 */  addiu   $t1, $t1, %lo(func_80AD66D0) ## $t1 = 80AD66D0
/* 02FC0 80AD6AC0 AFA90010 */  sw      $t1, 0x0010($sp)
/* 02FC4 80AD6AC4 AFB10014 */  sw      $s1, 0x0014($sp)
/* 02FC8 80AD6AC8 8E0A02D0 */  lw      $t2, 0x02D0($s0)           ## 000002D0
/* 02FCC 80AD6ACC 3C0780AD */  lui     $a3, %hi(func_80AD65C8)    ## $a3 = 80AD0000
/* 02FD0 80AD6AD0 24E765C8 */  addiu   $a3, $a3, %lo(func_80AD65C8) ## $a3 = 80AD65C8
/* 02FD4 80AD6AD4 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 02FD8 80AD6AD8 0C0288A2 */  jal     SkelAnime_Draw2
/* 02FDC 80AD6ADC AFAA0018 */  sw      $t2, 0x0018($sp)
/* 02FE0 80AD6AE0 AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
.L80AD6AE4:
/* 02FE4 80AD6AE4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 02FE8 80AD6AE8 3C0CE700 */  lui     $t4, 0xE700                ## $t4 = E7000000
/* 02FEC 80AD6AEC 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 02FF0 80AD6AF0 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 02FF4 80AD6AF4 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 02FF8 80AD6AF8 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 02FFC 80AD6AFC AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 03000 80AD6B00 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03004 80AD6B04 3C0480AD */  lui     $a0, %hi(D_80AD7700)       ## $a0 = 80AD0000
/* 03008 80AD6B08 24847700 */  addiu   $a0, $a0, %lo(D_80AD7700)  ## $a0 = 80AD7700
/* 0300C 80AD6B0C 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 03010 80AD6B10 AE0D02C0 */  sw      $t5, 0x02C0($s0)           ## 000002C0
/* 03014 80AD6B14 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 03018 80AD6B18 922A0219 */  lbu     $t2, 0x0219($s1)           ## 00000219
/* 0301C 80AD6B1C 92380218 */  lbu     $t8, 0x0218($s1)           ## 00000218
/* 03020 80AD6B20 922E021A */  lbu     $t6, 0x021A($s1)           ## 0000021A
/* 03024 80AD6B24 000A5C00 */  sll     $t3, $t2, 16
/* 03028 80AD6B28 0018CE00 */  sll     $t9, $t8, 24
/* 0302C 80AD6B2C 032B6025 */  or      $t4, $t9, $t3              ## $t4 = 00000008
/* 03030 80AD6B30 000E7A00 */  sll     $t7, $t6,  8
/* 03034 80AD6B34 018FC025 */  or      $t8, $t4, $t7              ## $t8 = 00000008
/* 03038 80AD6B38 370900FF */  ori     $t1, $t8, 0x00FF           ## $t1 = 000000FF
/* 0303C 80AD6B3C 0C03423F */  jal     Matrix_Put
/* 03040 80AD6B40 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 03044 80AD6B44 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03048 80AD6B48 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 0304C 80AD6B4C 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 03050 80AD6B50 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 03054 80AD6B54 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 03058 80AD6B58 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 0305C 80AD6B5C 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 03060 80AD6B60 3C0580AD */  lui     $a1, %hi(D_80AD71C4)       ## $a1 = 80AD0000
/* 03064 80AD6B64 24A571C4 */  addiu   $a1, $a1, %lo(D_80AD71C4)  ## $a1 = 80AD71C4
/* 03068 80AD6B68 240607F1 */  addiu   $a2, $zero, 0x07F1         ## $a2 = 000007F1
/* 0306C 80AD6B6C 0C0346A2 */  jal     Matrix_NewMtx
/* 03070 80AD6B70 AFA20044 */  sw      $v0, 0x0044($sp)
/* 03074 80AD6B74 8FA30044 */  lw      $v1, 0x0044($sp)
/* 03078 80AD6B78 3C0D0600 */  lui     $t5, 0x0600                ## $t5 = 06000000
/* 0307C 80AD6B7C 25AD4BA0 */  addiu   $t5, $t5, 0x4BA0           ## $t5 = 06004BA0
/* 03080 80AD6B80 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03084 80AD6B84 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03088 80AD6B88 3C04DE00 */  lui     $a0, 0xDE00                ## $a0 = DE000000
/* 0308C 80AD6B8C 3C0C0600 */  lui     $t4, 0x0600                ## $t4 = 06000000
/* 03090 80AD6B90 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 03094 80AD6B94 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 03098 80AD6B98 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 0309C 80AD6B9C AC440000 */  sw      $a0, 0x0000($v0)           ## 00000000
/* 030A0 80AD6BA0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 030A4 80AD6BA4 258C4CC0 */  addiu   $t4, $t4, 0x4CC0           ## $t4 = 06004CC0
/* 030A8 80AD6BA8 3C0680AD */  lui     $a2, %hi(D_80AD71D8)       ## $a2 = 80AD0000
/* 030AC 80AD6BAC 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 030B0 80AD6BB0 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 030B4 80AD6BB4 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 030B8 80AD6BB8 AC440000 */  sw      $a0, 0x0000($v0)           ## 00000000
/* 030BC 80AD6BBC 8E450000 */  lw      $a1, 0x0000($s2)           ## 00000000
/* 030C0 80AD6BC0 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFE4
/* 030C4 80AD6BC4 24C671D8 */  addiu   $a2, $a2, %lo(D_80AD71D8)  ## $a2 = 80AD71D8
/* 030C8 80AD6BC8 0C031AD5 */  jal     Graph_CloseDisps
/* 030CC 80AD6BCC 240707F7 */  addiu   $a3, $zero, 0x07F7         ## $a3 = 000007F7
.L80AD6BD0:
/* 030D0 80AD6BD0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 030D4 80AD6BD4 0C2B57A3 */  jal     func_80AD5E8C
/* 030D8 80AD6BD8 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 030DC 80AD6BDC 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 030E0 80AD6BE0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 030E4 80AD6BE4 8FB1002C */  lw      $s1, 0x002C($sp)
/* 030E8 80AD6BE8 8FB20030 */  lw      $s2, 0x0030($sp)
/* 030EC 80AD6BEC 03E00008 */  jr      $ra
/* 030F0 80AD6BF0 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
