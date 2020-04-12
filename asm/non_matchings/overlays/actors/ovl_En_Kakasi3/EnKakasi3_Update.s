.rdata
glabel D_80A91E04
    .asciz "\n\n"
    .balign 4

glabel D_80A91E08
    .asciz "[33m☆☆☆☆☆ フラグ！ ☆☆☆☆☆ %d\n[m"
    .balign 4

.text
glabel EnKakasi3_Update
/* 00E6C 80A91B8C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00E70 80A91B90 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00E74 80A91B94 8DCEFA90 */  lw      $t6, -0x0570($t6)          ## 8015FA90
/* 00E78 80A91B98 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00E7C 80A91B9C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00E80 80A91BA0 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00E84 80A91BA4 85CF12D8 */  lh      $t7, 0x12D8($t6)           ## 801612D8
/* 00E88 80A91BA8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E8C 80A91BAC 3C0480A9 */  lui     $a0, %hi(D_80A91E04)       ## $a0 = 80A90000
/* 00E90 80A91BB0 51E00009 */  beql    $t7, $zero, .L80A91BD8     
/* 00E94 80A91BB4 8A0900B4 */  lwl     $t1, 0x00B4($s0)           ## 000000B4
/* 00E98 80A91BB8 0C00084C */  jal     osSyncPrintf
              
/* 00E9C 80A91BBC 24841E04 */  addiu   $a0, $a0, %lo(D_80A91E04)  ## $a0 = 80A91E04
/* 00EA0 80A91BC0 3C0480A9 */  lui     $a0, %hi(D_80A91E08)       ## $a0 = 80A90000
/* 00EA4 80A91BC4 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 00EA8 80A91BC8 90A5F925 */  lbu     $a1, -0x06DB($a1)          ## 8015F925
/* 00EAC 80A91BCC 0C00084C */  jal     osSyncPrintf
              
/* 00EB0 80A91BD0 24841E08 */  addiu   $a0, $a0, %lo(D_80A91E08)  ## $a0 = 80A91E08
/* 00EB4 80A91BD4 8A0900B4 */  lwl     $t1, 0x00B4($s0)           ## 000000B4
.L80A91BD8:
/* 00EB8 80A91BD8 9A0900B7 */  lwr     $t1, 0x00B7($s0)           ## 000000B7
/* 00EBC 80A91BDC 86180198 */  lh      $t8, 0x0198($s0)           ## 00000198
/* 00EC0 80A91BE0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00EC4 80A91BE4 AA090030 */  swl     $t1, 0x0030($s0)           ## 00000030
/* 00EC8 80A91BE8 BA090033 */  swr     $t1, 0x0033($s0)           ## 00000033
/* 00ECC 80A91BEC 960900B8 */  lhu     $t1, 0x00B8($s0)           ## 000000B8
/* 00ED0 80A91BF0 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00ED4 80A91BF4 A6190198 */  sh      $t9, 0x0198($s0)           ## 00000198
/* 00ED8 80A91BF8 02001025 */  or      $v0, $s0, $zero            ## $v0 = 00000000
/* 00EDC 80A91BFC 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 00EE0 80A91C00 A6090034 */  sh      $t1, 0x0034($s0)           ## 00000034
.L80A91C04:
/* 00EE4 80A91C04 8444019C */  lh      $a0, 0x019C($v0)           ## 0000019C
/* 00EE8 80A91C08 24630002 */  addiu   $v1, $v1, 0x0002           ## $v1 = 00000002
/* 00EEC 80A91C0C 10800002 */  beq     $a0, $zero, .L80A91C18     
/* 00EF0 80A91C10 248AFFFF */  addiu   $t2, $a0, 0xFFFF           ## $t2 = FFFFFFFF
/* 00EF4 80A91C14 A44A019C */  sh      $t2, 0x019C($v0)           ## 0000019C
.L80A91C18:
/* 00EF8 80A91C18 1465FFFA */  bne     $v1, $a1, .L80A91C04       
/* 00EFC 80A91C1C 24420002 */  addiu   $v0, $v0, 0x0002           ## $v0 = 00000002
/* 00F00 80A91C20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F04 80A91C24 0C00B56E */  jal     Actor_SetHeight
              
/* 00F08 80A91C28 3C054270 */  lui     $a1, 0x4270                ## $a1 = 42700000
/* 00F0C 80A91C2C 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 00F10 80A91C30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F14 80A91C34 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00F18 80A91C38 0320F809 */  jalr    $ra, $t9                   
/* 00F1C 80A91C3C 00000000 */  nop
/* 00F20 80A91C40 0C00B638 */  jal     Actor_MoveForward
              
/* 00F24 80A91C44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F28 80A91C48 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00F2C 80A91C4C 44810000 */  mtc1    $at, $f0                   ## $f0 = 50.00
/* 00F30 80A91C50 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00F34 80A91C54 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 00F38 80A91C58 240B001C */  addiu   $t3, $zero, 0x001C         ## $t3 = 0000001C
/* 00F3C 80A91C5C 44060000 */  mfc1    $a2, $f0                   
/* 00F40 80A91C60 44070000 */  mfc1    $a3, $f0                   
/* 00F44 80A91C64 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00F48 80A91C68 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00F4C 80A91C6C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00F50 80A91C70 0C00B92D */  jal     func_8002E4B4              
/* 00F54 80A91C74 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00F58 80A91C78 260601BC */  addiu   $a2, $s0, 0x01BC           ## $a2 = 000001BC
/* 00F5C 80A91C7C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000001BC
/* 00F60 80A91C80 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00F64 80A91C84 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00F68 80A91C88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F6C 80A91C8C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00F70 80A91C90 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00F74 80A91C94 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00F78 80A91C98 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00F7C 80A91C9C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00F80 80A91CA0 00812821 */  addu    $a1, $a0, $at              
/* 00F84 80A91CA4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00F88 80A91CA8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00F8C 80A91CAC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00F90 80A91CB0 03E00008 */  jr      $ra                        
/* 00F94 80A91CB4 00000000 */  nop
