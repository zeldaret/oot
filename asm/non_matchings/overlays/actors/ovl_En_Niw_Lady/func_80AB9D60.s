.late_rodata
glabel jtbl_80ABB744
.word L80AB9E34
.word L80AB9E34
.word L80AB9E34
.word L80AB9E34
.word L80AB9E34
.word L80AB9E34
.word L80AB9E34
.word L80AB9E80
.word L80AB9E34
.word L80AB9DE8
.word L80AB9DE4
.word L80AB9F14
.word L80AB9F14
.word L80AB9F14
.word L80AB9F14
.word L80AB9F14
.word L80AB9F14
.word L80AB9F14
.word L80AB9F14
.word L80AB9F14
.word L80AB9E80
.word L80AB9E34
.word L80AB9E34
.word L80AB9E80
.word L80AB9E34
.word L80AB9E80
.word L80AB9E80
.word L80AB9E80
.word L80AB9E80
.word L80AB9E34

.text
glabel func_80AB9D60
/* 00120 80AB9D60 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00124 80AB9D64 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00128 80AB9D68 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0012C 80AB9D6C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00130 80AB9D70 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 00134 80AB9D74 0C01B0D8 */  jal     Text_GetFaceReaction
/* 00138 80AB9D78 AFA60030 */  sw      $a2, 0x0030($sp)
/* 0013C 80AB9D7C 8FA30028 */  lw      $v1, 0x0028($sp)
/* 00140 80AB9D80 10400002 */  beq     $v0, $zero, .L80AB9D8C
/* 00144 80AB9D84 8FA60030 */  lw      $a2, 0x0030($sp)
/* 00148 80AB9D88 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
.L80AB9D8C:
/* 0014C 80AB9D8C 846E0270 */  lh      $t6, 0x0270($v1)           ## 00000270
/* 00150 80AB9D90 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00154 80AB9D94 28C1001E */  slti    $at, $a2, 0x001E
/* 00158 80AB9D98 50CE005F */  beql    $a2, $t6, .L80AB9F18
/* 0015C 80AB9D9C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00160 80AB9DA0 A0600275 */  sb      $zero, 0x0275($v1)         ## 00000275
/* 00164 80AB9DA4 A0620276 */  sb      $v0, 0x0276($v1)           ## 00000276
/* 00168 80AB9DA8 14200006 */  bne     $at, $zero, .L80AB9DC4
/* 0016C 80AB9DAC A4660270 */  sh      $a2, 0x0270($v1)           ## 00000270
/* 00170 80AB9DB0 24010064 */  addiu   $at, $zero, 0x0064         ## $at = 00000064
/* 00174 80AB9DB4 10C10045 */  beq     $a2, $at, .L80AB9ECC
/* 00178 80AB9DB8 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 0017C 80AB9DBC 10000056 */  beq     $zero, $zero, .L80AB9F18
/* 00180 80AB9DC0 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80AB9DC4:
/* 00184 80AB9DC4 2CC1001E */  sltiu   $at, $a2, 0x001E
/* 00188 80AB9DC8 10200052 */  beq     $at, $zero, .L80AB9F14
/* 0018C 80AB9DCC 00067880 */  sll     $t7, $a2,  2
/* 00190 80AB9DD0 3C0180AC */  lui     $at, %hi(jtbl_80ABB744)       ## $at = 80AC0000
/* 00194 80AB9DD4 002F0821 */  addu    $at, $at, $t7
/* 00198 80AB9DD8 8C2FB744 */  lw      $t7, %lo(jtbl_80ABB744)($at)
/* 0019C 80AB9DDC 01E00008 */  jr      $t7
/* 001A0 80AB9DE0 00000000 */  nop
glabel L80AB9DE4
/* 001A4 80AB9DE4 A0620275 */  sb      $v0, 0x0275($v1)           ## 00000275
glabel L80AB9DE8
/* 001A8 80AB9DE8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 001AC 80AB9DEC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 001B0 80AB9DF0 248407D0 */  addiu   $a0, $a0, 0x07D0           ## $a0 = 060007D0
/* 001B4 80AB9DF4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 001B8 80AB9DF8 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 001BC 80AB9DFC 8FA30028 */  lw      $v1, 0x0028($sp)
/* 001C0 80AB9E00 468021A0 */  cvt.s.w $f6, $f4
/* 001C4 80AB9E04 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 001C8 80AB9E08 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 001CC 80AB9E0C 24A507D0 */  addiu   $a1, $a1, 0x07D0           ## $a1 = 060007D0
/* 001D0 80AB9E10 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 001D4 80AB9E14 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 001D8 80AB9E18 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 001DC 80AB9E1C AFA00014 */  sw      $zero, 0x0014($sp)
/* 001E0 80AB9E20 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 001E4 80AB9E24 0C029468 */  jal     SkelAnime_ChangeAnim

/* 001E8 80AB9E28 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 001EC 80AB9E2C 1000003A */  beq     $zero, $zero, .L80AB9F18
/* 001F0 80AB9E30 8FBF0024 */  lw      $ra, 0x0024($sp)
glabel L80AB9E34
/* 001F4 80AB9E34 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 001F8 80AB9E38 0C028800 */  jal     SkelAnime_GetFrameCount

/* 001FC 80AB9E3C 24849F94 */  addiu   $a0, $a0, 0x9F94           ## $a0 = 06009F94
/* 00200 80AB9E40 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 00204 80AB9E44 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00208 80AB9E48 8FA30028 */  lw      $v1, 0x0028($sp)
/* 0020C 80AB9E4C 46805420 */  cvt.s.w $f16, $f10
/* 00210 80AB9E50 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 00214 80AB9E54 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00218 80AB9E58 24A59F94 */  addiu   $a1, $a1, 0x9F94           ## $a1 = 06009F94
/* 0021C 80AB9E5C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00220 80AB9E60 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00224 80AB9E64 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00228 80AB9E68 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0022C 80AB9E6C 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 00230 80AB9E70 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00234 80AB9E74 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 00238 80AB9E78 10000027 */  beq     $zero, $zero, .L80AB9F18
/* 0023C 80AB9E7C 8FBF0024 */  lw      $ra, 0x0024($sp)
glabel L80AB9E80
/* 00240 80AB9E80 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00244 80AB9E84 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00248 80AB9E88 24840718 */  addiu   $a0, $a0, 0x0718           ## $a0 = 06000718
/* 0024C 80AB9E8C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00250 80AB9E90 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00254 80AB9E94 8FA30028 */  lw      $v1, 0x0028($sp)
/* 00258 80AB9E98 468021A0 */  cvt.s.w $f6, $f4
/* 0025C 80AB9E9C 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 00260 80AB9EA0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00264 80AB9EA4 24A50718 */  addiu   $a1, $a1, 0x0718           ## $a1 = 06000718
/* 00268 80AB9EA8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0026C 80AB9EAC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00270 80AB9EB0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00274 80AB9EB4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00278 80AB9EB8 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 0027C 80AB9EBC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00280 80AB9EC0 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00284 80AB9EC4 10000014 */  beq     $zero, $zero, .L80AB9F18
/* 00288 80AB9EC8 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80AB9ECC:
/* 0028C 80AB9ECC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00290 80AB9ED0 2484A630 */  addiu   $a0, $a0, 0xA630           ## $a0 = FFFFA630
/* 00294 80AB9ED4 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 00298 80AB9ED8 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 0029C 80AB9EDC 8FA30028 */  lw      $v1, 0x0028($sp)
/* 002A0 80AB9EE0 46805420 */  cvt.s.w $f16, $f10
/* 002A4 80AB9EE4 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 002A8 80AB9EE8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 002AC 80AB9EEC 24A5A630 */  addiu   $a1, $a1, 0xA630           ## $a1 = 0600A630
/* 002B0 80AB9EF0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 002B4 80AB9EF4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 002B8 80AB9EF8 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 002BC 80AB9EFC AFA00014 */  sw      $zero, 0x0014($sp)
/* 002C0 80AB9F00 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 002C4 80AB9F04 0C029468 */  jal     SkelAnime_ChangeAnim

/* 002C8 80AB9F08 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 002CC 80AB9F0C 8FA30028 */  lw      $v1, 0x0028($sp)
/* 002D0 80AB9F10 A0600276 */  sb      $zero, 0x0276($v1)         ## 00000276
glabel L80AB9F14
.L80AB9F14:
/* 002D4 80AB9F14 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80AB9F18:
/* 002D8 80AB9F18 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 002DC 80AB9F1C 03E00008 */  jr      $ra
/* 002E0 80AB9F20 00000000 */  nop
