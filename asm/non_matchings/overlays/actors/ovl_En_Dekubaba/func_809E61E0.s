glabel func_809E61E0
/* 00A10 809E61E0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A14 809E61E4 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00A18 809E61E8 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00A1C 809E61EC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00A20 809E61F0 0C028800 */  jal     Animation_GetLastFrame

/* 00A24 809E61F4 248402B8 */  addiu   $a0, $a0, 0x02B8           ## $a0 = 060002B8
/* 00A28 809E61F8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00A2C 809E61FC 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 00A30 809E6200 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 00A34 809E6204 46802120 */  cvt.s.w $f4, $f4
/* 00A38 809E6208 8FA30028 */  lw      $v1, 0x0028($sp)
/* 00A3C 809E620C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00A40 809E6210 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00A44 809E6214 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00A48 809E6218 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00A4C 809E621C 44072000 */  mfc1    $a3, $f4
/* 00A50 809E6220 24A502B8 */  addiu   $a1, $a1, 0x02B8           ## $a1 = 060002B8
/* 00A54 809E6224 3C06BFC0 */  lui     $a2, 0xBFC0                ## $a2 = BFC00000
/* 00A58 809E6228 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00A5C 809E622C 2464017C */  addiu   $a0, $v1, 0x017C           ## $a0 = 0000017C
/* 00A60 809E6230 0C029468 */  jal     Animation_Change

/* 00A64 809E6234 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00A68 809E6238 8FA30028 */  lw      $v1, 0x0028($sp)
/* 00A6C 809E623C 3C19809E */  lui     $t9, %hi(func_809E7F14)    ## $t9 = 809E0000
/* 00A70 809E6240 27397F14 */  addiu   $t9, $t9, %lo(func_809E7F14) ## $t9 = 809E7F14
/* 00A74 809E6244 906F0249 */  lbu     $t7, 0x0249($v1)           ## 00000249
/* 00A78 809E6248 AC7901C0 */  sw      $t9, 0x01C0($v1)           ## 000001C0
/* 00A7C 809E624C 31F8FFFE */  andi    $t8, $t7, 0xFFFE           ## $t8 = 00000000
/* 00A80 809E6250 A0780249 */  sb      $t8, 0x0249($v1)           ## 00000249
/* 00A84 809E6254 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00A88 809E6258 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A8C 809E625C 03E00008 */  jr      $ra
/* 00A90 809E6260 00000000 */  nop
