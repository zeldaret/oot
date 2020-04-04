glabel func_80A77EDC
/* 03BCC 80A77EDC 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 03BD0 80A77EE0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 03BD4 80A77EE4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 03BD8 80A77EE8 AFA40068 */  sw      $a0, 0x0068($sp)
/* 03BDC 80A77EEC AFA5006C */  sw      $a1, 0x006C($sp)
/* 03BE0 80A77EF0 8CB00000 */  lw      $s0, 0x0000($a1)           ## 00000000
/* 03BE4 80A77EF4 3C0680A8 */  lui     $a2, %hi(D_80A78940)       ## $a2 = 80A80000
/* 03BE8 80A77EF8 24C68940 */  addiu   $a2, $a2, %lo(D_80A78940)  ## $a2 = 80A78940
/* 03BEC 80A77EFC 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFDC
/* 03BF0 80A77F00 24070276 */  addiu   $a3, $zero, 0x0276         ## $a3 = 00000276
/* 03BF4 80A77F04 0C031AB1 */  jal     Graph_OpenDisp
/* 03BF8 80A77F08 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 03BFC 80A77F0C 8FA40068 */  lw      $a0, 0x0068($sp)
/* 03C00 80A77F10 8FA5006C */  lw      $a1, 0x006C($sp)
/* 03C04 80A77F14 0C00BAF3 */  jal     func_8002EBCC
/* 03C08 80A77F18 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 03C0C 80A77F1C 0C024F46 */  jal     func_80093D18
/* 03C10 80A77F20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03C14 80A77F24 0C024F61 */  jal     func_80093D84
/* 03C18 80A77F28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03C1C 80A77F2C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03C20 80A77F30 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 03C24 80A77F34 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 03C28 80A77F38 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 03C2C 80A77F3C AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 03C30 80A77F40 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 03C34 80A77F44 2419001E */  addiu   $t9, $zero, 0x001E         ## $t9 = 0000001E
/* 03C38 80A77F48 2408001E */  addiu   $t0, $zero, 0x001E         ## $t0 = 0000001E
/* 03C3C 80A77F4C AFA80014 */  sw      $t0, 0x0014($sp)
/* 03C40 80A77F50 AFB90010 */  sw      $t9, 0x0010($sp)
/* 03C44 80A77F54 AFA00018 */  sw      $zero, 0x0018($sp)
/* 03C48 80A77F58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03C4C 80A77F5C 240500F5 */  addiu   $a1, $zero, 0x00F5         ## $a1 = 000000F5
/* 03C50 80A77F60 240600E1 */  addiu   $a2, $zero, 0x00E1         ## $a2 = 000000E1
/* 03C54 80A77F64 2407009B */  addiu   $a3, $zero, 0x009B         ## $a3 = 0000009B
/* 03C58 80A77F68 0C29D86C */  jal     func_80A761B0
/* 03C5C 80A77F6C AFA20040 */  sw      $v0, 0x0040($sp)
/* 03C60 80A77F70 8FA30040 */  lw      $v1, 0x0040($sp)
/* 03C64 80A77F74 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 03C68 80A77F78 354A0024 */  ori     $t2, $t2, 0x0024           ## $t2 = DB060024
/* 03C6C 80A77F7C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03C70 80A77F80 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03C74 80A77F84 240B0028 */  addiu   $t3, $zero, 0x0028         ## $t3 = 00000028
/* 03C78 80A77F88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03C7C 80A77F8C 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 03C80 80A77F90 AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 03C84 80A77F94 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 03C88 80A77F98 AFA00018 */  sw      $zero, 0x0018($sp)
/* 03C8C 80A77F9C AFA00014 */  sw      $zero, 0x0014($sp)
/* 03C90 80A77FA0 AFAB0010 */  sw      $t3, 0x0010($sp)
/* 03C94 80A77FA4 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 03C98 80A77FA8 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 03C9C 80A77FAC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 03CA0 80A77FB0 0C29D86C */  jal     func_80A761B0
/* 03CA4 80A77FB4 AFA2003C */  sw      $v0, 0x003C($sp)
/* 03CA8 80A77FB8 8FA3003C */  lw      $v1, 0x003C($sp)
/* 03CAC 80A77FBC 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 03CB0 80A77FC0 35AD0028 */  ori     $t5, $t5, 0x0028           ## $t5 = DB060028
/* 03CB4 80A77FC4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03CB8 80A77FC8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03CBC 80A77FCC 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 03CC0 80A77FD0 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 03CC4 80A77FD4 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 03CC8 80A77FD8 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 03CCC 80A77FDC AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 03CD0 80A77FE0 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 03CD4 80A77FE4 AFB80018 */  sw      $t8, 0x0018($sp)
/* 03CD8 80A77FE8 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 03CDC 80A77FEC AFAE0010 */  sw      $t6, 0x0010($sp)
/* 03CE0 80A77FF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03CE4 80A77FF4 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 03CE8 80A77FF8 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 03CEC 80A77FFC 240700FF */  addiu   $a3, $zero, 0x00FF         ## $a3 = 000000FF
/* 03CF0 80A78000 0C29D86C */  jal     func_80A761B0
/* 03CF4 80A78004 AFA20038 */  sw      $v0, 0x0038($sp)
/* 03CF8 80A78008 8FA30038 */  lw      $v1, 0x0038($sp)
/* 03CFC 80A7800C 3C1980A7 */  lui     $t9, %hi(func_80A77BF8)    ## $t9 = 80A70000
/* 03D00 80A78010 3C0880A7 */  lui     $t0, %hi(func_80A77C7C)    ## $t0 = 80A70000
/* 03D04 80A78014 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03D08 80A78018 8FA30068 */  lw      $v1, 0x0068($sp)
/* 03D0C 80A7801C 25087C7C */  addiu   $t0, $t0, %lo(func_80A77C7C) ## $t0 = 80A77C7C
/* 03D10 80A78020 27397BF8 */  addiu   $t9, $t9, %lo(func_80A77BF8) ## $t9 = 80A77BF8
/* 03D14 80A78024 2462014C */  addiu   $v0, $v1, 0x014C           ## $v0 = 0000014C
/* 03D18 80A78028 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000150
/* 03D1C 80A7802C 8C460020 */  lw      $a2, 0x0020($v0)           ## 0000016C
/* 03D20 80A78030 90470002 */  lbu     $a3, 0x0002($v0)           ## 0000014E
/* 03D24 80A78034 AFA80014 */  sw      $t0, 0x0014($sp)
/* 03D28 80A78038 AFB90010 */  sw      $t9, 0x0010($sp)
/* 03D2C 80A7803C 8FA4006C */  lw      $a0, 0x006C($sp)
/* 03D30 80A78040 0C0286B2 */  jal     SkelAnime_DrawSV
/* 03D34 80A78044 AFA30018 */  sw      $v1, 0x0018($sp)
/* 03D38 80A78048 3C0680A8 */  lui     $a2, %hi(D_80A7895C)       ## $a2 = 80A80000
/* 03D3C 80A7804C 24C6895C */  addiu   $a2, $a2, %lo(D_80A7895C)  ## $a2 = 80A7895C
/* 03D40 80A78050 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFDC
/* 03D44 80A78054 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 03D48 80A78058 0C031AD5 */  jal     Graph_CloseDisp
/* 03D4C 80A7805C 2407028D */  addiu   $a3, $zero, 0x028D         ## $a3 = 0000028D
/* 03D50 80A78060 8FBF002C */  lw      $ra, 0x002C($sp)
/* 03D54 80A78064 8FB00028 */  lw      $s0, 0x0028($sp)
/* 03D58 80A78068 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 03D5C 80A7806C 03E00008 */  jr      $ra
/* 03D60 80A78070 00000000 */  nop


