glabel func_80A79BAC
/* 00BFC 80A79BAC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00C00 80A79BB0 3C0E80A8 */  lui     $t6, %hi(D_80A7B988)       ## $t6 = 80A80000
/* 00C04 80A79BB4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C08 80A79BB8 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00C0C 80A79BBC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00C10 80A79BC0 25CEB988 */  addiu   $t6, $t6, %lo(D_80A7B988)  ## $t6 = 80A7B988
/* 00C14 80A79BC4 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80A7B988
/* 00C18 80A79BC8 27A30020 */  addiu   $v1, $sp, 0x0020           ## $v1 = FFFFFFF8
/* 00C1C 80A79BCC 0006C840 */  sll     $t9, $a2,  1               
/* 00C20 80A79BD0 AC780000 */  sw      $t8, 0x0000($v1)           ## FFFFFFF8
/* 00C24 80A79BD4 95D80004 */  lhu     $t8, 0x0004($t6)           ## 80A7B98C
/* 00C28 80A79BD8 00791021 */  addu    $v0, $v1, $t9              
/* 00C2C 80A79BDC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00C30 80A79BE0 A4780004 */  sh      $t8, 0x0004($v1)           ## FFFFFFFC
/* 00C34 80A79BE4 8FA9002C */  lw      $t1, 0x002C($sp)           
/* 00C38 80A79BE8 84480000 */  lh      $t0, 0x0000($v0)           ## 00000000
/* 00C3C 80A79BEC 340AFFF0 */  ori     $t2, $zero, 0xFFF0         ## $t2 = 0000FFF0
/* 00C40 80A79BF0 00290821 */  addu    $at, $at, $t1              
/* 00C44 80A79BF4 A4281E1A */  sh      $t0, 0x1E1A($at)           ## 00011E1A
/* 00C48 80A79BF8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00C4C 80A79BFC 14C10002 */  bne     $a2, $at, .L80A79C08       
/* 00C50 80A79C00 3C018016 */  lui     $at, %hi(gSaveContext+0x1412)
/* 00C54 80A79C04 A42AFA72 */  sh      $t2, %lo(gSaveContext+0x1412)($at)
.L80A79C08:
/* 00C58 80A79C08 8FAB002C */  lw      $t3, 0x002C($sp)           
/* 00C5C 80A79C0C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00C60 80A79C10 240C0014 */  addiu   $t4, $zero, 0x0014         ## $t4 = 00000014
/* 00C64 80A79C14 002B0821 */  addu    $at, $at, $t3              
/* 00C68 80A79C18 A0271E5E */  sb      $a3, 0x1E5E($at)           ## 00011E5E
/* 00C6C 80A79C1C 8FAD002C */  lw      $t5, 0x002C($sp)           
/* 00C70 80A79C20 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00C74 80A79C24 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00C78 80A79C28 002D0821 */  addu    $at, $at, $t5              
/* 00C7C 80A79C2C A02C1E15 */  sb      $t4, 0x1E15($at)           ## 00011E15
/* 00C80 80A79C30 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 00C84 80A79C34 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00C88 80A79C38 0C00B7D5 */  jal     func_8002DF54              
/* 00C8C 80A79C3C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00C90 80A79C40 0C020978 */  jal     Interface_ChangeAlpha              
/* 00C94 80A79C44 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 00C98 80A79C48 8FA2001C */  lw      $v0, 0x001C($sp)           
/* 00C9C 80A79C4C 27AE0020 */  addiu   $t6, $sp, 0x0020           ## $t6 = FFFFFFF8
/* 00CA0 80A79C50 3C0F8016 */  lui     $t7, %hi(gGameInfo)
/* 00CA4 80A79C54 544E0004 */  bnel    $v0, $t6, .L80A79C68       
/* 00CA8 80A79C58 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CAC 80A79C5C 8DEFFA90 */  lw      $t7, %lo(gGameInfo)($t7)
/* 00CB0 80A79C60 A5E00E60 */  sh      $zero, 0x0E60($t7)         ## 80160E60
/* 00CB4 80A79C64 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A79C68:
/* 00CB8 80A79C68 3C018016 */  lui     $at, %hi(gSaveContext+0x13ce)
/* 00CBC 80A79C6C A420FA2E */  sh      $zero, %lo(gSaveContext+0x13ce)($at)
/* 00CC0 80A79C70 03E00008 */  jr      $ra                        
/* 00CC4 80A79C74 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
