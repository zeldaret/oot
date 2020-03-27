glabel func_80A31880
/* 00F10 80A31880 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00F14 80A31884 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00F18 80A31888 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00F1C 80A3188C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00F20 80A31890 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00F24 80A31894 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00F28 80A31898 24050022 */  addiu   $a1, $zero, 0x0022         ## $a1 = 00000022
/* 00F2C 80A3189C 14400002 */  bne     $v0, $zero, .L80A318A8     
/* 00F30 80A318A0 3046FFFF */  andi    $a2, $v0, 0xFFFF           ## $a2 = 00000000
/* 00F34 80A318A4 24066069 */  addiu   $a2, $zero, 0x6069         ## $a2 = 00006069
.L80A318A8:
/* 00F38 80A318A8 3C0E80A3 */  lui     $t6, %hi(func_80A3183C)    ## $t6 = 80A30000
/* 00F3C 80A318AC 25CE183C */  addiu   $t6, $t6, %lo(func_80A3183C) ## $t6 = 80A3183C
/* 00F40 80A318B0 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00F44 80A318B4 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00F48 80A318B8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00F4C 80A318BC 0C28C31C */  jal     func_80A30C70              
/* 00F50 80A318C0 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 00F54 80A318C4 10400017 */  beq     $v0, $zero, .L80A31924     
/* 00F58 80A318C8 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00F5C 80A318CC 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 00F60 80A318D0 3C0F80A3 */  lui     $t7, %hi(func_80A323B0)    ## $t7 = 80A30000
/* 00F64 80A318D4 2484A498 */  addiu   $a0, $a0, 0xA498           ## $a0 = 0600A498
/* 00F68 80A318D8 25EF23B0 */  addiu   $t7, $t7, %lo(func_80A323B0) ## $t7 = 80A323B0
/* 00F6C 80A318DC AC4F02B8 */  sw      $t7, 0x02B8($v0)           ## 000002B8
/* 00F70 80A318E0 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00F74 80A318E4 AC4402B0 */  sw      $a0, 0x02B0($v0)           ## 000002B0
/* 00F78 80A318E8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00F7C 80A318EC 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 00F80 80A318F0 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 00F84 80A318F4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00F88 80A318F8 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00F8C 80A318FC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00F90 80A31900 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00F94 80A31904 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00F98 80A31908 24A5A498 */  addiu   $a1, $a1, 0xA498           ## $a1 = 0600A498
/* 00F9C 80A3190C E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00FA0 80A31910 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00FA4 80A31914 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00FA8 80A31918 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00FAC 80A3191C 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00FB0 80A31920 24840198 */  addiu   $a0, $a0, 0x0198           ## $a0 = 00000198
.L80A31924:
/* 00FB4 80A31924 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00FB8 80A31928 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00FBC 80A3192C 03E00008 */  jr      $ra                        
/* 00FC0 80A31930 00000000 */  nop


