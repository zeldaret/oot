.rdata
glabel D_80B2D0F8
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D10C
    .asciz "../z_en_viewer.c"
    .balign 4

.text
glabel func_80B2C130
/* 01F30 80B2C130 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 01F34 80B2C134 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01F38 80B2C138 AFA40058 */  sw      $a0, 0x0058($sp)
/* 01F3C 80B2C13C AFA5005C */  sw      $a1, 0x005C($sp)
/* 01F40 80B2C140 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01F44 80B2C144 3C0680B3 */  lui     $a2, %hi(D_80B2D0F8)       ## $a2 = 80B30000
/* 01F48 80B2C148 24C6D0F8 */  addiu   $a2, $a2, %lo(D_80B2D0F8)  ## $a2 = 80B2D0F8
/* 01F4C 80B2C14C 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFEC
/* 01F50 80B2C150 240706B5 */  addiu   $a3, $zero, 0x06B5         ## $a3 = 000006B5
/* 01F54 80B2C154 0C031AB1 */  jal     Graph_OpenDisps
/* 01F58 80B2C158 AFA50054 */  sw      $a1, 0x0054($sp)
/* 01F5C 80B2C15C 8FA30054 */  lw      $v1, 0x0054($sp)
/* 01F60 80B2C160 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01F64 80B2C164 24A57210 */  addiu   $a1, $a1, 0x7210           ## $a1 = 06007210
/* 01F68 80B2C168 8C6202C0 */  lw      $v0, 0x02C0($v1)           ## 000002C0
/* 01F6C 80B2C16C 0005C900 */  sll     $t9, $a1,  4
/* 01F70 80B2C170 8FA80058 */  lw      $t0, 0x0058($sp)
/* 01F74 80B2C174 00195702 */  srl     $t2, $t9, 28
/* 01F78 80B2C178 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 01F7C 80B2C17C 3C0C8016 */  lui     $t4, %hi(gSegments)
/* 01F80 80B2C180 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01F84 80B2C184 258C6FA8 */  addiu   $t4, %lo(gSegments)
/* 01F88 80B2C188 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 01F8C 80B2C18C 000A5880 */  sll     $t3, $t2,  2
/* 01F90 80B2C190 AC6F02C0 */  sw      $t7, 0x02C0($v1)           ## 000002C0
/* 01F94 80B2C194 016C3021 */  addu    $a2, $t3, $t4
/* 01F98 80B2C198 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 01F9C 80B2C19C 8CCD0000 */  lw      $t5, 0x0000($a2)           ## 00000000
/* 01FA0 80B2C1A0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01FA4 80B2C1A4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01FA8 80B2C1A8 00A13824 */  and     $a3, $a1, $at
/* 01FAC 80B2C1AC 3C098000 */  lui     $t1, 0x8000                ## $t1 = 80000000
/* 01FB0 80B2C1B0 01A77021 */  addu    $t6, $t5, $a3
/* 01FB4 80B2C1B4 01C97821 */  addu    $t7, $t6, $t1
/* 01FB8 80B2C1B8 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 01FBC 80B2C1BC 8C6202C0 */  lw      $v0, 0x02C0($v1)           ## 000002C0
/* 01FC0 80B2C1C0 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 01FC4 80B2C1C4 37390024 */  ori     $t9, $t9, 0x0024           ## $t9 = DB060024
/* 01FC8 80B2C1C8 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01FCC 80B2C1CC AC7802C0 */  sw      $t8, 0x02C0($v1)           ## 000002C0
/* 01FD0 80B2C1D0 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01FD4 80B2C1D4 8CCA0000 */  lw      $t2, 0x0000($a2)           ## 00000000
/* 01FD8 80B2C1D8 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 01FDC 80B2C1DC 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 01FE0 80B2C1E0 01475821 */  addu    $t3, $t2, $a3
/* 01FE4 80B2C1E4 01696021 */  addu    $t4, $t3, $t1
/* 01FE8 80B2C1E8 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 01FEC 80B2C1EC 8C6202C0 */  lw      $v0, 0x02C0($v1)           ## 000002C0
/* 01FF0 80B2C1F0 3C0A8011 */  lui     $t2, %hi(D_80116280+0x10)
/* 01FF4 80B2C1F4 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 01FF8 80B2C1F8 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 01FFC 80B2C1FC AC6D02C0 */  sw      $t5, 0x02C0($v1)           ## 000002C0
/* 02000 80B2C200 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 02004 80B2C204 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 02008 80B2C208 8C6202C0 */  lw      $v0, 0x02C0($v1)           ## 000002C0
/* 0200C 80B2C20C 37390030 */  ori     $t9, $t9, 0x0030           ## $t9 = DB060030
/* 02010 80B2C210 254A6290 */  addiu   $t2, %lo(D_80116280+0x10)
/* 02014 80B2C214 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 02018 80B2C218 AC7802C0 */  sw      $t8, 0x02C0($v1)           ## 000002C0
/* 0201C 80B2C21C AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 02020 80B2C220 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 02024 80B2C224 3C0B80B3 */  lui     $t3, %hi(func_80B2C10C)    ## $t3 = 80B30000
/* 02028 80B2C228 9107019A */  lbu     $a3, 0x019A($t0)           ## 0000019A
/* 0202C 80B2C22C 8D0601B8 */  lw      $a2, 0x01B8($t0)           ## 000001B8
/* 02030 80B2C230 8D05019C */  lw      $a1, 0x019C($t0)           ## 0000019C
/* 02034 80B2C234 256BC10C */  addiu   $t3, $t3, %lo(func_80B2C10C) ## $t3 = 80B2C10C
/* 02038 80B2C238 AFAB0010 */  sw      $t3, 0x0010($sp)
/* 0203C 80B2C23C AFA00014 */  sw      $zero, 0x0014($sp)
/* 02040 80B2C240 8FA4005C */  lw      $a0, 0x005C($sp)
/* 02044 80B2C244 0C0286B2 */  jal     SkelAnime_DrawFlexOpa
/* 02048 80B2C248 AFA80018 */  sw      $t0, 0x0018($sp)
/* 0204C 80B2C24C 8FAC005C */  lw      $t4, 0x005C($sp)
/* 02050 80B2C250 3C0680B3 */  lui     $a2, %hi(D_80B2D10C)       ## $a2 = 80B30000
/* 02054 80B2C254 24C6D10C */  addiu   $a2, $a2, %lo(D_80B2D10C)  ## $a2 = 80B2D10C
/* 02058 80B2C258 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFEC
/* 0205C 80B2C25C 240706CC */  addiu   $a3, $zero, 0x06CC         ## $a3 = 000006CC
/* 02060 80B2C260 0C031AD5 */  jal     Graph_CloseDisps
/* 02064 80B2C264 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 02068 80B2C268 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 0206C 80B2C26C 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 02070 80B2C270 03E00008 */  jr      $ra
/* 02074 80B2C274 00000000 */  nop
