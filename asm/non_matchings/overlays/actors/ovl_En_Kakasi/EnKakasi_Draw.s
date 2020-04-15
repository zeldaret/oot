.rdata
glabel D_80A8FEB8
    .asciz "\n\n"
    .balign 4

glabel D_80A8FEBC
    .asciz "[33m☆☆☆☆☆ フラグ！ ☆☆☆☆☆ %d\n[m"
    .balign 4

.text
glabel EnKakasi_Draw
/* 00BE0 80A8FD50 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00BE4 80A8FD54 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00BE8 80A8FD58 8DCEFA90 */  lw      $t6, -0x0570($t6)          ## 8015FA90
/* 00BEC 80A8FD5C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00BF0 80A8FD60 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00BF4 80A8FD64 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00BF8 80A8FD68 85CF12DA */  lh      $t7, 0x12DA($t6)           ## 801612DA
/* 00BFC 80A8FD6C 3C0480A9 */  lui     $a0, %hi(D_80A8FEB8)       ## $a0 = 80A90000
/* 00C00 80A8FD70 51E00009 */  beql    $t7, $zero, .L80A8FD98
/* 00C04 80A8FD74 8FB8002C */  lw      $t8, 0x002C($sp)
/* 00C08 80A8FD78 0C00084C */  jal     osSyncPrintf

/* 00C0C 80A8FD7C 2484FEB8 */  addiu   $a0, $a0, %lo(D_80A8FEB8)  ## $a0 = 80A8FEB8
/* 00C10 80A8FD80 3C0480A9 */  lui     $a0, %hi(D_80A8FEBC)       ## $a0 = 80A90000
/* 00C14 80A8FD84 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 00C18 80A8FD88 90A5F5A0 */  lbu     $a1, -0x0A60($a1)          ## 8015F5A0
/* 00C1C 80A8FD8C 0C00084C */  jal     osSyncPrintf

/* 00C20 80A8FD90 2484FEBC */  addiu   $a0, $a0, %lo(D_80A8FEBC)  ## $a0 = 80A8FEBC
/* 00C24 80A8FD94 8FB8002C */  lw      $t8, 0x002C($sp)
.L80A8FD98:
/* 00C28 80A8FD98 0C024F46 */  jal     func_80093D18
/* 00C2C 80A8FD9C 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 00C30 80A8FDA0 8FA20028 */  lw      $v0, 0x0028($sp)
/* 00C34 80A8FDA4 8FA4002C */  lw      $a0, 0x002C($sp)
/* 00C38 80A8FDA8 8C450154 */  lw      $a1, 0x0154($v0)           ## 00000154
/* 00C3C 80A8FDAC 8C460170 */  lw      $a2, 0x0170($v0)           ## 00000170
/* 00C40 80A8FDB0 90470152 */  lbu     $a3, 0x0152($v0)           ## 00000152
/* 00C44 80A8FDB4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00C48 80A8FDB8 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00C4C 80A8FDBC 0C0286B2 */  jal     SkelAnime_DrawSV
/* 00C50 80A8FDC0 AFA20018 */  sw      $v0, 0x0018($sp)
/* 00C54 80A8FDC4 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00C58 80A8FDC8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00C5C 80A8FDCC 03E00008 */  jr      $ra
/* 00C60 80A8FDD0 00000000 */  nop
/* 00C64 80A8FDD4 00000000 */  nop
/* 00C68 80A8FDD8 00000000 */  nop
/* 00C6C 80A8FDDC 00000000 */  nop
